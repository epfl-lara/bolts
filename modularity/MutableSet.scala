package modularity

import stainless.collection._
import stainless.lang._
import stainless.annotation._

object MutableSetImplObj:

  @mutable
  final case class MutableSetImpl[V](private var content: List[V]) extends MutableSetObj.MutableSet[V]:
    require(ListSpecs.noDuplicate(content))
    def contains(v: V): Boolean = content.contains(v)
    
    def add(v: V): Unit =
      if (!content.contains(v)) then
        content = v :: content
      else 
        ()
    def remove(v: V): Unit = content = removeElement(content, v)
    def size: BigInt = content.size

    def removeElement(l: List[V], v: V): List[V] = {
      require(ListSpecs.noDuplicate(l))
      l match
        case Nil() => Nil[V]()
        case Cons(h, t) if h == v => t
        case Cons(h, t) => Cons(h, removeElement(t, v))
    }.ensuring(res => 
      !res.contains(v) 
      && ListSpecs.noDuplicate(res) 
      && res.content == l.content -- Set(v)
      && (if l.contains(v) then res.size == l.size - 1 else res.size == l.size)
    )



end MutableSetImplObj
