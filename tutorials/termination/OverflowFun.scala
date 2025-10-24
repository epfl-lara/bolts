// Verify with --strict-arithmetic=false
import stainless.lang.*

def overflow_fun(i: Int, n: Int): Int =
  require(0 < n && i <= n)
  decreases(if i < 0 then 1 else 0, if i < 0 then - i - 1 else n - i)
  if i == n then n
  else overflow_fun(i + 1, n)
