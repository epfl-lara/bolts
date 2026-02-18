/** Author: Samuel Chassot
  */

package com.mutablemaps.map

import stainless.annotation._
import stainless.collection._
import stainless.equations._
import stainless.lang._
import stainless.proof.check
import scala.annotation.tailrec
import stainless.collection.ListOps.noDuplicate

// Uncomment the following import to run benchmarks
// import OptimisedChecks.*

case class ListMap[K, B](toList: List[(K, B)]) {
  require(TupleListOpsGenK.invariantList(toList))

  def isEmpty: Boolean = {
    toList.isEmpty
  }.ensuring(res => toList.size >= Int.MaxValue || res == (size == 0))

  def eq(other: ListMap[K, B]): Boolean = toList.content == other.toList.content

  def head: (K, B) = {
    require(!isEmpty)
    toList.head
  }

  def size: Int = {
    require(toList.size < Integer.MAX_VALUE)
    TupleListOpsGenK.intSize(toList)
  }

  @pure
  def nKeys: Int = {
    require(toList.size < Integer.MAX_VALUE)
    TupleListOpsGenK.intSizeKeys(TupleListOpsGenK.getKeysList(toList))
  }

  def tail: ListMap[K, B] = {
    require(!isEmpty)
    ListMap(toList.tail)
  }

  def contains(key: K): Boolean = {
    val res = TupleListOpsGenK.containsKey(toList, key)
    if (res) {
      TupleListOpsGenK.lemmaContainsKeyImpliesGetValueByKeyDefined(toList, key)
      TupleListOpsGenK.lemmaInListThenGetKeysListContains(toList, key)
      if (this.keys().contains(key)) {
        TupleListOpsGenK.lemmaInGetKeysListThenContainsKey(toList, key)
        // check(false)
      }
    } else {
      if (this.keys().contains(key)) {
        TupleListOpsGenK.lemmaInGetKeysListThenContainsKey(toList, key)
        TupleListOpsGenK.lemmaInListThenGetKeysListContains(toList, key)
      }
      if (this.get(key).isDefined) {
        TupleListOpsGenK.lemmaGetValueByKeyIsDefinedImpliesContainsKey(toList, key)
        check(false)
      }
    }
    res

  }.ensuring(res =>
    (!res && !this.keys().contains(key) && !this.keys().contains(key) && this.get(key).isEmpty)
      ||
        (res && this.get(key).isDefined && this.keys().contains(key))
  )

  @inline
  def get(key: K): Option[B] = {
    TupleListOpsGenK.getValueByKey(toList, key)
  }

  @inline
  def keysOf(value: B): List[K] = {
    TupleListOpsGenK.getKeysOf(toList, value)
  }

  def keys(): List[K] = {
    TupleListOpsGenK.getKeysList(toList)
  }.ensuring(res =>
    noDuplicate(res)
      && res.length == this.toList.length
      && res.forall(k => TupleListOpsGenK.containsKey(this.toList, k))
      && res.content == this.toList.map(_._1).content
  )

  def apply(key: K): B = {
    require(contains(key))
    get(key).get
  }

  def +(keyValue: (K, B)): ListMap[K, B] = {
    val newList =
      TupleListOpsGenK.insertNoDuplicatedKeys(toList, keyValue._1, keyValue._2)

    TupleListOpsGenK.lemmaContainsTupThenGetReturnValue(
      newList,
      keyValue._1,
      keyValue._2
    )
    ListMap(newList)

  }.ensuring(res =>
    res.contains(keyValue._1) && res.get(keyValue._1) == Some[B](
      keyValue._2
    ) && res.toList.contains(keyValue)
  )

  def ++(keyValues: List[(K, B)]): ListMap[K, B] = {
    decreases(keyValues)
    keyValues match {
      case Nil()                => this
      case Cons(keyValue, rest) => (this + keyValue) ++ rest
    }
  }
  def -(key: K): ListMap[K, B] = {
    ListMap(TupleListOpsGenK.removePresrvNoDuplicatedKeys(toList, key))
  }.ensuring(res =>
    !res.contains(key)
      && this.keys().content - key == res.keys().content
  )

  def --(keys: List[K]): ListMap[K, B] = {
    decreases(keys)
    keys match {
      case Nil()           => this
      case Cons(key, rest) => (this - key) -- rest
    }
  }
  @inline
  def forall(p: ((K, B)) => Boolean): Boolean = {
    toList.forall(p)
  }

  /**
    * This lemma proves that a property `p` that holds for all pairs of the map holds for a key and its value.
    * 
    * Useful to build caches using this map.
    *
    * @param k
    * @param p
    */
  @opaque
  @inlineOnce
  @ghost
  def lemmaForallPairsThenForLookup(k: K, p: ((K, B)) => Boolean): Unit = {
    require(TupleListOpsGenK.invariantList(toList))
    require(this.forall(p))
    require(this.contains(k))

    TupleListOpsGenK.lemmaGetValueByKeyImpliesContainsTuple(this.toList, k, this.apply(k))
    assert(this.toList.contains((k, this.apply(k))))
    assert(this.toList.forall(p))
    ListSpecs.forallContained(this.toList, p, (k, this.apply(k)))
  }.ensuring(_ => p((k, this.apply(k))))


  /**
    * This lemma proves that inserting a new pair preserves the property `p` that holds for all pairs of the map.
    * 
    * Useful to build caches using this map.
    *
    * @param k
    * @param v
    * @param p
    */
  @opaque
  @inlineOnce
  @ghost
  def lemmaUpdatePreservesForallPairs(k: K, v: B, p: ((K, B)) => Boolean): Unit = {
    require(TupleListOpsGenK.invariantList(toList))
    require(this.forall(p))
    require(p((k, v)))

    val mapAfter = this + (k, v)
    
    TupleListOpsGenK.lemmaInsertNoDuplicatedKeysPreservesForall(this.toList, k, v, p)
  }.ensuring(_ => (this + (k, v)).forall(p))

  /**
    * This lemma proves that removing a pair preserves the property `p` that holds for all pairs of the map.
    * 
    * Useful to build caches using this map.
    *
    * @param k
    * @param p
    */
  @opaque
  @inlineOnce
  @ghost
  def lemmaRemovePreservesForallPairs(k: K, p: ((K, B)) => Boolean): Unit = {
    require(TupleListOpsGenK.invariantList(this.toList))
    require(this.forall(p))

    val mapAfter = this - k
    TupleListOpsGenK.lemmaForallSubset(mapAfter.toList, this.toList, p)
  }.ensuring(_ => (this - k).forall(p))
}

object TupleListOpsGenK {

  // @inline
  def invariantList[K, B](l: List[(K, B)]): Boolean = {
    noDuplicatedKeys(l)
  }

  def getKeysList[K, B](l: List[(K, B)]): List[K] = {
    require(invariantList(l))
    decreases(l)
    l match {
      case Cons(head, tl) =>
        if (containsKey(tl, head._1)) {
          check(false)
        }
        if (getKeysList(tl).contains(head._1)) {
          ListSpecs.forallContained(getKeysList(tl), k => containsKey(tl, k), head._1)
          check(false)
        }
        assert(noDuplicate(getKeysList(tl)) && getKeysList(tl).forall(k => containsKey(tl, k)))
        assert(noDuplicate(Cons(head._1, getKeysList(tl))))
        assert(getKeysList(tl).forall(k => containsKey(tl, k)))
        lemmaForallContainsAddHeadPreserves(tl, getKeysList(tl), head)
        assert(getKeysList(tl).forall(k => containsKey(Cons(head, tl), k)))
        assert(Cons(head._1, getKeysList(tl)).forall(k => containsKey(Cons(head, tl), k)))
        Cons(head._1, getKeysList(tl))
      case Nil() => Nil[K]()
    }
  }.ensuring(res =>
    noDuplicate(res)
      && res.length == l.length
      && res.forall(k => containsKey(l, k))
      && res.content == l.map(_._1).content
  )

