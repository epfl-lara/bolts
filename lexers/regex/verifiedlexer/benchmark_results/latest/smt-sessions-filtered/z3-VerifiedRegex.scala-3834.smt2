; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212650 () Bool)

(assert start!212650)

(declare-fun b!2192632 () Bool)

(declare-fun res!942658 () Bool)

(declare-fun e!1401256 () Bool)

(assert (=> b!2192632 (=> (not res!942658) (not e!1401256))))

(declare-fun from!1114 () Int)

(declare-fun lt!819800 () Int)

(assert (=> b!2192632 (= res!942658 (not (= from!1114 lt!819800)))))

(declare-fun b!2192633 () Bool)

(declare-fun e!1401252 () Bool)

(assert (=> b!2192633 (= e!1401252 e!1401256)))

(declare-fun res!942653 () Bool)

(assert (=> b!2192633 (=> (not res!942653) (not e!1401256))))

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2192633 (= res!942653 (and (<= from!1114 lt!819800) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-datatypes ((C!12416 0))(
  ( (C!12417 (val!7194 Int)) )
))
(declare-datatypes ((List!25546 0))(
  ( (Nil!25462) (Cons!25462 (h!30863 C!12416) (t!198144 List!25546)) )
))
(declare-datatypes ((IArray!16547 0))(
  ( (IArray!16548 (innerList!8331 List!25546)) )
))
(declare-datatypes ((Conc!8271 0))(
  ( (Node!8271 (left!19537 Conc!8271) (right!19867 Conc!8271) (csize!16772 Int) (cheight!8482 Int)) (Leaf!12106 (xs!11213 IArray!16547) (csize!16773 Int)) (Empty!8271) )
))
(declare-datatypes ((BalanceConc!16304 0))(
  ( (BalanceConc!16305 (c!348792 Conc!8271)) )
))
(declare-fun totalInput!923 () BalanceConc!16304)

(declare-fun size!19861 (BalanceConc!16304) Int)

(assert (=> b!2192633 (= lt!819800 (size!19861 totalInput!923))))

(declare-fun b!2192635 () Bool)

(declare-fun e!1401251 () Int)

(assert (=> b!2192635 (= e!1401251 from!1114)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6135 0))(
  ( (ElementMatch!6135 (c!348793 C!12416)) (Concat!10437 (regOne!12782 Regex!6135) (regTwo!12782 Regex!6135)) (EmptyExpr!6135) (Star!6135 (reg!6464 Regex!6135)) (EmptyLang!6135) (Union!6135 (regOne!12783 Regex!6135) (regTwo!12783 Regex!6135)) )
))
(declare-datatypes ((List!25547 0))(
  ( (Nil!25463) (Cons!25463 (h!30864 Regex!6135) (t!198145 List!25547)) )
))
(declare-datatypes ((Context!3410 0))(
  ( (Context!3411 (exprs!2205 List!25547)) )
))
(declare-fun lt!819799 () (InoxSet Context!3410))

(declare-fun b!2192636 () Bool)

(declare-fun e!1401255 () Bool)

(declare-fun lt!819803 () Int)

(declare-fun matchZipper!231 ((InoxSet Context!3410) List!25546) Bool)

(declare-fun take!323 (List!25546 Int) List!25546)

(declare-fun drop!1333 (List!25546 Int) List!25546)

(declare-fun list!9781 (BalanceConc!16304) List!25546)

(assert (=> b!2192636 (= e!1401255 (matchZipper!231 lt!819799 (take!323 (drop!1333 (list!9781 totalInput!923) (+ 1 from!1114)) lt!819803)))))

(declare-fun b!2192637 () Bool)

(assert (=> b!2192637 (= e!1401251 lastNullablePos!193)))

(declare-fun b!2192638 () Bool)

(declare-fun e!1401254 () Bool)

(declare-fun tp!683391 () Bool)

(assert (=> b!2192638 (= e!1401254 tp!683391)))

(declare-fun b!2192639 () Bool)

(declare-fun res!942655 () Bool)

