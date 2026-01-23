; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530726 () Bool)

(assert start!530726)

(declare-fun b!5021802 () Bool)

(declare-fun res!2141100 () Bool)

(declare-fun e!3137107 () Bool)

(assert (=> b!5021802 (=> (not res!2141100) (not e!3137107))))

(declare-fun from!1212 () Int)

(declare-fun lt!2078357 () Int)

(assert (=> b!5021802 (= res!2141100 (not (= from!1212 lt!2078357)))))

(declare-fun b!5021803 () Bool)

(declare-fun e!3137109 () Bool)

(declare-fun knownSize!24 () Int)

(assert (=> b!5021803 (= e!3137109 (< (- knownSize!24 1) knownSize!24))))

(declare-fun b!5021804 () Bool)

(declare-fun e!3137106 () Bool)

(declare-fun e!3137108 () Bool)

(assert (=> b!5021804 (= e!3137106 e!3137108)))

(declare-fun res!2141102 () Bool)

(assert (=> b!5021804 (=> (not res!2141102) (not e!3137108))))

(assert (=> b!5021804 (= res!2141102 (and (<= from!1212 lt!2078357) (>= knownSize!24 0) (<= knownSize!24 (- lt!2078357 from!1212))))))

(declare-datatypes ((C!27980 0))(
  ( (C!27981 (val!23356 Int)) )
))
(declare-datatypes ((List!58164 0))(
  ( (Nil!58040) (Cons!58040 (h!64488 C!27980) (t!370548 List!58164)) )
))
(declare-datatypes ((IArray!30829 0))(
  ( (IArray!30830 (innerList!15472 List!58164)) )
))
(declare-datatypes ((Conc!15384 0))(
  ( (Node!15384 (left!42442 Conc!15384) (right!42772 Conc!15384) (csize!30998 Int) (cheight!15595 Int)) (Leaf!25525 (xs!18710 IArray!30829) (csize!30999 Int)) (Empty!15384) )
))
(declare-datatypes ((BalanceConc!30198 0))(
  ( (BalanceConc!30199 (c!858475 Conc!15384)) )
))
(declare-fun totalInput!1125 () BalanceConc!30198)

(declare-fun size!38625 (BalanceConc!30198) Int)

(assert (=> b!5021804 (= lt!2078357 (size!38625 totalInput!1125))))

(declare-fun b!5021805 () Bool)

(declare-fun res!2141097 () Bool)

(assert (=> b!5021805 (=> (not res!2141097) (not e!3137107))))

(declare-fun lt!2078348 () List!58164)

(declare-fun size!38626 (List!58164) Int)

(assert (=> b!5021805 (= res!2141097 (= (size!38626 lt!2078348) knownSize!24))))

(declare-fun b!5021806 () Bool)

(declare-fun res!2141103 () Bool)

(assert (=> b!5021806 (=> res!2141103 e!3137109)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13865 0))(
  ( (ElementMatch!13865 (c!858476 C!27980)) (Concat!22658 (regOne!28242 Regex!13865) (regTwo!28242 Regex!13865)) (EmptyExpr!13865) (Star!13865 (reg!14194 Regex!13865)) (EmptyLang!13865) (Union!13865 (regOne!28243 Regex!13865) (regTwo!28243 Regex!13865)) )
))
(declare-datatypes ((List!58165 0))(
  ( (Nil!58041) (Cons!58041 (h!64489 Regex!13865) (t!370549 List!58165)) )
))
(declare-datatypes ((Context!6580 0))(
  ( (Context!6581 (exprs!3790 List!58165)) )
))
(declare-fun lt!2078358 () (InoxSet Context!6580))

(declare-fun lt!2078356 () List!58164)

(declare-fun matchZipper!633 ((InoxSet Context!6580) List!58164) Bool)

(assert (=> b!5021806 (= res!2141103 (not (matchZipper!633 lt!2078358 lt!2078356)))))

(declare-fun b!5021807 () Bool)

(assert (=> b!5021807 (= e!3137108 e!3137107)))

(declare-fun res!2141098 () Bool)

(assert (=> b!5021807 (=> (not res!2141098) (not e!3137107))))

(declare-fun z!4710 () (InoxSet Context!6580))

(assert (=> b!5021807 (= res!2141098 (matchZipper!633 z!4710 lt!2078348))))

(declare-fun lt!2078349 () List!58164)

(declare-fun take!724 (List!58164 Int) List!58164)

(assert (=> b!5021807 (= lt!2078348 (take!724 lt!2078349 knownSize!24))))

