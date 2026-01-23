; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!213452 () Bool)

(assert start!213452)

(declare-fun b!2198776 () Bool)

(declare-fun e!1405144 () Int)

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2198776 (= e!1405144 lastNullablePos!193)))

(declare-fun b!2198777 () Bool)

(declare-fun e!1405149 () Bool)

(declare-fun e!1405153 () Bool)

(assert (=> b!2198777 (= e!1405149 (not e!1405153))))

(declare-fun res!945025 () Bool)

(assert (=> b!2198777 (=> res!945025 e!1405153)))

(declare-fun lt!822402 () Bool)

(assert (=> b!2198777 (= res!945025 lt!822402)))

(declare-fun e!1405147 () Bool)

(assert (=> b!2198777 e!1405147))

(declare-fun res!945019 () Bool)

(assert (=> b!2198777 (=> res!945019 e!1405147)))

(assert (=> b!2198777 (= res!945019 lt!822402)))

(declare-fun lt!822406 () Int)

(assert (=> b!2198777 (= lt!822402 (<= lt!822406 0))))

(declare-fun lt!822397 () Int)

(declare-fun from!1114 () Int)

(assert (=> b!2198777 (= lt!822406 (+ 1 (- lt!822397 (+ 1 from!1114))))))

(declare-datatypes ((C!12522 0))(
  ( (C!12523 (val!7247 Int)) )
))
(declare-datatypes ((List!25666 0))(
  ( (Nil!25582) (Cons!25582 (h!30983 C!12522) (t!198284 List!25666)) )
))
(declare-datatypes ((IArray!16653 0))(
  ( (IArray!16654 (innerList!8384 List!25666)) )
))
(declare-datatypes ((Conc!8324 0))(
  ( (Node!8324 (left!19645 Conc!8324) (right!19975 Conc!8324) (csize!16878 Int) (cheight!8535 Int)) (Leaf!12186 (xs!11266 IArray!16653) (csize!16879 Int)) (Empty!8324) )
))
(declare-datatypes ((BalanceConc!16410 0))(
  ( (BalanceConc!16411 (c!350559 Conc!8324)) )
))
(declare-fun totalInput!923 () BalanceConc!16410)

(declare-fun lt!822400 () Int)

(declare-datatypes ((Regex!6188 0))(
  ( (ElementMatch!6188 (c!350560 C!12522)) (Concat!10490 (regOne!12888 Regex!6188) (regTwo!12888 Regex!6188)) (EmptyExpr!6188) (Star!6188 (reg!6517 Regex!6188)) (EmptyLang!6188) (Union!6188 (regOne!12889 Regex!6188) (regTwo!12889 Regex!6188)) )
))
(declare-datatypes ((List!25667 0))(
  ( (Nil!25583) (Cons!25583 (h!30984 Regex!6188) (t!198285 List!25667)) )
))
(declare-datatypes ((Context!3516 0))(
  ( (Context!3517 (exprs!2258 List!25667)) )
))
(declare-fun lt!822407 () (Set Context!3516))

(declare-datatypes ((Unit!38709 0))(
  ( (Unit!38710) )
))
(declare-fun lt!822399 () Unit!38709)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!177 ((Set Context!3516) Int BalanceConc!16410 Int) Unit!38709)

(assert (=> b!2198777 (= lt!822399 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!177 lt!822407 (+ 1 from!1114) totalInput!923 lt!822400))))

(declare-fun b!2198778 () Bool)

(declare-fun e!1405146 () Bool)

(declare-fun tp!684421 () Bool)

(assert (=> b!2198778 (= e!1405146 tp!684421)))

(declare-fun b!2198779 () Bool)

(declare-fun e!1405151 () Bool)

(declare-fun e!1405152 () Bool)

(assert (=> b!2198779 (= e!1405151 e!1405152)))

(declare-fun res!945024 () Bool)

(assert (=> b!2198779 (=> (not res!945024) (not e!1405152))))

(declare-fun lt!822404 () Int)

