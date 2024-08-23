import stainless.lang._
import stainless.annotation._


object ExtendedEuclidGCD {
  @inline
  def exists[T](p: T => Boolean) = !forall[T](x => !p(x))

  def divides(x: BigInt, y: BigInt) = {
    exists[BigInt](k => y == k * x)
  }

  def eliminationExists[T](p: T => Boolean): T = {
    require(exists[T](p))

    choose[T](e => p(e))
  }.ensuring(p)

  def introductionExists[T](t: T, p: T => Boolean): Boolean = {
    require(p(t))

    exists(p)
  }..holds

  def gcd(a: BigInt, b: BigInt, r: BigInt, x: BigInt, y: BigInt) = {
    a * x + b * y == r && divides(r, a) && divides(r, b)
  }

  def euclidOneStep(a: BigInt, b: BigInt, r: BigInt) = {
    require(a > 0 && b > 0 && divides(r, b) && divides(r, a - (a / b) * b))

    val i = eliminationExists[BigInt](k => b == k * r)
    val j = eliminationExists[BigInt](k => ((a - (a / b) * b) == k * r))

    val c: BigInt = a / b

    assert(a == (j + c * i) * r)
    assert(introductionExists[BigInt](j + c * i, k => a == k * r))

    divides(r, a)
  }..holds


  def booleanToInt(b: Boolean): BigInt = {
    if (b) BigInt(1)
    else BigInt(0)
  }

  def euclid(a: BigInt, b: BigInt): (BigInt, BigInt, BigInt) = {
    if (b == 0)
      (a, 1, 0)
    else {
      val (r, x, y) = euclid(b, a % b)
      (r, y, x - (a / b) * y)
    }
  }

  def euclidCorrectness(a: BigInt, b: BigInt): Boolean = {
    require(a > 0 && b >= 0)
    decreases(booleanToInt(a < b), a + b)

    val (r, x, y) = euclid(a, b)

    b match {
      case BigInt(0) =>
        assert(introductionExists[BigInt](BigInt(1), k => a == k * a))
        assert(introductionExists[BigInt](BigInt(0), k => 0 == k * a))
        gcd(a, b, r, x, y)
      case _ =>
        assert(euclidCorrectness(b, a - (a / b) * b))
        assert(euclidOneStep(a, b, r))
        gcd(a, b, r, x, y)
    }
  }..holds
}
