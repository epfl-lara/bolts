package ch.epfl.chassot

import ch.epfl.chassot.MutableLongMap
import ch.epfl.chassot.ListLongMap
import stainless.collection.List
import benchmark.BenchmarkUtil.*
import benchmark.Key
import ch.epfl.chassot.MutableHashMap.*
import ch.epfl.chassot.MutableLongMap.ValueCellFull
import ch.epfl.chassot.MutableLongMap.EmptyCell
import scala.collection.mutable.HashMap
object Main {
  def main(args: Array[String]): Unit = {
    // check the number of collisions of each levels:

    val mapFilled = benchmark.HashMapBenchmarkUtilBig.verifiedHashMapFilledWith2to22Values
    println(f"mapFilled.size = ${mapFilled.size}")
    var bucketSizes: HashMap[BigInt, Int] = HashMap()
    var i = 0
    while (i < mapFilled.underlying.v.underlying.v.mask + 1) {
      val key = mapFilled.underlying.v.underlying.v._keys(i)
      if(key != 0 && key != Long.MinValue) {
        val value = mapFilled.underlying.v.underlying.v._values(i)
        println(value)
        value match
          case ValueCellFull(v) => bucketSizes(v.size) = bucketSizes.getOrElse(v.size, 0) + 1
          case EmptyCell() => ()
        
      }
      i += 1
    }

    println(f"bucketSizes = ${bucketSizes}")
    

  }

}
