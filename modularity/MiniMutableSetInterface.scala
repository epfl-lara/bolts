package modularity


import stainless.annotation.mutable
import stainless.annotation.pure
import stainless.annotation.law
import stainless.lang.AbstractMethodBody



object MiniMutableSetInterface:
  @mutable
  trait iMiniMutableSet[V]:
    @pure def contains(v: V): Boolean
    def add(v: V): Unit = {
      AbstractMethodBody[Unit]()
    }.ensuring(_ => contains(v))

    // @law @pure @ghost def addContains(v: V): Boolean = {
    //   val snap = snapshot(this)
    //   snap.add(v)
    //   snap.contains(v)
    // }
  end iMiniMutableSet
end MiniMutableSetInterface


object MiniSetUsage:
  import MiniMutableSetInterface._
  def testMiniMutableSet(s: iMiniMutableSet[BigInt]): Unit = {
    s.add(1)
    assert(s.contains(1))
  }
end MiniSetUsage
