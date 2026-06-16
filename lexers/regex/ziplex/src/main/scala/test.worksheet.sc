import ch.epfl.benchmark.RegexUtils.*
import ch.epfl.lexer.VerifiedRegexMatcher.*
import ch.epfl.lexer.VerifiedRegex.*
import scala.util.Random
import benchmark.RegexBenchmarkUtil

RegexBenchmarkUtil.abStar

RegexBenchmarkUtil.abStar.asString()

RegexBenchmarkUtil.abStar_Accepting_strings(5).mkString("")
RegexBenchmarkUtil.abStar_Accepting_strings(10).mkString("")
RegexBenchmarkUtil.abStar_Accepting_strings(15).mkString("")
RegexBenchmarkUtil.abStar_Accepting_strings(20).mkString("")
RegexBenchmarkUtil.abStar_Accepting_strings(25).mkString("")