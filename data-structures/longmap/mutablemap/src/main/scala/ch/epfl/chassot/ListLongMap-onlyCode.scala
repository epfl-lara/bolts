/** Author: Samuel Chassot
  */

package ch.epfl.chassot

import stainless.annotation._
import stainless.collection._
import stainless.equations._
import stainless.lang._
import stainless.proof.check
import scala.annotation.tailrec
import scala.collection.immutable


// import OptimisedChecks.*

case class ListLongMapCode[B](toList: List[(Long, B)]) {

  def isEmpty: Boolean = toList.isEmpty

  def head: (Long, B) = {
    toList.head
  }

  def size: Int = {
    TupleListOpsCode.intSize(toList)
  }

  def nKeys: Int = {
    TupleListOpsCode.intSizeKeys(TupleListOpsCode.getKeysList(toList))
  }

  def tail: ListLongMapCode[B] = {
    ListLongMapCode(toList.tail)
  }

  def contains(key: Long): Boolean = {
    TupleListOpsCode.containsKey(toList, key)
  }

  @inline
  def get(key: Long): Option[B] = {
    TupleListOpsCode.getValueByKey(toList, key)
  }

  @inline
  def keysOf(value: B): List[Long] = {
    TupleListOpsCode.getKeysOf(toList, value)
  }

  def keys(): List[Long] = {
    TupleListOpsCode.getKeysList(toList)
  }

  def apply(key: Long): B = {
    get(key).get
  }

  def +(keyValue: (Long, B)): ListLongMapCode[B] = {

    val newList =
      TupleListOpsCode.insertStrictlySorted(toList, keyValue._1, keyValue._2)
    ListLongMapCode(newList)

  }

  def ++(keyValues: List[(Long, B)]): ListLongMapCode[B] = {
    keyValues match {
      case Nil()                => this
      case Cons(keyValue, rest) => (this + keyValue) ++ rest
    }
  }
  def -(key: Long): ListLongMapCode[B] = {
    ListLongMapCode(TupleListOpsCode.removeStrictlySorted(toList, key))
  }

  def --(keys: List[Long]): ListLongMapCode[B] = {
    keys match {
      case Nil()           => this
      case Cons(key, rest) => (this - key) -- rest
    }
  }

  @inline
  def forall(p: ((Long, B)) => Boolean): Boolean = {
    toList.forall(p)
  }
}

object TupleListOpsCode {

  def getKeysList[B](l: List[(Long, B)]): List[Long] = {
    l match {
      case Cons(head, tl) => Cons(head._1, getKeysList(tl))
      case Nil()          => Nil[Long]()
    }
  }

  def intSizeKeys(l: List[Long]): Int = {
    l match {
      case Cons(head, tl) => 1 + intSizeKeys(tl)
      case Nil()          => 0
    }
  }

  def intSize[B](l: List[(Long, B)]): Int = {
    l match {
      case Cons(head, tl) => {
        val s1 = intSize(tl)
        if (s1 < Integer.MAX_VALUE) {
          1 + s1
        } else {
          0
        }
      }

      case Nil() => 0
    }
  }

  def getKeysOf[B](l: List[(Long, B)], value: B): List[Long] = {
    l match {
      case Cons(head, tl) if (head._2 == value) => {
        Cons(head._1, getKeysOf(tl, value))
      }
      case Cons(head, tl) if (head._2 != value) => {
        val r = getKeysOf(tl, value)
        getKeysOf(tl, value)
      }
      case Nil() => Nil[Long]()
    }

  }

  def filterByValue[B](l: List[(Long, B)], value: B): List[(Long, B)] = {
    decreases(l)

    l match {
      case Cons(head, tl) if (head._2 == value) =>
        head :: filterByValue(tl, value)
      case Cons(head, tl) if (head._2 != value) => filterByValue(tl, value)
      case Nil()                                => Nil[(Long, B)]()
    }
  }
  def getValueByKey[B](l: List[(Long, B)], key: Long): Option[B] = {
    l match {
      case Cons(head, tl) if (head._1 == key) => Some[B](head._2)
      case Cons(head, tl) if (head._1 != key) => getValueByKey(tl, key)
      case Nil()                              => None[B]()
    }
  }

  def insertStrictlySorted[B](
      l: List[(Long, B)],
      newKey: Long,
      newValue: B
  ): List[(Long, B)] = {
    l match {
      case Cons(head, tl) if (head._1 < newKey) =>
        head :: insertStrictlySorted(tl, newKey, newValue)
      case Cons(head, tl) if (head._1 == newKey) => (newKey, newValue) :: tl
      case Cons(head, tl) if (head._1 > newKey) =>
        (newKey, newValue) :: Cons(head, tl)
      case Nil() => (newKey, newValue) :: Nil()
    }
  }

  def removeStrictlySorted[B](
      l: List[(Long, B)],
      key: Long
  ): List[(Long, B)] = {
    l match {
      case Cons(head, tl) if (head._1 == key) => tl
      case Cons(head, tl) if (head._1 != key) =>
        head :: removeStrictlySorted(tl, key)
      case Nil() => Nil[(Long, B)]()
    }
  }

  def containsKey[B](l: List[(Long, B)], key: Long): Boolean = {
    decreases(l)
    l match {
      case Cons(head, tl) if (head._1 == key) => true
      case Cons(head, tl) if (head._1 > key)  => false
      case Cons(head, tl) if (head._1 < key)  => containsKey(tl, key)
      case Nil()                              => false

    }
  }
}

object ListLongMapCode {
  def empty[B]: ListLongMapCode[B] = ListLongMapCode[B](List.empty[(Long, B)])
}
