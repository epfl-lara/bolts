package ch.epfl.lexer.example

import stainless.annotation.extern
import ch.epfl.lexer.{Token, Rule}

import ch.epfl.lexer.Vector

import ch.epfl.lexer.example.ExampleJsonLexer.Types.*
import ch.epfl.lexer.example.ExampleJsonLexer.JsonLexer

import ch.epfl.lexer.MemoisationZipper
import ch.epfl.lexer.example.ExampleUtils.ContextCharHashable
import ch.epfl.lexer.example.ExampleUtils.RegexContextCharHashable
import ch.epfl.lexer.VerifiedLexer.PrintableTokens

object JsonManipulationExample:

  val cacheUp = MemoisationZipper.emptyUp(ContextCharHashable)
  val cacheDown = MemoisationZipper.emptyDown(RegexContextCharHashable)

  /**
    * Opens a file and returns its content as a Vector[Char] for lexing
    *
    * @param path
    * @return
    */
  @extern def openFile(path: String): Vector[Char] = Vector(scala.io.Source.fromFile(path).toVector)


  /** Returns the indices of all the open braces in the token list
    *
    * Marked as extern because we don't want to prove it here, but we just need the indices to be valid
    * @param ts
    */
  @extern def indicesOfOpenBraces(ts: Vector[Token[Char]]): Vector[BigInt] = {
    def rec(from: BigInt, acc: Vector[BigInt]): Vector[BigInt] = 
      if (from >= ts.size) then
        acc
      else 
        val t = ts(from)
        if t.value == KeywordValue.LeftBrace then
          rec(from + 1, acc :+ from)
        else
          rec(from + 1, acc)
    
    rec(0, Vector.empty[BigInt])
  }.ensuring(res => res.forall(i => 0 <= i && i < ts.size))

  def lexAndCheckPrintable(input: Vector[Char]): Option[PrintableTokens[Char]] = 
    val (tokens, _) = JsonLexer.lex(input, cacheUp, cacheDown)
    val printableTokens = tokens.filter(t => t.value.isInstanceOf[KeywordValue] || t.value.isInstanceOf[StringValue])
    PrintableTokens
  end lexAndCheckPrintable




end JsonManipulationExample


