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
