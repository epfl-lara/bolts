; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!531002 () Bool)

(assert start!531002)

(declare-fun b!5023665 () Bool)

(declare-fun e!3138281 () Bool)

(declare-fun e!3138280 () Bool)

(assert (=> b!5023665 (= e!3138281 e!3138280)))

(declare-fun res!2141816 () Bool)

(assert (=> b!5023665 (=> res!2141816 e!3138280)))

(declare-datatypes ((C!28028 0))(
  ( (C!28029 (val!23390 Int)) )
))
(declare-datatypes ((List!58224 0))(
  ( (Nil!58100) (Cons!58100 (h!64548 C!28028) (t!370616 List!58224)) )
))
(declare-fun lt!2079030 () List!58224)

(declare-fun lt!2079024 () List!58224)

(declare-fun lt!2079029 () C!28028)

(assert (=> b!5023665 (= res!2141816 (not (= lt!2079024 (Cons!58100 lt!2079029 lt!2079030))))))

(declare-fun from!1228 () Int)

(declare-fun lt!2079022 () List!58224)

(declare-fun apply!14102 (List!58224 Int) C!28028)

(assert (=> b!5023665 (= (Cons!58100 (apply!14102 lt!2079022 from!1228) lt!2079030) lt!2079024)))

(declare-datatypes ((Unit!149283 0))(
  ( (Unit!149284) )
))
(declare-fun lt!2079026 () Unit!149283)

(declare-fun lt!2079027 () Int)

(declare-fun lemmaDropTakeAddOneLeft!76 (List!58224 Int Int) Unit!149283)

(assert (=> b!5023665 (= lt!2079026 (lemmaDropTakeAddOneLeft!76 lt!2079022 from!1228 lt!2079027))))

(declare-fun take!740 (List!58224 Int) List!58224)

(declare-fun drop!2540 (List!58224 Int) List!58224)

(assert (=> b!5023665 (= lt!2079024 (take!740 (drop!2540 lt!2079022 from!1228) (+ 1 lt!2079027)))))

(declare-fun b!5023666 () Bool)

(declare-fun res!2141815 () Bool)

(declare-fun e!3138275 () Bool)

(assert (=> b!5023666 (=> (not res!2141815) (not e!3138275))))

(declare-fun lt!2079025 () Int)

(assert (=> b!5023666 (= res!2141815 (not (= from!1228 lt!2079025)))))

(declare-fun b!5023667 () Bool)

(declare-fun res!2141814 () Bool)

(assert (=> b!5023667 (=> res!2141814 e!3138280)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13889 0))(
  ( (ElementMatch!13889 (c!858977 C!28028)) (Concat!22682 (regOne!28290 Regex!13889) (regTwo!28290 Regex!13889)) (EmptyExpr!13889) (Star!13889 (reg!14218 Regex!13889)) (EmptyLang!13889) (Union!13889 (regOne!28291 Regex!13889) (regTwo!28291 Regex!13889)) )
))
(declare-datatypes ((List!58225 0))(
  ( (Nil!58101) (Cons!58101 (h!64549 Regex!13889) (t!370617 List!58225)) )
))
(declare-datatypes ((Context!6628 0))(
  ( (Context!6629 (exprs!3814 List!58225)) )
))
(declare-fun lt!2079028 () (InoxSet Context!6628))

(declare-fun matchZipper!643 ((InoxSet Context!6628) List!58224) Bool)

(assert (=> b!5023667 (= res!2141814 (not (matchZipper!643 lt!2079028 lt!2079030)))))

(declare-fun b!5023668 () Bool)

(declare-fun e!3138279 () Bool)

(declare-fun tp!1408347 () Bool)

(assert (=> b!5023668 (= e!3138279 tp!1408347)))

(declare-datatypes ((IArray!30877 0))(
  ( (IArray!30878 (innerList!15496 List!58224)) )
))
(declare-datatypes ((Conc!15408 0))(
  ( (Node!15408 (left!42487 Conc!15408) (right!42817 Conc!15408) (csize!31046 Int) (cheight!15619 Int)) (Leaf!25566 (xs!18734 IArray!30877) (csize!31047 Int)) (Empty!15408) )
))
(declare-datatypes ((BalanceConc!30246 0))(
  ( (BalanceConc!30247 (c!858978 Conc!15408)) )
))
(declare-fun totalInput!1141 () BalanceConc!30246)

