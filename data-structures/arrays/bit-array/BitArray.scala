package datastructure.arrays

import stainless.lang.{ghost => ghostExpr, *}
import stainless.annotation.*
import stainless.collection.*
import stainless.lang.StaticChecks.*


/**
  * Represents a bit array, underlined by an array of bytes. The specification is given by a list
  * of booleans, `toList`, which is a ghost projection of the content of the array (as `map` in MutableLongMap), not a stored field.
  * The case class carries the size of the array, as it might not be a multiple of 8. If the size is not a multiple of 8, the last bits of the last byte are ignored.
  * Bit i of the list is bit i % 8 of byte i / 8, i.e., the one selected by the mask 1 << (i % 8).
  * The class has no ghost field: the specification (`toList` and `_size`) is computed from the executable state.
  *
  * @param data
  * @param _lsize
  */
case class BitArray64BitsIndex(private val data: Array[Byte], private var _lsize: Long) {

  /** The size as a BigInt, for the specification. */
  @ghost @pure def _size: BigInt = BigInt(_lsize)

  // Links the size with the actual size of the array.
  @ghost @pure def valid: Boolean = {
    0 <= _lsize && _size <= 8 * BigInt(data.length)
  }

  /** The abstract content of the bit array: its first `_size` bits. */
  @ghost @pure def toList: List[Boolean] = {
    require(valid)
    BitArray64BitsIndex.bitsFrom(data, 0, _size)
  }.ensuring(res => res.size == _size)

  @pure @ghost def sizeBigInt: BigInt = {
    require(valid)
    _size
  }.ensuring(res =>
    valid && res == toList.size && res >= 0 && res <= 8 * BigInt(data.length)
  )

  @pure def size: Long = {
    require(valid)
    ghostExpr(Utils.lemmaToLongBigIntConversionBothDirections(_size, _lsize))
    _lsize
  }.ensuring(res =>
    valid && res == toList.size.toLong && res >= 0
  )

  def apply(i: Long): Boolean = {
    require(valid)
    require(i >= 0 && i < size)
    ghostExpr({
      Utils.lemmaToLongBigIntConversionBothDirections(_size, _lsize)
      Utils.lemmaToLongBigIntConversionBothDirections(_size, i)
      BitArray64BitsIndex.lemmaLongBitIndex(i, data.length)
      BitArray64BitsIndex.lemmaBitsFromApply(data, 0, _size, BigInt(i))
    })
    val byte = data((i / 8).toInt)
    (byte & (1 << (i % 8).toInt)) != 0
  }.ensuring(res => valid && res == toList(BigInt(i)))

  @ghost def apply(ii: BigInt): Boolean = {
    require(valid)
    require(ii >= 0 && ii < _size)
    BitArray64BitsIndex.lemmaBitIndexInBounds(ii, data.length)
    BitArray64BitsIndex.lemmaBitsFromApply(data, 0, _size, ii)
    val byte = data((ii / 8).toInt)
    (byte & (1 << (ii % 8).toInt)) != 0
  }.ensuring(res => valid && res == toList(ii))

  def update(i: Long, v: Boolean): Unit = {
    require(valid)
    require(i >= 0 && i < size)
    ghostExpr({
      Utils.lemmaToLongBigIntConversionBothDirections(_size, _lsize)
      Utils.lemmaToLongBigIntConversionBothDirections(_size, i)
      BitArray64BitsIndex.lemmaLongBitIndex(i, data.length)
    })
    @ghost val oldList = toList
    val byteIndex = (i / 8).toInt
    val mask = 1 << (i % 8).toInt
    val byte = data(byteIndex)
    val newByte = BitArray64BitsIndex.lowByte(if (v) byte | mask else byte & ~mask)
    ghostExpr(BitArray64BitsIndex.lemmaBitsFromUpdated(data, 0, _size, BigInt(i), v, newByte))
    data(byteIndex) = newByte
    ghostExpr(assert(toList == oldList.updated(BigInt(i), v)))
  }.ensuring(_ => valid && old(this).toList.updated(BigInt(i), v) == toList)

  @opaque def update(ii: BigInt, v: Boolean): Unit = {
    require(valid)
    require(ii >= 0 && ii < _size)
    ghostExpr(BitArray64BitsIndex.lemmaBitIndexInBounds(ii, data.length))
    @ghost val oldList = toList
    val byteIndex = (ii / 8).toInt
    val mask = 1 << (ii % 8).toInt
    val byte = data(byteIndex)
    val newByte = BitArray64BitsIndex.lowByte(if (v) byte | mask else byte & ~mask)
    ghostExpr(BitArray64BitsIndex.lemmaBitsFromUpdated(data, 0, _size, ii, v, newByte))
    data(byteIndex) = newByte
    ghostExpr(assert(toList == oldList.updated(ii, v)))
  }.ensuring(_ => valid && old(this).toList.updated(ii, v) == toList)
}

