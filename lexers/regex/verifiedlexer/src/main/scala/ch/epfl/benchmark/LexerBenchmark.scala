package benchmark

import java.util.concurrent.TimeUnit
import org.openjdk.jmh.annotations.*
import scala.util.Random
import stainless.collection.{List => StainlessList}
import scala.compiletime.uninitialized
import ch.epfl.lexer.VerifiedLexer.Lexer
import ch.epfl.lexer.example.ExampleAmyLexer.AmyLexer
import ch.epfl.lexer.benchmark.RegexUtils.*
import ch.epfl.benchmark.original.OriginalAmyLexer

import java.io.File

@State(Scope.Benchmark)
class LexerBenchmark {

  @Param(
    Array(
      "ADT_864chars.amy",
      "BinaryTree_952chars.amy",
      "Calculator_962chars.amy",
      "Comments_324chars.amy",
      "Compute_230chars.amy",
      "ExpressionTree_1176chars.amy",
      "Factorial_275chars.amy",
      "FullBenchmark_1852chars.amy",
      "Hello_56chars.amy",
      "IOAndError_267chars.amy",
      "ListProcessing_649chars.amy",
      "MutualRec_296chars.amy",
      "NestedMatch_451chars.amy",
      "NestedMatch_duplicated_commented_907chars.amy",
      "Rec_66chars.amy",
      "Ultimate_3811chars.amy",
      "Ultimate_duplicated_commented_7629chars.amy",
    )
  )
  var file: String = uninitialized

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lex_Regex(): Unit = {
    val (tokens, suffix) = Lexer.lexRegex(AmyLexer.rules, LexerBenchmarkUtils.exampleFileContents(file))
    assert(suffix.isEmpty)
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lex_Zipper(): Unit = {
    val (tokens, suffix) = Lexer.lex(AmyLexer.rules, LexerBenchmarkUtils.exampleFileContents(file))
    assert(suffix.isEmpty)
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lex_OriginalSilex(): Unit = {
    val tokens = OriginalAmyLexer.run(LexerBenchmarkUtils.exampleFilesJavaIo(file))
  }
 
}

class LexerBenchmarkGenerated {
  @Param(
    Array(
          "generated_code_000425chars.amy",
          "generated_code_000850chars.amy",
          "generated_code_001275chars.amy",
          "generated_code_001700chars.amy",
          "generated_code_002125chars.amy",
          "generated_code_002550chars.amy",
          "generated_code_002975chars.amy",
          "generated_code_003400chars.amy",
          "generated_code_003825chars.amy",
          "generated_code_004250chars.amy",
          "generated_code_004675chars.amy",
          "generated_code_005100chars.amy",
          "generated_code_005525chars.amy",
          "generated_code_005950chars.amy",
          "generated_code_006375chars.amy",
          "generated_code_006800chars.amy",
          "generated_code_007225chars.amy",
          "generated_code_007650chars.amy",
          "generated_code_008075chars.amy",
          "generated_code_008500chars.amy",
          "generated_code_008925chars.amy",
          "generated_code_009350chars.amy",
          "generated_code_009775chars.amy",
          "generated_code_010200chars.amy",
          "generated_code_010625chars.amy",
          "generated_code_011050chars.amy",
          "generated_code_011475chars.amy",
          "generated_code_011900chars.amy",
          "generated_code_012325chars.amy",
    )
  )
  var file: String = uninitialized

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lex_Regex(): Unit = {
    val (tokens, suffix) = Lexer.lexRegex(AmyLexer.rules, LexerBenchmarkUtils.generatedFileContents(file))
    assert(suffix.isEmpty)
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lex_Zipper(): Unit = {
    val (tokens, suffix) = Lexer.lex(AmyLexer.rules, LexerBenchmarkUtils.generatedFileContents(file))
    assert(suffix.isEmpty)
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lex_OriginalSilex(): Unit = {
    val tokens = OriginalAmyLexer.run(LexerBenchmarkUtils.generatedFilesJavaIo(file))
  }


}

object LexerBenchmarkUtils {
  val exampleFileNames: Seq[String] = Seq(
        "ADT_864chars.amy",
        "BinaryTree_952chars.amy",
        "Calculator_962chars.amy",
        "Comments_324chars.amy",
        "Compute_230chars.amy",
        "ExpressionTree_1176chars.amy",
        "Factorial_275chars.amy",
        "FullBenchmark_1852chars.amy",
        "Hello_56chars.amy",
        "IOAndError_267chars.amy",
        "ListProcessing_649chars.amy",
        "MutualRec_296chars.amy",
        "NestedMatch_451chars.amy",
        "NestedMatch_duplicated_commented_907chars.amy",
        "Rec_66chars.amy",
        "Ultimate_3811chars.amy",
        "Ultimate_duplicated_commented_7629chars.amy",
  )
  val exampleFileContents: Map[String, StainlessList[Char]] = exampleFileNames.map(name => {
    val source = scala.io.Source.fromFile(s"src/main/scala/ch/epfl/example/res/$name")
    val lines = try source.mkString.toStainless finally source.close()
    (name -> lines)
  }).toMap

  val exampleFilesJavaIo: Map[String, java.io.File] = exampleFileNames.map(name => {
    val file = new java.io.File(s"src/main/scala/ch/epfl/example/res/$name")
    (name -> file)
  }).toMap

  val generatedFileNames: Seq[String] = Seq(
            "generated_code_000425chars.amy",
            "generated_code_000850chars.amy",
            "generated_code_001275chars.amy",
            "generated_code_001700chars.amy",
            "generated_code_002125chars.amy",
            "generated_code_002550chars.amy",
            "generated_code_002975chars.amy",
            "generated_code_003400chars.amy",
            "generated_code_003825chars.amy",
            "generated_code_004250chars.amy",
            "generated_code_004675chars.amy",
            "generated_code_005100chars.amy",
            "generated_code_005525chars.amy",
            "generated_code_005950chars.amy",
            "generated_code_006375chars.amy",
            "generated_code_006800chars.amy",
            "generated_code_007225chars.amy",
            "generated_code_007650chars.amy",
            "generated_code_008075chars.amy",
            "generated_code_008500chars.amy",
            "generated_code_008925chars.amy",
            "generated_code_009350chars.amy",
            "generated_code_009775chars.amy",
            "generated_code_010200chars.amy",
            "generated_code_010625chars.amy",
            "generated_code_011050chars.amy",
            "generated_code_011475chars.amy",
            "generated_code_011900chars.amy",
            "generated_code_012325chars.amy",
          )

  val generatedFileContents: Map[String, StainlessList[Char]] = generatedFileNames.map(name => {
    val source = scala.io.Source.fromFile(s"src/main/scala/ch/epfl/benchmark/res/$name")
    val lines = try source.mkString.toStainless finally source.close()
    (name -> lines)
  }).toMap

  val generatedFilesJavaIo: Map[String, java.io.File] = generatedFileNames.map(name => {
    val file = new java.io.File(s"src/main/scala/ch/epfl/benchmark/res/$name")
    (name -> file)
  }).toMap
}