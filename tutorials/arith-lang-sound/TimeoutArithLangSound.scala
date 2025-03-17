import stainless.annotation.*
import stainless.lang.*
import stainless.lang.StaticChecks.*

/* Arithmetic expression typing */

object TimeoutArithLangSound:
  // Arithmetic expressions working on integers and booleans
  sealed trait Expr
  case class IntConst(c: BigInt) extends Expr
  case class BoolConst(b: Boolean) extends Expr
  case class ApplyOperator(e1: Expr, op: Operator, e2: Expr) extends Expr
  case class If(condition: Expr, thenBranch: Expr, elseBranch: Expr) extends Expr

  // Several example operators
  sealed trait Operator
  case class PlusOp() extends Operator
  case class MinusOp() extends Operator
  case class EqOp() extends Operator
  case class StrictAndOp() extends Operator // evaluates both arguments

  // Values are integer or boolean constants
  sealed trait Value
  case class IntVal(c: BigInt) extends Value
  case class BoolVal(b: Boolean) extends Value

  // Outcome of evaluation
  sealed trait Outcome
  case class Ok(v: Value) extends Outcome
  case class Error() extends Outcome
  case class Timeout() extends Outcome
  
  // Apply `op` to a given Outcome-s, propagate Timeout, give `Error` if wrong types
  def evalVal(v1: Outcome, op: Operator, v2: Outcome): Outcome =
    (v1, op, v2) match
      case (Ok(IntVal(c1)), PlusOp(), Ok(IntVal(c2))) => Ok(IntVal(c1 + c2))
      case (Ok(IntVal(c1)), MinusOp(), Ok(IntVal(c2))) => Ok(IntVal(c1 - c2))
      case (Ok(BoolVal(b1)), StrictAndOp(), Ok(BoolVal(b2))) => Ok(BoolVal(b1 && b2))
      case (Ok(IntVal(c1)), EqOp(), Ok(IntVal(c2))) => Ok(BoolVal(c1 == c2))
      case (Ok(BoolVal(b1)), EqOp(), Ok(BoolVal(b2))) => Ok(BoolVal(b1 == b2))
      case (Timeout(), _, _) => Timeout()
      case (Error(), _, _) => Error()
      case (_, _, Timeout()) => Timeout()
      case _ => Error()
  
  def eval(e: Expr, time: BigInt): Outcome = 
    require(0 <= time) // time left for evaluation must be positive
    decreases(time)
    if time == 0 then Timeout()
    else 
      e match
        case IntConst(c) => Ok(IntVal(c))
        case BoolConst(b) => Ok(BoolVal(b))
        case ApplyOperator(e1, op, e2) =>
          evalVal(eval(e1, time - 1), op, eval(e2, time - 1))
        case If(c, e1, e2) =>
          eval(c, time - 1) match
            case Ok(BoolVal(b)) =>
              if b then eval(e1, time - 1) else eval(e2, time - 1)
            case _ => Error()
    
  // Type expressions are Bool or Int
  sealed trait TypeExpr
  case class BoolType() extends TypeExpr
  case class IntType() extends TypeExpr
  
  // Infer the type of an expression. `None` means it does not type check
  def typeOf(e: Expr): Option[TypeExpr] =
    decreases(e)
    e match
      case IntConst(c) => Some(IntType())
      case BoolConst(b) => Some(BoolType())
      case ApplyOperator(e1, op, e2) =>
        (typeOf(e1), op, typeOf(e2)) match
          case (Some(IntType()), PlusOp(), Some(IntType())) => Some(IntType())
          case (Some(IntType()), MinusOp(), Some(IntType())) => Some(IntType())
          case (Some(IntType()), EqOp(), Some(IntType())) => Some(BoolType())
          case (Some(BoolType()), EqOp(), Some(BoolType())) => Some(BoolType())
          case (Some(BoolType()), StrictAndOp(), Some(BoolType())) => Some(BoolType())
          case _ => None[TypeExpr]()
      case If(c, e1, e2) =>
        (typeOf(c), typeOf(e1), typeOf(e2)) match
          case (Some(BoolType()), Some(t1), Some(t2)) => 
            if t1 == t2 then Some(t1) else None[TypeExpr]()
          case _ => None[TypeExpr]()

  // We can also assign types to values 
  def valTypeOf(v: Value): TypeExpr =
    v match
      case IntVal(c) => IntType()
      case BoolVal(b) => BoolType()

      
  // If we require an expression to have a type, then it always returns value.
  // This means that well-typed expressions do not get stuck.
  // `t` is a witness that the expression was well typed (it could be in a typed tree).
  def evalTyped(e: Expr, @ghost t: TypeExpr, time: BigInt): Outcome = {
    require(typeOf(e) == Some(t))
    require(0 <= time)
    decreases(time)
    if time == 0 then Timeout()
    else 
      e match {
        case IntConst(c) => Ok(IntVal(c))
        case BoolConst(b) => Ok(BoolVal(b))
        case ApplyOperator(e1, op, e2) =>
          @ghost val t1 = typeOf(e1).get // invoking `get` checks that typeOf does not give `None`
          @ghost val t2 = typeOf(e2).get
          evalVal(evalTyped(e1, t1, time - 1), op, evalTyped(e2, t2, time - 1))
        case If(c, e1, e2) =>
          @ghost val t1 = typeOf(e1).get
          @ghost val t2 = typeOf(e2).get
          assert(t1 == t2) // follows from typeOf(e) == Some(_)
          evalTyped(c, BoolType(), time - 1) match
            case Timeout() => Timeout()
            case Ok(BoolVal(b)) =>
              if b then evalTyped(e1, t1, time - 1) else evalTyped(e2, t2, time - 1)
      }
  }.ensuring((res: Outcome) => 
    (res match
      case Error() => false             // will not happen
      case Timeout() => true            // we don't care
      case Ok(v) => valTypeOf(v) == t && res == eval(e, time))) // the resulting value has the same type
  
  // Examples
  def e1: Expr = If(ApplyOperator(IntConst(2), EqOp(), IntConst(3)), IntConst(42), IntConst(7))
  def v1: Outcome = eval(e1, 100)
  def e2: Expr = If(ApplyOperator(IntConst(2), EqOp(), BoolConst(true)), IntConst(42), IntConst(7))
  def v2: Outcome = eval(e2, 100)
  val t1: Option[TypeExpr] = typeOf(e1)
  val t2: Option[TypeExpr] = typeOf(e2)
  val tv1: Outcome = evalTyped(e1, t1.get, 100)

end TimeoutArithLangSound
