package com.ziplex.lexer

import com.ziplex.lexer.VerifiedRegexMatcher._
import com.ziplex.lexer.VerifiedRegex.*
import com.ziplex.lexer.example.RegexUtils._

import com.ziplex.lexer.example.ExampleJsonLexer.*
import com.ziplex.lexer.VerifiedLexer.Lexer

import com.ziplex.lexer.example.JsonManipulationExample
import com.ziplex.lexer.example.RegexUtils._
import com.ziplex.lexer.example.ExampleUtils

import stainless.lang.Option
import stainless.lang.Some
import stainless.lang.None

import com.ziplex.lexer.Sequence
import com.ziplex.lexer.emptySeq
import com.ziplex.lexer.singletonSeq
import com.ziplex.lexer.seqFromList
import scala.reflect.ClassTag

import com.ziplex.lexer.ZipperRegex.Zipper
import com.ziplex.lexer.ZipperRegex.Context
import com.ziplex.lexer.ZipperRegex.focus

object Main {
  def main(args: Array[String]): Unit = {
    // tokenizeJsonFile("src/main/scala/com/ziplex/example/res/json/example-for-sorting.json", "src/main/scala/com/ziplex/example/res/json/example-for-sorting.json.tokens")
    // regexZipperExample()
    // exampleJsonSorting()

    // regexZipperVisualizationAOrBStarConcatC()
    // println("-\n\n====================\n\n-")
    // regexZipperVisualizationAThenBThenC()

    profileJsonLexing()
  }


  def profileJsonLexing(): Unit = {
    val filepath = "random_data.json"
    val fileContent: String = scala.io.Source.fromFile(filepath).mkString
    val input: Sequence[Char] = fileContent.toStainless
    println(f"Input size: ${input.size} characters")

    var i = 0

    val lexV1MemDurations = scala.collection.mutable.ListBuffer[Long]()
    val lexV2MemOnlyDerivDurations = scala.collection.mutable.ListBuffer[Long]()
    val lexV2MemDurations = scala.collection.mutable.ListBuffer[Long]()

    val memoisationZipperEmptyUpV1 = MemoisationZipper.emptyUp(ExampleUtils.ContextCharHashable)
    val memoisationZipperEmptyDownV1 = MemoisationZipper.emptyDown(ExampleUtils.RegexContextCharHashable)
    val findLongestMatchCacheV1 = MemoisationZipper.emptyFindLongestMatch[Char](ExampleUtils.ZipperBigIntHashable, input)
    while i < 60 do
      val startV1Mem = System.currentTimeMillis()
      val (tokens, suffix) = Lexer.lexV1Mem(JsonLexer.rules, input)(using ClassTag.Char, memoisationZipperEmptyUpV1, memoisationZipperEmptyDownV1)
      val endV1Mem = System.currentTimeMillis()
      assert(suffix.isEmpty)
      if i >= 10 then
        lexV1MemDurations += (endV1Mem - startV1Mem)
      i += 1
    end while

    i = 0
    val memoisationZipperEmptyUpV2 = MemoisationZipper.emptyUp(ExampleUtils.ContextCharHashable)
    val memoisationZipperEmptyDownV2 = MemoisationZipper.emptyDown(ExampleUtils.RegexContextCharHashable)
    val findLongestMatchCacheV2 = MemoisationZipper.emptyFindLongestMatch[Char](ExampleUtils.ZipperBigIntHashable, input)
    while i < 60 do
      val startV2MemOnlyDeriv = System.currentTimeMillis()
      val (tokens, suffix) = Lexer.lexV2MemOnlyDeriv(JsonLexer.rules, input)(using ClassTag.Char, memoisationZipperEmptyUpV2, memoisationZipperEmptyDownV2)
      val endV2MemOnlyDeriv = System.currentTimeMillis()
      if i >= 10 then
        lexV2MemOnlyDerivDurations += (endV2MemOnlyDeriv - startV2MemOnlyDeriv)
      
      i += 1
    end while

    i = 0
    val memoisationZipperEmptyUpV22 = MemoisationZipper.emptyUp(ExampleUtils.ContextCharHashable)
    val memoisationZipperEmptyDownV22 = MemoisationZipper.emptyDown(ExampleUtils.RegexContextCharHashable)
    val findLongestMatchCacheV22 = MemoisationZipper.emptyFindLongestMatch[Char](ExampleUtils.ZipperBigIntHashable, input)
    while i < 60 do
      val startV2Mem = System.currentTimeMillis()
      val (tokens, suffix) = Lexer.lexMem(JsonLexer.rules, input)(using ClassTag.Char, memoisationZipperEmptyUpV22, memoisationZipperEmptyDownV22, findLongestMatchCacheV22)
      val endV2Mem = System.currentTimeMillis()
      if i >= 10 then
        lexV2MemDurations += (endV2Mem - startV2Mem)
      i += 1
    end while
    val avgV1Mem = lexV1MemDurations.sum.toDouble / lexV1MemDurations.size
    val avgV2MemOnlyDeriv = lexV2MemOnlyDerivDurations.sum.toDouble / lexV2MemOnlyDerivDurations.size
    val avgV2Mem = lexV2MemDurations.sum.toDouble / lexV2MemDurations.size
    println(f"Average lexV1Mem duration over ${lexV1MemDurations.size} runs: $avgV1Mem%.2f ms")
    println(f"Average lexV2MemOnlyDeriv duration over ${lexV2MemOnlyDerivDurations.size} runs: $avgV2MemOnlyDeriv%.2f ms")
    println(f"Average lexV2Mem duration over ${lexV2MemDurations.size} runs: $avgV2Mem%.2f ms")
  }


