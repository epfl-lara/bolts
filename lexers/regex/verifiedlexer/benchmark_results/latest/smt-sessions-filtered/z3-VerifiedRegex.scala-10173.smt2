; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!531544 () Bool)

(assert start!531544)

(declare-fun b!5027269 () Bool)

(declare-fun e!3140516 () Bool)

(declare-fun tp!1408966 () Bool)

(assert (=> b!5027269 (= e!3140516 tp!1408966)))

(declare-fun tp!1408965 () Bool)

(declare-datatypes ((C!28092 0))(
  ( (C!28093 (val!23422 Int)) )
))
(declare-datatypes ((Regex!13921 0))(
  ( (ElementMatch!13921 (c!860071 C!28092)) (Concat!22714 (regOne!28354 Regex!13921) (regTwo!28354 Regex!13921)) (EmptyExpr!13921) (Star!13921 (reg!14250 Regex!13921)) (EmptyLang!13921) (Union!13921 (regOne!28355 Regex!13921) (regTwo!28355 Regex!13921)) )
))
(declare-datatypes ((List!58297 0))(
  ( (Nil!58173) (Cons!58173 (h!64621 Regex!13921) (t!370705 List!58297)) )
))
(declare-datatypes ((Context!6692 0))(
  ( (Context!6693 (exprs!3846 List!58297)) )
))
(declare-fun setElem!28920 () Context!6692)

(declare-fun setRes!28920 () Bool)

(declare-fun setNonEmpty!28920 () Bool)

(declare-fun inv!76719 (Context!6692) Bool)

(assert (=> setNonEmpty!28920 (= setRes!28920 (and tp!1408965 (inv!76719 setElem!28920) e!3140516))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4747 () (InoxSet Context!6692))

(declare-fun setRest!28920 () (InoxSet Context!6692))

(assert (=> setNonEmpty!28920 (= z!4747 ((_ map or) (store ((as const (Array Context!6692 Bool)) false) setElem!28920 true) setRest!28920))))

(declare-fun b!5027270 () Bool)

(declare-fun res!2143084 () Bool)

(declare-fun e!3140517 () Bool)

(assert (=> b!5027270 (=> (not res!2143084) (not e!3140517))))

(declare-fun from!1228 () Int)

(declare-fun lt!2080631 () Int)

(assert (=> b!5027270 (= res!2143084 (not (= from!1228 lt!2080631)))))

(declare-fun b!5027271 () Bool)

(assert (=> b!5027271 (= e!3140517 (or (< (+ 1 from!1228) 0) (> (+ 1 from!1228) lt!2080631)))))

(declare-datatypes ((List!58298 0))(
  ( (Nil!58174) (Cons!58174 (h!64622 C!28092) (t!370706 List!58298)) )
))
(declare-datatypes ((IArray!30941 0))(
  ( (IArray!30942 (innerList!15528 List!58298)) )
))
(declare-datatypes ((Conc!15440 0))(
  ( (Node!15440 (left!42551 Conc!15440) (right!42881 Conc!15440) (csize!31110 Int) (cheight!15651 Int)) (Leaf!25614 (xs!18766 IArray!30941) (csize!31111 Int)) (Empty!15440) )
))
(declare-datatypes ((BalanceConc!30310 0))(
  ( (BalanceConc!30311 (c!860072 Conc!15440)) )
))
(declare-fun totalInput!1141 () BalanceConc!30310)

(declare-fun lt!2080630 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!235 ((InoxSet Context!6692) Int BalanceConc!30310 Int) Int)

(declare-fun derivationStepZipper!716 ((InoxSet Context!6692) C!28092) (InoxSet Context!6692))

(declare-fun apply!14166 (BalanceConc!30310 Int) C!28092)

(assert (=> b!5027271 (= lt!2080630 (findLongestMatchInnerZipperFastV2!235 (derivationStepZipper!716 z!4747 (apply!14166 totalInput!1141 from!1228)) (+ 1 from!1228) totalInput!1141 lt!2080631))))

(declare-fun b!5027272 () Bool)

(declare-fun e!3140514 () Bool)

(declare-fun tp!1408964 () Bool)

(declare-fun inv!76720 (Conc!15440) Bool)

(assert (=> b!5027272 (= e!3140514 (and (inv!76720 (c!860072 totalInput!1141)) tp!1408964))))

(declare-fun b!5027273 () Bool)

(declare-fun res!2143083 () Bool)

(assert (=> b!5027273 (=> (not res!2143083) (not e!3140517))))

(declare-fun lostCauseZipper!935 ((InoxSet Context!6692)) Bool)

(assert (=> b!5027273 (= res!2143083 (not (lostCauseZipper!935 z!4747)))))

(declare-fun res!2143085 () Bool)

(declare-fun e!3140515 () Bool)

(assert (=> start!531544 (=> (not res!2143085) (not e!3140515))))

(assert (=> start!531544 (= res!2143085 (>= from!1228 0))))

(assert (=> start!531544 e!3140515))

(assert (=> start!531544 true))

(declare-fun inv!76721 (BalanceConc!30310) Bool)

(assert (=> start!531544 (and (inv!76721 totalInput!1141) e!3140514)))

(declare-fun condSetEmpty!28920 () Bool)

(assert (=> start!531544 (= condSetEmpty!28920 (= z!4747 ((as const (Array Context!6692 Bool)) false)))))

(assert (=> start!531544 setRes!28920))

(declare-fun setIsEmpty!28920 () Bool)

(assert (=> setIsEmpty!28920 setRes!28920))

(declare-fun b!5027274 () Bool)

(assert (=> b!5027274 (= e!3140515 e!3140517)))

(declare-fun res!2143082 () Bool)

(assert (=> b!5027274 (=> (not res!2143082) (not e!3140517))))

(assert (=> b!5027274 (= res!2143082 (<= from!1228 lt!2080631))))

(declare-fun size!38714 (BalanceConc!30310) Int)

(assert (=> b!5027274 (= lt!2080631 (size!38714 totalInput!1141))))

(assert (= (and start!531544 res!2143085) b!5027274))

(assert (= (and b!5027274 res!2143082) b!5027273))

(assert (= (and b!5027273 res!2143083) b!5027270))

(assert (= (and b!5027270 res!2143084) b!5027271))

(assert (= start!531544 b!5027272))

(assert (= (and start!531544 condSetEmpty!28920) setIsEmpty!28920))

(assert (= (and start!531544 (not condSetEmpty!28920)) setNonEmpty!28920))

(assert (= setNonEmpty!28920 b!5027269))

(declare-fun m!6062634 () Bool)

(assert (=> b!5027274 m!6062634))

(declare-fun m!6062636 () Bool)

(assert (=> start!531544 m!6062636))

(declare-fun m!6062638 () Bool)

(assert (=> setNonEmpty!28920 m!6062638))

(declare-fun m!6062640 () Bool)

(assert (=> b!5027272 m!6062640))

(declare-fun m!6062642 () Bool)

(assert (=> b!5027271 m!6062642))

(assert (=> b!5027271 m!6062642))

(declare-fun m!6062644 () Bool)

(assert (=> b!5027271 m!6062644))

(assert (=> b!5027271 m!6062644))

(declare-fun m!6062646 () Bool)

(assert (=> b!5027271 m!6062646))

(declare-fun m!6062648 () Bool)

(assert (=> b!5027273 m!6062648))

(check-sat (not b!5027271) (not b!5027274) (not b!5027269) (not b!5027273) (not start!531544) (not b!5027272) (not setNonEmpty!28920))
(check-sat)
