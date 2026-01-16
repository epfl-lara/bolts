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

import com.ziplex.lexer.Sequence
import com.ziplex.lexer.emptySeq
import com.ziplex.lexer.singletonSeq
import com.ziplex.lexer.seqFromList

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

object MemoisationRegex {
  import VerifiedRegex._
  import VerifiedRegexMatcher._
  import com.mutablemaps.map.MutableLongMap.LongMapFixedSize.validMask

  def empty[C](hashF: Hashable[(Regex[C], C)]): Cache[C] = Cache(MutableHashMap.getEmptyHashMap[(Regex[C], C), Regex[C]](k => EmptyLang[C](), hashF))

  @mutable
  final case class Cache[C](private val cache: HashMap[(Regex[C], C), Regex[C]]) {

    def contains(r: Regex[C], c: C): Boolean = {
      cache.contains((r, c))
    }

    def get(r: Regex[C], c: C): Option[Regex[C]] = {


      if (cache.contains((r, c))) {
        Some(cache((r, c)))
      } else {
        None()
      }
    }.ensuring (res => res.isEmpty || res.get == derivativeStep(r, c))

    def update(r: Regex[C], c: C, res: Regex[C]): Unit = {
      val _ = cache.update((r, c), res)
      ()

    }.ensuring (_ => validCacheMap(this.cache))

  }
}

object MemoisationZipper {
  import ZipperRegex._
  import VerifiedRegex.Regex
  import VerifiedRegex.validRegex
  import com.mutablemaps.map.MutableLongMap.LongMapFixedSize.validMask

  def emptyUp[C](hashF: Hashable[(Context[C], C)], initialSize: Int = 16): CacheUp[C] = {
    CacheUp(MutableHashMap.getEmptyHashMap[(Context[C], C), Zipper[C]](k => Set[Context[C]](), hashF, initialSize))
  }
  def emptyDown[C](hashF: Hashable[(Regex[C], Context[C], C)], initialSize: Int = 16): CacheDown[C] = {
    CacheDown(MutableHashMap.getEmptyHashMap[(Regex[C], Context[C], C), Zipper[C]](k => Set[Context[C]](), hashF, initialSize))
  }


  @mutable
  final case class CacheUp[C](private val cache: HashMap[(Context[C], C), Zipper[C]]) {

    def contains(ctx: Context[C], a: C): Boolean = {
      cache.contains((ctx, a))
    }

    def get(ctx: Context[C], a: C): Option[Zipper[C]] = {

      if (cache.contains((ctx, a))) {
        Some(cache((ctx, a)))
      } else {
        None()
      }
    }.ensuring (res => res.isEmpty || res.get == derivationStepZipperUp(ctx, a))

    def update(ctx: Context[C], a: C, res: Zipper[C]): Unit = {
      val _ = cache.update((ctx, a), res)
      ()

    }.ensuring (_ => validCacheMapUp(this.cache))
  }

  @mutable
  final case class CacheDown[C](private val cache: HashMap[(Regex[C], Context[C], C), Zipper[C]]) {
    
    def contains(r: Regex[C], ctx: Context[C], a: C): Boolean = {
      cache.contains((r, ctx, a))
    }

    def get(r: Regex[C], ctx: Context[C], a: C): Option[Zipper[C]] = {
      if (cache.contains((r, ctx, a))) {
        Some(cache((r, ctx, a)))
      } else {
        None()
      }
    }.ensuring (res => res.isEmpty || res.get == derivationStepZipperDown(r, ctx, a))

    def update(r: Regex[C], ctx: Context[C], a: C, res: Zipper[C]): Unit = {
      val _ = cache.update((r, ctx, a), res)
      ()

    }.ensuring (_ => validCacheMapDown(this.cache))
  }



  def emptyFindLongestMatch[C](hashF: Hashable[(Zipper[C], BigInt)], totalInput: Sequence[C], initialSize: Int = 16): CacheFindLongestMatch[C] = {
    val emptyMap = MutableHashMap.getEmptyHashMap[(Zipper[C], BigInt), BigInt](k => -1, hashF, initialSize)
    CacheFindLongestMatch(emptyMap, totalInput)
  }.ensuring(res => res.valid)

  /**
   * Cache for the find longest match function
   * findLongestMatchInnerZipperFastV2
   * 
   * Each cache is specific to one total input string
   */
  @mutable
  final case class CacheFindLongestMatch[C](private val cache: HashMap[(Zipper[C], BigInt), BigInt], @pure val totalInput: Sequence[C]) {
    def contains(z: Zipper[C], from: BigInt): Boolean = {
      cache.contains((z, from))
    }

    def get(z: Zipper[C], from: BigInt): Option[BigInt] = {

      if (cache.contains((z, from))) {
        Some(cache((z, from)))
      } else {
        None()
      }
    }.ensuring (res => res.isEmpty || res.get == findLongestMatchInnerZipperFastV2(z, from, totalInput, totalInput.size))

    def update(z: Zipper[C], from: BigInt, res: BigInt, localTotalInput: Sequence[C]): Unit = {
      val _ = cache.update((z, from), res)
      ()

    }.ensuring (_ => validCacheMapFindLongestMatch(this.cache, totalInput) && totalInput == localTotalInput)
  }



