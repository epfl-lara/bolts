package ch.epfl.lexer

import VerifiedRegex.*
import stainless.collection.List
import stainless.annotation.law
import stainless.annotation.pure
import stainless.annotation.ghost
import stainless.lang.Quantifiers.*
import stainless.lang._

import stainless.collection.List
import stainless.collection.Cons
import stainless.collection.Nil


import stainless.lang.StaticChecks.*
// import ch.epfl.lexer.OptimisedChecks.*

// This is a tradeoff so that we can have different types in different tokens/rules
trait TokenValue

case class Token[C](value: TokenValue, rule: Rule[C], size: BigInt, @ghost originalCharacters: Vector[C]) {
  require(originalCharacters == rule.transformation.witness(value))
  require(size == originalCharacters.size)
  def characters: Vector[C] = {
    rule.transformation.witness(value)
  }.ensuring(res => res == originalCharacters && res.list == originalCharacters.list)

  def lemmaCharactersSize(): Unit = {
  }.ensuring(_ => size == originalCharacters.size)
}
case class Rule[C](regex: Regex[C], tag: String, isSeparator: Boolean, transformation: Injection[Vector[C], TokenValue])

trait LexerInterface {

  /** Main function of the lexer
    *
    * It lexes the input list of characters using the set of rules
    *
    * It returns the produced list of Tokens and the remaining untokenised characters (normally empty)
    *
    * @param rules
    * @param input
    */
  def lex[C](rules: List[Rule[C]], input: Vector[C]): (Vector[Token[C]], Vector[C])

  /** Prints back the tokens to a list of characters of the type C
    *
    * @param l
    */
  def print[C](v: Vector[Token[C]], from: BigInt = 0): Vector[C]


  /**
    * Invariant on the rules to ensure the list of rules is valid for lexing
    *
    * @param rules
    */
  def rulesInvariant[C](rules: List[Rule[C]]): Boolean

  // -------------- Soundness property of the lexer ----------------

  @law @ghost def maximalMunchPrinciple[C](
        rules: List[Rule[C]],
        input: List[C],
        suffix: List[C],
        tokens: List[Token[C]],
        r: Rule[C],
        otherR: Rule[C],
        otherP: List[C]
    ): Boolean = {
      val (lexedTokens, lexedSuffix) = lex(rules, Vector.fromList(input))
      (!rules.isEmpty) &&
      (rulesInvariant(rules)) &&
      (rules.contains(r)) &&
      (rules.contains(otherR)) &&
      ((lexedTokens.list, lexedSuffix.list) == (tokens, suffix)) &&
      (tokens.isEmpty || tokens.head.characters.list.size <= otherP.size) &&
      (tokens.isEmpty || tokens.head.rule == r) &&
      (ListUtils.isPrefix(otherP, input)) &&
      (r != otherR) &&
      (tokens.isEmpty || VerifiedRegexMatcher.matchR(r.regex, tokens.head.characters.list)) 
      ==> 
      (if (ListUtils.getIndex(rules, otherR) < ListUtils.getIndex(rules, r)) !VerifiedRegexMatcher.matchR(otherR.regex, otherP)
      else tokens.size > 0 && otherP.size <= tokens.head.characters.size || !VerifiedRegexMatcher.matchR(otherR.regex, otherP))
    }
  // -------------- Invertibility properties String -> tokens -> String ----------------

  @law @ghost def invertibleThroughLexing[C](rules: List[Rule[C]], input: List[C]): Boolean = 
    (!rules.isEmpty && rulesInvariant(rules)) ==> 
    {
      val (tokens, suffix) = lex(rules, Vector.fromList(input))
      print(tokens).list ++ suffix.list == input
    }


  // -------------- Invertibility properties with local condition ----------------

  /**
    * Predicate that indicates whether the tokens are seaprable by a lexer represented by the rules
    * 
    * Calls the tokensListTwoByTwoPredicate with the separableTokensPredicate
    *
    * @param tokens
    * @param rules
    * @return
    */
  def separableTokens[C](tokens: Vector[Token[C]], rules: List[Rule[C]]): Boolean = tokensListTwoByTwoPredicate(tokens, 0, rules, separableTokensPredicate)

