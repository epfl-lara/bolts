import stainless.*
import stainless.lang.{ghost => ghostExpr, *}
import stainless.collection.*
import stainless.annotation.*
import stainless.proof.*
import stainless.math.*
import StaticChecks.*
import utils.*
object bitstream {
/*
   The structure of the module is as follows:
    I. BitStream class definition with invariants and helper methods
    II. EncodeInteger32InvertibilityTheorem showing that encoding and decoding
       an integer gives back the same integer
    III. Definitions of 32 bit encoding and decoding functions at a high level
    IV. functions for encoding/decoding bytes, 64 bit Longs; auxiliary lemmas
*/

  // -----------------------------------------------------------------------------------------------
  // Part I: BitStream class definition with invariants and helper methods
  // -----------------------------------------------------------------------------------------------

  case class BitStream(
    var buf: Array[Byte],
    var currentByte: Int,
    var currentBit: Int,
  ) { // all BisStream instances satisfy the following:
    require(0 <= currentByte && currentByte <= buf.length)
    require(0 <= currentBit && currentBit <= 7)
    require(currentByte.toLong * 8 + currentBit.toLong <= 8 * buf.length.toLong)

    def bitIndex: Long = {
      currentByte.toLong * 8 + currentBit.toLong
    }.ensuring(res => 0 <= res && res <= 8 * buf.length.toLong)

    def moveOffset(diffInBits: Long): Unit = {
      val res = bitIndex + diffInBits
      require(0 <= res && res <= 8 * buf.length.toLong)
      val nbBytes = (diffInBits / 8).toInt
      val nbBits = (diffInBits % 8).toInt
      currentByte += nbBytes
      if (currentBit + nbBits < 0) {
        currentByte -= 1
        currentBit = 8 + nbBits + currentBit
      } else if (currentBit + nbBits >= 8) {
        currentBit = currentBit + nbBits - 8
        currentByte += 1
      } else {
        currentBit += nbBits
      }
    }.ensuring(_ => old(this).bitIndex + diffInBits == bitIndex)
  } // BitStream class

  // ----------------------------------------------------------------------------------------------- 
  // Part II: EncodeInteger32InvertibilityTheorem showing that encoding and decoding
  // an integer gives back the same integer.
  // -----------------------------------------------------------------------------------------------

  // There are 2^32 possible input values for `i` and infinitely for pBitStrm
  // The proof shows the property .holds for all of them.
  def BitStream_EncodeInteger32InvertibilityTheorem(pBitStrm: BitStream, i: Int): Unit = {
    // For all streams with enough buffer space, and an arbitrary Int integer i:
    require(pBitStrm.bitIndex + 32 <= pBitStrm.buf.length.toLong * 8)
    // 1. encoding i and writing it to buffer
    BitStream_EncodeInteger32(pBitStrm, i)
    val endPosition = pBitStrm.bitIndex
    // 2. rewinding by 32 bits
    pBitStrm.moveOffset(-32)
    // 3. reading back the encoded value
    val read = BitStream_DecodeInteger32(pBitStrm)
    // 4.
    //  a. advances the BitStream by 32 bits so we get back to the end position
    assert(pBitStrm.bitIndex == endPosition)
    //  b. gives the same int i, all 32 bits of it, regardless of the initial state of the BitStream
    assert(read == i) // stainless checks that this assertion will always hold
  }

  // -----------------------------------------------------------------------------------------------
  // Part III: Definitions of 32 bit encoding and decoding functions at a high level
  // -----------------------------------------------------------------------------------------------

  // no need to write the specification here, Stainless looks at the body 
  def BitStream_DecodeInteger32(pBitStrm: BitStream): Int = {
    require(pBitStrm.bitIndex + 32 <= pBitStrm.buf.length.toLong * 8)
    val b1 = BitStream_ReadByte(pBitStrm)
    val b2 = BitStream_ReadByte(pBitStrm)
    val b3 = BitStream_ReadByte(pBitStrm)
    val b4 = BitStream_ReadByte(pBitStrm)
    (b1 << 24) | ((b2 << 16) & 0xFF0000) | 
    ((b3 << 8) & 0xFF00) | (b4 & 0xFF)      // combine 4 bytes into a 32-bit Int
  }

