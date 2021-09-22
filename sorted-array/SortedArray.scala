import stainless.lang._
import stainless.lang.StaticChecks.WhileDecorations
import stainless.lang.StaticChecks.assert
import stainless.math._
import stainless.proof.check
import stainless.annotation._
import scala.Predef.{ genericArrayOps => _, genericWrapArray => _, assume => _, _ }
import stainless.lang.ArrayUpdating

import SortedArray._

object SortedArray {
  // to avoid dealing with overflows
  val sizeLimit: Int = 1000000

  // all elements of the array with index `l` or lower are smaller or equal than `elem`
  @pure
  def allSmaller[K, @mutable T](array: Array[(K, T)], order: TotalOrder[K], elem: K, l: Int): Boolean = {
    require(l < array.length)
    decreases(max(l, 0))

    if (l < 0) true
    else if (l == 0) order.leq(array(l)._1, elem)
    else order.leq(array(l)._1, elem) && allSmaller(array, order, elem, l-1)
  }

  @pure @opaque @ghost
  def getSmaller[K, @mutable T](array: Array[(K, T)], order: TotalOrder[K], elem: K, l: Int, i: Int): Unit = {
    require(0 <= i && i <= l && l < array.length && allSmaller(array, order, elem, l))
    decreases(l - i)

    if (i < l) getSmaller(array, order, elem, l-1, i)

  }.ensuring(_ =>
    order.leq(array(i)._1, elem)
  )

  // all elements of the array with index `h` or higher are larger or equal than `elem`
  @pure
  def allLarger[K, @mutable T](array: Array[(K, T)], order: TotalOrder[K], elem: K, h: Int): Boolean = {
    require(0 <= h && h <= array.length)
    decreases(array.length - h)

    if (h == array.length) true
    else if (h == array.length - 1) order.leq(elem, array(h)._1)
    else order.leq(elem, array(h)._1) && allLarger(array, order, elem, h+1)
  }

  @pure
  def isSorted[K, @mutable T](array: Array[(K, T)], order: TotalOrder[K]): Boolean = {
    array.length == 0 || isSortedRange(array, order, 0, array.length - 1)
  }

  @pure
  def isSortedRange[K, @mutable T](array: Array[(K, T)], order: TotalOrder[K], i: Int, j: Int): Boolean = {
    require(0 <= i && 0 <= j) // we require positive ints to avoid subtraction overflow
    decreases(max(0, j - i))

    if (0 <= i && i < array.length - 1 && i < j)
      order.leq(array(i)._1, array(i+1)._1) && isSortedRange(array, order, i+1, j)
    else
      true
  }

  @pure @opaque @ghost
  def isSortedRangeSwap[K, @mutable T](array: Array[(K, T)], order: TotalOrder[K], i: Int, j: Int): Unit = {
    require(0 <= i && 0 < j && j < array.length && isSortedRange(array, order, i, j))
    decreases(max(0, j-i))

    if (0 <= i && i < array.length - 1 && i < j) {
      isSortedRangeSwap(array, order, i+1, j)
      if (j == i+2) {
        order.transitivityLaw(array(i)._1, array(i+1)._1, array(i+2)._1)
        assert(order.leq(array(i)._1, array(i+2)._1))
      }
    }

  }.ensuring(_ =>
    isSortedRange(array.updated(j, array(j-1)).updated(j-1, array(j)), order, i, j-1)
  )

  @pure @opaque @ghost @inlineOnce
  def isSortedRangeSwap2[K, @mutable T](
    array: Array[(K, T)], order: TotalOrder[K],
    i: Int, j: Int,
    k: Int, l: Int
  ): Unit = {
    require(0 <= i && 0 <= j && isSortedRange(array, order, i, j))
    require(0 <= k && k < array.length)
    require(0 <= l && l < array.length)
    require(k < i && l < i)
    decreases(max(0, j-i))

    if (0 <= i && i < array.length - 1 && i < j) {
      isSortedRangeSwap2(array, order, i+1, j, k, l)
      val ar: Array[(K, T)] = array.updated(k, array(l)).updated(l, array(k))
      assert(isSortedRange(ar, order, i+1, j))
      assert(order.leq(ar(i)._1, ar(i+1)._1))
      check(isSortedRange(ar, order, i, j))
    }


  }.ensuring(_ =>
    isSortedRange(array.updated(k, array(l)).updated(l, array(k)), order, i, j)
  )

