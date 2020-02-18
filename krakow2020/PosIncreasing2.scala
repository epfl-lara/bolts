import stainless.lang._
import stainless.collection._ 
object Increasing {
  def increasing(l: List[Int]): Boolean =
    l match {
      case Nil() => true
      case x :: Nil() => 0 <= x
      case x1 :: x2 :: xs =>
        0 <= x1 && x1 <= x2 && increasing(x2::xs)
    }
  def diffs(l: List[Int]): List[Int] = {
    require(increasing(l))
    l match {
      case Nil() => l
      case _ :: Nil() => l
      case h :: t =>  
        diffs(t) match {
          case h1 :: t1 => h :: (h1 - h) :: t1
        }
    }
  }
} 
