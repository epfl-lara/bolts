/* Copyright 2009-2021 EPFL, Lausanne */

import scala.Predef.{ genericArrayOps => _, genericWrapArray => _, copyArrayToImmutableIndexedSeq => _, require => _, Ensuring => _, assert => _, _ } // For Scala 2.13
import stainless.lang.{ghost => ghostExpr, _}
import stainless.proof._
import stainless.annotation._
import stainless.lang.StaticChecks.WhileDecorations
import StaticChecks._

import scala.language.implicitConversions

import stainless.io.{
  FileInputStream => FIS,
  FileOutputStream => FOS,
  StdOut
}

object LZWa {

  // GENERAL NOTES
  // =============
  //
  // Encoding using fixed size of word;
  // Input alphabet is the ASCII range (0-255);
  // A word is made of 16 bits (instead of the classic 12-bit scenario, for simplicity);
  // The dictionary is an array of Buffer where the index is the key;

  // We limit the size of the dictionary to an arbitrary size, less than or equals to 2^16.
  @inline @cCode.inline
  val DictionarySize = 8192

  // We use fix-sized buffers
  @inline @cCode.inline
  val BufferSize = 64 // characters

  val AlphabetSize = Byte.MaxValue + -Byte.MinValue

  @pure @ghost
  private def lemmaSize: Boolean = {
    DictionarySize >= AlphabetSize &&
    BufferSize > 0 &&
    AlphabetSize > 0 &&
    DictionarySize <= 65536 // Cannot encode more index using only 16-bit codewords
  }.holds

  // Helper for range equality checking
  @pure
  private def areRangesEqual(a: Array[Byte], b: Array[Byte], from: Int, until: Int): Boolean = {
    decreases(until - from)
    require(0 <= from && from <= until && until <= a.length && until <= b.length)
    if (from == until) true
    else a(from) == b(from) && areRangesEqual(a, b, from + 1, until)
  }

  @pure @ghost
  private def areDictsEqualRange(dict1: Dictionary, dict2: Dictionary, from: Int, until: Int): Boolean = {
    decreases(until - from)
    require(dict1.isValid)
    require(dict2.isValid)
    val minCurrIx = if (dict1.currIndex <= dict2.currIndex) dict1.currIndex else dict2.currIndex
    require(0 <= until && until <= minCurrIx)
    require(0 <= from && from <= until)
    if (from == until) true
    else {
      lemmaValidBuffersAt(dict1, from)
      lemmaValidBuffersAt(dict2, from)
      dict1.buffers(from).isEqual(dict2.buffers(from)) && areDictsEqualRange(dict1, dict2, from + 1, until)
    }
  }

  @pure @ghost
  private def containsAlphabet(dict: Dictionary): Boolean = {
    require(dict.isValid)
    dict.currIndex >= 256 && containsAlphabetLoop(dict, 0, 256)
  }

  @pure @ghost
  private def containsAlphabetLoop(dict: Dictionary, from: Int, until: Int): Boolean = {
    decreases(until - from)
    require(dict.isValid)
    require(0 <= until && until <= dict.capacity)
    require(0 <= from && from <= until)
    if (from == until) true
    else {
      lemmaValidBuffersAt(dict, from)
      dict.buffers(from).size == 1 && dict.buffers(from)(0) == Byte.MinValue + from && containsAlphabetLoop(dict, from + 1, until)
    }
  }

  @pure @ghost @opaque @inlineOnce
  private def lemmaContainsAlphabetAt(dict: Dictionary, at: Int): Unit = {
    require(dict.isValid)
    require(containsAlphabet(dict))
    require(0 <= at && at < 256)
    lemmaContainsAlphabetAtRange(dict, at, 256)
  }.ensuring(_ => dict.buffers(at).size == 1 && dict.buffers(at)(0) == Byte.MinValue + at)

  @pure @ghost @opaque @inlineOnce
  private def lemmaContainsAlphabetAtRange(dict: Dictionary, at: Int, until: Int): Unit = {
    require(dict.isValid)
    require(0 <= at && at < until && until <= 256)
    require(containsAlphabetLoop(dict, 0, until))

    def rec(from: Int): Unit = {
      decreases(at - from)
      require(0 <= from && from <= at)
      require(containsAlphabetLoop(dict, from, until))
      if (from == at) ()
      else rec(from + 1)
    }.ensuring(_ => dict.buffers(at).size == 1 && dict.buffers(at)(0) == Byte.MinValue + at)

    rec(0)
  }.ensuring(_ => dict.buffers(at).size == 1 && dict.buffers(at)(0) == Byte.MinValue + at)

  @pure @ghost
  private def allValidBuffers(buffers: Array[Buffer], nextIndex: Int): Boolean = {
    require(0 <= nextIndex && nextIndex <= buffers.length)
    allValidBuffersLoop(buffers, nextIndex, 0, buffers.length)
  }

  @pure @ghost
  private def allValidBuffersLoop(buffers: Array[Buffer], nextIndex: Int, from: Int, until: Int): Boolean = {
    decreases(until - from)
    require(0 <= from && from <= until && until <= buffers.length)
    require(0 <= nextIndex && nextIndex <= buffers.length)
    if (from == until) true
    else {
      buffers(from).isValid &&
      ((from < nextIndex) ==> buffers(from).nonEmpty) &&
      allValidBuffersLoop(buffers, nextIndex, from + 1, until)
    }
  }

  @pure @ghost
  private def noBufferFound(dict: Dictionary, b: Buffer): Boolean = {
    require(dict.isValid)
    require(b.isValid)
    noBufferFoundLoop(dict, b, 0, dict.currIndex)
  }

  @pure @ghost
  private def noBufferFoundLoop(dict: Dictionary, b: Buffer, from: Int, until: Int): Boolean = {
    decreases(dict.currIndex - from)
    require(dict.isValid)
    require(b.isValid)
    require(0 <= from && from <= until)
    require(until <= dict.currIndex)
    require(allValidBuffersLoop(dict.buffers, dict.currIndex, from, dict.capacity))
    if (from == until) true
    else !dict.buffers(from).isEqual(b) && noBufferFoundLoop(dict, b, from + 1, until)
  }

  @pure @ghost @opaque @inlineOnce
  private def lemmaBufferEqualRefl(b: Buffer): Unit = {
    require(b.isValid)
  }.ensuring(_ => b.isEqual(snapshot(b)))

  @pure @ghost @opaque @inlineOnce
  private def lemmaBufferEqualSym(b1: Buffer, b2: Buffer): Unit = {
    require(b1.isValid)
    require(b2.isValid)
    def rec(from: Int): Unit = {
      decreases(b2.size - from)
      require(b1.size == b2.size)
      require(0 <= from && from <= b1.size)
      require(areRangesEqual(b1.arr, b2.arr, 0, from))
      require(areRangesEqual(b2.arr, b1.arr, 0, from))
      if (from == b1.size || b1.arr(from) != b2.arr(from)) ()
      else rec(from + 1)
    }.ensuring(_ => areRangesEqual(b1.arr, b2.arr, 0, b1.size) == areRangesEqual(b2.arr, b1.arr, 0, b2.size))

    if (b1.size == b2.size) rec(0)
    else ()
  }.ensuring(_ => b1.isEqual(b2) == b2.isEqual(b1))

  @pure @ghost @opaque @inlineOnce
  private def lemmaBufferEqualTrans(b1: Buffer, b2: Buffer, b3: Buffer): Unit = {
    require(b1.isValid)
    require(b2.isValid)
    require(b3.isValid)
    require(b2.isEqual(b3))

    assert(b2.size == b3.size)

    def rec(from: Int): Unit = {
      decreases(b2.size - from)
      require(b1.size == b2.size)
      require(0 <= from && from <= b1.size)
      require(areRangesEqual(b1.arr, b2.arr, 0, from))
      require(areRangesEqual(b1.arr, b3.arr, 0, from))
      require(areRangesEqual(b2.arr, b3.arr, 0, from))
      if (from == b1.size || b1.arr(from) != b2.arr(from) || b1.arr(from) != b3.arr(from)) ()
      else rec(from + 1)
    }.ensuring(_ => areRangesEqual(b1.arr, b2.arr, 0, b1.size) == areRangesEqual(b1.arr, b3.arr, 0, b1.size))

    if (b1.size == b2.size) rec(0)
    else ()
  }.ensuring(_ => b1.isEqual(b2) == b1.isEqual(b3))

