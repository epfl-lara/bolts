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


object VerifiedRegex2 {
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
    l match {
      case Cons(hd, tl) if tl.isEmpty => hd
      case Cons(hd, tl) => Union(hd, generalisedUnion(tl))
      case Nil()        => EmptyLang()
    }
  }.ensuring(res => validRegex(res) && (if(l.isEmpty) isEmptyLang(res) else if(l.tail.isEmpty) res == l.head else isUnion(res)))

  def generalisedConcat[C](l: List[Regex[C]]): Regex[C] = {
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

}

object VerifiedRegexMatcher2 {
  import VerifiedRegex._
  import ListUtils._
  import MemoisationRegex._
  import MemoisationZipper._

  def derivativeStep[C](r: Regex[C], a: C): Regex[C] = {
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
    decreases(input)
    input match {
      case Cons(hd, tl) => derivative(derivativeStep(r, hd), tl)
      case Nil()        => r
    }
  }.ensuring (res => validRegex(res))

  def derivativeMem[C](r: Regex[C], input: List[C])(using cache: Cache[C]): Regex[C] = {
    input match {
      case Cons(hd, tl) => derivative(derivativeStepMem(r, hd)(using cache: Cache[C]), tl)
      case Nil()        => r
    }
  }.ensuring (res => validRegex(res) && res == derivative(r, input))

  def matchR[C](r: Regex[C], input: List[C]): Boolean = {
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
    if (prefix.isEmpty) !r.lostCause else prefixMatch(derivativeStep(r, prefix.head), prefix.tail)
  }

  def prefixMatchZipperVector[C](r: Regex[C], prefix: Vector[C]): Boolean = {
    ZipperRegex.prefixMatchZipperVector(ZipperRegex.focus(r), prefix)
  }.ensuring (res => res == prefixMatch(r, prefix.list))

  def prefixMatchZipperVectorMem[C](r: Regex[C], prefix: Vector[C])(using cacheUp: MemoisationZipper.CacheUp[C], cacheDown: MemoisationZipper.CacheDown[C]): Boolean = {
    ZipperRegex.prefixMatchZipperVectorMem(ZipperRegex.focus(r), prefix)
  }.ensuring (res => res == prefixMatch(r, prefix.list))
  
  def matchRMem[C](r: Regex[C], input: List[C])(using cache: Cache[C]): Boolean = {
    if (input.isEmpty) r.nullable else matchRMem(derivativeStepMem(r, input.head)(using cache: Cache[C]), input.tail)
  }.ensuring (res => res == matchR(r, input))

  def matchZipper[C](r: Regex[C], input: List[C]): Boolean = {
    ZipperRegex.matchZipper(ZipperRegex.focus(r), input)
  }.ensuring (res => res == matchR(r, input))

  def matchZipperVector[C](r: Regex[C], input: Vector[C]): Boolean = {
    ZipperRegex.matchZipperVector(ZipperRegex.focus(r), input)
  }.ensuring (res => res == matchR(r, input.list))

  def matchZipperMem[C](r: Regex[C], input: List[C])(using cacheUp: MemoisationZipper.CacheUp[C], cacheDown: MemoisationZipper.CacheDown[C]): Boolean = {
    ZipperRegex.matchZipperMem(ZipperRegex.focus(r), input)
  }.ensuring (res => res == matchR(r, input))

  def matchZipperVectorMem[C](r: Regex[C], input: Vector[C])(using cacheUp: MemoisationZipper.CacheUp[C], cacheDown: MemoisationZipper.CacheDown[C]): Boolean = {
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

  def findLongestMatchWithZipper[C](r: Regex[C], input: List[C]): (List[C], List[C]) = {
    val zipper = ZipperRegex.focus(r)
    ZipperRegex.findLongestMatchZipper(zipper, input)
  }.ensuring (res => res == findLongestMatch(r, input))

  def findLongestMatchWithZipperVector[C](r: Regex[C], input: Vector[C]): (Vector[C], Vector[C]) = {
    val zipper = ZipperRegex.focus(r)
    ZipperRegex.findLongestMatchZipperFast(zipper, input)
  }.ensuring (res => (res._1.list, res._2.list) == findLongestMatch(r, input.list))

  def findLongestMatchWithZipperVectorMem[C](r: Regex[C], input: Vector[C])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): (Vector[C], Vector[C]) = {
    val zipper = ZipperRegex.focus(r)
    ZipperRegex.findLongestMatchZipperFastMem(zipper, input)
  }.ensuring (res => (res._1.list, res._2.list) == findLongestMatch(r, input.list))


  def findLongestMatch[C](r: Regex[C], input: List[C]): (List[C], List[C]) = {
    findLongestMatchInner(r, Nil(), 0, input, input, ListUtils.sizeTr(input))
  }.ensuring (res => res._1 ++ res._2 == input)

  def findLongestMatchInner[C](r: Regex[C], testedP: List[C], testedPSize: BigInt, testedSuffix: List[C], totalInput: List[C], totalInputSize: BigInt): (List[C], List[C]) = {


    if (r.lostCause) {
      (Nil[C](), totalInput)
    } else if (testedPSize == totalInputSize) {
      if (r.nullable) {
        (testedP, Nil[C]())
      } else {
        (Nil[C](), totalInput)
      }
    } else {
      // val suffix = ListUtils.getSuffix(totalInput, testedP)
      val newP = testedP ++ List(testedSuffix.head) // This is super slow, so testedP should be ghost, and the list computed once. But it requires changing the signature, so this optimisation is done only for the zipper version
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
    findLongestMatchInnerMem(r, Nil(), 0, input, input, ListUtils.sizeTr(input))(using cache)
  }.ensuring (res => res == findLongestMatch(r, input) && cache.valid)

  def findLongestMatchInnerMem[C](r: Regex[C], testedP: List[C], testedPSize: BigInt, testedSuffix: List[C], totalInput: List[C], totalInputSize: BigInt)(using cache: Cache[C]): (List[C], List[C]) = {
    require(testedPSize == testedP.size)

    if (r.lostCause) {
      (Nil[C](), totalInput)
    } else if (testedPSize == totalInputSize) {
      if (r.nullable) {
        (testedP, Nil[C]())
      } else {
        (Nil[C](), totalInput)
      }
    } else {
      val newP = testedP ++ List(testedSuffix.head)
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

  // ---------------------------------------------------- Regex normalisation and simplification ----------------------------------------------------
  
  /** Removes useless Concatenation, i.e., Concat(EmptyExpr(), r) = r and Concat(r, EmptyExpr()) = r
    *
    * @param r
    * @return
    */
  def removeUselessConcat[C](r: Regex[C]): Regex[C] = {
    r match {
      case Concat(EmptyExpr(), r2)  => removeUselessConcat(r2)
      case Concat(r1, EmptyExpr())  => removeUselessConcat(r1)
      case Concat(r1, r2) => Concat(removeUselessConcat(r1), removeUselessConcat(r2))
      case Union(r1, r2) => Union(removeUselessConcat(r1), removeUselessConcat(r2))
      case Star(rInner) => Star(removeUselessConcat(rInner))
      case _ => r
    }
  }.ensuring (res => validRegex(res) && res.nullable == r.nullable)

 

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
  
}
