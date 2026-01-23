; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213978 () Bool)

(assert start!213978)

(declare-fun b!2202472 () Bool)

(declare-fun res!946765 () Bool)

(declare-fun e!1407223 () Bool)

(assert (=> b!2202472 (=> (not res!946765) (not e!1407223))))

(declare-fun knownSize!10 () Int)

(declare-datatypes ((C!12620 0))(
  ( (C!12621 (val!7296 Int)) )
))
(declare-datatypes ((List!25772 0))(
  ( (Nil!25688) (Cons!25688 (h!31089 C!12620) (t!198406 List!25772)) )
))
(declare-datatypes ((IArray!16751 0))(
  ( (IArray!16752 (innerList!8433 List!25772)) )
))
(declare-datatypes ((Conc!8373 0))(
  ( (Node!8373 (left!19734 Conc!8373) (right!20064 Conc!8373) (csize!16976 Int) (cheight!8584 Int)) (Leaf!12259 (xs!11315 IArray!16751) (csize!16977 Int)) (Empty!8373) )
))
(declare-datatypes ((BalanceConc!16508 0))(
  ( (BalanceConc!16509 (c!351382 Conc!8373)) )
))
(declare-fun totalInput!891 () BalanceConc!16508)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6237 0))(
  ( (ElementMatch!6237 (c!351383 C!12620)) (Concat!10539 (regOne!12986 Regex!6237) (regTwo!12986 Regex!6237)) (EmptyExpr!6237) (Star!6237 (reg!6566 Regex!6237)) (EmptyLang!6237) (Union!6237 (regOne!12987 Regex!6237) (regTwo!12987 Regex!6237)) )
))
(declare-datatypes ((List!25773 0))(
  ( (Nil!25689) (Cons!25689 (h!31090 Regex!6237) (t!198407 List!25773)) )
))
(declare-datatypes ((Context!3614 0))(
  ( (Context!3615 (exprs!2307 List!25773)) )
))
(declare-fun z!3888 () (InoxSet Context!3614))

(declare-fun from!1082 () Int)

(declare-fun matchZipper!323 ((InoxSet Context!3614) List!25772) Bool)

(declare-fun take!415 (List!25772 Int) List!25772)

(declare-fun drop!1425 (List!25772 Int) List!25772)

(declare-fun list!9905 (BalanceConc!16508) List!25772)

(assert (=> b!2202472 (= res!946765 (matchZipper!323 z!3888 (take!415 (drop!1425 (list!9905 totalInput!891) from!1082) knownSize!10)))))

(declare-fun tp!685236 () Bool)

(declare-fun e!1407221 () Bool)

(declare-fun setRes!19042 () Bool)

(declare-fun setNonEmpty!19042 () Bool)

(declare-fun setElem!19042 () Context!3614)

(declare-fun inv!34547 (Context!3614) Bool)

(assert (=> setNonEmpty!19042 (= setRes!19042 (and tp!685236 (inv!34547 setElem!19042) e!1407221))))

(declare-fun setRest!19042 () (InoxSet Context!3614))

(assert (=> setNonEmpty!19042 (= z!3888 ((_ map or) (store ((as const (Array Context!3614 Bool)) false) setElem!19042 true) setRest!19042))))

(declare-fun lastNullablePos!161 () Int)

(declare-fun lt!823626 () Int)

(declare-fun b!2202473 () Bool)

(declare-fun furthestNullablePosition!387 ((InoxSet Context!3614) Int BalanceConc!16508 Int Int) Int)

(assert (=> b!2202473 (= e!1407223 (< (furthestNullablePosition!387 z!3888 from!1082 totalInput!891 lt!823626 lastNullablePos!161) lastNullablePos!161))))

(declare-fun res!946762 () Bool)

(declare-fun e!1407224 () Bool)

(assert (=> start!213978 (=> (not res!946762) (not e!1407224))))

(assert (=> start!213978 (= res!946762 (>= from!1082 0))))

(assert (=> start!213978 e!1407224))

(assert (=> start!213978 true))