  @pure @opaque @ghost @inlineOnce
  def isSortedRangeSame[K, @mutable T](
    array: Array[(K, T)], order: TotalOrder[K],
    i1: Int, j1: Int, i2: Int, j2: Int
  ): Unit = {
    require(0 <= i1 && 0 <= j1)
    require(j1 == j2 && i1 == i2)
    require(isSortedRange(array, order, i1, j1))

    ()
  }.ensuring(_ =>
    isSortedRange(array, order, i2, j2)
  )

  @pure @opaque @ghost @inline
  def arrayGetSameIndex2[@mutable T](array: Array[T], i: Int, j: Int): Unit = {
    require(0 <= i && i < array.length - 1 && i == j)

  }.ensuring(_ => array(i+1) == array(j+1))

  @pure @opaque @ghost
  def sortedRangePair[K, @mutable T](array: Array[(K, T)], order: TotalOrder[K], l: Int, i: Int, j: Int): Unit = {
    require(0 <= i && 0 <= j)
    require(isSortedRange(array, order, i, j))
    require(i <= l && l < j)
    require(l < array.length - 1)
    decreases(l - i)

    if (i < l) {
      sortedRangePair(array, order, l, i+1, j)
      check(order.leq(array(l)._1, array(l+1)._1))
      ()
    } else {
      arrayGetSameIndex2(array, i, l)
      assert(array(i+1) == array(l+1))
      assert(order.leq(array(i)._1, array(i+1)._1))
      check(order.leq(array(l)._1, array(l+1)._1))
      ()
    }

  }.ensuring(_ =>
    order.leq(array(l)._1, array(l + 1)._1)
  )

  @pure @opaque @ghost
  def sortedPair[K, @mutable T](array: Array[(K, T)], order: TotalOrder[K], l: Int): Unit = {
    require(
      isSorted(array, order) &&
      0 <= l && l < array.length - 1
    )

    sortedRangePair(array, order, l, 0, array.length - 1)

  }.ensuring(_ =>
    order.leq(array(l)._1, array(l + 1)._1)
  )

  @pure @opaque @ghost
  def sortedAllSmaller[K, @mutable T](array: Array[(K, T)], order: TotalOrder[K], elem: K, l: Int): Unit = {
    require(
      isSorted(array, order) &&
      0 <= l && l < array.length &&
      order.leq(array(l)._1, elem)
    )
    decreases(l)

    if (l > 0) {
      sortedPair(array, order, l-1)
      order.transitivityLaw(array(l-1)._1, array(l)._1, elem)
      assert(order.leq(array(l)._1, elem))
      sortedAllSmaller(array, order, elem, l-1)
    }

  }.ensuring(_ =>
    allSmaller(array, order, elem, l)
  )

  @pure @opaque @ghost
  def sortedAllLarger[K, @mutable T](array: Array[(K, T)], order: TotalOrder[K], elem: K, l: Int): Unit = {
    require(
      isSorted(array, order) &&
      0 <= l && l < array.length &&
      order.leq(elem, array(l)._1)
    )
    decreases(array.length - l)

    if (l < array.length - 1) {
      sortedPair(array, order, l)
      order.transitivityLaw(elem, array(l)._1, array(l+1)._1)
      assert(order.leq(elem, array(l+1)._1))
      sortedAllLarger(array, order, elem, l+1)
    } else {
      assert(allLarger(array, order, elem, l))
    }

  }.ensuring(_ =>
    allLarger(array, order, elem, l)
  )

  @opaque @ghost @pure
  def insertSortedRange[K, @mutable T](array: Array[(K, T)], order: TotalOrder[K], h: Int, elem: (K, T), i: Int): Unit = {
    require(0 <= h && h < array.length)
    require(isSortedRange(array, order, 0, h))
    require(isSortedRange(array, order, h+1, array.length-1))
    require(h > 0 ==> order.leq(array(h-1)._1, elem._1))
    require(h < array.length-1 ==> order.leq(elem._1, array(h+1)._1))
    require(0 <= i && i <= array.length - 1)
    decreases(max(0, array.length - i))

    if (0 <= i && i < array.length - 1) {
      insertSortedRange(array, order, h, elem, i+1)
      if (i < h) {
        sortedRangePair(array, order, i, 0, h)
        assert(order.leq(array(i)._1, array(i + 1)._1))
        assert(order.leq(array.updated(h, elem).apply(i)._1, array.updated(h, elem).apply(i + 1)._1))
        assert(isSortedRange(array.updated(h, elem), order, i+1, array.length - 1))
        check(isSortedRange(array.updated(h, elem), order, i, array.length - 1))
      }
      else if (i >= h+1) {
        sortedRangePair(array, order, i, h+1, array.length-1)
        assert(isSortedRange(array.updated(h, elem), order, i + 1, array.length - 1))
        assert(order.leq(
          (array.updated(h, elem): Array[(K, T)])(i)._1,
          (array.updated(h, elem): Array[(K, T)])(i+1)._1
        ))
        check(isSortedRange(array.updated(h, elem), order, i, array.length - 1))
      } else {
        check(isSortedRange(array.updated(h, elem), order, i, array.length - 1))
      }
    }

  }.ensuring { _ =>
    isSortedRange(array.updated(h, elem), order, i, array.length - 1)
  }

