; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!214894 () Bool)

(assert start!214894)

(declare-fun b!2208303 () Bool)

(declare-fun e!1410693 () Bool)

(declare-datatypes ((C!12760 0))(
  ( (C!12761 (val!7366 Int)) )
))
(declare-datatypes ((List!25923 0))(
  ( (Nil!25839) (Cons!25839 (h!31240 C!12760) (t!198581 List!25923)) )
))
(declare-datatypes ((IArray!16891 0))(
  ( (IArray!16892 (innerList!8503 List!25923)) )
))
(declare-datatypes ((Conc!8443 0))(
  ( (Node!8443 (left!19859 Conc!8443) (right!20189 Conc!8443) (csize!17116 Int) (cheight!8654 Int)) (Leaf!12364 (xs!11385 IArray!16891) (csize!17117 Int)) (Empty!8443) )
))
(declare-datatypes ((BalanceConc!16648 0))(
  ( (BalanceConc!16649 (c!352774 Conc!8443)) )
))
(declare-fun totalInput!846 () BalanceConc!16648)

(declare-fun tp!686627 () Bool)

(declare-fun inv!34926 (Conc!8443) Bool)

(assert (=> b!2208303 (= e!1410693 (and (inv!34926 (c!352774 totalInput!846)) tp!686627))))

(declare-fun b!2208304 () Bool)

(declare-fun e!1410691 () Int)

(assert (=> b!2208304 (= e!1410691 (- 1))))

(declare-fun b!2208305 () Bool)

(declare-fun e!1410692 () Bool)

(declare-fun e!1410695 () Bool)

(assert (=> b!2208305 (= e!1410692 e!1410695)))

(declare-fun res!949220 () Bool)

(assert (=> b!2208305 (=> (not res!949220) (not e!1410695))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6307 0))(
  ( (ElementMatch!6307 (c!352775 C!12760)) (Concat!10609 (regOne!13126 Regex!6307) (regTwo!13126 Regex!6307)) (EmptyExpr!6307) (Star!6307 (reg!6636 Regex!6307)) (EmptyLang!6307) (Union!6307 (regOne!13127 Regex!6307) (regTwo!13127 Regex!6307)) )
))
(declare-datatypes ((List!25924 0))(
  ( (Nil!25840) (Cons!25840 (h!31241 Regex!6307) (t!198582 List!25924)) )
))
(declare-datatypes ((Context!3754 0))(
  ( (Context!3755 (exprs!2377 List!25924)) )
))
(declare-fun z!3830 () (InoxSet Context!3754))

(declare-fun lt!825791 () Int)

(declare-fun lt!825790 () Int)

(declare-fun furthestNullablePosition!433 ((InoxSet Context!3754) Int BalanceConc!16648 Int Int) Int)

(assert (=> b!2208305 (= res!949220 (< (+ 1 (- (furthestNullablePosition!433 z!3830 lt!825791 totalInput!846 lt!825790 e!1410691) lt!825791)) 0))))

(declare-fun c!352773 () Bool)

(declare-fun nullableZipper!587 ((InoxSet Context!3754)) Bool)

(assert (=> b!2208305 (= c!352773 (nullableZipper!587 z!3830))))

(declare-fun input!5506 () BalanceConc!16648)

(declare-fun size!20133 (BalanceConc!16648) Int)

(assert (=> b!2208305 (= lt!825791 (- lt!825790 (size!20133 input!5506)))))

(assert (=> b!2208305 (= lt!825790 (size!20133 totalInput!846))))

(declare-fun setRes!19334 () Bool)

(declare-fun setNonEmpty!19334 () Bool)

(declare-fun tp!686628 () Bool)

(declare-fun e!1410690 () Bool)

(declare-fun setElem!19334 () Context!3754)

(declare-fun inv!34927 (Context!3754) Bool)

(assert (=> setNonEmpty!19334 (= setRes!19334 (and tp!686628 (inv!34927 setElem!19334) e!1410690))))

(declare-fun setRest!19334 () (InoxSet Context!3754))

(assert (=> setNonEmpty!19334 (= z!3830 ((_ map or) (store ((as const (Array Context!3754 Bool)) false) setElem!19334 true) setRest!19334))))

(declare-fun b!2208306 () Bool)

(declare-fun tp!686630 () Bool)

(assert (=> b!2208306 (= e!1410690 tp!686630)))

(declare-fun b!2208307 () Bool)

(declare-fun e!1410694 () Bool)

(declare-fun tp!686629 () Bool)

(assert (=> b!2208307 (= e!1410694 (and (inv!34926 (c!352774 input!5506)) tp!686629))))

(declare-fun setIsEmpty!19334 () Bool)

(assert (=> setIsEmpty!19334 setRes!19334))

(declare-fun res!949221 () Bool)

(assert (=> start!214894 (=> (not res!949221) (not e!1410692))))

(declare-fun lt!825789 () List!25923)

(declare-fun isSuffix!744 (List!25923 List!25923) Bool)

(declare-fun list!10000 (BalanceConc!16648) List!25923)

(assert (=> start!214894 (= res!949221 (isSuffix!744 lt!825789 (list!10000 totalInput!846)))))

(assert (=> start!214894 (= lt!825789 (list!10000 input!5506))))

(assert (=> start!214894 e!1410692))

(declare-fun inv!34928 (BalanceConc!16648) Bool)

(assert (=> start!214894 (and (inv!34928 input!5506) e!1410694)))

(assert (=> start!214894 (and (inv!34928 totalInput!846) e!1410693)))

(declare-fun condSetEmpty!19334 () Bool)

(assert (=> start!214894 (= condSetEmpty!19334 (= z!3830 ((as const (Array Context!3754 Bool)) false)))))

(assert (=> start!214894 setRes!19334))

(declare-fun b!2208308 () Bool)

(assert (=> b!2208308 (= e!1410691 (- lt!825791 1))))

(declare-fun b!2208309 () Bool)

(declare-datatypes ((tuple2!25128 0))(
  ( (tuple2!25129 (_1!14934 BalanceConc!16648) (_2!14934 BalanceConc!16648)) )
))
(declare-fun lt!825792 () tuple2!25128)

(declare-fun ++!6433 (List!25923 List!25923) List!25923)

(assert (=> b!2208309 (= e!1410695 (not (= (++!6433 (list!10000 (_1!14934 lt!825792)) (list!10000 (_2!14934 lt!825792))) lt!825789)))))

(declare-fun splitAt!63 (BalanceConc!16648 Int) tuple2!25128)

(assert (=> b!2208309 (= lt!825792 (splitAt!63 input!5506 0))))

(assert (= (and start!214894 res!949221) b!2208305))

(assert (= (and b!2208305 c!352773) b!2208308))

(assert (= (and b!2208305 (not c!352773)) b!2208304))

(assert (= (and b!2208305 res!949220) b!2208309))

(assert (= start!214894 b!2208307))

(assert (= start!214894 b!2208303))

(assert (= (and start!214894 condSetEmpty!19334) setIsEmpty!19334))

(assert (= (and start!214894 (not condSetEmpty!19334)) setNonEmpty!19334))

(assert (= setNonEmpty!19334 b!2208306))

(declare-fun m!2649955 () Bool)

(assert (=> b!2208305 m!2649955))

(declare-fun m!2649957 () Bool)

(assert (=> b!2208305 m!2649957))

(declare-fun m!2649959 () Bool)

(assert (=> b!2208305 m!2649959))

(declare-fun m!2649961 () Bool)

(assert (=> b!2208305 m!2649961))

(declare-fun m!2649963 () Bool)

(assert (=> b!2208309 m!2649963))

(declare-fun m!2649965 () Bool)

(assert (=> b!2208309 m!2649965))

(assert (=> b!2208309 m!2649963))

(assert (=> b!2208309 m!2649965))

(declare-fun m!2649967 () Bool)

(assert (=> b!2208309 m!2649967))

(declare-fun m!2649969 () Bool)

(assert (=> b!2208309 m!2649969))

(declare-fun m!2649971 () Bool)

(assert (=> b!2208303 m!2649971))

(declare-fun m!2649973 () Bool)

(assert (=> setNonEmpty!19334 m!2649973))

(declare-fun m!2649975 () Bool)

(assert (=> start!214894 m!2649975))

(declare-fun m!2649977 () Bool)

(assert (=> start!214894 m!2649977))

(declare-fun m!2649979 () Bool)

(assert (=> start!214894 m!2649979))

(declare-fun m!2649981 () Bool)

(assert (=> start!214894 m!2649981))

(assert (=> start!214894 m!2649975))

(declare-fun m!2649983 () Bool)

(assert (=> start!214894 m!2649983))

(declare-fun m!2649985 () Bool)

(assert (=> b!2208307 m!2649985))

(check-sat (not b!2208305) (not b!2208303) (not b!2208306) (not start!214894) (not setNonEmpty!19334) (not b!2208309) (not b!2208307))
(check-sat)
(get-model)

(declare-fun d!659979 () Bool)

(declare-fun lambda!83399 () Int)

(declare-fun forall!5285 (List!25924 Int) Bool)

(assert (=> d!659979 (= (inv!34927 setElem!19334) (forall!5285 (exprs!2377 setElem!19334) lambda!83399))))

(declare-fun bs!451220 () Bool)

(assert (= bs!451220 d!659979))

(declare-fun m!2650029 () Bool)

(assert (=> bs!451220 m!2650029))

(assert (=> setNonEmpty!19334 d!659979))

(declare-fun d!659999 () Bool)

(declare-fun list!10002 (Conc!8443) List!25923)

(assert (=> d!659999 (= (list!10000 totalInput!846) (list!10002 (c!352774 totalInput!846)))))

(declare-fun bs!451221 () Bool)

(assert (= bs!451221 d!659999))

(declare-fun m!2650031 () Bool)

(assert (=> bs!451221 m!2650031))

(assert (=> start!214894 d!659999))

(declare-fun d!660001 () Bool)

(declare-fun isBalanced!2601 (Conc!8443) Bool)

(assert (=> d!660001 (= (inv!34928 totalInput!846) (isBalanced!2601 (c!352774 totalInput!846)))))

(declare-fun bs!451222 () Bool)

(assert (= bs!451222 d!660001))

(declare-fun m!2650033 () Bool)

(assert (=> bs!451222 m!2650033))

(assert (=> start!214894 d!660001))

(declare-fun d!660003 () Bool)

(assert (=> d!660003 (= (list!10000 input!5506) (list!10002 (c!352774 input!5506)))))

(declare-fun bs!451223 () Bool)

(assert (= bs!451223 d!660003))

(declare-fun m!2650035 () Bool)

(assert (=> bs!451223 m!2650035))

(assert (=> start!214894 d!660003))

(declare-fun d!660005 () Bool)

(assert (=> d!660005 (= (inv!34928 input!5506) (isBalanced!2601 (c!352774 input!5506)))))

(declare-fun bs!451224 () Bool)

(assert (= bs!451224 d!660005))

(declare-fun m!2650037 () Bool)

(assert (=> bs!451224 m!2650037))

(assert (=> start!214894 d!660005))

(declare-fun d!660007 () Bool)

(declare-fun e!1410719 () Bool)

(assert (=> d!660007 e!1410719))

(declare-fun res!949236 () Bool)

(assert (=> d!660007 (=> res!949236 e!1410719)))

(declare-fun lt!825808 () Bool)

(assert (=> d!660007 (= res!949236 (not lt!825808))))

(declare-fun drop!1486 (List!25923 Int) List!25923)

(declare-fun size!20136 (List!25923) Int)

(assert (=> d!660007 (= lt!825808 (= lt!825789 (drop!1486 (list!10000 totalInput!846) (- (size!20136 (list!10000 totalInput!846)) (size!20136 lt!825789)))))))

(assert (=> d!660007 (= (isSuffix!744 lt!825789 (list!10000 totalInput!846)) lt!825808)))

(declare-fun b!2208348 () Bool)

(assert (=> b!2208348 (= e!1410719 (>= (size!20136 (list!10000 totalInput!846)) (size!20136 lt!825789)))))

(assert (= (and d!660007 (not res!949236)) b!2208348))

(assert (=> d!660007 m!2649975))

(declare-fun m!2650039 () Bool)

(assert (=> d!660007 m!2650039))

(declare-fun m!2650041 () Bool)

(assert (=> d!660007 m!2650041))

(assert (=> d!660007 m!2649975))

(declare-fun m!2650043 () Bool)

(assert (=> d!660007 m!2650043))

(assert (=> b!2208348 m!2649975))

(assert (=> b!2208348 m!2650039))

(assert (=> b!2208348 m!2650041))

(assert (=> start!214894 d!660007))

(declare-fun b!2208395 () Bool)

(declare-fun e!1410749 () Int)

(assert (=> b!2208395 (= e!1410749 e!1410691)))

(declare-fun b!2208396 () Bool)

(assert (=> b!2208396 (= e!1410749 lt!825791)))

(declare-fun b!2208397 () Bool)

(declare-fun e!1410748 () Int)

(assert (=> b!2208397 (= e!1410748 e!1410691)))

(declare-fun b!2208398 () Bool)

(declare-fun e!1410750 () Bool)

(declare-fun lostCauseZipper!393 ((InoxSet Context!3754)) Bool)

(assert (=> b!2208398 (= e!1410750 (lostCauseZipper!393 z!3830))))

(declare-fun lt!825823 () Int)

(declare-fun d!660009 () Bool)

(assert (=> d!660009 (and (>= lt!825823 (- 1)) (< lt!825823 lt!825790) (>= lt!825823 e!1410691) (or (= lt!825823 e!1410691) (>= lt!825823 lt!825791)))))

(assert (=> d!660009 (= lt!825823 e!1410748)))

(declare-fun c!352795 () Bool)

(assert (=> d!660009 (= c!352795 e!1410750)))

(declare-fun res!949249 () Bool)

(assert (=> d!660009 (=> res!949249 e!1410750)))

(assert (=> d!660009 (= res!949249 (= lt!825791 lt!825790))))

(assert (=> d!660009 (and (>= lt!825791 0) (<= lt!825791 lt!825790))))

(assert (=> d!660009 (= (furthestNullablePosition!433 z!3830 lt!825791 totalInput!846 lt!825790 e!1410691) lt!825823)))

(declare-fun lt!825822 () (InoxSet Context!3754))

(declare-fun b!2208399 () Bool)

(assert (=> b!2208399 (= e!1410748 (furthestNullablePosition!433 lt!825822 (+ lt!825791 1) totalInput!846 lt!825790 e!1410749))))

(declare-fun derivationStepZipper!329 ((InoxSet Context!3754) C!12760) (InoxSet Context!3754))

(declare-fun apply!6387 (BalanceConc!16648 Int) C!12760)

(assert (=> b!2208399 (= lt!825822 (derivationStepZipper!329 z!3830 (apply!6387 totalInput!846 lt!825791)))))

(declare-fun c!352796 () Bool)

(assert (=> b!2208399 (= c!352796 (nullableZipper!587 lt!825822))))

(assert (= (and d!660009 (not res!949249)) b!2208398))

(assert (= (and d!660009 c!352795) b!2208397))

(assert (= (and d!660009 (not c!352795)) b!2208399))

(assert (= (and b!2208399 c!352796) b!2208396))

(assert (= (and b!2208399 (not c!352796)) b!2208395))

(declare-fun m!2650089 () Bool)

(assert (=> b!2208398 m!2650089))

(declare-fun m!2650091 () Bool)

(assert (=> b!2208399 m!2650091))

(declare-fun m!2650093 () Bool)

(assert (=> b!2208399 m!2650093))

(assert (=> b!2208399 m!2650093))

(declare-fun m!2650095 () Bool)

(assert (=> b!2208399 m!2650095))

(declare-fun m!2650097 () Bool)

(assert (=> b!2208399 m!2650097))

(assert (=> b!2208305 d!660009))

(declare-fun d!660025 () Bool)

(declare-fun lambda!83405 () Int)

(declare-fun exists!874 ((InoxSet Context!3754) Int) Bool)

(assert (=> d!660025 (= (nullableZipper!587 z!3830) (exists!874 z!3830 lambda!83405))))

(declare-fun bs!451230 () Bool)

(assert (= bs!451230 d!660025))

(declare-fun m!2650099 () Bool)

(assert (=> bs!451230 m!2650099))

(assert (=> b!2208305 d!660025))

(declare-fun d!660027 () Bool)

(declare-fun lt!825826 () Int)

(assert (=> d!660027 (= lt!825826 (size!20136 (list!10000 input!5506)))))

(declare-fun size!20137 (Conc!8443) Int)

(assert (=> d!660027 (= lt!825826 (size!20137 (c!352774 input!5506)))))

(assert (=> d!660027 (= (size!20133 input!5506) lt!825826)))

(declare-fun bs!451231 () Bool)

(assert (= bs!451231 d!660027))

(assert (=> bs!451231 m!2649981))

(assert (=> bs!451231 m!2649981))

(declare-fun m!2650101 () Bool)

(assert (=> bs!451231 m!2650101))

(declare-fun m!2650103 () Bool)

(assert (=> bs!451231 m!2650103))

(assert (=> b!2208305 d!660027))

