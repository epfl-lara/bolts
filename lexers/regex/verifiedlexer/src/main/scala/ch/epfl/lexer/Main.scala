package ch.epfl.lexer

import ch.epfl.map.MutableHashMap
import ch.epfl.lexer.VerifiedRegex._
import ch.epfl.lexer.VerifiedRegexMatcher._
import ch.epfl.lexer.MemoisationRegex._
import ch.epfl.lexer.ZipperRegex._
import ch.epfl.lexer.benchmark.RegexUtils._
import stainless.annotation._
import stainless.lang._
import stainless.collection._
import stainless.lang.Quantifiers.*
import ch.epfl.map.Hashable
import ch.epfl.lexer.RegexBenchmark.testSimp

import ch.epfl.lexer.example.ExampleAmyLexer.*
import ch.epfl.lexer.example.ExamplePythonLexer.*
import ch.epfl.lexer.VerifiedLexer.Lexer

import ch.epfl.lexer.benchmark.RegexUtils._
import ch.epfl.lexer.benchmark.lexer.AmyLexerBenchmarkUtils


import stainless.collection.List

object Main {
  def main(args: Array[String]): Unit = {
    // testAmyLexer()
    testPythonLexer()

    // tokenisePythonFileMem("src/main/scala/ch/epfl/example/res/python/Simple_26chars.py","src/main/scala/ch/epfl/example/res/python/Simple_26chars.py.tokens")
    // tokenisePythonFileMem("src/main/scala/ch/epfl/example/res/python/Factorial_168chars.py","src/main/scala/ch/epfl/example/res/python/Factorial_168chars.py.tokens")
    // tokenisePythonFileMem("src/main/scala/ch/epfl/example/res/python/BigString_113chars.py","src/main/scala/ch/epfl/example/res/python/BigString_113chars.py.tokens")

    tokenisePythonFileMem("src/main/scala/ch/epfl/example/res/python/EventSim20x_42063chars.py","src/main/scala/ch/epfl/example/res/python/EventSim20x_42063chars.py.tokens")
  }
}




def addNumberOfCharsInFileName(path: String, extension: String): Unit = {
  val file = new java.io.File(path)
  val parent = file.getParent
  val name = file.getName
  val contentSize = scala.io.Source.fromFile(path).mkString.length
  val newName = s"$parent/${name.replace(f".$extension", "")}_${contentSize}chars.$extension"
  val newFile = new java.io.File(newName)
  file.renameTo(newFile)
}

def tokeniseAmyFile(filepath: String, destFilePath: String): Unit = {
  val fileContent: String = scala.io.Source.fromFile(filepath).mkString
  println("Lexing with no memoization")
  println(s"File content for file '$filepath':\n$fileContent")
  val (tokens, suffix) = Lexer.lex(AmyLexer.rules, fileContent.toStainless)
  assert(suffix.isEmpty)
  val tokenStrings = tokens.map(t => t.asString())
  val tokenString = tokenStrings.toScala.mkString("\n")
  // Write to file
  val writer = new java.io.PrintWriter(new java.io.File(destFilePath))
  writer.write(tokenString)
  writer.close()
  println("Done!")
}

def tokeniseAmyFileMem(filepath: String, destFilePath: String): Unit = {
  val fileContent: String = scala.io.Source.fromFile(filepath).mkString
  println("Lexing with memoization")
  println(s"File content for file '$filepath':\n$fileContent")
  val (tokens, suffix) = Lexer.lexMem(AmyLexer.rules, fileContent.toStainless)(using AmyLexerBenchmarkUtils.zipperCacheUp, AmyLexerBenchmarkUtils.zipperCacheDown)
  assert(suffix.isEmpty)
  val tokenStrings = tokens.map(t => t.asString())
  val tokenString = tokenStrings.toScala.mkString("\n")
  // Write to file
  val writer = new java.io.PrintWriter(new java.io.File(destFilePath))
  writer.write(tokenString)
  writer.close()
  println("Done!")
}

def tokenisePythonFileMem(filepath: String, destFilePath: String): Unit = {
  val fileContent: String = scala.io.Source.fromFile(filepath).mkString
  println("Lexing with memoization")
  println(s"File content for file '$filepath':\n$fileContent")
  val (tokens, suffix) = Lexer.lexMem(PythonLexer.rules, fileContent.toStainless)(using AmyLexerBenchmarkUtils.zipperCacheUp, AmyLexerBenchmarkUtils.zipperCacheDown)
  println(f"Suffix tokens for file '$filepath':\n${suffix}")
  assert(suffix.isEmpty)
  val tokenStrings = tokens.map(t => t.asString())
  val tokenString = tokenStrings.toScala.mkString("\n")
  // Write to file
  val writer = new java.io.PrintWriter(new java.io.File(destFilePath))
  writer.write(tokenString)
  writer.close()
  println("Done!")
}

def testAmyLexer(): Unit = {
  val s = "abstract case class def else extends if match object val error _ end"
  val (tokens, suffix) = Lexer.lex(AmyLexer.rules, s.toStainless)
  println(s"Tokens for '$s': ${tokens.map(t => t.asString()).toScala.mkString(", ")}")
  assert(suffix.isEmpty)
}

