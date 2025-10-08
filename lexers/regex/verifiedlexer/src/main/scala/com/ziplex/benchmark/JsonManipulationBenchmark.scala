package com.ziplex.lexer
package benchmark.lexer

import java.util.concurrent.TimeUnit
import org.openjdk.jmh.annotations.*
import scala.util.Random
import stainless.collection.{List => StainlessList}
import scala.compiletime.uninitialized
import com.ziplex.lexer.VerifiedLexer.Lexer
import com.ziplex.lexer.VerifiedLexer.emptyPrintableTokens
import com.ziplex.lexer.example.ExampleJsonLexer.JsonLexer
import com.ziplex.lexer.example.RegexUtils.*
import com.ziplex.lexer.Vector
import com.ziplex.lexer.MemoisationZipper
import com.ziplex.lexer.VerifiedRegex.Regex
import com.mutablemaps.map.Hashable
import com.ziplex.lexer.ZipperRegex.Context
import com.ziplex.lexer.benchmark.ContextCharHashable
import com.ziplex.lexer.benchmark.RegexCharHashable
import com.ziplex.lexer.benchmark.RegexContextCharHashable
import com.ziplex.lexer.VerifiedLexer.printableTokensFromTokensMem
import com.ziplex.lexer.VerifiedLexer.printableTokensFromTokens

import com.ziplex.lexer.example.JsonManipulationExample.*
import com.ziplex.lexer.example.ExampleJsonLexer.Types.*

import java.io.File
import com.ziplex.lexer.VerifiedLexer.PrintableTokens

@State(Scope.Benchmark)
class JsonManipulationBenchmark {

  @Param(
    Array(
      "0001_2079chars.json",
      "0002_4157chars.json",
      "0010_20776chars.json",
      "0015_31167chars.json",
      "0020_41560chars.json",
      "0025_51950chars.json",
      "0030_62339chars.json",
      "0035_72724chars.json",
      "0050_103898chars.json",
      "0070_145455chars.json",
      "0090_187013chars.json",
      "0120_249345chars.json",
      "0150_311687chars.json",
      "0200_415578chars.json",
      "0300_623361chars.json",
      "0400_831171chars.json",
      "0500_1038945chars.json",
      // "0700_1454528chars.json",
      // "0900_1870102chars.json",
      // "1200_2493458chars.json",
      // "1500_3116843chars.json",
      // "2000_4155777chars.json",
      // "3000_6233659chars.json",
      // "4000_8311543chars.json",
      // "5000_10389457chars.json",
      // "7000_14545249chars.json",
      // "9000_18700977chars.json",

    )
  )


