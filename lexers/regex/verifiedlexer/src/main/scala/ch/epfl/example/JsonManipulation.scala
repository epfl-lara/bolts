package ch.epfl.lexer.example

import stainless.annotation.extern
import stainless.annotation.pure
import stainless.lang.Option
import stainless.lang.Some
import stainless.lang.None
import stainless.lang.decreases
import stainless.lang.ghost as ghostExpr
import stainless.lang.unfold

import stainless.collection.List
import stainless.collection.Cons
import stainless.collection.Nil


import ch.epfl.lexer.{Token, Rule}

import ch.epfl.lexer.Vector

import ch.epfl.lexer.example.ExampleJsonLexer.Types.*
import ch.epfl.lexer.example.ExampleJsonLexer.JsonLexer

import ch.epfl.lexer.MemoisationZipper
import ch.epfl.lexer.VerifiedLexer.PrintableTokens
import ch.epfl.lexer.VerifiedLexer.Lexer
import ch.epfl.lexer.VerifiedLexer.PrintableTokensFromTokens
import ch.epfl.lexer.VerifiedLexer.emptyPrintableTokens
import ch.epfl.lexer.ListUtils
import stainless.collection.ListSpecs
object JsonManipulationExample:

  /**
    * Opens a file and returns its content as a Vector[Char] for lexing
    *
    * @param path
    * @return
    */
  @extern def openFile(path: String): Vector[Char] = Vector(scala.io.Source.fromFile(path).toVector)


  /** Returns the indices of all the open braces in the token list
    *
    * @param ts
    */
  @extern @pure def isOpeningBrace(t: Token[Char], kw: KeywordValue): Boolean = t.value == kw
  def indicesOfOpenBraces(ts: Vector[Token[Char]], size: BigInt, from: BigInt = 0, acc: Vector[BigInt] = Vector.empty[BigInt]): Vector[BigInt] = {
    require(from >= 0 && from <= ts.size)  
    require(ts.size == size)
    require(acc.forall(i => 0 <= i && i < size))
    decreases(ts.size - from)
    if (from >= ts.size) then
      acc
    else 
      val t = ts(from)
      ghostExpr(assert(acc.forall(i => 0 <= i && i < size)))
      if isOpeningBrace(t, KeywordValue.LeftBrace) then
        ghostExpr(assert(acc.forall(i => 0 <= i && i < size)))
        ghostExpr(ListUtils.lemmaConcatPreservesForall(acc.list, List(from), (i: BigInt) => 0 <= i && i < size))
        ghostExpr(assert((acc ++ Vector.fromList(List(from))).forall(i => 0 <= i && i < size)))
        indicesOfOpenBraces(ts, size, from + 1, acc :+ from)
      else
        indicesOfOpenBraces(ts, size, from + 1, acc)
  }.ensuring(res => res.forall(i => 0 <= i && i < size))

  /**
    * Lex the input as a Json content
    * 
    * Then build a PrintableToken instance. If the tokens are not separable, return None
    *
    * @param input
    * @param cacheUp
    * @param cacheDown
    * @return
    */
  def lexAndCheckPrintable(input: Vector[Char])(using cacheUp: MemoisationZipper.CacheUp[Char], cacheDown: MemoisationZipper.CacheDown[Char]): Option[PrintableTokens[Char]] = 
    if JsonLexer.rules.isEmpty || !Lexer.rulesInvariant(JsonLexer.rules) then 
      None()
    else 
      ghostExpr(cacheUp.lemmaInvariant())
      ghostExpr(cacheDown.lemmaInvariant())
      ghostExpr(assert(Lexer.lexThenRulesProduceEachTokenIndividually(JsonLexer.rules, input.list)))
      ghostExpr(assert(!JsonLexer.rules.isEmpty))
      ghostExpr(assert(Lexer.rulesInvariant(JsonLexer.rules)))
      ghostExpr(assert(cacheUp.valid))
      ghostExpr(assert(cacheDown.valid))
      val (tokens, _) = Lexer.lexMem(JsonLexer.rules, input)
      PrintableTokensFromTokens(JsonLexer.rules, tokens)


  def slicesMulti(pt: PrintableTokens[Char], size: BigInt, indices: Vector[BigInt], acc: Vector[PrintableTokens[Char]] = Vector.empty[PrintableTokens[Char]]): Vector[PrintableTokens[Char]] = {
    require(pt.size == size)
    require(indices.forall(i => 0 <= i && i < size))
    decreases(indices.size)
    if indices.size >= 2 then
      val from = indices(0)
      val to = indices(1)
      val slice = if (from <= to) then
        pt.slice(from, to)
      else 
        // Should never happen but we do not prove it
        pt.slice(to, from)
      slicesMulti(pt, size, indices.tail, acc :+ slice)
    else if indices.size == 1 then
      val from = indices(0)
      val to = pt.size
      val slice = pt.slice(from, to)
      slicesMulti(pt, size, indices.tail, acc :+ slice)
    else
      acc
  }

  /**
    * Parses the ID from a JSON object.
    * 
    * ID is defined as the first pair in the object with key "id" and an integer value.
    * 
    * So for example, in the following object:
    * { "name": "example", "id": 42, "other": 100 }
    * the ID is 42.
    * If no such pair exists, returns -1.
    *
    * @param obj
    * @return
    */
  def parseID(obj: PrintableTokens[Char]): Int = {
    def rec(from: BigInt, returnNextInt: Boolean): Int = {
      require(0 <= from && from <= obj.size)
      decreases(obj.size - from)
      if from >= obj.size then -1
      else 
        val t = obj.tokens(from)
        t.value match {
          case StringLiteralValue(s) if s == Vector.fromList(List('i', 'd')) =>
            rec(from + 1, true)
          case IntegerValue(i, _) if returnNextInt =>
            i
          case _ => rec(from + 1, false)
        }
    }
    rec(0, false)
  }

  def sortObjectsByID(objs: Vector[(Int, PrintableTokens[Char])]): Vector[(Int, PrintableTokens[Char])] = {
    decreases(objs.size)
    if objs.size <= 1 then objs
    else 
      val pivot = objs(objs.size / 2)
      val left = objs.filter(t => t._1 < pivot._1)
      val middle = objs.filter(t => t._1 == pivot._1)
      val right = objs.filter(t => t._1 > pivot._1)
      ghostExpr({
        assert(objs.contains(pivot))
        if (left.contains(pivot)){
          ListSpecs.forallContained(left.list, (t: (Int, PrintableTokens[Char])) => t._1 < pivot._1, pivot)
          assert(false)
        }
        assert(!left.contains(pivot))
        if(objs.forall((t: (Int, PrintableTokens[Char])) => t._1 < pivot._1)) {
          ListSpecs.forallContained(objs.list, (t: (Int, PrintableTokens[Char])) => t._1 < pivot._1, pivot)
          assert(false)
        }
        ListUtils.lemmaNotForallFilterShorter(objs.list, (t: (Int, PrintableTokens[Char])) => t._1 < pivot._1)
        assert(left.size < objs.size)
        if (right.contains(pivot)){
          ListSpecs.forallContained(right.list, (t: (Int, PrintableTokens[Char])) => t._1 > pivot._1, pivot)
          assert(false)
        }
        assert(!right.contains(pivot))
        if(objs.forall((t: (Int, PrintableTokens[Char])) => t._1 > pivot._1)) {
          ListSpecs.forallContained(objs.list, (t: (Int, PrintableTokens[Char])) => t._1 > pivot._1, pivot)
          assert(false)
        }
        ListUtils.lemmaNotForallFilterShorter(objs.list, (t: (Int, PrintableTokens[Char])) => t._1 > pivot._1)
        assert(right.size < objs.size)
      })
      sortObjectsByID(left) ++ middle ++ sortObjectsByID(right) 
  }

  def recombineSlices(objs: Vector[PrintableTokens[Char]], acc: PrintableTokens[Char]): Option[PrintableTokens[Char]] = {
    decreases(objs.size)
    if objs.isEmpty then Some(acc)
    else 
      if objs.head.rules != acc.rules then None()
      else
        val newAccOpt = objs.head.append(acc)
        newAccOpt match
          case Some(newAcc) => recombineSlices(objs.tail, newAcc)
          case None() => None()
  }

  def main(path: String)(using cacheUp: MemoisationZipper.CacheUp[Char], cacheDown: MemoisationZipper.CacheDown[Char]): Option[Vector[Char]] = {
    val input: Vector[Char] = openFile(path)

    lexAndCheckPrintable(input) match {
      case Some(printableTokens) if printableTokens.size > 0 => {
        // Now we have a PrintableTokens instance with our tokens, with the invariant that they are separable, as an R-Path
        val tokensSize = printableTokens.size
        val indices = indicesOfOpenBraces(printableTokens.tokens, tokensSize)
        val slices: Vector[PrintableTokens[Char]] = slicesMulti(printableTokens, tokensSize, 0 +: indices)
        // Now we have slices of PrintableTokens, all separable on their own, as provided by the specification of slice

        val slicesWithIds = slices.map(obj => (parseID(obj), obj))
        val orderedSlices = sortObjectsByID(slicesWithIds)
        // Now that we have ordered our objects, we recombine them
        val recombined: Option[PrintableTokens[Char]] = recombineSlices(orderedSlices.map(_._2), emptyPrintableTokens(JsonLexer.rules))
        recombined match
          case Some(newTokens) => {
            // Now we have a new PrintableTokens, which checked only the separable predicate at the boundaries of slices
            val printed = newTokens.print()
            // if we lex then again, we get the same tokens
            // assert(Lexer.lex(newTokens.rules, printed)._1 == printed)
            Some(printed)
          }
          case None() => {
            None()
          }
        
      }
      case _ => {
        // The produced tokens are not separable, or we have no tokens, so we stop
        None()
      }
    }
    
  }







end JsonManipulationExample


