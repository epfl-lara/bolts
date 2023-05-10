/** Author: Samuel Chassot
  */

import stainless.equations._
import stainless.lang._
import stainless.collection._
import stainless.annotation._
import stainless.proof._

object VerifiedDFA {
  case class State(label: BigInt) {
    require(label >= 0)
  }

  case class Transition[C](from: State, c: C, to: State)
  case class DFA[C](startState: State, finalStates: List[State], errorState: State, transitions: List[Transition[C]])

  def validDFA[C](dfa: DFA[C]): Boolean =
    uniqueStateCharTransitions(dfa.transitions, Nil()) && noTransitionOutOfErrorState(dfa.transitions, dfa.errorState) && !dfa.finalStates.contains(dfa.errorState)

  def uniqueStateCharTransitions[C](l: List[Transition[C]], seenStateCharPairs: List[(State, C)]): Boolean = {
    l match {
      case Cons(hd, tl) => !seenStateCharPairs.contains((hd.from, hd.c)) && uniqueStateCharTransitions(tl, Cons((hd.from, hd.c), seenStateCharPairs))
      case Nil()        => true
    }
  }
  def noTransitionOutOfErrorState[C](l: List[Transition[C]], errorState: State): Boolean = {
    l match {
      case Cons(hd, tl) => hd.from != errorState && noTransitionOutOfErrorState(tl, errorState)
      case Nil()        => true
    }
  }

  @inline
  def usedCharacters[C](dfa: DFA[C]): List[C] = usedCharactersTrans(dfa.transitions)

  def usedCharactersTrans[C](l: List[Transition[C]]): List[C] = {
    l match {
      case Cons(hd, tl) => Cons(hd.c, usedCharactersTrans(tl))
      case Nil()        => Nil()
    }
  }

}

object VerifiedDFAMatcher {
  import VerifiedDFA._
  import ListUtils._

  @inline
  def matchDFA[C](dfa: DFA[C], input: List[C]): Boolean = {
    require(validDFA(dfa))
    !input.isEmpty && findLongestMatch(dfa, input)._2.isEmpty
  } ensuring (res => !res || findLongestMatch(dfa, input)._1 == input)

  @inline
  def findLongestMatch[C](dfa: DFA[C], input: List[C]): (List[C], List[C]) = {
    require(validDFA(dfa))
    findLongestMatchInner(dfa, dfa.startState, Nil(), input)
  } ensuring (res => res._1 ++ res._2 == input)

  def findLongestMatchInner[C](dfa: DFA[C], from: State, pastChars: List[C], suffix: List[C]): (List[C], List[C]) = {
    require(validDFA(dfa))
    require(from == moveMultipleSteps(dfa, dfa.startState, pastChars))
    decreases(suffix.size)

    if (suffix.isEmpty) {
      if (dfa.finalStates.contains(from)) {
        ListUtils.lemmaConcatTwoListThenFirstIsPrefix(pastChars, suffix)
        (pastChars, suffix)
      } else {
        (Nil(), pastChars ++ suffix)
      }
    } else {

      if (from == dfa.errorState) {
        // From the invariant => trap state => return directly
        (Nil(), pastChars ++ suffix)
      } else {
        val nextChar = suffix.head

        val newPrefix = pastChars ++ List(nextChar)
        val newSuffix = suffix.tail

        ListUtils.lemmaConcatTwoListThenFirstIsPrefix(pastChars, suffix)
        ListUtils.lemmaAddHeadSuffixToPrefixStillPrefix(pastChars, pastChars ++ suffix)

        ListUtils.lemmaTwoListsConcatAssociativity(pastChars, List(nextChar), newSuffix)
        ListUtils.lemmaSubseqRefl(dfa.transitions)

        val nextState = moveOneStep(dfa, dfa.transitions, from, nextChar)

        lemmaMoveOneStepAfterMultipleIsSameAsMultipleWithNewChar(dfa, dfa.startState, pastChars, nextChar)

        val recursive = findLongestMatchInner(dfa, nextState, newPrefix, newSuffix)

        if (dfa.finalStates.contains(from)) {
          if (recursive._1.size > pastChars.size) {
            recursive
          } else {
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(newPrefix, newSuffix)
            assert(ListUtils.isPrefix(newPrefix, newPrefix ++ newSuffix))
            assert(ListUtils.isPrefix(newPrefix, pastChars ++ suffix))
            (pastChars, suffix)
          }
        } else {
          recursive
        }
      }

    }

  } ensuring (res =>
    res._1.isEmpty && res._2 == pastChars ++ suffix || res._1.size >= pastChars.size && ListUtils.isPrefix(res._1, pastChars ++ suffix) && res._1 ++ res._2 == pastChars ++ suffix
  )

