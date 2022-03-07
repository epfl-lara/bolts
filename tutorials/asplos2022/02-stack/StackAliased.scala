import stainless.lang._
import stainless.collection._
import stainless.annotation._
import stainless.proof._
import stainless.lang.StaticChecks._

// A version of the Stack example that uses the "full" imperative mode.
// In this mode instances of `Stack` may be aliased.
object StackAliasedExample {
  case class Stack[T](private var data: List[T]) extends AnyHeapRef {
    def list = {
      reads(Set(this))
      data
    }

    def push(a: T): Unit = {
      reads(Set(this))
      modifies(Set(this))

      data = a :: data
    } ensuring(_ => list == a :: old(list))

    def pop: T = {
      reads(Set(this))
      modifies(Set(this))
      require(!list.isEmpty)

      val n = data.head
      data = data.tail
      n
    } ensuring (res => res == old(list).head &&
                       list == old(list).tail)
  }

  // Unless we require s1 != s2, the function below fails to verify, because s1 and s2 may point to
  // the same Stack, in which case the second call to pop might fail.
  def popBoth[T](s1: Stack[T], s2: Stack[T]): (T, T) = {
    reads(Set(s1, s2))
    modifies(Set(s1, s2))
    require(s1 != s2 && !s1.list.isEmpty && !s2.list.isEmpty)
    (s1.pop, s2.pop)
  }

  def pushTwoPopTwo(s1: Stack[Int], s2: Stack[Int]): Unit = {
    reads(Set(s1, s2))
    modifies(Set(s1, s2))
    s1.push(1)
    s2.push(2)
    s1.pop
    s2.pop
    ()
  }
  def callTwoStacks(st: Stack[Int]): Unit = {
    reads(Set(st))
    modifies(Set(st))
    pushTwoPopTwo(st, st)
  }
}
