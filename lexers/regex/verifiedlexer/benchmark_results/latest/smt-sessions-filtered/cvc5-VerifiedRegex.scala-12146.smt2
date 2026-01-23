; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!683022 () Bool)

(assert start!683022)

(declare-fun b!7050607 () Bool)

(assert (=> b!7050607 true))

(declare-fun bs!1875821 () Bool)

(declare-fun b!7050605 () Bool)

(assert (= bs!1875821 (and b!7050605 b!7050607)))

(declare-fun lambda!418911 () Int)

(declare-fun lambda!418910 () Int)

(assert (=> bs!1875821 (not (= lambda!418911 lambda!418910))))

(declare-fun e!4238560 () Bool)

(declare-datatypes ((C!35346 0))(
  ( (C!35347 (val!27375 Int)) )
))
(declare-datatypes ((Regex!17538 0))(
  ( (ElementMatch!17538 (c!1313247 C!35346)) (Concat!26383 (regOne!35588 Regex!17538) (regTwo!35588 Regex!17538)) (EmptyExpr!17538) (Star!17538 (reg!17867 Regex!17538)) (EmptyLang!17538) (Union!17538 (regOne!35589 Regex!17538) (regTwo!35589 Regex!17538)) )
))
(declare-datatypes ((List!68140 0))(
  ( (Nil!68016) (Cons!68016 (h!74464 Regex!17538) (t!381919 List!68140)) )
))
(declare-datatypes ((Context!13068 0))(
  ( (Context!13069 (exprs!7034 List!68140)) )
))
(declare-fun setElem!49636 () Context!13068)

(declare-fun setRes!49636 () Bool)

(declare-fun setNonEmpty!49636 () Bool)

(declare-fun tp!1938968 () Bool)

(declare-fun inv!86705 (Context!13068) Bool)

(assert (=> setNonEmpty!49636 (= setRes!49636 (and tp!1938968 (inv!86705 setElem!49636) e!4238560))))

(declare-fun z1!570 () (Set Context!13068))

(declare-fun setRest!49636 () (Set Context!13068))

(assert (=> setNonEmpty!49636 (= z1!570 (set.union (set.insert setElem!49636 (as set.empty (Set Context!13068))) setRest!49636))))

(declare-fun b!7050604 () Bool)

(declare-fun tp!1938967 () Bool)

(assert (=> b!7050604 (= e!4238560 tp!1938967)))

(declare-fun setIsEmpty!49636 () Bool)

(assert (=> setIsEmpty!49636 setRes!49636))

(declare-fun e!4238559 () Bool)

(declare-fun e!4238558 () Bool)

(assert (=> b!7050605 (= e!4238559 (not e!4238558))))

(declare-fun res!2878358 () Bool)

(assert (=> b!7050605 (=> res!2878358 e!4238558)))

(declare-fun lt!2529406 () Context!13068)

(declare-fun nullableContext!94 (Context!13068) Bool)

(assert (=> b!7050605 (= res!2878358 (not (nullableContext!94 lt!2529406)))))

(declare-fun lt!2529405 () List!68140)

(declare-fun ct2!306 () Context!13068)

(declare-datatypes ((Unit!161752 0))(
  ( (Unit!161753) )
))
(declare-fun lt!2529398 () Unit!161752)

(declare-fun lemmaContentSubsetPreservesForall!349 (List!68140 List!68140 Int) Unit!161752)

(assert (=> b!7050605 (= lt!2529398 (lemmaContentSubsetPreservesForall!349 lt!2529405 (exprs!7034 ct2!306) lambda!418911))))

(declare-fun lt!2529402 () Unit!161752)

(assert (=> b!7050605 (= lt!2529402 (lemmaContentSubsetPreservesForall!349 lt!2529405 (exprs!7034 lt!2529406) lambda!418911))))

(declare-fun subseq!698 (List!68140 List!68140) Bool)

(assert (=> b!7050605 (subseq!698 (exprs!7034 ct2!306) lt!2529405)))

(declare-fun lt!2529399 () Unit!161752)

(declare-fun lemmaConcatThenSecondSubseqOfTot!19 (List!68140 List!68140) Unit!161752)

(assert (=> b!7050605 (= lt!2529399 (lemmaConcatThenSecondSubseqOfTot!19 (exprs!7034 lt!2529406) (exprs!7034 ct2!306)))))

(assert (=> b!7050605 (subseq!698 (exprs!7034 lt!2529406) lt!2529405)))

(declare-fun lt!2529404 () Unit!161752)

(declare-fun lemmaConcatThenFirstSubseqOfTot!19 (List!68140 List!68140) Unit!161752)

(assert (=> b!7050605 (= lt!2529404 (lemmaConcatThenFirstSubseqOfTot!19 (exprs!7034 lt!2529406) (exprs!7034 ct2!306)))))

(declare-fun b!7050606 () Bool)

(declare-fun e!4238556 () Bool)

(declare-fun e!4238557 () Bool)

(assert (=> b!7050606 (= e!4238556 e!4238557)))

(declare-fun res!2878352 () Bool)

(assert (=> b!7050606 (=> (not res!2878352) (not e!4238557))))

(declare-fun lt!2529401 () Context!13068)

(assert (=> b!7050606 (= res!2878352 (nullableContext!94 lt!2529401))))

(declare-fun lt!2529397 () (Set Context!13068))

(declare-fun lambda!418908 () Int)

(declare-fun getWitness!1584 ((Set Context!13068) Int) Context!13068)

(assert (=> b!7050606 (= lt!2529401 (getWitness!1584 lt!2529397 lambda!418908))))

(assert (=> b!7050607 (= e!4238557 e!4238559)))

(declare-fun res!2878356 () Bool)

(assert (=> b!7050607 (=> (not res!2878356) (not e!4238559))))

(assert (=> b!7050607 (= res!2878356 (= (Context!13069 lt!2529405) lt!2529401))))

(declare-fun ++!15625 (List!68140 List!68140) List!68140)

(assert (=> b!7050607 (= lt!2529405 (++!15625 (exprs!7034 lt!2529406) (exprs!7034 ct2!306)))))

(declare-fun lt!2529400 () Unit!161752)

(declare-fun lemmaConcatPreservesForall!853 (List!68140 List!68140 Int) Unit!161752)

(assert (=> b!7050607 (= lt!2529400 (lemmaConcatPreservesForall!853 (exprs!7034 lt!2529406) (exprs!7034 ct2!306) lambda!418910))))

(declare-fun lambda!418909 () Int)

(declare-fun mapPost2!373 ((Set Context!13068) Int Context!13068) Context!13068)

(assert (=> b!7050607 (= lt!2529406 (mapPost2!373 z1!570 lambda!418909 lt!2529401))))

(declare-fun res!2878355 () Bool)

(assert (=> start!683022 (=> (not res!2878355) (not e!4238556))))

(declare-datatypes ((List!68141 0))(
  ( (Nil!68017) (Cons!68017 (h!74465 C!35346) (t!381920 List!68141)) )
))
(declare-fun s!7408 () List!68141)

(declare-fun matchZipper!3078 ((Set Context!13068) List!68141) Bool)

(assert (=> start!683022 (= res!2878355 (matchZipper!3078 lt!2529397 s!7408))))

(declare-fun appendTo!659 ((Set Context!13068) Context!13068) (Set Context!13068))

(assert (=> start!683022 (= lt!2529397 (appendTo!659 z1!570 ct2!306))))

(assert (=> start!683022 e!4238556))

(declare-fun condSetEmpty!49636 () Bool)

(assert (=> start!683022 (= condSetEmpty!49636 (= z1!570 (as set.empty (Set Context!13068))))))

(assert (=> start!683022 setRes!49636))

(declare-fun e!4238555 () Bool)

(assert (=> start!683022 (and (inv!86705 ct2!306) e!4238555)))

(declare-fun e!4238561 () Bool)

(assert (=> start!683022 e!4238561))

(declare-fun b!7050603 () Bool)

(declare-fun tp!1938970 () Bool)

(assert (=> b!7050603 (= e!4238555 tp!1938970)))

(declare-fun b!7050608 () Bool)

(declare-fun tp_is_empty!44301 () Bool)

(declare-fun tp!1938969 () Bool)

(assert (=> b!7050608 (= e!4238561 (and tp_is_empty!44301 tp!1938969))))

(declare-fun b!7050609 () Bool)

(declare-fun res!2878354 () Bool)

(assert (=> b!7050609 (=> (not res!2878354) (not e!4238556))))

(declare-fun nullableZipper!2631 ((Set Context!13068)) Bool)

(assert (=> b!7050609 (= res!2878354 (nullableZipper!2631 lt!2529397))))

(declare-fun b!7050610 () Bool)

(declare-fun res!2878353 () Bool)

(assert (=> b!7050610 (=> res!2878353 e!4238558)))

(assert (=> b!7050610 (= res!2878353 (not (nullableContext!94 ct2!306)))))

(declare-fun b!7050611 () Bool)

(declare-fun res!2878357 () Bool)

(assert (=> b!7050611 (=> (not res!2878357) (not e!4238556))))

(declare-fun exists!3510 ((Set Context!13068) Int) Bool)

(assert (=> b!7050611 (= res!2878357 (exists!3510 lt!2529397 lambda!418908))))

(declare-fun b!7050612 () Bool)

(declare-fun res!2878359 () Bool)

(assert (=> b!7050612 (=> (not res!2878359) (not e!4238556))))

(assert (=> b!7050612 (= res!2878359 (not (is-Cons!68017 s!7408)))))

(declare-fun b!7050613 () Bool)

(assert (=> b!7050613 (= e!4238558 (matchZipper!3078 z1!570 Nil!68017))))

(declare-fun lt!2529396 () (Set Context!13068))

(assert (=> b!7050613 (exists!3510 lt!2529396 lambda!418908)))

(declare-fun lt!2529403 () Unit!161752)

(declare-fun lemmaContainsThenExists!122 ((Set Context!13068) Context!13068 Int) Unit!161752)

(assert (=> b!7050613 (= lt!2529403 (lemmaContainsThenExists!122 lt!2529396 ct2!306 lambda!418908))))

(assert (=> b!7050613 (= lt!2529396 (set.insert ct2!306 (as set.empty (Set Context!13068))))))

(assert (=> b!7050613 (exists!3510 z1!570 lambda!418908)))

(declare-fun lt!2529407 () Unit!161752)

(assert (=> b!7050613 (= lt!2529407 (lemmaContainsThenExists!122 z1!570 lt!2529406 lambda!418908))))

(assert (= (and start!683022 res!2878355) b!7050612))

(assert (= (and b!7050612 res!2878359) b!7050609))

(assert (= (and b!7050609 res!2878354) b!7050611))

(assert (= (and b!7050611 res!2878357) b!7050606))

(assert (= (and b!7050606 res!2878352) b!7050607))

(assert (= (and b!7050607 res!2878356) b!7050605))

(assert (= (and b!7050605 (not res!2878358)) b!7050610))

(assert (= (and b!7050610 (not res!2878353)) b!7050613))

(assert (= (and start!683022 condSetEmpty!49636) setIsEmpty!49636))

(assert (= (and start!683022 (not condSetEmpty!49636)) setNonEmpty!49636))

(assert (= setNonEmpty!49636 b!7050604))

(assert (= start!683022 b!7050603))

(assert (= (and start!683022 (is-Cons!68017 s!7408)) b!7050608))

(declare-fun m!7766370 () Bool)

(assert (=> b!7050606 m!7766370))

(declare-fun m!7766372 () Bool)

(assert (=> b!7050606 m!7766372))

(declare-fun m!7766374 () Bool)

(assert (=> setNonEmpty!49636 m!7766374))

(declare-fun m!7766376 () Bool)

(assert (=> start!683022 m!7766376))

(declare-fun m!7766378 () Bool)

(assert (=> start!683022 m!7766378))

(declare-fun m!7766380 () Bool)

(assert (=> start!683022 m!7766380))

(declare-fun m!7766382 () Bool)

(assert (=> b!7050613 m!7766382))

(declare-fun m!7766384 () Bool)

(assert (=> b!7050613 m!7766384))

(declare-fun m!7766386 () Bool)

(assert (=> b!7050613 m!7766386))

(declare-fun m!7766388 () Bool)

(assert (=> b!7050613 m!7766388))

(declare-fun m!7766390 () Bool)

(assert (=> b!7050613 m!7766390))

(declare-fun m!7766392 () Bool)

(assert (=> b!7050613 m!7766392))

(declare-fun m!7766394 () Bool)

(assert (=> b!7050605 m!7766394))

(declare-fun m!7766396 () Bool)

(assert (=> b!7050605 m!7766396))

(declare-fun m!7766398 () Bool)

(assert (=> b!7050605 m!7766398))

(declare-fun m!7766400 () Bool)

(assert (=> b!7050605 m!7766400))

(declare-fun m!7766402 () Bool)

(assert (=> b!7050605 m!7766402))

(declare-fun m!7766404 () Bool)

(assert (=> b!7050605 m!7766404))

(declare-fun m!7766406 () Bool)

(assert (=> b!7050605 m!7766406))

(declare-fun m!7766408 () Bool)

(assert (=> b!7050607 m!7766408))

(declare-fun m!7766410 () Bool)

(assert (=> b!7050607 m!7766410))

(declare-fun m!7766412 () Bool)

(assert (=> b!7050607 m!7766412))

(declare-fun m!7766414 () Bool)

(assert (=> b!7050610 m!7766414))

(declare-fun m!7766416 () Bool)

(assert (=> b!7050609 m!7766416))

(declare-fun m!7766418 () Bool)

(assert (=> b!7050611 m!7766418))

(push 1)

(assert (not b!7050610))

(assert (not b!7050611))

(assert (not start!683022))

(assert (not b!7050607))

(assert (not b!7050605))

(assert (not b!7050604))

(assert tp_is_empty!44301)

(assert (not b!7050609))

(assert (not setNonEmpty!49636))

(assert (not b!7050603))

(assert (not b!7050608))

(assert (not b!7050613))

(assert (not b!7050606))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1875826 () Bool)

(declare-fun d!2202579 () Bool)

(assert (= bs!1875826 (and d!2202579 b!7050607)))

(declare-fun lambda!418939 () Int)

(assert (=> bs!1875826 (not (= lambda!418939 lambda!418910))))

(declare-fun bs!1875827 () Bool)

(assert (= bs!1875827 (and d!2202579 b!7050605)))

(assert (=> bs!1875827 (= lambda!418939 lambda!418911)))

(declare-fun forall!16467 (List!68140 Int) Bool)

(assert (=> d!2202579 (= (nullableContext!94 lt!2529401) (forall!16467 (exprs!7034 lt!2529401) lambda!418939))))

(declare-fun bs!1875828 () Bool)

(assert (= bs!1875828 d!2202579))

(declare-fun m!7766476 () Bool)

(assert (=> bs!1875828 m!7766476))

(assert (=> b!7050606 d!2202579))

(declare-fun d!2202581 () Bool)

(declare-fun e!4238585 () Bool)

(assert (=> d!2202581 e!4238585))

(declare-fun res!2878388 () Bool)

(assert (=> d!2202581 (=> (not res!2878388) (not e!4238585))))

(declare-fun lt!2529451 () Context!13068)

(declare-fun dynLambda!27556 (Int Context!13068) Bool)

(assert (=> d!2202581 (= res!2878388 (dynLambda!27556 lambda!418908 lt!2529451))))

(declare-datatypes ((List!68144 0))(
  ( (Nil!68020) (Cons!68020 (h!74468 Context!13068) (t!381923 List!68144)) )
))
(declare-fun getWitness!1586 (List!68144 Int) Context!13068)

(declare-fun toList!10879 ((Set Context!13068)) List!68144)

(assert (=> d!2202581 (= lt!2529451 (getWitness!1586 (toList!10879 lt!2529397) lambda!418908))))

(assert (=> d!2202581 (exists!3510 lt!2529397 lambda!418908)))

(assert (=> d!2202581 (= (getWitness!1584 lt!2529397 lambda!418908) lt!2529451)))

(declare-fun b!7050653 () Bool)

(assert (=> b!7050653 (= e!4238585 (set.member lt!2529451 lt!2529397))))

(assert (= (and d!2202581 res!2878388) b!7050653))

(declare-fun b_lambda!268095 () Bool)

(assert (=> (not b_lambda!268095) (not d!2202581)))

(declare-fun m!7766480 () Bool)

(assert (=> d!2202581 m!7766480))

(declare-fun m!7766482 () Bool)

(assert (=> d!2202581 m!7766482))

(assert (=> d!2202581 m!7766482))

(declare-fun m!7766484 () Bool)

(assert (=> d!2202581 m!7766484))

(assert (=> d!2202581 m!7766418))

(declare-fun m!7766486 () Bool)

(assert (=> b!7050653 m!7766486))

(assert (=> b!7050606 d!2202581))

(declare-fun e!4238594 () Bool)

(declare-fun b!7050668 () Bool)

(declare-fun lt!2529457 () List!68140)

(assert (=> b!7050668 (= e!4238594 (or (not (= (exprs!7034 ct2!306) Nil!68016)) (= lt!2529457 (exprs!7034 lt!2529406))))))

(declare-fun b!7050667 () Bool)

(declare-fun res!2878397 () Bool)

(assert (=> b!7050667 (=> (not res!2878397) (not e!4238594))))

(declare-fun size!41130 (List!68140) Int)

(assert (=> b!7050667 (= res!2878397 (= (size!41130 lt!2529457) (+ (size!41130 (exprs!7034 lt!2529406)) (size!41130 (exprs!7034 ct2!306)))))))

(declare-fun d!2202585 () Bool)

(assert (=> d!2202585 e!4238594))

(declare-fun res!2878396 () Bool)

(assert (=> d!2202585 (=> (not res!2878396) (not e!4238594))))

(declare-fun content!13639 (List!68140) (Set Regex!17538))

(assert (=> d!2202585 (= res!2878396 (= (content!13639 lt!2529457) (set.union (content!13639 (exprs!7034 lt!2529406)) (content!13639 (exprs!7034 ct2!306)))))))

(declare-fun e!4238593 () List!68140)

(assert (=> d!2202585 (= lt!2529457 e!4238593)))

(declare-fun c!1313263 () Bool)