  def moveOneStep[C](dfa: DFA[C], transitionsListRec: List[Transition[C]], from: State, c: C): State = {
    require(validDFA(dfa))
    require(ListSpecs.subseq(transitionsListRec, dfa.transitions))

    transitionsListRec match {
      case Cons(hd, tl) if hd.from == from && hd.c == c => hd.to
      case Cons(hd, tl) => {
        ListUtils.lemmaTailIsSubseqOfList(hd, tl)
        ListUtils.lemmaSubSeqTransitive(tl, transitionsListRec, dfa.transitions)
        moveOneStep(dfa, tl, from, c)
      }
      case Nil() => dfa.errorState
    }

  } ensuring (res => true)

  def moveMultipleSteps[C](dfa: DFA[C], from: State, cs: List[C]): State = {
    require(validDFA(dfa))
    decreases(cs.size)
    cs match {
      case Cons(hd, tl) => {
        ListUtils.lemmaSubseqRefl(dfa.transitions)
        moveMultipleSteps(dfa, moveOneStep(dfa, dfa.transitions, from, hd), tl)
      }
      case Nil() => from
    }
  } ensuring (res => true)

  def moveMultipleStepsOpt[C](dfa: DFA[C], from: State, cs: List[C]): State = {
    require(validDFA(dfa))
    decreases(cs.size)
    cs match {
      case Cons(hd, tl) if from == dfa.errorState => {
        // Optimisation as it stops as soon as it reaches the error state.
        // It is correct because the invariant says that no transitions can go out of the error state
        lemmaNoTransitionsFromErrorStateThenFixPointMultipleSteps(dfa, cs)
        dfa.errorState
      }
      case Cons(hd, tl) => {
        ListUtils.lemmaSubseqRefl(dfa.transitions)
        moveMultipleSteps(dfa, moveOneStep(dfa, dfa.transitions, from, hd), tl)
      }
      case Nil() => from
    }
  } ensuring (res => res == moveMultipleSteps(dfa, from, cs))

  @opaque
  @inlineOnce
  def lemmaMoveOneStepAfterMultipleIsSameAsMultipleWithNewChar[C](dfa: DFA[C], from: State, cs: List[C], newC: C): Unit = {
    require(validDFA(dfa))
    decreases(cs.size)
    cs match {
      case Cons(hd, tl) => {
        ListUtils.lemmaSubseqRefl(dfa.transitions)
        lemmaMoveOneStepAfterMultipleIsSameAsMultipleWithNewChar(dfa, moveOneStep(dfa, dfa.transitions, from, hd), tl, newC)
      }
      case Nil() => ()
    }
  } ensuring ({
    ListUtils.lemmaSubseqRefl(dfa.transitions)
    moveMultipleSteps(dfa, from, cs ++ List(newC)) == moveOneStep(dfa, dfa.transitions, moveMultipleSteps(dfa, from, cs), newC)
  })

  def lemmaMoveMultipleStepsFromStartIsEqualToMoveFromStateAfterPrefix[C](dfa: DFA[C], from: State, cs: List[C], prefix: List[C], suffix: List[C]): Unit = {
    require(validDFA(dfa))
    require(cs == prefix ++ suffix)
    prefix match {
      case Cons(hd, tl) => {
        ListUtils.lemmaSubseqRefl(dfa.transitions)
        lemmaMoveMultipleStepsFromStartIsEqualToMoveFromStateAfterPrefix(dfa, moveOneStep(dfa, dfa.transitions, from, hd), cs.tail, tl, suffix)
      }
      case Nil() => ()
    }

  } ensuring (moveMultipleSteps(dfa, from, cs) == moveMultipleSteps(dfa, moveMultipleSteps(dfa, from, prefix), suffix))

  // Longest match theorems
  def longestMatchIsAcceptedByMatchOrIsEmpty[C](dfa: DFA[C], input: List[C]): Unit = {
    require(validDFA(dfa))

    longestMatchIsAcceptedByMatchOrIsEmptyInner(dfa, Nil(), input, findLongestMatchInner(dfa, dfa.startState, Nil(), input)._1, dfa.startState)

  } ensuring (findLongestMatchInner(dfa, dfa.startState, Nil(), input)._1.isEmpty || matchDFA(dfa, findLongestMatchInner(dfa, dfa.startState, Nil(), input)._1))

