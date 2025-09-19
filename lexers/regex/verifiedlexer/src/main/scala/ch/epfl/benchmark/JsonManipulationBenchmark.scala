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
import ch.epfl.lexer.VerifiedLexer.PrintableTokensFromTokens

import java.io.File

@State(Scope.Benchmark)
class JsonManipulationBenchmark {

  @Param(
    Array(
      "001_2070chars.json",
      "002_4142chars.json",
      "063_130567chars.json"
    )
  )

















  var file: String = uninitialized


  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lex(): Unit = {
    val (tokens, suffix) = Lexer.lexMem(JsonLexer.rules, JsonManipulationBenchmarkUtils.exampleFileContents(file))(
      using JsonManipulationBenchmarkUtils.zipperCacheUp,
      JsonManipulationBenchmarkUtils.zipperCacheDown
    )
    assert(suffix.isEmpty)
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lexAndCheckPrintable(): Unit = {
    val (tokens, _) = Lexer.lexMem(JsonLexer.rules, input)
    val res = PrintableTokensFromTokens(JsonLexer.rules, tokens)
    assert(res.isDefined)
    assert(res.get.size > 0)
  }

 
}

object JsonManipulationBenchmarkUtils {
  val exampleFileNames: Seq[String] = Seq(
    "001_2070chars.json",
    "002_4142chars.json",
    "063_130567chars.json"
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