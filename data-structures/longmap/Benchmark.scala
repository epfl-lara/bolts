// to run it:
// scala-cli -J -Xmx24576m Benchmark.scala MutableLongMap.scala StrictlyOrderedLongListMap.scala  $(find /localhome/chassot/stainless/frontends/library/stainless/ -name "*.scala")

import ch.epfl.chassot.MutableLongMap.*

object MutableLongMapBenchmark {
  def benchmark() = {
    val m = getEmptyLongMap(l => 0L)
    // val n = Math.pow(2, 10).toInt
    val n = 127
    val t1 = System.nanoTime()
    for (i <- 0 to n) {
      val res = m.update(i, i)
      println(f"Inserting $i: $res")
    }
    val t2 = System.nanoTime()
    println(f"Time to insert $n elements: ${(t2 - t1) / 1000000} ms")
  }
}

@main def main(): Unit = {
  MutableLongMapBenchmark.benchmark()
}