  def longestMatchIsAcceptedByMatchOrIsEmptyInner[C](dfa: DFA[C], pastChars: List[C], suffix: List[C], matchedP: List[C], from: State): Unit = {
    require(validDFA(dfa))
    require(moveMultipleSteps(dfa, dfa.startState, pastChars) == from)
    require(findLongestMatchInner(dfa, from, pastChars, suffix)._1 == matchedP)
    decreases(suffix.size)

    if (suffix.isEmpty) {
      if (dfa.finalStates.contains(from)) {
        ListUtils.lemmaConcatTwoListThenFirstIsPrefix(pastChars, suffix)
        assert(matchedP == pastChars)
        assert(suffix.isEmpty)
        assert(findLongestMatchInner(dfa, from, pastChars, suffix)._1 == matchedP)
        findLongestMatchFromItThenFromSmaller(dfa, pastChars ++ suffix, pastChars, suffix, Nil(), pastChars ++ suffix)
        ()
      } else {
        ()
      }
    } else {

      if (from == dfa.errorState) {

        ()
      } else {

        val nextChar = suffix.head

        val newPrefix = pastChars ++ List(nextChar)
        val newSuffix = suffix.tail

        ListUtils.lemmaConcatTwoListThenFirstIsPrefix(pastChars, suffix)
        ListUtils.lemmaAddHeadSuffixToPrefixStillPrefix(pastChars, pastChars ++ suffix)

        ListUtils.lemmaTwoListsConcatAssociativity(pastChars, List(nextChar), newSuffix)
        ListUtils.lemmaSubseqRefl(dfa.transitions)

        val nextState = moveOneStep(dfa, dfa.transitions, from, nextChar)

        lemmaMoveOneStepAfterMultipleIsSameAsMultipleWithNewChar(dfa, dfa.startState, pastChars, nextChar)

        val recursive = findLongestMatchInner(dfa, nextState, newPrefix, newSuffix)

        if (dfa.finalStates.contains(from)) {
          if (recursive._1.size > pastChars.size) {
            // recursive
            longestMatchIsAcceptedByMatchOrIsEmptyInner(dfa, newPrefix, newSuffix, matchedP, nextState)
            ()
          } else {
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(newPrefix, newSuffix)
            assert(ListUtils.isPrefix(newPrefix, newPrefix ++ newSuffix))
            assert(ListUtils.isPrefix(newPrefix, pastChars ++ suffix))

            assert(findLongestMatchInner(dfa, from, pastChars, suffix)._1 == matchedP)
            assert(pastChars.size == matchedP.size)
            assert(pastChars == matchedP)
            findLongestMatchFromItThenSameWithoutSuffixSame(dfa, pastChars ++ suffix, pastChars, suffix)
            findLongestMatchFromItThenFromSmaller(dfa, pastChars, pastChars, Nil(), Nil(), pastChars)
            // (pastChars, suffix)
            ()
          }
        } else {
          // recursive
          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(newPrefix, newSuffix)
          longestMatchIsAcceptedByMatchOrIsEmptyInner(dfa, newPrefix, newSuffix, matchedP, nextState)
          ()
        }
      }
    }

  } ensuring (matchedP.isEmpty || matchDFA(dfa, matchedP))

  def longestMatchNoBiggerStringMatch[C](dfa: DFA[C], input: List[C], returnP: List[C], bigger: List[C]): Unit = {
    require(validDFA(dfa))
    require(ListUtils.isPrefix(returnP, input))
    require(ListUtils.isPrefix(bigger, input))
    require(bigger.size >= returnP.size)
    require(findLongestMatchInner(dfa, dfa.startState, Nil(), input)._1 == returnP)

    if (bigger.size == returnP.size) {
      ListUtils.lemmaIsPrefixSameLengthThenSameList(bigger, returnP, input)
      ()
    } else {
      if (matchDFA(dfa, bigger)) {
        lemmaKnownAcceptedStringFromSmallerPrefixThenAtLeastThat(dfa, input, Nil(), input, bigger)
        check(false)
      }
    }

  } ensuring (bigger == returnP || !matchDFA(dfa, bigger))

