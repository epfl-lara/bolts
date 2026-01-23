; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530210 () Bool)

(assert start!530210)

(declare-fun b!5018452 () Bool)

(declare-fun res!2139996 () Bool)

(declare-fun e!3135121 () Bool)

(assert (=> b!5018452 (=> (not res!2139996) (not e!3135121))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!27912 0))(
  ( (C!27913 (val!23322 Int)) )
))
(declare-datatypes ((Regex!13831 0))(
  ( (ElementMatch!13831 (c!857457 C!27912)) (Concat!22624 (regOne!28174 Regex!13831) (regTwo!28174 Regex!13831)) (EmptyExpr!13831) (Star!13831 (reg!14160 Regex!13831)) (EmptyLang!13831) (Union!13831 (regOne!28175 Regex!13831) (regTwo!28175 Regex!13831)) )
))
(declare-datatypes ((List!58086 0))(
  ( (Nil!57962) (Cons!57962 (h!64410 Regex!13831) (t!370462 List!58086)) )
))
(declare-datatypes ((Context!6512 0))(
  ( (Context!6513 (exprs!3756 List!58086)) )
))
(declare-fun z!4710 () (InoxSet Context!6512))

(declare-fun lostCauseZipper!850 ((InoxSet Context!6512)) Bool)

(assert (=> b!5018452 (= res!2139996 (not (lostCauseZipper!850 z!4710)))))

(declare-fun b!5018453 () Bool)

(declare-fun res!2139997 () Bool)

(assert (=> b!5018453 (=> (not res!2139997) (not e!3135121))))

(declare-datatypes ((List!58087 0))(
  ( (Nil!57963) (Cons!57963 (h!64411 C!27912) (t!370463 List!58087)) )
))
(declare-fun lt!2076971 () List!58087)

(declare-fun knownSize!24 () Int)

(declare-fun size!38546 (List!58087) Int)

(assert (=> b!5018453 (= res!2139997 (= (size!38546 lt!2076971) knownSize!24))))

(declare-fun b!5018454 () Bool)

(declare-fun e!3135118 () Bool)

(assert (=> b!5018454 (= e!3135118 e!3135121)))

(declare-fun res!2139998 () Bool)

(assert (=> b!5018454 (=> (not res!2139998) (not e!3135121))))

(declare-fun matchZipper!599 ((InoxSet Context!6512) List!58087) Bool)

(assert (=> b!5018454 (= res!2139998 (matchZipper!599 z!4710 lt!2076971))))

(declare-fun from!1212 () Int)

(declare-datatypes ((IArray!30761 0))(
  ( (IArray!30762 (innerList!15438 List!58087)) )
))
(declare-datatypes ((Conc!15350 0))(
  ( (Node!15350 (left!42371 Conc!15350) (right!42701 Conc!15350) (csize!30930 Int) (cheight!15561 Int)) (Leaf!25474 (xs!18676 IArray!30761) (csize!30931 Int)) (Empty!15350) )
))
(declare-datatypes ((BalanceConc!30130 0))(
  ( (BalanceConc!30131 (c!857458 Conc!15350)) )
))
(declare-fun totalInput!1125 () BalanceConc!30130)

(declare-fun take!690 (List!58087 Int) List!58087)

(declare-fun drop!2494 (List!58087 Int) List!58087)

(declare-fun list!18678 (BalanceConc!30130) List!58087)

(assert (=> b!5018454 (= lt!2076971 (take!690 (drop!2494 (list!18678 totalInput!1125) from!1212) knownSize!24))))

(declare-fun b!5018455 () Bool)

(declare-fun res!2139995 () Bool)

(assert (=> b!5018455 (=> (not res!2139995) (not e!3135121))))

(assert (=> b!5018455 (= res!2139995 (and (not (= knownSize!24 0)) (> knownSize!24 0)))))

(declare-fun b!5018456 () Bool)

(declare-fun res!2139994 () Bool)

(assert (=> b!5018456 (=> (not res!2139994) (not e!3135121))))

(declare-fun lt!2076972 () Int)

(assert (=> b!5018456 (= res!2139994 (not (= from!1212 lt!2076972)))))

(declare-fun tp!1407320 () Bool)

(declare-fun setNonEmpty!28564 () Bool)

(declare-fun e!3135117 () Bool)

(declare-fun setRes!28564 () Bool)

(declare-fun setElem!28564 () Context!6512)

(declare-fun inv!76227 (Context!6512) Bool)

(assert (=> setNonEmpty!28564 (= setRes!28564 (and tp!1407320 (inv!76227 setElem!28564) e!3135117))))

