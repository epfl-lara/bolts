import stainless.lang._

object FindIndexOptionIff {
  def notPresent[T](upto: Int, a: Array[T], t: T): Boolean = {
    require(0 <= upto && upto < a.length)
    decreases(upto)

    a(upto) != t &&
    (upto == 0 || notPresent(upto - 1, a, t))
  }


  def findIndexOpt[T](a: Array[T], t: T): Option[Int] = {
    require(a.length < 65536)
    val N: Int = a.length
    var i: Int = 0

    if (0 < N) {
      (while (i < N) {
        decreases(N - i)
        if (a(i) == t) {
          assert(0 <= i && i <= N && a.length == N && (i == 0 || notPresent(i - 1, a, t)))
          assert(0 <= i && i < a.length && a(i) == t)
          return Some[Int](i)
        }
        i = i + 1
        assert(0 <= i && i <= N && a.length == N && (i == 0 || notPresent(i - 1, a, t)))
      }).invariant(0 <= i && i <= N && a.length == N && (i == 0 || notPresent(i - 1, a, t)))
      None[Int]()
    } else None[Int]()

  } ensuring((res: Option[Int]) =>
    (res match {
      case None() => a.length == 0 || notPresent(a.length - 1, a, t)
      case Some(i) => 0 <= i && i < a.length && a(i) == t
    }))
}
