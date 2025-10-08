package ch.epfl.lexer

import ch.epfl.lexer.VerifiedRegexMatcher._
import ch.epfl.lexer.VerifiedRegex.Regex
import ch.epfl.lexer.example.RegexUtils._

import ch.epfl.lexer.example.ExampleJsonLexer.*
import ch.epfl.lexer.VerifiedLexer.Lexer

import ch.epfl.lexer.example.JsonManipulationExample
import ch.epfl.lexer.example.RegexUtils._
import ch.epfl.lexer.example.ExampleUtils

import stainless.lang.Option
import stainless.lang.Some
import stainless.lang.None

object Main {
  def main(args: Array[String]): Unit = {
    tokenizeJsonFile("src/main/scala/ch/epfl/example/res/json/example-for-sorting.json", "src/main/scala/ch/epfl/example/res/json/example-for-sorting.json.tokens")
    regexZipperExample()
    exampleJsonSorting()
  }

  def exampleJsonSorting(): Unit = {
    val jsonFilePath = "src/main/scala/ch/epfl/example/res/json/example-for-sorting.json"
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
    val (tokens, suffix) = Lexer.lexMem(JsonLexer.rules, fileContent.toStainless)(using ExampleUtils.zipperCacheUp, ExampleUtils.zipperCacheDown)
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

  def regexZipperExample() = {
    val r: Regex[Char] = ("a".r | "b".r).* ~ "c".r
    val input: Vector[Char] = "ababc".toStainless
    assert(matchZipperVector(r, input))
    assert(matchZipperVectorMem(r, input)(using ExampleUtils.zipperCacheUp, ExampleUtils.zipperCacheDown))

  }
}
