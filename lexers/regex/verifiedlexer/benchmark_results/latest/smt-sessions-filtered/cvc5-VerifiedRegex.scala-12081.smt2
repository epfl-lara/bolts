; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!677556 () Bool)

(assert start!677556)

(declare-fun b!7022488 () Bool)

(assert (=> b!7022488 true))

(declare-fun bs!1867922 () Bool)

(declare-fun b!7022486 () Bool)

(assert (= bs!1867922 (and b!7022486 b!7022488)))

(declare-fun lambda!411877 () Int)

(declare-fun lambda!411876 () Int)

(assert (=> bs!1867922 (not (= lambda!411877 lambda!411876))))

(declare-fun b!7022480 () Bool)

(declare-fun res!2866605 () Bool)

(declare-fun e!4221440 () Bool)

(assert (=> b!7022480 (=> (not res!2866605) (not e!4221440))))

(declare-datatypes ((C!35086 0))(
  ( (C!35087 (val!27245 Int)) )
))
(declare-datatypes ((Regex!17408 0))(
  ( (ElementMatch!17408 (c!1305147 C!35086)) (Concat!26253 (regOne!35328 Regex!17408) (regTwo!35328 Regex!17408)) (EmptyExpr!17408) (Star!17408 (reg!17737 Regex!17408)) (EmptyLang!17408) (Union!17408 (regOne!35329 Regex!17408) (regTwo!35329 Regex!17408)) )
))
(declare-datatypes ((List!67764 0))(
  ( (Nil!67640) (Cons!67640 (h!74088 Regex!17408) (t!381519 List!67764)) )
))
(declare-datatypes ((Context!12808 0))(
  ( (Context!12809 (exprs!6904 List!67764)) )
))
(declare-fun lt!2512533 () (Set Context!12808))

(declare-fun nullableZipper!2537 ((Set Context!12808)) Bool)

(assert (=> b!7022480 (= res!2866605 (nullableZipper!2537 lt!2512533))))

(declare-fun b!7022481 () Bool)

(declare-fun res!2866600 () Bool)

(assert (=> b!7022481 (=> (not res!2866600) (not e!4221440))))

(declare-fun lambda!411874 () Int)

(declare-fun exists!3305 ((Set Context!12808) Int) Bool)

(assert (=> b!7022481 (= res!2866600 (exists!3305 lt!2512533 lambda!411874))))

(declare-fun b!7022482 () Bool)

(declare-fun e!4221438 () Bool)

(assert (=> b!7022482 (= e!4221440 e!4221438)))

(declare-fun res!2866603 () Bool)

(assert (=> b!7022482 (=> (not res!2866603) (not e!4221438))))

(declare-fun lt!2512535 () Context!12808)

(declare-fun nullableContext!68 (Context!12808) Bool)

(assert (=> b!7022482 (= res!2866603 (nullableContext!68 lt!2512535))))

(declare-fun getWitness!1386 ((Set Context!12808) Int) Context!12808)

(assert (=> b!7022482 (= lt!2512535 (getWitness!1386 lt!2512533 lambda!411874))))

(declare-fun b!7022483 () Bool)

(declare-fun e!4221435 () Bool)

(declare-fun tp_is_empty!44041 () Bool)

(declare-fun tp!1934595 () Bool)

(assert (=> b!7022483 (= e!4221435 (and tp_is_empty!44041 tp!1934595))))

(declare-fun b!7022484 () Bool)

(declare-fun e!4221439 () Bool)

(declare-fun tp!1934594 () Bool)

(assert (=> b!7022484 (= e!4221439 tp!1934594)))

(declare-fun b!7022485 () Bool)

(declare-fun res!2866602 () Bool)

(assert (=> b!7022485 (=> (not res!2866602) (not e!4221440))))

(declare-datatypes ((List!67765 0))(
  ( (Nil!67641) (Cons!67641 (h!74089 C!35086) (t!381520 List!67765)) )
))
(declare-fun s!7408 () List!67765)

(assert (=> b!7022485 (= res!2866602 (not (is-Cons!67641 s!7408)))))

(declare-fun setIsEmpty!48803 () Bool)

(declare-fun setRes!48803 () Bool)

(assert (=> setIsEmpty!48803 setRes!48803))

(declare-fun setNonEmpty!48803 () Bool)

(declare-fun setElem!48803 () Context!12808)

(declare-fun tp!1934597 () Bool)

(declare-fun e!4221437 () Bool)

(declare-fun inv!86380 (Context!12808) Bool)

(assert (=> setNonEmpty!48803 (= setRes!48803 (and tp!1934597 (inv!86380 setElem!48803) e!4221437))))

(declare-fun z1!570 () (Set Context!12808))

(declare-fun setRest!48803 () (Set Context!12808))

(assert (=> setNonEmpty!48803 (= z1!570 (set.union (set.insert setElem!48803 (as set.empty (Set Context!12808))) setRest!48803))))

(declare-fun b!7022487 () Bool)

(declare-fun tp!1934596 () Bool)

(assert (=> b!7022487 (= e!4221437 tp!1934596)))

(declare-fun e!4221436 () Bool)

(assert (=> b!7022488 (= e!4221438 e!4221436)))

(declare-fun res!2866601 () Bool)

(assert (=> b!7022488 (=> (not res!2866601) (not e!4221436))))

(declare-fun lt!2512531 () List!67764)

(assert (=> b!7022488 (= res!2866601 (= (Context!12809 lt!2512531) lt!2512535))))

