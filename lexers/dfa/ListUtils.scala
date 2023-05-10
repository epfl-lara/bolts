/** Author: Samuel Chassot
  */
  
import stainless.annotation._
import stainless.collection._
import stainless.equations._
import stainless.lang._
import stainless.proof.check
import scala.annotation.tailrec

object ListUtils {
  def isPrefix[B](prefix: List[B], l: List[B]): Boolean = {
    (prefix, l) match {
      case (Nil(), _) => true
      case (_, Nil()) => false
      case (l1, l2)   => if (l1.head == l2.head) isPrefix(l1.tail, l2.tail) else false
    }
  } ensuring (res => if (res) l.size >= prefix.size else true)

  def removeLast[B](l: List[B]): List[B] = {
    require(!l.isEmpty)
    val res: List[B] = l match {
      case Cons(hd, Nil()) => Nil()
      case Cons(hd, tl)    => Cons(hd, removeLast(tl))
    }
    res
  } ensuring (res => res ++ List(l.last) == l)

  def reverseList[B](l: List[B]): List[B] = l match {
    case Cons(hd, tl) => reverseList(tl) ++ List(hd)
    case Nil()        => Nil()
  }

  def getSuffix[B](l: List[B], p: List[B]): List[B] = {
    require(l.size >= p.size)
    require(isPrefix(p, l))
    p match {
      case Cons(hd, tl) => getSuffix(l.tail, tl)
      case Nil()        => l
    }
  } ensuring (res => p ++ res == l)

  def getIndex[B](l: List[B], e: B): BigInt = {
    require(l.contains(e))
    l match {
      case Cons(hd, tl) if hd == e => BigInt(0)
      case Cons(hd, tl) if hd != e => 1 + getIndex(tl, e)
      case Nil()                   => BigInt(-1)
    }
  } ensuring (res => res >= 0)

  def consecutiveSubseq[B](l1: List[B], lTot: List[B]): Boolean = {
    lTot match {
      case Cons(hd, tl) => consecutiveSubseqAtHead(l1, lTot) || consecutiveSubseq(l1, tl)
      case Nil()        => consecutiveSubseqAtHead(l1, lTot)
    }
  }

  def consecutiveSubseqAtHead[B](l1: List[B], lTot: List[B]): Boolean = {
    (l1, lTot) match {
      case (Nil(), _)                                           => true
      case (Cons(hd1, tl1), Cons(hdTot, tlTot)) if hd1 == hdTot => consecutiveSubseqAtHead(tl1, tlTot)
      case _                                                    => false
    }
  }

  @inlineOnce
  @opaque
  def lemmaConsecutiveSubseqThenSubseq[B](l1: List[B], l2: List[B]): Unit = {
    require(consecutiveSubseq(l1, l2))
    (l1, l2) match {
      case (Cons(hd1, tl1), Cons(hd2, tl2)) if consecutiveSubseqAtHead(l1, l2) => lemmaConsecutiveSubseqThenSubseq(tl1, tl2)
      case (Cons(hd1, tl1), Cons(hd2, tl2))                                    => lemmaConsecutiveSubseqThenSubseq(l1, tl2)
      case _                                                                   => ()
    }

  } ensuring (ListSpecs.subseq(l1, l2))

  @inlineOnce
  @opaque
  def lemmaContainsAndNotHdThenTlContains[B](l: List[B], e: B): Unit = {
    require(l.contains(e))
    require(l.head != e)

  } ensuring (l.tail.contains(e))

  @inlineOnce
  @opaque
  def lemmaGetIndexBiggerAndHeadNotEqThenTailContains[B](l: List[B], e1: B, e2: B): Unit = {
    require(l.contains(e1) && l.contains(e2))
    require(e1 != e2)
    require(getIndex(l, e1) < getIndex(l, e2))
    decreases(l.size)

    l match {
      case Cons(hd, tl) if hd == e1 => lemmaGetIndexBiggerAndHeadEqThenTailContains(l, e1, e2)
      case Cons(hd, tl) if hd != e1 => {
        assert(hd != e1)

        lemmaContainsAndNotHdThenTlContains(l, e1)
        lemmaNotHeadSoGetIndexTailIsMinusOne(l, e1)
        lemmaNotHeadSoGetIndexTailIsMinusOne(l, e2)

        lemmaGetIndexBiggerAndHeadNotEqThenTailContains(tl, e1, e2)
      }
      case Nil() => check(false)
    }
    assert(l.tail.contains(e2))

  } ensuring (l.tail.contains(e2))

