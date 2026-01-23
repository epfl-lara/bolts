; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!675086 () Bool)

(assert start!675086)

(declare-fun b!7009667 () Bool)

(assert (=> b!7009667 true))

(declare-fun b!7009681 () Bool)

(assert (=> b!7009681 true))

(declare-fun b!7009674 () Bool)

(assert (=> b!7009674 true))

(declare-fun e!4213532 () Bool)

(declare-datatypes ((C!34894 0))(
  ( (C!34895 (val!27149 Int)) )
))
(declare-datatypes ((Regex!17312 0))(
  ( (ElementMatch!17312 (c!1302010 C!34894)) (Concat!26157 (regOne!35136 Regex!17312) (regTwo!35136 Regex!17312)) (EmptyExpr!17312) (Star!17312 (reg!17641 Regex!17312)) (EmptyLang!17312) (Union!17312 (regOne!35137 Regex!17312) (regTwo!35137 Regex!17312)) )
))
(declare-datatypes ((List!67481 0))(
  ( (Nil!67357) (Cons!67357 (h!73805 Regex!17312) (t!381236 List!67481)) )
))
(declare-datatypes ((Context!12616 0))(
  ( (Context!12617 (exprs!6808 List!67481)) )
))
(declare-fun setElem!48332 () Context!12616)

(declare-fun tp!1932247 () Bool)

(declare-fun setNonEmpty!48332 () Bool)

(declare-fun setRes!48332 () Bool)

(declare-fun inv!86140 (Context!12616) Bool)

(assert (=> setNonEmpty!48332 (= setRes!48332 (and tp!1932247 (inv!86140 setElem!48332) e!4213532))))

(declare-fun z1!570 () (Set Context!12616))

(declare-fun setRest!48332 () (Set Context!12616))

(assert (=> setNonEmpty!48332 (= z1!570 (set.union (set.insert setElem!48332 (as set.empty (Set Context!12616))) setRest!48332))))

(declare-fun b!7009666 () Bool)

(declare-fun e!4213536 () Bool)

(declare-fun tp!1932248 () Bool)

(assert (=> b!7009666 (= e!4213536 tp!1932248)))

(declare-fun e!4213528 () Bool)

(declare-fun e!4213529 () Bool)

(assert (=> b!7009667 (= e!4213528 (not e!4213529))))

(declare-fun res!2860128 () Bool)

(assert (=> b!7009667 (=> res!2860128 e!4213529)))

(declare-fun lt!2503308 () (Set Context!12616))

(declare-datatypes ((List!67482 0))(
  ( (Nil!67358) (Cons!67358 (h!73806 C!34894) (t!381237 List!67482)) )
))
(declare-fun s!7408 () List!67482)

(declare-fun matchZipper!2852 ((Set Context!12616) List!67482) Bool)

(assert (=> b!7009667 (= res!2860128 (not (matchZipper!2852 lt!2503308 s!7408)))))

(declare-fun lt!2503309 () Context!12616)

(assert (=> b!7009667 (= lt!2503308 (set.insert lt!2503309 (as set.empty (Set Context!12616))))))

(declare-fun lt!2503298 () (Set Context!12616))

(declare-fun lambda!408138 () Int)

(declare-fun getWitness!1253 ((Set Context!12616) Int) Context!12616)

(assert (=> b!7009667 (= lt!2503309 (getWitness!1253 lt!2503298 lambda!408138))))

(declare-datatypes ((List!67483 0))(
  ( (Nil!67359) (Cons!67359 (h!73807 Context!12616) (t!381238 List!67483)) )
))
(declare-fun lt!2503312 () List!67483)

(declare-fun exists!3155 (List!67483 Int) Bool)

(assert (=> b!7009667 (exists!3155 lt!2503312 lambda!408138)))

(declare-datatypes ((Unit!161302 0))(
  ( (Unit!161303) )
))
(declare-fun lt!2503284 () Unit!161302)

(declare-fun lemmaZipperMatchesExistsMatchingContext!281 (List!67483 List!67482) Unit!161302)

(assert (=> b!7009667 (= lt!2503284 (lemmaZipperMatchesExistsMatchingContext!281 lt!2503312 s!7408))))

(declare-fun toList!10672 ((Set Context!12616)) List!67483)

(assert (=> b!7009667 (= lt!2503312 (toList!10672 lt!2503298))))

(declare-fun b!7009668 () Bool)

(declare-fun e!4213537 () Bool)

(declare-fun tp_is_empty!43849 () Bool)

(declare-fun tp!1932250 () Bool)

(assert (=> b!7009668 (= e!4213537 (and tp_is_empty!43849 tp!1932250))))

(declare-fun b!7009669 () Bool)

(declare-fun res!2860126 () Bool)

(declare-fun e!4213534 () Bool)

(assert (=> b!7009669 (=> res!2860126 e!4213534)))

(declare-fun lt!2503293 () Context!12616)

(assert (=> b!7009669 (= res!2860126 (not (is-Cons!67357 (exprs!6808 lt!2503293))))))

(declare-fun b!7009670 () Bool)

(declare-fun e!4213526 () Bool)

(declare-fun e!4213525 () Bool)

(assert (=> b!7009670 (= e!4213526 e!4213525)))

(declare-fun res!2860131 () Bool)

(assert (=> b!7009670 (=> res!2860131 e!4213525)))

(declare-fun lt!2503294 () (Set Context!12616))

(assert (=> b!7009670 (= res!2860131 (not (= lt!2503294 lt!2503308)))))

(declare-fun lt!2503314 () Context!12616)

(assert (=> b!7009670 (= lt!2503294 (set.insert lt!2503314 (as set.empty (Set Context!12616))))))

(declare-fun lt!2503311 () Unit!161302)

(declare-fun lambda!408140 () Int)

(declare-fun ct2!306 () Context!12616)

(declare-fun lemmaConcatPreservesForall!648 (List!67481 List!67481 Int) Unit!161302)

(assert (=> b!7009670 (= lt!2503311 (lemmaConcatPreservesForall!648 (exprs!6808 lt!2503293) (exprs!6808 ct2!306) lambda!408140))))

(declare-fun b!7009671 () Bool)

(declare-fun e!4213527 () Bool)

(declare-fun e!4213524 () Bool)

(assert (=> b!7009671 (= e!4213527 e!4213524)))

(declare-fun res!2860124 () Bool)

(assert (=> b!7009671 (=> res!2860124 e!4213524)))

(declare-fun lt!2503283 () (Set Context!12616))

(declare-fun lt!2503318 () (Set Context!12616))

(assert (=> b!7009671 (= res!2860124 (not (= lt!2503283 lt!2503318)))))

(declare-fun lt!2503295 () (Set Context!12616))

(declare-fun lt!2503288 () (Set Context!12616))

(assert (=> b!7009671 (= lt!2503318 (set.union lt!2503295 lt!2503288))))

(declare-fun lt!2503310 () Context!12616)

(declare-fun derivationStepZipperUp!1962 (Context!12616 C!34894) (Set Context!12616))

(assert (=> b!7009671 (= lt!2503288 (derivationStepZipperUp!1962 lt!2503310 (h!73806 s!7408)))))

(declare-fun derivationStepZipperDown!2030 (Regex!17312 Context!12616 C!34894) (Set Context!12616))

(assert (=> b!7009671 (= lt!2503295 (derivationStepZipperDown!2030 (h!73805 (exprs!6808 lt!2503293)) lt!2503310 (h!73806 s!7408)))))

(declare-fun lt!2503307 () List!67481)

(declare-fun ++!15305 (List!67481 List!67481) List!67481)

(assert (=> b!7009671 (= lt!2503310 (Context!12617 (++!15305 lt!2503307 (exprs!6808 ct2!306))))))

(declare-fun lt!2503292 () Unit!161302)

(assert (=> b!7009671 (= lt!2503292 (lemmaConcatPreservesForall!648 lt!2503307 (exprs!6808 ct2!306) lambda!408140))))

(declare-fun lt!2503302 () Unit!161302)

(assert (=> b!7009671 (= lt!2503302 (lemmaConcatPreservesForall!648 lt!2503307 (exprs!6808 ct2!306) lambda!408140))))

(declare-fun b!7009672 () Bool)

(declare-fun tp!1932249 () Bool)

(assert (=> b!7009672 (= e!4213532 tp!1932249)))

(declare-fun res!2860119 () Bool)

(assert (=> start!675086 (=> (not res!2860119) (not e!4213528))))

(assert (=> start!675086 (= res!2860119 (matchZipper!2852 lt!2503298 s!7408))))

(declare-fun appendTo!433 ((Set Context!12616) Context!12616) (Set Context!12616))

(assert (=> start!675086 (= lt!2503298 (appendTo!433 z1!570 ct2!306))))

(assert (=> start!675086 e!4213528))

(declare-fun condSetEmpty!48332 () Bool)

(assert (=> start!675086 (= condSetEmpty!48332 (= z1!570 (as set.empty (Set Context!12616))))))

(assert (=> start!675086 setRes!48332))

(assert (=> start!675086 (and (inv!86140 ct2!306) e!4213536)))

(assert (=> start!675086 e!4213537))

(declare-fun b!7009673 () Bool)

(declare-fun e!4213535 () Bool)

(declare-fun ++!15306 (List!67482 List!67482) List!67482)

(assert (=> b!7009673 (= e!4213535 (= (++!15306 Nil!67358 (t!381237 s!7408)) (t!381237 s!7408)))))

(declare-fun lt!2503301 () (Set Context!12616))

(declare-datatypes ((tuple2!67930 0))(
  ( (tuple2!67931 (_1!37268 List!67482) (_2!37268 List!67482)) )
))
(declare-datatypes ((Option!16797 0))(
  ( (None!16796) (Some!16796 (v!53074 tuple2!67930)) )
))
(declare-fun isDefined!13498 (Option!16797) Bool)

(declare-fun findConcatSeparationZippers!313 ((Set Context!12616) (Set Context!12616) List!67482 List!67482 List!67482) Option!16797)

(assert (=> b!7009673 (isDefined!13498 (findConcatSeparationZippers!313 lt!2503301 (set.insert ct2!306 (as set.empty (Set Context!12616))) Nil!67358 (t!381237 s!7408) (t!381237 s!7408)))))

(declare-fun lt!2503290 () Unit!161302)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!313 ((Set Context!12616) Context!12616 List!67482) Unit!161302)

(assert (=> b!7009673 (= lt!2503290 (lemmaConcatZipperMatchesStringThenFindConcatDefined!313 lt!2503301 ct2!306 (t!381237 s!7408)))))

(declare-fun lt!2503291 () Unit!161302)

(assert (=> b!7009673 (= lt!2503291 (lemmaConcatPreservesForall!648 lt!2503307 (exprs!6808 ct2!306) lambda!408140))))

(assert (=> b!7009673 (= lt!2503295 (appendTo!433 lt!2503301 ct2!306))))

(declare-fun lt!2503316 () Context!12616)

(assert (=> b!7009673 (= lt!2503301 (derivationStepZipperDown!2030 (h!73805 (exprs!6808 lt!2503293)) lt!2503316 (h!73806 s!7408)))))

(declare-fun lt!2503296 () Unit!161302)

(assert (=> b!7009673 (= lt!2503296 (lemmaConcatPreservesForall!648 lt!2503307 (exprs!6808 ct2!306) lambda!408140))))

(declare-fun lt!2503317 () Unit!161302)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!11 (Context!12616 Regex!17312 C!34894 Context!12616) Unit!161302)

(assert (=> b!7009673 (= lt!2503317 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!11 lt!2503316 (h!73805 (exprs!6808 lt!2503293)) (h!73806 s!7408) ct2!306))))

(assert (=> b!7009674 (= e!4213525 e!4213534)))

(declare-fun res!2860122 () Bool)

(assert (=> b!7009674 (=> res!2860122 e!4213534)))

(declare-fun derivationStepZipper!2792 ((Set Context!12616) C!34894) (Set Context!12616))

(assert (=> b!7009674 (= res!2860122 (not (= (derivationStepZipper!2792 lt!2503294 (h!73806 s!7408)) lt!2503283)))))

(declare-fun lambda!408141 () Int)

(declare-fun flatMap!2298 ((Set Context!12616) Int) (Set Context!12616))

(assert (=> b!7009674 (= (flatMap!2298 lt!2503294 lambda!408141) (derivationStepZipperUp!1962 lt!2503314 (h!73806 s!7408)))))

(declare-fun lt!2503300 () Unit!161302)

(declare-fun lemmaFlatMapOnSingletonSet!1813 ((Set Context!12616) Context!12616 Int) Unit!161302)

(assert (=> b!7009674 (= lt!2503300 (lemmaFlatMapOnSingletonSet!1813 lt!2503294 lt!2503314 lambda!408141))))

