/* Copyright 2009-2021 EPFL, Lausanne */
/* Created by Clément Burgelin */

import stainless.annotation._
import stainless.collection._
import stainless.lang._
import stainless.proof._

object ArrayList {
    type T = BigInt

    @pure
    def listLength(l: List[T]): Int = {
        // require(l.nonEmpty ==> 0 < listLength(l.tail) && listLength(l.tail) < 2147483646)
        l match {
            case Cons(head, tl) => {
                val tlLen = listLength(tl)
                if(tlLen < Int.MaxValue) {
                    tlLen + 1
                } else {
                    0
                }
            }
            case Nil() => 0
        }
    }.ensuring(0 <= _)

    def arrayPortionToList(arr: Array[T], from: Int, until: Int): List[T] = {
        require(0 <= from && from <= until && until <= arr.length)
        decreases(until - from)
        val out = if(from == until) {
            List.empty[T]
        } else {
            val next = from + 1
            val tail = arrayPortionToList(arr, next, until)
            arr(from) :: tail
        }
        out
    }.ensuring(listLength(_) == (until - from))

    def arrayCopy(src: Array[T], dest: Array[T], from: Int, until: Int): Array[T] = {
        require(0 <= from && from < until && until <= src.length && until <= dest.length)
        decreases(until - from)
        if((from + 1) < until) {
            val ndest = arrayCopy(src, dest, from + 1, until)
            check(arrayEqualLemma(src, ndest, from + 1, until, from, src(from)))
            ndest.updated(from, src(from))
        } else {
            assert(arrayEqual(src, dest.updated(from, src(from)), from, until))
            dest.updated(from, src(from))
        }
    }.ensuring(
        res => arrayEqual(src, res, from, until) && res.length == dest.length
    )

    def arrayEqual(src: Array[T], dst: Array[T], from: Int, until: Int): Boolean = {
        require(0 <= from && from <= until && until <= src.length && until <= dst.length)
        decreases(until - from)
        from == until || (
            (dst(from) == src(from)) && arrayEqual(src, dst, from + 1, until)
        )
    }.ensuring(_ == (arrayPortionToList(src, from, until) == arrayPortionToList(dst, from, until)))

    def arrayEqualLemma(src: Array[T], dst: Array[T], from: Int, until: Int, index: Int, elem: T): Boolean = {
        require(0 <= from && from <= until && until <= src.length && until <= dst.length)
        require(0 <= index && index < dst.length && index < src.length)
        require(until <= index || index < from)
        require(arrayEqual(src, dst, from, until))
        decreases(until - from)
        if(from != until) {
            arrayEqualLemma(src, dst, from + 1, until, index, elem)
        }
        arrayEqual(src, dst.updated(index, elem), from, until)
    }..holds

    case class ArrayList(private var arr: Array[T], var length: Int) {
        require(0 <= length && length <= arr.length && arr.length <= Int.MaxValue)
        @pure
        def capacity: Int = arr.length


        def toList: List[T] = {
            arrayPortionToList(arr, 0, length)
        }.ensuring(listLength(_) == length)

        def pushBack(value: T): Unit = {
            require(length < Int.MaxValue)
            if(capacity <= length) {
                assert(capacity == length)
                if(capacity > 0) {
                    val ncap = if(capacity < ((Int.MaxValue / 2) + 1)) {
                        2 * capacity
                    } else {
                        Int.MaxValue
                    }
                    var narr = Array.fill(ncap)(value)
                    arr = arrayCopy(arr, narr, 0, arr.length)
                    arr = arr.updated(length, value)
                } else {
                    arr = Array[T](value)
                }
            } else {
                arr = arr.updated(length, value)
            }
            length += 1
        }.ensuring(_ =>
            (old(this).length + 1 == this.length)
        )
    }
}