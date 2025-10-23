/** Author: Samuel Chassot
  */

package com.ziplex.lexer

import stainless.annotation._
import stainless.collection._
import stainless.equations._
import scala.annotation.tailrec
import stainless.lang.Quantifiers._

import scala.annotation.tailrec
// BEGIN uncomment for verification ------------------------------------------
import stainless.lang.StaticChecks._
import stainless.lang.{ghost => ghostExpr, _}
import stainless.proof.check
// END uncomment for verification --------------------------------------------
// BEGIN imports for benchmarking -------------------------------------------
// import stainless.lang.{ghost => _, decreases => _, unfold => _, _}
// import com.ziplex.lexer.OptimisedChecks.*
// import Predef.{assert => _, Ensuring => _, require => _}

// @tailrec
// def dummy(x: BigInt): BigInt = {
//   if (x == BigInt(0)) then x
//   else dummy(x - BigInt(1))
// }.ensuring( res => res == BigInt(0))
// END imports for benchmarking ---------------------------------------------


object VerifiedLexerMaxMunchOnly {
  import VerifiedRegex._
  import VerifiedRegexMatcher._
  import com.ziplex.lexer.MemoisationZipper.CacheUp
  import com.ziplex.lexer.MemoisationZipper.CacheDown


  abstract class Lexer extends LexerInterface {
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

    @pure
    override def rulesProduceIndividualToken[C](rs: List[Rule[C]], t: Token[C]): Boolean = {
      require(!rs.isEmpty)
      require(rulesInvariant(rs))
      val (producedTs, suffix) = lex(rs, print(Vector.singleton(t)))
      producedTs.size == 1 && producedTs(0) == t && suffix.isEmpty
    }.ensuring(res => {
      res == (lex(rs, print(Vector.singleton(t))) == (Vector.singleton(t), Vector.empty[C]))
    })

    def rulesProduceIndividualTokenMem[C](rs: List[Rule[C]], t: Token[C])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = {
      require(!rs.isEmpty)
      require(rulesInvariant(rs))
      val (producedTs, suffix) = lexMem(rs, print(Vector.singleton(t)))
      producedTs.size == 1 && producedTs(0) == t && suffix.isEmpty
    }.ensuring(res => res == rulesProduceIndividualToken(rs, t))

    @ghost
    def rulesProduceEachTokenIndividuallyList[C](rs: List[Rule[C]], ts: List[Token[C]]): Boolean = {
      require(!rs.isEmpty)
      require(rulesInvariant(rs))
      decreases(ts)
      ts match {
        case Cons(hd, tl) => rulesProduceIndividualToken(rs, hd) && rulesProduceEachTokenIndividuallyList(rs, tl)
        case Nil()        => true
      }
    }.ensuring(res => res == ts.forall(t => rulesProduceIndividualToken(rs, t)))

     override def rulesProduceEachTokenIndividually[C](rs: List[Rule[C]], ts: Vector[Token[C]]): Boolean = {
      require(!rs.isEmpty)
      require(rulesInvariant(rs))
      ts.forall(t => rulesProduceIndividualToken(rs, t))
    }