  @pure @ghost @opaque @inlineOnce
  private def lemmaFoundBuffer(dict: Dictionary, b: Buffer, at: Int): Unit = {
    require(dict.isValid)
    require(b.isValid)
    require(0 <= at && at < dict.currIndex)
    require {
      lemmaValidBuffersAt(dict, at)
      dict.buffers(at).isEqual(b)
    }

    def rec(from: Int): Unit = {
      decreases(at - from)
      require(0 <= from && from <= at)
      require(allValidBuffersLoop(dict.buffers, dict.currIndex, from, dict.capacity))

      if (from == at || dict.buffers(from).isEqual(b)) {
        assert(dict.buffers(at).isEqual(b))
        check(!noBufferFoundLoop(dict, b, from, dict.currIndex))
      } else {
        rec(from + 1)
      }
    }.ensuring(_ => !noBufferFoundLoop(dict, b, from, dict.currIndex))

    rec(0)
  }.ensuring(_ => !noBufferFound(dict, b))

  @pure @ghost @opaque @inlineOnce
  private def lemmaNoBufferFound(dict: Dictionary, b: Buffer, at: Int): Unit = {
    require(dict.isValid)
    require(b.isValid)
    require(0 <= at && at < dict.currIndex)
    require {
      lemmaValidBuffersAt(dict, at)
      !dict.buffers(at).isEqual(b)
    }
    require(noBufferFoundLoop(dict, b, 0, at))

    def rec(from: Int): Unit = {
      decreases(at - from)
      require(0 <= from && from <= at)
      require(allValidBuffersLoop(dict.buffers, dict.currIndex, from, dict.capacity))
      require(noBufferFoundLoop(dict, b, from, at))

      if (from == at) {
        assert(!dict.buffers(at).isEqual(b))
        check(noBufferFoundLoop(dict, b, from, at + 1))
      } else {
        rec(from + 1)
      }
    }.ensuring(_ => noBufferFoundLoop(dict, b, from, at + 1))

    rec(0)
  }.ensuring(_ => noBufferFoundLoop(dict, b, 0, at + 1))

  @pure @ghost @opaque @inlineOnce
  private def lemmaNoBufferFoundBeforeIx(dict: Dictionary, b: Buffer, ix: Int, until: Int): Unit = {
    require(dict.isValid)
    require(b.isValid)
    require(b.nonEmpty)
    require(0 <= ix && ix < until && until <= dict.currIndex)
    require(dict.findLoop(b, 0, until) == Some(ix))

    def rec(from: Int): Unit = {
      decreases(ix - from)
      require(0 <= from && from <= ix)
      require(allValidBuffersLoop(dict.buffers, dict.currIndex, from, dict.capacity))
      require(noBufferFoundLoop(dict, b, 0, from))
      require(dict.findLoop(b, from, until) == Some(ix))
      if (from == ix) ()
      else rec(from + 1)
    }.ensuring(_ => noBufferFoundLoop(dict, b, from, ix))

    rec(0)
  }.ensuring(_ => noBufferFoundLoop(dict, b, 0, ix))

  @pure @ghost @opaque @inlineOnce
  private def lemmaNoBufferFoundBeforeSmaller(dict: Dictionary, b: Buffer, i: Int, j: Int): Unit = {
    require(dict.isValid)
    require(b.isValid)
    require(0 <= i && i <= j && j <= dict.currIndex)
    require(noBufferFoundLoop(dict, b, 0, j))

    @opaque @inlineOnce
    def rec(from: Int): Unit = {
      decreases(i - from)
      require(0 <= from && from <= i)
      require(allValidBuffersLoop(dict.buffers, dict.currIndex, from, dict.capacity))
      require(noBufferFoundLoop(dict, b, from, j))
      if (from == i) ()
      else rec(from + 1)
    }.ensuring(_ => noBufferFoundLoop(dict, b, from, i))

    rec(0)
  }.ensuring(_ => noBufferFoundLoop(dict, b, 0, i))

  @pure @ghost @opaque @inlineOnce
  private def lemmaNoBufferFoundNotEqual(dict: Dictionary, b: Buffer, at: Int): Unit = {
    require(dict.isValid)
    require(b.isValid)
    require(0 <= at && at < dict.currIndex)
    require(noBufferFoundLoop(dict, b, 0, at + 1))

    lemmaValidBuffersAt(dict, at)

    @opaque @inlineOnce
    def rec(from: Int): Unit = {
      decreases(at - from)
      require(0 <= from && from <= at)
      require(allValidBuffersLoop(dict.buffers, dict.currIndex, from, dict.capacity))
      require(noBufferFoundLoop(dict, b, from, at + 1))
      if (from == at) ()
      else rec(from + 1)
    }.ensuring(_ => !dict.buffers(at).isEqual(b))

    rec(0)
  }.ensuring(_ => !dict.buffers(at).isEqual(b))

  @pure @ghost @opaque @inlineOnce
  private def lemmaValidBuffersAt(dict: Dictionary, i: Int): Unit = {
    require(0 <= i && i < dict.buffers.length)
    require(dict.isValid)

    lemmaValidBuffersAtRange(dict.buffers, dict.currIndex, i, dict.buffers.length)
  }.ensuring(_ => dict.buffers(i).isValid && ((i < dict.currIndex) ==> dict.buffers(i).nonEmpty))

  @pure @ghost @opaque @inlineOnce
  private def lemmaValidBuffersAtRange(buffers: Array[Buffer], nextIndex: Int, i: Int, until: Int): Unit = {
    require(0 <= i && i < until && until <= buffers.length)
    require(0 <= nextIndex && nextIndex <= buffers.length)
    require(allValidBuffersLoop(buffers, nextIndex, 0, until))

    def rec(from: Int): Unit = {
      require(0 <= from && from <= i)
      require(allValidBuffersLoop(buffers, nextIndex, from, until))
      decreases(i - from)
      if (from == i) check(buffers(from).isValid && ((from < nextIndex) ==> buffers(from).nonEmpty))
      else rec(from + 1)
    }.ensuring(_ => buffers(i).isValid && ((i < nextIndex) ==> buffers(i).nonEmpty))

    rec(0)
  }.ensuring(_ => buffers(i).isValid && ((i < nextIndex) ==> buffers(i).nonEmpty))

  @pure @ghost @opaque @inlineOnce
  private def lemmaValidBuffersInsert(buffers: Array[Buffer], nextIndex: Int, newBuffer: Buffer): Unit = {
    require(0 <= nextIndex && nextIndex < buffers.length)
    require(allValidBuffers(buffers, nextIndex))
    require(newBuffer.isValid && newBuffer.nonEmpty)

    def rec(from: Int): Unit = {
      require(0 <= from && from < buffers.length)
      require(allValidBuffersLoop(buffers, nextIndex, from, buffers.length))
      decreases((if (from > nextIndex) 0 else 1, buffers.length - from))

      if (from == nextIndex) {
        assert((buffers.updated(from, snapshot(newBuffer)): Array[Buffer])(from).isValid)
        assert((buffers.updated(from, snapshot(newBuffer)): Array[Buffer])(from).nonEmpty)
        if (nextIndex < buffers.length - 1) {
          rec(from + 1)
        }
        check(allValidBuffersLoop(buffers.updated(nextIndex, snapshot(newBuffer)), nextIndex + 1, from, buffers.length))
      } else if (from < nextIndex) {
        rec(from + 1)
      } else {
        assert((snapshot(buffers).updated(nextIndex, snapshot(newBuffer)): Array[Buffer])(from) == buffers(from))
        assert((snapshot(buffers).updated(nextIndex, snapshot(newBuffer)): Array[Buffer])(from).isValid)
        if (from < buffers.length - 1) {
          rec(from + 1)
        }
      }
    }.ensuring(_ => allValidBuffersLoop(buffers.updated(nextIndex, snapshot(newBuffer)), nextIndex + 1, from, buffers.length))

    rec(0)
  }.ensuring(_ => allValidBuffers(buffers.updated(nextIndex, snapshot(newBuffer)), nextIndex + 1))

