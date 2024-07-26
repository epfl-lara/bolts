/** Author: Samuel Chassot
  */

package ch.epfl.benchmark

import stainless.annotation._
import stainless.lang._
import stainless.proof.check
import stainless.lang.StaticChecks.*
import stainless.collection._

import ch.epfl.chassot.Hashable
import ch.epfl.lexer.VerifiedRegex._


object RegexUtils {
  extension (s: String) def r: Regex[Char] = s.toCharArray().toList.foldRight[Regex[Char]](EmptyExpr())((c, acc) => Concat(ElementMatch(c), acc))
  extension (r: Regex[Char]) infix def + (r2: Regex[Char]): Regex[Char] = Union(r, r2)
  extension (r: Regex[Char]) def * : Regex[Char] = Star(r)
  extension (r: Regex[Char]) def + : Regex[Char] = r ~ Star(r)
  extension (r: Regex[Char]) infix def ~ (r2: Regex[Char]): Regex[Char] = Concat(r, r2)
  extension (s: String) infix def + (s2: String): Regex[Char] = r(s) + r(s2)
  extension (s: String) infix def ~ (s2: String): Regex[Char] = r(s) ~ r(s2)
  extension (s: String) def * : Regex[Char] = r(s).*
  extension (s: String) def anyOf: Regex[Char] = s.toCharArray().toList.foldRight[Regex[Char]](EmptyLang())((c, acc) => Union(ElementMatch(c), acc))
  extension (s: String) def toStainless: stainless.collection.List[Char] = toStainlessList(s.toCharArray().toList)


  def toStainlessList(l: scala.collection.immutable.List[Char]): stainless.collection.List[Char] = l match {
    case l: scala.collection.immutable.List[Char] if l.isEmpty => stainless.collection.Nil[Char]()
    case l: scala.collection.immutable.List[Char] => stainless.collection.Cons(l.head, toStainlessList(l.tail))
  }
}
