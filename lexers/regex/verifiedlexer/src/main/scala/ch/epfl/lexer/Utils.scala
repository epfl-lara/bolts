/** Author: Samuel Chassot
  */
package ch.epfl.lexer

import stainless.annotation._
import stainless.collection._
import stainless.equations._
import stainless.lang.{ghost => ghostExpr, _}
import stainless.proof.check
import scala.annotation.tailrec
import stainless.lang.StaticChecks._

object SetUtils {
  @opaque
  @inlineOnce
  def lemmaConcatPreservesForall[A](s1: Set[A], s2: Set[A], p: A => Boolean): Unit = {
    require(s1.forall(p))
    require(s2.forall(p))
    ListUtils.lemmaConcatPreservesForall(s1.toList, s2.toList, p)
    assert((s1.toList ++ s2.toList).forall(p))
    ListUtils.lemmaForallThenOnContent(s1.toList ++ s2.toList, p)
    assert((s1.toList ++ s2.toList).content.forall(p))
  }.ensuring (_ => (s1 ++ s2).forall(p))

  @inlineOnce
  @opaque
  @ghost
  def lemmaFlatMapForallElem[A, B](s: Set[A], f: A => Set[B], p: B => Boolean, elm: B): Unit = {
    require(s.flatMap(f).contains(elm))
    require(Forall.Forall[A](a => f(a).forall(p)))

    unfold(s.flatMapPost(f)(elm))
    assert(s.flatMap(f).contains(elm))
    assert(s.exists(a => f(a).contains(elm)))
    assert(s.toList.exists(a => f(a).contains(elm)))
    val witness = ListUtils.getWitness(s.toList, a => f(a).contains(elm))
    assert(f(witness).contains(elm))
    assert(f(witness).toList.contains(elm))
    unfold(Forall.Forall[A](a => f(a).forall(p)))
    assert(f(witness).forall(p))
    assert(f(witness).toList.forall(p))
    ListSpecs.forallContained(f(witness).toList, p, elm)
  }.ensuring (_ => p(elm))

  @inlineOnce
  @opaque
  @ghost
  def lemmaFlatMapForallToList[A, B](s: Set[A], f: A => Set[B], p: B => Boolean, l: List[B]): Unit = {
    require(Forall.Forall[A](a => f(a).forall(p)))
    require(ListSpecs.subseq(l, s.flatMap(f).toList))
    decreases(l)
    l match 
      case Cons(hd, tl) => 
        ListSpecs.subseqContains(l, s.flatMap(f).toList, hd)
        assert(s.flatMap(f).contains(hd))
        unfold(s.flatMapPost(f)(hd))
        lemmaFlatMapForallElem(s, f, p, hd)
        ListSpecs.subseqTail(l, s.flatMap(f).toList)
        lemmaFlatMapForallToList(s, f, p, tl)
      case Nil() => ()

  }.ensuring (_ => l.forall(p))

  @inlineOnce
  @opaque
  @ghost
  def lemmaFlatMapForall[A, B](s: Set[A], f: A => Set[B], p: B => Boolean): Unit = {
    require(Forall.Forall[A](a => f(a).forall(p)))
    ListUtils.lemmaSubseqRefl(s.flatMap(f).toList)
    lemmaFlatMapForallToList(s, f, p, s.flatMap(f).toList)

  }.ensuring (_ => s.flatMap(f).forall(p))

}

object ListUtils {
  def isPrefix[B](prefix: List[B], l: List[B]): Boolean = {
    decreases(prefix)
    (prefix, l) match {
      case (Nil(), _) => true
      case (_, Nil()) => false
      case (l1, l2)   => if (l1.head == l2.head) isPrefix(l1.tail, l2.tail) else false
    }
  }.ensuring (res => if (res) l.size >= prefix.size else true)

  def removeLast[B](l: List[B]): List[B] = {
    require(!l.isEmpty)
    decreases(l)
    val res: List[B] = l match {
      case Cons(hd, Nil()) => Nil()
      case Cons(hd, tl)    => Cons(hd, removeLast(tl))
    }
    res
  }.ensuring (res => res ++ List(l.last) == l)

  def reverseList[B](l: List[B]): List[B] = {
    decreases(l)
    l match {
      case Cons(hd, tl) => reverseList(tl) ++ List(hd)
      case Nil()        => Nil()
    }
  }

