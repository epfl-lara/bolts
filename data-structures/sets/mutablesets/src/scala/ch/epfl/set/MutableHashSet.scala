package ch.epfl.set

import stainless.annotation._
import stainless.collection._
import stainless.lang._

import stainless.lang.StaticChecks.* // Comment out when using the OptimisedEnsuring object below

import ch.epfl.map.MutableMapInterface.iMHashMap

object MutableHashSetObj:

  case class MutableHashSet[V](private val underlying: iMHashMap[V, Boolean]) extends MutableSetInterface.iMSet[V]:
    override def valid: Boolean = {
      underlying.valid
    }

    override def size: Int = {
      underlying.size
    }

    override def contains(v: V): Boolean = {
      underlying.contains(v)
    }.ensuring(res => valid && (res == abstractSet.contains(v)))

    override def update(v: V): Boolean = {
      require(valid)
      underlying(v) = true
      true
    }.ensuring(res => valid && (if (res) then abstractSet.contains(v) && (abstractSet == old(this).abstractSet + v) else abstractSet == old(this).abstractSet))

    override def remove(v: V): Boolean = {
      require(valid)
      underlying.remove(v)
      true
    }.ensuring(res => valid && (if (res) then abstractSet == old(this).abstractSet - v else abstractSet == old(this).abstractSet))

    override def isEmpty: Boolean = {
      underlying.isEmpty
    }.ensuring(res => valid && (res == abstractSet.isEmpty))

    override  def abstractSet: Set[V] = {
      require(valid)
    }

  end MutableHashMap

  def extractSet[V](m: List[(V, Boolean)]): Set[V] = {
    m match
      case Cons((k, _), t) => extractSet(tl) + k
      case Nil() => Set()
  }


end MutableHashSetObj
