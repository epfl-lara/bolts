; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!531612 () Bool)

(assert start!531612)

(declare-fun setNonEmpty!28944 () Bool)

(declare-fun setRes!28944 () Bool)

(declare-fun e!3140811 () Bool)

(declare-datatypes ((C!28104 0))(
  ( (C!28105 (val!23428 Int)) )
))
(declare-datatypes ((Regex!13927 0))(
  ( (ElementMatch!13927 (c!860215 C!28104)) (Concat!22720 (regOne!28366 Regex!13927) (regTwo!28366 Regex!13927)) (EmptyExpr!13927) (Star!13927 (reg!14256 Regex!13927)) (EmptyLang!13927) (Union!13927 (regOne!28367 Regex!13927) (regTwo!28367 Regex!13927)) )
))
(declare-datatypes ((List!58311 0))(
  ( (Nil!58187) (Cons!58187 (h!64635 Regex!13927) (t!370719 List!58311)) )
))
(declare-datatypes ((Context!6704 0))(
  ( (Context!6705 (exprs!3852 List!58311)) )
))
(declare-fun setElem!28944 () Context!6704)

(declare-fun tp!1409060 () Bool)

(declare-fun inv!76752 (Context!6704) Bool)

(assert (=> setNonEmpty!28944 (= setRes!28944 (and tp!1409060 (inv!76752 setElem!28944) e!3140811))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4747 () (InoxSet Context!6704))

(declare-fun setRest!28944 () (InoxSet Context!6704))

(assert (=> setNonEmpty!28944 (= z!4747 ((_ map or) (store ((as const (Array Context!6704 Bool)) false) setElem!28944 true) setRest!28944))))

(declare-fun b!5027725 () Bool)

(declare-fun res!2143236 () Bool)

(declare-fun e!3140809 () Bool)

(assert (=> b!5027725 (=> (not res!2143236) (not e!3140809))))

(declare-fun lostCauseZipper!941 ((InoxSet Context!6704)) Bool)

(assert (=> b!5027725 (= res!2143236 (not (lostCauseZipper!941 z!4747)))))

(declare-datatypes ((List!58312 0))(
  ( (Nil!58188) (Cons!58188 (h!64636 C!28104) (t!370720 List!58312)) )
))
(declare-datatypes ((IArray!30953 0))(
  ( (IArray!30954 (innerList!15534 List!58312)) )
))
(declare-datatypes ((Conc!15446 0))(
  ( (Node!15446 (left!42564 Conc!15446) (right!42894 Conc!15446) (csize!31122 Int) (cheight!15657 Int)) (Leaf!25623 (xs!18772 IArray!30953) (csize!31123 Int)) (Empty!15446) )
))
(declare-datatypes ((BalanceConc!30322 0))(
  ( (BalanceConc!30323 (c!860216 Conc!15446)) )
))
(declare-fun totalInput!1141 () BalanceConc!30322)

(declare-fun lt!2080842 () Int)

(declare-fun b!5027726 () Bool)

(declare-fun lt!2080839 () (InoxSet Context!6704))

(declare-fun e!3140812 () Bool)

(declare-fun from!1228 () Int)

(declare-fun matchZipper!677 ((InoxSet Context!6704) List!58312) Bool)

(declare-fun take!774 (List!58312 Int) List!58312)

(declare-fun drop!2574 (List!58312 Int) List!58312)

(declare-fun list!18791 (BalanceConc!30322) List!58312)

(assert (=> b!5027726 (= e!3140812 (matchZipper!677 lt!2080839 (take!774 (drop!2574 (list!18791 totalInput!1141) (+ 1 from!1228)) lt!2080842)))))

(declare-fun setIsEmpty!28944 () Bool)

(assert (=> setIsEmpty!28944 setRes!28944))

(declare-fun e!3140813 () Bool)

(declare-fun lt!2080838 () Int)

(declare-fun b!5027727 () Bool)

(assert (=> b!5027727 (= e!3140813 (or (>= from!1228 lt!2080838) (and (>= lt!2080842 0) (<= lt!2080842 (- (- lt!2080838 from!1228) 1)))))))

(declare-fun lt!2080841 () List!58312)

(declare-fun size!38725 (List!58312) Int)

(assert (=> b!5027727 (= lt!2080838 (size!38725 lt!2080841))))

(declare-fun lt!2080837 () List!58312)

(assert (=> b!5027727 (= lt!2080837 (take!774 (drop!2574 lt!2080841 from!1228) (+ 1 lt!2080842)))))

(declare-fun b!5027728 () Bool)

(assert (=> b!5027728 (= e!3140809 (not e!3140813))))

(declare-fun res!2143235 () Bool)

(assert (=> b!5027728 (=> res!2143235 e!3140813)))

(assert (=> b!5027728 (= res!2143235 (<= lt!2080842 0))))

(declare-fun lt!2080840 () List!58312)

(assert (=> b!5027728 (= lt!2080840 (take!774 (drop!2574 lt!2080841 (+ 1 from!1228)) lt!2080842))))

(assert (=> b!5027728 (= lt!2080841 (list!18791 totalInput!1141))))

(assert (=> b!5027728 e!3140812))

(declare-fun res!2143233 () Bool)

(assert (=> b!5027728 (=> res!2143233 e!3140812)))

(assert (=> b!5027728 (= res!2143233 (= lt!2080842 0))))

(declare-datatypes ((Unit!149379 0))(
  ( (Unit!149380) )
))
(declare-fun lt!2080836 () Unit!149379)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!118 ((InoxSet Context!6704) Int BalanceConc!30322) Unit!149379)

(assert (=> b!5027728 (= lt!2080836 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!118 lt!2080839 (+ 1 from!1228) totalInput!1141))))

(declare-fun lt!2080843 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!241 ((InoxSet Context!6704) Int BalanceConc!30322 Int) Int)

(assert (=> b!5027728 (= lt!2080842 (findLongestMatchInnerZipperFastV2!241 lt!2080839 (+ 1 from!1228) totalInput!1141 lt!2080843))))

(declare-fun derivationStepZipper!722 ((InoxSet Context!6704) C!28104) (InoxSet Context!6704))

(declare-fun apply!14176 (BalanceConc!30322 Int) C!28104)

(assert (=> b!5027728 (= lt!2080839 (derivationStepZipper!722 z!4747 (apply!14176 totalInput!1141 from!1228)))))

(declare-fun b!5027729 () Bool)

(declare-fun tp!1409062 () Bool)

(assert (=> b!5027729 (= e!3140811 tp!1409062)))

(declare-fun b!5027730 () Bool)

(declare-fun res!2143232 () Bool)

(assert (=> b!5027730 (=> (not res!2143232) (not e!3140809))))

(assert (=> b!5027730 (= res!2143232 (not (= from!1228 lt!2080843)))))

(declare-fun b!5027731 () Bool)

(declare-fun e!3140808 () Bool)

(assert (=> b!5027731 (= e!3140808 e!3140809)))

(declare-fun res!2143234 () Bool)

(assert (=> b!5027731 (=> (not res!2143234) (not e!3140809))))

(assert (=> b!5027731 (= res!2143234 (<= from!1228 lt!2080843))))

(declare-fun size!38726 (BalanceConc!30322) Int)

(assert (=> b!5027731 (= lt!2080843 (size!38726 totalInput!1141))))

(declare-fun b!5027732 () Bool)

(declare-fun e!3140810 () Bool)

(declare-fun tp!1409061 () Bool)

(declare-fun inv!76753 (Conc!15446) Bool)

(assert (=> b!5027732 (= e!3140810 (and (inv!76753 (c!860216 totalInput!1141)) tp!1409061))))

