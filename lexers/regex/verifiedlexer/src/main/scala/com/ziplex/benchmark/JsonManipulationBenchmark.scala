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
import com.ziplex.lexer.VerifiedLexer.emptyPrintableTokens
import com.ziplex.lexer.example.ExampleJsonLexer.JsonLexer
import com.ziplex.lexer.example.RegexUtils.*
import com.ziplex.lexer.MemoisationZipper
import com.ziplex.lexer.VerifiedRegex.Regex
import com.mutablemaps.map.Hashable
import com.ziplex.lexer.ZipperRegex.Context
import com.ziplex.lexer.benchmark.ContextCharHashable
import com.ziplex.lexer.benchmark.RegexCharHashable
import com.ziplex.lexer.benchmark.RegexContextCharHashable
import com.ziplex.lexer.VerifiedLexer.printableTokensFromTokensMem
import com.ziplex.lexer.VerifiedLexer.printableTokensFromTokens

import com.ziplex.lexer.example.JsonManipulationExample.*
import com.ziplex.lexer.example.ExampleJsonLexer.Types.*

import com.ziplex.lexer.Sequence
import com.ziplex.lexer.emptySeq
import com.ziplex.lexer.singletonSeq
import com.ziplex.lexer.seqFromList

import com.ziplex.lexer.example.ExampleUtils

import scala.reflect.ClassTag
import java.io.File
import com.ziplex.lexer.VerifiedLexer.PrintableTokens
import com.ziplex.lexer.MemoisationZipper.CacheUp
import com.ziplex.lexer.MemoisationZipper.CacheDown

@BenchmarkMode(Array(Mode.AverageTime))
@OutputTimeUnit(TimeUnit.MICROSECONDS)
class JsonManipulationBenchmark {

  @Benchmark
  def lexV1(state: FreshLexV1State, bh: Blackhole): Unit = {
    val (tokens, suffix) = Lexer.lexV1Mem(JsonLexer.rules, state.content)(
      using ClassTag.Char,
      state.zipperCacheUp,
      state.zipperCacheDown
    )
    bh.consume(suffix.isEmpty)
  }

  // @Benchmark
  // def lexV1_Warm(state: WarmLexV1State, bh: Blackhole): Unit = {
  //   val (tokens, suffix) = Lexer.lexV1Mem(JsonLexer.rules, state.content)(
  //     using ClassTag.Char,
  //     state.zipperCacheUp,
  //     state.zipperCacheDown
  //   )
  //   bh.consume(suffix.isEmpty)
  // }

  @Benchmark
  def lex(state: FreshLexV3State, bh: Blackhole): Unit = {
    val (tokens, suffix) = Lexer.lexMem(JsonLexer.rules, state.content)(
      using ClassTag.Char,
      state.zipperCacheUp,
      state.zipperCacheDown,
      state.furthestNullableCache
    )
    bh.consume(suffix.isEmpty)
  }

  @Benchmark
  def lex_Warm(state: WarmLexV3State, bh: Blackhole): Unit = {
    val (tokens, suffix) = Lexer.lexMem(JsonLexer.rules, state.content)(
      using ClassTag.Char,
      state.zipperCacheUp,
      state.zipperCacheDown,
      state.furthestNullableCache
    )
    bh.consume(suffix.isEmpty)
  }

  // @Benchmark
  // def lexV1NonMem(state: FileStateJsonManipulation, bh: Blackhole): Unit = {
  //   val (tokens, suffix) = Lexer.lexV1(JsonLexer.rules, state.content)
  //   bh.consume(suffix.isEmpty)
  // }

  // @Benchmark
  // def lexAndCheckPrintableV1(state: FreshLexAndPrintableV1State, bh: Blackhole): Unit = {
  //   val (tokens, _) = Lexer.lexV1Mem(JsonLexer.rules, state.content)(
  //     using ClassTag.Char,
  //     state.zipperCacheUp,
  //     state.zipperCacheDown
  //   )
  //   val res = printableTokensFromTokensMem(JsonLexer.rules, tokens)(
  //     using ClassTag.Char,
  //     state.zipperCacheUp,
  //     state.zipperCacheDown
  //   )
  //   bh.consume(res.isDefined)
  //   bh.consume(res.get.size > 0)
  // }