object BitArray64BitsIndex {
  @ghost @pure def bitIndex(i: BigInt): (BigInt, BigInt) = {
    i / 8 -> i % 8
  }
  /** Bit i of the array. */
  @ghost @pure def bitAt(array: Array[Byte], i: BigInt): Boolean = {
    require(0 <= i && i < 8 * BigInt(array.length))
    lemmaBitIndexInBounds(i, array.length)
    (array((i / 8).toInt) & (1 << (i % 8).toInt)) != 0
  }

  /** The bits of the array from index `from` to `_size`, as a list. */
  @ghost @pure def bitsFrom(array: Array[Byte], from: BigInt, _size: BigInt): List[Boolean] = {
    require(0 <= from && from <= _size && _size <= 8 * BigInt(array.length))
    decreases(_size - from)
    if from == _size then Nil[Boolean]()
    else Cons(bitAt(array, from), bitsFrom(array, from + 1, _size))
  }.ensuring(res => res.size == _size - from)

  @ghost @opaque @inlineOnce
  def lemmaBitsFromApply(array: Array[Byte], from: BigInt, _size: BigInt, i: BigInt): Unit = {
    require(0 <= from && from <= i && i < _size && _size <= 8 * BigInt(array.length))
    decreases(i - from)
    if (from < i) {
      lemmaBitsFromApply(array, from + 1, _size, i)
    }
  }.ensuring(_ => bitsFrom(array, from, _size)(i - from) == bitAt(array, i))

  /** Narrows x to a byte with the same 8 low bits, i.e., x.toByte without overflowing. */
  @pure @opaque def lowByte(x: Int): Byte = {
    val low = x & 0xff
    (if (low >= 128) low - 256 else low).toByte
  }

  @ghost @opaque @inlineOnce
  def lemmaLowByteBit(x: Int, c: Int): Unit = {
    require(0 <= c && c < 8)
    unfold(lowByte(x))
  }.ensuring(_ => ((lowByte(x) & (1 << c)) != 0) == ((x & (1 << c)) != 0))

  /** Setting (v) or clearing (!v) bit b of a byte changes bit b only. */
  @ghost @opaque @inlineOnce
  def lemmaSetBit(byte: Byte, b: Int, c: Int, v: Boolean): Unit = {
    require(0 <= b && b < 8 && 0 <= c && c < 8)
  }.ensuring(_ =>
    (((if (v) byte | (1 << b) else byte & ~(1 << b)) & (1 << c)) != 0) == (if (b == c) v else (byte & (1 << c)) != 0)
  )

  @ghost @pure @inline def bitIndexInBounds(i: BigInt, length: Int): Boolean = {
    0 <= i / 8 && i / 8 < BigInt(length) && 0 <= (i / 8).toInt && (i / 8).toInt < length &&
    0 <= i % 8 && i % 8 < 8 && 0 <= (i % 8).toInt && (i % 8).toInt < 8
  }

  /** For a non-negative index below 8 * length, the Long byte and bit index computations agree with the BigInt ones. */
  @ghost @opaque @inlineOnce
  def lemmaLongBitIndex(i: Long, length: Int): Unit = {
    require(0 <= i && BigInt(i) < 8 * BigInt(length))
    lemmaBitIndexInBounds(BigInt(i), length)
    assert(BigInt(i / 8) == BigInt(i) / 8 && BigInt(i % 8) == BigInt(i) % 8)
  }.ensuring(_ =>
    bitIndexInBounds(BigInt(i), length) && BigInt(i / 8) == BigInt(i) / 8 && BigInt(i % 8) == BigInt(i) % 8 &&
    0 <= i / 8 && i / 8 < length && (i / 8).toInt == (BigInt(i) / 8).toInt && (i % 8).toInt == (BigInt(i) % 8).toInt
  )

