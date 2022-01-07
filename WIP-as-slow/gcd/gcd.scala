import scala.language.postfixOps
import stainless.lang._
import stainless.annotation._

// Good benchmark for quantifiers.
// Using Extended Euclid gives more general proof.
object GCD {

  @inline
  def exists[T](p: T => Boolean) = !forall[T](x => !p(x))

  def divides(x: BigInt, y: BigInt) = {
    exists[BigInt](k => y == k*x)
  }

  def elimination_exists[T](p: T => Boolean): T = {
    require(exists[T](p))

    choose[T](e => p(e))
  }.ensuring(p)

  @inline @opaque
  def elimination_forall[T](p: T => Boolean, t: T) = {
    require(forall[T](p))

  }.ensuring(_ => p(t))

  @inline @opaque
  def elimination_implies(a: Boolean, b: Boolean) = {
    require(a && (a ==> b))

  }.ensuring(_ => b)

  @inline @opaque
  def introduction_exists[T](t: T, p: T => Boolean): Unit = {
    require(p(t))

  }.ensuring(_ => exists (p))


  def smallerDivider(r2: BigInt, r: BigInt, a: BigInt, b: BigInt) = {
    (divides(r2,a) && divides(r2,b)) ==> r2 <= r
  }

  def gcd(a: BigInt, b: BigInt, r: BigInt) = {
    divides(r,a) && divides(r,b) && forall ((r2: BigInt) => smallerDivider(r2,r,a,b))
  }

  def divides_combination(x: BigInt, a: BigInt, b: BigInt, c: BigInt, d: BigInt) = {
    require(divides(x,a) && divides(x,b))

    val i = elimination_exists[BigInt](k => a == k*x)
    val j = elimination_exists[BigInt](k => b == k*x)

    introduction_exists[BigInt](c*i + d*j, k => c*a + b*d == k*x)

  }.ensuring(_ => divides(x,c*a + d*b))


  def lemma_onestep(a: BigInt, b: BigInt, r2: BigInt, r: BigInt) = {
    require(b > 0 && gcd(a,b,r) && divides(r2,b) && divides(r2,a-(a/b)*b))

    divides_combination(r2, b, a-(a/b)*b, a/b, 1)
    assert(divides(r2, (a/b)*b + 1*(a-(a/b)*b)))
    assert(divides(r2,a))

    assert(forall[BigInt](r2 => smallerDivider(r2,r,a,b)))
    elimination_forall[BigInt](r2 => smallerDivider(r2,r,a,b), r2)
    assert(smallerDivider(r2,r,a,b))

    assert( (divides(r2,a) && divides(r2,b)) ==> r2 <= r)
    assert( (divides(r2,a) && divides(r2,b)))

    elimination_implies(divides(r2,a) && divides(r2,b),  r2 <= r)
    assert(r2 <= r)

  }.ensuring(_ => r2 <= r)

  @inline
  def lemma2_onestep(a: BigInt, b: BigInt, r2: BigInt, r: BigInt) = {
    require(b > 0 && gcd(a,b,r))

    assert((divides(r2,b) && divides(r2,a-(a/b)*b)) ==> {
      lemma_onestep(a,b,r2,r)
      r2 <= r
    })

    assert((divides(r2,b) && divides(r2,a-(a/b)*b)) ==> r2 <= r)

    assert(smallerDivider(r2,r,b,a-(a/b)*b))

  }.ensuring(_ => smallerDivider(r2,r,b,a-(a/b)*b))


  def lemma3_onestep(a: BigInt, b: BigInt, r: BigInt) = {
    require(b > 0 && gcd(a,b,r))

    assert(
      forall[BigInt](r2 => {
        lemma2_onestep(a,b,r2,r)
        smallerDivider(r2,r,b,a-(a/b)*b)
      })
    )

  }.ensuring(_ => forall[BigInt](r2 => smallerDivider(r2,r,b,a-(a/b)*b)))

  @opaque @inlineOnce
  def euclid_onestep(a: BigInt, b: BigInt, r: BigInt) = {
    require(b > 0 && gcd(a,b,r))

    divides_combination(r, a, b, 1, -a/b)
    assert(divides(r,1*a + (-a/b)*b))
    assert(divides(r,a-(a/b)*b))

    lemma3_onestep(a,b,r)

    assert(forall[BigInt](r2 => smallerDivider(r2,r,b,a-(a/b)*b)))

  }.ensuring(_ => gcd(b, a - (a/b)*b, r))

  @opaque @inlineOnce
  def divides_zero(a: BigInt) = {
    introduction_exists[BigInt](BigInt(0), k => 0 == k*a)

  }.ensuring(_ => divides(a,0))

  @opaque @inlineOnce
  def divides_reflexive(a: BigInt) = {
    introduction_exists[BigInt](BigInt(1), k => a == k*a)

  }.ensuring(_ => divides(a, a))

  def divides_smaller(a: BigInt, b: BigInt) = {
    require(divides(a,b) && b > 0)

  }.ensuring(_ => a <= b)

  @opaque @inlineOnce
  def gcd_unicity(a: BigInt, b: BigInt, r1: BigInt, r2: BigInt) = {
    require(gcd(a,b,r1) && gcd(a,b,r2))

    elimination_forall[BigInt](x => smallerDivider(x,r1,a,b), r2)
    elimination_forall[BigInt](x => smallerDivider(x,r2,a,b), r1)
    assert((divides(r2,a) && divides(r2,b)) ==> r2 <= r1)
    assert((divides(r1,a) && divides(r1,b)) ==> r1 <= r2)

  }.ensuring(_ => r1 == r2)


  def smallerDivider_forall_lemma(a: BigInt) = {
    require(a > 0)

  }.ensuring(_ =>
    forall[BigInt](r2 => smallerDivider(r2, a, a, 0))
  )

  def gcd_zero_reflexive(a: BigInt) = {
    require(a > 0)

    divides_reflexive(a)
    assert(divides(a,a))
    divides_zero(a)
    assert(divides(a,0))
    smallerDivider_forall_lemma(a)

  }.ensuring(_ => gcd(a,0,a))

  def gcd_zero(a: BigInt, r: BigInt) = {
    require(a > 0 && gcd(a,0,r))

    gcd_zero_reflexive(a)
    gcd_unicity(a,0,r,a)

  }.ensuring(_ => a == r)

  def booleanToInt(b: Boolean): BigInt = {
    if (b) BigInt(1)
    else BigInt(0)
  }

  // solver seems to know this anyway and uses it
  def modLemma(a: BigInt, b: BigInt): Unit = {
    require(b != 0)
  }.ensuring(_ => a % b == a - (a/b)*b)


  def euclid(a: BigInt, b: BigInt): BigInt = {
    require(a > 0 && b >= 0)
    if (b == 0) a
    else euclid(b, a % b)
  }

  // This says that if r is gcd, then euclid computes it.
  // If we know that gcd(a,b,_) is a total relation, then correctness follows
  @opaque @inlineOnce
  def euclid_correctness(a: BigInt, b: BigInt, r: BigInt): Unit = {
    require(a > 0 && b >= 0 && gcd(a,b,r))
    decreases(booleanToInt(a < b), a+b)

    if (b == 0) {
      gcd_zero(a,r)
      assert(a == r)
    } else {
      euclid_onestep(a, b, r)
      euclid_correctness(b, a - (a/b)*b, r)
    }
  }.ensuring(_ =>
    euclid(a,b) == r
  )

}
