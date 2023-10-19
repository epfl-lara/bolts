import scala.collection.mutable.LongMap

object BugLongMap {

  def main(): Unit = {
    val m = LongMap[Long]()
    for (i <- 0 to Math.pow(2, 30).toInt) {
      m.update(i, i)
      if (i % Math.pow(2, 20).toLong == 0) println(f"m.size = ${m.size} for i = $i")
    }
  }

  def baseTwoLogarithm(i: Long): Long = {
    0L
  }

}

@main def main(): Unit = {
  BugLongMap.main()
}