(declare-fun res!2143237 () Bool)

(assert (=> start!531612 (=> (not res!2143237) (not e!3140808))))

(assert (=> start!531612 (= res!2143237 (>= from!1228 0))))

(assert (=> start!531612 e!3140808))

(assert (=> start!531612 true))

(declare-fun inv!76754 (BalanceConc!30322) Bool)

(assert (=> start!531612 (and (inv!76754 totalInput!1141) e!3140810)))

(declare-fun condSetEmpty!28944 () Bool)

(assert (=> start!531612 (= condSetEmpty!28944 (= z!4747 ((as const (Array Context!6704 Bool)) false)))))

(assert (=> start!531612 setRes!28944))

(assert (= (and start!531612 res!2143237) b!5027731))

(assert (= (and b!5027731 res!2143234) b!5027725))

(assert (= (and b!5027725 res!2143236) b!5027730))

(assert (= (and b!5027730 res!2143232) b!5027728))

(assert (= (and b!5027728 (not res!2143233)) b!5027726))

(assert (= (and b!5027728 (not res!2143235)) b!5027727))

(assert (= start!531612 b!5027732))

(assert (= (and start!531612 condSetEmpty!28944) setIsEmpty!28944))

(assert (= (and start!531612 (not condSetEmpty!28944)) setNonEmpty!28944))

(assert (= setNonEmpty!28944 b!5027729))

(declare-fun m!6063042 () Bool)

(assert (=> setNonEmpty!28944 m!6063042))

(declare-fun m!6063044 () Bool)

(assert (=> b!5027728 m!6063044))

(declare-fun m!6063046 () Bool)

(assert (=> b!5027728 m!6063046))

(declare-fun m!6063048 () Bool)

(assert (=> b!5027728 m!6063048))

(declare-fun m!6063050 () Bool)

(assert (=> b!5027728 m!6063050))

(assert (=> b!5027728 m!6063048))

(assert (=> b!5027728 m!6063046))

(declare-fun m!6063052 () Bool)

(assert (=> b!5027728 m!6063052))

(declare-fun m!6063054 () Bool)

(assert (=> b!5027728 m!6063054))

(declare-fun m!6063056 () Bool)

(assert (=> b!5027728 m!6063056))

(declare-fun m!6063058 () Bool)

(assert (=> b!5027732 m!6063058))

(declare-fun m!6063060 () Bool)

(assert (=> start!531612 m!6063060))

(declare-fun m!6063062 () Bool)

(assert (=> b!5027727 m!6063062))

(declare-fun m!6063064 () Bool)

(assert (=> b!5027727 m!6063064))

(assert (=> b!5027727 m!6063064))

(declare-fun m!6063066 () Bool)

(assert (=> b!5027727 m!6063066))

(declare-fun m!6063068 () Bool)

(assert (=> b!5027731 m!6063068))

(declare-fun m!6063070 () Bool)

(assert (=> b!5027725 m!6063070))

(assert (=> b!5027726 m!6063054))

(assert (=> b!5027726 m!6063054))

(declare-fun m!6063072 () Bool)

(assert (=> b!5027726 m!6063072))

(assert (=> b!5027726 m!6063072))

(declare-fun m!6063074 () Bool)

(assert (=> b!5027726 m!6063074))

(assert (=> b!5027726 m!6063074))

(declare-fun m!6063076 () Bool)

(assert (=> b!5027726 m!6063076))

(check-sat (not b!5027728) (not b!5027729) (not b!5027732) (not b!5027727) (not b!5027726) (not setNonEmpty!28944) (not b!5027725) (not b!5027731) (not start!531612))
(check-sat)
(get-model)

(declare-fun d!1618099 () Bool)

(declare-fun c!860219 () Bool)

(get-info :version)

(assert (=> d!1618099 (= c!860219 ((_ is Node!15446) (c!860216 totalInput!1141)))))

(declare-fun e!3140818 () Bool)

(assert (=> d!1618099 (= (inv!76753 (c!860216 totalInput!1141)) e!3140818)))

(declare-fun b!5027739 () Bool)

(declare-fun inv!76755 (Conc!15446) Bool)

(assert (=> b!5027739 (= e!3140818 (inv!76755 (c!860216 totalInput!1141)))))

(declare-fun b!5027740 () Bool)

(declare-fun e!3140819 () Bool)

(assert (=> b!5027740 (= e!3140818 e!3140819)))

(declare-fun res!2143240 () Bool)

(assert (=> b!5027740 (= res!2143240 (not ((_ is Leaf!25623) (c!860216 totalInput!1141))))))

(assert (=> b!5027740 (=> res!2143240 e!3140819)))

(declare-fun b!5027741 () Bool)

(declare-fun inv!76756 (Conc!15446) Bool)

(assert (=> b!5027741 (= e!3140819 (inv!76756 (c!860216 totalInput!1141)))))

(assert (= (and d!1618099 c!860219) b!5027739))

(assert (= (and d!1618099 (not c!860219)) b!5027740))

(assert (= (and b!5027740 (not res!2143240)) b!5027741))

(declare-fun m!6063078 () Bool)

(assert (=> b!5027739 m!6063078))

(declare-fun m!6063080 () Bool)

(assert (=> b!5027741 m!6063080))

(assert (=> b!5027732 d!1618099))

(declare-fun d!1618103 () Bool)

(declare-fun lt!2080846 () Int)

(assert (=> d!1618103 (>= lt!2080846 0)))

(declare-fun e!3140822 () Int)

(assert (=> d!1618103 (= lt!2080846 e!3140822)))

(declare-fun c!860222 () Bool)

(assert (=> d!1618103 (= c!860222 ((_ is Nil!58188) lt!2080841))))

(assert (=> d!1618103 (= (size!38725 lt!2080841) lt!2080846)))

(declare-fun b!5027746 () Bool)

(assert (=> b!5027746 (= e!3140822 0)))

(declare-fun b!5027747 () Bool)

(assert (=> b!5027747 (= e!3140822 (+ 1 (size!38725 (t!370720 lt!2080841))))))

(assert (= (and d!1618103 c!860222) b!5027746))

(assert (= (and d!1618103 (not c!860222)) b!5027747))

(declare-fun m!6063082 () Bool)

(assert (=> b!5027747 m!6063082))

(assert (=> b!5027727 d!1618103))

(declare-fun b!5027762 () Bool)

(declare-fun e!3140831 () Bool)

(declare-fun lt!2080849 () List!58312)

(declare-fun e!3140834 () Int)

(assert (=> b!5027762 (= e!3140831 (= (size!38725 lt!2080849) e!3140834))))

(declare-fun c!860230 () Bool)

(assert (=> b!5027762 (= c!860230 (<= (+ 1 lt!2080842) 0))))

(declare-fun b!5027764 () Bool)

(declare-fun e!3140832 () List!58312)

(assert (=> b!5027764 (= e!3140832 Nil!58188)))

(declare-fun b!5027765 () Bool)

(declare-fun e!3140833 () Int)

(assert (=> b!5027765 (= e!3140833 (+ 1 lt!2080842))))

(declare-fun b!5027766 () Bool)

(assert (=> b!5027766 (= e!3140834 e!3140833)))

(declare-fun c!860231 () Bool)

(assert (=> b!5027766 (= c!860231 (>= (+ 1 lt!2080842) (size!38725 (drop!2574 lt!2080841 from!1228))))))

(declare-fun d!1618105 () Bool)

(assert (=> d!1618105 e!3140831))

(declare-fun res!2143243 () Bool)

(assert (=> d!1618105 (=> (not res!2143243) (not e!3140831))))

(declare-fun content!10314 (List!58312) (InoxSet C!28104))