  /**
    * Predicate over a vector of tokens, that applies a binary predicate to each pair of neighbouring tokens
    *
    * @param l
    * @param rules
    * @param pred
    * @return
    */
  def tokensListTwoByTwoPredicate[C](l: Vector[Token[C]], from: BigInt, rules: List[Rule[C]], pred: (Token[C], Token[C], List[Rule[C]]) => Boolean): Boolean

  /**
    * Predicate over 2 tokens, that indicates whether they are seaprable by a lexer represented by the rules
    *
    * @param t1
    * @param t2
    * @param rules
    * @return
    */
  def separableTokensPredicate[C](t1: Token[C], t2: Token[C], rules: List[Rule[C]]): Boolean

  /**
    * Predicate that indicates whether the rules are compatible with the tokens
    * namly that the rules can produce each token individually
    *
    * @param rules
    * @param tokens
    */
  def rulesProduceEachTokenIndividually[C](rules: List[Rule[C]], tokens: Vector[Token[C]]): Boolean
  def rulesProduceIndivualToken[C](rules: List[Rule[C]], token: Token[C]): Boolean

  @law @ghost def separableTokensThenInvertibleThroughPrinting[C](rules: List[Rule[C]], tokens: List[Token[C]]): Boolean = 
    (!rules.isEmpty && 
    rulesInvariant(rules) && 
    rulesProduceEachTokenIndividually(rules, Vector.fromList(tokens)) && 
    tokensListTwoByTwoPredicate(Vector.fromList(tokens), 0, rules, separableTokensPredicate))
    ==>  
    (lex(rules, print(Vector.fromList(tokens)))._1.list == tokens)


  // -------------- Invertibility properties with separator tokens and rules ----------------
  
  /**
    * Predicate that indicates whether the rules of the two subtypes of rules
    * i.e., separator and non-separator rules,
    * are using each a disjoint set of characters.
    * 
    * In other words, the set of characters used by the separator rules is disjoint
    * from the set of characters used by the non-separator rules.
    *
    * @param rules
    *
    * @param rules
    * @param rulesRec
    */
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

  /** Prints back the tokens to a vector of characters of the type C, by adding a separatorToken between each, and after the last
    *
    * @param l
    * @param separatorToken
    */
  def printWithSeparatorToken[C](l: Vector[Token[C]], separatorToken: Token[C], from: BigInt = 0): Vector[C]

  /** Prints back the tokens to a list of characters of the type C, by adding a separatorToken between tokens when the maxPrefix would return
      * another token if printed back to back.
      * 
      * This works by basically trying to print the next token, and trying to retokenize the result.
      * If the result is not the same as the original token, then we add a separator token.
      *
      * @param l
      * @param separatorToken
      */
  def printWithSeparatorTokenWhenNeeded[C](rules: List[Rule[C]], l: Vector[Token[C]], separatorToken: Token[C], from: BigInt = 0): Vector[C]


  @law @ghost def invertibleThroughPrintingWithSeparatorWhenNeeded[C](rules: List[Rule[C]], tokens: List[Token[C]], separatorToken: Token[C]): Boolean =
    (!rules.isEmpty && 
      rulesInvariant(rules) && 
      rulesProduceEachTokenIndividually(rules, Vector.fromList(tokens)) &&
      sepAndNonSepRulesDisjointChars(rules, rules) && 
      rulesProduceIndivualToken(rules, separatorToken) &&
      tokens.forall(t => !t.rule.isSeparator) &&
      separatorToken.rule.isSeparator
    ) ==>
      (lex(rules, printWithSeparatorTokenWhenNeeded(rules, Vector.fromList(tokens), separatorToken))._1.list.filter(!_.rule.isSeparator) == tokens)

  @law @ghost def invertibleThroughPrintingWithSeparator[C](rules: List[Rule[C]], tokens: List[Token[C]], separatorToken: Token[C]): Boolean =
    (!rules.isEmpty && 
      rulesInvariant(rules) && 
      rulesProduceEachTokenIndividually(rules, Vector.fromList(tokens)) &&
      sepAndNonSepRulesDisjointChars(rules, rules) && 
      rulesProduceIndivualToken(rules, separatorToken) &&
      tokens.forall(t => !t.rule.isSeparator) &&
      separatorToken.rule.isSeparator
    ) ==>
      (lex(rules, printWithSeparatorToken(Vector.fromList(tokens), separatorToken))._1.list.filter(!_.rule.isSeparator) == tokens)

}