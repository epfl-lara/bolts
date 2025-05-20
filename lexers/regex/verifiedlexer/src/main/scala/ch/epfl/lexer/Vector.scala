package ch.epfl.lexer

import stainless.collection._
import stainless.annotation._

import stainless.lang._
import StaticChecks._

case class Vector[T](@pure @extern underlying: scala.collection.immutable.Vector[T]) {

  @ghost @pure @extern
  def list: List[T] = List.fromScala(underlying.toList)

  @pure @extern
  def isize: Int = {
    underlying.size
  }.ensuring(_ == list.isize)

  @pure @extern 
  def size: BigInt = {
    BigInt(underlying.size)
  }.ensuring(res => res == list.size)

  @pure
  def length: BigInt = size

  @pure @extern
  def apply(i: BigInt): T = {
    require(0 <= i && i < size)
    underlying(i.toInt)
  }.ensuring(_ == list.apply(i))

  @pure @extern
  def :+(t: T): Vector[T] = {
    Vector(underlying :+ t)
  }.ensuring(res => res.list == list :+ t && res.isize == (if (isize == Int.MaxValue) Int.MaxValue else isize + 1))

  @pure @extern
  def +:(t: T): Vector[T] = {
    Vector(t +: underlying)
  }.ensuring(res => res.list == t :: list && res.isize == (if (isize == Int.MaxValue) Int.MaxValue else isize + 1))

  @pure @extern
  def ++(that: Vector[T]): Vector[T] = {
    Vector(underlying ++ that.underlying)
  }.ensuring(res => res.list == list ++ that.list && (res.isize == Int.MaxValue || res.isize == isize + that.isize)) 

  @pure @extern
  def forall(f: T => Boolean): Boolean = {
    underlying.forall(f)
  }.ensuring(_ == list.forall(f))

  @pure @extern
  def exists(f: T => Boolean): Boolean = {
    underlying.exists(f)
  }.ensuring(_ == list.exists(f))

  @pure @extern
  def splitAt(i: BigInt): (Vector[T], Vector[T]) = {
    require(0 <= i && i <= size)
    val (l, r) = underlying.splitAt(i.toInt)
    (Vector(l), Vector(r))
  }.ensuring(res => this.list.splitAtIndex(i) == (res._1.list, res._2.list))  


  @pure 
  def isEmpty: Boolean = {
    isize == 0
  }.ensuring(_ == list.isEmpty)

  def append(t: T): Vector[T] = this :+ t

  def prepend(t: T): Vector[T] = t +: this

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

  @pure @ghost
  def dropList(n: BigInt): List[T] = {
    this.list.drop(n)
  }
}
object Vector {
  @pure @extern @opaque @inlineOnce @ghost
  def listEqImpliesEq[T](v1: Vector[T], v2: Vector[T]): Unit = {
    require(v1.list == v2.list)
  }.ensuring(_ => v1 == v2)

  @pure @extern @opaque @inlineOnce @ghost
  def listApplyEqVecApply[T](v: Vector[T], i: BigInt): Unit = {
    require(0 <= i && i < v.size)
  }.ensuring(_ => v.list.apply(i) == v(i))

  @pure @extern
  def fill[T](n: Int)(t: T): Vector[T] = {
    Vector(scala.collection.immutable.Vector.fill(n)(t))
  }.ensuring(_.list == List.ifill(n)(t))

  @pure @extern
  def empty[T]: Vector[T] = {
    Vector(scala.collection.immutable.Vector.empty[T])
  }.ensuring(_.list == Nil[T]())

  @pure @extern
  def fromList[T](l: List[T]): Vector[T] = {
    def rec(l: List[T], v: Vector[T]): Vector[T] = {
      l match {
        case Nil() => v
        case Cons(x, xs) => rec(xs, v :+ x)
      }
    }
    rec(l, Vector.empty)
  }.ensuring(_.list == l)

  @pure 
  def singleton[T](t: T): Vector[T] = {
    empty :+ t
  }.ensuring(_.list == List(t))

  @pure @extern
  def fromScala[T](v: scala.collection.immutable.Vector[T]): Vector[T] = Vector(v)
}