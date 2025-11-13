package com.ziplex.lexer.example

import com.mutablemaps.map.Hashable
import com.ziplex.lexer.VerifiedRegex._
import com.ziplex.lexer.MemoisationZipper
import com.ziplex.lexer.ZipperRegex._
import com.ziplex.lexer.Token
import stainless.annotation.extern
import scala.annotation.tailrec
import com.ziplex.lexer.Sequence
import com.ziplex.lexer.emptySeq
import com.ziplex.lexer.singletonSeq
import com.ziplex.lexer.seqFromList

@extern
object RegexUtils:
  extension (s: String) def r: Regex[Char] = s.toCharArray().foldRight[Regex[Char]](EmptyExpr())((c, acc) => if isEmptyExpr(acc) then ElementMatch(c) else Concat(ElementMatch(c), acc))
  extension (c: Char) def r: Regex[Char] = ElementMatch(c)
  extension (r: Regex[Char]) infix def | (r2: Regex[Char]): Regex[Char] = Union(r, r2)
  extension (r: Regex[Char]) def * : Regex[Char] = Star(r)
  extension (r: Regex[Char]) def + : Regex[Char] = r ~ Star(r)
  extension (r: Regex[Char]) infix def ~ (r2: Regex[Char]): Regex[Char] = Concat(r, r2)
  extension (s: String) infix def | (s2: String): Regex[Char] = r(s) | r(s2)
  extension (s: String) infix def ~ (s2: String): Regex[Char] = r(s) ~ r(s2)
  extension (s: String) def * : Regex[Char] = r(s).*
  extension (s: String) def anyOf: Regex[Char] = s.toCharArray().foldRight[Regex[Char]](EmptyLang())((c, acc) => if isEmptyLang(acc) then ElementMatch(c) else Union(ElementMatch(c), acc))
  def opt(r: Regex[Char]): Regex[Char] = r | epsilon
  extension (s: String) def toStainless: Sequence[Char] = s.toCharArray().foldLeft[Sequence[Char]](emptySeq)((acc, c) => acc.append(c))
  extension (r: Regex[Char]) def asString(): String = r match {
    case EmptyLang() => "∅"
    case EmptyExpr() => "ε"
    case ElementMatch(c) => c.toString
    case Union(r1, r2) => s"(${r1.asString()} | ${r2.asString()})"
    case Concat(r1, r2) => s"${r1.asString()}${r2.asString()}"
    case Star(r1) => s"${r1.asString()}*"
  }

  val AZString: String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  val azString: String = "abcdefghijklmnopqrstuvwxyz"
  val digitsString: String = "0123456789"
  val whiteSpacesString: String = " \n\t\r"
  val specialCharsString: String = "+-_/*!?=()[]{}<>|\\&%$§§°`^@#~;:,.éàèçù\'\"`"
  val allString: String = AZString + azString + digitsString + whiteSpacesString + specialCharsString

  val AZ: Regex[Char] = anyOf(AZString)
  val az: Regex[Char] = anyOf(azString)
  val azAZ: Regex[Char] = az | AZ
  val digits: Regex[Char] = anyOf(digitsString)
  val whiteSpaces: Regex[Char] = anyOf(whiteSpacesString)
  val epsilon: Regex[Char] = EmptyExpr()
  val specialChars: Regex[Char] = anyOf(specialCharsString)
  val all: Regex[Char] = anyOf(allString)

  /**
    * Creates a regex that matches any character in the interval [start, end].
    *
    * @param start the start character (inclusive)
    * @param end the end character (inclusive)
    * @return a regex that matches any character in the interval [start, end]
    */
  @tailrec
  def interval(start: Char, end: Char, acc: Regex[Char] = EmptyExpr()): Regex[Char] = {
    require(start <= end)
    if start == end then Union(ElementMatch(start), acc)
    else interval((start + 1).toChar, end, Union(ElementMatch(start), acc))
  }

  extension (t: Token[Char]) def asString(): String = 
    def replaceSpecialCharacters(l: Sequence[Char]): Sequence[String] = 
      t.charsOf.map(c => if c == '\t' then "\\t" else if c == '\n' then "\\n" else f"$c")
      
    s"Token(${t.rule.tag}, \"${replaceSpecialCharacters(t.charsOf).list.mkString("")}\")"
  extension [A] (l: stainless.collection.List[A]) def mkString(inter: String) : String = l match {
    case stainless.collection.Nil() => ""
    case stainless.collection.Cons(h, t) => h.toString + (if t.isEmpty then "" else inter + t.mkString(inter))
  }
  extension (c: Context[Char]) def asStringContext(): String = s"Sequence(${c.exprs.map(regex => regex.asString()).mkString(", ")})"
  extension (z: Zipper[Char]) def asStringZipper(): String = s"Set(${z.map(c => c.asStringContext()).mkString(", ")})"


  
  extension (l: scala.collection.immutable.List[Char]) @tailrec def toStainlessList(acc: stainless.collection.List[Char] = stainless.collection.Nil[Char]()): stainless.collection.List[Char] = l match {
    case l: scala.collection.immutable.List[Char] if l.isEmpty => acc
    case l: scala.collection.immutable.List[Char] => l.tail.toStainlessList(acc :+ l.head)
  }
  extension (s: String) def toStainlessList: stainless.collection.List[Char] = s.toCharArray().toList.toStainlessList()
end RegexUtils
