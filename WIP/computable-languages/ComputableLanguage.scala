import stainless.lang._
import stainless.collection._
import stainless.annotation._
import stainless.proof._
import stainless.equations._
import stainless.lang._

object ComputableLanguage {
  sealed abstract class List[A] {
    def size: BigInt = {
      this match {
        case Nil()      => BigInt(0)
        case Cons(h, t) => 1 + t.size
      }
    }.ensuring(_ >= 0)

    def isEmpty: Boolean = this.size == 0

    def ++(that: List[A]): List[A] = {
      this match {
        case Nil()       => that
        case Cons(x, xs) => Cons(x, xs ++ that)
      }
    }

    def power(n: BigInt): List[A] = {
      require(0 <= n)
      if (n == 0) Nil[A]()
      else this ++ power(n - 1)
    }

    def apply(index: BigInt): A = {
      require(0 <= index && index < size)
      this match {
        case Cons(h, t) =>
          if (index == BigInt(0)) h
          else t(index - 1)
      }
    }

    def slice(from: BigInt, to: BigInt): List[A] = {
      require(0 <= from && from <= to && to <= size)
      this match {
        case Nil() => Nil[A]()
        case Cons(h, t) =>
          if (from == 0 && to == 0) Nil[A]()
          else if (from == 0) Cons[A](h, t.slice(0, to - 1))
          else t.slice(from - 1, to - 1)
      }
    }.ensuring(res => res.size == to - from)

    def head: A = {
      require(!this.isEmpty)
      this.apply(0)
    }
    def tail: List[A] = {
      require(!this.isEmpty)
      this.slice(1, this.size)
    }

    def startsWith(that: List[A]): Boolean =
      that.size <= size && slice(0, that.size) == that

    def prefixOf(that: List[A]): Boolean = that.startsWith(this)

    def endsWith(that: List[A]): Boolean =
      that.size <= size && slice(size - that.size, size) == that

    def suffixOf(that: List[A]): Boolean = that.endsWith(this)
  }
  case class Cons[A](h: A, t: List[A]) extends List[A]
  case class Nil[A]() extends List[A]

  def epsilon[A] = Nil[A]()

  def lemmaSliceFrom0ToSizeEqualsList[A](l: List[A]): Unit = {
    decreases(l.size)
    l match {
      case Nil()        => ()
      case Cons(hd, tl) => lemmaSliceFrom0ToSizeEqualsList(tl)
    }

  } ensuring (l.slice(0, l.size) == l)

  def lemmaSliceFrom0ToSizeEqualsListForConcat[A](l1: List[A], l2: List[A]): Unit = {
    decreases(l1.size)
    l1 match {
      case Nil()        => ()
      case Cons(hd, tl) => lemmaSliceFrom0ToSizeEqualsListForConcat(tl, l2)
    }

  } ensuring ((l1 ++ l2).slice(0, l1.size) == l1)

  def lemmaSliceFromSizeToSizeTotEqualsListForConcat[A](l1: List[A], l2: List[A]): Unit = {
    decreases(l1.size)
    l1 match {
      case Nil()        => lemmaSliceFrom0ToSizeEqualsList(l2)
      case Cons(hd, tl) => lemmaSliceFromSizeToSizeTotEqualsListForConcat(tl, l2)
    }

  } ensuring ((l1 ++ l2).slice(l1.size, (l1 ++ l2).size) == l2)

  def lemmaConcatWithNilReturnsSame[A](l1: List[A], l2: List[A]): Unit = {
    require(l2.isEmpty)
    l1 match {
      case Cons(hd, tl) => lemmaConcatWithNilReturnsSame(tl, l2)
      case Nil()        => ()
    }
  } ensuring (l1 ++ l2 == l1)

  case class Lang[A](contains: List[A] => Boolean) {
    def ||(that: Lang[A]): Lang[A] =
      Lang((w: List[A]) => this.contains(w) || that.contains(w))

    def &&(that: Lang[A]): Lang[A] =
      Lang((w: List[A]) => this.contains(w) && that.contains(w))

    def complement: Lang[A] =
      Lang((w: List[A]) => !this.contains(w))

    def checkFromPP(i: BigInt, that: Lang[A], w: List[A]): Boolean = {
      require(0 <= i && i <= w.size)
      decreases(i)
      (this.contains(w.slice(0, i)) && that.contains(w.slice(i, w.size))) ||
      (i > 0 && checkFromPP(i - 1, that, w))
    }
    def fPP(that: Lang[A]): List[A] => Boolean = w => {
      val n: BigInt = w.size

      checkFromPP(n, that, w)
    }
    def ++(that: Lang[A]): Lang[A] =
      Lang(fPP(that))

    def power(n: BigInt): Lang[A] = {
      require(0 <= n)
      if (n == 0) emptyWordSingleton[A]
      else this ++ power(n - 1)
    }

    def checkFromToStar(from: BigInt, k: BigInt, to: BigInt, w: List[A]): Boolean = {
      require(0 <= from && from < k && k <= to && to <= w.size)
      decreases(to - from, to - k)

      contains(w.slice(from, to)) ||
      (k < to && checkFromToStar(from, k + 1, to, w)) ||
      (from + 1 <= k && k < to &&
        checkFromToStar(from, from + 1, k, w) && checkFromToStar(k, k + 1, to, w))
    }

    def fStar(w: List[A]): Boolean = {
      val n: BigInt = w.size
      (n == 0) || checkFromToStar(0, 1, n, w)
    }
    def *(): Lang[A] = {
      Lang(fStar)
    }

    def nullable: Boolean = contains(Nil[A]())

    def derivative(a: A): Lang[A] =
      Lang((w: List[A]) => contains(Cons(a, w)))

    def derivativeW(as: List[A]): Lang[A] =
      Lang((w: List[A]) => contains(as ++ w))
  }
  def emptyLanguage[A] = Lang((w: List[A]) => false) //  {}
  def emptyWordSingleton[A] = Lang((w: List[A]) => (w == Nil[A]())) // {epsilon}

