package benchmark.lexer

import java.util.concurrent.TimeUnit
import org.openjdk.jmh.annotations.*
import scala.util.Random
import stainless.collection.{List => StainlessList}
import scala.compiletime.uninitialized
import ch.epfl.lexer.VerifiedLexer.Lexer
import ch.epfl.lexer.example.ExampleAmyLexer.AmyLexer
import ch.epfl.lexer.benchmark.RegexUtils.*
import ch.epfl.lexer.Vector
import ch.epfl.benchmark.original.OriginalAmyLexer
import ch.epfl.lexer.MemoisationZipper
import ch.epfl.lexer.VerifiedRegex.Regex
import ch.epfl.map.Hashable
import ch.epfl.lexer.ZipperRegex.Context
import ch.epfl.lexer.benchmark.ContextCharHashable
import ch.epfl.lexer.benchmark.RegexCharHashable
import ch.epfl.lexer.benchmark.RegexContextCharHashable

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

  // @Benchmark
  // @BenchmarkMode(Array(Mode.AverageTime))
  // @OutputTimeUnit(TimeUnit.MICROSECONDS)
  // def lex_Regex(): Unit = {
  //   val (tokens, suffix) = Lexer.lexRegex(AmyLexer.rules, LexerBenchmarkUtils.exampleFileContents(file))
  //   assert(suffix.isEmpty)
  // }

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

@State(Scope.Benchmark)
class LexerBenchmarkGenerated {
  @Param(
    Array(
          "generated_code_000529chars.amy",
          "generated_code_001058chars.amy",
          "generated_code_001587chars.amy",
          "generated_code_002116chars.amy",
          "generated_code_002645chars.amy",
          "generated_code_003174chars.amy",
          "generated_code_003703chars.amy",
          "generated_code_004232chars.amy",
          "generated_code_004761chars.amy",
          "generated_code_005290chars.amy",
          "generated_code_005819chars.amy",
          "generated_code_006348chars.amy",
          "generated_code_006877chars.amy",
          "generated_code_007406chars.amy",
          "generated_code_007935chars.amy",
          "generated_code_008464chars.amy",
          "generated_code_008993chars.amy",
          "generated_code_009522chars.amy",
          "generated_code_010051chars.amy",
          "generated_code_010580chars.amy",
          "generated_code_011109chars.amy",
          "generated_code_011638chars.amy",
          "generated_code_012167chars.amy",
          "generated_code_012696chars.amy",
          "generated_code_013225chars.amy",
          "generated_code_013754chars.amy",
          "generated_code_014283chars.amy",
          "generated_code_014812chars.amy",
          "generated_code_015341chars.amy",
          "generated_code_015870chars.amy",
          "generated_code_016399chars.amy",
          "generated_code_016928chars.amy",
          "generated_code_017457chars.amy",
          "generated_code_017986chars.amy",
          "generated_code_018515chars.amy",
          "generated_code_019044chars.amy",
          "generated_code_019573chars.amy",
          "generated_code_020102chars.amy",
          "generated_code_020631chars.amy",
          "generated_code_021160chars.amy",
          "generated_code_021689chars.amy",
          "generated_code_022218chars.amy",
          "generated_code_022747chars.amy",
          "generated_code_023276chars.amy",
          "generated_code_023805chars.amy",
          "generated_code_024334chars.amy",
          "generated_code_024863chars.amy",
          "generated_code_025392chars.amy",
          "generated_code_025921chars.amy",
          "generated_code_026450chars.amy",
          "generated_code_026979chars.amy",
          "generated_code_027508chars.amy",
          "generated_code_028037chars.amy",
          "generated_code_028566chars.amy",
          "generated_code_029095chars.amy",
          "generated_code_029624chars.amy",
          "generated_code_030153chars.amy",
          "generated_code_030682chars.amy",
          "generated_code_031211chars.amy",
          "generated_code_031740chars.amy",
          "generated_code_032269chars.amy",
          "generated_code_032798chars.amy",
          "generated_code_033327chars.amy",
          "generated_code_033856chars.amy",
          "generated_code_034385chars.amy",
          "generated_code_034914chars.amy",
          "generated_code_035443chars.amy",
          "generated_code_035972chars.amy",
          "generated_code_036501chars.amy",
          "generated_code_037030chars.amy",
          "generated_code_037559chars.amy",
          "generated_code_038088chars.amy",
          "generated_code_038617chars.amy",
          "generated_code_039146chars.amy",
          "generated_code_039675chars.amy",
          "generated_code_040204chars.amy",
          "generated_code_040733chars.amy",
          "generated_code_041262chars.amy",
          "generated_code_041791chars.amy",
    )
  )
  var file: String = uninitialized

