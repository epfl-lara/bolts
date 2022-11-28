import ScalaList._

object UseList:
  def listOfNils(n: Int): List[Nil.type] =
    if n <= 0 then Nil
    else Nil :: listOfNils(n - 1)

  def listOfCons(n: Int): List[List[Int]] =
    if n <= 0 then Nil
    else Cons(42, Nil) :: listOfCons(n-1)

  def zipWith[A,B,C](f: (A,B) => C)(l1: List[A], l2: List[B]): List[C] = {
    require(l1.length == l2.length && l1.length < Int.MaxValue)
    (l1, l2) match
      case (Nil, Nil) => Nil
      case (Cons(a,as), Cons(b,bs)) => Cons[C](f(a,b), zipWith(f)(as, bs))
  }

end UseList
