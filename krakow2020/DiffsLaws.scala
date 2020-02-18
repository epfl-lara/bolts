import stainless.lang._
import stainless.proof._
import stainless.collection._
import stainless.collection.List._
import stainless.annotation._

object Invertible {
  abstract class Invert {
    def plus(x: Int, y: Int): Int
    def minus(x: Int, y: Int): Int

    @law def inverse_law(x: Int, y: Int) = {
      plus(y,minus(x, y)) == x
    }
  }

  case object inv extends Invert {
    def plus(x: Int, y:Int) = x + y
    def minus(x: Int, y: Int) = x - y
  }

  def undiff(inv: Invert)(l: List[Int]): List[Int] = {
    decreases(l)
    l match {
      case Nil() => l
      case Cons(x, Nil()) => l
      case Cons(x1, Cons(x2, l1)) => Cons[Int](x1, undiff(inv)(Cons[Int](inv.plus(x1, x2), l1)))
    }
  } ensuring(res => (l == Nil() && res == Nil()) || res.head == l.head)

  def diffs(inv: Invert)(l: List[Int]): List[Int] = {
    decreases(l)
    l match {
      case Nil() => l
      case Cons(_, Nil()) => l
      case Cons(h, t) =>
        diffs(inv)(t) match {
          case Nil() => Nil[Int]()
          case Cons(h1, t1) => {
            check(inv.inverse_law(h1, h))
            Cons(h, Cons(inv.minus(h1, h), t1))
          }
        }
    }
  } ensuring (res => undiff(inv)(res) == l)

  def test00 = diffs(inv)(List(2, 2))
  def test0 = diffs(inv)(List(1, 1))
  def test1 = diffs(inv)(List(100, 101, 95)) // 100, 1, -6
  def test2 = undiff(inv)(List(100, 1, -6))  // 100, 101, 95
}
