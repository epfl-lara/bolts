import stainless.lang._
import stainless.collection._

object Main {
  type Word[A] = List[A]

  case class Language[A](oo: Boolean, dd: A => Language[A]) {
    def contains(w: Word[A]): Boolean = w match {
      case Nil() => oo
      case Cons(x,xs) => dd(x).contains(xs)
    }

    def +(that: Language[A]): Language[A] =
      Language(this.oo || that.oo, a => this.dd(a) + that.dd(a))
  
    def residual(w: Word[A]): Language[A] = w match {
      case Nil() => this
      case Cons(x,xs) => dd(x).residual(xs)
    }

    def usableAt(w: Word[A]): Pred = terminate(residual(w))

    def usable: Pred = forall((w: Word[A]) => usableAt(w))
  }

  // the empty language
  def zero[A]: Language[A] = Language(false, _ => zero)

  // we can prove that zero is usable at w for every word w

  def zeroUsable[A](w: Word[A]): zero.usableAt(w) = w match {
    case Nil() => solve
    case Cons(x,xs) =>
      pose(zeroUsable(xs))
  }

  // the language containing only the empty word
  def one[A]: Language[A] = Language(true, _ => zero)

  // the language containing only the letter 'a'
  def atom[A](a: A): Language[A] =
    Language(false, b => if (b == a) one else zero)

  // zero is neutral for plus
  def plus_zerol[A](l: Language[A]) = {
    zero + l === l
  } holds

  def plus_zeror[A](l: Language[A]) = {
    l + zero === l
  } holds

  def plus_dd[A](l1: Language[A], l2: Language[A], x: A): Boolean = {
    (l1 + l2).dd(x) == l1.dd(x) + l2.dd(x)
  } holds

  def plus_lemma[A](l1: Language[A], l2: Language[A], w: Word[A]): Boolean = {
    assert(
      w match {
        case Nil() => true
        case Cons(x,xs) => plus_lemma(l1.dd(x), l2.dd(x), xs) // induction hypothesis
      }
    )
    (l1 + l2).contains(w) == (l1.contains(w) || l2.contains(w))
  } holds

  // plus is associative (contains)
  def plus_assoc_lemma[A](l1: Language[A], l2: Language[A], l3: Language[A], w: Word[A]) = {
    assert(plus_lemma(l1,l2,w))
    assert(plus_lemma(l2,l3,w))
    assert(plus_lemma(l1,l2 + l3,w))
    assert(plus_lemma(l1 + l2,l3,w))
    (l1 + (l2 + l3)).contains(w) == ((l1 + l2) + l3).contains(w)
  } holds

  def plus_assoc_lemma(l1,l2,l3,w): (l1 + (l2 + l3)).contains(w) == ((l1 + l2) + l3).contains(w)

  // plus is associative
  def plus_assoc[A](l1: Language[A], l2: Language[A], l3: Language[A]) = {
    assert(forall((w: Word[A]) => {
      plus_assoc_lemma(l1,l2,l3,w)
    }))
    assert(forall((w: Word[A]) => {
      (l1 + (l2 + l3)).contains(w) == ((l1 + l2) + l3).contains(w)
    }))
    l1 + (l2 + l3) === (l1 + l2) + l3
  } holds

  def forall_intro(p) = {
    forall(p)
  } holds

  def plus_assoc[A](l1: Language[A], l2: Language[A], l3: Language[A]): "l1 + (l2 + l3) === (l1 + l2) + l3" = {
    w => plus_assoc_lemma(l1,l2,l3,w)
  }

  // // plus is commutative (contains)
  // def plus_comm_lemma[A](l1: Language[A], l2: Language[A], w: Word[A]) = {
  //   plus_lemma(l1,l2,w)
  //   plus_lemma(l2,l1,w)
  //   (l1 + l2).contains(w) == (l2 + l1).contains(w)
  // } holds

  // // plus is commutative
  // def plus_comm[A](l1: Language[A], l2: Language[A]) = {
  //   assert(forall((w: Word[A]) => {
  //     assert(plus_comm_lemma(l1,l2,w))
  //     (l1 + l2).contains(w) == (l2 + l1).contains(w)
  //   }))
  //   l1 + l2 === l2 + l1
  // } holds

  // // a combination of associativity and commutativity
  // def plus_rotate[A](l1: Language[A], l2: Language[A], l3: Language[A]) = {
  //   assert(plus_assoc(l1,l2,l3))
  //   assert(plus_comm(l1,l2))
  //   assert(plus_assoc(l2,l1,l3))
  //   l1 + (l2 + l3) === l2 + (l1 + l3)
  // } holds
  
  // // plus is idempotent
  // def plus_idem[A](l: Language[A]) = {
  //   assert(forall((w: Word[A]) => {
  //     assert(plus_lemma(l,l,w))
  //     (l + l).contains(w) == l.contains(w)
  //   }))
  //   l + l === l
  // } holds
}