(assert (=> b!7009674 (= lt!2503283 (derivationStepZipperUp!1962 lt!2503314 (h!73806 s!7408)))))

(declare-fun lt!2503304 () Unit!161302)

(assert (=> b!7009674 (= lt!2503304 (lemmaConcatPreservesForall!648 (exprs!6808 lt!2503293) (exprs!6808 ct2!306) lambda!408140))))

(declare-fun b!7009675 () Bool)

(declare-fun e!4213523 () Bool)

(assert (=> b!7009675 (= e!4213523 (not (matchZipper!2852 lt!2503288 (t!381237 s!7408))))))

(declare-fun lt!2503285 () Unit!161302)

(assert (=> b!7009675 (= lt!2503285 (lemmaConcatPreservesForall!648 lt!2503307 (exprs!6808 ct2!306) lambda!408140))))

(declare-fun b!7009676 () Bool)

(declare-fun res!2860120 () Bool)

(assert (=> b!7009676 (=> res!2860120 e!4213529)))

(assert (=> b!7009676 (= res!2860120 (not (set.member lt!2503309 lt!2503298)))))

(declare-fun b!7009677 () Bool)

(declare-fun e!4213530 () Bool)

(assert (=> b!7009677 (= e!4213530 e!4213535)))

(declare-fun res!2860133 () Bool)

(assert (=> b!7009677 (=> res!2860133 e!4213535)))

(declare-fun lt!2503313 () Bool)

(assert (=> b!7009677 (= res!2860133 (not lt!2503313))))

(declare-fun lt!2503287 () Unit!161302)

(assert (=> b!7009677 (= lt!2503287 (lemmaConcatPreservesForall!648 lt!2503307 (exprs!6808 ct2!306) lambda!408140))))

(declare-fun lt!2503306 () Unit!161302)

(assert (=> b!7009677 (= lt!2503306 (lemmaConcatPreservesForall!648 lt!2503307 (exprs!6808 ct2!306) lambda!408140))))

(declare-fun b!7009678 () Bool)

(assert (=> b!7009678 (= e!4213534 e!4213527)))

(declare-fun res!2860121 () Bool)

(assert (=> b!7009678 (=> res!2860121 e!4213527)))

(declare-fun nullable!7072 (Regex!17312) Bool)

(assert (=> b!7009678 (= res!2860121 (not (nullable!7072 (h!73805 (exprs!6808 lt!2503293)))))))

(assert (=> b!7009678 (= lt!2503316 (Context!12617 lt!2503307))))

(declare-fun tail!13385 (List!67481) List!67481)

(assert (=> b!7009678 (= lt!2503307 (tail!13385 (exprs!6808 lt!2503293)))))

(declare-fun setIsEmpty!48332 () Bool)

(assert (=> setIsEmpty!48332 setRes!48332))

(declare-fun b!7009679 () Bool)

(declare-fun res!2860132 () Bool)

(assert (=> b!7009679 (=> (not res!2860132) (not e!4213528))))

(assert (=> b!7009679 (= res!2860132 (is-Cons!67358 s!7408))))

(declare-fun b!7009680 () Bool)

(declare-fun res!2860118 () Bool)

(assert (=> b!7009680 (=> res!2860118 e!4213534)))

(declare-fun isEmpty!39340 (List!67481) Bool)

(assert (=> b!7009680 (= res!2860118 (isEmpty!39340 (exprs!6808 lt!2503293)))))

(assert (=> b!7009681 (= e!4213529 e!4213526)))

(declare-fun res!2860123 () Bool)

(assert (=> b!7009681 (=> res!2860123 e!4213526)))

(assert (=> b!7009681 (= res!2860123 (or (not (= lt!2503314 lt!2503309)) (not (set.member lt!2503293 z1!570))))))

(assert (=> b!7009681 (= lt!2503314 (Context!12617 (++!15305 (exprs!6808 lt!2503293) (exprs!6808 ct2!306))))))

(declare-fun lt!2503305 () Unit!161302)

(assert (=> b!7009681 (= lt!2503305 (lemmaConcatPreservesForall!648 (exprs!6808 lt!2503293) (exprs!6808 ct2!306) lambda!408140))))

(declare-fun lambda!408139 () Int)

(declare-fun mapPost2!167 ((Set Context!12616) Int Context!12616) Context!12616)

(assert (=> b!7009681 (= lt!2503293 (mapPost2!167 z1!570 lambda!408139 lt!2503309))))

(declare-fun b!7009682 () Bool)

(declare-fun e!4213533 () Bool)

(assert (=> b!7009682 (= e!4213533 (matchZipper!2852 lt!2503288 (t!381237 s!7408)))))

(declare-fun b!7009683 () Bool)

(declare-fun e!4213531 () Bool)

(assert (=> b!7009683 (= e!4213531 e!4213530)))

(declare-fun res!2860134 () Bool)

(assert (=> b!7009683 (=> res!2860134 e!4213530)))

(assert (=> b!7009683 (= res!2860134 (matchZipper!2852 lt!2503288 (t!381237 s!7408)))))

(declare-fun lt!2503286 () Unit!161302)

(assert (=> b!7009683 (= lt!2503286 (lemmaConcatPreservesForall!648 lt!2503307 (exprs!6808 ct2!306) lambda!408140))))

(declare-fun b!7009684 () Bool)

(assert (=> b!7009684 (= e!4213524 e!4213531)))

(declare-fun res!2860129 () Bool)

(assert (=> b!7009684 (=> res!2860129 e!4213531)))

(assert (=> b!7009684 (= res!2860129 e!4213523)))

(declare-fun res!2860127 () Bool)

(assert (=> b!7009684 (=> (not res!2860127) (not e!4213523))))

(declare-fun lt!2503315 () Bool)

(assert (=> b!7009684 (= res!2860127 (not (= lt!2503315 lt!2503313)))))

(assert (=> b!7009684 (= lt!2503315 (matchZipper!2852 lt!2503283 (t!381237 s!7408)))))

(declare-fun lt!2503303 () Unit!161302)

(assert (=> b!7009684 (= lt!2503303 (lemmaConcatPreservesForall!648 lt!2503307 (exprs!6808 ct2!306) lambda!408140))))

(assert (=> b!7009684 (= (matchZipper!2852 lt!2503318 (t!381237 s!7408)) e!4213533)))

(declare-fun res!2860125 () Bool)

(assert (=> b!7009684 (=> res!2860125 e!4213533)))

(assert (=> b!7009684 (= res!2860125 lt!2503313)))

(assert (=> b!7009684 (= lt!2503313 (matchZipper!2852 lt!2503295 (t!381237 s!7408)))))

(declare-fun lt!2503297 () Unit!161302)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1485 ((Set Context!12616) (Set Context!12616) List!67482) Unit!161302)

(assert (=> b!7009684 (= lt!2503297 (lemmaZipperConcatMatchesSameAsBothZippers!1485 lt!2503295 lt!2503288 (t!381237 s!7408)))))

(declare-fun lt!2503289 () Unit!161302)

(assert (=> b!7009684 (= lt!2503289 (lemmaConcatPreservesForall!648 lt!2503307 (exprs!6808 ct2!306) lambda!408140))))

(declare-fun lt!2503299 () Unit!161302)

(assert (=> b!7009684 (= lt!2503299 (lemmaConcatPreservesForall!648 lt!2503307 (exprs!6808 ct2!306) lambda!408140))))

(declare-fun b!7009685 () Bool)

(declare-fun res!2860130 () Bool)

(assert (=> b!7009685 (=> res!2860130 e!4213531)))

(assert (=> b!7009685 (= res!2860130 (not lt!2503315))))

(assert (= (and start!675086 res!2860119) b!7009679))

(assert (= (and b!7009679 res!2860132) b!7009667))

(assert (= (and b!7009667 (not res!2860128)) b!7009676))

(assert (= (and b!7009676 (not res!2860120)) b!7009681))

(assert (= (and b!7009681 (not res!2860123)) b!7009670))

(assert (= (and b!7009670 (not res!2860131)) b!7009674))

(assert (= (and b!7009674 (not res!2860122)) b!7009669))

(assert (= (and b!7009669 (not res!2860126)) b!7009680))

(assert (= (and b!7009680 (not res!2860118)) b!7009678))

(assert (= (and b!7009678 (not res!2860121)) b!7009671))

(assert (= (and b!7009671 (not res!2860124)) b!7009684))

(assert (= (and b!7009684 (not res!2860125)) b!7009682))

(assert (= (and b!7009684 res!2860127) b!7009675))

(assert (= (and b!7009684 (not res!2860129)) b!7009685))

(assert (= (and b!7009685 (not res!2860130)) b!7009683))

(assert (= (and b!7009683 (not res!2860134)) b!7009677))

(assert (= (and b!7009677 (not res!2860133)) b!7009673))

(assert (= (and start!675086 condSetEmpty!48332) setIsEmpty!48332))

(assert (= (and start!675086 (not condSetEmpty!48332)) setNonEmpty!48332))

(assert (= setNonEmpty!48332 b!7009672))

(assert (= start!675086 b!7009666))

(assert (= (and start!675086 (is-Cons!67358 s!7408)) b!7009668))

(declare-fun m!7707322 () Bool)

(assert (=> b!7009671 m!7707322))

(declare-fun m!7707324 () Bool)

(assert (=> b!7009671 m!7707324))

(assert (=> b!7009671 m!7707322))

(declare-fun m!7707326 () Bool)

(assert (=> b!7009671 m!7707326))

(declare-fun m!7707328 () Bool)

(assert (=> b!7009671 m!7707328))

(declare-fun m!7707330 () Bool)

(assert (=> b!7009673 m!7707330))

(declare-fun m!7707332 () Bool)

(assert (=> b!7009673 m!7707332))

(declare-fun m!7707334 () Bool)

(assert (=> b!7009673 m!7707334))

(declare-fun m!7707336 () Bool)

(assert (=> b!7009673 m!7707336))

(declare-fun m!7707338 () Bool)

(assert (=> b!7009673 m!7707338))

(assert (=> b!7009673 m!7707322))

(declare-fun m!7707340 () Bool)

(assert (=> b!7009673 m!7707340))

(declare-fun m!7707342 () Bool)

(assert (=> b!7009673 m!7707342))

(assert (=> b!7009673 m!7707322))

(assert (=> b!7009673 m!7707332))

(assert (=> b!7009673 m!7707334))

(declare-fun m!7707344 () Bool)

(assert (=> b!7009673 m!7707344))

(declare-fun m!7707346 () Bool)

(assert (=> b!7009684 m!7707346))

(assert (=> b!7009684 m!7707322))

(declare-fun m!7707348 () Bool)

(assert (=> b!7009684 m!7707348))

(declare-fun m!7707350 () Bool)

(assert (=> b!7009684 m!7707350))

(assert (=> b!7009684 m!7707322))

(assert (=> b!7009684 m!7707322))

(declare-fun m!7707352 () Bool)

(assert (=> b!7009684 m!7707352))

(declare-fun m!7707354 () Bool)

(assert (=> b!7009675 m!7707354))

(assert (=> b!7009675 m!7707322))

(assert (=> b!7009683 m!7707354))

(assert (=> b!7009683 m!7707322))

(assert (=> b!7009682 m!7707354))

(declare-fun m!7707356 () Bool)

(assert (=> b!7009676 m!7707356))

(declare-fun m!7707358 () Bool)

(assert (=> start!675086 m!7707358))

(declare-fun m!7707360 () Bool)

(assert (=> start!675086 m!7707360))

(declare-fun m!7707362 () Bool)

(assert (=> start!675086 m!7707362))

(declare-fun m!7707364 () Bool)

(assert (=> b!7009667 m!7707364))

(declare-fun m!7707366 () Bool)

(assert (=> b!7009667 m!7707366))

(declare-fun m!7707368 () Bool)

(assert (=> b!7009667 m!7707368))

(declare-fun m!7707370 () Bool)

(assert (=> b!7009667 m!7707370))

(declare-fun m!7707372 () Bool)

(assert (=> b!7009667 m!7707372))

(declare-fun m!7707374 () Bool)

(assert (=> b!7009667 m!7707374))

(declare-fun m!7707376 () Bool)

(assert (=> b!7009678 m!7707376))

(declare-fun m!7707378 () Bool)

(assert (=> b!7009678 m!7707378))

(declare-fun m!7707380 () Bool)

(assert (=> b!7009670 m!7707380))

(declare-fun m!7707382 () Bool)

(assert (=> b!7009670 m!7707382))

(declare-fun m!7707384 () Bool)

(assert (=> b!7009681 m!7707384))

(declare-fun m!7707386 () Bool)

(assert (=> b!7009681 m!7707386))

(assert (=> b!7009681 m!7707382))

(declare-fun m!7707388 () Bool)

(assert (=> b!7009681 m!7707388))

(declare-fun m!7707390 () Bool)

