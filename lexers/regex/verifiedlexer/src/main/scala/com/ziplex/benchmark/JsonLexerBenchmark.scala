package com.ziplex.lexer
package benchmark.lexer

import java.util.concurrent.TimeUnit
import org.openjdk.jmh.annotations.*
import scala.util.Random
import stainless.collection.{List => StainlessList}
import scala.compiletime.uninitialized
import com.ziplex.lexer.VerifiedLexer.Lexer
import com.ziplex.lexer.example.ExampleJsonLexer.JsonLexer
import com.ziplex.lexer.example.RegexUtils.*
import com.ziplex.lexer.MemoisationZipper
import com.ziplex.lexer.VerifiedRegex.Regex
import com.mutablemaps.map.Hashable
import com.ziplex.lexer.ZipperRegex.Context
import com.ziplex.lexer.benchmark.ContextCharHashable
import com.ziplex.lexer.benchmark.RegexCharHashable
import com.ziplex.lexer.benchmark.RegexContextCharHashable

import com.ziplex.lexer.Sequence
import com.ziplex.lexer.emptySeq
import com.ziplex.lexer.singletonSeq
import com.ziplex.lexer.seqFromList

import java.io.File

@State(Scope.Benchmark)
class JsonLexerBenchmark {

  @Param(
    Array(
    "102_23677chars.json",
    "122_28308chars.json",
    "142_32958chars.json",
    "162_37599chars.json",
    "182_42231chars.json",
    "202_46879chars.json",
    "222_51521chars.json",
    "22_5115chars.json",
    "242_56154chars.json",
    "2_456chars.json",
    "42_9755chars.json",
    "62_14377chars.json",
    "82_19037chars.json",
    )
  )


  var file: String = uninitialized


  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lex_ZipperMem(): Unit = {
    val (tokens, suffix) = Lexer.lexMem(JsonLexer.rules, JsonLexerBenchmarkUtils.exampleFileContents(file))(
      using JsonLexerBenchmarkUtils.zipperCacheUp,
      JsonLexerBenchmarkUtils.zipperCacheDown
    )
    assert(suffix.isEmpty)
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def separability_pred(): Unit = {
    val tokens = JsonLexerBenchmarkUtils.exampleFileTokens(file)
    val separable =  Lexer.separableTokensMem(tokens, JsonLexer.rules)(
      using JsonLexerBenchmarkUtils.zipperCacheUp,
      JsonLexerBenchmarkUtils.zipperCacheDown
    )
    assert(separable)
  }

}

object JsonLexerBenchmarkUtils {
  val exampleFileNames: Seq[String] = Seq(
    "102_23677chars.json",
    "122_28308chars.json",
    "142_32958chars.json",
    "162_37599chars.json",
    "182_42231chars.json",
    "202_46879chars.json",
    "222_51521chars.json",
    "22_5115chars.json",
    "242_56154chars.json",
    "2_456chars.json",
    "42_9755chars.json",
    "62_14377chars.json",
    "82_19037chars.json",
  )
  val exampleFileContents: Map[String, Sequence[Char]] = exampleFileNames.map(name => {
    val source = scala.io.Source.fromFile(s"src/main/scala/com/ziplex/benchmark/res/json/$name")
    val lines = try source.mkString.toStainless finally source.close()
    (name -> lines)
  }).toMap

  lazy val exampleFileTokens: Map[String, Sequence[(Token[Char])]] = exampleFileContents.map { case (name, content) =>
    val (tokens, suffix) = Lexer.lexMem(JsonLexer.rules, content)(
      using zipperCacheUpInternal,
      zipperCacheDownInternal
    )
    assert(suffix.isEmpty)
    (name -> tokens)
  }

  val zipperCacheUp: MemoisationZipper.CacheUp[Char] = MemoisationZipper.emptyUp(ContextCharHashable)
  val zipperCacheDown: MemoisationZipper.CacheDown[Char] = MemoisationZipper.emptyDown(RegexContextCharHashable)

  val zipperCacheUpInternal: MemoisationZipper.CacheUp[Char] = MemoisationZipper.emptyUp(ContextCharHashable)
  val zipperCacheDownInternal: MemoisationZipper.CacheDown[Char] = MemoisationZipper.emptyDown(RegexContextCharHashable)
}