; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!670582 () Bool)

(assert start!670582)

(declare-fun b!6984295 () Bool)

(assert (=> b!6984295 true))

(declare-fun b!6984288 () Bool)

(assert (=> b!6984288 true))

(declare-fun b!6984289 () Bool)

(assert (=> b!6984289 true))

(declare-fun b!6984283 () Bool)

(declare-fun e!4197763 () Bool)

(declare-fun e!4197758 () Bool)

(assert (=> b!6984283 (= e!4197763 e!4197758)))

(declare-fun res!2848024 () Bool)

(assert (=> b!6984283 (=> res!2848024 e!4197758)))

(declare-datatypes ((C!34646 0))(
  ( (C!34647 (val!27025 Int)) )
))
(declare-datatypes ((Regex!17188 0))(
  ( (ElementMatch!17188 (c!1295002 C!34646)) (Concat!26033 (regOne!34888 Regex!17188) (regTwo!34888 Regex!17188)) (EmptyExpr!17188) (Star!17188 (reg!17517 Regex!17188)) (EmptyLang!17188) (Union!17188 (regOne!34889 Regex!17188) (regTwo!34889 Regex!17188)) )
))
(declare-datatypes ((List!67109 0))(
  ( (Nil!66985) (Cons!66985 (h!73433 Regex!17188) (t!380856 List!67109)) )
))
(declare-datatypes ((Context!12368 0))(
  ( (Context!12369 (exprs!6684 List!67109)) )
))
(declare-fun lt!2483133 () (Set Context!12368))

(declare-fun lt!2483127 () (Set Context!12368))

(assert (=> b!6984283 (= res!2848024 (not (= lt!2483133 lt!2483127)))))

(declare-fun lt!2483123 () (Set Context!12368))

(declare-fun lt!2483139 () (Set Context!12368))

(assert (=> b!6984283 (= lt!2483127 (set.union lt!2483123 lt!2483139))))

(declare-fun lt!2483120 () Context!12368)

(declare-datatypes ((List!67110 0))(
  ( (Nil!66986) (Cons!66986 (h!73434 C!34646) (t!380857 List!67110)) )
))
(declare-fun s!7408 () List!67110)

(declare-fun derivationStepZipperUp!1838 (Context!12368 C!34646) (Set Context!12368))

(assert (=> b!6984283 (= lt!2483139 (derivationStepZipperUp!1838 lt!2483120 (h!73434 s!7408)))))

(declare-fun lt!2483125 () Context!12368)

(declare-fun derivationStepZipperDown!1906 (Regex!17188 Context!12368 C!34646) (Set Context!12368))

(assert (=> b!6984283 (= lt!2483123 (derivationStepZipperDown!1906 (h!73433 (exprs!6684 lt!2483125)) lt!2483120 (h!73434 s!7408)))))

(declare-fun lt!2483131 () List!67109)

(declare-fun ct2!306 () Context!12368)

(declare-fun ++!15133 (List!67109 List!67109) List!67109)

(assert (=> b!6984283 (= lt!2483120 (Context!12369 (++!15133 lt!2483131 (exprs!6684 ct2!306))))))

(declare-datatypes ((Unit!161031 0))(
  ( (Unit!161032) )
))
(declare-fun lt!2483121 () Unit!161031)

(declare-fun lambda!399862 () Int)

(declare-fun lemmaConcatPreservesForall!524 (List!67109 List!67109 Int) Unit!161031)

(assert (=> b!6984283 (= lt!2483121 (lemmaConcatPreservesForall!524 lt!2483131 (exprs!6684 ct2!306) lambda!399862))))

(declare-fun lt!2483132 () Unit!161031)

(assert (=> b!6984283 (= lt!2483132 (lemmaConcatPreservesForall!524 lt!2483131 (exprs!6684 ct2!306) lambda!399862))))

(declare-fun b!6984284 () Bool)

(declare-fun res!2848030 () Bool)

(declare-fun e!4197766 () Bool)

(assert (=> b!6984284 (=> res!2848030 e!4197766)))

(declare-fun lt!2483129 () Context!12368)

(declare-fun lt!2483130 () (Set Context!12368))

(assert (=> b!6984284 (= res!2848030 (not (set.member lt!2483129 lt!2483130)))))

(declare-fun b!6984285 () Bool)

(declare-fun res!2848028 () Bool)

(declare-fun e!4197759 () Bool)

(assert (=> b!6984285 (=> res!2848028 e!4197759)))

(assert (=> b!6984285 (= res!2848028 (not (is-Cons!66985 (exprs!6684 lt!2483125))))))

(declare-fun b!6984286 () Bool)

(declare-fun e!4197760 () Bool)

(declare-fun e!4197764 () Bool)

(assert (=> b!6984286 (= e!4197760 e!4197764)))

(declare-fun res!2848026 () Bool)

(assert (=> b!6984286 (=> res!2848026 e!4197764)))

(declare-fun lt!2483134 () (Set Context!12368))

(declare-fun lt!2483122 () (Set Context!12368))

(assert (=> b!6984286 (= res!2848026 (not (= lt!2483134 lt!2483122)))))

(declare-fun lt!2483119 () Context!12368)

(assert (=> b!6984286 (= lt!2483134 (set.insert lt!2483119 (as set.empty (Set Context!12368))))))

(declare-fun lt!2483136 () Unit!161031)

(assert (=> b!6984286 (= lt!2483136 (lemmaConcatPreservesForall!524 (exprs!6684 lt!2483125) (exprs!6684 ct2!306) lambda!399862))))

(declare-fun b!6984287 () Bool)

(declare-fun e!4197757 () Bool)

(declare-fun tp!1928844 () Bool)

(assert (=> b!6984287 (= e!4197757 tp!1928844)))

(assert (=> b!6984288 (= e!4197766 e!4197760)))

(declare-fun res!2848033 () Bool)

(assert (=> b!6984288 (=> res!2848033 e!4197760)))

(declare-fun z1!570 () (Set Context!12368))

(assert (=> b!6984288 (= res!2848033 (or (not (= lt!2483119 lt!2483129)) (not (set.member lt!2483125 z1!570))))))

(assert (=> b!6984288 (= lt!2483119 (Context!12369 (++!15133 (exprs!6684 lt!2483125) (exprs!6684 ct2!306))))))

(declare-fun lt!2483126 () Unit!161031)

(assert (=> b!6984288 (= lt!2483126 (lemmaConcatPreservesForall!524 (exprs!6684 lt!2483125) (exprs!6684 ct2!306) lambda!399862))))

(declare-fun lambda!399861 () Int)

(declare-fun mapPost2!43 ((Set Context!12368) Int Context!12368) Context!12368)

(assert (=> b!6984288 (= lt!2483125 (mapPost2!43 z1!570 lambda!399861 lt!2483129))))

(assert (=> b!6984289 (= e!4197764 e!4197759)))

(declare-fun res!2848031 () Bool)

(assert (=> b!6984289 (=> res!2848031 e!4197759)))

(declare-fun derivationStepZipper!2668 ((Set Context!12368) C!34646) (Set Context!12368))

(assert (=> b!6984289 (= res!2848031 (not (= (derivationStepZipper!2668 lt!2483134 (h!73434 s!7408)) lt!2483133)))))

(declare-fun lambda!399863 () Int)

(declare-fun flatMap!2174 ((Set Context!12368) Int) (Set Context!12368))

(assert (=> b!6984289 (= (flatMap!2174 lt!2483134 lambda!399863) (derivationStepZipperUp!1838 lt!2483119 (h!73434 s!7408)))))

(declare-fun lt!2483135 () Unit!161031)

(declare-fun lemmaFlatMapOnSingletonSet!1689 ((Set Context!12368) Context!12368 Int) Unit!161031)

(assert (=> b!6984289 (= lt!2483135 (lemmaFlatMapOnSingletonSet!1689 lt!2483134 lt!2483119 lambda!399863))))

(assert (=> b!6984289 (= lt!2483133 (derivationStepZipperUp!1838 lt!2483119 (h!73434 s!7408)))))

(declare-fun lt!2483117 () Unit!161031)

(assert (=> b!6984289 (= lt!2483117 (lemmaConcatPreservesForall!524 (exprs!6684 lt!2483125) (exprs!6684 ct2!306) lambda!399862))))

(declare-fun b!6984290 () Bool)

(assert (=> b!6984290 (= e!4197759 e!4197763)))

(declare-fun res!2848023 () Bool)

(assert (=> b!6984290 (=> res!2848023 e!4197763)))

(declare-fun nullable!6948 (Regex!17188) Bool)

(assert (=> b!6984290 (= res!2848023 (not (nullable!6948 (h!73433 (exprs!6684 lt!2483125)))))))

(declare-fun tail!13176 (List!67109) List!67109)

(assert (=> b!6984290 (= lt!2483131 (tail!13176 (exprs!6684 lt!2483125)))))

(declare-fun e!4197755 () Bool)

(declare-fun setElem!47634 () Context!12368)

(declare-fun setNonEmpty!47634 () Bool)

(declare-fun tp!1928842 () Bool)

(declare-fun setRes!47634 () Bool)

(declare-fun inv!85830 (Context!12368) Bool)

(assert (=> setNonEmpty!47634 (= setRes!47634 (and tp!1928842 (inv!85830 setElem!47634) e!4197755))))

(declare-fun setRest!47634 () (Set Context!12368))

