/** Author: Samuel Chassot
  */
package com.mutablemaps.map

import stainless.annotation._
import stainless.collection.{ListMap => ListMapStainless, ListMapLemmas => ListMapLemmasStainless, _}
import stainless.equations._
import stainless.lang.Cell
import MutableLongMap._
import LongMapFixedSize.validMask
import scala.annotation.tailrec

// BEGIN uncomment for verification ------------------------------------------
import stainless.lang.StaticChecks._
import stainless.lang.{ghost => ghostExpr, _}
import stainless.proof.check
// END uncomment for verification --------------------------------------------
// BEGIN imports for benchmarking -------------------------------------------
// import stainless.lang.{ghost => _, decreases => _, unfold => _, _}
// import com.mutablemaps.map.OptimisedChecks.*
// import Predef.{assert => _, Ensuring => _, require => _}

// @tailrec
// def dummyMutableHashMap(x: BigInt): BigInt = {
//   if (x == BigInt(0)) then x
//   else dummyMutableHashMap(x - BigInt(1))
// }.ensuring( res => res == BigInt(0))
// END imports for benchmarking ---------------------------------------------

import MutableMapInterface.MutableMap

trait Hashable[K] {
  @pure
  def hash(k: K): Long
}

object MutableHashMap {

  /** Helper method to create a new empty HashMap
    *
    * @param defaultValue
    * @return
    */
  def getEmptyHashMap[K, V](defaultValue: K => V, hashF: Hashable[K]): HashMap[K, V] = {
    val initialSize = 16
    HashMap(Cell(MutableLongMap.getEmptyLongMap[List[(K, V)]]((l: Long) => Nil[(K, V)](), initialSize)), hashF, 0, defaultValue)
  }.ensuring (res => res.valid && res.size == 0)


  @mutable
  final case class HashMap[K, V](
      val underlying: Cell[LongMap[List[(K, V)]]],
      val hashF: Hashable[K],
      var _size: Int,
      val defaultValue: K => V
  ) extends MutableMap[K, V] {

    @pure
    override def defaultEntry: K => V = this.defaultValue

  

    @pure
    def imbalanced(): Boolean = underlying.v.imbalanced()

    @pure
    override def size: Int = _size

    @pure
    override def isEmpty: Boolean = {
      underlying.v.isEmpty
    }.ensuring (_ => valid)

    @pure
    override def contains(key: K): Boolean = {
      val hash = hashF.hash(key)
      underlying.v.contains(hash) && getPair(underlying.v.apply(hash), key).isDefined
    }.ensuring (res => valid && (res == map.contains(key)))

    @pure
    override def apply(key: K): V = {
      if (!contains(key)) {
        defaultValue(key)
      } else {
        val hash = hashF.hash(key)
        getPair(underlying.v.apply(hash), key).get._2
      }
    }

    override def update(key: K, v: V): Boolean = {

      val contained = contains(key)
      val res = if (contained) {
        val hash = hashF.hash(key)
        val currentBucket = underlying.v.apply(hash)
        // currentBucket contains the key and it is defined
        val newBucket = Cons((key, v), removePairForKey(currentBucket, key))
        val res = underlying.v.update(hash, newBucket)

        if (res && !contained) then _size += 1
        res

      } else {
        val hash = hashF.hash(key)
        val currentBucket = if underlying.v.contains(hash) then underlying.v.apply(hash) else Nil[(K, V)]()
        // Either currentBucket is empty, or it does not contain the key
        val newBucket = Cons((key, v), currentBucket)
        val res = underlying.v.update(hash, newBucket)

        if (res && !contained) then _size += 1
        res
      }
      res

    }.ensuring (res => valid && (if (res) map.contains(key) && (map.eq(old(this).map + (key, v))) else map.eq(old(this).map)))

    override def remove(key: K): Boolean = {
      val contained = contains(key)
      if (!contained) {
        true
      } else {
        val hash = hashF.hash(key)
        val currentBucket = underlying.v.apply(hash)

       
        val newBucket = removePairForKey(currentBucket, key)
        val res = underlying.v.update(hash, newBucket)
        if (res && contained) then _size -= 1

        res
      }

    }.ensuring (res => valid && (if (res) map.eq(old(this).map - key) else map.eq(old(this).map)))

    def repack(): Boolean = {
      this.underlying.v.repack()
    }.ensuring (res => res == false || map == old(this).map)


  }
}

