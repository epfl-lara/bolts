package ch.epfl.lexer
package benchmark.lexer

import java.util.concurrent.TimeUnit
import org.openjdk.jmh.annotations.*
import scala.util.Random
import stainless.collection.{List => StainlessList}
import scala.compiletime.uninitialized
import ch.epfl.lexer.VerifiedLexer.Lexer
import ch.epfl.lexer.example.ExampleJsonLexer.JsonLexer
import ch.epfl.lexer.example.RegexUtils.*
import ch.epfl.lexer.Vector
import ch.epfl.lexer.MemoisationZipper
import ch.epfl.lexer.VerifiedRegex.Regex
import ch.epfl.map.Hashable
import ch.epfl.lexer.ZipperRegex.Context
import ch.epfl.lexer.benchmark.ContextCharHashable
import ch.epfl.lexer.benchmark.RegexCharHashable
import ch.epfl.lexer.benchmark.RegexContextCharHashable

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
  val exampleFileContents: Map[String, Vector[Char]] = exampleFileNames.map(name => {
    val source = scala.io.Source.fromFile(s"src/main/scala/ch/epfl/benchmark/res/json/$name")
    val lines = try source.mkString.toStainless finally source.close()
    (name -> lines)
  }).toMap

  lazy val exampleFileTokens: Map[String, Vector[(Token[Char])]] = exampleFileContents.map { case (name, content) =>
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