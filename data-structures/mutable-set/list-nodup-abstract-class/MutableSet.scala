package modularity

import stainless.collection._
import stainless.lang._
import stainless.annotation._

object MutableSetImplObj:

  @mutable
  final case class MutableSetImpl[V](private var list: List[V]) extends MutableSetObj.MutableSet[V]:
    require(ListSpecs.noDuplicate(list))

    override def toSet = list.content

    override def contains(v: V): Boolean = list.contains(v)
    
    override def add(v: V): Unit =
      if !list.contains(v) then
        list = v :: list
      else 
        ()

    override def remove(v: V): Unit = 
      list = removeElement(list, v)

    private def removeElement(l: List[V], v: V): List[V] = {
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

    override def size: BigInt = 
      list.size

end MutableSetImplObj