(assert (=> setNonEmpty!47634 (= z1!570 (set.union (set.insert setElem!47634 (as set.empty (Set Context!12368))) setRest!47634))))

(declare-fun setIsEmpty!47634 () Bool)

(assert (=> setIsEmpty!47634 setRes!47634))

(declare-fun b!6984291 () Bool)

(declare-fun e!4197761 () Bool)

(assert (=> b!6984291 (= e!4197758 e!4197761)))

(declare-fun res!2848029 () Bool)

(assert (=> b!6984291 (=> res!2848029 e!4197761)))

(declare-fun lt!2483138 () Bool)

(declare-fun matchZipper!2728 ((Set Context!12368) List!67110) Bool)

(assert (=> b!6984291 (= res!2848029 (= (matchZipper!2728 lt!2483133 (t!380857 s!7408)) lt!2483138))))

(declare-fun lt!2483141 () Unit!161031)

(assert (=> b!6984291 (= lt!2483141 (lemmaConcatPreservesForall!524 lt!2483131 (exprs!6684 ct2!306) lambda!399862))))

(declare-fun e!4197762 () Bool)

(assert (=> b!6984291 (= (matchZipper!2728 lt!2483127 (t!380857 s!7408)) e!4197762)))

(declare-fun res!2848027 () Bool)

(assert (=> b!6984291 (=> res!2848027 e!4197762)))

(assert (=> b!6984291 (= res!2848027 lt!2483138)))

(assert (=> b!6984291 (= lt!2483138 (matchZipper!2728 lt!2483123 (t!380857 s!7408)))))

(declare-fun lt!2483118 () Unit!161031)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1361 ((Set Context!12368) (Set Context!12368) List!67110) Unit!161031)

(assert (=> b!6984291 (= lt!2483118 (lemmaZipperConcatMatchesSameAsBothZippers!1361 lt!2483123 lt!2483139 (t!380857 s!7408)))))

(declare-fun lt!2483128 () Unit!161031)

(assert (=> b!6984291 (= lt!2483128 (lemmaConcatPreservesForall!524 lt!2483131 (exprs!6684 ct2!306) lambda!399862))))

(declare-fun lt!2483124 () Unit!161031)

(assert (=> b!6984291 (= lt!2483124 (lemmaConcatPreservesForall!524 lt!2483131 (exprs!6684 ct2!306) lambda!399862))))

(declare-fun b!6984292 () Bool)

(declare-fun tp!1928841 () Bool)

(assert (=> b!6984292 (= e!4197755 tp!1928841)))

(declare-fun b!6984293 () Bool)

(declare-fun e!4197765 () Bool)

(declare-fun tp_is_empty!43601 () Bool)

(declare-fun tp!1928843 () Bool)

(assert (=> b!6984293 (= e!4197765 (and tp_is_empty!43601 tp!1928843))))

(declare-fun b!6984294 () Bool)

(declare-fun res!2848022 () Bool)

(declare-fun e!4197756 () Bool)

(assert (=> b!6984294 (=> (not res!2848022) (not e!4197756))))

(assert (=> b!6984294 (= res!2848022 (is-Cons!66986 s!7408))))

(declare-fun res!2848032 () Bool)

(assert (=> start!670582 (=> (not res!2848032) (not e!4197756))))

(assert (=> start!670582 (= res!2848032 (matchZipper!2728 lt!2483130 s!7408))))

(declare-fun appendTo!309 ((Set Context!12368) Context!12368) (Set Context!12368))

(assert (=> start!670582 (= lt!2483130 (appendTo!309 z1!570 ct2!306))))

(assert (=> start!670582 e!4197756))

(declare-fun condSetEmpty!47634 () Bool)

(assert (=> start!670582 (= condSetEmpty!47634 (= z1!570 (as set.empty (Set Context!12368))))))

(assert (=> start!670582 setRes!47634))

(assert (=> start!670582 (and (inv!85830 ct2!306) e!4197757)))

(assert (=> start!670582 e!4197765))

(assert (=> b!6984295 (= e!4197756 (not e!4197766))))

(declare-fun res!2848025 () Bool)

(assert (=> b!6984295 (=> res!2848025 e!4197766)))

(assert (=> b!6984295 (= res!2848025 (not (matchZipper!2728 lt!2483122 s!7408)))))

(assert (=> b!6984295 (= lt!2483122 (set.insert lt!2483129 (as set.empty (Set Context!12368))))))

(declare-fun lambda!399860 () Int)

(declare-fun getWitness!1069 ((Set Context!12368) Int) Context!12368)

(assert (=> b!6984295 (= lt!2483129 (getWitness!1069 lt!2483130 lambda!399860))))

(declare-datatypes ((List!67111 0))(
  ( (Nil!66987) (Cons!66987 (h!73435 Context!12368) (t!380858 List!67111)) )
))
(declare-fun lt!2483140 () List!67111)

(declare-fun exists!2958 (List!67111 Int) Bool)

(assert (=> b!6984295 (exists!2958 lt!2483140 lambda!399860)))

(declare-fun lt!2483137 () Unit!161031)

(declare-fun lemmaZipperMatchesExistsMatchingContext!157 (List!67111 List!67110) Unit!161031)

(assert (=> b!6984295 (= lt!2483137 (lemmaZipperMatchesExistsMatchingContext!157 lt!2483140 s!7408))))

(declare-fun toList!10548 ((Set Context!12368)) List!67111)

(assert (=> b!6984295 (= lt!2483140 (toList!10548 lt!2483130))))

(declare-fun b!6984296 () Bool)

(assert (=> b!6984296 (= e!4197762 (matchZipper!2728 lt!2483139 (t!380857 s!7408)))))

(declare-fun b!6984297 () Bool)

(declare-fun res!2848021 () Bool)

(assert (=> b!6984297 (=> res!2848021 e!4197759)))

(declare-fun isEmpty!39100 (List!67109) Bool)

(assert (=> b!6984297 (= res!2848021 (isEmpty!39100 (exprs!6684 lt!2483125)))))

(declare-fun b!6984298 () Bool)

(declare-fun forall!16088 (List!67109 Int) Bool)

(assert (=> b!6984298 (= e!4197761 (forall!16088 lt!2483131 lambda!399862))))

(assert (= (and start!670582 res!2848032) b!6984294))

(assert (= (and b!6984294 res!2848022) b!6984295))

(assert (= (and b!6984295 (not res!2848025)) b!6984284))

(assert (= (and b!6984284 (not res!2848030)) b!6984288))

(assert (= (and b!6984288 (not res!2848033)) b!6984286))

(assert (= (and b!6984286 (not res!2848026)) b!6984289))

(assert (= (and b!6984289 (not res!2848031)) b!6984285))

(assert (= (and b!6984285 (not res!2848028)) b!6984297))

(assert (= (and b!6984297 (not res!2848021)) b!6984290))

(assert (= (and b!6984290 (not res!2848023)) b!6984283))

(assert (= (and b!6984283 (not res!2848024)) b!6984291))

(assert (= (and b!6984291 (not res!2848027)) b!6984296))

(assert (= (and b!6984291 (not res!2848029)) b!6984298))

(assert (= (and start!670582 condSetEmpty!47634) setIsEmpty!47634))

(assert (= (and start!670582 (not condSetEmpty!47634)) setNonEmpty!47634))

(assert (= setNonEmpty!47634 b!6984292))

(assert (= start!670582 b!6984287))

(assert (= (and start!670582 (is-Cons!66986 s!7408)) b!6984293))

(declare-fun m!7671438 () Bool)

(assert (=> b!6984289 m!7671438))

(declare-fun m!7671440 () Bool)

(assert (=> b!6984289 m!7671440))

(declare-fun m!7671442 () Bool)

(assert (=> b!6984289 m!7671442))

(declare-fun m!7671444 () Bool)

(assert (=> b!6984289 m!7671444))

(declare-fun m!7671446 () Bool)

(assert (=> b!6984289 m!7671446))

(declare-fun m!7671448 () Bool)

(assert (=> b!6984290 m!7671448))

(declare-fun m!7671450 () Bool)

(assert (=> b!6984290 m!7671450))

(declare-fun m!7671452 () Bool)

(assert (=> b!6984284 m!7671452))

(declare-fun m!7671454 () Bool)

(assert (=> b!6984288 m!7671454))

(declare-fun m!7671456 () Bool)

(assert (=> b!6984288 m!7671456))

(assert (=> b!6984288 m!7671442))

(declare-fun m!7671458 () Bool)

(assert (=> b!6984288 m!7671458))

(declare-fun m!7671460 () Bool)

(assert (=> b!6984286 m!7671460))

(assert (=> b!6984286 m!7671442))

(declare-fun m!7671462 () Bool)

(assert (=> b!6984295 m!7671462))

(declare-fun m!7671464 () Bool)

(assert (=> b!6984295 m!7671464))

(declare-fun m!7671466 () Bool)

(assert (=> b!6984295 m!7671466))

(declare-fun m!7671468 () Bool)

(assert (=> b!6984295 m!7671468))

(declare-fun m!7671470 () Bool)

(assert (=> b!6984295 m!7671470))

(declare-fun m!7671472 () Bool)

(assert (=> b!6984295 m!7671472))

(declare-fun m!7671474 () Bool)

(assert (=> b!6984297 m!7671474))

(declare-fun m!7671476 () Bool)

(assert (=> b!6984296 m!7671476))

(declare-fun m!7671478 () Bool)

(assert (=> b!6984291 m!7671478))

(assert (=> b!6984291 m!7671478))