  @pure
  def intSizeKeys[K](l: List[K]): Int = {
    require(l.length < Integer.MAX_VALUE)
    decreases(l)

    l match {
      case Cons(head, tl) => 1 + intSizeKeys(tl)
      case Nil()          => 0
    }
  }

  def intSize[K, B](l: List[(K, B)]): Int = {
    decreases(l)
    l match {
      case Cons(head, tl) => {
        val s1 = intSize(tl)
        if (s1 < Integer.MAX_VALUE) {
          1 + s1
        } else {
          Integer.MAX_VALUE
        }
      }

      case Nil() => 0
    }
  }.ensuring(res => res >= 0 && (l.isEmpty == (res == 0)))

  def getKeysOf[K, B](l: List[(K, B)], value: B): List[K] = {
    require(invariantList(l))
    decreases(l)

    l match {
      case Cons(head, tl) if (head._2 == value) => {
        if (!getKeysOf(tl, value).isEmpty) {
          lemmaForallGetValueByKeySameWithADiffHead(
            tl,
            getKeysOf(tl, value),
            value,
            head
          )

        }
        Cons(head._1, getKeysOf(tl, value))
      }
      case Cons(head, tl) if (head._2 != value) => {
        val r = getKeysOf(tl, value)
        if (!getKeysOf(tl, value).isEmpty) {
          lemmaForallGetValueByKeySameWithADiffHead(
            tl,
            getKeysOf(tl, value),
            value,
            head
          )
        }
        getKeysOf(tl, value)
      }
      case Nil() => Nil[K]()
    }

  }.ensuring(res => res.forall(getValueByKey(l, _) == Some[B](value)))

  def filterByValue[K, B](l: List[(K, B)], value: B): List[(K, B)] = {
    require(invariantList(l))
    decreases(l)

    l match {
      case Cons(head, tl) if (head._2 == value) =>
        val res = head :: filterByValue(tl, value)
        if (containsKey(filterByValue(tl, value), head._1)) {
          assert(ListSpecs.subseq(filterByValue(tl, value), tl))
          lemmaContainsKeyImpliesGetValueByKeyDefined(filterByValue(tl, value), head._1)
          val va = getValueByKey(filterByValue(tl, value), head._1).get
          lemmaGetValueByKeyImpliesContainsTuple(filterByValue(tl, value), head._1, va)
          ListSpecs.subseqContains(filterByValue(tl, value), tl, (head._1, va))
          assert(tl.contains((head._1, va)))
          lemmaContainsTupleThenContainsKey(tl, head._1, va)
          assert(containsKey(tl, head._1))
          check(false)
        }
        assert(!containsKey(filterByValue(tl, value), head._1))
        res
      case Cons(head, tl) if (head._2 != value) =>
        val res = filterByValue(tl, value)
        res
      case Nil() => Nil[(K, B)]()
    }
  }.ensuring(res => res.forall(_._2 == value) && ListSpecs.subseq(res, l) && invariantList(res))

  def getValueByKey[K, B](l: List[(K, B)], key: K): Option[B] = {
    require(invariantList(l))
    decreases(l)

    l match {
      case Cons(head, tl) if (head._1 == key) => Some[B](head._2)
      case Cons(head, tl) if (head._1 != key) => getValueByKey(tl, key)
      case Nil()                              => None[B]()
    }

  }

  def insertNoDuplicatedKeys[K, B](
      l: List[(K, B)],
      newKey: K,
      newValue: B
  ): List[(K, B)] = {
    require(invariantList(l))
    decreases(l)

    l match {
      case Cons(head, tl) if (head._1 == newKey) =>
        lemmaSubseqRefl(getKeysList(l))
        (newKey, newValue) :: tl
      case Cons(head, tl) if (!containsKey(l, newKey)) => (newKey, newValue) :: l
      case Cons(head, tl) =>
        assert(containsKey(tl, newKey))
        val res = head :: insertNoDuplicatedKeys(tl, newKey, newValue)
        if (containsKey(insertNoDuplicatedKeys(tl, newKey, newValue), head._1)) {
          assert(head._1 != newKey)
          assert(getKeysList(tl).content ++ Set(newKey) == getKeysList(insertNoDuplicatedKeys(tl, newKey, newValue)).content)
          lemmaInListThenGetKeysListContains(insertNoDuplicatedKeys(tl, newKey, newValue), head._1)
          assert(getKeysList(insertNoDuplicatedKeys(tl, newKey, newValue)).contains(head._1))
          assert(getKeysList(tl).contains(head._1))
          lemmaInGetKeysListThenContainsKey(tl, head._1)
          assert(containsKey(tl, head._1))
          check(false)
        }
        assert(invariantList(res))
        assert(containsKey(res, newKey))
        assert(res.contains((newKey, newValue)))
        res
      case Nil() => (newKey, newValue) :: Nil()
    }
  }.ensuring(res =>
    invariantList(res) && containsKey(res, newKey) &&
      res.contains((newKey, newValue)) &&
      getKeysList(res).content == getKeysList(l).content ++ Set(newKey)
  )

  def removePresrvNoDuplicatedKeys[K, B](
      l: List[(K, B)],
      key: K
  ): List[(K, B)] = {
    require(invariantList(l))
    decreases(l)
    l match {
      case Cons(head, tl) if (head._1 == key) =>
        if (containsKey(l, key)) {
          val h = (key, getValueByKey(l, key).get)
          assert(l.head == (key, getValueByKey(l, key).get))
          if (tl.contains(h)) {
            lemmaContainsTupleThenContainsKey(tl, h._1, h._2)
            check(false)
          }
          assert(!tl.contains(head))
          check(tl.content == l.content - (key, getValueByKey(l, key).get))
        } else {
          check(tl.content == l.content)
        }
        tl
      case Cons(head, tl) if (head._1 != key) =>
        val res = head :: removePresrvNoDuplicatedKeys(tl, key)
        if (getKeysList(tl).contains(head._1)) {
          lemmaInGetKeysListThenContainsKey(tl, head._1)
          check(false)
        }
        if (containsKey(removePresrvNoDuplicatedKeys(tl, key), head._1)) {
          lemmaInListThenGetKeysListContains(removePresrvNoDuplicatedKeys(tl, key), head._1)
          check(false)
        }
        res
      case Nil() => Nil[(K, B)]()
    }
  }.ensuring(res =>
    invariantList(res) &&
      !containsKey(res, key) &&
      getKeysList(res).content == getKeysList(l).content -- Set(key) &&
      (if (containsKey(l, key)) {
         lemmaContainsKeyImpliesGetValueByKeyDefined(l, key)
         res.content == l.content - (key, getValueByKey(l, key).get)
       } else {
         res.content == l.content
       })
  )

  def noDuplicatedKeys[K, B](l: List[(K, B)]): Boolean = {
    decreases(l)
    l match {
      case Nil()                                  => true
      case Cons(_, Nil())                         => true
      case Cons(h1, t) if (containsKey(t, h1._1)) => false
      case Cons(_, t)                             => noDuplicatedKeys(t)
    }
  }

