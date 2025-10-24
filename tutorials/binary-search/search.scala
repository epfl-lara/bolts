/*
    Verify this file using --solvers=smt-cvc5 v 1.0.8 or similar.
 */

import stainless.lang.*
object Find {
  // abbreviation expanded by the compiler
  inline def interval(a: Array[Int], lo: Int, hi: Int): Boolean = 
    0 <= lo && lo <= hi && hi <= a.size

  def existsIn(a: Array[Int], lo: Int, hi: Int, x: Int): Boolean = 
    require(interval(a, lo, hi))
    decreases(hi - lo)
    !(lo == hi) &&
    ((a(hi - 1) == x) || existsIn(a, lo, hi - 1, x))

  def existsInCombinedInterval(a: Array[Int], lo: Int, mid: Int, hi: Int, x: Int): Unit = {
    require(interval(a, lo, mid) && interval(a, mid, hi))
    decreases(hi - mid)
    if mid < hi then
      existsInCombinedInterval(a, lo, mid, hi - 1, x)
  }.ensuring(res => 
    (existsIn(a, lo, hi, x) == (existsIn(a, lo, mid, x) || existsIn(a, mid, hi, x))))

  def find(a: Array[Int], lo: Int, hi: Int, x: Int): Int = {
    require(interval(a, lo, hi))
    var i = lo
    (while i < hi && a(i) != x do    
      decreases(hi - i)
      i = i + 1
    ).invariant(lo <= i && i <= hi && !existsIn(a, lo, i, x))
    if i < hi then i
    else -1
  }.ensuring(res =>
    (lo <= res && res < hi && a(res) == x) ||
    (res == -1 && !existsIn(a, lo, hi, x)))

  // 2. fixed code that verifies:

  def search1(a: Array[Int], lo: Int, hi: Int, x: Int): Int = {
    require(interval(a, lo, hi))
    decreases(hi - lo)
    if lo < hi then
      val i = lo + (hi - lo) / 2
      val seeing = a(i)
      if x == seeing then i
      else if x < seeing then search1(a, lo, i, x)
      else search1(a, i+1, hi, x)
    else 
      -1
  }.ensuring(res =>
    (lo <= res && res < hi && a(res) == x) ||
    (res == -1)
  )

  // 3. version using a while loop

  def search2(a: Array[Int], lo: Int, hi: Int, x: Int): Int = {
    require(interval(a, lo, hi))
    var lo0 = lo
    var hi0 = hi
    var res = -1
    (while res == -1 && lo0 < hi0 do
      decreases(hi0 - lo0)
      val i = lo0 + (hi0 - lo0) / 2
      val seeing = a(i)
      if x == seeing then 
        res = i
      else if x < seeing then 
        hi0 = i
      else 
        lo0 = i+1
    ).invariant(lo <= lo0 && lo0 <= hi0 && hi0 <= hi &&
                ((lo <= res && res < hi && a(res) == x) || res == -1))
    if res == -1 then
      assert(lo0 == hi0)
    else
      assert(a(res) == x)
    res
  }.ensuring(res =>
    (lo <= res && res < hi && a(res) == x) ||
    (res == -1))  

  // 4. proving absence when element is not found, assuming the array is sorted

  def isSorted(a: Array[Int], lo: Int, hi: Int): Boolean =
    require(interval(a, lo, hi))
    decreases(hi - lo)
    (lo == hi) || (lo + 1 == hi) ||
    (a(lo) <= a(lo + 1) && isSorted(a, lo + 1, hi))

  def isSortedAt(a: Array[Int], lo: Int, hi: Int, i: Int): Unit = {
    require(interval(a, lo, hi) && lo <= i && i < hi && i + 1 < hi && isSorted(a, lo, hi))
    decreases(i - lo)
    if lo < i then
      isSortedAt(a, lo + 1, hi, i)
  }.ensuring(a(i) <= a(i+1))


  def isSortedSubinterval(a: Array[Int], lo: Int, lo1: Int, hi1: Int, hi: Int): Unit = {
    require(interval(a, lo, hi) && isSorted(a, lo, hi) && interval(a, lo1, hi1) && lo <= lo1 && hi1 <= hi)
    decreases(hi1 - lo1)
    if lo1 < hi1 then
      isSortedSubinterval(a, lo, lo1 + 1, hi1, hi)
      if lo1 < hi && lo1 + 1 < hi then
        isSortedAt(a, lo, hi, lo1)
  }.ensuring(isSorted(a, lo1, hi1))

  def lessWhenSorted(a: Array[Int], lo: Int, i: Int, hi: Int, x: Int): Unit = {
    require(interval(a, lo, hi) && isSorted(a, lo, hi) && lo <= i && i < hi && x < a(i))
    decreases(hi - i)
    if i + 1 < hi then
      isSortedAt(a, lo, hi, i)
      lessWhenSorted(a, lo, i + 1, hi, x)
      existsInCombinedInterval(a, i, i + 1, hi, x)
  }.ensuring(!existsIn(a, i, hi, x))

  def moreWhenSorted(a: Array[Int], lo: Int, i: Int, hi: Int, x: Int): Unit = {
    require(interval(a, lo, hi) && isSorted(a, lo, hi) && lo <= i && i < hi && a(i) < x)
    decreases(i - lo)
    if lo < i then
      isSortedAt(a, lo, hi, i - 1)
      moreWhenSorted(a, lo, i - 1, hi, x)
      existsInCombinedInterval(a, i - 1, i, hi, x)
  }.ensuring(!existsIn(a, lo, i + 1, x))

  def search4(a: Array[Int], lo: Int, hi: Int, x: Int): Int = {
    require(interval(a, lo, hi) && isSorted(a, lo, hi))
    decreases(hi-lo)
    if lo < hi then
      val i = lo + (hi - lo) / 2
      assert(i <= hi)
      val seeing = a(i)
      if x == seeing then i
      else if x < seeing then 
        isSortedSubinterval(a, lo, lo, i, hi)
        lessWhenSorted(a, lo, i, hi, x)
        existsInCombinedInterval(a, lo, i, hi, x)
        search4(a, lo, i, x)
      else 
        isSortedSubinterval(a, lo, i + 1, hi, hi)
        moreWhenSorted(a, lo, i, hi, x)
        existsInCombinedInterval(a, lo, i + 1, hi, x)
        search4(a, i+1, hi, x)
    else
      -1
  }.ensuring(res =>
    (lo <= res && res < hi && a(res) == x) ||
    ((res == -1) && !existsIn(a, lo, hi, x)))
}
