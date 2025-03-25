package benchmark

import java.util.concurrent.TimeUnit
import org.openjdk.jmh.annotations.*
import scala.util.Random
import stainless.collection.{List => StainlessList}
import scala.compiletime.uninitialized
import ch.epfl.lexer.VerifiedLexer.Lexer
import ch.epfl.lexer.example.AmyLexer
import ch.epfl.lexer.benchmark.RegexUtils.*


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
      "Rec_66chars.amy",
      "Ultimate_3811chars.amy",
    )
  )
  var file: String = uninitialized

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lex_Regex(): Unit = {
    val (tokens, suffix) = Lexer.lexRegex(AmyLexer.rules, LexerBenchmarkUtils.fileContents(file))
    assert(suffix.isEmpty)
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lex_Zipper(): Unit = {
    val (tokens, suffix) = Lexer.lex(AmyLexer.rules, LexerBenchmarkUtils.fileContents(file))
    assert(suffix.isEmpty)
  }
 
}

object LexerBenchmarkUtils {
  val fileNames: Seq[String] = Seq(
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
      "Rec_66chars.amy",
      "Ultimate_3811chars.amy",
  )
  val fileContents: Map[String, StainlessList[Char]] = fileNames.map(name => {
    val source = scala.io.Source.fromFile(s"src/main/scala/ch/epfl/example/res/$name")
    val lines = try source.mkString.toStainless finally source.close()
    (name -> lines)
  }).toMap
}