(declare-fun lt!2512534 () Context!12808)

(declare-fun ct2!306 () Context!12808)

(declare-fun ++!15443 (List!67764 List!67764) List!67764)

(assert (=> b!7022488 (= lt!2512531 (++!15443 (exprs!6904 lt!2512534) (exprs!6904 ct2!306)))))

(declare-datatypes ((Unit!161482 0))(
  ( (Unit!161483) )
))
(declare-fun lt!2512528 () Unit!161482)

(declare-fun lemmaConcatPreservesForall!735 (List!67764 List!67764 Int) Unit!161482)

(assert (=> b!7022488 (= lt!2512528 (lemmaConcatPreservesForall!735 (exprs!6904 lt!2512534) (exprs!6904 ct2!306) lambda!411876))))

(declare-fun lambda!411875 () Int)

(declare-fun mapPost2!255 ((Set Context!12808) Int Context!12808) Context!12808)

(assert (=> b!7022488 (= lt!2512534 (mapPost2!255 z1!570 lambda!411875 lt!2512535))))

(declare-fun forall!16314 (List!67764 Int) Bool)

(assert (=> b!7022486 (= e!4221436 (not (forall!16314 lt!2512531 lambda!411877)))))

(declare-fun lt!2512532 () Unit!161482)

(declare-fun lemmaContentSubsetPreservesForall!335 (List!67764 List!67764 Int) Unit!161482)

(assert (=> b!7022486 (= lt!2512532 (lemmaContentSubsetPreservesForall!335 lt!2512531 (exprs!6904 lt!2512534) lambda!411877))))

(declare-fun subseq!684 (List!67764 List!67764) Bool)

(assert (=> b!7022486 (subseq!684 (exprs!6904 ct2!306) lt!2512531)))

(declare-fun lt!2512529 () Unit!161482)

(declare-fun lemmaConcatThenSecondSubseqOfTot!5 (List!67764 List!67764) Unit!161482)

(assert (=> b!7022486 (= lt!2512529 (lemmaConcatThenSecondSubseqOfTot!5 (exprs!6904 lt!2512534) (exprs!6904 ct2!306)))))

(assert (=> b!7022486 (subseq!684 (exprs!6904 lt!2512534) lt!2512531)))

(declare-fun lt!2512530 () Unit!161482)

(declare-fun lemmaConcatThenFirstSubseqOfTot!5 (List!67764 List!67764) Unit!161482)

(assert (=> b!7022486 (= lt!2512530 (lemmaConcatThenFirstSubseqOfTot!5 (exprs!6904 lt!2512534) (exprs!6904 ct2!306)))))

(declare-fun res!2866604 () Bool)

(assert (=> start!677556 (=> (not res!2866604) (not e!4221440))))

(declare-fun matchZipper!2948 ((Set Context!12808) List!67765) Bool)

(assert (=> start!677556 (= res!2866604 (matchZipper!2948 lt!2512533 s!7408))))

(declare-fun appendTo!529 ((Set Context!12808) Context!12808) (Set Context!12808))

(assert (=> start!677556 (= lt!2512533 (appendTo!529 z1!570 ct2!306))))

(assert (=> start!677556 e!4221440))

(declare-fun condSetEmpty!48803 () Bool)

(assert (=> start!677556 (= condSetEmpty!48803 (= z1!570 (as set.empty (Set Context!12808))))))

(assert (=> start!677556 setRes!48803))

(assert (=> start!677556 (and (inv!86380 ct2!306) e!4221439)))

(assert (=> start!677556 e!4221435))

(assert (= (and start!677556 res!2866604) b!7022485))

(assert (= (and b!7022485 res!2866602) b!7022480))

(assert (= (and b!7022480 res!2866605) b!7022481))

(assert (= (and b!7022481 res!2866600) b!7022482))

(assert (= (and b!7022482 res!2866603) b!7022488))

(assert (= (and b!7022488 res!2866601) b!7022486))

(assert (= (and start!677556 condSetEmpty!48803) setIsEmpty!48803))

(assert (= (and start!677556 (not condSetEmpty!48803)) setNonEmpty!48803))

(assert (= setNonEmpty!48803 b!7022487))

(assert (= start!677556 b!7022484))

(assert (= (and start!677556 (is-Cons!67641 s!7408)) b!7022483))

(declare-fun m!7724582 () Bool)

(assert (=> start!677556 m!7724582))

(declare-fun m!7724584 () Bool)

(assert (=> start!677556 m!7724584))

(declare-fun m!7724586 () Bool)

(assert (=> start!677556 m!7724586))

(declare-fun m!7724588 () Bool)

(assert (=> setNonEmpty!48803 m!7724588))

(declare-fun m!7724590 () Bool)

(assert (=> b!7022486 m!7724590))

(declare-fun m!7724592 () Bool)

(assert (=> b!7022486 m!7724592))

(declare-fun m!7724594 () Bool)

(assert (=> b!7022486 m!7724594))

(declare-fun m!7724596 () Bool)

(assert (=> b!7022486 m!7724596))

(declare-fun m!7724598 () Bool)

(assert (=> b!7022486 m!7724598))

(declare-fun m!7724600 () Bool)

(assert (=> b!7022486 m!7724600))

(declare-fun m!7724602 () Bool)

(assert (=> b!7022480 m!7724602))

(declare-fun m!7724604 () Bool)

(assert (=> b!7022482 m!7724604))

