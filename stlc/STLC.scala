
import stainless.lang._
import stainless.annotation._
import stainless.proof._
import stainless.math

object stlc {

  sealed abstract class Ty
  final case class TBool()                extends Ty
  final case class TArrow(t1: Ty, t2: Ty) extends Ty

  sealed abstract class Term {

    def isValue: Boolean = this match {
      case Abs(_, _, _)     => true
      case True()           => true
      case False()          => true
      case _                => false
    }

    def isNF: Boolean = {
      step == None[Term]()
    }

    def fv: Set[BigInt] = this match {
      case Var(id)           => Set(id)
      case App(f, arg)       => f.fv ++ arg.fv
      case Abs(x, _, body)   => body.fv -- Set(x)
      case If(cnd, thn, els) => cnd.fv ++ thn.fv ++ els.fv
      case True()            => Set()
      case False()           => Set()
    }

    def isClosed: Boolean = forall { (x: BigInt) =>
      !fv.contains(x)
    }

    def size: BigInt = {
      this match {
        case Var(_)            => BigInt(1)
        case True()            => BigInt(1)
        case False()           => BigInt(1)
        case App(f, arg)       => math.max(f.size, arg.size) + 1
        case Abs(_, _, body)   => body.size + 1
        case If(cnd, thn, els) => math.max(math.max(cnd.size, thn.size), els.size) + 1
      }
    } ensuring (_ >= 1)

    def step: Option[Term] = {
      decreases(this.size)

      this match {
        case App(Abs(x, _, body), arg) if arg.isValue =>
          Some(subst(x, arg, body))

        case App(f, arg) if f.step.isDefined =>
          Some(App(f.step.get, arg))

        case App(f, arg) if f.isValue && arg.step.isDefined =>
          Some(App(f, arg.step.get))

        case If(cnd, thn, els) if cnd.isValue =>
          cnd match {
            case True()  => Some(thn)
            case False() => Some(els)
            case _       => None()
          }

        case If(cnd, thn, els) if cnd.step.isDefined =>
          Some(If(cnd.step.get, thn, els))

        case _ =>
          None()
      }
    }

    def reducesTo(t: Term, n: BigInt): Boolean = {
      require(n >= 0)
      decreases(n)

      this == t || {
        n > 0 &&
        this.step.isDefined &&
        this.step.get.reducesTo(t, n - 1)
      }
    }
  }

  final case class Var(id: BigInt)                     extends Term
  final case class App(f: Term, arg: Term)             extends Term
  final case class Abs(x: BigInt, ty: Ty, body: Term)  extends Term
  final case class If(cnd: Term, thn: Term, els: Term) extends Term
  final case class True()                              extends Term
  final case class False()                             extends Term

  def subst(x: BigInt, s: Term, t: Term): Term = t match {
    case Var(y) if x == y  => s
    case Var(y) if x != y  => t
    case Abs(y, ty, t1)    => Abs(y, ty, if (x == y) t1 else subst(x, s, t1))
    case App(f, arg)       => App(subst(x, s, f), subst(x, s, arg))
    case If(cnd, thn, els) => If(subst(x, s, cnd), subst(x, s, thn), subst(x, s, els))
    case True()            => True()
    case False()           => False()
  }

  def step_example1(n: BigInt): Boolean = {
    require(n > 0)

    val t = App(Abs(0, TArrow(TBool(), TBool()), Var(0)), Abs(0, TBool(), Var(0)))
    val s = Abs(0, TBool(), Var(0))

    t.reducesTo(s, n)
  }.holds

  def step_example2(n: BigInt): Boolean = {
    require(n > 0)

    val t = If(True(), False(), True())
    val s = False()

    t.reducesTo(s, n)
  }.holds

  def inferType(c: Map[BigInt, Ty], t: Term): Option[Ty] = {
    t match {
      case Var(id) =>
        c.get(id)

      case Abs(x, ty, body) =>
        inferType(c.updated(x, ty), body) match {
          case Some(tyBody) => Some(TArrow(ty, tyBody))
          case None()       => None()
        }

      case App(f, arg) =>
        val tyFOpt   = inferType(c, f)
        val tyArgOpt = inferType(c, arg)

        if (tyFOpt.isDefined && tyArgOpt.isDefined) {
          tyFOpt.get match {
            case TArrow(a, b) if a == tyArgOpt.get => Some(b)
            case _                                 => None()
          }
        } else {
          None()
        }

      case If(cnd, thn, els) =>
        val cndTy = inferType(c, cnd)
        val thnTy = inferType(c, thn)
        val elsTy = inferType(c, els)

        (cndTy, thnTy, elsTy) match {
          case (Some(TBool()), Some(t), Some(e)) if t == e =>
            Some(t)

          case _ =>
            None()
        }

      case True() =>
        Some(TBool())

      case False() =>
        Some(TBool())
    }
  }

  def example_typing1: Boolean = {
    val ty = inferType(Map[BigInt, Ty](), Abs(0, TBool(), Var(0)))
    ty.isDefined && ty.get == TArrow(TBool(), TBool())
  }.holds

  def example_typing2: Boolean = {
    val ty = inferType(Map[BigInt, Ty](), If(True(), False(), True()))
    ty.isDefined && ty.get == TBool()
  }.holds

  @induct
  def theorem_progress(t: Term): Boolean = {
    require(inferType(emptyCtx, t).isDefined)
    t.isValue || t.step.isDefined
  }.holds