(assert (=> b!2192639 (=> (not res!942655) (not e!1401256))))

(declare-fun z!3955 () (InoxSet Context!3410))

(declare-fun lostCauseZipper!253 ((InoxSet Context!3410)) Bool)

(assert (=> b!2192639 (= res!942655 (not (lostCauseZipper!253 z!3955)))))

(declare-fun setElem!18642 () Context!3410)

(declare-fun setNonEmpty!18642 () Bool)

(declare-fun tp!683392 () Bool)

(declare-fun setRes!18642 () Bool)

(declare-fun inv!34019 (Context!3410) Bool)

(assert (=> setNonEmpty!18642 (= setRes!18642 (and tp!683392 (inv!34019 setElem!18642) e!1401254))))

(declare-fun setRest!18642 () (InoxSet Context!3410))

(assert (=> setNonEmpty!18642 (= z!3955 ((_ map or) (store ((as const (Array Context!3410 Bool)) false) setElem!18642 true) setRest!18642))))

(declare-fun b!2192640 () Bool)

(declare-fun e!1401257 () Bool)

(declare-fun tp!683390 () Bool)

(declare-fun inv!34020 (Conc!8271) Bool)

(assert (=> b!2192640 (= e!1401257 (and (inv!34020 (c!348792 totalInput!923)) tp!683390))))

(declare-fun e!1401250 () Bool)

(declare-fun b!2192641 () Bool)

(declare-fun lt!819802 () Int)

(assert (=> b!2192641 (= e!1401250 (not (or (> lt!819803 0) (<= lt!819802 from!1114))))))

(assert (=> b!2192641 e!1401255))

(declare-fun res!942654 () Bool)

(assert (=> b!2192641 (=> res!942654 e!1401255)))

(assert (=> b!2192641 (= res!942654 (<= lt!819803 0))))

(assert (=> b!2192641 (= lt!819803 (+ 1 (- lt!819802 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38573 0))(
  ( (Unit!38574) )
))
(declare-fun lt!819801 () Unit!38573)

(declare-fun lt!819804 () Int)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!134 ((InoxSet Context!3410) Int BalanceConc!16304 Int) Unit!38573)

(assert (=> b!2192641 (= lt!819801 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!134 lt!819799 (+ 1 from!1114) totalInput!923 lt!819804))))

(declare-fun b!2192642 () Bool)

(assert (=> b!2192642 (= e!1401256 e!1401250)))

(declare-fun res!942652 () Bool)

(assert (=> b!2192642 (=> (not res!942652) (not e!1401250))))

(declare-fun lt!819798 () Int)

(assert (=> b!2192642 (= res!942652 (= lt!819798 lt!819802))))

(declare-fun furthestNullablePosition!305 ((InoxSet Context!3410) Int BalanceConc!16304 Int Int) Int)

(assert (=> b!2192642 (= lt!819802 (furthestNullablePosition!305 lt!819799 (+ 1 from!1114) totalInput!923 lt!819800 lt!819804))))

(assert (=> b!2192642 (= lt!819798 (furthestNullablePosition!305 z!3955 from!1114 totalInput!923 lt!819800 lastNullablePos!193))))

(assert (=> b!2192642 (= lt!819804 e!1401251)))

(declare-fun c!348791 () Bool)

(declare-fun nullableZipper!415 ((InoxSet Context!3410)) Bool)

(assert (=> b!2192642 (= c!348791 (nullableZipper!415 lt!819799))))

(declare-fun derivationStepZipper!209 ((InoxSet Context!3410) C!12416) (InoxSet Context!3410))

(declare-fun apply!6181 (BalanceConc!16304 Int) C!12416)

(assert (=> b!2192642 (= lt!819799 (derivationStepZipper!209 z!3955 (apply!6181 totalInput!923 from!1114)))))

(declare-fun res!942656 () Bool)

(assert (=> start!212650 (=> (not res!942656) (not e!1401252))))

(assert (=> start!212650 (= res!942656 (>= from!1114 0))))

(assert (=> start!212650 e!1401252))