    def rulesProduceEachTokenIndividuallyMem[C](rs: List[Rule[C]], ts: Vector[Token[C]])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = {
      require(!rs.isEmpty)
      require(rulesInvariant(rs))
      decreases(ts.size)
      if ts.isEmpty then true 
      else 
        val headPred = rulesProduceIndividualTokenMem(rs, ts.head)
        assert(ts.tail.size < ts.size)
        val recPred = rulesProduceEachTokenIndividuallyMem(rs, ts.tail)
        headPred && recPred
    }.ensuring(res => res == ts.forall(t => rulesProduceIndividualToken(rs, t)))

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
          assert(token.charsOf.list ++ suffix == input)
          (Cons(token, followingTokens), nextSuffix)
        }
        case None() => (Nil(), input)
      }
    }.ensuring (res =>
      if (res._1.size > 0) res._2.size < input.size && !res._1.isEmpty
      else res._2 == input)

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
      lexTailRec(
        rules,
        input,
        Vector.empty,
        input,
        Vector.empty
      )
    }.ensuring (res =>
      (if (res._1.size > 0) res._2.size < input.size && !res._1.isEmpty
      else res._2 == input) &&
      (res._1.list == lexList(rules, input.list)._1 && 
       res._2.list == lexList(rules, input.list)._2)
    )

    def lexRec[C](
        rules: List[Rule[C]],
        input: Vector[C]
    ): (Vector[Token[C]], Vector[C]) = {
      decreases(input.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      maxPrefixZipperVector(rules, input) match {
        case Some((token, suffix)) => {
          val (followingTokens, nextSuffix) = lexRec(rules, suffix)
          assert(token.charsOf.list ++ suffix.list == input.list)
          ghostExpr(Vector.listEqImpliesEq(token.charsOf ++ suffix, input))
          assert(token.charsOf ++ suffix == input)
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

    def lexTailRec[C](
        rules: List[Rule[C]],
        @ghost totalInput: Vector[C],
        @ghost treated: Vector[C],
        input: Vector[C],
        acc: Vector[Token[C]],
    ): (Vector[Token[C]], Vector[C]) = {
      decreases(input.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(totalInput == treated ++ input)
      require(lexRec(rules, treated) == (acc, Vector.empty[C]))
      require(lexRec(rules, totalInput) == (acc ++ lexRec(rules, input)._1, lexRec(rules, input)._2))
      maxPrefixZipperVector(rules, input) match {
        case Some((token, suffix)) => {
          @ghost val (followingTokens, nextSuffix) = lexRec(rules, suffix)
          assert(token.charsOf.list ++ suffix.list == input.list)
          ghostExpr(Vector.listEqImpliesEq(token.charsOf ++ suffix, input))
          assert(token.charsOf ++ suffix == input)
          assert(lexRec(rules, suffix) == (followingTokens, nextSuffix))
          assert(treated ++ (token.charsOf ++ suffix) == totalInput)
          ghostExpr(ListUtils.lemmaTwoListsConcatAssociativity(treated.list, token.charsOf.list, suffix.list))
          ghostExpr(Vector.listEqImpliesEq((treated ++ token.charsOf) ++ suffix, totalInput))
          assert(lexRec(rules, treated) == (acc, Vector.empty[C]))
          ghostExpr(unfold(lexRec(rules, input)))
          assert(lexRec(rules, input)._1.head == token)
          assert(lexRec(rules, input)._1.list == List(token) ++ followingTokens.list)
          assert(token.charsOf ++ suffix == input)
          assert(followingTokens.prepend(token) == lexRec(rules, input)._1)
          ghostExpr(ListUtils.lemmaTwoListsConcatAssociativity(acc.list, List(token), followingTokens.list))
          ghostExpr(Vector.listEqImpliesEq(acc.append(token) ++ followingTokens, acc ++ lexRec(rules, input)._1))
          assert(acc.append(token) ++ followingTokens == acc ++ lexRec(rules, input)._1)
          assert(lexRec(rules, treated ++ token.charsOf ++ suffix) == (acc.append(token) ++ followingTokens, nextSuffix))
          assert(lexRec(rules, suffix) == (followingTokens, nextSuffix))
          assert(acc.append(token).list == acc.list ++ List(token) )
          ghostExpr(lemmaLexThenLexPrefix(rules, treated.list ++ token.charsOf.list, suffix.list, acc.append(token).list, followingTokens.list, nextSuffix.list))
          assert(lexList(rules, treated.list ++ token.charsOf.list) == (acc.list ++ List(token), List[C]()))

          assert(lexList(rules, treated.list ++ token.charsOf.list)._1 == lexRec(rules, treated ++ token.charsOf)._1.list)
          assert(lexList(rules, treated.list ++ token.charsOf.list)._2 == lexRec(rules, treated ++ token.charsOf)._2.list)
          assert(treated.list ++ token.charsOf.list == (treated ++ token.charsOf).list)
          ghostExpr(unfold(lexRec(rules, treated ++ token.charsOf)))
          assert(lexRec(rules, treated ++ token.charsOf)._1.list == (acc.append(token).list))
          assert(lexRec(rules, treated ++ token.charsOf)._2.list == List[C]())
          ghostExpr(Vector.listEqImpliesEq(lexRec(rules, treated ++ token.charsOf)._1, acc.append(token)))
          ghostExpr(Vector.listEqImpliesEq(lexRec(rules, treated ++ token.charsOf)._2, Vector.empty[C]))
          assert(lexRec(rules, treated ++ token.charsOf)._1 == (acc.append(token)))
          assert(lexRec(rules, treated ++ token.charsOf) == (acc.append(token), Vector.empty[C]))
          assert(lexRec(rules, treated ++ token.charsOf) == (acc.append(token), Vector.empty[C]))
          @ghost val newTreated = treated ++ token.charsOf
          lexTailRec(
            rules,
            totalInput,
            newTreated,
            suffix,
            acc.append(token)
          )
        }
        case None() => {
          ghostExpr(Vector.listEqImpliesEq(acc ++ Vector.empty[Token[C]], acc))
          (acc, input)
        }
      }
    }.ensuring (res => res == lexRec(rules, totalInput) )


    def lexMem[C](
        rules: List[Rule[C]],
        input: Vector[C]
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): (Vector[Token[C]], Vector[C]) = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(cacheUp.valid)
      require(cacheDown.valid)
      decreases(input.size)

      ghostExpr(Vector.listEqImpliesEq(Vector.empty[C] ++ input, input))
      ghostExpr(Vector.listEqImpliesEq(Vector.empty[Token[C]] ++ lexRec(rules, input)._1, lexRec(rules, input)._1))

      lexTailRecMem(
        rules,
        input,
        Vector.empty,
        input,
        Vector.empty
      )
    }.ensuring (res => res == lex(rules, input))

    def lexTailRecMem[C](
        rules: List[Rule[C]],
        @ghost totalInput: Vector[C],
        @ghost treated: Vector[C],
        input: Vector[C],
        acc: Vector[Token[C]],
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): (Vector[Token[C]], Vector[C]) = {
      decreases(input.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(cacheUp.valid)
      require(cacheDown.valid)
      require(totalInput == treated ++ input)
      require(lexRec(rules, treated) == (acc, Vector.empty[C]))
      require(lexRec(rules, totalInput) == (acc ++ lexRec(rules, input)._1, lexRec(rules, input)._2))
      unfold(lexTailRec(rules, totalInput, treated, input, acc))
      unfold(lex(rules, input))
      maxPrefixZipperVectorMem(rules, input) match {
        case Some((token, suffix)) => {
          @ghost val newTreated = treated ++ token.charsOf
          lexTailRecMem(
            rules,
            totalInput,
            newTreated,
            suffix,
            acc.append(token)
          )
        }
        case None() => {
          (acc, input)
        }
      }
    }.ensuring (res => res == lexTailRec(rules, totalInput, treated, input, acc) )

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
          assert(token.charsOf.list ++ suffix == input)
          (Cons(token, followingTokens), nextSuffix)
        }
        case None() => (Nil(), input)
      }
    }.ensuring (res =>
      if (res._1.size > 0) res._2.size < input.size && !res._1.isEmpty
      else res._2 == input
    )

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
                            res.get._1.charsOf.list == res.get._1.originalCharacters.list && 
                            res.get._2.size < input.size && 
                            res.get._1.charsOf.list ++ res.get._2 == input
                          )
                       && res.get._1.value == res.get._1.rule.transformation.apply(res.get._1.originalCharacters)
                       && matchR(res.get._1.rule.regex, res.get._1.charsOf.list)
                       && rulesArg.contains(res.get._1.rule)
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
        )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Option[(Token[C], Vector[C])] = {
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
        res.get._1.charsOf.list
      ) && res.get._1.charsOf.list ++ res.get._2 == input && res.get._2.size < input.size && res.get._1.rule == rule
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
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Option[(Token[C], Vector[C])] = {
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
      require(tokens.isEmpty || tokens.head.charsOf.size <= otherP.size)
      require(tokens.isEmpty || tokens.head.rule == r)
      require(ListUtils.isPrefix(otherP, input))
      require(r != otherR)
      require({
        lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(r, rules)
        tokens.isEmpty || matchR(r.regex, tokens.head.charsOf.list)
      })

      lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(otherR, rules)
      if (ListUtils.getIndex(rules, r) > ListUtils.getIndex(rules, otherR)) {
        tokens match {
          case Nil() => {
            lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone(otherR, rules, input)
            lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex(otherR, otherP, input)
          }
          case Cons(hd, tl) => {
            Vector.listEqImpliesEq(Vector.fromList(hd.charsOf.list), hd.charsOf)
            val (tok, suf) = maxPrefix(rules, input).get
            assert(hd == tok)
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(hd.charsOf.list, suf)
            ListUtils.lemmaSamePrefixThenSameSuffix(hd.charsOf.list, suf, hd.charsOf.list, ListUtils.getSuffix(input, hd.charsOf.list), input)
            if (otherP.size == hd.charsOf.list.size) {
              ListUtils.lemmaIsPrefixSameLengthThenSameList(hd.charsOf.list, otherP, input)
              lemmaMaxPrefNoSmallerRuleMatches(rules, r, hd.charsOf.list, input, otherR)
            } else {
              lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, hd.charsOf.list, input, suf, r)
              lemmaMaxPrefixOutputsMaxPrefix(rules, r, hd.charsOf.list, input, otherP, otherR)
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
            Vector.listEqImpliesEq(Vector.fromList(hd.charsOf.list), hd.charsOf)
            val (tok, suf) = maxPrefix(rules, input).get
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(hd.charsOf.list, suf)
            ListUtils.lemmaSamePrefixThenSameSuffix(hd.charsOf.list, suf, hd.charsOf.list, ListUtils.getSuffix(input, hd.charsOf.list), input)
            if (otherP.size > hd.charsOf.list.size) {
              lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, hd.charsOf.list, input, suf, r)
              lemmaMaxPrefixOutputsMaxPrefix(rules, r, hd.charsOf.list, input, otherP, otherR)
            }

          }
        }
      }

    }.ensuring (_ =>
      if (ListUtils.getIndex(rules, otherR) < ListUtils.getIndex(rules, r)) !matchR(otherR.regex, otherP)
      else tokens.size > 0 && otherP.size <= tokens.head.charsOf.size || !matchR(otherR.regex, otherP)
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
        (tokens.isEmpty || tokens.head.charsOf.list.size <= otherP.size) &&
        (tokens.isEmpty || tokens.head.rule == r) &&
        (ListUtils.isPrefix(otherP, input)) &&
        (r != otherR) &&
        (tokens.isEmpty || VerifiedRegexMatcher.matchR(r.regex, tokens.head.charsOf.list)) 
      then
        theoremLexSoundFirstChar(rules, input, suffix, tokens, r, otherR, otherP)
        val (lexedTokens: Vector[Token[C]], lexedSuffix: Vector[C]) = lex(rules, Vector.fromList(input))
        assert(lexedTokens.list == tokens)
        assert(lexedSuffix.list == suffix)
        (if (ListUtils.getIndex(rules, otherR) < ListUtils.getIndex(rules, r)) !VerifiedRegexMatcher.matchR(otherR.regex, otherP)
        else tokens.size > 0 && otherP.size <= tokens.head.charsOf.list.size || !VerifiedRegexMatcher.matchR(otherR.regex, otherP))
      else 
        true
    }

    @ghost override def lexThenRulesProduceEachTokenIndividually[C](rules: List[Rule[C]], input: List[C]): Boolean = {
      if (!rules.isEmpty && rulesInvariant(rules)) then
        val (tokens, suffix) = lex(rules, Vector.fromList(input))
        assert(lex(rules, Vector.fromList(input)) == (tokens, suffix))
        assert(rulesProduceEachTokenIndividually(rules, tokens))
        lemmaLexThenRulesProducesEachTokenIndividually(rules, input, tokens.list)
        rulesProduceEachTokenIndividually(rules, tokens)
      else 
        true
    }

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
    def lemmaLexThenRulesProducesEachTokenIndividually[C](rules: List[Rule[C]], input: List[C], tokens: List[Token[C]]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(lexList(rules, input)._1 == tokens)
      decreases(tokens)

      tokens match {
        case Nil() => ()
        case Cons(hd, tl) => {
          assert(maxPrefix(rules, input).isDefined)
          val (token, suffix) = maxPrefix(rules, input).get
          assert(token == hd)
          assert(token.charsOf == hd.charsOf)
          assert(token.charsOf.list == hd.charsOf.list)
          assert(hd.charsOf.list ++ suffix == input)
          val tokenRule = token.rule
          assert(matchR(tokenRule.regex, token.charsOf.list))
          if (!rulesProduceIndividualToken(rules, hd)) {
            ghostExpr(Vector.listEqImpliesEq(hd.charsOf, Vector.fromList(hd.charsOf.list)))
            ghostExpr(Vector.listEqImpliesEq(token.charsOf, Vector.fromList(token.charsOf.list)))
            lemmaLexThenLexPrefix(rules, hd.charsOf.list, suffix, List(hd), lexList(rules, suffix)._1, lexList(rules, input)._2)
            check(false)
          }
          assert(rulesProduceIndividualToken(rules, hd))
          lemmaLexThenRulesProducesEachTokenIndividually(rules, suffix, tl)
        }
      }
    }.ensuring(_ => rulesProduceEachTokenIndividually(rules, Vector.fromList(tokens)))

    @ghost
    @opaque
    @inlineOnce
    def lemmaLexThenLexPrefix[C](rules: List[Rule[C]], prefix: List[C], suffix: List[C], prefixTokens: List[Token[C]], suffixTokens: List[Token[C]], suffixResult: List[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(!prefixTokens.isEmpty)
      require(!prefix.isEmpty)
      require(lexList(rules, prefix ++ suffix) == (prefixTokens ++ suffixTokens, suffixResult))
      require(lexList(rules, suffix) == (suffixTokens, suffixResult))
      decreases(prefix.size)

      val input = prefix ++ suffix
      maxPrefix(rules, prefix ++ suffix) match {
        case Some((token, s)) => {
          token.lemmaCharactersSize()
          ghostExpr(Vector.listEqImpliesEq(token.charsOf, Vector.fromList(token.charsOf.list)))
          ghostExpr(Vector.listEqImpliesEq(token.charsOf, token.originalCharacters))
          ghostExpr(Vector.listEqImpliesEq(Vector.fromList(token.charsOf.list), token.charsOf))
          lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(token.rule, rules)
          token.rule.transformation.lemmaInv()

          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.charsOf.list, s)
          ListUtils.lemmaSamePrefixThenSameSuffix(token.charsOf.list, s, token.charsOf.list, ListUtils.getSuffix(input, token.charsOf.list), input)

          check(token.value == token.rule.transformation.apply(Vector.fromList(token.charsOf.list)))
          check(token.rule == token.rule)
          check(token.size == token.originalCharacters.size)
          check(token.size == token.originalCharacters.list.size)
          check(token.size == token.charsOf.list.size)
          check(token.originalCharacters == Vector.fromList(token.charsOf.list))
          check(s == ListUtils.getSuffix(input, token.charsOf.list))
          check(Some(token, s) == Some(Token(token.rule.transformation.apply(Vector.fromList(token.charsOf.list)), token.rule, token.charsOf.list.size, Vector.fromList(token.charsOf.list)), ListUtils.getSuffix(input, token.charsOf.list)))


          val (followingTokens, nextSuffix) = lexList(rules, s)
          // assert(token.characters.list ++ suffix.list == input.list)
          // ghostExpr(Vector.listEqImpliesEq(token.characters ++ suffix, input))
          assert(token.charsOf.list ++ s == prefix ++ suffix)
          assert(lexList(rules, prefix ++ suffix) == (List(token) ++ followingTokens, nextSuffix))
          assert(lexList(rules, s) == (followingTokens, nextSuffix))
          if (s == suffix) {
            unfold(lexList(rules, prefix ++ suffix))
            unfold(maxPrefix(rules, prefix ++ suffix))
            assert(maxPrefix(rules, prefix ++ suffix) == Some((token, s)))
            assert(token.charsOf.list ++ s == prefix ++ suffix)
            assert(s == suffix)
            ListUtils.lemmaConcatSameAndSameSizesThenSameLists(token.charsOf.list, s, prefix, suffix)
            assert(token.charsOf.list == prefix)
            assert(prefixTokens ++ suffixTokens == lexList(rules, prefix ++ suffix)._1)
            assert(prefixTokens ++ suffixTokens == List(token) ++ followingTokens)
            assert(prefixTokens == List(token))
            assert(prefix == token.charsOf.list)
            assert(ListUtils.isPrefix(Nil[C](), suffix))
            lemmaMaxPrefixThenWithShorterSuffix(rules, prefix, suffix, Nil[C](), token, suffix, Nil[C]())
            assert(maxPrefix(rules, prefix).isDefined)
            assert(maxPrefix(rules, prefix).get._1 == token)
            assert(maxPrefix(rules, prefix).get._2.isEmpty)
            assert(maxPrefix(rules, prefix) == Some((token, List[C]())))
            assert(lexList(rules, prefix) == (List(token), List[C]()))
          } else {
            if (s.size < suffix.size) {
              assert(token.charsOf.list ++ s == prefix ++ suffix)
              val lSize = input.size
              assert(token.charsOf.list.size + s.size == lSize)
              assert(prefix.size + suffix.size == lSize)
              assert(s.size < suffix.size)
              assert(token.charsOf.list.size > prefix.size)
              lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, token.charsOf.list, input, s, token.rule)
              assert(matchR(token.rule.regex, token.charsOf.list))
              assert(token.charsOf.list.size > prefix.size)
              assert(maxPrefix(rules, input).get._1 == prefixTokens.head)
              if(maxPrefix(rules, input).get._2.size < suffix.size) {
                val localSuffix = maxPrefix(rules, input).get._2
                assert(localSuffix.size < suffix.size)
                if (prefixTokens.tail.isEmpty) {
                  assert(prefixTokens == List(prefixTokens.head))
                  assert(token == prefixTokens.head)
                  assert(token.charsOf.list ++ s == token.charsOf.list ++ localSuffix)
                  ListUtils.lemmaConcatSameAndSameSizesThenSameLists(token.charsOf.list, s, token.charsOf.list, localSuffix)
                  assert(s.size == localSuffix.size)
                  assert(localSuffix.size < suffix.size)
                  assert(lexList(rules, localSuffix) == (suffixTokens, suffixResult))
                  assert(lexList(rules, suffix) == (suffixTokens, suffixResult))
                  lemmaLexWithSmallerInputCannotProduceSameResults(rules, suffix, localSuffix, suffixTokens, suffixResult)
                  check(false)
                } else {
                  assert(token == prefixTokens.head)
                  assert(lexList(rules, localSuffix) == (prefixTokens.tail ++ suffixTokens, suffixResult))
                  lemmaLexWithSmallerInputCannotProduceAdditionalTokens(rules, suffix, localSuffix, suffixTokens, suffixResult, prefixTokens.tail)
                  check(false)
                }
              }
              assert(maxPrefix(rules, input).get._2.size >= suffix.size)
              assert(token.charsOf.list.size > prefixTokens.head.charsOf.list.size)

              check(false)
            }
            if (s.size == suffix.size){
              assert(token.charsOf.list ++ s == prefix ++ suffix)
              ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.charsOf.list, s)
              ListUtils.lemmaConcatTwoListThenFirstIsPrefix(prefix, suffix)
              assert(ListUtils.isPrefix(prefix, prefix ++ suffix))
              assert(ListUtils.isPrefix(token.charsOf.list, prefix ++ suffix))
              ListUtils.lemmaIsPrefixSameLengthThenSameList(token.charsOf.list, prefix, prefix ++ suffix)
              assert(token.charsOf.list == prefix)
              ListUtils.lemmaSamePrefixThenSameSuffix(token.charsOf.list, s, prefix, suffix, input)
              check(false)
            }
            assert(s.size > suffix.size)
            // We still have tokens to tokenize before reaching the one of interest
            assert(prefixTokens.head == token)
            assert(token.charsOf.list ++ s == prefix ++ suffix)
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.charsOf.list, s)
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(prefix, suffix)
            ListUtils.lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther(prefix, token.charsOf.list, input)
            assert(token.charsOf.list.size < prefix.size)
            val restPrefix = ListUtils.getSuffix(prefix, token.charsOf.list)
            assert(token.charsOf.list ++ restPrefix == prefix)
            assert(token.charsOf.list ++ restPrefix ++ suffix == prefix ++ suffix)
            assert(token.charsOf.list ++ restPrefix ++ suffix == token.charsOf.list ++ s)
            ListUtils.lemmaTwoListsConcatAssociativity(token.charsOf.list, restPrefix, suffix)
            assert((token.charsOf.list ++ restPrefix) ++ suffix == token.charsOf.list ++ (restPrefix ++ suffix))
            assert(prefix ++ suffix == (token.charsOf.list ++ restPrefix) ++ suffix)
            assert(prefix ++ suffix == token.charsOf.list ++ (restPrefix ++ suffix))
            assert(token.charsOf.list ++ s == token.charsOf.list ++ (restPrefix ++ suffix))
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.charsOf.list, (restPrefix ++ suffix))
            ListUtils.lemmaSamePrefixThenSameSuffix(token.charsOf.list, s, token.charsOf.list, (restPrefix ++ suffix), input)
            assert(restPrefix ++ suffix == s)
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(restPrefix, suffix)
            assert(lexList(rules, s) == (prefixTokens.tail ++ suffixTokens, suffixResult))
            if (prefixTokens.tail.isEmpty){
              assert(prefixTokens == List(token))
              assert(lexList(rules, s) == (suffixTokens, suffixResult))
              lemmaLexWithSmallerInputCannotProduceSameResults(rules, s, suffix, suffixTokens, suffixResult)
              check(false)
            }
            ListUtils.lemmaTwoListsConcatAssociativity(List(token), prefixTokens.tail, suffixTokens)
            assert(List(token) ++ prefixTokens.tail ++ suffixTokens == prefixTokens ++ suffixTokens)
            assert(lexList(rules, restPrefix ++ suffix) == (prefixTokens.tail ++ suffixTokens, suffixResult))
            lemmaLexThenLexPrefix(rules, restPrefix, suffix, prefixTokens.tail, suffixTokens, suffixResult)
            assert(lexList(rules, restPrefix) == (prefixTokens.tail, List[C]()))
            assert(maxPrefix(rules, input) == Some((token, s)))
            if (suffix.isEmpty){
              assert(suffixTokens.isEmpty)
              assert(suffixResult.isEmpty)
              assert(lexList(rules, prefix) == (prefixTokens, List[C]()))

            } else {
            assert(ListUtils.isPrefix(restPrefix, s))
            assert(!rules.isEmpty)
            assert(rulesInvariant(rules))
            assert(suffix.size > List[C]().size)
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(List[C](), suffix)
            assert(ListUtils.isPrefix(List(), suffix))
            assert(prefix.size > token.charsOf.list.size)
            assert(token.charsOf.list ++ restPrefix == prefix ++ List[C]())
            lemmaMaxPrefixThenWithShorterSuffix(rules, prefix, suffix, List[C](), token, s, restPrefix)
            assert(maxPrefix(rules, prefix) == Some((token, restPrefix)))
            assert(lexList(rules, prefix) == (prefixTokens, List[C]()))
            }

          }
        }
        case None() => 
          check(false)
          assert(lexList(rules, prefix ++ suffix) == (List[Token[C]](), prefix ++ suffix))
      }
    }.ensuring (_ => lexList(rules, prefix) == (prefixTokens, List[C]()))

    @ghost
    @opaque
    @inlineOnce
    def lemmaLexWithSmallerInputCannotProduceAdditionalTokens[C](rules: List[Rule[C]], longerInput: List[C], shorterInput: List[C], tokens: List[Token[C]], suffix: List[C], addTokens: List[Token[C]]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(!longerInput.isEmpty)
      require(longerInput.size > shorterInput.size)
      require(lexList(rules, longerInput) == (tokens, suffix))
      decreases(addTokens.size)

      if (addTokens.isEmpty) {
        lemmaLexWithSmallerInputCannotProduceSameResults(rules, longerInput, shorterInput, tokens, suffix)
      } else {

        assert(addTokens.size > 0)

        (maxPrefix(rules, longerInput), maxPrefix(rules, shorterInput)) match {
          case (Some((tL, sL)), Some((tS, sS))) => {
            assert(tL.charsOf.list ++ sL == longerInput)
            assert(tS.charsOf.list ++ sS == shorterInput)
            lemmaLexWithSmallerInputCannotProduceAdditionalTokens(rules, longerInput, sS, tokens, suffix, addTokens.tail)

          }
          case (Some((tL, sL)), None()) => ()
          case (None(), Some((tS, sS))) => ()
          case (None(), None()) => ()
        }

      }

    }.ensuring (_ => lexList(rules, shorterInput) != (addTokens ++ tokens, suffix))

    @ghost
    @opaque
    @inlineOnce
    def lemmaLexWithSmallerInputCannotProduceSameResults[C](rules: List[Rule[C]], longerInput: List[C], shorterInput: List[C], tokens: List[Token[C]], suffix: List[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(!longerInput.isEmpty)
      require(longerInput.size > shorterInput.size)
      require(lexList(rules, longerInput) == (tokens, suffix))
      decreases(longerInput.size)

      (maxPrefix(rules, longerInput), maxPrefix(rules, shorterInput)) match {
        case (Some((tL, sL)), Some((tS, sS))) => {
          assert(tL.charsOf.list ++ sL == longerInput)
          assert(tS.charsOf.list ++ sS == shorterInput)
          if(tL == tS) {
            assert(tL.charsOf.list == tS.charsOf.list)
            assert(sL.size > sS.size)
            lemmaLexWithSmallerInputCannotProduceSameResults(rules, sL, sS, tokens.tail, suffix)
          }
        }
        case (Some((tL, sL)), None()) => ()
        case (None(), Some((tS, sS))) => ()
        case (None(), None()) => ()
      }
    }.ensuring (_ => lexList(rules, shorterInput) != (tokens, suffix))

    @ghost
    @opaque
    @inlineOnce
    def lemmaMaxPrefixThenWithShorterSuffix[C](rules: List[Rule[C]], prefix: List[C], suffix: List[C], newSuffix: List[C], token: Token[C], suffixResult: List[C], newSuffixResult: List[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(suffix.size >= newSuffix.size)
      require(ListUtils.isPrefix(newSuffix, suffix))
      require(prefix.size >= token.charsOf.list.size)
      require(token.charsOf.list ++ newSuffixResult == prefix ++ newSuffix)
      require(maxPrefix(rules, prefix ++ suffix) == Some((token, suffixResult)))

      val input = prefix ++ suffix
      val newInput = prefix ++ newSuffix


      // Common parts of the proof about token and maxPrefix
      ghostExpr(Vector.listEqImpliesEq(token.charsOf, Vector.fromList(token.charsOf.list)))
      ghostExpr(Vector.listEqImpliesEq(token.charsOf, token.originalCharacters))
      ghostExpr(Vector.listEqImpliesEq(Vector.fromList(token.charsOf.list), token.charsOf))
      lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(token.rule, rules)
      token.rule.transformation.lemmaInv()

      assert(maxPrefix(rules, input) == Some((token, suffixResult)))
      assert(token.charsOf.list ++ suffixResult == input)
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.charsOf.list, suffixResult)
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(prefix, suffix)
      assert(ListUtils.isPrefix(prefix, input))
      assert(ListUtils.isPrefix(token.charsOf.list, input))

      ListUtils.lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther(prefix, token.charsOf.list, input)

      val oldNextPrefix = ListUtils.getSuffix(prefix, token.charsOf.list)
      assert(token.charsOf.list ++ oldNextPrefix == prefix)
      assert(prefix ++ suffix == input)

      ListUtils.lemmaTwoListsConcatAssociativity(token.charsOf.list, oldNextPrefix, suffix)
      assert(input == (token.charsOf.list ++ oldNextPrefix) ++ suffix)
      assert(input == token.charsOf.list ++ (oldNextPrefix ++ suffix))
      assert(token.charsOf.list ++ suffixResult == input)
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.charsOf.list, (oldNextPrefix ++ suffix))
      ListUtils.lemmaSamePrefixThenSameSuffix(token.charsOf.list, (oldNextPrefix ++ suffix), token.charsOf.list, suffixResult, input)
      assert((oldNextPrefix ++ suffix) == suffixResult)

      lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, token.charsOf.list, input, suffixResult, token.rule)
      assert(maxPrefixOneRule(token.rule, input) == Some((token, suffixResult)))

      assert(ListUtils.isPrefix(token.charsOf.list, prefix))
      ListUtils.lemmaPrefixStaysPrefixWhenAddingToSuffix(token.charsOf.list, prefix, suffix)
      ListUtils.lemmaPrefixStaysPrefixWhenAddingToSuffix(token.charsOf.list, prefix, newSuffix)
      assert(ListUtils.isPrefix(token.charsOf.list, prefix ++ suffix))
      assert(ListUtils.isPrefix(token.charsOf.list, prefix ++ newSuffix))
      assert(ListUtils.isPrefix(token.charsOf.list, newInput))

      assert(matchR(token.rule.regex, token.charsOf.list))

      ListUtils.lemmaIsPrefixRefl(input, input)

      check(token.value == token.rule.transformation.apply(Vector.fromList(token.charsOf.list)))
      check(token.rule == token.rule)
      check(token.size == token.originalCharacters.size)
      check(token.size == token.originalCharacters.list.size)
      check(token.size == token.charsOf.list.size)
      check(token.originalCharacters == Vector.fromList(token.charsOf.list))
      assert(token.charsOf.list ++ suffixResult == input)
      assert(token.charsOf.list ++ ListUtils.getSuffix(input, token.charsOf.list) == input)
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.charsOf.list, ListUtils.getSuffix(input, token.charsOf.list))
      ListUtils.lemmaSamePrefixThenSameSuffix(token.charsOf.list, suffixResult, token.charsOf.list, ListUtils.getSuffix(input, token.charsOf.list), input)
      check(suffixResult == ListUtils.getSuffix(input, token.charsOf.list))
      check(Some(token, suffixResult) == Some(Token(token.rule.transformation.apply(Vector.fromList(token.charsOf.list)), token.rule, token.charsOf.list.size, Vector.fromList(token.charsOf.list)), ListUtils.getSuffix(input, token.charsOf.list)))

      
      
      maxPrefix(rules, prefix ++ newSuffix) match {
        case Some((t, s)) => {
          
          t.lemmaCharactersSize()
          token.lemmaCharactersSize()
          ghostExpr(Vector.listEqImpliesEq(t.charsOf, Vector.fromList(t.charsOf.list)))
          ghostExpr(Vector.listEqImpliesEq(t.charsOf, t.originalCharacters))
          ghostExpr(Vector.listEqImpliesEq(Vector.fromList(t.charsOf.list), t.charsOf))

          lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(t.rule, rules)
          
          t.rule.transformation.lemmaInv()

          lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, t.charsOf.list, newInput, s, t.rule)

          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(t.charsOf.list, s)
          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(t.charsOf.list, newSuffixResult)

          assert(maxPrefixOneRule(t.rule, newInput) == Some((t, s)))

          val diffWithLongerSuffix = ListUtils.getSuffix(suffix, newSuffix)
          assert(newSuffix ++ diffWithLongerSuffix == suffix)
          assert(prefix ++ suffix == input)
          assert(prefix ++ newSuffix == newInput)
          ListUtils.lemmaTwoListsConcatAssociativity(prefix, newSuffix, diffWithLongerSuffix)
          assert(prefix ++ newSuffix ++ diffWithLongerSuffix == input)
          assert(newInput ++ diffWithLongerSuffix == input)
          ListUtils.lemmaPrefixStaysPrefixWhenAddingToSuffix(t.charsOf.list, newInput, diffWithLongerSuffix)
          assert(ListUtils.isPrefix(t.charsOf.list, input))

          assert(t.charsOf.list ++ s == newInput)
          assert(t.charsOf.list ++ ListUtils.getSuffix(newInput, t.charsOf.list) == newInput)
          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(t.charsOf.list, ListUtils.getSuffix(newInput, t.charsOf.list))
          ListUtils.lemmaSamePrefixThenSameSuffix(t.charsOf.list, s, t.charsOf.list, ListUtils.getSuffix(newInput, t.charsOf.list), newInput)
          check(s == ListUtils.getSuffix(newInput, t.charsOf.list))

          if(t.charsOf.list.size > token.charsOf.list.size) {
            assert(ListUtils.isPrefix(t.charsOf.list, newInput))
            assert(ListUtils.isPrefix(token.charsOf.list, newInput))
            assert(ListUtils.isPrefix(token.charsOf.list, input))
            assert(ListUtils.isPrefix(t.charsOf.list, input))

            assert(!rules.isEmpty)
            assert(rulesInvariant(rules))
            assert(rules.contains(token.rule))
            assert(rules.contains(t.rule))

            assert(maxPrefix(rules, input) == Some(Token(token.rule.transformation.apply(Vector.fromList(token.charsOf.list)), token.rule, token.charsOf.list.size, Vector.fromList(token.charsOf.list)), ListUtils.getSuffix(input, token.charsOf.list)))
            lemmaMaxPrefixOutputsMaxPrefix(rules, token.rule, token.charsOf.list, input, t.charsOf.list, t.rule)
            check(false)
          }
          if(t.charsOf.list.size < token.charsOf.list.size) {
            assert(ListUtils.isPrefix(t.charsOf.list, newInput))
            assert(ListUtils.isPrefix(token.charsOf.list, newInput))

            lemmaMaxPrefixOutputsMaxPrefix(rules, t.rule, t.charsOf.list, newInput, token.charsOf.list, token.rule)
            check(false)
          }
          assert(token.charsOf.list.size == t.charsOf.list.size) 
          assert(ListUtils.isPrefix(token.charsOf.list, newInput))
          assert(ListUtils.isPrefix(t.charsOf.list, newInput))
          ListUtils.lemmaIsPrefixSameLengthThenSameList(t.charsOf.list, token.charsOf.list, newInput)
          assert(t.charsOf.list == token.charsOf.list)
          ListUtils.lemmaSamePrefixThenSameSuffix(t.charsOf.list, s, token.charsOf.list, newSuffixResult, newInput)
          assert(s == newSuffixResult)  

          if (ListUtils.getIndex(rules, t.rule) < ListUtils.getIndex(rules, token.rule)) {
            assert(maxPrefix(rules, input) == Some((token, suffixResult)))
            assert(maxPrefix(rules, input) == Some(Token(token.rule.transformation.apply(Vector.fromList(token.charsOf.list)), token.rule, token.charsOf.list.size, Vector.fromList(token.charsOf.list)), ListUtils.getSuffix(input, token.charsOf.list)))
            assert(matchR(token.rule.regex, token.charsOf.list))
            lemmaMaxPrefNoSmallerRuleMatches(rules, token.rule, token.charsOf.list, input, t.rule)
            check(false)
          }
          if (ListUtils.getIndex(rules, t.rule) > ListUtils.getIndex(rules, token.rule)) {
            assert(ruleValid(t.rule))
            assert(ruleValid(token.rule))
            assert(matchR(t.rule.regex, t.charsOf.list))
            lemmaMaxPrefNoSmallerRuleMatches(rules, t.rule, t.charsOf.list, newInput, token.rule)
            check(false)
          }
            ListUtils.lemmaSameIndexThenSameElement(rules, t.rule, token.rule)

          assert(t.rule == token.rule)

          assert(t == token)
          assert(maxPrefix(rules, prefix ++ newSuffix) == Some((token, newSuffixResult)))
        }
        case None() => {
          lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone(token.rule, rules, newInput)
          lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex(token.rule, token.charsOf.list, newInput)
          check(false)
          assert(maxPrefix(rules, prefix ++ newSuffix) == Some((token, newSuffixResult)))
        }
      }


    }.ensuring(_ => maxPrefix(rules, prefix ++ newSuffix) == Some((token, newSuffixResult)))

    @ghost
    @opaque
    @inlineOnce
    def lemmaMaxPrefixThenWithoutSuffix[C](rules: List[Rule[C]], input: List[C], token: Token[C], suffix: List[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(!input.isEmpty)
      require(token.charsOf.list == input)
      require(maxPrefix(rules, input ++ suffix).isDefined)
      require(maxPrefix(rules, input ++ suffix).get._1 == token)
      require(maxPrefix(rules, input ++ suffix).get._2 == suffix)

      maxPrefix(rules, input) match {
        case Some((t, s)) => {
          assert(token.charsOf.list ++ suffix == input ++ suffix)
          ListUtils.lemmaConcatSameAndSameSizesThenSameLists(token.charsOf.list, suffix, input, suffix)
          assert(token.charsOf.list == input)
          check(maxPrefix(rules, input) == Some((t, s)))
          if (t.charsOf.list.size > token.charsOf.list.size) {
            assert(t.charsOf.list ++ s == input)
            assert(t.charsOf.list.size > input.size)
            check(false)
          }
          t.lemmaCharactersSize()
          token.lemmaCharactersSize()
          ghostExpr(Vector.listEqImpliesEq(t.charsOf, Vector.fromList(t.charsOf.list)))
          ghostExpr(Vector.listEqImpliesEq(t.charsOf, t.originalCharacters))
          ghostExpr(Vector.listEqImpliesEq(Vector.fromList(t.charsOf.list), t.charsOf))

          ghostExpr(Vector.listEqImpliesEq(token.charsOf, Vector.fromList(token.charsOf.list)))
          ghostExpr(Vector.listEqImpliesEq(token.charsOf, token.originalCharacters))
          ghostExpr(Vector.listEqImpliesEq(Vector.fromList(token.charsOf.list), token.charsOf))

          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(t.charsOf.list, s)
          ListUtils.lemmaSamePrefixThenSameSuffix(t.charsOf.list, s, t.charsOf.list, ListUtils.getSuffix(input, t.charsOf.list), input)
          ListUtils.lemmaIsPrefixRefl(input, input)

          lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(t.rule, rules)
          lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(token.rule, rules)
          
          t.rule.transformation.lemmaInv()
          token.rule.transformation.lemmaInv()

          check(t.value == t.rule.transformation.apply(Vector.fromList(t.charsOf.list)))
          check(t.rule == t.rule)
          check(t.size == t.originalCharacters.size)
          check(t.size == t.originalCharacters.list.size)
          check(t.size == t.charsOf.list.size)
          check(t.originalCharacters == Vector.fromList(t.charsOf.list))
          check(s == ListUtils.getSuffix(input, t.charsOf.list))
          check(Some(t, s) == Some(Token(t.rule.transformation.apply(Vector.fromList(t.charsOf.list)), t.rule, t.charsOf.list.size, Vector.fromList(t.charsOf.list)), ListUtils.getSuffix(input, t.charsOf.list)))

          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(input, suffix)
          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.charsOf.list, suffix)
          assert(ListUtils.isPrefix(input, input ++ suffix))
          assert(ListUtils.isPrefix(input, token.charsOf.list ++ suffix))
          ListUtils.lemmaSamePrefixThenSameSuffix(token.charsOf.list, suffix, token.charsOf.list, ListUtils.getSuffix(input ++ suffix, token.charsOf.list), input ++ suffix)

          check(token.value == token.rule.transformation.apply(Vector.fromList(token.charsOf.list)))
          check(token.rule == token.rule)
          check(token.size == token.originalCharacters.size)
          check(token.size == token.originalCharacters.list.size)
          check(token.size == token.charsOf.list.size)
          check(token.originalCharacters == Vector.fromList(token.charsOf.list))
          check(suffix == ListUtils.getSuffix(input ++ suffix, token.charsOf.list))
          check(Some(token, suffix) == Some(Token(token.rule.transformation.apply(Vector.fromList(token.charsOf.list)), token.rule, token.charsOf.list.size, Vector.fromList(token.charsOf.list)), ListUtils.getSuffix(input ++ suffix, token.charsOf.list)))


          lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, t.charsOf.list, input, s, t.rule)
          lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, token.charsOf.list, input ++ suffix, suffix, token.rule)
          if (t.charsOf.list.size < token.charsOf.list.size) {
            check(maxPrefix(rules, input) == Some((t, s)))
            check(maxPrefix(rules, input).isDefined)
            check(maxPrefix(rules, input).get._1 == t)
            assert(rules.contains(token.rule))
            assert(matchR(token.rule.regex, input))
            
            assert(ListUtils.isPrefix(token.charsOf.list, input))
            assert(ListUtils.isPrefix(input, input))
            assert(ListUtils.getSuffix(input, input) == List())
            assert(t.charsOf.list ++ s == input)
            
            assert(ListUtils.isPrefix(t.charsOf.list, input))
            assert(ListUtils.isPrefix(input, input))

            assert(t.charsOf.list ++ ListUtils.getSuffix(input, t.charsOf.list) == input)
            assert(t.charsOf.list ++ s == input)
            
            check(ListUtils.getSuffix(input, t.charsOf.list) == s)

            assert(!rules.isEmpty)
            assert(rulesInvariant(rules))
            assert(rules.contains(t.rule))
            assert(rules.contains(token.rule))

            assert(maxPrefixOneRule(t.rule, input) == Some(Token(t.rule.transformation.apply(Vector.fromList(t.charsOf.list)), t.rule, t.charsOf.list.size, Vector.fromList(t.charsOf.list)), s))

            assert(matchR(t.rule.regex, t.charsOf.list))

            
            ForallOf((a: Vector[C]) => t.rule.transformation.witness(t.rule.transformation.f(a)) == a)(Vector.fromList(t.charsOf.list))
            ListUtils.lemmaIsPrefixRefl(input, input)
            assert(maxPrefixOneRule(t.rule, input) == Some(Token(t.rule.transformation.apply(Vector.fromList(t.charsOf.list)), t.rule, t.charsOf.list.size, Vector.fromList(t.charsOf.list)), ListUtils.getSuffix(input, t.charsOf.list)))

            assert(input.size > t.charsOf.list.size)
            assert(maxPrefix(rules, input) == Some(Token(t.rule.transformation.apply(Vector.fromList(t.charsOf.list)), t.rule, t.charsOf.list.size, Vector.fromList(t.charsOf.list)), ListUtils.getSuffix(input, t.charsOf.list)))

            lemmaMaxPrefixOutputsMaxPrefix(rules, t.rule, t.charsOf.list, input, input, token.rule)
            check(false)
          }

          ForallOf((a: Vector[C]) => t.rule.transformation.witness(t.rule.transformation.f(a)) == a)(Vector.fromList(t.charsOf.list))

          token.rule.transformation.lemmaInv()
          ForallOf((a: Vector[C]) => token.rule.transformation.witness(token.rule.transformation.f(a)) == a)(Vector.fromList(token.charsOf.list))

          assert(t.charsOf.list.size == token.charsOf.list.size)
          assert(t.charsOf.list ++ s == input)
          assert(t.charsOf.list ++ s == token.charsOf.list)
          assert(s.isEmpty)
          assert(t.charsOf.list == token.charsOf.list)
          ghostExpr(Vector.listEqImpliesEq(token.charsOf, t.charsOf))
          assert(t.charsOf == token.charsOf)
          assert(t.originalCharacters == token.originalCharacters)
          assert(!rules.isEmpty)
          assert(rulesInvariant(rules))
          assert(rules.contains(t.rule))
          assert(rules.contains(token.rule))

          if (t.rule != token.rule) {
            if (ListUtils.getIndex(rules, t.rule) < ListUtils.getIndex(rules, token.rule)) {
              assert(maxPrefix(rules, input ++ suffix) == Some((token, suffix)))
              assert(maxPrefix(rules, input ++ suffix) == Some(Token(token.rule.transformation.apply(Vector.fromList(input)), token.rule, input.size, Vector.fromList(input)), ListUtils.getSuffix(input ++ suffix, input)))
              assert(matchR(token.rule.regex, input))
              lemmaMaxPrefNoSmallerRuleMatches(rules, token.rule, input, input ++ suffix, t.rule)
              check(false)
            }
            if (ListUtils.getIndex(rules, t.rule) > ListUtils.getIndex(rules, token.rule)) {
              assert(ruleValid(t.rule))
              assert(ruleValid(token.rule))
              assert(matchR(t.rule.regex, input))
              lemmaMaxPrefNoSmallerRuleMatches(rules, t.rule, input, input, token.rule)
              check(false)
            }
          }
          ListUtils.lemmaSameIndexThenSameElement(rules, t.rule, token.rule)
          assert(t.rule == token.rule)
          assert(t.size == token.size)
          assert(t == token)
          assert(maxPrefix(rules, input) == Some((token, List[C]())))
        }
        case None() => 
          lemmaMaxPrefNoneThenNoRuleMatches(rules, token.rule, input, input)
          check(false)
      }


    }.ensuring(_ => maxPrefix(rules, input) == Some((token, List[C]())))

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
      require(maxPrefix(rules, token.charsOf.list).isDefined)
      require(maxPrefix(rules, token.charsOf.list).get._1 == token)
      require(maxPrefix(rules, token.charsOf.list).get._2.isEmpty)
      require(token.rule == rule)
      require({
        lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(rule, rules)
        matchR(rule.regex, token.charsOf.list)
      })
      require(!suffix.isEmpty)
      require(!rule.regex.usedCharacters.contains(suffix.head))
      require(anOtherTypeRule.regex.usedCharacters.contains(suffix.head))
      require(sepAndNonSepRulesDisjointChars(rules, rules))

      Vector.listEqImpliesEq(Vector.fromList(token.charsOf.list), token.charsOf)

      val input = token.charsOf.list ++ suffix
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.charsOf.list, suffix)
      val tokenOpt = maxPrefix(rules, input)
      lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined(rules, token.charsOf.list, suffix)
      val foundToken = tokenOpt.get._1
      val foundSuffix = tokenOpt.get._2
      lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, input, foundToken)
      val foundRule = foundToken.rule
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(foundToken.charsOf.list, foundSuffix)
      assert(ListUtils.isPrefix(foundToken.charsOf.list, input))
      assert(matchR(foundRule.regex, foundToken.charsOf.list))
      assert(foundRule == foundToken.rule)

      Vector.listEqImpliesEq(Vector.fromList(foundToken.charsOf.list), foundToken.charsOf)
      foundToken.lemmaCharactersSize()
      assert(maxPrefix(rules, input) == Some(Token(foundRule.transformation.apply(foundToken.charsOf), foundRule, foundToken.charsOf.size, foundToken.charsOf), foundSuffix))
      lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, foundToken.charsOf.list, input, foundSuffix, foundRule)
      ListUtils.lemmaSamePrefixThenSameSuffix(
        foundToken.charsOf.list,
        foundSuffix,
        foundToken.charsOf.list,
        ListUtils.getSuffix(input, foundToken.charsOf.list),
        input
      )
      assert(ListUtils.getSuffix(input, foundToken.charsOf.list) == foundSuffix)
      assert(maxPrefixOneRule(foundRule, input) == Some((foundToken, ListUtils.getSuffix(input, foundToken.charsOf.list))))

      if (!rule.regex.usedCharacters.contains(foundToken.charsOf.list.head)) {
        lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(rule.regex, token.charsOf.list, foundToken.charsOf.list.head)
        check(false)
      }
      if (rule.isSeparator) {
        if (!foundRule.isSeparator) {
          assert(token.charsOf.list.contains(foundToken.charsOf.list.head))
          assert(rule.regex.usedCharacters.contains(foundToken.charsOf.list.head))
          lemmaNonSepRuleNotContainsCharContainedInASepRule(rules, rules, foundRule, rule, foundToken.charsOf.list.head)
          lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(foundRule.regex, foundToken.charsOf.list, foundToken.charsOf.list.head)
          check(false)
        }
      } else {
        if (foundRule.isSeparator) {
          assert(token.charsOf.list.contains(foundToken.charsOf.list.head))
          assert(rule.regex.usedCharacters.contains(foundToken.charsOf.list.head))
          lemmaSepRuleNotContainsCharContainedInANonSepRule(rules, rules, rule, foundRule, foundToken.charsOf.list.head)
          lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(foundRule.regex, foundToken.charsOf.list, foundToken.charsOf.list.head)
          check(false)
        }
      }

      if (foundToken.charsOf.size > token.charsOf.size) {
        ListUtils.lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref(token.charsOf.list, suffix, foundToken.charsOf.list, input)
        if (rule.isSeparator) {
          lemmaSepRuleNotContainsCharContainedInANonSepRule(rules, rules, anOtherTypeRule, foundRule, suffix.head)
          lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(foundRule.regex, foundToken.charsOf.list, suffix.head)
          check(false)
        } else {
          lemmaNonSepRuleNotContainsCharContainedInASepRule(rules, rules, foundRule, anOtherTypeRule, suffix.head)
          lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(foundRule.regex, foundToken.charsOf.list, suffix.head)
          check(false)
        }
      }
      if (foundToken.charsOf.size < token.charsOf.size) {
        lemmaMaxPrefixOutputsMaxPrefix(rules, foundRule, foundToken.charsOf.list, input, token.charsOf.list, rule)
        check(false)
      }
      ListUtils.lemmaIsPrefixSameLengthThenSameList(foundToken.charsOf.list, token.charsOf.list, input)

      assert(foundToken.charsOf == token.charsOf)

      if (foundToken.rule != token.rule) {
        val foundRuleIndex = ListUtils.getIndex(rules, foundRule)
        val ruleIndex = ListUtils.getIndex(rules, rule)
        if (foundRuleIndex < ruleIndex) {
          ListUtils.lemmaGetSuffixOnListWithItSelfIsEmpty(token.charsOf.list)
          assert(ListUtils.getSuffix(token.charsOf.list, token.charsOf.list).isEmpty)
          lemmaMaxPrefNoSmallerRuleMatches(rules, rule, token.charsOf.list, token.charsOf.list, foundRule)
          check(false)
        }
        if (ruleIndex < foundRuleIndex) {
          lemmaMaxPrefNoSmallerRuleMatches(rules, foundRule, token.charsOf.list, input, rule)
          check(false)
        }

        ListUtils.lemmaSameIndexThenSameElement(rules, foundRule, rule)
        check(false)
      }

      lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, token.charsOf.list, input, ListUtils.getSuffix(input, token.charsOf.list), rule)
      ListUtils.lemmaSamePrefixThenSameSuffix(
        token.charsOf.list,
        ListUtils.getSuffix(input, token.charsOf.list),
        foundToken.charsOf.list,
        foundSuffix,
        input
      )
      ListUtils.lemmaSamePrefixThenSameSuffix(token.charsOf.list, suffix, foundToken.charsOf.list, foundSuffix, input)

    }.ensuring (_ => maxPrefix(rules, token.charsOf.list ++ suffix) == Some((token, suffix)))


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
      require(maxPrefix(rules, token.charsOf.list).isDefined)
      require(maxPrefix(rules, token.charsOf.list).get._1 == token)
      require(maxPrefix(rules, token.charsOf.list).get._2.isEmpty)
      require(token.rule == rule)
      require({
        lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(rule, rules)
        matchR(rule.regex, token.charsOf.list)
      })
      require(!suffix.isEmpty)
      require(!prefixMatch(rulesRegex(rules), token.charsOf.list ++ List(suffix.head)))

      val input: List[C] = token.charsOf.list ++ suffix
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.charsOf.list, suffix)
      val tokenOpt = maxPrefix(rules, input)
      lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined(rules, token.charsOf.list, suffix)
      val foundToken: Token[C] = tokenOpt.get._1
      val foundSuffix: List[C] = tokenOpt.get._2
      lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, input, foundToken)
      val foundRule = foundToken.rule
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(foundToken.charsOf.list, foundSuffix)
      assert(ListUtils.isPrefix(foundToken.charsOf.list, input))
      assert(matchR(foundRule.regex, foundToken.charsOf.list))
      assert(foundRule == foundToken.rule)

      Vector.listEqImpliesEq(Vector.fromList(token.charsOf.list), token.charsOf)
      Vector.listEqImpliesEq(Vector.fromList(foundToken.charsOf.list), foundToken.charsOf)

      foundRule.transformation.lemmaInv()
      assert(semiInverse(foundRule.transformation.witness, foundRule.transformation.f))
      assert(Forall((a: Vector[C]) => foundRule.transformation.witness(foundRule.transformation.f(a)) == a))
      ForallOf((a: Vector[C]) => foundRule.transformation.witness(foundRule.transformation.f(a)) == a)(foundToken.charsOf)

      foundToken.lemmaCharactersSize()
      assert(maxPrefix(rules, input) == Some(Token(foundRule.transformation.apply(foundToken.charsOf), foundRule, foundToken.charsOf.size, foundToken.charsOf), foundSuffix))
      lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, foundToken.charsOf.list, input, foundSuffix, foundRule)
      ListUtils.lemmaSamePrefixThenSameSuffix(
        foundToken.charsOf.list,
        foundSuffix,
        foundToken.charsOf.list,
        ListUtils.getSuffix(input, foundToken.charsOf.list),
        input
      )
      assert(ListUtils.getSuffix(input, foundToken.charsOf.list) == foundSuffix)
      assert(maxPrefixOneRule(foundRule, input) == Some((foundToken, ListUtils.getSuffix(input, foundToken.charsOf.list))))
      lemmaMaxPrefixThenMatchesRulesRegex(rules, token.charsOf.list, token, rule, Nil())
      assert(matchR(rulesRegex(rules), token.charsOf.list))

      if(foundToken.charsOf.size > token.charsOf.size) {
        lemmaMaxPrefixThenMatchesRulesRegex(rules, input, foundToken, foundRule, foundSuffix)
        assert(matchR(rulesRegex(rules), foundToken.charsOf.list))
        assert(input == token.charsOf.list ++ suffix)
        ListUtils.lemmaSamePrefixThenSameSuffix(token.charsOf.list, suffix, token.charsOf.list, ListUtils.getSuffix(input, token.charsOf.list), input)
        assert(ListUtils.getSuffix(input, token.charsOf.list) == suffix)
        ListUtils.lemmaAddHeadSuffixToPrefixStillPrefix(token.charsOf.list, input)
        assert(ListUtils.isPrefix(token.charsOf.list ++ List(suffix.head), input))
        assert(ListUtils.isPrefix(foundToken.charsOf.list, input))
        ListUtils.lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther(foundToken.charsOf.list, token.charsOf.list ++ List(suffix.head), input)
        assert(ListUtils.isPrefix(token.charsOf.list ++ List(suffix.head), foundToken.charsOf.list))

        lemmaNotPrefixMatchThenCannotMatchLonger(rulesRegex(rules), token.charsOf.list ++ List(suffix.head), foundToken.charsOf.list)

        check(false)
      }
      assert(foundToken.charsOf.size <= token.charsOf.size)
      if(foundToken.charsOf.size < token.charsOf.size) {
        lemmaMaxPrefixOutputsMaxPrefix(rules, foundRule, foundToken.charsOf.list, input, token.charsOf.list, rule)
        check(false)
      }
      assert(foundToken.charsOf.size == token.charsOf.size)
      ListUtils.lemmaIsPrefixSameLengthThenSameList(foundToken.charsOf.list, token.charsOf.list, input)
      assert(foundToken.charsOf == token.charsOf)
      ListUtils.lemmaSamePrefixThenSameSuffix(token.charsOf.list, suffix, token.charsOf.list, foundSuffix, input)
      assert(suffix == foundSuffix)
      if(foundToken.rule != token.rule) {
        if(ListUtils.getIndex(rules, token.rule) < ListUtils.getIndex(rules, foundToken.rule)) {
          lemmaMaxPrefNoSmallerRuleMatches(rules, foundToken.rule, foundToken.charsOf.list, input, token.rule)
          check(false)
        }
        if(ListUtils.getIndex(rules, foundToken.rule) < ListUtils.getIndex(rules, token.rule)) {
          lemmaMaxPrefNoSmallerRuleMatches(rules, token.rule, token.charsOf.list, token.charsOf.list, foundToken.rule)
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

    }.ensuring (_ => maxPrefix(rules, token.charsOf.list ++ suffix) == Some((token, suffix)))

    @ghost
    def lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined[C](rules: List[Rule[C]], input: List[C], suffix: List[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(!lex(rules, Vector.fromList(input))._1.isEmpty)

      val (tokens, _) = lex(rules, Vector.fromList(input))
      val firstT = tokens.list.head
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(firstT.charsOf.list, maxPrefix(rules, input).get._2)
      ListUtils.lemmaPrefixStaysPrefixWhenAddingToSuffix(firstT.charsOf.list, input, suffix)
      lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, input, firstT)
      val rule: Rule[C] = firstT.rule
      assert(matchR(rule.regex, firstT.charsOf.list))

      if (maxPrefix(rules, input ++ suffix).isEmpty) {
        lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone(rule, rules, input ++ suffix)
        lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex(rule, firstT.charsOf.list, input ++ suffix)
        check(false)
      }

    }.ensuring (_ => maxPrefix(rules, input ++ suffix).isDefined)

    @ghost
    @opaque
    @inlineOnce
    def lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken[C](rules: List[Rule[C]], input: List[C], token: Token[C]): Unit = {
      require(rulesInvariant(rules))
      require(!rules.isEmpty)
      require(maxPrefix(rules, input).isDefined)
      require(maxPrefix(rules, input).get._1 == token)
      decreases(rules)

      rules match {
        case Cons(hd, tl) => {
          if (maxPrefixOneRule(hd, input).isDefined && maxPrefixOneRule(hd, input).get._1 == token) {
            assert(hd == token.rule)
            assert(matchR(hd.regex, token.charsOf.list))
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
      getRuleFromTag(rules, token.rule.tag).isDefined && matchR(getRuleFromTag(rules, token.rule.tag).get.regex, token.charsOf.list) &&
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
      require(!p.isEmpty)
      require({
        ForallOf((a: Vector[C]) => r.transformation.witness(r.transformation.f(a)) == a)(Vector.fromList(p))
        maxPrefix(rules, input) == Some(Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p)), ListUtils.getSuffix(input, p))
      })
      require(matchR(r.regex, p))
      require(ListUtils.getIndex(rules, rBis) < ListUtils.getIndex(rules, r))
      require(ruleValid(r))
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
            if (token.charsOf.size > p.size) {
              lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref(
                rules,
                p,
                Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p)),
                input,
                ListUtils.getSuffix(input, p),
                token.charsOf.list,
                ListUtils.getSuffix(input, token.charsOf.list),
                rBis,
                token
              )
              check(false)
              check(!matchR(rBis.regex, p))
            } else {
              if (token.charsOf.size < p.size) {
                ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.charsOf.list, suff)
                lemmaMaxPrefixOneRuleOutputsMaxPrefix(rBis, token.charsOf.list, token, input, suff, p)
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
        ListUtils.lemmaConcatTwoListThenFirstIsPrefix(tBis.charsOf.list, suffixBis)
        if (tBis.charsOf.list == pBis) {
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
          if (tBis.charsOf.size < pBis.size) {
            assert(ListUtils.isPrefix(tBis.charsOf.list, input))
            lemmaMaxPrefixOneRuleOutputsMaxPrefix(rBis, tBis.charsOf.list, tBis, input, suffixBis, pBis)
            check(!matchR(rBis.regex, pBis))
          } else {
            if (pBis.size == tBis.charsOf.list.size) {
              ListUtils.lemmaIsPrefixSameLengthThenSameList(pBis, tBis.charsOf.list, input)
              check(false)
            }
            assert(pBis.size < tBis.charsOf.size)
            lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref(
              rules,
              p,
              Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p)),
              input,
              ListUtils.getSuffix(input, p),
              tBis.charsOf.list,
              suffixBis,
              rBis,
              tBis
            )
            assert(tBis.charsOf.list.size <= p.size)
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
      require(!p.isEmpty)
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
      require(tBis.charsOf.list == pBis)
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
              val oPref = tokSuff._1.charsOf.list
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
      require(t.charsOf.list == p)
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
    }.ensuring (_ => rulesProduceIndividualToken(rules, t))

    @ghost
    @opaque
    @inlineOnce
    def lemmaRulesProduceEachTokenIndividuallyThenForSubSeq[C](rules: List[Rule[C]], tokens: List[Token[C]], tokensBis: List[Token[C]]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(ListSpecs.subseq(tokensBis, tokens))
      require(rulesProduceEachTokenIndividuallyList(rules, tokens))
      decreases(tokens)

      (tokensBis, tokens) match {
        case (Nil(), _) => ()
        case (Cons(x, xs), Cons(y, ys)) =>
          if (x == y && ListSpecs.subseq(xs, ys)) {
            lemmaRulesProduceEachTokenIndividuallyThenForSubSeq(rules, ys, xs)
          }
          else {
            lemmaRulesProduceEachTokenIndividuallyThenForSubSeq(rules, ys, tokensBis)
          }
        case _ => check(false)
        }
    }.ensuring (_ => rulesProduceEachTokenIndividuallyList(rules, tokensBis))

    @ghost
    @opaque
    @inlineOnce
    def lemmaRulesProduceEachTokenIndividuallyConcat[C](rules: List[Rule[C]], ts1: List[Token[C]], ts2: List[Token[C]]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividuallyList(rules, ts1))
      require(rulesProduceEachTokenIndividuallyList(rules, ts2))

      ListUtils.lemmaConcatPreservesForall(ts1, ts2, (t: Token[C]) => rulesProduceIndividualToken(rules, t))

    }.ensuring (_ => rulesProduceEachTokenIndividuallyList(rules, ts1 ++ ts2))


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
        require(input == token.charsOf.list ++ suffix)
        require({
          lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(rule, rules)
          matchR(rule.regex, token.charsOf.list)
        })
        Vector.listEqImpliesEq(Vector.fromList(token.charsOf.list), token.charsOf)

        lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, token.charsOf.list, input, suffix, rule)
        assert(maxPrefixOneRule(rule, input) == Some(token, suffix))

        assert(matchR(rule.regex, token.charsOf.list))
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
        matchRGenUnionSpec(rulesRegex(rules), l, token.charsOf.list) 

        assert(l.contains(rule.regex))
        assert(validRegex(rule.regex))
        assert(matchR(rule.regex, token.charsOf.list))
        ListUtils.lemmaContainsThenExists(l, rule.regex, rr => validRegex(rr) && matchR(rr, token.charsOf.list))
        assert(l.exists(rr => validRegex(rr) && matchR(rr, token.charsOf.list)))
    }.ensuring(_ => matchR(rulesRegex(rules), token.charsOf.list))
    
  }
}
