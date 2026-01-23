; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!283598 () Bool)

(assert start!283598)

(declare-fun b!2910738 () Bool)

(declare-fun e!1837277 () Bool)

(declare-fun e!1837274 () Bool)

(assert (=> b!2910738 (= e!1837277 e!1837274)))

(declare-fun res!1201573 () Bool)

(assert (=> b!2910738 (=> (not res!1201573) (not e!1837274))))

(declare-fun i!1878 () Int)

(declare-fun lt!1023767 () Int)

(assert (=> b!2910738 (= res!1201573 (and (<= i!1878 lt!1023767) (not (= i!1878 lt!1023767))))))

(declare-datatypes ((C!18074 0))(
  ( (C!18075 (val!11071 Int)) )
))
(declare-datatypes ((List!34805 0))(
  ( (Nil!34681) (Cons!34681 (h!40101 C!18074) (t!233868 List!34805)) )
))
(declare-datatypes ((IArray!21047 0))(
  ( (IArray!21048 (innerList!10581 List!34805)) )
))
(declare-datatypes ((Conc!10521 0))(
  ( (Node!10521 (left!26057 Conc!10521) (right!26387 Conc!10521) (csize!21272 Int) (cheight!10732 Int)) (Leaf!16218 (xs!13639 IArray!21047) (csize!21273 Int)) (Empty!10521) )
))
(declare-datatypes ((BalanceConc!20680 0))(
  ( (BalanceConc!20681 (c!474608 Conc!10521)) )
))
(declare-fun input!3770 () BalanceConc!20680)

(declare-fun size!26428 (BalanceConc!20680) Int)

(assert (=> b!2910738 (= lt!1023767 (size!26428 input!3770))))

(declare-fun setRes!25934 () Bool)

(declare-fun e!1837275 () Bool)

(declare-fun setNonEmpty!25934 () Bool)

(declare-datatypes ((Regex!8946 0))(
  ( (ElementMatch!8946 (c!474609 C!18074)) (Concat!14267 (regOne!18404 Regex!8946) (regTwo!18404 Regex!8946)) (EmptyExpr!8946) (Star!8946 (reg!9275 Regex!8946)) (EmptyLang!8946) (Union!8946 (regOne!18405 Regex!8946) (regTwo!18405 Regex!8946)) )
))
(declare-datatypes ((List!34806 0))(
  ( (Nil!34682) (Cons!34682 (h!40102 Regex!8946) (t!233869 List!34806)) )
))
(declare-datatypes ((Context!5532 0))(
  ( (Context!5533 (exprs!3266 List!34806)) )
))
(declare-fun setElem!25934 () Context!5532)

(declare-fun tp!935216 () Bool)

(declare-fun inv!46870 (Context!5532) Bool)

(assert (=> setNonEmpty!25934 (= setRes!25934 (and tp!935216 (inv!46870 setElem!25934) e!1837275))))

(declare-fun z!644 () (Set Context!5532))

(declare-fun setRest!25934 () (Set Context!5532))

(assert (=> setNonEmpty!25934 (= z!644 (set.union (set.insert setElem!25934 (as set.empty (Set Context!5532))) setRest!25934))))

(declare-fun b!2910739 () Bool)

(declare-fun e!1837276 () Bool)

(declare-fun tp!935217 () Bool)

(declare-fun inv!46871 (Conc!10521) Bool)

(assert (=> b!2910739 (= e!1837276 (and (inv!46871 (c!474608 input!3770)) tp!935217))))

(declare-fun b!2910740 () Bool)

(declare-fun tp!935218 () Bool)

(assert (=> b!2910740 (= e!1837275 tp!935218)))

(declare-fun b!2910741 () Bool)

(declare-fun lt!1023766 () List!34805)

(declare-fun size!26429 (List!34805) Int)

(assert (=> b!2910741 (= e!1837274 (not (< i!1878 (size!26429 lt!1023766))))))

(declare-fun head!6461 (List!34805) C!18074)

(declare-fun drop!1830 (List!34805 Int) List!34805)

(declare-fun apply!7920 (List!34805 Int) C!18074)

(assert (=> b!2910741 (= (head!6461 (drop!1830 lt!1023766 i!1878)) (apply!7920 lt!1023766 i!1878))))