(declare-fun b!5023669 () Bool)

(declare-fun e!3138276 () Bool)

(declare-fun list!18742 (BalanceConc!30246) List!58224)

(assert (=> b!5023669 (= e!3138276 (matchZipper!643 lt!2079028 (take!740 (drop!2540 (list!18742 totalInput!1141) (+ 1 from!1228)) lt!2079027)))))

(declare-fun b!5023670 () Bool)

(assert (=> b!5023670 (= e!3138275 (not e!3138281))))

(declare-fun res!2141817 () Bool)

(assert (=> b!5023670 (=> res!2141817 e!3138281)))

(assert (=> b!5023670 (= res!2141817 (<= lt!2079027 0))))

(assert (=> b!5023670 (= lt!2079030 (take!740 (drop!2540 lt!2079022 (+ 1 from!1228)) lt!2079027))))

(assert (=> b!5023670 (= lt!2079022 (list!18742 totalInput!1141))))

(assert (=> b!5023670 e!3138276))

(declare-fun res!2141812 () Bool)

(assert (=> b!5023670 (=> res!2141812 e!3138276)))

(assert (=> b!5023670 (= res!2141812 (= lt!2079027 0))))

(declare-fun lt!2079023 () Unit!149283)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!86 ((InoxSet Context!6628) Int BalanceConc!30246) Unit!149283)

(assert (=> b!5023670 (= lt!2079023 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!86 lt!2079028 (+ 1 from!1228) totalInput!1141))))

(declare-fun findLongestMatchInnerZipperFastV2!203 ((InoxSet Context!6628) Int BalanceConc!30246 Int) Int)

(assert (=> b!5023670 (= lt!2079027 (findLongestMatchInnerZipperFastV2!203 lt!2079028 (+ 1 from!1228) totalInput!1141 lt!2079025))))

(declare-fun z!4747 () (InoxSet Context!6628))

(declare-fun derivationStepZipper!685 ((InoxSet Context!6628) C!28028) (InoxSet Context!6628))

(assert (=> b!5023670 (= lt!2079028 (derivationStepZipper!685 z!4747 lt!2079029))))

(declare-fun apply!14103 (BalanceConc!30246 Int) C!28028)

(assert (=> b!5023670 (= lt!2079029 (apply!14103 totalInput!1141 from!1228))))

(declare-fun setIsEmpty!28790 () Bool)

(declare-fun setRes!28790 () Bool)

(assert (=> setIsEmpty!28790 setRes!28790))

(declare-fun b!5023671 () Bool)

(declare-fun e!3138278 () Bool)

(assert (=> b!5023671 (= e!3138278 e!3138275)))

(declare-fun res!2141818 () Bool)

(assert (=> b!5023671 (=> (not res!2141818) (not e!3138275))))

(assert (=> b!5023671 (= res!2141818 (<= from!1228 lt!2079025))))

(declare-fun size!38662 (BalanceConc!30246) Int)

(assert (=> b!5023671 (= lt!2079025 (size!38662 totalInput!1141))))

(declare-fun res!2141819 () Bool)

(assert (=> start!531002 (=> (not res!2141819) (not e!3138278))))

(assert (=> start!531002 (= res!2141819 (>= from!1228 0))))

(assert (=> start!531002 e!3138278))

(assert (=> start!531002 true))

(declare-fun e!3138277 () Bool)

(declare-fun inv!76548 (BalanceConc!30246) Bool)

(assert (=> start!531002 (and (inv!76548 totalInput!1141) e!3138277)))

(declare-fun condSetEmpty!28790 () Bool)

(assert (=> start!531002 (= condSetEmpty!28790 (= z!4747 ((as const (Array Context!6628 Bool)) false)))))

(assert (=> start!531002 setRes!28790))

(declare-fun b!5023672 () Bool)

(assert (=> b!5023672 (= e!3138280 (and (<= 0 from!1228) (< from!1228 lt!2079025)))))

(declare-fun b!5023673 () Bool)

(declare-fun res!2141813 () Bool)

(assert (=> b!5023673 (=> (not res!2141813) (not e!3138275))))

(declare-fun lostCauseZipper!903 ((InoxSet Context!6628)) Bool)

