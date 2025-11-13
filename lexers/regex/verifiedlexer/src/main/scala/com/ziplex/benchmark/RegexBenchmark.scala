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
import com.ziplex.lexer.VerifiedRegexMatcher.matchZipperVector
import com.ziplex.lexer.VerifiedRegexMatcher.matchZipperVectorMem
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

@State(Scope.Benchmark)
class RegexBenchmark {
  import RegexBenchmarkUtils.given

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
     "100",
    //  "110",
    //  "120",
    //  "130",
    //  "140",
    //  "150"
    )
  )
  var size: String = uninitialized

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def abStarAccepting_Regex_list(): Unit = {
    val r = RegexBenchmarkUtils.abStar
    val s = RegexBenchmarkUtils.abStar_Accepting_strings_list(size.toInt)
    val res = matchR(r, s)
    assert(res)
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def abStarAccepting_Zipper_list(): Unit = {
    val r = RegexBenchmarkUtils.abStar
    val s = RegexBenchmarkUtils.abStar_Accepting_strings_list(size.toInt)
    val res = matchZipper(r, s)
    assert(res)
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def abStarAccepting_Zipper_vector(): Unit = {
    val r = RegexBenchmarkUtils.abStar
    val v = RegexBenchmarkUtils.abStar_Accepting_strings(size.toInt)
    val res = matchZipperVector(r, v)
    assert(res)
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def abStarAccepting_ZipperMem_vector(): Unit = {
    val r = RegexBenchmarkUtils.abStar
    val v = RegexBenchmarkUtils.abStar_Accepting_strings(size.toInt)
    val res = matchZipperVectorMem(r, v)
    assert(res)
  }

  // @Benchmark
  // @BenchmarkMode(Array(Mode.AverageTime))
  // @OutputTimeUnit(TimeUnit.MICROSECONDS)
  // def abStarAccepting_RegexMem_list(): Unit = {
  //   val r = RegexBenchmarkUtils.abStar
  //   val s = RegexBenchmarkUtils.abStar_Accepting_strings_list(size.toInt)
  //   val res = matchRMem(r, s)(using RegexBenchmarkUtils.regexCache)
  //   assert(res)
  // }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def abStarAccepting_ZipperMem_list(): Unit = {
    val r = RegexBenchmarkUtils.abStar
    val s = RegexBenchmarkUtils.abStar_Accepting_strings_list(size.toInt)
    val res = matchZipperMem(r, s)
    assert(res)
  }

  // Email accepting regex -----------------------------------------------------------------------------------------------------------------------

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def emailAccepting_Regex_list(): Unit = {
    val r = RegexBenchmarkUtils.emailRegex
    val s = RegexBenchmarkUtils.email_Accepting_strings_list(size.toInt)
    val res = matchR(r, s)
    assert(res)
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def emailAccepting_Zipper_list(): Unit = {
    val r = RegexBenchmarkUtils.emailRegex
    val s = RegexBenchmarkUtils.email_Accepting_strings_list(size.toInt)
    val res = matchZipper(r, s)
    assert(res)
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def emailAccepting_Zipper_vector(): Unit = {
    val r = RegexBenchmarkUtils.emailRegex
    val v = RegexBenchmarkUtils.email_Accepting_strings(size.toInt)
    val res = matchZipperVector(r, v)
    assert(res)
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def emailAccepting_ZipperMem_vector(): Unit = {
    val r = RegexBenchmarkUtils.emailRegex
    val v = RegexBenchmarkUtils.email_Accepting_strings(size.toInt)
    val res = matchZipperVectorMem(r, v)
    assert(res)
  }

  // @Benchmark
  // @BenchmarkMode(Array(Mode.AverageTime))
  // @OutputTimeUnit(TimeUnit.MICROSECONDS)
  // def emailAccepting_ZipperMem_list(): Unit = {
  //   val r = RegexBenchmarkUtils.emailRegex
  //   val s = RegexBenchmarkUtils.email_Accepting_strings_list(size.toInt)
  //   val res = matchZipper(r, s)
  //   assert(res)
  // }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def emailAccepting_RegexMem_list(): Unit = {
    val r = RegexBenchmarkUtils.emailRegex
    val s = RegexBenchmarkUtils.email_Accepting_strings_list(size.toInt)
    val res = matchRMem(r, s)(using RegexBenchmarkUtils.regexCache)
    assert(res)
  }

}

@State(Scope.Benchmark)
class LexerRegexBenchmark {

  import RegexBenchmarkUtils.given
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
      "100",
      "105",
      "110",
      "115",
      "120",
      // "130",
      // "140",
      // "150"
      )
    )
    var size: String = uninitialized

    // Comment accepting regex -----------------------------------------------------------------------------------------------------------------------
    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def commentAccepting_Regex_list(): Unit = {
      val r = RegexBenchmarkUtils.singleLineCommentRegex
      val s = RegexBenchmarkUtils.comment_Accepting_strings_list(size.toInt)
      val res = matchR(r, s)
      assert(res)
    }
    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def commentAccepting_Zipper_list(): Unit = {
      val r = RegexBenchmarkUtils.singleLineCommentRegex
      val s = RegexBenchmarkUtils.comment_Accepting_strings_list(size.toInt)
      val res = matchZipper(r, s)
      assert(res)
    }
    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def commentAccepting_Zipper_vector(): Unit = {
      val r = RegexBenchmarkUtils.singleLineCommentRegex
      val v = RegexBenchmarkUtils.comment_Accepting_strings(size.toInt)
      val res = matchZipperVector(r, v)
      assert(res)
    }
    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def commentAccepting_ZipperNMem_vector(): Unit = {
      val r = RegexBenchmarkUtils.singleLineCommentRegex
      val v = RegexBenchmarkUtils.comment_Accepting_strings(size.toInt)
      val res = matchZipperVectorMem(r, v)
      assert(res)
    }
    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def commentAccepting_scalaRegex(): Unit = {
      val r = ScalaRegexUtils.inlineCommentRegex
      val s = RegexBenchmarkUtils.comment_Accepting_strings_realString(size.toInt)
      val res = r.matches(s)
      assert(res)
    }

    // Multiline comment accepting regex -----------------------------------------------------------------------------------------------------------------------
    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def commentAccepting_Regex_multiline_list(): Unit = {
      val r = RegexBenchmarkUtils.multiCommentRegex
      val s = RegexBenchmarkUtils.comment_Accepting_strings_multiline_list(size.toInt)
      val res = matchR(r, s)
      assert(res)
    }
    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def commentAccepting_Zipper_multiline_list(): Unit = {
      val r = RegexBenchmarkUtils.multiCommentRegex
      val s = RegexBenchmarkUtils.comment_Accepting_strings_multiline_list(size.toInt)
      val res = matchZipper(r, s)
      assert(res)
    }

    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def commentAccepting_Zipper_multiline_vector(): Unit = {
      val r = RegexBenchmarkUtils.multiCommentRegex
      val v = RegexBenchmarkUtils.comment_Accepting_strings_multiline(size.toInt)
      val res = matchZipperVector(r, v)
      assert(res)
    }

    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def commentAccepting_Zipper_multiline_vector_mem(): Unit = {
      val r = RegexBenchmarkUtils.multiCommentRegex
      val v = RegexBenchmarkUtils.comment_Accepting_strings_multiline(size.toInt)
      val res = matchZipperVectorMem(r, v)
      assert(res)
    }

    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def commentAccepting_scalaRegex_multiline(): Unit = {
      val r = ScalaRegexUtils.multiCommentRegex
      val s = RegexBenchmarkUtils.comment_Accepting_strings_multiline_realString(size.toInt)
      val res = r.matches(s)
      assert(res)
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

  val regexCache: MemoisationRegex.Cache[Char] = MemoisationRegex.empty(RegexCharHashable)
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
    // println(s"n = $n, usable length = $usableLength, first part size = $firstPartSize, second part size = $secondPartSize, res = $res")
    assert(res.size == n)
    res
  }

  val singleLineCommentRegex = "//".r ~ (azAZ | digits | " ".r | "\t".r | specialChars).*
  val multiCommentRegex = "/*".r ~ 
                          (azAZ | digits | whiteSpaces | anyOf(specialCharsString.replace("/", "").replace("*", "")) | "/".r | ("*".r ~ "*".r.* ~ (azAZ | digits | whiteSpaces | anyOf(specialCharsString.replace("/", "").replace("*", ""))))).* ~  
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
    while (flag){
      body = (1.to(usableLength)).map(_ => random_multiline_comment_char()).mkString
      if (!body.contains("*/")){
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