(assert (=> d!2202585 (= c!1313263 (is-Nil!68016 (exprs!7034 lt!2529406)))))

(assert (=> d!2202585 (= (++!15625 (exprs!7034 lt!2529406) (exprs!7034 ct2!306)) lt!2529457)))

(declare-fun b!7050665 () Bool)

(assert (=> b!7050665 (= e!4238593 (exprs!7034 ct2!306))))

(declare-fun b!7050666 () Bool)

(assert (=> b!7050666 (= e!4238593 (Cons!68016 (h!74464 (exprs!7034 lt!2529406)) (++!15625 (t!381919 (exprs!7034 lt!2529406)) (exprs!7034 ct2!306))))))

(assert (= (and d!2202585 c!1313263) b!7050665))

(assert (= (and d!2202585 (not c!1313263)) b!7050666))

(assert (= (and d!2202585 res!2878396) b!7050667))

(assert (= (and b!7050667 res!2878397) b!7050668))

(declare-fun m!7766496 () Bool)

(assert (=> b!7050667 m!7766496))

(declare-fun m!7766498 () Bool)

(assert (=> b!7050667 m!7766498))

(declare-fun m!7766500 () Bool)

(assert (=> b!7050667 m!7766500))

(declare-fun m!7766502 () Bool)

(assert (=> d!2202585 m!7766502))

(declare-fun m!7766504 () Bool)

(assert (=> d!2202585 m!7766504))

(declare-fun m!7766508 () Bool)

(assert (=> d!2202585 m!7766508))

(declare-fun m!7766510 () Bool)

(assert (=> b!7050666 m!7766510))

(assert (=> b!7050607 d!2202585))

(declare-fun d!2202589 () Bool)

(assert (=> d!2202589 (forall!16467 (++!15625 (exprs!7034 lt!2529406) (exprs!7034 ct2!306)) lambda!418910)))

(declare-fun lt!2529461 () Unit!161752)

(declare-fun choose!53663 (List!68140 List!68140 Int) Unit!161752)

(assert (=> d!2202589 (= lt!2529461 (choose!53663 (exprs!7034 lt!2529406) (exprs!7034 ct2!306) lambda!418910))))

(assert (=> d!2202589 (forall!16467 (exprs!7034 lt!2529406) lambda!418910)))

(assert (=> d!2202589 (= (lemmaConcatPreservesForall!853 (exprs!7034 lt!2529406) (exprs!7034 ct2!306) lambda!418910) lt!2529461)))

(declare-fun bs!1875831 () Bool)

(assert (= bs!1875831 d!2202589))

(assert (=> bs!1875831 m!7766408))

(assert (=> bs!1875831 m!7766408))

(declare-fun m!7766514 () Bool)

(assert (=> bs!1875831 m!7766514))

(declare-fun m!7766516 () Bool)

(assert (=> bs!1875831 m!7766516))

(declare-fun m!7766518 () Bool)

(assert (=> bs!1875831 m!7766518))

(assert (=> b!7050607 d!2202589))

(declare-fun d!2202593 () Bool)

(declare-fun e!4238598 () Bool)

(assert (=> d!2202593 e!4238598))

(declare-fun res!2878400 () Bool)

(assert (=> d!2202593 (=> (not res!2878400) (not e!4238598))))

(declare-fun lt!2529466 () Context!13068)

(declare-fun dynLambda!27557 (Int Context!13068) Context!13068)

(assert (=> d!2202593 (= res!2878400 (= lt!2529401 (dynLambda!27557 lambda!418909 lt!2529466)))))

(declare-fun choose!53664 ((Set Context!13068) Int Context!13068) Context!13068)

(assert (=> d!2202593 (= lt!2529466 (choose!53664 z1!570 lambda!418909 lt!2529401))))

(declare-fun map!15852 ((Set Context!13068) Int) (Set Context!13068))

(assert (=> d!2202593 (set.member lt!2529401 (map!15852 z1!570 lambda!418909))))

(assert (=> d!2202593 (= (mapPost2!373 z1!570 lambda!418909 lt!2529401) lt!2529466)))

(declare-fun b!7050672 () Bool)

(assert (=> b!7050672 (= e!4238598 (set.member lt!2529466 z1!570))))

(assert (= (and d!2202593 res!2878400) b!7050672))

(declare-fun b_lambda!268099 () Bool)

(assert (=> (not b_lambda!268099) (not d!2202593)))

(declare-fun m!7766520 () Bool)

(assert (=> d!2202593 m!7766520))

(declare-fun m!7766522 () Bool)

(assert (=> d!2202593 m!7766522))

(declare-fun m!7766524 () Bool)

(assert (=> d!2202593 m!7766524))

(declare-fun m!7766526 () Bool)

(assert (=> d!2202593 m!7766526))

(declare-fun m!7766528 () Bool)

(assert (=> b!7050672 m!7766528))

(assert (=> b!7050607 d!2202593))

(declare-fun d!2202595 () Bool)

(declare-fun c!1313266 () Bool)

(declare-fun isEmpty!39686 (List!68141) Bool)

(assert (=> d!2202595 (= c!1313266 (isEmpty!39686 s!7408))))

(declare-fun e!4238601 () Bool)

(assert (=> d!2202595 (= (matchZipper!3078 lt!2529397 s!7408) e!4238601)))

(declare-fun b!7050677 () Bool)

(assert (=> b!7050677 (= e!4238601 (nullableZipper!2631 lt!2529397))))

(declare-fun b!7050678 () Bool)

(declare-fun derivationStepZipper!2991 ((Set Context!13068) C!35346) (Set Context!13068))

(declare-fun head!14327 (List!68141) C!35346)

(declare-fun tail!13660 (List!68141) List!68141)

(assert (=> b!7050678 (= e!4238601 (matchZipper!3078 (derivationStepZipper!2991 lt!2529397 (head!14327 s!7408)) (tail!13660 s!7408)))))

(assert (= (and d!2202595 c!1313266) b!7050677))

(assert (= (and d!2202595 (not c!1313266)) b!7050678))

(declare-fun m!7766544 () Bool)

(assert (=> d!2202595 m!7766544))

(assert (=> b!7050677 m!7766416))

(declare-fun m!7766546 () Bool)

(assert (=> b!7050678 m!7766546))

(assert (=> b!7050678 m!7766546))

(declare-fun m!7766548 () Bool)

(assert (=> b!7050678 m!7766548))

(declare-fun m!7766550 () Bool)

(assert (=> b!7050678 m!7766550))

(assert (=> b!7050678 m!7766548))

(assert (=> b!7050678 m!7766550))

(declare-fun m!7766552 () Bool)

(assert (=> b!7050678 m!7766552))

(assert (=> start!683022 d!2202595))

(declare-fun bs!1875835 () Bool)

(declare-fun d!2202603 () Bool)

(assert (= bs!1875835 (and d!2202603 b!7050607)))

(declare-fun lambda!418944 () Int)

(assert (=> bs!1875835 (= lambda!418944 lambda!418909)))

(assert (=> d!2202603 true))

(assert (=> d!2202603 (= (appendTo!659 z1!570 ct2!306) (map!15852 z1!570 lambda!418944))))

(declare-fun bs!1875836 () Bool)

(assert (= bs!1875836 d!2202603))

(declare-fun m!7766554 () Bool)

(assert (=> bs!1875836 m!7766554))

(assert (=> start!683022 d!2202603))

(declare-fun bs!1875837 () Bool)

(declare-fun d!2202605 () Bool)

(assert (= bs!1875837 (and d!2202605 b!7050607)))

(declare-fun lambda!418947 () Int)

(assert (=> bs!1875837 (= lambda!418947 lambda!418910)))

(declare-fun bs!1875838 () Bool)

(assert (= bs!1875838 (and d!2202605 b!7050605)))

(assert (=> bs!1875838 (not (= lambda!418947 lambda!418911))))

(declare-fun bs!1875839 () Bool)

(assert (= bs!1875839 (and d!2202605 d!2202579)))

(assert (=> bs!1875839 (not (= lambda!418947 lambda!418939))))

(assert (=> d!2202605 (= (inv!86705 ct2!306) (forall!16467 (exprs!7034 ct2!306) lambda!418947))))

(declare-fun bs!1875840 () Bool)

(assert (= bs!1875840 d!2202605))

(declare-fun m!7766562 () Bool)

(assert (=> bs!1875840 m!7766562))

(assert (=> start!683022 d!2202605))

(declare-fun d!2202607 () Bool)

(assert (=> d!2202607 (forall!16467 (exprs!7034 lt!2529406) lambda!418911)))

(declare-fun lt!2529474 () Unit!161752)

(declare-fun choose!53665 (List!68140 List!68140 Int) Unit!161752)

(assert (=> d!2202607 (= lt!2529474 (choose!53665 lt!2529405 (exprs!7034 lt!2529406) lambda!418911))))

(assert (=> d!2202607 (forall!16467 lt!2529405 lambda!418911)))

(assert (=> d!2202607 (= (lemmaContentSubsetPreservesForall!349 lt!2529405 (exprs!7034 lt!2529406) lambda!418911) lt!2529474)))

(declare-fun bs!1875841 () Bool)

(assert (= bs!1875841 d!2202607))

(declare-fun m!7766570 () Bool)

(assert (=> bs!1875841 m!7766570))

(declare-fun m!7766572 () Bool)

(assert (=> bs!1875841 m!7766572))

(declare-fun m!7766574 () Bool)

(assert (=> bs!1875841 m!7766574))

(assert (=> b!7050605 d!2202607))

(declare-fun b!7050696 () Bool)

(declare-fun e!4238615 () Bool)

(assert (=> b!7050696 (= e!4238615 (subseq!698 (exprs!7034 ct2!306) (t!381919 lt!2529405)))))

(declare-fun b!7050695 () Bool)

(declare-fun e!4238616 () Bool)

(assert (=> b!7050695 (= e!4238616 (subseq!698 (t!381919 (exprs!7034 ct2!306)) (t!381919 lt!2529405)))))

(declare-fun d!2202611 () Bool)

(declare-fun res!2878412 () Bool)

(declare-fun e!4238614 () Bool)

(assert (=> d!2202611 (=> res!2878412 e!4238614)))

(assert (=> d!2202611 (= res!2878412 (is-Nil!68016 (exprs!7034 ct2!306)))))

(assert (=> d!2202611 (= (subseq!698 (exprs!7034 ct2!306) lt!2529405) e!4238614)))

(declare-fun b!7050693 () Bool)

(declare-fun e!4238613 () Bool)

(assert (=> b!7050693 (= e!4238614 e!4238613)))

(declare-fun res!2878409 () Bool)

(assert (=> b!7050693 (=> (not res!2878409) (not e!4238613))))

(assert (=> b!7050693 (= res!2878409 (is-Cons!68016 lt!2529405))))

(declare-fun b!7050694 () Bool)

(assert (=> b!7050694 (= e!4238613 e!4238615)))

(declare-fun res!2878410 () Bool)

(assert (=> b!7050694 (=> res!2878410 e!4238615)))

(assert (=> b!7050694 (= res!2878410 e!4238616)))

(declare-fun res!2878411 () Bool)

(assert (=> b!7050694 (=> (not res!2878411) (not e!4238616))))

(assert (=> b!7050694 (= res!2878411 (= (h!74464 (exprs!7034 ct2!306)) (h!74464 lt!2529405)))))

(assert (= (and d!2202611 (not res!2878412)) b!7050693))

(assert (= (and b!7050693 res!2878409) b!7050694))

(assert (= (and b!7050694 res!2878411) b!7050695))

(assert (= (and b!7050694 (not res!2878410)) b!7050696))

(declare-fun m!7766578 () Bool)

(assert (=> b!7050696 m!7766578))

(declare-fun m!7766580 () Bool)

(assert (=> b!7050695 m!7766580))

(assert (=> b!7050605 d!2202611))

(declare-fun d!2202615 () Bool)

(assert (=> d!2202615 (subseq!698 (exprs!7034 ct2!306) (++!15625 (exprs!7034 lt!2529406) (exprs!7034 ct2!306)))))

(declare-fun lt!2529477 () Unit!161752)

(declare-fun choose!53666 (List!68140 List!68140) Unit!161752)

(assert (=> d!2202615 (= lt!2529477 (choose!53666 (exprs!7034 lt!2529406) (exprs!7034 ct2!306)))))

(assert (=> d!2202615 (= (lemmaConcatThenSecondSubseqOfTot!19 (exprs!7034 lt!2529406) (exprs!7034 ct2!306)) lt!2529477)))

(declare-fun bs!1875844 () Bool)

(assert (= bs!1875844 d!2202615))

(assert (=> bs!1875844 m!7766408))

(assert (=> bs!1875844 m!7766408))

(declare-fun m!7766582 () Bool)

(assert (=> bs!1875844 m!7766582))

(declare-fun m!7766584 () Bool)

(assert (=> bs!1875844 m!7766584))

(assert (=> b!7050605 d!2202615))

(declare-fun bs!1875845 () Bool)

(declare-fun d!2202617 () Bool)

(assert (= bs!1875845 (and d!2202617 b!7050607)))

(declare-fun lambda!418953 () Int)

(assert (=> bs!1875845 (not (= lambda!418953 lambda!418910))))

(declare-fun bs!1875846 () Bool)

(assert (= bs!1875846 (and d!2202617 b!7050605)))

(assert (=> bs!1875846 (= lambda!418953 lambda!418911)))

(declare-fun bs!1875847 () Bool)

(assert (= bs!1875847 (and d!2202617 d!2202579)))

(assert (=> bs!1875847 (= lambda!418953 lambda!418939)))

(declare-fun bs!1875848 () Bool)

(assert (= bs!1875848 (and d!2202617 d!2202605)))

(assert (=> bs!1875848 (not (= lambda!418953 lambda!418947))))

(assert (=> d!2202617 (= (nullableContext!94 lt!2529406) (forall!16467 (exprs!7034 lt!2529406) lambda!418953))))

(declare-fun bs!1875849 () Bool)

(assert (= bs!1875849 d!2202617))

(declare-fun m!7766586 () Bool)

(assert (=> bs!1875849 m!7766586))

(assert (=> b!7050605 d!2202617))

(declare-fun d!2202619 () Bool)

(assert (=> d!2202619 (subseq!698 (exprs!7034 lt!2529406) (++!15625 (exprs!7034 lt!2529406) (exprs!7034 ct2!306)))))

(declare-fun lt!2529480 () Unit!161752)

(declare-fun choose!53667 (List!68140 List!68140) Unit!161752)

(assert (=> d!2202619 (= lt!2529480 (choose!53667 (exprs!7034 lt!2529406) (exprs!7034 ct2!306)))))

(assert (=> d!2202619 (= (lemmaConcatThenFirstSubseqOfTot!19 (exprs!7034 lt!2529406) (exprs!7034 ct2!306)) lt!2529480)))

(declare-fun bs!1875854 () Bool)

(assert (= bs!1875854 d!2202619))

(assert (=> bs!1875854 m!7766408))

(assert (=> bs!1875854 m!7766408))

(declare-fun m!7766590 () Bool)

(assert (=> bs!1875854 m!7766590))

(declare-fun m!7766592 () Bool)

(assert (=> bs!1875854 m!7766592))

(assert (=> b!7050605 d!2202619))

(declare-fun b!7050702 () Bool)

(declare-fun e!4238620 () Bool)

(assert (=> b!7050702 (= e!4238620 (subseq!698 (exprs!7034 lt!2529406) (t!381919 lt!2529405)))))

(declare-fun b!7050701 () Bool)

(declare-fun e!4238621 () Bool)

(assert (=> b!7050701 (= e!4238621 (subseq!698 (t!381919 (exprs!7034 lt!2529406)) (t!381919 lt!2529405)))))

(declare-fun d!2202623 () Bool)

(declare-fun res!2878416 () Bool)

(declare-fun e!4238619 () Bool)

(assert (=> d!2202623 (=> res!2878416 e!4238619)))

(assert (=> d!2202623 (= res!2878416 (is-Nil!68016 (exprs!7034 lt!2529406)))))

(assert (=> d!2202623 (= (subseq!698 (exprs!7034 lt!2529406) lt!2529405) e!4238619)))

(declare-fun b!7050699 () Bool)

(declare-fun e!4238618 () Bool)

(assert (=> b!7050699 (= e!4238619 e!4238618)))

(declare-fun res!2878413 () Bool)

(assert (=> b!7050699 (=> (not res!2878413) (not e!4238618))))

(assert (=> b!7050699 (= res!2878413 (is-Cons!68016 lt!2529405))))

(declare-fun b!7050700 () Bool)

(assert (=> b!7050700 (= e!4238618 e!4238620)))

(declare-fun res!2878414 () Bool)

(assert (=> b!7050700 (=> res!2878414 e!4238620)))

(assert (=> b!7050700 (= res!2878414 e!4238621)))

(declare-fun res!2878415 () Bool)

(assert (=> b!7050700 (=> (not res!2878415) (not e!4238621))))

(assert (=> b!7050700 (= res!2878415 (= (h!74464 (exprs!7034 lt!2529406)) (h!74464 lt!2529405)))))

(assert (= (and d!2202623 (not res!2878416)) b!7050699))

(assert (= (and b!7050699 res!2878413) b!7050700))

(assert (= (and b!7050700 res!2878415) b!7050701))

(assert (= (and b!7050700 (not res!2878414)) b!7050702))

(declare-fun m!7766602 () Bool)

(assert (=> b!7050702 m!7766602))

(declare-fun m!7766604 () Bool)

(assert (=> b!7050701 m!7766604))

(assert (=> b!7050605 d!2202623))

(declare-fun d!2202625 () Bool)

(assert (=> d!2202625 (forall!16467 (exprs!7034 ct2!306) lambda!418911)))

(declare-fun lt!2529481 () Unit!161752)

(assert (=> d!2202625 (= lt!2529481 (choose!53665 lt!2529405 (exprs!7034 ct2!306) lambda!418911))))

(assert (=> d!2202625 (forall!16467 lt!2529405 lambda!418911)))

(assert (=> d!2202625 (= (lemmaContentSubsetPreservesForall!349 lt!2529405 (exprs!7034 ct2!306) lambda!418911) lt!2529481)))

