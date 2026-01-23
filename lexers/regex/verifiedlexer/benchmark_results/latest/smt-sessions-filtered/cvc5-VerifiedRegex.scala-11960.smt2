; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!669458 () Bool)

(assert start!669458)

(declare-fun b!6979395 () Bool)

(assert (=> b!6979395 true))

(declare-fun b!6979399 () Bool)

(assert (=> b!6979399 true))

(declare-fun b!6979406 () Bool)

(assert (=> b!6979406 true))

(declare-fun e!4194674 () Bool)

(declare-fun e!4194678 () Bool)

(assert (=> b!6979395 (= e!4194674 (not e!4194678))))

(declare-fun res!2846041 () Bool)

(assert (=> b!6979395 (=> res!2846041 e!4194678)))

(declare-datatypes ((C!34602 0))(
  ( (C!34603 (val!27003 Int)) )
))
(declare-datatypes ((Regex!17166 0))(
  ( (ElementMatch!17166 (c!1293697 C!34602)) (Concat!26011 (regOne!34844 Regex!17166) (regTwo!34844 Regex!17166)) (EmptyExpr!17166) (Star!17166 (reg!17495 Regex!17166)) (EmptyLang!17166) (Union!17166 (regOne!34845 Regex!17166) (regTwo!34845 Regex!17166)) )
))
(declare-datatypes ((List!67043 0))(
  ( (Nil!66919) (Cons!66919 (h!73367 Regex!17166) (t!380786 List!67043)) )
))
(declare-datatypes ((Context!12324 0))(
  ( (Context!12325 (exprs!6662 List!67043)) )
))
(declare-fun lt!2481122 () (Set Context!12324))

(declare-datatypes ((List!67044 0))(
  ( (Nil!66920) (Cons!66920 (h!73368 C!34602) (t!380787 List!67044)) )
))
(declare-fun s!7408 () List!67044)

(declare-fun matchZipper!2706 ((Set Context!12324) List!67044) Bool)

(assert (=> b!6979395 (= res!2846041 (not (matchZipper!2706 lt!2481122 s!7408)))))

(declare-fun lt!2481121 () Context!12324)

(assert (=> b!6979395 (= lt!2481122 (set.insert lt!2481121 (as set.empty (Set Context!12324))))))

(declare-fun lt!2481118 () (Set Context!12324))

(declare-fun lambda!398794 () Int)

(declare-fun getWitness!1029 ((Set Context!12324) Int) Context!12324)

(assert (=> b!6979395 (= lt!2481121 (getWitness!1029 lt!2481118 lambda!398794))))

(declare-datatypes ((List!67045 0))(
  ( (Nil!66921) (Cons!66921 (h!73369 Context!12324) (t!380788 List!67045)) )
))
(declare-fun lt!2481120 () List!67045)

(declare-fun exists!2918 (List!67045 Int) Bool)

(assert (=> b!6979395 (exists!2918 lt!2481120 lambda!398794)))

(declare-datatypes ((Unit!160982 0))(
  ( (Unit!160983) )
))
(declare-fun lt!2481112 () Unit!160982)

(declare-fun lemmaZipperMatchesExistsMatchingContext!135 (List!67045 List!67044) Unit!160982)

(assert (=> b!6979395 (= lt!2481112 (lemmaZipperMatchesExistsMatchingContext!135 lt!2481120 s!7408))))

(declare-fun toList!10526 ((Set Context!12324)) List!67045)

(assert (=> b!6979395 (= lt!2481120 (toList!10526 lt!2481118))))

(declare-fun b!6979396 () Bool)

(declare-fun e!4194673 () Bool)

(declare-fun tp!1927942 () Bool)

(assert (=> b!6979396 (= e!4194673 tp!1927942)))

(declare-fun b!6979397 () Bool)

(declare-fun res!2846039 () Bool)

(assert (=> b!6979397 (=> res!2846039 e!4194678)))

(assert (=> b!6979397 (= res!2846039 (not (set.member lt!2481121 lt!2481118)))))

(declare-fun b!6979398 () Bool)

(declare-fun e!4194675 () Bool)

(declare-fun e!4194677 () Bool)

(assert (=> b!6979398 (= e!4194675 e!4194677)))

(declare-fun res!2846038 () Bool)

(assert (=> b!6979398 (=> res!2846038 e!4194677)))

(declare-fun lt!2481114 () Context!12324)

(declare-fun nullable!6926 (Regex!17166) Bool)

(assert (=> b!6979398 (= res!2846038 (not (nullable!6926 (h!73367 (exprs!6662 lt!2481114)))))))

(declare-fun lt!2481126 () List!67043)

(declare-fun tail!13135 (List!67043) List!67043)

(assert (=> b!6979398 (= lt!2481126 (tail!13135 (exprs!6662 lt!2481114)))))

(declare-fun setRes!47478 () Bool)

(declare-fun e!4194676 () Bool)

(declare-fun setElem!47478 () Context!12324)

(declare-fun setNonEmpty!47478 () Bool)

(declare-fun tp!1927939 () Bool)

(declare-fun inv!85775 (Context!12324) Bool)

(assert (=> setNonEmpty!47478 (= setRes!47478 (and tp!1927939 (inv!85775 setElem!47478) e!4194676))))

(declare-fun z1!570 () (Set Context!12324))

(declare-fun setRest!47478 () (Set Context!12324))

(assert (=> setNonEmpty!47478 (= z1!570 (set.union (set.insert setElem!47478 (as set.empty (Set Context!12324))) setRest!47478))))

(declare-fun setIsEmpty!47478 () Bool)

(assert (=> setIsEmpty!47478 setRes!47478))

(declare-fun res!2846037 () Bool)

(assert (=> start!669458 (=> (not res!2846037) (not e!4194674))))

(assert (=> start!669458 (= res!2846037 (matchZipper!2706 lt!2481118 s!7408))))

(declare-fun ct2!306 () Context!12324)

(declare-fun appendTo!287 ((Set Context!12324) Context!12324) (Set Context!12324))

(assert (=> start!669458 (= lt!2481118 (appendTo!287 z1!570 ct2!306))))

(assert (=> start!669458 e!4194674))

(declare-fun condSetEmpty!47478 () Bool)

(assert (=> start!669458 (= condSetEmpty!47478 (= z1!570 (as set.empty (Set Context!12324))))))

