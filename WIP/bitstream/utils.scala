import stainless.*
import stainless.lang.*
import stainless.collection.*
import stainless.annotation.{wrapping => _, *}
import stainless.proof.*
import stainless.math.*
import StaticChecks.*

object utils {
  val masks: Array[Byte] = Array(
    -0x80, // -128 / 1000 0000 / x80
    0x40,  //   64 / 0100 0000 / x40
    0x20,  //   32 / 0010 0000 / x20
    0x10,  //   16 / 0001 0000 / x10
    0x08,  //    8 / 0000 1000 / x08
    0x04,  //    4 / 0000 0100 / x04
    0x02,  //    2 / 0000 0010 / x02
    0x01,  //    1 / 0000 0001 / x01
  )
  val masksb: Array[Byte] = Array(
    0x00, //   0 / 0000 0000 / x00
    0x01, //   1 / 0000 0001 / x01
    0x03, //   3 / 0000 0011 / x03
    0x07, //   7 / 0000 0111 / x07
    0x0F, //  15 / 0000 1111 / x0F
    0x1F, //  31 / 0001 1111 / x1F
    0x3F, //  63 / 0011 1111 / x3F
    0x7F, // 127 / 0111 1111 / x7F
    -0x1, //  -1 / 1111 1111 / xFF
  )

  val masksc: Array[Byte] = Array(
     0x00,  //  / 0000 0000 /
    -0x80,  //  / 1000 0000 /
    -0x40,  //  / 1100 0000 /
    -0x20,  //  / 1110 0000 /
    -0x10,  //  / 1111 0000 /
    -0x08,  //  / 1111 1000 /
    -0x04,  //  / 1111 1100 /
    -0x02,  //  / 1111 1110 /
  )
  val masks2: Array[Int] = Array(
    0x00000000, //         0 / 0000 0000 0000 0000 0000 0000 0000 0000 / 0x00000000
    0x000000FF, //       255 / 0000 0000 0000 0000 0000 0000 1111 1111 / 0x000000FF
    0x0000FF00, //     65280 / 0000 0000 0000 0000 1111 1111 0000 0000 / 0x0000FF00
    0x00FF0000, //  16711680 / 0000 0000 1111 1111 0000 0000 0000 0000 / 0x00FF0000
    0xFF000000, // -16777216 / 1111 1111 0000 0000 0000 0000 0000 0000 / 0xFF000000
  )

  def arrayPrefix[T](a1: Array[T], a2: Array[T], from: Int, to: Int): Boolean = {
    require(0 <= from && from <= to)
    require(a1.length <= a2.length)
    require(to <= a1.length)
    decreases(to - from)
    if (from == to) true
    else a1(from) == a2(from) && arrayPrefix(a1, a2, from + 1, to)
  }

  @opaque @inlineOnce
  def arrayPrefixSlicedLemma[T](a1: Array[T], a2: Array[T], from: Int, to: Int, fromSlice: Int, toSlice: Int): Unit = {
    require(0 <= from && from <= to)
    require(a1.length <= a2.length)
    require(to <= a1.length)
    require(from <= fromSlice && fromSlice <= toSlice && toSlice <= to)
    require(arrayPrefix(a1, a2, from, to))

    @opaque @inlineOnce
    def rec(i: Int): Unit = {
      require(fromSlice <= i && i <= to)
      require(arrayPrefix(a1, a2, i, to)) // the original predicate we are unfolding
      require((i <= toSlice) ==> arrayPrefix(a1, a2, i, toSlice)) // the resulting predicate we are folding
      decreases(i)
      if (i == fromSlice) ()
      else {
        arrayPrefixImpliesEq(a1, a2, from, i - 1, to)
        rec(i - 1)
      }
    }.ensuring(_ => arrayPrefix(a1, a2, fromSlice, toSlice))

    rec(to)
  }.ensuring(_ => arrayPrefix(a1, a2, fromSlice, toSlice))

