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
import ch.epfl.lexer.example.ExampleAmyLexer.Types.WhitespaceValue
import ch.epfl.lexer.example.ExampleAmyLexer.Types.KeywordValueInjection

object ExampleAmyLexer:
    object Types:
        case class IntegerValue(value: Int, text: List[Char]) extends TokenValue:
            require(IntegerValueUtils.charsToInt(text) == value)
        end IntegerValue
            
        object IntegerValueUtils:
            extension [A](l: stainless.collection.List[A])
                @extern @pure def mkString(inter: String): String = 
                    val sb = new StringBuilder()
                    def loop(l: List[A]): Unit = l match
                        case Nil() => ()
                        case Cons(h, Nil()) => sb.append(h.toString())
                        case Cons(h, t) =>
                            sb.append(h.toString())
                            sb.append(inter)
                            loop(t)
                    loop(l)
                    sb.toString()
            @extern def charsToInt(l: List[Char]): Int = l.mkString("").toInt
        end IntegerValueUtils

        case class IdentifierValue(value: List[Char]) extends TokenValue
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
            case Broken(value: List[Char])
        end KeywordValue
        enum PrimitiveTypeValue extends TokenValue:
            case Int32
            case Unit
            case Boolean
            case String
            case Broken(value: List[Char])
        end PrimitiveTypeValue
        enum BooleanLiteralValue extends TokenValue:
            case True
            case False
            case Broken(value: List[Char])
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
            case Broken(value: List[Char])
        end OperatorValue
        case class StringLiteralValue(value: List[Char]) extends TokenValue
        case class DelimiterValue(value: List[Char]) extends TokenValue
        case class WhitespaceValue(value: List[Char]) extends TokenValue
        case class CommentValue(value: List[Char]) extends TokenValue

        case object IntegerValueInjection:
            def toValue(l: List[Char]): TokenValue = IntegerValue(IntegerValueUtils.charsToInt(l), l)
            def toCharacters(t: TokenValue): List[Char] = t match
                    case IntegerValue(_, text) => text
                    case _ => Nil()
            
            val injection: Injection[List[Char], TokenValue] = {
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
            def toValue(l: List[Char]): TokenValue = IdentifierValue(l)
            def toCharacters(t: TokenValue): List[Char] = t match
                case IdentifierValue(value) => value
                case _ => Nil()
            
            val injection: Injection[List[Char], TokenValue] = {
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

        // forall l: List[Char], toCharacters(toValue(l)) == l
        case object KeywordValueInjection:
            def toValue(l: List[Char]): TokenValue = l match
                case ll if ll == List('a', 'b', 's', 't', 'r', 'a', 'c', 't')                         => KeywordValue.Abstract
                case ll if ll == List('c', 'a', 's', 'e')                                            => KeywordValue.Case
                case ll if ll == List('c', 'l', 'a', 's', 's')                                  => KeywordValue.Class
                case ll if ll == List('d', 'e', 'f')                                                       => KeywordValue.Def
                case ll if ll == List('e', 'l', 's', 'e')                                             => KeywordValue.Else
                case ll if ll == List('e', 'x', 't', 'e', 'n', 'd', 's')            => KeywordValue.Extends
                case ll if ll == List('i', 'f')                                                                => KeywordValue.If
                case ll if ll == List('m', 'a', 't', 'c', 'h')                                  => KeywordValue.Match
                case ll if ll == List('o', 'b', 'j', 'e', 'c', 't')                      => KeywordValue.Object
                case ll if ll == List('v', 'a', 'l')                                                      => KeywordValue.Val
                case ll if ll == List('e','r', 'r', 'o', 'r')                              => KeywordValue.Error
                case ll if ll == List('_')                                                                            => KeywordValue.Underscore
                case ll if ll == List('e', 'n', 'd')                                                        => KeywordValue.End
                case ll                                                                                             => KeywordValue.Broken(ll)
            def toCharacters(t: TokenValue): List[Char] = t match
                case KeywordValue.Abstract          => Cons('a', Cons('b', Cons('s', Cons('t', Cons('r', Cons('a', Cons('c', Cons('t', Nil()))))))))
                case KeywordValue.Case              => Cons('c', Cons('a', Cons('s', Cons('e', Nil()))))
                case KeywordValue.Class             => Cons('c', Cons('l', Cons('a', Cons('s', Cons('s', Nil())))))
                case KeywordValue.Def               => Cons('d', Cons('e', Cons('f', Nil())))
                case KeywordValue.Else              => Cons('e', Cons('l', Cons('s', Cons('e', Nil()))))
                case KeywordValue.Extends           => Cons('e', Cons('x', Cons('t', Cons('e', Cons('n', Cons('d', Cons('s', Nil())))))))
                case KeywordValue.If                => Cons('i', Cons('f', Nil()))
                case KeywordValue.Match             => Cons('m', Cons('a', Cons('t', Cons('c', Cons('h', Nil())))))
                case KeywordValue.Object            => Cons('o', Cons('b', Cons('j', Cons('e', Cons('c', Cons('t', Nil()))))))
                case KeywordValue.Val               => Cons('v', Cons('a', Cons('l', Nil())))
                case KeywordValue.Error             => Cons('e', Cons('r', Cons('r', Cons('o', Cons('r', Nil())))))
                case KeywordValue.Underscore        => Cons('_', Nil())
                case KeywordValue.End               => Cons('e', Cons('n', Cons('d', Nil())))
                case KeywordValue.Broken(value)      => value
                case _ => Nil()

            val injection: Injection[List[Char], TokenValue] = {
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
            def toValue(l: List[Char]): TokenValue = l match
                case ll if ll == List('I', 'n', 't', '(', '3', '2', ')') => PrimitiveTypeValue.Int32
                case ll if ll == List('U', 'n', 'i','t')            => PrimitiveTypeValue.Unit
                case ll if ll == List('B', 'o', 'o', 'l', 'e', 'a', 'n') => PrimitiveTypeValue.Boolean
                case ll if ll == List('S', 't', 'r', 'i', 'n', 'g') => PrimitiveTypeValue.String
                case ll => PrimitiveTypeValue.Broken(ll)
            def toCharacters(t: TokenValue): List[Char] = t match
                case PrimitiveTypeValue.Int32   => List('I', 'n', 't', '(', '3', '2', ')')
                case PrimitiveTypeValue.Unit    => List('U', 'n', 'i','t')
                case PrimitiveTypeValue.Boolean => List('B', 'o', 'o', 'l', 'e', 'a', 'n')
                case PrimitiveTypeValue.String  => List('S', 't', 'r', 'i', 'n', 'g')
                case PrimitiveTypeValue.Broken(value) => value
                case _ => Nil()

            val injection: Injection[List[Char], TokenValue] = {
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
            def toValue(l: List[Char]): TokenValue = l match
                case ll if ll == List('t', 'r', 'u', 'e') => BooleanLiteralValue.True
                case ll if ll == List('f', 'a', 'l', 's', 'e') => BooleanLiteralValue.False
                case ll => BooleanLiteralValue.Broken(ll)
            def toCharacters(t: TokenValue): List[Char] = t match
                case BooleanLiteralValue.True  => Cons('t', Cons('r', Cons('u', Cons('e', Nil()))))
                case BooleanLiteralValue.False => Cons('f', Cons('a', Cons('l', Cons('s', Cons('e', Nil())))))
                case BooleanLiteralValue.Broken(value) => value
                case _ => Nil()
            val injection: Injection[List[Char], TokenValue] = {
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
            def toValue(l: List[Char]): TokenValue = l match
                case ll if ll == List('+') => OperatorValue.Plus
                case ll if ll == List('-') => OperatorValue.Minus
                case ll if ll == List('*') => OperatorValue.Times
                case ll if ll == List('/') => OperatorValue.Div
                case ll if ll == List('%') => OperatorValue.Mod
                case ll if ll == List('!') => OperatorValue.Not
                case ll if ll == List('=') => OperatorValue.Equal
                case ll if ll == List('<', '=') => OperatorValue.LessEqual
                case ll if ll == List('&', '&') => OperatorValue.And
                case ll if ll == List('|', '|') => OperatorValue.Or
                case ll if ll == List('+', '+') => OperatorValue.Concat
                case ll => OperatorValue.Broken(ll)
            def toCharacters(t: TokenValue): List[Char] = t match
                case OperatorValue.Plus      => Cons('+', Nil())
                case OperatorValue.Minus     => Cons('-', Nil())
                case OperatorValue.Times     => Cons('*', Nil())
                case OperatorValue.Div       => Cons('/', Nil())
                case OperatorValue.Mod       => Cons('%', Nil())
                case OperatorValue.Not       => Cons('!', Nil())
                case OperatorValue.Equal     => Cons('=', Nil())
                case OperatorValue.LessEqual => Cons('<', Cons('=', Nil()))
                case OperatorValue.And       => Cons('&', Cons('&', Nil()))
                case OperatorValue.Or        => Cons('|', Cons('|', Nil()))
                case OperatorValue.Concat    => Cons('+', Cons('+', Nil()))
                case OperatorValue.Broken(value) => value
                case _ => Nil()
            val injection: Injection[List[Char], TokenValue] = {
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
            def toValue(l: List[Char]): TokenValue = StringLiteralValue(l)
            def toCharacters(t: TokenValue): List[Char] =
                t match
                    case StringLiteralValue(value) => value
                    case _ => Nil()

            val injection: Injection[List[Char], TokenValue] = {
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
            def toValue(l: List[Char]): TokenValue = DelimiterValue(l)
            def toCharacters(t: TokenValue): List[Char] = t match
                case DelimiterValue(value) => value
                case _ => Nil()
            
            val injection: Injection[List[Char], TokenValue] = {
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
            def toValue(l: List[Char]): TokenValue = WhitespaceValue(l)
            def toCharacters(t: TokenValue): List[Char] = 
                t match
                    case WhitespaceValue(value) => value
                    case _ => Nil()
            val injection: Injection[List[Char], TokenValue] = {
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
            def toValue(l: List[Char]): TokenValue = CommentValue(l)
            def toCharacters(t: TokenValue): List[Char] = 
                t match
                    case CommentValue(value) => value
                    case _ => Nil()
            val injection: Injection[List[Char], TokenValue] = {
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
        @extern def identifierRegex(): Regex[Char] = letterRegex ~ (letterRegex | digitRegex | "_".r).*
        val identifierRule =
            Rule(regex = identifierRegex(), tag = "identifier", isSeparator = false, transformation = IdentifierValueInjection.injection)

        // many1(elem(_.isDigit))
        @extern def integerLiteralRegex(): Regex[Char] = digitRegex.+
        val integerLiteralRule =
            Rule(regex = integerLiteralRegex(), tag = "integer_literal", isSeparator = false, transformation = IdentifierValueInjection.injection)

        // elem('"') ~ many(elem(c => c != '"' && c != '\n')) ~ elem('"')
        @extern def stringLiteralRegex(): Regex[Char] = "\"".r ~ (letterRegex | digitRegex | " ".r | "\t".r | specialCharRegex).* ~ "\"".r
        val stringLiteralRule =
            Rule(regex = stringLiteralRegex(), tag = "string_literal", isSeparator = false, transformation = StringLiteralValueInjection.injection)

        // oneOf(".,:;(){}[]=") | word("=>")
        @extern def delimiterRegex(): Regex[Char] = anyOf(".,:;(){}[]=") | "=>".r
        val delimiterRule =
            Rule(regex = delimiterRegex(), tag = "delimiter", isSeparator = false, transformation = DelimiterValueInjection.injection)

        // many1(elem(_.isWhitespace))
        @extern def whiteSpacesRegex(): Regex[Char] = whiteSpaceRegex.+
        val whitespaceRule =
            Rule(regex = whiteSpacesRegex(), tag = "whitespace", isSeparator = true, transformation = WhitespaceValueInjection.injection)

        // word("//") ~ many(elem(_ != '\n'))
        @extern def singleCommentRegex(): Regex[Char] = "//".r ~ (letterRegex | digitRegex | " ".r | "\t".r | specialCharRegex).*
        val singleCommentRule =
            Rule(regex = singleCommentRegex(), tag = "comment", isSeparator = true, transformation = CommentValueInjection.injection)

        // word("/*") ~
        // many(elem(_ != '*') | many1(elem('*')) ~ elem(c => c != '/' && c != '*')) ~
        // many(elem('*')) ~
        // word("*/")
        @extern def multiCommentRegex(): Regex[Char] = "/*".r ~ (letterRegex | digitRegex | " ".r | "\t".r | specialCharRegex | "*".r).* ~ "*/".r
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
        @extern def main(): Unit = {
            // Check validity of the rules
            val rules = AmyLexer.rules
            assert(Lexer.rulesInvariant(rules))
            assert(!rules.isEmpty)

            val inputProgram = 
                    """object Hello
                        Std.printString("Hello world!")
                    end Hello""".toStainless
            val (tokens, suffix) = Lexer.lex(AmyLexer.rules, inputProgram)
            assert(suffix.isEmpty)
            println(f"Tokens: ${tokens.map(t => t.asString()).mkString(", ")}")

            val printable = Lexer.tokensListTwoByTwoPredicate(tokens, AmyLexer.rules, Lexer.separableTokensPredicate)
            println(f"Now we can see that the produced list is printable wrt our criterion: list is printable = $printable")

            // details 
            val twoByTwo = tokens.reverse.tail.reverse.zip(tokens.tail)
            println(f"Tokens two by two: ${twoByTwo.map(t => f"(${t._1.asString()}, ${t._2.asString()})").mkString(", ")}")
            val separable = twoByTwo.map(t => Lexer.separableTokensPredicate(t._1, t._2, AmyLexer.rules))
            println(f"Separable tokens pairs: ${separable.mkString(", ")}")

            // Now let's modify the tokens
            val modifiedTokens = tokens.map(t => t match
                case Token(WhitespaceValue(value), rule, s, o) => Token(WhitespaceValue(" ".toStainless), rule, s, o)
                case _ => t
            )

            println(f"Modified tokens: ${modifiedTokens.map(t => t.asString()).mkString(", ")}")
            println(f"Modified tokens printable: ${Lexer.tokensListTwoByTwoPredicate(modifiedTokens, AmyLexer.rules, Lexer.separableTokensPredicate)}")

            val prettyPrinted = Lexer.print(modifiedTokens)
            println(f"Pretty printed: ${prettyPrinted.mkString("")}")

            val (tokens2, suffix2) = Lexer.lex(AmyLexer.rules, prettyPrinted)
            assert(suffix2.isEmpty)
            assert(tokens2 == modifiedTokens)

            // Now let's modify the tokens in a way that makes them not printable
            val modifiedTokens2 = Cons(Token(Types.KeywordValue.Abstract, AmyLexer.keywordRule, "abstract".toStainless.size, "abstract".toStainless), modifiedTokens)
            println(f"Modified tokens unprintable: ${modifiedTokens2.map(t => t.asString()).mkString(", ")}")

            println(f"Modified tokens unprintable: printable = ${Lexer.tokensListTwoByTwoPredicate(modifiedTokens2, AmyLexer.rules, Lexer.separableTokensPredicate)}")


            // and indeed if we print them and tokenise them again, we don't get the same tokens
            val prettyPrinted2 = Lexer.print(modifiedTokens2)
            println(f"Pretty printed: ${prettyPrinted2.mkString("")}")
            val (tokens3, suffix3) = Lexer.lex(AmyLexer.rules, prettyPrinted2)
            assert(suffix3.isEmpty)
            println(f"Tokens: ${tokens3.map(t => t.asString()).mkString(", ")}")
            assert(tokens3 != modifiedTokens2)
        }

    end DemoPrintableTokens

end ExampleAmyLexer