(assert (=> setNonEmpty!48332 m!7707390))

(assert (=> b!7009677 m!7707322))

(assert (=> b!7009677 m!7707322))

(declare-fun m!7707392 () Bool)

(assert (=> b!7009674 m!7707392))

(declare-fun m!7707394 () Bool)

(assert (=> b!7009674 m!7707394))

(declare-fun m!7707396 () Bool)

(assert (=> b!7009674 m!7707396))

(assert (=> b!7009674 m!7707382))

(declare-fun m!7707398 () Bool)

(assert (=> b!7009674 m!7707398))

(declare-fun m!7707400 () Bool)

(assert (=> b!7009680 m!7707400))

(push 1)

(assert (not b!7009675))

(assert (not b!7009670))

(assert (not b!7009684))

(assert (not b!7009668))

(assert (not start!675086))

(assert (not b!7009678))

(assert (not b!7009683))

(assert (not b!7009682))

(assert tp_is_empty!43849)

(assert (not b!7009666))

(assert (not b!7009672))

(assert (not b!7009674))

(assert (not setNonEmpty!48332))

(assert (not b!7009677))

(assert (not b!7009673))

(assert (not b!7009680))

(assert (not b!7009681))

(assert (not b!7009671))

(assert (not b!7009667))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2185158 () Bool)

(assert (=> d!2185158 (= (isEmpty!39340 (exprs!6808 lt!2503293)) (is-Nil!67357 (exprs!6808 lt!2503293)))))

(assert (=> b!7009680 d!2185158))

(declare-fun d!2185160 () Bool)

(declare-fun c!1302022 () Bool)

(declare-fun isEmpty!39342 (List!67482) Bool)

(assert (=> d!2185160 (= c!1302022 (isEmpty!39342 s!7408))))

(declare-fun e!4213585 () Bool)

(assert (=> d!2185160 (= (matchZipper!2852 lt!2503298 s!7408) e!4213585)))

(declare-fun b!7009762 () Bool)

(declare-fun nullableZipper!2486 ((Set Context!12616)) Bool)

(assert (=> b!7009762 (= e!4213585 (nullableZipper!2486 lt!2503298))))

(declare-fun b!7009763 () Bool)

(declare-fun head!14172 (List!67482) C!34894)

(declare-fun tail!13387 (List!67482) List!67482)

(assert (=> b!7009763 (= e!4213585 (matchZipper!2852 (derivationStepZipper!2792 lt!2503298 (head!14172 s!7408)) (tail!13387 s!7408)))))

(assert (= (and d!2185160 c!1302022) b!7009762))

(assert (= (and d!2185160 (not c!1302022)) b!7009763))

(declare-fun m!7707482 () Bool)

(assert (=> d!2185160 m!7707482))

(declare-fun m!7707484 () Bool)

(assert (=> b!7009762 m!7707484))

(declare-fun m!7707486 () Bool)

(assert (=> b!7009763 m!7707486))

(assert (=> b!7009763 m!7707486))

(declare-fun m!7707488 () Bool)

(assert (=> b!7009763 m!7707488))

(declare-fun m!7707490 () Bool)

(assert (=> b!7009763 m!7707490))

(assert (=> b!7009763 m!7707488))

(assert (=> b!7009763 m!7707490))

(declare-fun m!7707492 () Bool)

(assert (=> b!7009763 m!7707492))

(assert (=> start!675086 d!2185160))

(declare-fun bs!1866035 () Bool)

(declare-fun d!2185162 () Bool)

(assert (= bs!1866035 (and d!2185162 b!7009681)))

(declare-fun lambda!408188 () Int)

(assert (=> bs!1866035 (= lambda!408188 lambda!408139)))

(assert (=> d!2185162 true))

(declare-fun map!15607 ((Set Context!12616) Int) (Set Context!12616))

(assert (=> d!2185162 (= (appendTo!433 z1!570 ct2!306) (map!15607 z1!570 lambda!408188))))

(declare-fun bs!1866036 () Bool)

(assert (= bs!1866036 d!2185162))

(declare-fun m!7707494 () Bool)

(assert (=> bs!1866036 m!7707494))

(assert (=> start!675086 d!2185162))

(declare-fun bs!1866037 () Bool)

(declare-fun d!2185164 () Bool)

(assert (= bs!1866037 (and d!2185164 b!7009681)))

(declare-fun lambda!408191 () Int)

(assert (=> bs!1866037 (= lambda!408191 lambda!408140)))

(declare-fun forall!16232 (List!67481 Int) Bool)

(assert (=> d!2185164 (= (inv!86140 ct2!306) (forall!16232 (exprs!6808 ct2!306) lambda!408191))))

(declare-fun bs!1866038 () Bool)

(assert (= bs!1866038 d!2185164))

(declare-fun m!7707496 () Bool)

(assert (=> bs!1866038 m!7707496))

(assert (=> start!675086 d!2185164))

(declare-fun d!2185166 () Bool)

(assert (=> d!2185166 (forall!16232 (++!15305 (exprs!6808 lt!2503293) (exprs!6808 ct2!306)) lambda!408140)))

(declare-fun lt!2503433 () Unit!161302)

(declare-fun choose!52689 (List!67481 List!67481 Int) Unit!161302)

(assert (=> d!2185166 (= lt!2503433 (choose!52689 (exprs!6808 lt!2503293) (exprs!6808 ct2!306) lambda!408140))))

(assert (=> d!2185166 (forall!16232 (exprs!6808 lt!2503293) lambda!408140)))

(assert (=> d!2185166 (= (lemmaConcatPreservesForall!648 (exprs!6808 lt!2503293) (exprs!6808 ct2!306) lambda!408140) lt!2503433)))

(declare-fun bs!1866039 () Bool)

(assert (= bs!1866039 d!2185166))

(assert (=> bs!1866039 m!7707386))

(assert (=> bs!1866039 m!7707386))

(declare-fun m!7707498 () Bool)

(assert (=> bs!1866039 m!7707498))

(declare-fun m!7707500 () Bool)

(assert (=> bs!1866039 m!7707500))

(declare-fun m!7707502 () Bool)

(assert (=> bs!1866039 m!7707502))

(assert (=> b!7009670 d!2185166))

(declare-fun b!7009775 () Bool)

(declare-fun e!4213591 () Bool)

(declare-fun lt!2503436 () List!67481)

(assert (=> b!7009775 (= e!4213591 (or (not (= (exprs!6808 ct2!306) Nil!67357)) (= lt!2503436 lt!2503307)))))

(declare-fun d!2185168 () Bool)

(assert (=> d!2185168 e!4213591))

(declare-fun res!2860191 () Bool)

(assert (=> d!2185168 (=> (not res!2860191) (not e!4213591))))

(declare-fun content!13368 (List!67481) (Set Regex!17312))

(assert (=> d!2185168 (= res!2860191 (= (content!13368 lt!2503436) (set.union (content!13368 lt!2503307) (content!13368 (exprs!6808 ct2!306)))))))

(declare-fun e!4213590 () List!67481)

(assert (=> d!2185168 (= lt!2503436 e!4213590)))

(declare-fun c!1302026 () Bool)

(assert (=> d!2185168 (= c!1302026 (is-Nil!67357 lt!2503307))))

(assert (=> d!2185168 (= (++!15305 lt!2503307 (exprs!6808 ct2!306)) lt!2503436)))

(declare-fun b!7009774 () Bool)

(declare-fun res!2860192 () Bool)

(assert (=> b!7009774 (=> (not res!2860192) (not e!4213591))))

(declare-fun size!40969 (List!67481) Int)

(assert (=> b!7009774 (= res!2860192 (= (size!40969 lt!2503436) (+ (size!40969 lt!2503307) (size!40969 (exprs!6808 ct2!306)))))))

(declare-fun b!7009772 () Bool)

(assert (=> b!7009772 (= e!4213590 (exprs!6808 ct2!306))))

(declare-fun b!7009773 () Bool)

(assert (=> b!7009773 (= e!4213590 (Cons!67357 (h!73805 lt!2503307) (++!15305 (t!381236 lt!2503307) (exprs!6808 ct2!306))))))

(assert (= (and d!2185168 c!1302026) b!7009772))

(assert (= (and d!2185168 (not c!1302026)) b!7009773))

(assert (= (and d!2185168 res!2860191) b!7009774))

(assert (= (and b!7009774 res!2860192) b!7009775))

(declare-fun m!7707504 () Bool)

(assert (=> d!2185168 m!7707504))

(declare-fun m!7707506 () Bool)

(assert (=> d!2185168 m!7707506))

(declare-fun m!7707508 () Bool)

(assert (=> d!2185168 m!7707508))

(declare-fun m!7707510 () Bool)

(assert (=> b!7009774 m!7707510))

(declare-fun m!7707512 () Bool)

(assert (=> b!7009774 m!7707512))

(declare-fun m!7707514 () Bool)

(assert (=> b!7009774 m!7707514))

(declare-fun m!7707516 () Bool)

(assert (=> b!7009773 m!7707516))

(assert (=> b!7009671 d!2185168))

(declare-fun d!2185170 () Bool)

(assert (=> d!2185170 (forall!16232 (++!15305 lt!2503307 (exprs!6808 ct2!306)) lambda!408140)))

(declare-fun lt!2503437 () Unit!161302)

(assert (=> d!2185170 (= lt!2503437 (choose!52689 lt!2503307 (exprs!6808 ct2!306) lambda!408140))))

(assert (=> d!2185170 (forall!16232 lt!2503307 lambda!408140)))

(assert (=> d!2185170 (= (lemmaConcatPreservesForall!648 lt!2503307 (exprs!6808 ct2!306) lambda!408140) lt!2503437)))

(declare-fun bs!1866040 () Bool)

(assert (= bs!1866040 d!2185170))

(assert (=> bs!1866040 m!7707326))

(assert (=> bs!1866040 m!7707326))

(declare-fun m!7707518 () Bool)

(assert (=> bs!1866040 m!7707518))

(declare-fun m!7707520 () Bool)

(assert (=> bs!1866040 m!7707520))

(declare-fun m!7707522 () Bool)

(assert (=> bs!1866040 m!7707522))

(assert (=> b!7009671 d!2185170))

(declare-fun b!7009786 () Bool)

(declare-fun e!4213599 () (Set Context!12616))

(declare-fun e!4213600 () (Set Context!12616))

(assert (=> b!7009786 (= e!4213599 e!4213600)))

(declare-fun c!1302032 () Bool)

(assert (=> b!7009786 (= c!1302032 (is-Cons!67357 (exprs!6808 lt!2503310)))))

(declare-fun b!7009787 () Bool)

(declare-fun e!4213598 () Bool)

(assert (=> b!7009787 (= e!4213598 (nullable!7072 (h!73805 (exprs!6808 lt!2503310))))))

(declare-fun b!7009788 () Bool)

(declare-fun call!636666 () (Set Context!12616))

(assert (=> b!7009788 (= e!4213600 call!636666)))

(declare-fun b!7009789 () Bool)

(assert (=> b!7009789 (= e!4213600 (as set.empty (Set Context!12616)))))

(declare-fun bm!636661 () Bool)

(assert (=> bm!636661 (= call!636666 (derivationStepZipperDown!2030 (h!73805 (exprs!6808 lt!2503310)) (Context!12617 (t!381236 (exprs!6808 lt!2503310))) (h!73806 s!7408)))))

(declare-fun b!7009790 () Bool)

(assert (=> b!7009790 (= e!4213599 (set.union call!636666 (derivationStepZipperUp!1962 (Context!12617 (t!381236 (exprs!6808 lt!2503310))) (h!73806 s!7408))))))

(declare-fun d!2185172 () Bool)

(declare-fun c!1302031 () Bool)

(assert (=> d!2185172 (= c!1302031 e!4213598)))

(declare-fun res!2860195 () Bool)

(assert (=> d!2185172 (=> (not res!2860195) (not e!4213598))))

(assert (=> d!2185172 (= res!2860195 (is-Cons!67357 (exprs!6808 lt!2503310)))))

(assert (=> d!2185172 (= (derivationStepZipperUp!1962 lt!2503310 (h!73806 s!7408)) e!4213599)))

(assert (= (and d!2185172 res!2860195) b!7009787))

(assert (= (and d!2185172 c!1302031) b!7009790))

(assert (= (and d!2185172 (not c!1302031)) b!7009786))

(assert (= (and b!7009786 c!1302032) b!7009788))

(assert (= (and b!7009786 (not c!1302032)) b!7009789))

(assert (= (or b!7009790 b!7009788) bm!636661))

(declare-fun m!7707524 () Bool)

(assert (=> b!7009787 m!7707524))

(declare-fun m!7707526 () Bool)

(assert (=> bm!636661 m!7707526))

(declare-fun m!7707528 () Bool)

(assert (=> b!7009790 m!7707528))

