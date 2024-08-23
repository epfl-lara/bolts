/* Copyright 2009-2021 EPFL, Lausanne */
/* Created by Clément Burgelin */

import stainless.annotation._
import stainless.collection._
import stainless.lang._
import stainless.proof._

object BitInteger {
    type Bits = List[Boolean]

    case class UnsignedBitInteger(bits: Bits) {
        lazy val length = bits.length

        def nonEmpty = 0 < length

        def isEmpty = !nonEmpty

        def head = {
            require(nonEmpty)
            bits.head
        }

        def tail = {
            require(nonEmpty)
            UnsignedBitInteger(bits.tail)
        }.ensuring(_.length == length - 1)

        def ::(b: Boolean): UnsignedBitInteger = {
            UnsignedBitInteger(b :: bits)
        }
    }

    case class SignedBitInteger(bits: Bits) {
        lazy val length = bits.length
        
        def nonEmpty = 0 < length

        def isEmpty = !nonEmpty

        def head = {
            require(nonEmpty)
            bits.head
        }

        def tail = {
            require(nonEmpty)
            UnsignedBitInteger(bits.tail)
        }.ensuring(_.length == length - 1)

        def shrink = {
            require(1 < length && head == bits.tail.head)
            SignedBitInteger(bits.tail)
        }.ensuring(toBigInt(_) == toBigInt(this))
    }

    val zero = Nil[Boolean]()
    val one = true :: zero
    val uZero = UnsignedBitInteger(zero)
    val sZero = SignedBitInteger(zero)
    val uOne = UnsignedBitInteger(one)
    val negOne = SignedBitInteger(one)

    object BigIntTools {
        def pow2(n: BigInt): BigInt = {
            require(0 <= n)
            decreases(n)
            if(n == 0) {
                BigInt(1)
            } else {
                2 * pow2(n-1)
            }
        }.ensuring(res => 0 < res)

        def pow2Order(a: BigInt, b: BigInt): Boolean = {
            require(0 <= a && a <= b)
            if(a < b - 1)
                pow2Order(a, b - 1)
            pow2(a) <= pow2(b) && a < b ==> pow2(a) < pow2(b)
        }.holds

        // def fasterPow2(n: BigInt): BigInt = {
        //     require(0 <= n)
        //     if(n < 2) {
        //         pow2(n)
        //     } else {
        //         val div = n / 2
        //         val rem = n % 2
        //         val prev = fasterPow2(div)
        //         prev * prev * pow2(rem)
        //     }
        // }.ensuring(res => res == pow2(n))

        def unsignedBitSize(x: BigInt): BigInt = {
            require(0 <= x)
            decreases(x)
            if(x == 0) {
                BigInt(0)
            } else {
                assert(0 < x)
                val halfDown = x / 2
                val out = unsignedBitSize(halfDown) + 1
                out
            }
        }.ensuring(res =>
            0 <= res &&
            x < pow2(res) &&
            ((0 < x) ==> (0 < res)) &&
            ((0 < x) ==> (BigIntTools.pow2(res - 1) <= x)) &&
            ((0 < x) ==> (BigIntTools.unsignedBitSize(x - 1) <= res))
        )

        def negBitSize(x: BigInt): BigInt = {
            require(x < 0)
            decreases(-(x+1))
            unsignedBitSize(-(x+1)) + 1
        }.ensuring(res =>
            1 <= res &&
            -pow2(res - 1) <= x  &&
            x < -1 ==> x < -pow2(res - 2) &&
            x < -1 ==> negBitSize(x + 1) <= res
        )

        def bitSize(x: BigInt): BigInt = {
            if(x == 0) {
                0
            } else if(x < 0) {
                negBitSize(x)
            } else {
                unsignedBitSize(x) + 1
            }
        }

        def pow2BitSize(n: BigInt): Boolean = {
            require(0 <= n)
            if(0 < n)
                pow2BitSize(n - 1)
            unsignedBitSize(BigIntTools.pow2(n) - 1) == n && unsignedBitSize(BigIntTools.pow2(n)) == n + 1
        }.holds

        def bitSizeOrder(a: BigInt, b: BigInt): Boolean = {
            require(0 < a && a <= b)
            if(a < b)
                bitSizeOrder(a, b - 1)
            unsignedBitSize(a) <= unsignedBitSize(b)
        }.holds
    }

