/* Copyright 2009-2018 EPFL, Lausanne */

import stainless.annotation._
import stainless.lang._
import stainless.collection._

object AddBitwise {
  type Digits = List[Boolean]
  val zero = Nil[Boolean]()

  def addCom0(x: Long, y: Long): Unit = {
  }.ensuring(_ => x + y == y + x)
  
  def add(x: Digits, y: Digits, carry: Boolean): Digits = {    
    require(x.length == y.length)
    (x,y) match {
      case (Nil(), Nil()) => if (carry) true::zero else zero
      case (Cons(x1,xs), Cons(y1,ys)) => {
	val z = x1 ^ y1 ^ carry
	val carry1 = (x1 && y1) || (x1 && carry) || (y1 && carry)
	z :: add(xs, ys, carry1)  } } }

  def addCom(x: Digits, y: Digits, carry: Boolean): Unit = {
    require(x.length == y.length)
    (x,y) match {
      case (Cons(x1,xs), Cons(y1,ys)) => {
	val carry1 = (x1 && y1) || (x1 && carry) || (y1 && carry)
	addCom(xs, ys, carry1) }
      case _ => () }
  }.ensuring(_ => add(x, y, carry) == add(y, x, carry))
}
