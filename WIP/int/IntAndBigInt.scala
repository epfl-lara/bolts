import stainless.annotation._
import stainless.collection._
import stainless.lang._
import stainless.proof._

object IntAndBigInt {
    def intToBigInt(x: Int): BigInt = {
        if(x == 0) {
            BigInt(0)
        } else if(0 < x) {
            intToBigInt(x - 1) + 1
        } else {
            assert(x < 0)
            intToBigInt(x + 1) - 1
        }
    } ensuring(res =>
        (x < 0 == res < 0) && (0 < x == 0 < res)
    )

    def lessThan(a: Int, b: BigInt): Boolean = {
        decreases(if(0 < b) b else -b)
        if(b == 0) {
            a < 0
        } else if(0 < a) {
            0 < b && lessThan(a - 1, b - 1)
        } else {
            assert(a <= 0)
            0 < b || lessThan(a + 1, b + 1)
        }
    } ensuring(_ == intToBigInt(a) < b)

    def lessThan(a: BigInt, b: Int): Boolean = {
        decreases(if(0 < a) a else -a)
        if(a == 0) {
            0 < b
        } else if(b < 0) {
            a < 0 && lessThan(a + 1, b + 1)
        } else {
            assert(0 <= b)
            a < 0 || lessThan(a - 1, b - 1)
        }
    } ensuring(_ == a < intToBigInt(b))

    def equal(a: Int, b: BigInt): Boolean = {
        decreases(if(0 < b) b else -b)
        if(b == 0) {
            a == 0
        } else if(0 < a) {
            0 < b && equal(a - 1, b - 1)
        } else {
            assert(a <= 0)
            b < 0 && equal(a + 1, b + 1)
        }
    } ensuring(_ == (intToBigInt(a) == b))

    def equal(a: BigInt, b: Int): Boolean = equal(b, a)

    def nextEqualLemma(a: Int, b: BigInt): Boolean = {
        require(a < Int.MaxValue && b < Int.MaxValue)
        equal(a, b) == equal(a + 1, b + 1)
    }.holds

    def prevEqualLemma(a: Int, b: BigInt): Boolean = {
        require(Int.MinValue < a && Int.MinValue < b)
        equal(a, b) == equal(a - 1, b - 1)
    }.holds

    def addEqualLemma(a: Int, b: Int): Boolean = {
        require(if(0 < a) b <= (Int.MaxValue - a) else (Int.MinValue - a) <= b)
        decreases(if(0 < a) a else if(a == Int.MinValue) Int.MaxValue else -a)
        if(0 < a) {
            assert(addEqualLemma(a - 1, b + 1))
            assert(intToBigInt(a - 1) == intToBigInt(a) - 1)
            assert(intToBigInt(b + 1) == intToBigInt(b) + 1)
            check(intToBigInt(a + b) == intToBigInt(a) + intToBigInt(b))
        } else if(a == Int.MinValue)  {
            assert(0 <= b)
            assert(addEqualLemma(a + 2, b - 2))
            assert(intToBigInt(a + 2) == intToBigInt(a) + 2)
            assert(intToBigInt(b - 2) == intToBigInt(b) - 2)
            check(intToBigInt(a + b) == intToBigInt(a) + intToBigInt(b))
        } else if(a < 0){
            assert(addEqualLemma(a + 1, b - 1))
            assert(intToBigInt(a + 1) == intToBigInt(a) + 1)
            assert(intToBigInt(b - 1) == intToBigInt(b) - 1)
            check(intToBigInt(a + b) == intToBigInt(a) + intToBigInt(b))
        }
        intToBigInt(a + b) == intToBigInt(a) + intToBigInt(b)
    }.holds

    def double(a: Int): Int = {
        require((Int.MinValue / 2) <= a && a <= (Int.MaxValue / 2))
        addEqualLemma(a, a)
        a + a
    } ensuring(
        res => intToBigInt(res) == intToBigInt(a) + intToBigInt(a) &&
        res == a * 2 &&
        intToBigInt(res) == intToBigInt(a) * 2
    )

    @extern @pure
    def posDivisorLemma(x: Int, a: Int, b: Int): Boolean = {
        require(0 < a && a <= b)
        if(0 < x) {
            (x / b) <= (x / a)
        } else if(x < 0) {
            (x / a) <= (x / b)
        } else {
            x == 0
        }
    }.holds