  // an immutable (mathematical) version of the above, returns a *copy* of the input stream
  @ghost @pure
  def BitStream_DecodeInteger32Pure(pBitStrm: BitStream): (BitStream, Int) = {
    require(pBitStrm.bitIndex + 32 <= pBitStrm.buf.length.toLong * 8)
    val cpy = snapshot(pBitStrm)
    val i = BitStream_DecodeInteger32(cpy)
    (cpy, i)
  }

  // Executable function for encoding, with specification relative to decoding
  @opaque @inlineOnce
  def BitStream_EncodeInteger32(pBitStrm: BitStream, i: Int): Unit = {
    require(pBitStrm.bitIndex + 32 <= pBitStrm.buf.length.toLong * 8)

    // ghost values do not appear at runtime, they are only used for specification
    @ghost val pBitStrm1 = snapshot(pBitStrm)    
    val v1 = (i >> 24).toByte
    BitStream_AppendByte(pBitStrm, v1)

    @ghost val pBitStrm2 = snapshot(pBitStrm)
    val v2 = (i >> 16).toByte
    BitStream_AppendByte(pBitStrm, v2)

    @ghost val pBitStrm3 = snapshot(pBitStrm)
    val v3 = (i >> 8).toByte
    BitStream_AppendByte(pBitStrm, v3)

    @ghost val pBitStrm4 = snapshot(pBitStrm)
    val v4 = i.toByte
    BitStream_AppendByte(pBitStrm, v4)

    ghostExpr { // specification only: nothing in this block executes
      // 1 to end is a prefix
      validTransitiveLemma(pBitStrm1, pBitStrm2, pBitStrm3)
      validTransitiveLemma(pBitStrm1, pBitStrm3, pBitStrm4)
      validTransitiveLemma(pBitStrm1, pBitStrm4, pBitStrm)

      // Do the same for 2 and 3, these are needed for readBytePrefixLemma
      validTransitiveLemma(pBitStrm2, pBitStrm3, pBitStrm4)
      validTransitiveLemma(pBitStrm2, pBitStrm4, pBitStrm)
      validTransitiveLemma(pBitStrm3, pBitStrm4, pBitStrm)

      // Reading back the first byte gives the same result whether we are reading from pBitStrm2 or the end result pBitStream
      val pBitStrm2Reset = BitStream(snapshot(pBitStrm2.buf), pBitStrm1.currentByte, pBitStrm1.currentBit)
      readBytePrefixLemma(pBitStrm2Reset, pBitStrm)
      // Ditto for 2nd and 3rd byte
      val pBitStrm3Reset = BitStream(snapshot(pBitStrm3.buf), pBitStrm2.currentByte, pBitStrm2.currentBit)
      readBytePrefixLemma(pBitStrm3Reset, pBitStrm)
      val pBitStrm4Reset = BitStream(snapshot(pBitStrm4.buf), pBitStrm3.currentByte, pBitStrm3.currentBit)
      readBytePrefixLemma(pBitStrm4Reset, pBitStrm)
      // 4th is trivial
    }
  }.ensuring { _ =>
    val w1 = old(pBitStrm)
    val w5 = pBitStrm
    w5.bitIndex == w1.bitIndex + 32 && isValidPair(w1, w5) && {
      val (r1, r5) = reader(w1, w5)
      val (r5Got, iGot) = BitStream_DecodeInteger32Pure(r1) // read back the value, using pure version
      iGot == i && r5Got == r5 // read back the same value i we wrote
    }
  } // BitStream_EncodeInteger32

  // -----------------------------------------------------------------------------------------------
  // Part IV: Everything else: 
  //    lemmas
  //    encoding/decoding bytes
  //    composing encoding/decoding for 32 bit numbers into that for 64 bit ones
  // -----------------------------------------------------------------------------------------------