    def toBigInt(x: UnsignedBitInteger): BigInt = {
        decreases(x.length)
        if(x.nonEmpty) {
            if(x.head) {
                BigIntTools.pow2(x.length - 1) + toBigInt(x.tail)
            } else {
                toBigInt(x.tail)
            }
        } else {
            BigInt(0)
        }
    }.ensuring(res => 0 <= res && res < BigIntTools.pow2(x.length))

    def toBigInt(x: SignedBitInteger): BigInt = {
        if(x.isEmpty) {
            BigInt(0)
        } else if(x.head) {
            toBigInt(x.tail) - BigIntTools.pow2(x.length - 1)
        } else {
            assert(!x.head)
            toBigInt(x.tail)
        }
    }.ensuring(res => x.isEmpty || (if(x.head) { res < 0 } else { 0 <= res }))

    def bitExtension(x: UnsignedBitInteger, n: BigInt): UnsignedBitInteger = {
        require(x.length <= n)
        decreases(n - x.length)
        if(x.length == n) {
            x
        } else {
            bitExtension(false :: x, n)
        }
    }.ensuring(res => toBigInt(res) == toBigInt(x) && res.length == n)

    def bitExtension(x: SignedBitInteger, n: BigInt): SignedBitInteger = {
        require(x.length <= n)
        decreases(n - x.length)
        if(x.length == n) {
            x
        } else if (x.length == 0) {
            bitExtension(SignedBitInteger(false :: x.bits), n)
        } else {
            bitExtension(SignedBitInteger(x.head :: x.bits), n)
        }
    }.ensuring(res => toBigInt(res) == toBigInt(x) && res.length == n)

    def shrinking(x: UnsignedBitInteger): UnsignedBitInteger = {
        decreases(x.length)
        if(x.nonEmpty && !x.head) {
            shrinking(x.tail)
        } else {
            x
        }
    }.ensuring(res =>
        toBigInt(res) == toBigInt(x) &&
        res.length <= x.length && (
            res == uZero || (res.head == true)
        )
    )

    def shrinking(x: SignedBitInteger): SignedBitInteger = {
        decreases(x.length)
        if(1 < x.length && x.head == x.tail.head) {
            shrinking(x.shrink)
        } else if(1 == x.length && !x.head) {
            sZero
        } else {
            x
        }
    }.ensuring(res =>
        toBigInt(res) == toBigInt(x) &&
        res.length <= x.length && (
            res == sZero ||
            res == negOne ||
            (1 < res.length && res.head != res.tail.head)
        )
    )

    def unsignedFrom(x: BigInt, acc: UnsignedBitInteger): UnsignedBitInteger = {
        require(0 <= x)
        decreases(x)
        if(x == 0) {
            acc
        } else {
            val div = x / 2;
            val rem = x % 2;
            assert(x == div * 2 + rem)

            if(rem == 0) {
                val nacc = false :: acc
                val out = unsignedFrom(div, nacc)

                assert(out.length == BigIntTools.unsignedBitSize(div) + nacc.length)
                assert(BigIntTools.unsignedBitSize(div) + 1 == BigIntTools.unsignedBitSize(x))
                check(out.length == BigIntTools.unsignedBitSize(x) + acc.length)

                assert(toBigInt(out) == (div * BigIntTools.pow2(nacc.length) + toBigInt(nacc)))
                assert(div * BigIntTools.pow2(acc.length + 1) == x * BigIntTools.pow2(acc.length))
                assert(toBigInt(nacc) == toBigInt(acc))
                check(toBigInt(out) == (x * BigIntTools.pow2(acc.length) + toBigInt(acc)))
                check(out.length == BigIntTools.unsignedBitSize(x) + acc.length)

                out
            } else {
                assert(rem == 1)
                val nacc = true :: acc
                val out = unsignedFrom(div, nacc)

                assert(out.length == BigIntTools.unsignedBitSize(div) + nacc.length)
                assert(BigIntTools.unsignedBitSize(div) + 1 == BigIntTools.unsignedBitSize(x))
                check(out.length == BigIntTools.unsignedBitSize(x) + acc.length)

                assert(toBigInt(out) == (div * BigIntTools.pow2(nacc.length) + toBigInt(nacc)))
                assert(nacc.length == acc.length + 1)
                assert(toBigInt(out) == (div * BigIntTools.pow2(acc.length + 1) + toBigInt(nacc)))
                assert(toBigInt(nacc) == BigIntTools.pow2(acc.length) + toBigInt(acc))
                assert(toBigInt(out) == (div * BigIntTools.pow2(acc.length + 1) + BigIntTools.pow2(acc.length) + toBigInt(acc)))
                assert(div * BigIntTools.pow2(acc.length + 1) == div * 2 * BigIntTools.pow2(acc.length))
                assert(toBigInt(out) == (div * 2 * BigIntTools.pow2(acc.length) + BigIntTools.pow2(acc.length) + toBigInt(acc)))
                assert(x * BigIntTools.pow2(acc.length) == (div * 2 * BigIntTools.pow2(acc.length) + BigIntTools.pow2(acc.length)))
                check(toBigInt(out) == (x * BigIntTools.pow2(acc.length) + toBigInt(acc)))
                
                out
            }
        }
    }.ensuring(res =>
        toBigInt(res) == (x * BigIntTools.pow2(acc.length) + toBigInt(acc)) &&
        res.length == BigIntTools.unsignedBitSize(x) + acc.length
    )