(assert (=> start!669458 setRes!47478))

(assert (=> start!669458 (and (inv!85775 ct2!306) e!4194673)))

(declare-fun e!4194671 () Bool)

(assert (=> start!669458 e!4194671))

(declare-fun e!4194672 () Bool)

(assert (=> b!6979399 (= e!4194678 e!4194672)))

(declare-fun res!2846036 () Bool)

(assert (=> b!6979399 (=> res!2846036 e!4194672)))

(declare-fun lt!2481117 () Context!12324)

(assert (=> b!6979399 (= res!2846036 (or (not (= lt!2481117 lt!2481121)) (not (set.member lt!2481114 z1!570))))))

(declare-fun ++!15111 (List!67043 List!67043) List!67043)

(assert (=> b!6979399 (= lt!2481117 (Context!12325 (++!15111 (exprs!6662 lt!2481114) (exprs!6662 ct2!306))))))

(declare-fun lambda!398796 () Int)

(declare-fun lt!2481123 () Unit!160982)

(declare-fun lemmaConcatPreservesForall!502 (List!67043 List!67043 Int) Unit!160982)

(assert (=> b!6979399 (= lt!2481123 (lemmaConcatPreservesForall!502 (exprs!6662 lt!2481114) (exprs!6662 ct2!306) lambda!398796))))

(declare-fun lambda!398795 () Int)

(declare-fun mapPost2!21 ((Set Context!12324) Int Context!12324) Context!12324)

(assert (=> b!6979399 (= lt!2481114 (mapPost2!21 z1!570 lambda!398795 lt!2481121))))

(declare-fun b!6979400 () Bool)

(declare-fun tp!1927941 () Bool)

(assert (=> b!6979400 (= e!4194676 tp!1927941)))

(declare-fun b!6979401 () Bool)

(declare-fun tp_is_empty!43557 () Bool)

(declare-fun tp!1927940 () Bool)

(assert (=> b!6979401 (= e!4194671 (and tp_is_empty!43557 tp!1927940))))

(declare-fun b!6979402 () Bool)

(declare-fun res!2846035 () Bool)

(assert (=> b!6979402 (=> (not res!2846035) (not e!4194674))))

(assert (=> b!6979402 (= res!2846035 (is-Cons!66920 s!7408))))

(declare-fun b!6979403 () Bool)

(declare-fun res!2846034 () Bool)

(assert (=> b!6979403 (=> res!2846034 e!4194675)))

(assert (=> b!6979403 (= res!2846034 (not (is-Cons!66919 (exprs!6662 lt!2481114))))))

(declare-fun b!6979404 () Bool)

(declare-fun res!2846040 () Bool)

(assert (=> b!6979404 (=> res!2846040 e!4194675)))

(declare-fun isEmpty!39059 (List!67043) Bool)

(assert (=> b!6979404 (= res!2846040 (isEmpty!39059 (exprs!6662 lt!2481114)))))

(declare-fun b!6979405 () Bool)

(declare-fun e!4194670 () Bool)

(assert (=> b!6979405 (= e!4194672 e!4194670)))

(declare-fun res!2846042 () Bool)

(assert (=> b!6979405 (=> res!2846042 e!4194670)))

(declare-fun lt!2481115 () (Set Context!12324))

(assert (=> b!6979405 (= res!2846042 (not (= lt!2481115 lt!2481122)))))

(assert (=> b!6979405 (= lt!2481115 (set.insert lt!2481117 (as set.empty (Set Context!12324))))))

(declare-fun lt!2481116 () Unit!160982)

(assert (=> b!6979405 (= lt!2481116 (lemmaConcatPreservesForall!502 (exprs!6662 lt!2481114) (exprs!6662 ct2!306) lambda!398796))))

(assert (=> b!6979406 (= e!4194670 e!4194675)))

(declare-fun res!2846033 () Bool)

(assert (=> b!6979406 (=> res!2846033 e!4194675)))

(declare-fun lt!2481119 () (Set Context!12324))

(declare-fun derivationStepZipper!2646 ((Set Context!12324) C!34602) (Set Context!12324))

(assert (=> b!6979406 (= res!2846033 (not (= (derivationStepZipper!2646 lt!2481115 (h!73368 s!7408)) lt!2481119)))))

(declare-fun lambda!398797 () Int)

(declare-fun flatMap!2152 ((Set Context!12324) Int) (Set Context!12324))

(declare-fun derivationStepZipperUp!1816 (Context!12324 C!34602) (Set Context!12324))

(assert (=> b!6979406 (= (flatMap!2152 lt!2481115 lambda!398797) (derivationStepZipperUp!1816 lt!2481117 (h!73368 s!7408)))))

(declare-fun lt!2481125 () Unit!160982)

(declare-fun lemmaFlatMapOnSingletonSet!1667 ((Set Context!12324) Context!12324 Int) Unit!160982)

(assert (=> b!6979406 (= lt!2481125 (lemmaFlatMapOnSingletonSet!1667 lt!2481115 lt!2481117 lambda!398797))))

(assert (=> b!6979406 (= lt!2481119 (derivationStepZipperUp!1816 lt!2481117 (h!73368 s!7408)))))

(declare-fun lt!2481113 () Unit!160982)

(assert (=> b!6979406 (= lt!2481113 (lemmaConcatPreservesForall!502 (exprs!6662 lt!2481114) (exprs!6662 ct2!306) lambda!398796))))

(declare-fun b!6979407 () Bool)

(declare-fun forall!16047 (List!67043 Int) Bool)

(assert (=> b!6979407 (= e!4194677 (forall!16047 lt!2481126 lambda!398796))))

(declare-fun lt!2481124 () Unit!160982)

(assert (=> b!6979407 (= lt!2481124 (lemmaConcatPreservesForall!502 lt!2481126 (exprs!6662 ct2!306) lambda!398796))))

(assert (= (and start!669458 res!2846037) b!6979402))

(assert (= (and b!6979402 res!2846035) b!6979395))

(assert (= (and b!6979395 (not res!2846041)) b!6979397))

(assert (= (and b!6979397 (not res!2846039)) b!6979399))

(assert (= (and b!6979399 (not res!2846036)) b!6979405))

(assert (= (and b!6979405 (not res!2846042)) b!6979406))

(assert (= (and b!6979406 (not res!2846033)) b!6979403))