  @opaque @ghost @pure @inlineOnce
  def insertSorted[K, @mutable T](array: Array[(K, T)], order: TotalOrder[K], h: Int, elem: (K, T)): Unit = {
    require(0 <= h && h < array.length)
    require(isSortedRange(array, order, 0, h))
    require(isSortedRange(array, order, h+1, array.length-1))
    require(h > 0 ==> order.leq(array(h-1)._1, elem._1))
    require(h < array.length-1 ==> order.leq(elem._1, array(h+1)._1))

    insertSortedRange(array, order, h, elem, 0)

  }.ensuring { _ =>
    isSorted(array.updated(h, elem), order)
  }

  @opaque @pure
  def findIndex[K, @mutable T](array: Array[(K, T)], order: TotalOrder[K], key: K): Int = {
    require(array.length > 0)
    require(array.length < sizeLimit)
    require(isSorted(array, order))
    require(!order.leq(array(array.length-1)._1, key))

    val n: Int = array.length
    var l: Int = -1
    var h: Int = array.length

    (while (l + 1 != h) {
      decreases(h - l)

      val m = (l + h) >>> 1

      if (order.leq(key, array(m)._1)) {
        h = m
        ghost {
          sortedAllLarger(array, order, key, h)
        }
      } else {
        l = m
        ghost {
          order.totalityLaw(key, array(m)._1)
          sortedAllSmaller(array, order, key, l)
        }
        assert(allSmaller(array, order, key, l))
      }
    }).inline.opaque.invariant (
      -1 <= l && l < h && h <= n &&
      array.length == n &&
      allSmaller(array, order, key, l) &&
      allLarger(array, order, key, h) &&
      !order.leq(array(array.length-1)._1, key) &&
      true
    )

    ghost {
      if (h == n) {
        getSmaller(array, order, key, l, array.length-1)
        assert(order.leq(array(array.length-1)._1, key))
        check(false)
      }
      assert(h < n)
    }

    h

  }.ensuring(res =>
    0 <= res && res < array.length &&
    allSmaller(array, order, key, res-1) &&
    allLarger(array, order, key, res) &&
    // !order.leq(array(n-1)._1, key) &&
    // isSorted(array, order) &&
    true

  )

}