    def unsignedFrom(x: BigInt): UnsignedBitInteger = {
        require(0 <= x)
        assert(uZero.length == 0)
        assert(BigIntTools.pow2(uZero.length) == 1)
        assert(toBigInt(uZero) == 0)
        unsignedFrom(x, uZero)
    }.ensuring(res =>
        toBigInt(res) == x && res.length == BigIntTools.unsignedBitSize(x)
    )

    def from(x: BigInt): SignedBitInteger = {
        if(x == 0) {
            sZero
        } else if(0 < x) {
            SignedBitInteger(false :: unsignedFrom(x).bits)
        } else {
            val n = BigIntTools.negBitSize(x) - 1
            val p = BigIntTools.pow2(n)
            val nx = x + p
            assert(BigIntTools.pow2BitSize(n))
            assert(BigIntTools.bitSizeOrder(nx + 1, p))
            SignedBitInteger(true :: bitExtension(unsignedFrom(nx), n).bits)
        }
    }.ensuring(res => toBigInt(res) == x && res.length == BigIntTools.bitSize(x))

    def unsignedMax(x: UnsignedBitInteger): Boolean = {
        toBigInt(x) < BigIntTools.pow2(x.length)
    }.holds

    def unsignedMin(x: UnsignedBitInteger): Boolean = {
        require(x.nonEmpty && x.head == true)
        BigIntTools.pow2(x.length - 1) <= toBigInt(x)
    }.holds

    def unsignedSize(a: UnsignedBitInteger, b: UnsignedBitInteger): Boolean = {
        require(a.length < b.length && b.head == true)
        val l1 = a.length
        val l2 = b.length - 1
        val p1 = BigIntTools.pow2(l1)
        val p2 = BigIntTools.pow2(l2)
        assert(l1 <= l2)
        assert(BigIntTools.pow2Order(l1, l2))
        assert(p1 <= p2)
        unsignedMax(a)
        assert(toBigInt(a) < p1)
        unsignedMin(b)
        assert(p2 <= toBigInt(b))
        toBigInt(a) < toBigInt(b)
    }.holds

    def signedMax(x: SignedBitInteger): Boolean = {
        if(x.nonEmpty && x.head) {
            toBigInt(x) < 0
        } else if (x.nonEmpty) {
            toBigInt(x) < BigIntTools.pow2(x.length - 1)
        } else {
            toBigInt(x) == 0
        }
    }.holds

    def signedMin(x: SignedBitInteger): Boolean = {
        if(x.nonEmpty && x.head) {
            -BigIntTools.pow2(x.tail.length) <= toBigInt(x)
        } else {
            0 <= toBigInt(x)
        }
    }.holds

