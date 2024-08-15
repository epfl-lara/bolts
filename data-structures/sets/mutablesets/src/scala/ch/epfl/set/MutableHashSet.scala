package ch.epfl.set

import stainless.annotation.*
import stainless.collection.*
import stainless.lang.{ghost => ghostExpr, *}

import stainless.lang.StaticChecks.* // Comment out when using the OptimisedEnsuring object below

import ch.epfl.map.MutableMapInterface.iMHashMap
import ch.epfl.map.ListMap


case class MutableHashSet[V](private val underlying: iMHashMap[V, Boolean]) extends MutableSetInterface.iMSet[V]:
  import MutableHashSetObj.*
    @pure 
    @ghost
    override def valid: Boolean = {
      underlying.valid
    }

    override def size: Int = {
      underlying.size
    }

    override def contains(v: V): Boolean = {
      require(valid)
      ghostExpr(lemmaUnderlyingContainsSamAsAsbtractSetContains(underlying.abstractMap, v))
      underlying.contains(v)
    }.ensuring(res => valid && (res == abstractSet.contains(v)))

    override def update(v: V): Boolean = {
      require(valid)
      @ghost val oldAbstractMap = underlying.abstractMap
      @ghost val oldAbstractSet = abstractSet
      assert(abstractSet == extractSet(oldAbstractMap.toList))
      val res = underlying.update(v, true)
      if res then
        assert(underlying.abstractMap.eq(oldAbstractMap + (v, true)))
        ghostExpr(lemmaNewPairListMapInAbstractSet(oldAbstractMap, v))
        assert(abstractSet.contains(v))
        assert(abstractSet == oldAbstractSet + v)
      assert(valid)
      res
    }.ensuring(res => valid && (if (res) then abstractSet.contains(v) && (abstractSet == old(this).abstractSet + v) else abstractSet == old(this).abstractSet))

    override def remove(v: V): Boolean = {
      require(valid)
      underlying.remove(v)
    }.ensuring(res => valid && (if (res) then abstractSet == old(this).abstractSet - v else abstractSet == old(this).abstractSet))

    override def isEmpty: Boolean = {
      require(valid)
      underlying.isEmpty
    }

    @ghost
    @pure
    override  def abstractSet: Set[V] = {
      require(valid)
      underlying.abstractMap.keys().content
    }

end MutableHashSet


object MutableHashSetObj:

  def extractSet[V](m: List[(V, Boolean)]): Set[V] = {
    m match
      case Cons((k, _), tl) => extractSet(tl) + k
      case Nil() => Set()
  }

  @ghost
  @inlineOnce
  @opaque
  def lemmaUnderlyingContainsSamAsAsbtractSetContains[V](lm: ListMap[V, Boolean], v: V): Unit = {
    decreases(lm)
    lm.toList match 
      case Cons((k, _), tl) => lemmaUnderlyingContainsSamAsAsbtractSetContains(ListMap(tl), v)
      case Nil() =>
  }.ensuring(_ => extractSet(lm.toList).contains(v) == lm.contains(v))

  @ghost
  @inlineOnce
  @opaque
  def lemmaNewPairListMapInAbstractSet[V](lm: ListMap[V, Boolean], k: V): Unit = {
    decreases(lm)
    lm.toList match 
      case Cons((k1, v1), tl) => lemmaNewPairListMapInAbstractSet(ListMap(tl), k)
      case Nil() =>
  }.ensuring(_ => extractSet((lm + (k, true)).toList) == extractSet(lm.toList) + k)


end MutableHashSetObj
