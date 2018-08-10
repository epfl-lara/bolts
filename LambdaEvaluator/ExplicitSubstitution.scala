import stainless.lang._
import stainless.collection._
import stainless.annotation._

object ExplicitSubstitution {


    sealed abstract class Term
    case class Var(x: BigInt) extends Term
    case class Abs(x: BigInt, body: Term) extends Term
    case class App(func: Term, arg: Term) extends Term
    case class ApplySubst(m: Term, s: Subst) extends Term

    case class Subst(x: BigInt, m: Term)


    //List without duplicates of the free variables in the Term
    def fv(t: Term): List[BigInt] = t match {
        case Var(x) => List(x)
        case Abs(x, body) => fv(body) -- List(x)
        case App(func, arg) => (fv(func) ++ fv(arg)).unique
        case ApplySubst(m, s) => (fv(m) ++ fv(s.m)).unique -- List(s.x)
    }

    //Checks if there are any unapplied substitution
    def noSubst(t: Term): Boolean = t match {
        case Var(_) => true
        case Abs(x, b) => noSubst(b)
        case App(f, a) => noSubst(f) && noSubst(a)
        case ApplySubst(_, _) => false
    }

    //checks if the term is a value
    def isValue(t: Term): Boolean = t match {
        case Var(_) => true
        case Abs(_, body) => true
        case App(_, _) => false
        case ApplySubst(_, _) => false
    }

    //checks if all reductions have been applied
    def isReduced(t: Term): Boolean = t match {
        case Var(_) => true
        case Abs(_, body) => isReduced(body)
        case App(f, a) => f match {
            case Abs(_, _) => false
            case _ => isReduced(f) && isReduced(a)
        }
        case _ => false
    }

    //creates a new variable not in the given set
    @library
    def newVar(s: List[BigInt], n: BigInt, size: BigInt): BigInt = {
        require(size >= 0 && size == s.size && s.unique == s)
        decreases(size)
        if (size == 0) n else
        if (s contains n) newVar(s - n, n + 1, size - 1) else n
    } ensuring{ res => !(s contains res) }


    //propagates a substitution down
    def eval(e: ApplySubst): Term = {

        e.m match {
            case Var(x) =>
                if (e.s.x == x) e.s.m
                else e.m
            case App(f, arg) => App(ApplySubst(f, e.s), ApplySubst(arg, e.s))
            case Abs(x, body) =>
                if (x != e.s.x) {
                    if (fv(e.s.m) contains x) {
                        val set = (fv(e.s.m) ++ fv(body)).unique
                        val newX = newVar(set, x + 1, set.size)
                        Abs(newX, ApplySubst(ApplySubst(body, Subst(x, Var(newX))), e.s))
                    }
                    else Abs(x, ApplySubst(body, e.s))
                } else e.m
            case ApplySubst(m, s) => ApplySubst(eval(ApplySubst(m, s)), e.s)
        }

    } ensuring { res => (!(fv(res) contains e.s.x) || (fv(e.s.m) contains e.s.x))}

    //evaluates the term
    def loopingEval(t: Term, n: BigInt): Option[Term] = {
        require(n >= 0)
        decreases(n)

        if (n == 0)
            None[Term]()
        else t match {

            case App(t1, t2) => loopingEval(t1, n - 1) match {

                case Some(Abs(x, body)) => loopingEval(t2, n - 1) match {
                    case Some(v2) => {
                        loopingEval(ApplySubst(body, Subst(x, v2)), n - 1)
                    }
                    case None() => None[Term]()
                }
                case _ => None[Term]()

            }

            case ApplySubst(m, s) => loopingEval(eval(ApplySubst(m, s)), n - 1)

            case _ => Some(t)
        }

    } ensuring { res => (res match {
        case Some(r) => isValue(r)
        case None() => true
    })}


    //evaluates, but also find all the beta reduction to be made
    def loopingStrongEval(t: Term, n: BigInt): Option[Term] = {
        require(n >= 0)
        decreases(n)

        if (n == 0)
            None[Term]()
        else t match {

            case App(t1, t2) => loopingStrongEval(t1, n - 1) match {

                case Some(Abs(x, body)) => loopingStrongEval(t2, n - 1) match {
                    case Some(v2) => {
                        loopingStrongEval(ApplySubst(body, Subst(x, v2)), n - 1)
                    }
                    case None() => None[Term]()
                }
                case None() => None[Term]()
                case Some(t) => loopingStrongEval(t2, n - 1) match {
                    case Some(v2) => Some[Term](App(t, v2))
                    case None() => None[Term]()
                }

            }

            case Abs(x, body) => loopingStrongEval(body, n - 1) match {
                case Some(b) => Some[Term](Abs(x, b))
                case _ => None[Term]()
            }

            case ApplySubst(m, s) => loopingStrongEval(eval(ApplySubst(m, s)), n - 1)

            case _ => Some(t)
        }

    } ensuring { res => (res match {
        case Some(r) => isReduced(r)
        case None() => true
    })}