  def isPrefix(b1: BitStream, b2: BitStream): Boolean = {
    b1.buf.length <= b2.buf.length &&
    b1.bitIndex <= b2.bitIndex &&
    (b1.buf.length != 0) ==> arrayBitPrefix(b1.buf, b2.buf, 0, b1.bitIndex)
  }

  def isValidPair(w1: BitStream, w2: BitStream): Boolean = isPrefix(w1, w2)

  @ghost
  def reader(w1: BitStream, w2: BitStream): (BitStream, BitStream) = {
    require(isValidPair(w1, w2))
    val r1 = BitStream(snapshot(w2.buf), w1.currentByte, w1.currentBit)
    val r2 = BitStream(snapshot(w2.buf), w2.currentByte, w2.currentBit)
    (r1, r2)
  }

  @opaque @inlineOnce
  def validTransitiveLemma(w1: BitStream, w2: BitStream, w3: BitStream): Unit = {
    require(isValidPair(w1, w2))
    require(isValidPair(w2, w3))
    arrayPrefixTransitive(w1.buf, w2.buf, w3.buf, 0, w1.currentByte, w2.currentByte)
    if (w1.currentByte < w1.buf.length) {
      if (w1.currentByte < w2.currentByte) {
        arrayPrefixImpliesEq(w2.buf, w3.buf, 0, w1.currentByte, w2.currentByte)
        assert(w2.buf(w1.currentByte) == w3.buf(w1.currentByte))
        check(bytePrefix(w1.buf(w1.currentByte), w3.buf(w1.currentByte), 0, w1.currentBit))
      } else {
        assert(w1.currentBit <= w2.currentBit)
        check(bytePrefix(w1.buf(w1.currentByte), w3.buf(w1.currentByte), 0, w1.currentBit))
      }
    }
    assert(((w1.currentByte < w1.buf.length) ==> bytePrefix(w1.buf(w1.currentByte), w3.buf(w1.currentByte), 0, w1.currentBit)))
    check(isValidPair(w1, w3))
  }.ensuring { _ =>
    isValidPair(w1, w3)
  }

  ///////////////////////////////////////////////////////////////////

  @opaque @inlineOnce
  def BitStream_AppendBitOne(pBitStrm: BitStream): Unit = {
    require(pBitStrm.bitIndex + 1 <= pBitStrm.buf.length.toLong * 8)
    @ghost val oldpBitStrm = snapshot(pBitStrm)

    val newB = (pBitStrm.buf(pBitStrm.currentByte) | masks(pBitStrm.currentBit)).toByte
    pBitStrm.buf(pBitStrm.currentByte) = newB

    ghostExpr {
      arrayUpdatedAtPrefixLemma(oldpBitStrm.buf, pBitStrm.currentByte, newB)
    }

    if pBitStrm.currentBit < 7 then
      pBitStrm.currentBit += 1
    else
      pBitStrm.currentBit = 0
      pBitStrm.currentByte += 1

  }.ensuring { _ =>
    val w1 = old(pBitStrm)
    val w2 = pBitStrm
    w2.bitIndex == w1.bitIndex + 1 && isValidPair(w1, w2) && {
      val (r1, r2) = reader(w1, w2)
      val (r2Got, bitGot) = BitStream_ReadBitPure(r1)
      bitGot == true && r2Got == r2
    }
  }

  def BitStream_ReadBit(pBitStrm: BitStream): Boolean = {
    require(pBitStrm.bitIndex + 1 <= pBitStrm.buf.length.toLong * 8)
    val ret = (pBitStrm.buf(pBitStrm.currentByte) & masks(pBitStrm.currentBit)) != 0

    if pBitStrm.currentBit < 7 then
      pBitStrm.currentBit += 1
    else
      pBitStrm.currentBit = 0
      pBitStrm.currentByte += 1

    ret
  }

