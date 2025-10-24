package modularity

import stainless.collection.List
import stainless.annotation.mutable

object MiniMutableSet:

  @mutable
  final case class MiniMutSet[V](private var content: List[V]) extends MiniMutableSetInterface.iMiniMutableSet[V]:
    override def contains(v: V): Boolean = content.contains(v)
    override def add(v: V): Unit = {
      content = v :: content
    }.ensuring(_ => true)
end MiniMutableSet