(declare-datatypes ((Unit!48231 0))(
  ( (Unit!48232) )
))
(declare-fun lt!1023764 () Unit!48231)

(declare-fun lemmaDropApply!1006 (List!34805 Int) Unit!48231)

(assert (=> b!2910741 (= lt!1023764 (lemmaDropApply!1006 lt!1023766 i!1878))))

(declare-fun list!12624 (BalanceConc!20680) List!34805)

(assert (=> b!2910741 (= lt!1023766 (list!12624 input!3770))))

(declare-fun lt!1023768 () (Set Context!5532))

(declare-fun prefixMatchZipper!382 ((Set Context!5532) List!34805) Bool)

(declare-fun dropList!1047 (BalanceConc!20680 Int) List!34805)

(declare-fun prefixMatchZipperSequence!786 ((Set Context!5532) BalanceConc!20680 Int) Bool)

(assert (=> b!2910741 (= (prefixMatchZipper!382 lt!1023768 (dropList!1047 input!3770 (+ 1 i!1878))) (prefixMatchZipperSequence!786 lt!1023768 input!3770 (+ 1 i!1878)))))

(declare-fun lt!1023765 () Unit!48231)

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!260 ((Set Context!5532) BalanceConc!20680 Int) Unit!48231)

(assert (=> b!2910741 (= lt!1023765 (lemmaprefixMatchZipperSequenceEquivalent!260 lt!1023768 input!3770 (+ 1 i!1878)))))

(declare-fun derivationStepZipper!526 ((Set Context!5532) C!18074) (Set Context!5532))

(declare-fun apply!7921 (BalanceConc!20680 Int) C!18074)

(assert (=> b!2910741 (= lt!1023768 (derivationStepZipper!526 z!644 (apply!7921 input!3770 i!1878)))))

(declare-fun setIsEmpty!25934 () Bool)

(assert (=> setIsEmpty!25934 setRes!25934))

(declare-fun res!1201574 () Bool)

(assert (=> start!283598 (=> (not res!1201574) (not e!1837277))))

(assert (=> start!283598 (= res!1201574 (>= i!1878 0))))

(assert (=> start!283598 e!1837277))

(assert (=> start!283598 true))

(declare-fun inv!46872 (BalanceConc!20680) Bool)

(assert (=> start!283598 (and (inv!46872 input!3770) e!1837276)))

(declare-fun condSetEmpty!25934 () Bool)

(assert (=> start!283598 (= condSetEmpty!25934 (= z!644 (as set.empty (Set Context!5532))))))

(assert (=> start!283598 setRes!25934))

(assert (= (and start!283598 res!1201574) b!2910738))

(assert (= (and b!2910738 res!1201573) b!2910741))

(assert (= start!283598 b!2910739))

(assert (= (and start!283598 condSetEmpty!25934) setIsEmpty!25934))

(assert (= (and start!283598 (not condSetEmpty!25934)) setNonEmpty!25934))

(assert (= setNonEmpty!25934 b!2910740))

(declare-fun m!3312297 () Bool)

(assert (=> b!2910738 m!3312297))

(declare-fun m!3312299 () Bool)

(assert (=> setNonEmpty!25934 m!3312299))

(declare-fun m!3312301 () Bool)

(assert (=> b!2910739 m!3312301))

(declare-fun m!3312303 () Bool)

(assert (=> b!2910741 m!3312303))

(declare-fun m!3312305 () Bool)

(assert (=> b!2910741 m!3312305))

(declare-fun m!3312307 () Bool)

(assert (=> b!2910741 m!3312307))

(declare-fun m!3312309 () Bool)

(assert (=> b!2910741 m!3312309))

(assert (=> b!2910741 m!3312305))

(declare-fun m!3312311 () Bool)

(assert (=> b!2910741 m!3312311))

(declare-fun m!3312313 () Bool)

(assert (=> b!2910741 m!3312313))

(declare-fun m!3312315 () Bool)

(assert (=> b!2910741 m!3312315))

(declare-fun m!3312317 () Bool)

(assert (=> b!2910741 m!3312317))

(declare-fun m!3312319 () Bool)

(assert (=> b!2910741 m!3312319))

(assert (=> b!2910741 m!3312317))

(declare-fun m!3312321 () Bool)

