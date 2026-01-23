; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!674476 () Bool)

(assert start!674476)

(declare-fun b!7006404 () Bool)

(assert (=> b!7006404 true))

(declare-fun b!7006397 () Bool)

(assert (=> b!7006397 true))

(declare-fun b!7006414 () Bool)

(assert (=> b!7006414 true))

(declare-datatypes ((C!34862 0))(
  ( (C!34863 (val!27133 Int)) )
))
(declare-datatypes ((Regex!17296 0))(
  ( (ElementMatch!17296 (c!1301167 C!34862)) (Concat!26141 (regOne!35104 Regex!17296) (regTwo!35104 Regex!17296)) (EmptyExpr!17296) (Star!17296 (reg!17625 Regex!17296)) (EmptyLang!17296) (Union!17296 (regOne!35105 Regex!17296) (regTwo!35105 Regex!17296)) )
))
(declare-datatypes ((List!67433 0))(
  ( (Nil!67309) (Cons!67309 (h!73757 Regex!17296) (t!381186 List!67433)) )
))
(declare-datatypes ((Context!12584 0))(
  ( (Context!12585 (exprs!6792 List!67433)) )
))
(declare-fun setElem!48240 () Context!12584)

(declare-fun setRes!48240 () Bool)

(declare-fun tp!1931763 () Bool)

(declare-fun setNonEmpty!48240 () Bool)

(declare-fun e!4211452 () Bool)

(declare-fun inv!86100 (Context!12584) Bool)

(assert (=> setNonEmpty!48240 (= setRes!48240 (and tp!1931763 (inv!86100 setElem!48240) e!4211452))))

(declare-fun z1!570 () (Set Context!12584))

(declare-fun setRest!48240 () (Set Context!12584))

(assert (=> setNonEmpty!48240 (= z1!570 (set.union (set.insert setElem!48240 (as set.empty (Set Context!12584))) setRest!48240))))

(declare-fun b!7006396 () Bool)

(declare-fun res!2858646 () Bool)

(declare-fun e!4211448 () Bool)

(assert (=> b!7006396 (=> res!2858646 e!4211448)))

(declare-fun lt!2501233 () Context!12584)

(assert (=> b!7006396 (= res!2858646 (not (is-Cons!67309 (exprs!6792 lt!2501233))))))

(declare-fun e!4211446 () Bool)

(declare-fun e!4211453 () Bool)

(assert (=> b!7006397 (= e!4211446 e!4211453)))

(declare-fun res!2858651 () Bool)

(assert (=> b!7006397 (=> res!2858651 e!4211453)))

(declare-fun lt!2501224 () Context!12584)

(declare-fun lt!2501225 () Context!12584)

(assert (=> b!7006397 (= res!2858651 (or (not (= lt!2501225 lt!2501224)) (not (set.member lt!2501233 z1!570))))))

(declare-fun ct2!306 () Context!12584)

(declare-fun ++!15287 (List!67433 List!67433) List!67433)

(assert (=> b!7006397 (= lt!2501225 (Context!12585 (++!15287 (exprs!6792 lt!2501233) (exprs!6792 ct2!306))))))

(declare-fun lambda!407211 () Int)

(declare-datatypes ((Unit!161268 0))(
  ( (Unit!161269) )
))
(declare-fun lt!2501244 () Unit!161268)

(declare-fun lemmaConcatPreservesForall!632 (List!67433 List!67433 Int) Unit!161268)

(assert (=> b!7006397 (= lt!2501244 (lemmaConcatPreservesForall!632 (exprs!6792 lt!2501233) (exprs!6792 ct2!306) lambda!407211))))

(declare-fun lambda!407210 () Int)

(declare-fun mapPost2!151 ((Set Context!12584) Int Context!12584) Context!12584)

(assert (=> b!7006397 (= lt!2501233 (mapPost2!151 z1!570 lambda!407210 lt!2501224))))

(declare-fun b!7006398 () Bool)

(declare-fun res!2858652 () Bool)

(declare-fun e!4211440 () Bool)

(assert (=> b!7006398 (=> res!2858652 e!4211440)))

(declare-fun lt!2501239 () Bool)

(assert (=> b!7006398 (= res!2858652 (not lt!2501239))))

(declare-fun res!2858642 () Bool)

(declare-fun e!4211451 () Bool)

(assert (=> start!674476 (=> (not res!2858642) (not e!4211451))))

(declare-fun lt!2501222 () (Set Context!12584))

(declare-datatypes ((List!67434 0))(
  ( (Nil!67310) (Cons!67310 (h!73758 C!34862) (t!381187 List!67434)) )
))
(declare-fun s!7408 () List!67434)

(declare-fun matchZipper!2836 ((Set Context!12584) List!67434) Bool)

(assert (=> start!674476 (= res!2858642 (matchZipper!2836 lt!2501222 s!7408))))

(declare-fun appendTo!417 ((Set Context!12584) Context!12584) (Set Context!12584))

(assert (=> start!674476 (= lt!2501222 (appendTo!417 z1!570 ct2!306))))

(assert (=> start!674476 e!4211451))

(declare-fun condSetEmpty!48240 () Bool)

(assert (=> start!674476 (= condSetEmpty!48240 (= z1!570 (as set.empty (Set Context!12584))))))

(assert (=> start!674476 setRes!48240))

(declare-fun e!4211447 () Bool)

(assert (=> start!674476 (and (inv!86100 ct2!306) e!4211447)))

(declare-fun e!4211441 () Bool)

(assert (=> start!674476 e!4211441))

(declare-fun b!7006399 () Bool)

(declare-fun e!4211450 () Bool)

(declare-fun forall!16210 (List!67433 Int) Bool)

(assert (=> b!7006399 (= e!4211450 (forall!16210 (exprs!6792 ct2!306) lambda!407211))))

(declare-fun b!7006400 () Bool)

(declare-fun res!2858638 () Bool)

(assert (=> b!7006400 (=> res!2858638 e!4211448)))

(declare-fun isEmpty!39312 (List!67433) Bool)

(assert (=> b!7006400 (= res!2858638 (isEmpty!39312 (exprs!6792 lt!2501233)))))

(declare-fun b!7006401 () Bool)

(declare-fun tp!1931766 () Bool)

(assert (=> b!7006401 (= e!4211447 tp!1931766)))

(declare-fun b!7006402 () Bool)

(declare-fun e!4211443 () Bool)

(assert (=> b!7006402 (= e!4211448 e!4211443)))

(declare-fun res!2858648 () Bool)

(assert (=> b!7006402 (=> res!2858648 e!4211443)))

(declare-fun nullable!7056 (Regex!17296) Bool)

(assert (=> b!7006402 (= res!2858648 (not (nullable!7056 (h!73757 (exprs!6792 lt!2501233)))))))

(declare-fun lt!2501249 () List!67433)

(declare-fun tail!13359 (List!67433) List!67433)

(assert (=> b!7006402 (= lt!2501249 (tail!13359 (exprs!6792 lt!2501233)))))

(declare-fun setIsEmpty!48240 () Bool)

(assert (=> setIsEmpty!48240 setRes!48240))

(declare-fun b!7006403 () Bool)

(declare-fun e!4211442 () Bool)

(assert (=> b!7006403 (= e!4211442 e!4211450)))

(declare-fun res!2858644 () Bool)

(assert (=> b!7006403 (=> res!2858644 e!4211450)))

(assert (=> b!7006403 (= res!2858644 (not (forall!16210 lt!2501249 lambda!407211)))))

(declare-fun lt!2501230 () Unit!161268)

(assert (=> b!7006403 (= lt!2501230 (lemmaConcatPreservesForall!632 lt!2501249 (exprs!6792 ct2!306) lambda!407211))))

(assert (=> b!7006404 (= e!4211451 (not e!4211446))))

(declare-fun res!2858649 () Bool)

(assert (=> b!7006404 (=> res!2858649 e!4211446)))

(declare-fun lt!2501238 () (Set Context!12584))

(assert (=> b!7006404 (= res!2858649 (not (matchZipper!2836 lt!2501238 s!7408)))))

(assert (=> b!7006404 (= lt!2501238 (set.insert lt!2501224 (as set.empty (Set Context!12584))))))

(declare-fun lambda!407209 () Int)

(declare-fun getWitness!1227 ((Set Context!12584) Int) Context!12584)

(assert (=> b!7006404 (= lt!2501224 (getWitness!1227 lt!2501222 lambda!407209))))

(declare-datatypes ((List!67435 0))(
  ( (Nil!67311) (Cons!67311 (h!73759 Context!12584) (t!381188 List!67435)) )
))
(declare-fun lt!2501242 () List!67435)

(declare-fun exists!3129 (List!67435 Int) Bool)

(assert (=> b!7006404 (exists!3129 lt!2501242 lambda!407209)))

(declare-fun lt!2501248 () Unit!161268)

(declare-fun lemmaZipperMatchesExistsMatchingContext!265 (List!67435 List!67434) Unit!161268)

(assert (=> b!7006404 (= lt!2501248 (lemmaZipperMatchesExistsMatchingContext!265 lt!2501242 s!7408))))

(declare-fun toList!10656 ((Set Context!12584)) List!67435)

(assert (=> b!7006404 (= lt!2501242 (toList!10656 lt!2501222))))

(declare-fun b!7006405 () Bool)

(declare-fun e!4211439 () Bool)

(declare-fun lt!2501243 () (Set Context!12584))

(assert (=> b!7006405 (= e!4211439 (not (matchZipper!2836 lt!2501243 (t!381187 s!7408))))))

(declare-fun lt!2501247 () Unit!161268)

(assert (=> b!7006405 (= lt!2501247 (lemmaConcatPreservesForall!632 lt!2501249 (exprs!6792 ct2!306) lambda!407211))))

(declare-fun b!7006406 () Bool)

(declare-fun e!4211444 () Bool)

(assert (=> b!7006406 (= e!4211444 e!4211440)))

(declare-fun res!2858647 () Bool)

(assert (=> b!7006406 (=> res!2858647 e!4211440)))

(assert (=> b!7006406 (= res!2858647 e!4211439)))

