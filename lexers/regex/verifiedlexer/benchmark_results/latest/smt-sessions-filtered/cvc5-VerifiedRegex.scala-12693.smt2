; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!701634 () Bool)

(assert start!701634)

(declare-fun b!7231696 () Bool)

(assert (=> b!7231696 true))

(declare-fun b!7231688 () Bool)

(declare-fun e!4335306 () Bool)

(declare-fun tp!2033923 () Bool)

(assert (=> b!7231688 (= e!4335306 tp!2033923)))

(declare-fun b!7231689 () Bool)

(declare-fun e!4335305 () Bool)

(declare-datatypes ((C!37262 0))(
  ( (C!37263 (val!28579 Int)) )
))
(declare-datatypes ((Regex!18494 0))(
  ( (ElementMatch!18494 (c!1341710 C!37262)) (Concat!27339 (regOne!37500 Regex!18494) (regTwo!37500 Regex!18494)) (EmptyExpr!18494) (Star!18494 (reg!18823 Regex!18494)) (EmptyLang!18494) (Union!18494 (regOne!37501 Regex!18494) (regTwo!37501 Regex!18494)) )
))
(declare-datatypes ((List!70090 0))(
  ( (Nil!69966) (Cons!69966 (h!76414 Regex!18494) (t!384139 List!70090)) )
))
(declare-datatypes ((Context!14868 0))(
  ( (Context!14869 (exprs!7934 List!70090)) )
))
(declare-fun ct1!232 () Context!14868)

(declare-fun lambda!439372 () Int)

(declare-fun forall!17317 (List!70090 Int) Bool)

(assert (=> b!7231689 (= e!4335305 (forall!17317 (exprs!7934 ct1!232) lambda!439372))))

(declare-fun lt!2573478 () (Set Context!14868))

(declare-datatypes ((List!70091 0))(
  ( (Nil!69967) (Cons!69967 (h!76415 C!37262) (t!384140 List!70091)) )
))
(declare-fun s1!1971 () List!70091)

(declare-fun derivationStepZipperDown!2538 (Regex!18494 Context!14868 C!37262) (Set Context!14868))

(declare-fun tail!14109 (List!70090) List!70090)

(assert (=> b!7231689 (= lt!2573478 (derivationStepZipperDown!2538 (h!76414 (exprs!7934 ct1!232)) (Context!14869 (tail!14109 (exprs!7934 ct1!232))) (h!76415 s1!1971)))))

(declare-fun b!7231690 () Bool)

(declare-fun e!4335309 () Bool)

(declare-fun tp_is_empty!46453 () Bool)

(declare-fun tp!2033924 () Bool)

(assert (=> b!7231690 (= e!4335309 (and tp_is_empty!46453 tp!2033924))))

(declare-fun b!7231691 () Bool)

(declare-fun e!4335302 () Bool)

(declare-fun e!4335303 () Bool)

(assert (=> b!7231691 (= e!4335302 e!4335303)))

(declare-fun res!2934042 () Bool)

(assert (=> b!7231691 (=> (not res!2934042) (not e!4335303))))

(declare-fun lt!2573475 () (Set Context!14868))

(declare-fun matchZipper!3404 ((Set Context!14868) List!70091) Bool)

(assert (=> b!7231691 (= res!2934042 (matchZipper!3404 lt!2573475 (t!384140 s1!1971)))))

(declare-fun lt!2573476 () (Set Context!14868))

(declare-fun derivationStepZipper!3286 ((Set Context!14868) C!37262) (Set Context!14868))

(assert (=> b!7231691 (= lt!2573475 (derivationStepZipper!3286 lt!2573476 (h!76415 s1!1971)))))

(declare-fun res!2934041 () Bool)

(declare-fun e!4335308 () Bool)

(assert (=> start!701634 (=> (not res!2934041) (not e!4335308))))

(assert (=> start!701634 (= res!2934041 (matchZipper!3404 lt!2573476 s1!1971))))

(assert (=> start!701634 (= lt!2573476 (set.insert ct1!232 (as set.empty (Set Context!14868))))))

(assert (=> start!701634 e!4335308))

(declare-fun e!4335301 () Bool)

(declare-fun inv!89246 (Context!14868) Bool)

(assert (=> start!701634 (and (inv!89246 ct1!232) e!4335301)))

(declare-fun e!4335304 () Bool)

(assert (=> start!701634 e!4335304))

(assert (=> start!701634 e!4335309))

(declare-fun ct2!328 () Context!14868)

(assert (=> start!701634 (and (inv!89246 ct2!328) e!4335306)))

(declare-fun b!7231692 () Bool)

(assert (=> b!7231692 (= e!4335308 e!4335302)))

(declare-fun res!2934045 () Bool)

(assert (=> b!7231692 (=> (not res!2934045) (not e!4335302))))

(assert (=> b!7231692 (= res!2934045 (and (not (is-Nil!69966 (exprs!7934 ct1!232))) (is-Cons!69967 s1!1971)))))

(declare-fun lt!2573474 () List!70090)

(declare-fun ++!16288 (List!70090 List!70090) List!70090)

(assert (=> b!7231692 (= lt!2573474 (++!16288 (exprs!7934 ct1!232) (exprs!7934 ct2!328)))))

(declare-datatypes ((Unit!163525 0))(
  ( (Unit!163526) )
))
(declare-fun lt!2573473 () Unit!163525)

(declare-fun lemmaConcatPreservesForall!1303 (List!70090 List!70090 Int) Unit!163525)

(assert (=> b!7231692 (= lt!2573473 (lemmaConcatPreservesForall!1303 (exprs!7934 ct1!232) (exprs!7934 ct2!328) lambda!439372))))

(declare-fun b!7231693 () Bool)

(declare-fun res!2934044 () Bool)

(assert (=> b!7231693 (=> (not res!2934044) (not e!4335308))))

(declare-fun s2!1849 () List!70091)

(assert (=> b!7231693 (= res!2934044 (matchZipper!3404 (set.insert ct2!328 (as set.empty (Set Context!14868))) s2!1849))))

(declare-fun b!7231694 () Bool)

(declare-fun tp!2033921 () Bool)

(assert (=> b!7231694 (= e!4335304 (and tp_is_empty!46453 tp!2033921))))

(declare-fun b!7231695 () Bool)

(declare-fun e!4335307 () Bool)

(assert (=> b!7231695 (= e!4335307 e!4335305)))

(declare-fun res!2934046 () Bool)

(assert (=> b!7231695 (=> res!2934046 e!4335305)))

(declare-fun isEmpty!40323 (List!70090) Bool)

(assert (=> b!7231695 (= res!2934046 (isEmpty!40323 (exprs!7934 ct1!232)))))

(declare-fun lt!2573479 () (Set Context!14868))

(declare-fun derivationStepZipperUp!2368 (Context!14868 C!37262) (Set Context!14868))

(assert (=> b!7231695 (= lt!2573479 (derivationStepZipperUp!2368 ct1!232 (h!76415 s1!1971)))))

(declare-fun lt!2573469 () Unit!163525)

(declare-fun lt!2573470 () Context!14868)

(assert (=> b!7231695 (= lt!2573469 (lemmaConcatPreservesForall!1303 (exprs!7934 lt!2573470) (exprs!7934 ct2!328) lambda!439372))))

(declare-fun ++!16289 (List!70091 List!70091) List!70091)

(assert (=> b!7231695 (matchZipper!3404 (set.insert (Context!14869 (++!16288 (exprs!7934 lt!2573470) (exprs!7934 ct2!328))) (as set.empty (Set Context!14868))) (++!16289 (t!384140 s1!1971) s2!1849))))

