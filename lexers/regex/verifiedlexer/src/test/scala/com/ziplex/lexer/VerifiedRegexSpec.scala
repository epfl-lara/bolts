package com.ziplex.lexer

import org.scalatest.flatspec.AnyFlatSpec
import org.scalatest.matchers.should.Matchers
import com.ziplex.lexer.VerifiedRegex._
import com.ziplex.lexer.VerifiedRegexMatcher._
import com.ziplex.lexer.example.RegexUtils._
import stainless.collection.{List => StainlessList, Cons, Nil}
import com.ziplex.lexer.Sequence
import com.ziplex.lexer.emptySeq
import com.ziplex.lexer.singletonSeq
import com.ziplex.lexer.seqFromList
import com.ziplex.lexer.example.RegexUtils.toStainless

class VerifiedRegexSpec extends AnyFlatSpec with Matchers {

  behavior of "Basic Regex Matching"

  it should "match a single character" in {
    val regex: Regex[Char] = ElementMatch('a')
    val input = "a".toStainless
    matchZipperSequence(regex, input) shouldBe true
  }

  it should "not match a different single character" in {
    val regex: Regex[Char] = ElementMatch('a')
    val input = "b".toStainless
    matchZipperSequence(regex, input) shouldBe false
  }

  it should "match empty expression with empty input" in {
    val regex: Regex[Char] = EmptyExpr()
    val input = "".toStainless
    matchZipperSequence(regex, input) shouldBe true
  }

  it should "not match empty expression with non-empty input" in {
    val regex: Regex[Char] = EmptyExpr()
    val input = "a".toStainless
    matchZipperSequence(regex, input) shouldBe false
  }

  it should "never match empty language" in {
    val regex: Regex[Char] = EmptyLang()
    val input = "".toStainless
    matchZipperSequence(regex, input) shouldBe false
  }

  behavior of "Union Regex"

  it should "match first alternative in union" in {
    val regex: Regex[Char] = Union(ElementMatch('a'), ElementMatch('b'))
    val input = "a".toStainless
    matchZipperSequence(regex, input) shouldBe true
  }

  it should "match second alternative in union" in {
    val regex: Regex[Char] = Union(ElementMatch('a'), ElementMatch('b'))
    val input = "b".toStainless
    matchZipperSequence(regex, input) shouldBe true
  }

  it should "not match neither alternative in union" in {
    val regex: Regex[Char] = Union(ElementMatch('a'), ElementMatch('b'))
    val input = "c".toStainless
    matchZipperSequence(regex, input) shouldBe false
  }

  behavior of "Concatenation Regex"

  it should "match concatenated characters" in {
    val regex: Regex[Char] = Concat(ElementMatch('a'), ElementMatch('b'))
    val input = "ab".toStainless
    matchZipperSequence(regex, input) shouldBe true
  }

  it should "not match partial concatenation" in {
    val regex: Regex[Char] = Concat(ElementMatch('a'), ElementMatch('b'))
    val input = "a".toStainless
    matchZipperSequence(regex, input) shouldBe false
  }

  it should "not match wrong order concatenation" in {
    val regex: Regex[Char] = Concat(ElementMatch('a'), ElementMatch('b'))
    val input = "ba".toStainless
    matchZipperSequence(regex, input) shouldBe false
  }

  behavior of "Star Regex"

  it should "match empty string with star" in {
    val regex: Regex[Char] = Star(ElementMatch('a'))
    val input = "".toStainless
    matchZipperSequence(regex, input) shouldBe true
  }

  it should "match single occurrence with star" in {
    val regex: Regex[Char] = Star(ElementMatch('a'))
    val input = "a".toStainless
    matchZipperSequence(regex, input) shouldBe true
  }

  it should "match multiple occurrences with star" in {
    val regex: Regex[Char] = Star(ElementMatch('a'))
    val input = "aaa".toStainless
    matchZipperSequence(regex, input) shouldBe true
  }

  it should "not match wrong character with star" in {
    val regex: Regex[Char] = Star(ElementMatch('a'))
    val input = "b".toStainless
    matchZipperSequence(regex, input) shouldBe false
  }

  behavior of "Complex Regex Patterns"

  it should "match (a|b)* followed by c" in {
    val regex: Regex[Char] = Concat(Star(Union(ElementMatch('a'), ElementMatch('b'))), ElementMatch('c'))
    val input = "abac".toStainless
    matchZipperSequence(regex, input) shouldBe true
  }

  it should "match (a|b)* followed by c with empty prefix" in {
    val regex: Regex[Char] = Concat(Star(Union(ElementMatch('a'), ElementMatch('b'))), ElementMatch('c'))
    val input = "c".toStainless
    matchZipperSequence(regex, input) shouldBe true
  }

  it should "not match (a|b)* without trailing c" in {
    val regex: Regex[Char] = Concat(Star(Union(ElementMatch('a'), ElementMatch('b'))), ElementMatch('c'))
    val input = "aba".toStainless
    matchZipperSequence(regex, input) shouldBe false
  }

  behavior of "String Regex Extension (via RegexUtils)"

  it should "match simple string pattern" in {
    val regex = "abc".r
    val input = "abc".toStainless
    matchZipperSequence(regex, input) shouldBe true
  }

  it should "match pattern with alternatives" in {
    val regex = "a".r | "b".r
    val input = "a".toStainless
    matchZipperSequence(regex, input) shouldBe true
  }

  it should "match concatenation using ~ operator" in {
    val regex = "a".r ~ "b".r
    val input = "ab".toStainless
    matchZipperSequence(regex, input) shouldBe true
  }

  it should "match star pattern using .* operator" in {
    val regex = "a".r.*
    val input = "aaa".toStainless
    matchZipperSequence(regex, input) shouldBe true
  }

  behavior of "Nullable Property"

  it should "correctly identify nullable regexes" in {
    EmptyExpr[Char]().nullable shouldBe true
    EmptyLang[Char]().nullable shouldBe false
    ElementMatch('a').nullable shouldBe false
    Star(ElementMatch('a')).nullable shouldBe true
    Union(ElementMatch('a'), EmptyExpr()).nullable shouldBe true
    Concat(ElementMatch('a'), ElementMatch('b')).nullable shouldBe false
    Concat(EmptyExpr(), EmptyExpr()).nullable shouldBe true
  }
}
