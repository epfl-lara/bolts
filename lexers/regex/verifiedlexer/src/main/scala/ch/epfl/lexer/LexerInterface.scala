package ch.epfl.lexer

import VerifiedRegex.*
import stainless.collection.List
import stainless.annotation.law
import stainless.annotation.ghost
import stainless.lang.StaticChecks.*


// This is a tradeoff so that we can have different types in different tokens/rules
trait TokenValue

trait Bijection[C] {
  def toValue(l: List[C]): TokenValue
  def toCharacters(t: TokenValue): List[C]

  @law
  def toValueToCharacters(l: List[C]): Boolean = toCharacters(toValue(l)) == l

  @law @ghost
  def toCharactersToValue(t: TokenValue): Boolean = toValue(toCharacters(t)) == t
}

case class Token[C](value: TokenValue, rule: Rule[C], @ghost originalCharacters: List[C]) {
  require(originalCharacters == rule.transformation.toCharacters(value))
  def characters: List[C] = {
    rule.transformation.toCharacters(value)
  }.ensuring(res => res == originalCharacters)
}
case class Rule[C](regex: Regex[C], tag: String, isSeparator: Boolean, transformation: Bijection[C])

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
  def lex[C](rules: List[Rule[C]], input: List[C]): (List[Token[C]], List[C])

  /** Prints back the tokens to a list of characters of the type C
    *
    * @param l
    */
  def print[C](l: List[Token[C]]): List[C]


  /**
    * Predicate over a list of tokens, that applies a binary predicate to each pair of neighbouring tokens
    *
    * @param l
    * @param rules
    * @param pred
    * @return
    */
  def tokensListTwoByTwoPredicate[C](l: List[Token[C]], rules: List[Rule[C]], pred: (Token[C], Token[C], List[Rule[C]]) => Boolean): Boolean


}
