package com.ziplex.lexer
package benchmark.lexer

import java.util.concurrent.TimeUnit
import org.openjdk.jmh.annotations.*
import org.openjdk.jmh.infra.Blackhole
import scala.util.Random
import stainless.collection.{List => StainlessList}
import scala.compiletime.uninitialized
import com.ziplex.lexer.VerifiedLexer.Lexer
import com.ziplex.lexer.example.ExampleAmyLexer.AmyLexer
import com.ziplex.lexer.example.RegexUtils.*
import com.ziplex.benchmark.original.OriginalAmyLexer
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

import com.ziplex.lexer.example.ExampleUtils

import scala.reflect.ClassTag
import java.io.File

@BenchmarkMode(Array(Mode.AverageTime))
@OutputTimeUnit(TimeUnit.MICROSECONDS)
class AmyLexerBenchmark {

  @Benchmark
  def lex_ZipperV1Mem(state: FreshAmyExampleV1MemState, bh: Blackhole): Unit = {
    val (tokens, suffix) = Lexer.lexV1Mem(AmyLexer.rules, state.content)(
      using ClassTag.Char,
      state.zipperCacheUp,
      state.zipperCacheDown
    )
    bh.consume(suffix.isEmpty)
  }

  // @Benchmark
  // def lex_ZipperV1Mem_Warm(state: WarmAmyExampleV1MemState, bh: Blackhole): Unit = {
  //   val (tokens, suffix) = Lexer.lexV1Mem(AmyLexer.rules, state.content)(
  //     using ClassTag.Char,
  //     state.zipperCacheUp,
  //     state.zipperCacheDown
  //   )
  //   bh.consume(suffix.isEmpty)
  // }

  @Benchmark
  def lex_ZipperV3Mem(state: FreshAmyExampleV3MemState, bh: Blackhole): Unit = {
    val (tokens, suffix) = Lexer.lexMem(AmyLexer.rules, state.content)(
      using ClassTag.Char,
      state.zipperCacheUp,
      state.zipperCacheDown,
      state.furthestNullableCache
    )
    bh.consume(suffix.isEmpty)
  }

  // @Benchmark
  // def lex_ZipperV3Mem_Warm(state: WarmAmyExampleV3MemState, bh: Blackhole): Unit = {
  //   val (tokens, suffix) = Lexer.lexMem(AmyLexer.rules, state.content)(
  //     using ClassTag.Char,
  //     state.zipperCacheUp,
  //     state.zipperCacheDown,
  //     state.furthestNullableCache
  //   )
  //   bh.consume(suffix.isEmpty)
  // }

  @Benchmark
  def lex_OriginalSilex(state: AmyExampleFileState, bh: Blackhole): Unit = {
    val tokens = OriginalAmyLexer.run(state.fileJavaIo)
    bh.consume(tokens)
  }
}

@BenchmarkMode(Array(Mode.AverageTime))
@OutputTimeUnit(TimeUnit.MICROSECONDS)
class AmyLexerBenchmarkGenerated {

  @Benchmark
  def lex_ZipperV1Mem(state: FreshAmyGeneratedV1MemState): Unit = {
    val (tokens, suffix) = Lexer.lexV1Mem(AmyLexer.rules, state.content)(
      using ClassTag.Char,
      state.zipperCacheUp,
      state.zipperCacheDown
    )
    assert(suffix.isEmpty)
  }

  // @Benchmark
  // def lex_ZipperV1Mem_Warm(state: WarmAmyGeneratedV1MemState): Unit = {
  //   val (tokens, suffix) = Lexer.lexV1Mem(AmyLexer.rules, state.content)(
  //     using ClassTag.Char,
  //     state.zipperCacheUp,
  //     state.zipperCacheDown
  //   )
  //   assert(suffix.isEmpty)
  // }

  @Benchmark
  def lex_ZipperMem(state: FreshAmyGeneratedV3MemState): Unit = {
    val (tokens, suffix) = Lexer.lexMem(AmyLexer.rules, state.content)(
      using ClassTag.Char,
      state.zipperCacheUp,
      state.zipperCacheDown,
      state.furthestNullableCache
    )
    assert(suffix.isEmpty)
  }

