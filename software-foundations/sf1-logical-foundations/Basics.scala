package sf1

import stainless.lang._ // for the holds keyword
import stainless.annotation._ // for the @extern keyword

import scala.language.postfixOps // to avoid warnings about postfix holds

object Basics {

  sealed abstract class Day
  case object Monday extends Day
  case object Tuesday extends Day
  case object Wednesday extends Day
  case object Thursday extends Day
  case object Friday extends Day
  case object Saturday extends Day
  case object Sunday extends Day


  def next_weekday(d: Day): Day = d match {
    case Monday => Tuesday
    case Tuesday => Wednesday
    case Wednesday => Thursday
    case Thursday => Friday
    case Friday => Monday
    case Saturday => Monday
    case Sunday => Monday
  }

  println(next_weekday(Friday))
  println(next_weekday(next_weekday(Friday)))

  def test_next_weeday() = {
    next_weekday(next_weekday(Saturday)) == Tuesday
  } holds

  sealed abstract class Bool
  case object True extends Bool
  case object False extends Bool

  def negb(b: Bool): Bool = b match {
    case True => False
    case False => True
  }

  def andb(b1: Bool)(b2: Bool): Bool = b1 match {
    case True => b2
    case False => False
  }

  def orb(b1: Bool)(b2: Bool): Bool = b1 match {
    case True => True
    case False => b2
  }

  def test_orb1() = { orb(True)(False) == True } holds
  def test_orb2() = { orb(False)(False) == False } holds
  def test_orb3() = { orb(False)(True) == True } holds
  def test_orb4() = { orb(True)(True) == True } holds

  // When using the operators && and || on an element of type Bool, the Scala
  // compiler will understand that Bool has to be wraprintlned in a 
  // BoolNotation, and the Bool will be implicitly converted to BoolNotation
  implicit class BoolNotation(val b: Bool) {
    def &&(b2: Bool) = andb(b)(b2)
    def ||(b2: Bool) = orb(b)(b2)
  }

  def test_orb5() = { (False || False || True) == True } holds


  /** **** Exercise: 1 star (nandb) */

  def nandb(b1: Bool)(b2: Bool): Bool = negb(b1 && b2)

  def test_nandb1() = { nandb(True)(False) == True } holds
  def test_nandb2() = { nandb(False)(False) == True } holds
  def test_nandb3() = { nandb(False)(True) == True } holds
  def test_nandb4() = { nandb(True)(True) == False } holds
  
  /** [] */


  /** **** Exercise: 1 star (andb3) */

  def andb3(b1: Bool)(b2: Bool)(b3: Bool): Bool = b1 && b2 && b3

  def test_andb31() = { andb3(True)(True)(True) == True } holds
  def test_andb32() = { andb3(False)(True)(True) == False } holds
  def test_andb33() = { andb3(True)(False)(True) == False } holds
  def test_andb34() = { andb3(True)(True)(False) == False } holds
  
  /** [] */


  sealed abstract class RGB
  case object Red extends RGB
  case object Green extends RGB
  case object Blue extends RGB

  sealed abstract class Color 
  case object Black extends Color
  case object White extends Color
  case class Primary(p: RGB) extends Color

  def monochrome(c: Color): Bool = c match {
    case Black => True
    case White => True
    case Primary(_) => False
  }

  def isred(c: Color): Bool = c match {
    case Black => False
    case White => False
    case Primary(Red) => True
    case Primary(_) => False
  }

  object NatPlayground {
    sealed abstract class Nat
    case object O extends Nat
    case class S(n: Nat) extends Nat

    sealed abstract class Nat2
    case object Stop extends Nat2
    case class Tick(n: Nat2) extends Nat2

    def pred(n: Nat): Nat = n match {
      case O => O
      case S(n2) => n2
    }
  }
 
  import NatPlayground._


  val zero = O
  val one = S(zero)
  val two = S(one)
  val three = S(two)
  val four = S(three)
  val five = S(four)
  val six = S(five)
  val seven = S(six) 
  val eight = S(seven)
  val nine = S(eight)
  val ten = S(nine)
  val eleven = S(ten)
  val twelve = S(eleven)
  println(four)

  def minusTwo(n: Nat): Nat = n match {
    case O => O
    case S(O) => O
    case S(S(n2)) => n2
  }

  println(minusTwo(four))

  def evenb(n: Nat): Bool = n match {
    case O => True
    case S(O) => False
    case S(S(n2)) => evenb(n2)
  }

  def oddb(n: Nat): Bool = negb(evenb(n))

