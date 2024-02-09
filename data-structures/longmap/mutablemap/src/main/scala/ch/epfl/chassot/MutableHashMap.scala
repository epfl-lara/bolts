/** Author: Samuel Chassot
  */
package ch.epfl.chassot

import stainless.annotation._
import stainless.collection._
import stainless.equations._
import stainless.lang.{ghost => ghostExpr, _}
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
  @law def equalMeansSameHash(k1: K, k2: K): Boolean = (k1 == k2) ==> (hash(k1) == hash(k2))
}

object MutableHashMap {

  /** Helper method to create a new empty LongMap
    *
    * @param defaultEntry
    * @return
    */
  def getEmptyHashMap[K, V](defaultValue: K => V, hashF: Hashable[K]): HashMap[K, V] = {
    val initialSize = 16
    HashMap(Cell(MutableLongMap.getEmptyLongMap[List[(K, V)]]((l: Long) => Nil[(K, V)](), initialSize)), hashF, 0, defaultValue)
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
      val underlying: Cell[LongMap[List[(K, V)]]],
      val hashF: Hashable[K],
      var _size: Int,
      val defaultValue: K => V
  ) {

    @pure
    def imbalanced(): Boolean = underlying.v.imbalanced()

    @pure
    def size: Int = _size

    @pure
    def isEmpty: Boolean = {
      require(valid)
      underlying.v.isEmpty
    } ensuring (_ => valid)

    @pure
    def contains(key: K): Boolean = {
      require(valid)
      val hash = hashF.hash(key)

      ghostExpr({
        if (underlying.v.contains(hash)) {
          if (!underlying.v.map.toList.contains((hash, underlying.v.apply(hash)))) {
            TupleListOps.lemmaGetValueByKeyIsDefinedImpliesContainsKey(underlying.v.map.toList, hash)
            TupleListOps.lemmaContainsKeyImpliesGetValueByKeyDefined(underlying.v.map.toList, hash)
            TupleListOps.lemmaGetValueByKeyImpliesContainsTuple(underlying.v.map.toList, hash, underlying.v.apply(hash))
            check(false)
          }
          ListSpecs.forallContained(underlying.v.map.toList, (k, v) => noDuplicateKeys(v), (hash, underlying.v.apply(hash)))
        }
      })
      ghostExpr({
        lemmaContainsEquivalentToMapContains(underlying.v.map, key, hashF)
      })
      underlying.v.contains(hash) && getPair(underlying.v.apply(hash), key).isDefined
    } ensuring (res => valid && (res == map.contains(key)))

    @pure
    def apply(key: K): V = {
      require(valid)
      if (!contains(key)) {
        defaultValue(key)
      } else {
        val hash = hashF.hash(key)
        ghostExpr({
          if (!underlying.v.map.toList.contains((hash, underlying.v.apply(hash)))) {
            TupleListOps.lemmaContainsKeyImpliesGetValueByKeyDefined(underlying.v.map.toList, hash)
            TupleListOps.lemmaGetValueByKeyImpliesContainsTuple(underlying.v.map.toList, hash, underlying.v.apply(hash))
            check(false)
          }
          ListSpecs.forallContained(underlying.v.map.toList, (k, v) => noDuplicateKeys(v), (hash, underlying.v.apply(hash)))
        })
        assert(getPair(underlying.v.apply(hash), key).get._2 == map.get(key).get)
        getPair(underlying.v.apply(hash), key).get._2
      }
    } ensuring (res =>
      valid
        && (if (contains(key)) res == map.get(key).get
            else res == defaultValue(key))
    )

    def update(key: K, v: V): Boolean = {
      require(valid)
      val contained = contains(key)
      val hash = hashF.hash(key)
      val currentBucket = underlying.v.apply(hash)
      val newBucket = currentBucket.filter(_._1 != key) :+ (key, v)
      val res = underlying.v.update(hash, newBucket)
      if (res && !contained) then _size += 1
      res
    }
    // ensuring (res => valid && (if (res) map.contains(key) && (map == old(this).map + (key, v)) else map == old(this).map))

    def remove(key: K): Boolean = {
      require(valid)
      val contained = contains(key)
      val hash = hashF.hash(key)
      val currentBucket = underlying.v.apply(hash)
      val newBucket = currentBucket.filter(_._1 != key)
      val res = underlying.v.update(hash, newBucket)
      if (res && contained) then _size -= 1
      res

    }
    // ensuring (res => valid && (if (res) map == old(this).map - key else map == old(this).map))

    @ghost
    def valid: Boolean = underlying.v.valid &&
      underlying.v.map.toList.forall((k, v) => noDuplicateKeys(v)) &&
      allKeysSameHashInMap(underlying.v.map, hashF)

    @pure
    @ghost
    private def map: ListMap[K, V] = {
      require(valid)
      extractMap(underlying.v.map.toList)
    }

  }
  def extractMap[K, V](l: List[(Long, List[(K, V)])]): ListMap[K, V] = {
    require(l.forall((k, v) => noDuplicateKeys(v)))
    l match {
      case Cons((k, v), tl) => addToMapMapFromBucket(v, extractMap(tl))
      case Nil()            => ListMap.empty[K, V]
    }
  } ensuring (res => true)

