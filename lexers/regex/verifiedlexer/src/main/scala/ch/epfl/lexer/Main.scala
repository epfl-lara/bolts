package ch.epfl.lexer

import ch.epfl.map.MutableHashMap
import ch.epfl.lexer.VerifiedRegex._
import ch.epfl.lexer.VerifiedRegexMatcher._
import ch.epfl.lexer.MemoisationRegex._
import ch.epfl.lexer.ZipperRegex._
import ch.epfl.benchmark.RegexUtils._
import stainless.annotation._
import stainless.lang._
import stainless.collection._
import ch.epfl.map.Hashable
import ch.epfl.lexer.RegexBenchmark.testSimp
import scala.collection.View.Empty

object Main {
  def main(args: Array[String]): Unit = {
    testZippers1()
    testZippers2()
    testZippers3()
    println("Running zipper match test...")
    testZipperMatch()
    // RegexBenchmark.benchmark01()
    // RegexBenchmark.benchmark02()
    // RegexBenchmark.benchmark03()
    // RegexBenchmark.benchmark03Simp()
    // testRegex()
    // println("\n\n\n")
    // testSimp()
  }
}

def testZippers1(): Unit = {
  val r = simplify(("a".r ~ "b".r))
  println(s"R = ${r.asString()}")
  val z = focus(r)
  println(s"Zipper = ${z.asStringZipper()}")
  val zAfterA = derivationStepZipper(z, 'a')
  val derivativeAfterA = derivativeStep(r, 'a')
  println(s"Zipper after 'a' = ${zAfterA.asStringZipper()}")
  println(s"Derivative after 'a' = ${derivativeAfterA.asString()}")
  println("\n\n-----------------------------------------------------------\n\n")
}

def testZippers2(): Unit = {
  val r = simplify(("a".r ~ "b".r) | ("a".r ~ "c".r))
  println(s"r = ${r.asString()}")
  val z = focus(r)
  println(s"Zipper = ${z.asStringZipper()}")
  val zAfterA = derivationStepZipper(z, 'a')
  val derivativeAfterA = derivativeStep(r, 'a')
  println(s"Zipper after 'a' = ${zAfterA.asStringZipper()}")
  println(s"Derivative after 'a' = ${derivativeAfterA.asString()}")
  println("\n\n-----------------------------------------------------------\n\n")
}

def testZippers3(): Unit = {
  val r = simplify((("a".r ~ "b".r) | ("a".r ~ "c".r)).*)
  println(s"r = ${r.asString()}")
  val z = focus(r)
  println(s"Zipper = ${z.asStringZipper()}")
  val zAfterA = derivationStepZipper(z, 'a')
  val derivativeAfterA = derivativeStep(r, 'a')
  println(s"Zipper after 'a' = ${zAfterA.asStringZipper()}")
  println(s"Derivative after 'a' = ${derivativeAfterA.asString()}")
  println("\n\n-----------------------------------------------------------\n\n")
}

def testZipperMatch(): Unit = {
  val r1 = ("a".r | "b".r).*
  val z1 = focus(r1)
  println(s"r1 = ${r1.asString()}")
  println(s"z1 = ${z1.asStringZipper()}")
  val s1 = "abababababababababbbababbababbbabab"
  println(s"Matching against '$s1'")
  val matchResR1 = matchR(r1, s1.toStainless)
  val matchResZ1 = ZipperRegex.matchZipper(z1, s1.toStainless)
  println(s"matchResR1 = $matchResR1")
  println(s"matchResZ1 = $matchResZ1")
  assert(matchResR1 == matchResZ1)
  assert(matchResR1 == true)
  println("\n\n-----------------------------------------------------------\n\n")
  val r2 = "abcdedfghijklmnopqrstuvwxyz.".anyOf.+ ~ "@".r ~ "abcdedfghijklmnopqrstuvwxyz".anyOf.+ ~ ".".r ~ "abcdedfghijklmnopqrstuvwxyz".anyOf.+
  val z2 = focus(r2)
  println(s"r2 = ${r2.asString()}")
  println(s"z2 = ${z2.asStringZipper()}")
  val s2 = "samuel.chassot@epfl.ch"
  println(s"Matching against '$s2'")
  val matchResR2 = matchR(r2, s2.toStainless)
  val matchResZ2 = ZipperRegex.matchZipper(z2, s2.toStainless)
  println(s"matchResR2 = $matchResR2")
  println(s"matchResZ2 = $matchResZ2")
  assert(matchResR2 == matchResZ2)
  assert(matchResR2 == true)
  println("\n\n-----------------------------------------------------------\n\n")
  val s22 = "samuel.chassot@epfl"
  println(s"Matching against '$s22'")
  val matchResR22 = matchR(r2, s22.toStainless)
  val matchResZ22 = ZipperRegex.matchZipper(z2, s22.toStainless)
  println(s"matchResR22 = $matchResR22")
  println(s"matchResZ22 = $matchResZ22")
  assert(matchResR22 == matchResZ22)
  assert(matchResR22 == false)
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

  println(s"r1 = $r1\nremoveUselessConcat(r1) = ${removeUselessConcat(r1)}")

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

    val s2 = "ababaabbabbababaaaabababbababbbababa"
    println(s"Matching $s2 with r...")
    val match32 = matchRMem(r, s2.toStainless)(cache)
    println(s"Done -> $match32")
    assert(match32)
  }

  // def benchmark03Simp(): Unit = {
  //   val r = removeUselessConcat((("a".r | "b".r).* | "c".r).*)
  //   println(s"r = $r")
  //   val s = "ababa"
  //   val match31 = matchRMem(r, s.toStainless)(cache)
  //   println(s"Matching $s with r -> $match31")
  //   assert(match31)

