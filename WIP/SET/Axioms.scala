package SET

import stainless.annotation._
import stainless.lang.StaticChecks._
import stainless.proof._


abstract class SET {
  def contains(elem : SET): Boolean = {
    ???
  }
  final def ===(that: SET): Boolean = SET.unknown2(this, that)
  final def =!=(that: SET): Boolean = !SET.unknown2(this, that)

  final def `∈`(set: SET): Boolean = set.contains(this)
  final def `∉`(set: SET): Boolean = !set.contains(this)
  def `⊆`(that: SET): Boolean = SET.unknown2a(this, that)
}

final case object `∅` extends SET {
  override def contains(elem: SET): Boolean = false
}

object SET {
  @extern def unknown2(s1: SET, s2: SET): Boolean =  {
    ???
  }
  @extern def unknown2a(s1: SET, s2: SET): Boolean =  {
    ???
  }
  
  def singleton(elem: SET): SET = new SET {
    override def contains(e: SET): Boolean = {
      e === elem
    }
  }
  def unordered(e1: SET, e2: SET): SET = new SET {
    override def contains(e: SET): Boolean = {
      (e === e1) || (e === e2)
    }
  }
  
  def apply(elem: SET): SET = singleton(elem)
  def apply(e1: SET, e2: SET): SET = unordered(e1, e2)
}

object Ax {
  // .............................................
  // Some of the axioms for set equality 
  // .............................................
  @extern
  def refl(s: SET): Unit = { 
    ()
  } ensuring (_ => s === s)

  @extern
  def sym(s1: SET, s2: SET): Unit = {
    ()
  } ensuring (_ => (s1 =!= s2) || (s2 === s1))

  @extern
  def trans(s1: SET, s2: SET, s3: SET): Unit = {
    ()
  } ensuring(_ => (s1 =!= s2) || (s2 =!= s3) || (s1 === s3))

  @extern
  def congL(a: SET, b: SET, a1: SET): Unit = {
    ()
  } ensuring(_ => !(a ∈ b) || (a =!= a1) || (a1 ∈ b))
  
  @extern
  def congR(a: SET, b: SET, b1: SET): Unit = {
    ()
  } ensuring(_ => (a ∉ b) || (b =!= b1) || (a ∈ b1))

  @extern
  def notEqWitn(a: SET, b: SET): SET = {
    (??? : SET)
  } ensuring((w:SET) => (a === b) ||
             (w ∈ a && w ∉ b) ||
             (w ∉ a && w ∈ b))

  @extern
  def subseteq(a: SET, b: SET, e: SET): Unit = {
    ()
  } ensuring(_ => !(a ⊆ b) || (e ∉ a) || (e ∈ b))

  @extern
  def notSubseteqWitn(a: SET, b: SET): SET = {
    (??? : SET)
  } ensuring((w : SET) => (a ⊆ b) ||
             ((w ∈ a) && (w ∉ b)))  
}

object Basic {
  def subsetsEq(a: SET, b: SET): Unit = {
    val w = Ax.notEqWitn(a, b)      
    Ax.subseteq(a, b, w)
    Ax.subseteq(b, a, w)
  } ensuring(_ => !(a ⊆ b) || !(b ⊆ a) || (a === b)) 
}

object Test {
  def empty1 = {
    assert(∅ ∉ ∅)
    Ax.refl(∅)
    val one = SET(∅)
    assert(∅ ∈ one)
    Ax.sym(∅, one)
    Ax.congR(∅, one, ∅)
    assert(∅ =!= one)
    val w = Ax.notSubseteqWitn(∅, one)
    assert(∅ ⊆ one) 
  }
}