(declare-fun m!7671480 () Bool)

(assert (=> b!6984291 m!7671480))

(declare-fun m!7671482 () Bool)

(assert (=> b!6984291 m!7671482))

(assert (=> b!6984291 m!7671478))

(declare-fun m!7671484 () Bool)

(assert (=> b!6984291 m!7671484))

(declare-fun m!7671486 () Bool)

(assert (=> b!6984291 m!7671486))

(declare-fun m!7671488 () Bool)

(assert (=> b!6984298 m!7671488))

(declare-fun m!7671490 () Bool)

(assert (=> setNonEmpty!47634 m!7671490))

(assert (=> b!6984283 m!7671478))

(assert (=> b!6984283 m!7671478))

(declare-fun m!7671492 () Bool)

(assert (=> b!6984283 m!7671492))

(declare-fun m!7671494 () Bool)

(assert (=> b!6984283 m!7671494))

(declare-fun m!7671496 () Bool)

(assert (=> b!6984283 m!7671496))

(declare-fun m!7671498 () Bool)

(assert (=> start!670582 m!7671498))

(declare-fun m!7671500 () Bool)

(assert (=> start!670582 m!7671500))

(declare-fun m!7671502 () Bool)

(assert (=> start!670582 m!7671502))

(push 1)

(assert (not b!6984292))

(assert (not b!6984287))

(assert (not b!6984288))

(assert (not b!6984283))

(assert (not b!6984297))

(assert (not b!6984290))

(assert (not b!6984298))

(assert (not b!6984291))

(assert (not b!6984296))

(assert (not b!6984295))

(assert (not b!6984289))

(assert (not b!6984293))

(assert (not start!670582))

(assert tp_is_empty!43601)

(assert (not setNonEmpty!47634))

(assert (not b!6984286))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2175394 () Bool)

(declare-fun nullableFct!2618 (Regex!17188) Bool)

(assert (=> d!2175394 (= (nullable!6948 (h!73433 (exprs!6684 lt!2483125))) (nullableFct!2618 (h!73433 (exprs!6684 lt!2483125))))))

(declare-fun bs!1861479 () Bool)

(assert (= bs!1861479 d!2175394))

(declare-fun m!7671570 () Bool)

(assert (=> bs!1861479 m!7671570))

(assert (=> b!6984290 d!2175394))

(declare-fun d!2175396 () Bool)

(assert (=> d!2175396 (= (tail!13176 (exprs!6684 lt!2483125)) (t!380856 (exprs!6684 lt!2483125)))))

(assert (=> b!6984290 d!2175396))

(declare-fun d!2175398 () Bool)

(declare-fun dynLambda!26811 (Int Context!12368) (Set Context!12368))

(assert (=> d!2175398 (= (flatMap!2174 lt!2483134 lambda!399863) (dynLambda!26811 lambda!399863 lt!2483119))))

(declare-fun lt!2483221 () Unit!161031)

(declare-fun choose!52123 ((Set Context!12368) Context!12368 Int) Unit!161031)

(assert (=> d!2175398 (= lt!2483221 (choose!52123 lt!2483134 lt!2483119 lambda!399863))))

(assert (=> d!2175398 (= lt!2483134 (set.insert lt!2483119 (as set.empty (Set Context!12368))))))

(assert (=> d!2175398 (= (lemmaFlatMapOnSingletonSet!1689 lt!2483134 lt!2483119 lambda!399863) lt!2483221)))

(declare-fun b_lambda!262055 () Bool)

(assert (=> (not b_lambda!262055) (not d!2175398)))

(declare-fun bs!1861480 () Bool)

(assert (= bs!1861480 d!2175398))

(assert (=> bs!1861480 m!7671438))

(declare-fun m!7671572 () Bool)

(assert (=> bs!1861480 m!7671572))

(declare-fun m!7671574 () Bool)

(assert (=> bs!1861480 m!7671574))

(assert (=> bs!1861480 m!7671460))

(assert (=> b!6984289 d!2175398))

(declare-fun d!2175400 () Bool)

(assert (=> d!2175400 (forall!16088 (++!15133 (exprs!6684 lt!2483125) (exprs!6684 ct2!306)) lambda!399862)))

(declare-fun lt!2483224 () Unit!161031)

(declare-fun choose!52124 (List!67109 List!67109 Int) Unit!161031)

(assert (=> d!2175400 (= lt!2483224 (choose!52124 (exprs!6684 lt!2483125) (exprs!6684 ct2!306) lambda!399862))))

(assert (=> d!2175400 (forall!16088 (exprs!6684 lt!2483125) lambda!399862)))

(assert (=> d!2175400 (= (lemmaConcatPreservesForall!524 (exprs!6684 lt!2483125) (exprs!6684 ct2!306) lambda!399862) lt!2483224)))

(declare-fun bs!1861481 () Bool)

(assert (= bs!1861481 d!2175400))

(assert (=> bs!1861481 m!7671456))

(assert (=> bs!1861481 m!7671456))

(declare-fun m!7671576 () Bool)

(assert (=> bs!1861481 m!7671576))

(declare-fun m!7671578 () Bool)

(assert (=> bs!1861481 m!7671578))

(declare-fun m!7671580 () Bool)

(assert (=> bs!1861481 m!7671580))

(assert (=> b!6984289 d!2175400))

(declare-fun bs!1861482 () Bool)

(declare-fun d!2175402 () Bool)

(assert (= bs!1861482 (and d!2175402 b!6984289)))

(declare-fun lambda!399898 () Int)

(assert (=> bs!1861482 (= lambda!399898 lambda!399863)))

(assert (=> d!2175402 true))

(assert (=> d!2175402 (= (derivationStepZipper!2668 lt!2483134 (h!73434 s!7408)) (flatMap!2174 lt!2483134 lambda!399898))))

(declare-fun bs!1861483 () Bool)

(assert (= bs!1861483 d!2175402))

(declare-fun m!7671582 () Bool)

(assert (=> bs!1861483 m!7671582))

(assert (=> b!6984289 d!2175402))

(declare-fun b!6984371 () Bool)

(declare-fun e!4197810 () Bool)

(assert (=> b!6984371 (= e!4197810 (nullable!6948 (h!73433 (exprs!6684 lt!2483119))))))

(declare-fun b!6984372 () Bool)

(declare-fun e!4197811 () (Set Context!12368))

(assert (=> b!6984372 (= e!4197811 (as set.empty (Set Context!12368)))))

(declare-fun e!4197809 () (Set Context!12368))

(declare-fun b!6984373 () Bool)

(declare-fun call!633942 () (Set Context!12368))

(assert (=> b!6984373 (= e!4197809 (set.union call!633942 (derivationStepZipperUp!1838 (Context!12369 (t!380856 (exprs!6684 lt!2483119))) (h!73434 s!7408))))))

(declare-fun bm!633937 () Bool)

(assert (=> bm!633937 (= call!633942 (derivationStepZipperDown!1906 (h!73433 (exprs!6684 lt!2483119)) (Context!12369 (t!380856 (exprs!6684 lt!2483119))) (h!73434 s!7408)))))

(declare-fun b!6984374 () Bool)

(assert (=> b!6984374 (= e!4197809 e!4197811)))

(declare-fun c!1295018 () Bool)

(assert (=> b!6984374 (= c!1295018 (is-Cons!66985 (exprs!6684 lt!2483119)))))

(declare-fun b!6984375 () Bool)

(assert (=> b!6984375 (= e!4197811 call!633942)))

(declare-fun d!2175404 () Bool)

(declare-fun c!1295019 () Bool)

(assert (=> d!2175404 (= c!1295019 e!4197810)))

(declare-fun res!2848077 () Bool)

(assert (=> d!2175404 (=> (not res!2848077) (not e!4197810))))

(assert (=> d!2175404 (= res!2848077 (is-Cons!66985 (exprs!6684 lt!2483119)))))

(assert (=> d!2175404 (= (derivationStepZipperUp!1838 lt!2483119 (h!73434 s!7408)) e!4197809)))

(assert (= (and d!2175404 res!2848077) b!6984371))

(assert (= (and d!2175404 c!1295019) b!6984373))

(assert (= (and d!2175404 (not c!1295019)) b!6984374))

(assert (= (and b!6984374 c!1295018) b!6984375))

(assert (= (and b!6984374 (not c!1295018)) b!6984372))

(assert (= (or b!6984373 b!6984375) bm!633937))

(declare-fun m!7671584 () Bool)

(assert (=> b!6984371 m!7671584))

(declare-fun m!7671586 () Bool)

(assert (=> b!6984373 m!7671586))

(declare-fun m!7671588 () Bool)

(assert (=> bm!633937 m!7671588))

(assert (=> b!6984289 d!2175404))

(declare-fun d!2175406 () Bool)

(declare-fun choose!52125 ((Set Context!12368) Int) (Set Context!12368))

(assert (=> d!2175406 (= (flatMap!2174 lt!2483134 lambda!399863) (choose!52125 lt!2483134 lambda!399863))))

(declare-fun bs!1861484 () Bool)

(assert (= bs!1861484 d!2175406))

(declare-fun m!7671590 () Bool)

(assert (=> bs!1861484 m!7671590))

(assert (=> b!6984289 d!2175406))

(declare-fun d!2175408 () Bool)

(declare-fun res!2848082 () Bool)

(declare-fun e!4197816 () Bool)

(assert (=> d!2175408 (=> res!2848082 e!4197816)))