  def getSuffix[B](l: List[B], p: List[B]): List[B] = {
    require(l.size >= p.size)
    require(isPrefix(p, l))
    decreases(l)
    p match {
      case Cons(hd, tl) => getSuffix(l.tail, tl)
      case Nil()        => l
    }
  }.ensuring (res => p ++ res == l)

  def getIndex[B](l: List[B], e: B): BigInt = {
    require(l.contains(e))
    decreases(l)
    l match {
      case Cons(hd, tl) if hd == e => BigInt(0)
      case Cons(hd, tl) if hd != e => 1 + getIndex(tl, e)
      case Nil()                   => BigInt(-1)
    }
  }.ensuring (res => res >= 0)

  def consecutiveSubseq[B](l1: List[B], lTot: List[B]): Boolean = {
    decreases(lTot)
    lTot match {
      case Cons(hd, tl) => consecutiveSubseqAtHead(l1, lTot) || consecutiveSubseq(l1, tl)
      case Nil()        => consecutiveSubseqAtHead(l1, lTot)
    }
  }

  def consecutiveSubseqAtHead[B](l1: List[B], lTot: List[B]): Boolean = {
    decreases(lTot)
    (l1, lTot) match {
      case (Nil(), _)                                           => true
      case (Cons(hd1, tl1), Cons(hdTot, tlTot)) if hd1 == hdTot => consecutiveSubseqAtHead(tl1, tlTot)
      case _                                                    => false
    }
  }

  @ghost
  def getWitness[B](l: List[B], p: B => Boolean): B = {
    require(l.exists(p))
    decreases(l)
    l match {
      case Cons(hd, tl) if p(hd) => hd
      case Cons(hd, tl)           => getWitness(tl, p)
      case Nil()                  => check(false); l.head
    }
  }.ensuring(res => p(res) && l.contains(res))

  @inlineOnce
  @opaque
  def lemmaForallThenOnContent[B](l: List[B], p: B => Boolean): Unit = {
    require(l.forall(p))
    decreases(l)
    l match {
      case Cons(hd, tl) => {
        lemmaForallThenOnContent(tl, p)
        assert(tl.content.forall(p))
        assert(l.content == tl.content ++ Set(hd))
        assert(p(hd))
        assert((tl.content ++ Set(hd)).toList.content.subsetOf(l.content))
        lemmaContentSubsetPreservesForall(l, (tl.content ++ Set(hd)).toList, p)
      }
      case Nil() => ()
    }
  }.ensuring (_ => l.content.forall(p))

  @inlineOnce
  @opaque
  def lemmaConsecutiveSubseqThenSubseq[B](l1: List[B], l2: List[B]): Unit = {
    require(consecutiveSubseq(l1, l2))
    decreases(l2)
    (l1, l2) match {
      case (Cons(hd1, tl1), Cons(hd2, tl2)) if consecutiveSubseqAtHead(l1, l2) => lemmaConsecutiveSubseqThenSubseq(tl1, tl2)
      case (Cons(hd1, tl1), Cons(hd2, tl2))                                    => lemmaConsecutiveSubseqThenSubseq(l1, tl2)
      case _                                                                   => ()
    }

  }.ensuring (_ => ListSpecs.subseq(l1, l2))

