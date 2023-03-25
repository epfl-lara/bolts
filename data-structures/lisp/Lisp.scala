import stainless.annotation._
import stainless.lang._
import stainless.io._

object Lisp {
  sealed abstract class Obj
  case class ONil() extends Obj
  case class OString(v: String) extends Obj
  case class OInt(v: BigInt) extends Obj
  case class OCons(car: Obj, cdr: Obj) extends Obj

  val nil = ONil()

  def cons(x: Obj, y: Obj) = OCons(x,y)
  
  def endp(x: Obj): Boolean =
    !x.isInstanceOf[OCons]
    
  def car(x: Obj): Obj =
    require(x.isInstanceOf[OCons])
    x.asInstanceOf[OCons].car
  
  def cdr(x: Obj): Obj = 
    require(x.isInstanceOf[OCons])
    x.asInstanceOf[OCons].cdr

  // if used to LISP, use conversion functions
  def i2o(x: BigInt): Obj = OInt(x)
  def o2i(x: Obj): BigInt =
    require(x.isInstanceOf[OInt])
    x.asInstanceOf[OInt].v
  
  def append(x: Obj, y: Obj): Obj = {
    if endp(x) then y
    else cons(car(x),
              append(cdr(x),y))
  }.ensuring(len(_) == len(x) + len(y))

  def len(x: Obj): BigInt = {
    if endp(x) then BigInt(0)
    else 1 + len(cdr(x))
  }.ensuring(n => n >= 0)

  def reverse(x: Obj): Obj = {
    if endp(x) then x
    else append(reverse(cdr(x)),
                cons(car(x),nil))
  }.ensuring(len(_) == len(x))
           
}