(assert (=> b!2198779 (= res!945024 (and (<= from!1114 lt!822404) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19946 (BalanceConc!16410) Int)

(assert (=> b!2198779 (= lt!822404 (size!19946 totalInput!923))))

(declare-fun b!2198780 () Bool)

(assert (=> b!2198780 (= e!1405144 from!1114)))

(declare-fun b!2198781 () Bool)

(declare-fun matchZipper!274 ((Set Context!3516) List!25666) Bool)

(declare-fun take!366 (List!25666 Int) List!25666)

(declare-fun drop!1376 (List!25666 Int) List!25666)

(declare-fun list!9842 (BalanceConc!16410) List!25666)

(assert (=> b!2198781 (= e!1405147 (matchZipper!274 lt!822407 (take!366 (drop!1376 (list!9842 totalInput!923) (+ 1 from!1114)) lt!822406)))))

(declare-fun b!2198782 () Bool)

(declare-fun e!1405148 () Bool)

(assert (=> b!2198782 (= e!1405153 e!1405148)))

(declare-fun res!945018 () Bool)

(assert (=> b!2198782 (=> res!945018 e!1405148)))

(declare-fun lt!822403 () List!25666)

(assert (=> b!2198782 (= res!945018 (not (matchZipper!274 lt!822407 lt!822403)))))

(declare-fun lt!822405 () List!25666)

(assert (=> b!2198782 (= lt!822403 (take!366 (drop!1376 lt!822405 (+ 1 from!1114)) lt!822406))))

(assert (=> b!2198782 (= lt!822405 (list!9842 totalInput!923))))

(declare-fun b!2198784 () Bool)

(declare-fun res!945021 () Bool)

(assert (=> b!2198784 (=> (not res!945021) (not e!1405152))))

(declare-fun z!3955 () (Set Context!3516))

(declare-fun lostCauseZipper!304 ((Set Context!3516)) Bool)

(assert (=> b!2198784 (= res!945021 (not (lostCauseZipper!304 z!3955)))))

(declare-fun b!2198785 () Bool)

(assert (=> b!2198785 (= e!1405152 e!1405149)))

(declare-fun res!945020 () Bool)

(assert (=> b!2198785 (=> (not res!945020) (not e!1405149))))

(declare-fun lt!822398 () Int)

(assert (=> b!2198785 (= res!945020 (= lt!822398 lt!822397))))

(declare-fun furthestNullablePosition!356 ((Set Context!3516) Int BalanceConc!16410 Int Int) Int)

(assert (=> b!2198785 (= lt!822397 (furthestNullablePosition!356 lt!822407 (+ 1 from!1114) totalInput!923 lt!822404 lt!822400))))

(assert (=> b!2198785 (= lt!822398 (furthestNullablePosition!356 z!3955 from!1114 totalInput!923 lt!822404 lastNullablePos!193))))

(assert (=> b!2198785 (= lt!822400 e!1405144)))

(declare-fun c!350558 () Bool)

(declare-fun nullableZipper!468 ((Set Context!3516)) Bool)

(assert (=> b!2198785 (= c!350558 (nullableZipper!468 lt!822407))))

(declare-fun lt!822401 () C!12522)

(declare-fun derivationStepZipper!260 ((Set Context!3516) C!12522) (Set Context!3516))

(assert (=> b!2198785 (= lt!822407 (derivationStepZipper!260 z!3955 lt!822401))))

(declare-fun apply!6268 (BalanceConc!16410 Int) C!12522)

(assert (=> b!2198785 (= lt!822401 (apply!6268 totalInput!923 from!1114))))

(declare-fun b!2198786 () Bool)

(declare-fun e!1405150 () Bool)

(declare-fun tp!684422 () Bool)

(declare-fun inv!34297 (Conc!8324) Bool)

(assert (=> b!2198786 (= e!1405150 (and (inv!34297 (c!350559 totalInput!923)) tp!684422))))

(declare-fun b!2198787 () Bool)

(declare-fun res!945016 () Bool)

(assert (=> b!2198787 (=> res!945016 e!1405148)))

(assert (=> b!2198787 (= res!945016 (not (matchZipper!274 z!3955 (Cons!25582 lt!822401 lt!822403))))))

(declare-fun b!2198788 () Bool)

(declare-fun res!945022 () Bool)

(assert (=> b!2198788 (=> (not res!945022) (not e!1405152))))

(assert (=> b!2198788 (= res!945022 (not (= from!1114 lt!822404)))))

(declare-fun setIsEmpty!18855 () Bool)

(declare-fun setRes!18855 () Bool)

(assert (=> setIsEmpty!18855 setRes!18855))

(declare-fun setElem!18855 () Context!3516)

(declare-fun setNonEmpty!18855 () Bool)

(declare-fun tp!684423 () Bool)

(declare-fun inv!34298 (Context!3516) Bool)

(assert (=> setNonEmpty!18855 (= setRes!18855 (and tp!684423 (inv!34298 setElem!18855) e!1405146))))

(declare-fun setRest!18855 () (Set Context!3516))

(assert (=> setNonEmpty!18855 (= z!3955 (set.union (set.insert setElem!18855 (as set.empty (Set Context!3516))) setRest!18855))))

(declare-fun res!945023 () Bool)

(assert (=> start!213452 (=> (not res!945023) (not e!1405151))))

(assert (=> start!213452 (= res!945023 (>= from!1114 0))))

(assert (=> start!213452 e!1405151))

(assert (=> start!213452 true))

(declare-fun inv!34299 (BalanceConc!16410) Bool)

(assert (=> start!213452 (and (inv!34299 totalInput!923) e!1405150)))

(declare-fun condSetEmpty!18855 () Bool)

(assert (=> start!213452 (= condSetEmpty!18855 (= z!3955 (as set.empty (Set Context!3516))))))

(assert (=> start!213452 setRes!18855))

(declare-fun b!2198783 () Bool)

(declare-fun size!19947 (List!25666) Int)

(assert (=> b!2198783 (= e!1405148 (< from!1114 (size!19947 lt!822405)))))

(declare-fun b!2198789 () Bool)

(declare-fun e!1405145 () Bool)

(assert (=> b!2198789 (= e!1405145 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2198790 () Bool)

(declare-fun res!945026 () Bool)

(assert (=> b!2198790 (=> (not res!945026) (not e!1405152))))

(assert (=> b!2198790 (= res!945026 e!1405145)))

(declare-fun res!945017 () Bool)

(assert (=> b!2198790 (=> res!945017 e!1405145)))

(assert (=> b!2198790 (= res!945017 (not (nullableZipper!468 z!3955)))))

(assert (= (and start!213452 res!945023) b!2198779))

(assert (= (and b!2198779 res!945024) b!2198790))

(assert (= (and b!2198790 (not res!945017)) b!2198789))

(assert (= (and b!2198790 res!945026) b!2198788))

(assert (= (and b!2198788 res!945022) b!2198784))

(assert (= (and b!2198784 res!945021) b!2198785))

(assert (= (and b!2198785 c!350558) b!2198780))

(assert (= (and b!2198785 (not c!350558)) b!2198776))

(assert (= (and b!2198785 res!945020) b!2198777))

(assert (= (and b!2198777 (not res!945019)) b!2198781))

(assert (= (and b!2198777 (not res!945025)) b!2198782))

(assert (= (and b!2198782 (not res!945018)) b!2198787))

(assert (= (and b!2198787 (not res!945016)) b!2198783))

(assert (= start!213452 b!2198786))

(assert (= (and start!213452 condSetEmpty!18855) setIsEmpty!18855))

(assert (= (and start!213452 (not condSetEmpty!18855)) setNonEmpty!18855))

(assert (= setNonEmpty!18855 b!2198778))

(declare-fun m!2641691 () Bool)

(assert (=> b!2198779 m!2641691))

(declare-fun m!2641693 () Bool)

(assert (=> b!2198782 m!2641693))

(declare-fun m!2641695 () Bool)

(assert (=> b!2198782 m!2641695))

(assert (=> b!2198782 m!2641695))

(declare-fun m!2641697 () Bool)

(assert (=> b!2198782 m!2641697))

(declare-fun m!2641699 () Bool)

(assert (=> b!2198782 m!2641699))

(declare-fun m!2641701 () Bool)

(assert (=> b!2198785 m!2641701))

(declare-fun m!2641703 () Bool)

(assert (=> b!2198785 m!2641703))

(declare-fun m!2641705 () Bool)

(assert (=> b!2198785 m!2641705))

(declare-fun m!2641707 () Bool)

(assert (=> b!2198785 m!2641707))

(declare-fun m!2641709 () Bool)

(assert (=> b!2198785 m!2641709))

(declare-fun m!2641711 () Bool)

(assert (=> b!2198784 m!2641711))

(declare-fun m!2641713 () Bool)

(assert (=> b!2198786 m!2641713))

(declare-fun m!2641715 () Bool)

(assert (=> start!213452 m!2641715))

(declare-fun m!2641717 () Bool)

(assert (=> b!2198787 m!2641717))

(declare-fun m!2641719 () Bool)

(assert (=> b!2198777 m!2641719))

(declare-fun m!2641721 () Bool)

(assert (=> b!2198790 m!2641721))

(declare-fun m!2641723 () Bool)

(assert (=> setNonEmpty!18855 m!2641723))

(assert (=> b!2198781 m!2641699))

(assert (=> b!2198781 m!2641699))

(declare-fun m!2641725 () Bool)

(assert (=> b!2198781 m!2641725))

(assert (=> b!2198781 m!2641725))

(declare-fun m!2641727 () Bool)

(assert (=> b!2198781 m!2641727))

(assert (=> b!2198781 m!2641727))

(declare-fun m!2641729 () Bool)

(assert (=> b!2198781 m!2641729))

(declare-fun m!2641731 () Bool)

(assert (=> b!2198783 m!2641731))

(push 1)

(assert (not b!2198778))

(assert (not b!2198787))

(assert (not b!2198782))

(assert (not b!2198784))

(assert (not b!2198783))

(assert (not b!2198786))

(assert (not b!2198779))

(assert (not start!213452))

(assert (not setNonEmpty!18855))

(assert (not b!2198781))

(assert (not b!2198777))

(assert (not b!2198790))

(assert (not b!2198785))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!658162 () Bool)

(declare-fun lt!822443 () Int)

(assert (=> d!658162 (>= lt!822443 0)))

(declare-fun e!1405186 () Int)

(assert (=> d!658162 (= lt!822443 e!1405186)))

(declare-fun c!350570 () Bool)

(assert (=> d!658162 (= c!350570 (is-Nil!25582 lt!822405))))

(assert (=> d!658162 (= (size!19947 lt!822405) lt!822443)))

(declare-fun b!2198840 () Bool)

(assert (=> b!2198840 (= e!1405186 0)))

(declare-fun b!2198841 () Bool)

(assert (=> b!2198841 (= e!1405186 (+ 1 (size!19947 (t!198284 lt!822405))))))

(assert (= (and d!658162 c!350570) b!2198840))

(assert (= (and d!658162 (not c!350570)) b!2198841))

(declare-fun m!2641775 () Bool)

(assert (=> b!2198841 m!2641775))

(assert (=> b!2198783 d!658162))

(declare-fun d!658164 () Bool)

(declare-fun lambda!82802 () Int)

(declare-fun exists!821 ((Set Context!3516) Int) Bool)

(assert (=> d!658164 (= (nullableZipper!468 z!3955) (exists!821 z!3955 lambda!82802))))

(declare-fun bs!450427 () Bool)

(assert (= bs!450427 d!658164))

(declare-fun m!2641777 () Bool)

(assert (=> bs!450427 m!2641777))

(assert (=> b!2198790 d!658164))

(declare-fun d!658166 () Bool)

(declare-fun c!350575 () Bool)

(declare-fun isEmpty!14594 (List!25666) Bool)

(assert (=> d!658166 (= c!350575 (isEmpty!14594 lt!822403))))

(declare-fun e!1405189 () Bool)

(assert (=> d!658166 (= (matchZipper!274 lt!822407 lt!822403) e!1405189)))

(declare-fun b!2198846 () Bool)

(assert (=> b!2198846 (= e!1405189 (nullableZipper!468 lt!822407))))

(declare-fun b!2198847 () Bool)

(declare-fun head!4689 (List!25666) C!12522)

(declare-fun tail!3161 (List!25666) List!25666)

(assert (=> b!2198847 (= e!1405189 (matchZipper!274 (derivationStepZipper!260 lt!822407 (head!4689 lt!822403)) (tail!3161 lt!822403)))))

(assert (= (and d!658166 c!350575) b!2198846))

(assert (= (and d!658166 (not c!350575)) b!2198847))

(declare-fun m!2641779 () Bool)

(assert (=> d!658166 m!2641779))

(assert (=> b!2198846 m!2641707))

(declare-fun m!2641781 () Bool)

(assert (=> b!2198847 m!2641781))

(assert (=> b!2198847 m!2641781))

(declare-fun m!2641783 () Bool)

(assert (=> b!2198847 m!2641783))

(declare-fun m!2641785 () Bool)

(assert (=> b!2198847 m!2641785))

(assert (=> b!2198847 m!2641783))

(assert (=> b!2198847 m!2641785))

(declare-fun m!2641787 () Bool)

(assert (=> b!2198847 m!2641787))

(assert (=> b!2198782 d!658166))

(declare-fun b!2198862 () Bool)

(declare-fun e!1405200 () List!25666)

(assert (=> b!2198862 (= e!1405200 (Cons!25582 (h!30983 (drop!1376 lt!822405 (+ 1 from!1114))) (take!366 (t!198284 (drop!1376 lt!822405 (+ 1 from!1114))) (- lt!822406 1))))))

(declare-fun b!2198863 () Bool)

(declare-fun e!1405199 () Int)

(assert (=> b!2198863 (= e!1405199 lt!822406)))

(declare-fun b!2198864 () Bool)

(assert (=> b!2198864 (= e!1405199 (size!19947 (drop!1376 lt!822405 (+ 1 from!1114))))))

(declare-fun b!2198865 () Bool)

(assert (=> b!2198865 (= e!1405200 Nil!25582)))

(declare-fun d!658168 () Bool)

(declare-fun e!1405201 () Bool)

(assert (=> d!658168 e!1405201))

(declare-fun res!945062 () Bool)

(assert (=> d!658168 (=> (not res!945062) (not e!1405201))))

(declare-fun lt!822446 () List!25666)

(declare-fun content!3476 (List!25666) (Set C!12522))

(assert (=> d!658168 (= res!945062 (set.subset (content!3476 lt!822446) (content!3476 (drop!1376 lt!822405 (+ 1 from!1114)))))))

(assert (=> d!658168 (= lt!822446 e!1405200)))

(declare-fun c!350583 () Bool)

(assert (=> d!658168 (= c!350583 (or (is-Nil!25582 (drop!1376 lt!822405 (+ 1 from!1114))) (<= lt!822406 0)))))

(assert (=> d!658168 (= (take!366 (drop!1376 lt!822405 (+ 1 from!1114)) lt!822406) lt!822446)))

(declare-fun b!2198866 () Bool)

(declare-fun e!1405198 () Int)

(assert (=> b!2198866 (= e!1405198 e!1405199)))

(declare-fun c!350584 () Bool)

(assert (=> b!2198866 (= c!350584 (>= lt!822406 (size!19947 (drop!1376 lt!822405 (+ 1 from!1114)))))))

(declare-fun b!2198867 () Bool)

(assert (=> b!2198867 (= e!1405201 (= (size!19947 lt!822446) e!1405198))))

(declare-fun c!350582 () Bool)

(assert (=> b!2198867 (= c!350582 (<= lt!822406 0))))

(declare-fun b!2198868 () Bool)

(assert (=> b!2198868 (= e!1405198 0)))

(assert (= (and d!658168 c!350583) b!2198865))

(assert (= (and d!658168 (not c!350583)) b!2198862))

(assert (= (and d!658168 res!945062) b!2198867))

(assert (= (and b!2198867 c!350582) b!2198868))

(assert (= (and b!2198867 (not c!350582)) b!2198866))

(assert (= (and b!2198866 c!350584) b!2198864))

(assert (= (and b!2198866 (not c!350584)) b!2198863))

(assert (=> b!2198866 m!2641695))

(declare-fun m!2641789 () Bool)

(assert (=> b!2198866 m!2641789))

(declare-fun m!2641791 () Bool)

(assert (=> b!2198862 m!2641791))

(declare-fun m!2641793 () Bool)

(assert (=> d!658168 m!2641793))

(assert (=> d!658168 m!2641695))

(declare-fun m!2641795 () Bool)

(assert (=> d!658168 m!2641795))

(assert (=> b!2198864 m!2641695))

(assert (=> b!2198864 m!2641789))

(declare-fun m!2641797 () Bool)

(assert (=> b!2198867 m!2641797))

(assert (=> b!2198782 d!658168))

(declare-fun b!2198887 () Bool)

(declare-fun e!1405212 () List!25666)

(assert (=> b!2198887 (= e!1405212 Nil!25582)))

(declare-fun b!2198888 () Bool)

(declare-fun e!1405215 () Bool)

(declare-fun lt!822449 () List!25666)

(declare-fun e!1405213 () Int)

(assert (=> b!2198888 (= e!1405215 (= (size!19947 lt!822449) e!1405213))))

(declare-fun c!350594 () Bool)

(assert (=> b!2198888 (= c!350594 (<= (+ 1 from!1114) 0))))

(declare-fun b!2198889 () Bool)

(declare-fun e!1405214 () List!25666)

(assert (=> b!2198889 (= e!1405212 e!1405214)))

(declare-fun c!350595 () Bool)

(assert (=> b!2198889 (= c!350595 (<= (+ 1 from!1114) 0))))

(declare-fun b!2198890 () Bool)

(declare-fun e!1405216 () Int)

(assert (=> b!2198890 (= e!1405213 e!1405216)))

(declare-fun c!350593 () Bool)

(declare-fun call!132073 () Int)

(assert (=> b!2198890 (= c!350593 (>= (+ 1 from!1114) call!132073))))

(declare-fun b!2198891 () Bool)

(assert (=> b!2198891 (= e!1405214 (drop!1376 (t!198284 lt!822405) (- (+ 1 from!1114) 1)))))

(declare-fun d!658170 () Bool)

(assert (=> d!658170 e!1405215))

(declare-fun res!945065 () Bool)

(assert (=> d!658170 (=> (not res!945065) (not e!1405215))))

(assert (=> d!658170 (= res!945065 (set.subset (content!3476 lt!822449) (content!3476 lt!822405)))))

(assert (=> d!658170 (= lt!822449 e!1405212)))

(declare-fun c!350596 () Bool)

(assert (=> d!658170 (= c!350596 (is-Nil!25582 lt!822405))))

(assert (=> d!658170 (= (drop!1376 lt!822405 (+ 1 from!1114)) lt!822449)))

(declare-fun b!2198892 () Bool)

(assert (=> b!2198892 (= e!1405213 call!132073)))

(declare-fun b!2198893 () Bool)

(assert (=> b!2198893 (= e!1405214 lt!822405)))

(declare-fun bm!132068 () Bool)

(assert (=> bm!132068 (= call!132073 (size!19947 lt!822405))))

(declare-fun b!2198894 () Bool)

(assert (=> b!2198894 (= e!1405216 (- call!132073 (+ 1 from!1114)))))

(declare-fun b!2198895 () Bool)

(assert (=> b!2198895 (= e!1405216 0)))

(assert (= (and d!658170 c!350596) b!2198887))

(assert (= (and d!658170 (not c!350596)) b!2198889))

(assert (= (and b!2198889 c!350595) b!2198893))

(assert (= (and b!2198889 (not c!350595)) b!2198891))

(assert (= (and d!658170 res!945065) b!2198888))

(assert (= (and b!2198888 c!350594) b!2198892))

(assert (= (and b!2198888 (not c!350594)) b!2198890))

(assert (= (and b!2198890 c!350593) b!2198895))

(assert (= (and b!2198890 (not c!350593)) b!2198894))

(assert (= (or b!2198892 b!2198890 b!2198894) bm!132068))

(declare-fun m!2641799 () Bool)

(assert (=> b!2198888 m!2641799))

(declare-fun m!2641801 () Bool)

(assert (=> b!2198891 m!2641801))

(declare-fun m!2641803 () Bool)

(assert (=> d!658170 m!2641803))

(declare-fun m!2641805 () Bool)

(assert (=> d!658170 m!2641805))

(assert (=> bm!132068 m!2641731))

(assert (=> b!2198782 d!658170))

(declare-fun d!658172 () Bool)

(declare-fun list!9844 (Conc!8324) List!25666)

(assert (=> d!658172 (= (list!9842 totalInput!923) (list!9844 (c!350559 totalInput!923)))))

(declare-fun bs!450428 () Bool)

(assert (= bs!450428 d!658172))

(declare-fun m!2641807 () Bool)

(assert (=> bs!450428 m!2641807))

(assert (=> b!2198782 d!658172))

(declare-fun d!658174 () Bool)

(declare-fun c!350599 () Bool)

(assert (=> d!658174 (= c!350599 (is-Node!8324 (c!350559 totalInput!923)))))

(declare-fun e!1405221 () Bool)

(assert (=> d!658174 (= (inv!34297 (c!350559 totalInput!923)) e!1405221)))

(declare-fun b!2198902 () Bool)

(declare-fun inv!34303 (Conc!8324) Bool)

(assert (=> b!2198902 (= e!1405221 (inv!34303 (c!350559 totalInput!923)))))

(declare-fun b!2198903 () Bool)

(declare-fun e!1405222 () Bool)

(assert (=> b!2198903 (= e!1405221 e!1405222)))

(declare-fun res!945068 () Bool)

(assert (=> b!2198903 (= res!945068 (not (is-Leaf!12186 (c!350559 totalInput!923))))))

(assert (=> b!2198903 (=> res!945068 e!1405222)))

(declare-fun b!2198904 () Bool)

(declare-fun inv!34304 (Conc!8324) Bool)

(assert (=> b!2198904 (= e!1405222 (inv!34304 (c!350559 totalInput!923)))))

(assert (= (and d!658174 c!350599) b!2198902))

(assert (= (and d!658174 (not c!350599)) b!2198903))

(assert (= (and b!2198903 (not res!945068)) b!2198904))

(declare-fun m!2641809 () Bool)

(assert (=> b!2198902 m!2641809))

(declare-fun m!2641811 () Bool)

(assert (=> b!2198904 m!2641811))

(assert (=> b!2198786 d!658174))

(declare-fun bs!450429 () Bool)

(declare-fun d!658176 () Bool)

(assert (= bs!450429 (and d!658176 d!658164)))

(declare-fun lambda!82815 () Int)

(assert (=> bs!450429 (not (= lambda!82815 lambda!82802))))

(declare-fun bs!450430 () Bool)

(declare-fun b!2198909 () Bool)

(assert (= bs!450430 (and b!2198909 d!658164)))

(declare-fun lambda!82816 () Int)

(assert (=> bs!450430 (not (= lambda!82816 lambda!82802))))

(declare-fun bs!450431 () Bool)

(assert (= bs!450431 (and b!2198909 d!658176)))

(assert (=> bs!450431 (not (= lambda!82816 lambda!82815))))

(declare-fun bs!450432 () Bool)

(declare-fun b!2198910 () Bool)

(assert (= bs!450432 (and b!2198910 d!658164)))

(declare-fun lambda!82817 () Int)

(assert (=> bs!450432 (not (= lambda!82817 lambda!82802))))

(declare-fun bs!450433 () Bool)

(assert (= bs!450433 (and b!2198910 d!658176)))

(assert (=> bs!450433 (not (= lambda!82817 lambda!82815))))

(declare-fun bs!450434 () Bool)

(assert (= bs!450434 (and b!2198910 b!2198909)))

(assert (=> bs!450434 (= lambda!82817 lambda!82816)))

(declare-fun lt!822473 () Bool)

(declare-datatypes ((Option!5024 0))(
  ( (None!5023) (Some!5023 (v!29420 List!25666)) )
))
(declare-fun isEmpty!14595 (Option!5024) Bool)

(declare-fun getLanguageWitness!147 ((Set Context!3516)) Option!5024)

(assert (=> d!658176 (= lt!822473 (isEmpty!14595 (getLanguageWitness!147 z!3955)))))

(declare-fun forall!5234 ((Set Context!3516) Int) Bool)

(assert (=> d!658176 (= lt!822473 (forall!5234 z!3955 lambda!82815))))

(declare-fun lt!822468 () Unit!38709)

(declare-fun e!1405229 () Unit!38709)

(assert (=> d!658176 (= lt!822468 e!1405229)))

(declare-fun c!350610 () Bool)

(assert (=> d!658176 (= c!350610 (not (forall!5234 z!3955 lambda!82815)))))

(assert (=> d!658176 (= (lostCauseZipper!304 z!3955) lt!822473)))

(declare-fun Unit!38713 () Unit!38709)

(assert (=> b!2198909 (= e!1405229 Unit!38713)))

(declare-datatypes ((List!25670 0))(
  ( (Nil!25586) (Cons!25586 (h!30987 Context!3516) (t!198288 List!25670)) )
))
(declare-fun lt!822469 () List!25670)

(declare-fun call!132079 () List!25670)

(assert (=> b!2198909 (= lt!822469 call!132079)))

(declare-fun lt!822471 () Unit!38709)

(declare-fun lemmaNotForallThenExists!49 (List!25670 Int) Unit!38709)

(assert (=> b!2198909 (= lt!822471 (lemmaNotForallThenExists!49 lt!822469 lambda!82815))))

(declare-fun call!132078 () Bool)

(assert (=> b!2198909 call!132078))

(declare-fun lt!822466 () Unit!38709)

(assert (=> b!2198909 (= lt!822466 lt!822471)))

(declare-fun bm!132074 () Bool)

(declare-fun toList!1260 ((Set Context!3516)) List!25670)

(assert (=> bm!132074 (= call!132079 (toList!1260 z!3955))))

(declare-fun Unit!38714 () Unit!38709)

(assert (=> b!2198910 (= e!1405229 Unit!38714)))

(declare-fun lt!822470 () List!25670)

(assert (=> b!2198910 (= lt!822470 call!132079)))

(declare-fun lt!822467 () Unit!38709)

(declare-fun lemmaForallThenNotExists!49 (List!25670 Int) Unit!38709)

(assert (=> b!2198910 (= lt!822467 (lemmaForallThenNotExists!49 lt!822470 lambda!82815))))

(assert (=> b!2198910 (not call!132078)))

(declare-fun lt!822472 () Unit!38709)

(assert (=> b!2198910 (= lt!822472 lt!822467)))

(declare-fun bm!132073 () Bool)

(declare-fun exists!822 (List!25670 Int) Bool)

(assert (=> bm!132073 (= call!132078 (exists!822 (ite c!350610 lt!822469 lt!822470) (ite c!350610 lambda!82816 lambda!82817)))))

(assert (= (and d!658176 c!350610) b!2198909))

(assert (= (and d!658176 (not c!350610)) b!2198910))

(assert (= (or b!2198909 b!2198910) bm!132073))

(assert (= (or b!2198909 b!2198910) bm!132074))

(declare-fun m!2641813 () Bool)

(assert (=> d!658176 m!2641813))

(assert (=> d!658176 m!2641813))

(declare-fun m!2641815 () Bool)

(assert (=> d!658176 m!2641815))

(declare-fun m!2641817 () Bool)

(assert (=> d!658176 m!2641817))

(assert (=> d!658176 m!2641817))

(declare-fun m!2641819 () Bool)

(assert (=> b!2198910 m!2641819))

(declare-fun m!2641821 () Bool)

(assert (=> b!2198909 m!2641821))

(declare-fun m!2641823 () Bool)

(assert (=> bm!132074 m!2641823))

(declare-fun m!2641825 () Bool)

(assert (=> bm!132073 m!2641825))

(assert (=> b!2198784 d!658176))

(declare-fun b!2198921 () Bool)

(declare-fun e!1405236 () Int)

(assert (=> b!2198921 (= e!1405236 lt!822400)))

(declare-fun lt!822479 () (Set Context!3516))

(declare-fun e!1405238 () Int)

(declare-fun b!2198922 () Bool)

(assert (=> b!2198922 (= e!1405236 (furthestNullablePosition!356 lt!822479 (+ 1 from!1114 1) totalInput!923 lt!822404 e!1405238))))

(assert (=> b!2198922 (= lt!822479 (derivationStepZipper!260 lt!822407 (apply!6268 totalInput!923 (+ 1 from!1114))))))

(declare-fun c!350615 () Bool)

(assert (=> b!2198922 (= c!350615 (nullableZipper!468 lt!822479))))

(declare-fun b!2198923 () Bool)

(assert (=> b!2198923 (= e!1405238 lt!822400)))

(declare-fun lt!822478 () Int)

(declare-fun d!658178 () Bool)

(assert (=> d!658178 (and (>= lt!822478 (- 1)) (< lt!822478 lt!822404) (>= lt!822478 lt!822400) (or (= lt!822478 lt!822400) (>= lt!822478 (+ 1 from!1114))))))

(assert (=> d!658178 (= lt!822478 e!1405236)))

(declare-fun c!350616 () Bool)

(declare-fun e!1405237 () Bool)

(assert (=> d!658178 (= c!350616 e!1405237)))

(declare-fun res!945071 () Bool)

(assert (=> d!658178 (=> res!945071 e!1405237)))

(assert (=> d!658178 (= res!945071 (= (+ 1 from!1114) lt!822404))))

(assert (=> d!658178 (and (>= (+ 1 from!1114) 0) (<= (+ 1 from!1114) lt!822404))))

(assert (=> d!658178 (= (furthestNullablePosition!356 lt!822407 (+ 1 from!1114) totalInput!923 lt!822404 lt!822400) lt!822478)))

(declare-fun b!2198924 () Bool)

(assert (=> b!2198924 (= e!1405238 (+ 1 from!1114))))

(declare-fun b!2198925 () Bool)

(assert (=> b!2198925 (= e!1405237 (lostCauseZipper!304 lt!822407))))

(assert (= (and d!658178 (not res!945071)) b!2198925))

(assert (= (and d!658178 c!350616) b!2198921))

(assert (= (and d!658178 (not c!350616)) b!2198922))

(assert (= (and b!2198922 c!350615) b!2198924))

(assert (= (and b!2198922 (not c!350615)) b!2198923))

(declare-fun m!2641827 () Bool)

(assert (=> b!2198922 m!2641827))

(declare-fun m!2641829 () Bool)

(assert (=> b!2198922 m!2641829))

(assert (=> b!2198922 m!2641829))

(declare-fun m!2641831 () Bool)

(assert (=> b!2198922 m!2641831))

(declare-fun m!2641833 () Bool)

(assert (=> b!2198922 m!2641833))

(declare-fun m!2641835 () Bool)

(assert (=> b!2198925 m!2641835))

(assert (=> b!2198785 d!658178))

(declare-fun b!2198926 () Bool)

(declare-fun e!1405239 () Int)

(assert (=> b!2198926 (= e!1405239 lastNullablePos!193)))

(declare-fun e!1405241 () Int)

(declare-fun lt!822481 () (Set Context!3516))

(declare-fun b!2198927 () Bool)

(assert (=> b!2198927 (= e!1405239 (furthestNullablePosition!356 lt!822481 (+ from!1114 1) totalInput!923 lt!822404 e!1405241))))

(assert (=> b!2198927 (= lt!822481 (derivationStepZipper!260 z!3955 (apply!6268 totalInput!923 from!1114)))))

(declare-fun c!350617 () Bool)

(assert (=> b!2198927 (= c!350617 (nullableZipper!468 lt!822481))))

(declare-fun b!2198928 () Bool)

(assert (=> b!2198928 (= e!1405241 lastNullablePos!193)))

(declare-fun d!658180 () Bool)

(declare-fun lt!822480 () Int)

(assert (=> d!658180 (and (>= lt!822480 (- 1)) (< lt!822480 lt!822404) (>= lt!822480 lastNullablePos!193) (or (= lt!822480 lastNullablePos!193) (>= lt!822480 from!1114)))))

(assert (=> d!658180 (= lt!822480 e!1405239)))

(declare-fun c!350618 () Bool)

(declare-fun e!1405240 () Bool)

(assert (=> d!658180 (= c!350618 e!1405240)))

(declare-fun res!945072 () Bool)

(assert (=> d!658180 (=> res!945072 e!1405240)))

(assert (=> d!658180 (= res!945072 (= from!1114 lt!822404))))

(assert (=> d!658180 (and (>= from!1114 0) (<= from!1114 lt!822404))))

(assert (=> d!658180 (= (furthestNullablePosition!356 z!3955 from!1114 totalInput!923 lt!822404 lastNullablePos!193) lt!822480)))

(declare-fun b!2198929 () Bool)

(assert (=> b!2198929 (= e!1405241 from!1114)))

(declare-fun b!2198930 () Bool)

(assert (=> b!2198930 (= e!1405240 (lostCauseZipper!304 z!3955))))

(assert (= (and d!658180 (not res!945072)) b!2198930))

(assert (= (and d!658180 c!350618) b!2198926))

(assert (= (and d!658180 (not c!350618)) b!2198927))

(assert (= (and b!2198927 c!350617) b!2198929))

(assert (= (and b!2198927 (not c!350617)) b!2198928))

(declare-fun m!2641837 () Bool)

(assert (=> b!2198927 m!2641837))

(assert (=> b!2198927 m!2641705))

(assert (=> b!2198927 m!2641705))

(declare-fun m!2641839 () Bool)

(assert (=> b!2198927 m!2641839))

(declare-fun m!2641841 () Bool)

(assert (=> b!2198927 m!2641841))

(assert (=> b!2198930 m!2641711))

(assert (=> b!2198785 d!658180))

(declare-fun d!658182 () Bool)

(declare-fun lt!822484 () C!12522)

(declare-fun apply!6270 (List!25666 Int) C!12522)

(assert (=> d!658182 (= lt!822484 (apply!6270 (list!9842 totalInput!923) from!1114))))

(declare-fun apply!6271 (Conc!8324 Int) C!12522)

(assert (=> d!658182 (= lt!822484 (apply!6271 (c!350559 totalInput!923) from!1114))))

(declare-fun e!1405244 () Bool)

(assert (=> d!658182 e!1405244))

(declare-fun res!945075 () Bool)

(assert (=> d!658182 (=> (not res!945075) (not e!1405244))))

(assert (=> d!658182 (= res!945075 (<= 0 from!1114))))

(assert (=> d!658182 (= (apply!6268 totalInput!923 from!1114) lt!822484)))

(declare-fun b!2198933 () Bool)

(assert (=> b!2198933 (= e!1405244 (< from!1114 (size!19946 totalInput!923)))))

(assert (= (and d!658182 res!945075) b!2198933))

(assert (=> d!658182 m!2641699))

(assert (=> d!658182 m!2641699))

(declare-fun m!2641843 () Bool)

(assert (=> d!658182 m!2641843))

(declare-fun m!2641845 () Bool)

(assert (=> d!658182 m!2641845))

(assert (=> b!2198933 m!2641691))

(assert (=> b!2198785 d!658182))

(declare-fun d!658184 () Bool)

(assert (=> d!658184 true))

(declare-fun lambda!82823 () Int)

(declare-fun flatMap!155 ((Set Context!3516) Int) (Set Context!3516))

(assert (=> d!658184 (= (derivationStepZipper!260 z!3955 lt!822401) (flatMap!155 z!3955 lambda!82823))))

(declare-fun bs!450436 () Bool)

(assert (= bs!450436 d!658184))

(declare-fun m!2641849 () Bool)

(assert (=> bs!450436 m!2641849))

(assert (=> b!2198785 d!658184))

(declare-fun bs!450437 () Bool)

(declare-fun d!658188 () Bool)

(assert (= bs!450437 (and d!658188 d!658164)))

(declare-fun lambda!82824 () Int)

(assert (=> bs!450437 (= lambda!82824 lambda!82802)))

(declare-fun bs!450438 () Bool)

(assert (= bs!450438 (and d!658188 d!658176)))

(assert (=> bs!450438 (not (= lambda!82824 lambda!82815))))

(declare-fun bs!450439 () Bool)

(assert (= bs!450439 (and d!658188 b!2198909)))

(assert (=> bs!450439 (not (= lambda!82824 lambda!82816))))

(declare-fun bs!450440 () Bool)

(assert (= bs!450440 (and d!658188 b!2198910)))

(assert (=> bs!450440 (not (= lambda!82824 lambda!82817))))

(assert (=> d!658188 (= (nullableZipper!468 lt!822407) (exists!821 lt!822407 lambda!82824))))

(declare-fun bs!450441 () Bool)

(assert (= bs!450441 d!658188))

(declare-fun m!2641851 () Bool)

(assert (=> bs!450441 m!2641851))

(assert (=> b!2198785 d!658188))

(declare-fun d!658190 () Bool)

(declare-fun c!350621 () Bool)

(assert (=> d!658190 (= c!350621 (isEmpty!14594 (Cons!25582 lt!822401 lt!822403)))))

(declare-fun e!1405245 () Bool)

(assert (=> d!658190 (= (matchZipper!274 z!3955 (Cons!25582 lt!822401 lt!822403)) e!1405245)))

(declare-fun b!2198938 () Bool)

(assert (=> b!2198938 (= e!1405245 (nullableZipper!468 z!3955))))

(declare-fun b!2198939 () Bool)

(assert (=> b!2198939 (= e!1405245 (matchZipper!274 (derivationStepZipper!260 z!3955 (head!4689 (Cons!25582 lt!822401 lt!822403))) (tail!3161 (Cons!25582 lt!822401 lt!822403))))))

(assert (= (and d!658190 c!350621) b!2198938))

(assert (= (and d!658190 (not c!350621)) b!2198939))

(declare-fun m!2641853 () Bool)

(assert (=> d!658190 m!2641853))

(assert (=> b!2198938 m!2641721))

(declare-fun m!2641855 () Bool)

(assert (=> b!2198939 m!2641855))

(assert (=> b!2198939 m!2641855))

(declare-fun m!2641857 () Bool)

(assert (=> b!2198939 m!2641857))

(declare-fun m!2641859 () Bool)

(assert (=> b!2198939 m!2641859))

(assert (=> b!2198939 m!2641857))

(assert (=> b!2198939 m!2641859))

(declare-fun m!2641861 () Bool)

(assert (=> b!2198939 m!2641861))

(assert (=> b!2198787 d!658190))

(declare-fun d!658192 () Bool)

(declare-fun e!1405253 () Bool)

(assert (=> d!658192 e!1405253))

(declare-fun res!945083 () Bool)

(assert (=> d!658192 (=> res!945083 e!1405253)))

(declare-fun lt!822492 () Int)

(assert (=> d!658192 (= res!945083 (<= lt!822492 0))))

(assert (=> d!658192 (= lt!822492 (+ (- (furthestNullablePosition!356 lt!822407 (+ 1 from!1114) totalInput!923 (size!19946 totalInput!923) lt!822400) (+ 1 from!1114)) 1))))

(declare-fun lt!822493 () Unit!38709)

(declare-fun choose!13018 ((Set Context!3516) Int BalanceConc!16410 Int) Unit!38709)

(assert (=> d!658192 (= lt!822493 (choose!13018 lt!822407 (+ 1 from!1114) totalInput!923 lt!822400))))

(declare-fun e!1405254 () Bool)

(assert (=> d!658192 e!1405254))

(declare-fun res!945084 () Bool)

(assert (=> d!658192 (=> (not res!945084) (not e!1405254))))

(assert (=> d!658192 (= res!945084 (>= (+ 1 from!1114) 0))))

(assert (=> d!658192 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!177 lt!822407 (+ 1 from!1114) totalInput!923 lt!822400) lt!822493)))

(declare-fun b!2198947 () Bool)

(assert (=> b!2198947 (= e!1405254 (<= (+ 1 from!1114) (size!19946 totalInput!923)))))

(declare-fun b!2198948 () Bool)

(assert (=> b!2198948 (= e!1405253 (matchZipper!274 lt!822407 (take!366 (drop!1376 (list!9842 totalInput!923) (+ 1 from!1114)) lt!822492)))))

(assert (= (and d!658192 res!945084) b!2198947))

(assert (= (and d!658192 (not res!945083)) b!2198948))

(assert (=> d!658192 m!2641691))

(assert (=> d!658192 m!2641691))

(declare-fun m!2641869 () Bool)

(assert (=> d!658192 m!2641869))

(declare-fun m!2641871 () Bool)

(assert (=> d!658192 m!2641871))

(assert (=> b!2198947 m!2641691))

(assert (=> b!2198948 m!2641699))

(assert (=> b!2198948 m!2641699))

(assert (=> b!2198948 m!2641725))

(assert (=> b!2198948 m!2641725))

(declare-fun m!2641873 () Bool)

(assert (=> b!2198948 m!2641873))

(assert (=> b!2198948 m!2641873))

(declare-fun m!2641875 () Bool)

(assert (=> b!2198948 m!2641875))

(assert (=> b!2198777 d!658192))

(declare-fun d!658198 () Bool)

(declare-fun isBalanced!2566 (Conc!8324) Bool)

(assert (=> d!658198 (= (inv!34299 totalInput!923) (isBalanced!2566 (c!350559 totalInput!923)))))

(declare-fun bs!450443 () Bool)

(assert (= bs!450443 d!658198))

(declare-fun m!2641877 () Bool)

(assert (=> bs!450443 m!2641877))

(assert (=> start!213452 d!658198))

(declare-fun d!658200 () Bool)

(declare-fun c!350624 () Bool)

(assert (=> d!658200 (= c!350624 (isEmpty!14594 (take!366 (drop!1376 (list!9842 totalInput!923) (+ 1 from!1114)) lt!822406)))))

(declare-fun e!1405255 () Bool)

(assert (=> d!658200 (= (matchZipper!274 lt!822407 (take!366 (drop!1376 (list!9842 totalInput!923) (+ 1 from!1114)) lt!822406)) e!1405255)))

(declare-fun b!2198949 () Bool)

(assert (=> b!2198949 (= e!1405255 (nullableZipper!468 lt!822407))))

(declare-fun b!2198950 () Bool)

(assert (=> b!2198950 (= e!1405255 (matchZipper!274 (derivationStepZipper!260 lt!822407 (head!4689 (take!366 (drop!1376 (list!9842 totalInput!923) (+ 1 from!1114)) lt!822406))) (tail!3161 (take!366 (drop!1376 (list!9842 totalInput!923) (+ 1 from!1114)) lt!822406))))))

(assert (= (and d!658200 c!350624) b!2198949))

(assert (= (and d!658200 (not c!350624)) b!2198950))

(assert (=> d!658200 m!2641727))

(declare-fun m!2641879 () Bool)

(assert (=> d!658200 m!2641879))

(assert (=> b!2198949 m!2641707))

(assert (=> b!2198950 m!2641727))

(declare-fun m!2641881 () Bool)

(assert (=> b!2198950 m!2641881))

(assert (=> b!2198950 m!2641881))

(declare-fun m!2641883 () Bool)

(assert (=> b!2198950 m!2641883))

(assert (=> b!2198950 m!2641727))

(declare-fun m!2641885 () Bool)

(assert (=> b!2198950 m!2641885))

(assert (=> b!2198950 m!2641883))

(assert (=> b!2198950 m!2641885))

(declare-fun m!2641887 () Bool)

(assert (=> b!2198950 m!2641887))

(assert (=> b!2198781 d!658200))

(declare-fun e!1405258 () List!25666)

(declare-fun b!2198951 () Bool)

(assert (=> b!2198951 (= e!1405258 (Cons!25582 (h!30983 (drop!1376 (list!9842 totalInput!923) (+ 1 from!1114))) (take!366 (t!198284 (drop!1376 (list!9842 totalInput!923) (+ 1 from!1114))) (- lt!822406 1))))))

(declare-fun b!2198952 () Bool)

(declare-fun e!1405257 () Int)

(assert (=> b!2198952 (= e!1405257 lt!822406)))

(declare-fun b!2198953 () Bool)

(assert (=> b!2198953 (= e!1405257 (size!19947 (drop!1376 (list!9842 totalInput!923) (+ 1 from!1114))))))

(declare-fun b!2198954 () Bool)

(assert (=> b!2198954 (= e!1405258 Nil!25582)))

(declare-fun d!658202 () Bool)

(declare-fun e!1405259 () Bool)

(assert (=> d!658202 e!1405259))

(declare-fun res!945085 () Bool)

(assert (=> d!658202 (=> (not res!945085) (not e!1405259))))

(declare-fun lt!822494 () List!25666)

(assert (=> d!658202 (= res!945085 (set.subset (content!3476 lt!822494) (content!3476 (drop!1376 (list!9842 totalInput!923) (+ 1 from!1114)))))))

(assert (=> d!658202 (= lt!822494 e!1405258)))

(declare-fun c!350626 () Bool)

(assert (=> d!658202 (= c!350626 (or (is-Nil!25582 (drop!1376 (list!9842 totalInput!923) (+ 1 from!1114))) (<= lt!822406 0)))))

(assert (=> d!658202 (= (take!366 (drop!1376 (list!9842 totalInput!923) (+ 1 from!1114)) lt!822406) lt!822494)))

(declare-fun b!2198955 () Bool)

(declare-fun e!1405256 () Int)

(assert (=> b!2198955 (= e!1405256 e!1405257)))

(declare-fun c!350627 () Bool)

(assert (=> b!2198955 (= c!350627 (>= lt!822406 (size!19947 (drop!1376 (list!9842 totalInput!923) (+ 1 from!1114)))))))

(declare-fun b!2198956 () Bool)

(assert (=> b!2198956 (= e!1405259 (= (size!19947 lt!822494) e!1405256))))

(declare-fun c!350625 () Bool)

(assert (=> b!2198956 (= c!350625 (<= lt!822406 0))))

(declare-fun b!2198957 () Bool)

(assert (=> b!2198957 (= e!1405256 0)))

(assert (= (and d!658202 c!350626) b!2198954))

(assert (= (and d!658202 (not c!350626)) b!2198951))

(assert (= (and d!658202 res!945085) b!2198956))

(assert (= (and b!2198956 c!350625) b!2198957))

(assert (= (and b!2198956 (not c!350625)) b!2198955))

(assert (= (and b!2198955 c!350627) b!2198953))

(assert (= (and b!2198955 (not c!350627)) b!2198952))

(assert (=> b!2198955 m!2641725))

(declare-fun m!2641889 () Bool)

(assert (=> b!2198955 m!2641889))

(declare-fun m!2641891 () Bool)

(assert (=> b!2198951 m!2641891))

(declare-fun m!2641893 () Bool)

(assert (=> d!658202 m!2641893))

(assert (=> d!658202 m!2641725))

(declare-fun m!2641895 () Bool)

(assert (=> d!658202 m!2641895))

(assert (=> b!2198953 m!2641725))

(assert (=> b!2198953 m!2641889))

(declare-fun m!2641897 () Bool)

(assert (=> b!2198956 m!2641897))

(assert (=> b!2198781 d!658202))

(declare-fun b!2198958 () Bool)

(declare-fun e!1405260 () List!25666)

(assert (=> b!2198958 (= e!1405260 Nil!25582)))

(declare-fun b!2198959 () Bool)

(declare-fun e!1405263 () Bool)

(declare-fun lt!822495 () List!25666)

(declare-fun e!1405261 () Int)

(assert (=> b!2198959 (= e!1405263 (= (size!19947 lt!822495) e!1405261))))

(declare-fun c!350629 () Bool)

(assert (=> b!2198959 (= c!350629 (<= (+ 1 from!1114) 0))))

(declare-fun b!2198960 () Bool)

(declare-fun e!1405262 () List!25666)

(assert (=> b!2198960 (= e!1405260 e!1405262)))

(declare-fun c!350630 () Bool)

(assert (=> b!2198960 (= c!350630 (<= (+ 1 from!1114) 0))))

(declare-fun b!2198961 () Bool)

(declare-fun e!1405264 () Int)

(assert (=> b!2198961 (= e!1405261 e!1405264)))

(declare-fun c!350628 () Bool)

(declare-fun call!132080 () Int)

(assert (=> b!2198961 (= c!350628 (>= (+ 1 from!1114) call!132080))))

(declare-fun b!2198962 () Bool)

(assert (=> b!2198962 (= e!1405262 (drop!1376 (t!198284 (list!9842 totalInput!923)) (- (+ 1 from!1114) 1)))))

(declare-fun d!658204 () Bool)

(assert (=> d!658204 e!1405263))

(declare-fun res!945086 () Bool)

(assert (=> d!658204 (=> (not res!945086) (not e!1405263))))

(assert (=> d!658204 (= res!945086 (set.subset (content!3476 lt!822495) (content!3476 (list!9842 totalInput!923))))))

(assert (=> d!658204 (= lt!822495 e!1405260)))

(declare-fun c!350631 () Bool)

(assert (=> d!658204 (= c!350631 (is-Nil!25582 (list!9842 totalInput!923)))))

(assert (=> d!658204 (= (drop!1376 (list!9842 totalInput!923) (+ 1 from!1114)) lt!822495)))

(declare-fun b!2198963 () Bool)

(assert (=> b!2198963 (= e!1405261 call!132080)))

(declare-fun b!2198964 () Bool)

(assert (=> b!2198964 (= e!1405262 (list!9842 totalInput!923))))

(declare-fun bm!132075 () Bool)

(assert (=> bm!132075 (= call!132080 (size!19947 (list!9842 totalInput!923)))))

(declare-fun b!2198965 () Bool)

(assert (=> b!2198965 (= e!1405264 (- call!132080 (+ 1 from!1114)))))

(declare-fun b!2198966 () Bool)

(assert (=> b!2198966 (= e!1405264 0)))

(assert (= (and d!658204 c!350631) b!2198958))

(assert (= (and d!658204 (not c!350631)) b!2198960))

(assert (= (and b!2198960 c!350630) b!2198964))

(assert (= (and b!2198960 (not c!350630)) b!2198962))

(assert (= (and d!658204 res!945086) b!2198959))

(assert (= (and b!2198959 c!350629) b!2198963))

(assert (= (and b!2198959 (not c!350629)) b!2198961))

(assert (= (and b!2198961 c!350628) b!2198966))

(assert (= (and b!2198961 (not c!350628)) b!2198965))

(assert (= (or b!2198963 b!2198961 b!2198965) bm!132075))

(declare-fun m!2641899 () Bool)

(assert (=> b!2198959 m!2641899))

(declare-fun m!2641901 () Bool)

(assert (=> b!2198962 m!2641901))

(declare-fun m!2641903 () Bool)

(assert (=> d!658204 m!2641903))

(assert (=> d!658204 m!2641699))

(declare-fun m!2641905 () Bool)

(assert (=> d!658204 m!2641905))

(assert (=> bm!132075 m!2641699))

(declare-fun m!2641907 () Bool)

(assert (=> bm!132075 m!2641907))

(assert (=> b!2198781 d!658204))

(assert (=> b!2198781 d!658172))

(declare-fun d!658206 () Bool)

(declare-fun lt!822502 () Int)

(assert (=> d!658206 (= lt!822502 (size!19947 (list!9842 totalInput!923)))))

(declare-fun size!19950 (Conc!8324) Int)

(assert (=> d!658206 (= lt!822502 (size!19950 (c!350559 totalInput!923)))))

(assert (=> d!658206 (= (size!19946 totalInput!923) lt!822502)))

(declare-fun bs!450444 () Bool)

(assert (= bs!450444 d!658206))

(assert (=> bs!450444 m!2641699))

(assert (=> bs!450444 m!2641699))

(assert (=> bs!450444 m!2641907))

(declare-fun m!2641909 () Bool)

(assert (=> bs!450444 m!2641909))

(assert (=> b!2198779 d!658206))

(declare-fun d!658208 () Bool)

(declare-fun lambda!82830 () Int)

(declare-fun forall!5235 (List!25667 Int) Bool)

(assert (=> d!658208 (= (inv!34298 setElem!18855) (forall!5235 (exprs!2258 setElem!18855) lambda!82830))))

(declare-fun bs!450445 () Bool)

(assert (= bs!450445 d!658208))

(declare-fun m!2641927 () Bool)

(assert (=> bs!450445 m!2641927))

(assert (=> setNonEmpty!18855 d!658208))

(declare-fun b!2198995 () Bool)

(declare-fun e!1405281 () Bool)

(declare-fun tp!684437 () Bool)

(declare-fun tp!684438 () Bool)

(assert (=> b!2198995 (= e!1405281 (and tp!684437 tp!684438))))

(assert (=> b!2198778 (= tp!684421 e!1405281)))

(assert (= (and b!2198778 (is-Cons!25583 (exprs!2258 setElem!18855))) b!2198995))

(declare-fun tp!684447 () Bool)

(declare-fun e!1405287 () Bool)

(declare-fun tp!684445 () Bool)

(declare-fun b!2199006 () Bool)

(assert (=> b!2199006 (= e!1405287 (and (inv!34297 (left!19645 (c!350559 totalInput!923))) tp!684447 (inv!34297 (right!19975 (c!350559 totalInput!923))) tp!684445))))

(declare-fun b!2199008 () Bool)

(declare-fun e!1405288 () Bool)

(declare-fun tp!684446 () Bool)

(assert (=> b!2199008 (= e!1405288 tp!684446)))

(declare-fun b!2199007 () Bool)

(declare-fun inv!34305 (IArray!16653) Bool)

(assert (=> b!2199007 (= e!1405287 (and (inv!34305 (xs!11266 (c!350559 totalInput!923))) e!1405288))))

(assert (=> b!2198786 (= tp!684422 (and (inv!34297 (c!350559 totalInput!923)) e!1405287))))

(assert (= (and b!2198786 (is-Node!8324 (c!350559 totalInput!923))) b!2199006))

(assert (= b!2199007 b!2199008))

(assert (= (and b!2198786 (is-Leaf!12186 (c!350559 totalInput!923))) b!2199007))

(declare-fun m!2641931 () Bool)

(assert (=> b!2199006 m!2641931))

(declare-fun m!2641933 () Bool)

(assert (=> b!2199006 m!2641933))

(declare-fun m!2641935 () Bool)

(assert (=> b!2199007 m!2641935))

(assert (=> b!2198786 m!2641713))

(declare-fun condSetEmpty!18861 () Bool)

(assert (=> setNonEmpty!18855 (= condSetEmpty!18861 (= setRest!18855 (as set.empty (Set Context!3516))))))

(declare-fun setRes!18861 () Bool)

(assert (=> setNonEmpty!18855 (= tp!684423 setRes!18861)))

(declare-fun setIsEmpty!18861 () Bool)

(assert (=> setIsEmpty!18861 setRes!18861))

(declare-fun e!1405291 () Bool)

(declare-fun setNonEmpty!18861 () Bool)

(declare-fun tp!684452 () Bool)

(declare-fun setElem!18861 () Context!3516)

(assert (=> setNonEmpty!18861 (= setRes!18861 (and tp!684452 (inv!34298 setElem!18861) e!1405291))))

(declare-fun setRest!18861 () (Set Context!3516))

(assert (=> setNonEmpty!18861 (= setRest!18855 (set.union (set.insert setElem!18861 (as set.empty (Set Context!3516))) setRest!18861))))

(declare-fun b!2199013 () Bool)

(declare-fun tp!684453 () Bool)

(assert (=> b!2199013 (= e!1405291 tp!684453)))

(assert (= (and setNonEmpty!18855 condSetEmpty!18861) setIsEmpty!18861))

(assert (= (and setNonEmpty!18855 (not condSetEmpty!18861)) setNonEmpty!18861))

(assert (= setNonEmpty!18861 b!2199013))

(declare-fun m!2641937 () Bool)

(assert (=> setNonEmpty!18861 m!2641937))

(push 1)

(assert (not b!2198846))

(assert (not d!658168))

(assert (not d!658182))

(assert (not b!2198947))

(assert (not bm!132073))

(assert (not d!658170))

(assert (not d!658204))

(assert (not d!658190))

(assert (not b!2198962))

(assert (not b!2198995))

(assert (not d!658176))

(assert (not b!2198948))

(assert (not b!2199007))

(assert (not b!2198927))

(assert (not b!2198902))

(assert (not b!2198866))

(assert (not d!658172))

(assert (not b!2198956))

(assert (not b!2198939))

(assert (not d!658202))

(assert (not d!658164))

(assert (not b!2198922))

(assert (not b!2199008))

(assert (not bm!132074))

(assert (not d!658206))

(assert (not b!2198891))

(assert (not b!2198864))

(assert (not d!658200))

(assert (not b!2198904))

(assert (not setNonEmpty!18861))

(assert (not d!658166))

(assert (not b!2198953))

(assert (not b!2199013))

(assert (not bm!132068))

(assert (not d!658198))

(assert (not b!2198959))

(assert (not b!2198910))

(assert (not b!2198786))

(assert (not b!2198930))

(assert (not b!2198933))

(assert (not b!2198841))

(assert (not b!2198951))

(assert (not bm!132075))

(assert (not d!658184))

(assert (not b!2198909))

(assert (not b!2199006))

(assert (not d!658208))

(assert (not b!2198955))

(assert (not b!2198949))

(assert (not d!658192))

(assert (not b!2198867))

(assert (not b!2198847))

(assert (not b!2198925))

(assert (not d!658188))

(assert (not b!2198950))

(assert (not b!2198862))

(assert (not b!2198888))

(assert (not b!2198938))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

