package com.ziplex.lexer.example

import com.ziplex.lexer.VerifiedLexer.Lexer
import com.ziplex.lexer.LexerInterface
import com.ziplex.lexer.TokenValueInjection
import com.ziplex.lexer.Rule
import com.ziplex.lexer.Token
import com.ziplex.lexer.TokenValue
import com.ziplex.lexer.VerifiedRegex.*

import stainless.collection.List
import stainless.collection.Cons
import stainless.collection.Nil

import stainless.annotation.extern
import stainless.annotation.pure
import stainless.lang.decreases

import com.ziplex.lexer.example.RegexUtils.*
import com.ziplex.lexer.example.RegexUtils.digits
import stainless.lang.Quantifiers.*

import stainless.lang.Exception

import com.ziplex.lexer.Sequence
import com.ziplex.lexer.emptySeq
import com.ziplex.lexer.singletonSeq
import com.ziplex.lexer.seqFromList
import com.ziplex.lexer.semiInverseBodyModEq
import com.ziplex.lexer.semiInverseModEq
import com.ziplex.lexer.equivClassesBody
import com.ziplex.lexer.equivClasses

import scala.annotation.tailrec
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
def dummyJSONLexerExample(x: BigInt): BigInt = {
  if (x == BigInt(0)) then x
  else dummyJSONLexerExample(x - BigInt(1))
}.ensuring( res => res == BigInt(0))
// END imports for benchmarking ---------------------------------------------