  def emptyFurthestNullableCache[C](hashF: Hashable[(Zipper[C], BigInt, BigInt)], totalInput: Sequence[C], initialSize: Int = 16): CacheFurthestNullable[C] = {
    val emptyMap = MutableHashMap.getEmptyHashMap[(Zipper[C], BigInt, BigInt), BigInt](k => -1, hashF, initialSize)
    CacheFurthestNullable(emptyMap, totalInput)
  }.ensuring(res => res.valid)

  
   /**
   * Cache for the furthest nullable function
   * for the findLongestMatchV3
   * 
   * Each cache is specific to one total input string
   */
  @mutable
  final case class CacheFurthestNullable[C](private val cache: HashMap[(Zipper[C], BigInt, BigInt), BigInt], @pure val totalInput: Sequence[C]) {
   
    def contains(z: Zipper[C], from: BigInt, lastNullablePos: BigInt): Boolean = {
      cache.contains((z, from, lastNullablePos))
    }

    def get(z: Zipper[C], from: BigInt, lastNullablePos: BigInt): Option[BigInt] = {

      if (cache.contains((z, from, lastNullablePos))) {
        Some(cache((z, from, lastNullablePos)))
      } else {
        None()
      }
    }.ensuring (res => res.isEmpty || res.get == furthestNullablePosition(z, from, totalInput, totalInput.size, lastNullablePos))

    def update(z: Zipper[C], from: BigInt, lastNullablePos: BigInt, res: BigInt, localTotalInput: Sequence[C]): Unit = {
      val _ = cache.update((z, from, lastNullablePos), res)
      ()
    }.ensuring (_ => validCacheMapFurthestNullable(this.cache, totalInput) && totalInput == localTotalInput)
  }

}

object VerifiedRegex {
  sealed trait Regex[C]:
    lazy val nullable: Boolean = this.nullableFct
    def lostCause: Boolean
    def hash: Long
  end Regex
  case class ElementMatch[C](c: C) extends Regex[C]:
    // lazy val nullableV: Boolean = this.nullableFct
    // @inlineOnce @opaque def nullable: Boolean = {
    //   nullableV
    // }.ensuring(res => res == this.nullableFct)
    lazy val lostCauseV: Boolean = this.lostCauseFct
    @inlineOnce @opaque def lostCause: Boolean = {
      lostCauseV
    }.ensuring(res => res == this.lostCauseFct)
    lazy val hashV: Long = this.hashFct
    @inlineOnce @opaque def hash: Long = {
      hashV
    }.ensuring(res => res == this.hashFct)

  end ElementMatch

  case class Star[C](reg: Regex[C]) extends Regex[C]:
    // lazy val nullableV: Boolean = this.nullableFct
    // @inlineOnce @opaque def nullable: Boolean = {
    //   nullableV
    // }.ensuring(res => res == this.nullableFct)
    lazy val lostCauseV: Boolean = this.lostCauseFct
    @inlineOnce @opaque def lostCause: Boolean = {
      lostCauseV
    }.ensuring(res => res == this.lostCauseFct)
    lazy val hashV: Long = this.hashFct
    @inlineOnce @opaque def hash: Long = {
      hashV
    }.ensuring(res => res == this.hashFct)
  end Star

  case class Union[C](regOne: Regex[C], regTwo: Regex[C]) extends Regex[C]:
    // lazy val nullableV: Boolean = this.nullableFct
    // @inlineOnce @opaque def nullable: Boolean = {
    //   nullableV
    // }.ensuring(res => res == this.nullableFct)
    lazy val lostCauseV: Boolean = this.lostCauseFct
    @inlineOnce @opaque def lostCause: Boolean = {
      lostCauseV
    }.ensuring(res => res == this.lostCauseFct)
    lazy val hashV: Long = this.hashFct
    @inlineOnce @opaque def hash: Long = {
      hashV
    }.ensuring(res => res == this.hashFct)
  end Union

  case class Concat[C](regOne: Regex[C], regTwo: Regex[C]) extends Regex[C]:
    // lazy val nullableV: Boolean = this.nullableFct
    // @inlineOnce @opaque def nullable: Boolean = {
    //   nullableV
    // }.ensuring(res => res == this.nullableFct)
    lazy val lostCauseV: Boolean = this.lostCauseFct
    @inlineOnce @opaque def lostCause: Boolean = {
      lostCauseV
    }.ensuring(res => res == this.lostCauseFct)
    lazy val hashV: Long = this.hashFct
    @inlineOnce @opaque def hash: Long = {
      hashV
    }.ensuring(res => res == this.hashFct)
  end Concat