(declare-fun lt!2573472 () Unit!163525)

(assert (=> b!7231695 (= lt!2573472 (lemmaConcatPreservesForall!1303 (exprs!7934 lt!2573470) (exprs!7934 ct2!328) lambda!439372))))

(declare-fun lt!2573471 () Unit!163525)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!285 (Context!14868 Context!14868 List!70091 List!70091) Unit!163525)

(assert (=> b!7231695 (= lt!2573471 (lemmaConcatenateContextMatchesConcatOfStrings!285 lt!2573470 ct2!328 (t!384140 s1!1971) s2!1849))))

(declare-fun lambda!439373 () Int)

(declare-fun getWitness!2008 ((Set Context!14868) Int) Context!14868)

(assert (=> b!7231695 (= lt!2573470 (getWitness!2008 lt!2573475 lambda!439373))))

(assert (=> b!7231696 (= e!4335303 (not e!4335307))))

(declare-fun res!2934043 () Bool)

(assert (=> b!7231696 (=> res!2934043 e!4335307)))

(declare-fun exists!4131 ((Set Context!14868) Int) Bool)

(assert (=> b!7231696 (= res!2934043 (not (exists!4131 lt!2573475 lambda!439373)))))

(declare-datatypes ((List!70092 0))(
  ( (Nil!69968) (Cons!69968 (h!76416 Context!14868) (t!384141 List!70092)) )
))
(declare-fun lt!2573468 () List!70092)

(declare-fun exists!4132 (List!70092 Int) Bool)

(assert (=> b!7231696 (exists!4132 lt!2573468 lambda!439373)))

(declare-fun lt!2573477 () Unit!163525)

(declare-fun lemmaZipperMatchesExistsMatchingContext!637 (List!70092 List!70091) Unit!163525)

(assert (=> b!7231696 (= lt!2573477 (lemmaZipperMatchesExistsMatchingContext!637 lt!2573468 (t!384140 s1!1971)))))

(declare-fun toList!11351 ((Set Context!14868)) List!70092)

(assert (=> b!7231696 (= lt!2573468 (toList!11351 lt!2573475))))

(declare-fun b!7231697 () Bool)

(declare-fun tp!2033922 () Bool)

(assert (=> b!7231697 (= e!4335301 tp!2033922)))

(assert (= (and start!701634 res!2934041) b!7231693))

(assert (= (and b!7231693 res!2934044) b!7231692))

(assert (= (and b!7231692 res!2934045) b!7231691))

(assert (= (and b!7231691 res!2934042) b!7231696))

(assert (= (and b!7231696 (not res!2934043)) b!7231695))

(assert (= (and b!7231695 (not res!2934046)) b!7231689))

(assert (= start!701634 b!7231697))

(assert (= (and start!701634 (is-Cons!69967 s1!1971)) b!7231694))

(assert (= (and start!701634 (is-Cons!69967 s2!1849)) b!7231690))

(assert (= start!701634 b!7231688))

(declare-fun m!7900592 () Bool)

(assert (=> b!7231692 m!7900592))

(declare-fun m!7900594 () Bool)

(assert (=> b!7231692 m!7900594))

(declare-fun m!7900596 () Bool)

(assert (=> b!7231693 m!7900596))

(assert (=> b!7231693 m!7900596))

(declare-fun m!7900598 () Bool)

(assert (=> b!7231693 m!7900598))

(declare-fun m!7900600 () Bool)

(assert (=> b!7231691 m!7900600))

(declare-fun m!7900602 () Bool)

(assert (=> b!7231691 m!7900602))

(declare-fun m!7900604 () Bool)

(assert (=> start!701634 m!7900604))

(declare-fun m!7900606 () Bool)

(assert (=> start!701634 m!7900606))

(declare-fun m!7900608 () Bool)

(assert (=> start!701634 m!7900608))

(declare-fun m!7900610 () Bool)

(assert (=> start!701634 m!7900610))

(declare-fun m!7900612 () Bool)

(assert (=> b!7231689 m!7900612))

(declare-fun m!7900614 () Bool)

(assert (=> b!7231689 m!7900614))

(declare-fun m!7900616 () Bool)

(assert (=> b!7231689 m!7900616))

(declare-fun m!7900618 () Bool)

(assert (=> b!7231695 m!7900618))

(declare-fun m!7900620 () Bool)

(assert (=> b!7231695 m!7900620))

(declare-fun m!7900622 () Bool)

(assert (=> b!7231695 m!7900622))

(assert (=> b!7231695 m!7900618))

(declare-fun m!7900624 () Bool)

(assert (=> b!7231695 m!7900624))

(declare-fun m!7900626 () Bool)

(assert (=> b!7231695 m!7900626))

(declare-fun m!7900628 () Bool)

(assert (=> b!7231695 m!7900628))

(declare-fun m!7900630 () Bool)

(assert (=> b!7231695 m!7900630))

(assert (=> b!7231695 m!7900630))

(assert (=> b!7231695 m!7900628))

(declare-fun m!7900632 () Bool)

(assert (=> b!7231695 m!7900632))

(declare-fun m!7900634 () Bool)

(assert (=> b!7231695 m!7900634))

(declare-fun m!7900636 () Bool)

(assert (=> b!7231696 m!7900636))

(declare-fun m!7900638 () Bool)

(assert (=> b!7231696 m!7900638))

(declare-fun m!7900640 () Bool)

(assert (=> b!7231696 m!7900640))

(declare-fun m!7900642 () Bool)

(assert (=> b!7231696 m!7900642))

(push 1)

(assert (not b!7231694))

(assert (not b!7231689))

(assert (not b!7231696))

(assert (not b!7231690))

(assert (not b!7231692))

(assert (not b!7231693))

(assert (not b!7231695))

(assert tp_is_empty!46453)

(assert (not b!7231688))

(assert (not b!7231697))

(assert (not b!7231691))

(assert (not start!701634))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7231740 () Bool)

(declare-fun e!4335341 () List!70090)

(assert (=> b!7231740 (= e!4335341 (exprs!7934 ct2!328))))

(declare-fun d!2246020 () Bool)

(declare-fun e!4335342 () Bool)

(assert (=> d!2246020 e!4335342))

(declare-fun res!2934070 () Bool)

(assert (=> d!2246020 (=> (not res!2934070) (not e!4335342))))

(declare-fun lt!2573518 () List!70090)

(declare-fun content!14375 (List!70090) (Set Regex!18494))

(assert (=> d!2246020 (= res!2934070 (= (content!14375 lt!2573518) (set.union (content!14375 (exprs!7934 ct1!232)) (content!14375 (exprs!7934 ct2!328)))))))

(assert (=> d!2246020 (= lt!2573518 e!4335341)))

(declare-fun c!1341720 () Bool)

(assert (=> d!2246020 (= c!1341720 (is-Nil!69966 (exprs!7934 ct1!232)))))

(assert (=> d!2246020 (= (++!16288 (exprs!7934 ct1!232) (exprs!7934 ct2!328)) lt!2573518)))

(declare-fun b!7231741 () Bool)

(assert (=> b!7231741 (= e!4335341 (Cons!69966 (h!76414 (exprs!7934 ct1!232)) (++!16288 (t!384139 (exprs!7934 ct1!232)) (exprs!7934 ct2!328))))))

(declare-fun b!7231743 () Bool)

(assert (=> b!7231743 (= e!4335342 (or (not (= (exprs!7934 ct2!328) Nil!69966)) (= lt!2573518 (exprs!7934 ct1!232))))))

(declare-fun b!7231742 () Bool)

(declare-fun res!2934069 () Bool)

(assert (=> b!7231742 (=> (not res!2934069) (not e!4335342))))

