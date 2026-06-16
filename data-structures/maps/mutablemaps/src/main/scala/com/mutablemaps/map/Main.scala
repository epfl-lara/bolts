package com.mutablemaps.map

import com.mutablemaps.map.MutableLongMap
import com.mutablemaps.map.ListLongMap
import stainless.collection.List
import benchmark.BenchmarkUtil.*
import benchmark.Key
import com.mutablemaps.map.MutableHashMap.*
import com.mutablemaps.map.MutableLongMap.ValueCellFull
import com.mutablemaps.map.MutableLongMap.EmptyCell
import scala.collection.mutable.HashMap
import stainless.lang.Cell
import com.mutablemaps.map.MutableLongMap.ValueCell
object Main {
  def main(args: Array[String]): Unit = {
    // check the number of collisions of each levels:

    val mapFilled: MutableHashMap.HashMap[Key, Long] = benchmark.HashMapBenchmarkUtilBig.verifiedHashMapFilledWith2to22Values
    println(f"mapFilled.size = ${mapFilled.size}")
    var bucketSizes: HashMap[BigInt, Int] = HashMap()
    var i = 0
    while (i < mapFilled.underlying.v.underlying.v.mask + 1) {
      val key: Long = mapFilled.underlying.v.underlying.v._keys(i)
      if(key != 0 && key != Long.MinValue) {
        val value: List[(Key, Long)] = mapFilled.underlying.v.underlying.v._values(i)
        println(value)
      }
      i += 1
    }

    println(f"bucketSizes = ${bucketSizes}")
    

  }

}
