package com.ziplex.lexer
package benchmark.lexer

import java.util.concurrent.TimeUnit
import org.openjdk.jmh.annotations.*
import org.openjdk.jmh.infra.Blackhole
import scala.util.Random
import stainless.collection.{List => StainlessList, IArray}
import scala.compiletime.uninitialized
import com.ziplex.lexer.VerifiedLexer.Lexer
import com.ziplex.lexer.example.ExampleAAStarBLexer.AAStarBLexer
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
import com.ziplex.lexer.seqFromArray
import com.ziplex.lexer.example.ExampleUtils
import com.ziplex.benchmark.silex.SilexAAStarBLexer

import scala.reflect.ClassTag
import java.io.File

@BenchmarkMode(Array(Mode.AverageTime))
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Fork(jvmArgsAppend = Array("-Xss1G", "-Xmx32g"))
class AAStarBLexerBenchmark {

  // @Benchmark
  // def lex_ZipperV1Mem(state: FreshAAStarBLexV1MemState, bh: Blackhole): Unit = {
  //   val (tokens, suffix) = Lexer.lexV1Mem(AAStarBLexer.rules, state.content)(
  //     using ClassTag.Char,
  //     state.zipperCacheUp,
  //     state.zipperCacheDown
  //   )
  //   bh.consume(suffix.isEmpty)
  // }

  // @Benchmark
  // def lex_ZipperV1Mem_Warm(state: WarmAAStarBLexV1MemState, bh: Blackhole): Unit = {
  //   val (tokens, suffix) = Lexer.lexV1Mem(AAStarBLexer.rules, state.content)(
  //     using ClassTag.Char,
  //     state.zipperCacheUp,
  //     state.zipperCacheDown
  //   )
  //   bh.consume(suffix.isEmpty)
  // }

  @Benchmark
  def lex_ZipperV3Mem(state: FreshAAStarBLexV3MemState, bh: Blackhole): Unit = {
    val (tokens, suffix) = Lexer.lexMem(AAStarBLexer.rules, state.content)(
      using ClassTag.Char,
      state.zipperCacheUp,
      state.zipperCacheDown,
      state.furthestNullableCache
    )
    bh.consume(suffix.isEmpty)
  }

  // @Benchmark
  // def lex_ZipperV3Mem_Warm(state: WarmAAStarBLexV3MemState, bh: Blackhole): Unit = {
  //   val (tokens, suffix) = Lexer.lexMem(AAStarBLexer.rules, state.content)(
  //     using ClassTag.Char,
  //     state.zipperCacheUp,
  //     state.zipperCacheDown,
  //     state.furthestNullableCache
  //   )
  //   bh.consume(suffix.isEmpty)
  // }

  @Benchmark
  def lex_ZipperV2Mem(state: FreshAAStarBLexV2MemState, bh: Blackhole): Unit = {
    val (tokens, suffix) = Lexer.lexV2Mem(AAStarBLexer.rules, state.content)(
      using ClassTag.Char,
      state.zipperCacheUp,
      state.zipperCacheDown,
      state.findLongestMatchCache
    )
    bh.consume(suffix.isEmpty)
  }

  // @Benchmark
  // def lex_ZipperV2Mem_Warm(state: WarmAAStarBLexV2MemState, bh: Blackhole): Unit = {
  //   val (tokens, suffix) = Lexer.lexV2Mem(AAStarBLexer.rules, state.content)(
  //     using ClassTag.Char,
  //     state.zipperCacheUp,
  //     state.zipperCacheDown,
  //     state.findLongestMatchCache
  //   )
  //   bh.consume(suffix.isEmpty)
  // }

  @Benchmark
  def lex_Silex(state: AAStarBLexFileState): Unit = {
    val tokens = SilexAAStarBLexer.run(state.fileJavaIo)
  }
}

@BenchmarkMode(Array(Mode.AverageTime))
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Fork(jvmArgsAppend = Array("-Xss1G", "-Xmx64g"))
class BigAAStarBLexerBenchmark {

  @Benchmark
  def lex_ZipperV3Mem(state: FreshBigAAStarBLexV3MemState, bh: Blackhole): Unit = {
    val (tokens, suffix) = Lexer.lexMem(AAStarBLexer.rules, state.content)(
      using ClassTag.Char,
      state.zipperCacheUp,
      state.zipperCacheDown,
      state.furthestNullableCache
    )
    bh.consume(suffix.isEmpty)
  }

