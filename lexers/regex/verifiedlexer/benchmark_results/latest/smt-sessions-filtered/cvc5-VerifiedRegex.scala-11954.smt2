; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!669118 () Bool)

(assert start!669118)

(declare-fun b!6977997 () Bool)

(assert (=> b!6977997 true))

(declare-fun b!6977995 () Bool)

(assert (=> b!6977995 true))

(declare-fun res!2845379 () Bool)

(declare-fun e!4193779 () Bool)

(assert (=> start!669118 (=> (not res!2845379) (not e!4193779))))

(declare-datatypes ((C!34578 0))(
  ( (C!34579 (val!26991 Int)) )
))
(declare-datatypes ((Regex!17154 0))(
  ( (ElementMatch!17154 (c!1293375 C!34578)) (Concat!25999 (regOne!34820 Regex!17154) (regTwo!34820 Regex!17154)) (EmptyExpr!17154) (Star!17154 (reg!17483 Regex!17154)) (EmptyLang!17154) (Union!17154 (regOne!34821 Regex!17154) (regTwo!34821 Regex!17154)) )
))
(declare-datatypes ((List!67007 0))(
  ( (Nil!66883) (Cons!66883 (h!73331 Regex!17154) (t!380750 List!67007)) )
))
(declare-datatypes ((Context!12300 0))(
  ( (Context!12301 (exprs!6650 List!67007)) )
))
(declare-fun lt!2480452 () (Set Context!12300))

(declare-datatypes ((List!67008 0))(
  ( (Nil!66884) (Cons!66884 (h!73332 C!34578) (t!380751 List!67008)) )
))
(declare-fun s!7408 () List!67008)

(declare-fun matchZipper!2694 ((Set Context!12300) List!67008) Bool)

(assert (=> start!669118 (= res!2845379 (matchZipper!2694 lt!2480452 s!7408))))

(declare-fun z1!570 () (Set Context!12300))

(declare-fun ct2!306 () Context!12300)

(declare-fun appendTo!275 ((Set Context!12300) Context!12300) (Set Context!12300))

(assert (=> start!669118 (= lt!2480452 (appendTo!275 z1!570 ct2!306))))

(assert (=> start!669118 e!4193779))

(declare-fun condSetEmpty!47410 () Bool)

(assert (=> start!669118 (= condSetEmpty!47410 (= z1!570 (as set.empty (Set Context!12300))))))

(declare-fun setRes!47410 () Bool)

(assert (=> start!669118 setRes!47410))

(declare-fun e!4193774 () Bool)

(declare-fun inv!85745 (Context!12300) Bool)

(assert (=> start!669118 (and (inv!85745 ct2!306) e!4193774)))

(declare-fun e!4193775 () Bool)

(assert (=> start!669118 e!4193775))

(declare-fun e!4193777 () Bool)

(declare-fun setNonEmpty!47410 () Bool)

(declare-fun setElem!47410 () Context!12300)

(declare-fun tp!1927571 () Bool)

(assert (=> setNonEmpty!47410 (= setRes!47410 (and tp!1927571 (inv!85745 setElem!47410) e!4193777))))

(declare-fun setRest!47410 () (Set Context!12300))

(assert (=> setNonEmpty!47410 (= z1!570 (set.union (set.insert setElem!47410 (as set.empty (Set Context!12300))) setRest!47410))))

(declare-fun setIsEmpty!47410 () Bool)

(assert (=> setIsEmpty!47410 setRes!47410))

(declare-fun b!6977993 () Bool)

(declare-fun e!4193778 () Bool)

(declare-fun lt!2480456 () Context!12300)

(declare-fun lambda!398406 () Int)

(declare-fun forall!16032 (List!67007 Int) Bool)

(assert (=> b!6977993 (= e!4193778 (forall!16032 (exprs!6650 lt!2480456) lambda!398406))))

(declare-fun b!6977994 () Bool)

(declare-fun tp!1927573 () Bool)

(assert (=> b!6977994 (= e!4193774 tp!1927573)))

(declare-fun e!4193780 () Bool)

(declare-fun e!4193776 () Bool)

(assert (=> b!6977995 (= e!4193780 e!4193776)))

(declare-fun res!2845384 () Bool)

(assert (=> b!6977995 (=> res!2845384 e!4193776)))

(declare-fun lt!2480459 () Context!12300)

(declare-fun lt!2480460 () Context!12300)

(assert (=> b!6977995 (= res!2845384 (or (not (= lt!2480459 lt!2480460)) (not (set.member lt!2480456 z1!570))))))

(declare-fun ++!15099 (List!67007 List!67007) List!67007)

(assert (=> b!6977995 (= lt!2480459 (Context!12301 (++!15099 (exprs!6650 lt!2480456) (exprs!6650 ct2!306))))))

