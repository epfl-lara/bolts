/** Author: Samuel Chassot
  */

package ch.epfl.lexer

import stainless.equations._
import stainless.lang.{ghost => ghostExpr, *}
import stainless.collection._
import stainless.annotation._
import stainless.proof._
import ch.epfl.map.MutableLongMap._
import ch.epfl.map.ListLongMap
import ch.epfl.map.ListMap
import ch.epfl.map.TupleListOpsGenK
import ch.epfl.map.MutableHashMap._
import ch.epfl.map.Hashable
import ch.epfl.map.TupleListOpsGenK.invariantList
import ch.epfl.map.MutableHashMap

import stainless.lang.StaticChecks._
import stainless.annotation.isabelle.lemma
import stainless.lang.Quantifiers.Exists
import stainless.lang.Quantifiers.ExistsThe
import stainless.lang.Quantifiers.pickWitness
import stainless.lang.Heap.get


// import ch.epfl.map.OptimisedChecks.*

object MemoisationRegex {
  import VerifiedRegex._
  import VerifiedRegexMatcher._

  @ghost def validCacheMap[C](m: HashMap[(Regex[C], C), Regex[C]]): Boolean = {
    m.valid && 
    TupleListOpsGenK.invariantList(m.map.toList) && // Why is this needed? Without it does not verify in update...
    m.map.forall(_ match {
        case ((r, c), res) =>
        validRegex(r) && res == derivativeStep(r, c)
      }
    )
  }

  def empty[C](hashF: Hashable[(Regex[C], C)]): Cache[C] = Cache(MutableHashMap.getEmptyHashMap[(Regex[C], C), Regex[C]](k => EmptyLang[C](), hashF))

  @mutable
  final case class Cache[C](private val cache: HashMap[(Regex[C], C), Regex[C]]) {
    require(validCacheMap(cache))

    @ghost def valid: Boolean = validCacheMap(cache)

    @ghost
    def lemmaIfInCacheThenValid(r: Regex[C], c: C): Unit = {
      require(validCacheMap(cache))
      require(validRegex(r))
      if (cache.contains((r, c))) {
        ghostExpr({
      MutableHashMap.lemmaForallPairsThenForLookup(
        cache, 
        (r, c), {
            _ match {
              case ((r, c), res) =>
              validRegex(r) && res == derivativeStep(r, c)
            }
          }
          )
      })
    }
    }.ensuring (_ => cache.contains((r, c)) ==> (derivativeStep(r, c) == cache((r, c))))

    def contains(r: Regex[C], c: C): Boolean = {
      require(validCacheMap(cache))
      cache.contains((r, c))
    }

    def get(r: Regex[C], c: C): Option[Regex[C]] = {
      require(validRegex(r))
      require(validCacheMap(cache))

      if (cache.contains((r, c))) {
        ghostExpr(lemmaIfInCacheThenValid(r, c))
        Some(cache((r, c)))
      } else {
        None()
      }
    }.ensuring (res => res.isEmpty || res.get == derivativeStep(r, c))

    def update(r: Regex[C], c: C, res: Regex[C]): Unit = {
      require(validCacheMap(cache))
      require(validRegex(r))
      require(res == derivativeStep(r, c))

      ghostExpr(MutableHashMap.lemmaUpdatePreservesForallPairs(cache, (r, c), res, {
        _ match {
          case ((r, c), res) =>
          validRegex(r) && res == derivativeStep(r, c)
        }
      }))

      val _ = cache.update((r, c), res)
      ()

    }.ensuring (_ => validCacheMap(this.cache))

  }
}

object MemoisationZipper {
  import ZipperRegex._
  import VerifiedRegex.Regex

  @ghost def validCacheMapUp[C](m: HashMap[(Context[C], C), Zipper[C]]): Boolean = {
    m.valid && 
    TupleListOpsGenK.invariantList(m.map.toList) && // Why is this needed? Without it does not verify in update...
    m.map.forall(_ match {
        case ((ctx, a), res) =>
        res == derivationStepZipperUp(ctx, a)
      }
    )
  }

  @ghost def validCacheMapDown[C](m: HashMap[(Regex[C], Context[C], C), Zipper[C]]): Boolean = {
    m.valid && 
    TupleListOpsGenK.invariantList(m.map.toList) && // Why is this needed? Without it does not verify in update...
    m.map.forall(_ match {
        case ((r, ctx, a), res) =>
        res == derivationStepZipperDown(r, ctx, a)
      }
    )
  }

  def emptyUp[C](hashF: Hashable[(Context[C], C)]): CacheUp[C] = CacheUp(MutableHashMap.getEmptyHashMap[(Context[C], C), Zipper[C]](k => Set[Context[C]](), hashF))
  def emptyDown[C](hashF: Hashable[(Regex[C], Context[C], C)]): CacheDown[C] = CacheDown(MutableHashMap.getEmptyHashMap[(Regex[C], Context[C], C), Zipper[C]](k => Set[Context[C]](), hashF))


  @mutable
  final case class CacheUp[C](private val cache: HashMap[(Context[C], C), Zipper[C]]) {
    require(validCacheMapUp(cache))

    @ghost def valid: Boolean = validCacheMapUp(cache)

    @ghost
    def lemmaIfInCacheThenValid(ctx: Context[C], a: C): Unit = {
      require(validCacheMapUp(cache))
      if (cache.contains((ctx, a))) {
        ghostExpr({
          MutableHashMap.lemmaForallPairsThenForLookup(
            cache, 
            (ctx, a), {
                _ match {
                  case ((ctxx, aa), res) =>
                  res == derivationStepZipperUp(ctxx, aa)
                }
              }
              )
          })
      }
    }.ensuring (_ => cache.contains((ctx, a)) ==> (derivationStepZipperUp(ctx, a) == cache((ctx, a))))

    def contains(ctx: Context[C], a: C): Boolean = {
      require(validCacheMapUp(cache))
      cache.contains((ctx, a))
    }

    def get(ctx: Context[C], a: C): Option[Zipper[C]] = {
      require(validCacheMapUp(cache))

      if (cache.contains((ctx, a))) {
        ghostExpr(lemmaIfInCacheThenValid(ctx, a))
        Some(cache((ctx, a)))
      } else {
        None()
      }
    }.ensuring (res => res.isEmpty || res.get == derivationStepZipperUp(ctx, a))

    def update(ctx: Context[C], a: C, res: Zipper[C]): Unit = {
      require(validCacheMapUp(cache))
      require(res == derivationStepZipperUp(ctx, a))

      ghostExpr(MutableHashMap.lemmaUpdatePreservesForallPairs(cache, (ctx, a), res, {
        _ match {
           case ((ctxx, aa), res) =>
            res == derivationStepZipperUp(ctxx, aa)
        }
      }))

      val _ = cache.update((ctx, a), res)
      ()

    }.ensuring (_ => validCacheMapUp(this.cache))
  }

