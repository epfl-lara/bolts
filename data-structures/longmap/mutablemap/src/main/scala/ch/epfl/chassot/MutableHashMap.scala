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
      val contained = contains(key)
      val hash = hashF.hash(key)
      val currentBucket = underlying.v.apply(hash)
      val newBucket = Cons((key, v), removePairForKey(currentBucket, key))
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
      val newBucket = removePairForKey(currentBucket, key)
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
      case Cons(hd, tl) if hd._1 == key =>         tl
      case Cons(hd, tl)                 =>   Cons(hd, removePairForKey(tl, key))
      case Nil()                        => Nil()
  } ensuring (res => !containsKey(res, key) )

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

  // ------------------------------------------------------

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
          if(!lm.tail.contains(hashF.hash(key))) {
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
        if(!containsKey(hd._2, key)) {
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
