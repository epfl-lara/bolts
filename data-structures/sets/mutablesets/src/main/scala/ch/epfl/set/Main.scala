package ch.epfl.set

import ch.epfl.map.MutableLongMap
import ch.epfl.map.ListLongMap
import ch.epfl.map.Hashable
import ch.epfl.set.MutableHashSet

object Main {
  def main(args: Array[String]): Unit = {
    val set = MutableHashSet.getEmptyHashSet[Int](IntHashable())
    set.update(1)
    set.update(2)
    println(f"Set.contains(1): ${set.contains(1)}")
    println(f"Set.contains(2): ${set.contains(2)}")
    println(f"Set.contains(3): ${set.contains(3)}")
  }

  case class IntHashable() extends Hashable[Int] {
    def hash(x: Int): Long = x.toLong
  }

}