  // @Benchmark
  // @BenchmarkMode(Array(Mode.AverageTime))
  // @OutputTimeUnit(TimeUnit.MICROSECONDS)
  // def lex_Regex(): Unit = {
  //   if 
  //       file == "generated_code_000425chars.amy" ||
  //       file == "generated_code_000850chars.amy" ||
  //       file == "generated_code_001275chars.amy" ||
  //       file == "generated_code_001700chars.amy" ||
  //       file == "generated_code_002125chars.amy" then 
  //     val (tokens, suffix) = Lexer.lexRegex(AmyLexer.rules, LexerBenchmarkUtils.generatedFileContents(file))
  //     assert(suffix.isEmpty)
  //   else 
  //     ()
  // }

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
  def lex_ZipperMem(): Unit = {
    val (tokens, suffix) = Lexer.lexMem(AmyLexer.rules, LexerBenchmarkUtils.generatedFileContents(file))(
      using LexerBenchmarkUtils.zipperCacheUp,
      LexerBenchmarkUtils.zipperCacheDown
    )
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
  val exampleFileContents: Map[String, Vector[Char]] = exampleFileNames.map(name => {
    val source = scala.io.Source.fromFile(s"src/main/scala/ch/epfl/example/res/amy/$name")
    val lines = try source.mkString.toStainless finally source.close()
    (name -> lines)
  }).toMap

  val exampleFilesJavaIo: Map[String, java.io.File] = exampleFileNames.map(name => {
    val file = new java.io.File(s"src/main/scala/ch/epfl/example/res/amy/$name")
    (name -> file)
  }).toMap

  val generatedFileNames: Seq[String] = Seq(
          "generated_code_000529chars.amy",
          "generated_code_001058chars.amy",
          "generated_code_001587chars.amy",
          "generated_code_002116chars.amy",
          "generated_code_002645chars.amy",
          "generated_code_003174chars.amy",
          "generated_code_003703chars.amy",
          "generated_code_004232chars.amy",
          "generated_code_004761chars.amy",
          "generated_code_005290chars.amy",
          "generated_code_005819chars.amy",
          "generated_code_006348chars.amy",
          "generated_code_006877chars.amy",
          "generated_code_007406chars.amy",
          "generated_code_007935chars.amy",
          "generated_code_008464chars.amy",
          "generated_code_008993chars.amy",
          "generated_code_009522chars.amy",
          "generated_code_010051chars.amy",
          "generated_code_010580chars.amy",
          "generated_code_011109chars.amy",
          "generated_code_011638chars.amy",
          "generated_code_012167chars.amy",
          "generated_code_012696chars.amy",
          "generated_code_013225chars.amy",
          "generated_code_013754chars.amy",
          "generated_code_014283chars.amy",
          "generated_code_014812chars.amy",
          "generated_code_015341chars.amy",
          "generated_code_015870chars.amy",
          "generated_code_016399chars.amy",
          "generated_code_016928chars.amy",
          "generated_code_017457chars.amy",
          "generated_code_017986chars.amy",
          "generated_code_018515chars.amy",
          "generated_code_019044chars.amy",
          "generated_code_019573chars.amy",
          "generated_code_020102chars.amy",
          "generated_code_020631chars.amy",
          "generated_code_021160chars.amy",
          "generated_code_021689chars.amy",
          "generated_code_022218chars.amy",
          "generated_code_022747chars.amy",
          "generated_code_023276chars.amy",
          "generated_code_023805chars.amy",
          "generated_code_024334chars.amy",
          "generated_code_024863chars.amy",
          "generated_code_025392chars.amy",
          "generated_code_025921chars.amy",
          "generated_code_026450chars.amy",
          "generated_code_026979chars.amy",
          "generated_code_027508chars.amy",
          "generated_code_028037chars.amy",
          "generated_code_028566chars.amy",
          "generated_code_029095chars.amy",
          "generated_code_029624chars.amy",
          "generated_code_030153chars.amy",
          "generated_code_030682chars.amy",
          "generated_code_031211chars.amy",
          "generated_code_031740chars.amy",
          "generated_code_032269chars.amy",
          "generated_code_032798chars.amy",
          "generated_code_033327chars.amy",
          "generated_code_033856chars.amy",
          "generated_code_034385chars.amy",
          "generated_code_034914chars.amy",
          "generated_code_035443chars.amy",
          "generated_code_035972chars.amy",
          "generated_code_036501chars.amy",
          "generated_code_037030chars.amy",
          "generated_code_037559chars.amy",
          "generated_code_038088chars.amy",
          "generated_code_038617chars.amy",
          "generated_code_039146chars.amy",
          "generated_code_039675chars.amy",
          "generated_code_040204chars.amy",
          "generated_code_040733chars.amy",
          "generated_code_041262chars.amy",
          "generated_code_041791chars.amy",
          )

  val generatedFileContents: Map[String, Vector[Char]] = generatedFileNames.map(name => {
    val source = scala.io.Source.fromFile(s"src/main/scala/ch/epfl/benchmark/res/$name")
    val lines = try source.mkString.toStainless finally source.close()
    (name -> lines)
  }).toMap

  val generatedFilesJavaIo: Map[String, java.io.File] = generatedFileNames.map(name => {
    val file = new java.io.File(s"src/main/scala/ch/epfl/benchmark/res/$name")
    (name -> file)
  }).toMap

  val zipperCacheUp: MemoisationZipper.CacheUp[Char] = MemoisationZipper.emptyUp(ContextCharHashable)
  val zipperCacheDown: MemoisationZipper.CacheDown[Char] = MemoisationZipper.emptyDown(RegexContextCharHashable)
}