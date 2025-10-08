package ch.epfl.lexer.example

import ch.epfl.lexer.VerifiedLexer.Lexer
import ch.epfl.lexer.LexerInterface
import ch.epfl.lexer.Rule
import ch.epfl.lexer.Token
import ch.epfl.lexer.TokenValue
import ch.epfl.lexer.VerifiedRegex.*

import stainless.collection.List
import stainless.collection.Cons
import stainless.collection.Nil

import stainless.annotation.extern
import stainless.annotation.pure

import ch.epfl.lexer.example.RegexUtils.*
import ch.epfl.lexer.example.RegexUtils.digits
import stainless.lang.Quantifiers.*

import ch.epfl.lexer.Vector
import stainless.lang.Exception
import scala.annotation.tailrec
import scala.math.BigInt

// BEGIN uncomment for verification ------------------------------------------
import stainless.lang.StaticChecks._
import stainless.lang.{ghost => ghostExpr}
import stainless.lang.unfold
// END uncomment for verification --------------------------------------------
// BEGIN imports for benchmarking -------------------------------------------
// import stainless.lang.{ghost => _, decreases => _, unfold => _, _}
// import ch.epfl.lexer.OptimisedChecks.*
// import Predef.{assert => _, Ensuring => _, require => _, _}

// @tailrec
// def dummyPythonLexer(x: BigInt): BigInt = {
//   if (x == BigInt(0)) then x
//   else dummyPythonLexer(x - BigInt(1))
// }.ensuring( res => res == BigInt(0))
// END imports for benchmarking ---------------------------------------------


