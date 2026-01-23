; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!214158 () Bool)

(assert start!214158)

(declare-fun b!2203843 () Bool)

(declare-fun e!1408036 () Bool)

(declare-fun lastNullablePos!161 () Int)

(declare-fun from!1082 () Int)

(assert (=> b!2203843 (= e!1408036 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2203844 () Bool)

(declare-fun e!1408041 () Int)

(assert (=> b!2203844 (= e!1408041 from!1082)))

(declare-fun e!1408037 () Bool)

(declare-fun setNonEmpty!19120 () Bool)

(declare-fun tp!685541 () Bool)

(declare-fun setRes!19120 () Bool)

(declare-datatypes ((C!12660 0))(
  ( (C!12661 (val!7316 Int)) )
))
(declare-datatypes ((Regex!6257 0))(
  ( (ElementMatch!6257 (c!351668 C!12660)) (Concat!10559 (regOne!13026 Regex!6257) (regTwo!13026 Regex!6257)) (EmptyExpr!6257) (Star!6257 (reg!6586 Regex!6257)) (EmptyLang!6257) (Union!6257 (regOne!13027 Regex!6257) (regTwo!13027 Regex!6257)) )
))
(declare-datatypes ((List!25812 0))(
  ( (Nil!25728) (Cons!25728 (h!31129 Regex!6257) (t!198446 List!25812)) )
))
(declare-datatypes ((Context!3654 0))(
  ( (Context!3655 (exprs!2327 List!25812)) )
))
(declare-fun setElem!19120 () Context!3654)

(declare-fun inv!34655 (Context!3654) Bool)

(assert (=> setNonEmpty!19120 (= setRes!19120 (and tp!685541 (inv!34655 setElem!19120) e!1408037))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3888 () (InoxSet Context!3654))

(declare-fun setRest!19120 () (InoxSet Context!3654))

(assert (=> setNonEmpty!19120 (= z!3888 ((_ map or) (store ((as const (Array Context!3654 Bool)) false) setElem!19120 true) setRest!19120))))

(declare-fun b!2203845 () Bool)

(declare-fun res!947422 () Bool)

(declare-fun e!1408038 () Bool)

(assert (=> b!2203845 (=> (not res!947422) (not e!1408038))))

(assert (=> b!2203845 (= res!947422 e!1408036)))

(declare-fun res!947424 () Bool)

(assert (=> b!2203845 (=> res!947424 e!1408036)))

(declare-fun nullableZipper!537 ((InoxSet Context!3654)) Bool)

(assert (=> b!2203845 (= res!947424 (not (nullableZipper!537 z!3888)))))

(declare-fun b!2203846 () Bool)

(declare-fun res!947427 () Bool)

(assert (=> b!2203846 (=> (not res!947427) (not e!1408038))))

(assert (=> b!2203846 (= res!947427 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2203847 () Bool)

(declare-fun e!1408040 () Bool)

(assert (=> b!2203847 (= e!1408040 e!1408038)))

(declare-fun res!947426 () Bool)

(assert (=> b!2203847 (=> (not res!947426) (not e!1408038))))

(declare-datatypes ((List!25813 0))(
  ( (Nil!25729) (Cons!25729 (h!31130 C!12660) (t!198447 List!25813)) )
))
(declare-fun lt!824045 () List!25813)

(declare-fun matchZipper!343 ((InoxSet Context!3654) List!25813) Bool)

(assert (=> b!2203847 (= res!947426 (matchZipper!343 z!3888 lt!824045))))

(declare-fun lt!824040 () List!25813)

(declare-fun knownSize!10 () Int)

(declare-fun take!435 (List!25813 Int) List!25813)

(assert (=> b!2203847 (= lt!824045 (take!435 lt!824040 knownSize!10))))

(declare-fun lt!824038 () List!25813)

(declare-fun drop!1445 (List!25813 Int) List!25813)

(assert (=> b!2203847 (= lt!824040 (drop!1445 lt!824038 from!1082))))

(declare-datatypes ((IArray!16791 0))(
  ( (IArray!16792 (innerList!8453 List!25813)) )
))
(declare-datatypes ((Conc!8393 0))(
  ( (Node!8393 (left!19764 Conc!8393) (right!20094 Conc!8393) (csize!17016 Int) (cheight!8604 Int)) (Leaf!12289 (xs!11335 IArray!16791) (csize!17017 Int)) (Empty!8393) )
))
(declare-datatypes ((BalanceConc!16548 0))(
  ( (BalanceConc!16549 (c!351669 Conc!8393)) )
))
(declare-fun totalInput!891 () BalanceConc!16548)

(declare-fun list!9931 (BalanceConc!16548) List!25813)

(assert (=> b!2203847 (= lt!824038 (list!9931 totalInput!891))))

(declare-fun b!2203848 () Bool)

(declare-fun res!947423 () Bool)

(assert (=> b!2203848 (=> (not res!947423) (not e!1408038))))

(declare-fun lt!824044 () Int)

(assert (=> b!2203848 (= res!947423 (and (not (= knownSize!10 0)) (> knownSize!10 0) (not (= from!1082 lt!824044))))))

(declare-fun b!2203849 () Bool)

(assert (=> b!2203849 (= e!1408041 lastNullablePos!161)))

(declare-fun setIsEmpty!19120 () Bool)

(assert (=> setIsEmpty!19120 setRes!19120))

(declare-fun res!947425 () Bool)

(declare-fun e!1408039 () Bool)

(assert (=> start!214158 (=> (not res!947425) (not e!1408039))))

(assert (=> start!214158 (= res!947425 (>= from!1082 0))))

(assert (=> start!214158 e!1408039))

(assert (=> start!214158 true))

(declare-fun e!1408035 () Bool)

(declare-fun inv!34656 (BalanceConc!16548) Bool)

(assert (=> start!214158 (and (inv!34656 totalInput!891) e!1408035)))

(declare-fun condSetEmpty!19120 () Bool)

(assert (=> start!214158 (= condSetEmpty!19120 (= z!3888 ((as const (Array Context!3654 Bool)) false)))))

(assert (=> start!214158 setRes!19120))

(declare-fun b!2203850 () Bool)

(assert (=> b!2203850 (= e!1408039 e!1408040)))

(declare-fun res!947429 () Bool)

(assert (=> b!2203850 (=> (not res!947429) (not e!1408040))))

(assert (=> b!2203850 (= res!947429 (and (<= from!1082 lt!824044) (>= knownSize!10 0) (<= knownSize!10 (- lt!824044 from!1082))))))

(declare-fun size!20048 (BalanceConc!16548) Int)

(assert (=> b!2203850 (= lt!824044 (size!20048 totalInput!891))))

(declare-fun b!2203851 () Bool)

(declare-fun lt!824039 () List!25813)

(declare-fun tail!3186 (List!25813) List!25813)

(assert (=> b!2203851 (= e!1408038 (not (= lt!824039 (tail!3186 lt!824045))))))

(declare-fun lt!824046 () C!12660)

(assert (=> b!2203851 (= (Cons!25729 lt!824046 lt!824039) (take!435 lt!824040 (+ 1 (- knownSize!10 1))))))

(assert (=> b!2203851 (= lt!824039 (take!435 (drop!1445 lt!824038 (+ 1 from!1082)) (- knownSize!10 1)))))

(declare-fun apply!6326 (List!25813 Int) C!12660)

(assert (=> b!2203851 (= lt!824046 (apply!6326 lt!824038 from!1082))))

(declare-datatypes ((Unit!38811 0))(
  ( (Unit!38812) )
))
(declare-fun lt!824042 () Unit!38811)

(declare-fun lemmaDropTakeAddOneLeft!34 (List!25813 Int Int) Unit!38811)

(assert (=> b!2203851 (= lt!824042 (lemmaDropTakeAddOneLeft!34 lt!824038 from!1082 (- knownSize!10 1)))))

(declare-fun lt!824041 () Int)

(declare-fun lt!824043 () (InoxSet Context!3654))

(declare-fun furthestNullablePosition!395 ((InoxSet Context!3654) Int BalanceConc!16548 Int Int) Int)

(assert (=> b!2203851 (= lt!824041 (furthestNullablePosition!395 lt!824043 (+ 1 from!1082) totalInput!891 lt!824044 e!1408041))))

(declare-fun c!351667 () Bool)

(assert (=> b!2203851 (= c!351667 (nullableZipper!537 lt!824043))))

(declare-fun derivationStepZipper!299 ((InoxSet Context!3654) C!12660) (InoxSet Context!3654))

(declare-fun apply!6327 (BalanceConc!16548 Int) C!12660)

(assert (=> b!2203851 (= lt!824043 (derivationStepZipper!299 z!3888 (apply!6327 totalInput!891 from!1082)))))

(declare-fun b!2203852 () Bool)

(declare-fun tp!685540 () Bool)

(assert (=> b!2203852 (= e!1408037 tp!685540)))

(declare-fun b!2203853 () Bool)

(declare-fun res!947428 () Bool)

(assert (=> b!2203853 (=> (not res!947428) (not e!1408038))))

(declare-fun isEmpty!14704 (BalanceConc!16548) Bool)

(assert (=> b!2203853 (= res!947428 (not (isEmpty!14704 totalInput!891)))))

(declare-fun b!2203854 () Bool)

(declare-fun res!947421 () Bool)

(assert (=> b!2203854 (=> (not res!947421) (not e!1408038))))

(declare-fun lostCauseZipper!357 ((InoxSet Context!3654)) Bool)

(assert (=> b!2203854 (= res!947421 (not (lostCauseZipper!357 z!3888)))))

(declare-fun b!2203855 () Bool)

(declare-fun tp!685542 () Bool)

(declare-fun inv!34657 (Conc!8393) Bool)

(assert (=> b!2203855 (= e!1408035 (and (inv!34657 (c!351669 totalInput!891)) tp!685542))))

(assert (= (and start!214158 res!947425) b!2203850))

(assert (= (and b!2203850 res!947429) b!2203847))

(assert (= (and b!2203847 res!947426) b!2203846))

(assert (= (and b!2203846 res!947427) b!2203845))

(assert (= (and b!2203845 (not res!947424)) b!2203843))

(assert (= (and b!2203845 res!947422) b!2203853))

(assert (= (and b!2203853 res!947428) b!2203848))

(assert (= (and b!2203848 res!947423) b!2203854))

(assert (= (and b!2203854 res!947421) b!2203851))

(assert (= (and b!2203851 c!351667) b!2203844))

(assert (= (and b!2203851 (not c!351667)) b!2203849))

(assert (= start!214158 b!2203855))

(assert (= (and start!214158 condSetEmpty!19120) setIsEmpty!19120))

(assert (= (and start!214158 (not condSetEmpty!19120)) setNonEmpty!19120))

(assert (= setNonEmpty!19120 b!2203852))

(declare-fun m!2645673 () Bool)

(assert (=> setNonEmpty!19120 m!2645673))

(declare-fun m!2645675 () Bool)

(assert (=> b!2203855 m!2645675))

(declare-fun m!2645677 () Bool)

(assert (=> b!2203851 m!2645677))

(declare-fun m!2645679 () Bool)

(assert (=> b!2203851 m!2645679))

(declare-fun m!2645681 () Bool)

(assert (=> b!2203851 m!2645681))

(declare-fun m!2645683 () Bool)

(assert (=> b!2203851 m!2645683))

(declare-fun m!2645685 () Bool)

(assert (=> b!2203851 m!2645685))

(declare-fun m!2645687 () Bool)

(assert (=> b!2203851 m!2645687))

(declare-fun m!2645689 () Bool)

(assert (=> b!2203851 m!2645689))

(declare-fun m!2645691 () Bool)

(assert (=> b!2203851 m!2645691))

(assert (=> b!2203851 m!2645689))

(declare-fun m!2645693 () Bool)

(assert (=> b!2203851 m!2645693))

(assert (=> b!2203851 m!2645679))

(declare-fun m!2645695 () Bool)

(assert (=> b!2203851 m!2645695))

(declare-fun m!2645697 () Bool)

(assert (=> b!2203854 m!2645697))

(declare-fun m!2645699 () Bool)

(assert (=> b!2203845 m!2645699))

(declare-fun m!2645701 () Bool)

(assert (=> b!2203850 m!2645701))

(declare-fun m!2645703 () Bool)

(assert (=> b!2203847 m!2645703))

(declare-fun m!2645705 () Bool)

(assert (=> b!2203847 m!2645705))

(declare-fun m!2645707 () Bool)

(assert (=> b!2203847 m!2645707))

(declare-fun m!2645709 () Bool)

(assert (=> b!2203847 m!2645709))

(declare-fun m!2645711 () Bool)

(assert (=> start!214158 m!2645711))

(declare-fun m!2645713 () Bool)

(assert (=> b!2203853 m!2645713))

(check-sat (not setNonEmpty!19120) (not b!2203845) (not b!2203851) (not b!2203855) (not b!2203852) (not start!214158) (not b!2203854) (not b!2203850) (not b!2203853) (not b!2203847))
(check-sat)
(get-model)

(declare-fun bs!450709 () Bool)

(declare-fun b!2203928 () Bool)

(declare-fun d!658938 () Bool)

(assert (= bs!450709 (and b!2203928 d!658938)))

(declare-fun lambda!83056 () Int)

(declare-fun lambda!83055 () Int)

(assert (=> bs!450709 (not (= lambda!83056 lambda!83055))))

(declare-fun bs!450710 () Bool)

(declare-fun b!2203929 () Bool)

(assert (= bs!450710 (and b!2203929 d!658938)))

(declare-fun lambda!83057 () Int)

(assert (=> bs!450710 (not (= lambda!83057 lambda!83055))))

(declare-fun bs!450711 () Bool)

(assert (= bs!450711 (and b!2203929 b!2203928)))

(assert (=> bs!450711 (= lambda!83057 lambda!83056)))

(declare-fun e!1408089 () Unit!38811)

(declare-fun Unit!38813 () Unit!38811)

(assert (=> b!2203929 (= e!1408089 Unit!38813)))

(declare-datatypes ((List!25814 0))(
  ( (Nil!25730) (Cons!25730 (h!31131 Context!3654) (t!198448 List!25814)) )
))
(declare-fun lt!824087 () List!25814)

(declare-fun call!132173 () List!25814)

(assert (=> b!2203929 (= lt!824087 call!132173)))

(declare-fun lt!824088 () Unit!38811)

(declare-fun lemmaForallThenNotExists!55 (List!25814 Int) Unit!38811)

(assert (=> b!2203929 (= lt!824088 (lemmaForallThenNotExists!55 lt!824087 lambda!83055))))

(declare-fun call!132174 () Bool)

(assert (=> b!2203929 (not call!132174)))

(declare-fun lt!824089 () Unit!38811)

(assert (=> b!2203929 (= lt!824089 lt!824088)))

(declare-fun Unit!38814 () Unit!38811)

(assert (=> b!2203928 (= e!1408089 Unit!38814)))

(declare-fun lt!824084 () List!25814)

(assert (=> b!2203928 (= lt!824084 call!132173)))

(declare-fun lt!824090 () Unit!38811)

(declare-fun lemmaNotForallThenExists!55 (List!25814 Int) Unit!38811)

(assert (=> b!2203928 (= lt!824090 (lemmaNotForallThenExists!55 lt!824084 lambda!83055))))

(assert (=> b!2203928 call!132174))

(declare-fun lt!824086 () Unit!38811)

(assert (=> b!2203928 (= lt!824086 lt!824090)))

(declare-fun lt!824091 () Bool)

(declare-datatypes ((Option!5030 0))(
  ( (None!5029) (Some!5029 (v!29426 List!25813)) )
))
(declare-fun isEmpty!14705 (Option!5030) Bool)

(declare-fun getLanguageWitness!153 ((InoxSet Context!3654)) Option!5030)

(assert (=> d!658938 (= lt!824091 (isEmpty!14705 (getLanguageWitness!153 z!3888)))))

(declare-fun forall!5258 ((InoxSet Context!3654) Int) Bool)

(assert (=> d!658938 (= lt!824091 (forall!5258 z!3888 lambda!83055))))

(declare-fun lt!824085 () Unit!38811)

(assert (=> d!658938 (= lt!824085 e!1408089)))

(declare-fun c!351709 () Bool)

(assert (=> d!658938 (= c!351709 (not (forall!5258 z!3888 lambda!83055)))))

(assert (=> d!658938 (= (lostCauseZipper!357 z!3888) lt!824091)))

(declare-fun bm!132169 () Bool)

(declare-fun toList!1268 ((InoxSet Context!3654)) List!25814)

(assert (=> bm!132169 (= call!132173 (toList!1268 z!3888))))

(declare-fun bm!132168 () Bool)

(declare-fun exists!846 (List!25814 Int) Bool)

(assert (=> bm!132168 (= call!132174 (exists!846 (ite c!351709 lt!824084 lt!824087) (ite c!351709 lambda!83056 lambda!83057)))))

(assert (= (and d!658938 c!351709) b!2203928))

(assert (= (and d!658938 (not c!351709)) b!2203929))

(assert (= (or b!2203928 b!2203929) bm!132168))

(assert (= (or b!2203928 b!2203929) bm!132169))

(declare-fun m!2645775 () Bool)

(assert (=> bm!132168 m!2645775))

(declare-fun m!2645777 () Bool)

(assert (=> b!2203929 m!2645777))

(declare-fun m!2645779 () Bool)

(assert (=> b!2203928 m!2645779))

(declare-fun m!2645781 () Bool)

(assert (=> d!658938 m!2645781))

(assert (=> d!658938 m!2645781))

(declare-fun m!2645783 () Bool)

(assert (=> d!658938 m!2645783))

(declare-fun m!2645785 () Bool)

(assert (=> d!658938 m!2645785))

(assert (=> d!658938 m!2645785))

(declare-fun m!2645787 () Bool)

(assert (=> bm!132169 m!2645787))

(assert (=> b!2203854 d!658938))

(declare-fun d!658964 () Bool)

(declare-fun lambda!83060 () Int)

(declare-fun forall!5259 (List!25812 Int) Bool)

(assert (=> d!658964 (= (inv!34655 setElem!19120) (forall!5259 (exprs!2327 setElem!19120) lambda!83060))))

(declare-fun bs!450713 () Bool)

(assert (= bs!450713 d!658964))

(declare-fun m!2645801 () Bool)

(assert (=> bs!450713 m!2645801))

(assert (=> setNonEmpty!19120 d!658964))

(declare-fun bs!450716 () Bool)

(declare-fun d!658970 () Bool)

(assert (= bs!450716 (and d!658970 d!658938)))

(declare-fun lambda!83064 () Int)

(assert (=> bs!450716 (not (= lambda!83064 lambda!83055))))

(declare-fun bs!450717 () Bool)

(assert (= bs!450717 (and d!658970 b!2203928)))

(assert (=> bs!450717 (not (= lambda!83064 lambda!83056))))

(declare-fun bs!450718 () Bool)

(assert (= bs!450718 (and d!658970 b!2203929)))

(assert (=> bs!450718 (not (= lambda!83064 lambda!83057))))

(declare-fun exists!847 ((InoxSet Context!3654) Int) Bool)

(assert (=> d!658970 (= (nullableZipper!537 z!3888) (exists!847 z!3888 lambda!83064))))

(declare-fun bs!450719 () Bool)

(assert (= bs!450719 d!658970))

(declare-fun m!2645805 () Bool)

(assert (=> bs!450719 m!2645805))

(assert (=> b!2203845 d!658970))

(declare-fun d!658974 () Bool)

(declare-fun lt!824098 () Int)

(declare-fun size!20050 (List!25813) Int)

(assert (=> d!658974 (= lt!824098 (size!20050 (list!9931 totalInput!891)))))

(declare-fun size!20051 (Conc!8393) Int)

(assert (=> d!658974 (= lt!824098 (size!20051 (c!351669 totalInput!891)))))

(assert (=> d!658974 (= (size!20048 totalInput!891) lt!824098)))

(declare-fun bs!450720 () Bool)

(assert (= bs!450720 d!658974))

(assert (=> bs!450720 m!2645709))

(assert (=> bs!450720 m!2645709))

(declare-fun m!2645811 () Bool)

(assert (=> bs!450720 m!2645811))

(declare-fun m!2645813 () Bool)

(assert (=> bs!450720 m!2645813))

(assert (=> b!2203850 d!658974))

(declare-fun d!658978 () Bool)

(declare-fun isBalanced!2582 (Conc!8393) Bool)

(assert (=> d!658978 (= (inv!34656 totalInput!891) (isBalanced!2582 (c!351669 totalInput!891)))))

(declare-fun bs!450721 () Bool)

(assert (= bs!450721 d!658978))

(declare-fun m!2645815 () Bool)

(assert (=> bs!450721 m!2645815))

(assert (=> start!214158 d!658978))

(declare-fun d!658980 () Bool)

(declare-fun c!351725 () Bool)

(get-info :version)

(assert (=> d!658980 (= c!351725 ((_ is Node!8393) (c!351669 totalInput!891)))))

(declare-fun e!1408111 () Bool)

(assert (=> d!658980 (= (inv!34657 (c!351669 totalInput!891)) e!1408111)))

(declare-fun b!2203964 () Bool)

(declare-fun inv!34658 (Conc!8393) Bool)

(assert (=> b!2203964 (= e!1408111 (inv!34658 (c!351669 totalInput!891)))))

(declare-fun b!2203965 () Bool)

(declare-fun e!1408112 () Bool)

(assert (=> b!2203965 (= e!1408111 e!1408112)))

(declare-fun res!947454 () Bool)

(assert (=> b!2203965 (= res!947454 (not ((_ is Leaf!12289) (c!351669 totalInput!891))))))

(assert (=> b!2203965 (=> res!947454 e!1408112)))

(declare-fun b!2203966 () Bool)

(declare-fun inv!34659 (Conc!8393) Bool)

(assert (=> b!2203966 (= e!1408112 (inv!34659 (c!351669 totalInput!891)))))

(assert (= (and d!658980 c!351725) b!2203964))

(assert (= (and d!658980 (not c!351725)) b!2203965))

(assert (= (and b!2203965 (not res!947454)) b!2203966))

(declare-fun m!2645817 () Bool)

(assert (=> b!2203964 m!2645817))

(declare-fun m!2645819 () Bool)

(assert (=> b!2203966 m!2645819))

(assert (=> b!2203855 d!658980))

(declare-fun d!658982 () Bool)

(declare-fun c!351736 () Bool)

(declare-fun isEmpty!14708 (List!25813) Bool)

(assert (=> d!658982 (= c!351736 (isEmpty!14708 lt!824045))))

(declare-fun e!1408121 () Bool)

(assert (=> d!658982 (= (matchZipper!343 z!3888 lt!824045) e!1408121)))

(declare-fun b!2203975 () Bool)

(assert (=> b!2203975 (= e!1408121 (nullableZipper!537 z!3888))))

(declare-fun b!2203976 () Bool)

(declare-fun head!4708 (List!25813) C!12660)

(assert (=> b!2203976 (= e!1408121 (matchZipper!343 (derivationStepZipper!299 z!3888 (head!4708 lt!824045)) (tail!3186 lt!824045)))))

(assert (= (and d!658982 c!351736) b!2203975))

(assert (= (and d!658982 (not c!351736)) b!2203976))

(declare-fun m!2645821 () Bool)

(assert (=> d!658982 m!2645821))

(assert (=> b!2203975 m!2645699))

(declare-fun m!2645823 () Bool)

(assert (=> b!2203976 m!2645823))

(assert (=> b!2203976 m!2645823))

(declare-fun m!2645825 () Bool)

(assert (=> b!2203976 m!2645825))

(assert (=> b!2203976 m!2645681))

(assert (=> b!2203976 m!2645825))

(assert (=> b!2203976 m!2645681))

(declare-fun m!2645827 () Bool)

(assert (=> b!2203976 m!2645827))

(assert (=> b!2203847 d!658982))

(declare-fun b!2203993 () Bool)

(declare-fun e!1408134 () Int)

(assert (=> b!2203993 (= e!1408134 (size!20050 lt!824040))))

(declare-fun b!2203994 () Bool)

(assert (=> b!2203994 (= e!1408134 knownSize!10)))

(declare-fun b!2203995 () Bool)

(declare-fun e!1408133 () Int)

(assert (=> b!2203995 (= e!1408133 e!1408134)))

(declare-fun c!351746 () Bool)

(assert (=> b!2203995 (= c!351746 (>= knownSize!10 (size!20050 lt!824040)))))

(declare-fun b!2203997 () Bool)

(assert (=> b!2203997 (= e!1408133 0)))

(declare-fun d!658984 () Bool)

(declare-fun e!1408132 () Bool)

(assert (=> d!658984 e!1408132))

(declare-fun res!947457 () Bool)

(assert (=> d!658984 (=> (not res!947457) (not e!1408132))))

(declare-fun lt!824125 () List!25813)

(declare-fun content!3494 (List!25813) (InoxSet C!12660))

(assert (=> d!658984 (= res!947457 (= ((_ map implies) (content!3494 lt!824125) (content!3494 lt!824040)) ((as const (InoxSet C!12660)) true)))))

(declare-fun e!1408131 () List!25813)

(assert (=> d!658984 (= lt!824125 e!1408131)))

(declare-fun c!351747 () Bool)

(assert (=> d!658984 (= c!351747 (or ((_ is Nil!25729) lt!824040) (<= knownSize!10 0)))))

(assert (=> d!658984 (= (take!435 lt!824040 knownSize!10) lt!824125)))

(declare-fun b!2203996 () Bool)

(assert (=> b!2203996 (= e!1408131 (Cons!25729 (h!31130 lt!824040) (take!435 (t!198447 lt!824040) (- knownSize!10 1))))))

(declare-fun b!2203998 () Bool)

(assert (=> b!2203998 (= e!1408131 Nil!25729)))

(declare-fun b!2203999 () Bool)

(assert (=> b!2203999 (= e!1408132 (= (size!20050 lt!824125) e!1408133))))

(declare-fun c!351748 () Bool)

(assert (=> b!2203999 (= c!351748 (<= knownSize!10 0))))

(assert (= (and d!658984 c!351747) b!2203998))

(assert (= (and d!658984 (not c!351747)) b!2203996))

(assert (= (and d!658984 res!947457) b!2203999))

(assert (= (and b!2203999 c!351748) b!2203997))

(assert (= (and b!2203999 (not c!351748)) b!2203995))

(assert (= (and b!2203995 c!351746) b!2203993))

(assert (= (and b!2203995 (not c!351746)) b!2203994))

(declare-fun m!2645843 () Bool)

(assert (=> b!2203993 m!2645843))

(declare-fun m!2645845 () Bool)

(assert (=> b!2203999 m!2645845))

(declare-fun m!2645847 () Bool)

(assert (=> b!2203996 m!2645847))

(declare-fun m!2645849 () Bool)

(assert (=> d!658984 m!2645849))

(declare-fun m!2645851 () Bool)

(assert (=> d!658984 m!2645851))

(assert (=> b!2203995 m!2645843))

(assert (=> b!2203847 d!658984))

(declare-fun b!2204042 () Bool)

(declare-fun e!1408157 () Int)

(declare-fun e!1408160 () Int)

(assert (=> b!2204042 (= e!1408157 e!1408160)))

(declare-fun c!351768 () Bool)

(declare-fun call!132187 () Int)

(assert (=> b!2204042 (= c!351768 (>= from!1082 call!132187))))

(declare-fun b!2204043 () Bool)

(assert (=> b!2204043 (= e!1408157 call!132187)))

(declare-fun b!2204044 () Bool)

(assert (=> b!2204044 (= e!1408160 (- call!132187 from!1082))))

(declare-fun b!2204045 () Bool)

(declare-fun e!1408159 () List!25813)

(assert (=> b!2204045 (= e!1408159 lt!824038)))

(declare-fun b!2204046 () Bool)

(declare-fun e!1408161 () List!25813)

(assert (=> b!2204046 (= e!1408161 e!1408159)))

(declare-fun c!351767 () Bool)

(assert (=> b!2204046 (= c!351767 (<= from!1082 0))))

(declare-fun d!658988 () Bool)

(declare-fun e!1408158 () Bool)

(assert (=> d!658988 e!1408158))

(declare-fun res!947462 () Bool)

(assert (=> d!658988 (=> (not res!947462) (not e!1408158))))

(declare-fun lt!824133 () List!25813)

(assert (=> d!658988 (= res!947462 (= ((_ map implies) (content!3494 lt!824133) (content!3494 lt!824038)) ((as const (InoxSet C!12660)) true)))))

(assert (=> d!658988 (= lt!824133 e!1408161)))

(declare-fun c!351769 () Bool)

(assert (=> d!658988 (= c!351769 ((_ is Nil!25729) lt!824038))))

(assert (=> d!658988 (= (drop!1445 lt!824038 from!1082) lt!824133)))

(declare-fun b!2204047 () Bool)

(assert (=> b!2204047 (= e!1408160 0)))

(declare-fun b!2204048 () Bool)

(assert (=> b!2204048 (= e!1408159 (drop!1445 (t!198447 lt!824038) (- from!1082 1)))))

(declare-fun bm!132182 () Bool)

(assert (=> bm!132182 (= call!132187 (size!20050 lt!824038))))

(declare-fun b!2204049 () Bool)

(assert (=> b!2204049 (= e!1408158 (= (size!20050 lt!824133) e!1408157))))

(declare-fun c!351770 () Bool)

(assert (=> b!2204049 (= c!351770 (<= from!1082 0))))

(declare-fun b!2204050 () Bool)

(assert (=> b!2204050 (= e!1408161 Nil!25729)))

(assert (= (and d!658988 c!351769) b!2204050))

(assert (= (and d!658988 (not c!351769)) b!2204046))

(assert (= (and b!2204046 c!351767) b!2204045))

(assert (= (and b!2204046 (not c!351767)) b!2204048))

(assert (= (and d!658988 res!947462) b!2204049))

(assert (= (and b!2204049 c!351770) b!2204043))

(assert (= (and b!2204049 (not c!351770)) b!2204042))

(assert (= (and b!2204042 c!351768) b!2204047))

(assert (= (and b!2204042 (not c!351768)) b!2204044))

(assert (= (or b!2204043 b!2204042 b!2204044) bm!132182))

(declare-fun m!2645879 () Bool)

(assert (=> d!658988 m!2645879))

(declare-fun m!2645881 () Bool)

(assert (=> d!658988 m!2645881))

(declare-fun m!2645883 () Bool)

(assert (=> b!2204048 m!2645883))

(declare-fun m!2645885 () Bool)

(assert (=> bm!132182 m!2645885))

(declare-fun m!2645887 () Bool)

(assert (=> b!2204049 m!2645887))

(assert (=> b!2203847 d!658988))

(declare-fun d!658998 () Bool)

(declare-fun list!9932 (Conc!8393) List!25813)

(assert (=> d!658998 (= (list!9931 totalInput!891) (list!9932 (c!351669 totalInput!891)))))

(declare-fun bs!450733 () Bool)

(assert (= bs!450733 d!658998))

(declare-fun m!2645891 () Bool)

(assert (=> bs!450733 m!2645891))

(assert (=> b!2203847 d!658998))

(declare-fun d!659000 () Bool)

(assert (=> d!659000 true))

(declare-fun lambda!83082 () Int)

(declare-fun flatMap!164 ((InoxSet Context!3654) Int) (InoxSet Context!3654))

(assert (=> d!659000 (= (derivationStepZipper!299 z!3888 (apply!6327 totalInput!891 from!1082)) (flatMap!164 z!3888 lambda!83082))))

(declare-fun bs!450734 () Bool)

(assert (= bs!450734 d!659000))

(declare-fun m!2645899 () Bool)

(assert (=> bs!450734 m!2645899))

(assert (=> b!2203851 d!659000))

(declare-fun b!2204072 () Bool)

(declare-fun e!1408177 () Int)

(assert (=> b!2204072 (= e!1408177 (size!20050 lt!824040))))

(declare-fun b!2204073 () Bool)

(assert (=> b!2204073 (= e!1408177 (+ 1 (- knownSize!10 1)))))

(declare-fun b!2204074 () Bool)

(declare-fun e!1408176 () Int)

(assert (=> b!2204074 (= e!1408176 e!1408177)))

(declare-fun c!351773 () Bool)

(assert (=> b!2204074 (= c!351773 (>= (+ 1 (- knownSize!10 1)) (size!20050 lt!824040)))))

(declare-fun b!2204076 () Bool)

(assert (=> b!2204076 (= e!1408176 0)))

(declare-fun d!659002 () Bool)

(declare-fun e!1408175 () Bool)

(assert (=> d!659002 e!1408175))

(declare-fun res!947463 () Bool)

(assert (=> d!659002 (=> (not res!947463) (not e!1408175))))

(declare-fun lt!824134 () List!25813)

(assert (=> d!659002 (= res!947463 (= ((_ map implies) (content!3494 lt!824134) (content!3494 lt!824040)) ((as const (InoxSet C!12660)) true)))))

(declare-fun e!1408174 () List!25813)

(assert (=> d!659002 (= lt!824134 e!1408174)))

(declare-fun c!351774 () Bool)

(assert (=> d!659002 (= c!351774 (or ((_ is Nil!25729) lt!824040) (<= (+ 1 (- knownSize!10 1)) 0)))))

(assert (=> d!659002 (= (take!435 lt!824040 (+ 1 (- knownSize!10 1))) lt!824134)))

(declare-fun b!2204075 () Bool)

(assert (=> b!2204075 (= e!1408174 (Cons!25729 (h!31130 lt!824040) (take!435 (t!198447 lt!824040) (- (+ 1 (- knownSize!10 1)) 1))))))

(declare-fun b!2204077 () Bool)

(assert (=> b!2204077 (= e!1408174 Nil!25729)))

(declare-fun b!2204078 () Bool)

(assert (=> b!2204078 (= e!1408175 (= (size!20050 lt!824134) e!1408176))))

(declare-fun c!351775 () Bool)

(assert (=> b!2204078 (= c!351775 (<= (+ 1 (- knownSize!10 1)) 0))))

(assert (= (and d!659002 c!351774) b!2204077))

(assert (= (and d!659002 (not c!351774)) b!2204075))

(assert (= (and d!659002 res!947463) b!2204078))

(assert (= (and b!2204078 c!351775) b!2204076))

(assert (= (and b!2204078 (not c!351775)) b!2204074))

(assert (= (and b!2204074 c!351773) b!2204072))

(assert (= (and b!2204074 (not c!351773)) b!2204073))

(assert (=> b!2204072 m!2645843))

(declare-fun m!2645901 () Bool)

(assert (=> b!2204078 m!2645901))

(declare-fun m!2645903 () Bool)

(assert (=> b!2204075 m!2645903))

(declare-fun m!2645905 () Bool)

(assert (=> d!659002 m!2645905))

(assert (=> d!659002 m!2645851))

(assert (=> b!2204074 m!2645843))

(assert (=> b!2203851 d!659002))

(declare-fun bs!450735 () Bool)

(declare-fun d!659004 () Bool)

(assert (= bs!450735 (and d!659004 d!658938)))

(declare-fun lambda!83083 () Int)

(assert (=> bs!450735 (not (= lambda!83083 lambda!83055))))

(declare-fun bs!450736 () Bool)

(assert (= bs!450736 (and d!659004 b!2203928)))

(assert (=> bs!450736 (not (= lambda!83083 lambda!83056))))

(declare-fun bs!450737 () Bool)

(assert (= bs!450737 (and d!659004 b!2203929)))

(assert (=> bs!450737 (not (= lambda!83083 lambda!83057))))

(declare-fun bs!450738 () Bool)

(assert (= bs!450738 (and d!659004 d!658970)))

(assert (=> bs!450738 (= lambda!83083 lambda!83064)))

(assert (=> d!659004 (= (nullableZipper!537 lt!824043) (exists!847 lt!824043 lambda!83083))))

(declare-fun bs!450739 () Bool)

(assert (= bs!450739 d!659004))

(declare-fun m!2645907 () Bool)

(assert (=> bs!450739 m!2645907))

(assert (=> b!2203851 d!659004))

(declare-fun d!659006 () Bool)

(declare-fun lt!824137 () C!12660)

(assert (=> d!659006 (= lt!824137 (apply!6326 (list!9931 totalInput!891) from!1082))))

(declare-fun apply!6329 (Conc!8393 Int) C!12660)

(assert (=> d!659006 (= lt!824137 (apply!6329 (c!351669 totalInput!891) from!1082))))

(declare-fun e!1408180 () Bool)

(assert (=> d!659006 e!1408180))

(declare-fun res!947466 () Bool)

(assert (=> d!659006 (=> (not res!947466) (not e!1408180))))

(assert (=> d!659006 (= res!947466 (<= 0 from!1082))))

(assert (=> d!659006 (= (apply!6327 totalInput!891 from!1082) lt!824137)))

(declare-fun b!2204081 () Bool)

(assert (=> b!2204081 (= e!1408180 (< from!1082 (size!20048 totalInput!891)))))

(assert (= (and d!659006 res!947466) b!2204081))

(assert (=> d!659006 m!2645709))

(assert (=> d!659006 m!2645709))

(declare-fun m!2645909 () Bool)

(assert (=> d!659006 m!2645909))

(declare-fun m!2645911 () Bool)

(assert (=> d!659006 m!2645911))

(assert (=> b!2204081 m!2645701))

(assert (=> b!2203851 d!659006))

(declare-fun b!2204082 () Bool)

(declare-fun e!1408184 () Int)

(assert (=> b!2204082 (= e!1408184 (size!20050 (drop!1445 lt!824038 (+ 1 from!1082))))))

(declare-fun b!2204083 () Bool)

(assert (=> b!2204083 (= e!1408184 (- knownSize!10 1))))

(declare-fun b!2204084 () Bool)

(declare-fun e!1408183 () Int)

(assert (=> b!2204084 (= e!1408183 e!1408184)))

(declare-fun c!351776 () Bool)

(assert (=> b!2204084 (= c!351776 (>= (- knownSize!10 1) (size!20050 (drop!1445 lt!824038 (+ 1 from!1082)))))))

(declare-fun b!2204086 () Bool)

(assert (=> b!2204086 (= e!1408183 0)))

(declare-fun d!659008 () Bool)

(declare-fun e!1408182 () Bool)

(assert (=> d!659008 e!1408182))

(declare-fun res!947467 () Bool)

(assert (=> d!659008 (=> (not res!947467) (not e!1408182))))

(declare-fun lt!824138 () List!25813)

(assert (=> d!659008 (= res!947467 (= ((_ map implies) (content!3494 lt!824138) (content!3494 (drop!1445 lt!824038 (+ 1 from!1082)))) ((as const (InoxSet C!12660)) true)))))

(declare-fun e!1408181 () List!25813)

(assert (=> d!659008 (= lt!824138 e!1408181)))

(declare-fun c!351777 () Bool)

(assert (=> d!659008 (= c!351777 (or ((_ is Nil!25729) (drop!1445 lt!824038 (+ 1 from!1082))) (<= (- knownSize!10 1) 0)))))

(assert (=> d!659008 (= (take!435 (drop!1445 lt!824038 (+ 1 from!1082)) (- knownSize!10 1)) lt!824138)))

(declare-fun b!2204085 () Bool)

(assert (=> b!2204085 (= e!1408181 (Cons!25729 (h!31130 (drop!1445 lt!824038 (+ 1 from!1082))) (take!435 (t!198447 (drop!1445 lt!824038 (+ 1 from!1082))) (- (- knownSize!10 1) 1))))))

(declare-fun b!2204087 () Bool)

(assert (=> b!2204087 (= e!1408181 Nil!25729)))

(declare-fun b!2204088 () Bool)

(assert (=> b!2204088 (= e!1408182 (= (size!20050 lt!824138) e!1408183))))

(declare-fun c!351778 () Bool)

(assert (=> b!2204088 (= c!351778 (<= (- knownSize!10 1) 0))))

(assert (= (and d!659008 c!351777) b!2204087))

(assert (= (and d!659008 (not c!351777)) b!2204085))

(assert (= (and d!659008 res!947467) b!2204088))

(assert (= (and b!2204088 c!351778) b!2204086))

(assert (= (and b!2204088 (not c!351778)) b!2204084))

(assert (= (and b!2204084 c!351776) b!2204082))

(assert (= (and b!2204084 (not c!351776)) b!2204083))

(assert (=> b!2204082 m!2645679))

(declare-fun m!2645913 () Bool)

(assert (=> b!2204082 m!2645913))

(declare-fun m!2645915 () Bool)

(assert (=> b!2204088 m!2645915))

(declare-fun m!2645917 () Bool)

(assert (=> b!2204085 m!2645917))

(declare-fun m!2645919 () Bool)

(assert (=> d!659008 m!2645919))

(assert (=> d!659008 m!2645679))

(declare-fun m!2645921 () Bool)

(assert (=> d!659008 m!2645921))

(assert (=> b!2204084 m!2645679))

(assert (=> b!2204084 m!2645913))

(assert (=> b!2203851 d!659008))

(declare-fun b!2204089 () Bool)

(declare-fun e!1408185 () Int)

(declare-fun e!1408188 () Int)

(assert (=> b!2204089 (= e!1408185 e!1408188)))

(declare-fun c!351780 () Bool)

(declare-fun call!132188 () Int)

(assert (=> b!2204089 (= c!351780 (>= (+ 1 from!1082) call!132188))))

(declare-fun b!2204090 () Bool)

(assert (=> b!2204090 (= e!1408185 call!132188)))

(declare-fun b!2204091 () Bool)

(assert (=> b!2204091 (= e!1408188 (- call!132188 (+ 1 from!1082)))))

(declare-fun b!2204092 () Bool)

(declare-fun e!1408187 () List!25813)

(assert (=> b!2204092 (= e!1408187 lt!824038)))

(declare-fun b!2204093 () Bool)

(declare-fun e!1408189 () List!25813)

(assert (=> b!2204093 (= e!1408189 e!1408187)))

(declare-fun c!351779 () Bool)

(assert (=> b!2204093 (= c!351779 (<= (+ 1 from!1082) 0))))

(declare-fun d!659010 () Bool)

(declare-fun e!1408186 () Bool)

(assert (=> d!659010 e!1408186))

(declare-fun res!947468 () Bool)

(assert (=> d!659010 (=> (not res!947468) (not e!1408186))))

(declare-fun lt!824139 () List!25813)

(assert (=> d!659010 (= res!947468 (= ((_ map implies) (content!3494 lt!824139) (content!3494 lt!824038)) ((as const (InoxSet C!12660)) true)))))

(assert (=> d!659010 (= lt!824139 e!1408189)))

(declare-fun c!351781 () Bool)

(assert (=> d!659010 (= c!351781 ((_ is Nil!25729) lt!824038))))

(assert (=> d!659010 (= (drop!1445 lt!824038 (+ 1 from!1082)) lt!824139)))

(declare-fun b!2204094 () Bool)

(assert (=> b!2204094 (= e!1408188 0)))

(declare-fun b!2204095 () Bool)

(assert (=> b!2204095 (= e!1408187 (drop!1445 (t!198447 lt!824038) (- (+ 1 from!1082) 1)))))

(declare-fun bm!132183 () Bool)

(assert (=> bm!132183 (= call!132188 (size!20050 lt!824038))))

(declare-fun b!2204096 () Bool)

(assert (=> b!2204096 (= e!1408186 (= (size!20050 lt!824139) e!1408185))))

(declare-fun c!351782 () Bool)

(assert (=> b!2204096 (= c!351782 (<= (+ 1 from!1082) 0))))

(declare-fun b!2204097 () Bool)

(assert (=> b!2204097 (= e!1408189 Nil!25729)))

(assert (= (and d!659010 c!351781) b!2204097))

(assert (= (and d!659010 (not c!351781)) b!2204093))

(assert (= (and b!2204093 c!351779) b!2204092))

(assert (= (and b!2204093 (not c!351779)) b!2204095))

(assert (= (and d!659010 res!947468) b!2204096))

(assert (= (and b!2204096 c!351782) b!2204090))

(assert (= (and b!2204096 (not c!351782)) b!2204089))

(assert (= (and b!2204089 c!351780) b!2204094))

(assert (= (and b!2204089 (not c!351780)) b!2204091))

(assert (= (or b!2204090 b!2204089 b!2204091) bm!132183))

(declare-fun m!2645923 () Bool)

(assert (=> d!659010 m!2645923))

(assert (=> d!659010 m!2645881))

(declare-fun m!2645925 () Bool)

(assert (=> b!2204095 m!2645925))

(assert (=> bm!132183 m!2645885))

(declare-fun m!2645927 () Bool)

(assert (=> b!2204096 m!2645927))

(assert (=> b!2203851 d!659010))

(declare-fun d!659012 () Bool)

(assert (=> d!659012 (= (tail!3186 lt!824045) (t!198447 lt!824045))))

(assert (=> b!2203851 d!659012))

(declare-fun d!659014 () Bool)

(assert (=> d!659014 (= (Cons!25729 (apply!6326 lt!824038 from!1082) (take!435 (drop!1445 lt!824038 (+ from!1082 1)) (- knownSize!10 1))) (take!435 (drop!1445 lt!824038 from!1082) (+ (- knownSize!10 1) 1)))))

(declare-fun lt!824142 () Unit!38811)

(declare-fun choose!13027 (List!25813 Int Int) Unit!38811)

(assert (=> d!659014 (= lt!824142 (choose!13027 lt!824038 from!1082 (- knownSize!10 1)))))

(declare-fun e!1408192 () Bool)

(assert (=> d!659014 e!1408192))

(declare-fun res!947471 () Bool)

(assert (=> d!659014 (=> (not res!947471) (not e!1408192))))

(assert (=> d!659014 (= res!947471 (>= from!1082 0))))

(assert (=> d!659014 (= (lemmaDropTakeAddOneLeft!34 lt!824038 from!1082 (- knownSize!10 1)) lt!824142)))

(declare-fun b!2204100 () Bool)

(assert (=> b!2204100 (= e!1408192 (< from!1082 (size!20050 lt!824038)))))

(assert (= (and d!659014 res!947471) b!2204100))

(declare-fun m!2645929 () Bool)

(assert (=> d!659014 m!2645929))

(declare-fun m!2645931 () Bool)

(assert (=> d!659014 m!2645931))

(assert (=> d!659014 m!2645707))

(assert (=> d!659014 m!2645707))

(declare-fun m!2645933 () Bool)

(assert (=> d!659014 m!2645933))

(declare-fun m!2645935 () Bool)

(assert (=> d!659014 m!2645935))

(assert (=> d!659014 m!2645683))

(assert (=> d!659014 m!2645929))

(assert (=> b!2204100 m!2645885))

(assert (=> b!2203851 d!659014))

(declare-fun b!2204111 () Bool)

(declare-fun e!1408199 () Int)

(declare-fun lt!824147 () (InoxSet Context!3654))

(declare-fun e!1408201 () Int)

(assert (=> b!2204111 (= e!1408201 (furthestNullablePosition!395 lt!824147 (+ 1 from!1082 1) totalInput!891 lt!824044 e!1408199))))

(assert (=> b!2204111 (= lt!824147 (derivationStepZipper!299 lt!824043 (apply!6327 totalInput!891 (+ 1 from!1082))))))

(declare-fun c!351787 () Bool)

(assert (=> b!2204111 (= c!351787 (nullableZipper!537 lt!824147))))

(declare-fun b!2204112 () Bool)

(assert (=> b!2204112 (= e!1408201 e!1408041)))

(declare-fun d!659016 () Bool)

(declare-fun lt!824148 () Int)

(assert (=> d!659016 (and (>= lt!824148 (- 1)) (< lt!824148 lt!824044) (>= lt!824148 e!1408041) (or (= lt!824148 e!1408041) (>= lt!824148 (+ 1 from!1082))))))

(assert (=> d!659016 (= lt!824148 e!1408201)))

(declare-fun c!351788 () Bool)

(declare-fun e!1408200 () Bool)

(assert (=> d!659016 (= c!351788 e!1408200)))

(declare-fun res!947474 () Bool)

(assert (=> d!659016 (=> res!947474 e!1408200)))

(assert (=> d!659016 (= res!947474 (= (+ 1 from!1082) lt!824044))))

(assert (=> d!659016 (and (>= (+ 1 from!1082) 0) (<= (+ 1 from!1082) lt!824044))))

(assert (=> d!659016 (= (furthestNullablePosition!395 lt!824043 (+ 1 from!1082) totalInput!891 lt!824044 e!1408041) lt!824148)))

(declare-fun b!2204113 () Bool)

(assert (=> b!2204113 (= e!1408200 (lostCauseZipper!357 lt!824043))))

(declare-fun b!2204114 () Bool)

(assert (=> b!2204114 (= e!1408199 (+ 1 from!1082))))

(declare-fun b!2204115 () Bool)

(assert (=> b!2204115 (= e!1408199 e!1408041)))

(assert (= (and d!659016 (not res!947474)) b!2204113))

(assert (= (and d!659016 c!351788) b!2204112))

(assert (= (and d!659016 (not c!351788)) b!2204111))

(assert (= (and b!2204111 c!351787) b!2204114))

(assert (= (and b!2204111 (not c!351787)) b!2204115))

(declare-fun m!2645937 () Bool)

(assert (=> b!2204111 m!2645937))

(declare-fun m!2645939 () Bool)

(assert (=> b!2204111 m!2645939))

(assert (=> b!2204111 m!2645939))

(declare-fun m!2645941 () Bool)

(assert (=> b!2204111 m!2645941))

(declare-fun m!2645943 () Bool)

(assert (=> b!2204111 m!2645943))

(declare-fun m!2645945 () Bool)

(assert (=> b!2204113 m!2645945))

(assert (=> b!2203851 d!659016))

(declare-fun d!659018 () Bool)

(declare-fun lt!824151 () C!12660)

(declare-fun contains!4286 (List!25813 C!12660) Bool)

(assert (=> d!659018 (contains!4286 lt!824038 lt!824151)))

(declare-fun e!1408206 () C!12660)

(assert (=> d!659018 (= lt!824151 e!1408206)))

(declare-fun c!351791 () Bool)

(assert (=> d!659018 (= c!351791 (= from!1082 0))))

(declare-fun e!1408207 () Bool)

(assert (=> d!659018 e!1408207))

(declare-fun res!947477 () Bool)

(assert (=> d!659018 (=> (not res!947477) (not e!1408207))))

(assert (=> d!659018 (= res!947477 (<= 0 from!1082))))

(assert (=> d!659018 (= (apply!6326 lt!824038 from!1082) lt!824151)))

(declare-fun b!2204122 () Bool)

(assert (=> b!2204122 (= e!1408207 (< from!1082 (size!20050 lt!824038)))))

(declare-fun b!2204123 () Bool)

(assert (=> b!2204123 (= e!1408206 (head!4708 lt!824038))))

(declare-fun b!2204124 () Bool)

(assert (=> b!2204124 (= e!1408206 (apply!6326 (tail!3186 lt!824038) (- from!1082 1)))))

(assert (= (and d!659018 res!947477) b!2204122))

(assert (= (and d!659018 c!351791) b!2204123))

(assert (= (and d!659018 (not c!351791)) b!2204124))

(declare-fun m!2645947 () Bool)

(assert (=> d!659018 m!2645947))

(assert (=> b!2204122 m!2645885))

(declare-fun m!2645949 () Bool)

(assert (=> b!2204123 m!2645949))

(declare-fun m!2645951 () Bool)

(assert (=> b!2204124 m!2645951))

(assert (=> b!2204124 m!2645951))

(declare-fun m!2645953 () Bool)

(assert (=> b!2204124 m!2645953))

(assert (=> b!2203851 d!659018))

(declare-fun d!659020 () Bool)

(declare-fun lt!824154 () Bool)

(assert (=> d!659020 (= lt!824154 (isEmpty!14708 (list!9931 totalInput!891)))))

(declare-fun isEmpty!14710 (Conc!8393) Bool)

(assert (=> d!659020 (= lt!824154 (isEmpty!14710 (c!351669 totalInput!891)))))

(assert (=> d!659020 (= (isEmpty!14704 totalInput!891) lt!824154)))

(declare-fun bs!450740 () Bool)

(assert (= bs!450740 d!659020))

(assert (=> bs!450740 m!2645709))

(assert (=> bs!450740 m!2645709))

(declare-fun m!2645955 () Bool)

(assert (=> bs!450740 m!2645955))

(declare-fun m!2645957 () Bool)

(assert (=> bs!450740 m!2645957))

(assert (=> b!2203853 d!659020))

(declare-fun condSetEmpty!19126 () Bool)

(assert (=> setNonEmpty!19120 (= condSetEmpty!19126 (= setRest!19120 ((as const (Array Context!3654 Bool)) false)))))

(declare-fun setRes!19126 () Bool)

(assert (=> setNonEmpty!19120 (= tp!685541 setRes!19126)))

(declare-fun setIsEmpty!19126 () Bool)

(assert (=> setIsEmpty!19126 setRes!19126))

(declare-fun e!1408210 () Bool)

(declare-fun setElem!19126 () Context!3654)

(declare-fun setNonEmpty!19126 () Bool)

(declare-fun tp!685568 () Bool)

(assert (=> setNonEmpty!19126 (= setRes!19126 (and tp!685568 (inv!34655 setElem!19126) e!1408210))))

(declare-fun setRest!19126 () (InoxSet Context!3654))

(assert (=> setNonEmpty!19126 (= setRest!19120 ((_ map or) (store ((as const (Array Context!3654 Bool)) false) setElem!19126 true) setRest!19126))))

(declare-fun b!2204129 () Bool)

(declare-fun tp!685569 () Bool)

(assert (=> b!2204129 (= e!1408210 tp!685569)))

(assert (= (and setNonEmpty!19120 condSetEmpty!19126) setIsEmpty!19126))

(assert (= (and setNonEmpty!19120 (not condSetEmpty!19126)) setNonEmpty!19126))

(assert (= setNonEmpty!19126 b!2204129))

(declare-fun m!2645959 () Bool)

(assert (=> setNonEmpty!19126 m!2645959))

(declare-fun b!2204138 () Bool)

(declare-fun tp!685578 () Bool)

(declare-fun tp!685576 () Bool)

(declare-fun e!1408216 () Bool)

(assert (=> b!2204138 (= e!1408216 (and (inv!34657 (left!19764 (c!351669 totalInput!891))) tp!685576 (inv!34657 (right!20094 (c!351669 totalInput!891))) tp!685578))))

(declare-fun b!2204140 () Bool)

(declare-fun e!1408215 () Bool)

(declare-fun tp!685577 () Bool)

(assert (=> b!2204140 (= e!1408215 tp!685577)))

(declare-fun b!2204139 () Bool)

(declare-fun inv!34663 (IArray!16791) Bool)

(assert (=> b!2204139 (= e!1408216 (and (inv!34663 (xs!11335 (c!351669 totalInput!891))) e!1408215))))

(assert (=> b!2203855 (= tp!685542 (and (inv!34657 (c!351669 totalInput!891)) e!1408216))))

(assert (= (and b!2203855 ((_ is Node!8393) (c!351669 totalInput!891))) b!2204138))

(assert (= b!2204139 b!2204140))

(assert (= (and b!2203855 ((_ is Leaf!12289) (c!351669 totalInput!891))) b!2204139))

(declare-fun m!2645961 () Bool)

(assert (=> b!2204138 m!2645961))

(declare-fun m!2645963 () Bool)

(assert (=> b!2204138 m!2645963))

(declare-fun m!2645965 () Bool)

(assert (=> b!2204139 m!2645965))

(assert (=> b!2203855 m!2645675))

(declare-fun b!2204145 () Bool)

(declare-fun e!1408219 () Bool)

(declare-fun tp!685583 () Bool)

(declare-fun tp!685584 () Bool)

(assert (=> b!2204145 (= e!1408219 (and tp!685583 tp!685584))))

(assert (=> b!2203852 (= tp!685540 e!1408219)))

(assert (= (and b!2203852 ((_ is Cons!25728) (exprs!2327 setElem!19120))) b!2204145))

(check-sat (not b!2204095) (not b!2204124) (not bm!132182) (not b!2204048) (not d!659000) (not b!2203995) (not b!2204082) (not d!658984) (not b!2204078) (not d!658974) (not b!2204129) (not b!2203996) (not b!2203976) (not b!2204075) (not b!2204084) (not b!2204111) (not d!658978) (not b!2204138) (not d!658988) (not d!659014) (not b!2204072) (not d!659006) (not bm!132169) (not b!2204096) (not d!659020) (not d!658982) (not b!2203993) (not b!2204140) (not b!2203929) (not d!659004) (not b!2203975) (not d!658938) (not b!2204074) (not b!2203999) (not b!2204113) (not b!2203855) (not b!2204139) (not b!2204049) (not d!659018) (not b!2204088) (not bm!132168) (not b!2204081) (not b!2204123) (not b!2204100) (not d!659008) (not bm!132183) (not b!2203928) (not b!2204085) (not b!2204122) (not d!658998) (not d!658964) (not b!2203966) (not b!2204145) (not d!658970) (not d!659002) (not b!2203964) (not d!659010) (not setNonEmpty!19126))
(check-sat)
