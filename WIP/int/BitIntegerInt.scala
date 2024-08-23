/* Copyright 2009-2021 EPFL, Lausanne */
/* Created by Clément Burgelin */

import stainless.annotation._
import stainless.collection._
import stainless.lang._
import stainless.proof._

import BitInteger._

object BitIntegerInt {
    object IntTools {
        @pure
        def pow2(n: BigInt): Int = {
            require(0 <= n && n < 31)
            decreases(n)
            if(n == 0) {
                1
            } else {
                2 * pow2(n-1)
            }
        }.ensuring(res => 0 < res)

        def negPow2(n: BigInt): Int = {
            require(0 <= n && n <= 31)
            decreases(n)
            if(n == 0) {
                -1
            } else {
                2 * negPow2(n-1)
            }
        }.ensuring(res => res < 0 && (if (n < 31) res == -pow2(n) else res == Int.MinValue))

        def maxUnsigned(n: BigInt): Int = {
            require(0 <= n && n <= 31)
            decreases(n + 1)
            if(n < 31) {
                pow2(n) - 1
            } else {
                assert(n == 31)
                Int.MaxValue
            }
        }.ensuring(res =>
            0 <= res &&
            (if (n == 0) res == 0 else {
                (res == maxUnsigned(n - 1) + pow2(n - 1)) &&
                (res == maxUnsigned(n - 1) * 2 + 1) &&
                (res == (pow2(n - 1) - 1) * 2 + 1)
            })
        )
        
        @opaque @inlineOnce
        def multCongr(a: Int, b: Int, c1: Int, c2: Int): Unit = {
            require(a == b * c1)
            require(c1 == c2)

        }.ensuring(_ =>
            a == b * c2
        )
        
        def testMaxUnsignedMult(a: BigInt, b: BigInt): Unit = {
            require(0 <= a && a < 31 && 0 < b && a + b <= 31)
            decreases(a)
            if(0 < a) {
                assert(b < 31)
                val na = a - 1
                val nb = b + 1
                val mnb = maxUnsigned(nb)
                val m1 = pow2(na) * mnb

                assert(mnb == (pow2(b) - 1) * 2 + 1)
                assert(m1 == pow2(na) * mnb)
                assert(m1 == pow2(na) * ((pow2(b) - 1) * 2 + 1))
            }
        }

        def maxUnsignedMult(a: BigInt, b: BigInt): Boolean = {
            require(0 <= a && a < 31 && 0 < b && a + b <= 31)
            decreases(a)
            if(0 < a) {
                assert(b < 31)
                val na = a - 1
                val nb = b + 1
                val m1 = pow2(na) * maxUnsigned(nb)
                val m2 = pow2(a) * maxUnsigned(b)
                check(maxUnsignedMult(na, nb))

                assert(maxUnsigned(nb) == (pow2(b) - 1) * 2 + 1)
                multCongr(m1, pow2(na), maxUnsigned(nb), (pow2(b) - 1) * 2 + 1)
                assert(m1 == pow2(na) * ((pow2(b) - 1) * 2 + 1))
                assert(m1 == 2 * pow2(na) * (pow2(b) - 1) + pow2(na))
                assert(m1 - pow2(na) == (pow2(b) - 1) * (2 * pow2(na)))
                assert(2 * pow2(na) == pow2(a))
                multCongr(m1 - pow2(na), pow2(b) - 1, 2 * pow2(na), pow2(a))
                multCongr(m1 - pow2(na), pow2(a), (pow2(b) - 1), maxUnsigned(b))
                assert(m1 - pow2(na) == pow2(a) * maxUnsigned(b))
                assert(m2 == m1 - pow2(na))
                assert(m2 <= maxUnsigned(a + b))
                check(pow2(a) * maxUnsigned(b) <= maxUnsigned(a + b))
            }
            pow2(a) * maxUnsigned(b) <= maxUnsigned(a + b)
        }..holds

        // def pow2Order(a: BigInt, b: BigInt): Boolean = {
        //     require(0 <= a && a < b && b < 31)
        //     if(a < b - 1)
        //         pow2Order(a, b - 1)
        //     pow2(a) < pow2(b)
        // }..holds

        // def maxIntOrder(a: BigInt, b: BigInt): Boolean = {
        //     require(0 <= a && a < b && b <= 31)
        //     if(a < b - 1)
        //         maxIntOrder(a, b - 1)
        //     maxUnsigned(a) < maxUnsigned(b)
        // }..holds

