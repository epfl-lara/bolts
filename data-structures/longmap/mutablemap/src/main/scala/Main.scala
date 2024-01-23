import ch.epfl.chassot.MutableLongMap
import ch.epfl.chassot.ListLongMap
import stainless.collection.List
import benchmark.BenchmarkUtil.*

object Main extends App {
  def main(): Unit = {
    var listLongMap = ListLongMap.empty[Long]
    val mutableLongMap = MutableLongMap.getEmptyLongMap(_ => 0L)

    listLongMap = listLongMap + (12, 42)
    mutableLongMap.update(12, 42)

    assert(listLongMap(12) == mutableLongMap(12))
    assert(mutableLongMap(12) == 42)

    println(f"mutableLongMap(12) = ${mutableLongMap(12)}")
  }
  main()
}
