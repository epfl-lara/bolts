package ch.epfl.set

import stainless.annotation.*
import stainless.collection.*
import stainless.lang.{ghost => ghostExpr, *}
import stainless.proof.check

import stainless.lang.StaticChecks.* // Comment out when using the OptimisedEnsuring object below

import ch.epfl.map.MutableMapInterface.iMHashMap
import ch.epfl.map.ListMap
import ch.epfl.map.TupleListOpsGenK


case class MutableHashSet[V](private val underlying: iMHashMap[V, Unit]) extends MutableSetInterface.iMSet[V]:
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
      underlying.contains(v)
    }.ensuring(res => valid && (res == abstractSet.contains(v)))

    override def update(v: V): Boolean = {
      require(valid)
      @ghost val oldAbstractMap = underlying.abstractMap
      @ghost val oldAbstractSet = abstractSet
      val res = underlying.update(v, ())
      ghostExpr({
        if (res) {
          TupleListOpsGenK.lemmaEqMapSameKeysSet(underlying.abstractMap, oldAbstractMap + (v, ()))
        } else {
          TupleListOpsGenK.lemmaEqMapSameKeysSet(underlying.abstractMap, oldAbstractMap)
        }
      })
      res
    }.ensuring(res => valid && (if (res) then abstractSet.contains(v) && (abstractSet == old(this).abstractSet + v) else abstractSet == old(this).abstractSet))

    override def remove(v: V): Boolean = {
      require(valid)
      @ghost val oldAbstractMap = underlying.abstractMap
      @ghost val oldAbstractSet = abstractSet
      val res = underlying.remove(v)
      ghostExpr({
        if(!res){
          TupleListOpsGenK.lemmaEqMapSameKeysSet(underlying.abstractMap, oldAbstractMap)
        } else {
          TupleListOpsGenK.lemmaEqMapSameKeysSet(underlying.abstractMap, oldAbstractMap - v)
        }
      })
      res
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