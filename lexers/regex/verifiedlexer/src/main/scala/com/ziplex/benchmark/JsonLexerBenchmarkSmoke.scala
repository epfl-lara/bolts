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
class JsonLexerBenchmarkSmoke {

  @Benchmark
  def lex_ZipperMem(state: FreshLexMemStateSmoke, bh: Blackhole): Unit = {
    val (tokens, suffix) = Lexer.lexMem(JsonLexer.rules, state.content)(
      using ClassTag.Char,
      state.zipperCacheUp,
      state.zipperCacheDown,
      state.furthestNullableCache
    )
    bh.consume(suffix.isEmpty)
  }
}

@State(Scope.Thread)
class FileStateSmoke {
  @Param(Array(
    "2_456chars.json",
    "42_9755chars.json",
  ))
  var file: String = uninitialized

  var content: Sequence[Char] = uninitialized

  @Setup(Level.Trial)
  def setupFile(): Unit = {
    content = JsonLexerBenchmarkUtils.exampleFileContents(file)
  }
}

@State(Scope.Thread)
class FreshLexMemStateSmoke extends FileStateSmoke {
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

object JsonLexerBenchmarkUtilsSmoke {
  val exampleFileNames: Seq[String] = Seq(
    "2_456chars.json",
    "42_9755chars.json",
  )

  val exampleFileContents: Map[String, Sequence[Char]] = exampleFileNames.map { name =>
    val source = scala.io.Source.fromFile(s"src/main/scala/com/ziplex/benchmark/res/json/$name")
    val lines = try source.mkString.toStainless finally source.close()
    (name -> lines)
  }.toMap
}