import stainless.*
import stainless.collection.List
import stainless.lang.*

case class Stack[T](private var data: List[T])
{
  def list: List[T] = { data }

  def push(a: T): Unit = {
    data = a :: data
  } ensuring(_ => list == a :: old(this).list)

  def pop: T = {
    require(!list.isEmpty)
    val a = data.head
    data = data.tail
    a
  } ensuring (res =>
    res == old(this).list.head &&
    list == old(this).list.tail)
}
object Stack {
  def empty[T]() = Stack[T](List[T]())
}
object TestStack {
  def pushTwo(s: Stack[Int], a: Int, b: Int) = {
    s.push(b)
    s.push(a)
    s.pop
  } ensuring(res => res == a)
  
  def pushTwoPopTwo(s1: Stack[Int], s2: Stack[Int]): Unit = {
    s1.push(1)
    s2.push(2)
    s1.pop
    s2.pop
    ()
  }
  
  // Not allowed in default imperative as we use aliased parameters
  def callTwoStacks(s: Stack[Int]): Unit = {
    pushTwoPopTwo(s, s)
  }
}