  def lemmaCheckPPFromIThenFromTot[A](thiss: Lang[A], thatt: Lang[A], i: BigInt, w: List[A]): Unit = {
    require(0 <= i && i <= w.size)
    require(thiss.checkFromPP(i, thatt, w))
    decreases(w.size - i)

    if (i < w.size) {
      lemmaCheckPPFromIThenFromTot(thiss, thatt, i + 1, w)
    } else {}
  } ensuring (thiss.checkFromPP(w.size, thatt, w))

  def lemmaCheckFromToStarAddingElementBeforePreserves[A](l: Lang[A], e: A, w: List[A], from: BigInt, k: BigInt, to: BigInt): Unit = {
    require(0 <= from && from < k && k <= to && to <= w.size)
    require(!w.isEmpty)
    require(l.checkFromToStar(from, k, to, w))

    decreases(to - from, to - k)

    if (l.contains(w.slice(from, to))) {
      check(l.checkFromToStar(from + 1, k + 1, to + 1, Cons(e, w)))
    } else if ((k < to && l.checkFromToStar(from, k + 1, to, w))) {
      lemmaCheckFromToStarAddingElementBeforePreserves(l, e, w, from, k + 1, to)
      check(l.checkFromToStar(from + 1, k + 1, to + 1, Cons(e, w)))
    } else {
      assert(
        (from + 1 <= k && k < to &&
          l.checkFromToStar(from, from + 1, k, w) && l.checkFromToStar(k, k + 1, to, w))
      )
      lemmaCheckFromToStarAddingElementBeforePreserves(l, e, w, from, from + 1, k)
      lemmaCheckFromToStarAddingElementBeforePreserves(l, e, w, k, k + 1, to)
      check(l.checkFromToStar(from + 1, k + 1, to + 1, Cons(e, w)))
    }

  } ensuring (l.checkFromToStar(from + 1, k + 1, to + 1, Cons(e, w)))

  def lemmaCheckFromToStarAddingListBeforePreserves[A](l: Lang[A], s1: List[A], s2: List[A]): Unit = {
    require(!s2.isEmpty)
    require(l.checkFromToStar(0, 1, s2.size, s2))

    s1 match {
      case Cons(hd, tl) => {
        lemmaCheckFromToStarAddingListBeforePreserves(l, tl, s2)
        lemmaCheckFromToStarAddingElementBeforePreserves(l, hd, tl ++ s2, tl.size, tl.size + 1, (tl ++ s2).size)
      }
      case Nil() => ()
    }
  } ensuring (l.checkFromToStar(s1.size, s1.size + 1, (s1 ++ s2).size, s1 ++ s2))

  def lemmaCheckFromToStarTrueForKThenTrueForSmallerK[A](l: Lang[A], w: List[A], from: BigInt, k: BigInt, newK: BigInt, to: BigInt): Unit = {
    require(0 <= from && from < k && k <= to && to <= w.size)
    require(from < newK && newK <= k)
    require(!w.isEmpty)
    require(l.checkFromToStar(from, k, to, w))

    decreases(k - newK)

    if (k - 1 > newK) {
      lemmaCheckFromToStarTrueForKThenTrueForSmallerK(l, w, from, k - 1, newK, to)
    }

  } ensuring (l.checkFromToStar(from, newK, to, w))

}

object VerifiedLanguageMatcher {
  import ComputableLanguage._

  def matchL[C](l: Lang[C], input: List[C]): Boolean = {
    decreases(input.size)
    l.contains(input)
  }

  // Basic lemmas
  def lemmaIfAcceptEmptyStringThenNullable[C](l: Lang[C], s: List[C]): Unit = {
    require(s.isEmpty)
    require(matchL(l, s))
  } ensuring (l.nullable)

  // Single Character Lemma
  def lemmaElementLangAcceptsItsCharacterAndOnlyIt[C](
      l: Lang[C],
      c: C,
      d: C
  ): Unit = {
    require(l == Lang((w: List[C]) => w == Cons(c, Nil())))
    require(c != d)
  } ensuring (matchL(l, Cons(c, Nil())) && !matchL(l, Cons(d, Nil())))