  /** Regex that accepts only the empty string: represents the language {""}
    */
  case class EmptyExpr[C]() extends Regex[C]:
    // lazy val nullableV: Boolean = this.nullableFct
    // @inlineOnce @opaque def nullable: Boolean = {
    //   nullableV
    // }.ensuring(res => res == this.nullableFct)
    lazy val lostCauseV: Boolean = this.lostCauseFct
    @inlineOnce @opaque def lostCause: Boolean = {
      lostCauseV
    }.ensuring(res => res == this.lostCauseFct)
    lazy val hashV: Long = this.hashFct
    @inlineOnce @opaque def hash: Long = {
      hashV
    }.ensuring(res => res == this.hashFct)
  end EmptyExpr

  /** Regex that accepts nothing: represents the empty language
    */
  case class EmptyLang[C]() extends Regex[C]:
    // lazy val nullableV: Boolean = this.nullableFct
    // @inlineOnce @opaque def nullable: Boolean = {
    //   nullableV
    // }.ensuring(res => res == this.nullableFct)
    lazy val lostCauseV: Boolean = this.lostCauseFct
    @inlineOnce @opaque def lostCause: Boolean = {
      lostCauseV
    }.ensuring(res => res == this.lostCauseFct)
    lazy val hashV: Long = this.hashFct
    @inlineOnce @opaque def hash: Long = {
      hashV
    }.ensuring(res => res == this.hashFct)
  end EmptyLang

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
  def validRegex[C](r: Regex[C]): Boolean = {
    decreases(r)
    r match {
      case ElementMatch(c)    => true
      case Star(r)            => !r.nullable && validRegex(r) 
      case Union(rOne, rTwo)  => validRegex(rOne) && validRegex(rTwo)
      case Concat(rOne, rTwo) => validRegex(rOne) && validRegex(rTwo)
      case EmptyExpr()        => true
      case EmptyLang()        => true
    }
  }

  extension[C] (r: Regex[C]) @pure def usedCharacters: List[C] = {
    r match {
      case EmptyExpr()        => Nil[C]()
      case EmptyLang()        => Nil[C]()
      case ElementMatch(c)    => List(c)
      case Star(r)            => r.usedCharacters
      case Union(rOne, rTwo)  => rOne.usedCharacters ++ rTwo.usedCharacters
      case Concat(rOne, rTwo) => rOne.usedCharacters ++ rTwo.usedCharacters
    }
  }

  extension[C] (r: Regex[C]) @pure def firstChars: List[C] = {
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

  extension[C] (r: Regex[C]) @pure def nullableFct: Boolean = {
    r match {
      case EmptyExpr()        => true
      case EmptyLang()        => false
      case ElementMatch(c)    => false
      case Star(r)            => true
      case Union(rOne, rTwo)  => rOne.nullable || rTwo.nullable
      case Concat(rOne, rTwo) => rOne.nullable && rTwo.nullable
    }
  }

  extension[C] (r: Regex[C]) @pure def lostCauseFct: Boolean = {
    r match {
      case EmptyExpr()        => false
      case EmptyLang()        => true
      case ElementMatch(c)    => false
      case Star(r)            => false
      case Union(rOne, rTwo)  => rOne.lostCause && rTwo.lostCause
      case Concat(rOne, rTwo) => rOne.lostCause || rTwo.lostCause
    }
  }.ensuring(res => res == getLanguageWitness(r).isEmpty)

  // Murmur3-style 64-bit finalizer (good avalanche; simple ops only)
  @pure def fmix64(h0: Long): Long = {
    val h1 = h0 ^ (h0 >>> 33)
    val h2 = h1 * 0xff51afd7ed558ccdL
    val h3 = h2 ^ (h2 >>> 33)
    val h4 = h3 * 0xc4ceb9fe1a85ec53L
    val h5 = h4 ^ (h4 >>> 33)
    h5
  }
  @pure inline def mix1(tag: Long, a: Long): Long = fmix64(tag * 0x9e3779b97f4a7c15L + a)
  @pure inline def mix2(tag: Long, a: Long, b: Long): Long = fmix64(tag * 0x9e3779b97f4a7c15L + a * 0xbf58476d1ce4e5b9L + b)
  extension[C] (r: Regex[C]) @pure def hashFct: Long = {
    r match {
      case EmptyExpr() =>
        mix1(1L, 0L)

      case EmptyLang() =>
        mix1(2L, 0L)

      case ElementMatch(c) =>
        // critical: incorporate the element value
        3L

      case Star(r1) =>
        mix1(4L, r1.hash)

      case Union(r1, r2) =>
        // commutative hashing (same for Union(a,b) and Union(b,a))
        val h1 = r1.hash
        val h2 = r2.hash
        val lo = if (h1 <= h2) h1 else h2
        val hi = if (h1 <= h2) h2 else h1
        mix2(5L, lo, hi)

      case Concat(r1, r2) =>
        // order-sensitive
        mix2(6L, r1.hash, r2.hash)
    }
  }
}

object ZipperRegex {
  import VerifiedRegex.*
  import VerifiedRegexMatcher.*
  import stainless.lang.Set
  import MemoisationZipper.*


