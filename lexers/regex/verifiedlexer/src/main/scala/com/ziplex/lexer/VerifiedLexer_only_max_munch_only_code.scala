/** Author: Samuel Chassot
  */

package com.ziplex.lexer

import stainless.annotation._
import stainless.collection._
import stainless.equations._
import scala.annotation.tailrec
import stainless.lang.Quantifiers._

import scala.annotation.tailrec
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


object VerifiedLexerMaxMunchOnly {
  import VerifiedRegex._
  import VerifiedRegexMatcher._
  import com.ziplex.lexer.MemoisationZipper.CacheUp
  import com.ziplex.lexer.MemoisationZipper.CacheDown


  abstract class Lexer2 extends LexerInterface {
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

    def rulesValid[C](rs: List[Rule[C]]): Boolean = {
      rs.forall(ruleValid)
    }.ensuring(res => res == rulesValidInductive(rs))

    @pure
    override def rulesProduceIndividualToken[C](rs: List[Rule[C]], t: Token[C]): Boolean = {
      val (producedTs, suffix) = lex(rs, print(Vector.singleton(t)))
      producedTs.size == 1 && producedTs(0) == t && suffix.isEmpty
    }
    def rulesProduceIndividualTokenMem[C](rs: List[Rule[C]], t: Token[C])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = {
      val (producedTs, suffix) = lexMem(rs, print(Vector.singleton(t)))
      producedTs.size == 1 && producedTs(0) == t && suffix.isEmpty
    }.ensuring(res => res == rulesProduceIndividualToken(rs, t))


     override def rulesProduceEachTokenIndividually[C](rs: List[Rule[C]], ts: Vector[Token[C]]): Boolean = {
      ts.forall(t => rulesProduceIndividualToken(rs, t))
    }

    def rulesProduceEachTokenIndividuallyMem[C](rs: List[Rule[C]], ts: Vector[Token[C]])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = {
      if ts.isEmpty then true 
      else 
        val headPred = rulesProduceIndividualTokenMem(rs, ts.head)
        val recPred = rulesProduceEachTokenIndividuallyMem(rs, ts.tail)
        headPred && recPred
    }.ensuring(res => res == ts.forall(t => rulesProduceIndividualToken(rs, t)))

    def rulesRegex[C](rules: List[Rule[C]]): Regex[C] = {
      VerifiedRegex.generalisedUnion(rules.map(_.regex))
    }

     override def rulesInvariant[C](rules: List[Rule[C]]): Boolean =
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
     override def lex[C](
        rules: List[Rule[C]],
        input: Vector[C]
    ): (Vector[Token[C]], Vector[C]) = {
      lexTailRec(rules,input,Vector.empty,input,Vector.empty)
    }

    def lexRec[C](
        rules: List[Rule[C]],
        input: Vector[C]
    ): (Vector[Token[C]], Vector[C]) = {
      
      maxPrefixZipperVector(rules, input) match {
        case Some((token, suffix)) => {
          val (followingTokens, nextSuffix) = lexRec(rules, suffix)
          (followingTokens.prepend(token), nextSuffix)
        }
        case None() => (Vector.empty, input)
      }
    }
    def lexTailRec[C](
        rules: List[Rule[C]],
        @ghost totalInput: Vector[C],
        @ghost treated: Vector[C],
        input: Vector[C],
        acc: Vector[Token[C]],
    ): (Vector[Token[C]], Vector[C]) = {
      maxPrefixZipperVector(rules, input) match {
        case Some((token, suffix)) => {
          lexTailRec(rules,totalInput,newTreated,suffix,acc.append(token))
        }
        case None() => {
          (acc, input)
        }
      }
    }.ensuring (res => res == lexRec(rules, totalInput) )


    def lexMem[C](
        rules: List[Rule[C]],
        input: Vector[C]
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): (Vector[Token[C]], Vector[C]) = {
      lexTailRecMem(rules,input,Vector.empty,input,Vector.empty)
    }.ensuring (res => res == lex(rules, input))

    def lexTailRecMem[C](
        rules: List[Rule[C]],
        @ghost totalInput: Vector[C],
        @ghost treated: Vector[C],
        input: Vector[C],
        acc: Vector[Token[C]],
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): (Vector[Token[C]], Vector[C]) = {
      maxPrefixZipperVectorMem(rules, input) match {
        case Some((token, suffix)) => {
          lexTailRecMem(rules,totalInput,newTreated,suffix,acc.append(token))
        }
        case None() => {
          (acc, input)
        }
      }
    }.ensuring (res => res == lexTailRec(rules, totalInput, treated, input, acc) )

    def maxPrefixZipperVector[C](
        rulesArg: List[Rule[C]],
        input: Vector[C]
    ): Option[(Token[C], Vector[C])] = {

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
    }

    def maxPrefixZipperVectorMem[C](
            rulesArg: List[Rule[C]],
            input: Vector[C]
        )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Option[(Token[C], Vector[C])] = {

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

    def maxPrefixOneRuleZipperVector[C](
        rule: Rule[C],
        input: Vector[C]
    ): Option[(Token[C], Vector[C])] = {

      val (longestPrefix, suffix) = findLongestMatchWithZipperVector(rule.regex, input)
      if (longestPrefix.isEmpty) {
        None[(Token[C], Vector[C])]()
      } else {
        Some[(Token[C], Vector[C])]((Token(rule.transformation.apply(longestPrefix), rule, longestPrefix.size, longestPrefix), suffix))
      }

    }

     def maxPrefixOneRuleZipperVectorMem[C](
        rule: Rule[C],
        input: Vector[C]
    )(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Option[(Token[C], Vector[C])] = {

      val (longestPrefix, suffix) = findLongestMatchWithZipperVectorMem(rule.regex, input)
      if (longestPrefix.isEmpty) {
        None[(Token[C], Vector[C])]()
      } else {
        Some[(Token[C], Vector[C])]((Token(rule.transformation.apply(longestPrefix), rule, longestPrefix.size, longestPrefix), suffix))
      }

    }.ensuring (res => res == maxPrefixOneRuleZipperVector(rule, input))

    // Proofs --------------------------------------------------------------------------------------------------------------------------------

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

    
  }
}
