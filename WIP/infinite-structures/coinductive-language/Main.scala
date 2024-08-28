import stainless.lang._
import stainless.collection._
import stainless.annotation._

object Main {
  type Word[A] = List[A]

  def equivalentContains[A](l1: Lang[A], l2: Lang[A], w: Word[A]) = 
    l1.contains(w) == l2.contains(w)

  case class Lang[A](oo: Boolean, dd: A => Lang[A]) {
    def ===(that: Lang[A]): Boolean = {
      forall((w: Word[A]) => equivalentContains(this,that,w))
    }

    def =!=(that: Lang[A]): Boolean = !(this === that)

    def contains(w: Word[A]): Boolean = w match {
      case Nil() => oo
      case Cons(x,xs) => dd(x).contains(xs)
    }

    def residual(w: Word[A]): Lang[A] = w match {
      case Nil() => this
      case Cons(x,xs) => dd(x).residual(xs)
    }

    // union
    // We will automatically infer (and prove by induction) that:
    // Lemma 1: For every n, if this and that are usable n times, then 
    // this + that is usable n times.
    // Proof.
    // By definition, this.dd(a) and that.dd(a) are usable n-1 times
    // By induction hypothesis, this.dd(a) + that.dd(a) is usable n-1 times,
    // and we conclude that 
    // Lang(this.oo || that.oo, a => this.dd(a) + that.dd(a)) is usable n times
    def +(that: Lang[A]): Lang[A] =
      Lang(this.oo || that.oo, a => this.dd(a) + that.dd(a))

    // concatenation
    // Similarly, we can prove:
    // Lemma 2: For every n, if this and that are usable n times, then
    // this $ that is usable n times.
    // Proof.
    // Similar to Lemma 1. Moreover we have to use Lemma 1 because the 
    // definition of $ involves +.
    def $(that: Lang[A]): Lang[A] = 
      Lang(this.oo && that.oo, a =>
        if (this.oo) 
          (this.dd(a) `$` that) + that.dd(a)
        else 
          this.dd(a) `$` that
      )

    // intersection
    // Lemma 3: For every n, if this and that are usable n times, then
    // this n that is usable n times.
    // Proof.
    // Similar to Lemma 1.
    def n(that: Lang[A]): Lang[A] = 
      Lang(this.oo && that.oo, a => this.dd(a) `n` that.dd(a))

    // Kleene iteration
    // Lemma 4: for every n, if this is usable n times, then this.star is 
    // usable n times.
    // Proof.
    // Similar to Lemma 1. Uses Lemma 2.
    def star: Lang[A] =
      Lang(true, a => this.dd(a) `$` star)

    // complement
    // Lemma 5: for every n, if this is usable n times, then this.c is usable
    // n times.
    // Proof.
    // Similar to Lemma 1.
    def c: Lang[A] =
      Lang(!oo, a => dd(a).c)

    // shuffle operator
    // Lemma 6: for every n, if this and that are usable n times, then 
    // this | that is usable n times.
    // Proof.
    // Again by induction on n, and makes use of Lemma 1.
    def |(that: Lang[A]): Lang[A] =
      Lang(this.oo && that.oo, a =>
        (this.dd(a) | that) +
        (this | that.dd(a))
      )

    // subseteq
    def <=(that: Lang[A]): Boolean = this + that === that

    // strict subset
    def <(that: Lang[A]): Boolean = this <= that && this =!= that
  }


  // proving usability automatically might be a more difficult here
  // we have to know that if ls is usable n times, then 
  // ls.map(_.dd(a)) is usable n-1 times
  def sum[A](ls: List[Lang[A]]): Lang[A] =
    Lang[A](
      ls.exists(_.oo),
      a => sum(ls.map(_.dd(a)))
    )

  // // this one seems tough...
  // def product[A](ls: List[Lang[A]]): Lang[A] =
  //   Lang[A](
  //     ls.forall(_.oo),
  //     a => {
  //       val n = ls.takeWhile(_.oo).length
  //       sum(tails(ls :+ one[A]).take(n+1).map(
  //         zs => product(zs.head.dd(a) :: zs.tail)
  //       ))
  //     }
  //   )

  // the empty Lang
  def zero[A]: Lang[A] = Lang(false, _ => zero)

  // the language containing only the empty word
  def one[A]: Lang[A] = Lang(true, _ => zero)

  // the language containing only the letter 'a'
  def atom[A](a: A): Lang[A] =
    Lang(false, b => if (b == a) one else zero)

  // the full language
  def full[A]: Lang[A] = Lang(true, _ => full)

