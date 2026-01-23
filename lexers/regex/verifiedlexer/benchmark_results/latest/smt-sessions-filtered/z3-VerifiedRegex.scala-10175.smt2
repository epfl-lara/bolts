; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!531552 () Bool)

(assert start!531552)

(declare-fun setNonEmpty!28932 () Bool)

(declare-fun setRes!28932 () Bool)

(declare-datatypes ((C!28100 0))(
  ( (C!28101 (val!23426 Int)) )
))
(declare-datatypes ((Regex!13925 0))(
  ( (ElementMatch!13925 (c!860079 C!28100)) (Concat!22718 (regOne!28362 Regex!13925) (regTwo!28362 Regex!13925)) (EmptyExpr!13925) (Star!13925 (reg!14254 Regex!13925)) (EmptyLang!13925) (Union!13925 (regOne!28363 Regex!13925) (regTwo!28363 Regex!13925)) )
))
(declare-datatypes ((List!58305 0))(
  ( (Nil!58181) (Cons!58181 (h!64629 Regex!13925) (t!370713 List!58305)) )
))
(declare-datatypes ((Context!6700 0))(
  ( (Context!6701 (exprs!3850 List!58305)) )
))
(declare-fun setElem!28932 () Context!6700)

(declare-fun tp!1409000 () Bool)

(declare-fun e!3140576 () Bool)

(declare-fun inv!76737 (Context!6700) Bool)

(assert (=> setNonEmpty!28932 (= setRes!28932 (and tp!1409000 (inv!76737 setElem!28932) e!3140576))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4747 () (InoxSet Context!6700))

(declare-fun setRest!28932 () (InoxSet Context!6700))

(assert (=> setNonEmpty!28932 (= z!4747 ((_ map or) (store ((as const (Array Context!6700 Bool)) false) setElem!28932 true) setRest!28932))))

(declare-fun b!5027351 () Bool)

(declare-fun e!3140574 () Bool)

(declare-fun e!3140572 () Bool)

(assert (=> b!5027351 (= e!3140574 e!3140572)))

(declare-fun res!2143140 () Bool)

(assert (=> b!5027351 (=> (not res!2143140) (not e!3140572))))

(declare-fun from!1228 () Int)

(declare-fun lt!2080680 () Int)

(assert (=> b!5027351 (= res!2143140 (<= from!1228 lt!2080680))))

(declare-datatypes ((List!58306 0))(
  ( (Nil!58182) (Cons!58182 (h!64630 C!28100) (t!370714 List!58306)) )
))
(declare-datatypes ((IArray!30949 0))(
  ( (IArray!30950 (innerList!15532 List!58306)) )
))
(declare-datatypes ((Conc!15444 0))(
  ( (Node!15444 (left!42557 Conc!15444) (right!42887 Conc!15444) (csize!31118 Int) (cheight!15655 Int)) (Leaf!25620 (xs!18770 IArray!30949) (csize!31119 Int)) (Empty!15444) )
))
(declare-datatypes ((BalanceConc!30318 0))(
  ( (BalanceConc!30319 (c!860080 Conc!15444)) )
))
(declare-fun totalInput!1141 () BalanceConc!30318)

(declare-fun size!38719 (BalanceConc!30318) Int)

(assert (=> b!5027351 (= lt!2080680 (size!38719 totalInput!1141))))

(declare-fun lt!2080681 () (InoxSet Context!6700))

(declare-fun lt!2080685 () Int)

(declare-fun e!3140577 () Bool)

(declare-fun b!5027352 () Bool)

(declare-fun matchZipper!675 ((InoxSet Context!6700) List!58306) Bool)

(declare-fun take!772 (List!58306 Int) List!58306)

(declare-fun drop!2572 (List!58306 Int) List!58306)

(declare-fun list!18787 (BalanceConc!30318) List!58306)

(assert (=> b!5027352 (= e!3140577 (matchZipper!675 lt!2080681 (take!772 (drop!2572 (list!18787 totalInput!1141) (+ 1 from!1228)) lt!2080685)))))

(declare-fun b!5027353 () Bool)

(declare-fun e!3140575 () Bool)

(declare-fun tp!1409002 () Bool)

(declare-fun inv!76738 (Conc!15444) Bool)

(assert (=> b!5027353 (= e!3140575 (and (inv!76738 (c!860080 totalInput!1141)) tp!1409002))))

(declare-fun b!5027354 () Bool)

(declare-fun e!3140573 () Bool)

(assert (=> b!5027354 (= e!3140572 (not e!3140573))))

(declare-fun res!2143145 () Bool)

(assert (=> b!5027354 (=> res!2143145 e!3140573)))

(assert (=> b!5027354 (= res!2143145 (<= lt!2080685 0))))

(declare-fun lt!2080679 () List!58306)

(declare-fun lt!2080684 () List!58306)

(assert (=> b!5027354 (= lt!2080679 (take!772 (drop!2572 lt!2080684 (+ 1 from!1228)) lt!2080685))))

(assert (=> b!5027354 (= lt!2080684 (list!18787 totalInput!1141))))

(assert (=> b!5027354 e!3140577))

(declare-fun res!2143141 () Bool)

(assert (=> b!5027354 (=> res!2143141 e!3140577)))

(assert (=> b!5027354 (= res!2143141 (= lt!2080685 0))))

(declare-datatypes ((Unit!149371 0))(
  ( (Unit!149372) )
))
(declare-fun lt!2080683 () Unit!149371)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!116 ((InoxSet Context!6700) Int BalanceConc!30318) Unit!149371)

(assert (=> b!5027354 (= lt!2080683 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!116 lt!2080681 (+ 1 from!1228) totalInput!1141))))

(declare-fun findLongestMatchInnerZipperFastV2!239 ((InoxSet Context!6700) Int BalanceConc!30318 Int) Int)

(assert (=> b!5027354 (= lt!2080685 (findLongestMatchInnerZipperFastV2!239 lt!2080681 (+ 1 from!1228) totalInput!1141 lt!2080680))))

(declare-fun derivationStepZipper!720 ((InoxSet Context!6700) C!28100) (InoxSet Context!6700))

(declare-fun apply!14170 (BalanceConc!30318 Int) C!28100)

(assert (=> b!5027354 (= lt!2080681 (derivationStepZipper!720 z!4747 (apply!14170 totalInput!1141 from!1228)))))

(declare-fun res!2143142 () Bool)

(assert (=> start!531552 (=> (not res!2143142) (not e!3140574))))

(assert (=> start!531552 (= res!2143142 (>= from!1228 0))))

(assert (=> start!531552 e!3140574))

(assert (=> start!531552 true))

(declare-fun inv!76739 (BalanceConc!30318) Bool)

(assert (=> start!531552 (and (inv!76739 totalInput!1141) e!3140575)))

(declare-fun condSetEmpty!28932 () Bool)

(assert (=> start!531552 (= condSetEmpty!28932 (= z!4747 ((as const (Array Context!6700 Bool)) false)))))

(assert (=> start!531552 setRes!28932))

(declare-fun b!5027355 () Bool)

(declare-fun size!38720 (List!58306) Int)

(assert (=> b!5027355 (= e!3140573 (< from!1228 (size!38720 lt!2080684)))))

(declare-fun lt!2080682 () List!58306)

(assert (=> b!5027355 (= lt!2080682 (take!772 (drop!2572 lt!2080684 from!1228) (+ 1 lt!2080685)))))

(declare-fun b!5027356 () Bool)

(declare-fun res!2143144 () Bool)

(assert (=> b!5027356 (=> (not res!2143144) (not e!3140572))))

(declare-fun lostCauseZipper!939 ((InoxSet Context!6700)) Bool)

