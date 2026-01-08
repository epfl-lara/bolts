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

import scala.reflect.ClassTag
import java.io.File

@State(Scope.Benchmark)
@Fork(jvmArgsAppend = Array("-Xss1G", "-Xmx32g"))
class AAStarBLexerBenchmark {

  @Param(
    Array(
    "100.txt",
    "1000.txt",
    "10000.txt",
    "1200.txt",
    "200.txt",
    "2000.txt",
    "20000.txt",
    "300.txt",
    "30000.txt",
    "40000.txt",
    "500.0.txt",
    "500.txt",
    "5000.txt",
    "50000.txt",
    "800.txt",
    )
  )
  var file: String = uninitialized

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lex_ZipperV1Mem(bh: Blackhole): Unit = {
    val (tokens, suffix) = Lexer.lexV1Mem(AAStarBLexer.rules, AAStarBLexerBenchmarkUtils.fileContents(file))(
      using ClassTag.Char,
      AAStarBLexerBenchmarkUtils.zipperCacheUp,
      AAStarBLexerBenchmarkUtils.zipperCacheDown
    )
    bh.consume(suffix.isEmpty)
    // assert(suffix.isEmpty)
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lex_ZipperV3Mem(bh: Blackhole): Unit = {
    val (tokens, suffix) = Lexer.lexMem(AAStarBLexer.rules, AAStarBLexerBenchmarkUtils.fileContents(file))(
      using ClassTag.Char,
      AAStarBLexerBenchmarkUtils.zipperCacheUp,
      AAStarBLexerBenchmarkUtils.zipperCacheDown,
      AAStarBLexerBenchmarkUtils.furthestNullableCaches(file)
    )
    bh.consume(suffix.isEmpty)
    // assert(suffix.isEmpty)
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lex_ZipperV2Mem(bh: Blackhole): Unit = {
    val (tokens, suffix) = Lexer.lexV2Mem(AAStarBLexer.rules, AAStarBLexerBenchmarkUtils.fileContents(file))(
      using ClassTag.Char,
      AAStarBLexerBenchmarkUtils.zipperCacheUp,
      AAStarBLexerBenchmarkUtils.zipperCacheDown,
      AAStarBLexerBenchmarkUtils.findLongestMatchCaches(file)
    )
    bh.consume(suffix.isEmpty)
    // assert(suffix.isEmpty)
  }

}

@State(Scope.Benchmark)
@Fork(jvmArgsAppend = Array("-Xss1G", "-Xmx48g"))
class AAStarBLexerBenchmarkBig {

  @Param(
    Array(
    "0.01",
    "0.02",
    "0.05",
    "0.1", 
    "0.5", 
    "1", 
    "5", 
    "10", 
    "20", 
    "30", 
    "100"
    )
  )
  var sizeInMB: String = uninitialized

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lex_ZipperV3Mem(bh: Blackhole): Unit = {
    val (tokens, suffix) = Lexer.lexMem(AAStarBLexer.rules, AAStarBLexerBenchmarkBigUtils.megaBytesSequences(sizeInMB))(
      using ClassTag.Char,
      AAStarBLexerBenchmarkBigUtils.zipperCacheUp,
      AAStarBLexerBenchmarkBigUtils.zipperCacheDown,
      AAStarBLexerBenchmarkBigUtils.furthestNullableCachesLarge(sizeInMB)
    )
    bh.consume(suffix.isEmpty)
    // assert(suffix.isEmpty)
  }


}

object AAStarBLexerBenchmarkBigUtils {
  val mbSizes: Seq[Double] = Seq(0.01, 0.02, 0.05, 0.1, 0.5, 1, 5, 10, 20, 30, 100)
  val megaBytesSequences: Map[String, Sequence[Char]] = (mbSizes).map { mb =>
    val sizeInChars: Int = (mb * 1_000_000).toInt
    val contentArray = IArray.tabulate(sizeInChars)(_ => 'a')
    val content = seqFromArray(contentArray)
    assert(content.size == sizeInChars)
    (s"${mb}", content)
  }.toMap

  val zipperCacheUp: MemoisationZipper.CacheUp[Char] = MemoisationZipper.emptyUp(ContextCharHashable)
  val zipperCacheDown: MemoisationZipper.CacheDown[Char] = MemoisationZipper.emptyDown(RegexContextCharHashable)
  val furthestNullableCachesLarge: Map[String, MemoisationZipper.CacheFurthestNullable[Char]] = 
    (megaBytesSequences).map(kv => 
      (kv._1, MemoisationZipper.emptyFurthestNullableCache[Char](ExampleUtils.ZipperBigIntBigIntHashable, kv._2))
    )
}

object AAStarBLexerBenchmarkUtils {
  val fileNames: Seq[String] = Seq(
    "100.txt",
    "1000.txt",
    "10000.txt",
    "1200.txt",
    "200.txt",
    "2000.txt",
    "20000.txt",
    "300.txt",
    "30000.txt",
    "40000.txt",
    "500.0.txt",
    "500.txt",
    "5000.txt",
    "50000.txt",
    "800.txt",
  )
  val fileContents: Map[String, Sequence[Char]] = fileNames.map(name => {
    val source = scala.io.Source.fromFile(s"src/main/scala/com/ziplex/benchmark/res/as/$name")
    val lines = try source.mkString.toStainless finally source.close()
    (name -> lines)
  }).toMap

  val zipperCacheUp: MemoisationZipper.CacheUp[Char] = MemoisationZipper.emptyUp(ContextCharHashable)
  val zipperCacheDown: MemoisationZipper.CacheDown[Char] = MemoisationZipper.emptyDown(RegexContextCharHashable)
  val findLongestMatchCaches: Map[String, MemoisationZipper.CacheFindLongestMatch[Char]] = 
    (fileContents).map(kv => 
      (kv._1, MemoisationZipper.emptyFindLongestMatch[Char](ExampleUtils.ZipperBigIntHashable, kv._2))
    )
  val furthestNullableCaches: Map[String, MemoisationZipper.CacheFurthestNullable[Char]] = 
    (fileContents).map(kv => 
      (kv._1, MemoisationZipper.emptyFurthestNullableCache[Char](ExampleUtils.ZipperBigIntBigIntHashable, kv._2))
    )

  val zipperCacheUpInternal: MemoisationZipper.CacheUp[Char] = MemoisationZipper.emptyUp(ContextCharHashable)
  val zipperCacheDownInternal: MemoisationZipper.CacheDown[Char] = MemoisationZipper.emptyDown(RegexContextCharHashable)
  val findLongestMatchCachesInternal: Map[String, MemoisationZipper.CacheFindLongestMatch[Char]] = 
    (fileContents).map(kv => 
      (kv._1, MemoisationZipper.emptyFindLongestMatch[Char](ExampleUtils.ZipperBigIntHashable, kv._2))
    )
}