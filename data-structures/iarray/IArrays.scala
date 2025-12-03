import scala.compiletime.uninitialized
import stainless.annotation.*
import stainless.lang.StaticChecks.*
import stainless.lang.*
import stainless.collection.{List, Cons, Nil}
object IArrays: 
 
  case class IArray[T <: AnyRef] private (@ghost list: List[T]):
    require(list.size <= Int.MaxValue)

    @ignore
    var _arr: Array[T] = uninitialized
    @ignore
    var _offset: Int = uninitialized
    @ignore
    var _size: BigInt = uninitialized    
    @ignore
    var default: T = uninitialized

    @pure @extern 
    def size: BigInt = {
      _size
    }.ensuring(_ == list.size)  

    @pure @extern 
    def isize: Int = {
      _size.toInt
    }.ensuring(_ == list.isize) 

    @pure @extern 
    def apply(i: BigInt): T = {
      require(0 <= i && i < size)
      _arr(_offset + i.toInt)
    }.ensuring(_ == list.apply(i))

    @pure @extern
    def slice(from: BigInt, until: BigInt): IArray[T] = {
      require(0 <= from && from <= until && until <= size)
      val res = IArray(list.slice(from, until))
      res._arr = this._arr // _arr is never mutated
      res._offset = from.toInt
      res._size = until - from
      res
    }.ensuring(_ == IArray(list.slice(from, until)))

    @pure @extern
    def concat(other: IArray[T]): IArray[T] = {
      require(this.size + other.size <= Int.MaxValue)
      @ghost val list = this.list ++ other.list
      val res = IArray(list)
      val newArr = new Array[AnyRef](this.size.toInt + other.size.toInt)
      java.lang.System.arraycopy(this._arr, this._offset, newArr, 0, this._size.toInt)
      java.lang.System.arraycopy(other._arr, other._offset, newArr, this.size.toInt, other.size.toInt)
      res._arr = newArr.asInstanceOf[Array[T]]
      res._offset = 0
      res._size = this.size + other.size
      res
    }.ensuring(_ == IArray(this.list ++ other.list))

    @pure @extern
    def append(x: T): IArray[T] = {
      require(this.size + 1 <= Int.MaxValue)
      @ghost val list = this.list :+ x
      val res = IArray(list)

      if this._offset + this._size < this._arr.length then
        // there's space at the end of the array
        res._arr = this._arr
        res._arr((this.size).toInt) = x
        res._offset = this._offset
        res._size = this.size + 1
        res
      else
        res._arr = new Array[AnyRef](this.size.toInt + 1).asInstanceOf[Array[T]]
        java.lang.System.arraycopy(this._arr, this._offset, res._arr, 0, this._size.toInt)
        res._arr(this.size.toInt) = x
        res._offset = 0

      res._size = this.size + 1
      res
    }.ensuring(_ == IArray(this.list :+ x))

    @pure @extern
    def contains(x: T): Boolean = {
      var found = false
      var i: BigInt = BigInt(this._offset)
      val endI: BigInt = i + this._size
      while i < endI && !found do
        if apply(i) == x then found = true
        i += 1
      found
    }.ensuring(_ == list.contains(x))

    @pure @extern
    def forall(p: T => Boolean): Boolean = {
      var res = true
      var i: BigInt = BigInt(this._offset)
      val endI: BigInt = i + this._size
      while i < endI && res do
        if !p(apply(i)) then res = false
        i += 1
      res
    }.ensuring(_ == list.forall(p))
    
    @pure @extern
    def exists(p: T => Boolean): Boolean = {
      var res = false
      var i: BigInt = BigInt(this._offset)
      val endI: BigInt = i + this._size
      while i < endI && !res do
        if p(apply(i)) then res = true
        i += 1
      res
    }.ensuring(_ == list.exists(p))

    @pure @extern
    def map[B <: AnyRef](f: T => B): IArray[B] = {
      @ghost val list = this.list.map(f)
      val res = IArray(list)
      res._arr = new Array[AnyRef](this._size.toInt).asInstanceOf[Array[B]]
      var i: BigInt = 0
      while i < this.size do
        res._arr(i.toInt) = f(this.apply(i))
        i += 1
      res._offset = 0
      res._size = this._size
      res
    }.ensuring(_ == IArray(this.list.map(f)))

    @pure @extern
    def filter(p: T => Boolean): IArray[T] = {
      @ghost val list = this.list.filter(p)
      val res = IArray(list)
      val toKeep = new Array[Boolean](this._size.toInt)
      var count: BigInt = 0
      var i: BigInt = 0
      while i < this._size do
        if p(this.apply(i)) then
          toKeep(i.toInt) = true
          count += 1
        else toKeep(i.toInt) = false
        i += 1
      res._arr = new Array[AnyRef](count.toInt).asInstanceOf[Array[T]]
      var j: BigInt = 0
      i = 0
      while i < this._size do
        if toKeep(i.toInt) then
          res._arr(j.toInt) = this.apply(i)
          j += 1
        i += 1
      res._offset = 0
      res._size = count
      res
    }.ensuring(_ == IArray(this.list.filter(p)))

    @pure @extern
    def last: T = {
      require(this.size > 0)
      this._arr(this._offset.toInt + this._size.toInt - 1)
    }.ensuring(_ == this.list.last)
    
  object IArray:
    @pure @extern
    def empty[T <: AnyRef](): IArray[T] = {
      val res = IArray[T](Nil())
      res._arr = new Array[AnyRef](0).asInstanceOf[Array[T]]
      res._offset = 0
      res._size = 0
      res
    }.ensuring(_ == IArray[T](Nil()))
    
    @pure @extern
    def fill[T <: AnyRef](n: BigInt)(x: T): IArray[T] = {
      require(0 < n && n <= Int.MaxValue)
      val res = IArray(List.fill(n)(x))      
      res._arr = Array.fill[AnyRef](n.toInt)(x).asInstanceOf[Array[T]]
      res._offset = 0
      res._size = n
      res      
    }.ensuring(_ == IArray(List.fill(n)(x)))
    
    @ghost
    def range(from: BigInt, until: BigInt): List[BigInt] = {
      require(0 <= from && from <= until && until <= Int.MaxValue)
      decreases(until - from)
      if(until <= from) stainless.collection.Nil[BigInt]() 
      else 
        val tl = 
          if from == Int.MaxValue then stainless.collection.Nil[BigInt]() 
          else range(from + 1, until)
        Cons(from, tl)
    }.ensuring(_.size == until - from)

    @pure @extern
    def tabulate[T <: AnyRef](n: BigInt)(f: BigInt => T): IArray[T] = {
      require(0 < n && n <= Int.MaxValue)
      @ghost val list = range(0, n).map(f)
      val res: IArray[T] = IArray(list)
      res._arr = Array.tabulate[AnyRef](n.toInt)(i => f(BigInt(i))).asInstanceOf[Array[T]]
      res._offset = 0
      res._size = n
      res
    }.ensuring(_ == IArray(range(0, n).map(f)))

  @main @extern
  def test: Unit =
    val t = IArray.tabulate(100)(i => i*(i+1))
    println(t(10))
    println(t(5))
    println(t(1))
    val t1 = t.slice(10, 17)
    println(f"t1.size = ${t1.size}")
    println(t1(0))

end IArrays