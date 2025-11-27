import scala.compiletime.uninitialized
import stainless.annotation.*
import stainless.lang.StaticChecks.*
import stainless.lang.*
import stainless.collection.{List, Cons, Nil}
object IArrays: 
 
  case class IArray[T <: AnyRef] private (@ghost list: List[T]):
    @ignore
    var _arr: Array[T] = uninitialized
    @ignore
    var _offset: Int = uninitialized
    @ignore
    var _size: Int = uninitialized    
    @ignore
    var default: T = uninitialized

    @pure @extern 
    def size: Int = {
      _size
    }.ensuring(_ == list.isize)  

    @pure @extern 
    def apply(i: Int): T = {
      require(0 <= i && i < size)
      _arr(_offset + i)
    }.ensuring(_ == list.iapply(i))

    @pure @extern
    def slice(from: Int, until: Int): IArray[T] = {
      require(0 <= from && from <= until && until <= size)
      val res = IArray(list.slice(from, until))
      res._arr = this._arr // _arr is never mutated
      res._offset = from
      res._size = until - from
      res
    }.ensuring(_ == IArray(list.islice(from, until)))

    @pure @extern
    def concat(other: IArray[T]): IArray[T] = {
      @ghost val list = this.list ++ other.list
      val res = IArray(list)
      res._arr = (this._arr.slice(this._offset, this._offset + this._size).asInstanceOf[Array[AnyRef]] ++ 
                 other._arr.slice(other._offset, other._offset + other._size).asInstanceOf[Array[AnyRef]]).asInstanceOf[Array[T]]
      res._offset = 0
      res._size = this.size + other.size
      res
    }.ensuring(_ == IArray(this.list ++ other.list))
    
  object IArray:
    @pure @extern
    def fill[T <: AnyRef](n: Int)(x: T): IArray[T] = {
      require(0 < n)
      val res = IArray(List.ifill(n)(x))      
      res._arr = Array.fill[AnyRef](n)(x).asInstanceOf[Array[T]]
      res._offset = 0
      res._size = n
      res      
    }.ensuring(_ == IArray(List.ifill(n)(x)))
    
    def range(from: Int, until: Int): List[Int] = {
      require(0 <= from && from <= until)
      decreases(until - from)
      if(until <= from) stainless.collection.Nil[Int]() 
      else 
        val tl = 
          if from == Int.MaxValue then stainless.collection.Nil[Int]() 
          else range(from + 1, until)
        Cons(from, tl)
    }.ensuring(_.isize == until - from)

    @pure @extern
    def tabulate[T <: AnyRef](n: Int)(f: Int => T): IArray[T] = {
      require(0 < n)
      val list = range(0, n).map(f)
      val res = IArray(list)
      res._arr = list.toScala.toArray[AnyRef].asInstanceOf[Array[T]]
      res._offset = 0
      res._size = n
      res
    }.ensuring(_ == IArray(range(0, n).map(f)))

  @main @extern
  def test: Unit =
    val t = IArray.tabulate(100)(i => BigInt(i*(i+1)))
    println(t(10))
    println(t(5))
    println(t(1))
    val t1 = t.slice(10, 17)
    println(f"t1.size = ${t1.size}")
    println(t1(0))

end IArrays