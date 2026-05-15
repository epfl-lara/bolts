/** Author: Samuel Chassot
  */

package com.ziplex.lexer
package benchmark.lexer

import java.util.concurrent.TimeUnit
import org.openjdk.jmh.annotations.*
import org.openjdk.jmh.infra.Blackhole
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
import com.ziplex.lexer.example.ExampleUtils

import scala.reflect.ClassTag
import java.io.File
@BenchmarkMode(Array(Mode.AverageTime))
@OutputTimeUnit(TimeUnit.MICROSECONDS)
class JsonLexerBenchmark {

  @Benchmark
  def lex_ZipperV1Mem(state: FreshLexV1MemState, bh: Blackhole): Unit = {
    val (tokens, suffix) = Lexer.lexV1Mem(JsonLexer.rules, state.content)(
      using ClassTag.Char,
      state.zipperCacheUp,
      state.zipperCacheDown
    )
    bh.consume(suffix.isEmpty)
  }

  // @Benchmark
  // def lex_ZipperV1Mem_Warm(state: WarmLexV1MemState, bh: Blackhole): Unit = {
  //   val (tokens, suffix) = Lexer.lexV1Mem(JsonLexer.rules, state.content)(
  //     using ClassTag.Char,
  //     state.zipperCacheUp,
  //     state.zipperCacheDown
  //   )
  //   bh.consume(suffix.isEmpty)
  // }

  @Benchmark
  def lex_ZipperMem(state: FreshLexMemState, bh: Blackhole): Unit = {
    val (tokens, suffix) = Lexer.lexMem(JsonLexer.rules, state.content)(
      using ClassTag.Char,
      state.zipperCacheUp,
      state.zipperCacheDown,
      state.furthestNullableCache
    )
    bh.consume(suffix.isEmpty)
  }

  @Benchmark
  def lex_ZipperMem_Warm(state: WarmLexMemState, bh: Blackhole): Unit = {
    val (tokens, suffix) = Lexer.lexMem(JsonLexer.rules, state.content)(
      using ClassTag.Char,
      state.zipperCacheUp,
      state.zipperCacheDown,
      state.furthestNullableCache
    )
    bh.consume(suffix.isEmpty)
  }

  @Benchmark
  def lex_ZipperV1NonMem(state: FileState, bh: Blackhole): Unit = {
    val (tokens, suffix) = Lexer.lexV1(JsonLexer.rules, state.content)
    bh.consume(suffix.isEmpty)
  }

  @Benchmark
  def lex_ZipperV2NonMem(state: FileState, bh: Blackhole): Unit = {
    val (tokens, suffix) = Lexer.lex(JsonLexer.rules, state.content)
    bh.consume(suffix.isEmpty)
  }

  @Benchmark
  def lex_ZipperV2MemOnlyDeriv(state: FreshLexV2MemOnlyDerivState, bh: Blackhole): Unit = {
    val (tokens, suffix) = Lexer.lexV2MemOnlyDeriv(JsonLexer.rules, state.content)(
      using ClassTag.Char,
      state.zipperCacheUp,
      state.zipperCacheDown
    )
    bh.consume(suffix.isEmpty)
  }

  // @Benchmark
  // def lex_ZipperV2MemOnlyDeriv_Warm(state: WarmLexV2MemOnlyDerivState, bh: Blackhole): Unit = {
  //   val (tokens, suffix) = Lexer.lexV2MemOnlyDeriv(JsonLexer.rules, state.content)(
  //     using ClassTag.Char,
  //     state.zipperCacheUp,
  //     state.zipperCacheDown
  //   )
  //   bh.consume(suffix.isEmpty)
  // }

  @Benchmark
  def lex_ZipperV3NonMem(state: FileState, bh: Blackhole): Unit = {
    val (tokens, suffix) = Lexer.lexV3(JsonLexer.rules, state.content)
    bh.consume(suffix.isEmpty)
  }

  @Benchmark
  def lex_ZipperV3MemDeriv(state: FreshLexV3MemDerivState, bh: Blackhole): Unit = {
    val (tokens, suffix) = Lexer.lexV3MemDeriv(JsonLexer.rules, state.content)(
      using ClassTag.Char,
      state.zipperCacheUp,
      state.zipperCacheDown
    )
    bh.consume(suffix.isEmpty)
  }

  @Benchmark
  def lex_ZipperV3MemDeriv_Warm(state: WarmLexV3MemDerivState, bh: Blackhole): Unit = {
    val (tokens, suffix) = Lexer.lexV3MemDeriv(JsonLexer.rules, state.content)(
      using ClassTag.Char,
      state.zipperCacheUp,
      state.zipperCacheDown
    )
    bh.consume(suffix.isEmpty)
  }

  @Benchmark
  def separability_pred(state: FreshTokenState, bh: Blackhole): Unit = {
    val separable = Lexer.separableTokensMem(state.tokens, JsonLexer.rules)(
      using ClassTag.Char,
      state.zipperCacheUp,
      state.zipperCacheDown
    )
    bh.consume(separable)
  }

  @Benchmark
  def separability_pred_Warm(state: WarmTokenState, bh: Blackhole): Unit = {
    val separable = Lexer.separableTokensMem(state.tokens, JsonLexer.rules)(
      using ClassTag.Char,
      state.zipperCacheUp,
      state.zipperCacheDown
    )
    bh.consume(separable)
  }
}

@State(Scope.Thread)
class FileState {
  @Param(Array(
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
  ))
  var file: String = uninitialized

