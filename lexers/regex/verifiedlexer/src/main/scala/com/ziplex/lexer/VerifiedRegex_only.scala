/** Author: Samuel Chassot
  */

package com.ziplex.lexer


import stainless.equations._
import stainless.collection._
import stainless.annotation._
import com.mutablemaps.map.MutableLongMap._
import com.mutablemaps.map.ListLongMap
import com.mutablemaps.map.ListMap
import com.mutablemaps.map.TupleListOpsGenK
import com.mutablemaps.map.MutableHashMap._
import com.mutablemaps.map.Hashable
import com.mutablemaps.map.TupleListOpsGenK.invariantList
import com.mutablemaps.map.MutableHashMap

import stainless.lang.Quantifiers.Exists
import stainless.lang.Quantifiers.ExistsThe
import stainless.lang.Quantifiers.pickWitness

import com.ziplex.lexer.Vector

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
// def dummyReg(x: BigInt): BigInt = {
//   if (x == BigInt(0)) then x
//   else dummyReg(x - BigInt(1))
// }.ensuring( res => res == BigInt(0))
// END imports for benchmarking ---------------------------------------------


object VerifiedRegex1 {
  sealed trait Regex[C]:
    lazy val nullable: Boolean = this.nullableFct
    lazy val lostCause: Boolean = this.lostCauseFct
    lazy val hash: Long = this.hashFct
  end Regex
  case class ElementMatch[C](c: C) extends Regex[C]
  case class Star[C](reg: Regex[C]) extends Regex[C]
  case class Union[C](regOne: Regex[C], regTwo: Regex[C]) extends Regex[C]
  case class Concat[C](regOne: Regex[C], regTwo: Regex[C]) extends Regex[C]
  /** Regex that accepts only the empty string: represents the language {""}
    */
  case class EmptyExpr[C]() extends Regex[C]

  /** Regex that accepts nothing: represents the empty language
    */
  case class EmptyLang[C]() extends Regex[C]

  def generalisedUnion[C](l: List[Regex[C]]): Regex[C] = {
    require(l.forall(validRegex))
    decreases(l.size)
    l match {
      case Cons(hd, tl) if tl.isEmpty => hd
      case Cons(hd, tl) => Union(hd, generalisedUnion(tl))
      case Nil()        => EmptyLang()
    }
  }.ensuring(res => validRegex(res) && (if(l.isEmpty) isEmptyLang(res) else if(l.tail.isEmpty) res == l.head else isUnion(res)))

  def generalisedConcat[C](l: List[Regex[C]]): Regex[C] = {
    require(l.forall(validRegex))
    decreases(l.size)
    l match {
      case Cons(hd, tl) if tl.isEmpty => hd
      case Cons(hd, tl) => Concat(hd, generalisedConcat(tl))
      case Nil()        => EmptyExpr()
    }
  }.ensuring(res => validRegex(res) && (if(l.isEmpty) isEmptyExpr(res) else if(l.tail.isEmpty) res == l.head else isConcat(res)))

  // @ghost
  def validRegex[C](r: Regex[C]): Boolean = r match {
    case ElementMatch(c)    => true
    case Star(r)            => !r.nullable && validRegex(r) 
    case Union(rOne, rTwo)  => validRegex(rOne) && validRegex(rTwo)
    case Concat(rOne, rTwo) => validRegex(rOne) && validRegex(rTwo)
    case EmptyExpr()        => true
    case EmptyLang()        => true
  }

  @ghost
  def regexDepth[C](r: Regex[C]): BigInt = {
    decreases(r)
    r match {
      case ElementMatch(c)    => BigInt(1)
      case Star(r)            => BigInt(1) + regexDepth(r)
      case Union(rOne, rTwo)  => BigInt(1) + Utils.maxBigInt(regexDepth(rOne), regexDepth(rTwo))
      case Concat(rOne, rTwo) => BigInt(1) + Utils.maxBigInt(regexDepth(rOne), regexDepth(rTwo))
      case EmptyExpr()        => BigInt(1)
      case EmptyLang()        => BigInt(1)
    }
  }.ensuring (res =>
    res > 0 && (r match {
      case Union(rOne, rTwo)  => res > regexDepth(rOne) && res > regexDepth(rTwo)
      case Concat(rOne, rTwo) => res > regexDepth(rOne) && res > regexDepth(rTwo)
      case Star(r)            => res > regexDepth(r)
      case _                  => res == BigInt(1)
    })
  )

  @ghost 
  def regexDepthTotal[C](r: Regex[C]): BigInt = {
    decreases(r)
    r match {
      case ElementMatch(c)    => BigInt(1)
      case Star(r)            => BigInt(1) + regexDepthTotal(r)
      case Union(rOne, rTwo)  => BigInt(1) + regexDepthTotal(rOne) + regexDepthTotal(rTwo)
      case Concat(rOne, rTwo) => BigInt(1) + regexDepthTotal(rOne) + regexDepthTotal(rTwo)
      case EmptyExpr()        => BigInt(1)
      case EmptyLang()        => BigInt(1)
    }
  }.ensuring (res => res > 0)

  extension[C] (r: Regex[C]) def usedCharacters: List[C] = {
    r match {
      case EmptyExpr()        => Nil[C]()
      case EmptyLang()        => Nil[C]()
      case ElementMatch(c)    => List(c)
      case Star(r)            => r.usedCharacters
      case Union(rOne, rTwo)  => rOne.usedCharacters ++ rTwo.usedCharacters
      case Concat(rOne, rTwo) => rOne.usedCharacters ++ rTwo.usedCharacters
    }
  }

  extension[C] (r: Regex[C]) def firstChars: List[C] = {
    r match {
      case EmptyExpr()                           => Nil[C]()
      case EmptyLang()                           => Nil[C]()
      case ElementMatch(c)                       => List(c)
      case Star(r)                               => r.firstChars
      case Union(rOne, rTwo)                     => rOne.firstChars ++ rTwo.firstChars
      case Concat(rOne, rTwo) if rOne.nullable   => rOne.firstChars ++ rTwo.firstChars
      case Concat(rOne, rTwo) if !rOne.nullable  => rOne.firstChars
    }
  }

  extension[C] (r: Regex[C]) def nullableFct: Boolean = {
    r match {
      case EmptyExpr()        => true
      case EmptyLang()        => false
      case ElementMatch(c)    => false
      case Star(r)            => true
      case Union(rOne, rTwo)  => rOne.nullable || rTwo.nullable
      case Concat(rOne, rTwo) => rOne.nullable && rTwo.nullable
    }
  }

  extension[C] (r: Regex[C]) def lostCauseFct: Boolean = {
    r match {
      case EmptyExpr()        => false
      case EmptyLang()        => true
      case ElementMatch(c)    => false
      case Star(r)            => false
      case Union(rOne, rTwo)  => rOne.lostCause && rTwo.lostCause
      case Concat(rOne, rTwo) => rOne.lostCause || rTwo.lostCause
    }
  }.ensuring(res => res == getLanguageWitness(r).isEmpty)

  extension[C] (r: Regex[C]) def hashFct: Long = {
    r match {
      case EmptyExpr()        => 1
      case EmptyLang()        => 2
      case ElementMatch(c)    => 3
      case Star(r)            => 5 * r.hash
      case Union(rOne, rTwo)  => 7 * rOne.hash + 13 * rTwo.hash
      case Concat(rOne, rTwo) => 11 * rOne.hash + 17 * rTwo.hash
    }
  }

  /**
   * Return a witness of the language denoted by the given regex. If it returns None, the regex denotes the empty language.
   * That's used to compute the prefix set of a regex.
   */
  @ghost 
  def getLanguageWitness[C](r: Regex[C]): Option[List[C]] = {
    r match {
      case EmptyExpr()        => Some(List())
      case EmptyLang()        => None()
      case ElementMatch(c)    => Some(List(c))
      case Star(r)            => Some(List())
      case Union(rOne, rTwo)  => 
        getLanguageWitness(rOne) match
          case Some(v) => Some(v)
          case None() => getLanguageWitness(rTwo)
      case Concat(rOne, rTwo) => 
        getLanguageWitness(rOne) match
          case Some(v) => 
            getLanguageWitness(rTwo) match
              case Some(v2) => Some(v ++ v2)
              case None() => None()
          case None() => None()
    }
  }

  // @ghost
  def isEmptyExpr[C](r: Regex[C]): Boolean = {
    r match {
      case EmptyExpr() => true
      case _           => false
    }
  }
  // @ghost
  def isEmptyLang[C](r: Regex[C]): Boolean = {
    r match {
      case EmptyLang() => true
      case _           => false
    }
  }
  // @ghost
  def isElementMatch[C](r: Regex[C]): Boolean = {
    r match {
      case ElementMatch(_) => true
      case _               => false
    }
  }
  @ghost
  def elementMatchIsChar[C](r: Regex[C], c: C): Boolean = {
    require(isElementMatch(r))
    r match {
      case ElementMatch(cc) => c == cc
    }
  }
  // @ghost
  def isStar[C](r: Regex[C]): Boolean = {
    r match {
      case Star(_) => true
      case _       => false
    }
  }
  // @ghost
  def isUnion[C](r: Regex[C]): Boolean = {
    r match {
      case Union(_, _) => true
      case _           => false
    }
  }
  @ghost
  def unionInnersEquals[C](r: Regex[C], r1: Regex[C], r2: Regex[C]): Boolean = {
    require(isUnion(r))
    r match {
      case Union(rOne, rTwo) => r1 == rOne && r2 == rTwo
    }
  }

  // @ghost
  def isConcat[C](r: Regex[C]): Boolean = {
    r match {
      case Concat(_, _) => true
      case _            => false
    }
  }
}

object VerifiedRegexMatcher1 {
  import VerifiedRegex._
  import ListUtils._
  import MemoisationRegex._
  import MemoisationZipper._

  def derivativeStep[C](r: Regex[C], a: C): Regex[C] = {
    require(validRegex(r))
    decreases(r)
    val res: Regex[C] = r match {
      case EmptyExpr()       => EmptyLang()
      case EmptyLang()       => EmptyLang()
      case ElementMatch(c)   => if (a == c) EmptyExpr() else EmptyLang()
      case Union(rOne, rTwo) => Union(derivativeStep(rOne, a), derivativeStep(rTwo, a))
      case Star(rInner)      => Concat(derivativeStep(rInner, a), Star(rInner))
      case Concat(rOne, rTwo) => {
        if (rOne.nullable) Union(Concat(derivativeStep(rOne, a), rTwo), derivativeStep(rTwo, a))
        else Union(Concat(derivativeStep(rOne, a), rTwo), EmptyLang())
      }
    }
    res
  }.ensuring (res => validRegex(res))

  def derivativeStepMem[C](r: Regex[C], a: C)(using cache: Cache[C]): Regex[C] = {
    require(validRegex(r))
    require(cache.valid)
    decreases(r)

    cache.get(r, a) match {
      case Some(res) => res
      case None() => {
        val res: Regex[C] = r match {
          case EmptyExpr()       => EmptyLang()
          case EmptyLang()       => EmptyLang()
          case ElementMatch(c)   => if (a == c) EmptyExpr() else EmptyLang()
          case Union(rOne, rTwo) => Union(derivativeStepMem(rOne, a)(using cache), derivativeStepMem(rTwo, a)(using cache))
          case Star(rInner)      => Concat(derivativeStepMem(rInner, a)(using cache), Star(rInner))
          case Concat(rOne, rTwo) => {
            if (rOne.nullable) Union(Concat(derivativeStepMem(rOne, a)(using cache), rTwo), derivativeStepMem(rTwo, a)(using cache))
            else Union(Concat(derivativeStepMem(rOne, a)(using cache), rTwo), EmptyLang())
          }
        }
        cache.update(r, a, res)
        res
      }
    }

  }.ensuring (res => res == derivativeStep(r, a))


  // COMMENTED OUT BECAUSE NOT VERIFIED THROUGHOUT YET
  // def derivativeStepMemSimp[C](r: Regex[C], a: C)(using cache: Cache[C]): Regex[C] = {
  //   require(validRegex(r))
  //   require(cache.valid)
  //   decreases(r)

  //   val rr = simplify(r)
  //   cache.get(rr, a) match {
  //     case Some(res) => res
  //     case None() => {
  //       val res: Regex[C] = r match {
  //         case EmptyExpr()       => EmptyLang()
  //         case EmptyLang()       => EmptyLang()
  //         case ElementMatch(c)   => if (a == c) EmptyExpr() else EmptyLang()
  //         case Union(rOne, rTwo) => Union(derivativeStepMem(rOne, a)(cache), derivativeStepMem(rTwo, a)(cache))
  //         case Star(rInner)      => Concat(derivativeStepMem(rInner, a)(cache), Star(rInner))
  //         case Concat(rOne, rTwo) => {
  //           if (rOne.nullable) Union(Concat(derivativeStepMem(rOne, a)(cache), rTwo), derivativeStepMem(rTwo, a)(cache))
  //           else Union(Concat(derivativeStepMem(rOne, a)(cache), rTwo), EmptyLang())
  //         }
  //       }
  //       cache.update(rr, a, res)
  //       res
  //     }
  //   }

  // }.ensuring (res => res == derivativeStep(r, a))

  def derivative[C](r: Regex[C], input: List[C]): Regex[C] = {
    require(validRegex(r))
    decreases(input)
    input match {
      case Cons(hd, tl) => derivative(derivativeStep(r, hd), tl)
      case Nil()        => r
    }
  }.ensuring (res => validRegex(res))

  def derivativeMem[C](r: Regex[C], input: List[C])(using cache: Cache[C]): Regex[C] = {
    require(validRegex(r))
    require(cache.valid)
    input match {
      case Cons(hd, tl) => derivative(derivativeStepMem(r, hd)(using cache: Cache[C]), tl)
      case Nil()        => r
    }
  }.ensuring (res => validRegex(res) && res == derivative(r, input))

  def matchR[C](r: Regex[C], input: List[C]): Boolean = {
    require(validRegex(r))
    decreases(input.size)
    if (input.isEmpty) r.nullable else matchR(derivativeStep(r, input.head), input.tail)
  }.ensuring (res =>
    r match {
      case EmptyExpr() => res == input.isEmpty
      case EmptyLang() => !res
      case ElementMatch(c) =>
        (res && !input.isEmpty && input.tail.isEmpty && input.head == c) || (!res && !(!input.isEmpty && input.tail.isEmpty && input.head == c))
      case _ => true
    }
  )

  def prefixMatch[C](r: Regex[C], prefix: List[C]): Boolean = {
    require(validRegex(r))
    decreases(prefix.size)
    if (prefix.isEmpty) !r.lostCause else prefixMatch(derivativeStep(r, prefix.head), prefix.tail)
  }