(declare-fun d!660029 () Bool)

(declare-fun lt!825827 () Int)

(assert (=> d!660029 (= lt!825827 (size!20136 (list!10000 totalInput!846)))))

(assert (=> d!660029 (= lt!825827 (size!20137 (c!352774 totalInput!846)))))

(assert (=> d!660029 (= (size!20133 totalInput!846) lt!825827)))

(declare-fun bs!451232 () Bool)

(assert (= bs!451232 d!660029))

(assert (=> bs!451232 m!2649975))

(assert (=> bs!451232 m!2649975))

(assert (=> bs!451232 m!2650039))

(declare-fun m!2650105 () Bool)

(assert (=> bs!451232 m!2650105))

(assert (=> b!2208305 d!660029))

(declare-fun b!2208408 () Bool)

(declare-fun e!1410756 () List!25923)

(assert (=> b!2208408 (= e!1410756 (list!10000 (_2!14934 lt!825792)))))

(declare-fun d!660031 () Bool)

(declare-fun e!1410755 () Bool)

(assert (=> d!660031 e!1410755))

(declare-fun res!949254 () Bool)

(assert (=> d!660031 (=> (not res!949254) (not e!1410755))))

(declare-fun lt!825830 () List!25923)

(declare-fun content!3506 (List!25923) (InoxSet C!12760))

(assert (=> d!660031 (= res!949254 (= (content!3506 lt!825830) ((_ map or) (content!3506 (list!10000 (_1!14934 lt!825792))) (content!3506 (list!10000 (_2!14934 lt!825792))))))))

(assert (=> d!660031 (= lt!825830 e!1410756)))

(declare-fun c!352801 () Bool)

(get-info :version)

(assert (=> d!660031 (= c!352801 ((_ is Nil!25839) (list!10000 (_1!14934 lt!825792))))))

(assert (=> d!660031 (= (++!6433 (list!10000 (_1!14934 lt!825792)) (list!10000 (_2!14934 lt!825792))) lt!825830)))

(declare-fun b!2208411 () Bool)

(assert (=> b!2208411 (= e!1410755 (or (not (= (list!10000 (_2!14934 lt!825792)) Nil!25839)) (= lt!825830 (list!10000 (_1!14934 lt!825792)))))))

(declare-fun b!2208409 () Bool)

(assert (=> b!2208409 (= e!1410756 (Cons!25839 (h!31240 (list!10000 (_1!14934 lt!825792))) (++!6433 (t!198581 (list!10000 (_1!14934 lt!825792))) (list!10000 (_2!14934 lt!825792)))))))

(declare-fun b!2208410 () Bool)

(declare-fun res!949255 () Bool)

(assert (=> b!2208410 (=> (not res!949255) (not e!1410755))))

(assert (=> b!2208410 (= res!949255 (= (size!20136 lt!825830) (+ (size!20136 (list!10000 (_1!14934 lt!825792))) (size!20136 (list!10000 (_2!14934 lt!825792))))))))

(assert (= (and d!660031 c!352801) b!2208408))

(assert (= (and d!660031 (not c!352801)) b!2208409))

(assert (= (and d!660031 res!949254) b!2208410))

(assert (= (and b!2208410 res!949255) b!2208411))

(declare-fun m!2650107 () Bool)

(assert (=> d!660031 m!2650107))

(assert (=> d!660031 m!2649963))

(declare-fun m!2650109 () Bool)

(assert (=> d!660031 m!2650109))

(assert (=> d!660031 m!2649965))

(declare-fun m!2650111 () Bool)

(assert (=> d!660031 m!2650111))

(assert (=> b!2208409 m!2649965))

(declare-fun m!2650113 () Bool)

(assert (=> b!2208409 m!2650113))

(declare-fun m!2650115 () Bool)

(assert (=> b!2208410 m!2650115))

(assert (=> b!2208410 m!2649963))

(declare-fun m!2650117 () Bool)

(assert (=> b!2208410 m!2650117))

(assert (=> b!2208410 m!2649965))

(declare-fun m!2650119 () Bool)

(assert (=> b!2208410 m!2650119))

(assert (=> b!2208309 d!660031))

(declare-fun d!660033 () Bool)

(assert (=> d!660033 (= (list!10000 (_1!14934 lt!825792)) (list!10002 (c!352774 (_1!14934 lt!825792))))))

(declare-fun bs!451233 () Bool)

(assert (= bs!451233 d!660033))

(declare-fun m!2650121 () Bool)

(assert (=> bs!451233 m!2650121))

(assert (=> b!2208309 d!660033))

(declare-fun d!660035 () Bool)

(assert (=> d!660035 (= (list!10000 (_2!14934 lt!825792)) (list!10002 (c!352774 (_2!14934 lt!825792))))))

(declare-fun bs!451234 () Bool)

(assert (= bs!451234 d!660035))

(declare-fun m!2650123 () Bool)

(assert (=> bs!451234 m!2650123))

(assert (=> b!2208309 d!660035))

(declare-fun d!660037 () Bool)

(declare-fun e!1410759 () Bool)

(assert (=> d!660037 e!1410759))

(declare-fun res!949261 () Bool)

(assert (=> d!660037 (=> (not res!949261) (not e!1410759))))

(declare-fun lt!825835 () tuple2!25128)

(assert (=> d!660037 (= res!949261 (isBalanced!2601 (c!352774 (_1!14934 lt!825835))))))

(declare-datatypes ((tuple2!25134 0))(
  ( (tuple2!25135 (_1!14937 Conc!8443) (_2!14937 Conc!8443)) )
))
(declare-fun lt!825836 () tuple2!25134)

(assert (=> d!660037 (= lt!825835 (tuple2!25129 (BalanceConc!16649 (_1!14937 lt!825836)) (BalanceConc!16649 (_2!14937 lt!825836))))))

(declare-fun splitAt!65 (Conc!8443 Int) tuple2!25134)

(assert (=> d!660037 (= lt!825836 (splitAt!65 (c!352774 input!5506) 0))))

(assert (=> d!660037 (isBalanced!2601 (c!352774 input!5506))))

(assert (=> d!660037 (= (splitAt!63 input!5506 0) lt!825835)))

(declare-fun b!2208416 () Bool)

(declare-fun res!949260 () Bool)

(assert (=> b!2208416 (=> (not res!949260) (not e!1410759))))

(assert (=> b!2208416 (= res!949260 (isBalanced!2601 (c!352774 (_2!14934 lt!825835))))))

(declare-fun b!2208417 () Bool)

(declare-datatypes ((tuple2!25136 0))(
  ( (tuple2!25137 (_1!14938 List!25923) (_2!14938 List!25923)) )
))
(declare-fun splitAtIndex!34 (List!25923 Int) tuple2!25136)

(assert (=> b!2208417 (= e!1410759 (= (tuple2!25137 (list!10000 (_1!14934 lt!825835)) (list!10000 (_2!14934 lt!825835))) (splitAtIndex!34 (list!10000 input!5506) 0)))))

(assert (= (and d!660037 res!949261) b!2208416))

(assert (= (and b!2208416 res!949260) b!2208417))

(declare-fun m!2650125 () Bool)

(assert (=> d!660037 m!2650125))

(declare-fun m!2650127 () Bool)

(assert (=> d!660037 m!2650127))

(assert (=> d!660037 m!2650037))

(declare-fun m!2650129 () Bool)

(assert (=> b!2208416 m!2650129))

(declare-fun m!2650131 () Bool)

(assert (=> b!2208417 m!2650131))

(declare-fun m!2650133 () Bool)

(assert (=> b!2208417 m!2650133))

(assert (=> b!2208417 m!2649981))

(assert (=> b!2208417 m!2649981))

(declare-fun m!2650135 () Bool)

(assert (=> b!2208417 m!2650135))

(assert (=> b!2208309 d!660037))

(declare-fun d!660039 () Bool)

(declare-fun c!352804 () Bool)

(assert (=> d!660039 (= c!352804 ((_ is Node!8443) (c!352774 totalInput!846)))))

(declare-fun e!1410764 () Bool)

(assert (=> d!660039 (= (inv!34926 (c!352774 totalInput!846)) e!1410764)))

(declare-fun b!2208424 () Bool)

(declare-fun inv!34932 (Conc!8443) Bool)

(assert (=> b!2208424 (= e!1410764 (inv!34932 (c!352774 totalInput!846)))))

(declare-fun b!2208425 () Bool)

(declare-fun e!1410765 () Bool)

(assert (=> b!2208425 (= e!1410764 e!1410765)))

(declare-fun res!949264 () Bool)

(assert (=> b!2208425 (= res!949264 (not ((_ is Leaf!12364) (c!352774 totalInput!846))))))

(assert (=> b!2208425 (=> res!949264 e!1410765)))

(declare-fun b!2208426 () Bool)

(declare-fun inv!34933 (Conc!8443) Bool)

(assert (=> b!2208426 (= e!1410765 (inv!34933 (c!352774 totalInput!846)))))

(assert (= (and d!660039 c!352804) b!2208424))

(assert (= (and d!660039 (not c!352804)) b!2208425))

(assert (= (and b!2208425 (not res!949264)) b!2208426))

(declare-fun m!2650137 () Bool)

(assert (=> b!2208424 m!2650137))

(declare-fun m!2650139 () Bool)

(assert (=> b!2208426 m!2650139))

(assert (=> b!2208303 d!660039))

(declare-fun d!660041 () Bool)

(declare-fun c!352805 () Bool)

(assert (=> d!660041 (= c!352805 ((_ is Node!8443) (c!352774 input!5506)))))

(declare-fun e!1410766 () Bool)

(assert (=> d!660041 (= (inv!34926 (c!352774 input!5506)) e!1410766)))

(declare-fun b!2208427 () Bool)

(assert (=> b!2208427 (= e!1410766 (inv!34932 (c!352774 input!5506)))))

(declare-fun b!2208428 () Bool)

(declare-fun e!1410767 () Bool)

(assert (=> b!2208428 (= e!1410766 e!1410767)))

(declare-fun res!949265 () Bool)

(assert (=> b!2208428 (= res!949265 (not ((_ is Leaf!12364) (c!352774 input!5506))))))

(assert (=> b!2208428 (=> res!949265 e!1410767)))

(declare-fun b!2208429 () Bool)

(assert (=> b!2208429 (= e!1410767 (inv!34933 (c!352774 input!5506)))))

(assert (= (and d!660041 c!352805) b!2208427))

(assert (= (and d!660041 (not c!352805)) b!2208428))

(assert (= (and b!2208428 (not res!949265)) b!2208429))

(declare-fun m!2650141 () Bool)

(assert (=> b!2208427 m!2650141))

(declare-fun m!2650143 () Bool)

(assert (=> b!2208429 m!2650143))

(assert (=> b!2208307 d!660041))

(declare-fun condSetEmpty!19340 () Bool)

(assert (=> setNonEmpty!19334 (= condSetEmpty!19340 (= setRest!19334 ((as const (Array Context!3754 Bool)) false)))))

(declare-fun setRes!19340 () Bool)

(assert (=> setNonEmpty!19334 (= tp!686628 setRes!19340)))

(declare-fun setIsEmpty!19340 () Bool)

(assert (=> setIsEmpty!19340 setRes!19340))

(declare-fun tp!686660 () Bool)

(declare-fun setElem!19340 () Context!3754)

(declare-fun setNonEmpty!19340 () Bool)

(declare-fun e!1410770 () Bool)

(assert (=> setNonEmpty!19340 (= setRes!19340 (and tp!686660 (inv!34927 setElem!19340) e!1410770))))

(declare-fun setRest!19340 () (InoxSet Context!3754))

(assert (=> setNonEmpty!19340 (= setRest!19334 ((_ map or) (store ((as const (Array Context!3754 Bool)) false) setElem!19340 true) setRest!19340))))

(declare-fun b!2208434 () Bool)

(declare-fun tp!686659 () Bool)

(assert (=> b!2208434 (= e!1410770 tp!686659)))

(assert (= (and setNonEmpty!19334 condSetEmpty!19340) setIsEmpty!19340))

(assert (= (and setNonEmpty!19334 (not condSetEmpty!19340)) setNonEmpty!19340))

(assert (= setNonEmpty!19340 b!2208434))

(declare-fun m!2650145 () Bool)

(assert (=> setNonEmpty!19340 m!2650145))

(declare-fun tp!686667 () Bool)

(declare-fun tp!686669 () Bool)

(declare-fun b!2208443 () Bool)

(declare-fun e!1410775 () Bool)

(assert (=> b!2208443 (= e!1410775 (and (inv!34926 (left!19859 (c!352774 totalInput!846))) tp!686667 (inv!34926 (right!20189 (c!352774 totalInput!846))) tp!686669))))

(declare-fun b!2208445 () Bool)

(declare-fun e!1410776 () Bool)

(declare-fun tp!686668 () Bool)

(assert (=> b!2208445 (= e!1410776 tp!686668)))

(declare-fun b!2208444 () Bool)

(declare-fun inv!34934 (IArray!16891) Bool)

(assert (=> b!2208444 (= e!1410775 (and (inv!34934 (xs!11385 (c!352774 totalInput!846))) e!1410776))))

(assert (=> b!2208303 (= tp!686627 (and (inv!34926 (c!352774 totalInput!846)) e!1410775))))

(assert (= (and b!2208303 ((_ is Node!8443) (c!352774 totalInput!846))) b!2208443))

(assert (= b!2208444 b!2208445))

(assert (= (and b!2208303 ((_ is Leaf!12364) (c!352774 totalInput!846))) b!2208444))

(declare-fun m!2650147 () Bool)

(assert (=> b!2208443 m!2650147))

(declare-fun m!2650149 () Bool)

(assert (=> b!2208443 m!2650149))

(declare-fun m!2650151 () Bool)

(assert (=> b!2208444 m!2650151))

(assert (=> b!2208303 m!2649971))

(declare-fun tp!686672 () Bool)

(declare-fun tp!686670 () Bool)

(declare-fun e!1410777 () Bool)

(declare-fun b!2208446 () Bool)

(assert (=> b!2208446 (= e!1410777 (and (inv!34926 (left!19859 (c!352774 input!5506))) tp!686670 (inv!34926 (right!20189 (c!352774 input!5506))) tp!686672))))

(declare-fun b!2208448 () Bool)

(declare-fun e!1410778 () Bool)

(declare-fun tp!686671 () Bool)

(assert (=> b!2208448 (= e!1410778 tp!686671)))

(declare-fun b!2208447 () Bool)

(assert (=> b!2208447 (= e!1410777 (and (inv!34934 (xs!11385 (c!352774 input!5506))) e!1410778))))

(assert (=> b!2208307 (= tp!686629 (and (inv!34926 (c!352774 input!5506)) e!1410777))))

(assert (= (and b!2208307 ((_ is Node!8443) (c!352774 input!5506))) b!2208446))

(assert (= b!2208447 b!2208448))

(assert (= (and b!2208307 ((_ is Leaf!12364) (c!352774 input!5506))) b!2208447))

(declare-fun m!2650153 () Bool)

(assert (=> b!2208446 m!2650153))

(declare-fun m!2650155 () Bool)

(assert (=> b!2208446 m!2650155))

(declare-fun m!2650157 () Bool)

(assert (=> b!2208447 m!2650157))

(assert (=> b!2208307 m!2649985))

(declare-fun b!2208453 () Bool)

(declare-fun e!1410781 () Bool)

(declare-fun tp!686677 () Bool)

(declare-fun tp!686678 () Bool)

(assert (=> b!2208453 (= e!1410781 (and tp!686677 tp!686678))))

(assert (=> b!2208306 (= tp!686630 e!1410781)))

(assert (= (and b!2208306 ((_ is Cons!25840) (exprs!2377 setElem!19334))) b!2208453))

(check-sat (not d!660007) (not d!660025) (not b!2208417) (not b!2208416) (not b!2208453) (not d!660003) (not b!2208446) (not d!660037) (not d!660005) (not d!660035) (not b!2208348) (not b!2208410) (not d!660031) (not setNonEmpty!19340) (not d!660027) (not d!660001) (not d!660033) (not b!2208448) (not d!659999) (not b!2208303) (not d!660029) (not b!2208426) (not b!2208424) (not b!2208399) (not b!2208447) (not b!2208398) (not b!2208444) (not b!2208427) (not b!2208445) (not b!2208429) (not b!2208409) (not b!2208307) (not b!2208434) (not d!659979) (not b!2208443))
(check-sat)
(get-model)

(declare-fun d!660043 () Bool)

(declare-fun res!949285 () Bool)

(declare-fun e!1410792 () Bool)

(assert (=> d!660043 (=> res!949285 e!1410792)))

(assert (=> d!660043 (= res!949285 (not ((_ is Node!8443) (c!352774 input!5506))))))

(assert (=> d!660043 (= (isBalanced!2601 (c!352774 input!5506)) e!1410792)))

(declare-fun b!2208476 () Bool)

(declare-fun res!949286 () Bool)

(declare-fun e!1410793 () Bool)

(assert (=> b!2208476 (=> (not res!949286) (not e!1410793))))

(declare-fun isEmpty!14774 (Conc!8443) Bool)