(assert (=> b!2910741 m!3312321))

(assert (=> b!2910741 m!3312311))

(declare-fun m!3312323 () Bool)

(assert (=> b!2910741 m!3312323))

(declare-fun m!3312325 () Bool)

(assert (=> b!2910741 m!3312325))

(declare-fun m!3312327 () Bool)

(assert (=> start!283598 m!3312327))

(push 1)

(assert (not setNonEmpty!25934))

(assert (not b!2910738))

(assert (not start!283598))

(assert (not b!2910741))

(assert (not b!2910739))

(assert (not b!2910740))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!837541 () Bool)

(declare-fun lambda!108055 () Int)

(declare-fun forall!7137 (List!34806 Int) Bool)

(assert (=> d!837541 (= (inv!46870 setElem!25934) (forall!7137 (exprs!3266 setElem!25934) lambda!108055))))

(declare-fun bs!524525 () Bool)

(assert (= bs!524525 d!837541))

(declare-fun m!3312367 () Bool)

(assert (=> bs!524525 m!3312367))

(assert (=> setNonEmpty!25934 d!837541))

(declare-fun d!837549 () Bool)

(declare-fun lt!1023789 () Int)

(assert (=> d!837549 (= lt!1023789 (size!26429 (list!12624 input!3770)))))

(declare-fun size!26432 (Conc!10521) Int)

(assert (=> d!837549 (= lt!1023789 (size!26432 (c!474608 input!3770)))))

(assert (=> d!837549 (= (size!26428 input!3770) lt!1023789)))

(declare-fun bs!524526 () Bool)

(assert (= bs!524526 d!837549))

(assert (=> bs!524526 m!3312325))

(assert (=> bs!524526 m!3312325))

(declare-fun m!3312369 () Bool)

(assert (=> bs!524526 m!3312369))

(declare-fun m!3312371 () Bool)

(assert (=> bs!524526 m!3312371))

(assert (=> b!2910738 d!837549))

(declare-fun d!837551 () Bool)

(declare-fun list!12626 (Conc!10521) List!34805)

(assert (=> d!837551 (= (dropList!1047 input!3770 (+ 1 i!1878)) (drop!1830 (list!12626 (c!474608 input!3770)) (+ 1 i!1878)))))

(declare-fun bs!524527 () Bool)

(assert (= bs!524527 d!837551))

(declare-fun m!3312373 () Bool)

(assert (=> bs!524527 m!3312373))

(assert (=> bs!524527 m!3312373))

(declare-fun m!3312375 () Bool)

(assert (=> bs!524527 m!3312375))

(assert (=> b!2910741 d!837551))

(declare-fun d!837553 () Bool)

(declare-fun lt!1023792 () C!18074)

(assert (=> d!837553 (= lt!1023792 (apply!7920 (list!12624 input!3770) i!1878))))

(declare-fun apply!7924 (Conc!10521 Int) C!18074)

(assert (=> d!837553 (= lt!1023792 (apply!7924 (c!474608 input!3770) i!1878))))

(declare-fun e!1837295 () Bool)

(assert (=> d!837553 e!1837295))

(declare-fun res!1201586 () Bool)

(assert (=> d!837553 (=> (not res!1201586) (not e!1837295))))

(assert (=> d!837553 (= res!1201586 (<= 0 i!1878))))

(assert (=> d!837553 (= (apply!7921 input!3770 i!1878) lt!1023792)))

(declare-fun b!2910759 () Bool)

(assert (=> b!2910759 (= e!1837295 (< i!1878 (size!26428 input!3770)))))

(assert (= (and d!837553 res!1201586) b!2910759))

(assert (=> d!837553 m!3312325))

(assert (=> d!837553 m!3312325))

(declare-fun m!3312377 () Bool)

(assert (=> d!837553 m!3312377))

(declare-fun m!3312379 () Bool)

(assert (=> d!837553 m!3312379))

(assert (=> b!2910759 m!3312297))

(assert (=> b!2910741 d!837553))

(declare-fun d!837555 () Bool)

(assert (=> d!837555 true))

(declare-fun lambda!108058 () Int)

(declare-fun flatMap!250 ((Set Context!5532) Int) (Set Context!5532))

