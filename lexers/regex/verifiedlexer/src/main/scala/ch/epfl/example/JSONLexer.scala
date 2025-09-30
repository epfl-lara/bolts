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
import stainless.lang.decreases

import ch.epfl.lexer.benchmark.RegexUtils.*
import ch.epfl.lexer.benchmark.RegexUtils.digits
import stainless.lang.Quantifiers.*

import stainless.lang.{ghost => ghostExpr}
import stainless.lang.unfold

import stainless.lang.Exception

import ch.epfl.lexer.Vector

object ExampleJsonLexer:
    object Types:
        case class IntegerValue(value: BigInt, text: Vector[Char]) extends TokenValue:
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
                
            
            @pure def charsToBigInt(v: Vector[Char], acc: BigInt = 0): BigInt = {
                decreases(v.size)
                if v.isEmpty then acc
                else charsToBigInt(v.tail, acc * 10 + charToBigInt(v(0)))
            }
        end IntegerValueUtils

        case class FloatLiteralValue(text: Vector[Char]) extends TokenValue
        case class WhitespaceValue(value: Vector[Char]) extends TokenValue
        case class StringLiteralValue(text: Vector[Char]) extends TokenValue

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
            case Broken(value: Vector[Char])
        end KeywordValue


        // Injection definition + proofs

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

        case object WhitespaceValueInjection:
            def toValue(v: Vector[Char]): TokenValue = WhitespaceValue(v)
            def toCharacters(t: TokenValue): Vector[Char] = 
                t match
                    case WhitespaceValue(value) => value
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
        end WhitespaceValueInjection

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

        case object KeywordValueInjection:
            def toValue(v: Vector[Char]): TokenValue = v match
                case vv if vv == Vector.fromList(List('n', 'u', 'l', 'l'))        => KeywordValue.Null
                case vv if vv == Vector.fromList(List('t', 'r', 'u', 'e'))        => KeywordValue.True
                case vv if vv == Vector.fromList(List('f', 'a', 'l', 's', 'e'))   => KeywordValue.False
                case vv if vv == Vector.fromList(List(':'))                       => KeywordValue.Colon
                case vv if vv == Vector.fromList(List(','))                       => KeywordValue.Comma
                case vv if vv == Vector.fromList(List('{'))                       => KeywordValue.LeftBrace
                case vv if vv == Vector.fromList(List('}'))                       => KeywordValue.RightBrace
                case vv if vv == Vector.fromList(List('['))                       => KeywordValue.LeftBracket
                case vv if vv == Vector.fromList(List(']'))                       => KeywordValue.RightBracket
                case vv                                                           => KeywordValue.Broken(vv)
            def toCharacters(t: TokenValue): Vector[Char] = t match
                case KeywordValue.Null           => Vector.fromList(List('n', 'u', 'l', 'l'))
                case KeywordValue.True           => Vector.fromList(List('t', 'r', 'u', 'e'))
                case KeywordValue.False          => Vector.fromList(List('f', 'a', 'l', 's', 'e'))
                case KeywordValue.Colon          => Vector.fromList(List(':'))
                case KeywordValue.Comma          => Vector.fromList(List(','))
                case KeywordValue.LeftBrace      => Vector.fromList(List('{'))
                case KeywordValue.RightBrace     => Vector.fromList(List('}'))
                case KeywordValue.LeftBracket    => Vector.fromList(List('['))
                case KeywordValue.RightBracket   => Vector.fromList(List(']'))
                case KeywordValue.Broken(value)  => value
                case _                            => Vector.empty

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
        import ch.epfl.lexer.benchmark.RegexUtils.*
        import Types.*
        @extern def main(): Unit = {
            // Check validity of the rules
            val rules = JsonLexer.rules
            assert(Lexer.rulesInvariant(rules))
            assert(!rules.isEmpty)


        }

    end Demo

end ExampleJsonLexer