/** Author: Samuel Chassot
  */

package com.ziplex.lexer
package benchmark

import java.util.concurrent.TimeUnit
import org.openjdk.jmh.annotations.*
import org.openjdk.jmh.infra.Blackhole
import scala.util.Random
import scala.compiletime.uninitialized
import stainless.collection.{List => StainlessList}
import com.ziplex.lexer.VerifiedRegex.Regex
import com.ziplex.lexer.VerifiedRegexMatcher.matchZipperMem
import com.ziplex.lexer.MemoisationZipper
import com.ziplex.lexer.ZipperRegex.ZipperDerivationStepsMemoized
import com.ziplex.lexer.example.RegexUtils.*

/**
  * Benchmarks the memoized zipper matcher on a fixed set of 20 small patterns, on accepted strings of growing length.
  *
  * Patterns:
  *   p00 [a-z]+               p10 a*b*c*
  *   p01 [a-z][a-z0-9]*       p11 (a|b|...|p)+ (16-way union)
  *   p02 [0-9]+               p12 (abcdefghij)+
  *   p03 [a-z0-9]+            p13 [a-c]+[d-f]+[g-i]+
  *   p04 [a-z]+@[a-z]+        p14 ([a-z][0-9])+
  *   p05 (foo|bar|baz)+       p15 (a*)*     encoded as (a+)*     (same language, the matcher requires Star bodies to be non-nullable)
  *   p06 (cat|dog|bird|fish)+ p16 (a+)+
  *   p07 (abc)+               p17 (a|aa)+
  *   p08 (ab|cd|ef)+          p18 (a*b*)*   encoded as (a+|b+)*  (same language, the matcher requires Star bodies to be non-nullable)
  *   p09 (x|y|z)+             p19 ((a+)+)+
  *
  * Character classes are ElementRanges (unions of them for classes with several intervals). The input strings are generated randomly (with a fixed seed) and have the requested
  * length, except for patterns made of fixed words, for which they have the largest possible length <= the requested one
  * (or a single word if none fits, i.e., (abcdefghij)+ for size 8).
  */
@BenchmarkMode(Array(Mode.AverageTime))
@OutputTimeUnit(TimeUnit.MICROSECONDS)
class RegexClementBenchmark {

  private def run(pid: Int, state: FreshRegexClementState, bh: Blackhole): Unit = {
    val res = matchZipperMem(RegexClementBenchmarkUtils.patterns(pid), state.inputs(pid))(
      using state.zipperMemSteps
    )
    bh.consume(res)
  }

  @Benchmark
  def p00_azPlus_ZipperMem_list(state: FreshRegexClementState, bh: Blackhole): Unit = run(0, state, bh)

  @Benchmark
  def p01_identifier_ZipperMem_list(state: FreshRegexClementState, bh: Blackhole): Unit = run(1, state, bh)

  @Benchmark
  def p02_digitsPlus_ZipperMem_list(state: FreshRegexClementState, bh: Blackhole): Unit = run(2, state, bh)

  @Benchmark
  def p03_azDigitsPlus_ZipperMem_list(state: FreshRegexClementState, bh: Blackhole): Unit = run(3, state, bh)

  @Benchmark
  def p04_email_ZipperMem_list(state: FreshRegexClementState, bh: Blackhole): Unit = run(4, state, bh)

  @Benchmark
  def p05_fooBarBazPlus_ZipperMem_list(state: FreshRegexClementState, bh: Blackhole): Unit = run(5, state, bh)

  @Benchmark
  def p06_catDogBirdFishPlus_ZipperMem_list(state: FreshRegexClementState, bh: Blackhole): Unit = run(6, state, bh)

  @Benchmark
  def p07_abcPlus_ZipperMem_list(state: FreshRegexClementState, bh: Blackhole): Unit = run(7, state, bh)

  @Benchmark
  def p08_abCdEfPlus_ZipperMem_list(state: FreshRegexClementState, bh: Blackhole): Unit = run(8, state, bh)

  @Benchmark
  def p09_xyzPlus_ZipperMem_list(state: FreshRegexClementState, bh: Blackhole): Unit = run(9, state, bh)

  @Benchmark
  def p10_aStarBStarCStar_ZipperMem_list(state: FreshRegexClementState, bh: Blackhole): Unit = run(10, state, bh)