(declare-datatypes ((Unit!160957 0))(
  ( (Unit!160958) )
))
(declare-fun lt!2480453 () Unit!160957)

(declare-fun lemmaConcatPreservesForall!490 (List!67007 List!67007 Int) Unit!160957)

(assert (=> b!6977995 (= lt!2480453 (lemmaConcatPreservesForall!490 (exprs!6650 lt!2480456) (exprs!6650 ct2!306) lambda!398406))))

(declare-fun lambda!398405 () Int)

(declare-fun mapPost2!9 ((Set Context!12300) Int Context!12300) Context!12300)

(assert (=> b!6977995 (= lt!2480456 (mapPost2!9 z1!570 lambda!398405 lt!2480460))))

(declare-fun b!6977996 () Bool)

(declare-fun res!2845381 () Bool)

(assert (=> b!6977996 (=> res!2845381 e!4193780)))

(assert (=> b!6977996 (= res!2845381 (not (set.member lt!2480460 lt!2480452)))))

(assert (=> b!6977997 (= e!4193779 (not e!4193780))))

(declare-fun res!2845383 () Bool)

(assert (=> b!6977997 (=> res!2845383 e!4193780)))

(declare-fun lt!2480457 () (Set Context!12300))

(assert (=> b!6977997 (= res!2845383 (not (matchZipper!2694 lt!2480457 s!7408)))))

(assert (=> b!6977997 (= lt!2480457 (set.insert lt!2480460 (as set.empty (Set Context!12300))))))

(declare-fun lambda!398404 () Int)

(declare-fun getWitness!1010 ((Set Context!12300) Int) Context!12300)

(assert (=> b!6977997 (= lt!2480460 (getWitness!1010 lt!2480452 lambda!398404))))

(declare-datatypes ((List!67009 0))(
  ( (Nil!66885) (Cons!66885 (h!73333 Context!12300) (t!380752 List!67009)) )
))
(declare-fun lt!2480455 () List!67009)

(declare-fun exists!2899 (List!67009 Int) Bool)

(assert (=> b!6977997 (exists!2899 lt!2480455 lambda!398404)))

(declare-fun lt!2480454 () Unit!160957)

(declare-fun lemmaZipperMatchesExistsMatchingContext!123 (List!67009 List!67008) Unit!160957)

(assert (=> b!6977997 (= lt!2480454 (lemmaZipperMatchesExistsMatchingContext!123 lt!2480455 s!7408))))

(declare-fun toList!10514 ((Set Context!12300)) List!67009)

(assert (=> b!6977997 (= lt!2480455 (toList!10514 lt!2480452))))

(declare-fun b!6977998 () Bool)

(assert (=> b!6977998 (= e!4193776 e!4193778)))

(declare-fun res!2845380 () Bool)

(assert (=> b!6977998 (=> res!2845380 e!4193778)))

(assert (=> b!6977998 (= res!2845380 (not (= (set.insert lt!2480459 (as set.empty (Set Context!12300))) lt!2480457)))))

(declare-fun lt!2480458 () Unit!160957)

(assert (=> b!6977998 (= lt!2480458 (lemmaConcatPreservesForall!490 (exprs!6650 lt!2480456) (exprs!6650 ct2!306) lambda!398406))))

(declare-fun b!6977999 () Bool)

(declare-fun res!2845382 () Bool)

(assert (=> b!6977999 (=> (not res!2845382) (not e!4193779))))

(assert (=> b!6977999 (= res!2845382 (is-Cons!66884 s!7408))))

(declare-fun b!6978000 () Bool)

(declare-fun tp!1927574 () Bool)

(assert (=> b!6978000 (= e!4193777 tp!1927574)))

(declare-fun b!6978001 () Bool)

(declare-fun tp_is_empty!43533 () Bool)

(declare-fun tp!1927572 () Bool)

(assert (=> b!6978001 (= e!4193775 (and tp_is_empty!43533 tp!1927572))))

(assert (= (and start!669118 res!2845379) b!6977999))

(assert (= (and b!6977999 res!2845382) b!6977997))

(assert (= (and b!6977997 (not res!2845383)) b!6977996))

(assert (= (and b!6977996 (not res!2845381)) b!6977995))

(assert (= (and b!6977995 (not res!2845384)) b!6977998))

(assert (= (and b!6977998 (not res!2845380)) b!6977993))

(assert (= (and start!669118 condSetEmpty!47410) setIsEmpty!47410))

(assert (= (and start!669118 (not condSetEmpty!47410)) setNonEmpty!47410))

(assert (= setNonEmpty!47410 b!6978000))

(assert (= start!669118 b!6977994))

