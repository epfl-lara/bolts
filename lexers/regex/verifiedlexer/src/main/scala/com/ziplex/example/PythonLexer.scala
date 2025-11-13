package com.ziplex.lexer.example

import com.ziplex.lexer.VerifiedLexer.Lexer
import com.ziplex.lexer.LexerInterface
import com.ziplex.lexer.Rule
import com.ziplex.lexer.Token
import com.ziplex.lexer.TokenValue
import com.ziplex.lexer.VerifiedRegex.*

import stainless.collection.List
import stainless.collection.Cons
import stainless.collection.Nil

import stainless.annotation.extern
import stainless.annotation.pure

import com.ziplex.lexer.example.RegexUtils.*
import com.ziplex.lexer.example.RegexUtils.digits
import stainless.lang.Quantifiers.*


import com.ziplex.lexer.Sequence
import com.ziplex.lexer.emptySeq
import com.ziplex.lexer.singletonSeq
import com.ziplex.lexer.seqFromList
import com.ziplex.lexer.TokenValueInjection
import com.ziplex.lexer.semiInverseBodyModEq
import com.ziplex.lexer.semiInverseModEq
import com.ziplex.lexer.equivClassesBody
import com.ziplex.lexer.equivClasses

import stainless.lang.Exception
import scala.annotation.tailrec
import scala.math.BigInt

// BEGIN uncomment for verification ------------------------------------------
// import stainless.lang.StaticChecks._
// import stainless.lang.{ghost => ghostExpr}
// import stainless.lang.unfold
// END uncomment for verification --------------------------------------------
// BEGIN imports for benchmarking -------------------------------------------
import stainless.lang.{ghost => _, decreases => _, unfold => _, _}
import com.ziplex.lexer.OptimisedChecks.*
import Predef.{assert => _, Ensuring => _, require => _, _}

@tailrec
def dummyPythonLexer(x: BigInt): BigInt = {
  if (x == BigInt(0)) then x
  else dummyPythonLexer(x - BigInt(1))
}.ensuring( res => res == BigInt(0))
// END imports for benchmarking ---------------------------------------------