  @ghost @opaque @inlineOnce
  def lemmaBitIndexInBounds(i: BigInt, length: Int): Unit = {
    require(0 <= i && i < 8 * BigInt(length))
    assert(0 <= i / 8 && i / 8 < BigInt(length))
    Utils.lemmaToIntBigIntConversionBothDirections(i / 8, length)
    Utils.lemmaToIntBigIntConversionBothDirections(i / 8, 0)
    Utils.lemmaToIntBigIntConversionBothDirections(i % 8, 8)
    Utils.lemmaToIntBigIntConversionBothDirections(i % 8, 0)
  }.ensuring(_ => bitIndexInBounds(i, length))

  /** Replacing the byte holding bit i by newByte, i.e., that byte with bit i set to v, changes bit i only. */
  @ghost @opaque @inlineOnce
  def lemmaUpdatedBit(array: Array[Byte], i: BigInt, v: Boolean, newByte: Byte, j: BigInt): Unit = {
    require(bitIndexInBounds(i, array.length) && bitIndexInBounds(j, array.length))
    require(newByte == lowByte(if (v) array((i / 8).toInt) | (1 << (i % 8).toInt) else array((i / 8).toInt) & ~(1 << (i % 8).toInt)))
    val byte = array((i / 8).toInt)
    val mask = 1 << (i % 8).toInt
    lemmaLowByteBit(if (v) byte | mask else byte & ~mask, (j % 8).toInt)
    lemmaSetBit(byte, (i % 8).toInt, (j % 8).toInt, v)
    Utils.compareBigIntPreservedByToInt(j / 8, i / 8)
    Utils.compareBigIntPreservedByToInt(j % 8, i % 8)
    assert((j == i) == (j / 8 == i / 8 && j % 8 == i % 8))
  }.ensuring(_ =>
    ((array.updated((i / 8).toInt, newByte)((j / 8).toInt) & (1 << (j % 8).toInt)) != 0) ==
      (if (j == i) v else (array((j / 8).toInt) & (1 << (j % 8).toInt)) != 0)
  )

  /** Setting bit i of the array to v in the byte holding it, i.e., replacing that byte by newByte, updates the bits at i only. */
  @ghost @opaque @inlineOnce
  def lemmaBitsFromUpdated(array: Array[Byte], from: BigInt, _size: BigInt, i: BigInt, v: Boolean, newByte: Byte): Unit = {
    require(0 <= from && from <= _size && _size <= 8 * BigInt(array.length))
    require(0 <= i && i < _size && bitIndexInBounds(i, array.length))
    require(newByte == lowByte(if (v) array((i / 8).toInt) | (1 << (i % 8).toInt) else array((i / 8).toInt) & ~(1 << (i % 8).toInt)))
    decreases(_size - from)
    if (from < _size) {
      lemmaBitIndexInBounds(from, array.length)
      lemmaUpdatedBit(array, i, v, newByte, from)
      lemmaBitsFromUpdated(array, from + 1, _size, i, v, newByte)
      val newArray = array.updated((i / 8).toInt, newByte)
      val h = bitAt(array, from)
      val t = bitsFrom(array, from + 1, _size)
      val newT = bitsFrom(newArray, from + 1, _size)
      assert(bitAt(newArray, from) == (if (from == i) v else h))
      assert(bitsFrom(array, from, _size) == Cons(h, t))
      assert(bitsFrom(newArray, from, _size) == Cons(bitAt(newArray, from), newT))
      if (from < i) {
        assert(newT == t.updated(i - from - 1, v))
        assert(Cons(h, t).updated(i - from, v) == Cons(h, t.updated(i - from - 1, v)))
      } else if (from == i) {
        assert(newT == t)
        assert(Cons(h, t).updated(i - from, v) == Cons(v, t))
      } else {
        assert(newT == t)
      }
    }
  }.ensuring(_ =>
    bitsFrom(array.updated((i / 8).toInt, newByte), from, _size) ==
      (if (from <= i) bitsFrom(array, from, _size).updated(i - from, v) else bitsFrom(array, from, _size))
  )
}

object Utils {
  @ghost def sameArrayListContent[T](arr: Array[T], from: Int, list: List[T]): Boolean = {
    if (from < 0 || from > arr.length) {
      false
    } else if (from == arr.length){
      list == Nil[T]()
    } else {
      list match {
        case Nil() => false
        case Cons(h, t) =>
          arr(from) == h && sameArrayListContent(arr, from + 1, t)
      }
    }
  }.ensuring(res => if res then 0 <= from && from <= arr.length else true)

