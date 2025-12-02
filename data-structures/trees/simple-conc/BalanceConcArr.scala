// Simplification of: http://aleksandar-prokopec.com/resources/docs/lcpc-conc-trees.pdf
import stainless.lang.{ghost => ghostExpr, _}
import stainless.proof._
//import stainless.lang.StaticChecks._
import stainless.collection._
import ListSpecs._
import stainless.annotation._
import stainless.lang.StaticChecks.*

import com.ziplex.lexer.ListUtils

import IArrays.*


object BalanceConcArr:

  sealed abstract class Conc[T <: AnyRef]
  case class Empty[T <: AnyRef]() extends Conc[T]
  case class Leaf[T <: AnyRef](xs: IArray[T], csize: BigInt) extends Conc[T] {
    require(xs.list.size <= 32 && csize == xs.list.size && csize > 0 && csize <= 32)
  }
  // case class Leaf[T <: AnyRef](x: T) extends Conc[T]
  case class Node[T <: AnyRef](left: Conc[T], right: Conc[T], 
                     csize: BigInt, cheight: BigInt) extends Conc[T] {
    require(csize == left.size + right.size && left != Empty[T]() && right != Empty[T]() &&
            cheight == max(left.height, right.height) + 1 &&
            0 <= cheight)
  }

  @pure @opaque 
  def fromList[T <: AnyRef](l: List[T]): Conc[T] = {
    def rec(ll: List[T], c: Conc[T]): Conc[T] = {
      require(c.isBalanced)
      decreases(ll.size)
      ll match {
        case Nil() => c
        case Cons(x, xs) => 
          assert(rec(xs, c.append(x)).toList == (c.append(x)).toList ++ xs)
          assert((c.append(x)).toList == c.toList ++ List(x))
          ghostExpr(ListUtils.lemmaTwoListsConcatAssociativity(c.toList, List(x), xs))
          assert((c.toList ++ List(x)) ++ xs == c.toList ++ (x :: xs))
          rec(xs, c.append(x))
      }
    }.ensuring(res => res.toList == c.toList ++ ll)
    rec(l, Empty[T]())
  }.ensuring(_.toList == l)

  def max(x: BigInt, y: BigInt) =
    if x < y then y else x
  def abs(x: BigInt) =
    if 0 <= x then x else -x

  extension[T <: AnyRef](t: Conc[T])
    @ghost
    def toList: List[T] = t match
      case Empty() => Nil[T]()
      case Leaf(xs, _) => xs.list
      case Node(l, r, _, _) => l.toList ++ r.toList

    def size: BigInt = {
      t match
        case Empty() => BigInt(0)
        case Leaf(_, csize) => csize
        case Node(_, _, csize, _) => csize
    }.ensuring(_ == t.toList.size)

    def isEmpty: Boolean = {
      t.size == 0
    }.ensuring(res => res == t.toList.isEmpty)

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
          ghostExpr(assert(xs.list.size <= 32))
          xs(i)
        }
        case Node(l, r, _, _) =>
          appendIndex(l.toList, r.toList, i) // lemma
          if i < l.size then l(i)
          else r(i - l.size)
    }.ensuring(_ == t.toList(i))

    def contains(v: T): Boolean = {
      t match
        case Empty() => false
        case Leaf(xs, _) => xs.contains(v)
        case Node(l, r, _, _) =>  l.contains(v) || r.contains(v)
    }.ensuring(_ == t.toList.contains(v))

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
        case Leaf(xs, _) => xs.forall(p)
        case Node(l, r, _, _) => 
          ghostExpr(ListUtils.lemmaForallConcat(l.toList, r.toList, p))
          l.forall(p) && r.forall(p)
      }
    }.ensuring(res => res == t.toList.forall(p))

    def exists(p: T => Boolean): Boolean = {
      decreases(t.height)
      t match {
        case Empty() => false
        case Leaf(xs, _) => xs.exists(p)
        case Node(l, r, _, _) => 
          ghostExpr(ListUtils.lemmaExistsConcat(l.toList, r.toList, p))
          l.exists(p) || r.exists(p)
      }
    }.ensuring(_ == t.toList.exists(p))

    def map[B <: AnyRef](f: T => B): Conc[B] = {
      decreases(t.height)
      t match {
        case Empty() => Empty[B]()
        case Leaf(xs, csize) => Leaf(xs.map(f), csize)
        case Node(l, r, cs, ch) => 
          ghostExpr(ListUtils.lemmaMapConcat(l.toList, r.toList, f))
          assert((l.toList ++ r.toList).map(f) == (l.toList.map(f) ++ r.toList.map(f)))
          Node(l.map(f), r.map(f), cs, ch)
      }
    }.ensuring(res => res.toList == t.toList.map(f))

  extension[T <: AnyRef](xs: Conc[T])
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
    }.ensuring(_.toList == xs.toList ++ ys.toList)

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
        res.toList == xs.toList ++ ys.toList)

  @ghost 
  def appendAssocInst[T <: AnyRef](xs: Conc[T], ys: Conc[T]): Boolean = {
    (xs match {
      case Node(l, r, _, _) =>
        appendAssoc(l.toList, r.toList, ys.toList) && //instantiation of associativity of concatenation
          (r match {
            case Node(rl, rr, _, _) =>
              appendAssoc(rl.toList, rr.toList, ys.toList) &&
                appendAssoc(l.toList, rl.toList, rr.toList ++ ys.toList)
            case _ => true
          })
      case _ => true
    }) &&
    (ys match {
        case Node(l, r, _, _) =>
          appendAssoc(xs.toList, l.toList, r.toList) &&
            (l match {
              case Node(ll, lr, _, _) =>
                appendAssoc(xs.toList, ll.toList, lr.toList) &&
                  appendAssoc(xs.toList ++ ll.toList, lr.toList, r.toList)
              case _ => true
            })
        case _ => true
    })
  }.holds

  extension[T <: AnyRef](t: Conc[T])
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
            ghostExpr(sliceLemma(l.toList, r.toList, from, until)) // lemma
            if l.size <= from then r.slice(from - l.size, until - l.size)
            else if until <= l.size then l.slice(from, until)
            else            
              val l1 = l.slice(from, l.size)
              val r1 = r.slice(0, until - l.size)
              l1 ++ r1
    }.ensuring(res => res.isBalanced && res.toList == t.toList.slice(from, until))

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
            (Leaf(xs.slice(0, i), i), 
                Leaf(xs.slice(i, csize), csize - i))
        case Node(l, r, _, _) =>
          ghostExpr(splitAtLemma(l.toList, r.toList, i))
          if l.size == i then (l, r)
          else if i < l.size then 
            val (l1, l2) = l.splitAt(i)
            (l1, l2 ++ r)
          else 
            val (r1, r2) = r.splitAt(i - l.size)
            (l ++ r1, r2)
    }.ensuring(res => (res._1.isBalanced && res._2.isBalanced) && (res._1.toList, res._2.toList) == t.toList.splitAtIndex(i))

    def filter(p: T => Boolean): Conc[T] = {
      require(t.isBalanced)
       t match
        case Empty[T]() => t
        case Leaf(xs, csize) => 
          val filteredArray = xs.filter(p)
          if filteredArray.size == 0 then Empty[T]()
          else Leaf(filteredArray, filteredArray.size)
        case Node(l, r, _, _) =>
          ghostExpr(ListUtils.lemmaFilterConcat(l.toList, r.toList, p))
          assert((l.toList ++ r.toList).filter(p) == (l.toList.filter(p) ++ r.toList.filter(p)))
          l.filter(p) ++ r.filter(p)
    }.ensuring(res => res.isBalanced && res.toList == t.toList.filter(p))

    def append(v: T): Conc[T] = {
      require(t.isBalanced)
      t ++ Leaf(IArray.fill(1)(v), 1)
    }.ensuring(res => res.isBalanced && res.toList == (t.toList :+ v))

    def prepend(v: T): Conc[T] = {
      require(t.isBalanced)
      Leaf(IArray.fill(1)(v), 1) ++ t
    }.ensuring(res => res.isBalanced && res.toList == (Cons(v, t.toList)))

    def tail: Conc[T] = {
      require(t.isBalanced)
      require(!t.isEmpty)
      t match
        case Leaf(xs, csize) => 
          if csize == 1 then Empty[T]()
          else Leaf(xs.slice(1, csize), csize - 1)
        // case Node(l, r, _, _) if l.size == 1 => r
        case Node(l, r, _, _) if l.isEmpty => r.tail
        case Node(l, r, _, _) => 
          ghostExpr(ListUtils.lemmaTailOfConcatIsTailConcat(l.toList, r.toList))
          assert((l.toList ++ r.toList).tail == (l.toList.tail ++ r.toList))
          l.tail ++ r
    }.ensuring(res => res.isBalanced && res.toList == t.toList.tail)

    def head: T = {
      require(t.isBalanced)
      require(!t.isEmpty)
      t match
        case Leaf(xs, csize) => xs(0)
        case Node(l, r, _, _) => l.head
    }.ensuring(res => res == t.toList.head)

    def last: T = {
      require(t.isBalanced)
      require(!t.isEmpty)
      t match
        case Leaf(xs, csize) => xs.last
        case Node(l, r, _, _) => 
          ghostExpr(ListUtils.lemmaLastOfConcatIsLastOfRhs(l.toList, r.toList))
          r.last
    }.ensuring(res => res == t.toList.last)


  extension[T <: AnyRef](t: Conc[T])
    @extern
    def toStr: Vector[String] = 
      t match
        case Empty() => Vector("Empty()")
        case Leaf(xs, csize) => Vector("Leaf(" + xs.toString + ")")
        case Node(l, r, csize, _) =>
          if csize <= 4 then
            Vector("Node(" + l.toStr.head + ", " + r.toStr.head + ")")
          else  
            val ls = l.toStr
            val rs = r.toStr          
            def indent(k: Int) = (s: String) => " " * k + s
            val lsNode = Vector("Node(" + ls.head) ++
                                      ls.tail.map(indent(3))
            val lsNodecomma = lsNode.init ++ Vector(lsNode.last + ",")
            val rsIndent = rs.map(indent(3))
            val rsIndentClosed = rsIndent.init ++ Vector(rsIndent.last + ")")
            lsNodecomma ++ rsIndentClosed
    end toStr

  extension[T <: AnyRef](t: Conc[T])
    @extern
    def toDraw: Vector[String] = // note that down is left
      t match
        case Empty() => Vector("()")
        case Leaf(xs, csize) => Vector(xs.toString)
        case Node(l, r, csize, _) =>
          val ls = r.toDraw
          val rs = l.toDraw      
          val p = 3* ls.size / 2 // push first subtree right for visual balance
          val ls1 = Vector("┬" + "─"*p + ls.head) ++
                    ls.tail.map("│" + " "*p + _)
          val rs1 = Vector("└" + rs.head) ++
                    rs.tail.map(" " + _)
          ls1 ++ rs1
    end toDraw

  // @extern
  // def show[T](t: Conc[T]): String = 
  //   t.toDraw.mkString("\n")

  // def mkTree(from: Int, until: Int): Conc[Int] =
  //   require(0 <= from && from <= until && until <= 1_000_000)
  //   decreases(until - from)
  //   if from == until then Empty()
  //   else if from + 1 == until then Leaf(from)
  //   else
  //     val mid = from + (until - from)/2
  //     mkTree(from, mid) ++ mkTree(mid, until)    

  // @extern
  // def test =
  //   val c1: Conc[Int] = (1 to 8).map(Leaf(_)).foldRight[Conc[Int]](Empty())((a, b) => a <> b)
  //   println(f"\nc1.height = ${c1.height}, isBalanced=${c1.isBalanced}")
  //   println(show(c1))
  //   val c2: Conc[Int] = (1 to 8).map(Leaf(_)).foldLeft[Conc[Int]](Empty())((a, b) => a <> b)
  //   println(f"\nc2.height = ${c2.height}, isBalanced=${c2.isBalanced}")
  //   println(show(c2))
  //   val c3 = mkTree(1, 9)
  //   val c4 = mkTree(0,1) ++ ((c3 ++ mkTree(9, 11)) ++ mkTree(12, 14))
  //   println(f"\nc4.height = ${c4.height}, isBalanced=${c4.isBalanced}")
  //   println(show(c4))
  //   println(show(c4.slice(3,8)))


  // **************************************************************************
  // lemmas for proofs
  // **************************************************************************

  // NOT TRUE and we don't want it
  // @ghost @inlineOnce @opaque
  // def listEqImpliesEq[T](c1: Conc[T], c2: Conc[T]): Unit = {
  //   require(c1.isBalanced && c2.isBalanced)
  //   require(c1.toList == c2.toList)
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

  // @ghost
  // def listISizeSizeEq[T](l: List[T]): Unit = {
  //   require(l.isize < Int.MaxValue || l.size < BigInt(2147483647))
  //   decreases(l)
  //     l match
  //       case Nil() => ()
  //       case Cons(_, t) => {
  //         if l.isize < Int.MaxValue then
  //           assert(t.isize == l.isize - 1)
  //           listISizeSizeEq(t)
  //         else 
  //           assert(t.size < BigInt(2147483647) - 1)
  //           assert(t.size < BigInt(2147483646))

  //           lemmaConversionPreservesOrderBigInt(t.size, BigInt(2147483647) - 1)
  //           lemmaConversionPreservesOrderInt(t.isize, Int.MaxValue - 1)
  //           listISizeSizeEq(t)
  //           assert(t.isize < Int.MaxValue - 1)
  //       }
  // }.ensuring(_ => intToBigInt(l.isize) == l.size) 

  // @ghost
  // def listIApplyApplyEq[T](l: List[T], i: Int): Unit = {
  //   require(l.isize < Int.MaxValue)
  //   require(0 <= i && i < l.isize)
  //   decreases(l)
  //   if i == 0 then ()
  //   else 
  //     l match
  //       case Nil() => ()
  //       case Cons(_, t) => {
  //         assert(i - 1 >= 0)
  //         listIApplyApplyEq(t, i - 1)
  //       }
  // }.ensuring(_ => l.iapply(i) == l.apply(intToBigInt(i))) 


  // @ghost 
  // def sameSizeThenSameISize[A, B](l1: List[A], l2: List[B]): Unit = {
  //   require(l1.size == l2.size)
  //   decreases(l1)
  //   (l1, l2) match
  //     case (Nil(), Nil()) => ()
  //     case (Cons(_, t1), Cons(_, t2)) => sameSizeThenSameISize(t1, t2)
  //     case _ => ()
  // }.ensuring(_ => l1.isize == l2.isize)

  
  // @ghost 
  // def sliceISliceEq[T](l: List[T], from: Int, until: Int): Unit = {
  //   require(l.isize < Int.MaxValue)
  //   require(0 <= from && from <= until && until <= l.isize)

  //   decreases(l.size)
  //   l match {
  //       case Nil() => ()
  //       case Cons(h, t) =>
  //         if (until == 0) ()
  //         else {
  //           if (from == 0) {
  //             sliceISliceEq(t, 0, until - 1)
  //           } else {
  //             sliceISliceEq(t, from - 1, until - 1)
  //           }
  //         }
  //     }
  // }.ensuring(_ => {
  //   intBigIntConversionInverseInt(from)
  //   intBigIntConversionInverseInt(until)
  //   listISizeSizeEq(l)
  //   lemmaConversionPreservesOrderInt(from, until)
  //   lemmaConversionPreservesOrderInt(until, l.isize)
  //   assert(0 <= intToBigInt(from) && intToBigInt(from) <= intToBigInt(until) && intToBigInt(until) <= l.size)
  //   l.islice(from, until) == l.slice(intToBigInt(from), intToBigInt(until))
  //   })



