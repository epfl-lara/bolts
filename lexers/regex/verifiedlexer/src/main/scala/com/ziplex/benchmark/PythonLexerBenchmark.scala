package com.ziplex.lexer
package benchmark.lexer

import java.util.concurrent.TimeUnit
import org.openjdk.jmh.annotations.*
import org.openjdk.jmh.infra.Blackhole
import scala.util.Random
import stainless.collection.{List => StainlessList}
import scala.compiletime.uninitialized
import com.ziplex.lexer.VerifiedLexer.Lexer
import com.ziplex.lexer.example.ExamplePythonLexer.PythonLexer
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
class PythonLexerBenchmark {

  @Benchmark
  def lex_ZipperV1Mem(state: FreshPythonV1MemState, bh: Blackhole): Unit = {
    val (tokens, suffix) = Lexer.lexV1Mem(PythonLexer.rules, state.content)(
      using ClassTag.Char,
      state.zipperCacheUp,
      state.zipperCacheDown
    )
    bh.consume(suffix.isEmpty)
  }

  // @Benchmark
  // def lex_ZipperV1Mem_Warm(state: WarmPythonV1MemState, bh: Blackhole): Unit = {
  //   val (tokens, suffix) = Lexer.lexV1Mem(PythonLexer.rules, state.content)(
  //     using ClassTag.Char,
  //     state.zipperCacheUp,
  //     state.zipperCacheDown
  //   )
  //   bh.consume(suffix.isEmpty)
  // }

  @Benchmark
  def lex_ZipperMem(state: FreshPythonV3MemState, bh: Blackhole): Unit = {
    val (tokens, suffix) = Lexer.lexMem(PythonLexer.rules, state.content)(
      using ClassTag.Char,
      state.zipperCacheUp,
      state.zipperCacheDown,
      state.furthestNullableCache
    )
    bh.consume(suffix.isEmpty)
  }

  // @Benchmark
  // def lex_ZipperMem_Warm(state: WarmPythonV3MemState, bh: Blackhole): Unit = {
  //   val (tokens, suffix) = Lexer.lexMem(PythonLexer.rules, state.content)(
  //     using ClassTag.Char,
  //     state.zipperCacheUp,
  //     state.zipperCacheDown,
  //     state.furthestNullableCache
  //   )
  //   bh.consume(suffix.isEmpty)
  // }
}

object CPythonInterface {
  /** Run CPython's tokenizer (`python3 -S -B -m tokenize -e`) on the given UTF-8 bytes via stdin.
    * Output is discarded; this drives the real tokenizer without filesystem I/O.
    */
  def lexUtf8(data: Array[Byte]): Unit = {
    val pb = new ProcessBuilder("python3", "-S", "-B", "-m", "tokenize", "-e")
    pb.redirectOutput(ProcessBuilder.Redirect.DISCARD)
    pb.redirectError(ProcessBuilder.Redirect.DISCARD)

    val p  = pb.start()
    val os = p.getOutputStream
    try {
      os.write(data)
      os.flush()
    } finally {
      os.close()
    }

    val exit = p.waitFor()
    assert(exit == 0, s"CPython tokenizer exited with code $exit")
  }
}

@State(Scope.Thread)
class PythonFileState {
  @Param(Array(
    "Micro_1chars.py",
    "AsyncDemo_426chars.py",
    "BigString_113chars.py",
    "CommandMatcher_660chars.py",
    "EventSim20x_42063chars.py",
    "EventSim_2002chars.py",
    "Factorial_168chars.py",
    "FizzBuzz_245chars.py",
    "MultiLineString_323chars.py",
    "ParseNumbers_708chars.py",
    "Pipeline_413chars.py",
    "PrimeSieve_458chars.py",
    "Simple_26chars.py",
    "TimedFib_679chars.py",
    "TinyPlus_164chars.py",
    "Vector2D_802chars.py",
    "WordStats_346chars.py",
  ))
  var file: String = uninitialized

  var content: Sequence[Char] = uninitialized
  var fileJavaIo: java.io.File = uninitialized

  @Setup(Level.Trial)
  def setupFile(): Unit = {
    content = PythonLexerBenchmarkUtils.exampleFileContents(file)
    fileJavaIo = PythonLexerBenchmarkUtils.exampleFilesJavaIo(file)
  }
}

@State(Scope.Thread)
class FreshPythonV1MemState extends PythonFileState {
  var zipperCacheUp: MemoisationZipper.CacheUp[Char] = uninitialized
  var zipperCacheDown: MemoisationZipper.CacheDown[Char] = uninitialized

  @Setup(Level.Iteration)
  def setupCaches(): Unit = {
    zipperCacheUp = MemoisationZipper.emptyUp(ContextCharHashable)
    zipperCacheDown = MemoisationZipper.emptyDown(RegexContextCharHashable)
  }
}

@State(Scope.Thread)
class WarmPythonV1MemState extends FreshPythonV1MemState {
  @Setup(Level.Iteration)
  def warm(): Unit = {
    val (_, suffix) = Lexer.lexV1Mem(PythonLexer.rules, content)(
      using ClassTag.Char,
      zipperCacheUp,
      zipperCacheDown
    )
    assert(suffix.isEmpty)
  }
}

@State(Scope.Thread)
class FreshPythonV3MemState extends PythonFileState {
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
        PythonLexer.rules
      )
  }
}

@State(Scope.Thread)
class WarmPythonV3MemState extends FreshPythonV3MemState {
  @Setup(Level.Iteration)
  def warm(): Unit = {
    val (_, suffix) = Lexer.lexMem(PythonLexer.rules, content)(
      using ClassTag.Char,
      zipperCacheUp,
      zipperCacheDown,
      furthestNullableCache
    )
    assert(suffix.isEmpty)
  }
}

object PythonLexerBenchmarkUtils {
  val exampleFileNames: Seq[String] = Seq(
    "Micro_1chars.py",
    "AsyncDemo_426chars.py",
    "BigString_113chars.py",
    "CommandMatcher_660chars.py",
    "EventSim20x_42063chars.py",
    "EventSim_2002chars.py",
    "Factorial_168chars.py",
    "FizzBuzz_245chars.py",
    "MultiLineString_323chars.py",
    "ParseNumbers_708chars.py",
    "Pipeline_413chars.py",
    "PrimeSieve_458chars.py",
    "Simple_26chars.py",
    "TimedFib_679chars.py",
    "TinyPlus_164chars.py",
    "Vector2D_802chars.py",
    "WordStats_346chars.py",
  )

  val exampleFileContents: Map[String, Sequence[Char]] = exampleFileNames.map { name =>
    val source = scala.io.Source.fromFile(s"src/main/scala/com/ziplex/example/res/python/$name")
    val lines = try source.mkString.toStainless finally source.close()
    name -> lines
  }.toMap

  val exampleFilesJavaIo: Map[String, java.io.File] = exampleFileNames.map { name =>
    name -> new java.io.File(s"src/main/scala/com/ziplex/example/res/python/$name")
  }.toMap
}