  def test_oddb1() = { oddb(S(O)) == True } holds
  def test_oddb2() = { oddb(four) == False } holds

  object NatPlayground2 {
    def plus(n: Nat)(m: Nat): Nat = n match {
      case O => m
      case S(n2) => S(plus(n2)(m))
    }

    println(plus(three)(two))
    
    // Stainless also supports arithmetic operations directly on the Int and 
    // BigInt types
    println(2 + 3)


    def mult(n: Nat)(m: Nat): Nat = n match {
      case O => O
      case S(n2) => plus(m)(mult(n2)(m))
    }

    def test_mult1() = { mult(three)(three) == nine }

    def minus(n: Nat)(m: Nat): Nat = (n,m) match {
      case (O, _) => O
      case (S(_), O) => n
      case (S(n2), S(m2)) => minus(n2)(m2)
    }
  }

  import NatPlayground2._

  def exp(base: Nat)(power: Nat): Nat = power match {
    case O => S(O)
    case S(p) => mult(base)(exp(base)(p))
  }

  /** **** Exercise: 1 star (factorial) */

  def factorial(n: Nat): Nat = n match {
    case O => S(O)
    case S(n2) => mult(n)(factorial(n2))
  }

  def test_factorial1() = { factorial(three) == six } holds
  
  // commented out because that takes a while to verify
  // def test_factorial2() = { factorial(five) == mult(ten)(twelve) } holds

  /** [] */

  implicit class NatNotation(val n: Nat) {
    def +(n2: Nat) = plus(n)(n2)
    def -(n2: Nat) = minus(n)(n2)
    def *(n2: Nat) = mult(n)(n2)
  }

  println((zero + one) + one)

  def beq_nat(n: Nat)(m: Nat): Bool = n match {
    case O => 
      m match {
        case O => True 
        case S(_) => False
      }
    case S(n2) => 
      m match {
        case O => False
        case S(m2) => beq_nat(n2)(m2)
      }
  }

  def leb(n: Nat)(m: Nat): Bool = n match {
    case O => True
    case S(n2) =>
      m match {
        case O => False
        case S(m2) => leb(n2)(m2)
      }
  }

  def test_leb1() = { leb(two)(two) == True } holds
  def test_leb2() = { leb(two)(four) == True } holds
  def test_leb3() = { leb(four)(two) == False } holds

  /** **** Exercise: 1 star (blt_nat) */

  def blt_nat(n: Nat)(m: Nat): Bool = leb(n)(m) && negb(beq_nat(n)(m))

  def test_blt_nat1() = { blt_nat(two)(two) == False } holds
  def test_blt_nat2() = { blt_nat(two)(four) == True } holds
  def test_blt_nat3() = { blt_nat(four)(two) == False } holds

  /** [] */

  def plus_O_n(n: Nat) = { O + n == n } holds
  
  def plus_1_l(n: Nat) = { one + n == S(n) } holds
  
  def mult_0_l(n: Nat) = { O * n == O } holds

  def plus_id_example(n: Nat, m: Nat): Boolean = {
    require(n == m)

    n + m == m + n
  } holds

  /** **** Exercise: 1 star (plus_id_exercise) */

  def plus_id_exercise(n: Nat, m: Nat, o: Nat): Boolean = {
    require(n == m && m == o)

    n + m == m + o
  } holds

  /** [] */

  def mult_0_plus(n: Nat, m: Nat): Boolean = {
    (O + n) * m == n * m
  } holds

  /** **** Exercise: 2 stars (mult_S_1)  */

  def mult_S_1(n: Nat, m: Nat): Boolean = {
    require(m == S(n))

    m * (one + n) == m * m
  } holds

  /** [] */

  def plus_1_neq_0(n: Nat) = {
    beq_nat(n + one)(zero) == False
  } holds

  def negb_involutive(b: Bool) = { negb(negb(b)) == b } holds

  def andb_commutative(b: Bool, c: Bool) = { andb(b)(c) == andb(c)(b) } holds

  def andb3_exchange(b: Bool, c: Bool, d: Bool) = { andb(andb(b)(c))(d) == andb(andb(b)(d))(c) }

  /** **** Exercise: 2 stars (andb_true_elim2)  */
  
  def andb_true_elim2(b: Bool, c: Bool): Boolean = {
    require(andb(b)(c) == True)

    c == True
  } holds

  /** [] */

  /** **** Exercise: 1 star (zero_nbeq_plus_1) */

  def zero_nbeq_plus_1(n: Nat): Boolean = {
    beq_nat(O)(n + one) == False
  } holds