(declare-fun size!41549 (List!70090) Int)

(assert (=> b!7231742 (= res!2934069 (= (size!41549 lt!2573518) (+ (size!41549 (exprs!7934 ct1!232)) (size!41549 (exprs!7934 ct2!328)))))))

(assert (= (and d!2246020 c!1341720) b!7231740))

(assert (= (and d!2246020 (not c!1341720)) b!7231741))

(assert (= (and d!2246020 res!2934070) b!7231742))

(assert (= (and b!7231742 res!2934069) b!7231743))

(declare-fun m!7900696 () Bool)

(assert (=> d!2246020 m!7900696))

(declare-fun m!7900698 () Bool)

(assert (=> d!2246020 m!7900698))

(declare-fun m!7900700 () Bool)

(assert (=> d!2246020 m!7900700))

(declare-fun m!7900702 () Bool)

(assert (=> b!7231741 m!7900702))

(declare-fun m!7900704 () Bool)

(assert (=> b!7231742 m!7900704))

(declare-fun m!7900706 () Bool)

(assert (=> b!7231742 m!7900706))

(declare-fun m!7900708 () Bool)

(assert (=> b!7231742 m!7900708))

(assert (=> b!7231692 d!2246020))

(declare-fun d!2246022 () Bool)

(assert (=> d!2246022 (forall!17317 (++!16288 (exprs!7934 ct1!232) (exprs!7934 ct2!328)) lambda!439372)))

(declare-fun lt!2573521 () Unit!163525)

(declare-fun choose!55515 (List!70090 List!70090 Int) Unit!163525)

(assert (=> d!2246022 (= lt!2573521 (choose!55515 (exprs!7934 ct1!232) (exprs!7934 ct2!328) lambda!439372))))

(assert (=> d!2246022 (forall!17317 (exprs!7934 ct1!232) lambda!439372)))

(assert (=> d!2246022 (= (lemmaConcatPreservesForall!1303 (exprs!7934 ct1!232) (exprs!7934 ct2!328) lambda!439372) lt!2573521)))

(declare-fun bs!1902699 () Bool)

(assert (= bs!1902699 d!2246022))

(assert (=> bs!1902699 m!7900592))

(assert (=> bs!1902699 m!7900592))

(declare-fun m!7900710 () Bool)

(assert (=> bs!1902699 m!7900710))

(declare-fun m!7900712 () Bool)

(assert (=> bs!1902699 m!7900712))

(assert (=> bs!1902699 m!7900612))

(assert (=> b!7231692 d!2246022))

(declare-fun d!2246024 () Bool)

(declare-fun c!1341723 () Bool)

(declare-fun isEmpty!40325 (List!70091) Bool)

(assert (=> d!2246024 (= c!1341723 (isEmpty!40325 s2!1849))))

(declare-fun e!4335345 () Bool)

(assert (=> d!2246024 (= (matchZipper!3404 (set.insert ct2!328 (as set.empty (Set Context!14868))) s2!1849) e!4335345)))

(declare-fun b!7231748 () Bool)

(declare-fun nullableZipper!2808 ((Set Context!14868)) Bool)

(assert (=> b!7231748 (= e!4335345 (nullableZipper!2808 (set.insert ct2!328 (as set.empty (Set Context!14868)))))))

(declare-fun b!7231749 () Bool)

(declare-fun head!14796 (List!70091) C!37262)

(declare-fun tail!14111 (List!70091) List!70091)

(assert (=> b!7231749 (= e!4335345 (matchZipper!3404 (derivationStepZipper!3286 (set.insert ct2!328 (as set.empty (Set Context!14868))) (head!14796 s2!1849)) (tail!14111 s2!1849)))))

(assert (= (and d!2246024 c!1341723) b!7231748))

(assert (= (and d!2246024 (not c!1341723)) b!7231749))

(declare-fun m!7900714 () Bool)

(assert (=> d!2246024 m!7900714))

(assert (=> b!7231748 m!7900596))

(declare-fun m!7900716 () Bool)

(assert (=> b!7231748 m!7900716))

(declare-fun m!7900718 () Bool)

(assert (=> b!7231749 m!7900718))

(assert (=> b!7231749 m!7900596))

(assert (=> b!7231749 m!7900718))

(declare-fun m!7900720 () Bool)

(assert (=> b!7231749 m!7900720))

(declare-fun m!7900722 () Bool)

(assert (=> b!7231749 m!7900722))

(assert (=> b!7231749 m!7900720))

(assert (=> b!7231749 m!7900722))

(declare-fun m!7900724 () Bool)

(assert (=> b!7231749 m!7900724))

(assert (=> b!7231693 d!2246024))

(declare-fun d!2246028 () Bool)

(declare-fun res!2934075 () Bool)

(declare-fun e!4335350 () Bool)

(assert (=> d!2246028 (=> res!2934075 e!4335350)))

(assert (=> d!2246028 (= res!2934075 (is-Nil!69966 (exprs!7934 ct1!232)))))

(assert (=> d!2246028 (= (forall!17317 (exprs!7934 ct1!232) lambda!439372) e!4335350)))

(declare-fun b!7231754 () Bool)

(declare-fun e!4335351 () Bool)

(assert (=> b!7231754 (= e!4335350 e!4335351)))

(declare-fun res!2934076 () Bool)

(assert (=> b!7231754 (=> (not res!2934076) (not e!4335351))))

(declare-fun dynLambda!28514 (Int Regex!18494) Bool)

(assert (=> b!7231754 (= res!2934076 (dynLambda!28514 lambda!439372 (h!76414 (exprs!7934 ct1!232))))))

(declare-fun b!7231755 () Bool)

(assert (=> b!7231755 (= e!4335351 (forall!17317 (t!384139 (exprs!7934 ct1!232)) lambda!439372))))

(assert (= (and d!2246028 (not res!2934075)) b!7231754))

(assert (= (and b!7231754 res!2934076) b!7231755))

(declare-fun b_lambda!277143 () Bool)

(assert (=> (not b_lambda!277143) (not b!7231754)))

(declare-fun m!7900726 () Bool)

(assert (=> b!7231754 m!7900726))

(declare-fun m!7900728 () Bool)

(assert (=> b!7231755 m!7900728))

(assert (=> b!7231689 d!2246028))

(declare-fun bm!658200 () Bool)

(declare-fun call!658208 () (Set Context!14868))

(declare-fun call!658207 () (Set Context!14868))

(assert (=> bm!658200 (= call!658208 call!658207)))

(declare-fun b!7231778 () Bool)

(declare-fun c!1341736 () Bool)

(assert (=> b!7231778 (= c!1341736 (is-Star!18494 (h!76414 (exprs!7934 ct1!232))))))

(declare-fun e!4335369 () (Set Context!14868))

(declare-fun e!4335365 () (Set Context!14868))

(assert (=> b!7231778 (= e!4335369 e!4335365)))

(declare-fun b!7231779 () Bool)

(declare-fun e!4335368 () (Set Context!14868))

(declare-fun call!658205 () (Set Context!14868))

(assert (=> b!7231779 (= e!4335368 (set.union call!658205 call!658208))))

(declare-fun b!7231780 () Bool)

(declare-fun call!658209 () (Set Context!14868))

(assert (=> b!7231780 (= e!4335369 call!658209)))

(declare-fun b!7231781 () Bool)

(declare-fun e!4335367 () (Set Context!14868))

(declare-fun e!4335366 () (Set Context!14868))

(assert (=> b!7231781 (= e!4335367 e!4335366)))

(declare-fun c!1341735 () Bool)

(assert (=> b!7231781 (= c!1341735 (is-Union!18494 (h!76414 (exprs!7934 ct1!232))))))

