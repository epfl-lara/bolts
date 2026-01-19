/** Author: Samuel Chassot
  */

package com.ziplex.lexer


import stainless.equations._
import stainless.collection._
import stainless.annotation._
import com.mutablemaps.map.MutableLongMap._
import com.mutablemaps.map.ListLongMap
import com.mutablemaps.map.ListMap
import com.mutablemaps.map.TupleListOpsGenK
import com.mutablemaps.map.MutableHashMap._
import com.mutablemaps.map.Hashable
import com.mutablemaps.map.TupleListOpsGenK.invariantList
import com.mutablemaps.map.MutableHashMap

import stainless.lang.Quantifiers.Exists
import stainless.lang.Quantifiers.ExistsThe
import stainless.lang.Quantifiers.pickWitness

import com.ziplex.lexer.Sequence
import com.ziplex.lexer.emptySeq
import com.ziplex.lexer.singletonSeq
import com.ziplex.lexer.seqFromList

import scala.annotation.tailrec

// BEGIN uncomment for verification ------------------------------------------
import stainless.lang.StaticChecks._
import stainless.lang.{ghost => ghostExpr, _}
import stainless.proof.check
// END uncomment for verification --------------------------------------------
// BEGIN imports for benchmarking -------------------------------------------
// import stainless.lang.{ghost => _, decreases => _, unfold => _, _}
// import com.ziplex.lexer.OptimisedChecks.*
// import Predef.{assert => _, Ensuring => _, require => _}

// @tailrec
// def dummyReg(x: BigInt): BigInt = {
//   if (x == BigInt(0)) then x
//   else dummyReg(x - BigInt(1))
// }.ensuring( res => res == BigInt(0))
// END imports for benchmarking ---------------------------------------------

object ZipperRegex {
  import VerifiedRegex.*
  import VerifiedRegexMatcher.*
  import stainless.lang.Set
  import MemoisationZipper.*