(assert (= (and b!6979403 (not res!2846034)) b!6979404))

(assert (= (and b!6979404 (not res!2846040)) b!6979398))

(assert (= (and b!6979398 (not res!2846038)) b!6979407))

(assert (= (and start!669458 condSetEmpty!47478) setIsEmpty!47478))

(assert (= (and start!669458 (not condSetEmpty!47478)) setNonEmpty!47478))

(assert (= setNonEmpty!47478 b!6979400))

(assert (= start!669458 b!6979396))

(assert (= (and start!669458 (is-Cons!66920 s!7408)) b!6979401))

(declare-fun m!7665402 () Bool)

(assert (=> b!6979397 m!7665402))

(declare-fun m!7665404 () Bool)

(assert (=> b!6979405 m!7665404))

(declare-fun m!7665406 () Bool)

(assert (=> b!6979405 m!7665406))

(declare-fun m!7665408 () Bool)

(assert (=> b!6979406 m!7665408))

(declare-fun m!7665410 () Bool)

(assert (=> b!6979406 m!7665410))

(declare-fun m!7665412 () Bool)

(assert (=> b!6979406 m!7665412))

(declare-fun m!7665414 () Bool)

(assert (=> b!6979406 m!7665414))

(assert (=> b!6979406 m!7665406))

(declare-fun m!7665416 () Bool)

(assert (=> b!6979399 m!7665416))

(declare-fun m!7665418 () Bool)

(assert (=> b!6979399 m!7665418))

(assert (=> b!6979399 m!7665406))

(declare-fun m!7665420 () Bool)

(assert (=> b!6979399 m!7665420))

(declare-fun m!7665422 () Bool)

(assert (=> start!669458 m!7665422))

(declare-fun m!7665424 () Bool)

(assert (=> start!669458 m!7665424))

(declare-fun m!7665426 () Bool)

(assert (=> start!669458 m!7665426))

(declare-fun m!7665428 () Bool)

(assert (=> b!6979407 m!7665428))

(declare-fun m!7665430 () Bool)

(assert (=> b!6979407 m!7665430))

(declare-fun m!7665432 () Bool)

(assert (=> b!6979395 m!7665432))

(declare-fun m!7665434 () Bool)

(assert (=> b!6979395 m!7665434))

(declare-fun m!7665436 () Bool)

(assert (=> b!6979395 m!7665436))

(declare-fun m!7665438 () Bool)

(assert (=> b!6979395 m!7665438))

(declare-fun m!7665440 () Bool)

(assert (=> b!6979395 m!7665440))

(declare-fun m!7665442 () Bool)

(assert (=> b!6979395 m!7665442))

(declare-fun m!7665444 () Bool)

(assert (=> setNonEmpty!47478 m!7665444))

(declare-fun m!7665446 () Bool)

(assert (=> b!6979404 m!7665446))

(declare-fun m!7665448 () Bool)

(assert (=> b!6979398 m!7665448))

(declare-fun m!7665450 () Bool)

(assert (=> b!6979398 m!7665450))

(push 1)

(assert tp_is_empty!43557)

(assert (not b!6979405))

(assert (not b!6979404))

(assert (not b!6979400))

(assert (not b!6979401))

(assert (not b!6979398))

(assert (not b!6979399))

(assert (not b!6979407))

(assert (not b!6979396))

(assert (not b!6979395))

(assert (not b!6979406))

(assert (not start!669458))

(assert (not setNonEmpty!47478))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2173245 () Bool)

(assert (=> d!2173245 (= (isEmpty!39059 (exprs!6662 lt!2481114)) (is-Nil!66919 (exprs!6662 lt!2481114)))))

(assert (=> b!6979404 d!2173245))

(declare-fun d!2173247 () Bool)

(declare-fun e!4194710 () Bool)

(assert (=> d!2173247 e!4194710))

(declare-fun res!2846079 () Bool)

(assert (=> d!2173247 (=> (not res!2846079) (not e!4194710))))

(declare-fun lt!2481176 () List!67043)

(declare-fun content!13188 (List!67043) (Set Regex!17166))

(assert (=> d!2173247 (= res!2846079 (= (content!13188 lt!2481176) (set.union (content!13188 (exprs!6662 lt!2481114)) (content!13188 (exprs!6662 ct2!306)))))))

(declare-fun e!4194711 () List!67043)

(assert (=> d!2173247 (= lt!2481176 e!4194711)))

(declare-fun c!1293709 () Bool)

(assert (=> d!2173247 (= c!1293709 (is-Nil!66919 (exprs!6662 lt!2481114)))))

(assert (=> d!2173247 (= (++!15111 (exprs!6662 lt!2481114) (exprs!6662 ct2!306)) lt!2481176)))

(declare-fun b!6979468 () Bool)

(assert (=> b!6979468 (= e!4194711 (Cons!66919 (h!73367 (exprs!6662 lt!2481114)) (++!15111 (t!380786 (exprs!6662 lt!2481114)) (exprs!6662 ct2!306))))))

(declare-fun b!6979467 () Bool)

(assert (=> b!6979467 (= e!4194711 (exprs!6662 ct2!306))))

(declare-fun b!6979470 () Bool)

(assert (=> b!6979470 (= e!4194710 (or (not (= (exprs!6662 ct2!306) Nil!66919)) (= lt!2481176 (exprs!6662 lt!2481114))))))

(declare-fun b!6979469 () Bool)

(declare-fun res!2846080 () Bool)

(assert (=> b!6979469 (=> (not res!2846080) (not e!4194710))))

(declare-fun size!40868 (List!67043) Int)

(assert (=> b!6979469 (= res!2846080 (= (size!40868 lt!2481176) (+ (size!40868 (exprs!6662 lt!2481114)) (size!40868 (exprs!6662 ct2!306)))))))

(assert (= (and d!2173247 c!1293709) b!6979467))

(assert (= (and d!2173247 (not c!1293709)) b!6979468))

(assert (= (and d!2173247 res!2846079) b!6979469))

(assert (= (and b!6979469 res!2846080) b!6979470))

(declare-fun m!7665504 () Bool)

(assert (=> d!2173247 m!7665504))

(declare-fun m!7665506 () Bool)

(assert (=> d!2173247 m!7665506))

(declare-fun m!7665508 () Bool)

(assert (=> d!2173247 m!7665508))