(declare-fun c!1341737 () Bool)

(declare-fun bm!658201 () Bool)

(declare-fun call!658206 () List!70090)

(declare-fun c!1341738 () Bool)

(declare-fun $colon$colon!2858 (List!70090 Regex!18494) List!70090)

(assert (=> bm!658201 (= call!658206 ($colon$colon!2858 (exprs!7934 (Context!14869 (tail!14109 (exprs!7934 ct1!232)))) (ite (or c!1341738 c!1341737) (regTwo!37500 (h!76414 (exprs!7934 ct1!232))) (h!76414 (exprs!7934 ct1!232)))))))

(declare-fun b!7231782 () Bool)

(assert (=> b!7231782 (= e!4335366 (set.union call!658207 call!658205))))

(declare-fun bm!658202 () Bool)

(declare-fun call!658210 () List!70090)

(assert (=> bm!658202 (= call!658210 call!658206)))

(declare-fun b!7231783 () Bool)

(assert (=> b!7231783 (= e!4335365 (as set.empty (Set Context!14868)))))

(declare-fun b!7231784 () Bool)

(declare-fun e!4335364 () Bool)

(assert (=> b!7231784 (= c!1341738 e!4335364)))

(declare-fun res!2934079 () Bool)

(assert (=> b!7231784 (=> (not res!2934079) (not e!4335364))))

(assert (=> b!7231784 (= res!2934079 (is-Concat!27339 (h!76414 (exprs!7934 ct1!232))))))

(assert (=> b!7231784 (= e!4335366 e!4335368)))

(declare-fun bm!658203 () Bool)

(assert (=> bm!658203 (= call!658205 (derivationStepZipperDown!2538 (ite c!1341735 (regTwo!37501 (h!76414 (exprs!7934 ct1!232))) (regOne!37500 (h!76414 (exprs!7934 ct1!232)))) (ite c!1341735 (Context!14869 (tail!14109 (exprs!7934 ct1!232))) (Context!14869 call!658206)) (h!76415 s1!1971)))))

(declare-fun b!7231785 () Bool)

(assert (=> b!7231785 (= e!4335365 call!658209)))

(declare-fun b!7231786 () Bool)

(assert (=> b!7231786 (= e!4335368 e!4335369)))

(assert (=> b!7231786 (= c!1341737 (is-Concat!27339 (h!76414 (exprs!7934 ct1!232))))))

(declare-fun b!7231787 () Bool)

(assert (=> b!7231787 (= e!4335367 (set.insert (Context!14869 (tail!14109 (exprs!7934 ct1!232))) (as set.empty (Set Context!14868))))))

(declare-fun bm!658204 () Bool)

(assert (=> bm!658204 (= call!658209 call!658208)))

(declare-fun d!2246030 () Bool)

(declare-fun c!1341734 () Bool)

(assert (=> d!2246030 (= c!1341734 (and (is-ElementMatch!18494 (h!76414 (exprs!7934 ct1!232))) (= (c!1341710 (h!76414 (exprs!7934 ct1!232))) (h!76415 s1!1971))))))

(assert (=> d!2246030 (= (derivationStepZipperDown!2538 (h!76414 (exprs!7934 ct1!232)) (Context!14869 (tail!14109 (exprs!7934 ct1!232))) (h!76415 s1!1971)) e!4335367)))

(declare-fun bm!658205 () Bool)

(assert (=> bm!658205 (= call!658207 (derivationStepZipperDown!2538 (ite c!1341735 (regOne!37501 (h!76414 (exprs!7934 ct1!232))) (ite c!1341738 (regTwo!37500 (h!76414 (exprs!7934 ct1!232))) (ite c!1341737 (regOne!37500 (h!76414 (exprs!7934 ct1!232))) (reg!18823 (h!76414 (exprs!7934 ct1!232)))))) (ite (or c!1341735 c!1341738) (Context!14869 (tail!14109 (exprs!7934 ct1!232))) (Context!14869 call!658210)) (h!76415 s1!1971)))))

(declare-fun b!7231788 () Bool)

(declare-fun nullable!7811 (Regex!18494) Bool)

(assert (=> b!7231788 (= e!4335364 (nullable!7811 (regOne!37500 (h!76414 (exprs!7934 ct1!232)))))))

(assert (= (and d!2246030 c!1341734) b!7231787))

(assert (= (and d!2246030 (not c!1341734)) b!7231781))

(assert (= (and b!7231781 c!1341735) b!7231782))

(assert (= (and b!7231781 (not c!1341735)) b!7231784))

(assert (= (and b!7231784 res!2934079) b!7231788))

(assert (= (and b!7231784 c!1341738) b!7231779))

(assert (= (and b!7231784 (not c!1341738)) b!7231786))

(assert (= (and b!7231786 c!1341737) b!7231780))

(assert (= (and b!7231786 (not c!1341737)) b!7231778))

(assert (= (and b!7231778 c!1341736) b!7231785))

(assert (= (and b!7231778 (not c!1341736)) b!7231783))

(assert (= (or b!7231780 b!7231785) bm!658202))

(assert (= (or b!7231780 b!7231785) bm!658204))

(assert (= (or b!7231779 bm!658202) bm!658201))

(assert (= (or b!7231779 bm!658204) bm!658200))

(assert (= (or b!7231782 b!7231779) bm!658203))

(assert (= (or b!7231782 bm!658200) bm!658205))

(declare-fun m!7900736 () Bool)

(assert (=> bm!658205 m!7900736))

(declare-fun m!7900738 () Bool)

(assert (=> b!7231788 m!7900738))

(declare-fun m!7900740 () Bool)

(assert (=> b!7231787 m!7900740))

(declare-fun m!7900742 () Bool)

(assert (=> bm!658201 m!7900742))

(declare-fun m!7900744 () Bool)

(assert (=> bm!658203 m!7900744))

(assert (=> b!7231689 d!2246030))

(declare-fun d!2246036 () Bool)

(assert (=> d!2246036 (= (tail!14109 (exprs!7934 ct1!232)) (t!384139 (exprs!7934 ct1!232)))))

(assert (=> b!7231689 d!2246036))

(declare-fun d!2246038 () Bool)

(declare-fun c!1341741 () Bool)

(assert (=> d!2246038 (= c!1341741 (isEmpty!40325 s1!1971))))

(declare-fun e!4335372 () Bool)

(assert (=> d!2246038 (= (matchZipper!3404 lt!2573476 s1!1971) e!4335372)))

(declare-fun b!7231793 () Bool)

(assert (=> b!7231793 (= e!4335372 (nullableZipper!2808 lt!2573476))))

(declare-fun b!7231794 () Bool)

(assert (=> b!7231794 (= e!4335372 (matchZipper!3404 (derivationStepZipper!3286 lt!2573476 (head!14796 s1!1971)) (tail!14111 s1!1971)))))

(assert (= (and d!2246038 c!1341741) b!7231793))

(assert (= (and d!2246038 (not c!1341741)) b!7231794))

(declare-fun m!7900746 () Bool)

(assert (=> d!2246038 m!7900746))

(declare-fun m!7900748 () Bool)

(assert (=> b!7231793 m!7900748))

(declare-fun m!7900750 () Bool)

(assert (=> b!7231794 m!7900750))

(assert (=> b!7231794 m!7900750))

(declare-fun m!7900752 () Bool)

(assert (=> b!7231794 m!7900752))

(declare-fun m!7900754 () Bool)

(assert (=> b!7231794 m!7900754))

(assert (=> b!7231794 m!7900752))

(assert (=> b!7231794 m!7900754))

(declare-fun m!7900756 () Bool)

(assert (=> b!7231794 m!7900756))