(assert (=> b!2208476 (= res!949286 (not (isEmpty!14774 (left!19859 (c!352774 input!5506)))))))

(declare-fun b!2208477 () Bool)

(assert (=> b!2208477 (= e!1410792 e!1410793)))

(declare-fun res!949287 () Bool)

(assert (=> b!2208477 (=> (not res!949287) (not e!1410793))))

(declare-fun height!1266 (Conc!8443) Int)

(assert (=> b!2208477 (= res!949287 (<= (- 1) (- (height!1266 (left!19859 (c!352774 input!5506))) (height!1266 (right!20189 (c!352774 input!5506))))))))

(declare-fun b!2208478 () Bool)

(assert (=> b!2208478 (= e!1410793 (not (isEmpty!14774 (right!20189 (c!352774 input!5506)))))))

(declare-fun b!2208479 () Bool)

(declare-fun res!949283 () Bool)

(assert (=> b!2208479 (=> (not res!949283) (not e!1410793))))

(assert (=> b!2208479 (= res!949283 (isBalanced!2601 (right!20189 (c!352774 input!5506))))))

(declare-fun b!2208480 () Bool)

(declare-fun res!949284 () Bool)

(assert (=> b!2208480 (=> (not res!949284) (not e!1410793))))

(assert (=> b!2208480 (= res!949284 (isBalanced!2601 (left!19859 (c!352774 input!5506))))))

(declare-fun b!2208481 () Bool)

(declare-fun res!949282 () Bool)

(assert (=> b!2208481 (=> (not res!949282) (not e!1410793))))

(assert (=> b!2208481 (= res!949282 (<= (- (height!1266 (left!19859 (c!352774 input!5506))) (height!1266 (right!20189 (c!352774 input!5506)))) 1))))

(assert (= (and d!660043 (not res!949285)) b!2208477))

(assert (= (and b!2208477 res!949287) b!2208481))

(assert (= (and b!2208481 res!949282) b!2208480))

(assert (= (and b!2208480 res!949284) b!2208479))

(assert (= (and b!2208479 res!949283) b!2208476))

(assert (= (and b!2208476 res!949286) b!2208478))

(declare-fun m!2650181 () Bool)

(assert (=> b!2208481 m!2650181))

(declare-fun m!2650183 () Bool)

(assert (=> b!2208481 m!2650183))

(declare-fun m!2650185 () Bool)

(assert (=> b!2208478 m!2650185))

(declare-fun m!2650187 () Bool)

(assert (=> b!2208479 m!2650187))

(declare-fun m!2650189 () Bool)

(assert (=> b!2208476 m!2650189))

(assert (=> b!2208477 m!2650181))

(assert (=> b!2208477 m!2650183))

(declare-fun m!2650191 () Bool)

(assert (=> b!2208480 m!2650191))

(assert (=> d!660005 d!660043))

(declare-fun d!660057 () Bool)

(declare-fun lt!825840 () Int)

(assert (=> d!660057 (>= lt!825840 0)))

(declare-fun e!1410800 () Int)

(assert (=> d!660057 (= lt!825840 e!1410800)))

(declare-fun c!352815 () Bool)

(assert (=> d!660057 (= c!352815 ((_ is Nil!25839) (list!10000 totalInput!846)))))

(assert (=> d!660057 (= (size!20136 (list!10000 totalInput!846)) lt!825840)))

(declare-fun b!2208494 () Bool)

(assert (=> b!2208494 (= e!1410800 0)))

(declare-fun b!2208495 () Bool)

(assert (=> b!2208495 (= e!1410800 (+ 1 (size!20136 (t!198581 (list!10000 totalInput!846)))))))

(assert (= (and d!660057 c!352815) b!2208494))

(assert (= (and d!660057 (not c!352815)) b!2208495))

(declare-fun m!2650193 () Bool)

(assert (=> b!2208495 m!2650193))

(assert (=> b!2208348 d!660057))

(declare-fun d!660059 () Bool)

(declare-fun lt!825841 () Int)

(assert (=> d!660059 (>= lt!825841 0)))

(declare-fun e!1410803 () Int)

(assert (=> d!660059 (= lt!825841 e!1410803)))

(declare-fun c!352818 () Bool)

(assert (=> d!660059 (= c!352818 ((_ is Nil!25839) lt!825789))))

(assert (=> d!660059 (= (size!20136 lt!825789) lt!825841)))

(declare-fun b!2208500 () Bool)

(assert (=> b!2208500 (= e!1410803 0)))

(declare-fun b!2208501 () Bool)

(assert (=> b!2208501 (= e!1410803 (+ 1 (size!20136 (t!198581 lt!825789))))))

(assert (= (and d!660059 c!352818) b!2208500))

(assert (= (and d!660059 (not c!352818)) b!2208501))

(declare-fun m!2650199 () Bool)

(assert (=> b!2208501 m!2650199))

(assert (=> b!2208348 d!660059))

(declare-fun bs!451238 () Bool)

(declare-fun d!660061 () Bool)

(assert (= bs!451238 (and d!660061 d!659979)))

(declare-fun lambda!83407 () Int)

(assert (=> bs!451238 (= lambda!83407 lambda!83399)))

(assert (=> d!660061 (= (inv!34927 setElem!19340) (forall!5285 (exprs!2377 setElem!19340) lambda!83407))))

(declare-fun bs!451239 () Bool)

(assert (= bs!451239 d!660061))

(declare-fun m!2650205 () Bool)

(assert (=> bs!451239 m!2650205))

(assert (=> setNonEmpty!19340 d!660061))

(declare-fun d!660065 () Bool)

(declare-fun res!949298 () Bool)

(declare-fun e!1410812 () Bool)

(assert (=> d!660065 (=> (not res!949298) (not e!1410812))))

(declare-fun list!10003 (IArray!16891) List!25923)

(assert (=> d!660065 (= res!949298 (<= (size!20136 (list!10003 (xs!11385 (c!352774 input!5506)))) 512))))

(assert (=> d!660065 (= (inv!34933 (c!352774 input!5506)) e!1410812)))

(declare-fun b!2208512 () Bool)

(declare-fun res!949299 () Bool)

(assert (=> b!2208512 (=> (not res!949299) (not e!1410812))))

(assert (=> b!2208512 (= res!949299 (= (csize!17117 (c!352774 input!5506)) (size!20136 (list!10003 (xs!11385 (c!352774 input!5506))))))))

(declare-fun b!2208513 () Bool)

(assert (=> b!2208513 (= e!1410812 (and (> (csize!17117 (c!352774 input!5506)) 0) (<= (csize!17117 (c!352774 input!5506)) 512)))))

(assert (= (and d!660065 res!949298) b!2208512))

(assert (= (and b!2208512 res!949299) b!2208513))

(declare-fun m!2650211 () Bool)

(assert (=> d!660065 m!2650211))

(assert (=> d!660065 m!2650211))

(declare-fun m!2650213 () Bool)

(assert (=> d!660065 m!2650213))

(assert (=> b!2208512 m!2650211))

(assert (=> b!2208512 m!2650211))

(assert (=> b!2208512 m!2650213))

(assert (=> b!2208429 d!660065))

(declare-fun b!2208536 () Bool)

(declare-fun e!1410824 () List!25923)

(assert (=> b!2208536 (= e!1410824 (list!10003 (xs!11385 (c!352774 (_2!14934 lt!825792)))))))

(declare-fun b!2208534 () Bool)

(declare-fun e!1410823 () List!25923)

(assert (=> b!2208534 (= e!1410823 Nil!25839)))

(declare-fun b!2208535 () Bool)

(assert (=> b!2208535 (= e!1410823 e!1410824)))

(declare-fun c!352830 () Bool)

(assert (=> b!2208535 (= c!352830 ((_ is Leaf!12364) (c!352774 (_2!14934 lt!825792))))))

(declare-fun d!660069 () Bool)

(declare-fun c!352829 () Bool)

(assert (=> d!660069 (= c!352829 ((_ is Empty!8443) (c!352774 (_2!14934 lt!825792))))))

(assert (=> d!660069 (= (list!10002 (c!352774 (_2!14934 lt!825792))) e!1410823)))

(declare-fun b!2208537 () Bool)

(assert (=> b!2208537 (= e!1410824 (++!6433 (list!10002 (left!19859 (c!352774 (_2!14934 lt!825792)))) (list!10002 (right!20189 (c!352774 (_2!14934 lt!825792))))))))

(assert (= (and d!660069 c!352829) b!2208534))

(assert (= (and d!660069 (not c!352829)) b!2208535))

(assert (= (and b!2208535 c!352830) b!2208536))

(assert (= (and b!2208535 (not c!352830)) b!2208537))

(declare-fun m!2650227 () Bool)

(assert (=> b!2208536 m!2650227))

(declare-fun m!2650229 () Bool)

(assert (=> b!2208537 m!2650229))

(declare-fun m!2650231 () Bool)

(assert (=> b!2208537 m!2650231))

(assert (=> b!2208537 m!2650229))

(assert (=> b!2208537 m!2650231))

(declare-fun m!2650233 () Bool)

(assert (=> b!2208537 m!2650233))

(assert (=> d!660035 d!660069))

(assert (=> b!2208307 d!660041))

(declare-fun b!2208540 () Bool)

(declare-fun e!1410826 () List!25923)

(assert (=> b!2208540 (= e!1410826 (list!10003 (xs!11385 (c!352774 input!5506))))))

(declare-fun b!2208538 () Bool)

(declare-fun e!1410825 () List!25923)

(assert (=> b!2208538 (= e!1410825 Nil!25839)))

(declare-fun b!2208539 () Bool)

(assert (=> b!2208539 (= e!1410825 e!1410826)))

(declare-fun c!352832 () Bool)

(assert (=> b!2208539 (= c!352832 ((_ is Leaf!12364) (c!352774 input!5506)))))

(declare-fun d!660077 () Bool)

(declare-fun c!352831 () Bool)

(assert (=> d!660077 (= c!352831 ((_ is Empty!8443) (c!352774 input!5506)))))

(assert (=> d!660077 (= (list!10002 (c!352774 input!5506)) e!1410825)))

(declare-fun b!2208541 () Bool)

(assert (=> b!2208541 (= e!1410826 (++!6433 (list!10002 (left!19859 (c!352774 input!5506))) (list!10002 (right!20189 (c!352774 input!5506)))))))

(assert (= (and d!660077 c!352831) b!2208538))

(assert (= (and d!660077 (not c!352831)) b!2208539))

(assert (= (and b!2208539 c!352832) b!2208540))

(assert (= (and b!2208539 (not c!352832)) b!2208541))

(assert (=> b!2208540 m!2650211))

(declare-fun m!2650235 () Bool)

(assert (=> b!2208541 m!2650235))

(declare-fun m!2650237 () Bool)

(assert (=> b!2208541 m!2650237))

(assert (=> b!2208541 m!2650235))

(assert (=> b!2208541 m!2650237))

(declare-fun m!2650239 () Bool)

(assert (=> b!2208541 m!2650239))

(assert (=> d!660003 d!660077))

(declare-fun d!660079 () Bool)

(declare-fun res!949324 () Bool)

(declare-fun e!1410835 () Bool)

(assert (=> d!660079 (=> (not res!949324) (not e!1410835))))

(assert (=> d!660079 (= res!949324 (= (csize!17116 (c!352774 input!5506)) (+ (size!20137 (left!19859 (c!352774 input!5506))) (size!20137 (right!20189 (c!352774 input!5506))))))))

(assert (=> d!660079 (= (inv!34932 (c!352774 input!5506)) e!1410835)))

(declare-fun b!2208566 () Bool)

(declare-fun res!949325 () Bool)

(assert (=> b!2208566 (=> (not res!949325) (not e!1410835))))

(assert (=> b!2208566 (= res!949325 (and (not (= (left!19859 (c!352774 input!5506)) Empty!8443)) (not (= (right!20189 (c!352774 input!5506)) Empty!8443))))))

(declare-fun b!2208567 () Bool)

(declare-fun res!949326 () Bool)

(assert (=> b!2208567 (=> (not res!949326) (not e!1410835))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2208567 (= res!949326 (= (cheight!8654 (c!352774 input!5506)) (+ (max!0 (height!1266 (left!19859 (c!352774 input!5506))) (height!1266 (right!20189 (c!352774 input!5506)))) 1)))))

(declare-fun b!2208568 () Bool)

(assert (=> b!2208568 (= e!1410835 (<= 0 (cheight!8654 (c!352774 input!5506))))))

(assert (= (and d!660079 res!949324) b!2208566))

(assert (= (and b!2208566 res!949325) b!2208567))

(assert (= (and b!2208567 res!949326) b!2208568))

(declare-fun m!2650241 () Bool)

(assert (=> d!660079 m!2650241))

(declare-fun m!2650243 () Bool)

(assert (=> d!660079 m!2650243))

(assert (=> b!2208567 m!2650181))

(assert (=> b!2208567 m!2650183))

(assert (=> b!2208567 m!2650181))

(assert (=> b!2208567 m!2650183))

(declare-fun m!2650255 () Bool)

(assert (=> b!2208567 m!2650255))

(assert (=> b!2208427 d!660079))

(declare-fun b!2208615 () Bool)

(declare-fun e!1410863 () Bool)

(declare-fun lt!825848 () List!25923)

(declare-fun e!1410859 () Int)

(assert (=> b!2208615 (= e!1410863 (= (size!20136 lt!825848) e!1410859))))

(declare-fun c!352846 () Bool)

(assert (=> b!2208615 (= c!352846 (<= (- (size!20136 (list!10000 totalInput!846)) (size!20136 lt!825789)) 0))))

(declare-fun d!660081 () Bool)

(assert (=> d!660081 e!1410863))

(declare-fun res!949349 () Bool)

(assert (=> d!660081 (=> (not res!949349) (not e!1410863))))

(assert (=> d!660081 (= res!949349 (= ((_ map implies) (content!3506 lt!825848) (content!3506 (list!10000 totalInput!846))) ((as const (InoxSet C!12760)) true)))))

(declare-fun e!1410862 () List!25923)

(assert (=> d!660081 (= lt!825848 e!1410862)))

(declare-fun c!352848 () Bool)

(assert (=> d!660081 (= c!352848 ((_ is Nil!25839) (list!10000 totalInput!846)))))

(assert (=> d!660081 (= (drop!1486 (list!10000 totalInput!846) (- (size!20136 (list!10000 totalInput!846)) (size!20136 lt!825789))) lt!825848)))

(declare-fun b!2208616 () Bool)

(declare-fun e!1410860 () Int)

(assert (=> b!2208616 (= e!1410859 e!1410860)))

(declare-fun call!132289 () Int)

(declare-fun c!352847 () Bool)

(assert (=> b!2208616 (= c!352847 (>= (- (size!20136 (list!10000 totalInput!846)) (size!20136 lt!825789)) call!132289))))

(declare-fun b!2208617 () Bool)

(declare-fun e!1410861 () List!25923)

(assert (=> b!2208617 (= e!1410862 e!1410861)))

(declare-fun c!352845 () Bool)

(assert (=> b!2208617 (= c!352845 (<= (- (size!20136 (list!10000 totalInput!846)) (size!20136 lt!825789)) 0))))

(declare-fun b!2208618 () Bool)

(assert (=> b!2208618 (= e!1410862 Nil!25839)))

(declare-fun b!2208619 () Bool)

(assert (=> b!2208619 (= e!1410861 (drop!1486 (t!198581 (list!10000 totalInput!846)) (- (- (size!20136 (list!10000 totalInput!846)) (size!20136 lt!825789)) 1)))))

(declare-fun b!2208620 () Bool)

(assert (=> b!2208620 (= e!1410860 (- call!132289 (- (size!20136 (list!10000 totalInput!846)) (size!20136 lt!825789))))))

(declare-fun b!2208621 () Bool)

(assert (=> b!2208621 (= e!1410861 (list!10000 totalInput!846))))

(declare-fun b!2208622 () Bool)

(assert (=> b!2208622 (= e!1410859 call!132289)))

(declare-fun bm!132284 () Bool)

(assert (=> bm!132284 (= call!132289 (size!20136 (list!10000 totalInput!846)))))

(declare-fun b!2208623 () Bool)

(assert (=> b!2208623 (= e!1410860 0)))

(assert (= (and d!660081 c!352848) b!2208618))

(assert (= (and d!660081 (not c!352848)) b!2208617))

(assert (= (and b!2208617 c!352845) b!2208621))

(assert (= (and b!2208617 (not c!352845)) b!2208619))

(assert (= (and d!660081 res!949349) b!2208615))

(assert (= (and b!2208615 c!352846) b!2208622))

(assert (= (and b!2208615 (not c!352846)) b!2208616))

(assert (= (and b!2208616 c!352847) b!2208623))

(assert (= (and b!2208616 (not c!352847)) b!2208620))

(assert (= (or b!2208622 b!2208616 b!2208620) bm!132284))

(declare-fun m!2650291 () Bool)

(assert (=> b!2208615 m!2650291))

(declare-fun m!2650293 () Bool)

(assert (=> d!660081 m!2650293))

(assert (=> d!660081 m!2649975))