  /**
   * When memoizing furthest nullable positions
   * the cache memoizes 1/k call when the input size is bigger than this threshold
   * 
   * 
   */
  inline def FURTHEST_NULLABLE_CACHE_THRESHOLD = 1_048_576 // 2^20
  inline def FURTHEST_NULLABLE_CACHE_K = 10

  
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

  def lostCauseZipper[C](z: Zipper[C]): Boolean = {
    z.forall(c => c.lostCause)
  }.ensuring(res => res == getLanguageWitness(z).isEmpty)
  
  def matchZipper[C](z: Zipper[C], input: List[C]): Boolean = {
    if (input.isEmpty) nullableZipper(z) else matchZipper(derivationStepZipper(z, input.head), input.tail)
  }

  // @tailrec
  def matchZipperSequence[C](z: Zipper[C], input: Sequence[C], i: BigInt = 0): Boolean = {
    if i == input.size then nullableZipper(z) else matchZipperSequence(derivationStepZipper(z, input(i)), input, i + 1)
  }

  // @tailrec
  def matchZipperSequenceMem[C](z: Zipper[C], input: Sequence[C], i: BigInt = 0)(using cacheUp: MemoisationZipper.CacheUp[C], cacheDown: MemoisationZipper.CacheDown[C]): Boolean = {
    if i == input.size then nullableZipper(z) else matchZipperSequenceMem(derivationStepZipperMem(z, input(i)), input, i + 1)
  }.ensuring(res => res == matchZipperSequence(z, input, i))

  def prefixMatchZipper[C](z: Zipper[C], input: List[C]): Boolean = {
    if (input.isEmpty) !lostCauseZipper(z) else prefixMatchZipper(derivationStepZipper(z, input.head), input.tail)
  }

  def prefixMatchZipperSequence[C](z: Zipper[C], input: Sequence[C], i: BigInt = 0): Boolean = {
    if (i == input.size) !lostCauseZipper(z) else prefixMatchZipperSequence(derivationStepZipper(z, input(i)), input, i + 1)
  }

  def prefixMatchZipperSequenceMem[C](z: Zipper[C], input: Sequence[C], i: BigInt = 0)(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = {
    if (i == input.size) !lostCauseZipper(z) else prefixMatchZipperSequenceMem(derivationStepZipperMem(z, input(i)), input, i + 1)
  }.ensuring(res => res == prefixMatchZipperSequence(z, input, i))

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
  }.ensuring(res => res == derivationStepZipper(z, a) && cacheUp.valid && cacheDown.valid)