(assert (=> d!2175408 (= res!2848082 (is-Nil!66985 lt!2483131))))

(assert (=> d!2175408 (= (forall!16088 lt!2483131 lambda!399862) e!4197816)))

(declare-fun b!6984380 () Bool)

(declare-fun e!4197817 () Bool)

(assert (=> b!6984380 (= e!4197816 e!4197817)))

(declare-fun res!2848083 () Bool)

(assert (=> b!6984380 (=> (not res!2848083) (not e!4197817))))

(declare-fun dynLambda!26812 (Int Regex!17188) Bool)

(assert (=> b!6984380 (= res!2848083 (dynLambda!26812 lambda!399862 (h!73433 lt!2483131)))))

(declare-fun b!6984381 () Bool)

(assert (=> b!6984381 (= e!4197817 (forall!16088 (t!380856 lt!2483131) lambda!399862))))

(assert (= (and d!2175408 (not res!2848082)) b!6984380))

(assert (= (and b!6984380 res!2848083) b!6984381))

(declare-fun b_lambda!262057 () Bool)

(assert (=> (not b_lambda!262057) (not b!6984380)))

(declare-fun m!7671592 () Bool)

(assert (=> b!6984380 m!7671592))

(declare-fun m!7671594 () Bool)

(assert (=> b!6984381 m!7671594))

(assert (=> b!6984298 d!2175408))

(declare-fun bs!1861485 () Bool)

(declare-fun d!2175410 () Bool)

(assert (= bs!1861485 (and d!2175410 b!6984288)))

(declare-fun lambda!399901 () Int)

(assert (=> bs!1861485 (= lambda!399901 lambda!399862)))

(assert (=> d!2175410 (= (inv!85830 setElem!47634) (forall!16088 (exprs!6684 setElem!47634) lambda!399901))))

(declare-fun bs!1861486 () Bool)

(assert (= bs!1861486 d!2175410))

(declare-fun m!7671596 () Bool)

(assert (=> bs!1861486 m!7671596))

(assert (=> setNonEmpty!47634 d!2175410))

(declare-fun d!2175412 () Bool)

(declare-fun c!1295022 () Bool)

(declare-fun isEmpty!39102 (List!67110) Bool)

(assert (=> d!2175412 (= c!1295022 (isEmpty!39102 (t!380857 s!7408)))))

(declare-fun e!4197820 () Bool)

(assert (=> d!2175412 (= (matchZipper!2728 lt!2483139 (t!380857 s!7408)) e!4197820)))

(declare-fun b!6984386 () Bool)

(declare-fun nullableZipper!2415 ((Set Context!12368)) Bool)

(assert (=> b!6984386 (= e!4197820 (nullableZipper!2415 lt!2483139))))

(declare-fun b!6984387 () Bool)

(declare-fun head!14090 (List!67110) C!34646)

(declare-fun tail!13178 (List!67110) List!67110)

(assert (=> b!6984387 (= e!4197820 (matchZipper!2728 (derivationStepZipper!2668 lt!2483139 (head!14090 (t!380857 s!7408))) (tail!13178 (t!380857 s!7408))))))

(assert (= (and d!2175412 c!1295022) b!6984386))

(assert (= (and d!2175412 (not c!1295022)) b!6984387))

(declare-fun m!7671598 () Bool)

(assert (=> d!2175412 m!7671598))

(declare-fun m!7671600 () Bool)

(assert (=> b!6984386 m!7671600))

(declare-fun m!7671602 () Bool)

(assert (=> b!6984387 m!7671602))

(assert (=> b!6984387 m!7671602))

(declare-fun m!7671604 () Bool)

(assert (=> b!6984387 m!7671604))

(declare-fun m!7671606 () Bool)

(assert (=> b!6984387 m!7671606))

(assert (=> b!6984387 m!7671604))

(assert (=> b!6984387 m!7671606))

(declare-fun m!7671608 () Bool)

(assert (=> b!6984387 m!7671608))

(assert (=> b!6984296 d!2175412))

(declare-fun bs!1861487 () Bool)

(declare-fun d!2175414 () Bool)

(assert (= bs!1861487 (and d!2175414 b!6984295)))

(declare-fun lambda!399904 () Int)

(assert (=> bs!1861487 (= lambda!399904 lambda!399860)))

(assert (=> d!2175414 true))

(assert (=> d!2175414 (exists!2958 lt!2483140 lambda!399904)))

(declare-fun lt!2483227 () Unit!161031)

(declare-fun choose!52126 (List!67111 List!67110) Unit!161031)

(assert (=> d!2175414 (= lt!2483227 (choose!52126 lt!2483140 s!7408))))

(declare-fun content!13224 (List!67111) (Set Context!12368))

(assert (=> d!2175414 (matchZipper!2728 (content!13224 lt!2483140) s!7408)))

(assert (=> d!2175414 (= (lemmaZipperMatchesExistsMatchingContext!157 lt!2483140 s!7408) lt!2483227)))

(declare-fun bs!1861488 () Bool)

(assert (= bs!1861488 d!2175414))

(declare-fun m!7671610 () Bool)

(assert (=> bs!1861488 m!7671610))

(declare-fun m!7671612 () Bool)

(assert (=> bs!1861488 m!7671612))

(declare-fun m!7671614 () Bool)

(assert (=> bs!1861488 m!7671614))

(assert (=> bs!1861488 m!7671614))

(declare-fun m!7671616 () Bool)

(assert (=> bs!1861488 m!7671616))

(assert (=> b!6984295 d!2175414))

(declare-fun d!2175416 () Bool)

(declare-fun e!4197823 () Bool)

(assert (=> d!2175416 e!4197823))

(declare-fun res!2848086 () Bool)

(assert (=> d!2175416 (=> (not res!2848086) (not e!4197823))))

(declare-fun lt!2483230 () Context!12368)

(declare-fun dynLambda!26813 (Int Context!12368) Bool)

(assert (=> d!2175416 (= res!2848086 (dynLambda!26813 lambda!399860 lt!2483230))))

(declare-fun getWitness!1071 (List!67111 Int) Context!12368)

(assert (=> d!2175416 (= lt!2483230 (getWitness!1071 (toList!10548 lt!2483130) lambda!399860))))

(declare-fun exists!2960 ((Set Context!12368) Int) Bool)

(assert (=> d!2175416 (exists!2960 lt!2483130 lambda!399860)))

(assert (=> d!2175416 (= (getWitness!1069 lt!2483130 lambda!399860) lt!2483230)))

(declare-fun b!6984390 () Bool)

(assert (=> b!6984390 (= e!4197823 (set.member lt!2483230 lt!2483130))))

(assert (= (and d!2175416 res!2848086) b!6984390))

(declare-fun b_lambda!262059 () Bool)

(assert (=> (not b_lambda!262059) (not d!2175416)))

(declare-fun m!7671618 () Bool)

(assert (=> d!2175416 m!7671618))

(assert (=> d!2175416 m!7671472))

(assert (=> d!2175416 m!7671472))

(declare-fun m!7671620 () Bool)

(assert (=> d!2175416 m!7671620))

(declare-fun m!7671622 () Bool)

(assert (=> d!2175416 m!7671622))

(declare-fun m!7671624 () Bool)

(assert (=> b!6984390 m!7671624))

(assert (=> b!6984295 d!2175416))

(declare-fun bs!1861489 () Bool)

(declare-fun d!2175420 () Bool)

(assert (= bs!1861489 (and d!2175420 b!6984295)))

(declare-fun lambda!399907 () Int)

(assert (=> bs!1861489 (not (= lambda!399907 lambda!399860))))

(declare-fun bs!1861490 () Bool)

(assert (= bs!1861490 (and d!2175420 d!2175414)))

(assert (=> bs!1861490 (not (= lambda!399907 lambda!399904))))

(assert (=> d!2175420 true))

(declare-fun order!27871 () Int)

(declare-fun dynLambda!26814 (Int Int) Int)

(assert (=> d!2175420 (< (dynLambda!26814 order!27871 lambda!399860) (dynLambda!26814 order!27871 lambda!399907))))

(declare-fun forall!16090 (List!67111 Int) Bool)

(assert (=> d!2175420 (= (exists!2958 lt!2483140 lambda!399860) (not (forall!16090 lt!2483140 lambda!399907)))))

(declare-fun bs!1861491 () Bool)

(assert (= bs!1861491 d!2175420))

(declare-fun m!7671626 () Bool)

(assert (=> bs!1861491 m!7671626))

(assert (=> b!6984295 d!2175420))

(declare-fun d!2175422 () Bool)

(declare-fun e!4197830 () Bool)

(assert (=> d!2175422 e!4197830))

(declare-fun res!2848093 () Bool)

(assert (=> d!2175422 (=> (not res!2848093) (not e!4197830))))

(declare-fun lt!2483233 () List!67111)

(declare-fun noDuplicate!2505 (List!67111) Bool)

(assert (=> d!2175422 (= res!2848093 (noDuplicate!2505 lt!2483233))))

(declare-fun choose!52127 ((Set Context!12368)) List!67111)

(assert (=> d!2175422 (= lt!2483233 (choose!52127 lt!2483130))))

(assert (=> d!2175422 (= (toList!10548 lt!2483130) lt!2483233)))

(declare-fun b!6984399 () Bool)

(assert (=> b!6984399 (= e!4197830 (= (content!13224 lt!2483233) lt!2483130))))

(assert (= (and d!2175422 res!2848093) b!6984399))

