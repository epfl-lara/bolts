package com.ziplex.lexer
package benchmark.lexer

import java.util.concurrent.TimeUnit
import org.openjdk.jmh.annotations.*
import org.openjdk.jmh.infra.Blackhole
import scala.util.Random
import stainless.collection.{List => StainlessList}
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
import com.ziplex.lexer.example.ExampleUtils

import scala.reflect.ClassTag
import java.io.File
import com.ziplex.lexer.emptySeq

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
      AAStarBLexerBenchmarkUtils.furthestNullableCachesInternal(file)
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

class AAStarBLexerBenchmarkBig {

  @Param(
    Array(
    "1",
    "2",
    "3",
    "4",
    "5",
    )
  )
  var sizeIn100MB: String = uninitialized

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lex_ZipperV3Mem(bh: Blackhole): Unit = {
    val (tokens, suffix) = Lexer.lexMem(AAStarBLexer.rules, AAStarBLexerBenchmarkUtils.megaBytesSequences(sizeIn100MB))(
      using ClassTag.Char,
      AAStarBLexerBenchmarkUtils.zipperCacheUp,
      AAStarBLexerBenchmarkUtils.zipperCacheDown,
      AAStarBLexerBenchmarkUtils.furthestNullableCachesInternal(sizeIn100MB)
    )
    bh.consume(suffix.isEmpty)
    // assert(suffix.isEmpty)
  }


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


  val megaBytesSequences: Map[String, Sequence[Char]] = (1 to 5).map { mb =>
    val sizeInChars = mb * 100_000_000
    val content = emptySeq[Char]()
    var i = 0
    while i < sizeInChars do
      content.append('a')
      i += 1
    (s"${mb}", content)
  }.toMap

  val zipperCacheUp: MemoisationZipper.CacheUp[Char] = MemoisationZipper.emptyUp(ContextCharHashable)
  val zipperCacheDown: MemoisationZipper.CacheDown[Char] = MemoisationZipper.emptyDown(RegexContextCharHashable)
  val findLongestMatchCaches: Map[String, MemoisationZipper.CacheFindLongestMatch[Char]] = 
    (fileContents).map(kv => 
      (kv._1, MemoisationZipper.emptyFindLongestMatch[Char](ExampleUtils.ZipperBigIntHashable, kv._2))
    )

  val zipperCacheUpInternal: MemoisationZipper.CacheUp[Char] = MemoisationZipper.emptyUp(ContextCharHashable)
  val zipperCacheDownInternal: MemoisationZipper.CacheDown[Char] = MemoisationZipper.emptyDown(RegexContextCharHashable)
  val findLongestMatchCachesInternal: Map[String, MemoisationZipper.CacheFindLongestMatch[Char]] = 
    (fileContents).map(kv => 
      (kv._1, MemoisationZipper.emptyFindLongestMatch[Char](ExampleUtils.ZipperBigIntHashable, kv._2))
    )
  val furthestNullableCachesInternal: Map[String, MemoisationZipper.CacheFurthestNullable[Char]] = 
    (fileContents).map(kv => 
      (kv._1, MemoisationZipper.emptyFurthestNullableCache[Char](ExampleUtils.ZipperBigIntBigIntHashable, kv._2))
    )
  val furthestNullableCachesLarge: Map[String, MemoisationZipper.CacheFurthestNullable[Char]] = 
    (megaBytesSequences).map(kv => 
      (kv._1, MemoisationZipper.emptyFurthestNullableCache[Char](ExampleUtils.ZipperBigIntBigIntHashable, kv._2))
    )
}