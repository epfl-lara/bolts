import scala.reflect.{ClassTag as realClassTag}
import stainless.annotation.*
import stainless.lang.StaticChecks.*
import stainless.lang.{ghost as ghostExpr, *}

case class ClassTag[T](@extern real: realClassTag[T])

@ghost @pure 
def definedBothWays(d: Array[Boolean])(from: Int, until: Int): Unit = {
  require(0 <= from && from <= until && until <= d.size)
  def .holdsFrom(a: Int, b: Int): Unit = {
    require(0 <= a && a <= b && b <= d.size)
    decreases(b - a)
    if a == b then ()
    else
      .holdsFrom(a + 1, b)
      .holdsFrom(a, b - 1)
  }.ensuring(_ => definedFor1(d)(a, b) == definedFor2(d)(a, b))
  .holdsFrom(from, until)
}.ensuring(_ => definedFor1(d)(from, until) == definedFor2(d)(from, until))

@ghost @pure
def definedFor1(d: Array[Boolean])(from: Int, until: Int): Boolean =
  require(0 <= from && from <= until && until <= d.size)
  decreases(until - from)
  (from == until) || (d(until - 1) && definedFor1(d)(from, until - 1))

@ghost @pure
def definedFor2(d: Array[Boolean])(from: Int, until: Int): Boolean = {
  require(0 <= from && from <= until && until <= d.size)
  decreases(until - from)
  (from == until) || (d(from) && definedFor2(d)(from + 1, until))
}

@ghost @pure
def definedFor1updatedAfter(d: Array[Boolean])(from: Int, until: Int)(i: Int, v: Boolean): Unit = {
  require(0 <= from && from <= until && until <= i && i < d.size)
  require(definedFor1(d)(from, until))
  decreases(until - from)
  if from == until then ()
  else 
    definedFor1updatedAfter(d)(from, until - 1)(i, v)
}.ensuring(_ => definedFor1(d.updated(i, v))(from, until))

@ghost @pure 
def updatingDefined(d: Array[Boolean])(i: Int) = {
  require(0 <= i && i < d.size)
  require(definedFor1(d)(0, i))
  definedFor1updatedAfter(d)(0, i)(i, true)
}.ensuring(_ => definedFor1(d.updated(i, true))(0, i + 1))

object UArrayExample:
  final case class UArray[T](private[UArray] content: Array[T],
                            size: Int,
                             @ghost private[UArray] defined: Array[Boolean]):
    require(defined.size == size && content.size == size)
    
    @pure
    def apply(i: Int): T =
      require(0 <= i && i < size && defined(i))
      content(i)

    @pure @ghost
    def isDefined(i: Int): Boolean =
      require(0 <= i && i < size)
      defined(i)

    @pure @ghost
    def initialized(to: Int = size): Boolean =
      require(0 <= to && to <= size)
      definedFor1(defined)(0, to)

    def update(i: Int, x: T): Unit = {
      require(0 <= i && i < size)
      require(initialized(i))
      content(i) = x
      ghostExpr:
        assert(initialized(i))
        updatingDefined(defined)(i)
        defined(i) = true
    }.ensuring(_  => initialized(i + 1))

    @pure
    def get: Array[T] =
      require(initialized(size))
      freshCopy(content)

  end UArray

  object UArray:
    @extern
    def ofSize[T: ClassTag](size: Int): UArray[T] = {
      require(0 <= size)
      @ghost val definedNot = Array.fill(size)(false)
      given ct: realClassTag[T] = summon[ClassTag[T]].real
      val content = new Array[T](size)
      UArray[T](content, size, definedNot)
    }.ensuring(res => res.size == size)


  end UArray

  def arr3[T: ClassTag](mk: Int => T): Array[T] =
    val ua = UArray.ofSize[T](3)
    ua(0) = mk(0)
    ua(1) = mk(1)
    ua(2) = mk(2)
    ua.get

  def fillWith[T: ClassTag](ua: UArray[T])(from: Int, until: Int)(mk: Int => T): Unit = {
    require(0 <= from && from <= until && until <= ua.size)
    require(ua.initialized(from))
    decreases(until - from)
    if from == until then ()
    else
      ua(from) = mk(from)
      fillWith(ua)(from + 1, until)(mk)
  }.ensuring(_ => ua.initialized(until) && ua.size == old(ua).size)

  def fillWith[T: ClassTag](ua: UArray[T])(mk: Int => T): Unit = {
    fillWith(ua)(0, ua.size)(mk)
  }.ensuring(_ => ua.initialized(ua.size))


end UArrayExample