        def unsignedBitSize(x: Int): BigInt = {
            require(0 <= x)
            decreases(x)
            if(x == 0) {
                BigInt(0)
            } else {
                assert(0 < x)
                val halfDown = x / 2
                val out = unsignedBitSize(halfDown) + 1
                check(0 <= out && out <= 31)
                check(x <= maxUnsigned(out))
                check(pow2(out - 1) <= x)
                if(1 < x) {
                    val a = (x - 1) / 2
                    assert(unsignedBitSize(x - 1) == unsignedBitSize(a) + 1)
                    if(a == halfDown) {
                        assert(unsignedBitSize(a) == unsignedBitSize(halfDown))
                        check(unsignedBitSize(x - 1) == out)
                    } else {
                        assert(a == halfDown - 1)
                        assert(unsignedBitSize(a) <= unsignedBitSize(halfDown))
                        check(unsignedBitSize(x - 1) <= out)
                    }
                }
                check(unsignedBitSize(x - 1) <= out)
                out
            }
        }.ensuring(res =>
            0 <= res && res <= 31 &&
            x <= maxUnsigned(res) &&
            ((0 < x) ==> (0 < res)) &&
            ((0 < x) ==> (pow2(res - 1) <= x)) &&
            ((0 < x) ==> (unsignedBitSize(x - 1) <= res))
        )

        def negBitSize(x: Int): BigInt = {
            require(x < 0)
            decreases(-x-1)
            unsignedBitSize(-(x + 1)) + 1
        }.ensuring(res =>
            1 <= res && res <= 32 &&
            negPow2(res - 1) <= x  &&
            x < -1 ==> x < negPow2(res - 2) &&
            x < -1 ==> negBitSize(x + 1) <= res
        )

        def pow2BitSize(n: BigInt): Boolean = {
            require(0 <= n && n <= 31)
            if(0 < n) {
                assert(n - 1 < 31)
                assert(pow2BitSize(n - 1))
                assert(maxUnsigned(n) == maxUnsigned(n - 1) * 2 + 1)
                val a = maxUnsigned(n - 1)
                val b = a * 2 + 1
                assert(b / 2 == a)
                assert(unsignedBitSize(b) == unsignedBitSize(a) + 1)
                assert(maxUnsigned(n) == b)
                check(unsignedBitSize(maxUnsigned(n)) == n)
                
                if(n < 31) {
                    val c = pow2(n - 1)
                    val d = 2 * c
                    assert(d == pow2(n))
                    assert(d / 2 == c)
                    assert(unsignedBitSize(c) == n)
                    assert(unsignedBitSize(d) == unsignedBitSize(c) + 1)
                    assert(unsignedBitSize(d) == unsignedBitSize(c) + 1)
                    check(unsignedBitSize(pow2(n)) == n + 1)
                }
            }
            unsignedBitSize(maxUnsigned(n)) == n &&
            (n < 31 ==> (unsignedBitSize(pow2(n)) == n + 1))
        }..holds

        def bitSizeOrder(a: Int, b: Int): Boolean = {
            require(0 < a && a <= b)
            decreases(b)
            if(a < b) {
                assert(bitSizeOrder(a, b - 1))
                assert(unsignedBitSize(b - 1) <= unsignedBitSize(b))
                check(unsignedBitSize(a) <= unsignedBitSize(b))
            }
                
            unsignedBitSize(a) <= unsignedBitSize(b)
        }..holds
    }

    def toInt(x: UnsignedBitInteger): Int = {
        require(x.length <= 31)
        decreases(x.length)
        if(x.isEmpty) {
            0
        } else if (x.head) {
            val prev = toInt(x.tail)
            val l = x.length - 1
            val p = IntTools.pow2(l)
            val out = p + prev
            assert(l == x.length - 1)
            assert(0 <= prev && prev <= IntTools.maxUnsigned(l))
            assert(prev < p)
            assert(prev <= IntTools.maxUnsigned(l))
            assert(IntTools.maxUnsigned(x.length) == IntTools.maxUnsigned(l) + p)
            assert(prev + p <= IntTools.maxUnsigned(l) + p)
            // assert(prev + p < p + p)
            // assert(prev + p < 2*p)
            check(0 <= out && out <= IntTools.maxUnsigned(x.length))
            out
        } else {
            toInt(x.tail)
        }
    }.ensuring(res => 0 <= res && res <= IntTools.maxUnsigned(x.length))

    def toInt(x: SignedBitInteger): Int = {
        require(x.length <= 32)
        if(x.isEmpty) {
            0
        } else if(x.head) {
            toInt(x.tail) + IntTools.negPow2(x.length - 1)
        } else {
            assert(!x.head)
            toInt(x.tail)
        }
    }.ensuring(res => x.isEmpty || (if(x.head) { res < 0 } else { 0 <= res }))