(declare-fun m!2650295 () Bool)

(assert (=> d!660081 m!2650295))

(declare-fun m!2650297 () Bool)

(assert (=> b!2208619 m!2650297))

(assert (=> bm!132284 m!2649975))

(assert (=> bm!132284 m!2650039))

(assert (=> d!660007 d!660081))

(assert (=> d!660007 d!660057))

(assert (=> d!660007 d!660059))

(declare-fun d!660095 () Bool)

(declare-fun res!949350 () Bool)

(declare-fun e!1410864 () Bool)

(assert (=> d!660095 (=> (not res!949350) (not e!1410864))))

(assert (=> d!660095 (= res!949350 (<= (size!20136 (list!10003 (xs!11385 (c!352774 totalInput!846)))) 512))))

(assert (=> d!660095 (= (inv!34933 (c!352774 totalInput!846)) e!1410864)))

(declare-fun b!2208624 () Bool)

(declare-fun res!949351 () Bool)

(assert (=> b!2208624 (=> (not res!949351) (not e!1410864))))

(assert (=> b!2208624 (= res!949351 (= (csize!17117 (c!352774 totalInput!846)) (size!20136 (list!10003 (xs!11385 (c!352774 totalInput!846))))))))

(declare-fun b!2208625 () Bool)

(assert (=> b!2208625 (= e!1410864 (and (> (csize!17117 (c!352774 totalInput!846)) 0) (<= (csize!17117 (c!352774 totalInput!846)) 512)))))

(assert (= (and d!660095 res!949350) b!2208624))

(assert (= (and b!2208624 res!949351) b!2208625))

(declare-fun m!2650299 () Bool)

(assert (=> d!660095 m!2650299))

(assert (=> d!660095 m!2650299))

(declare-fun m!2650301 () Bool)

(assert (=> d!660095 m!2650301))

(assert (=> b!2208624 m!2650299))

(assert (=> b!2208624 m!2650299))

(assert (=> b!2208624 m!2650301))

(assert (=> b!2208426 d!660095))

(declare-fun d!660097 () Bool)

(declare-fun res!949353 () Bool)

(declare-fun e!1410866 () Bool)

(assert (=> d!660097 (=> (not res!949353) (not e!1410866))))

(assert (=> d!660097 (= res!949353 (= (csize!17116 (c!352774 totalInput!846)) (+ (size!20137 (left!19859 (c!352774 totalInput!846))) (size!20137 (right!20189 (c!352774 totalInput!846))))))))

(assert (=> d!660097 (= (inv!34932 (c!352774 totalInput!846)) e!1410866)))

(declare-fun b!2208627 () Bool)

(declare-fun res!949355 () Bool)

(assert (=> b!2208627 (=> (not res!949355) (not e!1410866))))

(assert (=> b!2208627 (= res!949355 (and (not (= (left!19859 (c!352774 totalInput!846)) Empty!8443)) (not (= (right!20189 (c!352774 totalInput!846)) Empty!8443))))))

(declare-fun b!2208629 () Bool)

(declare-fun res!949357 () Bool)

(assert (=> b!2208629 (=> (not res!949357) (not e!1410866))))

(assert (=> b!2208629 (= res!949357 (= (cheight!8654 (c!352774 totalInput!846)) (+ (max!0 (height!1266 (left!19859 (c!352774 totalInput!846))) (height!1266 (right!20189 (c!352774 totalInput!846)))) 1)))))

(declare-fun b!2208631 () Bool)

(assert (=> b!2208631 (= e!1410866 (<= 0 (cheight!8654 (c!352774 totalInput!846))))))

(assert (= (and d!660097 res!949353) b!2208627))

(assert (= (and b!2208627 res!949355) b!2208629))

(assert (= (and b!2208629 res!949357) b!2208631))

(declare-fun m!2650303 () Bool)

(assert (=> d!660097 m!2650303))

(declare-fun m!2650305 () Bool)

(assert (=> d!660097 m!2650305))

(declare-fun m!2650309 () Bool)

(assert (=> b!2208629 m!2650309))

(declare-fun m!2650313 () Bool)

(assert (=> b!2208629 m!2650313))

(assert (=> b!2208629 m!2650309))

(assert (=> b!2208629 m!2650313))

(declare-fun m!2650315 () Bool)

(assert (=> b!2208629 m!2650315))

(assert (=> b!2208424 d!660097))

(declare-fun d!660099 () Bool)

(declare-fun res!949361 () Bool)

(declare-fun e!1410867 () Bool)

(assert (=> d!660099 (=> res!949361 e!1410867)))

(assert (=> d!660099 (= res!949361 (not ((_ is Node!8443) (c!352774 (_1!14934 lt!825835)))))))

(assert (=> d!660099 (= (isBalanced!2601 (c!352774 (_1!14934 lt!825835))) e!1410867)))

(declare-fun b!2208632 () Bool)

(declare-fun res!949362 () Bool)

(declare-fun e!1410868 () Bool)

(assert (=> b!2208632 (=> (not res!949362) (not e!1410868))))

(assert (=> b!2208632 (= res!949362 (not (isEmpty!14774 (left!19859 (c!352774 (_1!14934 lt!825835))))))))

(declare-fun b!2208633 () Bool)

(assert (=> b!2208633 (= e!1410867 e!1410868)))

(declare-fun res!949363 () Bool)

(assert (=> b!2208633 (=> (not res!949363) (not e!1410868))))

(assert (=> b!2208633 (= res!949363 (<= (- 1) (- (height!1266 (left!19859 (c!352774 (_1!14934 lt!825835)))) (height!1266 (right!20189 (c!352774 (_1!14934 lt!825835)))))))))

(declare-fun b!2208634 () Bool)

(assert (=> b!2208634 (= e!1410868 (not (isEmpty!14774 (right!20189 (c!352774 (_1!14934 lt!825835))))))))

(declare-fun b!2208635 () Bool)

(declare-fun res!949359 () Bool)

(assert (=> b!2208635 (=> (not res!949359) (not e!1410868))))

(assert (=> b!2208635 (= res!949359 (isBalanced!2601 (right!20189 (c!352774 (_1!14934 lt!825835)))))))

(declare-fun b!2208636 () Bool)

(declare-fun res!949360 () Bool)

(assert (=> b!2208636 (=> (not res!949360) (not e!1410868))))

(assert (=> b!2208636 (= res!949360 (isBalanced!2601 (left!19859 (c!352774 (_1!14934 lt!825835)))))))

(declare-fun b!2208637 () Bool)

(declare-fun res!949358 () Bool)

(assert (=> b!2208637 (=> (not res!949358) (not e!1410868))))

(assert (=> b!2208637 (= res!949358 (<= (- (height!1266 (left!19859 (c!352774 (_1!14934 lt!825835)))) (height!1266 (right!20189 (c!352774 (_1!14934 lt!825835))))) 1))))

(assert (= (and d!660099 (not res!949361)) b!2208633))

(assert (= (and b!2208633 res!949363) b!2208637))

(assert (= (and b!2208637 res!949358) b!2208636))

(assert (= (and b!2208636 res!949360) b!2208635))

(assert (= (and b!2208635 res!949359) b!2208632))

(assert (= (and b!2208632 res!949362) b!2208634))

(declare-fun m!2650321 () Bool)

(assert (=> b!2208637 m!2650321))

(declare-fun m!2650323 () Bool)

(assert (=> b!2208637 m!2650323))

(declare-fun m!2650325 () Bool)

(assert (=> b!2208634 m!2650325))

(declare-fun m!2650327 () Bool)

(assert (=> b!2208635 m!2650327))

(declare-fun m!2650329 () Bool)

(assert (=> b!2208632 m!2650329))

(assert (=> b!2208633 m!2650321))

(assert (=> b!2208633 m!2650323))

(declare-fun m!2650331 () Bool)

(assert (=> b!2208636 m!2650331))

(assert (=> d!660037 d!660099))

(declare-fun b!2208779 () Bool)

(declare-fun e!1410943 () tuple2!25134)

(declare-fun e!1410947 () tuple2!25134)

(assert (=> b!2208779 (= e!1410943 e!1410947)))

(declare-fun c!352920 () Bool)

(assert (=> b!2208779 (= c!352920 (< 0 (size!20137 (left!19859 (c!352774 input!5506)))))))

(declare-fun b!2208780 () Bool)

(declare-fun lt!825915 () tuple2!25134)

(declare-fun call!132314 () tuple2!25134)

(assert (=> b!2208780 (= lt!825915 call!132314)))

(declare-fun call!132311 () Conc!8443)

(assert (=> b!2208780 (= e!1410947 (tuple2!25135 (_1!14937 lt!825915) call!132311))))

(declare-fun b!2208781 () Bool)

(declare-fun e!1410939 () Int)

(assert (=> b!2208781 (= e!1410939 (- 0 (size!20137 (left!19859 (c!352774 input!5506)))))))

(declare-fun bm!132304 () Bool)

(declare-fun c!352917 () Bool)

(declare-fun c!352908 () Bool)

(assert (=> bm!132304 (= c!352917 c!352908)))

(declare-fun e!1410945 () List!25923)

(declare-fun call!132312 () tuple2!25136)

(declare-fun e!1410949 () Int)

(assert (=> bm!132304 (= call!132312 (splitAtIndex!34 e!1410945 (ite c!352908 0 e!1410949)))))

(declare-fun b!2208782 () Bool)

(declare-fun lt!825914 () tuple2!25136)

(declare-fun call!132310 () tuple2!25136)

(assert (=> b!2208782 (= lt!825914 call!132310)))

(declare-fun e!1410948 () tuple2!25136)

(declare-fun call!132309 () List!25923)

(assert (=> b!2208782 (= e!1410948 (tuple2!25137 call!132309 (_2!14938 lt!825914)))))

(declare-fun b!2208783 () Bool)

(declare-fun e!1410937 () tuple2!25134)

(declare-fun e!1410950 () tuple2!25134)

(assert (=> b!2208783 (= e!1410937 e!1410950)))

(assert (=> b!2208783 (= c!352908 ((_ is Leaf!12364) (c!352774 input!5506)))))

(declare-fun b!2208784 () Bool)

(declare-fun res!949383 () Bool)

(declare-fun e!1410938 () Bool)

(assert (=> b!2208784 (=> (not res!949383) (not e!1410938))))

(declare-fun lt!825920 () tuple2!25134)

(assert (=> b!2208784 (= res!949383 (isBalanced!2601 (_2!14937 lt!825920)))))

(declare-fun b!2208785 () Bool)

(declare-fun c!352912 () Bool)

(assert (=> b!2208785 (= c!352912 (= (size!20137 (left!19859 (c!352774 input!5506))) 0))))

(declare-datatypes ((Unit!38895 0))(
  ( (Unit!38896) )
))
(declare-fun lt!825911 () Unit!38895)

(declare-fun lt!825918 () Unit!38895)

(assert (=> b!2208785 (= lt!825911 lt!825918)))

(declare-fun lt!825908 () List!25923)

(declare-fun lt!825907 () List!25923)

(declare-fun e!1410940 () tuple2!25136)

(assert (=> b!2208785 (= (splitAtIndex!34 (++!6433 lt!825908 lt!825907) 0) e!1410940)))

(declare-fun c!352915 () Bool)

(declare-fun call!132313 () Int)

(assert (=> b!2208785 (= c!352915 (= call!132313 0))))

(declare-fun splitAtLemma!7 (List!25923 List!25923 Int) Unit!38895)

(assert (=> b!2208785 (= lt!825918 (splitAtLemma!7 lt!825908 lt!825907 0))))

(assert (=> b!2208785 (= lt!825907 (list!10002 (right!20189 (c!352774 input!5506))))))

(assert (=> b!2208785 (= lt!825908 (list!10002 (left!19859 (c!352774 input!5506))))))

(assert (=> b!2208785 (= e!1410950 e!1410943)))

(declare-fun d!660105 () Bool)

(assert (=> d!660105 e!1410938))

(declare-fun res!949384 () Bool)

(assert (=> d!660105 (=> (not res!949384) (not e!1410938))))

(assert (=> d!660105 (= res!949384 (isBalanced!2601 (_1!14937 lt!825920)))))

(assert (=> d!660105 (= lt!825920 e!1410937)))

(declare-fun c!352909 () Bool)

(assert (=> d!660105 (= c!352909 ((_ is Empty!8443) (c!352774 input!5506)))))

(assert (=> d!660105 (isBalanced!2601 (c!352774 input!5506))))

(assert (=> d!660105 (= (splitAt!65 (c!352774 input!5506) 0) lt!825920)))

(declare-fun bm!132305 () Bool)

(declare-fun c!352913 () Bool)

(declare-fun c!352911 () Bool)

(assert (=> bm!132305 (= c!352913 c!352911)))

(assert (=> bm!132305 (= call!132310 call!132312)))

(declare-fun b!2208786 () Bool)

(declare-fun lt!825919 () tuple2!25134)

(assert (=> b!2208786 (= lt!825919 call!132314)))

(assert (=> b!2208786 (= e!1410947 (tuple2!25135 call!132311 (_2!14937 lt!825919)))))

(declare-fun b!2208787 () Bool)

(assert (=> b!2208787 (= e!1410949 0)))

(declare-fun b!2208788 () Bool)

(assert (=> b!2208788 (= e!1410940 (tuple2!25137 lt!825908 lt!825907))))

(declare-fun b!2208789 () Bool)

(declare-fun c!352910 () Bool)

(assert (=> b!2208789 (= c!352910 (<= 0 0))))

(declare-fun e!1410944 () tuple2!25134)

(assert (=> b!2208789 (= e!1410950 e!1410944)))

(declare-fun b!2208790 () Bool)

(assert (=> b!2208790 (= e!1410945 (list!10003 (xs!11385 (c!352774 input!5506))))))

(declare-fun b!2208791 () Bool)

(declare-fun lt!825910 () tuple2!25136)

(assert (=> b!2208791 (= lt!825910 call!132310)))

(assert (=> b!2208791 (= e!1410948 (tuple2!25137 (_1!14938 lt!825910) call!132309))))

(declare-fun b!2208792 () Bool)

(assert (=> b!2208792 (= e!1410938 (= (tuple2!25137 (list!10002 (_1!14937 lt!825920)) (list!10002 (_2!14937 lt!825920))) (splitAtIndex!34 (list!10002 (c!352774 input!5506)) 0)))))

(declare-fun b!2208793 () Bool)

(declare-fun e!1410946 () tuple2!25134)

(assert (=> b!2208793 (= e!1410946 (tuple2!25135 (c!352774 input!5506) Empty!8443))))

(declare-fun b!2208794 () Bool)

(assert (=> b!2208794 (= e!1410945 (ite c!352911 lt!825908 lt!825907))))

(declare-fun b!2208795 () Bool)

(declare-fun lt!825921 () Unit!38895)

(declare-fun lt!825913 () Unit!38895)

(assert (=> b!2208795 (= lt!825921 lt!825913)))

(declare-fun lt!825912 () List!25923)

(declare-fun slice!622 (List!25923 Int Int) List!25923)

(assert (=> b!2208795 (= (drop!1486 lt!825912 0) (slice!622 lt!825912 0 call!132313))))

(declare-fun dropLemma!7 (List!25923 Int) Unit!38895)

(assert (=> b!2208795 (= lt!825913 (dropLemma!7 lt!825912 0))))

(assert (=> b!2208795 (= lt!825912 (list!10003 (xs!11385 (c!352774 input!5506))))))

(declare-fun lt!825909 () tuple2!25136)

(assert (=> b!2208795 (= lt!825909 call!132312)))

(declare-fun slice!623 (IArray!16891 Int Int) IArray!16891)

(assert (=> b!2208795 (= e!1410946 (tuple2!25135 (Leaf!12364 (slice!623 (xs!11385 (c!352774 input!5506)) 0 0) 0) (Leaf!12364 (slice!623 (xs!11385 (c!352774 input!5506)) 0 (csize!17117 (c!352774 input!5506))) (- (csize!17117 (c!352774 input!5506)) 0))))))

(declare-fun b!2208796 () Bool)

(assert (=> b!2208796 (= e!1410944 (tuple2!25135 Empty!8443 (c!352774 input!5506)))))

(declare-fun bm!132306 () Bool)

(declare-fun c!352919 () Bool)

(assert (=> bm!132306 (= c!352919 c!352920)))

(assert (=> bm!132306 (= call!132314 (splitAt!65 (ite c!352920 (left!19859 (c!352774 input!5506)) (right!20189 (c!352774 input!5506))) e!1410939))))

(declare-fun b!2208797 () Bool)

(assert (=> b!2208797 (= e!1410944 e!1410946)))

(declare-fun c!352918 () Bool)

(assert (=> b!2208797 (= c!352918 (= 0 (csize!17117 (c!352774 input!5506))))))

(declare-fun b!2208798 () Bool)

(assert (=> b!2208798 (= e!1410940 e!1410948)))

(assert (=> b!2208798 (= c!352911 (< 0 call!132313))))

(declare-fun bm!132307 () Bool)

(declare-fun ++!6434 (Conc!8443 Conc!8443) Conc!8443)