  def containsKey[K, B](l: List[(K, B)], key: K): Boolean = {
    decreases(l)
    l match {
      case Cons(head, _) if (head._1 == key) => true
      case Cons(_, tl)                       => containsKey(tl, key)
      case Nil()                             => false

    }
  }

  // ----------- LEMMAS -----------------------------------------------------

  @opaque
  @inlineOnce
  def lemmaRemoveFromListThenKeysSetRemove[K, B](l: List[(K, B)], key: K): Unit = {
    require(invariantList(l))
    decreases(l)
    l match {
      case Cons(head, tl) if (head._1 == key) =>
        if (containsKey(l, key)) {
          val h = (key, getValueByKey(l, key).get)
          assert(l.head == (key, getValueByKey(l, key).get))
          if (tl.contains(h)) {
            lemmaContainsTupleThenContainsKey(tl, h._1, h._2)
            check(false)
          }
          assert(!tl.contains(head))
          check(tl.content == l.content - (key, getValueByKey(l, key).get))
        } else {
          check(tl.content == l.content)
        }
      case Cons(head, tl) if (head._1 != key) =>
        lemmaRemoveFromListThenKeysSetRemove(tl, key)
        if (getKeysList(tl).contains(head._1)) {
          lemmaInGetKeysListThenContainsKey(tl, head._1)
          check(false)
        }
        if (containsKey(removePresrvNoDuplicatedKeys(tl, key), head._1)) {
          lemmaInListThenGetKeysListContains(removePresrvNoDuplicatedKeys(tl, key), head._1)
          check(false)
        }
      case Nil() => ()
    }
  }.ensuring(_ => getKeysList(l).content - key == getKeysList(removePresrvNoDuplicatedKeys(l, key)).content)

  @opaque
  @inlineOnce
  def lemmaEqMapSameKeysSet[K, B](lm1: ListMap[K, B], lm2: ListMap[K, B]): Unit = {
    require(lm1.eq(lm2))
    assert(lm1.toList.content == lm2.toList.content)
    ListSpecs.subsetRefl(lm1.toList)
    ListSpecs.subsetRefl(lm2.toList)
    lemmaSubsetThenKeysSubset(lm1.toList, lm2.toList)
    lemmaSubsetThenKeysSubset(lm2.toList, lm1.toList)
    assert(lm1.keys().content.subsetOf(lm2.keys().content))
    assert(lm2.keys().content.subsetOf(lm1.keys().content))
  }.ensuring(_ => lm1.keys().content == lm2.keys().content)

  @opaque
  @inlineOnce
  def lemmaSubsetThenKeysSubset[K, B](l1: List[(K, B)], l2: List[(K, B)]): Unit = {
    require(invariantList(l1))
    require(invariantList(l2))
    require(l1.content.subsetOf(l2.content))
    decreases(l1)
    l1 match
      case Cons(hd, tl) =>
        lemmaSubsetThenKeysSubset(tl, l2)
        assert(getKeysList(tl).content.subsetOf(getKeysList(l2).content))
        assert(l2.contains(hd))
        lemmaMapFirstElmtContains(l2, hd)
        assert(l2.map(_._1).contains(hd._1))
        assert(getKeysList(l2).contains(hd._1))
        assert(!containsKey(tl, hd._1))
        if (getKeysList(tl).contains(hd._1)) {
          lemmaInGetKeysListThenContainsKey(tl, hd._1)
          check(false)
        }
        assert(!getKeysList(tl).contains(hd._1))
      case Nil() => ()

  }.ensuring(_ => getKeysList(l1).content.subsetOf(getKeysList(l2).content))

  @opaque
  @inlineOnce
  def lemmaMapFirstElmtContains[K, B](l: List[(K, B)], p: (K, B)): Unit = {
    require(invariantList(l))
    require(l.contains(p))
    decreases(l)
    l match {
      case Cons(head, tl) if (head != p) =>
        lemmaMapFirstElmtContains(tl, p)
      case _ => ()
    }
  }.ensuring(_ => l.map(_._1).contains(p._1))

  @opaque
  @inlineOnce
  def lemmaForallSubset[K, B](
      l1: List[(K, B)],
      l2: List[(K, B)],
      p: ((K, B)) => Boolean
  ): Unit = {
    require(invariantList(l1))
    require(invariantList(l2))
    require(l2.forall(p) && l1.content.subsetOf(l2.content))
    decreases(l1)

    l1 match {
      case Cons(head, tl) =>
        ListSpecs.subsetContains(l1, l2)
        ListSpecs.forallContained(l1, l2.contains, head)
        ListSpecs.forallContained(l2, p, head)
        assert(l2.contains(head))
        lemmaForallSubset(tl, l2, p)
        assert(tl.forall(p))
        assert(p(head))
      case Nil() => ()
    }
  }.ensuring(_ => l1.forall(p))

  @opaque
  @inlineOnce
  def lemmaInsertNoDuplicatedKeysPreservesForall[K, B](
      l: List[(K, B)],
      key: K,
      value: B,
      p: ((K, B)) => Boolean
  ): Unit = {
    require(invariantList(l))
    require(l.forall(p))
    require(p((key, value)))
    decreases(l)

    l match {
      case Cons(head, tl) if (head._1 != key) =>
        lemmaInsertNoDuplicatedKeysPreservesForall(tl, key, value, p)
      case _ => ()
    }

  }.ensuring(_ => insertNoDuplicatedKeys(l, key, value).forall(p))

  @opaque
  @inlineOnce
  def lemmaContainsTwoDifferentTuplesSameKeyImpossible[K, B](
      l: List[(K, B)],
      key: K,
      v1: B,
      v2: B
  ): Unit = {
    require(l.contains((key, v1)) && l.contains((key, v2)))
    require(invariantList(l))
    decreases(l)

    l match {
      case Cons(head, tl) if (head._1 != key) =>
        lemmaContainsTwoDifferentTuplesSameKeyImpossible(tl, key, v1, v2)
      case Cons(head, tl) if (head._1 == key) =>
        if (head._2 == v1) {
          if (v1 != v2) {
            lemmaContainsTupleThenContainsKey(tl, key, v2)
            check(false)
          }
        } else {
          if (head._2 != v2) {
            lemmaContainsTupleThenContainsKey(tl, key, v2)
            lemmaContainsTupleThenContainsKey(tl, key, v1)
            check(false)
          }
          assert(head._2 == v2)
          if (v1 != v2) {
            lemmaContainsTupleThenContainsKey(tl, key, v1)
            check(false)
          }
        }
      case _ => ()
    }
  }.ensuring(_ => v1 == v2)

  @opaque
  @inlineOnce
  def lemmaInListThenGetKeysListContains[K, B](l: List[(K, B)], key: K): Unit = {
    require(invariantList(l))
    require(containsKey(l, key))
    decreases(l)

    l match {
      case Cons(head, tl) if (head._1 != key) =>
        lemmaInListThenGetKeysListContains(tl, key)
      case _ => ()
    }
  }.ensuring(_ => getKeysList(l).contains(key))

  @inlineOnce
  @opaque
  def lemmaInGetKeysListThenContainsKey[K, B](l: List[(K, B)], key: K): Unit = {
    require(invariantList(l))
    require(getKeysList(l).contains(key))
    decreases(l)

    l match {
      case Cons(head, tl) if (head._1 != key) =>
        lemmaInGetKeysListThenContainsKey(tl, key)
      case _ => ()
    }
  }.ensuring(_ => containsKey(l, key))