(assert (=> start!701634 d!2246038))

(declare-fun bs!1902701 () Bool)

(declare-fun d!2246040 () Bool)

(assert (= bs!1902701 (and d!2246040 b!7231692)))

(declare-fun lambda!439392 () Int)

(assert (=> bs!1902701 (= lambda!439392 lambda!439372)))

(assert (=> d!2246040 (= (inv!89246 ct1!232) (forall!17317 (exprs!7934 ct1!232) lambda!439392))))

(declare-fun bs!1902702 () Bool)

(assert (= bs!1902702 d!2246040))

(declare-fun m!7900768 () Bool)

(assert (=> bs!1902702 m!7900768))

(assert (=> start!701634 d!2246040))

(declare-fun bs!1902703 () Bool)

(declare-fun d!2246042 () Bool)

(assert (= bs!1902703 (and d!2246042 b!7231692)))

(declare-fun lambda!439393 () Int)

(assert (=> bs!1902703 (= lambda!439393 lambda!439372)))

(declare-fun bs!1902704 () Bool)

(assert (= bs!1902704 (and d!2246042 d!2246040)))

(assert (=> bs!1902704 (= lambda!439393 lambda!439392)))

(assert (=> d!2246042 (= (inv!89246 ct2!328) (forall!17317 (exprs!7934 ct2!328) lambda!439393))))

(declare-fun bs!1902705 () Bool)

(assert (= bs!1902705 d!2246042))

(declare-fun m!7900772 () Bool)

(assert (=> bs!1902705 m!7900772))

(assert (=> start!701634 d!2246042))

(declare-fun d!2246046 () Bool)

(declare-fun c!1341743 () Bool)

(assert (=> d!2246046 (= c!1341743 (isEmpty!40325 (++!16289 (t!384140 s1!1971) s2!1849)))))

(declare-fun e!4335374 () Bool)

(assert (=> d!2246046 (= (matchZipper!3404 (set.insert (Context!14869 (++!16288 (exprs!7934 lt!2573470) (exprs!7934 ct2!328))) (as set.empty (Set Context!14868))) (++!16289 (t!384140 s1!1971) s2!1849)) e!4335374)))

(declare-fun b!7231797 () Bool)

(assert (=> b!7231797 (= e!4335374 (nullableZipper!2808 (set.insert (Context!14869 (++!16288 (exprs!7934 lt!2573470) (exprs!7934 ct2!328))) (as set.empty (Set Context!14868)))))))

(declare-fun b!7231798 () Bool)

(assert (=> b!7231798 (= e!4335374 (matchZipper!3404 (derivationStepZipper!3286 (set.insert (Context!14869 (++!16288 (exprs!7934 lt!2573470) (exprs!7934 ct2!328))) (as set.empty (Set Context!14868))) (head!14796 (++!16289 (t!384140 s1!1971) s2!1849))) (tail!14111 (++!16289 (t!384140 s1!1971) s2!1849))))))

(assert (= (and d!2246046 c!1341743) b!7231797))

(assert (= (and d!2246046 (not c!1341743)) b!7231798))

(assert (=> d!2246046 m!7900628))

(declare-fun m!7900774 () Bool)

(assert (=> d!2246046 m!7900774))

(assert (=> b!7231797 m!7900630))

(declare-fun m!7900776 () Bool)

(assert (=> b!7231797 m!7900776))

(assert (=> b!7231798 m!7900628))

(declare-fun m!7900778 () Bool)

(assert (=> b!7231798 m!7900778))

(assert (=> b!7231798 m!7900630))

(assert (=> b!7231798 m!7900778))

(declare-fun m!7900780 () Bool)

(assert (=> b!7231798 m!7900780))

(assert (=> b!7231798 m!7900628))

(declare-fun m!7900782 () Bool)

(assert (=> b!7231798 m!7900782))

(assert (=> b!7231798 m!7900780))

(assert (=> b!7231798 m!7900782))

(declare-fun m!7900784 () Bool)

(assert (=> b!7231798 m!7900784))

(assert (=> b!7231695 d!2246046))

(declare-fun bs!1902706 () Bool)

(declare-fun d!2246048 () Bool)

(assert (= bs!1902706 (and d!2246048 b!7231692)))

(declare-fun lambda!439396 () Int)

(assert (=> bs!1902706 (= lambda!439396 lambda!439372)))

(declare-fun bs!1902707 () Bool)

(assert (= bs!1902707 (and d!2246048 d!2246040)))

(assert (=> bs!1902707 (= lambda!439396 lambda!439392)))

(declare-fun bs!1902708 () Bool)

(assert (= bs!1902708 (and d!2246048 d!2246042)))

(assert (=> bs!1902708 (= lambda!439396 lambda!439393)))

(assert (=> d!2246048 (matchZipper!3404 (set.insert (Context!14869 (++!16288 (exprs!7934 lt!2573470) (exprs!7934 ct2!328))) (as set.empty (Set Context!14868))) (++!16289 (t!384140 s1!1971) s2!1849))))

(declare-fun lt!2573532 () Unit!163525)

(assert (=> d!2246048 (= lt!2573532 (lemmaConcatPreservesForall!1303 (exprs!7934 lt!2573470) (exprs!7934 ct2!328) lambda!439396))))

(declare-fun lt!2573531 () Unit!163525)

(declare-fun choose!55516 (Context!14868 Context!14868 List!70091 List!70091) Unit!163525)

(assert (=> d!2246048 (= lt!2573531 (choose!55516 lt!2573470 ct2!328 (t!384140 s1!1971) s2!1849))))

(assert (=> d!2246048 (matchZipper!3404 (set.insert lt!2573470 (as set.empty (Set Context!14868))) (t!384140 s1!1971))))

(assert (=> d!2246048 (= (lemmaConcatenateContextMatchesConcatOfStrings!285 lt!2573470 ct2!328 (t!384140 s1!1971) s2!1849) lt!2573531)))

(declare-fun bs!1902709 () Bool)

(assert (= bs!1902709 d!2246048))

(declare-fun m!7900786 () Bool)

(assert (=> bs!1902709 m!7900786))

(declare-fun m!7900788 () Bool)

(assert (=> bs!1902709 m!7900788))

(assert (=> bs!1902709 m!7900630))

(assert (=> bs!1902709 m!7900628))

(assert (=> bs!1902709 m!7900632))

(assert (=> bs!1902709 m!7900628))

(assert (=> bs!1902709 m!7900634))

(assert (=> bs!1902709 m!7900788))

(declare-fun m!7900790 () Bool)

(assert (=> bs!1902709 m!7900790))

(declare-fun m!7900792 () Bool)

(assert (=> bs!1902709 m!7900792))

(assert (=> bs!1902709 m!7900630))

(assert (=> b!7231695 d!2246048))

(declare-fun d!2246050 () Bool)

(assert (=> d!2246050 (= (isEmpty!40323 (exprs!7934 ct1!232)) (is-Nil!69966 (exprs!7934 ct1!232)))))

(assert (=> b!7231695 d!2246050))

(declare-fun d!2246052 () Bool)

(declare-fun e!4335383 () Bool)

(assert (=> d!2246052 e!4335383))

(declare-fun res!2934088 () Bool)

(assert (=> d!2246052 (=> (not res!2934088) (not e!4335383))))

(declare-fun lt!2573536 () Context!14868)

(declare-fun dynLambda!28515 (Int Context!14868) Bool)

(assert (=> d!2246052 (= res!2934088 (dynLambda!28515 lambda!439373 lt!2573536))))

(declare-fun getWitness!2010 (List!70092 Int) Context!14868)