    def signedSize(a: SignedBitInteger, b: SignedBitInteger): Boolean = {
        require(a.length < b.length && 1 < b.length && b.head != b.tail.head)
        if(b.head) {
            if(a.nonEmpty && a.head) {
                val la = a.length - 1
                val lb = b.length - 2
                val pa = BigIntTools.pow2(la)
                val pb1 = BigIntTools.pow2(lb)
                val pb2 = BigIntTools.pow2(lb + 1)
                assert(a.tail.length == la)
                assert(b.tail.tail.length == lb)
                assert(la <= lb)
                assert(BigIntTools.pow2Order(la, lb))
                assert(pa <= pb1)
                assert(pb2 == 2*pb1)

                assert(toBigInt(b) == -pb2 + toBigInt(b.tail))
                assert(toBigInt(b.tail) == toBigInt(b.tail.tail))
                assert(unsignedMax(b.tail.tail))
                assert(toBigInt(b.tail.tail) < pb1)
                assert(toBigInt(b.tail) < pb1)
                assert(-pb2 + toBigInt(b.tail) < -pb2 + pb1)
                assert(-pb2 + pb1 == -pb1)
                assert(-pb2 + toBigInt(b.tail) < -pb1)
                assert(toBigInt(b) < -pb1)
                assert(signedMin(a))
                assert(-pa <= toBigInt(a))
                check(toBigInt(b) < toBigInt(a))
            } else {
                check(toBigInt(b) < toBigInt(a))
            }
            toBigInt(b) < toBigInt(a)
        } else {
            if(a.nonEmpty && a.head) {
                check(toBigInt(a) < toBigInt(b))
            } else {
                if(a.nonEmpty)
                    unsignedSize(a.tail, b.tail)
                check(toBigInt(a) < toBigInt(b)) // ?
            }
            toBigInt(a) < toBigInt(b)
        }
    }.holds

    def equal(a: UnsignedBitInteger, b: UnsignedBitInteger): Boolean = {
        decreases(a.length + b.length)
        if(a.length != b.length) {
            if(a.length < b.length) {
                val out = !b.head && equal(a, b.tail)
                if(b.head) {
                    val la = a.length
                    val lb = b.length - 1
                    assert(la <= lb)
                    val pa = BigIntTools.pow2(la)
                    val pb = BigIntTools.pow2(lb)
                    assert(BigIntTools.pow2Order(la, lb))
                    assert(pa <= pb)
                    val va = toBigInt(a)
                    val vb = toBigInt(b)
                    assert(unsignedMax(a) && unsignedMin(b))
                    assert(va < pa && pb <= vb)
                    assert(va < vb)

                    check(toBigInt(a) < toBigInt(b))
                } else {
                    check(out == (toBigInt(a) == toBigInt(b)))
                }
                check(out == (toBigInt(a) == toBigInt(b)))
                out
            } else {
                assert(b.length < a.length)
                
                val out = !a.head && equal(a.tail, b)

                if(a.head) {
                    val la = a.length - 1
                    val lb = b.length
                    assert(lb <= la)
                    val pa = BigIntTools.pow2(la)
                    val pb = BigIntTools.pow2(lb)
                    assert(BigIntTools.pow2Order(lb, la))
                    assert(pb <= pa)
                    val va = toBigInt(a)
                    val vb = toBigInt(b)
                    assert(unsignedMax(b) && unsignedMin(a))
                    assert(vb < pb && pa <= va)
                    assert(vb < va)

                    check(toBigInt(b) < toBigInt(a))
                } else {
                    check(out == (toBigInt(a) == toBigInt(b)))
                }
                check(out == (toBigInt(a) == toBigInt(b)))
                out
            }
        } else {
            val out = (a == b)
            if(a != b) {
                assert(a.head != b.head || !equal(a.tail, b.tail))
                check(toBigInt(a) != toBigInt(b))
            }
            check(out == (toBigInt(a) == toBigInt(b)))
            out
        }
    }.ensuring(_ == (toBigInt(a) == toBigInt(b)))