end BalanceConcArr

// object BigIntUtils:

//   def intToBigInt(n: Int): BigInt = {
//     require(n >= 0)
//     decreases(n)
//     if n == 0 then BigInt(0)
//     // else if n == 1 then BigInt(1)
//     // else if n == 2 then BigInt(2)
//     // else if n == 3 then BigInt(3)
//     // else if n == 4 then BigInt(4)
//     // else if n == 5 then BigInt(5)
//     // else if n == 6 then BigInt(6)
//     // else if n == 7 then BigInt(7)
//     // else if n == 8 then BigInt(8)
//     // else if n == 9 then BigInt(9)
//     // else if n == 10 then BigInt(10)
//     // else if n == 11 then BigInt(11)
//     // else if n == 12 then BigInt(12)
//     // else if n == 13 then BigInt(13)
//     // else if n == 14 then BigInt(14)
//     // else if n == 15 then BigInt(15)
//     // else if n == 16 then BigInt(16)
//     // else if n == 17 then BigInt(17)
//     // else if n == 18 then BigInt(18)
//     // else if n == 19 then BigInt(19)
//     // else if n == 20 then BigInt(20)
//     // else if n == 21 then BigInt(21)
//     // else if n == 22 then BigInt(22)
//     // else if n == 23 then BigInt(23)
//     // else if n == 24 then BigInt(24)
//     // else if n == 25 then BigInt(25)
//     // else if n == 26 then BigInt(26)
//     // else if n == 27 then BigInt(27)
//     // else if n == 28 then BigInt(28)
//     // else if n == 29 then BigInt(29)
//     // else if n == 30 then BigInt(30)
//     // else if n == 31 then BigInt(31)
//     // else if n == 32 then BigInt(32)
//     else intToBigInt(n - 1) + BigInt(1)
//   }.ensuring(res => res >= 0 && intBigIntEq(res, n))

