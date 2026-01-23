; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530198 () Bool)

(assert start!530198)

(declare-fun b!5018296 () Bool)

(declare-fun res!2139877 () Bool)

(declare-fun e!3135030 () Bool)

(assert (=> b!5018296 (=> (not res!2139877) (not e!3135030))))

(declare-datatypes ((C!27900 0))(
  ( (C!27901 (val!23316 Int)) )
))
(declare-datatypes ((List!58074 0))(
  ( (Nil!57950) (Cons!57950 (h!64398 C!27900) (t!370450 List!58074)) )
))
(declare-fun lt!2076924 () List!58074)

(declare-fun knownSize!24 () Int)

(declare-fun size!38534 (List!58074) Int)

(assert (=> b!5018296 (= res!2139877 (= (size!38534 lt!2076924) knownSize!24))))

(declare-fun b!5018297 () Bool)

(declare-fun e!3135027 () Bool)

(assert (=> b!5018297 (= e!3135027 e!3135030)))

(declare-fun res!2139874 () Bool)

(assert (=> b!5018297 (=> (not res!2139874) (not e!3135030))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13825 0))(
  ( (ElementMatch!13825 (c!857445 C!27900)) (Concat!22618 (regOne!28162 Regex!13825) (regTwo!28162 Regex!13825)) (EmptyExpr!13825) (Star!13825 (reg!14154 Regex!13825)) (EmptyLang!13825) (Union!13825 (regOne!28163 Regex!13825) (regTwo!28163 Regex!13825)) )
))
(declare-datatypes ((List!58075 0))(
  ( (Nil!57951) (Cons!57951 (h!64399 Regex!13825) (t!370451 List!58075)) )
))
(declare-datatypes ((Context!6500 0))(
  ( (Context!6501 (exprs!3750 List!58075)) )
))
(declare-fun z!4710 () (InoxSet Context!6500))

(declare-fun matchZipper!593 ((InoxSet Context!6500) List!58074) Bool)

(assert (=> b!5018297 (= res!2139874 (matchZipper!593 z!4710 lt!2076924))))

(declare-fun from!1212 () Int)

(declare-datatypes ((IArray!30749 0))(
  ( (IArray!30750 (innerList!15432 List!58074)) )
))
(declare-datatypes ((Conc!15344 0))(
  ( (Node!15344 (left!42362 Conc!15344) (right!42692 Conc!15344) (csize!30918 Int) (cheight!15555 Int)) (Leaf!25465 (xs!18670 IArray!30749) (csize!30919 Int)) (Empty!15344) )
))
(declare-datatypes ((BalanceConc!30118 0))(
  ( (BalanceConc!30119 (c!857446 Conc!15344)) )
))
(declare-fun totalInput!1125 () BalanceConc!30118)

(declare-fun take!684 (List!58074 Int) List!58074)

(declare-fun drop!2488 (List!58074 Int) List!58074)

(declare-fun list!18672 (BalanceConc!30118) List!58074)

(assert (=> b!5018297 (= lt!2076924 (take!684 (drop!2488 (list!18672 totalInput!1125) from!1212) knownSize!24))))

(declare-fun setRes!28546 () Bool)

(declare-fun setNonEmpty!28546 () Bool)

(declare-fun setElem!28546 () Context!6500)

(declare-fun tp!1407265 () Bool)

(declare-fun e!3135026 () Bool)

(declare-fun inv!76200 (Context!6500) Bool)

(assert (=> setNonEmpty!28546 (= setRes!28546 (and tp!1407265 (inv!76200 setElem!28546) e!3135026))))

(declare-fun setRest!28546 () (InoxSet Context!6500))

(assert (=> setNonEmpty!28546 (= z!4710 ((_ map or) (store ((as const (Array Context!6500 Bool)) false) setElem!28546 true) setRest!28546))))

(declare-fun b!5018298 () Bool)

(declare-fun e!3135028 () Bool)

(declare-fun lt!2076923 () Int)

(assert (=> b!5018298 (= e!3135028 (= from!1212 lt!2076923))))

(declare-fun b!5018299 () Bool)

(declare-fun tp!1407266 () Bool)

(assert (=> b!5018299 (= e!3135026 tp!1407266)))

(declare-fun b!5018300 () Bool)

(declare-fun e!3135031 () Bool)

(assert (=> b!5018300 (= e!3135031 e!3135027)))

(declare-fun res!2139876 () Bool)

(assert (=> b!5018300 (=> (not res!2139876) (not e!3135027))))

(assert (=> b!5018300 (= res!2139876 (and (<= from!1212 lt!2076923) (>= knownSize!24 0) (<= knownSize!24 (- lt!2076923 from!1212))))))

(declare-fun size!38535 (BalanceConc!30118) Int)

