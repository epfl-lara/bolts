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
import MutableLongMap._
import LongMapFixedSize.validMask

import stainless.lang.StaticChecks.* // Comment out when using the OptimisedEnsuring object below
// import OptimisedChecks.* // Import to remove `ensuring` and `require` from the code for the benchmarks

trait Hashable[K] {
  @pure
  def hash(k: K): Long

  @law def equalMeansEqual(k1: K, k2: K): Boolean = (hash(k1) == hash(k2)) == (k1 == k2)
}

object MutableHashMap {

  /** Helper method to create a new empty LongMap
    *
    * @param defaultEntry
    * @return
    */
  def getEmptyHashMap[K, V](hashF: Hashable[K]): HashMap[K, V] = {
    val m = 15
    assert(validMask(m))
    HashMap(Cell(MutableLongMap.getEmptyLongMap[List[(K, V)]]((l: Long) => Nil[(K, V)](), m)), hashF)
  } ensuring (res => res.valid && res.size == 0)

  // /** Helper method to create a new empty LongMap with a given initial array size WARNING: UNSOUND!!! The given size must be a power of 2 <= 2^30
  //   *
  //   * @param defaultEntry
  //   * @return
  //   */
  // def getEmptyLongMap[V](defaultEntry: Long => V, initialSize: Int): LongMap[V] = {
  //   require(validMask(initialSize - 1))
  //   val m = initialSize - 1
  //   assert(validMask(m))
  //   LongMap(Cell(LongMapFixedSize.getNewLongMapFixedSize(m, defaultEntry)))
  // } ensuring (res => res.valid && res.size == 0)

  @mutable
  final case class HashMap[K, V](
      val underlying: Cell[LongMap[List[(K, V)]]], hashF: Hashable[K]
  ) {

    @pure
    def imbalanced(): Boolean = underlying.v.imbalanced()

    @pure
    def size: Int = underlying.v.size

    @pure
    def isEmpty: Boolean = {
      require(valid)
      underlying.v.isEmpty
    } ensuring (_ => valid)

    @pure
    def contains(key: K): Boolean = {
      require(valid)
      val hash = hashF.hash(key)
      underlying.v.contains(hash) && underlying.v.apply(hash).exists(_._1 == key)
    } 
    //ensuring (res => valid && (res == map.contains(key)))

    @pure
    def apply(key: K): V = {
      require(valid)
      require(contains(key))
      val hash = hashF.hash(key)
      underlying.v.apply(hash).find(_._1 == key).get._2
    } 
    // ensuring (res =>
    //   valid
    //     && (if (contains(key)) res == map.get(key).get
    //         else res == underlying.v.defaultEntry(key))
    // )

    def update(key: K, v: V): Boolean = {
      require(valid)
      val hash = hashF.hash(key)
      val currentBucket = underlying.v.apply(hash)
      val newBucket = currentBucket.filter(_._1 != key) :+ (key, v)
      underlying.v.update(hash, newBucket)
    } 
    // ensuring (res => valid && (if (res) map.contains(key) && (map == old(this).map + (key, v)) else map == old(this).map))

    def remove(key: K): Boolean = {
      require(valid)
      val hash = hashF.hash(key)
      val currentBucket = underlying.v.apply(hash)
      val newBucket = currentBucket.filter(_._1 != key)
      underlying.v.update(hash, newBucket)
    } 
    // ensuring (res => valid && (if (res) map == old(this).map - key else map == old(this).map))

      
    @ghost
    def valid: Boolean = underlying.v.valid

    @pure
    @ghost
    private def map: ListMap[K, V] = {
      require(valid)
      // underlying.v.map
      ListMap(Nil())
    }

  }
}