  @inlineOnce
  @opaque
  def lemmaSubseqRefl[B](l: List[B]): Unit = {
    decreases(l.size)
    l match {
      case Nil()        => ()
      case Cons(hd, tl) => lemmaSubseqRefl(tl)
    }
  }.ensuring(_ => ListSpecs.subseq(l, l))

  @opaque
  @inlineOnce
  def lemmaForallContainsAddHeadPreserves[K, B](l: List[(K, B)], keys: List[K], other: (K, B)): Unit = {
    require(invariantList(l))
    require(keys.forall(k => containsKey(l, k)))
    require(!containsKey(l, other._1))
    decreases(keys)

    keys match {
      case Cons(head, tl) => {
        lemmaAddHeadStillContainsKey(l, other._1, other._2, head)
        lemmaForallContainsAddHeadPreserves(l, tl, other)
      }
      case _ => ()
    }

  }.ensuring(_ => keys.forall(k => containsKey(Cons(other, l), k)))

  @opaque
  @inlineOnce
  def lemmaGetValueByKeyImpliesContainsTuple[K, B](l: List[(K, B)], key: K, v: B): Unit = {
    require(invariantList(l))
    require(getValueByKey(l, key) == Some[B](v))
    decreases(l)
    l match {
      case Cons(head, tl) if (head._1 != key) =>
        lemmaGetValueByKeyImpliesContainsTuple(tl, key, v)
      case _ => ()
    }
  }.ensuring(_ => l.contains((key, v)))

  @opaque
  @inlineOnce
  def lemmaInsertAndremovePresrvNoDuplicatedKeysCommutative[K, B](
      l: List[(K, B)],
      key1: K,
      v1: B,
      key2: K
  ): Unit = {
    require(key1 != key2)
    require(invariantList(l))
    decreases(l)

    l match {
      case Cons(head, tl) => {
        lemmaInsertAndremovePresrvNoDuplicatedKeysCommutative(tl, key1, v1, key2)
      }
      case _ => ()
    }

  }.ensuring(_ =>
    insertNoDuplicatedKeys(
      removePresrvNoDuplicatedKeys(l, key2),
      key1,
      v1
    ) == removePresrvNoDuplicatedKeys(
      insertNoDuplicatedKeys(l, key1, v1),
      key2
    )
  )

  @opaque
  @inlineOnce
  def lemmainsertNoDuplicatedKeysThenRemoveIsSame[K, B](
      l: List[(K, B)],
      key1: K,
      v1: B
  ): Unit = {
    require(invariantList(l))
    require(!containsKey(l, key1))
    decreases(l)

    l match {
      case Cons(head, tl) => {
        lemmaTailStillNotContainsKey(l, key1)
        lemmainsertNoDuplicatedKeysThenRemoveIsSame(tl, key1, v1)
      }
      case _ => ()
    }

  }.ensuring(_ => removePresrvNoDuplicatedKeys(insertNoDuplicatedKeys(l, key1, v1), key1) == l)

  @opaque
  @inlineOnce
  def lemmaRemoveTheninsertNoDuplicatedKeysIsSameAsInsert[K, B](
      l: List[(K, B)],
      key1: K,
      v1: B
  ): Unit = {
    require(invariantList(l))
    decreases(l)

    l match {
      case Cons(head, tl) if (head._1 == key1) => ()
      case Cons(head, tl) => {
        lemmaRemoveTheninsertNoDuplicatedKeysIsSameAsInsert(tl, key1, v1)
      }
      case _ => ()
    }

  }.ensuring(_ => insertNoDuplicatedKeys(removePresrvNoDuplicatedKeys(l, key1), key1, v1).content == insertNoDuplicatedKeys(l, key1, v1).content)

  @opaque
  @inlineOnce
  def lemmainsertNoDuplicatedKeysCommutative[K, B](
      l: List[(K, B)],
      key1: K,
      v1: B,
      key2: K,
      v2: B
  ): Unit = {
    require(key1 != key2)
    require(invariantList(l))
    decreases(l)

    l match {
      case Cons(head, tl) if (head._1 == key1) => ()
      case Cons(head, tl) => {
        lemmainsertNoDuplicatedKeysCommutative(tl, key1, v1, key2, v2)
      }
      case _ => ()
    }

  }.ensuring(_ =>
    insertNoDuplicatedKeys(
      insertNoDuplicatedKeys(l, key1, v1),
      key2,
      v2
    ).content == insertNoDuplicatedKeys(
      insertNoDuplicatedKeys(l, key2, v2),
      key1,
      v1
    ).content
  )

  @opaque
  @inlineOnce
  def lemmaremovePresrvNoDuplicatedKeysCommutative[K, B](
      l: List[(K, B)],
      key1: K,
      key2: K
  ): Unit = {
    require(invariantList(l))
    decreases(l)

    l match {
      case Cons(head, tl) => {
        lemmaremovePresrvNoDuplicatedKeysCommutative(tl, key1, key2)
      }
      case _ => ()
    }

  }.ensuring(_ =>
    removePresrvNoDuplicatedKeys(
      removePresrvNoDuplicatedKeys(l, key1),
      key2
    ) == removePresrvNoDuplicatedKeys(
      removePresrvNoDuplicatedKeys(l, key2),
      key1
    )
  )

  @opaque
  @inlineOnce
  def lemmaremovePresrvNoDuplicatedKeysNotPresentPreserves[K, B](
      l: List[(K, B)],
      key: K
  ): Unit = {
    require(invariantList(l))
    require(!containsKey(l, key))
    decreases(l)

    l match {
      case Cons(head, tl) => {
        lemmaTailStillNotContainsKey(l, key)
        assert(!containsKey(tl, key))
        lemmaremovePresrvNoDuplicatedKeysNotPresentPreserves(tl, key)
      }
      case _ => ()
    }

  }.ensuring(_ => removePresrvNoDuplicatedKeys(l, key) == l)

  @opaque
  @inlineOnce
  def lemmainsertNoDuplicatedKeysErasesIfSameKey[K, B](
      l: List[(K, B)],
      key1: K,
      v1: B,
      v2: B
  ): Unit = {
    require(invariantList(l))
    decreases(l)

    l match {
      case Cons(head, tl) => {
        lemmainsertNoDuplicatedKeysErasesIfSameKey(tl, key1, v1, v2)
      }
      case _ => ()
    }

  }.ensuring(_ =>
    insertNoDuplicatedKeys(
      insertNoDuplicatedKeys(l, key1, v1),
      key1,
      v2
    ) == insertNoDuplicatedKeys(
      l,
      key1,
      v2
    )
  )

  @opaque
  @inlineOnce
  def lemmaAddNewKeyIncrementSize[K, B](
      l: List[(K, B)],
      key: K,
      value: B
  ): Unit = {
    require(invariantList(l))
    require(!containsKey(l, key))
    decreases(l)

    val inserted = insertNoDuplicatedKeys(l, key, value)
    l match {
      case Cons(head, tl) if (head._1 != key) => {
        lemmaAddNewKeyIncrementSize(tl, key, value)

      }
      case Cons(head, tl) if (head._1 == key) => check(false)
      case _                                  =>
    }

  }.ensuring(_ => insertNoDuplicatedKeys(l, key, value).length == l.length + 1)