  // @Benchmark
  // def lex_ZipperMem_Warm(state: WarmAmyGeneratedV3MemState): Unit = {
  //   val (tokens, suffix) = Lexer.lexMem(AmyLexer.rules, state.content)(
  //     using ClassTag.Char,
  //     state.zipperCacheUp,
  //     state.zipperCacheDown,
  //     state.furthestNullableCache
  //   )
  //   assert(suffix.isEmpty)
  // }

  @Benchmark
  def lex_OriginalSilex(state: AmyGeneratedFileState): Unit = {
    val tokens = OriginalAmyLexer.run(state.fileJavaIo)
  }
}

@State(Scope.Thread)
class AmyExampleFileState {
  @Param(Array(
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
  ))
  var file: String = uninitialized

  var content: Sequence[Char] = uninitialized
  var fileJavaIo: java.io.File = uninitialized

  @Setup(Level.Trial)
  def setupFile(): Unit = {
    content = AmyLexerBenchmarkUtils.exampleFileContents(file)
    fileJavaIo = AmyLexerBenchmarkUtils.exampleFilesJavaIo(file)
  }
}

@State(Scope.Thread)
class AmyGeneratedFileState {
  @Param(Array(
    "generated_code_000529chars.amy",
    "generated_code_002645chars.amy",
    "generated_code_004761chars.amy",
    "generated_code_006877chars.amy",
    "generated_code_008993chars.amy",
    "generated_code_011109chars.amy",
    "generated_code_013225chars.amy",
    "generated_code_015341chars.amy",
    "generated_code_017457chars.amy",
    "generated_code_019573chars.amy",
    "generated_code_021689chars.amy",
    "generated_code_023805chars.amy",
    "generated_code_025921chars.amy",
    "generated_code_028037chars.amy",
    "generated_code_030153chars.amy",
    "generated_code_032269chars.amy",
    "generated_code_034385chars.amy",
    "generated_code_036501chars.amy",
    "generated_code_038617chars.amy",
    "generated_code_040733chars.amy",
  ))
  var file: String = uninitialized

  var content: Sequence[Char] = uninitialized
  var fileJavaIo: java.io.File = uninitialized

  @Setup(Level.Trial)
  def setupFile(): Unit = {
    content = AmyLexerBenchmarkUtils.generatedFileContents(file)
    fileJavaIo = AmyLexerBenchmarkUtils.generatedFilesJavaIo(file)
  }
}

@State(Scope.Thread)
class FreshAmyExampleV1MemState extends AmyExampleFileState {
  var zipperCacheUp: MemoisationZipper.CacheUp[Char] = uninitialized
  var zipperCacheDown: MemoisationZipper.CacheDown[Char] = uninitialized

  @Setup(Level.Iteration)
  def setupCaches(): Unit = {
    zipperCacheUp = MemoisationZipper.emptyUp(ContextCharHashable)
    zipperCacheDown = MemoisationZipper.emptyDown(RegexContextCharHashable)
  }
}

@State(Scope.Thread)
class WarmAmyExampleV1MemState extends FreshAmyExampleV1MemState {
  @Setup(Level.Iteration)
  def warm(): Unit = {
    val (_, suffix) = Lexer.lexV1Mem(AmyLexer.rules, content)(
      using ClassTag.Char,
      zipperCacheUp,
      zipperCacheDown
    )
    assert(suffix.isEmpty)
  }
}

@State(Scope.Thread)
class FreshAmyExampleV3MemState extends AmyExampleFileState {
  var zipperCacheUp: MemoisationZipper.CacheUp[Char] = uninitialized
  var zipperCacheDown: MemoisationZipper.CacheDown[Char] = uninitialized
  var furthestNullableCache: MemoisationZipper.CacheFurthestNullable[Char] = uninitialized

  @Setup(Level.Iteration)
  def setupCaches(): Unit = {
    zipperCacheUp = MemoisationZipper.emptyUp(ContextCharHashable)
    zipperCacheDown = MemoisationZipper.emptyDown(RegexContextCharHashable)
    furthestNullableCache =
      MemoisationZipper.emptyFurthestNullableCache[Char](
        ExampleUtils.ZipperBigIntBigIntHashable,
        content,
        AmyLexer.rules
      )
  }
}

