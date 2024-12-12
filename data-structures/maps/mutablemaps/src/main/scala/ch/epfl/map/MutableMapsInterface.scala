/** Author: Samuel Chassot
  */
package ch.epfl.map

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
  trait MutLongMap[V] {
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
  }

  @mutable
  trait MutableMap[K, V] {
    import ch.epfl.map.ListMap
    /**
     * Invariant for the datastructure
     */
    @pure 
    @ghost
    def valid: Boolean
    
    @pure
    def defaultEntry: K => V

    /**
     * @return an instance of the executable specification of the map
     */
    @ghost
    @pure
    def abstractMap: ListMap[K, V] = {
      require(valid)
      ??? : ListMap[K, V]
    }

    @pure
    def size: Int
    @pure
    def isEmpty: Boolean = {
      require(valid)
      ??? : Boolean
    }

    @pure
    def contains(key: K): Boolean = {
    require(valid)
    ??? : Boolean
    }.ensuring(res => valid && (res == abstractMap.contains(key)))

    @pure
    def apply(key: K): V = {
      require(valid)
      ??? : V
    }.ensuring(res => valid && (if (contains(key)) then abstractMap.get(key).isDefined && res == abstractMap.get(key).get else res == defaultEntry(key)))

    def update(key: K, v: V): Boolean = {
      require(valid)
      ??? : Boolean
    }.ensuring(res => valid && (if (res) then abstractMap.contains(key) && (abstractMap.eq(old(this).abstractMap + (key, v))) else abstractMap.eq(old(this).abstractMap)))
    
    def remove(key: K): Boolean = {
      require(valid)
      ??? : Boolean
    }.ensuring(res => valid && (if (res) then abstractMap.eq(old(this).abstractMap - key) else abstractMap.eq(old(this).abstractMap)))
  }
}