(declare-fun m!7724606 () Bool)

(assert (=> b!7022482 m!7724606))

(declare-fun m!7724608 () Bool)

(assert (=> b!7022481 m!7724608))

(declare-fun m!7724610 () Bool)

(assert (=> b!7022488 m!7724610))

(declare-fun m!7724612 () Bool)

(assert (=> b!7022488 m!7724612))

(declare-fun m!7724614 () Bool)

(assert (=> b!7022488 m!7724614))

(push 1)

(assert (not b!7022487))

(assert (not b!7022484))

(assert (not start!677556))

(assert (not b!7022483))

(assert (not b!7022488))

(assert (not setNonEmpty!48803))

(assert (not b!7022486))

(assert (not b!7022480))

(assert (not b!7022482))

(assert tp_is_empty!44041)

(assert (not b!7022481))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2189098 () Bool)

(declare-fun c!1305157 () Bool)

(declare-fun isEmpty!39467 (List!67765) Bool)

(assert (=> d!2189098 (= c!1305157 (isEmpty!39467 s!7408))))

(declare-fun e!4221461 () Bool)

(assert (=> d!2189098 (= (matchZipper!2948 lt!2512533 s!7408) e!4221461)))

(declare-fun b!7022524 () Bool)

(assert (=> b!7022524 (= e!4221461 (nullableZipper!2537 lt!2512533))))

(declare-fun b!7022525 () Bool)

(declare-fun derivationStepZipper!2879 ((Set Context!12808) C!35086) (Set Context!12808))

(declare-fun head!14222 (List!67765) C!35086)

(declare-fun tail!13489 (List!67765) List!67765)

(assert (=> b!7022525 (= e!4221461 (matchZipper!2948 (derivationStepZipper!2879 lt!2512533 (head!14222 s!7408)) (tail!13489 s!7408)))))

(assert (= (and d!2189098 c!1305157) b!7022524))

(assert (= (and d!2189098 (not c!1305157)) b!7022525))

(declare-fun m!7724650 () Bool)

(assert (=> d!2189098 m!7724650))

(assert (=> b!7022524 m!7724602))

(declare-fun m!7724652 () Bool)

(assert (=> b!7022525 m!7724652))

(assert (=> b!7022525 m!7724652))

(declare-fun m!7724654 () Bool)

(assert (=> b!7022525 m!7724654))

(declare-fun m!7724656 () Bool)

(assert (=> b!7022525 m!7724656))

(assert (=> b!7022525 m!7724654))

(assert (=> b!7022525 m!7724656))

(declare-fun m!7724658 () Bool)

(assert (=> b!7022525 m!7724658))

(assert (=> start!677556 d!2189098))

(declare-fun bs!1867924 () Bool)

(declare-fun d!2189100 () Bool)

(assert (= bs!1867924 (and d!2189100 b!7022488)))

(declare-fun lambda!411900 () Int)

(assert (=> bs!1867924 (= lambda!411900 lambda!411875)))

(assert (=> d!2189100 true))

(declare-fun map!15698 ((Set Context!12808) Int) (Set Context!12808))

(assert (=> d!2189100 (= (appendTo!529 z1!570 ct2!306) (map!15698 z1!570 lambda!411900))))

(declare-fun bs!1867925 () Bool)

(assert (= bs!1867925 d!2189100))

(declare-fun m!7724660 () Bool)

(assert (=> bs!1867925 m!7724660))

(assert (=> start!677556 d!2189100))

(declare-fun bs!1867926 () Bool)

(declare-fun d!2189104 () Bool)

(assert (= bs!1867926 (and d!2189104 b!7022488)))

(declare-fun lambda!411903 () Int)

(assert (=> bs!1867926 (= lambda!411903 lambda!411876)))

(declare-fun bs!1867927 () Bool)

(assert (= bs!1867927 (and d!2189104 b!7022486)))

(assert (=> bs!1867927 (not (= lambda!411903 lambda!411877))))

(assert (=> d!2189104 (= (inv!86380 ct2!306) (forall!16314 (exprs!6904 ct2!306) lambda!411903))))

(declare-fun bs!1867928 () Bool)

(assert (= bs!1867928 d!2189104))

(declare-fun m!7724662 () Bool)

(assert (=> bs!1867928 m!7724662))

(assert (=> start!677556 d!2189104))

(declare-fun b!7022534 () Bool)

(declare-fun e!4221466 () List!67764)

(assert (=> b!7022534 (= e!4221466 (exprs!6904 ct2!306))))

(declare-fun e!4221467 () Bool)

(declare-fun lt!2512569 () List!67764)

(declare-fun b!7022537 () Bool)

(assert (=> b!7022537 (= e!4221467 (or (not (= (exprs!6904 ct2!306) Nil!67640)) (= lt!2512569 (exprs!6904 lt!2512534))))))

(declare-fun d!2189106 () Bool)

(assert (=> d!2189106 e!4221467))

(declare-fun res!2866631 () Bool)

(assert (=> d!2189106 (=> (not res!2866631) (not e!4221467))))

(declare-fun content!13469 (List!67764) (Set Regex!17408))

(assert (=> d!2189106 (= res!2866631 (= (content!13469 lt!2512569) (set.union (content!13469 (exprs!6904 lt!2512534)) (content!13469 (exprs!6904 ct2!306)))))))

(assert (=> d!2189106 (= lt!2512569 e!4221466)))

(declare-fun c!1305161 () Bool)

