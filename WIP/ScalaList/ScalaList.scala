object ScalaList:
  sealed abstract class List[+A]:
    def :: [B >: A](elem: B): List[B] =  Cons(elem, this)
    def map[B](f: A => B): List[B] =
      this match
        case Nil => Nil
        case Cons(a, as) => f(a) :: as.map(f)

    def ++[B >: A](that: List[B]): List[B] =
      this match
        case Nil => that
        case Cons(a, as) => a :: (as ++ that)

    def tail: List[A] =
      require(this != Nil)
      this match
        case Cons(a, as) => as

    def head: A =
      require(this != Nil)
      this match
        case Cons(a, as) => a

    def length: Long = {
      this match
        case Nil => 0
        case Cons(h, t) =>
          val tLen = t.length
          if tLen == Int.MaxValue then tLen
          else 1 + tLen
    }.ensuring(res => 0 <= res && res <= Int.MaxValue)

  end List

  case object Nil extends List[Nothing]
  final case class Cons[+A](first: A, next: List[A]) extends List[A]

end ScalaList
