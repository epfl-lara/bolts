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

object ZipperRegex {
  import VerifiedRegex.*
  import VerifiedRegexMatcher.*
  import stainless.lang.Set
  import MemoisationZipper.*
  
  /**
    * Context[C] represent sequences of expressions
    * Zipper[C] are sets of Context[C], and they represent disjunctions of expressions
    */
  case class Context[C](exprs: List[Regex[C]]){

    lazy val lostCause: Boolean = exprs.exists(r => r.lostCause)
    inline def prepend(r: Regex[C]): Context[C] = {
      Context(r :: exprs)
    }
    inline def forall(p: Regex[C] => Boolean): Boolean = exprs.forall(p)
    inline def exists(p: Regex[C] => Boolean): Boolean = exprs.exists(p)
    inline def isEmpty: Boolean = exprs.isEmpty
    inline def head: Regex[C] = {
      exprs.head
    }
    inline def tail: Context[C] = {
      Context(exprs.tail)
    }
  }
  type Zipper[C] = Set[Context[C]]

 

  def focus[C](r: Regex[C]): Zipper[C] = {
    Set(Context(List(r)))
  }.ensuring(res => unfocusZipper(res.toList) == r)



  def derivationStepZipperUp[C](context: Context[C], a: C): Zipper[C] = {
    context.exprs match {
      case Cons(right, parent) if right.nullable => derivationStepZipperDown(right, Context(parent), a) ++ derivationStepZipperUp(Context(parent), a)
      case Cons(right, parent) => derivationStepZipperDown(right, Context(parent), a)
      case Nil() => Set()
    }
  }


  def derivationStepZipperDown[C](expr: Regex[C], context: Context[C], a: C): Zipper[C] = {
    expr match {
      case ElementMatch(c) if c == a => Set(context)
      case Union(rOne, rTwo) => derivationStepZipperDown(rOne, context, a) ++ derivationStepZipperDown(rTwo, context, a)
      case Concat(rOne, rTwo) if rOne.nullable => derivationStepZipperDown(rOne, context.prepend(rTwo), a) ++ derivationStepZipperDown(rTwo, context, a)
      case Concat(rOne, rTwo) => derivationStepZipperDown(rOne, context.prepend(rTwo), a)
      case Star(rInner) => derivationStepZipperDown(rInner, context.prepend(Star(rInner)), a)
      case _ => Set()
    }
  }

  def derivationZipper[C](z: Zipper[C], input: List[C]): Zipper[C] = {
    input match {
      case Cons(hd, tl) => derivationZipper(derivationStepZipper(z, hd), tl)
      case Nil()        => z
    }
  }

  // @inlineOnce
  def derivationStepZipper[C](z: Zipper[C], a: C): Zipper[C] = {
    z.flatMap(c => derivationStepZipperUp(c, a))
  }

  def derivationStepZipperSimp[C](z: Zipper[C], a: C): Zipper[C] = {
    z.flatMap(c => derivationStepZipperUp(c, a)).filter(c => !c.lostCause)
  }

  def nullableContext[C](c: Context[C]): Boolean = {
    c.forall(r => r.nullable)
  }
  def nullableZipper[C](z: Zipper[C]): Boolean = {
    z.exists(c => nullableContext(c))
  }

  // def lostCauseContext[C](c: Context[C]): Boolean = {
  //   c.exists(r => r.lostCause)
  // }.ensuring(res => res == getLanguageWitness(c).isEmpty)

  
  def lostCauseZipper[C](z: Zipper[C]): Boolean = {
    z.forall(c => c.lostCause)
  }.ensuring(res => res == getLanguageWitness(z).isEmpty)
  

  def matchZipper[C](z: Zipper[C], input: List[C]): Boolean = {
    if (input.isEmpty) nullableZipper(z) else matchZipper(derivationStepZipper(z, input.head), input.tail)
  }

  // @tailrec
  def matchZipperVector[C](z: Zipper[C], input: Vector[C], i: BigInt = 0): Boolean = {
    if i == input.size then nullableZipper(z) else matchZipperVector(derivationStepZipper(z, input(i)), input, i + 1)
  }

  // @tailrec
  def matchZipperVectorMem[C](z: Zipper[C], input: Vector[C], i: BigInt = 0)(using cacheUp: MemoisationZipper.CacheUp[C], cacheDown: MemoisationZipper.CacheDown[C]): Boolean = {
    if i == input.size then nullableZipper(z) else matchZipperVectorMem(derivationStepZipperMem(z, input(i)), input, i + 1)
  }.ensuring(res => res == matchZipperVector(z, input, i))