(declare-fun bs!1875855 () Bool)

(assert (= bs!1875855 d!2202625))

(declare-fun m!7766608 () Bool)

(assert (=> bs!1875855 m!7766608))

(declare-fun m!7766610 () Bool)

(assert (=> bs!1875855 m!7766610))

(assert (=> bs!1875855 m!7766574))

(assert (=> b!7050605 d!2202625))

(declare-fun bs!1875856 () Bool)

(declare-fun d!2202629 () Bool)

(assert (= bs!1875856 (and d!2202629 b!7050605)))

(declare-fun lambda!418955 () Int)

(assert (=> bs!1875856 (= lambda!418955 lambda!418911)))

(declare-fun bs!1875857 () Bool)

(assert (= bs!1875857 (and d!2202629 d!2202617)))

(assert (=> bs!1875857 (= lambda!418955 lambda!418953)))

(declare-fun bs!1875858 () Bool)

(assert (= bs!1875858 (and d!2202629 b!7050607)))

(assert (=> bs!1875858 (not (= lambda!418955 lambda!418910))))

(declare-fun bs!1875859 () Bool)

(assert (= bs!1875859 (and d!2202629 d!2202579)))

(assert (=> bs!1875859 (= lambda!418955 lambda!418939)))

(declare-fun bs!1875860 () Bool)

(assert (= bs!1875860 (and d!2202629 d!2202605)))

(assert (=> bs!1875860 (not (= lambda!418955 lambda!418947))))

(assert (=> d!2202629 (= (nullableContext!94 ct2!306) (forall!16467 (exprs!7034 ct2!306) lambda!418955))))

(declare-fun bs!1875861 () Bool)

(assert (= bs!1875861 d!2202629))

(declare-fun m!7766612 () Bool)

(assert (=> bs!1875861 m!7766612))

(assert (=> b!7050610 d!2202629))

(declare-fun d!2202631 () Bool)

(declare-fun lt!2529484 () Bool)

(declare-fun exists!3512 (List!68144 Int) Bool)

(assert (=> d!2202631 (= lt!2529484 (exists!3512 (toList!10879 lt!2529397) lambda!418908))))

(declare-fun choose!53668 ((Set Context!13068) Int) Bool)

(assert (=> d!2202631 (= lt!2529484 (choose!53668 lt!2529397 lambda!418908))))

(assert (=> d!2202631 (= (exists!3510 lt!2529397 lambda!418908) lt!2529484)))

(declare-fun bs!1875862 () Bool)

(assert (= bs!1875862 d!2202631))

(assert (=> bs!1875862 m!7766482))

(assert (=> bs!1875862 m!7766482))

(declare-fun m!7766614 () Bool)

(assert (=> bs!1875862 m!7766614))

(declare-fun m!7766616 () Bool)

(assert (=> bs!1875862 m!7766616))

(assert (=> b!7050611 d!2202631))

(declare-fun bs!1875863 () Bool)

(declare-fun d!2202633 () Bool)

(assert (= bs!1875863 (and d!2202633 b!7050611)))

(declare-fun lambda!418958 () Int)

(assert (=> bs!1875863 (= lambda!418958 lambda!418908)))

(assert (=> d!2202633 (= (nullableZipper!2631 lt!2529397) (exists!3510 lt!2529397 lambda!418958))))

(declare-fun bs!1875864 () Bool)

(assert (= bs!1875864 d!2202633))

(declare-fun m!7766618 () Bool)

(assert (=> bs!1875864 m!7766618))

(assert (=> b!7050609 d!2202633))

(declare-fun d!2202635 () Bool)

(declare-fun lt!2529485 () Bool)

(assert (=> d!2202635 (= lt!2529485 (exists!3512 (toList!10879 z1!570) lambda!418908))))

(assert (=> d!2202635 (= lt!2529485 (choose!53668 z1!570 lambda!418908))))

(assert (=> d!2202635 (= (exists!3510 z1!570 lambda!418908) lt!2529485)))

(declare-fun bs!1875865 () Bool)

(assert (= bs!1875865 d!2202635))

(declare-fun m!7766620 () Bool)

(assert (=> bs!1875865 m!7766620))

(assert (=> bs!1875865 m!7766620))

(declare-fun m!7766622 () Bool)

(assert (=> bs!1875865 m!7766622))

(declare-fun m!7766624 () Bool)

(assert (=> bs!1875865 m!7766624))

(assert (=> b!7050613 d!2202635))

(declare-fun d!2202637 () Bool)

(declare-fun lt!2529486 () Bool)

(assert (=> d!2202637 (= lt!2529486 (exists!3512 (toList!10879 lt!2529396) lambda!418908))))

(assert (=> d!2202637 (= lt!2529486 (choose!53668 lt!2529396 lambda!418908))))

(assert (=> d!2202637 (= (exists!3510 lt!2529396 lambda!418908) lt!2529486)))

(declare-fun bs!1875866 () Bool)

(assert (= bs!1875866 d!2202637))

(declare-fun m!7766626 () Bool)

(assert (=> bs!1875866 m!7766626))

(assert (=> bs!1875866 m!7766626))

(declare-fun m!7766628 () Bool)

(assert (=> bs!1875866 m!7766628))

(declare-fun m!7766630 () Bool)

(assert (=> bs!1875866 m!7766630))

(assert (=> b!7050613 d!2202637))

(declare-fun d!2202639 () Bool)

(assert (=> d!2202639 (exists!3510 lt!2529396 lambda!418908)))

(declare-fun lt!2529491 () Unit!161752)

(declare-fun choose!53670 ((Set Context!13068) Context!13068 Int) Unit!161752)

(assert (=> d!2202639 (= lt!2529491 (choose!53670 lt!2529396 ct2!306 lambda!418908))))

(assert (=> d!2202639 (set.member ct2!306 lt!2529396)))

(assert (=> d!2202639 (= (lemmaContainsThenExists!122 lt!2529396 ct2!306 lambda!418908) lt!2529491)))

(declare-fun bs!1875867 () Bool)

(assert (= bs!1875867 d!2202639))

(assert (=> bs!1875867 m!7766390))

(declare-fun m!7766632 () Bool)

(assert (=> bs!1875867 m!7766632))

(declare-fun m!7766634 () Bool)

(assert (=> bs!1875867 m!7766634))

(assert (=> b!7050613 d!2202639))

(declare-fun d!2202641 () Bool)

(assert (=> d!2202641 (exists!3510 z1!570 lambda!418908)))

(declare-fun lt!2529492 () Unit!161752)

(assert (=> d!2202641 (= lt!2529492 (choose!53670 z1!570 lt!2529406 lambda!418908))))

(assert (=> d!2202641 (set.member lt!2529406 z1!570)))

(assert (=> d!2202641 (= (lemmaContainsThenExists!122 z1!570 lt!2529406 lambda!418908) lt!2529492)))

(declare-fun bs!1875868 () Bool)

(assert (= bs!1875868 d!2202641))

(assert (=> bs!1875868 m!7766388))

(declare-fun m!7766636 () Bool)

(assert (=> bs!1875868 m!7766636))

(declare-fun m!7766638 () Bool)

(assert (=> bs!1875868 m!7766638))

(assert (=> b!7050613 d!2202641))

(declare-fun d!2202643 () Bool)

(declare-fun c!1313277 () Bool)

(assert (=> d!2202643 (= c!1313277 (isEmpty!39686 Nil!68017))))

(declare-fun e!4238623 () Bool)

(assert (=> d!2202643 (= (matchZipper!3078 z1!570 Nil!68017) e!4238623)))

(declare-fun b!7050703 () Bool)

(assert (=> b!7050703 (= e!4238623 (nullableZipper!2631 z1!570))))

(declare-fun b!7050704 () Bool)

(assert (=> b!7050704 (= e!4238623 (matchZipper!3078 (derivationStepZipper!2991 z1!570 (head!14327 Nil!68017)) (tail!13660 Nil!68017)))))

(assert (= (and d!2202643 c!1313277) b!7050703))

(assert (= (and d!2202643 (not c!1313277)) b!7050704))

(declare-fun m!7766640 () Bool)

(assert (=> d!2202643 m!7766640))

(declare-fun m!7766642 () Bool)

(assert (=> b!7050703 m!7766642))

(declare-fun m!7766644 () Bool)

(assert (=> b!7050704 m!7766644))

(assert (=> b!7050704 m!7766644))

(declare-fun m!7766646 () Bool)

(assert (=> b!7050704 m!7766646))

(declare-fun m!7766648 () Bool)

(assert (=> b!7050704 m!7766648))

(assert (=> b!7050704 m!7766646))

(assert (=> b!7050704 m!7766648))

(declare-fun m!7766650 () Bool)

(assert (=> b!7050704 m!7766650))

(assert (=> b!7050613 d!2202643))

(declare-fun bs!1875869 () Bool)

(declare-fun d!2202645 () Bool)

(assert (= bs!1875869 (and d!2202645 b!7050605)))

(declare-fun lambda!418963 () Int)

(assert (=> bs!1875869 (not (= lambda!418963 lambda!418911))))

(declare-fun bs!1875870 () Bool)

(assert (= bs!1875870 (and d!2202645 d!2202629)))

(assert (=> bs!1875870 (not (= lambda!418963 lambda!418955))))

(declare-fun bs!1875871 () Bool)

(assert (= bs!1875871 (and d!2202645 d!2202617)))

(assert (=> bs!1875871 (not (= lambda!418963 lambda!418953))))

(declare-fun bs!1875872 () Bool)

(assert (= bs!1875872 (and d!2202645 b!7050607)))

(assert (=> bs!1875872 (= lambda!418963 lambda!418910)))

(declare-fun bs!1875873 () Bool)

(assert (= bs!1875873 (and d!2202645 d!2202579)))

(assert (=> bs!1875873 (not (= lambda!418963 lambda!418939))))

(declare-fun bs!1875874 () Bool)

(assert (= bs!1875874 (and d!2202645 d!2202605)))

(assert (=> bs!1875874 (= lambda!418963 lambda!418947)))

(assert (=> d!2202645 (= (inv!86705 setElem!49636) (forall!16467 (exprs!7034 setElem!49636) lambda!418963))))

(declare-fun bs!1875875 () Bool)

(assert (= bs!1875875 d!2202645))

(declare-fun m!7766652 () Bool)

(assert (=> bs!1875875 m!7766652))

(assert (=> setNonEmpty!49636 d!2202645))

(declare-fun b!7050709 () Bool)

(declare-fun e!4238626 () Bool)

(declare-fun tp!1938987 () Bool)

(declare-fun tp!1938988 () Bool)

(assert (=> b!7050709 (= e!4238626 (and tp!1938987 tp!1938988))))

(assert (=> b!7050603 (= tp!1938970 e!4238626)))

(assert (= (and b!7050603 (is-Cons!68016 (exprs!7034 ct2!306))) b!7050709))

(declare-fun condSetEmpty!49642 () Bool)

(assert (=> setNonEmpty!49636 (= condSetEmpty!49642 (= setRest!49636 (as set.empty (Set Context!13068))))))

(declare-fun setRes!49642 () Bool)

(assert (=> setNonEmpty!49636 (= tp!1938968 setRes!49642)))

(declare-fun setIsEmpty!49642 () Bool)

(assert (=> setIsEmpty!49642 setRes!49642))

(declare-fun e!4238629 () Bool)

(declare-fun setNonEmpty!49642 () Bool)

(declare-fun tp!1938993 () Bool)

(declare-fun setElem!49642 () Context!13068)

(assert (=> setNonEmpty!49642 (= setRes!49642 (and tp!1938993 (inv!86705 setElem!49642) e!4238629))))

(declare-fun setRest!49642 () (Set Context!13068))

(assert (=> setNonEmpty!49642 (= setRest!49636 (set.union (set.insert setElem!49642 (as set.empty (Set Context!13068))) setRest!49642))))

(declare-fun b!7050714 () Bool)

(declare-fun tp!1938994 () Bool)

(assert (=> b!7050714 (= e!4238629 tp!1938994)))

(assert (= (and setNonEmpty!49636 condSetEmpty!49642) setIsEmpty!49642))

(assert (= (and setNonEmpty!49636 (not condSetEmpty!49642)) setNonEmpty!49642))

(assert (= setNonEmpty!49642 b!7050714))

(declare-fun m!7766654 () Bool)

(assert (=> setNonEmpty!49642 m!7766654))

(declare-fun b!7050715 () Bool)

(declare-fun e!4238630 () Bool)

(declare-fun tp!1938995 () Bool)

(declare-fun tp!1938996 () Bool)

(assert (=> b!7050715 (= e!4238630 (and tp!1938995 tp!1938996))))

(assert (=> b!7050604 (= tp!1938967 e!4238630)))

(assert (= (and b!7050604 (is-Cons!68016 (exprs!7034 setElem!49636))) b!7050715))

(declare-fun b!7050720 () Bool)

(declare-fun e!4238633 () Bool)

(declare-fun tp!1938999 () Bool)

(assert (=> b!7050720 (= e!4238633 (and tp_is_empty!44301 tp!1938999))))

(assert (=> b!7050608 (= tp!1938969 e!4238633)))

(assert (= (and b!7050608 (is-Cons!68017 (t!381920 s!7408))) b!7050720))

(declare-fun b_lambda!268101 () Bool)

(assert (= b_lambda!268095 (or b!7050611 b_lambda!268101)))

(declare-fun bs!1875879 () Bool)

(declare-fun d!2202649 () Bool)

(assert (= bs!1875879 (and d!2202649 b!7050611)))

(assert (=> bs!1875879 (= (dynLambda!27556 lambda!418908 lt!2529451) (nullableContext!94 lt!2529451))))

(declare-fun m!7766658 () Bool)

(assert (=> bs!1875879 m!7766658))

(assert (=> d!2202581 d!2202649))

(declare-fun b_lambda!268103 () Bool)

(assert (= b_lambda!268099 (or b!7050607 b_lambda!268103)))

(declare-fun bs!1875881 () Bool)

(declare-fun d!2202651 () Bool)

(assert (= bs!1875881 (and d!2202651 b!7050607)))

(declare-fun lt!2529493 () Unit!161752)

(assert (=> bs!1875881 (= lt!2529493 (lemmaConcatPreservesForall!853 (exprs!7034 lt!2529466) (exprs!7034 ct2!306) lambda!418910))))

(assert (=> bs!1875881 (= (dynLambda!27557 lambda!418909 lt!2529466) (Context!13069 (++!15625 (exprs!7034 lt!2529466) (exprs!7034 ct2!306))))))

(declare-fun m!7766660 () Bool)

(assert (=> bs!1875881 m!7766660))

(declare-fun m!7766662 () Bool)

(assert (=> bs!1875881 m!7766662))

(assert (=> d!2202593 d!2202651))

(push 1)

(assert (not b!7050702))

(assert (not d!2202585))

(assert (not b!7050696))

(assert (not d!2202641))

(assert (not d!2202595))

(assert (not b!7050704))

(assert (not d!2202619))

(assert (not d!2202589))

(assert (not b_lambda!268103))

(assert (not bs!1875879))

(assert (not b!7050666))

(assert (not d!2202579))

(assert (not b!7050695))

(assert (not b!7050715))

(assert (not b!7050678))

(assert (not d!2202593))

(assert (not d!2202631))

(assert (not d!2202617))

(assert (not d!2202581))

(assert (not b!7050667))

(assert (not b!7050703))

(assert (not d!2202607))

(assert (not d!2202639))

(assert (not d!2202637))

(assert (not d!2202615))

(assert (not b!7050714))

(assert (not b!7050720))

(assert (not b!7050677))

(assert (not d!2202643))

(assert (not d!2202625))

(assert (not bs!1875881))

(assert (not b_lambda!268101))

(assert (not d!2202633))

(assert (not d!2202605))

(assert tp_is_empty!44301)

(assert (not setNonEmpty!49642))

(assert (not d!2202629))

(assert (not d!2202645))

(assert (not d!2202635))

(assert (not d!2202603))

(assert (not b!7050701))

(assert (not b!7050709))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2202679 () Bool)

(assert (not d!2202679))

(assert (=> b!7050704 d!2202679))

(declare-fun d!2202681 () Bool)

(assert (not d!2202681))

(assert (=> b!7050704 d!2202681))

(declare-fun d!2202683 () Bool)

(assert (not d!2202683))

(assert (=> b!7050704 d!2202683))

(declare-fun d!2202685 () Bool)

(assert (not d!2202685))

(assert (=> b!7050704 d!2202685))

(declare-fun b!7050781 () Bool)

(declare-fun e!4238679 () Context!13068)

(declare-fun e!4238677 () Context!13068)

(assert (=> b!7050781 (= e!4238679 e!4238677)))

(declare-fun c!1313286 () Bool)

(assert (=> b!7050781 (= c!1313286 (is-Cons!68020 (toList!10879 lt!2529397)))))

(declare-fun b!7050782 () Bool)

(declare-fun lt!2529518 () Unit!161752)

(declare-fun Unit!161756 () Unit!161752)

(assert (=> b!7050782 (= lt!2529518 Unit!161756)))

(assert (=> b!7050782 false))

(declare-fun head!14329 (List!68144) Context!13068)

(assert (=> b!7050782 (= e!4238677 (head!14329 (toList!10879 lt!2529397)))))

(declare-fun b!7050783 () Bool)

(declare-fun e!4238678 () Bool)

(declare-fun lt!2529519 () Context!13068)

(declare-fun contains!20477 (List!68144 Context!13068) Bool)

(assert (=> b!7050783 (= e!4238678 (contains!20477 (toList!10879 lt!2529397) lt!2529519))))

(declare-fun b!7050784 () Bool)

(assert (=> b!7050784 (= e!4238679 (h!74468 (toList!10879 lt!2529397)))))

(declare-fun d!2202687 () Bool)

(assert (=> d!2202687 e!4238678))

(declare-fun res!2878446 () Bool)

(assert (=> d!2202687 (=> (not res!2878446) (not e!4238678))))

(assert (=> d!2202687 (= res!2878446 (dynLambda!27556 lambda!418908 lt!2529519))))

(assert (=> d!2202687 (= lt!2529519 e!4238679)))

(declare-fun c!1313285 () Bool)

(declare-fun e!4238680 () Bool)

