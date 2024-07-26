/* This is an array wrapper that to the client appears mostly 
   as an updatable immutable stainless.collection.List.
   It should enable verifying code using it with --solvers=smt-cvc5 

   Note that the stored elements are assumed immutable.
*/

import stainless.lang.*
import stainless.collection.*
import stainless.annotation.*
import StaticChecks.*
import scala.reflect.{ClassTag as ScalaClassTag}

@library
final class SimpleArray[T](@extern private val underlying: Array[T]) {
  @ghost @pure @extern
  def toList: List[T] = {
    List.fromScala(underlying.toList)
  }
  @extern @pure
  def size: Int = {
    underlying.size
  }.ensuring(res => res == toList.isize)

  @extern @pure
  def apply(i: Int): T = {
    require(0 <= i && i < size)
    underlying(i)
  }.ensuring(_ == toList.iapply(i))

  @extern
  def update(i: Int, v: T): Unit = {
    require(0 <= i && i < size)
    underlying(i) = v
  }.ensuring(_ => toList == old(this).toList.iupdated(i, v))
}

// this should be probably in stainless.lang
final case class ClassTag[T](@pure @extern actual: ScalaClassTag[T])

@library
object SimpleArray {
  @extern
  def ofInt(size: Int): SimpleArray[Int] = {
    require(0 <= size)
    SimpleArray(Array[Int](size))
  } ensuring(res => res.toList == List.ifill(size)(0))

  @extern
  def fill[T](using ct: ClassTag[T])(size: Int)(elem: T): SimpleArray[T] = {
    require(0 <= size)
    given ctr: ScalaClassTag[T] = ct.actual
    SimpleArray(Array.fill(size)(elem))
  } ensuring(res => res.toList == List.ifill[T](size)(elem))

}


object TestSimpleArray {
  // with Version: 0.9.8.7-18-ga38d80a, moving this class def inside `def test` creates inv whose establishment fails
  final case class Egg(n: Int)

  def test =
    val a1 = SimpleArray.ofInt(3)
    assert(a1.toList == List(0,0,0))
    a1(1) = 7
    assert(a1.toList == List(0,7,0))


    @extern @pure
    def eggTag: ClassTag[Egg] = {
      val t = summon[ScalaClassTag[Egg]]
      ClassTag[Egg](t)
    }

    val e1 = SimpleArray.fill[Egg](using eggTag)(3)(Egg(2))
    assert(e1.toList == List(Egg(2), Egg(2), Egg(2)))
    e1(2) = Egg(42)
    assert(e1.toList == List(Egg(2), Egg(2), Egg(42)))
}
