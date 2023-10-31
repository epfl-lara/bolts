import ch.epfl.chassot.MutableLongMap
import ch.epfl.chassot.ListMapLongKey
import stainless.collection.List

object Main extends App{
  def main(): Unit = {
      // val mTest = MutableLongMap.getEmptyLongMap[Long](k => 0L)

      var mTest = ListMapLongKey[Long](List[(Long, Long)]())

      val max = 512L
      val keys = (0L until max).toList
      val t1 = System.nanoTime()
      for i <- keys do
        mTest = mTest + (i, i)
      val t2 = System.nanoTime()
      // val res = keys.map(k => (mTest(k) == k)).reduce(_ && _)
      println(f"Time to populate ${keys.size} key-value pairs: ${(t2 - t1) / 1e9}%.2f secs")
      // println(f"Result valiity: $res")

      
    }
  main()
}