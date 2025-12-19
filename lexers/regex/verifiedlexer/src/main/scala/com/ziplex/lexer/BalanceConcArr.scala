// Adapted from the bolts version

package com.ziplex.lexer

import scala.reflect.ClassTag

import stainless.lang.{ghost => ghostExpr, _}
import stainless.proof._
//import stainless.lang.StaticChecks._
import stainless.collection._
import ListSpecs._
import stainless.annotation._
import stainless.lang.StaticChecks.*

import com.ziplex.lexer.ListUtils

import com.ziplex.lexer.IArray


object BalanceConcObj:

  case class BalanceConc[T: ClassTag](c: Conc[T]){
    require(c.isBalanced)

    @ghost def list: List[T] = c.list
    
    def efficientList: List[T] = {
      c.efficientList()
    }.ensuring(res => res == this.list)
    
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

    def map[B: ClassTag](f: T => B): BalanceConc[B] = {
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

  def empty[T: ClassTag]: BalanceConc[T] = BalanceConc(Empty())
  @inlineOnce @opaque def singleton[T: ClassTag](t: T): BalanceConc[T] = {
    BalanceConc(LeafFrom(t))
  }.ensuring(res => res.list == List(t) && res.isBalanced)
  def fromListB[T: ClassTag](l: List[T]): BalanceConc[T] = {
    BalanceConc(fromList(l))
  }.ensuring(res => res.list == l && res.isBalanced)


  @pure @extern @inlineOnce @ghost
  def fromListHdTlConstructive[T: ClassTag](hd: T, tl: List[T], bc: BalanceConc[T]): Unit = {
    require(bc.list == fromList(hd :: tl).list)
  }.ensuring(_ => bc.list == fromList(tl).prepend(hd).list)




  inline def LEAF_ARRAY_MAX_SIZE: BigInt = 128 // MUST BE <= 2147483647 (Int.MaxValue)

  sealed abstract class Conc[T]
  case class Empty[T]() extends Conc[T]
  case class Leaf[T: ClassTag](xs: IArray[T], csize: BigInt) extends Conc[T] {
    require(xs.list.size <= LEAF_ARRAY_MAX_SIZE && csize == xs.list.size && csize > 0 && csize <= LEAF_ARRAY_MAX_SIZE)
  }
  // case class Leaf[T: ClassTag](x: T) extends Conc[T]
  case class Node[T: ClassTag](left: Conc[T], right: Conc[T], 
                     csize: BigInt, cheight: BigInt) extends Conc[T] {
    require(csize == left.size + right.size && left != Empty[T]() && right != Empty[T]() &&
            cheight == max(left.height, right.height) + 1 &&
            0 <= cheight)
  }

  @pure def LeafFrom[T: ClassTag](x: T): Conc[T] = Leaf(IArray.fill(1)(x), 1)

  @pure @opaque 
  def fromList[T: ClassTag](l: List[T]): Conc[T] = {
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

  @pure
  def fromArray[T: ClassTag](arr: IArray[T], acc: Conc[T]): Conc[T] = {
    require(acc.isBalanced)
    decreases(arr.size)

    if arr.size <= LEAF_ARRAY_MAX_SIZE then 
      if arr.size == 0 then acc
      else acc ++ Leaf(arr, arr.size)
    else 
      val leftLeaf = Leaf(arr.slice(0, LEAF_ARRAY_MAX_SIZE), LEAF_ARRAY_MAX_SIZE)
      ghostExpr({
        val res = fromArray(arr.slice(LEAF_ARRAY_MAX_SIZE, arr.size), acc ++ leftLeaf)
        assert((acc.list ++ leftLeaf.list) ++ arr.slice(LEAF_ARRAY_MAX_SIZE, arr.size).list == res.list)
        lemmaConcatAssociativity(acc.list, leftLeaf.list , arr.slice(LEAF_ARRAY_MAX_SIZE, arr.size).list)
        assert(acc.list ++ (leftLeaf.list ++ arr.slice(LEAF_ARRAY_MAX_SIZE, arr.size).list) == res.list)
        assert(res.isBalanced)
        sliceSplit(arr.list, LEAF_ARRAY_MAX_SIZE)
        assert((leftLeaf.list ++ arr.slice(LEAF_ARRAY_MAX_SIZE, arr.size).list) == arr.list)
        assert(res.list == (acc.list ++ arr.list))
      })
      fromArray(arr.slice(LEAF_ARRAY_MAX_SIZE, arr.size), acc ++ leftLeaf)
  }.ensuring(res => res.isBalanced && (res.list == (acc.list ++ arr.list)))

  def max(x: BigInt, y: BigInt) =
    if x < y then y else x
  def min(x: BigInt, y: BigInt) =
    if x < y then x else y
  def abs(x: BigInt) =
    if 0 <= x then x else -x

  extension[T: ClassTag](t: Conc[T])
    @ghost
    def list: List[T] = t match
      case Empty() => Nil[T]()
      case Leaf(xs, _) => xs.list
      case Node(l, r, _, _) => l.list ++ r.list

    def efficientList(acc: List[T] = Nil[T]()): List[T] = {
      t match
        case Empty() => acc
        case Leaf(x, _) => x.efficientList ++ acc
        case Node(l, r, _, _) => 
          ghostExpr(lemmaConcatAssociativity(l.list, r.list, acc))
          l.efficientList(r.efficientList(acc))

    }.ensuring(res => res == (t.list ++ acc))

    def size: BigInt = {
      t match
        case Empty() => BigInt(0)
        case Leaf(_, csize) => csize
        case Node(_, _, csize, _) => csize
    }.ensuring(_ == t.list.size)

    def isEmpty: Boolean = {
      t.size == 0
    }.ensuring(res => res == t.list.isEmpty)

    def height: BigInt = 
      t match 
        case Empty() => 0
        case Leaf(_, _) => 1
        case Node(_, _, _, cheight) => cheight

    def apply(i: BigInt): T = {
      require(0 <= i && i < t.size)
      t match
        case Leaf(xs, csize) => {
          ghostExpr(assert(i >= 0 && i < csize))
          ghostExpr(assert(xs.list.size <= LEAF_ARRAY_MAX_SIZE))
          xs(i)
        }
        case Node(l, r, _, _) =>
          appendIndex(l.list, r.list, i) // lemma
          if i < l.size then l(i)
          else r(i - l.size)
    }.ensuring(_ == t.list(i))

    def contains(v: T): Boolean = {
      t match
        case Empty() => false
        case Leaf(xs, _) => xs.contains(v)
        case Node(l, r, _, _) =>  l.contains(v) || r.contains(v)
    }.ensuring(_ == t.list.contains(v))

    def isBalanced: Boolean = {
      t match {
        case Node(l, r, _, _) =>
          -1 <= l.height - r.height && l.height - r.height <= 1 &&
          l.isBalanced && r.isBalanced && !l.isEmpty && !r.isEmpty // to avoid needlessly deep nodes otherwise the asymptotic complexity can be arbitrary large
        case _ => true
      }
    }

    def forall(p: T => Boolean): Boolean = {
      decreases(t.height)
      t match {
        case Empty() => true
        case Leaf(xs, _) => xs.forall(p)
        case Node(l, r, _, _) => 
          ghostExpr(ListUtils.lemmaForallConcat(l.list, r.list, p))
          l.forall(p) && r.forall(p)
      }
    }.ensuring(res => res == t.list.forall(p))

    def exists(p: T => Boolean): Boolean = {
      decreases(t.height)
      t match {
        case Empty() => false
        case Leaf(xs, _) => xs.exists(p)
        case Node(l, r, _, _) => 
          ghostExpr(ListUtils.lemmaExistsConcat(l.list, r.list, p))
          l.exists(p) || r.exists(p)
      }
    }.ensuring(_ == t.list.exists(p))

  extension[T: ClassTag](xs: Conc[T])
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

  @ghost 
  def appendAssocInst[T: ClassTag](xs: Conc[T], ys: Conc[T]): Boolean = {
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

  extension[T: ClassTag](t: Conc[T])
    def slice(from: BigInt, until: BigInt): Conc[T] = {
      require(0 <= from && from <= until && until <= t.size && t.isBalanced)
      decreases(t)
      if from == until then Empty[T]()
      else 
        t match
          case Leaf(xs, csize) => if until - from == 0 then Empty[T]() 
                                 else 
                                  Leaf(xs.slice(from, until), until - from)
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
        case Leaf(xs, csize) => 
          if i <= 0 then (Empty[T](), t)
          else if i == csize then (t, Empty[T]())
          else 
            ghostExpr({
              val (ll, lr) = xs.list.splitAtIndex(i)
              assert(ll == xs.list.take(i))
              assert(lr == xs.list.drop(i))
              dropLemma(xs.list, i)
              assert(ll == xs.list.slice(0, i))
              
            })
            (Leaf(xs.slice(0, i), i), 
                Leaf(xs.slice(i, csize), csize - i))
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
        case Leaf(xs, csize) => 
          val filteredArray = xs.filter(p)
          if filteredArray.size == 0 then Empty[T]()
          else Leaf(filteredArray, filteredArray.size)
        case Node(l, r, _, _) =>
          ghostExpr(ListUtils.lemmaFilterConcat(l.list, r.list, p))
          assert((l.list ++ r.list).filter(p) == (l.list.filter(p) ++ r.list.filter(p)))
          l.filter(p) ++ r.filter(p)
    }.ensuring(res => res.isBalanced && res.list == t.list.filter(p))

    def map[B: ClassTag](f: T => B): Conc[B] = {
      require(t.isBalanced)
      decreases(t.height)
      t match {
        case Empty() => Empty[B]()
        case Leaf(xs, csize) => Leaf(xs.map(f), csize)
        case Node(l, r, cs, ch) => 
          ghostExpr(ListUtils.lemmaMapConcat(l.list, r.list, f))
          assert((l.list ++ r.list).map(f) == (l.list.map(f) ++ r.list.map(f)))
          Node(l.map(f), r.map(f), cs, ch)
      }
    }.ensuring(res => res.list == t.list.map(f) && res.isBalanced)

    def append(v: T): Conc[T] = {
      require(t.isBalanced)
      t match
        case Empty[T]() => Leaf(IArray.fill(1)(v), 1)
        case Node(l, r, tsize, theight) => 
          val newR = r.append(v)
          if newR.height <= l.height + 1 then
            ghostExpr(lemmaConcatAssociativity(l.list, r.list, List(v)))
            l <> newR
          else 
            newR match
              case Node(rl, rr, _, _) => 
                assert(((l <> rl).height == l.height + 1))
                ghostExpr(lemmaConcatAssociativity(l.list, rl.list, rr.list))
                ghostExpr(lemmaConcatAssociativity(l.list, r.list, List(v)))
                (l <> rl) <> rr
        case Leaf(xs, csize) => 
          if csize < LEAF_ARRAY_MAX_SIZE then 
            ghostExpr({
              val newList = xs.list :+ v
              assert(newList.size == csize + 1)
            })
            Leaf(xs.append(v), csize + 1)
          else 
            val newLeaf = Leaf(IArray.fill(1)(v), 1)
            t <> newLeaf
        
    }.ensuring(res => res.isBalanced && 
                      t.height <= res.height && res.height <= t.height + 1 && 
                      res.list == (t.list :+ v))

    def prepend(v: T): Conc[T] = {
      require(t.isBalanced)
      Leaf(IArray.fill(1)(v), 1) ++ t
    }.ensuring(res => res.isBalanced && res.list == (Cons(v, t.list)))

    def tail: Conc[T] = {
      require(t.isBalanced)
      require(!t.isEmpty)
      t match
        case Leaf(xs, csize) => 
          if csize == 1 then Empty[T]()
          else 
            ghostExpr(sliceTailLemma(xs.list))
            Leaf(xs.slice(1, csize), csize - 1)
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
        case Leaf(xs, csize) => xs(0)
        case Node(l, r, _, _) => l.head
    }.ensuring(res => res == t.list.head)

    def last: T = {
      require(t.isBalanced)
      require(!t.isEmpty)
      t match
        case Leaf(xs, csize) => xs.last
        case Node(l, r, _, _) => 
          ghostExpr(ListUtils.lemmaLastOfConcatIsLastOfRhs(l.list, r.list))
          r.last
    }.ensuring(res => res == t.list.last)

    @pure @ghost @inlineOnce
    def dropList(n: BigInt): List[T] = {
      t.list.drop(n)
    }


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

  @ghost @pure @inlineOnce @opaque
  def dropLemma[T](l: List[T], i: BigInt): Unit = {
    require(0 <= i && i <= l.size)
    decreases(l)
    l match {
      case Nil() => ()
      case Cons(_, t) =>
        if i == 0 then 
          assert(l.drop(i) == l)
          assert(l.slice(0, l.size) == l.drop(0).take(l.size))
          assert(l.slice(0, l.size) == l.take(l.size))
          takeFullLemma(l)
          assert(l == l.take(l.size))
          takeSliceLemma(l, l.size)
          assert(l.slice(0, l.size) == l)
        else dropLemma(t, i - 1)
    }
  }.ensuring(_ => l.drop(i) == l.slice(i, l.size))

  @ghost @pure @inlineOnce @opaque
  def takeSliceLemma[T](l: List[T], i: BigInt): Unit = {
    require(0 <= i && i <= l.size)
    decreases(l)
    l match {
      case Nil() => ()
      case Cons(_, t) =>
        if i == 0 then 
          assert(l.take(i) == Nil[T]())
          assert(l.slice(0, i) == Nil[T]())
        else takeSliceLemma(t, i - 1)
    }
  }.ensuring(_ => l.take(i) == l.slice(0, i))

  @ghost @pure @inlineOnce @opaque
  def takeFullLemma[T](l: List[T]): Unit = {
    decreases(l)
    l match {
      case Nil() => ()
      case Cons(_, t) =>
        takeFullLemma(t)
    }
  }.ensuring(_ => l.take(l.size) == l)

  @ghost @pure @inlineOnce @opaque
  def sliceTailLemma[T](l: List[T]): Unit = {
    require(l.size > 0)
    decreases(l)
    l match {
      case Nil() => ()
      case Cons(_, t) =>
        assert(l.tail == t)
        assert(l.slice(1, l.size) == t.slice(0, t.size))
        if t.size > 0 then sliceTailLemma(t)
    }
  }.ensuring(_ => l.tail == l.slice(1, l.size))


  @ghost @pure @inlineOnce @opaque
  def sliceSplit[T](l: List[T], i: BigInt): Unit = {
    decreases(l)
    require(0 <= i && i <= l.size)
    l match {
      case Nil() => ()
      case Cons(hd, tl) if i == 0 => 
        assert(l.slice(0, i).isEmpty)
        takeFullLemma(l)
      case Cons(hd, tl) if i > 0  => 
        sliceSplit(tl, i - 1)
        assert(List(hd) ++ tl.slice(0, i - 1) == l.slice(0, i))
    }
  }.ensuring(_ => l.slice(0, i) ++ l.slice(i, l.size) == l)


  @ghost @pure @inlineOnce @opaque
  def lemmaConcatAssociativity[B](
      l1: List[B],
      l2: List[B],
      l3: List[B]
  ): Unit = {
    decreases(l1)
    l1 match {
      case Cons(hd, tl) => {
        lemmaConcatAssociativity(tl, l2, l3)
      }
      case Nil() => ()
    }

  }.ensuring (_ => (l1 ++ l2) ++ l3 == l1 ++ (l2 ++ l3))

end BalanceConcObj