  def residual_contains_oo[A](l: Lang[A], w: Word[A]): Boolean = {
    w match {
      case Nil() => 
        l.residual(w).oo == l.contains(w)
      case Cons(x,xs) => 
        assert(residual_contains_oo(l.dd(x), xs))
        l.residual(w).oo == l.contains(w)
    }
  } .holds

  def plus_zerol_contains[A](l: Lang[A], w: Word[A]): Boolean = {
    w match {
      case Nil() => 
        (zero + l).contains(w) == l.contains(w)  
      case Cons(x,xs) =>
        assert(plus_zerol_contains(l.dd(x), xs))
        (zero + l).contains(w) == l.contains(w)  
    }
    
  } .holds
  
  // zero is neutral for plus
  def plus_zerol[A](l: Lang[A]) = {
    assert(forall((w: Word[A]) => {
      assert(plus_zerol_contains(l, w))
      equivalentContains(zero + l, l, w)
    }))
    zero + l === l
  } .holds

  // def plus_zeror[A](l: Lang[A]) = {
  //   l + zero === l
  // } .holds

  // def plus_dd[A](l1: Lang[A], l2: Lang[A], x: A): Boolean = {
  //   (l1 + l2).dd(x) == l1.dd(x) + l2.dd(x)
  // } .holds

  // def plus_lemma[A](l1: Lang[A], l2: Lang[A], w: Word[A]): Boolean = {
  //   assert(
  //     w match {
  //       case Nil() => true
  //       case Cons(x,xs) => plus_lemma(l1.dd(x), l2.dd(x), xs) // induction hypothesis
  //     }
  //   )
  //   (l1 + l2).contains(w) == (l1.contains(w) || l2.contains(w))
  // } .holds

  // // plus is associative (contains)
  // def plus_assoc_lemma[A](l1: Lang[A], l2: Lang[A], l3: Lang[A], w: Word[A]) = {
  //   assert(plus_lemma(l1,l2,w))
  //   assert(plus_lemma(l2,l3,w))
  //   assert(plus_lemma(l1,l2 + l3,w))
  //   assert(plus_lemma(l1 + l2,l3,w))
  //   (l1 + (l2 + l3)).contains(w) == ((l1 + l2) + l3).contains(w)
  // } .holds

  // // plus is associative
  // def plus_assoc[A](l1: Lang[A], l2: Lang[A], l3: Lang[A]) = {
  //   assert(forall((w: Word[A]) => {
  //     assert(plus_assoc_lemma(l1,l2,l3,w))
  //     (l1 + (l2 + l3)).contains(w) == ((l1 + l2) + l3).contains(w)
  //   }))
  //   l1 + (l2 + l3) === (l1 + l2) + l3
  // } .holds

  // // plus is commutative (contains)
  // def plus_comm_lemma[A](l1: Lang[A], l2: Lang[A], w: Word[A]) = {
  //   plus_lemma(l1,l2,w)
  //   plus_lemma(l2,l1,w)
  //   (l1 + l2).contains(w) == (l2 + l1).contains(w)
  // } .holds

  // // plus is commutative
  // def plus_comm[A](l1: Lang[A], l2: Lang[A]) = {
  //   assert(forall((w: Word[A]) => {
  //     assert(plus_comm_lemma(l1,l2,w))
  //     (l1 + l2).contains(w) == (l2 + l1).contains(w)
  //   }))
  //   l1 + l2 === l2 + l1
  // } .holds

  // // a combination of associativity and commutativity
  // def plus_rotate[A](l1: Lang[A], l2: Lang[A], l3: Lang[A]) = {
  //   assert(plus_assoc(l1,l2,l3))
  //   assert(plus_comm(l1,l2))
  //   assert(plus_assoc(l2,l1,l3))
  //   l1 + (l2 + l3) === l2 + (l1 + l3)
  // } .holds
  
  // // plus is idempotent
  // def plus_idem[A](l: Lang[A]) = {
  //   assert(forall((w: Word[A]) => {
  //     assert(plus_lemma(l,l,w))
  //     (l + l).contains(w) == l.contains(w)
  //   }))
  //   l + l === l
  // } .holds
  
  // // a combination of associativity and idempotence
  // def plus_idem_assoc[A](l1: Lang[A], l2: Lang[A]) = {
  //   assert(plus_assoc(l1,l1,l2))
  //   assert(plus_idem(l1))
  //   l1 + (l1 + l2) === l1 + l2
  // } .holds

