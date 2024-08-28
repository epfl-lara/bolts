import stainless.collection._
import stainless.lang._
import stainless.equations._
import stainless.annotation._

object ExprCompiler {
  def check(b: Boolean): Unit = {
    require(b)
  }.ensuring(_ => b)

  abstract class Binary {
    def apply(x: Int, y:Int): Int
  }

  case class Minus() extends Binary {
    def apply(x: Int, y:Int) = x - y
  }

  case class Plus() extends Binary {
    def apply(x: Int, y:Int) = x + y
  }

  case class Times() extends Binary {
    def apply(x: Int, y:Int) = x * y
  }

  sealed abstract class Expr
  case class Var(str: String) extends Expr
  case class ConstExpr(c: Int) extends Expr
  case class BinExpr(left: Expr, b: Binary, right: Expr) extends Expr

  type Value = Int
  type Env = String => Value

  def eval(en: Env)(expr: Expr): Value =
    expr match {
      case ConstExpr(c) => c
      case Var(s) => en(s)
      case BinExpr(left, b, right) => b(eval(en)(left), eval(en)(right))
    }

  sealed abstract class Instr
  case class Push(c: Int) extends Instr
  case class Load(s: String) extends Instr
  case class BinOp(b: Binary) extends Instr

  type Bytecodes = List[Instr]
  type Stack = List[Value]
  def push(v: Value, s: Stack): Stack = Cons(v, s)

  def run(bs: Bytecodes)(en: Env, stack: Stack): Option[Stack] =
    bs match {
      case Nil() => Some(stack)
      case Cons(Push(c), bs1) =>  run(bs1)(en, push(c, stack))
      case Cons(Load(s), bs1) =>  run(bs1)(en, push(en(s), stack))
      case Cons(BinOp(b), bs1) =>
        stack match {
          case Cons(v1, Cons(v2, stack1)) =>
            run(bs1)(en, push(b(v2, v1), stack1)) // check this
          case _ => None[Stack]()
        }
    }

  def compile(expr: Expr): Bytecodes =
    expr match {
      case ConstExpr(c) => List[Instr](Push(c))
      case Var(s) => List[Instr](Load(s))
      case BinExpr(left, b, right) =>
        compile(left) ++ (compile(right) ++ List[Instr](BinOp(b)))
    }

  def assoc4[A](as: List[A], bs: List[A], cs: List[A], ds: List[A]): Unit = {
    ListSpecs.appendAssoc(as, bs ++ cs, ds)
    ListSpecs.appendAssoc(bs, cs, ds)
    ()
  }.ensuring(_ => (as ++ (bs ++ cs)) ++ ds == as ++ (bs ++ (cs ++ ds)))

  // Example expression to run {{{
  def expr1 = BinExpr(
    BinExpr(Var("x"), Times(), Var("y")),
      Plus(),
    BinExpr(BinExpr(Var("y"), Times(), Var("z")),
              Plus(),
            BinExpr(Var("x"), Times(), Var("z"))))

  def env1 : Env = { (v: String) =>
    if (v == "x") 3
    else if (v == "y") 4
    else if (v == "z") 5
    else 0
  }
  def resEval1 = eval(env1)(expr1)
  def bytecodes1 = compile(expr1)
  def resCompile1 = run(bytecodes1)(env1, List[Value]()) // }}}

  // Running compiled code gives same result as interpreting
  def correct(en: Env, expr: Expr, bs: Bytecodes, inStack: Stack): Unit = {
    expr match {
      case ConstExpr(c) => ()
      case Var(s) => ()
      case BinExpr(left, b, right) =>
        val op = List[Instr](BinOp(b))
        val vLeft = eval(en)(left)
        val vRight = eval(en)(right)
        val midStack = push(vLeft, inStack)
        assert(eval(en)(expr) == b(vLeft, vRight))
        ( run(compile(expr) ++ bs)(en, inStack)                              ==:| trivial |:
          run((compile(left) ++ (compile(right) ++ op)) ++ bs)(en, inStack)  ==:| assoc4(compile(left), compile(right), op, bs) |:
          run(compile(left) ++ (compile(right) ++ (op ++ bs)))(en, inStack)  ==:| correct(en, left, compile(right) ++ (op ++ bs), inStack) |:
          run(compile(right) ++ (op ++ bs))(en, midStack)                    ==:| correct(en, right, op ++ bs, midStack) |:
          run(op ++ bs)(en, push(vRight, midStack))                          ==:| trivial |:
          run(bs)(en, push(b(vLeft, vRight), inStack))                       ==:| trivial |:
          run(bs)(en, push(eval(en)(expr), inStack))
        ).qed
    }
  }.ensuring(_ => run(compile(expr) ++ bs)(en, inStack) == run(bs)(en, push(eval(en)(expr), inStack)))
}