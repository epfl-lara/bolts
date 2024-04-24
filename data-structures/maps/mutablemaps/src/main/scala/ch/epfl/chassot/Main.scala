package ch.epfl.chassot

import ch.epfl.chassot.MutableLongMap
import ch.epfl.chassot.ListLongMap
import stainless.collection.List
import benchmark.BenchmarkUtil.*

object Main {
  def main(args: Array[String]): Unit = {
    val mLongMap = MutableLongMap.getEmptyLongMap(_ => 0L)
    mLongMap.update(1, 42L)
    mLongMap.update(2, 43L)
    mLongMap.remove(2)
    println(f"mLongMap.apply(1) = ${mLongMap.apply(1)}")

  }

}