  // // union with one does nothing when oo is true
  // def plus_one_l[A](l: Lang[A]) = {
  //   require(l.oo)

  //   one + l === l
  // } .holds

  // // union with one does nothing when oo is true
  // def plus_one_r[A](l: Lang[A]) = {
  //   require(l.oo)

  //   l + one === l
  // } .holds

  // // concatenation with the empty Lang is empty
  // def times_zero_l[A](l: Lang[A]) = {
  //   (zero $ l) === zero
  // } .holds

  // // concatenation with the empty Lang is empty
  // def times_zero_r[A](l: Lang[A]) = {
  //   (l $ zero) === zero
  // } .holds

  // // one is neutral for concatenation
  // def times_one_l[A](l: Lang[A]) = {
  //   (one $ l) === l
  // } .holds

  // // one is neutral for concatenation
  // def times_one_r[A](l: Lang[A]) = {
  //   (l $ one) === l
  // } .holds

  // // distributivity on the left
  // def times_plus_l[A](l1: Lang[A], l2: Lang[A], l3: Lang[A]) = {
  //   (l1 + l2) * l3 === (l1 * l3) + (l2 * l3)
  // } .holds

  // // distributivity on the right
  // def times_plus_r[A](l1: Lang[A], l2: Lang[A], l3: Lang[A]) = {
  //   l1 * (l2 + l3) === (l1 * l2) + (l1 * l3)
  // } .holds

  // // associativity of concatenation
  // def times_assoc[A](l1: Lang[A], l2: Lang[A], l3: Lang[A]) = {
  //   l1 * (l2 * l3) === (l1 * l2) * l3
  // } .holds

  // def star_zero[A] = {
  //   zero.star === zero
  // } .holds

  // def star_one[A] = {
  //   one.star === one
  // } .holds

  // def star_unfold_l[A](l: Lang[A]) = {
  //   l.star === one + (l $ l.star)
  // } .holds


  // def shuffle_zero_l[A](l: Lang[A]) = {
  //   (zero | l) === zero
  // } .holds

  // def shuffle_zero_r[A](l: Lang[A]) = {
  //   (l | zero) === zero
  // } .holds

  // def shuffle_one_l[A](l: Lang[A]) = {
  //   (one | l) === l
  // } .holds

  // def shuffle_one_r[A](l: Lang[A]) = {
  //   (l | one) === l
  // } .holds

  // def shuffle_plus_l[A](l1: Lang[A], l2: Lang[A], l3: Lang[A]) = {
  //   ((l1 + l2) | l3) === (l1 | l3) + (l2 | l3)
  // } .holds

  // def shuffle_plus_r[A](l1: Lang[A], l2: Lang[A], l3: Lang[A]) = {
  //   (l1 | (l2 + l3)) === (l1 | l2) + (l1 | l3)
  // } .holds

  // def shuffle_assoc[A](l1: Lang[A], l2: Lang[A], l3: Lang[A]) = {
  //   (l1 | (l2 | l3)) === ((l1 | l2) | l3)
  // } .holds

  
  // def star_unfold_r[A](l: Lang[A]) = {
  //   l.star === one + (l.star $ l)
  // } .holds

  // def star_star[A](l: Lang[A]) = {
  //   l.star.star === l.star
  // } .holds

  // def times_star[A](l: Lang[A]) = {
  //   (l.star $ l.star) === l.star
  // } .holds

  // def zero_one[A] = {
  //   zero =!= one
  // } .holds

  // def le_star_l[A](l: Lang[A]) = {
  //   one + (l $ l.star) <= l.star
  // } .holds

  // def le_star_r[A](l: Lang[A]) = {
  //   one + (l.star $ l) <= l.star
  // } .holds

  // def arden_l[A](l1: Lang[A], l2: Lang[A], l3: Lang[A]) = {
  //   require(l1 + (l2 $ l3) <= l3)

  //   (l2.star $ l1) <= l3
  // } .holds

  // def arden_r[A](l1: Lang[A], l2: Lang[A], l3: Lang[A]) = {
  //   require(l1 + (l2 $ l3) <= l2)

  //   (l1 $ l3.star) <= l2
  // } .holds


  // def ge_one[A](l: Lang[A]) = {
  //   require(one <= l)

  //   l.oo
  // } .holds

  // def plus_mono[A](l1: Lang[A], l2: Lang[A], l3: Lang[A], l4: Lang[A]) = {
  //   require(l1 <= l2 && l3 <= l4)

  //   (l1 + l3) <= (l2 + l4)
  // } .holds