(assert (=> d!2246052 (= lt!2573536 (getWitness!2010 (toList!11351 lt!2573475) lambda!439373))))

(assert (=> d!2246052 (exists!4131 lt!2573475 lambda!439373)))

(assert (=> d!2246052 (= (getWitness!2008 lt!2573475 lambda!439373) lt!2573536)))

(declare-fun b!7231813 () Bool)

(assert (=> b!7231813 (= e!4335383 (set.member lt!2573536 lt!2573475))))

(assert (= (and d!2246052 res!2934088) b!7231813))

(declare-fun b_lambda!277145 () Bool)

(assert (=> (not b_lambda!277145) (not d!2246052)))

(declare-fun m!7900808 () Bool)

(assert (=> d!2246052 m!7900808))

(assert (=> d!2246052 m!7900642))

(assert (=> d!2246052 m!7900642))

(declare-fun m!7900810 () Bool)

(assert (=> d!2246052 m!7900810))

(assert (=> d!2246052 m!7900636))

(declare-fun m!7900812 () Bool)

(assert (=> b!7231813 m!7900812))

(assert (=> b!7231695 d!2246052))

(declare-fun d!2246056 () Bool)

(declare-fun e!4335390 () Bool)

(assert (=> d!2246056 e!4335390))

(declare-fun res!2934095 () Bool)

(assert (=> d!2246056 (=> (not res!2934095) (not e!4335390))))

(declare-fun lt!2573541 () List!70091)

(declare-fun content!14376 (List!70091) (Set C!37262))

(assert (=> d!2246056 (= res!2934095 (= (content!14376 lt!2573541) (set.union (content!14376 (t!384140 s1!1971)) (content!14376 s2!1849))))))

(declare-fun e!4335391 () List!70091)

(assert (=> d!2246056 (= lt!2573541 e!4335391)))

(declare-fun c!1341749 () Bool)

(assert (=> d!2246056 (= c!1341749 (is-Nil!69967 (t!384140 s1!1971)))))

(assert (=> d!2246056 (= (++!16289 (t!384140 s1!1971) s2!1849) lt!2573541)))

(declare-fun b!7231825 () Bool)

(assert (=> b!7231825 (= e!4335391 (Cons!69967 (h!76415 (t!384140 s1!1971)) (++!16289 (t!384140 (t!384140 s1!1971)) s2!1849)))))

(declare-fun b!7231824 () Bool)

(assert (=> b!7231824 (= e!4335391 s2!1849)))

(declare-fun b!7231827 () Bool)

(assert (=> b!7231827 (= e!4335390 (or (not (= s2!1849 Nil!69967)) (= lt!2573541 (t!384140 s1!1971))))))

(declare-fun b!7231826 () Bool)

(declare-fun res!2934096 () Bool)

(assert (=> b!7231826 (=> (not res!2934096) (not e!4335390))))

(declare-fun size!41550 (List!70091) Int)

(assert (=> b!7231826 (= res!2934096 (= (size!41550 lt!2573541) (+ (size!41550 (t!384140 s1!1971)) (size!41550 s2!1849))))))

(assert (= (and d!2246056 c!1341749) b!7231824))

(assert (= (and d!2246056 (not c!1341749)) b!7231825))

(assert (= (and d!2246056 res!2934095) b!7231826))

(assert (= (and b!7231826 res!2934096) b!7231827))

(declare-fun m!7900814 () Bool)

(assert (=> d!2246056 m!7900814))

(declare-fun m!7900816 () Bool)

(assert (=> d!2246056 m!7900816))

(declare-fun m!7900818 () Bool)

(assert (=> d!2246056 m!7900818))

(declare-fun m!7900820 () Bool)

(assert (=> b!7231825 m!7900820))

(declare-fun m!7900822 () Bool)

(assert (=> b!7231826 m!7900822))

(declare-fun m!7900824 () Bool)

(assert (=> b!7231826 m!7900824))

(declare-fun m!7900826 () Bool)

(assert (=> b!7231826 m!7900826))

(assert (=> b!7231695 d!2246056))

(declare-fun b!7231839 () Bool)

(declare-fun e!4335401 () Bool)

(assert (=> b!7231839 (= e!4335401 (nullable!7811 (h!76414 (exprs!7934 ct1!232))))))

(declare-fun b!7231840 () Bool)

(declare-fun e!4335399 () (Set Context!14868))

(assert (=> b!7231840 (= e!4335399 (as set.empty (Set Context!14868)))))

(declare-fun d!2246058 () Bool)

(declare-fun c!1341754 () Bool)

(assert (=> d!2246058 (= c!1341754 e!4335401)))

(declare-fun res!2934100 () Bool)

(assert (=> d!2246058 (=> (not res!2934100) (not e!4335401))))

(assert (=> d!2246058 (= res!2934100 (is-Cons!69966 (exprs!7934 ct1!232)))))

(declare-fun e!4335400 () (Set Context!14868))

(assert (=> d!2246058 (= (derivationStepZipperUp!2368 ct1!232 (h!76415 s1!1971)) e!4335400)))

(declare-fun bm!658208 () Bool)

(declare-fun call!658213 () (Set Context!14868))

(assert (=> bm!658208 (= call!658213 (derivationStepZipperDown!2538 (h!76414 (exprs!7934 ct1!232)) (Context!14869 (t!384139 (exprs!7934 ct1!232))) (h!76415 s1!1971)))))

(declare-fun b!7231841 () Bool)

(assert (=> b!7231841 (= e!4335400 (set.union call!658213 (derivationStepZipperUp!2368 (Context!14869 (t!384139 (exprs!7934 ct1!232))) (h!76415 s1!1971))))))

(declare-fun b!7231842 () Bool)

(assert (=> b!7231842 (= e!4335399 call!658213)))

(declare-fun b!7231843 () Bool)

(assert (=> b!7231843 (= e!4335400 e!4335399)))

(declare-fun c!1341755 () Bool)

(assert (=> b!7231843 (= c!1341755 (is-Cons!69966 (exprs!7934 ct1!232)))))

(assert (= (and d!2246058 res!2934100) b!7231839))

(assert (= (and d!2246058 c!1341754) b!7231841))

(assert (= (and d!2246058 (not c!1341754)) b!7231843))

(assert (= (and b!7231843 c!1341755) b!7231842))

(assert (= (and b!7231843 (not c!1341755)) b!7231840))

(assert (= (or b!7231841 b!7231842) bm!658208))

(declare-fun m!7900834 () Bool)

(assert (=> b!7231839 m!7900834))

(declare-fun m!7900836 () Bool)

(assert (=> bm!658208 m!7900836))

(declare-fun m!7900838 () Bool)

(assert (=> b!7231841 m!7900838))

(assert (=> b!7231695 d!2246058))

(declare-fun d!2246062 () Bool)

(assert (=> d!2246062 (forall!17317 (++!16288 (exprs!7934 lt!2573470) (exprs!7934 ct2!328)) lambda!439372)))

(declare-fun lt!2573543 () Unit!163525)

(assert (=> d!2246062 (= lt!2573543 (choose!55515 (exprs!7934 lt!2573470) (exprs!7934 ct2!328) lambda!439372))))

(assert (=> d!2246062 (forall!17317 (exprs!7934 lt!2573470) lambda!439372)))

(assert (=> d!2246062 (= (lemmaConcatPreservesForall!1303 (exprs!7934 lt!2573470) (exprs!7934 ct2!328) lambda!439372) lt!2573543)))

(declare-fun bs!1902710 () Bool)

(assert (= bs!1902710 d!2246062))

(assert (=> bs!1902710 m!7900634))

(assert (=> bs!1902710 m!7900634))

(declare-fun m!7900840 () Bool)

