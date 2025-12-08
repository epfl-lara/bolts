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


object BalanceConcArrChar:

  // TODO make this parametric
  inline def LEAF_ARRAY_MAX_SIZE: BigInt = 128 // MUST BE <= 2147483647 (Int.MaxValue)

  sealed abstract class ConcChar
  case class Empty() extends ConcChar
  case class Leaf(xs: IArrayChar, csize: BigInt) extends ConcChar {
    require(xs.list.size <= LEAF_ARRAY_MAX_SIZE && csize == xs.list.size && csize > 0 && csize <= LEAF_ARRAY_MAX_SIZE)
  }
  // case class Leaf(x: Char) extends ConcChar
  case class Node(left: ConcChar, right: ConcChar, 
                     csize: BigInt, cheight: BigInt) extends ConcChar {
    require(csize == left.size + right.size && left != Empty() && right != Empty() &&
            cheight == max(left.height, right.height) + 1 &&
            0 <= cheight)
  }

  @pure def LeafFrom(x: Char): ConcChar = Leaf(IArrayChar.fill(1)(x), 1)

  @pure @opaque 
  def fromList(l: List[Char]): ConcChar = {
    def rec(ll: List[Char], c: ConcChar): ConcChar = {
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
    rec(l, Empty())
  }.ensuring(_.toList == l)

  @pure
  def fromArray(arr: IArrayChar, acc: ConcChar = Empty()): ConcChar = {
    require(acc.isBalanced)
    decreases(arr.size)

    if arr.size <= LEAF_ARRAY_MAX_SIZE then 
      if arr.size == 0 then acc
      else acc ++ Leaf(arr, arr.size)
    else 
      val leftLeaf = Leaf(arr.slice(0, LEAF_ARRAY_MAX_SIZE), LEAF_ARRAY_MAX_SIZE)
      ghostExpr({
        val res = fromArray(arr.slice(LEAF_ARRAY_MAX_SIZE, arr.size), acc ++ leftLeaf)
        assert((acc.toList ++ leftLeaf.toList) ++ arr.slice(LEAF_ARRAY_MAX_SIZE, arr.size).list == res.toList)
        lemmaConcatAssociativity(acc.toList, leftLeaf.toList , arr.slice(LEAF_ARRAY_MAX_SIZE, arr.size).list)
        assert(acc.toList ++ (leftLeaf.toList ++ arr.slice(LEAF_ARRAY_MAX_SIZE, arr.size).list) == res.toList)
        assert(res.isBalanced)
        sliceSplit(arr.list, LEAF_ARRAY_MAX_SIZE)
        assert((leftLeaf.toList ++ arr.slice(LEAF_ARRAY_MAX_SIZE, arr.size).list) == arr.list)
        assert(res.toList == (acc.toList ++ arr.list))
      })
      fromArray(arr.slice(LEAF_ARRAY_MAX_SIZE, arr.size), acc ++ leftLeaf)
  }.ensuring(res => res.isBalanced && (res.toList == (acc.toList ++ arr.list)))

  def max(x: BigInt, y: BigInt) =
    if x < y then y else x
  def min(x: BigInt, y: BigInt) =
    if x < y then x else y
  def abs(x: BigInt) =
    if 0 <= x then x else -x

  extension(t: ConcChar)
    @ghost
    def toList: List[Char] = t match
      case Empty() => Nil[Char]()
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

    def apply(i: BigInt): Char = {
      require(0 <= i && i < t.size)
      t match
        case Leaf(xs, csize) => {
          ghostExpr(assert(i >= 0 && i < csize))
          ghostExpr(assert(xs.list.size <= LEAF_ARRAY_MAX_SIZE))
          xs(i)
        }
        case Node(l, r, _, _) =>
          appendIndex(l.toList, r.toList, i) // lemma
          if i < l.size then l(i)
          else r(i - l.size)
    }.ensuring(_ == t.toList(i))

    def contains(v: Char): Boolean = {
      t match
        case Empty() => false
        case Leaf(xs, _) => xs.contains(v)
        case Node(l, r, _, _) =>  l.contains(v) || r.contains(v)
    }.ensuring(_ == t.toList.contains(v))

    def isBalanced: Boolean = {
      t match {
        case Node(l, r, _, _) =>
          -1 <= l.height - r.height && l.height - r.height <= 1 &&
          l.isBalanced && r.isBalanced && !l.isEmpty && !r.isEmpty // to avoid needlessly deep nodes otherwise the asymptotic complexity can be arbitrary large
        case _ => true
      }
    }

    def forall(p: Char => Boolean): Boolean = {
      decreases(t.height)
      t match {
        case Empty() => true
        case Leaf(xs, _) => xs.forall(p)
        case Node(l, r, _, _) => 
          ghostExpr(ListUtils.lemmaForallConcat(l.toList, r.toList, p))
          l.forall(p) && r.forall(p)
      }
    }.ensuring(res => res == t.toList.forall(p))

    def exists(p: Char => Boolean): Boolean = {
      decreases(t.height)
      t match {
        case Empty() => false
        case Leaf(xs, _) => xs.exists(p)
        case Node(l, r, _, _) => 
          ghostExpr(ListUtils.lemmaExistsConcat(l.toList, r.toList, p))
          l.exists(p) || r.exists(p)
      }
    }.ensuring(_ == t.toList.exists(p))

    def map(f: Char => Char): ConcChar = {
      decreases(t.height)
      t match {
        case Empty() => Empty()
        case Leaf(xs, csize) => Leaf(xs.map(f), csize)
        case Node(l, r, cs, ch) => 
          ghostExpr(ListUtils.lemmaMapConcat(l.toList, r.toList, f))
          assert((l.toList ++ r.toList).map(f) == (l.toList.map(f) ++ r.toList.map(f)))
          Node(l.map(f), r.map(f), cs, ch)
      }
    }.ensuring(res => res.toList == t.toList.map(f))

  extension(xs: ConcChar)
    /**
      * Concatenate xs with ys without preserving balancing
      *
      * @param ys
      */
    def <>(ys: ConcChar) = {
      if xs == Empty() then ys
      else if ys == Empty() then xs
      else Node(xs, ys, xs.size + ys.size, 
                        max(xs.height, ys.height) + 1)
    }.ensuring(_.toList == xs.toList ++ ys.toList)

    /**
      * Concatenate xs with ys preserving balancing
      *
      * @param ys
      */
    def ++(ys: ConcChar): ConcChar = {
      require(xs.isBalanced && ys.isBalanced)
      decreases(abs(xs.height - ys.height))
      if xs == Empty() then ys
      else if ys == Empty() then xs
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
  def appendAssocInst(xs: ConcChar, ys: ConcChar): Boolean = {
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

  extension(t: ConcChar)
    def slice(from: BigInt, until: BigInt): ConcChar = {
      require(0 <= from && from <= until && until <= t.size && t.isBalanced)
      decreases(t)
      if from == until then Empty()
      else 
        t match
          case Leaf(xs, csize) => if until - from == 0 then Empty() 
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

    def splitAt(i: BigInt): (ConcChar, ConcChar) = {
      require(t.isBalanced)
      require(0 <= i && i <= t.size)
      decreases(t)
      t match
        case Empty() => (t, t)
        case Leaf(xs, csize) => 
          if i <= 0 then (Empty(), t)
          else if i == csize then (t, Empty())
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
          ghostExpr(splitAtLemma(l.toList, r.toList, i))
          if l.size == i then (l, r)
          else if i < l.size then 
            val (l1, l2) = l.splitAt(i)
            (l1, l2 ++ r)
          else 
            val (r1, r2) = r.splitAt(i - l.size)
            (l ++ r1, r2)
    }.ensuring(res => (res._1.isBalanced && res._2.isBalanced) && (res._1.toList, res._2.toList) == t.toList.splitAtIndex(i))

    def filter(p: Char => Boolean): ConcChar = {
      require(t.isBalanced)
       t match
        case Empty() => t
        case Leaf(xs, csize) => 
          val filteredArray = xs.filter(p)
          if filteredArray.size == 0 then Empty()
          else Leaf(filteredArray, filteredArray.size)
        case Node(l, r, _, _) =>
          ghostExpr(ListUtils.lemmaFilterConcat(l.toList, r.toList, p))
          assert((l.toList ++ r.toList).filter(p) == (l.toList.filter(p) ++ r.toList.filter(p)))
          l.filter(p) ++ r.filter(p)
    }.ensuring(res => res.isBalanced && res.toList == t.toList.filter(p))

    def append(v: Char): ConcChar = {
      require(t.isBalanced)
      t match
        case Empty() => Leaf(IArrayChar.fill(1)(v), 1)
        case Node(l, r, tsize, theight) => 
          val newR = r.append(v)
          if newR.height <= l.height + 1 then
            ghostExpr(lemmaConcatAssociativity(l.toList, r.toList, List(v)))
            l <> newR
          else 
            newR match
              case Node(rl, rr, _, _) => 
                assert(((l <> rl).height == l.height + 1))
                ghostExpr(lemmaConcatAssociativity(l.toList, rl.toList, rr.toList))
                ghostExpr(lemmaConcatAssociativity(l.toList, r.toList, List(v)))
                (l <> rl) <> rr
        case Leaf(xs, csize) => 
          if csize < LEAF_ARRAY_MAX_SIZE then 
            ghostExpr({
              val newList = xs.list :+ v
              assert(newList.size == csize + 1)
            })
            Leaf(xs.append(v), csize + 1)
          else 
            val newLeaf = Leaf(IArrayChar.fill(1)(v), 1)
            t <> newLeaf
        
    }.ensuring(res => res.isBalanced && 
                      t.height <= res.height && res.height <= t.height + 1 && 
                      res.toList == (t.toList :+ v))

    def prepend(v: Char): ConcChar = {
      require(t.isBalanced)
      Leaf(IArrayChar.fill(1)(v), 1) ++ t
    }.ensuring(res => res.isBalanced && res.toList == (Cons(v, t.toList)))

    def tail: ConcChar = {
      require(t.isBalanced)
      require(!t.isEmpty)
      t match
        case Leaf(xs, csize) => 
          if csize == 1 then Empty()
          else 
            ghostExpr(sliceTailLemma(xs.list))
            Leaf(xs.slice(1, csize), csize - 1)
        case Node(l, r, _, _) if l.isEmpty => r.tail
        case Node(l, r, _, _) => 
          ghostExpr(ListUtils.lemmaTailOfConcatIsTailConcat(l.toList, r.toList))
          assert((l.toList ++ r.toList).tail == (l.toList.tail ++ r.toList))
          l.tail ++ r
    }.ensuring(res => res.isBalanced && res.toList == t.toList.tail)

    def head: Char = {
      require(t.isBalanced)
      require(!t.isEmpty)
      t match
        case Leaf(xs, csize) => xs(0)
        case Node(l, r, _, _) => l.head
    }.ensuring(res => res == t.toList.head)

    def last: Char = {
      require(t.isBalanced)
      require(!t.isEmpty)
      t match
        case Leaf(xs, csize) => xs.last
        case Node(l, r, _, _) => 
          ghostExpr(ListUtils.lemmaLastOfConcatIsLastOfRhs(l.toList, r.toList))
          r.last
    }.ensuring(res => res == t.toList.last)

  def mkTree(from: BigInt, until: BigInt): ConcChar =
    require(0 <= from && from <= until && until <= 1_000_000)
    decreases(until - from)
    if from == until then Empty()
    else if from + 1 == until then LeafFrom('a')
    else
      val mid = from + (until - from)/2
      mkTree(from, mid) ++ mkTree(mid, until)    

  @extern
  def test =
    val c1: ConcChar = (1 to 8).map((i:Int) => LeafFrom(i.toChar)).foldRight[ConcChar](Empty())((a, b) => a <> b)
    println(f"\nc1.height = ${c1.height}, isBalanced=${c1.isBalanced}")
    // println(show(c1))
    val c2: ConcChar = (1 to 8).map((i:Int) => LeafFrom(i.toChar)).foldLeft[ConcChar](Empty())((a, b) => a <> b)
    println(f"\nc2.height = ${c2.height}, isBalanced=${c2.isBalanced}")
    // println(show(c2))
    val c3 = mkTree('1', '9')
    val c4 = mkTree('0','1') ++ ((c3 ++ mkTree('9', '2')) ++ mkTree('2', '3'))
    println(f"\nc4.height = ${c4.height}, isBalanced=${c4.isBalanced}")
    // println(show(c4))
    // println(show(c4.slice(3,8)))


  // **************************************************************************
  // lemmas for proofs
  // **************************************************************************

  // NOT TRUE and we don't want it
  // @ghost @inlineOnce @opaque
  // def listEqImpliesEq[Char](c1: ConcChar, c2: ConcChar): Unit = {
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
  def sliceLemma[B](l: List[B], r: List[B], from: BigInt, until: BigInt): Unit = {
    require(0 <= from && from <= until && until <= l.size + r.size)
    decreases(l, r)
    if l.isEmpty || r.isEmpty then ()
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
  def splitAtLemma[B](l: List[B], r: List[B], i: BigInt): Unit = {
    require(0 <= i && i <= l.size + r.size)
    decreases(l, r)
    if l.isEmpty || r.isEmpty then ()
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

  def slice(from: BigInt, until: BigInt): List[Char] = {
    require(0 <= from && from <= until && until <= size)
    this match {
      case Nil() => Nil[Char]()
      case Cons(h, t) =>
        if (to == 0) Nil[Char]()
        else {
          if (from == 0) {
            Cons[Char](h, t.islice(0, to - 1))
          } else {
            t.islice(from - 1, to - 1)
          }
        }
    }
  }

  And this one for splitAtIndex

  def splitAtIndex(index: BigInt) : (List[Char], List[Char]) = { 
    decreases(this.length)
    this match {
      case Nil() => (Nil[Char](), Nil[Char]())
      case Cons(h, rest) =>
        if (index <= BigInt(0)) {
          (Nil[Char](), this)
        } else {
          val (left,right) = rest.splitAtIndex(index - 1)
          (Cons[Char](h,left), right)
        }
  }}.ensuring { (res:(List[Char],List[Char])) =>
    res._1 ++ res._2 == this &&
    res._1 == take(index) && res._2 == drop(index)
  }
*/

  @ghost @pure @inlineOnce @opaque
  def dropLemma[B](l: List[B], i: BigInt): Unit = {
    require(0 <= i && i <= l.size)
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
  def takeSliceLemma[B](l: List[B], i: BigInt): Unit = {
    require(0 <= i && i <= l.size)
    l match {
      case Nil() => ()
      case Cons(_, t) =>
        if i == 0 then 
          assert(l.take(i).isEmpty)
          assert(l.slice(0, i).isEmpty)
        else takeSliceLemma(t, i - 1)
    }
  }.ensuring(_ => l.take(i) == l.slice(0, i))

  @ghost @pure @inlineOnce @opaque
  def takeFullLemma[B](l: List[B]): Unit = {
    decreases(l)
    l match {
      case Nil() => ()
      case Cons(_, t) =>
        takeFullLemma(t)
    }
  }.ensuring(_ => l.take(l.size) == l)

  @ghost @pure @inlineOnce @opaque
  def sliceTailLemma[B](l: List[B]): Unit = {
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
  def sliceSplit[B](l: List[B], i: BigInt): Unit = {
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

end BalanceConcArrChar