(assert (= (and start!669118 (is-Cons!66884 s!7408)) b!6978001))

(declare-fun m!7663666 () Bool)

(assert (=> b!6977996 m!7663666))

(declare-fun m!7663668 () Bool)

(assert (=> b!6977997 m!7663668))

(declare-fun m!7663670 () Bool)

(assert (=> b!6977997 m!7663670))

(declare-fun m!7663672 () Bool)

(assert (=> b!6977997 m!7663672))

(declare-fun m!7663674 () Bool)

(assert (=> b!6977997 m!7663674))

(declare-fun m!7663676 () Bool)

(assert (=> b!6977997 m!7663676))

(declare-fun m!7663678 () Bool)

(assert (=> b!6977997 m!7663678))

(declare-fun m!7663680 () Bool)

(assert (=> b!6977998 m!7663680))

(declare-fun m!7663682 () Bool)

(assert (=> b!6977998 m!7663682))

(declare-fun m!7663684 () Bool)

(assert (=> start!669118 m!7663684))

(declare-fun m!7663686 () Bool)

(assert (=> start!669118 m!7663686))

(declare-fun m!7663688 () Bool)

(assert (=> start!669118 m!7663688))

(declare-fun m!7663690 () Bool)

(assert (=> setNonEmpty!47410 m!7663690))

(declare-fun m!7663692 () Bool)

(assert (=> b!6977993 m!7663692))

(declare-fun m!7663694 () Bool)

(assert (=> b!6977995 m!7663694))

(declare-fun m!7663696 () Bool)

(assert (=> b!6977995 m!7663696))

(assert (=> b!6977995 m!7663682))

(declare-fun m!7663698 () Bool)

(assert (=> b!6977995 m!7663698))

(push 1)

(assert (not setNonEmpty!47410))

(assert (not b!6978000))

(assert (not b!6977993))

(assert (not b!6977997))

(assert (not start!669118))

(assert (not b!6977995))

(assert tp_is_empty!43533)

(assert (not b!6977994))

(assert (not b!6978001))

(assert (not b!6977998))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2172677 () Bool)

(declare-fun res!2845408 () Bool)

(declare-fun e!4193806 () Bool)

(assert (=> d!2172677 (=> res!2845408 e!4193806)))

(assert (=> d!2172677 (= res!2845408 (is-Nil!66883 (exprs!6650 lt!2480456)))))

(assert (=> d!2172677 (= (forall!16032 (exprs!6650 lt!2480456) lambda!398406) e!4193806)))

(declare-fun b!6978041 () Bool)

(declare-fun e!4193807 () Bool)

(assert (=> b!6978041 (= e!4193806 e!4193807)))

(declare-fun res!2845409 () Bool)

(assert (=> b!6978041 (=> (not res!2845409) (not e!4193807))))

(declare-fun dynLambda!26690 (Int Regex!17154) Bool)

(assert (=> b!6978041 (= res!2845409 (dynLambda!26690 lambda!398406 (h!73331 (exprs!6650 lt!2480456))))))

(declare-fun b!6978042 () Bool)

(assert (=> b!6978042 (= e!4193807 (forall!16032 (t!380750 (exprs!6650 lt!2480456)) lambda!398406))))

(assert (= (and d!2172677 (not res!2845408)) b!6978041))

(assert (= (and b!6978041 res!2845409) b!6978042))

(declare-fun b_lambda!261207 () Bool)

(assert (=> (not b_lambda!261207) (not b!6978041)))

(declare-fun m!7663734 () Bool)

(assert (=> b!6978041 m!7663734))

(declare-fun m!7663736 () Bool)

(assert (=> b!6978042 m!7663736))

(assert (=> b!6977993 d!2172677))

(declare-fun d!2172679 () Bool)

(assert (=> d!2172679 (forall!16032 (++!15099 (exprs!6650 lt!2480456) (exprs!6650 ct2!306)) lambda!398406)))

(declare-fun lt!2480492 () Unit!160957)

(declare-fun choose!51959 (List!67007 List!67007 Int) Unit!160957)

(assert (=> d!2172679 (= lt!2480492 (choose!51959 (exprs!6650 lt!2480456) (exprs!6650 ct2!306) lambda!398406))))

(assert (=> d!2172679 (forall!16032 (exprs!6650 lt!2480456) lambda!398406)))

(assert (=> d!2172679 (= (lemmaConcatPreservesForall!490 (exprs!6650 lt!2480456) (exprs!6650 ct2!306) lambda!398406) lt!2480492)))

(declare-fun bs!1860281 () Bool)

(assert (= bs!1860281 d!2172679))

(assert (=> bs!1860281 m!7663696))

(assert (=> bs!1860281 m!7663696))