(assert (=> d!837555 (= (derivationStepZipper!526 z!644 (apply!7921 input!3770 i!1878)) (flatMap!250 z!644 lambda!108058))))

(declare-fun bs!524528 () Bool)

(assert (= bs!524528 d!837555))

(declare-fun m!3312381 () Bool)

(assert (=> bs!524528 m!3312381))

(assert (=> b!2910741 d!837555))

(declare-fun b!2910780 () Bool)

(declare-fun e!1837308 () Int)

(assert (=> b!2910780 (= e!1837308 0)))

(declare-fun b!2910781 () Bool)

(declare-fun e!1837309 () List!34805)

(declare-fun e!1837310 () List!34805)

(assert (=> b!2910781 (= e!1837309 e!1837310)))

(declare-fun c!474625 () Bool)

(assert (=> b!2910781 (= c!474625 (<= i!1878 0))))

(declare-fun b!2910782 () Bool)

(declare-fun e!1837306 () Bool)

(declare-fun lt!1023795 () List!34805)

(declare-fun e!1837307 () Int)

(assert (=> b!2910782 (= e!1837306 (= (size!26429 lt!1023795) e!1837307))))

(declare-fun c!474626 () Bool)

(assert (=> b!2910782 (= c!474626 (<= i!1878 0))))

(declare-fun b!2910783 () Bool)

(assert (=> b!2910783 (= e!1837310 (drop!1830 (t!233868 lt!1023766) (- i!1878 1)))))

(declare-fun d!837557 () Bool)

(assert (=> d!837557 e!1837306))

(declare-fun res!1201589 () Bool)

(assert (=> d!837557 (=> (not res!1201589) (not e!1837306))))

(declare-fun content!4743 (List!34805) (Set C!18074))

(assert (=> d!837557 (= res!1201589 (set.subset (content!4743 lt!1023795) (content!4743 lt!1023766)))))

(assert (=> d!837557 (= lt!1023795 e!1837309)))

(declare-fun c!474627 () Bool)

(assert (=> d!837557 (= c!474627 (is-Nil!34681 lt!1023766))))

(assert (=> d!837557 (= (drop!1830 lt!1023766 i!1878) lt!1023795)))

(declare-fun b!2910784 () Bool)

(declare-fun call!189995 () Int)

(assert (=> b!2910784 (= e!1837307 call!189995)))

(declare-fun b!2910785 () Bool)

(assert (=> b!2910785 (= e!1837310 lt!1023766)))

(declare-fun b!2910786 () Bool)

(assert (=> b!2910786 (= e!1837307 e!1837308)))

(declare-fun c!474624 () Bool)

(assert (=> b!2910786 (= c!474624 (>= i!1878 call!189995))))

(declare-fun b!2910787 () Bool)

(assert (=> b!2910787 (= e!1837308 (- call!189995 i!1878))))

(declare-fun b!2910788 () Bool)

(assert (=> b!2910788 (= e!1837309 Nil!34681)))

(declare-fun bm!189990 () Bool)

(assert (=> bm!189990 (= call!189995 (size!26429 lt!1023766))))

(assert (= (and d!837557 c!474627) b!2910788))

(assert (= (and d!837557 (not c!474627)) b!2910781))

(assert (= (and b!2910781 c!474625) b!2910785))

(assert (= (and b!2910781 (not c!474625)) b!2910783))

(assert (= (and d!837557 res!1201589) b!2910782))

(assert (= (and b!2910782 c!474626) b!2910784))

(assert (= (and b!2910782 (not c!474626)) b!2910786))

(assert (= (and b!2910786 c!474624) b!2910780))

(assert (= (and b!2910786 (not c!474624)) b!2910787))

(assert (= (or b!2910784 b!2910786 b!2910787) bm!189990))

(declare-fun m!3312383 () Bool)

(assert (=> b!2910782 m!3312383))

(declare-fun m!3312385 () Bool)

(assert (=> b!2910783 m!3312385))

(declare-fun m!3312387 () Bool)

(assert (=> d!837557 m!3312387))

(declare-fun m!3312389 () Bool)

(assert (=> d!837557 m!3312389))

(assert (=> bm!189990 m!3312321))

(assert (=> b!2910741 d!837557))

(declare-fun d!837559 () Bool)

(assert (=> d!837559 (= (list!12624 input!3770) (list!12626 (c!474608 input!3770)))))