(declare-fun m!7665510 () Bool)

(assert (=> b!6979468 m!7665510))

(declare-fun m!7665512 () Bool)

(assert (=> b!6979469 m!7665512))

(declare-fun m!7665514 () Bool)

(assert (=> b!6979469 m!7665514))

(declare-fun m!7665516 () Bool)

(assert (=> b!6979469 m!7665516))

(assert (=> b!6979399 d!2173247))

(declare-fun d!2173251 () Bool)

(assert (=> d!2173251 (forall!16047 (++!15111 (exprs!6662 lt!2481114) (exprs!6662 ct2!306)) lambda!398796)))

(declare-fun lt!2481179 () Unit!160982)

(declare-fun choose!51996 (List!67043 List!67043 Int) Unit!160982)

(assert (=> d!2173251 (= lt!2481179 (choose!51996 (exprs!6662 lt!2481114) (exprs!6662 ct2!306) lambda!398796))))

(assert (=> d!2173251 (forall!16047 (exprs!6662 lt!2481114) lambda!398796)))

(assert (=> d!2173251 (= (lemmaConcatPreservesForall!502 (exprs!6662 lt!2481114) (exprs!6662 ct2!306) lambda!398796) lt!2481179)))

(declare-fun bs!1860551 () Bool)

(assert (= bs!1860551 d!2173251))

(assert (=> bs!1860551 m!7665418))

(assert (=> bs!1860551 m!7665418))

(declare-fun m!7665518 () Bool)

(assert (=> bs!1860551 m!7665518))

(declare-fun m!7665520 () Bool)

(assert (=> bs!1860551 m!7665520))

(declare-fun m!7665522 () Bool)

(assert (=> bs!1860551 m!7665522))

(assert (=> b!6979399 d!2173251))

(declare-fun d!2173253 () Bool)

(declare-fun e!4194716 () Bool)

(assert (=> d!2173253 e!4194716))

(declare-fun res!2846083 () Bool)

(assert (=> d!2173253 (=> (not res!2846083) (not e!4194716))))

(declare-fun lt!2481182 () Context!12324)

(declare-fun dynLambda!26719 (Int Context!12324) Context!12324)

(assert (=> d!2173253 (= res!2846083 (= lt!2481121 (dynLambda!26719 lambda!398795 lt!2481182)))))

(declare-fun choose!51997 ((Set Context!12324) Int Context!12324) Context!12324)

(assert (=> d!2173253 (= lt!2481182 (choose!51997 z1!570 lambda!398795 lt!2481121))))

(declare-fun map!15417 ((Set Context!12324) Int) (Set Context!12324))

(assert (=> d!2173253 (set.member lt!2481121 (map!15417 z1!570 lambda!398795))))

(assert (=> d!2173253 (= (mapPost2!21 z1!570 lambda!398795 lt!2481121) lt!2481182)))

(declare-fun b!6979478 () Bool)

(assert (=> b!6979478 (= e!4194716 (set.member lt!2481182 z1!570))))

(assert (= (and d!2173253 res!2846083) b!6979478))

(declare-fun b_lambda!261419 () Bool)

(assert (=> (not b_lambda!261419) (not d!2173253)))

(declare-fun m!7665524 () Bool)

(assert (=> d!2173253 m!7665524))

(declare-fun m!7665526 () Bool)

(assert (=> d!2173253 m!7665526))

(declare-fun m!7665528 () Bool)

(assert (=> d!2173253 m!7665528))

(declare-fun m!7665530 () Bool)

(assert (=> d!2173253 m!7665530))

(declare-fun m!7665532 () Bool)

(assert (=> b!6979478 m!7665532))

(assert (=> b!6979399 d!2173253))

(declare-fun d!2173255 () Bool)

(declare-fun e!4194720 () Bool)

(assert (=> d!2173255 e!4194720))

(declare-fun res!2846086 () Bool)

(assert (=> d!2173255 (=> (not res!2846086) (not e!4194720))))

(declare-fun lt!2481185 () Context!12324)

(declare-fun dynLambda!26720 (Int Context!12324) Bool)

(assert (=> d!2173255 (= res!2846086 (dynLambda!26720 lambda!398794 lt!2481185))))

(declare-fun getWitness!1031 (List!67045 Int) Context!12324)

(assert (=> d!2173255 (= lt!2481185 (getWitness!1031 (toList!10526 lt!2481118) lambda!398794))))

(declare-fun exists!2920 ((Set Context!12324) Int) Bool)

(assert (=> d!2173255 (exists!2920 lt!2481118 lambda!398794)))

(assert (=> d!2173255 (= (getWitness!1029 lt!2481118 lambda!398794) lt!2481185)))

(declare-fun b!6979483 () Bool)

(assert (=> b!6979483 (= e!4194720 (set.member lt!2481185 lt!2481118))))

(assert (= (and d!2173255 res!2846086) b!6979483))

(declare-fun b_lambda!261421 () Bool)

(assert (=> (not b_lambda!261421) (not d!2173255)))

(declare-fun m!7665546 () Bool)

(assert (=> d!2173255 m!7665546))

(assert (=> d!2173255 m!7665438))

(assert (=> d!2173255 m!7665438))

(declare-fun m!7665548 () Bool)

(assert (=> d!2173255 m!7665548))

(declare-fun m!7665550 () Bool)

(assert (=> d!2173255 m!7665550))

(declare-fun m!7665552 () Bool)

(assert (=> b!6979483 m!7665552))

(assert (=> b!6979395 d!2173255))

(declare-fun bs!1860552 () Bool)

(declare-fun d!2173259 () Bool)

(assert (= bs!1860552 (and d!2173259 b!6979395)))

(declare-fun lambda!398827 () Int)

(assert (=> bs!1860552 (not (= lambda!398827 lambda!398794))))

(assert (=> d!2173259 true))

(declare-fun order!27829 () Int)

(declare-fun dynLambda!26721 (Int Int) Int)

(assert (=> d!2173259 (< (dynLambda!26721 order!27829 lambda!398794) (dynLambda!26721 order!27829 lambda!398827))))

(declare-fun forall!16049 (List!67045 Int) Bool)

(assert (=> d!2173259 (= (exists!2918 lt!2481120 lambda!398794) (not (forall!16049 lt!2481120 lambda!398827)))))