  def lemmaKnownAcceptedStringFromSmallerPrefixThenAtLeastThat[C](dfa: DFA[C], input: List[C], testedP: List[C], testedSuffix: List[C], knownP: List[C]): Unit = {
    require(validDFA(dfa))
    require(ListUtils.isPrefix(knownP, input))
    require(ListUtils.isPrefix(testedP, input))
    require(testedP ++ testedSuffix == input)
    require(testedP.size <= knownP.size)
    require(matchDFA(dfa, knownP))
    decreases(testedSuffix.size)

    if (testedP.size == knownP.size) {
      ListUtils.lemmaIsPrefixSameLengthThenSameList(testedP, knownP, input)
      assert(testedP == knownP)
      lemmaFindLongestMatchStartFromStartSmallerPrefixThanResultSame(dfa, testedP, testedP, Nil(), testedP, Nil())
      assert(findLongestMatchInner(dfa, moveMultipleSteps(dfa, dfa.startState, testedP), testedP, Nil())._1 == testedP)

      assert(findLongestMatchInner(dfa, moveMultipleSteps(dfa, dfa.startState, testedP), testedP, Nil())._1 == testedP)
      lemmaFindLongestMatchWithAddedSuffixReturnedBiggerOrEqualMatch(dfa, knownP, testedSuffix)

      assert(findLongestMatchInner(dfa, moveMultipleSteps(dfa, dfa.startState, testedP), testedP, testedSuffix)._1.size >= knownP.size)
    } else {
      val newTestedP = testedP ++ List(testedSuffix.head)
      val newTestedS = testedSuffix.tail
      ListUtils.lemmaTwoListsConcatAssociativity(testedP, List(testedSuffix.head), newTestedS)
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(newTestedP, newTestedS)
      lemmaKnownAcceptedStringFromSmallerPrefixThenAtLeastThat(dfa, input, newTestedP, newTestedS, knownP)
      if (moveMultipleSteps(dfa, dfa.startState, testedP) == dfa.errorState) {
        lemmaMoveMultipleStepsFromStartIsEqualToMoveFromStateAfterPrefix(dfa, dfa.startState, newTestedP, testedP, List(testedSuffix.head))
        lemmaNoTransitionsFromErrorStateThenFixPointMultipleSteps(dfa, List(testedSuffix.head))
        lemmaFindLongestMatchReturnNilFromErrorState(dfa, newTestedP, newTestedS, input)
        check(false)
      }
    }

  } ensuring (findLongestMatchInner(dfa, moveMultipleSteps(dfa, dfa.startState, testedP), testedP, testedSuffix)._1.size >= knownP.size)

  def lemmaFindLongestMatchWithAddedSuffixReturnedBiggerOrEqualMatch[C](dfa: DFA[C], longestM: List[C], newSuffix: List[C]): Unit = {
    require(validDFA(dfa))
    require(findLongestMatchInner(dfa, moveMultipleSteps(dfa, dfa.startState, longestM), longestM, Nil())._1 == longestM)

    val from = moveMultipleSteps(dfa, dfa.startState, longestM)

    if (newSuffix.isEmpty) {
      if (dfa.finalStates.contains(from)) {
        ListUtils.lemmaConcatTwoListThenFirstIsPrefix(longestM, newSuffix)
        // (longestM, newSuffix)
        ()
      } else {
        ()
      }
    } else {
      val nextChar = newSuffix.head

      val newPrefix = longestM ++ List(nextChar)
      val newSuffixIn = newSuffix.tail

      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(longestM, newSuffix)
      ListUtils.lemmaAddHeadSuffixToPrefixStillPrefix(longestM, longestM ++ newSuffix)

      ListUtils.lemmaTwoListsConcatAssociativity(longestM, List(nextChar), newSuffixIn)
      ListUtils.lemmaSubseqRefl(dfa.transitions)

      val nextState = moveOneStep(dfa, dfa.transitions, from, nextChar)

      lemmaMoveOneStepAfterMultipleIsSameAsMultipleWithNewChar(dfa, dfa.startState, longestM, nextChar)

      val recursive = findLongestMatchInner(dfa, nextState, newPrefix, newSuffixIn)

      if (dfa.finalStates.contains(from)) {
        if (recursive._1.size > longestM.size) {
          ()
          // recursive
        } else {
          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(newPrefix, newSuffixIn)
          assert(ListUtils.isPrefix(newPrefix, newPrefix ++ newSuffixIn))
          assert(ListUtils.isPrefix(newPrefix, longestM ++ newSuffix))
          // (longestM, newSuffix)
          ()
        }
      } else {
        // recursive
        ()
      }
    }

  } ensuring (findLongestMatchInner(dfa, moveMultipleSteps(dfa, dfa.startState, longestM), longestM, newSuffix)._1.size >= longestM.size)