(assert (=> d!2189106 (= c!1305161 (is-Nil!67640 (exprs!6904 lt!2512534)))))

(assert (=> d!2189106 (= (++!15443 (exprs!6904 lt!2512534) (exprs!6904 ct2!306)) lt!2512569)))

(declare-fun b!7022535 () Bool)

(assert (=> b!7022535 (= e!4221466 (Cons!67640 (h!74088 (exprs!6904 lt!2512534)) (++!15443 (t!381519 (exprs!6904 lt!2512534)) (exprs!6904 ct2!306))))))

(declare-fun b!7022536 () Bool)

(declare-fun res!2866630 () Bool)

(assert (=> b!7022536 (=> (not res!2866630) (not e!4221467))))

(declare-fun size!41028 (List!67764) Int)

(assert (=> b!7022536 (= res!2866630 (= (size!41028 lt!2512569) (+ (size!41028 (exprs!6904 lt!2512534)) (size!41028 (exprs!6904 ct2!306)))))))

(assert (= (and d!2189106 c!1305161) b!7022534))

(assert (= (and d!2189106 (not c!1305161)) b!7022535))

(assert (= (and d!2189106 res!2866631) b!7022536))

(assert (= (and b!7022536 res!2866630) b!7022537))

(declare-fun m!7724670 () Bool)

(assert (=> d!2189106 m!7724670))

(declare-fun m!7724672 () Bool)

(assert (=> d!2189106 m!7724672))

(declare-fun m!7724674 () Bool)

(assert (=> d!2189106 m!7724674))

(declare-fun m!7724676 () Bool)

(assert (=> b!7022535 m!7724676))

(declare-fun m!7724678 () Bool)

(assert (=> b!7022536 m!7724678))

(declare-fun m!7724680 () Bool)

(assert (=> b!7022536 m!7724680))

(declare-fun m!7724682 () Bool)

(assert (=> b!7022536 m!7724682))

(assert (=> b!7022488 d!2189106))

(declare-fun d!2189110 () Bool)

(assert (=> d!2189110 (forall!16314 (++!15443 (exprs!6904 lt!2512534) (exprs!6904 ct2!306)) lambda!411876)))

(declare-fun lt!2512572 () Unit!161482)

(declare-fun choose!53001 (List!67764 List!67764 Int) Unit!161482)

(assert (=> d!2189110 (= lt!2512572 (choose!53001 (exprs!6904 lt!2512534) (exprs!6904 ct2!306) lambda!411876))))

(assert (=> d!2189110 (forall!16314 (exprs!6904 lt!2512534) lambda!411876)))

(assert (=> d!2189110 (= (lemmaConcatPreservesForall!735 (exprs!6904 lt!2512534) (exprs!6904 ct2!306) lambda!411876) lt!2512572)))

(declare-fun bs!1867933 () Bool)

(assert (= bs!1867933 d!2189110))

(assert (=> bs!1867933 m!7724610))

(assert (=> bs!1867933 m!7724610))

(declare-fun m!7724686 () Bool)

(assert (=> bs!1867933 m!7724686))

(declare-fun m!7724688 () Bool)

(assert (=> bs!1867933 m!7724688))

(declare-fun m!7724690 () Bool)

(assert (=> bs!1867933 m!7724690))

(assert (=> b!7022488 d!2189110))

(declare-fun d!2189114 () Bool)

(declare-fun e!4221470 () Bool)

(assert (=> d!2189114 e!4221470))

(declare-fun res!2866634 () Bool)

(assert (=> d!2189114 (=> (not res!2866634) (not e!4221470))))

(declare-fun lt!2512575 () Context!12808)

(declare-fun dynLambda!27257 (Int Context!12808) Context!12808)

(assert (=> d!2189114 (= res!2866634 (= lt!2512535 (dynLambda!27257 lambda!411875 lt!2512575)))))

(declare-fun choose!53002 ((Set Context!12808) Int Context!12808) Context!12808)

(assert (=> d!2189114 (= lt!2512575 (choose!53002 z1!570 lambda!411875 lt!2512535))))

(assert (=> d!2189114 (set.member lt!2512535 (map!15698 z1!570 lambda!411875))))

(assert (=> d!2189114 (= (mapPost2!255 z1!570 lambda!411875 lt!2512535) lt!2512575)))

(declare-fun b!7022541 () Bool)

(assert (=> b!7022541 (= e!4221470 (set.member lt!2512575 z1!570))))

(assert (= (and d!2189114 res!2866634) b!7022541))

(declare-fun b_lambda!265291 () Bool)

(assert (=> (not b_lambda!265291) (not d!2189114)))

(declare-fun m!7724692 () Bool)

(assert (=> d!2189114 m!7724692))

(declare-fun m!7724694 () Bool)

(assert (=> d!2189114 m!7724694))

(declare-fun m!7724696 () Bool)

(assert (=> d!2189114 m!7724696))

(declare-fun m!7724698 () Bool)

(assert (=> d!2189114 m!7724698))

(declare-fun m!7724700 () Bool)

(assert (=> b!7022541 m!7724700))

(assert (=> b!7022488 d!2189114))

(declare-fun bs!1867934 () Bool)

(declare-fun d!2189116 () Bool)

(assert (= bs!1867934 (and d!2189116 b!7022481)))

(declare-fun lambda!411909 () Int)

(assert (=> bs!1867934 (= lambda!411909 lambda!411874)))