  // @Benchmark
  // def lexAndCheckPrintableV1_Warm(state: WarmLexAndPrintableV1State, bh: Blackhole): Unit = {
  //   val (tokens, _) = Lexer.lexV1Mem(JsonLexer.rules, state.content)(
  //     using ClassTag.Char,
  //     state.zipperCacheUp,
  //     state.zipperCacheDown
  //   )
  //   val res = printableTokensFromTokensMem(JsonLexer.rules, tokens)(
  //     using ClassTag.Char,
  //     state.zipperCacheUp,
  //     state.zipperCacheDown
  //   )
  //   bh.consume(res.isDefined)
  //   bh.consume(res.get.size > 0)
  // }

  @Benchmark
  def lexAndCheckPrintableV3(state: FreshLexAndPrintableV3State, bh: Blackhole): Unit = {
    val (tokens, _) = Lexer.lexMem(JsonLexer.rules, state.content)(
      using ClassTag.Char,
      state.zipperCacheUp,
      state.zipperCacheDown,
      state.furthestNullableCache
    )
    val res = printableTokensFromTokensMem(JsonLexer.rules, tokens)(
      using ClassTag.Char,
      state.zipperCacheUp,
      state.zipperCacheDown
    )
    bh.consume(res.isDefined)
    bh.consume(res.get.size > 0)
  }

  @Benchmark
  def lexAndCheckPrintableV3_Warm(state: WarmLexAndPrintableV3State, bh: Blackhole): Unit = {
    val (tokens, _) = Lexer.lexMem(JsonLexer.rules, state.content)(
      using ClassTag.Char,
      state.zipperCacheUp,
      state.zipperCacheDown,
      state.furthestNullableCache
    )
    val res = printableTokensFromTokensMem(JsonLexer.rules, tokens)(
      using ClassTag.Char,
      state.zipperCacheUp,
      state.zipperCacheDown
    )
    bh.consume(res.isDefined)
    bh.consume(res.get.size > 0)
  }

  @Benchmark
  def checkPrintableNonMem(state: PrintableTokensState, bh: Blackhole): Unit = {
    val tokens = state.printableTokens.tokens
    val res = printableTokensFromTokens(JsonLexer.rules, tokens)
    bh.consume(res.isDefined)
    bh.consume(res.get.size > 0)
  }

  @Benchmark
  def checkPrintableMemPreFilledCache(state: WarmCheckPrintableState, bh: Blackhole): Unit = {
    val tokens = state.printableTokens.tokens
    val res = printableTokensFromTokensMem(JsonLexer.rules, tokens)(
      using ClassTag.Char,
      state.zipperCacheUp,
      state.zipperCacheDown
    )
    bh.consume(res.isDefined)
    bh.consume(res.get.size > 0)
  }

  @Benchmark
  def sliceAndSort(state: PrintableTokensState, bh: Blackhole): Unit = {
    val printableTokens = state.printableTokens
    val tokensSize = printableTokens.size
    val indices = indicesOfOpenBraces(printableTokens.tokens, tokensSize)
    val slices: Sequence[PrintableTokens[Char]] = slicesMulti(printableTokens, tokensSize, indices)
    val slicesWithIds = slices.map(JsonManipulationBenchmarkUtils.addId)
    val orderedSlices = sortObjectsByID(slicesWithIds)
    bh.consume(orderedSlices.size > 0)
    val orderedSlicesWithoutIds = orderedSlices.map(JsonManipulationBenchmarkUtils.removeId)
    bh.consume(orderedSlicesWithoutIds.size > 0)
  }

  @Benchmark
  def recombineSlices(state: OrderedSlicesState, bh: Blackhole): Unit = {
    val orderedSlicesWithoutIds = state.orderedSlicesWithoutIds
    val sep = JsonManipulationBenchmarkUtils.commaNewLineSeparator
    bh.consume(orderedSlicesWithoutIds.size > 0)
    val recombined = recombineSlicesWithSep(orderedSlicesWithoutIds, sep, emptyPrintableTokens(JsonLexer.rules))
    bh.consume(recombined.isDefined)
    val withBrackets = encloseInSep(
      recombined.get,
      JsonManipulationBenchmarkUtils.leftBracketSeparator,
      JsonManipulationBenchmarkUtils.rightBracketSeparator
    )
    bh.consume(withBrackets.isDefined)
    bh.consume(withBrackets.get.size > 0)
  }

