/* Copyright 2009-2021 EPFL, Lausanne */
/* Written by Clément Burgelin */

import stainless.annotation._
import stainless.collection._
import stainless.lang._
import stainless.proof._

object StrictlyOrderedList {
    // Some helpers
    def concatLast(@induct left: List[BigInt], right: List[BigInt]): Boolean = {
        right.nonEmpty ==> ((left ++ right).last == right.last)
    }.holds

    def addLast(left: List[BigInt], elem: BigInt): Boolean = {
        (left :+ elem) == (left ++ List(elem))
    }.holds

    def concatElem(@induct left: List[BigInt], elem: BigInt, right: List[BigInt]): Boolean = {
        (left ++ (elem :: right)) == ((left :+ elem) ++ right)
    }.holds

    // StrictlyOrderedList is a strictly sorted List
    def isInorder(l: List[BigInt]): Boolean = l match {
        case Cons(h1, Cons(h2, _)) if(h1 >= h2) => false
        case Cons(_, t) => isInorder(t)
        case _ => true
    }

    // Validity spreads to sub-parts
    def inorderSpread(@induct xs: List[BigInt], y: BigInt): Boolean = (
        isInorder(xs :+ y) == (
            isInorder(xs) &&
            (xs.isEmpty || xs.last < y)
        )
    ).holds

    def inorderSpread(@induct xs: List[BigInt], ys: List[BigInt]): Boolean = (
        isInorder(xs ++ ys) == (
            isInorder(xs) &&
            isInorder(ys) &&
            (xs.isEmpty || ys.isEmpty || xs.last < ys.head)
        )
    ).holds

    def inorderSpread(@induct xs: List[BigInt], y: BigInt, ys: List[BigInt]): Boolean = (
        isInorder(xs ++ (y :: ys)) == (
            isInorder(xs :+ y) &&
            isInorder(y :: ys)
        ) && inorderSpread(xs, y :: ys)
    ).holds

    def inorderSpread(x: BigInt, @induct xs: List[BigInt], y: BigInt, ys: List[BigInt]): Boolean = (
        isInorder((x :: xs) ++ (y :: ys)) == (
            x < y &&
            isInorder(x :: xs) &&
            isInorder(xs :+ y) &&
            isInorder(y :: ys)
        ) && inorderSpread(x :: xs, y, ys)
    ).holds

    // Inequalities and contains
    def bigger(@induct xs: List[BigInt], y: BigInt, e: BigInt): Boolean = {
        require(isInorder(xs :+ y) && y <= e)
        xs.forall(_ < e) && !xs.contains(e)
    }.holds

    def bigger(xs: List[BigInt], y: BigInt, ys: List[BigInt], e: BigInt): Boolean = {
        require(isInorder(xs ++ (y :: ys)) && y <= e)
        inorderSpread(xs, y, ys)
        bigger(xs, y, e)
        xs.forall(_ < e) && !xs.contains(e)
    }.holds

    def smaller(y: BigInt, @induct ys: List[BigInt], e: BigInt): Boolean = {
        require(isInorder(y :: ys) && e <= y)
        ys.forall(e < _) && !ys.contains(e)
    }.holds

    def smaller(xs: List[BigInt], y: BigInt, ys: List[BigInt], e: BigInt): Boolean = {
        require(isInorder(xs ++ (y :: ys)) && e <= y)
        inorderSpread(xs, y, ys)
        smaller(y, ys, e)
        ys.forall(e < _) && !ys.contains(e)
    }.holds

    def contains(xs: List[BigInt], y: BigInt, ys: List[BigInt], e: BigInt): Boolean = {
        require(isInorder(xs ++ (y :: ys)))
        val l = xs ++ (y :: ys)

        if(e < y) {
            smaller(xs, y, ys, e) && (l.contains(e) == xs.contains(e))
        } else {
            bigger(xs, y, ys, e) && (l.contains(e) == (y :: ys).contains(e))
        }
    }

