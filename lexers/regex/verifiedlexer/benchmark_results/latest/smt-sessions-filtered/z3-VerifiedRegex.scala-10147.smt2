; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530962 () Bool)

(assert start!530962)

(declare-fun b!5023257 () Bool)

(declare-fun res!2141524 () Bool)

(declare-fun e!3137986 () Bool)

(assert (=> b!5023257 (=> (not res!2141524) (not e!3137986))))

(declare-fun from!1228 () Int)

(declare-datatypes ((C!27988 0))(
  ( (C!27989 (val!23370 Int)) )
))
(declare-datatypes ((List!58184 0))(
  ( (Nil!58060) (Cons!58060 (h!64508 C!27988) (t!370576 List!58184)) )
))
(declare-datatypes ((IArray!30837 0))(
  ( (IArray!30838 (innerList!15476 List!58184)) )
))
(declare-datatypes ((Conc!15388 0))(
  ( (Node!15388 (left!42457 Conc!15388) (right!42787 Conc!15388) (csize!31006 Int) (cheight!15599 Int)) (Leaf!25536 (xs!18714 IArray!30837) (csize!31007 Int)) (Empty!15388) )
))
(declare-datatypes ((BalanceConc!30206 0))(
  ( (BalanceConc!30207 (c!858937 Conc!15388)) )
))
(declare-fun totalInput!1141 () BalanceConc!30206)

(declare-fun size!38640 (BalanceConc!30206) Int)

(assert (=> b!5023257 (= res!2141524 (<= from!1228 (size!38640 totalInput!1141)))))

(declare-fun res!2141525 () Bool)

(assert (=> start!530962 (=> (not res!2141525) (not e!3137986))))

(assert (=> start!530962 (= res!2141525 (>= from!1228 0))))

(assert (=> start!530962 e!3137986))

(assert (=> start!530962 true))

(declare-fun e!3137985 () Bool)

(declare-fun inv!76458 (BalanceConc!30206) Bool)

(assert (=> start!530962 (and (inv!76458 totalInput!1141) e!3137985)))

(declare-fun condSetEmpty!28730 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13869 0))(
  ( (ElementMatch!13869 (c!858938 C!27988)) (Concat!22662 (regOne!28250 Regex!13869) (regTwo!28250 Regex!13869)) (EmptyExpr!13869) (Star!13869 (reg!14198 Regex!13869)) (EmptyLang!13869) (Union!13869 (regOne!28251 Regex!13869) (regTwo!28251 Regex!13869)) )
))
(declare-datatypes ((List!58185 0))(
  ( (Nil!58061) (Cons!58061 (h!64509 Regex!13869) (t!370577 List!58185)) )
))
(declare-datatypes ((Context!6588 0))(
  ( (Context!6589 (exprs!3794 List!58185)) )
))
(declare-fun z!4747 () (InoxSet Context!6588))

(assert (=> start!530962 (= condSetEmpty!28730 (= z!4747 ((as const (Array Context!6588 Bool)) false)))))

(declare-fun setRes!28730 () Bool)

(assert (=> start!530962 setRes!28730))

(declare-fun b!5023258 () Bool)

(assert (=> b!5023258 (= e!3137986 false)))

(declare-fun lt!2078784 () Bool)

(declare-fun lostCauseZipper!883 ((InoxSet Context!6588)) Bool)

(assert (=> b!5023258 (= lt!2078784 (lostCauseZipper!883 z!4747))))

(declare-fun b!5023259 () Bool)

(declare-fun e!3137987 () Bool)

(declare-fun tp!1408167 () Bool)

(assert (=> b!5023259 (= e!3137987 tp!1408167)))

(declare-fun b!5023260 () Bool)

(declare-fun tp!1408166 () Bool)

(declare-fun inv!76459 (Conc!15388) Bool)

(assert (=> b!5023260 (= e!3137985 (and (inv!76459 (c!858937 totalInput!1141)) tp!1408166))))

(declare-fun setIsEmpty!28730 () Bool)

(assert (=> setIsEmpty!28730 setRes!28730))

(declare-fun setElem!28730 () Context!6588)

(declare-fun setNonEmpty!28730 () Bool)

(declare-fun tp!1408168 () Bool)

(declare-fun inv!76460 (Context!6588) Bool)

(assert (=> setNonEmpty!28730 (= setRes!28730 (and tp!1408168 (inv!76460 setElem!28730) e!3137987))))

(declare-fun setRest!28730 () (InoxSet Context!6588))

(assert (=> setNonEmpty!28730 (= z!4747 ((_ map or) (store ((as const (Array Context!6588 Bool)) false) setElem!28730 true) setRest!28730))))

(assert (= (and start!530962 res!2141525) b!5023257))

(assert (= (and b!5023257 res!2141524) b!5023258))

(assert (= start!530962 b!5023260))

(assert (= (and start!530962 condSetEmpty!28730) setIsEmpty!28730))

(assert (= (and start!530962 (not condSetEmpty!28730)) setNonEmpty!28730))

(assert (= setNonEmpty!28730 b!5023259))

(declare-fun m!6058340 () Bool)

(assert (=> b!5023257 m!6058340))

(declare-fun m!6058342 () Bool)

(assert (=> start!530962 m!6058342))

(declare-fun m!6058344 () Bool)

(assert (=> setNonEmpty!28730 m!6058344))

(declare-fun m!6058346 () Bool)

(assert (=> b!5023258 m!6058346))

(declare-fun m!6058348 () Bool)

(assert (=> b!5023260 m!6058348))

(check-sat (not b!5023260) (not setNonEmpty!28730) (not b!5023259) (not start!530962) (not b!5023258) (not b!5023257))
(check-sat)