(assert (=> b!5027356 (= res!2143144 (not (lostCauseZipper!939 z!4747)))))

(declare-fun b!5027357 () Bool)

(declare-fun tp!1409001 () Bool)

(assert (=> b!5027357 (= e!3140576 tp!1409001)))

(declare-fun b!5027358 () Bool)

(declare-fun res!2143143 () Bool)

(assert (=> b!5027358 (=> (not res!2143143) (not e!3140572))))

(assert (=> b!5027358 (= res!2143143 (not (= from!1228 lt!2080680)))))

(declare-fun setIsEmpty!28932 () Bool)

(assert (=> setIsEmpty!28932 setRes!28932))

(assert (= (and start!531552 res!2143142) b!5027351))

(assert (= (and b!5027351 res!2143140) b!5027356))

(assert (= (and b!5027356 res!2143144) b!5027358))

(assert (= (and b!5027358 res!2143143) b!5027354))

(assert (= (and b!5027354 (not res!2143141)) b!5027352))

(assert (= (and b!5027354 (not res!2143145)) b!5027355))

(assert (= start!531552 b!5027353))

(assert (= (and start!531552 condSetEmpty!28932) setIsEmpty!28932))

(assert (= (and start!531552 (not condSetEmpty!28932)) setNonEmpty!28932))

(assert (= setNonEmpty!28932 b!5027357))

(declare-fun m!6062718 () Bool)

(assert (=> setNonEmpty!28932 m!6062718))

(declare-fun m!6062720 () Bool)

(assert (=> b!5027354 m!6062720))

(declare-fun m!6062722 () Bool)

(assert (=> b!5027354 m!6062722))

(declare-fun m!6062724 () Bool)

(assert (=> b!5027354 m!6062724))

(declare-fun m!6062726 () Bool)

(assert (=> b!5027354 m!6062726))

(assert (=> b!5027354 m!6062720))

(declare-fun m!6062728 () Bool)

(assert (=> b!5027354 m!6062728))

(declare-fun m!6062730 () Bool)

(assert (=> b!5027354 m!6062730))

(assert (=> b!5027354 m!6062724))

(declare-fun m!6062732 () Bool)

(assert (=> b!5027354 m!6062732))

(declare-fun m!6062734 () Bool)

(assert (=> b!5027356 m!6062734))

(declare-fun m!6062736 () Bool)

(assert (=> start!531552 m!6062736))

(declare-fun m!6062738 () Bool)

(assert (=> b!5027355 m!6062738))

(declare-fun m!6062740 () Bool)

(assert (=> b!5027355 m!6062740))

(assert (=> b!5027355 m!6062740))

(declare-fun m!6062742 () Bool)

(assert (=> b!5027355 m!6062742))

(declare-fun m!6062744 () Bool)

(assert (=> b!5027353 m!6062744))

(declare-fun m!6062746 () Bool)

(assert (=> b!5027351 m!6062746))

(assert (=> b!5027352 m!6062730))

(assert (=> b!5027352 m!6062730))

(declare-fun m!6062748 () Bool)

(assert (=> b!5027352 m!6062748))

(assert (=> b!5027352 m!6062748))

(declare-fun m!6062750 () Bool)

(assert (=> b!5027352 m!6062750))

(assert (=> b!5027352 m!6062750))

(declare-fun m!6062752 () Bool)

(assert (=> b!5027352 m!6062752))

(check-sat (not start!531552) (not b!5027354) (not b!5027356) (not b!5027351) (not b!5027353) (not b!5027355) (not setNonEmpty!28932) (not b!5027357) (not b!5027352))
(check-sat)
(get-model)

(declare-fun d!1618026 () Bool)

(declare-fun lt!2080688 () Int)

(assert (=> d!1618026 (>= lt!2080688 0)))

(declare-fun e!3140580 () Int)

(assert (=> d!1618026 (= lt!2080688 e!3140580)))

(declare-fun c!860083 () Bool)

(get-info :version)

(assert (=> d!1618026 (= c!860083 ((_ is Nil!58182) lt!2080684))))

(assert (=> d!1618026 (= (size!38720 lt!2080684) lt!2080688)))

(declare-fun b!5027363 () Bool)

(assert (=> b!5027363 (= e!3140580 0)))

(declare-fun b!5027364 () Bool)

(assert (=> b!5027364 (= e!3140580 (+ 1 (size!38720 (t!370714 lt!2080684))))))

(assert (= (and d!1618026 c!860083) b!5027363))

(assert (= (and d!1618026 (not c!860083)) b!5027364))

(declare-fun m!6062754 () Bool)

(assert (=> b!5027364 m!6062754))

(assert (=> b!5027355 d!1618026))

(declare-fun b!5027383 () Bool)

(declare-fun e!3140591 () Int)

(assert (=> b!5027383 (= e!3140591 (size!38720 (drop!2572 lt!2080684 from!1228)))))

(declare-fun b!5027384 () Bool)

(declare-fun e!3140594 () List!58306)

(assert (=> b!5027384 (= e!3140594 (Cons!58182 (h!64630 (drop!2572 lt!2080684 from!1228)) (take!772 (t!370714 (drop!2572 lt!2080684 from!1228)) (- (+ 1 lt!2080685) 1))))))

(declare-fun b!5027385 () Bool)

(declare-fun e!3140592 () Int)

(assert (=> b!5027385 (= e!3140592 0)))

(declare-fun b!5027386 () Bool)

(declare-fun e!3140593 () Bool)

(declare-fun lt!2080691 () List!58306)

(assert (=> b!5027386 (= e!3140593 (= (size!38720 lt!2080691) e!3140592))))

(declare-fun c!860092 () Bool)

(assert (=> b!5027386 (= c!860092 (<= (+ 1 lt!2080685) 0))))

(declare-fun d!1618028 () Bool)

(assert (=> d!1618028 e!3140593))

(declare-fun res!2143148 () Bool)

(assert (=> d!1618028 (=> (not res!2143148) (not e!3140593))))

(declare-fun content!10312 (List!58306) (InoxSet C!28100))

(assert (=> d!1618028 (= res!2143148 (= ((_ map implies) (content!10312 lt!2080691) (content!10312 (drop!2572 lt!2080684 from!1228))) ((as const (InoxSet C!28100)) true)))))

(assert (=> d!1618028 (= lt!2080691 e!3140594)))

(declare-fun c!860093 () Bool)

(assert (=> d!1618028 (= c!860093 (or ((_ is Nil!58182) (drop!2572 lt!2080684 from!1228)) (<= (+ 1 lt!2080685) 0)))))

(assert (=> d!1618028 (= (take!772 (drop!2572 lt!2080684 from!1228) (+ 1 lt!2080685)) lt!2080691)))

(declare-fun b!5027387 () Bool)

(assert (=> b!5027387 (= e!3140592 e!3140591)))

(declare-fun c!860094 () Bool)

(assert (=> b!5027387 (= c!860094 (>= (+ 1 lt!2080685) (size!38720 (drop!2572 lt!2080684 from!1228))))))

(declare-fun b!5027388 () Bool)

(assert (=> b!5027388 (= e!3140594 Nil!58182)))

(declare-fun b!5027389 () Bool)

(assert (=> b!5027389 (= e!3140591 (+ 1 lt!2080685))))

(assert (= (and d!1618028 c!860093) b!5027388))

(assert (= (and d!1618028 (not c!860093)) b!5027384))

(assert (= (and d!1618028 res!2143148) b!5027386))

(assert (= (and b!5027386 c!860092) b!5027385))

(assert (= (and b!5027386 (not c!860092)) b!5027387))

(assert (= (and b!5027387 c!860094) b!5027383))