    // Insert
    def inorderInsert(l: List[BigInt], e: BigInt): List[BigInt] = {
        require(isInorder(l))
        decreases(l.length)
        l match {
            case Nil() => Cons(e, Nil())
            case h :: t if(h == e) => l
            case h :: t if(e < h) => Cons(e, l)
            case h :: t => Cons(h, inorderInsert(t, e))
        }
    }.ensuring(res =>
        isInorder(res) &&
        (res.content == (l.content + e))
    )

    def insertLemma(@induct xs: List[BigInt], y: BigInt, ys: List[BigInt], e: BigInt): Boolean = {
        require(isInorder(xs ++ (y :: ys)))
        inorderInsert(xs ++ (y :: ys), e) == (
            if(e < y)
                inorderInsert(xs, e) ++ (y :: ys)
            else
                xs ++ inorderInsert(y :: ys, e)
        )
    }.holds

    def insertSmallerLemma(@induct xs: List[BigInt], y: BigInt, ys: List[BigInt], e: BigInt): Boolean = {
        require(isInorder(xs ++ (y :: ys)) && e < y)
        inorderInsert(xs ++ (y :: ys), e) == (inorderInsert(xs, e) ++ (y :: ys))
    }.holds

    def insertEqualLemma(xs: List[BigInt], y: BigInt, ys: List[BigInt], e: BigInt): Boolean = {
        require(isInorder(xs ++ (y :: ys)) && y == e)
        check(insertBiggerLemma(xs, y, ys, e))
        inorderInsert(xs ++ (y :: ys), e) == (xs ++ (y :: ys))
    }.holds

    def insertBiggerLemma(@induct xs: List[BigInt], y: BigInt, ys: List[BigInt], e: BigInt): Boolean = {
        require(isInorder(xs ++ (y :: ys)) && y <= e)
        inorderInsert(xs ++ (y :: ys), e) == (xs ++ inorderInsert(y :: ys, e))
    }.holds

    // Delete
    def deleteFirst(@induct l: List[BigInt], e: BigInt): List[BigInt] = {
        require(isInorder(l))
        l match {
            case h :: t if(h == e) => t
            case h :: t => Cons(h, deleteFirst(t, e))
            case _ => l
        }
    }.ensuring(res =>
        isInorder(res) &&
        (if(l.contains(e)) res.size == l.size - 1 else res == l)
    )

    def deleteFirstLemma(@induct xs: List[BigInt], y: BigInt, ys: List[BigInt], e: BigInt): Boolean = {
        require(isInorder(xs ++ (y :: ys)))
        deleteFirst(xs ++ (y :: ys), e) == {
            contains(xs, y, ys, e)
            if(e < y) {
                deleteFirst(xs, e) ++ (y :: ys)
            } else {
                xs ++ deleteFirst(y :: ys, e)
            }
        }
    }.holds

    def deleteSmallerLemma(@induct xs: List[BigInt], y: BigInt, ys: List[BigInt], e: BigInt): Boolean = {
        require(isInorder(xs ++ (y :: ys)) && e < y)
        check(smaller(y, ys, e))
        deleteFirst(xs ++ (y :: ys), e) == (deleteFirst(xs, e) ++ (y :: ys))
    }.holds

    def deleteEqualLemma(xs: List[BigInt], y: BigInt, ys: List[BigInt], e: BigInt): Boolean = {
        require(isInorder(xs ++ (y :: ys)) && y == e)
        check(deleteBiggerLemma(xs, y, ys, e))
        deleteFirst(xs ++ (y :: ys), e) == (xs ++ ys)
    }.holds

    def deleteBiggerLemma(@induct xs: List[BigInt], y: BigInt, ys: List[BigInt], e: BigInt): Boolean = {
        require(isInorder(xs ++ (y :: ys)) && y <= e)
        check(bigger(xs, y, e))
        deleteFirst(xs ++ (y :: ys), e) == (xs ++ deleteFirst(y :: ys, e))
    }.holds
}