/** Author: Samuel Chassot
  */

package com.ziplex.lexer

import stainless.annotation._
import stainless.collection._
import stainless.equations._
import stainless.lang.Quantifiers._

import scala.annotation.tailrec
// BEGIN uncomment for verification ------------------------------------------
// import stainless.lang.StaticChecks._
// import stainless.lang.{ghost => ghostExpr, _}
// import stainless.proof.check
// END uncomment for verification --------------------------------------------
// BEGIN imports for benchmarking -------------------------------------------
import stainless.lang.{ghost => _, decreases => _, unfold => _, _}
import com.ziplex.lexer.OptimisedChecks.*
import Predef.{assert => _, Ensuring => _, require => _}

@tailrec
def dummy(x: BigInt): BigInt = {
  if (x == BigInt(0)) then x
  else dummy(x - BigInt(1))
}.ensuring( res => res == BigInt(0))
// END imports for benchmarking ---------------------------------------------

object VerifiedLexer {
  import VerifiedRegex._
  import VerifiedRegexMatcher._
  import com.ziplex.lexer.MemoisationZipper.CacheUp
  import com.ziplex.lexer.MemoisationZipper.CacheDown

  /** Safe constructor that returns None if the tokens are not printable with the given rules
    *
    * This should be used at runtime as invariants are erased
    * @param rules
    * @param tokens
    * @return
    */
  def printableTokensFromTokens[C](rules: List[Rule[C]], tokens: Vector[Token[C]]): Option[PrintableTokens[C]] = {
    require(!rules.isEmpty)
    require(Lexer.rulesInvariant(rules)) // this should checked at runtime before lexing
    require(Lexer.rulesProduceEachTokenIndividually(rules, tokens)) // this is ensured by lexing

    if (Lexer.separableTokens(tokens, rules)) {
      Some(PrintableTokens(rules, tokens))
    } else {
      None()
    }
  }.ensuring(res => res.isEmpty || (res.get.rules == rules && res.get.tokens == tokens))

  def printableTokensFromTokensMem[C](rules: List[Rule[C]], tokens: Vector[Token[C]])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Option[PrintableTokens[C]] = {
    require(!rules.isEmpty)
    require(Lexer.rulesInvariant(rules)) // this should checked at runtime before lexing
    require(Lexer.rulesProduceEachTokenIndividually(rules, tokens)) // this is ensured by lexing

    if (Lexer.separableTokensMem(tokens, rules)) {
      Some(PrintableTokens(rules, tokens))
    } else {
      None()
    }
  }.ensuring(res => res.isEmpty || (res.get.rules == rules && res.get.tokens == tokens))

  def emptyPrintableTokens[C](rules: List[Rule[C]]): PrintableTokens[C] = {
    require(!rules.isEmpty)
    require(Lexer.rulesInvariant(rules)) // this should checked at runtime before lexing

    PrintableTokens(rules, Vector.empty[Token[C]])
  }.ensuring(res => res.rules == rules && res.tokens.isEmpty)

