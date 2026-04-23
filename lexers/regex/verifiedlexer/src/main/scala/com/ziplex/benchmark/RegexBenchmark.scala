package com.ziplex.lexer
package benchmark

import java.util.concurrent.TimeUnit
import org.openjdk.jmh.annotations.*
import scala.util.Random
import stainless.collection.{List => StainlessList}
import com.ziplex.lexer.VerifiedRegex.Regex
import com.ziplex.lexer.example.RegexUtils.*
import scala.util.Random
import scala.compiletime.uninitialized
import com.ziplex.lexer.VerifiedRegexMatcher.matchZipper
import com.ziplex.lexer.VerifiedRegexMatcher.matchZipperSequence
import com.ziplex.lexer.VerifiedRegexMatcher.matchZipperSequenceMem
import com.ziplex.lexer.VerifiedRegexMatcher.matchR
import com.ziplex.lexer.VerifiedRegexMatcher.matchRMem
import com.ziplex.lexer.VerifiedRegexMatcher.matchZipperMem
import com.ziplex.lexer.MemoisationRegex
import com.ziplex.lexer.MemoisationZipper
import com.ziplex.lexer.ZipperRegex.Context
import com.mutablemaps.map.Hashable

import com.ziplex.lexer.Sequence
import com.ziplex.lexer.emptySeq
import com.ziplex.lexer.singletonSeq
import com.ziplex.lexer.seqFromList
import org.openjdk.jmh.infra.Blackhole

@BenchmarkMode(Array(Mode.AverageTime))
@OutputTimeUnit(TimeUnit.MICROSECONDS)
class RegexBenchmark {
  import RegexBenchmarkUtils.given

  @Benchmark
  def abStarAccepting_Regex_list(state: RegexSizeState, bh: Blackhole): Unit = {
    val r = RegexBenchmarkUtils.abStar
    val s = state.abStarAcceptingList
    val res = matchR(r, s)
    bh.consume(res)
  }

  @Benchmark
  def abStarAccepting_Zipper_list(state: RegexSizeState, bh: Blackhole): Unit = {
    val r = RegexBenchmarkUtils.abStar
    val s = state.abStarAcceptingList
    val res = matchZipper(r, s)
    bh.consume(res)
  }

  @Benchmark
  def abStarAccepting_Zipper_vector(state: RegexSizeState, bh: Blackhole): Unit = {
    val r = RegexBenchmarkUtils.abStar
    val v = state.abStarAcceptingVector
    val res = matchZipperSequence(r, v)
    bh.consume(res)
  }

  @Benchmark
  def abStarAccepting_ZipperMem_vector(state: FreshRegexSizeState, bh: Blackhole): Unit = {
    val r = RegexBenchmarkUtils.abStar
    val v = state.abStarAcceptingVector
    val res = matchZipperSequenceMem(r, v)(
      using state.zipperCacheUp,
      state.zipperCacheDown
    )
    bh.consume(res)
  }

  @Benchmark
  def abStarAccepting_ZipperMem_vector_Warm(state: WarmRegexSizeState, bh: Blackhole): Unit = {
    val r = RegexBenchmarkUtils.abStar
    val v = state.abStarAcceptingVector
    val res = matchZipperSequenceMem(r, v)(
      using state.zipperCacheUp,
      state.zipperCacheDown
    )
    bh.consume(res)
  }

  @Benchmark
  def abStarAccepting_ZipperMem_list(state: FreshRegexSizeState, bh: Blackhole): Unit = {
    val r = RegexBenchmarkUtils.abStar
    val s = state.abStarAcceptingList
    val res = matchZipperMem(r, s)(
      using state.zipperCacheUp,
      state.zipperCacheDown
    )
    bh.consume(res)
  }

  @Benchmark
  def abStarAccepting_ZipperMem_list_Warm(state: WarmRegexSizeState, bh: Blackhole): Unit = {
    val r = RegexBenchmarkUtils.abStar
    val s = state.abStarAcceptingList
    val res = matchZipperMem(r, s)(
      using state.zipperCacheUp,
      state.zipperCacheDown
    )
    bh.consume(res)
  }

  @Benchmark
  def emailAccepting_Regex_list(state: RegexSizeState, bh: Blackhole): Unit = {
    val r = RegexBenchmarkUtils.emailRegex
    val s = state.emailAcceptingList
    val res = matchR(r, s)
    bh.consume(res)
  }

