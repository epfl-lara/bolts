// Simplification of: http://aleksandar-prokopec.com/resources/docs/lcpc-conc-trees.pdf
import stainless.lang._
import stainless.proof._
//import stainless.lang.StaticChecks._
import stainless.collection._
import ListSpecs._
import stainless.annotation._

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

    def isBalanced: Boolean = {
      t match {
        case Node(l, r, _, _) =>
          -1 <= l.height - r.height && l.height - r.height <= 1 &&
          l.isBalanced && r.isBalanced
        case _ => true
      }
    }
    

  extension[T](xs: Conc[T])
    def <>(ys: Conc[T]) = {
      if xs == Empty[T]() then ys
      else if ys == Empty[T]() then xs
      else Node(xs, ys, xs.size + ys.size, 
                        max(xs.height, ys.height) + 1)
    }.ensuring(_.toList == xs.toList ++ ys.toList)

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
  }..holds

  extension[T](t: Conc[T])
    def slice(from: BigInt, until: BigInt): Conc[T] = {
      require(0 <= from && from <= until && until <= t.size && t.isBalanced)
      decreases(t)
      if from == until then Empty[T]()
      else 
        t match
          case Leaf(x) => 
            if from == 0 && until == 1 then Leaf(x)
            else Empty[T]()
          case Node(l, r, _, _) =>
            sliceLemma(l.toList, r.toList, from, until) // lemma
            if l.size <= from then r.slice(from - l.size, until - l.size)
            else if until <= l.size then l.slice(from, until)
            else            
              val l1 = l.slice(from, l.size)
              val r1 = r.slice(0, until - l.size)
              l1 ++ r1
    }.ensuring(res => res.isBalanced && res.toList == t.toList.slice(from, until))

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
*/

end BalanceConc