  def findLongestMatchFromItThenFromSmaller[C](dfa: DFA[C], input: List[C], longestM: List[C], suffix: List[C], smallerP: List[C], smallerPSuffix: List[C]): Unit = {
    require(validDFA(dfa))
    require(longestM ++ suffix == input)
    require(smallerP ++ smallerPSuffix == input)
    require(smallerP.size <= longestM.size)
    require(findLongestMatchInner(dfa, moveMultipleSteps(dfa, dfa.startState, longestM), longestM, suffix)._1 == longestM)
    decreases(smallerPSuffix.size)

    if (smallerP.size == longestM.size) {
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(smallerP, smallerPSuffix)
      ListUtils.lemmaIsPrefixSameLengthThenSameList(smallerP, longestM, input)
      ListUtils.lemmaSamePrefixThenSameSuffix(smallerP, smallerPSuffix, longestM, suffix, input)
      ()
    } else {
      val newSmallerP = smallerP ++ List(smallerPSuffix.head)
      val newSmallerPSuff = smallerPSuffix.tail
      ListUtils.lemmaTwoListsConcatAssociativity(smallerP, List(smallerPSuffix.head), newSmallerPSuff)
      findLongestMatchFromItThenFromSmaller(dfa, input, longestM, suffix, newSmallerP, newSmallerPSuff)
      assert(findLongestMatchInner(dfa, moveMultipleSteps(dfa, dfa.startState, newSmallerP), newSmallerP, newSmallerPSuff)._1 == longestM)

      val from = moveMultipleSteps(dfa, dfa.startState, smallerP)
      if (smallerPSuffix.isEmpty) {
        check(false)

      } else {

        if (from == dfa.errorState) {
          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(smallerP, smallerPSuffix)
          ListUtils.lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther(longestM, smallerP, input)
          lemmaMoveMultipleStepsFromStartIsEqualToMoveFromStateAfterPrefix(dfa, dfa.startState, longestM, smallerP, ListUtils.getSuffix(longestM, smallerP))
          lemmaNoTransitionsFromErrorStateThenFixPointMultipleSteps(dfa, ListUtils.getSuffix(longestM, smallerP))
          lemmaFindLongestMatchReturnNilFromErrorState(dfa, longestM, suffix, input)
          check(false)
          ()
        } else {

          val nextChar = smallerPSuffix.head

          val newPrefix = smallerP ++ List(nextChar)
          val newSuffix = smallerPSuffix.tail

          assert(newPrefix == newSmallerP)
          assert(newSmallerPSuff == newSuffix)

          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(smallerP, smallerPSuffix)
          ListUtils.lemmaAddHeadSuffixToPrefixStillPrefix(smallerP, smallerP ++ smallerPSuffix)

          ListUtils.lemmaTwoListsConcatAssociativity(smallerP, List(nextChar), newSuffix)
          ListUtils.lemmaSubseqRefl(dfa.transitions)

          val nextState = moveOneStep(dfa, dfa.transitions, from, nextChar)

          lemmaMoveOneStepAfterMultipleIsSameAsMultipleWithNewChar(dfa, dfa.startState, smallerP, nextChar)

          val recursive = findLongestMatchInner(dfa, nextState, newPrefix, newSuffix)

          assert(recursive == findLongestMatchInner(dfa, moveMultipleSteps(dfa, dfa.startState, newSmallerP), newSmallerP, newSmallerPSuff))

          assert(recursive._1.size > smallerP.size)
          if (dfa.finalStates.contains(from)) {
            if (recursive._1.size > smallerP.size) {
              assert(findLongestMatchInner(dfa, moveMultipleSteps(dfa, dfa.startState, smallerP), smallerP, smallerPSuffix) == recursive)
              // recursive
            } else {
              ListUtils.lemmaConcatTwoListThenFirstIsPrefix(newPrefix, newSuffix)
              assert(ListUtils.isPrefix(newPrefix, newPrefix ++ newSuffix))
              assert(ListUtils.isPrefix(newPrefix, smallerP ++ smallerPSuffix))
              check(false)
              // (smallerP, smallerPSuffix)
            }
          } else {
            // recursive
          }
          assert(findLongestMatchInner(dfa, moveMultipleSteps(dfa, dfa.startState, smallerP), smallerP, smallerPSuffix) == recursive)
        }
        assert(findLongestMatchInner(dfa, moveMultipleSteps(dfa, dfa.startState, smallerP), smallerP, smallerPSuffix)._1 == longestM)
        ()
      }
    }

  } ensuring (findLongestMatchInner(dfa, moveMultipleSteps(dfa, dfa.startState, smallerP), smallerP, smallerPSuffix)._1 == longestM)

  def findLongestMatchFromItThenSameWithoutSuffixSame[C](dfa: DFA[C], input: List[C], longestM: List[C], suffix: List[C]): Unit = {
    require(validDFA(dfa))
    require(longestM ++ suffix == input)
    require(findLongestMatchInner(dfa, moveMultipleSteps(dfa, dfa.startState, longestM), longestM, suffix)._1 == longestM)
  } ensuring (findLongestMatchInner(dfa, moveMultipleSteps(dfa, dfa.startState, longestM), longestM, Nil())._1 == longestM)