(declare-fun m!7671628 () Bool)

(assert (=> d!2175422 m!7671628))

(declare-fun m!7671630 () Bool)

(assert (=> d!2175422 m!7671630))

(declare-fun m!7671632 () Bool)

(assert (=> b!6984399 m!7671632))

(assert (=> b!6984295 d!2175422))

(declare-fun d!2175424 () Bool)

(declare-fun c!1295025 () Bool)

(assert (=> d!2175424 (= c!1295025 (isEmpty!39102 s!7408))))

(declare-fun e!4197833 () Bool)

(assert (=> d!2175424 (= (matchZipper!2728 lt!2483122 s!7408) e!4197833)))

(declare-fun b!6984402 () Bool)

(assert (=> b!6984402 (= e!4197833 (nullableZipper!2415 lt!2483122))))

(declare-fun b!6984403 () Bool)

(assert (=> b!6984403 (= e!4197833 (matchZipper!2728 (derivationStepZipper!2668 lt!2483122 (head!14090 s!7408)) (tail!13178 s!7408)))))

(assert (= (and d!2175424 c!1295025) b!6984402))

(assert (= (and d!2175424 (not c!1295025)) b!6984403))

(declare-fun m!7671634 () Bool)

(assert (=> d!2175424 m!7671634))

(declare-fun m!7671636 () Bool)

(assert (=> b!6984402 m!7671636))

(declare-fun m!7671638 () Bool)

(assert (=> b!6984403 m!7671638))

(assert (=> b!6984403 m!7671638))

(declare-fun m!7671640 () Bool)

(assert (=> b!6984403 m!7671640))

(declare-fun m!7671642 () Bool)

(assert (=> b!6984403 m!7671642))

(assert (=> b!6984403 m!7671640))

(assert (=> b!6984403 m!7671642))

(declare-fun m!7671644 () Bool)

(assert (=> b!6984403 m!7671644))

(assert (=> b!6984295 d!2175424))

(declare-fun d!2175426 () Bool)

(assert (=> d!2175426 (= (isEmpty!39100 (exprs!6684 lt!2483125)) (is-Nil!66985 (exprs!6684 lt!2483125)))))

(assert (=> b!6984297 d!2175426))

(declare-fun b!6984415 () Bool)

(declare-fun lt!2483236 () List!67109)

(declare-fun e!4197839 () Bool)

(assert (=> b!6984415 (= e!4197839 (or (not (= (exprs!6684 ct2!306) Nil!66985)) (= lt!2483236 (exprs!6684 lt!2483125))))))

(declare-fun d!2175430 () Bool)

(assert (=> d!2175430 e!4197839))

(declare-fun res!2848100 () Bool)

(assert (=> d!2175430 (=> (not res!2848100) (not e!4197839))))

(declare-fun content!13225 (List!67109) (Set Regex!17188))

(assert (=> d!2175430 (= res!2848100 (= (content!13225 lt!2483236) (set.union (content!13225 (exprs!6684 lt!2483125)) (content!13225 (exprs!6684 ct2!306)))))))

(declare-fun e!4197838 () List!67109)

(assert (=> d!2175430 (= lt!2483236 e!4197838)))

(declare-fun c!1295028 () Bool)

(assert (=> d!2175430 (= c!1295028 (is-Nil!66985 (exprs!6684 lt!2483125)))))

(assert (=> d!2175430 (= (++!15133 (exprs!6684 lt!2483125) (exprs!6684 ct2!306)) lt!2483236)))

(declare-fun b!6984414 () Bool)

(declare-fun res!2848101 () Bool)

(assert (=> b!6984414 (=> (not res!2848101) (not e!4197839))))

(declare-fun size!40887 (List!67109) Int)

(assert (=> b!6984414 (= res!2848101 (= (size!40887 lt!2483236) (+ (size!40887 (exprs!6684 lt!2483125)) (size!40887 (exprs!6684 ct2!306)))))))

(declare-fun b!6984412 () Bool)

(assert (=> b!6984412 (= e!4197838 (exprs!6684 ct2!306))))

(declare-fun b!6984413 () Bool)

(assert (=> b!6984413 (= e!4197838 (Cons!66985 (h!73433 (exprs!6684 lt!2483125)) (++!15133 (t!380856 (exprs!6684 lt!2483125)) (exprs!6684 ct2!306))))))

(assert (= (and d!2175430 c!1295028) b!6984412))

(assert (= (and d!2175430 (not c!1295028)) b!6984413))

(assert (= (and d!2175430 res!2848100) b!6984414))

(assert (= (and b!6984414 res!2848101) b!6984415))

(declare-fun m!7671650 () Bool)

(assert (=> d!2175430 m!7671650))

(declare-fun m!7671652 () Bool)

(assert (=> d!2175430 m!7671652))

(declare-fun m!7671654 () Bool)

(assert (=> d!2175430 m!7671654))

(declare-fun m!7671656 () Bool)

(assert (=> b!6984414 m!7671656))

(declare-fun m!7671658 () Bool)

(assert (=> b!6984414 m!7671658))

(declare-fun m!7671660 () Bool)

(assert (=> b!6984414 m!7671660))

(declare-fun m!7671662 () Bool)

(assert (=> b!6984413 m!7671662))

(assert (=> b!6984288 d!2175430))

(assert (=> b!6984288 d!2175400))

(declare-fun d!2175432 () Bool)

(declare-fun e!4197844 () Bool)

(assert (=> d!2175432 e!4197844))

(declare-fun res!2848104 () Bool)

(assert (=> d!2175432 (=> (not res!2848104) (not e!4197844))))

(declare-fun lt!2483239 () Context!12368)

(declare-fun dynLambda!26815 (Int Context!12368) Context!12368)

(assert (=> d!2175432 (= res!2848104 (= lt!2483129 (dynLambda!26815 lambda!399861 lt!2483239)))))

(declare-fun choose!52128 ((Set Context!12368) Int Context!12368) Context!12368)

(assert (=> d!2175432 (= lt!2483239 (choose!52128 z1!570 lambda!399861 lt!2483129))))

(declare-fun map!15446 ((Set Context!12368) Int) (Set Context!12368))

(assert (=> d!2175432 (set.member lt!2483129 (map!15446 z1!570 lambda!399861))))

(assert (=> d!2175432 (= (mapPost2!43 z1!570 lambda!399861 lt!2483129) lt!2483239)))

(declare-fun b!6984423 () Bool)

(assert (=> b!6984423 (= e!4197844 (set.member lt!2483239 z1!570))))

(assert (= (and d!2175432 res!2848104) b!6984423))

(declare-fun b_lambda!262063 () Bool)

(assert (=> (not b_lambda!262063) (not d!2175432)))

(declare-fun m!7671664 () Bool)

(assert (=> d!2175432 m!7671664))

(declare-fun m!7671666 () Bool)

(assert (=> d!2175432 m!7671666))

(declare-fun m!7671668 () Bool)

(assert (=> d!2175432 m!7671668))

(declare-fun m!7671670 () Bool)

(assert (=> d!2175432 m!7671670))

(declare-fun m!7671672 () Bool)

(assert (=> b!6984423 m!7671672))

(assert (=> b!6984288 d!2175432))

(declare-fun d!2175434 () Bool)

(declare-fun c!1295032 () Bool)

(assert (=> d!2175434 (= c!1295032 (isEmpty!39102 s!7408))))

(declare-fun e!4197846 () Bool)

(assert (=> d!2175434 (= (matchZipper!2728 lt!2483130 s!7408) e!4197846)))

(declare-fun b!6984426 () Bool)

(assert (=> b!6984426 (= e!4197846 (nullableZipper!2415 lt!2483130))))

(declare-fun b!6984427 () Bool)

(assert (=> b!6984427 (= e!4197846 (matchZipper!2728 (derivationStepZipper!2668 lt!2483130 (head!14090 s!7408)) (tail!13178 s!7408)))))

(assert (= (and d!2175434 c!1295032) b!6984426))

(assert (= (and d!2175434 (not c!1295032)) b!6984427))

(assert (=> d!2175434 m!7671634))

(declare-fun m!7671678 () Bool)

(assert (=> b!6984426 m!7671678))

(assert (=> b!6984427 m!7671638))

(assert (=> b!6984427 m!7671638))

(declare-fun m!7671682 () Bool)

(assert (=> b!6984427 m!7671682))

(assert (=> b!6984427 m!7671642))

(assert (=> b!6984427 m!7671682))

(assert (=> b!6984427 m!7671642))

(declare-fun m!7671688 () Bool)

(assert (=> b!6984427 m!7671688))

(assert (=> start!670582 d!2175434))

(declare-fun bs!1861492 () Bool)

(declare-fun d!2175436 () Bool)

(assert (= bs!1861492 (and d!2175436 b!6984288)))

(declare-fun lambda!399912 () Int)

(assert (=> bs!1861492 (= lambda!399912 lambda!399861)))

(assert (=> d!2175436 true))

(assert (=> d!2175436 (= (appendTo!309 z1!570 ct2!306) (map!15446 z1!570 lambda!399912))))

(declare-fun bs!1861493 () Bool)

(assert (= bs!1861493 d!2175436))

(declare-fun m!7671692 () Bool)

(assert (=> bs!1861493 m!7671692))

(assert (=> start!670582 d!2175436))

(declare-fun bs!1861494 () Bool)

(declare-fun d!2175440 () Bool)

(assert (= bs!1861494 (and d!2175440 b!6984288)))

