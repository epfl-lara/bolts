/** Author: Samuel Chassot
  */

package ch.epfl.set

import stainless.annotation._
import stainless.collection._
import stainless.equations._
import stainless.lang._
import stainless.proof.check
import scala.annotation.tailrec
import scala.collection.immutable
import stainless.collection.ListOps.noDuplicate
import scala.collection.mutable

object ListOps {
  // @inline
  def invariantList[B](l: List[B]): Boolean = {
    ListSpecs.noDuplicate(l)
  }

  def removeElement[V](l: List[V], v: V): List[V] = {
    require(invariantList(l))
    require(l.nonEmpty)
    l match {
      case Cons(h, t) =>
        if (h == v) {
          t
        } else {
          Cons(h, removeElement(t, v))
        }
    }
  }.ensuring(res => 
    res.contains(v) == false
    && (if res.contains(v) then res.size == l.size - 1 && ListSpecs.subseq(res, l) else res.size == l.size && res == l)
  )

  def addNoDuplicate[V](l: List[V], v: V): List[V] = {
    require(invariantList(l))
    if l.contains(v) then l else Cons(v, l)
  }.ensuring(res => 
    res.contains(v) 
    && ListSpecs.subseq(l, res) 
    && (if l.contains(v) then res.size == l.size && res == l else res.size == l.size + 1)
    )

  def intSize[V](l: List[V]): Int = {
    require(invariantList(l))
    decreases(l)
    l match {
      case Nil() => 0
      case Cons(_, t) => 1 + intSize(t)
    }
  }.ensuring(res => res >= 0)
}