  @mutable
  final case class CacheDown[C](private val cache: HashMap[(Regex[C], Context[C], C), Zipper[C]]) {
    require(validCacheMapDown(cache))

    @ghost def valid: Boolean = validCacheMapDown(cache)

    @ghost
    def lemmaIfInCacheThenValid(r: Regex[C], ctx: Context[C], a: C): Unit = {
      require(validCacheMapDown(cache))
      if (cache.contains((r, ctx, a))) {
        ghostExpr({
          MutableHashMap.lemmaForallPairsThenForLookup(
            cache, 
            (r, ctx, a), {
                _ match {
                  case ((rr, ctxx, aa), res) =>
                    res == derivationStepZipperDown(rr, ctxx, aa)
                }
              }
              )
          })
      }
    }.ensuring (_ => cache.contains((r, ctx, a)) ==> (derivationStepZipperDown(r, ctx, a) == cache((r, ctx, a))))

    def contains(r: Regex[C], ctx: Context[C], a: C): Boolean = {
      require(validCacheMapDown(cache))
      cache.contains((r, ctx, a))
    }

    def get(r: Regex[C], ctx: Context[C], a: C): Option[Zipper[C]] = {
      require(validCacheMapDown(cache))

      if (cache.contains((r, ctx, a))) {
        ghostExpr(lemmaIfInCacheThenValid(r, ctx, a))
        Some(cache((r, ctx, a)))
      } else {
        None()
      }
    }.ensuring (res => res.isEmpty || res.get == derivationStepZipperDown(r, ctx, a))

    def update(r: Regex[C], ctx: Context[C], a: C, res: Zipper[C]): Unit = {
      require(validCacheMapDown(cache))
      require(res == derivationStepZipperDown(r, ctx, a))

      ghostExpr(MutableHashMap.lemmaUpdatePreservesForallPairs(cache, (r, ctx, a), res, {
        _ match {
           case ((rr, ctxx, aa), res) =>
            res == derivationStepZipperDown(rr, ctxx, aa)
        }
      }))

      val _ = cache.update((r, ctx, a), res)
      ()

    }.ensuring (_ => validCacheMapDown(this.cache))
  }
}