  @opaque
  @inlineOnce
  def lemmaFindLongestMatchStartFromStartSmallerPrefixThanResultSame[C](
      dfa: DFA[C],
      input: List[C],
      longestM: List[C],
      suffix: List[C],
      smallerP: List[C],
      smallerPSuffix: List[C]
  ): Unit = {
    require(validDFA(dfa))
    require(longestM ++ suffix == input)
    require(smallerP ++ smallerPSuffix == input)
    require(smallerP.size <= longestM.size)
    require(findLongestMatchInner(dfa, dfa.startState, Nil(), input)._1 == longestM)
    decreases(smallerPSuffix.size)

    if (smallerP.isEmpty) {
      ()
    } else {
      if (smallerP.size == longestM.size) {
        ListUtils.lemmaConcatTwoListThenFirstIsPrefix(smallerP, smallerPSuffix)
        ListUtils.lemmaIsPrefixSameLengthThenSameList(smallerP, longestM, input)
        assert(smallerP == longestM)
        lemmaFindLongestKnownPFromSmallerThenFromIt(dfa, input, longestM, suffix, Nil(), input)
        ListUtils.lemmaSamePrefixThenSameSuffix(smallerP, smallerPSuffix, longestM, suffix, input)
        assert(findLongestMatchInner(dfa, dfa.startState, Nil(), input)._1 == findLongestMatchInner(dfa, moveMultipleSteps(dfa, dfa.startState, longestM), longestM, suffix)._1)
      } else {
        val newSmallerP = smallerP ++ List(smallerPSuffix.head)
        val newSmallerPSuff = smallerPSuffix.tail
        ListUtils.lemmaTwoListsConcatAssociativity(smallerP, List(smallerPSuffix.head), newSmallerPSuff)
        lemmaFindLongestMatchStartFromStartSmallerPrefixThanResultSame(dfa, input, longestM, suffix, newSmallerP, newSmallerPSuff)

        if (moveMultipleSteps(dfa, dfa.startState, smallerP) == dfa.errorState) {
          lemmaMoveMultipleStepsFromStartIsEqualToMoveFromStateAfterPrefix(dfa, dfa.startState, newSmallerP, smallerP, List(smallerPSuffix.head))
          lemmaNoTransitionsFromErrorStateThenFixPointMultipleSteps(dfa, List(smallerPSuffix.head))
          lemmaFindLongestMatchReturnNilFromErrorState(dfa, newSmallerP, newSmallerPSuff, input)
          check(false)
        }
      }
    }

  } ensuring (findLongestMatchInner(dfa, moveMultipleSteps(dfa, dfa.startState, smallerP), smallerP, smallerPSuffix)._1 == longestM)

  @opaque
  @inlineOnce
  def lemmaFindLongestKnownPFromSmallerThenFromIt[C](dfa: DFA[C], input: List[C], longestM: List[C], suffix: List[C], smallerP: List[C], smallerPSuffix: List[C]): Unit = {
    require(validDFA(dfa))
    require(longestM ++ suffix == input)
    require(smallerP ++ smallerPSuffix == input)
    require(smallerP.size <= longestM.size)
    require(findLongestMatchInner(dfa, moveMultipleSteps(dfa, dfa.startState, smallerP), smallerP, smallerPSuffix)._1 == longestM)
    decreases(smallerPSuffix.size)

    if (longestM.size == smallerP.size) {
      ListUtils.lemmaIsPrefixSameLengthThenSameList(smallerP, longestM, input)
      ListUtils.lemmaSamePrefixThenSameSuffix(smallerP, smallerPSuffix, longestM, suffix, input)
      ()
    } else {
      val newSmallerP = smallerP ++ List(smallerPSuffix.head)
      val newSmallerPSuff = smallerPSuffix.tail
      ListUtils.lemmaTwoListsConcatAssociativity(smallerP, List(smallerPSuffix.head), newSmallerPSuff)
      lemmaFindLongestKnownPFromSmallerThenFromIt(dfa, input, longestM, suffix, newSmallerP, newSmallerPSuff)
    }

  } ensuring (findLongestMatchInner(dfa, moveMultipleSteps(dfa, dfa.startState, longestM), longestM, suffix)._1 == longestM)

  @opaque
  @inlineOnce
  def lemmaDFACannotMatchAStringContainingACharItDoesNotContain[C](dfa: DFA[C], s: List[C], c: C): Unit = {
    require(validDFA(dfa))
    require(s.contains(c))
    require(!usedCharactersTrans(dfa.transitions).contains(c))

    lemmaDFACannotMatchAStringContainingACharItDoesNotContainInner(dfa, s, c, Nil(), s, dfa.startState)
  } ensuring (!matchDFA(dfa, s))