  @ghost @opaque @inlineOnce
  def lemmaSameArrayListContentImpliesSameLength[T](arr: Array[T], from: Int, list: List[T]): Unit = {
    decreases(list)
    require(sameArrayListContent(arr, from, list))

    if (from < 0 || from > arr.length) {
      // false
      ()
    } else if (from == arr.length){
      Utils.compareIntPreservedByToBigInt(arr.length, from)
      ()
    } else {
      list match {
        case Nil() => 
          ()
        case Cons(h, tail) =>
          assert((0 <= from && from <= arr.length))
          lemmaSameArrayListContentImpliesSameLength(arr, from + 1, tail)
          assert((0 <= from + 1 && from + 1 <= arr.length))
          assert((arr.length == from + 1 + tail.size.toInt))
          assert(list.size == tail.size + 1)
          Utils.additionIntPreservedByToBigInt(tail.size.toInt, 1)
          Utils.lemmaConversionBackForth(tail.size)
          Utils.lemmaConversionBackForth(list.size)
          Utils.lemmaConversionBackForth(arr.length)
          assert(1 + tail.size == list.size)
          Utils.additionIntPreservedByToInt(1, tail.size, list.size)
          assert(1 + tail.size.toInt == list.size.toInt)
          Utils.compareIntPreservedByToBigInt(arr.length, Int.MaxValue)
          Utils.additionIntPreservedByToBigInt(from + 1, tail.size.toInt)
          Utils.compareIntPreservedByToBigInt(from + list.size.toInt, from + 1 + tail.size.toInt)

          Utils.additionIntPreservedByToBigInt(from, 1)
          ()
      }
    }
  }.ensuring(_ => (0 <= from && from <= arr.length) && (arr.length == from + list.size.toInt) && (BigInt(arr.length) == BigInt(from) + list.size))

  @ghost @opaque @inlineOnce
  def lemmaSameArrayListContentImpliesSameApply[T](arr: Array[T], from: Int, list: List[T], i: Int): Unit = {
    decreases(list)
    require(sameArrayListContent(arr, from, list))
    require(i >= from && i < arr.length)

    val j = i - from
    list match {
      case Nil() => ()
      case Cons(h, tail) if (i == from) =>
        assert(arr(from) == h)
      case Cons(h, tail) =>
        assert(i > from)
        lemmaSameArrayListContentImpliesSameApply(arr, from + 1, tail, i)
        subtractionIntPreservedByToBigInt(j, 1)
    }
  }.ensuring(_ => arr(i) == list(BigInt(i - from)))


  @opaque @inlineOnce @ghost
  def lemmaSameArrayListContentPreservedByUpdatedIBeforeFrom[T](arr: Array[T], from: Int, list: List[T], i: Int, v: T): Unit = {
    require(sameArrayListContent(arr, from, list))
    require(i >= 0 && i < arr.length)
    require(i < from)
    decreases(list)
    lemmaSameArrayListContentImpliesSameLength(arr, from, list)
    list match {
      case Nil() => ()
      case Cons(h, tail) =>
        assert(arr(from) == arr.updated(i, v)(from))
        lemmaSameArrayListContentPreservedByUpdatedIBeforeFrom(arr, from + 1, tail, i, v)
    }
  }.ensuring(_ => sameArrayListContent(arr.updated(i, v), from, list))

  @opaque @inlineOnce @ghost
  def lemmaSameArrayListContentPreservedByUpdated[T](arr: Array[T], from: Int, list: List[T], i: Int, v: T): Unit = {
    require(sameArrayListContent(arr, from, list))
    require(i >= 0 && i < arr.length)
    require(i >= from)
    decreases(list)
    val j = i - from
    lemmaSameArrayListContentImpliesSameLength(arr, from, list)
    assert((arr.length == from + list.size.toInt))
    compareIntPreservedByToBigInt(j, 0)
    lemmaToIntBigIntConversionBothDirections(list.size, arr.length - from)
    lemmaToIntBigIntConversionBothDirections(list.size, j)
    assert(j >= 0)
    assert(arr.length - from == list.size.toInt)
    assert(j < arr.length - from)
    assert(j < list.size.toInt)
    assert(BigInt(j) >= 0 && BigInt(j) < list.size)
    list match {
      case Nil() => ()
      case Cons(h, tail) if (i == from) =>lemmaSameArrayListContentPreservedByUpdatedIBeforeFrom(arr, from + 1, tail, i, v)
      case Cons(h, tail) =>
        assert(i > from)
        lemmaSameArrayListContentPreservedByUpdated(arr, from + 1, tail, i, v)
        assert(sameArrayListContent(arr.updated(i, v), from + 1, tail.updated(BigInt(j- 1), v)))
        subtractionIntPreservedByToBigInt(j, 1)
        assert(BigInt(j - 1) == BigInt(j) - 1)
        assert(Cons(h, tail.updated(BigInt(j - 1), v)) == list.updated(BigInt(j), v))
    }
  }.ensuring(_ => sameArrayListContent(arr.updated(i, v), from, list.updated(BigInt(i - from), v)))

