import stainless.lang._
// Good benchmark for quantifiers.
// Using Extended Euclid gives more general proof.
object GCD {

  @inline
  def exists[T](p: T => Boolean) = ! forall((x: T) => !p(x))

  def divides(x: BigInt, y: BigInt) = {
    exists ((k: BigInt) => y == k*x)
  }

  def elimination_exists[T](p: T => Boolean): T = {
    require(exists ((e: T) => p(e)))

    choose((e: T) => p(e))
  } ensuring(p)

  def elimination_forall[T](p: T => Boolean, t: T) = {
    require(forall ((e: T) => p(e)))

    p(t)
  } holds

  def elimination_implies(a: Boolean, b: Boolean) = {
    require(a && (a ==> b))

    b
  } holds

  def introduction_exists[T](t: T, p: T => Boolean): Boolean = {
    require(p(t))

    exists (p)
  } holds


  def smallerDivider(r2: BigInt, r: BigInt, a: BigInt, b: BigInt) = {
    (divides(r2,a) && divides(r2,b)) ==> r2 <= r
  }
//
  def gcd(a: BigInt, b: BigInt, r: BigInt) = {
    divides(r,a) && divides(r,b) && forall ((r2: BigInt) => smallerDivider(r2,r,a,b))
  }

  def divides_combination(x: BigInt, a: BigInt, b: BigInt, c: BigInt, d: BigInt) = {
    require(divides(x,a) && divides(x,b))

    val i = elimination_exists((k: BigInt) => a == k*x)
    val j = elimination_exists((k: BigInt) => b == k*x)

    assert(introduction_exists(c*i + d*j, (k: BigInt) => c*a + b*d == k*x))

    divides(x,c*a + d*b)
  } holds


  def lemma_onestep(a: BigInt, b: BigInt, r2: BigInt, r: BigInt) = {
    require(b > 0 && gcd(a,b,r) && divides(r2,b) && divides(r2,a-(a/b)*b))


    assert(divides_combination(r2, b, a-(a/b)*b, a/b, 1))
    assert(divides(r2, (a/b)*b + 1*(a-(a/b)*b)))
    assert(divides(r2,a))

    assert(forall ((r2: BigInt) => smallerDivider(r2,r,a,b)))
    assert(elimination_forall((r2: BigInt) => smallerDivider(r2,r,a,b), r2))
    assert(smallerDivider(r2,r,a,b))

    assert( (divides(r2,a) && divides(r2,b)) ==> r2 <= r)
    assert( (divides(r2,a) && divides(r2,b)))

    assert( elimination_implies(divides(r2,a) && divides(r2,b),  r2 <= r))
    assert(r2 <= r)

    r2 <= r
  } holds

  @inline
  def lemma2_onestep(a: BigInt, b: BigInt, r2: BigInt, r: BigInt) = {
    require(b > 0 && gcd(a,b,r))

    assert((divides(r2,b) && divides(r2,a-(a/b)*b)) ==>
      (lemma_onestep(a,b,r2,r) && r2 <= r)
    )

    assert((divides(r2,b) && divides(r2,a-(a/b)*b)) ==> r2 <= r)

    assert(smallerDivider(r2,r,b,a-(a/b)*b))

    smallerDivider(r2,r,b,a-(a/b)*b)
  } holds


  def lemma3_onestep(a: BigInt, b: BigInt, r: BigInt) = {
    require(b > 0 && gcd(a,b,r))

    assert(
      forall((r2: BigInt) => {
        lemma2_onestep(a,b,r2,r)
      })
    )

    forall((r2: BigInt) => smallerDivider(r2,r,b,a-(a/b)*b))
  } holds

  def euclid_onestep(a: BigInt, b: BigInt, r: BigInt) = {
    require(b > 0 && gcd(a,b,r))

    assert(divides_combination(r, a, b, 1, -a/b))
    assert(divides(r,1*a + (-a/b)*b))
    assert(divides(r,a-(a/b)*b))

    assert(lemma3_onestep(a,b,r))

    assert(forall((r2: BigInt) => smallerDivider(r2,r,b,a-(a/b)*b)))


    gcd(b, a - (a/b)*b, r)
  } holds


  def divides_zero(a: BigInt) = {
    assert(introduction_exists(BigInt(0), (k: BigInt) => 0 == k*a))

    divides(a,0)
  } holds

  def divides_reflexive(a: BigInt) = {
    assert(introduction_exists(BigInt(1), (k: BigInt) => a == k*a))

    divides(a,a)
  } holds

  def divides_smaller(a: BigInt, b: BigInt) = {
    require(divides(a,b) && b > 0)

    a <= b
  } holds

  def gcd_unicity(a: BigInt, b: BigInt, r1: BigInt, r2: BigInt) = {
    require(gcd(a,b,r1) && gcd(a,b,r2))

    assert(elimination_forall((x: BigInt) => smallerDivider(x,r1,a,b), r2))
    assert(elimination_forall((x: BigInt) => smallerDivider(x,r2,a,b), r1))
    assert((divides(r2,a) && divides(r2,b)) ==> r2 <= r1)
    assert((divides(r1,a) && divides(r1,b)) ==> r1 <= r2)

    r1 == r2
  } holds


  def smallerDivider_forall_lemma(a: BigInt) = {
    require(a > 0)

    forall((r2: BigInt) => smallerDivider(r2, a, a, 0))
  } holds

  def gcd_zero_reflexive(a: BigInt) = {
    require(a > 0)

    assert(divides_reflexive(a))
    assert(divides(a,a))
    assert(divides_zero(a))
    assert(divides(a,0))
    assert(smallerDivider_forall_lemma(a))
    gcd(a,0,a)
  } holds

  def gcd_zero(a: BigInt, r: BigInt) = {
    require(a > 0 && gcd(a,0,r))

    assert(gcd_zero_reflexive(a))
    assert(gcd_unicity(a,0,r,a))

    a == r
  } holds

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
  def euclid_correctness(a: BigInt, b: BigInt, r: BigInt): Boolean = {
    require(a > 0 && b >= 0 && gcd(a,b,r))
    decreases(booleanToInt(a < b), a+b)

    if (b == 0)
      gcd_zero(a,r) &&
      a == r &&
      euclid(a,b) == r
    else
      euclid_onestep(a, b, r) &&
      euclid_correctness(b, a - (a/b)*b, r) &&
      euclid(a,b) == r
  } holds

}
