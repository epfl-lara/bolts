package modularity


import stainless.collection._
import stainless.lang._
import stainless.annotation._


object MutableSetObj:
  @mutable
  trait MutableSet[V]:
    @pure
    def toSet: Set[V] = {
      ??? : Set[V]
    }

    @pure
    def contains(v: V): Boolean = {
      ??? : Boolean
    } ensuring(_ == toSet.contains(v))

    def add(v: V): Unit = {
      ??? : Unit
    } ensuring(() => 
        toSet == old(this).toSet + v &&
        (if old(this).contains(v) then 
          size == old(this).size
        else
          size == old(this).size + 1))

    def remove(v: V): Unit = {
      ??? : Unit
    } ensuring(() => 
        toSet == old(this).toSet - v &&
        (if old(this).contains(v) then 
          size == old(this).size - 1
        else
          size == old(this).size))

    @pure
    def size: BigInt = {
      ??? : BigInt
    } ensuring(_ >= 0)

  end MutableSet

  def test =
    val ms = new MutableSet[Int] {}
    true

end MutableSetObj