  @opaque @inlineOnce @ghost
  def compareIntPreservedByToBigInt(a: Int, b: Int): Unit = {
  }.ensuring(_ => (a < b) == (BigInt(a) < BigInt(b)) && (a > b) == (BigInt(a) > BigInt(b)) && (a == b) == (BigInt(a) == BigInt(b)))

  @opaque @inlineOnce @ghost
  def additionIntPreservedByToBigInt(a: Int, b: Int): Unit = {
    require(BigInt(Int.MinValue) <= BigInt(a) + BigInt(b) && BigInt(a) + BigInt(b) <= BigInt(Int.MaxValue))
    assert(Int.MinValue <= a + b && a + b <= Int.MaxValue)
    assert(BigInt(a + b) == BigInt(a) + BigInt(b))
  }.ensuring(_ => BigInt(a + b) == BigInt(a) + BigInt(b))

  @opaque @inlineOnce @ghost
  def additionIntPreservedByToInt(a: BigInt, b: BigInt, c: BigInt): Unit = {
    require(a + b == c)
    require(Int.MinValue <= c && c <= Int.MaxValue)
    require(Int.MinValue <= a && a <= Int.MaxValue)
    require(Int.MinValue <= b && b <= Int.MaxValue)
    assert(a.toInt + b.toInt == c.toInt)
  }.ensuring(_ => a.toInt + b.toInt == c.toInt)

  @opaque @inlineOnce @ghost
  def subtractionIntPreservedByToBigInt(a: Int, b: Int): Unit = {
    require(BigInt(Int.MinValue) <= BigInt(a) - BigInt(b) && BigInt(a) - BigInt(b) <= BigInt(Int.MaxValue))
    assert(Int.MinValue <= a - b && a - b <= Int.MaxValue)
    assert(BigInt(a - b) == BigInt(a) - BigInt(b))
  }.ensuring(_ => BigInt(a - b) == BigInt(a) - BigInt(b))

  @opaque @inlineOnce @ghost
  def compareBigIntPreservedByToInt(a: BigInt, b: BigInt): Unit = {
    require(Int.MinValue <= a && a <= Int.MaxValue && Int.MinValue <= b && b <= Int.MaxValue)
  }.ensuring(_ => (a < b) == (a.toInt < b.toInt) && (a > b) == (a.toInt > b.toInt) && (a == b) == (a.toInt == b.toInt))

  @opaque @inlineOnce @ghost
  def lemmaToIntBigIntConversionBothDirections(a: BigInt, b: Int): Unit = {
    require(Int.MinValue <= a && a <= Int.MaxValue)
  }.ensuring(_ => (a.toInt == b) == (a == BigInt(b)) && (a < BigInt(b)) == (a.toInt < b) && (a > BigInt(b)) == (a.toInt > b) && (a <= BigInt(b)) == (a.toInt <= b) && (a >= BigInt(b)) == (a.toInt >= b))

  @opaque @inlineOnce @ghost
  def lemmaTimes8IntToLong(a: Int): Unit = {
    require(a >= 0)
  }.ensuring(_ => BigInt(8L * a) == 8 * BigInt(a))

  @opaque @inlineOnce @ghost
  def lemmaToLongBigIntConversionBothDirections(a: BigInt, b: Long): Unit = {
    require(BigInt(Long.MinValue) <= a && a <= BigInt(Long.MaxValue))
  }.ensuring(_ => (a.toLong == b) == (a == BigInt(b)) && (a < BigInt(b)) == (a.toLong < b) && (a > BigInt(b)) == (a.toLong > b) && (a <= BigInt(b)) == (a.toLong <= b) && (a >= BigInt(b)) == (a.toLong >= b))

  @opaque @inlineOnce @ghost
  def lemmaConversionBackForth(a: BigInt): Unit = {
    require(Int.MinValue <= a && a <= Int.MaxValue)
  }.ensuring(_ => a == BigInt(a.toInt))

  @opaque @inlineOnce @ghost
  def lemmaConversionBackForth(a: Int): Unit = {
  }.ensuring(_ => BigInt(a).toInt == a)

}