package SET
import stainless.annotation._
import stainless.lang.StaticChecks._

/* Axiomatization of Zermelo-Fraenkel set theory in Stainless.

   We take axioms and definitions, split equivalences into two
   implications and skolemize existential quantifiers to obtain only
   universal ones.

   We promote the resulting universally quantified variables into
   function arguments.

    For equality, we would like to benefit from congruence closure
    reasoning of built-in equality `==` but cannot necessarily use it
    directly because it differentiates sets we consider equal.
    Therefore, we use a function mapping SET into an auxiliary type
    SETMeaning on which we apply `==`.  
*/
  
abstract class SET {
  // Subclassing does not define behavior (axioms do).
  // The methods are just for infix operators.
  
  @ghost
  final def ===(that: SET): Boolean = {
    SET.eqClass(this) == SET.eqClass(that)
  }
  @ghost
  final def =!=(that: SET): Boolean = {
    !(SET.eqClass(this) == SET.eqClass(that))
  }

  @ghost
  final def in(set: SET): Boolean = { // `∈`
    SET.elem(SET.eqClass(set), SET.eqClass(this))
  }
  @ghost
  final def subsetEq(that: SET): Boolean = {
    SET.subseteqDef(SET.eqClass(this), SET.eqClass(that))
  }

  @ghost @inline
  final def U(that: SET): SET = {
    SET.union2(this, that)
  }
}

// Only for use in eqClass to apply == to it.
abstract class SETMeaning { }

object SET {
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

  // Union of a set of sets  
  @ghost
  def union(s: SET): SET = {
    eqRep(unionM(eqClass(s)))
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

  // Powerset of a set 
  @ghost @extern
  def powerset(s: SET): SET = {
    eqRep(powersetM(eqClass(s)))
  }
  @ghost @extern 
  def powersetM(s: SETMeaning): SETMeaning = {
    (??? : SETMeaning)
  }
  @ghost @extern
  def powerSetDef(s: SET, e: SET): Unit = {
    ()
  } ensuring(_ => (e in powerset(s)) == (e subsetEq s))

  // disjointness operator definition
  @ghost 
  def disjoint(s1: SET, s2: SET): Boolean = {
    disjointM(eqClass(s1), eqClass(s2))
  }
  @ghost @extern
  def disjointM(m1: SETMeaning, m2: SETMeaning): Boolean = {
    (??? : Boolean)
  }
  @ghost @extern
  def disjointDef(s1: SET, s2: SET, x: SET): Unit = {
    ()
  } ensuring(_ => !(x in s1) || !(x in s2))
  
  // Foundation axiom
  def foundationWitn(s: SET): SET = {
    (??? : SET)
  } ensuring((elem: SET) =>
    (elem === empty) ||
             ((elem in s) && disjoint(elem, s)))

  // Comprehension schema with shallowly embedded predicates
  @ghost
  def filter(s: SET, p: SET => Boolean): SET = {
    eqRep(filterM(eqClass(s), (m:SETMeaning) => p(eqRep(m))))
  }
  @ghost @extern
  def filterM(m: SETMeaning, p: SETMeaning => Boolean): SETMeaning = {
    (??? : SETMeaning)
  }
  @ghost @extern
  def filterDef(s: SET, p: SET => Boolean, e: SET): Unit = {
    ()
  } ensuring(_ => (e in filter(s,p)) == ((e in s) && p(e)))

  // Functional relation definition
  @ghost
  def functional(r: (SET, SET) => Boolean): Boolean = {
    functionalM((m1:SETMeaning, m2:SETMeaning) => r(eqRep(m1), eqRep(m2)))
  }
  @ghost @extern
  def functionalM(r: (SETMeaning, SETMeaning) => Boolean): Boolean = {
    (??? : Boolean)
  }
  @ghost @extern
  def functionalDef(r: (SET, SET) => Boolean, x: SET, y1: SET, y2: SET): Unit = {
    ()
  } ensuring(_  => !functional(r) || !r(x, y1) || !r(x, y2) || (y1 === y2))
  
  @ghost @extern
  def functionalDefWitn(r: (SET, SET) => Boolean): (SET, SET, SET) = {
    (??? : (SET, SET, SET))
  } ensuring((triple:(SET,SET,SET)) => {
    val (x, y1, y2) = triple
    functional(r) || (r(x, y1) && r(x, y2) && !(y1 === y2))})

  // Replacement schema with shallowly embedded predicates
  @ghost
  def image(s: SET, r: (SET, SET) => Boolean): SET = {
    eqRep(imageM(eqClass(s), (m1:SETMeaning, m2:SETMeaning) => r(eqRep(m1), eqRep(m2))))
  }
  @ghost @extern
  def imageM(m: SETMeaning, r: (SETMeaning, SETMeaning) => Boolean): SETMeaning = {
    (??? : SETMeaning)
  }
  @ghost @extern
  def imageDef(s: SET, r: (SET, SET) => Boolean, x: SET, y: SET): Unit = {
    ()
  } ensuring(_ =>
    !functional(r) || !(x in s) || !r(x,y) || (y in image(s,r)))
  @ghost @extern
  def imageDefWitn(s: SET, r: (SET, SET) => Boolean, y: SET): SET = {
    (??? : SET)
  } ensuring((x:SET) =>
    !functional(r) || !(y in image(s,r)) || ((x in s) && r(x,y)))
  
}