  @Benchmark
  def emailAccepting_Zipper_list(state: RegexSizeState, bh: Blackhole): Unit = {
    val r = RegexBenchmarkUtils.emailRegex
    val s = state.emailAcceptingList
    val res = matchZipper(r, s)
    bh.consume(res)
  }

  @Benchmark
  def emailAccepting_Zipper_vector(state: RegexSizeState, bh: Blackhole): Unit = {
    val r = RegexBenchmarkUtils.emailRegex
    val v = state.emailAcceptingVector
    val res = matchZipperSequence(r, v)
    bh.consume(res)
  }

  @Benchmark
  def emailAccepting_ZipperMem_vector(state: FreshRegexSizeState, bh: Blackhole): Unit = {
    val r = RegexBenchmarkUtils.emailRegex
    val v = state.emailAcceptingVector
    val res = matchZipperSequenceMem(r, v)(
      using state.zipperCacheUp,
      state.zipperCacheDown
    )
    bh.consume(res)
  }

  @Benchmark
  def emailAccepting_ZipperMem_vector_Warm(state: WarmRegexSizeState, bh: Blackhole): Unit = {
    val r = RegexBenchmarkUtils.emailRegex
    val v = state.emailAcceptingVector
    val res = matchZipperSequenceMem(r, v)(
      using state.zipperCacheUp,
      state.zipperCacheDown
    )
    bh.consume(res)
  }

  @Benchmark
  def emailAccepting_RegexMem_list(state: FreshRegexSizeState, bh: Blackhole): Unit = {
    val r = RegexBenchmarkUtils.emailRegex
    val s = state.emailAcceptingList
    val res = matchRMem(r, s)(using state.regexCache)
    bh.consume(res)
  }

  @Benchmark
  def emailAccepting_RegexMem_list_Warm(state: WarmRegexSizeState, bh: Blackhole): Unit = {
    val r = RegexBenchmarkUtils.emailRegex
    val s = state.emailAcceptingList
    val res = matchRMem(r, s)(using state.regexCache)
    bh.consume(res)
  }
}

@BenchmarkMode(Array(Mode.AverageTime))
@OutputTimeUnit(TimeUnit.MICROSECONDS)
class LexerRegexBenchmark {
  import RegexBenchmarkUtils.given

  @Benchmark
  def commentAccepting_Regex_list(state: LexerRegexSizeState, bh: Blackhole): Unit = {
    val r = RegexBenchmarkUtils.singleLineCommentRegex
    val s = state.commentAcceptingList
    val res = matchR(r, s)
    bh.consume(res)
  }

  @Benchmark
  def commentAccepting_Zipper_list(state: LexerRegexSizeState, bh: Blackhole): Unit = {
    val r = RegexBenchmarkUtils.singleLineCommentRegex
    val s = state.commentAcceptingList
    val res = matchZipper(r, s)
    bh.consume(res)
  }

  @Benchmark
  def commentAccepting_Zipper_vector(state: LexerRegexSizeState, bh: Blackhole): Unit = {
    val r = RegexBenchmarkUtils.singleLineCommentRegex
    val v = state.commentAcceptingVector
    val res = matchZipperSequence(r, v)
    bh.consume(res)
  }

  @Benchmark
  def commentAccepting_ZipperNMem_vector(state: FreshLexerRegexSizeState, bh: Blackhole): Unit = {
    val r = RegexBenchmarkUtils.singleLineCommentRegex
    val v = state.commentAcceptingVector
    val res = matchZipperSequenceMem(r, v)(
      using state.zipperCacheUp,
      state.zipperCacheDown
    )
    bh.consume(res)
  }

  @Benchmark
  def commentAccepting_ZipperNMem_vector_Warm(state: WarmLexerRegexSizeState, bh: Blackhole): Unit = {
    val r = RegexBenchmarkUtils.singleLineCommentRegex
    val v = state.commentAcceptingVector
    val res = matchZipperSequenceMem(r, v)(
      using state.zipperCacheUp,
      state.zipperCacheDown
    )
    bh.consume(res)
  }

  @Benchmark
  def commentAccepting_scalaRegex(state: LexerRegexSizeState, bh: Blackhole): Unit = {
    val r = ScalaRegexUtils.inlineCommentRegex
    val s = state.commentAcceptingRealString
    val res = r.matches(s)
    bh.consume(res)
  }