  var content: Sequence[Char] = uninitialized

  @Setup(Level.Trial)
  def setupFile(): Unit = {
    content = JsonLexerBenchmarkUtils.exampleFileContents(file)
  }
}

@State(Scope.Thread)
class FreshLexV1MemState extends FileState {
  var zipperCacheUp: MemoisationZipper.CacheUp[Char] = uninitialized
  var zipperCacheDown: MemoisationZipper.CacheDown[Char] = uninitialized

  @Setup(Level.Iteration)
  def setupCaches(): Unit = {
    zipperCacheUp = MemoisationZipper.emptyUp(ContextCharHashable)
    zipperCacheDown = MemoisationZipper.emptyDown(RegexContextCharHashable)
  }
}

@State(Scope.Thread)
class WarmLexV1MemState extends FreshLexV1MemState {
  @Setup(Level.Iteration)
  def warm(): Unit = {
    val (_, suffix) = Lexer.lexV1Mem(JsonLexer.rules, content)(
      using ClassTag.Char,
      zipperCacheUp,
      zipperCacheDown
    )
    assert(suffix.isEmpty)
  }
}

@State(Scope.Thread)
class FreshLexMemState extends FileState {
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
        JsonLexer.rules
      )
  }
}

@State(Scope.Thread)
class WarmLexMemState extends FreshLexMemState {
  @Setup(Level.Iteration)
  def warm(): Unit = {
    val (_, suffix) = Lexer.lexMem(JsonLexer.rules, content)(
      using ClassTag.Char,
      zipperCacheUp,
      zipperCacheDown,
      furthestNullableCache
    )
    assert(suffix.isEmpty)
  }
}

@State(Scope.Thread)
class FreshLexV2MemOnlyDerivState extends FileState {
  var zipperCacheUp: MemoisationZipper.CacheUp[Char] = uninitialized
  var zipperCacheDown: MemoisationZipper.CacheDown[Char] = uninitialized

  @Setup(Level.Iteration)
  def setupCaches(): Unit = {
    zipperCacheUp = MemoisationZipper.emptyUp(ContextCharHashable)
    zipperCacheDown = MemoisationZipper.emptyDown(RegexContextCharHashable)
  }
}

@State(Scope.Thread)
class WarmLexV2MemOnlyDerivState extends FreshLexV2MemOnlyDerivState {
  @Setup(Level.Iteration)
  def warm(): Unit = {
    val (_, suffix) = Lexer.lexV2MemOnlyDeriv(JsonLexer.rules, content)(
      using ClassTag.Char,
      zipperCacheUp,
      zipperCacheDown
    )
    assert(suffix.isEmpty)
  }
}

@State(Scope.Thread)
class FreshLexV3MemDerivState extends FileState {
  var zipperCacheUp: MemoisationZipper.CacheUp[Char] = uninitialized
  var zipperCacheDown: MemoisationZipper.CacheDown[Char] = uninitialized

  @Setup(Level.Iteration)
  def setupCaches(): Unit = {
    zipperCacheUp = MemoisationZipper.emptyUp(ContextCharHashable)
    zipperCacheDown = MemoisationZipper.emptyDown(RegexContextCharHashable)
  }
}

@State(Scope.Thread)
class WarmLexV3MemDerivState extends FreshLexV3MemDerivState {
  @Setup(Level.Iteration)
  def warm(): Unit = {
    val (_, suffix) = Lexer.lexV3MemDeriv(JsonLexer.rules, content)(
      using ClassTag.Char,
      zipperCacheUp,
      zipperCacheDown
    )
    assert(suffix.isEmpty)
  }
}

@State(Scope.Thread)
class FreshTokenState extends FileState {
  var tokens: Sequence[Token[Char]] = uninitialized
  var zipperCacheUp: MemoisationZipper.CacheUp[Char] = uninitialized
  var zipperCacheDown: MemoisationZipper.CacheDown[Char] = uninitialized

  @Setup(Level.Iteration)
  def setupTokensAndCaches(): Unit = {
    val lexUp = MemoisationZipper.emptyUp(ContextCharHashable)
    val lexDown = MemoisationZipper.emptyDown(RegexContextCharHashable)
    val furthestNullableCache =
      MemoisationZipper.emptyFurthestNullableCache[Char](
        ExampleUtils.ZipperBigIntBigIntHashable,
        content,
        JsonLexer.rules
      )

    val (ts, suffix) = Lexer.lexMem(JsonLexer.rules, content)(
      using ClassTag.Char,
      lexUp,
      lexDown,
      furthestNullableCache
    )
    assert(suffix.isEmpty)
    tokens = ts

    zipperCacheUp = MemoisationZipper.emptyUp(ContextCharHashable)
    zipperCacheDown = MemoisationZipper.emptyDown(RegexContextCharHashable)
  }
}

@State(Scope.Thread)
class WarmTokenState extends FreshTokenState {
  @Setup(Level.Iteration)
  def warm(): Unit = {
    val separable = Lexer.separableTokensMem(tokens, JsonLexer.rules)(
      using ClassTag.Char,
      zipperCacheUp,
      zipperCacheDown
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

  val exampleFileContents: Map[String, Sequence[Char]] = exampleFileNames.map { name =>
    val source = scala.io.Source.fromFile(s"src/main/scala/com/ziplex/benchmark/res/json/$name")
    val lines = try source.mkString.toStainless finally source.close()
    (name -> lines)
  }.toMap
}