(assert (=> start!212650 true))

(declare-fun inv!34021 (BalanceConc!16304) Bool)

(assert (=> start!212650 (and (inv!34021 totalInput!923) e!1401257)))

(declare-fun condSetEmpty!18642 () Bool)

(assert (=> start!212650 (= condSetEmpty!18642 (= z!3955 ((as const (Array Context!3410 Bool)) false)))))

(assert (=> start!212650 setRes!18642))

(declare-fun b!2192634 () Bool)

(declare-fun e!1401253 () Bool)

(assert (=> b!2192634 (= e!1401253 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2192643 () Bool)

(declare-fun res!942657 () Bool)

(assert (=> b!2192643 (=> (not res!942657) (not e!1401256))))

(assert (=> b!2192643 (= res!942657 e!1401253)))

(declare-fun res!942659 () Bool)

(assert (=> b!2192643 (=> res!942659 e!1401253)))

(assert (=> b!2192643 (= res!942659 (not (nullableZipper!415 z!3955)))))

(declare-fun setIsEmpty!18642 () Bool)

(assert (=> setIsEmpty!18642 setRes!18642))

(assert (= (and start!212650 res!942656) b!2192633))

(assert (= (and b!2192633 res!942653) b!2192643))

(assert (= (and b!2192643 (not res!942659)) b!2192634))

(assert (= (and b!2192643 res!942657) b!2192632))

(assert (= (and b!2192632 res!942658) b!2192639))

(assert (= (and b!2192639 res!942655) b!2192642))

(assert (= (and b!2192642 c!348791) b!2192635))

(assert (= (and b!2192642 (not c!348791)) b!2192637))

(assert (= (and b!2192642 res!942652) b!2192641))

(assert (= (and b!2192641 (not res!942654)) b!2192636))

(assert (= start!212650 b!2192640))

(assert (= (and start!212650 condSetEmpty!18642) setIsEmpty!18642))

(assert (= (and start!212650 (not condSetEmpty!18642)) setNonEmpty!18642))

(assert (= setNonEmpty!18642 b!2192638))

(declare-fun m!2635307 () Bool)

(assert (=> setNonEmpty!18642 m!2635307))

(declare-fun m!2635309 () Bool)

(assert (=> b!2192642 m!2635309))

(declare-fun m!2635311 () Bool)

(assert (=> b!2192642 m!2635311))

(declare-fun m!2635313 () Bool)

(assert (=> b!2192642 m!2635313))

(declare-fun m!2635315 () Bool)

(assert (=> b!2192642 m!2635315))

(assert (=> b!2192642 m!2635315))

(declare-fun m!2635317 () Bool)

(assert (=> b!2192642 m!2635317))

(declare-fun m!2635319 () Bool)

(assert (=> b!2192636 m!2635319))

(assert (=> b!2192636 m!2635319))

(declare-fun m!2635321 () Bool)

(assert (=> b!2192636 m!2635321))

(assert (=> b!2192636 m!2635321))

(declare-fun m!2635323 () Bool)

(assert (=> b!2192636 m!2635323))

(assert (=> b!2192636 m!2635323))

(declare-fun m!2635325 () Bool)

(assert (=> b!2192636 m!2635325))

(declare-fun m!2635327 () Bool)

(assert (=> b!2192639 m!2635327))

(declare-fun m!2635329 () Bool)

(assert (=> b!2192640 m!2635329))

(declare-fun m!2635331 () Bool)

(assert (=> start!212650 m!2635331))

(declare-fun m!2635333 () Bool)

(assert (=> b!2192641 m!2635333))

(declare-fun m!2635335 () Bool)

(assert (=> b!2192633 m!2635335))

(declare-fun m!2635337 () Bool)

(assert (=> b!2192643 m!2635337))

(check-sat (not b!2192636) (not b!2192643) (not b!2192641) (not b!2192639) (not setNonEmpty!18642) (not b!2192642) (not b!2192633) (not start!212650) (not b!2192638) (not b!2192640))
(check-sat)
