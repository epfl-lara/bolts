import stainless.lang._
import stainless.collection._
import stainless.annotation._
import stainless.proof._

object DiffsEquiv {
  def diffs(l: List[Int]): List[Int] = {    
    l match {
      case Nil() => l
        case _ :: Nil() => l
      case h :: t =>  
	diffs(t) match {
	  case h1 :: t1 => h :: (h1 - h) :: t1
	}
    }
  }
  
  def diffs2(l: List[Int]): List[Int] = {
    l match {
      case Nil() => l
      case h :: t =>
        h :: l.zip(t).map({ case (h1,h2) => h2 - h1})
    }
  }
  @induct
  def equiv(l: List[Int]): Boolean = {
    diffs(l) == diffs2(l)
  }..holds
}
