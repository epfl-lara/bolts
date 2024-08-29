/** Author: Samuel Chassot
  */
package ch.epfl.set

import stainless.annotation.*
import stainless.collection.*
import stainless.lang.*

import stainless.lang.StaticChecks.* // Comment out when using the OptimisedEnsuring object below

object MutableSetInterface{
  @mutable
  trait iMSet[V] {
    /**
     * Invariant for the datastructure
     */
    @pure 
    @ghost
    def valid: Boolean

    /**
     * @return an instance of the executable specification of the Set
     * This is an instance stainless.lang.Set
     */
    @ghost
    @pure
    def abstractSet: Set[V] = {
      require(valid)
      ??? : Set[V]
    }

    @pure
    def size: Int

    @pure
    def isEmpty: Boolean = {
      require(valid)
      ??? : Boolean
    }

    @pure
    def contains(v: V): Boolean = {
    require(valid)
    ??? : Boolean
    }.ensuring(res => valid && (res == abstractSet.contains(v)))

    def update(v: V): Boolean = {
      require(valid)
      ??? : Boolean
    }.ensuring(res => valid && (if (res) then abstractSet.contains(v) && (abstractSet == old(this).abstractSet + v) else abstractSet == old(this).abstractSet))
    
    def remove(v: V): Boolean = {
      require(valid)
      ??? : Boolean
    }.ensuring(res => valid && (if (res) then abstractSet == old(this).abstractSet - v else abstractSet == old(this).abstractSet))
  }
}