<<<<<<< Updated upstream
  //   val s2 = "abbbabbabbababccaaaabababbababbbababa"
  //   val match32 = matchRMemSimp(r, s2.toStainless)(cache)
  //   println(s"Matching $s2 with r -> $match32")
  //   assert(match32)
  // }
=======
    // val s2 = "abbbabbabbababccaaaabababbababbbababa"
    // val match32 = matchRMemSimp(r, s2.toStainless)(cache)
    // println(s"Matching $s2 with r -> $match32")
    // assert(match32)
  }
>>>>>>> Stashed changes

  def testSimp(): Unit = {
    val r = Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Concat(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Concat(EmptyLang(),EmptyExpr()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Concat(EmptyLang(),EmptyExpr()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang())),Star(Union(Concat(ElementMatch('a'),EmptyExpr()),Concat(ElementMatch('b'),EmptyExpr())))),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Concat(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Concat(EmptyLang(),EmptyExpr()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Concat(EmptyLang(),EmptyExpr()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang())),Star(Union(Concat(ElementMatch('a'),EmptyExpr()),Concat(ElementMatch('b'),EmptyExpr())))),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Concat(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Concat(EmptyLang(),EmptyExpr()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Concat(EmptyLang(),EmptyExpr()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang())),Star(Union(Concat(ElementMatch('a'),EmptyExpr()),Concat(ElementMatch('b'),EmptyExpr())))),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Concat(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Concat(EmptyLang(),EmptyExpr()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Concat(EmptyLang(),EmptyExpr()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang())),Star(Union(Concat(ElementMatch('a'),EmptyExpr()),Concat(ElementMatch('b'),EmptyExpr())))),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Concat(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Concat(EmptyLang(),EmptyExpr()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Concat(EmptyLang(),EmptyExpr()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang())),Star(Union(Concat(ElementMatch('a'),EmptyExpr()),Concat(ElementMatch('b'),EmptyExpr())))),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Concat(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Concat(EmptyLang(),EmptyExpr()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Concat(EmptyLang(),EmptyExpr()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang())),Star(Union(Concat(ElementMatch('a'),EmptyExpr()),Concat(ElementMatch('b'),EmptyExpr())))),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Concat(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Concat(EmptyLang(),EmptyExpr()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Union(Concat(EmptyLang(),EmptyExpr()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang())),Star(Union(Concat(ElementMatch('a'),EmptyExpr()),Concat(ElementMatch('b'),EmptyExpr())))),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang()),EmptyLang())))))))

    // val r =
    //   Union(
    //     ElementMatch('a'),
    //     Concat(
    //       EmptyExpr(),
    //       Concat(
    //         EmptyExpr(),
    //         Concat(
    //           EmptyExpr(),
    //           Concat(
    //             EmptyExpr(),
    //             Concat(
    //               EmptyExpr(),
    //               Concat(
    //                 EmptyExpr(),
    //                 Concat(
    //                   EmptyExpr(),
    //                   EmptyLang()
    //                 )
    //               )
    //             )
    //           )
    //         )
    //       )
    //     )
    //   )
    println(s"r = $r")
    val rr = simplify(r)
    println(s"rr = $rr")

    println(s"depth before simplification = ${regexDepth(r)}")
    println(s"depth after simplification = ${regexDepth(rr)}")
  }

  def regexDepth[C](r: Regex[C]): BigInt = {
    decreases(r)
    r match {
      case ElementMatch(c)    => BigInt(1)
      case Star(r)            => BigInt(1) + regexDepth(r)
      case Union(rOne, rTwo)  => BigInt(1) + Utils.maxBigInt(regexDepth(rOne), regexDepth(rTwo))
      case Concat(rOne, rTwo) => BigInt(1) + Utils.maxBigInt(regexDepth(rOne), regexDepth(rTwo))
      case EmptyExpr()        => BigInt(1)
      case EmptyLang()        => BigInt(1)
    }
  }
}