  @opaque @inlineOnce
  def arrayPrefixAppend[T](a1: Array[T], a2: Array[T], from: Int, to: Int) = {
    require(0 <= from && from <= to)
    require(a1.length <= a2.length)
    require(to < a1.length)
    require(arrayPrefix(a1, a2, from, to))
    require(a1(to) == a2(to))

    @opaque @inlineOnce
    def rec(i: Int): Unit = {
      require(from <= i && i <= to)
      require(arrayPrefix(a1, a2, i, to + 1))
      decreases(i)
      if (i == from) ()
      else {
        arrayPrefixImpliesEq(a1, a2, from, i - 1, to)
        rec(i - 1)
      }
    }.ensuring { _ =>
      arrayPrefix(a1, a2, from, to + 1)
    }
    rec(to)
  }.ensuring(_ => arrayPrefix(a1, a2, from, to + 1))

  @opaque @inlineOnce
  def arrayPrefixTransitive[T](a1: Array[T], a2: Array[T], a3: Array[T], from: Int, mid: Int, to: Int): Unit = {
    require(0 <= from && from <= mid && mid <= to)
    require(a1.length <= a2.length && a2.length <= a3.length)
    require(mid <= a1.length && to <= a2.length)
    require(arrayPrefix(a1, a2, from, mid))
    require(arrayPrefix(a2, a3, from, to))

    @opaque @inlineOnce
    def rec(i: Int): Unit = {
      require(from <= i && i <= mid)
      require(arrayPrefix(a1, a2, i, mid))
      require(arrayPrefix(a2, a3, i, to))
      require(arrayPrefix(a1, a3, from, i))
      decreases(to - i)
      if (i == mid) ()
      else {
        arrayPrefixAppend(a1, a3, from, i)
        rec(i + 1)
      }
    }.ensuring { _ =>
      arrayPrefix(a1, a3, from, mid)
    }
    rec(from)
  }.ensuring(_ => arrayPrefix(a1, a3, from, mid))

  @opaque @inlineOnce
  def arrayUpdatedAtPrefixLemma[T](a: Array[T], at: Int, v: T): Unit = {
    require(0 <= at && at < a.length)

    @opaque @inlineOnce
    def rec(i: Int): Unit = {
      require(0 <= i && i <= at)
      require(arrayPrefix(a, freshCopy(a).updated(at, v), i, at))
      decreases(i)
      if (i == 0) ()
      else rec(i - 1)
    }.ensuring { _ =>
      arrayPrefix(a, freshCopy(a).updated(at, v), 0, at)
    }

    rec(at)
  }.ensuring { _ =>
    arrayPrefix(a, freshCopy(a).updated(at, v), 0, at)
  }

  @opaque @inlineOnce
  def arrayPrefixImpliesEq[T](a1: Array[T], a2: Array[T], from: Int, at: Int, to: Int): Unit = {
    require(0 <= from && from <= to)
    require(a1.length <= a2.length)
    require(to <= a1.length)
    require(from <= at && at < to)
    require(arrayPrefix(a1, a2, from, to))

    @opaque @inlineOnce
    def rec(i: Int): Unit = {
      require(from <= i && i <= at)
      require(arrayPrefix(a1, a2, i, to))
      decreases(to - i)
      if (i == at) ()
      else rec(i + 1)
    }.ensuring { _ =>
      a1(at) == a2(at)
    }
    rec(from)
  }.ensuring(_ => a1(at) == a2(at))

  def arrayPrefixRev[T](a1: Array[T], a2: Array[T], from: Int, to: Int): Boolean = {
    require(0 <= from && from <= to)
    require(a1.length <= a2.length)
    require(to <= a1.length)
    decreases(to - from)
    if (from == to) true
    else a1(to - 1) == a2(to - 1) && arrayPrefixRev(a1, a2, from, to - 1)
  }

  def arrayBitIndices(fromBit: Long, toBit: Long): (Int, Int, Int, Int) = {
    require(0 <= fromBit && fromBit <= toBit && toBit <= 8 * Int.MaxValue.toLong)
    val arrPrefixStart = (fromBit / 8 + (if (fromBit % 8 == 0) 0 else 1)).toInt
    val arrPrefixEnd = (toBit / 8).toInt
    val fromBitIx = (fromBit / 8).toInt
    val toBitIx = (toBit / 8).toInt
    (arrPrefixStart, arrPrefixEnd, fromBitIx, toBitIx)
  }

