// adapted from bolts version
package com.ziplex.lexer

import stainless.collection._
import ListSpecs._
import stainless.annotation._

import com.ziplex.lexer.ListUtils

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

  sealed abstract class Conc[T]
  case class Empty[T]() extends Conc[T]
  case class Leaf[T](x: T) extends Conc[T]
  case class Node[T](left: Conc[T], right: Conc[T], 
                     csize: BigInt, cheight: BigInt) extends Conc[T] {
    require(csize == left.size + right.size && left != Empty[T]() && right != Empty[T]() &&
            cheight == max(left.height, right.height) + 1 &&
            0 <= cheight)
  }

  case class BalanceConc[T](c: Conc[T]) {
    require(c.isBalanced)

    @ghost def list: List[T] = c.list
    def efficientList: List[T] = {
      c.efficientList()
    }.ensuring(res => list == this.list)
    def size: BigInt = {
      c.size
    }.ensuring(res => res == this.list.size)
    def isEmpty: Boolean = {
      c.isEmpty
    }.ensuring(res => res == this.list.isEmpty)
    inline def height: BigInt = c.height
    def apply(i: BigInt): T = {
      require(0 <= i && i < this.size)
      c(i)
    }.ensuring(res => res == this.list.apply(i))
    def contains(v: T): Boolean = {
      c.contains(v)
    }.ensuring(res => res == this.list.contains(v))
    inline def isBalanced: Boolean = c.isBalanced
    def head: T = {
      require(!this.isEmpty)
      c.head
    }.ensuring(res => res == this.list.head)
    def last: T = {
      require(!this.isEmpty)
      c.last
    }.ensuring(res => res == this.list.last)

    def forall(p: T => Boolean): Boolean = {
      c.forall(p)
      }.ensuring(res => res == this.list.forall(p))
    def exists(p: T => Boolean): Boolean = {
      c.exists(p)
      }.ensuring(_ == this.list.exists(p))
    @ghost def dropList(n: BigInt): List[T] = c.dropList(n)
    def ++(ys: BalanceConc[T]): BalanceConc[T] = { 
      assert(c.isBalanced && ys.c.isBalanced)
      BalanceConc(c ++ ys.c)
    }.ensuring(res => 
      appendAssocInst(this.c, ys.c) &&
      res.isBalanced &&
      res.height <= max(this.height, ys.height) + 1 &&
      res.height >= max(this.height, ys.height) &&
      res.list == this.list ++ ys.list)

    def map[B](f: T => B): BalanceConc[B] = {
      BalanceConc(c.map(f))
    }.ensuring(res => res.list == this.list.map(f) && res.isBalanced)

    def slice(from: BigInt, until: BigInt): BalanceConc[T] = {
      require(0 <= from && from <= until && until <= this.size && this.isBalanced)
      BalanceConc(c.slice(from, until))
    }.ensuring(res => res.isBalanced && res.list == this.list.slice(from, until))

    def splitAt(i: BigInt): (BalanceConc[T], BalanceConc[T]) = {
      require(this.isBalanced)
      require(0 <= i && i <= this.size)
      val split = c.splitAt(i)
      (BalanceConc(split._1), BalanceConc(split._2))
    }.ensuring(res => (res._1.isBalanced && res._2.isBalanced) && (res._1.list, res._2.list) == this.list.splitAtIndex(i))

    def filter(p: T => Boolean): BalanceConc[T] = {
      BalanceConc(c.filter(p))
    }.ensuring(res => res.isBalanced && res.list == this.list.filter(p))

    def append(v: T): BalanceConc[T] = {
      BalanceConc(c.append(v))
    }.ensuring(res => res.isBalanced && res.list == (this.list :+ v))
    def prepend(v: T): BalanceConc[T] = {
      BalanceConc(c.prepend(v))
    }.ensuring(res => res.isBalanced && res.list == (Cons(v, this.list)))
    def tail: BalanceConc[T] = {
      require(!this.isEmpty)
      BalanceConc(c.tail)
    }.ensuring(res => res.isBalanced && res.list == this.list.tail)

  }

  def emptyB[T]: BalanceConc[T] = BalanceConc(Empty())

  @pure @extern @inlineOnce @ghost
  def fromListHdTlConstructive[T](hd: T, tl: List[T], bc: BalanceConc[T]): Unit = {
    require(bc.list == fromList(hd :: tl).list)
  }.ensuring(_ => bc.list == fromList(tl).prepend(hd).list)

  @pure @opaque 
  def fromList[T](l: List[T]): Conc[T] = {
    def rec(ll: List[T], c: Conc[T]): Conc[T] = {
      require(c.isBalanced)
      decreases(ll.size)
      ll match {
        case Nil() => c
        case Cons(x, xs) => 
          assert(rec(xs, c.append(x)).list == (c.append(x)).list ++ xs)
          assert((c.append(x)).list == c.list ++ List(x))
          ghostExpr(ListUtils.lemmaConcatAssociativity(c.list, List(x), xs))
          assert((c.list ++ List(x)) ++ xs == c.list ++ (x :: xs))
          rec(xs, c.append(x))
      }
    }.ensuring(res => res.list == c.list ++ ll && res.isBalanced)
    rec(l, Empty[T]())
  }.ensuring(res => res.list == l && res.isBalanced)

  @pure @opaque 
  def fromListB[T](l: List[T]): BalanceConc[T] = {
    BalanceConc(fromList(l))
  }.ensuring(res => res.list == l)

  def singleton[T](v: T): BalanceConc[T] = BalanceConc(Leaf(v))

  @pure @extern @inlineOnce @ghost
  def fromListHdTlConstructive[T](hd: T, tl: List[T], bc: Conc[T]): Unit = {
    require(bc.list == fromList(hd :: tl).list)
  }.ensuring(_ => bc.list == fromList(tl).prepend(hd).list)

  @pure @extern @inlineOnce @ghost
  def fromListBHdTlConstructive[T](hd: T, tl: List[T], bc: BalanceConc[T]): Unit = {
    require(bc.list == fromList(hd :: tl).list)
  }.ensuring(_ => bc.list == fromList(tl).prepend(hd).list)

  def max(x: BigInt, y: BigInt) =
    if x < y then y else x
  def abs(x: BigInt) =
    if 0 <= x then x else -x

  @ghost 
  def appendAssocInst[T](xs: Conc[T], ys: Conc[T]): Boolean = {
    (xs match {
      case Node(l, r, _, _) =>
        appendAssoc(l.list, r.list, ys.list) && //instantiation of associativity of concatenation
          (r match {
            case Node(rl, rr, _, _) =>
              appendAssoc(rl.list, rr.list, ys.list) &&
                appendAssoc(l.list, rl.list, rr.list ++ ys.list)
            case _ => true
          })
      case _ => true
    }) &&
    (ys match {
        case Node(l, r, _, _) =>
          appendAssoc(xs.list, l.list, r.list) &&
            (l match {
              case Node(ll, lr, _, _) =>
                appendAssoc(xs.list, ll.list, lr.list) &&
                  appendAssoc(xs.list ++ ll.list, lr.list, r.list)
              case _ => true
            })
        case _ => true
    })
  }.holds

  @ghost 
  def appendAssocInstB[T](xs: BalanceConc[T], ys: BalanceConc[T]): Boolean = {
    appendAssocInst(xs.c, ys.c)
  }.holds

  extension[T](t: Conc[T])
    @ghost def list: List[T] = t match
      case Empty() => Nil[T]()
      case Leaf(x) => List(x)
      case Node(l, r, _, _) => l.list ++ r.list

    def efficientList(acc: List[T] = Nil[T]()): List[T] = {
      t match
        case Empty() => acc
        case Leaf(x) => Cons(x, acc)
        case Node(l, r, _, _) => 
          ghostExpr(ListUtils.lemmaConcatAssociativity(l.list, r.list, acc))
          l.efficientList(r.efficientList(acc))

    }.ensuring(res => res == (t.list ++ acc))

    def size: BigInt = {
      t match
        case Empty() => BigInt(0)
        case Leaf(_) => BigInt(1)
        case Node(_, _, csize, _) => csize
    }.ensuring(_ == t.list.size)

    def isEmpty: Boolean = {
      t.size == 0
    }.ensuring(res => res == t.list.isEmpty)

    def height: BigInt = 
      t match 
        case Empty() => 0
        case Leaf(x) => 1
        case Node(_, _, _, cheight) => cheight

    def apply(i: BigInt): T = {
      require(0 <= i && i < t.size)
      t match
        case Leaf(x) => assert(i == 0); x
        case Node(l, r, _, _) =>
          ghostExpr(appendIndex(l.list, r.list, i)) // lemma
          if i < l.size then l(i)
          else r(i - l.size)
    }.ensuring(_ == t.list(i))

    def contains(v: T): Boolean = {
      t match
        case Empty() => false
        case Leaf(x) => v == x
        case Node(l, r, _, _) =>  l.contains(v) || r.contains(v)
    }.ensuring(_ == t.list.contains(v))

    def isBalanced: Boolean = {
      t match {
        case Node(l, r, _, _) =>
          -1 <= l.height - r.height && l.height - r.height <= 1 &&
          l.isBalanced && r.isBalanced && t.size > 1 // to avoid needlessly deep nodes otherwise the asymptotic complexity can be arbitrary large
        case _ => true
      }
    }

    def forall(p: T => Boolean): Boolean = {
      decreases(t.height)
      t match {
        case Empty() => true
        case Leaf(x) => p(x)
        case Node(l, r, _, _) => 
          ghostExpr(ListUtils.lemmaForallConcat(l.list, r.list, p))
          l.forall(p) && r.forall(p)
      }
    }.ensuring(res => res == t.list.forall(p))

    def exists(p: T => Boolean): Boolean = {
      decreases(t.height)
      t match {
        case Empty() => false
        case Leaf(x) => p(x)
        case Node(l, r, _, _) => 
          ghostExpr(ListUtils.lemmaExistsConcat(l.list, r.list, p))
          l.exists(p) || r.exists(p)
      }
    }.ensuring(_ == t.list.exists(p))

    @pure @ghost @inlineOnce
    def dropList(n: BigInt): List[T] = {
      t.list.drop(n)
    }

  extension[T](xs: Conc[T])
    /**
      * Concatenate xs with ys without preserving balancing
      *
      * @param ys
      */
    def <>(ys: Conc[T]) = {
      if xs == Empty[T]() then ys
      else if ys == Empty[T]() then xs
      else Node(xs, ys, xs.size + ys.size, 
                        max(xs.height, ys.height) + 1)
    }.ensuring(_.list == xs.list ++ ys.list)

    /**
      * Concatenate xs with ys preserving balancing
      *
      * @param ys
      */
    def ++(ys: Conc[T]): Conc[T] = {
      require(xs.isBalanced && ys.isBalanced)
      decreases(abs(xs.height - ys.height))
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
    }.ensuring(res => 
        appendAssocInst(xs, ys) &&
        res.isBalanced &&
        res.height <= max(xs.height, ys.height) + 1 &&
        res.height >= max(xs.height, ys.height) &&
        res.list == xs.list ++ ys.list)

    /**
      * Compare with the other balance conc at the sequence level,
      * i.e., returns true if the two balance concs represent the same sequence
      *
      * @return
      */
    def sameSeqAs(ys: Conc[T]): Boolean = {
      if xs.size != ys.size then false else xs.sameSeqAsFrom(ys, 0)
    }.ensuring(res => res == (xs.list == ys.list))

    /**
      * Compare with the other balance conc at the sequence level,
      * i.e., returns true if the two balance concs represent the same sequence
      * 
      * starting at the index from, used as a sub function of sameSeqAs
      *
      * @return
      */
    def sameSeqAsFrom(ys: Conc[T], from: BigInt): Boolean = {
      require(xs.size == ys.size)
      require(0 <= from && from <= xs.size)
      decreases(xs.size - from)
      if from >= xs.size then true
      else
        ghostExpr({
          ListUtils.lemmaDropApply(xs.list, from)
          ListUtils.lemmaDropApply(ys.list, from)
          ListUtils.lemmaDropTail(xs.list, from)
          ListUtils.lemmaDropTail(ys.list, from)
        })
        xs(from) == ys(from) && sameSeqAsFrom(ys, from + 1)
    }.ensuring(res => res == (xs.dropList(from) == ys.dropList(from)))

  extension[T](t: Conc[T])
    def map[B](f: T => B): Conc[B] = {
      require(t.isBalanced)
      decreases(t.height)
      t match {
        case Empty() => Empty[B]()
        case Leaf(x) => Leaf(f(x))
        case Node(l, r, cs, ch) => 
          ghostExpr(ListUtils.lemmaMapConcat(l.list, r.list, f))
          assert((l.list ++ r.list).map(f) == (l.list.map(f) ++ r.list.map(f)))
          Node(l.map(f), r.map(f), cs, ch)
      }
    }.ensuring(res => res.list == t.list.map(f) && res.isBalanced)

    def slice(from: BigInt, until: BigInt): Conc[T] = {
      require(0 <= from && from <= until && until <= t.size && t.isBalanced)
      decreases(t)
      if from == until then Empty[T]()
      else 
        t match
          case Leaf(x) => 
            if from == 0 && until == 1 then t
            else Empty[T]()
          case Node(l, r, _, _) =>
            ghostExpr(sliceLemma(l.list, r.list, from, until)) // lemma
            if l.size <= from then r.slice(from - l.size, until - l.size)
            else if until <= l.size then l.slice(from, until)
            else            
              val l1 = l.slice(from, l.size)
              val r1 = r.slice(0, until - l.size)
              l1 ++ r1
    }.ensuring(res => res.isBalanced && res.list == t.list.slice(from, until))

    def splitAt(i: BigInt): (Conc[T], Conc[T]) = {
      require(t.isBalanced)
      require(0 <= i && i <= t.size)
      decreases(t)
      t match
        case Empty[T]() => (t, t)
        case Leaf(x) => 
          if i <= 0 then (Empty[T](), t)
          else (t, Empty[T]())
        case Node(l, r, _, _) =>
          ghostExpr(splitAtLemma(l.list, r.list, i))
          if l.size == i then (l, r)
          else if i < l.size then 
            val (l1, l2) = l.splitAt(i)
            (l1, l2 ++ r)
          else 
            val (r1, r2) = r.splitAt(i - l.size)
            (l ++ r1, r2)
    }.ensuring(res => (res._1.isBalanced && res._2.isBalanced) && (res._1.list, res._2.list) == t.list.splitAtIndex(i))

    def filter(p: T => Boolean): Conc[T] = {
      require(t.isBalanced)
       t match
        case Empty[T]() => t
        case Leaf(x) if p(x) => t
        case Leaf(x) if !p(x) => Empty[T]()
        case Node(l, r, _, _) =>
          ghostExpr(ListUtils.lemmaFilterConcat(l.list, r.list, p))
          assert((l.list ++ r.list).filter(p) == (l.list.filter(p) ++ r.list.filter(p)))
          l.filter(p) ++ r.filter(p)
    }.ensuring(res => res.isBalanced && res.list == t.list.filter(p))

    def append(v: T): Conc[T] = {
      require(t.isBalanced)
      t ++ Leaf(v)
    }.ensuring(res => res.isBalanced && res.list == (t.list :+ v))

    def prepend(v: T): Conc[T] = {
      require(t.isBalanced)
      Leaf(v) ++ t
    }.ensuring(res => res.isBalanced && res.list == (Cons(v, t.list)))

    def tail: Conc[T] = {
      require(t.isBalanced)
      require(!t.isEmpty)
      t match
        case Leaf(x) => Empty[T]()
        // case Node(l, r, _, _) if l.size == 1 => r
        case Node(l, r, _, _) if l.isEmpty => r.tail
        case Node(l, r, _, _) => 
          ghostExpr(ListUtils.lemmaTailOfConcatIsTailConcat(l.list, r.list))
          assert((l.list ++ r.list).tail == (l.list.tail ++ r.list))
          l.tail ++ r
    }.ensuring(res => res.isBalanced && res.list == t.list.tail)

    def head: T = {
      require(t.isBalanced)
      require(!t.isEmpty)
      t match
        case Leaf(x) => x
        case Node(l, r, _, _) => l.head
    }.ensuring(res => res == t.list.head)

    def last: T = {
      require(t.isBalanced)
      require(!t.isEmpty)
      t match
        case Leaf(x) => x
        case Node(l, r, _, _) => 
          ghostExpr(ListUtils.lemmaLastOfConcatIsLastOfRhs(l.list, r.list))
          r.last
    }.ensuring(res => res == t.list.last)

  // **************************************************************************
  // lemmas for proofs
  // **************************************************************************

  // NOT TRUE and we don't want it
  // @ghost @inlineOnce @opaque
  // def listEqImpliesEq[T](c1: Conc[T], c2: Conc[T]): Unit = {
  //   require(c1.isBalanced && c2.isBalanced)
  //   require(c1.list == c2.list)
  //   decreases(c1)
  //   (c1, c2) match
  //     case (Empty(), Empty()) => assert(c2 == c1)  
  //     case (Leaf(x1), Leaf(x2)) => assert(c2 == c1)
  //     case (Node(l1, r1, _, _), Node(l2, r2, _, _)) => 
  //       assert(l1.size == l2.size)
  //       listEqImpliesEq(l1, l2)
  //       listEqImpliesEq(r1, r2)
  //     case _ => check(false)
        
    
  // }.ensuring(_ => c1 == c2)

  @ghost @inlineOnce @opaque
  def sliceLemma[T](l: List[T], r: List[T], from: BigInt, until: BigInt): Unit = {
    require(0 <= from && from <= until && until <= l.size + r.size)
    decreases(l, r)
    if l == Nil[T]() || r == Nil[T]() then ()
    else
      if until == 0 then ()
      else 
        assert((l++r).tail == l.tail ++ r)
        if from == 0 then 
          sliceLemma(l.tail, r, 0, until - 1)
        else
          sliceLemma(l.tail, r, from - 1, until - 1)
  }.ensuring(_ => (l ++ r).slice(from, until) == 
                  (if l.size <= from then r.slice(from - l.size, until - l.size)
                   else if until <= l.size then l.slice(from, until)
                   else l.slice(from, l.size) ++ r.slice(0, until - l.size)))

  @ghost @inlineOnce @opaque
  def splitAtLemma[T](l: List[T], r: List[T], i: BigInt): Unit = {
    require(0 <= i && i <= l.size + r.size)
    decreases(l, r)
    if l == Nil[T]() || r == Nil[T]() then ()
    else 
      assert(!l.isEmpty && !r.isEmpty)
      if i <= 0 then ()
      else 
        assert((l++r).tail == l.tail ++ r)
        splitAtLemma(l.tail, r, i - 1)
  }.ensuring(_ => (l ++ r).splitAtIndex(i) == 
                  (if l.size == i then (l, r)
                  else if i < l.size then 
                    val (l1, l2) = l.splitAtIndex(i)
                    (l1, l2 ++ r)
                  else 
                    val (r1, r2) = r.splitAtIndex(i - l.size)
                    (l ++ r1, r2)))

/* Expects this definition of method slice of list:

  def slice(from: BigInt, until: BigInt): List[T] = {
    require(0 <= from && from <= until && until <= size)
    this match {
      case Nil() => Nil[T]()
      case Cons(h, t) =>
        if (to == 0) Nil[T]()
        else {
          if (from == 0) {
            Cons[T](h, t.islice(0, to - 1))
          } else {
            t.islice(from - 1, to - 1)
          }
        }
    }
  }

  And this one for splitAtIndex

  def splitAtIndex(index: BigInt) : (List[T], List[T]) = { 
    decreases(this.length)
    this match {
      case Nil() => (Nil[T](), Nil[T]())
      case Cons(h, rest) =>
        if (index <= BigInt(0)) {
          (Nil[T](), this)
        } else {
          val (left,right) = rest.splitAtIndex(index - 1)
          (Cons[T](h,left), right)
        }
  }}.ensuring { (res:(List[T],List[T])) =>
    res._1 ++ res._2 == this &&
    res._1 == take(index) && res._2 == drop(index)
  }
*/

end BalanceConcObj