(declare-fun res!2858641 () Bool)

(assert (=> b!7006406 (=> (not res!2858641) (not e!4211439))))

(declare-fun lt!2501234 () Bool)

(assert (=> b!7006406 (= res!2858641 (not (= lt!2501239 lt!2501234)))))

(declare-fun lt!2501221 () (Set Context!12584))

(assert (=> b!7006406 (= lt!2501239 (matchZipper!2836 lt!2501221 (t!381187 s!7408)))))

(declare-fun lt!2501226 () Unit!161268)

(assert (=> b!7006406 (= lt!2501226 (lemmaConcatPreservesForall!632 lt!2501249 (exprs!6792 ct2!306) lambda!407211))))

(declare-fun lt!2501228 () (Set Context!12584))

(declare-fun e!4211449 () Bool)

(assert (=> b!7006406 (= (matchZipper!2836 lt!2501228 (t!381187 s!7408)) e!4211449)))

(declare-fun res!2858640 () Bool)

(assert (=> b!7006406 (=> res!2858640 e!4211449)))

(assert (=> b!7006406 (= res!2858640 lt!2501234)))

(declare-fun lt!2501223 () (Set Context!12584))

(assert (=> b!7006406 (= lt!2501234 (matchZipper!2836 lt!2501223 (t!381187 s!7408)))))

(declare-fun lt!2501240 () Unit!161268)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1469 ((Set Context!12584) (Set Context!12584) List!67434) Unit!161268)

(assert (=> b!7006406 (= lt!2501240 (lemmaZipperConcatMatchesSameAsBothZippers!1469 lt!2501223 lt!2501243 (t!381187 s!7408)))))

(declare-fun lt!2501227 () Unit!161268)

(assert (=> b!7006406 (= lt!2501227 (lemmaConcatPreservesForall!632 lt!2501249 (exprs!6792 ct2!306) lambda!407211))))

(declare-fun lt!2501232 () Unit!161268)

(assert (=> b!7006406 (= lt!2501232 (lemmaConcatPreservesForall!632 lt!2501249 (exprs!6792 ct2!306) lambda!407211))))

(declare-fun b!7006407 () Bool)

(declare-fun res!2858639 () Bool)

(assert (=> b!7006407 (=> (not res!2858639) (not e!4211451))))

(assert (=> b!7006407 (= res!2858639 (is-Cons!67310 s!7408))))

(declare-fun b!7006408 () Bool)

(declare-fun res!2858653 () Bool)

(assert (=> b!7006408 (=> res!2858653 e!4211446)))

(assert (=> b!7006408 (= res!2858653 (not (set.member lt!2501224 lt!2501222)))))

(declare-fun b!7006409 () Bool)

(assert (=> b!7006409 (= e!4211440 e!4211442)))

(declare-fun res!2858650 () Bool)

(assert (=> b!7006409 (=> res!2858650 e!4211442)))

(assert (=> b!7006409 (= res!2858650 (matchZipper!2836 lt!2501243 (t!381187 s!7408)))))

(declare-fun lt!2501236 () Unit!161268)

(assert (=> b!7006409 (= lt!2501236 (lemmaConcatPreservesForall!632 lt!2501249 (exprs!6792 ct2!306) lambda!407211))))

(declare-fun b!7006410 () Bool)

(declare-fun tp_is_empty!43817 () Bool)

(declare-fun tp!1931764 () Bool)

(assert (=> b!7006410 (= e!4211441 (and tp_is_empty!43817 tp!1931764))))

(declare-fun b!7006411 () Bool)

(declare-fun e!4211445 () Bool)

(assert (=> b!7006411 (= e!4211453 e!4211445)))

(declare-fun res!2858643 () Bool)

(assert (=> b!7006411 (=> res!2858643 e!4211445)))

(declare-fun lt!2501246 () (Set Context!12584))

(assert (=> b!7006411 (= res!2858643 (not (= lt!2501246 lt!2501238)))))

(assert (=> b!7006411 (= lt!2501246 (set.insert lt!2501225 (as set.empty (Set Context!12584))))))

(declare-fun lt!2501241 () Unit!161268)

(assert (=> b!7006411 (= lt!2501241 (lemmaConcatPreservesForall!632 (exprs!6792 lt!2501233) (exprs!6792 ct2!306) lambda!407211))))

(declare-fun b!7006412 () Bool)

(assert (=> b!7006412 (= e!4211449 (matchZipper!2836 lt!2501243 (t!381187 s!7408)))))

(declare-fun b!7006413 () Bool)

(assert (=> b!7006413 (= e!4211443 e!4211444)))

(declare-fun res!2858654 () Bool)

(assert (=> b!7006413 (=> res!2858654 e!4211444)))

(assert (=> b!7006413 (= res!2858654 (not (= lt!2501221 lt!2501228)))))

(assert (=> b!7006413 (= lt!2501228 (set.union lt!2501223 lt!2501243))))

(declare-fun lt!2501229 () Context!12584)

(declare-fun derivationStepZipperUp!1946 (Context!12584 C!34862) (Set Context!12584))

(assert (=> b!7006413 (= lt!2501243 (derivationStepZipperUp!1946 lt!2501229 (h!73758 s!7408)))))

(declare-fun derivationStepZipperDown!2014 (Regex!17296 Context!12584 C!34862) (Set Context!12584))

(assert (=> b!7006413 (= lt!2501223 (derivationStepZipperDown!2014 (h!73757 (exprs!6792 lt!2501233)) lt!2501229 (h!73758 s!7408)))))

(assert (=> b!7006413 (= lt!2501229 (Context!12585 (++!15287 lt!2501249 (exprs!6792 ct2!306))))))

(declare-fun lt!2501245 () Unit!161268)

(assert (=> b!7006413 (= lt!2501245 (lemmaConcatPreservesForall!632 lt!2501249 (exprs!6792 ct2!306) lambda!407211))))

(declare-fun lt!2501231 () Unit!161268)

(assert (=> b!7006413 (= lt!2501231 (lemmaConcatPreservesForall!632 lt!2501249 (exprs!6792 ct2!306) lambda!407211))))

(assert (=> b!7006414 (= e!4211445 e!4211448)))

(declare-fun res!2858645 () Bool)

(assert (=> b!7006414 (=> res!2858645 e!4211448)))

(declare-fun derivationStepZipper!2776 ((Set Context!12584) C!34862) (Set Context!12584))

(assert (=> b!7006414 (= res!2858645 (not (= (derivationStepZipper!2776 lt!2501246 (h!73758 s!7408)) lt!2501221)))))

(declare-fun lambda!407212 () Int)

(declare-fun flatMap!2282 ((Set Context!12584) Int) (Set Context!12584))

(assert (=> b!7006414 (= (flatMap!2282 lt!2501246 lambda!407212) (derivationStepZipperUp!1946 lt!2501225 (h!73758 s!7408)))))

(declare-fun lt!2501235 () Unit!161268)

(declare-fun lemmaFlatMapOnSingletonSet!1797 ((Set Context!12584) Context!12584 Int) Unit!161268)

(assert (=> b!7006414 (= lt!2501235 (lemmaFlatMapOnSingletonSet!1797 lt!2501246 lt!2501225 lambda!407212))))

(assert (=> b!7006414 (= lt!2501221 (derivationStepZipperUp!1946 lt!2501225 (h!73758 s!7408)))))

(declare-fun lt!2501237 () Unit!161268)

(assert (=> b!7006414 (= lt!2501237 (lemmaConcatPreservesForall!632 (exprs!6792 lt!2501233) (exprs!6792 ct2!306) lambda!407211))))

(declare-fun b!7006415 () Bool)

(declare-fun tp!1931765 () Bool)

(assert (=> b!7006415 (= e!4211452 tp!1931765)))

(assert (= (and start!674476 res!2858642) b!7006407))

(assert (= (and b!7006407 res!2858639) b!7006404))

(assert (= (and b!7006404 (not res!2858649)) b!7006408))

(assert (= (and b!7006408 (not res!2858653)) b!7006397))

(assert (= (and b!7006397 (not res!2858651)) b!7006411))

(assert (= (and b!7006411 (not res!2858643)) b!7006414))

(assert (= (and b!7006414 (not res!2858645)) b!7006396))

(assert (= (and b!7006396 (not res!2858646)) b!7006400))

(assert (= (and b!7006400 (not res!2858638)) b!7006402))

(assert (= (and b!7006402 (not res!2858648)) b!7006413))

(assert (= (and b!7006413 (not res!2858654)) b!7006406))

(assert (= (and b!7006406 (not res!2858640)) b!7006412))

(assert (= (and b!7006406 res!2858641) b!7006405))

(assert (= (and b!7006406 (not res!2858647)) b!7006398))

(assert (= (and b!7006398 (not res!2858652)) b!7006409))

(assert (= (and b!7006409 (not res!2858650)) b!7006403))

(assert (= (and b!7006403 (not res!2858644)) b!7006399))

(assert (= (and start!674476 condSetEmpty!48240) setIsEmpty!48240))

(assert (= (and start!674476 (not condSetEmpty!48240)) setNonEmpty!48240))

(assert (= setNonEmpty!48240 b!7006415))

(assert (= start!674476 b!7006401))

(assert (= (and start!674476 (is-Cons!67310 s!7408)) b!7006410))

(declare-fun m!7703292 () Bool)

(assert (=> start!674476 m!7703292))

(declare-fun m!7703294 () Bool)

(assert (=> start!674476 m!7703294))

(declare-fun m!7703296 () Bool)

(assert (=> start!674476 m!7703296))

(declare-fun m!7703298 () Bool)

(assert (=> b!7006400 m!7703298))

(declare-fun m!7703300 () Bool)

(assert (=> b!7006411 m!7703300))

(declare-fun m!7703302 () Bool)

(assert (=> b!7006411 m!7703302))

(declare-fun m!7703304 () Bool)

(assert (=> b!7006402 m!7703304))

(declare-fun m!7703306 () Bool)

(assert (=> b!7006402 m!7703306))

(declare-fun m!7703308 () Bool)

(assert (=> b!7006414 m!7703308))

(assert (=> b!7006414 m!7703302))

