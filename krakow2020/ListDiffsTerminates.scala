import stainless.lang._
import stainless.collection._ 
object Diffs {
  def diffs(l: List[Int]): List[Int] = {
    decreases(l) // inferred automatically
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