  /** [] */
  
  /** **** Exercise: 2 stars, optional (decreasing)  */

  def test(n: Nat, m: Nat): Nat = {
    decreases(natToBigInt(minus(m)(n)))  // required to prove termination
    if (blt_nat(n)(m) == True) {
      assert(positiveDifference(n,m)) // required to prove that minus(m)(n) == S(x) for some x
      assert(positiveBigInt(minus(m)(n))) // to show that natToBigInt(minus(m)(n)) > 0
      assert(zeroDifference(n)) // to show minus(n)(n) == O
      assert(natToBigInt(minus(m)(n)) > natToBigInt(minus(n)(n))) // what we needed to prove to show that the measure decreases
      test(n,n)
    }
    else O
  }

  // This proves by induction that if "(blt_nat(n)(m) == True", then minus(m,n)
  // is strictly positive.
  def positiveDifference(n: Nat, m: Nat): Boolean = {
    require(blt_nat(n)(m) == True)

    (m,n) match {
      case (S(m2),O) => 
      case (S(m2),S(n2)) => assert(positiveDifference(n2,m2))
    }

    minus(m)(n) != O
  } holds

  // This proves by induction on n that natToBigInt(S(x)) > 0
  @induct
  def positiveBigInt(n: Nat): Boolean = {
    require(n != O)
    natToBigInt(n) > 0
  }

  // This proves by induction on n that minus(n)(n) == O
  @induct
  def zeroDifference(n: Nat): Boolean = { 
    minus(n)(n) == O
  } holds

  def natToBigInt(n: Nat): BigInt = {
    n match {
      case O => BigInt(0)
      case S(n2) => natToBigInt(n2) + 1
    }
  } ensuring(res => res >= 0)

  /** [] */


  /** **** Exercise: 2 stars (boolean_functions) */

  // states that the function f is defined for all elements of the domain X
  def isTotal[X,Y](f: X => Y) = {
    forall((x: X) => f.pre(x))
  }

  def identity_fn_applied_twice(f: Bool => Bool) = {
    require(isTotal(f) && forall((x: Bool) => f(x) == x))

    forall((b: Bool) => f(f(b)) == b)
  } holds

  def negation_fn_applied_twice(f: Bool => Bool) = {
    require(isTotal(f) && forall((x: Bool) => f(x) == negb(x)))

    forall((b: Bool) => f(f(b)) == b)
  } holds

  /** [] */

  /** **** Exercise: 3 stars, optional (andb_eq_orb)  */
  def andb_eq_orb(b: Bool, c: Bool) = {
    require(andb(b)(c) == orb(b)(c))

    b == c
  } holds

  /** [] */

  /** **** Exercise: 3 stars (binary)  */
  
  sealed abstract class Bin 
  case object Z extends Bin 
  case class Twice(b: Bin) extends Bin
  case class TwicePlusOne(b: Bin) extends Bin

  def incr(b: Bin): Bin = b match {
    case Z => TwicePlusOne(Z)
    case Twice(b) => TwicePlusOne(b)
    case TwicePlusOne(b) => Twice(incr(b))
  }

  def bin_to_nat(b: Bin): Nat = b match {
    case Z => O
    case Twice(b) =>
      val x = bin_to_nat(b)
      x + x
    case TwicePlusOne(b) =>
      val x = bin_to_nat(b)
      S(x + x)
  }

  val one_bin = TwicePlusOne(Z)
  val two_bin = Twice(one_bin)
  val three_bin = TwicePlusOne(one_bin)
  val four_bin = Twice(two_bin)
  val five_bin = TwicePlusOne(two_bin)
  val six_bin = Twice(three_bin)
  val seven_bin = TwicePlusOne(three_bin)
  val eight_bin = Twice(four_bin)
  val nine_bin = TwicePlusOne(four_bin)
  val ten_bin = Twice(five_bin)
  
  
  def test_bin_incr1() = {  bin_to_nat(six_bin) == six } holds
  def test_bin_incr2() = {  bin_to_nat(eight_bin) == eight } holds
  def test_bin_incr3() = {  bin_to_nat(incr(five_bin)) == S(bin_to_nat(five_bin)) } holds
  def test_bin_incr4() = {  bin_to_nat(incr(ten_bin)) == S(bin_to_nat(ten_bin)) } holds
  def test_bin_incr5() = {  bin_to_nat(incr(incr(one_bin))) == three } holds
  
  /** [] */

  def main(args: Array[String]) {}
}