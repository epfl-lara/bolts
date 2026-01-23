// Adapted from the bolts version

package com.ziplex.lexer

import scala.reflect.ClassTag
import stainless.collection._
import ListSpecs._
import stainless.annotation._

import com.ziplex.lexer.ListUtils

// import com.ziplex.lexer.IArray
import stainless.collection.IArray

import scala.annotation.tailrec
// BEGIN uncomment for verification ------------------------------------------
import stainless.proof._
import stainless.lang._
import stainless.lang.StaticChecks.*
import stainless.lang.{ghost => ghostExpr, _}
// END uncomment for verification --------------------------------------------
// BEGIN imports for benchmarking -------------------------------------------
// import stainless.lang.{ghost => _, decreases => _, unfold => _, _}
// import com.ziplex.lexer.OptimisedChecks.*
// import Predef.{assert => _, Ensuring => _, require => _}

// @tailrec
// def dummyBalanceConc(x: BigInt): BigInt = {
//   if (x == BigInt(0)) then x
//   else dummyBalanceConc(x - BigInt(1))
// }.ensuring( res => res == BigInt(0))
// END imports for benchmarking ---------------------------------------------


object BalanceConcObj:

  inline def LEAF_ARRAY_MAX_SIZE: BigInt = 512 // MUST BE <= 2147483647 (Int.MaxValue)

  extension [T: ClassTag](arr: IArray[T])
    def efficientList: List[T] = 
      def rec(i: BigInt, acc: List[T]): List[T] = 
        if i <= BigInt(0) then acc
        else 
          rec(i - 1, arr(i - 1) :: acc)
      rec(arr.size, Nil[T]())

  case class BalanceConc[T: ClassTag](c: Conc[T]){

    
    def efficientList: List[T] = c.efficientList()
    
    def size: BigInt = c.size
    
    def isEmpty: Boolean = c.isEmpty
    
    inline def height: BigInt = c.height
    
    def apply(i: BigInt): T = c(i)
    
    def contains(v: T): Boolean = c.contains(v)
    
    inline def isBalanced: Boolean = c.isBalanced
    
    def head: T = c.head
    
    def last: T = c.last

    def forall(p: T => Boolean): Boolean = c.forall(p)
    
    def exists(p: T => Boolean): Boolean = c.exists(p)
    
    def ++(ys: BalanceConc[T]): BalanceConc[T] = BalanceConc(c ++ ys.c)

    def map[B: ClassTag](f: T => B): BalanceConc[B] = BalanceConc(c.map(f))

    def slice(from: BigInt, until: BigInt): BalanceConc[T] = BalanceConc(c.slice(from, until))

    def splitAt(i: BigInt): (BalanceConc[T], BalanceConc[T]) = 
      val split = c.splitAt(i)
      (BalanceConc(split._1), BalanceConc(split._2))

    def filter(p: T => Boolean): BalanceConc[T] = BalanceConc(c.filter(p))

    def append(v: T): BalanceConc[T] = BalanceConc(c.append(v))
    def prepend(v: T): BalanceConc[T] = BalanceConc(c.prepend(v))
    def tail: BalanceConc[T] = BalanceConc(c.tail)

  }

  def empty[T: ClassTag]: BalanceConc[T] = BalanceConc(Empty())
  @inlineOnce @opaque def singleton[T: ClassTag](t: T): BalanceConc[T] = BalanceConc(LeafFrom(t))
  def fromListB[T: ClassTag](l: List[T]): BalanceConc[T] = BalanceConc(fromList(l))

  def fromArrayB[T: ClassTag](arr: IArray[T]): BalanceConc[T] = BalanceConc(fromArray(arr, Empty[T]()))



  sealed abstract class Conc[T]
  case class Empty[T]() extends Conc[T]
  case class Leaf[T: ClassTag](xs: IArray[T], csize: BigInt) extends Conc[T] 
  case class Node[T: ClassTag](left: Conc[T], right: Conc[T], 
                     csize: BigInt, cheight: BigInt) extends Conc[T] 

  @pure def LeafFrom[T: ClassTag](x: T): Conc[T] = Leaf(IArray.fill(1)(x), 1)

  def fromList[T: ClassTag](l: List[T]): Conc[T] = 
    def rec(ll: List[T], c: Conc[T]): Conc[T] = 
      ll match {
        case Nil() => c
        case Cons(x, xs) => 
          rec(xs, c.append(x))
      }
    rec(l, Empty[T]())

  def fromArray[T: ClassTag](arr: IArray[T], acc: Conc[T]): Conc[T] = 
    if arr.size <= LEAF_ARRAY_MAX_SIZE then 
      if arr.size == 0 then acc
      else acc ++ Leaf(arr, arr.size)
    else 
      val leftLeaf = Leaf(arr.slice(0, LEAF_ARRAY_MAX_SIZE), LEAF_ARRAY_MAX_SIZE)
      fromArray(arr.slice(LEAF_ARRAY_MAX_SIZE, arr.size), acc ++ leftLeaf)

  def max(x: BigInt, y: BigInt) =
    if x < y then y else x
  def min(x: BigInt, y: BigInt) =
    if x < y then x else y
  def abs(x: BigInt) =
    if 0 <= x then x else -x

  extension[T: ClassTag](t: Conc[T])

    def efficientList(acc: List[T] = Nil[T]()): List[T] = 
      t match
        case Empty() => acc
        case Leaf(x, _) => x.efficientList ++ acc
        case Node(l, r, _, _) => 
          l.efficientList(r.efficientList(acc))

  

    def size: BigInt = 
      t match
        case Empty() => BigInt(0)
        case Leaf(_, csize) => csize
        case Node(_, _, csize, _) => csize


    def isEmpty: Boolean = t.size == 0

    def height: BigInt = 
      t match 
        case Empty() => 0
        case Leaf(_, _) => 1
        case Node(_, _, _, cheight) => cheight

    def apply(i: BigInt): T = 
      t match
        case Leaf(xs, csize) => {
          xs(i)
        }
        case Node(l, r, _, _) =>
          if i < l.size then l(i)
          else r(i - l.size)

    def contains(v: T): Boolean = 
      t match
        case Empty() => false
        case Leaf(xs, _) => xs.contains(v)
        case Node(l, r, _, _) =>  l.contains(v) || r.contains(v)

    def isBalanced: Boolean = {
      t match {
        case Node(l, r, _, _) =>
          -1 <= l.height - r.height && l.height - r.height <= 1 &&
          l.isBalanced && r.isBalanced && !l.isEmpty && !r.isEmpty // to avoid needlessly deep nodes otherwise the asymptotic complexity can be arbitrary large
        case _ => true
      }
    }

    def forall(p: T => Boolean): Boolean = 
      t match {
        case Empty() => true
        case Leaf(xs, _) => xs.forall(p)
        case Node(l, r, _, _) => 
          l.forall(p) && r.forall(p)
      }

    def exists(p: T => Boolean): Boolean = 
      t match {
        case Empty() => false
        case Leaf(xs, _) => xs.exists(p)
        case Node(l, r, _, _) => 
          l.exists(p) || r.exists(p)
      }

  extension[T: ClassTag](xs: Conc[T])
    /**
      * Concatenate xs with ys without preserving balancing
      *
      * @param ys
      */
    def <>(ys: Conc[T]) = 
      if xs == Empty[T]() then ys
      else if ys == Empty[T]() then xs
      else Node(xs, ys, xs.size + ys.size, 
                        max(xs.height, ys.height) + 1)

    /**
      * Concatenate xs with ys preserving balancing
      *
      * @param ys
      */
    def ++(ys: Conc[T]): Conc[T] = {
      if xs == Empty[T]() then ys
      else if ys == Empty[T]() then xs
      else
        val diff = ys.height - xs.height
        if -1 <= diff && diff <= 1 then xs <> ys
        else if diff < -1 then
          xs match
            case Node(l, r, _, _) =>
              if l.height >= r.height then
                l <> (r ++ ys)
              else
                r match
                  case Node(rl, rr, _, _) =>
                    val nrr = rr ++ ys
                    if nrr.height == xs.height - 3 then
                      l <> (rl <> nrr)
                    else
                      (l <> rl) <> nrr
        else 
          ys match
            case Node(l, r, _, _) =>
              if r.height >= l.height then
                (xs ++ l) <> r
              else
                l match
                  case Node(ll, lr, _, _) =>
                    val nll = xs ++ ll
                    if nll.height == ys.height - 3 then
                      (nll <> lr) <> r
                    else
                      nll <> (lr <> r)
    }

  extension[T: ClassTag](t: Conc[T])
    def slice(from: BigInt, until: BigInt): Conc[T] = {
      if from == until then Empty[T]()
      else 
        t match
          case Leaf(xs, csize) => if until - from == 0 then Empty[T]() 
                                 else 
                                  Leaf(xs.slice(from, until), until - from)
          case Node(l, r, _, _) =>
            if l.size <= from then r.slice(from - l.size, until - l.size)
            else if until <= l.size then l.slice(from, until)
            else            
              val l1 = l.slice(from, l.size)
              val r1 = r.slice(0, until - l.size)
              l1 ++ r1
    }

    def splitAt(i: BigInt): (Conc[T], Conc[T]) = {
      t match
        case Empty[T]() => (t, t)
        case Leaf(xs, csize) => 
          if i <= 0 then (Empty[T](), t)
          else if i == csize then (t, Empty[T]())
          else 
            (Leaf(xs.slice(0, i), i), 
                Leaf(xs.slice(i, csize), csize - i))
        case Node(l, r, _, _) =>
          if l.size == i then (l, r)
          else if i < l.size then 
            val (l1, l2) = l.splitAt(i)
            (l1, l2 ++ r)
          else 
            val (r1, r2) = r.splitAt(i - l.size)
            (l ++ r1, r2)
    }

    def filter(p: T => Boolean): Conc[T] = {
       t match
        case Empty[T]() => t
        case Leaf(xs, csize) => 
          val filteredArray = xs.filter(p)
          if filteredArray.size == 0 then Empty[T]()
          else Leaf(filteredArray, filteredArray.size)
        case Node(l, r, _, _) =>
          l.filter(p) ++ r.filter(p)
    }

    def map[B: ClassTag](f: T => B): Conc[B] = 
      t match {
        case Empty() => Empty[B]()
        case Leaf(xs, csize) => Leaf(xs.map(f), csize)
        case Node(l, r, cs, ch) => 
          Node(l.map(f), r.map(f), cs, ch)
      }
    

    def append(v: T): Conc[T] = {
      t match
        case Empty[T]() => Leaf(IArray.fill(1)(v), 1)
        case Node(l, r, tsize, theight) => 
          val newR = r.append(v)
          if newR.height <= l.height + 1 then
            l <> newR
          else 
            newR match
              case Node(rl, rr, _, _) => 
                (l <> rl) <> rr
        case Leaf(xs, csize) => 
          if csize < LEAF_ARRAY_MAX_SIZE then 
            Leaf(xs.append(v), csize + 1)
          else 
            val newLeaf = Leaf(IArray.fill(1)(v), 1)
            t <> newLeaf
        
    }

    def prepend(v: T): Conc[T] = Leaf(IArray.fill(1)(v), 1) ++ t

    def tail: Conc[T] = 
      t match
        case Leaf(xs, csize) => 
          if csize == 1 then Empty[T]()
          else 
            Leaf(xs.slice(1, csize), csize - 1)
        // case Node(l, r, _, _) if l.size == 1 => r
        case Node(l, r, _, _) if l.isEmpty => r.tail
        case Node(l, r, _, _) => 
          l.tail ++ r

    def head: T = 
      t match
        case Leaf(xs, csize) => xs(0)
        case Node(l, r, _, _) => l.head

    def last: T = 
      t match
        case Leaf(xs, csize) => xs.last
        case Node(l, r, _, _) => r.last

end BalanceConcObj