(assert (=> d!2202687 (= c!1313285 e!4238680)))

(declare-fun res!2878447 () Bool)

(assert (=> d!2202687 (=> (not res!2878447) (not e!4238680))))

(assert (=> d!2202687 (= res!2878447 (is-Cons!68020 (toList!10879 lt!2529397)))))

(assert (=> d!2202687 (exists!3512 (toList!10879 lt!2529397) lambda!418908)))

(assert (=> d!2202687 (= (getWitness!1586 (toList!10879 lt!2529397) lambda!418908) lt!2529519)))

(declare-fun b!7050785 () Bool)

(assert (=> b!7050785 (= e!4238680 (dynLambda!27556 lambda!418908 (h!74468 (toList!10879 lt!2529397))))))

(declare-fun b!7050786 () Bool)

(assert (=> b!7050786 (= e!4238677 (getWitness!1586 (t!381923 (toList!10879 lt!2529397)) lambda!418908))))

(assert (= (and d!2202687 res!2878447) b!7050785))

(assert (= (and d!2202687 c!1313285) b!7050784))

(assert (= (and d!2202687 (not c!1313285)) b!7050781))

(assert (= (and b!7050781 c!1313286) b!7050786))

(assert (= (and b!7050781 (not c!1313286)) b!7050782))

(assert (= (and d!2202687 res!2878446) b!7050783))

(declare-fun b_lambda!268111 () Bool)

(assert (=> (not b_lambda!268111) (not d!2202687)))

(declare-fun b_lambda!268113 () Bool)

(assert (=> (not b_lambda!268113) (not b!7050785)))

(declare-fun m!7766734 () Bool)

(assert (=> b!7050785 m!7766734))

(assert (=> b!7050783 m!7766482))

(declare-fun m!7766736 () Bool)

(assert (=> b!7050783 m!7766736))

(declare-fun m!7766738 () Bool)

(assert (=> d!2202687 m!7766738))

(assert (=> d!2202687 m!7766482))

(assert (=> d!2202687 m!7766614))

(assert (=> b!7050782 m!7766482))

(declare-fun m!7766740 () Bool)

(assert (=> b!7050782 m!7766740))

(declare-fun m!7766742 () Bool)

(assert (=> b!7050786 m!7766742))

(assert (=> d!2202581 d!2202687))

(declare-fun d!2202689 () Bool)

(declare-fun e!4238683 () Bool)

(assert (=> d!2202689 e!4238683))

(declare-fun res!2878450 () Bool)

(assert (=> d!2202689 (=> (not res!2878450) (not e!4238683))))

(declare-fun lt!2529522 () List!68144)

(declare-fun noDuplicate!2665 (List!68144) Bool)

(assert (=> d!2202689 (= res!2878450 (noDuplicate!2665 lt!2529522))))

(declare-fun choose!53677 ((Set Context!13068)) List!68144)

(assert (=> d!2202689 (= lt!2529522 (choose!53677 lt!2529397))))

(assert (=> d!2202689 (= (toList!10879 lt!2529397) lt!2529522)))

(declare-fun b!7050789 () Bool)

(declare-fun content!13641 (List!68144) (Set Context!13068))

(assert (=> b!7050789 (= e!4238683 (= (content!13641 lt!2529522) lt!2529397))))

(assert (= (and d!2202689 res!2878450) b!7050789))

(declare-fun m!7766744 () Bool)

(assert (=> d!2202689 m!7766744))

(declare-fun m!7766746 () Bool)

(assert (=> d!2202689 m!7766746))

(declare-fun m!7766748 () Bool)

(assert (=> b!7050789 m!7766748))

(assert (=> d!2202581 d!2202689))

(assert (=> d!2202581 d!2202631))

(declare-fun bs!1875905 () Bool)

(declare-fun d!2202691 () Bool)

(assert (= bs!1875905 (and d!2202691 b!7050611)))

(declare-fun lambda!418968 () Int)

(assert (=> bs!1875905 (= lambda!418968 lambda!418908)))

(declare-fun bs!1875906 () Bool)

(assert (= bs!1875906 (and d!2202691 d!2202633)))

(assert (=> bs!1875906 (= lambda!418968 lambda!418958)))

(assert (=> d!2202691 (= (nullableZipper!2631 z1!570) (exists!3510 z1!570 lambda!418968))))

(declare-fun bs!1875907 () Bool)

(assert (= bs!1875907 d!2202691))

(declare-fun m!7766750 () Bool)

(assert (=> bs!1875907 m!7766750))

(assert (=> b!7050703 d!2202691))

(declare-fun b!7050793 () Bool)

(declare-fun e!4238686 () Bool)

(assert (=> b!7050793 (= e!4238686 (subseq!698 (exprs!7034 lt!2529406) (t!381919 (t!381919 lt!2529405))))))

(declare-fun b!7050792 () Bool)

(declare-fun e!4238687 () Bool)

(assert (=> b!7050792 (= e!4238687 (subseq!698 (t!381919 (exprs!7034 lt!2529406)) (t!381919 (t!381919 lt!2529405))))))

(declare-fun d!2202693 () Bool)

(declare-fun res!2878454 () Bool)

(declare-fun e!4238685 () Bool)

(assert (=> d!2202693 (=> res!2878454 e!4238685)))

(assert (=> d!2202693 (= res!2878454 (is-Nil!68016 (exprs!7034 lt!2529406)))))

(assert (=> d!2202693 (= (subseq!698 (exprs!7034 lt!2529406) (t!381919 lt!2529405)) e!4238685)))

(declare-fun b!7050790 () Bool)

(declare-fun e!4238684 () Bool)

(assert (=> b!7050790 (= e!4238685 e!4238684)))

(declare-fun res!2878451 () Bool)

(assert (=> b!7050790 (=> (not res!2878451) (not e!4238684))))

(assert (=> b!7050790 (= res!2878451 (is-Cons!68016 (t!381919 lt!2529405)))))

(declare-fun b!7050791 () Bool)

(assert (=> b!7050791 (= e!4238684 e!4238686)))

(declare-fun res!2878452 () Bool)

(assert (=> b!7050791 (=> res!2878452 e!4238686)))

(assert (=> b!7050791 (= res!2878452 e!4238687)))

(declare-fun res!2878453 () Bool)

(assert (=> b!7050791 (=> (not res!2878453) (not e!4238687))))

(assert (=> b!7050791 (= res!2878453 (= (h!74464 (exprs!7034 lt!2529406)) (h!74464 (t!381919 lt!2529405))))))

(assert (= (and d!2202693 (not res!2878454)) b!7050790))

(assert (= (and b!7050790 res!2878451) b!7050791))

(assert (= (and b!7050791 res!2878453) b!7050792))

(assert (= (and b!7050791 (not res!2878452)) b!7050793))

(declare-fun m!7766752 () Bool)

(assert (=> b!7050793 m!7766752))

(declare-fun m!7766754 () Bool)

(assert (=> b!7050792 m!7766754))

(assert (=> b!7050702 d!2202693))

(declare-fun b!7050797 () Bool)

(declare-fun e!4238690 () Bool)

(assert (=> b!7050797 (= e!4238690 (subseq!698 (t!381919 (exprs!7034 lt!2529406)) (t!381919 (t!381919 lt!2529405))))))

(declare-fun b!7050796 () Bool)

(declare-fun e!4238691 () Bool)

(assert (=> b!7050796 (= e!4238691 (subseq!698 (t!381919 (t!381919 (exprs!7034 lt!2529406))) (t!381919 (t!381919 lt!2529405))))))

(declare-fun d!2202695 () Bool)

(declare-fun res!2878458 () Bool)

(declare-fun e!4238689 () Bool)

(assert (=> d!2202695 (=> res!2878458 e!4238689)))

(assert (=> d!2202695 (= res!2878458 (is-Nil!68016 (t!381919 (exprs!7034 lt!2529406))))))

(assert (=> d!2202695 (= (subseq!698 (t!381919 (exprs!7034 lt!2529406)) (t!381919 lt!2529405)) e!4238689)))

(declare-fun b!7050794 () Bool)

(declare-fun e!4238688 () Bool)

(assert (=> b!7050794 (= e!4238689 e!4238688)))

(declare-fun res!2878455 () Bool)

(assert (=> b!7050794 (=> (not res!2878455) (not e!4238688))))

(assert (=> b!7050794 (= res!2878455 (is-Cons!68016 (t!381919 lt!2529405)))))

(declare-fun b!7050795 () Bool)

(assert (=> b!7050795 (= e!4238688 e!4238690)))

(declare-fun res!2878456 () Bool)

(assert (=> b!7050795 (=> res!2878456 e!4238690)))

(assert (=> b!7050795 (= res!2878456 e!4238691)))

(declare-fun res!2878457 () Bool)

(assert (=> b!7050795 (=> (not res!2878457) (not e!4238691))))

(assert (=> b!7050795 (= res!2878457 (= (h!74464 (t!381919 (exprs!7034 lt!2529406))) (h!74464 (t!381919 lt!2529405))))))

(assert (= (and d!2202695 (not res!2878458)) b!7050794))

(assert (= (and b!7050794 res!2878455) b!7050795))

(assert (= (and b!7050795 res!2878457) b!7050796))

(assert (= (and b!7050795 (not res!2878456)) b!7050797))

(assert (=> b!7050797 m!7766754))

(declare-fun m!7766756 () Bool)

(assert (=> b!7050796 m!7766756))

(assert (=> b!7050701 d!2202695))

(assert (=> d!2202639 d!2202637))

(declare-fun d!2202697 () Bool)

(assert (=> d!2202697 (exists!3510 lt!2529396 lambda!418908)))

(assert (=> d!2202697 true))

(declare-fun _$17!641 () Unit!161752)

(assert (=> d!2202697 (= (choose!53670 lt!2529396 ct2!306 lambda!418908) _$17!641)))

(declare-fun bs!1875908 () Bool)

(assert (= bs!1875908 d!2202697))

(assert (=> bs!1875908 m!7766390))

(assert (=> d!2202639 d!2202697))

(declare-fun b!7050801 () Bool)

(declare-fun e!4238695 () Bool)

(assert (=> b!7050801 (= e!4238695 (subseq!698 (t!381919 (exprs!7034 ct2!306)) (t!381919 (t!381919 lt!2529405))))))

(declare-fun b!7050800 () Bool)

(declare-fun e!4238696 () Bool)

(assert (=> b!7050800 (= e!4238696 (subseq!698 (t!381919 (t!381919 (exprs!7034 ct2!306))) (t!381919 (t!381919 lt!2529405))))))

(declare-fun d!2202699 () Bool)

(declare-fun res!2878462 () Bool)

(declare-fun e!4238694 () Bool)

(assert (=> d!2202699 (=> res!2878462 e!4238694)))

(assert (=> d!2202699 (= res!2878462 (is-Nil!68016 (t!381919 (exprs!7034 ct2!306))))))

(assert (=> d!2202699 (= (subseq!698 (t!381919 (exprs!7034 ct2!306)) (t!381919 lt!2529405)) e!4238694)))

(declare-fun b!7050798 () Bool)

(declare-fun e!4238693 () Bool)

(assert (=> b!7050798 (= e!4238694 e!4238693)))

(declare-fun res!2878459 () Bool)

(assert (=> b!7050798 (=> (not res!2878459) (not e!4238693))))

(assert (=> b!7050798 (= res!2878459 (is-Cons!68016 (t!381919 lt!2529405)))))

(declare-fun b!7050799 () Bool)

(assert (=> b!7050799 (= e!4238693 e!4238695)))

(declare-fun res!2878460 () Bool)

(assert (=> b!7050799 (=> res!2878460 e!4238695)))

(assert (=> b!7050799 (= res!2878460 e!4238696)))

(declare-fun res!2878461 () Bool)

(assert (=> b!7050799 (=> (not res!2878461) (not e!4238696))))

(assert (=> b!7050799 (= res!2878461 (= (h!74464 (t!381919 (exprs!7034 ct2!306))) (h!74464 (t!381919 lt!2529405))))))

(assert (= (and d!2202699 (not res!2878462)) b!7050798))

(assert (= (and b!7050798 res!2878459) b!7050799))

(assert (= (and b!7050799 res!2878461) b!7050800))

(assert (= (and b!7050799 (not res!2878460)) b!7050801))

(declare-fun m!7766758 () Bool)

(assert (=> b!7050801 m!7766758))

(declare-fun m!7766760 () Bool)

(assert (=> b!7050800 m!7766760))

(assert (=> b!7050695 d!2202699))

(declare-fun d!2202701 () Bool)

(declare-fun lt!2529523 () Bool)

(assert (=> d!2202701 (= lt!2529523 (exists!3512 (toList!10879 lt!2529397) lambda!418958))))

(assert (=> d!2202701 (= lt!2529523 (choose!53668 lt!2529397 lambda!418958))))

(assert (=> d!2202701 (= (exists!3510 lt!2529397 lambda!418958) lt!2529523)))

(declare-fun bs!1875909 () Bool)

(assert (= bs!1875909 d!2202701))

(assert (=> bs!1875909 m!7766482))

(assert (=> bs!1875909 m!7766482))

(declare-fun m!7766762 () Bool)

(assert (=> bs!1875909 m!7766762))

(declare-fun m!7766764 () Bool)

(assert (=> bs!1875909 m!7766764))

(assert (=> d!2202633 d!2202701))

(declare-fun d!2202703 () Bool)

(assert (=> d!2202703 (= (isEmpty!39686 s!7408) (is-Nil!68017 s!7408))))

(assert (=> d!2202595 d!2202703))

(declare-fun d!2202705 () Bool)

(declare-fun lt!2529526 () Int)

(assert (=> d!2202705 (>= lt!2529526 0)))

(declare-fun e!4238699 () Int)

(assert (=> d!2202705 (= lt!2529526 e!4238699)))

(declare-fun c!1313289 () Bool)

(assert (=> d!2202705 (= c!1313289 (is-Nil!68016 lt!2529457))))

(assert (=> d!2202705 (= (size!41130 lt!2529457) lt!2529526)))

(declare-fun b!7050806 () Bool)

(assert (=> b!7050806 (= e!4238699 0)))

(declare-fun b!7050807 () Bool)

(assert (=> b!7050807 (= e!4238699 (+ 1 (size!41130 (t!381919 lt!2529457))))))

(assert (= (and d!2202705 c!1313289) b!7050806))

(assert (= (and d!2202705 (not c!1313289)) b!7050807))

(declare-fun m!7766766 () Bool)

(assert (=> b!7050807 m!7766766))

(assert (=> b!7050667 d!2202705))

(declare-fun d!2202707 () Bool)

(declare-fun lt!2529527 () Int)

(assert (=> d!2202707 (>= lt!2529527 0)))

(declare-fun e!4238700 () Int)

(assert (=> d!2202707 (= lt!2529527 e!4238700)))

(declare-fun c!1313290 () Bool)

(assert (=> d!2202707 (= c!1313290 (is-Nil!68016 (exprs!7034 lt!2529406)))))

(assert (=> d!2202707 (= (size!41130 (exprs!7034 lt!2529406)) lt!2529527)))

(declare-fun b!7050808 () Bool)

(assert (=> b!7050808 (= e!4238700 0)))

(declare-fun b!7050809 () Bool)

(assert (=> b!7050809 (= e!4238700 (+ 1 (size!41130 (t!381919 (exprs!7034 lt!2529406)))))))

(assert (= (and d!2202707 c!1313290) b!7050808))

(assert (= (and d!2202707 (not c!1313290)) b!7050809))

(declare-fun m!7766768 () Bool)

(assert (=> b!7050809 m!7766768))

(assert (=> b!7050667 d!2202707))

(declare-fun d!2202709 () Bool)

(declare-fun lt!2529528 () Int)

(assert (=> d!2202709 (>= lt!2529528 0)))

(declare-fun e!4238701 () Int)

(assert (=> d!2202709 (= lt!2529528 e!4238701)))

(declare-fun c!1313291 () Bool)

(assert (=> d!2202709 (= c!1313291 (is-Nil!68016 (exprs!7034 ct2!306)))))

(assert (=> d!2202709 (= (size!41130 (exprs!7034 ct2!306)) lt!2529528)))

(declare-fun b!7050810 () Bool)

(assert (=> b!7050810 (= e!4238701 0)))

(declare-fun b!7050811 () Bool)

(assert (=> b!7050811 (= e!4238701 (+ 1 (size!41130 (t!381919 (exprs!7034 ct2!306)))))))

(assert (= (and d!2202709 c!1313291) b!7050810))

(assert (= (and d!2202709 (not c!1313291)) b!7050811))

(declare-fun m!7766770 () Bool)

(assert (=> b!7050811 m!7766770))

(assert (=> b!7050667 d!2202709))

(declare-fun d!2202711 () Bool)

(declare-fun res!2878467 () Bool)

(declare-fun e!4238706 () Bool)

(assert (=> d!2202711 (=> res!2878467 e!4238706)))

(assert (=> d!2202711 (= res!2878467 (is-Nil!68016 (exprs!7034 ct2!306)))))

(assert (=> d!2202711 (= (forall!16467 (exprs!7034 ct2!306) lambda!418955) e!4238706)))

(declare-fun b!7050816 () Bool)

(declare-fun e!4238707 () Bool)

(assert (=> b!7050816 (= e!4238706 e!4238707)))

(declare-fun res!2878468 () Bool)

(assert (=> b!7050816 (=> (not res!2878468) (not e!4238707))))

(declare-fun dynLambda!27560 (Int Regex!17538) Bool)

(assert (=> b!7050816 (= res!2878468 (dynLambda!27560 lambda!418955 (h!74464 (exprs!7034 ct2!306))))))

(declare-fun b!7050817 () Bool)

(assert (=> b!7050817 (= e!4238707 (forall!16467 (t!381919 (exprs!7034 ct2!306)) lambda!418955))))

(assert (= (and d!2202711 (not res!2878467)) b!7050816))

(assert (= (and b!7050816 res!2878468) b!7050817))

(declare-fun b_lambda!268115 () Bool)

(assert (=> (not b_lambda!268115) (not b!7050816)))

(declare-fun m!7766772 () Bool)

(assert (=> b!7050816 m!7766772))

(declare-fun m!7766774 () Bool)

