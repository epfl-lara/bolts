package modularity


import stainless.collection._
import stainless.lang._
import stainless.annotation._


object MiniMutableSetInterface:
  @mutable
  trait MiniMutableSet[V]:
    @pure def contains(v: V): Boolean
    def add(v: V): Unit = {
      ??? : Unit
    }.ensuring(_ => contains(v))

    @law @pure @ghost def addContains(v: V): Boolean = {
      val snap = snapshot(this)
      snap.add(v)
      snap.contains(v)
    }
  end MiniMutableSet
end MiniMutableSetInterface


object MiniSetUsage:
  import MiniMutableSetInterface._
  def testMiniMutableSet(s: MiniMutableSet[BigInt]): Unit = {
    s.add(1)
    assert(s.contains(1))
  }
end MiniSetUsage