(declare-fun lambda!399913 () Int)

(assert (=> bs!1861494 (= lambda!399913 lambda!399862)))

(declare-fun bs!1861495 () Bool)

(assert (= bs!1861495 (and d!2175440 d!2175410)))

(assert (=> bs!1861495 (= lambda!399913 lambda!399901)))

(assert (=> d!2175440 (= (inv!85830 ct2!306) (forall!16088 (exprs!6684 ct2!306) lambda!399913))))

(declare-fun bs!1861496 () Bool)

(assert (= bs!1861496 d!2175440))

(declare-fun m!7671694 () Bool)

(assert (=> bs!1861496 m!7671694))

(assert (=> start!670582 d!2175440))

(assert (=> b!6984286 d!2175400))

(declare-fun d!2175442 () Bool)

(assert (=> d!2175442 (forall!16088 (++!15133 lt!2483131 (exprs!6684 ct2!306)) lambda!399862)))

(declare-fun lt!2483242 () Unit!161031)

(assert (=> d!2175442 (= lt!2483242 (choose!52124 lt!2483131 (exprs!6684 ct2!306) lambda!399862))))

(assert (=> d!2175442 (forall!16088 lt!2483131 lambda!399862)))

(assert (=> d!2175442 (= (lemmaConcatPreservesForall!524 lt!2483131 (exprs!6684 ct2!306) lambda!399862) lt!2483242)))

(declare-fun bs!1861497 () Bool)

(assert (= bs!1861497 d!2175442))

(assert (=> bs!1861497 m!7671496))

(assert (=> bs!1861497 m!7671496))

(declare-fun m!7671696 () Bool)

(assert (=> bs!1861497 m!7671696))

(declare-fun m!7671698 () Bool)

(assert (=> bs!1861497 m!7671698))

(assert (=> bs!1861497 m!7671488))

(assert (=> b!6984283 d!2175442))

(declare-fun lt!2483243 () List!67109)

(declare-fun e!4197848 () Bool)

(declare-fun b!6984431 () Bool)

(assert (=> b!6984431 (= e!4197848 (or (not (= (exprs!6684 ct2!306) Nil!66985)) (= lt!2483243 lt!2483131)))))

(declare-fun d!2175444 () Bool)

(assert (=> d!2175444 e!4197848))

(declare-fun res!2848105 () Bool)

(assert (=> d!2175444 (=> (not res!2848105) (not e!4197848))))

(assert (=> d!2175444 (= res!2848105 (= (content!13225 lt!2483243) (set.union (content!13225 lt!2483131) (content!13225 (exprs!6684 ct2!306)))))))

(declare-fun e!4197847 () List!67109)

(assert (=> d!2175444 (= lt!2483243 e!4197847)))

(declare-fun c!1295035 () Bool)

(assert (=> d!2175444 (= c!1295035 (is-Nil!66985 lt!2483131))))

(assert (=> d!2175444 (= (++!15133 lt!2483131 (exprs!6684 ct2!306)) lt!2483243)))

(declare-fun b!6984430 () Bool)

(declare-fun res!2848106 () Bool)

(assert (=> b!6984430 (=> (not res!2848106) (not e!4197848))))

(assert (=> b!6984430 (= res!2848106 (= (size!40887 lt!2483243) (+ (size!40887 lt!2483131) (size!40887 (exprs!6684 ct2!306)))))))

(declare-fun b!6984428 () Bool)

(assert (=> b!6984428 (= e!4197847 (exprs!6684 ct2!306))))

(declare-fun b!6984429 () Bool)

(assert (=> b!6984429 (= e!4197847 (Cons!66985 (h!73433 lt!2483131) (++!15133 (t!380856 lt!2483131) (exprs!6684 ct2!306))))))

(assert (= (and d!2175444 c!1295035) b!6984428))

(assert (= (and d!2175444 (not c!1295035)) b!6984429))

(assert (= (and d!2175444 res!2848105) b!6984430))

(assert (= (and b!6984430 res!2848106) b!6984431))

(declare-fun m!7671700 () Bool)

(assert (=> d!2175444 m!7671700))

(declare-fun m!7671702 () Bool)

(assert (=> d!2175444 m!7671702))

(assert (=> d!2175444 m!7671654))

(declare-fun m!7671704 () Bool)

(assert (=> b!6984430 m!7671704))

(declare-fun m!7671706 () Bool)

(assert (=> b!6984430 m!7671706))

(assert (=> b!6984430 m!7671660))

(declare-fun m!7671708 () Bool)

(assert (=> b!6984429 m!7671708))

(assert (=> b!6984283 d!2175444))

(declare-fun c!1295048 () Bool)

(declare-fun c!1295051 () Bool)

(declare-fun c!1295047 () Bool)

(declare-fun bm!633950 () Bool)

(declare-fun call!633960 () (Set Context!12368))

(declare-fun call!633957 () List!67109)

(assert (=> bm!633950 (= call!633960 (derivationStepZipperDown!1906 (ite c!1295047 (regTwo!34889 (h!73433 (exprs!6684 lt!2483125))) (ite c!1295048 (regTwo!34888 (h!73433 (exprs!6684 lt!2483125))) (ite c!1295051 (regOne!34888 (h!73433 (exprs!6684 lt!2483125))) (reg!17517 (h!73433 (exprs!6684 lt!2483125)))))) (ite (or c!1295047 c!1295048) lt!2483120 (Context!12369 call!633957)) (h!73434 s!7408)))))

(declare-fun b!6984456 () Bool)

(declare-fun c!1295050 () Bool)

(assert (=> b!6984456 (= c!1295050 (is-Star!17188 (h!73433 (exprs!6684 lt!2483125))))))

(declare-fun e!4197867 () (Set Context!12368))

(declare-fun e!4197865 () (Set Context!12368))

(assert (=> b!6984456 (= e!4197867 e!4197865)))

(declare-fun b!6984457 () Bool)

(declare-fun call!633958 () (Set Context!12368))

(assert (=> b!6984457 (= e!4197865 call!633958)))

(declare-fun bm!633951 () Bool)

(declare-fun call!633955 () (Set Context!12368))

(assert (=> bm!633951 (= call!633958 call!633955)))

(declare-fun b!6984458 () Bool)

(declare-fun e!4197863 () (Set Context!12368))

(assert (=> b!6984458 (= e!4197863 e!4197867)))

(assert (=> b!6984458 (= c!1295051 (is-Concat!26033 (h!73433 (exprs!6684 lt!2483125))))))

(declare-fun b!6984459 () Bool)

(declare-fun e!4197864 () (Set Context!12368))

(declare-fun call!633956 () (Set Context!12368))

(assert (=> b!6984459 (= e!4197864 (set.union call!633956 call!633960))))

(declare-fun bm!633952 () Bool)

(assert (=> bm!633952 (= call!633955 call!633960)))

(declare-fun b!6984460 () Bool)

(declare-fun e!4197866 () (Set Context!12368))

(assert (=> b!6984460 (= e!4197866 e!4197864)))

(assert (=> b!6984460 (= c!1295047 (is-Union!17188 (h!73433 (exprs!6684 lt!2483125))))))

(declare-fun b!6984461 () Bool)

(declare-fun e!4197862 () Bool)

(assert (=> b!6984461 (= e!4197862 (nullable!6948 (regOne!34888 (h!73433 (exprs!6684 lt!2483125)))))))

(declare-fun b!6984462 () Bool)

(assert (=> b!6984462 (= e!4197867 call!633958)))

(declare-fun call!633959 () List!67109)

(declare-fun bm!633953 () Bool)

(declare-fun $colon$colon!2467 (List!67109 Regex!17188) List!67109)

(assert (=> bm!633953 (= call!633959 ($colon$colon!2467 (exprs!6684 lt!2483120) (ite (or c!1295048 c!1295051) (regTwo!34888 (h!73433 (exprs!6684 lt!2483125))) (h!73433 (exprs!6684 lt!2483125)))))))

(declare-fun b!6984464 () Bool)

(assert (=> b!6984464 (= c!1295048 e!4197862)))

(declare-fun res!2848109 () Bool)

(assert (=> b!6984464 (=> (not res!2848109) (not e!4197862))))

(assert (=> b!6984464 (= res!2848109 (is-Concat!26033 (h!73433 (exprs!6684 lt!2483125))))))

(assert (=> b!6984464 (= e!4197864 e!4197863)))

(declare-fun bm!633954 () Bool)

(assert (=> bm!633954 (= call!633956 (derivationStepZipperDown!1906 (ite c!1295047 (regOne!34889 (h!73433 (exprs!6684 lt!2483125))) (regOne!34888 (h!73433 (exprs!6684 lt!2483125)))) (ite c!1295047 lt!2483120 (Context!12369 call!633959)) (h!73434 s!7408)))))

(declare-fun b!6984465 () Bool)

(assert (=> b!6984465 (= e!4197865 (as set.empty (Set Context!12368)))))

(declare-fun b!6984466 () Bool)

(assert (=> b!6984466 (= e!4197866 (set.insert lt!2483120 (as set.empty (Set Context!12368))))))

(declare-fun bm!633955 () Bool)

(assert (=> bm!633955 (= call!633957 call!633959)))

(declare-fun d!2175446 () Bool)

(declare-fun c!1295049 () Bool)

(assert (=> d!2175446 (= c!1295049 (and (is-ElementMatch!17188 (h!73433 (exprs!6684 lt!2483125))) (= (c!1295002 (h!73433 (exprs!6684 lt!2483125))) (h!73434 s!7408))))))

