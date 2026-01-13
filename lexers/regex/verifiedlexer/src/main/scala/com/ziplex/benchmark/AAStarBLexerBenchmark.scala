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

@State(Scope.Benchmark)
@Fork(jvmArgsAppend = Array("-Xss1G", "-Xmx32g"))
class AAStarBLexerBenchmark {

  @Param(
    Array(
    "100.txt",
    "1000.txt",
    "10000.txt",
    "1200.txt",
    "15000.txt",
    "200.txt",
    "2000.txt",
    "20000.txt",
    "25000.txt",
    "300.txt",
    "30000.txt",
    "35000.txt",
    "40000.txt",
    "45000.txt",
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

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lex_Silex(): Unit = {
    val tokens = SilexAAStarBLexer.run(AAStarBLexerBenchmarkUtils.filesJavaIo(file))
  }

}

@State(Scope.Benchmark)
@Fork(jvmArgsAppend = Array("-Xss1G", "-Xmx64g"))
class BigAAStarBLexerBenchmark {

  @Param(
    Array(
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
  )
  var sizeInKB: String = uninitialized

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lex_ZipperV3Mem(bh: Blackhole): Unit = {
    val (tokens, suffix) = Lexer.lexMem(AAStarBLexer.rules, AAStarBLexerBenchmarkBigUtils.kiloBytesSequences(sizeInKB))(
      using ClassTag.Char,
      AAStarBLexerBenchmarkBigUtils.zipperCacheUp,
      AAStarBLexerBenchmarkBigUtils.zipperCacheDown,
      AAStarBLexerBenchmarkBigUtils.furthestNullableCachesLarge(sizeInKB)
    )
    bh.consume(suffix.isEmpty)
    // assert(suffix.isEmpty)
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
  val kiloBytesSequences: Map[String, Sequence[Char]] = (kbSizes).map { kb =>
    val sizeInChars: Int = (kb.toDouble * 1_000).toInt
    val contentArray = IArray.tabulate(sizeInChars)(_ => 'a')
    val content = seqFromArray(contentArray)
    assert(content.size == sizeInChars)
    (s"${kb}", content)
  }.toMap

  val zipperCacheUp: MemoisationZipper.CacheUp[Char] = MemoisationZipper.emptyUp(ContextCharHashable)
  val zipperCacheDown: MemoisationZipper.CacheDown[Char] = MemoisationZipper.emptyDown(RegexContextCharHashable)
  val furthestNullableCachesLarge: Map[String, MemoisationZipper.CacheFurthestNullable[Char]] = 
    (kiloBytesSequences).map(kv => 
      (kv._1, MemoisationZipper.emptyFurthestNullableCache[Char](ExampleUtils.ZipperBigIntBigIntHashable, kv._2))
    )
}

object AAStarBLexerBenchmarkUtils {
  val fileNames: Seq[String] = Seq(
    "100.txt",
    "1000.txt",
    "10000.txt",
    "1200.txt",
    "15000.txt",
    "200.txt",
    "2000.txt",
    "20000.txt",
    "25000.txt",
    "300.txt",
    "30000.txt",
    "35000.txt",
    "40000.txt",
    "45000.txt",
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

  val filesJavaIo: Map[String, java.io.File] = fileNames.map(name => {
    (name -> new java.io.File(s"src/main/scala/com/ziplex/benchmark/res/as/$name"))
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