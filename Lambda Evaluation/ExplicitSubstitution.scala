import stainless.lang._
import stainless.collection._
import stainless._

object ExplicitSubstitution {

    sealed abstract class Term
    case class Var(x: BigInt) extends Term
    case class Abs(x: BigInt, body: Term) extends Term
    case class App(func: Term, arg: Term) extends Term
    case class ApplySubst(m: Term, s: Subst) extends Term 

    case class Subst(x: BigInt, m: Term)

    def fv(t: Term): Set[BigInt] = t match {
        case Var(x) => Set(x)
        case Abs(x, body) => fv(body) -- Set(x)
        case App(func, arg) => fv(func) ++ fv(arg)
        case ApplySubst(m, s) => fv(m) ++ fv(s.m) -- Set(s.x)
    }

    def noSubst(t: Term): Boolean = t match {
        case Var(_) => true
        case Abs(x, b) => noSubst(b)
        case App(f, a) => noSubst(f) && noSubst(a)
        case ApplySubst(_, _) => false  
    }

    def isValue(t: Term): Boolean = t match {
        case Var(_) => true
        case Abs(_, body) => noSubst(body)
        case App(_, _) => false
        case ApplySubst(_, _) => false
    }

    def eval(e: ApplySubst): Term = {
        
        e.m match {
            case Var(x) => 
                if (e.s.x == x) e.s.m 
                else e.m
            case App(f, arg) => App(eval(ApplySubst(f, e.s)), eval(ApplySubst(arg, e.s)))
            case Abs(x, body) => 
                if (x != e.s.x) 
                    Abs(x, eval(ApplySubst(body, e.s))) 
                else 
                    e.m
            case ApplySubst(m, s) => ApplySubst(eval(ApplySubst(m, s)), e.s)
        }

    } ensuring { res => (!(fv(res) contains e.s.x) || (fv(e.s.m) contains e.s.x)) }

    

    def loopingEval(t: Term, n: BigInt): Option[Term] = {
        require(n >= 0)
        decreases(n)

        if (n == 0) 
            None[Term]() 
        else t match {

            case App(t1, t2) => loopingEval(t1, n - 1) match {

                case Some(Abs(x, body)) => loopingEval(t2, n - 1) match {
                    case Some(v2) => loopingEval(ApplySubst(body, Subst(x, v2)), n - 1)
                    case None() => None[Term]()
                }
                case _ => None[Term]() 

            } 

            case Abs(x, body) => if (noSubst(body)) Some(t) else loopingEval(body, n - 1) match {
                case Some(b) => Some[Term](Abs(x, b))
                case _ => None[Term]()
            }

            case ApplySubst(m, s) => loopingEval(eval(ApplySubst(m, s)), n - 1) 

            case _ => Some(t) 
        }

    } ensuring { res => (res match {
        case Some(r) => isValue(r)
        case None() => true
    })}


    def evalNoSubst(e: ApplySubst): Term = {
        require(noSubst(e.m) && noSubst(e.s.m))

        e.m match {
            case Var(x) => 
                if (e.s.x == x) e.s.m 
                else e.m
            case App(f, arg) => App(evalNoSubst(ApplySubst(f, e.s)), evalNoSubst(ApplySubst(arg, e.s)))
            case Abs(x, body) => 
                if (x != e.s.x) 
                    Abs(x, evalNoSubst(ApplySubst(body, e.s))) 
                else 
                    e.m
        }

    } ensuring { res => (!(fv(res) contains e.s.x) || (fv(e.s.m) contains e.s.x)) && noSubst(res)}


    def loopingEvalNoSubst(t: Term, n: BigInt): Option[Term] = {
        require(n >= 0 && noSubst(t))
        decreases(n)

        if (n == 0) 
            None[Term]() 
        else t match {

            case App(t1, t2) => loopingEvalNoSubst(t1, n - 1) match {

                case Some(Abs(x, body)) => loopingEvalNoSubst(t2, n - 1) match {
                    case Some(v2) => loopingEvalNoSubst(evalNoSubst(ApplySubst(body, Subst(x, v2))), n - 1)
                    case None() => None[Term]()
                }
                case _ => None[Term]() 

            }

            case _ => Some(t) 
        }
    } ensuring { res => (res match {
        case Some(r) => isValue(r)
        case None() => true
    })}

    def loopingNoEval(t: Term): Option[Term] = {
        
        t match {

            case App(t1, t2) => loopingNoEval(t1) match {

                case Some(Abs(x, body)) => loopingNoEval(t2) match {
                    case Some(v2) => loopingNoEval(ApplySubst(body, Subst(x, v2)))
                    case None() => None[Term]()
                }
                case _ => None[Term]() 

            }

            case _ => Some(t) 
        }

    } ensuring { res => (res match {
        case Some(r) => r match {
            case App(_, _) => false
            case _ => true 
        }
        case None() => true
    })}
    
}