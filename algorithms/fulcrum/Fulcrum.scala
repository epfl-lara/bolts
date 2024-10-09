import stainless.annotation._
import stainless.collection._
import stainless.lang._

import scala.language.postfixOps

object Fulcrum {
  def sum(l: List[BigInt]): BigInt = {
    decreases(l.size)
    l match {
      case Nil() => BigInt(0)
      case Cons(x, xs) => x + sum(xs)
    }
  }

  def abs(x: BigInt) = {
    if(x > 0) x
    else -x
  }

  def lemmaTailDrop[T](l: List[T], i: BigInt): Boolean = {
    require(i >= 0 && i < l.size)
    decreases(l.size)
    l match {
      case Nil() => ()
      case Cons(x, xs) =>
        if(i > 0) lemmaTailDrop(xs, i - 1)
    }
    l.drop(i + 1) == l.drop(i).tail
  } .holds

  def lemmaHeadDrop(l: List[BigInt], i: BigInt): Boolean = {
    require(i >= 0 && i < l.size)
    decreases(l.size)
    if(i > BigInt(0)) lemmaHeadDrop(l.tail, i - 1)
    (l.drop(i))(0) == l(i)
  } .holds

  def lemmaSumTake(l: List[BigInt], i: BigInt): Boolean = {
    require(i >= 0 && i < l.size && !l.isEmpty)
    decreases(l.size)
    if(i > BigInt(0)) lemmaSumTake(l.tail, i - 1)
    sum(l.take(i + 1)) == sum(l.take(i)) + l(i)
  } .holds


  def fDiff(l: List[BigInt], i: BigInt): BigInt = {
    require(i >= 0 && i <= l.size)
    abs(sum(l.take(i)) - sum(l.drop(i)))
  }

  def isLessThanPartialFulcrum(l: List[BigInt], i: BigInt, v: BigInt): Boolean = {
    require(i >= 0 && i <= l.size)
    decreases(i)
    if(i == BigInt(0)) v <= fDiff(l, 0)
    else v <= fDiff(l, i) && isLessThanPartialFulcrum(l, i - 1, v)
  }

  def isDiffIndex(l: List[BigInt], i: BigInt, v: BigInt): Boolean = {
    require(i >= 0 && i <= l.size)
    fDiff(l, i) == v
  }

  def isPartialFulcrum(l: List[BigInt], iMin: BigInt, v: BigInt, iMax: BigInt): Boolean = {
    require(iMax >= 0 && iMax <= l.size && iMin >= 0 && iMin <= iMax)
    isDiffIndex(l, iMin, v) && isLessThanPartialFulcrum(l, iMax, v)
  }

  def isFulcrum(l: List[BigInt], i: BigInt, v: BigInt): Boolean = {
    require(i >= 0 && i <= l.size)
    isPartialFulcrum(l, i, v, l.size)
  }

  def fulcrumLessLemma(l: List[BigInt], i: BigInt, v1: BigInt, v: BigInt): Boolean = {
    require(
      i >= 0 && i <= l.size &&
      isLessThanPartialFulcrum(l, i, v) &&
      v1 <= v
    )
    decreases(i)
    if(i > BigInt(0)) fulcrumLessLemma(l, i - 1, v1, v)
    isLessThanPartialFulcrum(l, i, v1)
  } .holds

  def aux(
    rList: List[BigInt],
    i: BigInt,
    iMin: BigInt,
    minDiff: BigInt,
    lVal: BigInt,
    rVal: BigInt,
    l: List[BigInt]
  ): (BigInt, BigInt) = {
    require(
      i >= 0 && i <= l.size && iMin >= 0 && iMin <= i &&
      rVal == sum(l.drop(i)) && lVal == sum(l.take(i)) &&
      rList == l.drop(i) && isPartialFulcrum(l, iMin, minDiff, i)
    )
    decreases(rList.size)
    rList match {
      case Nil() => (iMin, minDiff)
      case (x :: xs) =>
        val newlVal = lVal + x
        val newrVal = rVal - x
        val currentDiff = abs(newlVal - newrVal)
        val newMinDiff = if(currentDiff >= minDiff) minDiff else currentDiff
        val newI = if(currentDiff >= minDiff) iMin else i + 1
        if(i == l.size) {
          (newI, newMinDiff)
        }
        else {
          lemmaHeadDrop(l, i)
          lemmaTailDrop(l, i)
          lemmaSumTake(l, i)
          if(currentDiff < minDiff) fulcrumLessLemma(l, i, currentDiff, minDiff)
          aux(xs, i + 1, newI, newMinDiff, newlVal, newrVal, l)
        }
    }
  }.ensuring(res => res._1 >= 0 && res._1 <= l.size && isFulcrum(l, res._1, res._2))

  def fulcrum(l: List[BigInt]) = {
    val s = sum(l)
    aux(l, 0, 0, abs(s), 0, s, l)
  }.ensuring(res => res._1 >= 0 && res._1 <= l.size && isFulcrum(l, res._1, res._2))

  @ignore def main(args: Array[String]): Unit = {
    val l1: List[BigInt] = List(4, 2, -5, 0, 8)
    val l2: List[BigInt] = List()
    val l3: List[BigInt] = List(-3, 1, 0)
    val l4: List[BigInt] = List(7, 3, 4, 5, 2, 1, -3)

    println((l1, Fulcrum.fulcrum(l1)))
    println((l2, Fulcrum.fulcrum(l2)))
    println((l3, Fulcrum.fulcrum(l3)))
    println((l4, Fulcrum.fulcrum(l4)))
  }
}