(assert (=> d!2175446 (= (derivationStepZipperDown!1906 (h!73433 (exprs!6684 lt!2483125)) lt!2483120 (h!73434 s!7408)) e!4197866)))

(declare-fun b!6984463 () Bool)

(assert (=> b!6984463 (= e!4197863 (set.union call!633956 call!633955))))

(assert (= (and d!2175446 c!1295049) b!6984466))

(assert (= (and d!2175446 (not c!1295049)) b!6984460))

(assert (= (and b!6984460 c!1295047) b!6984459))

(assert (= (and b!6984460 (not c!1295047)) b!6984464))

(assert (= (and b!6984464 res!2848109) b!6984461))

(assert (= (and b!6984464 c!1295048) b!6984463))

(assert (= (and b!6984464 (not c!1295048)) b!6984458))

(assert (= (and b!6984458 c!1295051) b!6984462))

(assert (= (and b!6984458 (not c!1295051)) b!6984456))

(assert (= (and b!6984456 c!1295050) b!6984457))

(assert (= (and b!6984456 (not c!1295050)) b!6984465))

(assert (= (or b!6984462 b!6984457) bm!633955))

(assert (= (or b!6984462 b!6984457) bm!633951))

(assert (= (or b!6984463 bm!633951) bm!633952))

(assert (= (or b!6984463 bm!633955) bm!633953))

(assert (= (or b!6984459 b!6984463) bm!633954))

(assert (= (or b!6984459 bm!633952) bm!633950))

(declare-fun m!7671726 () Bool)

(assert (=> bm!633954 m!7671726))

(declare-fun m!7671728 () Bool)

(assert (=> bm!633953 m!7671728))

(declare-fun m!7671730 () Bool)

(assert (=> b!6984461 m!7671730))

(declare-fun m!7671732 () Bool)

(assert (=> bm!633950 m!7671732))

(declare-fun m!7671734 () Bool)

(assert (=> b!6984466 m!7671734))

(assert (=> b!6984283 d!2175446))

(declare-fun b!6984467 () Bool)

(declare-fun e!4197869 () Bool)

(assert (=> b!6984467 (= e!4197869 (nullable!6948 (h!73433 (exprs!6684 lt!2483120))))))

(declare-fun b!6984468 () Bool)

(declare-fun e!4197870 () (Set Context!12368))

(assert (=> b!6984468 (= e!4197870 (as set.empty (Set Context!12368)))))

(declare-fun b!6984469 () Bool)

(declare-fun e!4197868 () (Set Context!12368))

(declare-fun call!633961 () (Set Context!12368))

(assert (=> b!6984469 (= e!4197868 (set.union call!633961 (derivationStepZipperUp!1838 (Context!12369 (t!380856 (exprs!6684 lt!2483120))) (h!73434 s!7408))))))

(declare-fun bm!633956 () Bool)

(assert (=> bm!633956 (= call!633961 (derivationStepZipperDown!1906 (h!73433 (exprs!6684 lt!2483120)) (Context!12369 (t!380856 (exprs!6684 lt!2483120))) (h!73434 s!7408)))))

(declare-fun b!6984470 () Bool)

(assert (=> b!6984470 (= e!4197868 e!4197870)))

(declare-fun c!1295052 () Bool)

(assert (=> b!6984470 (= c!1295052 (is-Cons!66985 (exprs!6684 lt!2483120)))))

(declare-fun b!6984471 () Bool)

(assert (=> b!6984471 (= e!4197870 call!633961)))

(declare-fun d!2175454 () Bool)

(declare-fun c!1295053 () Bool)

(assert (=> d!2175454 (= c!1295053 e!4197869)))

(declare-fun res!2848110 () Bool)

(assert (=> d!2175454 (=> (not res!2848110) (not e!4197869))))

(assert (=> d!2175454 (= res!2848110 (is-Cons!66985 (exprs!6684 lt!2483120)))))

(assert (=> d!2175454 (= (derivationStepZipperUp!1838 lt!2483120 (h!73434 s!7408)) e!4197868)))

(assert (= (and d!2175454 res!2848110) b!6984467))

(assert (= (and d!2175454 c!1295053) b!6984469))

(assert (= (and d!2175454 (not c!1295053)) b!6984470))

(assert (= (and b!6984470 c!1295052) b!6984471))

(assert (= (and b!6984470 (not c!1295052)) b!6984468))

(assert (= (or b!6984469 b!6984471) bm!633956))

(declare-fun m!7671736 () Bool)

(assert (=> b!6984467 m!7671736))

(declare-fun m!7671738 () Bool)

(assert (=> b!6984469 m!7671738))

(declare-fun m!7671740 () Bool)

(assert (=> bm!633956 m!7671740))

(assert (=> b!6984283 d!2175454))

(declare-fun d!2175456 () Bool)

(declare-fun e!4197873 () Bool)

(assert (=> d!2175456 (= (matchZipper!2728 (set.union lt!2483123 lt!2483139) (t!380857 s!7408)) e!4197873)))

(declare-fun res!2848113 () Bool)

(assert (=> d!2175456 (=> res!2848113 e!4197873)))

(assert (=> d!2175456 (= res!2848113 (matchZipper!2728 lt!2483123 (t!380857 s!7408)))))

(declare-fun lt!2483251 () Unit!161031)

(declare-fun choose!52129 ((Set Context!12368) (Set Context!12368) List!67110) Unit!161031)

(assert (=> d!2175456 (= lt!2483251 (choose!52129 lt!2483123 lt!2483139 (t!380857 s!7408)))))

(assert (=> d!2175456 (= (lemmaZipperConcatMatchesSameAsBothZippers!1361 lt!2483123 lt!2483139 (t!380857 s!7408)) lt!2483251)))

(declare-fun b!6984474 () Bool)

(assert (=> b!6984474 (= e!4197873 (matchZipper!2728 lt!2483139 (t!380857 s!7408)))))

(assert (= (and d!2175456 (not res!2848113)) b!6984474))

(declare-fun m!7671752 () Bool)

(assert (=> d!2175456 m!7671752))

(assert (=> d!2175456 m!7671480))

(declare-fun m!7671754 () Bool)

(assert (=> d!2175456 m!7671754))

(assert (=> b!6984474 m!7671476))

(assert (=> b!6984291 d!2175456))

(declare-fun d!2175466 () Bool)

(declare-fun c!1295054 () Bool)

(assert (=> d!2175466 (= c!1295054 (isEmpty!39102 (t!380857 s!7408)))))

(declare-fun e!4197874 () Bool)

(assert (=> d!2175466 (= (matchZipper!2728 lt!2483127 (t!380857 s!7408)) e!4197874)))

(declare-fun b!6984475 () Bool)

(assert (=> b!6984475 (= e!4197874 (nullableZipper!2415 lt!2483127))))

(declare-fun b!6984476 () Bool)

(assert (=> b!6984476 (= e!4197874 (matchZipper!2728 (derivationStepZipper!2668 lt!2483127 (head!14090 (t!380857 s!7408))) (tail!13178 (t!380857 s!7408))))))

(assert (= (and d!2175466 c!1295054) b!6984475))

(assert (= (and d!2175466 (not c!1295054)) b!6984476))

(assert (=> d!2175466 m!7671598))

(declare-fun m!7671756 () Bool)

(assert (=> b!6984475 m!7671756))

(assert (=> b!6984476 m!7671602))

(assert (=> b!6984476 m!7671602))

(declare-fun m!7671758 () Bool)

(assert (=> b!6984476 m!7671758))

(assert (=> b!6984476 m!7671606))

(assert (=> b!6984476 m!7671758))

(assert (=> b!6984476 m!7671606))

(declare-fun m!7671760 () Bool)

(assert (=> b!6984476 m!7671760))

(assert (=> b!6984291 d!2175466))

(declare-fun d!2175468 () Bool)

(declare-fun c!1295055 () Bool)

(assert (=> d!2175468 (= c!1295055 (isEmpty!39102 (t!380857 s!7408)))))

(declare-fun e!4197875 () Bool)

(assert (=> d!2175468 (= (matchZipper!2728 lt!2483123 (t!380857 s!7408)) e!4197875)))

(declare-fun b!6984477 () Bool)

(assert (=> b!6984477 (= e!4197875 (nullableZipper!2415 lt!2483123))))

(declare-fun b!6984478 () Bool)

(assert (=> b!6984478 (= e!4197875 (matchZipper!2728 (derivationStepZipper!2668 lt!2483123 (head!14090 (t!380857 s!7408))) (tail!13178 (t!380857 s!7408))))))

(assert (= (and d!2175468 c!1295055) b!6984477))

(assert (= (and d!2175468 (not c!1295055)) b!6984478))

(assert (=> d!2175468 m!7671598))

(declare-fun m!7671762 () Bool)

(assert (=> b!6984477 m!7671762))

(assert (=> b!6984478 m!7671602))

(assert (=> b!6984478 m!7671602))

(declare-fun m!7671764 () Bool)

(assert (=> b!6984478 m!7671764))

(assert (=> b!6984478 m!7671606))

(assert (=> b!6984478 m!7671764))

(assert (=> b!6984478 m!7671606))

(declare-fun m!7671766 () Bool)

(assert (=> b!6984478 m!7671766))

(assert (=> b!6984291 d!2175468))

(assert (=> b!6984291 d!2175442))

(declare-fun d!2175470 () Bool)