  @pure @ghost @opaque @inlineOnce
  private def lemmaValidBuffersLoopExtend(buffers: Array[Buffer], nextIndex: Int, at: Int): Unit = {
    require(0 <= nextIndex && nextIndex <= buffers.length)
    require(0 <= at && at < buffers.length)
    require(allValidBuffersLoop(buffers, nextIndex, 0, at))
    require(buffers(at).isValid)
    require((at < nextIndex) ==> buffers(at).nonEmpty)

    def rec(from: Int): Unit = {
      decreases(from)
      require(0 <= from && from <= at + 1)
      require(allValidBuffersLoop(buffers, nextIndex, from, at + 1))
      if (from == 0) ()
      else if (from == at + 1) rec(from - 1)
      else {
        lemmaValidBuffersAtRange(buffers, nextIndex, from - 1, at)
        assert(buffers(from - 1).isValid)
        assert((from - 1 < nextIndex) ==> buffers(from - 1).nonEmpty)
        assert(allValidBuffersLoop(buffers, nextIndex, from - 1, at + 1))
        rec(from - 1)
      }
    }.ensuring(_ => allValidBuffersLoop(buffers, nextIndex, 0, at + 1))

    rec(at + 1)
  }.ensuring(_ => allValidBuffersLoop(buffers, nextIndex, 0, at + 1))

  @pure @ghost @opaque @inlineOnce
  private def lemmaDictContainsAlphabet(dict: Dictionary, buffer: Buffer): Unit = {
    require(dict.isValid)
    require(containsAlphabet(dict))
    require(buffer.isValid && buffer.size == 1)

    val buffIx = buffer(0).toInt - Byte.MinValue
    check(0 <= buffIx && buffIx <= 255)
    lemmaValidBuffersAt(dict, buffIx)
    check(dict.buffers(buffIx).isValid)

    def rec(i: Int): Unit = {
      decreases(255 - i)
      require(0 <= i && i <= buffIx)
      require(containsAlphabetLoop(dict, i, 256))

      if (i == buffIx) {
        assert(dict.buffers(i).size == 1)
        assert(dict.buffers(i)(0) == i + Byte.MinValue)
        assert(dict.buffers(i).isEqual(buffer))
        lemmaFoundBuffer(dict, buffer, buffIx)
      }
      else rec(i + 1)
    }.ensuring(_ => !noBufferFound(dict, buffer))

    rec(0)
  }.ensuring(_ => dict.find(buffer).isDefined)

  @pure @ghost @opaque @inlineOnce
  private def lemmaFindLoopLemma1(dict: Dictionary, b: Buffer, ix: Int, until: Int): Unit = {
    require(dict.isValid)
    require(b.isValid)
    require(b.nonEmpty)
    require(0 <= ix && ix < until && until <= dict.currIndex)
    require(dict.findLoop(b, 0, until) == Some(ix))
    lemmaNoBufferFoundBeforeIx(dict, b, ix, until) // For precond. 6 of findLoop
  }.ensuring(_ => dict.findLoop(b, ix, until) == Some(ix))

  @pure @ghost @opaque @inlineOnce
  private def lemmaFindLoopLemma(dict: Dictionary, b: Buffer, ix: Int, until1: Int, until2: Int): Unit = {
    require(dict.isValid)
    require(b.isValid)
    require(b.nonEmpty)
    require(0 <= ix && ix < until1)
    require(until1 <= until2 && until2 <= dict.currIndex)
    require(dict.findLoop(b, 0, until1) == Some(ix))

    lemmaFindLoopLemma1(dict, b, ix, until1)
    lemmaNoBufferFoundBeforeIx(dict, b, ix, until1)
    assert(dict.findLoop(b, ix, until1) == Some(ix))
    assert(dict.findLoop(b, ix, until2) == Some(ix))

    @opaque @inlineOnce
    def rec(from: Int): Unit = {
      decreases(dict.currIndex - from)
      require(0 <= from && from <= ix)
      require(noBufferFoundLoop(dict, b, 0, from))

      if (from == ix) {
        assert(dict.findLoop(b, ix, until2) == Some(ix))
        check(dict.findLoop(b, from, until2) == Some(ix))
      } else {
        lemmaValidBuffersAt(dict, from)
        lemmaNoBufferFoundBeforeSmaller(dict, b, from + 1, ix)
        assert(noBufferFoundLoop(dict, b, 0, from + 1))
        rec(from + 1)
        assert(dict.findLoop(b, from + 1, until2) == Some(ix))
        lemmaNoBufferFoundNotEqual(dict, b, from)
        assert(!dict.buffers(from).isEqual(b))
        check(dict.findLoop(b, from, until2) == Some(ix))
      }
    }.ensuring(_ => dict.findLoop(b, from, until2) == Some(ix))

    rec(0)
  }.ensuring(_ => dict.findLoop(b, 0, until2) == Some(ix))

  @pure @ghost @opaque @inlineOnce
  private def lemmaBufferEqualProps(b1: Buffer, b2: Buffer): Unit = {
    require(b1.isValid)
    require(b2.isValid)
    require(b1.isEqual(b2))
  }.ensuring(_ => b1.isFull == b2.isFull && b1.nonEmpty == b2.nonEmpty && b1.size == b2.size)

  @pure @ghost @inline
  private def lemmaAppendDropImpliesEq(buffer: Buffer, c: Byte): Unit = {
    require(buffer.isValid)
    require(buffer.nonFull)
    @ghost val bufferCpy = snapshot(buffer)
    @ghost val oldBuff = snapshot(buffer)
    ghostExpr {
      bufferCpy.append(c)
      bufferCpy.dropLast()
      check(bufferCpy.isEqual(oldBuff))
    }
  }

  @pure @ghost @opaque @inlineOnce
  private def lemmaFindForEqualBuffers(dict: Dictionary, b1: Buffer, b2: Buffer): Unit = {
    require(dict.isValid)
    require(b1.isValid && b1.nonEmpty)
    require(b2.isValid && b2.nonEmpty)
    require(b1.isEqual(b2))

    def rec(from: Int): Unit = {
      decreases(dict.currIndex - from)
      require(0 <= from && from < dict.currIndex)
      require(noBufferFoundLoop(dict, b1, 0, from))
      require(noBufferFoundLoop(dict, b2, 0, from))

      lemmaValidBuffersAt(dict, from)

      lemmaBufferEqualTrans(dict.buffers(from), b1, b2)
      assert(dict.buffers(from).isEqual(b1) == dict.buffers(from).isEqual(b2))

      if (dict.buffers(from).isEqual(b1)) {
        assert(dict.findLoop(b1, from) == Some(from))
        assert(dict.buffers(from).isEqual(b2))
        assert(dict.findLoop(b2, from) == Some(from))
        check(dict.findLoop(b1, from) == dict.findLoop(b2, from))
      } else if (from < dict.currIndex - 1) {
        assert(!dict.buffers(from).isEqual(b2))
        lemmaNoBufferFound(dict, b1, from)
        lemmaNoBufferFound(dict, b2, from)
        rec(from + 1)
      } else {
        assert(dict.findLoop(b1, from) == None())
        assert(dict.findLoop(b2, from) == None())
        check(dict.findLoop(b1, from) == dict.findLoop(b2, from))
      }
    }.ensuring(_ => dict.findLoop(b1, from) == dict.findLoop(b2, from))

    if (dict.currIndex == 0) {
      assert(dict.find(b1) == None())
      assert(dict.find(b2) == None())
      check(dict.find(b1) == dict.find(b2))
    } else {
      rec(0)
    }
  }.ensuring(_ => dict.find(b1) == dict.find(b2))