  @extern
  def derivationStepZipperSimpMem[C](z: Zipper[C], a: C)(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Zipper[C] = {
    def derivUpMem(c: Context[C]): Zipper[C] = derivationStepZipperUpMem(c, a)
    z.flatMap(derivUpMem).filter(c => !c.lostCause) // rejected by stainless because of effects in the lambda's body
  }.ensuring(res => res == derivationStepZipperSimp(z, a))

  def matchZipperMem[C](z: Zipper[C], input: List[C])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = {
    if (input.isEmpty) nullableZipper(z) else matchZipperMem(derivationStepZipperMem(z, input.head), input.tail)
  }.ensuring(res => res == matchZipper(z, input))


  // PROOFS -----------------------------------------------------------------------------------------------------


  // --------- Find Longest Match Zipper ------------------------------

  def findLongestMatchZipperFast[C](z: Zipper[C], input: Sequence[C]): (Sequence[C], Sequence[C]) = {
    val prefixLength = findLongestMatchInnerZipperFast(z, Nil(), 0, input.list, input, input.size)
    input.splitAt(prefixLength)
  }.ensuring (res => (res._1.list, res._2.list) == findLongestMatchZipper(z, input.list) && res._1.list ++ res._2.list == input.list)
  
  def findLongestMatchInnerZipperFast[C](z: Zipper[C], @ghost testedP: List[C], testedPSize: BigInt, @ghost testedSuffix: List[C], totalInput: Sequence[C], totalInputSize: BigInt): BigInt = {
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
  @opaque
  @inlineOnce
  def findLongestMatchZipperFastMem[C](z: Zipper[C], input: Sequence[C])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): (Sequence[C], Sequence[C]) = {
    val prefixLength = findLongestMatchInnerZipperFastMem(cacheUp, cacheDown, z, Nil(), 0, input.list, input, input.size)
    input.splitAt(prefixLength)
  }.ensuring (res => cacheUp.valid && cacheDown.valid && res == findLongestMatchZipperFast(z, input))
  
  @opaque
  @inlineOnce
  def findLongestMatchInnerZipperFastMem[C](cacheUp: CacheUp[C], cacheDown: CacheDown[C], z: Zipper[C], @ghost testedP: List[C], testedPSize: BigInt, @ghost testedSuffix: List[C], totalInput: Sequence[C], totalInputSize: BigInt): BigInt = {
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

  def findLongestMatchZipperFastV2[C](z: Zipper[C], input: Sequence[C], totalInput: Sequence[C]): (Sequence[C], Sequence[C]) = {
    val totalInputSize = totalInput.size
    val from = totalInputSize - input.size
    val prefixLength = findLongestMatchInnerZipperFastV2(z, from, totalInput, totalInputSize)

    input.splitAt(prefixLength)
  }.ensuring (res => res._1.list ++ res._2.list == input.list)
  
  /**
   * Slightly different semantic to enable memoization of the findLongMatch process
   * The idea is to return the length of the longest match possible from the current position
   * NOT from the beginning.
   * This way, we will always pass the entire input string, and will be able to memoize recursive calls and actually hit
   * 
   * CALLS TO THIS METHOD WILL BE MEMOIZED!!
   * 
   * Note: this method takes the size as parameter to avoid recomputing it at each call
   * 
   */
  def findLongestMatchInnerZipperFastV2[C](z: Zipper[C], from: BigInt, totalInput: Sequence[C], totalInputSize: BigInt): BigInt = {
    
    if ((from == totalInputSize) || lostCauseZipper(z)) { 
      // We cannot match anything from here
      // so we return a size of match of 0
      // OR we are at the end of the input so can match 0 more characters
      BigInt(0)
    } else {
      // We call recursively starting on the next character and see how many characters we can match from there
      val derivedZ = derivationStepZipper(z, totalInput(from))
      val recursive = findLongestMatchInnerZipperFastV2(derivedZ, from + 1, totalInput, totalInputSize) 
      if (recursive > 0) {
        // Whatever is the current derived state, we can match more characters from there so we can match 1 more character from here
        1 + recursive
      } else {
        // Here we can match nothing starting at from + 1, so if we can match the current character, we can match 1 character from here, otherwise 0
        if nullableZipper(derivedZ) then BigInt(1) else BigInt(0)
      }
    }
  }.ensuring (res => res >= 0 && res <= (totalInputSize - from))

  // Memoized ----------------------------------------------------------------------------------------------------------------------------------------------------------
  def findLongestMatchZipperFastV2Mem[C](z: Zipper[C], input: Sequence[C], totalInput: Sequence[C])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C], cacheFindLongestMatch: CacheFindLongestMatch[C]): (Sequence[C], Sequence[C]) = {
    val totalInputSize = totalInput.size
    val from = totalInputSize - input.size
    val prefixLength = findLongestMatchInnerZipperFastV2Mem(z, from, totalInput, totalInputSize)

    input.splitAt(prefixLength)
  }.ensuring (res => res == findLongestMatchZipperFastV2(z, input, totalInput) && cacheUp.valid && cacheDown.valid &&cacheFindLongestMatch.valid && cacheFindLongestMatch.totalInput == totalInput )
  
  def findLongestMatchZipperFastV2MemOnlyDeriv[C](z: Zipper[C], input: Sequence[C], totalInput: Sequence[C])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): (Sequence[C], Sequence[C]) = {
    val totalInputSize = totalInput.size
    val from = totalInputSize - input.size
    val prefixLength = findLongestMatchInnerZipperFastV2MemOnlyDeriv(z, from, totalInput, totalInputSize)

    input.splitAt(prefixLength)
  }.ensuring (res => res == findLongestMatchZipperFastV2(z, input, totalInput) && cacheUp.valid && cacheDown.valid)
  

  def findLongestMatchInnerZipperFastV2Mem[C](z: Zipper[C], from: BigInt, totalInput: Sequence[C], totalInputSize: BigInt)(using cacheUp: CacheUp[C], cacheDown: CacheDown[C], cacheFindLongestMatch: CacheFindLongestMatch[C]): BigInt = {

    cacheFindLongestMatch.get(z, from) match {
      case Some(cachedResult) => cachedResult
      case None() => {
        val result = 
          if ((from == totalInputSize) || lostCauseZipper(z)) { 
            // We cannot match anything from here
            // so we return a size of match of 0
            // OR we are at the end of the input so can match 0 more characters
            BigInt(0)
          } else {
            // We call recursively starting on the next character and see how many characters we can match from there
            val derivedZ = derivationStepZipperMem(z, totalInput(from))
            val recursive = findLongestMatchInnerZipperFastV2Mem(derivedZ, from + 1, totalInput, totalInputSize) 
            if (recursive > 0) {
              // Whatever is the current derived state, we can match more characters from there so we can match 1 more character from here
              1 + recursive
            } else {
              // Here we can match nothing starting at from + 1, so if we can match the current character, we can match 1 character from here, otherwise 0
              if nullableZipper(derivedZ) then BigInt(1) else BigInt(0)
            }
          }
        cacheFindLongestMatch.update(z, from, result, totalInput)
        result
      }
    }
  }.ensuring (res => res == findLongestMatchInnerZipperFastV2(z, from, totalInput, totalInputSize) && cacheUp.valid && cacheDown.valid &&cacheFindLongestMatch.valid && cacheFindLongestMatch.totalInput == totalInput)