(assert (=> b!7050817 m!7766774))

(assert (=> d!2202629 d!2202711))

(declare-fun d!2202713 () Bool)

(declare-fun c!1313292 () Bool)

(assert (=> d!2202713 (= c!1313292 (isEmpty!39686 (tail!13660 s!7408)))))

(declare-fun e!4238708 () Bool)

(assert (=> d!2202713 (= (matchZipper!3078 (derivationStepZipper!2991 lt!2529397 (head!14327 s!7408)) (tail!13660 s!7408)) e!4238708)))

(declare-fun b!7050818 () Bool)

(assert (=> b!7050818 (= e!4238708 (nullableZipper!2631 (derivationStepZipper!2991 lt!2529397 (head!14327 s!7408))))))

(declare-fun b!7050819 () Bool)

(assert (=> b!7050819 (= e!4238708 (matchZipper!3078 (derivationStepZipper!2991 (derivationStepZipper!2991 lt!2529397 (head!14327 s!7408)) (head!14327 (tail!13660 s!7408))) (tail!13660 (tail!13660 s!7408))))))

(assert (= (and d!2202713 c!1313292) b!7050818))

(assert (= (and d!2202713 (not c!1313292)) b!7050819))

(assert (=> d!2202713 m!7766550))

(declare-fun m!7766776 () Bool)

(assert (=> d!2202713 m!7766776))

(assert (=> b!7050818 m!7766548))

(declare-fun m!7766778 () Bool)

(assert (=> b!7050818 m!7766778))

(assert (=> b!7050819 m!7766550))

(declare-fun m!7766780 () Bool)

(assert (=> b!7050819 m!7766780))

(assert (=> b!7050819 m!7766548))

(assert (=> b!7050819 m!7766780))

(declare-fun m!7766782 () Bool)

(assert (=> b!7050819 m!7766782))

(assert (=> b!7050819 m!7766550))

(declare-fun m!7766784 () Bool)

(assert (=> b!7050819 m!7766784))

(assert (=> b!7050819 m!7766782))

(assert (=> b!7050819 m!7766784))

(declare-fun m!7766786 () Bool)

(assert (=> b!7050819 m!7766786))

(assert (=> b!7050678 d!2202713))

(declare-fun d!2202715 () Bool)

(assert (=> d!2202715 true))

(declare-fun lambda!418971 () Int)

(declare-fun flatMap!2476 ((Set Context!13068) Int) (Set Context!13068))

(assert (=> d!2202715 (= (derivationStepZipper!2991 lt!2529397 (head!14327 s!7408)) (flatMap!2476 lt!2529397 lambda!418971))))

(declare-fun bs!1875910 () Bool)

(assert (= bs!1875910 d!2202715))

(declare-fun m!7766788 () Bool)

(assert (=> bs!1875910 m!7766788))

(assert (=> b!7050678 d!2202715))

(declare-fun d!2202717 () Bool)

(assert (=> d!2202717 (= (head!14327 s!7408) (h!74465 s!7408))))

(assert (=> b!7050678 d!2202717))

(declare-fun d!2202719 () Bool)

(assert (=> d!2202719 (= (tail!13660 s!7408) (t!381920 s!7408))))

(assert (=> b!7050678 d!2202719))

(declare-fun e!4238710 () Bool)

(declare-fun lt!2529529 () List!68140)

(declare-fun b!7050825 () Bool)

(assert (=> b!7050825 (= e!4238710 (or (not (= (exprs!7034 ct2!306) Nil!68016)) (= lt!2529529 (t!381919 (exprs!7034 lt!2529406)))))))

(declare-fun b!7050824 () Bool)

(declare-fun res!2878470 () Bool)

(assert (=> b!7050824 (=> (not res!2878470) (not e!4238710))))

(assert (=> b!7050824 (= res!2878470 (= (size!41130 lt!2529529) (+ (size!41130 (t!381919 (exprs!7034 lt!2529406))) (size!41130 (exprs!7034 ct2!306)))))))

(declare-fun d!2202721 () Bool)

(assert (=> d!2202721 e!4238710))

(declare-fun res!2878469 () Bool)

(assert (=> d!2202721 (=> (not res!2878469) (not e!4238710))))

(assert (=> d!2202721 (= res!2878469 (= (content!13639 lt!2529529) (set.union (content!13639 (t!381919 (exprs!7034 lt!2529406))) (content!13639 (exprs!7034 ct2!306)))))))

(declare-fun e!4238709 () List!68140)

(assert (=> d!2202721 (= lt!2529529 e!4238709)))

(declare-fun c!1313295 () Bool)

(assert (=> d!2202721 (= c!1313295 (is-Nil!68016 (t!381919 (exprs!7034 lt!2529406))))))

(assert (=> d!2202721 (= (++!15625 (t!381919 (exprs!7034 lt!2529406)) (exprs!7034 ct2!306)) lt!2529529)))

(declare-fun b!7050822 () Bool)

(assert (=> b!7050822 (= e!4238709 (exprs!7034 ct2!306))))

(declare-fun b!7050823 () Bool)

(assert (=> b!7050823 (= e!4238709 (Cons!68016 (h!74464 (t!381919 (exprs!7034 lt!2529406))) (++!15625 (t!381919 (t!381919 (exprs!7034 lt!2529406))) (exprs!7034 ct2!306))))))

(assert (= (and d!2202721 c!1313295) b!7050822))

(assert (= (and d!2202721 (not c!1313295)) b!7050823))

(assert (= (and d!2202721 res!2878469) b!7050824))

(assert (= (and b!7050824 res!2878470) b!7050825))

(declare-fun m!7766790 () Bool)

(assert (=> b!7050824 m!7766790))

(assert (=> b!7050824 m!7766768))

(assert (=> b!7050824 m!7766500))

(declare-fun m!7766792 () Bool)

(assert (=> d!2202721 m!7766792))

(declare-fun m!7766794 () Bool)

(assert (=> d!2202721 m!7766794))

(assert (=> d!2202721 m!7766508))

(declare-fun m!7766796 () Bool)

(assert (=> b!7050823 m!7766796))

(assert (=> b!7050666 d!2202721))

(declare-fun b!7050829 () Bool)

(declare-fun e!4238713 () Bool)

(assert (=> b!7050829 (= e!4238713 (subseq!698 (exprs!7034 lt!2529406) (t!381919 (++!15625 (exprs!7034 lt!2529406) (exprs!7034 ct2!306)))))))

(declare-fun b!7050828 () Bool)

(declare-fun e!4238714 () Bool)

(assert (=> b!7050828 (= e!4238714 (subseq!698 (t!381919 (exprs!7034 lt!2529406)) (t!381919 (++!15625 (exprs!7034 lt!2529406) (exprs!7034 ct2!306)))))))

(declare-fun d!2202723 () Bool)

(declare-fun res!2878474 () Bool)

(declare-fun e!4238712 () Bool)

(assert (=> d!2202723 (=> res!2878474 e!4238712)))

(assert (=> d!2202723 (= res!2878474 (is-Nil!68016 (exprs!7034 lt!2529406)))))

(assert (=> d!2202723 (= (subseq!698 (exprs!7034 lt!2529406) (++!15625 (exprs!7034 lt!2529406) (exprs!7034 ct2!306))) e!4238712)))

(declare-fun b!7050826 () Bool)

(declare-fun e!4238711 () Bool)

(assert (=> b!7050826 (= e!4238712 e!4238711)))

(declare-fun res!2878471 () Bool)

(assert (=> b!7050826 (=> (not res!2878471) (not e!4238711))))

(assert (=> b!7050826 (= res!2878471 (is-Cons!68016 (++!15625 (exprs!7034 lt!2529406) (exprs!7034 ct2!306))))))

(declare-fun b!7050827 () Bool)

(assert (=> b!7050827 (= e!4238711 e!4238713)))

(declare-fun res!2878472 () Bool)

(assert (=> b!7050827 (=> res!2878472 e!4238713)))

(assert (=> b!7050827 (= res!2878472 e!4238714)))

(declare-fun res!2878473 () Bool)

(assert (=> b!7050827 (=> (not res!2878473) (not e!4238714))))

(assert (=> b!7050827 (= res!2878473 (= (h!74464 (exprs!7034 lt!2529406)) (h!74464 (++!15625 (exprs!7034 lt!2529406) (exprs!7034 ct2!306)))))))

(assert (= (and d!2202723 (not res!2878474)) b!7050826))

(assert (= (and b!7050826 res!2878471) b!7050827))

(assert (= (and b!7050827 res!2878473) b!7050828))

(assert (= (and b!7050827 (not res!2878472)) b!7050829))

(declare-fun m!7766798 () Bool)

(assert (=> b!7050829 m!7766798))

(declare-fun m!7766800 () Bool)

(assert (=> b!7050828 m!7766800))

(assert (=> d!2202619 d!2202723))

(assert (=> d!2202619 d!2202585))

(declare-fun d!2202725 () Bool)

(assert (=> d!2202725 (subseq!698 (exprs!7034 lt!2529406) (++!15625 (exprs!7034 lt!2529406) (exprs!7034 ct2!306)))))

(assert (=> d!2202725 true))

(declare-fun _$84!46 () Unit!161752)

(assert (=> d!2202725 (= (choose!53667 (exprs!7034 lt!2529406) (exprs!7034 ct2!306)) _$84!46)))

(declare-fun bs!1875911 () Bool)

(assert (= bs!1875911 d!2202725))

(assert (=> bs!1875911 m!7766408))

(assert (=> bs!1875911 m!7766408))

(assert (=> bs!1875911 m!7766590))

(assert (=> d!2202619 d!2202725))

(assert (=> b!7050677 d!2202633))

(declare-fun d!2202727 () Bool)

(declare-fun res!2878475 () Bool)

(declare-fun e!4238715 () Bool)

(assert (=> d!2202727 (=> res!2878475 e!4238715)))

(assert (=> d!2202727 (= res!2878475 (is-Nil!68016 (exprs!7034 lt!2529401)))))

(assert (=> d!2202727 (= (forall!16467 (exprs!7034 lt!2529401) lambda!418939) e!4238715)))

(declare-fun b!7050830 () Bool)

(declare-fun e!4238716 () Bool)

(assert (=> b!7050830 (= e!4238715 e!4238716)))

(declare-fun res!2878476 () Bool)

(assert (=> b!7050830 (=> (not res!2878476) (not e!4238716))))

(assert (=> b!7050830 (= res!2878476 (dynLambda!27560 lambda!418939 (h!74464 (exprs!7034 lt!2529401))))))

(declare-fun b!7050831 () Bool)

(assert (=> b!7050831 (= e!4238716 (forall!16467 (t!381919 (exprs!7034 lt!2529401)) lambda!418939))))

(assert (= (and d!2202727 (not res!2878475)) b!7050830))

(assert (= (and b!7050830 res!2878476) b!7050831))

(declare-fun b_lambda!268117 () Bool)

(assert (=> (not b_lambda!268117) (not b!7050830)))

(declare-fun m!7766802 () Bool)

(assert (=> b!7050830 m!7766802))

(declare-fun m!7766804 () Bool)

(assert (=> b!7050831 m!7766804))

(assert (=> d!2202579 d!2202727))

(declare-fun d!2202729 () Bool)

(declare-fun c!1313298 () Bool)

(assert (=> d!2202729 (= c!1313298 (is-Nil!68016 lt!2529457))))

(declare-fun e!4238719 () (Set Regex!17538))

(assert (=> d!2202729 (= (content!13639 lt!2529457) e!4238719)))

(declare-fun b!7050836 () Bool)

(assert (=> b!7050836 (= e!4238719 (as set.empty (Set Regex!17538)))))

(declare-fun b!7050837 () Bool)

(assert (=> b!7050837 (= e!4238719 (set.union (set.insert (h!74464 lt!2529457) (as set.empty (Set Regex!17538))) (content!13639 (t!381919 lt!2529457))))))

(assert (= (and d!2202729 c!1313298) b!7050836))

(assert (= (and d!2202729 (not c!1313298)) b!7050837))

(declare-fun m!7766806 () Bool)

(assert (=> b!7050837 m!7766806))

(declare-fun m!7766808 () Bool)

(assert (=> b!7050837 m!7766808))

(assert (=> d!2202585 d!2202729))

(declare-fun d!2202731 () Bool)

(declare-fun c!1313299 () Bool)

(assert (=> d!2202731 (= c!1313299 (is-Nil!68016 (exprs!7034 lt!2529406)))))

(declare-fun e!4238720 () (Set Regex!17538))

(assert (=> d!2202731 (= (content!13639 (exprs!7034 lt!2529406)) e!4238720)))

(declare-fun b!7050838 () Bool)

(assert (=> b!7050838 (= e!4238720 (as set.empty (Set Regex!17538)))))

(declare-fun b!7050839 () Bool)

(assert (=> b!7050839 (= e!4238720 (set.union (set.insert (h!74464 (exprs!7034 lt!2529406)) (as set.empty (Set Regex!17538))) (content!13639 (t!381919 (exprs!7034 lt!2529406)))))))

(assert (= (and d!2202731 c!1313299) b!7050838))

(assert (= (and d!2202731 (not c!1313299)) b!7050839))

(declare-fun m!7766810 () Bool)

(assert (=> b!7050839 m!7766810))

(assert (=> b!7050839 m!7766794))

(assert (=> d!2202585 d!2202731))

(declare-fun d!2202733 () Bool)

(declare-fun c!1313300 () Bool)

(assert (=> d!2202733 (= c!1313300 (is-Nil!68016 (exprs!7034 ct2!306)))))

(declare-fun e!4238721 () (Set Regex!17538))

(assert (=> d!2202733 (= (content!13639 (exprs!7034 ct2!306)) e!4238721)))

(declare-fun b!7050840 () Bool)

(assert (=> b!7050840 (= e!4238721 (as set.empty (Set Regex!17538)))))

(declare-fun b!7050841 () Bool)

(assert (=> b!7050841 (= e!4238721 (set.union (set.insert (h!74464 (exprs!7034 ct2!306)) (as set.empty (Set Regex!17538))) (content!13639 (t!381919 (exprs!7034 ct2!306)))))))

(assert (= (and d!2202733 c!1313300) b!7050840))

(assert (= (and d!2202733 (not c!1313300)) b!7050841))

(declare-fun m!7766812 () Bool)

(assert (=> b!7050841 m!7766812))

(declare-fun m!7766814 () Bool)

(assert (=> b!7050841 m!7766814))

(assert (=> d!2202585 d!2202733))

(declare-fun d!2202735 () Bool)

(declare-fun res!2878477 () Bool)

(declare-fun e!4238722 () Bool)

(assert (=> d!2202735 (=> res!2878477 e!4238722)))

(assert (=> d!2202735 (= res!2878477 (is-Nil!68016 (++!15625 (exprs!7034 lt!2529406) (exprs!7034 ct2!306))))))

(assert (=> d!2202735 (= (forall!16467 (++!15625 (exprs!7034 lt!2529406) (exprs!7034 ct2!306)) lambda!418910) e!4238722)))

(declare-fun b!7050842 () Bool)

(declare-fun e!4238723 () Bool)

(assert (=> b!7050842 (= e!4238722 e!4238723)))

(declare-fun res!2878478 () Bool)

(assert (=> b!7050842 (=> (not res!2878478) (not e!4238723))))

(assert (=> b!7050842 (= res!2878478 (dynLambda!27560 lambda!418910 (h!74464 (++!15625 (exprs!7034 lt!2529406) (exprs!7034 ct2!306)))))))

(declare-fun b!7050843 () Bool)

(assert (=> b!7050843 (= e!4238723 (forall!16467 (t!381919 (++!15625 (exprs!7034 lt!2529406) (exprs!7034 ct2!306))) lambda!418910))))

(assert (= (and d!2202735 (not res!2878477)) b!7050842))

(assert (= (and b!7050842 res!2878478) b!7050843))

(declare-fun b_lambda!268119 () Bool)

(assert (=> (not b_lambda!268119) (not b!7050842)))

(declare-fun m!7766816 () Bool)

(assert (=> b!7050842 m!7766816))

(declare-fun m!7766818 () Bool)

(assert (=> b!7050843 m!7766818))

(assert (=> d!2202589 d!2202735))

(assert (=> d!2202589 d!2202585))

(declare-fun d!2202737 () Bool)

(assert (=> d!2202737 (forall!16467 (++!15625 (exprs!7034 lt!2529406) (exprs!7034 ct2!306)) lambda!418910)))

(assert (=> d!2202737 true))

(declare-fun _$78!637 () Unit!161752)

(assert (=> d!2202737 (= (choose!53663 (exprs!7034 lt!2529406) (exprs!7034 ct2!306) lambda!418910) _$78!637)))

(declare-fun bs!1875912 () Bool)

(assert (= bs!1875912 d!2202737))

(assert (=> bs!1875912 m!7766408))

(assert (=> bs!1875912 m!7766408))

(assert (=> bs!1875912 m!7766514))

(assert (=> d!2202589 d!2202737))

(declare-fun d!2202739 () Bool)

(declare-fun res!2878479 () Bool)

(declare-fun e!4238724 () Bool)

(assert (=> d!2202739 (=> res!2878479 e!4238724)))

(assert (=> d!2202739 (= res!2878479 (is-Nil!68016 (exprs!7034 lt!2529406)))))

(assert (=> d!2202739 (= (forall!16467 (exprs!7034 lt!2529406) lambda!418910) e!4238724)))

(declare-fun b!7050844 () Bool)

(declare-fun e!4238725 () Bool)

(assert (=> b!7050844 (= e!4238724 e!4238725)))

(declare-fun res!2878480 () Bool)

(assert (=> b!7050844 (=> (not res!2878480) (not e!4238725))))

(assert (=> b!7050844 (= res!2878480 (dynLambda!27560 lambda!418910 (h!74464 (exprs!7034 lt!2529406))))))

(declare-fun b!7050845 () Bool)

(assert (=> b!7050845 (= e!4238725 (forall!16467 (t!381919 (exprs!7034 lt!2529406)) lambda!418910))))

(assert (= (and d!2202739 (not res!2878479)) b!7050844))

(assert (= (and b!7050844 res!2878480) b!7050845))

(declare-fun b_lambda!268121 () Bool)