  @pure @ghost @opaque @inlineOnce
  private def lemmaFindForRangeEqualDicts(dict1: Dictionary, dict2: Dictionary, b: Buffer, until: Int): Unit = {
    require(dict1.isValid)
    require(dict2.isValid)
    require(b.isValid)
    require(b.nonEmpty)
    val minCurrIx = if (dict1.currIndex <= dict2.currIndex) dict1.currIndex else dict2.currIndex
    require(0 <= until && until <= minCurrIx)
    require(areDictsEqualRange(dict1, dict2, 0, until))

    def rec(from: Int): Unit = {
      decreases(until - from)
      require(0 <= from && from <= until)
      require(noBufferFoundLoop(dict1, b, 0, from))
      require(noBufferFoundLoop(dict2, b, 0, from))
      require(areDictsEqualRange(dict1, dict2, from, until))
      if (from == until) {
        check(dict1.findLoop(b, from, until) == dict2.findLoop(b, from, until))
      } else {
        lemmaValidBuffersAt(dict1, from)
        lemmaValidBuffersAt(dict2, from)

        lemmaBufferEqualTrans(b, dict1.buffers(from), dict2.buffers(from))
        lemmaBufferEqualSym(dict1.buffers(from), b)
        lemmaBufferEqualSym(dict2.buffers(from), b)
        assert(dict1.buffers(from).isEqual(b) == dict2.buffers(from).isEqual(b))

        if (dict1.buffers(from).isEqual(b)) {
          assert(dict2.buffers(from).isEqual(b))
          assert(dict1.findLoop(b, from, until) == Some(from))
          assert(dict2.findLoop(b, from, until) == Some(from))
          check(dict1.findLoop(b, from, until) == dict2.findLoop(b, from, until))
        } else {
          assert(!dict2.buffers(from).isEqual(b))
          lemmaNoBufferFound(dict1, b, from)
          lemmaNoBufferFound(dict2, b, from)
          assert(noBufferFoundLoop(dict1, b, 0, from + 1))
          assert(noBufferFoundLoop(dict2, b, 0, from + 1))
          rec(from + 1)
          assert(dict1.findLoop(b, from + 1, until) == dict2.findLoop(b, from + 1, until))
          check(dict1.findLoop(b, from, until) == dict2.findLoop(b, from, until))
        }
      }
    }.ensuring(_ => dict1.findLoop(b, from, until) == dict2.findLoop(b, from, until))

    rec(0)
  }.ensuring(_ => dict1.findLoop(b, 0, until) == dict2.findLoop(b, 0, until))

  @pure @ghost @opaque @inlineOnce
  private def lemmaDictsEqualRangeAt(dict1: Dictionary, dict2: Dictionary, until: Int, at: Int): Unit = {
    require(dict1.isValid)
    require(dict2.isValid)
    val minCurrIx = if (dict1.currIndex <= dict2.currIndex) dict1.currIndex else dict2.currIndex
    require(0 <= at && at < until && until <= minCurrIx)
    require(areDictsEqualRange(dict1, dict2, 0, until))

    lemmaValidBuffersAt(dict1, at)
    lemmaValidBuffersAt(dict2, at)

    def rec(from: Int): Unit = {
      decreases(at - from)
      require(0 <= from && from <= at)
      require(areDictsEqualRange(dict1, dict2, from, until))
      if (from == at) ()
      else rec(from + 1)
    }.ensuring(_ => dict1.buffers(at).isEqual(dict2.buffers(at)))

    rec(0)
  }.ensuring(_ => dict1.buffers(at).isEqual(dict2.buffers(at)))

  @pure @ghost @opaque @inlineOnce
  private def lemmaInsertContainsAlphabet(dict: Dictionary, b: Buffer): Unit = {
    require(dict.nonFull && dict.isValid)
    require(b.isValid && b.nonEmpty)
    require(containsAlphabet(dict))
    val ix = snapshot(dict).currIndex
    val newDict = dict.insertPure(b)

    {
      def rec(from: Int): Unit = {
        decreases(from)
        require(0 <= from && from <= ix)
        require((from <= 256) ==> containsAlphabetLoop(newDict, from, 256))

        if (from == 0) ()
        else if (from > 256) {
          rec(from - 1)
        } else {
          lemmaContainsAlphabetAt(dict, from - 1)
          assert(dict.buffers(from - 1).size == 1)
          assert(dict.buffers(from - 1)(0) == Byte.MinValue + from - 1)

          lemmaValidBuffersAt(dict, from)
          lemmaValidBuffersAt(newDict, from - 1)
          assert(dict.buffers(from - 1).isEqual(newDict.buffers(from - 1)))

          lemmaBufferEqualProps(dict.buffers(from - 1), newDict.buffers(from - 1))
          assert(newDict.buffers(from - 1).size == 1)
          assert(newDict.buffers(from - 1)(0) == Byte.MinValue + from - 1)

          rec(from - 1)
        }
      }.ensuring(_ => containsAlphabetLoop(newDict, 0, 256))

      assert(ix >= 256)
      rec(ix)
    }.ensuring(_ => containsAlphabet(newDict))
  }

  @pure @ghost @opaque @inlineOnce
  private def lemmaPopulateAlphabet(dict: Dictionary, b: Buffer): Unit = {
    require(dict.nonFull && dict.isValid)
    require(b.isValid && b.nonEmpty)
    val ix = snapshot(dict).currIndex
    require(b.size == 1 && b(0) == ix + Byte.MinValue)
    require(ix < 256)
    require(containsAlphabetLoop(dict, 0, ix))
    val newDict = dict.insertPure(b)

    {
      def rec(from: Int): Unit = {
        decreases(from)
        require(0 <= from && from <= ix + 1)
        require(containsAlphabetLoop(newDict, from, ix + 1))
        if (from == 0) ()
        else if (from == ix + 1) {
          assert(newDict.buffers(ix).isEqual(b))
          assert(newDict.buffers(from - 1).isEqual(b))
          lemmaBufferEqualProps(newDict.buffers(from - 1), b)
          assert(newDict.buffers(from - 1).size == 1)
          assert(newDict.buffers(from - 1)(0) == b(0))
          assert(newDict.buffers(from - 1)(0) == Byte.MinValue + from - 1)
          rec(from - 1)
        } else {
          lemmaContainsAlphabetAtRange(dict, from - 1, ix)
          lemmaDictsEqualRangeAt(dict, newDict, ix, from - 1)
          lemmaBufferEqualProps(dict.buffers(from - 1), newDict.buffers(from - 1))
          assert(newDict.buffers(from - 1).size == 1)
          assert(newDict.buffers(from - 1)(0) == Byte.MinValue + from - 1)
          rec(from - 1)
        }
      }.ensuring(_ => containsAlphabetLoop(newDict, 0, ix + 1))

      rec(ix + 1)
    }.ensuring(_ => containsAlphabetLoop(newDict, 0, ix + 1))
  }

