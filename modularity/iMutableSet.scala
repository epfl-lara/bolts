package modularity


import stainless.collection._
import stainless.lang._
import stainless.annotation._


object MutableSetObj:
  @mutable
  trait MutableSet[V]:
    def contains(v: V): Boolean
    def add(v: V): Unit
    def remove(v: V): Unit
    def size: BigInt

    @law @pure @ghost def addContains(v: V): Boolean =
      val thisSnap = snapshot(this)
      thisSnap.add(v)  
      thisSnap.contains(v)
    
    @law @pure @ghost def addOtherSameContains(v: V, other: V): Boolean =
      val thisSnap = snapshot(this)
      val thisSnapBefore = snapshot(this)
      thisSnap.add(v)
      if(v != other) then thisSnap.contains(other) == thisSnapBefore.contains(other) else true

    @law @pure @ghost def removeNotContains(v: V): Boolean =
      val thisSnap = snapshot(this)
      thisSnap.remove(v)
      !thisSnap.contains(v)

    @law @pure @ghost def removeOtherSameContains(v: V, other: V): Boolean =
      val thisSnap = snapshot(this)
      val thisSnapBefore = snapshot(this)
      thisSnap.remove(v)
      if(v != other) then thisSnap.contains(other) == thisSnapBefore.contains(other) else true
    

    @law @pure @ghost def addIncreasesSizeByOneOrWasContained(v: V): Boolean =
      val thisSnap = snapshot(this)
      val thisSnapBefore = snapshot(this)
      thisSnap.add(v)
      if(thisSnapBefore.contains(v)) then thisSnap.size == thisSnapBefore.size else thisSnap.size == thisSnapBefore.size + 1
    
    @law @pure @ghost def removeDecreasesSizeByOneOrWasNotContained(v: V): Boolean =
      val thisSnap = snapshot(this)
      val thisSnapBefore = snapshot(this)
      thisSnap.remove(v)
      if(thisSnapBefore.contains(v)) then thisSnap.size == thisSnapBefore.size - 1 else thisSnap.size == thisSnapBefore.size
  end MutableSet
end MutableSetObj