(assert (=> (not b_lambda!268121) (not b!7050844)))

(declare-fun m!7766820 () Bool)

(assert (=> b!7050844 m!7766820))

(declare-fun m!7766822 () Bool)

(assert (=> b!7050845 m!7766822))

(assert (=> d!2202589 d!2202739))

(declare-fun d!2202741 () Bool)

(declare-fun e!4238731 () Bool)

(assert (=> d!2202741 e!4238731))

(declare-fun res!2878483 () Bool)

(assert (=> d!2202741 (=> (not res!2878483) (not e!4238731))))

(declare-fun a!13408 () Context!13068)

(assert (=> d!2202741 (= res!2878483 (= lt!2529401 (dynLambda!27557 lambda!418909 a!13408)))))

(declare-fun e!4238730 () Bool)

(assert (=> d!2202741 (and (inv!86705 a!13408) e!4238730)))

(assert (=> d!2202741 (= (choose!53664 z1!570 lambda!418909 lt!2529401) a!13408)))

(declare-fun b!7050851 () Bool)

(declare-fun tp!1939019 () Bool)

(assert (=> b!7050851 (= e!4238730 tp!1939019)))

(declare-fun b!7050852 () Bool)

(assert (=> b!7050852 (= e!4238731 (set.member a!13408 z1!570))))

(assert (= d!2202741 b!7050851))

(assert (= (and d!2202741 res!2878483) b!7050852))

(declare-fun b_lambda!268123 () Bool)

(assert (=> (not b_lambda!268123) (not d!2202741)))

(declare-fun m!7766824 () Bool)

(assert (=> d!2202741 m!7766824))

(declare-fun m!7766826 () Bool)

(assert (=> d!2202741 m!7766826))

(declare-fun m!7766828 () Bool)

(assert (=> b!7050852 m!7766828))

(assert (=> d!2202593 d!2202741))

(declare-fun d!2202743 () Bool)

(declare-fun choose!53678 ((Set Context!13068) Int) (Set Context!13068))

(assert (=> d!2202743 (= (map!15852 z1!570 lambda!418909) (choose!53678 z1!570 lambda!418909))))

(declare-fun bs!1875913 () Bool)

(assert (= bs!1875913 d!2202743))

(declare-fun m!7766830 () Bool)

(assert (=> bs!1875913 m!7766830))

(assert (=> d!2202593 d!2202743))

(assert (=> d!2202641 d!2202635))

(declare-fun d!2202745 () Bool)

(assert (=> d!2202745 (exists!3510 z1!570 lambda!418908)))

(assert (=> d!2202745 true))

(declare-fun _$17!642 () Unit!161752)

(assert (=> d!2202745 (= (choose!53670 z1!570 lt!2529406 lambda!418908) _$17!642)))

(declare-fun bs!1875914 () Bool)

(assert (= bs!1875914 d!2202745))

(assert (=> bs!1875914 m!7766388))

(assert (=> d!2202641 d!2202745))

(declare-fun bs!1875915 () Bool)

(declare-fun d!2202747 () Bool)

(assert (= bs!1875915 (and d!2202747 b!7050605)))

(declare-fun lambda!418972 () Int)

(assert (=> bs!1875915 (= lambda!418972 lambda!418911)))

(declare-fun bs!1875916 () Bool)

(assert (= bs!1875916 (and d!2202747 d!2202629)))

(assert (=> bs!1875916 (= lambda!418972 lambda!418955)))

(declare-fun bs!1875917 () Bool)

(assert (= bs!1875917 (and d!2202747 d!2202617)))

(assert (=> bs!1875917 (= lambda!418972 lambda!418953)))

(declare-fun bs!1875918 () Bool)

(assert (= bs!1875918 (and d!2202747 b!7050607)))

(assert (=> bs!1875918 (not (= lambda!418972 lambda!418910))))

(declare-fun bs!1875919 () Bool)

(assert (= bs!1875919 (and d!2202747 d!2202645)))

(assert (=> bs!1875919 (not (= lambda!418972 lambda!418963))))

(declare-fun bs!1875920 () Bool)

(assert (= bs!1875920 (and d!2202747 d!2202579)))

(assert (=> bs!1875920 (= lambda!418972 lambda!418939)))

(declare-fun bs!1875921 () Bool)

(assert (= bs!1875921 (and d!2202747 d!2202605)))

(assert (=> bs!1875921 (not (= lambda!418972 lambda!418947))))

(assert (=> d!2202747 (= (nullableContext!94 lt!2529451) (forall!16467 (exprs!7034 lt!2529451) lambda!418972))))

(declare-fun bs!1875922 () Bool)

(assert (= bs!1875922 d!2202747))

(declare-fun m!7766832 () Bool)

(assert (=> bs!1875922 m!7766832))

(assert (=> bs!1875879 d!2202747))

(declare-fun d!2202749 () Bool)

(declare-fun res!2878484 () Bool)

(declare-fun e!4238732 () Bool)

(assert (=> d!2202749 (=> res!2878484 e!4238732)))

(assert (=> d!2202749 (= res!2878484 (is-Nil!68016 (exprs!7034 ct2!306)))))

(assert (=> d!2202749 (= (forall!16467 (exprs!7034 ct2!306) lambda!418947) e!4238732)))

(declare-fun b!7050853 () Bool)

(declare-fun e!4238733 () Bool)

(assert (=> b!7050853 (= e!4238732 e!4238733)))

(declare-fun res!2878485 () Bool)

(assert (=> b!7050853 (=> (not res!2878485) (not e!4238733))))

(assert (=> b!7050853 (= res!2878485 (dynLambda!27560 lambda!418947 (h!74464 (exprs!7034 ct2!306))))))

(declare-fun b!7050854 () Bool)

(assert (=> b!7050854 (= e!4238733 (forall!16467 (t!381919 (exprs!7034 ct2!306)) lambda!418947))))

(assert (= (and d!2202749 (not res!2878484)) b!7050853))

(assert (= (and b!7050853 res!2878485) b!7050854))

(declare-fun b_lambda!268125 () Bool)

(assert (=> (not b_lambda!268125) (not b!7050853)))

(declare-fun m!7766834 () Bool)

(assert (=> b!7050853 m!7766834))

(declare-fun m!7766836 () Bool)

(assert (=> b!7050854 m!7766836))

(assert (=> d!2202605 d!2202749))

(declare-fun bs!1875923 () Bool)

(declare-fun d!2202751 () Bool)

(assert (= bs!1875923 (and d!2202751 b!7050611)))

(declare-fun lambda!418975 () Int)

(assert (=> bs!1875923 (not (= lambda!418975 lambda!418908))))

(declare-fun bs!1875924 () Bool)

(assert (= bs!1875924 (and d!2202751 d!2202633)))

(assert (=> bs!1875924 (not (= lambda!418975 lambda!418958))))

(declare-fun bs!1875925 () Bool)

(assert (= bs!1875925 (and d!2202751 d!2202691)))

(assert (=> bs!1875925 (not (= lambda!418975 lambda!418968))))

(assert (=> d!2202751 true))

(declare-fun order!28261 () Int)

(declare-fun dynLambda!27561 (Int Int) Int)

(assert (=> d!2202751 (< (dynLambda!27561 order!28261 lambda!418908) (dynLambda!27561 order!28261 lambda!418975))))

(declare-fun forall!16469 (List!68144 Int) Bool)

(assert (=> d!2202751 (= (exists!3512 (toList!10879 z1!570) lambda!418908) (not (forall!16469 (toList!10879 z1!570) lambda!418975)))))

(declare-fun bs!1875926 () Bool)

(assert (= bs!1875926 d!2202751))

(assert (=> bs!1875926 m!7766620))

(declare-fun m!7766838 () Bool)

(assert (=> bs!1875926 m!7766838))

(assert (=> d!2202635 d!2202751))

(declare-fun d!2202753 () Bool)

(declare-fun e!4238734 () Bool)

(assert (=> d!2202753 e!4238734))

(declare-fun res!2878486 () Bool)

(assert (=> d!2202753 (=> (not res!2878486) (not e!4238734))))

(declare-fun lt!2529530 () List!68144)

(assert (=> d!2202753 (= res!2878486 (noDuplicate!2665 lt!2529530))))

(assert (=> d!2202753 (= lt!2529530 (choose!53677 z1!570))))

(assert (=> d!2202753 (= (toList!10879 z1!570) lt!2529530)))

(declare-fun b!7050857 () Bool)

(assert (=> b!7050857 (= e!4238734 (= (content!13641 lt!2529530) z1!570))))

(assert (= (and d!2202753 res!2878486) b!7050857))

(declare-fun m!7766840 () Bool)

(assert (=> d!2202753 m!7766840))

(declare-fun m!7766842 () Bool)

(assert (=> d!2202753 m!7766842))

(declare-fun m!7766844 () Bool)

(assert (=> b!7050857 m!7766844))

(assert (=> d!2202635 d!2202753))

(declare-fun d!2202755 () Bool)

(declare-fun res!2878489 () Bool)

(assert (=> d!2202755 (= res!2878489 (exists!3512 (toList!10879 z1!570) lambda!418908))))

(assert (=> d!2202755 true))

(assert (=> d!2202755 (= (choose!53668 z1!570 lambda!418908) res!2878489)))

(declare-fun bs!1875927 () Bool)

(assert (= bs!1875927 d!2202755))

(assert (=> bs!1875927 m!7766620))

(assert (=> bs!1875927 m!7766620))

(assert (=> bs!1875927 m!7766622))

(assert (=> d!2202635 d!2202755))

(declare-fun b!7050861 () Bool)

(declare-fun e!4238737 () Bool)

(assert (=> b!7050861 (= e!4238737 (subseq!698 (exprs!7034 ct2!306) (t!381919 (t!381919 lt!2529405))))))

(declare-fun b!7050860 () Bool)

(declare-fun e!4238738 () Bool)

(assert (=> b!7050860 (= e!4238738 (subseq!698 (t!381919 (exprs!7034 ct2!306)) (t!381919 (t!381919 lt!2529405))))))

(declare-fun d!2202757 () Bool)

(declare-fun res!2878493 () Bool)

(declare-fun e!4238736 () Bool)

(assert (=> d!2202757 (=> res!2878493 e!4238736)))

(assert (=> d!2202757 (= res!2878493 (is-Nil!68016 (exprs!7034 ct2!306)))))

(assert (=> d!2202757 (= (subseq!698 (exprs!7034 ct2!306) (t!381919 lt!2529405)) e!4238736)))

(declare-fun b!7050858 () Bool)

(declare-fun e!4238735 () Bool)

(assert (=> b!7050858 (= e!4238736 e!4238735)))

(declare-fun res!2878490 () Bool)

(assert (=> b!7050858 (=> (not res!2878490) (not e!4238735))))

(assert (=> b!7050858 (= res!2878490 (is-Cons!68016 (t!381919 lt!2529405)))))

(declare-fun b!7050859 () Bool)

(assert (=> b!7050859 (= e!4238735 e!4238737)))

(declare-fun res!2878491 () Bool)

(assert (=> b!7050859 (=> res!2878491 e!4238737)))

(assert (=> b!7050859 (= res!2878491 e!4238738)))

(declare-fun res!2878492 () Bool)

(assert (=> b!7050859 (=> (not res!2878492) (not e!4238738))))

(assert (=> b!7050859 (= res!2878492 (= (h!74464 (exprs!7034 ct2!306)) (h!74464 (t!381919 lt!2529405))))))

(assert (= (and d!2202757 (not res!2878493)) b!7050858))

(assert (= (and b!7050858 res!2878490) b!7050859))

(assert (= (and b!7050859 res!2878492) b!7050860))

(assert (= (and b!7050859 (not res!2878491)) b!7050861))

(declare-fun m!7766846 () Bool)

(assert (=> b!7050861 m!7766846))

(assert (=> b!7050860 m!7766758))

(assert (=> b!7050696 d!2202757))

(declare-fun d!2202759 () Bool)

(assert (=> d!2202759 (= (isEmpty!39686 Nil!68017) true)))

(assert (=> d!2202643 d!2202759))

(declare-fun bs!1875928 () Bool)

(declare-fun d!2202761 () Bool)

(assert (= bs!1875928 (and d!2202761 b!7050611)))

(declare-fun lambda!418976 () Int)

(assert (=> bs!1875928 (not (= lambda!418976 lambda!418908))))

(declare-fun bs!1875929 () Bool)

(assert (= bs!1875929 (and d!2202761 d!2202633)))

(assert (=> bs!1875929 (not (= lambda!418976 lambda!418958))))

(declare-fun bs!1875930 () Bool)

(assert (= bs!1875930 (and d!2202761 d!2202691)))

(assert (=> bs!1875930 (not (= lambda!418976 lambda!418968))))

(declare-fun bs!1875931 () Bool)

(assert (= bs!1875931 (and d!2202761 d!2202751)))

(assert (=> bs!1875931 (= lambda!418976 lambda!418975)))

(assert (=> d!2202761 true))

(assert (=> d!2202761 (< (dynLambda!27561 order!28261 lambda!418908) (dynLambda!27561 order!28261 lambda!418976))))

(assert (=> d!2202761 (= (exists!3512 (toList!10879 lt!2529396) lambda!418908) (not (forall!16469 (toList!10879 lt!2529396) lambda!418976)))))

(declare-fun bs!1875932 () Bool)

(assert (= bs!1875932 d!2202761))

(assert (=> bs!1875932 m!7766626))

(declare-fun m!7766848 () Bool)

(assert (=> bs!1875932 m!7766848))

(assert (=> d!2202637 d!2202761))

(declare-fun d!2202763 () Bool)

(declare-fun e!4238739 () Bool)

(assert (=> d!2202763 e!4238739))

(declare-fun res!2878494 () Bool)

(assert (=> d!2202763 (=> (not res!2878494) (not e!4238739))))

(declare-fun lt!2529531 () List!68144)

(assert (=> d!2202763 (= res!2878494 (noDuplicate!2665 lt!2529531))))

(assert (=> d!2202763 (= lt!2529531 (choose!53677 lt!2529396))))

(assert (=> d!2202763 (= (toList!10879 lt!2529396) lt!2529531)))

(declare-fun b!7050862 () Bool)

(assert (=> b!7050862 (= e!4238739 (= (content!13641 lt!2529531) lt!2529396))))

(assert (= (and d!2202763 res!2878494) b!7050862))

(declare-fun m!7766850 () Bool)

(assert (=> d!2202763 m!7766850))

(declare-fun m!7766852 () Bool)

(assert (=> d!2202763 m!7766852))

(declare-fun m!7766854 () Bool)

(assert (=> b!7050862 m!7766854))

(assert (=> d!2202637 d!2202763))

(declare-fun d!2202765 () Bool)

(declare-fun res!2878495 () Bool)

(assert (=> d!2202765 (= res!2878495 (exists!3512 (toList!10879 lt!2529396) lambda!418908))))

(assert (=> d!2202765 true))

(assert (=> d!2202765 (= (choose!53668 lt!2529396 lambda!418908) res!2878495)))

(declare-fun bs!1875933 () Bool)

(assert (= bs!1875933 d!2202765))

(assert (=> bs!1875933 m!7766626))

(assert (=> bs!1875933 m!7766626))

(assert (=> bs!1875933 m!7766628))

(assert (=> d!2202637 d!2202765))

(declare-fun d!2202767 () Bool)

(assert (=> d!2202767 (= (map!15852 z1!570 lambda!418944) (choose!53678 z1!570 lambda!418944))))

(declare-fun bs!1875934 () Bool)

(assert (= bs!1875934 d!2202767))

(declare-fun m!7766856 () Bool)

(assert (=> bs!1875934 m!7766856))

(assert (=> d!2202603 d!2202767))

(declare-fun bs!1875935 () Bool)

(declare-fun d!2202769 () Bool)

(assert (= bs!1875935 (and d!2202769 b!7050605)))

(declare-fun lambda!418977 () Int)

(assert (=> bs!1875935 (not (= lambda!418977 lambda!418911))))

(declare-fun bs!1875936 () Bool)

(assert (= bs!1875936 (and d!2202769 d!2202629)))

(assert (=> bs!1875936 (not (= lambda!418977 lambda!418955))))

(declare-fun bs!1875937 () Bool)

(assert (= bs!1875937 (and d!2202769 d!2202617)))

(assert (=> bs!1875937 (not (= lambda!418977 lambda!418953))))

(declare-fun bs!1875938 () Bool)

(assert (= bs!1875938 (and d!2202769 d!2202645)))

(assert (=> bs!1875938 (= lambda!418977 lambda!418963)))

(declare-fun bs!1875939 () Bool)

(assert (= bs!1875939 (and d!2202769 d!2202579)))

(assert (=> bs!1875939 (not (= lambda!418977 lambda!418939))))

(declare-fun bs!1875940 () Bool)

(assert (= bs!1875940 (and d!2202769 d!2202605)))

(assert (=> bs!1875940 (= lambda!418977 lambda!418947)))

(declare-fun bs!1875941 () Bool)

(assert (= bs!1875941 (and d!2202769 d!2202747)))

(assert (=> bs!1875941 (not (= lambda!418977 lambda!418972))))

(declare-fun bs!1875942 () Bool)

(assert (= bs!1875942 (and d!2202769 b!7050607)))

(assert (=> bs!1875942 (= lambda!418977 lambda!418910)))

(assert (=> d!2202769 (= (inv!86705 setElem!49642) (forall!16467 (exprs!7034 setElem!49642) lambda!418977))))

(declare-fun bs!1875943 () Bool)

(assert (= bs!1875943 d!2202769))

(declare-fun m!7766858 () Bool)

(assert (=> bs!1875943 m!7766858))

(assert (=> setNonEmpty!49642 d!2202769))

(declare-fun b!7050866 () Bool)

(declare-fun e!4238742 () Bool)

(assert (=> b!7050866 (= e!4238742 (subseq!698 (exprs!7034 ct2!306) (t!381919 (++!15625 (exprs!7034 lt!2529406) (exprs!7034 ct2!306)))))))

(declare-fun b!7050865 () Bool)

(declare-fun e!4238743 () Bool)

(assert (=> b!7050865 (= e!4238743 (subseq!698 (t!381919 (exprs!7034 ct2!306)) (t!381919 (++!15625 (exprs!7034 lt!2529406) (exprs!7034 ct2!306)))))))