def testPythonLexer(): Unit = {
  val s = "class def True False 12343.432 1"
  assert(Lexer.rulesInvariant(PythonLexer.rules))
  val (tokens, suffix) = Lexer.lex(PythonLexer.rules, s.toStainless)
  println(s"Tokens for '$s': ${tokens.map(t => t.asString()).toScala.mkString(", ")}")
  assert(suffix.isEmpty)
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
  val matchResR1 = matchR(r1, s1.toStainlessList)
  val matchResZ1 = ZipperRegex.matchZipper(z1, s1.toStainlessList)
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
  val matchResR2 = matchR(r2, s2.toStainlessList)
  val matchResZ2 = ZipperRegex.matchZipper(z2, s2.toStainlessList)
  println(s"matchResR2 = $matchResR2")
  println(s"matchResZ2 = $matchResZ2")
  assert(matchResR2 == matchResZ2)
  assert(matchResR2 == true)
  println("\n\n-----------------------------------------------------------\n\n")
  val s22 = "samuel.chassot@epfl"
  println(s"Matching against '$s22'")
  val matchResR22 = matchR(r2, s22.toStainlessList)
  val matchResZ22 = ZipperRegex.matchZipper(z2, s22.toStainlessList)
  println(s"matchResR22 = $matchResR22")
  println(s"matchResZ22 = $matchResZ22")
  assert(matchResR22 == matchResZ22)
  assert(matchResR22 == false)
}






 object KeyHashable extends Hashable[(Regex[Char], Char)] {
    override def hash(c: (Regex[Char], Char)): Long = c._1.hash * 31 + c._2.hashCode()
  }

def testRegex(): Unit = {
  val cache: Cache[Char] = Cache(MutableHashMap.getEmptyHashMap(_ => EmptyLang(), KeyHashable))
  val r1 = ("a".r | "b".r).*
  println(f"r1 = ${r1}")
  println(f"list = ${"ab".toStainless}")
  println(f"matching a with r1 without cache: ${matchR(r1, Cons('a', Nil()))}")
  println(f"matching a with r1: ${matchRMem(r1, "a".toStainlessList)(using cache)}")
  println(f"matching abababababababababbbababbababbbabab with r1: ${matchRMem(r1, "abababababababababbbababbababbbabab".toStainlessList)(using cache)}")
  println(f"matching abchihihi with r1: ${matchRMem(r1, "abchihihi".toStainlessList)(using cache)}")

  val r2 = "abcdedfghijklmnopqrstuvwxyz.".anyOf.+ ~ "@".r ~ "abcdedfghijklmnopqrstuvwxyz".anyOf.+ ~ ".".r ~ "abcdedfghijklmnopqrstuvwxyz".anyOf.+
  println(f"r2 = ${r2}")
  val s21 = "samuel.chassot@gmail.com"
  println(f"matching $s21 with r2: ${matchRMem(r2, s21.toStainlessList)(using cache)}")

  println(s"r1 = $r1\nremoveUselessConcat(r1) = ${removeUselessConcat(r1)}")

}

object RegexBenchmark {
  val cache: Cache[Char] = Cache(MutableHashMap.getEmptyHashMap(_ => EmptyLang(), KeyHashable))
  def benchmark01(): Unit = {
    val r = ("a".r | "b".r).*
    val s = "abababababababababbbababbababbbabab"
    val match11 = matchRMem(r, s.toStainlessList)(using cache)
    println(s"Matching $s with r -> $match11")
    assert(match11)

    val s2 = "abchihihi"
    val match12 = matchRMem(r, s2.toStainlessList)(using cache)
    println(s"Matching $s2 with r -> $match12")
    assert(!match12)
  }

  def benchmark02(): Unit = {
    val r = "abcdedfghijklmnopqrstuvwxyz.".anyOf.+ ~ "@".r ~ "abcdedfghijklmnopqrstuvwxyz".anyOf.+ ~ ".".r ~ "abcdedfghijklmnopqrstuvwxyz".anyOf.+
    val s = "example.example@domain.com"
    val match21 = matchRMem(r, s.toStainlessList)(using cache)
    println(s"Matching $s with r -> $match21")
    assert(match21)

    val s2 = "example.example@domain"
    val match22 = matchRMem(r, s2.toStainlessList)(using cache)
    println(s"Matching $s2 with r -> $match22")
    assert(!match22)
  }

  def benchmark03(): Unit = {
    val r = ("a".r | "b".r).*
    println(s"r = $r")
    val s = "ababa"
    val match31 = matchRMem(r, s.toStainlessList)(using cache)
    println(s"Matching $s with r -> $match31")
    assert(match31)

    val s2 = "ababaabbabbababaaaabababbababbbababa"
    println(s"Matching $s2 with r...")
    val match32 = matchRMem(r, s2.toStainlessList)(using cache)
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

  // val s2 = "abbbabbabbababccaaaabababbababbbababa"
  // val match32 = matchRMemSimp(r, s2.toStainless)(cache)
  // println(s"Matching $s2 with r -> $match32")
  // assert(match32)
  // }

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
