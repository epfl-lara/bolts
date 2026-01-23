; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530970 () Bool)

(assert start!530970)

(declare-fun b!5023328 () Bool)

(declare-fun e!3138038 () Bool)

(declare-datatypes ((C!27996 0))(
  ( (C!27997 (val!23374 Int)) )
))
(declare-datatypes ((List!58192 0))(
  ( (Nil!58068) (Cons!58068 (h!64516 C!27996) (t!370584 List!58192)) )
))
(declare-datatypes ((IArray!30845 0))(
  ( (IArray!30846 (innerList!15480 List!58192)) )
))
(declare-datatypes ((Conc!15392 0))(
  ( (Node!15392 (left!42463 Conc!15392) (right!42793 Conc!15392) (csize!31014 Int) (cheight!15603 Int)) (Leaf!25542 (xs!18718 IArray!30845) (csize!31015 Int)) (Empty!15392) )
))
(declare-datatypes ((BalanceConc!30214 0))(
  ( (BalanceConc!30215 (c!858945 Conc!15392)) )
))
(declare-fun totalInput!1141 () BalanceConc!30214)

(declare-fun tp!1408203 () Bool)

(declare-fun inv!76476 (Conc!15392) Bool)

(assert (=> b!5023328 (= e!3138038 (and (inv!76476 (c!858945 totalInput!1141)) tp!1408203))))

(declare-fun b!5023329 () Bool)

(declare-fun res!2141572 () Bool)

(declare-fun e!3138039 () Bool)

(assert (=> b!5023329 (=> (not res!2141572) (not e!3138039))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13873 0))(
  ( (ElementMatch!13873 (c!858946 C!27996)) (Concat!22666 (regOne!28258 Regex!13873) (regTwo!28258 Regex!13873)) (EmptyExpr!13873) (Star!13873 (reg!14202 Regex!13873)) (EmptyLang!13873) (Union!13873 (regOne!28259 Regex!13873) (regTwo!28259 Regex!13873)) )
))
(declare-datatypes ((List!58193 0))(
  ( (Nil!58069) (Cons!58069 (h!64517 Regex!13873) (t!370585 List!58193)) )
))
(declare-datatypes ((Context!6596 0))(
  ( (Context!6597 (exprs!3798 List!58193)) )
))
(declare-fun z!4747 () (InoxSet Context!6596))

(declare-fun lostCauseZipper!887 ((InoxSet Context!6596)) Bool)

(assert (=> b!5023329 (= res!2141572 (not (lostCauseZipper!887 z!4747)))))

(declare-fun e!3138040 () Bool)

(declare-fun setNonEmpty!28742 () Bool)

(declare-fun tp!1408202 () Bool)

(declare-fun setRes!28742 () Bool)

(declare-fun setElem!28742 () Context!6596)

(declare-fun inv!76477 (Context!6596) Bool)

(assert (=> setNonEmpty!28742 (= setRes!28742 (and tp!1408202 (inv!76477 setElem!28742) e!3138040))))

(declare-fun setRest!28742 () (InoxSet Context!6596))

(assert (=> setNonEmpty!28742 (= z!4747 ((_ map or) (store ((as const (Array Context!6596 Bool)) false) setElem!28742 true) setRest!28742))))

(declare-fun b!5023330 () Bool)

(declare-fun from!1228 () Int)

(declare-fun lt!2078802 () Int)

(assert (=> b!5023330 (= e!3138039 (and (not (= from!1228 lt!2078802)) (or (> 0 from!1228) (>= from!1228 lt!2078802))))))

(declare-fun b!5023331 () Bool)

(declare-fun tp!1408204 () Bool)

(assert (=> b!5023331 (= e!3138040 tp!1408204)))

(declare-fun res!2141571 () Bool)

(declare-fun e!3138041 () Bool)

(assert (=> start!530970 (=> (not res!2141571) (not e!3138041))))

(assert (=> start!530970 (= res!2141571 (>= from!1228 0))))

(assert (=> start!530970 e!3138041))

(assert (=> start!530970 true))

(declare-fun inv!76478 (BalanceConc!30214) Bool)

(assert (=> start!530970 (and (inv!76478 totalInput!1141) e!3138038)))

(declare-fun condSetEmpty!28742 () Bool)

(assert (=> start!530970 (= condSetEmpty!28742 (= z!4747 ((as const (Array Context!6596 Bool)) false)))))

(assert (=> start!530970 setRes!28742))

(declare-fun setIsEmpty!28742 () Bool)

(assert (=> setIsEmpty!28742 setRes!28742))

(declare-fun b!5023332 () Bool)

(assert (=> b!5023332 (= e!3138041 e!3138039)))

(declare-fun res!2141573 () Bool)

(assert (=> b!5023332 (=> (not res!2141573) (not e!3138039))))

(assert (=> b!5023332 (= res!2141573 (<= from!1228 lt!2078802))))

(declare-fun size!38644 (BalanceConc!30214) Int)

(assert (=> b!5023332 (= lt!2078802 (size!38644 totalInput!1141))))

(assert (= (and start!530970 res!2141571) b!5023332))

(assert (= (and b!5023332 res!2141573) b!5023329))

(assert (= (and b!5023329 res!2141572) b!5023330))

(assert (= start!530970 b!5023328))

(assert (= (and start!530970 condSetEmpty!28742) setIsEmpty!28742))

(assert (= (and start!530970 (not condSetEmpty!28742)) setNonEmpty!28742))

(assert (= setNonEmpty!28742 b!5023331))

(declare-fun m!6058392 () Bool)

(assert (=> b!5023332 m!6058392))

(declare-fun m!6058394 () Bool)

(assert (=> b!5023328 m!6058394))

(declare-fun m!6058396 () Bool)

(assert (=> start!530970 m!6058396))

(declare-fun m!6058398 () Bool)

(assert (=> setNonEmpty!28742 m!6058398))

(declare-fun m!6058400 () Bool)

(assert (=> b!5023329 m!6058400))

(check-sat (not b!5023329) (not setNonEmpty!28742) (not start!530970) (not b!5023332) (not b!5023328) (not b!5023331))
(check-sat)