    def equal(a: SignedBitInteger, b: SignedBitInteger): Boolean = {
        decreases(a.length + b.length)
        if(a.length != b.length) {
            if(a.length == 0 || b.length == 0) {
                val out = if(0 < b.length) {
                    !b.head && equal(uZero, b.tail)
                } else {
                    assert(0 < a.length)
                    !a.head && equal(uZero, a.tail)
                }
                check(out == (toBigInt(a) == toBigInt(b)))
                out
            } else if(a.head != b.head) {
                if(a.head) {
                    assert(a.head && !b.head)
                    assert(toBigInt(a) < 0)
                    assert(0 <= toBigInt(b))
                    check(toBigInt(a) < toBigInt(b))
                } else {
                    assert(b.head && !a.head)
                    assert(toBigInt(b) < 0)
                    assert(0 <= toBigInt(a))
                    check(toBigInt(b) < toBigInt(a))
                }
                check(!(toBigInt(a) == toBigInt(b)))
                false
            } else {
                if(!a.head) {
                    assert(!a.head && !b.head)
                    equal(a.tail, b.tail)
                } else {
                    assert(a.head && b.head)
                    if(a.length < b.length) {
                        if(b.tail.head) {
                            val out = equal(a, b.shrink)
                            check(out == (toBigInt(a) == toBigInt(b)))
                            out
                        } else {
                            val la = a.length - 1
                            val lb1 = b.length - 1
                            val lb2 = b.length - 2
                            assert(la <= lb2)
                            val pa = BigIntTools.pow2(la)
                            val pb1 = BigIntTools.pow2(lb1)
                            val pb2 = BigIntTools.pow2(lb2)
                            assert(BigIntTools.pow2Order(la, lb2))
                            assert(pa <= pb2 && pb2 + pb2 == pb1)
                            val bTail = b.tail.tail
                            assert(toBigInt(b) == toBigInt(b.tail) - pb1)
                            assert(toBigInt(b.tail) == toBigInt(bTail))
                            assert(toBigInt(b) == toBigInt(bTail) - pb1)
                            assert(unsignedMax(bTail))
                            assert(toBigInt(bTail) < pb2)
                            assert(toBigInt(b) < -pb2)
                            assert(signedMin(a))
                            assert(-pa <= toBigInt(a))
                            check(toBigInt(b) < toBigInt(a))
                            false
                        }
                    } else {
                        assert(b.length < a.length)
                        if(a.tail.head) {
                            val out = equal(a.shrink, b)
                            check(out == (toBigInt(a) == toBigInt(b)))
                            out
                        } else {
                            val la1 = a.length - 1
                            val la2 = a.length - 2
                            val lb = b.length - 1
                            assert(lb <= la2)
                            val pa1 = BigIntTools.pow2(la1)
                            val pa2 = BigIntTools.pow2(la2)
                            val pb = BigIntTools.pow2(lb)
                            assert(BigIntTools.pow2Order(lb, la2))
                            assert(pb <= pa2 && pa2 + pa2 == pa1)
                            val aTail = a.tail.tail
                            assert(toBigInt(a) == toBigInt(a.tail) - pa1)
                            assert(toBigInt(a.tail) == toBigInt(aTail))
                            assert(toBigInt(a) == toBigInt(aTail) - pa1)
                            assert(unsignedMax(aTail))
                            assert(toBigInt(aTail) < pa2)
                            assert(toBigInt(a) < -pa2)
                            assert(signedMin(b))
                            assert(-pb <= toBigInt(b))
                            check(toBigInt(a) < toBigInt(b))
                            false
                        }
                    }
                }
            }
        } else {
            val out = (a == b)
            if(a != b) {
                assert(a.head != b.head || !equal(a.tail, b.tail))
                check(out == (toBigInt(a) == toBigInt(b)))
            }
            check(out == (toBigInt(a) == toBigInt(b)))
            out
        }
    }.ensuring(_ == (toBigInt(a) == toBigInt(b)))

    def unsignedSound(x: BigInt): Boolean = {
        require(0 <= x)
        toBigInt(unsignedFrom(x)) == x
    }.holds

    def signedSound(x: BigInt): Boolean = {
        toBigInt(from(x)) == x
    }.holds

    def unsignedSound2(x: UnsignedBitInteger): Boolean = {
        val a = shrinking(x)
        val v = toBigInt(a)
        val b = unsignedFrom(v)
        assert(equal(a, b))
        b == a
    }.holds

    def signedSound2(x: SignedBitInteger): Boolean = {
        val a = shrinking(x)
        val v = toBigInt(a)
        val b = from(v)
        assert(equal(a, b))
        assert(equal(a, b) && a.length == b.length)
        a == b
    }.holds
}