  @opaque
  @inlineOnce
  def lemmaAddExistingKeyPreservesSize[K, B](
      l: List[(K, B)],
      key: K,
      value: B
  ): Unit = {
    decreases(l)
    require(invariantList(l))
    require(containsKey(l, key))

    val inserted = insertNoDuplicatedKeys(l, key, value)
    l match {
      case Cons(head, tl) if (head._1 != key) => {
        lemmaAddExistingKeyPreservesSize(tl, key, value)
      }
      case Cons(head, tl) if (head._1 == key) => {
        assert(inserted == Cons((key, value), tl))
      }
      case _ =>
    }

  }.ensuring(_ => insertNoDuplicatedKeys(l, key, value).length == l.length)

  @opaque
  @inlineOnce
  def lemmaGetValueByKeyIsDefinedImpliesContainsKey[K, B](
      l: List[(K, B)],
      key: K
  ): Unit = {
    require(invariantList(l) && getValueByKey(l, key).isDefined)
    decreases(l)
    l match {
      case Cons(head, tl) if (head._1 != key) =>
        lemmaGetValueByKeyIsDefinedImpliesContainsKey(tl, key)
        lemmaAddHeadStillContainsKey(tl, head._1, head._2, key)
      case _ => ()
    }
  }.ensuring(_ => containsKey(l, key))

  @opaque
  @inlineOnce
  def lemmaContainsKeyImpliesGetValueByKeyDefined[K, B](
      l: List[(K, B)],
      key: K
  ): Unit = {
    require(invariantList(l))
    require(containsKey(l, key))
    decreases(l)
    l match {
      case Cons(head, tl) if (head._1 != key) =>
        lemmaContainsKeyImpliesGetValueByKeyDefined(tl, key)
      case _ => ()
    }
  }.ensuring(_ => getValueByKey(l, key).isDefined)

  @opaque
  @inlineOnce
  def lemmaForallGetValueByKeySameWithADiffHead[K, B](
      l: List[(K, B)],
      keys: List[K],
      value: B,
      newHead: (K, B)
  ): Unit = {
    require(invariantList(l))
    require(!l.isEmpty)
    require(keys.forall(getValueByKey(l, _) == Some[B](value)))
    require(!containsKey(l, newHead._1))
    decreases(keys)

    keys match {
      case Cons(head, tl) => {
        lemmaGetValueByKeyIsDefinedImpliesContainsKey(l, head)
        lemmaAddHeadStillContainsKey(l, newHead._1, newHead._2, head)
        lemmaContainsKeyImpliesGetValueByKeyDefined(Cons(newHead, l), head)
        lemmaForallGetValueByKeySameWithADiffHead(l, tl, value, newHead)
      }
      case _ => ()
    }

  }.ensuring(_ => keys.forall(k => getValueByKey(Cons(newHead, l), k) == Some[B](value)))

  @opaque
  @inlineOnce
  def lemmaAddHeadStillContainsKey[K, B](
      l: List[(K, B)],
      key: K,
      value: B,
      test: K
  ): Unit = {
    require(invariantList(l))
    require(containsKey(l, test))
    require(!containsKey(l, key))
    decreases(l)

    l match {
      case Cons(head, tl) if (head._1 != test) =>
        lemmaAddHeadStillContainsKey(tl, key, value, test)
      case _ => ()
    }

  }.ensuring(_ => containsKey(Cons((key, value), l), test))

  @opaque
  @inlineOnce
  def lemmaTailStillNotContainsKey[K, B](
      l: List[(K, B)],
      test: K
  ): Unit = {
    require(invariantList(l))
    require(!containsKey(l, test))
    require(!l.isEmpty)
    decreases(l)

    l match {
      case Cons(head, Nil()) => ()
      case Cons(head, tl) if (head._1 != test) =>
        if (containsKey(tl, test)) {
          lemmaAddHeadStillContainsKey(tl, head._1, head._2, test)
          check(false)
        }
        lemmaTailStillNotContainsKey(tl, test)
      case _ => ()
    }

  }.ensuring(_ => !containsKey(l.tail, test))

  @opaque
  @inlineOnce
  def lemmainsertNoDuplicatedKeysDoesNotModifyOtherKeyValues[K, B](
      l: List[(K, B)],
      newKey: K,
      newValue: B,
      otherKey: K
  ): Unit = {
    require(invariantList(l) && newKey != otherKey)
    decreases(l)

    l match {
      case Cons(head, tl) if (head._1 != otherKey) =>
        lemmainsertNoDuplicatedKeysDoesNotModifyOtherKeyValues(
          tl,
          newKey,
          newValue,
          otherKey
        )
      case _ => ()
    }

  }.ensuring(_ =>
    containsKey(
      insertNoDuplicatedKeys(l, newKey, newValue),
      otherKey
    ) == containsKey(l, otherKey) &&
      getValueByKey(
        insertNoDuplicatedKeys(l, newKey, newValue),
        otherKey
      ) == getValueByKey(
        l,
        otherKey
      )
  )

  @opaque
  @inlineOnce
  def lemmainsertNoDuplicatedKeysDoesNotModifyOtherKeysNotContained[K, B](
      l: List[(K, B)],
      newKey: K,
      newValue: B,
      otherKey: K
  ): Unit = {
    require(invariantList(l))
    require(!containsKey(l, otherKey))
    require(otherKey != newKey)
    decreases(l)

    l match {
      case Cons(head, tl) =>
        lemmaTailStillNotContainsKey(l, otherKey)
        assert(!containsKey(tl, otherKey))
        lemmainsertNoDuplicatedKeysDoesNotModifyOtherKeysNotContained(
          tl,
          newKey,
          newValue,
          otherKey
        )
      case _ => ()
    }
  }.ensuring(_ => !containsKey(insertNoDuplicatedKeys(l, newKey, newValue), otherKey))

  @opaque
  @inlineOnce
  def lemmainsertNoDuplicatedKeysDoesNotModifyOtherKeysContained[K, B](
      l: List[(K, B)],
      newKey: K,
      newValue: B,
      otherKey: K
  ): Unit = {
    require(invariantList(l) && containsKey(l, otherKey) && otherKey != newKey)
    decreases(l)

    l match {
      case Cons(head, tl) if (head._1 != otherKey) =>
        lemmainsertNoDuplicatedKeysDoesNotModifyOtherKeysContained(
          tl,
          newKey,
          newValue,
          otherKey
        )
      case _ => ()
    }
  }.ensuring(_ => containsKey(insertNoDuplicatedKeys(l, newKey, newValue), otherKey))

  @opaque
  @inlineOnce
  def lemmainsertNoDuplicatedKeysNotContainedContent[K, B](
      l: List[(K, B)],
      newKey: K,
      newValue: B
  ): Unit = {
    require(invariantList(l))
    require(!containsKey(l, newKey))
    decreases(l)

    l match {
      case Cons(head, tl) => {
        lemmaTailStillNotContainsKey(l, newKey)
        lemmainsertNoDuplicatedKeysNotContainedContent(tl, newKey, newValue)
      }
      case _ => ()
    }

  }.ensuring(_ =>
    l.content ++ Set((newKey, newValue)) == insertNoDuplicatedKeys(
      l,
      newKey,
      newValue
    ).content
  )

  @opaque
  @inlineOnce
  def lemmaNotContainsKeyThenNotContainsTuple[K, B](
      l: List[(K, B)],
      key: K,
      value: B
  ): Unit = {
    require(invariantList(l))
    require(!containsKey(l, key))
    decreases(l)
    l match {
      case Cons(head, tl) =>
        lemmaTailStillNotContainsKey(l, key)
        lemmaNotContainsKeyThenNotContainsTuple(tl, key, value)
      case _ => ()
    }

  }.ensuring(_ => !l.contains((key, value)))

