package SET
import stainless.annotation._
import stainless.lang.StaticChecks._

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

  @ghost
  final def U(that: SET): SET = {
    SET.union2(this, that)
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

  @ghost
  def union(s: SET): SET = {
    Ax.eqRep(unionM(Ax.eqClass(s)))
  }
  @ghost @extern 
  def unionM(s: SETMeaning): SETMeaning = {
    (??? : SETMeaning)
  }
  @ghost @extern  
  def unionDefLB(y: SET, x: SET, s: SET): Unit = {
    ()
  } ensuring(_ => !(y in x) || !(x in s) || (y in union(s)))

  @ghost @extern  
  def unionDefUB(y: SET, s: SET): SET = {
    (??? : SET)
  } ensuring(x => !(y in union(s)) || ((y in x) && (x in s)))

  @ghost
  def union2(s1: SET, s2: SET): SET = union(SET(s1, s2))
}

// Only for use in eqClass to apply == to it.
abstract class SETMeaning { }

object Ax {
  @extern @ghost
  def eqClass(s: SET): SETMeaning = {
    /* Kernel of the equivalence relation on the stainless representation
       of the SET class, maps set representations into their equivalence classes
       that are actual mathematical sets and are denoted by SETMeaning.
       This definition allows solvers to efficiently use 
       reflexivity, transitivity, and (when also used for `in`) 
       congruence of the equality.  */
    ???
  }
  @extern @ghost
  def elem(sm1: SETMeaning, sm2: SETMeaning): Boolean = {
    ???
  }

  @extern @ghost
  def eqRep(m: SETMeaning): SET = {
    (??? : SET)
  } ensuring((s: SET) => eqClass(s) == m)
  
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
  @extern
  def subseteqDef(s1: SETMeaning, s2: SETMeaning): Boolean =  {
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