(declare-fun bs!1860553 () Bool)

(assert (= bs!1860553 d!2173259))

(declare-fun m!7665560 () Bool)

(assert (=> bs!1860553 m!7665560))

(assert (=> b!6979395 d!2173259))

(declare-fun d!2173263 () Bool)

(declare-fun c!1293715 () Bool)

(declare-fun isEmpty!39061 (List!67044) Bool)

(assert (=> d!2173263 (= c!1293715 (isEmpty!39061 s!7408))))

(declare-fun e!4194726 () Bool)

(assert (=> d!2173263 (= (matchZipper!2706 lt!2481122 s!7408) e!4194726)))

(declare-fun b!6979493 () Bool)

(declare-fun nullableZipper!2396 ((Set Context!12324)) Bool)

(assert (=> b!6979493 (= e!4194726 (nullableZipper!2396 lt!2481122))))

(declare-fun b!6979494 () Bool)

(declare-fun head!14066 (List!67044) C!34602)

(declare-fun tail!13137 (List!67044) List!67044)

(assert (=> b!6979494 (= e!4194726 (matchZipper!2706 (derivationStepZipper!2646 lt!2481122 (head!14066 s!7408)) (tail!13137 s!7408)))))

(assert (= (and d!2173263 c!1293715) b!6979493))

(assert (= (and d!2173263 (not c!1293715)) b!6979494))

(declare-fun m!7665562 () Bool)

(assert (=> d!2173263 m!7665562))

(declare-fun m!7665564 () Bool)

(assert (=> b!6979493 m!7665564))

(declare-fun m!7665566 () Bool)

(assert (=> b!6979494 m!7665566))

(assert (=> b!6979494 m!7665566))

(declare-fun m!7665568 () Bool)

(assert (=> b!6979494 m!7665568))

(declare-fun m!7665570 () Bool)

(assert (=> b!6979494 m!7665570))

(assert (=> b!6979494 m!7665568))

(assert (=> b!6979494 m!7665570))

(declare-fun m!7665572 () Bool)

(assert (=> b!6979494 m!7665572))

(assert (=> b!6979395 d!2173263))

(declare-fun bs!1860554 () Bool)

(declare-fun d!2173265 () Bool)

(assert (= bs!1860554 (and d!2173265 b!6979395)))

(declare-fun lambda!398830 () Int)

(assert (=> bs!1860554 (= lambda!398830 lambda!398794)))

(declare-fun bs!1860555 () Bool)

(assert (= bs!1860555 (and d!2173265 d!2173259)))

(assert (=> bs!1860555 (not (= lambda!398830 lambda!398827))))

(assert (=> d!2173265 true))

(assert (=> d!2173265 (exists!2918 lt!2481120 lambda!398830)))

(declare-fun lt!2481193 () Unit!160982)

(declare-fun choose!51998 (List!67045 List!67044) Unit!160982)

(assert (=> d!2173265 (= lt!2481193 (choose!51998 lt!2481120 s!7408))))

(declare-fun content!13189 (List!67045) (Set Context!12324))

(assert (=> d!2173265 (matchZipper!2706 (content!13189 lt!2481120) s!7408)))

(assert (=> d!2173265 (= (lemmaZipperMatchesExistsMatchingContext!135 lt!2481120 s!7408) lt!2481193)))

(declare-fun bs!1860556 () Bool)

(assert (= bs!1860556 d!2173265))

(declare-fun m!7665574 () Bool)

(assert (=> bs!1860556 m!7665574))

(declare-fun m!7665576 () Bool)

(assert (=> bs!1860556 m!7665576))

(declare-fun m!7665578 () Bool)

(assert (=> bs!1860556 m!7665578))

(assert (=> bs!1860556 m!7665578))

(declare-fun m!7665580 () Bool)

(assert (=> bs!1860556 m!7665580))

(assert (=> b!6979395 d!2173265))

(declare-fun d!2173267 () Bool)

(declare-fun e!4194729 () Bool)

(assert (=> d!2173267 e!4194729))

(declare-fun res!2846092 () Bool)

(assert (=> d!2173267 (=> (not res!2846092) (not e!4194729))))

(declare-fun lt!2481197 () List!67045)

(declare-fun noDuplicate!2487 (List!67045) Bool)

(assert (=> d!2173267 (= res!2846092 (noDuplicate!2487 lt!2481197))))

(declare-fun choose!51999 ((Set Context!12324)) List!67045)

(assert (=> d!2173267 (= lt!2481197 (choose!51999 lt!2481118))))

(assert (=> d!2173267 (= (toList!10526 lt!2481118) lt!2481197)))

(declare-fun b!6979497 () Bool)

(assert (=> b!6979497 (= e!4194729 (= (content!13189 lt!2481197) lt!2481118))))

(assert (= (and d!2173267 res!2846092) b!6979497))

(declare-fun m!7665582 () Bool)

(assert (=> d!2173267 m!7665582))

(declare-fun m!7665584 () Bool)

(assert (=> d!2173267 m!7665584))

(declare-fun m!7665586 () Bool)

(assert (=> b!6979497 m!7665586))

(assert (=> b!6979395 d!2173267))

(assert (=> b!6979405 d!2173251))

(declare-fun d!2173269 () Bool)

(declare-fun nullableFct!2600 (Regex!17166) Bool)

(assert (=> d!2173269 (= (nullable!6926 (h!73367 (exprs!6662 lt!2481114))) (nullableFct!2600 (h!73367 (exprs!6662 lt!2481114))))))

(declare-fun bs!1860558 () Bool)

(assert (= bs!1860558 d!2173269))

(declare-fun m!7665588 () Bool)

(assert (=> bs!1860558 m!7665588))

(assert (=> b!6979398 d!2173269))

(declare-fun d!2173271 () Bool)

(assert (=> d!2173271 (= (tail!13135 (exprs!6662 lt!2481114)) (t!380786 (exprs!6662 lt!2481114)))))

(assert (=> b!6979398 d!2173271))

(declare-fun d!2173273 () Bool)

(declare-fun c!1293720 () Bool)

(assert (=> d!2173273 (= c!1293720 (isEmpty!39061 s!7408))))

(declare-fun e!4194730 () Bool)

(assert (=> d!2173273 (= (matchZipper!2706 lt!2481118 s!7408) e!4194730)))

(declare-fun b!6979498 () Bool)

