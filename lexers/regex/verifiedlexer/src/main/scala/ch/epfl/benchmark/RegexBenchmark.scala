package benchmark

import java.util.concurrent.TimeUnit
import org.openjdk.jmh.annotations.*
import scala.util.Random
import stainless.collection.{List => StainlessList}
import ch.epfl.lexer.VerifiedRegex.Regex
import ch.epfl.benchmark.RegexUtils.*
import scala.util.Random
import scala.compiletime.uninitialized
import ch.epfl.lexer.VerifiedRegexMatcher.matchZipper
import ch.epfl.lexer.VerifiedRegexMatcher.matchR
import ch.epfl.lexer.VerifiedRegexMatcher.matchRMem
import ch.epfl.lexer.MemoisationRegex
import ch.epfl.map.Hashable

@State(Scope.Benchmark)
class RegexBenchmark {

  @Param(
    Array(
     "5", 
     "10", 
     "15", 
     "20", 
     "25", 
     "30", 
     "35", 
     "40", 
     "45", 
     "50", 
     "55", 
     "60", 
     "65", 
     "70", 
     "75", 
     "80",
    //  "85",
    //  "90",
    //  "95", 
    //  "100"
    )
  )
  var size: String = uninitialized

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def abStar_accepting_regex(): Unit = {
    val r = RegexBenchmarkUtil.abStar
    val s = RegexBenchmarkUtil.abStar_Accepting_strings(size.toInt)
    matchR(r, s)
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def abStar_accepting_zipper(): Unit = {
    val r = RegexBenchmarkUtil.abStar
    val s = RegexBenchmarkUtil.abStar_Accepting_strings(size.toInt)
    matchZipper(r, s)
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def abStar_accepting_regex_mem(): Unit = {
    val r = RegexBenchmarkUtil.abStar
    val s = RegexBenchmarkUtil.abStar_Accepting_strings(size.toInt)
    matchRMem(r, s)(RegexBenchmarkUtil.regexCache)
  }

  // @Benchmark
  // @BenchmarkMode(Array(Mode.AverageTime))
  // @OutputTimeUnit(TimeUnit.MICROSECONDS)
  // def abStar_rejecting_zipper(): Unit = {
  //   val z = focus(RegexBenchmarkUtil.abStar)
  // }
}

object RegexCharHashable extends Hashable[(Regex[Char], Char)] {
  override def hash(k: (Regex[Char], Char)): Long = {
    val (r, c) = k
    r.hashCode() * 31 + c.hashCode()
  }
}

object RegexBenchmarkUtil {
  val seed = 0x0ddba11
  val r = new Random(seed)

  val string_sizes = List(5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100, 150, 200)
  val abStar: Regex[Char] = ("a" | "b").*

  val abStar_Accepting_strings: Map[Int, StainlessList[Char]] = string_sizes.map(n => (n, (1 to n).map(_ => random_a_or_b()).mkString.toStainless)).toMap

  val regexCache: MemoisationRegex.Cache[Char] = MemoisationRegex.empty(RegexCharHashable)


  def random_a_or_b(): String = {
    if (r.nextBoolean()) "a" else "b"
  }
}