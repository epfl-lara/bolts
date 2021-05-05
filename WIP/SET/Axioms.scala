package SET

import stainless.annotation._
import stainless.lang.StaticChecks._
import stainless.proof._

abstract class SETMeaning {
}

abstract class SET {
  // Subclassing does not define behavior (axioms do).
  // The methods are just for infix operators.
  
  @ghost
  final def ===(that: SET): Boolean = {
    Ax.eqClass(this) == Ax.eqClass(that)
  }
  @ghost
  final def =!=(that: SET): Boolean = {
    !(Ax.eqClass(this) == Ax.eqClass(that))
  }

  @ghost
  final def in(set: SET): Boolean = { // `∈`
    Ax.elem(Ax.eqClass(set), Ax.eqClass(this))
  }
  @ghost
  final def subsetEq(that: SET): Boolean = {
    Ax.subseteqDef(Ax.eqClass(this), Ax.eqClass(that))
  }
}

object SET {
  def empty = new SET { }

  @ghost @extern
  def emptyDef(elem: SET): Unit = {
    ()
  }.ensuring(res => !(elem in empty))

  @ghost @extern 
  def singleton(elem: SET): SET = new SET { }

  @ghost @extern 
  def singletonDef(elem: SET, x: SET): Unit = {
    ()
  } ensuring(_ => ((x in singleton(elem)) == (x === elem)))

 
  @ghost @extern 
  def uPair(e1: SET, e2: SET): SET = new SET { }

  @ghost @extern 
  def uPairDef(e1: SET, e2: SET, x: SET): Unit = {
    ()
  } ensuring(_ => ((x in uPair(e1, e2)) == ((x === e1) || (x === e2))))
  
  @ghost
  def apply(): SET = empty
  @ghost
  def apply(elem: SET): SET = singleton(elem)
  @ghost
  def apply(e1: SET, e2: SET): SET = uPair(e1, e2)
}

object Ax {
  @extern @ghost
  def eqClass(s: SET): SETMeaning = {
    /* Kernel of the equivalence relation on the stainless representation
       of the SET class, maps set representations into actual sets.
       It allows us to use built-in equality for the usual extensional
       equality of sets. */
    ???
  }
  @extern @ghost
  def elem(sm1: SETMeaning, sm2: SETMeaning): Boolean = {
    ???
  }
  
  // ...............................
  // extensionality of set equality
  // ...............................
  @extern
  def notEqWitn(a: SET, b: SET): SET = {
    (??? : SET)
  } ensuring((w:SET) => (a === b) ||
             ((w in a) && !(w in b)) ||
             (!(w in a) && (w in b)))


  // ...............................
  // subseteq
  // ...............................  
  // used in the infix operator method of SET
  @extern def subseteqDef(s1: SETMeaning, s2: SETMeaning): Boolean =  {
    ???
  }
  
  // definition of subset, part 1
  @extern
  def subseteq(a: SET, b: SET, e: SET): Unit = {
    ()
  } ensuring(_ => !(a subsetEq b) || !(e in a) || (e in b))

  // definition of subset, part 2 skolemized
  @extern
  def notSubseteqWitn(a: SET, b: SET): SET = {
    (??? : SET)
  } ensuring((w : SET) => (a subsetEq b) ||
             ((w in a) && !(w in b)))
}

object Basic {
  // .............................................................
  // equality properties that follow from definition via eqKernel
  // .............................................................
  def refl(s: SET): Unit = { 
    ()
  } ensuring (_ => s === s)

  def sym(s1: SET, s2: SET): Unit = {
    ()
  } ensuring (_ => (s1 =!= s2) || (s2 === s1))

  def tran(s1: SET, s2: SET, s3: SET): Unit = {
    ()
  } ensuring(_ => (s1 =!= s2) || (s2 =!= s3) || (s1 === s3))

  def congL(a: SET, b: SET, a1: SET): Unit = {
    ()
  } ensuring(_ => !(a in b) || (a =!= a1) || (a1 in b))
  
  def congR(a: SET, b: SET, b1: SET): Unit = {
    ()
  } ensuring(_ => !(a in b) || !(b === b1) || (a in b1))

  // two subsets imply equality
  def subsetsEq(a: SET, b: SET): Unit = {
    val w = Ax.notEqWitn(a, b)      
    Ax.subseteq(a, b, w)
    Ax.subseteq(b, a, w)
  } ensuring(_ => !(a subsetEq b) || !(b subsetEq a) || (a === b))

  @ghost
  def one : SET = {
    val one = SET(SET.empty)
  
    SET.singletonDef(SET.empty, SET.empty)
    assert(SET.empty in one)
    SET.emptyDef(SET.empty)
    assert(!(SET.empty in SET.empty))
    assert(SET.empty =!= one)
    val w = Ax.notSubseteqWitn(SET.empty, one)
    SET.emptyDef(w)
 
    one
  } ensuring(one =>
    (SET.empty in one)
    && (SET.empty =!= one)
    && (SET.empty subsetEq one))
  
}