(declare-fun m!7663738 () Bool)

(assert (=> bs!1860281 m!7663738))

(declare-fun m!7663740 () Bool)

(assert (=> bs!1860281 m!7663740))

(assert (=> bs!1860281 m!7663692))

(assert (=> b!6977998 d!2172679))

(declare-fun bs!1860282 () Bool)

(declare-fun d!2172681 () Bool)

(assert (= bs!1860282 (and d!2172681 b!6977995)))

(declare-fun lambda!398426 () Int)

(assert (=> bs!1860282 (= lambda!398426 lambda!398406)))

(assert (=> d!2172681 (= (inv!85745 setElem!47410) (forall!16032 (exprs!6650 setElem!47410) lambda!398426))))

(declare-fun bs!1860283 () Bool)

(assert (= bs!1860283 d!2172681))

(declare-fun m!7663742 () Bool)

(assert (=> bs!1860283 m!7663742))

(assert (=> setNonEmpty!47410 d!2172681))

(declare-fun d!2172683 () Bool)

(declare-fun c!1293385 () Bool)

(declare-fun isEmpty!39046 (List!67008) Bool)

(assert (=> d!2172683 (= c!1293385 (isEmpty!39046 s!7408))))

(declare-fun e!4193810 () Bool)

(assert (=> d!2172683 (= (matchZipper!2694 lt!2480457 s!7408) e!4193810)))

(declare-fun b!6978047 () Bool)

(declare-fun nullableZipper!2390 ((Set Context!12300)) Bool)

(assert (=> b!6978047 (= e!4193810 (nullableZipper!2390 lt!2480457))))

(declare-fun b!6978048 () Bool)

(declare-fun derivationStepZipper!2637 ((Set Context!12300) C!34578) (Set Context!12300))

(declare-fun head!14059 (List!67008) C!34578)

(declare-fun tail!13125 (List!67008) List!67008)

(assert (=> b!6978048 (= e!4193810 (matchZipper!2694 (derivationStepZipper!2637 lt!2480457 (head!14059 s!7408)) (tail!13125 s!7408)))))

(assert (= (and d!2172683 c!1293385) b!6978047))

(assert (= (and d!2172683 (not c!1293385)) b!6978048))

(declare-fun m!7663744 () Bool)

(assert (=> d!2172683 m!7663744))

(declare-fun m!7663746 () Bool)

(assert (=> b!6978047 m!7663746))

(declare-fun m!7663748 () Bool)

(assert (=> b!6978048 m!7663748))

(assert (=> b!6978048 m!7663748))

(declare-fun m!7663750 () Bool)

(assert (=> b!6978048 m!7663750))

(declare-fun m!7663752 () Bool)

(assert (=> b!6978048 m!7663752))

(assert (=> b!6978048 m!7663750))

(assert (=> b!6978048 m!7663752))

(declare-fun m!7663754 () Bool)

(assert (=> b!6978048 m!7663754))

(assert (=> b!6977997 d!2172683))

(declare-fun bs!1860284 () Bool)

(declare-fun d!2172685 () Bool)

(assert (= bs!1860284 (and d!2172685 b!6977997)))

(declare-fun lambda!398429 () Int)

(assert (=> bs!1860284 (= lambda!398429 lambda!398404)))

(assert (=> d!2172685 true))

(assert (=> d!2172685 (exists!2899 lt!2480455 lambda!398429)))

(declare-fun lt!2480495 () Unit!160957)

(declare-fun choose!51960 (List!67009 List!67008) Unit!160957)

(assert (=> d!2172685 (= lt!2480495 (choose!51960 lt!2480455 s!7408))))

(declare-fun content!13174 (List!67009) (Set Context!12300))

(assert (=> d!2172685 (matchZipper!2694 (content!13174 lt!2480455) s!7408)))

(assert (=> d!2172685 (= (lemmaZipperMatchesExistsMatchingContext!123 lt!2480455 s!7408) lt!2480495)))

(declare-fun bs!1860285 () Bool)

(assert (= bs!1860285 d!2172685))

(declare-fun m!7663756 () Bool)

(assert (=> bs!1860285 m!7663756))

(declare-fun m!7663758 () Bool)

(assert (=> bs!1860285 m!7663758))

(declare-fun m!7663760 () Bool)

(assert (=> bs!1860285 m!7663760))

(assert (=> bs!1860285 m!7663760))

(declare-fun m!7663762 () Bool)

(assert (=> bs!1860285 m!7663762))

(assert (=> b!6977997 d!2172685))

(declare-fun bs!1860286 () Bool)

(declare-fun d!2172687 () Bool)

(assert (= bs!1860286 (and d!2172687 b!6977997)))