  @opaque
  @inlineOnce
  def lemmaContainsTupleThenContainsKey[K, B](
      l: List[(K, B)],
      key: K,
      value: B
  ): Unit = {
    require(invariantList(l))
    require(l.contains((key, value)))
    decreases(l)

    l match {
      case Cons(head, tl) if (head != (key, value)) =>
        lemmaContainsTupleThenContainsKey(tl, key, value)
      case _ => ()
    }
  }.ensuring(_ => containsKey(l, key))

  @opaque
  @inlineOnce
  def lemmaContainsTupThenGetReturnValue[K, B](
      l: List[(K, B)],
      key: K,
      value: B
  ): Unit = {
    require(invariantList(l) && containsKey(l, key) && l.contains((key, value)))
    decreases(l)

    l match {
      case head :: Nil() => ()
      case Cons(head, tl) if (head._1 == key) =>
        lemmaNotContainsKeyThenNotContainsTuple(tl, key, value)
      case Cons(head, tl) => lemmaContainsTupThenGetReturnValue(tl, key, value)
      case Nil()          => ()
    }
  }.ensuring(_ => getValueByKey(l, key) == Some[B](value))
}

object ListMap {
  // def apply[K, B](l: List[(K, B)])(using ord: Ordering[K]): ListMap[K, B] = ListMap(l, ord, ())
  def empty[K, B]: ListMap[K, B] = ListMap[K, B](List.empty[(K, B)])
}

object ListMapLemmas {
  import ListSpecs._

  @opaque
  @inlineOnce
  def removeNotPresentStillSame[K, B](lm: ListMap[K, B], a: K): Unit = {
    require(!lm.contains(a))
    TupleListOpsGenK.lemmaremovePresrvNoDuplicatedKeysNotPresentPreserves(lm.toList, a)
  }.ensuring(_ => lm - a == lm)

  @opaque
  @inlineOnce
  def addSameAsAddTwiceSameKeyDiffValues[K, B](
      lm: ListMap[K, B],
      a: K,
      b1: B,
      b2: B
  ): Unit = {
    TupleListOpsGenK.lemmainsertNoDuplicatedKeysErasesIfSameKey(lm.toList, a, b1, b2)
  }.ensuring(_ => lm + (a, b2) == (lm + (a, b1) + (a, b2)))

  @opaque
  @inlineOnce
  def addRemoveCommutativeForDiffKeys[K, B](
      lm: ListMap[K, B],
      a1: K,
      b1: B,
      a2: K
  ): Unit = {
    require(a1 != a2)
    TupleListOpsGenK.lemmaInsertAndremovePresrvNoDuplicatedKeysCommutative(
      lm.toList,
      a1,
      b1,
      a2
    )
  }.ensuring(_ => lm + (a1, b1) - a2 == lm - a2 + (a1, b1))

  @opaque
  @inlineOnce
  def addThenRemoveForNewKeyIsSame[K, B](
      lm: ListMap[K, B],
      a1: K,
      b1: B
  ): Unit = {
    require(!lm.contains(a1))
    TupleListOpsGenK.lemmainsertNoDuplicatedKeysThenRemoveIsSame(lm.toList, a1, b1)
  }.ensuring(_ => lm + (a1, b1) - a1 == lm)

  @opaque
  @inlineOnce
  def removeThenAddForSameKeyIsSameAsAdd[K, B](
      lm: ListMap[K, B],
      a1: K,
      b1: B
  ): Unit = {
    TupleListOpsGenK.lemmaRemoveTheninsertNoDuplicatedKeysIsSameAsInsert(lm.toList, a1, b1)
  }.ensuring(_ => (lm - a1 + (a1, b1)).eq(lm + (a1, b1)))

  @opaque
  @inlineOnce
  def removeCommutative[K, B](lm: ListMap[K, B], a1: K, a2: K): Unit = {
    TupleListOpsGenK.lemmaremovePresrvNoDuplicatedKeysCommutative(lm.toList, a1, a2)
  }.ensuring(_ => lm - a1 - a2 == lm - a2 - a1)

  @opaque
  @inlineOnce
  def addCommutativeForDiffKeys[K, B](
      lm: ListMap[K, B],
      a1: K,
      b1: B,
      a2: K,
      b2: B
  ): Unit = {
    require(a1 != a2)
    TupleListOpsGenK.lemmainsertNoDuplicatedKeysCommutative(lm.toList, a1, b1, a2, b2)
  }.ensuring(_ => (lm + (a1, b1) + (a2, b2)).eq(lm + (a2, b2) + (a1, b1)))

  @opaque
  @inlineOnce
  def addValidProp[K, B](
      lm: ListMap[K, B],
      p: ((K, B)) => Boolean,
      a: K,
      b: B
  ): Unit = {
    require(lm.forall(p) && p(a, b))
    decreases(lm.toList.size)

    if (!lm.isEmpty)
      addValidProp(lm.tail, p, a, b)

  }.ensuring { _ =>
    val nlm = lm + (a, b)
    nlm.forall(p)
  }

  @opaque
  @inlineOnce
  def removeValidProp[K, B](
      lm: ListMap[K, B],
      p: ((K, B)) => Boolean,
      a: K
  ): Unit = {
    require(lm.forall(p))
    decreases(lm.toList.size)
    if (!lm.isEmpty)
      removeValidProp(lm.tail, p, a)

  }.ensuring { _ =>
    val nlm = lm - a
    nlm.forall(p)
  }

  @opaque
  @inlineOnce
  def insertAllValidProp[K, B](
      lm: ListMap[K, B],
      kvs: List[(K, B)],
      p: ((K, B)) => Boolean
  ): Unit = {
    require(lm.forall(p) && kvs.forall(p))
    decreases(kvs)

    if (!kvs.isEmpty) {
      addValidProp(lm, p, kvs.head._1, kvs.head._2)
      insertAllValidProp(lm + kvs.head, kvs.tail, p)
    }

  }.ensuring { _ =>
    val nlm = lm ++ kvs
    nlm.forall(p)
  }

  @opaque
  @inlineOnce
  def removeAllValidProp[K, B](
      lm: ListMap[K, B],
      l: List[K],
      p: ((K, B)) => Boolean
  ): Unit = {
    require(lm.forall(p))
    decreases(l)

    if (!l.isEmpty) {
      removeValidProp(lm, p, l.head)
      removeAllValidProp(lm - l.head, l.tail, p)
    }

  }.ensuring { _ =>
    val nlm = lm -- l
    nlm.forall(p)
  }

  @opaque
  @inlineOnce
  def addApplyDifferent[K, B](
      lm: ListMap[K, B],
      a: K,
      b: B,
      a0: K
  ): Unit = {
    require(lm.contains(a0) && a0 != a)
    assert(TupleListOpsGenK.containsKey(lm.toList, a0))
    TupleListOpsGenK.lemmainsertNoDuplicatedKeysDoesNotModifyOtherKeyValues(
      lm.toList,
      a,
      b,
      a0
    )
    TupleListOpsGenK.lemmaContainsKeyImpliesGetValueByKeyDefined(lm.toList, a0)

  }.ensuring(_ => (lm + (a -> b)).apply(a0) == lm(a0))