object VerifiedRegex {
  sealed trait Regex[C]
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
    l match {
      case Cons(hd, tl) if tl.isEmpty => hd
      case Cons(hd, tl) => Union(hd, generalisedUnion(tl))
      case Nil()        => EmptyLang()
    }
  }.ensuring(res => validRegex(res) && (if(l.isEmpty) isEmptyLang(res) else if(l.tail.isEmpty) res == l.head else isUnion(res)))

  def generalisedConcat[C](l: List[Regex[C]]): Regex[C] = {
    require(l.forall(validRegex))
    l match {
      case Cons(hd, tl) if tl.isEmpty => hd
      case Cons(hd, tl) => Concat(hd, generalisedConcat(tl))
      case Nil()        => EmptyExpr()
    }
  }.ensuring(res => validRegex(res) && (if(l.isEmpty) isEmptyExpr(res) else if(l.tail.isEmpty) res == l.head else isConcat(res)))

  @ghost
  def validRegex[C](r: Regex[C]): Boolean = r match {
    case ElementMatch(c)    => true
    case Star(r)            => !nullable(r) && validRegex(r) 
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
      case Concat(rOne, rTwo) if nullable(rOne)  => rOne.firstChars ++ rTwo.firstChars
      case Concat(rOne, rTwo) if !nullable(rOne) => rOne.firstChars
    }
  }

  def nullable[C](r: Regex[C]): Boolean = {
    r match {
      case EmptyExpr()        => true
      case EmptyLang()        => false
      case ElementMatch(c)    => false
      case Star(r)            => true
      case Union(rOne, rTwo)  => nullable(rOne) || nullable(rTwo)
      case Concat(rOne, rTwo) => nullable(rOne) && nullable(rTwo)
    }
  }

  inline def lostCause[C](r: Regex[C]): Boolean = getLanguageWitness(r).isEmpty

  /**
   * Return a witness of the language denoted by the given regex. If it returns None, the regex denotes the empty language.
   * That's used to compute the prefix set of a regex.
   */
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
      case Cons(right, parent) if nullable(right) => derivationStepZipperDown(right, Context(parent), a) ++ derivationStepZipperUp(Context(parent), a)
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
      case Concat(rOne, rTwo) if nullable(rOne) => derivationStepZipperDown(rOne, context.prepend(rTwo), a) ++ derivationStepZipperDown(rTwo, context, a)
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

  def nullableContext[C](c: Context[C]): Boolean = {
    c.forall(r => nullable(r))
  }
  def nullableZipper[C](z: Zipper[C]): Boolean = {
    z.exists(c => nullableContext(c))
  }

  def lostCauseContext[C](c: Context[C]): Boolean = {
    getLanguageWitness(c).isEmpty
  }.ensuring(res => res == c.exists(r => lostCause(r)))

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
  }.ensuring(res => res.isEmpty == c.exists(r => lostCause(r)))

  def lostCauseZipper[C](z: Zipper[C]): Boolean = {
    ghostExpr({
      if !z.forall(c => lostCauseContext(c)) then
        ListUtils.lemmaNotForallThenExists(z.toList, (c: Context[C]) => lostCauseContext(c))
        assert(z.exists(c => !lostCauseContext(c)))
        assert(getLanguageWitness(z).isDefined)
      else  
        assert(z.forall(c => lostCauseContext(c)))
        ListUtils.lemmaForallThenNotExists(z.toList, (c: Context[C]) => lostCauseContext(c))
        assert(!z.exists(c => !lostCauseContext(c)))
        assert(getLanguageWitness(z).isEmpty)
    })
    z.forall(c => lostCauseContext(c))
  }.ensuring(res => res == getLanguageWitness(z).isEmpty)
  
  @ghost
  def getLanguageWitness[C](z: Zipper[C]): Option[List[C]] = {
    if z.exists(c => !lostCauseContext(c)) then
      val notLostCauseWitness = SetUtils.getWitness(z, (c: Context[C]) => !lostCauseContext(c))
      getLanguageWitness(notLostCauseWitness)
    else
      None()
  }.ensuring(res => res.isDefined == z.exists(c => !lostCauseContext(c)))

  def matchZipper[C](z: Zipper[C], input: List[C]): Boolean = {
    decreases(input.size)
    if (input.isEmpty) nullableZipper(z) else matchZipper(derivationStepZipper(z, input.head), input.tail)
  }

  def prefixMatchZipper[C](z: Zipper[C], input: List[C]): Boolean = {
    decreases(input.size)
    if (input.isEmpty) !lostCauseZipper(z) else prefixMatchZipper(derivationStepZipper(z, input.head), input.tail)
  }

  def appendTo[C](z: Zipper[C], c: Context[C]): Zipper[C] = {
    z.map(cz => cz.concat(c))
  }

  // MEMOISED -----------------------------------------------------------------------------------------------------
  def derivationStepZipperUpMem[C](context: Context[C], a: C)(implicit cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Zipper[C] = {
    decreases(context.exprs.size)
    cacheUp.get(context, a) match {
      case Some(res) => res
      case None() => {
        val res: Zipper[C] = context.exprs match {
          case Cons(right, parent) if nullable(right) => derivationStepZipperDownMem(right, Context(parent), a) ++ derivationStepZipperUpMem(Context(parent), a)
          case Cons(right, parent) => derivationStepZipperDownMem(right, Context(parent), a)
          case Nil() => Set()
        }
        cacheUp.update(context, a, res)
        res
      }
    }
  }.ensuring(res => res == derivationStepZipperUp(context, a))

  def derivationStepZipperDownMem[C](expr: Regex[C], context: Context[C], a: C)(implicit cacheDown: CacheDown[C]): Zipper[C] = {
    require(validRegex(expr))
    decreases(regexDepth(expr))
    cacheDown.get(expr, context, a) match {
      case Some(res) => res
      case None() => {
        val res: Zipper[C] = expr match {
          case ElementMatch(c) if c == a => Set(context)
          case Union(rOne, rTwo) => derivationStepZipperDownMem(rOne, context, a) ++ derivationStepZipperDownMem(rTwo, context, a)
          case Concat(rOne, rTwo) if nullable(rOne) => derivationStepZipperDownMem(rOne, context.prepend(rTwo), a) ++ derivationStepZipperDownMem(rTwo, context, a)
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
  def derivationStepZipperMem[C](z: Zipper[C], a: C)(implicit cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Zipper[C] = {
    ghostExpr(SetUtils.lemmaFlatMapWithExtEqualFunctionsOnSetThenSame(z, (c: Context[C]) => derivationStepZipperUpMem(c, a)(snapshot(cacheUp), snapshot(cacheDown)), (c: Context[C]) => derivationStepZipperUp(c, a)))
    
    def derivUpMem(c: Context[C]): Zipper[C] = derivationStepZipperUpMem(c, a)
    
    z.flatMap(derivUpMem) // rejected by stainless because of effects in the lambda's body
  }.ensuring(res => res == derivationStepZipper(z, a))

  def matchZipperMem[C](z: Zipper[C], input: List[C])(implicit cacheUp: CacheUp[C], cacheDown: CacheDown[C]): Boolean = {
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
    assert(!z.forall(c => lostCauseContext(c)))
    ListUtils.lemmaNotForallThenExists(z.toList, (c: Context[C]) => lostCauseContext(c))
    assert(z.exists(c => !lostCauseContext(c)))
    val notLostCauseWitness = SetUtils.getWitness(z, (c: Context[C]) => !lostCauseContext(c))
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
    require(!lostCauseContext(c))
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
    assert(lostCauseZipper(derivStep) == derivStep.forall(cz => lostCauseContext(cz)))
    assert(z.forall(lostCauseContext))
    if(!lostCauseZipper(derivStep)){
      assert(!derivStep.forall(c => lostCauseContext(c)))
      ListUtils.lemmaNotForallThenExists(derivStep.toList, (c: Context[C]) => lostCauseContext(c))
      assert(derivStep.exists(c => !lostCauseContext(c)))
      val notLostCauseWitness = ListUtils.getWitness(derivStep.toList, (c: Context[C]) => !lostCauseContext(c))
      assert(derivStep.contains(notLostCauseWitness))
      assert(!lostCauseContext(notLostCauseWitness))
      SetUtils.lemmaFlatMapPost(z, f, notLostCauseWitness)
      assert(z.exists(ct => f(ct).contains(notLostCauseWitness)))
      val witnessContext = SetUtils.getWitness(z, (ct: Context[C]) => f(ct).contains(notLostCauseWitness))
      assert(z.contains(witnessContext))
      assert(f(witnessContext).contains(notLostCauseWitness))
      ListSpecs.forallContained(z.toList, lostCauseContext, witnessContext)
      assert(lostCauseContext(witnessContext))
      lemmaLostCauseFixPointDerivUp(witnessContext, a)
      assert(lostCauseZipper(f(witnessContext)))
      ListSpecs.forallContained(f(witnessContext).toList, lostCauseContext, notLostCauseWitness)
      check(false)
    }
  }.ensuring(_ => lostCauseZipper(derivationStepZipper(z, a)))

  @ghost
  @inlineOnce
  @opaque
  def lemmaLostCauseFixPointDerivUp[C](ctx: Context[C], a: C): Unit = {
    require(lostCauseContext(ctx))
    decreases(ctx.exprs.size)
    ctx.exprs match {
      case Cons(right, parent) if nullable(right) => 
        lemmaNullableThenNotLostCause(right)
        lemmaLostCauseFixPointDerivUp(Context(parent), a)
        lemmaLostCauseFixPointDerivDown(right, Context(parent), a)
        SetUtils.lemmaConcatPreservesForall(derivationStepZipperDown(right, Context(parent), a), derivationStepZipperUp(Context(parent), a), lostCauseContext)
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
    require(lostCause(expr) || lostCauseContext(ctx))
    decreases(regexDepth(expr))
    expr match {
      case ElementMatch(c) if c == a => ()
      case Union(rOne, rTwo) => 
        lemmaLostCauseFixPointDerivDown(rOne, ctx, a)
        lemmaLostCauseFixPointDerivDown(rTwo, ctx, a)
        SetUtils.lemmaConcatPreservesForall(derivationStepZipperDown(rOne, ctx, a), derivationStepZipperDown(rTwo, ctx, a), lostCauseContext)
      case Concat(rOne, rTwo) if nullable(rOne) => 
        lemmaNullableThenNotLostCause(rOne)
        lemmaLostCauseFixPointDerivDown(rOne, ctx.prepend(rTwo), a)
        lemmaLostCauseFixPointDerivDown(rTwo, ctx, a)
        SetUtils.lemmaConcatPreservesForall(derivationStepZipperDown(rOne, ctx.prepend(rTwo), a), derivationStepZipperDown(rTwo, ctx, a), lostCauseContext)
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
    assert(nullableCtx.forall(r => nullable(r)))
    if(lostCauseContext(nullableCtx)){
      assert(nullableCtx.exists(r => lostCause(r)))
      val lostCauseRegex = ListUtils.getWitness(nullableCtx.exprs, (r: Regex[C]) => lostCause(r))
      assert(nullableCtx.exprs.contains(lostCauseRegex))
      assert(lostCause(lostCauseRegex))
      ListSpecs.forallContained(nullableCtx.exprs, (r: Regex[C]) => nullable(r), lostCauseRegex)
      ListSpecs.forallContained(nullableCtx.exprs, validRegex, lostCauseRegex)
      assert(nullable(lostCauseRegex))
      lemmaNullableThenNotLostCause(lostCauseRegex)
      check(false)
    }
    assert(!lostCauseContext(nullableCtx))
    if (lostCauseZipper(z)) {
      assert(z.forall(c => lostCauseContext(c)))
      assert(z.toList.forall(c => lostCauseContext(c)))
      assert(z.contains(nullableCtx))
      ListSpecs.forallContained(z.toList, (c: Context[C]) => lostCauseContext(c), nullableCtx)
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
                    assert(nullableZipper(z) == nullable(r))
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
                assert(matchR(r, s) == findConcatSeparation(r1, r2, Nil(), s, s).isDefined)
                s match {
                  case Nil() => {
                    lemmaUnfocusPreservesNullability(r, z)
                    assert(nullableZipper(z) == nullable(r))
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

                      if(nullable(r1)){
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

                      if(nullable(hExp)){
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
                          if (nullable(rOne)){
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
                          if (nullable(rTwo)){
                            assert(zVirt2DerivUp == derivationStepZipperDown(rTwo, Context(tlExp), shd) ++ derivationStepZipperUp(Context(tlExp), shd))
                            assert(zVirt2Deriv == derivationStepZipperDown(rTwo, Context(tlExp), shd) ++ derivationStepZipperUp(Context(tlExp), shd))
                            assert(matchZipper(zVirt2, s) == matchZipper(zVirt2Deriv, stl))
                            lemmaZipperConcatMatchesSameAsBothZippers(derivationStepZipperDown(rTwo, Context(tlExp), shd), derivationStepZipperUp(Context(tlExp), shd), stl)
                            assert(matchZipper(zVirt2, s) == (matchZipper(zDerivDown2, stl) || matchZipper(zDerivUpUp, stl)))
                          } else {
                            assert(zVirt2DerivUp == derivationStepZipperDown(rTwo, Context(tlExp), shd))
                            assert(matchZipper(zVirt2, s) == (matchZipper(zDerivDown2, stl)))
                          }
                          if(nullable(r1)){
                            // This one is really beautiful, as the matching of derivUpUp appears in the derivative of one of the 2 virtual zippers
                            // if they are nullable, but the same term appears before if r1 is nullable, so it cancels out and does not break
                            // anything
                            assert(nullable(rOne) || nullable(rTwo))
                            assert(matchZipper(z, s) == (matchZipper(zDerivDown1, stl) || matchZipper(zDerivDown2, stl) || matchZipper(zDerivUpUp, stl)))
                          } else {
                            assert(!nullable(rOne) && !nullable(rTwo))
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
                        case Concat(rOne, rTwo) if nullable(rOne) => {
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

                          if(nullable(rTwo)){
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
                          mainMatchTheorem(generalisedConcat(Cons(rTwo, tlExp)), s)

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
                          mainMatchTheorem(generalisedConcat(Cons(rTwo, tlExp)), s)

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
                              assert(nullable(hExp))
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
                                val (starS, r2S) = findConcatSeparation(Concat(rInner, Star(rInner)), r2, Nil(), s, s).get
                                assert(matchR(Concat(rInner, Star(rInner)), starS))
                                mainMatchTheorem(Concat(rInner, Star(rInner)), starS)
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
                assert(matchR(r, s) ==  s.isEmpty || findConcatSeparation(rInner, Star(rInner), Nil(), s, s).isDefined)
                s match {
                  case Nil() => {
                    lemmaUnfocusPreservesNullability(r, z)
                    assert(nullableZipper(z) == nullable(r))
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
            assert(nullableZipper(z) == nullable(r))
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
              if(nullable(ct1Hd) ){
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
        ListUtils.lemmaContentSubsetPreservesForall(witnessBeforeConcat.exprs ++ ct2.exprs, witnessBeforeConcat.exprs, (r: Regex[C]) => nullable(r))
        ListUtils.lemmaContentSubsetPreservesForall(witnessBeforeConcat.exprs ++ ct2.exprs, ct2.exprs, (r: Regex[C]) => nullable(r))
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
    assert(nullable(reg) == unfocusZipperList(z.toList).exists(rr => nullable(rr)))
    if(nullable(reg)){
      assert( unfocusZipperList(z.toList).exists(rr => nullable(rr)))
      val witnessNullableReg = ListUtils.getWitness(unfocusZipperList(z.toList), (rr: Regex[C]) => nullable(rr))
      assert(nullable(witnessNullableReg))
      assert(unfocusZipperList(z.toList).contains(witnessNullableReg))
      lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains(z.toList, witnessNullableReg)
      assert(z.exists(c => generalisedConcat(c.exprs) == witnessNullableReg))
      val witnessContext = SetUtils.getWitness(z, (c: Context[C]) => generalisedConcat(c.exprs) == witnessNullableReg)
      assert(z.contains(witnessContext))
      assert(generalisedConcat(witnessContext.exprs) == witnessNullableReg)
      assert(nullable(generalisedConcat(witnessContext.exprs)))
      nullableGenConcatSpec(witnessNullableReg, witnessContext.exprs)
      assert(nullableContext(witnessContext))
      SetUtils.lemmaContainsThenExists(z, witnessContext, a => nullableContext(a))
      assert(nullableZipper(z))
    } else {
      assert(!unfocusZipperList(z.toList).exists(rr => nullable(rr)))
      if(z.exists(c => nullableContext(c))){
        val witnessContext = SetUtils.getWitness(z, (c: Context[C]) => nullableContext(c))
        assert(z.contains(witnessContext))
        assert(nullableContext(witnessContext))
        lemmaZipperContainsContextThenUnfocusZipperListContains(z.toList, witnessContext)
        assert(unfocusZipperList(z.toList).contains(generalisedConcat(witnessContext.exprs)))
        nullableGenConcatSpec(generalisedConcat(witnessContext.exprs), witnessContext.exprs)
        assert(nullable(generalisedConcat(witnessContext.exprs)))
        ListUtils.lemmaContainsThenExists(unfocusZipperList(z.toList), generalisedConcat(witnessContext.exprs), rr => nullable(rr))
        assert(unfocusZipperList(z.toList).exists(rr => nullable(rr)))
        check(false)
      }

      assert(!z.exists(c => nullableContext(c)))
      assert(!nullableZipper(z))
    }



  }.ensuring(_ => nullable(r) == nullableZipper(z))

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
      case Concat(rOne, rTwo) if nullable(rOne) => {
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

            if(nullable(ct1hd)){
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
            assert(nullable(ct1hd))
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
        ListUtils.lemmaConcatPreservesForall(ct1.exprs, ct2.exprs, (r: Regex[C]) => nullable(r))
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
        if(nullable(hd)){
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
      case Concat(rOne, rTwo) if nullable(rOne) => {
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

  def findLongestMatchZipper[C](z: Zipper[C], input: List[C]): (List[C], List[C]) = {
    findLongestMatchInnerZipper(z, Nil(), input)
  }.ensuring (res => res._1 ++ res._2 == input)

  def findLongestMatchInnerZipper[C](z: Zipper[C], testedP: List[C], totalInput: List[C]): (List[C], List[C]) = {
    require(ListUtils.isPrefix(testedP, totalInput))
    decreases(totalInput.size - testedP.size)

    if (testedP == totalInput) {
      if (nullableZipper(z)) {
        (testedP, Nil[C]())
      } else {
        (Nil[C](), totalInput)
      }
    } else {
      ghostExpr(ListUtils.lemmaIsPrefixThenSmallerEqSize(testedP, totalInput))
      if (testedP.size == totalInput.size) {
        ghostExpr(ListUtils.lemmaIsPrefixRefl(totalInput, totalInput))
        ghostExpr(ListUtils.lemmaIsPrefixSameLengthThenSameList(totalInput, testedP, totalInput))
        check(false)
      }
      assert(testedP.size < totalInput.size)
      val suffix = ListUtils.getSuffix(totalInput, testedP)
      val newP = testedP ++ List(suffix.head)
      ghostExpr(ListUtils.lemmaAddHeadSuffixToPrefixStillPrefix(testedP, totalInput))
      if (nullableZipper(z)) {
        val recursive = findLongestMatchInnerZipper(derivationStepZipper(z, suffix.head), newP, totalInput)
        if (recursive._1.isEmpty) {
          (testedP, ListUtils.getSuffix(totalInput, testedP))
        } else {
          recursive
        }
      } else {
        findLongestMatchInnerZipper(derivationStepZipper(z, suffix.head), newP, totalInput)
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

  }.ensuring (_ => findLongestMatchInnerZipper(z, Nil(), input)._1.isEmpty || matchZipper(z, findLongestMatchInnerZipper(z, Nil(), input)._1))

  @ghost
  def longestMatchNoBiggerStringMatch[C](baseZ: Zipper[C], input: List[C], returnP: List[C], bigger: List[C]): Unit = {
    require(ListUtils.isPrefix(returnP, input))
    require(ListUtils.isPrefix(bigger, input))
    require(bigger.size >= returnP.size)
    require(findLongestMatchInnerZipper(baseZ, Nil(), input)._1 == returnP)

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
    require(derivationZipper(baseZ, testedP) == z)
    decreases(knownP.size - testedP.size)

    if (testedP.size == knownP.size) {
      ListUtils.lemmaIsPrefixSameLengthThenSameList(testedP, knownP, input)
      lemmaIfMatchZipperThenLongestMatchFromThereReturnsAtLeastThis(baseZ, z, input, testedP)
      check(findLongestMatchInnerZipper(z, testedP, input)._1.size >= knownP.size)
    } else {
      assert(testedP.size < input.size)
      val suffix = ListUtils.getSuffix(input, testedP)
      val newP = testedP ++ List(suffix.head)
      ListUtils.lemmaAddHeadSuffixToPrefixStillPrefix(testedP, input)

      lemmaDerivativeOnLWithANewCharIsANewDerivativeStep(baseZ, z, testedP, suffix.head)
      lemmaKnownAcceptedStringThenFromSmallPAtLeastThat(baseZ, derivationStepZipper(z, suffix.head), input, newP, knownP)

      check(findLongestMatchInnerZipper(z, testedP, input)._1.size >= knownP.size)
    }

  }.ensuring (_ => findLongestMatchInnerZipper(z, testedP, input)._1.size >= knownP.size)

  @ghost
  def lemmaIfMatchZipperThenLongestMatchFromThereReturnsAtLeastThis[C](baseZ: Zipper[C], z: Zipper[C], input: List[C], testedP: List[C]): Unit = {
    require(ListUtils.isPrefix(testedP, input))
    require(matchZipper(baseZ, testedP))
    require(derivationZipper(baseZ, testedP) == z)

    lemmaMatchZipperIsSameAsWholeDerivativeAndNil(baseZ, testedP)
    assert(matchZipper(z, Nil()))
    assert(nullableZipper(z))

  }.ensuring (_ => findLongestMatchInnerZipper(z, testedP, input)._1.size >= testedP.size)

  @ghost
  def longestMatchIsAcceptedByMatchOrIsEmptyRec[C](baseZ: Zipper[C], z: Zipper[C], testedP: List[C], input: List[C]): Unit = {
    require(ListUtils.isPrefix(testedP, input))
    require(derivationZipper(baseZ, testedP) == z)
    decreases(input.size - testedP.size)

    if (findLongestMatchInnerZipper(z, testedP, input)._1.isEmpty) {
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
          val recursive = findLongestMatchInnerZipper(derivationStepZipper(z, suffix.head), newP, input)
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

  }.ensuring (_ => findLongestMatchInnerZipper(z, testedP, input)._1.isEmpty || matchZipper(baseZ, findLongestMatchInnerZipper(z, testedP, input)._1))

  @ghost
  def lemmaMatchZipperIsSameAsWholeDerivativeAndNil[C](z: Zipper[C], input: List[C]): Unit = {
    input match {
      case Cons(hd, tl) => lemmaMatchZipperIsSameAsWholeDerivativeAndNil(derivationStepZipper(z, hd), tl)
      case Nil()        => ()
    }
  }.ensuring (_ => matchZipper(z, input) == matchZipper(derivationZipper(z, input), Nil()))

  @ghost
  def lemmaDerivativeOnLWithANewCharIsANewDerivativeStep[C](baseZ: Zipper[C], z: Zipper[C], input: List[C], c: C): Unit = {
    require(derivationZipper(baseZ, input) == z)

    input match {
      case Cons(hd, tl) => lemmaDerivativeOnLWithANewCharIsANewDerivativeStep(derivationStepZipper(baseZ, hd), z, tl, c)
      case Nil()        => ()
    }

  }.ensuring (_ => derivationZipper(baseZ, input ++ List(c)) == derivationStepZipper(z, c))

}

object VerifiedRegexMatcher {
  import VerifiedRegex._
  import ListUtils._
  import MemoisationRegex._

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
        if (nullable(rOne)) Union(Concat(derivativeStep(rOne, a), rTwo), derivativeStep(rTwo, a))
        else Union(Concat(derivativeStep(rOne, a), rTwo), EmptyLang())
      }
    }
    res
  }.ensuring (res => validRegex(res))

  def derivativeStepMem[C](r: Regex[C], a: C)(implicit cache: Cache[C]): Regex[C] = {
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
          case Union(rOne, rTwo) => Union(derivativeStepMem(rOne, a)(cache), derivativeStepMem(rTwo, a)(cache))
          case Star(rInner)      => Concat(derivativeStepMem(rInner, a)(cache), Star(rInner))
          case Concat(rOne, rTwo) => {
            if (nullable(rOne)) Union(Concat(derivativeStepMem(rOne, a)(cache), rTwo), derivativeStepMem(rTwo, a)(cache))
            else Union(Concat(derivativeStepMem(rOne, a)(cache), rTwo), EmptyLang())
          }
        }
        cache.update(r, a, res)
        res
      }
    }

  }.ensuring (res => res == derivativeStep(r, a))


  // COMMENTED OUT BECAUSE NOT VERIFIED THROUGHOUT YET
  // def derivativeStepMemSimp[C](r: Regex[C], a: C)(implicit cache: Cache[C]): Regex[C] = {
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
  //           if (nullable(rOne)) Union(Concat(derivativeStepMem(rOne, a)(cache), rTwo), derivativeStepMem(rTwo, a)(cache))
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
    input match {
      case Cons(hd, tl) => derivative(derivativeStep(r, hd), tl)
      case Nil()        => r
    }
  }.ensuring (res => validRegex(res))

  def derivativeMem[C](r: Regex[C], input: List[C])(implicit cache: Cache[C]): Regex[C] = {
    require(validRegex(r))
    require(cache.valid)
    input match {
      case Cons(hd, tl) => derivative(derivativeStepMem(r, hd)(cache: Cache[C]), tl)
      case Nil()        => r
    }
  }.ensuring (res => validRegex(res) && res == derivative(r, input))

  def matchR[C](r: Regex[C], input: List[C]): Boolean = {
    require(validRegex(r))
    decreases(input.size)
    if (input.isEmpty) nullable(r) else matchR(derivativeStep(r, input.head), input.tail)
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
    if (prefix.isEmpty) !lostCause(r) else prefixMatch(derivativeStep(r, prefix.head), prefix.tail)
  }

  def matchRMem[C](r: Regex[C], input: List[C])(implicit cache: Cache[C]): Boolean = {
    require(validRegex(r))
    require(cache.valid)
    decreases(input.size)
    if (input.isEmpty) nullable(r) else matchRMem(derivativeStepMem(r, input.head)(cache: Cache[C]), input.tail)
  }.ensuring (res => res == matchR(r, input))

  def matchZipper[C](r: Regex[C], input: List[C]): Boolean = {
    require(validRegex(r))
    decreases(input.size)
    ghostExpr(ZipperRegex.theoremZipperRegexEquiv(ZipperRegex.focus(r), ZipperRegex.focus(r).toList, r, input))
    ZipperRegex.matchZipper(ZipperRegex.focus(r), input)
  }.ensuring (res => res == matchR(r, input))

  def matchZipperMem[C](r: Regex[C], input: List[C])(implicit cacheUp: MemoisationZipper.CacheUp[C], cacheDown: MemoisationZipper.CacheDown[C]): Boolean = {
    require(validRegex(r))
    decreases(input.size)
    ghostExpr(ZipperRegex.theoremZipperRegexEquiv(ZipperRegex.focus(r), ZipperRegex.focus(r).toList, r, input))
    ZipperRegex.matchZipperMem(ZipperRegex.focus(r), input)
  }.ensuring (res => res == matchR(r, input))

  // COMMENTED OUT BECAUSE NOT VERIFIED THROUGHOUT YET
  // def matchRMemSimp[C](r: Regex[C], input: List[C])(implicit cache: Cache[C]): Boolean = {
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
  //   if (input.isEmpty) nullable(rr) else matchRMemSimp(derivativeStepMem(rr, input.head)(cache: Cache[C]), input.tail)
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
  }.ensuring(_ => nullable(r) == l.exists(rr => nullable(rr)))

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
  }.ensuring(_ => nullable(r) == l.forall(rr => nullable(rr)))


  @ghost
  @opaque
  @inlineOnce
  def matchRGenConcatSpec[C](r: Regex[C], l: List[Regex[C]], s: List[C]): Unit = {
    require(l.forall(validRegex))
    require(r == generalisedConcat(l))
    mainMatchTheorem(r, s)
    r match { 
      case Concat(hd, concatTl) => 
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
      case Star(rInner)    => s.isEmpty || findConcatSeparation(rInner, Star(rInner), Nil(), s, s).isDefined
      case Concat(r1, r2)  => findConcatSeparation(r1, r2, Nil(), s, s).isDefined
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

  def findLongestMatchWithZipper[C](r: Regex[C], input: List[C]): (List[C], List[C]) = {
    require(validRegex(r))
    val zipper = ZipperRegex.focus(r)
    ghostExpr(ZipperRegex.longestMatchSameAsRegex(r, zipper, input))
    ZipperRegex.findLongestMatchInnerZipper(zipper, Nil(), input)
  }.ensuring (res => res == findLongestMatch(r, input))


  def findLongestMatch[C](r: Regex[C], input: List[C]): (List[C], List[C]) = {
    require(validRegex(r))
    findLongestMatchInner(r, Nil(), input)
  }.ensuring (res => res._1 ++ res._2 == input)

  def findLongestMatchInner[C](r: Regex[C], testedP: List[C], totalInput: List[C]): (List[C], List[C]) = {
    require(validRegex(r))
    require(ListUtils.isPrefix(testedP, totalInput))
    decreases(totalInput.size - testedP.size)

    if (testedP == totalInput) {
      if (nullable(r)) {
        (testedP, Nil[C]())
      } else {
        (Nil[C](), totalInput)
      }
    } else {
      ghostExpr(ListUtils.lemmaIsPrefixThenSmallerEqSize(testedP, totalInput))
      if (testedP.size == totalInput.size) {
        ghostExpr(ListUtils.lemmaIsPrefixRefl(totalInput, totalInput))
        ghostExpr(ListUtils.lemmaIsPrefixSameLengthThenSameList(totalInput, testedP, totalInput))
        check(false)
      }
      assert(testedP.size < totalInput.size)
      val suffix = ListUtils.getSuffix(totalInput, testedP)
      val newP = testedP ++ List(suffix.head)
      ghostExpr(lemmaAddHeadSuffixToPrefixStillPrefix(testedP, totalInput))
      if (nullable(r)) {
        val recursive = findLongestMatchInner(derivativeStep(r, suffix.head), newP, totalInput)
        if (recursive._1.isEmpty) {
          (testedP, ListUtils.getSuffix(totalInput, testedP))
        } else {
          recursive
        }
      } else {
        findLongestMatchInner(derivativeStep(r, suffix.head), newP, totalInput)
      }
    }
  }.ensuring (res => res._1 ++ res._2 == totalInput && (res._1.isEmpty || res._1.size >= testedP.size))

  def findLongestMatchMem[C](r: Regex[C], input: List[C])(implicit cache: Cache[C]): (List[C], List[C]) = {
    require(validRegex(r))
    require(cache.valid)
    findLongestMatchInnerMem(r, Nil(), input)(cache)
  }.ensuring (res => res == findLongestMatch(r, input) && cache.valid)

  def findLongestMatchInnerMem[C](r: Regex[C], testedP: List[C], totalInput: List[C])(implicit cache: Cache[C]): (List[C], List[C]) = {
    require(validRegex(r))
    require(cache.valid)
    require(ListUtils.isPrefix(testedP, totalInput))
    decreases(totalInput.size - testedP.size)

    if (testedP == totalInput) {
      if (nullable(r)) {
        (testedP, Nil[C]())
      } else {
        (Nil[C](), totalInput)
      }
    } else {
      ghostExpr(ListUtils.lemmaIsPrefixThenSmallerEqSize(testedP, totalInput))
      if (testedP.size == totalInput.size) {
        ghostExpr(ListUtils.lemmaIsPrefixRefl(totalInput, totalInput))
        ghostExpr(ListUtils.lemmaIsPrefixSameLengthThenSameList(totalInput, testedP, totalInput))
        check(false)
      }
      assert(testedP.size < totalInput.size)
      val suffix = ListUtils.getSuffix(totalInput, testedP)
      val newP = testedP ++ List(suffix.head)
      ghostExpr(lemmaAddHeadSuffixToPrefixStillPrefix(testedP, totalInput))
      check(newP.size > testedP.size)
      if (nullable(r)) {
        val recursive = findLongestMatchInnerMem(derivativeStepMem(r, suffix.head), newP, totalInput)
        if (recursive._1.isEmpty) {
          (testedP, ListUtils.getSuffix(totalInput, testedP))
        } else {
          recursive
        }
      } else {
        findLongestMatchInnerMem(derivativeStepMem(r, suffix.head), newP, totalInput)
      }
    }
  }.ensuring (res => res == findLongestMatchInner(r, testedP, totalInput) && cache.valid)

  // Longest match theorems
  @ghost
  def longestMatchIsAcceptedByMatchOrIsEmpty[C](r: Regex[C], input: List[C]): Unit = {
    require(validRegex(r))
    longestMatchIsAcceptedByMatchOrIsEmptyRec(r, r, Nil(), input)

  }.ensuring (_ => findLongestMatchInner(r, Nil(), input)._1.isEmpty || matchR(r, findLongestMatchInner(r, Nil(), input)._1))

  @ghost
  def longestMatchNoBiggerStringMatch[C](baseR: Regex[C], input: List[C], returnP: List[C], bigger: List[C]): Unit = {
    require(validRegex(baseR))
    require(ListUtils.isPrefix(returnP, input))
    require(ListUtils.isPrefix(bigger, input))
    require(bigger.size >= returnP.size)
    require(findLongestMatchInner(baseR, Nil(), input)._1 == returnP)

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
  }.ensuring (res => validRegex(res) && nullable(res) == nullable(r))

  @ghost
  def lemmaRemoveUselessConcatSound[C](r: Regex[C], s: List[C]) : Unit = {
    require(validRegex(r))
    decreases(regexDepth(r) + s.size)
    
    mainMatchTheorem(r, s)

    if(matchR(r, s)){
      r match {
        case Concat(EmptyExpr(), rr) => 
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
          val (s1, s2) = findConcatSeparation(rr, EmptyExpr(), Nil(), s, s).get
          assert(s2.isEmpty)
          assert(matchR(rr, s1))
          mainMatchTheorem(rr, s1)
          lemmaRemoveUselessConcatSound(rr, s1)
        }
        
      case Concat(r1, r2) => 
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
              assert(nullable(rInner))
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
        if(s.isEmpty) {
          ()
        } else {
          if(matchR(Concat(removeUselessConcat(r1), removeUselessConcat(r2)), s)){
            mainMatchTheorem(Concat(removeUselessConcat(r1), removeUselessConcat(r2)), s)
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
        if(matchR(Star(removeUselessConcat(rInner)), s)) {
          mainMatchTheorem(Star(removeUselessConcat(rInner)), s)
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
              assert(nullable(rInner))
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
  }.ensuring (res => validRegex(res) && nullable(res) == nullable(r))

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
              assert(nullable(rInner))
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
                check(false)
              }
            }
            else if(isEmptyExpr(simpR2)) {
              lemmaSimplifySound(r1, s)
              lemmaSimplifySound(r2, Nil())
              if(matchR(r1, s)) {
                lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem(r1, r2, s, Nil(), s, Nil(), s)
                check(false)
              }
            }
            else if(matchR(Concat(simplify(r1), simplify(r2)), s)){
              mainMatchTheorem(Concat(simplify(r1), simplify(r2)), s)
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
                  assert(nullable(rInner))
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
    require(nullable(r))
    decreases(regexDepth(r))
    r match {
      case ElementMatch(c) => ()
      case Star(reg) => ()
      case Union(regOne, regTwo) => 
        if nullable(regOne) then lemmaNullableThenNotLostCause(regOne)
        else lemmaNullableThenNotLostCause(regTwo)
      case Concat(regOne, regTwo) => 
        lemmaNullableThenNotLostCause(regOne)
        lemmaNullableThenNotLostCause(regTwo)
      case EmptyExpr() => ()
      case EmptyLang() => ()
    }
  }.ensuring(_ => !lostCause(r))


  @ghost
  @inlineOnce
  @opaque
  def lemmaDerivativeStepFixPointLostCause[C](r: Regex[C], c: C): Unit = {
    require(validRegex(r))
    require(lostCause(r))
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
        assert(lostCause(r1) || lostCause(r2))
        if(nullable(r1)) {
          lemmaNullableThenNotLostCause(r1)
          assert(!lostCause(r1))
          lemmaDerivativeStepFixPointLostCause(r2, c)
        } else {
          if(lostCause(r1)) {
            lemmaDerivativeStepFixPointLostCause(r1, c)
          } else {
            lemmaDerivativeStepFixPointLostCause(r2, c)
          }
        }
    }
  }.ensuring(_ => lostCause(derivativeStep(r, c)))

  @ghost
  @inlineOnce
  @opaque
  def lemmaLostCauseCannotMatch[C](r: Regex[C], s: List[C]): Unit = {
    require(validRegex(r))
    require(lostCause(r))
    // require(s.nonEmpty)
    decreases(regexDepth(r) + s.size)
    if (s.isEmpty) {
      if(nullable(r)) then lemmaNullableThenNotLostCause(r)
      assert(!nullable(r))
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
            val (s1, s2) = findConcatSeparation(r1, r2, Nil(), s, s).get
            assert(matchR(r1, s1))
            assert(matchR(r2, s2))
            if(lostCause(r1)) {
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
    require(!lostCause(r))
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
      assert(!findConcatSeparation(Union(r1, r2), rTail, Nil(), s, s).isDefined)
      if(matchR(rRight, s)){
        mainMatchTheorem(Concat(r1, rTail), s)
        mainMatchTheorem(Concat(r2, rTail), s)
        assert(matchR(Concat(r1, rTail), s) || matchR(Concat(r2, rTail), s))
        if(matchR(Concat(r1, rTail), s)){
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
    assert(nullable(r))

  }.ensuring (_ => findLongestMatchInner(r, testedP, input)._1.size >= testedP.size)

  @ghost
  def lemmaKnownAcceptedStringThenFromSmallPAtLeastThat[C](baseR: Regex[C], r: Regex[C], input: List[C], testedP: List[C], knownP: List[C]): Unit = {
    require(validRegex(baseR))
    require(validRegex(r))
    require(ListUtils.isPrefix(testedP, input))
    require(ListUtils.isPrefix(knownP, input))
    require(knownP.size >= testedP.size)
    require(matchR(baseR, knownP))
    require(derivative(baseR, testedP) == r)
    decreases(knownP.size - testedP.size)

    if (testedP.size == knownP.size) {
      ListUtils.lemmaIsPrefixSameLengthThenSameList(testedP, knownP, input)
      lemmaIfMatchRThenLongestMatchFromThereReturnsAtLeastThis(baseR, r, input, testedP)
      check(findLongestMatchInner(r, testedP, input)._1.size >= knownP.size)
    } else {
      assert(testedP.size < input.size)
      val suffix = ListUtils.getSuffix(input, testedP)
      val newP = testedP ++ List(suffix.head)
      lemmaAddHeadSuffixToPrefixStillPrefix(testedP, input)

      lemmaDerivativeOnLWithANewCharIsANewDerivativeStep(baseR, r, testedP, suffix.head)
      lemmaKnownAcceptedStringThenFromSmallPAtLeastThat(baseR, derivativeStep(r, suffix.head), input, newP, knownP)

      check(findLongestMatchInner(r, testedP, input)._1.size >= knownP.size)
    }

  }.ensuring (_ => findLongestMatchInner(r, testedP, input)._1.size >= knownP.size)

  @ghost
  def longestMatchIsAcceptedByMatchOrIsEmptyRec[C](baseR: Regex[C], r: Regex[C], testedP: List[C], input: List[C]): Unit = {
    require(validRegex(baseR))
    require(ListUtils.isPrefix(testedP, input))
    require(derivative(baseR, testedP) == r)
    decreases(input.size - testedP.size)

    if (findLongestMatchInner(r, testedP, input)._1.isEmpty) {
      ()
    } else {
      if (testedP == input) {
        if (nullable(r)) {
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
        if (nullable(r)) {
          val recursive = findLongestMatchInner(derivativeStep(r, suffix.head), newP, input)
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

  }.ensuring (_ => findLongestMatchInner(r, testedP, input)._1.isEmpty || matchR(baseR, findLongestMatchInner(r, testedP, input)._1))

  @ghost
  def lemmaMatchRIsSameAsWholeDerivativeAndNil[C](r: Regex[C], input: List[C]): Unit = {
    require(validRegex(r))
    input match {
      case Cons(hd, tl) => lemmaMatchRIsSameAsWholeDerivativeAndNil(derivativeStep(r, hd), tl)
      case Nil()        => ()
    }
  }.ensuring (_ => matchR(r, input) == matchR(derivative(r, input), Nil()))

  @ghost
  def lemmaDerivativeOnLWithANewCharIsANewDerivativeStep[C](baseR: Regex[C], r: Regex[C], input: List[C], c: C): Unit = {
    require(validRegex(baseR))
    require(derivative(baseR, input) == r)

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
  }.ensuring (_ => nullable(r))

  @ghost
  def lemmaRegexAcceptsStringThenDerivativeAcceptsTail[C](r: Regex[C], s: List[C]): Unit = {
    require(validRegex(r))
    require(matchR(r, s))

  }.ensuring (_ => if (s.isEmpty) nullable(r) else matchR(derivativeStep(r, s.head), s.tail))

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
    require(nullable(r2))

    val newR = Concat(r2, r1)

    s match {
      case Cons(hd, tl) => {
        assert(nullable(r2))
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
        if (nullable(r1)) {
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
        //  if (nullable(rOne)) Union(Concat(derivativeStep(rOne, a), rTwo), derivativeStep(rTwo, a))
        // else Union(Concat(derivativeStep(rOne, a), rTwo), EmptyLang())
        if (nullable(r1)) {
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
        assert(nullable(r1) && nullable(r2))
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
      val (s1, s2) = findConcatSeparation(Concat(r1, r2), r3, Nil(), s, s).get
      mainMatchTheorem(Concat(r1, r2), s1)
      assert(matchR(Concat(r1, r2), s1))
      assert(matchR(r3, s2))
      val (s11, s22) = findConcatSeparation(r1, r2, Nil(), s1, s1).get
      assert(matchR(r1, s11))
      assert(matchR(r2, s22))
      mainMatchTheorem(r1, s11)
      mainMatchTheorem(r2, s22)
      assert(s11 ++ s22 ++ s2 == s)

      mainMatchTheorem(Concat(r2, r3), s22 ++ s2)
      lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem(r2, r3, s22, s2, s22 ++ s2, Nil(), s22 ++ s2)
      assert(matchR(Concat(r2, r3), s22 ++ s2))
      ListUtils.lemmaTwoListsConcatAssociativity(s11, s22, s2)
      assert(s11 ++ (s22 ++ s2) == s)
      lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem(r1, Concat(r2, r3), s11, s22 ++ s2, s, Nil(), s)
    } else {
      if(findConcatSeparation(r1, Concat(r2, r3), Nil(), s, s).isDefined){
        val (s1, s2) = findConcatSeparation(r1, Concat(r2, r3), Nil(), s, s).get
        mainMatchTheorem(r1, s1)
        assert(matchR(r1, s1))
        assert(matchR(Concat(r2, r3), s2))
        mainMatchTheorem(Concat(r2, r3), s2)
        val (s11, s22) = findConcatSeparation(r2, r3, Nil(), s2, s2).get
        assert(matchR(r2, s11))
        assert(matchR(r3, s22))
        mainMatchTheorem(r2, s11)
        mainMatchTheorem(r3, s22)
        
        assert(s1 ++ (s11 ++ s22) == s)
        ListUtils.lemmaTwoListsConcatAssociativity(s1, s11, s22)

        mainMatchTheorem(Concat(r1, r2), s1 ++ s11)
        lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem(r1, r2, s1, s11, s1 ++ s11, Nil(), s1 ++ s11)
        assert(matchR(Concat(r1, r2), s1 ++ s11))
        
        assert((s1 ++ s11) ++ s22 == s)
        lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem(Concat(r1, r2), r3, s1 ++ s11, s22, s, Nil(), s)

        check(false)
      }
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
    require(!nullable(r))
    require(nullable(derivativeStep(r, c)))
    decreases(r)

    r match {
      case EmptyExpr()     => check(false)
      case EmptyLang()     => ()
      case ElementMatch(a) => ()
      case Union(rOne, rTwo) => {
        if (nullable(rOne)) {
          check(false)
        }
        if (nullable(rTwo)) {
          check(false)
        }
        if (nullable(derivativeStep(rOne, c))) {
          lemmaRIsNotNullableDerivativeStepIsThenUsedCharContainsC(rOne, c)
        } else {
          assert(nullable(derivativeStep(rTwo, c)))
          lemmaRIsNotNullableDerivativeStepIsThenUsedCharContainsC(rTwo, c)
        }
      }
      case Star(rInner) => ()
      case Concat(rOne, rTwo) => {
        if (nullable(rOne)) {
          if (nullable(Concat(derivativeStep(rOne, c), rTwo))) {
            lemmaRIsNotNullableDerivativeStepIsThenUsedCharContainsC(rOne, c)
          } else {
            assert(nullable(derivativeStep(rTwo, c)))
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
    require(nullable(derivative(derivativeStep(r, c), tl)))
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
            assert(nullable(derivative(derivativeStep(r, c), tl)))
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
        if (nullable(derivative(derivativeStep(rOne, c), tl))) {
          lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead(rOne, c, tl)
        } else if (nullable(derivative(derivativeStep(rTwo, c), tl))) {
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
        if (nullable(derivative(derivativeStep(rInner, c), tl))) {
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
        //  if (nullable(rOne)) Union(Concat(derivativeStep(rOne, a), rTwo), derivativeStep(rTwo, a))
        // else Union(Concat(derivativeStep(rOne, a), rTwo), EmptyLang())

        if (nullable(rOne)) {
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
        if (nullable(rOne)) {
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

      case Concat(rOne, rTwo) if nullable(rOne) =>
        if (rOne.firstChars.contains(c)) {
          lemmaUsedCharsContainsAllFirstChars(rOne, c)
        } else {
          lemmaUsedCharsContainsAllFirstChars(rTwo, c)
        }

      case Concat(rOne, rTwo) if !nullable(rOne) => lemmaUsedCharsContainsAllFirstChars(rOne, c)
    }

  }.ensuring (_ => r.usedCharacters.contains(c))

  @ghost
  def lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead[C](r: Regex[C], c: C, tl: List[C]): Unit = {
    require(validRegex(r))
    require(nullable(derivative(derivativeStep(r, c), tl)))

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
            assert(nullable(derivative(derivativeStep(r, c), tl)))
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
        if (nullable(derivative(derivativeStep(rOne, c), tl))) {
          lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead(rOne, c, tl)
        } else if (nullable(derivative(derivativeStep(rTwo, c), tl))) {
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
        if (nullable(derivative(derivativeStep(rInner, c), tl))) {
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
        if (nullable(rOne)) {
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

object Utils {
  def maxBigInt(a: BigInt, b: BigInt): BigInt = if (a >= b) a else b
  def maxLong(a: Long, b: Long): Long = if (a >= b) a else b
}