@State(Scope.Thread)
class WarmAmyExampleV3MemState extends FreshAmyExampleV3MemState {
  @Setup(Level.Iteration)
  def warm(): Unit = {
    val (_, suffix) = Lexer.lexMem(AmyLexer.rules, content)(
      using ClassTag.Char,
      zipperCacheUp,
      zipperCacheDown,
      furthestNullableCache
    )
    assert(suffix.isEmpty)
  }
}

@State(Scope.Thread)
class FreshAmyGeneratedV1MemState extends AmyGeneratedFileState {
  var zipperCacheUp: MemoisationZipper.CacheUp[Char] = uninitialized
  var zipperCacheDown: MemoisationZipper.CacheDown[Char] = uninitialized

  @Setup(Level.Iteration)
  def setupCaches(): Unit = {
    zipperCacheUp = MemoisationZipper.emptyUp(ContextCharHashable)
    zipperCacheDown = MemoisationZipper.emptyDown(RegexContextCharHashable)
  }
}

@State(Scope.Thread)
class WarmAmyGeneratedV1MemState extends FreshAmyGeneratedV1MemState {
  @Setup(Level.Iteration)
  def warm(): Unit = {
    val (_, suffix) = Lexer.lexV1Mem(AmyLexer.rules, content)(
      using ClassTag.Char,
      zipperCacheUp,
      zipperCacheDown
    )
    assert(suffix.isEmpty)
  }
}

@State(Scope.Thread)
class FreshAmyGeneratedV3MemState extends AmyGeneratedFileState {
  var zipperCacheUp: MemoisationZipper.CacheUp[Char] = uninitialized
  var zipperCacheDown: MemoisationZipper.CacheDown[Char] = uninitialized
  var furthestNullableCache: MemoisationZipper.CacheFurthestNullable[Char] = uninitialized

  @Setup(Level.Iteration)
  def setupCaches(): Unit = {
    zipperCacheUp = MemoisationZipper.emptyUp(ContextCharHashable)
    zipperCacheDown = MemoisationZipper.emptyDown(RegexContextCharHashable)
    furthestNullableCache =
      MemoisationZipper.emptyFurthestNullableCache[Char](
        ExampleUtils.ZipperBigIntBigIntHashable,
        content,
        AmyLexer.rules
      )
  }
}

@State(Scope.Thread)
class WarmAmyGeneratedV3MemState extends FreshAmyGeneratedV3MemState {
  @Setup(Level.Iteration)
  def warm(): Unit = {
    val (_, suffix) = Lexer.lexMem(AmyLexer.rules, content)(
      using ClassTag.Char,
      zipperCacheUp,
      zipperCacheDown,
      furthestNullableCache
    )
    assert(suffix.isEmpty)
  }
}

object AmyLexerBenchmarkUtils {
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

  val exampleFileContents: Map[String, Sequence[Char]] = exampleFileNames.map { name =>
    val source = scala.io.Source.fromFile(s"src/main/scala/com/ziplex/example/res/amy/$name")
    val lines = try source.mkString.toStainless finally source.close()
    name -> lines
  }.toMap

  val exampleFilesJavaIo: Map[String, java.io.File] = exampleFileNames.map { name =>
    name -> new java.io.File(s"src/main/scala/com/ziplex/example/res/amy/$name")
  }.toMap

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

  val generatedFileContents: Map[String, Sequence[Char]] = generatedFileNames.map { name =>
    val source = scala.io.Source.fromFile(s"src/main/scala/com/ziplex/benchmark/res/generated-amy/$name")
    val lines = try source.mkString.toStainless finally source.close()
    name -> lines
  }.toMap

  val generatedFilesJavaIo: Map[String, java.io.File] = generatedFileNames.map { name =>
    name -> new java.io.File(s"src/main/scala/com/ziplex/benchmark/res/generated-amy/$name")
  }.toMap
}