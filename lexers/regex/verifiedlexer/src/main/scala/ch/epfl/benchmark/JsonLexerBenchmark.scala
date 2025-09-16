package ch.epfl.lexer
package benchmark.lexer

import java.util.concurrent.TimeUnit
import org.openjdk.jmh.annotations.*
import scala.util.Random
import stainless.collection.{List => StainlessList}
import scala.compiletime.uninitialized
import ch.epfl.lexer.VerifiedLexer.Lexer
import ch.epfl.lexer.example.ExampleJsonLexer.JsonLexer
import ch.epfl.lexer.benchmark.RegexUtils.*
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
    "102.json",
    "122.json",
    "142.json",
    "162.json",
    "182.json",
    "2.json",
    "202.json",
    "22.json",
    "222.json",
    "242.json",
    "42.json",
    "62.json",
    "82.json",
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
    val separable =  Lexer.separableTokens(tokens, JsonLexer.rules)
    assert(separable)
  }

}

object JsonLexerBenchmarkUtils {
  val exampleFileNames: Seq[String] = Seq(
    "102.json",
    "122.json",
    "142.json",
    "162.json",
    "182.json",
    "2.json",
    "202.json",
    "22.json",
    "222.json",
    "242.json",
    "42.json",
    "62.json",
    "82.json",
  )
  val exampleFileContents: Map[String, Vector[Char]] = exampleFileNames.map(name => {
    val source = scala.io.Source.fromFile(s"src/main/scala/ch/epfl/example/res/json/$name")
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