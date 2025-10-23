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
    require(exprs.forall(validRegex))

    lazy val lostCause: Boolean = exprs.exists(r => r.lostCause)
    inline def prepend(r: Regex[C]): Context[C] = {
      require(validRegex(r))
      Context(r :: exprs)
    }
    inline def forall(p: Regex[C] => Boolean): Boolean = exprs.forall(p)
    inline def exists(p: Regex[C] => Boolean): Boolean = exprs.exists(p)
    inline def isEmpty: Boolean = exprs.isEmpty
    inline def head: Regex[C] = {
      require(!isEmpty)
      exprs.head
    }
    inline def tail: Context[C] = {
      require(!isEmpty)
      Context(exprs.tail)
    }
    @ghost
    inline def concat(that: Context[C]): Context[C] = { 
      ghostExpr(ListUtils.lemmaConcatPreservesForall(exprs, that.exprs, validRegex))
      Context(exprs ++ that.exprs)
    }
  }
  type Zipper[C] = Set[Context[C]]

  @ghost
  def unfocusZipper[C](zl: List[Context[C]]): Regex[C] = {
    generalisedUnion(unfocusZipperList(zl))
  }.ensuring(res => validRegex(res))

  @ghost
  def unfocusZipperList[C](zl: List[Context[C]]): List[Regex[C]] = {
    decreases(zl)
    zl match {
      case Cons(hd, tl) => Cons(generalisedConcat(hd.exprs), unfocusZipperList(tl))
      case Nil()        => Nil()
    }
  }.ensuring(res => res.forall(validRegex))

  def focus[C](r: Regex[C]): Zipper[C] = {
    require(validRegex(r))
    Set(Context(List(r)))
  }.ensuring(res => unfocusZipper(res.toList) == r)

  @inlineOnce
  @ghost
  @opaque
  def lemmaForallRegexDepthBiggerThanTransitive[C](@induct l: List[Regex[C]], a: BigInt, b: BigInt): Unit = {
    require(a >= b)
    require(l.forall(r => b >= regexDepth(r)))
    
  }.ensuring(_ => l.forall(r => a >= regexDepth(r)))

  @inlineOnce
  @ghost
  @opaque
  def lemmaForallContextDepthBiggerThanTransitive[C](@induct l: List[Context[C]], a: BigInt, b: BigInt, f: Context[C] => BigInt): Unit = {
    require(a >= b)
    require(l.forall(r => b >= f(r)))
    
  }.ensuring(_ => l.forall(c => a >= f(c)))

  @ghost
  @pure
  def contextDepth[C](c: Context[C]): BigInt = {
    decreases(c.exprs.size)
    c.exprs match {
      case Cons(hd, tl) => 
        val res = Utils.maxBigInt(regexDepth(hd), contextDepth(Context(tl)))
        lemmaForallRegexDepthBiggerThanTransitive(tl, res, contextDepth(Context(tl)))
        res
      case Nil()        => BigInt(0)
    }
  }.ensuring(res => res >= 0 && c.exprs.forall(r => res >= regexDepth(r)))

  @ghost
  @pure
  def contextDepthTotal[C](c: Context[C]): BigInt = {
    decreases(c.exprs.size)
    c.exprs match {
      case Cons(hd, tl) => 
        regexDepthTotal(hd) + contextDepthTotal(Context(tl))
      case Nil()        => BigInt(1)
    }
  }.ensuring(res => res >= 0)

  @ghost
  @pure  
  def zipperDepth[C](zl: List[Context[C]]): BigInt = {
    decreases(zl.size)
    zl match {
      case Cons(hd, tl) => 
        val res = Utils.maxBigInt(contextDepth(hd), zipperDepth(tl))
        lemmaForallContextDepthBiggerThanTransitive(tl, res, zipperDepth(tl), contextDepth)
        res
      case Nil() => BigInt(0)
    }
  }.ensuring(res => res >= 0 && zl.forall(c => res >= contextDepth(c)))

  @ghost
  @pure  
  def zipperDepthTotal[C](zl: List[Context[C]]): BigInt = {
    decreases(zl.size)
    zl match {
      case Cons(hd, tl) => 
        contextDepthTotal(hd) + zipperDepthTotal(tl)
      case Nil() => BigInt(0)
    }
  }.ensuring(res => res >= 0)


  def derivationStepZipperUp[C](context: Context[C], a: C): Zipper[C] = {
    decreases(context.exprs.size)
    context.exprs match {
      case Cons(right, parent) if right.nullable => derivationStepZipperDown(right, Context(parent), a) ++ derivationStepZipperUp(Context(parent), a)
      case Cons(right, parent) => derivationStepZipperDown(right, Context(parent), a)
      case Nil() => Set()
    }
  }


  def derivationStepZipperDown[C](expr: Regex[C], context: Context[C], a: C): Zipper[C] = {
    require(validRegex(expr))
    decreases(regexDepth(expr))
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
    decreases(input.size)
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

  @ghost
  def getLanguageWitness[C](c: Context[C]): Option[List[C]] = {
    decreases(c.exprs.size)
    c.exprs match
      case Cons(hd, tl) => VerifiedRegex.getLanguageWitness(hd) match
        case Some(v) => 
          getLanguageWitness(Context(tl)) match
            case Some(v2) => Some(v ++ v2)
            case None() => None()
        case None() => None()
      case Nil() => Some(List())
  }.ensuring(res => res.isEmpty == c.exists(r => r.lostCause))

  def lostCauseZipper[C](z: Zipper[C]): Boolean = {
    ghostExpr({
      if !z.forall(c => c.lostCause) then
        ListUtils.lemmaNotForallThenExists(z.toList, (c: Context[C]) => c.lostCause)
        assert(z.exists(c => !c.lostCause))
        assert(getLanguageWitness(z).isDefined)
      else  
        assert(z.forall(c => c.lostCause))
        ListUtils.lemmaForallThenNotExists(z.toList, (c: Context[C]) => c.lostCause)
        assert(!z.exists(c => !c.lostCause))
        assert(getLanguageWitness(z).isEmpty)
    })
    z.forall(c => c.lostCause)
  }.ensuring(res => res == getLanguageWitness(z).isEmpty)
  
  @ghost
  def getLanguageWitness[C](z: Zipper[C]): Option[List[C]] = {
    if z.exists(c => !c.lostCause) then
      val notLostCauseWitness = SetUtils.getWitness(z, (c: Context[C]) => !c.lostCause)
      getLanguageWitness(notLostCauseWitness)
    else
      None()
  }.ensuring(res => res.isDefined == z.exists(c => !c.lostCause))

  def matchZipper[C](z: Zipper[C], input: List[C]): Boolean = {
    decreases(input.size)
    if (input.isEmpty) nullableZipper(z) else matchZipper(derivationStepZipper(z, input.head), input.tail)
  }

  // @tailrec
  def matchZipperVector[C](z: Zipper[C], input: Vector[C], i: BigInt = 0): Boolean = {
    require(i >= 0 && i <= input.size)
    decreases(input.size  - i)
    if i == input.size then nullableZipper(z) else matchZipperVector(derivationStepZipper(z, input(i)), input, i + 1)
  }

  // @tailrec
  def matchZipperVectorMem[C](z: Zipper[C], input: Vector[C], i: BigInt = 0)(using cacheUp: MemoisationZipper.CacheUp[C], cacheDown: MemoisationZipper.CacheDown[C]): Boolean = {
    require(i >= 0 && i <= input.size)
    decreases(input.size  - i)
    if i == input.size then nullableZipper(z) else matchZipperVectorMem(derivationStepZipperMem(z, input(i)), input, i + 1)
  }.ensuring(res => res == matchZipperVector(z, input, i))

  @ghost
  @inlineOnce
  @opaque
  def lemmaMatchZipperVectorEquivalent[C](z: Zipper[C], input: Vector[C], i: BigInt = 0): Unit = {
    require(i >= 0 && i <= input.size)
    decreases(input.size - i)
    if i == input.size then
      assert(input.dropList(i).isEmpty)
    else 
      lemmaMatchZipperVectorEquivalent(derivationStepZipper(z, input(i)), input, i + 1)
      ListUtils.lemmaDropApply(input.list, i)
      ListUtils.lemmaDropTail(input.list, i)
      assert(input.dropList(i) == (input(i) :: input.dropList(i + 1)))
      assert(matchZipper(z, input.dropList(i)) == matchZipperVector(z, input, i))
  }.ensuring(_ => matchZipper(z, input.dropList(i)) == matchZipperVector(z, input, i))

  def prefixMatchZipper[C](z: Zipper[C], input: List[C]): Boolean = {
    decreases(input.size)
    if (input.isEmpty) !lostCauseZipper(z) else prefixMatchZipper(derivationStepZipper(z, input.head), input.tail)
  }

  def prefixMatchZipperVector[C](z: Zipper[C], input: Vector[C], i: BigInt = 0): Boolean = {
    require(i >= 0 && i <= input.size)
    decreases(input.size - i)
    if (i == input.size) !lostCauseZipper(z) else prefixMatchZipperVector(derivationStepZipper(z, input(i)), input, i + 1)
  }

  def prefixMatchZipperVectorMem[C](z: Zipper[C], input: Vector[C], i: BigInt = 0)(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = {
    require(i >= 0 && i <= input.size)
    decreases(input.size - i)
    if (i == input.size) !lostCauseZipper(z) else prefixMatchZipperVectorMem(derivationStepZipperMem(z, input(i)), input, i + 1)
  }.ensuring(res => res == prefixMatchZipperVector(z, input, i))

  @ghost
  @inlineOnce
  @opaque
  def lemmaprefixMatchZipperVectorEquivalent[C](z: Zipper[C], input: Vector[C], i: BigInt = 0): Unit = {
    require(i >= 0 && i <= input.size)
    decreases(input.size - i)
    if i == input.size then
      assert(input.dropList(i).isEmpty)
    else 
      lemmaprefixMatchZipperVectorEquivalent(derivationStepZipper(z, input(i)), input, i + 1)
      ListUtils.lemmaDropApply(input.list, i)
      ListUtils.lemmaDropTail(input.list, i)
      assert(input.dropList(i) == (input(i) :: input.dropList(i + 1)))
      assert(prefixMatchZipper(z, input.dropList(i)) == prefixMatchZipperVector(z, input, i))
  }.ensuring(_ => prefixMatchZipper(z, input.dropList(i)) == prefixMatchZipperVector(z, input, i))

  @ghost def appendTo[C](z: Zipper[C], c: Context[C]): Zipper[C] = {
    z.map(cz => cz.concat(c))
  }

  // MEMOISED -----------------------------------------------------------------------------------------------------
  def derivationStepZipperUpMem[C](context: Context[C], a: C)(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Zipper[C] = {
    decreases(context.exprs.size)
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
    require(validRegex(expr))
    decreases(regexDepth(expr))
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
    ghostExpr(SetUtils.lemmaFlatMapWithExtEqualFunctionsOnSetThenSame(z, (c: Context[C]) => derivationStepZipperUpMem(c, a)(using snapshot(cacheUp), snapshot(cacheDown)), (c: Context[C]) => derivationStepZipperUp(c, a)))
    
    def derivUpMem(c: Context[C]): Zipper[C] = derivationStepZipperUpMem(c, a)
    
    z.flatMap(derivUpMem) // rejected by stainless because of effects in the lambda's body
  }.ensuring(res => res == derivationStepZipper(z, a))

  @extern
  def derivationStepZipperSimpMem[C](z: Zipper[C], a: C)(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Zipper[C] = {
    ghostExpr(SetUtils.lemmaFlatMapWithExtEqualFunctionsOnSetThenSame(z, (c: Context[C]) => derivationStepZipperUpMem(c, a)(using snapshot(cacheUp), snapshot(cacheDown)), (c: Context[C]) => derivationStepZipperUp(c, a)))
    
    def derivUpMem(c: Context[C]): Zipper[C] = derivationStepZipperUpMem(c, a)

    z.flatMap(derivUpMem).filter(c => !c.lostCause) // rejected by stainless because of effects in the lambda's body
  }.ensuring(res => res == derivationStepZipperSimp(z, a))

  def matchZipperMem[C](z: Zipper[C], input: List[C])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = {
    decreases(input.size)
    if (input.isEmpty) nullableZipper(z) else matchZipperMem(derivationStepZipperMem(z, input.head), input.tail)
  }.ensuring(res => res == matchZipper(z, input))


  // PROOFS -----------------------------------------------------------------------------------------------------

  @ghost
  @inlineOnce
  @opaque
  def lemmaGetWitnessMatchesZipper[C](z: Zipper[C]): Unit = {
    require(!lostCauseZipper(z))
    assert(getLanguageWitness(z).isDefined)
    assert(!z.forall(c => c.lostCause))
    ListUtils.lemmaNotForallThenExists(z.toList, (c: Context[C]) => c.lostCause)
    assert(z.exists(c => !c.lostCause))
    val notLostCauseWitness = SetUtils.getWitness(z, (c: Context[C]) => !c.lostCause)
    lemmaGetWitnessMatchesContext(notLostCauseWitness)
    assert(matchZipper(Set(notLostCauseWitness), getLanguageWitness(notLostCauseWitness).get))
    assert(z.contains(notLostCauseWitness))
    val s = getLanguageWitness(notLostCauseWitness).get
    SetUtils.lemmaContainsThenExists(z, notLostCauseWitness, c => matchZipper(Set(c), s))
    assert(z.exists(c => matchZipper(Set(c), s)))
    lemmaExistsMatchingContextThenMatchingString(z.toList, s)
  }.ensuring(_ => matchZipper(z, getLanguageWitness(z).get))

  @ghost
  @inlineOnce
  @opaque
  def lemmaGetWitnessMatchesContext[C](c: Context[C]): Unit = {
    require(!c.lostCause)
    decreases(c.exprs.size)
    c.exprs match
      case Cons(hd, tl) => VerifiedRegex.getLanguageWitness(hd) match
        case Some(v1) => 
          getLanguageWitness(Context(tl)) match
            case Some(v2) => 
              lemmaGetWitnessMatches(hd)
              lemmaGetWitnessMatchesContext(Context(tl))
              assert(matchR(hd, v1))
              theoremZipperRegexEquiv(Set(Context(List(hd))), List(Context(List(hd))), hd, v1)
              assert(matchZipper(Set(Context(List(hd))), v1))
              assert(matchZipper(Set(Context(tl)), v2))
              lemmaConcatenateContextMatchesConcatOfStrings(Context(List(hd)), Context(tl), v1, v2)
            case None() => () 
        case None() => () 
      case Nil() => lemmaZipperOfEmptyContextMatchesEmptyString(Set(c), List())
  }.ensuring(_ => matchZipper(Set(c), getLanguageWitness(c).get))

  @ghost
  @inlineOnce
  @opaque
  def lemmaMatchThenPrefixMatchZipper[C](z: Zipper[C], prefix: List[C], s: List[C]): Unit = {
    require(ListUtils.isPrefix(prefix, s))
    require(matchZipper(z, s))
    decreases(prefix.size)
    if(!prefixMatchZipper(z, prefix)) {
      lemmaNotPrefixMatchThenCannotMatchLonger(z, prefix, s)
      check(false)
    }
    
  }.ensuring(_ => prefixMatchZipper(z, prefix))

  @ghost
  @opaque
  @inlineOnce // type Zipper[C] = Set[Context[C]]
  def prefixMatchZipperRegexEquiv[C](z: Zipper[C], zl: List[Context[C]], r: Regex[C], prefix: List[C]): Unit = {
    require(validRegex(r))
    require(z.toList == zl)
    require(r == unfocusZipper(zl))

    if !prefixMatch(r, prefix) && prefixMatchZipper(z, prefix) then
      lemmaPrefixMatchThenExistsStringThatMatches(z, prefix)
      assert(Exists((ss: List[C]) => matchZipper(z, ss) && ListUtils.isPrefix(prefix, ss)))
      val witness = pickWitness[List[C]]((ss: List[C]) => matchZipper(z, ss) && ListUtils.isPrefix(prefix, ss))
      assert(matchZipper(z, witness))
      theoremZipperRegexEquiv(z, zl, r, witness)
      assert(matchR(r, witness))
      VerifiedRegexMatcher.lemmaNotPrefixMatchThenCannotMatchLonger(r, prefix, witness)
      check(false)
    else if prefixMatch(r, prefix) && !prefixMatchZipper(z, prefix) then
      VerifiedRegexMatcher.lemmaPrefixMatchThenExistsStringThatMatches(r, prefix)
      assert(Exists((ss: List[C]) => matchR(r, ss) && ListUtils.isPrefix(prefix, ss)))
      val witness = pickWitness[List[C]]((ss: List[C]) => matchR(r, ss) && ListUtils.isPrefix(prefix, ss))
      assert(matchR(r, witness))
      theoremZipperRegexEquiv(z, zl, r, witness)
      assert(matchZipper(z, witness))
      lemmaMatchThenPrefixMatchZipper(z, prefix, witness)
      check(false)



    

  }.ensuring(_ => prefixMatch(r, prefix) == prefixMatchZipper(z, prefix))



  @ghost
  @inlineOnce
  @opaque
  def lemmaNotPrefixMatchThenCannotMatchLonger[C](z: Zipper[C], prefix: List[C], s: List[C]): Unit = {
    require(ListUtils.isPrefix(prefix, s))
    require(!prefixMatchZipper(z, prefix))
    decreases(prefix.size)
    prefix match
      case Nil() => lemmaLostCauseCannotMatch(z, s)
      case Cons(hd, tl) => lemmaNotPrefixMatchThenCannotMatchLonger(derivationStepZipper(z, hd), tl, s.tail)
    
  }.ensuring(_ => !matchZipper(z, s))

  @ghost
  @inlineOnce
  @opaque
  def lemmaPrefixMatchThenExistsStringThatMatches[C](z: Zipper[C], prefix: List[C]): Unit = {
    require(prefixMatchZipper(z, prefix))
    decreases(prefix.size)
    prefix match
      case Nil() => 
        val witness = getLanguageWitness(z).get
        lemmaGetWitnessMatchesZipper(z)
        assert(matchZipper(z, witness))
        assert(ListUtils.isPrefix(prefix, witness))
        ExistsThe(witness)((s: List[C]) => matchZipper(z, s) && ListUtils.isPrefix(prefix, s))
      case Cons(hd, tl) => 
        val zz = derivationStepZipper(z, hd)
        lemmaPrefixMatchThenExistsStringThatMatches(zz, tl)
        val p: List[C] => Boolean = (s: List[C]) => matchZipper(zz, s) && ListUtils.isPrefix(tl, s)
        check(Exists(p))
        val witness = pickWitness[List[C]](p)
        assert(matchZipper(derivationStepZipper(z, hd), witness))
        assert(ListUtils.isPrefix(tl, witness))
        assert(matchZipper(z, hd :: witness))
        assert(ListUtils.isPrefix(prefix, hd :: witness))
        ExistsThe(hd :: witness)((s: List[C]) => matchZipper(z, s) && ListUtils.isPrefix(prefix, s))

  }.ensuring(_ => Exists((s: List[C]) => matchZipper(z, s) && ListUtils.isPrefix(prefix, s)))

  @ghost
  @inlineOnce
  @opaque
  def lemmaLostCauseCannotMatch[C](z: Zipper[C], s: List[C]): Unit = {
    require(lostCauseZipper(z))
    decreases(s.size)
    s match {
      case Nil() => 
        if(matchZipper(z, s)) {
          assert(nullableZipper(z))
          lemmaZipperNullableThenNotLostCause(z)
          check(false)
        }
      case Cons(hd, tl) => 
        lemmaLostCauseFixPoint(z, hd)
        assert(lostCauseZipper(derivationStepZipper(z, hd)))
        lemmaLostCauseCannotMatch(derivationStepZipper(z, hd), tl)
    }
  }.ensuring(_ => !matchZipper(z, s))

  @ghost
  @inlineOnce
  @opaque
  def lemmaLostCauseFixPoint[C](z: Zipper[C], a: C): Unit = {
    require(lostCauseZipper(z))
    val derivStep = derivationStepZipper(z, a)
    val f = (cz: Context[C]) => derivationStepZipperUp(cz, a)
    assert(derivStep == z.flatMap(f))
    assert(lostCauseZipper(derivStep) == derivStep.forall(cz => cz.lostCause))
    assert(z.forall(c => c.lostCause))
    if(!lostCauseZipper(derivStep)){
      assert(!derivStep.forall(c => c.lostCause))
      ListUtils.lemmaNotForallThenExists(derivStep.toList, (c: Context[C]) => c.lostCause)
      assert(derivStep.exists(c => !c.lostCause))
      val notLostCauseWitness = ListUtils.getWitness(derivStep.toList, (c: Context[C]) => !c.lostCause)
      assert(derivStep.contains(notLostCauseWitness))
      assert(!notLostCauseWitness.lostCause)
      SetUtils.lemmaFlatMapPost(z, f, notLostCauseWitness)
      assert(z.exists(ct => f(ct).contains(notLostCauseWitness)))
      val witnessContext = SetUtils.getWitness(z, (ct: Context[C]) => f(ct).contains(notLostCauseWitness))
      assert(z.contains(witnessContext))
      assert(f(witnessContext).contains(notLostCauseWitness))
      ListSpecs.forallContained(z.toList, c => c.lostCause, witnessContext)
      assert(witnessContext.lostCause)
      lemmaLostCauseFixPointDerivUp(witnessContext, a)
      assert(lostCauseZipper(f(witnessContext)))
      ListSpecs.forallContained(f(witnessContext).toList, c => c.lostCause, notLostCauseWitness)
      check(false)
    }
  }.ensuring(_ => lostCauseZipper(derivationStepZipper(z, a)))

  @ghost
  @inlineOnce
  @opaque
  def lemmaLostCauseFixPointDerivUp[C](ctx: Context[C], a: C): Unit = {
    require(ctx.lostCause)
    decreases(ctx.exprs.size)
    ctx.exprs match {
      case Cons(right, parent) if right.nullable => 
        lemmaNullableThenNotLostCause(right)
        lemmaLostCauseFixPointDerivUp(Context(parent), a)
        lemmaLostCauseFixPointDerivDown(right, Context(parent), a)
        SetUtils.lemmaConcatPreservesForall(derivationStepZipperDown(right, Context(parent), a), derivationStepZipperUp(Context(parent), a), c => c.lostCause)
      case Cons(right, parent) => 
        lemmaLostCauseFixPointDerivDown(right, Context(parent), a)
      case Nil() => ()
    }

  }.ensuring(_ => lostCauseZipper(derivationStepZipperUp(ctx, a)))

  @ghost
  @inlineOnce
  @opaque
  def lemmaLostCauseFixPointDerivDown[C](expr: Regex[C], ctx: Context[C], a: C): Unit = {
    require(validRegex(expr))
    require(expr.lostCause || ctx.lostCause)
    decreases(regexDepth(expr))
    expr match {
      case ElementMatch(c) if c == a => ()
      case Union(rOne, rTwo) => 
        lemmaLostCauseFixPointDerivDown(rOne, ctx, a)
        lemmaLostCauseFixPointDerivDown(rTwo, ctx, a)
        SetUtils.lemmaConcatPreservesForall(derivationStepZipperDown(rOne, ctx, a), derivationStepZipperDown(rTwo, ctx, a), c => c.lostCause)
      case Concat(rOne, rTwo) if rOne.nullable => 
        lemmaNullableThenNotLostCause(rOne)
        lemmaLostCauseFixPointDerivDown(rOne, ctx.prepend(rTwo), a)
        lemmaLostCauseFixPointDerivDown(rTwo, ctx, a)
        SetUtils.lemmaConcatPreservesForall(derivationStepZipperDown(rOne, ctx.prepend(rTwo), a), derivationStepZipperDown(rTwo, ctx, a), c => c.lostCause)
      case Concat(rOne, rTwo) => 
        lemmaLostCauseFixPointDerivDown(rOne, ctx.prepend(rTwo), a)
      case Star(rInner) => lemmaLostCauseFixPointDerivDown(rInner, ctx.prepend(Star(rInner)), a)
      case _ => ()
    }
    
  }.ensuring(_ => lostCauseZipper(derivationStepZipperDown(expr, ctx, a)))

  @ghost
  @inlineOnce
  @opaque
  def lemmaZipperNullableThenNotLostCause[C](z: Zipper[C]): Unit = {
    require(nullableZipper(z))
    assert(z.exists(c => nullableContext(c)))
    val nullableCtx: Context[C] = SetUtils.getWitness(z, (c: Context[C]) => nullableContext(c))
    assert(nullableContext(nullableCtx))
    lemmaContextForallValidExprs(nullableCtx, nullableCtx.exprs)
    assert(z.contains(nullableCtx))
    assert(nullableCtx.forall(r => r.nullable))
    if(nullableCtx.lostCause){
      assert(nullableCtx.exists(r => r.lostCause))
      val lostCauseRegex = ListUtils.getWitness(nullableCtx.exprs, (r: Regex[C]) => r.lostCause)
      assert(nullableCtx.exprs.contains(lostCauseRegex))
      assert(lostCauseRegex.lostCause)
      ListSpecs.forallContained(nullableCtx.exprs, (r: Regex[C]) => r.nullable, lostCauseRegex)
      ListSpecs.forallContained(nullableCtx.exprs, validRegex, lostCauseRegex)
      assert(lostCauseRegex.nullable)
      lemmaNullableThenNotLostCause(lostCauseRegex)
      check(false)
    }
    assert(!nullableCtx.lostCause)
    if (lostCauseZipper(z)) {
      assert(z.forall(c => c.lostCause))
      assert(z.toList.forall(c => c.lostCause))
      assert(z.contains(nullableCtx))
      ListSpecs.forallContained(z.toList, (c: Context[C]) => c.lostCause, nullableCtx)
      check(false)
    }
  }.ensuring(_ => !lostCauseZipper(z))

  @ghost
  @opaque
  @inlineOnce
  def lemmaZipperContainsContextThenUnfocusZipperListContains[C](zl: List[Context[C]], c: Context[C]): Unit = {
    require(zl.contains(c))
    decreases(zl.size)
    zl match {
      case Cons(hd, tl) => 
        if(hd != c){
          lemmaZipperContainsContextThenUnfocusZipperListContains(tl, c)
        }
      case Nil() => ()
    }
  }.ensuring(_ => unfocusZipperList(zl).contains(VerifiedRegex.generalisedConcat(c.exprs)))

  @ghost
  @opaque
  @inlineOnce
  def lemmaFilterLostCauseContextsPreserves[C](z: Zipper[C], zl: List[Context[C]], s: List[C]): Unit = {
    require(z.toList == zl)

    if (matchZipper(z, s)) {
      lemmaZipperMatchesExistsMatchingContext(zl, s)
      assert(z.exists(c => matchZipper(Set(c), s)))
      val witness = SetUtils.getWitness(z, (c: Context[C]) => matchZipper(Set(c), s))
      assert(z.contains(witness))
      assert(matchZipper(Set(witness), s))
      if (witness.lostCause) {
        lemmaLostCauseCannotMatch(Set(witness), s)
        check(false)
      }

      assert(!witness.lostCause)
      z.filterPost(c => !c.lostCause)(witness)
      assert(z.filter(c => !c.lostCause).contains(witness))
      SetUtils.lemmaContainsThenExists(z.filter(c => !c.lostCause), witness, c => matchZipper(Set(c), s))
      assert(z.filter(c => !c.lostCause).exists(c => matchZipper(Set(c), s)))
      lemmaExistsMatchingContextThenMatchingString(z.filter(c => !c.lostCause).toList, s)
      assert(matchZipper(z.filter(c => !c.lostCause), s))
    } else {
      if (matchZipper(z.filter(c => !c.lostCause), s)) {
        lemmaZipperMatchesExistsMatchingContext(z.filter(c => !c.lostCause).toList, s)
        assert(z.filter(c => !c.lostCause).exists(c => matchZipper(Set(c), s)))
        val witness = SetUtils.getWitness(z.filter(c => !c.lostCause), (c: Context[C]) => matchZipper(Set(c), s))
        assert(z.filter(c => !c.lostCause).contains(witness))
        assert(matchZipper(Set(witness), s))
        z.filterPost(c => !c.lostCause)(witness)
        assert(z.contains(witness))
        SetUtils.lemmaContainsThenExists(z, witness, c => matchZipper(Set(c), s))
        assert(z.exists(c => matchZipper(Set(c), s)))
        lemmaExistsMatchingContextThenMatchingString(z.toList, s)
        assert(matchZipper(z, s))
        check(false)

      }
      assert(!matchZipper(z.filter(c => !c.lostCause), s))

    }


  }.ensuring(_ => matchZipper(z, s) == matchZipper(z.filter(c => !c.lostCause), s))

  @ghost
  @opaque
  @inlineOnce
  def lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains[C](zl: List[Context[C]], r: Regex[C]): Unit = {
    require(unfocusZipperList(zl).contains(r))
    decreases(zl.size)
    zl match {
      case Cons(hd, tl) => 
        if(VerifiedRegex.generalisedConcat(hd.exprs) != r){
          lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains(tl, r)
        }
      case Nil() => ()
    }
  }.ensuring(_ => zl.exists(c => VerifiedRegex.generalisedConcat(c.exprs) == r))

  /**
   * Main theorem to prove the equivalence between a regex and its corresponding zipper
   */
  @ghost
  @opaque
  @inlineOnce // type Zipper[C] = Set[Context[C]]
  def theoremZipperRegexEquiv[C](z: Zipper[C], zl: List[Context[C]], r: Regex[C], s: List[C]): Unit = {
    require(validRegex(r))
    require(z.toList == zl)
    require(r == unfocusZipper(zl))
    decreases(zipperDepthTotal(zl), s.size)

    mainMatchTheorem(r, s)
    zl match {
      case Cons(hd, tl) if tl.isEmpty => {
        assert(r == generalisedConcat(hd.exprs))
        hd.exprs match {
          case Cons(hExp, tlExp) =>  {
            assert(r == generalisedUnion(unfocusZipperList(zl)))
            r match {
              case EmptyExpr() => lemmaZipperOfEmptyExprMatchesOnlyEmptyString(z, s)
              case EmptyLang() => lemmaZipperStartingWithEmptyLangMatchesNothing(z, Context(List(r)), s)
              case ElementMatch(a) => lemmaElementMatchZipperAcceptsOnlyThisChar(z, Context(List(ElementMatch(a))), a, s)
              case Union(r1, r2) => {
                mainMatchTheorem(r1, s)
                mainMatchTheorem(r2, s)
                assert(matchR(r, s) == (matchR(r1, s) || matchR(r2, s)))
                s match {
                  case Nil() => {
                    lemmaUnfocusPreservesNullability(r, z)
                    assert(nullableZipper(z) == r.nullable)
                    check(matchZipper(z, s) == matchR(r, s))
                  }
                  case Cons(shd, stl) => {
                    val deriv = derivationStepZipper(z, shd)
                    val derivUp = derivationStepZipperUp(Context(List(r)), shd)
                    val derivDown = derivationStepZipperDown(r, Context(List()), shd)
                    assert(derivUp == derivDown)
                    assert(derivDown == derivationStepZipperDown(r1, Context(List()), shd) ++ derivationStepZipperDown(r2, Context(List()), shd))
                    val z1 = derivationStepZipperDown(r1, Context(List()), shd)
                    val z2 = derivationStepZipperDown(r2, Context(List()), shd)
                    SetUtils.lemmaFlatMapOnSingletonSet(z, hd, (c: Context[C]) => derivationStepZipperUp(c, shd))
                    assert(deriv == z1 ++ z2)
                    assert(matchZipper(z1 ++ z2, stl) == matchZipper(z, s))
                    lemmaZipperConcatMatchesSameAsBothZippers(z1, z2, stl)
                    assert((matchZipper(z1, stl) || matchZipper(z2, stl)) == matchZipper(z1 ++ z2, stl))
                    assert((matchZipper(z1, stl) || matchZipper(z2, stl)) == matchZipper(z, s))
                    
                    val zR1 = Set(Context(List(r1)))
                    val zR2 = Set(Context(List(r2)))
                    val derivZR1 = derivationStepZipper(zR1, shd)
                    val derivZR2 = derivationStepZipper(zR2, shd)

                    val derivUpZR1 = derivationStepZipperUp(Context(List(r1)), shd)
                    val derivUpZR2 = derivationStepZipperUp(Context(List(r2)), shd)
                    SetUtils.lemmaFlatMapOnSingletonSet(zR1, Context(List(r1)), (c: Context[C]) => derivationStepZipperUp(c, shd))
                    SetUtils.lemmaFlatMapOnSingletonSet(zR2, Context(List(r2)), (c: Context[C]) => derivationStepZipperUp(c, shd))

                    val zR1Deriv = derivationStepZipperDown(r1, Context(List()), shd)
                    val zR2Deriv = derivationStepZipperDown(r2, Context(List()), shd)
                    assert(zR1Deriv == z1)
                    assert(zR2Deriv == z2)
                    assert(matchZipper(zR1, s) == matchZipper(zR1Deriv, stl))
                    assert(matchZipper(zR2, s) == matchZipper(zR2Deriv, stl))
                    assert((matchZipper(zR1, s) || matchZipper(zR2, s)) == matchZipper(z, s))
                    theoremZipperRegexEquiv(zR1, List(Context(List(r1))), r1, s)
                    theoremZipperRegexEquiv(zR2, List(Context(List(r2))), r2, s)
                  }
                }
              }
              case Concat(r1, r2) => {
                lemmaFindConcatSeparationEquivalentToExists(r1, r2, s)
                assert(matchR(r, s) == findConcatSeparation(r1, r2, Nil(), s, s).isDefined)
                s match {
                  case Nil() => {
                    lemmaUnfocusPreservesNullability(r, z)
                    assert(nullableZipper(z) == r.nullable)
                    check(matchZipper(z, s) == matchR(r, s))
                  }
                  case Cons(shd, stl) => {
                    if(tlExp.isEmpty){
                      // Here, we are in the case where the Concat is a Regex from the Zipper (the only one in its context)
                      val zDeriv = derivationStepZipper(z, shd)
                      val zDerivUp = derivationStepZipperUp(Context(List(r)), shd)
                      val zDerivDown = derivationStepZipperDown(r, Context(List()), shd)
                      assert(zDerivUp == zDerivDown)  
                      SetUtils.lemmaFlatMapOnSingletonSet(z, hd, (c: Context[C]) => derivationStepZipperUp(c, shd))
                      assert(zDeriv == zDerivDown)
                      val zR1 = Set(Context(List(r1, r2)))
                      val zR2 = Set(Context(List(r2)))
                      val derivZR1 = derivationStepZipper(zR1, shd)
                      val derivZR2 = derivationStepZipper(zR2, shd)

                      val derivUpZR1 = derivationStepZipperUp(Context(List(r1, r2)), shd)
                      val derivUpZR2 = derivationStepZipperUp(Context(List(r2)), shd)

                      SetUtils.lemmaFlatMapOnSingletonSet(zR1, Context(List(r1, r2)), (c: Context[C]) => derivationStepZipperUp(c, shd))
                      SetUtils.lemmaFlatMapOnSingletonSet(zR2, Context(List(r2)), (c: Context[C]) => derivationStepZipperUp(c, shd))

                      val derivDownZR1 = derivationStepZipperDown(r1, Context(List(r2)), shd)
                      val derivDownZR2 = derivationStepZipperDown(r2, Context(List()), shd)

                      if(r1.nullable){
                        assert(zDeriv == derivDownZR1 ++ derivDownZR2)
                        lemmaZipperConcatMatchesSameAsBothZippers(derivDownZR1, derivDownZR2, stl)
                        assert((matchZipper(derivDownZR1, stl) || matchZipper(derivDownZR2, stl)) == matchZipper(zDeriv, stl))

                        assert(derivUpZR1 == derivDownZR1 ++ derivUpZR2)
                        assert(derivUpZR1 == derivDownZR1 ++ derivDownZR2)
                        assert(derivUpZR1 == zDeriv)

                        assert(matchZipper(zR1, s) == matchZipper(derivationStepZipper(zR1, shd), stl))

                        assert(matchZipper(zR1, s) == matchZipper(derivZR1, stl))
                        assert(matchZipper(zR2, s) == matchZipper(derivZR2, stl))


                        assert(contextDepth(Context(List(r1, r2))) < contextDepth(Context(List(r))))
                        assert(zipperDepth(List(Context(List(r1, r2)))) < zipperDepth(List(Context(List(r)))))
                        
                        assert(contextDepth(Context(List(r2))) < contextDepth(Context(List(r))))
                        assert(zipperDepth(List(Context(List(r2)))) < zipperDepth(List(Context(List(r)))))
                        assert(regexDepth(r) == regexDepth(Concat(r1, r2)))
                        theoremZipperRegexEquiv(zR1, List(Context(List(r1, r2))), Concat(r1, r2), s)
                        theoremZipperRegexEquiv(zR2, List(Context(List(r2))), r2, s)
                        

                      } else {
                        assert(zDeriv == derivDownZR1)
                        assert(unfocusZipper(zl) == r)
                        assert(r == generalisedConcat(hd.exprs))
                        assert(hd.exprs == List(r))
                        assert(zipperDepth(List(Context(List(r1, r2)))) < zipperDepth(List(Context(List(r))))) // Measure
                        assert(zipperDepth(List(Context(List(r1, r2)))) < zipperDepth(List(Context(List(r))))) // Measure
                        theoremZipperRegexEquiv(zR1, List(Context(List(r1, r2))), Concat(r1, r2), s)
                        theoremZipperRegexEquiv(zR2, List(Context(List(r2))), r2, s)
                      }
                    } else {
                      // Here, we are in the case where the Concat is the result of generalisedConcat
                      val zDeriv = derivationStepZipper(z, shd)
                      val zDerivUp = derivationStepZipperUp(Context(Cons(hExp, tlExp)), shd)
                      val zDerivDown = derivationStepZipperDown(hExp, Context(tlExp), shd)
                      val zDerivUpUp = derivationStepZipperUp(Context(tlExp), shd)

                      SetUtils.lemmaFlatMapOnSingletonSet(z, hd, (c: Context[C]) => derivationStepZipperUp(c, shd))

                      if(hExp.nullable){
                        assert(zDerivUp == zDerivDown ++ zDerivUpUp)
                        assert(zDeriv == zDerivUp)
                        lemmaZipperConcatMatchesSameAsBothZippers(zDerivDown, zDerivUpUp, stl)
                        assert(matchZipper(zDeriv, stl) == matchZipper(z, s))
                        assert(matchZipper(z, s) == (matchZipper(zDerivDown, stl) || matchZipper(zDerivUpUp, stl)))

                      } else {
                        assert(zDerivUp == zDerivDown)
                        assert(zDeriv == zDerivDown)
                        assert(matchZipper(zDerivDown, stl) == matchZipper(z, s))
                      }

                      r1 match {
                        case ElementMatch(c) if c == shd => {
                          assert(zDerivDown == Set(Context(tlExp)))
                          val zVirt = Set(Context(tlExp))
                          theoremZipperRegexEquiv(zVirt, List(Context(tlExp)), generalisedConcat(tlExp), stl)
                          assert(matchR(r, s) == matchZipper(z, s))
                        }
                        case Union(rOne, rTwo) => {
                          assert(zDerivDown == derivationStepZipperDown(rOne, Context(tlExp), shd) ++ derivationStepZipperDown(rTwo, Context(tlExp), shd))
                          val zDerivDown1 = derivationStepZipperDown(rOne, Context(tlExp), shd)
                          val zDerivDown2 = derivationStepZipperDown(rTwo, Context(tlExp), shd)
                          lemmaZipperConcatMatchesSameAsBothZippers(zDerivDown1, zDerivDown2, stl)
                          assert(matchZipper(zDerivDown, stl) == matchZipper(zDerivDown1, stl) || matchZipper(zDerivDown2, stl))
                          val zVirt1 = Set(Context(Cons(rOne, tlExp)))
                          val zVirt2 = Set(Context(Cons(rTwo, tlExp)))

                          val zVirt1Deriv = derivationStepZipper(zVirt1, shd)
                          val zVirt1DerivUp = derivationStepZipperUp(Context(Cons(rOne, tlExp)), shd)
                          SetUtils.lemmaFlatMapOnSingletonSet(zVirt1, Context(Cons(rOne, tlExp)), (c: Context[C]) => derivationStepZipperUp(c, shd))
                          if (rOne.nullable){
                            assert(zVirt1DerivUp == derivationStepZipperDown(rOne, Context(tlExp), shd) ++ derivationStepZipperUp(Context(tlExp), shd))
                            assert(zVirt1Deriv == derivationStepZipperDown(rOne, Context(tlExp), shd) ++ derivationStepZipperUp(Context(tlExp), shd))
                            assert(matchZipper(zVirt1, s) == matchZipper(zVirt1Deriv, stl))
                            lemmaZipperConcatMatchesSameAsBothZippers(derivationStepZipperDown(rOne, Context(tlExp), shd), derivationStepZipperUp(Context(tlExp), shd), stl)
                            assert(matchZipper(zVirt1, s) == (matchZipper(zDerivDown1, stl) || matchZipper(zDerivUpUp, stl)))
                          } else {
                            assert(zVirt1DerivUp == derivationStepZipperDown(rOne, Context(tlExp), shd))
                            assert(matchZipper(zVirt1, s) == (matchZipper(zDerivDown1, stl)))
                          }

                          val zVirt2Deriv = derivationStepZipper(zVirt2, shd)
                          val zVirt2DerivUp = derivationStepZipperUp(Context(Cons(rTwo, tlExp)), shd)
                          SetUtils.lemmaFlatMapOnSingletonSet(zVirt2, Context(Cons(rTwo, tlExp)), (c: Context[C]) => derivationStepZipperUp(c, shd))
                          if (rTwo.nullable){
                            assert(zVirt2DerivUp == derivationStepZipperDown(rTwo, Context(tlExp), shd) ++ derivationStepZipperUp(Context(tlExp), shd))
                            assert(zVirt2Deriv == derivationStepZipperDown(rTwo, Context(tlExp), shd) ++ derivationStepZipperUp(Context(tlExp), shd))
                            assert(matchZipper(zVirt2, s) == matchZipper(zVirt2Deriv, stl))
                            lemmaZipperConcatMatchesSameAsBothZippers(derivationStepZipperDown(rTwo, Context(tlExp), shd), derivationStepZipperUp(Context(tlExp), shd), stl)
                            assert(matchZipper(zVirt2, s) == (matchZipper(zDerivDown2, stl) || matchZipper(zDerivUpUp, stl)))
                          } else {
                            assert(zVirt2DerivUp == derivationStepZipperDown(rTwo, Context(tlExp), shd))
                            assert(matchZipper(zVirt2, s) == (matchZipper(zDerivDown2, stl)))
                          }
                          if(r1.nullable){
                            // This one is really beautiful, as the matching of derivUpUp appears in the derivative of one of the 2 virtual zippers
                            // if they are nullable, but the same term appears before if r1 is nullable, so it cancels out and does not break
                            // anything
                            assert(rOne.nullable || rTwo.nullable)
                            assert(matchZipper(z, s) == (matchZipper(zDerivDown1, stl) || matchZipper(zDerivDown2, stl) || matchZipper(zDerivUpUp, stl)))
                          } else {
                            assert(!rOne.nullable && !rTwo.nullable)
                            assert(matchZipper(z, s) == (matchZipper(zDerivDown1, stl) || matchZipper(zDerivDown2, stl)))
                          }
                          assert(matchZipper(z, s) == (matchZipper(zVirt1, s) || matchZipper(zVirt2, s)))

                          assert(unfocusZipper(zl) == r)
                          assert(r == generalisedConcat(hd.exprs))
                          assert(hd.exprs == Cons(r1, tlExp))

                          assert(zipperDepthTotal(List(Context(Cons(rOne, tlExp)))) < zipperDepthTotal(zl)) // Measure decreases
                          assert(zipperDepthTotal(List(Context(Cons(rTwo, tlExp)))) < zipperDepthTotal(zl)) // Measure decreases
                          theoremZipperRegexEquiv(zVirt1, List(Context(Cons(rOne, tlExp))), generalisedConcat(Cons(rOne, tlExp)), s)
                          theoremZipperRegexEquiv(zVirt2, List(Context(Cons(rTwo, tlExp))), generalisedConcat(Cons(rTwo, tlExp)), s)
                          mainMatchTheorem(generalisedConcat(Cons(rOne, tlExp)), s)
                          mainMatchTheorem(generalisedConcat(Cons(rTwo, tlExp)), s)

                          assert(matchZipper(z, s) == matchR(generalisedConcat(Cons(rOne, tlExp)), s) || matchR(generalisedConcat(Cons(rTwo, tlExp)), s))
                          
                          assert(r == Concat(Union(rOne, rTwo), r2))
                          assert(generalisedConcat(Cons(rOne, tlExp)) == Concat(rOne, generalisedConcat(tlExp))) 
                          assert(generalisedConcat(Cons(rTwo, tlExp)) == Concat(rTwo, generalisedConcat(tlExp))) 
                          assert(r2 == generalisedConcat(tlExp))

                          // We want
                          lemmaConcatDistributesInUnion(rOne, rTwo, r2, s)
                          assert(matchR(Concat(Union(rOne, rTwo), r2), s) == matchR(Union(Concat(rOne, r2), Concat(rTwo, r2)), s))
                          mainMatchTheorem(Union(Concat(rOne, r2), Concat(rTwo, r2)), s)
                          mainMatchTheorem(Concat(Union(rOne, rTwo), r2), s)
                          assert(matchR(Concat(Union(rOne, rTwo), r2), s) == matchR(generalisedConcat(Cons(rOne, tlExp)), s) || matchR(generalisedConcat(Cons(rTwo, tlExp)), s))

                          check(matchR(r, s) == matchZipper(z, s))
                        }
                        case Concat(rOne, rTwo) if rOne.nullable => {
                          assert(zDerivDown == derivationStepZipperDown(rOne, Context(Cons(rTwo, tlExp)), shd) ++ derivationStepZipperDown(rTwo, Context(tlExp), shd))
                          val zDerivDown1 = derivationStepZipperDown(rOne,  Context(Cons(rTwo, tlExp)), shd)
                          val zDerivDown2 = derivationStepZipperDown(rTwo, Context(tlExp), shd)
                          lemmaZipperConcatMatchesSameAsBothZippers(zDerivDown1, zDerivDown2, stl)
                          assert(matchZipper(zDerivDown, stl) == matchZipper(zDerivDown1, stl) || matchZipper(zDerivDown2, stl))
                          val zVirt1 = Set(Context(Cons(rOne, Cons(rTwo, tlExp))))
                          val zVirt2 = Set(Context(Cons(rTwo, tlExp)))

                          val zVirt1Deriv = derivationStepZipper(zVirt1, shd)
                          val zVirt1DerivUp = derivationStepZipperUp(Context(Cons(rOne, Cons(rTwo, tlExp))), shd)
                          SetUtils.lemmaFlatMapOnSingletonSet(zVirt1, Context(Cons(rOne, Cons(rTwo, tlExp))), (c: Context[C]) => derivationStepZipperUp(c, shd))
                          assert(zVirt1Deriv == derivationStepZipperDown(rOne, Context(Cons(rTwo, tlExp)), shd) ++ derivationStepZipperUp(Context(Cons(rTwo, tlExp)), shd))

                          val zVirt2Deriv = derivationStepZipper(zVirt2, shd)
                          val zVirt2DerivUp = derivationStepZipperUp(Context(Cons(rTwo, tlExp)), shd)
                          SetUtils.lemmaFlatMapOnSingletonSet(zVirt2, Context(Cons(rTwo, tlExp)), (c: Context[C]) => derivationStepZipperUp(c, shd))

                          if(rTwo.nullable){
                            assert(zVirt2Deriv == derivationStepZipperDown(rTwo, Context(tlExp), shd) ++ derivationStepZipperUp(Context(tlExp), shd))
                          } else {
                            assert(zVirt2Deriv == derivationStepZipperDown(rTwo, Context(tlExp), shd))
                          }

                          lemmaZipperConcatMatchesSameAsBothZippers(derivationStepZipperDown(rOne, Context(Cons(rTwo, tlExp)), shd), derivationStepZipperUp(Context(Cons(rTwo, tlExp)), shd), stl)
                          assert(matchZipper(zDerivDown, stl) == matchZipper(zVirt1Deriv, stl) || matchZipper(zVirt2Deriv, stl))
                          assert(hd.exprs == Cons(Concat(rOne, rTwo), tlExp))
                          assert(contextDepthTotal(Context(Cons(rOne, Cons(rTwo, tlExp)))) < contextDepthTotal(Context(hd.exprs)))
                          assert(zipperDepthTotal(List(Context(Cons(rOne, Cons(rTwo, tlExp))))) < zipperDepthTotal(zl)) // Measure decreases
                          assert(zipperDepth(List(Context(Cons(rOne, Cons(rTwo, tlExp))))) <= zipperDepth(zl)) // Measure decreases
                          theoremZipperRegexEquiv(zVirt1, List(Context(Cons(rOne, Cons(rTwo, tlExp)))), generalisedConcat(Cons(rOne, Cons(rTwo, tlExp))), s)
                          theoremZipperRegexEquiv(zVirt2, List(Context(Cons(rTwo, tlExp))), generalisedConcat(Cons(rTwo, tlExp)), s)

                          mainMatchTheorem(generalisedConcat(Cons(rOne, Cons(rTwo, tlExp))), s)
                          lemmaFindConcatSeparationEquivalentToExists(rOne, generalisedConcat(Cons(rTwo, tlExp)), s)
                          mainMatchTheorem(generalisedConcat(Cons(rTwo, tlExp)), s)
                          lemmaFindConcatSeparationEquivalentToExists(rTwo, generalisedConcat(tlExp), s)

                          assert(matchZipper(z, s) == (matchZipper(zVirt1, s) || matchZipper(zVirt2, s)))
                          assert(matchZipper(z, s) == (matchR(generalisedConcat(Cons(rOne, Cons(rTwo, tlExp))), s) || matchR(generalisedConcat(Cons(rTwo, tlExp)), s)))

                          assert(matchR(r, s) == findConcatSeparation(r1, r2, Nil(), s, s).isDefined)
                          assert(matchR(r, s) == matchR(Concat(r1, r2), s))
                          assert(matchR(r, s) == matchR(Concat(Concat(rOne, rTwo), r2), s))
                          assert(matchR(r, s) == matchR(Concat(Concat(rOne, rTwo), generalisedConcat(tlExp)), s))

                          lemmaConcatAssociative(rOne, rTwo, generalisedConcat(tlExp), s)
                          assert(matchR(Concat(Concat(rOne, rTwo), generalisedConcat(tlExp)), s) == matchR(Concat(rOne, Concat(rTwo, generalisedConcat(tlExp))), s))

                          check(matchR(r, s) == matchZipper(z, s))
                        }
                        case Concat(rOne, rTwo) => {
                          assert(zDerivDown == derivationStepZipperDown(rOne, Context(Cons(rTwo, tlExp)), shd))
                          val zDerivDown1 = derivationStepZipperDown(rOne,  Context(Cons(rTwo, tlExp)), shd)
                          assert(matchZipper(zDerivDown, stl) == matchZipper(zDerivDown1, stl))
                          val zVirt1 = Set(Context(Cons(rOne, Cons(rTwo, tlExp))))

                          val zVirt1Deriv = derivationStepZipper(zVirt1, shd)
                          val zVirt1DerivUp = derivationStepZipperUp(Context(Cons(rOne, Cons(rTwo, tlExp))), shd)
                          SetUtils.lemmaFlatMapOnSingletonSet(zVirt1, Context(Cons(rOne, Cons(rTwo, tlExp))), (c: Context[C]) => derivationStepZipperUp(c, shd))
                          assert(zVirt1Deriv == derivationStepZipperDown(rOne, Context(Cons(rTwo, tlExp)), shd))

                          assert(matchZipper(zDerivDown, stl) == matchZipper(zVirt1Deriv, stl))
                          assert(hd.exprs == Cons(Concat(rOne, rTwo), tlExp))
                          assert(contextDepthTotal(Context(Cons(rOne, Cons(rTwo, tlExp)))) < contextDepthTotal(Context(hd.exprs)))
                          assert(zipperDepthTotal(List(Context(Cons(rOne, Cons(rTwo, tlExp))))) < zipperDepthTotal(zl)) // Measure decreases
                          assert(zipperDepth(List(Context(Cons(rOne, Cons(rTwo, tlExp))))) <= zipperDepth(zl)) // Measure decreases
                          theoremZipperRegexEquiv(zVirt1, List(Context(Cons(rOne, Cons(rTwo, tlExp)))), generalisedConcat(Cons(rOne, Cons(rTwo, tlExp))), s)

                          mainMatchTheorem(generalisedConcat(Cons(rOne, Cons(rTwo, tlExp))), s)
                          lemmaFindConcatSeparationEquivalentToExists(rOne, generalisedConcat(Cons(rTwo, tlExp)), s)
                          mainMatchTheorem(generalisedConcat(Cons(rTwo, tlExp)), s)
                          lemmaFindConcatSeparationEquivalentToExists(rTwo, generalisedConcat(tlExp), s)

                          assert(matchZipper(z, s) == (matchZipper(zVirt1, s)))
                          assert(matchZipper(z, s) == (matchR(generalisedConcat(Cons(rOne, Cons(rTwo, tlExp))), s)))

                          assert(matchR(r, s) == findConcatSeparation(r1, r2, Nil(), s, s).isDefined)
                          assert(matchR(r, s) == matchR(Concat(r1, r2), s))
                          assert(matchR(r, s) == matchR(Concat(Concat(rOne, rTwo), r2), s))
                          assert(matchR(r, s) == matchR(Concat(Concat(rOne, rTwo), generalisedConcat(tlExp)), s))

                          lemmaConcatAssociative(rOne, rTwo, generalisedConcat(tlExp), s)
                          assert(matchR(Concat(Concat(rOne, rTwo), generalisedConcat(tlExp)), s) == matchR(Concat(rOne, Concat(rTwo, generalisedConcat(tlExp))), s)) 

                          check(matchR(r, s) == matchZipper(z, s))
                        }
                        case Star(rInner) => {
                          assert(zDerivDown == derivationStepZipperDown(rInner, Context(Cons(Star(rInner), tlExp)), shd))

                          val zR1 = Set(Context(Cons(rInner, Cons(Star(rInner), tlExp))))
                          val derivZR1 = derivationStepZipper(zR1, shd)

                          val derivUpZR1 = derivationStepZipperUp(Context(Cons(rInner, Cons(Star(rInner), tlExp))), shd)

                          SetUtils.lemmaFlatMapOnSingletonSet(zR1, Context(Cons(rInner, Cons(Star(rInner), tlExp))), (c: Context[C]) => derivationStepZipperUp(c, shd))
                          val derivDownZR1 = derivationStepZipperDown(rInner, Context(Cons(Star(rInner), tlExp)), shd)
                          
                          assert(derivZR1 == derivDownZR1)
                          assert(zDerivDown == derivDownZR1)
                          assert(matchZipper(zR1, s) == matchZipper(derivationStepZipper(zR1, shd), stl))
                          assert(matchZipper(zR1, s) == matchZipper(derivZR1, stl))

                          assert(unfocusZipper(zl) == r)
                          assert(r == Concat(Star(rInner), r2))
                          val rR = Concat(rInner, Concat(Star(rInner), r2))
                          assert(unfocusZipper(List(Context(Cons(rInner, Cons(Star(rInner), tlExp))))) == rR)

                          val subZR1 = Set(Context(List(rInner)))
                          val subZR2 = Set(Context(Cons(Star(rInner), tlExp)))

                          val derivSubZR1 = derivationStepZipper(subZR1, shd)
                          val derivSubZR2 = derivationStepZipper(subZR2, shd)

                          val derivUpSubZR1 = derivationStepZipperUp(Context(List(rInner)), shd)
                          val derivUpSubZR2 = derivationStepZipperUp(Context(Cons(Star(rInner), tlExp)), shd)

                          SetUtils.lemmaFlatMapOnSingletonSet(subZR1, Context(List(rInner)), (c: Context[C]) => derivationStepZipperUp(c, shd))
                          SetUtils.lemmaFlatMapOnSingletonSet(subZR2, Context(Cons(Star(rInner), tlExp)), (c: Context[C]) => derivationStepZipperUp(c, shd))

                          assert(unfocusZipper(List(Context(List(rInner)))) == rInner)
                          assert(unfocusZipper(List(Context(Cons(Star(rInner), tlExp)))) == Concat(Star(rInner), r2))
                          mainMatchTheorem(rR, s)

                          if(matchR(r, s)){ // r == Concat(Star(rInner), r2)
                            // We have 2 cases:
                            // - Star(rInner) matches a non-empty string
                            // - r2 matches the entire string
                            mainMatchTheorem(r, s)
                            lemmaFindConcatSeparationEquivalentToExists(Star(rInner), r2, s)
                            val (starMatched, r2Matched) = findConcatSeparation(Star(rInner), r2, Nil(), s, s).get
                            assert(starMatched ++ r2Matched == s)
                            assert(matchR(Star(rInner), starMatched))
                            assert(matchR(r2, r2Matched))
                            if(starMatched.isEmpty){
                              // r2 matches the entire string
                              // So in Zipper term, the matched part is the 2nd deriveUp (bypassing the head of the context)
                              val zTail = Set(Context(tlExp))
                              val zDerivTail = derivationStepZipper(zTail, shd)
                              SetUtils.lemmaFlatMapOnSingletonSet(zTail, Context(tlExp), (c: Context[C]) => derivationStepZipperUp(c, shd))
                              assert(zDerivUpUp == zDerivTail)

                              assert(r == generalisedConcat(hd.exprs))
                              assert(regexDepth(r) >= regexDepth(generalisedConcat(tlExp)))
                              assert(zipperDepth(zl) >= zipperDepth(List(Context(tlExp))))

                              theoremZipperRegexEquiv(zTail, List(Context(tlExp)), generalisedConcat(tlExp), s)
                              assert(matchR(generalisedConcat(tlExp), s) == matchZipper(zTail, s))
                              check(matchR(r, s) == matchZipper(z, s))
                            } else {
                              // Star(rInner) matches a non-empty string
                              // So here, we can use the rR regex to express r
                              mainMatchTheorem(Star(rInner), starMatched)
                              lemmaFindConcatSeparationEquivalentToExists(rInner, Star(rInner), starMatched)
                              val (starS1, starS2) = findConcatSeparation(rInner, Star(rInner), Nil(), starMatched, starMatched).get
                              assert(starMatched == starS1 ++ starS2)
                              ListUtils.lemmaTwoListsConcatAssociativity(starS1, starS2, r2Matched)
                              assert(starS1 ++ starS2 ++ r2Matched == s)
                              assert(matchR(rInner, starS1))
                              assert(matchR(Star(rInner), starS2))
                              lemmaStarApp(rInner, starS1, starS2) 
                              val s2 = starS2 ++ r2Matched
                              lemmaTwoRegexMatchThenConcatMatchesConcatString(Star(rInner), r2, starS2, r2Matched)
                              assert(matchR(Concat(Star(rInner), r2), s2))

                              theoremZipperRegexEquiv(subZR1, List(Context(List(rInner))), rInner, starS1)
                              theoremZipperRegexEquiv(subZR2, List(Context(Cons(Star(rInner), tlExp))), Concat(Star(rInner), r2), s2)
                              assert(matchZipper(subZR1, starS1))
                              assert(matchZipper(subZR2, s2))
                              lemmaConcatenateContextMatchesConcatOfStrings(Context(List(rInner)), Context(Cons(Star(rInner), tlExp)), starS1, s2)

                              assert(matchZipper(subZR1, starS1) == matchR(rInner, starS1))
                              assert(matchZipper(subZR2, s2) == matchR(Concat(Star(rInner), r2), s2))
                              assert(rR == Concat(rInner, Concat(Star(rInner), r2)))
                              lemmaTwoRegexMatchThenConcatMatchesConcatString(rInner, Concat(Star(rInner), r2), starS1, s2)
                              check(matchR(r, s) == matchR(rR, s))
                              
                              lemmaConcatenateContextMatchesConcatOfStrings(Context(List(rInner)), Context(Cons(Star(rInner), tlExp)), starS1, s2)
                              assert(matchZipper(Set(Context(Cons(rInner, Cons(Star(rInner), tlExp)))), starS1 ++ s2) == matchR(rR, s))
                              
                              check(matchR(r, s) == matchZipper(z, s))
                            }

                            check(matchR(r, s) == matchZipper(z, s))
                          } else {
                            if(matchZipper(z, s)){
                              assert(hExp.nullable)
                              assert(matchZipper(z, s) == (matchZipper(zDerivDown, stl) || matchZipper(zDerivUpUp, stl)))
                              if(matchZipper(zDerivDown, stl)){
                                // Then we know that
                                assert(matchZipper(zR1, s))
                                assert(zR1 == Set(Context(Cons(rInner, Cons(Star(rInner), tlExp)))))
                                assert(zR1 == Set(Context(Cons(rInner, Cons(Star(rInner), tlExp)))))

                                SetUtils.lemmaMapOnSingletonSet(subZR1, Context(List(rInner)), c => c.concat(Context(Cons(Star(rInner), tlExp))))
                                assert(appendTo(subZR1, Context(Cons(Star(rInner), tlExp))) == Set(Context(Cons(rInner, Cons(Star(rInner), tlExp)))))
                                assert(appendTo(subZR1, Context(Cons(Star(rInner), tlExp))) == zR1)
                                
                                lemmaConcatZipperMatchesStringThenFindConcatDefined(subZR1, Context(Cons(Star(rInner), tlExp)), s)
                                
                                val (s1, s2) = findConcatSeparationZippers(subZR1, subZR2, Nil(), s, s).get
                                assert(s == s1 ++ s2)
                                assert(matchZipper(subZR1, s1))
                                assert(matchZipper(subZR2, s2))
                                lemmaConcatenateContextMatchesConcatOfStrings(Context(List(rInner)), Context(Cons(Star(rInner), tlExp)), s1, s2)
                                
                                theoremZipperRegexEquiv(subZR1, List(Context(List(rInner))), rInner, s1)
                                theoremZipperRegexEquiv(subZR2, List(Context(Cons(Star(rInner), tlExp))), Concat(Star(rInner), r2), s2)
                                
                                assert(matchR(rInner, s1))
                                assert(matchR(Concat(Star(rInner), r2), s2))
                                lemmaTwoRegexMatchThenConcatMatchesConcatString(rInner, Concat(Star(rInner), r2), s1, s2)
                                check(matchR(rR, s))
                                assert(rR == Concat(rInner, Concat(Star(rInner), r2)))
                                lemmaConcatAssociative(rInner, Star(rInner), r2, s)
                                assert(matchR(Concat(Concat(rInner, Star(rInner)), r2), s) == matchR(Concat(rInner, Concat(Star(rInner), r2)), s))
                                assert(matchR(Concat(Concat(rInner, Star(rInner)), r2), s))
                                mainMatchTheorem(Concat(Concat(rInner, Star(rInner)), r2), s)
                                lemmaFindConcatSeparationEquivalentToExists(Concat(rInner, Star(rInner)), r2, s)
                                val (starS, r2S) = findConcatSeparation(Concat(rInner, Star(rInner)), r2, Nil(), s, s).get
                                assert(matchR(Concat(rInner, Star(rInner)), starS))
                                mainMatchTheorem(Concat(rInner, Star(rInner)), starS)
                                lemmaFindConcatSeparationEquivalentToExists(rInner, Star(rInner), starS)
                                val (sInner, sStarInner) = findConcatSeparation(rInner, Star(rInner), Nil(), starS, starS).get
                                ListUtils.lemmaTwoListsConcatAssociativity(sInner, sStarInner, r2S)
                                assert(matchR(rInner, sInner))
                                assert(matchR(Star(rInner), sStarInner))
                                lemmaStarApp(rInner, sInner, sStarInner)
                                assert(matchR(Star(rInner), sInner ++ sStarInner))
                                assert(matchR(r2, r2S))
                                lemmaTwoRegexMatchThenConcatMatchesConcatString(Star(rInner), r2, sInner ++ sStarInner, r2S)
                                assert(s == sInner ++ sStarInner ++ r2S)
                                assert(matchR(r, s))
                                check(false)

                              }else{
                                assert(matchZipper(zDerivUpUp, stl))
                                val zTail = Set(Context(tlExp))
                                val zDerivTail = derivationStepZipper(zTail, shd)
                                SetUtils.lemmaFlatMapOnSingletonSet(zTail, Context(tlExp), (c: Context[C]) => derivationStepZipperUp(c, shd))
                                assert(zDerivUpUp == zDerivTail)

                                assert(r == generalisedConcat(hd.exprs))
                                assert(regexDepth(r) >= regexDepth(generalisedConcat(tlExp)))
                                assert(zipperDepth(zl) >= zipperDepth(List(Context(tlExp))))

                                theoremZipperRegexEquiv(zTail, List(Context(tlExp)), generalisedConcat(tlExp), s)
                                assert(matchR(generalisedConcat(tlExp), s) == matchZipper(zTail, s))
                                assert(matchR(r2, s))
                                mainMatchTheorem(Star(rInner), Nil())
                                lemmaFindConcatSeparationEquivalentToExists(rInner, Star(rInner), Nil())
                                lemmaTwoRegexMatchThenConcatMatchesConcatString(Star(rInner), r2, Nil(), s)
                                assert(matchR(r, s))
                                check(false)
                              }
                            }
                            check(matchR(r, s) == matchZipper(z, s))
                          }

                          check(matchR(r, s) == matchZipper(z, s))

                        }

                        case EmptyExpr() => {
                          lemmaEmptyZipperMatchesNothing(zDerivDown, stl)
                          assert(zDerivDown == Set())
                          mainMatchTheorem(r, s)
                          assert(r == Concat(r1, r2))
                          assert(r1 == EmptyExpr[C]())
                          mainMatchTheorem(r1, s)
                          mainMatchTheorem(r2, s)
                          assert(matchR(r, s) == matchR(r2, s))
                          val zTail = Set(Context(tlExp))
                          val zDerivTail = derivationStepZipper(zTail, shd)
                          SetUtils.lemmaFlatMapOnSingletonSet(zTail, Context(tlExp), (c: Context[C]) => derivationStepZipperUp(c, shd))
                          assert(zDerivUpUp == zDerivTail)
                          assert(zDeriv == zDerivDown ++ zDerivUpUp)
                          lemmaZipperConcatMatchesSameAsBothZippers(zDerivDown, zDerivUpUp, stl)
                          assert(matchZipper(z, s) == matchZipper(zDerivUpUp, stl))
                          theoremZipperRegexEquiv(zTail, List(Context(tlExp)), generalisedConcat(tlExp), s)
                          assert(matchR(generalisedConcat(tlExp), s) == matchZipper(zTail, s))
                          assert(r2 == generalisedConcat(tlExp))

                          check(matchR(r, s) == matchZipper(z, s))
                        }
                        case _ => {
                          lemmaEmptyZipperMatchesNothing(zDerivDown, stl)
                          assert(zDerivDown == Set())
                          mainMatchTheorem(r, s)
                          assert(r == Concat(r1, r2))
                          mainMatchTheorem(r1, s)
                          mainMatchTheorem(r2, s)

                          check(matchR(r, s) == matchZipper(z, s))
                        }
                      }

                      val zTail = Set(Context(tlExp))
                      val zDerivTail = derivationStepZipper(zTail, shd)
                      SetUtils.lemmaFlatMapOnSingletonSet(zTail, Context(tlExp), (c: Context[C]) => derivationStepZipperUp(c, shd))
                      assert(zDerivUpUp == zDerivTail)

                      assert(r == generalisedConcat(hd.exprs))
                      assert(regexDepth(r) >= regexDepth(generalisedConcat(tlExp)))
                      assert(zipperDepth(zl) >= zipperDepth(List(Context(tlExp))))

                      theoremZipperRegexEquiv(zTail, List(Context(tlExp)), generalisedConcat(tlExp), s)
                      assert(matchR(generalisedConcat(tlExp), s) == matchZipper(zTail, s))

                      check(matchR(r, s) == matchZipper(z, s))
                    
                  }
                }
              }
            }
              case Star(rInner) => {
                lemmaFindConcatSeparationEquivalentToExists(rInner, Star(rInner), s)
                assert(matchR(r, s) ==  s.isEmpty || findConcatSeparation(rInner, Star(rInner), Nil(), s, s).isDefined)
                s match {
                  case Nil() => {
                    lemmaUnfocusPreservesNullability(r, z)
                    assert(nullableZipper(z) == r.nullable)
                    check(matchZipper(z, s) == matchR(r, s))
                  }
                  case Cons(shd, stl) => {  
                    val zDeriv = derivationStepZipper(z, shd)
                    val zDerivUp = derivationStepZipperUp(Context(List(r)), shd)
                    val zDerivDown = derivationStepZipperDown(r, Context(List()), shd)
                    assert(zDerivUp == zDerivDown)  
                    SetUtils.lemmaFlatMapOnSingletonSet(z, hd, (c: Context[C]) => derivationStepZipperUp(c, shd))
                    assert(zDeriv == zDerivDown)

                    val zR1 = Set(Context(List(rInner, Star(rInner))))
                    val derivZR1 = derivationStepZipper(zR1, shd)

                    val derivUpZR1 = derivationStepZipperUp(Context(List(rInner, Star(rInner))), shd)

                    SetUtils.lemmaFlatMapOnSingletonSet(zR1, Context(List(rInner, Star(rInner))), (c: Context[C]) => derivationStepZipperUp(c, shd))
                    val derivDownZR1 = derivationStepZipperDown(rInner, Context(List(Star(rInner))), shd)

                    assert(zDeriv == derivDownZR1)
                    assert(matchZipper(zR1, s) == matchZipper(derivationStepZipper(zR1, shd), stl))
                    assert(matchZipper(zR1, s) == matchZipper(derivZR1, stl))

                    // equivalent regex to zR1
                    assert(unfocusZipper(zl) == r)
                    assert(r == Star(rInner))
                    val rR1 = Concat(rInner, Star(rInner))
                    assert(unfocusZipper(List(Context(List(rInner, Star(rInner))))) == rR1)

                    val subZR1 = Set(Context(List(rInner)))
                    val subZR2 = Set(Context(List(Star(rInner))))

                    val derivSubZR1 = derivationStepZipper(subZR1, shd)
                    val derivSubZR2 = derivationStepZipper(subZR2, shd)

                    val derivUpSubZR1 = derivationStepZipperUp(Context(List(rInner)), shd)
                    val derivUpSubZR2 = derivationStepZipperUp(Context(List(Star(rInner))), shd)

                    SetUtils.lemmaFlatMapOnSingletonSet(subZR1, Context(List(rInner)), (c: Context[C]) => derivationStepZipperUp(c, shd))
                    SetUtils.lemmaFlatMapOnSingletonSet(subZR2, Context(List(Star(rInner))), (c: Context[C]) => derivationStepZipperUp(c, shd))

                    assert(zDeriv == derivSubZR2)

                    assert(unfocusZipper(List(Context(List(rInner)))) == rInner)
                    assert(unfocusZipper(List(Context(List(Star(rInner))))) == Star(rInner))
                    mainMatchTheorem(rR1, s)

                    if(matchR(rR1, s)){
                      val (s1, s2) = findConcatSeparation(rInner, Star(rInner), Nil(), s, s).get
                      assert(s == s1 ++ s2)
                      assert(matchR(rInner, s1))
                      assert(matchR(Star(rInner), s2))

                      theoremZipperRegexEquiv(subZR1, List(Context(List(rInner))), rInner, s1)
                      theoremZipperRegexEquiv(subZR2, List(Context(List(Star(rInner)))), Star(rInner), s2)
                      assert(matchZipper(subZR1, s1))
                      assert(matchZipper(subZR2, s2))
                      lemmaConcatenateContextMatchesConcatOfStrings(Context(List(rInner)), Context(List(Star(rInner))), s1, s2)
                      check(matchR(r, s) == matchZipper(z, s))
                    } else {
                      assert(!matchR(rR1, s))
                      if(matchZipper(z, s)){
                        SetUtils.lemmaMapOnSingletonSet(subZR1, Context(List(rInner)), c => c.concat(Context(List(Star(rInner)))))
                        assert(appendTo(subZR1, Context(List(Star(rInner)))) == Set(Context(List(rInner, Star(rInner)))))
                        lemmaConcatZipperMatchesStringThenFindConcatDefined(subZR1, Context(List(Star(rInner))), s)
                        val (s1, s2) = findConcatSeparationZippers(subZR1, subZR2, Nil(), s, s).get
                        assert(s == s1 ++ s2)
                        assert(matchZipper(subZR1, s1))
                        assert(matchZipper(subZR2, s2))
                        lemmaConcatenateContextMatchesConcatOfStrings(Context(List(rInner)), Context(List(Star(rInner))), s1, s2)
                        theoremZipperRegexEquiv(subZR1, List(Context(List(rInner))), rInner, s1)
                        theoremZipperRegexEquiv(subZR2, List(Context(List(Star(rInner)))), Star(rInner), s2)
                        assert(matchR(rInner, s1))
                        assert(matchR(Star(rInner), s2))
                        lemmaTwoRegexMatchThenConcatMatchesConcatString(rInner, Star(rInner), s1, s2)
                        check(matchR(rR1, s))
                        check(false)
                      }
                      check(!matchZipper(z, s))
                    }
                  }
                }
              }
            }
          }
          case Nil() => {
            assert(r == EmptyExpr[C]())
            lemmaZipperOfEmptyContextMatchesEmptyString(z, s)
          }
        }
      }
      case Cons(hd, tl) => {
         s match {
          case Nil() => {
            lemmaUnfocusPreservesNullability(r, z)
            assert(nullableZipper(z) == r.nullable)
            check(matchZipper(z, s) == matchR(r, s))
          }
          case Cons(shd, stl) => {
            assert(zl == Cons(hd, tl))
            assert(!tl.isEmpty)
            matchRGenUnionSpec(r, unfocusZipperList(zl), s)
            if(matchR(r, s)){
              assert(unfocusZipperList(zl).exists(rr => validRegex(rr) && matchR(rr, s)))
              val witnessR = ListUtils.getWitness(unfocusZipperList(zl), (rr: Regex[C]) => validRegex(rr) && matchR(rr, s))
              assert(unfocusZipperList(zl).contains(witnessR))
              assert(validRegex(witnessR))
              assert(matchR(witnessR, s))
              lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext(zl, witnessR)
              assert(zl.exists((cc: Context[C]) => generalisedConcat(cc.exprs) == witnessR))
              val witnessC = ListUtils.getWitness(zl, (cc: Context[C]) => generalisedConcat(cc.exprs) == witnessR)
              lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne(zl, witnessC)
              assert(zipperDepthTotal(zl) > zipperDepthTotal(List(witnessC)))
              theoremZipperRegexEquiv(Set(witnessC), List(witnessC), witnessR, s)
              assert(matchZipper(Set(witnessC), s))
              SetUtils.lemmaContainsThenExists(z, witnessC, (c: Context[C]) => matchZipper(Set(c), s))
              lemmaExistsMatchingContextThenMatchingString(zl, s)
              check(matchR(r, s) == matchZipper(z, s))
            }else{
              assert(!unfocusZipperList(zl).exists(rr => validRegex(rr) && matchR(rr, s)))
              if(matchZipper(z, s)){
                lemmaZipperMatchesExistsMatchingContext(zl, s)
                assert(zl.exists(cc => matchZipper(Set(cc), s)))
                val witnessC: Context[C] = ListUtils.getWitness(zl, (cc: Context[C]) => matchZipper(Set(cc), s))
                lemmaContextForallValidExprs(witnessC, witnessC.exprs)
                assert(witnessC.exprs.forall(validRegex))
                lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne(zl, witnessC)
                assert(zipperDepthTotal(zl) > zipperDepthTotal(List(witnessC)))
                theoremZipperRegexEquiv(Set(witnessC), List(witnessC), generalisedConcat(witnessC.exprs), s)
                lemmaZipperContainsContextUnfocusListContainsConcat(zl, witnessC)
                assert(unfocusZipperList(zl).contains(generalisedConcat(witnessC.exprs)))
                ListUtils.lemmaContainsThenExists(unfocusZipperList(zl), generalisedConcat(witnessC.exprs), (rr: Regex[C]) => validRegex(rr) && matchR(rr, s))
                check(false)
              }
              check(!matchZipper(z, s))
              check(matchR(r, s) == matchZipper(z, s))
            }
          }
        }
      }
      case Nil() => {
        assert(isEmptyLang(r))
        lemmaEmptyZipperMatchesNothing(z, s)
      }
    }
    

  }.ensuring(_ => matchR(r, s) == matchZipper(z, s))

  @ghost  
  @opaque
  @inlineOnce
  def lemmaZipperContainsContextUnfocusListContainsConcat[C](zl: List[Context[C]], c: Context[C]): Unit = {
    require(zl.contains(c))
    decreases(zl.size)
    zl match {
      case Cons(hd, tl) => 
        if(tl.contains(c)){
          lemmaZipperContainsContextUnfocusListContainsConcat(tl, c)
        }
      case Nil() => check(false)
    }
  }.ensuring(_ => unfocusZipperList(zl).contains(generalisedConcat(c.exprs)))


  @ghost  
  @opaque
  @inlineOnce
  def lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext[C](zl: List[Context[C]], r: Regex[C]): Unit = {
    require(unfocusZipperList(zl).contains(r))
    decreases(zl.size)
    zl match {
      case Cons(hd, tl) => 
        if(unfocusZipperList(tl).contains(r)){
          lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext(tl, r)
        }
      case Nil() => check(false)
    }

  }.ensuring(_ => zl.exists(c => generalisedConcat(c.exprs) == r))

  @ghost
  @opaque
  @inlineOnce
  def lemmaContextForallValidExprs[C](c: Context[C], l: List[Regex[C]]): Unit = {
    require(l == c.exprs)
  }.ensuring(_ => l.forall(validRegex))



  /** Enumerate all cuts in s and returns one that works, i.e., z1 matches s1 and z2 matches s2 Specifically, it is the right most one, i.e., s2 is the largest, if multiple exist 
    * Returns None if no valid cut exists
    *
    * @param z1
    * @param z2
    * @param s1
    * @param s2
    * @param s
    */
  @ghost
  def findConcatSeparationZippers[C](z1: Zipper[C], z2: Zipper[C], s1: List[C], s2: List[C], s: List[C]): Option[(List[C], List[C])] = {
    require(s1 ++ s2 == s)
    decreases(s2.size)

    val res: Option[(List[C], List[C])] = (s1, s2) match {
      case (_, _) if matchZipper(z1, s1) && matchZipper(z2, s2) => Some((s1, s2))
      case (_, Nil())                                 => None()
      case (_, Cons(hd2, tl2)) => {
        ListUtils.lemmaMoveElementToOtherListKeepsConcatEq(s1, hd2, tl2, s)
        assert(s1 ++ List(hd2) ++ tl2 == s)
        findConcatSeparationZippers(z1, z2, s1 ++ List(hd2), tl2, s)
      }
    }
    res

  }.ensuring (res => (res.isDefined && matchZipper(z1, res.get._1) && matchZipper(z2, res.get._2) && res.get._1 ++ res.get._2 == s) || !res.isDefined)

  @ghost
  @opaque
  @inlineOnce
  def lemmaZipperConcatMatchesSameAsBothZippers[C](z1:Zipper[C], z2: Zipper[C], s: List[C]): Unit = {
    decreases(s.size)
    s match{
      case Cons(hd, tl) => {
        val z1Deriv = derivationStepZipper(z1, hd)
        val z2Deriv = derivationStepZipper(z2, hd)
        lemmaDerivativeStepZipperAssociative(z1 ++ z2, z1, z2, hd)
        lemmaZipperConcatMatchesSameAsBothZippers(z1Deriv, z2Deriv, tl)
      }
      case Nil() => {
        if(nullableZipper(z1 ++ z2)){
          assert((z1 ++ z2).exists(c => nullableContext(c)))
          val witness = SetUtils.getWitness(z1 ++ z2, (c: Context[C]) => nullableContext(c))
          assert((z1 ++ z2).contains(witness))
          if(z1.contains(witness)){
            SetUtils.lemmaContainsThenExists(z1, witness, (c: Context[C]) => nullableContext(c))
            assert(nullableZipper(z1))
          } else {
            SetUtils.lemmaContainsThenExists(z2, witness, (c: Context[C]) => nullableContext(c))
            assert(nullableZipper(z2))
          }
          check(nullableZipper(z1) || nullableZipper(z2))
        } else{
          assert(!(z1 ++ z2).exists(c => nullableContext(c)))
          if(nullableZipper(z1)) {
            val witness = SetUtils.getWitness(z1, (c: Context[C]) => nullableContext(c))
            SetUtils.lemmaContainsThenExists(z1 ++ z2, witness, (c: Context[C]) => nullableContext(c))
            assert(nullableZipper(z1 ++ z2))
            check(false)
          } 
          if(nullableZipper(z2)) {
            val witness = SetUtils.getWitness(z2, (c: Context[C]) => nullableContext(c))
            SetUtils.lemmaContainsThenExists(z1 ++ z2, witness, (c: Context[C]) => nullableContext(c))
            assert(nullableZipper(z1 ++ z2))
            check(false)
          }
          check(!nullableZipper(z1) && !nullableZipper(z2))
        }
      }
    }
    
  }.ensuring(_ => matchZipper(z1 ++ z2, s) == (matchZipper(z1, s) || matchZipper(z2, s)))

  @ghost
  @opaque
  @inlineOnce
  def lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem[C](z1: Zipper[C], z2: Zipper[C], s1: List[C], s2: List[C], s: List[C], s1Rec: List[C], s2Rec: List[C]): Unit = {
    require(matchZipper(z1, s1))
    require(matchZipper(z2, s2))
    require(s1 ++ s2 == s)
    require(ListUtils.isPrefix(s1Rec, s1))
    require(s1Rec ++ s2Rec == s)

    decreases(s2Rec.size)

     (s1Rec, s2Rec) match {
      case (_, _) if matchZipper(z1, s1Rec) && matchZipper(z2, s2Rec) => ()
      case (_, Nil()) => {
        assert(s1Rec.size == s.size)
        assert(s1Rec.size == s1.size)
        assert(s1Rec == s1)
        assert(s2Rec == s2)
        assert(findConcatSeparationZippers(z1, z2, s1Rec, s2Rec, s) == Some(s1Rec, s2Rec))
      }
      case (_, Cons(hd2, tl2)) => {
        ListUtils.lemmaConcatTwoListThenFirstIsPrefix(s1, s2)
        ListUtils.lemmaConcatTwoListThenFirstIsPrefix(s1Rec, s2Rec)
        if (s1Rec == s1) {
          ListUtils.lemmaConcatTwoListThenFirstIsPrefix(s1, s2)
          ListUtils.lemmaSamePrefixThenSameSuffix(s1, s2, s1Rec, s2Rec, s)
          check(false)
        }
        ListUtils.lemmaMoveElementToOtherListKeepsConcatEq(s1Rec, hd2, tl2, s)
        ListUtils.lemmaConcatTwoListThenFirstIsPrefix(s1Rec ++ List(hd2), tl2)
        if (s1Rec.size == s1.size) {
          ListUtils.lemmaIsPrefixSameLengthThenSameList(s1, s1Rec, s)
          check(false)
        }

        ListUtils.lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther(s1, s1Rec ++ List(hd2), s)
        lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem(z1, z2, s1, s2, s, s1Rec ++ List(hd2), tl2)
      }
    }
  }.ensuring(_ => findConcatSeparationZippers(z1, z2, s1Rec, s2Rec, s).isDefined)


  @ghost 
  @opaque
  @inlineOnce
  def lemmaConcatZipperMatchesStringThenFindConcatDefined[C](z1: Zipper[C], ct2: Context[C], s: List[C]): Unit = {
    require(matchZipper(appendTo(z1, ct2), s))
    decreases(s, zipperDepthTotal(z1.toList))
    val zipperTot = appendTo(z1, ct2)
    s match {
      case Cons(shd, stl) => {
        assert(matchZipper(zipperTot, s))
        lemmaZipperMatchesExistsMatchingContext(zipperTot.toList, s)
        val matchingContext = SetUtils.getWitness(zipperTot, c => matchZipper(Set(c), s))
        assert(matchZipper(Set(matchingContext), s))
        assert(zipperTot.contains(matchingContext))
        val matchingContextBeforeConcat = z1.mapPost2(c => c.concat(ct2))(matchingContext)
        assert(matchingContextBeforeConcat.concat(ct2) == matchingContext)

        val ct1 = matchingContextBeforeConcat
        assert(z1.contains(ct1))
        val zipper = Set(ct1.concat(ct2))
        assert(zipper == Set(matchingContext))
        val ctx = ct1.concat(ct2)
        val deriv = derivationStepZipper(zipper, shd)
        val derivUp = derivationStepZipperUp(ctx, shd)
        SetUtils.lemmaFlatMapOnSingletonSet(zipper, ctx, (c: Context[C]) => derivationStepZipperUp(c, shd))
        assert(deriv == derivUp)
          ct1.exprs match {
            case Cons(ct1Hd, ct1Tl) => {
              val ct1Tl = ct1.tail
              if(ct1Hd.nullable ){
                assert(derivUp == derivationStepZipperDown(ct1Hd, ct1Tl.concat(ct2), shd) ++ derivationStepZipperUp(ct1Tl.concat(ct2), shd))
                lemmaZipperConcatMatchesSameAsBothZippers(derivationStepZipperDown(ct1Hd, ct1Tl.concat(ct2), shd), derivationStepZipperUp(ct1Tl.concat(ct2), shd), stl)
                assert(matchZipper(derivUp, stl) == matchZipper(derivationStepZipperDown(ct1Hd, ct1Tl.concat(ct2), shd), stl) || matchZipper(derivationStepZipperUp(ct1Tl.concat(ct2), shd), stl))
                assert(matchZipper(derivUp, stl))
                if(matchZipper(derivationStepZipperUp(ct1Tl.concat(ct2), shd), stl)){ // Can be simplified now that we can call on zipper, we'll do

                  SetUtils.lemmaFlatMapOnSingletonSet(Set(ct1Tl.concat(ct2)), ct1Tl.concat(ct2), (c: Context[C]) => derivationStepZipperUp(c, shd))
                  assert(derivationStepZipper(Set(ct1Tl.concat(ct2)), shd) == derivationStepZipperUp(ct1Tl.concat(ct2), shd))
                  assert(matchZipper(Set(ct1Tl.concat(ct2)), s))
                  SetUtils.lemmaMapOnSingletonSet(Set(ct1Tl), ct1Tl, c => c.concat(ct2))
                  SetUtils.lemmaFlatMapOnSingletonSet(Set(ct1Tl), ct1Tl, (c: Context[C]) => derivationStepZipperUp(c, shd))
                  assert(derivationStepZipper(Set(ct1Tl.concat(ct2)), shd) == derivationStepZipperUp(ct1Tl.concat(ct2), shd))
                  assert(matchZipper(Set(ct1Tl.concat(ct2)), s))

                  lemmaTotalDepthZipperLargerThanOfAnyContext(z1.toList, ct1)
                  assert(contextDepthTotal(ct1) > contextDepthTotal(ct1Tl))
                  assert(zipperDepthTotal(List(ct1Tl)) < zipperDepthTotal(z1.toList))
                  lemmaConcatZipperMatchesStringThenFindConcatDefined(Set(ct1Tl), ct2, s) // Recursive call

                  check(findConcatSeparationZippers(Set(ct1Tl), Set(ct2), Nil(), s, s).isDefined)
                  val (s1, s2) = findConcatSeparationZippers(Set(ct1Tl), Set(ct2), Nil(), s, s).get
                  assert(matchZipper(Set(ct1Tl), s1))
                  assert(matchZipper(Set(ct2), s2))
                  assert(s1 ++ s2 == s)
                  if(s1.isEmpty){
                    assert(matchZipper(Set(ct1Tl), s1))
                    assert(Set(ct1Tl).exists(c => nullableContext(c)))
                    val witness = SetUtils.getWitness(Set(ct1Tl), (c: Context[C]) => nullableContext(c))
                    assert(nullableContext(ct1Tl))
                    assert(nullableContext(ct1))
                    SetUtils.lemmaContainsThenExists(Set(ct1Tl), ct1Tl, (c: Context[C]) => nullableContext(c))
                    SetUtils.lemmaContainsThenExists(Set(ct1), ct1, (c: Context[C]) => nullableContext(c))
                    assert(matchZipper(Set(ct1Tl), s1))
                    assert(matchZipper(Set(ct1), s1))
                    lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem(Set(ct1), Set(ct2), s1, s2, s, Nil(), s)
                    check(findConcatSeparationZippers(Set(ct1), Set(ct2), Nil(), s, s).isDefined)
                  } else {
                    SetUtils.lemmaFlatMapOnSingletonSet(Set(ct1), ct1, (c: Context[C]) => derivationStepZipperUp(c, shd))
                    assert(derivationStepZipper(Set(ct1), shd) == derivationStepZipperUp(ct1, shd))
                    assert(derivationStepZipperUp(ct1, shd) == derivationStepZipperDown(ct1Hd, ct1Tl, shd) ++ derivationStepZipperUp(ct1Tl, shd))
                    lemmaZipperConcatMatchesSameAsBothZippers(derivationStepZipperDown(ct1Hd, ct1Tl, shd), derivationStepZipperUp(ct1Tl, shd), s1.tail)
                    assert(matchZipper(Set(ct1), s1) == matchZipper(derivationStepZipperDown(ct1Hd, ct1Tl, shd), s1.tail) || matchZipper(derivationStepZipperUp(ct1Tl, shd), s1.tail))
                    
                    SetUtils.lemmaFlatMapOnSingletonSet(Set(ct1Tl), ct1Tl, (c: Context[C]) => derivationStepZipperUp(c, shd))
                    assert(derivationStepZipper(Set(ct1Tl), s1.head) == derivationStepZipperUp(ct1Tl, s1.head))
                    assert(matchZipper(Set(ct1Tl), s1) == matchZipper(derivationStepZipperUp(ct1Tl, s1.head), s1.tail))
                    assert(matchZipper(derivationStepZipperUp(ct1Tl, s1.head), s1.tail))
                    assert(matchZipper(Set(ct1), s1))

                    lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem(Set(ct1), Set(ct2), s1, s2, s, Nil(), s)
                    check(findConcatSeparationZippers(Set(ct1), Set(ct2), Nil(), s, s).isDefined)
                  }
                  SetUtils.lemmaContainsThenExists(z1, ct1, (c: Context[C]) => matchZipper(Set(c), s1))
                  lemmaExistsMatchingContextThenMatchingString(z1.toList, s1)
                  lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem(z1, Set(ct2), s1, s2, s, Nil(), s)

                  check(findConcatSeparationZippers(z1, Set(ct2), Nil(), s, s).isDefined)
                } else {
                  // ct1Hd is nullable but derivDown matches
                  check(matchZipper(derivationStepZipperUp(ct1Tl.concat(ct2), shd), stl) == false)
                  assert(matchZipper(derivationStepZipperDown(ct1Hd, ct1Tl.concat(ct2), shd), stl))

                  lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo(ct1Tl, ct1Hd, shd, ct2)
                  assert(derivationStepZipperDown(ct1Hd, ct1Tl.concat(ct2), shd) == appendTo(derivationStepZipperDown(ct1Hd, ct1Tl, shd), ct2)) // TODO lemma
                  lemmaConcatZipperMatchesStringThenFindConcatDefined(derivationStepZipperDown(ct1Hd, ct1Tl, shd), ct2, stl)

                  assert(findConcatSeparationZippers(derivationStepZipperDown(ct1Hd, ct1Tl, shd), Set(ct2), Nil(), stl, stl).isDefined)
                  val (s1, s2) = findConcatSeparationZippers(derivationStepZipperDown(ct1Hd, ct1Tl, shd), Set(ct2), Nil(), stl, stl).get
                  assert(matchZipper(derivationStepZipperDown(ct1Hd, ct1Tl, shd), s1))
                  assert(matchZipper(Set(ct2), s2))
                  assert(s1 ++ s2 == stl)

                  val derivOnly1 = derivationStepZipper(Set(ct1), shd)
                  val deriOnly1Up = derivationStepZipperUp(ct1, shd)
                  SetUtils.lemmaFlatMapOnSingletonSet(Set(ct1), ct1, (c: Context[C]) => derivationStepZipperUp(c, shd))
                  assert(derivOnly1 == deriOnly1Up)
                  assert(derivOnly1 == derivationStepZipperDown(ct1Hd, ct1Tl, shd) ++ derivationStepZipperUp(ct1Tl, shd))
                  lemmaZipperConcatMatchesSameAsBothZippers(derivationStepZipperDown(ct1Hd, ct1Tl, shd), derivationStepZipperUp(ct1Tl, shd), s1)
                  assert(matchZipper(Set(ct1), Cons(shd, s1)) == matchZipper(derivationStepZipperDown(ct1Hd, ct1Tl, shd), s1) || matchZipper(derivationStepZipperUp(ct1Tl, shd), s1))
                  assert(matchZipper(Set(ct1), Cons(shd, s1)))


                  lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem(Set(ct1), Set(ct2), Cons(shd, s1), s2, s, Nil(), s)
                  check(findConcatSeparationZippers(Set(ct1), Set(ct2), Nil(), s, s).isDefined)
                  assert(z1.contains(ct1))
                  SetUtils.lemmaContainsThenExists(z1, ct1, (c: Context[C]) => matchZipper(Set(c), Cons(shd, s1)))
                  lemmaExistsMatchingContextThenMatchingString(z1.toList, Cons(shd, s1))
                  lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem(z1, Set(ct2), Cons(shd, s1), s2, s, Nil(), s)
                  check(findConcatSeparationZippers(z1, Set(ct2), Nil(), s, s).isDefined)
                }
              } else {
                // ct1Hd is NOT nullable
                val derivDown = derivationStepZipperDown(ct1Hd, ct1Tl.concat(ct2), shd)
                assert(matchZipper(derivDown, stl))

                lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo(ct1Tl, ct1Hd, shd, ct2)
                assert(derivDown == appendTo(derivationStepZipperDown(ct1Hd, ct1Tl, shd), ct2))
                lemmaConcatZipperMatchesStringThenFindConcatDefined(derivationStepZipperDown(ct1Hd, ct1Tl, shd), ct2, stl)

                assert(findConcatSeparationZippers(derivationStepZipperDown(ct1Hd, ct1Tl, shd), Set(ct2), Nil(), stl, stl).isDefined)
                val (s1, s2) = findConcatSeparationZippers(derivationStepZipperDown(ct1Hd, ct1Tl, shd), Set(ct2), Nil(), stl, stl).get
                assert(matchZipper(derivationStepZipperDown(ct1Hd, ct1Tl, shd), s1))
                assert(matchZipper(Set(ct2), s2))
                assert(s1 ++ s2 == stl)

                val derivOnly1 = derivationStepZipper(Set(ct1), shd)
                val deriOnly1Up = derivationStepZipperUp(ct1, shd)
                SetUtils.lemmaFlatMapOnSingletonSet(Set(ct1), ct1, (c: Context[C]) => derivationStepZipperUp(c, shd))
                assert(derivOnly1 == deriOnly1Up)
                assert(derivOnly1 == derivationStepZipperDown(ct1Hd, ct1Tl, shd))
                assert(matchZipper(Set(ct1), Cons(shd, s1)) == matchZipper(derivationStepZipperDown(ct1Hd, ct1Tl, shd), s1))
                assert(matchZipper(Set(ct1), Cons(shd, s1)))


                lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem(Set(ct1), Set(ct2), Cons(shd, s1), s2, s, Nil(), s)
                check(findConcatSeparationZippers(Set(ct1), Set(ct2), Nil(), s, s).isDefined)
                assert(z1.contains(ct1))
                SetUtils.lemmaContainsThenExists(z1, ct1, (c: Context[C]) => matchZipper(Set(c), Cons(shd, s1)))
                lemmaExistsMatchingContextThenMatchingString(z1.toList, Cons(shd, s1))
                lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem(z1, Set(ct2), Cons(shd, s1), s2, s, Nil(), s)
                check(findConcatSeparationZippers(z1, Set(ct2), Nil(), s, s).isDefined)
              }
            }
            case Nil() => {
              assert(ct1.concat(ct2) == ct2)
              assert(matchZipper(Set(ct2), s))
              lemmaZipperOfEmptyContextMatchesEmptyString(Set(ct1), Nil())
              assert(matchZipper(Set(ct1), Nil()))
              lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem(Set(ct1), Set(ct2), Nil(), s, s, Nil(), s)

              check(findConcatSeparationZippers(Set(ct1), Set(ct2), Nil(), s, s).isDefined)
              SetUtils.lemmaContainsThenExists(z1, ct1, (c: Context[C]) => matchZipper(Set(c), Nil()))
              lemmaExistsMatchingContextThenMatchingString(z1.toList, Nil())
              check(findConcatSeparationZippers(z1, Set(ct2), Nil(), s, s).isDefined)
            }
        }
     
     
      }
      case Nil() => {
        
        assert(nullableZipper(zipperTot))
        assert(zipperTot.exists(c => nullableContext(c)))
        val witness = SetUtils.getWitness(zipperTot, (c: Context[C]) => nullableContext(c))
        assert(nullableContext(witness))
        val witnessBeforeConcat = z1.mapPost2(c => c.concat(ct2))(witness)
        assert(witnessBeforeConcat.concat(ct2) == witness)
        ListUtils.lemmaConcatThenFirstSubseqOfTot(witnessBeforeConcat.exprs, ct2.exprs)
        ListUtils.lemmaConcatThenSecondSubseqOfTot(witnessBeforeConcat.exprs, ct2.exprs)
        ListUtils.lemmaContentSubsetPreservesForall(witnessBeforeConcat.exprs ++ ct2.exprs, witnessBeforeConcat.exprs, (r: Regex[C]) => r.nullable)
        ListUtils.lemmaContentSubsetPreservesForall(witnessBeforeConcat.exprs ++ ct2.exprs, ct2.exprs, (r: Regex[C]) => r.nullable)
        assert(nullableContext(witnessBeforeConcat) && nullableContext(ct2))
        SetUtils.lemmaContainsThenExists(z1, witnessBeforeConcat, (c: Context[C]) => nullableContext(c))
        SetUtils.lemmaContainsThenExists(Set(ct2), ct2, (c: Context[C]) => nullableContext(c))

        assert(matchZipper(z1, Nil()))
        assert(matchZipper(Set(ct2), Nil()))
        lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem(z1, Set(ct2), Nil(), Nil(), Nil(), Nil(), Nil())
      }
    }
  }.ensuring( _ => findConcatSeparationZippers(z1, Set(ct2), Nil(), s, s).isDefined)

  // LEMMAS -----------------------------------------------------------------------------------------------------

  @ghost
  @opaque
  @inlineOnce
  def lemmaUnfocusPreservesNullability[C](r: Regex[C], z: Zipper[C]): Unit = {
    require(validRegex(r))
    require(r == unfocusZipper(z.toList))
    decreases(regexDepth(r))

    val reg = generalisedUnion(unfocusZipperList(z.toList))
    assert(r == reg)
    nullableGenUnionSpec(reg, unfocusZipperList(z.toList))
    assert(reg.nullable == unfocusZipperList(z.toList).exists(rr => rr.nullable))
    if(reg.nullable){
      assert( unfocusZipperList(z.toList).exists(rr => rr.nullable))
      val witnessNullableReg = ListUtils.getWitness(unfocusZipperList(z.toList), (rr: Regex[C]) => rr.nullable)
      assert(witnessNullableReg.nullable)
      assert(unfocusZipperList(z.toList).contains(witnessNullableReg))
      lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains(z.toList, witnessNullableReg)
      assert(z.exists(c => generalisedConcat(c.exprs) == witnessNullableReg))
      val witnessContext = SetUtils.getWitness(z, (c: Context[C]) => generalisedConcat(c.exprs) == witnessNullableReg)
      assert(z.contains(witnessContext))
      assert(generalisedConcat(witnessContext.exprs) == witnessNullableReg)
      assert(generalisedConcat(witnessContext.exprs).nullable)
      nullableGenConcatSpec(witnessNullableReg, witnessContext.exprs)
      assert(nullableContext(witnessContext))
      SetUtils.lemmaContainsThenExists(z, witnessContext, a => nullableContext(a))
      assert(nullableZipper(z))
    } else {
      assert(!unfocusZipperList(z.toList).exists(rr => rr.nullable))
      if(z.exists(c => nullableContext(c))){
        val witnessContext = SetUtils.getWitness(z, (c: Context[C]) => nullableContext(c))
        assert(z.contains(witnessContext))
        assert(nullableContext(witnessContext))
        lemmaZipperContainsContextThenUnfocusZipperListContains(z.toList, witnessContext)
        assert(unfocusZipperList(z.toList).contains(generalisedConcat(witnessContext.exprs)))
        nullableGenConcatSpec(generalisedConcat(witnessContext.exprs), witnessContext.exprs)
        assert(generalisedConcat(witnessContext.exprs).nullable)
        ListUtils.lemmaContainsThenExists(unfocusZipperList(z.toList), generalisedConcat(witnessContext.exprs), rr => rr.nullable)
        assert(unfocusZipperList(z.toList).exists(rr => rr.nullable))
        check(false)
      }

      assert(!z.exists(c => nullableContext(c)))
      assert(!nullableZipper(z))
    }



  }.ensuring(_ => r.nullable == nullableZipper(z))

  @ghost
  @opaque
  @inlineOnce
  def lemmaDerivativeStepZipperAssociative[C](z: Zipper[C], z1: Zipper[C], z2: Zipper[C],  a: C): Unit = {
    require(z == z1 ++ z2)
    SetUtils.lemmaFlatMapAssociative(z1, z2, (c: Context[C]) => derivationStepZipperUp(c, a))
  }.ensuring(_ => derivationStepZipper(z, a) == derivationStepZipper(z1, a) ++ derivationStepZipper(z2, a))

  @ghost
  @opaque
  @inlineOnce
  def lemmaTotalDepthZipperLargerThanOfAnyContext[C](zl: List[Context[C]], c: Context[C]): Unit = {
    require(zl.contains(c))
    decreases(zl.size)
    zl match {
      case Cons(hd, tl) => {
        if(tl.contains(c)){
          lemmaTotalDepthZipperLargerThanOfAnyContext(tl, c)
        }
      }
      case Nil() => check(false)
    }

    
  }.ensuring(_ => contextDepthTotal(c) <= zipperDepthTotal(zl))

  @ghost
  @opaque
  @inlineOnce
  def lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne[C](zl: List[Context[C]], c: Context[C]): Unit = {
    require(zl.contains(c))
    require(zl.size > 1)
    decreases(zl.size)
    zl match {
      case Cons(hd, tl) => {
        if(tl.contains(c) && tl.size > 1){
          lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne(tl, c)
        }
      }
      case Nil() => check(false)
    }

    
  }.ensuring(_ => contextDepthTotal(c) < zipperDepthTotal(zl))

  @ghost
  @opaque
  @inlineOnce
  def lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo[C](c: Context[C], r: Regex[C], a: C, auxCtx: Context[C]): Unit = {
    require(validRegex(r))
    decreases(regexDepth(r))
    val f: Context[C] => Context[C] = (cz: Context[C]) => cz.concat(auxCtx)
    r match {
      case ElementMatch(cc) if cc == a => {
        SetUtils.lemmaMapOnSingletonSet(Set(c), c, f)
        check(derivationStepZipperDown(r, c.concat(auxCtx), a) == appendTo(derivationStepZipperDown(r, c, a), auxCtx))
      }
      case Union(rOne, rTwo) => {
        assert(derivationStepZipperDown(r, c.concat(auxCtx), a) == derivationStepZipperDown(rOne, c.concat(auxCtx), a) ++ derivationStepZipperDown(rTwo, c.concat(auxCtx), a))
        lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo(c, rOne, a, auxCtx)
        lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo(c, rTwo, a, auxCtx)
        SetUtils.lemmaMapAssociative(derivationStepZipperDown(rOne, c, a), derivationStepZipperDown(rTwo, c, a), f)
        check(derivationStepZipperDown(r, c.concat(auxCtx), a) == appendTo(derivationStepZipperDown(r, c, a), auxCtx))
      }
      case Concat(rOne, rTwo) if rOne.nullable => {
        assert(derivationStepZipperDown(r, c.concat(auxCtx), a) == derivationStepZipperDown(rOne, c.concat(auxCtx).prepend(rTwo), a) ++ derivationStepZipperDown(rTwo, c.concat(auxCtx), a)) 
        lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo(c.prepend(rTwo), rOne, a, auxCtx)
        lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo(c, rTwo, a, auxCtx)
        SetUtils.lemmaMapAssociative(derivationStepZipperDown(rOne, c.prepend(rTwo), a), derivationStepZipperDown(rTwo, c, a), f)
        check(derivationStepZipperDown(r, c.concat(auxCtx), a) == appendTo(derivationStepZipperDown(r, c, a), auxCtx))
      }
      case Concat(rOne, rTwo) => {
        assert(derivationStepZipperDown(r, c.concat(auxCtx), a) == derivationStepZipperDown(rOne, c.concat(auxCtx).prepend(rTwo), a))
        lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo(c.prepend(rTwo), rOne, a, auxCtx)
        check(derivationStepZipperDown(r, c.concat(auxCtx), a) == appendTo(derivationStepZipperDown(r, c, a), auxCtx))
      }
      case Star(rInner) => {
        assert(derivationStepZipperDown(r, c.concat(auxCtx), a) == derivationStepZipperDown(rInner, c.concat(auxCtx).prepend(Star(rInner)), a))
        lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo(c.prepend(Star(rInner)), rInner, a, auxCtx)
        check(derivationStepZipperDown(r, c.concat(auxCtx), a) == appendTo(derivationStepZipperDown(r, c, a), auxCtx))
      }
      case _ => {
        SetUtils.lemmaMapOnEmptySetIsEmpty(Set(), f)
        check(derivationStepZipperDown(r, c.concat(auxCtx), a) == appendTo(derivationStepZipperDown(r, c, a), auxCtx))
      }
    }
  }.ensuring(_ => derivationStepZipperDown(r, c.concat(auxCtx), a) == appendTo(derivationStepZipperDown(r, c, a), auxCtx))


  @ghost
  @opaque
  @inlineOnce
  def lemmaConcatenateContextMatchesConcatOfStrings[C](ct1: Context[C], ct2: Context[C], s1: List[C], s2: List[C]): Unit = {
    // require(r1 == generalisedConcat(ct1.exprs))
    // require(r2 == generalisedConcat(ct2.exprs))
    require(matchZipper(Set(ct1), s1))
    require(matchZipper(Set(ct2), s2))
    decreases(s1.size, s2.size)
    val z1 = Set(ct1)
    val z2 = Set(ct2)
    val concatenated = Set(ct1.concat(ct2))
    ct1.exprs match {
      case Nil() => {
        lemmaZipperOfEmptyContextMatchesEmptyString(Set(ct1), s1)
        assert(s1.isEmpty)
        assert(ct1.concat(ct2) == ct2)
        assert(s1 ++ s2 == s2)
        check(matchZipper(Set(ct1.concat(ct2)), s1 ++ s2))
      }
      case Cons(ct1hd, ct1tl) => {
        assert(matchZipper(z1, s1))
        s1 match {
          case Cons(shd, stl) => {
            assert(matchZipper(derivationStepZipper(z1, shd), stl))
            val z1Deriv = derivationStepZipper(z1, shd)
            val concatenatedDeriv = derivationStepZipper(concatenated, shd)
            lemmaZipperMatchesExistsMatchingContext(z1Deriv.toList, stl)
            assert(z1Deriv.exists(c => matchZipper(Set(c), stl)))
            val witnessContext = SetUtils.getWitness(z1Deriv, (c: Context[C]) => matchZipper(Set(c), stl))
            lemmaConcatenateContextMatchesConcatOfStrings(witnessContext, ct2, stl, s2)

            assert(matchZipper(Set(witnessContext.concat(ct2)), stl ++ s2))
            
            // Here the idea is to prove that witnessContext.concat(ct2) is contained in the derivativeStep of ct1.concat(ct2)
            // And then to use another lemma that states that if a zipper contains a context that matches alone, then the zipper
            // matches the string

            val z1DerivUp = derivationStepZipperUp(ct1, shd)
            val z1DerivDown = derivationStepZipperDown(ct1hd, ct1.tail, shd)
            val concatenatedDerivUp = derivationStepZipperUp(ct1.concat(ct2), shd)
            val concatenatedDerivDown = derivationStepZipperDown(ct1hd, ct1.concat(ct2).tail, shd)
            SetUtils.lemmaFlatMapOnSingletonSet(z1, ct1, (c: Context[C]) => derivationStepZipperUp(c, shd))
            SetUtils.lemmaFlatMapOnSingletonSet(concatenated, ct1.concat(ct2), (c: Context[C]) => derivationStepZipperUp(c, shd))

            if(ct1hd.nullable){
              assert(z1DerivUp == z1DerivDown ++ derivationStepZipperUp(ct1.tail, shd))
              assert(z1Deriv == z1DerivUp)
              assert(concatenatedDerivUp == concatenatedDerivDown ++ derivationStepZipperUp(ct1.concat(ct2).tail, shd))
              assert(concatenatedDeriv == concatenatedDerivUp)
              lemmaZipperConcatMatchesSameAsBothZippers(z1DerivDown, derivationStepZipperUp(ct1.tail, shd), stl)
              lemmaZipperConcatMatchesSameAsBothZippers(concatenatedDerivDown, derivationStepZipperUp(ct1.concat(ct2).tail, shd), stl ++ s2)
              assert(matchZipper(z1Deriv, stl) == matchZipper(z1, s1))
              assert(matchZipper(z1, s1) == (matchZipper(z1DerivDown, stl) || matchZipper(derivationStepZipperUp(ct1.tail, shd), stl)))
              assert(matchZipper(concatenatedDeriv, stl) == matchZipper(concatenated, s1))

            } else {
              assert(z1DerivUp == z1DerivDown)
              assert(z1Deriv == z1DerivDown)
              assert(matchZipper(z1DerivDown, stl) == matchZipper(z1, s1))
            }

            check((s1 ++ s2).tail == stl ++ s2)
            lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx(ct1, ct2, witnessContext, shd)
            check(concatenatedDeriv.contains(witnessContext.concat(ct2)))
            SetUtils.lemmaContainsThenExists(concatenatedDeriv, witnessContext.concat(ct2), (c: Context[C]) => matchZipper(Set(c), stl ++ s2))
            check(concatenatedDeriv.exists(c => matchZipper(Set(c), stl ++ s2)))
            lemmaExistsMatchingContextThenMatchingString(concatenatedDeriv.toList, stl ++ s2)
            check(matchZipper(concatenatedDeriv, stl ++ s2))
            
            check(matchZipper(Set(ct1.concat(ct2)), s1 ++ s2))
          }
          case Nil() => {
            assert(nullableZipper(z1))
            val witness = SetUtils.getWitness(z1, (c: Context[C]) => nullableContext(c))
            assert(ct1 == witness)
            assert(nullableContext(ct1))
            assert(matchZipper(z2, s2))
            lemmaPrependingNullableCtxStillMatches(ct1, ct2, s2)
          }
        }
      }
    }
  }.ensuring(_ => matchZipper(Set(ct1.concat(ct2)), s1 ++ s2))

  @ghost 
  @opaque
  @inlineOnce
  def lemmaPrependingNullableCtxStillMatches[C](ct1: Context[C], ct2: Context[C], s: List[C]): Unit = {
    require(matchZipper(Set(ct2), s))
    require(nullableContext(ct1))
    decreases(ct1.exprs.size)
    s match {
      case Cons(shd, stl) => {
        // We need to prove that a nullable context followed by another context contains the other context derivative
        // when deriving as the nullable context will be consumed in derivUp
        val concatDerivUp = derivationStepZipperUp(ct1.concat(ct2), shd)
        SetUtils.lemmaFlatMapOnSingletonSet(Set(ct1), ct1, (c: Context[C]) => derivationStepZipperUp(c, shd))
        SetUtils.lemmaFlatMapOnSingletonSet(Set(ct1.concat(ct2)), ct1.concat(ct2), (c: Context[C]) => derivationStepZipperUp(c, shd))
        assert(concatDerivUp == derivationStepZipper(Set(ct1.concat(ct2)), shd))
        ct1.exprs match {
          case Cons(ct1hd, ct1tl) => {
            val ct1tl = ct1.tail
            val derivUp = derivationStepZipperUp(ct1, shd)
            assert(ct1hd.nullable)
            assert(derivUp == derivationStepZipperDown(ct1hd, ct1tl, shd) ++ derivationStepZipperUp(ct1tl, shd))
            assert(concatDerivUp == derivationStepZipperDown(ct1hd, ct1tl.concat(ct2), shd) ++ derivationStepZipperUp(ct1tl.concat(ct2), shd))
            lemmaPrependingNullableCtxStillMatches(ct1tl, ct2, s)
            check(matchZipper(Set(ct1tl.concat(ct2)), s))
            SetUtils.lemmaFlatMapOnSingletonSet(Set(ct1tl.concat(ct2)), ct1tl.concat(ct2), (c: Context[C]) => derivationStepZipperUp(c, shd))
            assert(matchZipper(derivationStepZipperUp(ct1tl.concat(ct2), shd), stl))
            lemmaZipperConcatMatchesSameAsBothZippers(derivationStepZipperDown(ct1hd, ct1tl.concat(ct2), shd), derivationStepZipperUp(ct1tl.concat(ct2), shd), stl)
            check(matchZipper(Set(ct1.concat(ct2)), s))
          }
          case Nil() => check(matchZipper(Set(ct1.concat(ct2)), s))
        }
        
      }
      case Nil() =>
        assert(nullableContext(ct2))
        ListUtils.lemmaConcatPreservesForall(ct1.exprs, ct2.exprs, (r: Regex[C]) => r.nullable)
        check(matchZipper(Set(ct1.concat(ct2)), s))
    }

  }.ensuring(_ => matchZipper(Set(ct1.concat(ct2)), s))


  @ghost 
  @opaque
  @inlineOnce
  def lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx[C](ct1: Context[C], ct2: Context[C], cWitness: Context[C], c: C): Unit = {
    require(derivationStepZipperUp(ct1, c).contains(cWitness))
    decreases(ct1.exprs.size, contextDepthTotal(ct1))
    val concatCtx = ct1.concat(ct2)
    ct1.exprs match{
      case Cons(hd, _) => {
        val tl = ct1.tail
        val derivUp = derivationStepZipperUp(ct1, c)
        val derivDown = derivationStepZipperDown(hd, tl, c)
        if(hd.nullable){
          assert(derivUp == derivDown ++ derivationStepZipperUp(tl, c))
          assert(derivDown.contains(cWitness) || derivationStepZipperUp(tl, c).contains(cWitness))
          if(derivationStepZipperUp(tl,c).contains(cWitness)) {
            lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx(tl, ct2, cWitness, c)
            check(derivationStepZipperUp(concatCtx, c).contains(cWitness.concat(ct2)))
          } else{
            val concatDerivDown = derivationStepZipperDown(hd, concatCtx.tail, c)
            lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown(hd, tl, ct2, cWitness, c)
            check(concatDerivDown.contains(cWitness.concat(ct2)))
          }
        } else {
          assert(derivUp == derivDown)
          assert(derivDown.contains(cWitness))
          val concatDerivDown = derivationStepZipperDown(hd, concatCtx.tail, c)
          lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown(hd, tl, ct2, cWitness, c)
          check(concatDerivDown.contains(cWitness.concat(ct2)))
        }
        
      } 
      case Nil() => check(false)
    }
  }.ensuring(_ => derivationStepZipperUp(ct1.concat(ct2), c).contains(cWitness.concat(ct2)))

  @ghost 
  @opaque
  @inlineOnce
  def lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown[C](r1: Regex[C], ct1: Context[C], ct2: Context[C], cWitness: Context[C], c: C): Unit = {
    require(validRegex(r1))
    require(derivationStepZipperDown(r1, ct1, c).contains(cWitness))
    decreases(regexDepth(r1))
    val concatCtx = ct1.concat(ct2)

    val derivDown = derivationStepZipperDown(r1, ct1, c)
    val concatDerivDown = derivationStepZipperDown(r1, concatCtx, c)

    r1 match {
      case ElementMatch(cc) if c == cc => {
        assert(derivDown == Set(ct1))
        assert(Set(ct1).contains(cWitness))
        assert(cWitness == ct1)
        assert(concatDerivDown == Set(ct1.concat(ct2)))
        check(concatDerivDown.contains(cWitness.concat(ct2)))
      }
      case Union(rOne, rTwo) => {
        assert(derivDown == derivationStepZipperDown(rOne, ct1, c) ++ derivationStepZipperDown(rTwo, ct1, c))
        if(derivationStepZipperDown(rOne, ct1, c).contains(cWitness)){
          lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown(rOne, ct1, ct2, cWitness, c)
          check(concatDerivDown.contains(cWitness.concat(ct2)))
        } else {
          lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown(rTwo, ct1, ct2, cWitness, c)
          check(concatDerivDown.contains(cWitness.concat(ct2)))
        }
      }
      case Concat(rOne, rTwo) if rOne.nullable => {
        assert(derivDown == derivationStepZipperDown(rOne, ct1.prepend(rTwo), c) ++ derivationStepZipperDown(rTwo, ct1, c))
        if(derivationStepZipperDown(rOne, ct1.prepend(rTwo), c).contains(cWitness)) {
          lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown(rOne, ct1.prepend(rTwo), ct2, cWitness, c)
          check(concatDerivDown.contains(cWitness.concat(ct2)))
        } else {
          lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown(rTwo, ct1, ct2, cWitness, c)
          check(concatDerivDown.contains(cWitness.concat(ct2)))
        }
      }
      case Concat(rOne, rTwo) => {
        assert(derivDown == derivationStepZipperDown(rOne, ct1.prepend(rTwo), c))
        lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown(rOne, ct1.prepend(rTwo), ct2, cWitness, c)
        check(concatDerivDown.contains(cWitness.concat(ct2)))
      }
      case Star(rInner) => {
        assert(derivDown == derivationStepZipperDown(rInner, ct1.prepend(Star(rInner)), c))
        lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown(rInner, ct1.prepend(Star(rInner)), ct2, cWitness, c)
        check(concatDerivDown.contains(cWitness.concat(ct2)))
      }
      case _ =>
    }
   
  }.ensuring(_ => derivationStepZipperDown(r1, ct1.concat(ct2), c).contains(cWitness.concat(ct2)))


  @ghost
  @opaque
  @inlineOnce
  def lemmaZipperMatchesExistsMatchingContext[C](zl: List[Context[C]], s: List[C]): Unit = {
    require(matchZipper(zl.content, s))
    decreases(zl.size)
    zl match {
      case Cons(ctHd, ctTl) => {
        val zHd = Set(ctHd)
        lemmaZipperConcatMatchesSameAsBothZippers(zHd, ctTl.content, s)
        assert(matchZipper(zl.content, s) == matchZipper(zHd, s) || matchZipper(ctTl.content, s))
        if(matchZipper(zHd, s)){
          SetUtils.lemmaContainsThenExists(zl.content, ctHd, (c: Context[C]) => matchZipper(Set(c), s))
          check(zl.content.exists(c => matchZipper(Set(c), s)))
        } else {
          assert(matchZipper(ctTl.content, s))
          lemmaZipperMatchesExistsMatchingContext( ctTl, s)
          assert(matchZipper(zl.content, s))
          check(matchZipper(zl.content, s))
        }
        check(zl.exists(c => matchZipper(Set(c), s)))
      }
      case Nil() => 
        lemmaEmptyZipperMatchesNothing(zl.content, s)
        check(false)
    }
  }.ensuring(_ => zl.exists(c => matchZipper(Set(c), s)))

  @ghost
  @opaque
  @inlineOnce
  def lemmaExistsMatchingContextThenMatchingString[C](zl: List[Context[C]], s: List[C]): Unit = {
    require(zl.exists(c => matchZipper(Set(c), s)))
    decreases(zl.size)
    zl match {
      case Cons(ctHd, ctTl) => {
        val zHd = Set(ctHd)
        lemmaZipperConcatMatchesSameAsBothZippers(zHd, ctTl.content, s)
        if(matchZipper(zHd, s)){
          check(matchZipper(zl.content, s))
        } else {
          lemmaExistsMatchingContextThenMatchingString(ctTl, s)
          check(matchZipper(zl.content, s))
        }
      }
      case Nil() => 
        check(false)
    }
  }.ensuring(_ => matchZipper(zl.content, s))


  @ghost
  @opaque
  @inlineOnce
  def lemmaElementMatchZipperAcceptsOnlyThisChar[C](z: Zipper[C], c: Context[C], a: C, s: List[C]): Unit = {
    require(z == Set(c))
    require(!c.isEmpty)
    require(c.head == ElementMatch[C](a))
    require(c.tail.isEmpty)
    s match {
      case Cons(hd, tl) if hd == a => {
        val deriv: Zipper[C] = derivationStepZipper(z, s.head)
        val derivUp = derivationStepZipperUp(c, s.head)
        assert(derivUp == Set(Context(List())))
        unfold(z.flatMapPost(c => derivationStepZipperUp(c, a))(Context[C](List())))
        assert(deriv.contains(Context[C](List())))
        if(deriv != Set(Context[C](List()))) {
          assert(deriv.exists(c => c != Context[C](List())))
          val witness = SetUtils.getWitness(deriv, (c: Context[C]) => c != Context[C](List()))
          unfold(z.flatMapPost(c => derivationStepZipperUp(c, a))(witness))
          assert(deriv.contains(witness))
          assert(z.exists(c => derivationStepZipperUp(c, s.head).contains(witness)))
          val witnessContext = SetUtils.getWitness(z, (c: Context[C]) => derivationStepZipperUp(c, s.head).contains(witness))
          assert(z.contains(witnessContext))
          check(false)
        }
        check(deriv == Set(Context[C](List()))) 
        if(tl.isEmpty) {
          lemmaZipperOfEmptyContextMatchesEmptyString(Set(Context(List())), tl)
          check(matchZipper(z, s))

        } else {
          lemmaZipperOfEmptyContextMatchesEmptyString(deriv, tl)
          check(!matchZipper(z, s))
        }
      }
      case Cons(shd, tl) if shd != a => {
        val deriv: Zipper[C] = derivationStepZipper(z, shd)
        val derivUp = derivationStepZipperUp(c, shd)
        assert(derivUp == Set())
        if(!deriv.isEmpty){
          val hd = deriv.toList.head
          val f: Context[C] => Zipper[C] = ct => derivationStepZipperUp(ct, shd)
          assert(z.flatMap(f).contains(hd))
          assert(deriv.contains(hd))
          unfold(z.flatMapPost(f)(hd))
          assert(z.exists(context => derivationStepZipperUp(context, s.head).contains(hd)))
          assert(z == Set(c))
          check(false)
        }
        assert(deriv.isEmpty)
        lemmaEmptyZipperMatchesNothing(deriv, tl)
        }
      case Nil() => 
        check(!nullableContext(c))
    }
  }.ensuring(_ => matchZipper(z, s) == (s == List(a)))


  @ghost
  @opaque
  @inlineOnce
  def lemmaZipperOfEmptyContextMatchesEmptyString[C](z: Zipper[C], s: List[C]): Unit = {
    require(z == Set(Context(List())))
    decreases(s.size)
    s match {
      case Cons(shd, tl) => 
        val deriv: Zipper[C] = derivationStepZipper(z, shd)
        val derivUp = derivationStepZipperUp(Context(List()), shd)
        assert(derivUp == Set())

        if(!deriv.isEmpty){
          val hd = deriv.toList.head
          val f: Context[C] => Zipper[C] = ct => derivationStepZipperUp(ct, shd)
          assert(z.flatMap(f).contains(hd))
          assert(deriv.contains(hd))
          unfold(z.flatMapPost(f)(hd))
          assert(z.exists(context => derivationStepZipperUp(context, s.head).contains(hd)))
          assert(z == Set(Context(List())))
          check(false)
        }
        check((deriv.isEmpty))

        lemmaEmptyZipperMatchesNothing(derivUp, tl)
      case Nil() => 
        check(nullableContext(Context[C](List())))
    }
  }.ensuring(_ => matchZipper(z, s) == s.isEmpty)


  @ghost
  @opaque
  @inlineOnce
  def lemmaEmptyZipperMatchesNothing[C](z: Zipper[C], s: List[C]): Unit = {
    require(z.isEmpty)
    decreases(s.size)
    s match {
      case Cons(hd, tl) => 
        SetUtils.lemmaFlatMapOnEmptySetIsEmpty(z, (c: Context[C]) => derivationStepZipperUp(c, hd))
        lemmaEmptyZipperMatchesNothing(z, tl)
      case Nil() => ()
    }
  }.ensuring(_ => !matchZipper(z, s))

  @ghost
  @opaque
  @inlineOnce
  def lemmaZipperStartingWithEmptyLangMatchesNothing[C](z: Zipper[C], c: Context[C], s: List[C]): Unit = {
    require(z == Set(c))
    require(!c.isEmpty)
    require(c.head == EmptyLang[C]())
    if(s.isEmpty){
      check(!nullableContext(c))
    }else{
      val deriv: Zipper[C]= derivationStepZipper(z, s.head)
      val derivUp = derivationStepZipperUp(c, s.head)
      assert(derivUp == Set())
      if(!deriv.isEmpty){
        val hd = deriv.toList.head
        val f: Context[C] => Zipper[C] = ct => derivationStepZipperUp(ct, s.head)
        assert(z.flatMap(f).contains(hd))
        assert(deriv.contains(hd))
        unfold(z.flatMapPost(f)(hd))
        assert(z.exists(context => derivationStepZipperUp(context, s.head).contains(hd)))
        assert(z == Set(c))
        check(false)
      }
      assert(deriv.isEmpty)
      lemmaEmptyZipperMatchesNothing(deriv, s.tail)
    }
  }.ensuring(_ => !matchZipper(z, s))


  @ghost
  @opaque
  @inlineOnce
  def lemmaZipperOfEmptyExprMatchesOnlyEmptyString[C](z: Zipper[C], s: List[C]): Unit = {
    require(unfocusZipper(z.toList) == EmptyExpr[C]())
    if(z == focus(EmptyExpr[C]())){
      check(nullableContext(Context(List(EmptyExpr[C]()))))
      val c = Context(List(EmptyExpr[C]()))
      if (s.isEmpty) {
        check(nullableContext(c))
      } else {
        val deriv: Zipper[C]= derivationStepZipper(z, s.head)
        val derivUp = derivationStepZipperUp(c, s.head)
        assert(derivUp == Set())
        if(!deriv.isEmpty){
          val hd = deriv.toList.head
          val f: Context[C] => Zipper[C] = ct => derivationStepZipperUp(ct, s.head)
          assert(z.flatMap(f).contains(hd))
          assert(deriv.contains(hd))
          unfold(z.flatMapPost(f)(hd))
          assert(z.exists(context => derivationStepZipperUp(context, s.head).contains(hd)))
          assert(z == Set(c))
          check(false)
        }
        lemmaEmptyZipperMatchesNothing(deriv, s.tail)
        check(matchZipper(z, s) == false)
      }
    }
    else{
      val c: Context[C] = Context(List())
      assert(z == Set(c))
      if (s.isEmpty) {
        check(nullableContext(c))
      } else {
        val deriv: Zipper[C]= derivationStepZipper(z, s.head)
        val derivUp = derivationStepZipperUp(c, s.head)
        assert(derivUp == Set())
        if(!deriv.isEmpty){
          val hd = deriv.toList.head
          val f: Context[C] => Zipper[C] = ct => derivationStepZipperUp(ct, s.head)
          assert(z.flatMap(f).contains(hd))
          assert(deriv.contains(hd))
          unfold(z.flatMapPost(f)(hd))
          assert(z.exists(context => derivationStepZipperUp(context, s.head).contains(hd)))
          assert(z == Set(c))
          check(false)
        }
        lemmaEmptyZipperMatchesNothing(deriv, s.tail)
        check(matchZipper(z, s) == false)
      }
    }
  }.ensuring(_ => matchZipper(z, s) == s.isEmpty)


  // --------- Find Longest Match Zipper ------------------------------

  def findLongestMatchZipperFast[C](z: Zipper[C], input: Vector[C]): (Vector[C], Vector[C]) = {
    val prefixLength = findLongestMatchInnerZipperFast(z, Nil(), 0, input.list, input, input.size)

    ghostExpr(ListUtils.lemmaConcatSameAndSameSizesThenSameLists(
      input.splitAt(prefixLength)._1.list,
      input.splitAt(prefixLength)._2.list,
      findLongestMatchInnerZipper(z, Nil(), 0, input.list, input.list, input.size)._1,
      findLongestMatchInnerZipper(z, Nil(), 0, input.list, input.list, input.size)._2
    ))
    ghostExpr(Vector.listEqImpliesEq(input.splitAt(prefixLength)._1 ++ input.splitAt(prefixLength)._2, input))
    input.splitAt(prefixLength)
  }.ensuring (res => (res._1.list, res._2.list) == findLongestMatchZipper(z, input.list) && res._1 ++ res._2 == input)
  
  def findLongestMatchInnerZipperFast[C](z: Zipper[C], @ghost testedP: List[C], testedPSize: BigInt, @ghost testedSuffix: List[C], totalInput: Vector[C], totalInputSize: BigInt): BigInt = {
    require(testedP ++ testedSuffix == totalInput.list)
    require(testedPSize == testedP.size)
    require(totalInputSize == totalInput.size)
    decreases(totalInput.size - testedP.size)
    
    ghostExpr(ListUtils.lemmaConcatTwoListThenFirstIsPrefix(testedP, testedSuffix))
    assert(ListUtils.isPrefix(testedP, totalInput.list))
    ghostExpr(ListUtils.lemmaSamePrefixThenSameSuffix(testedP, testedSuffix, testedP, ListUtils.getSuffix(totalInput.list, testedP), totalInput.list))
    ghostExpr(check(ListUtils.getSuffix(totalInput.list, testedP) == testedSuffix))
    
    if (lostCauseZipper(z)) {
      // (Nil[C](), totalInput)
      BigInt(0)
    } else if (testedPSize == totalInputSize) {
      ghostExpr(ListUtils.lemmaIsPrefixRefl(totalInput.list, totalInput.list))
      ghostExpr(ListUtils.lemmaIsPrefixSameLengthThenSameList(totalInput.list, testedP, totalInput.list))
      assert(testedP == totalInput.list)
      if (nullableZipper(z)) {
        // (testedP, Nil[C]())
        testedPSize
      } else {
        // (Nil[C](), totalInput)
        BigInt(0)
      }
    } else {
      ghostExpr({
        val (splitL, splitR) = totalInput.splitAt(testedPSize)
        assert(splitL.list ++ splitR.list == totalInput.list)
        assert(testedP ++ testedSuffix == totalInput.list)
        assert(splitL.size == testedPSize)
        ListUtils.lemmaConcatSameAndSameSizesThenSameLists(splitL.list, splitR.list, testedP, testedSuffix)
        assert(splitL.list == testedP)
        assert(splitR.list == testedSuffix)
      })
      ghostExpr(ListUtils.lemmaDropApply(totalInput.list, testedPSize))
      assert(totalInput(testedPSize) == testedSuffix.head)
      ghostExpr(ListUtils.lemmaIsPrefixThenSmallerEqSize(testedP, totalInput.list))
      ghostExpr({
        if (testedP.size == totalInput.size) {
          ListUtils.lemmaIsPrefixRefl(totalInput.list, totalInput.list)
          ListUtils.lemmaIsPrefixSameLengthThenSameList(totalInput.list, testedP, totalInput.list)
          check(false)
        }
      })
      assert(testedP.size < totalInput.size)
      ghostExpr(ListUtils.lemmaAddHeadSuffixToPrefixStillPrefix(testedP, totalInput.list))
      ghostExpr(ListUtils.lemmaMoveElementToOtherListKeepsConcatEq(testedP, totalInput(testedPSize), testedSuffix.tail, totalInput.list))
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
    require(cacheUp.valid)
    require(cacheDown.valid)
    val prefixLength = findLongestMatchInnerZipperFastMem(cacheUp, cacheDown, z, Nil(), 0, input.list, input, input.size)
    ghostExpr(unfold(findLongestMatchInnerZipperFastMem(cacheUp, cacheDown, z, Nil(), 0, input.list, input, input.size)))
    ghostExpr(unfold(findLongestMatchInnerZipperFast(z, Nil(), 0, input.list, input, input.size)))
    ghostExpr(unfold(findLongestMatchInnerZipper(z, Nil(), 0, input.list, input.list, input.size)))
    ghostExpr(Vector.listEqImpliesEq(input.splitAt(prefixLength)._1 ++ input.splitAt(prefixLength)._2, input))
    ghostExpr(ListUtils.lemmaConcatSameAndSameSizesThenSameLists(
      input.splitAt(prefixLength)._1.list,
      input.splitAt(prefixLength)._2.list,
      findLongestMatchInnerZipper(z, Nil(), 0, input.list, input.list, input.size)._1,
      findLongestMatchInnerZipper(z, Nil(), 0, input.list, input.list, input.size)._2
    ))
    input.splitAt(prefixLength)
  }.ensuring (res => cacheUp.valid && cacheDown.valid && res == findLongestMatchZipperFast(z, input))
  
  def findLongestMatchInnerZipperFastMem[C](cacheUp: CacheUp[C], cacheDown: CacheDown[C], z: Zipper[C], @ghost testedP: List[C], testedPSize: BigInt, @ghost testedSuffix: List[C], totalInput: Vector[C], totalInputSize: BigInt): BigInt = {
    require(testedP ++ testedSuffix == totalInput.list)
    require(testedPSize == testedP.size)
    require(totalInputSize == totalInput.size)
    require(cacheUp.valid)
    require(cacheDown.valid)
    decreases(totalInput.size - testedP.size)
    
    ghostExpr(ListUtils.lemmaConcatTwoListThenFirstIsPrefix(testedP, testedSuffix))
    assert(ListUtils.isPrefix(testedP, totalInput.list))
    ghostExpr(ListUtils.lemmaSamePrefixThenSameSuffix(testedP, testedSuffix, testedP, ListUtils.getSuffix(totalInput.list, testedP), totalInput.list))
    ghostExpr(check(ListUtils.getSuffix(totalInput.list, testedP) == testedSuffix))
    
    if (lostCauseZipper(z)) {
      // (Nil[C](), totalInput)
      BigInt(0)
    } else if (testedPSize == totalInputSize) {
      ghostExpr(ListUtils.lemmaIsPrefixRefl(totalInput.list, totalInput.list))
      ghostExpr(ListUtils.lemmaIsPrefixSameLengthThenSameList(totalInput.list, testedP, totalInput.list))
      assert(testedP == totalInput.list)
      if (nullableZipper(z)) {
        // (testedP, Nil[C]())
        testedPSize
      } else {
        // (Nil[C](), totalInput)
        BigInt(0)
      }
    } else {
      ghostExpr({
        val (splitL, splitR) = totalInput.splitAt(testedPSize)
        assert(splitL.list ++ splitR.list == totalInput.list)
        assert(testedP ++ testedSuffix == totalInput.list)
        assert(splitL.size == testedPSize)
        ListUtils.lemmaConcatSameAndSameSizesThenSameLists(splitL.list, splitR.list, testedP, testedSuffix)
        assert(splitL.list == testedP)
        assert(splitR.list == testedSuffix)
      })
      ghostExpr(ListUtils.lemmaDropApply(totalInput.list, testedPSize))
      assert(totalInput(testedPSize) == testedSuffix.head)
      ghostExpr(ListUtils.lemmaIsPrefixThenSmallerEqSize(testedP, totalInput.list))
      ghostExpr({
        if (testedP.size == totalInput.size) {
          ListUtils.lemmaIsPrefixRefl(totalInput.list, totalInput.list)
          ListUtils.lemmaIsPrefixSameLengthThenSameList(totalInput.list, testedP, totalInput.list)
          check(false)
        }
      })
      assert(testedP.size < totalInput.size)
      ghostExpr(ListUtils.lemmaAddHeadSuffixToPrefixStillPrefix(testedP, totalInput.list))
      ghostExpr(ListUtils.lemmaMoveElementToOtherListKeepsConcatEq(testedP, totalInput(testedPSize), testedSuffix.tail, totalInput.list))
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
    ghostExpr(ListUtils.lemmaSizeTrEqualsSize(input, 0))
    findLongestMatchInnerZipper(z, Nil(), 0, input, input, ListUtils.sizeTr(input))
  }.ensuring (res => res._1 ++ res._2 == input)
  
  def findLongestMatchInnerZipper[C](z: Zipper[C], testedP: List[C], testedPSize: BigInt, testedSuffix: List[C], totalInput: List[C], totalInputSize: BigInt): (List[C], List[C]) = {
    require(testedP ++ testedSuffix == totalInput)
    require(testedPSize == testedP.size)
    require(totalInputSize == totalInput.size)
    decreases(totalInput.size - testedP.size)

    ghostExpr(ListUtils.lemmaConcatTwoListThenFirstIsPrefix(testedP, testedSuffix))
    assert(ListUtils.isPrefix(testedP, totalInput))
    ghostExpr(ListUtils.lemmaSamePrefixThenSameSuffix(testedP, testedSuffix, testedP, ListUtils.getSuffix(totalInput, testedP), totalInput))
    ghostExpr(check(ListUtils.getSuffix(totalInput, testedP) == testedSuffix))

    if (lostCauseZipper(z)) {
      (Nil[C](), totalInput)
    } else if (testedPSize == totalInputSize) {
      ghostExpr(ListUtils.lemmaIsPrefixRefl(totalInput, totalInput))
      ghostExpr(ListUtils.lemmaIsPrefixSameLengthThenSameList(totalInput, testedP, totalInput))
      assert(testedP == totalInput)
      if (nullableZipper(z)) {
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
      ghostExpr(ListUtils.lemmaAddHeadSuffixToPrefixStillPrefix(testedP, totalInput))
      ghostExpr(ListUtils.lemmaMoveElementToOtherListKeepsConcatEq(testedP, testedSuffix.head, testedSuffix.tail, totalInput))
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

  // ----------------------------- Find Longest Match Zipper Theorems ------------------------------

  @ghost
  def longestMatchSameAsRegex[C](r: Regex[C], z: Zipper[C], input: List[C]): Unit = {
    require(validRegex(r))
    require(unfocusZipper(z.toList) == r)

    val (longestPrefixZ, suffixZ) = findLongestMatchZipper(z, input)
    val (longestPrefixR, suffixR) = findLongestMatch(r, input)

    assert(longestPrefixZ ++ suffixZ == input)
    assert(longestPrefixR ++ suffixR == input)
    ListUtils.lemmaConcatTwoListThenFirstIsPrefix(longestPrefixZ, suffixZ)
    ListUtils.lemmaConcatTwoListThenFirstIsPrefix(longestPrefixR, suffixR)

    longestMatchIsAcceptedByMatchOrIsEmpty(z, input)
    VerifiedRegexMatcher.longestMatchIsAcceptedByMatchOrIsEmpty(r, input)
    assert(matchZipper(z, longestPrefixZ) || longestPrefixZ.isEmpty)
    assert(matchR(r, longestPrefixR) || longestPrefixR.isEmpty)
    theoremZipperRegexEquiv(z, z.toList, r, longestPrefixR)
    theoremZipperRegexEquiv(z, z.toList, r, longestPrefixZ)

    if(longestPrefixR.size > longestPrefixZ.size){
      longestMatchNoBiggerStringMatch(z, input, longestPrefixZ, longestPrefixR)
      check(false)
    } else if(longestPrefixZ.size > longestPrefixR.size){
      VerifiedRegexMatcher.longestMatchNoBiggerStringMatch(r, input, longestPrefixR, longestPrefixZ)
      check(false)
    } else{
      ListUtils.lemmaIsPrefixSameLengthThenSameList(longestPrefixZ, longestPrefixR, input)
      ListUtils.lemmaSamePrefixThenSameSuffix(longestPrefixZ, suffixZ, longestPrefixR, suffixR, input)
      assert(longestPrefixZ == longestPrefixR)
      assert(suffixZ == suffixR)
    }
  }.ensuring(_ => findLongestMatchZipper(z, input) == findLongestMatch(r, input))


  @ghost
  def longestMatchIsAcceptedByMatchOrIsEmpty[C](z: Zipper[C], input: List[C]): Unit = {
    longestMatchIsAcceptedByMatchOrIsEmptyRec(z, z, Nil(), input)

  }.ensuring (_ => findLongestMatchInnerZipper(z, Nil(), Nil[C]().size, input, input, input.size)._1.isEmpty || matchZipper(z, findLongestMatchInnerZipper(z, Nil(), Nil[C]().size, input, input, input.size)._1))

  @ghost
  def longestMatchNoBiggerStringMatch[C](baseZ: Zipper[C], input: List[C], returnP: List[C], bigger: List[C]): Unit = {
    require(ListUtils.isPrefix(returnP, input))
    require(ListUtils.isPrefix(bigger, input))
    require(bigger.size >= returnP.size)
    require(findLongestMatchInnerZipper(baseZ, Nil(), Nil[C]().size, input, input, input.size)._1 == returnP)

    if (bigger.size == returnP.size) {
      ListUtils.lemmaIsPrefixSameLengthThenSameList(bigger, returnP, input)
    } else {
      if (matchZipper(baseZ, bigger)) {
        lemmaKnownAcceptedStringThenFromSmallPAtLeastThat(baseZ, baseZ, input, Nil(), bigger)
        check(false)
      }
    }

  }.ensuring (_ => bigger == returnP || !matchZipper(baseZ, bigger))


  // ----------------------------- Find Longest Match Zipper Lemmas ------------------------------
  @ghost
  def lemmaKnownAcceptedStringThenFromSmallPAtLeastThat[C](baseZ: Zipper[C], z: Zipper[C], input: List[C], testedP: List[C], knownP: List[C]): Unit = {
    require(ListUtils.isPrefix(testedP, input))
    require(ListUtils.isPrefix(knownP, input))
    require(knownP.size >= testedP.size)
    require(matchZipper(baseZ, knownP))
    require({
      ListUtils.lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther(knownP, testedP, input)
      matchZipper(z, ListUtils.getSuffix(knownP, testedP))
    })
    require(derivationZipper(baseZ, testedP) == z)
    decreases(knownP.size - testedP.size)

     if(lostCauseZipper(z)){
      // Here derivative(r, testedP) cannot be lost cause, because we know baseR matches knownP and knownP is larger than testedP
      lemmaMatchZipperIsSameAsWholeDerivativeAndNil(baseZ, testedP)
      ListUtils.lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther(knownP, testedP, input)
      val knownPSuffix = ListUtils.getSuffix(knownP, testedP)
      assert(testedP ++ knownPSuffix == knownP)
      assert(matchZipper(baseZ, knownP))

      assert(matchZipper(z, knownPSuffix))

      lemmaLostCauseCannotMatch(z, knownPSuffix)
      check(false)
    } else if (testedP.size == knownP.size) {
      ListUtils.lemmaIsPrefixSameLengthThenSameList(testedP, knownP, input)
      lemmaIfMatchZipperThenLongestMatchFromThereReturnsAtLeastThis(baseZ, z, input, testedP)
      check(findLongestMatchInnerZipper(z, testedP, testedP.size, ListUtils.getSuffix(input, testedP), input, input.size)._1.size >= knownP.size)
    } else {
      assert(testedP.size < input.size)
      val suffix = ListUtils.getSuffix(input, testedP)
      val newP = testedP ++ List(suffix.head)
      ListUtils.lemmaAddHeadSuffixToPrefixStillPrefix(testedP, input)

      lemmaDerivativeOnLWithANewCharIsANewDerivativeStep(baseZ, z, testedP, suffix.head)

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

      lemmaKnownAcceptedStringThenFromSmallPAtLeastThat(baseZ, derivationStepZipper(z, suffix.head), input, newP, knownP)

      check(findLongestMatchInnerZipper(z, testedP, testedP.size, ListUtils.getSuffix(input, testedP), input, input.size)._1.size >= knownP.size)
    }

  }.ensuring (_ => findLongestMatchInnerZipper(z, testedP, testedP.size, ListUtils.getSuffix(input, testedP), input, input.size)._1.size >= knownP.size)

  @ghost
  def lemmaIfMatchZipperThenLongestMatchFromThereReturnsAtLeastThis[C](baseZ: Zipper[C], z: Zipper[C], input: List[C], testedP: List[C]): Unit = {
    require(ListUtils.isPrefix(testedP, input))
    require(matchZipper(baseZ, testedP))
    require(derivationZipper(baseZ, testedP) == z)

    lemmaMatchZipperIsSameAsWholeDerivativeAndNil(baseZ, testedP)
    assert(matchZipper(z, Nil()))
    assert(nullableZipper(z))
    
    if(lostCauseZipper(z)){
      lemmaLostCauseCannotMatch(z, Nil())
      check(false)
    }

  }.ensuring (_ => findLongestMatchInnerZipper(z, testedP, testedP.size, ListUtils.getSuffix(input, testedP), input, input.size)._1.size >= testedP.size)

  @ghost
  def longestMatchIsAcceptedByMatchOrIsEmptyRec[C](baseZ: Zipper[C], z: Zipper[C], testedP: List[C], input: List[C]): Unit = {
    require(ListUtils.isPrefix(testedP, input))
    require(derivationZipper(baseZ, testedP) == z)
    decreases(input.size - testedP.size)

    if (findLongestMatchInnerZipper(z, testedP, testedP.size, ListUtils.getSuffix(input, testedP), input, input.size)._1.isEmpty) {
      ()
    } else {
      if (testedP == input) {
        if (nullableZipper(z)) {
          lemmaMatchZipperIsSameAsWholeDerivativeAndNil(baseZ, testedP)
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
        ListUtils.lemmaAddHeadSuffixToPrefixStillPrefix(testedP, input)
        if (nullableZipper(z)) {
          val recursive = findLongestMatchInnerZipper(derivationStepZipper(z, suffix.head), newP, testedP.size + 1, suffix.tail, input, input.size)
          if (recursive._1.isEmpty) {
            lemmaMatchZipperIsSameAsWholeDerivativeAndNil(baseZ, testedP)
          } else {
            lemmaDerivativeOnLWithANewCharIsANewDerivativeStep(baseZ, z, testedP, suffix.head)
            longestMatchIsAcceptedByMatchOrIsEmptyRec(baseZ, derivationStepZipper(z, suffix.head), newP, input)
          }
        } else {
          lemmaDerivativeOnLWithANewCharIsANewDerivativeStep(baseZ, z, testedP, suffix.head)
          longestMatchIsAcceptedByMatchOrIsEmptyRec(baseZ, derivationStepZipper(z, suffix.head), newP, input)
        }
      }
    }

  }.ensuring (_ => findLongestMatchInnerZipper(z, testedP, testedP.size, ListUtils.getSuffix(input, testedP), input, input.size)._1.isEmpty || matchZipper(baseZ, findLongestMatchInnerZipper(z, testedP, testedP.size, ListUtils.getSuffix(input, testedP), input, input.size)._1))

  @ghost
  def lemmaMatchZipperIsSameAsWholeDerivativeAndNil[C](z: Zipper[C], input: List[C]): Unit = {
    decreases(input)
    input match {
      case Cons(hd, tl) => lemmaMatchZipperIsSameAsWholeDerivativeAndNil(derivationStepZipper(z, hd), tl)
      case Nil()        => ()
    }
  }.ensuring (_ => matchZipper(z, input) == matchZipper(derivationZipper(z, input), Nil()))

  @ghost
  def lemmaDerivativeOnLWithANewCharIsANewDerivativeStep[C](baseZ: Zipper[C], z: Zipper[C], input: List[C], c: C): Unit = {
    require(derivationZipper(baseZ, input) == z)
    decreases(input.size)
    input match {
      case Cons(hd, tl) => lemmaDerivativeOnLWithANewCharIsANewDerivativeStep(derivationStepZipper(baseZ, hd), z, tl, c)
      case Nil()        => ()
    }

  }.ensuring (_ => derivationZipper(baseZ, input ++ List(c)) == derivationStepZipper(z, c))

}