  def prefixMatchZipperVector[C](r: Regex[C], prefix: Vector[C]): Boolean = {
    require(validRegex(r))
    ghostExpr(ZipperRegex.lemmaprefixMatchZipperVectorEquivalent(ZipperRegex.focus(r), prefix))
    // ghostExpr(ZipperRegex.theoremZipperRegexEquiv(ZipperRegex.focus(r), ZipperRegex.focus(r).toList, r, prefix.list))
    ghostExpr(ZipperRegex.prefixMatchZipperRegexEquiv(ZipperRegex.focus(r), ZipperRegex.focus(r).toList, r, prefix.list))
    ZipperRegex.prefixMatchZipperVector(ZipperRegex.focus(r), prefix)
  }.ensuring (res => res == prefixMatch(r, prefix.list))

  def prefixMatchZipperVectorMem[C](r: Regex[C], prefix: Vector[C])(using cacheUp: MemoisationZipper.CacheUp[C], cacheDown: MemoisationZipper.CacheDown[C]): Boolean = {
    require(validRegex(r))
    ghostExpr(ZipperRegex.lemmaprefixMatchZipperVectorEquivalent(ZipperRegex.focus(r), prefix))
    // ghostExpr(ZipperRegex.theoremZipperRegexEquiv(ZipperRegex.focus(r), ZipperRegex.focus(r).toList, r, prefix.list))
    ghostExpr(ZipperRegex.prefixMatchZipperRegexEquiv(ZipperRegex.focus(r), ZipperRegex.focus(r).toList, r, prefix.list))
    ZipperRegex.prefixMatchZipperVectorMem(ZipperRegex.focus(r), prefix)
  }.ensuring (res => res == prefixMatch(r, prefix.list))
  
  def matchRMem[C](r: Regex[C], input: List[C])(using cache: Cache[C]): Boolean = {
    require(validRegex(r))
    require(cache.valid)
    decreases(input.size)
    if (input.isEmpty) r.nullable else matchRMem(derivativeStepMem(r, input.head)(using cache: Cache[C]), input.tail)
  }.ensuring (res => res == matchR(r, input))

  def matchZipper[C](r: Regex[C], input: List[C]): Boolean = {
    require(validRegex(r))
    decreases(input.size)
    ghostExpr(ZipperRegex.theoremZipperRegexEquiv(ZipperRegex.focus(r), ZipperRegex.focus(r).toList, r, input))
    ZipperRegex.matchZipper(ZipperRegex.focus(r), input)
  }.ensuring (res => res == matchR(r, input))

  def matchZipperVector[C](r: Regex[C], input: Vector[C]): Boolean = {
    require(validRegex(r))
    ghostExpr(ZipperRegex.lemmaMatchZipperVectorEquivalent(ZipperRegex.focus(r), input))
    ghostExpr(ZipperRegex.theoremZipperRegexEquiv(ZipperRegex.focus(r), ZipperRegex.focus(r).toList, r, input.list))
    ZipperRegex.matchZipperVector(ZipperRegex.focus(r), input)
  }.ensuring (res => res == matchR(r, input.list))

  def matchZipperMem[C](r: Regex[C], input: List[C])(using cacheUp: MemoisationZipper.CacheUp[C], cacheDown: MemoisationZipper.CacheDown[C]): Boolean = {
    require(validRegex(r))
    decreases(input.size)
    ghostExpr(ZipperRegex.theoremZipperRegexEquiv(ZipperRegex.focus(r), ZipperRegex.focus(r).toList, r, input))
    ZipperRegex.matchZipperMem(ZipperRegex.focus(r), input)
  }.ensuring (res => res == matchR(r, input))

  def matchZipperVectorMem[C](r: Regex[C], input: Vector[C])(using cacheUp: MemoisationZipper.CacheUp[C], cacheDown: MemoisationZipper.CacheDown[C]): Boolean = {
    require(validRegex(r))
    ghostExpr(ZipperRegex.lemmaMatchZipperVectorEquivalent(ZipperRegex.focus(r), input))
    ghostExpr(ZipperRegex.theoremZipperRegexEquiv(ZipperRegex.focus(r), ZipperRegex.focus(r).toList, r, input.list))
    ZipperRegex.matchZipperVectorMem(ZipperRegex.focus(r), input)
  }.ensuring (res => res == matchR(r, input.list))

  // COMMENTED OUT BECAUSE NOT VERIFIED THROUGHOUT YET
  // def matchRMemSimp[C](r: Regex[C], input: List[C])(using cache: Cache[C]): Boolean = {
  //   require(validRegex(r))
  //   require(cache.valid)
  //   decreases(input.size)
  //   val rr = simplify(r)
  //   if(!input.isEmpty) {
  //     // println(s"derivative wrt ${input.head}")
  //     // println(s"r depth = ${regexDepth(r)}")
  //     // println(s"rr depth = ${regexDepth(rr)}")
  //     if(regexDepth(rr) >= 13) {
  //       // println(s"r = $r")
  //       // println("\n\n\n")
  //       // println(s"rr = $rr")
  //       return false
  //     }
  //   } 
  //   if (input.isEmpty) rr.nullable else matchRMemSimp(derivativeStepMem(rr, input.head)(cache: Cache[C]), input.tail)
  // }.ensuring (res => res == matchR(r, input))

  @ghost
  @opaque
  @inlineOnce
  def nullableGenUnionSpec[C](r: Regex[C], l: List[Regex[C]]): Unit = {
    require(l.forall(validRegex))
    require(r == generalisedUnion(l))
    decreases(l.size)
    l match {
      case Cons(hd, tl) if tl.isEmpty => () 
      case Cons(hd, tl) => {
        r match {
          case Union(rHd, rTl) => 
            nullableGenUnionSpec(rTl, tl)
          case _ => ()
        }
      }
      case Nil() => ()
    }
  }.ensuring(_ => r.nullable == l.exists(rr => rr.nullable))

  @ghost
  @opaque
  @inlineOnce
  def matchRGenUnionSpec[C](r: Regex[C], l: List[Regex[C]], s: List[C]): Unit = {
    require(l.forall(validRegex))
    require(r == generalisedUnion(l))
    decreases(l.size)

    mainMatchTheorem(r, s)
    r match {
      case Union(hd, unionTl) => 
        if(l.isEmpty){
          check(false)
        } else if(l.tail.isEmpty){
          // It means that the head of list (i.e., one of the regex of the generalised union)
          // is a union itself, and so this Union is not one of the chain
          assert(generalisedUnion(l.tail) == EmptyLang[C]())
          check(matchR(r, s) == l.exists(rr => validRegex(rr) && matchR(rr, s)))

        } else {
          // Here the Union we are matching on is a part of the chain built by generalisedUnion
          assert(matchR(r, s) == (matchRSpec(hd, s) || matchRSpec(unionTl, s)))
          mainMatchTheorem(hd, s)
          mainMatchTheorem(unionTl, s)
          matchRGenUnionSpec(unionTl, l.tail, s)
        }
      case _ => ()
    }
  }.ensuring(_ => matchR(r, s) == l.exists(rr => validRegex(rr) && matchR(rr, s)))


  @ghost
  @opaque
  @inlineOnce
  def nullableGenConcatSpec[C](r: Regex[C], l: List[Regex[C]]): Unit = {
    require(l.forall(validRegex))
    require(r == generalisedConcat(l))
    decreases(l.size)
    l match {
      case Cons(hd, tl) if tl.isEmpty => () 
      case Cons(hd, tl) => {
        r match {
          case Concat(rHd, rTl) => 
            nullableGenConcatSpec(rTl, tl)
          case _ => ()
        }
      }
      case Nil() => ()
    }
  }.ensuring(_ => r.nullable == l.forall(rr => rr.nullable))


  @ghost
  @opaque
  @inlineOnce
  def matchRGenConcatSpec[C](r: Regex[C], l: List[Regex[C]], s: List[C]): Unit = {
    require(l.forall(validRegex))
    require(r == generalisedConcat(l))
    mainMatchTheorem(r, s)
    r match { 
      case Concat(hd, concatTl) => 
        lemmaFindConcatSeparationEquivalentToExists(hd, concatTl, s)
        assert(matchRSpec(r,s) == findConcatSeparation(hd, concatTl, Nil(), s, s).isDefined)
        if(l.isEmpty) {
          check(false)
        } else if(l.tail.isEmpty){
          // Here the Concat we are matching on is NOT a part of the chain built by generalisedConcat
          // it means that the head of the list is a Concat itself
          assert(generalisedConcat(l.tail) == EmptyExpr[C]())
          if(matchR(l.head, s)) {
            lemmaTwoRegexMatchThenConcatMatchesConcatString(l.head, EmptyExpr[C](), s, Nil())
            check(matchR(Concat(l.head, EmptyExpr[C]()), s))
            lemmaConcatAcceptsStringThenFindSeparationIsDefined(l.head, EmptyExpr[C](), s)
            check(findConcatSeparation(l.head, generalisedConcat(l.tail), Nil(), s, s).isDefined)
          } else {
            val cut = findConcatSeparation(l.head, EmptyExpr[C](), Nil(), s, s)
            if(cut.isDefined) {
              lemmaFindSeparationIsDefinedThenConcatMatches(l.head, EmptyExpr[C](), cut.get._1, cut.get._2, s)
              check(false)
            }
            check(!cut.isDefined)
            check(!findConcatSeparation(l.head, generalisedConcat(l.tail), Nil(), s, s).isDefined)
          }
          check(matchR(r, s) == findConcatSeparation(l.head, generalisedConcat(l.tail), Nil(), s, s).isDefined )
        } else {
          // Here the Concat we are matching on is a part of the chain built by generalisedConcat
          check(matchR(r, s) == findConcatSeparation(l.head, generalisedConcat(l.tail), Nil(), s, s).isDefined )
        }
        check(l match {
            case Cons(hd, tl) => matchR(r, s) == findConcatSeparation(hd, generalisedConcat(tl), Nil(), s, s).isDefined 
            case Nil() => matchR(r, s) == s.isEmpty
        })
      case EmptyExpr() => 
        check(l match {
            case Cons(hd, tl) => matchR(r, s) == findConcatSeparation(hd, generalisedConcat(tl), Nil(), s, s).isDefined 
            case Nil() => matchR(r, s) == s.isEmpty
        })
      case _ => 
        assert(!l.isEmpty)
        assert(l.tail.isEmpty)
        assert(generalisedConcat(l.tail) == EmptyExpr[C]())
          if(matchR(l.head, s)) {
            lemmaTwoRegexMatchThenConcatMatchesConcatString(l.head, EmptyExpr[C](), s, Nil())
            check(matchR(Concat(l.head, EmptyExpr[C]()), s))
            lemmaConcatAcceptsStringThenFindSeparationIsDefined(l.head, EmptyExpr[C](), s)
            check(findConcatSeparation(l.head, generalisedConcat(l.tail), Nil(), s, s).isDefined)
          } else {
            val cut = findConcatSeparation(l.head, EmptyExpr[C](), Nil(), s, s)
            if(cut.isDefined) {
              lemmaFindSeparationIsDefinedThenConcatMatches(l.head, EmptyExpr[C](), cut.get._1, cut.get._2, s)
              check(false)
            }
            check(!cut.isDefined)
            check(!findConcatSeparation(l.head, generalisedConcat(l.tail), Nil(), s, s).isDefined)
          }
        check(l match {
            case Cons(hd, tl) => matchR(r, s) == findConcatSeparation(hd, generalisedConcat(tl), Nil(), s, s).isDefined 
            case Nil() => matchR(r, s) == s.isEmpty
        })
    }
  }.ensuring(_ => l match {
      case Cons(hd, tl) => matchR(r, s) == findConcatSeparation(hd, generalisedConcat(tl), Nil(), s, s).isDefined 
      case Nil() => matchR(r, s) == s.isEmpty
  })

  @ghost
  def matchRSpec[C](r: Regex[C], s: List[C]): Boolean = {
    require(validRegex(r))
    decreases(s.size + regexDepth(r))
    r match {
      case EmptyExpr()     => s.isEmpty
      case EmptyLang()     => false
      case ElementMatch(c) => s == List(c)
      case Union(r1, r2)   => matchRSpec(r1, s) || matchRSpec(r2, s)
      case Star(rInner)    => s.isEmpty || Exists((cut: (List[C], List[C])) => cut._1 ++ cut._2 == s && matchR(rInner, cut._1) && matchR(Star(rInner), cut._2))
      // case Star(rInner)    => s.isEmpty || findConcatSeparation(rInner, Star(rInner), Nil(), s, s).isDefined
      case Concat(r1, r2)  => Exists((cut: (List[C], List[C])) => cut._1 ++ cut._2 == s && matchR(r1, cut._1) && matchR(r2, cut._2))
      // case Concat(r1, r2)  => findConcatSeparation(r1, r2, Nil(), s, s).isDefined
    }
  }

  @ghost
  @opaque
  @inlineOnce
  def mainMatchTheorem[C](r: Regex[C], s: List[C]): Unit = {
    require(validRegex(r))
    decreases(s.size + regexDepth(r))
    r match {
      case EmptyExpr()     => ()
      case EmptyLang()     => ()
      case ElementMatch(c) => ()
      case Union(r1, r2) => {
        if (matchR(r, s)) {
          lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts(r1, r2, s)
          mainMatchTheorem(r1, s)
          mainMatchTheorem(r2, s)
        } else {
          if (matchR(r1, s)) {
            lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo(r1, r2, s)
            check(false)
          }
          if (matchR(r2, s)) {
            lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo(r2, r1, s)
            lemmaReversedUnionAcceptsSameString(r2, r1, s)
            check(false)
          }
          mainMatchTheorem(r1, s)
          mainMatchTheorem(r2, s)
        }

      }
      case Star(rInner) => {
        if (s.isEmpty) {
          ()
        } else {
          lemmaFindConcatSeparationEquivalentToExists(rInner, Star(rInner), s)
          val cut = findConcatSeparation(rInner, Star(rInner), Nil(), s, s)
          if (cut.isDefined) {
            mainMatchTheorem(rInner, cut.get._1)
            mainMatchTheorem(Star(rInner), cut.get._2)
            if (!matchR(r, s)) {
              lemmaFindSeparationIsDefinedThenConcatMatches(rInner, Star(rInner), cut.get._1, cut.get._2, s)
              check(false)
            }
          } else {
            if (matchR(r, s)) {
              lemmaStarAppConcat(rInner, s)
              lemmaConcatAcceptsStringThenFindSeparationIsDefined(rInner, Star(rInner), s)
              check(false)
            }
          }
        }
      }
      case Concat(r1, r2) => {
        lemmaFindConcatSeparationEquivalentToExists(r1, r2, s)
        if (matchR(r, s)) {
          lemmaConcatAcceptsStringThenFindSeparationIsDefined(r1, r2, s)
        } else {
          val cut = findConcatSeparation(r1, r2, Nil(), s, s)
          if (cut.isDefined) {
            lemmaFindSeparationIsDefinedThenConcatMatches(r1, r2, cut.get._1, cut.get._2, s)
            check(false)
          }
        }

      }
    }
  }.ensuring (_ => matchR(r, s) == matchRSpec(r, s))