  @ghost @pure
  def BitStream_ReadBitPure(pBitStrm: BitStream): (BitStream, Boolean) = {
    require(pBitStrm.bitIndex + 1 <= pBitStrm.buf.length.toLong * 8)
    val cpy = snapshot(pBitStrm)
    val b = BitStream_ReadBit(cpy)
    (cpy, b)
  }

  @ghost @opaque @inlineOnce
  def readBitPrefixLemma(pBitStrm1: BitStream, pBitStrm2: BitStream): Unit = {
    require(pBitStrm1.buf.length <= pBitStrm2.buf.length)
    require(pBitStrm1.bitIndex + 7 < pBitStrm1.buf.length.toLong * 8)
    require(pBitStrm1.bitIndex + 8 <= pBitStrm2.bitIndex)
    require(arrayBitPrefix(
      pBitStrm1.buf,
      pBitStrm2.buf,
      0,
      pBitStrm1.bitIndex + 1
    ))

    val pBitStrm2Reset = BitStream(snapshot(pBitStrm2.buf), pBitStrm1.currentByte, pBitStrm1.currentBit)
    val (pBitStrm1Res, b1) = BitStream_ReadBitPure(pBitStrm1)
    val (pBitStrm2Res, b2) = BitStream_ReadBitPure(pBitStrm2Reset)

    {
      if (pBitStrm1.currentBit == 7) {
        val end = (pBitStrm1.bitIndex / 8 + 1).toInt
        arrayPrefixImpliesEq(pBitStrm1.buf, pBitStrm2.buf, 0, pBitStrm1.currentByte, end)
      }
    }.ensuring { _ =>
      pBitStrm1Res.bitIndex == pBitStrm2Res.bitIndex && b1 == b2
    }
  }

  def BitStream_BitStream_AppendBitOneLemma(pBitStrm: BitStream): Boolean = {
    require(pBitStrm.bitIndex + 1 <= pBitStrm.buf.length.toLong * 8)
    BitStream_AppendBitOne(pBitStrm)
    val endPosition = pBitStrm.bitIndex
    // Rewind
    pBitStrm.moveOffset(-1)
    val read = BitStream_ReadBit(pBitStrm)
    read == true && pBitStrm.bitIndex == endPosition
  }..holds

  ///////////////////////////////////////////////////////////////////

  def BitStream_ReadByte(pBitStrm: BitStream): Byte = {
    require(pBitStrm.bitIndex + 8 <= pBitStrm.buf.length.toLong * 8)
    val cb = pBitStrm.currentBit.toByte
    val ncb = (8 - cb).toByte
    var v = (pBitStrm.buf(pBitStrm.currentByte) << cb).toByte
    pBitStrm.currentByte += 1

    if cb > 0 then
      v = (v | (pBitStrm.buf(pBitStrm.currentByte) & 0xFF) >> ncb).toByte
    v
  }

  @ghost @pure
  def BitStream_ReadBytePure(pBitStrm: BitStream): (BitStream, Byte) = {
    require(pBitStrm.bitIndex + 8 <= pBitStrm.buf.length.toLong * 8)
    val cpy = snapshot(pBitStrm)
    val b = BitStream_ReadByte(cpy)
    (cpy, b)
  }

  @ghost @opaque @inlineOnce
  def readBytePrefixLemma(pBitStrm1: BitStream, pBitStrm2: BitStream): Unit = {
    require(pBitStrm1.buf.length <= pBitStrm2.buf.length)
    require(pBitStrm1.bitIndex + 7 < pBitStrm1.buf.length.toLong * 8)
    require(pBitStrm1.bitIndex + 8 <= pBitStrm2.bitIndex)
    require(arrayBitPrefix(
      pBitStrm1.buf,
      pBitStrm2.buf,
      0,
      pBitStrm1.bitIndex + 8
    ))

    val pBitStrm2Reset = BitStream(snapshot(pBitStrm2.buf), pBitStrm1.currentByte, pBitStrm1.currentBit)
    val (pBitStrm1Res, b1) = BitStream_ReadBytePure(pBitStrm1)
    val (pBitStrm2Res, b2) = BitStream_ReadBytePure(pBitStrm2Reset)

    {
      val end = (pBitStrm1.bitIndex / 8 + 1).toInt
      arrayPrefixImpliesEq(pBitStrm1.buf, pBitStrm2.buf, 0, pBitStrm1.currentByte, end)
    }.ensuring { _ =>
      pBitStrm1Res.bitIndex == pBitStrm2Res.bitIndex && b1 == b2
    }
  }