(declare-fun e!1407222 () Bool)

(declare-fun inv!34548 (BalanceConc!16508) Bool)

(assert (=> start!213978 (and (inv!34548 totalInput!891) e!1407222)))

(declare-fun condSetEmpty!19042 () Bool)

(assert (=> start!213978 (= condSetEmpty!19042 (= z!3888 ((as const (Array Context!3614 Bool)) false)))))

(assert (=> start!213978 setRes!19042))

(declare-fun b!2202474 () Bool)

(declare-fun res!946767 () Bool)

(assert (=> b!2202474 (=> (not res!946767) (not e!1407223))))

(declare-fun isEmpty!14664 (BalanceConc!16508) Bool)

(assert (=> b!2202474 (= res!946767 (not (isEmpty!14664 totalInput!891)))))

(declare-fun b!2202475 () Bool)

(declare-fun tp!685235 () Bool)

(assert (=> b!2202475 (= e!1407221 tp!685235)))

(declare-fun b!2202476 () Bool)

(declare-fun res!946764 () Bool)

(assert (=> b!2202476 (=> (not res!946764) (not e!1407223))))

(assert (=> b!2202476 (= res!946764 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun setIsEmpty!19042 () Bool)

(assert (=> setIsEmpty!19042 setRes!19042))

(declare-fun b!2202477 () Bool)

(declare-fun e!1407225 () Bool)

(assert (=> b!2202477 (= e!1407225 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2202478 () Bool)

(assert (=> b!2202478 (= e!1407224 e!1407223)))

(declare-fun res!946768 () Bool)

(assert (=> b!2202478 (=> (not res!946768) (not e!1407223))))

(assert (=> b!2202478 (= res!946768 (and (<= from!1082 lt!823626) (>= knownSize!10 0) (<= knownSize!10 (- lt!823626 from!1082))))))

(declare-fun size!20016 (BalanceConc!16508) Int)

(assert (=> b!2202478 (= lt!823626 (size!20016 totalInput!891))))

(declare-fun b!2202479 () Bool)

(declare-fun res!946766 () Bool)

(assert (=> b!2202479 (=> (not res!946766) (not e!1407223))))

(assert (=> b!2202479 (= res!946766 (= knownSize!10 0))))

(declare-fun b!2202480 () Bool)

(declare-fun res!946769 () Bool)

(assert (=> b!2202480 (=> (not res!946769) (not e!1407223))))

(assert (=> b!2202480 (= res!946769 e!1407225)))

(declare-fun res!946763 () Bool)

(assert (=> b!2202480 (=> res!946763 e!1407225)))

(declare-fun nullableZipper!517 ((InoxSet Context!3614)) Bool)

(assert (=> b!2202480 (= res!946763 (not (nullableZipper!517 z!3888)))))

(declare-fun b!2202481 () Bool)

(declare-fun tp!685234 () Bool)

(declare-fun inv!34549 (Conc!8373) Bool)

(assert (=> b!2202481 (= e!1407222 (and (inv!34549 (c!351382 totalInput!891)) tp!685234))))

(assert (= (and start!213978 res!946762) b!2202478))

(assert (= (and b!2202478 res!946768) b!2202472))

(assert (= (and b!2202472 res!946765) b!2202476))

(assert (= (and b!2202476 res!946764) b!2202480))

(assert (= (and b!2202480 (not res!946763)) b!2202477))

(assert (= (and b!2202480 res!946769) b!2202474))

(assert (= (and b!2202474 res!946767) b!2202479))

(assert (= (and b!2202479 res!946766) b!2202473))

(assert (= start!213978 b!2202481))

(assert (= (and start!213978 condSetEmpty!19042) setIsEmpty!19042))

(assert (= (and start!213978 (not condSetEmpty!19042)) setNonEmpty!19042))

(assert (= setNonEmpty!19042 b!2202475))

(declare-fun m!2644785 () Bool)

(assert (=> b!2202473 m!2644785))

(declare-fun m!2644787 () Bool)

(assert (=> setNonEmpty!19042 m!2644787))

(declare-fun m!2644789 () Bool)

(assert (=> b!2202474 m!2644789))

(declare-fun m!2644791 () Bool)

(assert (=> b!2202481 m!2644791))

(declare-fun m!2644793 () Bool)

(assert (=> b!2202478 m!2644793))

(declare-fun m!2644795 () Bool)

(assert (=> b!2202480 m!2644795))

(declare-fun m!2644797 () Bool)

(assert (=> start!213978 m!2644797))

(declare-fun m!2644799 () Bool)

(assert (=> b!2202472 m!2644799))

(assert (=> b!2202472 m!2644799))

(declare-fun m!2644801 () Bool)

(assert (=> b!2202472 m!2644801))

(assert (=> b!2202472 m!2644801))

(declare-fun m!2644803 () Bool)

(assert (=> b!2202472 m!2644803))

(assert (=> b!2202472 m!2644803))

(declare-fun m!2644805 () Bool)

(assert (=> b!2202472 m!2644805))

(check-sat (not b!2202473) (not b!2202481) (not b!2202472) (not setNonEmpty!19042) (not start!213978) (not b!2202474) (not b!2202475) (not b!2202480) (not b!2202478))
(check-sat)
(get-model)

(declare-fun d!658788 () Bool)

(declare-fun c!351386 () Bool)

(get-info :version)

(assert (=> d!658788 (= c!351386 ((_ is Node!8373) (c!351382 totalInput!891)))))

(declare-fun e!1407230 () Bool)

(assert (=> d!658788 (= (inv!34549 (c!351382 totalInput!891)) e!1407230)))

(declare-fun b!2202488 () Bool)

(declare-fun inv!34550 (Conc!8373) Bool)

(assert (=> b!2202488 (= e!1407230 (inv!34550 (c!351382 totalInput!891)))))

(declare-fun b!2202489 () Bool)

(declare-fun e!1407231 () Bool)

(assert (=> b!2202489 (= e!1407230 e!1407231)))

(declare-fun res!946772 () Bool)

(assert (=> b!2202489 (= res!946772 (not ((_ is Leaf!12259) (c!351382 totalInput!891))))))

(assert (=> b!2202489 (=> res!946772 e!1407231)))

(declare-fun b!2202490 () Bool)

(declare-fun inv!34551 (Conc!8373) Bool)

(assert (=> b!2202490 (= e!1407231 (inv!34551 (c!351382 totalInput!891)))))

(assert (= (and d!658788 c!351386) b!2202488))

(assert (= (and d!658788 (not c!351386)) b!2202489))

(assert (= (and b!2202489 (not res!946772)) b!2202490))

(declare-fun m!2644807 () Bool)

(assert (=> b!2202488 m!2644807))

(declare-fun m!2644809 () Bool)

(assert (=> b!2202490 m!2644809))

(assert (=> b!2202481 d!658788))

(declare-fun d!658790 () Bool)

(declare-fun lambda!83000 () Int)

(declare-fun forall!5251 (List!25773 Int) Bool)

(assert (=> d!658790 (= (inv!34547 setElem!19042) (forall!5251 (exprs!2307 setElem!19042) lambda!83000))))

(declare-fun bs!450653 () Bool)

(assert (= bs!450653 d!658790))

(declare-fun m!2644865 () Bool)

(assert (=> bs!450653 m!2644865))

(assert (=> setNonEmpty!19042 d!658790))

(declare-fun b!2202579 () Bool)

(declare-fun e!1407285 () Bool)

(declare-fun lostCauseZipper!340 ((InoxSet Context!3614)) Bool)

(assert (=> b!2202579 (= e!1407285 (lostCauseZipper!340 z!3888))))

(declare-fun e!1407283 () Int)

(declare-fun b!2202580 () Bool)

(declare-fun e!1407284 () Int)

(declare-fun lt!823649 () (InoxSet Context!3614))

(assert (=> b!2202580 (= e!1407283 (furthestNullablePosition!387 lt!823649 (+ from!1082 1) totalInput!891 lt!823626 e!1407284))))

(declare-fun derivationStepZipper!293 ((InoxSet Context!3614) C!12620) (InoxSet Context!3614))

(declare-fun apply!6318 (BalanceConc!16508 Int) C!12620)

(assert (=> b!2202580 (= lt!823649 (derivationStepZipper!293 z!3888 (apply!6318 totalInput!891 from!1082)))))

(declare-fun c!351426 () Bool)

(assert (=> b!2202580 (= c!351426 (nullableZipper!517 lt!823649))))

(declare-fun b!2202581 () Bool)

(assert (=> b!2202581 (= e!1407283 lastNullablePos!161)))

(declare-fun lt!823650 () Int)

(declare-fun d!658812 () Bool)

(assert (=> d!658812 (and (>= lt!823650 (- 1)) (< lt!823650 lt!823626) (>= lt!823650 lastNullablePos!161) (or (= lt!823650 lastNullablePos!161) (>= lt!823650 from!1082)))))

(assert (=> d!658812 (= lt!823650 e!1407283)))

(declare-fun c!351427 () Bool)

(assert (=> d!658812 (= c!351427 e!1407285)))

(declare-fun res!946787 () Bool)

(assert (=> d!658812 (=> res!946787 e!1407285)))

(assert (=> d!658812 (= res!946787 (= from!1082 lt!823626))))

(assert (=> d!658812 (and (>= from!1082 0) (<= from!1082 lt!823626))))

(assert (=> d!658812 (= (furthestNullablePosition!387 z!3888 from!1082 totalInput!891 lt!823626 lastNullablePos!161) lt!823650)))

(declare-fun b!2202582 () Bool)

(assert (=> b!2202582 (= e!1407284 from!1082)))

(declare-fun b!2202583 () Bool)

(assert (=> b!2202583 (= e!1407284 lastNullablePos!161)))

(assert (= (and d!658812 (not res!946787)) b!2202579))

(assert (= (and d!658812 c!351427) b!2202581))

(assert (= (and d!658812 (not c!351427)) b!2202580))

(assert (= (and b!2202580 c!351426) b!2202582))

(assert (= (and b!2202580 (not c!351426)) b!2202583))

(declare-fun m!2644869 () Bool)

(assert (=> b!2202579 m!2644869))

(declare-fun m!2644871 () Bool)

(assert (=> b!2202580 m!2644871))

(declare-fun m!2644873 () Bool)

(assert (=> b!2202580 m!2644873))

(assert (=> b!2202580 m!2644873))

(declare-fun m!2644875 () Bool)

(assert (=> b!2202580 m!2644875))

(declare-fun m!2644877 () Bool)

(assert (=> b!2202580 m!2644877))

(assert (=> b!2202473 d!658812))

(declare-fun d!658816 () Bool)

(declare-fun isBalanced!2575 (Conc!8373) Bool)

(assert (=> d!658816 (= (inv!34548 totalInput!891) (isBalanced!2575 (c!351382 totalInput!891)))))

(declare-fun bs!450656 () Bool)

(assert (= bs!450656 d!658816))

(declare-fun m!2644881 () Bool)

(assert (=> bs!450656 m!2644881))

(assert (=> start!213978 d!658816))

(declare-fun d!658818 () Bool)

(declare-fun lt!823653 () Int)

(declare-fun size!20019 (List!25772) Int)

(assert (=> d!658818 (= lt!823653 (size!20019 (list!9905 totalInput!891)))))

(declare-fun size!20020 (Conc!8373) Int)

(assert (=> d!658818 (= lt!823653 (size!20020 (c!351382 totalInput!891)))))

(assert (=> d!658818 (= (size!20016 totalInput!891) lt!823653)))

(declare-fun bs!450657 () Bool)

(assert (= bs!450657 d!658818))

(assert (=> bs!450657 m!2644799))

(assert (=> bs!450657 m!2644799))

(declare-fun m!2644889 () Bool)

(assert (=> bs!450657 m!2644889))

(declare-fun m!2644891 () Bool)

(assert (=> bs!450657 m!2644891))

(assert (=> b!2202478 d!658818))

(declare-fun d!658820 () Bool)

(declare-fun lt!823656 () Bool)

(declare-fun isEmpty!14667 (List!25772) Bool)

(assert (=> d!658820 (= lt!823656 (isEmpty!14667 (list!9905 totalInput!891)))))

(declare-fun isEmpty!14668 (Conc!8373) Bool)

(assert (=> d!658820 (= lt!823656 (isEmpty!14668 (c!351382 totalInput!891)))))

(assert (=> d!658820 (= (isEmpty!14664 totalInput!891) lt!823656)))

(declare-fun bs!450658 () Bool)

(assert (= bs!450658 d!658820))

(assert (=> bs!450658 m!2644799))

(assert (=> bs!450658 m!2644799))

(declare-fun m!2644895 () Bool)

(assert (=> bs!450658 m!2644895))

(declare-fun m!2644897 () Bool)

(assert (=> bs!450658 m!2644897))

(assert (=> b!2202474 d!658820))

(declare-fun d!658822 () Bool)

(declare-fun lambda!83009 () Int)

(declare-fun exists!840 ((InoxSet Context!3614) Int) Bool)

(assert (=> d!658822 (= (nullableZipper!517 z!3888) (exists!840 z!3888 lambda!83009))))

(declare-fun bs!450659 () Bool)

(assert (= bs!450659 d!658822))

(declare-fun m!2644899 () Bool)

(assert (=> bs!450659 m!2644899))

(assert (=> b!2202480 d!658822))

(declare-fun c!351432 () Bool)

(declare-fun d!658824 () Bool)

(assert (=> d!658824 (= c!351432 (isEmpty!14667 (take!415 (drop!1425 (list!9905 totalInput!891) from!1082) knownSize!10)))))

(declare-fun e!1407300 () Bool)

(assert (=> d!658824 (= (matchZipper!323 z!3888 (take!415 (drop!1425 (list!9905 totalInput!891) from!1082) knownSize!10)) e!1407300)))

(declare-fun b!2202609 () Bool)

(assert (=> b!2202609 (= e!1407300 (nullableZipper!517 z!3888))))

(declare-fun b!2202610 () Bool)

(declare-fun head!4702 (List!25772) C!12620)

(declare-fun tail!3180 (List!25772) List!25772)

(assert (=> b!2202610 (= e!1407300 (matchZipper!323 (derivationStepZipper!293 z!3888 (head!4702 (take!415 (drop!1425 (list!9905 totalInput!891) from!1082) knownSize!10))) (tail!3180 (take!415 (drop!1425 (list!9905 totalInput!891) from!1082) knownSize!10))))))

(assert (= (and d!658824 c!351432) b!2202609))

(assert (= (and d!658824 (not c!351432)) b!2202610))

(assert (=> d!658824 m!2644803))

(declare-fun m!2644901 () Bool)

(assert (=> d!658824 m!2644901))

(assert (=> b!2202609 m!2644795))

(assert (=> b!2202610 m!2644803))

(declare-fun m!2644903 () Bool)

(assert (=> b!2202610 m!2644903))

(assert (=> b!2202610 m!2644903))

(declare-fun m!2644905 () Bool)

(assert (=> b!2202610 m!2644905))

(assert (=> b!2202610 m!2644803))

(declare-fun m!2644907 () Bool)

(assert (=> b!2202610 m!2644907))

(assert (=> b!2202610 m!2644905))

(assert (=> b!2202610 m!2644907))

(declare-fun m!2644909 () Bool)

(assert (=> b!2202610 m!2644909))

(assert (=> b!2202472 d!658824))

(declare-fun b!2202625 () Bool)

(declare-fun e!1407310 () Int)

(assert (=> b!2202625 (= e!1407310 (size!20019 (drop!1425 (list!9905 totalInput!891) from!1082)))))

(declare-fun b!2202626 () Bool)

(declare-fun e!1407311 () List!25772)

(assert (=> b!2202626 (= e!1407311 Nil!25688)))

(declare-fun b!2202627 () Bool)

(declare-fun e!1407312 () Bool)

(declare-fun lt!823659 () List!25772)

(declare-fun e!1407309 () Int)

(assert (=> b!2202627 (= e!1407312 (= (size!20019 lt!823659) e!1407309))))

(declare-fun c!351439 () Bool)

(assert (=> b!2202627 (= c!351439 (<= knownSize!10 0))))

(declare-fun b!2202628 () Bool)

(assert (=> b!2202628 (= e!1407309 0)))

(declare-fun d!658826 () Bool)

(assert (=> d!658826 e!1407312))

(declare-fun res!946790 () Bool)

(assert (=> d!658826 (=> (not res!946790) (not e!1407312))))

(declare-fun content!3488 (List!25772) (InoxSet C!12620))

(assert (=> d!658826 (= res!946790 (= ((_ map implies) (content!3488 lt!823659) (content!3488 (drop!1425 (list!9905 totalInput!891) from!1082))) ((as const (InoxSet C!12620)) true)))))

(assert (=> d!658826 (= lt!823659 e!1407311)))

(declare-fun c!351441 () Bool)

(assert (=> d!658826 (= c!351441 (or ((_ is Nil!25688) (drop!1425 (list!9905 totalInput!891) from!1082)) (<= knownSize!10 0)))))

(assert (=> d!658826 (= (take!415 (drop!1425 (list!9905 totalInput!891) from!1082) knownSize!10) lt!823659)))

(declare-fun b!2202629 () Bool)

(assert (=> b!2202629 (= e!1407309 e!1407310)))

(declare-fun c!351440 () Bool)

(assert (=> b!2202629 (= c!351440 (>= knownSize!10 (size!20019 (drop!1425 (list!9905 totalInput!891) from!1082))))))

(declare-fun b!2202630 () Bool)

(assert (=> b!2202630 (= e!1407311 (Cons!25688 (h!31089 (drop!1425 (list!9905 totalInput!891) from!1082)) (take!415 (t!198406 (drop!1425 (list!9905 totalInput!891) from!1082)) (- knownSize!10 1))))))

(declare-fun b!2202631 () Bool)

(assert (=> b!2202631 (= e!1407310 knownSize!10)))

(assert (= (and d!658826 c!351441) b!2202626))

(assert (= (and d!658826 (not c!351441)) b!2202630))

(assert (= (and d!658826 res!946790) b!2202627))

(assert (= (and b!2202627 c!351439) b!2202628))

(assert (= (and b!2202627 (not c!351439)) b!2202629))

(assert (= (and b!2202629 c!351440) b!2202625))

(assert (= (and b!2202629 (not c!351440)) b!2202631))

(declare-fun m!2644911 () Bool)

(assert (=> b!2202627 m!2644911))

(declare-fun m!2644913 () Bool)

(assert (=> b!2202630 m!2644913))

(assert (=> b!2202629 m!2644801))

(declare-fun m!2644915 () Bool)

(assert (=> b!2202629 m!2644915))

(declare-fun m!2644917 () Bool)

(assert (=> d!658826 m!2644917))

(assert (=> d!658826 m!2644801))

(declare-fun m!2644919 () Bool)

(assert (=> d!658826 m!2644919))

(assert (=> b!2202625 m!2644801))

(assert (=> b!2202625 m!2644915))

(assert (=> b!2202472 d!658826))

(declare-fun b!2202650 () Bool)

(declare-fun e!1407323 () Int)

(declare-fun call!132156 () Int)

(assert (=> b!2202650 (= e!1407323 call!132156)))

(declare-fun b!2202651 () Bool)

(declare-fun e!1407326 () Int)

(assert (=> b!2202651 (= e!1407326 0)))

(declare-fun b!2202652 () Bool)

(declare-fun e!1407327 () List!25772)

(assert (=> b!2202652 (= e!1407327 (list!9905 totalInput!891))))

(declare-fun b!2202653 () Bool)

(assert (=> b!2202653 (= e!1407326 (- call!132156 from!1082))))

(declare-fun bm!132151 () Bool)

(assert (=> bm!132151 (= call!132156 (size!20019 (list!9905 totalInput!891)))))

(declare-fun b!2202654 () Bool)

(declare-fun e!1407324 () List!25772)

(assert (=> b!2202654 (= e!1407324 Nil!25688)))

(declare-fun b!2202655 () Bool)

(assert (=> b!2202655 (= e!1407324 e!1407327)))

(declare-fun c!351452 () Bool)

(assert (=> b!2202655 (= c!351452 (<= from!1082 0))))

(declare-fun d!658828 () Bool)

(declare-fun e!1407325 () Bool)

(assert (=> d!658828 e!1407325))

(declare-fun res!946793 () Bool)

(assert (=> d!658828 (=> (not res!946793) (not e!1407325))))

(declare-fun lt!823662 () List!25772)

(assert (=> d!658828 (= res!946793 (= ((_ map implies) (content!3488 lt!823662) (content!3488 (list!9905 totalInput!891))) ((as const (InoxSet C!12620)) true)))))

(assert (=> d!658828 (= lt!823662 e!1407324)))

(declare-fun c!351451 () Bool)

(assert (=> d!658828 (= c!351451 ((_ is Nil!25688) (list!9905 totalInput!891)))))

(assert (=> d!658828 (= (drop!1425 (list!9905 totalInput!891) from!1082) lt!823662)))

(declare-fun b!2202656 () Bool)

(assert (=> b!2202656 (= e!1407327 (drop!1425 (t!198406 (list!9905 totalInput!891)) (- from!1082 1)))))

(declare-fun b!2202657 () Bool)

(assert (=> b!2202657 (= e!1407325 (= (size!20019 lt!823662) e!1407323))))

(declare-fun c!351450 () Bool)

(assert (=> b!2202657 (= c!351450 (<= from!1082 0))))

(declare-fun b!2202658 () Bool)

(assert (=> b!2202658 (= e!1407323 e!1407326)))

(declare-fun c!351453 () Bool)

(assert (=> b!2202658 (= c!351453 (>= from!1082 call!132156))))

(assert (= (and d!658828 c!351451) b!2202654))

(assert (= (and d!658828 (not c!351451)) b!2202655))

(assert (= (and b!2202655 c!351452) b!2202652))

(assert (= (and b!2202655 (not c!351452)) b!2202656))

(assert (= (and d!658828 res!946793) b!2202657))

(assert (= (and b!2202657 c!351450) b!2202650))

(assert (= (and b!2202657 (not c!351450)) b!2202658))

(assert (= (and b!2202658 c!351453) b!2202651))

(assert (= (and b!2202658 (not c!351453)) b!2202653))

(assert (= (or b!2202650 b!2202658 b!2202653) bm!132151))

(assert (=> bm!132151 m!2644799))

(assert (=> bm!132151 m!2644889))

(declare-fun m!2644921 () Bool)

(assert (=> d!658828 m!2644921))

(assert (=> d!658828 m!2644799))

(declare-fun m!2644923 () Bool)

(assert (=> d!658828 m!2644923))

(declare-fun m!2644925 () Bool)

(assert (=> b!2202656 m!2644925))

(declare-fun m!2644927 () Bool)

(assert (=> b!2202657 m!2644927))

(assert (=> b!2202472 d!658828))

(declare-fun d!658830 () Bool)

(declare-fun list!9907 (Conc!8373) List!25772)

(assert (=> d!658830 (= (list!9905 totalInput!891) (list!9907 (c!351382 totalInput!891)))))

(declare-fun bs!450660 () Bool)

(assert (= bs!450660 d!658830))

(declare-fun m!2644929 () Bool)

(assert (=> bs!450660 m!2644929))

(assert (=> b!2202472 d!658830))

(declare-fun tp!685265 () Bool)

(declare-fun e!1407333 () Bool)

(declare-fun tp!685266 () Bool)

(declare-fun b!2202667 () Bool)

(assert (=> b!2202667 (= e!1407333 (and (inv!34549 (left!19734 (c!351382 totalInput!891))) tp!685265 (inv!34549 (right!20064 (c!351382 totalInput!891))) tp!685266))))

(declare-fun b!2202669 () Bool)

(declare-fun e!1407332 () Bool)

(declare-fun tp!685264 () Bool)

(assert (=> b!2202669 (= e!1407332 tp!685264)))

(declare-fun b!2202668 () Bool)

(declare-fun inv!34555 (IArray!16751) Bool)

(assert (=> b!2202668 (= e!1407333 (and (inv!34555 (xs!11315 (c!351382 totalInput!891))) e!1407332))))

(assert (=> b!2202481 (= tp!685234 (and (inv!34549 (c!351382 totalInput!891)) e!1407333))))

(assert (= (and b!2202481 ((_ is Node!8373) (c!351382 totalInput!891))) b!2202667))

(assert (= b!2202668 b!2202669))

(assert (= (and b!2202481 ((_ is Leaf!12259) (c!351382 totalInput!891))) b!2202668))

(declare-fun m!2644931 () Bool)

(assert (=> b!2202667 m!2644931))

(declare-fun m!2644933 () Bool)

(assert (=> b!2202667 m!2644933))

(declare-fun m!2644935 () Bool)

(assert (=> b!2202668 m!2644935))

(assert (=> b!2202481 m!2644791))

(declare-fun condSetEmpty!19048 () Bool)

(assert (=> setNonEmpty!19042 (= condSetEmpty!19048 (= setRest!19042 ((as const (Array Context!3614 Bool)) false)))))

(declare-fun setRes!19048 () Bool)

(assert (=> setNonEmpty!19042 (= tp!685236 setRes!19048)))

(declare-fun setIsEmpty!19048 () Bool)

(assert (=> setIsEmpty!19048 setRes!19048))

(declare-fun e!1407336 () Bool)

(declare-fun setNonEmpty!19048 () Bool)

(declare-fun tp!685271 () Bool)

(declare-fun setElem!19048 () Context!3614)

(assert (=> setNonEmpty!19048 (= setRes!19048 (and tp!685271 (inv!34547 setElem!19048) e!1407336))))

(declare-fun setRest!19048 () (InoxSet Context!3614))

(assert (=> setNonEmpty!19048 (= setRest!19042 ((_ map or) (store ((as const (Array Context!3614 Bool)) false) setElem!19048 true) setRest!19048))))

(declare-fun b!2202674 () Bool)

(declare-fun tp!685272 () Bool)

(assert (=> b!2202674 (= e!1407336 tp!685272)))

(assert (= (and setNonEmpty!19042 condSetEmpty!19048) setIsEmpty!19048))

(assert (= (and setNonEmpty!19042 (not condSetEmpty!19048)) setNonEmpty!19048))

(assert (= setNonEmpty!19048 b!2202674))

(declare-fun m!2644937 () Bool)

(assert (=> setNonEmpty!19048 m!2644937))

(declare-fun b!2202679 () Bool)

(declare-fun e!1407339 () Bool)

(declare-fun tp!685277 () Bool)

(declare-fun tp!685278 () Bool)

(assert (=> b!2202679 (= e!1407339 (and tp!685277 tp!685278))))

(assert (=> b!2202475 (= tp!685235 e!1407339)))

(assert (= (and b!2202475 ((_ is Cons!25689) (exprs!2307 setElem!19042))) b!2202679))

(check-sat (not b!2202625) (not b!2202667) (not b!2202609) (not b!2202629) (not b!2202488) (not d!658790) (not b!2202580) (not d!658824) (not b!2202627) (not b!2202630) (not d!658828) (not bm!132151) (not b!2202668) (not b!2202657) (not b!2202481) (not b!2202490) (not d!658816) (not b!2202610) (not d!658818) (not b!2202579) (not d!658826) (not b!2202679) (not b!2202656) (not d!658820) (not setNonEmpty!19048) (not d!658830) (not d!658822) (not b!2202674) (not b!2202669))
(check-sat)