  def addToMapMapFromBucket[K, V](l: List[(K, V)], acc: ListMap[K, V]): ListMap[K, V] = {
    require(noDuplicateKeys(l))
    l match {
      case Nil()            => acc
      case Cons((k, v), tl) => addToMapMapFromBucket(tl, acc + (k, v))
    }
  } ensuring (res => true)

  def noDuplicateKeys[K, V](l: List[(K, V)]): Boolean = {
    l match {
      case Cons(hd, tl) => !containsKey(tl, hd._1) && noDuplicateKeys(tl)
      case Nil()        => true
    }
  }

  @pure
  def allKeysSameHashInMap[K, V](lm: ListLongMap[List[(K, V)]], hashF: Hashable[K]): Boolean = {
    lm.toList.forall((k, v) => allKeysSameHash(v, k, hashF))
  }
  def allKeysSameHash[K, V](l: List[(K, V)], h: Long, hashF: Hashable[K]): Boolean = {
    l match {
      case Cons(hd, tl) => hashF.hash(hd._1) == h && allKeysSameHash(tl, h, hashF)
      case Nil()        => true
    }
  }

  def containsKey[K, V](l: List[(K, V)], key: K): Boolean = {
    l match
      case Cons(hd, tl) if hd._1 == key => true
      case Cons(_, tl)                  => containsKey(tl, key)
      case Nil()                        => false
  }

  def getPair[K, V](l: List[(K, V)], key: K): Option[(K, V)] = {
    require(noDuplicateKeys(l))
    l match
      case Cons(hd, tl) if hd._1 == key => Some(hd)
      case Cons(_, tl)                  => getPair(tl, key)
      case Nil()                        => None()
  } ensuring (res => res.isEmpty && !containsKey(l, key) || res.isDefined && res.get._1 == key)

  def removePairForKey[K, V](l: List[(K, V)], key: K): List[(K, V)] = {
    require(noDuplicateKeys(l))
    l match
      case Cons(hd, tl) if hd._1 == key => tl
      case Cons(hd, tl)                 => Cons(hd, removePairForKey(tl, key))
      case Nil()                        => Nil()
  } ensuring (res => !containsKey(res, key))

  // ----------------- Lemmas ------------------------------------------------------------------------
  @opaque
  @inlineOnce
  def lemmaContainsEquivalentToMapContains[K, V](lm: ListLongMap[List[(K, V)]], key: K, hashF: Hashable[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    assert(hashF.equalMeansSameHash(key, key))
    val map = extractMap(lm.toList)
    if(extractMap(lm.toList).contains(key)){
      assert(lm.contains(hashF.hash(key)))
      assert(getPair(lm.apply(hashF.hash(key)), key).isDefined)
    } else{
      if(lm.contains(hashF.hash(key))){
        assert(getPair(lm.apply(hashF.hash(key)), key).isEmpty)
      } else {
        assert(lm.contains(hashF.hash(key)) == false)
      }
    }
  } ensuring (_ => lm.contains(hashF.hash(key)) && getPair(lm.apply(hashF.hash(key)), key).isDefined == extractMap(lm.toList).contains(key))

  @opaque
  @inlineOnce
  def lemmaInGenericMapThenInLongMap[K, V](lm: ListLongMap[List[(K, V)]], key: K, hashF: Hashable[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(extractMap(lm.toList).contains(key))

    val map = extractMap(lm.toList)
    assert(lm.contains(hashF.hash(key))) // TODO
     ghostExpr({
      val hash = hashF.hash(key)
          if (!lm.toList.contains((hash, lm.apply(hash)))) {
            TupleListOps.lemmaGetValueByKeyIsDefinedImpliesContainsKey(lm.toList, hash)
            TupleListOps.lemmaContainsKeyImpliesGetValueByKeyDefined(lm.toList, hash)
            TupleListOps.lemmaGetValueByKeyImpliesContainsTuple(lm.toList, hash, lm.apply(hash))
            check(false)
          }
          ListSpecs.forallContained(lm.toList, (k, v) => noDuplicateKeys(v), (hash, lm.apply(hash)))

      })
    ListSpecs.forallContained(lm.toList, (k, v) => noDuplicateKeys(v), (hashF.hash(key), lm.apply(hashF.hash(key))))
    assert(getPair(lm.apply(hashF.hash(key)), key).isDefined) // TODO

  } ensuring (_ => (lm.contains(hashF.hash(key)) && getPair(lm.apply(hashF.hash(key)), key).isDefined))
}