case class SortedArray[K, @mutable T](array: Array[(K, T)], order: TotalOrder[K]) {
  require(array.length < sizeLimit)

  @inline def length: Int = array.length

  def apply(i: Int) = {
    require(0 <= i && i < array.length)
    array(i)
  }

  /* insert into a sorted array
   * Adapted from MemFileSystemHelper.c
   *
   *
   * Example with initial array Array(10, 20) (l = -1, h = 2)
   *
   * During the first loop:
   * insert(5)  // l = -1, h = 0
   * insert(15) // l = 0, h = 2, and l = 0, h = 1
   * insert(25) // l = 0, h = 2, and l = 1, h = 2
   *
   * Another example:
   * insert 26
   *
   * After the first loop:
   * l = 2
   * h = 3
   * n = 7
   *
   * During the second loop:
   * i = 6   10 15 24 32 40 44 55
   * i = 5   10 15 24 32 40 55 44
   * i = 4   10 15 24 32 55 40 44
   * i = 3   10 15 24 55 32 40 44
   */
  @opaque
  def insert(elemRef: Array[(K, T)]): Boolean = {
    require(array.length > 0)
    require(isSorted(array, order))
    require(elemRef.length == 1)

    val elem = elemRef(0)
    val n: Int = array.length

    if (order.leq(array(n-1)._1, elem._1)) return false

    assert(!order.leq(array(n-1)._1, elem._1))

    val h = SortedArray.findIndex(array, order, elem._1)
    var i = n - 1

    assert(isSortedRange(array, order, 0, i))
    assert(isSortedRange(array, order, i+1, array.length-1))
    assert(elemRef.length == 1)
    assert(0 <= h)
    assert(h < array.length)
    assert(0 <= i && i <= n-1 && array.length == n)
    assert(i >= h)
    assert(isSortedRange(array, order, 0, i))
    assert(((0 < i && i < n-1) ==> order.leq(array(i-1)._1, array(i+1)._1)))
    assert(isSortedRange(array, order, i+1, array.length-1))
    assert((h-1 >= 0 ==> order.leq(array(h-1)._1, elem._1)))
    assert(((i == h && h < n-1) ==> order.leq(elem._1, array(h+1)._1)))
    assert((i > h ==> order.leq(elem._1, array(h)._1)))

    assert(i >= h)

    (while (i > h) {
      decreases(i)

      ghost {
        isSortedRangeSwap(array, order, 0, i)
        if (1 < i) {
          sortedRangePair(array, order, i-2, 0, i)
          assert(order.leq(array(i-2)._1, array(i-1)._1))
        }
        isSortedRangeSwap2(array, order, i+1, array.length-1, i, i-1)
        assert(isSortedRange(array.updated(i, array(i-1)).updated(i-1, array(i)), order, i+1, array.length-1))
        check(isSortedRange(array.updated(i, array(i-1)).updated(i-1, array(i)), order, i+2, array.length-1))
        assert((i > h && h < n) ==> order.leq(elem._1, array(h)._1))
      }

      swap(array, i, array, i-1)
      i = i - 1

      ghost {
        assert(0 <= h && h <= array.length)
        assert(0 <= i)
        assert(i <= n-1)
        assert(array.length == n)
        assert(i >= h)
        assert(isSortedRange(array, order, 0, i))
        if (0 < i) {
          check(order.leq(array(i-1)._1, array(i+1)._1))
        }
        assert((0 < i && i < n-1) ==> order.leq(array(i-1)._1, array(i+1)._1))
        assert(isSortedRange(array, order, i+2, array.length-1))
        if (i < n - 2) {
          check(order.leq(array(i+1)._1, array(i+2)._1))
        }
        assert(isSortedRange(array, order, i+1, array.length-1))
        assert(h-1 >= 0 ==> order.leq(array(h-1)._1, elem._1))
        if (i == h && h < n-1) {
          check(order.leq(elem._1, array(h+1)._1))
        }
        assert((i == h && h < n-1) ==> order.leq(elem._1, array(h+1)._1))
        assert(i > h ==> order.leq(elem._1, array(h)._1))
      }

    }).inline.opaque.invariant (
      elemRef.length == 1 &&
      0 <= i && i <= n-1 && array.length == n &&
      i >= h &&
      isSortedRange(array, order, 0, i) &&
      ((0 < i && i < n-1) ==> order.leq(array(i-1)._1, array(i+1)._1)) &&
      isSortedRange(array, order, i+1, array.length-1) &&
      (h-1 >= 0 ==> order.leq(array(h-1)._1, elem._1)) &&
      ((i == h && h < n-1) ==> order.leq(elem._1, array(h+1)._1)) &&
      (i > h ==> order.leq(elem._1, array(h)._1)) &&
      true
    )

    assert(i >= h)
    assert(i <= h)

    assert(i == h)

    ghost {
      assert(0 <= h && h < array.length)
      isSortedRangeSame(array, order, 0, i, 0, h)
      assert(isSortedRange(array, order, 0, h))
      isSortedRangeSame(array, order, i+1, array.length-1, h+1, array.length-1)
      assert(isSortedRange(array, order, h+1, array.length-1))
      if (h > 0) {
        assert(array(h-1)._1 == array(i-1)._1)
        check(order.leq(array(h-1)._1, elem._1))
      }
      if (h < array.length-1) {
        assert(array(h+1)._1 == array(i+1)._1)
        check(order.leq(elem._1, array(h+1)._1))
      }
      insertSorted(array, order, h, elem)
    }

    swap(array, h, elemRef, 0)
    assert(isSorted(array, order))
    true
  }.ensuring(_ => isSorted(array, order))
}
