package com.ziplex.lexer

import scala.compiletime.uninitialized
import stainless.annotation.*
import stainless.lang.StaticChecks.*
import stainless.lang.{ghost => ghostExpr, *}
import stainless.collection.{List, Cons, Nil}
object IArrays: 
 
  case class IArrayChar private (@ghost list: List[Char]):
    require(list.size <= Int.MaxValue)

    @ignore
    var _arr: Array[Char] = uninitialized
    @ignore
    var _offset: Int = uninitialized
    @ignore
    var _size: BigInt = uninitialized    
    @ignore
    var default: Char = uninitialized

    @pure @extern 
    def size: BigInt = {
      _size
    }.ensuring(_ == list.size)  

    @pure @extern 
    def isize: Int = {
      _size.toInt
    }.ensuring(_ == list.isize) 

    @pure @extern 
    def apply(i: BigInt): Char = {
      require(0 <= i && i < size)
      _arr(_offset + i.toInt)
    }.ensuring(_ == list.apply(i))

    @pure 
    def efficientList(from: BigInt = this.size, acc: List[Char] = Nil()): List[Char] = {
      require(0 <= from && from <= this.size)
      require(acc == this.list.drop(from))
      decreases(from)
      if from == 0 then 
        acc
      else
        ghostExpr(IArrays.lemmaDropAddIMinusOne(this.list, from))
        ghostExpr(IArrays.lemmaConcatAssociativity(list.take(from - 1), List(this.apply(from - 1)), acc))
        ghostExpr(IArrays.lemmaTakeAddIMinusOne(this.list, from))
        
        efficientList(from - 1, Cons(this.apply(from - 1), acc))

    }.ensuring(res => res == list.take(from) ++ acc)

    @pure @extern
    def slice(from: BigInt, until: BigInt): IArrayChar = {
      require(0 <= from && from <= until && until <= size)
      @ghost val newList = list.slice(from, until)
      val res = IArrayChar(newList)
      res._arr = this._arr // _arr is never mutated
      res._offset = from.toInt
      res._size = until - from
      res
    }.ensuring(_ == IArrayChar(list.slice(from, until)))

    @pure @extern
    def concat(other: IArrayChar): IArrayChar = {
      require(this.size + other.size <= Int.MaxValue)
      @ghost val list = this.list ++ other.list
      val res = IArrayChar(list)
      val newArr = new Array[Char](this.size.toInt + other.size.toInt)
      java.lang.System.arraycopy(this._arr, this._offset, newArr, 0, this._size.toInt)
      java.lang.System.arraycopy(other._arr, other._offset, newArr, this.size.toInt, other.size.toInt)
      res._arr = newArr
      res._offset = 0
      res._size = this.size + other.size
      res
    }.ensuring(_ == IArrayChar(this.list ++ other.list))

    @pure @extern
    def append(x: Char): IArrayChar = {
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
    def contains(x: Char): Boolean = {
      var found = false
      var i: BigInt = BigInt(this._offset)
      val endI: BigInt = i + this._size
      while i < endI && !found do
        if apply(i) == x then found = true
        i += 1
      found
    }.ensuring(_ == list.contains(x))

    @pure @extern
    def forall(p: Char => Boolean): Boolean = {
      var res = true
      var i: BigInt = BigInt(this._offset)
      val endI: BigInt = i + this._size
      while i < endI && res do
        if !p(apply(i)) then res = false
        i += 1
      res
    }.ensuring(_ == list.forall(p))
    
    @pure @extern
    def exists(p: Char => Boolean): Boolean = {
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
    def filter(p: Char => Boolean): IArrayChar = {
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
    def last: Char = {
      require(this.size > 0)
      this._arr(this._offset.toInt + this._size.toInt - 1)
    }.ensuring(_ == this.list.last)
    
  object IArrayChar:
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
  
  end IArrayChar

  @ghost @opaque @pure @inlineOnce
  def lemmaConcatAssociativity[B](l1: List[B], l2: List[B], l3: List[B]): Unit = {
    decreases(l1)
    l1 match 
      case Cons(hd, tl) => lemmaConcatAssociativity(tl, l2, l3)
      case Nil() => ()
  }.ensuring (_ => (l1 ++ l2) ++ l3 == l1 ++ (l2 ++ l3))

  @ghost @opaque @pure @inlineOnce
  def lemmaDropAddIMinusOne[B](l: List[B], i: BigInt): Unit = {
    require(0 < i && i <= l.size)
    l match
      case Cons(hd, tl) if i == 1 => ()
      case Cons(hd, tl) => lemmaDropAddIMinusOne(tl, i - 1)
      case Nil() => ()

  }.ensuring(_ => l.drop(i - 1) == Cons(l.apply(i - 1), l.drop(i)) )

  // assert((list.take(from - 1) ++ List(this.apply(from - 1))) == list.take(from))
  @ghost @opaque @pure @inlineOnce
  def lemmaTakeAddIMinusOne[B](l: List[B], i: BigInt): Unit = {
    require(0 < i && i <= l.size)
    l match
      case Cons(hd, tl) if i == 1 => ()
      case Cons(hd, tl) => lemmaTakeAddIMinusOne(tl, i - 1)
      case Nil() => ()

  }.ensuring(_ => l.take(i - 1) ++ List(l.apply(i - 1)) == l.take(i))

end IArrays