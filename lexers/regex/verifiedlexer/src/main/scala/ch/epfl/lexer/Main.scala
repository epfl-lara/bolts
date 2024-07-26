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
    RegexBenchmark.benchmark01()
    RegexBenchmark.benchmark02()
    RegexBenchmark.benchmark03()
  }
}

def testRegex(): Unit = {
  val cache: Cache[Char] = Cache(MutableHashMap.getEmptyHashMap(_ => EmptyLang(), KeyHashable))
  val r1 = ("a".r | "b".r).*
  println(f"r1 = ${r1}")
  println(f"list = ${"ab".toStainless}")
  println(f"matching a with r1 without cache: ${matchR(r1, Cons('a', Nil()))}")
  println(f"matching a with r1: ${matchRMem(r1, "a".toStainless)(cache)}")
  println(f"matching abababababababababbbababbababbbabab with r1: ${matchRMem(r1, "abababababababababbbababbababbbabab".toStainless)(cache)}")
  println(f"matching abchihihi with r1: ${matchRMem(r1, "abchihihi".toStainless)(cache)}")

  val r2 = "abcdedfghijklmnopqrstuvwxyz.".anyOf.+ ~ "@".r ~ "abcdedfghijklmnopqrstuvwxyz".anyOf.+ ~ ".".r ~ "abcdedfghijklmnopqrstuvwxyz".anyOf.+
  println(f"r2 = ${r2}")
  val s21 = "samuel.chassot@gmail.com"
  println(f"matching $s21 with r2: ${matchRMem(r2, s21.toStainless)(cache)}")

}

object KeyHashable extends Hashable[(Regex[Char], Char)] {
  override def hash(x: (Regex[Char], Char)): Long = CharHashable.hash(x._2) + RegexHashable(CharHashable).hash(x._1)
}

object CharHashable extends Hashable[Char] {
  override def hash(x: Char): Long = x.toLong
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


object RegexBenchmark {
  val cache: Cache[Char] = Cache(MutableHashMap.getEmptyHashMap(_ => EmptyLang(), KeyHashable))
  def benchmark01(): Unit = {
    val r = ("a".r | "b".r).*
    val s = "abababababababababbbababbababbbabab"
    val match11 = matchRMem(r, s.toStainless)(cache)
    println(s"Matching $s with r -> $match11")
    assert(match11)

    val s2 = "abchihihi"
    val match12 = matchRMem(r, s2.toStainless)(cache)
    println(s"Matching $s2 with r -> $match12")
    assert(!match12)
  }

  def benchmark02(): Unit = {
    val r = "abcdedfghijklmnopqrstuvwxyz.".anyOf.+ ~ "@".r ~ "abcdedfghijklmnopqrstuvwxyz".anyOf.+ ~ ".".r ~ "abcdedfghijklmnopqrstuvwxyz".anyOf.+
    val s = "example.example@domain.com"
    val match21 = matchRMem(r, s.toStainless)(cache)
    println(s"Matching $s with r -> $match21")
    assert(match21)

    val s2 = "example.example@domain"
    val match22 = matchRMem(r, s2.toStainless)(cache)
    println(s"Matching $s2 with r -> $match22")
    assert(!match22)
  }

  def benchmark03(): Unit = {
    val r = ("a".r | "b".r).* 
    println(s"r = $r")
    val s = "ababa"
    val match31 = matchRMem(r, s.toStainless)(cache)
    println(s"Matching $s with r -> $match31")
    assert(match31)

    val s2 = "abbbabbabbababaaaaaaaaaaabababababababa"
    val match32 = matchRMem(r, s2.toStainless)(cache)
    println(s"Matching $s2 with r -> $match32")
    assert(match32)
  }

}
