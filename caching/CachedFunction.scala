import ch.epfl.chassot.*
import stainless.lang.StaticChecks.*
import stainless.annotation.*
import stainless.lang.{ghost => ghostExpr, _}
import stainless.collection.*

import stainless.lang.StaticChecks.* 

object CachedFunction {
  def getCachedFunction[I, O](f: I => O, hashable: Hashable[I]): CachedFunction[I, O] = {
    CachedFunction(f, hashable, MutableHashMap.getEmptyHashMap[I, O](f, hashable))
  }

  @ghost
  @inline
  def allValuesAreFunctionOutputs[I, O](
      f: I => O,
      cache: MutableHashMap.HashMap[I, O]
  ): Boolean = {
    require(cache.valid)
    cache.map.forall((k, v) => v == f(k))
  }

  @ghost
  @inlineOnce
  @opaque
  def lemmaInMapThenCorrect[I, O](
      f: I => O,
      cache: MutableHashMap.HashMap[I, O],
      x: I,
      y: O
  ): Unit = {
    require(cache.valid)
    require(allValuesAreFunctionOutputs(f, cache))
    if (cache.contains(x)) then
      assert(cache.map.contains(x))
      val y = cache(x)
      TupleListOpsGenK.lemmaGetValueByKeyImpliesContainsTuple(
        cache.map.toList,
        x,
        y
      )
      assert(cache.map.toList.contains((x, cache(x))))
      ListSpecs.forallContained(cache.map.toList, (k, v) => v == f(k), (x, y))
  }.ensuring (_ => if (cache.contains(x)) then cache(x) == f(x) else true)

}

final case class CachedFunction[I, O](
    f: I => O,
    hashable: Hashable[I],
    private val cache: MutableHashMap.HashMap[I, O]
) {

  @ghost @opaque
  def valid: Boolean =
    cache.valid &&
    CachedFunction.allValuesAreFunctionOutputs(f, cache)

  @opaque
  def apply(x: I): O = {
    require(valid)
    ghostExpr(unfold(valid))
    if cache.contains(x) then
      ghostExpr(CachedFunction.lemmaInMapThenCorrect(f, cache, x, cache(x)))
      cache(x)
    else
      val result = f(x)
      cache.update(x, result)
      assert(cache.valid)
      assert(CachedFunction.allValuesAreFunctionOutputs(f, cache), "cached value is still function output")
      result
  }.ensuring { res => res == f(x) && {unfold(valid);valid} }
}

// object IntHashable extends Hashable[Int] {
//   def hash(x: Int): Long = x.toLong
// }
// @extern
// @main def Main() =
//   val f = (x: Int) => x * x
//   val cachedF = CachedFunction.getCachedFunction(f, IntHashable)
//   println(cachedF(2))
//   println(cachedF(2))
//   println(cachedF(3))