(assert (=> d!1618105 (= res!2143243 (= ((_ map implies) (content!10314 lt!2080849) (content!10314 (drop!2574 lt!2080841 from!1228))) ((as const (InoxSet C!28104)) true)))))

(assert (=> d!1618105 (= lt!2080849 e!3140832)))

(declare-fun c!860229 () Bool)

(assert (=> d!1618105 (= c!860229 (or ((_ is Nil!58188) (drop!2574 lt!2080841 from!1228)) (<= (+ 1 lt!2080842) 0)))))

(assert (=> d!1618105 (= (take!774 (drop!2574 lt!2080841 from!1228) (+ 1 lt!2080842)) lt!2080849)))

(declare-fun b!5027763 () Bool)

(assert (=> b!5027763 (= e!3140832 (Cons!58188 (h!64636 (drop!2574 lt!2080841 from!1228)) (take!774 (t!370720 (drop!2574 lt!2080841 from!1228)) (- (+ 1 lt!2080842) 1))))))

(declare-fun b!5027767 () Bool)

(assert (=> b!5027767 (= e!3140834 0)))

(declare-fun b!5027768 () Bool)

(assert (=> b!5027768 (= e!3140833 (size!38725 (drop!2574 lt!2080841 from!1228)))))

(assert (= (and d!1618105 c!860229) b!5027764))

(assert (= (and d!1618105 (not c!860229)) b!5027763))

(assert (= (and d!1618105 res!2143243) b!5027762))

(assert (= (and b!5027762 c!860230) b!5027767))

(assert (= (and b!5027762 (not c!860230)) b!5027766))

(assert (= (and b!5027766 c!860231) b!5027768))

(assert (= (and b!5027766 (not c!860231)) b!5027765))

(assert (=> b!5027768 m!6063064))

(declare-fun m!6063084 () Bool)

(assert (=> b!5027768 m!6063084))

(declare-fun m!6063086 () Bool)

(assert (=> b!5027763 m!6063086))

(declare-fun m!6063088 () Bool)

(assert (=> d!1618105 m!6063088))

(assert (=> d!1618105 m!6063064))

(declare-fun m!6063090 () Bool)

(assert (=> d!1618105 m!6063090))

(declare-fun m!6063092 () Bool)

(assert (=> b!5027762 m!6063092))

(assert (=> b!5027766 m!6063064))

(assert (=> b!5027766 m!6063084))

(assert (=> b!5027727 d!1618105))

(declare-fun b!5027787 () Bool)

(declare-fun e!3140848 () Bool)

(declare-fun lt!2080852 () List!58312)

(declare-fun e!3140846 () Int)

(assert (=> b!5027787 (= e!3140848 (= (size!38725 lt!2080852) e!3140846))))

(declare-fun c!860243 () Bool)

(assert (=> b!5027787 (= c!860243 (<= from!1228 0))))

(declare-fun b!5027788 () Bool)

(declare-fun e!3140849 () Int)

(assert (=> b!5027788 (= e!3140849 0)))

(declare-fun b!5027790 () Bool)

(declare-fun e!3140845 () List!58312)

(assert (=> b!5027790 (= e!3140845 (drop!2574 (t!370720 lt!2080841) (- from!1228 1)))))

(declare-fun b!5027791 () Bool)

(assert (=> b!5027791 (= e!3140845 lt!2080841)))

(declare-fun bm!350826 () Bool)

(declare-fun call!350831 () Int)

(assert (=> bm!350826 (= call!350831 (size!38725 lt!2080841))))

(declare-fun b!5027792 () Bool)

(assert (=> b!5027792 (= e!3140846 call!350831)))

(declare-fun b!5027793 () Bool)

(assert (=> b!5027793 (= e!3140846 e!3140849)))

(declare-fun c!860240 () Bool)

(assert (=> b!5027793 (= c!860240 (>= from!1228 call!350831))))

(declare-fun b!5027794 () Bool)

(declare-fun e!3140847 () List!58312)

(assert (=> b!5027794 (= e!3140847 Nil!58188)))

(declare-fun b!5027795 () Bool)

(assert (=> b!5027795 (= e!3140849 (- call!350831 from!1228))))

(declare-fun d!1618107 () Bool)

(assert (=> d!1618107 e!3140848))

(declare-fun res!2143246 () Bool)

(assert (=> d!1618107 (=> (not res!2143246) (not e!3140848))))

(assert (=> d!1618107 (= res!2143246 (= ((_ map implies) (content!10314 lt!2080852) (content!10314 lt!2080841)) ((as const (InoxSet C!28104)) true)))))

(assert (=> d!1618107 (= lt!2080852 e!3140847)))

(declare-fun c!860242 () Bool)

(assert (=> d!1618107 (= c!860242 ((_ is Nil!58188) lt!2080841))))

(assert (=> d!1618107 (= (drop!2574 lt!2080841 from!1228) lt!2080852)))

(declare-fun b!5027789 () Bool)

(assert (=> b!5027789 (= e!3140847 e!3140845)))

(declare-fun c!860241 () Bool)

(assert (=> b!5027789 (= c!860241 (<= from!1228 0))))

(assert (= (and d!1618107 c!860242) b!5027794))

(assert (= (and d!1618107 (not c!860242)) b!5027789))

(assert (= (and b!5027789 c!860241) b!5027791))

(assert (= (and b!5027789 (not c!860241)) b!5027790))

(assert (= (and d!1618107 res!2143246) b!5027787))

(assert (= (and b!5027787 c!860243) b!5027792))

(assert (= (and b!5027787 (not c!860243)) b!5027793))

(assert (= (and b!5027793 c!860240) b!5027788))

(assert (= (and b!5027793 (not c!860240)) b!5027795))

(assert (= (or b!5027792 b!5027793 b!5027795) bm!350826))

(declare-fun m!6063094 () Bool)

(assert (=> b!5027787 m!6063094))

(declare-fun m!6063096 () Bool)

(assert (=> b!5027790 m!6063096))

(assert (=> bm!350826 m!6063062))

(declare-fun m!6063098 () Bool)

(assert (=> d!1618107 m!6063098))

(declare-fun m!6063100 () Bool)

(assert (=> d!1618107 m!6063100))

(assert (=> b!5027727 d!1618107))

(declare-fun d!1618109 () Bool)

(declare-fun c!860246 () Bool)

(declare-fun isEmpty!31464 (List!58312) Bool)

(assert (=> d!1618109 (= c!860246 (isEmpty!31464 (take!774 (drop!2574 (list!18791 totalInput!1141) (+ 1 from!1228)) lt!2080842)))))

(declare-fun e!3140852 () Bool)

(assert (=> d!1618109 (= (matchZipper!677 lt!2080839 (take!774 (drop!2574 (list!18791 totalInput!1141) (+ 1 from!1228)) lt!2080842)) e!3140852)))

(declare-fun b!5027800 () Bool)

(declare-fun nullableZipper!935 ((InoxSet Context!6704)) Bool)

(assert (=> b!5027800 (= e!3140852 (nullableZipper!935 lt!2080839))))

(declare-fun b!5027801 () Bool)

(declare-fun head!10783 (List!58312) C!28104)

(declare-fun tail!9916 (List!58312) List!58312)

(assert (=> b!5027801 (= e!3140852 (matchZipper!677 (derivationStepZipper!722 lt!2080839 (head!10783 (take!774 (drop!2574 (list!18791 totalInput!1141) (+ 1 from!1228)) lt!2080842))) (tail!9916 (take!774 (drop!2574 (list!18791 totalInput!1141) (+ 1 from!1228)) lt!2080842))))))

(assert (= (and d!1618109 c!860246) b!5027800))

