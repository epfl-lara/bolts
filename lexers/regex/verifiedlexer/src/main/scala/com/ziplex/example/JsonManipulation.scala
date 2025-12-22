package com.ziplex.lexer.example

import stainless.annotation.extern
import stainless.annotation.induct
import stainless.annotation.pure

import stainless.collection.List
import stainless.collection.Cons
import stainless.collection.Nil


import com.ziplex.lexer.{Token, Rule}

import com.ziplex.lexer.Sequence
import com.ziplex.lexer.emptySeq
import com.ziplex.lexer.singletonSeq
import com.ziplex.lexer.seqFromList

import com.ziplex.lexer.example.ExampleJsonLexer.Types.*
import com.ziplex.lexer.example.ExampleJsonLexer.JsonLexer

import com.ziplex.lexer.MemoisationZipper
import com.ziplex.lexer.VerifiedLexer.PrintableTokens
import com.ziplex.lexer.VerifiedLexer.Lexer
import com.ziplex.lexer.VerifiedLexer.printableTokensFromTokens
import com.ziplex.lexer.VerifiedLexer.emptyPrintableTokens
import com.ziplex.lexer.ListUtils
import stainless.collection.ListSpecs

import scala.annotation.tailrec
import com.ziplex.lexer.example.RegexUtils.asString

// BEGIN uncomment for verification ------------------------------------------
// import stainless.lang.Option
// import stainless.lang.Some
// import stainless.lang.None
// import stainless.lang.decreases
// import stainless.lang.ghost as ghostExpr
// import stainless.lang.unfold
// import stainless.proof.check
// END uncomment for verification --------------------------------------------
// BEGIN imports for benchmarking -------------------------------------------
import stainless.lang.{ghost => _, decreases => _, unfold => _, _}
import com.ziplex.lexer.OptimisedChecks.*
import Predef.{assert => _, Ensuring => _, require => _, println}

@tailrec
def dummyJsonManip(x: BigInt): BigInt = {
  if (x == BigInt(0)) then x
  else dummyJsonManip(x - BigInt(1))
}.ensuring( res => res == BigInt(0))
// END imports for benchmarking ---------------------------------------------

