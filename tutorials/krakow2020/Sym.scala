import stainless.lang._
import stainless.collection._ 
object Diffs {
  def undiff(l: List[BigInt]): List[BigInt] =
    l.scanLeft(BigInt(0))(_ + _).tail
  def diffs(l: List[BigInt]): List[BigInt] = {    
    l match {
      case Nil() => l
      case _ :: Nil() => l
      case h :: t =>  
        diffs(t) match {
          case h1 :: t1 => h :: (h1 - h) :: t1
        }
    }
  }.ensuring(undiff(_) == l)

  def symTest1(x1: BigInt, x2: BigInt,
               x3: BigInt, x4: BigInt): Boolean = {
    diffs(List(x1,x2,x3,x4)) ==
          List(x1, x2 - x1, x3 - x2, x4 - x3)
  }.holds
  // same as.ensuring(res => res==true)
} 
