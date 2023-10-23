// to run it:
// scala-cli -J -Xmx24576m Benchmark.scala MutableLongMap.scala StrictlyOrderedLongListMap.scala  $(find /localhome/chassot/stainless/frontends/library/stainless/ -name "*.scala")

import ch.epfl.chassot.MutableLongMap.*
import scala.collection.mutable.LongMap

object MutableLongMapBenchmark {
  def benchmarkVerifiedMap(n: Int) = {
    val m = getEmptyLongMap(l => 0L)
    // val n = Math.pow(2, 10).toInt
    val t1 = System.nanoTime()
    for (i <- 0 to n) {
      val res = m.update(i, i)
    }
    val t2 = System.nanoTime()
    println(f"Time to insert $n elements in verified: ${(t2 - t1) / 1000000} ms")
  }

  def benchmarkOriginalMap(n: Int) = {
    val m = LongMap[Long]()
    // val n = Math.pow(2, 10).toInt
    val t1 = System.nanoTime()
    for (i <- 0 to n) {
      val res = m.update(i, i)
    }
    val t2 = System.nanoTime()
    println(f"Time to insert $n elements in original: ${(t2 - t1) / 1000000} ms")
  }
}

@main def main(): Unit = {
  val n = 4096
  MutableLongMapBenchmark.benchmarkVerifiedMap(n)
  MutableLongMapBenchmark.benchmarkOriginalMap(n)
}