  @inlineOnce
  @opaque
  def lemmaContainsAndNotHdThenTlContains[B](l: List[B], e: B): Unit = {
    require(l.contains(e))
    require(l.head != e)

  }.ensuring (_ => l.tail.contains(e))

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

  }.ensuring (_ => l.tail.contains(e2))

  @inlineOnce
  @opaque
  def lemmaSameIndexThenSameElement[B](l: List[B], e1: B, e2: B): Unit = {
    require(l.contains(e1))
    require(l.contains(e2))
    require(getIndex(l, e1) == getIndex(l, e2))
    decreases(l)

    if (getIndex(l, e1) == 0) {
      assert(l.head == e1)
      assert(l.head == e2)
      assert(e1 == e2)
    } else {
      lemmaSameIndexThenSameElement(l.tail, e1, e2)
    }
  }.ensuring (_ => e1 == e2)

  @inlineOnce
  @opaque
  def lemmaGetIndexBiggerAndHeadEqThenTailContains[B](l: List[B], e1: B, e2: B): Unit = {
    require(l.contains(e1) && l.contains(e2))
    require(e1 != e2)
    require(l.head == e1)
    require(getIndex(l, e1) < getIndex(l, e2))

  }.ensuring (_ => l.tail.contains(e2))

  @inlineOnce
  @opaque
  def lemmaNotHeadSoGetIndexTailIsMinusOne[B](l: List[B], e: B): Unit = {
    require(l.contains(e))
    require(l.head != e)  
    decreases(l)

    if (l.tail.head != e) {
      lemmaNotHeadSoGetIndexTailIsMinusOne(l.tail, e)
    }
  }.ensuring (_ => getIndex(l, e) == getIndex(l.tail, e) + 1)

  @inlineOnce
  @opaque
  def lemmaIsPrefixRefl[B](l1: List[B], l2: List[B]): Unit = {
    decreases(l1)
    require(l1 == l2)
    l1 match {
      case Cons(hd, tl) => lemmaIsPrefixRefl(tl, l2.tail)
      case Nil()        => ()
    }
  }.ensuring (_ => isPrefix(l1, l2))

  @inlineOnce
  @opaque
  def lemmaConcatTwoListThenFirstIsPrefix[B](l1: List[B], l2: List[B]): Unit = {
    decreases(l1.size)
    l1 match {
      case Cons(hd, tl) => lemmaConcatTwoListThenFirstIsPrefix(tl, l2)
      case Nil()        => ()
    }
  }.ensuring (_ => isPrefix(l1, l1 ++ l2))

  @inlineOnce
  @opaque
  def lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref[B](p1: List[B], s1: List[B], p2: List[B], l: List[B]): Unit = {
    require(isPrefix(p2, l))
    require(p1 ++ s1 == l)
    require(!s1.isEmpty)
    require(p1.size < p2.size)
    decreases(p1)

    lemmaConcatTwoListThenFirstIsPrefix(p1, s1)

    p1 match {
      case Cons(hd, tl) => lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref(tl, s1, p2.tail, l.tail)
      case Nil()        => ()
    }
  }.ensuring (_ => p2.contains(s1.head))

  @inlineOnce
  @opaque
  def lemmaConcatAssociativity[B](l1: List[B], elmt: B, l2: List[B], tot: List[B]): Unit = {
    require((l1 ++ List(elmt)) ++ l2 == tot)
    decreases(l1)
    assert(l1 ++ List(elmt) ++ l2 == tot)
    l1 match {
      case Cons(hd, tl) => lemmaConcatAssociativity(tl, elmt, l2, tot.tail)
      case Nil()        => ()
    }
  }.ensuring (_ => l1 ++ (List(elmt) ++ l2) == tot)

  @inlineOnce
  @opaque
  def lemmaTwoListsConcatAssociativity[B](
      l1: List[B],
      l2: List[B],
      l3: List[B]
  ): Unit = {
    decreases(l1)
    l1 match {
      case Cons(hd, tl) => {
        lemmaTwoListsConcatAssociativity(tl, l2, l3)
      }
      case Nil() => ()
    }

  }.ensuring (_ => (l1 ++ l2) ++ l3 == l1 ++ (l2 ++ l3))

  @inlineOnce
  @opaque
  def lemmaRemoveLastConcatenatedPrefixStillPrefix[B](l: List[B], elmt: B, tot: List[B]): Unit = {
    require(isPrefix(l ++ List(elmt), tot))
    decreases(l)
    l match {
      case Cons(hd, tl) => lemmaRemoveLastConcatenatedPrefixStillPrefix(tl, elmt, tot.tail)
      case Nil()        => ()
    }
  }.ensuring (_ => isPrefix(l, tot))

  @inlineOnce
  @opaque
  def lemmaRemoveLastPrefixStillPrefix[B](p: List[B], l: List[B]): Unit = {
    require(!l.isEmpty)
    require(isPrefix(p, l))
    require(p.size < l.size)
    decreases(p)
    p match {
      case Cons(hd, tl) => lemmaRemoveLastPrefixStillPrefix(tl, l.tail)
      case Nil()        => ()
    }

  }.ensuring (_ => isPrefix(p, removeLast(l)))

  @inlineOnce
  @opaque
  def lemmaPrefixStaysPrefixWhenAddingToSuffix[B](p: List[B], l: List[B], suffix: List[B]): Unit = {
    require(isPrefix(p, l))
    decreases(p)
    p match {
      case Cons(hd, tl) => lemmaPrefixStaysPrefixWhenAddingToSuffix(tl, l.tail, suffix)
      case Nil()        => ()
    }
  }.ensuring (_ => isPrefix(p, l ++ suffix))

  @inlineOnce
  @opaque
  def lemmaRemoveLastPrefixDecreasesSize[B](l: List[B]): Unit = {
    require(l.size > 0)
  }.ensuring (_ => removeLast(l).size < l.size)

  @inlineOnce
  @opaque
  def lemmaIsPrefixSameLengthThenSameList[B](p1: List[B], p2: List[B], l: List[B]): Unit = {
    require(isPrefix(p1, l))
    require(isPrefix(p2, l))
    require(p1.size == p2.size)
    decreases(p1)

    p1 match {
      case Cons(hd, tl) => lemmaIsPrefixSameLengthThenSameList(tl, p2.tail, l.tail)
      case Nil()        => ()
    }

  }.ensuring (_ => p1 == p2)

  @inlineOnce
  @opaque
  def lemmaRemoveLastFromBothSidePreservesEq[B](p: List[B], s: List[B], l: List[B]): Unit = {
    require(p ++ s == l)
    require(!s.isEmpty)
    decreases(p)
    p match {
      case Cons(hd, tl) => lemmaRemoveLastFromBothSidePreservesEq(tl, s, l.tail)
      case Nil()        => ()
    }
  }.ensuring (_ => p ++ removeLast(s) == removeLast(l))

  @inlineOnce
  @opaque
  def lemmaRemoveLastFromLMakesItPrefix[B](l: List[B]): Unit = {
    require(!l.isEmpty)
    decreases(l.size)
    l match {
      case Cons(hd, Nil()) => ()
      case Cons(hd, tl)    => lemmaRemoveLastFromLMakesItPrefix(tl)
    }

  }.ensuring (_ => isPrefix(removeLast(l), l))

  @inlineOnce
  @opaque
  def lemmaSamePrefixThenSameSuffix[B](p1: List[B], s1: List[B], p2: List[B], s2: List[B], l: List[B]): Unit = {
    require(isPrefix(p1, l))
    require(isPrefix(p2, l))
    require(p1 ++ s1 == l)
    require(p2 ++ s2 == l)
    require(p1 == p2)
    decreases(p1)
    p1 match {
      case Cons(hd, tl) => lemmaSamePrefixThenSameSuffix(tl, s1, p2.tail, s2, l.tail)
      case Nil()        => ()
    }
  }.ensuring (_ => s1 == s2)

  @inlineOnce
  @opaque
  def lemmaIsPrefixThenSmallerEqSize[B](p: List[B], l: List[B]): Unit = {
    require(isPrefix(p, l))
    decreases(p)
    (p, l) match {
      case (Nil(), _) => ()
      case (_, Nil()) => ()
      case (l1, l2)   => lemmaIsPrefixThenSmallerEqSize(l1.tail, l2.tail)
    }
  }.ensuring (_ => p.size <= l.size)

  @inlineOnce
  @opaque
  def lemmaAddHeadSuffixToPrefixStillPrefix[B](p: List[B], l: List[B]): Unit = {
    require(isPrefix(p, l))
    require(p.size < l.size)
    decreases(p)
    p match {
      case Cons(hd, tl) => lemmaAddHeadSuffixToPrefixStillPrefix(tl, l.tail)
      case Nil()        => ()
    }
  }.ensuring (_ => isPrefix(p ++ List(getSuffix(l, p).head), l))

  @inlineOnce
  @opaque
  def lemmaGetSuffixOnListWithItSelfIsEmpty[B](l: List[B]): Unit = {
    decreases(l.size)
    lemmaIsPrefixRefl(l, l)
    l match {
      case Cons(hd, tl) => lemmaGetSuffixOnListWithItSelfIsEmpty(tl)
      case Nil()        => ()
    }
  }.ensuring (_ => getSuffix(l, l).isEmpty)

  @inlineOnce
  @opaque
  def lemmaMoveElementToOtherListKeepsConcatEq[B](s1: List[B], hd2: B, tl2: List[B], tot: List[B]): Unit = {
    require(s1 ++ Cons(hd2, tl2) == tot)
    decreases(s1)
    s1 match {
      case Cons(hd1, tl1) => lemmaMoveElementToOtherListKeepsConcatEq(tl1, hd2, tl2, tot.tail)
      case Nil()          => ()
    }

  }.ensuring (_ => (s1 ++ List(hd2)) ++ tl2 == tot)

  @inlineOnce
  @opaque
  def lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther[B](s1: List[B], s2: List[B], l: List[B]): Unit = {
    require(isPrefix(s1, l))
    require(isPrefix(s2, l))
    require(s2.size <= s1.size)
    decreases(s2)

    s2 match {
      case Cons(hd, tl) => lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther(s1.tail, tl, l.tail)
      case Nil()        =>
    }
  }.ensuring (_ => isPrefix(s2, s1))

  @inlineOnce
  @opaque
  def concatWithoutDuplicates[B](baseList: List[B], newList: List[B]): List[B] = {
    require(ListOps.noDuplicate(baseList))
    decreases(newList)

    newList match {
      case Cons(hd, tl) if baseList.contains(hd)  => {
        ghostExpr({
          lemmaSubseqRefl(baseList)
          val res = concatWithoutDuplicates(baseList, tl)
          assert(ListOps.noDuplicate(res) )
          assert((baseList ++ tl).content == res.content )
          assert(ListSpecs.subseq(res, baseList ++ tl))
          lemmaBiggerSndListPreservesSubSeq(res, baseList, tl, List(hd))
  
          lemmaTwoListsConcatAssociativity(baseList, List(hd), tl)
          assert( baseList ++ (List(hd) ++ tl) ==  baseList ++ List(hd) ++ tl)
          assert(ListSpecs.subseq(res, baseList ++ (List(hd) ++ tl)))

          assert(isPrefix(baseList, res))
        })
        
        concatWithoutDuplicates(baseList, tl)
      }
      case Cons(hd, tl) if !baseList.contains(hd) => {
        ghostExpr({
          lemmaConcatTwoListThenFirstIsPrefix(baseList, List(hd))
          lemmaAppendNewElementElementPreserves(baseList, hd)
          val res = concatWithoutDuplicates(baseList ++ List(hd), tl)
          assert( ListOps.noDuplicate(res) )
          assert(((baseList ++ List(hd)) ++ newList).content == res.content)
          assert(ListSpecs.subseq(res, (baseList ++ List(hd)) ++ tl))
          lemmaTwoListsConcatAssociativity(baseList, List(hd), tl)
          assert(ListSpecs.subseq(res, baseList ++ (List(hd) ++ tl)))

          assert(isPrefix(baseList ++ List(hd), res))
          lemmaRemoveLastConcatenatedPrefixStillPrefix(baseList, hd, res)
          assert(isPrefix(baseList, res))
        })
        concatWithoutDuplicates(baseList ++ List(hd), tl)
      }
      case Nil()                                  => {
        ghostExpr({
          lemmaSubseqRefl(baseList)
          lemmaIsPrefixRefl(baseList, baseList)
        })
        baseList
      }
    }
  }.ensuring (res => 
    ListOps.noDuplicate(res) 
    && (baseList ++ newList).content == res.content 
    && ListSpecs.subseq(res, baseList ++ newList)
    && isPrefix(baseList, res)
    )

  @inlineOnce
  @opaque
  def lemmaAppendNewElementElementPreserves[B](l: List[B], elmt: B): Unit = {
    require(ListSpecs.noDuplicate(l))
    require(!l.contains(elmt))
    decreases(l)
    l match {
      case Cons(hd, tl) => lemmaAppendNewElementElementPreserves(tl, elmt)
      case Nil()        => ()
    }
  }.ensuring (_ => ListSpecs.noDuplicate(l ++ List(elmt)))

  @inlineOnce
  @opaque
  def lemmaBiggerSndListPreservesSubSeq[B](sub: List[B], l1: List[B], l2: List[B], l3: List[B]): Unit = {
    require(ListSpecs.subseq(sub, l1 ++ l2))
    decreases((l1 ++ l2).size)
    (sub, l1 ++ l2) match {
      case (Nil(), _) => ()
      case (Cons(x, xs), Cons(y, ys)) if l1.isEmpty => lemmaConcatNewListPreservesSubSeq(sub, l3, l2)
      case (Cons(x, xs), Cons(y, ys)) if x == y && ListSpecs.subseq(xs, ys) => lemmaBiggerSndListPreservesSubSeq(xs, l1.tail, l2, l3)
      case (Cons(x, xs), Cons(y, ys)) => lemmaBiggerSndListPreservesSubSeq(sub, l1.tail, l2, l3)
      case _ => ()
    }
    
  }.ensuring (_ => ListSpecs.subseq(sub, l1 ++ l3 ++ l2))

  @inlineOnce
  @opaque
  def lemmaConcatNewListPreservesSubSeq[B](l1: List[B], l2: List[B], l3: List[B]): Unit = {
    require(ListSpecs.subseq(l1, l3))
    decreases(l2)
    l2 match {
      case Cons(hd, tl) => lemmaConcatNewListPreservesSubSeq(l1, tl, l3)
      case Nil()        => ()
    }
  }.ensuring (_ => ListSpecs.subseq(l1, l2 ++ l3))

  @inlineOnce
  @opaque
  def lemmaTailOfConcatIsTailConcat[B](l1: List[B], l2: List[B]): Unit = {
    require(!l1.isEmpty)
    decreases(l1)
    l1 match {
      case Cons(hd, tl) if !tl.isEmpty => lemmaTailOfConcatIsTailConcat(tl, l2)
      case _        => ()
    }
  }.ensuring (_ => (l1 ++ l2).tail == l1.tail ++ l2)

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
  }.ensuring (res => ListOps.noDuplicate(res) && res.content == (list ++ acc).content)

  @inlineOnce
  @opaque
  def lemmaSubseqRefl[B](l: List[B]): Unit = {
    decreases(l.size)
    l match {
      case Nil()        => ()
      case Cons(hd, tl) => lemmaSubseqRefl(tl)
    }
  }.ensuring (_ => ListSpecs.subseq(l, l))

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
  }.ensuring (_ => ListSpecs.subseq(l, Cons(elmt, l)))

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

  }.ensuring (_ => ListSpecs.subseq(l1, l3))

  // @inlineOnce
  @opaque
  def lemmaConcatPreservesForall[B](l1: List[B], l2: List[B], p: B => Boolean): Unit = {
    require(l1.forall(p))
    require(l2.forall(p))
    decreases(l1)
    l1 match {
      case Cons(hd, tl) => lemmaConcatPreservesForall(tl, l2, p)
      case Nil()        => ()
    }
  }.ensuring (_ => (l1 ++ l2).forall(p))

  // @inlineOnce 
  @opaque
  def lemmaContentSubsetPreservesForall[B](l1: List[B], l2: List[B], p: B => Boolean): Unit = {
    require(l1.forall(p))
    require(l2.content.subsetOf(l1.content))
    decreases(l2)
    l2 match {
      case Cons(hd, tl) => {
        lemmaContentSubsetPreservesForall(l1, tl, p)
        assert(l1.contains(hd))
        ListSpecs.forallContained(l1, p, hd)
        assert(p(hd))
      }
      case Nil() => ()
    }
  }.ensuring (_ => l2.forall(p))

  @inlineOnce
  @opaque
  def lemmaConcatThenFirstSubseqOfTot[B](l1: List[B], l2: List[B]): Unit = {
    decreases(l1)
    l1 match {
      case Cons(hd, tl) => lemmaConcatThenFirstSubseqOfTot(tl, l2)
      case Nil()        => ()
    }
  }.ensuring (_ => ListSpecs.subseq(l1, l1 ++ l2))

  @inlineOnce
  @opaque
  def lemmaConcatThenSecondSubseqOfTot[B](l1: List[B], l2: List[B]): Unit = {
    decreases(l1)
    l1 match {
      case Cons(hd, tl) => lemmaConcatThenSecondSubseqOfTot(tl, l2)
      case Nil()        => lemmaSubseqRefl(l2)
    }
  }.ensuring (_ => ListSpecs.subseq(l2, l1 ++ l2))

  @inlineOnce
  @opaque
  def lemmaConcatTwoListsWhichNotContainThenTotNotContain[B](l1: List[B], l2: List[B], b: B): Unit = {
    require(!l1.contains(b))
    require(!l2.contains(b))
    decreases(l1)

    l1 match {
      case Cons(hd, tl) if hd == b => check(false)
      case Cons(hd, tl)            => lemmaConcatTwoListsWhichNotContainThenTotNotContain(tl, l2, b)
      case Nil()                   => ()
    }
  }.ensuring (_ => !(l1 ++ l2).contains(b))

  @inlineOnce
  @opaque
  def lemmaForallContainsThenForEqualLists[B](l1: List[B], l2: List[B], l1Bis: List[B], l2Bis: List[B]): Unit = {
    require(l1.forall(b => l2.contains(b)))
    require(l1 == l1Bis)
    require(l2 == l2Bis)

  }.ensuring (_ => l1Bis.forall(b => l2Bis.contains(b)))

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
  }.ensuring (_ => lIn.size <= l.size)

  @inlineOnce
  @opaque
  def lemmaRemoveElmtContainedSizeSmaller[B](l: List[B], e: B): Unit = {
    require(l.contains(e))
    decreases(l)
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
  }.ensuring (_ => (l - e).size < l.size)
}