  @pure @ghost @opaque @inlineOnce
  private def lemmaAreDictsEqualRangeTrans(dict1: Dictionary, dict2: Dictionary, dict3: Dictionary, until: Int): Unit = {
    require(dict1.isValid)
    require(dict2.isValid)
    require(dict3.isValid)
    require(0 <= until && until <= dict1.currIndex && until <= dict2.currIndex && until <= dict3.currIndex)
    require(areDictsEqualRange(dict1, dict2, 0, until))
    require(areDictsEqualRange(dict2, dict3, 0, until))

    def rec(from: Int): Unit = {
      decreases(until - from)
      require(0 <= from && from <= until)
      require(areDictsEqualRange(dict1, dict2, from, until))
      require(areDictsEqualRange(dict2, dict3, from, until))

      if (from == until) ()
      else {
        lemmaValidBuffersAt(dict1, from)
        lemmaValidBuffersAt(dict2, from)
        lemmaValidBuffersAt(dict3, from)
        lemmaBufferEqualTrans(dict1.buffers(from), dict2.buffers(from), dict3.buffers(from))
        assert(dict1.buffers(from).isEqual(dict2.buffers(from)))
        rec(from + 1)
      }
    }.ensuring(_ => areDictsEqualRange(dict1, dict3, from, until))

    rec(0)
  }.ensuring(_ => areDictsEqualRange(dict1, dict3, 0, until))

  @pure @ghost @opaque @inlineOnce
  private def lemmaSetBufferAt(dict: Dictionary, b: Buffer, at: Int): Unit = {
    require(dict.nonFull && dict.isValid)
    require(b.isValid && b.nonEmpty)
    require(0 <= at && at <= dict.currIndex)
    val ix = snapshot(dict).currIndex
    val newBuf = {
      lemmaValidBuffersAt(dict, at)
      snapshot(dict).buffers(at).setPure(b)
    }
    val newBuffers = snapshot(
      snapshot(dict).buffers.updated(at, snapshot(newBuf)))
    val newDict = Dictionary(snapshot(newBuffers), ix)

    {
      val len = dict.buffers.length

      def validRec(from: Int): Unit = {
        decreases(len - from)
        require(0 <= from && from <= len)
        require(allValidBuffersLoop(dict.buffers, ix, from, len))
        require(allValidBuffersLoop(newDict.buffers, ix, 0, from))

        if (from == len) {
          ()
        } else if (from == at) {
          assert(newDict.buffers(from) == newBuf)
          assert(newDict.buffers(from).isValid)
          assert(newDict.buffers(from).nonEmpty)
          lemmaValidBuffersLoopExtend(newDict.buffers, ix, from)
          validRec(from + 1)
        } else {
          assert(dict.buffers(from) == newDict.buffers(from))
          lemmaValidBuffersAt(dict, from)
          assert(newDict.buffers(from).isValid)
          assert((from < ix) ==> newDict.buffers(from).nonEmpty)
          lemmaValidBuffersLoopExtend(newDict.buffers, ix, from)
          validRec(from + 1)
        }
      }.ensuring(_ => allValidBuffersLoop(newDict.buffers, ix, 0, len))

      def eqDictExtendRec(from: Int): Unit = {
        require(0 <= from && from < at)
        require(newDict.isValid)
        require(areDictsEqualRange(dict, newDict, 0, from))
        require {
          lemmaValidBuffersAt(dict, from)
          lemmaValidBuffersAt(newDict, from)
          dict.buffers(from).isEqual(newDict.buffers(from))
        }
        def rec(from2: Int): Unit = {
          decreases(from - from2)
          require(0 <= from2 && from2 <= from)
          require(areDictsEqualRange(dict, newDict, from2, from))
          if (from2 == from) ()
          else rec(from2 + 1)
        }.ensuring(_ => areDictsEqualRange(dict, newDict, from2, from + 1))

        rec(0)
      }.ensuring(_ => areDictsEqualRange(dict, newDict, 0, from + 1))

      def eqDictRec(from: Int): Unit = {
        decreases(at - from)
        require(0 <= from && from <= at)
        require(newDict.isValid)
        require(areDictsEqualRange(dict, newDict, 0, from))

        if (from == at) ()
        else {
          assert(dict.buffers(from) == newDict.buffers(from))
          lemmaValidBuffersAt(dict, from)
          lemmaValidBuffersAt(newDict, from)
          lemmaBufferEqualRefl(dict.buffers(from))
          eqDictExtendRec(from)
          eqDictRec(from + 1)
        }
      }.ensuring(_ => areDictsEqualRange(dict, newDict, 0, at))

      validRec(0)
      eqDictRec(0)
    }.ensuring(_ => newDict.isValid && areDictsEqualRange(dict, newDict, 0, at))
  }

  @pure @ghost @opaque @inlineOnce
  private def lemmaDictIncrementIndex(dict: Dictionary): Unit = {
    require(dict.nonFull && dict.isValid)
    val ix = snapshot(dict).currIndex
    val newDict = Dictionary(snapshot(dict.buffers), ix + 1)
    require(newDict.buffers(ix).nonEmpty)

    {
      val len = dict.buffers.length

      def validRec(from: Int): Unit = {
        decreases(len - from)
        require(0 <= from && from <= len)
        require(allValidBuffersLoop(dict.buffers, ix, from, len))
        require(allValidBuffersLoop(newDict.buffers, ix + 1, 0, from))

        if (from == len) {
          ()
        } else {
          assert(dict.buffers(from) == newDict.buffers(from))
          lemmaValidBuffersAt(dict, from)
          assert(newDict.buffers(from).isValid)
          assert((from < ix + 1) ==> newDict.buffers(from).nonEmpty)
          lemmaValidBuffersLoopExtend(newDict.buffers, ix + 1, from)
          validRec(from + 1)
        }
      }.ensuring(_ => allValidBuffersLoop(newDict.buffers, ix + 1, 0, len))

      def eqDictRec(from: Int): Unit = {
        decreases(from)
        require(0 <= from && from <= ix)
        require(newDict.isValid)
        require(areDictsEqualRange(dict, newDict, from, ix))

        if (from == 0) ()
        else {
          assert(dict.buffers(from - 1) == newDict.buffers(from - 1))
          lemmaValidBuffersAt(dict, from - 1)
          lemmaValidBuffersAt(newDict, from - 1)
          lemmaBufferEqualRefl(dict.buffers(from - 1))
          assert(areDictsEqualRange(dict, newDict, from - 1, ix))
          eqDictRec(from - 1)
        }
      }.ensuring(_ => areDictsEqualRange(dict, newDict, 0, ix))

      validRec(0)
      eqDictRec(ix)
    }.ensuring(_ => newDict.isValid && areDictsEqualRange(dict, newDict, 0, ix))
  }

  @pure @ghost @opaque @inlineOnce
  private def lemmaDictInsertFinding(dict: Dictionary, b: Buffer, inserted: Buffer): Unit = {
    require(dict.isValid && dict.nonFull)
    require(b.isValid && b.nonEmpty)
    require(inserted.isValid && inserted.nonEmpty)
    val ix = snapshot(dict).currIndex
    val newDict = dict.insertPure(inserted)
    val origFind = dict.find(b)

    {
      origFind match {
        case Some(origFindIx) =>
          assert(origFindIx <= ix)
          assert(areDictsEqualRange(dict, newDict, 0, ix))
          lemmaFindForRangeEqualDicts(dict, newDict, b, ix)
          assert(dict.findLoop(b, 0, ix) == newDict.findLoop(b, 0, ix))
          assert(newDict.findLoop(b, 0, ix) == Some(origFindIx))
          lemmaFindLoopLemma(newDict, b, origFindIx, ix, ix + 1)
          assert(newDict.findLoop(b, 0, ix + 1) == Some(origFindIx))
          assert(newDict.currIndex == ix + 1)
          check(origFind.isDefined ==> (newDict.find(b) == origFind))
        case None() =>
          assert(!origFind.isDefined)
          check(origFind.isDefined ==> (newDict.find(b) == origFind))
      }
    }.ensuring(_ => (origFind.isDefined ==> (newDict.find(b) == origFind)))
  }