(declare-fun setRest!28564 () (InoxSet Context!6512))

(assert (=> setNonEmpty!28564 (= z!4710 ((_ map or) (store ((as const (Array Context!6512 Bool)) false) setElem!28564 true) setRest!28564))))

(declare-fun b!5018458 () Bool)

(declare-fun tp!1407319 () Bool)

(assert (=> b!5018458 (= e!3135117 tp!1407319)))

(declare-fun b!5018459 () Bool)

(assert (=> b!5018459 (= e!3135121 false)))

(declare-fun lt!2076970 () C!27912)

(declare-fun apply!14018 (BalanceConc!30130 Int) C!27912)

(assert (=> b!5018459 (= lt!2076970 (apply!14018 totalInput!1125 from!1212))))

(declare-fun b!5018460 () Bool)

(declare-fun e!3135119 () Bool)

(declare-fun tp!1407318 () Bool)

(declare-fun inv!76228 (Conc!15350) Bool)

(assert (=> b!5018460 (= e!3135119 (and (inv!76228 (c!857458 totalInput!1125)) tp!1407318))))

(declare-fun setIsEmpty!28564 () Bool)

(assert (=> setIsEmpty!28564 setRes!28564))

(declare-fun res!2139999 () Bool)

(declare-fun e!3135120 () Bool)

(assert (=> start!530210 (=> (not res!2139999) (not e!3135120))))

(assert (=> start!530210 (= res!2139999 (>= from!1212 0))))

(assert (=> start!530210 e!3135120))

(assert (=> start!530210 true))

(declare-fun inv!76229 (BalanceConc!30130) Bool)

(assert (=> start!530210 (and (inv!76229 totalInput!1125) e!3135119)))

(declare-fun condSetEmpty!28564 () Bool)

(assert (=> start!530210 (= condSetEmpty!28564 (= z!4710 ((as const (Array Context!6512 Bool)) false)))))

(assert (=> start!530210 setRes!28564))

(declare-fun b!5018457 () Bool)

(assert (=> b!5018457 (= e!3135120 e!3135118)))

(declare-fun res!2139993 () Bool)

(assert (=> b!5018457 (=> (not res!2139993) (not e!3135118))))

(assert (=> b!5018457 (= res!2139993 (and (<= from!1212 lt!2076972) (>= knownSize!24 0) (<= knownSize!24 (- lt!2076972 from!1212))))))

(declare-fun size!38547 (BalanceConc!30130) Int)

(assert (=> b!5018457 (= lt!2076972 (size!38547 totalInput!1125))))

(assert (= (and start!530210 res!2139999) b!5018457))

(assert (= (and b!5018457 res!2139993) b!5018454))

(assert (= (and b!5018454 res!2139998) b!5018455))

(assert (= (and b!5018455 res!2139995) b!5018453))

(assert (= (and b!5018453 res!2139997) b!5018452))

(assert (= (and b!5018452 res!2139996) b!5018456))

(assert (= (and b!5018456 res!2139994) b!5018459))

(assert (= start!530210 b!5018460))

(assert (= (and start!530210 condSetEmpty!28564) setIsEmpty!28564))

(assert (= (and start!530210 (not condSetEmpty!28564)) setNonEmpty!28564))

(assert (= setNonEmpty!28564 b!5018458))

(declare-fun m!6053700 () Bool)

(assert (=> b!5018454 m!6053700))

(declare-fun m!6053702 () Bool)

(assert (=> b!5018454 m!6053702))

(assert (=> b!5018454 m!6053702))

(declare-fun m!6053704 () Bool)

(assert (=> b!5018454 m!6053704))

(assert (=> b!5018454 m!6053704))

(declare-fun m!6053706 () Bool)

(assert (=> b!5018454 m!6053706))

(declare-fun m!6053708 () Bool)

(assert (=> b!5018460 m!6053708))

(declare-fun m!6053710 () Bool)

(assert (=> b!5018459 m!6053710))

(declare-fun m!6053712 () Bool)

(assert (=> b!5018457 m!6053712))

(declare-fun m!6053714 () Bool)

(assert (=> b!5018452 m!6053714))

(declare-fun m!6053716 () Bool)

(assert (=> setNonEmpty!28564 m!6053716))

(declare-fun m!6053718 () Bool)

(assert (=> start!530210 m!6053718))

(declare-fun m!6053720 () Bool)

(assert (=> b!5018453 m!6053720))

(check-sat (not b!5018460) (not b!5018458) (not b!5018454) (not b!5018457) (not start!530210) (not b!5018453) (not b!5018459) (not b!5018452) (not setNonEmpty!28564))
(check-sat)
