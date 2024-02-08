package ch.epfl.chassot

import ch.epfl.chassot.MutableLongMap
import ch.epfl.chassot.ListLongMap
import stainless.collection.List
import benchmark.BenchmarkUtil.*


class HashLong extends Hashable[Long] {
  def hash(k: Long): Long = k
}

object Main {
  def main(args: Array[String]): Unit = {
  //   var listLongMap = ListLongMap.empty[Long]
  //   val mutableLongMap = MutableLongMap.getEmptyLongMap(_ => 0L)

  //   listLongMap = listLongMap + (12, 42)
  //   mutableLongMap.update(12, 42)

  //   assert(listLongMap(12) == mutableLongMap(12))
  //   assert(mutableLongMap(12) == 42)

  //   println(f"mutableLongMap(12) = ${mutableLongMap(12)}")


  val hashmap = MutableHashMap.getEmptyHashMap[Long, Long](new HashLong())
  for i <- 0 until 1000 do
    hashmap.update(i, i)
  end for

  for i <- 0 until 1000 do
    println(f"hashmap($i) = ${hashmap(i)}")
  end for

  }

}