(declare-fun m!7703310 () Bool)

(assert (=> b!7006414 m!7703310))

(declare-fun m!7703312 () Bool)

(assert (=> b!7006414 m!7703312))

(declare-fun m!7703314 () Bool)

(assert (=> b!7006414 m!7703314))

(declare-fun m!7703316 () Bool)

(assert (=> b!7006409 m!7703316))

(declare-fun m!7703318 () Bool)

(assert (=> b!7006409 m!7703318))

(declare-fun m!7703320 () Bool)

(assert (=> b!7006404 m!7703320))

(declare-fun m!7703322 () Bool)

(assert (=> b!7006404 m!7703322))

(declare-fun m!7703324 () Bool)

(assert (=> b!7006404 m!7703324))

(declare-fun m!7703326 () Bool)

(assert (=> b!7006404 m!7703326))

(declare-fun m!7703328 () Bool)

(assert (=> b!7006404 m!7703328))

(declare-fun m!7703330 () Bool)

(assert (=> b!7006404 m!7703330))

(declare-fun m!7703332 () Bool)

(assert (=> setNonEmpty!48240 m!7703332))

(declare-fun m!7703334 () Bool)

(assert (=> b!7006397 m!7703334))

(declare-fun m!7703336 () Bool)

(assert (=> b!7006397 m!7703336))

(assert (=> b!7006397 m!7703302))

(declare-fun m!7703338 () Bool)

(assert (=> b!7006397 m!7703338))

(declare-fun m!7703340 () Bool)

(assert (=> b!7006408 m!7703340))

(declare-fun m!7703342 () Bool)

(assert (=> b!7006406 m!7703342))

(declare-fun m!7703344 () Bool)

(assert (=> b!7006406 m!7703344))

(declare-fun m!7703346 () Bool)

(assert (=> b!7006406 m!7703346))

(assert (=> b!7006406 m!7703318))

(assert (=> b!7006406 m!7703318))

(declare-fun m!7703348 () Bool)

(assert (=> b!7006406 m!7703348))

(assert (=> b!7006406 m!7703318))

(assert (=> b!7006405 m!7703316))

(assert (=> b!7006405 m!7703318))

(declare-fun m!7703350 () Bool)

(assert (=> b!7006403 m!7703350))

(assert (=> b!7006403 m!7703318))

(assert (=> b!7006413 m!7703318))

(declare-fun m!7703352 () Bool)

(assert (=> b!7006413 m!7703352))

(declare-fun m!7703354 () Bool)

(assert (=> b!7006413 m!7703354))

(declare-fun m!7703356 () Bool)

(assert (=> b!7006413 m!7703356))

(assert (=> b!7006413 m!7703318))

(declare-fun m!7703358 () Bool)

(assert (=> b!7006399 m!7703358))

(assert (=> b!7006412 m!7703316))

(push 1)

(assert tp_is_empty!43817)

(assert (not b!7006399))

(assert (not b!7006400))

(assert (not start!674476))

(assert (not b!7006403))

(assert (not setNonEmpty!48240))

(assert (not b!7006413))

(assert (not b!7006411))

(assert (not b!7006409))

(assert (not b!7006410))

(assert (not b!7006412))

(assert (not b!7006405))

(assert (not b!7006402))

(assert (not b!7006401))

(assert (not b!7006406))

(assert (not b!7006404))

(assert (not b!7006415))

(assert (not b!7006414))

(assert (not b!7006397))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2183978 () Bool)

(assert (=> d!2183978 (= (isEmpty!39312 (exprs!6792 lt!2501233)) (is-Nil!67309 (exprs!6792 lt!2501233)))))

(assert (=> b!7006400 d!2183978))

(declare-fun d!2183980 () Bool)

(assert (=> d!2183980 (forall!16210 (++!15287 (exprs!6792 lt!2501233) (exprs!6792 ct2!306)) lambda!407211)))

(declare-fun lt!2501341 () Unit!161268)

(declare-fun choose!52608 (List!67433 List!67433 Int) Unit!161268)

(assert (=> d!2183980 (= lt!2501341 (choose!52608 (exprs!6792 lt!2501233) (exprs!6792 ct2!306) lambda!407211))))

(assert (=> d!2183980 (forall!16210 (exprs!6792 lt!2501233) lambda!407211)))

(assert (=> d!2183980 (= (lemmaConcatPreservesForall!632 (exprs!6792 lt!2501233) (exprs!6792 ct2!306) lambda!407211) lt!2501341)))

(declare-fun bs!1865466 () Bool)

(assert (= bs!1865466 d!2183980))

(assert (=> bs!1865466 m!7703336))

(assert (=> bs!1865466 m!7703336))

(declare-fun m!7703428 () Bool)

(assert (=> bs!1865466 m!7703428))

(declare-fun m!7703430 () Bool)

(assert (=> bs!1865466 m!7703430))

(declare-fun m!7703432 () Bool)

(assert (=> bs!1865466 m!7703432))

(assert (=> b!7006411 d!2183980))

(declare-fun d!2183982 () Bool)

(declare-fun nullableFct!2671 (Regex!17296) Bool)

(assert (=> d!2183982 (= (nullable!7056 (h!73757 (exprs!6792 lt!2501233))) (nullableFct!2671 (h!73757 (exprs!6792 lt!2501233))))))

(declare-fun bs!1865467 () Bool)

(assert (= bs!1865467 d!2183982))

(declare-fun m!7703434 () Bool)

(assert (=> bs!1865467 m!7703434))

(assert (=> b!7006402 d!2183982))

(declare-fun d!2183984 () Bool)

(assert (=> d!2183984 (= (tail!13359 (exprs!6792 lt!2501233)) (t!381186 (exprs!6792 lt!2501233)))))

(assert (=> b!7006402 d!2183984))

(declare-fun d!2183986 () Bool)

(declare-fun c!1301179 () Bool)

(declare-fun isEmpty!39314 (List!67434) Bool)

(assert (=> d!2183986 (= c!1301179 (isEmpty!39314 (t!381187 s!7408)))))

(declare-fun e!4211501 () Bool)

(assert (=> d!2183986 (= (matchZipper!2836 lt!2501243 (t!381187 s!7408)) e!4211501)))

(declare-fun b!7006492 () Bool)

(declare-fun nullableZipper!2476 ((Set Context!12584)) Bool)

(assert (=> b!7006492 (= e!4211501 (nullableZipper!2476 lt!2501243))))

(declare-fun b!7006493 () Bool)

(declare-fun head!14160 (List!67434) C!34862)

(declare-fun tail!13361 (List!67434) List!67434)

(assert (=> b!7006493 (= e!4211501 (matchZipper!2836 (derivationStepZipper!2776 lt!2501243 (head!14160 (t!381187 s!7408))) (tail!13361 (t!381187 s!7408))))))

(assert (= (and d!2183986 c!1301179) b!7006492))

(assert (= (and d!2183986 (not c!1301179)) b!7006493))

(declare-fun m!7703436 () Bool)

(assert (=> d!2183986 m!7703436))

(declare-fun m!7703438 () Bool)

(assert (=> b!7006492 m!7703438))

(declare-fun m!7703440 () Bool)

(assert (=> b!7006493 m!7703440))

(assert (=> b!7006493 m!7703440))

(declare-fun m!7703442 () Bool)

(assert (=> b!7006493 m!7703442))

(declare-fun m!7703444 () Bool)

(assert (=> b!7006493 m!7703444))

(assert (=> b!7006493 m!7703442))

(assert (=> b!7006493 m!7703444))

(declare-fun m!7703446 () Bool)

(assert (=> b!7006493 m!7703446))

(assert (=> b!7006412 d!2183986))

(declare-fun d!2183988 () Bool)

(declare-fun c!1301180 () Bool)

(assert (=> d!2183988 (= c!1301180 (isEmpty!39314 s!7408))))

(declare-fun e!4211502 () Bool)

(assert (=> d!2183988 (= (matchZipper!2836 lt!2501222 s!7408) e!4211502)))

(declare-fun b!7006494 () Bool)

(assert (=> b!7006494 (= e!4211502 (nullableZipper!2476 lt!2501222))))

(declare-fun b!7006495 () Bool)

(assert (=> b!7006495 (= e!4211502 (matchZipper!2836 (derivationStepZipper!2776 lt!2501222 (head!14160 s!7408)) (tail!13361 s!7408)))))

(assert (= (and d!2183988 c!1301180) b!7006494))

(assert (= (and d!2183988 (not c!1301180)) b!7006495))

(declare-fun m!7703448 () Bool)

(assert (=> d!2183988 m!7703448))

(declare-fun m!7703450 () Bool)

(assert (=> b!7006494 m!7703450))

(declare-fun m!7703452 () Bool)

(assert (=> b!7006495 m!7703452))

(assert (=> b!7006495 m!7703452))

(declare-fun m!7703454 () Bool)

(assert (=> b!7006495 m!7703454))

(declare-fun m!7703456 () Bool)

(assert (=> b!7006495 m!7703456))

(assert (=> b!7006495 m!7703454))

(assert (=> b!7006495 m!7703456))

(declare-fun m!7703458 () Bool)

(assert (=> b!7006495 m!7703458))

(assert (=> start!674476 d!2183988))

(declare-fun bs!1865468 () Bool)

(declare-fun d!2183990 () Bool)

(assert (= bs!1865468 (and d!2183990 b!7006397)))

(declare-fun lambda!407255 () Int)

(assert (=> bs!1865468 (= lambda!407255 lambda!407210)))

(assert (=> d!2183990 true))

(declare-fun map!15589 ((Set Context!12584) Int) (Set Context!12584))

(assert (=> d!2183990 (= (appendTo!417 z1!570 ct2!306) (map!15589 z1!570 lambda!407255))))

(declare-fun bs!1865469 () Bool)

(assert (= bs!1865469 d!2183990))

(declare-fun m!7703460 () Bool)

(assert (=> bs!1865469 m!7703460))

(assert (=> start!674476 d!2183990))

(declare-fun bs!1865470 () Bool)

(declare-fun d!2183992 () Bool)

(assert (= bs!1865470 (and d!2183992 b!7006397)))

