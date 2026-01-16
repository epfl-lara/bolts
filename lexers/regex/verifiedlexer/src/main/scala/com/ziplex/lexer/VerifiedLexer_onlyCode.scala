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

// BEGIN uncomment for verification ------------------------------------------
import stainless.lang.StaticChecks._
import stainless.lang.{ghost => ghostExpr, _}
import stainless.proof.check
import com.mutablemaps.map.MutableHashMap.HashMap
import com.mutablemaps.map.MutableHashMap
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
  import com.ziplex.lexer.MemoisationZipper.CacheFurthestNullable

  /** Safe constructor that returns None if the tokens are not printable with the given rules
    *
    * This should be used at runtime as invariants are erased
    * @param rules
    * @param tokens
    * @return
    */
  def printableTokensFromTokens[C: ClassTag](rules: List[Rule[C]], tokens: Sequence[Token[C]]): Option[PrintableTokens[C]] = {

    if (Lexer.separableTokens(tokens, rules)) {
      Some(PrintableTokens(rules, tokens))
    } else {
      None()
    }
  }.ensuring(res => res.isEmpty || (res.get.rules == rules && res.get.tokens == tokens))

  def printableTokensFromTokensMem[C: ClassTag](rules: List[Rule[C]], tokens: Sequence[Token[C]])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Option[PrintableTokens[C]] = {

    if (Lexer.separableTokensMem(tokens, rules)) {
      Some(PrintableTokens(rules, tokens))
    } else {
      None()
    }
  }.ensuring(res => res.isEmpty || (res.get.rules == rules && res.get.tokens == tokens))

  def emptyPrintableTokens[C: ClassTag](rules: List[Rule[C]]): PrintableTokens[C] = {

    val emptySequence = emptySeq[Token[C]]()
    PrintableTokens(rules, emptySequence)
  }.ensuring(res => res.rules == rules && res.tokens.isEmpty)

  case class PrintableTokens[C: ClassTag](rules: List[Rule[C]], tokens: Sequence[Token[C]]) {


      def size: BigInt = tokens.size
      def print(): Sequence[C] = {
        Lexer.print(tokens)
      }

      def append(other: PrintableTokens[C]): Option[PrintableTokens[C]] = {
        if(other.tokens.isEmpty) {

          Some(this)
        } else if(this.tokens.isEmpty) {


          Some(other) 
        } else {
          if (Lexer.separableTokensPredicate(tokens.last, other.tokens.head, rules)) {

            Some(PrintableTokens(rules, tokens ++ other.tokens))
          } else {
            None()
          }
        }
      }.ensuring(res => res.isEmpty || (res.get.rules == rules && res.get.tokens.list == tokens.list ++ other.tokens.list && res.get.print().list == this.print().list ++ other.print().list))

      def slice(from: BigInt, to: BigInt): PrintableTokens[C] = {
        PrintableTokens(rules, tokens.slice(from, to))
      }.ensuring(res => res.rules == rules && res.tokens.list == tokens.slice(from, to).list)
    }

  case object Lexer extends LexerInterface {
    def ruleValid[C: ClassTag](r: Rule[C]): Boolean = {
      validRegex(r.regex) && !r.regex.nullable && r.tag != ""
    }
    def noDuplicateTag[C: ClassTag](rules: List[Rule[C]], acc: List[String] = Nil()): Boolean = {
      decreases(rules)
      rules match {
        case Nil()        => true
        case Cons(hd, tl) => !acc.contains(hd.tag) && noDuplicateTag(tl, Cons(hd.tag, acc))
      }
    }

    def rulesValid[C: ClassTag](rs: List[Rule[C]]): Boolean = {
      rs.forall(ruleValid)
    }.ensuring(res => res == rulesValidInductive(rs))

    @pure
    override def rulesProduceIndividualToken[C: ClassTag](rs: List[Rule[C]], t: Token[C]): Boolean = {
      val (producedTs, suffix) = lex(rs, print(singletonSeq(t)))
      producedTs.size == 1 && producedTs(0) == t && suffix.isEmpty
    }

    def rulesProduceIndividualTokenMem[C: ClassTag](rs: List[Rule[C]], t: Token[C])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = {
      val (producedTs, suffix) = lexV1Mem(rs, print(singletonSeq(t)))
      producedTs.size == 1 && producedTs(0) == t && suffix.isEmpty
    }.ensuring(res => res == rulesProduceIndividualToken(rs, t))


    def rulesProduceEachTokenIndividually[C: ClassTag](rs: List[Rule[C]], ts: Sequence[Token[C]]): Boolean = {
      ts.forall(t => rulesProduceIndividualToken(rs, t))
    }.ensuring(res => res == ts.list.forall(t => rulesProduceIndividualToken(rs, t)) && res == rulesProduceEachTokenIndividuallyList(rs, ts.list))

    def rulesProduceEachTokenIndividuallyMem[C: ClassTag](rs: List[Rule[C]], ts: Sequence[Token[C]])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = {
      if ts.isEmpty then true 
      else 
        val headPred = rulesProduceIndividualTokenMem(rs, ts.head)
        val recPred = rulesProduceEachTokenIndividuallyMem(rs, ts.tail)
        headPred && recPred
    }.ensuring(res => res == ts.forall(t => rulesProduceIndividualToken(rs, t)))

    def rulesRegex[C: ClassTag](rules: List[Rule[C]]): Regex[C] = {
      VerifiedRegex.generalisedUnion(rules.map(_.regex))
    }

     def tokensListTwoByTwoPredicate[C: ClassTag](v: Sequence[Token[C]], from: BigInt, rules: List[Rule[C]], pred: (Token[C], Token[C], List[Rule[C]]) => Boolean): Boolean = {
      if from < v.size - 1 then
        pred(v(from), v(from + 1), rules) && tokensListTwoByTwoPredicate(v, from + 1, rules, pred)
      else
        true
    }.ensuring(res => res == tokensListTwoByTwoPredicateList(v.dropList(from), rules, pred))


    override def separableTokens[C: ClassTag](tokens: Sequence[Token[C]], rules: List[Rule[C]]): Boolean = 
      tokensListTwoByTwoPredicateSeparable(tokens, from = 0, rules)

    def separableTokensMem[C: ClassTag](tokens: Sequence[Token[C]], rules: List[Rule[C]])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = { 
      tokensListTwoByTwoPredicateSeparableMem(tokens, from = 0, rules)
    }.ensuring(res => res == separableTokens(tokens, rules))

    

    override def tokensListTwoByTwoPredicateSeparable[C: ClassTag](v: Sequence[Token[C]], from: BigInt, rules: List[Rule[C]]): Boolean = {
      if from < v.size - 1 then
        separableTokensPredicate(v(from), v(from + 1), rules) && tokensListTwoByTwoPredicateSeparable(v, from + 1, rules)
      else
        true
    }

    def tokensListTwoByTwoPredicateSeparableMem[C: ClassTag](v: Sequence[Token[C]], from: BigInt, rules: List[Rule[C]])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = {
      if from < v.size - 1 then
        // the following pattern is needed to avoid antialiasing issues with mutable caches
        val tokensSep = separableTokensPredicateMem(v(from), v(from + 1), rules)
        if tokensSep then
          tokensListTwoByTwoPredicateSeparableMem(v, from + 1, rules)
        else 
          false
      else
        true
    }.ensuring(res => res == tokensListTwoByTwoPredicateSeparable(v, from, rules))

     override def separableTokensPredicate[C: ClassTag](t1: Token[C], t2: Token[C], rules: List[Rule[C]]): Boolean = {
    
      !VerifiedRegexMatcher.prefixMatchZipperSequence(rulesRegex(rules), t1.charsOf ++ singletonSeq(t2.charsOf(0)))
    }

    def separableTokensPredicateMem[C: ClassTag](t1: Token[C], t2: Token[C], rules: List[Rule[C]])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = {
      !VerifiedRegexMatcher.prefixMatchZipperSequenceMem(rulesRegex(rules), t1.charsOf ++ singletonSeq(t2.charsOf(0)))
    }.ensuring(res => res == separableTokensPredicate(t1, t2, rules))

     override def rulesInvariant[C: ClassTag](rules: List[Rule[C]]): Boolean =
      rulesValid(rules) && noDuplicateTag(rules, Nil())

    /** Main function of the lexer
      *
      * Lex the input list of characters using the set of rules
      *
      * Return the produced list of Tokens and the remaining untokenised characters (normally empty)
      *
      * @param rules
      * @param input
      */  
     override def lex[C: ClassTag](
        rules: List[Rule[C]],
        input: Sequence[C]
    ): (Sequence[Token[C]], Sequence[C]) = {
      lexTailRecV2(
        rules,
        input,
        emptySeq[C](),
        input,
        emptySeq[Token[C]]()
      )
    }

    def lexV1[C: ClassTag](
        rules: List[Rule[C]],
        input: Sequence[C]
    ): (Sequence[Token[C]], Sequence[C]) = {
      lexTailRec(
        rules,
        input,
        emptySeq[C](),
        input,
        emptySeq[Token[C]]()
      )
    }

    def lexRec[C: ClassTag](
        rules: List[Rule[C]],
        input: Sequence[C]
    ): (Sequence[Token[C]], Sequence[C]) = {
      maxPrefixZipperSequence(rules, input) match {
        case Some((token, suffix)) => {
          val (followingTokens, nextSuffix) = lexRec(rules, suffix)
          (followingTokens.prepend(token), nextSuffix)
        }
        case None() => (emptySeq[Token[C]](), input)
      }
    }

    // @tailrec
    def lexTailRec[C: ClassTag](
        rules: List[Rule[C]],
        @ghost totalInput: Sequence[C],
        @ghost treated: Sequence[C],
        input: Sequence[C],
        acc: Sequence[Token[C]],
    ): (Sequence[Token[C]], Sequence[C]) = {
      maxPrefixZipperSequence(rules, input) match {
        case Some((token, suffix)) => {
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
    }
    def lexRecV2[C: ClassTag](
        rules: List[Rule[C]],
        input: Sequence[C],
        totalInput: Sequence[C]
    ): (Sequence[Token[C]], Sequence[C]) = {
      maxPrefixZipperSequenceV2(rules, input, totalInput) match {
        case Some((token, suffix)) => {
          val (followingTokens, nextSuffix) = lexRec(rules, suffix)
          (followingTokens.prepend(token), nextSuffix)
        }
        case None() => (emptySeq[Token[C]](), input)
      }
    }

    // @tailrec
    def lexTailRecV2[C: ClassTag](
        rules: List[Rule[C]],
        totalInput: Sequence[C],
        @ghost treated: Sequence[C],
        input: Sequence[C],
        acc: Sequence[Token[C]],
    ): (Sequence[Token[C]], Sequence[C]) = {
      
      maxPrefixZipperSequenceV2(rules, input, totalInput) match {
        case Some((token, suffix)) => {
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
    }

    def lexV1Mem[C: ClassTag](
        rules: List[Rule[C]],
        input: Sequence[C]
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): (Sequence[Token[C]], Sequence[C]) = {
      
      lexTailRecMem(
        rules,
        input,
        emptySeq[C](),
        input,
        emptySeq[Token[C]]()
      )
    }

    def lexMem[C: ClassTag](
        rules: List[Rule[C]],
        input: Sequence[C]
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C], cacheFurthestNullable: CacheFurthestNullable[C]): (Sequence[Token[C]], Sequence[C]) = {
      
      lexTailRecV3Mem(
        rules,
        input,
        emptySeq[C](),
        input,
        emptySeq[Token[C]]()
      )
    }

    def lexV2Mem[C: ClassTag](
        rules: List[Rule[C]],
        input: Sequence[C]
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C], cacheFindLongestMatch: CacheFindLongestMatch[C]): (Sequence[Token[C]], Sequence[C]) = {
      lexTailRecV2Mem(
        rules,
        input,
        emptySeq[C](),
        input,
        emptySeq[Token[C]]()
      )
    }

    def lexV2MemOnlyDeriv[C: ClassTag](
        rules: List[Rule[C]],
        input: Sequence[C]
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): (Sequence[Token[C]], Sequence[C]) = {
    
      lexTailRecV2MemOnlyDeriv(
        rules,
        input,
        emptySeq[C](),
        input,
        emptySeq[Token[C]]()
      )
    }

    // @tailrec
    def lexTailRecMem[C: ClassTag](
        rules: List[Rule[C]],
        @ghost totalInput: Sequence[C],
        @ghost treated: Sequence[C],
        input: Sequence[C],
        acc: Sequence[Token[C]],
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): (Sequence[Token[C]], Sequence[C]) = {
    
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
    }
    // @tailrec
    def lexTailRecV2Mem[C: ClassTag](
        rules: List[Rule[C]],
        totalInput: Sequence[C],
        @ghost treated: Sequence[C],
        input: Sequence[C],
        acc: Sequence[Token[C]],
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C], cacheFindLongestMatch: CacheFindLongestMatch[C]): (Sequence[Token[C]], Sequence[C]) = {
     
      maxPrefixZipperSequenceV2Mem(rules, input, totalInput) match {
        case Some((token, suffix)) => {

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
    }

    // @tailrec
    def lexTailRecV2MemOnlyDeriv[C: ClassTag](
        rules: List[Rule[C]],
        totalInput: Sequence[C],
        @ghost treated: Sequence[C],
        input: Sequence[C],
        acc: Sequence[Token[C]],
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): (Sequence[Token[C]], Sequence[C]) = {
     
      maxPrefixZipperSequenceV2MemOnlyDeriv(rules, input, totalInput) match {
        case Some((token, suffix)) => {
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
    }


    def lexTailRecV3Mem[C: ClassTag](
        rules: List[Rule[C]],
        totalInput: Sequence[C],
        @ghost treated: Sequence[C],
        input: Sequence[C],
        acc: Sequence[Token[C]],
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C], cacheFurthestNullable: CacheFurthestNullable[C]): (Sequence[Token[C]], Sequence[C]) = {
      
      maxPrefixZipperSequenceV3Mem(rules, input, totalInput) match {
        case Some((token, suffix)) => {
          
          lexTailRecV3Mem(
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
    }


    override def print[C: ClassTag](v: Sequence[Token[C]]): Sequence[C] = {
      printTailRec(v, from = 0, acc = emptySeq[C]())
    }.ensuring(res => res.list == printList(v.list))

    def printRec[C: ClassTag](v: Sequence[Token[C]], from: BigInt = 0): Sequence[C] = {
      if from >= v.size then
        emptySeq[C]()
      else
        v(from).charsOf ++ printRec(v, from + 1)
    }.ensuring(res => res.list == printList(v.dropList(from)))

    def printTailRec[C: ClassTag](v: Sequence[Token[C]], from: BigInt, acc: Sequence[C]): Sequence[C] = {
      if from >= v.size then
        acc
      else
        printTailRec(v, from + 1, acc ++ v(from).charsOf)
    }.ensuring(res => res.list == printListTailRec(v.dropList(from), acc.list))

    override def withSeparatorToken[C: ClassTag](v: Sequence[Token[C]], separatorToken: Token[C]): Sequence[Token[C]] = {
      withSeparatorTokenInner(v, separatorToken, 0, emptySeq())
    }.ensuring(res => res.list == withSeparatorTokenList(v.list, separatorToken) && print(res).list == printWithSeparatorToken(v, separatorToken).list)

    def withSeparatorTokenInner[C: ClassTag](v: Sequence[Token[C]], separatorToken: Token[C], from: BigInt , acc: Sequence[Token[C]]): Sequence[Token[C]] = {
      if from >= v.size then
        acc
      else
        withSeparatorTokenInner(v, separatorToken, from + 1, acc ++ (singletonSeq(v(from)) ++ singletonSeq(separatorToken)))
    }.ensuring(res => res.list == acc.list ++ withSeparatorTokenList(v.list.drop(from), separatorToken))

    override def printWithSeparatorToken[C: ClassTag](v: Sequence[Token[C]], separatorToken: Token[C]): Sequence[C] = {
      printWithSeparatorTokenTailRec(v, separatorToken, 0, emptySeq[C]())
    }.ensuring(res => res.list == printWithSeparatorTokenList(v.list, separatorToken))

    def printWithSeparatorTokenRec[C: ClassTag](v: Sequence[Token[C]], separatorToken: Token[C], from: BigInt = 0): Sequence[C] = {
     
      if from >= v.size then
        emptySeq[C]()
      else
        v(from).charsOf ++ separatorToken.charsOf ++ printWithSeparatorTokenRec(v, separatorToken, from + 1)
    }.ensuring(res => res.list == printWithSeparatorTokenList(v.dropList(from), separatorToken))

    def printWithSeparatorTokenTailRec[C: ClassTag](v: Sequence[Token[C]], separatorToken: Token[C], from: BigInt, acc: Sequence[C]): Sequence[C] = {
      if from >= v.size then
        acc
      else
        printWithSeparatorTokenTailRec(v, separatorToken, from + 1, acc ++ v(from).charsOf ++ separatorToken.charsOf)
    }.ensuring(res => res.list == printWithSeparatorTokenListTailRec(v.dropList(from), separatorToken, acc.list))

    override def printWithSeparatorTokenWhenNeeded[C: ClassTag](rules: List[Rule[C]], v: Sequence[Token[C]], separatorToken: Token[C]): Sequence[C] = {
      printWithSeparatorTokenWhenNeededRec(rules, v, separatorToken, from = 0)
    }.ensuring(res => res.list == printWithSeparatorTokenWhenNeededList(rules, v.list, separatorToken))

    def printWithSeparatorTokenWhenNeededRec[C: ClassTag](rules: List[Rule[C]], v: Sequence[Token[C]], separatorToken: Token[C], from: BigInt): Sequence[C] = {
      if from >= v.size then
        emptySeq[C]()
      else {
        val suffix = printWithSeparatorTokenWhenNeededRec(rules, v, separatorToken, from + 1)
        val maxPrefWithoutSep = maxPrefixZipperSequence(rules, v(from).charsOf ++ suffix)
        maxPrefWithoutSep match {
          case Some((t, s)) if t == v(from) => v(from).charsOf ++ suffix
          case Some((t, s)) if t != v(from) => v(from).charsOf ++ separatorToken.charsOf ++ suffix
          case None() => {
            emptySeq[C]()
          }
        }
      }
    }.ensuring(res => res.list == printWithSeparatorTokenWhenNeededList(rules, v.dropList(from), separatorToken))


    def maxPrefixZipperSequence[C: ClassTag](
        rulesArg: List[Rule[C]],
        input: Sequence[C]
    ): Option[(Token[C], Sequence[C])] = {
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
    }

    def maxPrefixZipperSequenceMem[C: ClassTag](
            rulesArg: List[Rule[C]],
            input: Sequence[C]
        )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Option[(Token[C], Sequence[C])] = {
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

    def maxPrefixZipperSequenceV2[C: ClassTag](
        rulesArg: List[Rule[C]],
        input: Sequence[C],
        totalInput: Sequence[C]
    ): Option[(Token[C], Sequence[C])] = {
     
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
    }

    def maxPrefixZipperSequenceV2Mem[C: ClassTag](
            rulesArg: List[Rule[C]],
            input: Sequence[C],
            totalInput: Sequence[C]
        )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C], cacheFindLongestMatch: CacheFindLongestMatch[C]): Option[(Token[C], Sequence[C])] = {
          
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
        }

    def maxPrefixZipperSequenceV2MemOnlyDeriv[C: ClassTag](
            rulesArg: List[Rule[C]],
            input: Sequence[C],
            totalInput: Sequence[C]
        )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Option[(Token[C], Sequence[C])] = {
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
        }

    def maxPrefixZipperSequenceV3Mem[C: ClassTag](
            rulesArg: List[Rule[C]],
            input: Sequence[C],
            totalInput: Sequence[C]
        )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C], cacheFurthestNullable: CacheFurthestNullable[C]): Option[(Token[C], Sequence[C])] = {
          rulesArg match {
            case Cons(hd, Nil()) => maxPrefixOneRuleZipperSequenceV3Mem(hd, input, totalInput)
            case Cons(hd, tl) => {
              val currentRulePref = maxPrefixOneRuleZipperSequenceV3Mem(hd, input, totalInput)
              val othersPrefix = maxPrefixZipperSequenceV3Mem(tl, input, totalInput)
              (currentRulePref, othersPrefix) match {
                case (None(), None())   => None()
                case (c, None())        => c
                case (None(), o)        => o
                case (Some(c), Some(o)) => if c._1.size >= o._1.size then Some(c) else Some(o)
              }
            }
          }
        }

    def maxPrefixOneRuleZipperSequence[C: ClassTag](
        rule: Rule[C],
        input: Sequence[C]
    ): Option[(Token[C], Sequence[C])] = {

      val (longestPrefix, suffix) = findLongestMatchWithZipperSequence(rule.regex, input)
      if (longestPrefix.isEmpty) {
        None[(Token[C], Sequence[C])]()
      } else {
        Some[(Token[C], Sequence[C])]((Token(rule.transformation.apply(longestPrefix), rule, longestPrefix.size, longestPrefix.list), suffix))
      }

    }

    def maxPrefixOneRuleZipperSequenceMem[C: ClassTag](
        rule: Rule[C],
        input: Sequence[C]
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Option[(Token[C], Sequence[C])] = {
      
      val (longestPrefix, suffix) = findLongestMatchWithZipperSequenceMem(rule.regex, input)
      
      if (longestPrefix.isEmpty) {
        None[(Token[C], Sequence[C])]()
      } else {

        Some[(Token[C], Sequence[C])]((Token(rule.transformation.apply(longestPrefix), rule, longestPrefix.size, longestPrefix.list), suffix))
      }

    }.ensuring (res => res == maxPrefixOneRuleZipperSequence(rule, input) && cacheUp.valid && cacheDown.valid)

    def maxPrefixOneRuleZipperSequenceV2[C: ClassTag](
        rule: Rule[C],
        input: Sequence[C],
        totalInput: Sequence[C]
    ): Option[(Token[C], Sequence[C])] = {

      val (longestPrefix, suffix) = findLongestMatchWithZipperSequenceV2(rule.regex, input, totalInput)
      if (longestPrefix.isEmpty) {
        None[(Token[C], Sequence[C])]()
      } else {

        Some[(Token[C], Sequence[C])]((Token(rule.transformation.apply(longestPrefix), rule, longestPrefix.size, longestPrefix.list), suffix))
      }
    }


    def maxPrefixOneRuleZipperSequenceV2Mem[C: ClassTag](
        rule: Rule[C],
        input: Sequence[C],
        totalInput: Sequence[C]
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C], cacheFindLongestMatch: CacheFindLongestMatch[C]): Option[(Token[C], Sequence[C])] = {

      val (longestPrefix, suffix) = findLongestMatchWithZipperSequenceV2Mem(rule.regex, input, totalInput)
      
      if (longestPrefix.isEmpty) {
        None[(Token[C], Sequence[C])]()
      } else {
        Some[(Token[C], Sequence[C])]((Token(rule.transformation.apply(longestPrefix), rule, longestPrefix.size, longestPrefix.list), suffix))
      }

    }

    def maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv[C: ClassTag](
        rule: Rule[C],
        input: Sequence[C],
        totalInput: Sequence[C]
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Option[(Token[C], Sequence[C])] = {
     
      val (longestPrefix, suffix) = findLongestMatchWithZipperSequenceV2MemOnlyDeriv(rule.regex, input, totalInput)
      
      if (longestPrefix.isEmpty) {
        None[(Token[C], Sequence[C])]()
      } else {
        Some[(Token[C], Sequence[C])]((Token(rule.transformation.apply(longestPrefix), rule, longestPrefix.size, longestPrefix.list), suffix))
      }

    }

    def maxPrefixOneRuleZipperSequenceV3Mem[C: ClassTag](
        rule: Rule[C],
        input: Sequence[C],
        totalInput: Sequence[C]
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C], cacheFurthestNullable: CacheFurthestNullable[C]): Option[(Token[C], Sequence[C])] = {

      val (longestPrefix, suffix) = findLongestMatchWithZipperSequenceV3Mem(rule.regex, input, totalInput)
      if (longestPrefix.isEmpty) {
        None[(Token[C], Sequence[C])]()
      } else {
        Some[(Token[C], Sequence[C])]((Token(rule.transformation.apply(longestPrefix), rule, longestPrefix.size, longestPrefix.list), suffix))
      }

    }

    // Proofs --------------------------------------------------------------------------------------------------------------------------------

    // Correctness ---------------------------------------------------------------------------------------------------------------------------
    // Functions -----------------------------------------------------------------------------------------------------------------------------

    def getRuleFromTag[C: ClassTag](rules: List[Rule[C]], tag: String): Option[Rule[C]] = {
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
    
  }
}