(assert (= (and d!1618109 (not c!860246)) b!5027801))

(assert (=> d!1618109 m!6063074))

(declare-fun m!6063102 () Bool)

(assert (=> d!1618109 m!6063102))

(declare-fun m!6063104 () Bool)

(assert (=> b!5027800 m!6063104))

(assert (=> b!5027801 m!6063074))

(declare-fun m!6063106 () Bool)

(assert (=> b!5027801 m!6063106))

(assert (=> b!5027801 m!6063106))

(declare-fun m!6063108 () Bool)

(assert (=> b!5027801 m!6063108))

(assert (=> b!5027801 m!6063074))

(declare-fun m!6063110 () Bool)

(assert (=> b!5027801 m!6063110))

(assert (=> b!5027801 m!6063108))

(assert (=> b!5027801 m!6063110))

(declare-fun m!6063112 () Bool)

(assert (=> b!5027801 m!6063112))

(assert (=> b!5027726 d!1618109))

(declare-fun b!5027802 () Bool)

(declare-fun e!3140853 () Bool)

(declare-fun lt!2080853 () List!58312)

(declare-fun e!3140856 () Int)

(assert (=> b!5027802 (= e!3140853 (= (size!38725 lt!2080853) e!3140856))))

(declare-fun c!860248 () Bool)

(assert (=> b!5027802 (= c!860248 (<= lt!2080842 0))))

(declare-fun b!5027804 () Bool)

(declare-fun e!3140854 () List!58312)

(assert (=> b!5027804 (= e!3140854 Nil!58188)))

(declare-fun b!5027805 () Bool)

(declare-fun e!3140855 () Int)

(assert (=> b!5027805 (= e!3140855 lt!2080842)))

(declare-fun b!5027806 () Bool)

(assert (=> b!5027806 (= e!3140856 e!3140855)))

(declare-fun c!860249 () Bool)

(assert (=> b!5027806 (= c!860249 (>= lt!2080842 (size!38725 (drop!2574 (list!18791 totalInput!1141) (+ 1 from!1228)))))))

(declare-fun d!1618111 () Bool)

(assert (=> d!1618111 e!3140853))

(declare-fun res!2143247 () Bool)

(assert (=> d!1618111 (=> (not res!2143247) (not e!3140853))))

(assert (=> d!1618111 (= res!2143247 (= ((_ map implies) (content!10314 lt!2080853) (content!10314 (drop!2574 (list!18791 totalInput!1141) (+ 1 from!1228)))) ((as const (InoxSet C!28104)) true)))))

(assert (=> d!1618111 (= lt!2080853 e!3140854)))

(declare-fun c!860247 () Bool)

(assert (=> d!1618111 (= c!860247 (or ((_ is Nil!58188) (drop!2574 (list!18791 totalInput!1141) (+ 1 from!1228))) (<= lt!2080842 0)))))

(assert (=> d!1618111 (= (take!774 (drop!2574 (list!18791 totalInput!1141) (+ 1 from!1228)) lt!2080842) lt!2080853)))

(declare-fun b!5027803 () Bool)

(assert (=> b!5027803 (= e!3140854 (Cons!58188 (h!64636 (drop!2574 (list!18791 totalInput!1141) (+ 1 from!1228))) (take!774 (t!370720 (drop!2574 (list!18791 totalInput!1141) (+ 1 from!1228))) (- lt!2080842 1))))))

(declare-fun b!5027807 () Bool)

(assert (=> b!5027807 (= e!3140856 0)))

(declare-fun b!5027808 () Bool)

(assert (=> b!5027808 (= e!3140855 (size!38725 (drop!2574 (list!18791 totalInput!1141) (+ 1 from!1228))))))

(assert (= (and d!1618111 c!860247) b!5027804))

(assert (= (and d!1618111 (not c!860247)) b!5027803))

(assert (= (and d!1618111 res!2143247) b!5027802))

(assert (= (and b!5027802 c!860248) b!5027807))

(assert (= (and b!5027802 (not c!860248)) b!5027806))

(assert (= (and b!5027806 c!860249) b!5027808))

(assert (= (and b!5027806 (not c!860249)) b!5027805))

(assert (=> b!5027808 m!6063072))

(declare-fun m!6063114 () Bool)

(assert (=> b!5027808 m!6063114))

(declare-fun m!6063116 () Bool)

(assert (=> b!5027803 m!6063116))

(declare-fun m!6063118 () Bool)

(assert (=> d!1618111 m!6063118))

(assert (=> d!1618111 m!6063072))

(declare-fun m!6063120 () Bool)

(assert (=> d!1618111 m!6063120))

(declare-fun m!6063122 () Bool)

(assert (=> b!5027802 m!6063122))

(assert (=> b!5027806 m!6063072))

(assert (=> b!5027806 m!6063114))

(assert (=> b!5027726 d!1618111))

(declare-fun b!5027809 () Bool)

(declare-fun e!3140860 () Bool)

(declare-fun lt!2080854 () List!58312)

(declare-fun e!3140858 () Int)

(assert (=> b!5027809 (= e!3140860 (= (size!38725 lt!2080854) e!3140858))))

(declare-fun c!860253 () Bool)

(assert (=> b!5027809 (= c!860253 (<= (+ 1 from!1228) 0))))

(declare-fun b!5027810 () Bool)

(declare-fun e!3140861 () Int)

(assert (=> b!5027810 (= e!3140861 0)))

(declare-fun b!5027812 () Bool)

(declare-fun e!3140857 () List!58312)

(assert (=> b!5027812 (= e!3140857 (drop!2574 (t!370720 (list!18791 totalInput!1141)) (- (+ 1 from!1228) 1)))))

(declare-fun b!5027813 () Bool)

(assert (=> b!5027813 (= e!3140857 (list!18791 totalInput!1141))))

(declare-fun bm!350827 () Bool)

(declare-fun call!350832 () Int)

(assert (=> bm!350827 (= call!350832 (size!38725 (list!18791 totalInput!1141)))))

(declare-fun b!5027814 () Bool)

(assert (=> b!5027814 (= e!3140858 call!350832)))

(declare-fun b!5027815 () Bool)

(assert (=> b!5027815 (= e!3140858 e!3140861)))

(declare-fun c!860250 () Bool)

(assert (=> b!5027815 (= c!860250 (>= (+ 1 from!1228) call!350832))))

(declare-fun b!5027816 () Bool)

(declare-fun e!3140859 () List!58312)

(assert (=> b!5027816 (= e!3140859 Nil!58188)))

(declare-fun b!5027817 () Bool)

(assert (=> b!5027817 (= e!3140861 (- call!350832 (+ 1 from!1228)))))

(declare-fun d!1618113 () Bool)

(assert (=> d!1618113 e!3140860))

(declare-fun res!2143248 () Bool)

(assert (=> d!1618113 (=> (not res!2143248) (not e!3140860))))

(assert (=> d!1618113 (= res!2143248 (= ((_ map implies) (content!10314 lt!2080854) (content!10314 (list!18791 totalInput!1141))) ((as const (InoxSet C!28104)) true)))))

(assert (=> d!1618113 (= lt!2080854 e!3140859)))

(declare-fun c!860252 () Bool)

(assert (=> d!1618113 (= c!860252 ((_ is Nil!58188) (list!18791 totalInput!1141)))))

(assert (=> d!1618113 (= (drop!2574 (list!18791 totalInput!1141) (+ 1 from!1228)) lt!2080854)))

(declare-fun b!5027811 () Bool)

(assert (=> b!5027811 (= e!3140859 e!3140857)))

(declare-fun c!860251 () Bool)

