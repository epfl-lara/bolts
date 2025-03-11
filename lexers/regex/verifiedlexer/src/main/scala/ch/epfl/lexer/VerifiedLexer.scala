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

object MainLexer {
  import VerifiedLexer._
  import VerifiedRegex._
  import VerifiedRegexMatcher._
  import stainless.io.StdOut.println
  import stainless.io.State
  import VerifiedLexer._
  
  @extern
  def main(args: Array[String]): Unit = {

    val regexSep = Concat(ElementMatch(' '), Star(ElementMatch(' ')))
    val ruleSep = Rule(regexSep, "sep", true)
    val sepToken = Token(List(' '), "sep", ruleSep)

    // DFA which recognises any repetition of at least one "ab" string
    val regexAb = Concat(Concat(ElementMatch('a'), ElementMatch('b')), Star(Concat(ElementMatch('a'), ElementMatch('b'))))
    val ruleAb = Rule(regexAb, "ab", false)

    // DFA which recognises any repetition of at least one "c" string
    val regexC = Concat(ElementMatch('c'), Star(ElementMatch('c')))
    val ruleC = Rule(regexC, "c", false)

    val rules = List(ruleAb, ruleC, ruleSep)

    // Tokens -> Characters -> Tokens
    val t1 = Token(List('a', 'b'), "ab", ruleAb)
    val t2 = Token(List('c', 'c'), "c", ruleC)
    val input: List[Token[Char]] = List(t1, t2, t1, t2, t1, t1)

    val state = State(BigInt(1))

    val output: List[Char] = Lexer.printWithSeparatorTokenWhenNeeded(rules, input, sepToken)

    val lexed = Lexer.lex(rules, output)

    println("Token list input:")(state)
    println(input.foldLeft("")((s: String, t: Token[Char]) => s + t.toString + "\n"))(state)

    println("Token list printed when separator token when needed: " + output.foldLeft("")((s: String, c: Char) => s + c.toString))(state)

    println("After lexing again:")(state)
    println(lexed._1.foldLeft("")((s: String, t: Token[Char]) => s + t.toString + "\n"))(state)

    println("tokens -> print -> tokens modulo separator tokens equality: " + (lexed._1.filter(!_.rule.isSeparator) == input))(state)
    println("--------------------------------------------------------------------------------")(state)

    // Characters -> Tokens -> Characters
    val inputChar = List('a', 'b', 'c', 'a', 'b', 'a', 'b', 'c', 'c')
    val tokenised = Lexer.lex(rules, inputChar)

    println("Input string is: " + inputChar.foldLeft("")((s: String, c: Char) => s + c.toString))(state)
    println(
      "Resulting list of tokens: " + tokenised._1.foldLeft("")((s: String, t: Token[Char]) =>
        s + t.characters.foldLeft("")((s: String, c: Char) => s + c.toString) + " "
      )
    )(
      state
    )
    println("Non-tokenised suffix: " + tokenised._2.foldLeft("")((s: String, c: Char) => s + c.toString))(state)
  }

}
object VerifiedLexer {
  import VerifiedRegex._
  import VerifiedRegexMatcher._

  case class Token[C](characters: List[C], tag: String, rule: Rule[C])
  case class Rule[C](regex: Regex[C], tag: String, isSeparator: Boolean)

  object Lexer {

    @ghost
    def ruleValid[C](r: Rule[C]): Boolean = {
      validRegex(r.regex) && !nullable(r.regex) && r.tag != ""
    }
    def noDuplicateTag[C](rules: List[Rule[C]], acc: List[String] = Nil()): Boolean = {
      decreases(rules)
      rules match {
        case Nil()        => true
        case Cons(hd, tl) => !acc.contains(hd.tag) && noDuplicateTag(tl, Cons(hd.tag, acc))
      }
    }
    @ghost
    def rulesValid[C](rs: List[Rule[C]]): Boolean = {
      rs match {
        case Cons(hd, tl) => ruleValid(hd) && rulesValid(tl)
        case Nil()        => true
      }
    }

    def rulesProduceIndivualToken[C](rs: List[Rule[C]], t: Token[C]): Boolean = {
      require(!rs.isEmpty)
      require(rulesInvariant(rs))
      val (producedTs, suffix) = lex(rs, print(List(t)))
      producedTs.size == 1 && producedTs.head == t && suffix.isEmpty
    }

    def rulesProduceEachTokenIndividually[C](rs: List[Rule[C]], ts: List[Token[C]]): Boolean = {
      decreases(ts)
      require(!rs.isEmpty)
      require(rulesInvariant(rs))
      ts match {
        case Cons(hd, tl) => rulesProduceIndivualToken(rs, hd) && rulesProduceEachTokenIndividually(rs, tl)
        case Nil()        => true
      }
    }

    def sepAndNonSepRulesDisjointChars[C](rules: List[Rule[C]], rulesRec: List[Rule[C]]): Boolean = {
      rulesRec match {
        case Cons(hd, tl) => ruleDisjointCharsFromAllFromOtherType(hd, rules) && sepAndNonSepRulesDisjointChars(rules, tl)
        case Nil()        => true
      }
    }

    def ruleDisjointCharsFromAllFromOtherType[C](r: Rule[C], rules: List[Rule[C]]): Boolean = {
      decreases(rules)
      rules match {
        case Cons(hd, tl) if hd.isSeparator != r.isSeparator => rulesUseDisjointChars(r, hd) && ruleDisjointCharsFromAllFromOtherType(r, tl)
        case Cons(hd, tl)                                    => ruleDisjointCharsFromAllFromOtherType(r, tl)
        case Nil()                                           => true
      }

    }
    def rulesUseDisjointChars[C](r1: Rule[C], r2: Rule[C]): Boolean = {
      r2.regex.usedCharacters.forall(c => !r1.regex.usedCharacters.contains(c)) &&
      r1.regex.usedCharacters.forall(c => !r2.regex.usedCharacters.contains(c))
    }

    def rulesRegex[C](rules: List[Rule[C]]): Regex[C] = {
      require(rulesValid(rules))
      ghostExpr({
        def lemma(@induct rs: List[Rule[C]]): Unit = {
          require(rulesValid(rs))
        }.ensuring(_ => rs.map(_.regex).forall(r => validRegex(r)))
        lemma(rules)
      })
      VerifiedRegex.generalisedUnion(rules.map(_.regex))
    }

    @ghost
    def tokensListTwoByTwoPredicate[C](l: List[Token[C]], rules: List[Rule[C]], pred: (Token[C], Token[C], List[Rule[C]]) => Boolean): Boolean = {
      decreases(l)
      l match {
        case Cons(hd, Cons(next, tl)) => pred(hd, next, rules) && tokensListTwoByTwoPredicate(Cons(next, tl), rules, pred)
        case _                        => true
      }
    }

    @ghost
    def separableTokensPredicate[C](t1: Token[C], t2: Token[C], rules: List[Rule[C]]): Boolean = {
      
      !rules.isEmpty &&
      rulesInvariant(rules) &&
      rulesProduceIndivualToken(rules, t1) &&
      rulesProduceIndivualToken(rules, t2) &&
      !t2.characters.isEmpty &&
      !VerifiedRegexMatcher.prefixMatch(rulesRegex(rules), t1.characters ++ List(t2.characters.head))
    }