  @Benchmark
  def checkPredicateAndRecombineWithoutWrapper(state: OrderedSlicesTokensState, bh: Blackhole): Unit = {
    val orderedSlicesWithoutIdsJustTokens = state.orderedSlicesWithoutIdsJustTokens
    bh.consume(orderedSlicesWithoutIdsJustTokens.size > 0)
    val length = orderedSlicesWithoutIdsJustTokens.size
    var i = BigInt(0)
    var recombined = emptySeq[Token[Char]]()
    while i < length do {
      val tokens = orderedSlicesWithoutIdsJustTokens(i)
      recombined = recombined ++ tokens
      if i < length - 1 then {
        recombined =
          recombined ++
            singletonSeq(JsonManipulationBenchmarkUtils.commaToken) ++
            singletonSeq(JsonManipulationBenchmarkUtils.newLineToken)
      }
      i = i + 1
    }
    bh.consume(recombined.size > 0)
    val withBrackets =
      singletonSeq(JsonManipulationBenchmarkUtils.leftBracketToken) ++
        recombined ++
        singletonSeq(JsonManipulationBenchmarkUtils.rightBracketToken)
    val printable = Lexer.separableTokensMem(withBrackets, JsonLexer.rules)(
      using ClassTag.Char,
      state.zipperCacheUp,
      state.zipperCacheDown
    )
    bh.consume(printable)
  }

  @Benchmark
  def checkPredicateAndRecombineWithoutWrapper_Warm(state: WarmOrderedSlicesTokensState, bh: Blackhole): Unit = {
    val orderedSlicesWithoutIdsJustTokens = state.orderedSlicesWithoutIdsJustTokens
    bh.consume(orderedSlicesWithoutIdsJustTokens.size > 0)
    val length = orderedSlicesWithoutIdsJustTokens.size
    var i = BigInt(0)
    var recombined = emptySeq[Token[Char]]()
    while i < length do {
      val tokens = orderedSlicesWithoutIdsJustTokens(i)
      recombined = recombined ++ tokens
      if i < length - 1 then {
        recombined =
          recombined ++
            singletonSeq(JsonManipulationBenchmarkUtils.commaToken) ++
            singletonSeq(JsonManipulationBenchmarkUtils.newLineToken)
      }
      i = i + 1
    }
    bh.consume(recombined.size > 0)
    val withBrackets =
      singletonSeq(JsonManipulationBenchmarkUtils.leftBracketToken) ++
        recombined ++
        singletonSeq(JsonManipulationBenchmarkUtils.rightBracketToken)
    val printable = Lexer.separableTokensMem(withBrackets, JsonLexer.rules)(
      using ClassTag.Char,
      state.zipperCacheUp,
      state.zipperCacheDown
    )
    bh.consume(printable)
  }
}

@State(Scope.Thread)
class FileStateJsonManipulation {
  @Param(Array(
    "0001_2079chars.json",
    "0002_4157chars.json",
    "0010_20776chars.json",
    "0015_31167chars.json",
    "0020_41560chars.json",
    "0025_51950chars.json",
    "0030_62339chars.json",
    "0035_72724chars.json",
    "0050_103898chars.json",
    "0070_145455chars.json",
    "0090_187013chars.json",
    "0120_249345chars.json",
    "0150_311687chars.json",
    "0200_415578chars.json",
    "0300_623361chars.json",
    "0400_831171chars.json",
    "0500_1038945chars.json",
  ))
  var file: String = uninitialized

  var content: Sequence[Char] = uninitialized

  @Setup(Level.Trial)
  def setupFile(): Unit = {
    content = JsonManipulationBenchmarkUtils.fileContents(file)
  }
}

@State(Scope.Thread)
class FreshLexV1State extends FileStateJsonManipulation {
  var zipperCacheUp: MemoisationZipper.CacheUp[Char] = uninitialized
  var zipperCacheDown: MemoisationZipper.CacheDown[Char] = uninitialized

  @Setup(Level.Iteration)
  def setupCaches(): Unit = {
    zipperCacheUp = MemoisationZipper.emptyUp(ContextCharHashable)
    zipperCacheDown = MemoisationZipper.emptyDown(RegexContextCharHashable)
  }
}

@State(Scope.Thread)
class WarmLexV1State extends FreshLexV1State {
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
class FreshLexV3State extends FileStateJsonManipulation {
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
class WarmLexV3State extends FreshLexV3State {
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
class FreshLexAndPrintableV1State extends FileStateJsonManipulation {
  var zipperCacheUp: MemoisationZipper.CacheUp[Char] = uninitialized
  var zipperCacheDown: MemoisationZipper.CacheDown[Char] = uninitialized