(assert (=> b!7009671 d!2185172))

(declare-fun b!7009813 () Bool)

(declare-fun e!4213615 () (Set Context!12616))

(declare-fun e!4213617 () (Set Context!12616))

(assert (=> b!7009813 (= e!4213615 e!4213617)))

(declare-fun c!1302047 () Bool)

(assert (=> b!7009813 (= c!1302047 (is-Concat!26157 (h!73805 (exprs!6808 lt!2503293))))))

(declare-fun b!7009814 () Bool)

(declare-fun c!1302043 () Bool)

(assert (=> b!7009814 (= c!1302043 (is-Star!17312 (h!73805 (exprs!6808 lt!2503293))))))

(declare-fun e!4213618 () (Set Context!12616))

(assert (=> b!7009814 (= e!4213617 e!4213618)))

(declare-fun b!7009815 () Bool)

(declare-fun e!4213616 () (Set Context!12616))

(declare-fun call!636679 () (Set Context!12616))

(declare-fun call!636680 () (Set Context!12616))

(assert (=> b!7009815 (= e!4213616 (set.union call!636679 call!636680))))

(declare-fun b!7009816 () Bool)

(declare-fun call!636683 () (Set Context!12616))

(assert (=> b!7009816 (= e!4213618 call!636683)))

(declare-fun b!7009817 () Bool)

(declare-fun e!4213613 () Bool)

(assert (=> b!7009817 (= e!4213613 (nullable!7072 (regOne!35136 (h!73805 (exprs!6808 lt!2503293)))))))

(declare-fun b!7009818 () Bool)

(declare-fun call!636681 () (Set Context!12616))

(assert (=> b!7009818 (= e!4213615 (set.union call!636679 call!636681))))

(declare-fun bm!636675 () Bool)

(declare-fun call!636684 () List!67481)

(declare-fun call!636682 () List!67481)

(assert (=> bm!636675 (= call!636684 call!636682)))

(declare-fun b!7009819 () Bool)

(assert (=> b!7009819 (= e!4213618 (as set.empty (Set Context!12616)))))

(declare-fun b!7009820 () Bool)

(declare-fun e!4213614 () (Set Context!12616))

(assert (=> b!7009820 (= e!4213614 e!4213616)))

(declare-fun c!1302045 () Bool)

(assert (=> b!7009820 (= c!1302045 (is-Union!17312 (h!73805 (exprs!6808 lt!2503293))))))

(declare-fun bm!636676 () Bool)

(assert (=> bm!636676 (= call!636681 call!636680)))

(declare-fun bm!636677 () Bool)

(declare-fun c!1302044 () Bool)

(assert (=> bm!636677 (= call!636680 (derivationStepZipperDown!2030 (ite c!1302045 (regTwo!35137 (h!73805 (exprs!6808 lt!2503293))) (ite c!1302044 (regTwo!35136 (h!73805 (exprs!6808 lt!2503293))) (ite c!1302047 (regOne!35136 (h!73805 (exprs!6808 lt!2503293))) (reg!17641 (h!73805 (exprs!6808 lt!2503293)))))) (ite (or c!1302045 c!1302044) lt!2503310 (Context!12617 call!636684)) (h!73806 s!7408)))))

(declare-fun b!7009821 () Bool)

(assert (=> b!7009821 (= e!4213614 (set.insert lt!2503310 (as set.empty (Set Context!12616))))))

(declare-fun bm!636674 () Bool)

(declare-fun $colon$colon!2527 (List!67481 Regex!17312) List!67481)

(assert (=> bm!636674 (= call!636682 ($colon$colon!2527 (exprs!6808 lt!2503310) (ite (or c!1302044 c!1302047) (regTwo!35136 (h!73805 (exprs!6808 lt!2503293))) (h!73805 (exprs!6808 lt!2503293)))))))

(declare-fun d!2185174 () Bool)

(declare-fun c!1302046 () Bool)

(assert (=> d!2185174 (= c!1302046 (and (is-ElementMatch!17312 (h!73805 (exprs!6808 lt!2503293))) (= (c!1302010 (h!73805 (exprs!6808 lt!2503293))) (h!73806 s!7408))))))

(assert (=> d!2185174 (= (derivationStepZipperDown!2030 (h!73805 (exprs!6808 lt!2503293)) lt!2503310 (h!73806 s!7408)) e!4213614)))

(declare-fun b!7009822 () Bool)

(assert (=> b!7009822 (= c!1302044 e!4213613)))

(declare-fun res!2860198 () Bool)

(assert (=> b!7009822 (=> (not res!2860198) (not e!4213613))))

(assert (=> b!7009822 (= res!2860198 (is-Concat!26157 (h!73805 (exprs!6808 lt!2503293))))))

(assert (=> b!7009822 (= e!4213616 e!4213615)))

(declare-fun bm!636678 () Bool)

(assert (=> bm!636678 (= call!636683 call!636681)))

(declare-fun bm!636679 () Bool)

(assert (=> bm!636679 (= call!636679 (derivationStepZipperDown!2030 (ite c!1302045 (regOne!35137 (h!73805 (exprs!6808 lt!2503293))) (regOne!35136 (h!73805 (exprs!6808 lt!2503293)))) (ite c!1302045 lt!2503310 (Context!12617 call!636682)) (h!73806 s!7408)))))

(declare-fun b!7009823 () Bool)

(assert (=> b!7009823 (= e!4213617 call!636683)))

(assert (= (and d!2185174 c!1302046) b!7009821))

(assert (= (and d!2185174 (not c!1302046)) b!7009820))

(assert (= (and b!7009820 c!1302045) b!7009815))

(assert (= (and b!7009820 (not c!1302045)) b!7009822))

(assert (= (and b!7009822 res!2860198) b!7009817))

(assert (= (and b!7009822 c!1302044) b!7009818))

(assert (= (and b!7009822 (not c!1302044)) b!7009813))

(assert (= (and b!7009813 c!1302047) b!7009823))

(assert (= (and b!7009813 (not c!1302047)) b!7009814))

(assert (= (and b!7009814 c!1302043) b!7009816))

(assert (= (and b!7009814 (not c!1302043)) b!7009819))

(assert (= (or b!7009823 b!7009816) bm!636675))

(assert (= (or b!7009823 b!7009816) bm!636678))

(assert (= (or b!7009818 bm!636678) bm!636676))

(assert (= (or b!7009818 bm!636675) bm!636674))

(assert (= (or b!7009815 b!7009818) bm!636679))

(assert (= (or b!7009815 bm!636676) bm!636677))

(declare-fun m!7707530 () Bool)

(assert (=> bm!636679 m!7707530))

(declare-fun m!7707532 () Bool)

(assert (=> b!7009821 m!7707532))

(declare-fun m!7707534 () Bool)

(assert (=> bm!636677 m!7707534))

(declare-fun m!7707536 () Bool)

(assert (=> b!7009817 m!7707536))

(declare-fun m!7707538 () Bool)

(assert (=> bm!636674 m!7707538))

(assert (=> b!7009671 d!2185174))

(declare-fun b!7009827 () Bool)

(declare-fun lt!2503438 () List!67481)

(declare-fun e!4213620 () Bool)

(assert (=> b!7009827 (= e!4213620 (or (not (= (exprs!6808 ct2!306) Nil!67357)) (= lt!2503438 (exprs!6808 lt!2503293))))))

(declare-fun d!2185176 () Bool)

(assert (=> d!2185176 e!4213620))

(declare-fun res!2860199 () Bool)

(assert (=> d!2185176 (=> (not res!2860199) (not e!4213620))))

(assert (=> d!2185176 (= res!2860199 (= (content!13368 lt!2503438) (set.union (content!13368 (exprs!6808 lt!2503293)) (content!13368 (exprs!6808 ct2!306)))))))

(declare-fun e!4213619 () List!67481)

(assert (=> d!2185176 (= lt!2503438 e!4213619)))

(declare-fun c!1302048 () Bool)

(assert (=> d!2185176 (= c!1302048 (is-Nil!67357 (exprs!6808 lt!2503293)))))

(assert (=> d!2185176 (= (++!15305 (exprs!6808 lt!2503293) (exprs!6808 ct2!306)) lt!2503438)))

(declare-fun b!7009826 () Bool)

(declare-fun res!2860200 () Bool)

(assert (=> b!7009826 (=> (not res!2860200) (not e!4213620))))

(assert (=> b!7009826 (= res!2860200 (= (size!40969 lt!2503438) (+ (size!40969 (exprs!6808 lt!2503293)) (size!40969 (exprs!6808 ct2!306)))))))

(declare-fun b!7009824 () Bool)

(assert (=> b!7009824 (= e!4213619 (exprs!6808 ct2!306))))

(declare-fun b!7009825 () Bool)

(assert (=> b!7009825 (= e!4213619 (Cons!67357 (h!73805 (exprs!6808 lt!2503293)) (++!15305 (t!381236 (exprs!6808 lt!2503293)) (exprs!6808 ct2!306))))))

(assert (= (and d!2185176 c!1302048) b!7009824))

(assert (= (and d!2185176 (not c!1302048)) b!7009825))

(assert (= (and d!2185176 res!2860199) b!7009826))

(assert (= (and b!7009826 res!2860200) b!7009827))

(declare-fun m!7707540 () Bool)

(assert (=> d!2185176 m!7707540))

(declare-fun m!7707542 () Bool)

(assert (=> d!2185176 m!7707542))

(assert (=> d!2185176 m!7707508))

(declare-fun m!7707544 () Bool)

(assert (=> b!7009826 m!7707544))

(declare-fun m!7707546 () Bool)

(assert (=> b!7009826 m!7707546))

(assert (=> b!7009826 m!7707514))

(declare-fun m!7707548 () Bool)

(assert (=> b!7009825 m!7707548))

(assert (=> b!7009681 d!2185176))

(assert (=> b!7009681 d!2185166))

(declare-fun d!2185178 () Bool)

(declare-fun e!4213623 () Bool)

(assert (=> d!2185178 e!4213623))

(declare-fun res!2860203 () Bool)

(assert (=> d!2185178 (=> (not res!2860203) (not e!4213623))))

(declare-fun lt!2503441 () Context!12616)

(declare-fun dynLambda!27097 (Int Context!12616) Context!12616)

(assert (=> d!2185178 (= res!2860203 (= lt!2503309 (dynLambda!27097 lambda!408139 lt!2503441)))))

(declare-fun choose!52690 ((Set Context!12616) Int Context!12616) Context!12616)

(assert (=> d!2185178 (= lt!2503441 (choose!52690 z1!570 lambda!408139 lt!2503309))))

(assert (=> d!2185178 (set.member lt!2503309 (map!15607 z1!570 lambda!408139))))

(assert (=> d!2185178 (= (mapPost2!167 z1!570 lambda!408139 lt!2503309) lt!2503441)))

(declare-fun b!7009831 () Bool)

(assert (=> b!7009831 (= e!4213623 (set.member lt!2503441 z1!570))))

(assert (= (and d!2185178 res!2860203) b!7009831))

(declare-fun b_lambda!264331 () Bool)

(assert (=> (not b_lambda!264331) (not d!2185178)))

(declare-fun m!7707550 () Bool)

(assert (=> d!2185178 m!7707550))

(declare-fun m!7707552 () Bool)

(assert (=> d!2185178 m!7707552))

(declare-fun m!7707554 () Bool)

(assert (=> d!2185178 m!7707554))

(declare-fun m!7707556 () Bool)

(assert (=> d!2185178 m!7707556))

(declare-fun m!7707558 () Bool)

(assert (=> b!7009831 m!7707558))

(assert (=> b!7009681 d!2185178))

(declare-fun d!2185180 () Bool)

(declare-fun c!1302049 () Bool)

(assert (=> d!2185180 (= c!1302049 (isEmpty!39342 (t!381237 s!7408)))))

(declare-fun e!4213624 () Bool)

(assert (=> d!2185180 (= (matchZipper!2852 lt!2503288 (t!381237 s!7408)) e!4213624)))

(declare-fun b!7009832 () Bool)

(assert (=> b!7009832 (= e!4213624 (nullableZipper!2486 lt!2503288))))

(declare-fun b!7009833 () Bool)

(assert (=> b!7009833 (= e!4213624 (matchZipper!2852 (derivationStepZipper!2792 lt!2503288 (head!14172 (t!381237 s!7408))) (tail!13387 (t!381237 s!7408))))))

(assert (= (and d!2185180 c!1302049) b!7009832))

(assert (= (and d!2185180 (not c!1302049)) b!7009833))

(declare-fun m!7707560 () Bool)

(assert (=> d!2185180 m!7707560))

(declare-fun m!7707562 () Bool)

(assert (=> b!7009832 m!7707562))

(declare-fun m!7707564 () Bool)

(assert (=> b!7009833 m!7707564))