(assert (=> bs!1902710 m!7900840))

(declare-fun m!7900842 () Bool)

(assert (=> bs!1902710 m!7900842))

(declare-fun m!7900844 () Bool)

(assert (=> bs!1902710 m!7900844))

(assert (=> b!7231695 d!2246062))

(declare-fun b!7231844 () Bool)

(declare-fun e!4335402 () List!70090)

(assert (=> b!7231844 (= e!4335402 (exprs!7934 ct2!328))))

(declare-fun d!2246064 () Bool)

(declare-fun e!4335403 () Bool)

(assert (=> d!2246064 e!4335403))

(declare-fun res!2934102 () Bool)

(assert (=> d!2246064 (=> (not res!2934102) (not e!4335403))))

(declare-fun lt!2573544 () List!70090)

(assert (=> d!2246064 (= res!2934102 (= (content!14375 lt!2573544) (set.union (content!14375 (exprs!7934 lt!2573470)) (content!14375 (exprs!7934 ct2!328)))))))

(assert (=> d!2246064 (= lt!2573544 e!4335402)))

(declare-fun c!1341756 () Bool)

(assert (=> d!2246064 (= c!1341756 (is-Nil!69966 (exprs!7934 lt!2573470)))))

(assert (=> d!2246064 (= (++!16288 (exprs!7934 lt!2573470) (exprs!7934 ct2!328)) lt!2573544)))

(declare-fun b!7231845 () Bool)

(assert (=> b!7231845 (= e!4335402 (Cons!69966 (h!76414 (exprs!7934 lt!2573470)) (++!16288 (t!384139 (exprs!7934 lt!2573470)) (exprs!7934 ct2!328))))))

(declare-fun b!7231847 () Bool)

(assert (=> b!7231847 (= e!4335403 (or (not (= (exprs!7934 ct2!328) Nil!69966)) (= lt!2573544 (exprs!7934 lt!2573470))))))

(declare-fun b!7231846 () Bool)

(declare-fun res!2934101 () Bool)

(assert (=> b!7231846 (=> (not res!2934101) (not e!4335403))))

(assert (=> b!7231846 (= res!2934101 (= (size!41549 lt!2573544) (+ (size!41549 (exprs!7934 lt!2573470)) (size!41549 (exprs!7934 ct2!328)))))))

(assert (= (and d!2246064 c!1341756) b!7231844))

(assert (= (and d!2246064 (not c!1341756)) b!7231845))

(assert (= (and d!2246064 res!2934102) b!7231846))

(assert (= (and b!7231846 res!2934101) b!7231847))

(declare-fun m!7900846 () Bool)

(assert (=> d!2246064 m!7900846))

(declare-fun m!7900848 () Bool)

(assert (=> d!2246064 m!7900848))

(assert (=> d!2246064 m!7900700))

(declare-fun m!7900850 () Bool)

(assert (=> b!7231845 m!7900850))

(declare-fun m!7900852 () Bool)

(assert (=> b!7231846 m!7900852))

(declare-fun m!7900854 () Bool)

(assert (=> b!7231846 m!7900854))

(assert (=> b!7231846 m!7900708))

(assert (=> b!7231695 d!2246064))

(declare-fun d!2246066 () Bool)

(declare-fun lt!2573547 () Bool)

(assert (=> d!2246066 (= lt!2573547 (exists!4132 (toList!11351 lt!2573475) lambda!439373))))

(declare-fun choose!55517 ((Set Context!14868) Int) Bool)

(assert (=> d!2246066 (= lt!2573547 (choose!55517 lt!2573475 lambda!439373))))

(assert (=> d!2246066 (= (exists!4131 lt!2573475 lambda!439373) lt!2573547)))

(declare-fun bs!1902711 () Bool)

(assert (= bs!1902711 d!2246066))

(assert (=> bs!1902711 m!7900642))

(assert (=> bs!1902711 m!7900642))

(declare-fun m!7900856 () Bool)

(assert (=> bs!1902711 m!7900856))

(declare-fun m!7900858 () Bool)

(assert (=> bs!1902711 m!7900858))

(assert (=> b!7231696 d!2246066))

(declare-fun bs!1902712 () Bool)

(declare-fun d!2246068 () Bool)

(assert (= bs!1902712 (and d!2246068 b!7231696)))

(declare-fun lambda!439399 () Int)

(assert (=> bs!1902712 (not (= lambda!439399 lambda!439373))))

(assert (=> d!2246068 true))

(declare-fun order!28815 () Int)

(declare-fun dynLambda!28516 (Int Int) Int)

(assert (=> d!2246068 (< (dynLambda!28516 order!28815 lambda!439373) (dynLambda!28516 order!28815 lambda!439399))))

(declare-fun forall!17319 (List!70092 Int) Bool)

(assert (=> d!2246068 (= (exists!4132 lt!2573468 lambda!439373) (not (forall!17319 lt!2573468 lambda!439399)))))

(declare-fun bs!1902713 () Bool)

(assert (= bs!1902713 d!2246068))

(declare-fun m!7900860 () Bool)

(assert (=> bs!1902713 m!7900860))

(assert (=> b!7231696 d!2246068))

(declare-fun bs!1902714 () Bool)

(declare-fun d!2246070 () Bool)

(assert (= bs!1902714 (and d!2246070 b!7231696)))

(declare-fun lambda!439402 () Int)

(assert (=> bs!1902714 (= lambda!439402 lambda!439373)))

(declare-fun bs!1902715 () Bool)

(assert (= bs!1902715 (and d!2246070 d!2246068)))

(assert (=> bs!1902715 (not (= lambda!439402 lambda!439399))))

(assert (=> d!2246070 true))

(assert (=> d!2246070 (exists!4132 lt!2573468 lambda!439402)))

(declare-fun lt!2573550 () Unit!163525)

(declare-fun choose!55518 (List!70092 List!70091) Unit!163525)

(assert (=> d!2246070 (= lt!2573550 (choose!55518 lt!2573468 (t!384140 s1!1971)))))

(declare-fun content!14377 (List!70092) (Set Context!14868))

(assert (=> d!2246070 (matchZipper!3404 (content!14377 lt!2573468) (t!384140 s1!1971))))

(assert (=> d!2246070 (= (lemmaZipperMatchesExistsMatchingContext!637 lt!2573468 (t!384140 s1!1971)) lt!2573550)))

(declare-fun bs!1902716 () Bool)

(assert (= bs!1902716 d!2246070))

(declare-fun m!7900868 () Bool)

(assert (=> bs!1902716 m!7900868))

(declare-fun m!7900870 () Bool)

(assert (=> bs!1902716 m!7900870))

(declare-fun m!7900872 () Bool)

(assert (=> bs!1902716 m!7900872))

(assert (=> bs!1902716 m!7900872))

(declare-fun m!7900874 () Bool)

(assert (=> bs!1902716 m!7900874))

(assert (=> b!7231696 d!2246070))

(declare-fun d!2246074 () Bool)

(declare-fun e!4335415 () Bool)

(assert (=> d!2246074 e!4335415))

(declare-fun res!2934108 () Bool)

(assert (=> d!2246074 (=> (not res!2934108) (not e!4335415))))

(declare-fun lt!2573553 () List!70092)

(declare-fun noDuplicate!2920 (List!70092) Bool)

(assert (=> d!2246074 (= res!2934108 (noDuplicate!2920 lt!2573553))))

(declare-fun choose!55519 ((Set Context!14868)) List!70092)

(assert (=> d!2246074 (= lt!2573553 (choose!55519 lt!2573475))))

(assert (=> d!2246074 (= (toList!11351 lt!2573475) lt!2573553)))

(declare-fun b!7231867 () Bool)