(declare-fun lambda!407258 () Int)

(assert (=> bs!1865470 (= lambda!407258 lambda!407211)))

(assert (=> d!2183992 (= (inv!86100 ct2!306) (forall!16210 (exprs!6792 ct2!306) lambda!407258))))

(declare-fun bs!1865471 () Bool)

(assert (= bs!1865471 d!2183992))

(declare-fun m!7703462 () Bool)

(assert (=> bs!1865471 m!7703462))

(assert (=> start!674476 d!2183992))

(declare-fun d!2183994 () Bool)

(declare-fun res!2858711 () Bool)

(declare-fun e!4211507 () Bool)

(assert (=> d!2183994 (=> res!2858711 e!4211507)))

(assert (=> d!2183994 (= res!2858711 (is-Nil!67309 (exprs!6792 ct2!306)))))

(assert (=> d!2183994 (= (forall!16210 (exprs!6792 ct2!306) lambda!407211) e!4211507)))

(declare-fun b!7006500 () Bool)

(declare-fun e!4211508 () Bool)

(assert (=> b!7006500 (= e!4211507 e!4211508)))

(declare-fun res!2858712 () Bool)

(assert (=> b!7006500 (=> (not res!2858712) (not e!4211508))))

(declare-fun dynLambda!27052 (Int Regex!17296) Bool)

(assert (=> b!7006500 (= res!2858712 (dynLambda!27052 lambda!407211 (h!73757 (exprs!6792 ct2!306))))))

(declare-fun b!7006501 () Bool)

(assert (=> b!7006501 (= e!4211508 (forall!16210 (t!381186 (exprs!6792 ct2!306)) lambda!407211))))

(assert (= (and d!2183994 (not res!2858711)) b!7006500))

(assert (= (and b!7006500 res!2858712) b!7006501))

(declare-fun b_lambda!264063 () Bool)

(assert (=> (not b_lambda!264063) (not b!7006500)))

(declare-fun m!7703464 () Bool)

(assert (=> b!7006500 m!7703464))

(declare-fun m!7703466 () Bool)

(assert (=> b!7006501 m!7703466))

(assert (=> b!7006399 d!2183994))

(assert (=> b!7006409 d!2183986))

(declare-fun d!2183996 () Bool)

(assert (=> d!2183996 (forall!16210 (++!15287 lt!2501249 (exprs!6792 ct2!306)) lambda!407211)))

(declare-fun lt!2501344 () Unit!161268)

(assert (=> d!2183996 (= lt!2501344 (choose!52608 lt!2501249 (exprs!6792 ct2!306) lambda!407211))))

(assert (=> d!2183996 (forall!16210 lt!2501249 lambda!407211)))

(assert (=> d!2183996 (= (lemmaConcatPreservesForall!632 lt!2501249 (exprs!6792 ct2!306) lambda!407211) lt!2501344)))

(declare-fun bs!1865472 () Bool)

(assert (= bs!1865472 d!2183996))

(assert (=> bs!1865472 m!7703356))

(assert (=> bs!1865472 m!7703356))

(declare-fun m!7703468 () Bool)

(assert (=> bs!1865472 m!7703468))

(declare-fun m!7703470 () Bool)

(assert (=> bs!1865472 m!7703470))

(assert (=> bs!1865472 m!7703350))

(assert (=> b!7006409 d!2183996))

(declare-fun bs!1865473 () Bool)

(declare-fun d!2183998 () Bool)

(assert (= bs!1865473 (and d!2183998 b!7006397)))

(declare-fun lambda!407259 () Int)

(assert (=> bs!1865473 (= lambda!407259 lambda!407211)))

(declare-fun bs!1865474 () Bool)

(assert (= bs!1865474 (and d!2183998 d!2183992)))

(assert (=> bs!1865474 (= lambda!407259 lambda!407258)))

(assert (=> d!2183998 (= (inv!86100 setElem!48240) (forall!16210 (exprs!6792 setElem!48240) lambda!407259))))

(declare-fun bs!1865475 () Bool)

(assert (= bs!1865475 d!2183998))

(declare-fun m!7703472 () Bool)

(assert (=> bs!1865475 m!7703472))

(assert (=> setNonEmpty!48240 d!2183998))

(assert (=> b!7006405 d!2183986))

(assert (=> b!7006405 d!2183996))

(declare-fun d!2184000 () Bool)

(declare-fun c!1301182 () Bool)

(assert (=> d!2184000 (= c!1301182 (isEmpty!39314 (t!381187 s!7408)))))

(declare-fun e!4211509 () Bool)

(assert (=> d!2184000 (= (matchZipper!2836 lt!2501223 (t!381187 s!7408)) e!4211509)))

(declare-fun b!7006502 () Bool)

(assert (=> b!7006502 (= e!4211509 (nullableZipper!2476 lt!2501223))))

(declare-fun b!7006503 () Bool)

(assert (=> b!7006503 (= e!4211509 (matchZipper!2836 (derivationStepZipper!2776 lt!2501223 (head!14160 (t!381187 s!7408))) (tail!13361 (t!381187 s!7408))))))

(assert (= (and d!2184000 c!1301182) b!7006502))

(assert (= (and d!2184000 (not c!1301182)) b!7006503))

(assert (=> d!2184000 m!7703436))

(declare-fun m!7703474 () Bool)

(assert (=> b!7006502 m!7703474))

(assert (=> b!7006503 m!7703440))

(assert (=> b!7006503 m!7703440))

(declare-fun m!7703476 () Bool)

(assert (=> b!7006503 m!7703476))

(assert (=> b!7006503 m!7703444))

(assert (=> b!7006503 m!7703476))

(assert (=> b!7006503 m!7703444))

(declare-fun m!7703478 () Bool)

(assert (=> b!7006503 m!7703478))

(assert (=> b!7006406 d!2184000))

(declare-fun e!4211512 () Bool)

(declare-fun d!2184002 () Bool)

(assert (=> d!2184002 (= (matchZipper!2836 (set.union lt!2501223 lt!2501243) (t!381187 s!7408)) e!4211512)))

(declare-fun res!2858715 () Bool)

(assert (=> d!2184002 (=> res!2858715 e!4211512)))

(assert (=> d!2184002 (= res!2858715 (matchZipper!2836 lt!2501223 (t!381187 s!7408)))))

(declare-fun lt!2501347 () Unit!161268)

(declare-fun choose!52609 ((Set Context!12584) (Set Context!12584) List!67434) Unit!161268)

(assert (=> d!2184002 (= lt!2501347 (choose!52609 lt!2501223 lt!2501243 (t!381187 s!7408)))))

(assert (=> d!2184002 (= (lemmaZipperConcatMatchesSameAsBothZippers!1469 lt!2501223 lt!2501243 (t!381187 s!7408)) lt!2501347)))

(declare-fun b!7006506 () Bool)

(assert (=> b!7006506 (= e!4211512 (matchZipper!2836 lt!2501243 (t!381187 s!7408)))))

(assert (= (and d!2184002 (not res!2858715)) b!7006506))

(declare-fun m!7703480 () Bool)

(assert (=> d!2184002 m!7703480))

(assert (=> d!2184002 m!7703342))

(declare-fun m!7703482 () Bool)

(assert (=> d!2184002 m!7703482))

(assert (=> b!7006506 m!7703316))

(assert (=> b!7006406 d!2184002))

(declare-fun d!2184004 () Bool)

(declare-fun c!1301183 () Bool)

(assert (=> d!2184004 (= c!1301183 (isEmpty!39314 (t!381187 s!7408)))))

(declare-fun e!4211513 () Bool)

(assert (=> d!2184004 (= (matchZipper!2836 lt!2501221 (t!381187 s!7408)) e!4211513)))

(declare-fun b!7006507 () Bool)

(assert (=> b!7006507 (= e!4211513 (nullableZipper!2476 lt!2501221))))

(declare-fun b!7006508 () Bool)

(assert (=> b!7006508 (= e!4211513 (matchZipper!2836 (derivationStepZipper!2776 lt!2501221 (head!14160 (t!381187 s!7408))) (tail!13361 (t!381187 s!7408))))))

(assert (= (and d!2184004 c!1301183) b!7006507))

(assert (= (and d!2184004 (not c!1301183)) b!7006508))

(assert (=> d!2184004 m!7703436))

(declare-fun m!7703484 () Bool)

(assert (=> b!7006507 m!7703484))

(assert (=> b!7006508 m!7703440))

(assert (=> b!7006508 m!7703440))

(declare-fun m!7703486 () Bool)

(assert (=> b!7006508 m!7703486))

(assert (=> b!7006508 m!7703444))

(assert (=> b!7006508 m!7703486))

(assert (=> b!7006508 m!7703444))

(declare-fun m!7703488 () Bool)

(assert (=> b!7006508 m!7703488))

(assert (=> b!7006406 d!2184004))

(assert (=> b!7006406 d!2183996))

(declare-fun d!2184006 () Bool)

(declare-fun c!1301184 () Bool)

(assert (=> d!2184006 (= c!1301184 (isEmpty!39314 (t!381187 s!7408)))))

(declare-fun e!4211514 () Bool)

(assert (=> d!2184006 (= (matchZipper!2836 lt!2501228 (t!381187 s!7408)) e!4211514)))

(declare-fun b!7006509 () Bool)

(assert (=> b!7006509 (= e!4211514 (nullableZipper!2476 lt!2501228))))

(declare-fun b!7006510 () Bool)

(assert (=> b!7006510 (= e!4211514 (matchZipper!2836 (derivationStepZipper!2776 lt!2501228 (head!14160 (t!381187 s!7408))) (tail!13361 (t!381187 s!7408))))))

(assert (= (and d!2184006 c!1301184) b!7006509))

(assert (= (and d!2184006 (not c!1301184)) b!7006510))

(assert (=> d!2184006 m!7703436))

(declare-fun m!7703490 () Bool)

(assert (=> b!7006509 m!7703490))

(assert (=> b!7006510 m!7703440))

(assert (=> b!7006510 m!7703440))

(declare-fun m!7703492 () Bool)

(assert (=> b!7006510 m!7703492))

