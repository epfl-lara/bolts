/** Author: Samuel Chassot
  */

package com.ziplex.lexer

import stainless.annotation._
import stainless.collection._
import stainless.equations._
import scala.annotation.tailrec
import stainless.lang.Quantifiers._

import com.ziplex.lexer.Sequence
import com.ziplex.lexer.emptySeq
import com.ziplex.lexer.singletonSeq
import com.ziplex.lexer.seqFromList

import scala.annotation.tailrec
import scala.reflect.ClassTag

import com.mutablemaps.map.MutableHashMap.HashMap
import com.mutablemaps.map.MutableHashMap
import com.mutablemaps.map.Hashable

// BEGIN uncomment for verification ------------------------------------------
import stainless.lang.StaticChecks._
import stainless.lang.{ghost => ghostExpr, _}
import stainless.proof.check

// END uncomment for verification --------------------------------------------
// BEGIN imports for benchmarking -------------------------------------------
// import stainless.lang.{ghost => _, decreases => _, unfold => _, _}
// import com.ziplex.lexer.OptimisedChecks.*
// import Predef.{assert => _, Ensuring => _, require => _}

// @tailrec
// def dummy(x: BigInt): BigInt = {
//   if (x == BigInt(0)) then x
//   else dummy(x - BigInt(1))
// }.ensuring( res => res == BigInt(0))
// END imports for benchmarking ---------------------------------------------


object VerifiedLexer {
  import VerifiedRegex._
  import ZipperRegex.Zipper
  import VerifiedRegexMatcher._
  import com.ziplex.lexer.MemoisationZipper.CacheUp
  import com.ziplex.lexer.MemoisationZipper.CacheDown
  import com.ziplex.lexer.MemoisationZipper.CacheFindLongestMatch

  /** Safe constructor that returns None if the tokens are not printable with the given rules
    *
    * This should be used at runtime as invariants are erased
    * @param rules
    * @param tokens
    * @return
    */
  def printableTokensFromTokens[C: ClassTag : Hashable](rules: List[Rule[C]], tokens: Sequence[Token[C]]): Option[PrintableTokens[C]] = {
    require(!rules.isEmpty)
    require(Lexer.rulesInvariant(rules)) // this should checked at runtime before lexing
    require(Lexer.rulesProduceEachTokenIndividuallyList(rules, tokens.list)) // this is ensured by lexing
    require(Lexer.rulesProduceEachTokenIndividually(rules, tokens)) // this is ensured by lexing

    if (Lexer.separableTokens(tokens, rules)) {
      Some(PrintableTokens(rules, tokens))
    } else {
      None()
    }
  }.ensuring(res => res.isEmpty || (res.get.rules == rules && res.get.tokens == tokens))

  def printableTokensFromTokensMem[C: ClassTag : Hashable](rules: List[Rule[C]], tokens: Sequence[Token[C]])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Option[PrintableTokens[C]] = {
    require(!rules.isEmpty)
    require(Lexer.rulesInvariant(rules)) // this should checked at runtime before lexing
    require(Lexer.rulesProduceEachTokenIndividually(rules, tokens)) // this is ensured by lexing

    if (Lexer.separableTokensMem(tokens, rules)) {
      Some(PrintableTokens(rules, tokens))
    } else {
      None()
    }
  }.ensuring(res => res.isEmpty || (res.get.rules == rules && res.get.tokens == tokens))

  def emptyPrintableTokens[C: ClassTag : Hashable](rules: List[Rule[C]]): PrintableTokens[C] = {
    require(!rules.isEmpty)
    require(Lexer.rulesInvariant(rules)) // this should checked at runtime before lexing

    val emptySequence = emptySeq[Token[C]]()
    PrintableTokens(rules, emptySequence)
  }.ensuring(res => res.rules == rules && res.tokens.isEmpty)