(declare-fun bs!524529 () Bool)

(assert (= bs!524529 d!837559))

(assert (=> bs!524529 m!3312373))

(assert (=> b!2910741 d!837559))

(declare-fun d!837561 () Bool)

(declare-fun c!474630 () Bool)

(declare-fun isEmpty!18927 (List!34805) Bool)

(assert (=> d!837561 (= c!474630 (isEmpty!18927 (dropList!1047 input!3770 (+ 1 i!1878))))))

(declare-fun e!1837313 () Bool)

(assert (=> d!837561 (= (prefixMatchZipper!382 lt!1023768 (dropList!1047 input!3770 (+ 1 i!1878))) e!1837313)))

(declare-fun b!2910793 () Bool)

(declare-fun lostCauseZipper!618 ((Set Context!5532)) Bool)

(assert (=> b!2910793 (= e!1837313 (not (lostCauseZipper!618 lt!1023768)))))

(declare-fun b!2910794 () Bool)

(declare-fun tail!4686 (List!34805) List!34805)

(assert (=> b!2910794 (= e!1837313 (prefixMatchZipper!382 (derivationStepZipper!526 lt!1023768 (head!6461 (dropList!1047 input!3770 (+ 1 i!1878)))) (tail!4686 (dropList!1047 input!3770 (+ 1 i!1878)))))))

(assert (= (and d!837561 c!474630) b!2910793))

(assert (= (and d!837561 (not c!474630)) b!2910794))

(assert (=> d!837561 m!3312317))

(declare-fun m!3312391 () Bool)

(assert (=> d!837561 m!3312391))

(declare-fun m!3312393 () Bool)

(assert (=> b!2910793 m!3312393))

(assert (=> b!2910794 m!3312317))

(declare-fun m!3312395 () Bool)

(assert (=> b!2910794 m!3312395))

(assert (=> b!2910794 m!3312395))

(declare-fun m!3312397 () Bool)

(assert (=> b!2910794 m!3312397))

(assert (=> b!2910794 m!3312317))

(declare-fun m!3312399 () Bool)

(assert (=> b!2910794 m!3312399))

(assert (=> b!2910794 m!3312397))

(assert (=> b!2910794 m!3312399))

(declare-fun m!3312401 () Bool)

(assert (=> b!2910794 m!3312401))

(assert (=> b!2910741 d!837561))

(declare-fun d!837563 () Bool)

(assert (=> d!837563 (= (head!6461 (drop!1830 lt!1023766 i!1878)) (apply!7920 lt!1023766 i!1878))))

(declare-fun lt!1023798 () Unit!48231)

(declare-fun choose!17115 (List!34805 Int) Unit!48231)

(assert (=> d!837563 (= lt!1023798 (choose!17115 lt!1023766 i!1878))))

(declare-fun e!1837316 () Bool)

(assert (=> d!837563 e!1837316))

(declare-fun res!1201592 () Bool)

(assert (=> d!837563 (=> (not res!1201592) (not e!1837316))))

(assert (=> d!837563 (= res!1201592 (>= i!1878 0))))

(assert (=> d!837563 (= (lemmaDropApply!1006 lt!1023766 i!1878) lt!1023798)))

(declare-fun b!2910797 () Bool)

(assert (=> b!2910797 (= e!1837316 (< i!1878 (size!26429 lt!1023766)))))

(assert (= (and d!837563 res!1201592) b!2910797))

(assert (=> d!837563 m!3312311))

(assert (=> d!837563 m!3312311))

(assert (=> d!837563 m!3312323))

(assert (=> d!837563 m!3312309))

(declare-fun m!3312403 () Bool)

(assert (=> d!837563 m!3312403))

(assert (=> b!2910797 m!3312321))

(assert (=> b!2910741 d!837563))

(declare-fun d!837565 () Bool)

(assert (=> d!837565 (= (prefixMatchZipper!382 lt!1023768 (dropList!1047 input!3770 (+ 1 i!1878))) (prefixMatchZipperSequence!786 lt!1023768 input!3770 (+ 1 i!1878)))))

(declare-fun lt!1023801 () Unit!48231)

(declare-fun choose!17116 ((Set Context!5532) BalanceConc!20680 Int) Unit!48231)

