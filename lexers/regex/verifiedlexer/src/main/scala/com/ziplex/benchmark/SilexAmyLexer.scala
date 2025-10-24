package com.ziplex.benchmark.original
import java.io.File

import silex._

// The lexer for Amy.
object OriginalAmyLexer extends Lexers {

  // Type of characters consumed.
  type Character = Char

  // Type of positions.
  type Position = SourcePosition

  // Type of tokens produced.
  type Token = com.ziplex.benchmark.original.Token

  import Tokens._

  val lexer = Lexer(
    // Keywords,
    word("abstract") | word("case") | word("class") |
    word("def") | word("else") | word("extends") |
    word("if") | word("match") | word("object") |
    word("val") | word("error") | word("_") | word("end")
      |> { (cs, range) => KeywordToken(cs.mkString).setPos(range._1) },

    // Primitive type names,
    word("Int") | word("Unit") | word("Boolean") | word("String")
      |> { (cs, range) => PrimTypeToken(cs.mkString).setPos(range._1) },
    
    
    

    // Boolean literals,
    word("true") |> { (cs, range) => BoolLitToken(true).setPos(range._1) },
    word("false") |> { (cs, range) => BoolLitToken(false).setPos(range._1) },
    
    

    // Operators,
    oneOf("+-/*%!<") |
    word("==") | word("<=") | word("&&") | word("||") | word("++")
      |> { (cs, range) => OperatorToken(cs.mkString).setPos(range._1) },
    
    
    // Identifiers,
    elem(_.isLetter) ~ many(elem(_.isLetterOrDigit) | elem('_'))
      |> { (cs, range) => IdentifierToken(cs.mkString).setPos(range._1) },
    
    
    
    // Integer literal,
    many1(elem(_.isDigit))
      |> { (cs, range) =>
        try {
          IntLitToken(cs.mkString.toInt).setPos(range._1)
        }
        catch {
          case e: NumberFormatException => ErrorToken(cs.mkString).setPos(range._1)
        }
      },
    
    
    // String literal,
    elem('"') ~ many(elem(c => c != '"' && c != '\n')) ~ elem('"')
      |> { (cs, range) => StringLitToken(cs.tail.init.mkString).setPos(range._1) },
    
    
    
    // Delimiters,
    oneOf(".,:;(){}[]=") | word("=>")
      |> { (cs, range) => DelimiterToken(cs.mkString("")).setPos(range._1) },
    

    // Whitespace,
    many1(elem(_.isWhitespace))
      |> SpaceToken(),
    

    // Single line comment,
    word("//") ~ many(elem(_ != '\n'))
      |> { cs => CommentToken(cs.mkString("")) },

    // Multiline comments,
    word("/*") ~
    many(elem(_ != '*') | many1(elem('*')) ~ elem(c => c != '/' && c != '*')) ~
    many(elem('*')) ~
    word("*/")
      |> { cs => CommentToken(cs.mkString("")) },

    // Unclosed multiline comments,
    word("/*") ~
    many(elem(_ != '*') | many1(elem('*')) ~ elem(c => c != '/' && c != '*')) ~
    many(elem('*'))
      |> { (cs, range) => ErrorToken(cs.mkString).setPos(range._1) }

    
  ) onError {
    // We also emit ErrorTokens for Silex-handled errors.
    (cs, range) => ErrorToken(cs.mkString).setPos(range._1)
  } onEnd {
    // Once all the input has been consumed, we emit one EOFToken.
    pos => EOFToken().setPos(pos)
  }

  def run(file: File): List[Token] = {
    val source = Source.fromFile(file.toString, SourcePositioner(file))
    lexer.spawn(source).toList
  }
}




// TOKENS -----------------------------------------------------------------------------------
sealed trait Token extends Positioned with Product {
  override def toString = {
    productPrefix + productIterator.mkString("(", ",", ")") + "(" + position.withoutFile + ")"
  }
}

object Tokens {
  final case class KeywordToken(value: String) extends Token    // e.g. keyword "if"
  final case class IdentifierToken(name: String) extends Token  // e.g. variable name "x" 
  final case class PrimTypeToken(value: String) extends Token   // e.g. primitive type "Int"
  final case class IntLitToken(value: Int) extends Token        // e.g. integer literal "123"
  final case class StringLitToken(value: String) extends Token
  final case class BoolLitToken(value: Boolean) extends Token
  final case class DelimiterToken(value: String) extends Token  // .,:;(){}[]= and =>
  final case class OperatorToken(name: String) extends Token    // e.g. "+"
  final case class CommentToken(text: String) extends Token     // e.g. "// this is a comment"
  final case class SpaceToken() extends Token                   // e.g. "\n  "
  final case class ErrorToken(content: String) extends Token
  final case class EOFToken() extends Token                     // special token at the end of file
}

sealed abstract class TokenKind(representation: String) {
  override def toString: String = representation
}

object TokenKinds {
  final case class KeywordKind(value: String) extends TokenKind(value)
  case object IdentifierKind extends TokenKind("<Identifier>")
  case object PrimTypeKind extends TokenKind("<Primitive Type>")
  case object LiteralKind extends TokenKind("<Literal>")
  final case class DelimiterKind(value: String) extends TokenKind(value)
  final case class OperatorKind(value: String) extends TokenKind(value)
  case object EOFKind extends TokenKind("<EOF>")
  case object NoKind extends TokenKind("<???>")
}



// POSITION UTILS ---------------------------------------------------------------------------------------------------------------------

object Position {
  /** Number of bits used to encode the line number */
  private final val LINE_BITS   = 20
  /** Number of bits used to encode the column number */
  private final val COLUMN_BITS = 31 - LINE_BITS // no negatives => 31
  /** Mask to decode the line number */
  private final val LINE_MASK   = (1 << LINE_BITS) - 1
  /** Mask to decode the column number */
  private final val COLUMN_MASK = (1 << COLUMN_BITS) - 1

  private def lineOf(pos: Int): Int = (pos >> COLUMN_BITS) & LINE_MASK
  private def columnOf(pos: Int): Int = pos & COLUMN_MASK

  def fromFile(f: File, i: Int) = {
    SourcePosition(f, lineOf(i), columnOf(i))
  }
}

abstract class Position {
  val file: File
  val line: Int
  val col: Int

  def isDefined: Boolean
  def withoutFile: String
}

case class SourcePosition(file: File, line: Int, col: Int) extends Position {
  override def toString: String = s"${file.getPath}:$line:$col"
  def withoutFile = s"$line:$col"
  val isDefined = true
}

case object NoPosition extends Position {
  val file = null
  val line = 0
  val col = 0

  override def toString: String = "?:?"
  def withoutFile = toString
  val isDefined = false
}

// A trait for entities which have a position in a file
trait Positioned {

  protected var pos_ : Position = NoPosition

  def hasPosition = pos_ != NoPosition

  def position = pos_

  def setPos(pos: Position): this.type = {
    pos_ = pos
    this
  }

  def setPos(other: Positioned): this.type = {
    setPos(other.position)
  }

}

case class SourcePositioner(file: File) extends Positioner[Char, SourcePosition] {
  override val start: SourcePosition = SourcePosition(file, 1, 1)

  override def increment(position: SourcePosition, character: Char): SourcePosition =
    if (character == '\n') {
      position.copy(line = position.line + 1, col = 1)
    }
    else {
      position.copy(col = position.col + 1)
    }
}