(declare-fun d!2202771 () Bool)

(declare-fun res!2878499 () Bool)

(declare-fun e!4238741 () Bool)

(assert (=> d!2202771 (=> res!2878499 e!4238741)))

(assert (=> d!2202771 (= res!2878499 (is-Nil!68016 (exprs!7034 ct2!306)))))

(assert (=> d!2202771 (= (subseq!698 (exprs!7034 ct2!306) (++!15625 (exprs!7034 lt!2529406) (exprs!7034 ct2!306))) e!4238741)))

(declare-fun b!7050863 () Bool)

(declare-fun e!4238740 () Bool)

(assert (=> b!7050863 (= e!4238741 e!4238740)))

(declare-fun res!2878496 () Bool)

(assert (=> b!7050863 (=> (not res!2878496) (not e!4238740))))

(assert (=> b!7050863 (= res!2878496 (is-Cons!68016 (++!15625 (exprs!7034 lt!2529406) (exprs!7034 ct2!306))))))

(declare-fun b!7050864 () Bool)

(assert (=> b!7050864 (= e!4238740 e!4238742)))

(declare-fun res!2878497 () Bool)

(assert (=> b!7050864 (=> res!2878497 e!4238742)))

(assert (=> b!7050864 (= res!2878497 e!4238743)))

(declare-fun res!2878498 () Bool)

(assert (=> b!7050864 (=> (not res!2878498) (not e!4238743))))

(assert (=> b!7050864 (= res!2878498 (= (h!74464 (exprs!7034 ct2!306)) (h!74464 (++!15625 (exprs!7034 lt!2529406) (exprs!7034 ct2!306)))))))

(assert (= (and d!2202771 (not res!2878499)) b!7050863))

(assert (= (and b!7050863 res!2878496) b!7050864))

(assert (= (and b!7050864 res!2878498) b!7050865))

(assert (= (and b!7050864 (not res!2878497)) b!7050866))

(declare-fun m!7766860 () Bool)

(assert (=> b!7050866 m!7766860))

(declare-fun m!7766862 () Bool)

(assert (=> b!7050865 m!7766862))

(assert (=> d!2202615 d!2202771))

(assert (=> d!2202615 d!2202585))

(declare-fun d!2202773 () Bool)

(assert (=> d!2202773 (subseq!698 (exprs!7034 ct2!306) (++!15625 (exprs!7034 lt!2529406) (exprs!7034 ct2!306)))))

(assert (=> d!2202773 true))

(declare-fun _$85!236 () Unit!161752)

(assert (=> d!2202773 (= (choose!53666 (exprs!7034 lt!2529406) (exprs!7034 ct2!306)) _$85!236)))

(declare-fun bs!1875944 () Bool)

(assert (= bs!1875944 d!2202773))

(assert (=> bs!1875944 m!7766408))

(assert (=> bs!1875944 m!7766408))

(assert (=> bs!1875944 m!7766582))

(assert (=> d!2202615 d!2202773))

(declare-fun d!2202775 () Bool)

(declare-fun res!2878500 () Bool)

(declare-fun e!4238744 () Bool)

(assert (=> d!2202775 (=> res!2878500 e!4238744)))

(assert (=> d!2202775 (= res!2878500 (is-Nil!68016 (exprs!7034 lt!2529406)))))

(assert (=> d!2202775 (= (forall!16467 (exprs!7034 lt!2529406) lambda!418911) e!4238744)))

(declare-fun b!7050867 () Bool)

(declare-fun e!4238745 () Bool)

(assert (=> b!7050867 (= e!4238744 e!4238745)))

(declare-fun res!2878501 () Bool)

(assert (=> b!7050867 (=> (not res!2878501) (not e!4238745))))

(assert (=> b!7050867 (= res!2878501 (dynLambda!27560 lambda!418911 (h!74464 (exprs!7034 lt!2529406))))))

(declare-fun b!7050868 () Bool)

(assert (=> b!7050868 (= e!4238745 (forall!16467 (t!381919 (exprs!7034 lt!2529406)) lambda!418911))))

(assert (= (and d!2202775 (not res!2878500)) b!7050867))

(assert (= (and b!7050867 res!2878501) b!7050868))

(declare-fun b_lambda!268127 () Bool)

(assert (=> (not b_lambda!268127) (not b!7050867)))

(declare-fun m!7766864 () Bool)

(assert (=> b!7050867 m!7766864))

(declare-fun m!7766866 () Bool)

(assert (=> b!7050868 m!7766866))

(assert (=> d!2202607 d!2202775))

(declare-fun d!2202777 () Bool)

(assert (=> d!2202777 (forall!16467 (exprs!7034 lt!2529406) lambda!418911)))

(assert (=> d!2202777 true))

(declare-fun _$83!299 () Unit!161752)

(assert (=> d!2202777 (= (choose!53665 lt!2529405 (exprs!7034 lt!2529406) lambda!418911) _$83!299)))

(declare-fun bs!1875945 () Bool)

(assert (= bs!1875945 d!2202777))

(assert (=> bs!1875945 m!7766570))

(assert (=> d!2202607 d!2202777))

(declare-fun d!2202779 () Bool)

(declare-fun res!2878502 () Bool)

(declare-fun e!4238746 () Bool)

(assert (=> d!2202779 (=> res!2878502 e!4238746)))

(assert (=> d!2202779 (= res!2878502 (is-Nil!68016 lt!2529405))))

(assert (=> d!2202779 (= (forall!16467 lt!2529405 lambda!418911) e!4238746)))

(declare-fun b!7050869 () Bool)

(declare-fun e!4238747 () Bool)

(assert (=> b!7050869 (= e!4238746 e!4238747)))

(declare-fun res!2878503 () Bool)

(assert (=> b!7050869 (=> (not res!2878503) (not e!4238747))))

(assert (=> b!7050869 (= res!2878503 (dynLambda!27560 lambda!418911 (h!74464 lt!2529405)))))

(declare-fun b!7050870 () Bool)

(assert (=> b!7050870 (= e!4238747 (forall!16467 (t!381919 lt!2529405) lambda!418911))))

(assert (= (and d!2202779 (not res!2878502)) b!7050869))

(assert (= (and b!7050869 res!2878503) b!7050870))

(declare-fun b_lambda!268129 () Bool)

(assert (=> (not b_lambda!268129) (not b!7050869)))

(declare-fun m!7766868 () Bool)

(assert (=> b!7050869 m!7766868))

(declare-fun m!7766870 () Bool)

(assert (=> b!7050870 m!7766870))

(assert (=> d!2202607 d!2202779))

(declare-fun bs!1875946 () Bool)

(declare-fun d!2202781 () Bool)

(assert (= bs!1875946 (and d!2202781 d!2202751)))

(declare-fun lambda!418978 () Int)

(assert (=> bs!1875946 (= lambda!418978 lambda!418975)))

(declare-fun bs!1875947 () Bool)

(assert (= bs!1875947 (and d!2202781 d!2202633)))

(assert (=> bs!1875947 (not (= lambda!418978 lambda!418958))))

(declare-fun bs!1875948 () Bool)

(assert (= bs!1875948 (and d!2202781 d!2202761)))

(assert (=> bs!1875948 (= lambda!418978 lambda!418976)))

(declare-fun bs!1875949 () Bool)

(assert (= bs!1875949 (and d!2202781 b!7050611)))

(assert (=> bs!1875949 (not (= lambda!418978 lambda!418908))))

(declare-fun bs!1875950 () Bool)

(assert (= bs!1875950 (and d!2202781 d!2202691)))

(assert (=> bs!1875950 (not (= lambda!418978 lambda!418968))))

(assert (=> d!2202781 true))

(assert (=> d!2202781 (< (dynLambda!27561 order!28261 lambda!418908) (dynLambda!27561 order!28261 lambda!418978))))

(assert (=> d!2202781 (= (exists!3512 (toList!10879 lt!2529397) lambda!418908) (not (forall!16469 (toList!10879 lt!2529397) lambda!418978)))))

(declare-fun bs!1875951 () Bool)

(assert (= bs!1875951 d!2202781))

(assert (=> bs!1875951 m!7766482))

(declare-fun m!7766872 () Bool)

(assert (=> bs!1875951 m!7766872))

(assert (=> d!2202631 d!2202781))

(assert (=> d!2202631 d!2202689))

(declare-fun d!2202783 () Bool)

(declare-fun res!2878504 () Bool)

(assert (=> d!2202783 (= res!2878504 (exists!3512 (toList!10879 lt!2529397) lambda!418908))))

(assert (=> d!2202783 true))

(assert (=> d!2202783 (= (choose!53668 lt!2529397 lambda!418908) res!2878504)))

(declare-fun bs!1875952 () Bool)

(assert (= bs!1875952 d!2202783))

(assert (=> bs!1875952 m!7766482))

(assert (=> bs!1875952 m!7766482))

(assert (=> bs!1875952 m!7766614))

(assert (=> d!2202631 d!2202783))

(declare-fun d!2202785 () Bool)

(declare-fun res!2878505 () Bool)

(declare-fun e!4238748 () Bool)

(assert (=> d!2202785 (=> res!2878505 e!4238748)))

(assert (=> d!2202785 (= res!2878505 (is-Nil!68016 (exprs!7034 setElem!49636)))))

(assert (=> d!2202785 (= (forall!16467 (exprs!7034 setElem!49636) lambda!418963) e!4238748)))

(declare-fun b!7050871 () Bool)

(declare-fun e!4238749 () Bool)

(assert (=> b!7050871 (= e!4238748 e!4238749)))

(declare-fun res!2878506 () Bool)

(assert (=> b!7050871 (=> (not res!2878506) (not e!4238749))))

(assert (=> b!7050871 (= res!2878506 (dynLambda!27560 lambda!418963 (h!74464 (exprs!7034 setElem!49636))))))

(declare-fun b!7050872 () Bool)

(assert (=> b!7050872 (= e!4238749 (forall!16467 (t!381919 (exprs!7034 setElem!49636)) lambda!418963))))

(assert (= (and d!2202785 (not res!2878505)) b!7050871))

(assert (= (and b!7050871 res!2878506) b!7050872))

(declare-fun b_lambda!268131 () Bool)

(assert (=> (not b_lambda!268131) (not b!7050871)))

(declare-fun m!7766874 () Bool)

(assert (=> b!7050871 m!7766874))

(declare-fun m!7766876 () Bool)

(assert (=> b!7050872 m!7766876))

(assert (=> d!2202645 d!2202785))

(declare-fun d!2202787 () Bool)

(assert (=> d!2202787 (forall!16467 (++!15625 (exprs!7034 lt!2529466) (exprs!7034 ct2!306)) lambda!418910)))

(declare-fun lt!2529532 () Unit!161752)

(assert (=> d!2202787 (= lt!2529532 (choose!53663 (exprs!7034 lt!2529466) (exprs!7034 ct2!306) lambda!418910))))

(assert (=> d!2202787 (forall!16467 (exprs!7034 lt!2529466) lambda!418910)))

(assert (=> d!2202787 (= (lemmaConcatPreservesForall!853 (exprs!7034 lt!2529466) (exprs!7034 ct2!306) lambda!418910) lt!2529532)))

(declare-fun bs!1875953 () Bool)

(assert (= bs!1875953 d!2202787))

(assert (=> bs!1875953 m!7766662))

(assert (=> bs!1875953 m!7766662))

(declare-fun m!7766878 () Bool)

(assert (=> bs!1875953 m!7766878))

(declare-fun m!7766880 () Bool)

(assert (=> bs!1875953 m!7766880))

(declare-fun m!7766882 () Bool)

(assert (=> bs!1875953 m!7766882))

(assert (=> bs!1875881 d!2202787))

(declare-fun e!4238751 () Bool)

(declare-fun lt!2529533 () List!68140)

(declare-fun b!7050876 () Bool)

(assert (=> b!7050876 (= e!4238751 (or (not (= (exprs!7034 ct2!306) Nil!68016)) (= lt!2529533 (exprs!7034 lt!2529466))))))

(declare-fun b!7050875 () Bool)

(declare-fun res!2878508 () Bool)

(assert (=> b!7050875 (=> (not res!2878508) (not e!4238751))))

(assert (=> b!7050875 (= res!2878508 (= (size!41130 lt!2529533) (+ (size!41130 (exprs!7034 lt!2529466)) (size!41130 (exprs!7034 ct2!306)))))))

(declare-fun d!2202789 () Bool)

(assert (=> d!2202789 e!4238751))

(declare-fun res!2878507 () Bool)

(assert (=> d!2202789 (=> (not res!2878507) (not e!4238751))))

(assert (=> d!2202789 (= res!2878507 (= (content!13639 lt!2529533) (set.union (content!13639 (exprs!7034 lt!2529466)) (content!13639 (exprs!7034 ct2!306)))))))

(declare-fun e!4238750 () List!68140)

(assert (=> d!2202789 (= lt!2529533 e!4238750)))

(declare-fun c!1313301 () Bool)

(assert (=> d!2202789 (= c!1313301 (is-Nil!68016 (exprs!7034 lt!2529466)))))

(assert (=> d!2202789 (= (++!15625 (exprs!7034 lt!2529466) (exprs!7034 ct2!306)) lt!2529533)))

(declare-fun b!7050873 () Bool)

(assert (=> b!7050873 (= e!4238750 (exprs!7034 ct2!306))))

(declare-fun b!7050874 () Bool)

(assert (=> b!7050874 (= e!4238750 (Cons!68016 (h!74464 (exprs!7034 lt!2529466)) (++!15625 (t!381919 (exprs!7034 lt!2529466)) (exprs!7034 ct2!306))))))

(assert (= (and d!2202789 c!1313301) b!7050873))

(assert (= (and d!2202789 (not c!1313301)) b!7050874))

(assert (= (and d!2202789 res!2878507) b!7050875))

(assert (= (and b!7050875 res!2878508) b!7050876))

(declare-fun m!7766884 () Bool)

(assert (=> b!7050875 m!7766884))

(declare-fun m!7766886 () Bool)

(assert (=> b!7050875 m!7766886))

(assert (=> b!7050875 m!7766500))

(declare-fun m!7766888 () Bool)

(assert (=> d!2202789 m!7766888))

(declare-fun m!7766890 () Bool)

(assert (=> d!2202789 m!7766890))

(assert (=> d!2202789 m!7766508))

(declare-fun m!7766892 () Bool)

(assert (=> b!7050874 m!7766892))

(assert (=> bs!1875881 d!2202789))

(declare-fun d!2202791 () Bool)

(declare-fun res!2878509 () Bool)

(declare-fun e!4238752 () Bool)

(assert (=> d!2202791 (=> res!2878509 e!4238752)))

(assert (=> d!2202791 (= res!2878509 (is-Nil!68016 (exprs!7034 ct2!306)))))

(assert (=> d!2202791 (= (forall!16467 (exprs!7034 ct2!306) lambda!418911) e!4238752)))

(declare-fun b!7050877 () Bool)

(declare-fun e!4238753 () Bool)

(assert (=> b!7050877 (= e!4238752 e!4238753)))

(declare-fun res!2878510 () Bool)

(assert (=> b!7050877 (=> (not res!2878510) (not e!4238753))))

(assert (=> b!7050877 (= res!2878510 (dynLambda!27560 lambda!418911 (h!74464 (exprs!7034 ct2!306))))))

(declare-fun b!7050878 () Bool)

(assert (=> b!7050878 (= e!4238753 (forall!16467 (t!381919 (exprs!7034 ct2!306)) lambda!418911))))

(assert (= (and d!2202791 (not res!2878509)) b!7050877))

(assert (= (and b!7050877 res!2878510) b!7050878))

(declare-fun b_lambda!268133 () Bool)

(assert (=> (not b_lambda!268133) (not b!7050877)))

(declare-fun m!7766894 () Bool)

(assert (=> b!7050877 m!7766894))

(declare-fun m!7766896 () Bool)

(assert (=> b!7050878 m!7766896))

(assert (=> d!2202625 d!2202791))

(declare-fun d!2202793 () Bool)

(assert (=> d!2202793 (forall!16467 (exprs!7034 ct2!306) lambda!418911)))

(assert (=> d!2202793 true))

(declare-fun _$83!300 () Unit!161752)

(assert (=> d!2202793 (= (choose!53665 lt!2529405 (exprs!7034 ct2!306) lambda!418911) _$83!300)))

(declare-fun bs!1875954 () Bool)

(assert (= bs!1875954 d!2202793))

(assert (=> bs!1875954 m!7766608))

(assert (=> d!2202625 d!2202793))

(assert (=> d!2202625 d!2202779))

(declare-fun d!2202795 () Bool)

(declare-fun res!2878511 () Bool)

(declare-fun e!4238754 () Bool)

(assert (=> d!2202795 (=> res!2878511 e!4238754)))

(assert (=> d!2202795 (= res!2878511 (is-Nil!68016 (exprs!7034 lt!2529406)))))

(assert (=> d!2202795 (= (forall!16467 (exprs!7034 lt!2529406) lambda!418953) e!4238754)))

(declare-fun b!7050879 () Bool)

(declare-fun e!4238755 () Bool)

(assert (=> b!7050879 (= e!4238754 e!4238755)))

(declare-fun res!2878512 () Bool)

(assert (=> b!7050879 (=> (not res!2878512) (not e!4238755))))

(assert (=> b!7050879 (= res!2878512 (dynLambda!27560 lambda!418953 (h!74464 (exprs!7034 lt!2529406))))))

(declare-fun b!7050880 () Bool)

(assert (=> b!7050880 (= e!4238755 (forall!16467 (t!381919 (exprs!7034 lt!2529406)) lambda!418953))))

(assert (= (and d!2202795 (not res!2878511)) b!7050879))

(assert (= (and b!7050879 res!2878512) b!7050880))

(declare-fun b_lambda!268135 () Bool)

(assert (=> (not b_lambda!268135) (not b!7050879)))

(declare-fun m!7766898 () Bool)

(assert (=> b!7050879 m!7766898))

(declare-fun m!7766900 () Bool)

(assert (=> b!7050880 m!7766900))

(assert (=> d!2202617 d!2202795))

(declare-fun b!7050881 () Bool)