(assert (=> b!7006510 m!7703444))

(assert (=> b!7006510 m!7703492))

(assert (=> b!7006510 m!7703444))

(declare-fun m!7703494 () Bool)

(assert (=> b!7006510 m!7703494))

(assert (=> b!7006406 d!2184006))

(declare-fun lt!2501350 () List!67433)

(declare-fun e!4211520 () Bool)

(declare-fun b!7006522 () Bool)

(assert (=> b!7006522 (= e!4211520 (or (not (= (exprs!6792 ct2!306) Nil!67309)) (= lt!2501350 (exprs!6792 lt!2501233))))))

(declare-fun d!2184008 () Bool)

(assert (=> d!2184008 e!4211520))

(declare-fun res!2858720 () Bool)

(assert (=> d!2184008 (=> (not res!2858720) (not e!4211520))))

(declare-fun content!13349 (List!67433) (Set Regex!17296))

(assert (=> d!2184008 (= res!2858720 (= (content!13349 lt!2501350) (set.union (content!13349 (exprs!6792 lt!2501233)) (content!13349 (exprs!6792 ct2!306)))))))

(declare-fun e!4211519 () List!67433)

(assert (=> d!2184008 (= lt!2501350 e!4211519)))

(declare-fun c!1301187 () Bool)

(assert (=> d!2184008 (= c!1301187 (is-Nil!67309 (exprs!6792 lt!2501233)))))

(assert (=> d!2184008 (= (++!15287 (exprs!6792 lt!2501233) (exprs!6792 ct2!306)) lt!2501350)))

(declare-fun b!7006520 () Bool)

(assert (=> b!7006520 (= e!4211519 (Cons!67309 (h!73757 (exprs!6792 lt!2501233)) (++!15287 (t!381186 (exprs!6792 lt!2501233)) (exprs!6792 ct2!306))))))

(declare-fun b!7006519 () Bool)

(assert (=> b!7006519 (= e!4211519 (exprs!6792 ct2!306))))

(declare-fun b!7006521 () Bool)

(declare-fun res!2858721 () Bool)

(assert (=> b!7006521 (=> (not res!2858721) (not e!4211520))))

(declare-fun size!40960 (List!67433) Int)

(assert (=> b!7006521 (= res!2858721 (= (size!40960 lt!2501350) (+ (size!40960 (exprs!6792 lt!2501233)) (size!40960 (exprs!6792 ct2!306)))))))

(assert (= (and d!2184008 c!1301187) b!7006519))

(assert (= (and d!2184008 (not c!1301187)) b!7006520))

(assert (= (and d!2184008 res!2858720) b!7006521))

(assert (= (and b!7006521 res!2858721) b!7006522))

(declare-fun m!7703496 () Bool)

(assert (=> d!2184008 m!7703496))

(declare-fun m!7703498 () Bool)

(assert (=> d!2184008 m!7703498))

(declare-fun m!7703500 () Bool)

(assert (=> d!2184008 m!7703500))

(declare-fun m!7703502 () Bool)

(assert (=> b!7006520 m!7703502))

(declare-fun m!7703504 () Bool)

(assert (=> b!7006521 m!7703504))

(declare-fun m!7703506 () Bool)

(assert (=> b!7006521 m!7703506))

(declare-fun m!7703508 () Bool)

(assert (=> b!7006521 m!7703508))

(assert (=> b!7006397 d!2184008))

(assert (=> b!7006397 d!2183980))

(declare-fun d!2184010 () Bool)

(declare-fun e!4211523 () Bool)

(assert (=> d!2184010 e!4211523))

(declare-fun res!2858724 () Bool)

(assert (=> d!2184010 (=> (not res!2858724) (not e!4211523))))

(declare-fun lt!2501353 () Context!12584)

(declare-fun dynLambda!27053 (Int Context!12584) Context!12584)

(assert (=> d!2184010 (= res!2858724 (= lt!2501224 (dynLambda!27053 lambda!407210 lt!2501353)))))

(declare-fun choose!52610 ((Set Context!12584) Int Context!12584) Context!12584)

(assert (=> d!2184010 (= lt!2501353 (choose!52610 z1!570 lambda!407210 lt!2501224))))

(assert (=> d!2184010 (set.member lt!2501224 (map!15589 z1!570 lambda!407210))))

(assert (=> d!2184010 (= (mapPost2!151 z1!570 lambda!407210 lt!2501224) lt!2501353)))

(declare-fun b!7006526 () Bool)

(assert (=> b!7006526 (= e!4211523 (set.member lt!2501353 z1!570))))

(assert (= (and d!2184010 res!2858724) b!7006526))

(declare-fun b_lambda!264065 () Bool)

(assert (=> (not b_lambda!264065) (not d!2184010)))

(declare-fun m!7703510 () Bool)

(assert (=> d!2184010 m!7703510))

(declare-fun m!7703512 () Bool)

(assert (=> d!2184010 m!7703512))

(declare-fun m!7703514 () Bool)

(assert (=> d!2184010 m!7703514))

(declare-fun m!7703516 () Bool)

(assert (=> d!2184010 m!7703516))

(declare-fun m!7703518 () Bool)

(assert (=> b!7006526 m!7703518))

(assert (=> b!7006397 d!2184010))

(assert (=> b!7006413 d!2183996))

(declare-fun call!636234 () (Set Context!12584))

(declare-fun b!7006537 () Bool)

(declare-fun e!4211530 () (Set Context!12584))

(assert (=> b!7006537 (= e!4211530 (set.union call!636234 (derivationStepZipperUp!1946 (Context!12585 (t!381186 (exprs!6792 lt!2501229))) (h!73758 s!7408))))))

(declare-fun b!7006538 () Bool)

(declare-fun e!4211532 () (Set Context!12584))

(assert (=> b!7006538 (= e!4211532 call!636234)))

(declare-fun b!7006539 () Bool)

(assert (=> b!7006539 (= e!4211530 e!4211532)))

(declare-fun c!1301193 () Bool)

(assert (=> b!7006539 (= c!1301193 (is-Cons!67309 (exprs!6792 lt!2501229)))))

(declare-fun d!2184012 () Bool)

(declare-fun c!1301192 () Bool)

(declare-fun e!4211531 () Bool)

(assert (=> d!2184012 (= c!1301192 e!4211531)))

(declare-fun res!2858727 () Bool)

(assert (=> d!2184012 (=> (not res!2858727) (not e!4211531))))

(assert (=> d!2184012 (= res!2858727 (is-Cons!67309 (exprs!6792 lt!2501229)))))

(assert (=> d!2184012 (= (derivationStepZipperUp!1946 lt!2501229 (h!73758 s!7408)) e!4211530)))

(declare-fun b!7006540 () Bool)

(assert (=> b!7006540 (= e!4211532 (as set.empty (Set Context!12584)))))

(declare-fun bm!636229 () Bool)

(assert (=> bm!636229 (= call!636234 (derivationStepZipperDown!2014 (h!73757 (exprs!6792 lt!2501229)) (Context!12585 (t!381186 (exprs!6792 lt!2501229))) (h!73758 s!7408)))))

(declare-fun b!7006541 () Bool)

(assert (=> b!7006541 (= e!4211531 (nullable!7056 (h!73757 (exprs!6792 lt!2501229))))))

(assert (= (and d!2184012 res!2858727) b!7006541))

(assert (= (and d!2184012 c!1301192) b!7006537))

(assert (= (and d!2184012 (not c!1301192)) b!7006539))

(assert (= (and b!7006539 c!1301193) b!7006538))

(assert (= (and b!7006539 (not c!1301193)) b!7006540))

(assert (= (or b!7006537 b!7006538) bm!636229))

(declare-fun m!7703520 () Bool)

(assert (=> b!7006537 m!7703520))

(declare-fun m!7703522 () Bool)

(assert (=> bm!636229 m!7703522))

(declare-fun m!7703524 () Bool)

(assert (=> b!7006541 m!7703524))

(assert (=> b!7006413 d!2184012))

(declare-fun b!7006564 () Bool)

(declare-fun e!4211548 () Bool)

(assert (=> b!7006564 (= e!4211548 (nullable!7056 (regOne!35104 (h!73757 (exprs!6792 lt!2501233)))))))

(declare-fun b!7006565 () Bool)

(declare-fun e!4211549 () (Set Context!12584))

(declare-fun call!636248 () (Set Context!12584))

(assert (=> b!7006565 (= e!4211549 call!636248)))

(declare-fun b!7006566 () Bool)

(declare-fun e!4211547 () (Set Context!12584))

(assert (=> b!7006566 (= e!4211547 (set.insert lt!2501229 (as set.empty (Set Context!12584))))))

(declare-fun call!636252 () List!67433)

(declare-fun bm!636242 () Bool)

(declare-fun call!636247 () (Set Context!12584))

(declare-fun c!1301206 () Bool)

(assert (=> bm!636242 (= call!636247 (derivationStepZipperDown!2014 (ite c!1301206 (regTwo!35105 (h!73757 (exprs!6792 lt!2501233))) (regOne!35104 (h!73757 (exprs!6792 lt!2501233)))) (ite c!1301206 lt!2501229 (Context!12585 call!636252)) (h!73758 s!7408)))))

(declare-fun bm!636243 () Bool)

(declare-fun call!636250 () (Set Context!12584))

(declare-fun call!636251 () (Set Context!12584))

(assert (=> bm!636243 (= call!636250 call!636251)))

(declare-fun b!7006567 () Bool)

(declare-fun e!4211550 () (Set Context!12584))

(assert (=> b!7006567 (= e!4211550 (set.union call!636247 call!636250))))

(declare-fun b!7006568 () Bool)

(declare-fun e!4211546 () (Set Context!12584))

(assert (=> b!7006568 (= e!4211546 call!636248)))

(declare-fun b!7006569 () Bool)

(assert (=> b!7006569 (= e!4211549 (as set.empty (Set Context!12584)))))

(declare-fun b!7006570 () Bool)

(declare-fun c!1301204 () Bool)

(assert (=> b!7006570 (= c!1301204 e!4211548)))

(declare-fun res!2858730 () Bool)

