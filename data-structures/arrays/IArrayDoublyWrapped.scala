// Use two classes: one that is ignored, and one external. This was needed before stainless/pull/1675
import stainless.annotation.*
import stainless.lang.StaticChecks.*
import stainless.math.wrapping // just for overflow

object IArrayExample: 
  @ignore private[IArrayExample]
  final case class InArray[T](arrScala: scala.IArray[T]):
    def size: Int = arrScala.size
    def apply(i: Int): T = arrScala(i)    

  @ignore private[IArrayExample]
  object InArray:
    def tabulateBigInt(size: Int)(f: Int => BigInt): InArray[BigInt] = {
      val arr: scala.IArray[BigInt] = scala.IArray.tabulate[BigInt](size)(i => f(i))
      InArray(arr)
    }

  final case class IArray[T](@extern @pure arrIn: InArray[T], offset: Int, f: Int => T):
    // internal require: offset <= arrIn.size
    require(0 <= offset)

    @pure @extern
    def size: Int = { 
      // sloppy code as arrIn is private
      val s = arrIn.size - offset
      if s >= 0 then s
      else 0
    }.ensuring(res => 0 <= res)

    @pure @extern
    def apply(i: Int): T = {
      require(0 <= i && i < size)
      arrIn(i + offset)
    }.ensuring(_ == f(i))

    @pure @extern
    def slice(from: Int, until: Int): IArray[T] = {
      require(0 <= from && from <= until && until <= size)
      val f1 : Int => T = (i: Int) => f(from + i)
      IArray(arrIn, offset + from, f1)
    }.ensuring(res => res.size == until - from && 
                      res.f == ((i:Int) => this.f(wrapping(from + i))))


  object IArray:
    @extern @pure
    def tabulateBigInt(size: Int)(f: Int => BigInt): IArray[BigInt] = {
      IArray(InArray.tabulateBigInt(size)(f), 0, f)
    }.ensuring(res => res.size == size && res.f == f)

  end IArray

  private[IArrayExample]
  def f(i: Int): BigInt = {
    if i == 0 then BigInt(0)
    else if i == 1 then BigInt(1)
    else BigInt(42)
  }

  private[IArrayExample]
  def testIArray: Unit = {
    val iarr = IArray.tabulateBigInt(5)(f)
    assert(iarr(0) == BigInt(0))    
    assert(iarr(1) == BigInt(1))
    assert(iarr(2) == BigInt(42))
    assert(iarr(3) == BigInt(42))  
  }

end IArrayExample