//   def bigIntToInt(n: BigInt): Int = {
//     require(n >= 0 && n <= Int.MaxValue)
//     n match
//       case _ if n == BigInt(0) => 0
//       // case _ if n == BigInt(1) => 1
//       // case _ if n == BigInt(2) => 2
//       // case _ if n == BigInt(3) => 3
//       // case _ if n == BigInt(4) => 4
//       // case _ if n == BigInt(5) => 5
//       // case _ if n == BigInt(6) => 6
//       // case _ if n == BigInt(7) => 7
//       // case _ if n == BigInt(8) => 8
//       // case _ if n == BigInt(9) => 9
//       // case _ if n == BigInt(10) => 10
//       // case _ if n == BigInt(11) => 11
//       // case _ if n == BigInt(12) => 12
//       // case _ if n == BigInt(13) => 13
//       // case _ if n == BigInt(14) => 14
//       // case _ if n == BigInt(15) => 15
//       // case _ if n == BigInt(16) => 16
//       // case _ if n == BigInt(17) => 17
//       // case _ if n == BigInt(18) => 18
//       // case _ if n == BigInt(19) => 19
//       // case _ if n == BigInt(20) => 20
//       // case _ if n == BigInt(21) => 21
//       // case _ if n == BigInt(22) => 22
//       // case _ if n == BigInt(23) => 23
//       // case _ if n == BigInt(24) => 24
//       // case _ if n == BigInt(25) => 25
//       // case _ if n == BigInt(26) => 26
//       // case _ if n == BigInt(27) => 27
//       // case _ if n == BigInt(28) => 28
//       // case _ if n == BigInt(29) => 29
//       // case _ if n == BigInt(30) => 30
//       // case _ if n == BigInt(31) => 31
//       // case _ if n == BigInt(32) => 32
//       case _ => 
//         ghostExpr({
//           val intermediate = bigIntToInt(n - 1)
//           assert(intBigIntEq(n - 1, intermediate))
//           assert(n - 1 >= 0)
//           assert(intermediate >= 0)
//           assert(n - 1 < Int.MaxValue)
//           intBigIntSubPreservesEq(Int.MaxValue, Int.MaxValue, 0, 0)
//           intBigIntEqPreservesOrder(n - 1, intermediate, Int.MaxValue , Int.MaxValue)
//           intBigIntEqPreservesOrder(n - 1, intermediate, n, intermediate + 1)
//           assert(intermediate < Int.MaxValue)
//         })
//         bigIntToInt(n - BigInt(1)) + 1
//   }.ensuring(res => intBigIntEq(n, res))