  // A buffer representation using a fix-sized array for memory.
  //
  // NOTE Use `createBuffer()` to get a new buffer; don't attempt to create one yourself.
  case class Buffer(private val array: Array[Byte], private var length: Int) {
    val capacity = array.length

    def arr: Array[Byte] = array

    def isValid: Boolean = length >= 0 && length <= capacity && capacity == BufferSize

    def isFull: Boolean = length == capacity

    def nonFull: Boolean = length < capacity

    def isEmpty: Boolean = length == 0

    def nonEmpty: Boolean = length > 0

    def isEqual(b: Buffer): Boolean = {
      require(isValid)
      require(b.isValid)
      if (b.length != length) false
      else areRangesEqual(array, b.array, 0, length)
    } //ensuring { _ => this.isEqual(old(this)) && b.isEqual(old(b)) } // this VC does infinite recursion

    def size = {
      require(isValid)
      length
    } ensuring { res => 0 <= res && res <= capacity }

    def apply(index: Int): Byte = {
      require(index >= 0 && index < length)
      require(isValid)
      array(index)
    }

    def append(x: Byte): Unit = {
      require(nonFull)
      require(isValid)

      array(length) = x

      length += 1
    } ensuring { _ => isValid }

    def dropLast(): Unit = {
      require(nonEmpty)
      require(isValid)

      length -= 1
    } ensuring { _ => isValid && old(this).length == length + 1 }

    def clear(): Unit = {
      require(isValid)
      length = 0
    } ensuring { _ => isEmpty && isValid }

    def set(b: Buffer): Unit = {
      require(isValid)
      require(b.isValid)
      if (b.isEmpty) clear()
      else setImpl(b)
    } ensuring { _ => b.isValid && isValid && isEqual(b) /* && b.isEqual(old(b)) */ }

    @ghost @inline @pure
    def setPure(b: Buffer): Buffer = {
      require(isValid)
      require(b.isValid)
      val newThis = snapshot(this)
      newThis.set(b)
      newThis
    }

    private def setImpl(b: Buffer): Unit = {
      require(isValid)
      require(b.isValid)
      require(b.nonEmpty)

      length = b.length

      assert(isValid)
      assert(nonEmpty)
      assert(length == b.length)

      var i = 0
      (while (i < length) {
        decreases(length - i)
        assert(isValid)
        assert(nonEmpty)
        assert(length == b.length)
        assert((i > 0) ==> areRangesEqual(array, b.array, 0, i))

        array(i) = b.array(i)
        i += 1

        assert(isValid)
        assert(nonEmpty)
        assert(length == b.length)
        assert(areRangesEqual(array, b.array, 0, i))
      }) invariant {
        0 <= i && i <= length &&
        isValid && nonEmpty &&
        length == b.length &&
        areRangesEqual(array, b.array, 0, i)
      }

      assert(b.isValid)
      assert(isValid)
      assert(nonEmpty)
      assert(areRangesEqual(array, b.array, 0, length))
      assert(length == b.length)
      assert(isEqual(b))
    } ensuring { _ => b.isValid && isValid && nonEmpty && isEqual(b) /* && b.isEqual(old(b)) */ }

  }

  @inline @cCode.inline // very important because we cannot return arrays
  def createBuffer(): Buffer = {
    Buffer(Array.fill(BufferSize)(0), 0)
  } ensuring { b => b.isEmpty && b.nonFull && b.isValid }


  def tryReadNext(fis: FIS)(implicit state: stainless.io.State): Option[Byte] = {
    require(fis.isOpen)
    fis.tryReadByte()
  }.ensuring(_ => fis.isOpen)

  def writeCodeWord(fos: FOS, cw: CodeWord): Boolean = {
    require(fos.isOpen)
    val ok1 = fos.write(cw.b1)
    if (ok1) fos.write(cw.b2)
    else false
  }.ensuring(_ => fos.isOpen)

  def tryReadCodeWord(fis: FIS)(implicit state: stainless.io.State): Option[CodeWord] = {
    require(fis.isOpen)
    val b1Opt = fis.tryReadByte()
    val b2Opt = fis.tryReadByte()

    (b1Opt, b2Opt) match {
      case (Some(b1), Some(b2)) => Some[CodeWord](CodeWord(b1, b2))
      case _ => None[CodeWord]()
    }
  }.ensuring(_ => fis.isOpen)

  def writeBytes(fos: FOS, buffer: Buffer): Boolean = {
    require(fos.isOpen && buffer.isValid)
    var success = true
    var i = 0

    val size = buffer.size

    (while (success && i < size) {
      decreases(size - i)
      success = fos.write(buffer(i))
      i += 1
    }) invariant {
      0 <= i && i <= size && fos.isOpen && buffer.isValid
    }

    success
  }.ensuring(_ => fos.isOpen)

  case class CodeWord(b1: Byte, b2: Byte) // a 16-bit code word

  def index2CodeWord(index: Int): CodeWord = {
    require(0 <= index && index < 65536) // unsigned index
    // Shift the index in the range [-32768, 32767] to make it signed
    val signed = index - 32768
    // Split it into two byte components
    val b2 = signed.toByte
    val b1 = ((signed >>> 8) & 0xff).toByte
    CodeWord(b1, b2)
  }

  def codeWord2Index(cw: CodeWord): Int = {
    // When building the signed integer back, make sure to understand integer
    // promotion with negative numbers: we need to avoid the signe extension here.
    val signed = (cw.b1 << 8) | (0xff & cw.b2)
    signed + 32768
  } ensuring { res => 0 <= res && res < 65536 }