  @opaque
  @inlineOnce
  def lemmaDFACannotMatchAStringContainingACharItDoesNotContainInner[C](dfa: DFA[C], s: List[C], c: C, pastChars: List[C], suffix: List[C], from: State): Unit = {
    require(validDFA(dfa))
    require(suffix.contains(c))
    require(!usedCharactersTrans(dfa.transitions).contains(c))
    require(s == pastChars ++ suffix)
    require(moveMultipleSteps(dfa, dfa.startState, pastChars) == from)
    decreases(suffix.size)

    ListUtils.lemmaSubseqRefl(dfa.transitions)

    suffix match {
      case Cons(hd, tl) if hd == c => {
        lemmaMoveOneStepWithNotUsedCharThenErrorState(dfa, dfa.transitions, c, from)
        val nextState = moveOneStep(dfa, dfa.transitions, from, c)
        lemmaMoveOneStepWithNotUsedCharThenErrorState[C](dfa, dfa.transitions, c, from)
        assert(nextState == dfa.errorState)
        val newPastChars = pastChars ++ List(suffix.head)
        val newSuffix = suffix.tail
        ListUtils.lemmaTwoListsConcatAssociativity(pastChars, List(suffix.head), newSuffix)
        lemmaMoveOneStepAfterMultipleIsSameAsMultipleWithNewChar(dfa, dfa.startState, pastChars, suffix.head)
        lemmaFindLongestMatchReturnNilFromErrorState(dfa, newPastChars, newSuffix, s)
      }
      case Cons(hd, tl) if hd != c => {
        val newPastChars = pastChars ++ List(suffix.head)
        val newSuffix = suffix.tail
        val newFrom = moveOneStep(dfa, dfa.transitions, from, suffix.head)
        ListUtils.lemmaTwoListsConcatAssociativity(pastChars, List(suffix.head), newSuffix)
        lemmaMoveOneStepAfterMultipleIsSameAsMultipleWithNewChar(dfa, dfa.startState, pastChars, suffix.head)
        lemmaDFACannotMatchAStringContainingACharItDoesNotContainInner(dfa, s, c, newPastChars, newSuffix, newFrom)
      }
      case Nil() => check(false)
    }

  } ensuring (!findLongestMatchInner(dfa, from, pastChars, suffix)._2.isEmpty)

  @opaque
  @inlineOnce
  def lemmaFindLongestMatchReturnNilFromErrorState[C](dfa: DFA[C], pastChars: List[C], suffix: List[C], input: List[C]): Unit = {
    require(validDFA(dfa))
    require(dfa.errorState == moveMultipleSteps(dfa, dfa.startState, pastChars))

    decreases(suffix.size)

    val from = dfa.errorState

    if (suffix.isEmpty) {
      if (dfa.finalStates.contains(from)) {
        check(false)
      } else {
        ()
      }
    } else {

      val nextChar = suffix.head

      val newPrefix = pastChars ++ List(nextChar)
      val newSuffix = suffix.tail

      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(pastChars, suffix)
      ListUtils.lemmaAddHeadSuffixToPrefixStillPrefix(pastChars, pastChars ++ suffix)

      ListUtils.lemmaTwoListsConcatAssociativity(pastChars, List(nextChar), newSuffix)
      ListUtils.lemmaSubseqRefl(dfa.transitions)

      val nextState = moveOneStep(dfa, dfa.transitions, from, nextChar)

      lemmaMoveOneStepAfterMultipleIsSameAsMultipleWithNewChar(dfa, dfa.startState, pastChars, nextChar)

      lemmaNoTransitionsFromErrorStateThenFixPointOneStep(dfa, dfa.transitions, nextChar)
      assert(nextState == dfa.errorState)

      val recursive = findLongestMatchInner(dfa, nextState, newPrefix, newSuffix)

      if (dfa.finalStates.contains(from)) {
        check(false)

      } else {
        lemmaFindLongestMatchReturnNilFromErrorState(dfa, newPrefix, newSuffix, input)
      }
    }

  } ensuring (findLongestMatchInner(dfa, dfa.errorState, pastChars, suffix)._1.isEmpty)

  @opaque
  @inlineOnce
  def lemmaMoveOneStepWithNotUsedCharThenErrorState[C](dfa: DFA[C], transitionsListRec: List[Transition[C]], c: C, from: State): Unit = {
    require(validDFA(dfa))
    require(ListSpecs.subseq(transitionsListRec, dfa.transitions))
    require(!usedCharactersTrans(dfa.transitions).contains(c))
    decreases(transitionsListRec.size)

    lemmaCharNotInUsedCharThenNotInSubseqOfTransitions(dfa.transitions, transitionsListRec, c)
    lemmaNoTransitionOutOfErrorStateThenForASubSeq(dfa.transitions, dfa.errorState, transitionsListRec)

    transitionsListRec match {
      case Cons(hd, tl) => {
        lemmaNoTransitionOutOfErrorStateThenForAParticularTransition(transitionsListRec, dfa.errorState, hd)
        assert(hd.c != c)
        assert(hd.from != dfa.errorState)
        ListSpecs.subseqTail(transitionsListRec, dfa.transitions)
        lemmaMoveOneStepWithNotUsedCharThenErrorState(dfa, tl, c, from)

      }
      case Nil() => ()
    }

  } ensuring (moveOneStep(dfa, transitionsListRec, from, c) == dfa.errorState)

