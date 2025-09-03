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

import ch.epfl.lexer.benchmark.RegexUtils.*
import ch.epfl.lexer.benchmark.RegexUtils.digitRegex
import stainless.lang.Quantifiers.*

import stainless.lang.{ghost => ghostExpr}
import stainless.lang.unfold

import stainless.lang.Exception
// import ch.epfl.lexer.example.ExampleAmyLexer.Types.WhitespaceValue
// import ch.epfl.lexer.example.ExampleAmyLexer.Types.KeywordValueInjection

import ch.epfl.lexer.Vector

object ExamplePythonLexer:
    object Types:

        case class NewLineValue(value: Vector[Char]) extends TokenValue
        case class IdentValue(value: Vector[Char]) extends TokenValue
        case class DedentValue(value: Vector[Char]) extends TokenValue

        case class KeywordValue(value: Vector[Char]) extends TokenValue
        case class IdentifierValue(value: Vector[Char]) extends TokenValue

        case class StringLiteralValue(value: Vector[Char]) extends TokenValue
        case class ByteLiteralValue(value: Vector[Char]) extends TokenValue

        case class IntegerValue(value: Int, text: Vector[Char]) extends TokenValue:
            require(IntegerValueUtils.charsToInt(text) == value)
        end IntegerValue
            
        object IntegerValueUtils:
            extension [A](v: Vector[A])
                @extern @pure def mkString(inter: String): String = 
                    val sb = new StringBuilder()
                    def loop(from: BigInt): Unit =
                        if from < v.size then
                            sb.append(v(from).toString)
                            if from + 1 < v.size then
                                sb.append(inter)
                            loop(from + 1)
                    loop(0)
                    sb.toString()
            @extern def charsToInt(v: Vector[Char]): Int = v.mkString("").toInt
        end IntegerValueUtils

        case class FloatLiteralValue(text: Vector[Char]) extends TokenValue
        case class ImaginaryLiteralValue(text: Vector[Char]) extends TokenValue

        case class OperatorValue(op: Vector[Char]) extends TokenValue
        case class DelimiterValue(del: Vector[Char]) extends TokenValue

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

        case object ByteLiteralValueInjection:
            def toValue(v: Vector[Char]): TokenValue = ByteLiteralValue(v)
            def toCharacters(t: TokenValue): Vector[Char] = t match
                case ByteLiteralValue(value) => value
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
        end ByteLiteralValueInjection


        case object IntegerValueInjection:
            def toValue(v: Vector[Char]): TokenValue = IntegerValue(IntegerValueUtils.charsToInt(v), v)
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
            ".r |".r | ":".r | ".".r | ";".r | "=".r | "->".r | "+=".r | "-=".r | "*=".r | 
            "/=".r | "//=".r | "%=".r | "@=".r | "&=".r | "|=".r | "^=".r | ">>=".r |
            "<<=".r | "**=".r | "!".r
           

        val delimiterRule =
            Rule(
            regex = delimiterRegex(),
            tag = "delimiter",
            isSeparator = false,
            transformation = DelimiterValueInjection.injection
            )

        

        val rules: List[Rule[Char]] = List(
            keywordRule,
            operatorRule,
            delimiterRule
        )
    end PythonLexer


    object DemoPrintableTokens:
        import ch.epfl.lexer.benchmark.RegexUtils.*
        import Types.*
        @extern def main(): Unit = {
            // Check validity of the rules
            val rules = PythonLexer.rules
            assert(Lexer.rulesInvariant(rules))
            assert(!rules.isEmpty)
        }

    end DemoPrintableTokens

end ExamplePythonLexer