import stainless.lang._
import stainless.collection._ 
object Diffs {
  def undiff(l: List[Int]): List[Int] =
    l.scanLeft(0)(_ + _).tail
  def diffs(l: List[Int]): List[Int] = {    
    l match {
      case Nil() => l
      case Cons(_,Nil()) => l
      case Cons(h, t) =>  
        diffs(t) match {
          case Cons(h1, t1) => h :: (h1 - h) :: t1
        }
    }
  } ensuring (undiff(_) == l)
} 
