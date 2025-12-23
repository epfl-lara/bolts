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

    regexZipperVisualizationAOrBStarConcatC()
    println("-\n\n====================\n\n-")
    regexZipperVisualizationAThenBThenC()
  }

  def exampleJsonSorting(): Unit = {
    val jsonFilePath = "src/main/scala/com/ziplex/example/res/json/example-for-sorting.json"
    val sortedOpt = JsonManipulationExample.main(jsonFilePath)(using ExampleUtils.zipperCacheUp, ExampleUtils.zipperCacheDown)
    sortedOpt match {
      case Some(sorted) => println(s"Sorted JSON:\n$sorted")
      case None()       => println("Failed to parse and sort the JSON file.")
    }

  }

  def tokenizeJsonFile(filepath: String, destFilePath: String): Unit = {
    val fileContent: String = scala.io.Source.fromFile(filepath).mkString
    println("Lexing with memoization")
    println(s"File content for file '$filepath':\n$fileContent")
    val (tokens, suffix) = Lexer.lexMem(JsonLexer.rules, fileContent.toStainless)(using ClassTag.Char, ExampleUtils.zipperCacheUp, ExampleUtils.zipperCacheDown)
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
