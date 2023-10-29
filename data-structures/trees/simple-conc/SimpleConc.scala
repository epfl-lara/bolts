// Simplification of: http://aleksandar-prokopec.com/resources/docs/lcpc-conc-trees.pdf
import stainless.lang._
import stainless.proof._
import stainless.lang.StaticChecks._
import stainless.collection._
import ListSpecs._
import stainless.annotation._

object SimpleConc:

  trait Seq[T]:
    def toList: List[T]
    def size: Int
    def apply(i: Int): T
    def ++(that: Seq[T]): Seq[T]
    def slice(from: Int, until: Int): Seq[T]
  end Seq

  sealed abstract class Conc[T]
  case class Empty[T]() extends Conc[T]
  case class Leaf[T](x: T) extends Conc[T]
  case class Node[T](left: Conc[T], right: Conc[T], csize: BigInt) extends Conc[T] {
    require(csize == left.size + right.size && left != Empty[T]() && right != Empty[T]())
  }

  extension[T](t: Conc[T])
    def toList: List[T] = t match
      case Empty() => Nil[T]()
      case Leaf(x) => List(x)
      case Node(l, r, _) => l.toList ++ r.toList

    def size: BigInt = {
      t match
        case Empty() => BigInt(0)
        case Leaf(_) => BigInt(1)
        case Node(_, _, csize) => csize
    }.ensuring(_ == t.toList.size)

    def apply(i: BigInt): T = {
      require(0 <= i && i < t.size)
      t match
        case Leaf(x) => assert(i == 0); x
        case Node(l, r, _) =>
          appendIndex(l.toList, r.toList, i) // lemma
          if i < l.size then l(i)
          else r(i - l.size)
    }.ensuring(_ == t.toList(i))

  extension[T](t1: Conc[T])
    def <>(t2: Conc[T]) = 
      if t1 == Empty[T]() then t2
      else if t2 == Empty[T]() then t1
      else Node(t1, t2, t1.size + t2.size)

    def ++(t2: Conc[T]): Conc[T] = {
      t1 <> t2
    }.ensuring(_.toList == t1.toList ++ t2.toList)
  
  extension[T](t: Conc[T])
    def slice(from: BigInt, until: BigInt): Conc[T] = {
      require(0 <= from && from <= until && until <= t.size)
      decreases(t)
      if from == until then Empty[T]()
      else 
        t match
          case Leaf(x) => 
            if from == 0 && until == 1 then Leaf(x)
            else Empty[T]()
          case Node(l, r, _) =>
            sliceLemma(l.toList, r.toList, from, until) // lemma
            if l.size <= from then r.slice(from - l.size, until - l.size)
            else if until <= l.size then l.slice(from, until)
            else            
              val l1 = l.slice(from, l.size)
              val r1 = r.slice(0, until - l.size)
              l1 ++ r1
    }.ensuring(_.toList == t.toList.slice(from, until))

  extension[T](t: Conc[T])
    def toStr: Vector[String] = 
      t match
        case Empty() => Vector("Empty()")
        case Leaf(x) => Vector("Leaf(" + x.toString + ")")
        case Node(l, r, csize) =>
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
    def toDraw: Vector[String] = 
      t match
        case Empty() => Vector("()")
        case Leaf(x) => Vector(x.toString)
        case Node(l, r, csize) =>
          val ls = l.toDraw
          val rs = r.toDraw         

          val p = 3* ls.size / 2 // push first subtree right for visual balance

          val ls1 = Vector("─┬─" + "─"*p + ls.head) ++
                    ls.tail.map(" │ " + " "*p + _)

          val rs1 = Vector(" └─" + rs.head) ++
                    rs.tail.map("   " + _)

          ls1 ++ rs1
    end toDraw


  def show[T](t: Conc[T]): String = 
    t.toDraw.mkString("\n")

  @main @extern
  def test =
    val c1: Conc[Int] = (1 to 10).map(Leaf(_)).foldLeft[Conc[Int]](Empty())((a, b) => a <> b)
    val c2: Conc[Int] = (1 to 10).map(Leaf(_)).foldRight[Conc[Int]](Empty())((a, b) => a <> b)
    println(show(c1 <> c2))
    println(show(c2 <> c1))


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

end SimpleConc