(assert (=> b!6979498 (= e!4194730 (nullableZipper!2396 lt!2481118))))

(declare-fun b!6979499 () Bool)

(assert (=> b!6979499 (= e!4194730 (matchZipper!2706 (derivationStepZipper!2646 lt!2481118 (head!14066 s!7408)) (tail!13137 s!7408)))))

(assert (= (and d!2173273 c!1293720) b!6979498))

(assert (= (and d!2173273 (not c!1293720)) b!6979499))

(assert (=> d!2173273 m!7665562))

(declare-fun m!7665598 () Bool)

(assert (=> b!6979498 m!7665598))

(assert (=> b!6979499 m!7665566))

(assert (=> b!6979499 m!7665566))

(declare-fun m!7665600 () Bool)

(assert (=> b!6979499 m!7665600))

(assert (=> b!6979499 m!7665570))

(assert (=> b!6979499 m!7665600))

(assert (=> b!6979499 m!7665570))

(declare-fun m!7665602 () Bool)

(assert (=> b!6979499 m!7665602))

(assert (=> start!669458 d!2173273))

(declare-fun bs!1860560 () Bool)

(declare-fun d!2173277 () Bool)

(assert (= bs!1860560 (and d!2173277 b!6979399)))

(declare-fun lambda!398838 () Int)

(assert (=> bs!1860560 (= lambda!398838 lambda!398795)))

(assert (=> d!2173277 true))

(assert (=> d!2173277 (= (appendTo!287 z1!570 ct2!306) (map!15417 z1!570 lambda!398838))))

(declare-fun bs!1860561 () Bool)

(assert (= bs!1860561 d!2173277))

(declare-fun m!7665604 () Bool)

(assert (=> bs!1860561 m!7665604))

(assert (=> start!669458 d!2173277))

(declare-fun bs!1860562 () Bool)

(declare-fun d!2173279 () Bool)

(assert (= bs!1860562 (and d!2173279 b!6979399)))

(declare-fun lambda!398841 () Int)

(assert (=> bs!1860562 (= lambda!398841 lambda!398796)))

(assert (=> d!2173279 (= (inv!85775 ct2!306) (forall!16047 (exprs!6662 ct2!306) lambda!398841))))

(declare-fun bs!1860563 () Bool)

(assert (= bs!1860563 d!2173279))

(declare-fun m!7665606 () Bool)

(assert (=> bs!1860563 m!7665606))

(assert (=> start!669458 d!2173279))

(declare-fun d!2173281 () Bool)

(declare-fun res!2846100 () Bool)

(declare-fun e!4194738 () Bool)

(assert (=> d!2173281 (=> res!2846100 e!4194738)))

(assert (=> d!2173281 (= res!2846100 (is-Nil!66919 lt!2481126))))

(assert (=> d!2173281 (= (forall!16047 lt!2481126 lambda!398796) e!4194738)))

(declare-fun b!6979507 () Bool)

(declare-fun e!4194739 () Bool)

(assert (=> b!6979507 (= e!4194738 e!4194739)))

(declare-fun res!2846101 () Bool)

(assert (=> b!6979507 (=> (not res!2846101) (not e!4194739))))

(declare-fun dynLambda!26722 (Int Regex!17166) Bool)

(assert (=> b!6979507 (= res!2846101 (dynLambda!26722 lambda!398796 (h!73367 lt!2481126)))))

(declare-fun b!6979508 () Bool)

(assert (=> b!6979508 (= e!4194739 (forall!16047 (t!380786 lt!2481126) lambda!398796))))

(assert (= (and d!2173281 (not res!2846100)) b!6979507))

(assert (= (and b!6979507 res!2846101) b!6979508))

(declare-fun b_lambda!261425 () Bool)

(assert (=> (not b_lambda!261425) (not b!6979507)))

(declare-fun m!7665610 () Bool)

(assert (=> b!6979507 m!7665610))

(declare-fun m!7665612 () Bool)

(assert (=> b!6979508 m!7665612))

(assert (=> b!6979407 d!2173281))

(declare-fun d!2173283 () Bool)

(assert (=> d!2173283 (forall!16047 (++!15111 lt!2481126 (exprs!6662 ct2!306)) lambda!398796)))

(declare-fun lt!2481203 () Unit!160982)

(assert (=> d!2173283 (= lt!2481203 (choose!51996 lt!2481126 (exprs!6662 ct2!306) lambda!398796))))

(assert (=> d!2173283 (forall!16047 lt!2481126 lambda!398796)))

(assert (=> d!2173283 (= (lemmaConcatPreservesForall!502 lt!2481126 (exprs!6662 ct2!306) lambda!398796) lt!2481203)))

(declare-fun bs!1860564 () Bool)

(assert (= bs!1860564 d!2173283))

(declare-fun m!7665620 () Bool)

(assert (=> bs!1860564 m!7665620))

(assert (=> bs!1860564 m!7665620))

(declare-fun m!7665622 () Bool)

(assert (=> bs!1860564 m!7665622))

(declare-fun m!7665624 () Bool)

(assert (=> bs!1860564 m!7665624))

(assert (=> bs!1860564 m!7665428))

(assert (=> b!6979407 d!2173283))

(declare-fun d!2173287 () Bool)

(declare-fun choose!52000 ((Set Context!12324) Int) (Set Context!12324))

(assert (=> d!2173287 (= (flatMap!2152 lt!2481115 lambda!398797) (choose!52000 lt!2481115 lambda!398797))))

(declare-fun bs!1860565 () Bool)

(assert (= bs!1860565 d!2173287))

(declare-fun m!7665626 () Bool)

(assert (=> bs!1860565 m!7665626))

(assert (=> b!6979406 d!2173287))

(declare-fun d!2173289 () Bool)

(declare-fun dynLambda!26723 (Int Context!12324) (Set Context!12324))

(assert (=> d!2173289 (= (flatMap!2152 lt!2481115 lambda!398797) (dynLambda!26723 lambda!398797 lt!2481117))))

(declare-fun lt!2481206 () Unit!160982)

(declare-fun choose!52001 ((Set Context!12324) Context!12324 Int) Unit!160982)

(assert (=> d!2173289 (= lt!2481206 (choose!52001 lt!2481115 lt!2481117 lambda!398797))))

