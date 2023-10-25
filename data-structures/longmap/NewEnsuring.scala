import scala.annotation.tailrec

object OptimisedEnsuring {
  // Define an extension method on any type that adds an `ensuring` method that makes the compiler removes the ensuring altogether
  extension [T](inline value: T) inline def ensuring(condition: T => Boolean): T = value
}

object Test {
  import OptimisedEnsuring.*
  @tailrec
  def f(n: Int): Int = {
    if (n == 0) {
      42
    } else {
      f(n - 1)
    }
  } ensuring (res => res == 42)
}

@main def main(): Unit = {
  println(Test.f(100000))
}