  /**
   * When memoizing furthest nullable positions
   * the cache memoizes 1/k call when the input size is bigger than this threshold
   * 
   * 
   */
  inline def FURTHEST_NULLABLE_CACHE_THRESHOLD = 1_048_576 // 2^20
  inline def FURTHEST_NULLABLE_CACHE_K = 10

  
  /**
    * Context[C] represent sequences of expressions
    * Zipper[C] are sets of Context[C], and they represent disjunctions of expressions
    */
  case class Context[C](exprs: List[Regex[C]]){

    lazy val lostCause: Boolean = exprs.exists(r => r.lostCause)
    inline def prepend(r: Regex[C]): Context[C] = {
      Context(r :: exprs)
    }
    inline def forall(p: Regex[C] => Boolean): Boolean = exprs.forall(p)
    inline def exists(p: Regex[C] => Boolean): Boolean = exprs.exists(p)
    inline def isEmpty: Boolean = exprs.isEmpty
    inline def head: Regex[C] = {
      exprs.head
    }
    inline def tail: Context[C] = {
      Context(exprs.tail)
    }
  type Zipper[C] = Set[Context[C]]

  def focus[C](r: Regex[C]): Zipper[C] = {
    Set(Context(List(r)))
  }.ensuring(res => unfocusZipper(res.toList) == r)

  def derivationStepZipperUp[C](context: Context[C], a: C): Zipper[C] = {
    context.exprs match {
      case Cons(right, parent) if right.nullable => derivationStepZipperDown(right, Context(parent), a) ++ derivationStepZipperUp(Context(parent), a)
      case Cons(right, parent) => derivationStepZipperDown(right, Context(parent), a)
      case Nil() => Set()
    }
  }


  def derivationStepZipperDown[C](expr: Regex[C], context: Context[C], a: C): Zipper[C] = {
    expr match {
      case ElementMatch(c) if c == a => Set(context)
      case Union(rOne, rTwo) => derivationStepZipperDown(rOne, context, a) ++ derivationStepZipperDown(rTwo, context, a)
      case Concat(rOne, rTwo) if rOne.nullable => derivationStepZipperDown(rOne, context.prepend(rTwo), a) ++ derivationStepZipperDown(rTwo, context, a)
      case Concat(rOne, rTwo) => derivationStepZipperDown(rOne, context.prepend(rTwo), a)
      case Star(rInner) => derivationStepZipperDown(rInner, context.prepend(Star(rInner)), a)
      case _ => Set()
    }
  }

  def derivationZipper[C](z: Zipper[C], input: List[C]): Zipper[C] = {
    input match {
      case Cons(hd, tl) => derivationZipper(derivationStepZipper(z, hd), tl)
      case Nil()        => z
    }
  }

  // @inlineOnce
  def derivationStepZipper[C](z: Zipper[C], a: C): Zipper[C] = {
    z.flatMap(c => derivationStepZipperUp(c, a))
  }

  def derivationStepZipperSimp[C](z: Zipper[C], a: C): Zipper[C] = {
    z.flatMap(c => derivationStepZipperUp(c, a)).filter(c => !c.lostCause)
  }

  def nullableContext[C](c: Context[C]): Boolean = {
    c.forall(r => r.nullable)
  }
  def nullableZipper[C](z: Zipper[C]): Boolean = {
    z.exists(c => nullableContext(c))
  }

  def lostCauseZipper[C](z: Zipper[C]): Boolean = {
    z.forall(c => c.lostCause)
  }.ensuring(res => res == getLanguageWitness(z).isEmpty)
  
  def matchZipper[C](z: Zipper[C], input: List[C]): Boolean = {
    if (input.isEmpty) nullableZipper(z) else matchZipper(derivationStepZipper(z, input.head), input.tail)
  }

  // @tailrec
  def matchZipperSequence[C](z: Zipper[C], input: Sequence[C], i: BigInt = 0): Boolean = {
    if i == input.size then nullableZipper(z) else matchZipperSequence(derivationStepZipper(z, input(i)), input, i + 1)
  }

  // @tailrec
  def matchZipperSequenceMem[C](z: Zipper[C], input: Sequence[C], i: BigInt = 0)(using cacheUp: MemoisationZipper.CacheUp[C], cacheDown: MemoisationZipper.CacheDown[C]): Boolean = {
    if i == input.size then nullableZipper(z) else matchZipperSequenceMem(derivationStepZipperMem(z, input(i)), input, i + 1)
  }.ensuring(res => res == matchZipperSequence(z, input, i))

  def prefixMatchZipper[C](z: Zipper[C], input: List[C]): Boolean = {
    if (input.isEmpty) !lostCauseZipper(z) else prefixMatchZipper(derivationStepZipper(z, input.head), input.tail)
  }

  def prefixMatchZipperSequence[C](z: Zipper[C], input: Sequence[C], i: BigInt = 0): Boolean = {
    if (i == input.size) !lostCauseZipper(z) else prefixMatchZipperSequence(derivationStepZipper(z, input(i)), input, i + 1)
  }

  def prefixMatchZipperSequenceMem[C](z: Zipper[C], input: Sequence[C], i: BigInt = 0)(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = {
    if (i == input.size) !lostCauseZipper(z) else prefixMatchZipperSequenceMem(derivationStepZipperMem(z, input(i)), input, i + 1)
  }.ensuring(res => res == prefixMatchZipperSequence(z, input, i))

  // MEMOISED -----------------------------------------------------------------------------------------------------
  def derivationStepZipperUpMem[C](context: Context[C], a: C)(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Zipper[C] = {
    cacheUp.get(context, a) match {
      case Some(res) => res
      case None() => {
        val res: Zipper[C] = context.exprs match {
          case Cons(right, parent) if right.nullable => derivationStepZipperDownMem(right, Context(parent), a) ++ derivationStepZipperUpMem(Context(parent), a)
          case Cons(right, parent) => derivationStepZipperDownMem(right, Context(parent), a)
          case Nil() => Set()
        }
        cacheUp.update(context, a, res)
        res
      }
    }
  }.ensuring(res => res == derivationStepZipperUp(context, a))

  def derivationStepZipperDownMem[C](expr: Regex[C], context: Context[C], a: C)(using cacheDown: CacheDown[C]): Zipper[C] = {
    cacheDown.get(expr, context, a) match {
      case Some(res) => res
      case None() => {
        val res: Zipper[C] = expr match {
          case ElementMatch(c) if c == a => Set(context)
          case Union(rOne, rTwo) => derivationStepZipperDownMem(rOne, context, a) ++ derivationStepZipperDownMem(rTwo, context, a)
          case Concat(rOne, rTwo) if rOne.nullable => derivationStepZipperDownMem(rOne, context.prepend(rTwo), a) ++ derivationStepZipperDownMem(rTwo, context, a)
          case Concat(rOne, rTwo) => derivationStepZipperDownMem(rOne, context.prepend(rTwo), a)
          case Star(rInner) => derivationStepZipperDownMem(rInner, context.prepend(Star(rInner)), a)
          case _ => Set()
        }
        cacheDown.update(expr, context, a, res)
        res
      }
    }
  }.ensuring(res => res == derivationStepZipperDown(expr, context, a))

  @extern
  def derivationStepZipperMem[C](z: Zipper[C], a: C)(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Zipper[C] = {
    def derivUpMem(c: Context[C]): Zipper[C] = derivationStepZipperUpMem(c, a)
    z.flatMap(derivUpMem) // rejected by stainless because of effects in the lambda's body
  }.ensuring(res => res == derivationStepZipper(z, a) && cacheUp.valid && cacheDown.valid)

  @extern
  def derivationStepZipperSimpMem[C](z: Zipper[C], a: C)(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Zipper[C] = {
    def derivUpMem(c: Context[C]): Zipper[C] = derivationStepZipperUpMem(c, a)
    z.flatMap(derivUpMem).filter(c => !c.lostCause) // rejected by stainless because of effects in the lambda's body
  }.ensuring(res => res == derivationStepZipperSimp(z, a))

  def matchZipperMem[C](z: Zipper[C], input: List[C])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = {
    if (input.isEmpty) nullableZipper(z) else matchZipperMem(derivationStepZipperMem(z, input.head), input.tail)
  }.ensuring(res => res == matchZipper(z, input))


  // PROOFS -----------------------------------------------------------------------------------------------------


  // --------- Find Longest Match Zipper ------------------------------

  def findLongestMatchZipperFast[C](z: Zipper[C], input: Sequence[C]): (Sequence[C], Sequence[C]) = {
    val prefixLength = findLongestMatchInnerZipperFast(z, Nil(), 0, input.list, input, input.size)
    input.splitAt(prefixLength)
  }.ensuring (res => (res._1.list, res._2.list) == findLongestMatchZipper(z, input.list) && res._1.list ++ res._2.list == input.list)
  
  def findLongestMatchInnerZipperFast[C](z: Zipper[C], @ghost testedP: List[C], testedPSize: BigInt, @ghost testedSuffix: List[C], totalInput: Sequence[C], totalInputSize: BigInt): BigInt = {
    if (lostCauseZipper(z)) {
      // (Nil[C](), totalInput)
      BigInt(0)
    } else if (testedPSize == totalInputSize) {
      if (nullableZipper(z)) {
        // (testedP, Nil[C]())
        testedPSize
      } else {
        // (Nil[C](), totalInput)
        BigInt(0)
      }
    } else {
      if (nullableZipper(z)) {
        val recursive = findLongestMatchInnerZipperFast(derivationStepZipper(z, totalInput(testedPSize)), testedP ++ List(totalInput(testedPSize)), testedPSize + 1, testedSuffix.tail, totalInput, totalInputSize)
        if (recursive == 0) {
          // (testedP, testedSuffix)
          testedPSize
        } else {
          recursive
        }
      } else {
        findLongestMatchInnerZipperFast(derivationStepZipper(z, totalInput(testedPSize)), testedP ++ List(totalInput(testedPSize)), testedPSize + 1, testedSuffix.tail, totalInput, totalInputSize)
      }
    }
  }.ensuring (res => findLongestMatchInnerZipper(z, testedP, testedPSize, testedSuffix, totalInput.list, totalInputSize)._1.size == res) 

  // ------------------------------------------- MEMOIZATION ----------------------------------------------
  @opaque
  @inlineOnce
  def findLongestMatchZipperFastMem[C](z: Zipper[C], input: Sequence[C])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): (Sequence[C], Sequence[C]) = {
    val prefixLength = findLongestMatchInnerZipperFastMem(cacheUp, cacheDown, z, Nil(), 0, input.list, input, input.size)
    input.splitAt(prefixLength)
  }.ensuring (res => cacheUp.valid && cacheDown.valid && res == findLongestMatchZipperFast(z, input))
  
  @opaque
  @inlineOnce
  def findLongestMatchInnerZipperFastMem[C](cacheUp: CacheUp[C], cacheDown: CacheDown[C], z: Zipper[C], @ghost testedP: List[C], testedPSize: BigInt, @ghost testedSuffix: List[C], totalInput: Sequence[C], totalInputSize: BigInt): BigInt = {
    if (lostCauseZipper(z)) {
      // (Nil[C](), totalInput)
      BigInt(0)
    } else if (testedPSize == totalInputSize) {
      if (nullableZipper(z)) {
        // (testedP, Nil[C]())
        testedPSize
      } else {
        // (Nil[C](), totalInput)
        BigInt(0)
      }
    } else {
      if (nullableZipper(z)) {
        val recursive = findLongestMatchInnerZipperFastMem(cacheUp, cacheDown, derivationStepZipperMem(z, totalInput(testedPSize))(using cacheUp, cacheDown), testedP ++ List(totalInput(testedPSize)), testedPSize + 1, testedSuffix.tail, totalInput, totalInputSize)
        if (recursive == 0) {
          // (testedP, testedSuffix)
          testedPSize
        } else {
          recursive
        }
      } else {
        findLongestMatchInnerZipperFastMem(cacheUp, cacheDown, derivationStepZipperMem(z, totalInput(testedPSize))(using cacheUp, cacheDown), testedP ++ List(totalInput(testedPSize)), testedPSize + 1, testedSuffix.tail, totalInput, totalInputSize)
      }
    }
  }.ensuring (res => cacheUp.valid && cacheDown.valid && res == findLongestMatchInnerZipperFast(z, testedP, testedPSize, testedSuffix, totalInput, totalInputSize))

  // ------------------------------------------- END MEMOIZATION -------------------------------------------
  
  def findLongestMatchZipper[C](z: Zipper[C], input: List[C]): (List[C], List[C]) = {
    findLongestMatchInnerZipper(z, Nil(), 0, input, input, ListUtils.sizeTr(input))
  }.ensuring (res => res._1 ++ res._2 == input)
  
  def findLongestMatchInnerZipper[C](z: Zipper[C], testedP: List[C], testedPSize: BigInt, testedSuffix: List[C], totalInput: List[C], totalInputSize: BigInt): (List[C], List[C]) = {
   
    if (lostCauseZipper(z)) {
      (Nil[C](), totalInput)
    } else if (testedPSize == totalInputSize) {
      if (nullableZipper(z)) {
        (testedP, Nil[C]())
      } else {
        (Nil[C](), totalInput)
      }
    } else {
      val newP = testedP ++ List(testedSuffix.head)
      if (nullableZipper(z)) {
        val recursive = findLongestMatchInnerZipper(derivationStepZipper(z, testedSuffix.head), newP, testedPSize + 1, testedSuffix.tail, totalInput, totalInputSize)
        if (recursive._1.isEmpty) {
          (testedP, testedSuffix)
        } else {
          recursive
        }
      } else {
        findLongestMatchInnerZipper(derivationStepZipper(z, testedSuffix.head), newP, testedPSize + 1, testedSuffix.tail, totalInput, totalInputSize)
      }
    }
  }.ensuring (res => res._1 ++ res._2 == totalInput && (res._1.isEmpty || res._1.size >= testedP.size)) 

  def findLongestMatchZipperFastV2[C](z: Zipper[C], input: Sequence[C], totalInput: Sequence[C]): (Sequence[C], Sequence[C]) = {
    val totalInputSize = totalInput.size
    val from = totalInputSize - input.size
    val prefixLength = findLongestMatchInnerZipperFastV2(z, from, totalInput, totalInputSize)

    input.splitAt(prefixLength)
  }.ensuring (res => res._1.list ++ res._2.list == input.list)
  
  /**
   * Slightly different semantic to enable memoization of the findLongMatch process
   * The idea is to return the length of the longest match possible from the current position
   * NOT from the beginning.
   * This way, we will always pass the entire input string, and will be able to memoize recursive calls and actually hit
   * 
   * CALLS TO THIS METHOD WILL BE MEMOIZED!!
   * 
   * Note: this method takes the size as parameter to avoid recomputing it at each call
   * 
   */
  def findLongestMatchInnerZipperFastV2[C](z: Zipper[C], from: BigInt, totalInput: Sequence[C], totalInputSize: BigInt): BigInt = {
    
    if ((from == totalInputSize) || lostCauseZipper(z)) { 
      // We cannot match anything from here
      // so we return a size of match of 0
      // OR we are at the end of the input so can match 0 more characters
      BigInt(0)
    } else {
      // We call recursively starting on the next character and see how many characters we can match from there
      val derivedZ = derivationStepZipper(z, totalInput(from))
      val recursive = findLongestMatchInnerZipperFastV2(derivedZ, from + 1, totalInput, totalInputSize) 
      if (recursive > 0) {
        // Whatever is the current derived state, we can match more characters from there so we can match 1 more character from here
        1 + recursive
      } else {
        // Here we can match nothing starting at from + 1, so if we can match the current character, we can match 1 character from here, otherwise 0
        if nullableZipper(derivedZ) then BigInt(1) else BigInt(0)
      }
    }
  }.ensuring (res => res >= 0 && res <= (totalInputSize - from))

  // Memoized ----------------------------------------------------------------------------------------------------------------------------------------------------------
  def findLongestMatchZipperFastV2Mem[C](z: Zipper[C], input: Sequence[C], totalInput: Sequence[C])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C], cacheFindLongestMatch: CacheFindLongestMatch[C]): (Sequence[C], Sequence[C]) = {
    val totalInputSize = totalInput.size
    val from = totalInputSize - input.size
    val prefixLength = findLongestMatchInnerZipperFastV2Mem(z, from, totalInput, totalInputSize)

    input.splitAt(prefixLength)
  }.ensuring (res => res == findLongestMatchZipperFastV2(z, input, totalInput) && cacheUp.valid && cacheDown.valid &&cacheFindLongestMatch.valid && cacheFindLongestMatch.totalInput == totalInput )
  
  def findLongestMatchZipperFastV2MemOnlyDeriv[C](z: Zipper[C], input: Sequence[C], totalInput: Sequence[C])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): (Sequence[C], Sequence[C]) = {
    val totalInputSize = totalInput.size
    val from = totalInputSize - input.size
    val prefixLength = findLongestMatchInnerZipperFastV2MemOnlyDeriv(z, from, totalInput, totalInputSize)

    input.splitAt(prefixLength)
  }.ensuring (res => res == findLongestMatchZipperFastV2(z, input, totalInput) && cacheUp.valid && cacheDown.valid)
  

  def findLongestMatchInnerZipperFastV2Mem[C](z: Zipper[C], from: BigInt, totalInput: Sequence[C], totalInputSize: BigInt)(using cacheUp: CacheUp[C], cacheDown: CacheDown[C], cacheFindLongestMatch: CacheFindLongestMatch[C]): BigInt = {

    cacheFindLongestMatch.get(z, from) match {
      case Some(cachedResult) => cachedResult
      case None() => {
        val result = 
          if ((from == totalInputSize) || lostCauseZipper(z)) { 
            // We cannot match anything from here
            // so we return a size of match of 0
            // OR we are at the end of the input so can match 0 more characters
            BigInt(0)
          } else {
            // We call recursively starting on the next character and see how many characters we can match from there
            val derivedZ = derivationStepZipperMem(z, totalInput(from))
            val recursive = findLongestMatchInnerZipperFastV2Mem(derivedZ, from + 1, totalInput, totalInputSize) 
            if (recursive > 0) {
              // Whatever is the current derived state, we can match more characters from there so we can match 1 more character from here
              1 + recursive
            } else {
              // Here we can match nothing starting at from + 1, so if we can match the current character, we can match 1 character from here, otherwise 0
              if nullableZipper(derivedZ) then BigInt(1) else BigInt(0)
            }
          }
        cacheFindLongestMatch.update(z, from, result, totalInput)
        result
      }
    }
  }.ensuring (res => res == findLongestMatchInnerZipperFastV2(z, from, totalInput, totalInputSize) && cacheUp.valid && cacheDown.valid &&cacheFindLongestMatch.valid && cacheFindLongestMatch.totalInput == totalInput)

  @opaque
  @inlineOnce
  def findLongestMatchInnerZipperFastV2MemOnlyDeriv[C](z: Zipper[C], from: BigInt, totalInput: Sequence[C], totalInputSize: BigInt)(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): BigInt = {

    if ((from == totalInputSize) || lostCauseZipper(z)) { 
      // We cannot match anything from here
      // so we return a size of match of 0
      // OR we are at the end of the input so can match 0 more characters
      BigInt(0)
    } else {
      // We call recursively starting on the next character and see how many characters we can match from there
      val derivedZ = derivationStepZipperMem(z, totalInput(from))
      val recursive = findLongestMatchInnerZipperFastV2MemOnlyDeriv(derivedZ, from + 1, totalInput, totalInputSize) 
      if (recursive > 0) {
        // Whatever is the current derived state, we can match more characters from there so we can match 1 more character from here
        1 + recursive
      } else {
        // Here we can match nothing starting at from + 1, so if we can match the current character, we can match 1 character from here, otherwise 0
        if nullableZipper(derivedZ) then BigInt(1) else BigInt(0)
      }
    }
  }.ensuring (res => res == findLongestMatchInnerZipperFastV2(z, from, totalInput, totalInputSize) && cacheUp.valid && cacheDown.valid)

  // ------------------------------------------- END MEMOIZATION -------------------------------------------
  // ------------------------------------------- Tail recursive -------------------------------------------
  /** 
   * Returns the furthest position where the zipper is nullable when consuming input from 'from' to the end of totalInput
   * Which is equivalent to the length of the longest match starting from 0, minus 1
   * Meaning: if it returns i, it means that the z was nullable after consuming input from 'from' to i included
   * 
   * For the proof we need:
   * - a way to relate z to derivations from z
   * - to prove that no derivations of z are nullable after lastNullablePos
   * 
   * The the longest prefix length starting at i is lastNullablePos - i + 1
   * 
   * We will also prove that for findLongestMatchV2Rec, if the result is 0, then there is no nullable derivation from z consuming the input from 'from' to the end;
   * and that if the result is > 0, then there is at least one nullable derivation from z consuming the input from 'from'
   * 
   */
  // @tailrec
  def furthestNullablePosition[C](z: Zipper[C], from: BigInt, totalInput: Sequence[C], totalInputSize: BigInt, lastNullablePos: BigInt): BigInt = {

    if (from == totalInputSize || lostCauseZipper(z)) {
      lastNullablePos
    } else {
      val derivedZ = derivationStepZipper(z, totalInput(from))
      val newLastNullable = if (nullableZipper(derivedZ)) from else lastNullablePos
      furthestNullablePosition(derivedZ, from + 1, totalInput, totalInputSize, newLastNullable)
    }
  }.ensuring(res => res >= -1 && res < totalInputSize && res >= lastNullablePos && (res == lastNullablePos || res >= from))

  def findLongestMatchZipperSequenceV3[C](z: Zipper[C], input: Sequence[C], totalInput: Sequence[C]): (Sequence[C], Sequence[C]) = {
    val totalInputSize = totalInput.size
    val from = totalInputSize - input.size
    val lastNullablePos = furthestNullablePosition(z, from, totalInput, totalInputSize, if nullableZipper(z) then from - 1 else -1)
    val prefixLength: BigInt = lastNullablePos - from + 1
    if (prefixLength < 0) {
      input.splitAt(0)
    } else {  
      input.splitAt(prefixLength)
    }
  }.ensuring (res => res._1.list ++ res._2.list == input.list)

  // ------------------------------------------- Tailrec MEMOIZATION -------------------------------------------

  case class StackFrame[C](z: Zipper[C], from: BigInt, lastNullablePos: BigInt, @ghost res: BigInt, @ghost totalInput: Sequence[C]):

  end StackFrame

  type Stack[C] = List[StackFrame[C]]

  def furthestNullablePositionStackMem[C](z: Zipper[C], from: BigInt, totalInput: Sequence[C], totalInputSize: BigInt, lastNullablePos: BigInt, stack: Stack[C] = Nil[StackFrame[C]]())(using cacheUp: CacheUp[C], cacheDown: CacheDown[C], cacheFurthestNullable: CacheFurthestNullable[C]): (BigInt, Stack[C]) = {



    cacheFurthestNullable.get(z, from, lastNullablePos) match {
      case Some(cachedRes) => {
        (cachedRes, Nil())
      }
      case None() => {
        if (from == totalInputSize || lostCauseZipper(z)) {
          (lastNullablePos, stack)
        } else {
          val derivedZ = derivationStepZipperMem(z, totalInput(from))
          val newLastNullable = if (nullableZipper(derivedZ)) from else lastNullablePos
          val stackFrame = StackFrame(z, from, lastNullablePos, currentRes, totalInput)
          val newStack = Cons(stackFrame, stack)
          furthestNullablePositionStackMem(derivedZ, from + 1, totalInput, totalInputSize, newLastNullable, newStack)
        }
      }
    }
  }.ensuring(res => res._1 == furthestNullablePosition(z, from, totalInput, totalInputSize, lastNullablePos)
                  && res._2.forall(frame => frame.res == res._1) && 
                  cacheUp.valid && cacheDown.valid && cacheFurthestNullable.valid && cacheFurthestNullable.totalInput == totalInput &&
                  res._2.forall(frame => frame.totalInput == totalInput))


    def fillUpCache[C](stack: Stack[C], totalInput: Sequence[C], totalInputSize: BigInt, res: BigInt, counter: BigInt = 0)(using cacheFurthestNullable: CacheFurthestNullable[C]): Unit = {
    stack match {
      case Nil() => ()
      case Cons(head, tail) => {
        if (totalInputSize > FURTHEST_NULLABLE_CACHE_THRESHOLD && counter % FURTHEST_NULLABLE_CACHE_K != 0) {
          // Skip 9/10 updates to avoid enormous cache on large inputs
        } else {
          cacheFurthestNullable.lemmaInvariant()
          cacheFurthestNullable.update(head.z, head.from, head.lastNullablePos, res, totalInput)
        }
        fillUpCache(tail, totalInput, totalInputSize, res, counter + 1)
      }
    }
  }.ensuring(_ => cacheFurthestNullable.valid && cacheFurthestNullable.totalInput == totalInput)


  def findLongestMatchZipperSequenceV3Mem[C](z: Zipper[C], input: Sequence[C], totalInput: Sequence[C])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C], cacheFurthestNullable: CacheFurthestNullable[C]): (Sequence[C], Sequence[C]) = {
    val totalInputSize = totalInput.size
    val from = totalInputSize - input.size
    val (res, stack) = furthestNullablePositionStackMem(z, from, totalInput, totalInputSize, if nullableZipper(z) then from - 1 else -1)
    val prefixLength: BigInt = res - from + 1
    
    fillUpCache(stack, totalInput, totalInputSize, res)
    if (prefixLength < 0) {
      input.splitAt(0)
    } else {  
      input.splitAt(prefixLength)
    }
  }.ensuring (res => res._1.list ++ res._2.list == input.list)

  // ------------------------------------------- END Tailrec MEMOIZATION -------------------------------------------

  // ----------------------------- Find Longest Match Zipper Theorems ------------------------------

}