import stainless._
import stainless.proof._
import stainless.annotation._
import stainless.lang._

object Transform {
  sealed abstract class Expr
  case class Add(e1: Expr, e2: Expr) extends Expr
  case class Literal(i: BigInt) extends Expr

  trait Transformer {
    def apply(e: Expr): Option[Expr]

    @inline
    final def done(e:Expr) = apply(e)==None[Expr]()
  
    final def transformed(expr: Expr): Boolean = {
      done(expr) && (expr match {
        case Add(e1, e2) => transformed(e1) && transformed(e2)
        case Literal(_) => true })
    }

    @law
    def preserveAdd(expr: Expr): Boolean = {
      expr match {
        case Add(e1, e2) if transformed(e1) && transformed(e2) =>
          apply(expr) match {
            case Some(eT) => transformed(eT)
            case None() => true
          }
        case _ => true
      }
    }

    @law
    def preserveLiteral(expr:Expr): Boolean = {
      expr match {
        case Literal(_) => 
           apply(expr) match {
              case None() => true
              case Some(Literal(_)) => true
              case _ => false
           }
        case _ => true
      }
    }

    @law
    def applyDone(e1: Expr): Boolean = {
      apply(e1) match {
        case None() => true
        case Some(e2) => done(e2)
      }
    }

  }

  def transform(e: Expr)(t: Transformer): Expr = {
    val newExpr = e match {
      case Add(e1, e2) => Add(transform(e1)(t), transform(e2)(t))
      case Literal(i) => Literal(i)
    }
    t.preserveLiteral(newExpr)
    t.preserveAdd(newExpr)
    t.applyDone(e)
    t(newExpr).getOrElse(newExpr)
  } ensuring(t.transformed(_))

  case object ConstFold extends Transformer {
    def apply(expr: Expr): Option[Expr] = {
      expr match {
        case Add(Literal(i), Literal(j)) => Some(Literal(i + j))
        case _ => None[Expr]()
      }
    }
  }

 // Identity is not our kind of transfomer; it fails the law (as it should):
 /*
  case object Identity extends Transformer {
    def apply(expr: Expr): Option[Expr] = Some(expr)
  }
  */

}