(declare-fun lt!2078355 () List!58164)

(declare-fun drop!2528 (List!58164 Int) List!58164)

(assert (=> b!5021807 (= lt!2078349 (drop!2528 lt!2078355 from!1212))))

(declare-fun list!18726 (BalanceConc!30198) List!58164)

(assert (=> b!5021807 (= lt!2078355 (list!18726 totalInput!1125))))

(declare-fun b!5021808 () Bool)

(declare-fun res!2141099 () Bool)

(assert (=> b!5021808 (=> (not res!2141099) (not e!3137107))))

(declare-fun lostCauseZipper!879 ((InoxSet Context!6580)) Bool)

(assert (=> b!5021808 (= res!2141099 (not (lostCauseZipper!879 z!4710)))))

(declare-fun res!2141104 () Bool)

(assert (=> start!530726 (=> (not res!2141104) (not e!3137106))))

(assert (=> start!530726 (= res!2141104 (>= from!1212 0))))

(assert (=> start!530726 e!3137106))

(assert (=> start!530726 true))

(declare-fun e!3137110 () Bool)

(declare-fun inv!76419 (BalanceConc!30198) Bool)

(assert (=> start!530726 (and (inv!76419 totalInput!1125) e!3137110)))

(declare-fun condSetEmpty!28710 () Bool)

(assert (=> start!530726 (= condSetEmpty!28710 (= z!4710 ((as const (Array Context!6580 Bool)) false)))))

(declare-fun setRes!28710 () Bool)

(assert (=> start!530726 setRes!28710))

(declare-fun b!5021809 () Bool)

(assert (=> b!5021809 (= e!3137107 (not e!3137109))))

(declare-fun res!2141105 () Bool)

(assert (=> b!5021809 (=> res!2141105 e!3137109)))

(assert (=> b!5021809 (= res!2141105 (or (< (+ 1 from!1212) 0) (> (+ 1 from!1212) lt!2078357) (< (- knownSize!24 1) 0) (> (- knownSize!24 1) (- lt!2078357 (+ 1 from!1212)))))))

(declare-fun lt!2078352 () C!27980)

(assert (=> b!5021809 (= (Cons!58040 lt!2078352 lt!2078356) (take!724 lt!2078349 (+ 1 (- knownSize!24 1))))))

(declare-fun lt!2078353 () List!58164)

(assert (=> b!5021809 (= lt!2078356 (take!724 lt!2078353 (- knownSize!24 1)))))

(declare-datatypes ((Unit!149251 0))(
  ( (Unit!149252) )
))
(declare-fun lt!2078354 () Unit!149251)

(declare-fun lemmaDropTakeAddOneLeft!70 (List!58164 Int Int) Unit!149251)

(assert (=> b!5021809 (= lt!2078354 (lemmaDropTakeAddOneLeft!70 lt!2078355 from!1212 (- knownSize!24 1)))))

(declare-fun lt!2078350 () Int)

(assert (=> b!5021809 (= (Cons!58040 lt!2078352 (take!724 lt!2078353 lt!2078350)) (take!724 lt!2078349 (+ 1 lt!2078350)))))

(assert (=> b!5021809 (= lt!2078353 (drop!2528 lt!2078355 (+ 1 from!1212)))))

(declare-fun apply!14074 (List!58164 Int) C!27980)

(assert (=> b!5021809 (= lt!2078352 (apply!14074 lt!2078355 from!1212))))

(declare-fun lt!2078351 () Unit!149251)

(assert (=> b!5021809 (= lt!2078351 (lemmaDropTakeAddOneLeft!70 lt!2078355 from!1212 lt!2078350))))

(declare-fun findLongestMatchInnerZipperFastV2!187 ((InoxSet Context!6580) Int BalanceConc!30198 Int) Int)

(assert (=> b!5021809 (= lt!2078350 (findLongestMatchInnerZipperFastV2!187 lt!2078358 (+ 1 from!1212) totalInput!1125 lt!2078357))))

(declare-fun derivationStepZipper!671 ((InoxSet Context!6580) C!27980) (InoxSet Context!6580))

(declare-fun apply!14075 (BalanceConc!30198 Int) C!27980)

(assert (=> b!5021809 (= lt!2078358 (derivationStepZipper!671 z!4710 (apply!14075 totalInput!1125 from!1212)))))

(declare-fun setIsEmpty!28710 () Bool)

(assert (=> setIsEmpty!28710 setRes!28710))

(declare-fun b!5021810 () Bool)

(declare-fun tp!1407980 () Bool)