(assert (=> b!5027811 (= c!860251 (<= (+ 1 from!1228) 0))))

(assert (= (and d!1618113 c!860252) b!5027816))

(assert (= (and d!1618113 (not c!860252)) b!5027811))

(assert (= (and b!5027811 c!860251) b!5027813))

(assert (= (and b!5027811 (not c!860251)) b!5027812))

(assert (= (and d!1618113 res!2143248) b!5027809))

(assert (= (and b!5027809 c!860253) b!5027814))

(assert (= (and b!5027809 (not c!860253)) b!5027815))

(assert (= (and b!5027815 c!860250) b!5027810))

(assert (= (and b!5027815 (not c!860250)) b!5027817))

(assert (= (or b!5027814 b!5027815 b!5027817) bm!350827))

(declare-fun m!6063124 () Bool)

(assert (=> b!5027809 m!6063124))

(declare-fun m!6063126 () Bool)

(assert (=> b!5027812 m!6063126))

(assert (=> bm!350827 m!6063054))

(declare-fun m!6063128 () Bool)

(assert (=> bm!350827 m!6063128))

(declare-fun m!6063130 () Bool)

(assert (=> d!1618113 m!6063130))

(assert (=> d!1618113 m!6063054))

(declare-fun m!6063132 () Bool)

(assert (=> d!1618113 m!6063132))

(assert (=> b!5027726 d!1618113))

(declare-fun d!1618115 () Bool)

(declare-fun list!18793 (Conc!15446) List!58312)

(assert (=> d!1618115 (= (list!18791 totalInput!1141) (list!18793 (c!860216 totalInput!1141)))))

(declare-fun bs!1188203 () Bool)

(assert (= bs!1188203 d!1618115))

(declare-fun m!6063134 () Bool)

(assert (=> bs!1188203 m!6063134))

(assert (=> b!5027726 d!1618115))

(declare-fun d!1618117 () Bool)

(declare-fun lt!2080857 () Int)

(assert (=> d!1618117 (= lt!2080857 (size!38725 (list!18791 totalInput!1141)))))

(declare-fun size!38728 (Conc!15446) Int)

(assert (=> d!1618117 (= lt!2080857 (size!38728 (c!860216 totalInput!1141)))))

(assert (=> d!1618117 (= (size!38726 totalInput!1141) lt!2080857)))

(declare-fun bs!1188204 () Bool)

(assert (= bs!1188204 d!1618117))

(assert (=> bs!1188204 m!6063054))

(assert (=> bs!1188204 m!6063054))

(assert (=> bs!1188204 m!6063128))

(declare-fun m!6063136 () Bool)

(assert (=> bs!1188204 m!6063136))

(assert (=> b!5027731 d!1618117))

(declare-fun bs!1188213 () Bool)

(declare-fun b!5027985 () Bool)

(declare-fun d!1618119 () Bool)

(assert (= bs!1188213 (and b!5027985 d!1618119)))

(declare-fun lambda!249447 () Int)

(declare-fun lambda!249446 () Int)

(assert (=> bs!1188213 (not (= lambda!249447 lambda!249446))))

(declare-fun bs!1188214 () Bool)

(declare-fun b!5027986 () Bool)

(assert (= bs!1188214 (and b!5027986 d!1618119)))

(declare-fun lambda!249448 () Int)

(assert (=> bs!1188214 (not (= lambda!249448 lambda!249446))))

(declare-fun bs!1188215 () Bool)

(assert (= bs!1188215 (and b!5027986 b!5027985)))

(assert (=> bs!1188215 (= lambda!249448 lambda!249447)))

(declare-fun bm!350843 () Bool)

(declare-datatypes ((List!58313 0))(
  ( (Nil!58189) (Cons!58189 (h!64637 Context!6704) (t!370721 List!58313)) )
))
(declare-fun call!350848 () List!58313)

(declare-fun toList!8128 ((InoxSet Context!6704)) List!58313)

(assert (=> bm!350843 (= call!350848 (toList!8128 z!4747))))

(declare-fun lt!2080931 () Bool)

(declare-datatypes ((Option!14607 0))(
  ( (None!14606) (Some!14606 (v!50615 List!58312)) )
))
(declare-fun isEmpty!31465 (Option!14607) Bool)

(declare-fun getLanguageWitness!748 ((InoxSet Context!6704)) Option!14607)

(assert (=> d!1618119 (= lt!2080931 (isEmpty!31465 (getLanguageWitness!748 z!4747)))))

(declare-fun forall!13441 ((InoxSet Context!6704) Int) Bool)

(assert (=> d!1618119 (= lt!2080931 (forall!13441 z!4747 lambda!249446))))

(declare-fun lt!2080932 () Unit!149379)

(declare-fun e!3140968 () Unit!149379)

(assert (=> d!1618119 (= lt!2080932 e!3140968)))

(declare-fun c!860330 () Bool)

(assert (=> d!1618119 (= c!860330 (not (forall!13441 z!4747 lambda!249446)))))

(assert (=> d!1618119 (= (lostCauseZipper!941 z!4747) lt!2080931)))

(declare-fun Unit!149381 () Unit!149379)

(assert (=> b!5027986 (= e!3140968 Unit!149381)))

(declare-fun lt!2080929 () List!58313)

(assert (=> b!5027986 (= lt!2080929 call!350848)))

(declare-fun lt!2080936 () Unit!149379)

(declare-fun lemmaForallThenNotExists!260 (List!58313 Int) Unit!149379)

(assert (=> b!5027986 (= lt!2080936 (lemmaForallThenNotExists!260 lt!2080929 lambda!249446))))

(declare-fun call!350849 () Bool)

(assert (=> b!5027986 (not call!350849)))

(declare-fun lt!2080930 () Unit!149379)

(assert (=> b!5027986 (= lt!2080930 lt!2080936)))

(declare-fun lt!2080933 () List!58313)

(declare-fun bm!350844 () Bool)

(declare-fun exists!1403 (List!58313 Int) Bool)

(assert (=> bm!350844 (= call!350849 (exists!1403 (ite c!860330 lt!2080933 lt!2080929) (ite c!860330 lambda!249447 lambda!249448)))))

(declare-fun Unit!149382 () Unit!149379)

(assert (=> b!5027985 (= e!3140968 Unit!149382)))

(assert (=> b!5027985 (= lt!2080933 call!350848)))

(declare-fun lt!2080935 () Unit!149379)

(declare-fun lemmaNotForallThenExists!277 (List!58313 Int) Unit!149379)

(assert (=> b!5027985 (= lt!2080935 (lemmaNotForallThenExists!277 lt!2080933 lambda!249446))))

(assert (=> b!5027985 call!350849))

(declare-fun lt!2080934 () Unit!149379)

(assert (=> b!5027985 (= lt!2080934 lt!2080935)))

(assert (= (and d!1618119 c!860330) b!5027985))

(assert (= (and d!1618119 (not c!860330)) b!5027986))

(assert (= (or b!5027985 b!5027986) bm!350843))

(assert (= (or b!5027985 b!5027986) bm!350844))

(declare-fun m!6063264 () Bool)

(assert (=> b!5027985 m!6063264))

(declare-fun m!6063266 () Bool)

(assert (=> bm!350844 m!6063266))

(declare-fun m!6063268 () Bool)

(assert (=> b!5027986 m!6063268))

(declare-fun m!6063270 () Bool)

(assert (=> bm!350843 m!6063270))

(declare-fun m!6063272 () Bool)

(assert (=> d!1618119 m!6063272))

(assert (=> d!1618119 m!6063272))

(declare-fun m!6063274 () Bool)

(assert (=> d!1618119 m!6063274))

(declare-fun m!6063276 () Bool)