(declare-fun lambda!398432 () Int)

(assert (=> bs!1860286 (not (= lambda!398432 lambda!398404))))

(declare-fun bs!1860287 () Bool)

(assert (= bs!1860287 (and d!2172687 d!2172685)))

(assert (=> bs!1860287 (not (= lambda!398432 lambda!398429))))

(assert (=> d!2172687 true))

(declare-fun order!27813 () Int)

(declare-fun dynLambda!26691 (Int Int) Int)

(assert (=> d!2172687 (< (dynLambda!26691 order!27813 lambda!398404) (dynLambda!26691 order!27813 lambda!398432))))

(declare-fun forall!16034 (List!67009 Int) Bool)

(assert (=> d!2172687 (= (exists!2899 lt!2480455 lambda!398404) (not (forall!16034 lt!2480455 lambda!398432)))))

(declare-fun bs!1860288 () Bool)

(assert (= bs!1860288 d!2172687))

(declare-fun m!7663764 () Bool)

(assert (=> bs!1860288 m!7663764))

(assert (=> b!6977997 d!2172687))

(declare-fun d!2172689 () Bool)

(declare-fun e!4193813 () Bool)

(assert (=> d!2172689 e!4193813))

(declare-fun res!2845413 () Bool)

(assert (=> d!2172689 (=> (not res!2845413) (not e!4193813))))

(declare-fun lt!2480498 () List!67009)

(declare-fun noDuplicate!2480 (List!67009) Bool)

(assert (=> d!2172689 (= res!2845413 (noDuplicate!2480 lt!2480498))))

(declare-fun choose!51961 ((Set Context!12300)) List!67009)

(assert (=> d!2172689 (= lt!2480498 (choose!51961 lt!2480452))))

(assert (=> d!2172689 (= (toList!10514 lt!2480452) lt!2480498)))

(declare-fun b!6978053 () Bool)

(assert (=> b!6978053 (= e!4193813 (= (content!13174 lt!2480498) lt!2480452))))

(assert (= (and d!2172689 res!2845413) b!6978053))

(declare-fun m!7663766 () Bool)

(assert (=> d!2172689 m!7663766))

(declare-fun m!7663768 () Bool)

(assert (=> d!2172689 m!7663768))

(declare-fun m!7663770 () Bool)

(assert (=> b!6978053 m!7663770))

(assert (=> b!6977997 d!2172689))

(declare-fun d!2172691 () Bool)

(declare-fun e!4193816 () Bool)

(assert (=> d!2172691 e!4193816))

(declare-fun res!2845416 () Bool)

(assert (=> d!2172691 (=> (not res!2845416) (not e!4193816))))

(declare-fun lt!2480501 () Context!12300)

(declare-fun dynLambda!26692 (Int Context!12300) Bool)

(assert (=> d!2172691 (= res!2845416 (dynLambda!26692 lambda!398404 lt!2480501))))

(declare-fun getWitness!1012 (List!67009 Int) Context!12300)

(assert (=> d!2172691 (= lt!2480501 (getWitness!1012 (toList!10514 lt!2480452) lambda!398404))))

(declare-fun exists!2901 ((Set Context!12300) Int) Bool)

(assert (=> d!2172691 (exists!2901 lt!2480452 lambda!398404)))

(assert (=> d!2172691 (= (getWitness!1010 lt!2480452 lambda!398404) lt!2480501)))

(declare-fun b!6978056 () Bool)

(assert (=> b!6978056 (= e!4193816 (set.member lt!2480501 lt!2480452))))

(assert (= (and d!2172691 res!2845416) b!6978056))

(declare-fun b_lambda!261209 () Bool)

(assert (=> (not b_lambda!261209) (not d!2172691)))

(declare-fun m!7663772 () Bool)

(assert (=> d!2172691 m!7663772))

(assert (=> d!2172691 m!7663672))

(assert (=> d!2172691 m!7663672))

(declare-fun m!7663774 () Bool)

(assert (=> d!2172691 m!7663774))

(declare-fun m!7663776 () Bool)

(assert (=> d!2172691 m!7663776))

(declare-fun m!7663778 () Bool)

(assert (=> b!6978056 m!7663778))

(assert (=> b!6977997 d!2172691))

(declare-fun d!2172693 () Bool)

(declare-fun c!1293388 () Bool)

(assert (=> d!2172693 (= c!1293388 (isEmpty!39046 s!7408))))

(declare-fun e!4193817 () Bool)

(assert (=> d!2172693 (= (matchZipper!2694 lt!2480452 s!7408) e!4193817)))

(declare-fun b!6978057 () Bool)

(assert (=> b!6978057 (= e!4193817 (nullableZipper!2390 lt!2480452))))