  /** Enumerate all cuts in s and returns one that works, i.e., r1 matches s1 and r2 matches s2 Specifically, it is the right most one, i.e., s2 is the largest, if multiple exists Returns None is no valid cut
    * exists
    *
    * @param r1
    * @param r2
    * @param s1
    * @param s2
    * @param s
    */
  @ghost
  def findConcatSeparation[C](r1: Regex[C], r2: Regex[C], s1: List[C], s2: List[C], s: List[C]): Option[(List[C], List[C])] = {
    require(validRegex(r1))
    require(validRegex(r2))
    require(s1 ++ s2 == s)
    decreases(s2.size)

    val res: Option[(List[C], List[C])] = (s1, s2) match {
      case (_, _) if matchR(r1, s1) && matchR(r2, s2) => Some((s1, s2))
      case (_, Nil())                                 => None()
      case (_, Cons(hd2, tl2)) => {
        lemmaMoveElementToOtherListKeepsConcatEq(s1, hd2, tl2, s)
        assert(s1 ++ List(hd2) ++ tl2 == s)
        findConcatSeparation(r1, r2, s1 ++ List(hd2), tl2, s)
      }
    }
    res

  }.ensuring (res => (res.isDefined && matchR(r1, res.get._1) && matchR(r2, res.get._2) && res.get._1 ++ res.get._2 == s) || !res.isDefined)

  @ghost
  @inlineOnce
  @opaque
  def lemmaFindConcatSeparationEquivalentToExists[C](r1: Regex[C], r2: Regex[C], s: List[C]): Unit = {
    require(validRegex(r1))
    require(validRegex(r2))

    if (findConcatSeparation(r1, r2, Nil(), s, s).isDefined) {
      val (s1, s2) = findConcatSeparation(r1, r2, Nil(), s, s).get
      assert(s1 ++ s2 == s)
      assert(matchR(r1, s1))
      assert(matchR(r2, s2))
      ExistsThe((s1, s2))( (cut: (List[C], List[C])) => cut._1 ++ cut._2 == s && matchR(r1, cut._1) && matchR(r2, cut._2))
    } else {
      assert(findConcatSeparation(r1, r2, Nil(), s, s).isEmpty)
      if (Exists((cut: (List[C], List[C])) => cut._1 ++ cut._2 == s && matchR(r1, cut._1) && matchR(r2, cut._2))) {
        val cut: (List[C], List[C]) = pickWitness[(List[C], List[C])]((cut: (List[C], List[C])) => cut._1 ++ cut._2 == s && matchR(r1, cut._1) && matchR(r2, cut._2))
        assert(cut._1 ++ cut._2 == s)
        assert(matchR(r1, cut._1))
        assert(matchR(r2, cut._2))
        lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem(r1, r2, cut._1, cut._2, s, Nil(), s)
        check(false)
      }
    }

  }.ensuring(_ => (findConcatSeparation(r1, r2, Nil(), s, s).isDefined) == Exists((cut: (List[C], List[C])) => cut._1 ++ cut._2 == s && matchR(r1, cut._1) && matchR(r2, cut._2)))


  def findLongestMatchWithZipper[C](r: Regex[C], input: List[C]): (List[C], List[C]) = {
    require(validRegex(r))
    val zipper = ZipperRegex.focus(r)
    ghostExpr(ZipperRegex.longestMatchSameAsRegex(r, zipper, input))
    ghostExpr(ListUtils.lemmaSizeTrEqualsSize(input, 0))
    ZipperRegex.findLongestMatchZipper(zipper, input)
  }.ensuring (res => res == findLongestMatch(r, input))

  def findLongestMatchWithZipperVector[C](r: Regex[C], input: Vector[C]): (Vector[C], Vector[C]) = {
    require(validRegex(r))
    val zipper = ZipperRegex.focus(r)
    ghostExpr(ZipperRegex.longestMatchSameAsRegex(r, zipper, input.list))
    ghostExpr(ListUtils.lemmaSizeTrEqualsSize(input.list, 0))
    ZipperRegex.findLongestMatchZipperFast(zipper, input)
  }.ensuring (res => (res._1.list, res._2.list) == findLongestMatch(r, input.list))