  def lemma_free_in_ctx(c: Map[BigInt, Ty], x: BigInt, t: Term): Boolean = {
    require(t.fv.contains(x) && inferType(c, t).isDefined)

    t match {
      case Abs(y, ty, t1) if x != y =>
        assert(inferType(c.updated(y, ty), t1).isDefined)
        assert(t1.fv.contains(x))
        assert(lemma_free_in_ctx(c.updated(y, ty), x, t1))

      case App(f, arg) =>
        assert(f.fv.contains(x) ==> lemma_free_in_ctx(c, x, f))
        assert(arg.fv.contains(x) ==> lemma_free_in_ctx(c, x, arg))

      case If(cnd, thn, els) =>
        assert(cnd.fv.contains(x) ==> lemma_free_in_ctx(c, x, cnd))
        assert(thn.fv.contains(x) ==> lemma_free_in_ctx(c, x, thn))
        assert(els.fv.contains(x) ==> lemma_free_in_ctx(c, x, els))

      case _ => ()
    }

    c.contains(x)
  }.holds

  def emptyCtx: Map[BigInt, Ty] = Map()

  @induct
  def corollary_typeable_empty__closed_pre(t: Term): Boolean = {
    require(inferType(emptyCtx, t).isDefined)

    forall { (x: BigInt) =>
      t.fv.contains(x) ==> !lemma_free_in_ctx(emptyCtx, x, t)
    }
  }.holds

  @induct
  def corollary_typeable_empty__closed(t: Term): Boolean = {
    require(inferType(emptyCtx, t).isDefined)

    assert(corollary_typeable_empty__closed_pre(t))

    t match {
      case Abs(x, ty, body) =>
        assert(inferType(emptyCtx.updated(x, ty), body).isDefined)

      case _ => ()
    }

    t.isClosed
  }.holds

  @induct
  def lemma_context_invariance(c: Map[BigInt, Ty], d: Map[BigInt, Ty], t: Term): Boolean = {
    require {
      inferType(c, t).isDefined &&
      inferType(d, t).isDefined &&
      forall { (x: BigInt) => t.fv.contains(x) ==> (c.get(x) == d.get(x)) }
    }

    t match {
      // TODO
      case Abs(x, ty, body) =>
        assert(inferType(c.updated(x, ty), body).isDefined)
        assert(inferType(d.updated(x, ty), body).isDefined)
        assert(lemma_context_invariance(c.updated(x, ty), d.updated(x, ty), body))

      case App(f, arg) =>
        assert(lemma_context_invariance(c, d, f))
        assert(lemma_context_invariance(c, d, arg))

      // TODO
      case If(cnd, thn, els) =>
        assert(lemma_context_invariance(c, d, cnd))
        assert(lemma_context_invariance(c, d, thn)) // TODO
        assert(lemma_context_invariance(c, d, els)) // TODO

      case _ => ()
    }

    inferType(c, t).get == inferType(d, t).get
  }.holds

  @induct
  def lemma_substitution_preserves_typing(c: Map[BigInt, Ty], x: BigInt, t: Term, s: Term): Boolean = {
    require {
      inferType(emptyCtx, s).isDefined &&
      inferType(c, s).isDefined &&
      inferType(c.updated(x, inferType(emptyCtx, s).get), t).isDefined
    }

    val S  = inferType(emptyCtx, s).get
    val cs = c.updated(x, S)
    val T  = inferType(cs, t).get

    t match {
      case Var(y) if x == y =>
        assert(T == S)
        assert(corollary_typeable_empty__closed(s))
        assert(lemma_context_invariance(emptyCtx, c, s))
        assert(inferType(c, subst(x, s, t)) == inferType(c.updated(x, inferType(emptyCtx, s).get), t))

      case Abs(y, ty, body) if x == y =>
        assert(inferType(cs, t).isDefined)
        assert(lemma_context_invariance(cs, c, t))
        assert(inferType(c, subst(x, s, t)) == inferType(c.updated(x, inferType(emptyCtx, s).get), t))

      case Abs(y, ty, body) =>
        val cx  = c.updated(y, ty)
        val csx = cx.updated(x, S)
        val cxs = cs.updated(y, ty)

        assert(inferType(cxs, body).isDefined)
        assert(inferType(csx, body).isDefined)
        assert(inferType(cx.updated(x, inferType(emptyCtx, s).get), body).isDefined)

        assert(lemma_context_invariance(cxs, csx, body))
        assert(lemma_substitution_preserves_typing(cx, x, s, body))
        assert(inferType(c, subst(x, s, t)) == inferType(c.updated(x, inferType(emptyCtx, s).get), t))

      case t => ()
    }

    inferType(c, subst(x, s, t)) == inferType(c.updated(x, inferType(emptyCtx, s).get), t)
  }.holds

  @induct
  def theorem_preservation(t: Term): Boolean = {
    require(inferType(emptyCtx, t).isDefined && !t.isNF)

    t match {
      case App(Abs(x, ty, body), arg) if arg.isValue => assert {
        lemma_substitution_preserves_typing(emptyCtx, x, body, arg)
      }

      // TODO: App + If

      case _ => ()
    }

    inferType(emptyCtx, t.step.get) == inferType(emptyCtx, t)
  }.holds

  def isStuck(t: Term): Boolean = {
    t.isNF && !t.isValue
  }

  def corollary_soundness(t: Term, s: Term, ty: Ty, n: BigInt): Boolean = {
    require(inferType(emptyCtx, t) == Some(ty) && n >= 0 && t.reducesTo(s, n))
    decreases(n)

    assert(theorem_progress(t))

    if (t != s) {
     assert(theorem_preservation(t))
     assert(corollary_soundness(t.step.get, s, ty, n - 1))
    }

    !isStuck(s)
  }.holds

}