  @Setup(Level.Iteration)
  def setupCaches(): Unit = {
    zipperCacheUp = MemoisationZipper.emptyUp(ContextCharHashable)
    zipperCacheDown = MemoisationZipper.emptyDown(RegexContextCharHashable)
  }
}

@State(Scope.Thread)
class WarmLexAndPrintableV1State extends FreshLexAndPrintableV1State {
  @Setup(Level.Iteration)
  def warm(): Unit = {
    val (tokens, suffix) = Lexer.lexV1Mem(JsonLexer.rules, content)(
      using ClassTag.Char,
      zipperCacheUp,
      zipperCacheDown
    )
    assert(suffix.isEmpty)
    val res = printableTokensFromTokensMem(JsonLexer.rules, tokens)(
      using ClassTag.Char,
      zipperCacheUp,
      zipperCacheDown
    )
    assert(res.isDefined)
  }
}

@State(Scope.Thread)
class FreshLexAndPrintableV3State extends FileStateJsonManipulation {
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
class WarmLexAndPrintableV3State extends FreshLexAndPrintableV3State {
  @Setup(Level.Iteration)
  def warm(): Unit = {
    val (tokens, suffix) = Lexer.lexMem(JsonLexer.rules, content)(
      using ClassTag.Char,
      zipperCacheUp,
      zipperCacheDown,
      furthestNullableCache
    )
    assert(suffix.isEmpty)
    val res = printableTokensFromTokensMem(JsonLexer.rules, tokens)(
      using ClassTag.Char,
      zipperCacheUp,
      zipperCacheDown
    )
    assert(res.isDefined)
  }
}

@State(Scope.Thread)
class PrintableTokensState extends FileStateJsonManipulation {
  var printableTokens: PrintableTokens[Char] = uninitialized

  @Setup(Level.Iteration)
  def setupPrintableTokens(): Unit = {
    val lexUp = MemoisationZipper.emptyUp(ContextCharHashable)
    val lexDown = MemoisationZipper.emptyDown(RegexContextCharHashable)
    val furthestNullableCache =
      MemoisationZipper.emptyFurthestNullableCache[Char](
        ExampleUtils.ZipperBigIntBigIntHashable,
        content,
        JsonLexer.rules
      )

    val (tokens, suffix) = Lexer.lexMem(JsonLexer.rules, content)(
      using ClassTag.Char,
      lexUp,
      lexDown,
      furthestNullableCache
    )
    assert(suffix.isEmpty)

    printableTokens = printableTokensFromTokensMem(JsonLexer.rules, tokens)(
      using ClassTag.Char,
      MemoisationZipper.emptyUp(ContextCharHashable),
      MemoisationZipper.emptyDown(RegexContextCharHashable)
    ).get
  }
}

@State(Scope.Thread)
class WarmCheckPrintableState extends PrintableTokensState {
  var zipperCacheUp: MemoisationZipper.CacheUp[Char] = uninitialized
  var zipperCacheDown: MemoisationZipper.CacheDown[Char] = uninitialized

  @Setup(Level.Iteration)
  def setupWarmCache(): Unit = {
    zipperCacheUp = MemoisationZipper.emptyUp(ContextCharHashable)
    zipperCacheDown = MemoisationZipper.emptyDown(RegexContextCharHashable)
    val res = printableTokensFromTokensMem(JsonLexer.rules, printableTokens.tokens)(
      using ClassTag.Char,
      zipperCacheUp,
      zipperCacheDown
    )
    assert(res.isDefined)
  }
}

@State(Scope.Thread)
class OrderedSlicesState extends PrintableTokensState {
  var orderedSlicesWithoutIds: Sequence[PrintableTokens[Char]] = uninitialized

  @Setup(Level.Iteration)
  def setupOrderedSlices(): Unit = {
    setupPrintableTokens()
    val pt = printableTokens
    val tokensSize = pt.size
    val indices = indicesOfOpenBraces(pt.tokens, tokensSize)
    val slices: Sequence[PrintableTokens[Char]] = slicesMulti(pt, tokensSize, indices)
    val slicesWithIds = slices.map(JsonManipulationBenchmarkUtils.addId)
    val orderedSlices = sortObjectsByID(slicesWithIds)
    assert(orderedSlices.size > 0)
    orderedSlicesWithoutIds = orderedSlices.map(JsonManipulationBenchmarkUtils.removeId)
    assert(orderedSlicesWithoutIds.size > 0)
  }
}

@State(Scope.Thread)
class OrderedSlicesTokensState extends OrderedSlicesState {
  var orderedSlicesWithoutIdsJustTokens: Sequence[Sequence[Token[Char]]] = uninitialized
  var zipperCacheUp: MemoisationZipper.CacheUp[Char] = uninitialized
  var zipperCacheDown: MemoisationZipper.CacheDown[Char] = uninitialized