  def arrayBitPrefix(a1: Array[Byte], a2: Array[Byte], fromBit: Long, toBit: Long): Boolean = {
    require(a1.length <= a2.length)
    require(0 <= fromBit && fromBit <= toBit && toBit <= a1.length.toLong * 8)
    require(fromBit < a1.length.toLong * 8)
    (fromBit < toBit) ==> {
      val (arrPrefixStart, arrPrefixEnd, fromBitIx, toBitIx) = arrayBitIndices(fromBit, toBit)
      val restFrom = (fromBit % 8).toInt
      val restTo = (toBit % 8).toInt
      ((arrPrefixStart < arrPrefixEnd) ==> arrayPrefix(a1, a2, arrPrefixStart, arrPrefixEnd)) && {
        if (fromBitIx == toBitIx) {
          bytePrefix(a1(fromBitIx), a2(fromBitIx), restFrom, restTo)
        } else {
          bytePrefix(a1(fromBitIx), a2(fromBitIx), restFrom, 7) &&
          ((restTo != 0) ==> bytePrefix(a1(toBitIx), a2(toBitIx), 0, restTo))
        }
      }
    }
  }

  @opaque @inlineOnce
  def arrayBitPrefixSlicedLemma(a1: Array[Byte], a2: Array[Byte], fromBit: Long, toBit: Long, fromSlice: Long, toSlice: Long): Unit = {
    require(a1.length <= a2.length)
    require(0 <= fromBit && fromBit <= toBit && toBit <= a1.length.toLong * 8)
    require(fromBit < a1.length.toLong * 8)
    require(arrayBitPrefix(a1, a2, fromBit, toBit))
    require(fromBit <= fromSlice && fromSlice <= toSlice && toSlice <= toBit)
    require(fromSlice < a1.length.toLong * 8)

    if (fromSlice == toSlice) ()
    else {
      val (arrPrefixStart, arrPrefixEnd, fromBitIx, toBitIx) = arrayBitIndices(fromBit, toBit)
      val restFrom = (fromBit % 8).toInt
      val restTo = (toBit % 8).toInt

      val (arrPrefixSliceStart, arrPrefixSliceEnd, fromSliceIx, toSliceIx) = arrayBitIndices(fromSlice, toSlice)
      val restFromSlice = (fromSlice % 8).toInt
      val restToSlice = (toSlice % 8).toInt

      if (arrPrefixSliceStart < arrPrefixSliceEnd) {
        arrayPrefixSlicedLemma(a1, a2, arrPrefixStart, arrPrefixEnd, arrPrefixSliceStart, arrPrefixSliceEnd)
      }
      assert {
        if (fromBitIx == toBitIx) {
          bytePrefix(a1(fromBitIx), a2(fromBitIx), restFrom, restTo)
        } else {
          bytePrefix(a1(fromBitIx), a2(fromBitIx), restFrom, 7) &&
          ((restTo != 0) ==> bytePrefix(a1(toBitIx), a2(toBitIx), 0, restTo))
        }
      }

      if (fromBitIx < fromSliceIx && fromSliceIx < toBitIx) {
        arrayPrefixImpliesEq(a1, a2, arrPrefixStart, fromSliceIx, arrPrefixEnd)
      }
      if (toSliceIx < toBitIx && fromBitIx < toSliceIx) {
        arrayPrefixImpliesEq(a1, a2, arrPrefixStart, toSliceIx, arrPrefixEnd)
      }

      if (fromSliceIx == toSliceIx) {
        assert(bytePrefix(a1(fromSliceIx), a2(fromSliceIx), restFromSlice, restToSlice))
      } else {
        assert(bytePrefix(a1(fromSliceIx), a2(fromSliceIx), restFromSlice, 7))
        assert(((restToSlice != 0) ==> bytePrefix(a1(toSliceIx), a2(toSliceIx), 0, restToSlice)))
      }
    }
  }.ensuring(_ => arrayBitPrefix(a1, a2, fromSlice, toSlice))

  def bytePrefix(b1: Byte, b2: Byte, from: Int, to: Int): Boolean = {
    require(0 <= from && from <= to && to <= 7)
    ((b1 & masksc(to) & masksb(8 - from)) & 0xFF) == ((b2 & masksc(to) & masksb(8 - from)) & 0xFF)
  }

  @opaque @inlineOnce
  def bytePrefixTransitive(b1: Byte, b2: Byte, b3: Byte, mid: Int, to: Int): Unit = {
    require(0 <= mid && mid <= to && to <= 7)
    require(bytePrefix(b1, b2, 0, mid))
    require(bytePrefix(b2, b3, 0, to))

  }.ensuring(_ => bytePrefix(b1, b3, 0, mid))
}