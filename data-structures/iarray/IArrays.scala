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
      val newArr = new Array[AnyRef](this.size + other.size)
      java.lang.System.arraycopy(this._arr, this._offset, newArr, 0, this._size)
      java.lang.System.arraycopy(other._arr, other._offset, newArr, this.size, other.size)
      res._arr = newArr.asInstanceOf[Array[T]]
      res._offset = 0
      res._size = this.size + other.size
      res
    }.ensuring(_ == IArray(this.list ++ other.list))

    @pure @extern
    def contains(x: T): Boolean = {
      var found = false
      var i = this._offset
      while i < this._offset + this._size && !found do
        if apply(i) == x then found = true
        i += 1
      found
    }.ensuring(_ == list.contains(x))

    @pure @extern
    def forall(p: T => Boolean): Boolean = {
      var res = true
      var i = this._offset
      while i < this._offset + this._size && res do
        if !p(apply(i)) then res = false
        i += 1
      res
    }.ensuring(_ == list.forall(p))
    
    @pure @extern
    def exists(p: T => Boolean): Boolean = {
      var res = false
      var i = this._offset
      while i < this._offset + this._size && !res do
        if p(apply(i)) then res = true
        i += 1
      res
    }.ensuring(_ == list.exists(p))

    @pure @extern
    def map[B <: AnyRef](f: T => B): IArray[B] = {
      @ghost val list = this.list.map(f)
      val res = IArray(list)
      res._arr = new Array[AnyRef](this.size).asInstanceOf[Array[B]]
      var i = 0
      while i < this.size do
        res._arr(i) = f(this.apply(i))
        i += 1
      res._offset = 0
      res._size = this.size
      res
    }.ensuring(_ == IArray(this.list.map(f)))

    @pure @extern
    def filter(p: T => Boolean): IArray[T] = {
      @ghost val list = this.list.filter(p)
      val res = IArray(list)
      val toKeep = new Array[Boolean](this.size)
      var count = 0
      var i = 0
      while i < this.size do
        if p(this.apply(i)) then
          toKeep(i) = true
          count += 1
        else toKeep(i) = false
        i += 1
      res._arr = new Array[AnyRef](count).asInstanceOf[Array[T]]
      var j = 0
      i = 0
      while i < this.size do
        if toKeep(i) then
          res._arr(j) = this.apply(i)
          j += 1
        i += 1
      res._offset = 0
      res._size = count
      res
    }.ensuring(_ == IArray(this.list.filter(p)))

    @pure @extern
    def last: T = {
      require(this.size > 0)
      this._arr(this._offset + this._size - 1)
    }.ensuring(_ == this.list.last)
    
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
    
    @ghost
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
      @ghost val list = range(0, n).map(f)
      val res = IArray(list)
      res._arr = Array.tabulate[AnyRef](n)(i => f(i)).asInstanceOf[Array[T]]
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