  def prefixMatchZipper[C](z: Zipper[C], input: List[C]): Boolean = {
    if (input.isEmpty) !lostCauseZipper(z) else prefixMatchZipper(derivationStepZipper(z, input.head), input.tail)
  }

  def prefixMatchZipperVector[C](z: Zipper[C], input: Vector[C], i: BigInt = 0): Boolean = {
    if (i == input.size) !lostCauseZipper(z) else prefixMatchZipperVector(derivationStepZipper(z, input(i)), input, i + 1)
  }

  def prefixMatchZipperVectorMem[C](z: Zipper[C], input: Vector[C], i: BigInt = 0)(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = {
    if (i == input.size) !lostCauseZipper(z) else prefixMatchZipperVectorMem(derivationStepZipperMem(z, input(i)), input, i + 1)
  }.ensuring(res => res == prefixMatchZipperVector(z, input, i))

  // MEMOISED -----------------------------------------------------------------------------------------------------
  def derivationStepZipperUpMem[C](context: Context[C], a: C)(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Zipper[C] = {
    cacheUp.get(context, a) match {
      case Some(res) => res
      case None() => {
        val res: Zipper[C] = context.exprs match {
          case Cons(right, parent) if right.nullable => derivationStepZipperDownMem(right, Context(parent), a) ++ derivationStepZipperUpMem(Context(parent), a)
          case Cons(right, parent) => derivationStepZipperDownMem(right, Context(parent), a)
          case Nil() => Set()
        }
        cacheUp.update(context, a, res)
        res
      }
    }
  }.ensuring(res => res == derivationStepZipperUp(context, a))

  def derivationStepZipperDownMem[C](expr: Regex[C], context: Context[C], a: C)(using cacheDown: CacheDown[C]): Zipper[C] = {
    cacheDown.get(expr, context, a) match {
      case Some(res) => res
      case None() => {
        val res: Zipper[C] = expr match {
          case ElementMatch(c) if c == a => Set(context)
          case Union(rOne, rTwo) => derivationStepZipperDownMem(rOne, context, a) ++ derivationStepZipperDownMem(rTwo, context, a)
          case Concat(rOne, rTwo) if rOne.nullable => derivationStepZipperDownMem(rOne, context.prepend(rTwo), a) ++ derivationStepZipperDownMem(rTwo, context, a)
          case Concat(rOne, rTwo) => derivationStepZipperDownMem(rOne, context.prepend(rTwo), a)
          case Star(rInner) => derivationStepZipperDownMem(rInner, context.prepend(Star(rInner)), a)
          case _ => Set()
        }
        cacheDown.update(expr, context, a, res)
        res
      }
    }
  }.ensuring(res => res == derivationStepZipperDown(expr, context, a))

  @extern
  def derivationStepZipperMem[C](z: Zipper[C], a: C)(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Zipper[C] = {
    
    def derivUpMem(c: Context[C]): Zipper[C] = derivationStepZipperUpMem(c, a)
    
    z.flatMap(derivUpMem) // rejected by stainless because of effects in the lambda's body
  }.ensuring(res => res == derivationStepZipper(z, a))

  @extern
  def derivationStepZipperSimpMem[C](z: Zipper[C], a: C)(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Zipper[C] = {
    
    def derivUpMem(c: Context[C]): Zipper[C] = derivationStepZipperUpMem(c, a)

    z.flatMap(derivUpMem).filter(c => !c.lostCause) // rejected by stainless because of effects in the lambda's body
  }.ensuring(res => res == derivationStepZipperSimp(z, a))

  def matchZipperMem[C](z: Zipper[C], input: List[C])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = {
    if (input.isEmpty) nullableZipper(z) else matchZipperMem(derivationStepZipperMem(z, input.head), input.tail)
  }.ensuring(res => res == matchZipper(z, input))


 


  // --------- Find Longest Match Zipper ------------------------------

  def findLongestMatchZipperFast[C](z: Zipper[C], input: Vector[C]): (Vector[C], Vector[C]) = {
    val prefixLength = findLongestMatchInnerZipperFast(z, Nil(), 0, input.list, input, input.size)
    input.splitAt(prefixLength)
  }.ensuring (res => (res._1.list, res._2.list) == findLongestMatchZipper(z, input.list) && res._1 ++ res._2 == input)
  
  def findLongestMatchInnerZipperFast[C](z: Zipper[C], @ghost testedP: List[C], testedPSize: BigInt, @ghost testedSuffix: List[C], totalInput: Vector[C], totalInputSize: BigInt): BigInt = {
    if (lostCauseZipper(z)) {
      // (Nil[C](), totalInput)
      BigInt(0)
    } else if (testedPSize == totalInputSize) {
      if (nullableZipper(z)) {
        // (testedP, Nil[C]())
        testedPSize
      } else {
        // (Nil[C](), totalInput)
        BigInt(0)
      }
    } else {
      if (nullableZipper(z)) {
        val recursive = findLongestMatchInnerZipperFast(derivationStepZipper(z, totalInput(testedPSize)), testedP ++ List(totalInput(testedPSize)), testedPSize + 1, testedSuffix.tail, totalInput, totalInputSize)
        if (recursive == 0) {
          // (testedP, testedSuffix)
          testedPSize
        } else {
          recursive
        }
      } else {
        findLongestMatchInnerZipperFast(derivationStepZipper(z, totalInput(testedPSize)), testedP ++ List(totalInput(testedPSize)), testedPSize + 1, testedSuffix.tail, totalInput, totalInputSize)
      }
    }
  }.ensuring (res => findLongestMatchInnerZipper(z, testedP, testedPSize, testedSuffix, totalInput.list, totalInputSize)._1.size == res) 

  // ------------------------------------------- MEMOIZATION ----------------------------------------------
  def findLongestMatchZipperFastMem[C](z: Zipper[C], input: Vector[C])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): (Vector[C], Vector[C]) = {
    val prefixLength = findLongestMatchInnerZipperFastMem(cacheUp, cacheDown, z, Nil(), 0, input.list, input, input.size)
    input.splitAt(prefixLength)
  }.ensuring (res => cacheUp.valid && cacheDown.valid && res == findLongestMatchZipperFast(z, input))
  
  def findLongestMatchInnerZipperFastMem[C](cacheUp: CacheUp[C], cacheDown: CacheDown[C], z: Zipper[C], @ghost testedP: List[C], testedPSize: BigInt, @ghost testedSuffix: List[C], totalInput: Vector[C], totalInputSize: BigInt): BigInt = {
    
    if (lostCauseZipper(z)) {
      // (Nil[C](), totalInput)
      BigInt(0)
    } else if (testedPSize == totalInputSize) {
      if (nullableZipper(z)) {
        // (testedP, Nil[C]())
        testedPSize
      } else {
        // (Nil[C](), totalInput)
        BigInt(0)
      }
    } else {
      if (nullableZipper(z)) {
        val recursive = findLongestMatchInnerZipperFastMem(cacheUp, cacheDown, derivationStepZipperMem(z, totalInput(testedPSize))(using cacheUp, cacheDown), testedP ++ List(totalInput(testedPSize)), testedPSize + 1, testedSuffix.tail, totalInput, totalInputSize)
        if (recursive == 0) {
          // (testedP, testedSuffix)
          testedPSize
        } else {
          recursive
        }
      } else {
        findLongestMatchInnerZipperFastMem(cacheUp, cacheDown, derivationStepZipperMem(z, totalInput(testedPSize))(using cacheUp, cacheDown), testedP ++ List(totalInput(testedPSize)), testedPSize + 1, testedSuffix.tail, totalInput, totalInputSize)
      }
    }
  }.ensuring (res => cacheUp.valid && cacheDown.valid && res == findLongestMatchInnerZipperFast(z, testedP, testedPSize, testedSuffix, totalInput, totalInputSize))

  // ------------------------------------------- END MEMOIZATION -------------------------------------------
  
  def findLongestMatchZipper[C](z: Zipper[C], input: List[C]): (List[C], List[C]) = {
    findLongestMatchInnerZipper(z, Nil(), 0, input, input, ListUtils.sizeTr(input))
  }.ensuring (res => res._1 ++ res._2 == input)
  
  def findLongestMatchInnerZipper[C](z: Zipper[C], testedP: List[C], testedPSize: BigInt, testedSuffix: List[C], totalInput: List[C], totalInputSize: BigInt): (List[C], List[C]) = {
    if (lostCauseZipper(z)) {
      (Nil[C](), totalInput)
    } else if (testedPSize == totalInputSize) {
      if (nullableZipper(z)) {
        (testedP, Nil[C]())
      } else {
        (Nil[C](), totalInput)
      }
    } else {
      val newP = testedP ++ List(testedSuffix.head)
      if (nullableZipper(z)) {
        val recursive = findLongestMatchInnerZipper(derivationStepZipper(z, testedSuffix.head), newP, testedPSize + 1, testedSuffix.tail, totalInput, totalInputSize)
        if (recursive._1.isEmpty) {
          (testedP, testedSuffix)
        } else {
          recursive
        }
      } else {
        findLongestMatchInnerZipper(derivationStepZipper(z, testedSuffix.head), newP, testedPSize + 1, testedSuffix.tail, totalInput, totalInputSize)
      }
    }
  }.ensuring (res => res._1 ++ res._2 == totalInput && (res._1.isEmpty || res._1.size >= testedP.size)) 


}