(assert (=> b!7006570 (=> (not res!2858730) (not e!4211548))))

(assert (=> b!7006570 (= res!2858730 (is-Concat!26141 (h!73757 (exprs!6792 lt!2501233))))))

(declare-fun e!4211545 () (Set Context!12584))

(assert (=> b!7006570 (= e!4211545 e!4211550)))

(declare-fun b!7006571 () Bool)

(assert (=> b!7006571 (= e!4211545 (set.union call!636251 call!636247))))

(declare-fun bm!636244 () Bool)

(declare-fun call!636249 () List!67433)

(assert (=> bm!636244 (= call!636249 call!636252)))

(declare-fun c!1301207 () Bool)

(declare-fun bm!636245 () Bool)

(assert (=> bm!636245 (= call!636251 (derivationStepZipperDown!2014 (ite c!1301206 (regOne!35105 (h!73757 (exprs!6792 lt!2501233))) (ite c!1301204 (regTwo!35104 (h!73757 (exprs!6792 lt!2501233))) (ite c!1301207 (regOne!35104 (h!73757 (exprs!6792 lt!2501233))) (reg!17625 (h!73757 (exprs!6792 lt!2501233)))))) (ite (or c!1301206 c!1301204) lt!2501229 (Context!12585 call!636249)) (h!73758 s!7408)))))

(declare-fun b!7006572 () Bool)

(assert (=> b!7006572 (= e!4211547 e!4211545)))

(assert (=> b!7006572 (= c!1301206 (is-Union!17296 (h!73757 (exprs!6792 lt!2501233))))))

(declare-fun b!7006573 () Bool)

(declare-fun c!1301205 () Bool)

(assert (=> b!7006573 (= c!1301205 (is-Star!17296 (h!73757 (exprs!6792 lt!2501233))))))

(assert (=> b!7006573 (= e!4211546 e!4211549)))

(declare-fun d!2184014 () Bool)

(declare-fun c!1301208 () Bool)

(assert (=> d!2184014 (= c!1301208 (and (is-ElementMatch!17296 (h!73757 (exprs!6792 lt!2501233))) (= (c!1301167 (h!73757 (exprs!6792 lt!2501233))) (h!73758 s!7408))))))

(assert (=> d!2184014 (= (derivationStepZipperDown!2014 (h!73757 (exprs!6792 lt!2501233)) lt!2501229 (h!73758 s!7408)) e!4211547)))

(declare-fun b!7006574 () Bool)

(assert (=> b!7006574 (= e!4211550 e!4211546)))

(assert (=> b!7006574 (= c!1301207 (is-Concat!26141 (h!73757 (exprs!6792 lt!2501233))))))

(declare-fun bm!636246 () Bool)

(declare-fun $colon$colon!2518 (List!67433 Regex!17296) List!67433)

(assert (=> bm!636246 (= call!636252 ($colon$colon!2518 (exprs!6792 lt!2501229) (ite (or c!1301204 c!1301207) (regTwo!35104 (h!73757 (exprs!6792 lt!2501233))) (h!73757 (exprs!6792 lt!2501233)))))))

(declare-fun bm!636247 () Bool)

(assert (=> bm!636247 (= call!636248 call!636250)))

(assert (= (and d!2184014 c!1301208) b!7006566))

(assert (= (and d!2184014 (not c!1301208)) b!7006572))

(assert (= (and b!7006572 c!1301206) b!7006571))

(assert (= (and b!7006572 (not c!1301206)) b!7006570))

(assert (= (and b!7006570 res!2858730) b!7006564))

(assert (= (and b!7006570 c!1301204) b!7006567))

(assert (= (and b!7006570 (not c!1301204)) b!7006574))

(assert (= (and b!7006574 c!1301207) b!7006568))

(assert (= (and b!7006574 (not c!1301207)) b!7006573))

(assert (= (and b!7006573 c!1301205) b!7006565))

(assert (= (and b!7006573 (not c!1301205)) b!7006569))

(assert (= (or b!7006568 b!7006565) bm!636244))

(assert (= (or b!7006568 b!7006565) bm!636247))

(assert (= (or b!7006567 bm!636247) bm!636243))

(assert (= (or b!7006567 bm!636244) bm!636246))

(assert (= (or b!7006571 bm!636243) bm!636245))

(assert (= (or b!7006571 b!7006567) bm!636242))

(declare-fun m!7703526 () Bool)

(assert (=> bm!636242 m!7703526))

(declare-fun m!7703528 () Bool)

(assert (=> b!7006566 m!7703528))

(declare-fun m!7703530 () Bool)

(assert (=> b!7006564 m!7703530))

(declare-fun m!7703532 () Bool)

(assert (=> bm!636246 m!7703532))

(declare-fun m!7703534 () Bool)

(assert (=> bm!636245 m!7703534))

(assert (=> b!7006413 d!2184014))

(declare-fun e!4211552 () Bool)

(declare-fun lt!2501354 () List!67433)

(declare-fun b!7006578 () Bool)

(assert (=> b!7006578 (= e!4211552 (or (not (= (exprs!6792 ct2!306) Nil!67309)) (= lt!2501354 lt!2501249)))))

(declare-fun d!2184016 () Bool)

(assert (=> d!2184016 e!4211552))

(declare-fun res!2858731 () Bool)

(assert (=> d!2184016 (=> (not res!2858731) (not e!4211552))))

(assert (=> d!2184016 (= res!2858731 (= (content!13349 lt!2501354) (set.union (content!13349 lt!2501249) (content!13349 (exprs!6792 ct2!306)))))))

(declare-fun e!4211551 () List!67433)

(assert (=> d!2184016 (= lt!2501354 e!4211551)))

(declare-fun c!1301209 () Bool)

(assert (=> d!2184016 (= c!1301209 (is-Nil!67309 lt!2501249))))

(assert (=> d!2184016 (= (++!15287 lt!2501249 (exprs!6792 ct2!306)) lt!2501354)))

(declare-fun b!7006576 () Bool)

(assert (=> b!7006576 (= e!4211551 (Cons!67309 (h!73757 lt!2501249) (++!15287 (t!381186 lt!2501249) (exprs!6792 ct2!306))))))

(declare-fun b!7006575 () Bool)

(assert (=> b!7006575 (= e!4211551 (exprs!6792 ct2!306))))

(declare-fun b!7006577 () Bool)

(declare-fun res!2858732 () Bool)

(assert (=> b!7006577 (=> (not res!2858732) (not e!4211552))))

(assert (=> b!7006577 (= res!2858732 (= (size!40960 lt!2501354) (+ (size!40960 lt!2501249) (size!40960 (exprs!6792 ct2!306)))))))

(assert (= (and d!2184016 c!1301209) b!7006575))

(assert (= (and d!2184016 (not c!1301209)) b!7006576))

(assert (= (and d!2184016 res!2858731) b!7006577))

(assert (= (and b!7006577 res!2858732) b!7006578))

(declare-fun m!7703536 () Bool)

(assert (=> d!2184016 m!7703536))

(declare-fun m!7703538 () Bool)

(assert (=> d!2184016 m!7703538))

(assert (=> d!2184016 m!7703500))

(declare-fun m!7703540 () Bool)

(assert (=> b!7006576 m!7703540))

(declare-fun m!7703542 () Bool)

(assert (=> b!7006577 m!7703542))

(declare-fun m!7703544 () Bool)

(assert (=> b!7006577 m!7703544))

(assert (=> b!7006577 m!7703508))

(assert (=> b!7006413 d!2184016))

(declare-fun d!2184018 () Bool)

(declare-fun res!2858733 () Bool)

(declare-fun e!4211553 () Bool)

(assert (=> d!2184018 (=> res!2858733 e!4211553)))

(assert (=> d!2184018 (= res!2858733 (is-Nil!67309 lt!2501249))))

(assert (=> d!2184018 (= (forall!16210 lt!2501249 lambda!407211) e!4211553)))

(declare-fun b!7006579 () Bool)

(declare-fun e!4211554 () Bool)

(assert (=> b!7006579 (= e!4211553 e!4211554)))

(declare-fun res!2858734 () Bool)

(assert (=> b!7006579 (=> (not res!2858734) (not e!4211554))))

(assert (=> b!7006579 (= res!2858734 (dynLambda!27052 lambda!407211 (h!73757 lt!2501249)))))

(declare-fun b!7006580 () Bool)

(assert (=> b!7006580 (= e!4211554 (forall!16210 (t!381186 lt!2501249) lambda!407211))))

(assert (= (and d!2184018 (not res!2858733)) b!7006579))

(assert (= (and b!7006579 res!2858734) b!7006580))

(declare-fun b_lambda!264067 () Bool)

(assert (=> (not b_lambda!264067) (not b!7006579)))

(declare-fun m!7703546 () Bool)

(assert (=> b!7006579 m!7703546))

(declare-fun m!7703548 () Bool)

(assert (=> b!7006580 m!7703548))

(assert (=> b!7006403 d!2184018))

(assert (=> b!7006403 d!2183996))

(declare-fun b!7006581 () Bool)

(declare-fun e!4211555 () (Set Context!12584))

(declare-fun call!636253 () (Set Context!12584))

(assert (=> b!7006581 (= e!4211555 (set.union call!636253 (derivationStepZipperUp!1946 (Context!12585 (t!381186 (exprs!6792 lt!2501225))) (h!73758 s!7408))))))

(declare-fun b!7006582 () Bool)

(declare-fun e!4211557 () (Set Context!12584))

(assert (=> b!7006582 (= e!4211557 call!636253)))

(declare-fun b!7006583 () Bool)

(assert (=> b!7006583 (= e!4211555 e!4211557)))

(declare-fun c!1301211 () Bool)

(assert (=> b!7006583 (= c!1301211 (is-Cons!67309 (exprs!6792 lt!2501225)))))

(declare-fun d!2184020 () Bool)

(declare-fun c!1301210 () Bool)

(declare-fun e!4211556 () Bool)

(assert (=> d!2184020 (= c!1301210 e!4211556)))

(declare-fun res!2858735 () Bool)

(assert (=> d!2184020 (=> (not res!2858735) (not e!4211556))))