//   @ghost
//   def intBigIntEq(n1: BigInt, n2: Int): Boolean = {
//     require(n1 >= 0)
//     if n1 == 0 then n2 == 0
//     else if n2 <= 0 then false 
//     else intBigIntEq(n1 - 1, n2 - 1)
//   }.ensuring(res => res ==> (n1 >= 0 && n2 >= 0))

//   @ghost
//   def intBigIntEqPreservesOrder(n11: BigInt, n12: Int, n21: BigInt, n22: Int): Unit = {
//     require(n11 >= 0 && n21 >= 0)
//     require(intBigIntEq(n11, n12))
//     require(intBigIntEq(n21, n22))
//     require(n11 < n21)
//     decreases(n21)
//     if n11 == n21 - 1 then 
//       assert(n11 + 1 == n21)
//       assert(n22 >= 0)
//       intBigIntEqPreservesEquality(n11, n12, n21 - 1, n22 - 1)
//       assert(n12 + 1 == n22)
//     else 
//       assert(n11 + 1 <= n21)
//       intBigIntEqPreservesOrder(n11, n12, n21 - 1, n22 - 1)
//   }.ensuring(_ => n12 < n22)

//   @ghost
//   def intBigIntEqPreservesEquality(n11: BigInt, n12: Int, n21: BigInt, n22: Int): Unit = {
//     require(n11 >= 0 && n21 >= 0)
//     require(intBigIntEq(n11, n12))
//     require(intBigIntEq(n21, n22))
//     require(n11 == n21)
//     decreases(n21)
//     if n11 == 0 then ()
//     else 
//       intBigIntEqPreservesEquality(n11 - 1, n12 - 1, n21 - 1, n22 - 1)
//   }.ensuring(_ => n12 == n22)