(assert (= (and b!5027387 (not c!860094)) b!5027389))

(declare-fun m!6062756 () Bool)

(assert (=> b!5027386 m!6062756))

(assert (=> b!5027383 m!6062740))

(declare-fun m!6062758 () Bool)

(assert (=> b!5027383 m!6062758))

(declare-fun m!6062760 () Bool)

(assert (=> d!1618028 m!6062760))

(assert (=> d!1618028 m!6062740))

(declare-fun m!6062762 () Bool)

(assert (=> d!1618028 m!6062762))

(declare-fun m!6062764 () Bool)

(assert (=> b!5027384 m!6062764))

(assert (=> b!5027387 m!6062740))

(assert (=> b!5027387 m!6062758))

(assert (=> b!5027355 d!1618028))

(declare-fun d!1618032 () Bool)

(declare-fun e!3140614 () Bool)

(assert (=> d!1618032 e!3140614))

(declare-fun res!2143153 () Bool)

(assert (=> d!1618032 (=> (not res!2143153) (not e!3140614))))

(declare-fun lt!2080696 () List!58306)

(assert (=> d!1618032 (= res!2143153 (= ((_ map implies) (content!10312 lt!2080696) (content!10312 lt!2080684)) ((as const (InoxSet C!28100)) true)))))

(declare-fun e!3140615 () List!58306)

(assert (=> d!1618032 (= lt!2080696 e!3140615)))

(declare-fun c!860110 () Bool)

(assert (=> d!1618032 (= c!860110 ((_ is Nil!58182) lt!2080684))))

(assert (=> d!1618032 (= (drop!2572 lt!2080684 from!1228) lt!2080696)))

(declare-fun bm!350804 () Bool)

(declare-fun call!350809 () Int)

(assert (=> bm!350804 (= call!350809 (size!38720 lt!2080684))))

(declare-fun b!5027424 () Bool)

(declare-fun e!3140619 () Int)

(assert (=> b!5027424 (= e!3140619 0)))

(declare-fun b!5027425 () Bool)

(declare-fun e!3140618 () List!58306)

(assert (=> b!5027425 (= e!3140615 e!3140618)))

(declare-fun c!860113 () Bool)

(assert (=> b!5027425 (= c!860113 (<= from!1228 0))))

(declare-fun b!5027426 () Bool)

(declare-fun e!3140616 () Int)

(assert (=> b!5027426 (= e!3140614 (= (size!38720 lt!2080696) e!3140616))))

(declare-fun c!860111 () Bool)

(assert (=> b!5027426 (= c!860111 (<= from!1228 0))))

(declare-fun b!5027428 () Bool)

(assert (=> b!5027428 (= e!3140619 (- call!350809 from!1228))))

(declare-fun b!5027430 () Bool)

(assert (=> b!5027430 (= e!3140616 e!3140619)))

(declare-fun c!860114 () Bool)

(assert (=> b!5027430 (= c!860114 (>= from!1228 call!350809))))

(declare-fun b!5027432 () Bool)

(assert (=> b!5027432 (= e!3140615 Nil!58182)))

(declare-fun b!5027434 () Bool)

(assert (=> b!5027434 (= e!3140618 (drop!2572 (t!370714 lt!2080684) (- from!1228 1)))))

(declare-fun b!5027436 () Bool)

(assert (=> b!5027436 (= e!3140616 call!350809)))

(declare-fun b!5027438 () Bool)

(assert (=> b!5027438 (= e!3140618 lt!2080684)))

(assert (= (and d!1618032 c!860110) b!5027432))

(assert (= (and d!1618032 (not c!860110)) b!5027425))

(assert (= (and b!5027425 c!860113) b!5027438))

(assert (= (and b!5027425 (not c!860113)) b!5027434))

(assert (= (and d!1618032 res!2143153) b!5027426))

(assert (= (and b!5027426 c!860111) b!5027436))

(assert (= (and b!5027426 (not c!860111)) b!5027430))

(assert (= (and b!5027430 c!860114) b!5027424))

(assert (= (and b!5027430 (not c!860114)) b!5027428))

(assert (= (or b!5027436 b!5027430 b!5027428) bm!350804))

(declare-fun m!6062778 () Bool)

(assert (=> d!1618032 m!6062778))

(declare-fun m!6062781 () Bool)

(assert (=> d!1618032 m!6062781))

(assert (=> bm!350804 m!6062738))

(declare-fun m!6062786 () Bool)

(assert (=> b!5027426 m!6062786))

(declare-fun m!6062788 () Bool)

(assert (=> b!5027434 m!6062788))

(assert (=> b!5027355 d!1618032))

(declare-fun d!1618036 () Bool)

(declare-fun e!3140642 () Bool)

(assert (=> d!1618036 e!3140642))

(declare-fun res!2143162 () Bool)

(assert (=> d!1618036 (=> res!2143162 e!3140642)))

(assert (=> d!1618036 (= res!2143162 (= (findLongestMatchInnerZipperFastV2!239 lt!2080681 (+ 1 from!1228) totalInput!1141 (size!38719 totalInput!1141)) 0))))

(declare-fun lt!2080706 () Unit!149371)

(declare-fun choose!37202 ((InoxSet Context!6700) Int BalanceConc!30318) Unit!149371)

(assert (=> d!1618036 (= lt!2080706 (choose!37202 lt!2080681 (+ 1 from!1228) totalInput!1141))))

(declare-fun e!3140643 () Bool)

(assert (=> d!1618036 e!3140643))

(declare-fun res!2143163 () Bool)

(assert (=> d!1618036 (=> (not res!2143163) (not e!3140643))))

(assert (=> d!1618036 (= res!2143163 (>= (+ 1 from!1228) 0))))

(assert (=> d!1618036 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!116 lt!2080681 (+ 1 from!1228) totalInput!1141) lt!2080706)))

(declare-fun b!5027471 () Bool)

(assert (=> b!5027471 (= e!3140643 (<= (+ 1 from!1228) (size!38719 totalInput!1141)))))

(declare-fun b!5027472 () Bool)

(assert (=> b!5027472 (= e!3140642 (matchZipper!675 lt!2080681 (take!772 (drop!2572 (list!18787 totalInput!1141) (+ 1 from!1228)) (findLongestMatchInnerZipperFastV2!239 lt!2080681 (+ 1 from!1228) totalInput!1141 (size!38719 totalInput!1141)))))))

(assert (= (and d!1618036 res!2143163) b!5027471))

(assert (= (and d!1618036 (not res!2143162)) b!5027472))

(assert (=> d!1618036 m!6062746))

(assert (=> d!1618036 m!6062746))

(declare-fun m!6062810 () Bool)

(assert (=> d!1618036 m!6062810))

(declare-fun m!6062812 () Bool)

(assert (=> d!1618036 m!6062812))

(assert (=> b!5027471 m!6062746))

(assert (=> b!5027472 m!6062730))

(assert (=> b!5027472 m!6062730))

(assert (=> b!5027472 m!6062748))

(assert (=> b!5027472 m!6062746))

(declare-fun m!6062814 () Bool)

(assert (=> b!5027472 m!6062814))

(declare-fun m!6062816 () Bool)

(assert (=> b!5027472 m!6062816))

(assert (=> b!5027472 m!6062748))

(assert (=> b!5027472 m!6062810))

(assert (=> b!5027472 m!6062814))

(assert (=> b!5027472 m!6062746))

(assert (=> b!5027472 m!6062810))

(assert (=> b!5027354 d!1618036))

(declare-fun b!5027489 () Bool)

(declare-fun e!3140657 () Bool)