  @opaque
  @inlineOnce
  def lemmaCharNotInUsedCharThenNotInSubseqOfTransitions[C](l: List[Transition[C]], sub: List[Transition[C]], c: C): Unit = {
    require(!usedCharactersTrans(l).contains(c))
    require(ListSpecs.subseq(sub, l))
    decreases(l.size)

    (sub, l) match {
      case (Nil(), _) => ()
      case (Cons(x, xs), Cons(y, ys)) => {
        if (x == y && ListSpecs.subseq(xs, ys)) {
          lemmaCharNotInUsedCharThenNotInSubseqOfTransitions(ys, xs, c)
        } else {
          lemmaCharNotInUsedCharThenNotInSubseqOfTransitions(ys, sub, c)
        }
      }
      case _ => check(false)
    }

  } ensuring (!usedCharactersTrans(sub).contains(c))

  @opaque
  @inlineOnce
  def lemmaNoTransitionsFromErrorStateThenFixPointMultipleSteps[C](dfa: DFA[C], cs: List[C]): Unit = {
    require(validDFA(dfa))

    decreases(cs.size)

    cs match {
      case Cons(hd, tl) => {
        ListUtils.lemmaSubseqRefl(dfa.transitions)
        val nextState = moveOneStep(dfa, dfa.transitions, dfa.errorState, hd)
        lemmaNoTransitionsFromErrorStateThenFixPointOneStep(dfa, dfa.transitions, hd)
        assert(nextState == dfa.errorState)
        lemmaNoTransitionsFromErrorStateThenFixPointMultipleSteps(dfa, tl)
      }
      case Nil() => ()
    }
  } ensuring (moveMultipleSteps(dfa, dfa.errorState, cs) == dfa.errorState)

  @opaque
  @inlineOnce
  def lemmaNoTransitionsFromErrorStateThenFixPointOneStep[C](dfa: DFA[C], transitionsListRec: List[Transition[C]], c: C): Unit = {
    require(validDFA(dfa))
    require(ListSpecs.subseq(transitionsListRec, dfa.transitions))
    decreases(transitionsListRec.size)

    transitionsListRec match {
      case Cons(hd, tl) => {
        lemmaNoTransitionOutOfErrorStateThenForASubSeq(dfa.transitions, dfa.errorState, transitionsListRec)
        lemmaNoTransitionOutOfErrorStateThenForAParticularTransition(transitionsListRec, dfa.errorState, hd)
        assert(hd.from != dfa.errorState)
        ListSpecs.subseqTail(transitionsListRec, dfa.transitions)
        lemmaNoTransitionsFromErrorStateThenFixPointOneStep(dfa, tl, c)
      }
      case Nil() => ()
    }
  } ensuring (moveOneStep(dfa, transitionsListRec, dfa.errorState, c) == dfa.errorState)

  @opaque
  @inlineOnce
  def lemmaNoTransitionOutOfErrorStateThenForASubSeq[C](l: List[Transition[C]], errorState: State, sub: List[Transition[C]]): Unit = {
    require(noTransitionOutOfErrorState(l, errorState))
    require(ListSpecs.subseq(sub, l))
    decreases(l.size)

    (sub, l) match {
      case (Nil(), _) => ()
      case (Cons(x, xs), Cons(y, ys)) => {
        if (x == y && ListSpecs.subseq(xs, ys)) {
          lemmaNoTransitionOutOfErrorStateThenForASubSeq(ys, errorState, xs)
        } else {
          lemmaNoTransitionOutOfErrorStateThenForASubSeq(ys, errorState, sub)
        }
      }
      case _ => check(false)
    }
  } ensuring (noTransitionOutOfErrorState(sub, errorState))

  @opaque
  @inlineOnce
  def lemmaNoTransitionOutOfErrorStateThenForAParticularTransition[C](l: List[Transition[C]], errorState: State, t: Transition[C]): Unit = {
    require(noTransitionOutOfErrorState(l, errorState))
    require(l.contains(t))

    l match {
      case Cons(hd, tl) if hd == t => ()
      case Cons(hd, tl)            => lemmaNoTransitionOutOfErrorStateThenForAParticularTransition(tl, errorState, t)
      case Nil()                   => check(false)
    }

  } ensuring (t.from != errorState)

}
