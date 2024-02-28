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
    import benchmark.HashMapBenchmarkUtilBig.* 
    import benchmark.HashKey

    val collisions = random2to22Pairs.groupBy(p => HashKey.hash(p._1)).toList.map((k, v) => (k, v.size))
    
    // collisions.filter(p => p._2 > 1).foreach { case (k, v) => println(f"hash: $k, size: $v") }

    collisions.groupBy(p => p._2).toList.sortBy(p => p._1).foreach { case (k, v) => println(f"numbers of collisions: $k, number of times it happened: ${v.size}") }
  //   var listLongMap = ListLongMap.empty[Long]
  //   val mutableLongMap = MutableLongMap.getEmptyLongMap(_ => 0L)

  //   listLongMap = listLongMap + (12, 42)
  //   mutableLongMap.update(12, 42)

  //   assert(listLongMap(12) == mutableLongMap(12))
  //   assert(mutableLongMap(12) == 42)

  //   println(f"mutableLongMap(12) = ${mutableLongMap(12)}")

  // val hashmap = MutableHashMap.getEmptyHashMap[Long, Long](new HashLong())
  // for i <- 0 until 1000 do
  //   hashmap.update(i, i)
  // end for

  // for i <- 0 until 1000 do
  //   println(f"hashmap($i) = ${hashmap(i)}")
  // end for

  // println(f"Size of hashmap: ${hashmap.size}")

  }

}
