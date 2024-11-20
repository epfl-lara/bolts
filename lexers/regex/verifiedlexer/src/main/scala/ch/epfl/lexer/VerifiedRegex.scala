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
// import ch.epfl.map.OptimisedChecks.*

object Memoisation {
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

  def usedCharacters[C](r: Regex[C]): List[C] = {
    r match {
      case EmptyExpr()        => Nil[C]()
      case EmptyLang()        => Nil[C]()
      case ElementMatch(c)    => List(c)
      case Star(r)            => usedCharacters(r)
      case Union(rOne, rTwo)  => usedCharacters(rOne) ++ usedCharacters(rTwo)
      case Concat(rOne, rTwo) => usedCharacters(rOne) ++ usedCharacters(rTwo)
    }
  }

  def firstChars[C](r: Regex[C]): List[C] = {
    r match {
      case EmptyExpr()                           => Nil[C]()
      case EmptyLang()                           => Nil[C]()
      case ElementMatch(c)                       => List(c)
      case Star(r)                               => firstChars(r)
      case Union(rOne, rTwo)                     => firstChars(rOne) ++ firstChars(rTwo)
      case Concat(rOne, rTwo) if nullable(rOne)  => firstChars(rOne) ++ firstChars(rTwo)
      case Concat(rOne, rTwo) if !nullable(rOne) => firstChars(rOne)
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
    inline def isEmpty: Boolean = exprs.isEmpty
    inline def head: Regex[C] = {
      require(!isEmpty)
      exprs.head
    }
    inline def tail: Context[C] = {
      require(!isEmpty)
      Context(exprs.tail)
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
      case Nil()        => BigInt(0)
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

  def matchZipper[C](z: Zipper[C], input: List[C]): Boolean = {
    decreases(input.size)
    if (input.isEmpty) nullableZipper(z) else matchZipper(derivationStepZipper(z, input.head), input.tail)
  }


  // PROOFS -----------------------------------------------------------------------------------------------------

  @extern
  @ghost
  @opaque
  def assume(c: Boolean): Unit = {
    ()
  }.ensuring(_ => c)

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


  @ghost
  @opaque
  @inlineOnce
  def theoremZipperRegexEquiv[C](z: Zipper[C], zl: List[Context[C]], r: Regex[C], s: List[C]): Unit = {
    require(validRegex(r))
    require(z.toList == zl)
    require(r == unfocusZipper(zl))
    decreases(regexDepth(r))
    mainMatchTheorem(r, s)
    r match {
      case EmptyExpr()     => lemmaZipperOfEmptyExprMatchesOnlyEmptyString(z, s)
      case EmptyLang()     => 
        if(z.isEmpty){
          lemmaEmptyZipperMatchesNothing(z, s)
        } else {
          lemmaZipperStartingWithEmptyLangMatchesNothing(z, Context(List(r)), s)
        }
      case ElementMatch(a) => lemmaElementMatchZipperAcceptsOnlyThisChar(z, Context(List(ElementMatch(a))), a, s)
      case Union(r1, r2) => 
      {
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
            assert(!z.toList.isEmpty)
            val zHd: Context[C] = z.toList.head
            val zTl: List[Context[C]] = z.toList.tail

            assert(matchZipper(z, s) == matchZipper(derivationStepZipper(z, shd), stl))
            assert(r == generalisedUnion(unfocusZipperList(z.toList)))
            matchRGenUnionSpec(r, unfocusZipperList(z.toList), s)
            assert(matchR(r, s) == unfocusZipperList(z.toList).exists(rr => validRegex(rr) && matchR(rr, s)))

            if(zTl.isEmpty) {
              assert(r == generalisedConcat(zHd.exprs))
              assert(zHd.exprs == List(r))
              // Now let's dive in the derivative computation
              val deriv = derivationStepZipper(z, shd)
              val derivUp = derivationStepZipperUp(Context(List(r)), shd)
              zHd.exprs match {
                  case Cons(right, parent) if nullable(right) => assert(derivationStepZipperDown(right, Context(parent), shd) ++ derivationStepZipperUp(Context(parent),shd) == derivationStepZipperUp(Context(List(r)), shd))
                  case Cons(right, parent) => assert(derivationStepZipperDown(right, Context(parent), shd) == derivationStepZipperUp(Context(List(r)), shd))
                  case Nil() => assert(Set[Context[C]]() == derivationStepZipperUp(Context(List(r)), shd))
              }

            } else {
              unfold(generalisedUnion(unfocusZipperList(z.toList)))
              assert(r2 == unfocusZipper(zTl))
            }



            

            
          }
        }
      }
      case Star(rInner) => assume(matchR(r, s) == matchZipper(z, s))
      case Concat(r1, r2) => assume(matchR(r, s) == matchZipper(z, s))
    }
    

  }.ensuring(_ => matchR(r, s) == matchZipper(z, s))

  @ghost
  @opaque
  @inlineOnce // type Zipper[C] = Set[Context[C]]
  def theoremZipperRegexEquivInductZ[C](z: Zipper[C], zl: List[Context[C]], r: Regex[C], s: List[C]): Unit = {
    require(validRegex(r))
    require(z.toList == zl)
    require(r == unfocusZipper(zl))
    decreases(
      // regexDepth(r) 
      zipperDepth(zl) * 2
      + zipperDepthTotal(zl)
      // + (if zl.isEmpty || zl.head.isEmpty then BigInt(0) else zl.head.exprs.size)
      + zl.size 
      + s.size
      // + (if zl.isEmpty || zl.head.isEmpty then BigInt(0) else regexDepth(zl.head.exprs.head)) 
      ) // Pretty insane but so beautiful haha

    mainMatchTheorem(r, s)
    zl match {
      case Cons(hd, tl) if tl.isEmpty => {
        assert(r == generalisedConcat(hd.exprs))
        hd.exprs match {
          // case Cons(hExp, tlExp) if tlExp.isEmpty => {
          //   assert(r == hExp)
          //   r match {
          //     case EmptyExpr() => lemmaZipperOfEmptyExprMatchesOnlyEmptyString(z, s)
          //     case EmptyLang() => lemmaZipperStartingWithEmptyLangMatchesNothing(z, Context(List(r)), s)
          //     case ElementMatch(a) => lemmaElementMatchZipperAcceptsOnlyThisChar(z, Context(List(ElementMatch(a))), a, s)
          //     case Union(r1, r2) => {
          //       mainMatchTheorem(r1, s)
          //       mainMatchTheorem(r2, s)
          //       assert(matchR(r, s) == (matchR(r1, s) || matchR(r2, s)))
          //       s match {
          //         case Nil() => {
          //           lemmaUnfocusPreservesNullability(r, z)
          //           assert(nullableZipper(z) == nullable(r))
          //           check(matchZipper(z, s) == matchR(r, s))
          //         }
          //         case Cons(shd, stl) => {
          //           val deriv = derivationStepZipper(z, shd)
          //           val derivUp = derivationStepZipperUp(Context(List(r)), shd)
          //           val derivDown = derivationStepZipperDown(r, Context(List()), shd)
          //           assert(derivUp == derivDown)
          //           assert(derivDown == derivationStepZipperDown(r1, Context(List()), shd) ++ derivationStepZipperDown(r2, Context(List()), shd))
          //           val z1 = derivationStepZipperDown(r1, Context(List()), shd)
          //           val z2 = derivationStepZipperDown(r2, Context(List()), shd)
          //           SetUtils.lemmaFlatMapOnSingletonSet(z, hd, (c: Context[C]) => derivationStepZipperUp(c, shd))
          //           assert(deriv == z1 ++ z2)
          //           assert(matchZipper(z1 ++ z2, stl) == matchZipper(z, s))
          //           lemmaZipperConcatMatchesSameAsBothZippers(z1, z2, stl)
          //           assert((matchZipper(z1, stl) || matchZipper(z2, stl)) == matchZipper(z1 ++ z2, stl))
          //           assert((matchZipper(z1, stl) || matchZipper(z2, stl)) == matchZipper(z, s))
                    
          //           val zR1 = Set(Context(List(r1)))
          //           val zR2 = Set(Context(List(r2)))
          //           val derivZR1 = derivationStepZipper(zR1, shd)
          //           val derivZR2 = derivationStepZipper(zR2, shd)

          //           val derivUpZR1 = derivationStepZipperUp(Context(List(r1)), shd)
          //           val derivUpZR2 = derivationStepZipperUp(Context(List(r2)), shd)
          //           SetUtils.lemmaFlatMapOnSingletonSet(zR1, Context(List(r1)), (c: Context[C]) => derivationStepZipperUp(c, shd))
          //           SetUtils.lemmaFlatMapOnSingletonSet(zR2, Context(List(r2)), (c: Context[C]) => derivationStepZipperUp(c, shd))

          //           val zR1Deriv = derivationStepZipperDown(r1, Context(List()), shd)
          //           val zR2Deriv = derivationStepZipperDown(r2, Context(List()), shd)
          //           assert(zR1Deriv == z1)
          //           assert(zR2Deriv == z2)
          //           assert(matchZipper(zR1, s) == matchZipper(zR1Deriv, stl))
          //           assert(matchZipper(zR2, s) == matchZipper(zR2Deriv, stl))
          //           assert((matchZipper(zR1, s) || matchZipper(zR2, s)) == matchZipper(z, s))
          //           theoremZipperRegexEquivInductZ(zR1, List(Context(List(r1))), r1, s)
          //           theoremZipperRegexEquivInductZ(zR2, List(Context(List(r2))), r2, s)
          //         }
          //       }
          //     }
          //     case Concat(r1, r2) => {
          //       assert(matchR(r, s) == findConcatSeparation(r1, r2, Nil(), s, s).isDefined)
          //       s match {
          //         case Nil() => {
          //           lemmaUnfocusPreservesNullability(r, z)
          //           assert(nullableZipper(z) == nullable(r))
          //           check(matchZipper(z, s) == matchR(r, s))
          //         }
          //         case Cons(shd, stl) => {
          //           val zDeriv = derivationStepZipper(z, shd)
          //           val zDerivUp = derivationStepZipperUp(Context(List(r)), shd)
          //           val zDerivDown = derivationStepZipperDown(r, Context(List()), shd)
          //           assert(zDerivUp == zDerivDown)  
          //           SetUtils.lemmaFlatMapOnSingletonSet(z, hd, (c: Context[C]) => derivationStepZipperUp(c, shd))
          //           assert(zDeriv == zDerivDown)
          //           val zR1 = Set(Context(List(r1, r2)))
          //           val zR2 = Set(Context(List(r2)))
          //           val derivZR1 = derivationStepZipper(zR1, shd)
          //           val derivZR2 = derivationStepZipper(zR2, shd)

          //           val derivUpZR1 = derivationStepZipperUp(Context(List(r1, r2)), shd)
          //           val derivUpZR2 = derivationStepZipperUp(Context(List(r2)), shd)

          //           SetUtils.lemmaFlatMapOnSingletonSet(zR1, Context(List(r1, r2)), (c: Context[C]) => derivationStepZipperUp(c, shd))
          //           SetUtils.lemmaFlatMapOnSingletonSet(zR2, Context(List(r2)), (c: Context[C]) => derivationStepZipperUp(c, shd))

          //           val derivDownZR1 = derivationStepZipperDown(r1, Context(List(r2)), shd)
          //           val derivDownZR2 = derivationStepZipperDown(r2, Context(List()), shd)

          //           if(nullable(r1)){
          //             assert(zDeriv == derivDownZR1 ++ derivDownZR2)
          //             lemmaZipperConcatMatchesSameAsBothZippers(derivDownZR1, derivDownZR2, stl)
          //             assert((matchZipper(derivDownZR1, stl) || matchZipper(derivDownZR2, stl)) == matchZipper(zDeriv, stl))

          //             assert(derivUpZR1 == derivDownZR1 ++ derivUpZR2)
          //             assert(derivUpZR1 == derivDownZR1 ++ derivDownZR2)
          //             assert(derivUpZR1 == zDeriv)

          //             assert(matchZipper(zR1, s) == matchZipper(derivationStepZipper(zR1, shd), stl))

          //             assert(matchZipper(zR1, s) == matchZipper(derivZR1, stl))
          //             assert(matchZipper(zR2, s) == matchZipper(derivZR2, stl))

          //             assert(regexDepth(r1) < regexDepth(r))
          //             assert(contextDepth(Context(List(r1, r2))) < contextDepth(Context(List(r))))
          //             assert(regexDepth(r) == regexDepth(Concat(r1, r2)))
          //             theoremZipperRegexEquivInductZ(zR1, List(Context(List(r1, r2))), Concat(r1, r2), s)
          //             theoremZipperRegexEquivInductZ(zR2, List(Context(List(r2))), r2, s)
                      

          //           } else {
          //             assert(zDeriv == derivDownZR1)

          //             theoremZipperRegexEquivInductZ(zR1, List(Context(List(r1, r2))), Concat(r1, r2), s)
          //             theoremZipperRegexEquivInductZ(zR2, List(Context(List(r2))), r2, s)
          //           }
          //         }
          //       }
          //     }
          //     case Star(rInner) => {
          //       assert(matchR(r, s) ==  s.isEmpty || findConcatSeparation(rInner, Star(rInner), Nil(), s, s).isDefined)
          //       s match {
          //         case Nil() => {
          //           lemmaUnfocusPreservesNullability(r, z)
          //           assert(nullableZipper(z) == nullable(r))
          //           check(matchZipper(z, s) == matchR(r, s))
          //         }
          //         case Cons(shd, stl) => {  
          //           val zDeriv = derivationStepZipper(z, shd)
          //           val zDerivUp = derivationStepZipperUp(Context(List(r)), shd)
          //           val zDerivDown = derivationStepZipperDown(r, Context(List()), shd)
          //           assert(zDerivUp == zDerivDown)  
          //           SetUtils.lemmaFlatMapOnSingletonSet(z, hd, (c: Context[C]) => derivationStepZipperUp(c, shd))
          //           assert(zDeriv == zDerivDown)

          //           val zR1 = Set(Context(List(rInner, Star(rInner))))
          //           val derivZR1 = derivationStepZipper(zR1, shd)

          //           val derivUpZR1 = derivationStepZipperUp(Context(List(rInner, Star(rInner))), shd)

          //           SetUtils.lemmaFlatMapOnSingletonSet(zR1, Context(List(rInner, Star(rInner))), (c: Context[C]) => derivationStepZipperUp(c, shd))
          //           val derivDownZR1 = derivationStepZipperDown(rInner, Context(List(Star(rInner))), shd)

          //           assert(zDeriv == derivDownZR1)
          //           assert(matchZipper(zR1, s) == matchZipper(derivationStepZipper(zR1, shd), stl))
          //           assert(matchZipper(zR1, s) == matchZipper(derivZR1, stl))

          //           assert(regexDepth(rInner) < regexDepth(r))
          //           assert(contextDepth(Context(List(rInner, Star(rInner)))) == contextDepth(Context(List(r))))
          //           assert(regexDepth(r) + 1 == regexDepth(Concat(rInner, Star(rInner))))
          //           theoremZipperRegexEquivInductZ(zR1, List(Context(List(rInner, Star(rInner)))), Concat(rInner, Star(rInner)), s)
          //           assert(matchR(Concat(rInner, Star(rInner)), s) == matchZipper(zR1, s))
          //           mainMatchTheorem(Concat(rInner, Star(rInner)), s)
          //         }
          //       }
          //     }
          //   }
          // }
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
                    theoremZipperRegexEquivInductZ(zR1, List(Context(List(r1))), r1, s)
                    theoremZipperRegexEquivInductZ(zR2, List(Context(List(r2))), r2, s)
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
                        theoremZipperRegexEquivInductZ(zR1, List(Context(List(r1, r2))), Concat(r1, r2), s)
                        theoremZipperRegexEquivInductZ(zR2, List(Context(List(r2))), r2, s)
                        

                      } else {
                        assert(zDeriv == derivDownZR1)
                        assert(unfocusZipper(zl) == r)
                        assert(r == generalisedConcat(hd.exprs))
                        assert(hd.exprs == List(r))
                        assert(zipperDepth(List(Context(List(r1, r2)))) < zipperDepth(List(Context(List(r))))) // Measure
                        assert(zipperDepth(List(Context(List(r1, r2)))) < zipperDepth(List(Context(List(r))))) // Measure
                        theoremZipperRegexEquivInductZ(zR1, List(Context(List(r1, r2))), Concat(r1, r2), s)
                        theoremZipperRegexEquivInductZ(zR2, List(Context(List(r2))), r2, s)
                      }
                    } else 
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
                          theoremZipperRegexEquivInductZ(zVirt, List(Context(tlExp)), generalisedConcat(tlExp), stl)
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
                          theoremZipperRegexEquivInductZ(zVirt1, List(Context(Cons(rOne, tlExp))), generalisedConcat(Cons(rOne, tlExp)), s)
                          theoremZipperRegexEquivInductZ(zVirt2, List(Context(Cons(rTwo, tlExp))), generalisedConcat(Cons(rTwo, tlExp)), s)
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
                          theoremZipperRegexEquivInductZ(zVirt1, List(Context(Cons(rOne, Cons(rTwo, tlExp)))), generalisedConcat(Cons(rOne, Cons(rTwo, tlExp))), s)
                          theoremZipperRegexEquivInductZ(zVirt2, List(Context(Cons(rTwo, tlExp))), generalisedConcat(Cons(rTwo, tlExp)), s)

                          mainMatchTheorem(generalisedConcat(Cons(rOne, Cons(rTwo, tlExp))), s)
                          mainMatchTheorem(generalisedConcat(Cons(rTwo, tlExp)), s)

                          assert(matchZipper(z, s) == (matchZipper(zVirt1, s) || matchZipper(zVirt2, s)))
                          assert(matchZipper(z, s) == (matchR(generalisedConcat(Cons(rOne, Cons(rTwo, tlExp))), s) || matchR(generalisedConcat(Cons(rTwo, tlExp)), s)))

                          assert(matchR(r, s) == findConcatSeparation(r1, r2, Nil(), s, s).isDefined)
                          assert(matchR(r, s) == matchR(Concat(r1, r2), s))
                          assert(matchR(r, s) == matchR(Concat(Concat(rOne, rTwo), r2), s))
                          assert(matchR(r, s) == matchR(Concat(Concat(rOne, rTwo), generalisedConcat(tlExp)), s))

                          lemmaConcatAssociative(rOne, rTwo, generalisedConcat(tlExp), s)
                          assert(matchR(Concat(Concat(rOne, rTwo), generalisedConcat(tlExp)), s) == matchR(Concat(rOne, Concat(rTwo, generalisedConcat(tlExp))), s)) // TODO

                          assert(matchR(r, s) == matchZipper(z, s))
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
                          theoremZipperRegexEquivInductZ(zVirt1, List(Context(Cons(rOne, Cons(rTwo, tlExp)))), generalisedConcat(Cons(rOne, Cons(rTwo, tlExp))), s)

                          mainMatchTheorem(generalisedConcat(Cons(rOne, Cons(rTwo, tlExp))), s)
                          mainMatchTheorem(generalisedConcat(Cons(rTwo, tlExp)), s)

                          assert(matchZipper(z, s) == (matchZipper(zVirt1, s)))
                          assert(matchZipper(z, s) == (matchR(generalisedConcat(Cons(rOne, Cons(rTwo, tlExp))), s)))

                          assert(matchR(r, s) == findConcatSeparation(r1, r2, Nil(), s, s).isDefined)
                          assert(matchR(r, s) == matchR(Concat(r1, r2), s))
                          assert(matchR(r, s) == matchR(Concat(Concat(rOne, rTwo), r2), s))
                          assert(matchR(r, s) == matchR(Concat(Concat(rOne, rTwo), generalisedConcat(tlExp)), s))

                          lemmaConcatAssociative(rOne, rTwo, generalisedConcat(tlExp), s)
                          assert(matchR(Concat(Concat(rOne, rTwo), generalisedConcat(tlExp)), s) == matchR(Concat(rOne, Concat(rTwo, generalisedConcat(tlExp))), s)) // TODO

                          assert(matchR(r, s) == matchZipper(z, s))
                        }
                        case Star(rInner) => {
                          assert(zDerivDown == derivationStepZipperDown(rInner, Context(Cons(Star(rInner), tlExp)), shd))

                          val zVirt = Set(Context(Cons(Concat(rInner, Star(rInner)), tlExp)))
                          val zVirtDeriv = derivationStepZipper(zVirt, shd)
                          val zVirtDerivUp = derivationStepZipperUp(Context(Cons(Concat(rInner, Star(rInner)), tlExp)), shd)
                          SetUtils.lemmaFlatMapOnSingletonSet(zVirt, Context(Cons(Concat(rInner, Star(rInner)), tlExp)), (c: Context[C]) => derivationStepZipperUp(c, shd))
                          assert(zVirtDeriv == derivationStepZipperDown(rInner, Context(Cons(Concat(rInner, Star(rInner)), tlExp)), shd) ++ derivationStepZipperUp(Context(tlExp), shd))

                          assert(matchZipper(zVirt, s) == matchZipper(zVirtDeriv, stl))


                          //TODO measures
                          theoremZipperRegexEquivInductZ(zVirt, List(Context(Cons(Concat(rInner, Star(rInner)), tlExp))), generalisedConcat(Cons(Concat(rInner, Star(rInner)), tlExp)), s)

                        }
                        case _ => {
                          assume(matchR(r, s) == matchZipper(z, s))
                          lemmaEmptyZipperMatchesNothing(zDerivDown, stl)
                          assert(zDerivDown == Set())
                          assert(matchR(r, s) == matchZipper(z, s))
                        }
                      }

                      val zTail = Set(Context(tlExp))
                      val zDerivTail = derivationStepZipper(zTail, shd)
                      SetUtils.lemmaFlatMapOnSingletonSet(zTail, Context(tlExp), (c: Context[C]) => derivationStepZipperUp(c, shd))
                      assert(zDerivUpUp == zDerivTail)

                      assert(r == generalisedConcat(hd.exprs))
                      assert(regexDepth(r) >= regexDepth(generalisedConcat(tlExp)))
                      assert(zipperDepth(zl) >= zipperDepth(List(Context(tlExp))))

                      theoremZipperRegexEquivInductZ(zTail, List(Context(tlExp)), generalisedConcat(tlExp), s)
                      assert(matchR(generalisedConcat(tlExp), s) == matchZipper(zTail, s))

                      


                      assume(matchR(r, s) == matchZipper(z, s))
                    
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

                    assert(regexDepth(rInner) < regexDepth(r))
                    assert(contextDepth(Context(List(rInner, Star(rInner)))) == contextDepth(Context(List(r))))
                    assert(regexDepth(r) + 1 == regexDepth(Concat(rInner, Star(rInner))))
                    assume(matchR(r, s) == matchZipper(z, s))
                    // theoremZipperRegexEquivInductZ(zR1, List(Context(List(rInner, Star(rInner)))), Concat(rInner, Star(rInner)), s) // TODO measure
                    // assert(matchR(Concat(rInner, Star(rInner)), s) == matchZipper(zR1, s))
                    mainMatchTheorem(Concat(rInner, Star(rInner)), s)
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
          case Cons(shd, stl) => assume(matchR(r, s) == matchZipper(z, s))
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


  // @ghost
  // @opaque
  // @inlineOnce
  // def lemmaEmptyExprZipperMatchesOnlyEmptyString[C](z: Zipper[C], c: Context[C], s: List[C]): Unit = {
  //   require(z == Set(Context(List(EmptyExpr[C]()))))
  //   require(!c.isEmpty)
  //   require(c.head == EmptyExpr[C]())
  //   require(c.tail.isEmpty)

  //   s match {
  //     case Cons(hd, tl) => {
  //       val deriv: Zipper[C]= derivationStepZipper(z, hd)
  //       val derivUp = derivationStepZipperUp(c, hd)
  //       assert(derivUp == derivationStepZipperDown(c.head, Context(List()), hd) ++ derivationStepZipperUp(Context(List()), hd))
  //       if(!deriv.isEmpty){
  //         val hd = deriv.toList.head
  //         val f: Context[C] => Zipper[C] = ct => derivationStepZipperUp(ct, s.head)
  //         assert(z.flatMap(f).contains(hd))
  //         assert(deriv.contains(hd))
  //         unfold(z.flatMapPost(f)(hd))
  //         assert(z.exists(context => derivationStepZipperUp(context, s.head).contains(hd)))
  //         assert(z == Set(c))
  //         check(false)
  //       }
  //       assert(deriv.isEmpty)
  //       lemmaEmptyZipperMatchesNothing(deriv, s.tail)
  //       check(!s.isEmpty)
  //       check(matchZipper(z, s) == false)
  //     }
  //     case Nil() => 
  //       check(nullableContext(c))
  //       check(matchZipper(z, s))
  //   }

  // }.ensuring(_ => matchZipper(z, s) == s.isEmpty)

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

}

object VerifiedRegexMatcher {
  import VerifiedRegex._
  import ListUtils._
  import Memoisation._

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