    @extern @pure
    def posDivisorLemma1(x: Int, a: Int, b: Int): Boolean = {
        require(0 < a && a <= b)
        require(0 < x)
        (x / b) <= (x / a)
    }.holds

    def posMultiply(a: Int, b: Int): Int = {
        require(0 < b && a <= (Int.MaxValue / b) && (Int.MinValue / b) <= a)
        decreases(b)
        if(b == 1) a else {
            val nb = b - 1
            assert(0 < nb && nb < b)
            check(posDivisorLemma1(Int.MaxValue, nb, b))
            check(a <= (Int.MaxValue / b))
            check((Int.MaxValue / b) <= (Int.MaxValue / nb))
            check(a <= (Int.MaxValue / nb))

            check(posDivisorLemma(Int.MinValue, nb, b))
            check((Int.MinValue / b) <= a)
            check((Int.MinValue / nb) <= (Int.MinValue / b))
            check((Int.MinValue / nb) <= a)

            check(0 < nb && a <= (Int.MaxValue / nb) && (Int.MinValue / nb) <= a)
            val acc = posMultiply(a, nb)

            addEqualLemma(acc, a)
            acc + a
        }
    } ensuring(
        res => res == a * b && intToBigInt(a * b) == intToBigInt(a) * intToBigInt(b)
    )

    // def multiply(a: Int, b: Int): Int = {
    //     require((Int.MinValue / b) <= a && a <= (Int.MaxValue / b))
    //     quadruple(quadruple(a))
    // } ensuring(
    // )

    // def quadruple(a: Int): Int = {
    //     require((Int.MinValue / 4) <= a && a <= (Int.MaxValue / 4))
    //     double(double(a))
    // } ensuring(
    //     res =>
    //     res == a * 4 &&
    //     intToBigInt(res) == intToBigInt(a) * 4
    // )

    // def sextuple(a: Int): Int = {
    //     require((Int.MinValue / 16) <= a && a <= (Int.MaxValue / 16))
    //     quadruple(quadruple(a))
    // } ensuring(
    //     res =>
    //     res == a * 16 &&
    //     intToBigInt(res) == intToBigInt(a) * 16
    // )

    def add(a: BigInt, b: Int): BigInt = {
        decreases(if(0 < b) b else if(b == Int.MinValue) Int.MaxValue else -b)
        if(b == 0) {
            a
        } else if(b == Int.MinValue) {
            // Needed in order to have a strictly decreasing measure
            add(a - 2, b + 2)
        } else if(b < 0) {
            add(a - 1, b + 1)
        } else {
            assert(0 < b)
            add(a + 1, b - 1)
        }
    } ensuring(_ == (a + intToBigInt(b)))

    def add(a: Int, b: BigInt): BigInt = add(b,a)

    def bigIntToInt(x: BigInt): Int = {
        require(BigInt(Int.MinValue) <= x && x <= BigInt(Int.MaxValue))
        if(x == 0) {
            0
        } else if(0 < x) {
            assert(equal(bigIntToInt(x - 1), x - 1))
            // assert(lessThan(, BigInt(Int.MaxValue)))
            assert(equal(bigIntToInt(x - 1) + 1, x))
            bigIntToInt(x - 1) + 1
        } else {
            assert(equal(bigIntToInt(x + 1), x + 1))
            assert(equal(bigIntToInt(x + 1) - 1, x))
            bigIntToInt(x + 1) - 1
        }
    } ensuring(res => equal(x, res))

    def lemmaMaxInt(): Boolean = {
        intToBigInt(Int.MaxValue) == BigInt(Int.MaxValue)
    }.holds

    // def equal(a: Int, b: BigInt): Boolean = {
    //     intToBigInt(a) == b
    // }

