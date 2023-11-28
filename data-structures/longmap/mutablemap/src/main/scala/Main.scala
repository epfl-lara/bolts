import ch.epfl.chassot.MutableLongMap
import ch.epfl.chassot.ListLongMap
import stainless.collection.List
import benchmark.BenchmarkUtil.*

object Main extends App {
  def main(): Unit = {
    // val mTest = MutableLongMap.getEmptyLongMap[Long](k => 0L)

    var mTest = ListLongMap[Long](List[(Long, Long)]())

    val nKeys = (2048 * 8).toString()
    val t1 = System.nanoTime()
    // val map = getOriginalMapEmptyBuffer(16)
    val map = getVerifiedMapEmptyBuffer(16)
    for (k, v) <- random2to15Pairs do map.update(k, v)
    end for

    var i1 = 0
    val n1 = 24576
    while (i1 < n1) do
      map.remove(randomArrayOfKeysSize2to16(i1))
      i1 += 1
    end while

    for (k, v) <- random2to15Pairs do map.update(k, v)
    end for

    var i = 0
    val n = nKeys.toInt
    while (i < n) do
      map(randomArrayOfKeysSize2to16(i))
      i += 1
    end while
    val t2 = System.nanoTime()
    // val res = keys.map(k => (mTest(k) == k)).reduce(_ && _)
    println(f"Time to run ${(t2 - t1) / 1e6}%.2f ms")
    // println(f"Result valiity: $res")

  }
  main()
}