(assert (=> b!5023673 (= res!2141813 (not (lostCauseZipper!903 z!4747)))))

(declare-fun setNonEmpty!28790 () Bool)

(declare-fun setElem!28790 () Context!6628)

(declare-fun tp!1408346 () Bool)

(declare-fun inv!76549 (Context!6628) Bool)

(assert (=> setNonEmpty!28790 (= setRes!28790 (and tp!1408346 (inv!76549 setElem!28790) e!3138279))))

(declare-fun setRest!28790 () (InoxSet Context!6628))

(assert (=> setNonEmpty!28790 (= z!4747 ((_ map or) (store ((as const (Array Context!6628 Bool)) false) setElem!28790 true) setRest!28790))))

(declare-fun b!5023674 () Bool)

(declare-fun tp!1408348 () Bool)

(declare-fun inv!76550 (Conc!15408) Bool)

(assert (=> b!5023674 (= e!3138277 (and (inv!76550 (c!858978 totalInput!1141)) tp!1408348))))

(assert (= (and start!531002 res!2141819) b!5023671))

(assert (= (and b!5023671 res!2141818) b!5023673))

(assert (= (and b!5023673 res!2141813) b!5023666))

(assert (= (and b!5023666 res!2141815) b!5023670))

(assert (= (and b!5023670 (not res!2141812)) b!5023669))

(assert (= (and b!5023670 (not res!2141817)) b!5023665))

(assert (= (and b!5023665 (not res!2141816)) b!5023667))

(assert (= (and b!5023667 (not res!2141814)) b!5023672))

(assert (= start!531002 b!5023674))

(assert (= (and start!531002 condSetEmpty!28790) setIsEmpty!28790))

(assert (= (and start!531002 (not condSetEmpty!28790)) setNonEmpty!28790))

(assert (= setNonEmpty!28790 b!5023668))

(declare-fun m!6058754 () Bool)

(assert (=> b!5023665 m!6058754))

(declare-fun m!6058756 () Bool)

(assert (=> b!5023665 m!6058756))

(declare-fun m!6058758 () Bool)

(assert (=> b!5023665 m!6058758))

(assert (=> b!5023665 m!6058758))

(declare-fun m!6058760 () Bool)

(assert (=> b!5023665 m!6058760))

(declare-fun m!6058762 () Bool)

(assert (=> b!5023671 m!6058762))

(declare-fun m!6058764 () Bool)

(assert (=> b!5023669 m!6058764))

(assert (=> b!5023669 m!6058764))

(declare-fun m!6058766 () Bool)

(assert (=> b!5023669 m!6058766))

(assert (=> b!5023669 m!6058766))

(declare-fun m!6058768 () Bool)

(assert (=> b!5023669 m!6058768))

(assert (=> b!5023669 m!6058768))

(declare-fun m!6058770 () Bool)

(assert (=> b!5023669 m!6058770))

(declare-fun m!6058772 () Bool)

(assert (=> b!5023667 m!6058772))

(declare-fun m!6058774 () Bool)

(assert (=> setNonEmpty!28790 m!6058774))

(declare-fun m!6058776 () Bool)

(assert (=> b!5023673 m!6058776))

(declare-fun m!6058778 () Bool)

(assert (=> start!531002 m!6058778))

(declare-fun m!6058780 () Bool)

(assert (=> b!5023674 m!6058780))

(declare-fun m!6058782 () Bool)

(assert (=> b!5023670 m!6058782))

(declare-fun m!6058784 () Bool)

(assert (=> b!5023670 m!6058784))

(declare-fun m!6058786 () Bool)

(assert (=> b!5023670 m!6058786))

(assert (=> b!5023670 m!6058784))

(declare-fun m!6058788 () Bool)

(assert (=> b!5023670 m!6058788))

(assert (=> b!5023670 m!6058764))

(declare-fun m!6058790 () Bool)

(assert (=> b!5023670 m!6058790))

(declare-fun m!6058792 () Bool)

(assert (=> b!5023670 m!6058792))

(check-sat (not b!5023673) (not setNonEmpty!28790) (not b!5023671) (not b!5023667) (not b!5023668) (not b!5023665) (not b!5023669) (not b!5023670) (not b!5023674) (not start!531002))
(check-sat)
