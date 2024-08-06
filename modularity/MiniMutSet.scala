package modularity

import stainless.collection._
import stainless.lang._
import stainless.annotation._

object MiniMutableSet:

  @mutable
  final case class MiniMutSet[V](private var content: List[V]) extends MiniMutableSetInterface.MiniMutableSet[V]:
    override def contains(v: V): Boolean = content.contains(v)
    override def add(v: V): Unit = content = v :: content
end MiniMutableSet