  @opaque
  @inlineOnce
  def addStillContains[K, B](
      lm: ListMap[K, B],
      a: K,
      b: B,
      a0: K
  ): Unit = {
    require(lm.contains(a0))

    if (a != a0)
      TupleListOpsGenK.lemmainsertNoDuplicatedKeysDoesNotModifyOtherKeysContained(
        lm.toList,
        a,
        b,
        a0
      )

  }.ensuring(_ => (lm + (a, b)).contains(a0))

  @opaque
  @inlineOnce
  def addStillNotContains[K, B](
      lm: ListMap[K, B],
      a: K,
      b: B,
      a0: K
  ): Unit = {
    require(!lm.contains(a0) && a != a0)

    TupleListOpsGenK.lemmainsertNoDuplicatedKeysDoesNotModifyOtherKeysNotContained(
      lm.toList,
      a,
      b,
      a0
    )

  }.ensuring(_ => !(lm + (a, b)).contains(a0))

  @opaque
  @inlineOnce
  def applyForall[K, B](
      lm: ListMap[K, B],
      p: ((K, B)) => Boolean,
      k: K
  ): Unit = {
    require(lm.forall(p) && lm.contains(k))
    decreases(lm.toList.size)

    if (!lm.isEmpty && lm.toList.head._1 != k)
      applyForall(lm.tail, p, k)

  }.ensuring(_ => p(k, lm(k)))

  @opaque
  @inlineOnce
  def getForall[K, B](
      lm: ListMap[K, B],
      p: ((K, B)) => Boolean,
      k: K
  ): Unit = {
    require(lm.forall(p))
    decreases(lm.toList.size)

    if (!lm.isEmpty && lm.toList.head._1 != k)
      getForall(lm.tail, p, k)

  }.ensuring(_ => lm.get(k).forall(v => p(k, v)))

  @opaque
  @inlineOnce
  def uniqueImage[K, B](lm: ListMap[K, B], a: K, b: B): Unit = {
    require(lm.toList.contains((a, b)))

    TupleListOpsGenK.lemmaContainsTupleThenContainsKey(lm.toList, a, b)
    TupleListOpsGenK.lemmaContainsTupThenGetReturnValue(lm.toList, a, b)

  }.ensuring(_ => lm.get(a) == Some[B](b))

  @opaque
  @inlineOnce
  def lemmaContainsAllItsOwnKeys[K, B](lm: ListMap[K, B]): Unit = {
    decreases(lm.toList.size)
    lm.toList match
      case Cons(h, t) => {
        lemmaContainsAllItsOwnKeys(ListMap(t))
        assert(t.forall(p => ListMap(t).contains(p._1)))
        assert(lm == ListMap(t) + h)
        lemmaInsertPairStillContainsAll(ListMap(t), t, h._1, h._2)
        lemmaInsertPairStillContainsAllEq(ListMap(t), lm, t, h._1, h._2)
        assert(t.forall(p => (ListMap(t) + (h._1, h._2)).contains(p._1)))
        assert(t.forall(p => lm.contains(p._1)))
        assert(Cons(h, t).forall(p => lm.contains(p._1)))
      }
      case Nil() =>

  }.ensuring(_ => lm.toList.forall(p => lm.contains(p._1)))

  @opaque
  @inlineOnce
  def lemmaInsertPairStillContainsAll[K, B](lm: ListMap[K, B], l: List[(K, B)], k: K, v: B): Unit = {
    require(l.forall(p => lm.contains(p._1)))
    decreases(l)
    l match {
      case Cons(h, t) =>
        if (h._1 != k) {
          TupleListOpsGenK.lemmainsertNoDuplicatedKeysDoesNotModifyOtherKeyValues(lm.toList, k, v, h._1)
        }
        lemmaInsertPairStillContainsAll(lm, t, k, v)
      case Nil() => ()
    }
  }.ensuring(_ => l.forall(p => (lm + (k, v)).contains(p._1)))

  @opaque
  @inlineOnce
  def lemmaInsertPairStillContainsAllEq[K, B](lm: ListMap[K, B], lm2: ListMap[K, B], l: List[(K, B)], k: K, v: B): Unit = {
    require(lm + (k, v) == lm2)
    require(l.forall(p => lm.contains(p._1)))
    decreases(l)
    l match {
      case Cons(h, t) =>
        if (h._1 != k) {
          TupleListOpsGenK.lemmainsertNoDuplicatedKeysDoesNotModifyOtherKeyValues(lm.toList, k, v, h._1)
        }
        lemmaInsertPairStillContainsAllEq(lm, lm2, t, k, v)
      case Nil() => ()
    }
  }.ensuring(_ => l.forall(p => (lm + (k, v)).contains(p._1)) && l.forall(p => (lm2).contains(p._1)))

  @opaque
  @inlineOnce
  def addForallContainsKeyThenBeforeAdding[K, B](
      lm: ListMap[K, B],
      other: ListMap[K, B],
      a: K,
      b: B
  ): Unit = {
    require((lm + (a, b)).toList.forall(p => other.contains(p._1)))
    decreases(lm.toList.size)

    lm.toList match {
      case Cons(head, tl) if (head._1 == a) => ()
      case Cons(head, tl) =>
        addForallContainsKeyThenBeforeAdding(lm.tail, other, a, b)
      case Nil() => ()
    }

  }.ensuring { _ =>
    lm.toList.forall(p => other.contains(p._1))
  }

  @opaque
  @inlineOnce
  def lemmaGetValueImpliesTupleContained[K, B](lm: ListMap[K, B], a: K, b: B): Unit = {
    require(lm.contains(a))
    require(lm.get(a) == Some[B](b))

    TupleListOpsGenK.lemmaGetValueByKeyImpliesContainsTuple(lm.toList, a, b)
  }.ensuring(_ => lm.toList.contains((a, b)))

  @opaque
  def keysOfSound[K, B](@induct lm: ListMap[K, B], value: B): Unit = {
    // trivial by postcondition of getKeysOf
    assert(TupleListOpsGenK.getKeysOf(lm.toList, value).forall(k => lm.get(k) == Some[B](value)))
  }.ensuring(_ => lm.keysOf(value).forall((key: K) => lm.get(key) == Some[B](value)))

  @opaque
  @inlineOnce
  def addNotContainedContent[K, B](
      lm: ListMap[K, B],
      key: K,
      value: B
  ): Unit = {
    require(!lm.contains(key))
    TupleListOpsGenK.lemmainsertNoDuplicatedKeysNotContainedContent(
      lm.toList,
      key,
      value
    )
  }.ensuring(_ =>
    lm.toList.content ++ Set(
      (key, value)
    ) == (lm + (key, value)).toList.content
  )

  // Equivalence LEMMAS ----------------------------------------------------------------------------------------------------------------
  @opaque
  @inlineOnce
  def lemmaAddToEqMapsPreservesEq[K, B](
      lm1: ListMap[K, B],
      lm2: ListMap[K, B],
      key: K,
      value: B
  ): Unit = {
    require(lm1.eq(lm2))
    if (lm1.contains(key)) {
      lemmaAddToEqMapsPreservesEqIfContainsKey(lm1, lm2, key, value)
      check((lm1 + (key, value)).eq(lm2 + (key, value)))
    } else {
      lemmaAddToEqMapsPreservesEqIfDoesNotContainKey(lm1, lm2, key, value)
      check((lm1 + (key, value)).eq(lm2 + (key, value)))
    }

  }.ensuring(_ => (lm1 + (key, value)).eq(lm2 + (key, value)))