(assert (=> d!2189116 (= (nullableZipper!2537 lt!2512533) (exists!3305 lt!2512533 lambda!411909))))

(declare-fun bs!1867935 () Bool)

(assert (= bs!1867935 d!2189116))

(declare-fun m!7724702 () Bool)

(assert (=> bs!1867935 m!7724702))

(assert (=> b!7022480 d!2189116))

(declare-fun bs!1867936 () Bool)

(declare-fun d!2189118 () Bool)

(assert (= bs!1867936 (and d!2189118 b!7022488)))

(declare-fun lambda!411912 () Int)

(assert (=> bs!1867936 (not (= lambda!411912 lambda!411876))))

(declare-fun bs!1867937 () Bool)

(assert (= bs!1867937 (and d!2189118 b!7022486)))

(assert (=> bs!1867937 (= lambda!411912 lambda!411877)))

(declare-fun bs!1867938 () Bool)

(assert (= bs!1867938 (and d!2189118 d!2189104)))

(assert (=> bs!1867938 (not (= lambda!411912 lambda!411903))))

(assert (=> d!2189118 (= (nullableContext!68 lt!2512535) (forall!16314 (exprs!6904 lt!2512535) lambda!411912))))

(declare-fun bs!1867939 () Bool)

(assert (= bs!1867939 d!2189118))

(declare-fun m!7724704 () Bool)

(assert (=> bs!1867939 m!7724704))

(assert (=> b!7022482 d!2189118))

(declare-fun d!2189120 () Bool)

(declare-fun e!4221476 () Bool)

(assert (=> d!2189120 e!4221476))

(declare-fun res!2866637 () Bool)

(assert (=> d!2189120 (=> (not res!2866637) (not e!4221476))))

(declare-fun lt!2512578 () Context!12808)

(declare-fun dynLambda!27258 (Int Context!12808) Bool)

(assert (=> d!2189120 (= res!2866637 (dynLambda!27258 lambda!411874 lt!2512578))))

(declare-datatypes ((List!67768 0))(
  ( (Nil!67644) (Cons!67644 (h!74092 Context!12808) (t!381523 List!67768)) )
))
(declare-fun getWitness!1388 (List!67768 Int) Context!12808)

(declare-fun toList!10763 ((Set Context!12808)) List!67768)

(assert (=> d!2189120 (= lt!2512578 (getWitness!1388 (toList!10763 lt!2512533) lambda!411874))))

(assert (=> d!2189120 (exists!3305 lt!2512533 lambda!411874)))

(assert (=> d!2189120 (= (getWitness!1386 lt!2512533 lambda!411874) lt!2512578)))

(declare-fun b!7022550 () Bool)

(assert (=> b!7022550 (= e!4221476 (set.member lt!2512578 lt!2512533))))

(assert (= (and d!2189120 res!2866637) b!7022550))

(declare-fun b_lambda!265293 () Bool)

(assert (=> (not b_lambda!265293) (not d!2189120)))

(declare-fun m!7724716 () Bool)

(assert (=> d!2189120 m!7724716))

(declare-fun m!7724718 () Bool)

(assert (=> d!2189120 m!7724718))

(assert (=> d!2189120 m!7724718))

(declare-fun m!7724720 () Bool)

(assert (=> d!2189120 m!7724720))

(assert (=> d!2189120 m!7724608))

(declare-fun m!7724722 () Bool)

(assert (=> b!7022550 m!7724722))

(assert (=> b!7022482 d!2189120))

(declare-fun bs!1867940 () Bool)

(declare-fun d!2189124 () Bool)

(assert (= bs!1867940 (and d!2189124 b!7022488)))

(declare-fun lambda!411913 () Int)

(assert (=> bs!1867940 (= lambda!411913 lambda!411876)))

(declare-fun bs!1867941 () Bool)

(assert (= bs!1867941 (and d!2189124 b!7022486)))

(assert (=> bs!1867941 (not (= lambda!411913 lambda!411877))))

(declare-fun bs!1867942 () Bool)

(assert (= bs!1867942 (and d!2189124 d!2189104)))

(assert (=> bs!1867942 (= lambda!411913 lambda!411903)))

(declare-fun bs!1867943 () Bool)

(assert (= bs!1867943 (and d!2189124 d!2189118)))

(assert (=> bs!1867943 (not (= lambda!411913 lambda!411912))))

(assert (=> d!2189124 (= (inv!86380 setElem!48803) (forall!16314 (exprs!6904 setElem!48803) lambda!411913))))

(declare-fun bs!1867944 () Bool)

(assert (= bs!1867944 d!2189124))

(declare-fun m!7724724 () Bool)

(assert (=> bs!1867944 m!7724724))

(assert (=> setNonEmpty!48803 d!2189124))

(declare-fun d!2189126 () Bool)

(declare-fun lt!2512581 () Bool)

(declare-fun exists!3307 (List!67768 Int) Bool)

(assert (=> d!2189126 (= lt!2512581 (exists!3307 (toList!10763 lt!2512533) lambda!411874))))

(declare-fun choose!53003 ((Set Context!12808) Int) Bool)

(assert (=> d!2189126 (= lt!2512581 (choose!53003 lt!2512533 lambda!411874))))

(assert (=> d!2189126 (= (exists!3305 lt!2512533 lambda!411874) lt!2512581)))

(declare-fun bs!1867945 () Bool)

(assert (= bs!1867945 d!2189126))

(assert (=> bs!1867945 m!7724718))

(assert (=> bs!1867945 m!7724718))

