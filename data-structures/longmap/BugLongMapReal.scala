import scala.collection.mutable.LongMap

/** This makes the LongMap hangs, when the size reaches 268'435'456 So the counter example we found in Stainless is actually triggering a bug :)
  */
object BugLongMap {

  def triggerBug(): Unit = {
    val m = LongMap[Long]()
    for (i <- 0 to Math.pow(2, 30).toInt) {
      m.update(i, i)
      println(f"m.size = ${m.size} for i = $i")
    }
  }
}

@main def main(): Unit = {
  BugLongMap.maintriggerBugealClass()
}