(assert (=> b!7009833 m!7707564))

(declare-fun m!7707566 () Bool)

(assert (=> b!7009833 m!7707566))

(declare-fun m!7707568 () Bool)

(assert (=> b!7009833 m!7707568))

(assert (=> b!7009833 m!7707566))

(assert (=> b!7009833 m!7707568))

(declare-fun m!7707570 () Bool)

(assert (=> b!7009833 m!7707570))

(assert (=> b!7009682 d!2185180))

(declare-fun bs!1866041 () Bool)

(declare-fun d!2185182 () Bool)

(assert (= bs!1866041 (and d!2185182 b!7009681)))

(declare-fun lambda!408192 () Int)

(assert (=> bs!1866041 (= lambda!408192 lambda!408139)))

(declare-fun bs!1866042 () Bool)

(assert (= bs!1866042 (and d!2185182 d!2185162)))

(assert (=> bs!1866042 (= lambda!408192 lambda!408188)))

(assert (=> d!2185182 true))

(assert (=> d!2185182 (= (appendTo!433 lt!2503301 ct2!306) (map!15607 lt!2503301 lambda!408192))))

(declare-fun bs!1866043 () Bool)

(assert (= bs!1866043 d!2185182))

(declare-fun m!7707572 () Bool)

(assert (=> bs!1866043 m!7707572))

(assert (=> b!7009673 d!2185182))

(declare-fun b!7009834 () Bool)

(declare-fun e!4213627 () (Set Context!12616))

(declare-fun e!4213629 () (Set Context!12616))

(assert (=> b!7009834 (= e!4213627 e!4213629)))

(declare-fun c!1302054 () Bool)

(assert (=> b!7009834 (= c!1302054 (is-Concat!26157 (h!73805 (exprs!6808 lt!2503293))))))

(declare-fun b!7009835 () Bool)

(declare-fun c!1302050 () Bool)

(assert (=> b!7009835 (= c!1302050 (is-Star!17312 (h!73805 (exprs!6808 lt!2503293))))))

(declare-fun e!4213630 () (Set Context!12616))

(assert (=> b!7009835 (= e!4213629 e!4213630)))

(declare-fun b!7009836 () Bool)

(declare-fun e!4213628 () (Set Context!12616))

(declare-fun call!636685 () (Set Context!12616))

(declare-fun call!636686 () (Set Context!12616))

(assert (=> b!7009836 (= e!4213628 (set.union call!636685 call!636686))))

(declare-fun b!7009837 () Bool)

(declare-fun call!636689 () (Set Context!12616))

(assert (=> b!7009837 (= e!4213630 call!636689)))

(declare-fun b!7009838 () Bool)

(declare-fun e!4213625 () Bool)

(assert (=> b!7009838 (= e!4213625 (nullable!7072 (regOne!35136 (h!73805 (exprs!6808 lt!2503293)))))))

(declare-fun b!7009839 () Bool)

(declare-fun call!636687 () (Set Context!12616))

(assert (=> b!7009839 (= e!4213627 (set.union call!636685 call!636687))))

(declare-fun bm!636681 () Bool)

(declare-fun call!636690 () List!67481)

(declare-fun call!636688 () List!67481)

(assert (=> bm!636681 (= call!636690 call!636688)))

(declare-fun b!7009840 () Bool)

(assert (=> b!7009840 (= e!4213630 (as set.empty (Set Context!12616)))))

(declare-fun b!7009841 () Bool)

(declare-fun e!4213626 () (Set Context!12616))

(assert (=> b!7009841 (= e!4213626 e!4213628)))

(declare-fun c!1302052 () Bool)

(assert (=> b!7009841 (= c!1302052 (is-Union!17312 (h!73805 (exprs!6808 lt!2503293))))))

(declare-fun bm!636682 () Bool)

(assert (=> bm!636682 (= call!636687 call!636686)))

(declare-fun bm!636683 () Bool)

(declare-fun c!1302051 () Bool)

(assert (=> bm!636683 (= call!636686 (derivationStepZipperDown!2030 (ite c!1302052 (regTwo!35137 (h!73805 (exprs!6808 lt!2503293))) (ite c!1302051 (regTwo!35136 (h!73805 (exprs!6808 lt!2503293))) (ite c!1302054 (regOne!35136 (h!73805 (exprs!6808 lt!2503293))) (reg!17641 (h!73805 (exprs!6808 lt!2503293)))))) (ite (or c!1302052 c!1302051) lt!2503316 (Context!12617 call!636690)) (h!73806 s!7408)))))

(declare-fun b!7009842 () Bool)

(assert (=> b!7009842 (= e!4213626 (set.insert lt!2503316 (as set.empty (Set Context!12616))))))

(declare-fun bm!636680 () Bool)

(assert (=> bm!636680 (= call!636688 ($colon$colon!2527 (exprs!6808 lt!2503316) (ite (or c!1302051 c!1302054) (regTwo!35136 (h!73805 (exprs!6808 lt!2503293))) (h!73805 (exprs!6808 lt!2503293)))))))

(declare-fun d!2185184 () Bool)

(declare-fun c!1302053 () Bool)

(assert (=> d!2185184 (= c!1302053 (and (is-ElementMatch!17312 (h!73805 (exprs!6808 lt!2503293))) (= (c!1302010 (h!73805 (exprs!6808 lt!2503293))) (h!73806 s!7408))))))

(assert (=> d!2185184 (= (derivationStepZipperDown!2030 (h!73805 (exprs!6808 lt!2503293)) lt!2503316 (h!73806 s!7408)) e!4213626)))

(declare-fun b!7009843 () Bool)

(assert (=> b!7009843 (= c!1302051 e!4213625)))

(declare-fun res!2860204 () Bool)

(assert (=> b!7009843 (=> (not res!2860204) (not e!4213625))))

(assert (=> b!7009843 (= res!2860204 (is-Concat!26157 (h!73805 (exprs!6808 lt!2503293))))))

(assert (=> b!7009843 (= e!4213628 e!4213627)))

(declare-fun bm!636684 () Bool)

(assert (=> bm!636684 (= call!636689 call!636687)))

(declare-fun bm!636685 () Bool)

(assert (=> bm!636685 (= call!636685 (derivationStepZipperDown!2030 (ite c!1302052 (regOne!35137 (h!73805 (exprs!6808 lt!2503293))) (regOne!35136 (h!73805 (exprs!6808 lt!2503293)))) (ite c!1302052 lt!2503316 (Context!12617 call!636688)) (h!73806 s!7408)))))

(declare-fun b!7009844 () Bool)

(assert (=> b!7009844 (= e!4213629 call!636689)))

(assert (= (and d!2185184 c!1302053) b!7009842))

(assert (= (and d!2185184 (not c!1302053)) b!7009841))

(assert (= (and b!7009841 c!1302052) b!7009836))

(assert (= (and b!7009841 (not c!1302052)) b!7009843))

(assert (= (and b!7009843 res!2860204) b!7009838))

(assert (= (and b!7009843 c!1302051) b!7009839))

(assert (= (and b!7009843 (not c!1302051)) b!7009834))

(assert (= (and b!7009834 c!1302054) b!7009844))

(assert (= (and b!7009834 (not c!1302054)) b!7009835))

(assert (= (and b!7009835 c!1302050) b!7009837))

(assert (= (and b!7009835 (not c!1302050)) b!7009840))

(assert (= (or b!7009844 b!7009837) bm!636681))

(assert (= (or b!7009844 b!7009837) bm!636684))

(assert (= (or b!7009839 bm!636684) bm!636682))

(assert (= (or b!7009839 bm!636681) bm!636680))

(assert (= (or b!7009836 b!7009839) bm!636685))

(assert (= (or b!7009836 bm!636682) bm!636683))

(declare-fun m!7707574 () Bool)

(assert (=> bm!636685 m!7707574))

(declare-fun m!7707576 () Bool)

(assert (=> b!7009842 m!7707576))

(declare-fun m!7707578 () Bool)

(assert (=> bm!636683 m!7707578))

(assert (=> b!7009838 m!7707536))

(declare-fun m!7707580 () Bool)

(assert (=> bm!636680 m!7707580))

(assert (=> b!7009673 d!2185184))

(declare-fun bs!1866044 () Bool)

(declare-fun d!2185186 () Bool)

(assert (= bs!1866044 (and d!2185186 b!7009681)))

(declare-fun lambda!408195 () Int)

(assert (=> bs!1866044 (= lambda!408195 lambda!408140)))

(declare-fun bs!1866045 () Bool)

(assert (= bs!1866045 (and d!2185186 d!2185164)))

(assert (=> bs!1866045 (= lambda!408195 lambda!408191)))

(assert (=> d!2185186 (= (derivationStepZipperDown!2030 (h!73805 (exprs!6808 lt!2503293)) (Context!12617 (++!15305 (exprs!6808 lt!2503316) (exprs!6808 ct2!306))) (h!73806 s!7408)) (appendTo!433 (derivationStepZipperDown!2030 (h!73805 (exprs!6808 lt!2503293)) lt!2503316 (h!73806 s!7408)) ct2!306))))

(declare-fun lt!2503447 () Unit!161302)

(assert (=> d!2185186 (= lt!2503447 (lemmaConcatPreservesForall!648 (exprs!6808 lt!2503316) (exprs!6808 ct2!306) lambda!408195))))

(declare-fun lt!2503446 () Unit!161302)

(declare-fun choose!52691 (Context!12616 Regex!17312 C!34894 Context!12616) Unit!161302)

(assert (=> d!2185186 (= lt!2503446 (choose!52691 lt!2503316 (h!73805 (exprs!6808 lt!2503293)) (h!73806 s!7408) ct2!306))))

(declare-fun validRegex!8887 (Regex!17312) Bool)

(assert (=> d!2185186 (validRegex!8887 (h!73805 (exprs!6808 lt!2503293)))))

(assert (=> d!2185186 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!11 lt!2503316 (h!73805 (exprs!6808 lt!2503293)) (h!73806 s!7408) ct2!306) lt!2503446)))

(declare-fun bs!1866046 () Bool)

(assert (= bs!1866046 d!2185186))

(declare-fun m!7707582 () Bool)

(assert (=> bs!1866046 m!7707582))

(declare-fun m!7707584 () Bool)

(assert (=> bs!1866046 m!7707584))

(assert (=> bs!1866046 m!7707330))

(declare-fun m!7707586 () Bool)

(assert (=> bs!1866046 m!7707586))

(declare-fun m!7707588 () Bool)

(assert (=> bs!1866046 m!7707588))

(assert (=> bs!1866046 m!7707330))

(declare-fun m!7707590 () Bool)

(assert (=> bs!1866046 m!7707590))

(declare-fun m!7707592 () Bool)

(assert (=> bs!1866046 m!7707592))

(assert (=> b!7009673 d!2185186))

(assert (=> b!7009673 d!2185170))

(declare-fun d!2185188 () Bool)

(declare-fun isEmpty!39343 (Option!16797) Bool)

(assert (=> d!2185188 (= (isDefined!13498 (findConcatSeparationZippers!313 lt!2503301 (set.insert ct2!306 (as set.empty (Set Context!12616))) Nil!67358 (t!381237 s!7408) (t!381237 s!7408))) (not (isEmpty!39343 (findConcatSeparationZippers!313 lt!2503301 (set.insert ct2!306 (as set.empty (Set Context!12616))) Nil!67358 (t!381237 s!7408) (t!381237 s!7408)))))))

(declare-fun bs!1866047 () Bool)

(assert (= bs!1866047 d!2185188))

(assert (=> bs!1866047 m!7707334))

(declare-fun m!7707594 () Bool)

(assert (=> bs!1866047 m!7707594))

(assert (=> b!7009673 d!2185188))

(declare-fun b!7009856 () Bool)

(declare-fun e!4213636 () Bool)

(declare-fun lt!2503450 () List!67482)

(assert (=> b!7009856 (= e!4213636 (or (not (= (t!381237 s!7408) Nil!67358)) (= lt!2503450 Nil!67358)))))

(declare-fun b!7009854 () Bool)

(declare-fun e!4213635 () List!67482)

(assert (=> b!7009854 (= e!4213635 (Cons!67358 (h!73806 Nil!67358) (++!15306 (t!381237 Nil!67358) (t!381237 s!7408))))))

(declare-fun d!2185190 () Bool)

(assert (=> d!2185190 e!4213636))

(declare-fun res!2860209 () Bool)

(assert (=> d!2185190 (=> (not res!2860209) (not e!4213636))))

(declare-fun content!13369 (List!67482) (Set C!34894))

(assert (=> d!2185190 (= res!2860209 (= (content!13369 lt!2503450) (set.union (content!13369 Nil!67358) (content!13369 (t!381237 s!7408)))))))

(assert (=> d!2185190 (= lt!2503450 e!4213635)))

(declare-fun c!1302058 () Bool)

