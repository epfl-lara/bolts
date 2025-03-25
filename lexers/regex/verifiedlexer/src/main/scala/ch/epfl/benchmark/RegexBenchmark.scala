package benchmark

import java.util.concurrent.TimeUnit
import org.openjdk.jmh.annotations.*
import scala.util.Random
import stainless.collection.{List => StainlessList}
import ch.epfl.lexer.VerifiedRegex.Regex
import ch.epfl.lexer.benchmark.RegexUtils.*
import scala.util.Random
import scala.compiletime.uninitialized
import ch.epfl.lexer.VerifiedRegexMatcher.matchZipper
import ch.epfl.lexer.VerifiedRegexMatcher.matchR
import ch.epfl.lexer.VerifiedRegexMatcher.matchRMem
import ch.epfl.lexer.VerifiedRegexMatcher.matchZipperMem
import ch.epfl.lexer.MemoisationRegex
import ch.epfl.lexer.MemoisationZipper
import ch.epfl.lexer.ZipperRegex.Context
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
     "85",
     "90",
     "95", 
     "100"
    )
  )
  var size: String = uninitialized

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def abStarAccepting_Regex(): Unit = {
    val r = RegexBenchmarkUtil.abStar
    val s = RegexBenchmarkUtil.abStar_Accepting_strings(size.toInt)
    val res = matchR(r, s)
    assert(res)
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def abStarAccepting_Zipper(): Unit = {
    val r = RegexBenchmarkUtil.abStar
    val s = RegexBenchmarkUtil.abStar_Accepting_strings(size.toInt)
    val res = matchZipper(r, s)
    assert(res)
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def abStarAccepting_RegexMem(): Unit = {
    val r = RegexBenchmarkUtil.abStar
    val s = RegexBenchmarkUtil.abStar_Accepting_strings(size.toInt)
    val res = matchRMem(r, s)(RegexBenchmarkUtil.regexCache)
    assert(res)
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def abStarAccepting_ZipperMem(): Unit = {
    val r = RegexBenchmarkUtil.abStar
    val s = RegexBenchmarkUtil.abStar_Accepting_strings(size.toInt)
    val res = matchZipperMem(r, s)(RegexBenchmarkUtil.zipperCacheUp, RegexBenchmarkUtil.zipperCacheDown)
    assert(res)
  }

  // Email accepting regex -----------------------------------------------------------------------------------------------------------------------

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def emailAccepting_Regex(): Unit = {
    val r = RegexBenchmarkUtil.emailRegex
    val s = RegexBenchmarkUtil.email_Accepting_strings(size.toInt)
    val res = matchR(r, s)
    assert(res)
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def emailAccepting_Zipper(): Unit = {
    val r = RegexBenchmarkUtil.emailRegex
    val s = RegexBenchmarkUtil.email_Accepting_strings(size.toInt)
    val res = matchZipper(r, s)
    assert(res)
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def emailAccepting_ZipperMem(): Unit = {
    val r = RegexBenchmarkUtil.emailRegex
    val s = RegexBenchmarkUtil.email_Accepting_strings(size.toInt)
    val res = matchZipper(r, s)
    assert(res)
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def emailAccepting_RegexMem(): Unit = {
    val r = RegexBenchmarkUtil.emailRegex
    val s = RegexBenchmarkUtil.email_Accepting_strings(size.toInt)
    val res = matchRMem(r, s)(RegexBenchmarkUtil.regexCache)
    assert(res)
  }

 
}

object RegexCharHashable extends Hashable[(Regex[Char], Char)] {
  override def hash(k: (Regex[Char], Char)): Long = {
    val (r, c) = k
    r.hashCode() * 31 + c.hashCode()
  }
}

object ContextCharHashable extends Hashable[(Context[Char], Char)] {
  override def hash(k: (Context[Char], Char)): Long = {
    val (ctx, c) = k
    ctx.hashCode() * 31 + c.hashCode()
  }
}

object RegexContextCharHashable extends Hashable[(Regex[Char], Context[Char], Char)] {
  override def hash(k: (Regex[Char], Context[Char], Char)): Long = {
    val (r, ctx, c) = k
    r.hashCode() * 63 + ctx.hashCode() * 31 + c.hashCode()
  }
}

object RegexBenchmarkUtil {
  val seed = 0x0ddba11
  val r = new Random(seed)

  val string_sizes = List(5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100, 150, 200)
  val abStar: Regex[Char] = ("a" | "b").*

  val abStar_Accepting_strings: Map[Int, StainlessList[Char]] = string_sizes.map(n => (n, (1 to n).map(_ => random_a_or_b()).mkString.toStainless)).toMap

  val regexCache: MemoisationRegex.Cache[Char] = MemoisationRegex.empty(RegexCharHashable)
  val zipperCacheUp: MemoisationZipper.CacheUp[Char] = MemoisationZipper.emptyUp(ContextCharHashable)
  val zipperCacheDown: MemoisationZipper.CacheDown[Char] = MemoisationZipper.emptyDown(RegexContextCharHashable)

  val possibleEmailChars = "abcdedfghijklmnopqrstuvwxyz."
  val emailRegex = possibleEmailChars.anyOf.+ ~ "@".r ~ possibleEmailChars.anyOf.+ ~ ".".r ~ possibleEmailChars.anyOf.+

  val email_Accepting_strings: Map[Int, StainlessList[Char]] = string_sizes.map(n => (n, random_email_strings(n).toStainless)).toMap
  def random_a_or_b(): String = {
    if (r.nextBoolean()) "a" else "b"
  }

  def random_email_char(): String = {
    val index = r.nextInt(possibleEmailChars.length)
    possibleEmailChars(index).toString
  }

  def random_email_strings(n: Int): String = {
    val usableLength = n - 2
    val firstPartSize: Int = r.between(1, usableLength - 2 + 1)
    val secondPartSize: Int = r.between(1, usableLength - firstPartSize - 1 + 1)
    val thirdPartSize: Int = usableLength - firstPartSize - secondPartSize
    val res: String = (1.to(firstPartSize)).map(_ => random_email_char()).mkString + "@" + (1.to(secondPartSize)).map(_ => random_email_char()).mkString + "." + (1.to(thirdPartSize)).map(_ => random_email_char()).mkString
    // println(s"n = $n, usable length = $usableLength, first part size = $firstPartSize, second part size = $secondPartSize, res = $res")
    assert(res.size == n)
    res
  }
}