  // @Benchmark
  // def lex_ZipperV3Mem_Warm(state: WarmBigAAStarBLexV3MemState, bh: Blackhole): Unit = {
  //   val (tokens, suffix) = Lexer.lexMem(AAStarBLexer.rules, state.content)(
  //     using ClassTag.Char,
  //     state.zipperCacheUp,
  //     state.zipperCacheDown,
  //     state.furthestNullableCache
  //   )
  //   bh.consume(suffix.isEmpty)
  // }
}

@State(Scope.Thread)
class AAStarBLexFileState {
  @Param(Array(
    "100000.txt",
    "10000.txt",
    "1000.txt",
    "100.txt",
    "1200.txt",
    "12500.txt",
    "15000.txt",
    "17500.txt",
    "20000.txt",
    "2000.txt",
    "200.txt",
    "22500.txt",
    "25000.txt",
    "2500.txt",
    "27500.txt",
    "30000.txt",
    "300.txt",
    "32500.txt",
    "35000.txt",
    "37500.txt",
    "40000.txt",
    "42500.txt",
    "45000.txt",
    "47500.txt",
    "50000.txt",
    "5000.txt",
    "500.txt",
    "52500.txt",
    "55000.txt",
    "57500.txt",
    "60000.txt",
    "62500.txt",
    "65000.txt",
    "67500.txt",
    "70000.txt",
    "72500.txt",
    "75000.txt",
    "77500.txt",
    "80000.txt",
    "800.txt",
    "82500.txt",
    "85000.txt",
    "87500.txt",
    "90000.txt",
    "92500.txt",
    "95000.txt",
    "97500.txt",
  ))
  var file: String = uninitialized

  var content: Sequence[Char] = uninitialized
  var fileJavaIo: java.io.File = uninitialized

  @Setup(Level.Trial)
  def setupFile(): Unit = {
    content = AAStarBLexerBenchmarkUtils.fileContents(file)
    fileJavaIo = AAStarBLexerBenchmarkUtils.filesJavaIo(file)
  }
}

@State(Scope.Thread)
class FreshAAStarBLexV1MemState extends AAStarBLexFileState {
  var zipperCacheUp: MemoisationZipper.CacheUp[Char] = uninitialized
  var zipperCacheDown: MemoisationZipper.CacheDown[Char] = uninitialized

  @Setup(Level.Iteration)
  def setupCaches(): Unit = {
    zipperCacheUp = MemoisationZipper.emptyUp(ContextCharHashable)
    zipperCacheDown = MemoisationZipper.emptyDown(RegexContextCharHashable)
  }
}

@State(Scope.Thread)
class WarmAAStarBLexV1MemState extends FreshAAStarBLexV1MemState {
  @Setup(Level.Iteration)
  def warm(): Unit = {
    val (_, suffix) = Lexer.lexV1Mem(AAStarBLexer.rules, content)(
      using ClassTag.Char,
      zipperCacheUp,
      zipperCacheDown
    )
    assert(suffix.isEmpty)
  }
}

@State(Scope.Thread)
class FreshAAStarBLexV3MemState extends AAStarBLexFileState {
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
        AAStarBLexer.rules
      )
  }
}

@State(Scope.Thread)
class WarmAAStarBLexV3MemState extends FreshAAStarBLexV3MemState {
  @Setup(Level.Iteration)
  def warm(): Unit = {
    val (_, suffix) = Lexer.lexMem(AAStarBLexer.rules, content)(
      using ClassTag.Char,
      zipperCacheUp,
      zipperCacheDown,
      furthestNullableCache
    )
    assert(suffix.isEmpty)
  }
}

@State(Scope.Thread)
class FreshAAStarBLexV2MemState extends AAStarBLexFileState {
  var zipperCacheUp: MemoisationZipper.CacheUp[Char] = uninitialized
  var zipperCacheDown: MemoisationZipper.CacheDown[Char] = uninitialized
  var findLongestMatchCache: MemoisationZipper.CacheFindLongestMatch[Char] = uninitialized