    //checks if two terms are alpha equivalent (that is, equal upon renaming of the bound variables)
    def alphaEquivalent(t1: Term, t2: Term): Boolean = {

        t1 match {
            case Var(x) => t2 match {
                case Var(y) => x == y
                case ApplySubst(m, s) => alphaEquivalent(t1, eval(ApplySubst(m, s)))
                case _ => false
            }
            case App(f, a) => t2 match {
                case App(f2, a2) => alphaEquivalent(f, f2) && alphaEquivalent(a, a2)
                case ApplySubst(m, s) => alphaEquivalent(t1, eval(ApplySubst(m, s)))
                case _ => false
            }
            case Abs(x, body) => t2 match {
                case Abs(x2, body2) => if (x == x2) alphaEquivalent(body, body2) else !(fv(body2) contains x) && alphaEquivalent(body, eval(ApplySubst(body2, Subst(x2, Var(x)))))
                case ApplySubst(m, s) => alphaEquivalent(t1, eval(ApplySubst(m, s)))
                case _ => false
            }
            case ApplySubst(m, s) => alphaEquivalent(eval(ApplySubst(m, s)), t2)
        }
    }


    def unique(t1: Term, t2: Term, s: Subst, n: BigInt) = {
        require(n > 0 && t1 == t2)

        loopingEval(ApplySubst(t1, s), n) == loopingEval(ApplySubst(t2, s), n)
    } holds

    def unique2(t1: Term, t2: Term, s1: Term, s2: Term, n: BigInt, x: BigInt) = {
        require(n > 0 && t1 == t2 && s1 == s2)

        loopingEval(ApplySubst(t1, Subst(x, s1)), n) == loopingEval(ApplySubst(t2, Subst(x, s2)), n)
    } holds

    //λx.x((λy.yy)x)x = λx.x(xx)x
    def example1 = {
        loopingStrongEval(Abs(0, App(App(Var(0), App(Abs(1, App(Var(1), Var(1))), Var(0))), Var(0))), 20) match {
            case Some(t) => t == Abs(0, App(App(Var(0), App(Var(0), Var(0))), Var(0)))
            case _ => false
        }
    } holds

    //(λxyz.zyx)aa(λpq.q) = a
    def example2 = {
        loopingEval(App(App(App(Abs(0, Abs(1, Abs(2, App(App(Var(2), Var(1)), Var(0))))), Var(5)), Var(5)), Abs(3, Abs(4, Var(3)))), 20) match {
            case Some(t) => t == Var(5)
            case _ => false
        }
    } holds

    //λx.y [y:x] = λz.x
    def captureAvoidingTest = {
       loopingEval(ApplySubst(Abs(0, Var(1)), Subst(1, Var(0))), 20) match {
            case Some(t) => alphaEquivalent(t, Abs(1, Var(0)))
            case _ => false
       }
    } holds


//=================================================

    def powerN(f: Var, M: Var, n: BigInt): Term = {
        require(n >= 0)
        if (n == 0) M else App(f, powerN(f, M, n - 1))
    } ensuring{ res => noSubst(res) }

    //encoding of integers using the church technic
    def churchN(n: BigInt) = {
        require(n >= 0)
        Abs(0, Abs(5, powerN(Var(0), Var(5), n)))
    } ensuring { res => noSubst(res) }


    val Aplus = Abs(0, Abs(1, Abs(2, Abs(3, App(App(Var(0), Var(2)), App(App(Var(1), Var(2)), Var(3)))))))
    val Astar = Abs(0, Abs(1, Abs(2, App(Var(0), App(Var(1), Var(2))))))

    def testAdd = {
        loopingStrongEval(App(App(Aplus, churchN(3)), churchN(4)), 50) match {
            case Some(t) => alphaEquivalent(t, churchN(7))
            case _ => false
        }
    } holds


    def testMult = {
        loopingStrongEval(App(App(Astar, churchN(2)), churchN(3)), 50) match {
            case Some(t) => alphaEquivalent(t, churchN(6))
            case _ => false
        }
    } holds


//=================================================

    /*
     * Implementation of if-then-else, pairs and lists in lambda calculus
     */
    val True = Abs(0, Abs(1, Var(0)))
    val False = Abs(0, Abs(1, Var(1)))
    def Pair(M: Term, N: Term) = Abs(1, App(App(Var(1), M), N))
    def _1(M: Term) = App(M, True)
    def _2(M: Term) = App(M, False)
    val Nil = Abs(5, Abs(6, Var(5)))
    def Cons(P: Term, Q: Term) = Abs(3, Abs(4, App(Pair(P, Q), Var(4))))

    //True x y = x
    def trueTest = {
        loopingEval(App(App(True, Var(10)), Var(11)), 20) match {
            case Some(t) => t == Var(10)
            case _ => false
        }
    } holds

    //False x y = y
    def falseTest = {
        loopingEval(App(App(False, Var(10)), Var(11)), 20) match {
            case Some(t) => t == Var(11)
            case _ => false
        }
    } holds

    //Cons(x, y) z (λp. p._1) = x
    def listTest = {
        loopingEval(App(App(Cons(Var(10), Var(11)), Var(12)), True), 20) match {
            case Some(t) => t == Var(10)
            case _ => false
        }
    } holds

    //Pair(x, y)._1 = x
    def testPair1 = {
        loopingEval(_1(Pair(Var(30), Var(31))), 20) match {
            case Some(t) => t == Var(30)
            case _ => false
        }
    } holds

    //Pair(x, y)._2 = y
    def testPair2 = {
        loopingEval(_2(Pair(Var(30), Var(31))), 20) match {
            case Some(t) => t == Var(31)
            case _ => false
        }
    } holds

}