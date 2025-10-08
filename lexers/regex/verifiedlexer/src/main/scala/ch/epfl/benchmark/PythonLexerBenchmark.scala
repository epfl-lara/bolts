package ch.epfl.lexer
package benchmark.lexer

import java.util.concurrent.TimeUnit
import org.openjdk.jmh.annotations.*
import scala.util.Random
import stainless.collection.{List => StainlessList}
import scala.compiletime.uninitialized
import ch.epfl.lexer.VerifiedLexer.Lexer
import ch.epfl.lexer.example.ExamplePythonLexer.PythonLexer
import ch.epfl.lexer.example.RegexUtils.*
import ch.epfl.lexer.Vector
import ch.epfl.lexer.MemoisationZipper
import ch.epfl.lexer.VerifiedRegex.Regex
import ch.epfl.map.Hashable
import ch.epfl.lexer.ZipperRegex.Context
import ch.epfl.lexer.benchmark.ContextCharHashable
import ch.epfl.lexer.benchmark.RegexCharHashable
import ch.epfl.lexer.benchmark.RegexContextCharHashable

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
  def lex_ZipperMem(): Unit = {
    val (tokens, suffix) = Lexer.lexMem(PythonLexer.rules, PythonLexerBenchmarkUtils.exampleFileContents(file))(
      using PythonLexerBenchmarkUtils.zipperCacheUp,
      PythonLexerBenchmarkUtils.zipperCacheDown
    )
    assert(suffix.isEmpty)
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
  val exampleFileContents: Map[String, Vector[Char]] = exampleFileNames.map(name => {
    val source = scala.io.Source.fromFile(s"src/main/scala/ch/epfl/example/res/python/$name")
    val lines = try source.mkString.toStainless finally source.close()
    (name -> lines)
  }).toMap

  val exampleFilesJavaIo: Map[String, java.io.File] = exampleFileNames.map(name => {
    val file = new java.io.File(s"src/main/scala/ch/epfl/example/res/python/$name")
    (name -> file)
  }).toMap

  val zipperCacheUp: MemoisationZipper.CacheUp[Char] = MemoisationZipper.emptyUp(ContextCharHashable)
  val zipperCacheDown: MemoisationZipper.CacheDown[Char] = MemoisationZipper.emptyDown(RegexContextCharHashable)
}