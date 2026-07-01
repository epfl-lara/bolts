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
    data(i.toInt)
  }.ensuring(res => valid)// && res == toList(i))

  def update(i: BigInt, v: Int): Unit = {
    require(valid)
    require(i >= 0 && i < size)
    ghostExpr(Utils.lemmaSameArrayListContentImpliesSameLength(data, 0, toList))
    ghostExpr(Utils.compareBigIntPreservedByToInt(i, size))
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
  }

  @ghost @opaque @inlineOnce
  def lemmaSameArrayListContentImpliesSameLength[T](arr: Array[T], from: Int, list: List[T]): Unit = {
    decreases(list)
    require(sameArrayListContent(arr, from, list))
    list match {
      case Nil() => assert(from == arr.length)
      case Cons(_, tail) =>
        lemmaSameArrayListContentImpliesSameLength(arr, from + 1, tail)
        assert((arr.length == tail.size.toInt + 1 + from))
        assert(tail.size + 1 == list.size)
        assert(tail.size.toInt + 1 == list.size.toInt)
    }
  }.ensuring(_ => (0 <= from && from <= arr.length) && (arr.length == from + list.size.toInt))


  @ghost @opaque @inlineOnce
  def lemmaUpdatePreservesSameArrayListContent[T](arr: Array[T], from: Int, list: List[T], i: BigInt, v: T): Unit = {
    require(sameArrayListContent(arr, from, list))
    require(from >= 0)
    require(0 <= i && i <= BigInt(arr.length))
    require(i.toInt <= arr.length)
    require(i.toInt >= from)
    decreases(list)
    list match {
      case Nil() => ()
      case Cons(h, tail) =>
        if (i == BigInt(from)) {
          lemmaToIntBigIntConversionBothDirections(i, from)
          assert(arr(from) == h)
          assert(arr.updated(i.toInt, v)(from) == v)
        } else {
          lemmaUpdatePreservesSameArrayListContent(arr, from + 1, tail, i, v)
        }
    }
  }.ensuring(_ => sameArrayListContent(arr.updated(i.toInt, v), from, list.updated(i - BigInt(from), v)))

  @opaque @inlineOnce @ghost
  def isizeEqSize[T](xs: List[T]): Unit = {
    decreases(xs)
    xs match {
      case Nil() => ()
      case Cons(_, tail) => isizeEqSize(tail)
    }
  }.ensuring(_ => xs.size <= Int.MaxValue ==> ((xs.size == BigInt(xs.isize) && xs.isize == xs.size.toInt)))

  @opaque @inlineOnce @ghost
  def compareBigIntPreservedByToInt(a: BigInt, b: BigInt): Unit = {
    require(Int.MinValue <= a && a <= Int.MaxValue && Int.MinValue <= b && b <= Int.MaxValue)
  }.ensuring(_ => (a < b) == (a.toInt < b.toInt) && (a > b) == (a.toInt > b.toInt) && (a == b) == (a.toInt == b.toInt))

  @opaque @inlineOnce @ghost
  def lemmaToIntBigIntConversionBothDirections(a: BigInt, b: Int): Unit = {
    require(Int.MinValue <= a && a <= Int.MaxValue)
  }.ensuring(_ => (a.toInt == b) == (a == BigInt(b)))


}


object Test {
  def test(): Unit = {
    val arr = IntArray(Array(1, 2, 3), List(1, 2, 3))
    arr(0) = 10
  }
}