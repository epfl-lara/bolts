/** Author: Samuel Chassot
  */
package ch.epfl.chassot

import stainless.annotation._
import stainless.collection.{ListMap => ListMapStainless, ListMapLemmas => ListMapLemmasStainless, _}
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
  def getEmptyHashMap[K, V](defaultValue: K => V, hashF: Hashable[K], ordering: Ordering[K]): HashMap[K, V] = {
    val initialSize = 16
    HashMap(Cell(MutableLongMap.getEmptyLongMap[List[(K, V)]]((l: Long) => Nil[(K, V)](), initialSize)), hashF, 0, defaultValue, ordering)
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
      val defaultValue: K => V,
      val ordering: Ordering[K]
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
        if (extractMap(underlying.v.map.toList, ordering).contains(key)) {
          lemmaInGenericMapThenInLongMap(underlying.v.map, key, hashF, ordering)
        } else {
          if (((underlying.v.map.contains(hashF.hash(key)) && getPair(underlying.v.map.apply(hashF.hash(key)), key).isDefined))) {
            lemmaInLongMapThenInGenericMap(underlying.v.map, key, hashF, ordering)
            check(false)
          }
        }
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

        ghostExpr(lemmaGetPairGetSameValueAsMap(underlying.v.map, key, getPair(underlying.v.apply(hash), key).get._2, hashF, ordering))
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
      @ghost val oldMap = map
      @ghost val oldLongListMap = underlying.v.map

      val contained = contains(key)
      val res = if (contained) {
        val hash = hashF.hash(key)
        val currentBucket = underlying.v.apply(hash)
        // currentBucket contains the key and it is defined
        val newBucket = Cons((key, v), removePairForKey(currentBucket, key))
        val res = underlying.v.update(hash, newBucket)

        ghostExpr({
          if (res) {
            lemmaInLongMapAllKeySameHashThenForTuple(oldLongListMap.toList, hash, currentBucket, hashF)
            lemmaRemovePairForKeyPreservesHash(currentBucket, key, hash, hashF)
            lemmaRemovePairForKeyPreservesNoDuplicateKeys(currentBucket, key)
            check(noDuplicateKeys(removePairForKey(currentBucket, key)))
            check(!containsKey(removePairForKey(currentBucket, key), key))
            check(noDuplicateKeys(newBucket))
            lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash(oldLongListMap, hash, newBucket, hashF, ordering)
            lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap(oldLongListMap, hash, newBucket, key, v, hashF, ordering)
            check(underlying.v.map.toList.forall((k, v) => noDuplicateKeys(v)))
            check(allKeysSameHashInMap(underlying.v.map, hashF)) // TODO
            check(map == oldMap + (key, v))
          } else {
            check(valid)
            check(map == oldMap)
          }
        })
        if (res && !contained) then _size += 1
        res

      } else {
        val hash = hashF.hash(key)
        val currentBucket = if underlying.v.contains(hash) then underlying.v.apply(hash) else Nil[(K, V)]()
        // Either currentBucket is empty, or it does not contain the key
        val newBucket = Cons((key, v), currentBucket)
        val res = underlying.v.update(hash, newBucket)

        ghostExpr({
          if (res) {
            if (!currentBucket.isEmpty) {
              lemmaInLongMapAllKeySameHashThenForTuple(oldLongListMap.toList, hash, currentBucket, hashF)
              lemmaRemovePairForKeyPreservesHash(currentBucket, key, hash, hashF)
            }
            lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash(oldLongListMap, hash, newBucket, hashF, ordering)
            lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap(oldLongListMap, hash, newBucket, key, v, hashF, ordering)
            check(underlying.v.map.toList.forall((k, v) => noDuplicateKeys(v)))
            check(allKeysSameHashInMap(underlying.v.map, hashF)) // TODO
            check(map == oldMap + (key, v))
          } else {
            check(valid)
            check(map == oldMap)
          }
        })

        if (res && !contained) then _size += 1
        res
      }
      res

    } ensuring (res => valid && (if (res) map.contains(key) && (map == old(this).map + (key, v)) else map == old(this).map))

    def remove(key: K): Boolean = {
      require(valid)
      val contained = contains(key)
      if (!contained) {
        ghostExpr({
          lemmaRemoveNotContainedDoesNotChange(underlying.v.map, key, hashF, ordering)
        })
        true
      } else {
        val hash = hashF.hash(key)
        val currentBucket = underlying.v.apply(hash)

        ghostExpr(ListSpecs.forallContained(underlying.v.map.toList, (k, v) => noDuplicateKeys(v), (hash, underlying.v.apply(hash))))

        @ghost val oldMap = map
        @ghost val oldLongListMap = underlying.v.map

        val newBucket = removePairForKey(currentBucket, key)
        val res = underlying.v.update(hash, newBucket)
        if (res && contained) then _size -= 1

        ghostExpr({
          lemmaRemovePairForKeyPreservesNoDuplicateKeys(currentBucket, key)
          if (res) {
            lemmaInLongMapAllKeySameHashThenForTuple(oldLongListMap.toList, hash, currentBucket, hashF)
            lemmaRemovePairForKeyPreservesHash(currentBucket, key, hash, hashF)
            lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash(oldLongListMap, hash, newBucket, hashF, ordering)
            check(underlying.v.map.toList.forall((k, v) => noDuplicateKeys(v)))
            check(allKeysSameHashInMap(underlying.v.map, hashF))
            check(valid)
            check(oldMap.contains(key))
            lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap(oldLongListMap, hash, newBucket, key, hashF, ordering)
            check(map == oldMap - key)
          } else {
            check(valid)
            check(map == oldMap)
          }
        })
        res
      }

    } ensuring (res => valid && (if (res) map == old(this).map - key else map == old(this).map))

    @ghost
    def valid: Boolean = underlying.v.valid &&
      underlying.v.map.toList.forall((k, v) => noDuplicateKeys(v)) &&
      allKeysSameHashInMap(underlying.v.map, hashF)

    @pure
    @ghost
    private def map: ListMap[K, V] = {
      require(valid)
      extractMap(underlying.v.map.toList, ordering)
    }

  }
  @ghost
  def extractMap[K, V](l: List[(Long, List[(K, V)])], ordering: Ordering[K]): ListMap[K, V] = {
    require(l.forall((k, v) => noDuplicateKeys(v)))
    decreases(l)
    l match {
      case Cons((k, v), tl) => addToMapMapFromBucket(v, extractMap(tl, ordering))
      case Nil()            => ListMap.empty[K, V](ordering)
    }
  } ensuring (res => true)

  @ghost
  def addToMapMapFromBucket[K, V](l: List[(K, V)], acc: ListMap[K, V]): ListMap[K, V] = {
    require(noDuplicateKeys(l))
    decreases(l)
    l match {
      case Nil() => {
        ListMapLemmas.lemmaContainsAllItsOwnKeys(acc)
        check(acc.toList.forall(p => acc.contains(p._1)))
        acc
      }
      case Cons((k, v), tl) => {
        val newAcc = acc + (k, v)
        val res = addToMapMapFromBucket(tl, acc + (k, v))
        ListMapLemmas.lemmaContainsAllItsOwnKeys(acc)
        check(newAcc.toList.forall(p => res.contains(p._1)))
        check(tl.forall(p => res.contains(p._1)))
        check(l == Cons((k, v), tl))
        ListSpecs.forallContained(newAcc.toList, (k, v) => res.contains(k), (k, v))
        check(newAcc.contains(k))
        check(res.contains(k))
        check(l.forall(p => res.contains(p._1)))
        check(newAcc.toList.forall(p => res.contains(p._1)))
        check(newAcc == acc + (k, v))
        ListMapLemmas.addForallContainsKeyThenBeforeAdding(acc, res, k, v)

        check(acc.toList.forall(p => res.contains(p._1)))
        check(l.forall(p => res.contains(p._1)) && acc.toList.forall(p => res.contains(p._1)))
        res
      }
    }
  } ensuring (res => l.forall(p => res.contains(p._1)) && acc.toList.forall(p => res.contains(p._1)))

  @ghost
  def noDuplicateKeys[K, V](l: List[(K, V)]): Boolean = {
    l match {
      case Cons(hd, tl) => !containsKey(tl, hd._1) && noDuplicateKeys(tl)
      case Nil()        => true
    }
  }

  @pure
  @ghost
  def allKeysSameHashInMap[K, V](lm: ListLongMap[List[(K, V)]], hashF: Hashable[K]): Boolean = {
    lm.toList.forall((k, v) => allKeysSameHash(v, k, hashF))
  }

  @ghost
  def allKeysSameHash[K, V](l: List[(K, V)], h: Long, hashF: Hashable[K]): Boolean = {
    l.forall(p => hashF.hash(p._1) == h)
  }
  @ghost
  def containsKey[K, V](l: List[(K, V)], key: K): Boolean = {
    l match
      case Cons(hd, tl) if hd._1 == key => true
      case Cons(_, tl)                  => containsKey(tl, key)
      case Nil()                        => false
  }
  @ghost
  def containsKeyBiggerList[K, V](l: List[(Long, List[(K, V)])], key: K): Boolean = {
    l match
      case Cons(h, t) if containsKey(h._2, key) => true
      case Cons(h, t)                           => containsKeyBiggerList(t, key)
      case Nil()                                => false
  }

  def getPair[K, V](l: List[(K, V)], key: K): Option[(K, V)] = {
    require(noDuplicateKeys(l))
    l match
      case Cons(hd, tl) if hd._1 == key => Some(hd)
      case Cons(_, tl)                  => getPair(tl, key)
      case Nil()                        => None()
  } ensuring (res => res.isEmpty && !containsKey(l, key) || res.isDefined && res.get._1 == key && l.contains(res.get))

  def removePairForKey[K, V](l: List[(K, V)], key: K): List[(K, V)] = {
    require(noDuplicateKeys(l))
    l match
      case Cons(hd, tl) if hd._1 == key => tl
      case Cons(hd, tl)                 => Cons(hd, removePairForKey(tl, key))
      case Nil()                        => Nil()
  } ensuring (res => !containsKey(res, key))

  @ghost
  def getValue[K, V](l: List[(Long, List[(K, V)])], k: K): V = {
    require(containsKeyBiggerList(l, k))
    require(l.forall((k, v) => noDuplicateKeys(v)))
    l match {
      case Cons(hd, tl) if containsKey(hd._2, k) => getPair(hd._2, k).get._2
      case Cons(hd, tl)                          => getValue(tl, k)
    }
  }

  // ----------------- Lemmas ------------------------------------------------------------------------

  @opaque
  @inlineOnce
  @ghost
  def lemmaInGenericMapThenInLongMap[K, V](lm: ListLongMap[List[(K, V)]], key: K, hashF: Hashable[K], ordering: Ordering[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(extractMap(lm.toList, ordering).contains(key))

    val map = extractMap(lm.toList, ordering)
    lemmaInGenMapThenLongMapContainsHash(lm, key, hashF, ordering)
    assert(lm.contains(hashF.hash(key)))
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

    lemmaInGenMapThenGetPairDefined(lm, key, hashF, ordering)
    assert(getPair(lm.apply(hashF.hash(key)), key).isDefined)

  } ensuring (_ => (lm.contains(hashF.hash(key)) && getPair(lm.apply(hashF.hash(key)), key).isDefined))

  @opaque
  @inlineOnce
  @ghost
  def lemmaInLongMapThenInGenericMap[K, V](lm: ListLongMap[List[(K, V)]], key: K, hashF: Hashable[K], ordering: Ordering[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(lm.contains(hashF.hash(key)))
    require({
      ListLongMapLemmas.lemmaGetValueImpliesTupleContained(lm, hashF.hash(key), lm.apply(hashF.hash(key)))
      ListSpecs.forallContained(lm.toList, (k, v) => noDuplicateKeys(v), (hashF.hash(key), lm.apply(hashF.hash(key))))
      getPair(lm.apply(hashF.hash(key)), key).isDefined
    })

    lemmaInLongMapThenContainsKeyBiggerList(lm, key, hashF, ordering)
    lemmaListContainsThenExtractedMapContains(lm, key, hashF, ordering)

  } ensuring (_ => extractMap(lm.toList, ordering).contains(key))

  @opaque
  @inlineOnce
  @ghost
  def lemmaGetPairGetSameValueAsMap[K, V](lm: ListLongMap[List[(K, V)]], key: K, v: V, hashF: Hashable[K], ordering: Ordering[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(extractMap(lm.toList, ordering).contains(key))
    require({
      lemmaInGenMapThenLongMapContainsHash(lm, key, hashF, ordering)
      ListLongMapLemmas.lemmaGetValueImpliesTupleContained(lm, hashF.hash(key), lm.apply(hashF.hash(key)))
      ListSpecs.forallContained(lm.toList, (k, v) => noDuplicateKeys(v), (hashF.hash(key), lm.apply(hashF.hash(key))))
      lemmaInGenMapThenGetPairDefined(lm, key, hashF, ordering)
      getPair(lm.apply(hashF.hash(key)), key).get._2 == v
    })

    lemmaInLongMapThenContainsKeyBiggerList(lm, key, hashF, ordering)
    check(containsKeyBiggerList(lm.toList, key))

    lemmaGetValueEquivToGetPair(lm, key, v, hashF, ordering)
    lemmaExtractMapPreservesMapping(lm, key, v, hashF, ordering)

  } ensuring (_ => {
    lemmaInGenMapThenLongMapContainsHash(lm, key, hashF, ordering)
    ListLongMapLemmas.lemmaGetValueImpliesTupleContained(lm, hashF.hash(key), lm.apply(hashF.hash(key)))
    ListSpecs.forallContained(lm.toList, (k, v) => noDuplicateKeys(v), (hashF.hash(key), lm.apply(hashF.hash(key))))
    lemmaInGenMapThenGetPairDefined(lm, key, hashF, ordering)
    getPair(lm.apply(hashF.hash(key)), key).get._2 == extractMap(lm.toList, ordering).get(key).get
  })

  @opaque
  @inlineOnce
  @ghost
  def lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap[K, V](lm: ListLongMap[List[(K, V)]], hash: Long, newBucket: List[(K, V)], key: K, hashF: Hashable[K], ordering: Ordering[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(extractMap(lm.toList, ordering).contains(key))
    require(hashF.hash(key) == hash)
    require(allKeysSameHash(newBucket, hash, hashF))
    require({
      lemmaInGenMapThenLongMapContainsHash(lm, key, hashF, ordering)
      TupleListOps.lemmaGetValueByKeyImpliesContainsTuple(lm.toList, hash, lm.apply(hash))
      ListSpecs.forallContained(lm.toList, (k, v) => noDuplicateKeys(v), (hash, lm.apply(hash)))
      newBucket == removePairForKey(lm.apply(hash), key)
    })
    require(noDuplicateKeys(newBucket))
    decreases(lm.toList.size)

    lm.toList match {
      case Nil() => check(false)
      case Cons(hd, tl) if hd._1 == hash => {
        if (!containsKey(hd._2, key)) {
          lemmaNotInItsHashBucketThenNotInMap(lm, key, hashF, ordering)
          check(false)
        }
        check(containsKey(hd._2, key))
        check(containsKeyBiggerList(List((hd._1, hd._2)), key))
        lemmaListContainsThenExtractedMapContains(ListLongMap(List((hd._1, hd._2))), key, hashF, ordering)
        check(extractMap(List((hd._1, hd._2)), ordering).contains(key))
        lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash(hash, hd._2, newBucket, key, hashF, ordering)
        check(tl == (lm + (hash, newBucket)).toList.tail)
        check(extractMap(List((hash, newBucket)), ordering) == extractMap(List((hash, hd._2)), ordering) - key)
        check(lm + (hash, newBucket) == lm.tail + (hash, newBucket))
        check(extractMap((lm.tail).toList, ordering) == extractMap(tl, ordering))

        if (extractMap((lm.tail).toList, ordering).contains(key)) {
          lemmaInGenMapThenLongMapContainsHash(lm.tail, key, hashF, ordering)
          check(false)
        }
        check(!extractMap((lm.tail).toList, ordering).contains(key))
        val oldBucket = hd._2
        lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead(lm, hash, oldBucket, newBucket, key, hashF, ordering)

        check((lm + (hash, newBucket)).toList == Cons((hash, newBucket), tl))
        check(extractMap((lm + (hash, newBucket)).toList, ordering) == addToMapMapFromBucket(newBucket, extractMap(tl, ordering)))
        check(extractMap((lm + (hash, oldBucket)).toList, ordering) == addToMapMapFromBucket(oldBucket, extractMap(tl, ordering)))
        check(extractMap((lm + (hash, oldBucket)).toList, ordering) == extractMap(lm.toList, ordering))
        check(extractMap((lm + (hash, newBucket)).toList, ordering) == extractMap(lm.toList, ordering) - key)
      }
      case Cons(hd, tl) => {
        val oldBucket = lm.apply(hash)
        check(lm.tail.contains(hash))
        check(lm.tail.apply(hash) == oldBucket)
        check(tl.contains((hash, oldBucket)))
        if (!containsKey(oldBucket, key)) {
          lemmaNotInItsHashBucketThenNotInMap(lm, key, hashF, ordering)
          check(false)
        }
        check(containsKey(oldBucket, key))
        lemmaInLongMapThenContainsKeyBiggerList(lm.tail, key, hashF, ordering)
        check(containsKeyBiggerList(tl, key))
        lemmaListContainsThenExtractedMapContains(lm.tail, key, hashF, ordering)
        check(extractMap(tl, ordering).contains(key))
        lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap(lm.tail, hash, newBucket, key, hashF, ordering)
        check(extractMap((lm.tail + (hash, newBucket)).toList, ordering) == extractMap(lm.tail.toList, ordering) - key)

        check(extractMap((lm.tail + lm.head).toList, ordering) == extractMap(lm.toList, ordering))
        check(extractMap(lm.toList, ordering) == extractMap((lm.tail + lm.head).toList, ordering))
        check(lm.head._1 < hash)
        check(lm.tail + (hash, newBucket) + lm.head == lm + (hash, newBucket))
        check((lm.tail + (hash, newBucket) + lm.head).head == lm.head)

        check((extractMap((lm.tail + (hash, newBucket) + lm.head).toList, ordering) == addToMapMapFromBucket(lm.head._2, extractMap((lm.tail + (hash, newBucket)).toList, ordering))))
        check((extractMap((lm.tail + (hash, newBucket) + lm.head).toList, ordering) == addToMapMapFromBucket(lm.head._2, (extractMap(lm.tail.toList, ordering) - key))))

        ListSpecs.forallContained(lm.toList, (k, v) => noDuplicateKeys(v), (hd._1, hd._2))
        check(noDuplicateKeys(lm.head._2))

        if (containsKey(lm.head._2, key)) {
          check(hash != lm.head._1)
          val pair = getPair(lm.head._2, key).get
          val value = pair._2
          ListSpecs.forallContained(lm.toList, (k, v) => allKeysSameHash(v, k, hashF), (hd._1, hd._2))
          ListSpecs.forallContained(hd._2, p => hashF.hash(p._1) == hd._1, (key, value))
          check(false)
        }
        check(!containsKey(lm.head._2, key))
        lemmaAddToMapFromBucketMinusKeyIsCommutative(extractMap(lm.tail.toList, ordering), key, lm.head._2)
        check(addToMapMapFromBucket(lm.head._2, (extractMap(lm.tail.toList, ordering) - key)) == addToMapMapFromBucket(lm.head._2, (extractMap(lm.tail.toList, ordering))) - key) // TODO
        check(addToMapMapFromBucket(lm.head._2, (extractMap(lm.tail.toList, ordering) - key)) == extractMap(lm.toList, ordering) - key)

        check(extractMap((lm.tail + (hash, newBucket) + lm.head).toList, ordering) == extractMap(lm.toList, ordering) - key)

        check(extractMap((lm.tail + (hash, newBucket) + lm.head).toList, ordering) == extractMap((lm.tail + lm.head).toList, ordering) - key)
        check(extractMap((lm + (hash, newBucket)).toList, ordering) == extractMap(lm.toList, ordering) - key)
      }
    }

  } ensuring (_ => {
    extractMap((lm + (hash, newBucket)).toList, ordering) == extractMap(lm.toList, ordering) - key
  })

  @opaque
  @inlineOnce
  @ghost
  def lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap[K, V](
      lm: ListLongMap[List[(K, V)]],
      hash: Long,
      newBucket: List[(K, V)],
      key: K,
      newValue: V,
      hashF: Hashable[K],
      ordering: Ordering[K]
  ): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(hashF.hash(key) == hash)
    require(allKeysSameHash(newBucket, hash, hashF))
    require(!extractMap(lm.toList, ordering).contains(key))
    require(lm.contains(hash) && newBucket == Cons((key, newValue), lm.apply(hash)) || !lm.contains(hash) && newBucket == Cons((key, newValue), Nil()))
    require(noDuplicateKeys(newBucket))

    decreases(lm.toList.size)

    check(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    ListLongMapLemmas.addValidProp(lm, (k, v) => noDuplicateKeys(v), hash, newBucket)
    check((lm + (hash, newBucket)).toList.forall((k, v) => noDuplicateKeys(v)))
    lm.toList match {
      case Cons(hd, tl) if hd._1 == hash =>
        assert(lm.contains(hash)) 
        check((lm + (hash, newBucket)).toList.head == (hash, newBucket)) 
        check((lm + (hash, newBucket)).toList.tail == tl) 
        check(extractMap((lm + (hash, newBucket)).toList, ordering) == addToMapMapFromBucket(newBucket, extractMap(tl, ordering))) 

        check(newBucket == Cons((key, newValue), lm.apply(hash)))
        val newAcc = extractMap(tl, ordering) + (key, newValue)
        check(addToMapMapFromBucket(newBucket, extractMap(tl, ordering)) == addToMapMapFromBucket(lm.apply(hash), extractMap(tl, ordering) + (key, newValue)))
        lemmaAddToMapFromBucketPlusKeyValueIsCommutative(extractMap(tl, ordering), key, newValue, lm.apply(hash))
        check(addToMapMapFromBucket(newBucket, extractMap(tl, ordering)) == addToMapMapFromBucket(lm.apply(hash), extractMap(tl, ordering)) + (key, newValue))
        check(extractMap((lm + (hash, newBucket)).toList, ordering) == extractMap(lm.toList, ordering) + (key, newValue))
      case Cons(hd, tl) if hd._1 != hash =>
        check(!extractMap(lm.toList, ordering).contains(key))
        if (extractMap(lm.toList.tail, ordering).contains(key)) {
          lemmaExtractTailMapContainsThenExtractMapDoes(lm, key, hashF, ordering)
          check(false)
        }
        lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap(lm.tail, hash, newBucket, key, newValue, hashF, ordering)
        check(extractMap((lm.tail + (hash, newBucket)).toList, ordering) == extractMap(lm.tail.toList, ordering) + (key, newValue))
        check(lm.head != (hash, newBucket))
        check(extractMap(lm.toList, ordering) == addToMapMapFromBucket(hd._2, extractMap(lm.tail.toList, ordering)))

        lemmaNotSameHashThenCannotContainKey(lm, key, hd._1, hashF, ordering)
        check(!containsKey(hd._2, key))
        lemmaAddToMapFromBucketPlusKeyValueIsCommutative(extractMap(lm.tail.toList, ordering), key, newValue, hd._2)

      case Nil() => () 
    }

  } ensuring (_ => {
    extractMap((lm + (hash, newBucket)).toList, ordering) == extractMap(lm.toList, ordering) + (key, newValue)
  })

  @opaque
  @inlineOnce
  @ghost
  def lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap[K, V](
      lm: ListLongMap[List[(K, V)]],
      hash: Long,
      newBucket: List[(K, V)],
      key: K,
      newValue: V,
      hashF: Hashable[K],
      ordering: Ordering[K]
  ): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(hashF.hash(key) == hash)
    require(allKeysSameHash(newBucket, hash, hashF))
    require(extractMap(lm.toList, ordering).contains(key))
    require(lm.contains(hash))
    require({
      TupleListOps.lemmaGetValueByKeyImpliesContainsTuple(lm.toList, hash, lm.apply(hash))
      ListSpecs.forallContained(lm.toList, (k, v) => noDuplicateKeys(v), (hash, lm.apply(hash)))
      newBucket == Cons((key, newValue), removePairForKey(lm.apply(hash), key))
    })
    require(noDuplicateKeys(newBucket))

    decreases(lm.toList.size)

    check(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    ListLongMapLemmas.addValidProp(lm, (k, v) => noDuplicateKeys(v), hash, newBucket)
    check((lm + (hash, newBucket)).toList.forall((k, v) => noDuplicateKeys(v)))

    lm.toList match {
      case Cons(hd, tl) if hd._1 == hash => 
        check(lm + (hash, newBucket) == ListLongMap(Cons((hash, newBucket), tl)))
        check(extractMap((lm + (hash, newBucket)).toList, ordering) == addToMapMapFromBucket(newBucket, extractMap(tl, ordering)))
        check(extractMap((lm + (hash, newBucket)).toList, ordering) == addToMapMapFromBucket(Cons((key, newValue), removePairForKey(lm.apply(hash), key)), extractMap(tl, ordering)))
        check(addToMapMapFromBucket(Cons((key, newValue), removePairForKey(lm.apply(hash), key)), extractMap(tl, ordering)) ==  addToMapMapFromBucket(removePairForKey(lm.apply(hash), key), extractMap(tl, ordering) + (key, newValue)))
        lemmaAddToMapFromBucketPlusKeyValueIsCommutative(extractMap(tl, ordering), key, newValue, removePairForKey(lm.apply(hash), key))
        check(addToMapMapFromBucket(Cons((key, newValue), removePairForKey(lm.apply(hash), key)), extractMap(tl, ordering)) ==  addToMapMapFromBucket(removePairForKey(lm.apply(hash), key), extractMap(tl, ordering)) + (key, newValue))

        val intermediateLm = lm + (hash, newBucket.tail)
        check(newBucket.tail == removePairForKey(lm.apply(hash), key))
        check( addToMapMapFromBucket(removePairForKey(lm.apply(hash), key), extractMap(tl, ordering)) == extractMap(intermediateLm.toList, ordering))
        lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap(lm, hash, newBucket.tail, key, hashF, ordering)
        check(extractMap(intermediateLm.toList, ordering) == extractMap(lm.toList, ordering) - key)

        check(intermediateLm.apply(hash) == newBucket.tail)
        lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap(intermediateLm, hash, newBucket, key, newValue, hashF, ordering)
        check(extractMap((intermediateLm + (hash, newBucket)).toList, ordering) == extractMap(intermediateLm.toList, ordering) + (key, newValue))
        check(extractMap(intermediateLm.toList, ordering) == extractMap(lm.toList, ordering) - key)

        ListMapLemmas.removeThenAddForSameKeyIsSameAsAdd(extractMap(lm.toList, ordering), key, newValue)

        check(extractMap((lm + (hash, newBucket)).toList, ordering) == extractMap(lm.toList, ordering) + (key, newValue))
      case Cons(hd, tl) if hd._1 != hash => 
        lemmaNotSameHashThenCannotContainKey(lm, key, hd._1, hashF, ordering)

        check(!containsKey(hd._2, key))

        lemmaAddToMapContainsAndNotInListThenInAcc(hd._2, key, newValue, extractMap(tl, ordering))

        check(extractMap(lm.tail.toList, ordering).contains(key))
        lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap(lm.tail, hash, newBucket, key, newValue, hashF, ordering)
        check(extractMap((lm.tail + (hash, newBucket)).toList, ordering) == extractMap(lm.tail.toList, ordering) + (key, newValue))
        check(lm.head != (hash, newBucket))
        check(extractMap(lm.toList, ordering) == addToMapMapFromBucket(hd._2, extractMap(lm.tail.toList, ordering)))

        lemmaAddToMapFromBucketPlusKeyValueIsCommutative(extractMap(lm.tail.toList, ordering), key, newValue, hd._2)

        check(extractMap((lm + (hash, newBucket)).toList, ordering) == extractMap(lm.toList, ordering) + (key, newValue))
      case Nil() => ()
    }

  } ensuring (_ => {
    extractMap((lm + (hash, newBucket)).toList, ordering) == extractMap(lm.toList, ordering) + (key, newValue)
  })

  // -----------------------------------------------------

  @opaque
  @inlineOnce
  @ghost 
  def lemmaAddToMapContainsAndNotInListThenInAcc[K, V](l: List[(K, V)], key: K, value: V, acc: ListMap[K, V]): Unit = {
    require(noDuplicateKeys(l))
    require(!containsKey(l, key))
    require(addToMapMapFromBucket(l, acc).contains(key))

    decreases(l.size)
    l match {
      case Cons((k, v), t) => 
          val newAcc = acc + (k, v)
          assert(k != key)
          lemmaAddToMapContainsAndNotInListThenInAcc(t, key, value, newAcc)
          check(newAcc.contains(k))
          if(!acc.contains(key)){
            ListMapLemmas.addStillNotContains(acc, k, v, key)
            check(false)
          }

      case Nil() => ()
    }

  } ensuring (_ => acc.contains(key))

  @opaque
  @inlineOnce
  @ghost
  def lemmaExtractTailMapContainsThenExtractMapDoes[K, V](lm: ListLongMap[List[(K, V)]], key: K, hashF: Hashable[K], ordering: Ordering[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(!lm.toList.isEmpty)
    require(extractMap(lm.tail.toList, ordering).contains(key))
    decreases(lm.toList.size)
    val hash = hashF.hash(key)

    lm.toList match {
      case Cons((k, v), tl) =>
        check(extractMap(lm.toList, ordering) == addToMapMapFromBucket(v, extractMap(lm.tail.toList, ordering)))
        lemmaAddToMapMaintainsContains(lm.tail, key, v, hashF, ordering)

      case Nil() => ()
    }

  } ensuring (_ => extractMap(lm.toList, ordering).contains(key))

  @opaque
  @inlineOnce
  @ghost
  def lemmaAddToMapMaintainsContains[K, V](lm: ListLongMap[List[(K, V)]], key: K, l: List[(K, V)], hashF: Hashable[K], ordering: Ordering[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(noDuplicateKeys(l))
    require(extractMap(lm.toList, ordering).contains(key))

    decreases(l.size)
    val hash = hashF.hash(key)

    l match {
      case Cons(hd, tl) =>
        lemmaAddToMapMaintainsContains(lm, key, tl, hashF, ordering)
        check(addToMapMapFromBucket(tl, extractMap(lm.toList, ordering)).contains(key))
        lemmaAddToMapFromBucketPlusKeyValueIsCommutative(extractMap(lm.toList, ordering), hd._1, hd._2, tl)

        check(addToMapMapFromBucket(tl, extractMap(lm.toList, ordering) + hd) == addToMapMapFromBucket(tl, extractMap(lm.toList, ordering)) + hd)
        ListMapLemmas.addStillContains(addToMapMapFromBucket(tl, extractMap(lm.toList, ordering)), hd._1, hd._2, key)
        check(addToMapMapFromBucket(tl, extractMap(lm.toList, ordering) + hd).contains(key))

      case Nil() => ()
    }

  } ensuring (_ => addToMapMapFromBucket(l, extractMap(lm.toList, ordering)).contains(key))

  @opaque
  @inlineOnce
  @ghost
  def lemmaAddToMapFromBucketMinusKeyIsCommutative[K, V](lhm: ListMap[K, V], key: K, l: List[(K, V)]): Unit = {
    require(!containsKey(l, key))
    require(noDuplicateKeys(l))
    decreases(l)

    l match {
      case Cons((k, v), t) =>
        val newAcc = lhm + (k, v)
        ListMapLemmas.addRemoveCommutativeForDiffKeys(lhm, k, v, key)
        lemmaAddToMapFromBucketMinusKeyIsCommutative(newAcc, key, t)
      case Nil() =>
        check(addToMapMapFromBucket(l, (lhm - key)) == addToMapMapFromBucket(l, lhm) - key)
    }

  } ensuring (_ => addToMapMapFromBucket(l, (lhm - key)) == addToMapMapFromBucket(l, lhm) - key)

  @opaque
  @inlineOnce
  @ghost
  def lemmaAddToMapFromBucketPlusKeyValueIsCommutative[K, V](lhm: ListMap[K, V], key: K, value: V, l: List[(K, V)]): Unit = {
    require(!containsKey(l, key))
    require(noDuplicateKeys(l))
    decreases(l)

    l match {
      case Cons((k, v), t) =>
        val newAcc = lhm + (k, v)
        ListMapLemmas.addCommutativeForDiffKeys(lhm, k, v, key, value)
        lemmaAddToMapFromBucketPlusKeyValueIsCommutative(newAcc, key, value, t)
      case Nil() =>
        check(addToMapMapFromBucket(l, (lhm + (key, value))) == addToMapMapFromBucket(l, lhm) + (key, value))
    }

  } ensuring (_ => addToMapMapFromBucket(l, (lhm + (key, value))) == addToMapMapFromBucket(l, lhm) + (key, value))

  @opaque
  @inlineOnce
  @ghost
  def lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead[K, V](
      lm: ListLongMap[List[(K, V)]],
      hash: Long,
      oldBucket: List[(K, V)],
      newBucket: List[(K, V)],
      key: K,
      hashF: Hashable[K],
      ordering: Ordering[K]
  ): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(noDuplicateKeys(oldBucket))
    require(noDuplicateKeys(newBucket))
    require(removePairForKey(oldBucket, key) == newBucket)
    require(allKeysSameHash(oldBucket, hash, hashF))
    require(extractMap(lm.toList, ordering).contains(key))
    require(hashF.hash(key) == hash)
    require(allKeysSameHash(newBucket, hash, hashF))
    require(allKeysSameHashInMap(lm, hashF))
    require(noDuplicateKeys(newBucket))
    require(lm.toList.head == (hash, oldBucket))
    decreases(oldBucket.size)

    val l = lm.toList
    l match
      case Cons(h, t) =>
        check(t == lm.tail.toList)
        check(extractMap(l, ordering) == addToMapMapFromBucket(h._2, extractMap(t, ordering)))
        // check(extractMap(t, ordering) == ListMap.empty[K, V](ordering))
        oldBucket match {
          case Cons(hd, tl) if hd._1 == key =>
            assert(oldBucket.tail == newBucket)
            check(extractMap(Cons((hash, oldBucket.tail), t), ordering) == extractMap(Cons((hash, newBucket), t), ordering))
            check(addToMapMapFromBucket(oldBucket.tail, extractMap(t, ordering)) == addToMapMapFromBucket(newBucket, extractMap(t, ordering)))

            lemmaAddToMapFromBucketTlPlusHeadIsSameAsList(oldBucket.head, oldBucket.tail, extractMap(t, ordering))
            check(addToMapMapFromBucket(oldBucket.tail, extractMap(t, ordering)) + hd == addToMapMapFromBucket(oldBucket, extractMap(t, ordering)))

            check(!containsKey(oldBucket.tail, key))
            val m = addToMapMapFromBucket(oldBucket.tail, extractMap(t, ordering))
            check(m == extractMap(Cons((hash, oldBucket.tail), t), ordering))
            lemmaNotInItsHashBucketThenNotInMap(ListLongMap(Cons((hash, oldBucket.tail), t)), key, hashF, ordering)
            check(!m.contains(key))
            ListMapLemmas.addThenRemoveForNewKeyIsSame(m, key, hd._2)
            check((m + hd) - key == m)
            check(extractMap(Cons((hash, oldBucket), t), ordering) - key == extractMap(Cons((hash, oldBucket.tail), t), ordering))
            check(extractMap(Cons((hash, newBucket), t), ordering) == extractMap(Cons((hash, oldBucket), t), ordering) - key)
          case Cons(hd, tl) if hd._1 != key =>
            lemmaInGenMapThenGetPairDefined(lm, key, hashF, ordering)
            lemmaGetPairDefinedThenContainsKey(oldBucket, key, hashF, ordering)
            check(containsKey(oldBucket, key))
            check(containsKey(tl, key))
            check(removePairForKey(oldBucket, key) == newBucket)
            check(removePairForKey(oldBucket.tail, key) == newBucket.tail)
            check(removePairForKey(tl, key) == newBucket.tail)

            lemmaListContainsThenExtractedMapContains(ListLongMap(Cons((hash, tl), t)), key, hashF, ordering)
            check(extractMap(Cons((hash, tl), t), ordering).contains(key))

            lemmaAddToMapFromBucketTlPlusHeadIsSameAsList(oldBucket.head, oldBucket.tail, extractMap(t, ordering))
            lemmaAddToMapFromBucketTlPlusHeadIsSameAsList(newBucket.head, newBucket.tail, extractMap(t, ordering))
            check(extractMap(Cons((hash, oldBucket), t), ordering) == extractMap(Cons((hash, oldBucket.tail), t), ordering) + hd)
            check(hd == newBucket.head)
            check(extractMap(Cons((hash, oldBucket), t), ordering) == extractMap(Cons((hash, oldBucket.tail), t), ordering) + newBucket.head)

            check(extractMap(Cons((hash, tl), t), ordering).contains(key))
            lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead(ListLongMap(Cons((hash, tl), t)), hash, tl, newBucket.tail, key, hashF, ordering)
            check(extractMap(Cons((hash, newBucket.tail), t), ordering) == extractMap(Cons((hash, tl), t), ordering) - key)
            ListMapLemmas.addRemoveCommutativeForDiffKeys(extractMap(Cons((hash, tl), t), ordering), hd._1, hd._2, key)
            check(extractMap(Cons((hash, newBucket), t), ordering) == extractMap(Cons((hash, oldBucket), t), ordering) - key)
          case Nil() =>
            lemmaNotInItsHashBucketThenNotInMap(lm, key, hashF, ordering)
            check(false)
        }

      case Nil() => check(false)

  } ensuring (_ => {
    extractMap(Cons((hash, newBucket), lm.toList.tail), ordering) == extractMap(Cons((hash, oldBucket), lm.toList.tail), ordering) - key
  })

  @opaque
  @inlineOnce
  @ghost
  def lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash[K, V](hash: Long, oldBucket: List[(K, V)], newBucket: List[(K, V)], key: K, hashF: Hashable[K], ordering: Ordering[K]): Unit = {
    require(noDuplicateKeys(oldBucket))
    require(noDuplicateKeys(newBucket))
    require(removePairForKey(oldBucket, key) == newBucket)
    require(allKeysSameHash(oldBucket, hash, hashF))
    require(extractMap(List((hash, oldBucket)), ordering).contains(key))
    require(hashF.hash(key) == hash)
    require(allKeysSameHash(newBucket, hash, hashF))
    require(noDuplicateKeys(newBucket))
    decreases(oldBucket.size)

    val l = List((hash, oldBucket))
    l match
      case Cons(h, t) =>
        check(t.isEmpty)
        check(extractMap(l, ordering) == addToMapMapFromBucket(h._2, extractMap(t, ordering)))
        check(extractMap(t, ordering) == ListMap.empty[K, V](ordering))
        oldBucket match {
          case Cons(hd, tl) if hd._1 == key =>
            assert(oldBucket.tail == newBucket)
            check(extractMap(List((hash, oldBucket.tail)), ordering) == extractMap(List((hash, newBucket)), ordering))
            check(addToMapMapFromBucket(oldBucket.tail, ListMap.empty[K, V](ordering)) == addToMapMapFromBucket(newBucket, ListMap.empty[K, V](ordering)))

            lemmaAddToMapFromBucketTlPlusHeadIsSameAsList(oldBucket.head, oldBucket.tail, ListMap.empty[K, V](ordering))
            check(addToMapMapFromBucket(oldBucket.tail, ListMap.empty[K, V](ordering)) + hd == addToMapMapFromBucket(oldBucket, ListMap.empty[K, V](ordering)))

            check(!containsKey(oldBucket.tail, key))
            val m = addToMapMapFromBucket(oldBucket.tail, ListMap.empty[K, V](ordering))
            check(m == extractMap(List((hash, oldBucket.tail)), ordering))
            lemmaNotInItsHashBucketThenNotInMap(ListLongMap(List((hash, oldBucket.tail))), key, hashF, ordering)
            check(!m.contains(key))
            ListMapLemmas.addThenRemoveForNewKeyIsSame(m, key, hd._2)
            check((m + hd) - key == m)
            check(extractMap(List((hash, oldBucket)), ordering) - key == extractMap(List((hash, newBucket)), ordering))

          case Cons(hd, tl) if hd._1 != key =>
            lemmaInGenMapThenGetPairDefined(ListLongMap(List((hash, oldBucket))), key, hashF, ordering)
            lemmaGetPairDefinedThenContainsKey(oldBucket, key, hashF, ordering)
            check(containsKey(oldBucket, key))
            check(containsKey(tl, key))
            check(removePairForKey(oldBucket, key) == newBucket)
            check(removePairForKey(oldBucket.tail, key) == newBucket.tail)
            check(removePairForKey(tl, key) == newBucket.tail)

            lemmaListContainsThenExtractedMapContains(ListLongMap(List((hash, tl))), key, hashF, ordering)
            check(extractMap(List((hash, tl)), ordering).contains(key))

            lemmaAddToMapFromBucketTlPlusHeadIsSameAsList(oldBucket.head, oldBucket.tail, ListMap.empty[K, V](ordering))
            lemmaAddToMapFromBucketTlPlusHeadIsSameAsList(newBucket.head, newBucket.tail, ListMap.empty[K, V](ordering))
            check(extractMap(List((hash, oldBucket)), ordering) == extractMap(List((hash, oldBucket.tail)), ordering) + hd)
            check(extractMap(List((hash, newBucket)), ordering) == extractMap(List((hash, newBucket.tail)), ordering) + newBucket.head)

            lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash(hash, tl, newBucket.tail, key, hashF, ordering)
            check(extractMap(List((hash, newBucket.tail)), ordering) == extractMap(List((hash, tl)), ordering) - key)
            ListMapLemmas.addRemoveCommutativeForDiffKeys(extractMap(List((hash, tl)), ordering), hd._1, hd._2, key)
            check(extractMap(List((hash, newBucket)), ordering) == extractMap(List((hash, oldBucket)), ordering) - key)
          case Nil() => check(false)
        }

      case Nil() => check(false)

  } ensuring (_ => {
    extractMap(List((hash, newBucket)), ordering) == extractMap(List((hash, oldBucket)), ordering) - key
  })

  @opaque
  @inlineOnce
  @ghost
  def lemmaInLongMapAllKeySameHashThenForTuple[K, V](lml: List[(Long, List[(K, V)])], hash: Long, bucket: List[(K, V)], hashF: Hashable[K]): Unit = {
    require(lml.forall((k, v) => allKeysSameHash(v, k, hashF)))
    require(lml.contains((hash, bucket)))
    decreases(lml.size)

    ListSpecs.forallContained(lml, (k, v) => allKeysSameHash(v, k, hashF), (hash, bucket))

  } ensuring (_ => allKeysSameHash(bucket, hash, hashF))

  @opaque
  @inlineOnce
  @ghost
  def lemmaRemovePairForKeyPreservesHash[K, V](@induct l: List[(K, V)], key: K, hash: Long, hashF: Hashable[K]): Unit = {
    require(noDuplicateKeys(l))
    require(allKeysSameHash(l, hash, hashF))

  } ensuring (_ => allKeysSameHash(removePairForKey(l, key), hash, hashF))

  @opaque
  @inlineOnce
  @ghost
  def lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash[K, V](lm: ListLongMap[List[(K, V)]], hash: Long, newBucket: List[(K, V)], hashF: Hashable[K], ordering: Ordering[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(noDuplicateKeys(newBucket))
    require(allKeysSameHash(newBucket, hash, hashF))
    decreases(lm.toList.size)
    lm.toList match
      case Cons(h, t) => {
        lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash(ListLongMap(t), hash, newBucket, hashF, ordering)
      }
      case Nil() => ()

  } ensuring (_ => {
    val newMap = old(lm) + (hash, newBucket)
    newMap.toList.forall((k, v) => noDuplicateKeys(v)) && allKeysSameHashInMap(newMap, hashF)
  })

  @opaque
  @inlineOnce
  @ghost
  def lemmaRemoveNotContainedDoesNotChange[K, V](lm: ListLongMap[List[(K, V)]], key: K, hashF: Hashable[K], ordering: Ordering[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(!extractMap(lm.toList, ordering).contains(key))

    ListMapLemmas.removeNotPresentStillSame(extractMap(lm.toList, ordering), key)

  } ensuring (_ => extractMap(lm.toList, ordering) == extractMap(lm.toList, ordering) - key)

  @opaque
  @inlineOnce
  @ghost
  def lemmaRemovePairForKeyPreservesNoDuplicateKeys[K, V](l: List[(K, V)], key: K): Unit = {
    require(noDuplicateKeys(l))
    decreases(l)

    l match {
      case Cons(hd, tl) if hd._1 == key => ()
      case Cons(hd, tl) => {
        lemmaRemovePairForKeyPreservesNoDuplicateKeys(tl, key)
        lemmaRemovePairForKeyPreservesNotContainsKey(tl, key, hd._1)
        lemmaNotContainsKeyThenCannotContainPair(removePairForKey(tl, key), hd._1, hd._2)
      }
      case Nil() => ()
    }

  } ensuring (_ => noDuplicateKeys(removePairForKey(l, key)))

  @opaque
  @inlineOnce
  @ghost
  def lemmaRemovePairForKeyPreservesNotContainsKey[K, V](@induct l: List[(K, V)], key: K, otherK: K): Unit = {
    require(noDuplicateKeys(l))
    require(otherK != key)
    require(!containsKey(l, otherK))

  } ensuring (_ => !containsKey(removePairForKey(l, key), otherK))

  @opaque
  @inlineOnce
  @ghost
  def lemmaInGenMapThenGetPairDefined[K, V](lm: ListLongMap[List[(K, V)]], key: K, hashF: Hashable[K], ordering: Ordering[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(extractMap(lm.toList, ordering).contains(key))

    decreases(lm.toList.size)
    lemmaInGenMapThenLongMapContainsHash(lm, key, hashF, ordering)
    ListLongMapLemmas.lemmaGetValueImpliesTupleContained(lm, hashF.hash(key), lm.apply(hashF.hash(key)))
    ListSpecs.forallContained(lm.toList, (k, v) => noDuplicateKeys(v), (hashF.hash(key), lm.apply(hashF.hash(key))))

    if (getPair(lm.apply(hashF.hash(key)), key).isEmpty) {
      val l = lm.apply(hashF.hash(key))
      lemmaNotInItsHashBucketThenNotInMap(lm, key, hashF, ordering)
      check(false)
    }
    check(getPair(lm.apply(hashF.hash(key)), key).isDefined)

  } ensuring (_ => {
    lemmaInGenMapThenLongMapContainsHash(lm, key, hashF, ordering)
    ListLongMapLemmas.lemmaGetValueImpliesTupleContained(lm, hashF.hash(key), lm.apply(hashF.hash(key)))
    ListSpecs.forallContained(lm.toList, (k, v) => noDuplicateKeys(v), (hashF.hash(key), lm.apply(hashF.hash(key))))
    getPair(lm.apply(hashF.hash(key)), key).isDefined
  })

  @opaque
  @inlineOnce
  @ghost
  def lemmaNotInItsHashBucketThenNotInMap[K, V](lm: ListLongMap[List[(K, V)]], key: K, hashF: Hashable[K], ordering: Ordering[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(lm.contains(hashF.hash(key)))
    require(!containsKey(lm.apply(hashF.hash(key)), key))

    decreases(lm.toList.size)
    lm.toList match {
      case Cons(hd, tl) if hd._1 == hashF.hash(key) =>
        lemmaHashNotInLongMapThenNotInGenerated(lm.tail, key, hashF, ordering)
        lemmaAddToMapFromBucketContainsIIFInAccOrL(hd._2, extractMap(tl, ordering), key)
      case Cons(hd, tl) =>
        assert(hd._1 != hashF.hash(key))
        lemmaNotSameHashThenCannotContainKey(lm, key, hd._1, hashF, ordering)
        lemmaAddToMapFromBucketContainsIIFInAccOrL(hd._2, extractMap(tl, ordering), key)
        lemmaNotInItsHashBucketThenNotInMap(lm.tail, key, hashF, ordering)
      case Nil() => ()
    }

  } ensuring (_ => !extractMap(lm.toList, ordering).contains(key))

  @opaque
  @inlineOnce
  @ghost
  def lemmaInGenMapThenLongMapContainsHash[K, V](lm: ListLongMap[List[(K, V)]], key: K, hashF: Hashable[K], ordering: Ordering[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(extractMap(lm.toList, ordering).contains(key))
    decreases(lm.toList.size)

    val hash = hashF.hash(key)

    if (!lm.contains(hashF.hash(key))) {
      lemmaHashNotInLongMapThenNotInGenerated(lm, key, hashF, ordering)
      check(!extractMap(lm.toList, ordering).contains(key))
      check(false)
    }

  } ensuring (_ => lm.contains(hashF.hash(key)))

  @opaque
  @inlineOnce
  @ghost
  def lemmaHashNotInLongMapThenNotInGenerated[K, V](lm: ListLongMap[List[(K, V)]], key: K, hashF: Hashable[K], ordering: Ordering[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(!lm.contains(hashF.hash(key)))
    decreases(lm.toList.size)

    lm.toList match {
      case Cons(hd, tl) =>
        lemmaAddToMapFromBucketContainsIIFInAccOrL(hd._2, extractMap(tl, ordering), key)
        lemmaNotSameHashThenCannotContainKey(lm, key, hd._1, hashF, ordering)
        lemmaHashNotInLongMapThenNotInGenerated(lm.tail, key, hashF, ordering)
      case Nil() => ()
    }

  } ensuring (_ => !extractMap(lm.toList, ordering).contains(key))

  @opaque
  @inlineOnce
  @ghost
  def lemmaAddToMapFromBucketContainsIIFInAccOrL[K, V](l: List[(K, V)], acc: ListMap[K, V], key: K): Unit = {
    require(noDuplicateKeys(l))
    decreases(l)
    l match {
      case Nil() => ()
      case Cons((k, v), tl) =>
        val newAcc = acc + (k, v)
        val res = addToMapMapFromBucket(tl, acc + (k, v))
        lemmaAddToMapFromBucketContainsIIFInAccOrL(tl, newAcc, key)
        if (acc.contains(key)) {
          ListMapLemmas.addStillContains(acc, k, v, key)
        } else if (k == key) {
          ()
        } else if (containsKey(tl, key)) {
          ()
        } else {
          lemmaAddToMapFromBucketContainsIIFInAccOrL(tl, newAcc, key)
          ListMapLemmas.addStillNotContains(acc, k, v, key)

        }
    }
  } ensuring (_ => (addToMapMapFromBucket(l, acc).contains(key) == (containsKey(l, key) || acc.contains(key))))

  @opaque
  @inlineOnce
  @ghost
  def lemmaAddToMapFromBucketTlPlusHeadIsSameAsList[K, V](t: (K, V), l: List[(K, V)], acc: ListMap[K, V]): Unit = {
    require(noDuplicateKeys(l))
    require(noDuplicateKeys(Cons(t, l)))
    decreases(l)
    l match {
      case Nil() => ()
      case Cons((k, v), tl) =>
        val newAcc = acc + (k, v)
        val res = addToMapMapFromBucket(tl, acc + (k, v))
        lemmaAddToMapFromBucketTlPlusHeadIsSameAsList(t, tl, newAcc)

        check(addToMapMapFromBucket(tl, newAcc) == addToMapMapFromBucket(l, acc))
        check(addToMapMapFromBucket(Cons(t, tl), newAcc) == addToMapMapFromBucket(tl, newAcc) + t)
        check(addToMapMapFromBucket(Cons(t, tl), newAcc) == addToMapMapFromBucket(tl, newAcc + t))
        check(addToMapMapFromBucket(Cons(t, tl), newAcc) == addToMapMapFromBucket(tl, acc + (k, v) + t))
        check(addToMapMapFromBucket(Cons(t, l), acc) == addToMapMapFromBucket(l, acc + t))
        check(addToMapMapFromBucket(Cons(t, l), acc) == addToMapMapFromBucket(tl, acc + t + (k, v)))
        ListMapLemmas.addCommutativeForDiffKeys(acc, k, v, t._1, t._2)
        check(addToMapMapFromBucket(Cons(t, l), acc) == addToMapMapFromBucket(tl, acc + (k, v) + t))
        check(addToMapMapFromBucket(Cons(t, l), acc) == addToMapMapFromBucket(l, acc) + t)

    }

  } ensuring (_ => addToMapMapFromBucket(Cons(t, l), acc) == addToMapMapFromBucket(l, acc) + t)

  @opaque
  @inlineOnce
  @ghost
  def lemmaExtractMapPreservesMapping[K, V](lm: ListLongMap[List[(K, V)]], key: K, value: V, hashF: Hashable[K], ordering: Ordering[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(extractMap(lm.toList, ordering).contains(key))
    require({
      lemmaInGenericMapThenInLongMap(lm, key, hashF, ordering)
      lemmaInLongMapThenContainsKeyBiggerList(lm, key, hashF, ordering)
      getValue(lm.toList, key) == value
    })
    decreases(lm.toList.size)

    lm.toList match {
      case Cons(hd, tl) =>
        if (containsKey(hd._2, key)) {
          ListSpecs.forallContained(lm.toList, (k, v) => allKeysSameHash(v, k, hashF), (hd._1, hd._2))
          ListSpecs.forallContained(hd._2, p => hashF.hash(p._1) == hd._1, (key, value))
          lemmaHashNotInLongMapThenNotInGenerated(lm.tail, key, hashF, ordering)
          lemmaAddToMapFromBucketMaintainsMapping(hd._2, extractMap(tl, ordering), key, value)

        } else {
          check(!containsKey(hd._2, key))
          if (!lm.tail.contains(hashF.hash(key))) {
            lemmaHashNotInLongMapThenNotInGenerated(lm.tail, key, hashF, ordering)
          }
          lemmaInLongMapThenContainsKeyBiggerList(lm, key, hashF, ordering)
          lemmaListContainsThenExtractedMapContains(lm.tail, key, hashF, ordering)
          lemmaExtractMapPreservesMapping(lm.tail, key, value, hashF, ordering)
          lemmaAddToMapFromBucketMaintainsMapping(hd._2, extractMap(tl, ordering), key, value)
        }

      case Nil() => ()
    }

  } ensuring (_ => extractMap(lm.toList, ordering).apply(key) == value)

  @opaque
  @inlineOnce
  @ghost
  def lemmaAddToMapFromBucketMaintainsMapping[K, V](l: List[(K, V)], acc: ListMap[K, V], key: K, value: V): Unit = {
    require(noDuplicateKeys(l))
    require(addToMapMapFromBucket(l, acc).contains(key))
    require(acc.contains(key) && acc.apply(key) == value && !containsKey(l, key) || containsKey(l, key) && l.contains((key, value)) && !acc.contains(key))
    decreases(l)
    l match {
      case Nil() => ()
      case Cons((k, v), tl) =>
        val newAcc = acc + (k, v)
        val res = addToMapMapFromBucket(tl, acc + (k, v))

        if (k == key) {
          lemmaNotContainsKeyThenCannotContainPair(tl, key, value)
          assert(v == value)

          lemmaAddToMapFromBucketMaintainsMapping(tl, newAcc, key, value)
        } else if (acc.contains(key)) {
          ListMapLemmas.addStillContains(acc, k, v, key)
          ListMapLemmas.addApplyDifferent(acc, k, v, key)
          lemmaNotContainsKeyThenCannotContainPair(l, key, value)

          lemmaAddToMapFromBucketMaintainsMapping(tl, newAcc, key, value)
        } else {
          assert(!acc.contains(key))
          assert(tl.contains((key, value)))
          ListMapLemmas.addStillNotContains(acc, k, v, key)
          lemmaAddToMapFromBucketMaintainsMapping(tl, newAcc, key, value)

        }
    }
  } ensuring (_ => addToMapMapFromBucket(l, acc).apply(key) == value)

  @opaque
  @inlineOnce
  @ghost
  def lemmaInLongMapThenContainsKeyBiggerList[K, V](lm: ListLongMap[List[(K, V)]], key: K, hashF: Hashable[K], ordering: Ordering[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(lm.contains(hashF.hash(key)))
    require({
      ListLongMapLemmas.lemmaGetValueImpliesTupleContained(lm, hashF.hash(key), lm.apply(hashF.hash(key)))
      ListSpecs.forallContained(lm.toList, (k, v) => noDuplicateKeys(v), (hashF.hash(key), lm.apply(hashF.hash(key))))
      getPair(lm.apply(hashF.hash(key)), key).isDefined
    })
    decreases(lm.toList.size)
    lm.toList match
      case Cons(hd, tl) if hd._1 == hashF.hash(key) => lemmaGetPairDefinedThenContainsKey(hd._2, key, hashF, ordering)
      case Cons(hd, tl) =>
        assert(hashF.hash(key) != hd._1)
        lemmaNotSameHashThenCannotContainKey(lm, key, hd._1, hashF, ordering)
        assert(!containsKey(hd._2, key))
        lemmaInLongMapThenContainsKeyBiggerList(lm.tail, key, hashF, ordering)
        check(containsKeyBiggerList(lm.toList, key))
      case Nil() => check(containsKeyBiggerList(lm.toList, key))

  } ensuring (_ => containsKeyBiggerList(lm.toList, key))

  @opaque
  @inlineOnce
  @ghost
  def lemmaListContainsThenExtractedMapContains[K, V](lm: ListLongMap[List[(K, V)]], key: K, hashF: Hashable[K], ordering: Ordering[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(containsKeyBiggerList(lm.toList, key))
    decreases(lm.toList.size)

    lm.toList match
      case Cons(hd, tl) if containsKey(hd._2, key) => {
        val v = getValue(lm.toList, key)
        lemmaInPairListHeadThenGetValueInTuple(lm, key, v, hashF, ordering)
        check(hd._2.contains((key, v)))
        check(extractMap(lm.toList, ordering) == addToMapMapFromBucket(hd._2, extractMap(tl, ordering)))
        ListSpecs.forallContained(hd._2, p => addToMapMapFromBucket(hd._2, extractMap(tl, ordering)).contains(p._1), (key, v))
      }
      case Cons(hd, tl) => {
        assert(extractMap(lm.toList, ordering) == addToMapMapFromBucket(hd._2, extractMap(tl, ordering)))
        lemmaInBiggerListButNotHeadThenTail(lm, key, hashF, ordering)
        assert(containsKeyBiggerList(tl, key))
        lemmaListContainsThenExtractedMapContains(lm.tail, key, hashF, ordering)
        assert(extractMap(tl, ordering).contains(key))
        val v = extractMap(tl, ordering).get(key).get
        val m = extractMap(tl, ordering)
        ListMapLemmas.lemmaGetValueImpliesTupleContained(extractMap(tl, ordering), key, v)
        // lemmaGetValueInExtractMapToList(tl, key, v, hashF, ordering)
        check(extractMap(tl, ordering).toList.contains((key, v)))
        ListSpecs.forallContained(extractMap(tl, ordering).toList, p => extractMap(lm.toList, ordering).contains(p._1), (key, v))
      }
      case Nil() => ()

  } ensuring (_ => extractMap(lm.toList, ordering).contains(key))

  @opaque
  @inlineOnce
  @ghost
  def lemmaInPairListHeadThenGetValueInTuple[K, V](lm: ListLongMap[List[(K, V)]], key: K, v: V, hashF: Hashable[K], ordering: Ordering[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(containsKeyBiggerList(lm.toList, key) && containsKey(lm.toList.head._2, key))
    require(v == getValue(lm.toList, key))

  } ensuring (_ => lm.toList.head._2.contains((key, v)))

  @opaque
  @inlineOnce
  @ghost
  def lemmaGetValueEquivToGetPair[K, V](lm: ListLongMap[List[(K, V)]], key: K, v: V, hashF: Hashable[K], ordering: Ordering[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(containsKeyBiggerList(lm.toList, key))
    require({
      lemmaListContainsThenExtractedMapContains(lm, key, hashF, ordering)
      lemmaInGenMapThenLongMapContainsHash(lm, key, hashF, ordering)
      ListLongMapLemmas.lemmaGetValueImpliesTupleContained(lm, hashF.hash(key), lm.apply(hashF.hash(key)))
      ListSpecs.forallContained(lm.toList, (k, v) => noDuplicateKeys(v), (hashF.hash(key), lm.apply(hashF.hash(key))))
      lemmaInGenMapThenGetPairDefined(lm, key, hashF, ordering)
      getPair(lm.apply(hashF.hash(key)), key).get._2 == v
    })
    decreases(lm.toList.size)

    lm.toList match {
      case Cons(hd, tl) if hd._1 == hashF.hash(key) =>
        ListSpecs.forallContained(lm.toList, (k, v) => allKeysSameHash(v, k, hashF), (hd._1, hd._2))
        if (!containsKey(hd._2, key)) {
          lemmaNotInItsHashBucketThenNotInMap(lm, key, hashF, ordering)
          lemmaListContainsThenExtractedMapContains(lm, key, hashF, ordering)
          check(false)
        }
      case Cons(hd, tl) =>
        lemmaNotSameHashThenCannotContainKey(lm, key, hd._1, hashF, ordering)
        assert(!containsKey(hd._2, key))
        lemmaInBiggerListButNotHeadThenTail(lm, key, hashF, ordering)
        lemmaGetValueEquivToGetPair(lm.tail, key, v, hashF, ordering)
      case Nil() => ()
    }

  } ensuring (_ => getValue(lm.toList, key) == v)
  @opaque
  @inlineOnce
  @ghost
  def lemmaInBiggerListButNotHeadThenTail[K, V](lm: ListLongMap[List[(K, V)]], key: K, hashF: Hashable[K], ordering: Ordering[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(containsKeyBiggerList(lm.toList, key))
    require(!containsKey(lm.toList.head._2, key))
    decreases(lm.toList.size)

  } ensuring (_ => containsKeyBiggerList(lm.toList.tail, key))

  @opaque
  @inlineOnce
  @ghost
  def lemmaGetPairDefinedThenContainsKey[K, V](l: List[(K, V)], key: K, hashF: Hashable[K], ordering: Ordering[K]): Unit = {
    require(noDuplicateKeys(l))
    require(getPair(l, key).isDefined)
    decreases(l)
    l match
      case Cons(hd, tl) if hd._1 == key => ()
      case Cons(_, tl)                  => lemmaGetPairDefinedThenContainsKey(tl, key, hashF, ordering)
      case Nil()                        => ()

  } ensuring (_ => containsKey(l, key))

  @opaque
  @inlineOnce
  @ghost
  def lemmaNotSameHashThenCannotContainKey[K, V](lm: ListLongMap[List[(K, V)]], key: K, hash: Long, hashF: Hashable[K], ordering: Ordering[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    // require(lm.contains(hashF.hash(key)))
    require(lm.contains(hash))
    require(hash != hashF.hash(key))

    val listHash = lm.apply(hash)

    ListLongMapLemmas.lemmaGetValueImpliesTupleContained(lm, hash, listHash)
    ListSpecs.forallContained(lm.toList, (k, v) => allKeysSameHash(v, k, hashF), (hash, listHash))
    assert(allKeysSameHash(listHash, hash, hashF))
    if (containsKey(listHash, key)) {
      ListSpecs.forallContained(lm.toList, (k, v) => noDuplicateKeys(v), (hash, listHash))
      ListSpecs.forallContained(listHash, (k, v) => hashF.hash(k) == hash, (key, getPair(listHash, key).get._2))
      check(false)
    }
  } ensuring (_ => !containsKey(lm.apply(hash), key))

  @opaque
  @inlineOnce
  @ghost
  def lemmaNotContainsKeyThenCannotContainPair[K, V](l: List[(K, V)], key: K, v: V): Unit = {
    require(!containsKey(l, key))
    decreases(l)
    l match
      case Cons(hd, tl) if hd._1 == key => check(false)
      case Cons(_, tl)                  => lemmaNotContainsKeyThenCannotContainPair(tl, key, v)
      case Nil()                        => ()

  } ensuring (_ => !l.contains((key, v)))
}
