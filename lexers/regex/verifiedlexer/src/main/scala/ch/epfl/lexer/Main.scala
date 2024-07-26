package ch.epfl.lexer

import ch.epfl.chassot.MutableHashMap
import ch.epfl.lexer.VerifiedRegex._
import ch.epfl.lexer.VerifiedRegexMatcher._
import ch.epfl.lexer.Memoisation._
import ch.epfl.benchmark.RegexUtils._
import stainless.annotation._
import stainless.lang._
import stainless.collection._
import ch.epfl.chassot.Hashable

object Main {
  def main(args: Array[String]): Unit = {
    testRegex()
  }
}

def testRegex(): Unit = {
  val cache: Cache[Char] = Cache(MutableHashMap.getEmptyHashMap(_ => EmptyLang(), KeyHashable))
  val r1 = ("a".r + "b".r).*
  println(f"r1 = ${r1}")
  println(f"list = ${toStainlessList("ab".toCharArray().toList)}")
  println(f"matching a with r1 without cache: ${matchR(r1, Cons('a', Nil()))}")
  println(f"matching a with r1: ${matchRMem(r1, toStainlessList("a".toCharArray().toList))(cache)}")
  println(f"matching abababababababababbbababbababbbabab with r1: ${matchRMem(r1, toStainlessList("abababababababababbbababbababbbabab".toCharArray().toList))(cache)}")
  println(f"matching abchihihi with r1: ${matchRMem(r1, toStainlessList("abchihihi".toCharArray().toList))(cache)}")

  val r2 = "abcdedfghijklmnopqrstuvwxyz.".anyOf.+ ~ "@".r ~ "abcdedfghijklmnopqrstuvwxyz".anyOf.+ ~ ".".r ~ "abcdedfghijklmnopqrstuvwxyz".anyOf.+
  println(f"r2 = ${r2}")
  val s21 = "samuel.chassot@gmail.com"
  println(f"matching $s21 with r2: ${matchRMem(r2, toStainlessList(s21.toCharArray().toList))(cache)}")
}

def toStainlessList(l: scala.collection.immutable.List[Char]): stainless.collection.List[Char] = l match {
  case l: scala.collection.immutable.List[Char] if l.isEmpty => stainless.collection.Nil[Char]()
  case l: scala.collection.immutable.List[Char] => stainless.collection.Cons(l.head, toStainlessList(l.tail))
}

object KeyHashable extends Hashable[(Regex[Char], Char)] {
  override def hash(x: (Regex[Char], Char)): Long = CharHashable.hash(x._2) + RegexHashable(CharHashable).hash(x._1)
}

object CharHashable extends Hashable[Char] {
  override def hash(x: Char): Long = x.toLong
}

object CharOrdering extends Ordering[Char] {
  override def compare(x: Char, y: Char): Int = x - y
}

case class RegexHashable[C](hc: Hashable[C]) extends Hashable[Regex[C]] {
  override def hash(x: Regex[C]): Long = x match {
    case ElementMatch(c) => 2L * hc.hash(c)
    case Concat(l, r)    => 3L * hash(l) + 5L * hash(r)
    case Union(l, r)     => 7L * hash(l) + 11L * hash(r)
    case Star(r)         => 13L * hash(r)
    case _               => 17L
  }
}

case class RegexOrdering[C](oc: Ordering[C]) extends Ordering[Regex[C]] {
  override def compare(x: Regex[C], y: Regex[C]): Int = (x, y) match {
    case (_, _) if x == y                     => 0
    case (ElementMatch(xc), ElementMatch(yc)) => oc.compare(xc, yc)
    case (ElementMatch(_), _)                 => -1
    case (_, ElementMatch(_))                 => 1
    case (Concat(lx, rx), Concat(ly, ry)) =>
      compare(lx, ly) match {
        case 0 => compare(rx, ry)
        case c => c
      }
    case (Concat(_, _), _) => -1
    case (_, Concat(_, _)) => 1
    case (Union(lx, rx), Union(ly, ry)) =>
      compare(lx, ly) match {
        case 0 => compare(rx, ry)
        case c => c
      }
    case (Union(_, _), _)     => -1
    case (_, Union(_, _))     => 1
    case (Star(rx), Star(ry)) => compare(rx, ry)
    case (Star(_), _)         => -1
    case (_, Star(_))         => 1
  }
}