  @opaque
  @inlineOnce
  def lemmaAddToEqMapsPreservesEqIfDoesNotContainKey[K, B](
      lm1: ListMap[K, B],
      lm2: ListMap[K, B],
      key: K,
      value: B
  ): Unit = {
    require(lm1.eq(lm2))
    require(!lm1.contains(key))
    decreases(lm1.toList.size)

    assert(!lm1.contains(key))
    if (lm2.contains(key)) {
      TupleListOpsGenK.lemmaContainsKeyImpliesGetValueByKeyDefined(lm2.toList, key)
      TupleListOpsGenK.lemmaGetValueByKeyImpliesContainsTuple(lm2.toList, key, lm2.apply(key))
      assert(lm2.toList.contains((key, lm2.apply(key))))
      assert(lm1.toList.contains((key, lm2.apply(key))))
      TupleListOpsGenK.lemmaContainsTupleThenContainsKey(lm1.toList, key, lm2.apply(key))
      check(false)
    }
    assert(!lm2.contains(key))

    check((lm1 + (key, value)).eq(lm2 + (key, value)))

  }.ensuring(_ => (lm1 + (key, value)).eq(lm2 + (key, value)))

  @opaque
  @inlineOnce
  def lemmaAddToEqMapsPreservesEqIfContainsKey[K, B](
      lm1: ListMap[K, B],
      lm2: ListMap[K, B],
      key: K,
      value: B
  ): Unit = {
    require(lm1.eq(lm2))
    require(lm1.contains(key))
    decreases(lm1.toList.size)

    lemmaEquivalentThenSameContains(lm1, lm2, key)
    lemmaEquivalentGetSameValue(lm1, lm2, key)

    val v = lm1.apply(key)
    val v2 = lm2.apply(key)
    TupleListOpsGenK.lemmaGetValueByKeyImpliesContainsTuple(lm2.toList, key, v2)
    assert(lm1.toList.contains((key, v)))
    assert(lm2.toList.contains((key, v)))
    assert(lm1.apply(key) == lm2.apply(key))
    assert(lm1.apply(key) == v)

    val lm1WithoutKey = lm1 - key
    val lm2WithoutKey = lm2 - key
    lemmaRemovePreservesEq(lm1, lm2, key)
    check(lm1WithoutKey.eq(lm2WithoutKey))
    check(lm1WithoutKey.contains(key) == false)
    check(lm2WithoutKey.contains(key) == false)

    val lm1After = lm1WithoutKey + (key, value)
    val lm2After = lm2WithoutKey + (key, value)
    lemmaAddToEqMapsPreservesEqIfDoesNotContainKey(lm1WithoutKey, lm2WithoutKey, key, value)

    check(lm1After.eq(lm2After))

    removeThenAddForSameKeyIsSameAsAdd(lm1, key, value)
    removeThenAddForSameKeyIsSameAsAdd(lm2, key, value)

    check(lm1After.eq(lm1 + (key, value)))
    check(lm2After.eq(lm2 + (key, value)))

    check((lm1 + (key, value)).eq(lm2 + (key, value)))

  }.ensuring(_ => (lm1 + (key, value)).eq(lm2 + (key, value)))

  @opaque
  @inlineOnce
  def lemmaEquivalentThenSameContains[K, B](
      lm1: ListMap[K, B],
      lm2: ListMap[K, B],
      key: K
  ): Unit = {
    require(lm1.eq(lm2))
    if (lm1.contains(key)) {
      val v = lm1.apply(key)
      TupleListOpsGenK.lemmaGetValueByKeyImpliesContainsTuple(lm1.toList, key, v)
      assert(lm1.toList.contains((key, v)))
      assert(lm2.toList.contains((key, v)))
      TupleListOpsGenK.lemmaContainsTupleThenContainsKey(lm2.toList, key, v)

      assert(lm1.contains(key) == true)
      assert(lm2.contains(key) == true)

    } else {
      if (lm2.contains(key)) {
        TupleListOpsGenK.lemmaContainsKeyImpliesGetValueByKeyDefined(lm2.toList, key)
        TupleListOpsGenK.lemmaGetValueByKeyImpliesContainsTuple(lm2.toList, key, lm2.apply(key))
        assert(lm2.toList.contains((key, lm2.apply(key))))
        assert(lm1.toList.contains((key, lm2.apply(key))))
        TupleListOpsGenK.lemmaContainsTupleThenContainsKey(lm1.toList, key, lm2.apply(key))
        check(false)
      }
      assert(lm1.contains(key) == false)
      assert(lm2.contains(key) == false)
    }
  }.ensuring(_ => lm1.contains(key) == lm2.contains(key))

  @opaque
  @inlineOnce
  def lemmaEquivalentGetSameValue[K, B](
      lm1: ListMap[K, B],
      lm2: ListMap[K, B],
      key: K
  ): Unit = {
    require(lm1.eq(lm2))
    lemmaEquivalentThenSameContains(lm1, lm2, key)
    if (lm1.contains(key)) {
      val v = lm1.apply(key)
      TupleListOpsGenK.lemmaGetValueByKeyImpliesContainsTuple(lm1.toList, key, v)
      assert(lm1.toList.contains((key, v)))
      assert(lm2.toList.contains((key, v)))
      TupleListOpsGenK.lemmaContainsTupleThenContainsKey(lm2.toList, key, v)
      assert(lm2.contains(key))
      val v2 = lm2.apply(key)
      TupleListOpsGenK.lemmaGetValueByKeyImpliesContainsTuple(lm2.toList, key, v2)
      if (v2 != v) {
        assert(lm2.toList.contains((key, v2)))
        assert(lm2.toList.contains((key, v)))
        TupleListOpsGenK.lemmaContainsTwoDifferentTuplesSameKeyImpossible(lm2.toList, key, v, v2)
        check(false)
      }
      assert(lm1.get(key).get == v)
      assert(lm2.get(key).get == v)
    } else {
      if (lm1.get(key).isDefined) {
        TupleListOpsGenK.lemmaGetValueByKeyImpliesContainsTuple(lm1.toList, key, lm1.get(key).get)
        TupleListOpsGenK.lemmaContainsTupleThenContainsKey(lm1.toList, key, lm1.get(key).get)
        check(false)
      }
      if (lm2.get(key).isDefined) {
        TupleListOpsGenK.lemmaGetValueByKeyImpliesContainsTuple(lm2.toList, key, lm2.get(key).get)
        TupleListOpsGenK.lemmaContainsTupleThenContainsKey(lm2.toList, key, lm2.get(key).get)
        check(false)
      }
      assert(lm1.get(key).isEmpty)
      assert(lm2.get(key).isEmpty)
    }

  }.ensuring(_ => lm1.get(key) == lm2.get(key))

  @opaque
  @inlineOnce
  def lemmaRemovePreservesEq[K, B](
      lm1: ListMap[K, B],
      lm2: ListMap[K, B],
      key: K
  ): Unit = {
    require(lm1.eq(lm2))
    lemmaEquivalentThenSameContains(lm1, lm2, key)
    if (lm1.contains(key)) {
      val v = lm1.apply(key)
      val v2 = lm2.apply(key)
      lemmaEquivalentGetSameValue(lm1, lm2, key)
      check((lm1 - key).toList.content == lm1.toList.content -- Set((key, v)))
      check((lm2 - key).toList.content == lm2.toList.content -- Set((key, v2)))
    } else {
      check((lm1 - key).toList.content == lm1.toList.content)
      check((lm2 - key).toList.content == lm2.toList.content)
    }

  }.ensuring(_ => (lm1 - key).eq(lm2 - key))
}