  @Benchmark
  def commentAccepting_Regex_multiline_list(state: LexerRegexSizeState, bh: Blackhole): Unit = {
    val r = RegexBenchmarkUtils.multiCommentRegex
    val s = state.commentAcceptingMultilineList
    val res = matchR(r, s)
    bh.consume(res)
  }

  @Benchmark
  def commentAccepting_Zipper_multiline_list(state: LexerRegexSizeState, bh: Blackhole): Unit = {
    val r = RegexBenchmarkUtils.multiCommentRegex
    val s = state.commentAcceptingMultilineList
    val res = matchZipper(r, s)
    bh.consume(res)
  }

  @Benchmark
  def commentAccepting_Zipper_multiline_vector(state: LexerRegexSizeState, bh: Blackhole): Unit = {
    val r = RegexBenchmarkUtils.multiCommentRegex
    val v = state.commentAcceptingMultilineVector
    val res = matchZipperSequence(r, v)
    bh.consume(res)
  }

  @Benchmark
  def commentAccepting_Zipper_multiline_vector_mem(state: FreshLexerRegexSizeState, bh: Blackhole): Unit = {
    val r = RegexBenchmarkUtils.multiCommentRegex
    val v = state.commentAcceptingMultilineVector
    val res = matchZipperSequenceMem(r, v)(
      using state.zipperCacheUp,
      state.zipperCacheDown
    )
    bh.consume(res)
  }

  @Benchmark
  def commentAccepting_Zipper_multiline_vector_mem_Warm(state: WarmLexerRegexSizeState, bh: Blackhole): Unit = {
    val r = RegexBenchmarkUtils.multiCommentRegex
    val v = state.commentAcceptingMultilineVector
    val res = matchZipperSequenceMem(r, v)(
      using state.zipperCacheUp,
      state.zipperCacheDown
    )
    bh.consume(res)
  }

  @Benchmark
  def commentAccepting_scalaRegex_multiline(state: LexerRegexSizeState, bh: Blackhole): Unit = {
    val r = ScalaRegexUtils.multiCommentRegex
    val s = state.commentAcceptingMultilineRealString
    val res = r.matches(s)
    bh.consume(res)
  }
}

@State(Scope.Thread)
class RegexSizeState {
  @Param(Array(
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
    "100",
  ))
  var size: String = uninitialized

  var abStarAcceptingVector: Sequence[Char] = uninitialized
  var abStarAcceptingList: StainlessList[Char] = uninitialized
  var emailAcceptingVector: Sequence[Char] = uninitialized
  var emailAcceptingList: StainlessList[Char] = uninitialized

  @Setup(Level.Trial)
  def setupInputs(): Unit = {
    val n = size.toInt
    abStarAcceptingVector = RegexBenchmarkUtils.abStar_Accepting_strings(n)
    abStarAcceptingList = RegexBenchmarkUtils.abStar_Accepting_strings_list(n)
    emailAcceptingVector = RegexBenchmarkUtils.email_Accepting_strings(n)
    emailAcceptingList = RegexBenchmarkUtils.email_Accepting_strings_list(n)
  }
}

@State(Scope.Thread)
class FreshRegexSizeState extends RegexSizeState {
  var regexCache: MemoisationRegex.Cache[Char] = uninitialized
  var zipperCacheUp: MemoisationZipper.CacheUp[Char] = uninitialized
  var zipperCacheDown: MemoisationZipper.CacheDown[Char] = uninitialized

  @Setup(Level.Iteration)
  def setupCaches(): Unit = {
    regexCache = MemoisationRegex.empty(RegexCharHashable)
    zipperCacheUp = MemoisationZipper.emptyUp(ContextCharHashable)
    zipperCacheDown = MemoisationZipper.emptyDown(RegexContextCharHashable)
  }
}

@State(Scope.Thread)
class WarmRegexSizeState extends FreshRegexSizeState {
  @Setup(Level.Iteration)
  def warm(): Unit = {
    assert(matchZipperSequenceMem(RegexBenchmarkUtils.abStar, abStarAcceptingVector)(using zipperCacheUp, zipperCacheDown))
    assert(matchZipperMem(RegexBenchmarkUtils.abStar, abStarAcceptingList)(using zipperCacheUp, zipperCacheDown))
    assert(matchZipperSequenceMem(RegexBenchmarkUtils.emailRegex, emailAcceptingVector)(using zipperCacheUp, zipperCacheDown))
    assert(matchRMem(RegexBenchmarkUtils.emailRegex, emailAcceptingList)(using regexCache))
  }
}

