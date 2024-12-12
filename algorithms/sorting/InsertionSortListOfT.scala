import stainless.annotation._
import stainless.lang._
import stainless.collection._
import stainless.proof._

trait Ordering[T]:
  def compare(x: T, y: T): Int

  @law def inverse(x: T, y: T): Boolean =
    sign(compare(x, y)) == -sign(compare(y, x))

  @law def transitive(x: T, y: T, z: T): Boolean =
    if (compare(x, y) > 0 && compare(y, z) > 0) then compare(x, z) > 0 else true

  @law def consistent(x: T, y: T, z: T): Boolean =
    if compare(x, y) == 0 then sign(compare(x, z)) == sign(compare(y, z))
    else true

  final def sign(x: Int): BigInt =
    if x < 0 then -1 else if x > 0 then 1 else 0

end Ordering

object Sorted:
  def lemmaTest[T](x: T, y: T)(implicit ord: Ordering[T]): Unit = {
    require(ord.compare(x, y) > 0)
    assert(ord.inverse(x, y)) // If removed, a counter example is found
  }.ensuring(_ => ord.compare(y, x) < 0)

  def isSorted[T](l: List[T])(implicit ord: Ordering[T]): Boolean = {
    decreases(l)
    l match
      case Cons(x, Cons(y, ys)) =>
        ord.compare(x, y) <= 0 && isSorted(Cons(y, ys))
      case _ => true
  }

  def insert[T](l: List[T], x: T)(implicit ord: Ordering[T]): List[T] = {
    require(isSorted(l))
    l match
      case Cons(y, ys) if ord.compare(x, y) <= 0 => Cons(x, l)
      case Cons(y, ys) =>
        assert(ord.inverse(x, y))
        Cons(y, insert(ys, x))
      case Nil() => Cons(x, Nil())
  }.ensuring(res => isSorted(res) && res.size == l.size + 1)

  def sort[T](l: List[T])(implicit ord: Ordering[T]): List[T] = {
    decreases(l)
    l match
      case Cons(x, xs) => insert(sort(xs), x)
      case Nil()       => Nil()
  }.ensuring(res => isSorted(res) && res.size == l.size)
end Sorted
