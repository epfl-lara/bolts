package ch.epfl.lexer

import stainless.collection._
import stainless.annotation._

import scala.annotation.tailrec
// BEGIN uncomment for verification ------------------------------------------
import stainless.lang._
import stainless.lang.StaticChecks._
import stainless.lang.{ghost => ghostExpr, _}
// END uncomment for verification --------------------------------------------
// BEGIN imports for benchmarking -------------------------------------------
// import stainless.lang.{ghost => _, decreases => _, unfold => _, _}
// import ch.epfl.lexer.OptimisedChecks.*
// import Predef.{assert => _, Ensuring => _, require => _}

// @tailrec
// def dummyVector(x: BigInt): BigInt = {
//   if (x == BigInt(0)) then x
//   else dummyVector(x - BigInt(1))
// }.ensuring( res => res == BigInt(0))
// END imports for benchmarking ---------------------------------------------

case class Vector[T](@pure @extern underlying: scala.collection.immutable.Vector[T], overflowing: List[T] = Nil[T]()) {
  val MAX_INT: BigInt = BigInt(2147483647) // Int.MaxValue

  // we have an invariant stating that if size < MAX_INT then overflowing.isEmpty

  @ghost @pure @extern
  def list: List[T] = List.fromScala(underlying.toList) ++ overflowing

  @pure @extern @inlineOnce
  def size: BigInt = {
    BigInt(underlying.size) + overflowing.size
  }.ensuring(res => res == list.size)

  @pure
  def length: BigInt = size

  @pure @extern @inlineOnce
  def apply(i: BigInt): T = {
    require(0 <= i && i < size)
    if (i < MAX_INT) {
      underlying(i.toInt)
    } else {
      overflowing((i - MAX_INT))
    }
  }.ensuring(_ == list.apply(i))

  @pure @extern @inlineOnce
  def contains(t: T): Boolean = {
    if (size < MAX_INT) {
      underlying.contains(t)
    } else {
      overflowing.contains(t) || underlying.contains(t)
    }
  }.ensuring(res => res == list.contains(t))

  @pure @extern @inlineOnce
  def :+(t: T): Vector[T] = {
    if (size < MAX_INT) {
      Vector(underlying :+ t, overflowing)
    } else {
      Vector(underlying, overflowing :+ t)
    }
  }.ensuring(res => res.list == list :+ t)

  @pure @extern @inlineOnce
  def +:(t: T): Vector[T] = {
    if (size < MAX_INT) {
      Vector(t +: underlying, overflowing)
    } else {
      // Move the last element of underlying to overflowing
      val last = underlying.last
      Vector(t +: underlying.init, last :: overflowing)
    }
  }.ensuring(res => res.list == t :: list)

  @pure @extern @inlineOnce
  def ++(that: Vector[T]): Vector[T] = {
    if (size + that.size < MAX_INT) {
      Vector(underlying ++ that.underlying, Nil[T]())
    } else if (size < MAX_INT) {
      // We know by the invariant that this.overflowing is empty
      val space = MAX_INT - size
      val (toAddToUnderlying, toAddToOverflowing): (scala.collection.immutable.Vector[T], scala.collection.immutable.Vector[T]) = that.underlying.splitAt(space.toInt)
      Vector(underlying ++ scala.collection.immutable.Vector.from(toAddToUnderlying), List.fromScala(toAddToOverflowing.toList) ++ that.overflowing)
    } else {
      // We know by the invariant that this.underlying is full and this.overflowing is non-empty
      Vector(underlying, overflowing ++ List.fromScala(that.underlying.toList) ++ that.overflowing)
    }
  }.ensuring(res => res.list == list ++ that.list) 

  @pure @extern @inlineOnce
  def forall(f: T => Boolean): Boolean = {
    if (size < MAX_INT) {
      underlying.forall(f)
    } else {
      underlying.forall(f) && overflowing.forall(f)
    }
  }.ensuring(_ == list.forall(f))

  @pure @extern @inlineOnce
  def exists(f: T => Boolean): Boolean = {
    if (size < MAX_INT) {
      underlying.exists(f)
    } else {
      underlying.exists(f) || overflowing.exists(f)
    }
  }.ensuring(_ == list.exists(f))

  @pure @extern @inlineOnce
  def splitAt(i: BigInt): (Vector[T], Vector[T]) = {
    require(0 <= i && i <= size)
    if (size < MAX_INT) {
      val (l, r) = underlying.splitAt(i.toInt)
      (Vector(l), Vector(r))
    } else {
      if (i < MAX_INT) {
        val (l1, r1) = underlying.splitAt(i.toInt)
        (Vector(l1), Vector(r1, overflowing).rebalance())
      } else {
        val (l2, r2) = (overflowing.take(i - MAX_INT), overflowing.drop(i - MAX_INT))
        (Vector(underlying, l2), Vector(scala.collection.immutable.Vector.empty[T] ,r2).rebalance())
      }
    }
  }.ensuring(res => this.list.splitAtIndex(i) == (res._1.list, res._2.list)) 

  @pure @extern @inlineOnce
  def slice(from: BigInt, to: BigInt): Vector[T] = {
    require(0 <= from && from <= to && to <= size)
    if (size < MAX_INT) {
      Vector(underlying.slice(from.toInt, to.toInt))
    } else if (to <= MAX_INT) {
      Vector(underlying.slice(from.toInt, to.toInt))
    } else if (from >= MAX_INT) {
      Vector(scala.collection.immutable.Vector.empty[T], overflowing.slice((from - MAX_INT), (to - MAX_INT))).rebalance()
    } else {
      // we know from < MAX_INT < to
      val leftPart = underlying.slice(from.toInt, Int.MaxValue)
      val rightPart = overflowing.slice(0, to - MAX_INT)
      Vector(leftPart, rightPart).rebalance()
    }
  }.ensuring(res => res.list == list.slice(from, to))

  @pure @extern @inlineOnce
  def filter(f: T => Boolean): Vector[T] = {
    if (size < MAX_INT) {
      Vector(underlying.filter(f))
    } else {
      Vector(underlying.filter(f), overflowing.filter(f)).rebalance()
    }
  }.ensuring(res => res.list == list.filter(f))


  @pure @inlineOnce
  def isEmpty: Boolean = {
    size == 0
  }.ensuring(_ == list.isEmpty)

  def append(t: T): Vector[T] = this :+ t

  def prepend(t: T): Vector[T] = t +: this

  @pure @extern @inlineOnce
  def map[B](f: T => B): Vector[B] = {
    Vector(underlying.map(f), overflowing.map(f))
  }.ensuring(res => res.list == list.map(f))

  @pure @extern @inlineOnce
  def head: T = {
    require(!isEmpty)
    underlying.head
  }.ensuring(_ == list.head)

  @pure @extern @inlineOnce
  def last: T = {
    require(!isEmpty)
    if (size < MAX_INT) {
      underlying.last
    } else {
      if (overflowing.isEmpty) {
        underlying.last
      } else {
        overflowing.last
      }
    }
  }.ensuring(_ == list.last)

  @pure @extern @inlineOnce
  def tail: Vector[T] = {
    require(!isEmpty)
    if (size < MAX_INT) {
      Vector(underlying.tail)
    } else  {
      Vector(underlying.tail, overflowing).rebalance()
    }
  }.ensuring(res => res.list == list.tail)

  // def indexOf(elem: T): BigInt = {
  //   def rec(i: BigInt): BigInt = {
  //     require(0 <= i && i <= size)
  //     decreases(length - i)
  //     if i == length then BigInt(-1)
  //     else if (this(i) == elem) then i
  //     else rec(i + 1)
  //   }.ensuring(res => BigInt(-1) <= res && res < length)
  //   rec(0)
  // }.ensuring(res => -1 <= res && res < length)

  // def indexOfOrLength(elem: T): BigInt = {
  //   val ix = indexOf(elem)
  //   if (ix == -1) length else ix
  // }.ensuring(res => 0 <= res && res <= length)

  @pure @extern
  def toScala: scala.collection.immutable.Vector[T] = underlying

  @pure @extern
  private def rebalance(): Vector[T] = {
    if (size <= MAX_INT) {
      Vector(underlying ++ scala.collection.immutable.Vector.from(overflowing.toScala), Nil[T]())
    } else {
      // Move elements from overflowing to underlying until underlying is full
      val space = MAX_INT - BigInt(underlying.size)
      val (toAddToUnderlying, toRemainInOverflowing) = (overflowing.take(space), overflowing.drop(space))
      Vector(underlying ++ scala.collection.immutable.Vector.from(toAddToUnderlying.toScala), toRemainInOverflowing)
    }
  }.ensuring(res => res.list == list)

  @pure @ghost @inlineOnce
  def dropList(n: BigInt): List[T] = {
    this.list.drop(n)
  }
}
object Vector {
  @pure @extern @inlineOnce @ghost
  def listEqImpliesEq[T](v1: Vector[T], v2: Vector[T]): Unit = {
    require(v1.list == v2.list)
  }.ensuring(_ => v1 == v2)