object ExampleJsonLexer:
    object Types:
        case class IntegerValue(value: BigInt, text: List[Char]) extends TokenValue:
            require(IntegerValueUtils.charsToBigInt(text) == value)
        end IntegerValue
            
        object IntegerValueUtils:
            @pure def charToBigInt(c: Char): BigInt = c match
                case _ if c == '1' => 1
                case _ if c == '2' => 2
                case _ if c == '3' => 3
                case _ if c == '4' => 4
                case _ if c == '5' => 5
                case _ if c == '6' => 6
                case _ if c == '7' => 7
                case _ if c == '8' => 8
                case _ if c == '9' => 9
                case _             => 0
                
            
            @pure def charsToBigInt(l: List[Char], acc: BigInt = 0): BigInt = {
                decreases(l.size)
                l match
                    case Nil() => acc
                    case Cons(hd, tl) => charsToBigInt(tl, acc * 10 + charToBigInt(hd))
            }
        end IntegerValueUtils

        case class FloatLiteralValue(text: List[Char]) extends TokenValue
        case class WhitespaceValue(value: List[Char]) extends TokenValue
        case class StringLiteralValue(text: List[Char]) extends TokenValue

        enum KeywordValue extends TokenValue:
            case Null
            case True
            case False
            case Colon
            case Comma
            case LeftBrace
            case RightBrace
            case LeftBracket
            case RightBracket
            case Broken(value: List[Char])
        end KeywordValue


        // Injection definition + proofs

        case object IntegerValueInjection:
            def toValue(v: Sequence[Char]): TokenValue = 
                val list = v.efficientList
                IntegerValue(IntegerValueUtils.charsToBigInt(list), list)
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

        case object WhitespaceValueInjection:
            def toValue(v: Sequence[Char]): TokenValue = WhitespaceValue(v.efficientList)
            def toCharacters(t: TokenValue): Sequence[Char] = 
                t match
                    case WhitespaceValue(value) => seqFromList(value)
                    case _ => emptySeq
            val injection: TokenValueInjection[Char] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBodyModEq(toCharacters, toValue))
                        semiInverseBodyModEq(toCharacters, toValue)
                    })
                    unfold(semiInverseModEq(toCharacters, toValue))
                }
                ghostExpr{
                    assert({
                        unfold(equivClassesBody(toCharacters, toValue))
                        equivClassesBody(toCharacters, toValue)
                    })
                    unfold(equivClasses(toCharacters, toValue))
                }
                TokenValueInjection(toValue, toCharacters)
            }
        end WhitespaceValueInjection

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
                }
                ghostExpr{
                    assert({
                        unfold(equivClassesBody(toCharacters, toValue))
                        equivClassesBody(toCharacters, toValue)
                    })
                    unfold(equivClasses(toCharacters, toValue))
                }
                TokenValueInjection(toValue, toCharacters)
            }
        end StringLiteralValueInjection

        lazy val nullString: List[Char] = List('n', 'u', 'l', 'l')
        lazy val trueString: List[Char] = List('t', 'r', 'u', 'e')
        lazy val falseString: List[Char] = List('f', 'a', 'l', 's', 'e')
        lazy val colonString: List[Char] = List(':')
        lazy val commaString: List[Char] = List(',')
        lazy val leftBraceString: List[Char] = List('{')
        lazy val rightBraceString: List[Char] = List('}')
        lazy val leftBracketString: List[Char] = List('[')
        lazy val rightBracketString: List[Char] = List(']')

        lazy val nullStringConc =  seqFromList(nullString)
        lazy val trueStringConc =  seqFromList(trueString)
        lazy val falseStringConc =  seqFromList(falseString)
        lazy val colonStringConc =  seqFromList(colonString)
        lazy val commaStringConc =  seqFromList(commaString)
        lazy val leftBraceStringConc =  seqFromList(leftBraceString)
        lazy val rightBraceStringConc =  seqFromList(rightBraceString)
        lazy val leftBracketStringConc =  seqFromList(leftBracketString)
        lazy val rightBracketStringConc =  seqFromList(rightBracketString)
        case object KeywordValueInjection:
            def toValue(c: Sequence[Char]): TokenValue = c.efficientList match
                case l if l == nullString            => KeywordValue.Null
                case l if l == trueString            => KeywordValue.True
                case l if l == falseString           => KeywordValue.False
                case l if l == colonString           => KeywordValue.Colon
                case l if l == commaString           => KeywordValue.Comma
                case l if l == leftBraceString       => KeywordValue.LeftBrace
                case l if l == rightBraceString      => KeywordValue.RightBrace
                case l if l == leftBracketString     => KeywordValue.LeftBracket
                case l if l == rightBracketString    => KeywordValue.RightBracket
                case l                               => KeywordValue.Broken(l)
            def toCharacters(t: TokenValue): Sequence[Char] = t match
                case KeywordValue.Null           => nullStringConc
                case KeywordValue.True           => trueStringConc
                case KeywordValue.False          => falseStringConc
                case KeywordValue.Colon          => colonStringConc
                case KeywordValue.Comma          => commaStringConc
                case KeywordValue.LeftBrace      => leftBraceStringConc
                case KeywordValue.RightBrace     => rightBraceStringConc
                case KeywordValue.LeftBracket    => leftBracketStringConc
                case KeywordValue.RightBracket   => rightBracketStringConc
                case KeywordValue.Broken(value)  => seqFromList(value)
                case _                           => emptySeq

            val injection: TokenValueInjection[Char] = {
                ghostExpr{
                    assert({
                        unfold(semiInverseBodyModEq(toCharacters, toValue))
                        semiInverseBodyModEq(toCharacters, toValue)
                    })
                    unfold(semiInverseModEq(toCharacters, toValue))
                }
                ghostExpr{
                    assert({
                        unfold(equivClassesBody(toCharacters, toValue))
                        equivClassesBody(toCharacters, toValue)
                    })
                    unfold(equivClasses(toCharacters, toValue))
                }
                TokenValueInjection(toValue, toCharacters)
            }
        end KeywordValueInjection
        

    end Types

    case object JsonLexer:
        import Types.*

        @extern def wsCharRe: Regex[Char] = (' '.r | '\t'.r | '\n'.r | '\r'.r).+
        @extern def expPartRe: Regex[Char] = ('e'.r | 'E'.r) ~ opt('-'.r | '+'.r) ~ digits.+
        @extern def intRe: Regex[Char] = opt('-'.r) ~ ('0'.r.+ | anyOf("123456789") ~ digits.*)
        @extern def decimalRe: Regex[Char] = intRe ~ '.'.r ~ digits.+
        @extern def floatRe: Regex[Char] = decimalRe ~ opt(expPartRe)
        @extern def puncRe: Regex[Char] = anyOf("!#$%&()*+,-./:;<=>?@[]^_`{|}~\\")
        @extern def unicodeDigitsRe: Regex[Char] = digits | anyOf("abcdef") | anyOf("ABCDEF")
        @extern def fourUnicodeDigitsRe: Regex[Char] = unicodeDigitsRe ~ unicodeDigitsRe ~ unicodeDigitsRe ~ unicodeDigitsRe
        @extern def unicodeCodepointRe: Regex[Char] ='\\'.r ~ 'u'.r ~ fourUnicodeDigitsRe
        @extern def jsonCharRe: Regex[Char] = unicodeCodepointRe | AZ | az | digits | (' '.r | '\t'.r | '\n'.r) | puncRe | "\\\"".r | "\\\\".r
        @extern def jsonStringRe: Regex[Char] = '\"'.r ~ jsonCharRe.* ~ '\"'.r
        @extern def trueRe: Regex[Char] = "true".r
        @extern def falseRe: Regex[Char] = "false".r
        @extern def nullRe: Regex[Char] = "null".r
        @extern def lBracketRe: Regex[Char] = "[".r
        @extern def rBracketRe: Regex[Char] = "]".r
        @extern def commaRe: Regex[Char] = ",".r
        @extern def colonRe: Regex[Char] = ":".r
        @extern def lBraceRe: Regex[Char] = "{".r
        @extern def rBraceRe: Regex[Char] = "}".r
        @extern def eofRe: Regex[Char] = '\u001a'.r


        val whitespaceRule = Rule(regex = wsCharRe, tag = "whitespace", isSeparator = true, transformation = WhitespaceValueInjection.injection)
        val integerLiteralRule = Rule(regex = intRe, tag = "integerLiteral", isSeparator = false, transformation = IntegerValueInjection.injection)
        val floatLiteralRule = Rule(regex = floatRe, tag = "floatLiteral", isSeparator = false, transformation = FloatLiteralValueInjection.injection)
        val trueRule = Rule(regex = trueRe, tag = "trueLiteral", isSeparator = false, transformation = KeywordValueInjection.injection)
        val falseRule = Rule(regex = falseRe, tag = "falseLiteral", isSeparator = false, transformation = KeywordValueInjection.injection)
        val nullRule = Rule(regex = nullRe, tag = "nullLiteral", isSeparator = false, transformation = KeywordValueInjection.injection)
        val jsonstringRule = Rule(regex = jsonStringRe, tag = "stringLiteral", isSeparator = false, transformation = StringLiteralValueInjection.injection)
        val lBraceRule = Rule(regex = lBraceRe, tag = "leftBrace", isSeparator = false, transformation = KeywordValueInjection.injection)
        val rBraceRule = Rule(regex = rBraceRe, tag = "rightBrace", isSeparator = false, transformation = KeywordValueInjection.injection)
        val lBracketRule = Rule(regex = lBracketRe, tag = "leftBracket", isSeparator = false, transformation = KeywordValueInjection.injection)
        val rBracketRule = Rule(regex = rBracketRe, tag = "rightBracket", isSeparator = false, transformation = KeywordValueInjection.injection)
        val colonRule = Rule(regex = colonRe, tag = "colon", isSeparator = false, transformation = KeywordValueInjection.injection)
        val commaRule = Rule(regex = commaRe, tag = "comma", isSeparator = false, transformation = KeywordValueInjection.injection)
        val eofRule = Rule(regex = eofRe, tag = "eof", isSeparator = false, transformation = WhitespaceValueInjection.injection)

        val rules = List(
            whitespaceRule,
            integerLiteralRule,
            floatLiteralRule,
            trueRule,
            falseRule,
            nullRule,
            jsonstringRule,
            lBraceRule,
            rBraceRule,
            lBracketRule,
            rBracketRule,
            colonRule,
            commaRule,
            eofRule,
        )
    end JsonLexer


    object Demo:
        import com.ziplex.lexer.example.RegexUtils.*
        import Types.*
        @extern def main(): Unit = {
            // Check validity of the rules
            val rules = JsonLexer.rules
            assert(Lexer.rulesInvariant(rules))
            assert(!rules.isEmpty)


        }

    end Demo

end ExampleJsonLexer