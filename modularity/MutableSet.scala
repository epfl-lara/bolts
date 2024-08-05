package modularity

import stainless.collection._
import stainless.lang._
import stainless.annotation._

object MutableSetImplObj:

  @mutable
  final case class MutableSetImpl[V](private var content: List[V]) extends MutableSetObj.MutableSet[V]:
    def contains(v: V): Boolean = content.contains(v)
    def add(v: V): Unit =
      if (!content.contains(v)) then
        content = v :: content
      else 
        ()
    def remove(v: V): Unit = content = content.filter(_ != v)
    def size: BigInt = content.size



end MutableSetImplObj