(assert (=> d!2185190 (= c!1302058 (is-Nil!67358 Nil!67358))))

(assert (=> d!2185190 (= (++!15306 Nil!67358 (t!381237 s!7408)) lt!2503450)))

(declare-fun b!7009855 () Bool)

(declare-fun res!2860210 () Bool)

(assert (=> b!7009855 (=> (not res!2860210) (not e!4213636))))

(declare-fun size!40970 (List!67482) Int)

(assert (=> b!7009855 (= res!2860210 (= (size!40970 lt!2503450) (+ (size!40970 Nil!67358) (size!40970 (t!381237 s!7408)))))))

(declare-fun b!7009853 () Bool)

(assert (=> b!7009853 (= e!4213635 (t!381237 s!7408))))

(assert (= (and d!2185190 c!1302058) b!7009853))

(assert (= (and d!2185190 (not c!1302058)) b!7009854))

(assert (= (and d!2185190 res!2860209) b!7009855))

(assert (= (and b!7009855 res!2860210) b!7009856))

(declare-fun m!7707596 () Bool)

(assert (=> b!7009854 m!7707596))

(declare-fun m!7707598 () Bool)

(assert (=> d!2185190 m!7707598))

(declare-fun m!7707600 () Bool)

(assert (=> d!2185190 m!7707600))

(declare-fun m!7707602 () Bool)

(assert (=> d!2185190 m!7707602))

(declare-fun m!7707604 () Bool)

(assert (=> b!7009855 m!7707604))

(declare-fun m!7707606 () Bool)

(assert (=> b!7009855 m!7707606))

(declare-fun m!7707608 () Bool)

(assert (=> b!7009855 m!7707608))

(assert (=> b!7009673 d!2185190))

(declare-fun d!2185192 () Bool)

(assert (=> d!2185192 (isDefined!13498 (findConcatSeparationZippers!313 lt!2503301 (set.insert ct2!306 (as set.empty (Set Context!12616))) Nil!67358 (t!381237 s!7408) (t!381237 s!7408)))))

(declare-fun lt!2503453 () Unit!161302)

(declare-fun choose!52692 ((Set Context!12616) Context!12616 List!67482) Unit!161302)

(assert (=> d!2185192 (= lt!2503453 (choose!52692 lt!2503301 ct2!306 (t!381237 s!7408)))))

(assert (=> d!2185192 (matchZipper!2852 (appendTo!433 lt!2503301 ct2!306) (t!381237 s!7408))))

(assert (=> d!2185192 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!313 lt!2503301 ct2!306 (t!381237 s!7408)) lt!2503453)))

(declare-fun bs!1866048 () Bool)

(assert (= bs!1866048 d!2185192))

(assert (=> bs!1866048 m!7707344))

(declare-fun m!7707610 () Bool)

(assert (=> bs!1866048 m!7707610))

(assert (=> bs!1866048 m!7707334))

(assert (=> bs!1866048 m!7707336))

(declare-fun m!7707612 () Bool)

(assert (=> bs!1866048 m!7707612))

(assert (=> bs!1866048 m!7707332))

(assert (=> bs!1866048 m!7707332))

(assert (=> bs!1866048 m!7707334))

(assert (=> bs!1866048 m!7707344))

(assert (=> b!7009673 d!2185192))

(declare-fun b!7009875 () Bool)

(declare-fun res!2860224 () Bool)

(declare-fun e!4213651 () Bool)

(assert (=> b!7009875 (=> (not res!2860224) (not e!4213651))))

(declare-fun lt!2503461 () Option!16797)

(declare-fun get!23618 (Option!16797) tuple2!67930)

(assert (=> b!7009875 (= res!2860224 (matchZipper!2852 (set.insert ct2!306 (as set.empty (Set Context!12616))) (_2!37268 (get!23618 lt!2503461))))))

(declare-fun b!7009876 () Bool)

(declare-fun e!4213650 () Option!16797)

(declare-fun e!4213648 () Option!16797)

(assert (=> b!7009876 (= e!4213650 e!4213648)))

(declare-fun c!1302064 () Bool)

(assert (=> b!7009876 (= c!1302064 (is-Nil!67358 (t!381237 s!7408)))))

(declare-fun b!7009877 () Bool)

(assert (=> b!7009877 (= e!4213651 (= (++!15306 (_1!37268 (get!23618 lt!2503461)) (_2!37268 (get!23618 lt!2503461))) (t!381237 s!7408)))))

(declare-fun b!7009878 () Bool)

(declare-fun e!4213649 () Bool)

(assert (=> b!7009878 (= e!4213649 (not (isDefined!13498 lt!2503461)))))

(declare-fun b!7009879 () Bool)

(assert (=> b!7009879 (= e!4213650 (Some!16796 (tuple2!67931 Nil!67358 (t!381237 s!7408))))))

(declare-fun b!7009880 () Bool)

(assert (=> b!7009880 (= e!4213648 None!16796)))

(declare-fun b!7009882 () Bool)

(declare-fun lt!2503460 () Unit!161302)

(declare-fun lt!2503462 () Unit!161302)

(assert (=> b!7009882 (= lt!2503460 lt!2503462)))