(assert (=> b!5027489 (= e!3140657 (<= (+ 1 from!1228) (size!38719 totalInput!1141)))))

(declare-fun b!5027490 () Bool)

(declare-fun e!3140655 () Int)

(declare-fun e!3140654 () Int)

(assert (=> b!5027490 (= e!3140655 e!3140654)))

(declare-fun lt!2080713 () (InoxSet Context!6700))

(assert (=> b!5027490 (= lt!2080713 (derivationStepZipper!720 lt!2080681 (apply!14170 totalInput!1141 (+ 1 from!1228))))))

(declare-fun lt!2080714 () Int)

(assert (=> b!5027490 (= lt!2080714 (findLongestMatchInnerZipperFastV2!239 lt!2080713 (+ 1 from!1228 1) totalInput!1141 lt!2080680))))

(declare-fun c!860136 () Bool)

(assert (=> b!5027490 (= c!860136 (> lt!2080714 0))))

(declare-fun b!5027491 () Bool)

(declare-fun e!3140658 () Int)

(assert (=> b!5027491 (= e!3140658 0)))

(declare-fun d!1618046 () Bool)

(declare-fun lt!2080715 () Int)

(assert (=> d!1618046 (and (>= lt!2080715 0) (<= lt!2080715 (- lt!2080680 (+ 1 from!1228))))))

(assert (=> d!1618046 (= lt!2080715 e!3140655)))

(declare-fun c!860137 () Bool)

(declare-fun e!3140656 () Bool)

(assert (=> d!1618046 (= c!860137 e!3140656)))

(declare-fun res!2143169 () Bool)

(assert (=> d!1618046 (=> res!2143169 e!3140656)))

(assert (=> d!1618046 (= res!2143169 (= (+ 1 from!1228) lt!2080680))))

(assert (=> d!1618046 e!3140657))

(declare-fun res!2143168 () Bool)

(assert (=> d!1618046 (=> (not res!2143168) (not e!3140657))))

(assert (=> d!1618046 (= res!2143168 (>= (+ 1 from!1228) 0))))

(assert (=> d!1618046 (= (findLongestMatchInnerZipperFastV2!239 lt!2080681 (+ 1 from!1228) totalInput!1141 lt!2080680) lt!2080715)))

(declare-fun b!5027492 () Bool)

(assert (=> b!5027492 (= e!3140655 0)))

(declare-fun b!5027493 () Bool)

(declare-fun c!860135 () Bool)

(declare-fun nullableZipper!933 ((InoxSet Context!6700)) Bool)

(assert (=> b!5027493 (= c!860135 (nullableZipper!933 lt!2080713))))

(assert (=> b!5027493 (= e!3140654 e!3140658)))

(declare-fun b!5027494 () Bool)

(assert (=> b!5027494 (= e!3140658 1)))

(declare-fun b!5027495 () Bool)

(assert (=> b!5027495 (= e!3140656 (lostCauseZipper!939 lt!2080681))))

(declare-fun b!5027496 () Bool)

(assert (=> b!5027496 (= e!3140654 (+ 1 lt!2080714))))

(assert (= (and d!1618046 res!2143168) b!5027489))

(assert (= (and d!1618046 (not res!2143169)) b!5027495))

(assert (= (and d!1618046 c!860137) b!5027492))

(assert (= (and d!1618046 (not c!860137)) b!5027490))

(assert (= (and b!5027490 c!860136) b!5027496))

(assert (= (and b!5027490 (not c!860136)) b!5027493))

(assert (= (and b!5027493 c!860135) b!5027494))

(assert (= (and b!5027493 (not c!860135)) b!5027491))

(assert (=> b!5027489 m!6062746))

(declare-fun m!6062818 () Bool)

(assert (=> b!5027490 m!6062818))

(assert (=> b!5027490 m!6062818))

(declare-fun m!6062820 () Bool)

(assert (=> b!5027490 m!6062820))

(declare-fun m!6062822 () Bool)

(assert (=> b!5027490 m!6062822))

(declare-fun m!6062824 () Bool)

(assert (=> b!5027493 m!6062824))

(declare-fun m!6062826 () Bool)

(assert (=> b!5027495 m!6062826))

(assert (=> b!5027354 d!1618046))

(declare-fun d!1618048 () Bool)

(declare-fun e!3140659 () Bool)

(assert (=> d!1618048 e!3140659))

(declare-fun res!2143170 () Bool)

(assert (=> d!1618048 (=> (not res!2143170) (not e!3140659))))

(declare-fun lt!2080716 () List!58306)

(assert (=> d!1618048 (= res!2143170 (= ((_ map implies) (content!10312 lt!2080716) (content!10312 lt!2080684)) ((as const (InoxSet C!28100)) true)))))

(declare-fun e!3140660 () List!58306)

(assert (=> d!1618048 (= lt!2080716 e!3140660)))

(declare-fun c!860138 () Bool)

(assert (=> d!1618048 (= c!860138 ((_ is Nil!58182) lt!2080684))))

(assert (=> d!1618048 (= (drop!2572 lt!2080684 (+ 1 from!1228)) lt!2080716)))

(declare-fun bm!350808 () Bool)

(declare-fun call!350813 () Int)

(assert (=> bm!350808 (= call!350813 (size!38720 lt!2080684))))

(declare-fun b!5027497 () Bool)

(declare-fun e!3140663 () Int)

(assert (=> b!5027497 (= e!3140663 0)))

(declare-fun b!5027498 () Bool)

(declare-fun e!3140662 () List!58306)

(assert (=> b!5027498 (= e!3140660 e!3140662)))

(declare-fun c!860140 () Bool)

(assert (=> b!5027498 (= c!860140 (<= (+ 1 from!1228) 0))))

(declare-fun b!5027499 () Bool)

(declare-fun e!3140661 () Int)

(assert (=> b!5027499 (= e!3140659 (= (size!38720 lt!2080716) e!3140661))))

(declare-fun c!860139 () Bool)

(assert (=> b!5027499 (= c!860139 (<= (+ 1 from!1228) 0))))

(declare-fun b!5027500 () Bool)

(assert (=> b!5027500 (= e!3140663 (- call!350813 (+ 1 from!1228)))))

(declare-fun b!5027501 () Bool)

(assert (=> b!5027501 (= e!3140661 e!3140663)))

(declare-fun c!860141 () Bool)

(assert (=> b!5027501 (= c!860141 (>= (+ 1 from!1228) call!350813))))

(declare-fun b!5027502 () Bool)

(assert (=> b!5027502 (= e!3140660 Nil!58182)))

(declare-fun b!5027503 () Bool)

(assert (=> b!5027503 (= e!3140662 (drop!2572 (t!370714 lt!2080684) (- (+ 1 from!1228) 1)))))

(declare-fun b!5027504 () Bool)

(assert (=> b!5027504 (= e!3140661 call!350813)))

(declare-fun b!5027505 () Bool)

(assert (=> b!5027505 (= e!3140662 lt!2080684)))

(assert (= (and d!1618048 c!860138) b!5027502))

(assert (= (and d!1618048 (not c!860138)) b!5027498))

(assert (= (and b!5027498 c!860140) b!5027505))

(assert (= (and b!5027498 (not c!860140)) b!5027503))

(assert (= (and d!1618048 res!2143170) b!5027499))

(assert (= (and b!5027499 c!860139) b!5027504))

(assert (= (and b!5027499 (not c!860139)) b!5027501))

(assert (= (and b!5027501 c!860141) b!5027497))

(assert (= (and b!5027501 (not c!860141)) b!5027500))

(assert (= (or b!5027504 b!5027501 b!5027500) bm!350808))

(declare-fun m!6062828 () Bool)

(assert (=> d!1618048 m!6062828))

