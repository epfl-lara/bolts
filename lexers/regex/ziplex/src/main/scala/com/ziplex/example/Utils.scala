/** Author: Samuel Chassot
  */

package com.ziplex.lexer.example

import com.mutablemaps.map.Hashable
import com.ziplex.lexer.VerifiedRegex._
import com.ziplex.lexer.Ord
import com.ziplex.lexer.MemoisationZipper
import com.ziplex.lexer.ZipperRegex._
import com.ziplex.lexer.Token
import stainless.annotation.extern
import scala.annotation.tailrec
import com.ziplex.lexer.Sequence
import com.ziplex.lexer.emptySeq
import com.ziplex.lexer.singletonSeq
import com.ziplex.lexer.seqFromList

import stainless.lang.Set

import stainless.collection.IArray
import com.ziplex.lexer.seqFromArray

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
  case object CharOrd extends Ord[Char] {
    override def lteq(x: Char, y: Char): Boolean = x <= y
  }

  /** Regex that matches any character in the interval [from, to] */
  def range(from: Char, to: Char): Regex[Char] = ElementRange(from, to, CharOrd)

  /** Union of the given intervals, after removing the characters of `except` from them (splitting the intervals around them).
    * Singleton intervals become ElementMatch.
    */
  def ranges(intervals: scala.List[(Char, Char)], except: String = ""): Regex[Char] =
    val pieces = intervals.flatMap((from, to) =>
      val cuts = except.filter(c => from <= c && c <= to).distinct.sorted
      val (before, start) = cuts.foldLeft((scala.List.empty[(Char, Char)], from)) { case ((acc, start), c) =>
        (if start < c then acc :+ (start, (c - 1).toChar) else acc, (c + 1).toChar)
      }
      if start <= to then before :+ (start, to) else before
    )
    if pieces.isEmpty then EmptyLang()
    else pieces.map((from, to) => if from == to then ElementMatch(from) else range(from, to)).reduceLeft(_ | _)
  extension (s: String) def anyOf: Regex[Char] = ElementSet(s.toCharArray().foldRight[Set[Char]](Set())((c, acc) => acc + c))
  def opt(r: Regex[Char]): Regex[Char] = r | epsilon
  extension (s: String) def toStainless: Sequence[Char] = seqFromArray(s.toCharArray().foldLeft[IArray[Char]](IArray.empty())((acc, c) => acc.append(c)))
  extension (r: Regex[Char]) def asString(): String = r match {
    case EmptyLang() => "∅"
    case EmptyExpr() => "ε"
    case ElementMatch(c) => c.toString
    case ElementSet(cs) => s"[${cs.toList.mkString("")}]"
    case ElementRange(from, to, _) => s"[$from-$to]"
    case Union(r1, r2) => s"(${r1.asString()} | ${r2.asString()})"
    case Concat(r1, r2) => s"${r1.asString()}${r2.asString()}"
    case Star(r1) => s"${r1.asString()}*"
  }

  val AZString: String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  val azString: String = "abcdefghijklmnopqrstuvwxyz"
  val digitsString: String = "0123456789"

  /** '\t' (9), '\n' (10), '\r' (13) and ' ' (32) */
  val whiteSpacesIntervals: scala.List[(Char, Char)] = scala.List(('\t', '\n'), ('\r', '\r'), (' ', ' '))
  /** All the ASCII punctuation characters (the 4 intervals between control characters, digits and letters), and a few
    * Latin-1 characters: '§', '°', 'à', 'ç', 'è', 'é', 'ù'
    */
  val specialCharsIntervals: scala.List[(Char, Char)] = scala.List(
    ('!', '/'), (':', '@'), ('[', '`'), ('{', '~'),
    ('§', '§'), ('°', '°'), ('à', 'à'), ('ç', 'é'), ('ù', 'ù')
  )
  val allIntervals: scala.List[(Char, Char)] = scala.List(('A', 'Z'), ('a', 'z'), ('0', '9')) ++ whiteSpacesIntervals ++ specialCharsIntervals

  private def intervalsString(intervals: scala.List[(Char, Char)]): String = intervals.flatMap((from, to) => from to to).mkString
  val whiteSpacesString: String = intervalsString(whiteSpacesIntervals)
  val specialCharsString: String = intervalsString(specialCharsIntervals)
  val allString: String = intervalsString(allIntervals)

  val AZ: Regex[Char] = range('A', 'Z')
  val az: Regex[Char] = range('a', 'z')
  val azAZ: Regex[Char] = AZ | az
  val digits: Regex[Char] = range('0', '9')
  val azAZDigits: Regex[Char] = AZ | az | digits
  val whiteSpaces: Regex[Char] = ranges(whiteSpacesIntervals)
  val epsilon: Regex[Char] = EmptyExpr()
  val specialChars: Regex[Char] = ranges(specialCharsIntervals)
  def specialCharsExcept(except: String): Regex[Char] = ranges(specialCharsIntervals, except)
  val all: Regex[Char] = ranges(allIntervals)
  def allExcept(except: String): Regex[Char] = ranges(allIntervals, except)

  /**
    * Creates a regex that matches any character in the interval [start, end].
    *
    * @param start the start character (inclusive)
    * @param end the end character (inclusive)
    * @return a regex that matches any character in the interval [start, end]
    */
  def interval(start: Char, end: Char): Regex[Char] = {
    require(start <= end)
    range(start, end)
  }

  extension (t: Token[Char]) def asString(): String = 
    def replaceSpecialCharacters(l: Sequence[Char]): Sequence[String] = 
      t.charsOf.map(c => if c == '\t' then "\\t" else if c == '\n' then "\\n" else f"$c")
      
    s"Token(${t.rule.tag}, \"${replaceSpecialCharacters(t.charsOf).efficientList.mkString("")}\")"
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