(assert (=> d!2184020 (= res!2858735 (is-Cons!67309 (exprs!6792 lt!2501225)))))

(assert (=> d!2184020 (= (derivationStepZipperUp!1946 lt!2501225 (h!73758 s!7408)) e!4211555)))

(declare-fun b!7006584 () Bool)

(assert (=> b!7006584 (= e!4211557 (as set.empty (Set Context!12584)))))

(declare-fun bm!636248 () Bool)

(assert (=> bm!636248 (= call!636253 (derivationStepZipperDown!2014 (h!73757 (exprs!6792 lt!2501225)) (Context!12585 (t!381186 (exprs!6792 lt!2501225))) (h!73758 s!7408)))))

(declare-fun b!7006585 () Bool)

(assert (=> b!7006585 (= e!4211556 (nullable!7056 (h!73757 (exprs!6792 lt!2501225))))))

(assert (= (and d!2184020 res!2858735) b!7006585))

(assert (= (and d!2184020 c!1301210) b!7006581))

(assert (= (and d!2184020 (not c!1301210)) b!7006583))

(assert (= (and b!7006583 c!1301211) b!7006582))

(assert (= (and b!7006583 (not c!1301211)) b!7006584))

(assert (= (or b!7006581 b!7006582) bm!636248))

(declare-fun m!7703550 () Bool)

(assert (=> b!7006581 m!7703550))

(declare-fun m!7703552 () Bool)

(assert (=> bm!636248 m!7703552))

(declare-fun m!7703554 () Bool)

(assert (=> b!7006585 m!7703554))

(assert (=> b!7006414 d!2184020))

(declare-fun bs!1865476 () Bool)

(declare-fun d!2184022 () Bool)

(assert (= bs!1865476 (and d!2184022 b!7006414)))

(declare-fun lambda!407262 () Int)

(assert (=> bs!1865476 (= lambda!407262 lambda!407212)))

(assert (=> d!2184022 true))

(assert (=> d!2184022 (= (derivationStepZipper!2776 lt!2501246 (h!73758 s!7408)) (flatMap!2282 lt!2501246 lambda!407262))))

(declare-fun bs!1865477 () Bool)

(assert (= bs!1865477 d!2184022))

(declare-fun m!7703556 () Bool)

(assert (=> bs!1865477 m!7703556))

(assert (=> b!7006414 d!2184022))

(declare-fun d!2184024 () Bool)

(declare-fun dynLambda!27054 (Int Context!12584) (Set Context!12584))

(assert (=> d!2184024 (= (flatMap!2282 lt!2501246 lambda!407212) (dynLambda!27054 lambda!407212 lt!2501225))))

(declare-fun lt!2501357 () Unit!161268)

(declare-fun choose!52611 ((Set Context!12584) Context!12584 Int) Unit!161268)

(assert (=> d!2184024 (= lt!2501357 (choose!52611 lt!2501246 lt!2501225 lambda!407212))))

(assert (=> d!2184024 (= lt!2501246 (set.insert lt!2501225 (as set.empty (Set Context!12584))))))

(assert (=> d!2184024 (= (lemmaFlatMapOnSingletonSet!1797 lt!2501246 lt!2501225 lambda!407212) lt!2501357)))

(declare-fun b_lambda!264069 () Bool)

(assert (=> (not b_lambda!264069) (not d!2184024)))

(declare-fun bs!1865478 () Bool)

(assert (= bs!1865478 d!2184024))

(assert (=> bs!1865478 m!7703314))

(declare-fun m!7703558 () Bool)

(assert (=> bs!1865478 m!7703558))

(declare-fun m!7703560 () Bool)

(assert (=> bs!1865478 m!7703560))

(assert (=> bs!1865478 m!7703300))

(assert (=> b!7006414 d!2184024))

(declare-fun d!2184026 () Bool)

(declare-fun choose!52612 ((Set Context!12584) Int) (Set Context!12584))

(assert (=> d!2184026 (= (flatMap!2282 lt!2501246 lambda!407212) (choose!52612 lt!2501246 lambda!407212))))

(declare-fun bs!1865479 () Bool)

(assert (= bs!1865479 d!2184026))

(declare-fun m!7703562 () Bool)

(assert (=> bs!1865479 m!7703562))

(assert (=> b!7006414 d!2184026))

(assert (=> b!7006414 d!2183980))

(declare-fun d!2184028 () Bool)

(declare-fun e!4211560 () Bool)

(assert (=> d!2184028 e!4211560))

(declare-fun res!2858738 () Bool)

(assert (=> d!2184028 (=> (not res!2858738) (not e!4211560))))

(declare-fun lt!2501360 () List!67435)

(declare-fun noDuplicate!2555 (List!67435) Bool)

(assert (=> d!2184028 (= res!2858738 (noDuplicate!2555 lt!2501360))))

(declare-fun choose!52613 ((Set Context!12584)) List!67435)

(assert (=> d!2184028 (= lt!2501360 (choose!52613 lt!2501222))))

(assert (=> d!2184028 (= (toList!10656 lt!2501222) lt!2501360)))

(declare-fun b!7006590 () Bool)

(declare-fun content!13350 (List!67435) (Set Context!12584))

(assert (=> b!7006590 (= e!4211560 (= (content!13350 lt!2501360) lt!2501222))))

(assert (= (and d!2184028 res!2858738) b!7006590))

(declare-fun m!7703564 () Bool)

(assert (=> d!2184028 m!7703564))

(declare-fun m!7703566 () Bool)

(assert (=> d!2184028 m!7703566))

(declare-fun m!7703568 () Bool)

(assert (=> b!7006590 m!7703568))

(assert (=> b!7006404 d!2184028))

(declare-fun bs!1865480 () Bool)

(declare-fun d!2184030 () Bool)

(assert (= bs!1865480 (and d!2184030 b!7006404)))

(declare-fun lambda!407265 () Int)

(assert (=> bs!1865480 (= lambda!407265 lambda!407209)))

(assert (=> d!2184030 true))

(assert (=> d!2184030 (exists!3129 lt!2501242 lambda!407265)))

(declare-fun lt!2501363 () Unit!161268)

(declare-fun choose!52614 (List!67435 List!67434) Unit!161268)

(assert (=> d!2184030 (= lt!2501363 (choose!52614 lt!2501242 s!7408))))

(assert (=> d!2184030 (matchZipper!2836 (content!13350 lt!2501242) s!7408)))

(assert (=> d!2184030 (= (lemmaZipperMatchesExistsMatchingContext!265 lt!2501242 s!7408) lt!2501363)))

(declare-fun bs!1865481 () Bool)

(assert (= bs!1865481 d!2184030))

(declare-fun m!7703570 () Bool)

(assert (=> bs!1865481 m!7703570))

(declare-fun m!7703572 () Bool)

(assert (=> bs!1865481 m!7703572))

(declare-fun m!7703574 () Bool)

(assert (=> bs!1865481 m!7703574))

(assert (=> bs!1865481 m!7703574))

(declare-fun m!7703576 () Bool)

(assert (=> bs!1865481 m!7703576))

(assert (=> b!7006404 d!2184030))

(declare-fun bs!1865482 () Bool)

(declare-fun d!2184032 () Bool)

(assert (= bs!1865482 (and d!2184032 b!7006404)))

(declare-fun lambda!407268 () Int)

(assert (=> bs!1865482 (not (= lambda!407268 lambda!407209))))

(declare-fun bs!1865483 () Bool)

(assert (= bs!1865483 (and d!2184032 d!2184030)))

(assert (=> bs!1865483 (not (= lambda!407268 lambda!407265))))

(assert (=> d!2184032 true))

(declare-fun order!28005 () Int)

(declare-fun dynLambda!27055 (Int Int) Int)

(assert (=> d!2184032 (< (dynLambda!27055 order!28005 lambda!407209) (dynLambda!27055 order!28005 lambda!407268))))

(declare-fun forall!16212 (List!67435 Int) Bool)

(assert (=> d!2184032 (= (exists!3129 lt!2501242 lambda!407209) (not (forall!16212 lt!2501242 lambda!407268)))))

(declare-fun bs!1865484 () Bool)

(assert (= bs!1865484 d!2184032))

(declare-fun m!7703578 () Bool)

(assert (=> bs!1865484 m!7703578))

(assert (=> b!7006404 d!2184032))

(declare-fun d!2184034 () Bool)

(declare-fun e!4211563 () Bool)

(assert (=> d!2184034 e!4211563))

(declare-fun res!2858742 () Bool)

(assert (=> d!2184034 (=> (not res!2858742) (not e!4211563))))

(declare-fun lt!2501366 () Context!12584)

(declare-fun dynLambda!27056 (Int Context!12584) Bool)

(assert (=> d!2184034 (= res!2858742 (dynLambda!27056 lambda!407209 lt!2501366))))

(declare-fun getWitness!1229 (List!67435 Int) Context!12584)

(assert (=> d!2184034 (= lt!2501366 (getWitness!1229 (toList!10656 lt!2501222) lambda!407209))))

(declare-fun exists!3131 ((Set Context!12584) Int) Bool)

(assert (=> d!2184034 (exists!3131 lt!2501222 lambda!407209)))

(assert (=> d!2184034 (= (getWitness!1227 lt!2501222 lambda!407209) lt!2501366)))

(declare-fun b!7006595 () Bool)

(assert (=> b!7006595 (= e!4211563 (set.member lt!2501366 lt!2501222))))

(assert (= (and d!2184034 res!2858742) b!7006595))

(declare-fun b_lambda!264071 () Bool)

(assert (=> (not b_lambda!264071) (not d!2184034)))

(declare-fun m!7703580 () Bool)

(assert (=> d!2184034 m!7703580))

(assert (=> d!2184034 m!7703320))

(assert (=> d!2184034 m!7703320))

(declare-fun m!7703582 () Bool)

(assert (=> d!2184034 m!7703582))

(declare-fun m!7703584 () Bool)

(assert (=> d!2184034 m!7703584))

(declare-fun m!7703586 () Bool)

(assert (=> b!7006595 m!7703586))

(assert (=> b!7006404 d!2184034))

(declare-fun d!2184036 () Bool)