(declare-fun m!7724726 () Bool)

(assert (=> bs!1867945 m!7724726))

(declare-fun m!7724728 () Bool)

(assert (=> bs!1867945 m!7724728))

(assert (=> b!7022481 d!2189126))

(declare-fun d!2189128 () Bool)

(assert (=> d!2189128 (subseq!684 (exprs!6904 lt!2512534) (++!15443 (exprs!6904 lt!2512534) (exprs!6904 ct2!306)))))

(declare-fun lt!2512586 () Unit!161482)

(declare-fun choose!53004 (List!67764 List!67764) Unit!161482)

(assert (=> d!2189128 (= lt!2512586 (choose!53004 (exprs!6904 lt!2512534) (exprs!6904 ct2!306)))))

(assert (=> d!2189128 (= (lemmaConcatThenFirstSubseqOfTot!5 (exprs!6904 lt!2512534) (exprs!6904 ct2!306)) lt!2512586)))

(declare-fun bs!1867946 () Bool)

(assert (= bs!1867946 d!2189128))

(assert (=> bs!1867946 m!7724610))

(assert (=> bs!1867946 m!7724610))

(declare-fun m!7724730 () Bool)

(assert (=> bs!1867946 m!7724730))

(declare-fun m!7724732 () Bool)

(assert (=> bs!1867946 m!7724732))

(assert (=> b!7022486 d!2189128))

(declare-fun d!2189130 () Bool)

(declare-fun res!2866642 () Bool)

(declare-fun e!4221481 () Bool)

(assert (=> d!2189130 (=> res!2866642 e!4221481)))

(assert (=> d!2189130 (= res!2866642 (is-Nil!67640 lt!2512531))))

(assert (=> d!2189130 (= (forall!16314 lt!2512531 lambda!411877) e!4221481)))

(declare-fun b!7022555 () Bool)

(declare-fun e!4221482 () Bool)

(assert (=> b!7022555 (= e!4221481 e!4221482)))

(declare-fun res!2866643 () Bool)

(assert (=> b!7022555 (=> (not res!2866643) (not e!4221482))))

(declare-fun dynLambda!27259 (Int Regex!17408) Bool)

(assert (=> b!7022555 (= res!2866643 (dynLambda!27259 lambda!411877 (h!74088 lt!2512531)))))

(declare-fun b!7022556 () Bool)

(assert (=> b!7022556 (= e!4221482 (forall!16314 (t!381519 lt!2512531) lambda!411877))))

(assert (= (and d!2189130 (not res!2866642)) b!7022555))

(assert (= (and b!7022555 res!2866643) b!7022556))

(declare-fun b_lambda!265295 () Bool)

(assert (=> (not b_lambda!265295) (not b!7022555)))

(declare-fun m!7724734 () Bool)

(assert (=> b!7022555 m!7724734))

(declare-fun m!7724736 () Bool)

(assert (=> b!7022556 m!7724736))

(assert (=> b!7022486 d!2189130))

(declare-fun b!7022565 () Bool)

(declare-fun e!4221492 () Bool)

(declare-fun e!4221493 () Bool)

(assert (=> b!7022565 (= e!4221492 e!4221493)))

(declare-fun res!2866654 () Bool)

(assert (=> b!7022565 (=> (not res!2866654) (not e!4221493))))

(assert (=> b!7022565 (= res!2866654 (is-Cons!67640 lt!2512531))))

(declare-fun d!2189132 () Bool)

(declare-fun res!2866655 () Bool)

(assert (=> d!2189132 (=> res!2866655 e!4221492)))

(assert (=> d!2189132 (= res!2866655 (is-Nil!67640 (exprs!6904 ct2!306)))))

(assert (=> d!2189132 (= (subseq!684 (exprs!6904 ct2!306) lt!2512531) e!4221492)))

(declare-fun b!7022568 () Bool)

(declare-fun e!4221491 () Bool)

(assert (=> b!7022568 (= e!4221491 (subseq!684 (exprs!6904 ct2!306) (t!381519 lt!2512531)))))

(declare-fun b!7022567 () Bool)

(declare-fun e!4221494 () Bool)

(assert (=> b!7022567 (= e!4221494 (subseq!684 (t!381519 (exprs!6904 ct2!306)) (t!381519 lt!2512531)))))

(declare-fun b!7022566 () Bool)

(assert (=> b!7022566 (= e!4221493 e!4221491)))

(declare-fun res!2866653 () Bool)

(assert (=> b!7022566 (=> res!2866653 e!4221491)))

(assert (=> b!7022566 (= res!2866653 e!4221494)))

(declare-fun res!2866652 () Bool)

(assert (=> b!7022566 (=> (not res!2866652) (not e!4221494))))

(assert (=> b!7022566 (= res!2866652 (= (h!74088 (exprs!6904 ct2!306)) (h!74088 lt!2512531)))))

(assert (= (and d!2189132 (not res!2866655)) b!7022565))

(assert (= (and b!7022565 res!2866654) b!7022566))

(assert (= (and b!7022566 res!2866652) b!7022567))

(assert (= (and b!7022566 (not res!2866653)) b!7022568))

(declare-fun m!7724742 () Bool)

(assert (=> b!7022568 m!7724742))

(declare-fun m!7724744 () Bool)

(assert (=> b!7022567 m!7724744))

(assert (=> b!7022486 d!2189132))

(declare-fun b!7022569 () Bool)

(declare-fun e!4221496 () Bool)

