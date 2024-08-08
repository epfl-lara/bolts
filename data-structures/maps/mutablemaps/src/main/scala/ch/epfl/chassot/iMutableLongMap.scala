/** Author: Samuel Chassot
  */
package ch.epfl.chassot

import stainless.annotation._
import stainless.collection._
import stainless.equations._
import stainless.lang.{ghost => ghostExpr, *}
import stainless.proof.check
import scala.annotation.tailrec
import stainless.lang.Cell

import stainless.lang.StaticChecks.* // Comment out when using the OptimisedEnsuring object below

object MutableMapInterface{
  @mutable
  trait iMLongMap[V] {
    
    /**
     * Invariant for the datastructure
     */
    @pure 
    @ghost
    def valid: Boolean
    
    @pure
    def defaultEntry: Long => V

    /**
     * @return an instance of the executable specification of the map
     */
    @ghost
    @pure
    def abstractMap: ListLongMap[V] = {
      require(valid)
      ??? : ListLongMap[V]
    }

    @pure
    def size: Int
    @pure
    def isEmpty: Boolean = {
      require(valid)
      ??? : Boolean
    }

    @pure
    def contains(key: Long): Boolean = {
    require(valid)
    ??? : Boolean
    }.ensuring(res => valid && (res == abstractMap.contains(key)))

    @pure
    def apply(key: Long): V = {
      require(valid)
      ??? : V
    }.ensuring(res => valid && (if (contains(key)) then abstractMap.get(key).isDefined && res == abstractMap.get(key).get else res == defaultEntry(key)))

    def update(key: Long, v: V): Boolean = {
      require(valid)
      ??? : Boolean
    }.ensuring(res => valid && (if (res) then abstractMap.contains(key) && (abstractMap == old(this).abstractMap + (key, v)) else abstractMap == old(this).abstractMap))
    
    def remove(key: Long): Boolean = {
      require(valid)
      ??? : Boolean
    }.ensuring(res => valid && (if (res) then abstractMap == old(this).abstractMap - key else abstractMap == old(this).abstractMap))

    // @ghost @pure 
    // @law def containsCorrect(key: Long): Boolean = 
    //   val thiss = snapshot(this)
    //   thiss.contains(key) == thiss.abstractMap.contains(key)
    
    // @ghost @pure 
    // @law def applyCorrect(key: Long): Boolean = 
    //   val res = apply(key)
    //   if (contains(key)) then 
    //     abstractMap.get(key).isDefined
    //     && res == abstractMap.get(key).get
    //   else 
    //     res == defaultEntry(key)
    
    // @ghost @pure 
    // @law def updateCorrect(key: Long, v: V): Boolean = 
    //   val thiss = snapshot(this)
    //   val oldMap = abstractMap
    //   val res = thiss.update(key, v)
    //   if (res) then
    //     thiss.abstractMap.contains(key) 
    //     && (thiss.abstractMap == oldMap + (key, v))
    //   else 
    //     thiss.abstractMap == oldMap

    // @ghost @pure 
    // @law def removeCorrect(key: Long): Boolean = 
    //   val thiss = snapshot(this)
    //   val oldMap = thiss.abstractMap
    //   val res = thiss.remove(key)
    //   if (res) then
    //     thiss.abstractMap == oldMap - key
    //   else 
    //     thiss.abstractMap == oldMap

  }
}