  // def plus_upper[A](l1: Lang[A], l2: Lang[A], l: Lang[A]) = {
  //   require(l1 <= l && l2 <= l)

  //   l1 + l2 <= l
  // } .holds

  // def le_plus_l[A](l1: Lang[A], l2: Lang[A]) = {
  //   l1 <= l1 + l2
  // } .holds

  // def le_plus_r[A](l1: Lang[A], l2: Lang[A]) = {
  //   l2 <= l1 + l2
  // } .holds

  // def times_mono[A](l1: Lang[A], l2: Lang[A], l3: Lang[A], l4: Lang[A]) = {
  //   require(l1 <= l2 && l3 <= l4)

  //   (l1 $ l3) <= (l2 $ l4)
  // } .holds

  // def le_times_l[A](l1: Lang[A], l2: Lang[A]) = {
  //   require(l2.oo)

  //   l1 <= (l1 $ l2)
  // } .holds

  // def le_times_r[A](l1: Lang[A], l2: Lang[A]) = {
  //   require(l1.oo)

  //   l2 <= (l1 $ l2)
  // } .holds

  // def le_star[A](l: Lang[A]) = {
  //   l <= l.star
  // } .holds

  // def star_mono[A](l1: Lang[A], l2: Lang[A]) = {
  //   require(l1 <= l2)

  //   l1.star <= l2.star
  // }

  // def inter_mono[A](l1: Lang[A], l2: Lang[A], l3: Lang[A], l4: Lang[A]) = {
  //   require(l1 <= l2 && l3 <= l4)

  //   (l1 n l3) <= (l2 n l4)
  // } .holds

  // def not_antimono[A](l1: Lang[A], l2: Lang[A]) = {
  //   require(l1 <= l2)

  //   l2.c <= l1.c
  // } .holds

  // def not_plus[A](l1: Lang[A], l2: Lang[A]) = {
  //   (l1 + l2).c === (l1.c n l2.c)
  // } .holds

  // def not_inter[A](l1: Lang[A], l2: Lang[A]) = {
  //   (l1 n l2).c === (l1.c + l2.c)
  // } .holds

  // def inter_assoc[A](l1: Lang[A], l2: Lang[A], l3: Lang[A]) = {
  //   (l1 n (l2 n l3)) === ((l1 n l2) n l3)
  // } .holds

  // def inter_comm[A](l1: Lang[A], l2: Lang[A]) = {
  //   (l1 n l2) === (l2 n l1)
  // } .holds

  // def inter_idem[A](l: Lang[A]) = {
  //   (l n l) === l
  // } .holds

  // def inter_zero_l[A](l: Lang[A]) = {
  //   (zero n l) === zero
  // } .holds

  // def inter_zero_r[A](l: Lang[A]) = {
  //   (l n zero) === zero
  // } .holds

  // def inter_full_l[A](l: Lang[A]) = {
  //   (full n l) === l
  // } .holds

  // def inter_full_r[A](l: Lang[A]) = {
  //   (l n full) === l
  // } .holds

  // def plus_full_l[A](l: Lang[A]) = {
  //   full + l === full
  // } .holds

  // def plus_full_r[A](l: Lang[A]) = {
  //   l + full === full
  // } .holds

  // def not_not[A](l: Lang[A]) = {
  //   l.c.c === l
  // } .holds

  // def not_zero() = {
  //   zero.c === full
  // } .holds

  // def not_full() = {
  //   full.c === zero
  // } .holds

  // def bisimulation[A](l1: Lang[A], l2: Lang[A], l3: Lang[A]) = {
  //   require((l1 $ l2) === (l2 $ l3))

  //   (l1.star $ l2) === (l2 $ l3.star)
  // } .holds

  // def sliding[A](l1: Lang[A], l2: Lang[A]) = {
  //   ((l1 $ l2).star $ l1) === (l1 $ (l2 $ l1).star)
  // } .holds

  // def denesting[A](l1: Lang[A], l2: Lang[A]) = {
  //   (l1 + l2).star === (l1.star $ (l2 $ l1.star).star)
  // } .holds

  // def tails[T](l: List[T]): List[List[T]] = l match {
  //   case Nil() => List(Nil())
  //   case Cons(x,xs) => l :: tails(xs)
  // }

  // def tails_snoc[T](xs: List[T], x: T) = {
  //   tails(xs :+ x) == tails(xs).map(l => l :+ x) :+ Nil()
  // } .holds

  // def length_tails[T](l: List[T]) = {
  //   tails(l).length == l.length + 1
  // }




  
}