(declare-fun e!4221497 () Bool)

(assert (=> b!7022569 (= e!4221496 e!4221497)))

(declare-fun res!2866658 () Bool)

(assert (=> b!7022569 (=> (not res!2866658) (not e!4221497))))

(assert (=> b!7022569 (= res!2866658 (is-Cons!67640 lt!2512531))))

(declare-fun d!2189138 () Bool)

(declare-fun res!2866659 () Bool)

(assert (=> d!2189138 (=> res!2866659 e!4221496)))

(assert (=> d!2189138 (= res!2866659 (is-Nil!67640 (exprs!6904 lt!2512534)))))

(assert (=> d!2189138 (= (subseq!684 (exprs!6904 lt!2512534) lt!2512531) e!4221496)))

(declare-fun b!7022572 () Bool)

(declare-fun e!4221495 () Bool)

(assert (=> b!7022572 (= e!4221495 (subseq!684 (exprs!6904 lt!2512534) (t!381519 lt!2512531)))))

(declare-fun b!7022571 () Bool)

(declare-fun e!4221498 () Bool)

(assert (=> b!7022571 (= e!4221498 (subseq!684 (t!381519 (exprs!6904 lt!2512534)) (t!381519 lt!2512531)))))

(declare-fun b!7022570 () Bool)

(assert (=> b!7022570 (= e!4221497 e!4221495)))

(declare-fun res!2866657 () Bool)

(assert (=> b!7022570 (=> res!2866657 e!4221495)))

(assert (=> b!7022570 (= res!2866657 e!4221498)))

(declare-fun res!2866656 () Bool)

(assert (=> b!7022570 (=> (not res!2866656) (not e!4221498))))

(assert (=> b!7022570 (= res!2866656 (= (h!74088 (exprs!6904 lt!2512534)) (h!74088 lt!2512531)))))

(assert (= (and d!2189138 (not res!2866659)) b!7022569))

(assert (= (and b!7022569 res!2866658) b!7022570))

(assert (= (and b!7022570 res!2866656) b!7022571))

(assert (= (and b!7022570 (not res!2866657)) b!7022572))

(declare-fun m!7724746 () Bool)

(assert (=> b!7022572 m!7724746))

(declare-fun m!7724748 () Bool)

(assert (=> b!7022571 m!7724748))

(assert (=> b!7022486 d!2189138))

(declare-fun d!2189140 () Bool)

(assert (=> d!2189140 (forall!16314 (exprs!6904 lt!2512534) lambda!411877)))

(declare-fun lt!2512589 () Unit!161482)

(declare-fun choose!53005 (List!67764 List!67764 Int) Unit!161482)

(assert (=> d!2189140 (= lt!2512589 (choose!53005 lt!2512531 (exprs!6904 lt!2512534) lambda!411877))))

(assert (=> d!2189140 (forall!16314 lt!2512531 lambda!411877)))

(assert (=> d!2189140 (= (lemmaContentSubsetPreservesForall!335 lt!2512531 (exprs!6904 lt!2512534) lambda!411877) lt!2512589)))

(declare-fun bs!1867953 () Bool)

(assert (= bs!1867953 d!2189140))

(declare-fun m!7724750 () Bool)

(assert (=> bs!1867953 m!7724750))

(declare-fun m!7724752 () Bool)

(assert (=> bs!1867953 m!7724752))

(assert (=> bs!1867953 m!7724596))

(assert (=> b!7022486 d!2189140))

(declare-fun d!2189142 () Bool)

(assert (=> d!2189142 (subseq!684 (exprs!6904 ct2!306) (++!15443 (exprs!6904 lt!2512534) (exprs!6904 ct2!306)))))

(declare-fun lt!2512594 () Unit!161482)

(declare-fun choose!53006 (List!67764 List!67764) Unit!161482)

(assert (=> d!2189142 (= lt!2512594 (choose!53006 (exprs!6904 lt!2512534) (exprs!6904 ct2!306)))))

(assert (=> d!2189142 (= (lemmaConcatThenSecondSubseqOfTot!5 (exprs!6904 lt!2512534) (exprs!6904 ct2!306)) lt!2512594)))

(declare-fun bs!1867954 () Bool)

(assert (= bs!1867954 d!2189142))

(assert (=> bs!1867954 m!7724610))

(assert (=> bs!1867954 m!7724610))

(declare-fun m!7724754 () Bool)

(assert (=> bs!1867954 m!7724754))

(declare-fun m!7724756 () Bool)

(assert (=> bs!1867954 m!7724756))

(assert (=> b!7022486 d!2189142))

(declare-fun b!7022577 () Bool)

(declare-fun e!4221501 () Bool)

(declare-fun tp!1934614 () Bool)

(declare-fun tp!1934615 () Bool)

(assert (=> b!7022577 (= e!4221501 (and tp!1934614 tp!1934615))))

(assert (=> b!7022484 (= tp!1934594 e!4221501)))

(assert (= (and b!7022484 (is-Cons!67640 (exprs!6904 ct2!306))) b!7022577))

(declare-fun b!7022578 () Bool)

(declare-fun e!4221502 () Bool)

(declare-fun tp!1934616 () Bool)

(declare-fun tp!1934617 () Bool)

(assert (=> b!7022578 (= e!4221502 (and tp!1934616 tp!1934617))))

(assert (=> b!7022487 (= tp!1934596 e!4221502)))