(declare-fun c!1301216 () Bool)

(assert (=> d!2184036 (= c!1301216 (isEmpty!39314 s!7408))))

(declare-fun e!4211564 () Bool)

(assert (=> d!2184036 (= (matchZipper!2836 lt!2501238 s!7408) e!4211564)))

(declare-fun b!7006596 () Bool)

(assert (=> b!7006596 (= e!4211564 (nullableZipper!2476 lt!2501238))))

(declare-fun b!7006597 () Bool)

(assert (=> b!7006597 (= e!4211564 (matchZipper!2836 (derivationStepZipper!2776 lt!2501238 (head!14160 s!7408)) (tail!13361 s!7408)))))

(assert (= (and d!2184036 c!1301216) b!7006596))

(assert (= (and d!2184036 (not c!1301216)) b!7006597))

(assert (=> d!2184036 m!7703448))

(declare-fun m!7703588 () Bool)

(assert (=> b!7006596 m!7703588))

(assert (=> b!7006597 m!7703452))

(assert (=> b!7006597 m!7703452))

(declare-fun m!7703590 () Bool)

(assert (=> b!7006597 m!7703590))

(assert (=> b!7006597 m!7703456))

(assert (=> b!7006597 m!7703590))

(assert (=> b!7006597 m!7703456))

(declare-fun m!7703592 () Bool)

(assert (=> b!7006597 m!7703592))

(assert (=> b!7006404 d!2184036))

(declare-fun b!7006602 () Bool)

(declare-fun e!4211567 () Bool)

(declare-fun tp!1931783 () Bool)

(declare-fun tp!1931784 () Bool)

(assert (=> b!7006602 (= e!4211567 (and tp!1931783 tp!1931784))))

(assert (=> b!7006415 (= tp!1931765 e!4211567)))

(assert (= (and b!7006415 (is-Cons!67309 (exprs!6792 setElem!48240))) b!7006602))

(declare-fun b!7006607 () Bool)

(declare-fun e!4211570 () Bool)

(declare-fun tp!1931787 () Bool)

(assert (=> b!7006607 (= e!4211570 (and tp_is_empty!43817 tp!1931787))))

(assert (=> b!7006410 (= tp!1931764 e!4211570)))

(assert (= (and b!7006410 (is-Cons!67310 (t!381187 s!7408))) b!7006607))

(declare-fun condSetEmpty!48246 () Bool)

(assert (=> setNonEmpty!48240 (= condSetEmpty!48246 (= setRest!48240 (as set.empty (Set Context!12584))))))

(declare-fun setRes!48246 () Bool)

(assert (=> setNonEmpty!48240 (= tp!1931763 setRes!48246)))

(declare-fun setIsEmpty!48246 () Bool)

(assert (=> setIsEmpty!48246 setRes!48246))

(declare-fun e!4211573 () Bool)

(declare-fun tp!1931793 () Bool)

(declare-fun setNonEmpty!48246 () Bool)

(declare-fun setElem!48246 () Context!12584)

(assert (=> setNonEmpty!48246 (= setRes!48246 (and tp!1931793 (inv!86100 setElem!48246) e!4211573))))

(declare-fun setRest!48246 () (Set Context!12584))

(assert (=> setNonEmpty!48246 (= setRest!48240 (set.union (set.insert setElem!48246 (as set.empty (Set Context!12584))) setRest!48246))))

(declare-fun b!7006612 () Bool)

(declare-fun tp!1931792 () Bool)

(assert (=> b!7006612 (= e!4211573 tp!1931792)))

(assert (= (and setNonEmpty!48240 condSetEmpty!48246) setIsEmpty!48246))

(assert (= (and setNonEmpty!48240 (not condSetEmpty!48246)) setNonEmpty!48246))

(assert (= setNonEmpty!48246 b!7006612))

(declare-fun m!7703594 () Bool)

(assert (=> setNonEmpty!48246 m!7703594))

(declare-fun b!7006613 () Bool)

(declare-fun e!4211574 () Bool)

(declare-fun tp!1931794 () Bool)

(declare-fun tp!1931795 () Bool)

(assert (=> b!7006613 (= e!4211574 (and tp!1931794 tp!1931795))))

(assert (=> b!7006401 (= tp!1931766 e!4211574)))

(assert (= (and b!7006401 (is-Cons!67309 (exprs!6792 ct2!306))) b!7006613))

(declare-fun b_lambda!264073 () Bool)

(assert (= b_lambda!264065 (or b!7006397 b_lambda!264073)))

(declare-fun bs!1865485 () Bool)

(declare-fun d!2184038 () Bool)

(assert (= bs!1865485 (and d!2184038 b!7006397)))

(declare-fun lt!2501367 () Unit!161268)

(assert (=> bs!1865485 (= lt!2501367 (lemmaConcatPreservesForall!632 (exprs!6792 lt!2501353) (exprs!6792 ct2!306) lambda!407211))))

(assert (=> bs!1865485 (= (dynLambda!27053 lambda!407210 lt!2501353) (Context!12585 (++!15287 (exprs!6792 lt!2501353) (exprs!6792 ct2!306))))))

(declare-fun m!7703596 () Bool)

(assert (=> bs!1865485 m!7703596))

(declare-fun m!7703598 () Bool)

(assert (=> bs!1865485 m!7703598))

(assert (=> d!2184010 d!2184038))

(declare-fun b_lambda!264075 () Bool)

(assert (= b_lambda!264067 (or b!7006397 b_lambda!264075)))

(declare-fun bs!1865486 () Bool)

(declare-fun d!2184040 () Bool)

(assert (= bs!1865486 (and d!2184040 b!7006397)))

(declare-fun validRegex!8877 (Regex!17296) Bool)

(assert (=> bs!1865486 (= (dynLambda!27052 lambda!407211 (h!73757 lt!2501249)) (validRegex!8877 (h!73757 lt!2501249)))))

(declare-fun m!7703600 () Bool)

(assert (=> bs!1865486 m!7703600))

(assert (=> b!7006579 d!2184040))

(declare-fun b_lambda!264077 () Bool)

(assert (= b_lambda!264069 (or b!7006414 b_lambda!264077)))

(declare-fun bs!1865487 () Bool)

(declare-fun d!2184042 () Bool)

(assert (= bs!1865487 (and d!2184042 b!7006414)))

(assert (=> bs!1865487 (= (dynLambda!27054 lambda!407212 lt!2501225) (derivationStepZipperUp!1946 lt!2501225 (h!73758 s!7408)))))

(assert (=> bs!1865487 m!7703310))

(assert (=> d!2184024 d!2184042))

(declare-fun b_lambda!264079 () Bool)

(assert (= b_lambda!264063 (or b!7006397 b_lambda!264079)))

(declare-fun bs!1865488 () Bool)

(declare-fun d!2184044 () Bool)

(assert (= bs!1865488 (and d!2184044 b!7006397)))

(assert (=> bs!1865488 (= (dynLambda!27052 lambda!407211 (h!73757 (exprs!6792 ct2!306))) (validRegex!8877 (h!73757 (exprs!6792 ct2!306))))))

(declare-fun m!7703602 () Bool)

(assert (=> bs!1865488 m!7703602))

(assert (=> b!7006500 d!2184044))

(declare-fun b_lambda!264081 () Bool)

(assert (= b_lambda!264071 (or b!7006404 b_lambda!264081)))

(declare-fun bs!1865489 () Bool)

(declare-fun d!2184046 () Bool)

(assert (= bs!1865489 (and d!2184046 b!7006404)))

(assert (=> bs!1865489 (= (dynLambda!27056 lambda!407209 lt!2501366) (matchZipper!2836 (set.insert lt!2501366 (as set.empty (Set Context!12584))) s!7408))))

(declare-fun m!7703604 () Bool)

(assert (=> bs!1865489 m!7703604))

(assert (=> bs!1865489 m!7703604))

(declare-fun m!7703606 () Bool)

(assert (=> bs!1865489 m!7703606))

(assert (=> d!2184034 d!2184046))

(push 1)

(assert (not d!2184026))

(assert (not d!2184000))

(assert (not b!7006576))

(assert (not b!7006508))

(assert (not b!7006541))

(assert (not bm!636246))

(assert (not d!2183992))

(assert (not d!2184034))

(assert (not bs!1865488))

(assert (not b_lambda!264081))

(assert (not b!7006503))

(assert (not b!7006613))

(assert (not b!7006577))

(assert (not bm!636245))

(assert (not d!2184006))

(assert (not b!7006493))

(assert (not d!2183996))

(assert (not d!2184032))

(assert (not d!2183988))

(assert (not d!2183982))

(assert (not d!2184010))

(assert tp_is_empty!43817)

(assert (not b!7006509))

(assert (not d!2184024))

(assert (not d!2183980))

(assert (not b!7006612))

(assert (not b!7006597))

(assert (not b!7006521))

(assert (not b!7006590))

(assert (not b!7006495))

(assert (not d!2184036))

(assert (not b!7006506))

(assert (not b_lambda!264075))

(assert (not d!2184016))

(assert (not d!2183998))

(assert (not b!7006510))

(assert (not bs!1865485))

(assert (not d!2183986))

(assert (not b!7006602))

(assert (not b_lambda!264073))

(assert (not b!7006585))

(assert (not bs!1865486))

(assert (not b!7006502))

(assert (not b_lambda!264079))

(assert (not b!7006507))

(assert (not setNonEmpty!48246))

(assert (not b_lambda!264077))

(assert (not bm!636248))

(assert (not b!7006564))

(assert (not d!2184030))

(assert (not b!7006581))

(assert (not d!2184022))

(assert (not b!7006492))

(assert (not b!7006596))

(assert (not b!7006537))

(assert (not d!2184028))

(assert (not b!7006501))

(assert (not b!7006494))

(assert (not d!2184002))

(assert (not d!2183990))

(assert (not bs!1865489))

(assert (not bm!636229))

(assert (not b!7006520))

(assert (not bm!636242))

(assert (not b!7006580))

(assert (not d!2184004))

(assert (not d!2184008))

(assert (not bs!1865487))

(assert (not b!7006607))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