(assert (=> d!837565 (= lt!1023801 (choose!17116 lt!1023768 input!3770 (+ 1 i!1878)))))

(declare-fun e!1837319 () Bool)

(assert (=> d!837565 e!1837319))

(declare-fun res!1201595 () Bool)

(assert (=> d!837565 (=> (not res!1201595) (not e!1837319))))

(assert (=> d!837565 (= res!1201595 (>= (+ 1 i!1878) 0))))

(assert (=> d!837565 (= (lemmaprefixMatchZipperSequenceEquivalent!260 lt!1023768 input!3770 (+ 1 i!1878)) lt!1023801)))

(declare-fun b!2910800 () Bool)

(assert (=> b!2910800 (= e!1837319 (<= (+ 1 i!1878) (size!26428 input!3770)))))

(assert (= (and d!837565 res!1201595) b!2910800))

(assert (=> d!837565 m!3312317))

(assert (=> d!837565 m!3312317))

(assert (=> d!837565 m!3312319))

(assert (=> d!837565 m!3312315))

(declare-fun m!3312405 () Bool)

(assert (=> d!837565 m!3312405))

(assert (=> b!2910800 m!3312297))

(assert (=> b!2910741 d!837565))

(declare-fun d!837567 () Bool)

(declare-fun lt!1023804 () Int)

(assert (=> d!837567 (>= lt!1023804 0)))

(declare-fun e!1837322 () Int)

(assert (=> d!837567 (= lt!1023804 e!1837322)))

(declare-fun c!474633 () Bool)

(assert (=> d!837567 (= c!474633 (is-Nil!34681 lt!1023766))))

(assert (=> d!837567 (= (size!26429 lt!1023766) lt!1023804)))

(declare-fun b!2910805 () Bool)

(assert (=> b!2910805 (= e!1837322 0)))

(declare-fun b!2910806 () Bool)

(assert (=> b!2910806 (= e!1837322 (+ 1 (size!26429 (t!233868 lt!1023766))))))

(assert (= (and d!837567 c!474633) b!2910805))

(assert (= (and d!837567 (not c!474633)) b!2910806))

(declare-fun m!3312407 () Bool)

(assert (=> b!2910806 m!3312407))

(assert (=> b!2910741 d!837567))

(declare-fun d!837569 () Bool)

(declare-fun c!474636 () Bool)

(assert (=> d!837569 (= c!474636 (= (+ 1 i!1878) (size!26428 input!3770)))))

(declare-fun e!1837325 () Bool)

(assert (=> d!837569 (= (prefixMatchZipperSequence!786 lt!1023768 input!3770 (+ 1 i!1878)) e!1837325)))

(declare-fun b!2910811 () Bool)

(assert (=> b!2910811 (= e!1837325 (not (lostCauseZipper!618 lt!1023768)))))

(declare-fun b!2910812 () Bool)

(assert (=> b!2910812 (= e!1837325 (prefixMatchZipperSequence!786 (derivationStepZipper!526 lt!1023768 (apply!7921 input!3770 (+ 1 i!1878))) input!3770 (+ 1 i!1878 1)))))

(assert (= (and d!837569 c!474636) b!2910811))

(assert (= (and d!837569 (not c!474636)) b!2910812))

(assert (=> d!837569 m!3312297))

(assert (=> b!2910811 m!3312393))

(declare-fun m!3312409 () Bool)

(assert (=> b!2910812 m!3312409))

(assert (=> b!2910812 m!3312409))

(declare-fun m!3312411 () Bool)

(assert (=> b!2910812 m!3312411))

(assert (=> b!2910812 m!3312411))

(declare-fun m!3312413 () Bool)

(assert (=> b!2910812 m!3312413))

(assert (=> b!2910741 d!837569))

(declare-fun d!837571 () Bool)

(declare-fun lt!1023807 () C!18074)

(declare-fun contains!6132 (List!34805 C!18074) Bool)

(assert (=> d!837571 (contains!6132 lt!1023766 lt!1023807)))

(declare-fun e!1837331 () C!18074)

(assert (=> d!837571 (= lt!1023807 e!1837331)))

(declare-fun c!474639 () Bool)

(assert (=> d!837571 (= c!474639 (= i!1878 0))))

(declare-fun e!1837330 () Bool)

