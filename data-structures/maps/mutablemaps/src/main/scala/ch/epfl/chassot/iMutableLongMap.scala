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
  trait MLongMap[V] {
    @pure
    def defaultEntry: Long => V
    /**
     * @return an instance of the executable specification of the map
     */
    @ghost
    @pure
    def abstractMap: ListLongMap[V]

    @pure
    def size: Int
    @pure
    def isEmpty: Boolean
    @pure
    def contains(key: Long): Boolean
    @pure
    def apply(key: Long): V

    def update(key: Long, v: V): Boolean 
    def remove(key: Long): Boolean

    @law @ghost @pure 
    def containsCorrect(key: Long): Boolean = 
      val thiss = snapshot(this)
      thiss.contains(key) == thiss.abstractMap.contains(key)
    
    @law @ghost @pure 
    def applyCorrect(key: Long): Boolean = 
      val res = apply(key)
      if (contains(key)) then 
        abstractMap.get(key).isDefined
        && res == abstractMap.get(key).get
      else 
        res == defaultEntry(key)
    
    @law @ghost @pure 
    def updateCorrect(key: Long, v: V): Boolean = 
      val thiss = snapshot(this)
      val oldMap = abstractMap
      val res = thiss.update(key, v)
      if (res) then
        thiss.abstractMap.contains(key) 
        && (thiss.abstractMap == oldMap + (key, v))
      else 
        thiss.abstractMap == oldMap

    @law @ghost @pure 
    def removeCorrect(key: Long): Boolean = 
      val thiss = snapshot(this)
      val oldMap = thiss.abstractMap
      val res = thiss.remove(key)
      if (res) then
        thiss.abstractMap == oldMap - key
      else 
        thiss.abstractMap == oldMap

  }
}