  @inlineOnce
  @opaque
  def lemmaSameIndexThenSameElement[B](l: List[B], e1: B, e2: B): Unit = {
    require(l.contains(e1))
    require(l.contains(e2))
    require(getIndex(l, e1) == getIndex(l, e2))

    if (getIndex(l, e1) == 0) {
      assert(l.head == e1)
      assert(l.head == e2)
      assert(e1 == e2)
    } else {
      lemmaSameIndexThenSameElement(l.tail, e1, e2)
    }
  } ensuring (e1 == e2)

  @inlineOnce
  @opaque
  def lemmaGetIndexBiggerAndHeadEqThenTailContains[B](l: List[B], e1: B, e2: B): Unit = {
    require(l.contains(e1) && l.contains(e2))
    require(e1 != e2)
    require(l.head == e1)
    require(getIndex(l, e1) < getIndex(l, e2))

  } ensuring (l.tail.contains(e2))

  @inlineOnce
  @opaque
  def lemmaNotHeadSoGetIndexTailIsMinusOne[B](l: List[B], e: B): Unit = {
    require(l.contains(e))
    require(l.head != e)

    if (l.tail.head != e) {
      lemmaNotHeadSoGetIndexTailIsMinusOne(l.tail, e)
    }
  } ensuring (getIndex(l, e) == getIndex(l.tail, e) + 1)

  @inlineOnce
  @opaque
  def lemmaIsPrefixRefl[B](l1: List[B], l2: List[B]): Unit = {
    require(l1 == l2)
    l1 match {
      case Cons(hd, tl) => lemmaIsPrefixRefl(tl, l2.tail)
      case Nil()        => ()
    }
  } ensuring (isPrefix(l1, l2))

  @inlineOnce
  @opaque
  def lemmaConcatTwoListThenFirstIsPrefix[B](l1: List[B], l2: List[B]): Unit = {
    l1 match {
      case Cons(hd, tl) => lemmaConcatTwoListThenFirstIsPrefix(tl, l2)
      case Nil()        => ()
    }
  } ensuring (isPrefix(l1, l1 ++ l2))

  @inlineOnce
  @opaque
  def lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref[B](p1: List[B], s1: List[B], p2: List[B], l: List[B]): Unit = {
    require(isPrefix(p2, l))
    require(p1 ++ s1 == l)
    require(!s1.isEmpty)
    require(p1.size < p2.size)

    lemmaConcatTwoListThenFirstIsPrefix(p1, s1)

    p1 match {
      case Cons(hd, tl) => lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref(tl, s1, p2.tail, l.tail)
      case Nil()        => ()
    }
  } ensuring (p2.contains(s1.head))

  @inlineOnce
  @opaque
  def lemmaConcatAssociativity[B](l1: List[B], elmt: B, l2: List[B], tot: List[B]): Unit = {
    require((l1 ++ List(elmt)) ++ l2 == tot)
    assert(l1 ++ List(elmt) ++ l2 == tot)
    l1 match {
      case Cons(hd, tl) => lemmaConcatAssociativity(tl, elmt, l2, tot.tail)
      case Nil()        => ()
    }
  } ensuring (l1 ++ (List(elmt) ++ l2) == tot)

  @inlineOnce
  @opaque
  def lemmaTwoListsConcatAssociativity[B](
      l1: List[B],
      l2: List[B],
      l3: List[B]
  ): Unit = {
    l1 match {
      case Cons(hd, tl) => {
        lemmaTwoListsConcatAssociativity(tl, l2, l3)
      }
      case Nil() => ()
    }

  } ensuring ((l1 ++ l2) ++ l3 == l1 ++ (l2 ++ l3))

  @inlineOnce
  @opaque
  def lemmaRemoveLastConcatenatedPrefixStillPrefix[B](l: List[B], elmt: B, tot: List[B]): Unit = {
    require(isPrefix(l ++ List(elmt), tot))
    l match {
      case Cons(hd, tl) => lemmaRemoveLastConcatenatedPrefixStillPrefix(tl, elmt, tot.tail)
      case Nil()        => ()
    }
  } ensuring (isPrefix(l, tot))

