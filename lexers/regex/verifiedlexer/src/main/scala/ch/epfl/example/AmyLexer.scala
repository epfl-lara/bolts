package ch.epf.lexer.example

import ch.epfl.lexer.VerifiedLexer.Lexer
import ch.epfl.lexer.LexerInterface
import ch.epfl.lexer.Rule
import ch.epfl.lexer.Token
import ch.epfl.lexer.VerifiedRegex.*

import stainless.collection.List
import stainless.collection.Cons
import stainless.collection.Nil

import ch.epfl.lexer.benchmark.RegexUtils.*
import ch.epfl.lexer.benchmark.RegexUtils.digitRegex

case object AmyLexer:
    val keywordRule = 
        Rule(
            regex = 
            "abstract".r |
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
            "end".r,
            tag = "keyword",
            isSeparator = false)
    

    val primitivTypeRule = 
        Rule(
            regex = "Int".r |
            "Unit".r |
            "Boolean".r |
            "String".r,
            tag = "primitive_type",
            isSeparator = false)

    val booleanLiteralRule = 
        Rule(
            regex = "true".r | "false".r,
            tag = "boolean_literal",
            isSeparator = false)
    
    // oneOf("+-/*%!<") | word("==") | word("<=") | word("&&") | word("||") | word("++")
    val operatorRule = 
        Rule(
            regex = anyOf("+-/*%!<") | "==".r | "<=".r | "&&".r | "||".r | "++".r,
            tag = "operator",
            isSeparator = false)
    
    // elem(_.isLetter) ~ many(elem(_.isLetterOrDigit) | elem('_'))
    val identifierRule = 
        Rule(
            regex = letterRegex ~ (letterRegex | digitRegex | "_".r).*,
            tag = "identifier",
            isSeparator = false)