(assert (=> d!1618119 m!6063276))

(assert (=> d!1618119 m!6063276))

(assert (=> b!5027725 d!1618119))

(declare-fun d!1618155 () Bool)

(declare-fun e!3140973 () Bool)

(assert (=> d!1618155 e!3140973))

(declare-fun res!2143282 () Bool)

(assert (=> d!1618155 (=> res!2143282 e!3140973)))

(assert (=> d!1618155 (= res!2143282 (= (findLongestMatchInnerZipperFastV2!241 lt!2080839 (+ 1 from!1228) totalInput!1141 (size!38726 totalInput!1141)) 0))))

(declare-fun lt!2080939 () Unit!149379)

(declare-fun choose!37205 ((InoxSet Context!6704) Int BalanceConc!30322) Unit!149379)

(assert (=> d!1618155 (= lt!2080939 (choose!37205 lt!2080839 (+ 1 from!1228) totalInput!1141))))

(declare-fun e!3140974 () Bool)

(assert (=> d!1618155 e!3140974))

(declare-fun res!2143281 () Bool)

(assert (=> d!1618155 (=> (not res!2143281) (not e!3140974))))

(assert (=> d!1618155 (= res!2143281 (>= (+ 1 from!1228) 0))))

(assert (=> d!1618155 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!118 lt!2080839 (+ 1 from!1228) totalInput!1141) lt!2080939)))

(declare-fun b!5027991 () Bool)

(assert (=> b!5027991 (= e!3140974 (<= (+ 1 from!1228) (size!38726 totalInput!1141)))))

(declare-fun b!5027992 () Bool)

(assert (=> b!5027992 (= e!3140973 (matchZipper!677 lt!2080839 (take!774 (drop!2574 (list!18791 totalInput!1141) (+ 1 from!1228)) (findLongestMatchInnerZipperFastV2!241 lt!2080839 (+ 1 from!1228) totalInput!1141 (size!38726 totalInput!1141)))))))

(assert (= (and d!1618155 res!2143281) b!5027991))

(assert (= (and d!1618155 (not res!2143282)) b!5027992))

(assert (=> d!1618155 m!6063068))

(assert (=> d!1618155 m!6063068))

(declare-fun m!6063278 () Bool)

(assert (=> d!1618155 m!6063278))

(declare-fun m!6063280 () Bool)

(assert (=> d!1618155 m!6063280))

(assert (=> b!5027991 m!6063068))

(assert (=> b!5027992 m!6063072))

(assert (=> b!5027992 m!6063278))

(declare-fun m!6063282 () Bool)

(assert (=> b!5027992 m!6063282))

(assert (=> b!5027992 m!6063282))

(declare-fun m!6063284 () Bool)

(assert (=> b!5027992 m!6063284))

(assert (=> b!5027992 m!6063054))

(assert (=> b!5027992 m!6063072))

(assert (=> b!5027992 m!6063054))

(assert (=> b!5027992 m!6063068))

(assert (=> b!5027992 m!6063278))

(assert (=> b!5027992 m!6063068))

(assert (=> b!5027728 d!1618155))

(declare-fun b!5028009 () Bool)

(declare-fun e!3140986 () Bool)

(assert (=> b!5028009 (= e!3140986 (lostCauseZipper!941 lt!2080839))))

(declare-fun b!5028010 () Bool)

(declare-fun c!860339 () Bool)

(declare-fun lt!2080946 () (InoxSet Context!6704))

(assert (=> b!5028010 (= c!860339 (nullableZipper!935 lt!2080946))))

(declare-fun e!3140989 () Int)

(declare-fun e!3140985 () Int)

(assert (=> b!5028010 (= e!3140989 e!3140985)))

(declare-fun d!1618157 () Bool)

(declare-fun lt!2080947 () Int)

(assert (=> d!1618157 (and (>= lt!2080947 0) (<= lt!2080947 (- lt!2080843 (+ 1 from!1228))))))

(declare-fun e!3140988 () Int)

(assert (=> d!1618157 (= lt!2080947 e!3140988)))

(declare-fun c!860337 () Bool)

(assert (=> d!1618157 (= c!860337 e!3140986)))

(declare-fun res!2143287 () Bool)

(assert (=> d!1618157 (=> res!2143287 e!3140986)))

(assert (=> d!1618157 (= res!2143287 (= (+ 1 from!1228) lt!2080843))))

(declare-fun e!3140987 () Bool)

(assert (=> d!1618157 e!3140987))

(declare-fun res!2143288 () Bool)

(assert (=> d!1618157 (=> (not res!2143288) (not e!3140987))))

(assert (=> d!1618157 (= res!2143288 (>= (+ 1 from!1228) 0))))

(assert (=> d!1618157 (= (findLongestMatchInnerZipperFastV2!241 lt!2080839 (+ 1 from!1228) totalInput!1141 lt!2080843) lt!2080947)))

(declare-fun b!5028011 () Bool)

(assert (=> b!5028011 (= e!3140985 0)))

(declare-fun b!5028012 () Bool)

(declare-fun lt!2080948 () Int)

(assert (=> b!5028012 (= e!3140989 (+ 1 lt!2080948))))

(declare-fun b!5028013 () Bool)

(assert (=> b!5028013 (= e!3140988 e!3140989)))

(assert (=> b!5028013 (= lt!2080946 (derivationStepZipper!722 lt!2080839 (apply!14176 totalInput!1141 (+ 1 from!1228))))))

(assert (=> b!5028013 (= lt!2080948 (findLongestMatchInnerZipperFastV2!241 lt!2080946 (+ 1 from!1228 1) totalInput!1141 lt!2080843))))

(declare-fun c!860338 () Bool)

(assert (=> b!5028013 (= c!860338 (> lt!2080948 0))))

(declare-fun b!5028014 () Bool)

(assert (=> b!5028014 (= e!3140987 (<= (+ 1 from!1228) (size!38726 totalInput!1141)))))

(declare-fun b!5028015 () Bool)

(assert (=> b!5028015 (= e!3140988 0)))

(declare-fun b!5028016 () Bool)

(assert (=> b!5028016 (= e!3140985 1)))

(assert (= (and d!1618157 res!2143288) b!5028014))

(assert (= (and d!1618157 (not res!2143287)) b!5028009))

(assert (= (and d!1618157 c!860337) b!5028015))

(assert (= (and d!1618157 (not c!860337)) b!5028013))

(assert (= (and b!5028013 c!860338) b!5028012))

(assert (= (and b!5028013 (not c!860338)) b!5028010))

(assert (= (and b!5028010 c!860339) b!5028016))

(assert (= (and b!5028010 (not c!860339)) b!5028011))

(declare-fun m!6063286 () Bool)

(assert (=> b!5028009 m!6063286))

(declare-fun m!6063288 () Bool)

(assert (=> b!5028010 m!6063288))

(declare-fun m!6063290 () Bool)

(assert (=> b!5028013 m!6063290))

(assert (=> b!5028013 m!6063290))

(declare-fun m!6063292 () Bool)

(assert (=> b!5028013 m!6063292))

(declare-fun m!6063294 () Bool)

(assert (=> b!5028013 m!6063294))

(assert (=> b!5028014 m!6063068))

(assert (=> b!5027728 d!1618157))

(declare-fun b!5028017 () Bool)

(declare-fun e!3140993 () Bool)

(declare-fun lt!2080949 () List!58312)

(declare-fun e!3140991 () Int)

(assert (=> b!5028017 (= e!3140993 (= (size!38725 lt!2080949) e!3140991))))

(declare-fun c!860343 () Bool)

(assert (=> b!5028017 (= c!860343 (<= (+ 1 from!1228) 0))))