(assert (=> bm!132307 (= call!132311 (++!6434 (ite c!352920 (_2!14937 lt!825915) (left!19859 (c!352774 input!5506))) (ite c!352920 (right!20189 (c!352774 input!5506)) (_1!14937 lt!825919))))))

(declare-fun bm!132308 () Bool)

(assert (=> bm!132308 (= call!132309 (++!6433 (ite c!352911 (_2!14938 lt!825910) lt!825908) (ite c!352911 lt!825907 (_1!14938 lt!825914))))))

(declare-fun bm!132309 () Bool)

(assert (=> bm!132309 (= call!132313 (size!20136 (ite c!352908 lt!825912 lt!825908)))))

(declare-fun b!2208799 () Bool)

(assert (=> b!2208799 (= e!1410949 (- 0 call!132313))))

(declare-fun b!2208800 () Bool)

(assert (=> b!2208800 (= e!1410943 (tuple2!25135 (left!19859 (c!352774 input!5506)) (right!20189 (c!352774 input!5506))))))

(declare-fun b!2208801 () Bool)

(assert (=> b!2208801 (= e!1410937 (tuple2!25135 (c!352774 input!5506) (c!352774 input!5506)))))

(declare-fun b!2208802 () Bool)

(assert (=> b!2208802 (= e!1410939 0)))

(assert (= (and d!660105 c!352909) b!2208801))

(assert (= (and d!660105 (not c!352909)) b!2208783))

(assert (= (and b!2208783 c!352908) b!2208789))

(assert (= (and b!2208783 (not c!352908)) b!2208785))

(assert (= (and b!2208789 c!352910) b!2208796))

(assert (= (and b!2208789 (not c!352910)) b!2208797))

(assert (= (and b!2208797 c!352918) b!2208793))

(assert (= (and b!2208797 (not c!352918)) b!2208795))

(assert (= (and b!2208785 c!352915) b!2208788))

(assert (= (and b!2208785 (not c!352915)) b!2208798))

(assert (= (and b!2208798 c!352911) b!2208791))

(assert (= (and b!2208798 (not c!352911)) b!2208782))

(assert (= (or b!2208791 b!2208782) bm!132308))

(assert (= (or b!2208791 b!2208782) bm!132305))

(assert (= (and bm!132305 c!352913) b!2208787))

(assert (= (and bm!132305 (not c!352913)) b!2208799))

(assert (= (and b!2208785 c!352912) b!2208800))

(assert (= (and b!2208785 (not c!352912)) b!2208779))

(assert (= (and b!2208779 c!352920) b!2208780))

(assert (= (and b!2208779 (not c!352920)) b!2208786))

(assert (= (or b!2208780 b!2208786) bm!132307))

(assert (= (or b!2208780 b!2208786) bm!132306))

(assert (= (and bm!132306 c!352919) b!2208802))

(assert (= (and bm!132306 (not c!352919)) b!2208781))

(assert (= (or b!2208795 b!2208785 b!2208798 b!2208799) bm!132309))

(assert (= (or b!2208795 bm!132305) bm!132304))

(assert (= (and bm!132304 c!352917) b!2208790))

(assert (= (and bm!132304 (not c!352917)) b!2208794))

(assert (= (and d!660105 res!949384) b!2208784))

(assert (= (and b!2208784 res!949383) b!2208792))

(declare-fun m!2650381 () Bool)

(assert (=> bm!132307 m!2650381))

(assert (=> b!2208785 m!2650235))

(assert (=> b!2208785 m!2650237))

(declare-fun m!2650383 () Bool)

(assert (=> b!2208785 m!2650383))

(declare-fun m!2650385 () Bool)

(assert (=> b!2208785 m!2650385))

(assert (=> b!2208785 m!2650241))

(declare-fun m!2650387 () Bool)

(assert (=> b!2208785 m!2650387))

(assert (=> b!2208785 m!2650383))

(declare-fun m!2650389 () Bool)

(assert (=> bm!132308 m!2650389))

(declare-fun m!2650391 () Bool)

(assert (=> bm!132309 m!2650391))

(assert (=> b!2208790 m!2650211))

(declare-fun m!2650393 () Bool)

(assert (=> b!2208784 m!2650393))

(declare-fun m!2650395 () Bool)

(assert (=> bm!132306 m!2650395))

(assert (=> b!2208779 m!2650241))

(declare-fun m!2650397 () Bool)

(assert (=> b!2208792 m!2650397))

(declare-fun m!2650399 () Bool)

(assert (=> b!2208792 m!2650399))

(assert (=> b!2208792 m!2650035))

(assert (=> b!2208792 m!2650035))

(declare-fun m!2650401 () Bool)

(assert (=> b!2208792 m!2650401))

(assert (=> b!2208781 m!2650241))

(declare-fun m!2650403 () Bool)

(assert (=> bm!132304 m!2650403))

(declare-fun m!2650405 () Bool)

(assert (=> d!660105 m!2650405))

(assert (=> d!660105 m!2650037))

(declare-fun m!2650407 () Bool)

(assert (=> b!2208795 m!2650407))

(declare-fun m!2650409 () Bool)

(assert (=> b!2208795 m!2650409))

(declare-fun m!2650411 () Bool)

(assert (=> b!2208795 m!2650411))

(declare-fun m!2650413 () Bool)

(assert (=> b!2208795 m!2650413))

(assert (=> b!2208795 m!2650211))

(declare-fun m!2650415 () Bool)

(assert (=> b!2208795 m!2650415))

(assert (=> d!660037 d!660105))

(assert (=> d!660037 d!660043))

(declare-fun d!660127 () Bool)

(declare-fun lt!825924 () Int)

(assert (=> d!660127 (>= lt!825924 0)))

(declare-fun e!1410955 () Int)

(assert (=> d!660127 (= lt!825924 e!1410955)))

(declare-fun c!352925 () Bool)

(assert (=> d!660127 (= c!352925 ((_ is Nil!25839) (list!10000 input!5506)))))

(assert (=> d!660127 (= (size!20136 (list!10000 input!5506)) lt!825924)))

(declare-fun b!2208811 () Bool)

(assert (=> b!2208811 (= e!1410955 0)))

(declare-fun b!2208812 () Bool)

(assert (=> b!2208812 (= e!1410955 (+ 1 (size!20136 (t!198581 (list!10000 input!5506)))))))

(assert (= (and d!660127 c!352925) b!2208811))

(assert (= (and d!660127 (not c!352925)) b!2208812))

(declare-fun m!2650417 () Bool)

(assert (=> b!2208812 m!2650417))

(assert (=> d!660027 d!660127))

(assert (=> d!660027 d!660003))

(declare-fun d!660129 () Bool)

(declare-fun lt!825927 () Int)

(assert (=> d!660129 (= lt!825927 (size!20136 (list!10002 (c!352774 input!5506))))))

(assert (=> d!660129 (= lt!825927 (ite ((_ is Empty!8443) (c!352774 input!5506)) 0 (ite ((_ is Leaf!12364) (c!352774 input!5506)) (csize!17117 (c!352774 input!5506)) (csize!17116 (c!352774 input!5506)))))))

(assert (=> d!660129 (= (size!20137 (c!352774 input!5506)) lt!825927)))

(declare-fun bs!451241 () Bool)

(assert (= bs!451241 d!660129))

(assert (=> bs!451241 m!2650035))

(assert (=> bs!451241 m!2650035))

(declare-fun m!2650419 () Bool)

(assert (=> bs!451241 m!2650419))

(assert (=> d!660027 d!660129))

(declare-fun d!660131 () Bool)

(assert (=> d!660131 (= (inv!34934 (xs!11385 (c!352774 input!5506))) (<= (size!20136 (innerList!8503 (xs!11385 (c!352774 input!5506)))) 2147483647))))

(declare-fun bs!451242 () Bool)

(assert (= bs!451242 d!660131))

(declare-fun m!2650421 () Bool)

(assert (=> bs!451242 m!2650421))

(assert (=> b!2208447 d!660131))

(declare-fun d!660133 () Bool)

(declare-fun c!352926 () Bool)

(assert (=> d!660133 (= c!352926 ((_ is Node!8443) (left!19859 (c!352774 input!5506))))))

(declare-fun e!1410958 () Bool)

(assert (=> d!660133 (= (inv!34926 (left!19859 (c!352774 input!5506))) e!1410958)))

(declare-fun b!2208817 () Bool)

(assert (=> b!2208817 (= e!1410958 (inv!34932 (left!19859 (c!352774 input!5506))))))

(declare-fun b!2208818 () Bool)

(declare-fun e!1410959 () Bool)

(assert (=> b!2208818 (= e!1410958 e!1410959)))

(declare-fun res!949389 () Bool)

(assert (=> b!2208818 (= res!949389 (not ((_ is Leaf!12364) (left!19859 (c!352774 input!5506)))))))

(assert (=> b!2208818 (=> res!949389 e!1410959)))

(declare-fun b!2208819 () Bool)

(assert (=> b!2208819 (= e!1410959 (inv!34933 (left!19859 (c!352774 input!5506))))))

(assert (= (and d!660133 c!352926) b!2208817))

(assert (= (and d!660133 (not c!352926)) b!2208818))

(assert (= (and b!2208818 (not res!949389)) b!2208819))

(declare-fun m!2650423 () Bool)

(assert (=> b!2208817 m!2650423))

(declare-fun m!2650425 () Bool)

(assert (=> b!2208819 m!2650425))

(assert (=> b!2208446 d!660133))

(declare-fun d!660135 () Bool)

(declare-fun c!352927 () Bool)

(assert (=> d!660135 (= c!352927 ((_ is Node!8443) (right!20189 (c!352774 input!5506))))))

(declare-fun e!1410960 () Bool)

(assert (=> d!660135 (= (inv!34926 (right!20189 (c!352774 input!5506))) e!1410960)))

(declare-fun b!2208820 () Bool)

(assert (=> b!2208820 (= e!1410960 (inv!34932 (right!20189 (c!352774 input!5506))))))

(declare-fun b!2208821 () Bool)

(declare-fun e!1410961 () Bool)

(assert (=> b!2208821 (= e!1410960 e!1410961)))

(declare-fun res!949390 () Bool)

(assert (=> b!2208821 (= res!949390 (not ((_ is Leaf!12364) (right!20189 (c!352774 input!5506)))))))

(assert (=> b!2208821 (=> res!949390 e!1410961)))

(declare-fun b!2208822 () Bool)

(assert (=> b!2208822 (= e!1410961 (inv!34933 (right!20189 (c!352774 input!5506))))))

(assert (= (and d!660135 c!352927) b!2208820))

(assert (= (and d!660135 (not c!352927)) b!2208821))

(assert (= (and b!2208821 (not res!949390)) b!2208822))

(declare-fun m!2650427 () Bool)

(assert (=> b!2208820 m!2650427))

(declare-fun m!2650429 () Bool)

(assert (=> b!2208822 m!2650429))

(assert (=> b!2208446 d!660135))

(declare-fun b!2208825 () Bool)

(declare-fun e!1410963 () List!25923)

(assert (=> b!2208825 (= e!1410963 (list!10003 (xs!11385 (c!352774 totalInput!846))))))

(declare-fun b!2208823 () Bool)

(declare-fun e!1410962 () List!25923)

(assert (=> b!2208823 (= e!1410962 Nil!25839)))

(declare-fun b!2208824 () Bool)

(assert (=> b!2208824 (= e!1410962 e!1410963)))

(declare-fun c!352929 () Bool)

(assert (=> b!2208824 (= c!352929 ((_ is Leaf!12364) (c!352774 totalInput!846)))))

(declare-fun d!660137 () Bool)

(declare-fun c!352928 () Bool)

(assert (=> d!660137 (= c!352928 ((_ is Empty!8443) (c!352774 totalInput!846)))))

(assert (=> d!660137 (= (list!10002 (c!352774 totalInput!846)) e!1410962)))

(declare-fun b!2208826 () Bool)

(assert (=> b!2208826 (= e!1410963 (++!6433 (list!10002 (left!19859 (c!352774 totalInput!846))) (list!10002 (right!20189 (c!352774 totalInput!846)))))))

(assert (= (and d!660137 c!352928) b!2208823))

(assert (= (and d!660137 (not c!352928)) b!2208824))

(assert (= (and b!2208824 c!352929) b!2208825))

(assert (= (and b!2208824 (not c!352929)) b!2208826))

(assert (=> b!2208825 m!2650299))

(declare-fun m!2650431 () Bool)

(assert (=> b!2208826 m!2650431))

(declare-fun m!2650433 () Bool)

(assert (=> b!2208826 m!2650433))

(assert (=> b!2208826 m!2650431))

(assert (=> b!2208826 m!2650433))

(declare-fun m!2650435 () Bool)

(assert (=> b!2208826 m!2650435))

(assert (=> d!659999 d!660137))

(declare-fun d!660139 () Bool)

(declare-fun c!352932 () Bool)

(assert (=> d!660139 (= c!352932 ((_ is Nil!25839) lt!825830))))

(declare-fun e!1410966 () (InoxSet C!12760))

(assert (=> d!660139 (= (content!3506 lt!825830) e!1410966)))

(declare-fun b!2208831 () Bool)

(assert (=> b!2208831 (= e!1410966 ((as const (Array C!12760 Bool)) false))))

(declare-fun b!2208832 () Bool)

(assert (=> b!2208832 (= e!1410966 ((_ map or) (store ((as const (Array C!12760 Bool)) false) (h!31240 lt!825830) true) (content!3506 (t!198581 lt!825830))))))

(assert (= (and d!660139 c!352932) b!2208831))

(assert (= (and d!660139 (not c!352932)) b!2208832))

(declare-fun m!2650437 () Bool)

(assert (=> b!2208832 m!2650437))

(declare-fun m!2650439 () Bool)

(assert (=> b!2208832 m!2650439))

(assert (=> d!660031 d!660139))

(declare-fun d!660141 () Bool)

(declare-fun c!352933 () Bool)

(assert (=> d!660141 (= c!352933 ((_ is Nil!25839) (list!10000 (_1!14934 lt!825792))))))

(declare-fun e!1410967 () (InoxSet C!12760))

(assert (=> d!660141 (= (content!3506 (list!10000 (_1!14934 lt!825792))) e!1410967)))

(declare-fun b!2208833 () Bool)

(assert (=> b!2208833 (= e!1410967 ((as const (Array C!12760 Bool)) false))))

(declare-fun b!2208834 () Bool)

(assert (=> b!2208834 (= e!1410967 ((_ map or) (store ((as const (Array C!12760 Bool)) false) (h!31240 (list!10000 (_1!14934 lt!825792))) true) (content!3506 (t!198581 (list!10000 (_1!14934 lt!825792))))))))

(assert (= (and d!660141 c!352933) b!2208833))

(assert (= (and d!660141 (not c!352933)) b!2208834))

(declare-fun m!2650441 () Bool)

(assert (=> b!2208834 m!2650441))

(declare-fun m!2650443 () Bool)

(assert (=> b!2208834 m!2650443))

(assert (=> d!660031 d!660141))

(declare-fun d!660143 () Bool)

(declare-fun c!352934 () Bool)

(assert (=> d!660143 (= c!352934 ((_ is Nil!25839) (list!10000 (_2!14934 lt!825792))))))

(declare-fun e!1410968 () (InoxSet C!12760))

(assert (=> d!660143 (= (content!3506 (list!10000 (_2!14934 lt!825792))) e!1410968)))

(declare-fun b!2208835 () Bool)

(assert (=> b!2208835 (= e!1410968 ((as const (Array C!12760 Bool)) false))))

(declare-fun b!2208836 () Bool)

(assert (=> b!2208836 (= e!1410968 ((_ map or) (store ((as const (Array C!12760 Bool)) false) (h!31240 (list!10000 (_2!14934 lt!825792))) true) (content!3506 (t!198581 (list!10000 (_2!14934 lt!825792))))))))

(assert (= (and d!660143 c!352934) b!2208835))

(assert (= (and d!660143 (not c!352934)) b!2208836))

(declare-fun m!2650445 () Bool)

(assert (=> b!2208836 m!2650445))

(declare-fun m!2650447 () Bool)

(assert (=> b!2208836 m!2650447))

(assert (=> d!660031 d!660143))

(declare-fun d!660145 () Bool)

(assert (=> d!660145 (= (inv!34934 (xs!11385 (c!352774 totalInput!846))) (<= (size!20136 (innerList!8503 (xs!11385 (c!352774 totalInput!846)))) 2147483647))))

(declare-fun bs!451243 () Bool)

(assert (= bs!451243 d!660145))

(declare-fun m!2650449 () Bool)

(assert (=> bs!451243 m!2650449))

(assert (=> b!2208444 d!660145))

(declare-fun d!660147 () Bool)

(assert (=> d!660147 (= (list!10000 (_1!14934 lt!825835)) (list!10002 (c!352774 (_1!14934 lt!825835))))))

(declare-fun bs!451244 () Bool)

(assert (= bs!451244 d!660147))

(declare-fun m!2650451 () Bool)

(assert (=> bs!451244 m!2650451))

(assert (=> b!2208417 d!660147))

(declare-fun d!660149 () Bool)