  @pure @extern @inlineOnce @ghost
  def listApplyEqVecApply[T](v: Vector[T], i: BigInt): Unit = {
    require(0 <= i && i < v.size)
  }.ensuring(_ => v.list.apply(i) == v(i))

  @pure @extern @inlineOnce @ghost
  def applyThenContains[T](v1: Vector[T], i: BigInt): Unit = {
    require(0 <= i && i < v1.size)
  }.ensuring(_ => v1.contains(v1(i)))

  @pure @extern
  def fill[T](n: Int)(t: T): Vector[T] = {
    Vector(scala.collection.immutable.Vector.fill(n)(t))
  }.ensuring(_.list == List.ifill(n)(t))

  @pure @extern
  def empty[T]: Vector[T] = {
    Vector(scala.collection.immutable.Vector.empty[T])
  }.ensuring(_.list == Nil[T]())

  @inlineOnce
  @opaque
  @ghost
  def lemmaTwoListsConcatAssociativity[B](
      l1: List[B],
      l2: List[B],
      l3: List[B]
  ): Unit = {
    decreases(l1)
    l1 match {
      case Cons(hd, tl) => {
        lemmaTwoListsConcatAssociativity(tl, l2, l3)
      }
      case Nil() => ()
    }

  }.ensuring (_ => (l1 ++ l2) ++ l3 == l1 ++ (l2 ++ l3))
  