(assert (=> d!1618048 m!6062781))

(assert (=> bm!350808 m!6062738))

(declare-fun m!6062830 () Bool)

(assert (=> b!5027499 m!6062830))

(declare-fun m!6062832 () Bool)

(assert (=> b!5027503 m!6062832))

(assert (=> b!5027354 d!1618048))

(declare-fun b!5027506 () Bool)

(declare-fun e!3140664 () Int)

(assert (=> b!5027506 (= e!3140664 (size!38720 (drop!2572 lt!2080684 (+ 1 from!1228))))))

(declare-fun e!3140667 () List!58306)

(declare-fun b!5027507 () Bool)

(assert (=> b!5027507 (= e!3140667 (Cons!58182 (h!64630 (drop!2572 lt!2080684 (+ 1 from!1228))) (take!772 (t!370714 (drop!2572 lt!2080684 (+ 1 from!1228))) (- lt!2080685 1))))))

(declare-fun b!5027508 () Bool)

(declare-fun e!3140665 () Int)

(assert (=> b!5027508 (= e!3140665 0)))

(declare-fun b!5027509 () Bool)

(declare-fun e!3140666 () Bool)

(declare-fun lt!2080717 () List!58306)

(assert (=> b!5027509 (= e!3140666 (= (size!38720 lt!2080717) e!3140665))))

(declare-fun c!860142 () Bool)

(assert (=> b!5027509 (= c!860142 (<= lt!2080685 0))))

(declare-fun d!1618050 () Bool)

(assert (=> d!1618050 e!3140666))

(declare-fun res!2143171 () Bool)

(assert (=> d!1618050 (=> (not res!2143171) (not e!3140666))))

(assert (=> d!1618050 (= res!2143171 (= ((_ map implies) (content!10312 lt!2080717) (content!10312 (drop!2572 lt!2080684 (+ 1 from!1228)))) ((as const (InoxSet C!28100)) true)))))

(assert (=> d!1618050 (= lt!2080717 e!3140667)))

(declare-fun c!860143 () Bool)

(assert (=> d!1618050 (= c!860143 (or ((_ is Nil!58182) (drop!2572 lt!2080684 (+ 1 from!1228))) (<= lt!2080685 0)))))

(assert (=> d!1618050 (= (take!772 (drop!2572 lt!2080684 (+ 1 from!1228)) lt!2080685) lt!2080717)))

(declare-fun b!5027510 () Bool)

(assert (=> b!5027510 (= e!3140665 e!3140664)))

(declare-fun c!860144 () Bool)

(assert (=> b!5027510 (= c!860144 (>= lt!2080685 (size!38720 (drop!2572 lt!2080684 (+ 1 from!1228)))))))

(declare-fun b!5027511 () Bool)

(assert (=> b!5027511 (= e!3140667 Nil!58182)))

(declare-fun b!5027512 () Bool)

(assert (=> b!5027512 (= e!3140664 lt!2080685)))

(assert (= (and d!1618050 c!860143) b!5027511))

(assert (= (and d!1618050 (not c!860143)) b!5027507))

(assert (= (and d!1618050 res!2143171) b!5027509))

(assert (= (and b!5027509 c!860142) b!5027508))

(assert (= (and b!5027509 (not c!860142)) b!5027510))

(assert (= (and b!5027510 c!860144) b!5027506))

(assert (= (and b!5027510 (not c!860144)) b!5027512))

(declare-fun m!6062834 () Bool)

(assert (=> b!5027509 m!6062834))

(assert (=> b!5027506 m!6062724))

(declare-fun m!6062836 () Bool)

(assert (=> b!5027506 m!6062836))

(declare-fun m!6062838 () Bool)

(assert (=> d!1618050 m!6062838))

(assert (=> d!1618050 m!6062724))

(declare-fun m!6062840 () Bool)

(assert (=> d!1618050 m!6062840))

(declare-fun m!6062842 () Bool)

(assert (=> b!5027507 m!6062842))

(assert (=> b!5027510 m!6062724))

(assert (=> b!5027510 m!6062836))

(assert (=> b!5027354 d!1618050))

(declare-fun d!1618052 () Bool)

(declare-fun list!18789 (Conc!15444) List!58306)

(assert (=> d!1618052 (= (list!18787 totalInput!1141) (list!18789 (c!860080 totalInput!1141)))))

(declare-fun bs!1188187 () Bool)

(assert (= bs!1188187 d!1618052))

(declare-fun m!6062844 () Bool)

(assert (=> bs!1188187 m!6062844))

(assert (=> b!5027354 d!1618052))

(declare-fun d!1618054 () Bool)

(assert (=> d!1618054 true))

(declare-fun lambda!249387 () Int)

(declare-fun flatMap!306 ((InoxSet Context!6700) Int) (InoxSet Context!6700))

(assert (=> d!1618054 (= (derivationStepZipper!720 z!4747 (apply!14170 totalInput!1141 from!1228)) (flatMap!306 z!4747 lambda!249387))))

(declare-fun bs!1188191 () Bool)

(assert (= bs!1188191 d!1618054))

(declare-fun m!6062914 () Bool)

(assert (=> bs!1188191 m!6062914))

(assert (=> b!5027354 d!1618054))

(declare-fun d!1618080 () Bool)

(declare-fun lt!2080766 () C!28100)

(declare-fun apply!14173 (List!58306 Int) C!28100)

(assert (=> d!1618080 (= lt!2080766 (apply!14173 (list!18787 totalInput!1141) from!1228))))

(declare-fun apply!14174 (Conc!15444 Int) C!28100)

(assert (=> d!1618080 (= lt!2080766 (apply!14174 (c!860080 totalInput!1141) from!1228))))

(declare-fun e!3140733 () Bool)

(assert (=> d!1618080 e!3140733))

(declare-fun res!2143196 () Bool)

(assert (=> d!1618080 (=> (not res!2143196) (not e!3140733))))

(assert (=> d!1618080 (= res!2143196 (<= 0 from!1228))))

(assert (=> d!1618080 (= (apply!14170 totalInput!1141 from!1228) lt!2080766)))

(declare-fun b!5027614 () Bool)

(assert (=> b!5027614 (= e!3140733 (< from!1228 (size!38719 totalInput!1141)))))

(assert (= (and d!1618080 res!2143196) b!5027614))

(assert (=> d!1618080 m!6062730))

(assert (=> d!1618080 m!6062730))

(declare-fun m!6062930 () Bool)

(assert (=> d!1618080 m!6062930))

(declare-fun m!6062932 () Bool)

(assert (=> d!1618080 m!6062932))

(assert (=> b!5027614 m!6062746))

(assert (=> b!5027354 d!1618080))

(declare-fun d!1618082 () Bool)

(declare-fun c!860191 () Bool)

(assert (=> d!1618082 (= c!860191 ((_ is Node!15444) (c!860080 totalInput!1141)))))

(declare-fun e!3140745 () Bool)

(assert (=> d!1618082 (= (inv!76738 (c!860080 totalInput!1141)) e!3140745)))

(declare-fun b!5027633 () Bool)

(declare-fun inv!76742 (Conc!15444) Bool)

(assert (=> b!5027633 (= e!3140745 (inv!76742 (c!860080 totalInput!1141)))))

(declare-fun b!5027634 () Bool)

(declare-fun e!3140746 () Bool)

(assert (=> b!5027634 (= e!3140745 e!3140746)))

(declare-fun res!2143199 () Bool)

(assert (=> b!5027634 (= res!2143199 (not ((_ is Leaf!25620) (c!860080 totalInput!1141))))))

(assert (=> b!5027634 (=> res!2143199 e!3140746)))