  @opaque
  @inlineOnce
  def findLongestMatchInnerZipperFastV2MemOnlyDeriv[C](z: Zipper[C], from: BigInt, totalInput: Sequence[C], totalInputSize: BigInt)(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): BigInt = {

    if ((from == totalInputSize) || lostCauseZipper(z)) { 
      // We cannot match anything from here
      // so we return a size of match of 0
      // OR we are at the end of the input so can match 0 more characters
      BigInt(0)
    } else {
      // We call recursively starting on the next character and see how many characters we can match from there
      val derivedZ = derivationStepZipperMem(z, totalInput(from))
      val recursive = findLongestMatchInnerZipperFastV2MemOnlyDeriv(derivedZ, from + 1, totalInput, totalInputSize) 
      if (recursive > 0) {
        // Whatever is the current derived state, we can match more characters from there so we can match 1 more character from here
        1 + recursive
      } else {
        // Here we can match nothing starting at from + 1, so if we can match the current character, we can match 1 character from here, otherwise 0
        if nullableZipper(derivedZ) then BigInt(1) else BigInt(0)
      }
    }
  }.ensuring (res => res == findLongestMatchInnerZipperFastV2(z, from, totalInput, totalInputSize) && cacheUp.valid && cacheDown.valid)

  // ------------------------------------------- END MEMOIZATION -------------------------------------------
  // ------------------------------------------- Tail recursive -------------------------------------------
  /** 
   * Returns the furthest position where the zipper is nullable when consuming input from 'from' to the end of totalInput
   * Which is equivalent to the length of the longest match starting from 0, minus 1
   * Meaning: if it returns i, it means that the z was nullable after consuming input from 'from' to i included
   * 
   * For the proof we need:
   * - a way to relate z to derivations from z
   * - to prove that no derivations of z are nullable after lastNullablePos
   * 
   * The the longest prefix length starting at i is lastNullablePos - i + 1
   * 
   * We will also prove that for findLongestMatchV2Rec, if the result is 0, then there is no nullable derivation from z consuming the input from 'from' to the end;
   * and that if the result is > 0, then there is at least one nullable derivation from z consuming the input from 'from'
   * 
   */
  // @tailrec
  def furthestNullablePosition[C](z: Zipper[C], from: BigInt, totalInput: Sequence[C], totalInputSize: BigInt, lastNullablePos: BigInt): BigInt = {

    if (from == totalInputSize || lostCauseZipper(z)) {
      lastNullablePos
    } else {
      val derivedZ = derivationStepZipper(z, totalInput(from))
      val newLastNullable = if (nullableZipper(derivedZ)) from else lastNullablePos
      furthestNullablePosition(derivedZ, from + 1, totalInput, totalInputSize, newLastNullable)
    }
  }.ensuring(res => res >= -1 && res < totalInputSize && res >= lastNullablePos && (res == lastNullablePos || res >= from))

  def findLongestMatchZipperSequenceV3[C](z: Zipper[C], input: Sequence[C], totalInput: Sequence[C]): (Sequence[C], Sequence[C]) = {
    val totalInputSize = totalInput.size
    val from = totalInputSize - input.size
    val lastNullablePos = furthestNullablePosition(z, from, totalInput, totalInputSize, if nullableZipper(z) then from - 1 else -1)
    val prefixLength: BigInt = lastNullablePos - from + 1
    if (prefixLength < 0) {
      input.splitAt(0)
    } else {  
      input.splitAt(prefixLength)
    }
  }.ensuring (res => res._1.list ++ res._2.list == input.list)

  // ------------------------------------------- Tailrec MEMOIZATION -------------------------------------------

  case class StackFrame[C](z: Zipper[C], from: BigInt, lastNullablePos: BigInt, @ghost res: BigInt, @ghost totalInput: Sequence[C]):

  end StackFrame

  type Stack[C] = List[StackFrame[C]]

