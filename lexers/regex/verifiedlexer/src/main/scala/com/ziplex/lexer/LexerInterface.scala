package com.ziplex.lexer

import VerifiedRegex.*
import stainless.collection.List
import stainless.annotation.law
import stainless.annotation.pure
import stainless.annotation.ghost
import stainless.annotation.inlineOnce
import stainless.annotation.opaque
import stainless.lang.Quantifiers.*

import stainless.collection.List
import stainless.collection.Cons
import stainless.collection.Nil

import scala.annotation.tailrec

import com.ziplex.lexer.Vector
import com.ziplex.lexer.BalanceConcObj.BalanceConc
import com.ziplex.lexer.BalanceConcObj

// BEGIN uncomment for verification ------------------------------------------
import stainless.lang.StaticChecks._
import stainless.lang.{ghost => ghostExpr, _}
// END uncomment for verification --------------------------------------------
// BEGIN imports for benchmarking -------------------------------------------
// import stainless.lang.{ghost => _, decreases => _, unfold => _, _}
// import com.ziplex.lexer.OptimisedChecks.*
// import Predef.{assert => _, Ensuring => _, require => _, ???}

// @tailrec
// def dummyInterface(x: BigInt): BigInt = {
//   if (x == BigInt(0)) then x
//   else dummyInterface(x - BigInt(1))
// }.ensuring( res => res == BigInt(0))
// END imports for benchmarking ---------------------------------------------


// Pick the structure used to represent the strings as sequences of characters
// Vector is a trusted wrapper around the Vector datastructure from the Scala standard library
// BalanceConc is a sequence implementation based on a binary tree, fully verified although slower

// type Sequence[T] = Vector[T]
// inline def emptySeq[T]: Sequence[T] = Vector.empty
// inline def singletonSeq[T](t: T): Sequence[T] = Vector.singleton(t)
// inline def seqFromList[T](l: List[T]): Sequence[T] = Vector.fromList(l)

// type Sequence[T] = BalanceConc[T]
// inline def emptySeq[T]: Sequence[T] = BalanceConcObj.emptyB
// inline def singletonSeq[T](t: T): Sequence[T] = BalanceConcObj.singleton(t)
// inline def seqFromList[T](l: List[T]): Sequence[T] = BalanceConcObj.fromListB(l)

type Sequence[T] = BalanceConc[T]
inline def emptySeq[T]: Sequence[T] = BalanceConcObj.emptyB
inline def singletonSeq[T](t: T): Sequence[T] = BalanceConcObj.singleton(t)
inline def seqFromList[T](l: List[T]): Sequence[T] = BalanceConcObj.fromListB(l)

@ghost @inlineOnce @opaque def seqFromListBHdTlConstructive[T](hd: T, tl: List[T], s: Sequence[T]): Unit = {
  require(s.list == seqFromList(hd :: tl).list)
      // Vector.fromListHdTlConstructive(hd, tl, s)
      BalanceConcObj.fromListHdTlConstructive(hd, tl, s)
  }.ensuring(_ => s.list == seqFromList(tl).prepend(hd).list)

trait TokenValue

final case class Token[C](value: TokenValue, rule: Rule[C], size: BigInt, @ghost originalCharacters: List[C]) {
  require(!originalCharacters.isEmpty)
  require(originalCharacters == rule.transformation.toChars(value).list)
  require(size == originalCharacters.size)
  def charsOf: Sequence[C] = {
    rule.transformation.toChars(value)
  }.ensuring(res => res.list == originalCharacters)

  def lemmaCharactersSize(): Unit = {
  }.ensuring(_ => size == originalCharacters.size)
}
case class Rule[C](regex: Regex[C], tag: String, isSeparator: Boolean, transformation: TokenValueInjection[C])

@ghost inline def semiInverseBodyModEq[C](toChars: TokenValue => Sequence[C], toValue: Sequence[C] => TokenValue): Boolean = 
  Forall((chars: Sequence[C]) => toChars(toValue(chars)).list == chars.list)

@ghost inline def equivClassesBody[C](toChars: TokenValue => Sequence[C], toValue: Sequence[C] => TokenValue): Boolean = 
  Forall2((chars1: Sequence[C], chars2: Sequence[C]) => (chars1.list == chars2.list) ==> (toValue(chars1) == toValue(chars2)))