@State(Scope.Thread)
class LexerRegexSizeState {
  @Param(Array(
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
    "100",
    "105",
    "110",
    "115",
    "120",
  ))
  var size: String = uninitialized

  var commentAcceptingList: StainlessList[Char] = uninitialized
  var commentAcceptingVector: Sequence[Char] = uninitialized
  var commentAcceptingRealString: String = uninitialized
  var commentAcceptingMultilineList: StainlessList[Char] = uninitialized
  var commentAcceptingMultilineVector: Sequence[Char] = uninitialized
  var commentAcceptingMultilineRealString: String = uninitialized

  @Setup(Level.Trial)
  def setupInputs(): Unit = {
    val n = size.toInt
    commentAcceptingList = RegexBenchmarkUtils.comment_Accepting_strings_list(n)
    commentAcceptingVector = RegexBenchmarkUtils.comment_Accepting_strings(n)
    commentAcceptingRealString = RegexBenchmarkUtils.comment_Accepting_strings_realString(n)
    commentAcceptingMultilineList = RegexBenchmarkUtils.comment_Accepting_strings_multiline_list(n)
    commentAcceptingMultilineVector = RegexBenchmarkUtils.comment_Accepting_strings_multiline(n)
    commentAcceptingMultilineRealString = RegexBenchmarkUtils.comment_Accepting_strings_multiline_realString(n)
  }
}

@State(Scope.Thread)
class FreshLexerRegexSizeState extends LexerRegexSizeState {
  var zipperCacheUp: MemoisationZipper.CacheUp[Char] = uninitialized
  var zipperCacheDown: MemoisationZipper.CacheDown[Char] = uninitialized

  @Setup(Level.Iteration)
  def setupCaches(): Unit = {
    zipperCacheUp = MemoisationZipper.emptyUp(ContextCharHashable)
    zipperCacheDown = MemoisationZipper.emptyDown(RegexContextCharHashable)
  }
}

@State(Scope.Thread)
class WarmLexerRegexSizeState extends FreshLexerRegexSizeState {
  @Setup(Level.Iteration)
  def warm(): Unit = {
    assert(matchZipperSequenceMem(RegexBenchmarkUtils.singleLineCommentRegex, commentAcceptingVector)(using zipperCacheUp, zipperCacheDown))
    assert(matchZipperSequenceMem(RegexBenchmarkUtils.multiCommentRegex, commentAcceptingMultilineVector)(using zipperCacheUp, zipperCacheDown))
  }
}

object RegexCharHashable extends Hashable[(Regex[Char], Char)] {
  override def hash(k: (Regex[Char], Char)): Long = {
    val (r, c) = k
    r.hash * 13 + c.hashCode() * 17
  }
}
object ContextHashable extends Hashable[Context[Char]] {
  override def hash(ctx: Context[Char]): Long = {
    ctx.exprs.foldLeft(19L)((acc, expr) => acc * expr.hash)
  }
}

object ContextCharHashable extends Hashable[(Context[Char], Char)] {
  override def hash(k: (Context[Char], Char)): Long = {
    val (ctx, c) = k
    ContextHashable.hash(ctx) * 23 + c.hashCode() * 29
  }
}

object RegexContextCharHashable extends Hashable[(Regex[Char], Context[Char], Char)] {
  override def hash(k: (Regex[Char], Context[Char], Char)): Long = {
    val (r, ctx, c) = k
    r.hash * 31 + ContextHashable.hash(ctx) * 37 + c.hashCode() * 43
  }
}

object RegexBenchmarkUtils {
  val seed = 0x0ddba11
  val r = new Random(seed)

  val string_sizes = List(5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100, 105, 110, 115, 120, 130, 140, 150, 200)
  val abStar: Regex[Char] = ("a" | "b").*

  val abStar_Accepting_strings: Map[Int, Sequence[Char]] = string_sizes.map(n => (n, (1 to n).map(_ => random_a_or_b()).mkString.toStainless)).toMap
  val abStar_Accepting_strings_list: Map[Int, StainlessList[Char]] = string_sizes.map(n => (n, (1 to n).map(_ => random_a_or_b()).mkString.toStainlessList)).toMap