(assert (=> d!660149 (= (list!10000 (_2!14934 lt!825835)) (list!10002 (c!352774 (_2!14934 lt!825835))))))

(declare-fun bs!451245 () Bool)

(assert (= bs!451245 d!660149))

(declare-fun m!2650453 () Bool)

(assert (=> bs!451245 m!2650453))

(assert (=> b!2208417 d!660149))

(declare-fun b!2208873 () Bool)

(declare-fun e!1410987 () tuple2!25136)

(assert (=> b!2208873 (= e!1410987 (tuple2!25137 Nil!25839 (list!10000 input!5506)))))

(declare-fun b!2208875 () Bool)

(declare-fun e!1410988 () tuple2!25136)

(assert (=> b!2208875 (= e!1410988 e!1410987)))

(declare-fun c!352951 () Bool)

(assert (=> b!2208875 (= c!352951 (<= 0 0))))

(declare-fun b!2208876 () Bool)

(declare-fun lt!825946 () tuple2!25136)

(assert (=> b!2208876 (= lt!825946 (splitAtIndex!34 (t!198581 (list!10000 input!5506)) (- 0 1)))))

(assert (=> b!2208876 (= e!1410987 (tuple2!25137 (Cons!25839 (h!31240 (list!10000 input!5506)) (_1!14938 lt!825946)) (_2!14938 lt!825946)))))

(declare-fun b!2208877 () Bool)

(declare-fun res!949398 () Bool)

(declare-fun e!1410989 () Bool)

(assert (=> b!2208877 (=> (not res!949398) (not e!1410989))))

(declare-fun lt!825945 () tuple2!25136)

(declare-fun take!468 (List!25923 Int) List!25923)

(assert (=> b!2208877 (= res!949398 (= (_1!14938 lt!825945) (take!468 (list!10000 input!5506) 0)))))

(declare-fun b!2208878 () Bool)

(assert (=> b!2208878 (= e!1410989 (= (_2!14938 lt!825945) (drop!1486 (list!10000 input!5506) 0)))))

(declare-fun d!660151 () Bool)

(assert (=> d!660151 e!1410989))

(declare-fun res!949397 () Bool)

(assert (=> d!660151 (=> (not res!949397) (not e!1410989))))

(assert (=> d!660151 (= res!949397 (= (++!6433 (_1!14938 lt!825945) (_2!14938 lt!825945)) (list!10000 input!5506)))))

(assert (=> d!660151 (= lt!825945 e!1410988)))

(declare-fun c!352950 () Bool)

(assert (=> d!660151 (= c!352950 ((_ is Nil!25839) (list!10000 input!5506)))))

(assert (=> d!660151 (= (splitAtIndex!34 (list!10000 input!5506) 0) lt!825945)))

(declare-fun b!2208874 () Bool)

(assert (=> b!2208874 (= e!1410988 (tuple2!25137 Nil!25839 Nil!25839))))

(assert (= (and d!660151 c!352950) b!2208874))

(assert (= (and d!660151 (not c!352950)) b!2208875))

(assert (= (and b!2208875 c!352951) b!2208873))

(assert (= (and b!2208875 (not c!352951)) b!2208876))

(assert (= (and d!660151 res!949397) b!2208877))

(assert (= (and b!2208877 res!949398) b!2208878))

(declare-fun m!2650495 () Bool)

(assert (=> b!2208876 m!2650495))

(assert (=> b!2208877 m!2649981))

(declare-fun m!2650497 () Bool)

(assert (=> b!2208877 m!2650497))

(assert (=> b!2208878 m!2649981))

(declare-fun m!2650499 () Bool)

(assert (=> b!2208878 m!2650499))

(declare-fun m!2650501 () Bool)

(assert (=> d!660151 m!2650501))

(assert (=> b!2208417 d!660151))

(assert (=> b!2208417 d!660003))

(declare-fun d!660155 () Bool)

(declare-fun c!352952 () Bool)

(assert (=> d!660155 (= c!352952 ((_ is Node!8443) (left!19859 (c!352774 totalInput!846))))))

(declare-fun e!1410990 () Bool)

(assert (=> d!660155 (= (inv!34926 (left!19859 (c!352774 totalInput!846))) e!1410990)))

(declare-fun b!2208879 () Bool)

(assert (=> b!2208879 (= e!1410990 (inv!34932 (left!19859 (c!352774 totalInput!846))))))

(declare-fun b!2208880 () Bool)

(declare-fun e!1410991 () Bool)

(assert (=> b!2208880 (= e!1410990 e!1410991)))

(declare-fun res!949399 () Bool)

(assert (=> b!2208880 (= res!949399 (not ((_ is Leaf!12364) (left!19859 (c!352774 totalInput!846)))))))

(assert (=> b!2208880 (=> res!949399 e!1410991)))

(declare-fun b!2208881 () Bool)

(assert (=> b!2208881 (= e!1410991 (inv!34933 (left!19859 (c!352774 totalInput!846))))))

(assert (= (and d!660155 c!352952) b!2208879))

(assert (= (and d!660155 (not c!352952)) b!2208880))

(assert (= (and b!2208880 (not res!949399)) b!2208881))

(declare-fun m!2650503 () Bool)

(assert (=> b!2208879 m!2650503))

(declare-fun m!2650505 () Bool)

(assert (=> b!2208881 m!2650505))

(assert (=> b!2208443 d!660155))

(declare-fun d!660157 () Bool)

(declare-fun c!352953 () Bool)

(assert (=> d!660157 (= c!352953 ((_ is Node!8443) (right!20189 (c!352774 totalInput!846))))))

(declare-fun e!1410992 () Bool)

(assert (=> d!660157 (= (inv!34926 (right!20189 (c!352774 totalInput!846))) e!1410992)))

(declare-fun b!2208882 () Bool)

(assert (=> b!2208882 (= e!1410992 (inv!34932 (right!20189 (c!352774 totalInput!846))))))

(declare-fun b!2208883 () Bool)

(declare-fun e!1410993 () Bool)

(assert (=> b!2208883 (= e!1410992 e!1410993)))

(declare-fun res!949400 () Bool)

(assert (=> b!2208883 (= res!949400 (not ((_ is Leaf!12364) (right!20189 (c!352774 totalInput!846)))))))

(assert (=> b!2208883 (=> res!949400 e!1410993)))

(declare-fun b!2208884 () Bool)

(assert (=> b!2208884 (= e!1410993 (inv!34933 (right!20189 (c!352774 totalInput!846))))))

(assert (= (and d!660157 c!352953) b!2208882))

(assert (= (and d!660157 (not c!352953)) b!2208883))

(assert (= (and b!2208883 (not res!949400)) b!2208884))

(declare-fun m!2650507 () Bool)

(assert (=> b!2208882 m!2650507))

(declare-fun m!2650509 () Bool)

(assert (=> b!2208884 m!2650509))

(assert (=> b!2208443 d!660157))

(declare-fun d!660159 () Bool)

(declare-fun res!949404 () Bool)

(declare-fun e!1410994 () Bool)

(assert (=> d!660159 (=> res!949404 e!1410994)))

(assert (=> d!660159 (= res!949404 (not ((_ is Node!8443) (c!352774 totalInput!846))))))

(assert (=> d!660159 (= (isBalanced!2601 (c!352774 totalInput!846)) e!1410994)))

(declare-fun b!2208885 () Bool)

(declare-fun res!949405 () Bool)

(declare-fun e!1410995 () Bool)

(assert (=> b!2208885 (=> (not res!949405) (not e!1410995))))

(assert (=> b!2208885 (= res!949405 (not (isEmpty!14774 (left!19859 (c!352774 totalInput!846)))))))

(declare-fun b!2208886 () Bool)

(assert (=> b!2208886 (= e!1410994 e!1410995)))

(declare-fun res!949406 () Bool)

(assert (=> b!2208886 (=> (not res!949406) (not e!1410995))))

(assert (=> b!2208886 (= res!949406 (<= (- 1) (- (height!1266 (left!19859 (c!352774 totalInput!846))) (height!1266 (right!20189 (c!352774 totalInput!846))))))))

(declare-fun b!2208887 () Bool)

(assert (=> b!2208887 (= e!1410995 (not (isEmpty!14774 (right!20189 (c!352774 totalInput!846)))))))

(declare-fun b!2208888 () Bool)

(declare-fun res!949402 () Bool)

(assert (=> b!2208888 (=> (not res!949402) (not e!1410995))))

(assert (=> b!2208888 (= res!949402 (isBalanced!2601 (right!20189 (c!352774 totalInput!846))))))

(declare-fun b!2208889 () Bool)

(declare-fun res!949403 () Bool)

(assert (=> b!2208889 (=> (not res!949403) (not e!1410995))))

(assert (=> b!2208889 (= res!949403 (isBalanced!2601 (left!19859 (c!352774 totalInput!846))))))

(declare-fun b!2208890 () Bool)

(declare-fun res!949401 () Bool)

(assert (=> b!2208890 (=> (not res!949401) (not e!1410995))))

(assert (=> b!2208890 (= res!949401 (<= (- (height!1266 (left!19859 (c!352774 totalInput!846))) (height!1266 (right!20189 (c!352774 totalInput!846)))) 1))))

(assert (= (and d!660159 (not res!949404)) b!2208886))

(assert (= (and b!2208886 res!949406) b!2208890))

(assert (= (and b!2208890 res!949401) b!2208889))

(assert (= (and b!2208889 res!949403) b!2208888))

(assert (= (and b!2208888 res!949402) b!2208885))

(assert (= (and b!2208885 res!949405) b!2208887))

(assert (=> b!2208890 m!2650309))

(assert (=> b!2208890 m!2650313))

(declare-fun m!2650511 () Bool)

(assert (=> b!2208887 m!2650511))

(declare-fun m!2650513 () Bool)

(assert (=> b!2208888 m!2650513))

(declare-fun m!2650515 () Bool)

(assert (=> b!2208885 m!2650515))

(assert (=> b!2208886 m!2650309))

(assert (=> b!2208886 m!2650313))

(declare-fun m!2650517 () Bool)

(assert (=> b!2208889 m!2650517))

(assert (=> d!660001 d!660159))

(declare-fun d!660161 () Bool)

(declare-fun res!949410 () Bool)

(declare-fun e!1410996 () Bool)

(assert (=> d!660161 (=> res!949410 e!1410996)))

(assert (=> d!660161 (= res!949410 (not ((_ is Node!8443) (c!352774 (_2!14934 lt!825835)))))))

(assert (=> d!660161 (= (isBalanced!2601 (c!352774 (_2!14934 lt!825835))) e!1410996)))

(declare-fun b!2208891 () Bool)

(declare-fun res!949411 () Bool)

(declare-fun e!1410997 () Bool)

(assert (=> b!2208891 (=> (not res!949411) (not e!1410997))))

(assert (=> b!2208891 (= res!949411 (not (isEmpty!14774 (left!19859 (c!352774 (_2!14934 lt!825835))))))))

(declare-fun b!2208892 () Bool)

(assert (=> b!2208892 (= e!1410996 e!1410997)))

(declare-fun res!949412 () Bool)

(assert (=> b!2208892 (=> (not res!949412) (not e!1410997))))

(assert (=> b!2208892 (= res!949412 (<= (- 1) (- (height!1266 (left!19859 (c!352774 (_2!14934 lt!825835)))) (height!1266 (right!20189 (c!352774 (_2!14934 lt!825835)))))))))

(declare-fun b!2208893 () Bool)

(assert (=> b!2208893 (= e!1410997 (not (isEmpty!14774 (right!20189 (c!352774 (_2!14934 lt!825835))))))))

(declare-fun b!2208894 () Bool)

(declare-fun res!949408 () Bool)

(assert (=> b!2208894 (=> (not res!949408) (not e!1410997))))

(assert (=> b!2208894 (= res!949408 (isBalanced!2601 (right!20189 (c!352774 (_2!14934 lt!825835)))))))

(declare-fun b!2208895 () Bool)

(declare-fun res!949409 () Bool)

(assert (=> b!2208895 (=> (not res!949409) (not e!1410997))))

(assert (=> b!2208895 (= res!949409 (isBalanced!2601 (left!19859 (c!352774 (_2!14934 lt!825835)))))))

(declare-fun b!2208896 () Bool)

(declare-fun res!949407 () Bool)

(assert (=> b!2208896 (=> (not res!949407) (not e!1410997))))

(assert (=> b!2208896 (= res!949407 (<= (- (height!1266 (left!19859 (c!352774 (_2!14934 lt!825835)))) (height!1266 (right!20189 (c!352774 (_2!14934 lt!825835))))) 1))))

(assert (= (and d!660161 (not res!949410)) b!2208892))

(assert (= (and b!2208892 res!949412) b!2208896))

(assert (= (and b!2208896 res!949407) b!2208895))

(assert (= (and b!2208895 res!949409) b!2208894))

(assert (= (and b!2208894 res!949408) b!2208891))

(assert (= (and b!2208891 res!949411) b!2208893))

(declare-fun m!2650523 () Bool)

(assert (=> b!2208896 m!2650523))

(declare-fun m!2650527 () Bool)

(assert (=> b!2208896 m!2650527))

(declare-fun m!2650529 () Bool)

(assert (=> b!2208893 m!2650529))

(declare-fun m!2650531 () Bool)

(assert (=> b!2208894 m!2650531))

(declare-fun m!2650533 () Bool)

(assert (=> b!2208891 m!2650533))

(assert (=> b!2208892 m!2650523))

(assert (=> b!2208892 m!2650527))

(declare-fun m!2650537 () Bool)

(assert (=> b!2208895 m!2650537))

(assert (=> b!2208416 d!660161))

(declare-fun d!660165 () Bool)

(declare-fun lt!825954 () Bool)

(declare-datatypes ((List!25925 0))(
  ( (Nil!25841) (Cons!25841 (h!31242 Context!3754) (t!198591 List!25925)) )
))
(declare-fun exists!875 (List!25925 Int) Bool)

(declare-fun toList!1279 ((InoxSet Context!3754)) List!25925)

(assert (=> d!660165 (= lt!825954 (exists!875 (toList!1279 z!3830) lambda!83405))))

(declare-fun choose!13041 ((InoxSet Context!3754) Int) Bool)

(assert (=> d!660165 (= lt!825954 (choose!13041 z!3830 lambda!83405))))

(assert (=> d!660165 (= (exists!874 z!3830 lambda!83405) lt!825954)))

(declare-fun bs!451248 () Bool)

(assert (= bs!451248 d!660165))

(declare-fun m!2650549 () Bool)

(assert (=> bs!451248 m!2650549))

(assert (=> bs!451248 m!2650549))

(declare-fun m!2650551 () Bool)

(assert (=> bs!451248 m!2650551))

(declare-fun m!2650553 () Bool)

(assert (=> bs!451248 m!2650553))

(assert (=> d!660025 d!660165))

(declare-fun d!660171 () Bool)

(declare-fun res!949418 () Bool)

(declare-fun e!1411005 () Bool)

(assert (=> d!660171 (=> res!949418 e!1411005)))

(assert (=> d!660171 (= res!949418 ((_ is Nil!25840) (exprs!2377 setElem!19334)))))

(assert (=> d!660171 (= (forall!5285 (exprs!2377 setElem!19334) lambda!83399) e!1411005)))

(declare-fun b!2208908 () Bool)

(declare-fun e!1411006 () Bool)

(assert (=> b!2208908 (= e!1411005 e!1411006)))

(declare-fun res!949419 () Bool)

(assert (=> b!2208908 (=> (not res!949419) (not e!1411006))))

(declare-fun dynLambda!11459 (Int Regex!6307) Bool)

(assert (=> b!2208908 (= res!949419 (dynLambda!11459 lambda!83399 (h!31241 (exprs!2377 setElem!19334))))))

(declare-fun b!2208909 () Bool)

(assert (=> b!2208909 (= e!1411006 (forall!5285 (t!198582 (exprs!2377 setElem!19334)) lambda!83399))))

(assert (= (and d!660171 (not res!949418)) b!2208908))

(assert (= (and b!2208908 res!949419) b!2208909))

(declare-fun b_lambda!71259 () Bool)

(assert (=> (not b_lambda!71259) (not b!2208908)))

(declare-fun m!2650557 () Bool)

(assert (=> b!2208908 m!2650557))

(declare-fun m!2650559 () Bool)

(assert (=> b!2208909 m!2650559))

(assert (=> d!659979 d!660171))

(declare-fun b!2208910 () Bool)

(declare-fun e!1411008 () Int)

(assert (=> b!2208910 (= e!1411008 e!1410749)))

(declare-fun b!2208911 () Bool)

(assert (=> b!2208911 (= e!1411008 (+ lt!825791 1))))

(declare-fun b!2208912 () Bool)

(declare-fun e!1411007 () Int)

(assert (=> b!2208912 (= e!1411007 e!1410749)))

(declare-fun b!2208913 () Bool)

(declare-fun e!1411009 () Bool)

(assert (=> b!2208913 (= e!1411009 (lostCauseZipper!393 lt!825822))))

(declare-fun lt!825956 () Int)

(declare-fun d!660175 () Bool)