(declare-fun b!5027635 () Bool)

(declare-fun inv!76743 (Conc!15444) Bool)

(assert (=> b!5027635 (= e!3140746 (inv!76743 (c!860080 totalInput!1141)))))

(assert (= (and d!1618082 c!860191) b!5027633))

(assert (= (and d!1618082 (not c!860191)) b!5027634))

(assert (= (and b!5027634 (not res!2143199)) b!5027635))

(declare-fun m!6062942 () Bool)

(assert (=> b!5027633 m!6062942))

(declare-fun m!6062944 () Bool)

(assert (=> b!5027635 m!6062944))

(assert (=> b!5027353 d!1618082))

(declare-fun d!1618084 () Bool)

(declare-fun isBalanced!4309 (Conc!15444) Bool)

(assert (=> d!1618084 (= (inv!76739 totalInput!1141) (isBalanced!4309 (c!860080 totalInput!1141)))))

(declare-fun bs!1188195 () Bool)

(assert (= bs!1188195 d!1618084))

(declare-fun m!6062946 () Bool)

(assert (=> bs!1188195 m!6062946))

(assert (=> start!531552 d!1618084))

(declare-fun c!860194 () Bool)

(declare-fun d!1618086 () Bool)

(declare-fun isEmpty!31460 (List!58306) Bool)

(assert (=> d!1618086 (= c!860194 (isEmpty!31460 (take!772 (drop!2572 (list!18787 totalInput!1141) (+ 1 from!1228)) lt!2080685)))))

(declare-fun e!3140749 () Bool)

(assert (=> d!1618086 (= (matchZipper!675 lt!2080681 (take!772 (drop!2572 (list!18787 totalInput!1141) (+ 1 from!1228)) lt!2080685)) e!3140749)))

(declare-fun b!5027640 () Bool)

(assert (=> b!5027640 (= e!3140749 (nullableZipper!933 lt!2080681))))

(declare-fun b!5027641 () Bool)

(declare-fun head!10781 (List!58306) C!28100)

(declare-fun tail!9914 (List!58306) List!58306)

(assert (=> b!5027641 (= e!3140749 (matchZipper!675 (derivationStepZipper!720 lt!2080681 (head!10781 (take!772 (drop!2572 (list!18787 totalInput!1141) (+ 1 from!1228)) lt!2080685))) (tail!9914 (take!772 (drop!2572 (list!18787 totalInput!1141) (+ 1 from!1228)) lt!2080685))))))

(assert (= (and d!1618086 c!860194) b!5027640))

(assert (= (and d!1618086 (not c!860194)) b!5027641))

(assert (=> d!1618086 m!6062750))

(declare-fun m!6062948 () Bool)

(assert (=> d!1618086 m!6062948))

(declare-fun m!6062950 () Bool)

(assert (=> b!5027640 m!6062950))

(assert (=> b!5027641 m!6062750))

(declare-fun m!6062952 () Bool)

(assert (=> b!5027641 m!6062952))

(assert (=> b!5027641 m!6062952))

(declare-fun m!6062954 () Bool)

(assert (=> b!5027641 m!6062954))

(assert (=> b!5027641 m!6062750))

(declare-fun m!6062956 () Bool)

(assert (=> b!5027641 m!6062956))

(assert (=> b!5027641 m!6062954))

(assert (=> b!5027641 m!6062956))

(declare-fun m!6062958 () Bool)

(assert (=> b!5027641 m!6062958))

(assert (=> b!5027352 d!1618086))

(declare-fun b!5027642 () Bool)

(declare-fun e!3140750 () Int)

(assert (=> b!5027642 (= e!3140750 (size!38720 (drop!2572 (list!18787 totalInput!1141) (+ 1 from!1228))))))

(declare-fun b!5027643 () Bool)

(declare-fun e!3140753 () List!58306)

(assert (=> b!5027643 (= e!3140753 (Cons!58182 (h!64630 (drop!2572 (list!18787 totalInput!1141) (+ 1 from!1228))) (take!772 (t!370714 (drop!2572 (list!18787 totalInput!1141) (+ 1 from!1228))) (- lt!2080685 1))))))

(declare-fun b!5027644 () Bool)

(declare-fun e!3140751 () Int)

(assert (=> b!5027644 (= e!3140751 0)))

(declare-fun b!5027645 () Bool)

(declare-fun e!3140752 () Bool)

(declare-fun lt!2080767 () List!58306)

(assert (=> b!5027645 (= e!3140752 (= (size!38720 lt!2080767) e!3140751))))

(declare-fun c!860195 () Bool)

(assert (=> b!5027645 (= c!860195 (<= lt!2080685 0))))

(declare-fun d!1618088 () Bool)

(assert (=> d!1618088 e!3140752))

(declare-fun res!2143200 () Bool)

(assert (=> d!1618088 (=> (not res!2143200) (not e!3140752))))

(assert (=> d!1618088 (= res!2143200 (= ((_ map implies) (content!10312 lt!2080767) (content!10312 (drop!2572 (list!18787 totalInput!1141) (+ 1 from!1228)))) ((as const (InoxSet C!28100)) true)))))

(assert (=> d!1618088 (= lt!2080767 e!3140753)))

(declare-fun c!860196 () Bool)

(assert (=> d!1618088 (= c!860196 (or ((_ is Nil!58182) (drop!2572 (list!18787 totalInput!1141) (+ 1 from!1228))) (<= lt!2080685 0)))))

(assert (=> d!1618088 (= (take!772 (drop!2572 (list!18787 totalInput!1141) (+ 1 from!1228)) lt!2080685) lt!2080767)))

(declare-fun b!5027646 () Bool)

(assert (=> b!5027646 (= e!3140751 e!3140750)))

(declare-fun c!860197 () Bool)

(assert (=> b!5027646 (= c!860197 (>= lt!2080685 (size!38720 (drop!2572 (list!18787 totalInput!1141) (+ 1 from!1228)))))))

(declare-fun b!5027647 () Bool)

(assert (=> b!5027647 (= e!3140753 Nil!58182)))

(declare-fun b!5027648 () Bool)

(assert (=> b!5027648 (= e!3140750 lt!2080685)))

(assert (= (and d!1618088 c!860196) b!5027647))

(assert (= (and d!1618088 (not c!860196)) b!5027643))

(assert (= (and d!1618088 res!2143200) b!5027645))

(assert (= (and b!5027645 c!860195) b!5027644))

(assert (= (and b!5027645 (not c!860195)) b!5027646))

(assert (= (and b!5027646 c!860197) b!5027642))

(assert (= (and b!5027646 (not c!860197)) b!5027648))

(declare-fun m!6062960 () Bool)

(assert (=> b!5027645 m!6062960))

(assert (=> b!5027642 m!6062748))

(declare-fun m!6062962 () Bool)

(assert (=> b!5027642 m!6062962))

(declare-fun m!6062964 () Bool)

(assert (=> d!1618088 m!6062964))

(assert (=> d!1618088 m!6062748))

(declare-fun m!6062966 () Bool)

(assert (=> d!1618088 m!6062966))

(declare-fun m!6062968 () Bool)

(assert (=> b!5027643 m!6062968))

(assert (=> b!5027646 m!6062748))

(assert (=> b!5027646 m!6062962))

(assert (=> b!5027352 d!1618088))

(declare-fun d!1618090 () Bool)

(declare-fun e!3140754 () Bool)

(assert (=> d!1618090 e!3140754))

(declare-fun res!2143201 () Bool)

(assert (=> d!1618090 (=> (not res!2143201) (not e!3140754))))

(declare-fun lt!2080768 () List!58306)

