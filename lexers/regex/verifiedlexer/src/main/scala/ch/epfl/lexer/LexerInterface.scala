package ch.epfl.lexer

import VerifiedRegex.*
import stainless.collection.List

case class Token[C](characters: List[C], rule: Rule[C])
case class Rule[C](regex: Regex[C], tag: String, isSeparator: Boolean)

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