(assert (=> b!7009882 (= (++!15306 (++!15306 Nil!67358 (Cons!67358 (h!73806 (t!381237 s!7408)) Nil!67358)) (t!381237 (t!381237 s!7408))) (t!381237 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2893 (List!67482 C!34894 List!67482 List!67482) Unit!161302)

(assert (=> b!7009882 (= lt!2503462 (lemmaMoveElementToOtherListKeepsConcatEq!2893 Nil!67358 (h!73806 (t!381237 s!7408)) (t!381237 (t!381237 s!7408)) (t!381237 s!7408)))))

(assert (=> b!7009882 (= e!4213648 (findConcatSeparationZippers!313 lt!2503301 (set.insert ct2!306 (as set.empty (Set Context!12616))) (++!15306 Nil!67358 (Cons!67358 (h!73806 (t!381237 s!7408)) Nil!67358)) (t!381237 (t!381237 s!7408)) (t!381237 s!7408)))))

(declare-fun b!7009883 () Bool)

(declare-fun e!4213647 () Bool)

(assert (=> b!7009883 (= e!4213647 (matchZipper!2852 (set.insert ct2!306 (as set.empty (Set Context!12616))) (t!381237 s!7408)))))

(declare-fun d!2185194 () Bool)

(assert (=> d!2185194 e!4213649))

(declare-fun res!2860223 () Bool)

(assert (=> d!2185194 (=> res!2860223 e!4213649)))

(assert (=> d!2185194 (= res!2860223 e!4213651)))

(declare-fun res!2860221 () Bool)

(assert (=> d!2185194 (=> (not res!2860221) (not e!4213651))))

(assert (=> d!2185194 (= res!2860221 (isDefined!13498 lt!2503461))))

(assert (=> d!2185194 (= lt!2503461 e!4213650)))

(declare-fun c!1302063 () Bool)

(assert (=> d!2185194 (= c!1302063 e!4213647)))

(declare-fun res!2860225 () Bool)

(assert (=> d!2185194 (=> (not res!2860225) (not e!4213647))))

(assert (=> d!2185194 (= res!2860225 (matchZipper!2852 lt!2503301 Nil!67358))))

(assert (=> d!2185194 (= (++!15306 Nil!67358 (t!381237 s!7408)) (t!381237 s!7408))))

(assert (=> d!2185194 (= (findConcatSeparationZippers!313 lt!2503301 (set.insert ct2!306 (as set.empty (Set Context!12616))) Nil!67358 (t!381237 s!7408) (t!381237 s!7408)) lt!2503461)))

(declare-fun b!7009881 () Bool)

(declare-fun res!2860222 () Bool)

(assert (=> b!7009881 (=> (not res!2860222) (not e!4213651))))

(assert (=> b!7009881 (= res!2860222 (matchZipper!2852 lt!2503301 (_1!37268 (get!23618 lt!2503461))))))

(assert (= (and d!2185194 res!2860225) b!7009883))

(assert (= (and d!2185194 c!1302063) b!7009879))

(assert (= (and d!2185194 (not c!1302063)) b!7009876))

(assert (= (and b!7009876 c!1302064) b!7009880))

(assert (= (and b!7009876 (not c!1302064)) b!7009882))

(assert (= (and d!2185194 res!2860221) b!7009881))

(assert (= (and b!7009881 res!2860222) b!7009875))

(assert (= (and b!7009875 res!2860224) b!7009877))

(assert (= (and d!2185194 (not res!2860223)) b!7009878))

(declare-fun m!7707614 () Bool)

(assert (=> b!7009882 m!7707614))

(assert (=> b!7009882 m!7707614))

(declare-fun m!7707616 () Bool)

(assert (=> b!7009882 m!7707616))

(declare-fun m!7707618 () Bool)

(assert (=> b!7009882 m!7707618))

(assert (=> b!7009882 m!7707332))

(assert (=> b!7009882 m!7707614))

(declare-fun m!7707620 () Bool)

(assert (=> b!7009882 m!7707620))

(assert (=> b!7009883 m!7707332))

(declare-fun m!7707622 () Bool)

(assert (=> b!7009883 m!7707622))

(declare-fun m!7707624 () Bool)

(assert (=> b!7009881 m!7707624))

(declare-fun m!7707626 () Bool)

(assert (=> b!7009881 m!7707626))

(assert (=> b!7009877 m!7707624))

(declare-fun m!7707628 () Bool)

(assert (=> b!7009877 m!7707628))

(declare-fun m!7707630 () Bool)

(assert (=> d!2185194 m!7707630))

(declare-fun m!7707632 () Bool)

(assert (=> d!2185194 m!7707632))

(assert (=> d!2185194 m!7707338))

(assert (=> b!7009875 m!7707624))

(assert (=> b!7009875 m!7707332))

(declare-fun m!7707634 () Bool)

(assert (=> b!7009875 m!7707634))

(assert (=> b!7009878 m!7707630))

(assert (=> b!7009673 d!2185194))

(assert (=> b!7009683 d!2185180))

(assert (=> b!7009683 d!2185170))

(declare-fun d!2185196 () Bool)

(declare-fun c!1302065 () Bool)

(assert (=> d!2185196 (= c!1302065 (isEmpty!39342 (t!381237 s!7408)))))

(declare-fun e!4213652 () Bool)

(assert (=> d!2185196 (= (matchZipper!2852 lt!2503318 (t!381237 s!7408)) e!4213652)))

(declare-fun b!7009884 () Bool)

(assert (=> b!7009884 (= e!4213652 (nullableZipper!2486 lt!2503318))))

(declare-fun b!7009885 () Bool)

(assert (=> b!7009885 (= e!4213652 (matchZipper!2852 (derivationStepZipper!2792 lt!2503318 (head!14172 (t!381237 s!7408))) (tail!13387 (t!381237 s!7408))))))

(assert (= (and d!2185196 c!1302065) b!7009884))

(assert (= (and d!2185196 (not c!1302065)) b!7009885))

(assert (=> d!2185196 m!7707560))

(declare-fun m!7707636 () Bool)

(assert (=> b!7009884 m!7707636))

(assert (=> b!7009885 m!7707564))

(assert (=> b!7009885 m!7707564))

(declare-fun m!7707638 () Bool)

(assert (=> b!7009885 m!7707638))

(assert (=> b!7009885 m!7707568))

(assert (=> b!7009885 m!7707638))

(assert (=> b!7009885 m!7707568))

(declare-fun m!7707640 () Bool)

(assert (=> b!7009885 m!7707640))

(assert (=> b!7009684 d!2185196))

(assert (=> b!7009684 d!2185170))

(declare-fun d!2185198 () Bool)

(declare-fun c!1302066 () Bool)

(assert (=> d!2185198 (= c!1302066 (isEmpty!39342 (t!381237 s!7408)))))

(declare-fun e!4213653 () Bool)

(assert (=> d!2185198 (= (matchZipper!2852 lt!2503295 (t!381237 s!7408)) e!4213653)))

(declare-fun b!7009886 () Bool)

(assert (=> b!7009886 (= e!4213653 (nullableZipper!2486 lt!2503295))))

(declare-fun b!7009887 () Bool)

(assert (=> b!7009887 (= e!4213653 (matchZipper!2852 (derivationStepZipper!2792 lt!2503295 (head!14172 (t!381237 s!7408))) (tail!13387 (t!381237 s!7408))))))

(assert (= (and d!2185198 c!1302066) b!7009886))

(assert (= (and d!2185198 (not c!1302066)) b!7009887))

(assert (=> d!2185198 m!7707560))

(declare-fun m!7707642 () Bool)

(assert (=> b!7009886 m!7707642))

(assert (=> b!7009887 m!7707564))

(assert (=> b!7009887 m!7707564))

(declare-fun m!7707644 () Bool)

(assert (=> b!7009887 m!7707644))

(assert (=> b!7009887 m!7707568))

(assert (=> b!7009887 m!7707644))

(assert (=> b!7009887 m!7707568))

(declare-fun m!7707646 () Bool)

(assert (=> b!7009887 m!7707646))

(assert (=> b!7009684 d!2185198))

(declare-fun d!2185200 () Bool)

(declare-fun c!1302067 () Bool)

(assert (=> d!2185200 (= c!1302067 (isEmpty!39342 (t!381237 s!7408)))))

(declare-fun e!4213654 () Bool)

(assert (=> d!2185200 (= (matchZipper!2852 lt!2503283 (t!381237 s!7408)) e!4213654)))

(declare-fun b!7009888 () Bool)

(assert (=> b!7009888 (= e!4213654 (nullableZipper!2486 lt!2503283))))

(declare-fun b!7009889 () Bool)

(assert (=> b!7009889 (= e!4213654 (matchZipper!2852 (derivationStepZipper!2792 lt!2503283 (head!14172 (t!381237 s!7408))) (tail!13387 (t!381237 s!7408))))))

(assert (= (and d!2185200 c!1302067) b!7009888))

(assert (= (and d!2185200 (not c!1302067)) b!7009889))

(assert (=> d!2185200 m!7707560))

(declare-fun m!7707648 () Bool)

(assert (=> b!7009888 m!7707648))

(assert (=> b!7009889 m!7707564))

(assert (=> b!7009889 m!7707564))

(declare-fun m!7707650 () Bool)

(assert (=> b!7009889 m!7707650))

(assert (=> b!7009889 m!7707568))

(assert (=> b!7009889 m!7707650))

(assert (=> b!7009889 m!7707568))

(declare-fun m!7707652 () Bool)

(assert (=> b!7009889 m!7707652))

(assert (=> b!7009684 d!2185200))

(declare-fun d!2185202 () Bool)

(declare-fun e!4213657 () Bool)

(assert (=> d!2185202 (= (matchZipper!2852 (set.union lt!2503295 lt!2503288) (t!381237 s!7408)) e!4213657)))

(declare-fun res!2860228 () Bool)

(assert (=> d!2185202 (=> res!2860228 e!4213657)))

(assert (=> d!2185202 (= res!2860228 (matchZipper!2852 lt!2503295 (t!381237 s!7408)))))

(declare-fun lt!2503465 () Unit!161302)

(declare-fun choose!52693 ((Set Context!12616) (Set Context!12616) List!67482) Unit!161302)

(assert (=> d!2185202 (= lt!2503465 (choose!52693 lt!2503295 lt!2503288 (t!381237 s!7408)))))

(assert (=> d!2185202 (= (lemmaZipperConcatMatchesSameAsBothZippers!1485 lt!2503295 lt!2503288 (t!381237 s!7408)) lt!2503465)))

(declare-fun b!7009892 () Bool)

(assert (=> b!7009892 (= e!4213657 (matchZipper!2852 lt!2503288 (t!381237 s!7408)))))

(assert (= (and d!2185202 (not res!2860228)) b!7009892))

(declare-fun m!7707654 () Bool)

(assert (=> d!2185202 m!7707654))

(assert (=> d!2185202 m!7707346))

(declare-fun m!7707656 () Bool)

(assert (=> d!2185202 m!7707656))

(assert (=> b!7009892 m!7707354))

(assert (=> b!7009684 d!2185202))

(declare-fun d!2185204 () Bool)

(declare-fun dynLambda!27098 (Int Context!12616) (Set Context!12616))

(assert (=> d!2185204 (= (flatMap!2298 lt!2503294 lambda!408141) (dynLambda!27098 lambda!408141 lt!2503314))))

(declare-fun lt!2503468 () Unit!161302)

(declare-fun choose!52694 ((Set Context!12616) Context!12616 Int) Unit!161302)

(assert (=> d!2185204 (= lt!2503468 (choose!52694 lt!2503294 lt!2503314 lambda!408141))))

(assert (=> d!2185204 (= lt!2503294 (set.insert lt!2503314 (as set.empty (Set Context!12616))))))

(assert (=> d!2185204 (= (lemmaFlatMapOnSingletonSet!1813 lt!2503294 lt!2503314 lambda!408141) lt!2503468)))

(declare-fun b_lambda!264333 () Bool)

(assert (=> (not b_lambda!264333) (not d!2185204)))

(declare-fun bs!1866049 () Bool)

(assert (= bs!1866049 d!2185204))

(assert (=> bs!1866049 m!7707396))

(declare-fun m!7707658 () Bool)

(assert (=> bs!1866049 m!7707658))

(declare-fun m!7707660 () Bool)

(assert (=> bs!1866049 m!7707660))

(assert (=> bs!1866049 m!7707380))

(assert (=> b!7009674 d!2185204))

(declare-fun d!2185206 () Bool)

(declare-fun choose!52695 ((Set Context!12616) Int) (Set Context!12616))

(assert (=> d!2185206 (= (flatMap!2298 lt!2503294 lambda!408141) (choose!52695 lt!2503294 lambda!408141))))

(declare-fun bs!1866050 () Bool)

(assert (= bs!1866050 d!2185206))

(declare-fun m!7707662 () Bool)

(assert (=> bs!1866050 m!7707662))

(assert (=> b!7009674 d!2185206))

(declare-fun b!7009893 () Bool)

(declare-fun e!4213659 () (Set Context!12616))

(declare-fun e!4213660 () (Set Context!12616))

(assert (=> b!7009893 (= e!4213659 e!4213660)))

(declare-fun c!1302069 () Bool)

(assert (=> b!7009893 (= c!1302069 (is-Cons!67357 (exprs!6808 lt!2503314)))))

(declare-fun b!7009894 () Bool)

(declare-fun e!4213658 () Bool)

(assert (=> b!7009894 (= e!4213658 (nullable!7072 (h!73805 (exprs!6808 lt!2503314))))))

(declare-fun b!7009895 () Bool)

(declare-fun call!636691 () (Set Context!12616))

(assert (=> b!7009895 (= e!4213660 call!636691)))

(declare-fun b!7009896 () Bool)

(assert (=> b!7009896 (= e!4213660 (as set.empty (Set Context!12616)))))

(declare-fun bm!636686 () Bool)

(assert (=> bm!636686 (= call!636691 (derivationStepZipperDown!2030 (h!73805 (exprs!6808 lt!2503314)) (Context!12617 (t!381236 (exprs!6808 lt!2503314))) (h!73806 s!7408)))))

(declare-fun b!7009897 () Bool)

(assert (=> b!7009897 (= e!4213659 (set.union call!636691 (derivationStepZipperUp!1962 (Context!12617 (t!381236 (exprs!6808 lt!2503314))) (h!73806 s!7408))))))

(declare-fun d!2185208 () Bool)

(declare-fun c!1302068 () Bool)

(assert (=> d!2185208 (= c!1302068 e!4213658)))

(declare-fun res!2860229 () Bool)

(assert (=> d!2185208 (=> (not res!2860229) (not e!4213658))))

(assert (=> d!2185208 (= res!2860229 (is-Cons!67357 (exprs!6808 lt!2503314)))))

(assert (=> d!2185208 (= (derivationStepZipperUp!1962 lt!2503314 (h!73806 s!7408)) e!4213659)))

(assert (= (and d!2185208 res!2860229) b!7009894))

(assert (= (and d!2185208 c!1302068) b!7009897))

(assert (= (and d!2185208 (not c!1302068)) b!7009893))

(assert (= (and b!7009893 c!1302069) b!7009895))

(assert (= (and b!7009893 (not c!1302069)) b!7009896))

(assert (= (or b!7009897 b!7009895) bm!636686))

(declare-fun m!7707664 () Bool)

(assert (=> b!7009894 m!7707664))

(declare-fun m!7707666 () Bool)

(assert (=> bm!636686 m!7707666))

(declare-fun m!7707668 () Bool)

(assert (=> b!7009897 m!7707668))

(assert (=> b!7009674 d!2185208))

(declare-fun bs!1866051 () Bool)

(declare-fun d!2185210 () Bool)

(assert (= bs!1866051 (and d!2185210 b!7009674)))

(declare-fun lambda!408198 () Int)

(assert (=> bs!1866051 (= lambda!408198 lambda!408141)))

(assert (=> d!2185210 true))

(assert (=> d!2185210 (= (derivationStepZipper!2792 lt!2503294 (h!73806 s!7408)) (flatMap!2298 lt!2503294 lambda!408198))))

(declare-fun bs!1866052 () Bool)

(assert (= bs!1866052 d!2185210))

(declare-fun m!7707670 () Bool)

(assert (=> bs!1866052 m!7707670))

(assert (=> b!7009674 d!2185210))

(assert (=> b!7009674 d!2185166))

(assert (=> b!7009675 d!2185180))

(assert (=> b!7009675 d!2185170))

(declare-fun bs!1866053 () Bool)

(declare-fun d!2185212 () Bool)

(assert (= bs!1866053 (and d!2185212 b!7009681)))

(declare-fun lambda!408199 () Int)

(assert (=> bs!1866053 (= lambda!408199 lambda!408140)))

(declare-fun bs!1866054 () Bool)

(assert (= bs!1866054 (and d!2185212 d!2185164)))

(assert (=> bs!1866054 (= lambda!408199 lambda!408191)))

(declare-fun bs!1866055 () Bool)

(assert (= bs!1866055 (and d!2185212 d!2185186)))

(assert (=> bs!1866055 (= lambda!408199 lambda!408195)))

(assert (=> d!2185212 (= (inv!86140 setElem!48332) (forall!16232 (exprs!6808 setElem!48332) lambda!408199))))

(declare-fun bs!1866056 () Bool)

(assert (= bs!1866056 d!2185212))

(declare-fun m!7707672 () Bool)

(assert (=> bs!1866056 m!7707672))

(assert (=> setNonEmpty!48332 d!2185212))

(assert (=> b!7009677 d!2185170))

(declare-fun bs!1866057 () Bool)

(declare-fun d!2185214 () Bool)

(assert (= bs!1866057 (and d!2185214 b!7009667)))

(declare-fun lambda!408202 () Int)

(assert (=> bs!1866057 (not (= lambda!408202 lambda!408138))))

(assert (=> d!2185214 true))

(declare-fun order!28027 () Int)

(declare-fun dynLambda!27099 (Int Int) Int)

(assert (=> d!2185214 (< (dynLambda!27099 order!28027 lambda!408138) (dynLambda!27099 order!28027 lambda!408202))))

(declare-fun forall!16233 (List!67483 Int) Bool)

(assert (=> d!2185214 (= (exists!3155 lt!2503312 lambda!408138) (not (forall!16233 lt!2503312 lambda!408202)))))

(declare-fun bs!1866058 () Bool)

(assert (= bs!1866058 d!2185214))

(declare-fun m!7707674 () Bool)

(assert (=> bs!1866058 m!7707674))

(assert (=> b!7009667 d!2185214))

(declare-fun d!2185216 () Bool)

(declare-fun e!4213663 () Bool)

(assert (=> d!2185216 e!4213663))

(declare-fun res!2860232 () Bool)

(assert (=> d!2185216 (=> (not res!2860232) (not e!4213663))))

(declare-fun lt!2503471 () List!67483)

(declare-fun noDuplicate!2565 (List!67483) Bool)

(assert (=> d!2185216 (= res!2860232 (noDuplicate!2565 lt!2503471))))

(declare-fun choose!52696 ((Set Context!12616)) List!67483)

(assert (=> d!2185216 (= lt!2503471 (choose!52696 lt!2503298))))

(assert (=> d!2185216 (= (toList!10672 lt!2503298) lt!2503471)))

(declare-fun b!7009904 () Bool)

(declare-fun content!13370 (List!67483) (Set Context!12616))

(assert (=> b!7009904 (= e!4213663 (= (content!13370 lt!2503471) lt!2503298))))

(assert (= (and d!2185216 res!2860232) b!7009904))

(declare-fun m!7707676 () Bool)

(assert (=> d!2185216 m!7707676))

(declare-fun m!7707678 () Bool)

(assert (=> d!2185216 m!7707678))

(declare-fun m!7707680 () Bool)

(assert (=> b!7009904 m!7707680))

(assert (=> b!7009667 d!2185216))

(declare-fun d!2185218 () Bool)

(declare-fun e!4213666 () Bool)

(assert (=> d!2185218 e!4213666))

(declare-fun res!2860235 () Bool)

(assert (=> d!2185218 (=> (not res!2860235) (not e!4213666))))

(declare-fun lt!2503474 () Context!12616)

(declare-fun dynLambda!27100 (Int Context!12616) Bool)

(assert (=> d!2185218 (= res!2860235 (dynLambda!27100 lambda!408138 lt!2503474))))

(declare-fun getWitness!1255 (List!67483 Int) Context!12616)

(assert (=> d!2185218 (= lt!2503474 (getWitness!1255 (toList!10672 lt!2503298) lambda!408138))))

(declare-fun exists!3157 ((Set Context!12616) Int) Bool)

(assert (=> d!2185218 (exists!3157 lt!2503298 lambda!408138)))

(assert (=> d!2185218 (= (getWitness!1253 lt!2503298 lambda!408138) lt!2503474)))

(declare-fun b!7009907 () Bool)

(assert (=> b!7009907 (= e!4213666 (set.member lt!2503474 lt!2503298))))

(assert (= (and d!2185218 res!2860235) b!7009907))

(declare-fun b_lambda!264335 () Bool)

(assert (=> (not b_lambda!264335) (not d!2185218)))

(declare-fun m!7707682 () Bool)

(assert (=> d!2185218 m!7707682))

(assert (=> d!2185218 m!7707372))

(assert (=> d!2185218 m!7707372))

(declare-fun m!7707684 () Bool)

(assert (=> d!2185218 m!7707684))

(declare-fun m!7707686 () Bool)

(assert (=> d!2185218 m!7707686))

(declare-fun m!7707688 () Bool)

(assert (=> b!7009907 m!7707688))

(assert (=> b!7009667 d!2185218))

(declare-fun d!2185220 () Bool)

(declare-fun c!1302072 () Bool)

(assert (=> d!2185220 (= c!1302072 (isEmpty!39342 s!7408))))

(declare-fun e!4213667 () Bool)

(assert (=> d!2185220 (= (matchZipper!2852 lt!2503308 s!7408) e!4213667)))

(declare-fun b!7009908 () Bool)

(assert (=> b!7009908 (= e!4213667 (nullableZipper!2486 lt!2503308))))

(declare-fun b!7009909 () Bool)

(assert (=> b!7009909 (= e!4213667 (matchZipper!2852 (derivationStepZipper!2792 lt!2503308 (head!14172 s!7408)) (tail!13387 s!7408)))))

(assert (= (and d!2185220 c!1302072) b!7009908))

(assert (= (and d!2185220 (not c!1302072)) b!7009909))

(assert (=> d!2185220 m!7707482))

(declare-fun m!7707690 () Bool)

(assert (=> b!7009908 m!7707690))

(assert (=> b!7009909 m!7707486))

(assert (=> b!7009909 m!7707486))

(declare-fun m!7707692 () Bool)

(assert (=> b!7009909 m!7707692))

(assert (=> b!7009909 m!7707490))

(assert (=> b!7009909 m!7707692))

(assert (=> b!7009909 m!7707490))

(declare-fun m!7707694 () Bool)

(assert (=> b!7009909 m!7707694))

(assert (=> b!7009667 d!2185220))

(declare-fun bs!1866059 () Bool)

(declare-fun d!2185222 () Bool)

(assert (= bs!1866059 (and d!2185222 b!7009667)))

(declare-fun lambda!408205 () Int)

(assert (=> bs!1866059 (= lambda!408205 lambda!408138)))

(declare-fun bs!1866060 () Bool)

(assert (= bs!1866060 (and d!2185222 d!2185214)))

(assert (=> bs!1866060 (not (= lambda!408205 lambda!408202))))

(assert (=> d!2185222 true))

(assert (=> d!2185222 (exists!3155 lt!2503312 lambda!408205)))

(declare-fun lt!2503477 () Unit!161302)

(declare-fun choose!52697 (List!67483 List!67482) Unit!161302)

(assert (=> d!2185222 (= lt!2503477 (choose!52697 lt!2503312 s!7408))))

(assert (=> d!2185222 (matchZipper!2852 (content!13370 lt!2503312) s!7408)))

(assert (=> d!2185222 (= (lemmaZipperMatchesExistsMatchingContext!281 lt!2503312 s!7408) lt!2503477)))

(declare-fun bs!1866061 () Bool)

(assert (= bs!1866061 d!2185222))

(declare-fun m!7707696 () Bool)

(assert (=> bs!1866061 m!7707696))

(declare-fun m!7707698 () Bool)

(assert (=> bs!1866061 m!7707698))

(declare-fun m!7707700 () Bool)

(assert (=> bs!1866061 m!7707700))

(assert (=> bs!1866061 m!7707700))

(declare-fun m!7707702 () Bool)

(assert (=> bs!1866061 m!7707702))

(assert (=> b!7009667 d!2185222))

(declare-fun d!2185224 () Bool)

(declare-fun nullableFct!2681 (Regex!17312) Bool)

(assert (=> d!2185224 (= (nullable!7072 (h!73805 (exprs!6808 lt!2503293))) (nullableFct!2681 (h!73805 (exprs!6808 lt!2503293))))))

(declare-fun bs!1866062 () Bool)

(assert (= bs!1866062 d!2185224))

(declare-fun m!7707704 () Bool)

(assert (=> bs!1866062 m!7707704))

(assert (=> b!7009678 d!2185224))

(declare-fun d!2185226 () Bool)

(assert (=> d!2185226 (= (tail!13385 (exprs!6808 lt!2503293)) (t!381236 (exprs!6808 lt!2503293)))))

(assert (=> b!7009678 d!2185226))

(declare-fun condSetEmpty!48338 () Bool)

(assert (=> setNonEmpty!48332 (= condSetEmpty!48338 (= setRest!48332 (as set.empty (Set Context!12616))))))

(declare-fun setRes!48338 () Bool)

(assert (=> setNonEmpty!48332 (= tp!1932247 setRes!48338)))

(declare-fun setIsEmpty!48338 () Bool)

(assert (=> setIsEmpty!48338 setRes!48338))

(declare-fun setNonEmpty!48338 () Bool)

(declare-fun e!4213670 () Bool)

(declare-fun setElem!48338 () Context!12616)

(declare-fun tp!1932267 () Bool)

(assert (=> setNonEmpty!48338 (= setRes!48338 (and tp!1932267 (inv!86140 setElem!48338) e!4213670))))

(declare-fun setRest!48338 () (Set Context!12616))

(assert (=> setNonEmpty!48338 (= setRest!48332 (set.union (set.insert setElem!48338 (as set.empty (Set Context!12616))) setRest!48338))))

(declare-fun b!7009914 () Bool)

(declare-fun tp!1932268 () Bool)

(assert (=> b!7009914 (= e!4213670 tp!1932268)))

(assert (= (and setNonEmpty!48332 condSetEmpty!48338) setIsEmpty!48338))

(assert (= (and setNonEmpty!48332 (not condSetEmpty!48338)) setNonEmpty!48338))

(assert (= setNonEmpty!48338 b!7009914))

(declare-fun m!7707706 () Bool)

(assert (=> setNonEmpty!48338 m!7707706))

(declare-fun b!7009919 () Bool)

(declare-fun e!4213673 () Bool)

(declare-fun tp!1932273 () Bool)

(declare-fun tp!1932274 () Bool)

(assert (=> b!7009919 (= e!4213673 (and tp!1932273 tp!1932274))))

(assert (=> b!7009666 (= tp!1932248 e!4213673)))

(assert (= (and b!7009666 (is-Cons!67357 (exprs!6808 ct2!306))) b!7009919))

(declare-fun b!7009920 () Bool)

(declare-fun e!4213674 () Bool)

(declare-fun tp!1932275 () Bool)

(declare-fun tp!1932276 () Bool)

(assert (=> b!7009920 (= e!4213674 (and tp!1932275 tp!1932276))))

(assert (=> b!7009672 (= tp!1932249 e!4213674)))

(assert (= (and b!7009672 (is-Cons!67357 (exprs!6808 setElem!48332))) b!7009920))

(declare-fun b!7009925 () Bool)

(declare-fun e!4213677 () Bool)

(declare-fun tp!1932279 () Bool)

(assert (=> b!7009925 (= e!4213677 (and tp_is_empty!43849 tp!1932279))))

(assert (=> b!7009668 (= tp!1932250 e!4213677)))

(assert (= (and b!7009668 (is-Cons!67358 (t!381237 s!7408))) b!7009925))

(declare-fun b_lambda!264337 () Bool)

(assert (= b_lambda!264333 (or b!7009674 b_lambda!264337)))

(declare-fun bs!1866063 () Bool)

(declare-fun d!2185228 () Bool)

(assert (= bs!1866063 (and d!2185228 b!7009674)))

(assert (=> bs!1866063 (= (dynLambda!27098 lambda!408141 lt!2503314) (derivationStepZipperUp!1962 lt!2503314 (h!73806 s!7408)))))

(assert (=> bs!1866063 m!7707394))

(assert (=> d!2185204 d!2185228))

(declare-fun b_lambda!264339 () Bool)

(assert (= b_lambda!264331 (or b!7009681 b_lambda!264339)))

(declare-fun bs!1866064 () Bool)

(declare-fun d!2185230 () Bool)

(assert (= bs!1866064 (and d!2185230 b!7009681)))

(declare-fun lt!2503478 () Unit!161302)

(assert (=> bs!1866064 (= lt!2503478 (lemmaConcatPreservesForall!648 (exprs!6808 lt!2503441) (exprs!6808 ct2!306) lambda!408140))))

(assert (=> bs!1866064 (= (dynLambda!27097 lambda!408139 lt!2503441) (Context!12617 (++!15305 (exprs!6808 lt!2503441) (exprs!6808 ct2!306))))))

(declare-fun m!7707708 () Bool)

(assert (=> bs!1866064 m!7707708))

(declare-fun m!7707710 () Bool)

(assert (=> bs!1866064 m!7707710))

(assert (=> d!2185178 d!2185230))

(declare-fun b_lambda!264341 () Bool)

(assert (= b_lambda!264335 (or b!7009667 b_lambda!264341)))

(declare-fun bs!1866065 () Bool)

(declare-fun d!2185232 () Bool)

(assert (= bs!1866065 (and d!2185232 b!7009667)))

(assert (=> bs!1866065 (= (dynLambda!27100 lambda!408138 lt!2503474) (matchZipper!2852 (set.insert lt!2503474 (as set.empty (Set Context!12616))) s!7408))))

(declare-fun m!7707712 () Bool)

(assert (=> bs!1866065 m!7707712))

(assert (=> bs!1866065 m!7707712))

(declare-fun m!7707714 () Bool)

(assert (=> bs!1866065 m!7707714))

(assert (=> d!2185218 d!2185232))

(push 1)

(assert (not d!2185166))

(assert (not b!7009825))

(assert (not b_lambda!264337))

(assert (not d!2185164))

(assert (not d!2185216))

(assert (not d!2185212))

(assert (not d!2185186))

(assert (not d!2185220))

(assert (not d!2185178))

(assert (not d!2185192))

(assert (not b!7009881))

(assert (not b!7009817))

(assert (not b!7009832))

(assert (not b!7009892))

(assert (not b!7009884))

(assert (not b!7009897))

(assert (not b!7009875))

(assert (not bm!636686))

(assert (not d!2185176))

(assert (not b!7009877))

(assert (not bs!1866065))

(assert (not d!2185194))

(assert (not b!7009914))

(assert (not bs!1866063))

(assert (not b!7009909))

(assert (not b!7009855))

(assert (not b!7009885))

(assert (not d!2185214))

(assert (not b!7009886))

(assert (not d!2185182))

(assert (not b!7009838))

(assert (not d!2185196))

(assert (not b!7009762))

(assert (not b!7009833))

(assert (not d!2185200))

(assert (not d!2185162))

(assert (not b!7009920))

(assert (not bm!636683))

(assert (not b!7009904))

(assert tp_is_empty!43849)

(assert (not d!2185202))

(assert (not d!2185168))

(assert (not bm!636677))

(assert (not d!2185222))

(assert (not d!2185210))

(assert (not b!7009919))

(assert (not b!7009773))

(assert (not d!2185198))

(assert (not b!7009889))

(assert (not d!2185160))

(assert (not b!7009894))

(assert (not bs!1866064))

(assert (not bm!636685))

(assert (not d!2185190))

(assert (not d!2185204))

(assert (not b!7009763))

(assert (not b!7009908))

(assert (not bm!636679))

(assert (not d!2185218))

(assert (not b!7009774))

(assert (not b!7009854))

(assert (not b_lambda!264341))

(assert (not b!7009790))

(assert (not setNonEmpty!48338))

(assert (not bm!636680))

(assert (not d!2185224))

(assert (not b!7009925))

(assert (not b!7009887))

(assert (not b!7009883))

(assert (not d!2185180))

(assert (not b!7009888))

(assert (not bm!636674))

(assert (not b!7009878))

(assert (not b_lambda!264339))

(assert (not bm!636661))

(assert (not d!2185188))

(assert (not b!7009787))

(assert (not d!2185206))

(assert (not b!7009826))

(assert (not b!7009882))

(assert (not d!2185170))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