  def findLongestMatchWithZipperVectorMem[C](r: Regex[C], input: Vector[C])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): (Vector[C], Vector[C]) = {
    require(validRegex(r))
    require(cacheUp.valid)
    require(cacheDown.valid)
    val zipper = ZipperRegex.focus(r)
    ghostExpr(ZipperRegex.longestMatchSameAsRegex(r, zipper, input.list))
    ghostExpr(ListUtils.lemmaSizeTrEqualsSize(input.list, 0))
    ZipperRegex.findLongestMatchZipperFastMem(zipper, input)
  }.ensuring (res => (res._1.list, res._2.list) == findLongestMatch(r, input.list))


  def findLongestMatch[C](r: Regex[C], input: List[C]): (List[C], List[C]) = {
    require(validRegex(r))
    ghostExpr(ListUtils.lemmaSizeTrEqualsSize(input, 0))
    ghostExpr(ListUtils.lemmaSizeTrEqualsSize(Nil[C](), 0))
    findLongestMatchInner(r, Nil(), 0, input, input, ListUtils.sizeTr(input))
  }.ensuring (res => res._1 ++ res._2 == input)

  def findLongestMatchInner[C](r: Regex[C], testedP: List[C], testedPSize: BigInt, testedSuffix: List[C], totalInput: List[C], totalInputSize: BigInt): (List[C], List[C]) = {
    require(validRegex(r))
    require(testedP ++ testedSuffix == totalInput)
    require(testedPSize == testedP.size)
    require(totalInputSize == totalInput.size)
    decreases(totalInput.size - testedP.size)

    ghostExpr(ListUtils.lemmaConcatTwoListThenFirstIsPrefix(testedP, testedSuffix))
    assert(ListUtils.isPrefix(testedP, totalInput))
    ghostExpr(ListUtils.lemmaSamePrefixThenSameSuffix(testedP, testedSuffix, testedP, ListUtils.getSuffix(totalInput, testedP), totalInput))
    ghostExpr(check(ListUtils.getSuffix(totalInput, testedP) == testedSuffix))

    if (r.lostCause) {
      (Nil[C](), totalInput)
    } else if (testedPSize == totalInputSize) {
      ghostExpr(ListUtils.lemmaIsPrefixRefl(totalInput, totalInput))
      ghostExpr(ListUtils.lemmaIsPrefixSameLengthThenSameList(totalInput, testedP, totalInput))
      assert(testedP == totalInput)
      if (r.nullable) {
        (testedP, Nil[C]())
      } else {
        (Nil[C](), totalInput)
      }
    } else {
      ghostExpr(ListUtils.lemmaIsPrefixThenSmallerEqSize(testedP, totalInput))
      ghostExpr({
        if (testedP.size == totalInput.size) {
          ListUtils.lemmaIsPrefixRefl(totalInput, totalInput)
          ListUtils.lemmaIsPrefixSameLengthThenSameList(totalInput, testedP, totalInput)
          check(false)
        }
      })
      assert(testedP.size < totalInput.size)
      // val suffix = ListUtils.getSuffix(totalInput, testedP)
      val newP = testedP ++ List(testedSuffix.head) // This is super slow, so testedP should be ghost, and the list computed once. But it requires changing the signature, so this optimisation is done only for the zipper version
      ghostExpr(lemmaAddHeadSuffixToPrefixStillPrefix(testedP, totalInput))
      ghostExpr(ListUtils.lemmaAddHeadSuffixToPrefixStillPrefix(testedP, totalInput))
      ghostExpr(ListUtils.lemmaMoveElementToOtherListKeepsConcatEq(testedP, testedSuffix.head, testedSuffix.tail, totalInput))
      if (r.nullable) {
        val recursive = findLongestMatchInner(derivativeStep(r, testedSuffix.head), newP, testedPSize + 1, testedSuffix.tail, totalInput, totalInputSize)
        if (recursive._1.isEmpty) {
          (testedP, testedSuffix)
        } else {
          recursive
        }
      } else {
        findLongestMatchInner(derivativeStep(r, testedSuffix.head), newP, testedPSize + 1, testedSuffix.tail, totalInput, totalInputSize)
      }
    }
  }.ensuring (res => res._1 ++ res._2 == totalInput && (res._1.isEmpty || res._1.size >= testedP.size))

  def findLongestMatchMem[C](r: Regex[C], input: List[C])(using cache: Cache[C]): (List[C], List[C]) = {
    require(validRegex(r))
    require(cache.valid)
    ghostExpr(ListUtils.lemmaSizeTrEqualsSize(input, 0))
    ghostExpr(ListUtils.lemmaSizeTrEqualsSize(Nil[C](), 0))
    findLongestMatchInnerMem(r, Nil(), 0, input, input, ListUtils.sizeTr(input))(using cache)
  }.ensuring (res => res == findLongestMatch(r, input) && cache.valid)

  def findLongestMatchInnerMem[C](r: Regex[C], testedP: List[C], testedPSize: BigInt, testedSuffix: List[C], totalInput: List[C], totalInputSize: BigInt)(using cache: Cache[C]): (List[C], List[C]) = {
    require(validRegex(r))
    require(cache.valid)
    require(testedP ++ testedSuffix == totalInput)
    require(testedPSize == testedP.size)
    require(totalInputSize == totalInput.size)
    decreases(totalInput.size - testedP.size)

    ghostExpr(ListUtils.lemmaConcatTwoListThenFirstIsPrefix(testedP, testedSuffix))
    assert(ListUtils.isPrefix(testedP, totalInput))
    ghostExpr(ListUtils.lemmaSamePrefixThenSameSuffix(testedP, testedSuffix, testedP, ListUtils.getSuffix(totalInput, testedP), totalInput))
    ghostExpr(check(ListUtils.getSuffix(totalInput, testedP) == testedSuffix))

     ghostExpr(ListUtils.lemmaConcatTwoListThenFirstIsPrefix(testedP, testedSuffix))
    assert(ListUtils.isPrefix(testedP, totalInput))
    ghostExpr(ListUtils.lemmaSamePrefixThenSameSuffix(testedP, testedSuffix, testedP, ListUtils.getSuffix(totalInput, testedP), totalInput))
    ghostExpr(check(ListUtils.getSuffix(totalInput, testedP) == testedSuffix))

    if (r.lostCause) {
      (Nil[C](), totalInput)
    } else if (testedPSize == totalInputSize) {
      ghostExpr(ListUtils.lemmaIsPrefixRefl(totalInput, totalInput))
      ghostExpr(ListUtils.lemmaIsPrefixSameLengthThenSameList(totalInput, testedP, totalInput))
      assert(testedP == totalInput)
      if (r.nullable) {
        (testedP, Nil[C]())
      } else {
        (Nil[C](), totalInput)
      }
    } else {
      ghostExpr(ListUtils.lemmaIsPrefixThenSmallerEqSize(testedP, totalInput))
      ghostExpr({
        if (testedP.size == totalInput.size) {
          ListUtils.lemmaIsPrefixRefl(totalInput, totalInput)
          ListUtils.lemmaIsPrefixSameLengthThenSameList(totalInput, testedP, totalInput)
          check(false)
        }
      })
      assert(testedP.size < totalInput.size)
      // val suffix = ListUtils.getSuffix(totalInput, testedP)
      val newP = testedP ++ List(testedSuffix.head)
      ghostExpr(lemmaAddHeadSuffixToPrefixStillPrefix(testedP, totalInput))
      ghostExpr(ListUtils.lemmaAddHeadSuffixToPrefixStillPrefix(testedP, totalInput))
      ghostExpr(ListUtils.lemmaMoveElementToOtherListKeepsConcatEq(testedP, testedSuffix.head, testedSuffix.tail, totalInput))
      if (r.nullable) {
        val recursive = findLongestMatchInnerMem(derivativeStep(r, testedSuffix.head), newP, testedPSize + 1, testedSuffix.tail, totalInput, totalInputSize)
        if (recursive._1.isEmpty) {
          (testedP, testedSuffix)
        } else {
          recursive
        }
      } else {
        findLongestMatchInnerMem(derivativeStep(r, testedSuffix.head), newP, testedPSize + 1, testedSuffix.tail, totalInput, totalInputSize)
      }
    }
  }.ensuring (res => res == findLongestMatchInner(r, testedP, testedPSize, testedSuffix, totalInput, totalInputSize) && cache.valid)

  // Longest match theorems
  @ghost
  def longestMatchIsAcceptedByMatchOrIsEmpty[C](r: Regex[C], input: List[C]): Unit = {
    require(validRegex(r))
    longestMatchIsAcceptedByMatchOrIsEmptyRec(r, r, Nil(), input)

  }.ensuring (_ => findLongestMatchInner(r, Nil(), Nil[C]().size, input, input, input.size)._1.isEmpty || matchR(r, findLongestMatchInner(r, Nil(), Nil[C]().size, input, input, input.size)._1))

  @ghost
  def longestMatchNoBiggerStringMatch[C](baseR: Regex[C], input: List[C], returnP: List[C], bigger: List[C]): Unit = {
    require(validRegex(baseR))
    require(ListUtils.isPrefix(returnP, input))
    require(ListUtils.isPrefix(bigger, input))
    require(bigger.size >= returnP.size)
    require(findLongestMatchInner(baseR, Nil(), Nil[C]().size, input, input, input.size)._1 == returnP)

    if (bigger.size == returnP.size) {
      ListUtils.lemmaIsPrefixSameLengthThenSameList(bigger, returnP, input)
    } else {
      if (matchR(baseR, bigger)) {
        lemmaKnownAcceptedStringThenFromSmallPAtLeastThat(baseR, baseR, input, Nil(), bigger)
        check(false)
      }
    }

  }.ensuring (_ => bigger == returnP || !matchR(baseR, bigger))

  // ---------------------------------------------------- Regex normalisation and simplification ----------------------------------------------------
  
  /** Removes useless Concatenation, i.e., Concat(EmptyExpr(), r) = r and Concat(r, EmptyExpr()) = r
    *
    * @param r
    * @return
    */
  def removeUselessConcat[C](r: Regex[C]): Regex[C] = {
    require(validRegex(r))
    decreases(regexDepth(r))
    r match {
      case Concat(EmptyExpr(), r2)  => removeUselessConcat(r2)
      case Concat(r1, EmptyExpr())  => removeUselessConcat(r1)
      case Concat(r1, r2) => Concat(removeUselessConcat(r1), removeUselessConcat(r2))
      case Union(r1, r2) => Union(removeUselessConcat(r1), removeUselessConcat(r2))
      case Star(rInner) => Star(removeUselessConcat(rInner))
      case _ => r
    }
  }.ensuring (res => validRegex(res) && res.nullable == r.nullable)

  @ghost
  def lemmaRemoveUselessConcatSound[C](r: Regex[C], s: List[C]) : Unit = {
    require(validRegex(r))
    decreases(regexDepth(r) + s.size)
    
    mainMatchTheorem(r, s)

    if(matchR(r, s)){
      r match {
        case Concat(EmptyExpr(), rr) => 
        lemmaFindConcatSeparationEquivalentToExists(EmptyExpr(), rr, s)
        if(s.isEmpty) {
          ()
        } else {
          val (s1, s2) = findConcatSeparation(EmptyExpr(), rr, Nil(), s, s).get
          assert(s1.isEmpty)
          assert(matchR(rr, s2))
          mainMatchTheorem(rr, s2)
          lemmaRemoveUselessConcatSound(rr, s2)
        }
      case Concat(rr, EmptyExpr()) => 
        if(s.isEmpty) {
          ()
        } else {
          lemmaFindConcatSeparationEquivalentToExists(rr, EmptyExpr(), s)
          val (s1, s2) = findConcatSeparation(rr, EmptyExpr(), Nil(), s, s).get
          assert(s2.isEmpty)
          assert(matchR(rr, s1))
          mainMatchTheorem(rr, s1)
          lemmaRemoveUselessConcatSound(rr, s1)
        }
        
      case Concat(r1, r2) => 
        lemmaFindConcatSeparationEquivalentToExists(r1, r2, s)
        if(s.isEmpty) {
          ()
        } else {
          val (s1, s2) = findConcatSeparation(r1, r2, Nil(), s, s).get
          assert(matchR(r1, s1))
          assert(matchR(r2, s2))
          lemmaRemoveUselessConcatSound(r1, s1)
          lemmaRemoveUselessConcatSound(r2, s2)
          assert(matchR(removeUselessConcat(r1), s1))
          assert(matchR(removeUselessConcat(r2), s2))
          lemmaTwoRegexMatchThenConcatMatchesConcatString(removeUselessConcat(r1), removeUselessConcat(r2), s1, s2)
        }
      case Union(r1, r2) => 
        lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts(r1, r2, s)
        if(matchR(r1, s)) {
          lemmaRemoveUselessConcatSound(r1, s)
          assert(matchR(removeUselessConcat(r1), s))
          lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo(removeUselessConcat(r1), removeUselessConcat(r2), s)
        } else {
          lemmaRemoveUselessConcatSound(r2, s)
          assert(matchR(removeUselessConcat(r2), s))
          lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo(removeUselessConcat(r2), removeUselessConcat(r1), s)
          lemmaReversedUnionAcceptsSameString(removeUselessConcat(r2), removeUselessConcat(r1), s)
        }
      case Star(rInner) => 
        lemmaFindConcatSeparationEquivalentToExists(rInner, Star(rInner), s)
        if(s.isEmpty) {
          ()
        } else {
          assert(findConcatSeparation(rInner, Star(rInner), Nil(), s, s).isDefined)
          val r1 = rInner
          val r2 = Star(rInner)
          val (s1, s2) = findConcatSeparation(rInner, Star(rInner), Nil(), s, s).get
          assert(matchR(rInner, s1))
          assert(matchR(Star(rInner), s2))
          lemmaRemoveUselessConcatSound(rInner, s1)
          if(s2.size == s.size){
            assert(s1 ++ s2 == s)
            assert(s1.size + s2.size == s.size)
            assert(s1.size == 0)
            assert(s1.isEmpty)
            assert(matchR(rInner, s1))
            mainMatchTheorem(rInner, s1)
            assert(rInner.nullable)
            check(false)
          }
          lemmaRemoveUselessConcatSound(Star(rInner), s2)
          assert(matchR(removeUselessConcat(rInner), s1)) 
          assert(removeUselessConcat(Star(rInner)) == Star(removeUselessConcat(rInner)))
          assert(matchR(Star(removeUselessConcat(rInner)), s2))
          lemmaStarApp(removeUselessConcat(rInner), s1, s2)
        }
        case _ => ()
      }
    } else {
      r match {
        case Concat(EmptyExpr(), rr) => 
        lemmaFindConcatSeparationEquivalentToExists(EmptyExpr(), rr, s)
        if(s.isEmpty) {
          ()
        } else {
          assert(findConcatSeparation(EmptyExpr(), rr, Nil(), s, s).isEmpty)
          lemmaRemoveUselessConcatSound(rr, s)
          if(matchR(removeUselessConcat(rr), s)){
            assert(matchR(rr, s))
            lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem(EmptyExpr(), rr, Nil(), s, s, Nil(), s)
            check(false)
          }
        }
      case Concat(rr, EmptyExpr()) => 
        lemmaFindConcatSeparationEquivalentToExists(rr, EmptyExpr(), s)
        if(s.isEmpty) {
          ()
        } else {
          assert(findConcatSeparation(rr, EmptyExpr(), Nil(), s, s).isEmpty)
          lemmaRemoveUselessConcatSound(rr, s)
          if(matchR(removeUselessConcat(rr), s)){
            assert(matchR(rr, s))
            lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem(rr, EmptyExpr(), s, Nil(), s, Nil(), s)
            check(false)
          }
        }
        
      case Concat(r1, r2) => 
        lemmaFindConcatSeparationEquivalentToExists(r1, r2, s)
        if(s.isEmpty) {
          ()
        } else {
          if(matchR(Concat(removeUselessConcat(r1), removeUselessConcat(r2)), s)){
            mainMatchTheorem(Concat(removeUselessConcat(r1), removeUselessConcat(r2)), s)
            lemmaFindConcatSeparationEquivalentToExists(removeUselessConcat(r1), removeUselessConcat(r2), s)
            assert(findConcatSeparation(removeUselessConcat(r1), removeUselessConcat(r2), Nil(), s, s).isDefined)
            val (s1, s2) = findConcatSeparation(removeUselessConcat(r1), removeUselessConcat(r2), Nil(), s, s).get
            lemmaRemoveUselessConcatSound(r1, s1)
            lemmaRemoveUselessConcatSound(r2, s2)
            lemmaTwoRegexMatchThenConcatMatchesConcatString(r1, r2, s1, s2)
            check(false)
          }
        }
      case Union(r1, r2) => 
        if(matchR(Union(removeUselessConcat(r1), removeUselessConcat(r2)), s)) {
          mainMatchTheorem(Union(removeUselessConcat(r1), removeUselessConcat(r2)), s)
          lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts(removeUselessConcat(r1), removeUselessConcat(r2), s)
          if(matchR(removeUselessConcat(r1), s)) {
            lemmaRemoveUselessConcatSound(r1, s)
            assert(matchR(r1, s))
            lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo(r1, r2, s)
          } else {
            lemmaRemoveUselessConcatSound(r2, s)
            assert(matchR(r2, s))
            lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo(r2, r1, s)
            lemmaReversedUnionAcceptsSameString(r2, r1, s)
          }
          check(false)
        } 
      case Star(rInner) => 
        lemmaFindConcatSeparationEquivalentToExists(rInner, Star(rInner), s)
        if(matchR(Star(removeUselessConcat(rInner)), s)) {
          mainMatchTheorem(Star(removeUselessConcat(rInner)), s)
          lemmaFindConcatSeparationEquivalentToExists(removeUselessConcat(rInner), Star(removeUselessConcat(rInner)), s)
          if(s.isEmpty) {
            ()
          } else {
            assert(findConcatSeparation(removeUselessConcat(rInner), Star(removeUselessConcat(rInner)), Nil(), s, s).isDefined)
            val (s1, s2) = findConcatSeparation(removeUselessConcat(rInner), Star(removeUselessConcat(rInner)), Nil(), s, s).get
            assert(matchR(removeUselessConcat(rInner), s1))
            assert(matchR(Star(removeUselessConcat(rInner)), s2))
            lemmaRemoveUselessConcatSound(rInner, s1)
            assert(matchR(rInner, s1))
            if(s2.size == s.size){
              assert(s1 ++ s2 == s)
              assert(s1.size + s2.size == s.size)
              assert(s1.size == 0)
              assert(s1.isEmpty)
              assert(matchR(rInner, s1))
              mainMatchTheorem(rInner, s1)
              assert(rInner.nullable)
              check(false)
            }
            lemmaRemoveUselessConcatSound(Star(rInner), s2)
            assert(matchR(rInner, s1))
            assert(matchR(Star(rInner), s2))
            lemmaStarApp(rInner, s1, s2)
            }
        }
        case _ => ()
      }
    }

  }.ensuring(_ => matchR(r, s) == matchR(removeUselessConcat(r), s))
    

  /** Simplifies the regex by 
   * - removing EmptyLang() recursively
   * - removing EmptyExpr() in Concat
    *
    * @param r
    * @return
    */
  def simplify[C](r: Regex[C]): Regex[C] = {
    require(validRegex(r))
    decreases(regexDepth(r))
    r match {
      case EmptyLang() => EmptyLang()
      case ElementMatch(c) => ElementMatch(c)
      case EmptyExpr() => EmptyExpr()
      case Star(rInner) => 
        val simpInner = simplify(rInner)
        if(isEmptyLang(simpInner) || isEmptyExpr(simpInner)) then EmptyExpr() else Star(simpInner)
      case Union(r1, r2) => 
        val simpR1 = simplify(r1)
        val simpR2 = simplify(r2)
        if(isEmptyLang(simpR1)) then simpR2 else if(isEmptyLang(simpR2)) then simpR1 else Union(simpR1, simpR2)
      case Concat(r1, r2) => 
        val simpR1 = simplify(r1)
        val simpR2 = simplify(r2)
        if(isEmptyLang(simpR1) || isEmptyLang(simpR2)) then 
          EmptyLang[C]() 
        else if(isEmptyExpr(simpR1)) then 
          simpR2 
        else if(isEmptyExpr(simpR2)) then 
          simpR1 
        else Concat(simpR1, simpR2)
    }
  }.ensuring (res => validRegex(res) && res.nullable == r.nullable)

  @ghost
  def lemmaSimplifySound[C](r: Regex[C], s: List[C]) : Unit = {
    require(validRegex(r))
    decreases(regexDepth(r) + s.size)
    
    mainMatchTheorem(r, s)

    if(matchR(r, s)){
      r match {
      case Concat(r1, r2) => 
        if(s.isEmpty) {
          ()
        } else {
          lemmaFindConcatSeparationEquivalentToExists(r1, r2, s)
          val (s1, s2) = findConcatSeparation(r1, r2, Nil(), s, s).get
          assert(matchR(r1, s1))
          assert(matchR(r2, s2))
          lemmaSimplifySound(r1, s1)
          lemmaSimplifySound(r2, s2)
          assert(matchR(simplify(r1), s1))
          assert(matchR(simplify(r2), s2))
          lemmaTwoRegexMatchThenConcatMatchesConcatString(simplify(r1), simplify(r2), s1, s2)
        }
      case Union(r1, r2) => 
        lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts(r1, r2, s)
        if(matchR(r1, s)) {
          lemmaSimplifySound(r1, s)
          assert(matchR(simplify(r1), s))
          lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo(simplify(r1), simplify(r2), s)
        } else {
          lemmaSimplifySound(r2, s)
          assert(matchR(simplify(r2), s))
          lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo(simplify(r2), simplify(r1), s)
          lemmaReversedUnionAcceptsSameString(simplify(r2), simplify(r1), s)
        }
      case Star(rInner) => 
          if(s.isEmpty) {
            ()
          } else {
            lemmaFindConcatSeparationEquivalentToExists(rInner, Star(rInner), s)
            assert(findConcatSeparation(rInner, Star(rInner), Nil(), s, s).isDefined)
            val r1 = rInner
            val r2 = Star(rInner)
            val (s1, s2) = findConcatSeparation(rInner, Star(rInner), Nil(), s, s).get
            assert(matchR(rInner, s1))
            assert(matchR(Star(rInner), s2))
            lemmaSimplifySound(rInner, s1)
            if(s2.size == s.size){
              assert(s1 ++ s2 == s)
              assert(s1.size + s2.size == s.size)
              assert(s1.size == 0)
              assert(s1.isEmpty)
              assert(matchR(rInner, s1))
              mainMatchTheorem(rInner, s1)
              assert(rInner.nullable)
              check(false)
            }
            lemmaSimplifySound(Star(rInner), s2)
            assert(matchR(simplify(rInner), s1)) 
            assert(simplify(Star(rInner)) == Star(simplify(rInner)))
            assert(matchR(Star(simplify(rInner)), s2))
            lemmaStarApp(simplify(rInner), s1, s2)
            
          }
        case _ => ()
      }
    } else {
      r match {
        case Concat(r1, r2) => 
          if(s.isEmpty) {
            ()
          } else {
            val simpR1 = simplify(r1)
            val simpR2 = simplify(r2)
            if(isEmptyLang(simpR1)) {
              lemmaSimplifySound(r1, s)
              assert(!matchR(r1, s))
            }
            else if(isEmptyLang(simpR2)) {
              lemmaSimplifySound(r2, s)
              assert(!matchR(r2, s))
            }
            else if(isEmptyExpr(simpR1)) {
              lemmaSimplifySound(r2, s)
              if(matchR(r2, s)) {
                lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem(r1, r2, Nil(), s, s, Nil(), s)
                lemmaFindConcatSeparationEquivalentToExists(r1, r2, s)
                check(false)
              }
            }
            else if(isEmptyExpr(simpR2)) {
              lemmaSimplifySound(r1, s)
              lemmaSimplifySound(r2, Nil())
              if(matchR(r1, s)) {
                lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem(r1, r2, s, Nil(), s, Nil(), s)
                lemmaFindConcatSeparationEquivalentToExists(r1, r2, s)
                check(false)
              }
            }
            else if(matchR(Concat(simplify(r1), simplify(r2)), s)){
              mainMatchTheorem(Concat(simplify(r1), simplify(r2)), s)
              lemmaFindConcatSeparationEquivalentToExists(simplify(r1), simplify(r2), s)
              assert(findConcatSeparation(simplify(r1), simplify(r2), Nil(), s, s).isDefined)
              val (s1, s2) = findConcatSeparation(simplify(r1), simplify(r2), Nil(), s, s).get
              lemmaSimplifySound(r1, s1)
              lemmaSimplifySound(r2, s2)
              lemmaTwoRegexMatchThenConcatMatchesConcatString(r1, r2, s1, s2)
              check(false)
            }
          }
        case Union(r1, r2) => 
          val simpR1 = simplify(r1)
          val simpR2 = simplify(r2)
          if(isEmptyLang(simpR1)) {
              lemmaSimplifySound(r2, s)
              if(matchR(r2, s)) {
                lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo(r2, r1, s)
                lemmaReversedUnionAcceptsSameString(r2, r1, s)
                check(false)
              }
            }
            else if(isEmptyLang(simpR2)) {
              lemmaSimplifySound(r1, s)
              if(matchR(r1, s)) {
                lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo(r1, r2, s)
                check(false)
              }
            } else {
              if(matchR(Union(simpR1, simpR2), s)){
                lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts(simpR1, simpR2, s)
                if(matchR(simpR1, s)){
                  lemmaSimplifySound(r1, s)
                  assert(matchR(r1, s))
                  lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo(r1, r2, s)
                } else {
                  lemmaSimplifySound(r2, s)
                  assert(matchR(r2, s))
                  lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo(r2, r1, s)
                  lemmaReversedUnionAcceptsSameString(r2, r1, s)
                }
                check(false)
              }
            }
        case Star(rInner) => 
          val simpRInner = simplify(rInner)
          if(isEmptyLang(simpRInner)) {
            lemmaSimplifySound(rInner, s)
            if(matchR(rInner, s)) {
              lemmaStarApp(rInner, Nil(), s)
              check(false)
            }
          } else {
            if(matchR(Star(simplify(rInner)), s)) {
              mainMatchTheorem(Star(simplify(rInner)), s)
              if(s.isEmpty) {
                ()
              } else {
                lemmaFindConcatSeparationEquivalentToExists(simplify(rInner), Star(simplify(rInner)), s)
                assert(findConcatSeparation(simplify(rInner), Star(simplify(rInner)), Nil(), s, s).isDefined)
                val (s1, s2) = findConcatSeparation(simplify(rInner), Star(simplify(rInner)), Nil(), s, s).get
                assert(matchR(simplify(rInner), s1))
                assert(matchR(Star(simplify(rInner)), s2))
                lemmaSimplifySound(rInner, s1)
                if(s2.size == s.size){
                  assert(s1 ++ s2 == s)
                  assert(s1.size + s2.size == s.size)
                  assert(s1.size == 0)
                  assert(s1.isEmpty)
                  assert(matchR(rInner, s1))
                  mainMatchTheorem(rInner, s1)
                  assert(rInner.nullable)
                  check(false)
                }
                lemmaSimplifySound(Star(rInner), s2)
                assert(matchR(rInner, s1))
                assert(matchR(Star(rInner), s2))
                lemmaStarApp(rInner, s1, s2)
              }
            }
          }
        case _ => ()
      }
    } 

  }.ensuring(_ => matchR(r, s) == matchR(simplify(r), s))



