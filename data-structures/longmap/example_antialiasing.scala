import stainless.lang.*
import stainless.annotation.*

object AntiAliasingTest {
  case class FixedSizeMap(arr: Array[BigInt])

  case class Map(var underlying: Cell[FixedSizeMap]) {
    def repack() = {
      require(underlying.isOwned)
      val r = helper()
      underlying.takeFrom(r)
    }

    def helper(): Cell[FixedSizeMap] = {
      require(underlying.isOwned)
      if (underlying.v.arr.length % 2 == 0) underlying.expire()
      else {
        val res = Cell(FixedSizeMap(Array.fill(10)(0)))
        res.v.arr(0) = 10
        res
      }
    }
  }

  object Cell {
    def apply[@mutable T](v: T): Cell[T] = new Cell(v, true)
  }

  case class Cell[@mutable T] private (var v: T, private var owned: Boolean) {
    def isOwned: Boolean = owned

    @extern
    def takeFrom(c2: Cell[T]): Unit = {
      require(c2.owned)
      c2.owned = false
      owned = true
      v = c2.v
    }.ensuring(_ => v == old(c2).v && !c2.owned && owned)

    @extern
    def expire(): Cell[T] = {
      require(owned)
      owned = false
      Cell(v, true)
    }.ensuring(res => old(this).v == res.v && !owned && res.owned)
  }
}
