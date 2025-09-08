import stainless.lang.Set
object FirstTutorial:
  def rmax(x: BigInt, y: BigInt) =
    if (x <= y) y else x 

  def max(x: BigInt, y: BigInt): BigInt = {
    val d = x - y
    if (d > 0) x
    else y
  }.ensuring: res =>
    res == rmax(x,y) &&
    (x <= res && y <= res && (res == x || res == y))

  def max_lemma(x: BigInt, y: BigInt, z: BigInt): Unit = {
  }.ensuring:
    max(x,x) == x &&
    max(x,y) == max(y,x) &&
    max(x,max(y,z)) == max(max(x,y), z) &&
    max(x,y) + z == max(x + z, y + z)

  def maxi(x: Int, y: Int): Int = {
    require(0 <= x && 0 <= y)
    val d = x - y
    if (d > 0) x
    else y
  }.ensuring: res =>
    x <= res && y <= res && (res == x || res == y)

  sealed abstract class List
  case object Nil extends List
  case class Cons(head: BigInt, tail: List) extends List

  val exampleList = Cons(5, Cons(2, Cons(7, Nil)))

  def size(l: List) : BigInt = {
    l match
      case Nil => BigInt(0)
      case Cons(x, rest) => 1 + size(rest)
  }.ensuring(_ >= 0)


  def isize(l: List) : Int = {
    l match
      case Nil => 0
      case Cons(x, rest) =>
        val rSize = isize(rest)
        if (rSize == Int.MaxValue) rSize
        else 1 + rSize  
  }.ensuring(_ >= 0)

  def isSorted(l : List) : Boolean = {
    l match
      case Nil => true
      case Cons(_,Nil) => true
      case Cons(x1, Cons(x2, rest)) =>
        x1 < x2 && isSorted(Cons(x2,rest))
  }

  def sInsert1(x : BigInt, l : List) : List = {
    require(isSorted(l))
    l match
      case Nil => Cons(x, Nil)
      case Cons(e, rest) if (x == e) => l
      case Cons(e, rest) if (x < e) => Cons(x, Cons(e,rest))
      case Cons(e, rest) if (x > e) => Cons(e, sInsert1(x,rest))
  }.ensuring(isSorted(_))

  def llmInsert(x : BigInt, l : List) : List = {
    require(isSorted(l))
    Nil
  }.ensuring(isSorted(_))

  def content(l: List): Set[BigInt] = {
    l match
      case Nil => Set()
      case Cons(i, t) => content(t) + i
  }

  def sInsert2(x : BigInt, l : List) : List = {
    require(isSorted(l))
    l match
      case Nil => Cons(x, Nil)
      case Cons(e, rest) if (x == e) => l
      case Cons(e, rest) if (x < e) => Cons(x, Cons(e,rest))
      case Cons(e, rest) if (x > e) => Cons(e, sInsert2(x,rest))
  }.ensuring: res =>
    isSorted(res) &&
    content(res) == content(l) + x &&
    size(l) <= size(res) && size(res) <= size(l) + 1

end FirstTutorial