  @Setup(Level.Iteration)
  def setupCaches(): Unit = {
    zipperCacheUp = MemoisationZipper.emptyUp(ContextCharHashable)
    zipperCacheDown = MemoisationZipper.emptyDown(RegexContextCharHashable)
    findLongestMatchCache =
      MemoisationZipper.emptyFindLongestMatch[Char](
        ExampleUtils.ZipperBigIntHashable,
        content
      )
  }
}

@State(Scope.Thread)
class WarmAAStarBLexV2MemState extends FreshAAStarBLexV2MemState {
  @Setup(Level.Iteration)
  def warm(): Unit = {
    val (_, suffix) = Lexer.lexV2Mem(AAStarBLexer.rules, content)(
      using ClassTag.Char,
      zipperCacheUp,
      zipperCacheDown,
      findLongestMatchCache
    )
    assert(suffix.isEmpty)
  }
}

@State(Scope.Thread)
class BigAAStarBLexSizeState {
  @Param(Array(
    "10",
    "20",
    "50",
    "100",
    "500",
    "1000",
    "2000",
    "4000",
    "5000",
    "8000",
    "10000",
    "15000",
    "20000",
    "25000",
    "30000",
    "100000"
  ))
  var sizeInKB: String = uninitialized

  var content: Sequence[Char] = uninitialized

  @Setup(Level.Trial)
  def setupContent(): Unit = {
    content = AAStarBLexerBenchmarkBigUtils.kiloBytesSequences(sizeInKB)
  }
}

@State(Scope.Thread)
class FreshBigAAStarBLexV3MemState extends BigAAStarBLexSizeState {
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
        AAStarBLexer.rules
      )
  }
}

@State(Scope.Thread)
class WarmBigAAStarBLexV3MemState extends FreshBigAAStarBLexV3MemState {
  @Setup(Level.Iteration)
  def warm(): Unit = {
    val (_, suffix) = Lexer.lexMem(AAStarBLexer.rules, content)(
      using ClassTag.Char,
      zipperCacheUp,
      zipperCacheDown,
      furthestNullableCache
    )
    assert(suffix.isEmpty)
  }
}

object AAStarBLexerBenchmarkBigUtils {
  val kbSizes: Seq[String] = Seq(
    "10",
    "20",
    "50",
    "100",
    "500",
    "1000",
    "2000",
    "4000",
    "5000",
    "8000",
    "10000",
    "15000",
    "20000",
    "25000",
    "30000",
    "100000"
  )

  val kiloBytesSequences: Map[String, Sequence[Char]] = kbSizes.map { kb =>
    val sizeInChars: Int = (kb.toDouble * 1_000).toInt
    val contentArray = IArray.tabulate(sizeInChars)(_ => 'a')
    val content = seqFromArray(contentArray)
    assert(content.size == sizeInChars)
    kb -> content
  }.toMap
}

object AAStarBLexerBenchmarkUtils {
  val fileNames: Seq[String] = Seq(
    "100000.txt",
    "10000.txt",
    "1000.txt",
    "100.txt",
    "1200.txt",
    "12500.txt",
    "15000.txt",
    "17500.txt",
    "20000.txt",
    "2000.txt",
    "200.txt",
    "22500.txt",
    "25000.txt",
    "2500.txt",
    "27500.txt",
    "30000.txt",
    "300.txt",
    "32500.txt",
    "35000.txt",
    "37500.txt",
    "40000.txt",
    "42500.txt",
    "45000.txt",
    "47500.txt",
    "50000.txt",
    "5000.txt",
    "500.txt",
    "52500.txt",
    "55000.txt",
    "57500.txt",
    "60000.txt",
    "62500.txt",
    "65000.txt",
    "67500.txt",
    "70000.txt",
    "72500.txt",
    "75000.txt",
    "77500.txt",
    "80000.txt",
    "800.txt",
    "82500.txt",
    "85000.txt",
    "87500.txt",
    "90000.txt",
    "92500.txt",
    "95000.txt",
    "97500.txt",
  )

  val fileContents: Map[String, Sequence[Char]] = fileNames.map { name =>
    val source = scala.io.Source.fromFile(s"src/main/scala/com/ziplex/benchmark/res/as/$name")
    val lines = try source.mkString.toStainless finally source.close()
    name -> lines
  }.toMap

  val filesJavaIo: Map[String, java.io.File] = fileNames.map { name =>
    name -> new java.io.File(s"src/main/scala/com/ziplex/benchmark/res/as/$name")
  }.toMap
}