  @inlineOnce
  @opaque
  def lemmaRemoveLastPrefixStillPrefix[B](p: List[B], l: List[B]): Unit = {
    require(!l.isEmpty)
    require(isPrefix(p, l))
    require(p.size < l.size)
    p match {
      case Cons(hd, tl) => lemmaRemoveLastPrefixStillPrefix(tl, l.tail)
      case Nil()        => ()
    }

  } ensuring (isPrefix(p, removeLast(l)))

  @inlineOnce
  @opaque
  def lemmaPrefixStaysPrefixWhenAddingToSuffix[B](p: List[B], l: List[B], suffix: List[B]): Unit = {
    require(isPrefix(p, l))
    p match {
      case Cons(hd, tl) => lemmaPrefixStaysPrefixWhenAddingToSuffix(tl, l.tail, suffix)
      case Nil()        => ()
    }
  } ensuring (isPrefix(p, l ++ suffix))

  @inlineOnce
  @opaque
  def lemmaRemoveLastPrefixDecreasesSize[B](l: List[B]): Unit = {
    require(l.size > 0)
  } ensuring (removeLast(l).size < l.size)

  @inlineOnce
  @opaque
  def lemmaIsPrefixSameLengthThenSameList[B](p1: List[B], p2: List[B], l: List[B]): Unit = {
    require(isPrefix(p1, l))
    require(isPrefix(p2, l))
    require(p1.size == p2.size)

    p1 match {
      case Cons(hd, tl) => lemmaIsPrefixSameLengthThenSameList(tl, p2.tail, l.tail)
      case Nil()        => ()
    }

  } ensuring (p1 == p2)

  @inlineOnce
  @opaque
  def lemmaRemoveLastFromBothSidePreservesEq[B](p: List[B], s: List[B], l: List[B]): Unit = {
    require(p ++ s == l)
    require(!s.isEmpty)
    p match {
      case Cons(hd, tl) => lemmaRemoveLastFromBothSidePreservesEq(tl, s, l.tail)
      case Nil()        => ()
    }
  } ensuring (p ++ removeLast(s) == removeLast(l))

  @inlineOnce
  @opaque
  def lemmaRemoveLastFromLMakesItPrefix[B](l: List[B]): Unit = {
    require(!l.isEmpty)
    decreases(l.size)
    l match {
      case Cons(hd, Nil()) => ()
      case Cons(hd, tl)    => lemmaRemoveLastFromLMakesItPrefix(tl)
    }

  } ensuring (isPrefix(removeLast(l), l))

  @inlineOnce
  @opaque
  def lemmaSamePrefixThenSameSuffix[B](p1: List[B], s1: List[B], p2: List[B], s2: List[B], l: List[B]): Unit = {
    require(isPrefix(p1, l))
    require(isPrefix(p2, l))
    require(p1 ++ s1 == l)
    require(p2 ++ s2 == l)
    require(p1 == p2)

    p1 match {
      case Cons(hd, tl) => lemmaSamePrefixThenSameSuffix(tl, s1, p2.tail, s2, l.tail)
      case Nil()        => ()
    }
  } ensuring (s1 == s2)

  @inlineOnce
  @opaque
  def lemmaIsPrefixThenSmallerEqSize[B](p: List[B], l: List[B]): Unit = {
    require(isPrefix(p, l))
    (p, l) match {
      case (Nil(), _) => ()
      case (_, Nil()) => ()
      case (l1, l2)   => lemmaIsPrefixThenSmallerEqSize(l1.tail, l2.tail)
    }
  } ensuring (p.size <= l.size)

  @inlineOnce
  @opaque
  def lemmaAddHeadSuffixToPrefixStillPrefix[B](p: List[B], l: List[B]): Unit = {
    require(isPrefix(p, l))
    require(p.size < l.size)
    p match {
      case Cons(hd, tl) => lemmaAddHeadSuffixToPrefixStillPrefix(tl, l.tail)
      case Nil()        => ()
    }
  } ensuring (isPrefix(p ++ List(getSuffix(l, p).head), l))

