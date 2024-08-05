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
  ) {

    @pure
    def imbalanced(): Boolean = underlying.v.imbalanced()

    @pure
    def size: Int = _size

    @pure
    def isEmpty: Boolean = {
      require(valid)
      underlying.v.isEmpty
    }.ensuring (_ => valid)

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
        if (extractMap(underlying.v.map.toList).contains(key)) {
          lemmaInGenericMapThenInLongMap(underlying.v.map, key, hashF)
        } else {
          if (((underlying.v.map.contains(hashF.hash(key)) && getPair(underlying.v.map.apply(hashF.hash(key)), key).isDefined))) {
            lemmaInLongMapThenInGenericMap(underlying.v.map, key, hashF)
            check(false)
          }
        }
      })
      underlying.v.contains(hash) && getPair(underlying.v.apply(hash), key).isDefined
    }.ensuring (res => valid && (res == map.contains(key)))

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

        ghostExpr(lemmaGetPairGetSameValueAsMap(underlying.v.map, key, getPair(underlying.v.apply(hash), key).get._2, hashF))
        assert(getPair(underlying.v.apply(hash), key).get._2 == map.get(key).get)
        getPair(underlying.v.apply(hash), key).get._2
      }
    }.ensuring (res =>
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
            lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash(oldLongListMap, hash, newBucket, hashF)
            lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap(oldLongListMap, hash, newBucket, key, v, hashF)
            ListMapLemmas.lemmaEquivalentThenSameContains(map, oldMap + (key, v), key)
            check(underlying.v.map.toList.forall((k, v) => noDuplicateKeys(v)))
            check(allKeysSameHashInMap(underlying.v.map, hashF)) 
            check(map.eq(oldMap + (key, v)))
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
            lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash(oldLongListMap, hash, newBucket, hashF)
            lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap(oldLongListMap, hash, newBucket, key, v, hashF)
            check(underlying.v.map.toList.forall((k, v) => noDuplicateKeys(v)))
            check(allKeysSameHashInMap(underlying.v.map, hashF)) 
            check(map.eq(oldMap + (key, v)))
            check(res)
            ListMapLemmas.lemmaEquivalentThenSameContains(map, oldMap + (key, v), key)
            check((oldMap + (key, v)).contains(key))
            check(map.contains(key))
          } else {
            check(valid)
            check(map == oldMap)
          }
        })

        if (res && !contained) then _size += 1
        res
      }
      res

    }.ensuring (res => valid && (if (res) map.contains(key) && (map.eq(old(this).map + (key, v))) else map.eq(old(this).map)))

    def remove(key: K): Boolean = {
      require(valid)
      val contained = contains(key)
      if (!contained) {
        ghostExpr({
          lemmaRemoveNotContainedDoesNotChange(underlying.v.map, key, hashF)
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
            lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash(oldLongListMap, hash, newBucket, hashF)
            check(underlying.v.map.toList.forall((k, v) => noDuplicateKeys(v)))
            check(allKeysSameHashInMap(underlying.v.map, hashF))
            check(valid)
            check(oldMap.contains(key))
            lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap(oldLongListMap, hash, newBucket, key, hashF)
            check(map.eq(oldMap - key))
          } else {
            check(valid)
            check(map == oldMap)
          }
        })
        res
      }

    }.ensuring (res => valid && (if (res) map.eq(old(this).map - key) else map.eq(old(this).map)))

    @ghost
    def valid: Boolean = underlying.v.valid &&
      underlying.v.map.toList.forall((k, v) => noDuplicateKeys(v)) &&
      allKeysSameHashInMap(underlying.v.map, hashF)

    @pure
    @ghost
    def map: ListMap[K, V] = {
      require(valid)
      extractMap(underlying.v.map.toList)
    }

  }
  @ghost
  def extractMap[K, V](l: List[(Long, List[(K, V)])]): ListMap[K, V] = {
    require(l.forall((k, v) => noDuplicateKeys(v)))
    decreases(l)
    l match {
      case Cons((k, v), tl) => addToMapMapFromBucket(v, extractMap(tl))
      case Nil()            => ListMap.empty[K, V]
    }
  }.ensuring (res => true)

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
  }.ensuring (res => l.forall(p => res.contains(p._1)) && acc.toList.forall(p => res.contains(p._1)))

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
  }.ensuring (res => res.isEmpty && !containsKey(l, key) || res.isDefined && res.get._1 == key && l.contains(res.get))

  def removePairForKey[K, V](l: List[(K, V)], key: K): List[(K, V)] = {
    require(noDuplicateKeys(l))
    l match
      case Cons(hd, tl) if hd._1 == key => tl
      case Cons(hd, tl)                 => Cons(hd, removePairForKey(tl, key))
      case Nil()                        => Nil()
  }.ensuring (res => !containsKey(res, key))

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
  /**
    * This lemma proves that a property `p` that holds for all pairs of the map, holds for a key and its value.
    * 
    * Useful to build caches using this map.
    *
    * @param hm
    * @param k
    * @param p
    */
  @opaque
  @inlineOnce
  @ghost
  def lemmaForallPairsThenForLookup[K, V](hm: HashMap[K, V], k: K, p: ((K, V)) => Boolean): Unit = {
    require(hm.valid)
    require(hm.map.forall(p))
    require(hm.contains(k))

    TupleListOpsGenK.lemmaGetValueByKeyImpliesContainsTuple(hm.map.toList, k, hm.apply(k))
    assert(hm.map.toList.contains((k, hm.apply(k))))
    assert(hm.map.toList.forall(p))
    ListSpecs.forallContained(hm.map.toList, p, (k, hm.apply(k)))
  }.ensuring(_ => p((k, hm.apply(k))))


  /**
    * This lemma proves that inserting a new pair preserves the property `p` that holds for all pairs of the map.
    * 
    * Useful to build caches using this map.
    *
    * @param hm
    * @param k
    * @param v
    * @param p
    */
  @opaque
  @inlineOnce
  @ghost
  def lemmaUpdatePreservesForallPairs[K, V](hm: HashMap[K, V], k: K, v: V, p: ((K, V)) => Boolean): Unit = {
    require(hm.valid)
    require(hm.map.forall(p))
    require(p((k, v)))

    val oldSnap = snapshot(hm)
    val snap = snapshot(hm)
    val oldMap = hm.map
    val oldSize = hm.size

    val mapAfter = oldMap + (k, v)

    val success = snap.update(k, v)
    
    if(success) {
      assert(snap.map.eq(mapAfter))
      TupleListOpsGenK.lemmaInsertNoDuplicatedKeysPreservesForall(oldMap.toList, k, v, p)
      assert(mapAfter.forall(p))
      TupleListOpsGenK.lemmaForallSubset(snap.map.toList, mapAfter.toList, p)
    } else {
      assert(snap.map.eq(oldMap))
    }

    ()
  } ensuring (_ => {
    val oldMap = snapshot(hm)
    val afterUpdate = snapshot(hm)
    afterUpdate.update(k, v)
    afterUpdate.map.forall(p)
  })

    /**
    * This lemma proves that removing a pair preserves the property `p` that holds for all pairs of the map.
    * 
    * Useful to build caches using this map.
    *
    * @param hm
    * @param k
    * @param p
    */
  @opaque
  @inlineOnce
  @ghost
  def lemmaRemovePreservesForallPairs[K, V](hm: HashMap[K, V], k: K, p: ((K, V)) => Boolean): Unit = {
    require(hm.valid)
    require(hm.map.forall(p))

    val oldSnap = snapshot(hm)
    val snap = snapshot(hm)
    val oldMap = hm.map
    val oldSize = hm.size

    val mapAfter = oldMap - k

    val success = snap.remove(k)

    assert(snap.valid)
    assert(TupleListOpsGenK.invariantList(snap.map.toList))

    if(success) {
      assert(snap.map.eq(mapAfter))
      assert(oldMap.forall(p))
      TupleListOpsGenK.lemmaForallSubset(mapAfter.toList, oldMap.toList, p)
      TupleListOpsGenK.lemmaForallSubset(snap.map.toList, mapAfter.toList, p)
    } else {
      assert(snap.map.eq(oldMap))
      TupleListOpsGenK.lemmaForallSubset(mapAfter.toList, oldMap.toList, p)
    }

    ()
  } ensuring (_ => {
    val oldMap = snapshot(hm)
    val afterUpdate = snapshot(hm)
    afterUpdate.remove(k)
    afterUpdate.map.forall(p)
  })



  @opaque
  @inlineOnce
  @ghost
  def lemmaInGenericMapThenInLongMap[K, V](lm: ListLongMap[List[(K, V)]], key: K, hashF: Hashable[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(extractMap(lm.toList).contains(key))

    val map = extractMap(lm.toList)
    lemmaInGenMapThenLongMapContainsHash(lm, key, hashF)
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

    lemmaInGenMapThenGetPairDefined(lm, key, hashF)
    assert(getPair(lm.apply(hashF.hash(key)), key).isDefined)

  }.ensuring (_ => (lm.contains(hashF.hash(key)) && getPair(lm.apply(hashF.hash(key)), key).isDefined))

  @opaque
  @inlineOnce
  @ghost
  def lemmaInLongMapThenInGenericMap[K, V](lm: ListLongMap[List[(K, V)]], key: K, hashF: Hashable[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(lm.contains(hashF.hash(key)))
    require({
      ListLongMapLemmas.lemmaGetValueImpliesTupleContained(lm, hashF.hash(key), lm.apply(hashF.hash(key)))
      ListSpecs.forallContained(lm.toList, (k, v) => noDuplicateKeys(v), (hashF.hash(key), lm.apply(hashF.hash(key))))
      getPair(lm.apply(hashF.hash(key)), key).isDefined
    })

    lemmaInLongMapThenContainsKeyBiggerList(lm, key, hashF)
    lemmaListContainsThenExtractedMapContains(lm, key, hashF)

  }.ensuring (_ => extractMap(lm.toList).contains(key))

  @opaque
  @inlineOnce
  @ghost
  def lemmaGetPairGetSameValueAsMap[K, V](lm: ListLongMap[List[(K, V)]], key: K, v: V, hashF: Hashable[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(extractMap(lm.toList).contains(key))
    require({
      lemmaInGenMapThenLongMapContainsHash(lm, key, hashF)
      ListLongMapLemmas.lemmaGetValueImpliesTupleContained(lm, hashF.hash(key), lm.apply(hashF.hash(key)))
      ListSpecs.forallContained(lm.toList, (k, v) => noDuplicateKeys(v), (hashF.hash(key), lm.apply(hashF.hash(key))))
      lemmaInGenMapThenGetPairDefined(lm, key, hashF)
      getPair(lm.apply(hashF.hash(key)), key).get._2 == v
    })

    lemmaInLongMapThenContainsKeyBiggerList(lm, key, hashF)
    check(containsKeyBiggerList(lm.toList, key))

    lemmaGetValueEquivToGetPair(lm, key, v, hashF)
    lemmaExtractMapPreservesMapping(lm, key, v, hashF)

  }.ensuring (_ => {
    lemmaInGenMapThenLongMapContainsHash(lm, key, hashF)
    ListLongMapLemmas.lemmaGetValueImpliesTupleContained(lm, hashF.hash(key), lm.apply(hashF.hash(key)))
    ListSpecs.forallContained(lm.toList, (k, v) => noDuplicateKeys(v), (hashF.hash(key), lm.apply(hashF.hash(key))))
    lemmaInGenMapThenGetPairDefined(lm, key, hashF)
    getPair(lm.apply(hashF.hash(key)), key).get._2 == extractMap(lm.toList).get(key).get
  })

  @opaque
  @inlineOnce
  @ghost
  def lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap[K, V](lm: ListLongMap[List[(K, V)]], hash: Long, newBucket: List[(K, V)], key: K, hashF: Hashable[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(extractMap(lm.toList).contains(key))
    require(hashF.hash(key) == hash)
    require(allKeysSameHash(newBucket, hash, hashF))
    require({
      lemmaInGenMapThenLongMapContainsHash(lm, key, hashF)
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
          lemmaNotInItsHashBucketThenNotInMap(lm, key, hashF)
          check(false)
        }
        assert(containsKey(hd._2, key))
        assert(containsKeyBiggerList(List((hd._1, hd._2)), key))
        lemmaListContainsThenExtractedMapContains(ListLongMap(List((hd._1, hd._2))), key, hashF)
        assert(extractMap(List((hd._1, hd._2))).contains(key))
        lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash(hash, hd._2, newBucket, key, hashF)
        assert(tl == (lm + (hash, newBucket)).toList.tail)
        assert(extractMap(List((hash, newBucket))).eq(extractMap(List((hash, hd._2))) - key))
        assert(lm + (hash, newBucket) == lm.tail + (hash, newBucket))
        assert(extractMap((lm.tail).toList) == extractMap(tl))

        if (extractMap((lm.tail).toList).contains(key)) {
          lemmaInGenMapThenLongMapContainsHash(lm.tail, key, hashF)
          check(false)
        }
        assert(!extractMap((lm.tail).toList).contains(key))
        val oldBucket = hd._2
        lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead(lm, hash, oldBucket, newBucket, key, hashF)

        assert((lm + (hash, newBucket)).toList == Cons((hash, newBucket), tl))
        assert(extractMap((lm + (hash, newBucket)).toList).eq(addToMapMapFromBucket(newBucket, extractMap(tl))))
        assert(extractMap((lm + (hash, oldBucket)).toList).eq(addToMapMapFromBucket(oldBucket, extractMap(tl))))
        assert(extractMap((lm + (hash, oldBucket)).toList).eq(extractMap(lm.toList)))
        assert(extractMap((lm + (hash, newBucket)).toList).eq(extractMap(lm.toList) - key))
      }
      case Cons(hd, tl) => {
        val oldBucket = lm.apply(hash)
        assert(lm.tail.contains(hash))
        assert(lm.tail.apply(hash) == oldBucket)
        assert(tl.contains((hash, oldBucket)))
        if (!containsKey(oldBucket, key)) {
          lemmaNotInItsHashBucketThenNotInMap(lm, key, hashF)
          check(false)
        }
        assert(containsKey(oldBucket, key))
        lemmaInLongMapThenContainsKeyBiggerList(lm.tail, key, hashF)
        assert(containsKeyBiggerList(tl, key))
        lemmaListContainsThenExtractedMapContains(lm.tail, key, hashF)
        assert(extractMap(tl).contains(key))
        lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap(lm.tail, hash, newBucket, key, hashF)
        assert(extractMap((lm.tail + (hash, newBucket)).toList).eq(extractMap(lm.tail.toList) - key))

        assert(extractMap((lm.tail + lm.head).toList).eq(extractMap(lm.toList)))
        assert(extractMap(lm.toList).eq(extractMap((lm.tail + lm.head).toList)))
        assert(lm.head._1 < hash)
        assert(lm.tail + (hash, newBucket) + lm.head == lm + (hash, newBucket))
        assert((lm.tail + (hash, newBucket) + lm.head).head == lm.head)

        assert((extractMap((lm.tail + (hash, newBucket) + lm.head).toList).eq(addToMapMapFromBucket(lm.head._2, extractMap((lm.tail + (hash, newBucket)).toList)))))
        lemmaAddToMapFromBucketPreservesEquivalence(extractMap((lm.tail + (hash, newBucket)).toList), extractMap(lm.tail.toList) - key, lm.head._2)
        assert((extractMap((lm.tail + (hash, newBucket) + lm.head).toList).eq(addToMapMapFromBucket(lm.head._2, (extractMap(lm.tail.toList) - key)))))

        ListSpecs.forallContained(lm.toList, (k, v) => noDuplicateKeys(v), (hd._1, hd._2))
        assert(noDuplicateKeys(lm.head._2))

        if (containsKey(lm.head._2, key)) {
          check(hash != lm.head._1)
          val pair = getPair(lm.head._2, key).get
          val value = pair._2
          ListSpecs.forallContained(lm.toList, (k, v) => allKeysSameHash(v, k, hashF), (hd._1, hd._2))
          ListSpecs.forallContained(hd._2, p => hashF.hash(p._1) == hd._1, (key, value))
          check(false)
        }
        assert(!containsKey(lm.head._2, key))
        lemmaAddToMapFromBucketMinusKeyIsCommutative(extractMap(lm.tail.toList), key, lm.head._2)
        assert(addToMapMapFromBucket(lm.head._2, (extractMap(lm.tail.toList) - key)).eq(addToMapMapFromBucket(lm.head._2, (extractMap(lm.tail.toList))) - key))
        assert(addToMapMapFromBucket(lm.head._2, (extractMap(lm.tail.toList) - key)).eq(extractMap(lm.toList) - key))

        assert(extractMap((lm.tail + (hash, newBucket) + lm.head).toList).eq(extractMap(lm.toList) - key))

        assert(extractMap((lm.tail + (hash, newBucket) + lm.head).toList).eq(extractMap((lm.tail + lm.head).toList) - key))
        assert(extractMap((lm + (hash, newBucket)).toList).eq(extractMap(lm.toList) - key))
      }
    }

  }.ensuring (_ => {
    extractMap((lm + (hash, newBucket)).toList).eq(extractMap(lm.toList) - key)
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
      
  ): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(hashF.hash(key) == hash)
    require(allKeysSameHash(newBucket, hash, hashF))
    require(!extractMap(lm.toList).contains(key))
    require(lm.contains(hash) && newBucket == Cons((key, newValue), lm.apply(hash)) || !lm.contains(hash) && newBucket == Cons((key, newValue), Nil()))
    require(noDuplicateKeys(newBucket))

    decreases(lm.toList.size)

    assert(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    ListLongMapLemmas.addValidProp(lm, (k, v) => noDuplicateKeys(v), hash, newBucket)
    assert((lm + (hash, newBucket)).toList.forall((k, v) => noDuplicateKeys(v)))
    lm.toList match {
      case Cons(hd, tl) if hd._1 == hash =>
        assert(lm.contains(hash)) 
        assert((lm + (hash, newBucket)).toList.head == (hash, newBucket)) 
        assert((lm + (hash, newBucket)).toList.tail == tl) 
        assert(extractMap((lm + (hash, newBucket)).toList) == addToMapMapFromBucket(newBucket, extractMap(tl))) 

        assert(newBucket == Cons((key, newValue), lm.apply(hash)))
        val newAcc = extractMap(tl) + (key, newValue)
        assert(addToMapMapFromBucket(newBucket, extractMap(tl)) == addToMapMapFromBucket(lm.apply(hash), extractMap(tl) + (key, newValue)))
        lemmaAddToMapFromBucketPlusKeyValueIsCommutative(extractMap(tl), key, newValue, lm.apply(hash))
        assert(addToMapMapFromBucket(newBucket, extractMap(tl)).eq(addToMapMapFromBucket(lm.apply(hash), extractMap(tl)) + (key, newValue)))
        assert(extractMap((lm + (hash, newBucket)).toList).eq(addToMapMapFromBucket(lm.apply(hash), extractMap(tl)) + (key, newValue)))
        assert(extractMap((lm + (hash, newBucket)).toList).eq(extractMap(lm.toList) + (key, newValue)))
      case Cons(hd, tl) if hd._1 != hash =>
        assert(!extractMap(lm.toList).contains(key))
        if (extractMap(lm.toList.tail).contains(key)) {
          lemmaExtractTailMapContainsThenExtractMapDoes(lm, key, hashF)
          check(false)
        }
        lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap(lm.tail, hash, newBucket, key, newValue, hashF)
        assert(extractMap((lm.tail + (hash, newBucket)).toList).eq(extractMap(lm.tail.toList) + (key, newValue)))
        assert(lm.head != (hash, newBucket))
        assert(extractMap(lm.toList).eq(addToMapMapFromBucket(hd._2, extractMap(lm.tail.toList))))

        lemmaNotSameHashThenCannotContainKey(lm, key, hd._1, hashF)
        assert(!containsKey(hd._2, key))
        lemmaAddToMapFromBucketPlusKeyValueIsCommutative(extractMap(lm.tail.toList), key, newValue, hd._2)
        assert(addToMapMapFromBucket(hd._2, (extractMap(lm.tail.toList) + (key, newValue))).eq(addToMapMapFromBucket(hd._2, extractMap(lm.tail.toList)) + (key, newValue)))
        assert(addToMapMapFromBucket(hd._2, (extractMap(lm.tail.toList) + (key, newValue))).eq(addToMapMapFromBucket(hd._2, extractMap(lm.tail.toList)) + (key, newValue)))
        
        assert(extractMap(lm.toList).eq(addToMapMapFromBucket(hd._2, extractMap(lm.tail.toList))))
        ListMapLemmas.lemmaAddToEqMapsPreservesEq(extractMap(lm.toList), addToMapMapFromBucket(hd._2, extractMap(lm.tail.toList)), key, newValue)
        assert((extractMap(lm.toList) + (key, newValue)).eq(addToMapMapFromBucket(hd._2, extractMap(lm.tail.toList)) + (key, newValue)))
        
        lemmaAddToMapFromBucketPreservesEquivalence(extractMap(lm.tail.toList) + (key, newValue), extractMap((lm.tail + (hash, newBucket)).toList), hd._2)

        // ----------------------------- This is to understand the proof --------------------------------
        // if(lm.contains(hash)){
        //   assert(lm.head._1 != hash)
        //   assert(lm.tail.contains(hash))

        //   assert(lm.tail + (hash, newBucket) == (lm + (hash, newBucket)).tail) 
        //   assert(extractMap((lm.tail + (hash, newBucket)).toList) == extractMap((lm + (hash, newBucket)).toList.tail))
        //   assert(extractMap((lm.tail + hd).toList).eq(extractMap(lm.toList)))
  
        //   assert(extractMap((lm + (hash, newBucket)).toList).eq(addToMapMapFromBucket(hd._2, extractMap((lm + (hash, newBucket)).tail.toList))))
        //   assert(extractMap((lm + (hash, newBucket)).toList).eq(addToMapMapFromBucket(hd._2, extractMap((lm.tail + (hash, newBucket)).toList))))
  
        //   assert( extractMap((lm.tail + (hash, newBucket)).toList).eq(extractMap(lm.tail.toList) + (key, newValue))) 
  
        //   lemmaAddToMapFromBucketPreservesEquivalence(extractMap(lm.tail.toList) + (key, newValue), extractMap((lm.tail + (hash, newBucket)).toList), hd._2)
        //   assert(extractMap((lm + (hash, newBucket)).toList).eq(addToMapMapFromBucket(hd._2, extractMap(lm.tail.toList) + (key, newValue))))
  
        //   assert(extractMap((lm + (hash, newBucket)).toList).eq(addToMapMapFromBucket(hd._2, extractMap(lm.tail.toList)) + (key, newValue)))
        //   assert(extractMap((lm + (hash, newBucket)).toList).eq(extractMap(lm.toList) + (key, newValue)))
        // } else {
        //   assert(lm + (hash, newBucket) == lm + hd + (hash, newBucket))
        //   if(hash < hd._1){
        //     assert(lm + (hash, newBucket) == ListLongMap(Cons((hash, newBucket), lm.toList)))
        //     assert(extractMap((lm + (hash, newBucket)).toList).eq(extractMap(lm.toList) + (key, newValue)))
        //   } else {
        //     assert(lm + (hash, newBucket) == ListLongMap(Cons(hd, (lm.tail + (hash, newBucket)).toList)))
        //     lemmaAddToMapFromBucketPreservesEquivalence(extractMap(lm.tail.toList) + (key, newValue), extractMap((lm.tail + (hash, newBucket)).toList), hd._2)
        //     assert(extractMap((lm + (hash, newBucket)).toList).eq(extractMap(lm.toList) + (key, newValue)))
        //   }


        // }

      case Nil() => () 
    }

  }.ensuring (_ => {
    extractMap((lm + (hash, newBucket)).toList).eq(extractMap(lm.toList) + (key, newValue))
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
      
  ): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(hashF.hash(key) == hash)
    require(allKeysSameHash(newBucket, hash, hashF))
    require(extractMap(lm.toList).contains(key))
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
        check(extractMap((lm + (hash, newBucket)).toList) == addToMapMapFromBucket(newBucket, extractMap(tl)))
        check(extractMap((lm + (hash, newBucket)).toList) == addToMapMapFromBucket(Cons((key, newValue), removePairForKey(lm.apply(hash), key)), extractMap(tl)))
        check(addToMapMapFromBucket(Cons((key, newValue), removePairForKey(lm.apply(hash), key)), extractMap(tl)) ==  addToMapMapFromBucket(removePairForKey(lm.apply(hash), key), extractMap(tl) + (key, newValue)))
        lemmaAddToMapFromBucketPlusKeyValueIsCommutative(extractMap(tl), key, newValue, removePairForKey(lm.apply(hash), key))
        check(addToMapMapFromBucket(Cons((key, newValue), removePairForKey(lm.apply(hash), key)), extractMap(tl)).eq(addToMapMapFromBucket(removePairForKey(lm.apply(hash), key), extractMap(tl)) + (key, newValue)))

        val intermediateLm = lm + (hash, newBucket.tail)
        check(newBucket.tail == removePairForKey(lm.apply(hash), key))
        check( addToMapMapFromBucket(removePairForKey(lm.apply(hash), key), extractMap(tl)) == extractMap(intermediateLm.toList))
        lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap(lm, hash, newBucket.tail, key, hashF)
        check(extractMap(intermediateLm.toList).eq(extractMap(lm.toList) - key))

        ListMapLemmas.lemmaEquivalentThenSameContains(extractMap(intermediateLm.toList), extractMap(lm.toList) - key, key)
        check(intermediateLm.apply(hash) == newBucket.tail)
        assert(!extractMap(intermediateLm.toList).contains(key))
        lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap(intermediateLm, hash, newBucket, key, newValue, hashF)
        check(extractMap((intermediateLm + (hash, newBucket)).toList).eq(extractMap(intermediateLm.toList) + (key, newValue)))
        check(extractMap(intermediateLm.toList).eq(extractMap(lm.toList) - key))

        ListMapLemmas.removeThenAddForSameKeyIsSameAsAdd(extractMap(lm.toList), key, newValue)

        check(extractMap((lm + (hash, newBucket)).toList).eq(extractMap(lm.toList) + (key, newValue)))
      case Cons(hd, tl) if hd._1 != hash => 
        lemmaNotSameHashThenCannotContainKey(lm, key, hd._1, hashF)

        check(!containsKey(hd._2, key))

        lemmaAddToMapContainsAndNotInListThenInAcc(hd._2, key, newValue, extractMap(tl))

        check(extractMap(lm.tail.toList).contains(key))
        lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap(lm.tail, hash, newBucket, key, newValue, hashF)
        check(extractMap((lm.tail + (hash, newBucket)).toList).eq(extractMap(lm.tail.toList) + (key, newValue)))
        check(lm.head != (hash, newBucket))
        check(extractMap(lm.toList) == addToMapMapFromBucket(hd._2, extractMap(lm.tail.toList)))

        lemmaAddToMapFromBucketPlusKeyValueIsCommutative(extractMap(lm.tail.toList), key, newValue, hd._2)

        assert(addToMapMapFromBucket(hd._2, (extractMap(lm.tail.toList) + (key, newValue))).eq(addToMapMapFromBucket(hd._2, extractMap(lm.tail.toList)) + (key, newValue)))

        assert(addToMapMapFromBucket(hd._2, extractMap(lm.tail.toList)).eq(extractMap(lm.toList)))
        
        ListMapLemmas.lemmaAddToEqMapsPreservesEq(extractMap(lm.toList), addToMapMapFromBucket(hd._2, extractMap(lm.tail.toList)), key, newValue)

        lemmaAddToMapFromBucketPreservesEquivalence(extractMap(lm.tail.toList) + (key, newValue), extractMap((lm.tail + (hash, newBucket)).toList), hd._2)
        

        check(extractMap((lm + (hash, newBucket)).toList).eq(extractMap(lm.toList) + (key, newValue)))
      case Nil() => ()
    }

  }.ensuring (_ => {
    extractMap((lm + (hash, newBucket)).toList).eq(extractMap(lm.toList) + (key, newValue))
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

  }.ensuring (_ => acc.contains(key))

  @opaque
  @inlineOnce
  @ghost
  def lemmaExtractTailMapContainsThenExtractMapDoes[K, V](lm: ListLongMap[List[(K, V)]], key: K, hashF: Hashable[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(!lm.toList.isEmpty)
    require(extractMap(lm.tail.toList).contains(key))
    decreases(lm.toList.size)
    val hash = hashF.hash(key)

    lm.toList match {
      case Cons((k, v), tl) =>
        check(extractMap(lm.toList) == addToMapMapFromBucket(v, extractMap(lm.tail.toList)))
        lemmaAddToMapMaintainsContains(lm.tail, key, v, hashF)

      case Nil() => ()
    }

  }.ensuring (_ => extractMap(lm.toList).contains(key))

  @opaque
  @inlineOnce
  @ghost
  def lemmaAddToMapMaintainsContains[K, V](lm: ListLongMap[List[(K, V)]], key: K, l: List[(K, V)], hashF: Hashable[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(noDuplicateKeys(l))
    require(extractMap(lm.toList).contains(key))

    decreases(l.size)
    val hash = hashF.hash(key)

    l match {
      case Cons(hd, tl) =>
        lemmaAddToMapMaintainsContains(lm, key, tl, hashF)
        check(addToMapMapFromBucket(tl, extractMap(lm.toList)).contains(key))
        
        lemmaAddToMapFromBucketPlusKeyValueIsCommutative(extractMap(lm.toList), hd._1, hd._2, tl)
        val lm1 = addToMapMapFromBucket(tl, extractMap(lm.toList) + hd)
        val lm2 = addToMapMapFromBucket(tl, extractMap(lm.toList)) + hd
        check(lm1.eq(lm2))
        ListMapLemmas.addStillContains(addToMapMapFromBucket(tl, extractMap(lm.toList)), hd._1, hd._2, key)
        assert(addToMapMapFromBucket(tl, extractMap(lm.toList)).contains(key))
        assert((addToMapMapFromBucket(tl, extractMap(lm.toList)) + hd).contains(key))
        ListMapLemmas.lemmaEquivalentThenSameContains(lm1, lm2, key)
        check(addToMapMapFromBucket(tl, extractMap(lm.toList) + hd).contains(key))

      case Nil() => ()
    }

  }.ensuring (_ => addToMapMapFromBucket(l, extractMap(lm.toList)).contains(key))

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

  }.ensuring (_ => addToMapMapFromBucket(l, (lhm - key)) == addToMapMapFromBucket(l, lhm) - key)

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
        check(addToMapMapFromBucket(t, (newAcc + (key, value))).eq(addToMapMapFromBucket(t, newAcc) + (key, value)))
        //addToMapMapFromBucket(tl, acc + (k, v))

        check(addToMapMapFromBucket(l, (lhm + (key, value))) == addToMapMapFromBucket(t, (lhm + (key, value)) + (k, v)))
        check(((lhm + (k, v)) + (key, value)).eq((lhm + (key, value)) + (k, v)))
        val lhm1 = (lhm + (key, value)) + (k, v)
        val lhm2 = (lhm + (k, v)) + (key, value)
        lemmaAddToMapFromBucketPreservesEquivalence(lhm1, lhm2, t)
        check(addToMapMapFromBucket(t, lhm1).eq(addToMapMapFromBucket(t, lhm2)))
      case Nil() =>
        check(addToMapMapFromBucket(l, (lhm + (key, value))) == addToMapMapFromBucket(l, lhm) + (key, value))
    }

  }.ensuring (_ => addToMapMapFromBucket(l, (lhm + (key, value))).eq(addToMapMapFromBucket(l, lhm) + (key, value)))

  @opaque
  @inlineOnce
  def lemmaAddToMapFromBucketPreservesEquivalence[K, V](lhm1: ListMap[K, V], lhm2: ListMap[K, V], l: List[(K, V)]): Unit = {
    require(noDuplicateKeys(l))
    require(lhm1.eq(lhm2))
    decreases(l)

    l match {
      case Cons((k, v), t) =>
        val newAcc1 = lhm1 + (k, v)
        val newAcc2 = lhm2 + (k, v)
        ListMapLemmas.lemmaAddToEqMapsPreservesEq(lhm1, lhm2, k, v)
        check(newAcc1.eq(newAcc2))
        lemmaAddToMapFromBucketPreservesEquivalence(newAcc1, newAcc2, t)
      case Nil() =>
        check(lhm1.eq(lhm2))
    }
  }.ensuring (_ => addToMapMapFromBucket(l, lhm1).eq(addToMapMapFromBucket(l, lhm2)))

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
      
  ): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(noDuplicateKeys(oldBucket))
    require(noDuplicateKeys(newBucket))
    require(removePairForKey(oldBucket, key) == newBucket)
    require(allKeysSameHash(oldBucket, hash, hashF))
    require(extractMap(lm.toList).contains(key))
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
        check(extractMap(l) == addToMapMapFromBucket(h._2, extractMap(t)))
        // check(extractMap(t) == ListMap.empty[K, V])
        oldBucket match {
          case Cons(hd, tl) if hd._1 == key =>
            assert(oldBucket.tail == newBucket)
            assert(extractMap(Cons((hash, oldBucket.tail), t)) == extractMap(Cons((hash, newBucket), t)))
            assert(addToMapMapFromBucket(oldBucket.tail, extractMap(t)) == addToMapMapFromBucket(newBucket, extractMap(t)))

            lemmaAddToMapFromBucketTlPlusHeadIsSameAsList(oldBucket.head, oldBucket.tail, extractMap(t))
            assert((addToMapMapFromBucket(oldBucket.tail, extractMap(t)) + hd).eq(addToMapMapFromBucket(oldBucket, extractMap(t))))

            assert(!containsKey(oldBucket.tail, key))
            val m = addToMapMapFromBucket(oldBucket.tail, extractMap(t))
            assert(m == extractMap(Cons((hash, oldBucket.tail), t)))
            lemmaNotInItsHashBucketThenNotInMap(ListLongMap(Cons((hash, oldBucket.tail), t)), key, hashF)
            assert(!m.contains(key))
            ListMapLemmas.addThenRemoveForNewKeyIsSame(m, key, hd._2)
            assert((m + hd) - key == m)
            assert((m + hd).eq(extractMap(Cons((hash, oldBucket), t))))
            ListMapLemmas.lemmaRemovePreservesEq(m + hd, extractMap(Cons((hash, oldBucket), t)), key)
            assert((extractMap(Cons((hash, oldBucket), t)) - key).eq(extractMap(Cons((hash, oldBucket.tail), t))))
            assert(extractMap(Cons((hash, newBucket), t)).eq(extractMap(Cons((hash, oldBucket), t)) - key))
          case Cons(hd, tl) if hd._1 != key =>
            lemmaInGenMapThenGetPairDefined(lm, key, hashF)
            lemmaGetPairDefinedThenContainsKey(oldBucket, key, hashF)
            assert(containsKey(oldBucket, key))
            assert(containsKey(tl, key))
            assert(removePairForKey(oldBucket, key) == newBucket)
            assert(removePairForKey(oldBucket.tail, key) == newBucket.tail)
            assert(removePairForKey(tl, key) == newBucket.tail)

            lemmaListContainsThenExtractedMapContains(ListLongMap(Cons((hash, tl), t)), key, hashF)
            assert(extractMap(Cons((hash, tl), t)).contains(key))

            lemmaAddToMapFromBucketTlPlusHeadIsSameAsList(oldBucket.head, oldBucket.tail, extractMap(t))
            lemmaAddToMapFromBucketTlPlusHeadIsSameAsList(newBucket.head, newBucket.tail, extractMap(t))
            assert(extractMap(Cons((hash, oldBucket), t)).eq(extractMap(Cons((hash, oldBucket.tail), t)) + hd))
            assert(hd == newBucket.head)
            assert(extractMap(Cons((hash, oldBucket), t)).eq(extractMap(Cons((hash, oldBucket.tail), t)) + newBucket.head))

            assert(extractMap(Cons((hash, tl), t)).contains(key))
            lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead(ListLongMap(Cons((hash, tl), t)), hash, tl, newBucket.tail, key, hashF)

            assert(extractMap(Cons((hash, newBucket.tail), t)).eq(extractMap(Cons((hash, tl), t)) - key))
            
            ListMapLemmas.addRemoveCommutativeForDiffKeys(extractMap(Cons((hash, tl), t)), hd._1, hd._2, key)
            //lm + (a1, b1) - a2 == lm - a2 + (a1, b1)
            assert(extractMap(Cons((hash, tl), t)) + hd - key == extractMap(Cons((hash, tl), t)) - key + hd)
            assert((extractMap(Cons((hash, tl), t)) + hd - key).eq(extractMap(Cons((hash, tl), t)) - key + hd))

            assert((extractMap(Cons((hash, tl), t)) + hd).eq(extractMap(Cons((hash, oldBucket), t))))

            ListMapLemmas.lemmaAddToEqMapsPreservesEq(extractMap(Cons((hash, tl), t)) - key, extractMap(Cons((hash, newBucket.tail), t)), hd._1, hd._2)
            assert(((extractMap(Cons((hash, tl), t)) - key) + hd).eq(extractMap(Cons((hash, newBucket.tail), t)) + hd))
            
            assert(((extractMap(Cons((hash, tl), t)) + hd)).eq(extractMap(Cons((hash, oldBucket), t))))
            ListMapLemmas.lemmaRemovePreservesEq((extractMap(Cons((hash, tl), t)) + hd), extractMap(Cons((hash, oldBucket), t)), key)
            assert(((extractMap(Cons((hash, tl), t)) + hd) - key).eq(extractMap(Cons((hash, oldBucket), t)) - key))
            assert(((extractMap(Cons((hash, tl), t)) - key) + hd).eq(extractMap(Cons((hash, oldBucket), t)) - key))

            assert((extractMap(Cons((hash, newBucket.tail), t)) + hd).eq(extractMap(Cons((hash, newBucket), t))))
            
            assert(extractMap(Cons((hash, newBucket), t)).eq(extractMap(Cons((hash, oldBucket), t)) - key))
          case Nil() =>
            lemmaNotInItsHashBucketThenNotInMap(lm, key, hashF)
            check(false)
        }

      case Nil() => check(false)

  }.ensuring (_ => {
    extractMap(Cons((hash, newBucket), lm.toList.tail)).eq(extractMap(Cons((hash, oldBucket), lm.toList.tail)) - key)
  })

  @opaque
  @inlineOnce
  @ghost
  def lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash[K, V](hash: Long, oldBucket: List[(K, V)], newBucket: List[(K, V)], key: K, hashF: Hashable[K]): Unit = {
    require(noDuplicateKeys(oldBucket))
    require(noDuplicateKeys(newBucket))
    require(removePairForKey(oldBucket, key) == newBucket)
    require(allKeysSameHash(oldBucket, hash, hashF))
    require(extractMap(List((hash, oldBucket))).contains(key))
    require(hashF.hash(key) == hash)
    require(allKeysSameHash(newBucket, hash, hashF))
    require(noDuplicateKeys(newBucket))
    decreases(oldBucket.size)

    val l = List((hash, oldBucket))
    l match
      case Cons(h, t) =>
        check(t.isEmpty)
        check(extractMap(l) == addToMapMapFromBucket(h._2, extractMap(t)))
        check(extractMap(t) == ListMap.empty[K, V])
        oldBucket match {
          case Cons(hd, tl) if hd._1 == key =>
            assert(oldBucket.tail == newBucket)
            assert(extractMap(List((hash, oldBucket.tail))) == extractMap(List((hash, newBucket))))
            assert(addToMapMapFromBucket(oldBucket.tail, ListMap.empty[K, V]) == addToMapMapFromBucket(newBucket, ListMap.empty[K, V]))

            lemmaAddToMapFromBucketTlPlusHeadIsSameAsList(oldBucket.head, oldBucket.tail, ListMap.empty[K, V])
            assert((addToMapMapFromBucket(oldBucket.tail, ListMap.empty[K, V]) + hd).eq(addToMapMapFromBucket(oldBucket, ListMap.empty[K, V])))

            assert(!containsKey(oldBucket.tail, key))
            val m = addToMapMapFromBucket(oldBucket.tail, ListMap.empty[K, V])
            assert(m == extractMap(List((hash, oldBucket.tail))))
            lemmaNotInItsHashBucketThenNotInMap(ListLongMap(List((hash, oldBucket.tail))), key, hashF)
            assert(!m.contains(key))
            ListMapLemmas.addThenRemoveForNewKeyIsSame(m, key, hd._2)
            assert((m + hd) - key == m)
            assert(extractMap(List((hash, oldBucket))) == addToMapMapFromBucket(oldBucket, ListMap.empty[K, V]))
            assert((m + hd).eq(extractMap(List((hash, oldBucket)))))
            ListMapLemmas.lemmaRemovePreservesEq(m + hd, extractMap(List((hash, oldBucket))), key)
            assert(extractMap(List((hash, newBucket))) == m)
            assert((extractMap(List((hash, oldBucket))) - key).eq(extractMap(List((hash, newBucket)))))

          case Cons(hd, tl) if hd._1 != key =>
            lemmaInGenMapThenGetPairDefined(ListLongMap(List((hash, oldBucket))), key, hashF)
            lemmaGetPairDefinedThenContainsKey(oldBucket, key, hashF)
            assert(containsKey(oldBucket, key))
            assert(containsKey(tl, key))
            assert(removePairForKey(oldBucket, key) == newBucket)
            assert(removePairForKey(oldBucket.tail, key) == newBucket.tail)
            assert(removePairForKey(tl, key) == newBucket.tail)

            lemmaListContainsThenExtractedMapContains(ListLongMap(List((hash, tl))), key, hashF)
            assert(extractMap(List((hash, tl))).contains(key))

            lemmaAddToMapFromBucketTlPlusHeadIsSameAsList(oldBucket.head, oldBucket.tail, ListMap.empty[K, V])
            lemmaAddToMapFromBucketTlPlusHeadIsSameAsList(newBucket.head, newBucket.tail, ListMap.empty[K, V])
            assert(extractMap(List((hash, oldBucket))).eq(extractMap(List((hash, oldBucket.tail))) + hd))
            assert(extractMap(List((hash, newBucket))).eq(extractMap(List((hash, newBucket.tail))) + newBucket.head))

            lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash(hash, tl, newBucket.tail, key, hashF)
            assert(extractMap(List((hash, newBucket.tail))).eq(extractMap(List((hash, tl))) - key))
            ListMapLemmas.addRemoveCommutativeForDiffKeys(extractMap(List((hash, tl))), hd._1, hd._2, key)
            //lm + (a1, b1) - a2 == lm - a2 + (a1, b1)
            assert(extractMap(List((hash, tl))) + hd - key == extractMap(List((hash, tl))) - key + hd)
            ListMapLemmas.lemmaRemovePreservesEq(extractMap(List((hash, tl))) + hd, extractMap(List((hash, oldBucket))), key)
            assert((extractMap(List((hash, oldBucket))) - key).eq(extractMap(List((hash, tl))) - key + hd))
            assert(newBucket.head == hd)
            assert(extractMap(List((hash, newBucket))).eq(extractMap(List((hash, newBucket.tail))) + hd))
            ListMapLemmas.lemmaAddToEqMapsPreservesEq(extractMap(List((hash, tl))) - key, extractMap(List((hash, newBucket.tail))), hd._1, hd._2)
            assert(extractMap(List((hash, newBucket))).eq(extractMap(List((hash, tl))) - key + hd))
            assert(extractMap(List((hash, oldBucket))).eq(extractMap(List((hash, tl))) + hd))
            assert(extractMap(List((hash, newBucket))).eq(extractMap(List((hash, oldBucket))) - key))
          case Nil() => check(false)
        }

      case Nil() => check(false)

  }.ensuring (_ => {
    extractMap(List((hash, newBucket))).eq(extractMap(List((hash, oldBucket))) - key)
  })

  @opaque
  @inlineOnce
  @ghost
  def lemmaInLongMapAllKeySameHashThenForTuple[K, V](lml: List[(Long, List[(K, V)])], hash: Long, bucket: List[(K, V)], hashF: Hashable[K]): Unit = {
    require(lml.forall((k, v) => allKeysSameHash(v, k, hashF)))
    require(lml.contains((hash, bucket)))
    decreases(lml.size)

    ListSpecs.forallContained(lml, (k, v) => allKeysSameHash(v, k, hashF), (hash, bucket))

  }.ensuring (_ => allKeysSameHash(bucket, hash, hashF))

  @opaque
  @inlineOnce
  @ghost
  def lemmaRemovePairForKeyPreservesHash[K, V](@induct l: List[(K, V)], key: K, hash: Long, hashF: Hashable[K]): Unit = {
    require(noDuplicateKeys(l))
    require(allKeysSameHash(l, hash, hashF))

  }.ensuring (_ => allKeysSameHash(removePairForKey(l, key), hash, hashF))

  @opaque
  @inlineOnce
  @ghost
  def lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash[K, V](lm: ListLongMap[List[(K, V)]], hash: Long, newBucket: List[(K, V)], hashF: Hashable[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(noDuplicateKeys(newBucket))
    require(allKeysSameHash(newBucket, hash, hashF))
    decreases(lm.toList.size)
    lm.toList match
      case Cons(h, t) => {
        lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash(ListLongMap(t), hash, newBucket, hashF)
      }
      case Nil() => ()

  }.ensuring (_ => {
    val newMap = old(lm) + (hash, newBucket)
    newMap.toList.forall((k, v) => noDuplicateKeys(v)) && allKeysSameHashInMap(newMap, hashF)
  })

  @opaque
  @inlineOnce
  @ghost
  def lemmaRemoveNotContainedDoesNotChange[K, V](lm: ListLongMap[List[(K, V)]], key: K, hashF: Hashable[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(!extractMap(lm.toList).contains(key))

    ListMapLemmas.removeNotPresentStillSame(extractMap(lm.toList), key)

  }.ensuring (_ => extractMap(lm.toList) == extractMap(lm.toList) - key)

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

  }.ensuring (_ => noDuplicateKeys(removePairForKey(l, key)))

  @opaque
  @inlineOnce
  @ghost
  def lemmaRemovePairForKeyPreservesNotContainsKey[K, V](@induct l: List[(K, V)], key: K, otherK: K): Unit = {
    require(noDuplicateKeys(l))
    require(otherK != key)
    require(!containsKey(l, otherK))

  }.ensuring (_ => !containsKey(removePairForKey(l, key), otherK))

  @opaque
  @inlineOnce
  @ghost
  def lemmaInGenMapThenGetPairDefined[K, V](lm: ListLongMap[List[(K, V)]], key: K, hashF: Hashable[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(extractMap(lm.toList).contains(key))

    decreases(lm.toList.size)
    lemmaInGenMapThenLongMapContainsHash(lm, key, hashF)
    ListLongMapLemmas.lemmaGetValueImpliesTupleContained(lm, hashF.hash(key), lm.apply(hashF.hash(key)))
    ListSpecs.forallContained(lm.toList, (k, v) => noDuplicateKeys(v), (hashF.hash(key), lm.apply(hashF.hash(key))))

    if (getPair(lm.apply(hashF.hash(key)), key).isEmpty) {
      val l = lm.apply(hashF.hash(key))
      lemmaNotInItsHashBucketThenNotInMap(lm, key, hashF)
      check(false)
    }
    check(getPair(lm.apply(hashF.hash(key)), key).isDefined)

  }.ensuring (_ => {
    lemmaInGenMapThenLongMapContainsHash(lm, key, hashF)
    ListLongMapLemmas.lemmaGetValueImpliesTupleContained(lm, hashF.hash(key), lm.apply(hashF.hash(key)))
    ListSpecs.forallContained(lm.toList, (k, v) => noDuplicateKeys(v), (hashF.hash(key), lm.apply(hashF.hash(key))))
    getPair(lm.apply(hashF.hash(key)), key).isDefined
  })

  @opaque
  @inlineOnce
  @ghost
  def lemmaNotInItsHashBucketThenNotInMap[K, V](lm: ListLongMap[List[(K, V)]], key: K, hashF: Hashable[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(lm.contains(hashF.hash(key)))
    require(!containsKey(lm.apply(hashF.hash(key)), key))

    decreases(lm.toList.size)
    lm.toList match {
      case Cons(hd, tl) if hd._1 == hashF.hash(key) =>
        lemmaHashNotInLongMapThenNotInGenerated(lm.tail, key, hashF)
        lemmaAddToMapFromBucketContainsIIFInAccOrL(hd._2, extractMap(tl), key)
      case Cons(hd, tl) =>
        assert(hd._1 != hashF.hash(key))
        lemmaNotSameHashThenCannotContainKey(lm, key, hd._1, hashF)
        lemmaAddToMapFromBucketContainsIIFInAccOrL(hd._2, extractMap(tl), key)
        lemmaNotInItsHashBucketThenNotInMap(lm.tail, key, hashF)
      case Nil() => ()
    }

  }.ensuring (_ => !extractMap(lm.toList).contains(key))

  @opaque
  @inlineOnce
  @ghost
  def lemmaInGenMapThenLongMapContainsHash[K, V](lm: ListLongMap[List[(K, V)]], key: K, hashF: Hashable[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(extractMap(lm.toList).contains(key))
    decreases(lm.toList.size)

    val hash = hashF.hash(key)

    if (!lm.contains(hashF.hash(key))) {
      lemmaHashNotInLongMapThenNotInGenerated(lm, key, hashF)
      check(!extractMap(lm.toList).contains(key))
      check(false)
    }

  }.ensuring (_ => lm.contains(hashF.hash(key)))

  @opaque
  @inlineOnce
  @ghost
  def lemmaHashNotInLongMapThenNotInGenerated[K, V](lm: ListLongMap[List[(K, V)]], key: K, hashF: Hashable[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(!lm.contains(hashF.hash(key)))
    decreases(lm.toList.size)

    lm.toList match {
      case Cons(hd, tl) =>
        lemmaAddToMapFromBucketContainsIIFInAccOrL(hd._2, extractMap(tl), key)
        lemmaNotSameHashThenCannotContainKey(lm, key, hd._1, hashF)
        lemmaHashNotInLongMapThenNotInGenerated(lm.tail, key, hashF)
      case Nil() => ()
    }

  }.ensuring (_ => !extractMap(lm.toList).contains(key))

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
  }.ensuring (_ => (addToMapMapFromBucket(l, acc).contains(key) == (containsKey(l, key) || acc.contains(key))))

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

        check(addToMapMapFromBucket(tl, newAcc).eq(addToMapMapFromBucket(l, acc)))
        check(addToMapMapFromBucket(Cons(t, tl), newAcc).eq(addToMapMapFromBucket(tl, newAcc) + t))
        check(addToMapMapFromBucket(Cons(t, tl), newAcc).eq(addToMapMapFromBucket(tl, newAcc + t)))
        check(addToMapMapFromBucket(Cons(t, tl), newAcc).eq(addToMapMapFromBucket(tl, acc + (k, v) + t)))
        check(addToMapMapFromBucket(Cons(t, l), acc).eq(addToMapMapFromBucket(l, acc + t)))
        check(addToMapMapFromBucket(Cons(t, l), acc).eq(addToMapMapFromBucket(tl, acc + t + (k, v))))
        ListMapLemmas.addCommutativeForDiffKeys(acc, k, v, t._1, t._2)
        ListMapLemmas.addCommutativeForDiffKeys(acc, t._1, t._2, k, v)
        check((acc + t + (k, v)).eq(acc + (k, v) + t))
        lemmaAddToMapFromBucketPreservesEquivalence(acc + (k, v) + t, acc + t + (k, v), tl)
        check(addToMapMapFromBucket(Cons(t, l), acc).eq(addToMapMapFromBucket(tl, acc + (k, v) + t)))
        check(addToMapMapFromBucket(Cons(t, l), acc).eq(addToMapMapFromBucket(l, acc) + t))
    }

  }.ensuring (_ => addToMapMapFromBucket(Cons(t, l), acc).eq(addToMapMapFromBucket(l, acc) + t))



  @opaque
  @inlineOnce
  @ghost
  def lemmaExtractMapPreservesMapping[K, V](lm: ListLongMap[List[(K, V)]], key: K, value: V, hashF: Hashable[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(extractMap(lm.toList).contains(key))
    require({
      lemmaInGenericMapThenInLongMap(lm, key, hashF)
      lemmaInLongMapThenContainsKeyBiggerList(lm, key, hashF)
      getValue(lm.toList, key) == value
    })
    decreases(lm.toList.size)

    lm.toList match {
      case Cons(hd, tl) =>
        if (containsKey(hd._2, key)) {
          ListSpecs.forallContained(lm.toList, (k, v) => allKeysSameHash(v, k, hashF), (hd._1, hd._2))
          ListSpecs.forallContained(hd._2, p => hashF.hash(p._1) == hd._1, (key, value))
          lemmaHashNotInLongMapThenNotInGenerated(lm.tail, key, hashF)
          lemmaAddToMapFromBucketMaintainsMapping(hd._2, extractMap(tl), key, value)

        } else {
          check(!containsKey(hd._2, key))
          if (!lm.tail.contains(hashF.hash(key))) {
            lemmaHashNotInLongMapThenNotInGenerated(lm.tail, key, hashF)
          }
          lemmaInLongMapThenContainsKeyBiggerList(lm, key, hashF)
          lemmaListContainsThenExtractedMapContains(lm.tail, key, hashF)
          lemmaExtractMapPreservesMapping(lm.tail, key, value, hashF)
          lemmaAddToMapFromBucketMaintainsMapping(hd._2, extractMap(tl), key, value)
        }

      case Nil() => ()
    }

  }.ensuring (_ => extractMap(lm.toList).apply(key) == value)

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
  }.ensuring (_ => addToMapMapFromBucket(l, acc).apply(key) == value)

  @opaque
  @inlineOnce
  @ghost
  def lemmaInLongMapThenContainsKeyBiggerList[K, V](lm: ListLongMap[List[(K, V)]], key: K, hashF: Hashable[K]): Unit = {
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
      case Cons(hd, tl) if hd._1 == hashF.hash(key) => lemmaGetPairDefinedThenContainsKey(hd._2, key, hashF)
      case Cons(hd, tl) =>
        assert(hashF.hash(key) != hd._1)
        lemmaNotSameHashThenCannotContainKey(lm, key, hd._1, hashF)
        assert(!containsKey(hd._2, key))
        lemmaInLongMapThenContainsKeyBiggerList(lm.tail, key, hashF)
        check(containsKeyBiggerList(lm.toList, key))
      case Nil() => check(containsKeyBiggerList(lm.toList, key))

  }.ensuring (_ => containsKeyBiggerList(lm.toList, key))

  @opaque
  @inlineOnce
  @ghost
  def lemmaListContainsThenExtractedMapContains[K, V](lm: ListLongMap[List[(K, V)]], key: K, hashF: Hashable[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(containsKeyBiggerList(lm.toList, key))
    decreases(lm.toList.size)

    lm.toList match
      case Cons(hd, tl) if containsKey(hd._2, key) => {
        val v = getValue(lm.toList, key)
        lemmaInPairListHeadThenGetValueInTuple(lm, key, v, hashF)
        check(hd._2.contains((key, v)))
        check(extractMap(lm.toList) == addToMapMapFromBucket(hd._2, extractMap(tl)))
        ListSpecs.forallContained(hd._2, p => addToMapMapFromBucket(hd._2, extractMap(tl)).contains(p._1), (key, v))
      }
      case Cons(hd, tl) => {
        assert(extractMap(lm.toList) == addToMapMapFromBucket(hd._2, extractMap(tl)))
        lemmaInBiggerListButNotHeadThenTail(lm, key, hashF)
        assert(containsKeyBiggerList(tl, key))
        lemmaListContainsThenExtractedMapContains(lm.tail, key, hashF)
        assert(extractMap(tl).contains(key))
        val v = extractMap(tl).get(key).get
        val m = extractMap(tl)
        ListMapLemmas.lemmaGetValueImpliesTupleContained(extractMap(tl), key, v)
        // lemmaGetValueInExtractMapToList(tl, key, v, hashF)
        check(extractMap(tl).toList.contains((key, v)))
        ListSpecs.forallContained(extractMap(tl).toList, p => extractMap(lm.toList).contains(p._1), (key, v))
      }
      case Nil() => ()

  }.ensuring (_ => extractMap(lm.toList).contains(key))

  @opaque
  @inlineOnce
  @ghost
  def lemmaInPairListHeadThenGetValueInTuple[K, V](lm: ListLongMap[List[(K, V)]], key: K, v: V, hashF: Hashable[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(containsKeyBiggerList(lm.toList, key) && containsKey(lm.toList.head._2, key))
    require(v == getValue(lm.toList, key))

  }.ensuring (_ => lm.toList.head._2.contains((key, v)))

  @opaque
  @inlineOnce
  @ghost
  def lemmaGetValueEquivToGetPair[K, V](lm: ListLongMap[List[(K, V)]], key: K, v: V, hashF: Hashable[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(containsKeyBiggerList(lm.toList, key))
    require({
      lemmaListContainsThenExtractedMapContains(lm, key, hashF)
      lemmaInGenMapThenLongMapContainsHash(lm, key, hashF)
      ListLongMapLemmas.lemmaGetValueImpliesTupleContained(lm, hashF.hash(key), lm.apply(hashF.hash(key)))
      ListSpecs.forallContained(lm.toList, (k, v) => noDuplicateKeys(v), (hashF.hash(key), lm.apply(hashF.hash(key))))
      lemmaInGenMapThenGetPairDefined(lm, key, hashF)
      getPair(lm.apply(hashF.hash(key)), key).get._2 == v
    })
    decreases(lm.toList.size)

    lm.toList match {
      case Cons(hd, tl) if hd._1 == hashF.hash(key) =>
        ListSpecs.forallContained(lm.toList, (k, v) => allKeysSameHash(v, k, hashF), (hd._1, hd._2))
        if (!containsKey(hd._2, key)) {
          lemmaNotInItsHashBucketThenNotInMap(lm, key, hashF)
          lemmaListContainsThenExtractedMapContains(lm, key, hashF)
          check(false)
        }
      case Cons(hd, tl) =>
        lemmaNotSameHashThenCannotContainKey(lm, key, hd._1, hashF)
        assert(!containsKey(hd._2, key))
        lemmaInBiggerListButNotHeadThenTail(lm, key, hashF)
        lemmaGetValueEquivToGetPair(lm.tail, key, v, hashF)
      case Nil() => ()
    }

  }.ensuring (_ => getValue(lm.toList, key) == v)
  @opaque
  @inlineOnce
  @ghost
  def lemmaInBiggerListButNotHeadThenTail[K, V](lm: ListLongMap[List[(K, V)]], key: K, hashF: Hashable[K]): Unit = {
    require(lm.toList.forall((k, v) => noDuplicateKeys(v)))
    require(allKeysSameHashInMap(lm, hashF))
    require(containsKeyBiggerList(lm.toList, key))
    require(!containsKey(lm.toList.head._2, key))
    decreases(lm.toList.size)

  }.ensuring (_ => containsKeyBiggerList(lm.toList.tail, key))

  @opaque
  @inlineOnce
  @ghost
  def lemmaGetPairDefinedThenContainsKey[K, V](l: List[(K, V)], key: K, hashF: Hashable[K]): Unit = {
    require(noDuplicateKeys(l))
    require(getPair(l, key).isDefined)
    decreases(l)
    l match
      case Cons(hd, tl) if hd._1 == key => ()
      case Cons(_, tl)                  => lemmaGetPairDefinedThenContainsKey(tl, key, hashF)
      case Nil()                        => ()

  }.ensuring (_ => containsKey(l, key))

  @opaque
  @inlineOnce
  @ghost
  def lemmaNotSameHashThenCannotContainKey[K, V](lm: ListLongMap[List[(K, V)]], key: K, hash: Long, hashF: Hashable[K]): Unit = {
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
  }.ensuring (_ => !containsKey(lm.apply(hash), key))

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

  }.ensuring (_ => !l.contains((key, v)))
}

