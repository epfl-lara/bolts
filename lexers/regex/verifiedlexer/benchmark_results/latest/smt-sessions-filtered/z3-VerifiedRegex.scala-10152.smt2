; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530982 () Bool)

(assert start!530982)

(declare-fun b!5023435 () Bool)

(declare-fun res!2141645 () Bool)

(declare-fun e!3138112 () Bool)

(assert (=> b!5023435 (=> (not res!2141645) (not e!3138112))))

(declare-fun from!1228 () Int)

(declare-fun lt!2078838 () Int)

(assert (=> b!5023435 (= res!2141645 (not (= from!1228 lt!2078838)))))

(declare-fun res!2141644 () Bool)

(declare-fun e!3138113 () Bool)

(assert (=> start!530982 (=> (not res!2141644) (not e!3138113))))

(assert (=> start!530982 (= res!2141644 (>= from!1228 0))))

(assert (=> start!530982 e!3138113))

(assert (=> start!530982 true))

(declare-datatypes ((C!28008 0))(
  ( (C!28009 (val!23380 Int)) )
))
(declare-datatypes ((List!58204 0))(
  ( (Nil!58080) (Cons!58080 (h!64528 C!28008) (t!370596 List!58204)) )
))
(declare-datatypes ((IArray!30857 0))(
  ( (IArray!30858 (innerList!15486 List!58204)) )
))
(declare-datatypes ((Conc!15398 0))(
  ( (Node!15398 (left!42472 Conc!15398) (right!42802 Conc!15398) (csize!31026 Int) (cheight!15609 Int)) (Leaf!25551 (xs!18724 IArray!30857) (csize!31027 Int)) (Empty!15398) )
))
(declare-datatypes ((BalanceConc!30226 0))(
  ( (BalanceConc!30227 (c!858957 Conc!15398)) )
))
(declare-fun totalInput!1141 () BalanceConc!30226)

(declare-fun e!3138110 () Bool)

(declare-fun inv!76503 (BalanceConc!30226) Bool)

(assert (=> start!530982 (and (inv!76503 totalInput!1141) e!3138110)))

(declare-fun condSetEmpty!28760 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13879 0))(
  ( (ElementMatch!13879 (c!858958 C!28008)) (Concat!22672 (regOne!28270 Regex!13879) (regTwo!28270 Regex!13879)) (EmptyExpr!13879) (Star!13879 (reg!14208 Regex!13879)) (EmptyLang!13879) (Union!13879 (regOne!28271 Regex!13879) (regTwo!28271 Regex!13879)) )
))
(declare-datatypes ((List!58205 0))(
  ( (Nil!58081) (Cons!58081 (h!64529 Regex!13879) (t!370597 List!58205)) )
))
(declare-datatypes ((Context!6608 0))(
  ( (Context!6609 (exprs!3804 List!58205)) )
))
(declare-fun z!4747 () (InoxSet Context!6608))

(assert (=> start!530982 (= condSetEmpty!28760 (= z!4747 ((as const (Array Context!6608 Bool)) false)))))

(declare-fun setRes!28760 () Bool)

(assert (=> start!530982 setRes!28760))

(declare-fun setElem!28760 () Context!6608)

(declare-fun setNonEmpty!28760 () Bool)

(declare-fun e!3138111 () Bool)

(declare-fun tp!1408256 () Bool)

(declare-fun inv!76504 (Context!6608) Bool)

(assert (=> setNonEmpty!28760 (= setRes!28760 (and tp!1408256 (inv!76504 setElem!28760) e!3138111))))

(declare-fun setRest!28760 () (InoxSet Context!6608))

(assert (=> setNonEmpty!28760 (= z!4747 ((_ map or) (store ((as const (Array Context!6608 Bool)) false) setElem!28760 true) setRest!28760))))

(declare-fun b!5023436 () Bool)

(declare-fun tp!1408257 () Bool)

(assert (=> b!5023436 (= e!3138111 tp!1408257)))

(declare-fun b!5023437 () Bool)

(declare-fun tp!1408258 () Bool)

(declare-fun inv!76505 (Conc!15398) Bool)

(assert (=> b!5023437 (= e!3138110 (and (inv!76505 (c!858957 totalInput!1141)) tp!1408258))))

(declare-fun b!5023438 () Bool)

(assert (=> b!5023438 (= e!3138113 e!3138112)))

(declare-fun res!2141643 () Bool)

(assert (=> b!5023438 (=> (not res!2141643) (not e!3138112))))

(assert (=> b!5023438 (= res!2141643 (<= from!1228 lt!2078838))))

(declare-fun size!38650 (BalanceConc!30226) Int)

(assert (=> b!5023438 (= lt!2078838 (size!38650 totalInput!1141))))

(declare-fun b!5023439 () Bool)

(assert (=> b!5023439 (= e!3138112 (or (> 0 from!1228) (>= from!1228 lt!2078838)))))

(declare-fun lt!2078837 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!193 ((InoxSet Context!6608) Int BalanceConc!30226 Int) Int)

(declare-fun derivationStepZipper!675 ((InoxSet Context!6608) C!28008) (InoxSet Context!6608))

(declare-fun apply!14089 (BalanceConc!30226 Int) C!28008)

(assert (=> b!5023439 (= lt!2078837 (findLongestMatchInnerZipperFastV2!193 (derivationStepZipper!675 z!4747 (apply!14089 totalInput!1141 from!1228)) (+ 1 from!1228) totalInput!1141 lt!2078838))))

(declare-fun b!5023440 () Bool)

(declare-fun res!2141642 () Bool)

(assert (=> b!5023440 (=> (not res!2141642) (not e!3138112))))

(declare-fun lostCauseZipper!893 ((InoxSet Context!6608)) Bool)

(assert (=> b!5023440 (= res!2141642 (not (lostCauseZipper!893 z!4747)))))

(declare-fun setIsEmpty!28760 () Bool)

(assert (=> setIsEmpty!28760 setRes!28760))

(assert (= (and start!530982 res!2141644) b!5023438))

(assert (= (and b!5023438 res!2141643) b!5023440))

(assert (= (and b!5023440 res!2141642) b!5023435))

(assert (= (and b!5023435 res!2141645) b!5023439))

(assert (= start!530982 b!5023437))

(assert (= (and start!530982 condSetEmpty!28760) setIsEmpty!28760))

(assert (= (and start!530982 (not condSetEmpty!28760)) setNonEmpty!28760))

(assert (= setNonEmpty!28760 b!5023436))

(declare-fun m!6058466 () Bool)

(assert (=> b!5023437 m!6058466))

(declare-fun m!6058468 () Bool)

(assert (=> start!530982 m!6058468))

(declare-fun m!6058470 () Bool)

(assert (=> setNonEmpty!28760 m!6058470))

(declare-fun m!6058472 () Bool)

(assert (=> b!5023438 m!6058472))

(declare-fun m!6058474 () Bool)

(assert (=> b!5023439 m!6058474))

(assert (=> b!5023439 m!6058474))

(declare-fun m!6058476 () Bool)

(assert (=> b!5023439 m!6058476))

(assert (=> b!5023439 m!6058476))

(declare-fun m!6058478 () Bool)

(assert (=> b!5023439 m!6058478))

(declare-fun m!6058480 () Bool)

(assert (=> b!5023440 m!6058480))

(check-sat (not b!5023437) (not setNonEmpty!28760) (not b!5023436) (not b!5023438) (not b!5023440) (not start!530982) (not b!5023439))
(check-sat)