    def unsignedFrom(x: Int, acc: UnsignedBitInteger): UnsignedBitInteger = {
        require(0 <= x && IntTools.unsignedBitSize(x) + acc.length <= 31)
        decreases(x)
        if(x == 0) {
            acc
        } else {
            assert(0 < x)
            assert(acc.length < 31)
            val div = x / 2;
            val rem = x % 2;
            check(x == div * 2 + rem)
            val lAcc = acc.length
            val lDiv = IntTools.unsignedBitSize(div)
            val lX = IntTools.unsignedBitSize(x)
            check(lX == lDiv + 1)
            assert(div < IntTools.pow2(lDiv))
            check(lAcc + lX <= 31)
            val pAcc = IntTools.pow2(lAcc)

            if(rem == 0) {
                assert(rem == 0 && x == 2 * div)
                assert(0 < div)
                val nacc = false :: acc
                val lNacc = nacc.length
                assert(lNacc == lAcc + 1)
                assert(lAcc + lX == lNacc + lDiv)
                assert(lNacc + lDiv <= 31)
                assert(0 < lDiv)
                assert(lNacc < 31)
                val pNacc = IntTools.pow2(lNacc)
                val out = unsignedFrom(div, nacc)
                assert(out.length == lDiv + lNacc)

                check(out.length == lX + lAcc)

                assert(toInt(out) == div * IntTools.pow2(nacc.length) + toInt(nacc))
                assert(nacc.length == lNacc)
                assert(IntTools.pow2(nacc.length) == IntTools.pow2(lNacc))
                assert(IntTools.pow2(nacc.length) == pNacc)
                assert(IntTools.maxUnsignedMult(lDiv, lNacc))
                assert(IntTools.pow2(lDiv + lNacc) == IntTools.pow2(lDiv) * IntTools.pow2(lNacc))
                assert(div * IntTools.pow2(lNacc) < IntTools.pow2(lDiv + lNacc))
                assert(div * IntTools.pow2(nacc.length) == div * pNacc)
                assert(toInt(out) == div * pNacc + toInt(nacc))
                assert(pNacc == 2 * pAcc)
                assert(x * pAcc == (2 * div) * pAcc)
                assert(x * pAcc == div * (2 * pAcc))
                assert(x * pAcc == div * pNacc)
                assert(toInt(nacc) == toInt(acc))
                check(toInt(out) == (x * pAcc + toInt(acc)))
                check(out.length == lX + lAcc)

                out
            } else {
                assert(rem == 1 && x == 2 * div + 1)
                val nacc = true :: acc
                val lNacc = nacc.length
                assert(lNacc == lAcc + 1)
                assert(lAcc + lX == lNacc + lDiv)
                assert(lNacc + lDiv <= 31)
                val out = unsignedFrom(div, nacc)

                // assert(out.length == IntTools.unsignedBitSize(div) + lNacc)
                // assert(IntTools.unsignedBitSize(div) + 1 == IntTools.unsignedBitSize(x))
                // check(out.length == IntTools.unsignedBitSize(x) + lAcc)

                // assert(toInt(out) == (div * pNacc + toInt(nacc)))
                // assert(nacc.length == lNacc)
                // assert(toInt(out) == (div * pNacc + toInt(nacc)))
                // assert(toInt(nacc) == pAcc + toInt(acc))
                // assert(toInt(out) == (div * pNacc + pAcc + toInt(acc)))
                // assert(div * pNacc == div * 2 * pAcc)
                // assert(toInt(out) == (div * 2 * pAcc + pAcc + toInt(acc)))
                // assert(x * pAcc == (div * 2 * pAcc + pAcc))
                check(toInt(out) == (x * pAcc + toInt(acc)))
                
                out
            }
        }
    }.ensuring(res =>
        (if(acc.length == 31) x == 0 else toInt(res) == (x * IntTools.pow2(acc.length) + toInt(acc))) &&
        res.length == IntTools.unsignedBitSize(x) + acc.length
    )

    // def unsignedFrom(x: Int): BitInteger = {
    //     require(0 <= x)
    //     assert(zero.length == 0)
    //     assert(pow2(zero.length) == 1)
    //     assert(unsignedToInt(zero) == 0)
    //     unsignedFromInt(x, zero)
    // }.ensuring(res =>
    //     unsignedToInt(res) == x && res.length == unsignedBitSize(x)
    // )
}