@ghost def semiInverseModEq[C](toChars: TokenValue => Sequence[C], toValue: Sequence[C] => TokenValue): Boolean = semiInverseBodyModEq(toChars, toValue)
@ghost def equivClasses[C](toChars: TokenValue => Sequence[C], toValue: Sequence[C] => TokenValue): Boolean = equivClassesBody(toChars, toValue)
case class TokenValueInjection[C](toValue: Sequence[C] => TokenValue, toChars: TokenValue => Sequence[C]) {
  require(semiInverseModEq(toChars, toValue))
  require(equivClasses(toChars, toValue))
  def apply(chars: Sequence[C]): TokenValue = toValue(chars)
  @ghost def lemmaInv(): Unit = {}.ensuring(_ => semiInverseModEq(toChars, toValue) && equivClasses(toChars, toValue))
  @ghost def lemmaSemiInverse(c: Sequence[C]): Unit = {
    ForallOf((chars: Sequence[C]) => toChars(toValue(chars)).list == chars.list)(c)
  }.ensuring(_ => toChars(toValue(c)).list == c.list)
  @ghost def lemmaEqSameImage(c1: Sequence[C], c2: Sequence[C]): Unit = {
    require(c1.list == c2.list)
    Forall2of((chars1: Sequence[C], chars2: Sequence[C]) => (chars1.list == chars2.list) ==> (toValue(chars1) == toValue(chars2)))(c1, c2)
  }.ensuring(_ => toValue(c1) == toValue(c2))
} 


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
  def lex[C](rules: List[Rule[C]], input: Sequence[C]): (Sequence[Token[C]], Sequence[C])

  /** Prints back the tokens to a sequence of characters of the type C
    *
    * @param l
    */
  def print[C](v: Sequence[Token[C]]): Sequence[C]


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
      val (lexedTokens, lexedSuffix) = lex(rules, seqFromList(input))
      (!rules.isEmpty) &&
      (rulesInvariant(rules)) &&
      (rules.contains(r)) &&
      (rules.contains(otherR)) &&
      ((lexedTokens.list, lexedSuffix.list) == (tokens, suffix)) &&
      (tokens.isEmpty || tokens.head.charsOf.list.size <= otherP.size) &&
      (tokens.isEmpty || tokens.head.rule == r) &&
      (ListUtils.isPrefix(otherP, input)) &&
      (r != otherR) &&
      (validRegex(r.regex)) && // should be guranteed by an invariant on rules
      (validRegex(otherR.regex)) && // should be guranteed by an invariant on rules
      (tokens.isEmpty || VerifiedRegexMatcher.matchR(r.regex, tokens.head.charsOf.list)) 
      ==> 
      (if (ListUtils.getIndex(rules, otherR) < ListUtils.getIndex(rules, r)) !VerifiedRegexMatcher.matchR(otherR.regex, otherP)
      else tokens.size > 0 && otherP.size <= tokens.head.charsOf.size || !VerifiedRegexMatcher.matchR(otherR.regex, otherP))
    }

    /**
      * Means that tokens.forall(t => lex(rules, t.characters) == (t, Nil()))
      * 
      * This proves that each token can be produced individually by the lexer, i.e., the tokens are compatible with the rules
      * 
      * This is necessary to prove invertibility properties
      *
      * @param rules
      * @param input
      * @return
      */
    @law @ghost def lexThenRulesProduceEachTokenIndividually[C](rules: List[Rule[C]], input: List[C]): Boolean = 
      (!rules.isEmpty && rulesInvariant(rules)) ==> {
        val (tokens, suffix) = lex(rules, seqFromList(input))
        rulesProduceEachTokenIndividually(rules, tokens)
      }
  // -------------- Invertibility properties String -> tokens -> String ----------------

  @law @ghost def invertibleThroughLexing[C](rules: List[Rule[C]], input: List[C]): Boolean = 
    (!rules.isEmpty && rulesInvariant(rules)) ==> 
    {
      val (tokens, suffix) = lex(rules, seqFromList(input))
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
  def separableTokens[C](tokens: Sequence[Token[C]], rules: List[Rule[C]]): Boolean

  /**
    * Predicate over a sequence of tokens, that applies the separableTokensPredicate binary predicate to each pair of consecutive tokens
    *
    * @param l
    * @param rules
    * @param pred
    * @return
    */
  def tokensListTwoByTwoPredicateSeparable[C](l: Sequence[Token[C]], from: BigInt, rules: List[Rule[C]]): Boolean

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
  def rulesProduceEachTokenIndividually[C](rules: List[Rule[C]], tokens: Sequence[Token[C]]): Boolean
  def rulesProduceIndividualToken[C](rules: List[Rule[C]], token: Token[C]): Boolean

  @law @ghost def separableTokensThenInvertibleThroughPrinting[C](rules: List[Rule[C]], tokens: List[Token[C]]): Boolean = 
    (!rules.isEmpty && 
    rulesInvariant(rules) && 
    rulesProduceEachTokenIndividually(rules, seqFromList(tokens)) && 
    tokensListTwoByTwoPredicateSeparable(seqFromList(tokens), 0, rules))
    ==>  
    (lex(rules, print(seqFromList(tokens)))._1.list == tokens)


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

  /** Prints back the tokens to a sequence of characters of the type C, by adding a separatorToken between each, and after the last
    *
    * @param l
    * @param separatorToken
    */
  def printWithSeparatorToken[C](l: Sequence[Token[C]], separatorToken: Token[C], from: BigInt = 0): Sequence[C]

  /**
    * Returns the Sequence of tokens v with the separator token interleaved between each pair, as
    * t(0), sep, t(1), sep, ...., t(n), sep
    * 
    * printing this results in the same string as calling printWithSeparatorToken
    *
    * @param v
    * @param separatorToken
    * @param from
    * @param acc
    * @return
    */
  def withSeparatorToken[C](v: Sequence[Token[C]], separatorToken: Token[C]): Sequence[Token[C]] = {
    require(separatorToken.rule.isSeparator)
    ??? : Sequence[Token[C]]
  }.ensuring(res => print(res).list == printWithSeparatorToken(v, separatorToken).list)


  /** Prints back the tokens to a list of characters of the type C, by adding a separatorToken between tokens when the maxPrefix would return
      * another token if printed back to back.
      * 
      * This works by basically trying to print the next token, and trying to retokenize the result.
      * If the result is not the same as the original token, then we add a separator token.
      *
      * @param l
      * @param separatorToken
      */
  def printWithSeparatorTokenWhenNeeded[C](rules: List[Rule[C]], l: Sequence[Token[C]], separatorToken: Token[C], from: BigInt = 0): Sequence[C]

  @law @ghost def interleavingSeparatorTokenMakesSeparableSequence[C](rules: List[Rule[C]], tokens: Sequence[Token[C]], separatorToken: Token[C]): Boolean =
    (!rules.isEmpty && 
      rulesInvariant(rules) && 
      rulesProduceEachTokenIndividually(rules, tokens) &&
      sepAndNonSepRulesDisjointChars(rules, rules) && 
      rulesProduceIndividualToken(rules, separatorToken) &&
      tokens.forall(!_.rule.isSeparator) &&
      separatorToken.rule.isSeparator
    ) ==> 
      (separableTokens(withSeparatorToken(tokens, separatorToken), rules))

  @law @ghost def invertibleThroughPrintingWithSeparatorWhenNeeded[C](rules: List[Rule[C]], tokens: List[Token[C]], separatorToken: Token[C]): Boolean =
    (!rules.isEmpty && 
      rulesInvariant(rules) && 
      rulesProduceEachTokenIndividually(rules, seqFromList(tokens)) &&
      sepAndNonSepRulesDisjointChars(rules, rules) && 
      rulesProduceIndividualToken(rules, separatorToken) &&
      tokens.forall(t => !t.rule.isSeparator) &&
      separatorToken.rule.isSeparator
    ) ==>
      (lex(rules, printWithSeparatorTokenWhenNeeded(rules, seqFromList(tokens), separatorToken))._1.list.filter(!_.rule.isSeparator) == tokens)

  @law @ghost def invertibleThroughPrintingWithSeparator[C](rules: List[Rule[C]], tokens: List[Token[C]], separatorToken: Token[C]): Boolean =
    (!rules.isEmpty && 
      rulesInvariant(rules) && 
      rulesProduceEachTokenIndividually(rules, seqFromList(tokens)) &&
      sepAndNonSepRulesDisjointChars(rules, rules) && 
      rulesProduceIndividualToken(rules, separatorToken) &&
      tokens.forall(t => !t.rule.isSeparator) &&
      separatorToken.rule.isSeparator
    ) ==>
      (lex(rules, printWithSeparatorToken(seqFromList(tokens), separatorToken))._1.list.filter(!_.rule.isSeparator) == tokens)

}