object ExamplePythonLexer:
    object Types:

        case class NewLineValue(value: Vector[Char]) extends TokenValue
        case class IdentValue(value: Vector[Char]) extends TokenValue
        case class DedentValue(value: Vector[Char]) extends TokenValue
        case class CommentValue(value: Vector[Char]) extends TokenValue
        case class SpaceValue(value: Vector[Char]) extends TokenValue

        case class KeywordValue(value: Vector[Char]) extends TokenValue
        case class IdentifierValue(value: Vector[Char]) extends TokenValue

        case class StringLiteralValue(value: Vector[Char]) extends TokenValue
        case class BytesLiteralValue(value: Vector[Char]) extends TokenValue

        case class IntegerValue(value: BigInt, text: Vector[Char]) extends TokenValue:
            require(IntegerValueUtils.charsToBigInt(text) == value)
        end IntegerValue
            
        object IntegerValueUtils:
            extension [A](v: Vector[A])
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
            @extern def charsToBigInt(v: Vector[Char]): BigInt = 
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

        case class FloatLiteralValue(text: Vector[Char]) extends TokenValue
        case class ImaginaryLiteralValue(text: Vector[Char]) extends TokenValue

        case class OperatorValue(op: Vector[Char]) extends TokenValue
        case class DelimiterValue(del: Vector[Char]) extends TokenValue

        case class IndentationValue(value: Vector[Char]) extends TokenValue

        case class EOFValue(value: Vector[Char]) extends TokenValue
        case class ErrorTokenValue(msg: Vector[Char]) extends TokenValue

        case object DedentValueInjection:
            def toValue(v: Vector[Char]): TokenValue = DedentValue(v)
            def toCharacters(t: TokenValue): Vector[Char] = t match
                case DedentValue(value) => value
                case _ => Vector.empty
            
            val injection: Injection[Vector[Char], TokenValue] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBody(toCharacters, toValue))
                        semiInverseBody(toCharacters, toValue)
                    })
                    unfold(semiInverse(toCharacters, toValue))
                }
                Injection(toValue, toCharacters)
            }
        end DedentValueInjection

        case object IdentValueInjection:
            def toValue(v: Vector[Char]): TokenValue = IdentValue(v)
            def toCharacters(t: TokenValue): Vector[Char] = t match
                case IdentValue(value) => value
                case _ => Vector.empty
            
            val injection: Injection[Vector[Char], TokenValue] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBody(toCharacters, toValue))
                        semiInverseBody(toCharacters, toValue)
                    })
                    unfold(semiInverse(toCharacters, toValue))
                }
                Injection(toValue, toCharacters)
            }
        end IdentValueInjection

        case object NewLineValueInjection:
            def toValue(v: Vector[Char]): TokenValue = NewLineValue(v)
            def toCharacters(t: TokenValue): Vector[Char] = t match
                case NewLineValue(value) => value
                case _ => Vector.empty
            
            val injection: Injection[Vector[Char], TokenValue] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBody(toCharacters, toValue))
                        semiInverseBody(toCharacters, toValue)
                    })
                    unfold(semiInverse(toCharacters, toValue))
                }
                Injection(toValue, toCharacters)
            }
        end NewLineValueInjection

        case object CommentValueInjection:
            def toValue(v: Vector[Char]): TokenValue = CommentValue(v)
            def toCharacters(t: TokenValue): Vector[Char] = t match
                case CommentValue(value) => value
                case _ => Vector.empty
            
            val injection: Injection[Vector[Char], TokenValue] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBody(toCharacters, toValue))
                        semiInverseBody(toCharacters, toValue)
                    })
                    unfold(semiInverse(toCharacters, toValue))
                }
                Injection(toValue, toCharacters)
            }
        end CommentValueInjection

        case object SpaceValueInjection:
            def toValue(v: Vector[Char]): TokenValue = SpaceValue(v)
            def toCharacters(t: TokenValue): Vector[Char] = t match
                case SpaceValue(value) => value
                case _ => Vector.empty

            val injection: Injection[Vector[Char], TokenValue] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBody(toCharacters, toValue))
                        semiInverseBody(toCharacters, toValue)
                    })
                    unfold(semiInverse(toCharacters, toValue))
                }
                Injection(toValue, toCharacters)
            }
        end SpaceValueInjection

        case object KeywordValueInjection:
            def toValue(v: Vector[Char]): TokenValue = KeywordValue(v)
            def toCharacters(t: TokenValue): Vector[Char] = t match
                case KeywordValue(value) => value
                case _ => Vector.empty
            
            val injection: Injection[Vector[Char], TokenValue] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBody(toCharacters, toValue))
                        semiInverseBody(toCharacters, toValue)
                    })
                    unfold(semiInverse(toCharacters, toValue))
                }
                Injection(toValue, toCharacters)
            }
        end KeywordValueInjection

        case object IdentifierValueInjection:
            def toValue(v: Vector[Char]): TokenValue = IdentifierValue(v)
            def toCharacters(t: TokenValue): Vector[Char] = t match
                case IdentifierValue(value) => value
                case _ => Vector.empty
            
            val injection: Injection[Vector[Char], TokenValue] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBody(toCharacters, toValue))
                        semiInverseBody(toCharacters, toValue)
                    })
                    unfold(semiInverse(toCharacters, toValue))
                }
                Injection(toValue, toCharacters)
            }
        end IdentifierValueInjection

        case object StringLiteralValueInjection:
            def toValue(v: Vector[Char]): TokenValue = StringLiteralValue(v)
            def toCharacters(t: TokenValue): Vector[Char] = t match
                case StringLiteralValue(value) => value
                case _ => Vector.empty
            
            val injection: Injection[Vector[Char], TokenValue] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBody(toCharacters, toValue))
                        semiInverseBody(toCharacters, toValue)
                    })
                    unfold(semiInverse(toCharacters, toValue))
                }
                Injection(toValue, toCharacters)
            }
        end StringLiteralValueInjection

        case object BytesLiteralValueInjection:
            def toValue(v: Vector[Char]): TokenValue = BytesLiteralValue(v)
            def toCharacters(t: TokenValue): Vector[Char] = t match
                case BytesLiteralValue(value) => value
                case _ => Vector.empty
            
            val injection: Injection[Vector[Char], TokenValue] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBody(toCharacters, toValue))
                        semiInverseBody(toCharacters, toValue)
                    })
                    unfold(semiInverse(toCharacters, toValue))
                }
                Injection(toValue, toCharacters)
            }
        end BytesLiteralValueInjection


        case object IntegerValueInjection:
            def toValue(v: Vector[Char]): TokenValue = IntegerValue(IntegerValueUtils.charsToBigInt(v), v)
            def toCharacters(t: TokenValue): Vector[Char] = t match
                    case IntegerValue(_, text) => text
                    case _ => Vector.empty
            
            val injection: Injection[Vector[Char], TokenValue] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBody(toCharacters, toValue))
                        semiInverseBody(toCharacters, toValue)
                    })
                    unfold(semiInverse(toCharacters, toValue))
                }
                Injection(toValue, toCharacters)
            }
        end IntegerValueInjection


        case object FloatLiteralValueInjection:
            def toValue(v: Vector[Char]): TokenValue = FloatLiteralValue(v)
            def toCharacters(t: TokenValue): Vector[Char] = t match
                case FloatLiteralValue(value) => value
                case _ => Vector.empty
            
            val injection: Injection[Vector[Char], TokenValue] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBody(toCharacters, toValue))
                        semiInverseBody(toCharacters, toValue)
                    })
                    unfold(semiInverse(toCharacters, toValue))
                }
                Injection(toValue, toCharacters)
            }
        end FloatLiteralValueInjection

        case object ImaginaryLiteralValueInjection:
            def toValue(v: Vector[Char]): TokenValue = ImaginaryLiteralValue(v)
            def toCharacters(t: TokenValue): Vector[Char] = t match
                case ImaginaryLiteralValue(value) => value
                case _ => Vector.empty
            
            val injection: Injection[Vector[Char], TokenValue] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBody(toCharacters, toValue))
                        semiInverseBody(toCharacters, toValue)
                    })
                    unfold(semiInverse(toCharacters, toValue))
                }
                Injection(toValue, toCharacters)
            }
        end ImaginaryLiteralValueInjection

        case object OperatorValueInjection:
            def toValue(v: Vector[Char]): TokenValue = OperatorValue(v)
            def toCharacters(t: TokenValue): Vector[Char] = t match
                case OperatorValue(value) => value
                case _ => Vector.empty
            
            val injection: Injection[Vector[Char], TokenValue] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBody(toCharacters, toValue))
                        semiInverseBody(toCharacters, toValue)
                    })
                    unfold(semiInverse(toCharacters, toValue))
                }
                Injection(toValue, toCharacters)
            }
        end OperatorValueInjection

        case object DelimiterValueInjection:
            def toValue(v: Vector[Char]): TokenValue = DelimiterValue(v)
            def toCharacters(t: TokenValue): Vector[Char] = t match
                case DelimiterValue(value) => value
                case _ => Vector.empty
            
            val injection: Injection[Vector[Char], TokenValue] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBody(toCharacters, toValue))
                        semiInverseBody(toCharacters, toValue)
                    })
                    unfold(semiInverse(toCharacters, toValue))
                }
                Injection(toValue, toCharacters)
            }
        end DelimiterValueInjection

        case object IndentationValueInjection:
            def toValue(v: Vector[Char]): TokenValue = IndentationValue(v)
            def toCharacters(t: TokenValue): Vector[Char] = t match
                case IndentationValue(value) => value
                case _ => Vector.empty
            
            val injection: Injection[Vector[Char], TokenValue] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBody(toCharacters, toValue))
                        semiInverseBody(toCharacters, toValue)
                    })
                    unfold(semiInverse(toCharacters, toValue))
                }
                Injection(toValue, toCharacters)
            }
        end IndentationValueInjection

        case object EOFValueInjection:
            def toValue(v: Vector[Char]): TokenValue = EOFValue(v)
            def toCharacters(t: TokenValue): Vector[Char] = t match
                case EOFValue(value) => value
                case _ => Vector.empty
            
            val injection: Injection[Vector[Char], TokenValue] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBody(toCharacters, toValue))
                        semiInverseBody(toCharacters, toValue)
                    })
                    unfold(semiInverse(toCharacters, toValue))
                }
                Injection(toValue, toCharacters)
            }
        end EOFValueInjection

        case object ErrorTokenValueInjection:
            def toValue(v: Vector[Char]): TokenValue = ErrorTokenValue(v)
            def toCharacters(t: TokenValue): Vector[Char] = t match
                case ErrorTokenValue(value) => value
                case _ => Vector.empty
            
            val injection: Injection[Vector[Char], TokenValue] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBody(toCharacters, toValue))
                        semiInverseBody(toCharacters, toValue)
                    })
                    unfold(semiInverse(toCharacters, toValue))
                }
                Injection(toValue, toCharacters)
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
        import ch.epfl.lexer.example.RegexUtils.*
        import Types.*
        @extern def main(): Unit = {
            // Check validity of the rules
            val rules = PythonLexer.rules
            assert(Lexer.rulesInvariant(rules))
            assert(!rules.isEmpty)
        }

    end DemoPrintableTokens

end ExamplePythonLexer