(assert (=> d!2173289 (= lt!2481115 (set.insert lt!2481117 (as set.empty (Set Context!12324))))))

(assert (=> d!2173289 (= (lemmaFlatMapOnSingletonSet!1667 lt!2481115 lt!2481117 lambda!398797) lt!2481206)))

(declare-fun b_lambda!261427 () Bool)

(assert (=> (not b_lambda!261427) (not d!2173289)))

(declare-fun bs!1860566 () Bool)

(assert (= bs!1860566 d!2173289))

(assert (=> bs!1860566 m!7665410))

(declare-fun m!7665628 () Bool)

(assert (=> bs!1860566 m!7665628))

(declare-fun m!7665630 () Bool)

(assert (=> bs!1860566 m!7665630))

(assert (=> bs!1860566 m!7665404))

(assert (=> b!6979406 d!2173289))

(declare-fun d!2173291 () Bool)

(declare-fun c!1293726 () Bool)

(declare-fun e!4194746 () Bool)

(assert (=> d!2173291 (= c!1293726 e!4194746)))

(declare-fun res!2846104 () Bool)

(assert (=> d!2173291 (=> (not res!2846104) (not e!4194746))))

(assert (=> d!2173291 (= res!2846104 (is-Cons!66919 (exprs!6662 lt!2481117)))))

(declare-fun e!4194747 () (Set Context!12324))

(assert (=> d!2173291 (= (derivationStepZipperUp!1816 lt!2481117 (h!73368 s!7408)) e!4194747)))

(declare-fun b!6979521 () Bool)

(declare-fun e!4194748 () (Set Context!12324))

(declare-fun call!633323 () (Set Context!12324))

(assert (=> b!6979521 (= e!4194748 call!633323)))

(declare-fun bm!633318 () Bool)

(declare-fun derivationStepZipperDown!1885 (Regex!17166 Context!12324 C!34602) (Set Context!12324))

(assert (=> bm!633318 (= call!633323 (derivationStepZipperDown!1885 (h!73367 (exprs!6662 lt!2481117)) (Context!12325 (t!380786 (exprs!6662 lt!2481117))) (h!73368 s!7408)))))

(declare-fun b!6979522 () Bool)

(assert (=> b!6979522 (= e!4194748 (as set.empty (Set Context!12324)))))

(declare-fun b!6979523 () Bool)

(assert (=> b!6979523 (= e!4194746 (nullable!6926 (h!73367 (exprs!6662 lt!2481117))))))

(declare-fun b!6979524 () Bool)

(assert (=> b!6979524 (= e!4194747 e!4194748)))

(declare-fun c!1293727 () Bool)

(assert (=> b!6979524 (= c!1293727 (is-Cons!66919 (exprs!6662 lt!2481117)))))

(declare-fun b!6979525 () Bool)

(assert (=> b!6979525 (= e!4194747 (set.union call!633323 (derivationStepZipperUp!1816 (Context!12325 (t!380786 (exprs!6662 lt!2481117))) (h!73368 s!7408))))))

(assert (= (and d!2173291 res!2846104) b!6979523))

(assert (= (and d!2173291 c!1293726) b!6979525))

(assert (= (and d!2173291 (not c!1293726)) b!6979524))

(assert (= (and b!6979524 c!1293727) b!6979521))

(assert (= (and b!6979524 (not c!1293727)) b!6979522))

(assert (= (or b!6979525 b!6979521) bm!633318))

(declare-fun m!7665636 () Bool)

(assert (=> bm!633318 m!7665636))

(declare-fun m!7665638 () Bool)

(assert (=> b!6979523 m!7665638))

(declare-fun m!7665640 () Bool)

(assert (=> b!6979525 m!7665640))

(assert (=> b!6979406 d!2173291))

(declare-fun bs!1860571 () Bool)

(declare-fun d!2173297 () Bool)

(assert (= bs!1860571 (and d!2173297 b!6979406)))

(declare-fun lambda!398847 () Int)

(assert (=> bs!1860571 (= lambda!398847 lambda!398797)))

(assert (=> d!2173297 true))

(assert (=> d!2173297 (= (derivationStepZipper!2646 lt!2481115 (h!73368 s!7408)) (flatMap!2152 lt!2481115 lambda!398847))))

(declare-fun bs!1860572 () Bool)

(assert (= bs!1860572 d!2173297))

(declare-fun m!7665642 () Bool)

(assert (=> bs!1860572 m!7665642))

(assert (=> b!6979406 d!2173297))

(assert (=> b!6979406 d!2173251))

(declare-fun bs!1860573 () Bool)

(declare-fun d!2173299 () Bool)

(assert (= bs!1860573 (and d!2173299 b!6979399)))

(declare-fun lambda!398848 () Int)

(assert (=> bs!1860573 (= lambda!398848 lambda!398796)))

(declare-fun bs!1860574 () Bool)

(assert (= bs!1860574 (and d!2173299 d!2173279)))

(assert (=> bs!1860574 (= lambda!398848 lambda!398841)))

(assert (=> d!2173299 (= (inv!85775 setElem!47478) (forall!16047 (exprs!6662 setElem!47478) lambda!398848))))

(declare-fun bs!1860575 () Bool)

(assert (= bs!1860575 d!2173299))

(declare-fun m!7665644 () Bool)

(assert (=> bs!1860575 m!7665644))

(assert (=> setNonEmpty!47478 d!2173299))

(declare-fun b!6979532 () Bool)

(declare-fun e!4194751 () Bool)

(declare-fun tp!1927959 () Bool)

(declare-fun tp!1927960 () Bool)

(assert (=> b!6979532 (= e!4194751 (and tp!1927959 tp!1927960))))

(assert (=> b!6979400 (= tp!1927941 e!4194751)))

(assert (= (and b!6979400 (is-Cons!66919 (exprs!6662 setElem!47478))) b!6979532))

(declare-fun b!6979535 () Bool)

(declare-fun e!4194752 () Bool)

(declare-fun tp!1927961 () Bool)

(declare-fun tp!1927962 () Bool)

(assert (=> b!6979535 (= e!4194752 (and tp!1927961 tp!1927962))))

(assert (=> b!6979396 (= tp!1927942 e!4194752)))

(assert (= (and b!6979396 (is-Cons!66919 (exprs!6662 ct2!306))) b!6979535))

(declare-fun b!6979544 () Bool)