  @opaque @inlineOnce
  def BitStream_AppendByte(pBitStrm: BitStream, v: Byte): Unit = {
    require(pBitStrm.bitIndex + 8 <= pBitStrm.buf.length.toLong * 8)
    @ghost val oldpBitStrm = snapshot(pBitStrm)
    val cb = pBitStrm.currentBit.toByte
    val ncb = (8 - cb).toByte
    var mask = (~masksb(ncb)).toByte

    pBitStrm.buf(pBitStrm.currentByte) = (pBitStrm.buf(pBitStrm.currentByte) & mask).toByte
    pBitStrm.buf(pBitStrm.currentByte) = (pBitStrm.buf(pBitStrm.currentByte) | ((v & 0xFF) >> cb)).toByte
    pBitStrm.currentByte += 1

    ghostExpr {
      check(
        (oldpBitStrm.currentByte < oldpBitStrm.buf.length) ==>
          bytePrefix(
            oldpBitStrm.buf(oldpBitStrm.currentByte),
            pBitStrm.buf(oldpBitStrm.currentByte),
            0, oldpBitStrm.currentBit))
    }
    @ghost val old2pBitStrm = snapshot(pBitStrm)

    if cb > 0 then
      mask = (~mask).toByte
      pBitStrm.buf(pBitStrm.currentByte) = (pBitStrm.buf(pBitStrm.currentByte) & mask).toByte
      pBitStrm.buf(pBitStrm.currentByte) = (pBitStrm.buf(pBitStrm.currentByte) | (v << ncb)).toByte

    ghostExpr {
      arrayUpdatedAtPrefixLemma(oldpBitStrm.buf, pBitStrm.currentByte - 1, pBitStrm.buf(pBitStrm.currentByte - 1))
      assert(arrayPrefix(oldpBitStrm.buf, old2pBitStrm.buf, 0, pBitStrm.currentByte - 1))

      if (cb > 0) {
        arrayUpdatedAtPrefixLemma(oldpBitStrm.buf, pBitStrm.currentByte, pBitStrm.buf(pBitStrm.currentByte))
        arrayUpdatedAtPrefixLemma(old2pBitStrm.buf, pBitStrm.currentByte, pBitStrm.buf(pBitStrm.currentByte))
        arrayPrefixTransitive(
          oldpBitStrm.buf,
          old2pBitStrm.buf,
          pBitStrm.buf,
          0, pBitStrm.currentByte - 1, pBitStrm.currentByte
        )
        check(arrayPrefix(
          oldpBitStrm.buf,
          pBitStrm.buf,
          0,
          oldpBitStrm.currentByte
        ))
      } else {
        check(arrayPrefix(
          oldpBitStrm.buf,
          pBitStrm.buf,
          0,
          oldpBitStrm.currentByte
        ))
      }
    }
  }.ensuring { _ =>
    val w1 = old(pBitStrm)
    val w2 = pBitStrm
    w2.bitIndex == w1.bitIndex + 8 && isValidPair(w1, w2) && {
      val (r1, r2) = reader(w1, w2)
      val (r2Got, vGot) = BitStream_ReadBytePure(r1)
      vGot == v && r2Got == r2
    }
  }

  def BitStream_AppendByteInvertibilityLemma(pBitStrm: BitStream, b: Byte): Boolean = {
    require(pBitStrm.bitIndex + 8 <= pBitStrm.buf.length.toLong * 8)
    BitStream_AppendByte(pBitStrm, b)
    val endPosition = pBitStrm.bitIndex
    // Rewind
    pBitStrm.moveOffset(-8)
    val read = BitStream_ReadByte(pBitStrm)
    read == b && pBitStrm.bitIndex == endPosition
  }..holds