(assert (=> d!660175 (and (>= lt!825956 (- 1)) (< lt!825956 lt!825790) (>= lt!825956 e!1410749) (or (= lt!825956 e!1410749) (>= lt!825956 (+ lt!825791 1))))))

(assert (=> d!660175 (= lt!825956 e!1411007)))

(declare-fun c!352958 () Bool)

(assert (=> d!660175 (= c!352958 e!1411009)))

(declare-fun res!949420 () Bool)

(assert (=> d!660175 (=> res!949420 e!1411009)))

(assert (=> d!660175 (= res!949420 (= (+ lt!825791 1) lt!825790))))

(assert (=> d!660175 (and (>= (+ lt!825791 1) 0) (<= (+ lt!825791 1) lt!825790))))

(assert (=> d!660175 (= (furthestNullablePosition!433 lt!825822 (+ lt!825791 1) totalInput!846 lt!825790 e!1410749) lt!825956)))

(declare-fun lt!825955 () (InoxSet Context!3754))

(declare-fun b!2208914 () Bool)

(assert (=> b!2208914 (= e!1411007 (furthestNullablePosition!433 lt!825955 (+ lt!825791 1 1) totalInput!846 lt!825790 e!1411008))))

(assert (=> b!2208914 (= lt!825955 (derivationStepZipper!329 lt!825822 (apply!6387 totalInput!846 (+ lt!825791 1))))))

(declare-fun c!352959 () Bool)

(assert (=> b!2208914 (= c!352959 (nullableZipper!587 lt!825955))))

(assert (= (and d!660175 (not res!949420)) b!2208913))

(assert (= (and d!660175 c!352958) b!2208912))

(assert (= (and d!660175 (not c!352958)) b!2208914))

(assert (= (and b!2208914 c!352959) b!2208911))

(assert (= (and b!2208914 (not c!352959)) b!2208910))

(declare-fun m!2650561 () Bool)

(assert (=> b!2208913 m!2650561))

(declare-fun m!2650563 () Bool)

(assert (=> b!2208914 m!2650563))

(declare-fun m!2650565 () Bool)

(assert (=> b!2208914 m!2650565))

(assert (=> b!2208914 m!2650565))

(declare-fun m!2650567 () Bool)

(assert (=> b!2208914 m!2650567))

(declare-fun m!2650569 () Bool)

(assert (=> b!2208914 m!2650569))

(assert (=> b!2208399 d!660175))

(declare-fun d!660177 () Bool)

(assert (=> d!660177 true))

(declare-fun lambda!83413 () Int)

(declare-fun flatMap!170 ((InoxSet Context!3754) Int) (InoxSet Context!3754))

(assert (=> d!660177 (= (derivationStepZipper!329 z!3830 (apply!6387 totalInput!846 lt!825791)) (flatMap!170 z!3830 lambda!83413))))

(declare-fun bs!451250 () Bool)

(assert (= bs!451250 d!660177))

(declare-fun m!2650571 () Bool)

(assert (=> bs!451250 m!2650571))

(assert (=> b!2208399 d!660177))

(declare-fun d!660179 () Bool)

(declare-fun lt!825963 () C!12760)

(declare-fun apply!6388 (List!25923 Int) C!12760)

(assert (=> d!660179 (= lt!825963 (apply!6388 (list!10000 totalInput!846) lt!825791))))

(declare-fun apply!6389 (Conc!8443 Int) C!12760)

(assert (=> d!660179 (= lt!825963 (apply!6389 (c!352774 totalInput!846) lt!825791))))

(declare-fun e!1411015 () Bool)

(assert (=> d!660179 e!1411015))

(declare-fun res!949426 () Bool)

(assert (=> d!660179 (=> (not res!949426) (not e!1411015))))

(assert (=> d!660179 (= res!949426 (<= 0 lt!825791))))

(assert (=> d!660179 (= (apply!6387 totalInput!846 lt!825791) lt!825963)))

(declare-fun b!2208922 () Bool)

(assert (=> b!2208922 (= e!1411015 (< lt!825791 (size!20133 totalInput!846)))))

(assert (= (and d!660179 res!949426) b!2208922))

(assert (=> d!660179 m!2649975))

(assert (=> d!660179 m!2649975))

(declare-fun m!2650581 () Bool)

(assert (=> d!660179 m!2650581))

(declare-fun m!2650583 () Bool)

(assert (=> d!660179 m!2650583))

(assert (=> b!2208922 m!2649961))

(assert (=> b!2208399 d!660179))

(declare-fun bs!451254 () Bool)

(declare-fun d!660187 () Bool)

(assert (= bs!451254 (and d!660187 d!660025)))

(declare-fun lambda!83415 () Int)

(assert (=> bs!451254 (= lambda!83415 lambda!83405)))

(assert (=> d!660187 (= (nullableZipper!587 lt!825822) (exists!874 lt!825822 lambda!83415))))

(declare-fun bs!451255 () Bool)

(assert (= bs!451255 d!660187))

(declare-fun m!2650585 () Bool)

(assert (=> bs!451255 m!2650585))

(assert (=> b!2208399 d!660187))

(assert (=> d!660029 d!660057))

(assert (=> d!660029 d!659999))

(declare-fun d!660189 () Bool)

(declare-fun lt!825964 () Int)

(assert (=> d!660189 (= lt!825964 (size!20136 (list!10002 (c!352774 totalInput!846))))))

(assert (=> d!660189 (= lt!825964 (ite ((_ is Empty!8443) (c!352774 totalInput!846)) 0 (ite ((_ is Leaf!12364) (c!352774 totalInput!846)) (csize!17117 (c!352774 totalInput!846)) (csize!17116 (c!352774 totalInput!846)))))))

(assert (=> d!660189 (= (size!20137 (c!352774 totalInput!846)) lt!825964)))

(declare-fun bs!451256 () Bool)

(assert (= bs!451256 d!660189))

(assert (=> bs!451256 m!2650031))

(assert (=> bs!451256 m!2650031))

(declare-fun m!2650587 () Bool)

(assert (=> bs!451256 m!2650587))

(assert (=> d!660029 d!660189))

(declare-fun d!660191 () Bool)

(declare-fun lt!825965 () Int)

(assert (=> d!660191 (>= lt!825965 0)))

(declare-fun e!1411016 () Int)

(assert (=> d!660191 (= lt!825965 e!1411016)))

(declare-fun c!352962 () Bool)

(assert (=> d!660191 (= c!352962 ((_ is Nil!25839) lt!825830))))

(assert (=> d!660191 (= (size!20136 lt!825830) lt!825965)))

(declare-fun b!2208923 () Bool)

(assert (=> b!2208923 (= e!1411016 0)))

(declare-fun b!2208924 () Bool)

(assert (=> b!2208924 (= e!1411016 (+ 1 (size!20136 (t!198581 lt!825830))))))

(assert (= (and d!660191 c!352962) b!2208923))

(assert (= (and d!660191 (not c!352962)) b!2208924))

(declare-fun m!2650589 () Bool)

(assert (=> b!2208924 m!2650589))

(assert (=> b!2208410 d!660191))

(declare-fun d!660193 () Bool)

(declare-fun lt!825966 () Int)

(assert (=> d!660193 (>= lt!825966 0)))

(declare-fun e!1411017 () Int)

(assert (=> d!660193 (= lt!825966 e!1411017)))

(declare-fun c!352963 () Bool)

(assert (=> d!660193 (= c!352963 ((_ is Nil!25839) (list!10000 (_1!14934 lt!825792))))))

(assert (=> d!660193 (= (size!20136 (list!10000 (_1!14934 lt!825792))) lt!825966)))

(declare-fun b!2208925 () Bool)

(assert (=> b!2208925 (= e!1411017 0)))

(declare-fun b!2208926 () Bool)

(assert (=> b!2208926 (= e!1411017 (+ 1 (size!20136 (t!198581 (list!10000 (_1!14934 lt!825792))))))))

(assert (= (and d!660193 c!352963) b!2208925))

(assert (= (and d!660193 (not c!352963)) b!2208926))

(declare-fun m!2650591 () Bool)

(assert (=> b!2208926 m!2650591))

(assert (=> b!2208410 d!660193))

(declare-fun d!660195 () Bool)

(declare-fun lt!825967 () Int)

(assert (=> d!660195 (>= lt!825967 0)))

(declare-fun e!1411018 () Int)

(assert (=> d!660195 (= lt!825967 e!1411018)))

(declare-fun c!352964 () Bool)

(assert (=> d!660195 (= c!352964 ((_ is Nil!25839) (list!10000 (_2!14934 lt!825792))))))

(assert (=> d!660195 (= (size!20136 (list!10000 (_2!14934 lt!825792))) lt!825967)))

(declare-fun b!2208927 () Bool)

(assert (=> b!2208927 (= e!1411018 0)))

(declare-fun b!2208928 () Bool)

(assert (=> b!2208928 (= e!1411018 (+ 1 (size!20136 (t!198581 (list!10000 (_2!14934 lt!825792))))))))

(assert (= (and d!660195 c!352964) b!2208927))

(assert (= (and d!660195 (not c!352964)) b!2208928))

(declare-fun m!2650593 () Bool)

(assert (=> b!2208928 m!2650593))

(assert (=> b!2208410 d!660195))

(declare-fun b!2208929 () Bool)

(declare-fun e!1411020 () List!25923)

(assert (=> b!2208929 (= e!1411020 (list!10000 (_2!14934 lt!825792)))))

(declare-fun d!660197 () Bool)

(declare-fun e!1411019 () Bool)

(assert (=> d!660197 e!1411019))

(declare-fun res!949427 () Bool)

(assert (=> d!660197 (=> (not res!949427) (not e!1411019))))

(declare-fun lt!825968 () List!25923)

(assert (=> d!660197 (= res!949427 (= (content!3506 lt!825968) ((_ map or) (content!3506 (t!198581 (list!10000 (_1!14934 lt!825792)))) (content!3506 (list!10000 (_2!14934 lt!825792))))))))

(assert (=> d!660197 (= lt!825968 e!1411020)))

(declare-fun c!352965 () Bool)

(assert (=> d!660197 (= c!352965 ((_ is Nil!25839) (t!198581 (list!10000 (_1!14934 lt!825792)))))))

(assert (=> d!660197 (= (++!6433 (t!198581 (list!10000 (_1!14934 lt!825792))) (list!10000 (_2!14934 lt!825792))) lt!825968)))

(declare-fun b!2208932 () Bool)

(assert (=> b!2208932 (= e!1411019 (or (not (= (list!10000 (_2!14934 lt!825792)) Nil!25839)) (= lt!825968 (t!198581 (list!10000 (_1!14934 lt!825792))))))))

(declare-fun b!2208930 () Bool)

(assert (=> b!2208930 (= e!1411020 (Cons!25839 (h!31240 (t!198581 (list!10000 (_1!14934 lt!825792)))) (++!6433 (t!198581 (t!198581 (list!10000 (_1!14934 lt!825792)))) (list!10000 (_2!14934 lt!825792)))))))

(declare-fun b!2208931 () Bool)

(declare-fun res!949428 () Bool)

(assert (=> b!2208931 (=> (not res!949428) (not e!1411019))))

(assert (=> b!2208931 (= res!949428 (= (size!20136 lt!825968) (+ (size!20136 (t!198581 (list!10000 (_1!14934 lt!825792)))) (size!20136 (list!10000 (_2!14934 lt!825792))))))))

(assert (= (and d!660197 c!352965) b!2208929))

(assert (= (and d!660197 (not c!352965)) b!2208930))

(assert (= (and d!660197 res!949427) b!2208931))

(assert (= (and b!2208931 res!949428) b!2208932))

(declare-fun m!2650595 () Bool)

(assert (=> d!660197 m!2650595))

(assert (=> d!660197 m!2650443))

(assert (=> d!660197 m!2649965))

(assert (=> d!660197 m!2650111))

(assert (=> b!2208930 m!2649965))

(declare-fun m!2650597 () Bool)

(assert (=> b!2208930 m!2650597))

(declare-fun m!2650599 () Bool)

(assert (=> b!2208931 m!2650599))

(assert (=> b!2208931 m!2650591))

(assert (=> b!2208931 m!2649965))

(assert (=> b!2208931 m!2650119))

(assert (=> b!2208409 d!660197))

(declare-fun bs!451268 () Bool)

(declare-fun d!660199 () Bool)

(assert (= bs!451268 (and d!660199 d!660025)))

(declare-fun lambda!83443 () Int)

(assert (=> bs!451268 (not (= lambda!83443 lambda!83405))))

(declare-fun bs!451269 () Bool)

(assert (= bs!451269 (and d!660199 d!660187)))

(assert (=> bs!451269 (not (= lambda!83443 lambda!83415))))

(declare-fun bs!451270 () Bool)

(declare-fun b!2208952 () Bool)

(assert (= bs!451270 (and b!2208952 d!660025)))

(declare-fun lambda!83444 () Int)

(assert (=> bs!451270 (not (= lambda!83444 lambda!83405))))

(declare-fun bs!451271 () Bool)

(assert (= bs!451271 (and b!2208952 d!660187)))

(assert (=> bs!451271 (not (= lambda!83444 lambda!83415))))

(declare-fun bs!451272 () Bool)

(assert (= bs!451272 (and b!2208952 d!660199)))

(assert (=> bs!451272 (not (= lambda!83444 lambda!83443))))

(declare-fun bs!451273 () Bool)

(declare-fun b!2208953 () Bool)

(assert (= bs!451273 (and b!2208953 d!660025)))

(declare-fun lambda!83445 () Int)

(assert (=> bs!451273 (not (= lambda!83445 lambda!83405))))

(declare-fun bs!451274 () Bool)

(assert (= bs!451274 (and b!2208953 d!660187)))

(assert (=> bs!451274 (not (= lambda!83445 lambda!83415))))

(declare-fun bs!451275 () Bool)

(assert (= bs!451275 (and b!2208953 d!660199)))

(assert (=> bs!451275 (not (= lambda!83445 lambda!83443))))

(declare-fun bs!451276 () Bool)

(assert (= bs!451276 (and b!2208953 b!2208952)))

(assert (=> bs!451276 (= lambda!83445 lambda!83444)))

(declare-fun e!1411038 () Unit!38895)

(declare-fun Unit!38899 () Unit!38895)

(assert (=> b!2208953 (= e!1411038 Unit!38899)))

(declare-fun lt!826012 () List!25925)

(declare-fun call!132339 () List!25925)

(assert (=> b!2208953 (= lt!826012 call!132339)))

(declare-fun lt!826015 () Unit!38895)

(declare-fun lemmaForallThenNotExists!64 (List!25925 Int) Unit!38895)

(assert (=> b!2208953 (= lt!826015 (lemmaForallThenNotExists!64 lt!826012 lambda!83443))))

(declare-fun call!132340 () Bool)

(assert (=> b!2208953 (not call!132340)))

(declare-fun lt!826011 () Unit!38895)

(assert (=> b!2208953 (= lt!826011 lt!826015)))

(declare-fun bm!132335 () Bool)

(assert (=> bm!132335 (= call!132339 (toList!1279 z!3830))))

(declare-fun lt!826014 () Bool)

(declare-datatypes ((Option!5039 0))(
  ( (None!5038) (Some!5038 (v!29437 List!25923)) )
))
(declare-fun isEmpty!14776 (Option!5039) Bool)

(declare-fun getLanguageWitness!163 ((InoxSet Context!3754)) Option!5039)

(assert (=> d!660199 (= lt!826014 (isEmpty!14776 (getLanguageWitness!163 z!3830)))))

(declare-fun forall!5287 ((InoxSet Context!3754) Int) Bool)

(assert (=> d!660199 (= lt!826014 (forall!5287 z!3830 lambda!83443))))

(declare-fun lt!826009 () Unit!38895)

(assert (=> d!660199 (= lt!826009 e!1411038)))

(declare-fun c!352989 () Bool)

(assert (=> d!660199 (= c!352989 (not (forall!5287 z!3830 lambda!83443)))))

(assert (=> d!660199 (= (lostCauseZipper!393 z!3830) lt!826014)))

(declare-fun Unit!38900 () Unit!38895)

(assert (=> b!2208952 (= e!1411038 Unit!38900)))

(declare-fun lt!826016 () List!25925)

(assert (=> b!2208952 (= lt!826016 call!132339)))

(declare-fun lt!826013 () Unit!38895)

(declare-fun lemmaNotForallThenExists!64 (List!25925 Int) Unit!38895)

(assert (=> b!2208952 (= lt!826013 (lemmaNotForallThenExists!64 lt!826016 lambda!83443))))

(assert (=> b!2208952 call!132340))

(declare-fun lt!826010 () Unit!38895)

(assert (=> b!2208952 (= lt!826010 lt!826013)))

(declare-fun bm!132334 () Bool)

(assert (=> bm!132334 (= call!132340 (exists!875 (ite c!352989 lt!826016 lt!826012) (ite c!352989 lambda!83444 lambda!83445)))))

(assert (= (and d!660199 c!352989) b!2208952))

(assert (= (and d!660199 (not c!352989)) b!2208953))

(assert (= (or b!2208952 b!2208953) bm!132334))

(assert (= (or b!2208952 b!2208953) bm!132335))