  @inlineOnce
  @opaque
  def lemmaGetSuffixOnListWithItSelfIsEmpty[B](l: List[B]): Unit = {
    decreases(l.size)
    lemmaIsPrefixRefl(l, l)
    l match {
      case Cons(hd, tl) => lemmaGetSuffixOnListWithItSelfIsEmpty(tl)
      case Nil()        => ()
    }
  } ensuring (getSuffix(l, l).isEmpty)

  @inlineOnce
  @opaque
  def lemmaMoveElementToOtherListKeepsConcatEq[B](s1: List[B], hd2: B, tl2: List[B], tot: List[B]): Unit = {
    require(s1 ++ Cons(hd2, tl2) == tot)

    s1 match {
      case Cons(hd1, tl1) => lemmaMoveElementToOtherListKeepsConcatEq(tl1, hd2, tl2, tot.tail)
      case Nil()          => ()
    }

  } ensuring ((s1 ++ List(hd2)) ++ tl2 == tot)

  @inlineOnce
  @opaque
  def lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther[B](s1: List[B], s2: List[B], l: List[B]): Unit = {
    require(isPrefix(s1, l))
    require(isPrefix(s2, l))
    require(s2.size <= s1.size)

    s2 match {
      case Cons(hd, tl) => lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther(s1.tail, tl, l.tail)
      case Nil()        =>
    }
  } ensuring (isPrefix(s2, s1))

  @inlineOnce
  @opaque
  def concatWithoutDuplicates[B](baseList: List[B], newList: List[B]): List[B] = {
    require(ListOps.noDuplicate(baseList))
    newList match {
      case Cons(hd, tl) if baseList.contains(hd)  => concatWithoutDuplicates(baseList, tl)
      case Cons(hd, tl) if !baseList.contains(hd) => concatWithoutDuplicates(Cons(hd, baseList), tl)
      case Nil()                                  => baseList
    }
  } ensuring (res => ListOps.noDuplicate(res) && (baseList ++ newList).content == res.content)

  @inlineOnce
  @opaque
  def removeDuplicates[B](list: List[B], acc: List[B] = Nil[B]()): List[B] = {
    require(ListOps.noDuplicate(acc))
    decreases(list.size)
    list match {
      case Cons(hd, tl) if acc.contains(hd) => removeDuplicates(tl, acc)
      case Cons(hd, tl)                     => removeDuplicates(tl, Cons(hd, acc))
      case Nil()                            => acc
    }
  } ensuring (res => ListOps.noDuplicate(res) && res.content == (list ++ acc).content)

  @inlineOnce
  @opaque
  def lemmaSubseqRefl[B](l: List[B]): Unit = {
    decreases(l.size)
    l match {
      case Nil()        => ()
      case Cons(hd, tl) => lemmaSubseqRefl(tl)
    }
  } ensuring (ListSpecs.subseq(l, l))

  @inlineOnce
  @opaque
  def lemmaTailIsSubseqOfList[B](elmt: B, l: List[B]): Unit = {
    l match {
      case Nil() => ()
      case Cons(hd, tl) if hd == elmt => {
        lemmaSubseqRefl(l)
        ListSpecs.subseqTail(l, l)
        assert(ListSpecs.subseq(tl, l))
      }
      case Cons(hd, tl) if hd != elmt => lemmaSubseqRefl(l)
    }
  } ensuring (ListSpecs.subseq(l, Cons(elmt, l)))