(declare-fun c!1295056 () Bool)

(assert (=> d!2175470 (= c!1295056 (isEmpty!39102 (t!380857 s!7408)))))

(declare-fun e!4197876 () Bool)

(assert (=> d!2175470 (= (matchZipper!2728 lt!2483133 (t!380857 s!7408)) e!4197876)))

(declare-fun b!6984479 () Bool)

(assert (=> b!6984479 (= e!4197876 (nullableZipper!2415 lt!2483133))))

(declare-fun b!6984480 () Bool)

(assert (=> b!6984480 (= e!4197876 (matchZipper!2728 (derivationStepZipper!2668 lt!2483133 (head!14090 (t!380857 s!7408))) (tail!13178 (t!380857 s!7408))))))

(assert (= (and d!2175470 c!1295056) b!6984479))

(assert (= (and d!2175470 (not c!1295056)) b!6984480))

(assert (=> d!2175470 m!7671598))

(declare-fun m!7671768 () Bool)

(assert (=> b!6984479 m!7671768))

(assert (=> b!6984480 m!7671602))

(assert (=> b!6984480 m!7671602))

(declare-fun m!7671770 () Bool)

(assert (=> b!6984480 m!7671770))

(assert (=> b!6984480 m!7671606))

(assert (=> b!6984480 m!7671770))

(assert (=> b!6984480 m!7671606))

(declare-fun m!7671772 () Bool)

(assert (=> b!6984480 m!7671772))

(assert (=> b!6984291 d!2175470))

(declare-fun b!6984485 () Bool)

(declare-fun e!4197879 () Bool)

(declare-fun tp!1928859 () Bool)

(assert (=> b!6984485 (= e!4197879 (and tp_is_empty!43601 tp!1928859))))

(assert (=> b!6984293 (= tp!1928843 e!4197879)))

(assert (= (and b!6984293 (is-Cons!66986 (t!380857 s!7408))) b!6984485))

(declare-fun condSetEmpty!47640 () Bool)

(assert (=> setNonEmpty!47634 (= condSetEmpty!47640 (= setRest!47634 (as set.empty (Set Context!12368))))))

(declare-fun setRes!47640 () Bool)

(assert (=> setNonEmpty!47634 (= tp!1928842 setRes!47640)))

(declare-fun setIsEmpty!47640 () Bool)

(assert (=> setIsEmpty!47640 setRes!47640))

(declare-fun setNonEmpty!47640 () Bool)

(declare-fun setElem!47640 () Context!12368)

(declare-fun e!4197884 () Bool)

(declare-fun tp!1928864 () Bool)

(assert (=> setNonEmpty!47640 (= setRes!47640 (and tp!1928864 (inv!85830 setElem!47640) e!4197884))))

(declare-fun setRest!47640 () (Set Context!12368))

(assert (=> setNonEmpty!47640 (= setRest!47634 (set.union (set.insert setElem!47640 (as set.empty (Set Context!12368))) setRest!47640))))

(declare-fun b!6984492 () Bool)

(declare-fun tp!1928865 () Bool)

(assert (=> b!6984492 (= e!4197884 tp!1928865)))

(assert (= (and setNonEmpty!47634 condSetEmpty!47640) setIsEmpty!47640))

(assert (= (and setNonEmpty!47634 (not condSetEmpty!47640)) setNonEmpty!47640))

(assert (= setNonEmpty!47640 b!6984492))

(declare-fun m!7671774 () Bool)

(assert (=> setNonEmpty!47640 m!7671774))

(declare-fun b!6984497 () Bool)

(declare-fun e!4197887 () Bool)

(declare-fun tp!1928870 () Bool)

(declare-fun tp!1928871 () Bool)

(assert (=> b!6984497 (= e!4197887 (and tp!1928870 tp!1928871))))

(assert (=> b!6984287 (= tp!1928844 e!4197887)))

(assert (= (and b!6984287 (is-Cons!66985 (exprs!6684 ct2!306))) b!6984497))

(declare-fun b!6984499 () Bool)

(declare-fun e!4197889 () Bool)

(declare-fun tp!1928872 () Bool)

(declare-fun tp!1928873 () Bool)

(assert (=> b!6984499 (= e!4197889 (and tp!1928872 tp!1928873))))

(assert (=> b!6984292 (= tp!1928841 e!4197889)))

(assert (= (and b!6984292 (is-Cons!66985 (exprs!6684 setElem!47634))) b!6984499))

(declare-fun b_lambda!262065 () Bool)

(assert (= b_lambda!262059 (or b!6984295 b_lambda!262065)))

(declare-fun bs!1861507 () Bool)

(declare-fun d!2175472 () Bool)

(assert (= bs!1861507 (and d!2175472 b!6984295)))

(assert (=> bs!1861507 (= (dynLambda!26813 lambda!399860 lt!2483230) (matchZipper!2728 (set.insert lt!2483230 (as set.empty (Set Context!12368))) s!7408))))

(declare-fun m!7671782 () Bool)

(assert (=> bs!1861507 m!7671782))

(assert (=> bs!1861507 m!7671782))

(declare-fun m!7671784 () Bool)

(assert (=> bs!1861507 m!7671784))

(assert (=> d!2175416 d!2175472))

(declare-fun b_lambda!262067 () Bool)

(assert (= b_lambda!262057 (or b!6984288 b_lambda!262067)))

(declare-fun bs!1861508 () Bool)

(declare-fun d!2175476 () Bool)

(assert (= bs!1861508 (and d!2175476 b!6984288)))

(declare-fun validRegex!8846 (Regex!17188) Bool)

(assert (=> bs!1861508 (= (dynLambda!26812 lambda!399862 (h!73433 lt!2483131)) (validRegex!8846 (h!73433 lt!2483131)))))

(declare-fun m!7671786 () Bool)

(assert (=> bs!1861508 m!7671786))

(assert (=> b!6984380 d!2175476))

(declare-fun b_lambda!262069 () Bool)

(assert (= b_lambda!262055 (or b!6984289 b_lambda!262069)))

(declare-fun bs!1861509 () Bool)

(declare-fun d!2175478 () Bool)

(assert (= bs!1861509 (and d!2175478 b!6984289)))

(assert (=> bs!1861509 (= (dynLambda!26811 lambda!399863 lt!2483119) (derivationStepZipperUp!1838 lt!2483119 (h!73434 s!7408)))))

(assert (=> bs!1861509 m!7671444))

(assert (=> d!2175398 d!2175478))

(declare-fun b_lambda!262071 () Bool)

(assert (= b_lambda!262063 (or b!6984288 b_lambda!262071)))

(declare-fun bs!1861510 () Bool)

(declare-fun d!2175480 () Bool)

(assert (= bs!1861510 (and d!2175480 b!6984288)))

(declare-fun lt!2483255 () Unit!161031)

(assert (=> bs!1861510 (= lt!2483255 (lemmaConcatPreservesForall!524 (exprs!6684 lt!2483239) (exprs!6684 ct2!306) lambda!399862))))

(assert (=> bs!1861510 (= (dynLambda!26815 lambda!399861 lt!2483239) (Context!12369 (++!15133 (exprs!6684 lt!2483239) (exprs!6684 ct2!306))))))

(declare-fun m!7671788 () Bool)

(assert (=> bs!1861510 m!7671788))

(declare-fun m!7671790 () Bool)

(assert (=> bs!1861510 m!7671790))

(assert (=> d!2175432 d!2175480))

(push 1)

(assert (not b!6984485))

(assert (not b!6984476))

(assert (not d!2175430))

(assert (not bs!1861510))

(assert (not b!6984387))

(assert (not d!2175402))

(assert (not d!2175400))

(assert (not b!6984402))

(assert (not d!2175416))

(assert (not bm!633953))

(assert (not b!6984403))

(assert (not setNonEmpty!47640))

(assert (not bm!633937))

(assert (not d!2175432))

(assert (not b!6984474))

(assert (not d!2175444))

(assert (not b!6984381))

(assert (not bm!633954))

(assert (not b!6984499))

(assert (not d!2175440))

(assert (not b!6984492))

(assert (not d!2175434))

(assert (not b!6984467))

(assert (not b!6984386))

(assert (not d!2175456))

(assert (not b!6984497))

(assert (not b!6984475))

(assert (not b!6984478))

(assert (not b!6984373))

(assert (not bm!633950))

(assert (not b_lambda!262069))

(assert (not d!2175468))

(assert (not b_lambda!262067))

(assert (not b!6984426))

(assert (not b!6984469))

(assert (not bs!1861508))

(assert (not d!2175424))

(assert (not d!2175422))

(assert (not b!6984429))

(assert (not d!2175442))

(assert (not bs!1861507))

(assert (not b!6984430))

(assert (not bs!1861509))

(assert (not d!2175410))

(assert (not d!2175412))

(assert (not b_lambda!262071))

(assert (not d!2175406))

(assert (not b!6984461))

(assert tp_is_empty!43601)

(assert (not b!6984479))

(assert (not b_lambda!262065))

(assert (not b!6984413))

(assert (not b!6984371))

(assert (not bm!633956))

(assert (not d!2175420))

(assert (not d!2175394))

(assert (not b!6984480))

(assert (not d!2175414))

(assert (not b!6984427))

(assert (not d!2175470))

(assert (not d!2175466))

(assert (not d!2175398))

(assert (not b!6984399))

(assert (not b!6984477))

(assert (not d!2175436))

(assert (not b!6984414))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