(declare-fun b!6978058 () Bool)

(assert (=> b!6978058 (= e!4193817 (matchZipper!2694 (derivationStepZipper!2637 lt!2480452 (head!14059 s!7408)) (tail!13125 s!7408)))))

(assert (= (and d!2172693 c!1293388) b!6978057))

(assert (= (and d!2172693 (not c!1293388)) b!6978058))

(assert (=> d!2172693 m!7663744))

(declare-fun m!7663780 () Bool)

(assert (=> b!6978057 m!7663780))

(assert (=> b!6978058 m!7663748))

(assert (=> b!6978058 m!7663748))

(declare-fun m!7663782 () Bool)

(assert (=> b!6978058 m!7663782))

(assert (=> b!6978058 m!7663752))

(assert (=> b!6978058 m!7663782))

(assert (=> b!6978058 m!7663752))

(declare-fun m!7663784 () Bool)

(assert (=> b!6978058 m!7663784))

(assert (=> start!669118 d!2172693))

(declare-fun bs!1860289 () Bool)

(declare-fun d!2172697 () Bool)

(assert (= bs!1860289 (and d!2172697 b!6977995)))

(declare-fun lambda!398437 () Int)

(assert (=> bs!1860289 (= lambda!398437 lambda!398405)))

(assert (=> d!2172697 true))

(declare-fun map!15405 ((Set Context!12300) Int) (Set Context!12300))

(assert (=> d!2172697 (= (appendTo!275 z1!570 ct2!306) (map!15405 z1!570 lambda!398437))))

(declare-fun bs!1860290 () Bool)

(assert (= bs!1860290 d!2172697))

(declare-fun m!7663786 () Bool)

(assert (=> bs!1860290 m!7663786))

(assert (=> start!669118 d!2172697))

(declare-fun bs!1860291 () Bool)

(declare-fun d!2172699 () Bool)

(assert (= bs!1860291 (and d!2172699 b!6977995)))

(declare-fun lambda!398438 () Int)

(assert (=> bs!1860291 (= lambda!398438 lambda!398406)))

(declare-fun bs!1860292 () Bool)

(assert (= bs!1860292 (and d!2172699 d!2172681)))

(assert (=> bs!1860292 (= lambda!398438 lambda!398426)))

(assert (=> d!2172699 (= (inv!85745 ct2!306) (forall!16032 (exprs!6650 ct2!306) lambda!398438))))

(declare-fun bs!1860293 () Bool)

(assert (= bs!1860293 d!2172699))

(declare-fun m!7663788 () Bool)

(assert (=> bs!1860293 m!7663788))

(assert (=> start!669118 d!2172699))

(declare-fun b!6978067 () Bool)

(declare-fun e!4193822 () List!67007)

(assert (=> b!6978067 (= e!4193822 (exprs!6650 ct2!306))))

(declare-fun d!2172701 () Bool)

(declare-fun e!4193823 () Bool)

(assert (=> d!2172701 e!4193823))

(declare-fun res!2845421 () Bool)

(assert (=> d!2172701 (=> (not res!2845421) (not e!4193823))))

(declare-fun lt!2480509 () List!67007)

(declare-fun content!13175 (List!67007) (Set Regex!17154))

(assert (=> d!2172701 (= res!2845421 (= (content!13175 lt!2480509) (set.union (content!13175 (exprs!6650 lt!2480456)) (content!13175 (exprs!6650 ct2!306)))))))

(assert (=> d!2172701 (= lt!2480509 e!4193822)))

(declare-fun c!1293392 () Bool)

(assert (=> d!2172701 (= c!1293392 (is-Nil!66883 (exprs!6650 lt!2480456)))))

(assert (=> d!2172701 (= (++!15099 (exprs!6650 lt!2480456) (exprs!6650 ct2!306)) lt!2480509)))

(declare-fun b!6978068 () Bool)

(assert (=> b!6978068 (= e!4193822 (Cons!66883 (h!73331 (exprs!6650 lt!2480456)) (++!15099 (t!380750 (exprs!6650 lt!2480456)) (exprs!6650 ct2!306))))))

(declare-fun b!6978069 () Bool)

(declare-fun res!2845422 () Bool)

(assert (=> b!6978069 (=> (not res!2845422) (not e!4193823))))

(declare-fun size!40862 (List!67007) Int)

(assert (=> b!6978069 (= res!2845422 (= (size!40862 lt!2480509) (+ (size!40862 (exprs!6650 lt!2480456)) (size!40862 (exprs!6650 ct2!306)))))))

(declare-fun b!6978070 () Bool)

(assert (=> b!6978070 (= e!4193823 (or (not (= (exprs!6650 ct2!306) Nil!66883)) (= lt!2480509 (exprs!6650 lt!2480456))))))

