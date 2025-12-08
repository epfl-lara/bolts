import scala.compiletime.uninitialized
import stainless.annotation.*
import stainless.lang.StaticChecks.*
import stainless.lang.*
import stainless.collection.{List, Cons, Nil}

object IArrays: 

  sealed trait Factory[T]:
    def singleton(x: T): IArray[T]
    def empty(): IArray[T]
    def fill(n: BigInt)(x: T): IArray[T] = {
      require(0 < n && n <= Int.MaxValue)
      ??? : IArray[T]
    }

  case object CharFactory extends Factory[Char]:
    def singleton(x: Char): IArray[Char] = IArrayCharObj.fill(1)(x)
    def empty(): IArray[Char] = IArrayCharObj.empty()
    override def fill(n: BigInt)(x: Char): IArray[Char] = {
      require(0 < n && n <= Int.MaxValue)
      IArrayCharObj.fill(n)(x)
    }

  case object IntFactory extends Factory[Int]:
    def singleton(x: Int): IArray[Int] = IArrayIntObj.fill(1)(x)
    def empty(): IArray[Int] = IArrayIntObj.empty()
    override def fill(n: BigInt)(x: Int): IArray[Int] = {
      require(0 < n && n <= Int.MaxValue)
      IArrayIntObj.fill(n)(x)
    }

  case class AnyRefFactory[T <: AnyRef]() extends Factory[T]:
    def singleton(x: T): IArray[T] = IArrayAnyRefObj.fill(1)(x)
    def empty(): IArray[T] = IArrayAnyRefObj.empty[T]()
    override def fill(n: BigInt)(x: T): IArray[T] = {
      require(0 < n && n <= Int.MaxValue)
      IArrayAnyRefObj.fill(n)(x)
      }


  sealed trait IArray[T]:
    @ghost def list: List[T]

    @pure @extern @ignore
    def size: BigInt = {
      ??? : BigInt
    }.ensuring(_ == list.size)  

    @pure @extern @ignore
    def isize: Int = {
      ??? : Int
    }.ensuring(_ == list.isize) 

    @pure @extern @ignore
    def apply(i: BigInt): T = {
      require(0 <= i && i < size)
      ??? : T
    }.ensuring(_ == list.apply(i))

    @pure @extern @ignore
    def slice(from: BigInt, until: BigInt): IArray[T] = {
      require(0 <= from && from <= until && until <= size)
      ??? : IArray[T]
    }.ensuring(_.list == list.slice(from, until))

    @pure @extern @ignore
    def concat(other: IArray[T]): IArray[T] = {
      require(getTypeIndicator(this) == getTypeIndicator(other))
      require(this.size + other.size <= Int.MaxValue)
      ??? : IArray[T]
    }.ensuring(_.list == this.list ++ other.list)

    @pure @extern @ignore
    def append(x: T): IArray[T] = {
      require(this.size + 1 <= Int.MaxValue)
      ??? : IArray[T]
    }.ensuring(_.list == this.list :+ x)

    @pure @extern @ignore
    def contains(x: T): Boolean = {
      ??? : Boolean
    }.ensuring(_ == list.contains(x))

    @pure @extern @ignore
    def forall(p: T => Boolean): Boolean = {
      ??? : Boolean
    }.ensuring(_ == list.forall(p))
    
    @pure @extern @ignore
    def exists(p: T => Boolean): Boolean = {
      ??? : Boolean
    }.ensuring(_ == list.exists(p))

    // def map[B <: AnyRef](f: T => B): IArrayAnyRef[B] = {
    //   IArrayAnyRef[B]
    // }.ensuring(_ == IArrayAnyRef(this.list.map(f)))

    @pure @extern @ignore
    def filter(p: T => Boolean): IArray[T] = {
      ??? : IArray[T]
    }.ensuring(_.list == this.list.filter(p))

    @pure @extern @ignore
    def last: T = {
      require(this.size > 0)
      ??? : T
    }.ensuring(_ == this.list.last)

  end IArray

  def getTypeIndicator[T](a: IArray[T]): BigInt = {
    a match
      case IArrayAnyRef(_) => 0
      case IArrayChar(_) => 1
      case IArrayInt(_) => 2
    
  }
 
  case class IArrayAnyRef[T <: AnyRef](@ghost private val innerList: List[T]) extends IArray[T]:
    require(innerList.size <= Int.MaxValue)

    @ignore
    var _arr: Array[T] = uninitialized
    @ignore
    var _offset: Int = uninitialized
    @ignore
    var _size: BigInt = uninitialized    
    @ignore
    var default: T = uninitialized

    @ghost
    override def list = this.innerList

    @pure @extern 
    override def size: BigInt = {
      _size
    }.ensuring(_ == list.size)  

    @pure @extern 
    override def isize: Int = {
      _size.toInt
    }.ensuring(_ == list.isize) 

    @pure @extern 
    override def apply(i: BigInt): T = {
      require(0 <= i && i < size)
      _arr(_offset + i.toInt)
    }.ensuring(_ == list.apply(i))

    @pure @extern
    override def slice(from: BigInt, until: BigInt): IArrayAnyRef[T] = {
      require(0 <= from && from <= until && until <= size)
      val res = IArrayAnyRef(list.slice(from, until))
      res._arr = this._arr // _arr is never mutated
      res._offset = from.toInt
      res._size = until - from
      res
    }.ensuring(_ == IArrayAnyRef(list.slice(from, until)))

    @pure @extern
    override def concat(other: IArray[T]): IArray[T] = {
      require(getTypeIndicator(this) == getTypeIndicator(other))
      require(this.size + other.size <= Int.MaxValue)
      @ghost val list = this.list ++ other.list
      val res = IArrayAnyRef(list)
      val newArr = new Array[AnyRef](this.size.toInt + other.size.toInt)
      java.lang.System.arraycopy(this._arr, this._offset, newArr, 0, this._size.toInt)
      java.lang.System.arraycopy(other.asInstanceOf[IArrayAnyRef[T]]._arr, other.asInstanceOf[IArrayAnyRef[T]]._offset, newArr, this.size.toInt, other.asInstanceOf[IArrayAnyRef[T]].size.toInt)
      res._arr = newArr.asInstanceOf[Array[T]]
      res._offset = 0
      res._size = this.size + other.size
      res.asInstanceOf[IArray[T]]
    }.ensuring(_ == IArrayAnyRef(this.list ++ other.list))

    @pure @extern
    override def append(x: T): IArrayAnyRef[T] = {
      require(this.size + 1 <= Int.MaxValue)
      @ghost val list = this.list :+ x
      val res = IArrayAnyRef(list)

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
    }.ensuring(_ == IArrayAnyRef(this.list :+ x))

    @pure @extern
    override def contains(x: T): Boolean = {
      var found = false
      var i: BigInt = BigInt(this._offset)
      val endI: BigInt = i + this._size
      while i < endI && !found do
        if apply(i) == x then found = true
        i += 1
      found
    }.ensuring(_ == list.contains(x))

    @pure @extern
    override def forall(p: T => Boolean): Boolean = {
      var res = true
      var i: BigInt = BigInt(this._offset)
      val endI: BigInt = i + this._size
      while i < endI && res do
        if !p(apply(i)) then res = false
        i += 1
      res
    }.ensuring(_ == list.forall(p))
    
    @pure @extern
    override def exists(p: T => Boolean): Boolean = {
      var res = false
      var i: BigInt = BigInt(this._offset)
      val endI: BigInt = i + this._size
      while i < endI && !res do
        if p(apply(i)) then res = true
        i += 1
      res
    }.ensuring(_ == list.exists(p))

    @pure @extern
    def map[B <: AnyRef](f: T => B): IArrayAnyRef[B] = {
      @ghost val list = this.list.map(f)
      val res = IArrayAnyRef(list)
      res._arr = new Array[AnyRef](this._size.toInt).asInstanceOf[Array[B]]
      var i: BigInt = 0
      while i < this.size do
        res._arr(i.toInt) = f(this.apply(i))
        i += 1
      res._offset = 0
      res._size = this._size
      res
    }.ensuring(_ == IArrayAnyRef(this.list.map(f)))

    @pure @extern
    override def filter(p: T => Boolean): IArrayAnyRef[T] = {
      @ghost val list = this.list.filter(p)
      val res = IArrayAnyRef(list)
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
    }.ensuring(_ == IArrayAnyRef(this.list.filter(p)))

    @pure @extern
    override def last: T = {
      require(this.size > 0)
      this._arr(this._offset.toInt + this._size.toInt - 1)
    }.ensuring(_ == this.list.last)
    
  object IArrayAnyRefObj:
    @pure @extern
    def empty[T <: AnyRef](): IArrayAnyRef[T] = {
      val res = IArrayAnyRef[T](Nil())
      res._arr = new Array[AnyRef](0).asInstanceOf[Array[T]]
      res._offset = 0
      res._size = 0
      res
    }.ensuring(_ == IArrayAnyRef[T](Nil()))
    
    @pure @extern
    def fill[T <: AnyRef](n: BigInt)(x: T): IArrayAnyRef[T] = {
      require(0 < n && n <= Int.MaxValue)
      val res = IArrayAnyRef(List.fill(n)(x))      
      res._arr = Array.fill[AnyRef](n.toInt)(x).asInstanceOf[Array[T]]
      res._offset = 0
      res._size = n
      res      
    }.ensuring(_ == IArrayAnyRef(List.fill(n)(x)))
    
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
    def tabulate[T <: AnyRef](n: BigInt)(f: BigInt => T): IArrayAnyRef[T] = {
      require(0 < n && n <= Int.MaxValue)
      @ghost val list = range(0, n).map(f)
      val res: IArrayAnyRef[T] = IArrayAnyRef(list)
      res._arr = Array.tabulate[AnyRef](n.toInt)(i => f(BigInt(i))).asInstanceOf[Array[T]]
      res._offset = 0
      res._size = n
      res
    }.ensuring(_ == IArrayAnyRef(range(0, n).map(f)))
  
  end IArrayAnyRefObj
  
  @main @extern
  def test: Unit =
    val t = IArrayAnyRefObj.tabulate(100)(i => i*(i+1))
    println(t(10))
    println(t(5))
    println(t(1))
    val t1 = t.slice(10, 17)
    println(f"t1.size = ${t1.size}")
    println(t1(0))

  case class IArrayChar (@ghost private val innerList: List[Char]) extends IArray[Char]:
    require(innerList.size <= Int.MaxValue)

    @ignore
    var _arr: Array[Char] = uninitialized
    @ignore
    var _offset: Int = uninitialized
    @ignore
    var _size: BigInt = uninitialized    
    @ignore
    var default: Char = uninitialized

    @ghost
    override def list = innerList

    @pure @extern 
    override def size: BigInt = {
      _size
    }.ensuring(_ == list.size)  

    @pure @extern 
    override def isize: Int = {
      _size.toInt
    }.ensuring(_ == list.isize) 

    @pure @extern 
    override def apply(i: BigInt): Char = {
      require(0 <= i && i < size)
      _arr(_offset + i.toInt)
    }.ensuring(_ == list.apply(i))

    @pure @extern
    override def slice(from: BigInt, until: BigInt): IArrayChar = {
      require(0 <= from && from <= until && until <= size)
      val res = IArrayChar(list.slice(from, until))
      res._arr = this._arr // _arr is never mutated
      res._offset = from.toInt
      res._size = until - from
      res
    }.ensuring(_ == IArrayChar(list.slice(from, until)))

    @pure @extern
    override def concat(other: IArray[Char]): IArray[Char] = {
      require(getTypeIndicator(this) == getTypeIndicator(other))
      require(this.size + other.size <= Int.MaxValue)
      @ghost val list = this.list ++ other.list
      val res = IArrayChar(list)
      val newArr = new Array[Char](this.size.toInt + other.size.toInt)
      java.lang.System.arraycopy(this._arr, this._offset, newArr, 0, this._size.toInt)
      java.lang.System.arraycopy(other.asInstanceOf[IArrayChar]._arr, other.asInstanceOf[IArrayChar]._offset, newArr, this.size.toInt, other.asInstanceOf[IArrayChar].size.toInt)
      res._arr = newArr
      res._offset = 0
      res._size = this.size + other.size
      res.asInstanceOf[IArray[Char]]
    }.ensuring(_ == IArrayChar(this.list ++ other.list))

    @pure @extern
    override def append(x: Char): IArrayChar = {
      require(this.size + 1 <= Int.MaxValue)
      @ghost val list = this.list :+ x
      val res = IArrayChar(list)

      if this._offset + this._size < this._arr.length then
        // there's space at the end of the array
        res._arr = this._arr
        res._arr((this.size).toInt) = x
        res._offset = this._offset
        res._size = this.size + 1
        res
      else
        res._arr = new Array[Char](this.size.toInt + 1)
        java.lang.System.arraycopy(this._arr, this._offset, res._arr, 0, this._size.toInt)
        res._arr(this.size.toInt) = x
        res._offset = 0

      res._size = this.size + 1
      res
    }.ensuring(_ == IArrayChar(this.list :+ x))

    @pure @extern
    override def contains(x: Char): Boolean = {
      var found = false
      var i: BigInt = BigInt(this._offset)
      val endI: BigInt = i + this._size
      while i < endI && !found do
        if apply(i) == x then found = true
        i += 1
      found
    }.ensuring(_ == list.contains(x))

    @pure @extern
    override def forall(p: Char => Boolean): Boolean = {
      var res = true
      var i: BigInt = BigInt(this._offset)
      val endI: BigInt = i + this._size
      while i < endI && res do
        if !p(apply(i)) then res = false
        i += 1
      res
    }.ensuring(_ == list.forall(p))
    
    @pure @extern
    override def exists(p: Char => Boolean): Boolean = {
      var res = false
      var i: BigInt = BigInt(this._offset)
      val endI: BigInt = i + this._size
      while i < endI && !res do
        if p(apply(i)) then res = true
        i += 1
      res
    }.ensuring(_ == list.exists(p))

    @pure @extern
    def map(f: Char => Char): IArrayChar = {
      @ghost val list = this.list.map(f)
      val res = IArrayChar(list)
      res._arr = new Array[Char](this._size.toInt)
      var i: BigInt = 0
      while i < this.size do
        res._arr(i.toInt) = f(this.apply(i))
        i += 1
      res._offset = 0
      res._size = this._size
      res
    }.ensuring(_ == IArrayChar(this.list.map(f)))

    @pure @extern
    override def filter(p: Char => Boolean): IArrayChar = {
      @ghost val list = this.list.filter(p)
      val res = IArrayChar(list)
      val toKeep = new Array[Boolean](this._size.toInt)
      var count: BigInt = 0
      var i: BigInt = 0
      while i < this._size do
        if p(this.apply(i)) then
          toKeep(i.toInt) = true
          count += 1
        else toKeep(i.toInt) = false
        i += 1
      res._arr = new Array[Char](count.toInt)
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
    }.ensuring(_ == IArrayChar(this.list.filter(p)))

    @pure @extern
    override def last: Char = {
      require(this.size > 0)
      this._arr(this._offset.toInt + this._size.toInt - 1)
    }.ensuring(_ == this.list.last)
  end IArrayChar
  object IArrayCharObj:
    @pure @extern
    def empty(): IArrayChar = {
      val res = IArrayChar(Nil())
      res._arr = new Array[Char](0)
      res._offset = 0
      res._size = 0
      res
    }.ensuring(_ == IArrayChar(Nil()))
    
    @pure @extern
    def fill(n: BigInt)(x: Char): IArrayChar = {
      require(0 < n && n <= Int.MaxValue)
      val res = IArrayChar(List.fill(n)(x))      
      res._arr = Array.fill[Char](n.toInt)(x)
      res._offset = 0
      res._size = n
      res      
    }.ensuring(_ == IArrayChar(List.fill(n)(x)))
    
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
    def tabulate(n: BigInt)(f: BigInt => Char): IArrayChar = {
      require(0 < n && n <= Int.MaxValue)
      @ghost val list = range(0, n).map(f)
      val res: IArrayChar = IArrayChar(list)
      res._arr = Array.tabulate[Char](n.toInt)(i => f(BigInt(i)))
      res._offset = 0
      res._size = n
      res
    }.ensuring(_ == IArrayChar(range(0, n).map(f)))
  end IArrayCharObj

  case class IArrayInt (@ghost private val innerList: List[Int]) extends IArray[Int]:
    require(innerList.size <= Int.MaxValue)

    @ignore
    var _arr: Array[Int] = uninitialized
    @ignore
    var _offset: Int = uninitialized
    @ignore
    var _size: BigInt = uninitialized    
    @ignore
    var default: Int = uninitialized

    @ghost
    override def list = innerList

    @pure @extern 
    override def size: BigInt = {
      _size
    }.ensuring(_ == list.size)  

    @pure @extern 
    override def isize: Int = {
      _size.toInt
    }.ensuring(_ == list.isize) 

    @pure @extern 
    override def apply(i: BigInt): Int = {
      require(0 <= i && i < size)
      _arr(_offset + i.toInt)
    }.ensuring(_ == list.apply(i))

    @pure @extern
    override def slice(from: BigInt, until: BigInt): IArrayInt = {
      require(0 <= from && from <= until && until <= size)
      val res = IArrayInt(list.slice(from, until))
      res._arr = this._arr // _arr is never mutated
      res._offset = from.toInt
      res._size = until - from
      res
    }.ensuring(_ == IArrayInt(list.slice(from, until)))

    @pure @extern
    override def concat(other: IArray[Int]): IArray[Int] = {
      require(getTypeIndicator(this) == getTypeIndicator(other))
      require(this.size + other.size <= Int.MaxValue)
      @ghost val list = this.list ++ other.list
      val res = IArrayInt(list)
      val newArr = new Array[Int](this.size.toInt + other.size.toInt)
      java.lang.System.arraycopy(this._arr, this._offset, newArr, 0, this._size.toInt)
      java.lang.System.arraycopy(other.asInstanceOf[IArrayInt]._arr, other.asInstanceOf[IArrayInt]._offset, newArr, this.size.toInt, other.asInstanceOf[IArrayInt].size.toInt)
      res._arr = newArr
      res._offset = 0
      res._size = this.size + other.size
      res.asInstanceOf[IArray[Int]]
    }.ensuring(_ == IArrayInt(this.list ++ other.list))

    @pure @extern
    override def append(x: Int): IArrayInt = {
      require(this.size + 1 <= Int.MaxValue)
      @ghost val list = this.list :+ x
      val res = IArrayInt(list)

      if this._offset + this._size < this._arr.length then
        // there's space at the end of the array
        res._arr = this._arr
        res._arr((this.size).toInt) = x
        res._offset = this._offset
        res._size = this.size + 1
        res
      else
        res._arr = new Array[Int](this.size.toInt + 1)
        java.lang.System.arraycopy(this._arr, this._offset, res._arr, 0, this._size.toInt)
        res._arr(this.size.toInt) = x
        res._offset = 0

      res._size = this.size + 1
      res
    }.ensuring(_ == IArrayInt(this.list :+ x))

    @pure @extern
    override def contains(x: Int): Boolean = {
      var found = false
      var i: BigInt = BigInt(this._offset)
      val endI: BigInt = i + this._size
      while i < endI && !found do
        if apply(i) == x then found = true
        i += 1
      found
    }.ensuring(_ == list.contains(x))

    @pure @extern
    override def forall(p: Int => Boolean): Boolean = {
      var res = true
      var i: BigInt = BigInt(this._offset)
      val endI: BigInt = i + this._size
      while i < endI && res do
        if !p(apply(i)) then res = false
        i += 1
      res
    }.ensuring(_ == list.forall(p))
    
    @pure @extern
    override def exists(p: Int => Boolean): Boolean = {
      var res = false
      var i: BigInt = BigInt(this._offset)
      val endI: BigInt = i + this._size
      while i < endI && !res do
        if p(apply(i)) then res = true
        i += 1
      res
    }.ensuring(_ == list.exists(p))

    @pure @extern
    def map(f: Int => Int): IArrayInt = {
      @ghost val list = this.list.map(f)
      val res = IArrayInt(list)
      res._arr = new Array[Int](this._size.toInt)
      var i: BigInt = 0
      while i < this.size do
        res._arr(i.toInt) = f(this.apply(i))
        i += 1
      res._offset = 0
      res._size = this._size
      res
    }.ensuring(_ == IArrayInt(this.list.map(f)))

    @pure @extern
    override def filter(p: Int => Boolean): IArrayInt = {
      @ghost val list = this.list.filter(p)
      val res = IArrayInt(list)
      val toKeep = new Array[Boolean](this._size.toInt)
      var count: BigInt = 0
      var i: BigInt = 0
      while i < this._size do
        if p(this.apply(i)) then
          toKeep(i.toInt) = true
          count += 1
        else toKeep(i.toInt) = false
        i += 1
      res._arr = new Array[Int](count.toInt)
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
    }.ensuring(_ == IArrayInt(this.list.filter(p)))

    @pure @extern
    override def last: Int = {
      require(this.size > 0)
      this._arr(this._offset.toInt + this._size.toInt - 1)
    }.ensuring(_ == this.list.last)

  end IArrayInt
  object IArrayIntObj:
    @pure @extern
    def empty(): IArrayInt = {
      val res = IArrayInt(Nil())
      res._arr = new Array[Int](0)
      res._offset = 0
      res._size = 0
      res
    }.ensuring(_ == IArrayInt(Nil()))
    
    @pure @extern
    def fill(n: BigInt)(x: Int): IArrayInt = {
      require(0 < n && n <= Int.MaxValue)
      val res = IArrayInt(List.fill(n)(x))      
      res._arr = Array.fill[Int](n.toInt)(x)
      res._offset = 0
      res._size = n
      res      
    }.ensuring(_ == IArrayInt(List.fill(n)(x)))
    
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
    def tabulate(n: BigInt)(f: BigInt => Int): IArrayInt = {
      require(0 < n && n <= Int.MaxValue)
      @ghost val list = range(0, n).map(f)
      val res: IArrayInt = IArrayInt(list)
      res._arr = Array.tabulate[Int](n.toInt)(i => f(BigInt(i)))
      res._offset = 0
      res._size = n
      res
    }.ensuring(_ == IArrayInt(range(0, n).map(f)))
  end IArrayIntObj

end IArrays