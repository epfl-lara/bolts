import stainless.collection._ 
object Diffs {
  def undiff(l: List[BigInt]): List[BigInt] =
    l.scanLeft(BigInt(0))(_ + _).tail

  def diffs(l: List[BigInt]): List[BigInt] = {
    l match {
      case Nil() => l
      case Cons(_,Nil()) => l
      case Cons(h1, Cons(h2, t)) => h1 :: h2 - h1 :: diffs(h2 :: t).tail
        // diffs(Cons(h2, t)) match {
        //   case Cons(_, t1) => Cons(h1, Cons(h2 - h1, t1))
        // }
    }
  } ensuring (undiff(_) == l)

  def test(x1: BigInt, x2: BigInt,
           x3: BigInt, x4: BigInt): Unit = {
  } ensuring(_ =>
    diffs(List(x1,x2,x3,x4)) ==
     List(x1, x2 - x1, x3 - x2, x4 - x3))
} 