(assert (=> d!1618090 (= res!2143201 (= ((_ map implies) (content!10312 lt!2080768) (content!10312 (list!18787 totalInput!1141))) ((as const (InoxSet C!28100)) true)))))

(declare-fun e!3140755 () List!58306)

(assert (=> d!1618090 (= lt!2080768 e!3140755)))

(declare-fun c!860198 () Bool)

(assert (=> d!1618090 (= c!860198 ((_ is Nil!58182) (list!18787 totalInput!1141)))))

(assert (=> d!1618090 (= (drop!2572 (list!18787 totalInput!1141) (+ 1 from!1228)) lt!2080768)))

(declare-fun bm!350817 () Bool)

(declare-fun call!350822 () Int)

(assert (=> bm!350817 (= call!350822 (size!38720 (list!18787 totalInput!1141)))))

(declare-fun b!5027649 () Bool)

(declare-fun e!3140758 () Int)

(assert (=> b!5027649 (= e!3140758 0)))

(declare-fun b!5027650 () Bool)

(declare-fun e!3140757 () List!58306)

(assert (=> b!5027650 (= e!3140755 e!3140757)))

(declare-fun c!860200 () Bool)

(assert (=> b!5027650 (= c!860200 (<= (+ 1 from!1228) 0))))

(declare-fun b!5027651 () Bool)

(declare-fun e!3140756 () Int)

(assert (=> b!5027651 (= e!3140754 (= (size!38720 lt!2080768) e!3140756))))

(declare-fun c!860199 () Bool)

(assert (=> b!5027651 (= c!860199 (<= (+ 1 from!1228) 0))))

(declare-fun b!5027652 () Bool)

(assert (=> b!5027652 (= e!3140758 (- call!350822 (+ 1 from!1228)))))

(declare-fun b!5027653 () Bool)

(assert (=> b!5027653 (= e!3140756 e!3140758)))

(declare-fun c!860201 () Bool)

(assert (=> b!5027653 (= c!860201 (>= (+ 1 from!1228) call!350822))))

(declare-fun b!5027654 () Bool)

(assert (=> b!5027654 (= e!3140755 Nil!58182)))

(declare-fun b!5027655 () Bool)

(assert (=> b!5027655 (= e!3140757 (drop!2572 (t!370714 (list!18787 totalInput!1141)) (- (+ 1 from!1228) 1)))))

(declare-fun b!5027656 () Bool)

(assert (=> b!5027656 (= e!3140756 call!350822)))

(declare-fun b!5027657 () Bool)

(assert (=> b!5027657 (= e!3140757 (list!18787 totalInput!1141))))

(assert (= (and d!1618090 c!860198) b!5027654))

(assert (= (and d!1618090 (not c!860198)) b!5027650))

(assert (= (and b!5027650 c!860200) b!5027657))

(assert (= (and b!5027650 (not c!860200)) b!5027655))

(assert (= (and d!1618090 res!2143201) b!5027651))

(assert (= (and b!5027651 c!860199) b!5027656))

(assert (= (and b!5027651 (not c!860199)) b!5027653))

(assert (= (and b!5027653 c!860201) b!5027649))

(assert (= (and b!5027653 (not c!860201)) b!5027652))

(assert (= (or b!5027656 b!5027653 b!5027652) bm!350817))

(declare-fun m!6062970 () Bool)

(assert (=> d!1618090 m!6062970))

(assert (=> d!1618090 m!6062730))

(declare-fun m!6062972 () Bool)

(assert (=> d!1618090 m!6062972))

(assert (=> bm!350817 m!6062730))

(declare-fun m!6062974 () Bool)

(assert (=> bm!350817 m!6062974))

(declare-fun m!6062976 () Bool)

(assert (=> b!5027651 m!6062976))

(declare-fun m!6062978 () Bool)

(assert (=> b!5027655 m!6062978))

(assert (=> b!5027352 d!1618090))

(assert (=> b!5027352 d!1618052))

(declare-fun d!1618092 () Bool)

(declare-fun lt!2080771 () Int)

(assert (=> d!1618092 (= lt!2080771 (size!38720 (list!18787 totalInput!1141)))))

(declare-fun size!38722 (Conc!15444) Int)

(assert (=> d!1618092 (= lt!2080771 (size!38722 (c!860080 totalInput!1141)))))

(assert (=> d!1618092 (= (size!38719 totalInput!1141) lt!2080771)))

(declare-fun bs!1188196 () Bool)

(assert (= bs!1188196 d!1618092))

(assert (=> bs!1188196 m!6062730))

(assert (=> bs!1188196 m!6062730))

(assert (=> bs!1188196 m!6062974))

(declare-fun m!6062980 () Bool)

(assert (=> bs!1188196 m!6062980))

(assert (=> b!5027351 d!1618092))

(declare-fun bs!1188197 () Bool)

(declare-fun b!5027662 () Bool)

(declare-fun d!1618094 () Bool)

(assert (= bs!1188197 (and b!5027662 d!1618094)))

(declare-fun lambda!249408 () Int)

(declare-fun lambda!249407 () Int)

(assert (=> bs!1188197 (not (= lambda!249408 lambda!249407))))

(declare-fun bs!1188198 () Bool)

(declare-fun b!5027663 () Bool)

(assert (= bs!1188198 (and b!5027663 d!1618094)))

(declare-fun lambda!249409 () Int)

(assert (=> bs!1188198 (not (= lambda!249409 lambda!249407))))

(declare-fun bs!1188199 () Bool)

(assert (= bs!1188199 (and b!5027663 b!5027662)))

(assert (=> bs!1188199 (= lambda!249409 lambda!249408)))

(declare-datatypes ((List!58308 0))(
  ( (Nil!58184) (Cons!58184 (h!64632 Context!6700) (t!370716 List!58308)) )
))
(declare-fun lt!2080794 () List!58308)

(declare-fun lt!2080792 () List!58308)

(declare-fun bm!350823 () Bool)

(declare-fun c!860212 () Bool)

(declare-fun call!350827 () Bool)

(declare-fun exists!1401 (List!58308 Int) Bool)

(assert (=> bm!350823 (= call!350827 (exists!1401 (ite c!860212 lt!2080794 lt!2080792) (ite c!860212 lambda!249408 lambda!249409)))))

(declare-fun e!3140765 () Unit!149371)

(declare-fun Unit!149373 () Unit!149371)

(assert (=> b!5027662 (= e!3140765 Unit!149373)))

(declare-fun call!350828 () List!58308)

(assert (=> b!5027662 (= lt!2080794 call!350828)))

(declare-fun lt!2080788 () Unit!149371)

(declare-fun lemmaNotForallThenExists!275 (List!58308 Int) Unit!149371)

(assert (=> b!5027662 (= lt!2080788 (lemmaNotForallThenExists!275 lt!2080794 lambda!249407))))

(assert (=> b!5027662 call!350827))

(declare-fun lt!2080790 () Unit!149371)

(assert (=> b!5027662 (= lt!2080790 lt!2080788)))

(declare-fun Unit!149375 () Unit!149371)

(assert (=> b!5027663 (= e!3140765 Unit!149375)))

(assert (=> b!5027663 (= lt!2080792 call!350828)))

(declare-fun lt!2080793 () Unit!149371)

(declare-fun lemmaForallThenNotExists!258 (List!58308 Int) Unit!149371)

(assert (=> b!5027663 (= lt!2080793 (lemmaForallThenNotExists!258 lt!2080792 lambda!249407))))

(assert (=> b!5027663 (not call!350827)))

(declare-fun lt!2080791 () Unit!149371)

(assert (=> b!5027663 (= lt!2080791 lt!2080793)))

(declare-fun bm!350822 () Bool)

