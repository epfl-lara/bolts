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

import scala.reflect.ClassTag
import java.io.File

@State(Scope.Benchmark)
class PythonLexerBenchmark {

  @Param(
    Array(
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
  )
  var file: String = uninitialized


  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lex_ZipperMem(bh: Blackhole): Unit = {
    val (tokens, suffix) = Lexer.lexMem(PythonLexer.rules, PythonLexerBenchmarkUtils.exampleFileContents(file))(
      using ClassTag.Char,
      PythonLexerBenchmarkUtils.zipperCacheUp,
      PythonLexerBenchmarkUtils.zipperCacheDown
    )
    bh.consume(suffix.isEmpty)
    // assert(suffix.isEmpty)
  }

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
      os.write(data)   // data already includes trailing '\n'
      os.flush()
    } finally {
      os.close()
    }

    val exit = p.waitFor()
    assert(exit == 0, s"CPython tokenizer exited with code $exit")
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
  val exampleFileContents: Map[String, Sequence[Char]] = exampleFileNames.map(name => {
    val source = scala.io.Source.fromFile(s"src/main/scala/com/ziplex/example/res/python/$name")
    val lines = try source.mkString.toStainless finally source.close()
    (name -> lines)
  }).toMap

  val exampleFilesJavaIo: Map[String, java.io.File] = exampleFileNames.map(name => {
    val file = new java.io.File(s"src/main/scala/com/ziplex/example/res/python/$name")
    (name -> file)
  }).toMap

  val zipperCacheUp: MemoisationZipper.CacheUp[Char] = MemoisationZipper.emptyUp(ContextCharHashable)
  val zipperCacheDown: MemoisationZipper.CacheDown[Char] = MemoisationZipper.emptyDown(RegexContextCharHashable)
}