(assert (= (and d!2172701 c!1293392) b!6978067))

(assert (= (and d!2172701 (not c!1293392)) b!6978068))

(assert (= (and d!2172701 res!2845421) b!6978069))

(assert (= (and b!6978069 res!2845422) b!6978070))

(declare-fun m!7663794 () Bool)

(assert (=> d!2172701 m!7663794))

(declare-fun m!7663796 () Bool)

(assert (=> d!2172701 m!7663796))

(declare-fun m!7663798 () Bool)

(assert (=> d!2172701 m!7663798))

(declare-fun m!7663800 () Bool)

(assert (=> b!6978068 m!7663800))

(declare-fun m!7663802 () Bool)

(assert (=> b!6978069 m!7663802))

(declare-fun m!7663804 () Bool)

(assert (=> b!6978069 m!7663804))

(declare-fun m!7663806 () Bool)

(assert (=> b!6978069 m!7663806))

(assert (=> b!6977995 d!2172701))

(assert (=> b!6977995 d!2172679))

(declare-fun d!2172705 () Bool)

(declare-fun e!4193826 () Bool)

(assert (=> d!2172705 e!4193826))

(declare-fun res!2845425 () Bool)

(assert (=> d!2172705 (=> (not res!2845425) (not e!4193826))))

(declare-fun lt!2480512 () Context!12300)

(declare-fun dynLambda!26693 (Int Context!12300) Context!12300)

(assert (=> d!2172705 (= res!2845425 (= lt!2480460 (dynLambda!26693 lambda!398405 lt!2480512)))))

(declare-fun choose!51962 ((Set Context!12300) Int Context!12300) Context!12300)

(assert (=> d!2172705 (= lt!2480512 (choose!51962 z1!570 lambda!398405 lt!2480460))))

(assert (=> d!2172705 (set.member lt!2480460 (map!15405 z1!570 lambda!398405))))

(assert (=> d!2172705 (= (mapPost2!9 z1!570 lambda!398405 lt!2480460) lt!2480512)))

(declare-fun b!6978074 () Bool)

(assert (=> b!6978074 (= e!4193826 (set.member lt!2480512 z1!570))))

(assert (= (and d!2172705 res!2845425) b!6978074))

(declare-fun b_lambda!261211 () Bool)

(assert (=> (not b_lambda!261211) (not d!2172705)))

(declare-fun m!7663808 () Bool)

(assert (=> d!2172705 m!7663808))

(declare-fun m!7663810 () Bool)

(assert (=> d!2172705 m!7663810))

(declare-fun m!7663812 () Bool)

(assert (=> d!2172705 m!7663812))

(declare-fun m!7663814 () Bool)

(assert (=> d!2172705 m!7663814))

(declare-fun m!7663816 () Bool)

(assert (=> b!6978074 m!7663816))

(assert (=> b!6977995 d!2172705))

(declare-fun b!6978079 () Bool)

(declare-fun e!4193829 () Bool)

(declare-fun tp!1927591 () Bool)

(declare-fun tp!1927592 () Bool)

(assert (=> b!6978079 (= e!4193829 (and tp!1927591 tp!1927592))))

(assert (=> b!6977994 (= tp!1927573 e!4193829)))

(assert (= (and b!6977994 (is-Cons!66883 (exprs!6650 ct2!306))) b!6978079))

(declare-fun condSetEmpty!47416 () Bool)

(assert (=> setNonEmpty!47410 (= condSetEmpty!47416 (= setRest!47410 (as set.empty (Set Context!12300))))))

(declare-fun setRes!47416 () Bool)

(assert (=> setNonEmpty!47410 (= tp!1927571 setRes!47416)))

(declare-fun setIsEmpty!47416 () Bool)

(assert (=> setIsEmpty!47416 setRes!47416))

(declare-fun setElem!47416 () Context!12300)

(declare-fun tp!1927598 () Bool)

(declare-fun setNonEmpty!47416 () Bool)

(declare-fun e!4193832 () Bool)

(assert (=> setNonEmpty!47416 (= setRes!47416 (and tp!1927598 (inv!85745 setElem!47416) e!4193832))))

(declare-fun setRest!47416 () (Set Context!12300))

(assert (=> setNonEmpty!47416 (= setRest!47410 (set.union (set.insert setElem!47416 (as set.empty (Set Context!12300))) setRest!47416))))

(declare-fun b!6978084 () Bool)

(declare-fun tp!1927597 () Bool)

(assert (=> b!6978084 (= e!4193832 tp!1927597)))

(assert (= (and setNonEmpty!47410 condSetEmpty!47416) setIsEmpty!47416))