(declare-fun e!4238756 () Bool)

(declare-fun tp!1939020 () Bool)

(declare-fun tp!1939021 () Bool)

(assert (=> b!7050881 (= e!4238756 (and tp!1939020 tp!1939021))))

(assert (=> b!7050714 (= tp!1938994 e!4238756)))

(assert (= (and b!7050714 (is-Cons!68016 (exprs!7034 setElem!49642))) b!7050881))

(declare-fun b!7050894 () Bool)

(declare-fun e!4238759 () Bool)

(declare-fun tp!1939032 () Bool)

(assert (=> b!7050894 (= e!4238759 tp!1939032)))

(declare-fun b!7050892 () Bool)

(assert (=> b!7050892 (= e!4238759 tp_is_empty!44301)))

(declare-fun b!7050893 () Bool)

(declare-fun tp!1939036 () Bool)

(declare-fun tp!1939035 () Bool)

(assert (=> b!7050893 (= e!4238759 (and tp!1939036 tp!1939035))))

(assert (=> b!7050715 (= tp!1938995 e!4238759)))

(declare-fun b!7050895 () Bool)

(declare-fun tp!1939033 () Bool)

(declare-fun tp!1939034 () Bool)

(assert (=> b!7050895 (= e!4238759 (and tp!1939033 tp!1939034))))

(assert (= (and b!7050715 (is-ElementMatch!17538 (h!74464 (exprs!7034 setElem!49636)))) b!7050892))

(assert (= (and b!7050715 (is-Concat!26383 (h!74464 (exprs!7034 setElem!49636)))) b!7050893))

(assert (= (and b!7050715 (is-Star!17538 (h!74464 (exprs!7034 setElem!49636)))) b!7050894))

(assert (= (and b!7050715 (is-Union!17538 (h!74464 (exprs!7034 setElem!49636)))) b!7050895))

(declare-fun b!7050896 () Bool)

(declare-fun e!4238760 () Bool)

(declare-fun tp!1939037 () Bool)

(declare-fun tp!1939038 () Bool)

(assert (=> b!7050896 (= e!4238760 (and tp!1939037 tp!1939038))))

(assert (=> b!7050715 (= tp!1938996 e!4238760)))

(assert (= (and b!7050715 (is-Cons!68016 (t!381919 (exprs!7034 setElem!49636)))) b!7050896))

(declare-fun condSetEmpty!49646 () Bool)

(assert (=> setNonEmpty!49642 (= condSetEmpty!49646 (= setRest!49642 (as set.empty (Set Context!13068))))))

(declare-fun setRes!49646 () Bool)

(assert (=> setNonEmpty!49642 (= tp!1938993 setRes!49646)))

(declare-fun setIsEmpty!49646 () Bool)

(assert (=> setIsEmpty!49646 setRes!49646))

(declare-fun setElem!49646 () Context!13068)

(declare-fun setNonEmpty!49646 () Bool)

(declare-fun e!4238761 () Bool)

(declare-fun tp!1939039 () Bool)

(assert (=> setNonEmpty!49646 (= setRes!49646 (and tp!1939039 (inv!86705 setElem!49646) e!4238761))))

(declare-fun setRest!49646 () (Set Context!13068))

(assert (=> setNonEmpty!49646 (= setRest!49642 (set.union (set.insert setElem!49646 (as set.empty (Set Context!13068))) setRest!49646))))

(declare-fun b!7050897 () Bool)

(declare-fun tp!1939040 () Bool)

(assert (=> b!7050897 (= e!4238761 tp!1939040)))

(assert (= (and setNonEmpty!49642 condSetEmpty!49646) setIsEmpty!49646))

(assert (= (and setNonEmpty!49642 (not condSetEmpty!49646)) setNonEmpty!49646))

(assert (= setNonEmpty!49646 b!7050897))

(declare-fun m!7766902 () Bool)

(assert (=> setNonEmpty!49646 m!7766902))

(declare-fun b!7050900 () Bool)

(declare-fun e!4238762 () Bool)

(declare-fun tp!1939041 () Bool)

(assert (=> b!7050900 (= e!4238762 tp!1939041)))

(declare-fun b!7050898 () Bool)

(assert (=> b!7050898 (= e!4238762 tp_is_empty!44301)))

(declare-fun b!7050899 () Bool)

(declare-fun tp!1939045 () Bool)

(declare-fun tp!1939044 () Bool)

(assert (=> b!7050899 (= e!4238762 (and tp!1939045 tp!1939044))))

(assert (=> b!7050709 (= tp!1938987 e!4238762)))

(declare-fun b!7050901 () Bool)

(declare-fun tp!1939042 () Bool)

(declare-fun tp!1939043 () Bool)

(assert (=> b!7050901 (= e!4238762 (and tp!1939042 tp!1939043))))

(assert (= (and b!7050709 (is-ElementMatch!17538 (h!74464 (exprs!7034 ct2!306)))) b!7050898))

(assert (= (and b!7050709 (is-Concat!26383 (h!74464 (exprs!7034 ct2!306)))) b!7050899))

(assert (= (and b!7050709 (is-Star!17538 (h!74464 (exprs!7034 ct2!306)))) b!7050900))

(assert (= (and b!7050709 (is-Union!17538 (h!74464 (exprs!7034 ct2!306)))) b!7050901))

(declare-fun b!7050902 () Bool)

(declare-fun e!4238763 () Bool)

(declare-fun tp!1939046 () Bool)

(declare-fun tp!1939047 () Bool)

(assert (=> b!7050902 (= e!4238763 (and tp!1939046 tp!1939047))))

(assert (=> b!7050709 (= tp!1938988 e!4238763)))

(assert (= (and b!7050709 (is-Cons!68016 (t!381919 (exprs!7034 ct2!306)))) b!7050902))

(declare-fun b!7050903 () Bool)

(declare-fun e!4238764 () Bool)

(declare-fun tp!1939048 () Bool)

(assert (=> b!7050903 (= e!4238764 (and tp_is_empty!44301 tp!1939048))))

(assert (=> b!7050720 (= tp!1938999 e!4238764)))

(assert (= (and b!7050720 (is-Cons!68017 (t!381920 (t!381920 s!7408)))) b!7050903))

(declare-fun b_lambda!268137 () Bool)

(assert (= b_lambda!268115 (or d!2202629 b_lambda!268137)))

(declare-fun bs!1875955 () Bool)

(declare-fun d!2202797 () Bool)

(assert (= bs!1875955 (and d!2202797 d!2202629)))

(declare-fun nullable!7235 (Regex!17538) Bool)

(assert (=> bs!1875955 (= (dynLambda!27560 lambda!418955 (h!74464 (exprs!7034 ct2!306))) (nullable!7235 (h!74464 (exprs!7034 ct2!306))))))

(declare-fun m!7766904 () Bool)

(assert (=> bs!1875955 m!7766904))

(assert (=> b!7050816 d!2202797))

(declare-fun b_lambda!268139 () Bool)

(assert (= b_lambda!268119 (or b!7050607 b_lambda!268139)))

(declare-fun bs!1875956 () Bool)

(declare-fun d!2202799 () Bool)

(assert (= bs!1875956 (and d!2202799 b!7050607)))

(declare-fun validRegex!8957 (Regex!17538) Bool)

(assert (=> bs!1875956 (= (dynLambda!27560 lambda!418910 (h!74464 (++!15625 (exprs!7034 lt!2529406) (exprs!7034 ct2!306)))) (validRegex!8957 (h!74464 (++!15625 (exprs!7034 lt!2529406) (exprs!7034 ct2!306)))))))

(declare-fun m!7766906 () Bool)

(assert (=> bs!1875956 m!7766906))

(assert (=> b!7050842 d!2202799))

(declare-fun b_lambda!268141 () Bool)

(assert (= b_lambda!268129 (or b!7050605 b_lambda!268141)))

(declare-fun bs!1875957 () Bool)

(declare-fun d!2202801 () Bool)

(assert (= bs!1875957 (and d!2202801 b!7050605)))

(assert (=> bs!1875957 (= (dynLambda!27560 lambda!418911 (h!74464 lt!2529405)) (nullable!7235 (h!74464 lt!2529405)))))

(declare-fun m!7766908 () Bool)

(assert (=> bs!1875957 m!7766908))

(assert (=> b!7050869 d!2202801))

(declare-fun b_lambda!268143 () Bool)

(assert (= b_lambda!268127 (or b!7050605 b_lambda!268143)))

(declare-fun bs!1875958 () Bool)

(declare-fun d!2202803 () Bool)

(assert (= bs!1875958 (and d!2202803 b!7050605)))

(assert (=> bs!1875958 (= (dynLambda!27560 lambda!418911 (h!74464 (exprs!7034 lt!2529406))) (nullable!7235 (h!74464 (exprs!7034 lt!2529406))))))

(declare-fun m!7766910 () Bool)

(assert (=> bs!1875958 m!7766910))

(assert (=> b!7050867 d!2202803))

(declare-fun b_lambda!268145 () Bool)

(assert (= b_lambda!268125 (or d!2202605 b_lambda!268145)))

(declare-fun bs!1875959 () Bool)

(declare-fun d!2202805 () Bool)

(assert (= bs!1875959 (and d!2202805 d!2202605)))

(assert (=> bs!1875959 (= (dynLambda!27560 lambda!418947 (h!74464 (exprs!7034 ct2!306))) (validRegex!8957 (h!74464 (exprs!7034 ct2!306))))))

(declare-fun m!7766912 () Bool)

(assert (=> bs!1875959 m!7766912))

(assert (=> b!7050853 d!2202805))

(declare-fun b_lambda!268147 () Bool)

(assert (= b_lambda!268113 (or b!7050611 b_lambda!268147)))

(declare-fun bs!1875960 () Bool)

(declare-fun d!2202807 () Bool)

(assert (= bs!1875960 (and d!2202807 b!7050611)))

(assert (=> bs!1875960 (= (dynLambda!27556 lambda!418908 (h!74468 (toList!10879 lt!2529397))) (nullableContext!94 (h!74468 (toList!10879 lt!2529397))))))

(declare-fun m!7766914 () Bool)

(assert (=> bs!1875960 m!7766914))

(assert (=> b!7050785 d!2202807))

(declare-fun b_lambda!268149 () Bool)

(assert (= b_lambda!268133 (or b!7050605 b_lambda!268149)))

(declare-fun bs!1875961 () Bool)

(declare-fun d!2202809 () Bool)

(assert (= bs!1875961 (and d!2202809 b!7050605)))

(assert (=> bs!1875961 (= (dynLambda!27560 lambda!418911 (h!74464 (exprs!7034 ct2!306))) (nullable!7235 (h!74464 (exprs!7034 ct2!306))))))

(assert (=> bs!1875961 m!7766904))

(assert (=> b!7050877 d!2202809))

(declare-fun b_lambda!268151 () Bool)

(assert (= b_lambda!268135 (or d!2202617 b_lambda!268151)))

(declare-fun bs!1875962 () Bool)

(declare-fun d!2202811 () Bool)

(assert (= bs!1875962 (and d!2202811 d!2202617)))

(assert (=> bs!1875962 (= (dynLambda!27560 lambda!418953 (h!74464 (exprs!7034 lt!2529406))) (nullable!7235 (h!74464 (exprs!7034 lt!2529406))))))

(assert (=> bs!1875962 m!7766910))

(assert (=> b!7050879 d!2202811))

(declare-fun b_lambda!268153 () Bool)

(assert (= b_lambda!268123 (or b!7050607 b_lambda!268153)))

(declare-fun bs!1875963 () Bool)

(declare-fun d!2202813 () Bool)

(assert (= bs!1875963 (and d!2202813 b!7050607)))

(declare-fun lt!2529534 () Unit!161752)

(assert (=> bs!1875963 (= lt!2529534 (lemmaConcatPreservesForall!853 (exprs!7034 a!13408) (exprs!7034 ct2!306) lambda!418910))))

(assert (=> bs!1875963 (= (dynLambda!27557 lambda!418909 a!13408) (Context!13069 (++!15625 (exprs!7034 a!13408) (exprs!7034 ct2!306))))))

(declare-fun m!7766916 () Bool)

(assert (=> bs!1875963 m!7766916))

(declare-fun m!7766918 () Bool)

(assert (=> bs!1875963 m!7766918))

(assert (=> d!2202741 d!2202813))

(declare-fun b_lambda!268155 () Bool)

(assert (= b_lambda!268111 (or b!7050611 b_lambda!268155)))

(declare-fun bs!1875964 () Bool)

(declare-fun d!2202815 () Bool)

(assert (= bs!1875964 (and d!2202815 b!7050611)))

(assert (=> bs!1875964 (= (dynLambda!27556 lambda!418908 lt!2529519) (nullableContext!94 lt!2529519))))

(declare-fun m!7766920 () Bool)

(assert (=> bs!1875964 m!7766920))

(assert (=> d!2202687 d!2202815))

(declare-fun b_lambda!268157 () Bool)

(assert (= b_lambda!268121 (or b!7050607 b_lambda!268157)))

(declare-fun bs!1875965 () Bool)

(declare-fun d!2202817 () Bool)

(assert (= bs!1875965 (and d!2202817 b!7050607)))

(assert (=> bs!1875965 (= (dynLambda!27560 lambda!418910 (h!74464 (exprs!7034 lt!2529406))) (validRegex!8957 (h!74464 (exprs!7034 lt!2529406))))))

(declare-fun m!7766922 () Bool)

(assert (=> bs!1875965 m!7766922))

(assert (=> b!7050844 d!2202817))

(declare-fun b_lambda!268159 () Bool)

(assert (= b_lambda!268131 (or d!2202645 b_lambda!268159)))

(declare-fun bs!1875966 () Bool)

(declare-fun d!2202819 () Bool)

(assert (= bs!1875966 (and d!2202819 d!2202645)))

(assert (=> bs!1875966 (= (dynLambda!27560 lambda!418963 (h!74464 (exprs!7034 setElem!49636))) (validRegex!8957 (h!74464 (exprs!7034 setElem!49636))))))

(declare-fun m!7766924 () Bool)

(assert (=> bs!1875966 m!7766924))

(assert (=> b!7050871 d!2202819))

(declare-fun b_lambda!268161 () Bool)

(assert (= b_lambda!268117 (or d!2202579 b_lambda!268161)))

(declare-fun bs!1875967 () Bool)

(declare-fun d!2202821 () Bool)

(assert (= bs!1875967 (and d!2202821 d!2202579)))

(assert (=> bs!1875967 (= (dynLambda!27560 lambda!418939 (h!74464 (exprs!7034 lt!2529401))) (nullable!7235 (h!74464 (exprs!7034 lt!2529401))))))

(declare-fun m!7766926 () Bool)

(assert (=> bs!1875967 m!7766926))

(assert (=> b!7050830 d!2202821))

(push 1)

(assert (not d!2202743))

(assert tp_is_empty!44301)

(assert (not bs!1875955))

(assert (not b!7050903))

(assert (not b!7050895))

(assert (not b_lambda!268151))

(assert (not b_lambda!268141))

(assert (not b_lambda!268153))

(assert (not bs!1875966))

(assert (not b!7050897))

(assert (not d!2202769))

(assert (not b!7050837))

(assert (not b!7050866))

(assert (not b!7050789))

(assert (not d!2202765))

(assert (not b!7050872))

(assert (not b!7050860))

(assert (not b!7050801))

(assert (not b!7050861))

(assert (not b!7050819))

(assert (not bs!1875962))

(assert (not b!7050792))

(assert (not b!7050899))

(assert (not b!7050818))

(assert (not b!7050902))

(assert (not b_lambda!268161))

(assert (not d!2202745))

(assert (not b!7050870))

(assert (not b!7050782))

(assert (not bs!1875957))

(assert (not b!7050843))

(assert (not d!2202787))

(assert (not d!2202697))

(assert (not b!7050857))

(assert (not b!7050881))

(assert (not b_lambda!268155))

(assert (not b!7050786))

(assert (not d!2202737))

(assert (not d!2202701))

(assert (not d!2202781))

(assert (not b!7050868))

(assert (not bs!1875965))

(assert (not bs!1875959))

(assert (not d!2202789))

(assert (not d!2202777))

(assert (not b!7050807))

(assert (not d!2202793))

(assert (not b!7050800))

(assert (not bs!1875960))

(assert (not b!7050839))

(assert (not b!7050878))

(assert (not d!2202689))

(assert (not d!2202755))

(assert (not bs!1875961))

(assert (not d!2202763))

(assert (not d!2202747))

(assert (not d!2202691))

(assert (not setNonEmpty!49646))

(assert (not b_lambda!268145))

(assert (not d!2202687))

(assert (not d!2202725))

(assert (not b!7050824))

(assert (not bs!1875956))

(assert (not b!7050854))

(assert (not d!2202721))

(assert (not b!7050874))

(assert (not bs!1875958))

(assert (not d!2202751))

(assert (not bs!1875963))

(assert (not b!7050896))

(assert (not d!2202753))

(assert (not b!7050900))

(assert (not b!7050783))

(assert (not b!7050829))

(assert (not d!2202713))

(assert (not b!7050851))

(assert (not b!7050823))

(assert (not b_lambda!268139))

(assert (not d!2202767))

(assert (not b!7050797))

(assert (not b!7050880))

(assert (not b!7050796))

(assert (not b!7050841))

(assert (not b!7050828))

(assert (not b!7050809))

(assert (not b!7050875))

(assert (not bs!1875964))

(assert (not b!7050865))

(assert (not bs!1875967))

(assert (not b_lambda!268101))

(assert (not d!2202761))

(assert (not b_lambda!268159))

(assert (not b!7050893))

(assert (not b_lambda!268147))

(assert (not b_lambda!268157))

(assert (not b!7050894))

(assert (not b_lambda!268137))

(assert (not b!7050811))

(assert (not b_lambda!268143))

(assert (not b!7050793))

(assert (not b!7050862))

(assert (not b!7050845))

(assert (not d!2202783))

(assert (not b_lambda!268103))

(assert (not b!7050901))

(assert (not d!2202715))

(assert (not d!2202773))

(assert (not b!7050817))

(assert (not b_lambda!268149))

(assert (not b!7050831))

(assert (not d!2202741))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

