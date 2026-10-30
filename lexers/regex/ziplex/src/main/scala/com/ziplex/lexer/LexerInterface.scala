/** Author: Samuel Chassot
  */

package com.ziplex.lexer

import VerifiedRegex.*
import stainless.annotation.law
import stainless.annotation.pure
import stainless.annotation.ghost
import stainless.annotation.inlineOnce
import stainless.annotation.opaque
import stainless.lang.Quantifiers.*

import stainless.collection.List
import stainless.collection.Cons
import stainless.collection.Nil
import stainless.collection.IArray

import scala.annotation.tailrec

import com.ziplex.lexer.Vector
import scala.reflect.ClassTag
import com.ziplex.lexer.BalanceConcObj.BalanceConc
import com.ziplex.lexer.BalanceConcObj
import com.ziplex.lexer.BalanceConcObj.Empty


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
// def emptySeq[T](): Sequence[T] = Vector.empty
// def singletonSeq[T](t: T): Sequence[T] = Vector.singleton(t)
// def seqFromList[T](l: List[T]): Sequence[T] = Vector.fromList(l)
// def seqFromArray[T: ClassTag](arr: IArray[T]): Sequence[T] = Vector.fromArray(arr)
type Sequence[T] = BalanceConc[T]
def emptySeq[T: ClassTag](): Sequence[T] = BalanceConcObj.empty[T]
def singletonSeq[T: ClassTag](t: T): Sequence[T] = BalanceConcObj.singleton(t)
def seqFromList[T: ClassTag](l: List[T]): Sequence[T] = BalanceConcObj.fromListB(l)
def seqFromArray[T: ClassTag](arr: IArray[T]): Sequence[T] = BalanceConcObj.fromArrayB(arr)
@ghost @inlineOnce @opaque def seqFromListBHdTlConstructive[T: ClassTag](hd: T, tl: List[T], s: Sequence[T]): Unit = {
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
case class Rule[C](regex: Regex[C], tag: String, transformation: TokenValueInjection[C])

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
  def lex[C: ClassTag](rules: List[Rule[C]], input: Sequence[C]): (Sequence[Token[C]], Sequence[C])

  /** Prints back the tokens to a sequence of characters of the type C
    *
    * @param l
    */
  def print[C: ClassTag](v: Sequence[Token[C]]): Sequence[C]


  /**
    * Invariant on the rules to ensure the list of rules is valid for lexing
    *
    * @param rules
    */
  def rulesInvariant[C: ClassTag](rules: List[Rule[C]]): Boolean

  // -------------- Soundness property of the lexer ----------------

  @law @ghost def maximalMunchPrinciple[C: ClassTag](
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
    @law @ghost def lexThenRulesProduceEachTokenIndividually[C: ClassTag](rules: List[Rule[C]], input: List[C]): Boolean = 
      (!rules.isEmpty && rulesInvariant(rules)) ==> {
        val (tokens, suffix) = lex(rules, seqFromList(input))
        rulesProduceEachTokenIndividuallyList(rules, tokens.list)
      }
  // -------------- Invertibility properties String -> tokens -> String ----------------

  @law @ghost def invertibleThroughLexing[C: ClassTag](rules: List[Rule[C]], input: List[C]): Boolean = 
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
  def separableTokens[C: ClassTag](tokens: Sequence[Token[C]], rules: List[Rule[C]]): Boolean

  /**
    * Predicate over a sequence of tokens, that applies the separableTokensPredicate binary predicate to each pair of consecutive tokens
    *
    * @param l
    * @param rules
    * @param pred
    * @return
    */
  def tokensListTwoByTwoPredicateSeparable[C: ClassTag](l: Sequence[Token[C]], from: BigInt, rules: List[Rule[C]]): Boolean

  /**
    * Predicate over 2 tokens, that indicates whether they are seaprable by a lexer represented by the rules
    *
    * @param t1
    * @param t2
    * @param rules
    * @return
    */
  def separableTokensPredicate[C: ClassTag](t1: Token[C], t2: Token[C], rules: List[Rule[C]]): Boolean

  /**
    * Predicate that indicates whether the rules are compatible with the tokens
    * namly that the rules can produce each token individually
    *
    * @param rules
    * @param tokens
    */
  @ghost def rulesProduceEachTokenIndividuallyList[C: ClassTag](rules: List[Rule[C]], tokens: List[Token[C]]): Boolean
  def rulesProduceIndividualToken[C: ClassTag](rules: List[Rule[C]], token: Token[C]): Boolean

  @law @ghost def separableTokensThenInvertibleThroughPrinting[C: ClassTag](rules: List[Rule[C]], tokens: List[Token[C]]): Boolean = 
    (!rules.isEmpty && 
    rulesInvariant(rules) && 
    rulesProduceEachTokenIndividuallyList(rules, tokens) && 
    tokensListTwoByTwoPredicateSeparable(seqFromList(tokens), 0, rules))
    ==>  
    (lex(rules, print(seqFromList(tokens)))._1.list == tokens)

}