/** Author: Samuel Chassot
  */

package ch.epfl.lexer.benchmark

import stainless.annotation._
import stainless.lang._
import stainless.proof.check
import stainless.lang.StaticChecks._
import stainless.collection._

import ch.epfl.map.Hashable
import ch.epfl.lexer.VerifiedRegex._
import ch.epfl.lexer.ZipperRegex._
import ch.epfl.lexer.Token

import scala.annotation.tailrec

@extern
object RegexUtils {
  extension (s: String) def r: Regex[Char] = s.toCharArray().toList.foldRight[Regex[Char]](EmptyExpr())((c, acc) => Concat(ElementMatch(c), acc))
  extension (r: Regex[Char]) infix def | (r2: Regex[Char]): Regex[Char] = Union(r, r2)
  extension (r: Regex[Char]) def * : Regex[Char] = Star(r)
  extension (r: Regex[Char]) def + : Regex[Char] = r ~ Star(r)
  extension (r: Regex[Char]) infix def ~ (r2: Regex[Char]): Regex[Char] = Concat(r, r2)
  extension (s: String) infix def | (s2: String): Regex[Char] = r(s) | r(s2)
  extension (s: String) infix def ~ (s2: String): Regex[Char] = r(s) ~ r(s2)
  extension (s: String) def * : Regex[Char] = r(s).*
  extension (s: String) def anyOf: Regex[Char] = s.toCharArray().toList.foldRight[Regex[Char]](EmptyLang())((c, acc) => Union(ElementMatch(c), acc))
  extension (s: String) def toStainless: stainless.collection.List[Char] = toStainlessList(s.toCharArray().toList)
  extension (r: Regex[Char]) def asString(): String = r match {
    case EmptyLang() => "∅"
    case EmptyExpr() => "ε"
    case ElementMatch(c) => c.toString
    case Union(r1, r2) => s"(${r1.asString()} | ${r2.asString()})"
    case Concat(r1, r2) => s"${r1.asString()}${r2.asString()}"
    case Star(r1) => s"${r1.asString()}*"
  }

  val letterRegex: Regex[Char] = anyOf("abcdefghijklmnopqrstuvwxyz") | anyOf("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
  val digitRegex: Regex[Char] = anyOf("0123456789")
  val whiteSpaceRegex: Regex[Char] = anyOf(" \n\t")
  val specialCharRegex: Regex[Char] = anyOf("+-/*!?=()[]{}<>|\\&%$§§°`^@#~;:,.éàèçù\'\"`")
  val specialCharRegexWithoutSlashAndStar: Regex[Char] = anyOf("+-!?=()[]{}<>|\\&%$§§°`^@#~;:,.éàèçù\'\"`")

  extension (t: Token[Char]) def asString(): String = 
    def replaceSpecialCharacters(l: List[Char]): List[String] = 
      // t.characters.map(c => if c == '\t' then "\\t" else if c == '\n' then "\\n" else f"$c")
      l match {
        case Nil() => Nil()
        case Cons(h, tl) if h == '\t'  => Cons("\\t", replaceSpecialCharacters(tl))
        case Cons(h, tl) if h == '\n'  => Cons("\\n", replaceSpecialCharacters(tl))
        case Cons(h, tl) if h == '\r'  => Cons("\\r", replaceSpecialCharacters(tl))
        case Cons(h, tl) if h == '\b'  => Cons("\\b", replaceSpecialCharacters(tl))
        case Cons(h, tl) => Cons(f"$h", replaceSpecialCharacters(tl))
      }
    s"Token(${t.rule.tag}, \"${replaceSpecialCharacters(t.characters).mkString("")}\")"
  extension [A] (l: stainless.collection.List[A]) def mkString(inter: String) : String = l match {
    case stainless.collection.Nil() => ""
    case stainless.collection.Cons(h, t) => h.toString + (if t.isEmpty then "" else inter + t.mkString(inter))
  }
  extension (c: Context[Char]) def asStringContext(): String = s"Sequence(${c.exprs.map(regex => regex.asString()).mkString(", ")})"
  extension (z: Zipper[Char]) def asStringZipper(): String = s"Set(${z.map(c => c.asStringContext()).mkString(", ")})"


  @tailrec
  def toStainlessList(l: scala.collection.immutable.List[Char], acc: stainless.collection.List[Char] = stainless.collection.Nil[Char]()): stainless.collection.List[Char] = l match {
    case l: scala.collection.immutable.List[Char] if l.isEmpty => acc
    case l: scala.collection.immutable.List[Char] => toStainlessList(l.tail, acc :+ l.head)
  }
}