  case class Dictionary(val buffers: Array[Buffer], private var nextIndex: Int) {
    val capacity = buffers.length

    @pure @ghost
    def isValid = 0 <= nextIndex && nextIndex <= capacity &&
      capacity == DictionarySize &&
      allValidBuffers(buffers, nextIndex)

    @pure
    def isEmpty = nextIndex == 0

    @pure
    def nonEmpty = !isEmpty

    @pure
    def isFull = nextIndex == capacity

    @pure
    def nonFull = nextIndex < capacity

    @pure
    def currIndex = {
      require(isValid)
      nextIndex
    } ensuring { res => 0 <= res && res <= capacity }

    @pure
    def lastIndex = {
      require(isValid)
      require(nonEmpty)
      nextIndex - 1
    } ensuring { res => 0 <= res && res < capacity }

    @pure
    def contains(index: Int): Boolean = {
      require(0 <= index)
      index < nextIndex
    }

    def appendTo(index: Int, buffer: Buffer): Boolean = {
      require(isValid)
      require(buffer.isValid)
      require(0 <= index && contains(index))

      ghostExpr { lemmaValidBuffersAt(this, index) }
      assert(buffers(index).isValid && buffers(index).nonEmpty)
      val size = buffers(index).size

      assert(buffer.capacity == BufferSize)
      assert(size > 0)
      if (buffer.size < buffer.capacity - size) {
        assert(buffer.nonFull)
        @ghost val bufferOrigSize = buffer.size

        var i = 0
        (while (i < size) {
          decreases(size - i)
          assert(buffer.size == bufferOrigSize + i)
          buffer.append(buffers(index)(i))
          assert(buffer.size == bufferOrigSize + i + 1)
          assert(buffer.isValid)
          assert(isValid)
          i += 1
        }) invariant {
          0 <= i && i <= size &&
          buffer.isValid &&
          buffer.size == bufferOrigSize + i &&
          isValid
        }
        assert(buffer.size > 0)
        check(buffer.nonEmpty)
        true
      } else false
    } ensuring { ok =>
      isValid &&
      buffer.isValid &&
      ok ==> buffer.nonEmpty
    }

    def insert(b: Buffer): Unit = {
      require(nonFull && b.nonEmpty)
      require(isValid)
      require(b.isValid)

      ghostExpr {
        lemmaValidBuffersAt(this, nextIndex)
        assert(buffers(nextIndex).isValid)
      }

      @ghost val oldThis = snapshot(this)
      buffers(nextIndex).set(b)

      ghostExpr {
        lemmaSetBufferAt(oldThis, b, nextIndex)
        assert(isValid)
        assert(oldThis.isValid)
        assert(areDictsEqualRange(oldThis, this, 0, nextIndex))
      }

      @ghost val thisBeforeInc = snapshot(this)
      nextIndex += 1
      ghostExpr {
        lemmaDictIncrementIndex(thisBeforeInc)
        check(isValid)
        assert(areDictsEqualRange(thisBeforeInc, this, 0, nextIndex - 1))
        lemmaAreDictsEqualRangeTrans(oldThis, thisBeforeInc, this, nextIndex - 1)
        check(areDictsEqualRange(oldThis, this, 0, nextIndex - 1))
      }
    }.ensuring { _ =>
      isValid &&
      nonEmpty &&
      nextIndex == old(this).nextIndex + 1
      areDictsEqualRange(old(this), this, 0, nextIndex - 1)
    }

    @pure @ghost
    def insertPure(b: Buffer): Dictionary = {
      require(nonFull && b.nonEmpty)
      require(isValid)
      require(b.isValid)

      val newThis = snapshot(this)
      newThis.insert(b)
      newThis
    }

    def find(b: Buffer): Option[Int] = {
      require(isValid)
      require(b.isValid)
      require(b.nonEmpty)
      findLoop(b, 0)
    }.ensuring {
      case Some(i) => 0 <= i && i < nextIndex && {
        lemmaValidBuffersAt(this, i)
        buffers(i).isEqual(b)
      }
      case None() => noBufferFound(this, b)
    }

    def findLoop(b: Buffer, from: Int, until: Int = nextIndex): Option[Int] = {
      decreases(until - from)
      require(isValid)
      require(b.isValid)
      require(b.nonEmpty)
      require(0 <= until && until <= nextIndex)
      require(0 <= from && from <= until)
      require(noBufferFoundLoop(this, b, 0, from))

      if (from == until) {
        None[Int]()
      } else {
        ghostExpr { lemmaValidBuffersAt(this, from) }

        if (buffers(from).isEqual(b)) {
          Some(from)
        } else {
          ghostExpr { lemmaNoBufferFound(this, b, from) }
          assert(noBufferFoundLoop(this, b, 0, from + 1))
          findLoop(b, from + 1, until)
        }
      }
    }.ensuring {
      case Some(res) => 0 <= res && res < until && {
        lemmaValidBuffersAt(this, res)
        buffers(res).isEqual(b)
      }
      case None() => noBufferFoundLoop(this, b, 0, until)
    }

    def encode(b: Buffer): Option[CodeWord] = {
      require(isValid)
      require(b.isValid)
      require(b.nonEmpty)

      find(b) match {
        case Some(ix) =>
          assert(0 <= ix && ix < nextIndex) // With find(b).map(...), this assertion can't be verified :(
          assert(nextIndex <= DictionarySize)
          Some[CodeWord](index2CodeWord(ix))
        case None() => None[CodeWord]()
      }
    }.ensuring(r => r.isDefined == find(b).isDefined)
  }

  @inlineOnce @cCode.inline // in order to "return" the arrays
  def createDictionary(): Dictionary = {
    val dict = Dictionary(Array.fill(DictionarySize){ createBuffer() }, 0)
    assert(dict.isEmpty)
    ghostExpr {
      def rec(from: Int): Unit = {
        decreases(from)
        require(0 <= from && from <= dict.capacity)
        require(allValidBuffersLoop(dict.buffers, 0, from, dict.capacity))
        if (from == 0) ()
        else {
          assert(dict.buffers(from - 1).isValid)
          rec(from - 1)
        }
      }.ensuring(_ => allValidBuffersLoop(dict.buffers, 0, 0, dict.capacity))
      rec(dict.capacity)
    }
    dict
  }.ensuring { res => res.isEmpty && res.isValid }

  def initialise(dict: Dictionary): Unit = {
    require(dict.isEmpty) // initialise only fresh dictionaries
    require(dict.isValid)
    assert(dict.nonFull)

    val buffer = createBuffer()
    var value: Int = Byte.MinValue // Use an Int to avoid overflow issues
    assert(dict.currIndex == -Byte.MinValue + value)
    assert(containsAlphabetLoop(dict, 0, -Byte.MinValue + value))

    (while (value <= Byte.MaxValue) {
      decreases(Byte.MaxValue - value)
      buffer.append(value.toByte) // no truncation here

      assert(buffer.size == 1 && buffer(0) == value.toByte)
      assert(containsAlphabetLoop(dict, 0, dict.currIndex))
      @ghost val oldDict = snapshot(dict)
      dict.insert(buffer)
      ghostExpr {
        lemmaPopulateAlphabet(oldDict, buffer)
        assert(containsAlphabetLoop(dict, 0, dict.currIndex))
      }
      buffer.dropLast()
      value += 1
      assert(dict.currIndex == -Byte.MinValue + value)
    }).invariant {
      dict.nonFull &&&
      dict.isValid &&&
      buffer.isEmpty &&&
      buffer.isValid &&&
      dict.currIndex == -Byte.MinValue + value &&&
      containsAlphabetLoop(dict, 0, dict.currIndex) &&&
      value >= Byte.MinValue && value <= Byte.MaxValue + 1 // last iteration goes "overflow" on Byte
    }
    ()
  }.ensuring { _ => dict.isValid && dict.nonEmpty && containsAlphabet(dict) }

  def encode(fis: FIS, fos: FOS)(implicit state: stainless.io.State): Boolean = {
    require(fis.isOpen && fos.isOpen)

    // Initialise the dictionary with the basic alphabet
    val dictionary = createDictionary()
    initialise(dictionary)

    // Small trick to move the static arrays outside the main encoding function;
    // this helps analysing the C code in a debugger (less local variables) but
    // it actually has no impact on performance (or should, in theory).
    encodeImpl(dictionary, fis, fos)
  }