  @pure @opaque 
  def fromList[T](l: List[T]): Vector[T] = {
    
    def rec(ll: List[T], v: Vector[T]): Vector[T] = {
      decreases(ll.size)
      ll match {
        case Nil() => v
        case Cons(x, xs) => 
          assert(rec(xs, v :+ x).list == (v :+ x).list ++ xs)
          assert((v :+ x).list == v.list ++ List(x))
          ghostExpr(lemmaTwoListsConcatAssociativity(v.list, List(x), xs))
          assert((v.list ++ List(x)) ++ xs == v.list ++ (x :: xs))
          rec(xs, v :+ x)
      }
    }.ensuring(res => res.list == v.list ++ ll)
    rec(l, Vector.empty)
  }.ensuring(_.list == l)

  @pure @extern @inlineOnce @ghost
  def fromListHdTlConstructive[T](hd: T, tl: List[T], v: Vector[T]): Unit = {
    require(v == Vector.fromList(hd :: tl))
  }.ensuring(_ => v == Vector.fromList(tl).prepend(hd))

  @pure 
  def singleton[T](t: T): Vector[T] = {
    empty :+ t
  }.ensuring(_.list == List(t))

  @pure @extern
  def fromScala[T](v: scala.collection.immutable.Vector[T]): Vector[T] = Vector(v)
}