(assert (=> b!7231867 (= e!4335415 (= (content!14377 lt!2573553) lt!2573475))))

(assert (= (and d!2246074 res!2934108) b!7231867))

(declare-fun m!7900876 () Bool)

(assert (=> d!2246074 m!7900876))

(declare-fun m!7900878 () Bool)

(assert (=> d!2246074 m!7900878))

(declare-fun m!7900880 () Bool)

(assert (=> b!7231867 m!7900880))

(assert (=> b!7231696 d!2246074))

(declare-fun d!2246076 () Bool)

(declare-fun c!1341765 () Bool)

(assert (=> d!2246076 (= c!1341765 (isEmpty!40325 (t!384140 s1!1971)))))

(declare-fun e!4335416 () Bool)

(assert (=> d!2246076 (= (matchZipper!3404 lt!2573475 (t!384140 s1!1971)) e!4335416)))

(declare-fun b!7231868 () Bool)

(assert (=> b!7231868 (= e!4335416 (nullableZipper!2808 lt!2573475))))

(declare-fun b!7231869 () Bool)

(assert (=> b!7231869 (= e!4335416 (matchZipper!3404 (derivationStepZipper!3286 lt!2573475 (head!14796 (t!384140 s1!1971))) (tail!14111 (t!384140 s1!1971))))))

(assert (= (and d!2246076 c!1341765) b!7231868))

(assert (= (and d!2246076 (not c!1341765)) b!7231869))

(declare-fun m!7900882 () Bool)

(assert (=> d!2246076 m!7900882))

(declare-fun m!7900884 () Bool)

(assert (=> b!7231868 m!7900884))

(declare-fun m!7900886 () Bool)

(assert (=> b!7231869 m!7900886))

(assert (=> b!7231869 m!7900886))

(declare-fun m!7900888 () Bool)

(assert (=> b!7231869 m!7900888))

(declare-fun m!7900890 () Bool)

(assert (=> b!7231869 m!7900890))

(assert (=> b!7231869 m!7900888))

(assert (=> b!7231869 m!7900890))

(declare-fun m!7900892 () Bool)

(assert (=> b!7231869 m!7900892))

(assert (=> b!7231691 d!2246076))

(declare-fun d!2246078 () Bool)

(assert (=> d!2246078 true))

(declare-fun lambda!439405 () Int)

(declare-fun flatMap!2702 ((Set Context!14868) Int) (Set Context!14868))

(assert (=> d!2246078 (= (derivationStepZipper!3286 lt!2573476 (h!76415 s1!1971)) (flatMap!2702 lt!2573476 lambda!439405))))

(declare-fun bs!1902717 () Bool)

(assert (= bs!1902717 d!2246078))

(declare-fun m!7900894 () Bool)

(assert (=> bs!1902717 m!7900894))

(assert (=> b!7231691 d!2246078))

(declare-fun b!7231884 () Bool)

(declare-fun e!4335423 () Bool)

(declare-fun tp!2033941 () Bool)

(declare-fun tp!2033942 () Bool)

(assert (=> b!7231884 (= e!4335423 (and tp!2033941 tp!2033942))))

(assert (=> b!7231697 (= tp!2033922 e!4335423)))

(assert (= (and b!7231697 (is-Cons!69966 (exprs!7934 ct1!232))) b!7231884))

(declare-fun b!7231885 () Bool)

(declare-fun e!4335424 () Bool)

(declare-fun tp!2033943 () Bool)

(declare-fun tp!2033944 () Bool)

(assert (=> b!7231885 (= e!4335424 (and tp!2033943 tp!2033944))))

(assert (=> b!7231688 (= tp!2033923 e!4335424)))

(assert (= (and b!7231688 (is-Cons!69966 (exprs!7934 ct2!328))) b!7231885))

(declare-fun b!7231890 () Bool)

(declare-fun e!4335427 () Bool)

(declare-fun tp!2033947 () Bool)

(assert (=> b!7231890 (= e!4335427 (and tp_is_empty!46453 tp!2033947))))

(assert (=> b!7231694 (= tp!2033921 e!4335427)))

(assert (= (and b!7231694 (is-Cons!69967 (t!384140 s1!1971))) b!7231890))

(declare-fun b!7231891 () Bool)

(declare-fun e!4335428 () Bool)

(declare-fun tp!2033948 () Bool)

(assert (=> b!7231891 (= e!4335428 (and tp_is_empty!46453 tp!2033948))))

(assert (=> b!7231690 (= tp!2033924 e!4335428)))

(assert (= (and b!7231690 (is-Cons!69967 (t!384140 s2!1849))) b!7231891))

(declare-fun b_lambda!277149 () Bool)

(assert (= b_lambda!277143 (or b!7231692 b_lambda!277149)))

(declare-fun bs!1902718 () Bool)

(declare-fun d!2246080 () Bool)

(assert (= bs!1902718 (and d!2246080 b!7231692)))

(declare-fun validRegex!9509 (Regex!18494) Bool)

(assert (=> bs!1902718 (= (dynLambda!28514 lambda!439372 (h!76414 (exprs!7934 ct1!232))) (validRegex!9509 (h!76414 (exprs!7934 ct1!232))))))

(declare-fun m!7900896 () Bool)

(assert (=> bs!1902718 m!7900896))

(assert (=> b!7231754 d!2246080))

(declare-fun b_lambda!277151 () Bool)

(assert (= b_lambda!277145 (or b!7231696 b_lambda!277151)))

(declare-fun bs!1902719 () Bool)

(declare-fun d!2246082 () Bool)

(assert (= bs!1902719 (and d!2246082 b!7231696)))

(assert (=> bs!1902719 (= (dynLambda!28515 lambda!439373 lt!2573536) (matchZipper!3404 (set.insert lt!2573536 (as set.empty (Set Context!14868))) (t!384140 s1!1971)))))

(declare-fun m!7900898 () Bool)

(assert (=> bs!1902719 m!7900898))

(assert (=> bs!1902719 m!7900898))

(declare-fun m!7900900 () Bool)

(assert (=> bs!1902719 m!7900900))

(assert (=> d!2246052 d!2246082))

(push 1)

(assert (not d!2246042))

(assert (not b!7231748))

(assert (not d!2246056))

(assert (not d!2246040))

(assert (not b!7231868))

(assert (not bm!658208))

(assert (not b!7231741))

(assert (not b!7231826))

(assert (not b!7231890))

(assert (not d!2246074))

(assert (not d!2246076))

(assert (not bm!658205))

(assert (not b!7231788))

(assert (not b_lambda!277151))

(assert (not b!7231755))

(assert (not b!7231884))

(assert (not b!7231885))

(assert (not d!2246020))

(assert (not b!7231891))

(assert (not b!7231841))

(assert (not bs!1902719))

(assert (not b!7231825))

(assert (not b!7231797))

(assert (not b!7231798))

(assert (not d!2246052))

(assert (not b!7231846))

(assert (not bm!658201))

(assert (not d!2246022))

(assert (not b!7231793))

(assert (not b!7231867))

(assert (not d!2246064))

(assert (not d!2246066))

(assert (not b!7231845))

(assert (not b_lambda!277149))

(assert (not d!2246078))

(assert (not b!7231742))

(assert (not d!2246046))

(assert (not b!7231794))

(assert tp_is_empty!46453)

(assert (not b!7231749))

(assert (not d!2246024))

(assert (not d!2246070))

(assert (not b!7231869))

(assert (not bm!658203))

(assert (not d!2246068))

(assert (not d!2246038))

(assert (not b!7231839))

(assert (not d!2246062))

(assert (not bs!1902718))

(assert (not d!2246048))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