  @Benchmark
  def p11_union16Plus_ZipperMem_list(state: FreshRegexClementState, bh: Blackhole): Unit = run(11, state, bh)

  @Benchmark
  def p12_abcdefghijPlus_ZipperMem_list(state: FreshRegexClementState, bh: Blackhole): Unit = run(12, state, bh)

  @Benchmark
  def p13_threeRanges_ZipperMem_list(state: FreshRegexClementState, bh: Blackhole): Unit = run(13, state, bh)

  @Benchmark
  def p14_letterDigitPlus_ZipperMem_list(state: FreshRegexClementState, bh: Blackhole): Unit = run(14, state, bh)

  @Benchmark
  def p15_aStarStar_ZipperMem_list(state: FreshRegexClementState, bh: Blackhole): Unit = run(15, state, bh)

  @Benchmark
  def p16_aPlusPlus_ZipperMem_list(state: FreshRegexClementState, bh: Blackhole): Unit = run(16, state, bh)

  @Benchmark
  def p17_aOrAaPlus_ZipperMem_list(state: FreshRegexClementState, bh: Blackhole): Unit = run(17, state, bh)

  @Benchmark
  def p18_aStarBStarStar_ZipperMem_list(state: FreshRegexClementState, bh: Blackhole): Unit = run(18, state, bh)

  @Benchmark
  def p19_aPlusPlusPlus_ZipperMem_list(state: FreshRegexClementState, bh: Blackhole): Unit = run(19, state, bh)
}

@State(Scope.Thread)
class RegexClementState {
  // 4 sizes equally distributed between 8 and 512
  @Param(Array(
    "8",
    "176",
    "344",
    "512",
  ))
  var size: String = uninitialized

  // inputs(pid) is the accepted string for pattern pid
  var inputs: Array[StainlessList[Char]] = uninitialized

  @Setup(Level.Trial)
  def setupInputs(): Unit = {
    val n = size.toInt
    inputs = RegexClementBenchmarkUtils.accepting_strings_list.map(_(n))
  }
}

@State(Scope.Thread)
class FreshRegexClementState extends RegexClementState {
  var zipperCacheUp: MemoisationZipper.CacheUp[Char] = uninitialized
  var zipperCacheDown: MemoisationZipper.CacheDown[Char] = uninitialized
  var zipperMemSteps: ZipperDerivationStepsMemoized[Char] = uninitialized

  @Setup(Level.Iteration)
  def setupCaches(): Unit = {
    zipperCacheUp = MemoisationZipper.emptyUp(ContextCharHashable)
    zipperCacheDown = MemoisationZipper.emptyDown(RegexContextCharHashable)
    zipperMemSteps = ZipperDerivationStepsMemoized(zipperCacheUp, zipperCacheDown)
  }
}

object RegexClementBenchmarkUtils {
  val seed = 0x0ddba11
  val r = new Random(seed)

  val string_sizes = List(8, 176, 344, 512)

  val az = "abcdefghijklmnopqrstuvwxyz"
  val digitsString = "0123456789"

  def union(regexes: Seq[Regex[Char]]): Regex[Char] = regexes.reduceLeft(_ | _)
  def unionOfWords(words: Seq[String]): Regex[Char] = union(words.map(_.r))

  val patterns: Array[Regex[Char]] = Array(
    /* p00 */ range('a', 'z').+,
    /* p01 */ range('a', 'z') ~ (range('a', 'z') | range('0', '9')).*,
    /* p02 */ range('0', '9').+,
    /* p03 */ (range('a', 'z') | range('0', '9')).+,
    /* p04 */ range('a', 'z').+ ~ "@".r ~ range('a', 'z').+,
    /* p05 */ unionOfWords(Seq("foo", "bar", "baz")).+,
    /* p06 */ unionOfWords(Seq("cat", "dog", "bird", "fish")).+,
    /* p07 */ "abc".r.+,
    /* p08 */ unionOfWords(Seq("ab", "cd", "ef")).+,
    /* p09 */ unionOfWords(Seq("x", "y", "z")).+,
    /* p10 */ "a".r.* ~ "b".r.* ~ "c".r.*,
    /* p11 */ union("abcdefghijklmnop".map(_.r)).+,
    /* p12 */ "abcdefghij".r.+,
    /* p13 */ range('a', 'c').+ ~ range('d', 'f').+ ~ range('g', 'i').+,
    /* p14 */ (range('a', 'z') ~ range('0', '9')).+,
    /* p15 */ "a".r.+.*,
    /* p16 */ "a".r.+.+,
    /* p17 */ ("a" | "aa").+,
    /* p18 */ ("a".r.+ | "b".r.+).*,
    /* p19 */ "a".r.+.+.+,
  )