object JsonManipulationExample:

  /**
    * Opens a file and returns its content as a Sequence[Char] for lexing
    *
    * @param path
    * @return
    */
  @extern def openFile(path: String): Sequence[Char] = scala.io.Source.fromFile(path).iter.foldLeft[Sequence[Char]](emptySeq[Char]())((acc, char) => acc.append(char))


  /** Returns the indices of all the open braces in the token list
    *
    * @param ts
    */
  @extern @pure def isKeywordValue(t: Token[Char], kw: KeywordValue): Boolean = t.value == kw
  def indicesOfOpenBraces(ts: Sequence[Token[Char]], size: BigInt, from: BigInt = 0, acc: Sequence[BigInt] = emptySeq[BigInt]()): Sequence[BigInt] = {
    require(from >= 0 && from <= ts.size)  
    require(ts.size == size)
    require(acc.forall(i => 0 <= i && i < size))
    decreases(ts.size - from)
    if (from >= ts.size) then
      acc
    else 
      val t = ts(from)
      // ghostExpr(assert(acc.forall(i => 0 <= i && i < size)))
      if isKeywordValue(t, KeywordValue.LeftBrace) || isKeywordValue(t, KeywordValue.RightBrace) then
        ghostExpr({
          assert(acc.forall(i => 0 <= i && i < size))
          ListUtils.lemmaConcatPreservesForall(acc.list, List(from), (i: BigInt) => 0 <= i && i < size)
          assert((acc ++ seqFromList(List(from))).forall(i => 0 <= i && i < size))
        })
        indicesOfOpenBraces(ts, size, from + 1, acc.append(from))
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
  def lexAndCheckPrintable(input: Sequence[Char])(using cacheUp: MemoisationZipper.CacheUp[Char], cacheDown: MemoisationZipper.CacheDown[Char]): Option[PrintableTokens[Char]] = {
    require(!JsonLexer.rules.isEmpty)
    require(Lexer.rulesInvariant(JsonLexer.rules))
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
    printableTokensFromTokens(JsonLexer.rules, tokens)
  }.ensuring(res => res.isEmpty || usesJsonRules(res.get))


  def slicesMulti(pt: PrintableTokens[Char], size: BigInt, indices: Sequence[BigInt], acc: Sequence[PrintableTokens[Char]] = emptySeq[PrintableTokens[Char]]()): Sequence[PrintableTokens[Char]] = {
    require(pt.size == size)
    require(indices.forall(i => 0 <= i && i < size))
    require(usesJsonRules(pt))
    require(acc.forall(usesJsonRules))
    decreases(indices.size)
    if indices.size >= 2 then
      val from = indices(0)
      val to = indices(1)
      val slice = if (from <= to) then
        pt.slice(from, to + 1)
      else 
        // Should never happen but we do not prove it
        pt.slice(to, from + 1)
      ghostExpr({
        assert(usesJsonRules(slice))
        ListUtils.lemmaConcatPreservesForall(acc.list, List(slice), usesJsonRules)
        assert((acc.append(slice)).forall(usesJsonRules))
      })
      slicesMulti(pt, size, indices.tail.tail, acc.append(slice))
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
  def parseID(obj: PrintableTokens[Char]): BigInt = {
    def rec(from: BigInt, returnNextInt: Boolean): BigInt = {
      require(0 <= from && from <= obj.size)
      decreases(obj.size - from)
      if from >= obj.size then -1
      else 
        val t = obj.tokens(from)
        t.value match {
          case StringLiteralValue(s) if s == seqFromList(List('"', 'i', 'd', '"')) =>
            rec(from + 1, true)
          case IntegerValue(i, _) if returnNextInt =>
            i
          case _ => rec(from + 1, returnNextInt)
        }
    }
    rec(0, false)
  }

  def sortObjectsByID(objs: Sequence[(BigInt, PrintableTokens[Char])]): Sequence[(BigInt, PrintableTokens[Char])] = {
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
          ListSpecs.forallContained(left.list, (t: (BigInt, PrintableTokens[Char])) => t._1 < pivot._1, pivot)
          assert(false)
        }
        assert(!left.contains(pivot))
        if(objs.forall((t: (BigInt, PrintableTokens[Char])) => t._1 < pivot._1)) {
          ListSpecs.forallContained(objs.list, (t: (BigInt, PrintableTokens[Char])) => t._1 < pivot._1, pivot)
          assert(false)
        }
        ListUtils.lemmaNotForallFilterShorter(objs.list, (t: (BigInt, PrintableTokens[Char])) => t._1 < pivot._1)
        assert(left.size < objs.size)
        if (right.contains(pivot)){
          ListSpecs.forallContained(right.list, (t: (BigInt, PrintableTokens[Char])) => t._1 > pivot._1, pivot)
          assert(false)
        }
        assert(!right.contains(pivot))
        if(objs.forall((t: (BigInt, PrintableTokens[Char])) => t._1 > pivot._1)) {
          ListSpecs.forallContained(objs.list, (t: (BigInt, PrintableTokens[Char])) => t._1 > pivot._1, pivot)
          assert(false)
        }
        ListUtils.lemmaNotForallFilterShorter(objs.list, (t: (BigInt, PrintableTokens[Char])) => t._1 > pivot._1)
        assert(right.size < objs.size)

        ListSpecs.filterSubseq(objs.list, (t: (BigInt, PrintableTokens[Char])) => t._1 < pivot._1)
        ListSpecs.filterSubseq(objs.list, (t: (BigInt, PrintableTokens[Char])) => t._1 == pivot._1)
        ListSpecs.filterSubseq(objs.list, (t: (BigInt, PrintableTokens[Char])) => t._1 > pivot._1)
        ListUtils.lemmaForallSubseq(objs.filter(t => t._1 < pivot._1).list, objs.list, (t: (BigInt, PrintableTokens[Char])) => usesJsonRules(t._2))
        ListUtils.lemmaForallSubseq(objs.filter(t => t._1 == pivot._1).list, objs.list, (t: (BigInt, PrintableTokens[Char])) => usesJsonRules(t._2))
        ListUtils.lemmaForallSubseq(objs.filter(t => t._1 > pivot._1).list, objs.list, (t: (BigInt, PrintableTokens[Char])) => usesJsonRules(t._2))
        ListUtils.lemmaConcatPreservesForall(sortObjectsByID(left).list, middle.list, (t: (BigInt, PrintableTokens[Char])) => usesJsonRules(t._2))
        ListUtils.lemmaConcatPreservesForall(sortObjectsByID(left).list ++ middle.list, sortObjectsByID(right).list, (t: (BigInt, PrintableTokens[Char])) => usesJsonRules(t._2))
      })
      sortObjectsByID(left) ++ middle ++ sortObjectsByID(right) 
  }.ensuring(res => res.forall(t => usesJsonRules(t._2)))

  def recombineSlicesWithSep(objs: Sequence[PrintableTokens[Char]], sep: PrintableTokens[Char], acc: PrintableTokens[Char]): Option[PrintableTokens[Char]] = {
    require(objs.forall(usesJsonRules))
    require(usesJsonRules(acc))
    require(usesJsonRules(sep))
    decreases(objs.size)
    if objs.isEmpty then Some(acc)
    else if objs.size == 1 then
      val newAccOpt = acc.append(objs.head)
      newAccOpt match
        case Some(newAcc) => recombineSlicesWithSep(objs.tail, sep, newAcc)
        case None() => None()
    else 
      objs.head.append(sep) match
        case Some(newHead) => 
          acc.append(newHead) match
            case Some(newAcc) => recombineSlicesWithSep(objs.tail, sep, newAcc)
            case None() => None()
        case None() => None()
  }.ensuring(res => res.isEmpty || usesJsonRules(res.get))



  def createCommaNewLineSeparator(using cacheUp: MemoisationZipper.CacheUp[Char], cacheDown: MemoisationZipper.CacheDown[Char]): Option[PrintableTokens[Char]] = {
    require(!JsonLexer.rules.isEmpty)
    require(Lexer.rulesInvariant(JsonLexer.rules))
    val commaToken = Token(KeywordValueInjection.injection(singletonSeq(',')), JsonLexer.commaRule, BigInt(1), List(','))
    val newLineToken = Token(WhitespaceValueInjection.injection(singletonSeq('\n')), JsonLexer.whitespaceRule, BigInt(1), List('\n'))
    val sepSequence = singletonSeq(commaToken) ++ singletonSeq(newLineToken)
    if !Lexer.rulesProduceEachTokenIndividuallyMem(JsonLexer.rules, sepSequence) then None()
    else 
      printableTokensFromTokens(JsonLexer.rules, sepSequence)
  }.ensuring(res => res.isEmpty || usesJsonRules(res.get))

  def createLeftBracketSeparator(using cacheUp: MemoisationZipper.CacheUp[Char], cacheDown: MemoisationZipper.CacheDown[Char]): Option[PrintableTokens[Char]] = {
    require(!JsonLexer.rules.isEmpty)
    require(Lexer.rulesInvariant(JsonLexer.rules))
    val leftBracketToken = Token(KeywordValueInjection.injection(singletonSeq('[')), JsonLexer.lBracketRule, BigInt(1), List('['))
    val sepSequence = singletonSeq(leftBracketToken)
    if !Lexer.rulesProduceEachTokenIndividuallyMem(JsonLexer.rules, sepSequence) then None()
    else 
      printableTokensFromTokens(JsonLexer.rules, sepSequence)
  }.ensuring(res => res.isEmpty || usesJsonRules(res.get))

  def createRightBracketSeparator(using cacheUp: MemoisationZipper.CacheUp[Char], cacheDown: MemoisationZipper.CacheDown[Char]): Option[PrintableTokens[Char]] = {
    require(!JsonLexer.rules.isEmpty)
    require(Lexer.rulesInvariant(JsonLexer.rules))
    val rightBracketToken = Token(KeywordValueInjection.injection(singletonSeq(']')), JsonLexer.rBracketRule, BigInt(1), List(']'))
    val sepSequence = singletonSeq(rightBracketToken)
    if !Lexer.rulesProduceEachTokenIndividuallyMem(JsonLexer.rules, sepSequence) then None()
    else 
      printableTokensFromTokens(JsonLexer.rules, sepSequence)
  }.ensuring(res => res.isEmpty || usesJsonRules(res.get))

  def encloseInSep(objs: PrintableTokens[Char], sepL: PrintableTokens[Char], sepR: PrintableTokens[Char]): Option[PrintableTokens[Char]] = {
    require(usesJsonRules(objs))
    require(usesJsonRules(sepL))
    require(usesJsonRules(sepR))
    sepL.append(objs) match
      case Some(withLeft) => 
        withLeft.append(sepR) match
          case Some(enclosed) => Some(enclosed)
          case None() => None()
      case None() => None()
  }.ensuring(res => res.isEmpty || usesJsonRules(res.get))

  def processJson(printableTokens: PrintableTokens[Char])(using cacheUp: MemoisationZipper.CacheUp[Char], cacheDown: MemoisationZipper.CacheDown[Char]): Option[PrintableTokens[Char]] = {
    require(printableTokens.size > 0)
    require(!JsonLexer.rules.isEmpty && Lexer.rulesInvariant(JsonLexer.rules))
    require(usesJsonRules(printableTokens))
    
    val tokensSize = printableTokens.size
    val indices = indicesOfOpenBraces(printableTokens.tokens, tokensSize)
    val slices: Sequence[PrintableTokens[Char]] = slicesMulti(printableTokens, tokensSize, indices)
    // Now we have slices of PrintableTokens, all separable on their own, as provided by the specification of slice

    def addId(pt: PrintableTokens[Char]): (BigInt, PrintableTokens[Char]) = (parseID(pt), pt)
    ghostExpr({
      def lemmaAddIdsPreservesRules(@induct s: List[PrintableTokens[Char]]): Unit = {
        require(s.forall(usesJsonRules))
      }.ensuring(_ => s.forall(pt => usesJsonRules(addId(pt)._2)))
      lemmaAddIdsPreservesRules(slices.list)
      ListSpecs.mapPred(slices.list, addId, (t: (BigInt, PrintableTokens[Char])) => usesJsonRules(t._2))
    })

    val slicesWithIds = slices.map(addId)
    val orderedSlices = sortObjectsByID(slicesWithIds)
    
    def removeId(t: (BigInt, PrintableTokens[Char])): PrintableTokens[Char] = t._2
    ghostExpr({
      def lemmaRemoveIdsPreservesRules(@induct l: List[(BigInt, PrintableTokens[Char])]): Unit = {
        require(l.forall(p => usesJsonRules(p._2)))
      }.ensuring(_ => l.forall(p => usesJsonRules(removeId(p))))
      lemmaRemoveIdsPreservesRules(orderedSlices.list)
      ListSpecs.mapPred(orderedSlices.list, removeId, (pt: PrintableTokens[Char]) => usesJsonRules(pt))
      check(orderedSlices.map(removeId).forall(pt => usesJsonRules(pt)))
    })
    // Now that we have ordered our objects, we recombine them, with a comma and a new line in between
    (createCommaNewLineSeparator, createLeftBracketSeparator, createRightBracketSeparator) match
      case (Some(sep), Some(leftBr), Some(rightBr)) => {
        // Now we have a PrintableTokens instance for the separator, and left and right brackets
        // We can recombine the slices with the separator in between
        assert(usesJsonRules(sep))
        assert(usesJsonRules(leftBr))
        assert(usesJsonRules(rightBr))
        val recombined: Option[PrintableTokens[Char]] = recombineSlicesWithSep(orderedSlices.map(removeId), sep, emptyPrintableTokens(JsonLexer.rules))
        recombined match
          case Some(objs) => {
            encloseInSep(objs, leftBr, rightBr) match
              case Some(newTokens) => 
                // Now we have a PrintableTokens instance with all our objects, separated by comma and new line, and enclosed in brackets
                val printed: Sequence[Char] = newTokens.print()
                // if we lex then again, we get the same tokens
                assert(usesJsonRules(newTokens))
                assert(JsonLexer.rules == newTokens.rules)
                assert(Lexer.lex(JsonLexer.rules, printed)._1.list == newTokens.tokens.list)
                assert(Lexer.lex(JsonLexer.rules, printed)._2.isEmpty)
                Some(newTokens)
              case None() => None()
          }
          case None() => None()
      }
      case _ => None()
  }.ensuring(res => res.isEmpty || 
                    (Lexer.lex(JsonLexer.rules, res.get.print())._1.list == res.get.tokens.list && Lexer.lex(JsonLexer.rules, res.get.print())._2.isEmpty))

  def main(path: String)(using cacheUp: MemoisationZipper.CacheUp[Char], cacheDown: MemoisationZipper.CacheDown[Char]): Option[Sequence[Char]] = {
    val input: Sequence[Char] = openFile(path)

    if JsonLexer.rules.isEmpty || !Lexer.rulesInvariant(JsonLexer.rules) then None()
    else
      lexAndCheckPrintable(input) match {
        case Some(printableTokens) if printableTokens.size > 0 => {
          // Now we have a PrintableTokens instance with our tokens, with the invariant that they are separable, as an R-Path
          processJson(printableTokens) match {
            case Some(newTokens) => Some(newTokens.print())
            case None() => None()
          }
        }
        case _ => None() // The produced tokens are not separable, or we have no tokens, so we stop
      }
    
  }
end JsonManipulationExample