    // def nextEqualLemma(a: Int, b: BigInt): Boolean = {
    //     require(a < Int.MaxValue)
    //     if(0 <= a) {
    //         assert(intToBigInt(a + 1) == posIntToBigInt(a + 1))
    //         assert(posIntToBigInt(a + 1) == posIntToBigInt(a) + 1)
    //         assert(posIntToBigInt(a) == intToBigInt(a))
    //         assert(posIntToBigInt(a) + 1 == intToBigInt(a) + 1)
    //         assert(posIntToBigInt(a + 1) == intToBigInt(a) + 1)
    //         check(intToBigInt(a + 1) == intToBigInt(a) + 1)
    //     } else {
    //         if(a == Int.MinValue) {
    //             assert(intToBigInt(a + 1) == -posIntToBigInt(-a - 1))
    //             assert(posIntToBigInt(a + 1) == posIntToBigInt(a) + 1)
    //             assert(posIntToBigInt(a) == intToBigInt(a))
    //             assert(posIntToBigInt(a) + 1 == intToBigInt(a) + 1)
    //             assert(posIntToBigInt(a + 1) == intToBigInt(a) + 1)
    //             assert(intToBigInt(a + 1) == intToBigInt(a) + 1)
    //         } else {
    //             assert(intToBigInt(a + 1) == -posIntToBigInt(-a - 1))
    //             assert(posIntToBigInt(a + 1) == posIntToBigInt(a) + 1)
    //             assert(posIntToBigInt(a) == intToBigInt(a))
    //             assert(posIntToBigInt(a) + 1 == intToBigInt(a) + 1)
    //             assert(posIntToBigInt(a + 1) == intToBigInt(a) + 1)
    //             assert(intToBigInt(a + 1) == intToBigInt(a) + 1)
    //         }
    //     }
    //     (intToBigInt(a) == b) == (intToBigInt(a + 1) == b + 1)
    // }.holds

    // def prevEqualLemma()


    // def equal(a: Int, b: BigInt): Boolean = {
    //     decreases(if(0 < b) b else -b)
    //     if(BigInt(Int.MaxValue) < b || b < BigInt(Int.MinValue)) {
    //         false
    //     } else if (a == 0) {
    //         b == 0
    //     } else if (a < 0) {
    //         b < 0 && equal(a + 1, b + 1)
    //     } else {
    //         assert(0 < a)
    //         0 < b && equal(a - 1, b - 1)
    //     }
    // }

    // def equal(a: BigInt, b: Int): Boolean = equal(b, a)

    // def greaterThan(a: Int, b: BigInt): Boolean = {
    //     decreases(if(0 < b) b else -b)
    //     if(b < BigInt(Int.MinValue)) {
    //         true
    //     } else if(BigInt(Int.MaxValue) < b) {
    //         false
    //     } else if (a == 0) {
    //         b < 0
    //     } else if (a < 0) {
    //         b < 0 && greaterThan(a + 1, b + 1)
    //     } else {
    //         assert(0 < a)
    //         b <= 0 || greaterThan(a - 1, b - 1)
    //     }
    // } ensuring(_ ==> !equal(a, b))

    // def smallerThan(a: Int, b: BigInt): Boolean = {
    //     decreases(if(0 < b) b else -b)
    //     if(BigInt(Int.MaxValue) < b) {
    //         true
    //     } else if(b < BigInt(Int.MinValue)) {
    //         false
    //     } else if (a == 0) {
    //         0 < b
    //     } else if (a < 0) {
    //         0 <= b || smallerThan(a + 1, b + 1)
    //     } else {
    //         assert(0 < a)
    //         0 < b && smallerThan(a - 1, b - 1)
    //     }
    // } ensuring(_ ==> (!equal(a, b) && !greaterThan(a, b)))

    // def greaterThan(a: BigInt, b: Int): Boolean = smallerThan(b, a)

    // def smallerThan(a: BigInt, b: Int): Boolean = greaterThan(b, a)

    // // <= and >=

    // def greaterEqual(a: Int, b: BigInt): Boolean = greaterThan(a, b - 1)
    // def greaterEqual(a: BigInt, b: Int): Boolean = greaterThan(a + 1, b)
    
    // def smallerEqual(a: Int, b: BigInt): Boolean = smallerThan(a, b + 1)
    // def smallerEqual(a: BigInt, b: Int): Boolean = smallerThan(a - 1, b)

    // // Lemmas

    // def lemmaOne(a: Int, b: BigInt): Boolean = {
    //     greaterEqual(b, a) == smallerEqual(a, b)
    // }.holds

    // def lemmaTwo(a: Int, b: BigInt): Boolean = {
    //     smallerEqual(b, a) == greaterEqual(a, b)
    // }.holds

    // def lemmaThree(a: Int, b: BigInt): Boolean = {
    //     require(a != Int.MinValue)
    //     greaterThan(a, b) == smallerThan(-a, -b)
    // }.holds
}