  // RegexUtils' `*` extension on String shadows StringOps' `*`
  def repeat(c: Char, n: Int): String = c.toString.repeat(n)

  def randomCharsFrom(chars: String, n: Int): String = (1 to n).map(_ => chars(r.nextInt(chars.length))).mkString

  /** Concatenation of random words, as long as possible without exceeding n characters, but with at least one word */
  def randomWords(words: Seq[String], n: Int): String = {
    val sb = new StringBuilder
    sb ++= words(r.nextInt(words.length))
    var fitting = words.filter(_.length <= n - sb.length)
    while (fitting.nonEmpty) {
      sb ++= fitting(r.nextInt(fitting.length))
      fitting = words.filter(_.length <= n - sb.length)
    }
    sb.toString
  }

  /** Random sizes of `parts` parts summing to n, each at least `min` */
  def randomSplit(n: Int, parts: Int, min: Int): Seq[Int] = {
    val extra = Seq.fill(parts - 1)(r.nextInt(n - parts * min + 1)).sorted
    val bounds = 0 +: extra :+ (n - parts * min)
    bounds.sliding(2).map { case Seq(a, b) => b - a + min }.toSeq
  }

  def random_accepting_string(pid: Int, n: Int): String = pid match {
    case 0  => randomCharsFrom(az, n)
    case 1  => randomCharsFrom(az, 1) + randomCharsFrom(az + digitsString, n - 1)
    case 2  => randomCharsFrom(digitsString, n)
    case 3  => randomCharsFrom(az + digitsString, n)
    case 4  =>
      val Seq(left, right) = randomSplit(n - 1, 2, 1)
      randomCharsFrom(az, left) + "@" + randomCharsFrom(az, right)
    case 5  => randomWords(Seq("foo", "bar", "baz"), n)
    case 6  => randomWords(Seq("cat", "dog", "bird", "fish"), n)
    case 7  => randomWords(Seq("abc"), n)
    case 8  => randomWords(Seq("ab", "cd", "ef"), n)
    case 9  => randomCharsFrom("xyz", n)
    case 10 =>
      val Seq(as, bs, cs) = randomSplit(n, 3, 0)
      repeat('a', as) + repeat('b', bs) + repeat('c', cs)
    case 11 => randomCharsFrom("abcdefghijklmnop", n)
    case 12 => randomWords(Seq("abcdefghij"), n)
    case 13 =>
      val Seq(first, second, third) = randomSplit(n, 3, 1)
      randomCharsFrom("abc", first) + randomCharsFrom("def", second) + randomCharsFrom("ghi", third)
    case 14 => (1 to n / 2).map(_ => randomCharsFrom(az, 1) + randomCharsFrom(digitsString, 1)).mkString
    case 15 => repeat('a', n)
    case 16 => repeat('a', n)
    case 17 => repeat('a', n)
    case 18 => randomCharsFrom("ab", n)
    case 19 => repeat('a', n)
  }

  // accepting_strings_list(pid)(n) is a string of size (at most) n accepted by pattern pid
  val accepting_strings_list: Array[Map[Int, StainlessList[Char]]] =
    patterns.indices.map(pid => string_sizes.map(n => (n, random_accepting_string(pid, n).toStainlessList)).toMap).toArray

  // Sanity check, with a dedicated cache so that the benchmark caches stay cold
  locally {
    given ZipperDerivationStepsMemoized[Char] = ZipperDerivationStepsMemoized(
      MemoisationZipper.emptyUp(ContextCharHashable),
      MemoisationZipper.emptyDown(RegexContextCharHashable)
    )
    for (pid <- patterns.indices; n <- string_sizes) {
      assert(matchZipperMem(patterns(pid), accepting_strings_list(pid)(n)), s"Input of size $n is not accepted by pattern p$pid")
    }
  }
}