  @Setup(Level.Iteration)
  def setupTokensAndCaches(): Unit = {
    setupOrderedSlices()
    orderedSlicesWithoutIdsJustTokens = orderedSlicesWithoutIds.map(_.tokens)
    zipperCacheUp = MemoisationZipper.emptyUp(ContextCharHashable)
    zipperCacheDown = MemoisationZipper.emptyDown(RegexContextCharHashable)
  }
}

@State(Scope.Thread)
class WarmOrderedSlicesTokensState extends OrderedSlicesTokensState {
  @Setup(Level.Iteration)
  def warm(): Unit = {
    setupTokensAndCaches()
    val length = orderedSlicesWithoutIdsJustTokens.size
    var i = BigInt(0)
    var recombined = emptySeq[Token[Char]]()
    while i < length do {
      val tokens = orderedSlicesWithoutIdsJustTokens(i)
      recombined = recombined ++ tokens
      if i < length - 1 then {
        recombined =
          recombined ++
            singletonSeq(JsonManipulationBenchmarkUtils.commaToken) ++
            singletonSeq(JsonManipulationBenchmarkUtils.newLineToken)
      }
      i = i + 1
    }
    val withBrackets =
      singletonSeq(JsonManipulationBenchmarkUtils.leftBracketToken) ++
        recombined ++
        singletonSeq(JsonManipulationBenchmarkUtils.rightBracketToken)
    val printable = Lexer.separableTokensMem(withBrackets, JsonLexer.rules)(
      using ClassTag.Char,
      zipperCacheUp,
      zipperCacheDown
    )
    assert(printable)
  }
}

object JsonManipulationBenchmarkUtils {
  val fileNames: Seq[String] = Seq(
    "0001_2079chars.json",
    "0002_4157chars.json",
    "0010_20776chars.json",
    "0015_31167chars.json",
    "0020_41560chars.json",
    "0025_51950chars.json",
    "0030_62339chars.json",
    "0035_72724chars.json",
    "0050_103898chars.json",
    "0070_145455chars.json",
    "0090_187013chars.json",
    "0120_249345chars.json",
    "0150_311687chars.json",
    "0200_415578chars.json",
    "0300_623361chars.json",
    "0400_831171chars.json",
    "0500_1038945chars.json",
  )

  val fileContents: Map[String, Sequence[Char]] = fileNames.map { name =>
    val source = scala.io.Source.fromFile(s"src/main/scala/com/ziplex/benchmark/res/json-manip/$name")
    val lines = try source.mkString.toStainless finally source.close()
    name -> lines
  }.toMap

  given CacheUp[Char] = MemoisationZipper.emptyUp(ContextCharHashable)
  given CacheDown[Char] = MemoisationZipper.emptyDown(RegexContextCharHashable)


  val (commaNewLineSeparator, leftBracketSeparator, rightBracketSeparator) =
    (createCommaNewLineSeparator.get, createLeftBracketSeparator.get, createRightBracketSeparator.get)

  val commaToken =
    Token(KeywordValueInjection.injection(singletonSeq(',')), JsonLexer.commaRule, BigInt(1), stainless.collection.List(','))
  val newLineToken =
    Token(WhitespaceValueInjection.injection(singletonSeq('\n')), JsonLexer.whitespaceRule, BigInt(1), stainless.collection.List('\n'))
  val leftBracketToken =
    Token(KeywordValueInjection.injection(singletonSeq('[')), JsonLexer.lBracketRule, BigInt(1), stainless.collection.List('['))
  val rightBracketToken =
    Token(KeywordValueInjection.injection(singletonSeq(']')), JsonLexer.rBracketRule, BigInt(1), stainless.collection.List(']'))

  def addId(pt: PrintableTokens[Char]): (BigInt, PrintableTokens[Char]) = (parseID(pt), pt)
  def removeId(t: (BigInt, PrintableTokens[Char])): PrintableTokens[Char] = t._2
}