  ///////////////////////////////////////////////////////////////////

  def BitStream_DecodeInteger16(pBitStrm: BitStream): Short = {
    require(pBitStrm.bitIndex + 16 <= pBitStrm.buf.length.toLong * 8)
    val b1 = BitStream_ReadByte(pBitStrm)
    val b2 = BitStream_ReadByte(pBitStrm)
    ((((b1 << 8) & 0xFF00) | (b2 & 0xFF)) & 0xFFFF).toShort
  }

  @ghost @pure
  def BitStream_DecodeInteger16Pure(pBitStrm: BitStream): (BitStream, Short) = {
    require(pBitStrm.bitIndex + 16 <= pBitStrm.buf.length.toLong * 8)
    val cpy = snapshot(pBitStrm)
    val l = BitStream_DecodeInteger16(cpy)
    (cpy, l)
  }

  @ghost @opaque @inlineOnce
  def decodeInt16PrefixLemma(pBitStrm1: BitStream, pBitStrm2: BitStream): Unit = {
    require(pBitStrm1.buf.length <= pBitStrm2.buf.length)
    require(pBitStrm1.bitIndex + 16 <= pBitStrm1.buf.length.toLong * 8)
    require(pBitStrm1.bitIndex + 16 <= pBitStrm2.bitIndex)
    require(arrayBitPrefix(
      pBitStrm1.buf,
      pBitStrm2.buf,
      0,
      pBitStrm1.bitIndex + 16
    ))

    val pBitStrm2Reset = BitStream(snapshot(pBitStrm2.buf), pBitStrm1.currentByte, pBitStrm1.currentBit)
    val (pBitStrm1Res, i1) = BitStream_DecodeInteger16Pure(pBitStrm1)
    val (pBitStrm2Res, i2) = BitStream_DecodeInteger16Pure(pBitStrm2Reset)

    {
      val end = (pBitStrm1.bitIndex / 8 + 2).toInt
      arrayPrefixImpliesEq(pBitStrm1.buf, pBitStrm2.buf, 0, pBitStrm1.currentByte, end)
      arrayPrefixImpliesEq(pBitStrm1.buf, pBitStrm2.buf, 0, pBitStrm1.currentByte + 1, end)
    }.ensuring { _ =>
      pBitStrm1Res.bitIndex == pBitStrm2Res.bitIndex && i1 == i2
    }
  }

  @opaque @inlineOnce
  def BitStream_EncodeInteger16(pBitStrm: BitStream, i: Short): Unit = {
    require(pBitStrm.bitIndex + 16 <= pBitStrm.buf.length.toLong * 8)

    val v1 = (i >> 8).toByte
    val v2 = i.toByte
    @ghost val pBitStrm1 = snapshot(pBitStrm)
    BitStream_AppendByte(pBitStrm, v1)
    @ghost val pBitStrm2 = snapshot(pBitStrm)
    BitStream_AppendByte(pBitStrm, v2)

    ghostExpr {
      // For isValidPair
      validTransitiveLemma(pBitStrm1, pBitStrm2, pBitStrm)
      // Reading back the first byte gives the same result whether we are reading from pBitStrm2 or the end result pBitStream
      val pBitStrm2Reset = BitStream(snapshot(pBitStrm2.buf), pBitStrm1.currentByte, pBitStrm1.currentBit)
      readBytePrefixLemma(pBitStrm2Reset, pBitStrm)
    }
  }.ensuring { _ =>
    val w1 = old(pBitStrm)
    val w3 = pBitStrm
    w3.bitIndex == w1.bitIndex + 16 && isValidPair(w1, w3) && {
      val (r1, r3) = reader(w1, w3)
      val (r3Got, iGot) = BitStream_DecodeInteger16Pure(r1)
      iGot == i && r3Got == r3
    }
  }