(declare-fun toList!8127 ((InoxSet Context!6700)) List!58308)

(assert (=> bm!350822 (= call!350828 (toList!8127 z!4747))))

(declare-fun lt!2080789 () Bool)

(declare-datatypes ((Option!14606 0))(
  ( (None!14605) (Some!14605 (v!50614 List!58306)) )
))
(declare-fun isEmpty!31462 (Option!14606) Bool)

(declare-fun getLanguageWitness!747 ((InoxSet Context!6700)) Option!14606)

(assert (=> d!1618094 (= lt!2080789 (isEmpty!31462 (getLanguageWitness!747 z!4747)))))

(declare-fun forall!13438 ((InoxSet Context!6700) Int) Bool)

(assert (=> d!1618094 (= lt!2080789 (forall!13438 z!4747 lambda!249407))))

(declare-fun lt!2080795 () Unit!149371)

(assert (=> d!1618094 (= lt!2080795 e!3140765)))

(assert (=> d!1618094 (= c!860212 (not (forall!13438 z!4747 lambda!249407)))))

(assert (=> d!1618094 (= (lostCauseZipper!939 z!4747) lt!2080789)))

(assert (= (and d!1618094 c!860212) b!5027662))

(assert (= (and d!1618094 (not c!860212)) b!5027663))

(assert (= (or b!5027662 b!5027663) bm!350822))

(assert (= (or b!5027662 b!5027663) bm!350823))

(declare-fun m!6062982 () Bool)

(assert (=> bm!350822 m!6062982))

(declare-fun m!6062984 () Bool)

(assert (=> b!5027662 m!6062984))

(declare-fun m!6062986 () Bool)

(assert (=> bm!350823 m!6062986))

(declare-fun m!6062988 () Bool)

(assert (=> b!5027663 m!6062988))

(declare-fun m!6062990 () Bool)

(assert (=> d!1618094 m!6062990))

(assert (=> d!1618094 m!6062990))

(declare-fun m!6062992 () Bool)

(assert (=> d!1618094 m!6062992))

(declare-fun m!6062994 () Bool)

(assert (=> d!1618094 m!6062994))

(assert (=> d!1618094 m!6062994))

(assert (=> b!5027356 d!1618094))

(declare-fun d!1618096 () Bool)

(declare-fun lambda!249412 () Int)

(declare-fun forall!13439 (List!58305 Int) Bool)

(assert (=> d!1618096 (= (inv!76737 setElem!28932) (forall!13439 (exprs!3850 setElem!28932) lambda!249412))))

(declare-fun bs!1188200 () Bool)

(assert (= bs!1188200 d!1618096))

(declare-fun m!6062996 () Bool)

(assert (=> bs!1188200 m!6062996))

(assert (=> setNonEmpty!28932 d!1618096))

(declare-fun b!5027672 () Bool)

(declare-fun tp!1409032 () Bool)

(declare-fun e!3140770 () Bool)

(declare-fun tp!1409031 () Bool)

(assert (=> b!5027672 (= e!3140770 (and (inv!76738 (left!42557 (c!860080 totalInput!1141))) tp!1409031 (inv!76738 (right!42887 (c!860080 totalInput!1141))) tp!1409032))))

(declare-fun b!5027674 () Bool)

(declare-fun e!3140771 () Bool)

(declare-fun tp!1409030 () Bool)

(assert (=> b!5027674 (= e!3140771 tp!1409030)))

(declare-fun b!5027673 () Bool)

(declare-fun inv!76744 (IArray!30949) Bool)

(assert (=> b!5027673 (= e!3140770 (and (inv!76744 (xs!18770 (c!860080 totalInput!1141))) e!3140771))))

(assert (=> b!5027353 (= tp!1409002 (and (inv!76738 (c!860080 totalInput!1141)) e!3140770))))

(assert (= (and b!5027353 ((_ is Node!15444) (c!860080 totalInput!1141))) b!5027672))

(assert (= b!5027673 b!5027674))

(assert (= (and b!5027353 ((_ is Leaf!25620) (c!860080 totalInput!1141))) b!5027673))

(declare-fun m!6062998 () Bool)

(assert (=> b!5027672 m!6062998))

(declare-fun m!6063000 () Bool)

(assert (=> b!5027672 m!6063000))

(declare-fun m!6063002 () Bool)

(assert (=> b!5027673 m!6063002))

(assert (=> b!5027353 m!6062744))

(declare-fun b!5027679 () Bool)

(declare-fun e!3140774 () Bool)

(declare-fun tp!1409037 () Bool)

(declare-fun tp!1409038 () Bool)

(assert (=> b!5027679 (= e!3140774 (and tp!1409037 tp!1409038))))

(assert (=> b!5027357 (= tp!1409001 e!3140774)))

(assert (= (and b!5027357 ((_ is Cons!58181) (exprs!3850 setElem!28932))) b!5027679))

(declare-fun condSetEmpty!28938 () Bool)

(assert (=> setNonEmpty!28932 (= condSetEmpty!28938 (= setRest!28932 ((as const (Array Context!6700 Bool)) false)))))

(declare-fun setRes!28938 () Bool)

(assert (=> setNonEmpty!28932 (= tp!1409000 setRes!28938)))

(declare-fun setIsEmpty!28938 () Bool)

(assert (=> setIsEmpty!28938 setRes!28938))

(declare-fun e!3140777 () Bool)

(declare-fun setNonEmpty!28938 () Bool)

(declare-fun tp!1409043 () Bool)

(declare-fun setElem!28938 () Context!6700)

(assert (=> setNonEmpty!28938 (= setRes!28938 (and tp!1409043 (inv!76737 setElem!28938) e!3140777))))

(declare-fun setRest!28938 () (InoxSet Context!6700))

(assert (=> setNonEmpty!28938 (= setRest!28932 ((_ map or) (store ((as const (Array Context!6700 Bool)) false) setElem!28938 true) setRest!28938))))

(declare-fun b!5027684 () Bool)

(declare-fun tp!1409044 () Bool)

(assert (=> b!5027684 (= e!3140777 tp!1409044)))

(assert (= (and setNonEmpty!28932 condSetEmpty!28938) setIsEmpty!28938))

(assert (= (and setNonEmpty!28932 (not condSetEmpty!28938)) setNonEmpty!28938))

(assert (= setNonEmpty!28938 b!5027684))

(declare-fun m!6063004 () Bool)

(assert (=> setNonEmpty!28938 m!6063004))

(check-sat (not b!5027674) (not b!5027684) (not b!5027641) (not d!1618050) (not b!5027640) (not d!1618094) (not b!5027633) (not d!1618092) (not b!5027646) (not b!5027645) (not b!5027490) (not b!5027499) (not bm!350822) (not b!5027386) (not b!5027506) (not d!1618080) (not d!1618054) (not b!5027507) (not b!5027509) (not d!1618086) (not b!5027655) (not b!5027472) (not b!5027673) (not setNonEmpty!28938) (not b!5027384) (not b!5027642) (not b!5027353) (not b!5027635) (not b!5027434) (not b!5027364) (not bm!350808) (not b!5027663) (not b!5027493) (not b!5027489) (not b!5027503) (not d!1618090) (not b!5027383) (not b!5027510) (not bm!350823) (not b!5027672) (not d!1618032) (not b!5027471) (not b!5027651) (not b!5027426) (not d!1618088) (not d!1618096) (not b!5027495) (not d!1618036) (not b!5027387) (not b!5027643) (not d!1618052) (not b!5027662) (not b!5027614) (not d!1618048) (not bm!350804) (not b!5027679) (not d!1618084) (not bm!350817) (not d!1618028))
(check-sat)
