package intarray

import stainless.lang.{ghost => ghostExpr, *}
import stainless.annotation.*
import stainless.collection.*
import stainless.lang.StaticChecks.*

@mutable
case class IntArray(private val data: Array[Int], @ghost private var toList: List[Int]) {
  
  @ghost def valid: Boolean = Utils.sameArrayListContent(data, 0, toList)

  @ghost def getList: List[Int] = toList

  def size: BigInt = {
    require(valid)
    ghostExpr(Utils.lemmaSameArrayListContentImpliesSameLength(data, 0, toList))
    ghostExpr(Utils.lemmaToIntBigIntConversionBothDirections(toList.size, data.length))
    assert(BigInt(data.length) == toList.size)
    BigInt(data.length)
  }.ensuring(res => valid && res == toList.size && res >= 0 && res <= BigInt(Int.MaxValue))

  def apply(i: BigInt): Int = {
    require(valid)
    require(i >= 0 && i < size)
    ghostExpr(Utils.lemmaSameArrayListContentImpliesSameLength(data, 0, toList))
    ghostExpr(Utils.lemmaToIntBigIntConversionBothDirections(toList.size, data.length))
    ghostExpr(Utils.compareBigIntPreservedByToInt(i, size))
    assert(size <= BigInt(Int.MaxValue))
    assert(i.toInt >= 0 && i.toInt < data.length)
    ghostExpr({
      Utils.lemmaSameArrayListContentImpliesSameApply(data, 0, toList, i.toInt)
      Utils.compareBigIntPreservedByToInt(i, size)
      Utils.lemmaConversionBackForth(i)
      assert(size == toList.size)
      assert(0 <= i && i < toList.size)
    })
    data(i.toInt)
  }.ensuring(res => valid && res == toList(i))

  def update(i: BigInt, v: Int): Unit = {
    require(valid)
    require(i >= 0 && i < size)
    ghostExpr({Utils.lemmaSameArrayListContentImpliesSameLength(data, 0, toList)
      Utils.compareBigIntPreservedByToInt(i, size)
      Utils.sameArrayListContent(data, 0, toList)
      Utils.lemmaSameArrayListContentPreservedByUpdated(data, 0, toList, i.toInt, v)
      Utils.lemmaSameArrayListContentImpliesSameLength(data, 0, toList)
      Utils.lemmaToIntBigIntConversionBothDirections(toList.size, data.length)
      Utils.compareBigIntPreservedByToInt(i, size)
      unfold(size)
    })

    toList = toList.updated(i, v)
    data(i.toInt) = v
  }.ensuring(_ => valid && old(this).toList.updated(i, v) == toList)
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
    require(BigInt(a) + BigInt(b) <= BigInt(Int.MaxValue) && BigInt(a) + BigInt(b) >= BigInt(Int.MinValue))
  }.ensuring(_ => BigInt(a + b) == BigInt(a) + BigInt(b))

  @opaque @inlineOnce @ghost
  def additionIntPreservedByToInt(a: BigInt, b: BigInt, c: BigInt): Unit = {
    require(a + b == c)
    require(Int.MinValue <= c && c <= Int.MaxValue)
    require(Int.MinValue <= a && a <= Int.MaxValue)
    require(Int.MinValue <= b && b <= Int.MaxValue)
  }.ensuring(_ => a.toInt + b.toInt == c.toInt)

  @opaque @inlineOnce @ghost
  def subtractionIntPreservedByToBigInt(a: Int, b: Int): Unit = {
    require(BigInt(a) - BigInt(b) <= BigInt(Int.MaxValue) && BigInt(a) - BigInt(b) >= BigInt(Int.MinValue))
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
  def lemmaConversionBackForth(a: BigInt): Unit = {
    require(Int.MinValue <= a && a <= Int.MaxValue)
  }.ensuring(_ => a == BigInt(a.toInt))

  @opaque @inlineOnce @ghost
  def lemmaConversionBackForth(a: Int): Unit = {
  }.ensuring(_ => BigInt(a).toInt == a)

}


object Test {
  def test(): Unit = {
    val arr: IntArray with arr.valid = IntArray(Array(1, 2, 3), List(1, 2, 3))
    arr(0) = 10
    assert(arr(0) == 10)
  }
  def test2(arr: IntArray with arr.valid): Unit = {
    require(arr.size > 0)
    require(arr(0) == 1)
    assert(arr(0) == 1)
    assert(arr.getList.head == 1)
    arr.update(0, 10)
    assert(arr(0) == 10)

  }
}