  def BitStream_EncodeInteger16InvertibilityLemma(pBitStrm: BitStream, i: Short): Boolean = {
    require(pBitStrm.bitIndex + 16 <= pBitStrm.buf.length.toLong * 8)
    BitStream_EncodeInteger16(pBitStrm, i)
    val endPosition = pBitStrm.bitIndex
    // Rewind
    pBitStrm.moveOffset(-16)
    val read = BitStream_DecodeInteger16(pBitStrm)
    read == i && pBitStrm.bitIndex == endPosition
  }..holds

  ///////////////////////////////////////////////////////////////////

  @ghost @opaque @inlineOnce
  def decodeInt32PrefixLemma(pBitStrm1: BitStream, pBitStrm2: BitStream): Unit = {
    require(pBitStrm1.buf.length <= pBitStrm2.buf.length)
    require(pBitStrm1.bitIndex + 32 <= pBitStrm1.buf.length.toLong * 8)
    require(pBitStrm1.bitIndex + 32 <= pBitStrm2.bitIndex)
    require(arrayBitPrefix(
      pBitStrm1.buf,
      pBitStrm2.buf,
      0,
      pBitStrm1.bitIndex + 32
    ))
    val pBitStrm2Reset = BitStream(snapshot(pBitStrm2.buf), pBitStrm1.currentByte, pBitStrm1.currentBit)
    val (pBitStrm1Res, i1) = BitStream_DecodeInteger32Pure(pBitStrm1)
    val (pBitStrm2Res, i2) = BitStream_DecodeInteger32Pure(pBitStrm2Reset)

    {
      val end = (pBitStrm1.bitIndex / 8 + 4).toInt
      arrayPrefixImpliesEq(pBitStrm1.buf, pBitStrm2.buf, 0, pBitStrm1.currentByte, end)
      arrayPrefixImpliesEq(pBitStrm1.buf, pBitStrm2.buf, 0, pBitStrm1.currentByte + 1, end)
      arrayPrefixImpliesEq(pBitStrm1.buf, pBitStrm2.buf, 0, pBitStrm1.currentByte + 2, end)
      arrayPrefixImpliesEq(pBitStrm1.buf, pBitStrm2.buf, 0, pBitStrm1.currentByte + 3, end)
    }.ensuring { _ =>
      pBitStrm1Res.bitIndex == pBitStrm2Res.bitIndex && i1 == i2
    }
  }


  ///////////////////////////////////////////////////////////////////

  def BitStream_DecodeInteger64(pBitStrm: BitStream): Long = {
    require(pBitStrm.bitIndex + 64 <= pBitStrm.buf.length.toLong * 8)
    val i1 = BitStream_DecodeInteger32(pBitStrm)
    val i2 = BitStream_DecodeInteger32(pBitStrm)
    (i1.toLong << 32) | (i2.toLong & 0xFFFFFFFFL)
  }

  @ghost @pure
  def BitStream_DecodeInteger64Pure(pBitStrm: BitStream): (BitStream, Long) = {
    require(pBitStrm.bitIndex + 64 <= pBitStrm.buf.length.toLong * 8)
    val cpy = snapshot(pBitStrm)
    val l = BitStream_DecodeInteger64(cpy)
    (cpy, l)
  }