//   @ghost
//   def intBigIntSubPreservesEq(n11: BigInt, n12: Int, n21: BigInt, n22: Int): Unit = {
//     require(n11 >= 0 && n21 >= 0 && n21 <= n11)
//     require(intBigIntEq(n11, n12))
//     require(intBigIntEq(n21, n22))
//     decreases(n21)
//     if n21 == 0 then ()
//     else 
//       intBigIntSubPreservesEq(n11 - 1, n12 - 1, n21 - 1, n22 - 1)
//   }.ensuring(_ => intBigIntEq(n11 - n21, n12 - n22))

//   // @ghost
//   // def intBigIntAddPreservesEq(n11: BigInt, n12: Int, n21: BigInt, n22: Int): Unit = {
//   //   require(n11 >= 0 && n21 >= 0)
//   //   require(n11 + n21 <= Int.MaxValue)
//   //   require(intBigIntEq(n11, n12))
//   //   require(intBigIntEq(n21, n22))
//   //   decreases(n11)
//   //   if n21 == 0 || n11 == 0 then ()
//   //   else 
//   //     assert(n21 + 1 <= Int.MaxValue)
//   //     intBigIntAddPreservesEq(n11 - 1, n12 - 1, n21 + 1, n22 + 1)
//   // }.ensuring(_ => intBigIntEq(n11 + n21, n12 + n22))

