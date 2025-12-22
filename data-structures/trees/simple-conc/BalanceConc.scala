// Simplification of: http://aleksandar-prokopec.com/resources/docs/lcpc-conc-trees.pdf
import stainless.lang.{ghost => ghostExpr, _}
import stainless.proof._
//import stainless.lang.StaticChecks._
import stainless.collection._
import ListSpecs._
import stainless.annotation._
import stainless.lang.StaticChecks.*


object BalanceConc:

  sealed abstract class Conc[T]
  case class Empty[T]() extends Conc[T]
  case class Leaf[T](x: T) extends Conc[T]
  case class Node[T](left: Conc[T], right: Conc[T], 
                     csize: BigInt, cheight: BigInt) extends Conc[T] {
    require(csize == left.size + right.size && left != Empty[T]() && right != Empty[T]() &&
            cheight == max(left.height, right.height) + 1 &&
            0 <= cheight)
  }

  @pure @opaque 
  def fromList[T](l: List[T]): Conc[T] = {
    def rec(ll: List[T], c: Conc[T]): Conc[T] = {
      require(c.isBalanced)
      decreases(ll.size)
      ll match {
        case Nil() => c
        case Cons(x, xs) => 
          assert(rec(xs, c.append(x)).toList == (c.append(x)).toList ++ xs)
          assert((c.append(x)).toList == c.toList ++ List(x))
          ghostExpr(lemmaConcatAssociativity(c.toList, List(x), xs))
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

  extension[T](t: Conc[T])
    def toList: List[T] = t match
      case Empty() => Nil[T]()
      case Leaf(x) => List(x)
      case Node(l, r, _, _) => l.toList ++ r.toList

    def size: BigInt = {
      t match
        case Empty() => BigInt(0)
        case Leaf(_) => BigInt(1)
        case Node(_, _, csize, _) => csize
    }.ensuring(_ == t.toList.size)

    def isEmpty: Boolean = {
      t.size == 0
    }.ensuring(res => res == t.toList.isEmpty)

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
          appendIndex(l.toList, r.toList, i) // lemma
          if i < l.size then l(i)
          else r(i - l.size)
    }.ensuring(_ == t.toList(i))

    def contains(v: T): Boolean = {
      t match
        case Empty() => false
        case Leaf(x) => v == x
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
        case Leaf(x) => p(x)
        case Node(l, r, _, _) => 
          ghostExpr(lemmaForallConcat(l.toList, r.toList, p))
          l.forall(p) && r.forall(p)
      }
    }.ensuring(res => res == t.toList.forall(p))

    def exists(p: T => Boolean): Boolean = {
      decreases(t.height)
      t match {
        case Empty() => false
        case Leaf(x) => p(x)
        case Node(l, r, _, _) => 
          ghostExpr(lemmaExistsConcat(l.toList, r.toList, p))
          l.exists(p) || r.exists(p)
      }
    }.ensuring(_ == t.toList.exists(p))

    def map[B](f: T => B): Conc[B] = {
      decreases(t.height)
      t match {
        case Empty() => Empty[B]()
        case Leaf(x) => Leaf(f(x))
        case Node(l, r, cs, ch) => 
          ghostExpr(lemmaMapConcat(l.toList, r.toList, f))
          assert((l.toList ++ r.toList).map(f) == (l.toList.map(f) ++ r.toList.map(f)))
          Node(l.map(f), r.map(f), cs, ch)
      }
    }.ensuring(res => res.toList == t.toList.map(f))

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
  def appendAssocInst[T](xs: Conc[T], ys: Conc[T]): Boolean = {
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

  extension[T](t: Conc[T])
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
        case Leaf(x) => 
          if i <= 0 then (Empty[T](), t)
          else (t, Empty[T]())
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
        case Leaf(x) if p(x) => t
        case Leaf(x) if !p(x) => Empty[T]()
        case Node(l, r, _, _) =>
          ghostExpr(lemmaFilterConcat(l.toList, r.toList, p))
          assert((l.toList ++ r.toList).filter(p) == (l.toList.filter(p) ++ r.toList.filter(p)))
          l.filter(p) ++ r.filter(p)
    }.ensuring(res => res.isBalanced && res.toList == t.toList.filter(p))

    def append(v: T): Conc[T] = {
      require(t.isBalanced)
      t ++ Leaf(v)
    }.ensuring(res => res.isBalanced && res.toList == (t.toList :+ v))

    def prepend(v: T): Conc[T] = {
      require(t.isBalanced)
      Leaf(v) ++ t
    }.ensuring(res => res.isBalanced && res.toList == (Cons(v, t.toList)))

    def tail: Conc[T] = {
      require(t.isBalanced)
      require(!t.isEmpty)
      t match
        case Leaf(x) => Empty[T]()
        // case Node(l, r, _, _) if l.size == 1 => r
        case Node(l, r, _, _) if l.isEmpty => r.tail
        case Node(l, r, _, _) => 
          ghostExpr(lemmaTailOfConcatIsTailConcat(l.toList, r.toList))
          assert((l.toList ++ r.toList).tail == (l.toList.tail ++ r.toList))
          l.tail ++ r
    }.ensuring(res => res.isBalanced && res.toList == t.toList.tail)

    def head: T = {
      require(t.isBalanced)
      require(!t.isEmpty)
      t match
        case Leaf(x) => x
        case Node(l, r, _, _) => l.head
    }.ensuring(res => res == t.toList.head)

    def last: T = {
      require(t.isBalanced)
      require(!t.isEmpty)
      t match
        case Leaf(x) => x
        case Node(l, r, _, _) => 
          ghostExpr(lemmaLastOfConcatIsLastOfRhs(l.toList, r.toList))
          r.last
    }.ensuring(res => res == t.toList.last)


  extension[T](t: Conc[T])
    @extern
    def toStr: Vector[String] = 
      t match
        case Empty() => Vector("Empty()")
        case Leaf(x) => Vector("Leaf(" + x.toString + ")")
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

  extension[T](t: Conc[T])
    @extern
    def toDraw: Vector[String] = // note that down is left
      t match
        case Empty() => Vector("()")
        case Leaf(x) => Vector(x.toString)
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

  @extern
  def show[T](t: Conc[T]): String = 
    t.toDraw.mkString("\n")

  def mkTree(from: Int, until: Int): Conc[Int] =
    require(0 <= from && from <= until && until <= 1_000_000)
    decreases(until - from)
    if from == until then Empty()
    else if from + 1 == until then Leaf(from)
    else
      val mid = from + (until - from)/2
      mkTree(from, mid) ++ mkTree(mid, until)    

  @extern
  def test =
    val c1: Conc[Int] = (1 to 8).map(Leaf(_)).foldRight[Conc[Int]](Empty())((a, b) => a <> b)
    println(f"\nc1.height = ${c1.height}, isBalanced=${c1.isBalanced}")
    println(show(c1))
    val c2: Conc[Int] = (1 to 8).map(Leaf(_)).foldLeft[Conc[Int]](Empty())((a, b) => a <> b)
    println(f"\nc2.height = ${c2.height}, isBalanced=${c2.isBalanced}")
    println(show(c2))
    val c3 = mkTree(1, 9)
    val c4 = mkTree(0,1) ++ ((c3 ++ mkTree(9, 11)) ++ mkTree(12, 14))
    println(f"\nc4.height = ${c4.height}, isBalanced=${c4.isBalanced}")
    println(show(c4))
    println(show(c4.slice(3,8)))


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

  @ghost
  @opaque
  @inlineOnce
  def lemmaForallConcat[B](l1: List[B], l2: List[B], p: B => Boolean): Unit = {
    l1 match {
      case Cons(hd1, tl1) => 
        lemmaForallConcat(tl1, l2, p)
      case _ => ()
    }
  }.ensuring(_ => (l1 ++ l2).forall(p) == (l1.forall(p) && l2.forall(p)))

  @ghost
  @opaque
  @inlineOnce
  def lemmaExistsConcat[B](l1: List[B], l2: List[B], p: B => Boolean): Unit = {
    l1 match {
      case Cons(hd1, tl1) => 
        lemmaExistsConcat(tl1, l2, p)
      case _ => ()
    }
  }.ensuring(_ => (l1 ++ l2).exists(p) == (l1.exists(p) || l2.exists(p)))

  @ghost
  @opaque
  @inlineOnce
  def lemmaFilterConcat[B](l1: List[B], l2: List[B], p: B => Boolean): Unit = {
    l1 match {
      case Cons(hd1, tl1) => 
        lemmaFilterConcat(tl1, l2, p)
      case _ => ()
    }
  }.ensuring(_ => (l1 ++ l2).filter(p) == (l1.filter(p) ++ l2.filter(p)))

  @ghost
  @opaque
  @inlineOnce
  def lemmaMapConcat[B, A](l1: List[B], l2: List[B], p: B => A): Unit = {
    l1 match {
      case Cons(hd1, tl1) => 
        lemmaMapConcat(tl1, l2, p)
      case _ => ()
    }
  }.ensuring(_ => (l1 ++ l2).map(p) == (l1.map(p) ++ l2.map(p)))

  @inlineOnce
  @opaque
  @ghost
  def lemmaTailOfConcatIsTailConcat[B](l1: List[B], l2: List[B]): Unit = {
    require(!l1.isEmpty)
    decreases(l1)
    l1 match {
      case Cons(hd, tl) if !tl.isEmpty => lemmaTailOfConcatIsTailConcat(tl, l2)
      case _        => ()
    }
  }.ensuring (_ => (l1 ++ l2).tail == l1.tail ++ l2)

  @inlineOnce
  @opaque
  @ghost
  def lemmaLastOfConcatIsLastOfRhs[B](l1: List[B], l2: List[B]): Unit = {
    require(!(l1 ++ l2).isEmpty)
    decreases(l1)
    l1 match {
      case Cons(hd, tl) if !tl.isEmpty => lemmaLastOfConcatIsLastOfRhs(tl, l2)
      case _        => ()
    }
  }.ensuring (_ => (l2.isEmpty && ((l1 ++ l2).last == l1.last)) || (!l2.isEmpty && (l1 ++ l2).last == l2.last))

end BalanceConc