  @inlineOnce
  @opaque
  def lemmaSubSeqTransitive[B](l1: List[B], l2: List[B], l3: List[B]): Unit = {
    require(ListSpecs.subseq(l1, l2))
    require(ListSpecs.subseq(l2, l3))
    decreases(l1.size, l2.size, l3.size)

    (l1, l2, l3) match {
      case (Cons(hd1, tl1), Cons(hd2, tl2), Cons(hd3, tl3)) if hd2 != hd3 => {
        lemmaSubSeqTransitive(l1, l2, tl3)
      }
      case (Cons(hd1, tl1), Cons(hd2, tl2), Cons(hd3, tl3)) if hd2 == hd3 => {
        if (ListSpecs.subseq(tl2, tl3)) {
          if (hd1 == hd2) {
            if (ListSpecs.subseq(tl1, tl2)) {
              lemmaSubSeqTransitive(tl1, tl2, tl3)
            } else {
              lemmaSubSeqTransitive(l1, tl2, tl3)
            }
          } else {
            lemmaSubSeqTransitive(l1, tl2, tl3)
          }
        } else {
          if (hd1 == hd2) {
            if (ListSpecs.subseq(tl1, l2)) {
              lemmaSubSeqTransitive(tl1, l2, tl3)
            } else {
              lemmaSubSeqTransitive(l1, l2, tl3)
            }
          } else {
            lemmaSubSeqTransitive(l1, l2, tl3)
          }
        }

      }
      case _ => ()
    }

  } ensuring (ListSpecs.subseq(l1, l3))

  @inlineOnce
  @opaque
  def lemmaConcatThenFirstSubseqOfTot[B](l1: List[B], l2: List[B]): Unit = {
    l1 match {
      case Cons(hd, tl) => lemmaConcatThenFirstSubseqOfTot(tl, l2)
      case Nil()        => ()
    }
  } ensuring (ListSpecs.subseq(l1, l1 ++ l2))

  @inlineOnce
  @opaque
  def lemmaConcatThenSecondSubseqOfTot[B](l1: List[B], l2: List[B]): Unit = {
    l1 match {
      case Cons(hd, tl) => lemmaConcatThenSecondSubseqOfTot(tl, l2)
      case Nil()        => lemmaSubseqRefl(l2)
    }
  } ensuring (ListSpecs.subseq(l2, l1 ++ l2))

  @inlineOnce
  @opaque
  def lemmaConcatTwoListsWhichNotContainThenTotNotContain[B](l1: List[B], l2: List[B], b: B): Unit = {
    require(!l1.contains(b))
    require(!l2.contains(b))

    l1 match {
      case Cons(hd, tl) if hd == b => check(false)
      case Cons(hd, tl)            => lemmaConcatTwoListsWhichNotContainThenTotNotContain(tl, l2, b)
      case Nil()                   => ()
    }
  } ensuring (!(l1 ++ l2).contains(b))

  @inlineOnce
  @opaque
  def lemmaForallContainsThenForEqualLists[B](l1: List[B], l2: List[B], l1Bis: List[B], l2Bis: List[B]): Unit = {
    require(l1.forall(b => l2.contains(b)))
    require(l1 == l1Bis)
    require(l2 == l2Bis)

  } ensuring (l1Bis.forall(b => l2Bis.contains(b)))

  @inlineOnce
  @opaque
  def lemmaForallContainsAndNoDuplicateThenSmallerList[B](l: List[B], lIn: List[B]): Unit = {
    require(lIn.forall(e => l.contains(e)))
    require(ListOps.noDuplicate(lIn))
    decreases(lIn.size)

    lIn match {
      case Cons(hd, tl) => {

        ListSpecs.forallContainsSubset(lIn, l)
        assert(lIn.content.subsetOf(l.content))
        assert(!tl.contains(hd))
        val newList = l - hd
        assert(newList.content == l.content - hd)
        ListSpecs.subsetContains(tl, newList)
        lemmaForallContainsAndNoDuplicateThenSmallerList(newList, tl)
        assert(tl.size <= newList.size)
        assert(tl.size + 1 == lIn.size)
        assert(l.contains(hd))
        assert(newList.content == l.content -- Set(hd))
        lemmaRemoveElmtContainedSizeSmaller(l, hd)
        assert(l.size > newList.size)
      }
      case Nil() => ()
    }
  } ensuring (lIn.size <= l.size)

  @inlineOnce
  @opaque
  def lemmaRemoveElmtContainedSizeSmaller[B](l: List[B], e: B): Unit = {
    require(l.contains(e))
    l match {
      case Cons(hd, tl) if hd == e => {
        assert(l - e == tl - e)
        if (tl.contains(e)) {
          lemmaRemoveElmtContainedSizeSmaller(tl, e)
        }
      }
      case Cons(hd, tl) => lemmaRemoveElmtContainedSizeSmaller(tl, e)
      case Nil()        => check(false)
    }
  } ensuring ((l - e).size < l.size)
}