  case class PrintableTokens[C: ClassTag : Hashable](rules: List[Rule[C]], tokens: Sequence[Token[C]]) {
      require(!rules.isEmpty)
      require(Lexer.rulesInvariant(rules))
      require(Lexer.rulesProduceEachTokenIndividually(rules, tokens))
      require(Lexer.separableTokens(tokens, rules))

      def lemmaInvariant(): Unit = {
      }.ensuring(_ => Lexer.rulesInvariant(rules) && Lexer.rulesProduceEachTokenIndividually(rules, tokens) && Lexer.separableTokens(tokens, rules))

      def size: BigInt = tokens.size
      def print(): Sequence[C] = {
        ghostExpr({
          Lexer.theoremInvertabilityWhenTokenListSeparable(rules, tokens.list)
        })
        Lexer.print(tokens)
      }.ensuring(res => Lexer.lex(rules, res)._1.list == tokens.list &&
                        Lexer.lex(rules, res)._2.list.isEmpty)

      def append(other: PrintableTokens[C]): Option[PrintableTokens[C]] = {
        require(rules == other.rules)
        other.lemmaInvariant()
        this.lemmaInvariant()
        if(other.tokens.isEmpty) {
          assert(this.rules == other.rules)
          ghostExpr(Lexer.lemmaPrintConcatSameAsConcatPrint(this.tokens.list, Nil[Token[C]]()))
          ghostExpr(unfold(Lexer.printList(Nil[Token[C]]())))

          ghostExpr(unfold(this.print()))
          ghostExpr(unfold(other.print()))
          ghostExpr(unfold(Lexer.print(other.tokens)))
          ghostExpr(unfold(Lexer.printList(other.tokens.list)))
          assert(Lexer.print(other.tokens) == emptySeq[C]())
          Some(this)
        } else if(this.tokens.isEmpty) {
          assert(this.rules == other.rules)
          assert(this.tokens.list.isEmpty)
          assert(other.tokens.list == emptySeq[Token[C]]().list ++ other.tokens.list)
          ghostExpr(Lexer.lemmaPrintConcatSameAsConcatPrint(Nil(), other.tokens.list))

          ghostExpr(unfold(Lexer.printList(Nil[Token[C]]())))

          ghostExpr(unfold(this.print()))
          ghostExpr(unfold(other.print()))
          ghostExpr(unfold(Lexer.print(other.tokens)))
          ghostExpr(unfold(Lexer.printList(other.tokens.list)))
          assert(Lexer.print(this.tokens) == emptySeq[C]())
          Some(other) 
        } else {
          ghostExpr(Lexer.lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, this.tokens.list, this.tokens.last))
          ghostExpr(Lexer.lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, other.tokens.list, other.tokens.head))
          if (Lexer.separableTokensPredicate(tokens.last, other.tokens.head, rules)) {
            ghostExpr(Lexer.tokensListTwoByTwoPredicateConcatSeparableTokensList(tokens.list, other.tokens.list, rules))
            assert(Lexer.tokensListTwoByTwoPredicateSeparable(this.tokens ++ other.tokens, 0, rules))
            ghostExpr(Lexer.lemmaPrintConcatSameAsConcatPrint(this.tokens.list, other.tokens.list))

            ghostExpr(unfold(this.print()))
            ghostExpr(unfold(other.print()))
            ghostExpr(unfold(PrintableTokens(rules, tokens ++ other.tokens).print()))
            ghostExpr(Lexer.lemmaPrintConcatSameAsConcatPrint(this.tokens.list, other.tokens.list))
            Some(PrintableTokens(rules, tokens ++ other.tokens))
          } else {
            None()
          }
        }
      }.ensuring(res => res.isEmpty || (res.get.rules == rules && res.get.tokens.list == tokens.list ++ other.tokens.list && res.get.print().list == this.print().list ++ other.print().list))

      def slice(from: BigInt, to: BigInt): PrintableTokens[C] = {
        require(0 <= from && from <= to && to <= tokens.size)

        lemmaInvariant()
        assert(Lexer.rulesInvariant(rules))
        ghostExpr(unfold(Lexer.rulesProduceEachTokenIndividually(rules, tokens)))
        ghostExpr(unfold(Lexer.rulesProduceEachTokenIndividuallyList(rules, tokens.list)))
        assert(tokens.forall(t => Lexer.rulesProduceIndividualToken(rules, t)))
        ghostExpr(ListUtils.lemmaSliceSubseq(tokens.list, from, to))
        ghostExpr(ListUtils.lemmaForallSubseq(tokens.slice(from, to).list, tokens.list, (t: Token[C]) => Lexer.rulesProduceIndividualToken(rules, t)))
        ghostExpr(unfold(Lexer.rulesProduceEachTokenIndividually(rules, tokens.slice(from, to))))
        ghostExpr(unfold(Lexer.rulesProduceEachTokenIndividuallyList(rules, tokens.slice(from, to).list)))
        assert(tokens.slice(from, to).list.forall(t => Lexer.rulesProduceIndividualToken(rules, t)))
        assert(tokens.slice(from, to).forall(t => Lexer.rulesProduceIndividualToken(rules, t)))
        ghostExpr(unfold(Lexer.separableTokens(tokens.slice(from, to), rules)))
        ghostExpr(unfold(Lexer.tokensListTwoByTwoPredicateSeparable(tokens, from = 0, rules)))

        ghostExpr(Lexer.tokensListTwoByTwoPredicateSeparableTokensDropList(tokens.list, from, rules))
        ghostExpr(ListUtils.lemmaDropSubseq(tokens.list, from))
        ghostExpr(ListUtils.lemmaForallSubseq(tokens.list.drop(from), tokens.list, (t: Token[C]) => Lexer.rulesProduceIndividualToken(rules, t)))

        ghostExpr(Lexer.tokensListTwoByTwoPredicateSeparableTokensTakeList(tokens.list.drop(from), to-from, rules))
        assert(Lexer.separableTokens(tokens.slice(from, to), rules))
        PrintableTokens(rules, tokens.slice(from, to))
      }.ensuring(res => res.rules == rules && res.tokens.list == tokens.slice(from, to).list)
    }

  case object Lexer extends LexerInterface {
    def ruleValid[C: ClassTag : Hashable](r: Rule[C]): Boolean = {
      validRegex(r.regex) && !r.regex.nullable && r.tag != ""
    }
    def noDuplicateTag[C: ClassTag : Hashable](rules: List[Rule[C]], acc: List[String] = Nil()): Boolean = {
      decreases(rules)
      rules match {
        case Nil()        => true
        case Cons(hd, tl) => !acc.contains(hd.tag) && noDuplicateTag(tl, Cons(hd.tag, acc))
      }
    }
    @ghost
    def rulesValidInductive[C: ClassTag : Hashable](rs: List[Rule[C]]): Boolean = {
      decreases(rs)
      rs match {
        case Cons(hd, tl) => ruleValid(hd) && rulesValidInductive(tl)
        case Nil()        => true
      }
    }.ensuring(res => res == rs.forall(ruleValid))

    def rulesValid[C: ClassTag : Hashable](rs: List[Rule[C]]): Boolean = {
      rs.forall(ruleValid)
    }.ensuring(res => res == rulesValidInductive(rs))

    @pure
    override def rulesProduceIndividualToken[C: ClassTag : Hashable](rs: List[Rule[C]], t: Token[C]): Boolean = {
      require(!rs.isEmpty)
      require(rulesInvariant(rs))
      val (producedTs, suffix) = lex(rs, print(singletonSeq(t)))
      producedTs.size == 1 && producedTs(0) == t && suffix.isEmpty
    }.ensuring(res => {
      res == (lex(rs, print(singletonSeq(t)))._1.list == singletonSeq(t).list &&  lex(rs, print(singletonSeq(t)))._2.isEmpty)
    })

    def rulesProduceIndividualTokenMem[C: ClassTag : Hashable](rs: List[Rule[C]], t: Token[C])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = {
      require(!rs.isEmpty)
      require(rulesInvariant(rs))
      val (producedTs, suffix) = lexV1Mem(rs, print(singletonSeq(t)))
      producedTs.size == 1 && producedTs(0) == t && suffix.isEmpty
    }.ensuring(res => res == rulesProduceIndividualToken(rs, t))

    @ghost
    override def rulesProduceEachTokenIndividuallyList[C: ClassTag : Hashable](rs: List[Rule[C]], ts: List[Token[C]]): Boolean = {
      require(!rs.isEmpty)
      require(rulesInvariant(rs))
      decreases(ts)
      ts match {
        case Cons(hd, tl) => rulesProduceIndividualToken(rs, hd) && rulesProduceEachTokenIndividuallyList(rs, tl)
        case Nil()        => true
      }
    }.ensuring(res => res == ts.forall(t => rulesProduceIndividualToken(rs, t)))


    def rulesProduceEachTokenIndividually[C: ClassTag : Hashable](rs: List[Rule[C]], ts: Sequence[Token[C]]): Boolean = {
      require(!rs.isEmpty)
      require(rulesInvariant(rs))
      ts.forall(t => rulesProduceIndividualToken(rs, t))
    }.ensuring(res => res == ts.list.forall(t => rulesProduceIndividualToken(rs, t)) && res == rulesProduceEachTokenIndividuallyList(rs, ts.list))

    def rulesProduceEachTokenIndividuallyMem[C: ClassTag : Hashable](rs: List[Rule[C]], ts: Sequence[Token[C]])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = {
      require(!rs.isEmpty)
      require(rulesInvariant(rs))
      decreases(ts.size)
      if ts.isEmpty then true 
      else 
        val headPred = rulesProduceIndividualTokenMem(rs, ts.head)
        assert(ts.tail.size < ts.size)
        val recPred = rulesProduceEachTokenIndividuallyMem(rs, ts.tail)
        headPred && recPred
    }.ensuring(res => res == ts.forall(t => rulesProduceIndividualToken(rs, t)))

    def rulesRegex[C: ClassTag : Hashable](rules: List[Rule[C]]): Regex[C] = {
      require(rulesValidInductive(rules))
      ghostExpr({
        def lemma(@induct rs: List[Rule[C]]): Unit = {
          require(rulesValidInductive(rs))
        }.ensuring(_ => rs.map(_.regex).forall(r => validRegex(r)))
        lemma(rules)
      })
      VerifiedRegex.generalisedUnion(rules.map(_.regex))
    }

    @ghost
    def tokensListTwoByTwoPredicateList[C: ClassTag : Hashable](l: List[Token[C]], rules: List[Rule[C]], pred: (Token[C], Token[C], List[Rule[C]]) => Boolean): Boolean = {
      decreases(l)
      l match {
        case Cons(hd, Cons(next, tl)) => pred(hd, next, rules) && tokensListTwoByTwoPredicateList(Cons(next, tl), rules, pred)
        case _                        => true
      }
    }

    @ghost
    def tokensListTwoByTwoPredicateSeparableList[C: ClassTag : Hashable](l: List[Token[C]], rules: List[Rule[C]]): Boolean = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividuallyList(rules, l))
      require(rulesProduceEachTokenIndividually(rules, seqFromList(l)))
      decreases(l)
      l match {
        case Cons(hd, Cons(next, tl)) => 
          ghostExpr({
            lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, l, hd)
            lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, l, next)
            check(rulesProduceIndividualToken(rules, hd))
            check(rulesProduceIndividualToken(rules, next))

            check(next.charsOf.size > 0)
          })


          separableTokensPredicate(hd, next, rules) && tokensListTwoByTwoPredicateSeparableList(Cons(next, tl), rules)
        case _                        => true
      }
    }

     def tokensListTwoByTwoPredicate[C: ClassTag : Hashable](v: Sequence[Token[C]], from: BigInt, rules: List[Rule[C]], pred: (Token[C], Token[C], List[Rule[C]]) => Boolean): Boolean = {
      require(from >= 0 && from <= v.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividually(rules, v))
      
      decreases(v.size - from)
      if from < v.size - 1 then
        ghostExpr({
          ListUtils.lemmaDropApply(v.list, from)
          ListUtils.lemmaDropApply(v.list, from + 1)
          ListUtils.lemmaDropTail(v.list, from)
          ListUtils.lemmaDropTail(v.list, from + 1)

          assert(v.contains(v(from)))
          assert(v.list.contains(v(from)))
          assert(v.contains(v(from + 1)))
          assert(v.list.contains(v(from + 1)))
          lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, v.list, v(from))
          lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, v.list, v(from + 1))
          check(rulesProduceIndividualToken(rules, v(from)))
          check(rulesProduceIndividualToken(rules, v(from + 1)))

          check(v(from + 1).charsOf.size > 0)
        })
        pred(v(from), v(from + 1), rules) && tokensListTwoByTwoPredicate(v, from + 1, rules, pred)
      else
        true
    }.ensuring(res => res == tokensListTwoByTwoPredicateList(v.dropList(from), rules, pred))


    override def separableTokens[C: ClassTag : Hashable](tokens: Sequence[Token[C]], rules: List[Rule[C]]): Boolean = 
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividually(rules, tokens))

      tokensListTwoByTwoPredicateSeparable(tokens, from = 0, rules)

    def separableTokensMem[C: ClassTag : Hashable](tokens: Sequence[Token[C]], rules: List[Rule[C]])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = { 
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividually(rules, tokens))
      tokensListTwoByTwoPredicateSeparableMem(tokens, from = 0, rules)
    }.ensuring(res => res == separableTokens(tokens, rules))

    

    override def tokensListTwoByTwoPredicateSeparable[C: ClassTag : Hashable](v: Sequence[Token[C]], from: BigInt, rules: List[Rule[C]]): Boolean = {
      require(from >= 0 && from <= v.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividually(rules, v))
      
      decreases(v.size - from)
      if from < v.size - 1 then
        ghostExpr({
          ListUtils.lemmaDropApply(v.list, from)
          ListUtils.lemmaDropApply(v.list, from + 1)
          ListUtils.lemmaDropTail(v.list, from)
          ListUtils.lemmaDropTail(v.list, from + 1)

          assert(v.contains(v(from)))
          assert(v.list.contains(v(from)))
          assert(v.contains(v(from + 1)))
          assert(v.list.contains(v(from + 1)))
          lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, v.list, v(from))
          lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, v.list, v(from + 1))
          check(rulesProduceIndividualToken(rules, v(from)))
          check(rulesProduceIndividualToken(rules, v(from + 1)))

          check(v(from + 1).charsOf.size > 0)
        })
        separableTokensPredicate(v(from), v(from + 1), rules) && tokensListTwoByTwoPredicateSeparable(v, from + 1, rules)
      else
        true
    }.ensuring(res => {
      ListUtils.lemmaDropSubSeq(v.list, from)
      lemmaRulesProduceEachTokenIndividuallyThenForSubSeq[C](rules, v.list, v.dropList(from))
      res == tokensListTwoByTwoPredicateSeparableList(v.dropList(from), rules)
    })

    def tokensListTwoByTwoPredicateSeparableMem[C: ClassTag : Hashable](v: Sequence[Token[C]], from: BigInt, rules: List[Rule[C]])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = {
      require(from >= 0 && from <= v.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividually(rules, v))
      
      decreases(v.size - from)
      if from < v.size - 1 then
        ghostExpr({
          ListUtils.lemmaDropApply(v.list, from)
          ListUtils.lemmaDropApply(v.list, from + 1)
          ListUtils.lemmaDropTail(v.list, from)
          ListUtils.lemmaDropTail(v.list, from + 1)

          assert(v.contains(v(from)))
          assert(v.list.contains(v(from)))
          assert(v.contains(v(from + 1)))
          assert(v.list.contains(v(from + 1)))
          lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, v.list, v(from))
          lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, v.list, v(from + 1))
          check(rulesProduceIndividualToken(rules, v(from)))
          check(rulesProduceIndividualToken(rules, v(from + 1)))

          check(v(from + 1).charsOf.size > 0)
        })
        // the following pattern is needed to avoid antialiasing issues with mutable caches
        val tokensSep = separableTokensPredicateMem(v(from), v(from + 1), rules)
        if tokensSep then
          tokensListTwoByTwoPredicateSeparableMem(v, from + 1, rules)
        else 
          false
      else
        true
    }.ensuring(res => res == tokensListTwoByTwoPredicateSeparable(v, from, rules))

     override def separableTokensPredicate[C: ClassTag : Hashable](t1: Token[C], t2: Token[C], rules: List[Rule[C]]): Boolean = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceIndividualToken(rules, t1))
      require(rulesProduceIndividualToken(rules, t2))
      require(!t2.charsOf.isEmpty)

      !VerifiedRegexMatcher.prefixMatchZipperSequence(rulesRegex(rules), t1.charsOf ++ singletonSeq(t2.charsOf(0)))
    }

    def separableTokensPredicateMem[C: ClassTag : Hashable](t1: Token[C], t2: Token[C], rules: List[Rule[C]])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceIndividualToken(rules, t1))
      require(rulesProduceIndividualToken(rules, t2))
      require(!t2.charsOf.isEmpty)

      !VerifiedRegexMatcher.prefixMatchZipperSequenceMem(rulesRegex(rules), t1.charsOf ++ singletonSeq(t2.charsOf(0)))
    }.ensuring(res => res == separableTokensPredicate(t1, t2, rules))

     override def rulesInvariant[C: ClassTag : Hashable](rules: List[Rule[C]]): Boolean =
      rulesValid(rules) && noDuplicateTag(rules, Nil())
    @ghost
    // @inlineOnce
    def lexList[C: ClassTag : Hashable](
        rules: List[Rule[C]],
        input: List[C]
    ): (List[Token[C]], List[C]) = {
      decreases(input.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      maxPrefix(rules, input) match {
        case Some((token, suffix)) => {
          val (followingTokens, nextSuffix) = lexList(rules, suffix)
          assert(token.charsOf.list ++ suffix == input)
          (Cons(token, followingTokens), nextSuffix)
        }
        case None() => (Nil(), input)
      }
    }.ensuring (res =>
      if (res._1.size > 0) res._2.size < input.size && !res._1.isEmpty
      else res._2 == input)

    /** Main function of the lexer
      *
      * Lex the input list of characters using the set of rules
      *
      * Return the produced list of Tokens and the remaining untokenised characters (normally empty)
      *
      * @param rules
      * @param input
      */  
     override def lex[C: ClassTag : Hashable](
        rules: List[Rule[C]],
        input: Sequence[C]
    ): (Sequence[Token[C]], Sequence[C]) = {
      decreases(input.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      lexTailRecV2(
        rules,
        input,
        emptySeq[C](),
        input,
        emptySeq[Token[C]]()
      )
    }.ensuring (res =>
      (if (res._1.size > 0) res._2.size < input.size && !res._1.isEmpty
      else res._2 == input) &&
      (res._1.list == lexList(rules, input.list)._1 && 
       res._2.list == lexList(rules, input.list)._2)
    )

    def lexV1[C: ClassTag : Hashable](
        rules: List[Rule[C]],
        input: Sequence[C]
    ): (Sequence[Token[C]], Sequence[C]) = {
      decreases(input.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      lexTailRec(
        rules,
        input,
        emptySeq[C](),
        input,
        emptySeq[Token[C]]()
      )
    }.ensuring (res =>
      (if (res._1.size > 0) res._2.size < input.size && !res._1.isEmpty
      else res._2 == input) &&
      (res._1.list == lexList(rules, input.list)._1 && 
       res._2.list == lexList(rules, input.list)._2)
    )

    def lexRec[C: ClassTag : Hashable](
        rules: List[Rule[C]],
        input: Sequence[C]
    ): (Sequence[Token[C]], Sequence[C]) = {
      decreases(input.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      maxPrefixZipperSequence(rules, input) match {
        case Some((token, suffix)) => {
          val (followingTokens, nextSuffix) = lexRec(rules, suffix)
          assert(token.charsOf.list ++ suffix.list == input.list)
          (followingTokens.prepend(token), nextSuffix)
        }
        case None() => (emptySeq[Token[C]](), input)
      }
    }.ensuring (res =>
      (if (res._1.size > 0) res._2.size < input.size && !res._1.isEmpty
      else res._2.list == input.list) &&
      (res._1.list == lexList(rules, input.list)._1 && 
       res._2.list == lexList(rules, input.list)._2)
    )

    // @tailrec
    def lexTailRec[C: ClassTag : Hashable](
        rules: List[Rule[C]],
        @ghost totalInput: Sequence[C],
        @ghost treated: Sequence[C],
        input: Sequence[C],
        acc: Sequence[Token[C]],
    ): (Sequence[Token[C]], Sequence[C]) = {
      decreases(input.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(totalInput.list == treated.list ++ input.list)
      require(lexRec(rules, treated)._1.list == acc.list)
      require(lexRec(rules, treated)._2.list.isEmpty)
      require(lexRec(rules, totalInput)._1.list == (acc ++ lexRec(rules, input)._1).list)
      require(lexRec(rules, totalInput)._2.list == lexRec(rules, input)._2.list)
      maxPrefixZipperSequence(rules, input) match {
        case Some((token, suffix)) => {
          @ghost val (followingTokens, nextSuffix) = lexRec(rules, suffix)
          ghostExpr(ListUtils.lemmaConcatAssociativity(treated.list, token.charsOf.list, suffix.list))
          ghostExpr(unfold(lexRec(rules, input)))
          ghostExpr(ListUtils.lemmaConcatAssociativity(acc.list, List(token), followingTokens.list))
          ghostExpr(lemmaLexThenLexPrefix(rules, treated.list ++ token.charsOf.list, suffix.list, acc.append(token).list, followingTokens.list, nextSuffix.list))

          ghostExpr(unfold(lexRec(rules, treated ++ token.charsOf)))
          @ghost val newTreated = treated ++ token.charsOf
          lexTailRec(
            rules,
            totalInput,
            newTreated,
            suffix,
            acc.append(token)
          )
        }
        case None() => {
          (acc, input)
        }
      }
    }.ensuring (res => res._1.list == lexRec(rules, totalInput)._1.list && 
                       res._2.list == lexRec(rules, totalInput)._2.list)

    def lexRecV2[C: ClassTag : Hashable](
        rules: List[Rule[C]],
        input: Sequence[C],
        totalInput: Sequence[C]
    ): (Sequence[Token[C]], Sequence[C]) = {
      decreases(input.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(ListUtils.isSuffix(input.list, totalInput.list))

      maxPrefixZipperSequenceV2(rules, input, totalInput) match {
        case Some((token, suffix)) => {
          val (followingTokens, nextSuffix) = lexRec(rules, suffix)
          assert(token.charsOf.list ++ suffix.list == input.list)
          (followingTokens.prepend(token), nextSuffix)
        }
        case None() => (emptySeq[Token[C]](), input)
      }
    }.ensuring (res =>
      (if (res._1.size > 0) res._2.size < input.size && !res._1.isEmpty
      else res._2.list == input.list) &&
      (res._1.list == lexList(rules, input.list)._1 && 
       res._2.list == lexList(rules, input.list)._2)
    )

    // @tailrec
    def lexTailRecV2[C: ClassTag : Hashable](
        rules: List[Rule[C]],
        totalInput: Sequence[C],
        @ghost treated: Sequence[C],
        input: Sequence[C],
        acc: Sequence[Token[C]],
    ): (Sequence[Token[C]], Sequence[C]) = {
      decreases(input.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(totalInput.list == treated.list ++ input.list)
      require(lexRec(rules, treated)._1.list == acc.list)
      require(lexRec(rules, treated)._2.list.isEmpty)
      require(lexRec(rules, totalInput)._1.list == (acc ++ lexRec(rules, input)._1).list)
      require(lexRec(rules, totalInput)._2.list == lexRec(rules, input)._2.list)

      ghostExpr(ListUtils.lemmaConcatTwoListThenFSndIsSuffix(treated.list, input.list))
      ghostExpr(assert(ListUtils.isSuffix(input.list, totalInput.list)))

      maxPrefixZipperSequenceV2(rules, input, totalInput) match {
        case Some((token, suffix)) => {
          @ghost val (followingTokens, nextSuffix) = lexRec(rules, suffix)
          ghostExpr(ListUtils.lemmaConcatAssociativity(treated.list, token.charsOf.list, suffix.list))
          ghostExpr(unfold(lexRec(rules, input)))
          ghostExpr(ListUtils.lemmaConcatAssociativity(acc.list, List(token), followingTokens.list))
          ghostExpr(lemmaLexThenLexPrefix(rules, treated.list ++ token.charsOf.list, suffix.list, acc.append(token).list, followingTokens.list, nextSuffix.list))
          ghostExpr(unfold(lexRec(rules, treated ++ token.charsOf)))
          @ghost val newTreated = treated ++ token.charsOf
          ghostExpr(ListUtils.lemmaConcatTwoListThenFSndIsSuffix(newTreated.list, suffix.list))
          ghostExpr(assert(ListUtils.isSuffix(suffix.list, totalInput.list)))
          lexTailRecV2(
            rules,
            totalInput,
            newTreated,
            suffix,
            acc.append(token)
          )
        }
        case None() => {
          (acc, input)
        }
      }
    }.ensuring (res => res._1.list == lexRec(rules, totalInput)._1.list && 
                       res._2.list == lexRec(rules, totalInput)._2.list)

    def lexV1Mem[C: ClassTag : Hashable](
        rules: List[Rule[C]],
        input: Sequence[C]
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): (Sequence[Token[C]], Sequence[C]) = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(cacheUp.valid)
      require(cacheDown.valid)
      decreases(input.size)

      lexTailRecMem(
        rules,
        input,
        emptySeq[C](),
        input,
        emptySeq[Token[C]]()
      )
    }.ensuring (res => res._1.list == lex(rules, input)._1.list && 
                       res._2.list == lex(rules, input)._2.list)

    def lexMem[C: ClassTag : Hashable](
        rules: List[Rule[C]],
        input: Sequence[C]
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C], cacheFindLongestMatch: CacheFindLongestMatch[C]): (Sequence[Token[C]], Sequence[C]) = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(cacheUp.valid)
      require(cacheDown.valid)
      require(cacheFindLongestMatch.valid)
      require(cacheFindLongestMatch.totalInput == input)
      decreases(input.size)

      lexTailRecV2Mem(
        rules,
        input,
        emptySeq[C](),
        input,
        emptySeq[Token[C]]()
      )
    }.ensuring (res => res._1.list == lex(rules, input)._1.list && 
                       res._2.list == lex(rules, input)._2.list &&
                       cacheFindLongestMatch.valid && cacheUp.valid && cacheDown.valid &&
                       cacheFindLongestMatch.totalInput == input)

    def lexV2MemOnlyDeriv[C: ClassTag : Hashable](
        rules: List[Rule[C]],
        input: Sequence[C]
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): (Sequence[Token[C]], Sequence[C]) = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(cacheUp.valid)
      require(cacheDown.valid)
      decreases(input.size)

      lexTailRecV2MemOnlyDeriv(
        rules,
        input,
        emptySeq[C](),
        input,
        emptySeq[Token[C]]()
      )
    }.ensuring (res => res._1.list == lex(rules, input)._1.list && 
                       res._2.list == lex(rules, input)._2.list &&
                       cacheUp.valid && cacheDown.valid)

    // @tailrec
    def lexTailRecMem[C: ClassTag : Hashable](
        rules: List[Rule[C]],
        @ghost totalInput: Sequence[C],
        @ghost treated: Sequence[C],
        input: Sequence[C],
        acc: Sequence[Token[C]],
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): (Sequence[Token[C]], Sequence[C]) = {
      decreases(input.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(cacheUp.valid)
      require(cacheDown.valid)
      require(totalInput.list == treated.list ++ input.list)
      require(lexRec(rules, treated)._1.list == acc.list)
      require(lexRec(rules, treated)._2.list.isEmpty)
      require(lexRec(rules, totalInput)._1.list == (acc ++ lexRec(rules, input)._1).list)
      require(lexRec(rules, totalInput)._2.list == lexRec(rules, input)._2.list)
      unfold(lexTailRec(rules, totalInput, treated, input, acc))
      unfold(lex(rules, input))
      maxPrefixZipperSequenceMem(rules, input) match {
        case Some((token, suffix)) => {
          @ghost val newTreated = treated ++ token.charsOf
          lexTailRecMem(
            rules,
            totalInput,
            newTreated,
            suffix,
            acc.append(token)
          )
        }
        case None() => {
          (acc, input)
        }
      }
    }.ensuring (res => res._1.list == lexTailRec(rules, totalInput, treated, input, acc)._1.list && 
                       res._2.list == lexTailRec(rules, totalInput, treated, input, acc)._2.list)

    // @tailrec
    def lexTailRecV2Mem[C: ClassTag : Hashable](
        rules: List[Rule[C]],
        totalInput: Sequence[C],
        @ghost treated: Sequence[C],
        input: Sequence[C],
        acc: Sequence[Token[C]],
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C], cacheFindLongestMatch: CacheFindLongestMatch[C]): (Sequence[Token[C]], Sequence[C]) = {
      decreases(input.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(totalInput.list == treated.list ++ input.list)
      require(lexRec(rules, treated)._1.list == acc.list)
      require(lexRec(rules, treated)._2.list.isEmpty)
      require(lexRec(rules, totalInput)._1.list == (acc ++ lexRec(rules, input)._1).list)
      require(lexRec(rules, totalInput)._2.list == lexRec(rules, input)._2.list)
      require(cacheUp.valid)
      require(cacheDown.valid)
      require(cacheFindLongestMatch.valid)
      require(cacheFindLongestMatch.totalInput == totalInput)
      ghostExpr(ListUtils.lemmaConcatTwoListThenFSndIsSuffix(treated.list, input.list))
      ghostExpr(assert(ListUtils.isSuffix(input.list, totalInput.list)))

      maxPrefixZipperSequenceV2Mem(rules, input, totalInput) match {
        case Some((token, suffix)) => {
          ghostExpr({
            val (followingTokens, nextSuffix) = lexRec(rules, suffix)
            unfold(maxPrefixZipperSequenceV2Mem(rules, input, totalInput))
            unfold(maxPrefixZipperSequenceV2(rules, input, totalInput))
            unfold(maxPrefixZipperSequence(rules, input))
            assert(maxPrefixZipperSequenceV2(rules, input, totalInput).isDefined == maxPrefix(rules, input.list).isDefined)
            assert(maxPrefixZipperSequenceV2(rules, input, totalInput).get._1 == maxPrefix(rules, input.list).get._1)
            assert(maxPrefixZipperSequenceV2(rules, input, totalInput).get._2.list == maxPrefix(rules, input.list).get._2)
            ListUtils.lemmaConcatAssociativity(treated.list, token.charsOf.list, suffix.list)
            unfold(lexRec(rules, input))
            lexList(rules, input.list)
            ListUtils.lemmaConcatAssociativity(acc.list, List(token), followingTokens.list)
            val prefix = treated.list ++ token.charsOf.list
            val prefixTokens = acc.append(token).list
            assert(prefixTokens == acc.list ++ List(token))
            assert(lexList(rules, suffix.list) == (followingTokens.list, nextSuffix.list))
            assert(lexList(rules, prefix ++ suffix.list) == (prefixTokens ++ followingTokens.list, nextSuffix.list))
            assert(lexList(rules, suffix.list) == (followingTokens.list, nextSuffix.list))

            lemmaLexThenLexPrefix(rules, prefix, suffix.list, acc.append(token).list, followingTokens.list, nextSuffix.list)
            unfold(lexRec(rules, treated ++ token.charsOf))
          })
          @ghost val newTreated = treated ++ token.charsOf
          ghostExpr(ListUtils.lemmaConcatTwoListThenFSndIsSuffix(newTreated.list, suffix.list))
          ghostExpr(assert(ListUtils.isSuffix(suffix.list, totalInput.list)))
          lexTailRecV2Mem(
            rules,
            totalInput,
            newTreated,
            suffix,
            acc.append(token)
          )
        }
        case None() => {
          (acc, input)
        }
      }
    }.ensuring (res => res == lexTailRecV2(rules, totalInput, treated, input, acc) &&
                       cacheFindLongestMatch.valid && cacheUp.valid && cacheDown.valid &&
                       cacheFindLongestMatch.totalInput == totalInput)

    // @tailrec
    def lexTailRecV2MemOnlyDeriv[C: ClassTag : Hashable](
        rules: List[Rule[C]],
        totalInput: Sequence[C],
        @ghost treated: Sequence[C],
        input: Sequence[C],
        acc: Sequence[Token[C]],
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): (Sequence[Token[C]], Sequence[C]) = {
      decreases(input.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(totalInput.list == treated.list ++ input.list)
      require(lexRec(rules, treated)._1.list == acc.list)
      require(lexRec(rules, treated)._2.list.isEmpty)
      require(lexRec(rules, totalInput)._1.list == (acc ++ lexRec(rules, input)._1).list)
      require(lexRec(rules, totalInput)._2.list == lexRec(rules, input)._2.list)
      require(cacheUp.valid)
      require(cacheDown.valid)
      ghostExpr(ListUtils.lemmaConcatTwoListThenFSndIsSuffix(treated.list, input.list))
      ghostExpr(assert(ListUtils.isSuffix(input.list, totalInput.list)))

      maxPrefixZipperSequenceV2MemOnlyDeriv(rules, input, totalInput) match {
        case Some((token, suffix)) => {
          ghostExpr({
            val (followingTokens, nextSuffix) = lexRec(rules, suffix)
            unfold(maxPrefixZipperSequenceV2MemOnlyDeriv(rules, input, totalInput))
            unfold(maxPrefixZipperSequenceV2(rules, input, totalInput))
            unfold(maxPrefixZipperSequence(rules, input))
            assert(maxPrefixZipperSequenceV2(rules, input, totalInput).isDefined == maxPrefix(rules, input.list).isDefined)
            assert(maxPrefixZipperSequenceV2(rules, input, totalInput).get._1 == maxPrefix(rules, input.list).get._1)
            assert(maxPrefixZipperSequenceV2(rules, input, totalInput).get._2.list == maxPrefix(rules, input.list).get._2)
            ListUtils.lemmaConcatAssociativity(treated.list, token.charsOf.list, suffix.list)
            unfold(lexRec(rules, input))
            lexList(rules, input.list)
            ListUtils.lemmaConcatAssociativity(acc.list, List(token), followingTokens.list)
            val prefix = treated.list ++ token.charsOf.list
            val prefixTokens = acc.append(token).list
            assert(prefixTokens == acc.list ++ List(token))
            assert(lexList(rules, suffix.list) == (followingTokens.list, nextSuffix.list))
            assert(lexList(rules, prefix ++ suffix.list) == (prefixTokens ++ followingTokens.list, nextSuffix.list))
            assert(lexList(rules, suffix.list) == (followingTokens.list, nextSuffix.list))

            lemmaLexThenLexPrefix(rules, prefix, suffix.list, acc.append(token).list, followingTokens.list, nextSuffix.list)
            unfold(lexRec(rules, treated ++ token.charsOf))
          })
          @ghost val newTreated = treated ++ token.charsOf
          ghostExpr(ListUtils.lemmaConcatTwoListThenFSndIsSuffix(newTreated.list, suffix.list))
          ghostExpr(assert(ListUtils.isSuffix(suffix.list, totalInput.list)))
          lexTailRecV2MemOnlyDeriv(
            rules,
            totalInput,
            newTreated,
            suffix,
            acc.append(token)
          )
        }
        case None() => {
          (acc, input)
        }
      }
    }.ensuring (res => res == lexTailRecV2(rules, totalInput, treated, input, acc) &&
                       cacheUp.valid && cacheDown.valid)


    @ghost
    def lexRegexList[C: ClassTag : Hashable](
        rules: List[Rule[C]],
        input: List[C]
    ): (List[Token[C]], List[C]) = {
      decreases(input.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      maxPrefix(rules, input) match {
        case Some((token, suffix)) => {
          val (followingTokens, nextSuffix) = lexRegexList(rules, suffix)
          assert(token.charsOf.list ++ suffix == input)
          (Cons(token, followingTokens), nextSuffix)
        }
        case None() => (Nil(), input)
      }
    }.ensuring (res =>
      if (res._1.size > 0) res._2.size < input.size && !res._1.isEmpty
      else res._2 == input
    )

    /** Prints back the tokens to a list of characters of the type C
      *
      * @param l
      */
    @ghost //@inlineOnce
    def printList[C: ClassTag : Hashable](l: List[Token[C]]): List[C] = {
      decreases(l)
      l match {
        case Cons(hd, tl) => hd.charsOf.list ++ printList(tl)
        case Nil()        => Nil[C]()
      }
    }

    @ghost //@inlineOnce
    def printListTailRec[C: ClassTag : Hashable](l: List[Token[C]], acc: List[C] = Nil()): List[C] = {
      decreases(l)
      l match {
        case Cons(hd, tl) => {
          ListUtils.lemmaConcatAssociativity(acc, hd.charsOf.list, printList(tl))
          printListTailRec(tl, acc ++ hd.charsOf.list)
        }
        case Nil()        => acc
      }
    }.ensuring(res => res == acc ++ printList(l))

    override def print[C: ClassTag : Hashable](v: Sequence[Token[C]]): Sequence[C] = {
      printTailRec(v, from = 0, acc = emptySeq[C]())
    }.ensuring(res => res.list == printList(v.list))

    def printRec[C: ClassTag : Hashable](v: Sequence[Token[C]], from: BigInt = 0): Sequence[C] = {
      require(from >= 0 && from <= v.size)
      decreases(v.size - from)
      if from >= v.size then
        emptySeq[C]()
      else
        ghostExpr({
          ListUtils.lemmaDropApply(v.list, from)
          ListUtils.lemmaDropTail(v.list, from)
        })
        v(from).charsOf ++ printRec(v, from + 1)
    }.ensuring(res => res.list == printList(v.dropList(from)))

    def printTailRec[C: ClassTag : Hashable](v: Sequence[Token[C]], from: BigInt, acc: Sequence[C]): Sequence[C] = {
      require(from >= 0 && from <= v.size)
      decreases(v.size - from)
      if from >= v.size then
        acc
      else
        ghostExpr({
          ListUtils.lemmaDropApply(v.list, from)
          ListUtils.lemmaDropTail(v.list, from)
        })
        printTailRec(v, from + 1, acc ++ v(from).charsOf)
    }.ensuring(res => res.list == printListTailRec(v.dropList(from), acc.list))


    /** Prints back the tokens to a list of characters of the type C, by adding a separatorToken between each, and after the last
      *
      * @param l
      * @param separatorToken
      */
    @ghost
    def printWithSeparatorTokenList[C: ClassTag : Hashable](l: List[Token[C]], separatorToken: Token[C]): List[C] = {
      require(separatorToken.rule.isSeparator)
      decreases(l)
      l match {
        case Cons(hd, tl) => hd.charsOf.list ++ separatorToken.charsOf.list ++ printWithSeparatorTokenList(tl, separatorToken)
        case Nil()        => Nil[C]()
      }
    }

    override def withSeparatorToken[C: ClassTag : Hashable](v: Sequence[Token[C]], separatorToken: Token[C]): Sequence[Token[C]] = {
      require(separatorToken.rule.isSeparator)
      assert(withSeparatorTokenInner(v, separatorToken, 0, emptySeq()).list == withSeparatorTokenList(v.list, separatorToken))
      assert(printList(withSeparatorTokenList(v.list, separatorToken)) == printWithSeparatorTokenList(v.list, separatorToken))
      assert(print(withSeparatorTokenInner(v, separatorToken, 0, emptySeq())).list == printWithSeparatorTokenList(v.list, separatorToken))
      assert(print(withSeparatorTokenInner(v, separatorToken, 0, emptySeq())).list == printWithSeparatorToken(v, separatorToken).list)
      withSeparatorTokenInner(v, separatorToken, 0, emptySeq())
    }.ensuring(res => res.list == withSeparatorTokenList(v.list, separatorToken) && print(res).list == printWithSeparatorToken(v, separatorToken).list)

    def withSeparatorTokenInner[C: ClassTag : Hashable](v: Sequence[Token[C]], separatorToken: Token[C], from: BigInt , acc: Sequence[Token[C]]): Sequence[Token[C]] = {
      require(from >= 0 && from <= v.size)
      require(separatorToken.rule.isSeparator)
      decreases(v.size - from)
      if from >= v.size then
        acc
      else
        ghostExpr({
          ListUtils.lemmaDropApply(v.list, from)
          ListUtils.lemmaDropTail(v.list, from)
          ListUtils.lemmaConcatAssociativity(acc.list, List(v(from), separatorToken), withSeparatorTokenList(v.list.drop(from + 1), separatorToken))
          assert(withSeparatorTokenInner(v, separatorToken, from + 1, acc ++ (singletonSeq(v(from)) ++ singletonSeq(separatorToken))).list == (acc ++ (singletonSeq(v(from)) ++ singletonSeq(separatorToken))).list ++ withSeparatorTokenList(v.list.drop(from + 1), separatorToken))
          assert((acc ++ singletonSeq(v(from))).list == acc.list ++ List(v(from)))
        })
        withSeparatorTokenInner(v, separatorToken, from + 1, acc ++ (singletonSeq(v(from)) ++ singletonSeq(separatorToken)))
    }.ensuring(res => res.list == acc.list ++ withSeparatorTokenList(v.list.drop(from), separatorToken))

    
    @ghost override def interleavingSeparatorTokenMakesSeparableSequence[C: ClassTag : Hashable](rules: List[Rule[C]], tokens: Sequence[Token[C]], separatorToken: Token[C]): Boolean = {
      if (!rules.isEmpty && 
        rulesInvariant(rules) && 
        rulesProduceEachTokenIndividually(rules, tokens) &&
        LexerInterface.sepAndNonSepRulesDisjointChars(rules, rules) && 
        rulesProduceIndividualToken(rules, separatorToken) &&
        tokens.forall(!_.rule.isSeparator) &&
        separatorToken.rule.isSeparator) 
      then
        printWithSeparatorTokenImpliesSeparableTokensList(rules, tokens.list, separatorToken)
        (separableTokens(withSeparatorToken(tokens, separatorToken), rules))
      else 
        true
    }

    @ghost
    def withSeparatorTokenList[C: ClassTag : Hashable](l: List[Token[C]], separatorToken: Token[C]): List[Token[C]] = {
      require(separatorToken.rule.isSeparator)
      decreases(l)
      l match {
        case Cons(hd, tl) => {
          unfold(printList(hd :: separatorToken :: withSeparatorTokenList(tl, separatorToken)))
          unfold(printList(separatorToken :: withSeparatorTokenList(tl, separatorToken)))
          ListUtils.lemmaConcatAssociativity(hd.charsOf.list, separatorToken.charsOf.list, printList(withSeparatorTokenList(tl, separatorToken)))
          hd :: separatorToken :: withSeparatorTokenList(tl, separatorToken)
        }
        case Nil()        => Nil[Token[C]]()
      }
    }.ensuring(res => printList(res) == printWithSeparatorTokenList(l, separatorToken))


    @ghost
    def printWithSeparatorTokenListTailRec[C: ClassTag : Hashable](l: List[Token[C]], separatorToken: Token[C], acc: List[C] = Nil[C]()): List[C] = {
      require(separatorToken.rule.isSeparator)
      decreases(l)
      l match {
        case Cons(hd, tl) => {
          ListUtils.lemmaConcatAssociativity(acc, hd.charsOf.list ++ separatorToken.charsOf.list, printWithSeparatorTokenList(tl, separatorToken))
          ListUtils.lemmaConcatAssociativity(acc, hd.charsOf.list, separatorToken.charsOf.list)
          printWithSeparatorTokenListTailRec(tl, separatorToken, acc ++ hd.charsOf.list ++ separatorToken.charsOf.list)
        }
        case Nil()        => acc
      }
    }.ensuring(res => res == acc ++ printWithSeparatorTokenList(l, separatorToken))
    

    override def printWithSeparatorToken[C: ClassTag : Hashable](v: Sequence[Token[C]], separatorToken: Token[C]): Sequence[C] = {
      // require(from >= 0 && from <= v.size)
      require(separatorToken.rule.isSeparator)
      printWithSeparatorTokenTailRec(v, separatorToken, 0, emptySeq[C]())
    }.ensuring(res => res.list == printWithSeparatorTokenList(v.list, separatorToken))

    def printWithSeparatorTokenRec[C: ClassTag : Hashable](v: Sequence[Token[C]], separatorToken: Token[C], from: BigInt = 0): Sequence[C] = {
      require(from >= 0 && from <= v.size)
      require(separatorToken.rule.isSeparator)
      decreases(v.size - from)
      if from >= v.size then
        emptySeq[C]()
      else
        ghostExpr({
          ListUtils.lemmaDropApply(v.list, from)
          ListUtils.lemmaDropTail(v.list, from)
        })
        v(from).charsOf ++ separatorToken.charsOf ++ printWithSeparatorTokenRec(v, separatorToken, from + 1)
    }.ensuring(res => res.list == printWithSeparatorTokenList(v.dropList(from), separatorToken))

    def printWithSeparatorTokenTailRec[C: ClassTag : Hashable](v: Sequence[Token[C]], separatorToken: Token[C], from: BigInt, acc: Sequence[C]): Sequence[C] = {
      require(from >= 0 && from <= v.size)
      require(separatorToken.rule.isSeparator)
      decreases(v.size - from)
      if from >= v.size then
        acc
      else
        ghostExpr({
          ListUtils.lemmaDropApply(v.list, from)
          ListUtils.lemmaDropTail(v.list, from)
        })
        printWithSeparatorTokenTailRec(v, separatorToken, from + 1, acc ++ v(from).charsOf ++ separatorToken.charsOf)
    }.ensuring(res => res.list == printWithSeparatorTokenListTailRec(v.dropList(from), separatorToken, acc.list))

    /** Prints back the tokens to a list of characters of the type C, by adding a separatorToken between tokens when the maxPrefix would return
      * another token if printed back to back.
      *
      * @param l
      * @param separatorToken
      */
    @ghost
    def printWithSeparatorTokenWhenNeededList[C: ClassTag : Hashable](rules: List[Rule[C]], l: List[Token[C]], separatorToken: Token[C]): List[C] = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividuallyList(rules, l))
      require(rulesProduceIndividualToken(rules, separatorToken))
      require(separatorToken.rule.isSeparator)
      require(l.forall(!_.rule.isSeparator))
      require(LexerInterface.sepAndNonSepRulesDisjointChars(rules, rules))
      decreases(l)

      l match {
        case Cons(hd, tl) => {
          ghostExpr({
            assert(l.contains(hd))
            ListSpecs.forallContained(l, t => rulesProduceIndividualToken(rules, t), hd)
          })
          val suffix = printWithSeparatorTokenWhenNeededList(rules, tl, separatorToken)
          val maxPrefWithoutSep = maxPrefix(rules, hd.charsOf.list ++ suffix)
          maxPrefWithoutSep match {
            case Some((t, s)) if t == hd => hd.charsOf.list ++ suffix
            case Some((t, s)) if t != hd => hd.charsOf.list ++ separatorToken.charsOf.list ++ suffix
            case None() => {
              ghostExpr({
                ghostExpr(unfold(print(singletonSeq(hd))))
                assert(print(singletonSeq(hd)).list == printList(List(hd)))
                assert(printList(List(hd)) == hd.charsOf.list)
                assert(rulesProduceIndividualToken(rules, hd))
                assert(!lex(rules, seqFromList(hd.charsOf.list))._1.isEmpty)
                lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined(rules, hd.charsOf.list, suffix)
              })
              check(false)
              Nil[C]()
            }
          }
        }
        case Nil() => Nil[C]()
      }
    }

    override def printWithSeparatorTokenWhenNeeded[C: ClassTag : Hashable](rules: List[Rule[C]], v: Sequence[Token[C]], separatorToken: Token[C]): Sequence[C] = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividually(rules, v))
      require(rulesProduceIndividualToken(rules, separatorToken))
      require(separatorToken.rule.isSeparator)
      require(v.forall(!_.rule.isSeparator))
      require(LexerInterface.sepAndNonSepRulesDisjointChars(rules, rules))
      printWithSeparatorTokenWhenNeededRec(rules, v, separatorToken, from = 0)
    }.ensuring(res => res.list == printWithSeparatorTokenWhenNeededList(rules, v.list, separatorToken))

    def printWithSeparatorTokenWhenNeededRec[C: ClassTag : Hashable](rules: List[Rule[C]], v: Sequence[Token[C]], separatorToken: Token[C], from: BigInt): Sequence[C] = {
      require(from >= 0 && from <= v.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividually(rules, v))
      require(rulesProduceIndividualToken(rules, separatorToken))
      require(separatorToken.rule.isSeparator)
      require(v.forall(!_.rule.isSeparator))
      require(LexerInterface.sepAndNonSepRulesDisjointChars(rules, rules))
      decreases(v.size - from)

      ghostExpr(ListUtils.lemmaContentSubsetPreservesForall(v.list, v.dropList(from), t => !t.rule.isSeparator))

      if from >= v.size then
        emptySeq[C]()
      else {
        ghostExpr({
          ListUtils.lemmaDropApply(v.list, from)
          ListUtils.lemmaDropTail(v.list, from)
          assert(v.contains(v(from)))
          assert(v.list.contains(v(from)))
          ListSpecs.forallContained(v.list, t => rulesProduceIndividualToken(rules, t), v(from))
        })
        val suffix = printWithSeparatorTokenWhenNeededRec(rules, v, separatorToken, from + 1)
        val maxPrefWithoutSep = maxPrefixZipperSequence(rules, v(from).charsOf ++ suffix)
        maxPrefWithoutSep match {
          case Some((t, s)) if t == v(from) => v(from).charsOf ++ suffix
          case Some((t, s)) if t != v(from) => v(from).charsOf ++ separatorToken.charsOf ++ suffix
          case None() => {
            ghostExpr({
              ghostExpr(unfold(print(singletonSeq(v(from)))))
              assert(print(singletonSeq(v(from))).list == printList(List(v(from))))
              assert(printList(List(v(from))) == v(from).charsOf.list)
              assert(rulesProduceIndividualToken(rules, v(from)))
              assert(!lex(rules, seqFromList(v(from).charsOf.list))._1.isEmpty)
              lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined(rules, v(from).charsOf.list, suffix.list)
            })
            check(false)
            emptySeq[C]()
          }
        }
      }
    }.ensuring(res => res.list == printWithSeparatorTokenWhenNeededList(rules, v.dropList(from), separatorToken))

    /** Finds the biggest prefix matching any rule in the input list of characters If nothing matched a rule, returns None Else, returns the matched
      * prefix as Token and the remaining suffix
      *
      * @param rulesArg
      * @param input
      */
    @ghost
    def maxPrefix[C: ClassTag : Hashable](
        rulesArg: List[Rule[C]],
        input: List[C]
    ): Option[(Token[C], List[C])] = {
      require(rulesValidInductive(rulesArg))
      require(!rulesArg.isEmpty)
      decreases(rulesArg.size)

      ghostExpr(ListUtils.lemmaIsPrefixRefl(input, input))
      rulesArg match {
        case Cons(hd, Nil()) => maxPrefixOneRule(hd, input)
        case Cons(hd, tl) => {
          val currentRulePref = maxPrefixOneRule(hd, input)
          val othersPrefix = maxPrefix(tl, input)
          (currentRulePref, othersPrefix) match {
            case (None(), None())   => None()
            case (c, None())        => c
            case (None(), o)        => o
            case (Some(c), Some(o)) => if c._1.size >= o._1.size then Some(c) else Some(o)
          }
        }
      }
    }.ensuring (res => 
      res.isEmpty 
      || 
        (
          res.isDefined && (
                            res.get._1.charsOf.list == res.get._1.originalCharacters && 
                            res.get._2.size < input.size && 
                            res.get._1.charsOf.list ++ res.get._2 == input
                          )
                       && res.get._1.value == res.get._1.rule.transformation.apply(seqFromList(res.get._1.originalCharacters))
                       && matchR(res.get._1.rule.regex, res.get._1.charsOf.list)
                       && rulesArg.contains(res.get._1.rule)
        )
      )

    @ghost
    def maxPrefixZipper[C: ClassTag : Hashable](
        rulesArg: List[Rule[C]],
        input: List[C]
    ): Option[(Token[C], List[C])] = {
      require(rulesValidInductive(rulesArg))
      require(!rulesArg.isEmpty)
      decreases(rulesArg.size)

      ghostExpr(ListUtils.lemmaIsPrefixRefl(input, input))
      rulesArg match {
        case Cons(hd, Nil()) => maxPrefixOneRuleZipper(hd, input)
        case Cons(hd, tl) => {
          val currentRulePref = maxPrefixOneRuleZipper(hd, input)
          val othersPrefix = maxPrefixZipper(tl, input)
          (currentRulePref, othersPrefix) match {
            case (None(), None())   => None()
            case (c, None())        => c
            case (None(), o)        => o
            case (Some(c), Some(o)) => if c._1.size >= o._1.size then Some(c) else Some(o)
          }
        }
      }
    }.ensuring (res => res == maxPrefix(rulesArg, input))

    def maxPrefixZipperSequence[C: ClassTag : Hashable](
        rulesArg: List[Rule[C]],
        input: Sequence[C]
    ): Option[(Token[C], Sequence[C])] = {
      require(rulesValidInductive(rulesArg))
      require(!rulesArg.isEmpty)
      decreases(rulesArg.size)

      ghostExpr(ListUtils.lemmaIsPrefixRefl(input.list, input.list))
      rulesArg match {
        case Cons(hd, Nil()) => maxPrefixOneRuleZipperSequence(hd, input)
        case Cons(hd, tl) => {
          val currentRulePref = maxPrefixOneRuleZipperSequence(hd, input)
          val othersPrefix = maxPrefixZipperSequence(tl, input)
          (currentRulePref, othersPrefix) match {
            case (None(), None())   => None()
            case (c, None())        => c
            case (None(), o)        => o
            case (Some(c), Some(o)) => if c._1.size >= o._1.size then Some(c) else Some(o)
          }
        }
      }
    }.ensuring (res => res.isDefined == maxPrefixZipper(rulesArg, input.list).isDefined && 
                       (if res.isDefined then res.get._1 == maxPrefixZipper(rulesArg, input.list).get._1 && 
                          res.get._2.list == maxPrefixZipper(rulesArg, input.list).get._2
                       else true) && 
                       (if res.isDefined then res.get._1 == maxPrefix(rulesArg, input.list).get._1 && 
                          res.get._2.list == maxPrefix(rulesArg, input.list).get._2
                       else true)
                       )

    def maxPrefixZipperSequenceMem[C: ClassTag : Hashable](
            rulesArg: List[Rule[C]],
            input: Sequence[C]
        )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Option[(Token[C], Sequence[C])] = {
          require(rulesValidInductive(rulesArg))
          require(!rulesArg.isEmpty)
          require(cacheUp.valid)
          require(cacheDown.valid)
          decreases(rulesArg.size)

          ghostExpr(ListUtils.lemmaIsPrefixRefl(input.list, input.list))
          rulesArg match {
            case Cons(hd, Nil()) => maxPrefixOneRuleZipperSequenceMem(hd, input)
            case Cons(hd, tl) => {
              val currentRulePref = maxPrefixOneRuleZipperSequenceMem(hd, input)
              val othersPrefix = maxPrefixZipperSequenceMem(tl, input)
              (currentRulePref, othersPrefix) match {
                case (None(), None())   => None()
                case (c, None())        => c
                case (None(), o)        => o
                case (Some(c), Some(o)) => if c._1.size >= o._1.size then Some(c) else Some(o)
              }
            }
          }
        }.ensuring (res => res == maxPrefixZipperSequence(rulesArg, input) && cacheUp.valid && cacheDown.valid)

    def maxPrefixZipperSequenceV2[C: ClassTag : Hashable](
        rulesArg: List[Rule[C]],
        input: Sequence[C],
        totalInput: Sequence[C]
    ): Option[(Token[C], Sequence[C])] = {
      require(rulesValidInductive(rulesArg))
      require(!rulesArg.isEmpty)
      require(ListUtils.isSuffix(input.list, totalInput.list))
      decreases(rulesArg.size)


      ghostExpr(ListUtils.lemmaIsPrefixRefl(input.list, input.list))
      rulesArg match {
        case Cons(hd, Nil()) => maxPrefixOneRuleZipperSequenceV2(hd, input, totalInput)
        case Cons(hd, tl) => {
          val currentRulePref = maxPrefixOneRuleZipperSequenceV2(hd, input, totalInput)
          val othersPrefix = maxPrefixZipperSequenceV2(tl, input, totalInput)
          (currentRulePref, othersPrefix) match {
            case (None(), None())   => None()
            case (c, None())        => c
            case (None(), o)        => o
            case (Some(c), Some(o)) => if c._1.size >= o._1.size then Some(c) else Some(o)
          }
        }
      }
    }.ensuring (res => res.isDefined == maxPrefixZipper(rulesArg, input.list).isDefined && 
                       (if res.isDefined then res.get._1 == maxPrefixZipper(rulesArg, input.list).get._1 && 
                          res.get._2.list == maxPrefixZipper(rulesArg, input.list).get._2
                       else true) && 
                       (if res.isDefined then res.get._1 == maxPrefix(rulesArg, input.list).get._1 && 
                          res.get._2.list == maxPrefix(rulesArg, input.list).get._2
                       else true)
                       )

    def maxPrefixZipperSequenceV2Mem[C: ClassTag : Hashable](
            rulesArg: List[Rule[C]],
            input: Sequence[C],
            totalInput: Sequence[C]
        )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C], cacheFindLongestMatch: CacheFindLongestMatch[C]): Option[(Token[C], Sequence[C])] = {
          require(rulesValidInductive(rulesArg))
          require(!rulesArg.isEmpty)
          require(ListUtils.isSuffix(input.list, totalInput.list))
          require(cacheUp.valid && cacheDown.valid && cacheFindLongestMatch.valid)
          require(cacheFindLongestMatch.totalInput == totalInput)

          decreases(rulesArg.size)

          ghostExpr(ListUtils.lemmaIsPrefixRefl(input.list, input.list))
          rulesArg match {
            case Cons(hd, Nil()) => maxPrefixOneRuleZipperSequenceV2Mem(hd, input, totalInput)
            case Cons(hd, tl) => {
              val currentRulePref = maxPrefixOneRuleZipperSequenceV2Mem(hd, input, totalInput)
              val othersPrefix = maxPrefixZipperSequenceV2Mem(tl, input, totalInput)
              (currentRulePref, othersPrefix) match {
                case (None(), None())   => None()
                case (c, None())        => c
                case (None(), o)        => o
                case (Some(c), Some(o)) => if c._1.size >= o._1.size then Some(c) else Some(o)
              }
            }
          }
        }.ensuring (res => res == maxPrefixZipperSequenceV2(rulesArg, input, totalInput) && 
                           cacheUp.valid && cacheDown.valid && cacheFindLongestMatch.valid && 
                           cacheFindLongestMatch.totalInput == totalInput)

    def maxPrefixZipperSequenceV2MemOnlyDeriv[C: ClassTag : Hashable](
            rulesArg: List[Rule[C]],
            input: Sequence[C],
            totalInput: Sequence[C]
        )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Option[(Token[C], Sequence[C])] = {
          require(rulesValidInductive(rulesArg))
          require(!rulesArg.isEmpty)
          require(ListUtils.isSuffix(input.list, totalInput.list))
          require(cacheUp.valid && cacheDown.valid)

          decreases(rulesArg.size)

          ghostExpr(ListUtils.lemmaIsPrefixRefl(input.list, input.list))
          rulesArg match {
            case Cons(hd, Nil()) => maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv(hd, input, totalInput)
            case Cons(hd, tl) => {
              val currentRulePref = maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv(hd, input, totalInput)
              val othersPrefix = maxPrefixZipperSequenceV2MemOnlyDeriv(tl, input, totalInput)
              (currentRulePref, othersPrefix) match {
                case (None(), None())   => None()
                case (c, None())        => c
                case (None(), o)        => o
                case (Some(c), Some(o)) => if c._1.size >= o._1.size then Some(c) else Some(o)
              }
            }
          }
        }.ensuring (res => res == maxPrefixZipperSequenceV2(rulesArg, input, totalInput) && 
                           cacheUp.valid && cacheDown.valid)

    /** Finds the biggest prefix matching any rule in the input list of characters If nothing matched a rule, returns None Else, returns the matched
      * prefix and the remaining suffix
      *
      * @param rule
      * @param input
      */
    @ghost
    def maxPrefixOneRule[C: ClassTag : Hashable](
        rule: Rule[C],
        input: List[C]
    ): Option[(Token[C], List[C])] = {
      require(ruleValid(rule))

      val (longestPrefix, suffix) = findLongestMatch(rule.regex, input)
      if (longestPrefix.isEmpty) {
        None[(Token[C], List[C])]()
      } else {
        ghostExpr(longestMatchIsAcceptedByMatchOrIsEmpty(rule.regex, input))
        ghostExpr(rule.transformation.lemmaSemiInverse(seqFromList(longestPrefix)))
        Some[(Token[C], List[C])]((Token(rule.transformation.apply(seqFromList(longestPrefix)), rule, seqFromList(longestPrefix).size, longestPrefix), suffix))
      }

    }.ensuring (res =>
      res.isEmpty || matchR(
        rule.regex,
        res.get._1.charsOf.list
      ) && res.get._1.charsOf.list ++ res.get._2 == input && res.get._2.size < input.size && res.get._1.rule == rule
      && res.get._1.value == res.get._1.rule.transformation.apply(seqFromList(res.get._1.originalCharacters))
      && res.get._1.size == res.get._1.originalCharacters.size
    )

    @ghost
    def maxPrefixOneRuleZipper[C: ClassTag : Hashable](
        rule: Rule[C],
        input: List[C]
    ): Option[(Token[C], List[C])] = {
      require(ruleValid(rule))

      val (longestPrefix, suffix) = findLongestMatchWithZipper(rule.regex, input)
      if (longestPrefix.isEmpty) {
        None[(Token[C], List[C])]()
      } else {
        ghostExpr(longestMatchIsAcceptedByMatchOrIsEmpty(rule.regex, input))
        ghostExpr(rule.transformation.lemmaInv())
        ghostExpr(rule.transformation.lemmaSemiInverse(seqFromList(longestPrefix)))
        Some[(Token[C], List[C])]((Token(rule.transformation.apply(seqFromList(longestPrefix)), rule, longestPrefix.size, longestPrefix), suffix))
      }
    }.ensuring (res => res == maxPrefixOneRule(rule, input))

    def maxPrefixOneRuleZipperSequence[C: ClassTag : Hashable](
        rule: Rule[C],
        input: Sequence[C]
    ): Option[(Token[C], Sequence[C])] = {
      require(ruleValid(rule))

      val (longestPrefix, suffix) = findLongestMatchWithZipperSequence(rule.regex, input)
      if (longestPrefix.isEmpty) {
        None[(Token[C], Sequence[C])]()
      } else {
        ghostExpr(longestMatchIsAcceptedByMatchOrIsEmpty(rule.regex, input.list))
        ghostExpr(rule.transformation.lemmaInv())
        ghostExpr(assert(semiInverseModEq(rule.transformation.toChars, rule.transformation.toValue)))
        ghostExpr(assert(semiInverseBodyModEq(rule.transformation.toChars, rule.transformation.toValue)))
        ghostExpr(ForallOf((chars: Sequence[C]) => rule.transformation.toChars(rule.transformation.toValue(chars)).list == chars.list)(longestPrefix))
        ghostExpr(ForallOf((chars: Sequence[C]) => rule.transformation.toChars(rule.transformation.toValue(chars)).list == chars.list)(seqFromList(longestPrefix.list)))
        ghostExpr({
          val res = Some[(Token[C], Sequence[C])]((Token(rule.transformation.apply(longestPrefix), rule, longestPrefix.size, longestPrefix.list), suffix))
          
          assert(res.isDefined == maxPrefixOneRule(rule, input.list).isDefined )
          assert(res.isDefined)
          assert(seqFromList(longestPrefix.list).list == longestPrefix.list)
          ghostExpr(rule.transformation.lemmaEqSameImage(longestPrefix, seqFromList(longestPrefix.list)))
          assert(rule.transformation.apply(seqFromList(longestPrefix.list)) == rule.transformation.apply(longestPrefix))
          assert(maxPrefixOneRule(rule, input.list).get._1.value == rule.transformation.apply(longestPrefix))
          assert(maxPrefixOneRule(rule, input.list).get._1.rule == rule)
          assert(maxPrefixOneRule(rule, input.list).get._1.size == longestPrefix.size)
          assert(maxPrefixOneRule(rule, input.list).get._1.originalCharacters == longestPrefix.list)
          assert(Token(rule.transformation.apply(longestPrefix), rule, longestPrefix.size, longestPrefix.list) == maxPrefixOneRule(rule, input.list).get._1)
          assert(res.get._1 == maxPrefixOneRule(rule, input.list).get._1)
          assert(res.get._2.list == maxPrefixOneRule(rule, input.list).get._2)

        })  
        Some[(Token[C], Sequence[C])]((Token(rule.transformation.apply(longestPrefix), rule, longestPrefix.size, longestPrefix.list), suffix))
      }

    }.ensuring (res => res.isDefined == maxPrefixOneRule(rule, input.list).isDefined && 
                       (if res.isDefined then res.get._1 == maxPrefixOneRule(rule, input.list).get._1 && 
                          res.get._2.list == maxPrefixOneRule(rule, input.list).get._2
                       else true))

    def maxPrefixOneRuleZipperSequenceMem[C: ClassTag : Hashable](
        rule: Rule[C],
        input: Sequence[C]
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Option[(Token[C], Sequence[C])] = {
      require(ruleValid(rule))
      require(cacheUp.valid)
      require(cacheDown.valid)

      val (longestPrefix, suffix) = findLongestMatchWithZipperSequenceMem(rule.regex, input)
      assert((longestPrefix, suffix) == findLongestMatchWithZipperSequence(rule.regex, input))
      
      if (longestPrefix.isEmpty) {
        None[(Token[C], Sequence[C])]()
      } else {
        ghostExpr(longestMatchIsAcceptedByMatchOrIsEmpty(rule.regex, input.list))
        ghostExpr(rule.transformation.lemmaSemiInverse(longestPrefix))
        Some[(Token[C], Sequence[C])]((Token(rule.transformation.apply(longestPrefix), rule, longestPrefix.size, longestPrefix.list), suffix))
      }

    }.ensuring (res => res == maxPrefixOneRuleZipperSequence(rule, input) && cacheUp.valid && cacheDown.valid)

    def maxPrefixOneRuleZipperSequenceV2[C: ClassTag : Hashable](
        rule: Rule[C],
        input: Sequence[C],
        totalInput: Sequence[C]
    ): Option[(Token[C], Sequence[C])] = {
      require(ruleValid(rule))
      require(ListUtils.isSuffix(input.list, totalInput.list))

      val (longestPrefix, suffix) = findLongestMatchWithZipperSequenceV2(rule.regex, input, totalInput)
      if (longestPrefix.isEmpty) {
        None[(Token[C], Sequence[C])]()
      } else {
        ghostExpr({
          longestMatchIsAcceptedByMatchOrIsEmpty(rule.regex, input.list)
          rule.transformation.lemmaInv()
          assert(semiInverseModEq(rule.transformation.toChars, rule.transformation.toValue))
          assert(semiInverseBodyModEq(rule.transformation.toChars, rule.transformation.toValue))
          ForallOf((chars: Sequence[C]) => rule.transformation.toChars(rule.transformation.toValue(chars)).list == chars.list)(longestPrefix)
          ForallOf((chars: Sequence[C]) => rule.transformation.toChars(rule.transformation.toValue(chars)).list == chars.list)(seqFromList(longestPrefix.list))
          val res = Some[(Token[C], Sequence[C])]((Token(rule.transformation.apply(longestPrefix), rule, longestPrefix.size, longestPrefix.list), suffix))
          
          assert(res.isDefined == maxPrefixOneRule(rule, input.list).isDefined )
          assert(res.isDefined)
          assert(seqFromList(longestPrefix.list).list == longestPrefix.list)
          ghostExpr(rule.transformation.lemmaEqSameImage(longestPrefix, seqFromList(longestPrefix.list)))
          assert(rule.transformation.apply(seqFromList(longestPrefix.list)) == rule.transformation.apply(longestPrefix))
          assert(maxPrefixOneRule(rule, input.list).get._1.value == rule.transformation.apply(longestPrefix))
          assert(maxPrefixOneRule(rule, input.list).get._1.rule == rule)
          assert(maxPrefixOneRule(rule, input.list).get._1.size == longestPrefix.size)
          assert(maxPrefixOneRule(rule, input.list).get._1.originalCharacters == longestPrefix.list)
          assert(Token(rule.transformation.apply(longestPrefix), rule, longestPrefix.size, longestPrefix.list) == maxPrefixOneRule(rule, input.list).get._1)
          assert(res.get._1 == maxPrefixOneRule(rule, input.list).get._1)
          assert(res.get._2.list == maxPrefixOneRule(rule, input.list).get._2)

        })  
        Some[(Token[C], Sequence[C])]((Token(rule.transformation.apply(longestPrefix), rule, longestPrefix.size, longestPrefix.list), suffix))
      }

    }.ensuring (res => res.isDefined == maxPrefixOneRule(rule, input.list).isDefined && 
                       (if res.isDefined then res.get._1 == maxPrefixOneRule(rule, input.list).get._1 && 
                          res.get._2.list == maxPrefixOneRule(rule, input.list).get._2
                       else true))


    def maxPrefixOneRuleZipperSequenceV2Mem[C: ClassTag : Hashable](
        rule: Rule[C],
        input: Sequence[C],
        totalInput: Sequence[C]
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C], cacheFindLongestMatch: CacheFindLongestMatch[C]): Option[(Token[C], Sequence[C])] = {
      require(ruleValid(rule))
      require(cacheUp.valid)
      require(cacheDown.valid)
      require(cacheFindLongestMatch.valid)
      require(ListUtils.isSuffix(input.list, totalInput.list))
      require(cacheFindLongestMatch.totalInput == totalInput)

      val (longestPrefix, suffix) = findLongestMatchWithZipperSequenceV2Mem(rule.regex, input, totalInput)
      ghostExpr(assert((longestPrefix, suffix) == findLongestMatchWithZipperSequenceV2(rule.regex, input, totalInput)))
      
      if (longestPrefix.isEmpty) {
        None[(Token[C], Sequence[C])]()
      } else {
        ghostExpr(longestMatchIsAcceptedByMatchOrIsEmpty(rule.regex, input.list))
        ghostExpr(rule.transformation.lemmaSemiInverse(longestPrefix))
        Some[(Token[C], Sequence[C])]((Token(rule.transformation.apply(longestPrefix), rule, longestPrefix.size, longestPrefix.list), suffix))
      }

    }.ensuring (res => res == maxPrefixOneRuleZipperSequenceV2(rule, input, totalInput) && 
                       cacheUp.valid && cacheDown.valid && cacheFindLongestMatch.valid && 
                       cacheFindLongestMatch.totalInput == totalInput)

    def maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv[C: ClassTag : Hashable](
        rule: Rule[C],
        input: Sequence[C],
        totalInput: Sequence[C]
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Option[(Token[C], Sequence[C])] = {
      require(ruleValid(rule))
      require(cacheUp.valid)
      require(cacheDown.valid)
      require(ListUtils.isSuffix(input.list, totalInput.list))

      val (longestPrefix, suffix) = findLongestMatchWithZipperSequenceV2MemOnlyDeriv(rule.regex, input, totalInput)
      ghostExpr(assert((longestPrefix, suffix) == findLongestMatchWithZipperSequenceV2(rule.regex, input, totalInput)))
      
      if (longestPrefix.isEmpty) {
        None[(Token[C], Sequence[C])]()
      } else {
        ghostExpr(longestMatchIsAcceptedByMatchOrIsEmpty(rule.regex, input.list))
        ghostExpr(rule.transformation.lemmaSemiInverse(longestPrefix))
        Some[(Token[C], Sequence[C])]((Token(rule.transformation.apply(longestPrefix), rule, longestPrefix.size, longestPrefix.list), suffix))
      }

    }.ensuring (res => res == maxPrefixOneRuleZipperSequenceV2(rule, input, totalInput) && 
                       cacheUp.valid && cacheDown.valid)

    // Proofs --------------------------------------------------------------------------------------------------------------------------------

    // Correctness ---------------------------------------------------------------------------------------------------------------------------

    // The lexer is sound, i.e., if it produces a Tokenisation, it is valid w.r.t. the biggest prefix property
    @ghost
    @opaque
    @inlineOnce
    @pure
    def theoremLexSoundFirstChar[C: ClassTag : Hashable](
        rules: List[Rule[C]],
        input: List[C],
        suffix: List[C],
        tokens: List[Token[C]],
        r: Rule[C],
        otherR: Rule[C],
        otherP: List[C]
    ): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rules.contains(r))
      require(rules.contains(otherR))
      require({
        val (lexedTokens, lexedSuffix) = lex(rules, seqFromList(input))
        (lexedTokens.list, lexedSuffix.list) == (tokens, suffix)
      })
      require(tokens.isEmpty || tokens.head.charsOf.size <= otherP.size)
      require(tokens.isEmpty || tokens.head.rule == r)
      require(ListUtils.isPrefix(otherP, input))
      require(r != otherR)
      require({
        lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(r, rules)
        tokens.isEmpty || matchR(r.regex, tokens.head.charsOf.list)
      })

      lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(otherR, rules)
      if (ListUtils.getIndex(rules, r) > ListUtils.getIndex(rules, otherR)) {
        tokens match {
          case Nil() => {
            lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone(otherR, rules, input)
            lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex(otherR, otherP, input)
          }
          case Cons(hd, tl) => {
            val (tok, suf) = maxPrefix(rules, input).get
            assert(hd == tok)
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(hd.charsOf.list, suf)
            ListUtils.lemmaSamePrefixThenSameSuffix(hd.charsOf.list, suf, hd.charsOf.list, ListUtils.getSuffix(input, hd.charsOf.list), input)
            if (otherP.size == hd.charsOf.list.size) {
              ListUtils.lemmaIsPrefixSameLengthThenSameList(hd.charsOf.list, otherP, input)
              lemmaMaxPrefNoSmallerRuleMatches(rules, r, hd.charsOf.list, input, otherR)
            } else {
              lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, hd.charsOf.list, input, suf, r)
              lemmaMaxPrefixOutputsMaxPrefix(rules, r, hd.charsOf.list, input, otherP, otherR)
            }
          }
        }
      } else {
        if (ListUtils.getIndex(rules, r) == ListUtils.getIndex(rules, otherR)) {
          ListUtils.lemmaSameIndexThenSameElement(rules, r, otherR)
          check(false)
        }

        tokens match {
          case Nil() => {
            lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone(otherR, rules, input)
            lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex(otherR, otherP, input)
          }
          case Cons(hd, tl) => {
            val (tok, suf) = maxPrefix(rules, input).get
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(hd.charsOf.list, suf)
            ListUtils.lemmaSamePrefixThenSameSuffix(hd.charsOf.list, suf, hd.charsOf.list, ListUtils.getSuffix(input, hd.charsOf.list), input)
            if (otherP.size > hd.charsOf.list.size) {
              lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, hd.charsOf.list, input, suf, r)
              lemmaMaxPrefixOutputsMaxPrefix(rules, r, hd.charsOf.list, input, otherP, otherR)
            }

          }
        }
      }

    }.ensuring (_ =>
      if (ListUtils.getIndex(rules, otherR) < ListUtils.getIndex(rules, r)) !matchR(otherR.regex, otherP)
      else tokens.size > 0 && otherP.size <= tokens.head.charsOf.size || !matchR(otherR.regex, otherP)
    )

    @ghost override def maximalMunchPrinciple[C: ClassTag : Hashable](
        rules: List[Rule[C]],
        input: List[C],
        suffix: List[C],
        tokens: List[Token[C]],
        r: Rule[C],
        otherR: Rule[C],
        otherP: List[C]
    ): Boolean = {
      
      if (!rules.isEmpty) &&
        (rulesInvariant(rules)) &&
        (rules.contains(r)) &&
        (rules.contains(otherR)) &&
        ({
          val (lexedTokens: Sequence[Token[C]], lexedSuffix: Sequence[C]) = lex(rules, seqFromList(input))
          (lexedTokens.list, lexedSuffix.list) == (tokens, suffix)
        }) &&
        (tokens.isEmpty || tokens.head.charsOf.list.size <= otherP.size) &&
        (tokens.isEmpty || tokens.head.rule == r) &&
        (ListUtils.isPrefix(otherP, input)) &&
        (r != otherR) &&
        (tokens.isEmpty || VerifiedRegexMatcher.matchR(r.regex, tokens.head.charsOf.list)) 
      then
        theoremLexSoundFirstChar(rules, input, suffix, tokens, r, otherR, otherP)
        val (lexedTokens: Sequence[Token[C]], lexedSuffix: Sequence[C]) = lex(rules, seqFromList(input))
        assert(lexedTokens.list == tokens)
        assert(lexedSuffix.list == suffix)
        (if (ListUtils.getIndex(rules, otherR) < ListUtils.getIndex(rules, r)) !VerifiedRegexMatcher.matchR(otherR.regex, otherP)
        else tokens.size > 0 && otherP.size <= tokens.head.charsOf.list.size || !VerifiedRegexMatcher.matchR(otherR.regex, otherP))
      else 
        true
    }

    @ghost override def lexThenRulesProduceEachTokenIndividually[C: ClassTag : Hashable](rules: List[Rule[C]], input: List[C]): Boolean = {
      if (!rules.isEmpty && rulesInvariant(rules)) then
        val (tokens, suffix) = lex(rules, seqFromList(input))
        assert(lex(rules, seqFromList(input))._1.list == tokens.list)
        assert(lex(rules, seqFromList(input))._2.list == suffix.list)
        lemmaLexThenRulesProducesEachTokenIndividually(rules, input, tokens.list)
        rulesProduceEachTokenIndividuallyList(rules, tokens.list)
      else 
        true
    }

    // Invertability -------------------------------------------------------------------------------------------------------------------------

    @ghost
    def theoremInvertabilityWhenTokenListSeparable[C: ClassTag : Hashable](rules: List[Rule[C]], tokens: List[Token[C]]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividuallyList(rules, tokens))
      // Separability property
      require(tokensListTwoByTwoPredicateSeparableList(tokens, rules))
      decreases(tokens)

      tokens match {
        case Nil() => ()
        case Cons(hd, Nil()) => ()
        case Cons(hd, Cons(next, tl)) => {
          val input: Sequence[C] = print(seqFromList(tokens))
          val suffix: Sequence[C] = print(seqFromList(Cons(next, tl)))
          val (followingTokens, nextSuffix) = lex(rules, suffix)
          assert(input.list == hd.charsOf.list ++ suffix.list)
          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(hd.charsOf.list, suffix.list)

          theoremInvertabilityWhenTokenListSeparable(rules, Cons(next, tl))
          assert(lex(rules, suffix)._1.list == Cons(next, tl))
          assert(lex(rules, suffix)._2 == nextSuffix)
          seqFromListBHdTlConstructive(next, tl, followingTokens)
          assert(lex(rules, suffix)._1.list == seqFromList(Cons(next, tl)).list)
          assert(seqFromList(Cons(next, tl)).list == seqFromList(tl).prepend(next).list)
          assert(lex(rules, suffix)._1.list == seqFromList(tl).prepend(next).list)
          assert(separableTokensPredicate(hd, next, rules))
          
          val prefixOpt = maxPrefix(rules, input.list)
          // ----- to prove (!lex(rules, seqFromList(hd.characters.list))._1.isEmpty
          ghostExpr(unfold(print(singletonSeq(hd))))
          assert(print(singletonSeq(hd)).list == printList(List(hd)))
          assert(printList(List(hd)) == hd.charsOf.list)
          assert(print(singletonSeq(hd)).list == hd.charsOf.list)
          assert(rulesProduceIndividualToken(rules, hd))
          assert(!lex(rules, seqFromList(hd.charsOf.list))._1.isEmpty)
          // ----- end
          lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined(rules, hd.charsOf.list, suffix.list)

          assert(prefixOpt.isDefined)

          assert(separableTokensPredicate(hd, next, rules))

          assert(!VerifiedRegexMatcher.prefixMatchZipperSequence(rulesRegex(rules), hd.charsOf ++ singletonSeq(next.charsOf(0))))
          assert(!prefixMatch(rulesRegex(rules), hd.charsOf.list ++ singletonSeq(next.charsOf(0)).list))

          check(hd.charsOf.list == hd.originalCharacters)
          check(singletonSeq(next.charsOf(0)).list == List(next.originalCharacters.head))
          check(singletonSeq(next.charsOf(0)).list == List(suffix.list.head))
          check(singletonSeq(next.charsOf(0)).list == List(suffix.head))
          assert(maxPrefixZipperSequence(rules, seqFromList(hd.originalCharacters)).isDefined)
          check(maxPrefix(rules, hd.originalCharacters).isDefined)
          check(maxPrefix(rules, hd.charsOf.list).isDefined)
          check(maxPrefix(rules, hd.charsOf.list).isDefined)
          check(maxPrefix(rules, hd.charsOf.list).get._1 == hd)
          check(maxPrefix(rules, hd.charsOf.list).get._2.isEmpty)
          check(matchR(hd.rule.regex, hd.charsOf.list))
          check(hd.rule == hd.rule)
          assert(!prefixMatch(rulesRegex(rules), hd.originalCharacters ++ List(suffix.head)))
          assert(!prefixMatch(rulesRegex(rules), hd.charsOf.list ++ List(suffix.head)))


          lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame(rules, hd, hd.rule, suffix.list)
          
          assert(prefixOpt.get._1 == hd)
          assert(prefixOpt.get._2 == suffix.list)

          assert(hd == maxPrefixZipper(rules, input.list).get._1)
          assert(hd == maxPrefixZipperSequence(rules, input).get._1)
          assert(prefixOpt.get._2 == maxPrefixZipperSequence(rules, input).get._2.list)
          assert(suffix.list == maxPrefixZipperSequence(rules, input).get._2.list)

          assert(lex(rules, input)._1.list == followingTokens.prepend(hd).list)
          assert(lex(rules, input)._1.list == (seqFromList(tl).prepend(next)).prepend(hd).list)
          assert(lex(rules, input)._1.list == Cons(hd, Cons(next, tl)))
        }
      }

    }.ensuring(_ => lex(rules, print(seqFromList(tokens)))._1.list == tokens && lex(rules, print(seqFromList(tokens)))._2.isEmpty)

    @ghost
    override def separableTokensThenInvertibleThroughPrinting[C: ClassTag : Hashable](rules: List[Rule[C]], tokens: List[Token[C]]): Boolean = {

      if (!rules.isEmpty && 
          rulesInvariant(rules) && 
          rulesProduceEachTokenIndividually(rules, seqFromList(tokens)) && 
          tokensListTwoByTwoPredicateSeparable(seqFromList(tokens), 0, rules)) 
      then
        theoremInvertabilityWhenTokenListSeparable(rules, tokens)
        assert(lex(rules, print(seqFromList(tokens)))._1.list == tokens)
        lex(rules, print(seqFromList(tokens)))._1.list == tokens
      else 
        true
    }

    // IMPOSSIBLE VERSION LEFT FOR HISTORICAL REASONS !!!!!!!!!!!!!!!!!!!!!!!!
    // @ghost
    // def theoremInvertabilityWhenTokenListSeparable[C: ClassTag : Hashable](rules: List[Rule[C]], tokens: List[Token[C]]): Unit = {
    //   require(!rules.isEmpty)
    //   require(rulesInvariant(rules))
    //   require(rulesProduceEachTokenIndividually(rules, tokens))
    //   // Separability property
    //   require(tokensListTwoByTwoPredicate(tokens, separableTokensPredicate))
    //   decreases(tokens)

    //   tokens match {
    //     case Nil() => () // DONE
    //     case Cons(hd, Nil()) => () // DONE
    //     case Cons(hd, Cons(next, tl)) => {
    //       val input = print(tokens)
    //       val suffix = print(Cons(next, tl))
    //       val (followingTokens, nextSuffix) = lex(rules, suffix)
    //       assert(input == hd.characters ++ suffix)
    //       theoremInvertabilityWhenTokenListSeparable(rules, Cons(next, tl))
    //       assert(lex(rules, suffix)._1 == Cons(next, tl))
    //       assert(lex(rules, suffix)._2 == nextSuffix)

    //       assert(separableTokensPredicate(hd, next))

    //       // That turns out to be impossible to prove as it is not true, if the predicate does not include the rule
    //       /**
    //       Let’s take a counter example:

    //       - rules
    //           - r1 = ( (a|b)(a|b)* , “abToken”)
    //           - r2 = ( cc* , “cToken”)
    //           - r3 = ( (a|b|c)(a|b|c)* , ”abcToken”)
    //       - tokens = `List(Token("ab", r1), Token("cc", r2))`
    //           - This list satisfies the above as `r1.regex.usedCharacters = Set(’a’, ‘b’)` and `r2.regex.firstCharacters = Set('c')` which are disjoint
    //           - But if we print the list of tokens we get `"abcc"`  which would be tokenised to `List(Token("abcc", r3))`
    //       */

          

    //       assert(lex(rules, input)._1 == Cons(hd, Cons(next, tl)))
    //     }
    //   }

    // }.ensuring(_ => lex(rules, print(tokens))._1 == tokens)

    @ghost
    @opaque
    @inlineOnce
    def theoremInvertabilityFromTokensSepTokenWhenNeeded[C: ClassTag : Hashable](rules: List[Rule[C]], tokens: List[Token[C]], separatorToken: Token[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividually(rules, seqFromList(tokens)))
      require(rulesProduceIndividualToken(rules, separatorToken))
      require(separatorToken.rule.isSeparator)
      require(tokens.forall(!_.rule.isSeparator))
      require(LexerInterface.sepAndNonSepRulesDisjointChars(rules, rules))
      decreases(tokens)

      tokens match {
        case Cons(hd, tl) => {
          val input = printWithSeparatorTokenWhenNeededList(rules, tokens, separatorToken)
          assert(input == printWithSeparatorTokenWhenNeededRec(rules, seqFromList(tokens), separatorToken, from = 0).list)
          assert(seqFromList(input).list == printWithSeparatorTokenWhenNeededRec(rules, seqFromList(tokens), separatorToken, from = 0).list)
          val suffixWithSep = separatorToken.charsOf.list ++ printWithSeparatorTokenWhenNeededList(rules, tl, separatorToken)
          ListUtils.lemmaConcatAssociativity(
            hd.charsOf.list,
            separatorToken.charsOf.list,
            printWithSeparatorTokenWhenNeededList(rules, tl, separatorToken)
          )
          val suffixWithoutSep = printWithSeparatorTokenWhenNeededList(rules, tl, separatorToken)
          assert(suffixWithoutSep == printWithSeparatorTokenWhenNeededRec(rules, seqFromList(tl), separatorToken, from = 0).list)
          assert(input == hd.charsOf.list ++ suffixWithSep || input == hd.charsOf.list ++ suffixWithoutSep)

          // ----- to prove (!lex(rules, seqFromList(hd.characters.list))._1.isEmpty
          unfold(print(singletonSeq(hd)))
          assert(print(singletonSeq(hd)).list == printList(List(hd)))
          assert(printList(List(hd)) == hd.charsOf.list)
          assert(print(singletonSeq(hd)).list == hd.charsOf.list)
          assert(rulesProduceIndividualToken(rules, hd))
          assert(!lex(rules, seqFromList(hd.charsOf.list))._1.isEmpty)
          // ----- end

          check(hd.charsOf.list == hd.originalCharacters)
          ListSpecs.forallContained(tokens, t => rulesProduceIndividualToken(rules, t), hd)
          assert(maxPrefixZipperSequence(rules, seqFromList(hd.originalCharacters)).isDefined)

          check(maxPrefix(rules, hd.charsOf.list).isDefined)

          check(maxPrefix(rules, hd.charsOf.list).get._1 == hd)
          check(maxPrefix(rules, hd.charsOf.list).get._2.isEmpty)
          check(matchR(hd.rule.regex, hd.charsOf.list))

          if (input == hd.charsOf.list ++ suffixWithSep) {
            val suffixAfterSep = printWithSeparatorTokenWhenNeededList(rules, tl, separatorToken)
            lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead(rules, tokens, separatorToken)
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(hd.charsOf.list, suffixWithSep)
            ListUtils.lemmaSamePrefixThenSameSuffix(hd.charsOf.list, suffixWithSep, hd.charsOf.list, maxPrefix(rules, input).get._2, input)

            val sepTokenOpt = maxPrefix(rules, suffixWithSep)
            if (tl.isEmpty) {
              assert(tokens == List(hd))
              assert(printWithSeparatorTokenWhenNeededList(rules, tl, separatorToken).isEmpty)
              assert(printWithSeparatorTokenWhenNeededList(rules, tokens, separatorToken) == hd.charsOf.list)
              assert(input == hd.charsOf.list ++ separatorToken.charsOf.list)
              check(false)
            }
            val nextToken = tl.head
            lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, tokens, nextToken)
            check(rulesProduceIndividualToken(rules, nextToken))

            ghostExpr(unfold(print(singletonSeq(separatorToken))))
            unfold(rulesProduceIndividualToken(rules, separatorToken))
            // assert(print(singletonSeq(separatorToken)).list == printList(List(separatorToken)))
            // assert(printList(List(separatorToken)) == separatorToken.characters.list)
            // assert(print(singletonSeq(separatorToken)) == separatorToken.characters)
            // assert(rulesProduceIndividualToken(rules, separatorToken))
            // assert(!lex(rules, seqFromList(separatorToken.characters.list))._1.isEmpty)
            // assert(maxPrefixZipperSequence(rules, separatorToken.originalCharacters).isDefined)
            // check(maxPrefix(rules, separatorToken.originalCharacters).isDefined)
            // check(maxPrefix(rules, separatorToken.characters.list).isDefined)
            // check(maxPrefix(rules, separatorToken.characters.list).isDefined)
            // check(maxPrefix(rules, separatorToken.characters.list).get._1 == separatorToken)
            // check(maxPrefix(rules, separatorToken.characters.list).get._2.isEmpty)
            // assert(maxPrefixZipperSequence(rules, separatorToken.characters).isDefined)
            // assert(maxPrefix(rules, separatorToken.characters.list).isDefined)
            // assert(maxPrefixZipperSequence(rules, separatorToken.characters).get._1 == separatorToken)
            // assert(maxPrefix(rules, separatorToken.characters.list).get._1 == separatorToken)
            lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, separatorToken.charsOf.list, separatorToken)

            val separatorRule = separatorToken.rule

            unfold(print(singletonSeq(nextToken)))
            unfold(rulesProduceIndividualToken(rules, nextToken))
            ListSpecs.forallContained(tokens, (t: Token[C]) => rulesProduceIndividualToken(rules, t), nextToken)
            // assert(print(singletonSeq(nextToken)).list == printList(List(nextToken)))
            // assert(printList(List(nextToken)) == nextToken.characters.list)
            // assert(print(singletonSeq(nextToken)) == nextToken.characters)
            // assert(rulesProduceIndividualToken(rules, nextToken))
            // assert(!lex(rules, seqFromList(nextToken.characters.list))._1.isEmpty)
            // check(maxPrefixZipperSequence(rules, nextToken.characters).isDefined)
            // assert(maxPrefix(rules, nextToken.characters.list).isDefined)
            // assert(maxPrefixZipperSequence(rules, nextToken.characters).get._1 == nextToken)
            // assert(maxPrefix(rules, nextToken.characters.list).get._1 == nextToken)
            lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, nextToken.charsOf.list, nextToken)
            val nextTokenRule = nextToken.rule

            if (!nextTokenRule.regex.usedCharacters.contains(nextToken.charsOf.list.head)) {
              lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(nextTokenRule.regex, nextToken.charsOf.list, nextToken.charsOf.list.head)
              check(false)
            }
            if (separatorRule.regex.usedCharacters.contains(suffixAfterSep.head)) {
              lemmaSepRuleNotContainsCharContainedInANonSepRule(rules, rules, nextTokenRule, separatorRule, suffixAfterSep.head)
              check(false)
            }
            assert(suffixWithSep == separatorToken.charsOf.list ++ suffixAfterSep)
            lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame(rules, separatorToken, separatorRule, suffixAfterSep, nextTokenRule)

            theoremInvertabilityFromTokensSepTokenWhenNeeded(rules, tl, separatorToken)

            assert(lex(rules, printWithSeparatorTokenWhenNeededRec(rules, seqFromList(tl), separatorToken, from = 0))._1.list.filter(!_.rule.isSeparator) == tl)
            assert(lexList(rules, printWithSeparatorTokenWhenNeededList(rules, tl, separatorToken))._1.filter(!_.rule.isSeparator) == tl)
            assert(lexList(rules, printWithSeparatorTokenWhenNeededList(rules, tokens, separatorToken))._1.filter(!_.rule.isSeparator) == tokens)
            assert(lex(rules, printWithSeparatorTokenWhenNeededRec(rules, seqFromList(tokens), separatorToken, from = 0))._1.list.filter(!_.rule.isSeparator) == tokens)
          } else {
            lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead(rules, tokens, separatorToken)
            theoremInvertabilityFromTokensSepTokenWhenNeeded(rules, tl, separatorToken)
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(hd.charsOf.list, suffixWithoutSep)
            ListUtils.lemmaSamePrefixThenSameSuffix(hd.charsOf.list, suffixWithoutSep, hd.charsOf.list, maxPrefix(rules, input).get._2, input)
          }
        }
        case Nil() => ()
      }
    }.ensuring (_ => lex(rules, printWithSeparatorTokenWhenNeededRec(rules, seqFromList(tokens), separatorToken, from = 0))._1.list.filter(!_.rule.isSeparator) == tokens)


    @ghost
    override def invertibleThroughPrintingWithSeparatorWhenNeeded[C: ClassTag : Hashable](rules: List[Rule[C]], tokens: List[Token[C]], separatorToken: Token[C]): Boolean = {
      if (!rules.isEmpty && 
          rulesInvariant(rules) && 
          rulesProduceEachTokenIndividually(rules, seqFromList(tokens)) &&
          LexerInterface.sepAndNonSepRulesDisjointChars(rules, rules) && 
          rulesProduceIndividualToken(rules, separatorToken) &&
          tokens.forall(t => !t.rule.isSeparator) &&
          separatorToken.rule.isSeparator
          ) 
      then 
            theoremInvertabilityFromTokensSepTokenWhenNeeded(rules, tokens, separatorToken)
            (lex(rules, printWithSeparatorTokenWhenNeededRec(rules, seqFromList(tokens), separatorToken, from = 0))._1.list.filter(!_.rule.isSeparator) == tokens)
      else 
        true
    }

    @ghost
    @opaque
    @inlineOnce
    def theoremInvertFromTokensSepTokenBetweenEach[C: ClassTag : Hashable](rules: List[Rule[C]], tokens: List[Token[C]], separatorToken: Token[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividually(rules, seqFromList(tokens)))
      require(rulesProduceIndividualToken(rules, separatorToken))
      require(separatorToken.rule.isSeparator)
      require(tokens.forall(!_.rule.isSeparator))
      require(LexerInterface.sepAndNonSepRulesDisjointChars(rules, rules))
      decreases(tokens.size)

      tokens match {
        case Nil() => ()
        case Cons(hd, Nil()) => {
          // ----- to prove (!lex(rules, seqFromList(hd.characters.list))._1.isEmpty
          unfold(print(singletonSeq(hd)))
          assert(print(singletonSeq(hd)).list == printList(List(hd)))
          assert(printList(List(hd)) == hd.charsOf.list)
          assert(print(singletonSeq(hd)).list == hd.charsOf.list)
          assert(rulesProduceIndividualToken(rules, hd))
          assert(!lex(rules, seqFromList(hd.charsOf.list))._1.isEmpty)
          // ----- end

          ListSpecs.forallContained(tokens, (t: Token[C]) => !t.rule.isSeparator, hd)
          assert(!hd.rule.isSeparator)
          val input: Sequence[C] = printWithSeparatorToken(seqFromList(tokens), separatorToken)
          assert(input.list == hd.charsOf.list ++ separatorToken.charsOf.list)
          ListUtils.lemmaGetSuffixOnListWithItSelfIsEmpty(hd.charsOf.list)
          lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, tokens, hd)
          lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, hd.charsOf.list, hd)
          val rule = hd.rule
          assert(!rule.isSeparator)
          lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, separatorToken.charsOf.list, separatorToken)
          val separatorRule = separatorToken.rule
          lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, hd.charsOf.list, hd.charsOf.list, Nil(), rule)

          if (!separatorRule.regex.usedCharacters.contains(separatorToken.charsOf.list.head)) {
            lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(
              separatorRule.regex,
              separatorToken.charsOf.list,
              separatorToken.charsOf.list.head
            )
            check(false)
          }
          assert(separatorRule.regex.usedCharacters.contains(separatorToken.charsOf.list.head))

          lemmaNonSepRuleNotContainsCharContainedInASepRule(rules, rules, rule, separatorRule, separatorToken.charsOf.list.head)

          lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame(rules, hd, rule, separatorToken.charsOf.list, separatorRule)

          val suffix = maxPrefix(rules, input.list).get._2

          // needed
          val ret: (List[Token[C]], List[C]) = maxPrefix(rules, input.list) match {
            case Some((t, s)) => {
              assert(s == suffix)
              assert(t == hd)
              val (followingTokens: List[Token[C]], nextSuffix: List[C]) = lexList(rules, s)
              assert(nextSuffix.isEmpty)
              assert(t.charsOf.list ++ s == input.list)
              (Cons(t, followingTokens), nextSuffix)
            }
            case None() => {
              check(false)
              (Nil(), input.list)
            }
          }

          assert(ret == lexList(rules, input.list))

          assert(lex(rules, printWithSeparatorToken(emptySeq[Token[C]](), separatorToken))._1.list.filter(!_.rule.isSeparator).isEmpty)
          assert(lexList(rules, printWithSeparatorTokenList(Nil(), separatorToken))._1.filter(!_.rule.isSeparator).isEmpty)
          assert(lexList(rules, printWithSeparatorTokenList(tokens, separatorToken))._1.filter(!_.rule.isSeparator) == tokens)
          assert(lex(rules, printWithSeparatorToken(seqFromList(tokens), separatorToken))._1.list.filter(!_.rule.isSeparator) == tokens)

        }
        case Cons(hd, Cons(nextT, tl)) => {

          // ----- to prove (!lex(rules, seqFromList(hd.characters.list))._1.isEmpty
          unfold(print(singletonSeq(hd)))
          assert(print(singletonSeq(hd)).list == printList(List(hd)))
          assert(printList(List(hd)) == hd.charsOf.list)
          assert(print(singletonSeq(hd)).list == hd.charsOf.list)
          assert(rulesProduceIndividualToken(rules, hd))
          assert(!lex(rules, seqFromList(hd.charsOf.list))._1.isEmpty)
          // ----- end


          ListSpecs.forallContained(tokens, (t: Token[C]) => !t.rule.isSeparator, hd)
          ListSpecs.forallContained(tokens, (t: Token[C]) => !t.rule.isSeparator, nextT)
          assert(!hd.rule.isSeparator)
          assert(!nextT.rule.isSeparator)
          val input: List[C] = printWithSeparatorTokenList(tokens, separatorToken)
          val suffixAfterSeparator: List[C] = printWithSeparatorTokenList(Cons(nextT, tl), separatorToken)
          val suffix: List[C] = separatorToken.charsOf.list ++ suffixAfterSeparator
          assert(suffixAfterSeparator == nextT.charsOf.list ++ separatorToken.charsOf.list ++ printWithSeparatorTokenList(tl, separatorToken))
          assert(input == hd.charsOf.list ++ separatorToken.charsOf.list ++ suffixAfterSeparator)



          ListUtils.lemmaConcatAssociativity(hd.charsOf.list, separatorToken.charsOf.list, suffixAfterSeparator)
          assert(input == hd.charsOf.list ++ suffix)
          lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, tokens, hd)
          lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, hd.charsOf.list, hd)
          val rule = hd.rule
          assert(!rule.isSeparator)
          lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, hd.charsOf.list, hd.charsOf.list, Nil(), rule)

          lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, separatorToken.charsOf.list, separatorToken)
          val separatorRule = separatorToken.rule

          if (!separatorRule.regex.usedCharacters.contains(separatorToken.charsOf.list.head)) {
            lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(
              separatorRule.regex,
              separatorToken.charsOf.list,
              separatorToken.charsOf.list.head
            )
            check(false)
          }

          unfold(print(singletonSeq(separatorToken)))
          unfold(rulesProduceIndividualToken(rules, separatorToken))
          unfold(print(singletonSeq(nextT)))
          unfold(rulesProduceIndividualToken(rules, nextT))
          ListSpecs.forallContained(tokens, (t: Token[C]) => rulesProduceIndividualToken(rules, t), nextT)

          assert(suffixAfterSeparator == nextT.charsOf.list ++ separatorToken.charsOf.list ++ printWithSeparatorTokenList(tl, separatorToken))
          lemmaNonSepRuleNotContainsCharContainedInASepRule(rules, rules, rule, separatorRule, separatorToken.charsOf.list.head)

          lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame(rules, hd, rule, suffix, separatorRule)

          lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, tokens, nextT)
          assert(rulesProduceIndividualToken(rules, nextT))
          lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, nextT.charsOf.list, nextT)
          val nextTRule = nextT.rule
          assert(!nextTRule.isSeparator)
          lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, nextT.charsOf.list, nextT.charsOf.list, Nil(), nextTRule)

          if (!nextTRule.regex.usedCharacters.contains(nextT.charsOf.list.head)) {
            lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(nextTRule.regex, nextT.charsOf.list, nextT.charsOf.list.head)
            check(false)
          }

          lemmaSepRuleNotContainsCharContainedInANonSepRule(rules, rules, nextTRule, separatorRule, nextT.charsOf.list.head)

          lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame(rules, separatorToken, separatorRule, suffixAfterSeparator, nextTRule)

          theoremInvertFromTokensSepTokenBetweenEach(rules, Cons(nextT, tl), separatorToken)

          assert(lex(rules, printWithSeparatorToken(seqFromList(Cons(nextT, tl)), separatorToken))._1.list.filter(!_.rule.isSeparator) == Cons(nextT, tl))
          assert(lexList(rules, printWithSeparatorTokenList(Cons(nextT, tl), separatorToken))._1.filter(!_.rule.isSeparator) == Cons(nextT, tl))
          assert(lexList(rules, printWithSeparatorTokenList(tokens, separatorToken))._1.filter(!_.rule.isSeparator) == tokens)
          assert(lex(rules, printWithSeparatorToken(seqFromList(tokens), separatorToken))._1.list.filter(!_.rule.isSeparator) == tokens)

        }
      }

    }.ensuring (_ => lex(rules, printWithSeparatorToken(seqFromList(tokens), separatorToken))._1.list.filter(!_.rule.isSeparator) == tokens)

    @ghost
    override def invertibleThroughPrintingWithSeparator[C: ClassTag : Hashable](rules: List[Rule[C]], tokens: List[Token[C]], separatorToken: Token[C]): Boolean = {
      if (!rules.isEmpty && 
          rulesInvariant(rules) && 
          rulesProduceEachTokenIndividually(rules, seqFromList(tokens)) &&
          LexerInterface.sepAndNonSepRulesDisjointChars(rules, rules) && 
          rulesProduceIndividualToken(rules, separatorToken) &&
          tokens.forall(t => !t.rule.isSeparator) &&
          separatorToken.rule.isSeparator
          ) 
      then 
            theoremInvertFromTokensSepTokenBetweenEach(rules, tokens, separatorToken)
            (lex(rules, printWithSeparatorToken(seqFromList(tokens), separatorToken))._1.list.filter(!_.rule.isSeparator) == tokens)
      else 
        true
    }

    @ghost
    @opaque
    @inlineOnce
    def theoremInvertFromString[C: ClassTag : Hashable](rules: List[Rule[C]], input: List[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      decreases(input.size)

      val (tokens, suffix) = lex(rules, seqFromList(input))
      if (suffix.isEmpty) {
        tokens.list match {
          case Cons(hd, Nil()) => ()
          case Cons(hd, tl)    => theoremInvertFromString(rules, maxPrefix(rules, input).get._2)
          case Nil()           => ()
        }
      } else {
        tokens.list match {
          case Cons(hd, Nil()) => assert(print(tokens).list ++ suffix.list == input)
          case Cons(hd, tl) => {
            seqFromListBHdTlConstructive(hd, tl, tokens)
            theoremInvertFromString(rules, maxPrefix(rules, input).get._2)
            lemmaRemovingFirstTokensCharactersPreservesLexSuffix(rules, input, tokens.list, suffix.list)

            assert(input == maxPrefix(rules, input).get._1.charsOf.list ++ maxPrefix(rules, input).get._2)
            assert(input == maxPrefix(rules, input).get._1.charsOf.list ++ (print(seqFromList(tl)).list ++ suffix.list))
            ListUtils.lemmaConcatAssociativity(
              maxPrefix(rules, input).get._1.charsOf.list,
              print(seqFromList(tl)).list,
              suffix.list
            )
          }
          case Nil() => assert(print(tokens).list ++ suffix.list == input)
        }
      }
    }.ensuring (_ => {
      val (tokens, suffix) = lex(rules, seqFromList(input))
      print(tokens).list ++ suffix.list == input
    })

    @ghost override def invertibleThroughLexing[C: ClassTag : Hashable](rules: List[Rule[C]], input: List[C]): Boolean = 
    if (!rules.isEmpty && rulesInvariant(rules)) then
      theoremInvertFromString(rules, input)
      val (tokens, suffix) = lex(rules, seqFromList(input))
      print(tokens).list ++ suffix.list == input
    else
      true

    // Functions -----------------------------------------------------------------------------------------------------------------------------

    def getRuleFromTag[C: ClassTag : Hashable](rules: List[Rule[C]], tag: String): Option[Rule[C]] = {
      require(rulesInvariant(rules))
      decreases(rules)
      rules match {
        case Cons(hd, tl) if hd.tag == tag => Some(hd)
        case Cons(hd, tl) if hd.tag != tag => {
          ghostExpr(lemmaInvariantOnRulesThenOnTail(hd, tl))
          getRuleFromTag(tl, tag)
        }
        case Nil() => None[Rule[C]]()
      }
    }.ensuring (res => res.isEmpty || rules.contains(res.get) && res.get.tag == tag)

    // Lemmas --------------------------------------------------------------------------------------------------------------------------------

    @ghost
    @inlineOnce
    @opaque
    def withSeparatorTokenListPreservesRulesProduceTokens[C: ClassTag : Hashable](rules: List[Rule[C]], l: List[Token[C]], separatorToken: Token[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividuallyList(rules, l))
      require(rulesProduceIndividualToken(rules, separatorToken))
      require(separatorToken.rule.isSeparator)
      decreases(l)
      l match {
        case Cons(hd, tl) => 
          ghostExpr({
            assert(l.contains(hd))
            ListSpecs.forallContained(l, t => rulesProduceIndividualToken(rules, t), hd)
          })
          rulesProduceIndividualToken(rules, hd)
          withSeparatorTokenListPreservesRulesProduceTokens(rules, tl, separatorToken)
        case Nil() => 
      }
    }.ensuring(_ => rulesProduceEachTokenIndividuallyList(rules, withSeparatorTokenList(l, separatorToken)))

    @ghost
    @inlineOnce
    @opaque
    def lemmaTokensOfDifferentKindsAreSeparable[C: ClassTag : Hashable](t1: Token[C], t2: Token[C], rules: List[Rule[C]]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceIndividualToken(rules, t1))
      require(rulesProduceIndividualToken(rules, t2))
      require(t1.rule.isSeparator != t2.rule.isSeparator)
      require(t2.charsOf.size > 0)
      require(LexerInterface.sepAndNonSepRulesDisjointChars(rules, rules))

      assert(t1.rule.isSeparator || !t1.rule.isSeparator)
      if (!separableTokensPredicate(t1, t2, rules)) {
        val pref = t1.charsOf.list ++ List(t2.charsOf(0))
        assert(VerifiedRegexMatcher.prefixMatch(rulesRegex(rules), pref))
        lemmaPrefixMatchThenExistsStringThatMatches(rulesRegex(rules), pref)
        assert(Exists((s: List[C]) => matchR(rulesRegex(rules), s) && ListUtils.isPrefix(pref, s)))
        val witness = pickWitness[List[C]](s => matchR(rulesRegex(rules), s) && ListUtils.isPrefix(pref, s))
        val suff = ListUtils.getSuffix(witness, pref)
        assert(witness == pref ++ suff)
        assert(pref.contains(t1.charsOf(0)))
        assert(witness.contains(t1.charsOf(0)))
        assert(pref.contains(t2.charsOf(0)))
        assert(witness.contains(t2.charsOf(0)))
        assert(matchR(rulesRegex(rules), witness))
        matchRGenUnionSpec(rulesRegex(rules), rules.map(_.regex), witness)
        assert(rules.map(_.regex).exists(rr => validRegex(rr) && matchR(rr, witness)))
        val rr: Regex[C] = ListUtils.getWitness(rules.map(_.regex), rr => validRegex(rr) && matchR(rr, witness))
        assert(rules.map(_.regex).contains(rr))
        ListUtils.lemmaMapContains(rules, r => r.regex, rr)
        assert(rules.exists(r => r.regex == rr))
        val rule = ListUtils.getWitness(rules, r => r.regex == rr)
        assert(rulesProduceIndividualToken(rules, t1))
        assert(lex(rules, print(singletonSeq(t1)))._1.list == List(t1))
        assert(lex(rules, print(singletonSeq(t1)))._2.isEmpty)
        assert(lexList(rules, print(singletonSeq(t1)).list) == (List(t1), Nil[C]()))
        assert(maxPrefix(rules, t1.charsOf.list) == Some((t1, Nil[C]())))
        assert(rules.contains(t1.rule))
        assert(rulesProduceIndividualToken(rules, t2))
        assert(lex(rules, print(singletonSeq(t2)))._1.list == List(t2))
        assert(lex(rules, print(singletonSeq(t2)))._2.isEmpty)
        assert(lexList(rules, print(singletonSeq(t2)).list) == (List(t2), Nil[C]()))
        assert(maxPrefix(rules, t2.charsOf.list) == Some((t2, Nil[C]())))
        assert(rules.contains(t2.rule))
        assert(rules.contains(rule))
        ListSpecs.forallContained(rules, ruleValid, rule)
        ListSpecs.forallContained(rules, ruleValid, t1.rule)
        ListSpecs.forallContained(rules, ruleValid, t2.rule)
        assert(matchR(t1.rule.regex, t1.charsOf.list))
        assert(matchR(t2.rule.regex, t2.charsOf.list))
        if(!t1.rule.regex.usedCharacters.contains(t1.charsOf(0))){
          lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(t1.rule.regex, t1.charsOf.list, t1.charsOf.list.head)
          check(false)  
        }
        assert(t1.rule.regex.usedCharacters.contains(t1.charsOf(0)))
        if(!t2.rule.regex.usedCharacters.contains(t2.charsOf(0))){
          lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(t2.rule.regex, t2.charsOf.list, t2.charsOf.list.head)
          check(false)
        }
        assert(t2.rule.regex.usedCharacters.contains(t2.charsOf(0)))
        check(rule.regex == rr)
        if(rule.isSeparator) {
          if(t1.rule.isSeparator) {
            lemmaSepRuleNotContainsCharContainedInANonSepRule(rules, rules, t2.rule, rule, t2.charsOf(0))
            assert(!rule.regex.usedCharacters.contains(t2.charsOf(0)))
            lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(rr, witness, t2.charsOf(0))
            check(false)
          } else {
            assert(!t1.rule.isSeparator)
            lemmaSepRuleNotContainsCharContainedInANonSepRule(rules, rules, t1.rule, rule, t1.charsOf(0))
            assert(!rule.regex.usedCharacters.contains(t1.charsOf(0)))
            lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(rr, witness, t1.charsOf(0))
            check(false)
          }
        } else {
          if(t1.rule.isSeparator) {
            assert(!t2.rule.isSeparator)
            lemmaNonSepRuleNotContainsCharContainedInASepRule(rules, rules, rule, t1.rule, t1.charsOf(0))
            assert(!rule.regex.usedCharacters.contains(t1.charsOf(0)))
            lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(rr, witness, t1.charsOf(0))
            check(false)
          } else {
            assert(!t1.rule.isSeparator)
            lemmaNonSepRuleNotContainsCharContainedInASepRule(rules, rules, rule, t2.rule, t2.charsOf(0))
            assert(!rule.regex.usedCharacters.contains(t2.charsOf(0)))
            lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(rr, witness, t2.charsOf(0))
            check(false)
          }
        }
        check(false)
      }
    }.ensuring(_ => separableTokensPredicate(t1, t2, rules))

    @ghost
    @inlineOnce
    @opaque
    def printWithSeparatorTokenImpliesSeparableTokensList[C: ClassTag : Hashable](rules: List[Rule[C]], l: List[Token[C]], separatorToken: Token[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividuallyList(rules, l))
      require(rulesProduceIndividualToken(rules, separatorToken))
      require(separatorToken.rule.isSeparator)
      require(l.forall(!_.rule.isSeparator))
      require(LexerInterface.sepAndNonSepRulesDisjointChars(rules, rules))
      decreases(l)

      withSeparatorTokenListPreservesRulesProduceTokens(rules, l, separatorToken)
      withSeparatorTokenList(l, separatorToken) match {
        case Cons(hd, Cons(sep, withSepTl)) => 
          assert(withSepTl == withSeparatorTokenList(l.tail, separatorToken))
          assert(l.head == hd)
          assert(sep == separatorToken)
          lemmaTokensOfDifferentKindsAreSeparable(hd, sep, rules)
          assert(separableTokensPredicate(hd, sep, rules))
          printWithSeparatorTokenImpliesSeparableTokensList(rules, l.tail, separatorToken)
          if (withSepTl.isEmpty) {
            assert(tokensListTwoByTwoPredicateSeparableList(withSeparatorTokenList(l, separatorToken), rules))
          } else {
            lemmaTokensOfDifferentKindsAreSeparable(sep, withSepTl.head, rules)
            assert(separableTokensPredicate(sep, withSepTl.head, rules))
            assert(tokensListTwoByTwoPredicateSeparableList(withSeparatorTokenList(l, separatorToken), rules))
          }
        case _ => 
          assert(tokensListTwoByTwoPredicateSeparableList(withSeparatorTokenList(l, separatorToken), rules))
      }
    }.ensuring(_ => {
      withSeparatorTokenListPreservesRulesProduceTokens(rules, l, separatorToken)
      tokensListTwoByTwoPredicateSeparableList(withSeparatorTokenList(l, separatorToken), rules)
    })


    @ghost
    @opaque
    @inlineOnce
    def lemmaPrintConcatSameAsConcatPrint[C: ClassTag : Hashable](tokens1: List[Token[C]], tokens2: List[Token[C]]): Unit = {
      decreases(tokens1)

      tokens1 match {
        case Cons(hd, tl) => {
          if (tl.isEmpty) {
            assert(printList(tokens1) == hd.charsOf.list)
            assert(tokens1 ++ tokens2 == Cons(hd, tokens2))
            unfold(printList(Cons(hd, tokens2)))
            assert(printList(Cons(hd, tokens2)) == hd.charsOf.list ++ printList(tokens2))
            assert(printList(tokens1 ++ tokens2) == hd.charsOf.list ++ printList(tokens2))
          } else {
            lemmaPrintConcatSameAsConcatPrint(tl, tokens2)
            unfold(printList(Cons(hd, tl)))
            unfold(printList(tokens1 ++ tokens2))
            assert(printList(tokens1) == hd.charsOf.list ++ printList(tl))
            assert(printList(tokens1 ++ tokens2) == hd.charsOf.list ++ printList(tl ++ tokens2))
            ListUtils.lemmaConcatAssociativity(hd.charsOf.list, printList(tl), printList(tokens2))
          }
        }
        case Nil() => ()
      }
    }.ensuring(_ => printList(tokens1 ++ tokens2) == printList(tokens1) ++ printList(tokens2))


    @ghost
    @opaque
    @inlineOnce
    def lemmaLexThenRulesProducesEachTokenIndividually[C: ClassTag : Hashable](rules: List[Rule[C]], input: List[C], tokens: List[Token[C]]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(lexList(rules, input)._1 == tokens)
      decreases(tokens)

      tokens match {
        case Nil() => ()
        case Cons(hd, tl) => {
          assert(maxPrefix(rules, input).isDefined)
          val (token, suffix) = maxPrefix(rules, input).get
          assert(token == hd)
          assert(token.charsOf == hd.charsOf)
          assert(token.charsOf.list == hd.charsOf.list)
          assert(hd.charsOf.list ++ suffix == input)
          val tokenRule = token.rule
          assert(matchR(tokenRule.regex, token.charsOf.list))
          if (!rulesProduceIndividualToken(rules, hd)) {
            lemmaLexThenLexPrefix(rules, hd.charsOf.list, suffix, List(hd), lexList(rules, suffix)._1, lexList(rules, input)._2)
            check(false)
          }
          assert(rulesProduceIndividualToken(rules, hd))
          lemmaLexThenRulesProducesEachTokenIndividually(rules, suffix, tl)
        }
      }
    }.ensuring(_ => rulesProduceEachTokenIndividually(rules, seqFromList(tokens)))

    @ghost
    @opaque
    @inlineOnce
    def lemmaLexThenLexPrefix[C: ClassTag : Hashable](rules: List[Rule[C]], prefix: List[C], suffix: List[C], prefixTokens: List[Token[C]], suffixTokens: List[Token[C]], suffixResult: List[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(!prefixTokens.isEmpty)
      require(!prefix.isEmpty)
      require(lexList(rules, prefix ++ suffix) == (prefixTokens ++ suffixTokens, suffixResult))
      require(lexList(rules, suffix) == (suffixTokens, suffixResult))
      decreases(prefix.size)

      val input = prefix ++ suffix
      maxPrefix(rules, prefix ++ suffix) match {
        case Some((token, s)) => {
          token.lemmaCharactersSize()
          lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(token.rule, rules)

          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.charsOf.list, s)
          ListUtils.lemmaSamePrefixThenSameSuffix(token.charsOf.list, s, token.charsOf.list, ListUtils.getSuffix(input, token.charsOf.list), input)

          check(token.value == token.rule.transformation.apply(seqFromList(token.charsOf.list)))
          check(token.rule == token.rule)
          check(token.size == token.originalCharacters.size)
          check(token.size == token.originalCharacters.size)
          check(token.size == token.charsOf.list.size)
          check(token.originalCharacters == token.charsOf.list)
          check(s == ListUtils.getSuffix(input, token.charsOf.list))
          check(Some(token, s) == Some(Token(token.rule.transformation.apply(seqFromList(token.charsOf.list)), token.rule, token.charsOf.list.size, token.charsOf.list), ListUtils.getSuffix(input, token.charsOf.list)))


          val (followingTokens, nextSuffix) = lexList(rules, s)
          assert(token.charsOf.list ++ s == prefix ++ suffix)
          assert(lexList(rules, prefix ++ suffix) == (List(token) ++ followingTokens, nextSuffix))
          assert(lexList(rules, s) == (followingTokens, nextSuffix))
          if (s == suffix) {
            unfold(lexList(rules, prefix ++ suffix))
            unfold(maxPrefix(rules, prefix ++ suffix))
            assert(maxPrefix(rules, prefix ++ suffix) == Some((token, s)))
            assert(token.charsOf.list ++ s == prefix ++ suffix)
            assert(s == suffix)
            ListUtils.lemmaConcatSameAndSameSizesThenSameLists(token.charsOf.list, s, prefix, suffix)
            assert(token.charsOf.list == prefix)
            assert(prefixTokens ++ suffixTokens == lexList(rules, prefix ++ suffix)._1)
            assert(prefixTokens ++ suffixTokens == List(token) ++ followingTokens)
            assert(prefixTokens == List(token))
            assert(prefix == token.charsOf.list)
            assert(ListUtils.isPrefix(Nil[C](), suffix))
            lemmaMaxPrefixThenWithShorterSuffix(rules, prefix, suffix, Nil[C](), token, suffix, Nil[C]())
            assert(maxPrefix(rules, prefix).isDefined)
            assert(maxPrefix(rules, prefix).get._1 == token)
            assert(maxPrefix(rules, prefix).get._2.isEmpty)
            assert(maxPrefix(rules, prefix) == Some((token, List[C]())))
            assert(lexList(rules, prefix) == (List(token), List[C]()))
          } else {
            if (s.size < suffix.size) {
              assert(token.charsOf.list ++ s == prefix ++ suffix)
              val lSize = input.size
              assert(token.charsOf.list.size + s.size == lSize)
              assert(prefix.size + suffix.size == lSize)
              assert(s.size < suffix.size)
              assert(token.charsOf.list.size > prefix.size)
              lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, token.charsOf.list, input, s, token.rule)
              assert(matchR(token.rule.regex, token.charsOf.list))
              assert(token.charsOf.list.size > prefix.size)
              assert(maxPrefix(rules, input).get._1 == prefixTokens.head)
              if(maxPrefix(rules, input).get._2.size < suffix.size) {
                val localSuffix = maxPrefix(rules, input).get._2
                assert(localSuffix.size < suffix.size)
                if (prefixTokens.tail.isEmpty) {
                  assert(prefixTokens == List(prefixTokens.head))
                  assert(token == prefixTokens.head)
                  assert(token.charsOf.list ++ s == token.charsOf.list ++ localSuffix)
                  ListUtils.lemmaConcatSameAndSameSizesThenSameLists(token.charsOf.list, s, token.charsOf.list, localSuffix)
                  assert(s.size == localSuffix.size)
                  assert(localSuffix.size < suffix.size)
                  assert(lexList(rules, localSuffix) == (suffixTokens, suffixResult))
                  assert(lexList(rules, suffix) == (suffixTokens, suffixResult))
                  lemmaLexWithSmallerInputCannotProduceSameResults(rules, suffix, localSuffix, suffixTokens, suffixResult)
                  check(false)
                } else {
                  assert(token == prefixTokens.head)
                  assert(lexList(rules, localSuffix) == (prefixTokens.tail ++ suffixTokens, suffixResult))
                  lemmaLexWithSmallerInputCannotProduceAdditionalTokens(rules, suffix, localSuffix, suffixTokens, suffixResult, prefixTokens.tail)
                  check(false)
                }
              }
              assert(maxPrefix(rules, input).get._2.size >= suffix.size)
              assert(token.charsOf.list.size > prefixTokens.head.charsOf.list.size)

              check(false)
            }
            if (s.size == suffix.size){
              assert(token.charsOf.list ++ s == prefix ++ suffix)
              ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.charsOf.list, s)
              ListUtils.lemmaConcatTwoListThenFirstIsPrefix(prefix, suffix)
              assert(ListUtils.isPrefix(prefix, prefix ++ suffix))
              assert(ListUtils.isPrefix(token.charsOf.list, prefix ++ suffix))
              ListUtils.lemmaIsPrefixSameLengthThenSameList(token.charsOf.list, prefix, prefix ++ suffix)
              assert(token.charsOf.list == prefix)
              ListUtils.lemmaSamePrefixThenSameSuffix(token.charsOf.list, s, prefix, suffix, input)
              check(false)
            }
            assert(s.size > suffix.size)
            // We still have tokens to tokenize before reaching the one of interest
            assert(prefixTokens.head == token)
            assert(token.charsOf.list ++ s == prefix ++ suffix)
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.charsOf.list, s)
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(prefix, suffix)
            ListUtils.lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther(prefix, token.charsOf.list, input)
            assert(token.charsOf.list.size < prefix.size)
            val restPrefix = ListUtils.getSuffix(prefix, token.charsOf.list)
            assert(token.charsOf.list ++ restPrefix == prefix)
            assert(token.charsOf.list ++ restPrefix ++ suffix == prefix ++ suffix)
            assert(token.charsOf.list ++ restPrefix ++ suffix == token.charsOf.list ++ s)
            ListUtils.lemmaConcatAssociativity(token.charsOf.list, restPrefix, suffix)
            assert((token.charsOf.list ++ restPrefix) ++ suffix == token.charsOf.list ++ (restPrefix ++ suffix))
            assert(prefix ++ suffix == (token.charsOf.list ++ restPrefix) ++ suffix)
            assert(prefix ++ suffix == token.charsOf.list ++ (restPrefix ++ suffix))
            assert(token.charsOf.list ++ s == token.charsOf.list ++ (restPrefix ++ suffix))
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.charsOf.list, (restPrefix ++ suffix))
            ListUtils.lemmaSamePrefixThenSameSuffix(token.charsOf.list, s, token.charsOf.list, (restPrefix ++ suffix), input)
            assert(restPrefix ++ suffix == s)
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(restPrefix, suffix)
            assert(lexList(rules, s) == (prefixTokens.tail ++ suffixTokens, suffixResult))
            if (prefixTokens.tail.isEmpty){
              assert(prefixTokens == List(token))
              assert(lexList(rules, s) == (suffixTokens, suffixResult))
              lemmaLexWithSmallerInputCannotProduceSameResults(rules, s, suffix, suffixTokens, suffixResult)
              check(false)
            }
            ListUtils.lemmaConcatAssociativity(List(token), prefixTokens.tail, suffixTokens)
            assert(List(token) ++ prefixTokens.tail ++ suffixTokens == prefixTokens ++ suffixTokens)
            assert(lexList(rules, restPrefix ++ suffix) == (prefixTokens.tail ++ suffixTokens, suffixResult))
            lemmaLexThenLexPrefix(rules, restPrefix, suffix, prefixTokens.tail, suffixTokens, suffixResult)
            assert(lexList(rules, restPrefix) == (prefixTokens.tail, List[C]()))
            assert(maxPrefix(rules, input) == Some((token, s)))
            if (suffix.isEmpty){
              assert(suffixTokens.isEmpty)
              assert(suffixResult.isEmpty)
              assert(lexList(rules, prefix) == (prefixTokens, List[C]()))

            } else {
            assert(ListUtils.isPrefix(restPrefix, s))
            assert(!rules.isEmpty)
            assert(rulesInvariant(rules))
            assert(suffix.size > List[C]().size)
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(List[C](), suffix)
            assert(ListUtils.isPrefix(List(), suffix))
            assert(prefix.size > token.charsOf.list.size)
            assert(token.charsOf.list ++ restPrefix == prefix ++ List[C]())
            lemmaMaxPrefixThenWithShorterSuffix(rules, prefix, suffix, List[C](), token, s, restPrefix)
            assert(maxPrefix(rules, prefix) == Some((token, restPrefix)))
            assert(lexList(rules, prefix) == (prefixTokens, List[C]()))
            }

          }
        }
        case None() => 
          check(false)
          assert(lexList(rules, prefix ++ suffix) == (List[Token[C]](), prefix ++ suffix))
      }
    }.ensuring (_ => lexList(rules, prefix) == (prefixTokens, List[C]()))

    @ghost
    @opaque
    @inlineOnce
    def lemmaLexWithSmallerInputCannotProduceAdditionalTokens[C: ClassTag : Hashable](rules: List[Rule[C]], longerInput: List[C], shorterInput: List[C], tokens: List[Token[C]], suffix: List[C], addTokens: List[Token[C]]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(!longerInput.isEmpty)
      require(longerInput.size > shorterInput.size)
      require(lexList(rules, longerInput) == (tokens, suffix))
      decreases(addTokens.size)

      if (addTokens.isEmpty) {
        lemmaLexWithSmallerInputCannotProduceSameResults(rules, longerInput, shorterInput, tokens, suffix)
      } else {

        assert(addTokens.size > 0)

        (maxPrefix(rules, longerInput), maxPrefix(rules, shorterInput)) match {
          case (Some((tL, sL)), Some((tS, sS))) => {
            assert(tL.charsOf.list ++ sL == longerInput)
            assert(tS.charsOf.list ++ sS == shorterInput)
            lemmaLexWithSmallerInputCannotProduceAdditionalTokens(rules, longerInput, sS, tokens, suffix, addTokens.tail)

          }
          case (Some((tL, sL)), None()) => ()
          case (None(), Some((tS, sS))) => ()
          case (None(), None()) => ()
        }

      }

    }.ensuring (_ => lexList(rules, shorterInput) != (addTokens ++ tokens, suffix))

    @ghost
    @opaque
    @inlineOnce
    def lemmaLexWithSmallerInputCannotProduceSameResults[C: ClassTag : Hashable](rules: List[Rule[C]], longerInput: List[C], shorterInput: List[C], tokens: List[Token[C]], suffix: List[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(!longerInput.isEmpty)
      require(longerInput.size > shorterInput.size)
      require(lexList(rules, longerInput) == (tokens, suffix))
      decreases(longerInput.size)

      (maxPrefix(rules, longerInput), maxPrefix(rules, shorterInput)) match {
        case (Some((tL, sL)), Some((tS, sS))) => {
          assert(tL.charsOf.list ++ sL == longerInput)
          assert(tS.charsOf.list ++ sS == shorterInput)
          if(tL == tS) {
            assert(tL.charsOf.list == tS.charsOf.list)
            assert(sL.size > sS.size)
            lemmaLexWithSmallerInputCannotProduceSameResults(rules, sL, sS, tokens.tail, suffix)
          }
        }
        case (Some((tL, sL)), None()) => ()
        case (None(), Some((tS, sS))) => ()
        case (None(), None()) => ()
      }
    }.ensuring (_ => lexList(rules, shorterInput) != (tokens, suffix))

    @ghost
    @opaque
    @inlineOnce
    def lemmaMaxPrefixThenWithShorterSuffix[C: ClassTag : Hashable](rules: List[Rule[C]], prefix: List[C], suffix: List[C], newSuffix: List[C], token: Token[C], suffixResult: List[C], newSuffixResult: List[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(suffix.size >= newSuffix.size)
      require(ListUtils.isPrefix(newSuffix, suffix))
      require(prefix.size >= token.charsOf.list.size)
      require(token.charsOf.list ++ newSuffixResult == prefix ++ newSuffix)
      require(maxPrefix(rules, prefix ++ suffix) == Some((token, suffixResult)))

      val input = prefix ++ suffix
      val newInput = prefix ++ newSuffix


      // Common parts of the proof about token and maxPrefix
      lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(token.rule, rules)
      token.rule.transformation.lemmaInv()

      assert(maxPrefix(rules, input) == Some((token, suffixResult)))
      assert(token.charsOf.list ++ suffixResult == input)
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.charsOf.list, suffixResult)
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(prefix, suffix)
      assert(ListUtils.isPrefix(prefix, input))
      assert(ListUtils.isPrefix(token.charsOf.list, input))

      ListUtils.lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther(prefix, token.charsOf.list, input)

      val oldNextPrefix = ListUtils.getSuffix(prefix, token.charsOf.list)
      assert(token.charsOf.list ++ oldNextPrefix == prefix)
      assert(prefix ++ suffix == input)

      ListUtils.lemmaConcatAssociativity(token.charsOf.list, oldNextPrefix, suffix)
      assert(input == (token.charsOf.list ++ oldNextPrefix) ++ suffix)
      assert(input == token.charsOf.list ++ (oldNextPrefix ++ suffix))
      assert(token.charsOf.list ++ suffixResult == input)
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.charsOf.list, (oldNextPrefix ++ suffix))
      ListUtils.lemmaSamePrefixThenSameSuffix(token.charsOf.list, (oldNextPrefix ++ suffix), token.charsOf.list, suffixResult, input)
      assert((oldNextPrefix ++ suffix) == suffixResult)

      lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, token.charsOf.list, input, suffixResult, token.rule)
      assert(maxPrefixOneRule(token.rule, input) == Some((token, suffixResult)))

      assert(ListUtils.isPrefix(token.charsOf.list, prefix))
      ListUtils.lemmaPrefixStaysPrefixWhenAddingToSuffix(token.charsOf.list, prefix, suffix)
      ListUtils.lemmaPrefixStaysPrefixWhenAddingToSuffix(token.charsOf.list, prefix, newSuffix)
      assert(ListUtils.isPrefix(token.charsOf.list, prefix ++ suffix))
      assert(ListUtils.isPrefix(token.charsOf.list, prefix ++ newSuffix))
      assert(ListUtils.isPrefix(token.charsOf.list, newInput))

      assert(matchR(token.rule.regex, token.charsOf.list))

      ListUtils.lemmaIsPrefixRefl(input, input)

      check(token.value == token.rule.transformation.apply(seqFromList(token.charsOf.list)))
      check(token.rule == token.rule)
      check(token.size == token.originalCharacters.size)
      check(token.size == token.originalCharacters.size)
      check(token.size == token.charsOf.list.size)
      check(token.originalCharacters == token.charsOf.list)
      assert(token.charsOf.list ++ suffixResult == input)
      assert(token.charsOf.list ++ ListUtils.getSuffix(input, token.charsOf.list) == input)
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.charsOf.list, ListUtils.getSuffix(input, token.charsOf.list))
      ListUtils.lemmaSamePrefixThenSameSuffix(token.charsOf.list, suffixResult, token.charsOf.list, ListUtils.getSuffix(input, token.charsOf.list), input)
      check(suffixResult == ListUtils.getSuffix(input, token.charsOf.list))
      check(Some(token, suffixResult) == Some(Token(token.rule.transformation.apply(seqFromList(token.charsOf.list)), token.rule, token.charsOf.list.size, token.charsOf.list), ListUtils.getSuffix(input, token.charsOf.list)))

      
      
      maxPrefix(rules, prefix ++ newSuffix) match {
        case Some((t, s)) => {
          
          t.lemmaCharactersSize()
          token.lemmaCharactersSize()

          lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(t.rule, rules)
          
          t.rule.transformation.lemmaInv()

          lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, t.charsOf.list, newInput, s, t.rule)

          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(t.charsOf.list, s)
          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(t.charsOf.list, newSuffixResult)

          assert(maxPrefixOneRule(t.rule, newInput) == Some((t, s)))

          val diffWithLongerSuffix = ListUtils.getSuffix(suffix, newSuffix)
          assert(newSuffix ++ diffWithLongerSuffix == suffix)
          assert(prefix ++ suffix == input)
          assert(prefix ++ newSuffix == newInput)
          ListUtils.lemmaConcatAssociativity(prefix, newSuffix, diffWithLongerSuffix)
          assert(prefix ++ newSuffix ++ diffWithLongerSuffix == input)
          assert(newInput ++ diffWithLongerSuffix == input)
          ListUtils.lemmaPrefixStaysPrefixWhenAddingToSuffix(t.charsOf.list, newInput, diffWithLongerSuffix)
          assert(ListUtils.isPrefix(t.charsOf.list, input))

          assert(t.charsOf.list ++ s == newInput)
          assert(t.charsOf.list ++ ListUtils.getSuffix(newInput, t.charsOf.list) == newInput)
          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(t.charsOf.list, ListUtils.getSuffix(newInput, t.charsOf.list))
          ListUtils.lemmaSamePrefixThenSameSuffix(t.charsOf.list, s, t.charsOf.list, ListUtils.getSuffix(newInput, t.charsOf.list), newInput)
          check(s == ListUtils.getSuffix(newInput, t.charsOf.list))

          if(t.charsOf.list.size > token.charsOf.list.size) {
            assert(ListUtils.isPrefix(t.charsOf.list, newInput))
            assert(ListUtils.isPrefix(token.charsOf.list, newInput))
            assert(ListUtils.isPrefix(token.charsOf.list, input))
            assert(ListUtils.isPrefix(t.charsOf.list, input))

            assert(!rules.isEmpty)
            assert(rulesInvariant(rules))
            assert(rules.contains(token.rule))
            assert(rules.contains(t.rule))

            assert(maxPrefix(rules, input) == Some(Token(token.rule.transformation.apply(seqFromList(token.charsOf.list)), token.rule, token.charsOf.list.size, token.charsOf.list), ListUtils.getSuffix(input, token.charsOf.list)))
            lemmaMaxPrefixOutputsMaxPrefix(rules, token.rule, token.charsOf.list, input, t.charsOf.list, t.rule)
            check(false)
          }
          if(t.charsOf.list.size < token.charsOf.list.size) {
            assert(ListUtils.isPrefix(t.charsOf.list, newInput))
            assert(ListUtils.isPrefix(token.charsOf.list, newInput))

            lemmaMaxPrefixOutputsMaxPrefix(rules, t.rule, t.charsOf.list, newInput, token.charsOf.list, token.rule)
            check(false)
          }
          assert(token.charsOf.list.size == t.charsOf.list.size) 
          assert(ListUtils.isPrefix(token.charsOf.list, newInput))
          assert(ListUtils.isPrefix(t.charsOf.list, newInput))
          ListUtils.lemmaIsPrefixSameLengthThenSameList(t.charsOf.list, token.charsOf.list, newInput)
          assert(t.charsOf.list == token.charsOf.list)
          ListUtils.lemmaSamePrefixThenSameSuffix(t.charsOf.list, s, token.charsOf.list, newSuffixResult, newInput)
          assert(s == newSuffixResult)  

          if (ListUtils.getIndex(rules, t.rule) < ListUtils.getIndex(rules, token.rule)) {
            assert(maxPrefix(rules, input) == Some((token, suffixResult)))
            assert(maxPrefix(rules, input) == Some(Token(token.rule.transformation.apply(seqFromList(token.charsOf.list)), token.rule, token.charsOf.list.size, token.charsOf.list), ListUtils.getSuffix(input, token.charsOf.list)))
            assert(matchR(token.rule.regex, token.charsOf.list))
            lemmaMaxPrefNoSmallerRuleMatches(rules, token.rule, token.charsOf.list, input, t.rule)
            check(false)
          }
          if (ListUtils.getIndex(rules, t.rule) > ListUtils.getIndex(rules, token.rule)) {
            assert(ruleValid(t.rule))
            assert(ruleValid(token.rule))
            assert(matchR(t.rule.regex, t.charsOf.list))
            lemmaMaxPrefNoSmallerRuleMatches(rules, t.rule, t.charsOf.list, newInput, token.rule)
            check(false)
          }
            ListUtils.lemmaSameIndexThenSameElement(rules, t.rule, token.rule)

          assert(t.rule == token.rule)

          assert(t == token)
          assert(maxPrefix(rules, prefix ++ newSuffix) == Some((token, newSuffixResult)))
        }
        case None() => {
          lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone(token.rule, rules, newInput)
          lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex(token.rule, token.charsOf.list, newInput)
          check(false)
          assert(maxPrefix(rules, prefix ++ newSuffix) == Some((token, newSuffixResult)))
        }
      }


    }.ensuring(_ => maxPrefix(rules, prefix ++ newSuffix) == Some((token, newSuffixResult)))

    @ghost
    @opaque
    @inlineOnce
    def lemmaMaxPrefixThenWithoutSuffix[C: ClassTag : Hashable](rules: List[Rule[C]], input: List[C], token: Token[C], suffix: List[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(!input.isEmpty)
      require(token.charsOf.list == input)
      require(maxPrefix(rules, input ++ suffix).isDefined)
      require(maxPrefix(rules, input ++ suffix).get._1 == token)
      require(maxPrefix(rules, input ++ suffix).get._2 == suffix)

      maxPrefix(rules, input) match {
        case Some((t, s)) => {
          assert(token.charsOf.list ++ suffix == input ++ suffix)
          ListUtils.lemmaConcatSameAndSameSizesThenSameLists(token.charsOf.list, suffix, input, suffix)
          assert(token.charsOf.list == input)
          check(maxPrefix(rules, input) == Some((t, s)))
          if (t.charsOf.list.size > token.charsOf.list.size) {
            assert(t.charsOf.list ++ s == input)
            assert(t.charsOf.list.size > input.size)
            check(false)
          }
          t.lemmaCharactersSize()
          token.lemmaCharactersSize()


          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(t.charsOf.list, s)
          ListUtils.lemmaSamePrefixThenSameSuffix(t.charsOf.list, s, t.charsOf.list, ListUtils.getSuffix(input, t.charsOf.list), input)
          ListUtils.lemmaIsPrefixRefl(input, input)

          lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(t.rule, rules)
          lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(token.rule, rules)
          
          t.rule.transformation.lemmaInv()
          token.rule.transformation.lemmaInv()

          check(t.value == t.rule.transformation.apply(seqFromList(t.charsOf.list)))
          check(t.rule == t.rule)
          check(t.size == t.originalCharacters.size)
          check(t.size == t.originalCharacters.size)
          check(t.size == t.charsOf.list.size)
          check(t.originalCharacters == t.charsOf.list)
          check(s == ListUtils.getSuffix(input, t.charsOf.list))
          check(Some(t, s) == Some(Token(t.rule.transformation.apply(seqFromList(t.charsOf.list)), t.rule, t.charsOf.list.size, t.charsOf.list), ListUtils.getSuffix(input, t.charsOf.list)))

          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(input, suffix)
          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.charsOf.list, suffix)
          assert(ListUtils.isPrefix(input, input ++ suffix))
          assert(ListUtils.isPrefix(input, token.charsOf.list ++ suffix))
          ListUtils.lemmaSamePrefixThenSameSuffix(token.charsOf.list, suffix, token.charsOf.list, ListUtils.getSuffix(input ++ suffix, token.charsOf.list), input ++ suffix)

          check(token.value == token.rule.transformation.apply(seqFromList(token.charsOf.list)))
          check(token.rule == token.rule)
          check(token.size == token.originalCharacters.size)
          check(token.size == token.originalCharacters.size)
          check(token.size == token.charsOf.list.size)
          check(token.originalCharacters == token.charsOf.list)
          check(suffix == ListUtils.getSuffix(input ++ suffix, token.charsOf.list))
          check(Some(token, suffix) == Some(Token(token.rule.transformation.apply(seqFromList(token.charsOf.list)), token.rule, token.charsOf.list.size, token.charsOf.list), ListUtils.getSuffix(input ++ suffix, token.charsOf.list)))


          lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, t.charsOf.list, input, s, t.rule)
          lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, token.charsOf.list, input ++ suffix, suffix, token.rule)
          if (t.charsOf.list.size < token.charsOf.list.size) {
            check(maxPrefix(rules, input) == Some((t, s)))
            check(maxPrefix(rules, input).isDefined)
            check(maxPrefix(rules, input).get._1 == t)
            assert(rules.contains(token.rule))
            assert(matchR(token.rule.regex, input))
            
            assert(ListUtils.isPrefix(token.charsOf.list, input))
            assert(ListUtils.isPrefix(input, input))
            assert(ListUtils.getSuffix(input, input) == List())
            assert(t.charsOf.list ++ s == input)
            
            assert(ListUtils.isPrefix(t.charsOf.list, input))
            assert(ListUtils.isPrefix(input, input))

            assert(t.charsOf.list ++ ListUtils.getSuffix(input, t.charsOf.list) == input)
            assert(t.charsOf.list ++ s == input)
            
            check(ListUtils.getSuffix(input, t.charsOf.list) == s)

            assert(!rules.isEmpty)
            assert(rulesInvariant(rules))
            assert(rules.contains(t.rule))
            assert(rules.contains(token.rule))

            assert(maxPrefixOneRule(t.rule, input) == Some(Token(t.rule.transformation.apply(seqFromList(t.charsOf.list)), t.rule, t.charsOf.list.size, t.charsOf.list), s))

            assert(matchR(t.rule.regex, t.charsOf.list))

            
            t.rule.transformation.lemmaSemiInverse(seqFromList(t.charsOf.list))
            ListUtils.lemmaIsPrefixRefl(input, input)
            assert(maxPrefixOneRule(t.rule, input) == Some(Token(t.rule.transformation.apply(seqFromList(t.charsOf.list)), t.rule, t.charsOf.list.size, t.charsOf.list), ListUtils.getSuffix(input, t.charsOf.list)))

            assert(input.size > t.charsOf.list.size)
            assert(maxPrefix(rules, input) == Some(Token(t.rule.transformation.apply(seqFromList(t.charsOf.list)), t.rule, t.charsOf.list.size, t.charsOf.list), ListUtils.getSuffix(input, t.charsOf.list)))

            lemmaMaxPrefixOutputsMaxPrefix(rules, t.rule, t.charsOf.list, input, input, token.rule)
            check(false)
          }

          t.rule.transformation.lemmaSemiInverse(seqFromList(t.charsOf.list))

          token.rule.transformation.lemmaInv()
          token.rule.transformation.lemmaSemiInverse(seqFromList(token.charsOf.list))
          assert(t.charsOf.list.size == token.charsOf.list.size)
          assert(t.charsOf.list ++ s == input)
          assert(t.charsOf.list ++ s == token.charsOf.list)
          assert(s.isEmpty)
          assert(t.charsOf.list == token.charsOf.list)
          assert(t.charsOf.list == token.charsOf.list)
          assert(t.originalCharacters == token.originalCharacters)
          assert(!rules.isEmpty)
          assert(rulesInvariant(rules))
          assert(rules.contains(t.rule))
          assert(rules.contains(token.rule))

          if (t.rule != token.rule) {
            if (ListUtils.getIndex(rules, t.rule) < ListUtils.getIndex(rules, token.rule)) {
              assert(maxPrefix(rules, input ++ suffix) == Some((token, suffix)))
              assert(maxPrefix(rules, input ++ suffix) == Some(Token(token.rule.transformation.apply(seqFromList(input)), token.rule, input.size, input), ListUtils.getSuffix(input ++ suffix, input)))
              assert(matchR(token.rule.regex, input))
              lemmaMaxPrefNoSmallerRuleMatches(rules, token.rule, input, input ++ suffix, t.rule)
              check(false)
            }
            if (ListUtils.getIndex(rules, t.rule) > ListUtils.getIndex(rules, token.rule)) {
              assert(ruleValid(t.rule))
              assert(ruleValid(token.rule))
              assert(matchR(t.rule.regex, input))
              lemmaMaxPrefNoSmallerRuleMatches(rules, t.rule, input, input, token.rule)
              check(false)
            }
          }
          ListUtils.lemmaSameIndexThenSameElement(rules, t.rule, token.rule)
          assert(t.rule == token.rule)
          assert(t.size == token.size)
          assert(t == token)
          assert(maxPrefix(rules, input) == Some((token, List[C]())))
        }
        case None() => 
          lemmaMaxPrefNoneThenNoRuleMatches(rules, token.rule, input, input)
          check(false)
      }


    }.ensuring(_ => maxPrefix(rules, input) == Some((token, List[C]())))

    @ghost
    @opaque
    @inlineOnce
    def lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead[C: ClassTag : Hashable](rules: List[Rule[C]], tokens: List[Token[C]], separatorToken: Token[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividuallyList(rules, tokens))
      require(rulesProduceIndividualToken(rules, separatorToken))
      require(separatorToken.rule.isSeparator)
      require(tokens.forall(!_.rule.isSeparator))
      require(LexerInterface.sepAndNonSepRulesDisjointChars(rules, rules))

      tokens match {
        case Cons(hd, tl) => {

          hd.rule.transformation.lemmaSemiInverse(hd.charsOf)
          hd.rule.transformation.lemmaEqSameImage(hd.charsOf, seqFromList(hd.originalCharacters))

          lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, separatorToken.charsOf.list, separatorToken)
          val separatorRule = separatorToken.rule

          check(maxPrefix(rules, hd.charsOf.list).isDefined)
          check(maxPrefix(rules, hd.charsOf.list).get._1 == hd)
          lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, hd.charsOf.list, hd)
          val rule = hd.rule

          val suffix: List[C] = printWithSeparatorTokenWhenNeededList(rules, tl, separatorToken)
          val maxPrefWithoutSep = maxPrefix(rules, hd.charsOf.list ++ suffix)
          maxPrefWithoutSep match {
            case Some((t, s)) if t == hd => ()
            case Some((t, s)) if t != hd => {
              ListUtils.lemmaConcatAssociativity(hd.charsOf.list, separatorToken.charsOf.list, suffix)
              val resSuffix: List[C] = separatorToken.charsOf.list ++ suffix
              if (!separatorRule.regex.usedCharacters.contains(separatorToken.charsOf.list.head)) {
                lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(
                  separatorRule.regex,
                  separatorToken.charsOf.list,
                  separatorToken.charsOf.list.head
                )
                check(false)
              }
              lemmaNonSepRuleNotContainsCharContainedInASepRule(rules, rules, rule, separatorRule, separatorToken.charsOf.list.head)

              // ----- to prove (!lex(rules, seqFromList(hd.characters.list))._1.isEmpty
              unfold(print(singletonSeq(hd)))
              assert(print(singletonSeq(hd)).list == printList(List(hd)))
              assert(printList(List(hd)) == hd.charsOf.list)
              assert(print(singletonSeq(hd)).list == hd.charsOf.list)
              assert(rulesProduceIndividualToken(rules, hd))
              assert(!lex(rules, seqFromList(hd.charsOf.list))._1.isEmpty)
              // ----- end
              
              check(maxPrefix(rules, hd.charsOf.list).isDefined)
              check(maxPrefix(rules, hd.charsOf.list).get._1 == hd)
              lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame(rules, hd, rule, resSuffix, separatorRule)
            }
            case None() => {
              // ----- to prove (!lex(rules, seqFromList(hd.characters.list))._1.isEmpty
              unfold(print(singletonSeq(hd)))
              assert(print(singletonSeq(hd)).list == printList(List(hd)))
              assert(printList(List(hd)) == hd.charsOf.list)
              assert(print(singletonSeq(hd)).list == hd.charsOf.list)
              assert(rulesProduceIndividualToken(rules, hd))
              assert(!lex(rules, seqFromList(hd.charsOf.list))._1.isEmpty)
              // ----- end
              lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined(rules, hd.charsOf.list, suffix)
              check(false)
            }
          }
        }
        case Nil() => ()
      }

    }.ensuring (_ =>
      tokens.isEmpty ||
        (!tokens.isEmpty &&
          maxPrefix(rules, printWithSeparatorTokenWhenNeededList(rules, tokens, separatorToken)).isDefined &&
          maxPrefix(rules, printWithSeparatorTokenWhenNeededList(rules, tokens, separatorToken)).get._1 == tokens.head)
    )

    @ghost
    @opaque
    @inlineOnce
    def lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame[C: ClassTag : Hashable](
        rules: List[Rule[C]],
        token: Token[C],
        rule: Rule[C],
        suffix: List[C],
        anOtherTypeRule: Rule[C]
    ): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rules.contains(rule))
      require(rules.contains(anOtherTypeRule))
      require(anOtherTypeRule.isSeparator != rule.isSeparator)
      require(maxPrefix(rules, token.charsOf.list).isDefined)
      require(maxPrefix(rules, token.charsOf.list).get._1 == token)
      require(maxPrefix(rules, token.charsOf.list).get._2.isEmpty)
      require(token.rule == rule)
      require({
        lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(rule, rules)
        matchR(rule.regex, token.charsOf.list)
      })
      require(!suffix.isEmpty)
      require(!rule.regex.usedCharacters.contains(suffix.head))
      require(anOtherTypeRule.regex.usedCharacters.contains(suffix.head))
      require(LexerInterface.sepAndNonSepRulesDisjointChars(rules, rules))


      val input = token.charsOf.list ++ suffix
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.charsOf.list, suffix)
      val tokenOpt = maxPrefix(rules, input)
      lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined(rules, token.charsOf.list, suffix)
      val foundToken = tokenOpt.get._1
      val foundSuffix = tokenOpt.get._2
      lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, input, foundToken)
      val foundRule = foundToken.rule
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(foundToken.charsOf.list, foundSuffix)
      assert(ListUtils.isPrefix(foundToken.charsOf.list, input))
      assert(matchR(foundRule.regex, foundToken.charsOf.list))
      assert(foundRule == foundToken.rule)

      foundRule.transformation.lemmaSemiInverse(foundToken.charsOf)
      foundRule.transformation.lemmaEqSameImage(foundToken.charsOf, seqFromList(foundToken.originalCharacters))
      foundToken.lemmaCharactersSize()
      assert(maxPrefix(rules, input) == Some(Token(foundRule.transformation.apply(foundToken.charsOf), foundRule, foundToken.charsOf.size, foundToken.charsOf.list), foundSuffix))
      lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, foundToken.charsOf.list, input, foundSuffix, foundRule)
      ListUtils.lemmaSamePrefixThenSameSuffix(
        foundToken.charsOf.list,
        foundSuffix,
        foundToken.charsOf.list,
        ListUtils.getSuffix(input, foundToken.charsOf.list),
        input
      )
      assert(ListUtils.getSuffix(input, foundToken.charsOf.list) == foundSuffix)
      assert(maxPrefixOneRule(foundRule, input) == Some((foundToken, ListUtils.getSuffix(input, foundToken.charsOf.list))))

      if (!rule.regex.usedCharacters.contains(foundToken.charsOf.list.head)) {
        lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(rule.regex, token.charsOf.list, foundToken.charsOf.list.head)
        check(false)
      }
      if (rule.isSeparator) {
        if (!foundRule.isSeparator) {
          assert(token.charsOf.list.contains(foundToken.charsOf.list.head))
          assert(rule.regex.usedCharacters.contains(foundToken.charsOf.list.head))
          lemmaNonSepRuleNotContainsCharContainedInASepRule(rules, rules, foundRule, rule, foundToken.charsOf.list.head)
          lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(foundRule.regex, foundToken.charsOf.list, foundToken.charsOf.list.head)
          check(false)
        }
      } else {
        if (foundRule.isSeparator) {
          assert(token.charsOf.list.contains(foundToken.charsOf.list.head))
          assert(rule.regex.usedCharacters.contains(foundToken.charsOf.list.head))
          lemmaSepRuleNotContainsCharContainedInANonSepRule(rules, rules, rule, foundRule, foundToken.charsOf.list.head)
          lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(foundRule.regex, foundToken.charsOf.list, foundToken.charsOf.list.head)
          check(false)
        }
      }

      if (foundToken.charsOf.size > token.charsOf.size) {
        ListUtils.lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref(token.charsOf.list, suffix, foundToken.charsOf.list, input)
        if (rule.isSeparator) {
          lemmaSepRuleNotContainsCharContainedInANonSepRule(rules, rules, anOtherTypeRule, foundRule, suffix.head)
          lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(foundRule.regex, foundToken.charsOf.list, suffix.head)
          check(false)
        } else {
          lemmaNonSepRuleNotContainsCharContainedInASepRule(rules, rules, foundRule, anOtherTypeRule, suffix.head)
          lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(foundRule.regex, foundToken.charsOf.list, suffix.head)
          check(false)
        }
      }
      if (foundToken.charsOf.size < token.charsOf.size) {
        lemmaMaxPrefixOutputsMaxPrefix(rules, foundRule, foundToken.charsOf.list, input, token.charsOf.list, rule)
        check(false)
      }
      ListUtils.lemmaIsPrefixSameLengthThenSameList(foundToken.charsOf.list, token.charsOf.list, input)

      assert(foundToken.charsOf.list == token.charsOf.list)

      if (foundToken.rule != token.rule) {
        val foundRuleIndex = ListUtils.getIndex(rules, foundRule)
        val ruleIndex = ListUtils.getIndex(rules, rule)
        if (foundRuleIndex < ruleIndex) {
          ListUtils.lemmaGetSuffixOnListWithItSelfIsEmpty(token.charsOf.list)
          assert(ListUtils.getSuffix(token.charsOf.list, token.charsOf.list).isEmpty)
          lemmaMaxPrefNoSmallerRuleMatches(rules, rule, token.charsOf.list, token.charsOf.list, foundRule)
          check(false)
        }
        if (ruleIndex < foundRuleIndex) {
          lemmaMaxPrefNoSmallerRuleMatches(rules, foundRule, token.charsOf.list, input, rule)
          check(false)
        }

        ListUtils.lemmaSameIndexThenSameElement(rules, foundRule, rule)
        check(false)
      }

      lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, token.charsOf.list, input, ListUtils.getSuffix(input, token.charsOf.list), rule)
      ListUtils.lemmaSamePrefixThenSameSuffix(
        token.charsOf.list,
        ListUtils.getSuffix(input, token.charsOf.list),
        foundToken.charsOf.list,
        foundSuffix,
        input
      )
      ListUtils.lemmaSamePrefixThenSameSuffix(token.charsOf.list, suffix, foundToken.charsOf.list, foundSuffix, input)

    }.ensuring (_ => maxPrefix(rules, token.charsOf.list ++ suffix) == Some((token, suffix)))


    @ghost
    def lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame[C: ClassTag : Hashable](
        rules: List[Rule[C]],
        token: Token[C],
        rule: Rule[C],
        suffix: List[C]
    ): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rules.contains(rule))
      require(maxPrefix(rules, token.charsOf.list).isDefined)
      require(maxPrefix(rules, token.charsOf.list).get._1 == token)
      require(maxPrefix(rules, token.charsOf.list).get._2.isEmpty)
      require(token.rule == rule)
      require({
        lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(rule, rules)
        matchR(rule.regex, token.charsOf.list)
      })
      require(!suffix.isEmpty)
      require(!prefixMatch(rulesRegex(rules), token.charsOf.list ++ List(suffix.head)))

      val input: List[C] = token.charsOf.list ++ suffix
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.charsOf.list, suffix)
      val tokenOpt = maxPrefix(rules, input)
      lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined(rules, token.charsOf.list, suffix)
      val foundToken: Token[C] = tokenOpt.get._1
      val foundSuffix: List[C] = tokenOpt.get._2
      lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, input, foundToken)
      val foundRule = foundToken.rule
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(foundToken.charsOf.list, foundSuffix)
      assert(ListUtils.isPrefix(foundToken.charsOf.list, input))
      assert(matchR(foundRule.regex, foundToken.charsOf.list))
      assert(foundRule == foundToken.rule)


      foundRule.transformation.lemmaInv()
      assert(semiInverseBodyModEq(foundRule.transformation.toChars, foundRule.transformation.toValue))
      foundRule.transformation.lemmaSemiInverse(foundToken.charsOf)
      assert(foundToken.rule.transformation.toChars(foundToken.rule.transformation.toValue(foundToken.charsOf)).list == foundToken.charsOf.list)
      assert(foundToken.charsOf == foundToken.rule.transformation.toChars(foundToken.value))

      foundToken.rule.transformation.lemmaEqSameImage(foundToken.charsOf, seqFromList(foundToken.originalCharacters))
      foundToken.lemmaCharactersSize()
      assert(maxPrefix(rules, input) == Some(Token(foundRule.transformation.apply(foundToken.charsOf), foundRule, foundToken.charsOf.size, foundToken.charsOf.list), foundSuffix))
      lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, foundToken.charsOf.list, input, foundSuffix, foundRule)
      ListUtils.lemmaSamePrefixThenSameSuffix(
        foundToken.charsOf.list,
        foundSuffix,
        foundToken.charsOf.list,
        ListUtils.getSuffix(input, foundToken.charsOf.list),
        input
      )
      assert(ListUtils.getSuffix(input, foundToken.charsOf.list) == foundSuffix)
      assert(maxPrefixOneRule(foundRule, input) == Some((foundToken, ListUtils.getSuffix(input, foundToken.charsOf.list))))
      lemmaMaxPrefixThenMatchesRulesRegex(rules, token.charsOf.list, token, rule, Nil())
      assert(matchR(rulesRegex(rules), token.charsOf.list))

      if(foundToken.charsOf.size > token.charsOf.size) {
        lemmaMaxPrefixThenMatchesRulesRegex(rules, input, foundToken, foundRule, foundSuffix)
        assert(matchR(rulesRegex(rules), foundToken.charsOf.list))
        assert(input == token.charsOf.list ++ suffix)
        ListUtils.lemmaSamePrefixThenSameSuffix(token.charsOf.list, suffix, token.charsOf.list, ListUtils.getSuffix(input, token.charsOf.list), input)
        assert(ListUtils.getSuffix(input, token.charsOf.list) == suffix)
        ListUtils.lemmaAddHeadSuffixToPrefixStillPrefix(token.charsOf.list, input)
        assert(ListUtils.isPrefix(token.charsOf.list ++ List(suffix.head), input))
        assert(ListUtils.isPrefix(foundToken.charsOf.list, input))
        ListUtils.lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther(foundToken.charsOf.list, token.charsOf.list ++ List(suffix.head), input)
        assert(ListUtils.isPrefix(token.charsOf.list ++ List(suffix.head), foundToken.charsOf.list))

        lemmaNotPrefixMatchThenCannotMatchLonger(rulesRegex(rules), token.charsOf.list ++ List(suffix.head), foundToken.charsOf.list)

        check(false)
      }
      assert(foundToken.charsOf.size <= token.charsOf.size)
      if(foundToken.charsOf.size < token.charsOf.size) {
        lemmaMaxPrefixOutputsMaxPrefix(rules, foundRule, foundToken.charsOf.list, input, token.charsOf.list, rule)
        check(false)
      }
      assert(foundToken.charsOf.size == token.charsOf.size)
      ListUtils.lemmaIsPrefixSameLengthThenSameList(foundToken.charsOf.list, token.charsOf.list, input)
      assert(foundToken.charsOf.list == token.charsOf.list)
      ListUtils.lemmaSamePrefixThenSameSuffix(token.charsOf.list, suffix, token.charsOf.list, foundSuffix, input)
      assert(suffix == foundSuffix)
      if(foundToken.rule != token.rule) {
        if(ListUtils.getIndex(rules, token.rule) < ListUtils.getIndex(rules, foundToken.rule)) {
          lemmaMaxPrefNoSmallerRuleMatches(rules, foundToken.rule, foundToken.charsOf.list, input, token.rule)
          check(false)
        }
        if(ListUtils.getIndex(rules, foundToken.rule) < ListUtils.getIndex(rules, token.rule)) {
          lemmaMaxPrefNoSmallerRuleMatches(rules, token.rule, token.charsOf.list, token.charsOf.list, foundToken.rule)
          check(false)
        }
        if(ListUtils.getIndex(rules, foundToken.rule) == ListUtils.getIndex(rules, token.rule)) {
          ListUtils.lemmaSameIndexThenSameElement(rules, foundToken.rule, token.rule)
          check(false)
        }
        check(false)
      }
      assert(foundToken.rule == token.rule)
      assert(token == foundToken)

    }.ensuring (_ => maxPrefix(rules, token.charsOf.list ++ suffix) == Some((token, suffix)))

    @ghost
    def lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined[C: ClassTag : Hashable](rules: List[Rule[C]], input: List[C], suffix: List[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(!lex(rules, seqFromList(input))._1.isEmpty)

      val (tokens, _) = lex(rules, seqFromList(input))
      val firstT = tokens.list.head
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(firstT.charsOf.list, maxPrefix(rules, input).get._2)
      ListUtils.lemmaPrefixStaysPrefixWhenAddingToSuffix(firstT.charsOf.list, input, suffix)
      lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, input, firstT)
      val rule: Rule[C] = firstT.rule
      assert(matchR(rule.regex, firstT.charsOf.list))

      if (maxPrefix(rules, input ++ suffix).isEmpty) {
        lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone(rule, rules, input ++ suffix)
        lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex(rule, firstT.charsOf.list, input ++ suffix)
        check(false)
      }

    }.ensuring (_ => maxPrefix(rules, input ++ suffix).isDefined)

    @ghost
    @opaque
    @inlineOnce
    def lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken[C: ClassTag : Hashable](rules: List[Rule[C]], input: List[C], token: Token[C]): Unit = {
      require(rulesInvariant(rules))
      require(!rules.isEmpty)
      require(maxPrefix(rules, input).isDefined)
      require(maxPrefix(rules, input).get._1 == token)
      decreases(rules)

      rules match {
        case Cons(hd, tl) => {
          if (maxPrefixOneRule(hd, input).isDefined && maxPrefixOneRule(hd, input).get._1 == token) {
            assert(hd == token.rule)
            assert(matchR(hd.regex, token.charsOf.list))
          } else {
            if (!tl.isEmpty) {
              lemmaInvariantOnRulesThenOnTail(hd, tl)
              lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(tl, input, token)
              lemmaGetRuleFromTagInListThenSameListWhenAddingARuleDiffTag(tl, hd, token.rule.tag)
            } else {
              check(false)
            }
          }
        }
        case Nil() => ()
      }
    }.ensuring (_ =>
      getRuleFromTag(rules, token.rule.tag).isDefined && matchR(getRuleFromTag(rules, token.rule.tag).get.regex, token.charsOf.list) &&
        token.rule == getRuleFromTag(rules, token.rule.tag).get
    )

    @ghost
    @opaque
    @inlineOnce
    def lemmaGetRuleFromTagInListThenSameListWhenAddingARuleDiffTag[C: ClassTag : Hashable](rules: List[Rule[C]], newHd: Rule[C], tag: String): Unit = {
      require(rulesInvariant(Cons(newHd, rules)))
      require({
        lemmaInvariantOnRulesThenOnTail(newHd, rules)
        getRuleFromTag(rules, tag).isDefined
      })

      lemmaInvariantOnRulesThenOnTail(newHd, rules)
      lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame(rules, getRuleFromTag(rules, tag).get, newHd.tag, List(newHd.tag))

    }.ensuring (_ => getRuleFromTag(rules, tag).get == getRuleFromTag(Cons(newHd, rules), tag).get)

    @ghost
    @opaque
    @inlineOnce
    def lemmaRemovingFirstTokensCharactersPreservesLexSuffix[C: ClassTag : Hashable](
        rules: List[Rule[C]],
        input: List[C],
        producedTokens: List[Token[C]],
        suffix: List[C]
    ): Unit = {
      require(rulesInvariant(rules))
      require(!rules.isEmpty)
      require(producedTokens.size > 0)
      require(lex(rules, seqFromList(input))._1.list == producedTokens)
      require(lex(rules, seqFromList(input))._2.list == suffix)
    }.ensuring (_ => {
      val (lexedTokens, lexedSuffix) = lex(rules, seqFromList(maxPrefix(rules, input).get._2))
      (lexedTokens.list, lexedSuffix.list) == (producedTokens.tail, suffix)
    })

    @ghost
    @opaque
    @inlineOnce
    def lemmaMaxPrefNoneThenNoRuleMatches[C: ClassTag : Hashable](rules: List[Rule[C]], r: Rule[C], p: List[C], input: List[C]): Unit = {
      require(ListUtils.isPrefix(p, input))
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rules.contains(r))
      require(maxPrefix(rules, input).isEmpty)

      lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(r, rules)

      lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone(r, rules, input)
      lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex(r, p, input)

    }.ensuring (_ => !matchR(r.regex, p))

    @ghost
    @opaque
    @inlineOnce
    def lemmaMaxPrefNoSmallerRuleMatches[C: ClassTag : Hashable](
        rules: List[Rule[C]],
        r: Rule[C],
        p: List[C],
        input: List[C],
        rBis: Rule[C]
    ): Unit = {
      require(ListUtils.isPrefix(p, input))
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rules.contains(r))
      require(rules.contains(rBis))
      require(!p.isEmpty)
      require({
        r.transformation.lemmaSemiInverse(seqFromList(p))
        maxPrefix(rules, input) == Some(Token(r.transformation.apply(seqFromList(p)), r, p.size, p), ListUtils.getSuffix(input, p))
      })
      require(matchR(r.regex, p))
      require(ListUtils.getIndex(rules, rBis) < ListUtils.getIndex(rules, r))
      require(ruleValid(r))
      decreases(rules)

      assert(ListUtils.getIndex(rules, rBis) < ListUtils.getIndex(rules, r))

      lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(rBis, rules)
      lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(r, rules)
      rules match {
        case Cons(hd, tl) if hd == rBis => {
          ListUtils.lemmaGetIndexBiggerAndHeadEqThenTailContains(rules, rBis, r)
          lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq(rules, rBis, r)

          val tokenSuffOpt = maxPrefixOneRule(rBis, input)
          if (tokenSuffOpt.isEmpty) {
            lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex(rBis, p, input)
          } else {
            val (token, suff) = tokenSuffOpt.get
            if (token.charsOf.size > p.size) {
              lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref(
                rules,
                p,
                Token(r.transformation.apply(seqFromList(p)), r, p.size, p),
                input,
                ListUtils.getSuffix(input, p),
                token.charsOf.list,
                ListUtils.getSuffix(input, token.charsOf.list),
                rBis,
                token
              )
              check(false)
              check(!matchR(rBis.regex, p))
            } else {
              if (token.charsOf.size < p.size) {
                ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.charsOf.list, suff)
                lemmaMaxPrefixOneRuleOutputsMaxPrefix(rBis, token.charsOf.list, token, input, suff, p)
                check(!matchR(rBis.regex, p))
              } else {
                lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq(rules, rBis, r)
                check(Some(token, suff) != Some(Token(r.transformation.apply(seqFromList(p)), r, p.size, p), ListUtils.getSuffix(input, p)))
                check(!matchR(rBis.regex, p))
              }
            }
          }
        }
        case Cons(hd, tl) if hd != rBis => {
          assert(tl.contains(r))
          assert(tl.contains(rBis))

          val tokenSuffOpt = maxPrefixOneRule(hd, input)
          val tokenSuffTailOpt = maxPrefix(tl, input)

          lemmaInvariantOnRulesThenOnTail(hd, tl)
          lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq(rules, hd, r)
          lemmaMaxPrefNoSmallerRuleMatches(tl, r, p, input, rBis)
        }
        case Nil() => check(false)
      }
    }.ensuring (_ => !matchR(rBis.regex, p))

    /** Lemma which proves that indeed the getMaxPrefix indeed returns the maximal prefix that matches any rules
      *
      * @param rules
      * @param r
      * @param p
      * @param input
      * @param pBis
      * @param rBis
      */
    @ghost
    @opaque
    @inlineOnce
    def lemmaMaxPrefixOutputsMaxPrefix[C: ClassTag : Hashable](
        rules: List[Rule[C]],
        r: Rule[C],
        p: List[C],
        input: List[C],
        pBis: List[C],
        rBis: Rule[C]
    ): Unit = {
      require(ListUtils.isPrefix(p, input))
      require(ListUtils.isPrefix(pBis, input))

      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rules.contains(r))
      require(rules.contains(rBis))

      require({
        lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(r, rules)
        matchR(r.regex, p)
      })
      require({
        r.transformation.lemmaSemiInverse(seqFromList(p))
        ListUtils.lemmaIsPrefixRefl(input, input)
        maxPrefixOneRule(r, input) == Some(Token(r.transformation.apply(seqFromList(p)), r, p.size, p), ListUtils.getSuffix(input, p))
      })

      require(pBis.size > p.size)
      require(maxPrefix(rules, input) == Some(Token(r.transformation.apply(seqFromList(p)), r, p.size, p), ListUtils.getSuffix(input, p)))

      // For preconditions
      lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(r, rules)
      lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(rBis, rules)
      ListUtils.lemmaIsPrefixRefl(input, input)

      // Main lemma
      lemmaMaxPrefixOutputsMaxPrefixInner(rules, r, p, input, pBis, rBis)

    }.ensuring (_ => !matchR(rBis.regex, pBis))

    @ghost
    @opaque
    @inlineOnce
    def lemmaMaxPrefixOutputsMaxPrefixInner[C: ClassTag : Hashable](
        rules: List[Rule[C]],
        r: Rule[C],
        p: List[C],
        input: List[C],
        pBis: List[C],
        rBis: Rule[C]
    ): Unit = {
      require(ListUtils.isPrefix(p, input))
      require(ListUtils.isPrefix(pBis, input))

      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rules.contains(r))
      require(rules.contains(rBis))

      require(validRegex(r.regex))
      require(matchR(r.regex, p))
      require(ruleValid(r))
      require({
        r.transformation.lemmaSemiInverse(seqFromList(p))
        ListUtils.lemmaIsPrefixRefl(input, input)
        maxPrefixOneRule(r, input) == Some(Token(r.transformation.apply(seqFromList(p)), r, p.size, p), ListUtils.getSuffix(input, p))
      })

      require(pBis.size > p.size)

      require(ruleValid(rBis))
      require({
        r.transformation.lemmaSemiInverse(seqFromList(p))
        maxPrefix(rules, input) == Some(Token(r.transformation.apply(seqFromList(p)), r, p.size, p), ListUtils.getSuffix(input, p))
      })

      assert(validRegex(r.regex))

      ListUtils.lemmaIsPrefixThenSmallerEqSize(pBis, input)
      lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(rBis, rules)

      val bisTokenSuff = maxPrefixOneRule(rBis, input) // == Some(Token(pBis, rBis), ListUtils.getSuffix(input, pBis))
      if (bisTokenSuff.isEmpty) {
        lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex(rBis, pBis, input)
        check(!matchR(rBis.regex, pBis))
      } else {
        val tBis: Token[C] = bisTokenSuff.get._1
        val suffixBis: List[C] = bisTokenSuff.get._2
        ListUtils.lemmaConcatTwoListThenFirstIsPrefix(tBis.charsOf.list, suffixBis)
        if (tBis.charsOf.list == pBis) {
          lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref(
            rules,
            p,
            Token(r.transformation.apply(seqFromList(p)), r, p.size, p),
            input,
            ListUtils.getSuffix(input, p),
            pBis,
            suffixBis,
            rBis,
            tBis
          )
          check(!matchR(rBis.regex, pBis))
        } else {
          if (tBis.charsOf.size < pBis.size) {
            assert(ListUtils.isPrefix(tBis.charsOf.list, input))
            lemmaMaxPrefixOneRuleOutputsMaxPrefix(rBis, tBis.charsOf.list, tBis, input, suffixBis, pBis)
            check(!matchR(rBis.regex, pBis))
          } else {
            if (pBis.size == tBis.charsOf.list.size) {
              ListUtils.lemmaIsPrefixSameLengthThenSameList(pBis, tBis.charsOf.list, input)
              check(false)
            }
            assert(pBis.size < tBis.charsOf.size)
            lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref(
              rules,
              p,
              Token(r.transformation.apply(seqFromList(p)), r, p.size, p),
              input,
              ListUtils.getSuffix(input, p),
              tBis.charsOf.list,
              suffixBis,
              rBis,
              tBis
            )
            assert(tBis.charsOf.list.size <= p.size)
            check(false)
            check(!matchR(rBis.regex, pBis))

          }
        }

      }

    }.ensuring (_ => !matchR(rBis.regex, pBis))

    @ghost
    @opaque
    @inlineOnce
    def lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule[C: ClassTag : Hashable](
        rules: List[Rule[C]],
        p: List[C],
        input: List[C],
        suffix: List[C],
        r: Rule[C]
    ): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rules.contains(r))
      require(input == p ++ suffix)
      require(!p.isEmpty)
      require({
        r.transformation.lemmaSemiInverse(seqFromList(p))
        maxPrefix(rules, input) == Some(Token(r.transformation.apply(seqFromList(p)), r, p.size, p), suffix)
      })
      require({
        lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(r, rules)
        matchR(r.regex, p)
      })
      decreases(rules.size)
      val token: Token[C] = Token(r.transformation.apply(seqFromList(p)), r, p.size, p)
      rules match {
        case Cons(hd, tl) if hd == r => {
          lemmaInvariantOnRulesThenOnTail(hd, tl)
          if (tl.isEmpty) {
            check(maxPrefixOneRule(r, input) == Some(token, suffix))
          } else {
            lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok(hd, tl, input)
            assert(maxPrefix(tl, input).isEmpty || maxPrefix(tl, input).get._1.rule != r)
            check(maxPrefixOneRule(r, input) == Some(token, suffix))
          }
        }
        case Cons(hd, tl) if hd != r => {
          lemmaInvariantOnRulesThenOnTail(hd, tl)
          val otherTokSufOpt = maxPrefixOneRule(hd, input)
          if (otherTokSufOpt.isEmpty) {
            lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(tl, p, input, suffix, r)
          } else {
            assert(otherTokSufOpt.get._1.rule == hd)
            if (otherTokSufOpt.get._1.rule == r) {
              assert(hd == r)
              lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq(rules, hd, r)
              check(false)
            } else {
              assert(otherTokSufOpt.get._1.rule != r)
              assert(maxPrefixOneRule(hd, input) != Some(Token(r.transformation.apply(seqFromList(p)), r, p.size, p), suffix))
              assert(maxPrefix(tl, input) == Some(Token(r.transformation.apply(seqFromList(p)), r, p.size, p), suffix))
              lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(tl, p, input, suffix, r)
            }

          }
        }
        case Nil() => check(false)

      }

    }.ensuring (_ => maxPrefixOneRule(r, input) == Some(Token(r.transformation.apply(seqFromList(p)), r, p.size, p), suffix))

    @ghost
    @opaque
    @inlineOnce
    def lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok[C: ClassTag : Hashable](rHead: Rule[C], rTail: List[Rule[C]], input: List[C]): Unit = {
      require(!rTail.isEmpty)
      require(rulesInvariant(Cons(rHead, rTail)))
      decreases(rTail)

      rTail match {
        case Cons(hd, tl) => {
          lemmaNoDuplicateCanReorder(rHead, hd, tl)

          lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq(Cons(rHead, rTail), rHead, hd)
          if (!tl.isEmpty) {
            lemmaNoDupTagThenAlsoWithSubListAcc(List(hd.tag), Nil(), Cons(rHead, tl))
            lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok(rHead, tl, input)
          }
        }
        case Nil() => check(false)
      }

    }.ensuring (_ => maxPrefix(rTail, input).isEmpty || maxPrefix(rTail, input).get._1.rule != rHead)

    @ghost
    @opaque
    @inlineOnce
    def lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref[C: ClassTag : Hashable](
        rules: List[Rule[C]],
        p: List[C],
        t: Token[C],
        input: List[C],
        suffix: List[C],
        pBis: List[C],
        suffixBis: List[C],
        rBis: Rule[C],
        tBis: Token[C]
    ): Unit = {
      decreases(rules)
      require(p ++ suffix == input)
      require(ListUtils.isPrefix(p, input))
      require(ListUtils.isPrefix(pBis, input))

      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rules.contains(rBis))
      require(maxPrefix(rules, input) == Some(t, suffix))
      // require(t.characters == p) // this is implied by the fact that p ++ suffix == input

      require(ruleValid(rBis))
      require({
        ListUtils.lemmaIsPrefixRefl(input, input)
        maxPrefixOneRule(rBis, input) == Some(tBis, suffixBis)
      })
      require(tBis.rule == rBis)
      require(tBis.charsOf.list == pBis)
      require(pBis ++ suffixBis == input)

      rules match {
        case Cons(hd, Nil()) => ()
        case Cons(hd, tl) => {
          if (hd == rBis) {
            check(pBis.size <= p.size)
          } else {
            if (maxPrefixOneRule(hd, input) == Some(t, suffix)) {
              val othersPrefix = maxPrefix(tl, input)
              if (othersPrefix.isEmpty) {
                lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone(rBis, tl, input)
                check(false)
              }
              val tokSuff = othersPrefix.get
              val oPref = tokSuff._1.charsOf.list
              val suff: List[C] = tokSuff._2
              ListUtils.lemmaConcatTwoListThenFirstIsPrefix(oPref, suff)
              lemmaInvariantOnRulesThenOnTail(hd, tl)
              lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref(tl, oPref, tokSuff._1, input, suff, pBis, suffixBis, rBis, tBis)
              t.lemmaCharactersSize()
              tBis.lemmaCharactersSize()
              othersPrefix.get._1.lemmaCharactersSize()
              check(pBis.size <= oPref.size)
              
              check(oPref.size <= p.size)
              check(pBis.size <= p.size)
            } else {
              lemmaInvariantOnRulesThenOnTail(hd, tl)
              lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref(tl, p, t, input, suffix, pBis, suffixBis, rBis, tBis)
            }
          }
        }
        case Nil() => check(false)
      }

    }.ensuring (_ => pBis.size <= p.size)

    @ghost
    @opaque
    @inlineOnce
    def lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone[C: ClassTag : Hashable](
        r: Rule[C],
        rules: List[Rule[C]],
        input: List[C]
    ): Unit = {
      require(!rules.isEmpty)
      require(rulesValidInductive(rules))
      require(rules.contains(r))

      require(maxPrefix(rules, input).isEmpty)
      decreases(rules)

      lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(r, rules)

      rules match {
        case Cons(hd, tl) if r == hd => ()
        case Cons(hd, tl) if r != hd => {

          lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone(r, tl, input)
        }
        case Nil() => ()
      }

    }.ensuring (_ => maxPrefixOneRule(r, input).isEmpty)

    @ghost
    @opaque
    @inlineOnce
    def lemmaMaxPrefixOneRuleOutputsMaxPrefix[C: ClassTag : Hashable](
        r: Rule[C],
        p: List[C],
        t: Token[C],
        input: List[C],
        suffix: List[C],
        pBis: List[C]
    ): Unit = {
      decreases(input.size)

      require(p ++ suffix == input)
      require(ListUtils.isPrefix(p, input))
      require(ListUtils.isPrefix(pBis, input))
      require(pBis.size <= input.size)
      require(pBis.size > p.size)

      require(ruleValid(r))
      require(validRegex(r.regex))
      require(matchR(r.regex, p))
      require(t.charsOf.list == p)
      require({
        ListUtils.lemmaIsPrefixRefl(input, input)
        maxPrefixOneRule(r, input) == Some(t, suffix)
      })

      ListUtils.lemmaIsPrefixRefl(input, input)

      longestMatchNoBiggerStringMatch(r.regex, input, p, pBis)
    }.ensuring (_ => !matchR(r.regex, pBis))

    @ghost
    @opaque
    @inlineOnce
    def lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex[C: ClassTag : Hashable](
        r: Rule[C],
        p: List[C],
        input: List[C]
    ): Unit = {
      require(ListUtils.isPrefix(p, input))
      require(ruleValid(r))
      require(maxPrefixOneRule(r, input) == None[(Token[C], List[C])]())

      longestMatchNoBiggerStringMatch(r.regex, input, Nil(), p)

    }.ensuring (_ => !matchR(r.regex, p))

    @ghost
    @opaque
    @inlineOnce
    def lemmaRuleInListAndrulesValidInductiveThenRuleIsValid[C: ClassTag : Hashable](r: Rule[C], rules: List[Rule[C]]): Unit = {
      require(rules.contains(r))
      require(rulesValidInductive(rules))
      decreases(rules)
      rules match {
        case Cons(hd, tl) if (hd == r) => assert(ruleValid(r))
        case Cons(hd, tl) if (hd != r) => {
          assert(tl.contains(r))
          lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(r, tl)
        }
        case Nil() => assert(false)
      }
    }.ensuring (_ => ruleValid(r))

    @ghost
    @opaque
    @inlineOnce
    def lemmaInvariantOnRulesThenOnTail[C: ClassTag : Hashable](r: Rule[C], rules: List[Rule[C]]): Unit = {
      require(rulesInvariant(Cons(r, rules)))
      assert(rulesValidInductive(Cons(r, rules)) && noDuplicateTag(Cons(r, rules), Nil()))
      assert(rulesValidInductive(rules))
      assert(noDuplicateTag(rules, List(r.tag)))

      lemmaNoDupTagThenAlsoWithSubListAcc(List(r.tag), Nil(), rules)
      assert(noDuplicateTag(rules, Nil()))

    }.ensuring (_ => rulesInvariant(rules))

    @ghost
    @opaque
    @inlineOnce
    def lemmaNoDuplicateCanReorder[C: ClassTag : Hashable](e1: Rule[C], e2: Rule[C], l: List[Rule[C]]): Unit = {
      require(noDuplicateTag(Cons(e1, Cons(e2, l)), List()))

      assert(noDuplicateTag(Cons(e1, Cons(e2, l)), List()) == noDuplicateTag(Cons(e2, l), List(e1.tag)))
      assert(noDuplicateTag(Cons(e2, l), List(e1.tag)) == noDuplicateTag(l, List(e2.tag, e1.tag)))
      assert(List(e2.tag, e1.tag).toSet == List(e1.tag, e2.tag).toSet)
      lemmaNoDuplicateSameWithAccWithSameContent(l, List(e2.tag, e1.tag), List(e1.tag, e2.tag))
      assert(noDuplicateTag(l, List(e2.tag, e1.tag)) == noDuplicateTag(l, List(e1.tag, e2.tag))) 
    }.ensuring (_ => noDuplicateTag(Cons(e2, Cons(e1, l)), List()))

    @ghost
    @opaque
    @inlineOnce
    def lemmaNoDuplicateSameWithAccWithSameContent[C: ClassTag : Hashable](l: List[Rule[C]], acc: List[String], newAcc: List[String]): Unit = {
      require(noDuplicateTag(l, acc))
      require(acc.content == newAcc.content)
      decreases(l)

      l match {
        case Cons(hd, tl) => {
          ListSpecs.subsetContains(acc, newAcc)
          ListSpecs.subsetContains(newAcc, acc)
          assert(acc.contains(hd.tag) == newAcc.contains(hd.tag))
          lemmaNoDuplicateSameWithAccWithSameContent(tl, Cons(hd.tag, acc), Cons(hd.tag, newAcc))
        }
        case Nil() => ()
      }

    }.ensuring (_ => noDuplicateTag(l, newAcc))

    @ghost
    @opaque
    @inlineOnce
    def lemmaNoDupTagThenAlsoWithSubListAcc[C: ClassTag : Hashable](acc: List[String], newAcc: List[String], rules: List[Rule[C]]): Unit = {
      require(ListSpecs.subseq(newAcc, acc))
      require(noDuplicateTag(rules, acc))
      decreases(rules)

      rules match {
        case Cons(hd, tl) => {
          lemmaNoDupTagThenAlsoWithSubListAcc(Cons(hd.tag, acc), Cons(hd.tag, newAcc), tl)
          ListSpecs.subseqNotContains(newAcc, acc, hd.tag)
        }
        case Nil() => ()
      }

    }.ensuring (_ => noDuplicateTag(rules, newAcc))

    @ghost
    @opaque
    @inlineOnce
    def lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq[C: ClassTag : Hashable](rules: List[Rule[C]], r1: Rule[C], r2: Rule[C]): Unit = {
      require(rules.contains(r1))
      require(rules.contains(r2))
      require(noDuplicateTag(rules))
      require(ListUtils.getIndex(rules, r1) < ListUtils.getIndex(rules, r2))

    }.ensuring (_ => r1 != r2)

    @ghost
    @opaque
    @inlineOnce
    def lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq[C: ClassTag : Hashable](rules: List[Rule[C]], r1: Rule[C], r2: Rule[C]): Unit = {
      require(rules.contains(r1))
      require(rules.contains(r2))
      require(noDuplicateTag(rules))
      require(ListUtils.getIndex(rules, r1) < ListUtils.getIndex(rules, r2))
      decreases(rules)

      if (rules.head == r1) {
        lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame(rules.tail, r2, r1.tag, List(r1.tag))
        assert(noDuplicateTag(rules) == noDuplicateTag(rules.tail, List(r1.tag)))
      } else {
        lemmaNoDupTagThenAlsoWithSubListAcc(List(rules.head.tag), Nil(), rules.tail)
        ListUtils.lemmaGetIndexBiggerAndHeadNotEqThenTailContains(rules, r1, r2)
        lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq(rules.tail, r1, r2)
      }

    }.ensuring (_ => r1.tag != r2.tag)

    @ghost
    @opaque
    @inlineOnce
    def lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame[C: ClassTag : Hashable](rules: List[Rule[C]], r: Rule[C], tag: String, acc: List[String]): Unit = {
      require(acc.contains(tag))
      require(noDuplicateTag(rules, acc))
      require(rules.contains(r))
      decreases(rules)

      rules match {
        case Nil()                   => check(false)
        case Cons(hd, tl) if hd == r => ()
        case Cons(hd, tl) if hd != r => lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame(tl, r, tag, Cons(hd.tag, acc))
      }
    }.ensuring (_ => r.tag != tag)

    @ghost
    @opaque
    @inlineOnce
    def lemmaNonSepRuleNotContainsCharContainedInASepRule[C: ClassTag : Hashable](
        rules: List[Rule[C]],
        rulesRec: List[Rule[C]],
        rNSep: Rule[C],
        rSep: Rule[C],
        c: C
    ): Unit = {
      require(rulesInvariant(rules))
      require(rules.contains(rSep))
      require(rulesRec.contains(rNSep))
      require(rules.contains(rNSep))
      require(!rNSep.isSeparator)
      require(rSep.isSeparator)
      require(rSep.regex.usedCharacters.contains(c))
      require(LexerInterface.sepAndNonSepRulesDisjointChars(rules, rulesRec))
      decreases(rulesRec)

      rulesRec match {
        case Cons(hd, tl) if hd == rNSep => lemmaNonSepRuleNotContainsCharContainedInASepRuleInner(rules, rNSep, rSep, c)
        case Cons(hd, tl)                => lemmaNonSepRuleNotContainsCharContainedInASepRule(rules, tl, rNSep, rSep, c)
        case Nil()                       => ()
      }

    }.ensuring (_ => !rNSep.regex.usedCharacters.contains(c))

    @ghost
    @opaque
    @inlineOnce
    def lemmaNonSepRuleNotContainsCharContainedInASepRuleInner[C: ClassTag : Hashable](rules: List[Rule[C]], rNSep: Rule[C], rSep: Rule[C], c: C): Unit = {
      require(rulesInvariant(rules))
      require(rules.contains(rSep))
      require(rSep.regex.usedCharacters.contains(c))
      require(!rNSep.isSeparator)
      require(rSep.isSeparator)
      require(LexerInterface.ruleDisjointCharsFromAllFromOtherType(rNSep, rules))
      decreases(rules)

      rules match {
        case Cons(hd, tl) if hd == rSep =>
          ListSpecs.forallContained(rSep.regex.usedCharacters, (x: C) => !rNSep.regex.usedCharacters.contains(x), c)

        case Cons(hd, tl) => {
          lemmaInvariantOnRulesThenOnTail(hd, tl)
          lemmaNonSepRuleNotContainsCharContainedInASepRuleInner(tl, rNSep, rSep, c)
        }
        case Nil() => ()
      }

    }.ensuring (_ => !rNSep.regex.usedCharacters.contains(c))

    @ghost
    @opaque
    @inlineOnce
    def lemmaSepRuleNotContainsCharContainedInANonSepRule[C: ClassTag : Hashable](
        rules: List[Rule[C]],
        rulesRec: List[Rule[C]],
        rNSep: Rule[C],
        rSep: Rule[C],
        c: C
    ): Unit = {
      require(rulesInvariant(rules))
      require(rules.contains(rSep))
      require(rulesRec.contains(rNSep))
      require(rules.contains(rNSep))
      require(!rNSep.isSeparator)
      require(rSep.isSeparator)
      require(rNSep.regex.usedCharacters.contains(c))
      require(LexerInterface.sepAndNonSepRulesDisjointChars(rules, rulesRec))
      decreases(rulesRec)
      
      rulesRec match {
        case Cons(hd, tl) if hd == rNSep => lemmaSepRuleNotContainsCharContainedInANonSepRuleInner(rules, rNSep, rSep, c)
        case Cons(hd, tl)                => lemmaSepRuleNotContainsCharContainedInANonSepRule(rules, tl, rNSep, rSep, c)
        case Nil()                       => ()
      }

    }.ensuring (_ => !rSep.regex.usedCharacters.contains(c))

    @ghost
    @opaque
    @inlineOnce
    def lemmaSepRuleNotContainsCharContainedInANonSepRuleInner[C: ClassTag : Hashable](rules: List[Rule[C]], rNSep: Rule[C], rSep: Rule[C], c: C): Unit = {
      require(rulesInvariant(rules))
      require(rules.contains(rSep))
      require(rNSep.regex.usedCharacters.contains(c))
      require(!rNSep.isSeparator)
      require(rSep.isSeparator)
      require(LexerInterface.ruleDisjointCharsFromAllFromOtherType(rNSep, rules))
      decreases(rules)

      rules match {
        case Cons(hd, tl) if hd == rSep =>
          ListSpecs.forallContained(rNSep.regex.usedCharacters, (x: C) => !rSep.regex.usedCharacters.contains(x), c)

        case Cons(hd, tl) => {
          lemmaInvariantOnRulesThenOnTail(hd, tl)
          lemmaSepRuleNotContainsCharContainedInANonSepRuleInner(tl, rNSep, rSep, c)
        }
        case Nil() => ()
      }

    }.ensuring (_ => !rSep.regex.usedCharacters.contains(c))

    @ghost
    @opaque
    @inlineOnce
    def lemmaRulesProduceEachTokenIndividuallyThenForAnyToken[C: ClassTag : Hashable](rules: List[Rule[C]], tokens: List[Token[C]], t: Token[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(tokens.contains(t))
      require(rulesProduceEachTokenIndividuallyList(rules, tokens))
      decreases(tokens)

      tokens match {
        case Cons(hd, tl) if hd == t => ()
        case Cons(hd, tl)            => lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, tl, t)
        case Nil()                   => ()
      }
    }.ensuring (_ => rulesProduceIndividualToken(rules, t))

    @ghost
    @opaque
    @inlineOnce
    def lemmaRulesProduceEachTokenIndividuallyThenForSubSeq[C: ClassTag : Hashable](rules: List[Rule[C]], tokens: List[Token[C]], tokensBis: List[Token[C]]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(ListSpecs.subseq(tokensBis, tokens))
      require(rulesProduceEachTokenIndividuallyList(rules, tokens))
      decreases(tokens)

      (tokensBis, tokens) match {
        case (Nil(), _) => ()
        case (Cons(x, xs), Cons(y, ys)) =>
          if (x == y && ListSpecs.subseq(xs, ys)) {
            lemmaRulesProduceEachTokenIndividuallyThenForSubSeq(rules, ys, xs)
          }
          else {
            lemmaRulesProduceEachTokenIndividuallyThenForSubSeq(rules, ys, tokensBis)
          }
        case _ => check(false)
        }
    }.ensuring (_ => rulesProduceEachTokenIndividuallyList(rules, tokensBis))

    @ghost
    @opaque
    @inlineOnce
    def lemmaRulesProduceEachTokenIndividuallyConcat[C: ClassTag : Hashable](rules: List[Rule[C]], ts1: List[Token[C]], ts2: List[Token[C]]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividuallyList(rules, ts1))
      require(rulesProduceEachTokenIndividuallyList(rules, ts2))

      ListUtils.lemmaConcatPreservesForall(ts1, ts2, (t: Token[C]) => rulesProduceIndividualToken(rules, t))

    }.ensuring (_ => rulesProduceEachTokenIndividuallyList(rules, ts1 ++ ts2))

    // Helper lemmas for tokensListTwoByTwoPredicate
    @ghost
    @inlineOnce
    @opaque
    def tokensListTwoByTwoPredicateConcatList[C: ClassTag : Hashable](l1: List[Token[C]], l2: List[Token[C]], rules: List[Rule[C]], p: (Token[C], Token[C], List[Rule[C]]) => Boolean): Unit = {
      require(tokensListTwoByTwoPredicateList(l1, rules, p) && tokensListTwoByTwoPredicateList(l2, rules, p))
      require(!l1.isEmpty && !l2.isEmpty)
      require(p(l1.last, l2.head, rules))
      decreases(l1.size)
      l1 match {
        case Cons(hd, tl) if !tl.isEmpty => tokensListTwoByTwoPredicateConcatList(tl, l2, rules, p)
        case Cons(hd, tl) if tl.isEmpty =>  ()
      }
    }.ensuring(_ => tokensListTwoByTwoPredicateList(l1 ++ l2, rules, p))

    @ghost
    @inlineOnce
    @opaque
    def tokensListTwoByTwoPredicateConcatSeparableTokensList[C: ClassTag : Hashable](l1: List[Token[C]], l2: List[Token[C]], rules: List[Rule[C]]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividuallyList(rules, l1) && rulesProduceEachTokenIndividuallyList(rules, l2))
      require(tokensListTwoByTwoPredicateSeparableList(l1, rules) && tokensListTwoByTwoPredicateSeparableList(l2, rules))
      require(!l1.isEmpty && !l2.isEmpty)
      require({
        lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, l1, l1.last)
        lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, l2, l2.head)
        separableTokensPredicate(l1.last, l2.head, rules)
      })
      decreases(l1.size)
      l1 match {
        case Cons(hd, tl) if !tl.isEmpty => tokensListTwoByTwoPredicateConcatSeparableTokensList(tl, l2, rules)
        case Cons(hd, tl) if tl.isEmpty =>  ()
      }
    }.ensuring(_ => {
      lemmaRulesProduceEachTokenIndividuallyConcat(rules, l1, l2)
      tokensListTwoByTwoPredicateSeparableList(l1 ++ l2, rules)
    })

    @ghost
    @inlineOnce
    @opaque
    def tokensListTwoByTwoPredicateSeparableTokensDropList[C: ClassTag : Hashable](l: List[Token[C]], i: BigInt, rules: List[Rule[C]]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividuallyList(rules, l))
      require(tokensListTwoByTwoPredicateSeparableList(l, rules))
      decreases(l)
      (l, i) match {
        case (Nil(), _) => ()
        case (Cons(hd, tl), i) =>
          if (i <= BigInt(0)) {
            ()
          } else {
            tokensListTwoByTwoPredicateSeparableTokensDropList(tl, i-1, rules)
          }
      }

      
    }.ensuring(_ => {
      unfold(rulesProduceEachTokenIndividuallyList(rules, l.drop(i)))
      ListUtils.lemmaDropSubseq(l, i)
      ListUtils.lemmaForallSubseq(l.drop(i), l, (t: Token[C]) => Lexer.rulesProduceIndividualToken(rules, t))
      tokensListTwoByTwoPredicateSeparableList(l.drop(i), rules)
    })

    @ghost
    @inlineOnce
    @opaque
    def tokensListTwoByTwoPredicateSeparableTokensTakeList[C: ClassTag : Hashable](l: List[Token[C]], i: BigInt, rules: List[Rule[C]]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividuallyList(rules, l))
      require(tokensListTwoByTwoPredicateSeparableList(l, rules))
      decreases(l)
      (l, i) match {
        case (Nil(), _) => ()
        case (Cons(hd, tl), i) =>
          if (i <= BigInt(0)) {
            ()
          } else {
            tokensListTwoByTwoPredicateSeparableTokensTakeList(tl, i-1, rules)
          }
        }

      
    }.ensuring(_ => {
      unfold(rulesProduceEachTokenIndividuallyList(rules, l.take(i)))
      ListUtils.lemmaForallSubseq(l.take(i), l, (t: Token[C]) => Lexer.rulesProduceIndividualToken(rules, t))
      tokensListTwoByTwoPredicateSeparableList(l.take(i), rules)
    })

    @ghost
    @inlineOnce
    @opaque
    def tokensListTwoByTwoPredicateInstantiate[C: ClassTag : Hashable](l: List[Token[C]], rules: List[Rule[C]], p: (Token[C], Token[C], List[Rule[C]]) => Boolean, t1: Token[C], t2: Token[C], i: BigInt): Unit = {
      require(tokensListTwoByTwoPredicateList(l, rules, p))
      require(i >= 0 && i+1 < l.size)
      require(l(i) == t1 && l(i + 1) == t2)
      decreases(i)
      if(i == 0) {
        check(p(t1, t2, rules))
      } else {
        tokensListTwoByTwoPredicateInstantiate(l.tail, rules, p, t1, t2, i-1)
      }
      
    }.ensuring(_ => p(t1, t2, rules))

    @ghost
    @inlineOnce
    @opaque
    def tokensListTwoByTwoPredicateInstantiateSeparableTokens[C: ClassTag : Hashable](l: List[Token[C]], rules: List[Rule[C]], t1: Token[C], t2: Token[C], i: BigInt): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividuallyList(rules, l))
      require(tokensListTwoByTwoPredicateSeparableList(l, rules))
      require(i >= 0 && i+1 < l.size)
      require(l(i) == t1 && l(i + 1) == t2)
      decreases(i)
      if(i == 0) {
        check(separableTokensPredicate(t1, t2, rules))
      } else {
        tokensListTwoByTwoPredicateInstantiateSeparableTokens(l.tail, rules, t1, t2, i-1)
      }

    }.ensuring(_ => {
      lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, l, t1)
      lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, l, t2)
      separableTokensPredicate(t1, t2, rules)
    })

    @ghost
    @inlineOnce
    @opaque
    def lemmaMaxPrefixThenMatchesRulesRegex[C: ClassTag : Hashable]( 
      rules: List[Rule[C]],
      input: List[C],
      token: Token[C],
      rule: Rule[C],
      suffix: List[C]
    ): Unit = {
        require(!rules.isEmpty)
        require(rulesInvariant(rules))
        require(rules.contains(rule))
        require(maxPrefix(rules, input) == Some(token, suffix))
        require(token.rule == rule)
        require(input == token.charsOf.list ++ suffix)
        require({
          lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(rule, rules)
          matchR(rule.regex, token.charsOf.list)
        })

        lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, token.charsOf.list, input, suffix, rule)
        assert(maxPrefixOneRule(rule, input) == Some(token, suffix))

        assert(matchR(rule.regex, token.charsOf.list))
        assert(rules.contains(rule))
        ghostExpr({
          def lemma(@induct rs: List[Rule[C]]): Unit = {
            require(rulesValid(rs))
          }.ensuring(_ => rs.map(_.regex).forall(r => validRegex(r)))
          lemma(rules)
        })
        assert(rulesRegex(rules) == VerifiedRegex.generalisedUnion(rules.map(_.regex)))
        ghostExpr({
          def lemma(rs: List[Rule[C]]): Unit = {
            require(rulesValid(rs))
            require(rs.contains(rule))
            decreases(rs)
            rs match
              case Cons(hd, tl) if hd != rule => lemma(tl)
              case _ => ()
          }.ensuring(_ => rs.map(_.regex).contains(rule.regex))
          lemma(rules)
        })
        val l = rules.map(_.regex)
        assert(l.contains(rule.regex))
        matchRGenUnionSpec(rulesRegex(rules), l, token.charsOf.list) 

        assert(l.contains(rule.regex))
        assert(validRegex(rule.regex))
        assert(matchR(rule.regex, token.charsOf.list))
        ListUtils.lemmaContainsThenExists(l, rule.regex, rr => validRegex(rr) && matchR(rr, token.charsOf.list))
        assert(l.exists(rr => validRegex(rr) && matchR(rr, token.charsOf.list)))


    }.ensuring(_ => matchR(rulesRegex(rules), token.charsOf.list))
    
  }
}