(declare-fun inv!76420 (Conc!15384) Bool)

(assert (=> b!5021810 (= e!3137110 (and (inv!76420 (c!858475 totalInput!1125)) tp!1407980))))

(declare-fun setElem!28710 () Context!6580)

(declare-fun tp!1407979 () Bool)

(declare-fun setNonEmpty!28710 () Bool)

(declare-fun e!3137111 () Bool)

(declare-fun inv!76421 (Context!6580) Bool)

(assert (=> setNonEmpty!28710 (= setRes!28710 (and tp!1407979 (inv!76421 setElem!28710) e!3137111))))

(declare-fun setRest!28710 () (InoxSet Context!6580))

(assert (=> setNonEmpty!28710 (= z!4710 ((_ map or) (store ((as const (Array Context!6580 Bool)) false) setElem!28710 true) setRest!28710))))

(declare-fun b!5021811 () Bool)

(declare-fun tp!1407978 () Bool)

(assert (=> b!5021811 (= e!3137111 tp!1407978)))

(declare-fun b!5021812 () Bool)

(declare-fun res!2141101 () Bool)

(assert (=> b!5021812 (=> (not res!2141101) (not e!3137107))))

(assert (=> b!5021812 (= res!2141101 (and (not (= knownSize!24 0)) (> knownSize!24 0)))))

(assert (= (and start!530726 res!2141104) b!5021804))

(assert (= (and b!5021804 res!2141102) b!5021807))

(assert (= (and b!5021807 res!2141098) b!5021812))

(assert (= (and b!5021812 res!2141101) b!5021805))

(assert (= (and b!5021805 res!2141097) b!5021808))

(assert (= (and b!5021808 res!2141099) b!5021802))

(assert (= (and b!5021802 res!2141100) b!5021809))

(assert (= (and b!5021809 (not res!2141105)) b!5021806))

(assert (= (and b!5021806 (not res!2141103)) b!5021803))

(assert (= start!530726 b!5021810))

(assert (= (and start!530726 condSetEmpty!28710) setIsEmpty!28710))

(assert (= (and start!530726 (not condSetEmpty!28710)) setNonEmpty!28710))

(assert (= setNonEmpty!28710 b!5021811))

(declare-fun m!6056838 () Bool)

(assert (=> setNonEmpty!28710 m!6056838))

(declare-fun m!6056840 () Bool)

(assert (=> b!5021806 m!6056840))

(declare-fun m!6056842 () Bool)

(assert (=> b!5021809 m!6056842))

(declare-fun m!6056844 () Bool)

(assert (=> b!5021809 m!6056844))

(declare-fun m!6056846 () Bool)

(assert (=> b!5021809 m!6056846))

(declare-fun m!6056848 () Bool)

(assert (=> b!5021809 m!6056848))

(declare-fun m!6056850 () Bool)

(assert (=> b!5021809 m!6056850))

(assert (=> b!5021809 m!6056846))

(declare-fun m!6056852 () Bool)

(assert (=> b!5021809 m!6056852))

(declare-fun m!6056854 () Bool)

(assert (=> b!5021809 m!6056854))

(declare-fun m!6056856 () Bool)

(assert (=> b!5021809 m!6056856))

(declare-fun m!6056858 () Bool)

(assert (=> b!5021809 m!6056858))

(declare-fun m!6056860 () Bool)

(assert (=> b!5021809 m!6056860))

(declare-fun m!6056862 () Bool)

(assert (=> b!5021809 m!6056862))

(declare-fun m!6056864 () Bool)

(assert (=> b!5021810 m!6056864))

(declare-fun m!6056866 () Bool)

(assert (=> b!5021804 m!6056866))

(declare-fun m!6056868 () Bool)

(assert (=> b!5021807 m!6056868))

(declare-fun m!6056870 () Bool)

(assert (=> b!5021807 m!6056870))

(declare-fun m!6056872 () Bool)

(assert (=> b!5021807 m!6056872))

(declare-fun m!6056874 () Bool)

(assert (=> b!5021807 m!6056874))

(declare-fun m!6056876 () Bool)

(assert (=> b!5021808 m!6056876))

(declare-fun m!6056878 () Bool)

(assert (=> start!530726 m!6056878))

(declare-fun m!6056880 () Bool)

(assert (=> b!5021805 m!6056880))

(check-sat (not b!5021807) (not b!5021811) (not b!5021810) (not b!5021804) (not b!5021806) (not setNonEmpty!28710) (not start!530726) (not b!5021808) (not b!5021809) (not b!5021805))
(check-sat)