  case class PrintableTokens[C](rules: List[Rule[C]], tokens: Vector[Token[C]]) {
      require(!rules.isEmpty)
      require(Lexer.rulesInvariant(rules))
      require(Lexer.rulesProduceEachTokenIndividually(rules, tokens))
      require(Lexer.separableTokens(tokens, rules))

      def lemmaInvariant(): Unit = {
      }.ensuring(_ => Lexer.rulesInvariant(rules) && Lexer.rulesProduceEachTokenIndividually(rules, tokens) && Lexer.separableTokens(tokens, rules))

      def size: BigInt = tokens.size
      def print(): Vector[C] = {
        ghostExpr({
          Lexer.theoremInvertabilityWhenTokenListSeparable(rules, tokens.list)
          Vector.listEqImpliesEq(Vector.fromList(tokens.list), tokens)
          Vector.listEqImpliesEq(Lexer.lex(rules, Lexer.print(tokens))._2 , Vector.empty[C])
          Vector.listEqImpliesEq(Lexer.lex(rules, Lexer.print(tokens))._1, tokens)
        })
        Lexer.print(tokens)
      }.ensuring(res => Lexer.lex(rules, res) == (tokens, Vector.empty[C]))

      def append(other: PrintableTokens[C]): Option[PrintableTokens[C]] = {
        require(rules == other.rules)
        other.lemmaInvariant()
        this.lemmaInvariant()
        if(other.tokens.isEmpty) {
          assert(this.rules == other.rules)
          ghostExpr(Vector.listEqImpliesEq(tokens ++ other.tokens, Vector.fromList(tokens.list ++ other.tokens.list)))
          ghostExpr(Vector.listEqImpliesEq(other.tokens , Vector.empty[Token[C]]))
          ghostExpr(Vector.listEqImpliesEq(this.tokens ++ Vector.empty[Token[C]], this.tokens))

          ghostExpr(Vector.listEqImpliesEq(this.print(), Vector.fromList(Lexer.printList(this.tokens.list))))
          ghostExpr(Lexer.lemmaPrintConcatSameAsConcatPrint(this.tokens.list, Nil[Token[C]]()))
          ghostExpr(unfold(Lexer.printList(Nil[Token[C]]())))

          ghostExpr(unfold(this.print()))
          ghostExpr(unfold(other.print()))
          ghostExpr(unfold(Lexer.print(other.tokens)))
          ghostExpr(unfold(Lexer.printList(other.tokens.list)))
          assert(Lexer.print(other.tokens) == Vector.empty[C])

          ghostExpr(Vector.listEqImpliesEq(this.print() ++ Vector.empty[C], this.print()))

          Some(this)
        } else if(this.tokens.isEmpty) {
          ghostExpr(Vector.listEqImpliesEq(tokens ++ other.tokens, Vector.fromList(tokens.list ++ other.tokens.list)))
          assert(this.rules == other.rules)
          ghostExpr(Vector.listEqImpliesEq(this.tokens , Vector.empty[Token[C]]))
          ghostExpr(Vector.listEqImpliesEq(Vector.empty[Token[C]] ++ other.tokens, other.tokens))
          assert(this.tokens == Vector.empty[Token[C]])
          assert(other.tokens == Vector.empty[Token[C]] ++ other.tokens)
          ghostExpr(Vector.listEqImpliesEq(other.print(), Vector.fromList(Lexer.printList(other.tokens.list))))
          ghostExpr(Lexer.lemmaPrintConcatSameAsConcatPrint(Nil(), other.tokens.list))

          ghostExpr(unfold(Lexer.printList(Nil[Token[C]]())))

          ghostExpr(unfold(this.print()))
          ghostExpr(unfold(other.print()))
          ghostExpr(unfold(Lexer.print(other.tokens)))
          ghostExpr(unfold(Lexer.printList(other.tokens.list)))
          assert(Lexer.print(this.tokens) == Vector.empty[C])

          ghostExpr(Vector.listEqImpliesEq(Vector.empty[C] ++ other.print(), other.print()))

          Some(other) 
        } else {
          ghostExpr(Lexer.lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, this.tokens.list, this.tokens.last))
          ghostExpr(Lexer.lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, other.tokens.list, other.tokens.head))
          if (Lexer.separableTokensPredicate(tokens.last, other.tokens.head, rules)) {
            ghostExpr(Vector.listEqImpliesEq(tokens ++ other.tokens, Vector.fromList(tokens.list ++ other.tokens.list)))
            ghostExpr(Vector.listEqImpliesEq(tokens, Vector.fromList(tokens.list)))
            ghostExpr(Vector.listEqImpliesEq(other.tokens, Vector.fromList(other.tokens.list)))

            ghostExpr(Lexer.tokensListTwoByTwoPredicateConcatSeparableTokensList(tokens.list, other.tokens.list, rules))
            assert(Lexer.tokensListTwoByTwoPredicateSeparable(this.tokens ++ other.tokens, 0, rules))

            ghostExpr(Vector.listEqImpliesEq(this.print(), Vector.fromList(Lexer.printList(this.tokens.list))))
            ghostExpr(Vector.listEqImpliesEq(other.print(), Vector.fromList(Lexer.printList(other.tokens.list))))
            ghostExpr(Vector.listEqImpliesEq(this.print() ++ other.print(), Vector.fromList(Lexer.printList(this.tokens.list) ++ Lexer.printList(other.tokens.list))))
            
            
            ghostExpr(Lexer.lemmaPrintConcatSameAsConcatPrint(this.tokens.list, other.tokens.list))
            assert(this.print() ++ other.print() == Vector.fromList(Lexer.printList(this.tokens.list ++ other.tokens.list)))

            ghostExpr(unfold(this.print()))
            ghostExpr(unfold(other.print()))
            ghostExpr(unfold(PrintableTokens(rules, tokens ++ other.tokens).print()))
            ghostExpr(Vector.listEqImpliesEq(PrintableTokens(rules, tokens ++ other.tokens).tokens, this.tokens ++ other.tokens))

            ghostExpr(Lexer.lemmaPrintConcatSameAsConcatPrint(this.tokens.list, other.tokens.list))
            assert(Lexer.printList(this.tokens.list ++ other.tokens.list) == Lexer.printList(this.tokens.list) ++ Lexer.printList(other.tokens.list))
            assert(Lexer.print(tokens ++ other.tokens).list == Lexer.printList(tokens.list) ++ Lexer.printList(other.tokens.list))

            ghostExpr(Vector.listEqImpliesEq(Lexer.print(tokens ++ other.tokens), Lexer.print(tokens) ++ Lexer.print(other.tokens)))
            ghostExpr(Vector.listEqImpliesEq(this.print() ++ other.print(), Vector.fromList(this.print().list ++ other.print().list)))
            ghostExpr(Vector.listEqImpliesEq(this.print() ++ other.print(), Vector.fromList(PrintableTokens(rules, tokens ++ other.tokens).print().list)))

            Some(PrintableTokens(rules, tokens ++ other.tokens))
          } else {
            None()
          }
        }
      }.ensuring(res => res.isEmpty || (res.get.rules == rules && res.get.tokens == tokens ++ other.tokens && res.get.print() == this.print() ++ other.print()))

      def slice(from: BigInt, to: BigInt): PrintableTokens[C] = {
        require(0 <= from && from <= to && to <= tokens.size)

        ghostExpr(Vector.listEqImpliesEq(tokens.slice(from, to), Vector.fromList(tokens.list.slice(from, to))))
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
      }.ensuring(res => res.rules == rules && res.tokens == tokens.slice(from, to))
    }

  case object Lexer extends LexerInterface {
    def ruleValid[C](r: Rule[C]): Boolean = {
      validRegex(r.regex) && !r.regex.nullable && r.tag != ""
    }
    def noDuplicateTag[C](rules: List[Rule[C]], acc: List[String] = Nil()): Boolean = {
      decreases(rules)
      rules match {
        case Nil()        => true
        case Cons(hd, tl) => !acc.contains(hd.tag) && noDuplicateTag(tl, Cons(hd.tag, acc))
      }
    }
    @ghost
    def rulesValidInductive[C](rs: List[Rule[C]]): Boolean = {
      decreases(rs)
      rs match {
        case Cons(hd, tl) => ruleValid(hd) && rulesValidInductive(tl)
        case Nil()        => true
      }
    }.ensuring(res => res == rs.forall(ruleValid))

    def rulesValid[C](rs: List[Rule[C]]): Boolean = {
      rs.forall(ruleValid)
    }.ensuring(res => res == rulesValidInductive(rs))

    @pure
    override def rulesProduceIndividualToken[C](rs: List[Rule[C]], t: Token[C]): Boolean = {
      require(!rs.isEmpty)
      require(rulesInvariant(rs))
      val (producedTs, suffix) = lex(rs, print(Vector.singleton(t)))
      producedTs.size == 1 && producedTs(0) == t && suffix.isEmpty
    }.ensuring(res => {
      res == (lex(rs, print(Vector.singleton(t))) == (Vector.singleton(t), Vector.empty[C]))
    })

    def rulesProduceIndividualTokenMem[C](rs: List[Rule[C]], t: Token[C])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = {
      require(!rs.isEmpty)
      require(rulesInvariant(rs))
      val (producedTs, suffix) = lexMem(rs, print(Vector.singleton(t)))
      producedTs.size == 1 && producedTs(0) == t && suffix.isEmpty
    }.ensuring(res => res == rulesProduceIndividualToken(rs, t))

    @ghost
    def rulesProduceEachTokenIndividuallyList[C](rs: List[Rule[C]], ts: List[Token[C]]): Boolean = {
      require(!rs.isEmpty)
      require(rulesInvariant(rs))
      decreases(ts)
      ts match {
        case Cons(hd, tl) => rulesProduceIndividualToken(rs, hd) && rulesProduceEachTokenIndividuallyList(rs, tl)
        case Nil()        => true
      }
    }.ensuring(res => res == ts.forall(t => rulesProduceIndividualToken(rs, t)))

     override def rulesProduceEachTokenIndividually[C](rs: List[Rule[C]], ts: Vector[Token[C]]): Boolean = {
      require(!rs.isEmpty)
      require(rulesInvariant(rs))
      ts.forall(t => rulesProduceIndividualToken(rs, t))
    }

    def rulesProduceEachTokenIndividuallyMem[C](rs: List[Rule[C]], ts: Vector[Token[C]])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = {
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

    def rulesRegex[C](rules: List[Rule[C]]): Regex[C] = {
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
    def tokensListTwoByTwoPredicateList[C](l: List[Token[C]], rules: List[Rule[C]], pred: (Token[C], Token[C], List[Rule[C]]) => Boolean): Boolean = {
      decreases(l)
      l match {
        case Cons(hd, Cons(next, tl)) => pred(hd, next, rules) && tokensListTwoByTwoPredicateList(Cons(next, tl), rules, pred)
        case _                        => true
      }
    }

    @ghost
    def tokensListTwoByTwoPredicateSeparableList[C](l: List[Token[C]], rules: List[Rule[C]]): Boolean = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividually(rules, Vector.fromList(l)))
      decreases(l)
      l match {
        case Cons(hd, Cons(next, tl)) => 
          ghostExpr({
            lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, l, hd)
            lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, l, next)
            check(rulesProduceIndividualToken(rules, hd))
            check(rulesProduceIndividualToken(rules, next))

            check(next.characters.size > 0)
          })


          separableTokensPredicate(hd, next, rules) && tokensListTwoByTwoPredicateSeparableList(Cons(next, tl), rules)
        case _                        => true
      }
    }

     def tokensListTwoByTwoPredicate[C](v: Vector[Token[C]], from: BigInt, rules: List[Rule[C]], pred: (Token[C], Token[C], List[Rule[C]]) => Boolean): Boolean = {
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

          check(v(from + 1).characters.size > 0)
        })
        pred(v(from), v(from + 1), rules) && tokensListTwoByTwoPredicate(v, from + 1, rules, pred)
      else
        true
    }.ensuring(res => res == tokensListTwoByTwoPredicateList(v.dropList(from), rules, pred))


    override def separableTokens[C](tokens: Vector[Token[C]], rules: List[Rule[C]]): Boolean = 
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividually(rules, tokens))

      tokensListTwoByTwoPredicateSeparable(tokens, from = 0, rules)

    def separableTokensMem[C](tokens: Vector[Token[C]], rules: List[Rule[C]])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = { 
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividually(rules, tokens))
      tokensListTwoByTwoPredicateSeparableMem(tokens, from = 0, rules)
    }.ensuring(res => res == separableTokens(tokens, rules))

    
    @tailrec
    override def tokensListTwoByTwoPredicateSeparable[C](v: Vector[Token[C]], from: BigInt, rules: List[Rule[C]]): Boolean = {
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

          check(v(from + 1).characters.size > 0)
        })
        separableTokensPredicate(v(from), v(from + 1), rules) && tokensListTwoByTwoPredicateSeparable(v, from + 1, rules)
      else
        true
    }.ensuring(res => {
      ListUtils.lemmaDropSubSeq(v.list, from)
      lemmaRulesProduceEachTokenIndividuallyThenForSubSeq[C](rules, v.list, v.dropList(from))
      res == tokensListTwoByTwoPredicateSeparableList(v.dropList(from), rules)
    })

    def tokensListTwoByTwoPredicateSeparableMem[C](v: Vector[Token[C]], from: BigInt, rules: List[Rule[C]])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = {
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

          check(v(from + 1).characters.size > 0)
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

     override def separableTokensPredicate[C](t1: Token[C], t2: Token[C], rules: List[Rule[C]]): Boolean = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceIndividualToken(rules, t1))
      require(rulesProduceIndividualToken(rules, t2))
      require(!t2.characters.isEmpty)

      !VerifiedRegexMatcher.prefixMatchZipperVector(rulesRegex(rules), t1.characters ++ Vector.singleton(t2.characters(0)))
    }

    def separableTokensPredicateMem[C](t1: Token[C], t2: Token[C], rules: List[Rule[C]])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceIndividualToken(rules, t1))
      require(rulesProduceIndividualToken(rules, t2))
      require(!t2.characters.isEmpty)

      !VerifiedRegexMatcher.prefixMatchZipperVectorMem(rulesRegex(rules), t1.characters ++ Vector.singleton(t2.characters(0)))
    }.ensuring(res => res == separableTokensPredicate(t1, t2, rules))

     override def rulesInvariant[C](rules: List[Rule[C]]): Boolean =
      rulesValid(rules) && noDuplicateTag(rules, Nil())
    @ghost
    // @inlineOnce
    def lexList[C](
        rules: List[Rule[C]],
        input: List[C]
    ): (List[Token[C]], List[C]) = {
      decreases(input.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      maxPrefix(rules, input) match {
        case Some((token, suffix)) => {
          val (followingTokens, nextSuffix) = lexList(rules, suffix)
          assert(token.characters.list ++ suffix == input)
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
     override def lex[C](
        rules: List[Rule[C]],
        input: Vector[C]
    ): (Vector[Token[C]], Vector[C]) = {
      decreases(input.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      lexTailRec(
        rules,
        input,
        Vector.empty,
        input,
        Vector.empty
      )
    }.ensuring (res =>
      (if (res._1.size > 0) res._2.size < input.size && !res._1.isEmpty
      else res._2 == input) &&
      (res._1.list == lexList(rules, input.list)._1 && 
       res._2.list == lexList(rules, input.list)._2)
    )

    def lexRec[C](
        rules: List[Rule[C]],
        input: Vector[C]
    ): (Vector[Token[C]], Vector[C]) = {
      decreases(input.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      maxPrefixZipperVector(rules, input) match {
        case Some((token, suffix)) => {
          val (followingTokens, nextSuffix) = lexRec(rules, suffix)
          assert(token.characters.list ++ suffix.list == input.list)
          ghostExpr(Vector.listEqImpliesEq(token.characters ++ suffix, input))
          assert(token.characters ++ suffix == input)
          (followingTokens.prepend(token), nextSuffix)
        }
        case None() => (Vector.empty, input)
      }
    }.ensuring (res =>
      (if (res._1.size > 0) res._2.size < input.size && !res._1.isEmpty
      else res._2 == input) &&
      (res._1.list == lexList(rules, input.list)._1 && 
       res._2.list == lexList(rules, input.list)._2)
    )
    @tailrec
    def lexTailRec[C](
        rules: List[Rule[C]],
        @ghost totalInput: Vector[C],
        @ghost treated: Vector[C],
        input: Vector[C],
        acc: Vector[Token[C]],
    ): (Vector[Token[C]], Vector[C]) = {
      decreases(input.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(totalInput == treated ++ input)
      require(lexRec(rules, treated) == (acc, Vector.empty[C]))
      require(lexRec(rules, totalInput) == (acc ++ lexRec(rules, input)._1, lexRec(rules, input)._2))
      maxPrefixZipperVector(rules, input) match {
        case Some((token, suffix)) => {
          @ghost val (followingTokens, nextSuffix) = lexRec(rules, suffix)
          assert(token.characters.list ++ suffix.list == input.list)
          ghostExpr(Vector.listEqImpliesEq(token.characters ++ suffix, input))
          assert(token.characters ++ suffix == input)
          assert(lexRec(rules, suffix) == (followingTokens, nextSuffix))
          assert(treated ++ (token.characters ++ suffix) == totalInput)
          ghostExpr(ListUtils.lemmaTwoListsConcatAssociativity(treated.list, token.characters.list, suffix.list))
          ghostExpr(Vector.listEqImpliesEq((treated ++ token.characters) ++ suffix, totalInput))
          assert(lexRec(rules, treated) == (acc, Vector.empty[C]))
          ghostExpr(unfold(lexRec(rules, input)))
          assert(lexRec(rules, input)._1.head == token)
          assert(lexRec(rules, input)._1.list == List(token) ++ followingTokens.list)
          assert(token.characters ++ suffix == input)
          assert(followingTokens.prepend(token) == lexRec(rules, input)._1)
          ghostExpr(ListUtils.lemmaTwoListsConcatAssociativity(acc.list, List(token), followingTokens.list))
          ghostExpr(Vector.listEqImpliesEq(acc.append(token) ++ followingTokens, acc ++ lexRec(rules, input)._1))
          assert(acc.append(token) ++ followingTokens == acc ++ lexRec(rules, input)._1)
          assert(lexRec(rules, treated ++ token.characters ++ suffix) == (acc.append(token) ++ followingTokens, nextSuffix))
          assert(lexRec(rules, suffix) == (followingTokens, nextSuffix))
          assert(acc.append(token).list == acc.list ++ List(token) )
          ghostExpr(lemmaLexThenLexPrefix(rules, treated.list ++ token.characters.list, suffix.list, acc.append(token).list, followingTokens.list, nextSuffix.list))
          assert(lexList(rules, treated.list ++ token.characters.list) == (acc.list ++ List(token), List[C]()))

          assert(lexList(rules, treated.list ++ token.characters.list)._1 == lexRec(rules, treated ++ token.characters)._1.list)
          assert(lexList(rules, treated.list ++ token.characters.list)._2 == lexRec(rules, treated ++ token.characters)._2.list)
          assert(treated.list ++ token.characters.list == (treated ++ token.characters).list)
          ghostExpr(unfold(lexRec(rules, treated ++ token.characters)))
          assert(lexRec(rules, treated ++ token.characters)._1.list == (acc.append(token).list))
          assert(lexRec(rules, treated ++ token.characters)._2.list == List[C]())
          ghostExpr(Vector.listEqImpliesEq(lexRec(rules, treated ++ token.characters)._1, acc.append(token)))
          ghostExpr(Vector.listEqImpliesEq(lexRec(rules, treated ++ token.characters)._2, Vector.empty[C]))
          assert(lexRec(rules, treated ++ token.characters)._1 == (acc.append(token)))
          assert(lexRec(rules, treated ++ token.characters) == (acc.append(token), Vector.empty[C]))
          assert(lexRec(rules, treated ++ token.characters) == (acc.append(token), Vector.empty[C]))
          @ghost val newTreated = treated ++ token.characters
          lexTailRec(
            rules,
            totalInput,
            newTreated,
            suffix,
            acc.append(token)
          )
        }
        case None() => {
          ghostExpr(Vector.listEqImpliesEq(acc ++ Vector.empty[Token[C]], acc))
          (acc, input)
        }
      }
    }.ensuring (res => res == lexRec(rules, totalInput) )


    def lexMem[C](
        rules: List[Rule[C]],
        input: Vector[C]
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): (Vector[Token[C]], Vector[C]) = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(cacheUp.valid)
      require(cacheDown.valid)
      decreases(input.size)

      ghostExpr(Vector.listEqImpliesEq(Vector.empty[C] ++ input, input))
      ghostExpr(Vector.listEqImpliesEq(Vector.empty[Token[C]] ++ lexRec(rules, input)._1, lexRec(rules, input)._1))

      lexTailRecMem(
        rules,
        input,
        Vector.empty,
        input,
        Vector.empty
      )
    }.ensuring (res => res == lex(rules, input))

    @tailrec
    def lexTailRecMem[C](
        rules: List[Rule[C]],
        @ghost totalInput: Vector[C],
        @ghost treated: Vector[C],
        input: Vector[C],
        acc: Vector[Token[C]],
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): (Vector[Token[C]], Vector[C]) = {
      decreases(input.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(cacheUp.valid)
      require(cacheDown.valid)
      require(totalInput == treated ++ input)
      require(lexRec(rules, treated) == (acc, Vector.empty[C]))
      require(lexRec(rules, totalInput) == (acc ++ lexRec(rules, input)._1, lexRec(rules, input)._2))
      unfold(lexTailRec(rules, totalInput, treated, input, acc))
      unfold(lex(rules, input))
      maxPrefixZipperVectorMem(rules, input) match {
        case Some((token, suffix)) => {
          @ghost val newTreated = treated ++ token.characters
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
    }.ensuring (res => res == lexTailRec(rules, totalInput, treated, input, acc) )

    @ghost
    def lexRegexList[C](
        rules: List[Rule[C]],
        input: List[C]
    ): (List[Token[C]], List[C]) = {
      decreases(input.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      maxPrefix(rules, input) match {
        case Some((token, suffix)) => {
          val (followingTokens, nextSuffix) = lexRegexList(rules, suffix)
          assert(token.characters.list ++ suffix == input)
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
    def printList[C](l: List[Token[C]]): List[C] = {
      decreases(l)
      l match {
        case Cons(hd, tl) => hd.characters.list ++ printList(tl)
        case Nil()        => Nil[C]()
      }
    }

    @ghost //@inlineOnce
    def printListTailRec[C](l: List[Token[C]], acc: List[C] = Nil()): List[C] = {
      decreases(l)
      l match {
        case Cons(hd, tl) => {
          ListUtils.lemmaTwoListsConcatAssociativity(acc, hd.characters.list, printList(tl))
          printListTailRec(tl, acc ++ hd.characters.list)
        }
        case Nil()        => acc
      }
    }.ensuring(res => res == acc ++ printList(l))

    override def print[C](v: Vector[Token[C]]): Vector[C] = {
      printTailRec(v)
    }.ensuring(res => res.list == printList(v.list))

    def printRec[C](v: Vector[Token[C]], from: BigInt = 0): Vector[C] = {
      require(from >= 0 && from <= v.size)
      decreases(v.size - from)
      if from >= v.size then
        Vector.empty
      else
        ghostExpr({
          ListUtils.lemmaDropApply(v.list, from)
          ListUtils.lemmaDropTail(v.list, from)
        })
        v(from).characters ++ printRec(v, from + 1)
    }.ensuring(res => res.list == printList(v.dropList(from)))

    def printTailRec[C](v: Vector[Token[C]], from: BigInt = 0, acc: Vector[C] = Vector.empty[C]): Vector[C] = {
      require(from >= 0 && from <= v.size)
      decreases(v.size - from)
      if from >= v.size then
        acc
      else
        ghostExpr({
          ListUtils.lemmaDropApply(v.list, from)
          ListUtils.lemmaDropTail(v.list, from)
        })
        printTailRec(v, from + 1, acc ++ v(from).characters)
    }.ensuring(res => res.list == printListTailRec(v.dropList(from), acc.list))


    /** Prints back the tokens to a list of characters of the type C, by adding a separatorToken between each, and after the last
      *
      * @param l
      * @param separatorToken
      */
    @ghost
    def printWithSeparatorTokenList[C](l: List[Token[C]], separatorToken: Token[C]): List[C] = {
      require(separatorToken.rule.isSeparator)
      decreases(l)
      l match {
        case Cons(hd, tl) => hd.characters.list ++ separatorToken.characters.list ++ printWithSeparatorTokenList(tl, separatorToken)
        case Nil()        => Nil[C]()
      }
    }

    override def withSeparatorToken[C](v: Vector[Token[C]], separatorToken: Token[C]): Vector[Token[C]] = {
      require(separatorToken.rule.isSeparator)
      assert(withSeparatorTokenInner(v, separatorToken).list == withSeparatorTokenList(v.list, separatorToken))
      assert(printList(withSeparatorTokenList(v.list, separatorToken)) == printWithSeparatorTokenList(v.list, separatorToken))
      assert(print(withSeparatorTokenInner(v, separatorToken)).list == printWithSeparatorTokenList(v.list, separatorToken))
      assert(print(withSeparatorTokenInner(v, separatorToken)).list == printWithSeparatorToken(v, separatorToken).list)
      ghostExpr(Vector.listEqImpliesEq(print(withSeparatorTokenInner(v, separatorToken)), printWithSeparatorToken(v, separatorToken)))
      assert(print(withSeparatorTokenInner(v, separatorToken)) == printWithSeparatorToken(v, separatorToken))
      withSeparatorTokenInner(v, separatorToken)
    }.ensuring(res => res.list == withSeparatorTokenList(v.list, separatorToken) && print(res) == printWithSeparatorToken(v, separatorToken))

    def withSeparatorTokenInner[C](v: Vector[Token[C]], separatorToken: Token[C], from: BigInt = 0, acc: Vector[Token[C]] = Vector.empty[Token[C]]): Vector[Token[C]] = {
      require(from >= 0 && from <= v.size)
      require(separatorToken.rule.isSeparator)
      decreases(v.size - from)
      if from >= v.size then
        acc
      else
        ghostExpr({
          ListUtils.lemmaDropApply(v.list, from)
          ListUtils.lemmaDropTail(v.list, from)
          Vector.listEqImpliesEq(Vector.singleton(v(from)) ++ Vector.singleton(separatorToken), Vector.fromList(List(v(from), separatorToken)))
          ListUtils.lemmaTwoListsConcatAssociativity(acc.list, List(v(from), separatorToken), withSeparatorTokenList(v.list.drop(from + 1), separatorToken))
          assert(withSeparatorTokenInner(v, separatorToken, from + 1, acc ++ (Vector.singleton(v(from)) ++ Vector.singleton(separatorToken))).list == (acc ++ (Vector.singleton(v(from)) ++ Vector.singleton(separatorToken))).list ++ withSeparatorTokenList(v.list.drop(from + 1), separatorToken))
          Vector.listEqImpliesEq(Vector.singleton(v(from)), Vector.fromList(List(v(from))))
          assert((acc ++ Vector.singleton(v(from))).list == acc.list ++ List(v(from)))
        })
        withSeparatorTokenInner(v, separatorToken, from + 1, acc ++ (Vector.singleton(v(from)) ++ Vector.singleton(separatorToken)))
    }.ensuring(res => res.list == acc.list ++ withSeparatorTokenList(v.list.drop(from), separatorToken))

    
    @ghost override def interleavingSeparatorTokenMakesSeparableSequence[C](rules: List[Rule[C]], tokens: Vector[Token[C]], separatorToken: Token[C]): Boolean = {
      if (!rules.isEmpty && 
        rulesInvariant(rules) && 
        rulesProduceEachTokenIndividually(rules, tokens) &&
        sepAndNonSepRulesDisjointChars(rules, rules) && 
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
    def withSeparatorTokenList[C](l: List[Token[C]], separatorToken: Token[C]): List[Token[C]] = {
      require(separatorToken.rule.isSeparator)
      decreases(l)
      l match {
        case Cons(hd, tl) => {
          unfold(printList(hd :: separatorToken :: withSeparatorTokenList(tl, separatorToken)))
          unfold(printList(separatorToken :: withSeparatorTokenList(tl, separatorToken)))
          ListUtils.lemmaTwoListsConcatAssociativity(hd.characters.list, separatorToken.characters.list, printList(withSeparatorTokenList(tl, separatorToken)))
          hd :: separatorToken :: withSeparatorTokenList(tl, separatorToken)
        }
        case Nil()        => Nil[Token[C]]()
      }
    }.ensuring(res => printList(res) == printWithSeparatorTokenList(l, separatorToken))


    @ghost
    def printWithSeparatorTokenListTailRec[C](l: List[Token[C]], separatorToken: Token[C], acc: List[C] = Nil[C]()): List[C] = {
      require(separatorToken.rule.isSeparator)
      decreases(l)
      l match {
        case Cons(hd, tl) => {
          ListUtils.lemmaTwoListsConcatAssociativity(acc, hd.characters.list ++ separatorToken.characters.list, printWithSeparatorTokenList(tl, separatorToken))
          ListUtils.lemmaTwoListsConcatAssociativity(acc, hd.characters.list, separatorToken.characters.list)
          printWithSeparatorTokenListTailRec(tl, separatorToken, acc ++ hd.characters.list ++ separatorToken.characters.list)
        }
        case Nil()        => acc
      }
    }.ensuring(res => res == acc ++ printWithSeparatorTokenList(l, separatorToken))
    

    override def printWithSeparatorToken[C](v: Vector[Token[C]], separatorToken: Token[C], from: BigInt = 0): Vector[C] = {
      require(from >= 0 && from <= v.size)
      require(separatorToken.rule.isSeparator)
      printWithSeparatorTokenTailRec(v, separatorToken, from)
    }.ensuring(res => res.list == printWithSeparatorTokenList(v.dropList(from), separatorToken))

    def printWithSeparatorTokenRec[C](v: Vector[Token[C]], separatorToken: Token[C], from: BigInt = 0): Vector[C] = {
      require(from >= 0 && from <= v.size)
      require(separatorToken.rule.isSeparator)
      decreases(v.size - from)
      if from >= v.size then
        Vector.empty
      else
        ghostExpr({
          ListUtils.lemmaDropApply(v.list, from)
          ListUtils.lemmaDropTail(v.list, from)
        })
        v(from).characters ++ separatorToken.characters ++ printWithSeparatorTokenRec(v, separatorToken, from + 1)
    }.ensuring(res => res.list == printWithSeparatorTokenList(v.dropList(from), separatorToken))

    def printWithSeparatorTokenTailRec[C](v: Vector[Token[C]], separatorToken: Token[C], from: BigInt = 0, acc: Vector[C] = Vector.empty[C]): Vector[C] = {
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
        printWithSeparatorTokenTailRec(v, separatorToken, from + 1, acc ++ v(from).characters ++ separatorToken.characters)
    }.ensuring(res => res.list == printWithSeparatorTokenListTailRec(v.dropList(from), separatorToken, acc.list))

    /** Prints back the tokens to a list of characters of the type C, by adding a separatorToken between tokens when the maxPrefix would return
      * another token if printed back to back.
      *
      * @param l
      * @param separatorToken
      */
    @ghost
    def printWithSeparatorTokenWhenNeededList[C](rules: List[Rule[C]], l: List[Token[C]], separatorToken: Token[C]): List[C] = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividuallyList(rules, l))
      require(rulesProduceIndividualToken(rules, separatorToken))
      require(separatorToken.rule.isSeparator)
      require(l.forall(!_.rule.isSeparator))
      require(sepAndNonSepRulesDisjointChars(rules, rules))
      decreases(l)

      l match {
        case Cons(hd, tl) => {
          ghostExpr({
            assert(l.contains(hd))
            ListSpecs.forallContained(l, t => rulesProduceIndividualToken(rules, t), hd)
          })
          val suffix = printWithSeparatorTokenWhenNeededList(rules, tl, separatorToken)
          val maxPrefWithoutSep = maxPrefix(rules, hd.characters.list ++ suffix)
          maxPrefWithoutSep match {
            case Some((t, s)) if t == hd => hd.characters.list ++ suffix
            case Some((t, s)) if t != hd => hd.characters.list ++ separatorToken.characters.list ++ suffix
            case None() => {
              ghostExpr({
                Vector.listEqImpliesEq(hd.characters, Vector.fromList(hd.characters.list))
                ghostExpr(unfold(print(Vector.singleton(hd))))
                assert(print(Vector.singleton(hd)).list == printList(List(hd)))
                assert(printList(List(hd)) == hd.characters.list)
                ghostExpr(Vector.listEqImpliesEq(print(Vector.singleton(hd)), hd.characters))
                assert(print(Vector.singleton(hd)) == hd.characters)
                assert(rulesProduceIndividualToken(rules, hd))
                assert(!lex(rules, Vector.fromList(hd.characters.list))._1.isEmpty)
                lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined(rules, hd.characters.list, suffix)
              })
              check(false)
              Nil[C]()
            }
          }
        }
        case Nil() => Nil[C]()
      }
    }

    override def printWithSeparatorTokenWhenNeeded[C](rules: List[Rule[C]], v: Vector[Token[C]], separatorToken: Token[C], from: BigInt = 0): Vector[C] = {
      require(from >= 0 && from <= v.size)
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividually(rules, v))
      require(rulesProduceIndividualToken(rules, separatorToken))
      require(separatorToken.rule.isSeparator)
      require(v.forall(!_.rule.isSeparator))
      require(sepAndNonSepRulesDisjointChars(rules, rules))
      decreases(v.size - from)

      ghostExpr(ListUtils.lemmaContentSubsetPreservesForall(v.list, v.dropList(from), t => !t.rule.isSeparator))

      if from >= v.size then
        Vector.empty
      else {
        ghostExpr({
          ListUtils.lemmaDropApply(v.list, from)
          ListUtils.lemmaDropTail(v.list, from)
          assert(v.contains(v(from)))
          assert(v.list.contains(v(from)))
          ListSpecs.forallContained(v.list, t => rulesProduceIndividualToken(rules, t), v(from))
        })
        val suffix = printWithSeparatorTokenWhenNeeded(rules, v, separatorToken, from + 1)
        val maxPrefWithoutSep = maxPrefixZipperVector(rules, v(from).characters ++ suffix)
        maxPrefWithoutSep match {
          case Some((t, s)) if t == v(from) => v(from).characters ++ suffix
          case Some((t, s)) if t != v(from) => v(from).characters ++ separatorToken.characters ++ suffix
          case None() => {
            ghostExpr({
              Vector.listEqImpliesEq(v(from).characters, Vector.fromList(v(from).characters.list))
              ghostExpr(unfold(print(Vector.singleton(v(from)))))
              assert(print(Vector.singleton(v(from))).list == printList(List(v(from))))
              assert(printList(List(v(from))) == v(from).characters.list)
              ghostExpr(Vector.listEqImpliesEq(print(Vector.singleton(v(from))), v(from).characters))
              assert(print(Vector.singleton(v(from))) == v(from).characters)
              assert(rulesProduceIndividualToken(rules, v(from)))
              assert(!lex(rules, Vector.fromList(v(from).characters.list))._1.isEmpty)
              lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined(rules, v(from).characters.list, suffix.list)
            })
            check(false)
            Vector.empty
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
    def maxPrefix[C](
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
                            res.get._1.characters.list == res.get._1.originalCharacters.list && 
                            res.get._2.size < input.size && 
                            res.get._1.characters.list ++ res.get._2 == input
                          )
                       && res.get._1.value == res.get._1.rule.transformation.apply(res.get._1.originalCharacters)
                       && matchR(res.get._1.rule.regex, res.get._1.characters.list)
                       && rulesArg.contains(res.get._1.rule)
        )
      )

    @ghost
    def maxPrefixZipper[C](
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

    def maxPrefixZipperVector[C](
        rulesArg: List[Rule[C]],
        input: Vector[C]
    ): Option[(Token[C], Vector[C])] = {
      require(rulesValidInductive(rulesArg))
      require(!rulesArg.isEmpty)
      decreases(rulesArg.size)

      ghostExpr(ListUtils.lemmaIsPrefixRefl(input.list, input.list))
      rulesArg match {
        case Cons(hd, Nil()) => maxPrefixOneRuleZipperVector(hd, input)
        case Cons(hd, tl) => {
          val currentRulePref = maxPrefixOneRuleZipperVector(hd, input)
          val othersPrefix = maxPrefixZipperVector(tl, input)
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

    def maxPrefixZipperVectorMem[C](
            rulesArg: List[Rule[C]],
            input: Vector[C]
        )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Option[(Token[C], Vector[C])] = {
          require(rulesValidInductive(rulesArg))
          require(!rulesArg.isEmpty)
          require(cacheUp.valid)
          require(cacheDown.valid)
          decreases(rulesArg.size)

          ghostExpr(ListUtils.lemmaIsPrefixRefl(input.list, input.list))
          rulesArg match {
            case Cons(hd, Nil()) => maxPrefixOneRuleZipperVectorMem(hd, input)
            case Cons(hd, tl) => {
              val currentRulePref = maxPrefixOneRuleZipperVectorMem(hd, input)
              val othersPrefix = maxPrefixZipperVectorMem(tl, input)
              (currentRulePref, othersPrefix) match {
                case (None(), None())   => None()
                case (c, None())        => c
                case (None(), o)        => o
                case (Some(c), Some(o)) => if c._1.size >= o._1.size then Some(c) else Some(o)
              }
            }
          }
        }.ensuring (res => res == maxPrefixZipperVector(rulesArg, input) && cacheUp.valid && cacheDown.valid)

    /** Finds the biggest prefix matching any rule in the input list of characters If nothing matched a rule, returns None Else, returns the matched
      * prefix and the remaining suffix
      *
      * @param rule
      * @param input
      */
    @ghost
    def maxPrefixOneRule[C](
        rule: Rule[C],
        input: List[C]
    ): Option[(Token[C], List[C])] = {
      require(ruleValid(rule))

      val (longestPrefix, suffix) = findLongestMatch(rule.regex, input)
      if (longestPrefix.isEmpty) {
        None[(Token[C], List[C])]()
      } else {
        ghostExpr(longestMatchIsAcceptedByMatchOrIsEmpty(rule.regex, input))
        ghostExpr(ForallOf((a: Vector[C]) => rule.transformation.witness(rule.transformation.f(a)) == a)(Vector.fromList(longestPrefix)))
        Some[(Token[C], List[C])]((Token(rule.transformation.apply(Vector.fromList(longestPrefix)), rule, Vector.fromList(longestPrefix).size, Vector.fromList(longestPrefix)), suffix))
      }

    }.ensuring (res =>
      res.isEmpty || matchR(
        rule.regex,
        res.get._1.characters.list
      ) && res.get._1.characters.list ++ res.get._2 == input && res.get._2.size < input.size && res.get._1.rule == rule
      && res.get._1.value == res.get._1.rule.transformation.apply(res.get._1.originalCharacters)
      && res.get._1.size == res.get._1.originalCharacters.size
    )

    @ghost
    def maxPrefixOneRuleZipper[C](
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
        ghostExpr(assert(Forall((a: Vector[C]) => rule.transformation.witness(rule.transformation.f(a)) == a)))
        ghostExpr(ForallOf((a: Vector[C]) => rule.transformation.witness(rule.transformation.f(a)) == a)(Vector.fromList(longestPrefix)))
        Some[(Token[C], List[C])]((Token(rule.transformation.apply(Vector.fromList(longestPrefix)), rule, Vector.fromList(longestPrefix).size, Vector.fromList(longestPrefix)), suffix))
      }
    }.ensuring (res => res == maxPrefixOneRule(rule, input))

    def maxPrefixOneRuleZipperVector[C](
        rule: Rule[C],
        input: Vector[C]
    ): Option[(Token[C], Vector[C])] = {
      require(ruleValid(rule))

      val (longestPrefix, suffix) = findLongestMatchWithZipperVector(rule.regex, input)
      if (longestPrefix.isEmpty) {
        None[(Token[C], Vector[C])]()
      } else {
        ghostExpr(longestMatchIsAcceptedByMatchOrIsEmpty(rule.regex, input.list))
        ghostExpr(rule.transformation.lemmaInv())
        ghostExpr(assert(Forall((a: Vector[C]) => rule.transformation.witness(rule.transformation.f(a)) == a)))
        ghostExpr(ForallOf((a: Vector[C]) => rule.transformation.witness(rule.transformation.f(a)) == a)(longestPrefix))
        ghostExpr(Vector.listEqImpliesEq(Vector.fromList(findLongestMatch(rule.regex, input.list)._1), longestPrefix))
        Some[(Token[C], Vector[C])]((Token(rule.transformation.apply(longestPrefix), rule, longestPrefix.size, longestPrefix), suffix))
      }

    }.ensuring (res => res.isDefined == maxPrefixOneRule(rule, input.list).isDefined && 
                       (if res.isDefined then res.get._1 == maxPrefixOneRule(rule, input.list).get._1 && 
                          res.get._2.list == maxPrefixOneRule(rule, input.list).get._2
                       else true))

     def maxPrefixOneRuleZipperVectorMem[C](
        rule: Rule[C],
        input: Vector[C]
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Option[(Token[C], Vector[C])] = {
      require(ruleValid(rule))
      require(cacheUp.valid)
      require(cacheDown.valid)

      val (longestPrefix, suffix) = findLongestMatchWithZipperVectorMem(rule.regex, input)
      assert((longestPrefix, suffix) == findLongestMatchWithZipperVector(rule.regex, input))
      if (longestPrefix.isEmpty) {
        None[(Token[C], Vector[C])]()
      } else {
        ghostExpr(longestMatchIsAcceptedByMatchOrIsEmpty(rule.regex, input.list))
        ghostExpr(rule.transformation.lemmaInv())
        ghostExpr(assert(Forall((a: Vector[C]) => rule.transformation.witness(rule.transformation.f(a)) == a)))
        ghostExpr(ForallOf((a: Vector[C]) => rule.transformation.witness(rule.transformation.f(a)) == a)(longestPrefix))
        ghostExpr(Vector.listEqImpliesEq(Vector.fromList(findLongestMatch(rule.regex, input.list)._1), longestPrefix))
        Some[(Token[C], Vector[C])]((Token(rule.transformation.apply(longestPrefix), rule, longestPrefix.size, longestPrefix), suffix))
      }

    }.ensuring (res => res == maxPrefixOneRuleZipperVector(rule, input))

    // Proofs --------------------------------------------------------------------------------------------------------------------------------

    // Correctness ---------------------------------------------------------------------------------------------------------------------------

    // The lexer is sound, i.e., if it produces a Tokenisation, it is valid w.r.t. the biggest prefix property
    @ghost
    @opaque
    @inlineOnce
    @pure
    def theoremLexSoundFirstChar[C](
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
        val (lexedTokens, lexedSuffix) = lex(rules, Vector.fromList(input))
        (lexedTokens.list, lexedSuffix.list) == (tokens, suffix)
      })
      require(tokens.isEmpty || tokens.head.characters.size <= otherP.size)
      require(tokens.isEmpty || tokens.head.rule == r)
      require(ListUtils.isPrefix(otherP, input))
      require(r != otherR)
      require({
        lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(r, rules)
        tokens.isEmpty || matchR(r.regex, tokens.head.characters.list)
      })

      lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(otherR, rules)
      if (ListUtils.getIndex(rules, r) > ListUtils.getIndex(rules, otherR)) {
        tokens match {
          case Nil() => {
            lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone(otherR, rules, input)
            lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex(otherR, otherP, input)
          }
          case Cons(hd, tl) => {
            Vector.listEqImpliesEq(Vector.fromList(hd.characters.list), hd.characters)
            val (tok, suf) = maxPrefix(rules, input).get
            assert(hd == tok)
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(hd.characters.list, suf)
            ListUtils.lemmaSamePrefixThenSameSuffix(hd.characters.list, suf, hd.characters.list, ListUtils.getSuffix(input, hd.characters.list), input)
            if (otherP.size == hd.characters.list.size) {
              ListUtils.lemmaIsPrefixSameLengthThenSameList(hd.characters.list, otherP, input)
              lemmaMaxPrefNoSmallerRuleMatches(rules, r, hd.characters.list, input, otherR)
            } else {
              lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, hd.characters.list, input, suf, r)
              lemmaMaxPrefixOutputsMaxPrefix(rules, r, hd.characters.list, input, otherP, otherR)
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
            Vector.listEqImpliesEq(Vector.fromList(hd.characters.list), hd.characters)
            val (tok, suf) = maxPrefix(rules, input).get
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(hd.characters.list, suf)
            ListUtils.lemmaSamePrefixThenSameSuffix(hd.characters.list, suf, hd.characters.list, ListUtils.getSuffix(input, hd.characters.list), input)
            if (otherP.size > hd.characters.list.size) {
              lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, hd.characters.list, input, suf, r)
              lemmaMaxPrefixOutputsMaxPrefix(rules, r, hd.characters.list, input, otherP, otherR)
            }

          }
        }
      }

    }.ensuring (_ =>
      if (ListUtils.getIndex(rules, otherR) < ListUtils.getIndex(rules, r)) !matchR(otherR.regex, otherP)
      else tokens.size > 0 && otherP.size <= tokens.head.characters.size || !matchR(otherR.regex, otherP)
    )

    @ghost override def maximalMunchPrinciple[C](
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
          val (lexedTokens: Vector[Token[C]], lexedSuffix: Vector[C]) = lex(rules, Vector.fromList(input))
          (lexedTokens.list, lexedSuffix.list) == (tokens, suffix)
        }) &&
        (tokens.isEmpty || tokens.head.characters.list.size <= otherP.size) &&
        (tokens.isEmpty || tokens.head.rule == r) &&
        (ListUtils.isPrefix(otherP, input)) &&
        (r != otherR) &&
        (tokens.isEmpty || VerifiedRegexMatcher.matchR(r.regex, tokens.head.characters.list)) 
      then
        theoremLexSoundFirstChar(rules, input, suffix, tokens, r, otherR, otherP)
        val (lexedTokens: Vector[Token[C]], lexedSuffix: Vector[C]) = lex(rules, Vector.fromList(input))
        assert(lexedTokens.list == tokens)
        assert(lexedSuffix.list == suffix)
        (if (ListUtils.getIndex(rules, otherR) < ListUtils.getIndex(rules, r)) !VerifiedRegexMatcher.matchR(otherR.regex, otherP)
        else tokens.size > 0 && otherP.size <= tokens.head.characters.list.size || !VerifiedRegexMatcher.matchR(otherR.regex, otherP))
      else 
        true
    }

    @ghost override def lexThenRulesProduceEachTokenIndividually[C](rules: List[Rule[C]], input: List[C]): Boolean = {
      if (!rules.isEmpty && rulesInvariant(rules)) then
        val (tokens, suffix) = lex(rules, Vector.fromList(input))
        assert(lex(rules, Vector.fromList(input)) == (tokens, suffix))
        assert(rulesProduceEachTokenIndividually(rules, tokens))
        lemmaLexThenRulesProducesEachTokenIndividually(rules, input, tokens.list)
        rulesProduceEachTokenIndividually(rules, tokens)
      else 
        true
    }

    // Invertability -------------------------------------------------------------------------------------------------------------------------

    @ghost
    def theoremInvertabilityWhenTokenListSeparable[C](rules: List[Rule[C]], tokens: List[Token[C]]): Unit = {
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
          Vector.listEqImpliesEq(Vector.fromList(hd.characters.list), hd.characters)
          val input: Vector[C] = print(Vector.fromList(tokens))
          val suffix: Vector[C] = print(Vector.fromList(Cons(next, tl)))
          val (followingTokens, nextSuffix) = lex(rules, suffix)
          assert(input.list == hd.characters.list ++ suffix.list)
          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(hd.characters.list, suffix.list)

          theoremInvertabilityWhenTokenListSeparable(rules, Cons(next, tl))
          assert(lex(rules, suffix)._1.list == Cons(next, tl))
          assert(lex(rules, suffix)._2 == nextSuffix)
          Vector.listEqImpliesEq(Vector.fromList(followingTokens.list), followingTokens)
          Vector.listEqImpliesEq(Vector.fromList(tl), followingTokens.tail)
          Vector.fromListHdTlConstructive(next, tl, followingTokens)
          assert(lex(rules, suffix)._1 == Vector.fromList(Cons(next, tl)))
          assert(Vector.fromList(Cons(next, tl)) == Vector.fromList(tl).prepend(next))
          assert(lex(rules, suffix)._1 == Vector.fromList(tl).prepend(next))
          assert(separableTokensPredicate(hd, next, rules))
          
          val prefixOpt = maxPrefix(rules, input.list)
          // ----- to prove (!lex(rules, Vector.fromList(hd.characters.list))._1.isEmpty
          Vector.listEqImpliesEq(hd.characters, Vector.fromList(hd.characters.list))
          ghostExpr(unfold(print(Vector.singleton(hd))))
          assert(print(Vector.singleton(hd)).list == printList(List(hd)))
          assert(printList(List(hd)) == hd.characters.list)
          ghostExpr(Vector.listEqImpliesEq(print(Vector.singleton(hd)), hd.characters))
          assert(print(Vector.singleton(hd)) == hd.characters)
          assert(rulesProduceIndividualToken(rules, hd))
          assert(!lex(rules, Vector.fromList(hd.characters.list))._1.isEmpty)
          // ----- end
          lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined(rules, hd.characters.list, suffix.list)

          assert(prefixOpt.isDefined)

          assert(separableTokensPredicate(hd, next, rules))

          check(hd.characters == hd.originalCharacters)
          Vector.listEqImpliesEq(hd.characters, hd.originalCharacters)
          assert(maxPrefixZipperVector(rules, hd.originalCharacters).isDefined)
          check(maxPrefix(rules, hd.originalCharacters.list).isDefined)
          check(maxPrefix(rules, hd.characters.list).isDefined)
          check(maxPrefix(rules, hd.characters.list).isDefined)
          check(maxPrefix(rules, hd.characters.list).get._1 == hd)
          check(maxPrefix(rules, hd.characters.list).get._2.isEmpty)
          check(matchR(hd.rule.regex, hd.characters.list))
          check(hd.rule == hd.rule)

          lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame(rules, hd, hd.rule, suffix.list)
          
          assert(prefixOpt.get._1 == hd)
          assert(prefixOpt.get._2 == suffix.list)

          assert(hd == maxPrefixZipper(rules, input.list).get._1)
          assert(hd == maxPrefixZipperVector(rules, input).get._1)
          assert(prefixOpt.get._2 == maxPrefixZipperVector(rules, input).get._2.list)
          Vector.listEqImpliesEq(suffix, maxPrefixZipperVector(rules, input).get._2)
          assert(suffix == maxPrefixZipperVector(rules, input).get._2)

          assert(lex(rules, input)._1 == followingTokens.prepend(hd))
          assert(lex(rules, input)._1 == (Vector.fromList(tl).prepend(next)).prepend(hd))
          assert(lex(rules, input)._1.list == Cons(hd, Cons(next, tl)))
        }
      }

    }.ensuring(_ => lex(rules, print(Vector.fromList(tokens)))._1.list == tokens && lex(rules, print(Vector.fromList(tokens)))._2.isEmpty)

    @ghost
    override def separableTokensThenInvertibleThroughPrinting[C](rules: List[Rule[C]], tokens: List[Token[C]]): Boolean = {

      if (!rules.isEmpty && 
          rulesInvariant(rules) && 
          rulesProduceEachTokenIndividually(rules, Vector.fromList(tokens)) && 
          tokensListTwoByTwoPredicateSeparable(Vector.fromList(tokens), 0, rules)) 
      then
        theoremInvertabilityWhenTokenListSeparable(rules, tokens)
        assert(lex(rules, print(Vector.fromList(tokens)))._1.list == tokens)
        lex(rules, print(Vector.fromList(tokens)))._1.list == tokens
      else 
        true
    }

    // IMPOSSIBLE VERSION LEFT FOR HISTORICAL REASONS !!!!!!!!!!!!!!!!!!!!!!!!
    // @ghost
    // def theoremInvertabilityWhenTokenListSeparable[C](rules: List[Rule[C]], tokens: List[Token[C]]): Unit = {
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
    def theoremInvertabilityFromTokensSepTokenWhenNeeded[C](rules: List[Rule[C]], tokens: List[Token[C]], separatorToken: Token[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividually(rules, Vector.fromList(tokens)))
      require(rulesProduceIndividualToken(rules, separatorToken))
      require(separatorToken.rule.isSeparator)
      require(tokens.forall(!_.rule.isSeparator))
      require(sepAndNonSepRulesDisjointChars(rules, rules))
      decreases(tokens)

      tokens match {
        case Cons(hd, tl) => {
          Vector.listEqImpliesEq(Vector.fromList(hd.characters.list), hd.characters)
          Vector.listEqImpliesEq(Vector.fromList(separatorToken.characters.list), separatorToken.characters)
          val input = printWithSeparatorTokenWhenNeededList(rules, tokens, separatorToken)
          assert(input == printWithSeparatorTokenWhenNeeded(rules, Vector.fromList(tokens), separatorToken).list)
          Vector.listEqImpliesEq(Vector.fromList(input), printWithSeparatorTokenWhenNeeded(rules, Vector.fromList(tokens), separatorToken))
          assert(Vector.fromList(input) == printWithSeparatorTokenWhenNeeded(rules, Vector.fromList(tokens), separatorToken))
          val suffixWithSep = separatorToken.characters.list ++ printWithSeparatorTokenWhenNeededList(rules, tl, separatorToken)
          ListUtils.lemmaTwoListsConcatAssociativity(
            hd.characters.list,
            separatorToken.characters.list,
            printWithSeparatorTokenWhenNeededList(rules, tl, separatorToken)
          )
          val suffixWithoutSep = printWithSeparatorTokenWhenNeededList(rules, tl, separatorToken)
          assert(suffixWithoutSep == printWithSeparatorTokenWhenNeeded(rules, Vector.fromList(tl), separatorToken).list)
          Vector.listEqImpliesEq(Vector.fromList(suffixWithoutSep), printWithSeparatorTokenWhenNeeded(rules, Vector.fromList(tl), separatorToken))
          assert(input == hd.characters.list ++ suffixWithSep || input == hd.characters.list ++ suffixWithoutSep)

          // ----- to prove (!lex(rules, Vector.fromList(hd.characters.list))._1.isEmpty
          Vector.listEqImpliesEq(hd.characters, Vector.fromList(hd.characters.list))
          Vector.listEqImpliesEq(print(Vector.singleton(hd)), hd.characters)
          unfold(print(Vector.singleton(hd)))
          assert(print(Vector.singleton(hd)).list == printList(List(hd)))
          assert(printList(List(hd)) == hd.characters.list)
          assert(print(Vector.singleton(hd)) == hd.characters)
          assert(rulesProduceIndividualToken(rules, hd))
          assert(!lex(rules, Vector.fromList(hd.characters.list))._1.isEmpty)
          // ----- end

          check(hd.characters == hd.originalCharacters)
          ListSpecs.forallContained(tokens, t => rulesProduceIndividualToken(rules, t), hd)
          Vector.listEqImpliesEq(hd.characters, hd.originalCharacters)
          assert(maxPrefixZipperVector(rules, hd.originalCharacters).isDefined)

          check(maxPrefix(rules, hd.characters.list).isDefined)

          check(maxPrefix(rules, hd.characters.list).get._1 == hd)
          check(maxPrefix(rules, hd.characters.list).get._2.isEmpty)
          check(matchR(hd.rule.regex, hd.characters.list))

          if (input == hd.characters.list ++ suffixWithSep) {
            val suffixAfterSep = printWithSeparatorTokenWhenNeededList(rules, tl, separatorToken)
            lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead(rules, tokens, separatorToken)
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(hd.characters.list, suffixWithSep)
            ListUtils.lemmaSamePrefixThenSameSuffix(hd.characters.list, suffixWithSep, hd.characters.list, maxPrefix(rules, input).get._2, input)

            val sepTokenOpt = maxPrefix(rules, suffixWithSep)
            if (tl.isEmpty) {
              assert(tokens == List(hd))
              assert(printWithSeparatorTokenWhenNeededList(rules, tl, separatorToken).isEmpty)
              assert(printWithSeparatorTokenWhenNeededList(rules, tokens, separatorToken) == hd.characters.list)
              assert(input == hd.characters.list ++ separatorToken.characters.list)
              check(false)
            }
            val nextToken = tl.head
            lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, tokens, nextToken)
            check(rulesProduceIndividualToken(rules, nextToken))

            Vector.listEqImpliesEq(separatorToken.characters, separatorToken.originalCharacters)
            Vector.listEqImpliesEq(separatorToken.characters, Vector.fromList(separatorToken.characters.list))
            ghostExpr(unfold(print(Vector.singleton(separatorToken))))
            unfold(rulesProduceIndividualToken(rules, separatorToken))
            Vector.listEqImpliesEq(print(Vector.singleton(separatorToken)), separatorToken.characters)
            // assert(print(Vector.singleton(separatorToken)).list == printList(List(separatorToken)))
            // assert(printList(List(separatorToken)) == separatorToken.characters.list)
            // assert(print(Vector.singleton(separatorToken)) == separatorToken.characters)
            // assert(rulesProduceIndividualToken(rules, separatorToken))
            // assert(!lex(rules, Vector.fromList(separatorToken.characters.list))._1.isEmpty)
            // assert(maxPrefixZipperVector(rules, separatorToken.originalCharacters).isDefined)
            // check(maxPrefix(rules, separatorToken.originalCharacters.list).isDefined)
            // check(maxPrefix(rules, separatorToken.characters.list).isDefined)
            // check(maxPrefix(rules, separatorToken.characters.list).isDefined)
            // check(maxPrefix(rules, separatorToken.characters.list).get._1 == separatorToken)
            // check(maxPrefix(rules, separatorToken.characters.list).get._2.isEmpty)
            // assert(maxPrefixZipperVector(rules, separatorToken.characters).isDefined)
            // assert(maxPrefix(rules, separatorToken.characters.list).isDefined)
            // assert(maxPrefixZipperVector(rules, separatorToken.characters).get._1 == separatorToken)
            // assert(maxPrefix(rules, separatorToken.characters.list).get._1 == separatorToken)
            lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, separatorToken.characters.list, separatorToken)

            val separatorRule = separatorToken.rule

            Vector.listEqImpliesEq(nextToken.characters, nextToken.originalCharacters)
            Vector.listEqImpliesEq(Vector.fromList(nextToken.characters.list), nextToken.characters)
            Vector.listEqImpliesEq(nextToken.characters, Vector.fromList(nextToken.characters.list))
            Vector.listEqImpliesEq(print(Vector.singleton(nextToken)), nextToken.characters)
            unfold(print(Vector.singleton(nextToken)))
            unfold(rulesProduceIndividualToken(rules, nextToken))
            ListSpecs.forallContained(tokens, (t: Token[C]) => rulesProduceIndividualToken(rules, t), nextToken)
            // assert(print(Vector.singleton(nextToken)).list == printList(List(nextToken)))
            // assert(printList(List(nextToken)) == nextToken.characters.list)
            // assert(print(Vector.singleton(nextToken)) == nextToken.characters)
            // assert(rulesProduceIndividualToken(rules, nextToken))
            // assert(!lex(rules, Vector.fromList(nextToken.characters.list))._1.isEmpty)
            // check(maxPrefixZipperVector(rules, nextToken.characters).isDefined)
            // assert(maxPrefix(rules, nextToken.characters.list).isDefined)
            // assert(maxPrefixZipperVector(rules, nextToken.characters).get._1 == nextToken)
            // assert(maxPrefix(rules, nextToken.characters.list).get._1 == nextToken)
            lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, nextToken.characters.list, nextToken)
            val nextTokenRule = nextToken.rule

            if (!nextTokenRule.regex.usedCharacters.contains(nextToken.characters.list.head)) {
              lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(nextTokenRule.regex, nextToken.characters.list, nextToken.characters.list.head)
              check(false)
            }
            if (separatorRule.regex.usedCharacters.contains(suffixAfterSep.head)) {
              lemmaSepRuleNotContainsCharContainedInANonSepRule(rules, rules, nextTokenRule, separatorRule, suffixAfterSep.head)
              check(false)
            }
            assert(suffixWithSep == separatorToken.characters.list ++ suffixAfterSep)
            lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame(rules, separatorToken, separatorRule, suffixAfterSep, nextTokenRule)

            theoremInvertabilityFromTokensSepTokenWhenNeeded(rules, tl, separatorToken)

            assert(lex(rules, printWithSeparatorTokenWhenNeeded(rules, Vector.fromList(tl), separatorToken))._1.list.filter(!_.rule.isSeparator) == tl)
            assert(lexList(rules, printWithSeparatorTokenWhenNeededList(rules, tl, separatorToken))._1.filter(!_.rule.isSeparator) == tl)
            assert(lexList(rules, printWithSeparatorTokenWhenNeededList(rules, tokens, separatorToken))._1.filter(!_.rule.isSeparator) == tokens)
            assert(lex(rules, printWithSeparatorTokenWhenNeeded(rules, Vector.fromList(tokens), separatorToken))._1.list.filter(!_.rule.isSeparator) == tokens)
          } else {
            lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead(rules, tokens, separatorToken)
            theoremInvertabilityFromTokensSepTokenWhenNeeded(rules, tl, separatorToken)
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(hd.characters.list, suffixWithoutSep)
            ListUtils.lemmaSamePrefixThenSameSuffix(hd.characters.list, suffixWithoutSep, hd.characters.list, maxPrefix(rules, input).get._2, input)
          }
        }
        case Nil() => ()
      }
    }.ensuring (_ => lex(rules, printWithSeparatorTokenWhenNeeded(rules, Vector.fromList(tokens), separatorToken))._1.list.filter(!_.rule.isSeparator) == tokens)


    @ghost
    override def invertibleThroughPrintingWithSeparatorWhenNeeded[C](rules: List[Rule[C]], tokens: List[Token[C]], separatorToken: Token[C]): Boolean = {
      if (!rules.isEmpty && 
          rulesInvariant(rules) && 
          rulesProduceEachTokenIndividually(rules, Vector.fromList(tokens)) &&
          sepAndNonSepRulesDisjointChars(rules, rules) && 
          rulesProduceIndividualToken(rules, separatorToken) &&
          tokens.forall(t => !t.rule.isSeparator) &&
          separatorToken.rule.isSeparator
          ) 
      then 
            theoremInvertabilityFromTokensSepTokenWhenNeeded(rules, tokens, separatorToken)
            (lex(rules, printWithSeparatorTokenWhenNeeded(rules, Vector.fromList(tokens), separatorToken))._1.list.filter(!_.rule.isSeparator) == tokens)
      else 
        true
    }

    @ghost
    @opaque
    @inlineOnce
    def theoremInvertFromTokensSepTokenBetweenEach[C](rules: List[Rule[C]], tokens: List[Token[C]], separatorToken: Token[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividually(rules, Vector.fromList(tokens)))
      require(rulesProduceIndividualToken(rules, separatorToken))
      require(separatorToken.rule.isSeparator)
      require(tokens.forall(!_.rule.isSeparator))
      require(sepAndNonSepRulesDisjointChars(rules, rules))
      decreases(tokens.size)

      tokens match {
        case Nil() => ()
        case Cons(hd, Nil()) => {
          // ----- to prove (!lex(rules, Vector.fromList(hd.characters.list))._1.isEmpty
          Vector.listEqImpliesEq(hd.characters, Vector.fromList(hd.characters.list))
          Vector.listEqImpliesEq(print(Vector.singleton(hd)), hd.characters)
          unfold(print(Vector.singleton(hd)))
          assert(print(Vector.singleton(hd)).list == printList(List(hd)))
          assert(printList(List(hd)) == hd.characters.list)
          assert(print(Vector.singleton(hd)) == hd.characters)
          assert(rulesProduceIndividualToken(rules, hd))
          assert(!lex(rules, Vector.fromList(hd.characters.list))._1.isEmpty)
          // ----- end

          ListSpecs.forallContained(tokens, (t: Token[C]) => !t.rule.isSeparator, hd)
          assert(!hd.rule.isSeparator)
          val input: Vector[C] = printWithSeparatorToken(Vector.fromList(tokens), separatorToken)
          assert(input.list == hd.characters.list ++ separatorToken.characters.list)
          ListUtils.lemmaGetSuffixOnListWithItSelfIsEmpty(hd.characters.list)
          lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, tokens, hd)
          lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, hd.characters.list, hd)
          val rule = hd.rule
          assert(!rule.isSeparator)
          lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, separatorToken.characters.list, separatorToken)
          val separatorRule = separatorToken.rule
          lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, hd.characters.list, hd.characters.list, Nil(), rule)

          if (!separatorRule.regex.usedCharacters.contains(separatorToken.characters.list.head)) {
            lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(
              separatorRule.regex,
              separatorToken.characters.list,
              separatorToken.characters.list.head
            )
            check(false)
          }
          assert(separatorRule.regex.usedCharacters.contains(separatorToken.characters.list.head))

          lemmaNonSepRuleNotContainsCharContainedInASepRule(rules, rules, rule, separatorRule, separatorToken.characters.list.head)

          lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame(rules, hd, rule, separatorToken.characters.list, separatorRule)

          val suffix = maxPrefix(rules, input.list).get._2

          // needed
          val ret: (List[Token[C]], List[C]) = maxPrefix(rules, input.list) match {
            case Some((t, s)) => {
              assert(s == suffix)
              assert(t == hd)
              val (followingTokens: List[Token[C]], nextSuffix: List[C]) = lexList(rules, s)
              assert(nextSuffix.isEmpty)
              assert(t.characters.list ++ s == input.list)
              (Cons(t, followingTokens), nextSuffix)
            }
            case None() => {
              check(false)
              (Nil(), input.list)
            }
          }

          assert(ret == lexList(rules, input.list))

          assert(lex(rules, printWithSeparatorToken(Vector.fromList(Nil()), separatorToken))._1.list.filter(!_.rule.isSeparator).isEmpty)
          assert(lexList(rules, printWithSeparatorTokenList(Nil(), separatorToken))._1.filter(!_.rule.isSeparator).isEmpty)
          assert(lexList(rules, printWithSeparatorTokenList(tokens, separatorToken))._1.filter(!_.rule.isSeparator) == tokens)
          assert(lex(rules, printWithSeparatorToken(Vector.fromList(tokens), separatorToken))._1.list.filter(!_.rule.isSeparator) == tokens)

        }
        case Cons(hd, Cons(nextT, tl)) => {
          Vector.listEqImpliesEq(Vector.fromList(hd.characters.list), hd.characters)
          Vector.listEqImpliesEq(Vector.fromList(separatorToken.characters.list), separatorToken.characters)

          // ----- to prove (!lex(rules, Vector.fromList(hd.characters.list))._1.isEmpty
          Vector.listEqImpliesEq(hd.characters, Vector.fromList(hd.characters.list))
          Vector.listEqImpliesEq(print(Vector.singleton(hd)), hd.characters)
          unfold(print(Vector.singleton(hd)))
          assert(print(Vector.singleton(hd)).list == printList(List(hd)))
          assert(printList(List(hd)) == hd.characters.list)
          assert(print(Vector.singleton(hd)) == hd.characters)
          assert(rulesProduceIndividualToken(rules, hd))
          assert(!lex(rules, Vector.fromList(hd.characters.list))._1.isEmpty)
          // ----- end


          ListSpecs.forallContained(tokens, (t: Token[C]) => !t.rule.isSeparator, hd)
          ListSpecs.forallContained(tokens, (t: Token[C]) => !t.rule.isSeparator, nextT)
          assert(!hd.rule.isSeparator)
          assert(!nextT.rule.isSeparator)
          val input: List[C] = printWithSeparatorTokenList(tokens, separatorToken)
          val suffixAfterSeparator: List[C] = printWithSeparatorTokenList(Cons(nextT, tl), separatorToken)
          val suffix: List[C] = separatorToken.characters.list ++ suffixAfterSeparator
          assert(suffixAfterSeparator == nextT.characters.list ++ separatorToken.characters.list ++ printWithSeparatorTokenList(tl, separatorToken))
          assert(input == hd.characters.list ++ separatorToken.characters.list ++ suffixAfterSeparator)

          Vector.listEqImpliesEq(Vector.fromList(input), printWithSeparatorToken(Vector.fromList(tokens), separatorToken))
          Vector.listEqImpliesEq(Vector.fromList(suffixAfterSeparator), printWithSeparatorToken(Vector.fromList(Cons(nextT, tl)), separatorToken))


          ListUtils.lemmaTwoListsConcatAssociativity(hd.characters.list, separatorToken.characters.list, suffixAfterSeparator)
          assert(input == hd.characters.list ++ suffix)
          lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, tokens, hd)
          lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, hd.characters.list, hd)
          val rule = hd.rule
          assert(!rule.isSeparator)
          lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, hd.characters.list, hd.characters.list, Nil(), rule)

          lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, separatorToken.characters.list, separatorToken)
          val separatorRule = separatorToken.rule

          if (!separatorRule.regex.usedCharacters.contains(separatorToken.characters.list.head)) {
            lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(
              separatorRule.regex,
              separatorToken.characters.list,
              separatorToken.characters.list.head
            )
            check(false)
          }

          Vector.listEqImpliesEq(separatorToken.characters, separatorToken.originalCharacters)
          Vector.listEqImpliesEq(separatorToken.characters, Vector.fromList(separatorToken.characters.list))
          unfold(print(Vector.singleton(separatorToken)))
          unfold(rulesProduceIndividualToken(rules, separatorToken))
          Vector.listEqImpliesEq(print(Vector.singleton(separatorToken)), separatorToken.characters)
          Vector.listEqImpliesEq(nextT.characters, nextT.originalCharacters)
          Vector.listEqImpliesEq(Vector.fromList(nextT.characters.list), nextT.characters)
          Vector.listEqImpliesEq(nextT.characters, Vector.fromList(nextT.characters.list))
          Vector.listEqImpliesEq(print(Vector.singleton(nextT)), nextT.characters)
          unfold(print(Vector.singleton(nextT)))
          unfold(rulesProduceIndividualToken(rules, nextT))
          ListSpecs.forallContained(tokens, (t: Token[C]) => rulesProduceIndividualToken(rules, t), nextT)

          assert(suffixAfterSeparator == nextT.characters.list ++ separatorToken.characters.list ++ printWithSeparatorTokenList(tl, separatorToken))
          lemmaNonSepRuleNotContainsCharContainedInASepRule(rules, rules, rule, separatorRule, separatorToken.characters.list.head)

          lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame(rules, hd, rule, suffix, separatorRule)

          lemmaRulesProduceEachTokenIndividuallyThenForAnyToken(rules, tokens, nextT)
          assert(rulesProduceIndividualToken(rules, nextT))
          lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, nextT.characters.list, nextT)
          val nextTRule = nextT.rule
          assert(!nextTRule.isSeparator)
          lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, nextT.characters.list, nextT.characters.list, Nil(), nextTRule)

          if (!nextTRule.regex.usedCharacters.contains(nextT.characters.list.head)) {
            lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(nextTRule.regex, nextT.characters.list, nextT.characters.list.head)
            check(false)
          }

          lemmaSepRuleNotContainsCharContainedInANonSepRule(rules, rules, nextTRule, separatorRule, nextT.characters.list.head)

          lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame(rules, separatorToken, separatorRule, suffixAfterSeparator, nextTRule)

          theoremInvertFromTokensSepTokenBetweenEach(rules, Cons(nextT, tl), separatorToken)

          assert(lex(rules, printWithSeparatorToken(Vector.fromList(Cons(nextT, tl)), separatorToken))._1.list.filter(!_.rule.isSeparator) == Cons(nextT, tl))
          assert(lexList(rules, printWithSeparatorTokenList(Cons(nextT, tl), separatorToken))._1.filter(!_.rule.isSeparator) == Cons(nextT, tl))
          assert(lexList(rules, printWithSeparatorTokenList(tokens, separatorToken))._1.filter(!_.rule.isSeparator) == tokens)
          assert(lex(rules, printWithSeparatorToken(Vector.fromList(tokens), separatorToken))._1.list.filter(!_.rule.isSeparator) == tokens)

        }
      }

    }.ensuring (_ => lex(rules, printWithSeparatorToken(Vector.fromList(tokens), separatorToken))._1.list.filter(!_.rule.isSeparator) == tokens)

    @ghost
    override def invertibleThroughPrintingWithSeparator[C](rules: List[Rule[C]], tokens: List[Token[C]], separatorToken: Token[C]): Boolean = {
      if (!rules.isEmpty && 
          rulesInvariant(rules) && 
          rulesProduceEachTokenIndividually(rules, Vector.fromList(tokens)) &&
          sepAndNonSepRulesDisjointChars(rules, rules) && 
          rulesProduceIndividualToken(rules, separatorToken) &&
          tokens.forall(t => !t.rule.isSeparator) &&
          separatorToken.rule.isSeparator
          ) 
      then 
            theoremInvertFromTokensSepTokenBetweenEach(rules, tokens, separatorToken)
            (lex(rules, printWithSeparatorToken(Vector.fromList(tokens), separatorToken))._1.list.filter(!_.rule.isSeparator) == tokens)
      else 
        true
    }

    @ghost
    @opaque
    @inlineOnce
    def theoremInvertFromString[C](rules: List[Rule[C]], input: List[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      decreases(input.size)

      val (tokens, suffix) = lex(rules, Vector.fromList(input))
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
            Vector.listEqImpliesEq(Vector.fromList(tokens.list), tokens)
            Vector.listEqImpliesEq(Vector.fromList(suffix.list), suffix)
            Vector.fromListHdTlConstructive(hd, tl, tokens)
            theoremInvertFromString(rules, maxPrefix(rules, input).get._2)
            lemmaRemovingFirstTokensCharactersPreservesLexSuffix(rules, input, tokens.list, suffix.list)

            assert(input == maxPrefix(rules, input).get._1.characters.list ++ maxPrefix(rules, input).get._2)
            assert(input == maxPrefix(rules, input).get._1.characters.list ++ (print(Vector.fromList(tl)).list ++ suffix.list))
            ListUtils.lemmaTwoListsConcatAssociativity(
              maxPrefix(rules, input).get._1.characters.list,
              print(Vector.fromList(tl)).list,
              suffix.list
            )
          }
          case Nil() => assert(print(tokens).list ++ suffix.list == input)
        }
      }
    }.ensuring (_ => {
      val (tokens, suffix) = lex(rules, Vector.fromList(input))
      print(tokens).list ++ suffix.list == input
    })

    @ghost override def invertibleThroughLexing[C](rules: List[Rule[C]], input: List[C]): Boolean = 
    if (!rules.isEmpty && rulesInvariant(rules)) then
      theoremInvertFromString(rules, input)
      val (tokens, suffix) = lex(rules, Vector.fromList(input))
      print(tokens).list ++ suffix.list == input
    else
      true

    // Functions -----------------------------------------------------------------------------------------------------------------------------

    def getRuleFromTag[C](rules: List[Rule[C]], tag: String): Option[Rule[C]] = {
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
    def withSeparatorTokenListPreservesRulesProduceTokens[C](rules: List[Rule[C]], l: List[Token[C]], separatorToken: Token[C]): Unit = {
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
    def lemmaTokensOfDifferentKindsAreSeparable[C](t1: Token[C], t2: Token[C], rules: List[Rule[C]]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceIndividualToken(rules, t1))
      require(rulesProduceIndividualToken(rules, t2))
      require(t1.rule.isSeparator != t2.rule.isSeparator)
      require(t2.characters.size > 0)
      require(sepAndNonSepRulesDisjointChars(rules, rules))

      assert(t1.rule.isSeparator || !t1.rule.isSeparator)
      if (!separableTokensPredicate(t1, t2, rules)) {
        val pref = t1.characters.list ++ List(t2.characters(0))
        assert(VerifiedRegexMatcher.prefixMatch(rulesRegex(rules), pref))
        lemmaPrefixMatchThenExistsStringThatMatches(rulesRegex(rules), pref)
        assert(Exists((s: List[C]) => matchR(rulesRegex(rules), s) && ListUtils.isPrefix(pref, s)))
        val witness = pickWitness[List[C]](s => matchR(rulesRegex(rules), s) && ListUtils.isPrefix(pref, s))
        val suff = ListUtils.getSuffix(witness, pref)
        assert(witness == pref ++ suff)
        assert(pref.contains(t1.characters(0)))
        assert(witness.contains(t1.characters(0)))
        assert(pref.contains(t2.characters(0)))
        assert(witness.contains(t2.characters(0)))
        assert(matchR(rulesRegex(rules), witness))
        matchRGenUnionSpec(rulesRegex(rules), rules.map(_.regex), witness)
        assert(rules.map(_.regex).exists(rr => validRegex(rr) && matchR(rr, witness)))
        val rr: Regex[C] = ListUtils.getWitness(rules.map(_.regex), rr => validRegex(rr) && matchR(rr, witness))
        assert(rules.map(_.regex).contains(rr))
        ListUtils.lemmaMapContains(rules, r => r.regex, rr)
        assert(rules.exists(r => r.regex == rr))
        val rule = ListUtils.getWitness(rules, r => r.regex == rr)
        assert(rulesProduceIndividualToken(rules, t1))
        assert(lex(rules, print(Vector.singleton(t1))) == (Vector.singleton(t1), Vector.empty[C]))
        assert(lexList(rules, print(Vector.singleton(t1)).list) == (List(t1), Nil[C]()))
        assert(maxPrefix(rules, t1.characters.list) == Some((t1, Nil[C]())))
        assert(rules.contains(t1.rule))
        assert(rulesProduceIndividualToken(rules, t2))
        assert(lex(rules, print(Vector.singleton(t2))) == (Vector.singleton(t2), Vector.empty[C]))
        assert(lexList(rules, print(Vector.singleton(t2)).list) == (List(t2), Nil[C]()))
        assert(maxPrefix(rules, t2.characters.list) == Some((t2, Nil[C]())))
        assert(rules.contains(t2.rule))
        assert(rules.contains(rule))
        ListSpecs.forallContained(rules, ruleValid, rule)
        ListSpecs.forallContained(rules, ruleValid, t1.rule)
        ListSpecs.forallContained(rules, ruleValid, t2.rule)
        assert(matchR(t1.rule.regex, t1.characters.list))
        assert(matchR(t2.rule.regex, t2.characters.list))
        if(!t1.rule.regex.usedCharacters.contains(t1.characters(0))){
          lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(t1.rule.regex, t1.characters.list, t1.characters.list.head)
          check(false)  
        }
        assert(t1.rule.regex.usedCharacters.contains(t1.characters(0)))
        if(!t2.rule.regex.usedCharacters.contains(t2.characters(0))){
          lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(t2.rule.regex, t2.characters.list, t2.characters.list.head)
          check(false)
        }
        assert(t2.rule.regex.usedCharacters.contains(t2.characters(0)))
        check(rule.regex == rr)
        if(rule.isSeparator) {
          if(t1.rule.isSeparator) {
            lemmaSepRuleNotContainsCharContainedInANonSepRule(rules, rules, t2.rule, rule, t2.characters(0))
            assert(!rule.regex.usedCharacters.contains(t2.characters(0)))
            lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(rr, witness, t2.characters(0))
            check(false)
          } else {
            assert(!t1.rule.isSeparator)
            lemmaSepRuleNotContainsCharContainedInANonSepRule(rules, rules, t1.rule, rule, t1.characters(0))
            assert(!rule.regex.usedCharacters.contains(t1.characters(0)))
            lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(rr, witness, t1.characters(0))
            check(false)
          }
        } else {
          if(t1.rule.isSeparator) {
            assert(!t2.rule.isSeparator)
            lemmaNonSepRuleNotContainsCharContainedInASepRule(rules, rules, rule, t1.rule, t1.characters(0))
            assert(!rule.regex.usedCharacters.contains(t1.characters(0)))
            lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(rr, witness, t1.characters(0))
            check(false)
          } else {
            assert(!t1.rule.isSeparator)
            lemmaNonSepRuleNotContainsCharContainedInASepRule(rules, rules, rule, t2.rule, t2.characters(0))
            assert(!rule.regex.usedCharacters.contains(t2.characters(0)))
            lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(rr, witness, t2.characters(0))
            check(false)
          }
        }
        check(false)
      }
    }.ensuring(_ => separableTokensPredicate(t1, t2, rules))

    @ghost
    @inlineOnce
    @opaque
    def printWithSeparatorTokenImpliesSeparableTokensList[C](rules: List[Rule[C]], l: List[Token[C]], separatorToken: Token[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividuallyList(rules, l))
      require(rulesProduceIndividualToken(rules, separatorToken))
      require(separatorToken.rule.isSeparator)
      require(l.forall(!_.rule.isSeparator))
      require(sepAndNonSepRulesDisjointChars(rules, rules))
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
    def lemmaPrintConcatSameAsConcatPrint[C](tokens1: List[Token[C]], tokens2: List[Token[C]]): Unit = {
      decreases(tokens1)

      tokens1 match {
        case Cons(hd, tl) => {
          if (tl.isEmpty) {
            assert(printList(tokens1) == hd.characters.list)
            assert(tokens1 ++ tokens2 == Cons(hd, tokens2))
            unfold(printList(Cons(hd, tokens2)))
            assert(printList(Cons(hd, tokens2)) == hd.characters.list ++ printList(tokens2))
            assert(printList(tokens1 ++ tokens2) == hd.characters.list ++ printList(tokens2))
          } else {
            lemmaPrintConcatSameAsConcatPrint(tl, tokens2)
            unfold(printList(Cons(hd, tl)))
            unfold(printList(tokens1 ++ tokens2))
            assert(printList(tokens1) == hd.characters.list ++ printList(tl))
            assert(printList(tokens1 ++ tokens2) == hd.characters.list ++ printList(tl ++ tokens2))
            ListUtils.lemmaTwoListsConcatAssociativity(hd.characters.list, printList(tl), printList(tokens2))
          }
        }
        case Nil() => ()
      }
    }.ensuring(_ => printList(tokens1 ++ tokens2) == printList(tokens1) ++ printList(tokens2))


    @ghost
    @opaque
    @inlineOnce
    def lemmaLexThenRulesProducesEachTokenIndividually[C](rules: List[Rule[C]], input: List[C], tokens: List[Token[C]]): Unit = {
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
          assert(token.characters == hd.characters)
          assert(token.characters.list == hd.characters.list)
          assert(hd.characters.list ++ suffix == input)
          val tokenRule = token.rule
          assert(matchR(tokenRule.regex, token.characters.list))
          if (!rulesProduceIndividualToken(rules, hd)) {
            ghostExpr(Vector.listEqImpliesEq(hd.characters, Vector.fromList(hd.characters.list)))
            ghostExpr(Vector.listEqImpliesEq(token.characters, Vector.fromList(token.characters.list)))
            lemmaLexThenLexPrefix(rules, hd.characters.list, suffix, List(hd), lexList(rules, suffix)._1, lexList(rules, input)._2)
            check(false)
          }
          assert(rulesProduceIndividualToken(rules, hd))
          lemmaLexThenRulesProducesEachTokenIndividually(rules, suffix, tl)
        }
      }
    }.ensuring(_ => rulesProduceEachTokenIndividually(rules, Vector.fromList(tokens)))

    @ghost
    @opaque
    @inlineOnce
    def lemmaLexThenLexPrefix[C](rules: List[Rule[C]], prefix: List[C], suffix: List[C], prefixTokens: List[Token[C]], suffixTokens: List[Token[C]], suffixResult: List[C]): Unit = {
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
          ghostExpr(Vector.listEqImpliesEq(token.characters, Vector.fromList(token.characters.list)))
          ghostExpr(Vector.listEqImpliesEq(token.characters, token.originalCharacters))
          ghostExpr(Vector.listEqImpliesEq(Vector.fromList(token.characters.list), token.characters))
          lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(token.rule, rules)
          token.rule.transformation.lemmaInv()

          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.characters.list, s)
          ListUtils.lemmaSamePrefixThenSameSuffix(token.characters.list, s, token.characters.list, ListUtils.getSuffix(input, token.characters.list), input)

          check(token.value == token.rule.transformation.apply(Vector.fromList(token.characters.list)))
          check(token.rule == token.rule)
          check(token.size == token.originalCharacters.size)
          check(token.size == token.originalCharacters.list.size)
          check(token.size == token.characters.list.size)
          check(token.originalCharacters == Vector.fromList(token.characters.list))
          check(s == ListUtils.getSuffix(input, token.characters.list))
          check(Some(token, s) == Some(Token(token.rule.transformation.apply(Vector.fromList(token.characters.list)), token.rule, token.characters.list.size, Vector.fromList(token.characters.list)), ListUtils.getSuffix(input, token.characters.list)))


          val (followingTokens, nextSuffix) = lexList(rules, s)
          // assert(token.characters.list ++ suffix.list == input.list)
          // ghostExpr(Vector.listEqImpliesEq(token.characters ++ suffix, input))
          assert(token.characters.list ++ s == prefix ++ suffix)
          assert(lexList(rules, prefix ++ suffix) == (List(token) ++ followingTokens, nextSuffix))
          assert(lexList(rules, s) == (followingTokens, nextSuffix))
          if (s == suffix) {
            unfold(lexList(rules, prefix ++ suffix))
            unfold(maxPrefix(rules, prefix ++ suffix))
            assert(maxPrefix(rules, prefix ++ suffix) == Some((token, s)))
            assert(token.characters.list ++ s == prefix ++ suffix)
            assert(s == suffix)
            ListUtils.lemmaConcatSameAndSameSizesThenSameLists(token.characters.list, s, prefix, suffix)
            assert(token.characters.list == prefix)
            assert(prefixTokens ++ suffixTokens == lexList(rules, prefix ++ suffix)._1)
            assert(prefixTokens ++ suffixTokens == List(token) ++ followingTokens)
            assert(prefixTokens == List(token))
            assert(prefix == token.characters.list)
            assert(ListUtils.isPrefix(Nil[C](), suffix))
            lemmaMaxPrefixThenWithShorterSuffix(rules, prefix, suffix, Nil[C](), token, suffix, Nil[C]())
            assert(maxPrefix(rules, prefix).isDefined)
            assert(maxPrefix(rules, prefix).get._1 == token)
            assert(maxPrefix(rules, prefix).get._2.isEmpty)
            assert(maxPrefix(rules, prefix) == Some((token, List[C]())))
            assert(lexList(rules, prefix) == (List(token), List[C]()))
          } else {
            if (s.size < suffix.size) {
              assert(token.characters.list ++ s == prefix ++ suffix)
              val lSize = input.size
              assert(token.characters.list.size + s.size == lSize)
              assert(prefix.size + suffix.size == lSize)
              assert(s.size < suffix.size)
              assert(token.characters.list.size > prefix.size)
              lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, token.characters.list, input, s, token.rule)
              assert(matchR(token.rule.regex, token.characters.list))
              assert(token.characters.list.size > prefix.size)
              assert(maxPrefix(rules, input).get._1 == prefixTokens.head)
              if(maxPrefix(rules, input).get._2.size < suffix.size) {
                val localSuffix = maxPrefix(rules, input).get._2
                assert(localSuffix.size < suffix.size)
                if (prefixTokens.tail.isEmpty) {
                  assert(prefixTokens == List(prefixTokens.head))
                  assert(token == prefixTokens.head)
                  assert(token.characters.list ++ s == token.characters.list ++ localSuffix)
                  ListUtils.lemmaConcatSameAndSameSizesThenSameLists(token.characters.list, s, token.characters.list, localSuffix)
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
              assert(token.characters.list.size > prefixTokens.head.characters.list.size)

              check(false)
            }
            if (s.size == suffix.size){
              assert(token.characters.list ++ s == prefix ++ suffix)
              ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.characters.list, s)
              ListUtils.lemmaConcatTwoListThenFirstIsPrefix(prefix, suffix)
              assert(ListUtils.isPrefix(prefix, prefix ++ suffix))
              assert(ListUtils.isPrefix(token.characters.list, prefix ++ suffix))
              ListUtils.lemmaIsPrefixSameLengthThenSameList(token.characters.list, prefix, prefix ++ suffix)
              assert(token.characters.list == prefix)
              ListUtils.lemmaSamePrefixThenSameSuffix(token.characters.list, s, prefix, suffix, input)
              check(false)
            }
            assert(s.size > suffix.size)
            // We still have tokens to tokenize before reaching the one of interest
            assert(prefixTokens.head == token)
            assert(token.characters.list ++ s == prefix ++ suffix)
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.characters.list, s)
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(prefix, suffix)
            ListUtils.lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther(prefix, token.characters.list, input)
            assert(token.characters.list.size < prefix.size)
            val restPrefix = ListUtils.getSuffix(prefix, token.characters.list)
            assert(token.characters.list ++ restPrefix == prefix)
            assert(token.characters.list ++ restPrefix ++ suffix == prefix ++ suffix)
            assert(token.characters.list ++ restPrefix ++ suffix == token.characters.list ++ s)
            ListUtils.lemmaTwoListsConcatAssociativity(token.characters.list, restPrefix, suffix)
            assert((token.characters.list ++ restPrefix) ++ suffix == token.characters.list ++ (restPrefix ++ suffix))
            assert(prefix ++ suffix == (token.characters.list ++ restPrefix) ++ suffix)
            assert(prefix ++ suffix == token.characters.list ++ (restPrefix ++ suffix))
            assert(token.characters.list ++ s == token.characters.list ++ (restPrefix ++ suffix))
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.characters.list, (restPrefix ++ suffix))
            ListUtils.lemmaSamePrefixThenSameSuffix(token.characters.list, s, token.characters.list, (restPrefix ++ suffix), input)
            assert(restPrefix ++ suffix == s)
            ListUtils.lemmaConcatTwoListThenFirstIsPrefix(restPrefix, suffix)
            assert(lexList(rules, s) == (prefixTokens.tail ++ suffixTokens, suffixResult))
            if (prefixTokens.tail.isEmpty){
              assert(prefixTokens == List(token))
              assert(lexList(rules, s) == (suffixTokens, suffixResult))
              lemmaLexWithSmallerInputCannotProduceSameResults(rules, s, suffix, suffixTokens, suffixResult)
              check(false)
            }
            ListUtils.lemmaTwoListsConcatAssociativity(List(token), prefixTokens.tail, suffixTokens)
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
            assert(prefix.size > token.characters.list.size)
            assert(token.characters.list ++ restPrefix == prefix ++ List[C]())
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
    def lemmaLexWithSmallerInputCannotProduceAdditionalTokens[C](rules: List[Rule[C]], longerInput: List[C], shorterInput: List[C], tokens: List[Token[C]], suffix: List[C], addTokens: List[Token[C]]): Unit = {
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
            assert(tL.characters.list ++ sL == longerInput)
            assert(tS.characters.list ++ sS == shorterInput)
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
    def lemmaLexWithSmallerInputCannotProduceSameResults[C](rules: List[Rule[C]], longerInput: List[C], shorterInput: List[C], tokens: List[Token[C]], suffix: List[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(!longerInput.isEmpty)
      require(longerInput.size > shorterInput.size)
      require(lexList(rules, longerInput) == (tokens, suffix))
      decreases(longerInput.size)

      (maxPrefix(rules, longerInput), maxPrefix(rules, shorterInput)) match {
        case (Some((tL, sL)), Some((tS, sS))) => {
          assert(tL.characters.list ++ sL == longerInput)
          assert(tS.characters.list ++ sS == shorterInput)
          if(tL == tS) {
            assert(tL.characters.list == tS.characters.list)
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
    def lemmaMaxPrefixThenWithShorterSuffix[C](rules: List[Rule[C]], prefix: List[C], suffix: List[C], newSuffix: List[C], token: Token[C], suffixResult: List[C], newSuffixResult: List[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(suffix.size >= newSuffix.size)
      require(ListUtils.isPrefix(newSuffix, suffix))
      require(prefix.size >= token.characters.list.size)
      require(token.characters.list ++ newSuffixResult == prefix ++ newSuffix)
      require(maxPrefix(rules, prefix ++ suffix) == Some((token, suffixResult)))

      val input = prefix ++ suffix
      val newInput = prefix ++ newSuffix


      // Common parts of the proof about token and maxPrefix
      ghostExpr(Vector.listEqImpliesEq(token.characters, Vector.fromList(token.characters.list)))
      ghostExpr(Vector.listEqImpliesEq(token.characters, token.originalCharacters))
      ghostExpr(Vector.listEqImpliesEq(Vector.fromList(token.characters.list), token.characters))
      lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(token.rule, rules)
      token.rule.transformation.lemmaInv()

      assert(maxPrefix(rules, input) == Some((token, suffixResult)))
      assert(token.characters.list ++ suffixResult == input)
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.characters.list, suffixResult)
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(prefix, suffix)
      assert(ListUtils.isPrefix(prefix, input))
      assert(ListUtils.isPrefix(token.characters.list, input))

      ListUtils.lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther(prefix, token.characters.list, input)

      val oldNextPrefix = ListUtils.getSuffix(prefix, token.characters.list)
      assert(token.characters.list ++ oldNextPrefix == prefix)
      assert(prefix ++ suffix == input)

      ListUtils.lemmaTwoListsConcatAssociativity(token.characters.list, oldNextPrefix, suffix)
      assert(input == (token.characters.list ++ oldNextPrefix) ++ suffix)
      assert(input == token.characters.list ++ (oldNextPrefix ++ suffix))
      assert(token.characters.list ++ suffixResult == input)
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.characters.list, (oldNextPrefix ++ suffix))
      ListUtils.lemmaSamePrefixThenSameSuffix(token.characters.list, (oldNextPrefix ++ suffix), token.characters.list, suffixResult, input)
      assert((oldNextPrefix ++ suffix) == suffixResult)

      lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, token.characters.list, input, suffixResult, token.rule)
      assert(maxPrefixOneRule(token.rule, input) == Some((token, suffixResult)))

      assert(ListUtils.isPrefix(token.characters.list, prefix))
      ListUtils.lemmaPrefixStaysPrefixWhenAddingToSuffix(token.characters.list, prefix, suffix)
      ListUtils.lemmaPrefixStaysPrefixWhenAddingToSuffix(token.characters.list, prefix, newSuffix)
      assert(ListUtils.isPrefix(token.characters.list, prefix ++ suffix))
      assert(ListUtils.isPrefix(token.characters.list, prefix ++ newSuffix))
      assert(ListUtils.isPrefix(token.characters.list, newInput))

      assert(matchR(token.rule.regex, token.characters.list))

      ListUtils.lemmaIsPrefixRefl(input, input)

      check(token.value == token.rule.transformation.apply(Vector.fromList(token.characters.list)))
      check(token.rule == token.rule)
      check(token.size == token.originalCharacters.size)
      check(token.size == token.originalCharacters.list.size)
      check(token.size == token.characters.list.size)
      check(token.originalCharacters == Vector.fromList(token.characters.list))
      assert(token.characters.list ++ suffixResult == input)
      assert(token.characters.list ++ ListUtils.getSuffix(input, token.characters.list) == input)
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.characters.list, ListUtils.getSuffix(input, token.characters.list))
      ListUtils.lemmaSamePrefixThenSameSuffix(token.characters.list, suffixResult, token.characters.list, ListUtils.getSuffix(input, token.characters.list), input)
      check(suffixResult == ListUtils.getSuffix(input, token.characters.list))
      check(Some(token, suffixResult) == Some(Token(token.rule.transformation.apply(Vector.fromList(token.characters.list)), token.rule, token.characters.list.size, Vector.fromList(token.characters.list)), ListUtils.getSuffix(input, token.characters.list)))

      
      
      maxPrefix(rules, prefix ++ newSuffix) match {
        case Some((t, s)) => {
          
          t.lemmaCharactersSize()
          token.lemmaCharactersSize()
          ghostExpr(Vector.listEqImpliesEq(t.characters, Vector.fromList(t.characters.list)))
          ghostExpr(Vector.listEqImpliesEq(t.characters, t.originalCharacters))
          ghostExpr(Vector.listEqImpliesEq(Vector.fromList(t.characters.list), t.characters))

          lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(t.rule, rules)
          
          t.rule.transformation.lemmaInv()

          lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, t.characters.list, newInput, s, t.rule)

          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(t.characters.list, s)
          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(t.characters.list, newSuffixResult)

          assert(maxPrefixOneRule(t.rule, newInput) == Some((t, s)))

          val diffWithLongerSuffix = ListUtils.getSuffix(suffix, newSuffix)
          assert(newSuffix ++ diffWithLongerSuffix == suffix)
          assert(prefix ++ suffix == input)
          assert(prefix ++ newSuffix == newInput)
          ListUtils.lemmaTwoListsConcatAssociativity(prefix, newSuffix, diffWithLongerSuffix)
          assert(prefix ++ newSuffix ++ diffWithLongerSuffix == input)
          assert(newInput ++ diffWithLongerSuffix == input)
          ListUtils.lemmaPrefixStaysPrefixWhenAddingToSuffix(t.characters.list, newInput, diffWithLongerSuffix)
          assert(ListUtils.isPrefix(t.characters.list, input))

          assert(t.characters.list ++ s == newInput)
          assert(t.characters.list ++ ListUtils.getSuffix(newInput, t.characters.list) == newInput)
          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(t.characters.list, ListUtils.getSuffix(newInput, t.characters.list))
          ListUtils.lemmaSamePrefixThenSameSuffix(t.characters.list, s, t.characters.list, ListUtils.getSuffix(newInput, t.characters.list), newInput)
          check(s == ListUtils.getSuffix(newInput, t.characters.list))

          if(t.characters.list.size > token.characters.list.size) {
            assert(ListUtils.isPrefix(t.characters.list, newInput))
            assert(ListUtils.isPrefix(token.characters.list, newInput))
            assert(ListUtils.isPrefix(token.characters.list, input))
            assert(ListUtils.isPrefix(t.characters.list, input))

            assert(!rules.isEmpty)
            assert(rulesInvariant(rules))
            assert(rules.contains(token.rule))
            assert(rules.contains(t.rule))

            assert(maxPrefix(rules, input) == Some(Token(token.rule.transformation.apply(Vector.fromList(token.characters.list)), token.rule, token.characters.list.size, Vector.fromList(token.characters.list)), ListUtils.getSuffix(input, token.characters.list)))
            lemmaMaxPrefixOutputsMaxPrefix(rules, token.rule, token.characters.list, input, t.characters.list, t.rule)
            check(false)
          }
          if(t.characters.list.size < token.characters.list.size) {
            assert(ListUtils.isPrefix(t.characters.list, newInput))
            assert(ListUtils.isPrefix(token.characters.list, newInput))

            lemmaMaxPrefixOutputsMaxPrefix(rules, t.rule, t.characters.list, newInput, token.characters.list, token.rule)
            check(false)
          }
          assert(token.characters.list.size == t.characters.list.size) 
          assert(ListUtils.isPrefix(token.characters.list, newInput))
          assert(ListUtils.isPrefix(t.characters.list, newInput))
          ListUtils.lemmaIsPrefixSameLengthThenSameList(t.characters.list, token.characters.list, newInput)
          assert(t.characters.list == token.characters.list)
          ListUtils.lemmaSamePrefixThenSameSuffix(t.characters.list, s, token.characters.list, newSuffixResult, newInput)
          assert(s == newSuffixResult)  

          if (ListUtils.getIndex(rules, t.rule) < ListUtils.getIndex(rules, token.rule)) {
            assert(maxPrefix(rules, input) == Some((token, suffixResult)))
            assert(maxPrefix(rules, input) == Some(Token(token.rule.transformation.apply(Vector.fromList(token.characters.list)), token.rule, token.characters.list.size, Vector.fromList(token.characters.list)), ListUtils.getSuffix(input, token.characters.list)))
            assert(matchR(token.rule.regex, token.characters.list))
            lemmaMaxPrefNoSmallerRuleMatches(rules, token.rule, token.characters.list, input, t.rule)
            check(false)
          }
          if (ListUtils.getIndex(rules, t.rule) > ListUtils.getIndex(rules, token.rule)) {
            assert(ruleValid(t.rule))
            assert(ruleValid(token.rule))
            assert(matchR(t.rule.regex, t.characters.list))
            lemmaMaxPrefNoSmallerRuleMatches(rules, t.rule, t.characters.list, newInput, token.rule)
            check(false)
          }
            ListUtils.lemmaSameIndexThenSameElement(rules, t.rule, token.rule)

          assert(t.rule == token.rule)

          assert(t == token)
          assert(maxPrefix(rules, prefix ++ newSuffix) == Some((token, newSuffixResult)))
        }
        case None() => {
          lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone(token.rule, rules, newInput)
          lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex(token.rule, token.characters.list, newInput)
          check(false)
          assert(maxPrefix(rules, prefix ++ newSuffix) == Some((token, newSuffixResult)))
        }
      }


    }.ensuring(_ => maxPrefix(rules, prefix ++ newSuffix) == Some((token, newSuffixResult)))

    @ghost
    @opaque
    @inlineOnce
    def lemmaMaxPrefixThenWithoutSuffix[C](rules: List[Rule[C]], input: List[C], token: Token[C], suffix: List[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(!input.isEmpty)
      require(token.characters.list == input)
      require(maxPrefix(rules, input ++ suffix).isDefined)
      require(maxPrefix(rules, input ++ suffix).get._1 == token)
      require(maxPrefix(rules, input ++ suffix).get._2 == suffix)

      maxPrefix(rules, input) match {
        case Some((t, s)) => {
          assert(token.characters.list ++ suffix == input ++ suffix)
          ListUtils.lemmaConcatSameAndSameSizesThenSameLists(token.characters.list, suffix, input, suffix)
          assert(token.characters.list == input)
          check(maxPrefix(rules, input) == Some((t, s)))
          if (t.characters.list.size > token.characters.list.size) {
            assert(t.characters.list ++ s == input)
            assert(t.characters.list.size > input.size)
            check(false)
          }
          t.lemmaCharactersSize()
          token.lemmaCharactersSize()
          ghostExpr(Vector.listEqImpliesEq(t.characters, Vector.fromList(t.characters.list)))
          ghostExpr(Vector.listEqImpliesEq(t.characters, t.originalCharacters))
          ghostExpr(Vector.listEqImpliesEq(Vector.fromList(t.characters.list), t.characters))

          ghostExpr(Vector.listEqImpliesEq(token.characters, Vector.fromList(token.characters.list)))
          ghostExpr(Vector.listEqImpliesEq(token.characters, token.originalCharacters))
          ghostExpr(Vector.listEqImpliesEq(Vector.fromList(token.characters.list), token.characters))

          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(t.characters.list, s)
          ListUtils.lemmaSamePrefixThenSameSuffix(t.characters.list, s, t.characters.list, ListUtils.getSuffix(input, t.characters.list), input)
          ListUtils.lemmaIsPrefixRefl(input, input)

          lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(t.rule, rules)
          lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(token.rule, rules)
          
          t.rule.transformation.lemmaInv()
          token.rule.transformation.lemmaInv()

          check(t.value == t.rule.transformation.apply(Vector.fromList(t.characters.list)))
          check(t.rule == t.rule)
          check(t.size == t.originalCharacters.size)
          check(t.size == t.originalCharacters.list.size)
          check(t.size == t.characters.list.size)
          check(t.originalCharacters == Vector.fromList(t.characters.list))
          check(s == ListUtils.getSuffix(input, t.characters.list))
          check(Some(t, s) == Some(Token(t.rule.transformation.apply(Vector.fromList(t.characters.list)), t.rule, t.characters.list.size, Vector.fromList(t.characters.list)), ListUtils.getSuffix(input, t.characters.list)))

          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(input, suffix)
          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.characters.list, suffix)
          assert(ListUtils.isPrefix(input, input ++ suffix))
          assert(ListUtils.isPrefix(input, token.characters.list ++ suffix))
          ListUtils.lemmaSamePrefixThenSameSuffix(token.characters.list, suffix, token.characters.list, ListUtils.getSuffix(input ++ suffix, token.characters.list), input ++ suffix)

          check(token.value == token.rule.transformation.apply(Vector.fromList(token.characters.list)))
          check(token.rule == token.rule)
          check(token.size == token.originalCharacters.size)
          check(token.size == token.originalCharacters.list.size)
          check(token.size == token.characters.list.size)
          check(token.originalCharacters == Vector.fromList(token.characters.list))
          check(suffix == ListUtils.getSuffix(input ++ suffix, token.characters.list))
          check(Some(token, suffix) == Some(Token(token.rule.transformation.apply(Vector.fromList(token.characters.list)), token.rule, token.characters.list.size, Vector.fromList(token.characters.list)), ListUtils.getSuffix(input ++ suffix, token.characters.list)))


          lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, t.characters.list, input, s, t.rule)
          lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, token.characters.list, input ++ suffix, suffix, token.rule)
          if (t.characters.list.size < token.characters.list.size) {
            check(maxPrefix(rules, input) == Some((t, s)))
            check(maxPrefix(rules, input).isDefined)
            check(maxPrefix(rules, input).get._1 == t)
            assert(rules.contains(token.rule))
            assert(matchR(token.rule.regex, input))
            
            assert(ListUtils.isPrefix(token.characters.list, input))
            assert(ListUtils.isPrefix(input, input))
            assert(ListUtils.getSuffix(input, input) == List())
            assert(t.characters.list ++ s == input)
            
            assert(ListUtils.isPrefix(t.characters.list, input))
            assert(ListUtils.isPrefix(input, input))

            assert(t.characters.list ++ ListUtils.getSuffix(input, t.characters.list) == input)
            assert(t.characters.list ++ s == input)
            
            check(ListUtils.getSuffix(input, t.characters.list) == s)

            assert(!rules.isEmpty)
            assert(rulesInvariant(rules))
            assert(rules.contains(t.rule))
            assert(rules.contains(token.rule))

            assert(maxPrefixOneRule(t.rule, input) == Some(Token(t.rule.transformation.apply(Vector.fromList(t.characters.list)), t.rule, t.characters.list.size, Vector.fromList(t.characters.list)), s))

            assert(matchR(t.rule.regex, t.characters.list))

            
            ForallOf((a: Vector[C]) => t.rule.transformation.witness(t.rule.transformation.f(a)) == a)(Vector.fromList(t.characters.list))
            ListUtils.lemmaIsPrefixRefl(input, input)
            assert(maxPrefixOneRule(t.rule, input) == Some(Token(t.rule.transformation.apply(Vector.fromList(t.characters.list)), t.rule, t.characters.list.size, Vector.fromList(t.characters.list)), ListUtils.getSuffix(input, t.characters.list)))

            assert(input.size > t.characters.list.size)
            assert(maxPrefix(rules, input) == Some(Token(t.rule.transformation.apply(Vector.fromList(t.characters.list)), t.rule, t.characters.list.size, Vector.fromList(t.characters.list)), ListUtils.getSuffix(input, t.characters.list)))

            lemmaMaxPrefixOutputsMaxPrefix(rules, t.rule, t.characters.list, input, input, token.rule)
            check(false)
          }

          ForallOf((a: Vector[C]) => t.rule.transformation.witness(t.rule.transformation.f(a)) == a)(Vector.fromList(t.characters.list))

          token.rule.transformation.lemmaInv()
          ForallOf((a: Vector[C]) => token.rule.transformation.witness(token.rule.transformation.f(a)) == a)(Vector.fromList(token.characters.list))

          assert(t.characters.list.size == token.characters.list.size)
          assert(t.characters.list ++ s == input)
          assert(t.characters.list ++ s == token.characters.list)
          assert(s.isEmpty)
          assert(t.characters.list == token.characters.list)
          ghostExpr(Vector.listEqImpliesEq(token.characters, t.characters))
          assert(t.characters == token.characters)
          assert(t.originalCharacters == token.originalCharacters)
          assert(!rules.isEmpty)
          assert(rulesInvariant(rules))
          assert(rules.contains(t.rule))
          assert(rules.contains(token.rule))

          if (t.rule != token.rule) {
            if (ListUtils.getIndex(rules, t.rule) < ListUtils.getIndex(rules, token.rule)) {
              assert(maxPrefix(rules, input ++ suffix) == Some((token, suffix)))
              assert(maxPrefix(rules, input ++ suffix) == Some(Token(token.rule.transformation.apply(Vector.fromList(input)), token.rule, input.size, Vector.fromList(input)), ListUtils.getSuffix(input ++ suffix, input)))
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
    def lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead[C](rules: List[Rule[C]], tokens: List[Token[C]], separatorToken: Token[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividually(rules, Vector.fromList(tokens)))
      require(rulesProduceIndividualToken(rules, separatorToken))
      require(separatorToken.rule.isSeparator)
      require(tokens.forall(!_.rule.isSeparator))
      require(sepAndNonSepRulesDisjointChars(rules, rules))

      tokens match {
        case Cons(hd, tl) => {
          Vector.listEqImpliesEq(Vector.fromList(hd.characters.list), hd.characters)
          Vector.listEqImpliesEq(Vector.fromList(separatorToken.characters.list), separatorToken.characters)

          lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, separatorToken.characters.list, separatorToken)
          val separatorRule = separatorToken.rule

          check(maxPrefix(rules, hd.characters.list).get._1 == hd)
          lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, hd.characters.list, hd)
          val rule = hd.rule

          val suffix: List[C] = printWithSeparatorTokenWhenNeededList(rules, tl, separatorToken)
          val maxPrefWithoutSep = maxPrefix(rules, hd.characters.list ++ suffix)
          maxPrefWithoutSep match {
            case Some((t, s)) if t == hd => ()
            case Some((t, s)) if t != hd => {
              ListUtils.lemmaTwoListsConcatAssociativity(hd.characters.list, separatorToken.characters.list, suffix)
              val resSuffix: List[C] = separatorToken.characters.list ++ suffix
              if (!separatorRule.regex.usedCharacters.contains(separatorToken.characters.list.head)) {
                lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(
                  separatorRule.regex,
                  separatorToken.characters.list,
                  separatorToken.characters.list.head
                )
                check(false)
              }
              lemmaNonSepRuleNotContainsCharContainedInASepRule(rules, rules, rule, separatorRule, separatorToken.characters.list.head)

              // ----- to prove (!lex(rules, Vector.fromList(hd.characters.list))._1.isEmpty
              Vector.listEqImpliesEq(hd.characters, Vector.fromList(hd.characters.list))
              Vector.listEqImpliesEq(print(Vector.singleton(hd)), hd.characters)
              unfold(print(Vector.singleton(hd)))
              assert(print(Vector.singleton(hd)).list == printList(List(hd)))
              assert(printList(List(hd)) == hd.characters.list)
              assert(print(Vector.singleton(hd)) == hd.characters)
              assert(rulesProduceIndividualToken(rules, hd))
              assert(!lex(rules, Vector.fromList(hd.characters.list))._1.isEmpty)
              // ----- end
              
              check(maxPrefix(rules, hd.characters.list).isDefined)
              check(maxPrefix(rules, hd.characters.list).get._1 == hd)
              lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame(rules, hd, rule, resSuffix, separatorRule)
            }
            case None() => {
              // ----- to prove (!lex(rules, Vector.fromList(hd.characters.list))._1.isEmpty
              Vector.listEqImpliesEq(hd.characters, Vector.fromList(hd.characters.list))
              Vector.listEqImpliesEq(print(Vector.singleton(hd)), hd.characters)
              unfold(print(Vector.singleton(hd)))
              assert(print(Vector.singleton(hd)).list == printList(List(hd)))
              assert(printList(List(hd)) == hd.characters.list)
              assert(print(Vector.singleton(hd)) == hd.characters)
              assert(rulesProduceIndividualToken(rules, hd))
              assert(!lex(rules, Vector.fromList(hd.characters.list))._1.isEmpty)
              // ----- end
              lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined(rules, hd.characters.list, suffix)
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
    def lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame[C](
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
      require(maxPrefix(rules, token.characters.list).isDefined)
      require(maxPrefix(rules, token.characters.list).get._1 == token)
      require(maxPrefix(rules, token.characters.list).get._2.isEmpty)
      require(token.rule == rule)
      require({
        lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(rule, rules)
        matchR(rule.regex, token.characters.list)
      })
      require(!suffix.isEmpty)
      require(!rule.regex.usedCharacters.contains(suffix.head))
      require(anOtherTypeRule.regex.usedCharacters.contains(suffix.head))
      require(sepAndNonSepRulesDisjointChars(rules, rules))

      Vector.listEqImpliesEq(Vector.fromList(token.characters.list), token.characters)

      val input = token.characters.list ++ suffix
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.characters.list, suffix)
      val tokenOpt = maxPrefix(rules, input)
      lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined(rules, token.characters.list, suffix)
      val foundToken = tokenOpt.get._1
      val foundSuffix = tokenOpt.get._2
      lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, input, foundToken)
      val foundRule = foundToken.rule
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(foundToken.characters.list, foundSuffix)
      assert(ListUtils.isPrefix(foundToken.characters.list, input))
      assert(matchR(foundRule.regex, foundToken.characters.list))
      assert(foundRule == foundToken.rule)

      Vector.listEqImpliesEq(Vector.fromList(foundToken.characters.list), foundToken.characters)
      foundToken.lemmaCharactersSize()
      assert(maxPrefix(rules, input) == Some(Token(foundRule.transformation.apply(foundToken.characters), foundRule, foundToken.characters.size, foundToken.characters), foundSuffix))
      lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, foundToken.characters.list, input, foundSuffix, foundRule)
      ListUtils.lemmaSamePrefixThenSameSuffix(
        foundToken.characters.list,
        foundSuffix,
        foundToken.characters.list,
        ListUtils.getSuffix(input, foundToken.characters.list),
        input
      )
      assert(ListUtils.getSuffix(input, foundToken.characters.list) == foundSuffix)
      assert(maxPrefixOneRule(foundRule, input) == Some((foundToken, ListUtils.getSuffix(input, foundToken.characters.list))))

      if (!rule.regex.usedCharacters.contains(foundToken.characters.list.head)) {
        lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(rule.regex, token.characters.list, foundToken.characters.list.head)
        check(false)
      }
      if (rule.isSeparator) {
        if (!foundRule.isSeparator) {
          assert(token.characters.list.contains(foundToken.characters.list.head))
          assert(rule.regex.usedCharacters.contains(foundToken.characters.list.head))
          lemmaNonSepRuleNotContainsCharContainedInASepRule(rules, rules, foundRule, rule, foundToken.characters.list.head)
          lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(foundRule.regex, foundToken.characters.list, foundToken.characters.list.head)
          check(false)
        }
      } else {
        if (foundRule.isSeparator) {
          assert(token.characters.list.contains(foundToken.characters.list.head))
          assert(rule.regex.usedCharacters.contains(foundToken.characters.list.head))
          lemmaSepRuleNotContainsCharContainedInANonSepRule(rules, rules, rule, foundRule, foundToken.characters.list.head)
          lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(foundRule.regex, foundToken.characters.list, foundToken.characters.list.head)
          check(false)
        }
      }

      if (foundToken.characters.size > token.characters.size) {
        ListUtils.lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref(token.characters.list, suffix, foundToken.characters.list, input)
        if (rule.isSeparator) {
          lemmaSepRuleNotContainsCharContainedInANonSepRule(rules, rules, anOtherTypeRule, foundRule, suffix.head)
          lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(foundRule.regex, foundToken.characters.list, suffix.head)
          check(false)
        } else {
          lemmaNonSepRuleNotContainsCharContainedInASepRule(rules, rules, foundRule, anOtherTypeRule, suffix.head)
          lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(foundRule.regex, foundToken.characters.list, suffix.head)
          check(false)
        }
      }
      if (foundToken.characters.size < token.characters.size) {
        lemmaMaxPrefixOutputsMaxPrefix(rules, foundRule, foundToken.characters.list, input, token.characters.list, rule)
        check(false)
      }
      ListUtils.lemmaIsPrefixSameLengthThenSameList(foundToken.characters.list, token.characters.list, input)

      assert(foundToken.characters == token.characters)

      if (foundToken.rule != token.rule) {
        val foundRuleIndex = ListUtils.getIndex(rules, foundRule)
        val ruleIndex = ListUtils.getIndex(rules, rule)
        if (foundRuleIndex < ruleIndex) {
          ListUtils.lemmaGetSuffixOnListWithItSelfIsEmpty(token.characters.list)
          assert(ListUtils.getSuffix(token.characters.list, token.characters.list).isEmpty)
          lemmaMaxPrefNoSmallerRuleMatches(rules, rule, token.characters.list, token.characters.list, foundRule)
          check(false)
        }
        if (ruleIndex < foundRuleIndex) {
          lemmaMaxPrefNoSmallerRuleMatches(rules, foundRule, token.characters.list, input, rule)
          check(false)
        }

        ListUtils.lemmaSameIndexThenSameElement(rules, foundRule, rule)
        check(false)
      }

      lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, token.characters.list, input, ListUtils.getSuffix(input, token.characters.list), rule)
      ListUtils.lemmaSamePrefixThenSameSuffix(
        token.characters.list,
        ListUtils.getSuffix(input, token.characters.list),
        foundToken.characters.list,
        foundSuffix,
        input
      )
      ListUtils.lemmaSamePrefixThenSameSuffix(token.characters.list, suffix, foundToken.characters.list, foundSuffix, input)

    }.ensuring (_ => maxPrefix(rules, token.characters.list ++ suffix) == Some((token, suffix)))


    @ghost
    def lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame[C](
        rules: List[Rule[C]],
        token: Token[C],
        rule: Rule[C],
        suffix: List[C]
    ): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rules.contains(rule))
      require(maxPrefix(rules, token.characters.list).isDefined)
      require(maxPrefix(rules, token.characters.list).get._1 == token)
      require(maxPrefix(rules, token.characters.list).get._2.isEmpty)
      require(token.rule == rule)
      require({
        lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(rule, rules)
        matchR(rule.regex, token.characters.list)
      })
      require(!suffix.isEmpty)
      require(!prefixMatch(rulesRegex(rules), token.characters.list ++ List(suffix.head)))

      val input: List[C] = token.characters.list ++ suffix
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.characters.list, suffix)
      val tokenOpt = maxPrefix(rules, input)
      lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined(rules, token.characters.list, suffix)
      val foundToken: Token[C] = tokenOpt.get._1
      val foundSuffix: List[C] = tokenOpt.get._2
      lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, input, foundToken)
      val foundRule = foundToken.rule
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(foundToken.characters.list, foundSuffix)
      assert(ListUtils.isPrefix(foundToken.characters.list, input))
      assert(matchR(foundRule.regex, foundToken.characters.list))
      assert(foundRule == foundToken.rule)

      Vector.listEqImpliesEq(Vector.fromList(token.characters.list), token.characters)
      Vector.listEqImpliesEq(Vector.fromList(foundToken.characters.list), foundToken.characters)

      foundRule.transformation.lemmaInv()
      assert(semiInverse(foundRule.transformation.witness, foundRule.transformation.f))
      assert(Forall((a: Vector[C]) => foundRule.transformation.witness(foundRule.transformation.f(a)) == a))
      ForallOf((a: Vector[C]) => foundRule.transformation.witness(foundRule.transformation.f(a)) == a)(foundToken.characters)

      foundToken.lemmaCharactersSize()
      assert(maxPrefix(rules, input) == Some(Token(foundRule.transformation.apply(foundToken.characters), foundRule, foundToken.characters.size, foundToken.characters), foundSuffix))
      lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, foundToken.characters.list, input, foundSuffix, foundRule)
      ListUtils.lemmaSamePrefixThenSameSuffix(
        foundToken.characters.list,
        foundSuffix,
        foundToken.characters.list,
        ListUtils.getSuffix(input, foundToken.characters.list),
        input
      )
      assert(ListUtils.getSuffix(input, foundToken.characters.list) == foundSuffix)
      assert(maxPrefixOneRule(foundRule, input) == Some((foundToken, ListUtils.getSuffix(input, foundToken.characters.list))))
      lemmaMaxPrefixThenMatchesRulesRegex(rules, token.characters.list, token, rule, Nil())
      assert(matchR(rulesRegex(rules), token.characters.list))

      if(foundToken.characters.size > token.characters.size) {
        lemmaMaxPrefixThenMatchesRulesRegex(rules, input, foundToken, foundRule, foundSuffix)
        assert(matchR(rulesRegex(rules), foundToken.characters.list))
        assert(input == token.characters.list ++ suffix)
        ListUtils.lemmaSamePrefixThenSameSuffix(token.characters.list, suffix, token.characters.list, ListUtils.getSuffix(input, token.characters.list), input)
        assert(ListUtils.getSuffix(input, token.characters.list) == suffix)
        ListUtils.lemmaAddHeadSuffixToPrefixStillPrefix(token.characters.list, input)
        assert(ListUtils.isPrefix(token.characters.list ++ List(suffix.head), input))
        assert(ListUtils.isPrefix(foundToken.characters.list, input))
        ListUtils.lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther(foundToken.characters.list, token.characters.list ++ List(suffix.head), input)
        assert(ListUtils.isPrefix(token.characters.list ++ List(suffix.head), foundToken.characters.list))

        lemmaNotPrefixMatchThenCannotMatchLonger(rulesRegex(rules), token.characters.list ++ List(suffix.head), foundToken.characters.list)

        check(false)
      }
      assert(foundToken.characters.size <= token.characters.size)
      if(foundToken.characters.size < token.characters.size) {
        lemmaMaxPrefixOutputsMaxPrefix(rules, foundRule, foundToken.characters.list, input, token.characters.list, rule)
        check(false)
      }
      assert(foundToken.characters.size == token.characters.size)
      ListUtils.lemmaIsPrefixSameLengthThenSameList(foundToken.characters.list, token.characters.list, input)
      assert(foundToken.characters == token.characters)
      ListUtils.lemmaSamePrefixThenSameSuffix(token.characters.list, suffix, token.characters.list, foundSuffix, input)
      assert(suffix == foundSuffix)
      if(foundToken.rule != token.rule) {
        if(ListUtils.getIndex(rules, token.rule) < ListUtils.getIndex(rules, foundToken.rule)) {
          lemmaMaxPrefNoSmallerRuleMatches(rules, foundToken.rule, foundToken.characters.list, input, token.rule)
          check(false)
        }
        if(ListUtils.getIndex(rules, foundToken.rule) < ListUtils.getIndex(rules, token.rule)) {
          lemmaMaxPrefNoSmallerRuleMatches(rules, token.rule, token.characters.list, token.characters.list, foundToken.rule)
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

    }.ensuring (_ => maxPrefix(rules, token.characters.list ++ suffix) == Some((token, suffix)))

    @ghost
    def lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined[C](rules: List[Rule[C]], input: List[C], suffix: List[C]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(!lex(rules, Vector.fromList(input))._1.isEmpty)

      val (tokens, _) = lex(rules, Vector.fromList(input))
      val firstT = tokens.list.head
      ListUtils.lemmaConcatTwoListThenFirstIsPrefix(firstT.characters.list, maxPrefix(rules, input).get._2)
      ListUtils.lemmaPrefixStaysPrefixWhenAddingToSuffix(firstT.characters.list, input, suffix)
      lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken(rules, input, firstT)
      val rule: Rule[C] = firstT.rule
      assert(matchR(rule.regex, firstT.characters.list))

      if (maxPrefix(rules, input ++ suffix).isEmpty) {
        lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone(rule, rules, input ++ suffix)
        lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex(rule, firstT.characters.list, input ++ suffix)
        check(false)
      }

    }.ensuring (_ => maxPrefix(rules, input ++ suffix).isDefined)

    @ghost
    @opaque
    @inlineOnce
    def lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken[C](rules: List[Rule[C]], input: List[C], token: Token[C]): Unit = {
      require(rulesInvariant(rules))
      require(!rules.isEmpty)
      require(maxPrefix(rules, input).isDefined)
      require(maxPrefix(rules, input).get._1 == token)
      decreases(rules)

      rules match {
        case Cons(hd, tl) => {
          if (maxPrefixOneRule(hd, input).isDefined && maxPrefixOneRule(hd, input).get._1 == token) {
            assert(hd == token.rule)
            assert(matchR(hd.regex, token.characters.list))
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
      getRuleFromTag(rules, token.rule.tag).isDefined && matchR(getRuleFromTag(rules, token.rule.tag).get.regex, token.characters.list) &&
        token.rule == getRuleFromTag(rules, token.rule.tag).get
    )

    @ghost
    @opaque
    @inlineOnce
    def lemmaGetRuleFromTagInListThenSameListWhenAddingARuleDiffTag[C](rules: List[Rule[C]], newHd: Rule[C], tag: String): Unit = {
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
    def lemmaRemovingFirstTokensCharactersPreservesLexSuffix[C](
        rules: List[Rule[C]],
        input: List[C],
        producedTokens: List[Token[C]],
        suffix: List[C]
    ): Unit = {
      require(rulesInvariant(rules))
      require(!rules.isEmpty)
      require(producedTokens.size > 0)
      require(lex(rules, Vector.fromList(input)) == (Vector.fromList(producedTokens), Vector.fromList(suffix)))
    }.ensuring (_ => {
      val (lexedTokens, lexedSuffix) = lex(rules, Vector.fromList(maxPrefix(rules, input).get._2))
      (lexedTokens.list, lexedSuffix.list) == (producedTokens.tail, suffix)
    })

    @ghost
    @opaque
    @inlineOnce
    def lemmaMaxPrefNoneThenNoRuleMatches[C](rules: List[Rule[C]], r: Rule[C], p: List[C], input: List[C]): Unit = {
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
    def lemmaMaxPrefNoSmallerRuleMatches[C](
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
        ForallOf((a: Vector[C]) => r.transformation.witness(r.transformation.f(a)) == a)(Vector.fromList(p))
        maxPrefix(rules, input) == Some(Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p)), ListUtils.getSuffix(input, p))
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
            if (token.characters.size > p.size) {
              lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref(
                rules,
                p,
                Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p)),
                input,
                ListUtils.getSuffix(input, p),
                token.characters.list,
                ListUtils.getSuffix(input, token.characters.list),
                rBis,
                token
              )
              check(false)
              check(!matchR(rBis.regex, p))
            } else {
              if (token.characters.size < p.size) {
                ListUtils.lemmaConcatTwoListThenFirstIsPrefix(token.characters.list, suff)
                lemmaMaxPrefixOneRuleOutputsMaxPrefix(rBis, token.characters.list, token, input, suff, p)
                check(!matchR(rBis.regex, p))
              } else {
                lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq(rules, rBis, r)
                check(Some(token, suff) != Some(Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p)), ListUtils.getSuffix(input, p)))
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
    def lemmaMaxPrefixOutputsMaxPrefix[C](
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
        ForallOf((a: Vector[C]) => r.transformation.witness(r.transformation.f(a)) == a)(Vector.fromList(p))
        ListUtils.lemmaIsPrefixRefl(input, input)
        maxPrefixOneRule(r, input) == Some(Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p)), ListUtils.getSuffix(input, p))
      })

      require(pBis.size > p.size)
      require(maxPrefix(rules, input) == Some(Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p)), ListUtils.getSuffix(input, p)))

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
    def lemmaMaxPrefixOutputsMaxPrefixInner[C](
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
        ListUtils.lemmaIsPrefixRefl(input, input)
        ForallOf((a: Vector[C]) => r.transformation.witness(r.transformation.f(a)) == a)(Vector.fromList(p))
        maxPrefixOneRule(r, input) == Some(Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p)), ListUtils.getSuffix(input, p))
      })

      require(pBis.size > p.size)

      require(ruleValid(rBis))
      require({
        ForallOf((a: Vector[C]) => r.transformation.witness(r.transformation.f(a)) == a)(Vector.fromList(p))
        maxPrefix(rules, input) == Some(Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p)), ListUtils.getSuffix(input, p))
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
        ListUtils.lemmaConcatTwoListThenFirstIsPrefix(tBis.characters.list, suffixBis)
        if (tBis.characters.list == pBis) {
          lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref(
            rules,
            p,
            Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p)),
            input,
            ListUtils.getSuffix(input, p),
            pBis,
            suffixBis,
            rBis,
            tBis
          )
          check(!matchR(rBis.regex, pBis))
        } else {
          if (tBis.characters.size < pBis.size) {
            assert(ListUtils.isPrefix(tBis.characters.list, input))
            lemmaMaxPrefixOneRuleOutputsMaxPrefix(rBis, tBis.characters.list, tBis, input, suffixBis, pBis)
            check(!matchR(rBis.regex, pBis))
          } else {
            if (pBis.size == tBis.characters.list.size) {
              ListUtils.lemmaIsPrefixSameLengthThenSameList(pBis, tBis.characters.list, input)
              check(false)
            }
            assert(pBis.size < tBis.characters.size)
            lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref(
              rules,
              p,
              Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p)),
              input,
              ListUtils.getSuffix(input, p),
              tBis.characters.list,
              suffixBis,
              rBis,
              tBis
            )
            assert(tBis.characters.list.size <= p.size)
            check(false)
            check(!matchR(rBis.regex, pBis))

          }
        }

      }

    }.ensuring (_ => !matchR(rBis.regex, pBis))

    @ghost
    @opaque
    @inlineOnce
    def lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule[C](
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
        ForallOf((a: Vector[C]) => r.transformation.witness(r.transformation.f(a)) == a)(Vector.fromList(p))
        maxPrefix(rules, input) == Some(Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p)), suffix)
      })
      require({
        lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(r, rules)
        matchR(r.regex, p)
      })
      decreases(rules.size)
      val token: Token[C] = Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p))
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
              assert(maxPrefixOneRule(hd, input) != Some(Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p)), suffix))
              assert(maxPrefix(tl, input) == Some(Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p)), suffix))
              lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(tl, p, input, suffix, r)
            }

          }
        }
        case Nil() => check(false)

      }

    }.ensuring (_ => maxPrefixOneRule(r, input) == Some(Token(r.transformation.apply(Vector.fromList(p)), r, p.size, Vector.fromList(p)), suffix))

    @ghost
    @opaque
    @inlineOnce
    def lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok[C](rHead: Rule[C], rTail: List[Rule[C]], input: List[C]): Unit = {
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
    def lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref[C](
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
      require(tBis.characters.list == pBis)
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
              val oPref = tokSuff._1.characters.list
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
    def lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone[C](
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
    def lemmaMaxPrefixOneRuleOutputsMaxPrefix[C](
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
      require(t.characters.list == p)
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
    def lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex[C](
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
    def lemmaRuleInListAndrulesValidInductiveThenRuleIsValid[C](r: Rule[C], rules: List[Rule[C]]): Unit = {
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
    def lemmaInvariantOnRulesThenOnTail[C](r: Rule[C], rules: List[Rule[C]]): Unit = {
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
    def lemmaNoDuplicateCanReorder[C](e1: Rule[C], e2: Rule[C], l: List[Rule[C]]): Unit = {
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
    def lemmaNoDuplicateSameWithAccWithSameContent[C](l: List[Rule[C]], acc: List[String], newAcc: List[String]): Unit = {
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
    def lemmaNoDupTagThenAlsoWithSubListAcc[C](acc: List[String], newAcc: List[String], rules: List[Rule[C]]): Unit = {
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
    def lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq[C](rules: List[Rule[C]], r1: Rule[C], r2: Rule[C]): Unit = {
      require(rules.contains(r1))
      require(rules.contains(r2))
      require(noDuplicateTag(rules))
      require(ListUtils.getIndex(rules, r1) < ListUtils.getIndex(rules, r2))

    }.ensuring (_ => r1 != r2)

    @ghost
    @opaque
    @inlineOnce
    def lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq[C](rules: List[Rule[C]], r1: Rule[C], r2: Rule[C]): Unit = {
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
    def lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame[C](rules: List[Rule[C]], r: Rule[C], tag: String, acc: List[String]): Unit = {
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
    def lemmaNonSepRuleNotContainsCharContainedInASepRule[C](
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
      require(sepAndNonSepRulesDisjointChars(rules, rulesRec))
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
    def lemmaNonSepRuleNotContainsCharContainedInASepRuleInner[C](rules: List[Rule[C]], rNSep: Rule[C], rSep: Rule[C], c: C): Unit = {
      require(rulesInvariant(rules))
      require(rules.contains(rSep))
      require(rSep.regex.usedCharacters.contains(c))
      require(!rNSep.isSeparator)
      require(rSep.isSeparator)
      require(ruleDisjointCharsFromAllFromOtherType(rNSep, rules))
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
    def lemmaSepRuleNotContainsCharContainedInANonSepRule[C](
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
      require(sepAndNonSepRulesDisjointChars(rules, rulesRec))
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
    def lemmaSepRuleNotContainsCharContainedInANonSepRuleInner[C](rules: List[Rule[C]], rNSep: Rule[C], rSep: Rule[C], c: C): Unit = {
      require(rulesInvariant(rules))
      require(rules.contains(rSep))
      require(rNSep.regex.usedCharacters.contains(c))
      require(!rNSep.isSeparator)
      require(rSep.isSeparator)
      require(ruleDisjointCharsFromAllFromOtherType(rNSep, rules))
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
    def lemmaRulesProduceEachTokenIndividuallyThenForAnyToken[C](rules: List[Rule[C]], tokens: List[Token[C]], t: Token[C]): Unit = {
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
    def lemmaRulesProduceEachTokenIndividuallyThenForSubSeq[C](rules: List[Rule[C]], tokens: List[Token[C]], tokensBis: List[Token[C]]): Unit = {
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
    def lemmaRulesProduceEachTokenIndividuallyConcat[C](rules: List[Rule[C]], ts1: List[Token[C]], ts2: List[Token[C]]): Unit = {
      require(!rules.isEmpty)
      require(rulesInvariant(rules))
      require(rulesProduceEachTokenIndividuallyList(rules, ts1))
      require(rulesProduceEachTokenIndividuallyList(rules, ts2))

      ListUtils.lemmaConcatPreservesForall(ts1, ts2, (t: Token[C]) => rulesProduceIndividualToken(rules, t))

    }.ensuring (_ => rulesProduceEachTokenIndividuallyList(rules, ts1 ++ ts2))

    // Helper lemmas for tokensListTwoByTwoPredicate
    def tokensListTwoByTwoPredicateConcatList[C](l1: List[Token[C]], l2: List[Token[C]], rules: List[Rule[C]], p: (Token[C], Token[C], List[Rule[C]]) => Boolean): Unit = {
      require(tokensListTwoByTwoPredicateList(l1, rules, p) && tokensListTwoByTwoPredicateList(l2, rules, p))
      require(!l1.isEmpty && !l2.isEmpty)
      require(p(l1.last, l2.head, rules))
      decreases(l1.size)
      l1 match {
        case Cons(hd, tl) if !tl.isEmpty => tokensListTwoByTwoPredicateConcatList(tl, l2, rules, p)
        case Cons(hd, tl) if tl.isEmpty =>  ()
      }
    }.ensuring(_ => tokensListTwoByTwoPredicateList(l1 ++ l2, rules, p))

    def tokensListTwoByTwoPredicateConcatSeparableTokensList[C](l1: List[Token[C]], l2: List[Token[C]], rules: List[Rule[C]]): Unit = {
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

    def tokensListTwoByTwoPredicateSeparableTokensDropList[C](l: List[Token[C]], i: BigInt, rules: List[Rule[C]]): Unit = {
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

    def tokensListTwoByTwoPredicateSeparableTokensTakeList[C](l: List[Token[C]], i: BigInt, rules: List[Rule[C]]): Unit = {
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

    def tokensListTwoByTwoPredicateInstantiate[C](l: List[Token[C]], rules: List[Rule[C]], p: (Token[C], Token[C], List[Rule[C]]) => Boolean, t1: Token[C], t2: Token[C], i: BigInt): Unit = {
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

    def tokensListTwoByTwoPredicateInstantiateSeparableTokens[C](l: List[Token[C]], rules: List[Rule[C]], t1: Token[C], t2: Token[C], i: BigInt): Unit = {
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
    def lemmaMaxPrefixThenMatchesRulesRegex[C]( 
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
        require(input == token.characters.list ++ suffix)
        require({
          lemmaRuleInListAndrulesValidInductiveThenRuleIsValid(rule, rules)
          matchR(rule.regex, token.characters.list)
        })
        Vector.listEqImpliesEq(Vector.fromList(token.characters.list), token.characters)

        lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule(rules, token.characters.list, input, suffix, rule)
        assert(maxPrefixOneRule(rule, input) == Some(token, suffix))

        assert(matchR(rule.regex, token.characters.list))
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
        matchRGenUnionSpec(rulesRegex(rules), l, token.characters.list) 

        assert(l.contains(rule.regex))
        assert(validRegex(rule.regex))
        assert(matchR(rule.regex, token.characters.list))
        ListUtils.lemmaContainsThenExists(l, rule.regex, rr => validRegex(rr) && matchR(rr, token.characters.list))
        assert(l.exists(rr => validRegex(rr) && matchR(rr, token.characters.list)))


    }.ensuring(_ => matchR(rulesRegex(rules), token.characters.list))
    
  }
}
