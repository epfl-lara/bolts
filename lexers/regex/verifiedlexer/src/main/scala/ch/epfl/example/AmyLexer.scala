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
import ch.epfl.lexer.benchmark.RegexUtils.digits
import stainless.lang.Quantifiers.*

import ch.epfl.lexer.Vector

import scala.annotation.tailrec
// import stainless.lang.StaticChecks._
// import stainless.lang.{ghost => ghostExpr}
import stainless.lang.{ghost => _, decreases => _, unfold => _, _}
import ch.epfl.lexer.OptimisedChecks.*
import Predef.{assert => _, Ensuring => _, require => _, _}

@tailrec
def dummyAmyLexerExample(x: BigInt): BigInt = {
  if (x == BigInt(0)) then x
  else dummyAmyLexerExample(x - BigInt(1))
}.ensuring( res => res == BigInt(0))


object ExampleAmyLexer:
    object Types:
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

        case class IdentifierValue(value: Vector[Char]) extends TokenValue
        enum KeywordValue extends TokenValue:
            case Abstract
            case Case
            case Class
            case Def
            case Else
            case Extends
            case If
            case Match
            case Object
            case Val
            case Error
            case Underscore
            case End
            case Broken(value: Vector[Char])
        end KeywordValue
        enum PrimitiveTypeValue extends TokenValue:
            case Int32
            case Unit
            case Boolean
            case String
            case Broken(value: Vector[Char])
        end PrimitiveTypeValue
        enum BooleanLiteralValue extends TokenValue:
            case True
            case False
            case Broken(value: Vector[Char])
        end BooleanLiteralValue
        enum OperatorValue extends TokenValue:
            case Plus
            case Minus
            case Times
            case Div
            case Mod
            case Not
            case Equal
            case LessEqual
            case And
            case Or
            case Concat
            case Broken(value: Vector[Char])
        end OperatorValue
        case class StringLiteralValue(value: Vector[Char]) extends TokenValue
        case class DelimiterValue(value: Vector[Char]) extends TokenValue
        case class WhitespaceValue(value: Vector[Char]) extends TokenValue
        case class CommentValue(value: Vector[Char]) extends TokenValue

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

        // foravv v: Vector[Char], toCharacters(toValue(l)) == l
        case object KeywordValueInjection:
            def toValue(v: Vector[Char]): TokenValue = v match
                case vv if vv == Vector.fromList(List('a', 'b', 's', 't', 'r', 'a', 'c', 't'))           => KeywordValue.Abstract
                case vv if vv == Vector.fromList(List('c', 'a', 's', 'e'))                               => KeywordValue.Case
                case vv if vv == Vector.fromList(List('c', 'l', 'a', 's', 's'))                          => KeywordValue.Class
                case vv if vv == Vector.fromList(List('d', 'e', 'f'))                                    => KeywordValue.Def
                case vv if vv == Vector.fromList(List('e', 'l', 's', 'e'))                               => KeywordValue.Else
                case vv if vv == Vector.fromList(List('e', 'x', 't', 'e', 'n', 'd', 's'))                => KeywordValue.Extends
                case vv if vv == Vector.fromList(List('i', 'f'))                                         => KeywordValue.If
                case vv if vv == Vector.fromList(List('m', 'a', 't', 'c', 'h'))                          => KeywordValue.Match
                case vv if vv == Vector.fromList(List('o', 'b', 'j', 'e', 'c', 't'))                     => KeywordValue.Object
                case vv if vv == Vector.fromList(List('v', 'a', 'l'))                                    => KeywordValue.Val
                case vv if vv == Vector.fromList(List('e','r', 'r', 'o', 'r'))                           => KeywordValue.Error
                case vv if vv == Vector.fromList(List('_'))                                              => KeywordValue.Underscore
                case vv if vv == Vector.fromList(List('e', 'n', 'd'))                                    => KeywordValue.End
                case vv                                                                                  => KeywordValue.Broken(vv)
            def toCharacters(t: TokenValue): Vector[Char] = t match
                case KeywordValue.Abstract          => Vector.fromList(List('a', 'b', 's', 't', 'r', 'a', 'c', 't'))           
                case KeywordValue.Case              => Vector.fromList(List('c', 'a', 's', 'e'))                               
                case KeywordValue.Class             => Vector.fromList(List('c', 'l', 'a', 's', 's'))                          
                case KeywordValue.Def               => Vector.fromList(List('d', 'e', 'f'))                                    
                case KeywordValue.Else              => Vector.fromList(List('e', 'l', 's', 'e'))                               
                case KeywordValue.Extends           => Vector.fromList(List('e', 'x', 't', 'e', 'n', 'd', 's'))                
                case KeywordValue.If                => Vector.fromList(List('i', 'f'))                                         
                case KeywordValue.Match             => Vector.fromList(List('m', 'a', 't', 'c', 'h'))                          
                case KeywordValue.Object            => Vector.fromList(List('o', 'b', 'j', 'e', 'c', 't'))                     
                case KeywordValue.Val               => Vector.fromList(List('v', 'a', 'l'))                                    
                case KeywordValue.Error             => Vector.fromList(List('e','r', 'r', 'o', 'r'))                           
                case KeywordValue.Underscore        => Vector.fromList(List('_'))                                              
                case KeywordValue.End               => Vector.fromList(List('e', 'n', 'd'))                                    
                case KeywordValue.Broken(value)     => value
                case _                              => Vector.empty

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

        case object PrimitiveTypeValueInjection:
            def toValue(v: Vector[Char]): TokenValue = v match
                case vv if vv == Vector.fromList(List('I', 'n', 't', '(', '3', '2', ')')) => PrimitiveTypeValue.Int32
                case vv if vv == Vector.fromList(List('U', 'n', 'i','t'))                 => PrimitiveTypeValue.Unit
                case vv if vv == Vector.fromList(List('B', 'o', 'o', 'l', 'e', 'a', 'n')) => PrimitiveTypeValue.Boolean
                case vv if vv == Vector.fromList(List('S', 't', 'r', 'i', 'n', 'g'))      => PrimitiveTypeValue.String
                case vv => PrimitiveTypeValue.Broken(vv)
            def toCharacters(t: TokenValue): Vector[Char] = t match
                case PrimitiveTypeValue.Int32         => Vector.fromList(List('I', 'n', 't', '(', '3', '2', ')'))
                case PrimitiveTypeValue.Unit          => Vector.fromList(List('U', 'n', 'i','t'))
                case PrimitiveTypeValue.Boolean       => Vector.fromList(List('B', 'o', 'o', 'l', 'e', 'a', 'n'))
                case PrimitiveTypeValue.String        => Vector.fromList(List('S', 't', 'r', 'i', 'n', 'g'))
                case PrimitiveTypeValue.Broken(value) => value
                case _                                => Vector.empty

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
        end PrimitiveTypeValueInjection

        case object BooleanLiteralValueInjection:
            def toValue(v: Vector[Char]): TokenValue = v match
                case vv if vv == Vector.fromList(List('t', 'r', 'u', 'e'))      => BooleanLiteralValue.True
                case vv if vv == Vector.fromList(List('f', 'a', 'l', 's', 'e')) => BooleanLiteralValue.False
                case vv => BooleanLiteralValue.Broken(vv)
            def toCharacters(t: TokenValue): Vector[Char] = t match
                case BooleanLiteralValue.True          => Vector.fromList(List('t', 'r', 'u', 'e'))     
                case BooleanLiteralValue.False         => Vector.fromList(List('f', 'a', 'l', 's', 'e'))
                case BooleanLiteralValue.Broken(value) => value
                case _                                 => Vector.empty
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
        end BooleanLiteralValueInjection

        case object OperatorValueInjection:
            def toValue(v: Vector[Char]): TokenValue = v match
                case vv if vv == Vector.fromList(List('+'))      => OperatorValue.Plus
                case vv if vv == Vector.fromList(List('-'))      => OperatorValue.Minus
                case vv if vv == Vector.fromList(List('*'))      => OperatorValue.Times
                case vv if vv == Vector.fromList(List('/'))      => OperatorValue.Div
                case vv if vv == Vector.fromList(List('%'))      => OperatorValue.Mod
                case vv if vv == Vector.fromList(List('!'))      => OperatorValue.Not
                case vv if vv == Vector.fromList(List('='))      => OperatorValue.Equal
                case vv if vv == Vector.fromList(List('<', '=')) => OperatorValue.LessEqual
                case vv if vv == Vector.fromList(List('&', '&')) => OperatorValue.And
                case vv if vv == Vector.fromList(List('|', '|')) => OperatorValue.Or
                case vv if vv == Vector.fromList(List('+', '+')) => OperatorValue.Concat
                case vv                                          => OperatorValue.Broken(vv)
            def toCharacters(t: TokenValue): Vector[Char] = t match
                case OperatorValue.Plus          => Vector.fromList(List('+'))
                case OperatorValue.Minus         => Vector.fromList(List('-'))
                case OperatorValue.Times         => Vector.fromList(List('*'))
                case OperatorValue.Div           => Vector.fromList(List('/'))
                case OperatorValue.Mod           => Vector.fromList(List('%'))
                case OperatorValue.Not           => Vector.fromList(List('!'))
                case OperatorValue.Equal         => Vector.fromList(List('='))
                case OperatorValue.LessEqual     => Vector.fromList(List('<', '='))
                case OperatorValue.And           => Vector.fromList(List('&', '&'))
                case OperatorValue.Or            => Vector.fromList(List('|', '|'))
                case OperatorValue.Concat        => Vector.fromList(List('+', '+'))
                case OperatorValue.Broken(value) => value
                case _                           => Vector.empty
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

        case object StringLiteralValueInjection:
            def toValue(v: Vector[Char]): TokenValue = StringLiteralValue(v)
            def toCharacters(t: TokenValue): Vector[Char] =
                t match
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

        case object CommentValueInjection:
            def toValue(v: Vector[Char]): TokenValue = CommentValue(v)
            def toCharacters(t: TokenValue): Vector[Char] = 
                t match
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
    end Types

    case object AmyLexer:
        import Types.*
        @extern def keywordRegex(): Regex[Char] = "abstract".r |
                                                "case".r |
                                                "class".r |
                                                "def".r |
                                                "else".r |
                                                "extends".r |
                                                "if".r |
                                                "match".r |
                                                "object".r |
                                                "val".r |
                                                "error".r |
                                                "_".r |
                                                "end".r
        val keywordRule =
            Rule(
            regex = keywordRegex(),
            tag = "keyword",
            isSeparator = false,
            transformation = KeywordValueInjection.injection
            )
        @extern def primitivTypeRegex(): Regex[Char] = "Int(32)".r | "Unit".r | "Boolean".r | "String".r
        val primitivTypeRule =
            Rule(
            regex = primitivTypeRegex(),
            tag = "primitive_type",
            isSeparator = false,
            transformation = PrimitiveTypeValueInjection.injection
            )
        @extern def booleanLiteralRegex(): Regex[Char] = "true".r | "false".r
        val booleanLiteralRule =
            Rule(regex = booleanLiteralRegex(), tag = "boolean_literal", isSeparator = false, transformation = BooleanLiteralValueInjection.injection)

        // oneOf("+-/*%!<") | word("==") | word("<=") | word("&&") | word("||") | word("++")
        @extern def operatorRegex(): Regex[Char] = anyOf("+-/*%!<") | "==".r | "<=".r | "&&".r | "||".r | "++".r    
        val operatorRule =
            Rule(regex = operatorRegex(), tag = "operator", isSeparator = false, transformation = OperatorValueInjection.injection)

        // elem(_.isLetter) ~ many(elem(_.isLetterOrDigit) | elem('_'))
        @extern def identifierRegex(): Regex[Char] = azAZ ~ (azAZ | digits | "_".r).*
        val identifierRule =
            Rule(regex = identifierRegex(), tag = "identifier", isSeparator = false, transformation = IdentifierValueInjection.injection)

        // many1(elem(_.isDigit))
        @extern def integerLiteralRegex(): Regex[Char] = digits.+
        val integerLiteralRule =
            Rule(regex = integerLiteralRegex(), tag = "integer_literal", isSeparator = false, transformation = IdentifierValueInjection.injection)

        // elem('"') ~ many(elem(c => c != '"' && c != '\n')) ~ elem('"')
        @extern def stringLiteralRegex(): Regex[Char] = "\"".r ~ (azAZ | digits | " ".r | "\t".r | specialChars).* ~ "\"".r
        val stringLiteralRule =
            Rule(regex = stringLiteralRegex(), tag = "string_literal", isSeparator = false, transformation = StringLiteralValueInjection.injection)

        // oneOf(".,:;(){}[]=") | word("=>")
        @extern def delimiterRegex(): Regex[Char] = anyOf(".,:;(){}[]=") | "=>".r
        val delimiterRule =
            Rule(regex = delimiterRegex(), tag = "delimiter", isSeparator = false, transformation = DelimiterValueInjection.injection)

        // many1(elem(_.isWhitespace))
        @extern def whiteSpacesRegex(): Regex[Char] = whiteSpaces.+
        val whitespaceRule =
            Rule(regex = whiteSpacesRegex(), tag = "whitespace", isSeparator = true, transformation = WhitespaceValueInjection.injection)

        // word("//") ~ many(elem(_ != '\n'))
        @extern def singleCommentRegex(): Regex[Char] = "//".r ~ (azAZ | digits | " ".r | "\t".r | specialChars).*
        val singleCommentRule =
            Rule(regex = singleCommentRegex(), tag = "comment", isSeparator = true, transformation = CommentValueInjection.injection)

        // word("/*") ~
        // many(elem(_ != '*') | many1(elem('*')) ~ elem(c => c != '/' && c != '*')) ~
        // many(elem('*')) ~
        // word("*/")
        @extern def multiCommentRegex(): Regex[Char] = 
            "/*".r ~ 
                (azAZ | digits | whiteSpaces | specialCharsString.replace("/", "").replace("*", "").r | "/".r | ("*".r ~ "*".r.* ~ (azAZ | digits | whiteSpaces | specialCharsString.replace("/", "").replace("*", "").r | "/".r))).* ~  
                "*".r.* ~
            "*/".r
        val multiCommentRule =
            Rule(
            regex = multiCommentRegex(),
            tag = "multiline_comment",
            isSeparator = true,
            transformation = CommentValueInjection.injection
            )

        val rules = List(
            keywordRule,
            primitivTypeRule,
            booleanLiteralRule,
            operatorRule,
            identifierRule,
            integerLiteralRule,
            stringLiteralRule,
            delimiterRule,
            whitespaceRule,
            singleCommentRule,
            multiCommentRule
        )
    end AmyLexer


    object DemoPrintableTokens:
        import ch.epfl.lexer.benchmark.RegexUtils.*
        import Types.*
        @extern def main(): Unit = {
            // Check validity of the rules
            val rules = AmyLexer.rules
            assert(Lexer.rulesInvariant(rules))
            assert(!rules.isEmpty)

            val inputProgram: Vector[Char] = 
                    """object Hello
                        Std.printString("Hello world!")
                    end Hello""".toStainless
            val (tokens, suffix) = Lexer.lex(AmyLexer.rules, inputProgram)
            assert(suffix.isEmpty)
            println(f"Tokens: ${tokens.map(t => t.asString()).toScala.mkString(", ")}")

            val printable = Lexer.separableTokens(tokens, AmyLexer.rules)
            println(f"Now we can see that the produced list is printable wrt our criterion: list is printable = $printable")

            // details 
            val twoByTwo = tokens.toScala.reverse.tail.reverse.zip(tokens.tail.toScala)
            println(f"Tokens two by two: ${twoByTwo.map(t => f"(${t._1.asString()}, ${t._2.asString()})").mkString(", ")}")
            val separable = twoByTwo.map(t => Lexer.separableTokensPredicate(t._1, t._2, AmyLexer.rules))
            println(f"Separable tokens pairs: ${separable.mkString(", ")}")

            // Now let's modify the tokens
            val modifiedTokens = tokens.map(t => t match
                case Token(WhitespaceValue(value), rule, s, o) => Token(WhitespaceValue(" ".toStainless), rule, s, o)
                case _ => t
            )

            println(f"Modified tokens: ${modifiedTokens.map(t => t.asString()).toScala.mkString(", ")}")
            println(f"Modified tokens printable: ${Lexer.separableTokens(modifiedTokens, AmyLexer.rules)}")

            val prettyPrinted = Lexer.print(modifiedTokens)
            println(f"Pretty printed: ${prettyPrinted.toScala.mkString("")}")

            val (tokens2, suffix2) = Lexer.lex(AmyLexer.rules, prettyPrinted)
            assert(suffix2.isEmpty)
            assert(tokens2 == modifiedTokens)

            // Now let's modify the tokens in a way that makes them not printable
            val modifiedTokens2 = modifiedTokens.prepend(Token(Types.KeywordValue.Abstract, AmyLexer.keywordRule, "abstract".toStainless.size, "abstract".toStainless))
            println(f"Modified tokens unprintable: ${modifiedTokens2.map(t => t.asString()).toScala.mkString(", ")}")

            println(f"Modified tokens unprintable: printable = ${Lexer.separableTokens(modifiedTokens2, AmyLexer.rules)}")


            // and indeed if we print them and tokenise them again, we don't get the same tokens
            val prettyPrinted2: Vector[Char] = Lexer.print(modifiedTokens2)
            println(f"Pretty printed: ${prettyPrinted2.toScala.mkString("")}")
            val (tokens3: Vector[Token[Char]], suffix3: Vector[Char]) = Lexer.lex(AmyLexer.rules, prettyPrinted2)
            assert(suffix3.isEmpty)
            println(f"Tokens: ${tokens3.map(t => t.asString()).toScala.mkString(", ")}")
            assert(tokens3 != modifiedTokens2)
        }

    end DemoPrintableTokens

end ExampleAmyLexer