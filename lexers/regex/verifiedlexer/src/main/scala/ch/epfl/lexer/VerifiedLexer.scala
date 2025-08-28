/** Author: Samuel Chassot
  */

package ch.epfl.lexer

import stainless.annotation._
import stainless.collection._
import stainless.equations._
import stainless.proof.check
import scala.annotation.tailrec
import stainless.lang.Quantifiers._

import ch.epfl.lexer.Vector

// import stainless.lang.StaticChecks._
// import stainless.lang.{ghost => ghostExpr, _}
import stainless.lang.{ghost => _, decreases => _, unfold => _, _}
import ch.epfl.lexer.OptimisedChecks.*
import Predef.{assert => _, Ensuring => _, require => _}

@tailrec
def dummy(x: BigInt): BigInt = {
  if (x == BigInt(0)) then x
  else dummy(x - BigInt(1))
}.ensuring( res => res == BigInt(0))

object VerifiedLexer {
  import VerifiedRegex._
  import VerifiedRegexMatcher._
  import ch.epfl.lexer.MemoisationZipper.CacheUp
  import ch.epfl.lexer.MemoisationZipper.CacheDown

  case object Lexer extends LexerInterface {

    def ruleValid[C](r: Rule[C]): Boolean = {
      validRegex(r.regex) && !r.regex.nullable && r.tag != ""
    }
    def noDuplicateTag[C](rules: List[Rule[C]], acc: List[String] = Nil()): Boolean = {
      decreases(rules)
      rules match {
        case Nil()        => true
        case Cons(hd, tl) => !acc.contains(hd.tag) && noDuplicateTag(tl, Cons(hd.tag, acc))
      }
    }
    @ghost
    def rulesValidInductive[C](rs: List[Rule[C]]): Boolean = {
      decreases(rs)
      rs match {
        case Cons(hd, tl) => ruleValid(hd) && rulesValidInductive(tl)
        case Nil()        => true
      }
    }.ensuring(res => res == rs.forall(ruleValid))

    def rulesValid[C](rs: List[Rule[C]]): Boolean = {
      rs.forall(ruleValid)
    }.ensuring(res => res == rulesValidInductive(rs))

    override def rulesProduceIndivualToken[C](rs: List[Rule[C]], t: Token[C]): Boolean = {
      require(!rs.isEmpty)
      require(rulesInvariant(rs))
      val (producedTs, suffix) = lex(rs, print(Vector.singleton(t)))
      producedTs.size == 1 && producedTs(0) == t && suffix.isEmpty
    }.ensuring(res => {
      val (producedTs, suffix) = lex(rs, print(Vector.singleton(t)))
      res ==> (producedTs.size == 1 && producedTs.list.head == t && suffix.isEmpty)
    })

    @ghost
    def rulesProduceEachTokenIndividuallyList[C](rs: List[Rule[C]], ts: List[Token[C]]): Boolean = {
      decreases(ts)
      require(!rs.isEmpty)
      require(rulesInvariant(rs))
      ts match {
        case Cons(hd, tl) => rulesProduceIndivualToken(rs, hd) && rulesProduceEachTokenIndividuallyList(rs, tl)
        case Nil()        => true
      }
    }.ensuring(res => res == ts.forall(t => rulesProduceIndivualToken(rs, t)))

     override def rulesProduceEachTokenIndividually[C](rs: List[Rule[C]], ts: Vector[Token[C]]): Boolean = {
      decreases(ts)
      require(!rs.isEmpty)
      require(rulesInvariant(rs))
      ts.forall(t => rulesProduceIndivualToken(rs, t))
    }

    def rulesRegex[C](rules: List[Rule[C]]): Regex[C] = {
      require(rulesValidInductive(rules))
      ghostExpr({
        def lemma(@induct rs: List[Rule[C]]): Unit = {
          require(rulesValidInductive(rs))
        }.ensuring(_ => rs.map(_.regex).forall(r => validRegex(r)))
        lemma(rules)
      })
      VerifiedRegex.generalisedUnion(rules.map(_.regex))
    }

    @ghost
    def tokensListTwoByTwoPredicateList[C](l: List[Token[C]], rules: List[Rule[C]], pred: (Token[C], Token[C], List[Rule[C]]) => Boolean): Boolean = {
      decreases(l)
      l match {
        case Cons(hd, Cons(next, tl)) => pred(hd, next, rules) && tokensListTwoByTwoPredicateList(Cons(next, tl), rules, pred)
        case _                        => true
      }
    }

     override def tokensListTwoByTwoPredicate[C](v: Vector[Token[C]], from: BigInt, rules: List[Rule[C]], pred: (Token[C], Token[C], List[Rule[C]]) => Boolean): Boolean = {
      require(from >= 0 && from <= v.size)
      decreases(v.size - from)
      if from < v.size - 1 then
        ghostExpr({
          ListUtils.lemmaDropApply(v.list, from)
          ListUtils.lemmaDropApply(v.list, from + 1)
          ListUtils.lemmaDropTail(v.list, from)
          ListUtils.lemmaDropTail(v.list, from + 1)
        })
        pred(v(from), v(from + 1), rules) && tokensListTwoByTwoPredicate(v, from + 1, rules, pred)
      else
        true
    }.ensuring(res => res == tokensListTwoByTwoPredicateList(v.dropList(from), rules, pred))

    // This lemma could be incorporated into the function's postcondition above
    // @ghost @opaque @inlineOnce @pure
    // def tokensListTwoByTwoPredicateVectorEquivList[C](v: Vector[Token[C]], from: BigInt, l: List[Token[C]], rules: List[Rule[C]], pred: (Token[C], Token[C], List[Rule[C]]) => Boolean): Unit = {
    //   require(from >= 0 && from <= v.size)
    //   require(l == v.dropList(from))
    //   decreases(v.size - from)
    //   if from < v.size - 1 then
    //     ListUtils.lemmaDropApply(v.list, from)
    //     ListUtils.lemmaDropApply(v.list, from + 1)
    //     ListUtils.lemmaDropTail(v.list, from)
    //     ListUtils.lemmaDropTail(v.list, from + 1)
    //     assert(v.list.apply(from) == l.head)
    //     assert(v(from) == l.head)
    //     assert(v(from + 1) == l.tail.head)
    //     tokensListTwoByTwoPredicateVectorEquivList(v, from + 1, l.tail, rules, pred)
    //     // pred(v(from), v(from + 1), rules) && tokensListTwoByTwoPredicate(v, from + 1, rules, pred)
    //   else
    //     ()
    // }.ensuring(_ => tokensListTwoByTwoPredicate(v, from, rules, pred) == tokensListTwoByTwoPredicateList(l, rules, pred))

     override def separableTokensPredicate[C](t1: Token[C], t2: Token[C], rules: List[Rule[C]]): Boolean = {
      !rules.isEmpty &&
      rulesInvariant(rules) &&
      rulesProduceIndivualToken(rules, t1) &&
      rulesProduceIndivualToken(rules, t2) &&
      !t2.characters.isEmpty &&
      !VerifiedRegexMatcher.prefixMatchZipperVector(rulesRegex(rules), t1.characters ++ Vector.singleton(t2.characters(0)))
    }

     override def rulesInvariant[C](rules: List[Rule[C]]): Boolean =
      rulesValid(rules) && noDuplicateTag(rules, Nil())
    @ghost
    // @inlineOnce
    def lexList[C](
        rules: List[Rule[C]],
        input: List[C]
    ): (List[Token[C]], List[C]) = {
      decreases(input.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      maxPrefix(rules, input) match {
        case Some((token, suffix)) => {
          val (followingTokens, nextSuffix) = lexList(rules, suffix)
          assert(token.characters.list ++ suffix == input)
          (Cons(token, followingTokens), nextSuffix)
        }
        case None() => (Nil(), input)
      }
    }.ensuring (res =>
      if (res._1.size > 0) res._2.size < input.size && !res._1.isEmpty
      else res._2 == input
    )

    /** Main function of the lexer
      *
      * Lex the input list of characters using the set of rules
      *
      * Return the produced list of Tokens and the remaining untokenised characters (normally empty)
      *
      * @param rules
      * @param input
      */  
     override def lex[C](
        rules: List[Rule[C]],
        input: Vector[C]
    ): (Vector[Token[C]], Vector[C]) = {
      decreases(input.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      maxPrefixZipperVector(rules, input) match {
        case Some((token, suffix)) => {
          val (followingTokens, nextSuffix) = lex(rules, suffix)
          assert(token.characters.list ++ suffix.list == input.list)
          ghostExpr(Vector.listEqImpliesEq(token.characters ++ suffix, input))
          assert(token.characters ++ suffix == input)
          (followingTokens.prepend(token), nextSuffix)
        }
        case None() => (Vector.empty, input)
      }
    }.ensuring (res =>
      (if (res._1.size > 0) res._2.size < input.size && !res._1.isEmpty
      else res._2 == input) &&
      (res._1.list == lexList(rules, input.list)._1 && 
       res._2.list == lexList(rules, input.list)._2)
    )

    def lexMem[C](
        rules: List[Rule[C]],
        input: Vector[C]
    )(implicit cacheUp: CacheUp[C], cacheDown: CacheDown[C]): (Vector[Token[C]], Vector[C]) = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(cacheUp.valid)
      require(cacheDown.valid)
      decreases(input.size)
      unfold(lex(rules, input))
      maxPrefixZipperVectorMem(rules, input) match {
        case Some((token, suffix)) => {
          val (followingTokens, nextSuffix) = lexMem(rules, suffix)
          assert(token.characters.list ++ suffix.list == input.list)
          ghostExpr(Vector.listEqImpliesEq(token.characters ++ suffix, input))
          assert(token.characters ++ suffix == input)
          (followingTokens.prepend(token), nextSuffix)
        }
        case None() => (Vector.empty, input)
      }
    }.ensuring (res => res == lex(rules, input))

    @ghost
    def lexRegexList[C](
        rules: List[Rule[C]],
        input: List[C]
    ): (List[Token[C]], List[C]) = {
      decreases(input.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      maxPrefix(rules, input) match {
        case Some((token, suffix)) => {
          val (followingTokens, nextSuffix) = lexRegexList(rules, suffix)
          assert(token.characters.list ++ suffix == input)
          (Cons(token, followingTokens), nextSuffix)
        }
        case None() => (Nil(), input)
      }
    }.ensuring (res =>
      if (res._1.size > 0) res._2.size < input.size && !res._1.isEmpty
      else res._2 == input
    )

    /** Prints back the tokens to a list of characters of the type C
      *
      * @param l
      */
    @ghost @inlineOnce
    def printList[C](l: List[Token[C]]): List[C] = {
      decreases(l)
      l match {
        case Cons(hd, tl) => hd.characters.list ++ printList(tl)
        case Nil()        => Nil[C]()
      }
    }

     override def print[C](v: Vector[Token[C]], from: BigInt = 0): Vector[C] = {
      require(from >= 0 && from <= v.size)
      decreases(v.size - from)
      if from >= v.size then
        Vector.empty
      else
        ghostExpr({
          ListUtils.lemmaDropApply(v.list, from)
          ListUtils.lemmaDropTail(v.list, from)
        })
        v(from).characters ++ print(v, from + 1)
    }.ensuring(res => res.list == printList(v.dropList(from)))

    /** Prints back the tokens to a list of characters of the type C, by adding a separatorToken between each, and after the last
      *
      * @param l
      * @param separatorToken
      */
    @ghost
    def printWithSeparatorTokenList[C](l: List[Token[C]], separatorToken: Token[C]): List[C] = {
      require(separatorToken.rule.isSeparator)
      decreases(l)
      l match {
        case Cons(hd, tl) => hd.characters.list ++ separatorToken.characters.list ++ printWithSeparatorTokenList(tl, separatorToken)
        case Nil()        => Nil[C]()
      }
    }

    override def printWithSeparatorToken[C](v: Vector[Token[C]], separatorToken: Token[C], from: BigInt = 0): Vector[C] = {
      require(from >= 0 && from <= v.size)
      require(separatorToken.rule.isSeparator)
      decreases(v.size - from)
      if from >= v.size then
        Vector.empty
      else
        ghostExpr({
          ListUtils.lemmaDropApply(v.list, from)
          ListUtils.lemmaDropTail(v.list, from)
        })
        v(from).characters ++ separatorToken.characters ++ printWithSeparatorToken(v, separatorToken, from + 1)
    }.ensuring(res => res.list == printWithSeparatorTokenList(v.dropList(from), separatorToken))

    /** Prints back the tokens to a list of characters of the type C, by adding a separatorToken between tokens when the maxPrefix would return
      * another token if printed back to back.
      *
      * @param l
      * @param separatorToken
      */
    @ghost
    def printWithSeparatorTokenWhenNeededList[C](rules: List[Rule[C]], l: List[Token[C]], separatorToken: Token[C]): List[C] = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividuallyList(rules, l))
      require(rulesProduceIndivualToken(rules, separatorToken))
      require(separatorToken.rule.isSeparator)
      require(l.forall(!_.rule.isSeparator))
      require(sepAndNonSepRulesDisjointChars(rules, rules))
      decreases(l)

      l match {
        case Cons(hd, tl) => {
          ghostExpr({
            assert(l.contains(hd))
            ListSpecs.forallContained(l, t => rulesProduceIndivualToken(rules, t), hd)
          })
          val suffix = printWithSeparatorTokenWhenNeededList(rules, tl, separatorToken)
          val maxPrefWithoutSep = maxPrefix(rules, hd.characters.list ++ suffix)
          maxPrefWithoutSep match {
            case Some((t, s)) if t == hd => hd.characters.list ++ suffix
            case Some((t, s)) if t != hd => hd.characters.list ++ separatorToken.characters.list ++ suffix
            case None() => {
              ghostExpr({
                Vector.listEqImpliesEq(hd.characters, Vector.fromList(hd.characters.list))
                ghostExpr(unfold(print(Vector.singleton(hd))))
                assert(print(Vector.singleton(hd)).list == printList(List(hd)))
                assert(printList(List(hd)) == hd.characters.list)
                ghostExpr(Vector.listEqImpliesEq(print(Vector.singleton(hd)), hd.characters))
                assert(print(Vector.singleton(hd)) == hd.characters)
                assert(rulesProduceIndivualToken(rules, hd))
                assert(!lex(rules, Vector.fromList(hd.characters.list))._1.isEmpty)
                lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined(rules, hd.characters.list, suffix)
              })
              check(false)
              Nil[C]()
            }
          }
        }
        case Nil() => Nil[C]()
      }
    }

    override def printWithSeparatorTokenWhenNeeded[C](rules: List[Rule[C]], v: Vector[Token[C]], separatorToken: Token[C], from: BigInt = 0): Vector[C] = {
      require(from >= 0 && from <= v.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividually(rules, v))
      require(rulesProduceIndivualToken(rules, separatorToken))
      require(separatorToken.rule.isSeparator)
      require(v.forall(!_.rule.isSeparator))
      require(sepAndNonSepRulesDisjointChars(rules, rules))
      decreases(v.size - from)

      ghostExpr(ListUtils.lemmaContentSubsetPreservesForall(v.list, v.dropList(from), t => !t.rule.isSeparator))

      if from >= v.size then
        Vector.empty
      else {
        ghostExpr({
          ListUtils.lemmaDropApply(v.list, from)
          ListUtils.lemmaDropTail(v.list, from)
          assert(v.contains(v(from)))
          assert(v.list.contains(v(from)))
          ListSpecs.forallContained(v.list, t => rulesProduceIndivualToken(rules, t), v(from))
        })
        val suffix = printWithSeparatorTokenWhenNeeded(rules, v, separatorToken, from + 1)
        val maxPrefWithoutSep = maxPrefixZipperVector(rules, v(from).characters ++ suffix)
        maxPrefWithoutSep match {
          case Some((t, s)) if t == v(from) => v(from).characters ++ suffix
          case Some((t, s)) if t != v(from) => v(from).characters ++ separatorToken.characters ++ suffix
          case None() => {
            ghostExpr({
              Vector.listEqImpliesEq(v(from).characters, Vector.fromList(v(from).characters.list))
              ghostExpr(unfold(print(Vector.singleton(v(from)))))
              assert(print(Vector.singleton(v(from))).list == printList(List(v(from))))
              assert(printList(List(v(from))) == v(from).characters.list)
              ghostExpr(Vector.listEqImpliesEq(print(Vector.singleton(v(from))), v(from).characters))
              assert(print(Vector.singleton(v(from))) == v(from).characters)
              assert(rulesProduceIndivualToken(rules, v(from)))
              assert(!lex(rules, Vector.fromList(v(from).characters.list))._1.isEmpty)
              lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined(rules, v(from).characters.list, suffix.list)
            })
            check(false)
            Vector.empty
          }
        }
      }
    }.ensuring(res => res.list == printWithSeparatorTokenWhenNeededList(rules, v.dropList(from), separatorToken))

    /** Finds the biggest prefix matching any rule in the input list of characters If nothing matched a rule, returns None Else, returns the matched
      * prefix as Token and the remaining suffix
      *
      * @param rulesArg
      * @param input
      */
    @ghost
    def maxPrefix[C](
        rulesArg: List[Rule[C]],
        input: List[C]
    ): Option[(Token[C], List[C])] = {
      require(rulesValidInductive(rulesArg))
      require(!rulesArg.isEmpty)
      decreases(rulesArg.size)

      ghostExpr(ListUtils.lemmaIsPrefixRefl(input, input))
      rulesArg match {
        case Cons(hd, Nil()) => maxPrefixOneRule(hd, input)
        case Cons(hd, tl) => {
          val currentRulePref = maxPrefixOneRule(hd, input)
          val othersPrefix = maxPrefix(tl, input)
          (currentRulePref, othersPrefix) match {
            case (None(), None())   => None()
            case (c, None())        => c
            case (None(), o)        => o
            case (Some(c), Some(o)) => if c._1.size >= o._1.size then Some(c) else Some(o)
          }
        }
      }
    }.ensuring (res => 
      res.isEmpty 
      || 
        (
          res.isDefined && (
                            res.get._1.characters.list == res.get._1.originalCharacters.list && 
                            res.get._2.size < input.size && 
                            res.get._1.characters.list ++ res.get._2 == input
                          )
                       && res.get._1.value == res.get._1.rule.transformation.apply(res.get._1.originalCharacters)
                       && matchR(res.get._1.rule.regex, res.get._1.characters.list)
        )
      )

    @ghost
    def maxPrefixZipper[C](
        rulesArg: List[Rule[C]],
        input: List[C]
    ): Option[(Token[C], List[C])] = {
      require(rulesValidInductive(rulesArg))
      require(!rulesArg.isEmpty)
      decreases(rulesArg.size)

      ghostExpr(ListUtils.lemmaIsPrefixRefl(input, input))
      rulesArg match {
        case Cons(hd, Nil()) => maxPrefixOneRuleZipper(hd, input)
        case Cons(hd, tl) => {
          val currentRulePref = maxPrefixOneRuleZipper(hd, input)
          val othersPrefix = maxPrefixZipper(tl, input)
          (currentRulePref, othersPrefix) match {
            case (None(), None())   => None()
            case (c, None())        => c
            case (None(), o)        => o
            case (Some(c), Some(o)) => if c._1.size >= o._1.size then Some(c) else Some(o)
          }
        }
      }
    }.ensuring (res => res == maxPrefix(rulesArg, input))

    def maxPrefixZipperVector[C](
        rulesArg: List[Rule[C]],
        input: Vector[C]
    ): Option[(Token[C], Vector[C])] = {
      require(rulesValidInductive(rulesArg))
      require(!rulesArg.isEmpty)
      decreases(rulesArg.size)

      ghostExpr(ListUtils.lemmaIsPrefixRefl(input.list, input.list))
      rulesArg match {
        case Cons(hd, Nil()) => maxPrefixOneRuleZipperVector(hd, input)
        case Cons(hd, tl) => {
          val currentRulePref = maxPrefixOneRuleZipperVector(hd, input)
          val othersPrefix = maxPrefixZipperVector(tl, input)
          (currentRulePref, othersPrefix) match {
            case (None(), None())   => None()
            case (c, None())        => c
            case (None(), o)        => o
            case (Some(c), Some(o)) => if c._1.size >= o._1.size then Some(c) else Some(o)
          }
        }
      }
    }.ensuring (res => res.isDefined == maxPrefixZipper(rulesArg, input.list).isDefined && 
                       (if res.isDefined then res.get._1 == maxPrefixZipper(rulesArg, input.list).get._1 && 
                          res.get._2.list == maxPrefixZipper(rulesArg, input.list).get._2
                       else true) && 
                       (if res.isDefined then res.get._1 == maxPrefix(rulesArg, input.list).get._1 && 
                          res.get._2.list == maxPrefix(rulesArg, input.list).get._2
                       else true)
                       )

    def maxPrefixZipperVectorMem[C](
            rulesArg: List[Rule[C]],
            input: Vector[C]
        )(implicit cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Option[(Token[C], Vector[C])] = {
          require(rulesValidInductive(rulesArg))
          require(!rulesArg.isEmpty)
          require(cacheUp.valid)
          require(cacheDown.valid)
          decreases(rulesArg.size)

          ghostExpr(ListUtils.lemmaIsPrefixRefl(input.list, input.list))
          rulesArg match {
            case Cons(hd, Nil()) => maxPrefixOneRuleZipperVectorMem(hd, input)
            case Cons(hd, tl) => {
              val currentRulePref = maxPrefixOneRuleZipperVectorMem(hd, input)
              val othersPrefix = maxPrefixZipperVectorMem(tl, input)
              (currentRulePref, othersPrefix) match {
                case (None(), None())   => None()
                case (c, None())        => c
                case (None(), o)        => o
                case (Some(c), Some(o)) => if c._1.size >= o._1.size then Some(c) else Some(o)
              }
            }
          }
        }.ensuring (res => res == maxPrefixZipperVector(rulesArg, input) && cacheUp.valid && cacheDown.valid)

    /** Finds the biggest prefix matching any rule in the input list of characters If nothing matched a rule, returns None Else, returns the matched
      * prefix and the remaining suffix
      *
      * @param rule
      * @param input
      */
    @ghost
    def maxPrefixOneRule[C](
        rule: Rule[C],
        input: List[C]
    ): Option[(Token[C], List[C])] = {
      require(ruleValid(rule))

      val (longestPrefix, suffix) = findLongestMatch(rule.regex, input)
      if (longestPrefix.isEmpty) {
        None[(Token[C], List[C])]()
      } else {
        ghostExpr(longestMatchIsAcceptedByMatchOrIsEmpty(rule.regex, input))
        ghostExpr(ForallOf((a: Vector[C]) => rule.transformation.witness(rule.transformation.f(a)) == a)(Vector.fromList(longestPrefix)))
        Some[(Token[C], List[C])]((Token(rule.transformation.apply(Vector.fromList(longestPrefix)), rule, Vector.fromList(longestPrefix).size, Vector.fromList(longestPrefix)), suffix))
      }

    }.ensuring (res =>
      res.isEmpty || matchR(
        rule.regex,
        res.get._1.characters.list
      ) && res.get._1.characters.list ++ res.get._2 == input && res.get._2.size < input.size && res.get._1.rule == rule
      && res.get._1.value == res.get._1.rule.transformation.apply(res.get._1.originalCharacters)
      && res.get._1.size == res.get._1.originalCharacters.size
    )

    @ghost
    def maxPrefixOneRuleZipper[C](
        rule: Rule[C],
        input: List[C]
    ): Option[(Token[C], List[C])] = {
      require(ruleValid(rule))

      val (longestPrefix, suffix) = findLongestMatchWithZipper(rule.regex, input)
      if (longestPrefix.isEmpty) {
        None[(Token[C], List[C])]()
      } else {
        ghostExpr(longestMatchIsAcceptedByMatchOrIsEmpty(rule.regex, input))
        ghostExpr(rule.transformation.lemmaInv())
        ghostExpr(assert(Forall((a: Vector[C]) => rule.transformation.witness(rule.transformation.f(a)) == a)))
        ghostExpr(ForallOf((a: Vector[C]) => rule.transformation.witness(rule.transformation.f(a)) == a)(Vector.fromList(longestPrefix)))
        Some[(Token[C], List[C])]((Token(rule.transformation.apply(Vector.fromList(longestPrefix)), rule, Vector.fromList(longestPrefix).size, Vector.fromList(longestPrefix)), suffix))
      }
    }.ensuring (res => res == maxPrefixOneRule(rule, input))

    def maxPrefixOneRuleZipperVector[C](
        rule: Rule[C],
        input: Vector[C]
    ): Option[(Token[C], Vector[C])] = {
      require(ruleValid(rule))

      val (longestPrefix, suffix) = findLongestMatchWithZipperVector(rule.regex, input)
      if (longestPrefix.isEmpty) {
        None[(Token[C], Vector[C])]()
      } else {
        ghostExpr(longestMatchIsAcceptedByMatchOrIsEmpty(rule.regex, input.list))
        ghostExpr(rule.transformation.lemmaInv())
        ghostExpr(assert(Forall((a: Vector[C]) => rule.transformation.witness(rule.transformation.f(a)) == a)))
        ghostExpr(ForallOf((a: Vector[C]) => rule.transformation.witness(rule.transformation.f(a)) == a)(longestPrefix))
        ghostExpr(Vector.listEqImpliesEq(Vector.fromList(findLongestMatch(rule.regex, input.list)._1), longestPrefix))
        Some[(Token[C], Vector[C])]((Token(rule.transformation.apply(longestPrefix), rule, longestPrefix.size, longestPrefix), suffix))
      }

    }.ensuring (res => res.isDefined == maxPrefixOneRule(rule, input.list).isDefined && 
                       (if res.isDefined then res.get._1 == maxPrefixOneRule(rule, input.list).get._1 && 
                          res.get._2.list == maxPrefixOneRule(rule, input.list).get._2
                       else true))

     def maxPrefixOneRuleZipperVectorMem[C](
        rule: Rule[C],
        input: Vector[C]
    )(implicit cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Option[(Token[C], Vector[C])] = {
      require(ruleValid(rule))
      require(cacheUp.valid)
      require(cacheDown.valid)

      val (longestPrefix, suffix) = findLongestMatchWithZipperVectorMem(rule.regex, input)
      assert((longestPrefix, suffix) == findLongestMatchWithZipperVector(rule.regex, input))
      if (longestPrefix.isEmpty) {
        None[(Token[C], Vector[C])]()
      } else {
        ghostExpr(longestMatchIsAcceptedByMatchOrIsEmpty(rule.regex, input.list))
        ghostExpr(rule.transformation.lemmaInv())
        ghostExpr(assert(Forall((a: Vector[C]) => rule.transformation.witness(rule.transformation.f(a)) == a)))
        ghostExpr(ForallOf((a: Vector[C]) => rule.transformation.witness(rule.transformation.f(a)) == a)(longestPrefix))
        ghostExpr(Vector.listEqImpliesEq(Vector.fromList(findLongestMatch(rule.regex, input.list)._1), longestPrefix))
        Some[(Token[C], Vector[C])]((Token(rule.transformation.apply(longestPrefix), rule, longestPrefix.size, longestPrefix), suffix))
      }

    }.ensuring (res => res == maxPrefixOneRuleZipperVector(rule, input))

    // Proofs --------------------------------------------------------------------------------------------------------------------------------

    // Correctness ---------------------------------------------------------------------------------------------------------------------------

    // The lexer is sound, i.e., if it produces a Tokenisation, it is valid w.r.t. the biggest prefix property
    @ghost
    @opaque
    @inlineOnce
    @pure
    def theoremLexSoundFirstChar[C](
        rules: List[Rule[C]],
        input: List[C],
        suffix: List[C],
        tokens: List[Token[C]],
        r: Rule[C],
        otherR: Rule[C],
        otherP: List[C]
    ): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rules.contains(r))
      require(rules.contains(otherR))
      require({
        val (lexedTokens, lexedSuffix) = lex(rules, Vector.fromList(input))
        (lexedTokens.list, lexedSuffix.list) == (tokens, suffix)
      })
      require(tokens.isEmpty || tokens.head.characters.size <= otherP.size)
      require(tokens.isEmpty || tokens.head.rule == r)
      require(ListUtils.isPrefix(otherP, input))
      require(r != otherR)
      require({
        lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(r, rules)
        tokens.isEmpty || matchR(r.regex, tokens.head.characters.list)
      })

      lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(otherR, rules)
      if (ListUtils.getIndex(rules, r) > ListUtils.getIndex(rules, otherR)) {
        tokens match {
          case Nil() => {
            lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone(otherR, rules, input)
            lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex(otherR, otherP, input)
          }
          case Cons(hd, tl) => {
            Vector.listEqImpliesEq(Vector.fromList(hd.characters.list), hd.characters)
            val (tok, suf) = maxPrefix(rules, input).get
            assert(hd == tok)
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(hd.characters.list, suf)
            ListUtils.lemmaSamePrefixThenSameSuffix(hd.characters.list, suf, hd.characters.list, ListUtils.getSuffix(input, hd.characters.list), input)
            if (otherP.size == hd.characters.list.size) {
              ListUtils.lemmaIsPrefixSameLengthThenSameList(hd.characters.list, otherP, input)
              lemmaMaxPrefNoSmallerRuleMatches(rules, r, hd.characters.list, input, otherR)
            } else {
              lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, hd.characters.list, input, suf, r)
              lemmaMaxPrefixOutputsMaxPrefix(rules, r, hd.characters.list, input, otherP, otherR)
            }
          }
        }
      } else {
        if (ListUtils.getIndex(rules, r) == ListUtils.getIndex(rules, otherR)) {
          ListUtils.lemmaSameIndexThenSameElement(rules, r, otherR)
          check(false)
        }

        tokens match {
          case Nil() => {
            lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone(otherR, rules, input)
            lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex(otherR, otherP, input)
          }
          case Cons(hd, tl) => {
            Vector.listEqImpliesEq(Vector.fromList(hd.characters.list), hd.characters)
            val (tok, suf) = maxPrefix(rules, input).get
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(hd.characters.list, suf)
            ListUtils.lemmaSamePrefixThenSameSuffix(hd.characters.list, suf, hd.characters.list, ListUtils.getSuffix(input, hd.characters.list), input)
            if (otherP.size > hd.characters.list.size) {
              lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, hd.characters.list, input, suf, r)
              lemmaMaxPrefixOutputsMaxPrefix(rules, r, hd.characters.list, input, otherP, otherR)
            }

          }
        }
      }

    }.ensuring (_ =>
      if (ListUtils.getIndex(rules, otherR) < ListUtils.getIndex(rules, r)) !matchR(otherR.regex, otherP)
      else tokens.size > 0 && otherP.size <= tokens.head.characters.size || !matchR(otherR.regex, otherP)
    )

    @ghost override def maximalMunchPrinciple[C](
        rules: List[Rule[C]],
        input: List[C],
        suffix: List[C],
        tokens: List[Token[C]],
        r: Rule[C],
        otherR: Rule[C],
        otherP: List[C]
    ): Boolean = {
      
      if (!rules.isEmpty) &&
        (rulesInvariant(rules)) &&
        (rules.contains(r)) &&
        (rules.contains(otherR)) &&
        ({
          val (lexedTokens: Vector[Token[C]], lexedSuffix: Vector[C]) = lex(rules, Vector.fromList(input))
          (lexedTokens.list, lexedSuffix.list) == (tokens, suffix)
        }) &&
        (tokens.isEmpty || tokens.head.characters.list.size <= otherP.size) &&
        (tokens.isEmpty || tokens.head.rule == r) &&
        (ListUtils.isPrefix(otherP, input)) &&
        (r != otherR) &&
        (tokens.isEmpty || VerifiedRegexMatcher.matchR(r.regex, tokens.head.characters.list)) 
      then
        theoremLexSoundFirstChar(rules, input, suffix, tokens, r, otherR, otherP)
        val (lexedTokens: Vector[Token[C]], lexedSuffix: Vector[C]) = lex(rules, Vector.fromList(input))
        assert(lexedTokens.list == tokens)
        assert(lexedSuffix.list == suffix)
        (if (ListUtils.getIndex(rules, otherR) < ListUtils.getIndex(rules, r)) !VerifiedRegexMatcher.matchR(otherR.regex, otherP)
        else tokens.size > 0 && otherP.size <= tokens.head.characters.list.size || !VerifiedRegexMatcher.matchR(otherR.regex, otherP))
      else 
        true
    }

    // Invertability -------------------------------------------------------------------------------------------------------------------------

    @ghost
    def theoremInvertabilityWhenTokenListSeparable[C](rules: List[Rule[C]], tokens: List[Token[C]]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividuallyList(rules, tokens))
      // Separability property
      require(tokensListTwoByTwoPredicateList(tokens, rules, separableTokensPredicate))
      decreases(tokens)

      tokens match {
        case Nil() => ()
        case Cons(hd, Nil()) => ()
        case Cons(hd, Cons(next, tl)) => {
          Vector.listEqImpliesEq(Vector.fromList(hd.characters.list), hd.characters)
          val input: Vector[C] = print(Vector.fromList(tokens))
          val suffix: Vector[C] = print(Vector.fromList(Cons(next, tl)))
          val (followingTokens, nextSuffix) = lex(rules, suffix)
          assert(input.list == hd.characters.list ++ suffix.list)
          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(hd.characters.list, suffix.list)

          theoremInvertabilityWhenTokenListSeparable(rules, Cons(next, tl))
          assert(lex(rules, suffix)._1.list == Cons(next, tl))
          assert(lex(rules, suffix)._2 == nextSuffix)
          Vector.listEqImpliesEq(Vector.fromList(followingTokens.list), followingTokens)
          Vector.listEqImpliesEq(Vector.fromList(tl), followingTokens.tail)
          Vector.fromListHdTlConstructive(next, tl, followingTokens)
          assert(lex(rules, suffix)._1 == Vector.fromList(Cons(next, tl)))
          assert(Vector.fromList(Cons(next, tl)) == Vector.fromList(tl).prepend(next))
          assert(lex(rules, suffix)._1 == Vector.fromList(tl).prepend(next))
          assert(separableTokensPredicate(hd, next, rules))
          
          val prefixOpt = maxPrefix(rules, input.list)
          // ----- to prove (!lex(rules, Vector.fromList(hd.characters.list))._1.isEmpty
          Vector.listEqImpliesEq(hd.characters, Vector.fromList(hd.characters.list))
          ghostExpr(unfold(print(Vector.singleton(hd))))
          assert(print(Vector.singleton(hd)).list == printList(List(hd)))
          assert(printList(List(hd)) == hd.characters.list)
          ghostExpr(Vector.listEqImpliesEq(print(Vector.singleton(hd)), hd.characters))
          assert(print(Vector.singleton(hd)) == hd.characters)
          assert(rulesProduceIndivualToken(rules, hd))
          assert(!lex(rules, Vector.fromList(hd.characters.list))._1.isEmpty)
          // ----- end
          lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined(rules, hd.characters.list, suffix.list)

          assert(prefixOpt.isDefined)

          assert(separableTokensPredicate(hd, next, rules))

          check(hd.characters == hd.originalCharacters)
          Vector.listEqImpliesEq(hd.characters, hd.originalCharacters)
          assert(maxPrefixZipperVector(rules, hd.originalCharacters).isDefined)
          check(maxPrefix(rules, hd.originalCharacters.list).isDefined)
          check(maxPrefix(rules, hd.characters.list).isDefined)
          check(maxPrefix(rules, hd.characters.list).isDefined)
          check(maxPrefix(rules, hd.characters.list).get._1 == hd)
          check(maxPrefix(rules, hd.characters.list).get._2.isEmpty)
          check(matchR(hd.rule.regex, hd.characters.list))
          check(hd.rule == hd.rule)

          lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame(rules, hd, hd.rule, suffix.list)
          
          assert(prefixOpt.get._1 == hd)
          assert(prefixOpt.get._2 == suffix.list)

          assert(hd == maxPrefixZipper(rules, input.list).get._1)
          assert(hd == maxPrefixZipperVector(rules, input).get._1)
          assert(prefixOpt.get._2 == maxPrefixZipperVector(rules, input).get._2.list)
          Vector.listEqImpliesEq(suffix, maxPrefixZipperVector(rules, input).get._2)
          assert(suffix == maxPrefixZipperVector(rules, input).get._2)

          assert(lex(rules, input)._1 == followingTokens.prepend(hd))
          assert(lex(rules, input)._1 == (Vector.fromList(tl).prepend(next)).prepend(hd))
          assert(lex(rules, input)._1.list == Cons(hd, Cons(next, tl)))
        }
      }

    }.ensuring(_ => lex(rules, print(Vector.fromList(tokens)))._1.list == tokens)

    @ghost
    override def separableTokensThenInvertibleThroughPrinting[C](rules: List[Rule[C]], tokens: List[Token[C]]): Boolean = {

      if (!rules.isEmpty && 
          rulesInvariant(rules) && 
          rulesProduceEachTokenIndividually(rules, Vector.fromList(tokens)) && 
          tokensListTwoByTwoPredicate(Vector.fromList(tokens), 0, rules, separableTokensPredicate)) 
      then
        theoremInvertabilityWhenTokenListSeparable(rules, tokens)
        assert(lex(rules, print(Vector.fromList(tokens)))._1.list == tokens)
        lex(rules, print(Vector.fromList(tokens)))._1.list == tokens
      else 
        true
    }

    // IMPOSSIBLE VERSION LEFT FOR HISTORICAL REASONS !!!!!!!!!!!!!!!!!!!!!!!!
    // @ghost
    // def theoremInvertabilityWhenTokenListSeparable[C](rules: List[Rule[C]], tokens: List[Token[C]]): Unit = {
    //   require(!rules.isEmpty)
    //   require(rulesInvariant(rules))
    //   require(rulesProduceEachTokenIndividually(rules, tokens))
    //   // Separability property
    //   require(tokensListTwoByTwoPredicate(tokens, separableTokensPredicate))
    //   decreases(tokens)

    //   tokens match {
    //     case Nil() => () // DONE
    //     case Cons(hd, Nil()) => () // DONE
    //     case Cons(hd, Cons(next, tl)) => {
    //       val input = print(tokens)
    //       val suffix = print(Cons(next, tl))
    //       val (followingTokens, nextSuffix) = lex(rules, suffix)
    //       assert(input == hd.characters ++ suffix)
    //       theoremInvertabilityWhenTokenListSeparable(rules, Cons(next, tl))
    //       assert(lex(rules, suffix)._1 == Cons(next, tl))
    //       assert(lex(rules, suffix)._2 == nextSuffix)

    //       assert(separableTokensPredicate(hd, next))

    //       // That turns out to be impossible to prove as it is not true, if the predicate does not include the rule
    //       /**
    //       Let’s take a counter example:

    //       - rules
    //           - r1 = ( (a|b)(a|b)* , “abToken”)
    //           - r2 = ( cc* , “cToken”)
    //           - r3 = ( (a|b|c)(a|b|c)* , ”abcToken”)
    //       - tokens = `List(Token("ab", r1), Token("cc", r2))`
    //           - This list satisfies the above as `r1.regex.usedCharacters = Set(’a’, ‘b’)` and `r2.regex.firstCharacters = Set('c')` which are disjoint
    //           - But if we print the list of tokens we get `"abcc"`  which would be tokenised to `List(Token("abcc", r3))`
    //       */

          

    //       assert(lex(rules, input)._1 == Cons(hd, Cons(next, tl)))
    //     }
    //   }

    // }.ensuring(_ => lex(rules, print(tokens))._1 == tokens)

    @ghost
    @opaque
    @inlineOnce
    def theoremInvertabilityFromTokensSepTokenWhenNeeded[C](rules: List[Rule[C]], tokens: List[Token[C]], separatorToken: Token[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividually(rules, Vector.fromList(tokens)))
      require(rulesProduceIndivualToken(rules, separatorToken))
      require(separatorToken.rule.isSeparator)
      require(tokens.forall(!_.rule.isSeparator))
      require(sepAndNonSepRulesDisjointChars(rules, rules))
      decreases(tokens)

      tokens match {
        case Cons(hd, tl) => {
          Vector.listEqImpliesEq(Vector.fromList(hd.characters.list), hd.characters)
          Vector.listEqImpliesEq(Vector.fromList(separatorToken.characters.list), separatorToken.characters)
          val input = printWithSeparatorTokenWhenNeededList(rules, tokens, separatorToken)
          assert(input == printWithSeparatorTokenWhenNeeded(rules, Vector.fromList(tokens), separatorToken).list)
          Vector.listEqImpliesEq(Vector.fromList(input), printWithSeparatorTokenWhenNeeded(rules, Vector.fromList(tokens), separatorToken))
          assert(Vector.fromList(input) == printWithSeparatorTokenWhenNeeded(rules, Vector.fromList(tokens), separatorToken))
          val suffixWithSep = separatorToken.characters.list ++ printWithSeparatorTokenWhenNeededList(rules, tl, separatorToken)
          ListUtils.lemmaTwoListsConcatAssociativity(
            hd.characters.list,
            separatorToken.characters.list,
            printWithSeparatorTokenWhenNeededList(rules, tl, separatorToken)
          )
          val suffixWithoutSep = printWithSeparatorTokenWhenNeededList(rules, tl, separatorToken)
          assert(suffixWithoutSep == printWithSeparatorTokenWhenNeeded(rules, Vector.fromList(tl), separatorToken).list)
          Vector.listEqImpliesEq(Vector.fromList(suffixWithoutSep), printWithSeparatorTokenWhenNeeded(rules, Vector.fromList(tl), separatorToken))
          assert(input == hd.characters.list ++ suffixWithSep || input == hd.characters.list ++ suffixWithoutSep)

          // ----- to prove (!lex(rules, Vector.fromList(hd.characters.list))._1.isEmpty
          Vector.listEqImpliesEq(hd.characters, Vector.fromList(hd.characters.list))
          Vector.listEqImpliesEq(print(Vector.singleton(hd)), hd.characters)
          unfold(print(Vector.singleton(hd)))
          assert(print(Vector.singleton(hd)).list == printList(List(hd)))
          assert(printList(List(hd)) == hd.characters.list)
          assert(print(Vector.singleton(hd)) == hd.characters)
          assert(rulesProduceIndivualToken(rules, hd))
          assert(!lex(rules, Vector.fromList(hd.characters.list))._1.isEmpty)
          // ----- end

          check(hd.characters == hd.originalCharacters)
          ListSpecs.forallContained(tokens, t => rulesProduceIndivualToken(rules, t), hd)
          Vector.listEqImpliesEq(hd.characters, hd.originalCharacters)
          assert(maxPrefixZipperVector(rules, hd.originalCharacters).isDefined)

          check(maxPrefix(rules, hd.characters.list).isDefined)

          check(maxPrefix(rules, hd.characters.list).get._1 == hd)
          check(maxPrefix(rules, hd.characters.list).get._2.isEmpty)
          check(matchR(hd.rule.regex, hd.characters.list))

          if (input == hd.characters.list ++ suffixWithSep) {
            val suffixAfterSep = printWithSeparatorTokenWhenNeededList(rules, tl, separatorToken)
            lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead(rules, tokens, separatorToken)
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(hd.characters.list, suffixWithSep)
            ListUtils.lemmaSamePrefixThenSameSuffix(hd.characters.list, suffixWithSep, hd.characters.list, maxPrefix(rules, input).get._2, input)

            val sepTokenOpt = maxPrefix(rules, suffixWithSep)
            if (tl.isEmpty) {
              assert(tokens == List(hd))
              assert(printWithSeparatorTokenWhenNeededList(rules, tl, separatorToken).isEmpty)
              assert(printWithSeparatorTokenWhenNeededList(rules, tokens, separatorToken) == hd.characters.list)
              assert(input == hd.characters.list ++ separatorToken.characters.list)
              check(false)
            }
            val nextToken = tl.head
            lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, tokens, nextToken)
            check(rulesProduceIndivualToken(rules, nextToken))

            Vector.listEqImpliesEq(separatorToken.characters, separatorToken.originalCharacters)
            Vector.listEqImpliesEq(separatorToken.characters, Vector.fromList(separatorToken.characters.list))
            ghostExpr(unfold(print(Vector.singleton(separatorToken))))
            unfold(rulesProduceIndivualToken(rules, separatorToken))
            Vector.listEqImpliesEq(print(Vector.singleton(separatorToken)), separatorToken.characters)
            // assert(print(Vector.singleton(separatorToken)).list == printList(List(separatorToken)))
            // assert(printList(List(separatorToken)) == separatorToken.characters.list)
            // assert(print(Vector.singleton(separatorToken)) == separatorToken.characters)
            // assert(rulesProduceIndivualToken(rules, separatorToken))
            // assert(!lex(rules, Vector.fromList(separatorToken.characters.list))._1.isEmpty)
            // assert(maxPrefixZipperVector(rules, separatorToken.originalCharacters).isDefined)
            // check(maxPrefix(rules, separatorToken.originalCharacters.list).isDefined)
            // check(maxPrefix(rules, separatorToken.characters.list).isDefined)
            // check(maxPrefix(rules, separatorToken.characters.list).isDefined)
            // check(maxPrefix(rules, separatorToken.characters.list).get._1 == separatorToken)
            // check(maxPrefix(rules, separatorToken.characters.list).get._2.isEmpty)
            // assert(maxPrefixZipperVector(rules, separatorToken.characters).isDefined)
            // assert(maxPrefix(rules, separatorToken.characters.list).isDefined)
            // assert(maxPrefixZipperVector(rules, separatorToken.characters).get._1 == separatorToken)
            // assert(maxPrefix(rules, separatorToken.characters.list).get._1 == separatorToken)
            lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, separatorToken.characters.list, separatorToken)

            val separatorRule = separatorToken.rule

            Vector.listEqImpliesEq(nextToken.characters, nextToken.originalCharacters)
            Vector.listEqImpliesEq(Vector.fromList(nextToken.characters.list), nextToken.characters)
            Vector.listEqImpliesEq(nextToken.characters, Vector.fromList(nextToken.characters.list))
            Vector.listEqImpliesEq(print(Vector.singleton(nextToken)), nextToken.characters)
            unfold(print(Vector.singleton(nextToken)))
            unfold(rulesProduceIndivualToken(rules, nextToken))
            ListSpecs.forallContained(tokens, (t: Token[C]) => rulesProduceIndivualToken(rules, t), nextToken)
            // assert(print(Vector.singleton(nextToken)).list == printList(List(nextToken)))
            // assert(printList(List(nextToken)) == nextToken.characters.list)
            // assert(print(Vector.singleton(nextToken)) == nextToken.characters)
            // assert(rulesProduceIndivualToken(rules, nextToken))
            // assert(!lex(rules, Vector.fromList(nextToken.characters.list))._1.isEmpty)
            // check(maxPrefixZipperVector(rules, nextToken.characters).isDefined)
            // assert(maxPrefix(rules, nextToken.characters.list).isDefined)
            // assert(maxPrefixZipperVector(rules, nextToken.characters).get._1 == nextToken)
            // assert(maxPrefix(rules, nextToken.characters.list).get._1 == nextToken)
            lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, nextToken.characters.list, nextToken)
            val nextTokenRule = nextToken.rule

            if (!nextTokenRule.regex.usedCharacters.contains(nextToken.characters.list.head)) {
              lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(nextTokenRule.regex, nextToken.characters.list, nextToken.characters.list.head)
              check(false)
            }
            if (separatorRule.regex.usedCharacters.contains(suffixAfterSep.head)) {
              lemmaSepRuleNotContainsCharContainedInANonSepRule(rules, rules, nextTokenRule, separatorRule, suffixAfterSep.head)
              check(false)
            }
            assert(suffixWithSep == separatorToken.characters.list ++ suffixAfterSep)
            lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame(rules, separatorToken, separatorRule, suffixAfterSep, nextTokenRule)

            theoremInvertabilityFromTokensSepTokenWhenNeeded(rules, tl, separatorToken)

            assert(lex(rules, printWithSeparatorTokenWhenNeeded(rules, Vector.fromList(tl), separatorToken))._1.list.filter(!_.rule.isSeparator) == tl)
            assert(lexList(rules, printWithSeparatorTokenWhenNeededList(rules, tl, separatorToken))._1.filter(!_.rule.isSeparator) == tl)
            assert(lexList(rules, printWithSeparatorTokenWhenNeededList(rules, tokens, separatorToken))._1.filter(!_.rule.isSeparator) == tokens)
            assert(lex(rules, printWithSeparatorTokenWhenNeeded(rules, Vector.fromList(tokens), separatorToken))._1.list.filter(!_.rule.isSeparator) == tokens)
          } else {
            lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead(rules, tokens, separatorToken)
            theoremInvertabilityFromTokensSepTokenWhenNeeded(rules, tl, separatorToken)
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(hd.characters.list, suffixWithoutSep)
            ListUtils.lemmaSamePrefixThenSameSuffix(hd.characters.list, suffixWithoutSep, hd.characters.list, maxPrefix(rules, input).get._2, input)
          }
        }
        case Nil() => ()
      }
    }.ensuring (_ => lex(rules, printWithSeparatorTokenWhenNeeded(rules, Vector.fromList(tokens), separatorToken))._1.list.filter(!_.rule.isSeparator) == tokens)


    @ghost
    override def invertibleThroughPrintingWithSeparatorWhenNeeded[C](rules: List[Rule[C]], tokens: List[Token[C]], separatorToken: Token[C]): Boolean = {
      if (!rules.isEmpty && 
          rulesInvariant(rules) && 
          rulesProduceEachTokenIndividually(rules, Vector.fromList(tokens)) &&
          sepAndNonSepRulesDisjointChars(rules, rules) && 
          rulesProduceIndivualToken(rules, separatorToken) &&
          tokens.forall(t => !t.rule.isSeparator) &&
          separatorToken.rule.isSeparator
          ) 
      then 
            theoremInvertabilityFromTokensSepTokenWhenNeeded(rules, tokens, separatorToken)
            (lex(rules, printWithSeparatorTokenWhenNeeded(rules, Vector.fromList(tokens), separatorToken))._1.list.filter(!_.rule.isSeparator) == tokens)
      else 
        true
    }

    @ghost
    @opaque
    @inlineOnce
    def theoremInvertFromTokensSepTokenBetweenEach[C](rules: List[Rule[C]], tokens: List[Token[C]], separatorToken: Token[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividually(rules, Vector.fromList(tokens)))
      require(rulesProduceIndivualToken(rules, separatorToken))
      require(separatorToken.rule.isSeparator)
      require(tokens.forall(!_.rule.isSeparator))
      require(sepAndNonSepRulesDisjointChars(rules, rules))
      decreases(tokens.size)

      tokens match {
        case Nil() => ()
        case Cons(hd, Nil()) => {
          // ----- to prove (!lex(rules, Vector.fromList(hd.characters.list))._1.isEmpty
          Vector.listEqImpliesEq(hd.characters, Vector.fromList(hd.characters.list))
          Vector.listEqImpliesEq(print(Vector.singleton(hd)), hd.characters)
          unfold(print(Vector.singleton(hd)))
          assert(print(Vector.singleton(hd)).list == printList(List(hd)))
          assert(printList(List(hd)) == hd.characters.list)
          assert(print(Vector.singleton(hd)) == hd.characters)
          assert(rulesProduceIndivualToken(rules, hd))
          assert(!lex(rules, Vector.fromList(hd.characters.list))._1.isEmpty)
          // ----- end

          ListSpecs.forallContained(tokens, (t: Token[C]) => !t.rule.isSeparator, hd)
          assert(!hd.rule.isSeparator)
          val input: Vector[C] = printWithSeparatorToken(Vector.fromList(tokens), separatorToken)
          assert(input.list == hd.characters.list ++ separatorToken.characters.list)
          ListUtils.lemmaGetSuffixOnListWithItSelfIsEmpty(hd.characters.list)
          lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, tokens, hd)
          lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, hd.characters.list, hd)
          val rule = hd.rule
          assert(!rule.isSeparator)
          lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, separatorToken.characters.list, separatorToken)
          val separatorRule = separatorToken.rule
          lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, hd.characters.list, hd.characters.list, Nil(), rule)

          if (!separatorRule.regex.usedCharacters.contains(separatorToken.characters.list.head)) {
            lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(
              separatorRule.regex,
              separatorToken.characters.list,
              separatorToken.characters.list.head
            )
            check(false)
          }
          assert(separatorRule.regex.usedCharacters.contains(separatorToken.characters.list.head))

          lemmaNonSepRuleNotContainsCharContainedInASepRule(rules, rules, rule, separatorRule, separatorToken.characters.list.head)

          lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame(rules, hd, rule, separatorToken.characters.list, separatorRule)

          val suffix = maxPrefix(rules, input.list).get._2

          // needed
          val ret: (List[Token[C]], List[C]) = maxPrefix(rules, input.list) match {
            case Some((t, s)) => {
              assert(s == suffix)
              assert(t == hd)
              val (followingTokens: List[Token[C]], nextSuffix: List[C]) = lexList(rules, s)
              assert(nextSuffix.isEmpty)
              assert(t.characters.list ++ s == input.list)
              (Cons(t, followingTokens), nextSuffix)
            }
            case None() => {
              check(false)
              (Nil(), input.list)
            }
          }

          assert(ret == lexList(rules, input.list))

          assert(lex(rules, printWithSeparatorToken(Vector.fromList(Nil()), separatorToken))._1.list.filter(!_.rule.isSeparator).isEmpty)
          assert(lexList(rules, printWithSeparatorTokenList(Nil(), separatorToken))._1.filter(!_.rule.isSeparator).isEmpty)
          assert(lexList(rules, printWithSeparatorTokenList(tokens, separatorToken))._1.filter(!_.rule.isSeparator) == tokens)
          assert(lex(rules, printWithSeparatorToken(Vector.fromList(tokens), separatorToken))._1.list.filter(!_.rule.isSeparator) == tokens)

        }
        case Cons(hd, Cons(nextT, tl)) => {
          Vector.listEqImpliesEq(Vector.fromList(hd.characters.list), hd.characters)
          Vector.listEqImpliesEq(Vector.fromList(separatorToken.characters.list), separatorToken.characters)

          // ----- to prove (!lex(rules, Vector.fromList(hd.characters.list))._1.isEmpty
          Vector.listEqImpliesEq(hd.characters, Vector.fromList(hd.characters.list))
          Vector.listEqImpliesEq(print(Vector.singleton(hd)), hd.characters)
          unfold(print(Vector.singleton(hd)))
          assert(print(Vector.singleton(hd)).list == printList(List(hd)))
          assert(printList(List(hd)) == hd.characters.list)
          assert(print(Vector.singleton(hd)) == hd.characters)
          assert(rulesProduceIndivualToken(rules, hd))
          assert(!lex(rules, Vector.fromList(hd.characters.list))._1.isEmpty)
          // ----- end


          ListSpecs.forallContained(tokens, (t: Token[C]) => !t.rule.isSeparator, hd)
          ListSpecs.forallContained(tokens, (t: Token[C]) => !t.rule.isSeparator, nextT)
          assert(!hd.rule.isSeparator)
          assert(!nextT.rule.isSeparator)
          val input: List[C] = printWithSeparatorTokenList(tokens, separatorToken)
          val suffixAfterSeparator: List[C] = printWithSeparatorTokenList(Cons(nextT, tl), separatorToken)
          val suffix: List[C] = separatorToken.characters.list ++ suffixAfterSeparator
          assert(suffixAfterSeparator == nextT.characters.list ++ separatorToken.characters.list ++ printWithSeparatorTokenList(tl, separatorToken))
          assert(input == hd.characters.list ++ separatorToken.characters.list ++ suffixAfterSeparator)

          Vector.listEqImpliesEq(Vector.fromList(input), printWithSeparatorToken(Vector.fromList(tokens), separatorToken))
          Vector.listEqImpliesEq(Vector.fromList(suffixAfterSeparator), printWithSeparatorToken(Vector.fromList(Cons(nextT, tl)), separatorToken))


          ListUtils.lemmaTwoListsConcatAssociativity(hd.characters.list, separatorToken.characters.list, suffixAfterSeparator)
          assert(input == hd.characters.list ++ suffix)
          lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, tokens, hd)
          lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, hd.characters.list, hd)
          val rule = hd.rule
          assert(!rule.isSeparator)
          lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, hd.characters.list, hd.characters.list, Nil(), rule)

          lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, separatorToken.characters.list, separatorToken)
          val separatorRule = separatorToken.rule

          if (!separatorRule.regex.usedCharacters.contains(separatorToken.characters.list.head)) {
            lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(
              separatorRule.regex,
              separatorToken.characters.list,
              separatorToken.characters.list.head
            )
            check(false)
          }

          Vector.listEqImpliesEq(separatorToken.characters, separatorToken.originalCharacters)
          Vector.listEqImpliesEq(separatorToken.characters, Vector.fromList(separatorToken.characters.list))
          unfold(print(Vector.singleton(separatorToken)))
          unfold(rulesProduceIndivualToken(rules, separatorToken))
          Vector.listEqImpliesEq(print(Vector.singleton(separatorToken)), separatorToken.characters)
          Vector.listEqImpliesEq(nextT.characters, nextT.originalCharacters)
          Vector.listEqImpliesEq(Vector.fromList(nextT.characters.list), nextT.characters)
          Vector.listEqImpliesEq(nextT.characters, Vector.fromList(nextT.characters.list))
          Vector.listEqImpliesEq(print(Vector.singleton(nextT)), nextT.characters)
          unfold(print(Vector.singleton(nextT)))
          unfold(rulesProduceIndivualToken(rules, nextT))
          ListSpecs.forallContained(tokens, (t: Token[C]) => rulesProduceIndivualToken(rules, t), nextT)

          assert(suffixAfterSeparator == nextT.characters.list ++ separatorToken.characters.list ++ printWithSeparatorTokenList(tl, separatorToken))
          lemmaNonSepRuleNotContainsCharContainedInASepRule(rules, rules, rule, separatorRule, separatorToken.characters.list.head)

          lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame(rules, hd, rule, suffix, separatorRule)

          lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, tokens, nextT)
          assert(rulesProduceIndivualToken(rules, nextT))
          lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, nextT.characters.list, nextT)
          val nextTRule = nextT.rule
          assert(!nextTRule.isSeparator)
          lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, nextT.characters.list, nextT.characters.list, Nil(), nextTRule)

          if (!nextTRule.regex.usedCharacters.contains(nextT.characters.list.head)) {
            lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(nextTRule.regex, nextT.characters.list, nextT.characters.list.head)
            check(false)
          }

          lemmaSepRuleNotContainsCharContainedInANonSepRule(rules, rules, nextTRule, separatorRule, nextT.characters.list.head)

          lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame(rules, separatorToken, separatorRule, suffixAfterSeparator, nextTRule)

          theoremInvertFromTokensSepTokenBetweenEach(rules, Cons(nextT, tl), separatorToken)

          assert(lex(rules, printWithSeparatorToken(Vector.fromList(Cons(nextT, tl)), separatorToken))._1.list.filter(!_.rule.isSeparator) == Cons(nextT, tl))
          assert(lexList(rules, printWithSeparatorTokenList(Cons(nextT, tl), separatorToken))._1.filter(!_.rule.isSeparator) == Cons(nextT, tl))
          assert(lexList(rules, printWithSeparatorTokenList(tokens, separatorToken))._1.filter(!_.rule.isSeparator) == tokens)
          assert(lex(rules, printWithSeparatorToken(Vector.fromList(tokens), separatorToken))._1.list.filter(!_.rule.isSeparator) == tokens)

        }
      }

    }.ensuring (_ => lex(rules, printWithSeparatorToken(Vector.fromList(tokens), separatorToken))._1.list.filter(!_.rule.isSeparator) == tokens)

    @ghost
    override def invertibleThroughPrintingWithSeparator[C](rules: List[Rule[C]], tokens: List[Token[C]], separatorToken: Token[C]): Boolean = {
      if (!rules.isEmpty && 
          rulesInvariant(rules) && 
          rulesProduceEachTokenIndividually(rules, Vector.fromList(tokens)) &&
          sepAndNonSepRulesDisjointChars(rules, rules) && 
          rulesProduceIndivualToken(rules, separatorToken) &&
          tokens.forall(t => !t.rule.isSeparator) &&
          separatorToken.rule.isSeparator
          ) 
      then 
            theoremInvertFromTokensSepTokenBetweenEach(rules, tokens, separatorToken)
            (lex(rules, printWithSeparatorToken(Vector.fromList(tokens), separatorToken))._1.list.filter(!_.rule.isSeparator) == tokens)
      else 
        true
    }

    @ghost
    @opaque
    @inlineOnce
    def theoremInvertFromString[C](rules: List[Rule[C]], input: List[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      decreases(input.size)

      val (tokens, suffix) = lex(rules, Vector.fromList(input))
      if (suffix.isEmpty) {
        tokens.list match {
          case Cons(hd, Nil()) => ()
          case Cons(hd, tl)    => theoremInvertFromString(rules, maxPrefix(rules, input).get._2)
          case Nil()           => ()
        }
      } else {
        tokens.list match {
          case Cons(hd, Nil()) => assert(print(tokens).list ++ suffix.list == input)
          case Cons(hd, tl) => {
            Vector.listEqImpliesEq(Vector.fromList(tokens.list), tokens)
            Vector.listEqImpliesEq(Vector.fromList(suffix.list), suffix)
            Vector.fromListHdTlConstructive(hd, tl, tokens)
            theoremInvertFromString(rules, maxPrefix(rules, input).get._2)
            lemmaRemovingFirstTokensCharactersPreservesLexSuffix(rules, input, tokens.list, suffix.list)

            assert(input == maxPrefix(rules, input).get._1.characters.list ++ maxPrefix(rules, input).get._2)
            assert(input == maxPrefix(rules, input).get._1.characters.list ++ (print(Vector.fromList(tl)).list ++ suffix.list))
            ListUtils.lemmaTwoListsConcatAssociativity(
              maxPrefix(rules, input).get._1.characters.list,
              print(Vector.fromList(tl)).list,
              suffix.list
            )
          }
          case Nil() => assert(print(tokens).list ++ suffix.list == input)
        }
      }
    }.ensuring (_ => {
      val (tokens, suffix) = lex(rules, Vector.fromList(input))
      print(tokens).list ++ suffix.list == input
    })

    @ghost override def invertibleThroughLexing[C](rules: List[Rule[C]], input: List[C]): Boolean = 
    if (!rules.isEmpty && rulesInvariant(rules)) then
      theoremInvertFromString(rules, input)
      val (tokens, suffix) = lex(rules, Vector.fromList(input))
      print(tokens).list ++ suffix.list == input
    else
      true

    // Functions -----------------------------------------------------------------------------------------------------------------------------

    def getRuleFromTag[C](rules: List[Rule[C]], tag: String): Option[Rule[C]] = {
      require(rulesInvariant(rules))
      decreases(rules)
      rules match {
        case Cons(hd, tl) if hd.tag == tag => Some(hd)
        case Cons(hd, tl) if hd.tag != tag => {
          ghostExpr(lemmaInvariantOnRulesThenOnTail(hd, tl))
          getRuleFromTag(tl, tag)
        }
        case Nil() => None[Rule[C]]()
      }
    }.ensuring (res => res.isEmpty || rules.contains(res.get) && res.get.tag == tag)

    // Lemmas --------------------------------------------------------------------------------------------------------------------------------
    @ghost
    @opaque
    @inlineOnce
    def lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead[C](rules: List[Rule[C]], tokens: List[Token[C]], separatorToken: Token[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividually(rules, Vector.fromList(tokens)))
      require(rulesProduceIndivualToken(rules, separatorToken))
      require(separatorToken.rule.isSeparator)
      require(tokens.forall(!_.rule.isSeparator))
      require(sepAndNonSepRulesDisjointChars(rules, rules))

      tokens match {
        case Cons(hd, tl) => {
          Vector.listEqImpliesEq(Vector.fromList(hd.characters.list), hd.characters)
          Vector.listEqImpliesEq(Vector.fromList(separatorToken.characters.list), separatorToken.characters)

          lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, separatorToken.characters.list, separatorToken)
          val separatorRule = separatorToken.rule

          lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, hd.characters.list, hd)
          val rule = hd.rule

          val suffix: List[C] = printWithSeparatorTokenWhenNeededList(rules, tl, separatorToken)
          val maxPrefWithoutSep = maxPrefix(rules, hd.characters.list ++ suffix)
          maxPrefWithoutSep match {
            case Some((t, s)) if t == hd => ()
            case Some((t, s)) if t != hd => {
              ListUtils.lemmaTwoListsConcatAssociativity(hd.characters.list, separatorToken.characters.list, suffix)
              val resSuffix: List[C] = separatorToken.characters.list ++ suffix
              if (!separatorRule.regex.usedCharacters.contains(separatorToken.characters.list.head)) {
                lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(
                  separatorRule.regex,
                  separatorToken.characters.list,
                  separatorToken.characters.list.head
                )
                check(false)
              }
              lemmaNonSepRuleNotContainsCharContainedInASepRule(rules, rules, rule, separatorRule, separatorToken.characters.list.head)

              // ----- to prove (!lex(rules, Vector.fromList(hd.characters.list))._1.isEmpty
              Vector.listEqImpliesEq(hd.characters, Vector.fromList(hd.characters.list))
              Vector.listEqImpliesEq(print(Vector.singleton(hd)), hd.characters)
              unfold(print(Vector.singleton(hd)))
              assert(print(Vector.singleton(hd)).list == printList(List(hd)))
              assert(printList(List(hd)) == hd.characters.list)
              assert(print(Vector.singleton(hd)) == hd.characters)
              assert(rulesProduceIndivualToken(rules, hd))
              assert(!lex(rules, Vector.fromList(hd.characters.list))._1.isEmpty)
              // ----- end
              
              check(maxPrefix(rules, hd.characters.list).isDefined)
              check(maxPrefix(rules, hd.characters.list).get._1 == hd)
              lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame(rules, hd, rule, resSuffix, separatorRule)
            }
            case None() => {
              // ----- to prove (!lex(rules, Vector.fromList(hd.characters.list))._1.isEmpty
              Vector.listEqImpliesEq(hd.characters, Vector.fromList(hd.characters.list))
              Vector.listEqImpliesEq(print(Vector.singleton(hd)), hd.characters)
              unfold(print(Vector.singleton(hd)))
              assert(print(Vector.singleton(hd)).list == printList(List(hd)))
              assert(printList(List(hd)) == hd.characters.list)
              assert(print(Vector.singleton(hd)) == hd.characters)
              assert(rulesProduceIndivualToken(rules, hd))
              assert(!lex(rules, Vector.fromList(hd.characters.list))._1.isEmpty)
              // ----- end
              lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined(rules, hd.characters.list, suffix)
              check(false)
            }
          }
        }
        case Nil() => ()
      }

    }.ensuring (_ =>
      tokens.isEmpty ||
        (!tokens.isEmpty &&
          maxPrefix(rules, printWithSeparatorTokenWhenNeededList(rules, tokens, separatorToken)).isDefined &&
          maxPrefix(rules, printWithSeparatorTokenWhenNeededList(rules, tokens, separatorToken)).get._1 == tokens.head)
    )

    @ghost
    @opaque
    @inlineOnce
    def lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame[C](
        rules: List[Rule[C]],
        token: Token[C],
        rule: Rule[C],
        suffix: List[C],
        anOtherTypeRule: Rule[C]
    ): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rules.contains(rule))
      require(rules.contains(anOtherTypeRule))
      require(anOtherTypeRule.isSeparator != rule.isSeparator)
      require(maxPrefix(rules, token.characters.list).isDefined)
      require(maxPrefix(rules, token.characters.list).get._1 == token)
      require(maxPrefix(rules, token.characters.list).get._2.isEmpty)
      require(token.rule == rule)
      require({
        lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(rule, rules)
        matchR(rule.regex, token.characters.list)
      })
      require(!suffix.isEmpty)
      require(!rule.regex.usedCharacters.contains(suffix.head))
      require(anOtherTypeRule.regex.usedCharacters.contains(suffix.head))
      require(sepAndNonSepRulesDisjointChars(rules, rules))

      Vector.listEqImpliesEq(Vector.fromList(token.characters.list), token.characters)

      val input = token.characters.list ++ suffix
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.characters.list, suffix)
      val tokenOpt = maxPrefix(rules, input)
      lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined(rules, token.characters.list, suffix)
      val foundToken = tokenOpt.get._1
      val foundSuffix = tokenOpt.get._2
      lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, input, foundToken)
      val foundRule = foundToken.rule
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(foundToken.characters.list, foundSuffix)
      assert(ListUtils.isPrefix(foundToken.characters.list, input))
      assert(matchR(foundRule.regex, foundToken.characters.list))
      assert(foundRule == foundToken.rule)

      Vector.listEqImpliesEq(Vector.fromList(foundToken.characters.list), foundToken.characters)
      foundToken.lemmaCharactersSize()
      assert(maxPrefix(rules, input) == Some(Token(foundRule.transformation.apply(foundToken.characters), foundRule, foundToken.characters.size, foundToken.characters), foundSuffix))
      lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, foundToken.characters.list, input, foundSuffix, foundRule)
      ListUtils.lemmaSamePrefixThenSameSuffix(
        foundToken.characters.list,
        foundSuffix,
        foundToken.characters.list,
        ListUtils.getSuffix(input, foundToken.characters.list),
        input
      )
      assert(ListUtils.getSuffix(input, foundToken.characters.list) == foundSuffix)
      assert(maxPrefixOneRule(foundRule, input) == Some((foundToken, ListUtils.getSuffix(input, foundToken.characters.list))))

      if (!rule.regex.usedCharacters.contains(foundToken.characters.list.head)) {
        lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(rule.regex, token.characters.list, foundToken.characters.list.head)
        check(false)
      }
      if (rule.isSeparator) {
        if (!foundRule.isSeparator) {
          assert(token.characters.list.contains(foundToken.characters.list.head))
          assert(rule.regex.usedCharacters.contains(foundToken.characters.list.head))
          lemmaNonSepRuleNotContainsCharContainedInASepRule(rules, rules, foundRule, rule, foundToken.characters.list.head)
          lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(foundRule.regex, foundToken.characters.list, foundToken.characters.list.head)
          check(false)
        }
      } else {
        if (foundRule.isSeparator) {
          assert(token.characters.list.contains(foundToken.characters.list.head))
          assert(rule.regex.usedCharacters.contains(foundToken.characters.list.head))
          lemmaSepRuleNotContainsCharContainedInANonSepRule(rules, rules, rule, foundRule, foundToken.characters.list.head)
          lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(foundRule.regex, foundToken.characters.list, foundToken.characters.list.head)
          check(false)
        }
      }

      if (foundToken.characters.size > token.characters.size) {
        ListUtils.lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref(token.characters.list, suffix, foundToken.characters.list, input)
        if (rule.isSeparator) {
          lemmaSepRuleNotContainsCharContainedInANonSepRule(rules, rules, anOtherTypeRule, foundRule, suffix.head)
          lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(foundRule.regex, foundToken.characters.list, suffix.head)
          check(false)
        } else {
          lemmaNonSepRuleNotContainsCharContainedInASepRule(rules, rules, foundRule, anOtherTypeRule, suffix.head)
          lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(foundRule.regex, foundToken.characters.list, suffix.head)
          check(false)
        }
      }
      if (foundToken.characters.size < token.characters.size) {
        lemmaMaxPrefixOutputsMaxPrefix(rules, foundRule, foundToken.characters.list, input, token.characters.list, rule)
        check(false)
      }
      ListUtils.lemmaIsPrefixSameLengthThenSameList(foundToken.characters.list, token.characters.list, input)

      assert(foundToken.characters == token.characters)

      if (foundToken.rule != token.rule) {
        val foundRuleIndex = ListUtils.getIndex(rules, foundRule)
        val ruleIndex = ListUtils.getIndex(rules, rule)
        if (foundRuleIndex < ruleIndex) {
          ListUtils.lemmaGetSuffixOnListWithItSelfIsEmpty(token.characters.list)
          assert(ListUtils.getSuffix(token.characters.list, token.characters.list).isEmpty)
          lemmaMaxPrefNoSmallerRuleMatches(rules, rule, token.characters.list, token.characters.list, foundRule)
          check(false)
        }
        if (ruleIndex < foundRuleIndex) {
          lemmaMaxPrefNoSmallerRuleMatches(rules, foundRule, token.characters.list, input, rule)
          check(false)
        }

        ListUtils.lemmaSameIndexThenSameElement(rules, foundRule, rule)
        check(false)
      }

      lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, token.characters.list, input, ListUtils.getSuffix(input, token.characters.list), rule)
      ListUtils.lemmaSamePrefixThenSameSuffix(
        token.characters.list,
        ListUtils.getSuffix(input, token.characters.list),
        foundToken.characters.list,
        foundSuffix,
        input
      )
      ListUtils.lemmaSamePrefixThenSameSuffix(token.characters.list, suffix, foundToken.characters.list, foundSuffix, input)

    }.ensuring (_ => maxPrefix(rules, token.characters.list ++ suffix) == Some((token, suffix)))


    @ghost
    def lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame[C](
        rules: List[Rule[C]],
        token: Token[C],
        rule: Rule[C],
        suffix: List[C]
    ): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rules.contains(rule))
      require(maxPrefix(rules, token.characters.list).isDefined)
      require(maxPrefix(rules, token.characters.list).get._1 == token)
      require(maxPrefix(rules, token.characters.list).get._2.isEmpty)
      require(token.rule == rule)
      require({
        lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(rule, rules)
        matchR(rule.regex, token.characters.list)
      })
      require(!suffix.isEmpty)
      require(!prefixMatch(rulesRegex(rules), token.characters.list ++ List(suffix.head)))

      val input: List[C] = token.characters.list ++ suffix
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.characters.list, suffix)
      val tokenOpt = maxPrefix(rules, input)
      lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined(rules, token.characters.list, suffix)
      val foundToken: Token[C] = tokenOpt.get._1
      val foundSuffix: List[C] = tokenOpt.get._2
      lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, input, foundToken)
      val foundRule = foundToken.rule
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(foundToken.characters.list, foundSuffix)
      assert(ListUtils.isPrefix(foundToken.characters.list, input))
      assert(matchR(foundRule.regex, foundToken.characters.list))
      assert(foundRule == foundToken.rule)

      Vector.listEqImpliesEq(Vector.fromList(token.characters.list), token.characters)
      Vector.listEqImpliesEq(Vector.fromList(foundToken.characters.list), foundToken.characters)

      foundRule.transformation.lemmaInv()
      assert(semiInverse(foundRule.transformation.witness, foundRule.transformation.f))
      assert(Forall((a: Vector[C]) => foundRule.transformation.witness(foundRule.transformation.f(a)) == a))
      ForallOf((a: Vector[C]) => foundRule.transformation.witness(foundRule.transformation.f(a)) == a)(foundToken.characters)

      foundToken.lemmaCharactersSize()
      assert(maxPrefix(rules, input) == Some(Token(foundRule.transformation.apply(foundToken.characters), foundRule, foundToken.characters.size, foundToken.characters), foundSuffix))
      lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, foundToken.characters.list, input, foundSuffix, foundRule)
      ListUtils.lemmaSamePrefixThenSameSuffix(
        foundToken.characters.list,
        foundSuffix,
        foundToken.characters.list,
        ListUtils.getSuffix(input, foundToken.characters.list),
        input
      )
      assert(ListUtils.getSuffix(input, foundToken.characters.list) == foundSuffix)
      assert(maxPrefixOneRule(foundRule, input) == Some((foundToken, ListUtils.getSuffix(input, foundToken.characters.list))))
      lemmaMaxPrefixThenMatchesRulesRegex(rules, token.characters.list, token, rule, Nil())
      assert(matchR(rulesRegex(rules), token.characters.list))

      if(foundToken.characters.size > token.characters.size) {
        lemmaMaxPrefixThenMatchesRulesRegex(rules, input, foundToken, foundRule, foundSuffix)
        assert(matchR(rulesRegex(rules), foundToken.characters.list))
        assert(input == token.characters.list ++ suffix)
        ListUtils.lemmaSamePrefixThenSameSuffix(token.characters.list, suffix, token.characters.list, ListUtils.getSuffix(input, token.characters.list), input)
        assert(ListUtils.getSuffix(input, token.characters.list) == suffix)
        ListUtils.lemmaAddHeadSuffixToPrefixStillPrefix(token.characters.list, input)
        assert(ListUtils.isPrefix(token.characters.list ++ List(suffix.head), input))
        assert(ListUtils.isPrefix(foundToken.characters.list, input))
        ListUtils.lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther(foundToken.characters.list, token.characters.list ++ List(suffix.head), input)
        assert(ListUtils.isPrefix(token.characters.list ++ List(suffix.head), foundToken.characters.list))

        lemmaNotPrefixMatchThenCannotMatchLonger(rulesRegex(rules), token.characters.list ++ List(suffix.head), foundToken.characters.list)

        check(false)
      }
      assert(foundToken.characters.size <= token.characters.size)
      if(foundToken.characters.size < token.characters.size) {
        lemmaMaxPrefixOutputsMaxPrefix(rules, foundRule, foundToken.characters.list, input, token.characters.list, rule)
        check(false)
      }
      assert(foundToken.characters.size == token.characters.size)
      ListUtils.lemmaIsPrefixSameLengthThenSameList(foundToken.characters.list, token.characters.list, input)
      assert(foundToken.characters == token.characters)
      ListUtils.lemmaSamePrefixThenSameSuffix(token.characters.list, suffix, token.characters.list, foundSuffix, input)
      assert(suffix == foundSuffix)
      if(foundToken.rule != token.rule) {
        if(ListUtils.getIndex(rules, token.rule) < ListUtils.getIndex(rules, foundToken.rule)) {
          lemmaMaxPrefNoSmallerRuleMatches(rules, foundToken.rule, foundToken.characters.list, input, token.rule)
          check(false)
        }
        if(ListUtils.getIndex(rules, foundToken.rule) < ListUtils.getIndex(rules, token.rule)) {
          lemmaMaxPrefNoSmallerRuleMatches(rules, token.rule, token.characters.list, token.characters.list, foundToken.rule)
          check(false)
        }
        if(ListUtils.getIndex(rules, foundToken.rule) == ListUtils.getIndex(rules, token.rule)) {
          ListUtils.lemmaSameIndexThenSameElement(rules, foundToken.rule, token.rule)
          check(false)
        }
        check(false)
      }
      assert(foundToken.rule == token.rule)
      assert(token == foundToken)

    }.ensuring (_ => maxPrefix(rules, token.characters.list ++ suffix) == Some((token, suffix)))

    @ghost
    def lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined[C](rules: List[Rule[C]], input: List[C], suffix: List[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(!lex(rules, Vector.fromList(input))._1.isEmpty)

      val (tokens, _) = lex(rules, Vector.fromList(input))
      val firstT = tokens.list.head
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(firstT.characters.list, maxPrefix(rules, input).get._2)
      ListUtils.lemmaPrefixStaysPrefixWhenAddingToSuffix(firstT.characters.list, input, suffix)
      lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, input, firstT)
      val rule: Rule[C] = firstT.rule
      assert(matchR(rule.regex, firstT.characters.list))

      if (maxPrefix(rules, input ++ suffix).isEmpty) {
        lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone(rule, rules, input ++ suffix)
        lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex(rule, firstT.characters.list, input ++ suffix)
        check(false)
      }

    }.ensuring (_ => maxPrefix(rules, input ++ suffix).isDefined)

    @ghost
    @opaque
    @inlineOnce
    def lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken[C](rules: List[Rule[C]], input: List[C], token: Token[C]): Unit = {
      require(rulesInvariant(rules))
      require(!rules.isEmpty)
      require(maxPrefix(rules, input).isDefined && maxPrefix(rules, input).get._1 == token)
      decreases(rules)

      rules match {
        case Cons(hd, tl) => {
          if (maxPrefixOneRule(hd, input).isDefined && maxPrefixOneRule(hd, input).get._1 == token) {
            assert(hd == token.rule)
            assert(matchR(hd.regex, token.characters.list))
          } else {
            if (!tl.isEmpty) {
              lemmaInvariantOnRulesThenOnTail(hd, tl)
              lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(tl, input, token)
              lemmaGetRuleFromTagInListThenSameListWhenAddingARuleDiffTag(tl, hd, token.rule.tag)
            } else {
              check(false)
            }
          }
        }
        case Nil() => ()
      }
    }.ensuring (_ =>
      getRuleFromTag(rules, token.rule.tag).isDefined && matchR(getRuleFromTag(rules, token.rule.tag).get.regex, token.characters.list) &&
        token.rule == getRuleFromTag(rules, token.rule.tag).get
    )

    @ghost
    @opaque
    @inlineOnce
    def lemmaGetRuleFromTagInListThenSameListWhenAddingARuleDiffTag[C](rules: List[Rule[C]], newHd: Rule[C], tag: String): Unit = {
      require(rulesInvariant(Cons(newHd, rules)))
      require({
        lemmaInvariantOnRulesThenOnTail(newHd, rules)
        getRuleFromTag(rules, tag).isDefined
      })

      lemmaInvariantOnRulesThenOnTail(newHd, rules)
      lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame(rules, getRuleFromTag(rules, tag).get, newHd.tag, List(newHd.tag))

    }.ensuring (_ => getRuleFromTag(rules, tag).get == getRuleFromTag(Cons(newHd, rules), tag).get)

    @ghost
    @opaque
    @inlineOnce
    def lemmaRemovingFirstTokensCharactersPreservesLexSuffix[C](
        rules: List[Rule[C]],
        input: List[C],
        producedTokens: List[Token[C]],
        suffix: List[C]
    ): Unit = {
      require(rulesInvariant(rules))
      require(!rules.isEmpty)
      require(producedTokens.size > 0)
      require(lex(rules, Vector.fromList(input)) == (Vector.fromList(producedTokens), Vector.fromList(suffix)))
    }.ensuring (_ => {
      val (lexedTokens, lexedSuffix) = lex(rules, Vector.fromList(maxPrefix(rules, input).get._2))
      (lexedTokens.list, lexedSuffix.list) == (producedTokens.tail, suffix)
    })

    @ghost
    @opaque
    @inlineOnce
    def lemmaMaxPrefNoneThenNoRuleMatches[C](rules: List[Rule[C]], r: Rule[C], p: List[C], input: List[C]): Unit = {
      require(ListUtils.isPrefix(p, input))
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rules.contains(r))
      require(maxPrefix(rules, input).isEmpty)

      lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(r, rules)

      lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone(r, rules, input)
      lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex(r, p, input)

    }.ensuring (_ => !matchR(r.regex, p))

    @ghost
    @opaque
    @inlineOnce
    def lemmaMaxPrefNoSmallerRuleMatches[C](
        rules: List[Rule[C]],
        r: Rule[C],
        p: List[C],
        input: List[C],
        rBis: Rule[C]
    ): Unit = {
      require(ListUtils.isPrefix(p, input))
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rules.contains(r))
      require(rules.contains(rBis))
      require({
        ForallOf((a: Vector[C]) => r.transformation.witness(r.transformation.f(a)) == a)(Vector.fromList(p))
        maxPrefix(rules, input) == Some(Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p)), ListUtils.getSuffix(input, p))
      })
      require(ListUtils.getIndex(rules, rBis) < ListUtils.getIndex(rules, r))
      require(ruleValid(r))
      require(matchR(r.regex, p))
      decreases(rules)

      assert(ListUtils.getIndex(rules, rBis) < ListUtils.getIndex(rules, r))

      lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(rBis, rules)
      lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(r, rules)
      rules match {
        case Cons(hd, tl) if hd == rBis => {
          ListUtils.lemmaGetIndexBiggerAndHeadEqThenTailContains(rules, rBis, r)
          lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq(rules, rBis, r)

          val tokenSuffOpt = maxPrefixOneRule(rBis, input)
          if (tokenSuffOpt.isEmpty) {
            lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex(rBis, p, input)
          } else {
            val (token, suff) = tokenSuffOpt.get
            if (token.characters.size > p.size) {
              lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref(
                rules,
                p,
                Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p)),
                input,
                ListUtils.getSuffix(input, p),
                token.characters.list,
                ListUtils.getSuffix(input, token.characters.list),
                rBis,
                token
              )
              check(false)
              check(!matchR(rBis.regex, p))
            } else {
              if (token.characters.size < p.size) {
                ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.characters.list, suff)
                lemmaMaxPrefixOneRuleOutputsMaxPrefix(rBis, token.characters.list, token, input, suff, p)
                check(!matchR(rBis.regex, p))
              } else {
                lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq(rules, rBis, r)
                check(Some(token, suff) != Some(Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p)), ListUtils.getSuffix(input, p)))
                check(!matchR(rBis.regex, p))
              }
            }
          }
        }
        case Cons(hd, tl) if hd != rBis => {
          assert(tl.contains(r))
          assert(tl.contains(rBis))

          val tokenSuffOpt = maxPrefixOneRule(hd, input)
          val tokenSuffTailOpt = maxPrefix(tl, input)

          lemmaInvariantOnRulesThenOnTail(hd, tl)
          lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq(rules, hd, r)
          lemmaMaxPrefNoSmallerRuleMatches(tl, r, p, input, rBis)
        }
        case Nil() => check(false)
      }
    }.ensuring (_ => !matchR(rBis.regex, p))

    /** Lemma which proves that indeed the getMaxPrefix indeed returns the maximal prefix that matches any rules
      *
      * @param rules
      * @param r
      * @param p
      * @param input
      * @param pBis
      * @param rBis
      */
    @ghost
    @opaque
    @inlineOnce
    def lemmaMaxPrefixOutputsMaxPrefix[C](
        rules: List[Rule[C]],
        r: Rule[C],
        p: List[C],
        input: List[C],
        pBis: List[C],
        rBis: Rule[C]
    ): Unit = {
      require(ListUtils.isPrefix(p, input))
      require(ListUtils.isPrefix(pBis, input))

      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rules.contains(r))
      require(rules.contains(rBis))

      require({
        lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(r, rules)
        matchR(r.regex, p)
      })
      require({
        ForallOf((a: Vector[C]) => r.transformation.witness(r.transformation.f(a)) == a)(Vector.fromList(p))
        ListUtils.lemmaIsPrefixRefl(input, input)
        maxPrefixOneRule(r, input) == Some(Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p)), ListUtils.getSuffix(input, p))
      })

      require(pBis.size > p.size)
      require(maxPrefix(rules, input) == Some(Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p)), ListUtils.getSuffix(input, p)))

      // For preconditions
      lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(r, rules)
      lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(rBis, rules)
      ListUtils.lemmaIsPrefixRefl(input, input)

      // Main lemma
      lemmaMaxPrefixOutputsMaxPrefixInner(rules, r, p, input, pBis, rBis)

    }.ensuring (_ => !matchR(rBis.regex, pBis))

    @ghost
    @opaque
    @inlineOnce
    def lemmaMaxPrefixOutputsMaxPrefixInner[C](
        rules: List[Rule[C]],
        r: Rule[C],
        p: List[C],
        input: List[C],
        pBis: List[C],
        rBis: Rule[C]
    ): Unit = {
      require(ListUtils.isPrefix(p, input))
      require(ListUtils.isPrefix(pBis, input))

      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rules.contains(r))
      require(rules.contains(rBis))

      require(validRegex(r.regex))
      require(matchR(r.regex, p))
      require(ruleValid(r))
      require({
        ListUtils.lemmaIsPrefixRefl(input, input)
        ForallOf((a: Vector[C]) => r.transformation.witness(r.transformation.f(a)) == a)(Vector.fromList(p))
        maxPrefixOneRule(r, input) == Some(Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p)), ListUtils.getSuffix(input, p))
      })

      require(pBis.size > p.size)

      require(ruleValid(rBis))
      require({
        ForallOf((a: Vector[C]) => r.transformation.witness(r.transformation.f(a)) == a)(Vector.fromList(p))
        maxPrefix(rules, input) == Some(Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p)), ListUtils.getSuffix(input, p))
      })

      assert(validRegex(r.regex))

      ListUtils.lemmaIsPrefixThenSmallerEqSize(pBis, input)
      lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(rBis, rules)

      val bisTokenSuff = maxPrefixOneRule(rBis, input) // == Some(Token(pBis, rBis), ListUtils.getSuffix(input, pBis))
      if (bisTokenSuff.isEmpty) {
        lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex(rBis, pBis, input)
        check(!matchR(rBis.regex, pBis))
      } else {
        val tBis: Token[C] = bisTokenSuff.get._1
        val suffixBis: List[C] = bisTokenSuff.get._2
        ListUtils.lemmaConcatTwoListThenFirstIsPrefix(tBis.characters.list, suffixBis)
        if (tBis.characters.list == pBis) {
          lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref(
            rules,
            p,
            Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p)),
            input,
            ListUtils.getSuffix(input, p),
            pBis,
            suffixBis,
            rBis,
            tBis
          )
          check(!matchR(rBis.regex, pBis))
        } else {
          if (tBis.characters.size < pBis.size) {
            assert(ListUtils.isPrefix(tBis.characters.list, input))
            lemmaMaxPrefixOneRuleOutputsMaxPrefix(rBis, tBis.characters.list, tBis, input, suffixBis, pBis)
            check(!matchR(rBis.regex, pBis))
          } else {
            if (pBis.size == tBis.characters.list.size) {
              ListUtils.lemmaIsPrefixSameLengthThenSameList(pBis, tBis.characters.list, input)
              check(false)
            }
            assert(pBis.size < tBis.characters.size)
            lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref(
              rules,
              p,
              Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p)),
              input,
              ListUtils.getSuffix(input, p),
              tBis.characters.list,
              suffixBis,
              rBis,
              tBis
            )
            assert(tBis.characters.list.size <= p.size)
            check(false)
            check(!matchR(rBis.regex, pBis))

          }
        }

      }

    }.ensuring (_ => !matchR(rBis.regex, pBis))

    @ghost
    @opaque
    @inlineOnce
    def lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule[C](
        rules: List[Rule[C]],
        p: List[C],
        input: List[C],
        suffix: List[C],
        r: Rule[C]
    ): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rules.contains(r))
      require(input == p ++ suffix)
      require({
        ForallOf((a: Vector[C]) => r.transformation.witness(r.transformation.f(a)) == a)(Vector.fromList(p))
        maxPrefix(rules, input) == Some(Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p)), suffix)
      })
      require({
        lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(r, rules)
        matchR(r.regex, p)
      })
      decreases(rules.size)
      val token: Token[C] = Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p))
      rules match {
        case Cons(hd, tl) if hd == r => {
          lemmaInvariantOnRulesThenOnTail(hd, tl)
          if (tl.isEmpty) {
            check(maxPrefixOneRule(r, input) == Some(token, suffix))
          } else {
            lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok(hd, tl, input)
            assert(maxPrefix(tl, input).isEmpty || maxPrefix(tl, input).get._1.rule != r)
            check(maxPrefixOneRule(r, input) == Some(token, suffix))
          }
        }
        case Cons(hd, tl) if hd != r => {
          lemmaInvariantOnRulesThenOnTail(hd, tl)
          val otherTokSufOpt = maxPrefixOneRule(hd, input)
          if (otherTokSufOpt.isEmpty) {
            lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(tl, p, input, suffix, r)
          } else {
            assert(otherTokSufOpt.get._1.rule == hd)
            if (otherTokSufOpt.get._1.rule == r) {
              assert(hd == r)
              lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq(rules, hd, r)
              check(false)
            } else {
              assert(otherTokSufOpt.get._1.rule != r)
              assert(maxPrefixOneRule(hd, input) != Some(Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p)), suffix))
              assert(maxPrefix(tl, input) == Some(Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p)), suffix))
              lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(tl, p, input, suffix, r)
            }

          }
        }
        case Nil() => check(false)

      }

    }.ensuring (_ => maxPrefixOneRule(r, input) == Some(Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p)), suffix))

    @ghost
    @opaque
    @inlineOnce
    def lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok[C](rHead: Rule[C], rTail: List[Rule[C]], input: List[C]): Unit = {
      require(!rTail.isEmpty)
      require(rulesInvariant(Cons(rHead, rTail)))
      decreases(rTail)

      rTail match {
        case Cons(hd, tl) => {
          lemmaNoDuplicateCanReorder(rHead, hd, tl)

          lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq(Cons(rHead, rTail), rHead, hd)
          if (!tl.isEmpty) {
            lemmaNoDupTagThenAlsoWithSubListAcc(List(hd.tag), Nil(), Cons(rHead, tl))
            lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok(rHead, tl, input)
          }
        }
        case Nil() => check(false)
      }

    }.ensuring (_ => maxPrefix(rTail, input).isEmpty || maxPrefix(rTail, input).get._1.rule != rHead)

    @ghost
    @opaque
    @inlineOnce
    def lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref[C](
        rules: List[Rule[C]],
        p: List[C],
        t: Token[C],
        input: List[C],
        suffix: List[C],
        pBis: List[C],
        suffixBis: List[C],
        rBis: Rule[C],
        tBis: Token[C]
    ): Unit = {
      decreases(rules)
      require(p ++ suffix == input)
      require(ListUtils.isPrefix(p, input))
      require(ListUtils.isPrefix(pBis, input))

      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rules.contains(rBis))
      require(maxPrefix(rules, input) == Some(t, suffix))
      // require(t.characters == p) // this is implied by the fact that p ++ suffix == input

      require(ruleValid(rBis))
      require({
        ListUtils.lemmaIsPrefixRefl(input, input)
        maxPrefixOneRule(rBis, input) == Some(tBis, suffixBis)
      })
      require(tBis.rule == rBis)
      require(tBis.characters.list == pBis)
      require(pBis ++ suffixBis == input)

      rules match {
        case Cons(hd, Nil()) => ()
        case Cons(hd, tl) => {
          if (hd == rBis) {
            check(pBis.size <= p.size)
          } else {
            if (maxPrefixOneRule(hd, input) == Some(t, suffix)) {
              val othersPrefix = maxPrefix(tl, input)
              if (othersPrefix.isEmpty) {
                lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone(rBis, tl, input)
                check(false)
              }
              val tokSuff = othersPrefix.get
              val oPref = tokSuff._1.characters.list
              val suff: List[C] = tokSuff._2
              ListUtils.lemmaConcatTwoListThenFirstIsPrefix(oPref, suff)
              lemmaInvariantOnRulesThenOnTail(hd, tl)
              lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref(tl, oPref, tokSuff._1, input, suff, pBis, suffixBis, rBis, tBis)
              t.lemmaCharactersSize()
              tBis.lemmaCharactersSize()
              othersPrefix.get._1.lemmaCharactersSize()
              check(pBis.size <= oPref.size)
              
              check(oPref.size <= p.size)
              check(pBis.size <= p.size)
            } else {
              lemmaInvariantOnRulesThenOnTail(hd, tl)
              lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref(tl, p, t, input, suffix, pBis, suffixBis, rBis, tBis)
            }
          }
        }
        case Nil() => check(false)
      }

    }.ensuring (_ => pBis.size <= p.size)

    @ghost
    @opaque
    @inlineOnce
    def lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone[C](
        r: Rule[C],
        rules: List[Rule[C]],
        input: List[C]
    ): Unit = {
      require(!rules.isEmpty)
      require(rulesValidInductive(rules))
      require(rules.contains(r))

      require(maxPrefix(rules, input).isEmpty)
      decreases(rules)

      lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(r, rules)

      rules match {
        case Cons(hd, tl) if r == hd => ()
        case Cons(hd, tl) if r != hd => {

          lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone(r, tl, input)
        }
        case Nil() => ()
      }

    }.ensuring (_ => maxPrefixOneRule(r, input).isEmpty)

    @ghost
    @opaque
    @inlineOnce
    def lemmaMaxPrefixOneRuleOutputsMaxPrefix[C](
        r: Rule[C],
        p: List[C],
        t: Token[C],
        input: List[C],
        suffix: List[C],
        pBis: List[C]
    ): Unit = {
      decreases(input.size)

      require(p ++ suffix == input)
      require(ListUtils.isPrefix(p, input))
      require(ListUtils.isPrefix(pBis, input))
      require(pBis.size <= input.size)
      require(pBis.size > p.size)

      require(ruleValid(r))
      require(validRegex(r.regex))
      require(matchR(r.regex, p))
      require(t.characters.list == p)
      require({
        ListUtils.lemmaIsPrefixRefl(input, input)
        maxPrefixOneRule(r, input) == Some(t, suffix)
      })

      ListUtils.lemmaIsPrefixRefl(input, input)

      longestMatchNoBiggerStringMatch(r.regex, input, p, pBis)
    }.ensuring (_ => !matchR(r.regex, pBis))

    @ghost
    @opaque
    @inlineOnce
    def lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex[C](
        r: Rule[C],
        p: List[C],
        input: List[C]
    ): Unit = {
      require(ListUtils.isPrefix(p, input))
      require(ruleValid(r))
      require(maxPrefixOneRule(r, input) == None[(Token[C], List[C])]())

      longestMatchNoBiggerStringMatch(r.regex, input, Nil(), p)

    }.ensuring (_ => !matchR(r.regex, p))

    @ghost
    @opaque
    @inlineOnce
    def lemmaRuleInListAndrulesValidInductiveThenRuleIsValid[C](r: Rule[C], rules: List[Rule[C]]): Unit = {
      require(rules.contains(r))
      require(rulesValidInductive(rules))
      decreases(rules)
      rules match {
        case Cons(hd, tl) if (hd == r) => assert(ruleValid(r))
        case Cons(hd, tl) if (hd != r) => {
          assert(tl.contains(r))
          lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(r, tl)
        }
        case Nil() => assert(false)
      }
    }.ensuring (_ => ruleValid(r))

    @ghost
    @opaque
    @inlineOnce
    def lemmaInvariantOnRulesThenOnTail[C](r: Rule[C], rules: List[Rule[C]]): Unit = {
      require(rulesInvariant(Cons(r, rules)))
      assert(rulesValidInductive(Cons(r, rules)) && noDuplicateTag(Cons(r, rules), Nil()))
      assert(rulesValidInductive(rules))
      assert(noDuplicateTag(rules, List(r.tag)))

      lemmaNoDupTagThenAlsoWithSubListAcc(List(r.tag), Nil(), rules)
      assert(noDuplicateTag(rules, Nil()))

    }.ensuring (_ => rulesInvariant(rules))

    @ghost
    @opaque
    @inlineOnce
    def lemmaNoDuplicateCanReorder[C](e1: Rule[C], e2: Rule[C], l: List[Rule[C]]): Unit = {
      require(noDuplicateTag(Cons(e1, Cons(e2, l)), List()))

      assert(noDuplicateTag(Cons(e1, Cons(e2, l)), List()) == noDuplicateTag(Cons(e2, l), List(e1.tag)))
      assert(noDuplicateTag(Cons(e2, l), List(e1.tag)) == noDuplicateTag(l, List(e2.tag, e1.tag)))
      assert(List(e2.tag, e1.tag).toSet == List(e1.tag, e2.tag).toSet)
      lemmaNoDuplicateSameWithAccWithSameContent(l, List(e2.tag, e1.tag), List(e1.tag, e2.tag))
      assert(noDuplicateTag(l, List(e2.tag, e1.tag)) == noDuplicateTag(l, List(e1.tag, e2.tag))) 
    }.ensuring (_ => noDuplicateTag(Cons(e2, Cons(e1, l)), List()))

    @ghost
    @opaque
    @inlineOnce
    def lemmaNoDuplicateSameWithAccWithSameContent[C](l: List[Rule[C]], acc: List[String], newAcc: List[String]): Unit = {
      require(noDuplicateTag(l, acc))
      require(acc.content == newAcc.content)
      decreases(l)

      l match {
        case Cons(hd, tl) => {
          ListSpecs.subsetContains(acc, newAcc)
          ListSpecs.subsetContains(newAcc, acc)
          assert(acc.contains(hd.tag) == newAcc.contains(hd.tag))
          lemmaNoDuplicateSameWithAccWithSameContent(tl, Cons(hd.tag, acc), Cons(hd.tag, newAcc))
        }
        case Nil() => ()
      }

    }.ensuring (_ => noDuplicateTag(l, newAcc))

    @ghost
    @opaque
    @inlineOnce
    def lemmaNoDupTagThenAlsoWithSubListAcc[C](acc: List[String], newAcc: List[String], rules: List[Rule[C]]): Unit = {
      require(ListSpecs.subseq(newAcc, acc))
      require(noDuplicateTag(rules, acc))
      decreases(rules)

      rules match {
        case Cons(hd, tl) => {
          lemmaNoDupTagThenAlsoWithSubListAcc(Cons(hd.tag, acc), Cons(hd.tag, newAcc), tl)
          ListSpecs.subseqNotContains(newAcc, acc, hd.tag)
        }
        case Nil() => ()
      }

    }.ensuring (_ => noDuplicateTag(rules, newAcc))

    @ghost
    @opaque
    @inlineOnce
    def lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq[C](rules: List[Rule[C]], r1: Rule[C], r2: Rule[C]): Unit = {
      require(rules.contains(r1))
      require(rules.contains(r2))
      require(noDuplicateTag(rules))
      require(ListUtils.getIndex(rules, r1) < ListUtils.getIndex(rules, r2))

    }.ensuring (_ => r1 != r2)

    @ghost
    @opaque
    @inlineOnce
    def lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq[C](rules: List[Rule[C]], r1: Rule[C], r2: Rule[C]): Unit = {
      require(rules.contains(r1))
      require(rules.contains(r2))
      require(noDuplicateTag(rules))
      require(ListUtils.getIndex(rules, r1) < ListUtils.getIndex(rules, r2))
      decreases(rules)

      if (rules.head == r1) {
        lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame(rules.tail, r2, r1.tag, List(r1.tag))
        assert(noDuplicateTag(rules) == noDuplicateTag(rules.tail, List(r1.tag)))
      } else {
        lemmaNoDupTagThenAlsoWithSubListAcc(List(rules.head.tag), Nil(), rules.tail)
        ListUtils.lemmaGetIndexBiggerAndHeadNotEqThenTailContains(rules, r1, r2)
        lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq(rules.tail, r1, r2)
      }

    }.ensuring (_ => r1.tag != r2.tag)

    @ghost
    @opaque
    @inlineOnce
    def lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame[C](rules: List[Rule[C]], r: Rule[C], tag: String, acc: List[String]): Unit = {
      require(acc.contains(tag))
      require(noDuplicateTag(rules, acc))
      require(rules.contains(r))
      decreases(rules)

      rules match {
        case Nil()                   => check(false)
        case Cons(hd, tl) if hd == r => ()
        case Cons(hd, tl) if hd != r => lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame(tl, r, tag, Cons(hd.tag, acc))
      }
    }.ensuring (_ => r.tag != tag)

    @ghost
    @opaque
    @inlineOnce
    def lemmaNonSepRuleNotContainsCharContainedInASepRule[C](
        rules: List[Rule[C]],
        rulesRec: List[Rule[C]],
        rNSep: Rule[C],
        rSep: Rule[C],
        c: C
    ): Unit = {
      require(rulesInvariant(rules))
      require(rules.contains(rSep))
      require(rulesRec.contains(rNSep))
      require(rules.contains(rNSep))
      require(!rNSep.isSeparator)
      require(rSep.isSeparator)
      require(rSep.regex.usedCharacters.contains(c))
      require(sepAndNonSepRulesDisjointChars(rules, rulesRec))
      decreases(rulesRec)

      rulesRec match {
        case Cons(hd, tl) if hd == rNSep => lemmaNonSepRuleNotContainsCharContainedInASepRuleInner(rules, rNSep, rSep, c)
        case Cons(hd, tl)                => lemmaNonSepRuleNotContainsCharContainedInASepRule(rules, tl, rNSep, rSep, c)
        case Nil()                       => ()
      }

    }.ensuring (_ => !rNSep.regex.usedCharacters.contains(c))

    @ghost
    @opaque
    @inlineOnce
    def lemmaNonSepRuleNotContainsCharContainedInASepRuleInner[C](rules: List[Rule[C]], rNSep: Rule[C], rSep: Rule[C], c: C): Unit = {
      require(rulesInvariant(rules))
      require(rules.contains(rSep))
      require(rSep.regex.usedCharacters.contains(c))
      require(!rNSep.isSeparator)
      require(rSep.isSeparator)
      require(ruleDisjointCharsFromAllFromOtherType(rNSep, rules))
      decreases(rules)

      rules match {
        case Cons(hd, tl) if hd == rSep =>
          ListSpecs.forallContained(rSep.regex.usedCharacters, (x: C) => !rNSep.regex.usedCharacters.contains(x), c)

        case Cons(hd, tl) => {
          lemmaInvariantOnRulesThenOnTail(hd, tl)
          lemmaNonSepRuleNotContainsCharContainedInASepRuleInner(tl, rNSep, rSep, c)
        }
        case Nil() => ()
      }

    }.ensuring (_ => !rNSep.regex.usedCharacters.contains(c))

    @ghost
    @opaque
    @inlineOnce
    def lemmaSepRuleNotContainsCharContainedInANonSepRule[C](
        rules: List[Rule[C]],
        rulesRec: List[Rule[C]],
        rNSep: Rule[C],
        rSep: Rule[C],
        c: C
    ): Unit = {
      require(rulesInvariant(rules))
      require(rules.contains(rSep))
      require(rulesRec.contains(rNSep))
      require(rules.contains(rNSep))
      require(!rNSep.isSeparator)
      require(rSep.isSeparator)
      require(rNSep.regex.usedCharacters.contains(c))
      require(sepAndNonSepRulesDisjointChars(rules, rulesRec))
      decreases(rulesRec)
      
      rulesRec match {
        case Cons(hd, tl) if hd == rNSep => lemmaSepRuleNotContainsCharContainedInANonSepRuleInner(rules, rNSep, rSep, c)
        case Cons(hd, tl)                => lemmaSepRuleNotContainsCharContainedInANonSepRule(rules, tl, rNSep, rSep, c)
        case Nil()                       => ()
      }

    }.ensuring (_ => !rSep.regex.usedCharacters.contains(c))

    @ghost
    @opaque
    @inlineOnce
    def lemmaSepRuleNotContainsCharContainedInANonSepRuleInner[C](rules: List[Rule[C]], rNSep: Rule[C], rSep: Rule[C], c: C): Unit = {
      require(rulesInvariant(rules))
      require(rules.contains(rSep))
      require(rNSep.regex.usedCharacters.contains(c))
      require(!rNSep.isSeparator)
      require(rSep.isSeparator)
      require(ruleDisjointCharsFromAllFromOtherType(rNSep, rules))
      decreases(rules)

      rules match {
        case Cons(hd, tl) if hd == rSep =>
          ListSpecs.forallContained(rNSep.regex.usedCharacters, (x: C) => !rSep.regex.usedCharacters.contains(x), c)

        case Cons(hd, tl) => {
          lemmaInvariantOnRulesThenOnTail(hd, tl)
          lemmaSepRuleNotContainsCharContainedInANonSepRuleInner(tl, rNSep, rSep, c)
        }
        case Nil() => ()
      }

    }.ensuring (_ => !rSep.regex.usedCharacters.contains(c))

    @ghost
    @opaque
    @inlineOnce
    def lemmaRulesProduceEachTokenIndividuallyThenForAnyToken[C](rules: List[Rule[C]], tokens: List[Token[C]], t: Token[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(tokens.contains(t))
      require(rulesProduceEachTokenIndividuallyList(rules, tokens))
      decreases(tokens)

      tokens match {
        case Cons(hd, tl) if hd == t => ()
        case Cons(hd, tl)            => lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, tl, t)
        case Nil()                   => ()
      }
    }.ensuring (_ => rulesProduceIndivualToken(rules, t))

    
    // Helper lemmas for tokensListTwoByTwoPredicate
    def tokensListTwoByTwoPredicateConcatList[C](l1: List[Token[C]], l2: List[Token[C]], rules: List[Rule[C]], p: (Token[C], Token[C], List[Rule[C]]) => Boolean): Unit = {
      require(tokensListTwoByTwoPredicateList(l1, rules, p) && tokensListTwoByTwoPredicateList(l2, rules, p))
      require(!l1.isEmpty && !l2.isEmpty)
      require(p(l1.last, l2.head, rules))
      decreases(l1.size)
      l1 match {
        case Cons(hd, tl) if !tl.isEmpty => tokensListTwoByTwoPredicateConcatList(tl, l2, rules, p)
        case Cons(hd, tl) if tl.isEmpty =>  ()
      }
    }.ensuring(_ => tokensListTwoByTwoPredicateList(l1 ++ l2, rules, p))

    def tokensListTwoByTwoPredicateInstantiate[C](l: List[Token[C]], rules: List[Rule[C]], p: (Token[C], Token[C], List[Rule[C]]) => Boolean, t1: Token[C], t2: Token[C], i: BigInt): Unit = {
      require(tokensListTwoByTwoPredicateList(l, rules, p))
      require(i >= 0 && i+1 < l.size)
      require(l(i) == t1 && l(i + 1) == t2)
      decreases(i)
      if(i == 0) {
        check(p(t1, t2, rules))
      } else {
        tokensListTwoByTwoPredicateInstantiate(l.tail, rules, p, t1, t2, i-1)
      }
      
    }.ensuring(_ => p(t1, t2, rules))

    @ghost
    @inlineOnce
    @opaque
    def lemmaMaxPrefixThenMatchesRulesRegex[C]( 
      rules: List[Rule[C]],
      input: List[C],
      token: Token[C],
      rule: Rule[C],
      suffix: List[C]
    ): Unit = {
        require(!rules.isEmpty)
        require(rulesInvariant(rules))
        require(rules.contains(rule))
        require(maxPrefix(rules, input) == Some(token, suffix))
        require(token.rule == rule)
        require(input == token.characters.list ++ suffix)
        require({
          lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(rule, rules)
          matchR(rule.regex, token.characters.list)
        })
        Vector.listEqImpliesEq(Vector.fromList(token.characters.list), token.characters)

        lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, token.characters.list, input, suffix, rule)
        assert(maxPrefixOneRule(rule, input) == Some(token, suffix))

        assert(matchR(rule.regex, token.characters.list))
        assert(rules.contains(rule))
        ghostExpr({
          def lemma(@induct rs: List[Rule[C]]): Unit = {
            require(rulesValid(rs))
          }.ensuring(_ => rs.map(_.regex).forall(r => validRegex(r)))
          lemma(rules)
        })
        assert(rulesRegex(rules) == VerifiedRegex.generalisedUnion(rules.map(_.regex)))
        ghostExpr({
          def lemma(rs: List[Rule[C]]): Unit = {
            require(rulesValid(rs))
            require(rs.contains(rule))
            decreases(rs)
            rs match
              case Cons(hd, tl) if hd != rule => lemma(tl)
              case _ => ()
          }.ensuring(_ => rs.map(_.regex).contains(rule.regex))
          lemma(rules)
        })
        val l = rules.map(_.regex)
        assert(l.contains(rule.regex))
        matchRGenUnionSpec(rulesRegex(rules), l, token.characters.list) 

        assert(l.contains(rule.regex))
        assert(validRegex(rule.regex))
        assert(matchR(rule.regex, token.characters.list))
        ListUtils.lemmaContainsThenExists(l, rule.regex, rr => validRegex(rr) && matchR(rr, token.characters.list))
        assert(l.exists(rr => validRegex(rr) && matchR(rr, token.characters.list)))


    }.ensuring(_ => matchR(rulesRegex(rules), token.characters.list))
    
  }
}