object ExamplePythonLexer:
    object Types:

        case class NewLineValue(value: List[Char]) extends TokenValue
        case class IdentValue(value: List[Char]) extends TokenValue
        case class DedentValue(value: List[Char]) extends TokenValue
        case class CommentValue(value: List[Char]) extends TokenValue
        case class SpaceValue(value: List[Char]) extends TokenValue

        case class KeywordValue(value: List[Char]) extends TokenValue
        case class IdentifierValue(value: List[Char]) extends TokenValue

        case class StringLiteralValue(value: List[Char]) extends TokenValue
        case class BytesLiteralValue(value: List[Char]) extends TokenValue

        case class IntegerValue(value: BigInt, text: List[Char]) extends TokenValue:
            require(IntegerValueUtils.charsToBigInt(text) == value)
        end IntegerValue
            
        object IntegerValueUtils:
            extension [A](v: List[A])
                @extern @pure def mkString(inter: String): String = 
                    val sb = new StringBuilder()
                    def loop(from: BigInt): Unit =
                        if from < v.size then
                            if v(from) != "_" then
                                sb.append(v(from).toString)
                                if from + 1 < v.size then
                                    sb.append(inter)
                            loop(from + 1)
                    loop(0)
                    sb.toString()
            @extern def charsToBigInt(v: List[Char]): BigInt = 
                val vStr = v.mkString("")
                if vStr.contains("0b") || vStr.contains("0B") then
                    BigInt(vStr.stripPrefix("0b").stripPrefix("0B"), 2)
                else if vStr.contains("0o") || vStr.contains("0O") then
                    BigInt(vStr.stripPrefix("0o").stripPrefix("0O"), 8)
                else if vStr.contains("0x") || vStr.contains("0X") then
                    BigInt(vStr.stripPrefix("0x").stripPrefix("0X"), 16)
                else
                    BigInt(vStr)
        end IntegerValueUtils

        case class FloatLiteralValue(text: List[Char]) extends TokenValue
        case class ImaginaryLiteralValue(text: List[Char]) extends TokenValue

        case class OperatorValue(op: List[Char]) extends TokenValue
        case class DelimiterValue(del: List[Char]) extends TokenValue

        case class IndentationValue(value: List[Char]) extends TokenValue

        case class EOFValue(value: List[Char]) extends TokenValue
        case class ErrorTokenValue(msg: List[Char]) extends TokenValue

        case object DedentValueInjection:
            def toValue(v: Sequence[Char]): TokenValue = DedentValue(v.efficientList)
            def toCharacters(t: TokenValue): Sequence[Char] = t match
                case DedentValue(value) => seqFromList(value)
                case _ => emptySeq
            
            val injection: TokenValueInjection[Char] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBodyModEq(toCharacters, toValue))
                        semiInverseBodyModEq(toCharacters, toValue)
                    })
                    unfold(semiInverseModEq(toCharacters, toValue))
                    assert(semiInverseModEq(toCharacters, toValue))
                }
                ghostExpr{
                    assert({
                        unfold(equivClassesBody(toCharacters, toValue))
                        equivClassesBody(toCharacters, toValue)
                    })
                    unfold(equivClasses(toCharacters, toValue))
                    assert(equivClasses(toCharacters, toValue))
                }
                TokenValueInjection(toValue, toCharacters)
            }
        end DedentValueInjection

        case object IdentValueInjection:
            def toValue(v: Sequence[Char]): TokenValue = IdentValue(v.efficientList)
            def toCharacters(t: TokenValue): Sequence[Char] = t match
                case IdentValue(value) => seqFromList(value)
                case _ => emptySeq
            
            val injection: TokenValueInjection[Char] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBodyModEq(toCharacters, toValue))
                        semiInverseBodyModEq(toCharacters, toValue)
                    })
                    unfold(semiInverseModEq(toCharacters, toValue))
                    assert(semiInverseModEq(toCharacters, toValue))
                }
                ghostExpr{
                    assert({
                        unfold(equivClassesBody(toCharacters, toValue))
                        equivClassesBody(toCharacters, toValue)
                    })
                    unfold(equivClasses(toCharacters, toValue))
                    assert(equivClasses(toCharacters, toValue))
                }
                TokenValueInjection(toValue, toCharacters)
            }
        end IdentValueInjection

        case object NewLineValueInjection:
            def toValue(v: Sequence[Char]): TokenValue = NewLineValue(v.efficientList)
            def toCharacters(t: TokenValue): Sequence[Char] = t match
                case NewLineValue(value) => seqFromList(value)
                case _ => emptySeq
            
            val injection: TokenValueInjection[Char] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBodyModEq(toCharacters, toValue))
                        semiInverseBodyModEq(toCharacters, toValue)
                    })
                    unfold(semiInverseModEq(toCharacters, toValue))
                    assert(semiInverseModEq(toCharacters, toValue))
                }
                ghostExpr{
                    assert({
                        unfold(equivClassesBody(toCharacters, toValue))
                        equivClassesBody(toCharacters, toValue)
                    })
                    unfold(equivClasses(toCharacters, toValue))
                    assert(equivClasses(toCharacters, toValue))
                }
                TokenValueInjection(toValue, toCharacters)
            }
        end NewLineValueInjection

        case object CommentValueInjection:
            def toValue(v: Sequence[Char]): TokenValue = CommentValue(v.efficientList)
            def toCharacters(t: TokenValue): Sequence[Char] = t match
                case CommentValue(value) => seqFromList(value)
                case _ => emptySeq
            
            val injection: TokenValueInjection[Char] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBodyModEq(toCharacters, toValue))
                        semiInverseBodyModEq(toCharacters, toValue)
                    })
                    unfold(semiInverseModEq(toCharacters, toValue))
                    assert(semiInverseModEq(toCharacters, toValue))
                }
                ghostExpr{
                    assert({
                        unfold(equivClassesBody(toCharacters, toValue))
                        equivClassesBody(toCharacters, toValue)
                    })
                    unfold(equivClasses(toCharacters, toValue))
                    assert(equivClasses(toCharacters, toValue))
                }
                TokenValueInjection(toValue, toCharacters)
            }
        end CommentValueInjection

        case object SpaceValueInjection:
            def toValue(v: Sequence[Char]): TokenValue = SpaceValue(v.efficientList)
            def toCharacters(t: TokenValue): Sequence[Char] = t match
                case SpaceValue(value) => seqFromList(value)
                case _ => emptySeq

            val injection: TokenValueInjection[Char] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBodyModEq(toCharacters, toValue))
                        semiInverseBodyModEq(toCharacters, toValue)
                    })
                    unfold(semiInverseModEq(toCharacters, toValue))
                    assert(semiInverseModEq(toCharacters, toValue))
                }
                ghostExpr{
                    assert({
                        unfold(equivClassesBody(toCharacters, toValue))
                        equivClassesBody(toCharacters, toValue)
                    })
                    unfold(equivClasses(toCharacters, toValue))
                    assert(equivClasses(toCharacters, toValue))
                }
                TokenValueInjection(toValue, toCharacters)
            }
        end SpaceValueInjection

        case object KeywordValueInjection:
            def toValue(v: Sequence[Char]): TokenValue = KeywordValue(v.efficientList)
            def toCharacters(t: TokenValue): Sequence[Char] = t match
                case KeywordValue(value) => seqFromList(value)
                case _ => emptySeq
            
            val injection: TokenValueInjection[Char] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBodyModEq(toCharacters, toValue))
                        semiInverseBodyModEq(toCharacters, toValue)
                    })
                    unfold(semiInverseModEq(toCharacters, toValue))
                    assert(semiInverseModEq(toCharacters, toValue))
                }
                ghostExpr{
                    assert({
                        unfold(equivClassesBody(toCharacters, toValue))
                        equivClassesBody(toCharacters, toValue)
                    })
                    unfold(equivClasses(toCharacters, toValue))
                    assert(equivClasses(toCharacters, toValue))
                }
                TokenValueInjection(toValue, toCharacters)
            }
        end KeywordValueInjection

        case object IdentifierValueInjection:
            def toValue(v: Sequence[Char]): TokenValue = IdentifierValue(v.efficientList)
            def toCharacters(t: TokenValue): Sequence[Char] = t match
                case IdentifierValue(value) => seqFromList(value)
                case _ => emptySeq
            
            val injection: TokenValueInjection[Char] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBodyModEq(toCharacters, toValue))
                        semiInverseBodyModEq(toCharacters, toValue)
                    })
                    unfold(semiInverseModEq(toCharacters, toValue))
                    assert(semiInverseModEq(toCharacters, toValue))
                }
                ghostExpr{
                    assert({
                        unfold(equivClassesBody(toCharacters, toValue))
                        equivClassesBody(toCharacters, toValue)
                    })
                    unfold(equivClasses(toCharacters, toValue))
                    assert(equivClasses(toCharacters, toValue))
                }
                TokenValueInjection(toValue, toCharacters)
            }
        end IdentifierValueInjection

        case object StringLiteralValueInjection:
            def toValue(v: Sequence[Char]): TokenValue = StringLiteralValue(v.efficientList)
            def toCharacters(t: TokenValue): Sequence[Char] = t match
                case StringLiteralValue(value) => seqFromList(value)
                case _ => emptySeq
            
            val injection: TokenValueInjection[Char] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBodyModEq(toCharacters, toValue))
                        semiInverseBodyModEq(toCharacters, toValue)
                    })
                    unfold(semiInverseModEq(toCharacters, toValue))
                    assert(semiInverseModEq(toCharacters, toValue))
                }
                ghostExpr{
                    assert({
                        unfold(equivClassesBody(toCharacters, toValue))
                        equivClassesBody(toCharacters, toValue)
                    })
                    unfold(equivClasses(toCharacters, toValue))
                    assert(equivClasses(toCharacters, toValue))
                }
                TokenValueInjection(toValue, toCharacters)
            }
        end StringLiteralValueInjection

        case object BytesLiteralValueInjection:
            def toValue(v: Sequence[Char]): TokenValue = BytesLiteralValue(v.efficientList)
            def toCharacters(t: TokenValue): Sequence[Char] = t match
                case BytesLiteralValue(value) => seqFromList(value)
                case _ => emptySeq
            
            val injection: TokenValueInjection[Char] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBodyModEq(toCharacters, toValue))
                        semiInverseBodyModEq(toCharacters, toValue)
                    })
                    unfold(semiInverseModEq(toCharacters, toValue))
                    assert(semiInverseModEq(toCharacters, toValue))
                }
                ghostExpr{
                    assert({
                        unfold(equivClassesBody(toCharacters, toValue))
                        equivClassesBody(toCharacters, toValue)
                    })
                    unfold(equivClasses(toCharacters, toValue))
                    assert(equivClasses(toCharacters, toValue))
                }
                TokenValueInjection(toValue, toCharacters)
            }
        end BytesLiteralValueInjection


        case object IntegerValueInjection:
            def toValue(v: Sequence[Char]): TokenValue = 
                val l = v.efficientList
                IntegerValue(IntegerValueUtils.charsToBigInt(l), l)
            def toCharacters(t: TokenValue): Sequence[Char] = t match
                    case IntegerValue(_, text) => seqFromList(text)
                    case _ => emptySeq
            
            val injection: TokenValueInjection[Char] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBodyModEq(toCharacters, toValue))
                        semiInverseBodyModEq(toCharacters, toValue)
                    })
                    unfold(semiInverseModEq(toCharacters, toValue))
                    assert(semiInverseModEq(toCharacters, toValue))
                }
                ghostExpr{
                    assert({
                        unfold(equivClassesBody(toCharacters, toValue))
                        equivClassesBody(toCharacters, toValue)
                    })
                    unfold(equivClasses(toCharacters, toValue))
                    assert(equivClasses(toCharacters, toValue))
                }
                TokenValueInjection(toValue, toCharacters)
            }
        end IntegerValueInjection


        case object FloatLiteralValueInjection:
            def toValue(v: Sequence[Char]): TokenValue = FloatLiteralValue(v.efficientList)
            def toCharacters(t: TokenValue): Sequence[Char] = t match
                case FloatLiteralValue(value) => seqFromList(value)
                case _ => emptySeq
            
            val injection: TokenValueInjection[Char] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBodyModEq(toCharacters, toValue))
                        semiInverseBodyModEq(toCharacters, toValue)
                    })
                    unfold(semiInverseModEq(toCharacters, toValue))
                    assert(semiInverseModEq(toCharacters, toValue))
                }
                ghostExpr{
                    assert({
                        unfold(equivClassesBody(toCharacters, toValue))
                        equivClassesBody(toCharacters, toValue)
                    })
                    unfold(equivClasses(toCharacters, toValue))
                    assert(equivClasses(toCharacters, toValue))
                }
                TokenValueInjection(toValue, toCharacters)
            }
        end FloatLiteralValueInjection

        case object ImaginaryLiteralValueInjection:
            def toValue(v: Sequence[Char]): TokenValue = ImaginaryLiteralValue(v.efficientList)
            def toCharacters(t: TokenValue): Sequence[Char] = t match
                case ImaginaryLiteralValue(value) => seqFromList(value)
                case _ => emptySeq
            
            val injection: TokenValueInjection[Char] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBodyModEq(toCharacters, toValue))
                        semiInverseBodyModEq(toCharacters, toValue)
                    })
                    unfold(semiInverseModEq(toCharacters, toValue))
                    assert(semiInverseModEq(toCharacters, toValue))
                }
                ghostExpr{
                    assert({
                        unfold(equivClassesBody(toCharacters, toValue))
                        equivClassesBody(toCharacters, toValue)
                    })
                    unfold(equivClasses(toCharacters, toValue))
                    assert(equivClasses(toCharacters, toValue))
                }
                TokenValueInjection(toValue, toCharacters)
            }
        end ImaginaryLiteralValueInjection

        case object OperatorValueInjection:
            def toValue(v: Sequence[Char]): TokenValue = OperatorValue(v.efficientList)
            def toCharacters(t: TokenValue): Sequence[Char] = t match
                case OperatorValue(value) => seqFromList(value)
                case _ => emptySeq
            
            val injection: TokenValueInjection[Char] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBodyModEq(toCharacters, toValue))
                        semiInverseBodyModEq(toCharacters, toValue)
                    })
                    unfold(semiInverseModEq(toCharacters, toValue))
                    assert(semiInverseModEq(toCharacters, toValue))
                }
                ghostExpr{
                    assert({
                        unfold(equivClassesBody(toCharacters, toValue))
                        equivClassesBody(toCharacters, toValue)
                    })
                    unfold(equivClasses(toCharacters, toValue))
                    assert(equivClasses(toCharacters, toValue))
                }
                TokenValueInjection(toValue, toCharacters)
            }
        end OperatorValueInjection

        case object DelimiterValueInjection:
            def toValue(v: Sequence[Char]): TokenValue = DelimiterValue(v.efficientList)
            def toCharacters(t: TokenValue): Sequence[Char] = t match
                case DelimiterValue(value) => seqFromList(value)
                case _ => emptySeq
            
            val injection: TokenValueInjection[Char] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBodyModEq(toCharacters, toValue))
                        semiInverseBodyModEq(toCharacters, toValue)
                    })
                    unfold(semiInverseModEq(toCharacters, toValue))
                    assert(semiInverseModEq(toCharacters, toValue))
                }
                ghostExpr{
                    assert({
                        unfold(equivClassesBody(toCharacters, toValue))
                        equivClassesBody(toCharacters, toValue)
                    })
                    unfold(equivClasses(toCharacters, toValue))
                    assert(equivClasses(toCharacters, toValue))
                }
                TokenValueInjection(toValue, toCharacters)
            }
        end DelimiterValueInjection

        case object IndentationValueInjection:
            def toValue(v: Sequence[Char]): TokenValue = IndentationValue(v.efficientList)
            def toCharacters(t: TokenValue): Sequence[Char] = t match
                case IndentationValue(value) => seqFromList(value)
                case _ => emptySeq
            
            val injection: TokenValueInjection[Char] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBodyModEq(toCharacters, toValue))
                        semiInverseBodyModEq(toCharacters, toValue)
                    })
                    unfold(semiInverseModEq(toCharacters, toValue))
                    assert(semiInverseModEq(toCharacters, toValue))
                }
                ghostExpr{
                    assert({
                        unfold(equivClassesBody(toCharacters, toValue))
                        equivClassesBody(toCharacters, toValue)
                    })
                    unfold(equivClasses(toCharacters, toValue))
                    assert(equivClasses(toCharacters, toValue))
                }
                TokenValueInjection(toValue, toCharacters)
            }
        end IndentationValueInjection

        case object EOFValueInjection:
            def toValue(v: Sequence[Char]): TokenValue = EOFValue(v.efficientList)
            def toCharacters(t: TokenValue): Sequence[Char] = t match
                case EOFValue(value) => seqFromList(value)
                case _ => emptySeq
            
            val injection: TokenValueInjection[Char] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBodyModEq(toCharacters, toValue))
                        semiInverseBodyModEq(toCharacters, toValue)
                    })
                    unfold(semiInverseModEq(toCharacters, toValue))
                    assert(semiInverseModEq(toCharacters, toValue))
                }
                ghostExpr{
                    assert({
                        unfold(equivClassesBody(toCharacters, toValue))
                        equivClassesBody(toCharacters, toValue)
                    })
                    unfold(equivClasses(toCharacters, toValue))
                    assert(equivClasses(toCharacters, toValue))
                }
                TokenValueInjection(toValue, toCharacters)
            }
        end EOFValueInjection

        case object ErrorTokenValueInjection:
            def toValue(v: Sequence[Char]): TokenValue = ErrorTokenValue(v.efficientList)
            def toCharacters(t: TokenValue): Sequence[Char] = t match
                case ErrorTokenValue(value) => seqFromList(value)
                case _ => emptySeq
            
            val injection: TokenValueInjection[Char] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBodyModEq(toCharacters, toValue))
                        semiInverseBodyModEq(toCharacters, toValue)
                    })
                    unfold(semiInverseModEq(toCharacters, toValue))
                    assert(semiInverseModEq(toCharacters, toValue))
                }
                ghostExpr{
                    assert({
                        unfold(equivClassesBody(toCharacters, toValue))
                        equivClassesBody(toCharacters, toValue)
                    })
                    unfold(equivClasses(toCharacters, toValue))
                    assert(equivClasses(toCharacters, toValue))
                }
                TokenValueInjection(toValue, toCharacters)
            }
        end ErrorTokenValueInjection
        
    end Types

    case object PythonLexer:
        import Types.*
        @extern def keywordRegex(): Regex[Char] = 
            "False".r | "None".r | "True".r | "and".r | "assert".r | "async".r | "as".r | "await".r |
            "break".r | "class".r | "continue".r | "def".r | "del".r | "elif".r | "else".r | "except".r |
            "finally".r | "for".r | "from".r | "global".r | "if".r | "import".r | "in".r | "is".r | 
            "lambda".r | "nonlocal".r | "not".r | "or".r | "pass".r | "raise".r | "return".r |
            "try".r | "while".r | "with".r | "yield".r 

        val keywordRule =
            Rule(
            regex = keywordRegex(),
            tag = "keyword",
            isSeparator = false,
            transformation = KeywordValueInjection.injection
            )

        @extern def operatorRegex(): Regex[Char] = 
            "+".r | "-".r | "**".r | "*".r | "//".r | "/".r | "%".r | "<<".r | ">>".r |
            "&".r | "|".r | "^".r | "~".r | ":=".r | "<=".r | ">=".r | "<".r | ">".r |
            "==".r | "!=".r | "@".r | "...".r

        val operatorRule =
            Rule(
            regex = operatorRegex(),
            tag = "operator",
            isSeparator = false,
            transformation = OperatorValueInjection.injection
            )

        @extern def delimiterRegex(): Regex[Char] = 
            ".r |".r | ":".r | ".".r | ",".r | ";".r | "=".r | "->".r | "+=".r | "-=".r | "*=".r | 
            "/=".r | "//=".r | "%=".r | "@=".r | "&=".r | "|=".r | "^=".r | ">>=".r |
            "<<=".r | "**=".r | "!".r

        @extern def openingDelimiterRegex(): Regex[Char] = 
            "(".r | "[".r | "{".r

        @extern def closingDelimiterRegex(): Regex[Char] = 
            ")".r | "]".r | "}".r

        val delimiterRule =
            Rule(
            regex = delimiterRegex() | openingDelimiterRegex() | closingDelimiterRegex(),
            tag = "delimiter",
            isSeparator = false,
            transformation = DelimiterValueInjection.injection
            )

        @extern def identifierRegex(): Regex[Char] = 
            (az | AZ | "_".r) ~ (az | AZ | digits | "_".r).*

        val identifierRule =
            Rule(
            regex = identifierRegex(),
            tag = "identifier",
            isSeparator = false,
            transformation = IdentifierValueInjection.injection
            )

        // either only zeroes or 1-9 followed by 0-9 (with some _ in between)
        @extern def decimalIntRegex(): Regex[Char] = 
             ("0".r ~ (opt("_".r) ~ "0".r).*) | (anyOf(digitsString.replace("0", "")) ~ (opt("_".r) ~ digits).*)

        val decimalIntRule =
            Rule(
            regex = decimalIntRegex(),
            tag = "decimalInt",
            isSeparator = false,
            transformation = IntegerValueInjection.injection
            )

        @extern def binaryIntLitRegex(): Regex[Char] = 
            "0".r ~ ("B".r | "b".r) ~ (opt("_".r) ~ ("0".r | "1".r)).*

        val binaryIntLitRule =
            Rule(
            regex = binaryIntLitRegex(),
            tag = "binaryInt",
            isSeparator = false,
            transformation = IntegerValueInjection.injection
            )

        @extern def octIntLitRegex(): Regex[Char] = 
            "0".r ~ ("O".r | "o".r) ~ (opt("_".r) ~ anyOf("01234567").*)

        val octIntLitRule =
            Rule(
            regex = octIntLitRegex(),
            tag = "octalInt",
            isSeparator = false,
            transformation = IntegerValueInjection.injection
            )

        @extern def hexIntLitRegex(): Regex[Char] = 
            "0".r ~ ("X".r | "x".r) ~ (opt("_".r) ~ (digits | anyOf("abcdefABCDEF")).*)

        val hexIntLitRule =
            Rule(
            regex = hexIntLitRegex(),
            tag = "hexadecimalInt",
            isSeparator = false,
            transformation = IntegerValueInjection.injection
            )

        
        @extern def digitPartRegex = digits ~ (opt("_".r) ~ digits).* // "[0-9]" ~ many("_?" ~ "[0-9]")
        @extern def fractionRegex = ".".r ~ digitPartRegex 
        @extern def pointFloatRegex = (opt(digitPartRegex) ~ fractionRegex) | (digitPartRegex ~ ".".r)
        @extern def exponentRegex = anyOf("eE") ~ opt(anyOf("+-")) ~ digitPartRegex // """[eE][\+\-]?""" ~ digitPartRegex
        @extern def exponentFloatRegex = (digitPartRegex | pointFloatRegex) ~ exponentRegex
        @extern def floatLiteralRegex = pointFloatRegex ~ opt(exponentRegex) | digitPartRegex ~ exponentRegex

        val floatLiteralRule =
            Rule(
            regex = floatLiteralRegex,
            tag = "floatLiteral",
            isSeparator = false,
            transformation = FloatLiteralValueInjection.injection
            )

        @extern def imaginaryLiteralRegex = ((pointFloatRegex | opt(exponentRegex)) | (digitPartRegex ~ exponentRegex) | digitPartRegex) ~ anyOf("jJ")

        val imaginaryLiteralRule =
            Rule(
            regex = imaginaryLiteralRegex,
            tag = "imaginaryLiteral",
            isSeparator = false,
            transformation = FloatLiteralValueInjection.injection
            )


        @extern def stringPrefix() = "RF".r | "Rf".r | "rF".r | "rf".r | "FR".r | "fR".r | "Fr".r | "fr".r | "F".r | "f".r | "U".r | "R".r | "u".r | "r".r | epsilon
        @extern def bytesPrefix() = "RB".r | "Rb".r | "rB".r | "rb".r | "BR".r | "bR".r | "Br".r | "br".r | "B".r | "b".r 

        @extern def longStringRuleGen(delimiter: Char, isBytes: Boolean = false): Rule[Char] =
            val delimiterR = ElementMatch(delimiter)
            val delimiterFull = delimiterR ~ delimiterR ~ delimiterR
            val prefixRegex = if isBytes then bytesPrefix() else stringPrefix()
            val charsRegex = if isBytes then interval(0x00, 0x7F) else all
            val escapedChars = "\\".r ~ charsRegex
            val nonDelimiterNonEscape = anyOf(allString.replace(f"$delimiter", "").replace("\\", ""))
            val nonDelimiter = anyOf(allString.replace(f"$delimiter", ""))
            
            val re: Regex[Char] = 
                prefixRegex ~ 
                delimiterFull ~ 
                (
                    nonDelimiterNonEscape |
                    escapedChars |
                    (delimiterR ~ nonDelimiter) |
                    (delimiterR ~ delimiterR ~ nonDelimiter)
                ).* ~ 
                delimiterFull

            Rule(
                regex = re,
                tag = if (isBytes) f"longBytesString_delimiter_$delimiter" else f"longString_delimiter_$delimiter",
                isSeparator = false,
                transformation = if (isBytes) BytesLiteralValueInjection.injection else StringLiteralValueInjection.injection
            )

        @extern def shortStringRuleGen(delimiter: Char, isBytes: Boolean = false): Rule[Char] =
            val delimiterR = ElementMatch(delimiter)
            val prefixRegex = if isBytes then bytesPrefix() else stringPrefix()
            val charsRegex = if isBytes then interval(0x00, 0x7F) else all
            val escapedChars = "\\".r ~ charsRegex
            val nonDelimiterNonEscapeNonNewLine = anyOf(allString.replace(f"$delimiter", "").replace("\\", "").replace("\n", ""))
            
            val re: Regex[Char] = 
                prefixRegex ~ 
                delimiterR ~ 
                (
                    nonDelimiterNonEscapeNonNewLine | 
                    escapedChars 
                ).* ~ 
                delimiterR

            Rule(
                regex = re,
                tag = if (isBytes) f"shortBytesString_delimiter_$delimiter" else f"shortString_delimiter_$delimiter",
                isSeparator = false,
                transformation = if (isBytes) BytesLiteralValueInjection.injection else StringLiteralValueInjection.injection
            )

        val longStringDqRule = longStringRuleGen('"')
        val longStringSqRule = longStringRuleGen('\'')
        val longBytesDqRule = longStringRuleGen('"', true)
        val longBytesSqRule = longStringRuleGen('\'', true)
        val shortStringDqRule = shortStringRuleGen('"')
        val shortStringSqRule = shortStringRuleGen('\'')
        val shortBytesDqRule = shortStringRuleGen('"', true)
        val shortBytesSqRule = shortStringRuleGen('\'', true)

        @extern def physicalNewLineRegex(): Regex[Char] = "\n".r | "\r\n".r | "\r".r
        @extern def commentRegex(): Regex[Char] = "#".r ~ (anyOf(allString.replace("\n", "").replace("\r", "")).*)
        @extern def explicitLineJoinRegex(): Regex[Char] = "\\".r ~ "\n".r

        val commentRule =
            Rule(
            regex = commentRegex(),
            tag = "comment",
            isSeparator = true,
            transformation = CommentValueInjection.injection
            )

        val explicitLineJoinRule =
            Rule(
            regex = explicitLineJoinRegex(),
            tag = "explicitLineJoin",
            isSeparator = true,
            transformation = NewLineValueInjection.injection
            )
        // @extern def indentationRegex(): Regex[Char] = 
        //     " ".r.* ~ opt(commentRegex()) ~
        //     (physicalNewLineRegex() ~ " ".* ~ opt(commentRegex())).* ~
        //     physicalNewLineRegex() ~ " ".*

        @extern def indentationRegex(): Regex[Char] = 
            (physicalNewLineRegex() ~ " ".r.+)

        val indentationRule = Rule(
            regex = indentationRegex(),
            tag = "indentation",
            isSeparator = false,
            transformation = IndentationValueInjection.injection
        )

        val spaceRule =
            Rule(
            regex = (" ".r | "\t".r).+,
            tag = "space",
            isSeparator = true,
            transformation = SpaceValueInjection.injection
            )

        val newLineRule =
            Rule(
            regex = physicalNewLineRegex(),
            tag = "newLine",
            isSeparator = true,
            transformation = NewLineValueInjection.injection
            )

        @extern def eofRegex(): Regex[Char] = "\t".r.*

        val rules: List[Rule[Char]] = List(
            keywordRule,
            operatorRule,
            delimiterRule,
            identifierRule,
            decimalIntRule,
            binaryIntLitRule,
            floatLiteralRule,
            imaginaryLiteralRule,
            longStringDqRule,
            longStringSqRule,
            longBytesDqRule,
            longBytesSqRule,
            shortStringDqRule,
            shortStringSqRule,
            shortBytesDqRule,
            shortBytesSqRule,
            commentRule,
            explicitLineJoinRule,
            indentationRule,
            spaceRule,
            newLineRule
        )
    end PythonLexer


    object DemoPrintableTokens:
        import com.ziplex.lexer.example.RegexUtils.*
        import Types.*
        @extern def main(): Unit = {
            // Check validity of the rules
            val rules = PythonLexer.rules
            assert(Lexer.rulesInvariant(rules))
            assert(!rules.isEmpty)
        }

    end DemoPrintableTokens

end ExamplePythonLexer