  def lemmaElementLangDoesNotAcceptMultipleCharactersString[C](
      l: Lang[C],
      c: C,
      s: List[C]
  ): Unit = {
    require(l == Lang((w: List[C]) => w == Cons(c, Nil())))
    require(!s.isEmpty)
  } ensuring (!matchL(l, Cons(c, s)))

  // Union lemmas
  def lemmaLangAcceptsStringThenUnionWithAnotherAcceptsToo[C](
      l1: Lang[C],
      l2: Lang[C],
      s: List[C]
  ): Unit = {
    require(matchL(l1, s))

  } ensuring (matchL(l1 || l2, s))

  def lemmaReversedUnionAcceptsSameString[C](
      l1: Lang[C],
      l2: Lang[C],
      s: List[C]
  ): Unit = {
    require(matchL(l1 || l2, s))

  } ensuring (matchL(l2 || l1, s))

  // Concat lemmas
  def lemmaLangConcatWithNullableAcceptsSameStr[C](
      l1: Lang[C],
      l2: Lang[C],
      s: List[C]
  ): Unit = {

    require(matchL(l1, s))
    require(l2.nullable)

    val newR = l2 ++ l1

    s match {
      case Cons(hd, tl) => {
        lemmaSliceFrom0ToSizeEqualsList(s)
        lemmaCheckPPFromIThenFromTot(l2, l1, 0, s)

      }
      case Nil() => ()
    }
  } ensuring (matchL(l2 ++ l1, s))

  def lemmaTwoLangMatchThenConcatMatchesConcatString[C](
      l1: Lang[C],
      l2: Lang[C],
      s1: List[C],
      s2: List[C]
  ): Unit = {
    require(matchL(l1, s1))
    require(matchL(l2, s2))

    lemmaSliceFrom0ToSizeEqualsListForConcat(s1, s2)
    lemmaSliceFromSizeToSizeTotEqualsListForConcat(s1, s2)
    lemmaCheckPPFromIThenFromTot(l1, l2, s1.size, s1 ++ s2)

  } ensuring (matchL(l1 ++ l2, s1 ++ s2))

  // Star lemmas
  def lemmaStarAcceptsEmptyString[C](l: Lang[C]): Unit = {} ensuring (matchL(l.*(), Nil()))

  def lemmaStarApp[C](l: Lang[C], s1: List[C], s2: List[C]): Unit = {
    require(matchL(l, s1))
    require(matchL(l.*(), s2))

    (s1, s2) match {
      case (Cons(hd1, tl1), Cons(hd2, tl2)) => {
        lemmaSliceFrom0ToSizeEqualsList(s1)
        assert(l.contains(s1.slice(0, s1.size)))
        assert(l.checkFromToStar(0, 1, s2.size, s2))
        assert(l.checkFromToStar(0, 1, s1.size, s1))
        lemmaSliceFromSizeToSizeTotEqualsListForConcat(s1, s2)
        lemmaSliceFrom0ToSizeEqualsListForConcat(s1, s2)
        assert((s1 ++ s2).slice(s1.size, (s1 ++ s2).size) == s2)

        lemmaCheckFromToStarAddingListBeforePreserves(l, s1, s2)

        assert(l.checkFromToStar(0, 1, s1.size, s1 ++ s2)) // OK
        assert(l.checkFromToStar(s1.size, s1.size + 1, (s1 ++ s2).size, s1 ++ s2)) // OK

        val w = s1 ++ s2
        val from = BigInt(0)
        val to = w.size
        val k = s1.size

        assert(l.checkFromToStar(from, from + 1, k, w) && l.checkFromToStar(k, k + 1, to, w))
        assert(s1.size > 0)
        assert(s2.size > 0)
        lemmaCheckFromToStarTrueForKThenTrueForSmallerK(l, w, from, k, from + 1, to)
        if (s1.size > 1) {
          check(l.checkFromToStar(0, 1, (s1 ++ s2).size, s1 ++ s2))
        } else {
          assert(s1.size == 1)
          assert(k == 1)
          assert(w == s1 ++ s2)
          assert(l.checkFromToStar(0, 1, 1, w) && l.checkFromToStar(1, 1 + 1, to, w))
          assert(l.checkFromToStar(0, 1, (s1 ++ s2).size, s1 ++ s2))
          check(l.checkFromToStar(0, 1, (s1 ++ s2).size, s1 ++ s2)) // Done

        }
      }
      case (Cons(hd1, tl1), Nil()) => {
        lemmaConcatWithNilReturnsSame(s1, s2)
        assert(s1 ++ s2 == s1)
        lemmaSliceFrom0ToSizeEqualsList(s1)
        assert(l.contains(s1.slice(0, s1.size)))
        assert(l.checkFromToStar(0, 1, s1.size, s1))
        assert(matchL(l.*(), s1 ++ s2))
      }
      case (Nil(), Cons(hd2, tl2)) => ()
      case (Nil(), Nil())          => ()
    }
  } ensuring (matchL(l.*(), s1 ++ s2))
}