// ---------------------------------------------------- Lemmas ----------------------------------------------------

  @ghost
  @inlineOnce
  @opaque
  def lemmaMatchThenPrefixMatch[C](r: Regex[C], prefix: List[C], s: List[C]): Unit = {
    require(validRegex(r))
    require(ListUtils.isPrefix(prefix, s))
    require(matchR(r, s))
    decreases(prefix.size)
    if(!prefixMatch(r, prefix)) {
      lemmaNotPrefixMatchThenCannotMatchLonger(r, prefix, s)
      check(false)
    }
    
  }.ensuring(_ => prefixMatch(r, prefix))

  /**
   * Prove that if a string is not in the prefix set of a regex, then the regex will never match a string starting 
   * with that prefix
   */
  @ghost
  @inlineOnce
  @opaque
  def lemmaNotPrefixMatchThenCannotMatchLonger[C](r: Regex[C], prefix: List[C], s: List[C]): Unit = {
    require(validRegex(r))
    require(ListUtils.isPrefix(prefix, s))
    require(!prefixMatch(r, prefix))
    decreases(prefix.size)
    prefix match
      case Nil() => lemmaLostCauseCannotMatch(r, s)
      case Cons(hd, tl) => lemmaNotPrefixMatchThenCannotMatchLonger(derivativeStep(r, hd), tl, s.tail)
    
  }.ensuring(_ => !matchR(r, s))

  @ghost
  @inlineOnce
  @opaque
  def lemmaNullableThenNotLostCause[C](r: Regex[C]): Unit = {
    require(validRegex(r))
    require(r.nullable)
    decreases(regexDepth(r))
    r match {
      case ElementMatch(c) => ()
      case Star(reg) => ()
      case Union(regOne, regTwo) => 
        if regOne.nullable then lemmaNullableThenNotLostCause(regOne)
        else lemmaNullableThenNotLostCause(regTwo)
      case Concat(regOne, regTwo) => 
        lemmaNullableThenNotLostCause(regOne)
        lemmaNullableThenNotLostCause(regTwo)
      case EmptyExpr() => ()
      case EmptyLang() => ()
    }
  }.ensuring(_ => !r.lostCause)


  @ghost
  @inlineOnce
  @opaque
  def lemmaDerivativeStepFixPointLostCause[C](r: Regex[C], c: C): Unit = {
    require(validRegex(r))
    require(r.lostCause)
    decreases(regexDepth(r))
    r match {
      case EmptyLang() => ()
      case EmptyExpr() => ()
      case ElementMatch(c2) => ()
      case Union(r1, r2) => 
          lemmaDerivativeStepFixPointLostCause(r1, c)
          lemmaDerivativeStepFixPointLostCause(r2, c)
      case Star(rInner) => ()
      case Concat(r1, r2) => 
        assert(r1.lostCause || r2.lostCause)
        if(r1.nullable) {
          lemmaNullableThenNotLostCause(r1)
          assert(!r1.lostCause)
          lemmaDerivativeStepFixPointLostCause(r2, c)
        } else {
          if(r1.lostCause) {
            lemmaDerivativeStepFixPointLostCause(r1, c)
          } else {
            lemmaDerivativeStepFixPointLostCause(r2, c)
          }
        }
    }
  }.ensuring(_ => derivativeStep(r, c).lostCause)

  @ghost
  @inlineOnce
  @opaque
  def lemmaLostCauseCannotMatch[C](r: Regex[C], s: List[C]): Unit = {
    require(validRegex(r))
    require(r.lostCause)
    // require(s.nonEmpty)
    decreases(regexDepth(r) + s.size)
    if (s.isEmpty) {
      if(r.nullable) then lemmaNullableThenNotLostCause(r)
      assert(!r.nullable)
    } else {
      mainMatchTheorem(r, s)
      r match {
        case EmptyLang() => ()
        case EmptyExpr() => ()
        case ElementMatch(c) => ()
        case Union(r1, r2) => 
            lemmaLostCauseCannotMatch(r1, s)
            lemmaLostCauseCannotMatch(r2, s)
            assert(!matchR(r1, s))
            assert(!matchR(r2, s))
            if matchR(Union(r1, r2), s) then {
              lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts(r1, r2, s)
              check(false)
            }
        case Star(rInner) => ()
        case Concat(r1, r2) => 
          if matchR(r, s) then {
            lemmaFindConcatSeparationEquivalentToExists(r1, r2, s)
            val (s1, s2) = findConcatSeparation(r1, r2, Nil(), s, s).get
            assert(matchR(r1, s1))
            assert(matchR(r2, s2))
            if(r1.lostCause) {
              lemmaLostCauseCannotMatch(r1, s1)
            } else {
              lemmaLostCauseCannotMatch(r2, s2)
            }
          }
      }
    }
  }.ensuring(_ => !matchR(r, s))

  @ghost
  @inlineOnce
  @opaque
  def lemmaGetWitnessMatches[C](r: Regex[C]): Unit = {
    require(validRegex(r))
    require(getLanguageWitness(r).isDefined)
    decreases(regexDepth(r))
    r match {
      case EmptyExpr()        => ()
      case EmptyLang()        => ()
      case ElementMatch(c)    => ()
      case Star(r)            => ()
      case Union(rOne, rTwo)  => 
        getLanguageWitness(rOne) match
          case Some(s) => 
            lemmaGetWitnessMatches(rOne)
            lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo(rOne, rTwo, s)
            assert(matchR(Union(rOne, rTwo), getLanguageWitness(r).get))
          case None() => 
            val s = getLanguageWitness(rTwo)
            lemmaGetWitnessMatches(rTwo)
            if s.isDefined then
              lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo(rTwo, rOne, s.get)
              lemmaReversedUnionAcceptsSameString(rTwo, rOne, s.get)
            else
              check(false)
      case Concat(rOne, rTwo) =>
        getLanguageWitness(rOne) match
          case Some(v1) => 
            getLanguageWitness(rTwo) match
              case Some(v2) => 
                lemmaGetWitnessMatches(rOne)
                lemmaGetWitnessMatches(rTwo)
                assert(matchR(rOne, v1))
                assert(matchR(rTwo, v2))
                lemmaTwoRegexMatchThenConcatMatchesConcatString(rOne, rTwo, v1, v2)
                assert(matchR(Concat(rOne, rTwo), v1 ++ v2))
              case None() => ()
          case None() => ()
    }
  }.ensuring(_ => matchR(r, getLanguageWitness(r).get))

  @ghost
  @inlineOnce
  @opaque
  def lemmaNotLostCauseThenExistAWitness[C](r: Regex[C]): Unit = {
    require(validRegex(r))
    require(!r.lostCause)
    lemmaGetWitnessMatches(r)
    assert(getLanguageWitness(r).isDefined && matchR(r, getLanguageWitness(r).get))
    ExistsThe(getLanguageWitness(r))(s => s.isDefined && matchR(r, s.get))
  }.ensuring(_ => Exists((sOpt: Option[List[C]]) => sOpt.isDefined && matchR(r, sOpt.get)))

  @ghost
  @inlineOnce
  @opaque
  def lemmaPrefixMatchThenExistsStringThatMatches[C](r: Regex[C], prefix: List[C]): Unit = {
    require(validRegex(r))
    require(prefixMatch(r, prefix))
    decreases(prefix.size)
    prefix match
      case Nil() => 
        val witness = getLanguageWitness(r).get
        lemmaGetWitnessMatches(r)
        assert(matchR(r, witness))
        assert(ListUtils.isPrefix(prefix, witness))
        ExistsThe(witness)((s: List[C]) => matchR(r, s) && ListUtils.isPrefix(prefix, s))
      case Cons(hd, tl) => 
        val rr = derivativeStep(r, hd)
        lemmaPrefixMatchThenExistsStringThatMatches(rr, tl)
        val p: List[C] => Boolean = (s: List[C]) => matchR(rr, s) && ListUtils.isPrefix(tl, s)
        check(Exists(p))
        val witness = pickWitness[List[C]](p)
        assert(matchR(rr, witness))
        assert(ListUtils.isPrefix(tl, witness))
        assert(matchR(r, hd :: witness))
        assert(ListUtils.isPrefix(prefix, hd :: witness))
        ExistsThe(hd :: witness)((s: List[C]) => matchR(r, s) && ListUtils.isPrefix(prefix, s))

  }.ensuring(_ => Exists((s: List[C]) => matchR(r, s) && ListUtils.isPrefix(prefix, s)))

  @ghost
  @inlineOnce
  @opaque
  def lemmaConcatDistributesInUnion[C](r1: Regex[C], r2: Regex[C], rTail: Regex[C], s: List[C]): Unit = {
    require(validRegex(r1))
    require(validRegex(r2))
    require(validRegex(rTail))
    val rLeft = Concat(Union(r1, r2), rTail)
    val rRight = Union(Concat(r1, rTail), Concat(r2, rTail))
    mainMatchTheorem(rLeft, s)
    mainMatchTheorem(rRight, s)
    if(matchR(rLeft, s)){
      lemmaFindConcatSeparationEquivalentToExists(Union(r1, r2), rTail, s)
      val (s1, s2) = findConcatSeparation(Union(r1, r2), rTail, Nil(), s, s).get
      assert(matchR(Union(r1, r2), s1))
      assert(matchR(rTail, s2))
      mainMatchTheorem(Union(r1, r2), s1)
      mainMatchTheorem(rTail, s2)
      mainMatchTheorem(r1, s1)
      mainMatchTheorem(r2, s1)

      assert(matchR(r1, s1) || matchR(r2, s1))

      mainMatchTheorem(Concat(r1, rTail), s)
      mainMatchTheorem(Concat(r2, rTail), s)
      assert(matchR(rRight, s) == (matchR(Concat(r1, rTail), s) || matchR(Concat(r2, rTail), s)))
      if(matchR(r1, s1)){
        lemmaTwoRegexMatchThenConcatMatchesConcatString(r1, rTail, s1, s2)
      } else{
        lemmaTwoRegexMatchThenConcatMatchesConcatString(r2, rTail, s1, s2)
      }
      check(matchR(rRight, s))
    } else {
      lemmaFindConcatSeparationEquivalentToExists(Union(r1, r2), rTail, s)
      assert(!findConcatSeparation(Union(r1, r2), rTail, Nil(), s, s).isDefined)
      if(matchR(rRight, s)){
        mainMatchTheorem(Concat(r1, rTail), s)
        mainMatchTheorem(Concat(r2, rTail), s)
        assert(matchR(Concat(r1, rTail), s) || matchR(Concat(r2, rTail), s))
        if(matchR(Concat(r1, rTail), s)){
          lemmaFindConcatSeparationEquivalentToExists(r1, rTail, s)
          val (s1, s2) = findConcatSeparation(r1, rTail, Nil(), s, s).get
          assert(matchR(r1, s1))
          assert(matchR(rTail, s2))
          mainMatchTheorem(Union(r1, r2), s1)
          mainMatchTheorem(r1, s1)
          mainMatchTheorem(r2, s1)
          assert(matchR(Union(r1, r2), s1))
          assert(matchR(r1, s1))
          lemmaTwoRegexMatchThenConcatMatchesConcatString(Union(r1, r2), rTail, s1, s2)
          check(false)
        } else {
          lemmaFindConcatSeparationEquivalentToExists(r2, rTail, s)
          val (s1, s2) = findConcatSeparation(r2, rTail, Nil(), s, s).get
          assert(matchR(r2, s1))
          assert(matchR(rTail, s2))
          mainMatchTheorem(Union(r1, r2), s1)
          mainMatchTheorem(r1, s1)
          mainMatchTheorem(r2, s1)
          assert(matchR(Union(r1, r2), s1))
          assert(matchR(r2, s1))
          lemmaTwoRegexMatchThenConcatMatchesConcatString(Union(r1, r2), rTail, s1, s2)
          check(false)
        }
      }
    }
  }.ensuring(_ => matchR(Concat(Union(r1, r2), rTail), s) == matchR(Union(Concat(r1, rTail), Concat(r2, rTail)), s))


  @ghost
  def lemmaIfMatchRThenLongestMatchFromThereReturnsAtLeastThis[C](baseR: Regex[C], r: Regex[C], input: List[C], testedP: List[C]): Unit = {
    require(validRegex(baseR))
    require(validRegex(r))
    require(ListUtils.isPrefix(testedP, input))
    require(matchR(baseR, testedP))
    require(derivative(baseR, testedP) == r)

    lemmaMatchRIsSameAsWholeDerivativeAndNil(baseR, testedP)
    assert(matchR(r, Nil()))
    assert(r.nullable)
    if(r.lostCause){
      lemmaLostCauseCannotMatch(r, Nil())
      check(false)
    }

  }.ensuring (_ => findLongestMatchInner(r, testedP, testedP.size, ListUtils.getSuffix(input, testedP), input, input.size)._1.size >= testedP.size)

  @ghost
  def lemmaKnownAcceptedStringThenFromSmallPAtLeastThat[C](baseR: Regex[C], r: Regex[C], input: List[C], testedP: List[C], knownP: List[C]): Unit = {
    require(validRegex(baseR))
    require(validRegex(r))
    require(ListUtils.isPrefix(testedP, input))
    require(ListUtils.isPrefix(knownP, input))
    require(knownP.size >= testedP.size)
    require(matchR(baseR, knownP))
    require({
      ListUtils.lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther(knownP, testedP, input)
      matchR(r, ListUtils.getSuffix(knownP, testedP))
    })
    require(derivative(baseR, testedP) == r)
    decreases(knownP.size - testedP.size)

    if(r.lostCause){
      // Here derivative(r, testedP) cannot be lost cause, because we know baseR matches knownP and knownP is larger than testedP
      lemmaMatchRIsSameAsWholeDerivativeAndNil(baseR, testedP)
      ListUtils.lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther(knownP, testedP, input)
      val knownPSuffix = ListUtils.getSuffix(knownP, testedP)
      assert(testedP ++ knownPSuffix == knownP)
      assert(matchR(baseR, knownP))

      assert(matchR(r, knownPSuffix))

      lemmaLostCauseCannotMatch(r, knownPSuffix)
      check(false)
    } else if (testedP.size == knownP.size) {
      ListUtils.lemmaIsPrefixSameLengthThenSameList(testedP, knownP, input)
      lemmaIfMatchRThenLongestMatchFromThereReturnsAtLeastThis(baseR, r, input, testedP)
      check(findLongestMatchInner(r, testedP, testedP.size, ListUtils.getSuffix(input, testedP), input, input.size)._1.size >= knownP.size)
    } else {
      assert(testedP.size < input.size)
      val suffix = ListUtils.getSuffix(input, testedP)
      val newP = testedP ++ List(suffix.head)
      lemmaAddHeadSuffixToPrefixStillPrefix(testedP, input)

      lemmaDerivativeOnLWithANewCharIsANewDerivativeStep(baseR, r, testedP, suffix.head)

      // Below we prove 1 and 2 to prove that matchR(r, ListUtils.getSuffix(knownP, testedP)) after the new derivative
      ListUtils.lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther(knownP, testedP, input)
      val knownPSuffix = ListUtils.getSuffix(knownP, testedP)
      ListUtils.lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther(knownP, newP, input)
      val newKnownPSuffix = ListUtils.getSuffix(knownP, newP)
      val rest = ListUtils.getSuffix(input, knownP)
      assert(knownP ++ rest == input)
      assert(testedP ++ knownPSuffix ++ rest == input)
      assert(testedP ++ suffix == input)
      ListUtils.lemmaTwoListsConcatAssociativity(testedP, knownPSuffix, rest)
      assert(testedP ++ (knownPSuffix ++ rest) == input)
      ListUtils.lemmaSamePrefixThenSameSuffix(testedP, (knownPSuffix ++ rest), testedP, suffix, input)
      assert(knownPSuffix ++ rest == suffix)
      assert(knownPSuffix.head == suffix.head) // 1
      assert(knownPSuffix == suffix.head :: knownPSuffix.tail)
      assert(testedP ++ knownPSuffix == knownP)
      assert(testedP ++ List(suffix.head) == newP)
      assert(newP ++ newKnownPSuffix == knownP)
      assert(testedP ++ List(suffix.head) ++ newKnownPSuffix == knownP)
      ListUtils.lemmaTwoListsConcatAssociativity(testedP, List(suffix.head), newKnownPSuffix)
      ListUtils.lemmaSamePrefixThenSameSuffix(testedP, List(suffix.head) ++ newKnownPSuffix, testedP, knownPSuffix, knownP)
      assert(knownPSuffix.tail == newKnownPSuffix) // 2

      lemmaKnownAcceptedStringThenFromSmallPAtLeastThat(baseR, derivativeStep(r, suffix.head), input, newP, knownP)

      check(findLongestMatchInner(r, testedP, testedP.size, ListUtils.getSuffix(input, testedP), input, input.size)._1.size >= knownP.size)
    }

  }.ensuring (_ => findLongestMatchInner(r, testedP, testedP.size, ListUtils.getSuffix(input, testedP), input, input.size)._1.size >= knownP.size)

  @ghost
  def longestMatchIsAcceptedByMatchOrIsEmptyRec[C](baseR: Regex[C], r: Regex[C], testedP: List[C], input: List[C]): Unit = {
    require(validRegex(baseR))
    require(ListUtils.isPrefix(testedP, input))
    require(derivative(baseR, testedP) == r)
    decreases(input.size - testedP.size)

    if (findLongestMatchInner(r, testedP, testedP.size, ListUtils.getSuffix(input, testedP), input, input.size)._1.isEmpty) {
      ()
    } else {
      if (testedP == input) {
        if (r.nullable) {
          lemmaMatchRIsSameAsWholeDerivativeAndNil(baseR, testedP)
        } else {
          ()
        }
      } else {
        ListUtils.lemmaIsPrefixThenSmallerEqSize(testedP, input)
        if (testedP.size == input.size) {
          ListUtils.lemmaIsPrefixRefl(input, input)
          ListUtils.lemmaIsPrefixSameLengthThenSameList(input, testedP, input)
          check(false)
        }
        assert(testedP.size < input.size)
        val suffix = ListUtils.getSuffix(input, testedP)
        val newP = testedP ++ List(suffix.head)
        lemmaAddHeadSuffixToPrefixStillPrefix(testedP, input)
        if (r.nullable) {
          val recursive = findLongestMatchInner(derivativeStep(r, suffix.head), newP, testedP.size + 1, ListUtils.getSuffix(input, testedP).tail, input, input.size)
          if (recursive._1.isEmpty) {
            lemmaMatchRIsSameAsWholeDerivativeAndNil(baseR, testedP)
          } else {
            lemmaDerivativeOnLWithANewCharIsANewDerivativeStep(baseR, r, testedP, suffix.head)
            longestMatchIsAcceptedByMatchOrIsEmptyRec(baseR, derivativeStep(r, suffix.head), newP, input)
          }
        } else {
          lemmaDerivativeOnLWithANewCharIsANewDerivativeStep(baseR, r, testedP, suffix.head)
          longestMatchIsAcceptedByMatchOrIsEmptyRec(baseR, derivativeStep(r, suffix.head), newP, input)
        }
      }
    }

  }.ensuring (_ => findLongestMatchInner(r, testedP, testedP.size, ListUtils.getSuffix(input, testedP), input, input.size)._1.isEmpty || matchR(baseR, findLongestMatchInner(r, testedP, testedP.size, ListUtils.getSuffix(input, testedP), input, input.size)._1))

  @ghost
  def lemmaMatchRIsSameAsWholeDerivativeAndNil[C](r: Regex[C], input: List[C]): Unit = {
    require(validRegex(r))
    decreases(input.size)
    input match {
      case Cons(hd, tl) => lemmaMatchRIsSameAsWholeDerivativeAndNil(derivativeStep(r, hd), tl)
      case Nil()        => ()
    }
  }.ensuring (_ => matchR(r, input) == matchR(derivative(r, input), Nil()))

  @ghost
  def lemmaDerivativeOnLWithANewCharIsANewDerivativeStep[C](baseR: Regex[C], r: Regex[C], input: List[C], c: C): Unit = {
    require(validRegex(baseR))
    require(derivative(baseR, input) == r)
    decreases(input.size)
    input match {
      case Cons(hd, tl) => lemmaDerivativeOnLWithANewCharIsANewDerivativeStep(derivativeStep(baseR, hd), r, tl, c)
      case Nil()        => ()
    }

  }.ensuring (_ => derivative(baseR, input ++ List(c)) == derivativeStep(r, c))

  // Basic lemmas
  @ghost
  def lemmaIfAcceptEmptyStringThenNullable[C](r: Regex[C], s: List[C]): Unit = {
    require(validRegex(r))
    require(s.isEmpty)
    require(matchR(r, s))
  }.ensuring (_ => r.nullable)

  @ghost
  def lemmaRegexAcceptsStringThenDerivativeAcceptsTail[C](r: Regex[C], s: List[C]): Unit = {
    require(validRegex(r))
    require(matchR(r, s))

  }.ensuring (_ => if (s.isEmpty) r.nullable else matchR(derivativeStep(r, s.head), s.tail))

  // EmptyString Lemma
  @ghost
  def lemmaRegexEmptyStringAcceptsTheEmptyString[C](r: EmptyExpr[C]): Unit = {
    require(validRegex(r))
  }.ensuring (_ => matchR(r, List()))

  // Single Character Lemma
  @ghost
  def lemmaElementRegexAcceptsItsCharacterAndOnlyIt[C](
      r: ElementMatch[C],
      c: C,
      d: C
  ): Unit = {
    require(validRegex(r) && r == ElementMatch(c))
    require(c != d)
  }.ensuring (_ => matchR(r, List(c)) && !matchR(r, List(d)))

  @ghost
  def lemmaElementRegexDoesNotAcceptMultipleCharactersString[C](
      r: ElementMatch[C],
      c: C,
      s: List[C]
  ): Unit = {
    require(validRegex(r) && r == ElementMatch(c))
    require(!s.isEmpty)
  }.ensuring (_ => !matchR(r, Cons(c, s)))

  // Union lemmas
  @ghost
  def lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo[C](
      r1: Regex[C],
      r2: Regex[C],
      s: List[C]
  ): Unit = {
    require(validRegex(r1) && validRegex(r2))
    require(matchR(r1, s))
    decreases(s)
    s match {
      case Cons(hd, tl) => {
        lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo(derivativeStep(r1, hd), derivativeStep(r2, hd), tl)
        assert(matchR(Union(r1, r2), s))
      }
      case Nil() => assert(matchR(Union(r1, r2), s))
    }
  }.ensuring (_ => matchR(Union(r1, r2), s))

  @ghost
  def lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts[C](r1: Regex[C], r2: Regex[C], s: List[C]): Unit = {
    require(validRegex(r1) && validRegex(r2))
    require(matchR(Union(r1, r2), s))
    decreases(s)
    s match {
      case Cons(hd, tl) => {
        lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts(derivativeStep(r1, hd), derivativeStep(r2, hd), tl)
      }
      case Nil() =>
    }
  }.ensuring (_ => matchR(r1, s) || matchR(r2, s))

  @ghost
  def lemmaReversedUnionAcceptsSameString[C](
      r1: Regex[C],
      r2: Regex[C],
      s: List[C]
  ): Unit = {
    require(validRegex(r1) && validRegex(r2))
    require(matchR(Union(r1, r2), s))
    decreases(s)
    s match {
      case Cons(hd, tl) => {
        lemmaReversedUnionAcceptsSameString(derivativeStep(r1, hd), derivativeStep(r2, hd), tl)
        assert(matchR(Union(r2, r1), s))
      }
      case Nil() => assert(matchR(Union(r1, r2), s))
    }
  }.ensuring (_ => matchR(Union(r2, r1), s))

  // Concat lemmas

  @ghost
  def lemmaRegexConcatWithNullableAcceptsSameStr[C](
      r1: Regex[C],
      r2: Regex[C],
      s: List[C]
  ): Unit = {
    require(validRegex(r1))
    require(validRegex(r2))
    require(matchR(r1, s))
    require(r2.nullable)
    decreases(s)
    val newR = Concat(r2, r1)

    s match {
      case Cons(hd, tl) => {
        assert(r2.nullable)
        assert(
          derivativeStep(newR, hd) == Union(Concat(derivativeStep(r2, hd), r1), derivativeStep(r1, hd))
        )
        lemmaRegexAcceptsStringThenDerivativeAcceptsTail(r1, s)
        lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo(
          derivativeStep(r1, hd),
          Concat(derivativeStep(r2, hd), r1),
          tl
        )
        lemmaReversedUnionAcceptsSameString(derivativeStep(r1, hd), Concat(derivativeStep(r2, hd), r1), tl)
      }
      case Nil() => ()
    }
  }.ensuring (_ => matchR(Concat(r2, r1), s))

  @ghost
  def lemmaTwoRegexMatchThenConcatMatchesConcatString[C](
      r1: Regex[C],
      r2: Regex[C],
      s1: List[C],
      s2: List[C]
  ): Unit = {
    require(validRegex(r1) && validRegex(r2))
    require(matchR(r1, s1))
    require(matchR(r2, s2))
    decreases(s1)

    s1 match {
      case Cons(hd, tl) => {
        lemmaTwoRegexMatchThenConcatMatchesConcatString(derivativeStep(r1, hd), r2, tl, s2)
        assert(matchR(Concat(derivativeStep(r1, hd), r2), tl ++ s2))
        if (r1.nullable) {
          assert(
            derivativeStep(Concat(r1, r2), hd) == Union(Concat(derivativeStep(r1, hd), r2), derivativeStep(r2, hd))
          )
          lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo(
            Concat(derivativeStep(r1, hd), r2),
            derivativeStep(r2, hd),
            tl ++ s2
          )
        } else {
          assert(derivativeStep(Concat(r1, r2), hd) == Union(Concat(derivativeStep(r1, hd), r2), EmptyLang()))
          lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo(
            Concat(derivativeStep(r1, hd), r2),
            EmptyLang(),
            tl ++ s2
          )
          assert(matchR(Concat(r1, r2), s1 ++ s2))
        }
      }
      case Nil() =>
        lemmaRegexConcatWithNullableAcceptsSameStr(r2, r1, s2)

    }
  }.ensuring (_ => matchR(Concat(r1, r2), s1 ++ s2))

  @ghost
  def lemmaFindSeparationIsDefinedThenConcatMatches[C](r1: Regex[C], r2: Regex[C], s1: List[C], s2: List[C], s: List[C]): Unit = {
    require(validRegex(r1))
    require(validRegex(r2))
    require(s == s1 ++ s2)
    require(findConcatSeparation(r1, r2, Nil(), s, s).isDefined)
    require(findConcatSeparation(r1, r2, Nil(), s, s).get == (s1, s2))

    lemmaTwoRegexMatchThenConcatMatchesConcatString(r1, r2, s1, s2)

  }.ensuring (_ => matchR(Concat(r1, r2), s1 ++ s2))

  @ghost
  def lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem[C](
      r1: Regex[C],
      r2: Regex[C],
      s1: List[C],
      s2: List[C],
      s: List[C],
      s1Rec: List[C],
      s2Rec: List[C]
  ): Unit = {
    require(validRegex(r1))
    require(validRegex(r2))
    require(s1 ++ s2 == s)
    require(ListUtils.isPrefix(s1Rec, s1))
    require(s1Rec ++ s2Rec == s)
    require(matchR(r1, s1))
    require(matchR(r2, s2))
    decreases(s2Rec.size)

    (s1Rec, s2Rec) match {
      case (_, _) if matchR(r1, s1Rec) && matchR(r2, s2Rec) => ()
      case (_, Nil()) => {
        assert(s1Rec.size == s.size)
        assert(s1Rec.size == s1.size)
        assert(s1Rec == s1)
        assert(s2Rec == s2)
        assert(findConcatSeparation(r1, r2, s1Rec, s2Rec, s) == Some(s1Rec, s2Rec))
      }
      case (_, Cons(hd2, tl2)) => {
        ListUtils.lemmaConcatTwoListThenFirstIsPrefix(s1, s2)
        ListUtils.lemmaConcatTwoListThenFirstIsPrefix(s1Rec, s2Rec)
        if (s1Rec == s1) {
          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(s1, s2)
          ListUtils.lemmaSamePrefixThenSameSuffix(s1, s2, s1Rec, s2Rec, s)
          check(false)
        }
        lemmaMoveElementToOtherListKeepsConcatEq(s1Rec, hd2, tl2, s)
        ListUtils.lemmaConcatTwoListThenFirstIsPrefix(s1Rec ++ List(hd2), tl2)
        if (s1Rec.size == s1.size) {
          ListUtils.lemmaIsPrefixSameLengthThenSameList(s1, s1Rec, s)
          check(false)
        }

        ListUtils.lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther(s1, s1Rec ++ List(hd2), s)
        lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem(r1, r2, s1, s2, s, s1Rec ++ List(hd2), tl2)
      }
    }

  }.ensuring (_ => findConcatSeparation(r1, r2, s1Rec, s2Rec, s).isDefined)

  @ghost
  def lemmaConcatAcceptsStringThenFindSeparationIsDefined[C](r1: Regex[C], r2: Regex[C], s: List[C]): Unit = {
    require(validRegex(r1))
    require(validRegex(r2))
    require(matchR(Concat(r1, r2), s))
    decreases(s)

    val r = Concat(r1, r2)
    s match {
      case Cons(hd, tl) => {
        assert(matchR(derivativeStep(Concat(r1, r2), hd), tl))
        //  if (rOne.nullable) Union(Concat(derivativeStep(rOne, a), rTwo), derivativeStep(rTwo, a))
        // else Union(Concat(derivativeStep(rOne, a), rTwo), EmptyLang())
        if (r1.nullable) {
          assert(derivativeStep(r, hd) == Union(Concat(derivativeStep(r1, hd), r2), derivativeStep(r2, hd)))
          lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts(Concat(derivativeStep(r1, hd), r2), derivativeStep(r2, hd), tl)
          if (matchR(Concat(derivativeStep(r1, hd), r2), tl)) {
            lemmaConcatAcceptsStringThenFindSeparationIsDefined(derivativeStep(r1, hd), r2, tl)
            assert(findConcatSeparation(derivativeStep(r1, hd), r2, Nil(), tl, tl).isDefined)
            val (s1, s2) = findConcatSeparation(derivativeStep(r1, hd), r2, Nil(), tl, tl).get
            lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem(r1, r2, Cons(hd, s1), s2, s, Nil(), s)
          } else {
            assert(matchR(derivativeStep(r2, hd), tl))
          }
        } else {
          assert(derivativeStep(r, hd) == Union(Concat(derivativeStep(r1, hd), r2), EmptyLang()))
          lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts(Concat(derivativeStep(r1, hd), r2), EmptyLang(), tl)
          lemmaEmptyLangDerivativeIsAFixPoint(EmptyLang(), tl)
          assert(matchR(Concat(derivativeStep(r1, hd), r2), tl))
          lemmaConcatAcceptsStringThenFindSeparationIsDefined(derivativeStep(r1, hd), r2, tl)
          val (s1, s2) = findConcatSeparation(derivativeStep(r1, hd), r2, Nil(), tl, tl).get
          lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem(r1, r2, Cons(hd, s1), s2, s, Nil(), s)
        }
      }
      case Nil() => {
        assert(r1.nullable && r2.nullable)
        assert(findConcatSeparation(r1, r2, Nil(), Nil(), Nil()) == Some((Nil[C](), Nil[C]())))
      }
    }

  }.ensuring (_ => findConcatSeparation(r1, r2, Nil(), s, s).isDefined)
  
  @ghost
  @inlineOnce
  @opaque
  def lemmaConcatAssociative[C](r1: Regex[C], r2: Regex[C], r3: Regex[C], s: List[C]): Unit = {
    require(validRegex(r1) && validRegex(r2) && validRegex(r3))
    decreases(s)

    val rL = Concat(Concat(r1, r2), r3)
    val rR = Concat(r1, Concat(r2, r3))
    mainMatchTheorem(rL, s)
    mainMatchTheorem(rR, s)
    if(matchR(rL, s)){
      lemmaFindConcatSeparationEquivalentToExists(Concat(r1, r2), r3, s)
      val (s1, s2) = findConcatSeparation(Concat(r1, r2), r3, Nil(), s, s).get
      mainMatchTheorem(Concat(r1, r2), s1)
      assert(matchR(Concat(r1, r2), s1))
      assert(matchR(r3, s2))
      lemmaFindConcatSeparationEquivalentToExists(r1, r2, s1)
      val (s11, s22) = findConcatSeparation(r1, r2, Nil(), s1, s1).get
      assert(matchR(r1, s11))
      assert(matchR(r2, s22))
      mainMatchTheorem(r1, s11)
      mainMatchTheorem(r2, s22)
      assert(s11 ++ s22 ++ s2 == s)

      mainMatchTheorem(Concat(r2, r3), s22 ++ s2)
      lemmaFindConcatSeparationEquivalentToExists(r2, r3, s22 ++ s2)
      lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem(r2, r3, s22, s2, s22 ++ s2, Nil(), s22 ++ s2)
      assert(matchR(Concat(r2, r3), s22 ++ s2))
      ListUtils.lemmaTwoListsConcatAssociativity(s11, s22, s2)
      assert(s11 ++ (s22 ++ s2) == s)
      lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem(r1, Concat(r2, r3), s11, s22 ++ s2, s, Nil(), s)
      lemmaFindConcatSeparationEquivalentToExists(r1, Concat(r2, r3), s)
    } else {
      if(findConcatSeparation(r1, Concat(r2, r3), Nil(), s, s).isDefined){
        lemmaFindConcatSeparationEquivalentToExists(r1, Concat(r2, r3), s)
        val (s1, s2) = findConcatSeparation(r1, Concat(r2, r3), Nil(), s, s).get
        mainMatchTheorem(r1, s1)
        assert(matchR(r1, s1))
        assert(matchR(Concat(r2, r3), s2))
        mainMatchTheorem(Concat(r2, r3), s2)
        lemmaFindConcatSeparationEquivalentToExists(r2, r3, s2)
        val (s11, s22) = findConcatSeparation(r2, r3, Nil(), s2, s2).get
        assert(matchR(r2, s11))
        assert(matchR(r3, s22))
        mainMatchTheorem(r2, s11)
        mainMatchTheorem(r3, s22)
        
        assert(s1 ++ (s11 ++ s22) == s)
        ListUtils.lemmaTwoListsConcatAssociativity(s1, s11, s22)

        mainMatchTheorem(Concat(r1, r2), s1 ++ s11)
        lemmaFindConcatSeparationEquivalentToExists(r1, r2, s1 ++ s11)
        lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem(r1, r2, s1, s11, s1 ++ s11, Nil(), s1 ++ s11)
        assert(matchR(Concat(r1, r2), s1 ++ s11))
        
        assert((s1 ++ s11) ++ s22 == s)
        lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem(Concat(r1, r2), r3, s1 ++ s11, s22, s, Nil(), s)
        lemmaFindConcatSeparationEquivalentToExists(Concat(r1, r2), r3, s)
        check(false)
      }
      lemmaFindConcatSeparationEquivalentToExists(r1, Concat(r2, r3), s)
    }
    

  }.ensuring (_ => matchR(Concat(Concat(r1, r2), r3), s) == matchR(Concat(r1, Concat(r2, r3)), s))

  // Star lemmas
  @ghost
  def lemmaStarAcceptsEmptyString[C](r: Star[C]): Unit = {
    require(validRegex(r))
  }.ensuring (_ => matchR(r, List()))

  @ghost
  def lemmaStarApp[C](r: Regex[C], s1: List[C], s2: List[C]): Unit = {
    require(validRegex(Star(r)))
    require(matchR(r, s1))
    require(matchR(Star(r), s2))

    s1 match {
      case Cons(hd, tl) => {
        assert(derivativeStep(Star(r), hd) == Concat(derivativeStep(r, hd), Star(r)))
        lemmaTwoRegexMatchThenConcatMatchesConcatString(derivativeStep(r, hd), Star(r), tl, s2)
      }
      case Nil() => ()
    }
  }.ensuring (_ => matchR(Star(r), s1 ++ s2))

  @ghost
  def lemmaStarAppConcat[C](r: Regex[C], s: List[C]): Unit = {
    require(validRegex(Star(r)))
    require(matchR(Star(r), s))

    s match {
      case Cons(hd, tl) => {
        assert(derivativeStep(Star(r), hd) == Concat(derivativeStep(r, hd), Star(r)))
        val r1 = derivativeStep(r, hd)
        val r2 = Star(r)
        lemmaConcatAcceptsStringThenFindSeparationIsDefined(r1, r2, tl)
        val cut = findConcatSeparation(r1, r2, Nil(), tl, tl)
        lemmaTwoRegexMatchThenConcatMatchesConcatString(r, Star(r), Cons(hd, cut.get._1), cut.get._2)
      }
      case Nil() => ()
    }
  }.ensuring (_ => s.isEmpty || matchR(Concat(r, Star(r)), s))

  // usedCharacters lemmas ---------------------------------------------------------------------------------------------------

  @ghost
  def lemmaRegexCannotMatchAStringContainingACharItDoesNotContain[C](r: Regex[C], s: List[C], c: C): Unit = {
    require(validRegex(r))
    require(s.contains(c))
    require(!r.usedCharacters.contains(c))
    decreases(s)

    s match {
      case Cons(hd, tl) if hd == c => lemmaRegexCannotMatchAStringStartingWithACharItDoesNotContain(r, s, c)
      case Cons(hd, tl) if hd != c => {
        lemmaDerivativeStepDoesNotAddCharToUsedCharacters(r, hd, c)
        lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(derivativeStep(r, hd), tl, c)
      }
      case Nil() => check(false)
    }

  }.ensuring (_ => !matchR(r, s))


  @ghost
  def lemmaRegexCannotMatchAStringStartingWithACharItDoesNotContain[C](r: Regex[C], s: List[C], c: C): Unit = {
    require(validRegex(r))
    require(s.contains(c))
    require(s.head == c)
    require(!r.usedCharacters.contains(c))

    if (matchR(r, s)) {
      lemmaMatchRIsSameAsWholeDerivativeAndNil(r, s)
      lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead(r, c, s.tail)
      check(false)
    }

  }.ensuring (_ => !matchR(r, s))


  @ghost
  def lemmaRegexCannotPrefixMatchAStringContainingACharItDoesNotContain[C](r: Regex[C], prefix: List[C], c: C): Unit = {
    require(validRegex(r))
    require(prefix.contains(c))
    require(!r.usedCharacters.contains(c))

    if (prefixMatch(r, prefix)){
      lemmaPrefixMatchThenExistsStringThatMatches(r, prefix)
      assert(Exists((s: List[C]) => matchR(r, s) && ListUtils.isPrefix(prefix, s)))
      val s: List[C] = pickWitness[List[C]]((s: List[C]) => matchR(r, s) && ListUtils.isPrefix(prefix, s))
      assert(matchR(r, s))
      assert(ListUtils.isPrefix(prefix, s))
      val suffix = ListUtils.getSuffix(s, prefix)
      assert(s == prefix ++ suffix)
      assert(prefix.contains(c))
      assert(s.contains(c))
      lemmaRegexCannotMatchAStringContainingACharItDoesNotContain(r, s, c)
      check(false)
    }

  }.ensuring (_ => !prefixMatch(r, prefix))


  @ghost
  def lemmaRegexCannotMatchAStringStartingWithACharWhichIsNotInFirstChars[C](r: Regex[C], s: List[C], c: C): Unit = {
    require(validRegex(r))
    require(s.contains(c))
    require(s.head == c)
    require(!r.firstChars.contains(c))

    if (matchR(r, s)) {
      lemmaMatchRIsSameAsWholeDerivativeAndNil(r, s)
      lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead(r, c, s.tail)
      check(false)
    }

  }.ensuring (_ => !matchR(r, s))

  // not used
  @ghost
  def lemmaRIsNotNullableDerivativeStepIsThenUsedCharContainsC[C](r: Regex[C], c: C): Unit = {
    require(validRegex(r))
    require(!r.nullable)
    require(derivativeStep(r, c).nullable)
    decreases(r)

    r match {
      case EmptyExpr()     => check(false)
      case EmptyLang()     => ()
      case ElementMatch(a) => ()
      case Union(rOne, rTwo) => {
        if (rOne.nullable) {
          check(false)
        }
        if (rTwo.nullable) {
          check(false)
        }
        if (derivativeStep(rOne, c).nullable) {
          lemmaRIsNotNullableDerivativeStepIsThenUsedCharContainsC(rOne, c)
        } else {
          assert(derivativeStep(rTwo, c).nullable)
          lemmaRIsNotNullableDerivativeStepIsThenUsedCharContainsC(rTwo, c)
        }
      }
      case Star(rInner) => ()
      case Concat(rOne, rTwo) => {
        if (rOne.nullable) {
          if (Concat(derivativeStep(rOne, c), rTwo).nullable) {
            lemmaRIsNotNullableDerivativeStepIsThenUsedCharContainsC(rOne, c)
          } else {
            assert(derivativeStep(rTwo, c).nullable)
            lemmaRIsNotNullableDerivativeStepIsThenUsedCharContainsC(rTwo, c)

          }
        } else {
          lemmaRIsNotNullableDerivativeStepIsThenUsedCharContainsC(rOne, c)
        }
      }
    }

  }.ensuring (_ => r.usedCharacters.contains(c))

  // DONE
  @ghost
  def lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead[C](r: Regex[C], c: C, tl: List[C]): Unit = {
    require(validRegex(r))
    require(derivative(derivativeStep(r, c), tl).nullable)
    decreases(r)

    r match {
      case EmptyExpr() => {
        assert(derivativeStep(r, c) == EmptyLang[C]())
        lemmaEmptyLangDerivativeIsAFixPoint(derivativeStep(r, c), tl)
        check(false)
      }
      case EmptyLang() => {
        assert(derivativeStep(r, c) == EmptyLang[C]())
        lemmaEmptyLangDerivativeIsAFixPoint(derivativeStep(r, c), tl)
        check(false)
      }
      case ElementMatch(a) => {
        if (c == a) {
          assert(derivativeStep(r, c) == EmptyExpr[C]())
          if (tl.isEmpty) {
            assert(r.usedCharacters.contains(c))
            assert(derivative(derivativeStep(r, c), tl).nullable)
          } else {
            lemmaEmptyLangDerivativeIsAFixPoint(derivativeStep(derivativeStep(r, c), tl.head), tl.tail)
            check(false)
          }
        } else {
          assert(derivativeStep(r, c) == EmptyLang[C]())
          lemmaEmptyLangDerivativeIsAFixPoint(derivativeStep(r, c), tl)
          check(false)
        }
      }
      case Union(rOne, rTwo) => {
        if (derivative(derivativeStep(rOne, c), tl).nullable) {
          lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead(rOne, c, tl)
        } else if (derivative(derivativeStep(rTwo, c), tl).nullable) {
          lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead(rTwo, c, tl)
        } else {
          lemmaMatchRIsSameAsWholeDerivativeAndNil(r, Cons(c, tl))
          lemmaMatchRIsSameAsWholeDerivativeAndNil(rOne, Cons(c, tl))
          lemmaMatchRIsSameAsWholeDerivativeAndNil(rTwo, Cons(c, tl))
          lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts(rOne, rTwo, Cons(c, tl))
          check(false)
        }
      }
      case Star(rInner) => {
        assert(derivativeStep(r, c) == Concat(derivativeStep(rInner, c), Star(rInner)))
        if (derivative(derivativeStep(rInner, c), tl).nullable) {
          lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead(rInner, c, tl)
        } else {
          lemmaMatchRIsSameAsWholeDerivativeAndNil(derivativeStep(r, c), tl)
          assert(matchR(derivativeStep(r, c), tl))
          lemmaConcatAcceptsStringThenFindSeparationIsDefined(derivativeStep(rInner, c), Star(rInner), tl)
          val (s1, s2) = findConcatSeparation(derivativeStep(rInner, c), Star(rInner), Nil(), tl, tl).get
          assert(s1 ++ s2 == tl)
          assert(matchR(Star(rInner), s2))

          assert(matchR(rInner, Cons(c, s1)))
          assert(matchR(derivativeStep(rInner, c), s1))
          lemmaMatchRIsSameAsWholeDerivativeAndNil(derivativeStep(rInner, c), s1)
          lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead(rInner, c, s1)
        }
      }
      case Concat(rOne, rTwo) => {
        //  if (rOne.nullable) Union(Concat(derivativeStep(rOne, a), rTwo), derivativeStep(rTwo, a))
        // else Union(Concat(derivativeStep(rOne, a), rTwo), EmptyLang())

        if (rOne.nullable) {
          lemmaMatchRIsSameAsWholeDerivativeAndNil(Union(Concat(derivativeStep(rOne, c), rTwo), derivativeStep(rTwo, c)), tl)
          lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts(Concat(derivativeStep(rOne, c), rTwo), derivativeStep(rTwo, c), tl)
          if (matchR(Concat(derivativeStep(rOne, c), rTwo), tl)) {

            lemmaConcatAcceptsStringThenFindSeparationIsDefined(derivativeStep(rOne, c), rTwo, tl)
            val (s1, s2) = findConcatSeparation(derivativeStep(rOne, c), rTwo, Nil(), tl, tl).get
            assert(s1 ++ s2 == tl)
            assert(matchR(derivativeStep(rOne, c), s1))
            assert(matchR(rTwo, s2))
            assert(matchR(rOne, Cons(c, s1)))
            lemmaMatchRIsSameAsWholeDerivativeAndNil(derivativeStep(rOne, c), s1)
            lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead(rOne, c, s1)
          } else {
            lemmaMatchRIsSameAsWholeDerivativeAndNil(derivativeStep(rTwo, c), tl)
            lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead(rTwo, c, tl)
          }
        } else {
          lemmaMatchRIsSameAsWholeDerivativeAndNil(Union(Concat(derivativeStep(rOne, c), rTwo), EmptyLang()), tl)
          lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts(Concat(derivativeStep(rOne, c), rTwo), EmptyLang(), tl)
          lemmaEmptyLangDerivativeIsAFixPoint(EmptyLang(), tl)
          assert(matchR(Concat(derivativeStep(rOne, c), rTwo), tl))
          lemmaConcatAcceptsStringThenFindSeparationIsDefined(derivativeStep(rOne, c), rTwo, tl)
          val (s1, s2) = findConcatSeparation(derivativeStep(rOne, c), rTwo, Nil(), tl, tl).get
          assert(s1 ++ s2 == tl)
          assert(matchR(derivativeStep(rOne, c), s1))
          assert(matchR(rTwo, s2))
          assert(matchR(rOne, Cons(c, s1)))
          lemmaMatchRIsSameAsWholeDerivativeAndNil(derivativeStep(rOne, c), s1)
          lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead(rOne, c, s1)

        }
      }
    }

  }.ensuring (_ => r.usedCharacters.contains(c))

  @ghost
  def lemmaDerivativeStepDoesNotAddCharToUsedCharacters[C](r: Regex[C], c: C, cNot: C): Unit = {
    decreases(r)
    require(validRegex(r))
    require(!r.usedCharacters.contains(cNot))

    r match {
      case EmptyExpr()     => ()
      case EmptyLang()     => ()
      case ElementMatch(c) => ()
      case Union(rOne, rTwo) => {
        lemmaDerivativeStepDoesNotAddCharToUsedCharacters(rOne, c, cNot)
        lemmaDerivativeStepDoesNotAddCharToUsedCharacters(rTwo, c, cNot)
        lemmaConcatTwoListsWhichNotContainThenTotNotContain(derivativeStep(rOne, c).usedCharacters, derivativeStep(rTwo, c).usedCharacters, cNot)
      }
      case Star(rInner) => {
        lemmaDerivativeStepDoesNotAddCharToUsedCharacters(rInner, c, cNot)
      }
      case Concat(rOne, rTwo) => {
        if (rOne.nullable) {
          lemmaDerivativeStepDoesNotAddCharToUsedCharacters(rOne, c, cNot)
          lemmaDerivativeStepDoesNotAddCharToUsedCharacters(rTwo, c, cNot)
          lemmaConcatTwoListsWhichNotContainThenTotNotContain(derivativeStep(rOne, c).usedCharacters, derivativeStep(rTwo, c).usedCharacters, cNot)
        } else {
          lemmaDerivativeStepDoesNotAddCharToUsedCharacters(rOne, c, cNot)
        }
      }
    }

  }.ensuring (_ => !derivativeStep(r, c).usedCharacters.contains(cNot))

  @ghost
  def lemmaEmptyLangDerivativeIsAFixPoint[C](r: Regex[C], s: List[C]): Unit = {
    require(r == EmptyLang[C]())
    decreases(s)
    s match {
      case Cons(hd, tl) => lemmaEmptyLangDerivativeIsAFixPoint(derivativeStep(r, hd), tl)
      case Nil()        => ()
    }

  }.ensuring (_ => derivative(r, s) == r)

  @ghost
  def lemmaUsedCharsContainsAllFirstChars[C](r: Regex[C], c: C): Unit = {
    require(validRegex(r))
    require(r.firstChars.contains(c))
    decreases(r)
    r match {
      case EmptyExpr()     => ()
      case EmptyLang()     => ()
      case ElementMatch(c) => ()
      case Star(r)         => lemmaUsedCharsContainsAllFirstChars(r, c)
      case Union(rOne, rTwo) =>
        if (rOne.firstChars.contains(c)) {
          lemmaUsedCharsContainsAllFirstChars(rOne, c)
        } else {
          lemmaUsedCharsContainsAllFirstChars(rTwo, c)
        }

      case Concat(rOne, rTwo) if rOne.nullable =>
        if (rOne.firstChars.contains(c)) {
          lemmaUsedCharsContainsAllFirstChars(rOne, c)
        } else {
          lemmaUsedCharsContainsAllFirstChars(rTwo, c)
        }

      case Concat(rOne, rTwo) if !rOne.nullable => lemmaUsedCharsContainsAllFirstChars(rOne, c)
    }

  }.ensuring (_ => r.usedCharacters.contains(c))

  @ghost
  def lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead[C](r: Regex[C], c: C, tl: List[C]): Unit = {
    require(validRegex(r))
    require(derivative(derivativeStep(r, c), tl).nullable)

    r match {
      case EmptyExpr() => {
        assert(derivativeStep(r, c) == EmptyLang[C]())
        lemmaEmptyLangDerivativeIsAFixPoint(derivativeStep(r, c), tl)
        check(false)
      }
      case EmptyLang() => {
        assert(derivativeStep(r, c) == EmptyLang[C]())
        lemmaEmptyLangDerivativeIsAFixPoint(derivativeStep(r, c), tl)
        check(false)
      }
      case ElementMatch(a) => {
        if (c == a) {
          assert(derivativeStep(r, c) == EmptyExpr[C]())
          if (tl.isEmpty) {
            assert(r.firstChars.contains(c))
            assert(derivative(derivativeStep(r, c), tl).nullable)
          } else {
            lemmaEmptyLangDerivativeIsAFixPoint(derivativeStep(derivativeStep(r, c), tl.head), tl.tail)
            check(false)
          }
        } else {
          assert(derivativeStep(r, c) == EmptyLang[C]())
          lemmaEmptyLangDerivativeIsAFixPoint(derivativeStep(r, c), tl)
          check(false)
        }
      }
      case Union(rOne, rTwo) => {
        if (derivative(derivativeStep(rOne, c), tl).nullable) {
          lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead(rOne, c, tl)
        } else if (derivative(derivativeStep(rTwo, c), tl).nullable) {
          lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead(rTwo, c, tl)
        } else {
          lemmaMatchRIsSameAsWholeDerivativeAndNil(r, Cons(c, tl))
          lemmaMatchRIsSameAsWholeDerivativeAndNil(rOne, Cons(c, tl))
          lemmaMatchRIsSameAsWholeDerivativeAndNil(rTwo, Cons(c, tl))
          lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts(rOne, rTwo, Cons(c, tl))
          check(false)
        }
      }
      case Star(rInner) => {
        assert(derivativeStep(r, c) == Concat(derivativeStep(rInner, c), Star(rInner)))
        if (derivative(derivativeStep(rInner, c), tl).nullable) {
          lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead(rInner, c, tl)
        } else {
          lemmaMatchRIsSameAsWholeDerivativeAndNil(derivativeStep(r, c), tl)
          assert(matchR(derivativeStep(r, c), tl))
          lemmaConcatAcceptsStringThenFindSeparationIsDefined(derivativeStep(rInner, c), Star(rInner), tl)
          val (s1, s2) = findConcatSeparation(derivativeStep(rInner, c), Star(rInner), Nil(), tl, tl).get
          assert(s1 ++ s2 == tl)
          assert(matchR(Star(rInner), s2))

          assert(matchR(rInner, Cons(c, s1)))
          assert(matchR(derivativeStep(rInner, c), s1))
          lemmaMatchRIsSameAsWholeDerivativeAndNil(derivativeStep(rInner, c), s1)
          lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead(rInner, c, s1)
        }
      }
      case Concat(rOne, rTwo) => {
        if (rOne.nullable) {
          lemmaMatchRIsSameAsWholeDerivativeAndNil(Union(Concat(derivativeStep(rOne, c), rTwo), derivativeStep(rTwo, c)), tl)
          lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts(Concat(derivativeStep(rOne, c), rTwo), derivativeStep(rTwo, c), tl)
          if (matchR(Concat(derivativeStep(rOne, c), rTwo), tl)) {

            lemmaConcatAcceptsStringThenFindSeparationIsDefined(derivativeStep(rOne, c), rTwo, tl)
            val (s1, s2) = findConcatSeparation(derivativeStep(rOne, c), rTwo, Nil(), tl, tl).get
            assert(s1 ++ s2 == tl)
            assert(matchR(derivativeStep(rOne, c), s1))
            assert(matchR(rTwo, s2))
            assert(matchR(rOne, Cons(c, s1)))
            lemmaMatchRIsSameAsWholeDerivativeAndNil(derivativeStep(rOne, c), s1)
            lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead(rOne, c, s1)
          } else {
            lemmaMatchRIsSameAsWholeDerivativeAndNil(derivativeStep(rTwo, c), tl)
            lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead(rTwo, c, tl)
          }
        } else {
          lemmaMatchRIsSameAsWholeDerivativeAndNil(Union(Concat(derivativeStep(rOne, c), rTwo), EmptyLang()), tl)
          lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts(Concat(derivativeStep(rOne, c), rTwo), EmptyLang(), tl)
          lemmaEmptyLangDerivativeIsAFixPoint(EmptyLang(), tl)
          assert(matchR(Concat(derivativeStep(rOne, c), rTwo), tl))
          lemmaConcatAcceptsStringThenFindSeparationIsDefined(derivativeStep(rOne, c), rTwo, tl)
          val (s1, s2) = findConcatSeparation(derivativeStep(rOne, c), rTwo, Nil(), tl, tl).get
          assert(s1 ++ s2 == tl)
          assert(matchR(derivativeStep(rOne, c), s1))
          assert(matchR(rTwo, s2))
          assert(matchR(rOne, Cons(c, s1)))
          lemmaMatchRIsSameAsWholeDerivativeAndNil(derivativeStep(rOne, c), s1)
          lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead(rOne, c, s1)

        }
      }
    }

  }.ensuring (_ => r.firstChars.contains(c))
}

object Utils1 {
  def maxBigInt(a: BigInt, b: BigInt): BigInt = if (a >= b) a else b
  def maxLong(a: Long, b: Long): Long = if (a >= b) a else b
}
