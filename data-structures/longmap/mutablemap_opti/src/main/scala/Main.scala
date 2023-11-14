import ch.epfl.chassot.MutableLongMap
import ch.epfl.chassot.ListMapLongKey
import stainless.collection.List
import benchmark.BenchmarkUtil.*

object Main extends App{
  def main(): Unit = {
      val mTest = MutableLongMap.getEmptyLongMap[Long](k => 0L)

    //   var mTest = ListMapLongKey[Long](List[(Long, Long)]())


      val keysListName = (2048*8).toString()
      val t1 = System.nanoTime()
      // val map = getOriginalMapEmptyBuffer(16)
      val map = getVerifiedMapEmptyBuffer(16)
      for (k, v) <- random2to15Pairs do
          map.update(k, v)
      end for

      for k <- getKeysList("24576") do
          map.remove(k)
      end for

      for (k, v) <- random2to15Pairs do
          map.update(k, v)
      end for

      for k <- getKeysList(keysListName) do
          map(k)
      end for
      val t2 = System.nanoTime()
      for (k, v) <- random2to15Pairs do
        println(f"value in map for k = $k is ${map(k)} and should be $v")
        assert(map(k) == v)
      end for
      val res = random2to15Pairs.map((k, v) => (mTest(k) == v)).reduce(_ && _)
      println(f"Time to run ${(t2 - t1) / 1e6}%.2f ms")
      println(f"Result validity: $res") 
    }
  main()
}