(assert (=> d!837571 e!1837330))

(declare-fun res!1201598 () Bool)

(assert (=> d!837571 (=> (not res!1201598) (not e!1837330))))

(assert (=> d!837571 (= res!1201598 (<= 0 i!1878))))

(assert (=> d!837571 (= (apply!7920 lt!1023766 i!1878) lt!1023807)))

(declare-fun b!2910819 () Bool)

(assert (=> b!2910819 (= e!1837330 (< i!1878 (size!26429 lt!1023766)))))

(declare-fun b!2910820 () Bool)

(assert (=> b!2910820 (= e!1837331 (head!6461 lt!1023766))))

(declare-fun b!2910821 () Bool)

(assert (=> b!2910821 (= e!1837331 (apply!7920 (tail!4686 lt!1023766) (- i!1878 1)))))

(assert (= (and d!837571 res!1201598) b!2910819))

(assert (= (and d!837571 c!474639) b!2910820))

(assert (= (and d!837571 (not c!474639)) b!2910821))

(declare-fun m!3312415 () Bool)

(assert (=> d!837571 m!3312415))

(assert (=> b!2910819 m!3312321))

(declare-fun m!3312417 () Bool)

(assert (=> b!2910820 m!3312417))

(declare-fun m!3312419 () Bool)

(assert (=> b!2910821 m!3312419))

(assert (=> b!2910821 m!3312419))

(declare-fun m!3312421 () Bool)

(assert (=> b!2910821 m!3312421))

(assert (=> b!2910741 d!837571))

(declare-fun d!837573 () Bool)

(assert (=> d!837573 (= (head!6461 (drop!1830 lt!1023766 i!1878)) (h!40101 (drop!1830 lt!1023766 i!1878)))))

(assert (=> b!2910741 d!837573))

(declare-fun d!837575 () Bool)

(declare-fun isBalanced!3171 (Conc!10521) Bool)

(assert (=> d!837575 (= (inv!46872 input!3770) (isBalanced!3171 (c!474608 input!3770)))))

(declare-fun bs!524530 () Bool)

(assert (= bs!524530 d!837575))

(declare-fun m!3312423 () Bool)

(assert (=> bs!524530 m!3312423))

(assert (=> start!283598 d!837575))

(declare-fun d!837577 () Bool)

(declare-fun c!474642 () Bool)

(assert (=> d!837577 (= c!474642 (is-Node!10521 (c!474608 input!3770)))))

(declare-fun e!1837336 () Bool)

(assert (=> d!837577 (= (inv!46871 (c!474608 input!3770)) e!1837336)))

(declare-fun b!2910828 () Bool)

(declare-fun inv!46876 (Conc!10521) Bool)

(assert (=> b!2910828 (= e!1837336 (inv!46876 (c!474608 input!3770)))))

(declare-fun b!2910829 () Bool)

(declare-fun e!1837337 () Bool)

(assert (=> b!2910829 (= e!1837336 e!1837337)))

(declare-fun res!1201601 () Bool)

(assert (=> b!2910829 (= res!1201601 (not (is-Leaf!16218 (c!474608 input!3770))))))

(assert (=> b!2910829 (=> res!1201601 e!1837337)))

(declare-fun b!2910830 () Bool)

(declare-fun inv!46877 (Conc!10521) Bool)

(assert (=> b!2910830 (= e!1837337 (inv!46877 (c!474608 input!3770)))))

(assert (= (and d!837577 c!474642) b!2910828))

(assert (= (and d!837577 (not c!474642)) b!2910829))

(assert (= (and b!2910829 (not res!1201601)) b!2910830))

(declare-fun m!3312425 () Bool)

(assert (=> b!2910828 m!3312425))

(declare-fun m!3312427 () Bool)

(assert (=> b!2910830 m!3312427))

(assert (=> b!2910739 d!837577))

(declare-fun condSetEmpty!25940 () Bool)

(assert (=> setNonEmpty!25934 (= condSetEmpty!25940 (= setRest!25934 (as set.empty (Set Context!5532))))))

(declare-fun setRes!25940 () Bool)

(assert (=> setNonEmpty!25934 (= tp!935216 setRes!25940)))

(declare-fun setIsEmpty!25940 () Bool)