    @ghost
    def rulesInvariant[C](rules: List[Rule[C]]): Boolean =
      rulesValid(rules) && noDuplicateTag(rules, Nil())

    /** Main function of the lexer
      *
      * It lexes the input list of characters using the set of rules
      *
      * It returns the produced list of Tokens and the remaining untokenised characters (normally empty)
      *
      * @param rules
      * @param input
      */
    def lex[C](
        rules: List[Rule[C]],
        input: List[C]
    ): (List[Token[C]], List[C]) = {
      decreases(input.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      val ret: (List[Token[C]], List[C]) = maxPrefix(rules, input) match {
        case Some((token, suffix)) => {
          val (followingTokens, nextSuffix) = lex(rules, suffix)
          assert(token.characters ++ suffix == input)
          (Cons(token, followingTokens), nextSuffix)
        }
        case None() => (Nil(), input)
      }
      ret
    }.ensuring (res =>
      if (res._1.size > 0) res._2.size < input.size && !res._1.isEmpty
      else res._2 == input
    )

    /** Prints back the tokens to a list of characters of the type C
      *
      * @param l
      */
    def print[C](l: List[Token[C]]): List[C] = {
      decreases(l)
      l match {
        case Cons(hd, tl) => hd.characters ++ print(tl)
        case Nil()        => Nil[C]()
      }
    }

    /** Prints back the tokens to a list of characters of the type C, by adding a separatorToken between all of them, and after the last
      *
      * @param l
      * @param separatorToken
      */
    def printWithSeparatorToken[C](l: List[Token[C]], separatorToken: Token[C]): List[C] = {
      require(separatorToken.rule.isSeparator)
      decreases(l)
      l match {
        case Cons(hd, tl) => hd.characters ++ separatorToken.characters ++ printWithSeparatorToken(tl, separatorToken)
        case Nil()        => Nil[C]()
      }
    }

    /** Prints back the tokens to a list of characters of the type C, by adding a separatorToken between tokens when the maxPrefix would return
      * another token if printed back to back.
      *
      * @param l
      * @param separatorToken
      */
    def printWithSeparatorTokenWhenNeeded[C](rules: List[Rule[C]], l: List[Token[C]], separatorToken: Token[C]): List[C] = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividually(rules, l))
      require(rulesProduceIndivualToken(rules, separatorToken))
      require(separatorToken.rule.isSeparator)
      require(l.forall(!_.rule.isSeparator))
      require(sepAndNonSepRulesDisjointChars(rules, rules))
      decreases(l)

      l match {
        case Cons(hd, tl) => {
          val suffix = printWithSeparatorTokenWhenNeeded(rules, tl, separatorToken)
          val maxPrefWithoutSep = maxPrefix(rules, hd.characters ++ suffix)
          maxPrefWithoutSep match {
            case Some((t, s)) if t == hd => hd.characters ++ suffix
            case Some((t, s)) if t != hd => hd.characters ++ separatorToken.characters ++ suffix
            case None() => {
              ghostExpr(lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined(rules, hd.characters, suffix))
              check(false)
              Nil[C]()
            }
          }
        }
        case Nil() => Nil[C]()
      }
    }

    /** Finds the biggest prefix matching any rule in the input list of characters If nothing matched a rule, returns None Else, returns the matched
      * prefix as Token and the remaining suffix
      *
      * @param rulesArg
      * @param input
      */
    def maxPrefix[C](
        rulesArg: List[Rule[C]],
        input: List[C]
    ): Option[(Token[C], List[C])] = {
      require(rulesValid(rulesArg))
      require(!rulesArg.isEmpty)
      decreases(rulesArg.size)

      ghostExpr(ListUtils.lemmaIsPrefixRefl(input, input))
      val ret: Option[(Token[C], List[C])] = rulesArg match {
        case Cons(hd, Nil()) => maxPrefixOneRule(hd, input)
        case Cons(hd, tl) => {
          val currentRulePref = maxPrefixOneRule(hd, input)
          val othersPrefix = maxPrefix(tl, input)
          (currentRulePref, othersPrefix) match {
            case (None(), None())                                                   => None()
            case (c, None())                                                        => c
            case (None(), o)                                                        => o
            case (Some(c), Some(o)) if c._1.characters.size >= o._1.characters.size => Some(c)
            case (Some(c), Some(o)) if c._1.characters.size < o._1.characters.size  => Some(o)
          }
        }
      }
      ret
    }.ensuring (res => res.isEmpty || res.isDefined && (res.get._2.size < input.size && res.get._1.characters ++ res.get._2 == input))