(declare-fun b!5028018 () Bool)

(declare-fun e!3140994 () Int)

(assert (=> b!5028018 (= e!3140994 0)))

(declare-fun b!5028020 () Bool)

(declare-fun e!3140990 () List!58312)

(assert (=> b!5028020 (= e!3140990 (drop!2574 (t!370720 lt!2080841) (- (+ 1 from!1228) 1)))))

(declare-fun b!5028021 () Bool)

(assert (=> b!5028021 (= e!3140990 lt!2080841)))

(declare-fun bm!350845 () Bool)

(declare-fun call!350850 () Int)

(assert (=> bm!350845 (= call!350850 (size!38725 lt!2080841))))

(declare-fun b!5028022 () Bool)

(assert (=> b!5028022 (= e!3140991 call!350850)))

(declare-fun b!5028023 () Bool)

(assert (=> b!5028023 (= e!3140991 e!3140994)))

(declare-fun c!860340 () Bool)

(assert (=> b!5028023 (= c!860340 (>= (+ 1 from!1228) call!350850))))

(declare-fun b!5028024 () Bool)

(declare-fun e!3140992 () List!58312)

(assert (=> b!5028024 (= e!3140992 Nil!58188)))

(declare-fun b!5028025 () Bool)

(assert (=> b!5028025 (= e!3140994 (- call!350850 (+ 1 from!1228)))))

(declare-fun d!1618159 () Bool)

(assert (=> d!1618159 e!3140993))

(declare-fun res!2143289 () Bool)

(assert (=> d!1618159 (=> (not res!2143289) (not e!3140993))))

(assert (=> d!1618159 (= res!2143289 (= ((_ map implies) (content!10314 lt!2080949) (content!10314 lt!2080841)) ((as const (InoxSet C!28104)) true)))))

(assert (=> d!1618159 (= lt!2080949 e!3140992)))

(declare-fun c!860342 () Bool)

(assert (=> d!1618159 (= c!860342 ((_ is Nil!58188) lt!2080841))))

(assert (=> d!1618159 (= (drop!2574 lt!2080841 (+ 1 from!1228)) lt!2080949)))

(declare-fun b!5028019 () Bool)

(assert (=> b!5028019 (= e!3140992 e!3140990)))

(declare-fun c!860341 () Bool)

(assert (=> b!5028019 (= c!860341 (<= (+ 1 from!1228) 0))))

(assert (= (and d!1618159 c!860342) b!5028024))

(assert (= (and d!1618159 (not c!860342)) b!5028019))

(assert (= (and b!5028019 c!860341) b!5028021))

(assert (= (and b!5028019 (not c!860341)) b!5028020))

(assert (= (and d!1618159 res!2143289) b!5028017))

(assert (= (and b!5028017 c!860343) b!5028022))

(assert (= (and b!5028017 (not c!860343)) b!5028023))

(assert (= (and b!5028023 c!860340) b!5028018))

(assert (= (and b!5028023 (not c!860340)) b!5028025))

(assert (= (or b!5028022 b!5028023 b!5028025) bm!350845))

(declare-fun m!6063296 () Bool)

(assert (=> b!5028017 m!6063296))

(declare-fun m!6063298 () Bool)

(assert (=> b!5028020 m!6063298))

(assert (=> bm!350845 m!6063062))

(declare-fun m!6063300 () Bool)

(assert (=> d!1618159 m!6063300))

(assert (=> d!1618159 m!6063100))

(assert (=> b!5027728 d!1618159))

(declare-fun d!1618161 () Bool)

(assert (=> d!1618161 true))

(declare-fun lambda!249451 () Int)

(declare-fun flatMap!308 ((InoxSet Context!6704) Int) (InoxSet Context!6704))

(assert (=> d!1618161 (= (derivationStepZipper!722 z!4747 (apply!14176 totalInput!1141 from!1228)) (flatMap!308 z!4747 lambda!249451))))

(declare-fun bs!1188216 () Bool)

(assert (= bs!1188216 d!1618161))

(declare-fun m!6063302 () Bool)

(assert (=> bs!1188216 m!6063302))

(assert (=> b!5027728 d!1618161))

(declare-fun d!1618163 () Bool)

(declare-fun lt!2080952 () C!28104)

(declare-fun apply!14179 (List!58312 Int) C!28104)

(assert (=> d!1618163 (= lt!2080952 (apply!14179 (list!18791 totalInput!1141) from!1228))))

(declare-fun apply!14180 (Conc!15446 Int) C!28104)

(assert (=> d!1618163 (= lt!2080952 (apply!14180 (c!860216 totalInput!1141) from!1228))))

(declare-fun e!3140997 () Bool)

(assert (=> d!1618163 e!3140997))

(declare-fun res!2143292 () Bool)

(assert (=> d!1618163 (=> (not res!2143292) (not e!3140997))))

(assert (=> d!1618163 (= res!2143292 (<= 0 from!1228))))

(assert (=> d!1618163 (= (apply!14176 totalInput!1141 from!1228) lt!2080952)))

(declare-fun b!5028030 () Bool)

(assert (=> b!5028030 (= e!3140997 (< from!1228 (size!38726 totalInput!1141)))))

(assert (= (and d!1618163 res!2143292) b!5028030))

(assert (=> d!1618163 m!6063054))

(assert (=> d!1618163 m!6063054))

(declare-fun m!6063304 () Bool)

(assert (=> d!1618163 m!6063304))

(declare-fun m!6063306 () Bool)

(assert (=> d!1618163 m!6063306))

(assert (=> b!5028030 m!6063068))

(assert (=> b!5027728 d!1618163))

(declare-fun b!5028031 () Bool)

(declare-fun e!3140998 () Bool)

(declare-fun lt!2080953 () List!58312)

(declare-fun e!3141001 () Int)

(assert (=> b!5028031 (= e!3140998 (= (size!38725 lt!2080953) e!3141001))))

(declare-fun c!860347 () Bool)

(assert (=> b!5028031 (= c!860347 (<= lt!2080842 0))))

(declare-fun b!5028033 () Bool)

(declare-fun e!3140999 () List!58312)

(assert (=> b!5028033 (= e!3140999 Nil!58188)))

(declare-fun b!5028034 () Bool)

(declare-fun e!3141000 () Int)

(assert (=> b!5028034 (= e!3141000 lt!2080842)))

(declare-fun b!5028035 () Bool)

(assert (=> b!5028035 (= e!3141001 e!3141000)))

(declare-fun c!860348 () Bool)

(assert (=> b!5028035 (= c!860348 (>= lt!2080842 (size!38725 (drop!2574 lt!2080841 (+ 1 from!1228)))))))

(declare-fun d!1618165 () Bool)

(assert (=> d!1618165 e!3140998))

(declare-fun res!2143293 () Bool)

(assert (=> d!1618165 (=> (not res!2143293) (not e!3140998))))

(assert (=> d!1618165 (= res!2143293 (= ((_ map implies) (content!10314 lt!2080953) (content!10314 (drop!2574 lt!2080841 (+ 1 from!1228)))) ((as const (InoxSet C!28104)) true)))))

(assert (=> d!1618165 (= lt!2080953 e!3140999)))

(declare-fun c!860346 () Bool)

(assert (=> d!1618165 (= c!860346 (or ((_ is Nil!58188) (drop!2574 lt!2080841 (+ 1 from!1228))) (<= lt!2080842 0)))))

(assert (=> d!1618165 (= (take!774 (drop!2574 lt!2080841 (+ 1 from!1228)) lt!2080842) lt!2080953)))

(declare-fun b!5028032 () Bool)