(declare-fun m!2650627 () Bool)

(assert (=> b!2208952 m!2650627))

(declare-fun m!2650629 () Bool)

(assert (=> d!660199 m!2650629))

(assert (=> d!660199 m!2650629))

(declare-fun m!2650631 () Bool)

(assert (=> d!660199 m!2650631))

(declare-fun m!2650633 () Bool)

(assert (=> d!660199 m!2650633))

(assert (=> d!660199 m!2650633))

(declare-fun m!2650635 () Bool)

(assert (=> b!2208953 m!2650635))

(declare-fun m!2650637 () Bool)

(assert (=> bm!132334 m!2650637))

(assert (=> bm!132335 m!2650549))

(assert (=> b!2208398 d!660199))

(declare-fun b!2208960 () Bool)

(declare-fun e!1411042 () List!25923)

(assert (=> b!2208960 (= e!1411042 (list!10003 (xs!11385 (c!352774 (_1!14934 lt!825792)))))))

(declare-fun b!2208958 () Bool)

(declare-fun e!1411041 () List!25923)

(assert (=> b!2208958 (= e!1411041 Nil!25839)))

(declare-fun b!2208959 () Bool)

(assert (=> b!2208959 (= e!1411041 e!1411042)))

(declare-fun c!352993 () Bool)

(assert (=> b!2208959 (= c!352993 ((_ is Leaf!12364) (c!352774 (_1!14934 lt!825792))))))

(declare-fun d!660213 () Bool)

(declare-fun c!352992 () Bool)

(assert (=> d!660213 (= c!352992 ((_ is Empty!8443) (c!352774 (_1!14934 lt!825792))))))

(assert (=> d!660213 (= (list!10002 (c!352774 (_1!14934 lt!825792))) e!1411041)))

(declare-fun b!2208961 () Bool)

(assert (=> b!2208961 (= e!1411042 (++!6433 (list!10002 (left!19859 (c!352774 (_1!14934 lt!825792)))) (list!10002 (right!20189 (c!352774 (_1!14934 lt!825792))))))))

(assert (= (and d!660213 c!352992) b!2208958))

(assert (= (and d!660213 (not c!352992)) b!2208959))

(assert (= (and b!2208959 c!352993) b!2208960))

(assert (= (and b!2208959 (not c!352993)) b!2208961))

(declare-fun m!2650639 () Bool)

(assert (=> b!2208960 m!2650639))

(declare-fun m!2650641 () Bool)

(assert (=> b!2208961 m!2650641))

(declare-fun m!2650643 () Bool)

(assert (=> b!2208961 m!2650643))

(assert (=> b!2208961 m!2650641))

(assert (=> b!2208961 m!2650643))

(declare-fun m!2650645 () Bool)

(assert (=> b!2208961 m!2650645))

(assert (=> d!660033 d!660213))

(assert (=> b!2208303 d!660039))

(declare-fun b!2208974 () Bool)

(declare-fun e!1411049 () Bool)

(declare-fun tp_is_empty!9751 () Bool)

(declare-fun tp!686681 () Bool)

(assert (=> b!2208974 (= e!1411049 (and tp_is_empty!9751 tp!686681))))

(assert (=> b!2208445 (= tp!686668 e!1411049)))

(assert (= (and b!2208445 ((_ is Cons!25839) (innerList!8503 (xs!11385 (c!352774 totalInput!846))))) b!2208974))

(declare-fun b!2208985 () Bool)

(declare-fun e!1411052 () Bool)

(assert (=> b!2208985 (= e!1411052 tp_is_empty!9751)))

(declare-fun b!2208986 () Bool)

(declare-fun tp!686695 () Bool)

(declare-fun tp!686692 () Bool)

(assert (=> b!2208986 (= e!1411052 (and tp!686695 tp!686692))))

(declare-fun b!2208987 () Bool)

(declare-fun tp!686693 () Bool)

(assert (=> b!2208987 (= e!1411052 tp!686693)))

(declare-fun b!2208988 () Bool)

(declare-fun tp!686696 () Bool)

(declare-fun tp!686694 () Bool)

(assert (=> b!2208988 (= e!1411052 (and tp!686696 tp!686694))))

(assert (=> b!2208453 (= tp!686677 e!1411052)))

(assert (= (and b!2208453 ((_ is ElementMatch!6307) (h!31241 (exprs!2377 setElem!19334)))) b!2208985))

(assert (= (and b!2208453 ((_ is Concat!10609) (h!31241 (exprs!2377 setElem!19334)))) b!2208986))

(assert (= (and b!2208453 ((_ is Star!6307) (h!31241 (exprs!2377 setElem!19334)))) b!2208987))

(assert (= (and b!2208453 ((_ is Union!6307) (h!31241 (exprs!2377 setElem!19334)))) b!2208988))

(declare-fun b!2208989 () Bool)

(declare-fun e!1411053 () Bool)

(declare-fun tp!686697 () Bool)

(declare-fun tp!686698 () Bool)

(assert (=> b!2208989 (= e!1411053 (and tp!686697 tp!686698))))

(assert (=> b!2208453 (= tp!686678 e!1411053)))

(assert (= (and b!2208453 ((_ is Cons!25840) (t!198582 (exprs!2377 setElem!19334)))) b!2208989))

(declare-fun b!2208990 () Bool)

(declare-fun e!1411054 () Bool)

(declare-fun tp!686699 () Bool)

(declare-fun tp!686700 () Bool)

(assert (=> b!2208990 (= e!1411054 (and tp!686699 tp!686700))))

(assert (=> b!2208434 (= tp!686659 e!1411054)))

(assert (= (and b!2208434 ((_ is Cons!25840) (exprs!2377 setElem!19340))) b!2208990))

(declare-fun condSetEmpty!19341 () Bool)

(assert (=> setNonEmpty!19340 (= condSetEmpty!19341 (= setRest!19340 ((as const (Array Context!3754 Bool)) false)))))

(declare-fun setRes!19341 () Bool)

(assert (=> setNonEmpty!19340 (= tp!686660 setRes!19341)))

(declare-fun setIsEmpty!19341 () Bool)

(assert (=> setIsEmpty!19341 setRes!19341))

(declare-fun setElem!19341 () Context!3754)

(declare-fun setNonEmpty!19341 () Bool)

(declare-fun e!1411055 () Bool)

(declare-fun tp!686702 () Bool)

(assert (=> setNonEmpty!19341 (= setRes!19341 (and tp!686702 (inv!34927 setElem!19341) e!1411055))))

(declare-fun setRest!19341 () (InoxSet Context!3754))

(assert (=> setNonEmpty!19341 (= setRest!19340 ((_ map or) (store ((as const (Array Context!3754 Bool)) false) setElem!19341 true) setRest!19341))))

(declare-fun b!2208991 () Bool)

(declare-fun tp!686701 () Bool)

(assert (=> b!2208991 (= e!1411055 tp!686701)))

(assert (= (and setNonEmpty!19340 condSetEmpty!19341) setIsEmpty!19341))

(assert (= (and setNonEmpty!19340 (not condSetEmpty!19341)) setNonEmpty!19341))

(assert (= setNonEmpty!19341 b!2208991))

(declare-fun m!2650647 () Bool)

(assert (=> setNonEmpty!19341 m!2650647))

(declare-fun b!2208998 () Bool)

(declare-fun e!1411059 () Bool)

(declare-fun tp!686703 () Bool)

(assert (=> b!2208998 (= e!1411059 (and tp_is_empty!9751 tp!686703))))

(assert (=> b!2208448 (= tp!686671 e!1411059)))

(assert (= (and b!2208448 ((_ is Cons!25839) (innerList!8503 (xs!11385 (c!352774 input!5506))))) b!2208998))

(declare-fun e!1411060 () Bool)

(declare-fun tp!686704 () Bool)

(declare-fun tp!686706 () Bool)

(declare-fun b!2208999 () Bool)

(assert (=> b!2208999 (= e!1411060 (and (inv!34926 (left!19859 (left!19859 (c!352774 totalInput!846)))) tp!686704 (inv!34926 (right!20189 (left!19859 (c!352774 totalInput!846)))) tp!686706))))

(declare-fun b!2209001 () Bool)

(declare-fun e!1411061 () Bool)

(declare-fun tp!686705 () Bool)

(assert (=> b!2209001 (= e!1411061 tp!686705)))

(declare-fun b!2209000 () Bool)

(assert (=> b!2209000 (= e!1411060 (and (inv!34934 (xs!11385 (left!19859 (c!352774 totalInput!846)))) e!1411061))))

(assert (=> b!2208443 (= tp!686667 (and (inv!34926 (left!19859 (c!352774 totalInput!846))) e!1411060))))

(assert (= (and b!2208443 ((_ is Node!8443) (left!19859 (c!352774 totalInput!846)))) b!2208999))

(assert (= b!2209000 b!2209001))

(assert (= (and b!2208443 ((_ is Leaf!12364) (left!19859 (c!352774 totalInput!846)))) b!2209000))

(declare-fun m!2650651 () Bool)

(assert (=> b!2208999 m!2650651))

(declare-fun m!2650655 () Bool)

(assert (=> b!2208999 m!2650655))

(declare-fun m!2650657 () Bool)

(assert (=> b!2209000 m!2650657))

(assert (=> b!2208443 m!2650147))

(declare-fun tp!686709 () Bool)

(declare-fun tp!686707 () Bool)

(declare-fun b!2209002 () Bool)

(declare-fun e!1411062 () Bool)

(assert (=> b!2209002 (= e!1411062 (and (inv!34926 (left!19859 (right!20189 (c!352774 totalInput!846)))) tp!686707 (inv!34926 (right!20189 (right!20189 (c!352774 totalInput!846)))) tp!686709))))

(declare-fun b!2209004 () Bool)

(declare-fun e!1411063 () Bool)

(declare-fun tp!686708 () Bool)

(assert (=> b!2209004 (= e!1411063 tp!686708)))

(declare-fun b!2209003 () Bool)

(assert (=> b!2209003 (= e!1411062 (and (inv!34934 (xs!11385 (right!20189 (c!352774 totalInput!846)))) e!1411063))))

(assert (=> b!2208443 (= tp!686669 (and (inv!34926 (right!20189 (c!352774 totalInput!846))) e!1411062))))

(assert (= (and b!2208443 ((_ is Node!8443) (right!20189 (c!352774 totalInput!846)))) b!2209002))

(assert (= b!2209003 b!2209004))

(assert (= (and b!2208443 ((_ is Leaf!12364) (right!20189 (c!352774 totalInput!846)))) b!2209003))

(declare-fun m!2650663 () Bool)

(assert (=> b!2209002 m!2650663))

(declare-fun m!2650665 () Bool)

(assert (=> b!2209002 m!2650665))

(declare-fun m!2650667 () Bool)

(assert (=> b!2209003 m!2650667))

(assert (=> b!2208443 m!2650149))

(declare-fun e!1411065 () Bool)

(declare-fun tp!686712 () Bool)

(declare-fun b!2209006 () Bool)

(declare-fun tp!686714 () Bool)

(assert (=> b!2209006 (= e!1411065 (and (inv!34926 (left!19859 (left!19859 (c!352774 input!5506)))) tp!686712 (inv!34926 (right!20189 (left!19859 (c!352774 input!5506)))) tp!686714))))

(declare-fun b!2209008 () Bool)

(declare-fun e!1411066 () Bool)

(declare-fun tp!686713 () Bool)

(assert (=> b!2209008 (= e!1411066 tp!686713)))

(declare-fun b!2209007 () Bool)

(assert (=> b!2209007 (= e!1411065 (and (inv!34934 (xs!11385 (left!19859 (c!352774 input!5506)))) e!1411066))))

(assert (=> b!2208446 (= tp!686670 (and (inv!34926 (left!19859 (c!352774 input!5506))) e!1411065))))

(assert (= (and b!2208446 ((_ is Node!8443) (left!19859 (c!352774 input!5506)))) b!2209006))

(assert (= b!2209007 b!2209008))

(assert (= (and b!2208446 ((_ is Leaf!12364) (left!19859 (c!352774 input!5506)))) b!2209007))

(declare-fun m!2650671 () Bool)

(assert (=> b!2209006 m!2650671))

(declare-fun m!2650673 () Bool)

(assert (=> b!2209006 m!2650673))

(declare-fun m!2650675 () Bool)

(assert (=> b!2209007 m!2650675))

(assert (=> b!2208446 m!2650153))

(declare-fun tp!686718 () Bool)

(declare-fun b!2209012 () Bool)

(declare-fun tp!686720 () Bool)

(declare-fun e!1411069 () Bool)

(assert (=> b!2209012 (= e!1411069 (and (inv!34926 (left!19859 (right!20189 (c!352774 input!5506)))) tp!686718 (inv!34926 (right!20189 (right!20189 (c!352774 input!5506)))) tp!686720))))

(declare-fun b!2209014 () Bool)

(declare-fun e!1411070 () Bool)

(declare-fun tp!686719 () Bool)

(assert (=> b!2209014 (= e!1411070 tp!686719)))

(declare-fun b!2209013 () Bool)

(assert (=> b!2209013 (= e!1411069 (and (inv!34934 (xs!11385 (right!20189 (c!352774 input!5506)))) e!1411070))))

(assert (=> b!2208446 (= tp!686672 (and (inv!34926 (right!20189 (c!352774 input!5506))) e!1411069))))

(assert (= (and b!2208446 ((_ is Node!8443) (right!20189 (c!352774 input!5506)))) b!2209012))

(assert (= b!2209013 b!2209014))

(assert (= (and b!2208446 ((_ is Leaf!12364) (right!20189 (c!352774 input!5506)))) b!2209013))

(declare-fun m!2650681 () Bool)

(assert (=> b!2209012 m!2650681))

(declare-fun m!2650685 () Bool)

(assert (=> b!2209012 m!2650685))

(declare-fun m!2650687 () Bool)

(assert (=> b!2209013 m!2650687))

(assert (=> b!2208446 m!2650155))

(declare-fun b_lambda!71261 () Bool)

(assert (= b_lambda!71259 (or d!659979 b_lambda!71261)))

(declare-fun bs!451277 () Bool)

(declare-fun d!660215 () Bool)

(assert (= bs!451277 (and d!660215 d!659979)))

(declare-fun validRegex!2346 (Regex!6307) Bool)

(assert (=> bs!451277 (= (dynLambda!11459 lambda!83399 (h!31241 (exprs!2377 setElem!19334))) (validRegex!2346 (h!31241 (exprs!2377 setElem!19334))))))

(declare-fun m!2650691 () Bool)

(assert (=> bs!451277 m!2650691))

(assert (=> b!2208908 d!660215))

(check-sat (not d!660177) (not d!660179) (not b!2208629) (not b!2208501) (not b!2208990) (not b!2208779) (not b!2208913) (not b!2208817) (not b!2208895) (not b!2208615) (not bm!132284) (not d!660189) (not d!660149) (not b!2208960) (not b!2208822) (not b!2208961) (not b!2208632) (not b!2208988) (not d!660197) (not b_lambda!71261) (not b!2208887) (not b!2208928) (not b!2208825) (not b!2208541) (not b!2209001) (not d!660187) (not b!2208635) (not b!2208889) (not b!2208536) (not b!2208893) (not d!660105) (not bm!132306) (not b!2209000) (not b!2208832) (not setNonEmpty!19341) (not d!660081) (not b!2208881) (not b!2208991) (not b!2208495) (not b!2209003) (not b!2208886) (not b!2208512) (not b!2208998) (not b!2208878) (not b!2208922) (not b!2208882) (not b!2208834) (not b!2208892) (not b!2208785) (not b!2208636) (not b!2208974) (not b!2208540) (not b!2208836) (not b!2208479) (not b!2208890) (not b!2208619) (not b!2208888) (not b!2208795) (not b!2208478) (not bm!132335) (not b!2208989) (not b!2208826) (not b!2208634) (not b!2209007) (not b!2208999) (not b!2208953) (not b!2208884) (not b!2208637) (not b!2208784) (not b!2208446) (not b!2208537) (not b!2209014) (not b!2208987) (not bm!132309) (not d!660151) (not b!2208879) (not b!2208931) (not b!2208952) (not b!2208633) (not b!2208819) (not d!660131) (not b!2208567) (not b!2208812) (not b!2208477) (not bm!132304) (not b!2208476) (not b!2208894) (not d!660129) (not b!2208792) (not d!660145) (not b!2208481) (not d!660079) (not bm!132334) (not d!660065) (not b!2209002) (not bs!451277) (not b!2208877) (not b!2209013) (not b!2208781) (not b!2208986) (not d!660061) (not b!2209004) (not d!660097) (not b!2208926) (not b!2208876) (not b!2208896) (not d!660165) tp_is_empty!9751 (not b!2208930) (not b!2208820) (not b!2208909) (not b!2208790) (not d!660095) (not b!2208885) (not b!2209006) (not b!2208891) (not d!660199) (not d!660147) (not b!2208914) (not b!2208480) (not b!2208443) (not bm!132307) (not b!2208924) (not b!2209008) (not b!2209012) (not b!2208624) (not bm!132308))
(check-sat)
