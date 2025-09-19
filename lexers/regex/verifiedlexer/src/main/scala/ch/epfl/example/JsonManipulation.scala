package ch.epfl.lexer.example

import stainless.annotation.extern
import stainless.annotation.induct
import stainless.annotation.pure
import stainless.lang.Option
import stainless.lang.Some
import stainless.lang.None
import stainless.lang.decreases
import stainless.lang.ghost as ghostExpr
import stainless.lang.unfold
import stainless.proof.check

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
import scala.caps.use
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
      // ghostExpr(assert(acc.forall(i => 0 <= i && i < size)))
      if isOpeningBrace(t, KeywordValue.LeftBrace) then
        ghostExpr({
          assert(acc.forall(i => 0 <= i && i < size))
          ListUtils.lemmaConcatPreservesForall(acc.list, List(from), (i: BigInt) => 0 <= i && i < size)
          assert((acc ++ Vector.fromList(List(from))).forall(i => 0 <= i && i < size))
        })
        indicesOfOpenBraces(ts, size, from + 1, acc :+ from)
      else
        indicesOfOpenBraces(ts, size, from + 1, acc)
  }.ensuring(res => res.forall(i => 0 <= i && i < size))


  def usesJsonRules(pt: PrintableTokens[Char]): Boolean = pt.rules == JsonLexer.rules

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
  def lexAndCheckPrintable(input: Vector[Char])(using cacheUp: MemoisationZipper.CacheUp[Char], cacheDown: MemoisationZipper.CacheDown[Char]): Option[PrintableTokens[Char]] = {
    if JsonLexer.rules.isEmpty || !Lexer.rulesInvariant(JsonLexer.rules) then 
      None()
    else 
      ghostExpr({
        cacheUp.lemmaInvariant()
        cacheDown.lemmaInvariant()
        assert(Lexer.lexThenRulesProduceEachTokenIndividually(JsonLexer.rules, input.list))
        assert(!JsonLexer.rules.isEmpty)
        assert(Lexer.rulesInvariant(JsonLexer.rules))
        assert(cacheUp.valid)
        assert(cacheDown.valid)
      })
      val (tokens, _) = Lexer.lexMem(JsonLexer.rules, input)
      PrintableTokensFromTokens(JsonLexer.rules, tokens)
  }.ensuring(res => res.isEmpty || usesJsonRules(res.get))


  def slicesMulti(pt: PrintableTokens[Char], size: BigInt, indices: Vector[BigInt], acc: Vector[PrintableTokens[Char]] = Vector.empty[PrintableTokens[Char]]): Vector[PrintableTokens[Char]] = {
    require(pt.size == size)
    require(indices.forall(i => 0 <= i && i < size))
    require(usesJsonRules(pt))
    require(acc.forall(usesJsonRules))
    decreases(indices.size)
    if indices.size >= 2 then
      val from = indices(0)
      val to = indices(1)
      val slice = if (from <= to) then
        pt.slice(from, to)
      else 
        // Should never happen but we do not prove it
        pt.slice(to, from)
      ghostExpr({
        assert(usesJsonRules(slice))
        ListUtils.lemmaConcatPreservesForall(acc.list, List(slice), usesJsonRules)
        assert((acc :+ slice).forall(usesJsonRules))
      })
      slicesMulti(pt, size, indices.tail, acc :+ slice)
    else if indices.size == 1 then
      val from = indices(0)
      val to = pt.size
      val slice = pt.slice(from, to)
      ghostExpr({
        assert(usesJsonRules(slice))
        ListUtils.lemmaConcatPreservesForall(acc.list, List(slice), usesJsonRules)
        assert((acc :+ slice).forall(usesJsonRules))
      })
      slicesMulti(pt, size, indices.tail, acc :+ slice)
    else
      acc
  }.ensuring(res => res.forall(usesJsonRules))

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
    require(objs.forall(t => usesJsonRules(t._2)))
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

        ListSpecs.filterSubseq(objs.list, (t: (Int, PrintableTokens[Char])) => t._1 < pivot._1)
        ListSpecs.filterSubseq(objs.list, (t: (Int, PrintableTokens[Char])) => t._1 == pivot._1)
        ListSpecs.filterSubseq(objs.list, (t: (Int, PrintableTokens[Char])) => t._1 > pivot._1)
        ListUtils.lemmaForallSubseq(objs.filter(t => t._1 < pivot._1).list, objs.list, (t: (Int, PrintableTokens[Char])) => usesJsonRules(t._2))
        ListUtils.lemmaForallSubseq(objs.filter(t => t._1 == pivot._1).list, objs.list, (t: (Int, PrintableTokens[Char])) => usesJsonRules(t._2))
        ListUtils.lemmaForallSubseq(objs.filter(t => t._1 > pivot._1).list, objs.list, (t: (Int, PrintableTokens[Char])) => usesJsonRules(t._2))
        ListUtils.lemmaConcatPreservesForall(sortObjectsByID(left).list, middle.list, (t: (Int, PrintableTokens[Char])) => usesJsonRules(t._2))
        ListUtils.lemmaConcatPreservesForall(sortObjectsByID(left).list ++ middle.list, sortObjectsByID(right).list, (t: (Int, PrintableTokens[Char])) => usesJsonRules(t._2))
      })
      sortObjectsByID(left) ++ middle ++ sortObjectsByID(right) 
  }.ensuring(res => res.forall(t => usesJsonRules(t._2)))

  def recombineSlices(objs: Vector[PrintableTokens[Char]], acc: PrintableTokens[Char]): Option[PrintableTokens[Char]] = {
    require(objs.forall(usesJsonRules))
    require(usesJsonRules(acc))
    decreases(objs.size)
    if objs.isEmpty then Some(acc)
    else 
      val newAccOpt = objs.head.append(acc)
      newAccOpt match
        case Some(newAcc) => recombineSlices(objs.tail, newAcc)
        case None() => None()
  }.ensuring(res => res.isEmpty || usesJsonRules(res.get))

  def main(path: String)(using cacheUp: MemoisationZipper.CacheUp[Char], cacheDown: MemoisationZipper.CacheDown[Char]): Option[Vector[Char]] = {
    val input: Vector[Char] = openFile(path)

    lexAndCheckPrintable(input) match {
      case Some(printableTokens) if printableTokens.size > 0 => {
        // Now we have a PrintableTokens instance with our tokens, with the invariant that they are separable, as an R-Path
        val tokensSize = printableTokens.size
        val indices = indicesOfOpenBraces(printableTokens.tokens, tokensSize)
        val slices: Vector[PrintableTokens[Char]] = slicesMulti(printableTokens, tokensSize, 0 +: indices)
        // Now we have slices of PrintableTokens, all separable on their own, as provided by the specification of slice

        def addId(pt: PrintableTokens[Char]): (Int, PrintableTokens[Char]) = (parseID(pt), pt)
        ghostExpr({
          def lemmaAddIdsPreservesRules(@induct s: List[PrintableTokens[Char]]): Unit = {
            require(s.forall(usesJsonRules))
          }.ensuring(_ => s.forall(pt => usesJsonRules(addId(pt)._2)))
          lemmaAddIdsPreservesRules(slices.list)
          ListSpecs.mapPred(slices.list, addId, (t: (Int, PrintableTokens[Char])) => usesJsonRules(t._2))
        })
        val slicesWithIds = slices.map(addId)
        val orderedSlices = sortObjectsByID(slicesWithIds)
        
        def removeId(t: (Int, PrintableTokens[Char])): PrintableTokens[Char] = t._2
        ghostExpr({
          def lemmaRemoveIdsPreservesRules(@induct l: List[(Int, PrintableTokens[Char])]): Unit = {
            require(l.forall(p => usesJsonRules(p._2)))
          }.ensuring(_ => l.forall(p => usesJsonRules(removeId(p))))
          lemmaRemoveIdsPreservesRules(orderedSlices.list)
          ListSpecs.mapPred(orderedSlices.list, removeId, (pt: PrintableTokens[Char]) => usesJsonRules(pt))
          check(orderedSlices.map(removeId).forall(pt => usesJsonRules(pt)))
        })
        // Now that we have ordered our objects, we recombine them
        val recombined: Option[PrintableTokens[Char]] = recombineSlices(orderedSlices.map(removeId), emptyPrintableTokens(JsonLexer.rules))
        recombined match
          case Some(newTokens) => {
            // Now we have a new PrintableTokens, which checked only the separable predicate at the boundaries of slices
            val printed: Vector[Char] = newTokens.print()
            // if we lex then again, we get the same tokens
            assert(JsonLexer.rules == newTokens.rules)
            assert(Lexer.lex(JsonLexer.rules, printed) == (newTokens.tokens, Vector.empty[Char]))
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