//   @ghost 
//   def intBigIntConversionInverseInt(n: Int): Unit = {
//     require(n >= 0)
//     decreases(n)
//     if n <= 0 then ()
//     else intBigIntConversionInverseInt(n - 1)
//   }.ensuring(_ => bigIntToInt(intToBigInt(n)) == n)

//   @ghost
//     require(n >= 0 && n <= Int.MaxValue)
//     decreases(n)
//     if n <= 0 then ()
//   }.ensuring(_ => intToBigInt(bigIntToInt(n)) == n)

//   @ghost 
//   def lemmaConversionPreservesOrderInt(n1: Int, n2: Int): Unit = {
//     require(0 <= n1 && n1 <= n2)
//     decreases(n2 - n1)
//     if n1 == n2 then ()
//     else 
//       assert(n1 + 1 <= n2)
//       lemmaConversionPreservesOrderInt(n1 + 1, n2)
//   }.ensuring(_ => intToBigInt(n1) <= intToBigInt(n2))

//   @ghost 
//   def lemmaConversionPreservesOrderBigInt(n1: BigInt, n2: BigInt): Unit = {
//     require(0 <= n1 && n1 <= n2 && n2 <= Int.MaxValue)
//     decreases(n2 - n1)
//     if n1 == n2 then ()
//     else 
//       assert(n1 + BigInt(1) <= n2)
//       lemmaConversionPreservesOrderBigInt(n1 + BigInt(1), n2)
//   }.ensuring(_ => bigIntToInt(n1) <= bigIntToInt(n2))

// end BigIntUtils