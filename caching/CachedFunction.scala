import ch.epfl.map.*
import stainless.lang.StaticChecks.*
import stainless.annotation.*
import stainless.lang.{ghost => ghostExpr, _}
import stainless.collection.*

import stainless.lang.StaticChecks.* 

object CachedFunction {
  def getCachedFunction[I, O](f: I => O, hashable: Hashable[I]): CachedFunction[I, O] = {
    CachedFunction(f, hashable, MutableHashMap.getEmptyHashMap[I, O](f, hashable))
  }

  @pure @ghost def isImageOf[I, O](f: I => O): ((I, O)) => Boolean = (t) => t._2 == f(t._1) // If we use a lambda, it is rejected for illegal capture of thiss

  @ghost
  @inline
  def allValuesAreFunctionOutputs[I, O](
      f: I => O,
      cache: MutableHashMap.HashMap[I, O]
  ): Boolean = {
    require(cache.valid)
    cache.map.forall(isImageOf[I, O](f))
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
      ListSpecs.forallContained(cache.map.toList, isImageOf[I, O](f), (x, y))
  }.ensuring (_ => if (cache.contains(x)) then cache(x) == f(x) else true)

}

final case class CachedFunction[I, O](
    f: I => O,
    hashable: Hashable[I],
    private val cache: MutableHashMap.HashMap[I, O]
) {
  @pure
  @ghost
  @opaque
  def valid: Boolean = cache.valid && CachedFunction.allValuesAreFunctionOutputs(f, cache)

  @opaque
  def apply(x: I): O = {
    require(this.valid)
    ghostExpr(unfold(this.valid))
    if cache.contains(x) then
      ghostExpr(CachedFunction.lemmaInMapThenCorrect(f, cache, x, cache(x)))
      cache(x)
    else
      val result = f(x)
      @ghost val thiss = snapshot(this)
      ghostExpr(MutableHashMap.lemmaUpdatePreservesForallPairs(cache, x, result, CachedFunction.isImageOf[I, O](f)))
      cache.update(x, result)
      assert(cache.valid)
      assert(CachedFunction.allValuesAreFunctionOutputs(f, cache), "cached value is still function output")
      result
  }.ensuring( res =>
    unfold(this.valid)
    res == f(x) && this.valid 
  )
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
