package com.ziplex.benchmark.silex
import java.io.File

import silex._

// The lexer for Amy.
object SilexAAStarBLexer extends Lexers {

  // Type of characters consumed.
  type Character = Char

  // Type of positions.
  type Position = SourcePosition

  // Type of tokens produced.
  type Token = com.ziplex.benchmark.silex.Token

  import Tokens._

  val lexer = Lexer(
    // A,
    elem('a')
      |> { (cs, range) => A(cs.mkString).setPos(range._1) },

    // AsB,
    many(elem('a')) ~ elem('b')
      |> { (cs, range) => AsB(cs.mkString).setPos(range._1) }
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
  final case class A(value: String) extends Token 
  final case class AsB(value: String) extends Token 
  final case class ErrorToken(content: String) extends Token
  final case class EOFToken() extends Token                     // special token at the end of file
}

sealed abstract class TokenKind(representation: String) {
  override def toString: String = representation
}

object TokenKinds {
  final case class KeywordKind(value: String) extends TokenKind(value)
  case object AKind extends TokenKind("<A>")
  case object AsBKind extends TokenKind("<AsB>")
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