  def encodeImpl(dictionary: Dictionary, fis: FIS, fos: FOS)(implicit state: stainless.io.State): Boolean = {
    require(fis.isOpen && fos.isOpen)
    require(dictionary.nonEmpty && dictionary.isValid)
    require(containsAlphabet(dictionary))

    var bufferFull = false // TODO handle this as a non-fatal thing.
    var ioError = false

    val buffer = createBuffer()
    assert(buffer.isValid && buffer.isEmpty && buffer.nonFull)

    var currentOpt = tryReadNext(fis)

    var fuel = Long.MaxValue

    // Read from the input file all its content, stop when an error occurs
    // (either output error or full buffer)
    (while (!bufferFull && !ioError && currentOpt.isDefined && fuel > 0) {
      decreases(fuel)
      val c = currentOpt.get

      assert(containsAlphabet(dictionary))
      assert(buffer.nonFull)
      @ghost val oldBuff = snapshot(buffer)
      assert(oldBuff.nonEmpty ==> dictionary.find(oldBuff).isDefined)

      buffer.append(c)
      assert(buffer.nonEmpty)
      assert(buffer.isValid)
      assert(oldBuff.isEmpty ==> {
        assert(buffer.size == 1)
        lemmaDictContainsAlphabet(dictionary, buffer)
        dictionary.find(buffer).isDefined
      })
      val code = dictionary.encode(buffer)
      assert(oldBuff.isEmpty ==> code.isDefined)

      val processBuffer = buffer.isFull || code.isEmpty

      assert(oldBuff.isEmpty ==> !processBuffer)

      if (processBuffer) {
        assert(oldBuff.nonEmpty)
        assert(dictionary.find(oldBuff).isDefined)
        @ghost val oldDict = snapshot(dictionary)
        // Add s (with c) into the dictionary, if the dictionary size limitation allows it
        if (dictionary.nonFull) {
          dictionary.insert(buffer)
          ghostExpr {
            val oldFind = oldDict.find(oldBuff)
            lemmaDictInsertFinding(oldDict, oldBuff, inserted = buffer)
            assert(oldFind.isDefined ==> (dictionary.find(oldBuff) == oldFind))
            assert(dictionary.find(oldBuff) == oldDict.find(oldBuff))
            check(dictionary.find(oldBuff).isDefined)
            lemmaInsertContainsAlphabet(oldDict, buffer)
            check(containsAlphabet(dictionary))
          }
        }
        assert(dictionary.find(oldBuff).isDefined)

        // Encode s (without c) and print it
        buffer.dropLast()
        ghostExpr {
          lemmaAppendDropImpliesEq(oldBuff, c)
        }
        assert(buffer.isEqual(oldBuff))
        ghostExpr(lemmaBufferEqualProps(buffer, oldBuff))
        assert(buffer.nonFull)
        assert(buffer.nonEmpty)
        assert(buffer.isValid)

        ghostExpr {
          lemmaFindForEqualBuffers(dictionary, buffer, oldBuff)
          assert(dictionary.find(buffer) == dictionary.find(oldBuff))
        }
        assert(dictionary.find(buffer).isDefined)
        val code2 = dictionary.encode(buffer)
        assert(code2.isDefined)
        ioError = !writeCodeWord(fos, code2.get)

        // Prepare for next codeword: set s to c
        buffer.clear()
        assert(buffer.isValid && buffer.nonFull)
        buffer.append(c)
        assert(buffer.nonEmpty)
        assert(buffer.isValid)
        ghostExpr { lemmaDictContainsAlphabet(dictionary, buffer) }
        check(dictionary.find(buffer).isDefined)
      } else {
        assert(code.isDefined)
        check(dictionary.find(buffer).isDefined)
      }

      bufferFull = buffer.isFull
      currentOpt = tryReadNext(fis)
      fuel -= 1

      ghostExpr {
        check(bufferFull == buffer.isFull)
        check(buffer.isValid)
        check(dictionary.isValid)
        check(fos.isOpen && fis.isOpen)
        check(containsAlphabet(dictionary))
        assert(dictionary.find(buffer).isDefined)
        check(buffer.nonEmpty ==> dictionary.find(buffer).isDefined)
        check(fuel >= 0)
      }
    }) invariant {
      bufferFull == buffer.isFull &&&
      buffer.isValid &&&
      dictionary.isValid &&&
      fos.isOpen && fis.isOpen &&&
      containsAlphabet(dictionary) &&&
      buffer.nonEmpty ==> dictionary.find(buffer).isDefined &&&
      fuel >= 0
      // ((!bufferFull && !ioError) ==> buffer.nonEmpty) // it might always be true...
    }

    // Process the remaining buffer
    if (!bufferFull && !ioError && buffer.nonEmpty) {
      val code = dictionary.encode(buffer)
      assert(dictionary.find(buffer).isDefined)
      assert(code.isDefined)
      ioError = !writeCodeWord(fos, code.get)
    }

    !bufferFull && !ioError
  }

  def decode(fis: FIS, fos: FOS)(implicit state: stainless.io.State): Boolean = {
    require(fis.isOpen && fos.isOpen)

    // Initialise the dictionary with the basic alphabet
    val dictionary = createDictionary()
    initialise(dictionary)

    decodeImpl(dictionary, fis, fos)
  }

  def decodeImpl(dictionary: Dictionary, fis: FIS, fos: FOS)(implicit state: stainless.io.State): Boolean = {
    require(fis.isOpen && fos.isOpen && dictionary.isValid && dictionary.nonEmpty)

    var illegalInput = false
    var ioError = false
    var bufferFull = false

    var currentOpt = tryReadCodeWord(fis)

    val buffer = createBuffer()

    if (currentOpt.isDefined) {
      val cw = currentOpt.get
      val index = codeWord2Index(cw)

      if (dictionary contains index) {
        bufferFull = !dictionary.appendTo(index, buffer)
        ioError = !writeBytes(fos, buffer)
      } else {
        illegalInput = true
      }

      assert((!bufferFull && !illegalInput) ==> buffer.nonEmpty)
      currentOpt = tryReadCodeWord(fis)
    }

    var fuel = Long.MaxValue

    (while (!illegalInput && !ioError && !bufferFull && currentOpt.isDefined && fuel > 0) {
      decreases(fuel)
      val cw = currentOpt.get
      val index = codeWord2Index(cw)
      val entry = createBuffer()

      if (dictionary contains index) {
        illegalInput = !dictionary.appendTo(index, entry)
        ghostExpr { check(!illegalInput ==> entry.nonEmpty) }
      } else if (index == dictionary.lastIndex + 1) {
        entry.set(buffer)
        assert(entry.isEqual(buffer))
        assert(entry.size == buffer.size && buffer.nonFull && entry.nonFull)
        entry.append(buffer(0))
        ghostExpr { check(!illegalInput ==> entry.nonEmpty) }
      } else {
        illegalInput = true
        ghostExpr { check(!illegalInput ==> entry.nonEmpty) }
      }

      assert(!illegalInput ==> entry.nonEmpty)
      bufferFull = buffer.isFull

      if (!illegalInput) {
        assert(entry.nonEmpty)
        ioError = !writeBytes(fos, entry)

        if (!bufferFull) {
          val tmp = createBuffer()
          tmp.set(buffer)
          ghostExpr { lemmaBufferEqualProps(tmp, buffer) }
          assert(tmp.nonFull)
          tmp.append(entry(0))
          if (dictionary.nonFull) {
            dictionary.insert(tmp)
            assert(dictionary.isValid && dictionary.nonEmpty)
          } else {
            assert(dictionary.isValid && dictionary.nonEmpty)
          }

          buffer.set(entry)
          ghostExpr {
            lemmaBufferEqualProps(buffer, entry)
            check(buffer.isValid && buffer.nonEmpty)
            check(dictionary.isValid && dictionary.nonEmpty)
          }
        }

        ghostExpr {
          check(buffer.isValid && buffer.nonEmpty)
          check(dictionary.isValid && dictionary.nonEmpty)
          check(fis.isOpen && fos.isOpen)
        }
        currentOpt = tryReadCodeWord(fis)

        bufferFull = buffer.isFull
        fuel -= 1
      }

      ghostExpr {
        check(buffer.isValid && buffer.nonEmpty)
        check(dictionary.isValid && dictionary.nonEmpty)
        check(fis.isOpen && fos.isOpen)
      }
    }) invariant {
      buffer.isValid &&
      buffer.nonEmpty &&
      bufferFull == buffer.isFull &&
      dictionary.isValid &&
      dictionary.nonEmpty &&
      fuel >= 0 &&
      fis.isOpen && fos.isOpen
    }

    !illegalInput && !ioError && !bufferFull
  }
  sealed abstract class Status
  case class Success()     extends Status
  case class OpenError()   extends Status
  case class EncodeError() extends Status
  case class DecodeError() extends Status

  implicit def status2boolean(s: Status): Boolean = s match {
    case Success() => true
    case _ => false
  }

  @cCode.`export`
  def main() = {
    implicit val state = stainless.io.newState

    def statusCode(s: Status): Int = s match {
      case Success()     => StdOut.println("success");            0
      case OpenError()   => StdOut.println("couldn't open file"); 1
      case EncodeError() => StdOut.println("encoding failed");    2
      case DecodeError() => StdOut.println("decoding failed");    3
    }

    def encodeFile(): Status = {
      val input = FIS.open("input.txt")
      val encoded = FOS.open("encoded.txt")

      val res =
        if (input.isOpen && encoded.isOpen) {
          if (encode(input, encoded)) Success()
          else EncodeError()
        } else OpenError()

      encoded.close()
      input.close()

      res
    }

    def decodeFile(): Status = {
      val encoded = FIS.open("encoded.txt")
      val decoded = FOS.open("decoded.txt")

      val res =
        if (encoded.isOpen && decoded.isOpen) {
          if (decode(encoded, decoded)) Success()
          else DecodeError()
        } else OpenError()

      decoded.close()
      encoded.close()

      res
    }

    val r1 = encodeFile()
    statusCode(if (r1) decodeFile() else r1)
  }

}