  def matchRMem[C](r: Regex[C], input: List[C])(implicit cache: Cache[C]): Boolean = {
    require(validRegex(r))
    require(cache.valid)
    decreases(input.size)
    if (input.isEmpty) nullable(r) else matchRMem(derivativeStepMem(r, input.head)(cache: Cache[C]), input.tail)
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
    require(!usedCharacters(r).contains(c))
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
    require(!usedCharacters(r).contains(c))

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
    require(!firstChars(r).contains(c))

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

  }.ensuring (_ => usedCharacters(r).contains(c))

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
            assert(usedCharacters(r).contains(c))
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

  }.ensuring (_ => usedCharacters(r).contains(c))

  @ghost
  def lemmaDerivativeStepDoesNotAddCharToUsedCharacters[C](r: Regex[C], c: C, cNot: C): Unit = {
    decreases(r)
    require(validRegex(r))
    require(!usedCharacters(r).contains(cNot))

    r match {
      case EmptyExpr()     => ()
      case EmptyLang()     => ()
      case ElementMatch(c) => ()
      case Union(rOne, rTwo) => {
        lemmaDerivativeStepDoesNotAddCharToUsedCharacters(rOne, c, cNot)
        lemmaDerivativeStepDoesNotAddCharToUsedCharacters(rTwo, c, cNot)
        lemmaConcatTwoListsWhichNotContainThenTotNotContain(usedCharacters(derivativeStep(rOne, c)), usedCharacters(derivativeStep(rTwo, c)), cNot)
      }
      case Star(rInner) => {
        lemmaDerivativeStepDoesNotAddCharToUsedCharacters(rInner, c, cNot)
      }
      case Concat(rOne, rTwo) => {
        if (nullable(rOne)) {
          lemmaDerivativeStepDoesNotAddCharToUsedCharacters(rOne, c, cNot)
          lemmaDerivativeStepDoesNotAddCharToUsedCharacters(rTwo, c, cNot)
          lemmaConcatTwoListsWhichNotContainThenTotNotContain(usedCharacters(derivativeStep(rOne, c)), usedCharacters(derivativeStep(rTwo, c)), cNot)
        } else {
          lemmaDerivativeStepDoesNotAddCharToUsedCharacters(rOne, c, cNot)
        }
      }
    }

  }.ensuring (_ => !usedCharacters(derivativeStep(r, c)).contains(cNot))

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
    require(firstChars(r).contains(c))
    decreases(r)
    r match {
      case EmptyExpr()     => ()
      case EmptyLang()     => ()
      case ElementMatch(c) => ()
      case Star(r)         => lemmaUsedCharsContainsAllFirstChars(r, c)
      case Union(rOne, rTwo) =>
        if (firstChars(rOne).contains(c)) {
          lemmaUsedCharsContainsAllFirstChars(rOne, c)
        } else {
          lemmaUsedCharsContainsAllFirstChars(rTwo, c)
        }

      case Concat(rOne, rTwo) if nullable(rOne) =>
        if (firstChars(rOne).contains(c)) {
          lemmaUsedCharsContainsAllFirstChars(rOne, c)
        } else {
          lemmaUsedCharsContainsAllFirstChars(rTwo, c)
        }

      case Concat(rOne, rTwo) if !nullable(rOne) => lemmaUsedCharsContainsAllFirstChars(rOne, c)
    }

  }.ensuring (_ => usedCharacters(r).contains(c))

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
            assert(firstChars(r).contains(c))
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

  }.ensuring (_ => firstChars(r).contains(c))
}

object Utils {
  def maxBigInt(a: BigInt, b: BigInt): BigInt = if (a >= b) a else b
  def maxLong(a: Long, b: Long): Long = if (a >= b) a else b
}
