import stainless.annotation.*
import stainless.lang.{ghost => ghostExpr, *}
object ConstFold:

  sealed abstract class Expr
  case class Number(value: Int) extends Expr
  case class Var(name: String) extends Expr
  case class Add(e1: Expr, e2: Expr) extends Expr
  case class Minus(e1: Expr, e2: Expr) extends Expr
  case class Mul(e1: Expr, e2: Expr) extends Expr

  type Env = String => Int
  val zeroEnv = (_:String) => 0

  def evaluate(ctx: Env, e: Expr): Int = 
    e match
      case Number(value) => value
      case Var(name) => ctx(name)
      case Add(e1, e2) => evaluate(ctx, e1) + evaluate(ctx, e2)
      case Minus(e1, e2) => evaluate(ctx, e1) - evaluate(ctx, e2)
      case Mul(e1, e2) => evaluate(ctx, e1) * evaluate(ctx, e2)

  def zeroExpr(e: Expr): Boolean = 
    e match
      case Number(value) => value == 0
      case Var(_) => false
      case Add(e1, e2) => zeroExpr(e1) && zeroExpr(e2)
      case Minus(e1, e2) => zeroExpr(e1) && zeroExpr(e2)
      case Mul(e1, e2) => zeroExpr(e1) && zeroExpr(e2)

  def lemma(ctx: Env, @induct e: Expr): Unit = {
    require(zeroExpr(e))
    ()
  }.ensuring(_ => evaluate(ctx, e) == 0)

  def mirror(e: Expr)(anyCtx: Env = zeroEnv): Expr = {
    e match
      case Number(value) => e
      case Var(name) => e
      case Add(e1, e2) => Add(mirror(e2)(anyCtx), mirror(e1)(anyCtx))
      case Minus(e1, e2) => Minus(mirror(e1)(anyCtx), mirror(e2)(anyCtx))
      case Mul(e1, e2) => Mul(mirror(e1)(anyCtx), mirror(e2)(anyCtx))
  }.ensuring(evaluate(anyCtx, _) == evaluate(anyCtx,e))

  abstract class SoundSimplifier:
    def apply(e: Expr, anyCtx: Env): Expr = {
      (??? : Expr)
    }.ensuring(evaluate(anyCtx,_) == evaluate(anyCtx,e))
  
  val mirSimp = new SoundSimplifier:
    override def apply(e: Expr, anyCtx: Env) = mirror(e)(anyCtx)
  
  def constfold1(e: Expr)(anyCtx: Env = zeroEnv) = {
    e match
      case Add(Number(n1), Number(n2))   => Number(n1 + n2)
      case Minus(Number(n1), Number(n2)) => Number(n1 - n2)
      case Mul(Number(n1), Number(n2))   => 
        ghostExpr(unfold(evaluate(anyCtx,e)))
        ghostExpr(unfold(evaluate(anyCtx,Number(n1))))
        ghostExpr(unfold(evaluate(anyCtx,Number(n2))))
        Number(n1 * n2)
      case e                             => e
  }.ensuring(evaluate(anyCtx,_) == evaluate(anyCtx,e))

  val constFoldSimp = new SoundSimplifier:
    override def apply(e: Expr, anyCtx: Env) = constfold1(e)(anyCtx)

  def mapExpr(e: Expr, f: SoundSimplifier)(anyCtx: Env = zeroEnv): Expr = {
    val mapped: Expr = e match
      case Number(_)     => e
      case Var(_)        => e
      case Add(e1, e2)   => Add(mapExpr(e1, f)(anyCtx), mapExpr(e2, f)(anyCtx))
      case Minus(e1, e2) => Minus(mapExpr(e1, f)(anyCtx), mapExpr(e2, f)(anyCtx))
      case Mul(e1, e2)   => Mul(mapExpr(e1, f)(anyCtx), mapExpr(e2, f)(anyCtx))
    f(mapped, anyCtx)
  }.ensuring(evaluate(anyCtx,_) == evaluate(anyCtx,e))

  def constfold(e: Expr)(anyCtx: Env = zeroEnv): Expr = {
    mapExpr(e, constFoldSimp)(anyCtx)
  }.ensuring(evaluate(anyCtx,_) == evaluate(anyCtx,e))


  @extern
  @main
  def test =
    val e = Mul(Var("x"), Number(0))
    println(e)

end ConstFold