  def furthestNullablePositionStackMem[C](z: Zipper[C], from: BigInt, totalInput: Sequence[C], totalInputSize: BigInt, lastNullablePos: BigInt, stack: Stack[C] = Nil[StackFrame[C]]())(using cacheUp: CacheUp[C], cacheDown: CacheDown[C], cacheFurthestNullable: CacheFurthestNullable[C]): (BigInt, Stack[C]) = {



    cacheFurthestNullable.get(z, from, lastNullablePos) match {
      case Some(cachedRes) => {
        (cachedRes, Nil())
      }
      case None() => {
        if (from == totalInputSize || lostCauseZipper(z)) {
          (lastNullablePos, stack)
        } else {
          val derivedZ = derivationStepZipperMem(z, totalInput(from))
          val newLastNullable = if (nullableZipper(derivedZ)) from else lastNullablePos
          val stackFrame = StackFrame(z, from, lastNullablePos, currentRes, totalInput)
          val newStack = Cons(stackFrame, stack)
          furthestNullablePositionStackMem(derivedZ, from + 1, totalInput, totalInputSize, newLastNullable, newStack)
        }
      }
    }
  }.ensuring(res => res._1 == furthestNullablePosition(z, from, totalInput, totalInputSize, lastNullablePos)
                  && res._2.forall(frame => frame.res == res._1) && 
                  cacheUp.valid && cacheDown.valid && cacheFurthestNullable.valid && cacheFurthestNullable.totalInput == totalInput &&
                  res._2.forall(frame => frame.totalInput == totalInput))


    def fillUpCache[C](stack: Stack[C], totalInput: Sequence[C], totalInputSize: BigInt, res: BigInt, counter: BigInt = 0)(using cacheFurthestNullable: CacheFurthestNullable[C]): Unit = {
    stack match {
      case Nil() => ()
      case Cons(head, tail) => {
        if (totalInputSize > FURTHEST_NULLABLE_CACHE_THRESHOLD && counter % FURTHEST_NULLABLE_CACHE_K != 0) {
          // Skip 9/10 updates to avoid enormous cache on large inputs
        } else {
          cacheFurthestNullable.lemmaInvariant()
          cacheFurthestNullable.update(head.z, head.from, head.lastNullablePos, res, totalInput)
        }
        fillUpCache(tail, totalInput, totalInputSize, res, counter + 1)
      }
    }
  }.ensuring(_ => cacheFurthestNullable.valid && cacheFurthestNullable.totalInput == totalInput)


  def findLongestMatchZipperSequenceV3Mem[C](z: Zipper[C], input: Sequence[C], totalInput: Sequence[C])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C], cacheFurthestNullable: CacheFurthestNullable[C]): (Sequence[C], Sequence[C]) = {
    val totalInputSize = totalInput.size
    val from = totalInputSize - input.size
    val (res, stack) = furthestNullablePositionStackMem(z, from, totalInput, totalInputSize, if nullableZipper(z) then from - 1 else -1)
    val prefixLength: BigInt = res - from + 1
    
    fillUpCache(stack, totalInput, totalInputSize, res)
    if (prefixLength < 0) {
      input.splitAt(0)
    } else {  
      input.splitAt(prefixLength)
    }
  }.ensuring (res => res._1.list ++ res._2.list == input.list)

  // ------------------------------------------- END Tailrec MEMOIZATION -------------------------------------------

  // ----------------------------- Find Longest Match Zipper Theorems ------------------------------

}

object VerifiedRegexMatcher {
  import VerifiedRegex._
  import ListUtils._
  import MemoisationRegex._
  import MemoisationZipper._