(assert (=> setIsEmpty!25940 setRes!25940))

(declare-fun setNonEmpty!25940 () Bool)

(declare-fun setElem!25940 () Context!5532)

(declare-fun e!1837340 () Bool)

(declare-fun tp!935233 () Bool)

(assert (=> setNonEmpty!25940 (= setRes!25940 (and tp!935233 (inv!46870 setElem!25940) e!1837340))))

(declare-fun setRest!25940 () (Set Context!5532))

(assert (=> setNonEmpty!25940 (= setRest!25934 (set.union (set.insert setElem!25940 (as set.empty (Set Context!5532))) setRest!25940))))

(declare-fun b!2910837 () Bool)

(declare-fun tp!935232 () Bool)

(assert (=> b!2910837 (= e!1837340 tp!935232)))

(assert (= (and setNonEmpty!25934 condSetEmpty!25940) setIsEmpty!25940))

(assert (= (and setNonEmpty!25934 (not condSetEmpty!25940)) setNonEmpty!25940))

(assert (= setNonEmpty!25940 b!2910837))

(declare-fun m!3312431 () Bool)

(assert (=> setNonEmpty!25940 m!3312431))

(declare-fun b!2910842 () Bool)

(declare-fun e!1837343 () Bool)

(declare-fun tp!935238 () Bool)

(declare-fun tp!935239 () Bool)

(assert (=> b!2910842 (= e!1837343 (and tp!935238 tp!935239))))

(assert (=> b!2910740 (= tp!935218 e!1837343)))

(assert (= (and b!2910740 (is-Cons!34682 (exprs!3266 setElem!25934))) b!2910842))

(declare-fun b!2910857 () Bool)

(declare-fun tp!935248 () Bool)

(declare-fun tp!935246 () Bool)

(declare-fun e!1837352 () Bool)

(assert (=> b!2910857 (= e!1837352 (and (inv!46871 (left!26057 (c!474608 input!3770))) tp!935248 (inv!46871 (right!26387 (c!474608 input!3770))) tp!935246))))

(declare-fun b!2910859 () Bool)

(declare-fun e!1837351 () Bool)

(declare-fun tp!935247 () Bool)

(assert (=> b!2910859 (= e!1837351 tp!935247)))

(declare-fun b!2910858 () Bool)

(declare-fun inv!46878 (IArray!21047) Bool)

(assert (=> b!2910858 (= e!1837352 (and (inv!46878 (xs!13639 (c!474608 input!3770))) e!1837351))))

(assert (=> b!2910739 (= tp!935217 (and (inv!46871 (c!474608 input!3770)) e!1837352))))

(assert (= (and b!2910739 (is-Node!10521 (c!474608 input!3770))) b!2910857))

(assert (= b!2910858 b!2910859))

(assert (= (and b!2910739 (is-Leaf!16218 (c!474608 input!3770))) b!2910858))

(declare-fun m!3312435 () Bool)

(assert (=> b!2910857 m!3312435))

(declare-fun m!3312437 () Bool)

(assert (=> b!2910857 m!3312437))

(declare-fun m!3312439 () Bool)

(assert (=> b!2910858 m!3312439))

(assert (=> b!2910739 m!3312301))

(push 1)

(assert (not d!837561))

(assert (not d!837559))

(assert (not d!837555))

(assert (not b!2910811))

(assert (not d!837565))

(assert (not b!2910797))

(assert (not b!2910739))

(assert (not b!2910821))

(assert (not b!2910859))

(assert (not b!2910759))

(assert (not b!2910858))

(assert (not b!2910806))

(assert (not b!2910783))

(assert (not b!2910794))

(assert (not d!837553))

(assert (not d!837551))

(assert (not b!2910837))

(assert (not d!837541))

(assert (not setNonEmpty!25940))

(assert (not b!2910819))

(assert (not b!2910857))

(assert (not d!837569))

(assert (not d!837549))

(assert (not b!2910830))

(assert (not b!2910782))

(assert (not d!837563))

(assert (not b!2910812))

(assert (not d!837557))

(assert (not b!2910828))

(assert (not b!2910842))

(assert (not d!837571))

(assert (not b!2910800))

(assert (not bm!189990))

(assert (not b!2910793))

(assert (not b!2910820))

(assert (not d!837575))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