(assert (= (and b!7022487 (is-Cons!67640 (exprs!6904 setElem!48803))) b!7022578))

(declare-fun condSetEmpty!48809 () Bool)

(assert (=> setNonEmpty!48803 (= condSetEmpty!48809 (= setRest!48803 (as set.empty (Set Context!12808))))))

(declare-fun setRes!48809 () Bool)

(assert (=> setNonEmpty!48803 (= tp!1934597 setRes!48809)))

(declare-fun setIsEmpty!48809 () Bool)

(assert (=> setIsEmpty!48809 setRes!48809))

(declare-fun setElem!48809 () Context!12808)

(declare-fun setNonEmpty!48809 () Bool)

(declare-fun e!4221505 () Bool)

(declare-fun tp!1934623 () Bool)

(assert (=> setNonEmpty!48809 (= setRes!48809 (and tp!1934623 (inv!86380 setElem!48809) e!4221505))))

(declare-fun setRest!48809 () (Set Context!12808))

(assert (=> setNonEmpty!48809 (= setRest!48803 (set.union (set.insert setElem!48809 (as set.empty (Set Context!12808))) setRest!48809))))

(declare-fun b!7022583 () Bool)

(declare-fun tp!1934622 () Bool)

(assert (=> b!7022583 (= e!4221505 tp!1934622)))

(assert (= (and setNonEmpty!48803 condSetEmpty!48809) setIsEmpty!48809))

(assert (= (and setNonEmpty!48803 (not condSetEmpty!48809)) setNonEmpty!48809))

(assert (= setNonEmpty!48809 b!7022583))

(declare-fun m!7724762 () Bool)

(assert (=> setNonEmpty!48809 m!7724762))

(declare-fun b!7022588 () Bool)

(declare-fun e!4221508 () Bool)

(declare-fun tp!1934626 () Bool)

(assert (=> b!7022588 (= e!4221508 (and tp_is_empty!44041 tp!1934626))))

(assert (=> b!7022483 (= tp!1934595 e!4221508)))

(assert (= (and b!7022483 (is-Cons!67641 (t!381520 s!7408))) b!7022588))

(declare-fun b_lambda!265297 () Bool)

(assert (= b_lambda!265291 (or b!7022488 b_lambda!265297)))

(declare-fun bs!1867956 () Bool)

(declare-fun d!2189146 () Bool)

(assert (= bs!1867956 (and d!2189146 b!7022488)))

(declare-fun lt!2512596 () Unit!161482)

(assert (=> bs!1867956 (= lt!2512596 (lemmaConcatPreservesForall!735 (exprs!6904 lt!2512575) (exprs!6904 ct2!306) lambda!411876))))

(assert (=> bs!1867956 (= (dynLambda!27257 lambda!411875 lt!2512575) (Context!12809 (++!15443 (exprs!6904 lt!2512575) (exprs!6904 ct2!306))))))

(declare-fun m!7724764 () Bool)

(assert (=> bs!1867956 m!7724764))

(declare-fun m!7724766 () Bool)

(assert (=> bs!1867956 m!7724766))

(assert (=> d!2189114 d!2189146))

(declare-fun b_lambda!265299 () Bool)

(assert (= b_lambda!265293 (or b!7022481 b_lambda!265299)))

(declare-fun bs!1867957 () Bool)

(declare-fun d!2189148 () Bool)

(assert (= bs!1867957 (and d!2189148 b!7022481)))

(assert (=> bs!1867957 (= (dynLambda!27258 lambda!411874 lt!2512578) (nullableContext!68 lt!2512578))))

(declare-fun m!7724768 () Bool)

(assert (=> bs!1867957 m!7724768))

(assert (=> d!2189120 d!2189148))

(declare-fun b_lambda!265301 () Bool)

(assert (= b_lambda!265295 (or b!7022486 b_lambda!265301)))

(declare-fun bs!1867958 () Bool)

(declare-fun d!2189150 () Bool)

(assert (= bs!1867958 (and d!2189150 b!7022486)))

(declare-fun nullable!7142 (Regex!17408) Bool)

(assert (=> bs!1867958 (= (dynLambda!27259 lambda!411877 (h!74088 lt!2512531)) (nullable!7142 (h!74088 lt!2512531)))))

(declare-fun m!7724770 () Bool)

(assert (=> bs!1867958 m!7724770))

(assert (=> b!7022555 d!2189150))

(push 1)

(assert (not b!7022583))

(assert (not d!2189100))

(assert (not d!2189118))

(assert (not b!7022524))

(assert (not b_lambda!265297))

(assert (not bs!1867958))

(assert (not d!2189124))

(assert (not b!7022536))

(assert tp_is_empty!44041)

(assert (not d!2189126))

(assert (not d!2189140))

(assert (not b!7022525))

(assert (not d!2189116))

(assert (not d!2189104))

(assert (not b_lambda!265299))

(assert (not b!7022571))

(assert (not d!2189142))

(assert (not d!2189110))

(assert (not d!2189106))

(assert (not b!7022567))

(assert (not bs!1867956))

(assert (not b!7022568))

(assert (not b!7022578))

(assert (not b!7022535))

(assert (not d!2189098))

(assert (not b!7022556))

(assert (not setNonEmpty!48809))

(assert (not b!7022588))

(assert (not bs!1867957))

(assert (not d!2189120))

(assert (not d!2189128))

(assert (not d!2189114))

(assert (not b_lambda!265301))

(assert (not b!7022572))

(assert (not b!7022577))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