  def derivativeStep[C](r: Regex[C], a: C): Regex[C] = {
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

  def prefixMatchZipperSequence[C](r: Regex[C], prefix: Sequence[C]): Boolean = {
    ZipperRegex.prefixMatchZipperSequence(ZipperRegex.focus(r), prefix)
  }.ensuring (res => res == prefixMatch(r, prefix.list))

  def prefixMatchZipperSequenceMem[C](r: Regex[C], prefix: Sequence[C])(using cacheUp: MemoisationZipper.CacheUp[C], cacheDown: MemoisationZipper.CacheDown[C]): Boolean = {
    ZipperRegex.prefixMatchZipperSequenceMem(ZipperRegex.focus(r), prefix)
  }.ensuring (res => res == prefixMatch(r, prefix.list))
  
  def matchRMem[C](r: Regex[C], input: List[C])(using cache: Cache[C]): Boolean = {
    if (input.isEmpty) r.nullable else matchRMem(derivativeStepMem(r, input.head)(using cache: Cache[C]), input.tail)
  }.ensuring (res => res == matchR(r, input))

  def matchZipper[C](r: Regex[C], input: List[C]): Boolean = {
    ZipperRegex.matchZipper(ZipperRegex.focus(r), input)
  }.ensuring (res => res == matchR(r, input))

  def matchZipperSequence[C](r: Regex[C], input: Sequence[C]): Boolean = {
    ZipperRegex.matchZipperSequence(ZipperRegex.focus(r), input)
  }.ensuring (res => res == matchR(r, input.list))

  def matchZipperMem[C](r: Regex[C], input: List[C])(using cacheUp: MemoisationZipper.CacheUp[C], cacheDown: MemoisationZipper.CacheDown[C]): Boolean = {
    require(validRegex(r))
    decreases(input.size)
    ghostExpr(ZipperRegex.theoremZipperRegexEquiv(ZipperRegex.focus(r), ZipperRegex.focus(r).toList, r, input))
    ZipperRegex.matchZipperMem(ZipperRegex.focus(r), input)
  }.ensuring (res => res == matchR(r, input))

  def matchZipperSequenceMem[C](r: Regex[C], input: Sequence[C])(using cacheUp: MemoisationZipper.CacheUp[C], cacheDown: MemoisationZipper.CacheDown[C]): Boolean = {
    ZipperRegex.matchZipperSequenceMem(ZipperRegex.focus(r), input)
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
    require(validRegex(r))
    val zipper = ZipperRegex.focus(r)
    ghostExpr(ZipperRegex.longestMatchSameAsRegex(r, zipper, input))
    ghostExpr(ListUtils.lemmaSizeTrEqualsSize(input, 0))
    ZipperRegex.findLongestMatchZipper(zipper, input)
  }.ensuring (res => res == findLongestMatch(r, input))


  // USED VERSIONS ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  def findLongestMatchWithZipperSequence[C](r: Regex[C], input: Sequence[C]): (Sequence[C], Sequence[C]) = {
    val zipper = ZipperRegex.focus(r)
    ZipperRegex.findLongestMatchZipperFast(zipper, input)
  }.ensuring (res => (res._1.list, res._2.list) == findLongestMatch(r, input.list))

  def findLongestMatchWithZipperSequenceMem[C](r: Regex[C], input: Sequence[C])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): (Sequence[C], Sequence[C]) = {
    val zipper = ZipperRegex.focus(r)
    ZipperRegex.findLongestMatchZipperFastMem(zipper, input)
  }.ensuring (res => res == findLongestMatchWithZipperSequence(r, input) && cacheDown.valid && cacheUp.valid)
  
  def findLongestMatchWithZipperSequenceV2[C](r: Regex[C], input: Sequence[C], totalInput: Sequence[C]): (Sequence[C], Sequence[C]) = {
    val zipper = ZipperRegex.focus(r)
    ZipperRegex.findLongestMatchZipperFastV2(zipper, input, totalInput)
  }.ensuring (res => (res._1.list, res._2.list) == findLongestMatch(r, input.list))
  
  def findLongestMatchWithZipperSequenceV2Mem[C](r: Regex[C], input: Sequence[C], totalInput: Sequence[C])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C], cacheFindLongestMatch: CacheFindLongestMatch[C]): (Sequence[C], Sequence[C]) = {
    val zipper = ZipperRegex.focus(r)
    ZipperRegex.findLongestMatchZipperFastV2Mem(zipper, input, totalInput)
  }.ensuring (res => res == findLongestMatchWithZipperSequenceV2(r, input, totalInput) && cacheDown.valid && cacheUp.valid && cacheFindLongestMatch.valid && cacheFindLongestMatch.totalInput == totalInput)

  def findLongestMatchWithZipperSequenceV2MemOnlyDeriv[C](r: Regex[C], input: Sequence[C], totalInput: Sequence[C])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C]): (Sequence[C], Sequence[C]) = {
    val zipper = ZipperRegex.focus(r)
    ZipperRegex.findLongestMatchZipperFastV2MemOnlyDeriv(zipper, input, totalInput)
  }.ensuring (res => res == findLongestMatchWithZipperSequenceV2(r, input, totalInput) && cacheDown.valid && cacheUp.valid)

  def findLongestMatchWithZipperSequenceV3Mem[C](r: Regex[C], input: Sequence[C], totalInput: Sequence[C])(using cacheUp: CacheUp[C], cacheDown: CacheDown[C], cacheFurthestNullable: CacheFurthestNullable[C]): (Sequence[C], Sequence[C]) = {
    val zipper = ZipperRegex.focus(r)
    ZipperRegex.findLongestMatchZipperSequenceV3Mem(zipper, input, totalInput)
  }.ensuring (res => (res._1.list, res._2.list) == findLongestMatch(r, input.list) && cacheDown.valid && cacheUp.valid && cacheFurthestNullable.valid && cacheFurthestNullable.totalInput == totalInput)
  //  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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

  // Longest match theorems

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

// ---------------------------------------------------- Lemmas ---------------------------------------------------
}

object Utils {
  def maxBigInt(a: BigInt, b: BigInt): BigInt = if (a >= b) a else b
  def maxLong(a: Long, b: Long): Long = if (a >= b) a else b
}