  var file: String = uninitialized


  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lex(): Unit = {
    val (tokens, suffix) = Lexer.lexMem(JsonLexer.rules, JsonManipulationBenchmarkUtils.fileContents(file))(
      using JsonManipulationBenchmarkUtils.zipperCacheUp,
      JsonManipulationBenchmarkUtils.zipperCacheDown
    )
    assert(suffix.isEmpty)
  }

   
  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lexNonMem(): Unit = {
    val (tokens, suffix) = Lexer.lex(JsonLexer.rules, JsonManipulationBenchmarkUtils.fileContents(file))
    assert(suffix.isEmpty)
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lexAndCheckPrintable(): Unit = {
    val (tokens, _) = Lexer.lexMem(JsonLexer.rules, JsonManipulationBenchmarkUtils.fileContents(file))(
      using JsonManipulationBenchmarkUtils.zipperCacheUp,
      JsonManipulationBenchmarkUtils.zipperCacheDown
    )
    val res = printableTokensFromTokensMem(JsonLexer.rules, tokens)(
      using JsonManipulationBenchmarkUtils.zipperCacheUp,
      JsonManipulationBenchmarkUtils.zipperCacheDown
    )
    assert(res.isDefined)
    assert(res.get.size > 0)
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def checkPrintableNonMem(): Unit = {
    val tokens = JsonManipulationBenchmarkUtils.filePrintableTokens(file).tokens
    val res = printableTokensFromTokens(JsonLexer.rules, tokens)
    assert(res.isDefined)
    assert(res.get.size > 0)
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def checkPrintableMemPreFilledCache(): Unit = {
    val tokens = JsonManipulationBenchmarkUtils.filePrintableTokens(file).tokens
    val res = printableTokensFromTokensMem(JsonLexer.rules, tokens)(
      using JsonManipulationBenchmarkUtils.zipperCacheUpInternal,
      JsonManipulationBenchmarkUtils.zipperCacheDownInternal
    )
    assert(res.isDefined)
    assert(res.get.size > 0)
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def sliceAndSort(): Unit = {
    val printableTokens = JsonManipulationBenchmarkUtils.filePrintableTokens(file)
    val tokensSize = printableTokens.size
    val indices = indicesOfOpenBraces(printableTokens.tokens, tokensSize)
    val slices: Vector[PrintableTokens[Char]] = slicesMulti(printableTokens, tokensSize, indices)
    val slicesWithIds = slices.map(JsonManipulationBenchmarkUtils.addId)
    val orderedSlices = sortObjectsByID(slicesWithIds)
    assert(orderedSlices.size > 0)
    val orderedSlicesWithoutIds = orderedSlices.map(JsonManipulationBenchmarkUtils.removeId)
    assert(orderedSlicesWithoutIds.size > 0)
  }


  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def recombineSlices(): Unit = {
    val orderedSlicesWithoutIds = JsonManipulationBenchmarkUtils.orderedSlicesWithoutIds(file)
    val sep = JsonManipulationBenchmarkUtils.commaNewLineSeparator
    assert(orderedSlicesWithoutIds.size > 0)
    val recombined = recombineSlicesWithSep(orderedSlicesWithoutIds, sep, emptyPrintableTokens(JsonLexer.rules))
    assert(recombined.isDefined)
    val withBrackets = encloseInSep(recombined.get, JsonManipulationBenchmarkUtils.leftBracketSeparator, JsonManipulationBenchmarkUtils.rightBracketSeparator)
    assert(withBrackets.isDefined)
    assert(withBrackets.get.size > 0)
  }


  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def checkPredicateAndRecombineWithoutWrapper(): Unit = {
    val orderedSlicesWithoutIdsJustTokens = JsonManipulationBenchmarkUtils.orderedSlicesWithoutIdsJustTokens(file)
    val sep = JsonManipulationBenchmarkUtils.commaNewLineSeparator
    assert(orderedSlicesWithoutIdsJustTokens.size > 0)
    val length = orderedSlicesWithoutIdsJustTokens.size
    var i = BigInt(0)
    var recombined = Vector.empty[Token[Char]]
    while i < length do {
      val tokens = orderedSlicesWithoutIdsJustTokens(i)
      recombined = recombined ++ tokens
      if i < length - 1 then {
        recombined = recombined ++ Vector.singleton(JsonManipulationBenchmarkUtils.commaToken) ++ Vector.singleton(JsonManipulationBenchmarkUtils.newLineToken)
      }
      i = i + 1
    }
    assert(recombined.size > 0)
    val withBrackets = Vector.singleton(JsonManipulationBenchmarkUtils.leftBracketToken) ++ recombined ++ Vector.singleton(JsonManipulationBenchmarkUtils.rightBracketToken)
    val printable = Lexer.separableTokensMem(withBrackets, JsonLexer.rules)(
      using JsonManipulationBenchmarkUtils.zipperCacheUpInternal,
      JsonManipulationBenchmarkUtils.zipperCacheDownInternal
    )
    assert(printable)
  }


 
}

object JsonManipulationBenchmarkUtils {
  val fileNames: Seq[String] = Seq(
    "0001_2079chars.json",
    "0002_4157chars.json",
    "0010_20776chars.json",
    "0015_31167chars.json",
    "0020_41560chars.json",
    "0025_51950chars.json",
    "0030_62339chars.json",
    "0035_72724chars.json",
    "0050_103898chars.json",
    "0070_145455chars.json",
    "0090_187013chars.json",
    "0120_249345chars.json",
    "0150_311687chars.json",
    "0200_415578chars.json",
    "0300_623361chars.json",
    "0400_831171chars.json",
    "0500_1038945chars.json",
    // "0700_1454528chars.json",
    // "0900_1870102chars.json",
    // "1200_2493458chars.json",
    // "1500_3116843chars.json",
    // "2000_4155777chars.json",
    // "3000_6233659chars.json",
    // "4000_8311543chars.json",
    // "5000_10389457chars.json",
    // "7000_14545249chars.json",
    // "9000_18700977chars.json",
  )
  val fileContents: Map[String, Vector[Char]] = fileNames.map(name => {
    val source = scala.io.Source.fromFile(s"src/main/scala/com.ziplex/benchmark/res/json-manip/$name")
    val lines = try source.mkString.toStainless finally source.close()
    (name -> lines)
  }).toMap

  lazy val filePrintableTokens: Map[String, PrintableTokens[Char]] = fileContents.map { case (name, content) =>
    val (tokens, suffix) = Lexer.lexMem(JsonLexer.rules, content)(
      using zipperCacheUpInternal,
      zipperCacheDownInternal
    )
    assert(suffix.isEmpty)
    (name -> printableTokensFromTokensMem(JsonLexer.rules, tokens).get)
  }

  lazy val orderedSlicesWithoutIds: Map[String, Vector[PrintableTokens[Char]]] = filePrintableTokens.map { case (name, pt) =>
    val tokensSize = pt.size
    val indices = indicesOfOpenBraces(pt.tokens, tokensSize)
    val slices: Vector[PrintableTokens[Char]] = slicesMulti(pt, tokensSize, indices)
    val slicesWithIds = slices.map(JsonManipulationBenchmarkUtils.addId)
    val orderedSlices = sortObjectsByID(slicesWithIds)
    assert(orderedSlices.size > 0)
    val orderedSlicesWithoutIds = orderedSlices.map(JsonManipulationBenchmarkUtils.removeId)
    assert(orderedSlicesWithoutIds.size > 0)
    (name -> orderedSlicesWithoutIds)
  }

  lazy val orderedSlicesWithoutIdsJustTokens: Map[String, Vector[Vector[Token[Char]]]] = orderedSlicesWithoutIds.map { case (name, pts) =>
    (name -> pts.map(_.tokens))
  }

  given zipperCacheUpInternal: MemoisationZipper.CacheUp[Char] = MemoisationZipper.emptyUp(ContextCharHashable)
  given zipperCacheDownInternal: MemoisationZipper.CacheDown[Char] = MemoisationZipper.emptyDown(RegexContextCharHashable)

  val (commaNewLineSeparator, leftBracketSeparator, rightBracketSeparator) = (createCommaNewLineSeparator.get, createLeftBracketSeparator.get, createRightBracketSeparator.get)

  val commaToken = Token(KeywordValueInjection.injection(Vector.singleton(',')), JsonLexer.commaRule, BigInt(1), Vector.singleton(','))
  val newLineToken = Token(WhitespaceValueInjection.injection(Vector.singleton('\n')), JsonLexer.whitespaceRule, BigInt(1), Vector.singleton('\n'))
  val leftBracketToken = Token(KeywordValueInjection.injection(Vector.singleton('[')), JsonLexer.lBracketRule, BigInt(1), Vector.singleton('['))
  val rightBracketToken = Token(KeywordValueInjection.injection(Vector.singleton(']')), JsonLexer.rBracketRule, BigInt(1), Vector.singleton(']'))

  val zipperCacheUp: MemoisationZipper.CacheUp[Char] = MemoisationZipper.emptyUp(ContextCharHashable)
  val zipperCacheDown: MemoisationZipper.CacheDown[Char] = MemoisationZipper.emptyDown(RegexContextCharHashable)


  def addId(pt: PrintableTokens[Char]): (BigInt, PrintableTokens[Char]) = (parseID(pt), pt)
  def removeId(t: (BigInt, PrintableTokens[Char])): PrintableTokens[Char] = t._2
}