(assert (= (and setNonEmpty!47410 (not condSetEmpty!47416)) setNonEmpty!47416))

(assert (= setNonEmpty!47416 b!6978084))

(declare-fun m!7663818 () Bool)

(assert (=> setNonEmpty!47416 m!7663818))

(declare-fun b!6978085 () Bool)

(declare-fun e!4193833 () Bool)

(declare-fun tp!1927599 () Bool)

(declare-fun tp!1927600 () Bool)

(assert (=> b!6978085 (= e!4193833 (and tp!1927599 tp!1927600))))

(assert (=> b!6978000 (= tp!1927574 e!4193833)))

(assert (= (and b!6978000 (is-Cons!66883 (exprs!6650 setElem!47410))) b!6978085))

(declare-fun b!6978090 () Bool)

(declare-fun e!4193836 () Bool)

(declare-fun tp!1927603 () Bool)

(assert (=> b!6978090 (= e!4193836 (and tp_is_empty!43533 tp!1927603))))

(assert (=> b!6978001 (= tp!1927572 e!4193836)))

(assert (= (and b!6978001 (is-Cons!66884 (t!380751 s!7408))) b!6978090))

(declare-fun b_lambda!261213 () Bool)

(assert (= b_lambda!261211 (or b!6977995 b_lambda!261213)))

(declare-fun bs!1860295 () Bool)

(declare-fun d!2172707 () Bool)

(assert (= bs!1860295 (and d!2172707 b!6977995)))

(declare-fun lt!2480515 () Unit!160957)

(assert (=> bs!1860295 (= lt!2480515 (lemmaConcatPreservesForall!490 (exprs!6650 lt!2480512) (exprs!6650 ct2!306) lambda!398406))))

(assert (=> bs!1860295 (= (dynLambda!26693 lambda!398405 lt!2480512) (Context!12301 (++!15099 (exprs!6650 lt!2480512) (exprs!6650 ct2!306))))))

(declare-fun m!7663820 () Bool)

(assert (=> bs!1860295 m!7663820))

(declare-fun m!7663822 () Bool)

(assert (=> bs!1860295 m!7663822))

(assert (=> d!2172705 d!2172707))

(declare-fun b_lambda!261215 () Bool)

(assert (= b_lambda!261207 (or b!6977995 b_lambda!261215)))

(declare-fun bs!1860296 () Bool)

(declare-fun d!2172709 () Bool)

(assert (= bs!1860296 (and d!2172709 b!6977995)))

(declare-fun validRegex!8826 (Regex!17154) Bool)

(assert (=> bs!1860296 (= (dynLambda!26690 lambda!398406 (h!73331 (exprs!6650 lt!2480456))) (validRegex!8826 (h!73331 (exprs!6650 lt!2480456))))))

(declare-fun m!7663824 () Bool)

(assert (=> bs!1860296 m!7663824))

(assert (=> b!6978041 d!2172709))

(declare-fun b_lambda!261217 () Bool)

(assert (= b_lambda!261209 (or b!6977997 b_lambda!261217)))

(declare-fun bs!1860297 () Bool)

(declare-fun d!2172711 () Bool)

(assert (= bs!1860297 (and d!2172711 b!6977997)))

(assert (=> bs!1860297 (= (dynLambda!26692 lambda!398404 lt!2480501) (matchZipper!2694 (set.insert lt!2480501 (as set.empty (Set Context!12300))) s!7408))))

(declare-fun m!7663826 () Bool)

(assert (=> bs!1860297 m!7663826))

(assert (=> bs!1860297 m!7663826))

(declare-fun m!7663828 () Bool)

(assert (=> bs!1860297 m!7663828))

(assert (=> d!2172691 d!2172711))

(push 1)

(assert (not d!2172693))

(assert (not d!2172689))

(assert (not bs!1860295))

(assert (not b_lambda!261213))

(assert (not d!2172701))

(assert tp_is_empty!43533)

(assert (not b!6978058))

(assert (not b!6978048))

(assert (not b_lambda!261217))

(assert (not bs!1860297))

(assert (not d!2172697))

(assert (not setNonEmpty!47416))

(assert (not d!2172699))

(assert (not b!6978053))

(assert (not b!6978069))

(assert (not d!2172681))

(assert (not b!6978057))

(assert (not d!2172691))

(assert (not b!6978090))

(assert (not b!6978085))

(assert (not b!6978068))

(assert (not d!2172687))

(assert (not b!6978084))

(assert (not bs!1860296))

(assert (not d!2172705))

(assert (not b!6978079))

(assert (not d!2172683))

(assert (not b!6978047))

(assert (not b_lambda!261215))

(assert (not d!2172679))

(assert (not d!2172685))

(assert (not b!6978042))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