    /** Finds the biggest prefix matching any rule in the input list of characters If nothing matched a rule, returns None Else, returns the matched
      * prefix and the remaining suffix
      *
      * @param rule
      * @param input
      */
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
        Some[(Token[C], List[C])]((Token(longestPrefix, rule.tag, rule), suffix))
      }

    }.ensuring (res =>
      res.isEmpty || matchR(
        rule.regex,
        res.get._1.characters
      ) && res.get._1.characters ++ res.get._2 == input && res.get._2.size < input.size && res.get._1.tag == rule.tag && res.get._1.rule == rule
    )

    // Proofs --------------------------------------------------------------------------------------------------------------------------------

    // Correctness ---------------------------------------------------------------------------------------------------------------------------

    // The lexer is sound, i.e., if it produces a Tokenisation, it is valid w.r.t. the biggest prefix property
    @ghost
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
      require(lex(rules, input) == (tokens, suffix))

      require(tokens.isEmpty || tokens.head.characters.size <= otherP.size)
      require(tokens.isEmpty || tokens.head.tag == r.tag)
      require(tokens.isEmpty || tokens.head.rule == r)
      require(ListUtils.isPrefix(otherP, input))
      require(r != otherR)
      require({
        lemmaRuleInListAndRulesValidThenRuleIsValid(r, rules)
        tokens.isEmpty || matchR(r.regex, tokens.head.characters)
      })

      lemmaRuleInListAndRulesValidThenRuleIsValid(otherR, rules)
      if (ListUtils.getIndex(rules, r) > ListUtils.getIndex(rules, otherR)) {

        tokens match {
          case Nil() => {
            lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone(otherR, rules, input)
            lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex(otherR, otherP, input)
          }
          case Cons(hd, tl) => {
            val (tok, suf) = maxPrefix(rules, input).get
            assert(hd == tok)
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(hd.characters, suf)
            ListUtils.lemmaSamePrefixThenSameSuffix(hd.characters, suf, hd.characters, ListUtils.getSuffix(input, hd.characters), input)
            if (otherP.size == hd.characters.size) {
              ListUtils.lemmaIsPrefixSameLengthThenSameList(hd.characters, otherP, input)
              lemmaMaxPrefNoSmallerRuleMatches(rules, r, hd.characters, input, otherR)
            } else {
              lemmaMaxPrefixTagSoFindMaxPrefOneRuleWithThisRule(rules, hd.characters, input, suf, r)
              lemmaMaxPrefixOutputsMaxPrefix(rules, r, hd.characters, input, otherP, otherR)
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
            val (tok, suf) = maxPrefix(rules, input).get
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(hd.characters, suf)
            ListUtils.lemmaSamePrefixThenSameSuffix(hd.characters, suf, hd.characters, ListUtils.getSuffix(input, hd.characters), input)
            if (otherP.size > hd.characters.size) {
              lemmaMaxPrefixTagSoFindMaxPrefOneRuleWithThisRule(rules, hd.characters, input, suf, r)
              lemmaMaxPrefixOutputsMaxPrefix(rules, r, hd.characters, input, otherP, otherR)
            }

          }
        }
      }

    }.ensuring (_ =>
      if (ListUtils.getIndex(rules, otherR) < ListUtils.getIndex(rules, r)) !matchR(otherR.regex, otherP)
      else tokens.size > 0 && otherP.size <= tokens.head.characters.size || !matchR(otherR.regex, otherP)
    )

    // Invertability -------------------------------------------------------------------------------------------------------------------------

    @ghost
    def theoremInvertabilityWhenTokenListSeparable[C](rules: List[Rule[C]], tokens: List[Token[C]]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividually(rules, tokens))
      // Separability property
      require(tokensListTwoByTwoPredicate(tokens,rules, separableTokensPredicate))
      decreases(tokens)

      tokens match {
        case Nil() => () // DONE
        case Cons(hd, Nil()) => () // DONE
        case Cons(hd, Cons(next, tl)) => {
          val input = print(tokens)
          val suffix = print(Cons(next, tl))
          val (followingTokens, nextSuffix) = lex(rules, suffix)
          assert(input == hd.characters ++ suffix)
          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(hd.characters, suffix)

          theoremInvertabilityWhenTokenListSeparable(rules, Cons(next, tl))
          assert(lex(rules, suffix)._1 == Cons(next, tl))
          assert(lex(rules, suffix)._2 == nextSuffix)

          assert(separableTokensPredicate(hd, next, rules))
          
          val prefixOpt = maxPrefix(rules, input)
          lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined(rules, hd.characters, suffix)

          assert(prefixOpt.isDefined)

          assert(separableTokensPredicate(hd, next, rules))

          lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame(rules, hd, hd.rule, suffix)
          
          assert(prefixOpt.get._1 == hd)
          assert(prefixOpt.get._2 == suffix)


          assert(lex(rules, input)._1 == Cons(hd, Cons(next, tl)))
        }
      }

    }.ensuring(_ => lex(rules, print(tokens))._1 == tokens)

    // IMPOSSIBLE VERSION LEFT HERE FOR HISTORICAL REASONS !!!!!!!!!!!!!!!!!!!!!!!!
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
    def theoremInvertabilityFromTokensSepTokenWhenNeeded[C](rules: List[Rule[C]], tokens: List[Token[C]], separatorToken: Token[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividually(rules, tokens))
      require(rulesProduceIndivualToken(rules, separatorToken))
      require(separatorToken.rule.isSeparator)
      require(tokens.forall(!_.rule.isSeparator))
      require({
        lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, separatorToken.characters, separatorToken)
        getRuleFromTag(rules, separatorToken.tag).get.isSeparator
      })
      require(sepAndNonSepRulesDisjointChars(rules, rules))
      decreases(tokens)

      tokens match {
        case Cons(hd, tl) => {
          val input = printWithSeparatorTokenWhenNeeded(rules, tokens, separatorToken)
          val suffixWithSep = separatorToken.characters ++ printWithSeparatorTokenWhenNeeded(rules, tl, separatorToken)
          ListUtils.lemmaTwoListsConcatAssociativity(
            hd.characters,
            separatorToken.characters,
            printWithSeparatorTokenWhenNeeded(rules, tl, separatorToken)
          )
          val suffixWithoutSep = printWithSeparatorTokenWhenNeeded(rules, tl, separatorToken)
          assert(input == hd.characters ++ suffixWithSep || input == hd.characters ++ suffixWithoutSep)

          if (input == hd.characters ++ suffixWithSep) {
            val suffixAfterSep = printWithSeparatorTokenWhenNeeded(rules, tl, separatorToken)
            lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead(rules, tokens, separatorToken)
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(hd.characters, suffixWithSep)
            ListUtils.lemmaSamePrefixThenSameSuffix(hd.characters, suffixWithSep, hd.characters, maxPrefix(rules, input).get._2, input)

            val nextToken = tl.head
            val sepTokenOpt = maxPrefix(rules, suffixWithSep)
            if (tl.isEmpty) {
              assert(input == hd.characters ++ separatorToken.characters)
              check(false)
            }
            lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, tokens, nextToken)
            check(rulesProduceIndivualToken(rules, nextToken))
            lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, separatorToken.characters, separatorToken)
            val separatorRule = getRuleFromTag(rules, separatorToken.tag).get
            lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, tl.head.characters, nextToken)
            val nextTokenRule = getRuleFromTag(rules, nextToken.tag).get

            if (!nextTokenRule.regex.usedCharacters.contains(nextToken.characters.head)) {
              lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(nextTokenRule.regex, nextToken.characters, nextToken.characters.head)
              check(false)
            }
            if (separatorRule.regex.usedCharacters.contains(suffixAfterSep.head)) {
              lemmaSepRuleNotContainsCharContainedInANonSepRule(rules, rules, nextTokenRule, separatorRule, suffixAfterSep.head)
              check(false)
            }
            lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame(rules, separatorToken, separatorRule, suffixAfterSep, nextTokenRule)

            theoremInvertabilityFromTokensSepTokenWhenNeeded(rules, tl, separatorToken)
          } else {
            lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead(rules, tokens, separatorToken)
            theoremInvertabilityFromTokensSepTokenWhenNeeded(rules, tl, separatorToken)
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(hd.characters, suffixWithoutSep)
            ListUtils.lemmaSamePrefixThenSameSuffix(hd.characters, suffixWithoutSep, hd.characters, maxPrefix(rules, input).get._2, input)
          }
        }
        case Nil() => ()
      }
    }.ensuring (_ => lex(rules, printWithSeparatorTokenWhenNeeded(rules, tokens, separatorToken))._1.filter(!_.rule.isSeparator) == tokens)

    @ghost
    def theoremInvertFromTokensSepTokenBetweenEach[C](rules: List[Rule[C]], tokens: List[Token[C]], separatorToken: Token[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividually(rules, tokens))
      require(rulesProduceIndivualToken(rules, separatorToken))
      require(separatorToken.rule.isSeparator)
      require(tokens.forall(!_.rule.isSeparator))
      require({
        lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, separatorToken.characters, separatorToken)
        getRuleFromTag(rules, separatorToken.tag).get.isSeparator
      })
      require(sepAndNonSepRulesDisjointChars(rules, rules))
      decreases(tokens.size)

      tokens match {
        case Nil() => ()
        // case Cons(hd, Nil()) => ()
        case Cons(hd, Nil()) => {
          ListSpecs.forallContained(tokens, (t: Token[C]) => !t.rule.isSeparator, hd)
          assert(!hd.rule.isSeparator)
          val input = printWithSeparatorToken(tokens, separatorToken)
          assert(input == hd.characters ++ separatorToken.characters)
          ListUtils.lemmaGetSuffixOnListWithItSelfIsEmpty(hd.characters)
          lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, tokens, hd)
          lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, hd.characters, hd)
          val rule = getRuleFromTag(rules, hd.tag).get
          assert(!rule.isSeparator)
          lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, separatorToken.characters, separatorToken)
          val separatorRule = getRuleFromTag(rules, separatorToken.tag).get
          lemmaMaxPrefixTagSoFindMaxPrefOneRuleWithThisRule(rules, hd.characters, hd.characters, Nil(), rule)

          if (!separatorRule.regex.usedCharacters.contains(separatorToken.characters.head)) {
            lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(
              separatorRule.regex,
              separatorToken.characters,
              separatorToken.characters.head
            )
            check(false)
          }
          assert(separatorRule.regex.usedCharacters.contains(separatorToken.characters.head))

          lemmaNonSepRuleNotContainsCharContainedInASepRule(rules, rules, rule, separatorRule, separatorToken.characters.head)

          lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame(rules, hd, rule, separatorToken.characters, separatorRule)

          val suffix = maxPrefix(rules, input).get._2

          // needed
          val ret: (List[Token[C]], List[C]) = maxPrefix(rules, input) match {
            case Some((t, s)) => {
              assert(s == suffix)
              assert(t == hd)
              val (followingTokens, nextSuffix) = lex(rules, s)
              assert(nextSuffix.isEmpty)
              assert(t.characters ++ s == input)
              (Cons(t, followingTokens), nextSuffix)
            }
            case None() => {
              check(false)
              (Nil(), input)
            }
          }

        }
        case Cons(hd, Cons(nextT, tl)) => {
          ListSpecs.forallContained(tokens, (t: Token[C]) => !t.rule.isSeparator, hd)
          ListSpecs.forallContained(tokens, (t: Token[C]) => !t.rule.isSeparator, nextT)
          assert(!hd.rule.isSeparator)
          assert(!nextT.rule.isSeparator)
          val input = printWithSeparatorToken(tokens, separatorToken)
          val suffixAfterSeparator = printWithSeparatorToken(Cons(nextT, tl), separatorToken)
          val suffix = separatorToken.characters ++ suffixAfterSeparator
          assert(suffixAfterSeparator == nextT.characters ++ separatorToken.characters ++ printWithSeparatorToken(tl, separatorToken))
          assert(input == hd.characters ++ separatorToken.characters ++ suffixAfterSeparator)
          ListUtils.lemmaTwoListsConcatAssociativity(hd.characters, separatorToken.characters, suffixAfterSeparator)
          assert(input == hd.characters ++ suffix)
          lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, tokens, hd)
          lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, hd.characters, hd)
          val rule = getRuleFromTag(rules, hd.tag).get
          assert(!rule.isSeparator)
          lemmaMaxPrefixTagSoFindMaxPrefOneRuleWithThisRule(rules, hd.characters, hd.characters, Nil(), rule)

          lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, separatorToken.characters, separatorToken)
          val separatorRule = getRuleFromTag(rules, separatorToken.tag).get

          if (!separatorRule.regex.usedCharacters.contains(separatorToken.characters.head)) {
            lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(
              separatorRule.regex,
              separatorToken.characters,
              separatorToken.characters.head
            )
            check(false)
          }

          assert(suffixAfterSeparator == nextT.characters ++ separatorToken.characters ++ printWithSeparatorToken(tl, separatorToken))
          lemmaNonSepRuleNotContainsCharContainedInASepRule(rules, rules, rule, separatorRule, separatorToken.characters.head)

          lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame(rules, hd, rule, suffix, separatorRule)

          lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, tokens, nextT)
          assert(rulesProduceIndivualToken(rules, nextT))
          lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, nextT.characters, nextT)
          val nextTRule = getRuleFromTag(rules, nextT.tag).get
          assert(!nextTRule.isSeparator)
          lemmaMaxPrefixTagSoFindMaxPrefOneRuleWithThisRule(rules, nextT.characters, nextT.characters, Nil(), nextTRule)

          if (!nextTRule.regex.usedCharacters.contains(nextT.characters.head)) {
            lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(nextTRule.regex, nextT.characters, nextT.characters.head)
            check(false)
          }

          lemmaSepRuleNotContainsCharContainedInANonSepRule(rules, rules, nextTRule, separatorRule, nextT.characters.head)

          lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame(rules, separatorToken, separatorRule, suffixAfterSeparator, nextTRule)

          theoremInvertFromTokensSepTokenBetweenEach(rules, Cons(nextT, tl), separatorToken)

        }
      }

    }.ensuring (_ => lex(rules, printWithSeparatorToken(tokens, separatorToken))._1.filter(!_.rule.isSeparator) == tokens)

    @ghost
    def theoremInvertFromString[C](rules: List[Rule[C]], input: List[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      decreases(input.size)

      val (tokens, suffix) = lex(rules, input)
      if (suffix.isEmpty) {
        tokens match {
          case Cons(hd, Nil()) => ()
          case Cons(hd, tl)    => theoremInvertFromString(rules, maxPrefix(rules, input).get._2)
          case Nil()           => ()
        }
      } else {
        tokens match {
          case Cons(hd, Nil()) => assert(print(tokens) ++ suffix == input)
          case Cons(hd, tl) => {
            theoremInvertFromString(rules, maxPrefix(rules, input).get._2)
            lemmaRemovingFirstTokensCharactersPreservesLexSuffix(rules, input, tokens, suffix)

            assert(input == maxPrefix(rules, input).get._1.characters ++ maxPrefix(rules, input).get._2)
            assert(input == maxPrefix(rules, input).get._1.characters ++ (print(tl) ++ suffix))
            ListUtils.lemmaTwoListsConcatAssociativity(
              maxPrefix(rules, input).get._1.characters,
              print(tl),
              suffix
            )
          }
          case Nil() => assert(print(tokens) ++ suffix == input)
        }
      }
    }.ensuring (_ => {
      val (tokens, suffix) = lex(rules, input)
      print(tokens) ++ suffix == input
    })

    // Functions -----------------------------------------------------------------------------------------------------------------------------

    def getRuleFromTag[C](rules: List[Rule[C]], tag: String): Option[Rule[C]] = {
      require(rulesInvariant(rules))
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
    def lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead[C](rules: List[Rule[C]], tokens: List[Token[C]], separatorToken: Token[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividually(rules, tokens))
      require(rulesProduceIndivualToken(rules, separatorToken))
      require(separatorToken.rule.isSeparator)
      require(tokens.forall(!_.rule.isSeparator))
      require(sepAndNonSepRulesDisjointChars(rules, rules))

      tokens match {
        case Cons(hd, tl) => {
          lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, separatorToken.characters, separatorToken)
          val separatorRule = getRuleFromTag(rules, separatorToken.tag).get

          lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, hd.characters, hd)
          val rule = getRuleFromTag(rules, hd.tag).get

          val suffix = printWithSeparatorTokenWhenNeeded(rules, tl, separatorToken)
          val maxPrefWithoutSep = maxPrefix(rules, hd.characters ++ suffix)
          maxPrefWithoutSep match {
            case Some((t, s)) if t == hd => ()
            case Some((t, s)) if t != hd => {
              ListUtils.lemmaTwoListsConcatAssociativity(hd.characters, separatorToken.characters, suffix)
              val resSuffix = separatorToken.characters ++ suffix
              if (!separatorRule.regex.usedCharacters.contains(separatorToken.characters.head)) {
                lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(
                  separatorRule.regex,
                  separatorToken.characters,
                  separatorToken.characters.head
                )
                check(false)
              }
              lemmaNonSepRuleNotContainsCharContainedInASepRule(rules, rules, rule, separatorRule, separatorToken.characters.head)

              check(maxPrefix(rules, hd.characters).isDefined)
              check(maxPrefix(rules, hd.characters).get._1 == hd)
              lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame(rules, hd, rule, resSuffix, separatorRule)
            }
            case None() => {
              lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined(rules, hd.characters, suffix)
              check(false)
            }
          }
        }
        case Nil() => ()
      }

    }.ensuring (_ =>
      tokens.isEmpty ||
        (!tokens.isEmpty &&
          maxPrefix(rules, printWithSeparatorTokenWhenNeeded(rules, tokens, separatorToken)).isDefined &&
          maxPrefix(rules, printWithSeparatorTokenWhenNeeded(rules, tokens, separatorToken)).get._1 == tokens.head)
    )

    @ghost
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
      require(maxPrefix(rules, token.characters).isDefined)
      require(maxPrefix(rules, token.characters).get._1 == token)
      require(maxPrefix(rules, token.characters).get._2.isEmpty)
      require(token.tag == rule.tag)
      require(token.rule == rule)
      require({
        lemmaRuleInListAndRulesValidThenRuleIsValid(rule, rules)
        matchR(rule.regex, token.characters)
      })
      require(!suffix.isEmpty)
      require(!rule.regex.usedCharacters.contains(suffix.head))
      require(anOtherTypeRule.regex.usedCharacters.contains(suffix.head))
      require(sepAndNonSepRulesDisjointChars(rules, rules))

      val input = token.characters ++ suffix
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.characters, suffix)
      val tokenOpt = maxPrefix(rules, input)
      lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined(rules, token.characters, suffix)
      val foundToken = tokenOpt.get._1
      val foundSuffix = tokenOpt.get._2
      lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, input, foundToken)
      val foundRule = getRuleFromTag(rules, foundToken.tag).get
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(foundToken.characters, foundSuffix)
      assert(ListUtils.isPrefix(foundToken.characters, input))
      assert(foundRule.tag == foundToken.tag)
      assert(matchR(foundRule.regex, foundToken.characters))
      assert(foundRule == foundToken.rule)

      lemmaMaxPrefixTagSoFindMaxPrefOneRuleWithThisRule(rules, foundToken.characters, input, foundSuffix, foundRule)
      ListUtils.lemmaSamePrefixThenSameSuffix(
        foundToken.characters,
        foundSuffix,
        foundToken.characters,
        ListUtils.getSuffix(input, foundToken.characters),
        input
      )
      assert(ListUtils.getSuffix(input, foundToken.characters) == foundSuffix)
      assert(maxPrefixOneRule(foundRule, input) == Some((foundToken, ListUtils.getSuffix(input, foundToken.characters))))

      if (!rule.regex.usedCharacters.contains(foundToken.characters.head)) {
        lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(rule.regex, token.characters, foundToken.characters.head)
        check(false)
      }
      if (rule.isSeparator) {
        if (!foundRule.isSeparator) {
          assert(token.characters.contains(foundToken.characters.head))
          assert(rule.regex.usedCharacters.contains(foundToken.characters.head))
          lemmaNonSepRuleNotContainsCharContainedInASepRule(rules, rules, foundRule, rule, foundToken.characters.head)
          lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(foundRule.regex, foundToken.characters, foundToken.characters.head)
          check(false)
        }
      } else {
        if (foundRule.isSeparator) {
          assert(token.characters.contains(foundToken.characters.head))
          assert(rule.regex.usedCharacters.contains(foundToken.characters.head))
          lemmaSepRuleNotContainsCharContainedInANonSepRule(rules, rules, rule, foundRule, foundToken.characters.head)
          lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(foundRule.regex, foundToken.characters, foundToken.characters.head)
          check(false)
        }
      }

      if (foundToken.characters.size > token.characters.size) {
        ListUtils.lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref(token.characters, suffix, foundToken.characters, input)
        if (rule.isSeparator) {
          lemmaSepRuleNotContainsCharContainedInANonSepRule(rules, rules, anOtherTypeRule, foundRule, suffix.head)
          lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(foundRule.regex, foundToken.characters, suffix.head)
          check(false)
        } else {
          lemmaNonSepRuleNotContainsCharContainedInASepRule(rules, rules, foundRule, anOtherTypeRule, suffix.head)
          lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(foundRule.regex, foundToken.characters, suffix.head)
          check(false)
        }
      }
      if (foundToken.characters.size < token.characters.size) {
        lemmaMaxPrefixOutputsMaxPrefix(rules, foundRule, foundToken.characters, input, token.characters, rule)
        check(false)
      }
      ListUtils.lemmaIsPrefixSameLengthThenSameList(foundToken.characters, token.characters, input)

      assert(foundToken.characters == token.characters)

      if (foundToken.tag != token.tag) {
        assert(foundRule != rule)
        val foundRuleIndex = ListUtils.getIndex(rules, foundRule)
        val ruleIndex = ListUtils.getIndex(rules, rule)
        if (foundRuleIndex < ruleIndex) {
          ListUtils.lemmaGetSuffixOnListWithItSelfIsEmpty(token.characters)
          assert(ListUtils.getSuffix(token.characters, token.characters).isEmpty)
          lemmaMaxPrefNoSmallerRuleMatches(rules, rule, token.characters, token.characters, foundRule)
          check(false)
        }
        if (ruleIndex < foundRuleIndex) {
          lemmaMaxPrefNoSmallerRuleMatches(rules, foundRule, token.characters, input, rule)
          check(false)
        }

        ListUtils.lemmaSameIndexThenSameElement(rules, foundRule, rule)
        check(false)
      }
      assert(foundToken.tag == token.tag)
      assert(foundToken.tag == rule.tag)

      lemmaMaxPrefixTagSoFindMaxPrefOneRuleWithThisRule(rules, token.characters, input, ListUtils.getSuffix(input, token.characters), rule)
      ListUtils.lemmaSamePrefixThenSameSuffix(
        token.characters,
        ListUtils.getSuffix(input, token.characters),
        foundToken.characters,
        foundSuffix,
        input
      )
      ListUtils.lemmaSamePrefixThenSameSuffix(token.characters, suffix, foundToken.characters, foundSuffix, input)

    }.ensuring (_ => maxPrefix(rules, token.characters ++ suffix) == Some((token, suffix)))


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
      require(maxPrefix(rules, token.characters).isDefined)
      require(maxPrefix(rules, token.characters).get._1 == token)
      require(maxPrefix(rules, token.characters).get._2.isEmpty)
      require(token.tag == rule.tag)
      require(token.rule == rule)
      require({
        lemmaRuleInListAndRulesValidThenRuleIsValid(rule, rules)
        matchR(rule.regex, token.characters)
      })
      require(!suffix.isEmpty)
      require(!prefixMatch(rulesRegex(rules), token.characters ++ List(suffix.head)))

      val input = token.characters ++ suffix
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.characters, suffix)
      val tokenOpt = maxPrefix(rules, input)
      lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined(rules, token.characters, suffix)
      val foundToken = tokenOpt.get._1
      val foundSuffix = tokenOpt.get._2
      lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, input, foundToken)
      val foundRule = getRuleFromTag(rules, foundToken.tag).get
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(foundToken.characters, foundSuffix)
      assert(ListUtils.isPrefix(foundToken.characters, input))
      assert(foundRule.tag == foundToken.tag)
      assert(matchR(foundRule.regex, foundToken.characters))
      assert(foundRule == foundToken.rule)

      lemmaMaxPrefixTagSoFindMaxPrefOneRuleWithThisRule(rules, foundToken.characters, input, foundSuffix, foundRule)
      ListUtils.lemmaSamePrefixThenSameSuffix(
        foundToken.characters,
        foundSuffix,
        foundToken.characters,
        ListUtils.getSuffix(input, foundToken.characters),
        input
      )
      assert(ListUtils.getSuffix(input, foundToken.characters) == foundSuffix)
      assert(maxPrefixOneRule(foundRule, input) == Some((foundToken, ListUtils.getSuffix(input, foundToken.characters))))
      lemmaMaxPrefixThenMatchesRulesRegex(rules, token.characters, token, rule, Nil())
      assert(matchR(rulesRegex(rules), token.characters))

      if(foundToken.characters.size > token.characters.size) {
        lemmaMaxPrefixThenMatchesRulesRegex(rules, input, foundToken, foundRule, foundSuffix)
        assert(matchR(rulesRegex(rules), foundToken.characters))
        assert(input == token.characters ++ suffix)
        ListUtils.lemmaSamePrefixThenSameSuffix(token.characters, suffix, token.characters, ListUtils.getSuffix(input, token.characters), input)
        assert(ListUtils.getSuffix(input, token.characters) == suffix)
        ListUtils.lemmaAddHeadSuffixToPrefixStillPrefix(token.characters, input)
        assert(ListUtils.isPrefix(token.characters ++ List(suffix.head), input))
        assert(ListUtils.isPrefix(foundToken.characters, input))
        ListUtils.lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther(foundToken.characters, token.characters ++ List(suffix.head), input)
        assert(ListUtils.isPrefix(token.characters ++ List(suffix.head), foundToken.characters))

        lemmaNotPrefixMatchThenCannotMatchLonger(rulesRegex(rules), token.characters ++ List(suffix.head), foundToken.characters)

        check(false)
      }
      assert(foundToken.characters.size <= token.characters.size)
      if(foundToken.characters.size < token.characters.size) {
        lemmaMaxPrefixOutputsMaxPrefix(rules, foundRule, foundToken.characters, input, token.characters, rule)
        check(false)
      }
      assert(foundToken.characters.size == token.characters.size)
      ListUtils.lemmaIsPrefixSameLengthThenSameList(foundToken.characters, token.characters, input)
      assert(foundToken.characters == token.characters)
      ListUtils.lemmaSamePrefixThenSameSuffix(token.characters, suffix, token.characters, foundSuffix, input)
      assert(suffix == foundSuffix)
      if(foundToken.rule != token.rule) {
        if(ListUtils.getIndex(rules, token.rule) < ListUtils.getIndex(rules, foundToken.rule)) {
          lemmaMaxPrefNoSmallerRuleMatches(rules, foundToken.rule, foundToken.characters, input, token.rule)
          check(false)
        }
        if(ListUtils.getIndex(rules, foundToken.rule) < ListUtils.getIndex(rules, token.rule)) {
          lemmaMaxPrefNoSmallerRuleMatches(rules, token.rule, token.characters, token.characters, foundToken.rule)
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

    }.ensuring (_ => maxPrefix(rules, token.characters ++ suffix) == Some((token, suffix)))

    @ghost
    def lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined[C](rules: List[Rule[C]], input: List[C], suffix: List[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(!lex(rules, input)._1.isEmpty)

      val (tokens, _) = lex(rules, input)
      val firstT = tokens.head
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(firstT.characters, maxPrefix(rules, input).get._2)
      ListUtils.lemmaPrefixStaysPrefixWhenAddingToSuffix(firstT.characters, input, suffix)
      lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, input, firstT)
      val rule: Rule[C] = getRuleFromTag(rules, firstT.tag).get
      assert(matchR(rule.regex, firstT.characters))

      if (maxPrefix(rules, input ++ suffix).isEmpty) {
        lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone(rule, rules, input ++ suffix)
        lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex(rule, firstT.characters, input ++ suffix)
        check(false)
      }

    }.ensuring (_ => maxPrefix(rules, input ++ suffix).isDefined)

    @ghost
    def lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken[C](rules: List[Rule[C]], input: List[C], token: Token[C]): Unit = {
      require(rulesInvariant(rules))
      require(!rules.isEmpty)
      require(maxPrefix(rules, input).isDefined && maxPrefix(rules, input).get._1 == token)
      decreases(rules)

      rules match {
        case Cons(hd, tl) => {
          if (maxPrefixOneRule(hd, input).isDefined && maxPrefixOneRule(hd, input).get._1 == token) {
            assert(hd.tag == token.tag)
            assert(matchR(hd.regex, token.characters))
          } else {
            if (!tl.isEmpty) {
              lemmaInvariantOnRulesThenOnTail(hd, tl)
              lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(tl, input, token)
              lemmaGetRuleFromTagInListThenSameListWhenAddingARuleDiffTag(tl, hd, token.tag)
            } else {
              check(false)
            }
          }
        }
        case Nil() => ()
      }
    }.ensuring (_ =>
      getRuleFromTag(rules, token.tag).isDefined && matchR(getRuleFromTag(rules, token.tag).get.regex, token.characters) &&
        token.rule == getRuleFromTag(rules, token.tag).get
    )

    @ghost
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
    def lemmaRemovingFirstTokensCharactersPreservesLexSuffix[C](
        rules: List[Rule[C]],
        input: List[C],
        producedTokens: List[Token[C]],
        suffix: List[C]
    ): Unit = {
      require(rulesInvariant(rules))
      require(!rules.isEmpty)
      require(producedTokens.size > 0)
      require(lex(rules, input) == (producedTokens, suffix))
    }.ensuring (_ => lex(rules, maxPrefix(rules, input).get._2) == (producedTokens.tail, suffix))

    @ghost
    def lemmaMaxPrefNoneThenNoRuleMatches[C](rules: List[Rule[C]], r: Rule[C], p: List[C], input: List[C]): Unit = {
      require(ListUtils.isPrefix(p, input))
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rules.contains(r))
      require(maxPrefix(rules, input) == None[(Token[C], List[C])]())

      lemmaRuleInListAndRulesValidThenRuleIsValid(r, rules)

      lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone(r, rules, input)
      lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex(r, p, input)

    }.ensuring (_ => !matchR(r.regex, p))

    @ghost
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
      require(maxPrefix(rules, input) == Some(Token(p, r.tag, r), ListUtils.getSuffix(input, p)))
      require(ListUtils.getIndex(rules, rBis) < ListUtils.getIndex(rules, r))
      require(ruleValid(r))
      require(matchR(r.regex, p))
      decreases(rules)

      assert(ListUtils.getIndex(rules, rBis) < ListUtils.getIndex(rules, r))

      lemmaRuleInListAndRulesValidThenRuleIsValid(rBis, rules)
      lemmaRuleInListAndRulesValidThenRuleIsValid(r, rules)
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
                Token(p, r.tag, r),
                input,
                ListUtils.getSuffix(input, p),
                token.characters,
                ListUtils.getSuffix(input, token.characters),
                rBis,
                token
              )
              check(false)
              check(!matchR(rBis.regex, p))
            } else {
              if (token.characters.size < p.size) {
                ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.characters, suff)
                lemmaMaxPrefixOneRuleOutputsMaxPrefix(rBis, token.characters, token, input, suff, p)
                check(!matchR(rBis.regex, p))
              } else {
                lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq(rules, rBis, r)
                check(Some(token, suff) != Some(Token(p, r.tag, r), ListUtils.getSuffix(input, p)))
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
        lemmaRuleInListAndRulesValidThenRuleIsValid(r, rules)
        matchR(r.regex, p)
      })
      require({
        ListUtils.lemmaIsPrefixRefl(input, input)
        maxPrefixOneRule(r, input) == Some(Token(p, r.tag, r), ListUtils.getSuffix(input, p))
      })

      require(pBis.size > p.size)

      require(maxPrefix(rules, input) == Some(Token(p, r.tag, r), ListUtils.getSuffix(input, p)))

      // For preconditions
      lemmaRuleInListAndRulesValidThenRuleIsValid(r, rules)
      lemmaRuleInListAndRulesValidThenRuleIsValid(rBis, rules)
      ListUtils.lemmaIsPrefixRefl(input, input)

      // Main lemma
      lemmaMaxPrefixOutputsMaxPrefixInner(rules, r, p, input, pBis, rBis)

    }.ensuring (_ => !matchR(rBis.regex, pBis))

    @ghost
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
        maxPrefixOneRule(r, input) == Some(Token(p, r.tag, r), ListUtils.getSuffix(input, p))
      })

      require(pBis.size > p.size)

      require(ruleValid(rBis))
      require(maxPrefix(rules, input) == Some(Token(p, r.tag, r), ListUtils.getSuffix(input, p)))

      assert(validRegex(r.regex))

      ListUtils.lemmaIsPrefixThenSmallerEqSize(pBis, input)
      lemmaRuleInListAndRulesValidThenRuleIsValid(rBis, rules)

      val bisTokenSuff = maxPrefixOneRule(rBis, input) // == Some(Token(pBis, rBis.tag), ListUtils.getSuffix(input, pBis))
      if (bisTokenSuff.isEmpty) {
        lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex(rBis, pBis, input)
        check(!matchR(rBis.regex, pBis))
      } else {
        val tBis = bisTokenSuff.get._1
        val suffixBis = bisTokenSuff.get._2
        ListUtils.lemmaConcatTwoListThenFirstIsPrefix(tBis.characters, suffixBis)
        if (tBis.characters == pBis) {
          lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref(
            rules,
            p,
            Token(p, r.tag, r),
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
            assert(ListUtils.isPrefix(tBis.characters, input))
            lemmaMaxPrefixOneRuleOutputsMaxPrefix(rBis, tBis.characters, tBis, input, suffixBis, pBis)
            check(!matchR(rBis.regex, pBis))
          } else {
            if (pBis.size == tBis.characters.size) {
              ListUtils.lemmaIsPrefixSameLengthThenSameList(pBis, tBis.characters, input)
              check(false)
            }
            assert(pBis.size < tBis.characters.size)
            lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref(
              rules,
              p,
              Token(p, r.tag, r),
              input,
              ListUtils.getSuffix(input, p),
              tBis.characters,
              suffixBis,
              rBis,
              tBis
            )
            assert(tBis.characters.size <= p.size)
            check(false)
            check(!matchR(rBis.regex, pBis))

          }
        }

      }

    }.ensuring (_ => !matchR(rBis.regex, pBis))

    @ghost
    def lemmaMaxPrefixTagSoFindMaxPrefOneRuleWithThisRule[C](
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
      require(maxPrefix(rules, input) == Some(Token(p, r.tag, r), suffix))
      require({
        lemmaRuleInListAndRulesValidThenRuleIsValid(r, rules)
        matchR(r.regex, p)
      })
      decreases(rules.size)

      rules match {
        case Cons(hd, tl) if hd == r => {
          lemmaInvariantOnRulesThenOnTail(hd, tl)
          if (tl.isEmpty) {
            check(maxPrefixOneRule(r, input) == Some(Token(p, r.tag, r), suffix))
          } else {
            lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok(hd, tl, input)
            assert(maxPrefix(tl, input).isEmpty || maxPrefix(tl, input).get._1.tag != r.tag)
            check(maxPrefixOneRule(r, input) == Some(Token(p, r.tag, r), suffix))
          }
        }
        case Cons(hd, tl) if hd != r => {
          lemmaInvariantOnRulesThenOnTail(hd, tl)
          val otherTokSufOpt = maxPrefixOneRule(hd, input)
          if (otherTokSufOpt.isEmpty) {
            lemmaMaxPrefixTagSoFindMaxPrefOneRuleWithThisRule(tl, p, input, suffix, r)
          } else {
            assert(otherTokSufOpt.get._1.tag == hd.tag)
            if (otherTokSufOpt.get._1.tag == r.tag) {
              assert(hd.tag == r.tag)
              lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq(rules, hd, r)
              check(false)
            } else {
              assert(otherTokSufOpt.get._1.tag != r.tag)
              assert(maxPrefixOneRule(hd, input) != Some(Token(p, r.tag, r), suffix))
              assert(maxPrefix(tl, input) == Some(Token(p, r.tag, r), suffix))
              lemmaMaxPrefixTagSoFindMaxPrefOneRuleWithThisRule(tl, p, input, suffix, r)
            }

          }
        }
        case Nil() => check(false)

      }

    }.ensuring (_ => maxPrefixOneRule(r, input) == Some(Token(p, r.tag, r), suffix))

    @ghost
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

    }.ensuring (_ => maxPrefix(rTail, input).isEmpty || maxPrefix(rTail, input).get._1.tag != rHead.tag)

    @ghost
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
      require(ruleValid(rBis))
      require({
        ListUtils.lemmaIsPrefixRefl(input, input)
        maxPrefixOneRule(rBis, input) == Some(tBis, suffixBis)
      })
      require(tBis.tag == rBis.tag)
      require(tBis.characters == pBis)
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
              val oPref = tokSuff._1.characters
              val suff = tokSuff._2
              ListUtils.lemmaConcatTwoListThenFirstIsPrefix(oPref, suff)
              lemmaInvariantOnRulesThenOnTail(hd, tl)
              lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref(tl, oPref, tokSuff._1, input, suff, pBis, suffixBis, rBis, tBis)
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
    def lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone[C](
        r: Rule[C],
        rules: List[Rule[C]],
        input: List[C]
    ): Unit = {
      require(!rules.isEmpty)
      require(rulesValid(rules))
      require(rules.contains(r))

      require(maxPrefix(rules, input).isEmpty)
      decreases(rules)

      lemmaRuleInListAndRulesValidThenRuleIsValid(r, rules)

      rules match {
        case Cons(hd, tl) if r == hd => ()
        case Cons(hd, tl) if r != hd => {

          lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone(r, tl, input)
        }
        case Nil() => ()
      }

    }.ensuring (_ => maxPrefixOneRule(r, input).isEmpty)

    @ghost
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
      require(t.characters == p)
      require({
        ListUtils.lemmaIsPrefixRefl(input, input)
        maxPrefixOneRule(r, input) == Some(t, suffix)
      })

      ListUtils.lemmaIsPrefixRefl(input, input)

      longestMatchNoBiggerStringMatch(r.regex, input, p, pBis)
    }.ensuring (_ => !matchR(r.regex, pBis))

    @ghost
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
    def lemmaRuleInListAndRulesValidThenRuleIsValid[C](r: Rule[C], rules: List[Rule[C]]): Unit = {
      require(rules.contains(r))
      require(rulesValid(rules))
      rules match {
        case Cons(hd, tl) if (hd == r) => assert(ruleValid(r))
        case Cons(hd, tl) if (hd != r) => {
          assert(tl.contains(r))
          lemmaRuleInListAndRulesValidThenRuleIsValid(r, tl)
        }
        case Nil() => assert(false)
      }
    }.ensuring (_ => ruleValid(r))

    @ghost
    def lemmaInvariantOnRulesThenOnTail[C](r: Rule[C], rules: List[Rule[C]]): Unit = {
      require(rulesInvariant(Cons(r, rules)))
      assert(rulesValid(Cons(r, rules)) && noDuplicateTag(Cons(r, rules), Nil()))
      assert(rulesValid(rules))
      assert(noDuplicateTag(rules, List(r.tag)))

      lemmaNoDupTagThenAlsoWithSubListAcc(List(r.tag), Nil(), rules)
      assert(noDuplicateTag(rules, Nil()))

    }.ensuring (_ => rulesInvariant(rules))

    @ghost
    def lemmaNoDuplicateCanReorder[C](e1: Rule[C], e2: Rule[C], l: List[Rule[C]]): Unit = {
      require(noDuplicateTag(Cons(e1, Cons(e2, l)), List()))

      assert(noDuplicateTag(Cons(e1, Cons(e2, l)), List()) == noDuplicateTag(Cons(e2, l), List(e1.tag)))
      assert(noDuplicateTag(Cons(e2, l), List(e1.tag)) == noDuplicateTag(l, List(e2.tag, e1.tag)))
      assert(List(e2.tag, e1.tag).toSet == List(e1.tag, e2.tag).toSet)
      lemmaNoDuplicateSameWithAccWithSameContent(l, List(e2.tag, e1.tag), List(e1.tag, e2.tag))
      assert(noDuplicateTag(l, List(e2.tag, e1.tag)) == noDuplicateTag(l, List(e1.tag, e2.tag))) // TODO
    }.ensuring (_ => noDuplicateTag(Cons(e2, Cons(e1, l)), List()))

    @ghost
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
    def lemmaNoDupTagThenAlsoWithSubListAcc[C](acc: List[String], newAcc: List[String], rules: List[Rule[C]]): Unit = {
      require(ListSpecs.subseq(newAcc, acc))
      require(noDuplicateTag(rules, acc))

      rules match {
        case Cons(hd, tl) => {
          lemmaNoDupTagThenAlsoWithSubListAcc(Cons(hd.tag, acc), Cons(hd.tag, newAcc), tl)
          ListSpecs.subseqNotContains(newAcc, acc, hd.tag)
        }
        case Nil() => ()
      }

    }.ensuring (_ => noDuplicateTag(rules, newAcc))

    @ghost
    def lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq[C](rules: List[Rule[C]], r1: Rule[C], r2: Rule[C]): Unit = {
      require(rules.contains(r1))
      require(rules.contains(r2))
      require(noDuplicateTag(rules))
      require(ListUtils.getIndex(rules, r1) < ListUtils.getIndex(rules, r2))

    }.ensuring (_ => r1 != r2)

    @ghost
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
    def lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame[C](rules: List[Rule[C]], r: Rule[C], tag: String, acc: List[String]): Unit = {
      require(acc.contains(tag))
      require(noDuplicateTag(rules, acc))
      require(rules.contains(r))

      rules match {
        case Nil()                   => check(false)
        case Cons(hd, tl) if hd == r => ()
        case Cons(hd, tl) if hd != r => lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame(tl, r, tag, Cons(hd.tag, acc))
      }
    }.ensuring (_ => r.tag != tag)

    @ghost
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

      rulesRec match {
        case Cons(hd, tl) if hd == rNSep => lemmaNonSepRuleNotContainsCharContainedInASepRuleInner(rules, rNSep, rSep, c)
        case Cons(hd, tl)                => lemmaNonSepRuleNotContainsCharContainedInASepRule(rules, tl, rNSep, rSep, c)
        case Nil()                       => ()
      }

    }.ensuring (_ => !rNSep.regex.usedCharacters.contains(c))

    @ghost
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

      rulesRec match {
        case Cons(hd, tl) if hd == rNSep => lemmaSepRuleNotContainsCharContainedInANonSepRuleInner(rules, rNSep, rSep, c)
        case Cons(hd, tl)                => lemmaSepRuleNotContainsCharContainedInANonSepRule(rules, tl, rNSep, rSep, c)
        case Nil()                       => ()
      }

    }.ensuring (_ => !rSep.regex.usedCharacters.contains(c))

    @ghost
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
    def lemmaRulesProduceEachTokenIndividuallyThenForAnyToken[C](rules: List[Rule[C]], tokens: List[Token[C]], t: Token[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(tokens.contains(t))
      require(rulesProduceEachTokenIndividually(rules, tokens))
      decreases(tokens)

      tokens match {
        case Cons(hd, tl) if hd == t => ()
        case Cons(hd, tl)            => lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, tl, t)
        case Nil()                   => ()
      }
    }.ensuring (_ => rulesProduceIndivualToken(rules, t))

    
    // Helper lemmas for tokensListTwoByTwoPredicate
    def tokensListTwoByTwoPredicateConcatList[C](l1: List[Token[C]], l2: List[Token[C]], rules: List[Rule[C]], p: (Token[C], Token[C], List[Rule[C]]) => Boolean): Unit = {
      require(tokensListTwoByTwoPredicate(l1, rules, p) && tokensListTwoByTwoPredicate(l2, rules, p))
      require(!l1.isEmpty && !l2.isEmpty)
      require(p(l1.last, l2.head, rules))
      decreases(l1.size)
      l1 match {
        case Cons(hd, tl) if !tl.isEmpty => tokensListTwoByTwoPredicateConcatList(tl, l2, rules, p)
        case Cons(hd, tl) if tl.isEmpty =>  ()
      }
    }.ensuring(_ => tokensListTwoByTwoPredicate(l1 ++ l2, rules, p))

    def tokensListTwoByTwoPredicateInstantiate[C](l: List[Token[C]], rules: List[Rule[C]], p: (Token[C], Token[C], List[Rule[C]]) => Boolean, t1: Token[C], t2: Token[C], i: BigInt): Unit = {
      require(tokensListTwoByTwoPredicate(l, rules, p))
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
        require(token.tag == rule.tag)
        require(token.rule == rule)
        require(input == token.characters ++ suffix)
        require({
          lemmaRuleInListAndRulesValidThenRuleIsValid(rule, rules)
          matchR(rule.regex, token.characters)
        })

        lemmaMaxPrefixTagSoFindMaxPrefOneRuleWithThisRule(rules, token.characters, input, suffix, rule)
        assert(maxPrefixOneRule(rule, input) == Some(token, suffix))

        assert(matchR(rule.regex, token.characters))
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
        matchRGenUnionSpec(rulesRegex(rules), l, token.characters) 

        assert(l.contains(rule.regex))
        assert(validRegex(rule.regex))
        assert(matchR(rule.regex, token.characters))
        ListUtils.lemmaContainsThenExists(l, rule.regex, rr => validRegex(rr) && matchR(rr, token.characters))
        assert(l.exists(rr => validRegex(rr) && matchR(rr, token.characters)))


    }.ensuring(_ => matchR(rulesRegex(rules), token.characters))
    
  }
}