(assert (=> b!5018300 (= lt!2076923 (size!38535 totalInput!1125))))

(declare-fun setIsEmpty!28546 () Bool)

(assert (=> setIsEmpty!28546 setRes!28546))

(declare-fun b!5018302 () Bool)

(declare-fun res!2139879 () Bool)

(assert (=> b!5018302 (=> (not res!2139879) (not e!3135030))))

(assert (=> b!5018302 (= res!2139879 e!3135028)))

(declare-fun res!2139873 () Bool)

(assert (=> b!5018302 (=> res!2139873 e!3135028)))

(declare-fun lostCauseZipper!844 ((InoxSet Context!6500)) Bool)

(assert (=> b!5018302 (= res!2139873 (lostCauseZipper!844 z!4710))))

(declare-fun b!5018303 () Bool)

(assert (=> b!5018303 (= e!3135030 (not true))))

(assert (=> b!5018303 false))

(declare-datatypes ((Unit!149179 0))(
  ( (Unit!149180) )
))
(declare-fun lt!2076922 () Unit!149179)

(declare-fun lemmaLostCauseCannotMatch!47 ((InoxSet Context!6500) List!58074) Unit!149179)

(assert (=> b!5018303 (= lt!2076922 (lemmaLostCauseCannotMatch!47 z!4710 lt!2076924))))

(declare-fun b!5018304 () Bool)

(declare-fun e!3135029 () Bool)

(declare-fun tp!1407264 () Bool)

(declare-fun inv!76201 (Conc!15344) Bool)

(assert (=> b!5018304 (= e!3135029 (and (inv!76201 (c!857446 totalInput!1125)) tp!1407264))))

(declare-fun res!2139875 () Bool)

(assert (=> start!530198 (=> (not res!2139875) (not e!3135031))))

(assert (=> start!530198 (= res!2139875 (>= from!1212 0))))

(assert (=> start!530198 e!3135031))

(assert (=> start!530198 true))

(declare-fun inv!76202 (BalanceConc!30118) Bool)

(assert (=> start!530198 (and (inv!76202 totalInput!1125) e!3135029)))

(declare-fun condSetEmpty!28546 () Bool)

(assert (=> start!530198 (= condSetEmpty!28546 (= z!4710 ((as const (Array Context!6500 Bool)) false)))))

(assert (=> start!530198 setRes!28546))

(declare-fun b!5018301 () Bool)

(declare-fun res!2139878 () Bool)

(assert (=> b!5018301 (=> (not res!2139878) (not e!3135030))))

(assert (=> b!5018301 (= res!2139878 (and (not (= knownSize!24 0)) (> knownSize!24 0)))))

(assert (= (and start!530198 res!2139875) b!5018300))

(assert (= (and b!5018300 res!2139876) b!5018297))

(assert (= (and b!5018297 res!2139874) b!5018301))

(assert (= (and b!5018301 res!2139878) b!5018296))

(assert (= (and b!5018296 res!2139877) b!5018302))

(assert (= (and b!5018302 (not res!2139873)) b!5018298))

(assert (= (and b!5018302 res!2139879) b!5018303))

(assert (= start!530198 b!5018304))

(assert (= (and start!530198 condSetEmpty!28546) setIsEmpty!28546))

(assert (= (and start!530198 (not condSetEmpty!28546)) setNonEmpty!28546))

(assert (= setNonEmpty!28546 b!5018299))

(declare-fun m!6053572 () Bool)

(assert (=> b!5018296 m!6053572))

(declare-fun m!6053574 () Bool)

(assert (=> b!5018302 m!6053574))

(declare-fun m!6053576 () Bool)

(assert (=> setNonEmpty!28546 m!6053576))

(declare-fun m!6053578 () Bool)

(assert (=> b!5018303 m!6053578))

(declare-fun m!6053580 () Bool)

(assert (=> start!530198 m!6053580))

(declare-fun m!6053582 () Bool)

(assert (=> b!5018304 m!6053582))

(declare-fun m!6053584 () Bool)

(assert (=> b!5018297 m!6053584))

(declare-fun m!6053586 () Bool)

(assert (=> b!5018297 m!6053586))

(assert (=> b!5018297 m!6053586))

(declare-fun m!6053588 () Bool)

(assert (=> b!5018297 m!6053588))

(assert (=> b!5018297 m!6053588))

(declare-fun m!6053590 () Bool)

(assert (=> b!5018297 m!6053590))

(declare-fun m!6053592 () Bool)

(assert (=> b!5018300 m!6053592))

(check-sat (not b!5018303) (not start!530198) (not b!5018302) (not b!5018297) (not b!5018299) (not b!5018304) (not b!5018300) (not b!5018296) (not setNonEmpty!28546))
(check-sat)
