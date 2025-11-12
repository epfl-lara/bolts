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

import com.ziplex.lexer.BalanceConcObj.BalanceConc
import com.ziplex.lexer.BalanceConcObj
import com.ziplex.lexer.semiInverseBodyModEq
import com.ziplex.lexer.semiInverseModEq
import com.ziplex.lexer.equivClassesBody
import com.ziplex.lexer.equivClasses
import com.ziplex.lexer.TokenValueInjection

import scala.annotation.tailrec
// BEGIN uncomment for verification ------------------------------------------
import stainless.lang.StaticChecks._
import stainless.lang.{ghost => ghostExpr, _}
// END uncomment for verification --------------------------------------------
// BEGIN imports for benchmarking -------------------------------------------
// import stainless.lang.{ghost => _, decreases => _, unfold => _, _}
// import com.ziplex.lexer.OptimisedChecks.*
// import Predef.{assert => _, Ensuring => _, require => _, _}

// @tailrec
// def dummyAmyLexerExample(x: BigInt): BigInt = {
//   if (x == BigInt(0)) then x
//   else dummyAmyLexerExample(x - BigInt(1))
// }.ensuring( res => res == BigInt(0))
// END imports for benchmarking ---------------------------------------------

object ExampleAmyLexer:
    object Types:
        case class IntegerValue(value: Int, text: List[Char]) extends TokenValue:
            require(IntegerValueUtils.charsToInt(text) == value)
        end IntegerValue
            
        object IntegerValueUtils:
            extension [A](v: List[A])
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
            @extern def charsToInt(v: List[Char]): Int = v.mkString("").toInt
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
            def toValue(v: BalanceConc[Char]): TokenValue = 
                val list = v.efficientList
                IntegerValue(IntegerValueUtils.charsToInt(list), list)
            def toCharacters(t: TokenValue): BalanceConc[Char] = t match
                    case IntegerValue(_, text) => BalanceConcObj.fromListB(text)
                    case _ => BalanceConcObj.emptyB
            
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
        end IntegerValueInjection

        case object IdentifierValueInjection:
            def toValue(v: BalanceConc[Char]): TokenValue = IdentifierValue(v.efficientList)
            def toCharacters(t: TokenValue): BalanceConc[Char] = t match
                case IdentifierValue(value) => BalanceConcObj.fromListB(value)
                case _ => BalanceConcObj.emptyB
            
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
        end IdentifierValueInjection


        lazy val stringAbstract: List[Char] = List('a', 'b', 's', 't', 'r', 'a', 'c', 't')
        lazy val stringCase: List[Char] = List('c', 'a', 's', 'e')
        lazy val stringClass: List[Char] = List('c', 'l', 'a', 's', 's')
        lazy val stringDef: List[Char] = List('d', 'e', 'f')
        lazy val stringElse: List[Char] = List('e', 'l', 's', 'e')
        lazy val stringExtends: List[Char] = List('e', 'x', 't', 'e', 'n', 'd', 's')
        lazy val stringIf: List[Char] = List('i', 'f')
        lazy val stringMatch: List[Char] = List('m', 'a', 't', 'c', 'h')
        lazy val stringObject: List[Char] = List('o', 'b', 'j', 'e', 'c', 't')
        lazy val stringVal: List[Char] = List('v', 'a', 'l')
        lazy val stringError: List[Char] = List('e','r', 'r', 'o', 'r')
        lazy val stringUnderscore: List[Char] = List('_')
        lazy val stringEnd: List[Char] = List('e', 'n', 'd')

        lazy val stringAbstractConc: BalanceConc[Char] = BalanceConcObj.fromListB(stringAbstract)
        lazy val stringCaseConc: BalanceConc[Char] = BalanceConcObj.fromListB(stringCase)
        lazy val stringClassConc: BalanceConc[Char] = BalanceConcObj.fromListB(stringClass)
        lazy val stringDefConc: BalanceConc[Char] = BalanceConcObj.fromListB(stringDef)
        lazy val stringElseConc: BalanceConc[Char] = BalanceConcObj.fromListB(stringElse)
        lazy val stringExtendsConc: BalanceConc[Char] = BalanceConcObj.fromListB(stringExtends)
        lazy val stringIfConc: BalanceConc[Char] = BalanceConcObj.fromListB(stringIf)
        lazy val stringMatchConc: BalanceConc[Char] = BalanceConcObj.fromListB(stringMatch)
        lazy val stringObjectConc: BalanceConc[Char] = BalanceConcObj.fromListB(stringObject)
        lazy val stringValConc: BalanceConc[Char] = BalanceConcObj.fromListB(stringVal)
        lazy val stringErrorConc: BalanceConc[Char] = BalanceConcObj.fromListB(stringError)
        lazy val stringUnderscoreConc: BalanceConc[Char] = BalanceConcObj.fromListB(stringUnderscore)
        lazy val stringEndConc: BalanceConc[Char] = BalanceConcObj.fromListB(stringEnd)

        // foravv v: BalanceConc[Char], toCharacters(toValue(l)) == l
        case object KeywordValueInjection:
            def toValue(c: BalanceConc[Char]): TokenValue = c.efficientList match
                case l if l == stringAbstract => KeywordValue.Abstract
                case l if l == stringCase => KeywordValue.Case
                case l if l == stringClass => KeywordValue.Class
                case l if l == stringDef => KeywordValue.Def
                case l if l == stringElse => KeywordValue.Else
                case l if l == stringExtends => KeywordValue.Extends
                case l if l == stringIf => KeywordValue.If
                case l if l == stringMatch => KeywordValue.Match
                case l if l == stringObject => KeywordValue.Object
                case l if l == stringVal => KeywordValue.Val
                case l if l == stringError => KeywordValue.Error
                case l if l == stringUnderscore => KeywordValue.Underscore
                case l if l == stringEnd => KeywordValue.End
                case l => KeywordValue.Broken(l)
            def toCharacters(t: TokenValue): BalanceConc[Char] = t match
                case KeywordValue.Abstract          => stringAbstractConc
                case KeywordValue.Case              => stringCaseConc
                case KeywordValue.Class             => stringClassConc
                case KeywordValue.Def               => stringDefConc
                case KeywordValue.Else              => stringElseConc
                case KeywordValue.Extends           => stringExtendsConc
                case KeywordValue.If                => stringIfConc
                case KeywordValue.Match             => stringMatchConc
                case KeywordValue.Object            => stringObjectConc
                case KeywordValue.Val               => stringValConc
                case KeywordValue.Error             => stringErrorConc
                case KeywordValue.Underscore        => stringUnderscoreConc
                case KeywordValue.End               => stringEndConc
                case KeywordValue.Broken(value)     => BalanceConcObj.fromListB(value)
                case _                              => BalanceConcObj.emptyB

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

        lazy val stringInt32: List[Char] =  List('I', 'n', 't', '(', '3', '2', ')')
        lazy val stringUnit: List[Char] =  List('U', 'n', 'i','t')
        lazy val stringBoolean: List[Char] =  List('B', 'o', 'o', 'l', 'e', 'a', 'n')
        lazy val stringString: List[Char] =  List('S', 't', 'r', 'i', 'n', 'g')

        lazy val stringInt32Conc: BalanceConc[Char] =  BalanceConcObj.fromListB(stringInt32)
        lazy val stringUnitConc: BalanceConc[Char] =  BalanceConcObj.fromListB(stringUnit)
        lazy val stringBooleanConc: BalanceConc[Char] =  BalanceConcObj.fromListB(stringBoolean)
        lazy val stringStringConc: BalanceConc[Char] =  BalanceConcObj.fromListB(stringString)

        case object PrimitiveTypeValueInjection:
            def toValue(v: BalanceConc[Char]): TokenValue = v.efficientList match
                case l if l == stringInt32 => PrimitiveTypeValue.Int32
                case l if l == stringUnit => PrimitiveTypeValue.Unit
                case l if l == stringBoolean => PrimitiveTypeValue.Boolean
                case l if l == stringString => PrimitiveTypeValue.String
                case l => PrimitiveTypeValue.Broken(l)
            def toCharacters(t: TokenValue): BalanceConc[Char] = t match
                case PrimitiveTypeValue.Int32         => stringInt32Conc
                case PrimitiveTypeValue.Unit          => stringUnitConc
                case PrimitiveTypeValue.Boolean       => stringBooleanConc
                case PrimitiveTypeValue.String        => stringStringConc
                case PrimitiveTypeValue.Broken(value) => BalanceConcObj.fromListB(value)
                case _                                => BalanceConcObj.emptyB

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
        end PrimitiveTypeValueInjection

        lazy val stringTrue: List[Char] = List('t', 'r', 'u', 'e')    
        lazy val stringFalse: List[Char] = List('f', 'a', 'l', 's', 'e')
        lazy val stringTrueConc: BalanceConc[Char] = BalanceConcObj.fromListB(stringTrue)
        lazy val stringFalseConc: BalanceConc[Char] = BalanceConcObj.fromListB(stringFalse)
        case object BooleanLiteralValueInjection:
            def toValue(v: BalanceConc[Char]): TokenValue = v.efficientList match
                case l if l == stringTrue => BooleanLiteralValue.True
                case l if l == stringFalse => BooleanLiteralValue.False
                case l => BooleanLiteralValue.Broken(l)
            def toCharacters(t: TokenValue): BalanceConc[Char] = t match
                case BooleanLiteralValue.True          => stringTrueConc
                case BooleanLiteralValue.False         => stringFalseConc
                case BooleanLiteralValue.Broken(value) => BalanceConcObj.fromListB(value)
                case _                                 => BalanceConcObj.emptyB
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
        end BooleanLiteralValueInjection

        lazy val stringPlus: List[Char] = List('+')
        lazy val stringMinus: List[Char] = List('-')
        lazy val stringTimes: List[Char] = List('*')
        lazy val stringDiv: List[Char] = List('/')
        lazy val stringMod: List[Char] = List('%')
        lazy val stringNot: List[Char] = List('!')
        lazy val stringEqual: List[Char] = List('=')
        lazy val stringLessEqual: List[Char] = List('<', '=')
        lazy val stringAnd: List[Char] = List('&', '&')
        lazy val stringOr: List[Char] = List('|', '|')
        lazy val stringConcat: List[Char] = List('+', '+')

        lazy val stringPlusConc: BalanceConc[Char]          = BalanceConcObj.fromListB(stringPlus)
        lazy val stringMinusConc: BalanceConc[Char]         = BalanceConcObj.fromListB(stringMinus)
        lazy val stringTimesConc: BalanceConc[Char]         = BalanceConcObj.fromListB(stringTimes)
        lazy val stringDivConc: BalanceConc[Char]           = BalanceConcObj.fromListB(stringDiv)
        lazy val stringModConc: BalanceConc[Char]           = BalanceConcObj.fromListB(stringMod)
        lazy val stringNotConc: BalanceConc[Char]           = BalanceConcObj.fromListB(stringNot)
        lazy val stringEqualConc: BalanceConc[Char]         = BalanceConcObj.fromListB(stringEqual)
        lazy val stringLessEqualConc: BalanceConc[Char]     = BalanceConcObj.fromListB(stringLessEqual)
        lazy val stringAndConc: BalanceConc[Char]           = BalanceConcObj.fromListB(stringAnd)
        lazy val stringOrConc: BalanceConc[Char]            = BalanceConcObj.fromListB(stringOr)
        lazy val stringConcatConc: BalanceConc[Char]        = BalanceConcObj.fromListB(stringConcat)


        case object OperatorValueInjection:
            def toValue(v: BalanceConc[Char]): TokenValue = v.efficientList match
                case l if l == stringPlus => OperatorValue.Plus
                case l if l == stringMinus => OperatorValue.Minus
                case l if l == stringTimes => OperatorValue.Times
                case l if l == stringDiv => OperatorValue.Div
                case l if l == stringMod => OperatorValue.Mod
                case l if l == stringNot => OperatorValue.Not
                case l if l == stringEqual => OperatorValue.Equal
                case l if l == stringLessEqual => OperatorValue.LessEqual
                case l if l == stringAnd => OperatorValue.And
                case l if l == stringOr => OperatorValue.Or
                case l if l == stringConcat => OperatorValue.Concat
                case l                                          => OperatorValue.Broken(l)
            def toCharacters(t: TokenValue): BalanceConc[Char] = t match
                case OperatorValue.Plus          => stringPlusConc
                case OperatorValue.Minus         => stringMinusConc
                case OperatorValue.Times         => stringTimesConc
                case OperatorValue.Div           => stringDivConc
                case OperatorValue.Mod           => stringModConc
                case OperatorValue.Not           => stringNotConc
                case OperatorValue.Equal         => stringEqualConc
                case OperatorValue.LessEqual     => stringLessEqualConc
                case OperatorValue.And           => stringAndConc
                case OperatorValue.Or            => stringOrConc
                case OperatorValue.Concat        => stringConcatConc
                case OperatorValue.Broken(value) => BalanceConcObj.fromListB(value)
                case _                           => BalanceConcObj.emptyB
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
        end OperatorValueInjection

        case object StringLiteralValueInjection:
            def toValue(v: BalanceConc[Char]): TokenValue = StringLiteralValue(v.efficientList)
            def toCharacters(t: TokenValue): BalanceConc[Char] =
                t match
                    case StringLiteralValue(value) => BalanceConcObj.fromListB(value)
                    case _ => BalanceConcObj.emptyB

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

        case object DelimiterValueInjection:
            def toValue(v: BalanceConc[Char]): TokenValue = DelimiterValue(v.efficientList)
            def toCharacters(t: TokenValue): BalanceConc[Char] = t match
                case DelimiterValue(value) => BalanceConcObj.fromListB(value)
                case _ => BalanceConcObj.emptyB
            
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
        end DelimiterValueInjection

        case object WhitespaceValueInjection:
            def toValue(v: BalanceConc[Char]): TokenValue = WhitespaceValue(v.efficientList)
            def toCharacters(t: TokenValue): BalanceConc[Char] = 
                t match
                    case WhitespaceValue(value) => BalanceConcObj.fromListB(value)
                    case _ => BalanceConcObj.emptyB
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

        case object CommentValueInjection:
            def toValue(v: BalanceConc[Char]): TokenValue = CommentValue(v.efficientList)
            def toCharacters(t: TokenValue): BalanceConc[Char] = 
                t match
                    case CommentValue(value) => BalanceConcObj.fromListB(value)
                    case _ => BalanceConcObj.emptyB
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
        import com.ziplex.lexer.example.RegexUtils.*
        import Types.*
        @extern def main(): Unit = {
            // Check validity of the rules
            val rules = AmyLexer.rules
            assert(Lexer.rulesInvariant(rules))
            assert(!rules.isEmpty)

            val inputProgram: BalanceConc[Char] = 
                    """object Hello
                        Std.printString("Hello world!")
                    end Hello""".toStainless
            val (tokens, suffix) = Lexer.lex(AmyLexer.rules, inputProgram)
            assert(suffix.isEmpty)
            println(f"Tokens: ${tokens.map(t => t.asString()).efficientList.mkString(", ")}")

            val printable = Lexer.separableTokens(tokens, AmyLexer.rules)
            println(f"Now we can see that the produced list is printable wrt our criterion: list is printable = $printable")

            // details 
            val twoByTwo = tokens.efficientList.reverse.tail.reverse.zip(tokens.tail.efficientList)
            println(f"Tokens two by two: ${twoByTwo.map(t => f"(${t._1.asString()}, ${t._2.asString()})").mkString(", ")}")
            val separable = twoByTwo.map(t => Lexer.separableTokensPredicate(t._1, t._2, AmyLexer.rules))
            println(f"Separable tokens pairs: ${separable.mkString(", ")}")

            // Now let's modify the tokens
            val modifiedTokens = tokens.map(t => t match
                case Token(WhitespaceValue(value), rule, s, o) => Token(WhitespaceValue(List(' ')), rule, s, o)
                case _ => t
            )

            println(f"Modified tokens: ${modifiedTokens.map(t => t.asString()).efficientList.mkString(", ")}")
            println(f"Modified tokens printable: ${Lexer.separableTokens(modifiedTokens, AmyLexer.rules)}")

            val prettyPrinted = Lexer.print(modifiedTokens)
            println(f"Pretty printed: ${prettyPrinted.efficientList.mkString("")}")

            val (tokens2, suffix2) = Lexer.lex(AmyLexer.rules, prettyPrinted)
            assert(suffix2.isEmpty)
            assert(tokens2 == modifiedTokens)

            // Now let's modify the tokens in a way that makes them not printable
            val modifiedTokens2 = modifiedTokens.prepend(Token(Types.KeywordValue.Abstract, AmyLexer.keywordRule, "abstract".toStainlessList.size, "abstract".toStainlessList))
            println(f"Modified tokens unprintable: ${modifiedTokens2.map(t => t.asString()).efficientList.mkString(", ")}")

            println(f"Modified tokens unprintable: printable = ${Lexer.separableTokens(modifiedTokens2, AmyLexer.rules)}")


            // and indeed if we print them and tokenise them again, we don't get the same tokens
            val prettyPrinted2: BalanceConc[Char] = Lexer.print(modifiedTokens2)
            println(f"Pretty printed: ${prettyPrinted2.efficientList.mkString("")}")
            val (tokens3: BalanceConc[Token[Char]], suffix3: BalanceConc[Char]) = Lexer.lex(AmyLexer.rules, prettyPrinted2)
            assert(suffix3.isEmpty)
            println(f"Tokens: ${tokens3.map(t => t.asString()).efficientList.mkString(", ")}")
            assert(tokens3 != modifiedTokens2)
        }

    end DemoPrintableTokens

end ExampleAmyLexer