  @ghost @opaque @inlineOnce
  def decodeInt64PrefixLemma(pBitStrm1: BitStream, pBitStrm2: BitStream): Unit = {
    require(pBitStrm1.buf.length <= pBitStrm2.buf.length)
    require(pBitStrm1.bitIndex + 64 <= pBitStrm1.buf.length.toLong * 8)
    require(pBitStrm1.bitIndex + 64 <= pBitStrm2.bitIndex)
    require(arrayBitPrefix(
      pBitStrm1.buf,
      pBitStrm2.buf,
      0,
      pBitStrm1.bitIndex + 64
    ))

    val pBitStrm2Reset = BitStream(snapshot(pBitStrm2.buf), pBitStrm1.currentByte, pBitStrm1.currentBit)
    val (pBitStrm1Res, i1) = BitStream_DecodeInteger64Pure(pBitStrm1)
    val (pBitStrm2Res, i2) = BitStream_DecodeInteger64Pure(pBitStrm2Reset)

    {
      arrayBitPrefixSlicedLemma(pBitStrm1.buf, pBitStrm2.buf, 0, pBitStrm1.bitIndex + 64, 0, pBitStrm1.bitIndex + 32)
      decodeInt32PrefixLemma(pBitStrm1, BitStream(snapshot(pBitStrm2.buf), pBitStrm1.currentByte + 4, pBitStrm1.currentBit))
      val (pBitStrm1_2, hi1) = BitStream_DecodeInteger32Pure(pBitStrm1)
      val (pBitStrm2_2, hi2) = BitStream_DecodeInteger32Pure(pBitStrm2Reset)
      assert(hi1 == hi2)
      decodeInt32PrefixLemma(pBitStrm1_2, BitStream(snapshot(pBitStrm2_2.buf), pBitStrm1_2.currentByte + 4, pBitStrm1_2.currentBit))
      val (_, lo1) = BitStream_DecodeInteger32Pure(pBitStrm1_2)
      val (_, lo2) = BitStream_DecodeInteger32Pure(pBitStrm2_2)
      assert(lo1 == lo2)
    }.ensuring { _ =>
      pBitStrm1Res.bitIndex == pBitStrm2Res.bitIndex && i1 == i2
    }
  }

  @opaque @inlineOnce
  def BitStream_EncodeInteger64(pBitStrm: BitStream, i: Long): Unit = {
    require(pBitStrm.bitIndex + 64 <= pBitStrm.buf.length.toLong * 8)

    // ghost values do not appear at runtime, they are only for specification
    @ghost val pBitStrm1 = snapshot(pBitStrm) // snapshot takes logical deep copy
    val v1 = (i >> 32).toInt
    BitStream_EncodeInteger32(pBitStrm, v1)
    @ghost val pBitStrm2 = snapshot(pBitStrm)

    val v2 = i.toInt
    BitStream_EncodeInteger32(pBitStrm, v2)

    ghostExpr {
      validTransitiveLemma(pBitStrm1, pBitStrm2, pBitStrm)
      val pBitStrm2Reset = BitStream(snapshot(pBitStrm2.buf), pBitStrm1.currentByte, pBitStrm1.currentBit)
      decodeInt32PrefixLemma(pBitStrm2Reset, pBitStrm)
    }
  }.ensuring { _ =>
    val w1 = old(pBitStrm)
    val w3 = pBitStrm
    w3.bitIndex == w1.bitIndex + 64 && isValidPair(w1, w3) && {
      val (r1, r3) = reader(w1, w3)
      val (r3Got, iGot) = BitStream_DecodeInteger64Pure(r1)
      iGot == i && r3Got == r3
    }
  }

  // There are 2^64 possible input values for `i` and infinitely for pBitStrm
  // The proof shows the property .holds for all of them.
  def BitStream_EncodeInteger64InvertibilityTheorem(pBitStrm: BitStream, i: Long): Unit = {
    // For all streams with enough buffer space, and an arbitrary Long intreger i:
    require(pBitStrm.bitIndex + 64 <= pBitStrm.buf.length.toLong * 8)
    // 1. encoding i and writing it to buffer
    BitStream_EncodeInteger64(pBitStrm, i)
    val endPosition = pBitStrm.bitIndex
    // 2. rewinding by 64 bits
    pBitStrm.moveOffset(-64)
    // 3. reading back the encoded value
    val read = BitStream_DecodeInteger64(pBitStrm)
    // 4.
    //   a. advances the BitStream by 64 bits so we get back to the end position
    assert(pBitStrm.bitIndex == endPosition)
    //   b. gives the same long i, all 64 bits of it, regardless of the initial state of the BitStream
    assert(read == i)
  }
}