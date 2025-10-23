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

    if (Lexer.separableTokens(tokens, rules)) {
      Some(PrintableTokens(rules, tokens))
    } else {
      None()
    }
  }.ensuring(res => res.isEmpty || (res.get.rules == rules && res.get.tokens == tokens))

  def printableTokensFromTokensMem[C](rules: List[Rule[C]], tokens: Vector[Token[C]])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Option[PrintableTokens[C]] = {

    if (Lexer.separableTokensMem(tokens, rules)) {
      Some(PrintableTokens(rules, tokens))
    } else {
      None()
    }
  }.ensuring(res => res.isEmpty || (res.get.rules == rules && res.get.tokens == tokens))

  def emptyPrintableTokens[C](rules: List[Rule[C]]): PrintableTokens[C] = {
   
    PrintableTokens(rules, Vector.empty[Token[C]])
  }.ensuring(res => res.rules == rules && res.tokens.isEmpty)

  case class PrintableTokens[C](rules: List[Rule[C]], tokens: Vector[Token[C]]) {

     
      def size: BigInt = tokens.size
      def print(): Vector[C] = {
        
        Lexer.print(tokens)
      }.ensuring(res => Lexer.lex(rules, res) == (tokens, Vector.empty[C]))

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
      }.ensuring(res => res.isEmpty || (res.get.rules == rules && res.get.tokens == tokens ++ other.tokens && res.get.print() == this.print() ++ other.print()))

      def slice(from: BigInt, to: BigInt): PrintableTokens[C] = {
        PrintableTokens(rules, tokens.slice(from, to))
      }.ensuring(res => res.rules == rules && res.tokens == tokens.slice(from, to))
    }

  case object Lexer extends LexerInterface {
    def ruleValid[C](r: Rule[C]): Boolean = {
      validRegex(r.regex) && !r.regex.nullable && r.tag != ""
    }
    def noDuplicateTag[C](rules: List[Rule[C]], acc: List[String] = Nil()): Boolean = {
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
    }.ensuring(res => {
      res == (lex(rs, print(Vector.singleton(t))) == (Vector.singleton(t), Vector.empty[C]))
    })

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
        assert(ts.tail.size < ts.size)
        val recPred = rulesProduceEachTokenIndividuallyMem(rs, ts.tail)
        headPred && recPred
    }.ensuring(res => res == ts.forall(t => rulesProduceIndividualToken(rs, t)))

    def rulesRegex[C](rules: List[Rule[C]]): Regex[C] = {
      VerifiedRegex.generalisedUnion(rules.map(_.regex))
    }

     def tokensListTwoByTwoPredicate[C](v: Vector[Token[C]], from: BigInt, rules: List[Rule[C]], pred: (Token[C], Token[C], List[Rule[C]]) => Boolean): Boolean = {
      
      if from < v.size - 1 then
        pred(v(from), v(from + 1), rules) && tokensListTwoByTwoPredicate(v, from + 1, rules, pred)
      else
        true
    }.ensuring(res => res == tokensListTwoByTwoPredicateList(v.dropList(from), rules, pred))


    override def separableTokens[C](tokens: Vector[Token[C]], rules: List[Rule[C]]): Boolean = 
      
      tokensListTwoByTwoPredicateSeparable(tokens, from = 0, rules)

    def separableTokensMem[C](tokens: Vector[Token[C]], rules: List[Rule[C]])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = { 
     
      tokensListTwoByTwoPredicateSeparableMem(tokens, from = 0, rules)
    }.ensuring(res => res == separableTokens(tokens, rules))

    

    override def tokensListTwoByTwoPredicateSeparable[C](v: Vector[Token[C]], from: BigInt, rules: List[Rule[C]]): Boolean = {
   
      if from < v.size - 1 then
       
        separableTokensPredicate(v(from), v(from + 1), rules) && tokensListTwoByTwoPredicateSeparable(v, from + 1, rules)
      else
        true
    }

    def tokensListTwoByTwoPredicateSeparableMem[C](v: Vector[Token[C]], from: BigInt, rules: List[Rule[C]])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = {
     
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

     override def separableTokensPredicate[C](t1: Token[C], t2: Token[C], rules: List[Rule[C]]): Boolean = {
     
      !VerifiedRegexMatcher.prefixMatchZipperVector(rulesRegex(rules), t1.charsOf ++ Vector.singleton(t2.charsOf(0)))
    }

    def separableTokensPredicateMem[C](t1: Token[C], t2: Token[C], rules: List[Rule[C]])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = {
      
      !VerifiedRegexMatcher.prefixMatchZipperVectorMem(rulesRegex(rules), t1.charsOf ++ Vector.singleton(t2.charsOf(0)))
    }.ensuring(res => res == separableTokensPredicate(t1, t2, rules))

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

   


    override def print[C](v: Vector[Token[C]]): Vector[C] = {
      printTailRec(v)
    }.ensuring(res => res.list == printList(v.list))

    def printRec[C](v: Vector[Token[C]], from: BigInt = 0): Vector[C] = {
      if from >= v.size then
        Vector.empty
      else
        v(from).charsOf ++ printRec(v, from + 1)
    }.ensuring(res => res.list == printList(v.dropList(from)))

    def printTailRec[C](v: Vector[Token[C]], from: BigInt = 0, acc: Vector[C] = Vector.empty[C]): Vector[C] = {
      if from >= v.size then
        acc
      else
        printTailRec(v, from + 1, acc ++ v(from).charsOf)
    }.ensuring(res => res.list == printListTailRec(v.dropList(from), acc.list))


   

    override def withSeparatorToken[C](v: Vector[Token[C]], separatorToken: Token[C]): Vector[Token[C]] = {
      withSeparatorTokenInner(v, separatorToken)
    }.ensuring(res => res.list == withSeparatorTokenList(v.list, separatorToken) && print(res) == printWithSeparatorToken(v, separatorToken))

    def withSeparatorTokenInner[C](v: Vector[Token[C]], separatorToken: Token[C], from: BigInt = 0, acc: Vector[Token[C]] = Vector.empty[Token[C]]): Vector[Token[C]] = {
      if from >= v.size then
        acc
      else
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

    override def printWithSeparatorToken[C](v: Vector[Token[C]], separatorToken: Token[C], from: BigInt = 0): Vector[C] = {
      printWithSeparatorTokenTailRec(v, separatorToken, from)
    }.ensuring(res => res.list == printWithSeparatorTokenList(v.dropList(from), separatorToken))

    def printWithSeparatorTokenRec[C](v: Vector[Token[C]], separatorToken: Token[C], from: BigInt = 0): Vector[C] = {
      if from >= v.size then
        Vector.empty
      else
        v(from).charsOf ++ separatorToken.charsOf ++ printWithSeparatorTokenRec(v, separatorToken, from + 1)
    }.ensuring(res => res.list == printWithSeparatorTokenList(v.dropList(from), separatorToken))

    def printWithSeparatorTokenTailRec[C](v: Vector[Token[C]], separatorToken: Token[C], from: BigInt = 0, acc: Vector[C] = Vector.empty[C]): Vector[C] = {
      if from >= v.size then
        acc
      else
        printWithSeparatorTokenTailRec(v, separatorToken, from + 1, acc ++ v(from).charsOf ++ separatorToken.charsOf)
    }.ensuring(res => res.list == printWithSeparatorTokenListTailRec(v.dropList(from), separatorToken, acc.list))

    override def printWithSeparatorTokenWhenNeeded[C](rules: List[Rule[C]], v: Vector[Token[C]], separatorToken: Token[C], from: BigInt = 0): Vector[C] = {
      if from >= v.size then
        Vector.empty
      else {
        val suffix = printWithSeparatorTokenWhenNeeded(rules, v, separatorToken, from + 1)
        val maxPrefWithoutSep = maxPrefixZipperVector(rules, v(from).charsOf ++ suffix)
        maxPrefWithoutSep match {
          case Some((t, s)) if t == v(from) => v(from).charsOf ++ suffix
          case Some((t, s)) if t != v(from) => v(from).charsOf ++ separatorToken.charsOf ++ suffix
          case None() => {
            Vector.empty
          }
        }
      }
    }.ensuring(res => res.list == printWithSeparatorTokenWhenNeededList(rules, v.dropList(from), separatorToken))

  

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
      require(ruleValid(rule))

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

    
  }
}