(declare-fun e!4194759 () Bool)

(declare-fun tp!1927965 () Bool)

(assert (=> b!6979544 (= e!4194759 (and tp_is_empty!43557 tp!1927965))))

(assert (=> b!6979401 (= tp!1927940 e!4194759)))

(assert (= (and b!6979401 (is-Cons!66920 (t!380787 s!7408))) b!6979544))

(declare-fun condSetEmpty!47484 () Bool)

(assert (=> setNonEmpty!47478 (= condSetEmpty!47484 (= setRest!47478 (as set.empty (Set Context!12324))))))

(declare-fun setRes!47484 () Bool)

(assert (=> setNonEmpty!47478 (= tp!1927939 setRes!47484)))

(declare-fun setIsEmpty!47484 () Bool)

(assert (=> setIsEmpty!47484 setRes!47484))

(declare-fun e!4194764 () Bool)

(declare-fun setNonEmpty!47484 () Bool)

(declare-fun tp!1927971 () Bool)

(declare-fun setElem!47484 () Context!12324)

(assert (=> setNonEmpty!47484 (= setRes!47484 (and tp!1927971 (inv!85775 setElem!47484) e!4194764))))

(declare-fun setRest!47484 () (Set Context!12324))

(assert (=> setNonEmpty!47484 (= setRest!47478 (set.union (set.insert setElem!47484 (as set.empty (Set Context!12324))) setRest!47484))))

(declare-fun b!6979553 () Bool)

(declare-fun tp!1927970 () Bool)

(assert (=> b!6979553 (= e!4194764 tp!1927970)))

(assert (= (and setNonEmpty!47478 condSetEmpty!47484) setIsEmpty!47484))

(assert (= (and setNonEmpty!47478 (not condSetEmpty!47484)) setNonEmpty!47484))

(assert (= setNonEmpty!47484 b!6979553))

(declare-fun m!7665646 () Bool)

(assert (=> setNonEmpty!47484 m!7665646))

(declare-fun b_lambda!261429 () Bool)

(assert (= b_lambda!261419 (or b!6979399 b_lambda!261429)))

(declare-fun bs!1860576 () Bool)

(declare-fun d!2173301 () Bool)

(assert (= bs!1860576 (and d!2173301 b!6979399)))

(declare-fun lt!2481207 () Unit!160982)

(assert (=> bs!1860576 (= lt!2481207 (lemmaConcatPreservesForall!502 (exprs!6662 lt!2481182) (exprs!6662 ct2!306) lambda!398796))))

(assert (=> bs!1860576 (= (dynLambda!26719 lambda!398795 lt!2481182) (Context!12325 (++!15111 (exprs!6662 lt!2481182) (exprs!6662 ct2!306))))))

(declare-fun m!7665648 () Bool)

(assert (=> bs!1860576 m!7665648))

(declare-fun m!7665650 () Bool)

(assert (=> bs!1860576 m!7665650))

(assert (=> d!2173253 d!2173301))

(declare-fun b_lambda!261431 () Bool)

(assert (= b_lambda!261425 (or b!6979399 b_lambda!261431)))

(declare-fun bs!1860577 () Bool)

(declare-fun d!2173303 () Bool)

(assert (= bs!1860577 (and d!2173303 b!6979399)))

(declare-fun validRegex!8832 (Regex!17166) Bool)

(assert (=> bs!1860577 (= (dynLambda!26722 lambda!398796 (h!73367 lt!2481126)) (validRegex!8832 (h!73367 lt!2481126)))))

(declare-fun m!7665652 () Bool)

(assert (=> bs!1860577 m!7665652))

(assert (=> b!6979507 d!2173303))

(declare-fun b_lambda!261433 () Bool)

(assert (= b_lambda!261427 (or b!6979406 b_lambda!261433)))

(declare-fun bs!1860578 () Bool)

(declare-fun d!2173305 () Bool)

(assert (= bs!1860578 (and d!2173305 b!6979406)))

(assert (=> bs!1860578 (= (dynLambda!26723 lambda!398797 lt!2481117) (derivationStepZipperUp!1816 lt!2481117 (h!73368 s!7408)))))

(assert (=> bs!1860578 m!7665408))

(assert (=> d!2173289 d!2173305))

(declare-fun b_lambda!261435 () Bool)

(assert (= b_lambda!261421 (or b!6979395 b_lambda!261435)))

(declare-fun bs!1860579 () Bool)

(declare-fun d!2173307 () Bool)

(assert (= bs!1860579 (and d!2173307 b!6979395)))

(assert (=> bs!1860579 (= (dynLambda!26720 lambda!398794 lt!2481185) (matchZipper!2706 (set.insert lt!2481185 (as set.empty (Set Context!12324))) s!7408))))

(declare-fun m!7665654 () Bool)

(assert (=> bs!1860579 m!7665654))

(assert (=> bs!1860579 m!7665654))

(declare-fun m!7665656 () Bool)

(assert (=> bs!1860579 m!7665656))

(assert (=> d!2173255 d!2173307))

(push 1)

(assert (not bs!1860577))

(assert (not b!6979497))

(assert (not bs!1860578))

(assert (not b!6979532))

(assert (not d!2173277))

(assert (not d!2173273))

(assert (not b!6979493))

(assert (not d!2173251))

(assert (not d!2173279))

(assert (not b_lambda!261429))

(assert (not b!6979498))

(assert (not d!2173255))

(assert (not d!2173247))

(assert (not d!2173297))

(assert (not b!6979525))

(assert tp_is_empty!43557)

(assert (not b_lambda!261433))

(assert (not d!2173265))

(assert (not bs!1860576))

(assert (not b!6979494))

(assert (not b!6979535))

(assert (not b_lambda!261435))

(assert (not b!6979499))

(assert (not bm!633318))

(assert (not d!2173269))

(assert (not b!6979468))

(assert (not d!2173263))

(assert (not setNonEmpty!47484))

(assert (not d!2173253))

(assert (not b!6979544))

(assert (not b_lambda!261431))

(assert (not bs!1860579))

(assert (not d!2173289))

(assert (not b!6979508))

(assert (not b!6979553))

(assert (not d!2173267))

(assert (not b!6979523))

(assert (not d!2173287))

(assert (not b!6979469))

(assert (not d!2173259))

(assert (not d!2173283))

(assert (not d!2173299))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

