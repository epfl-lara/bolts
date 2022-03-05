/* 
 * Copyright 2009-2022 EPFL, Lausanne 
 * 
 * Authors: Andrea Gilot, Noé De Santo
 */

import stainless.lang._
import stainless.collection._
import stainless.annotation._

object ListProperties {

  @opaque @pure
  def insertionIndexing[T](l1: List[T], l2: List[T], elem: T, k: BigInt): Unit = {
    require(k < l1.size + l2.size)
    require(k >= l1.size)
    l1 match{
      case Nil() => ()
      case Cons(x, ls1) =>
        insertionIndexing(ls1, l2, elem, k - 1)
    }
  }.ensuring((l1 ++ (elem :: l2))(k + 1) == (l1 ++ l2)(k))

  @opaque @pure
  def concatSecondIndexing[T](l1: List[T], l2: List[T], k: BigInt): Unit = {
    require(k >= l1.size)
    require(k < l1.size + l2.size)
    l1 match{
      case Nil() => ()
      case Cons(x, ls1) => 
        concatSecondIndexing(ls1, l2, k - 1)
    } 
  }.ensuring((l1 ++ l2)(k) == l2(k - l1.size))

  @opaque @pure
  def concatFirstIndexing[T](l1: List[T], l2: List[T], k: BigInt): Unit = {
    require(k < l1.size)
    require(k >= 0)

    ListSpecs.reverseIndex((l1 ++ l2), l1.size + l2.size - k - 1)
    ListSpecs.reverseAppend(l1, l2)
    concatSecondIndexing(l2.reverse, l1.reverse, l1.size + l2.size - k - 1)
    ListSpecs.reverseIndex(l1, l1.size - k - 1)
    ()
  }.ensuring((l1 ++ l2)(k) == l1(k))

  @opaque @pure
  def mapConcat[T, U](@induct l1: List[T], l2: List[T], f: T => U): Unit = {
  }.ensuring(l1.map(f) ++ l2.map(f) == (l1 ++ l2).map(f)) 

  @opaque @pure
  def mapPrepend[T, U](elem: T, @induct l: List[T], f: T => U): Unit = {
  }.ensuring(f(elem) :: l.map(f) == (elem :: l).map(f))

  @opaque @pure
  def mapIndexing[T, U](k: BigInt, l: List[T], f: T => U): Unit = {
    require(k >= 0)
    require(k < l.size)
    l match{
      case Nil() => ()
      case Cons(h, t) =>
        mapPrepend(h, t, f) 
        if(k == 0){
          ()
        }
        else{
          mapIndexing(k - 1 , t, f)
        }
    }
  }.ensuring(f(l(k)) == l.map(f)(k))

  def mapInvertAddContains(l: List[BigInt], k: BigInt, s: BigInt): Unit = {
    require(l.map(x => x - s).contains(k))
    l match{
      case Nil() => ()
      case Cons(h, t) => 
        if(t.size > 0){
          if(h != k + s){
            mapInvertAddContains(t, k, s)
          }
        }
    }
  }.ensuring(l.contains(k + s))

  def forallConcat[T](@induct l1: List[T], l2: List[T], p: T => Boolean): Unit = {
    require((l1 ++ l2).forall(p))
  }.ensuring(l1.forall(p) && l2.forall(p))

  def forallMapLemma(@induct l: List[BigInt], c: BigInt, d: BigInt, s: BigInt): Unit ={
    require(l.map(x => x - s).forall(x => x < c || x >= c + d))
  }.ensuring(l.forall(x => x < c + s || x >= c + s + d)) 

  def forallFilterLemma(@induct l: List[BigInt], c: BigInt, d: BigInt, s: BigInt): Unit = {
    require(c >= 0)
    require(d >= 0)
    require(s > 0)
    require(l.filter(x => x > 0).forall(x => x < c + s || x >= c + s + d))
    
  }.ensuring(l.forall(x => x < c + s || x >= c + s + d))
}

object OptionProperties {
  
  @opaque @pure
  def equalityImpliesDefined[T](defOpt: Option[T], otherOpt: Option[T]): Unit = {
    require(defOpt.isDefined)
    require(defOpt == otherOpt)
  }.ensuring(otherOpt.isDefined)
}