(assert (=> b!5028032 (= e!3140999 (Cons!58188 (h!64636 (drop!2574 lt!2080841 (+ 1 from!1228))) (take!774 (t!370720 (drop!2574 lt!2080841 (+ 1 from!1228))) (- lt!2080842 1))))))

(declare-fun b!5028036 () Bool)

(assert (=> b!5028036 (= e!3141001 0)))

(declare-fun b!5028037 () Bool)

(assert (=> b!5028037 (= e!3141000 (size!38725 (drop!2574 lt!2080841 (+ 1 from!1228))))))

(assert (= (and d!1618165 c!860346) b!5028033))

(assert (= (and d!1618165 (not c!860346)) b!5028032))

(assert (= (and d!1618165 res!2143293) b!5028031))

(assert (= (and b!5028031 c!860347) b!5028036))

(assert (= (and b!5028031 (not c!860347)) b!5028035))

(assert (= (and b!5028035 c!860348) b!5028037))

(assert (= (and b!5028035 (not c!860348)) b!5028034))

(assert (=> b!5028037 m!6063048))

(declare-fun m!6063308 () Bool)

(assert (=> b!5028037 m!6063308))

(declare-fun m!6063310 () Bool)

(assert (=> b!5028032 m!6063310))

(declare-fun m!6063312 () Bool)

(assert (=> d!1618165 m!6063312))

(assert (=> d!1618165 m!6063048))

(declare-fun m!6063314 () Bool)

(assert (=> d!1618165 m!6063314))

(declare-fun m!6063316 () Bool)

(assert (=> b!5028031 m!6063316))

(assert (=> b!5028035 m!6063048))

(assert (=> b!5028035 m!6063308))

(assert (=> b!5027728 d!1618165))

(assert (=> b!5027728 d!1618115))

(declare-fun d!1618167 () Bool)

(declare-fun isBalanced!4311 (Conc!15446) Bool)

(assert (=> d!1618167 (= (inv!76754 totalInput!1141) (isBalanced!4311 (c!860216 totalInput!1141)))))

(declare-fun bs!1188217 () Bool)

(assert (= bs!1188217 d!1618167))

(declare-fun m!6063318 () Bool)

(assert (=> bs!1188217 m!6063318))

(assert (=> start!531612 d!1618167))

(declare-fun d!1618169 () Bool)

(declare-fun lambda!249454 () Int)

(declare-fun forall!13443 (List!58311 Int) Bool)

(assert (=> d!1618169 (= (inv!76752 setElem!28944) (forall!13443 (exprs!3852 setElem!28944) lambda!249454))))

(declare-fun bs!1188218 () Bool)

(assert (= bs!1188218 d!1618169))

(declare-fun m!6063320 () Bool)

(assert (=> bs!1188218 m!6063320))

(assert (=> setNonEmpty!28944 d!1618169))

(declare-fun b!5028046 () Bool)

(declare-fun tp!1409092 () Bool)

(declare-fun e!3141007 () Bool)

(declare-fun tp!1409090 () Bool)

(assert (=> b!5028046 (= e!3141007 (and (inv!76753 (left!42564 (c!860216 totalInput!1141))) tp!1409092 (inv!76753 (right!42894 (c!860216 totalInput!1141))) tp!1409090))))

(declare-fun b!5028048 () Bool)

(declare-fun e!3141006 () Bool)

(declare-fun tp!1409091 () Bool)

(assert (=> b!5028048 (= e!3141006 tp!1409091)))

(declare-fun b!5028047 () Bool)

(declare-fun inv!76760 (IArray!30953) Bool)

(assert (=> b!5028047 (= e!3141007 (and (inv!76760 (xs!18772 (c!860216 totalInput!1141))) e!3141006))))

(assert (=> b!5027732 (= tp!1409061 (and (inv!76753 (c!860216 totalInput!1141)) e!3141007))))

(assert (= (and b!5027732 ((_ is Node!15446) (c!860216 totalInput!1141))) b!5028046))

(assert (= b!5028047 b!5028048))

(assert (= (and b!5027732 ((_ is Leaf!25623) (c!860216 totalInput!1141))) b!5028047))

(declare-fun m!6063322 () Bool)

(assert (=> b!5028046 m!6063322))

(declare-fun m!6063324 () Bool)

(assert (=> b!5028046 m!6063324))

(declare-fun m!6063326 () Bool)

(assert (=> b!5028047 m!6063326))

(assert (=> b!5027732 m!6063058))

(declare-fun b!5028053 () Bool)

(declare-fun e!3141010 () Bool)

(declare-fun tp!1409097 () Bool)

(declare-fun tp!1409098 () Bool)

(assert (=> b!5028053 (= e!3141010 (and tp!1409097 tp!1409098))))

(assert (=> b!5027729 (= tp!1409062 e!3141010)))

(assert (= (and b!5027729 ((_ is Cons!58187) (exprs!3852 setElem!28944))) b!5028053))

(declare-fun condSetEmpty!28950 () Bool)

(assert (=> setNonEmpty!28944 (= condSetEmpty!28950 (= setRest!28944 ((as const (Array Context!6704 Bool)) false)))))

(declare-fun setRes!28950 () Bool)

(assert (=> setNonEmpty!28944 (= tp!1409060 setRes!28950)))

(declare-fun setIsEmpty!28950 () Bool)

(assert (=> setIsEmpty!28950 setRes!28950))

(declare-fun e!3141013 () Bool)

(declare-fun setNonEmpty!28950 () Bool)

(declare-fun tp!1409103 () Bool)

(declare-fun setElem!28950 () Context!6704)

(assert (=> setNonEmpty!28950 (= setRes!28950 (and tp!1409103 (inv!76752 setElem!28950) e!3141013))))

(declare-fun setRest!28950 () (InoxSet Context!6704))

(assert (=> setNonEmpty!28950 (= setRest!28944 ((_ map or) (store ((as const (Array Context!6704 Bool)) false) setElem!28950 true) setRest!28950))))

(declare-fun b!5028058 () Bool)

(declare-fun tp!1409104 () Bool)

(assert (=> b!5028058 (= e!3141013 tp!1409104)))

(assert (= (and setNonEmpty!28944 condSetEmpty!28950) setIsEmpty!28950))

(assert (= (and setNonEmpty!28944 (not condSetEmpty!28950)) setNonEmpty!28950))

(assert (= setNonEmpty!28950 b!5028058))

(declare-fun m!6063328 () Bool)

(assert (=> setNonEmpty!28950 m!6063328))

(check-sat (not b!5028058) (not b!5028032) (not d!1618165) (not b!5027801) (not b!5028010) (not b!5028037) (not b!5027747) (not b!5027806) (not b!5027800) (not b!5027790) (not d!1618119) (not setNonEmpty!28950) (not b!5027741) (not d!1618117) (not b!5027802) (not b!5028031) (not bm!350845) (not b!5027803) (not bm!350844) (not d!1618113) (not d!1618159) (not b!5028030) (not b!5027992) (not b!5028046) (not b!5027766) (not b!5028048) (not b!5027732) (not b!5027808) (not d!1618107) (not b!5028013) (not d!1618167) (not d!1618115) (not b!5028020) (not b!5028035) (not b!5027991) (not bm!350827) (not d!1618111) (not b!5027812) (not b!5028009) (not b!5028047) (not b!5027985) (not d!1618163) (not b!5027763) (not b!5027762) (not bm!350843) (not b!5027787) (not d!1618161) (not d!1618109) (not b!5027809) (not bm!350826) (not b!5028017) (not b!5027986) (not b!5028053) (not d!1618155) (not b!5027768) (not d!1618105) (not b!5027739) (not b!5028014) (not d!1618169))
(check-sat)
