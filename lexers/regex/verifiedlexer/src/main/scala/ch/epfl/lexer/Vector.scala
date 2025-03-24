package ch.epfl.lexer

import stainless.collection.List
import stainless.collection.Nil
import stainless.collection.Cons
import stainless.annotation.*
import stainless.lang.*
import stainless.lang.StaticChecks.*

case class Vector[T](@pure @extern underlying: scala.collection.immutable.Vector[T]) extends Seq[T] {
  @ghost @pure @extern
  override def toList: List[T] = List.fromScala(underlying.toList)

  @pure @extern
  override def isize: Int = {
    underlying.size
  }.ensuring(_ == toList.isize)

  @pure @extern
  override def isEmpty: Boolean = {
    underlying.isEmpty
  }.ensuring(_ == toList.isEmpty)

  @pure @extern
  override def contains(v: T): Boolean = {
    underlying.contains(v)
  }.ensuring(_ == toList.contains(v))

  @pure @extern
  override def head: T = {
    require(!isEmpty)
    underlying.head
  }.ensuring(_ == toList.head)

  @pure @extern
  override def tail: Vector[T] = {
    require(!isEmpty)
    Vector(underlying.tail)
  }.ensuring(_.toList == toList.tail)

  @pure @extern
  override def apply(index: Int): T = {
    require(0 <= index && index < isize)
    underlying(index)
  }.ensuring(_ == toList.iapply(index))

  @pure @extern
  override def +:(t: T): Vector[T] = {
    Vector(t +: underlying)
  }.ensuring(res => res.toList == t :: toList)

  @pure @extern
  override def :+(t: T): Vector[T] = {
    Vector(underlying :+ t)
  }.ensuring(res => res.toList == toList :+ t)

  @pure @extern
  override def reverse: Vector[T] = {
    Vector(underlying.reverse)
  }.ensuring(res => res.toList == toList.reverse)

  @pure @extern
  override def -(e: T): Vector[T] = {
    Vector(underlying.filterNot(_ == e))
  }.ensuring(res => res.toList == toList.-(e))

  @pure @extern
  override def last: T = {
    require(!isEmpty)
    underlying.last
  }.ensuring(_ == toList.last)

  @pure @extern
  override def forall(p: T => Boolean): Boolean = {
    underlying.forall(p)
  }.ensuring(_ == toList.forall(p))

  @pure @extern
  override def exists(p: T => Boolean): Boolean = {
    underlying.exists(p)
  }.ensuring(_ == toList.exists(p))

  @pure @extern
  override def find(p: T => Boolean): Option[T] = {
    underlying.find(p) match
      case scala.None        => None[T]()
      case scala.Some(value) => Some(value)
  }.ensuring(res => res == toList.find(p))

  @pure @extern
  override def toSet: Set[T] = {
    Set.fromScala(underlying.toSet)
  }.ensuring(_ == toList.toSet)

  @pure @extern
  def ++(that: Vector[T]): Vector[T] = {
    Vector(underlying ++ that.underlying)
  }.ensuring(res => res.toList == (toList ++ that.toList))
}

object Vector {
  @pure @extern @opaque @inlineOnce
  def listEqImpliesEq[T](v1: Vector[T], v2: Vector[T]): Unit = {
    require(v1.toList == v2.toList)
  }.ensuring(_ => v1 == v2)

  @pure @extern @opaque @inlineOnce
  def listApplyEqVecApply[T](v: Vector[T], i: Int): Unit = {
    require(0 <= i && i < v.isize)
  }.ensuring(_ => v.toList.iapply(i) == v(i))

  @pure @extern
  def fill[T](n: Int)(t: T): Vector[T] = {
    Vector(scala.collection.immutable.Vector.fill(n)(t))
  }.ensuring(_.toList == List.ifill(n)(t))

  @pure @extern
  def empty[T]: Vector[T] = {
    Vector(scala.collection.immutable.Vector.empty[T])
  }.ensuring(_.toList == Nil[T]())

  @pure @extern
  def of[T](t: T): Vector[T] = {
    Vector(scala.collection.immutable.Vector(t))
  }.ensuring(_.toList == Cons(t, Nil[T]()))

  @pure @extern
  def fromList[T](l: List[T]): Vector[T] = {
    def rec(l: List[T], v: Vector[T]): Vector[T] = {
      l match {
        case Nil()       => v
        case Cons(x, xs) => rec(xs, v :+ x)
      }
    }
    rec(l, Vector.empty)
  }.ensuring(_.toList == l)

  @pure @extern
  def fromScala[T](v: scala.collection.immutable.Vector[T]): Vector[T] = Vector(v)
}