  def exampleJsonSorting(): Unit = {
    val jsonFilePath = "src/main/scala/com/ziplex/example/res/json/example-for-sorting.json"
    val sortedOpt = JsonManipulationExample.main(jsonFilePath, ExampleUtils.ZipperBigIntHashable)(using ExampleUtils.zipperCacheUp, ExampleUtils.zipperCacheDown)
    sortedOpt match {
      case Some(sorted) => println(s"Sorted JSON:\n$sorted")
      case None()       => println("Failed to parse and sort the JSON file.")
    }

  }

  def tokenizeJsonFile(filepath: String, destFilePath: String): Unit = {
    val fileContent: String = scala.io.Source.fromFile(filepath).mkString
    println("Lexing with memoization")
    println(s"File content for file '$filepath':\n$fileContent")
    val input = fileContent.toStainless
    val (tokens, suffix) = Lexer.lexMem(JsonLexer.rules, input)(using ClassTag.Char, ExampleUtils.zipperCacheUp, ExampleUtils.zipperCacheDown, ExampleUtils.findLongestMatchCache(input))
    println(f"Suffix tokens for file '$filepath':\n${suffix}")
    assert(suffix.isEmpty)
    val tokenStrings = tokens.map(t => t.asString())
    val tokenString = tokenStrings.efficientList.mkString("\n")
    // Write to file
    val writer = new java.io.PrintWriter(new java.io.File(destFilePath))
    writer.write(tokenString)
    writer.close()
    println("Done!")
  }

  def regexZipperExample() = {
    val r: Regex[Char] = ("a".r | "b".r).* ~ "c".r
    val input: Sequence[Char] = "ababc".toStainless
    assert(matchZipperSequence(r, input))
    assert(matchZipperSequenceMem(r, input)(using ExampleUtils.zipperCacheUp, ExampleUtils.zipperCacheDown))

  }

  def regexZipperVisualizationAOrBStarConcatC() = {
    val r: Regex[Char] = ("a".r | "b".r).* ~ "c".r
    val zipper: Zipper[Char] = focus(r)
    println(s"Regex: ${r.show()}")
    println(s"Zipper: ${zipper.show()}")

    println("\n\n")
    val c1 = 'a'
    println(s"After deriving wrt '$c1':")
    val zipper1 = ZipperRegex.derivationStepZipper(zipper, c1)
    println(s"Zipper: ${zipper1.show()}")
    val regex1 = VerifiedRegexMatcher.derivativeStep(r, c1)
    println(s"Regex: ${regex1.show()}")
    
    println("\n\n")
    val c2 = 'b'
    println(s"After deriving wrt '$c2':")
    val zipper2 = ZipperRegex.derivationStepZipper(zipper, c2)
    println(s"Zipper: ${zipper2.show()}")
    val regex2 = VerifiedRegexMatcher.derivativeStep(r, c2)
    println(s"Regex: ${regex2.show()}")
    
    println("\n\n")
    val c3 = 'c'
    println(s"After deriving wrt '$c3':")
    val zipper3 = ZipperRegex.derivationStepZipper(zipper, c3)
    println(s"Zipper: ${zipper3.show()}")
    val regex3 = VerifiedRegexMatcher.derivativeStep(r, c3)
    println(s"Regex: ${regex3.show()}")
  }

   def regexZipperVisualizationAThenBThenC() = {
    val r: Regex[Char] = "a".r ~ "b".r ~ "c".r
    val zipper: Zipper[Char] = focus(r)
    println(s"Regex: ${r.show()}")
    println(s"Zipper: ${zipper.show()}")

    println("\n\n")
    val c1 = 'a'
    println(s"After deriving wrt '$c1':")
    val zipper1 = ZipperRegex.derivationStepZipper(zipper, c1)
    println(s"Zipper: ${zipper1.show()}")
    val regex1 = VerifiedRegexMatcher.derivativeStep(r, c1)
    println(s"Regex: ${regex1.show()}")
    
    println("\n\n")
    val c2 = 'b'
    println(s"After deriving wrt '$c2':")
    val zipper2 = ZipperRegex.derivationStepZipper(zipper, c2)
    println(s"Zipper: ${zipper2.show()}")
    val regex2 = VerifiedRegexMatcher.derivativeStep(r, c2)
    println(s"Regex: ${regex2.show()}")
    
    println("\n\n")
    val c3 = 'c'
    println(s"After deriving wrt '$c3':")
    val zipper3 = ZipperRegex.derivationStepZipper(zipper, c3)
    println(s"Zipper: ${zipper3.show()}")
    val regex3 = VerifiedRegexMatcher.derivativeStep(r, c3)
    println(s"Regex: ${regex3.show()}")
  }

  extension [C](r: Regex[C]) def show(): String = 
    r match
      case ElementMatch(c) => c.toString
      case Star(reg) => s"(${reg.show()})*"
      case Union(regOne, regTwo) => s"(${regOne.show()} | ${regTwo.show()})"
      case Concat(regOne, regTwo) => s"(${regOne.show()} ~ ${regTwo.show()})"
      case EmptyExpr() => "ε" 
      case EmptyLang() => "∅"
    
  extension [C](ctx: Context[C]) def show(): String =
    s"Context( ${ctx.exprs.map(r => s"Regex(${r.show()})").mkString(", ")} )"
  extension [C](z: Zipper[C]) def show(): String = 
    s"Zipper( ${z.theSet.map(_.show()).toList.mkString(", ")} )"

}
