package ch.epfl.lexer.example

import ch.epfl.lexer.VerifiedLexer.Lexer
import ch.epfl.lexer.LexerInterface
import ch.epfl.lexer.Rule
import ch.epfl.lexer.Token
import ch.epfl.lexer.VerifiedRegex.*

import stainless.collection.List
import stainless.collection.Cons
import stainless.collection.Nil

import stainless.annotation.extern

import ch.epfl.lexer.benchmark.RegexUtils.*
import ch.epfl.lexer.benchmark.RegexUtils.digitRegex
import ch.epfl.lexer.TokenValue
import stainless.lang.Quantifiers.*

import stainless.lang.{ghost => ghostExpr}
import stainless.lang.unfold

import stainless.lang.Exception

object ExampleAmyLexer:
    object Types:
        case class IntegerValue(value: Int, text: List[Char]) extends TokenValue:
            require(IntegerValueUtils.charsToInt(text) == value)
        end IntegerValue
            
        object IntegerValueUtils:
            extension [A](l: stainless.collection.List[A])
                @extern def mkString(inter: String): String = l match {
                    case stainless.collection.Nil()      => ""
                    case stainless.collection.Cons(h, t) => h.toString + (if t.isEmpty then "" else inter + t.mkString(inter))
                }
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
        end KeywordValue
        enum PrimitiveTypeValue extends TokenValue:
            case Int32
            case Unit
            case Boolean
            case String
        end PrimitiveTypeValue
        enum BooleanLiteralValue extends TokenValue:
            case True
            case False
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
        end OperatorValue
        case class StringLiteralValue(value: List[Char]) extends TokenValue
        case class DelimiterValue(value: List[Char]) extends TokenValue
        case class WhitespaceValue(value: List[Char]) extends TokenValue
        case class CommentValue(value: List[Char]) extends TokenValue

        case object IntegerValueBijection:

            def toValue(l: List[Char]): TokenValue = IntegerValue(IntegerValueUtils.charsToInt(l), l)
            def toCharacters(t: TokenValue): List[Char] = t match
                case IntegerValue(_, text) => text
                case _ => Nil()
            
            val bijection: Bijection[List[Char], TokenValue] = {
                ghostExpr{
                    assert(Forall((v: TokenValue) => toValue(toCharacters(v)) == v) == partialInverseBody(toValue, toCharacters))
                    assert({
                        unfold(partialInverseBody(toValue, toCharacters))
                        partialInverseBody(toValue, toCharacters)
                    })

                    assert(Forall((v: List[Char]) => toCharacters(toValue(v)) == v) == partialInverseBody(toCharacters, toValue))
                    assert({
                        unfold(partialInverseBody(toCharacters, toValue))
                        partialInverseBody(toCharacters, toValue)
                    })
                    unfold(partialInverse(toValue, toCharacters))
                    unfold(partialInverse(toCharacters, toValue))
                    }
                Bijection(toValue, toCharacters)
            }
        end IntegerValueBijection

    //     case object IdentifierValueBijection extends Bijection[Char]:
    //         def toValue(l: List[Char]): TokenValue = IdentifierValue(l)
    //         def toCharacters(t: TokenValue): List[Char] = t match
    //             case IdentifierValue(value) => value
    //     end IdentifierValueBijection

    //     case object KeywordValueBijection extends Bijection[Char]:
    //         override def toValue(l: List[Char]): TokenValue = l match
    //             case ll if ll == List('a', 'b', 's', 't', 'r', 'a', 'c', 't') => KeywordValue.Abstract
    //             case ll if ll == List('c', 'a', 's', 'e')                                            => KeywordValue.Case
    //             case ll if ll == List('c', 'l', 'a', 's', 's')                                  => KeywordValue.Class
    //             case ll if ll == List('d', 'e', 'f')                                                       => KeywordValue.Def
    //             case ll if ll == List('e', 'l', 's', 'e')                                             => KeywordValue.Else
    //             case ll if ll == List('e', 'x', 't', 'e', 'n', 'd', 's')            => KeywordValue.Extends
    //             case ll if ll == List('i', 'f')                                                                => KeywordValue.If
    //             case ll if ll == List('m', 'a', 't', 'c', 'h')                                  => KeywordValue.Match
    //             case ll if ll == List('o', 'b', 'j', 'e', 'c', 't')                      => KeywordValue.Object
    //             case ll if ll == List('v', 'a', 'l')                                                      => KeywordValue.Val
    //             case ll if ll == List('e','r', 'r', 'o', 'r')                              => KeywordValue.Error
    //             case ll if ll == List('_')                                                                            => KeywordValue.Underscore
    //             case ll if ll == List('e', 'n', 'd')                                                        => KeywordValue.End
    //             case _                                                                                             => throw Exception("Invalid keyword")
    //         override def toCharacters(t: TokenValue): List[Char] = t match
    //             case KeywordValue.Abstract          => Cons('a', Cons('b', Cons('s', Cons('t', Cons('r', Cons('a', Cons('c', Cons('t', Nil()))))))))
    //             case KeywordValue.Case              => Cons('c', Cons('a', Cons('s', Cons('e', Nil()))))
    //             case KeywordValue.Class             => Cons('c', Cons('l', Cons('a', Cons('s', Cons('s', Nil())))))
    //             case KeywordValue.Def               => Cons('d', Cons('e', Cons('f', Nil())))
    //             case KeywordValue.Else              => Cons('e', Cons('l', Cons('s', Cons('e', Nil()))))
    //             case KeywordValue.Extends           => Cons('e', Cons('x', Cons('t', Cons('e', Cons('n', Cons('d', Cons('s', Nil())))))))
    //             case KeywordValue.If                => Cons('i', Cons('f', Nil()))
    //             case KeywordValue.Match             => Cons('m', Cons('a', Cons('t', Cons('c', Cons('h', Nil())))))
    //             case KeywordValue.Object            => Cons('o', Cons('b', Cons('j', Cons('e', Cons('c', Cons('t', Nil()))))))
    //             case KeywordValue.Val               => Cons('v', Cons('a', Cons('l', Nil())))
    //             case KeywordValue.Error             => Cons('e', Cons('r', Cons('r', Cons('o', Cons('r', Nil())))))
    //             case KeywordValue.Underscore        => Cons('_', Nil())
    //             case KeywordValue.End               => Cons('e', Cons('n', Cons('d', Nil())))
    //     end KeywordValueBijection

    //     case object PrimitiveTypeValueBijection extends Bijection[Char]:
    //         def toValue(l: List[Char]): TokenValue = l match
    //             case ll if ll == List('I', 'n', 't', '3', '2') => PrimitiveTypeValue.Int32
    //             case ll if ll == List('U', 'n', 'i','t')            => PrimitiveTypeValue.Unit
    //             case ll if ll == List('B', 'o', 'o', 'l', 'e', 'a', 'n') => PrimitiveTypeValue.Boolean
    //             case ll if ll == List('S', 't', 'r', 'i', 'n', 'g') => PrimitiveTypeValue.String
    //             case _ => throw  Exception("Invalid primitive type")
    //         def toCharacters(t: TokenValue): List[Char] = t match
    //             case PrimitiveTypeValue.Int32   => List('I', 'n', 't', '3', '2')
    //             case PrimitiveTypeValue.Unit    => List('U', 'n', 'i','t')
    //             case PrimitiveTypeValue.Boolean => List('B', 'o', 'o', 'l', 'e', 'a', 'n')
    //             case PrimitiveTypeValue.String  => List('S', 't', 'r', 'i', 'n', 'g')
    //     end PrimitiveTypeValueBijection

    //     case object BooleanLiteralValueBijection extends Bijection[Char]:
    //         def toValue(l: List[Char]): TokenValue = l match
    //             case ll if ll == List('t', 'r', 'u', 'e') => BooleanLiteralValue.True
    //             case ll if ll == List('f', 'a', 'l', 's', 'e') => BooleanLiteralValue.False
    //             case _ => throw  Exception("Invalid boolean literal")
    //         def toCharacters(t: TokenValue): List[Char] = t match
    //             case BooleanLiteralValue.True  => Cons('t', Cons('r', Cons('u', Cons('e', Nil()))))
    //             case BooleanLiteralValue.False => Cons('f', Cons('a', Cons('l', Cons('s', Cons('e', Nil())))))
    //     end BooleanLiteralValueBijection

    //     case object OperatorValueBijection extends Bijection[Char]:
    //         def toValue(l: List[Char]): TokenValue = l match
    //             case ll if ll == List('+') => OperatorValue.Plus
    //             case ll if ll == List('-') => OperatorValue.Minus
    //             case ll if ll == List('*') => OperatorValue.Times
    //             case ll if ll == List('/') => OperatorValue.Div
    //             case ll if ll == List('%') => OperatorValue.Mod
    //             case ll if ll == List('!') => OperatorValue.Not
    //             case ll if ll == List('=') => OperatorValue.Equal
    //             case ll if ll == List('<', '=') => OperatorValue.LessEqual
    //             case ll if ll == List('&', '&') => OperatorValue.And
    //             case ll if ll == List('|', '|') => OperatorValue.Or
    //             case ll if ll == List('+', '+') => OperatorValue.Concat
    //             case _ => throw  Exception("Invalid operator")
    //         def toCharacters(t: TokenValue): List[Char] = t match
    //             case OperatorValue.Plus      => Cons('+', Nil())
    //             case OperatorValue.Minus     => Cons('-', Nil())
    //             case OperatorValue.Times     => Cons('*', Nil())
    //             case OperatorValue.Div       => Cons('/', Nil())
    //             case OperatorValue.Mod       => Cons('%', Nil())
    //             case OperatorValue.Not       => Cons('!', Nil())
    //             case OperatorValue.Equal     => Cons('=', Nil())
    //             case OperatorValue.LessEqual => Cons('<', Cons('=', Nil()))
    //             case OperatorValue.And       => Cons('&', Cons('&', Nil()))
    //             case OperatorValue.Or        => Cons('|', Cons('|', Nil()))
    //             case OperatorValue.Concat    => Cons('+', Cons('+', Nil()))
    //     end OperatorValueBijection

    //     case object StringLiteralValueBijection extends Bijection[Char]:
    //         override def toValue(l: List[Char]): TokenValue = StringLiteralValue(l)
    //         override def toCharacters(t: TokenValue): List[Char] =
    //             t match
    //                 case StringLiteralValue(value) => value
    //     end StringLiteralValueBijection

    //     case object DelimiterValueBijection extends Bijection[Char]:
    //         override def toValue(l: List[Char]): TokenValue = DelimiterValue(l)
    //         override def toCharacters(t: TokenValue): List[Char] = t match
    //             case DelimiterValue(value) => value
    //     end DelimiterValueBijection

    //     case object WhitespaceValueBijection extends Bijection[Char]:
    //         override def toValue(l: List[Char]): TokenValue = WhitespaceValue(l)
    //         override def toCharacters(t: TokenValue): List[Char] = 
    //             t match
    //                 case WhitespaceValue(value) => value
    //     end WhitespaceValueBijection

    //     case object CommentValueBijection extends Bijection[Char]:
    //         override def toValue(l: List[Char]): TokenValue = CommentValue(l)
    //         override def toCharacters(t: TokenValue): List[Char] = 
    //             t match
    //                 case CommentValue(value) => value
    //     end CommentValueBijection
    // end Types

    // @extern
    // case object AmyLexer:
    //     import Types.*
    //     val keywordRule =
    //         Rule(
    //         regex = "abstract".r |
    //             "case".r |
    //             "class".r |
    //             "def".r |
    //             "else".r |
    //             "extends".r |
    //             "if".r |
    //             "match".r |
    //             "object".r |
    //             "val".r |
    //             "error".r |
    //             "_".r |
    //             "end".r,
    //         tag = "keyword",
    //         isSeparator = false,
    //         transformation = KeywordValueBijection
    //         )

    //     val primitivTypeRule =
    //         Rule(
    //         regex = "Int(32)".r |
    //             "Unit".r |
    //             "Boolean".r |
    //             "String".r,
    //         tag = "primitive_type",
    //         isSeparator = false,
    //         transformation = PrimitiveTypeValueBijection
    //         )

    //     val booleanLiteralRule =
    //         Rule(regex = "true".r | "false".r, tag = "boolean_literal", isSeparator = false, transformation = BooleanLiteralValueBijection)

    //     // oneOf("+-/*%!<") | word("==") | word("<=") | word("&&") | word("||") | word("++")
    //     val operatorRule =
    //         Rule(regex = anyOf("+-/*%!<") | "==".r | "<=".r | "&&".r | "||".r | "++".r, tag = "operator", isSeparator = false, transformation = OperatorValueBijection)

    //     // elem(_.isLetter) ~ many(elem(_.isLetterOrDigit) | elem('_'))
    //     val identifierRule =
    //         Rule(regex = letterRegex ~ (letterRegex | digitRegex | "_".r).*, tag = "identifier", isSeparator = false, transformation = IdentifierValueBijection)

    //     // many1(elem(_.isDigit))
    //     val integerLiteralRule =
    //         Rule(regex = digitRegex.+, tag = "integer_literal", isSeparator = false, transformation = IntegerValueBijection)

    //     // elem('"') ~ many(elem(c => c != '"' && c != '\n')) ~ elem('"')
    //     val stringLiteralRule =
    //         Rule(regex = "\"".r ~ (letterRegex | digitRegex | " ".r | "\t".r | specialCharRegex).* ~ "\"".r, tag = "string_literal", isSeparator = false, transformation = StringLiteralValueBijection)

    //     // oneOf(".,:;(){}[]=") | word("=>")
    //     val delimiterRule =
    //         Rule(regex = anyOf(".,:;(){}[]=") | "=>".r, tag = "delimiter", isSeparator = false, transformation = DelimiterValueBijection)

    //     // many1(elem(_.isWhitespace))
    //     val whitespaceRule =
    //         Rule(regex = whiteSpaceRegex.+, tag = "whitespace", isSeparator = true, transformation = WhitespaceValueBijection)

    //     // word("//") ~ many(elem(_ != '\n'))
    //     val singleCommentRule =
    //         Rule(regex = "//".r ~ (letterRegex | digitRegex | " ".r | "\t".r | specialCharRegex).*, tag = "comment", isSeparator = true, transformation = CommentValueBijection)

    //     // word("/*") ~
    //     // many(elem(_ != '*') | many1(elem('*')) ~ elem(c => c != '/' && c != '*')) ~
    //     // many(elem('*')) ~
    //     // word("*/")
    //     val multiCommentRule =
    //         Rule(
    //         regex = "/*".r ~
    //             (letterRegex | digitRegex | " ".r | "\t".r | specialCharRegex | "*".r).* ~ "*/".r,
    //         tag = "comment",
    //         isSeparator = true,
    //         transformation = CommentValueBijection
    //         )

    //     val rules = List(
    //         keywordRule,
    //         primitivTypeRule,
    //         booleanLiteralRule,
    //         operatorRule,
    //         identifierRule,
    //         integerLiteralRule,
    //         stringLiteralRule,
    //         delimiterRule,
    //         whitespaceRule,
    //         singleCommentRule,
    //         multiCommentRule
    //     )
    // end AmyLexer

end ExampleAmyLexer