  given zipperCacheUp: MemoisationZipper.CacheUp[Char] = MemoisationZipper.emptyUp(ContextCharHashable)
  given zipperCacheDown: MemoisationZipper.CacheDown[Char] = MemoisationZipper.emptyDown(RegexContextCharHashable)

  val possibleEmailChars = "abcdedfghijklmnopqrstuvwxyz."
  val emailRegex = possibleEmailChars.anyOf.+ ~ "@".r ~ possibleEmailChars.anyOf.+ ~ ".".r ~ possibleEmailChars.anyOf.+

  val email_Accepting_strings: Map[Int, Sequence[Char]] = string_sizes.map(n => (n, random_email_strings(n).toStainless)).toMap
  val email_Accepting_strings_list: Map[Int, StainlessList[Char]] = string_sizes.map(n => (n, random_email_strings(n).toStainlessList)).toMap
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
    assert(res.size == n)
    res
  }

  val singleLineCommentRegex = "//".r ~ (azAZ | digits | " ".r | "\t".r | specialChars).*
  val multiCommentRegex = "/*".r ~
    (azAZ | digits | whiteSpaces | anyOf(specialCharsString.replace("/", "").replace("*", "")) | "/".r | ("*".r ~ "*".r.* ~ (azAZ | digits | whiteSpaces | anyOf(specialCharsString.replace("/", "").replace("*", ""))))) .* ~
    "*".r.* ~
    "*/".r

  val possibleCommentChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdedfghijklmnopqrstuvwxyz0123456789 \t+-/*!?=()[]{}<>|\\&%$§§°`^@#~;:,.éàèçù\'\"`"
  def random_comment_char(): String = {
    val index = r.nextInt(possibleCommentChars.length)
    possibleCommentChars(index).toString
  }
  def random_inline_comment(n: Int): String = {
    val usableLength = n - 2
    val res: String = "//" + (1.to(usableLength)).map(_ => random_comment_char()).mkString
    assert(res.size == n)
    res
  }
  def random_multiline_comment_char(): String = {
    val index = r.nextInt(possibleCommentChars.length + 1)
    (possibleCommentChars + "\n")(index).toString
  }
  def random_multiline_comment(n: Int): String = {
    val usableLength = n - 4
    var flag = true
    var body = ""
    while (flag) {
      body = (1.to(usableLength)).map(_ => random_multiline_comment_char()).mkString
      if (!body.contains("*/")) {
        flag = false
      }
    }
    val res: String = "/*" + body + "*/"
    assert(res.size == n)
    res
  }

  val comment_Accepting_strings: Map[Int, Sequence[Char]] = string_sizes.map(n => (n, random_inline_comment(n).toStainless)).toMap
  val comment_Accepting_strings_list: Map[Int, StainlessList[Char]] = string_sizes.map(n => (n, random_inline_comment(n).toStainlessList)).toMap
  val comment_Accepting_strings_multiline: Map[Int, Sequence[Char]] = string_sizes.map(n => (n, random_multiline_comment(n).toStainless)).toMap
  val comment_Accepting_strings_multiline_list: Map[Int, StainlessList[Char]] = string_sizes.map(n => (n, random_multiline_comment(n).toStainlessList)).toMap

  val comment_Accepting_strings_realString: Map[Int, String] = comment_Accepting_strings.map { case (k, v) => (k, v.efficientList.mkString("")) }
  val comment_Accepting_strings_multiline_realString: Map[Int, String] = comment_Accepting_strings_multiline.map { case (k, v) => (k, v.efficientList.mkString("")) }
}

object ScalaRegexUtils {
  import scala.util.matching.Regex
  val inlineCommentRegex: Regex = "//([a-zA-Z0-9 \t+-/\\\\\\*!?=()\\[\\]{}<>|\\&%$§§°`^@#~;:,.éàèçù\'\"`]*)".r
  val multiCommentRegex: Regex = "/\\*([a-zA-Z0-9 \t\n+-/\\\\!?=()\\[\\]{}<>|\\&%$§§°`^@#~;:,.éàèçù\'\"`]|(\\*[\\*]*[a-zA-Z0-9 \t\n+-/\\\\!?=()\\[\\]{}<>|\\&%$§§°`^@#~;:,.éàèçù\'\"`]))*[\\*]*\\*/".r
}