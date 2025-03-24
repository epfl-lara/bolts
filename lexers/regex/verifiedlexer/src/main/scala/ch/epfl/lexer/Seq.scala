package ch.epfl.lexer

import stainless.collection.List
import stainless.lang.*
import stainless.annotation.*
import stainless.lang.StaticChecks.*

trait Seq[T]:

  @ghost @pure
  def toList: List[T]

  def isize: Int = {
    ??? : Int
  }.ensuring(_ == toList.isize)

  def isEmpty: Boolean = {
    ??? : Boolean
  }.ensuring(_ == toList.isEmpty)

  def contains(v: T): Boolean = {
    ??? : Boolean
  }.ensuring(_ == toList.contains(v))

  def head: T = {
    require(!isEmpty)
    ??? : T
  }.ensuring(_ == toList.head)

  def tail: Seq[T] = {
    require(!isEmpty)
    ??? : Seq[T]
  }.ensuring(_.toList == toList.tail)

  def apply(index: Int): T = {
    require(0 <= index && index < isize)
    ??? : T
  }.ensuring(_ == toList.iapply(index))

  def +:(t: T): Seq[T] = {
    ??? : Seq[T]
  }.ensuring(res => res.toList == t :: toList)

  def :+(t: T): Seq[T] = {
    ??? : Seq[T]
  }.ensuring(res => res.toList == toList :+ t)

  def reverse: Seq[T] = {
    ??? : Seq[T]
  }.ensuring(res => res.toList == toList.reverse)

  def -(e: T): Seq[T] = {
    ??? : Seq[T]
  }.ensuring(res => res.toList == toList.-(e))

  def last: T = {
    require(!isEmpty)
    ??? : T
  }.ensuring(_ == toList.last)

  def forall(p: T => Boolean): Boolean = {
    ??? : Boolean
  }.ensuring(_ == toList.forall(p))

  def exists(p: T => Boolean) = {
    ??? : Boolean
  }.ensuring(_ == toList.exists(p))

  def find(p: T => Boolean): Option[T] = {
    ??? : Option[T]
  }.ensuring(res => res == toList.find(p))

  def toSet: Set[T] = {
    ??? : Set[T]
  }.ensuring(_ == toList.toSet)

end Seq
