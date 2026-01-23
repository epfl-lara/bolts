; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!687262 () Bool)

(assert start!687262)

(declare-fun b!7073484 () Bool)

(assert (=> b!7073484 true))

(declare-fun b!7073487 () Bool)

(assert (=> b!7073487 true))

(declare-fun b!7073507 () Bool)

(assert (=> b!7073507 true))

(declare-fun bs!1880889 () Bool)

(declare-fun b!7073511 () Bool)

(assert (= bs!1880889 (and b!7073511 b!7073484)))

(declare-datatypes ((C!35574 0))(
  ( (C!35575 (val!27489 Int)) )
))
(declare-datatypes ((List!68482 0))(
  ( (Nil!68358) (Cons!68358 (h!74806 C!35574) (t!382265 List!68482)) )
))
(declare-fun lt!2547334 () List!68482)

(declare-fun lambda!426037 () Int)

(declare-fun lambda!426041 () Int)

(declare-fun s!7408 () List!68482)

(assert (=> bs!1880889 (= (= lt!2547334 s!7408) (= lambda!426041 lambda!426037))))

(assert (=> b!7073511 true))

(declare-fun b!7073482 () Bool)

(declare-fun e!4252603 () Bool)

(declare-fun e!4252606 () Bool)

(assert (=> b!7073482 (= e!4252603 e!4252606)))

(declare-fun res!2889038 () Bool)

(assert (=> b!7073482 (=> res!2889038 e!4252606)))

(declare-datatypes ((Regex!17652 0))(
  ( (ElementMatch!17652 (c!1319552 C!35574)) (Concat!26497 (regOne!35816 Regex!17652) (regTwo!35816 Regex!17652)) (EmptyExpr!17652) (Star!17652 (reg!17981 Regex!17652)) (EmptyLang!17652) (Union!17652 (regOne!35817 Regex!17652) (regTwo!35817 Regex!17652)) )
))
(declare-datatypes ((List!68483 0))(
  ( (Nil!68359) (Cons!68359 (h!74807 Regex!17652) (t!382266 List!68483)) )
))
(declare-datatypes ((Context!13296 0))(
  ( (Context!13297 (exprs!7148 List!68483)) )
))
(declare-fun lt!2547330 () (Set Context!13296))

(declare-fun lt!2547374 () (Set Context!13296))

(assert (=> b!7073482 (= res!2889038 (not (= lt!2547330 lt!2547374)))))

(declare-fun lt!2547339 () (Set Context!13296))

(declare-fun lt!2547343 () (Set Context!13296))

(assert (=> b!7073482 (= lt!2547374 (set.union lt!2547339 lt!2547343))))

(declare-fun lt!2547338 () Context!13296)

(declare-fun derivationStepZipperUp!2236 (Context!13296 C!35574) (Set Context!13296))

(assert (=> b!7073482 (= lt!2547343 (derivationStepZipperUp!2236 lt!2547338 (h!74806 s!7408)))))

(declare-fun lt!2547335 () Context!13296)

(declare-fun derivationStepZipperDown!2286 (Regex!17652 Context!13296 C!35574) (Set Context!13296))

(assert (=> b!7073482 (= lt!2547339 (derivationStepZipperDown!2286 (h!74807 (exprs!7148 lt!2547335)) lt!2547338 (h!74806 s!7408)))))

(declare-fun lt!2547333 () List!68483)

(declare-fun ct2!306 () Context!13296)

(declare-fun ++!15787 (List!68483 List!68483) List!68483)

(assert (=> b!7073482 (= lt!2547338 (Context!13297 (++!15787 lt!2547333 (exprs!7148 ct2!306))))))

(declare-datatypes ((Unit!162014 0))(
  ( (Unit!162015) )
))
(declare-fun lt!2547380 () Unit!162014)

(declare-fun lambda!426039 () Int)

(declare-fun lemmaConcatPreservesForall!963 (List!68483 List!68483 Int) Unit!162014)

(assert (=> b!7073482 (= lt!2547380 (lemmaConcatPreservesForall!963 lt!2547333 (exprs!7148 ct2!306) lambda!426039))))

(declare-fun lt!2547331 () Unit!162014)

(assert (=> b!7073482 (= lt!2547331 (lemmaConcatPreservesForall!963 lt!2547333 (exprs!7148 ct2!306) lambda!426039))))

(declare-fun b!7073483 () Bool)

(declare-fun e!4252596 () Bool)

(declare-fun e!4252600 () Bool)

(assert (=> b!7073483 (= e!4252596 e!4252600)))

(declare-fun res!2889042 () Bool)

(assert (=> b!7073483 (=> res!2889042 e!4252600)))

(declare-fun lt!2547362 () Bool)

(assert (=> b!7073483 (= res!2889042 (not lt!2547362))))

(declare-fun lt!2547358 () Unit!162014)

(assert (=> b!7073483 (= lt!2547358 (lemmaConcatPreservesForall!963 lt!2547333 (exprs!7148 ct2!306) lambda!426039))))

(declare-fun lt!2547340 () Unit!162014)

(assert (=> b!7073483 (= lt!2547340 (lemmaConcatPreservesForall!963 lt!2547333 (exprs!7148 ct2!306) lambda!426039))))

(declare-fun e!4252605 () Bool)

(declare-fun e!4252595 () Bool)

(assert (=> b!7073484 (= e!4252605 (not e!4252595))))

(declare-fun res!2889058 () Bool)

(assert (=> b!7073484 (=> res!2889058 e!4252595)))

(declare-fun lt!2547365 () (Set Context!13296))

(declare-fun matchZipper!3192 ((Set Context!13296) List!68482) Bool)

(assert (=> b!7073484 (= res!2889058 (not (matchZipper!3192 lt!2547365 s!7408)))))

(declare-fun lt!2547336 () Context!13296)

(assert (=> b!7073484 (= lt!2547365 (set.insert lt!2547336 (as set.empty (Set Context!13296))))))

(declare-fun lt!2547346 () (Set Context!13296))

(declare-fun getWitness!1758 ((Set Context!13296) Int) Context!13296)

(assert (=> b!7073484 (= lt!2547336 (getWitness!1758 lt!2547346 lambda!426037))))

(declare-datatypes ((List!68484 0))(
  ( (Nil!68360) (Cons!68360 (h!74808 Context!13296) (t!382267 List!68484)) )
))
(declare-fun lt!2547344 () List!68484)

(declare-fun exists!3704 (List!68484 Int) Bool)

(assert (=> b!7073484 (exists!3704 lt!2547344 lambda!426037)))

(declare-fun lt!2547337 () Unit!162014)

(declare-fun lemmaZipperMatchesExistsMatchingContext!573 (List!68484 List!68482) Unit!162014)

(assert (=> b!7073484 (= lt!2547337 (lemmaZipperMatchesExistsMatchingContext!573 lt!2547344 s!7408))))

(declare-fun toList!10993 ((Set Context!13296)) List!68484)

(assert (=> b!7073484 (= lt!2547344 (toList!10993 lt!2547346))))

(declare-fun b!7073485 () Bool)

(declare-fun e!4252597 () Bool)

(declare-fun e!4252613 () Bool)

(assert (=> b!7073485 (= e!4252597 e!4252613)))

(declare-fun res!2889057 () Bool)

(assert (=> b!7073485 (=> res!2889057 e!4252613)))

(declare-fun e!4252602 () Bool)

(assert (=> b!7073485 (= res!2889057 e!4252602)))

(declare-fun res!2889041 () Bool)

(assert (=> b!7073485 (=> (not res!2889041) (not e!4252602))))

(declare-fun lt!2547367 () Bool)

(assert (=> b!7073485 (= res!2889041 (not lt!2547367))))

(declare-fun lt!2547375 () (Set Context!13296))

(assert (=> b!7073485 (= lt!2547367 (matchZipper!3192 lt!2547375 lt!2547334))))

(declare-datatypes ((tuple2!68278 0))(
  ( (tuple2!68279 (_1!37442 List!68482) (_2!37442 List!68482)) )
))
(declare-fun lt!2547341 () tuple2!68278)

(assert (=> b!7073485 (= lt!2547334 (Cons!68358 (h!74806 s!7408) (_1!37442 lt!2547341)))))

(declare-fun lt!2547369 () (Set Context!13296))

(assert (=> b!7073485 (matchZipper!3192 lt!2547369 (_1!37442 lt!2547341))))

(declare-fun lt!2547332 () (Set Context!13296))

(declare-fun lt!2547351 () Unit!162014)

(declare-fun lt!2547371 () (Set Context!13296))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1665 ((Set Context!13296) (Set Context!13296) List!68482) Unit!162014)

(assert (=> b!7073485 (= lt!2547351 (lemmaZipperConcatMatchesSameAsBothZippers!1665 lt!2547371 lt!2547332 (_1!37442 lt!2547341)))))

(declare-fun b!7073486 () Bool)

(declare-fun e!4252604 () Bool)

(declare-fun e!4252594 () Bool)

(assert (=> b!7073486 (= e!4252604 e!4252594)))

(declare-fun res!2889052 () Bool)

(assert (=> b!7073486 (=> res!2889052 e!4252594)))

(declare-fun lt!2547361 () (Set Context!13296))

(assert (=> b!7073486 (= res!2889052 (not (= lt!2547361 lt!2547365)))))

(declare-fun lt!2547353 () Context!13296)

(assert (=> b!7073486 (= lt!2547361 (set.insert lt!2547353 (as set.empty (Set Context!13296))))))

(declare-fun lt!2547379 () Unit!162014)

(assert (=> b!7073486 (= lt!2547379 (lemmaConcatPreservesForall!963 (exprs!7148 lt!2547335) (exprs!7148 ct2!306) lambda!426039))))

(assert (=> b!7073487 (= e!4252595 e!4252604)))

(declare-fun res!2889047 () Bool)

(assert (=> b!7073487 (=> res!2889047 e!4252604)))

(declare-fun z1!570 () (Set Context!13296))

(assert (=> b!7073487 (= res!2889047 (or (not (= lt!2547353 lt!2547336)) (not (set.member lt!2547335 z1!570))))))

(assert (=> b!7073487 (= lt!2547353 (Context!13297 (++!15787 (exprs!7148 lt!2547335) (exprs!7148 ct2!306))))))

(declare-fun lt!2547349 () Unit!162014)

(assert (=> b!7073487 (= lt!2547349 (lemmaConcatPreservesForall!963 (exprs!7148 lt!2547335) (exprs!7148 ct2!306) lambda!426039))))

(declare-fun lambda!426038 () Int)

(declare-fun mapPost2!481 ((Set Context!13296) Int Context!13296) Context!13296)

(assert (=> b!7073487 (= lt!2547335 (mapPost2!481 z1!570 lambda!426038 lt!2547336))))

(declare-fun setIsEmpty!50294 () Bool)

(declare-fun setRes!50294 () Bool)

(assert (=> setIsEmpty!50294 setRes!50294))

(declare-fun b!7073488 () Bool)

(declare-fun e!4252593 () Bool)

(declare-fun tp!1942479 () Bool)

(assert (=> b!7073488 (= e!4252593 tp!1942479)))

(declare-fun b!7073489 () Bool)

(declare-fun e!4252608 () Bool)

(assert (=> b!7073489 (= e!4252606 e!4252608)))

(declare-fun res!2889048 () Bool)

(assert (=> b!7073489 (=> res!2889048 e!4252608)))

(declare-fun e!4252599 () Bool)

(assert (=> b!7073489 (= res!2889048 e!4252599)))

(declare-fun res!2889051 () Bool)

(assert (=> b!7073489 (=> (not res!2889051) (not e!4252599))))

(declare-fun lt!2547366 () Bool)

(assert (=> b!7073489 (= res!2889051 (not (= lt!2547366 lt!2547362)))))

(assert (=> b!7073489 (= lt!2547366 (matchZipper!3192 lt!2547330 (t!382265 s!7408)))))

(declare-fun lt!2547350 () Unit!162014)

(assert (=> b!7073489 (= lt!2547350 (lemmaConcatPreservesForall!963 lt!2547333 (exprs!7148 ct2!306) lambda!426039))))

(declare-fun e!4252612 () Bool)

(assert (=> b!7073489 (= (matchZipper!3192 lt!2547374 (t!382265 s!7408)) e!4252612)))

(declare-fun res!2889062 () Bool)

(assert (=> b!7073489 (=> res!2889062 e!4252612)))

(assert (=> b!7073489 (= res!2889062 lt!2547362)))

(assert (=> b!7073489 (= lt!2547362 (matchZipper!3192 lt!2547339 (t!382265 s!7408)))))

(declare-fun lt!2547354 () Unit!162014)

(assert (=> b!7073489 (= lt!2547354 (lemmaZipperConcatMatchesSameAsBothZippers!1665 lt!2547339 lt!2547343 (t!382265 s!7408)))))

(declare-fun lt!2547377 () Unit!162014)

(assert (=> b!7073489 (= lt!2547377 (lemmaConcatPreservesForall!963 lt!2547333 (exprs!7148 ct2!306) lambda!426039))))

(declare-fun lt!2547356 () Unit!162014)

(assert (=> b!7073489 (= lt!2547356 (lemmaConcatPreservesForall!963 lt!2547333 (exprs!7148 ct2!306) lambda!426039))))

(declare-fun b!7073491 () Bool)

(declare-fun res!2889046 () Bool)

(declare-fun e!4252609 () Bool)

(assert (=> b!7073491 (=> res!2889046 e!4252609)))

(assert (=> b!7073491 (= res!2889046 (not (is-Cons!68359 (exprs!7148 lt!2547335))))))

(declare-fun b!7073492 () Bool)

(declare-fun e!4252601 () Bool)

(assert (=> b!7073492 (= e!4252600 e!4252601)))

(declare-fun res!2889059 () Bool)

(assert (=> b!7073492 (=> res!2889059 e!4252601)))

(assert (=> b!7073492 (= res!2889059 (not (matchZipper!3192 lt!2547371 (_1!37442 lt!2547341))))))

(declare-datatypes ((Option!16971 0))(
  ( (None!16970) (Some!16970 (v!53264 tuple2!68278)) )
))
(declare-fun lt!2547345 () Option!16971)

(declare-fun get!23948 (Option!16971) tuple2!68278)

(assert (=> b!7073492 (= lt!2547341 (get!23948 lt!2547345))))

(declare-fun isDefined!13672 (Option!16971) Bool)

(assert (=> b!7073492 (isDefined!13672 lt!2547345)))

(declare-fun lt!2547376 () (Set Context!13296))

(declare-fun findConcatSeparationZippers!487 ((Set Context!13296) (Set Context!13296) List!68482 List!68482 List!68482) Option!16971)

(assert (=> b!7073492 (= lt!2547345 (findConcatSeparationZippers!487 lt!2547371 lt!2547376 Nil!68358 (t!382265 s!7408) (t!382265 s!7408)))))

(assert (=> b!7073492 (= lt!2547376 (set.insert ct2!306 (as set.empty (Set Context!13296))))))

(declare-fun lt!2547360 () Unit!162014)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!475 ((Set Context!13296) Context!13296 List!68482) Unit!162014)

(assert (=> b!7073492 (= lt!2547360 (lemmaConcatZipperMatchesStringThenFindConcatDefined!475 lt!2547371 ct2!306 (t!382265 s!7408)))))

(declare-fun lt!2547364 () Unit!162014)

(assert (=> b!7073492 (= lt!2547364 (lemmaConcatPreservesForall!963 lt!2547333 (exprs!7148 ct2!306) lambda!426039))))

(declare-fun appendTo!773 ((Set Context!13296) Context!13296) (Set Context!13296))

(assert (=> b!7073492 (= lt!2547339 (appendTo!773 lt!2547371 ct2!306))))

(declare-fun lt!2547370 () Context!13296)

(assert (=> b!7073492 (= lt!2547371 (derivationStepZipperDown!2286 (h!74807 (exprs!7148 lt!2547335)) lt!2547370 (h!74806 s!7408)))))

(declare-fun lt!2547363 () Unit!162014)

(assert (=> b!7073492 (= lt!2547363 (lemmaConcatPreservesForall!963 lt!2547333 (exprs!7148 ct2!306) lambda!426039))))

(declare-fun lt!2547342 () Unit!162014)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!123 (Context!13296 Regex!17652 C!35574 Context!13296) Unit!162014)

(assert (=> b!7073492 (= lt!2547342 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!123 lt!2547370 (h!74807 (exprs!7148 lt!2547335)) (h!74806 s!7408) ct2!306))))

(declare-fun b!7073493 () Bool)

(declare-fun e!4252610 () Bool)

(declare-fun isPrefix!5855 (List!68482 List!68482) Bool)

(assert (=> b!7073493 (= e!4252610 (isPrefix!5855 Nil!68358 lt!2547334))))

(declare-fun b!7073494 () Bool)

(declare-fun res!2889056 () Bool)

(assert (=> b!7073494 (=> res!2889056 e!4252601)))

(declare-fun ++!15788 (List!68482 List!68482) List!68482)

(assert (=> b!7073494 (= res!2889056 (not (= (++!15788 (_1!37442 lt!2547341) (_2!37442 lt!2547341)) (t!382265 s!7408))))))

(declare-fun tp!1942478 () Bool)

(declare-fun setNonEmpty!50294 () Bool)

(declare-fun setElem!50294 () Context!13296)

(declare-fun inv!86990 (Context!13296) Bool)

(assert (=> setNonEmpty!50294 (= setRes!50294 (and tp!1942478 (inv!86990 setElem!50294) e!4252593))))

(declare-fun setRest!50294 () (Set Context!13296))

(assert (=> setNonEmpty!50294 (= z1!570 (set.union (set.insert setElem!50294 (as set.empty (Set Context!13296))) setRest!50294))))

(declare-fun b!7073495 () Bool)

(declare-fun res!2889053 () Bool)

(assert (=> b!7073495 (=> res!2889053 e!4252595)))

(assert (=> b!7073495 (= res!2889053 (not (set.member lt!2547336 lt!2547346)))))

(declare-fun b!7073496 () Bool)

(declare-fun res!2889060 () Bool)

(assert (=> b!7073496 (=> res!2889060 e!4252608)))

(assert (=> b!7073496 (= res!2889060 (not lt!2547366))))

(declare-fun b!7073497 () Bool)

(declare-fun res!2889040 () Bool)

(assert (=> b!7073497 (=> res!2889040 e!4252610)))

(assert (=> b!7073497 (= res!2889040 (not (= (++!15788 lt!2547334 (_2!37442 lt!2547341)) s!7408)))))

(declare-fun b!7073498 () Bool)

(declare-fun res!2889061 () Bool)

(assert (=> b!7073498 (=> res!2889061 e!4252609)))

(declare-fun isEmpty!39896 (List!68483) Bool)

(assert (=> b!7073498 (= res!2889061 (isEmpty!39896 (exprs!7148 lt!2547335)))))

(declare-fun b!7073499 () Bool)

(assert (=> b!7073499 (= e!4252599 (not (matchZipper!3192 lt!2547343 (t!382265 s!7408))))))

(declare-fun lt!2547378 () Unit!162014)

(assert (=> b!7073499 (= lt!2547378 (lemmaConcatPreservesForall!963 lt!2547333 (exprs!7148 ct2!306) lambda!426039))))

(declare-fun b!7073500 () Bool)

(assert (=> b!7073500 (= e!4252602 (not (matchZipper!3192 lt!2547332 (_1!37442 lt!2547341))))))

(declare-fun b!7073501 () Bool)

(declare-fun res!2889044 () Bool)

(assert (=> b!7073501 (=> (not res!2889044) (not e!4252605))))

(assert (=> b!7073501 (= res!2889044 (is-Cons!68358 s!7408))))

(declare-fun b!7073502 () Bool)

(assert (=> b!7073502 (= e!4252609 e!4252603)))

(declare-fun res!2889036 () Bool)

(assert (=> b!7073502 (=> res!2889036 e!4252603)))

(declare-fun nullable!7335 (Regex!17652) Bool)

(assert (=> b!7073502 (= res!2889036 (not (nullable!7335 (h!74807 (exprs!7148 lt!2547335)))))))

(assert (=> b!7073502 (= lt!2547370 (Context!13297 lt!2547333))))

(declare-fun tail!13839 (List!68483) List!68483)

(assert (=> b!7073502 (= lt!2547333 (tail!13839 (exprs!7148 lt!2547335)))))

(declare-fun b!7073503 () Bool)

(declare-fun e!4252607 () Bool)

(declare-fun tp!1942480 () Bool)

(assert (=> b!7073503 (= e!4252607 tp!1942480)))

(declare-fun b!7073490 () Bool)

(declare-fun e!4252611 () Bool)

(assert (=> b!7073490 (= e!4252611 e!4252597)))

(declare-fun res!2889049 () Bool)

(assert (=> b!7073490 (=> res!2889049 e!4252597)))

(declare-fun lt!2547359 () (Set Context!13296))

(assert (=> b!7073490 (= res!2889049 (not (= lt!2547359 lt!2547369)))))

(assert (=> b!7073490 (= lt!2547369 (set.union lt!2547371 lt!2547332))))

(assert (=> b!7073490 (= lt!2547332 (derivationStepZipperUp!2236 lt!2547370 (h!74806 s!7408)))))

(declare-fun res!2889050 () Bool)

(assert (=> start!687262 (=> (not res!2889050) (not e!4252605))))

(assert (=> start!687262 (= res!2889050 (matchZipper!3192 lt!2547346 s!7408))))

(assert (=> start!687262 (= lt!2547346 (appendTo!773 z1!570 ct2!306))))

(assert (=> start!687262 e!4252605))

(declare-fun condSetEmpty!50294 () Bool)

(assert (=> start!687262 (= condSetEmpty!50294 (= z1!570 (as set.empty (Set Context!13296))))))

(assert (=> start!687262 setRes!50294))

(assert (=> start!687262 (and (inv!86990 ct2!306) e!4252607)))

(declare-fun e!4252598 () Bool)

(assert (=> start!687262 e!4252598))

(declare-fun b!7073504 () Bool)

(assert (=> b!7073504 (= e!4252612 (matchZipper!3192 lt!2547343 (t!382265 s!7408)))))

(declare-fun b!7073505 () Bool)

(declare-fun res!2889045 () Bool)

(assert (=> b!7073505 (=> res!2889045 e!4252601)))

(assert (=> b!7073505 (= res!2889045 (not (matchZipper!3192 lt!2547376 (_2!37442 lt!2547341))))))

(declare-fun b!7073506 () Bool)

(declare-fun tp_is_empty!44529 () Bool)

(declare-fun tp!1942477 () Bool)

(assert (=> b!7073506 (= e!4252598 (and tp_is_empty!44529 tp!1942477))))

(assert (=> b!7073507 (= e!4252594 e!4252609)))

(declare-fun res!2889054 () Bool)

(assert (=> b!7073507 (=> res!2889054 e!4252609)))

(declare-fun derivationStepZipper!3102 ((Set Context!13296) C!35574) (Set Context!13296))

(assert (=> b!7073507 (= res!2889054 (not (= (derivationStepZipper!3102 lt!2547361 (h!74806 s!7408)) lt!2547330)))))

(declare-fun lambda!426040 () Int)

(declare-fun flatMap!2578 ((Set Context!13296) Int) (Set Context!13296))

(assert (=> b!7073507 (= (flatMap!2578 lt!2547361 lambda!426040) (derivationStepZipperUp!2236 lt!2547353 (h!74806 s!7408)))))

(declare-fun lt!2547381 () Unit!162014)

(declare-fun lemmaFlatMapOnSingletonSet!2087 ((Set Context!13296) Context!13296 Int) Unit!162014)

(assert (=> b!7073507 (= lt!2547381 (lemmaFlatMapOnSingletonSet!2087 lt!2547361 lt!2547353 lambda!426040))))

(assert (=> b!7073507 (= lt!2547330 (derivationStepZipperUp!2236 lt!2547353 (h!74806 s!7408)))))

(declare-fun lt!2547368 () Unit!162014)

(assert (=> b!7073507 (= lt!2547368 (lemmaConcatPreservesForall!963 (exprs!7148 lt!2547335) (exprs!7148 ct2!306) lambda!426039))))

(declare-fun b!7073508 () Bool)

(declare-fun res!2889039 () Bool)

(assert (=> b!7073508 (=> res!2889039 e!4252613)))

(assert (=> b!7073508 (= res!2889039 (not lt!2547367))))

(declare-fun b!7073509 () Bool)

(assert (=> b!7073509 (= e!4252601 e!4252611)))

(declare-fun res!2889037 () Bool)

(assert (=> b!7073509 (=> res!2889037 e!4252611)))

(declare-fun lt!2547352 () (Set Context!13296))

(assert (=> b!7073509 (= res!2889037 (not (= lt!2547359 lt!2547352)))))

(assert (=> b!7073509 (= (flatMap!2578 lt!2547375 lambda!426040) (derivationStepZipperUp!2236 lt!2547335 (h!74806 s!7408)))))

(declare-fun lt!2547372 () Unit!162014)

(assert (=> b!7073509 (= lt!2547372 (lemmaFlatMapOnSingletonSet!2087 lt!2547375 lt!2547335 lambda!426040))))

(assert (=> b!7073509 (= lt!2547352 (derivationStepZipperUp!2236 lt!2547335 (h!74806 s!7408)))))

(assert (=> b!7073509 (= lt!2547359 (derivationStepZipper!3102 lt!2547375 (h!74806 s!7408)))))

(assert (=> b!7073509 (= lt!2547375 (set.insert lt!2547335 (as set.empty (Set Context!13296))))))

(declare-fun b!7073510 () Bool)

(assert (=> b!7073510 (= e!4252608 e!4252596)))

(declare-fun res!2889043 () Bool)

(assert (=> b!7073510 (=> res!2889043 e!4252596)))

(assert (=> b!7073510 (= res!2889043 (matchZipper!3192 lt!2547343 (t!382265 s!7408)))))

(declare-fun lt!2547347 () Unit!162014)

(assert (=> b!7073510 (= lt!2547347 (lemmaConcatPreservesForall!963 lt!2547333 (exprs!7148 ct2!306) lambda!426039))))

(assert (=> b!7073511 (= e!4252613 e!4252610)))

(declare-fun res!2889055 () Bool)

(assert (=> b!7073511 (=> res!2889055 e!4252610)))

(assert (=> b!7073511 (= res!2889055 (not (matchZipper!3192 z1!570 lt!2547334)))))

(declare-fun lt!2547348 () List!68484)

(declare-fun content!13804 (List!68484) (Set Context!13296))

(assert (=> b!7073511 (matchZipper!3192 (content!13804 lt!2547348) lt!2547334)))

(declare-fun lt!2547355 () Unit!162014)

(declare-fun lemmaExistsMatchingContextThenMatchingString!55 (List!68484 List!68482) Unit!162014)

(assert (=> b!7073511 (= lt!2547355 (lemmaExistsMatchingContextThenMatchingString!55 lt!2547348 lt!2547334))))

(assert (=> b!7073511 (= lt!2547348 (toList!10993 z1!570))))

(declare-fun exists!3705 ((Set Context!13296) Int) Bool)

(assert (=> b!7073511 (exists!3705 z1!570 lambda!426041)))

(declare-fun lt!2547357 () Unit!162014)

(declare-fun lemmaContainsThenExists!160 ((Set Context!13296) Context!13296 Int) Unit!162014)

(assert (=> b!7073511 (= lt!2547357 (lemmaContainsThenExists!160 z1!570 lt!2547335 lambda!426041))))

(assert (=> b!7073511 (isDefined!13672 (findConcatSeparationZippers!487 lt!2547375 lt!2547376 Nil!68358 s!7408 s!7408))))

(declare-fun lt!2547373 () Unit!162014)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!79 ((Set Context!13296) (Set Context!13296) List!68482 List!68482 List!68482 List!68482 List!68482) Unit!162014)

(assert (=> b!7073511 (= lt!2547373 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!79 lt!2547375 lt!2547376 lt!2547334 (_2!37442 lt!2547341) s!7408 Nil!68358 s!7408))))

(assert (= (and start!687262 res!2889050) b!7073501))

(assert (= (and b!7073501 res!2889044) b!7073484))

(assert (= (and b!7073484 (not res!2889058)) b!7073495))

(assert (= (and b!7073495 (not res!2889053)) b!7073487))

(assert (= (and b!7073487 (not res!2889047)) b!7073486))

(assert (= (and b!7073486 (not res!2889052)) b!7073507))

(assert (= (and b!7073507 (not res!2889054)) b!7073491))

(assert (= (and b!7073491 (not res!2889046)) b!7073498))

(assert (= (and b!7073498 (not res!2889061)) b!7073502))

(assert (= (and b!7073502 (not res!2889036)) b!7073482))

(assert (= (and b!7073482 (not res!2889038)) b!7073489))

(assert (= (and b!7073489 (not res!2889062)) b!7073504))

(assert (= (and b!7073489 res!2889051) b!7073499))

(assert (= (and b!7073489 (not res!2889048)) b!7073496))

(assert (= (and b!7073496 (not res!2889060)) b!7073510))

(assert (= (and b!7073510 (not res!2889043)) b!7073483))

(assert (= (and b!7073483 (not res!2889042)) b!7073492))

(assert (= (and b!7073492 (not res!2889059)) b!7073505))

(assert (= (and b!7073505 (not res!2889045)) b!7073494))

(assert (= (and b!7073494 (not res!2889056)) b!7073509))

(assert (= (and b!7073509 (not res!2889037)) b!7073490))

(assert (= (and b!7073490 (not res!2889049)) b!7073485))

(assert (= (and b!7073485 res!2889041) b!7073500))

(assert (= (and b!7073485 (not res!2889057)) b!7073508))

(assert (= (and b!7073508 (not res!2889039)) b!7073511))

(assert (= (and b!7073511 (not res!2889055)) b!7073497))

(assert (= (and b!7073497 (not res!2889040)) b!7073493))

(assert (= (and start!687262 condSetEmpty!50294) setIsEmpty!50294))

(assert (= (and start!687262 (not condSetEmpty!50294)) setNonEmpty!50294))

(assert (= setNonEmpty!50294 b!7073488))

(assert (= start!687262 b!7073503))

(assert (= (and start!687262 (is-Cons!68358 s!7408)) b!7073506))

(declare-fun m!7800278 () Bool)

(assert (=> b!7073486 m!7800278))

(declare-fun m!7800280 () Bool)

(assert (=> b!7073486 m!7800280))

(declare-fun m!7800282 () Bool)

(assert (=> b!7073493 m!7800282))

(declare-fun m!7800284 () Bool)

(assert (=> b!7073485 m!7800284))

(declare-fun m!7800286 () Bool)

(assert (=> b!7073485 m!7800286))

(declare-fun m!7800288 () Bool)

(assert (=> b!7073485 m!7800288))

(declare-fun m!7800290 () Bool)

(assert (=> b!7073492 m!7800290))

(declare-fun m!7800292 () Bool)

(assert (=> b!7073492 m!7800292))

(declare-fun m!7800294 () Bool)

(assert (=> b!7073492 m!7800294))

(declare-fun m!7800296 () Bool)

(assert (=> b!7073492 m!7800296))

(declare-fun m!7800298 () Bool)

(assert (=> b!7073492 m!7800298))

(declare-fun m!7800300 () Bool)

(assert (=> b!7073492 m!7800300))

(declare-fun m!7800302 () Bool)

(assert (=> b!7073492 m!7800302))

(assert (=> b!7073492 m!7800292))

(declare-fun m!7800304 () Bool)

(assert (=> b!7073492 m!7800304))

(declare-fun m!7800306 () Bool)

(assert (=> b!7073492 m!7800306))

(declare-fun m!7800308 () Bool)

(assert (=> b!7073492 m!7800308))

(declare-fun m!7800310 () Bool)

(assert (=> b!7073511 m!7800310))

(declare-fun m!7800312 () Bool)

(assert (=> b!7073511 m!7800312))

(declare-fun m!7800314 () Bool)

(assert (=> b!7073511 m!7800314))

(declare-fun m!7800316 () Bool)

(assert (=> b!7073511 m!7800316))

(declare-fun m!7800318 () Bool)

(assert (=> b!7073511 m!7800318))

(declare-fun m!7800320 () Bool)

(assert (=> b!7073511 m!7800320))

(declare-fun m!7800322 () Bool)

(assert (=> b!7073511 m!7800322))

(declare-fun m!7800324 () Bool)

(assert (=> b!7073511 m!7800324))

(assert (=> b!7073511 m!7800322))

(declare-fun m!7800326 () Bool)

(assert (=> b!7073511 m!7800326))

(assert (=> b!7073511 m!7800318))

(declare-fun m!7800328 () Bool)

(assert (=> b!7073511 m!7800328))

(declare-fun m!7800330 () Bool)

(assert (=> b!7073497 m!7800330))

(declare-fun m!7800332 () Bool)

(assert (=> b!7073487 m!7800332))

(declare-fun m!7800334 () Bool)

(assert (=> b!7073487 m!7800334))

(assert (=> b!7073487 m!7800280))

(declare-fun m!7800336 () Bool)

(assert (=> b!7073487 m!7800336))

(declare-fun m!7800338 () Bool)

(assert (=> b!7073499 m!7800338))

(assert (=> b!7073499 m!7800292))

(declare-fun m!7800340 () Bool)

(assert (=> b!7073500 m!7800340))

(assert (=> b!7073483 m!7800292))

(assert (=> b!7073483 m!7800292))

(declare-fun m!7800342 () Bool)

(assert (=> b!7073494 m!7800342))

(assert (=> b!7073504 m!7800338))

(declare-fun m!7800344 () Bool)

(assert (=> b!7073490 m!7800344))

(declare-fun m!7800346 () Bool)

(assert (=> setNonEmpty!50294 m!7800346))

(declare-fun m!7800348 () Bool)

(assert (=> b!7073502 m!7800348))

(declare-fun m!7800350 () Bool)

(assert (=> b!7073502 m!7800350))

(assert (=> b!7073510 m!7800338))

(assert (=> b!7073510 m!7800292))

(declare-fun m!7800352 () Bool)

(assert (=> b!7073498 m!7800352))

(declare-fun m!7800354 () Bool)

(assert (=> b!7073505 m!7800354))

(declare-fun m!7800356 () Bool)

(assert (=> b!7073509 m!7800356))

(declare-fun m!7800358 () Bool)

(assert (=> b!7073509 m!7800358))

(declare-fun m!7800360 () Bool)

(assert (=> b!7073509 m!7800360))

(declare-fun m!7800362 () Bool)

(assert (=> b!7073509 m!7800362))

(declare-fun m!7800364 () Bool)

(assert (=> b!7073509 m!7800364))

(declare-fun m!7800366 () Bool)

(assert (=> b!7073484 m!7800366))

(declare-fun m!7800368 () Bool)

(assert (=> b!7073484 m!7800368))

(declare-fun m!7800370 () Bool)

(assert (=> b!7073484 m!7800370))

(declare-fun m!7800372 () Bool)

(assert (=> b!7073484 m!7800372))

(declare-fun m!7800374 () Bool)

(assert (=> b!7073484 m!7800374))

(declare-fun m!7800376 () Bool)

(assert (=> b!7073484 m!7800376))

(declare-fun m!7800378 () Bool)

(assert (=> b!7073507 m!7800378))

(declare-fun m!7800380 () Bool)

(assert (=> b!7073507 m!7800380))

(declare-fun m!7800382 () Bool)

(assert (=> b!7073507 m!7800382))

(declare-fun m!7800384 () Bool)

(assert (=> b!7073507 m!7800384))

(assert (=> b!7073507 m!7800280))

(declare-fun m!7800386 () Bool)

(assert (=> b!7073495 m!7800386))

(assert (=> b!7073489 m!7800292))

(assert (=> b!7073489 m!7800292))

(declare-fun m!7800388 () Bool)

(assert (=> b!7073489 m!7800388))

(declare-fun m!7800390 () Bool)

(assert (=> b!7073489 m!7800390))

(declare-fun m!7800392 () Bool)

(assert (=> b!7073489 m!7800392))

(assert (=> b!7073489 m!7800292))

(declare-fun m!7800394 () Bool)

(assert (=> b!7073489 m!7800394))

(assert (=> b!7073482 m!7800292))

(declare-fun m!7800396 () Bool)

(assert (=> b!7073482 m!7800396))

(declare-fun m!7800398 () Bool)

(assert (=> b!7073482 m!7800398))

(declare-fun m!7800400 () Bool)

(assert (=> b!7073482 m!7800400))

(assert (=> b!7073482 m!7800292))

(declare-fun m!7800402 () Bool)

(assert (=> start!687262 m!7800402))

(declare-fun m!7800404 () Bool)

(assert (=> start!687262 m!7800404))

(declare-fun m!7800406 () Bool)

(assert (=> start!687262 m!7800406))

(push 1)

(assert (not b!7073509))

(assert (not b!7073484))

(assert (not b!7073503))

(assert (not b!7073483))

(assert (not b!7073494))

(assert (not b!7073502))

(assert (not b!7073486))

(assert (not b!7073507))

(assert (not b!7073506))

(assert (not b!7073497))

(assert (not b!7073498))

(assert (not b!7073482))

(assert (not b!7073488))

(assert (not start!687262))

(assert (not b!7073500))

(assert (not b!7073504))

(assert (not b!7073499))

(assert (not b!7073505))

(assert (not b!7073487))

(assert (not b!7073489))

(assert (not b!7073485))

(assert (not b!7073492))

(assert (not b!7073490))

(assert (not b!7073493))

(assert (not b!7073510))

(assert tp_is_empty!44529)

(assert (not b!7073511))

(assert (not setNonEmpty!50294))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2212048 () Bool)

(declare-fun forall!16605 (List!68483 Int) Bool)

(assert (=> d!2212048 (forall!16605 (++!15787 lt!2547333 (exprs!7148 ct2!306)) lambda!426039)))

(declare-fun lt!2547542 () Unit!162014)

(declare-fun choose!54252 (List!68483 List!68483 Int) Unit!162014)

(assert (=> d!2212048 (= lt!2547542 (choose!54252 lt!2547333 (exprs!7148 ct2!306) lambda!426039))))

(assert (=> d!2212048 (forall!16605 lt!2547333 lambda!426039)))

(assert (=> d!2212048 (= (lemmaConcatPreservesForall!963 lt!2547333 (exprs!7148 ct2!306) lambda!426039) lt!2547542)))

(declare-fun bs!1880891 () Bool)

(assert (= bs!1880891 d!2212048))

(assert (=> bs!1880891 m!7800398))

(assert (=> bs!1880891 m!7800398))

(declare-fun m!7800538 () Bool)

(assert (=> bs!1880891 m!7800538))

(declare-fun m!7800540 () Bool)

(assert (=> bs!1880891 m!7800540))

(declare-fun m!7800542 () Bool)

(assert (=> bs!1880891 m!7800542))

(assert (=> b!7073492 d!2212048))

(declare-fun bm!642863 () Bool)

(declare-fun call!642870 () (Set Context!13296))

(declare-fun call!642869 () (Set Context!13296))

(assert (=> bm!642863 (= call!642870 call!642869)))

(declare-fun b!7073636 () Bool)

(declare-fun e!4252694 () (Set Context!13296))

(declare-fun e!4252689 () (Set Context!13296))

(assert (=> b!7073636 (= e!4252694 e!4252689)))

(declare-fun c!1319578 () Bool)

(assert (=> b!7073636 (= c!1319578 (is-Union!17652 (h!74807 (exprs!7148 lt!2547335))))))

(declare-fun b!7073637 () Bool)

(declare-fun e!4252691 () (Set Context!13296))

(assert (=> b!7073637 (= e!4252691 call!642870)))

(declare-fun call!642872 () List!68483)

(declare-fun bm!642864 () Bool)

(declare-fun c!1319579 () Bool)

(declare-fun c!1319577 () Bool)

(declare-fun call!642871 () (Set Context!13296))

(assert (=> bm!642864 (= call!642871 (derivationStepZipperDown!2286 (ite c!1319578 (regOne!35817 (h!74807 (exprs!7148 lt!2547335))) (ite c!1319579 (regTwo!35816 (h!74807 (exprs!7148 lt!2547335))) (ite c!1319577 (regOne!35816 (h!74807 (exprs!7148 lt!2547335))) (reg!17981 (h!74807 (exprs!7148 lt!2547335)))))) (ite (or c!1319578 c!1319579) lt!2547370 (Context!13297 call!642872)) (h!74806 s!7408)))))

(declare-fun bm!642865 () Bool)

(assert (=> bm!642865 (= call!642869 call!642871)))

(declare-fun bm!642866 () Bool)

(declare-fun call!642873 () List!68483)

(assert (=> bm!642866 (= call!642872 call!642873)))

(declare-fun b!7073638 () Bool)

(declare-fun e!4252693 () Bool)

(assert (=> b!7073638 (= c!1319579 e!4252693)))

(declare-fun res!2889147 () Bool)

(assert (=> b!7073638 (=> (not res!2889147) (not e!4252693))))

(assert (=> b!7073638 (= res!2889147 (is-Concat!26497 (h!74807 (exprs!7148 lt!2547335))))))

(declare-fun e!4252690 () (Set Context!13296))

(assert (=> b!7073638 (= e!4252689 e!4252690)))

(declare-fun b!7073639 () Bool)

(assert (=> b!7073639 (= e!4252690 e!4252691)))

(assert (=> b!7073639 (= c!1319577 (is-Concat!26497 (h!74807 (exprs!7148 lt!2547335))))))

(declare-fun call!642868 () (Set Context!13296))

(declare-fun bm!642868 () Bool)

(assert (=> bm!642868 (= call!642868 (derivationStepZipperDown!2286 (ite c!1319578 (regTwo!35817 (h!74807 (exprs!7148 lt!2547335))) (regOne!35816 (h!74807 (exprs!7148 lt!2547335)))) (ite c!1319578 lt!2547370 (Context!13297 call!642873)) (h!74806 s!7408)))))

(declare-fun b!7073640 () Bool)

(assert (=> b!7073640 (= e!4252693 (nullable!7335 (regOne!35816 (h!74807 (exprs!7148 lt!2547335)))))))

(declare-fun b!7073641 () Bool)

(assert (=> b!7073641 (= e!4252694 (set.insert lt!2547370 (as set.empty (Set Context!13296))))))

(declare-fun b!7073642 () Bool)

(declare-fun c!1319576 () Bool)

(assert (=> b!7073642 (= c!1319576 (is-Star!17652 (h!74807 (exprs!7148 lt!2547335))))))

(declare-fun e!4252692 () (Set Context!13296))

(assert (=> b!7073642 (= e!4252691 e!4252692)))

(declare-fun bm!642867 () Bool)

(declare-fun $colon$colon!2663 (List!68483 Regex!17652) List!68483)

(assert (=> bm!642867 (= call!642873 ($colon$colon!2663 (exprs!7148 lt!2547370) (ite (or c!1319579 c!1319577) (regTwo!35816 (h!74807 (exprs!7148 lt!2547335))) (h!74807 (exprs!7148 lt!2547335)))))))

(declare-fun d!2212050 () Bool)

(declare-fun c!1319580 () Bool)

(assert (=> d!2212050 (= c!1319580 (and (is-ElementMatch!17652 (h!74807 (exprs!7148 lt!2547335))) (= (c!1319552 (h!74807 (exprs!7148 lt!2547335))) (h!74806 s!7408))))))

(assert (=> d!2212050 (= (derivationStepZipperDown!2286 (h!74807 (exprs!7148 lt!2547335)) lt!2547370 (h!74806 s!7408)) e!4252694)))

(declare-fun b!7073643 () Bool)

(assert (=> b!7073643 (= e!4252692 (as set.empty (Set Context!13296)))))

(declare-fun b!7073644 () Bool)

(assert (=> b!7073644 (= e!4252689 (set.union call!642871 call!642868))))

(declare-fun b!7073645 () Bool)

(assert (=> b!7073645 (= e!4252692 call!642870)))

(declare-fun b!7073646 () Bool)

(assert (=> b!7073646 (= e!4252690 (set.union call!642868 call!642869))))

(assert (= (and d!2212050 c!1319580) b!7073641))

(assert (= (and d!2212050 (not c!1319580)) b!7073636))

(assert (= (and b!7073636 c!1319578) b!7073644))

(assert (= (and b!7073636 (not c!1319578)) b!7073638))

(assert (= (and b!7073638 res!2889147) b!7073640))

(assert (= (and b!7073638 c!1319579) b!7073646))

(assert (= (and b!7073638 (not c!1319579)) b!7073639))

(assert (= (and b!7073639 c!1319577) b!7073637))

(assert (= (and b!7073639 (not c!1319577)) b!7073642))

(assert (= (and b!7073642 c!1319576) b!7073645))

(assert (= (and b!7073642 (not c!1319576)) b!7073643))

(assert (= (or b!7073637 b!7073645) bm!642866))

(assert (= (or b!7073637 b!7073645) bm!642863))

(assert (= (or b!7073646 bm!642863) bm!642865))

(assert (= (or b!7073646 bm!642866) bm!642867))

(assert (= (or b!7073644 bm!642865) bm!642864))

(assert (= (or b!7073644 b!7073646) bm!642868))

(declare-fun m!7800544 () Bool)

(assert (=> b!7073641 m!7800544))

(declare-fun m!7800546 () Bool)

(assert (=> bm!642867 m!7800546))

(declare-fun m!7800548 () Bool)

(assert (=> bm!642864 m!7800548))

(declare-fun m!7800550 () Bool)

(assert (=> b!7073640 m!7800550))

(declare-fun m!7800552 () Bool)

(assert (=> bm!642868 m!7800552))

(assert (=> b!7073492 d!2212050))

(declare-fun b!7073665 () Bool)

(declare-fun e!4252705 () Bool)

(declare-fun lt!2547551 () Option!16971)

(assert (=> b!7073665 (= e!4252705 (= (++!15788 (_1!37442 (get!23948 lt!2547551)) (_2!37442 (get!23948 lt!2547551))) (t!382265 s!7408)))))

(declare-fun b!7073666 () Bool)

(declare-fun e!4252708 () Bool)

(assert (=> b!7073666 (= e!4252708 (not (isDefined!13672 lt!2547551)))))

(declare-fun b!7073668 () Bool)

(declare-fun res!2889161 () Bool)

(assert (=> b!7073668 (=> (not res!2889161) (not e!4252705))))

(assert (=> b!7073668 (= res!2889161 (matchZipper!3192 lt!2547371 (_1!37442 (get!23948 lt!2547551))))))

(declare-fun b!7073669 () Bool)

(declare-fun e!4252707 () Option!16971)

(declare-fun e!4252709 () Option!16971)

(assert (=> b!7073669 (= e!4252707 e!4252709)))

(declare-fun c!1319586 () Bool)

(assert (=> b!7073669 (= c!1319586 (is-Nil!68358 (t!382265 s!7408)))))

(declare-fun b!7073670 () Bool)

(declare-fun lt!2547549 () Unit!162014)

(declare-fun lt!2547550 () Unit!162014)

(assert (=> b!7073670 (= lt!2547549 lt!2547550)))

(assert (=> b!7073670 (= (++!15788 (++!15788 Nil!68358 (Cons!68358 (h!74806 (t!382265 s!7408)) Nil!68358)) (t!382265 (t!382265 s!7408))) (t!382265 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2978 (List!68482 C!35574 List!68482 List!68482) Unit!162014)

(assert (=> b!7073670 (= lt!2547550 (lemmaMoveElementToOtherListKeepsConcatEq!2978 Nil!68358 (h!74806 (t!382265 s!7408)) (t!382265 (t!382265 s!7408)) (t!382265 s!7408)))))

(assert (=> b!7073670 (= e!4252709 (findConcatSeparationZippers!487 lt!2547371 lt!2547376 (++!15788 Nil!68358 (Cons!68358 (h!74806 (t!382265 s!7408)) Nil!68358)) (t!382265 (t!382265 s!7408)) (t!382265 s!7408)))))

(declare-fun b!7073671 () Bool)

(declare-fun res!2889162 () Bool)

(assert (=> b!7073671 (=> (not res!2889162) (not e!4252705))))

(assert (=> b!7073671 (= res!2889162 (matchZipper!3192 lt!2547376 (_2!37442 (get!23948 lt!2547551))))))

(declare-fun b!7073672 () Bool)

(assert (=> b!7073672 (= e!4252709 None!16970)))

(declare-fun b!7073673 () Bool)

(declare-fun e!4252706 () Bool)

(assert (=> b!7073673 (= e!4252706 (matchZipper!3192 lt!2547376 (t!382265 s!7408)))))

(declare-fun d!2212052 () Bool)

(assert (=> d!2212052 e!4252708))

(declare-fun res!2889160 () Bool)

(assert (=> d!2212052 (=> res!2889160 e!4252708)))

(assert (=> d!2212052 (= res!2889160 e!4252705)))

(declare-fun res!2889158 () Bool)

(assert (=> d!2212052 (=> (not res!2889158) (not e!4252705))))

(assert (=> d!2212052 (= res!2889158 (isDefined!13672 lt!2547551))))

(assert (=> d!2212052 (= lt!2547551 e!4252707)))

(declare-fun c!1319585 () Bool)

(assert (=> d!2212052 (= c!1319585 e!4252706)))

(declare-fun res!2889159 () Bool)

(assert (=> d!2212052 (=> (not res!2889159) (not e!4252706))))

(assert (=> d!2212052 (= res!2889159 (matchZipper!3192 lt!2547371 Nil!68358))))

(assert (=> d!2212052 (= (++!15788 Nil!68358 (t!382265 s!7408)) (t!382265 s!7408))))

(assert (=> d!2212052 (= (findConcatSeparationZippers!487 lt!2547371 lt!2547376 Nil!68358 (t!382265 s!7408) (t!382265 s!7408)) lt!2547551)))

(declare-fun b!7073667 () Bool)

(assert (=> b!7073667 (= e!4252707 (Some!16970 (tuple2!68279 Nil!68358 (t!382265 s!7408))))))

(assert (= (and d!2212052 res!2889159) b!7073673))

(assert (= (and d!2212052 c!1319585) b!7073667))

(assert (= (and d!2212052 (not c!1319585)) b!7073669))

(assert (= (and b!7073669 c!1319586) b!7073672))

(assert (= (and b!7073669 (not c!1319586)) b!7073670))

(assert (= (and d!2212052 res!2889158) b!7073668))

(assert (= (and b!7073668 res!2889161) b!7073671))

(assert (= (and b!7073671 res!2889162) b!7073665))

(assert (= (and d!2212052 (not res!2889160)) b!7073666))

(declare-fun m!7800554 () Bool)

(assert (=> b!7073670 m!7800554))

(assert (=> b!7073670 m!7800554))

(declare-fun m!7800556 () Bool)

(assert (=> b!7073670 m!7800556))

(declare-fun m!7800558 () Bool)

(assert (=> b!7073670 m!7800558))

(assert (=> b!7073670 m!7800554))

(declare-fun m!7800560 () Bool)

(assert (=> b!7073670 m!7800560))

(declare-fun m!7800562 () Bool)

(assert (=> b!7073671 m!7800562))

(declare-fun m!7800564 () Bool)

(assert (=> b!7073671 m!7800564))

(declare-fun m!7800566 () Bool)

(assert (=> b!7073666 m!7800566))

(declare-fun m!7800568 () Bool)

(assert (=> b!7073673 m!7800568))

(assert (=> d!2212052 m!7800566))

(declare-fun m!7800570 () Bool)

(assert (=> d!2212052 m!7800570))

(declare-fun m!7800572 () Bool)

(assert (=> d!2212052 m!7800572))

(assert (=> b!7073665 m!7800562))

(declare-fun m!7800574 () Bool)

(assert (=> b!7073665 m!7800574))

(assert (=> b!7073668 m!7800562))

(declare-fun m!7800576 () Bool)

(assert (=> b!7073668 m!7800576))

(assert (=> b!7073492 d!2212052))

(declare-fun d!2212054 () Bool)

(assert (=> d!2212054 (isDefined!13672 (findConcatSeparationZippers!487 lt!2547371 (set.insert ct2!306 (as set.empty (Set Context!13296))) Nil!68358 (t!382265 s!7408) (t!382265 s!7408)))))

(declare-fun lt!2547554 () Unit!162014)

(declare-fun choose!54253 ((Set Context!13296) Context!13296 List!68482) Unit!162014)

(assert (=> d!2212054 (= lt!2547554 (choose!54253 lt!2547371 ct2!306 (t!382265 s!7408)))))

(assert (=> d!2212054 (matchZipper!3192 (appendTo!773 lt!2547371 ct2!306) (t!382265 s!7408))))

(assert (=> d!2212054 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!475 lt!2547371 ct2!306 (t!382265 s!7408)) lt!2547554)))

(declare-fun bs!1880892 () Bool)

(assert (= bs!1880892 d!2212054))

(assert (=> bs!1880892 m!7800294))

(assert (=> bs!1880892 m!7800294))

(declare-fun m!7800578 () Bool)

(assert (=> bs!1880892 m!7800578))

(assert (=> bs!1880892 m!7800290))

(declare-fun m!7800580 () Bool)

(assert (=> bs!1880892 m!7800580))

(declare-fun m!7800582 () Bool)

(assert (=> bs!1880892 m!7800582))

(assert (=> bs!1880892 m!7800578))

(declare-fun m!7800584 () Bool)

(assert (=> bs!1880892 m!7800584))

(assert (=> bs!1880892 m!7800290))

(assert (=> b!7073492 d!2212054))

(declare-fun bs!1880893 () Bool)

(declare-fun d!2212056 () Bool)

(assert (= bs!1880893 (and d!2212056 b!7073487)))

(declare-fun lambda!426093 () Int)

(assert (=> bs!1880893 (= lambda!426093 lambda!426038)))

(assert (=> d!2212056 true))

(declare-fun map!15998 ((Set Context!13296) Int) (Set Context!13296))

(assert (=> d!2212056 (= (appendTo!773 lt!2547371 ct2!306) (map!15998 lt!2547371 lambda!426093))))

(declare-fun bs!1880894 () Bool)

(assert (= bs!1880894 d!2212056))

(declare-fun m!7800586 () Bool)

(assert (=> bs!1880894 m!7800586))

(assert (=> b!7073492 d!2212056))

(declare-fun d!2212058 () Bool)

(declare-fun isEmpty!39898 (Option!16971) Bool)

(assert (=> d!2212058 (= (isDefined!13672 lt!2547345) (not (isEmpty!39898 lt!2547345)))))

(declare-fun bs!1880895 () Bool)

(assert (= bs!1880895 d!2212058))

(declare-fun m!7800588 () Bool)

(assert (=> bs!1880895 m!7800588))

(assert (=> b!7073492 d!2212058))

(declare-fun bs!1880896 () Bool)

(declare-fun d!2212060 () Bool)

(assert (= bs!1880896 (and d!2212060 b!7073487)))

(declare-fun lambda!426096 () Int)

(assert (=> bs!1880896 (= lambda!426096 lambda!426039)))

(assert (=> d!2212060 (= (derivationStepZipperDown!2286 (h!74807 (exprs!7148 lt!2547335)) (Context!13297 (++!15787 (exprs!7148 lt!2547370) (exprs!7148 ct2!306))) (h!74806 s!7408)) (appendTo!773 (derivationStepZipperDown!2286 (h!74807 (exprs!7148 lt!2547335)) lt!2547370 (h!74806 s!7408)) ct2!306))))

(declare-fun lt!2547562 () Unit!162014)

(assert (=> d!2212060 (= lt!2547562 (lemmaConcatPreservesForall!963 (exprs!7148 lt!2547370) (exprs!7148 ct2!306) lambda!426096))))

(declare-fun lt!2547561 () Unit!162014)

(declare-fun choose!54254 (Context!13296 Regex!17652 C!35574 Context!13296) Unit!162014)

(assert (=> d!2212060 (= lt!2547561 (choose!54254 lt!2547370 (h!74807 (exprs!7148 lt!2547335)) (h!74806 s!7408) ct2!306))))

(declare-fun validRegex!8975 (Regex!17652) Bool)

(assert (=> d!2212060 (validRegex!8975 (h!74807 (exprs!7148 lt!2547335)))))

(assert (=> d!2212060 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!123 lt!2547370 (h!74807 (exprs!7148 lt!2547335)) (h!74806 s!7408) ct2!306) lt!2547561)))

(declare-fun bs!1880897 () Bool)

(assert (= bs!1880897 d!2212060))

(declare-fun m!7800590 () Bool)

(assert (=> bs!1880897 m!7800590))

(declare-fun m!7800592 () Bool)

(assert (=> bs!1880897 m!7800592))

(assert (=> bs!1880897 m!7800304))

(declare-fun m!7800594 () Bool)

(assert (=> bs!1880897 m!7800594))

(declare-fun m!7800596 () Bool)

(assert (=> bs!1880897 m!7800596))

(assert (=> bs!1880897 m!7800304))

(declare-fun m!7800598 () Bool)

(assert (=> bs!1880897 m!7800598))

(declare-fun m!7800600 () Bool)

(assert (=> bs!1880897 m!7800600))

(assert (=> b!7073492 d!2212060))

(declare-fun d!2212062 () Bool)

(assert (=> d!2212062 (= (get!23948 lt!2547345) (v!53264 lt!2547345))))

(assert (=> b!7073492 d!2212062))

(declare-fun d!2212064 () Bool)

(declare-fun c!1319591 () Bool)

(declare-fun isEmpty!39899 (List!68482) Bool)

(assert (=> d!2212064 (= c!1319591 (isEmpty!39899 (_1!37442 lt!2547341)))))

(declare-fun e!4252712 () Bool)

(assert (=> d!2212064 (= (matchZipper!3192 lt!2547371 (_1!37442 lt!2547341)) e!4252712)))

(declare-fun b!7073678 () Bool)

(declare-fun nullableZipper!2703 ((Set Context!13296)) Bool)

(assert (=> b!7073678 (= e!4252712 (nullableZipper!2703 lt!2547371))))

(declare-fun b!7073679 () Bool)

(declare-fun head!14411 (List!68482) C!35574)

(declare-fun tail!13841 (List!68482) List!68482)

(assert (=> b!7073679 (= e!4252712 (matchZipper!3192 (derivationStepZipper!3102 lt!2547371 (head!14411 (_1!37442 lt!2547341))) (tail!13841 (_1!37442 lt!2547341))))))

(assert (= (and d!2212064 c!1319591) b!7073678))

(assert (= (and d!2212064 (not c!1319591)) b!7073679))

(declare-fun m!7800602 () Bool)

(assert (=> d!2212064 m!7800602))

(declare-fun m!7800604 () Bool)

(assert (=> b!7073678 m!7800604))

(declare-fun m!7800606 () Bool)

(assert (=> b!7073679 m!7800606))

(assert (=> b!7073679 m!7800606))

(declare-fun m!7800608 () Bool)

(assert (=> b!7073679 m!7800608))

(declare-fun m!7800610 () Bool)

(assert (=> b!7073679 m!7800610))

(assert (=> b!7073679 m!7800608))

(assert (=> b!7073679 m!7800610))

(declare-fun m!7800612 () Bool)

(assert (=> b!7073679 m!7800612))

(assert (=> b!7073492 d!2212064))

(declare-fun b!7073690 () Bool)

(declare-fun e!4252720 () Bool)

(assert (=> b!7073690 (= e!4252720 (isPrefix!5855 (tail!13841 Nil!68358) (tail!13841 lt!2547334)))))

(declare-fun d!2212066 () Bool)

(declare-fun e!4252721 () Bool)

(assert (=> d!2212066 e!4252721))

(declare-fun res!2889174 () Bool)

(assert (=> d!2212066 (=> res!2889174 e!4252721)))

(declare-fun lt!2547565 () Bool)

(assert (=> d!2212066 (= res!2889174 (not lt!2547565))))

(declare-fun e!4252719 () Bool)

(assert (=> d!2212066 (= lt!2547565 e!4252719)))

(declare-fun res!2889173 () Bool)

(assert (=> d!2212066 (=> res!2889173 e!4252719)))

(assert (=> d!2212066 (= res!2889173 (is-Nil!68358 Nil!68358))))

(assert (=> d!2212066 (= (isPrefix!5855 Nil!68358 lt!2547334) lt!2547565)))

(declare-fun b!7073688 () Bool)

(assert (=> b!7073688 (= e!4252719 e!4252720)))

(declare-fun res!2889171 () Bool)

(assert (=> b!7073688 (=> (not res!2889171) (not e!4252720))))

(assert (=> b!7073688 (= res!2889171 (not (is-Nil!68358 lt!2547334)))))

(declare-fun b!7073689 () Bool)

(declare-fun res!2889172 () Bool)

(assert (=> b!7073689 (=> (not res!2889172) (not e!4252720))))

(assert (=> b!7073689 (= res!2889172 (= (head!14411 Nil!68358) (head!14411 lt!2547334)))))

(declare-fun b!7073691 () Bool)

(declare-fun size!41220 (List!68482) Int)

(assert (=> b!7073691 (= e!4252721 (>= (size!41220 lt!2547334) (size!41220 Nil!68358)))))

(assert (= (and d!2212066 (not res!2889173)) b!7073688))

(assert (= (and b!7073688 res!2889171) b!7073689))

(assert (= (and b!7073689 res!2889172) b!7073690))

(assert (= (and d!2212066 (not res!2889174)) b!7073691))

(declare-fun m!7800614 () Bool)

(assert (=> b!7073690 m!7800614))

(declare-fun m!7800616 () Bool)

(assert (=> b!7073690 m!7800616))

(assert (=> b!7073690 m!7800614))

(assert (=> b!7073690 m!7800616))

(declare-fun m!7800618 () Bool)

(assert (=> b!7073690 m!7800618))

(declare-fun m!7800620 () Bool)

(assert (=> b!7073689 m!7800620))

(declare-fun m!7800622 () Bool)

(assert (=> b!7073689 m!7800622))

(declare-fun m!7800624 () Bool)

(assert (=> b!7073691 m!7800624))

(declare-fun m!7800626 () Bool)

(assert (=> b!7073691 m!7800626))

(assert (=> b!7073493 d!2212066))

(declare-fun b!7073692 () Bool)

(declare-fun e!4252722 () Bool)

(declare-fun lt!2547568 () Option!16971)

(assert (=> b!7073692 (= e!4252722 (= (++!15788 (_1!37442 (get!23948 lt!2547568)) (_2!37442 (get!23948 lt!2547568))) s!7408))))

(declare-fun b!7073693 () Bool)

(declare-fun e!4252725 () Bool)

(assert (=> b!7073693 (= e!4252725 (not (isDefined!13672 lt!2547568)))))

(declare-fun b!7073695 () Bool)

(declare-fun res!2889178 () Bool)

(assert (=> b!7073695 (=> (not res!2889178) (not e!4252722))))

(assert (=> b!7073695 (= res!2889178 (matchZipper!3192 lt!2547375 (_1!37442 (get!23948 lt!2547568))))))

(declare-fun b!7073696 () Bool)

(declare-fun e!4252724 () Option!16971)

(declare-fun e!4252726 () Option!16971)

(assert (=> b!7073696 (= e!4252724 e!4252726)))

(declare-fun c!1319593 () Bool)

(assert (=> b!7073696 (= c!1319593 (is-Nil!68358 s!7408))))

(declare-fun b!7073697 () Bool)

(declare-fun lt!2547566 () Unit!162014)

(declare-fun lt!2547567 () Unit!162014)

(assert (=> b!7073697 (= lt!2547566 lt!2547567)))

(assert (=> b!7073697 (= (++!15788 (++!15788 Nil!68358 (Cons!68358 (h!74806 s!7408) Nil!68358)) (t!382265 s!7408)) s!7408)))

(assert (=> b!7073697 (= lt!2547567 (lemmaMoveElementToOtherListKeepsConcatEq!2978 Nil!68358 (h!74806 s!7408) (t!382265 s!7408) s!7408))))

(assert (=> b!7073697 (= e!4252726 (findConcatSeparationZippers!487 lt!2547375 lt!2547376 (++!15788 Nil!68358 (Cons!68358 (h!74806 s!7408) Nil!68358)) (t!382265 s!7408) s!7408))))

(declare-fun b!7073698 () Bool)

(declare-fun res!2889179 () Bool)

(assert (=> b!7073698 (=> (not res!2889179) (not e!4252722))))

(assert (=> b!7073698 (= res!2889179 (matchZipper!3192 lt!2547376 (_2!37442 (get!23948 lt!2547568))))))

(declare-fun b!7073699 () Bool)

(assert (=> b!7073699 (= e!4252726 None!16970)))

(declare-fun b!7073700 () Bool)

(declare-fun e!4252723 () Bool)

(assert (=> b!7073700 (= e!4252723 (matchZipper!3192 lt!2547376 s!7408))))

(declare-fun d!2212068 () Bool)

(assert (=> d!2212068 e!4252725))

(declare-fun res!2889177 () Bool)

(assert (=> d!2212068 (=> res!2889177 e!4252725)))

(assert (=> d!2212068 (= res!2889177 e!4252722)))

(declare-fun res!2889175 () Bool)

(assert (=> d!2212068 (=> (not res!2889175) (not e!4252722))))

(assert (=> d!2212068 (= res!2889175 (isDefined!13672 lt!2547568))))

(assert (=> d!2212068 (= lt!2547568 e!4252724)))

(declare-fun c!1319592 () Bool)

(assert (=> d!2212068 (= c!1319592 e!4252723)))

(declare-fun res!2889176 () Bool)

(assert (=> d!2212068 (=> (not res!2889176) (not e!4252723))))

(assert (=> d!2212068 (= res!2889176 (matchZipper!3192 lt!2547375 Nil!68358))))

(assert (=> d!2212068 (= (++!15788 Nil!68358 s!7408) s!7408)))

(assert (=> d!2212068 (= (findConcatSeparationZippers!487 lt!2547375 lt!2547376 Nil!68358 s!7408 s!7408) lt!2547568)))

(declare-fun b!7073694 () Bool)

(assert (=> b!7073694 (= e!4252724 (Some!16970 (tuple2!68279 Nil!68358 s!7408)))))

(assert (= (and d!2212068 res!2889176) b!7073700))

(assert (= (and d!2212068 c!1319592) b!7073694))

(assert (= (and d!2212068 (not c!1319592)) b!7073696))

(assert (= (and b!7073696 c!1319593) b!7073699))

(assert (= (and b!7073696 (not c!1319593)) b!7073697))

(assert (= (and d!2212068 res!2889175) b!7073695))

(assert (= (and b!7073695 res!2889178) b!7073698))

(assert (= (and b!7073698 res!2889179) b!7073692))

(assert (= (and d!2212068 (not res!2889177)) b!7073693))

(declare-fun m!7800628 () Bool)

(assert (=> b!7073697 m!7800628))

(assert (=> b!7073697 m!7800628))

(declare-fun m!7800630 () Bool)

(assert (=> b!7073697 m!7800630))

(declare-fun m!7800632 () Bool)

(assert (=> b!7073697 m!7800632))

(assert (=> b!7073697 m!7800628))

(declare-fun m!7800634 () Bool)

(assert (=> b!7073697 m!7800634))

(declare-fun m!7800636 () Bool)

(assert (=> b!7073698 m!7800636))

(declare-fun m!7800638 () Bool)

(assert (=> b!7073698 m!7800638))

(declare-fun m!7800640 () Bool)

(assert (=> b!7073693 m!7800640))

(declare-fun m!7800642 () Bool)

(assert (=> b!7073700 m!7800642))

(assert (=> d!2212068 m!7800640))

(declare-fun m!7800644 () Bool)

(assert (=> d!2212068 m!7800644))

(declare-fun m!7800646 () Bool)

(assert (=> d!2212068 m!7800646))

(assert (=> b!7073692 m!7800636))

(declare-fun m!7800648 () Bool)

(assert (=> b!7073692 m!7800648))

(assert (=> b!7073695 m!7800636))

(declare-fun m!7800650 () Bool)

(assert (=> b!7073695 m!7800650))

(assert (=> b!7073511 d!2212068))

(declare-fun d!2212070 () Bool)

(assert (=> d!2212070 (isDefined!13672 (findConcatSeparationZippers!487 lt!2547375 lt!2547376 Nil!68358 s!7408 s!7408))))

(declare-fun lt!2547571 () Unit!162014)

(declare-fun choose!54255 ((Set Context!13296) (Set Context!13296) List!68482 List!68482 List!68482 List!68482 List!68482) Unit!162014)

(assert (=> d!2212070 (= lt!2547571 (choose!54255 lt!2547375 lt!2547376 lt!2547334 (_2!37442 lt!2547341) s!7408 Nil!68358 s!7408))))

(assert (=> d!2212070 (matchZipper!3192 lt!2547375 lt!2547334)))

(assert (=> d!2212070 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!79 lt!2547375 lt!2547376 lt!2547334 (_2!37442 lt!2547341) s!7408 Nil!68358 s!7408) lt!2547571)))

(declare-fun bs!1880898 () Bool)

(assert (= bs!1880898 d!2212070))

(assert (=> bs!1880898 m!7800322))

(assert (=> bs!1880898 m!7800322))

(assert (=> bs!1880898 m!7800326))

(declare-fun m!7800652 () Bool)

(assert (=> bs!1880898 m!7800652))

(assert (=> bs!1880898 m!7800284))

(assert (=> b!7073511 d!2212070))

(declare-fun d!2212072 () Bool)

(declare-fun e!4252729 () Bool)

(assert (=> d!2212072 e!4252729))

(declare-fun res!2889182 () Bool)

(assert (=> d!2212072 (=> (not res!2889182) (not e!4252729))))

(declare-fun lt!2547574 () List!68484)

(declare-fun noDuplicate!2732 (List!68484) Bool)

(assert (=> d!2212072 (= res!2889182 (noDuplicate!2732 lt!2547574))))

(declare-fun choose!54256 ((Set Context!13296)) List!68484)

(assert (=> d!2212072 (= lt!2547574 (choose!54256 z1!570))))

(assert (=> d!2212072 (= (toList!10993 z1!570) lt!2547574)))

(declare-fun b!7073703 () Bool)

(assert (=> b!7073703 (= e!4252729 (= (content!13804 lt!2547574) z1!570))))

(assert (= (and d!2212072 res!2889182) b!7073703))

(declare-fun m!7800654 () Bool)

(assert (=> d!2212072 m!7800654))

(declare-fun m!7800656 () Bool)

(assert (=> d!2212072 m!7800656))

(declare-fun m!7800658 () Bool)

(assert (=> b!7073703 m!7800658))

(assert (=> b!7073511 d!2212072))

(declare-fun d!2212074 () Bool)

(assert (=> d!2212074 (exists!3705 z1!570 lambda!426041)))

(declare-fun lt!2547577 () Unit!162014)

(declare-fun choose!54257 ((Set Context!13296) Context!13296 Int) Unit!162014)

(assert (=> d!2212074 (= lt!2547577 (choose!54257 z1!570 lt!2547335 lambda!426041))))

(assert (=> d!2212074 (set.member lt!2547335 z1!570)))

(assert (=> d!2212074 (= (lemmaContainsThenExists!160 z1!570 lt!2547335 lambda!426041) lt!2547577)))

(declare-fun bs!1880899 () Bool)

(assert (= bs!1880899 d!2212074))

(assert (=> bs!1880899 m!7800328))

(declare-fun m!7800660 () Bool)

(assert (=> bs!1880899 m!7800660))

(assert (=> bs!1880899 m!7800332))

(assert (=> b!7073511 d!2212074))

(declare-fun d!2212076 () Bool)

(declare-fun c!1319596 () Bool)

(assert (=> d!2212076 (= c!1319596 (is-Nil!68360 lt!2547348))))

(declare-fun e!4252733 () (Set Context!13296))

(assert (=> d!2212076 (= (content!13804 lt!2547348) e!4252733)))

(declare-fun b!7073708 () Bool)

(assert (=> b!7073708 (= e!4252733 (as set.empty (Set Context!13296)))))

(declare-fun b!7073709 () Bool)

(assert (=> b!7073709 (= e!4252733 (set.union (set.insert (h!74808 lt!2547348) (as set.empty (Set Context!13296))) (content!13804 (t!382267 lt!2547348))))))

(assert (= (and d!2212076 c!1319596) b!7073708))

(assert (= (and d!2212076 (not c!1319596)) b!7073709))

(declare-fun m!7800662 () Bool)

(assert (=> b!7073709 m!7800662))

(declare-fun m!7800664 () Bool)

(assert (=> b!7073709 m!7800664))

(assert (=> b!7073511 d!2212076))

(declare-fun d!2212078 () Bool)

(declare-fun lt!2547580 () Bool)

(assert (=> d!2212078 (= lt!2547580 (exists!3704 (toList!10993 z1!570) lambda!426041))))

(declare-fun choose!54258 ((Set Context!13296) Int) Bool)

(assert (=> d!2212078 (= lt!2547580 (choose!54258 z1!570 lambda!426041))))

(assert (=> d!2212078 (= (exists!3705 z1!570 lambda!426041) lt!2547580)))

(declare-fun bs!1880900 () Bool)

(assert (= bs!1880900 d!2212078))

(assert (=> bs!1880900 m!7800314))

(assert (=> bs!1880900 m!7800314))

(declare-fun m!7800666 () Bool)

(assert (=> bs!1880900 m!7800666))

(declare-fun m!7800668 () Bool)

(assert (=> bs!1880900 m!7800668))

(assert (=> b!7073511 d!2212078))

(declare-fun d!2212080 () Bool)

(declare-fun c!1319597 () Bool)

(assert (=> d!2212080 (= c!1319597 (isEmpty!39899 lt!2547334))))

(declare-fun e!4252734 () Bool)

(assert (=> d!2212080 (= (matchZipper!3192 (content!13804 lt!2547348) lt!2547334) e!4252734)))

(declare-fun b!7073710 () Bool)

(assert (=> b!7073710 (= e!4252734 (nullableZipper!2703 (content!13804 lt!2547348)))))

(declare-fun b!7073711 () Bool)

(assert (=> b!7073711 (= e!4252734 (matchZipper!3192 (derivationStepZipper!3102 (content!13804 lt!2547348) (head!14411 lt!2547334)) (tail!13841 lt!2547334)))))

(assert (= (and d!2212080 c!1319597) b!7073710))

(assert (= (and d!2212080 (not c!1319597)) b!7073711))

(declare-fun m!7800670 () Bool)

(assert (=> d!2212080 m!7800670))

(assert (=> b!7073710 m!7800318))

(declare-fun m!7800672 () Bool)

(assert (=> b!7073710 m!7800672))

(assert (=> b!7073711 m!7800622))

(assert (=> b!7073711 m!7800318))

(assert (=> b!7073711 m!7800622))

(declare-fun m!7800674 () Bool)

(assert (=> b!7073711 m!7800674))

(assert (=> b!7073711 m!7800616))

(assert (=> b!7073711 m!7800674))

(assert (=> b!7073711 m!7800616))

(declare-fun m!7800676 () Bool)

(assert (=> b!7073711 m!7800676))

(assert (=> b!7073511 d!2212080))

(declare-fun bs!1880901 () Bool)

(declare-fun d!2212082 () Bool)

(assert (= bs!1880901 (and d!2212082 b!7073484)))

(declare-fun lambda!426099 () Int)

(assert (=> bs!1880901 (= (= lt!2547334 s!7408) (= lambda!426099 lambda!426037))))

(declare-fun bs!1880902 () Bool)

(assert (= bs!1880902 (and d!2212082 b!7073511)))

(assert (=> bs!1880902 (= lambda!426099 lambda!426041)))

(assert (=> d!2212082 true))

(assert (=> d!2212082 (matchZipper!3192 (content!13804 lt!2547348) lt!2547334)))

(declare-fun lt!2547583 () Unit!162014)

(declare-fun choose!54259 (List!68484 List!68482) Unit!162014)

(assert (=> d!2212082 (= lt!2547583 (choose!54259 lt!2547348 lt!2547334))))

(assert (=> d!2212082 (exists!3704 lt!2547348 lambda!426099)))

(assert (=> d!2212082 (= (lemmaExistsMatchingContextThenMatchingString!55 lt!2547348 lt!2547334) lt!2547583)))

(declare-fun bs!1880903 () Bool)

(assert (= bs!1880903 d!2212082))

(assert (=> bs!1880903 m!7800318))

(assert (=> bs!1880903 m!7800318))

(assert (=> bs!1880903 m!7800320))

(declare-fun m!7800678 () Bool)

(assert (=> bs!1880903 m!7800678))

(declare-fun m!7800680 () Bool)

(assert (=> bs!1880903 m!7800680))

(assert (=> b!7073511 d!2212082))

(declare-fun d!2212084 () Bool)

(assert (=> d!2212084 (= (isDefined!13672 (findConcatSeparationZippers!487 lt!2547375 lt!2547376 Nil!68358 s!7408 s!7408)) (not (isEmpty!39898 (findConcatSeparationZippers!487 lt!2547375 lt!2547376 Nil!68358 s!7408 s!7408))))))

(declare-fun bs!1880904 () Bool)

(assert (= bs!1880904 d!2212084))

(assert (=> bs!1880904 m!7800322))

(declare-fun m!7800682 () Bool)

(assert (=> bs!1880904 m!7800682))

(assert (=> b!7073511 d!2212084))

(declare-fun d!2212086 () Bool)

(declare-fun c!1319600 () Bool)

(assert (=> d!2212086 (= c!1319600 (isEmpty!39899 lt!2547334))))

(declare-fun e!4252735 () Bool)

(assert (=> d!2212086 (= (matchZipper!3192 z1!570 lt!2547334) e!4252735)))

(declare-fun b!7073712 () Bool)

(assert (=> b!7073712 (= e!4252735 (nullableZipper!2703 z1!570))))

(declare-fun b!7073713 () Bool)

(assert (=> b!7073713 (= e!4252735 (matchZipper!3192 (derivationStepZipper!3102 z1!570 (head!14411 lt!2547334)) (tail!13841 lt!2547334)))))

(assert (= (and d!2212086 c!1319600) b!7073712))

(assert (= (and d!2212086 (not c!1319600)) b!7073713))

(assert (=> d!2212086 m!7800670))

(declare-fun m!7800684 () Bool)

(assert (=> b!7073712 m!7800684))

(assert (=> b!7073713 m!7800622))

(assert (=> b!7073713 m!7800622))

(declare-fun m!7800686 () Bool)

(assert (=> b!7073713 m!7800686))

(assert (=> b!7073713 m!7800616))

(assert (=> b!7073713 m!7800686))

(assert (=> b!7073713 m!7800616))

(declare-fun m!7800688 () Bool)

(assert (=> b!7073713 m!7800688))

(assert (=> b!7073511 d!2212086))

(declare-fun bs!1880905 () Bool)

(declare-fun d!2212088 () Bool)

(assert (= bs!1880905 (and d!2212088 b!7073487)))

(declare-fun lambda!426102 () Int)

(assert (=> bs!1880905 (= lambda!426102 lambda!426039)))

(declare-fun bs!1880906 () Bool)

(assert (= bs!1880906 (and d!2212088 d!2212060)))

(assert (=> bs!1880906 (= lambda!426102 lambda!426096)))

(assert (=> d!2212088 (= (inv!86990 setElem!50294) (forall!16605 (exprs!7148 setElem!50294) lambda!426102))))

(declare-fun bs!1880907 () Bool)

(assert (= bs!1880907 d!2212088))

(declare-fun m!7800690 () Bool)

(assert (=> bs!1880907 m!7800690))

(assert (=> setNonEmpty!50294 d!2212088))

(declare-fun b!7073725 () Bool)

(declare-fun e!4252741 () Bool)

(declare-fun lt!2547586 () List!68482)

(assert (=> b!7073725 (= e!4252741 (or (not (= (_2!37442 lt!2547341) Nil!68358)) (= lt!2547586 (_1!37442 lt!2547341))))))

(declare-fun b!7073722 () Bool)

(declare-fun e!4252740 () List!68482)

(assert (=> b!7073722 (= e!4252740 (_2!37442 lt!2547341))))

(declare-fun d!2212090 () Bool)

(assert (=> d!2212090 e!4252741))

(declare-fun res!2889187 () Bool)

(assert (=> d!2212090 (=> (not res!2889187) (not e!4252741))))

(declare-fun content!13806 (List!68482) (Set C!35574))

(assert (=> d!2212090 (= res!2889187 (= (content!13806 lt!2547586) (set.union (content!13806 (_1!37442 lt!2547341)) (content!13806 (_2!37442 lt!2547341)))))))

(assert (=> d!2212090 (= lt!2547586 e!4252740)))

(declare-fun c!1319603 () Bool)

(assert (=> d!2212090 (= c!1319603 (is-Nil!68358 (_1!37442 lt!2547341)))))

(assert (=> d!2212090 (= (++!15788 (_1!37442 lt!2547341) (_2!37442 lt!2547341)) lt!2547586)))

(declare-fun b!7073723 () Bool)

(assert (=> b!7073723 (= e!4252740 (Cons!68358 (h!74806 (_1!37442 lt!2547341)) (++!15788 (t!382265 (_1!37442 lt!2547341)) (_2!37442 lt!2547341))))))

(declare-fun b!7073724 () Bool)

(declare-fun res!2889188 () Bool)

(assert (=> b!7073724 (=> (not res!2889188) (not e!4252741))))

(assert (=> b!7073724 (= res!2889188 (= (size!41220 lt!2547586) (+ (size!41220 (_1!37442 lt!2547341)) (size!41220 (_2!37442 lt!2547341)))))))

(assert (= (and d!2212090 c!1319603) b!7073722))

(assert (= (and d!2212090 (not c!1319603)) b!7073723))

(assert (= (and d!2212090 res!2889187) b!7073724))

(assert (= (and b!7073724 res!2889188) b!7073725))

(declare-fun m!7800692 () Bool)

(assert (=> d!2212090 m!7800692))

(declare-fun m!7800694 () Bool)

(assert (=> d!2212090 m!7800694))

(declare-fun m!7800696 () Bool)

(assert (=> d!2212090 m!7800696))

(declare-fun m!7800698 () Bool)

(assert (=> b!7073723 m!7800698))

(declare-fun m!7800700 () Bool)

(assert (=> b!7073724 m!7800700))

(declare-fun m!7800702 () Bool)

(assert (=> b!7073724 m!7800702))

(declare-fun m!7800704 () Bool)

(assert (=> b!7073724 m!7800704))

(assert (=> b!7073494 d!2212090))

(declare-fun lt!2547587 () List!68482)

(declare-fun e!4252743 () Bool)

(declare-fun b!7073729 () Bool)

(assert (=> b!7073729 (= e!4252743 (or (not (= (_2!37442 lt!2547341) Nil!68358)) (= lt!2547587 lt!2547334)))))

(declare-fun b!7073726 () Bool)

(declare-fun e!4252742 () List!68482)

(assert (=> b!7073726 (= e!4252742 (_2!37442 lt!2547341))))

(declare-fun d!2212092 () Bool)

(assert (=> d!2212092 e!4252743))

(declare-fun res!2889189 () Bool)

(assert (=> d!2212092 (=> (not res!2889189) (not e!4252743))))

(assert (=> d!2212092 (= res!2889189 (= (content!13806 lt!2547587) (set.union (content!13806 lt!2547334) (content!13806 (_2!37442 lt!2547341)))))))

(assert (=> d!2212092 (= lt!2547587 e!4252742)))

(declare-fun c!1319604 () Bool)

(assert (=> d!2212092 (= c!1319604 (is-Nil!68358 lt!2547334))))

(assert (=> d!2212092 (= (++!15788 lt!2547334 (_2!37442 lt!2547341)) lt!2547587)))

(declare-fun b!7073727 () Bool)

(assert (=> b!7073727 (= e!4252742 (Cons!68358 (h!74806 lt!2547334) (++!15788 (t!382265 lt!2547334) (_2!37442 lt!2547341))))))

(declare-fun b!7073728 () Bool)

(declare-fun res!2889190 () Bool)

(assert (=> b!7073728 (=> (not res!2889190) (not e!4252743))))

(assert (=> b!7073728 (= res!2889190 (= (size!41220 lt!2547587) (+ (size!41220 lt!2547334) (size!41220 (_2!37442 lt!2547341)))))))

(assert (= (and d!2212092 c!1319604) b!7073726))

(assert (= (and d!2212092 (not c!1319604)) b!7073727))

(assert (= (and d!2212092 res!2889189) b!7073728))

(assert (= (and b!7073728 res!2889190) b!7073729))

(declare-fun m!7800706 () Bool)

(assert (=> d!2212092 m!7800706))

(declare-fun m!7800708 () Bool)

(assert (=> d!2212092 m!7800708))

(assert (=> d!2212092 m!7800696))

(declare-fun m!7800710 () Bool)

(assert (=> b!7073727 m!7800710))

(declare-fun m!7800712 () Bool)

(assert (=> b!7073728 m!7800712))

(assert (=> b!7073728 m!7800624))

(assert (=> b!7073728 m!7800704))

(assert (=> b!7073497 d!2212092))

(declare-fun d!2212094 () Bool)

(declare-fun c!1319605 () Bool)

(assert (=> d!2212094 (= c!1319605 (isEmpty!39899 (t!382265 s!7408)))))

(declare-fun e!4252744 () Bool)

(assert (=> d!2212094 (= (matchZipper!3192 lt!2547343 (t!382265 s!7408)) e!4252744)))

(declare-fun b!7073730 () Bool)

(assert (=> b!7073730 (= e!4252744 (nullableZipper!2703 lt!2547343))))

(declare-fun b!7073731 () Bool)

(assert (=> b!7073731 (= e!4252744 (matchZipper!3192 (derivationStepZipper!3102 lt!2547343 (head!14411 (t!382265 s!7408))) (tail!13841 (t!382265 s!7408))))))

(assert (= (and d!2212094 c!1319605) b!7073730))

(assert (= (and d!2212094 (not c!1319605)) b!7073731))

(declare-fun m!7800714 () Bool)

(assert (=> d!2212094 m!7800714))

(declare-fun m!7800716 () Bool)

(assert (=> b!7073730 m!7800716))

(declare-fun m!7800718 () Bool)

(assert (=> b!7073731 m!7800718))

(assert (=> b!7073731 m!7800718))

(declare-fun m!7800720 () Bool)

(assert (=> b!7073731 m!7800720))

(declare-fun m!7800722 () Bool)

(assert (=> b!7073731 m!7800722))

(assert (=> b!7073731 m!7800720))

(assert (=> b!7073731 m!7800722))

(declare-fun m!7800724 () Bool)

(assert (=> b!7073731 m!7800724))

(assert (=> b!7073499 d!2212094))

(assert (=> b!7073499 d!2212048))

(declare-fun d!2212096 () Bool)

(declare-fun c!1319606 () Bool)

(assert (=> d!2212096 (= c!1319606 (isEmpty!39899 (_1!37442 lt!2547341)))))

(declare-fun e!4252745 () Bool)

(assert (=> d!2212096 (= (matchZipper!3192 lt!2547332 (_1!37442 lt!2547341)) e!4252745)))

(declare-fun b!7073732 () Bool)

(assert (=> b!7073732 (= e!4252745 (nullableZipper!2703 lt!2547332))))

(declare-fun b!7073733 () Bool)

(assert (=> b!7073733 (= e!4252745 (matchZipper!3192 (derivationStepZipper!3102 lt!2547332 (head!14411 (_1!37442 lt!2547341))) (tail!13841 (_1!37442 lt!2547341))))))

(assert (= (and d!2212096 c!1319606) b!7073732))

(assert (= (and d!2212096 (not c!1319606)) b!7073733))

(assert (=> d!2212096 m!7800602))

(declare-fun m!7800726 () Bool)

(assert (=> b!7073732 m!7800726))

(assert (=> b!7073733 m!7800606))

(assert (=> b!7073733 m!7800606))

(declare-fun m!7800728 () Bool)

(assert (=> b!7073733 m!7800728))

(assert (=> b!7073733 m!7800610))

(assert (=> b!7073733 m!7800728))

(assert (=> b!7073733 m!7800610))

(declare-fun m!7800730 () Bool)

(assert (=> b!7073733 m!7800730))

(assert (=> b!7073500 d!2212096))

(declare-fun d!2212098 () Bool)

(assert (=> d!2212098 (= (isEmpty!39896 (exprs!7148 lt!2547335)) (is-Nil!68359 (exprs!7148 lt!2547335)))))

(assert (=> b!7073498 d!2212098))

(declare-fun d!2212100 () Bool)

(declare-fun nullableFct!2817 (Regex!17652) Bool)

(assert (=> d!2212100 (= (nullable!7335 (h!74807 (exprs!7148 lt!2547335))) (nullableFct!2817 (h!74807 (exprs!7148 lt!2547335))))))

(declare-fun bs!1880908 () Bool)

(assert (= bs!1880908 d!2212100))

(declare-fun m!7800732 () Bool)

(assert (=> bs!1880908 m!7800732))

(assert (=> b!7073502 d!2212100))

(declare-fun d!2212102 () Bool)

(assert (=> d!2212102 (= (tail!13839 (exprs!7148 lt!2547335)) (t!382266 (exprs!7148 lt!2547335)))))

(assert (=> b!7073502 d!2212102))

(assert (=> b!7073483 d!2212048))

(assert (=> b!7073482 d!2212048))

(declare-fun bm!642869 () Bool)

(declare-fun call!642876 () (Set Context!13296))

(declare-fun call!642875 () (Set Context!13296))

(assert (=> bm!642869 (= call!642876 call!642875)))

(declare-fun b!7073734 () Bool)

(declare-fun e!4252751 () (Set Context!13296))

(declare-fun e!4252746 () (Set Context!13296))

(assert (=> b!7073734 (= e!4252751 e!4252746)))

(declare-fun c!1319609 () Bool)

(assert (=> b!7073734 (= c!1319609 (is-Union!17652 (h!74807 (exprs!7148 lt!2547335))))))

(declare-fun b!7073735 () Bool)

(declare-fun e!4252748 () (Set Context!13296))

(assert (=> b!7073735 (= e!4252748 call!642876)))

(declare-fun call!642877 () (Set Context!13296))

(declare-fun c!1319610 () Bool)

(declare-fun c!1319608 () Bool)

(declare-fun call!642878 () List!68483)

(declare-fun bm!642870 () Bool)

(assert (=> bm!642870 (= call!642877 (derivationStepZipperDown!2286 (ite c!1319609 (regOne!35817 (h!74807 (exprs!7148 lt!2547335))) (ite c!1319610 (regTwo!35816 (h!74807 (exprs!7148 lt!2547335))) (ite c!1319608 (regOne!35816 (h!74807 (exprs!7148 lt!2547335))) (reg!17981 (h!74807 (exprs!7148 lt!2547335)))))) (ite (or c!1319609 c!1319610) lt!2547338 (Context!13297 call!642878)) (h!74806 s!7408)))))

(declare-fun bm!642871 () Bool)

(assert (=> bm!642871 (= call!642875 call!642877)))

(declare-fun bm!642872 () Bool)

(declare-fun call!642879 () List!68483)

(assert (=> bm!642872 (= call!642878 call!642879)))

(declare-fun b!7073736 () Bool)

(declare-fun e!4252750 () Bool)

(assert (=> b!7073736 (= c!1319610 e!4252750)))

(declare-fun res!2889191 () Bool)

(assert (=> b!7073736 (=> (not res!2889191) (not e!4252750))))

(assert (=> b!7073736 (= res!2889191 (is-Concat!26497 (h!74807 (exprs!7148 lt!2547335))))))

(declare-fun e!4252747 () (Set Context!13296))

(assert (=> b!7073736 (= e!4252746 e!4252747)))

(declare-fun b!7073737 () Bool)

(assert (=> b!7073737 (= e!4252747 e!4252748)))

(assert (=> b!7073737 (= c!1319608 (is-Concat!26497 (h!74807 (exprs!7148 lt!2547335))))))

(declare-fun call!642874 () (Set Context!13296))

(declare-fun bm!642874 () Bool)

(assert (=> bm!642874 (= call!642874 (derivationStepZipperDown!2286 (ite c!1319609 (regTwo!35817 (h!74807 (exprs!7148 lt!2547335))) (regOne!35816 (h!74807 (exprs!7148 lt!2547335)))) (ite c!1319609 lt!2547338 (Context!13297 call!642879)) (h!74806 s!7408)))))

(declare-fun b!7073738 () Bool)

(assert (=> b!7073738 (= e!4252750 (nullable!7335 (regOne!35816 (h!74807 (exprs!7148 lt!2547335)))))))

(declare-fun b!7073739 () Bool)

(assert (=> b!7073739 (= e!4252751 (set.insert lt!2547338 (as set.empty (Set Context!13296))))))

(declare-fun b!7073740 () Bool)

(declare-fun c!1319607 () Bool)

(assert (=> b!7073740 (= c!1319607 (is-Star!17652 (h!74807 (exprs!7148 lt!2547335))))))

(declare-fun e!4252749 () (Set Context!13296))

(assert (=> b!7073740 (= e!4252748 e!4252749)))

(declare-fun bm!642873 () Bool)

(assert (=> bm!642873 (= call!642879 ($colon$colon!2663 (exprs!7148 lt!2547338) (ite (or c!1319610 c!1319608) (regTwo!35816 (h!74807 (exprs!7148 lt!2547335))) (h!74807 (exprs!7148 lt!2547335)))))))

(declare-fun d!2212104 () Bool)

(declare-fun c!1319611 () Bool)

(assert (=> d!2212104 (= c!1319611 (and (is-ElementMatch!17652 (h!74807 (exprs!7148 lt!2547335))) (= (c!1319552 (h!74807 (exprs!7148 lt!2547335))) (h!74806 s!7408))))))

(assert (=> d!2212104 (= (derivationStepZipperDown!2286 (h!74807 (exprs!7148 lt!2547335)) lt!2547338 (h!74806 s!7408)) e!4252751)))

(declare-fun b!7073741 () Bool)

(assert (=> b!7073741 (= e!4252749 (as set.empty (Set Context!13296)))))

(declare-fun b!7073742 () Bool)

(assert (=> b!7073742 (= e!4252746 (set.union call!642877 call!642874))))

(declare-fun b!7073743 () Bool)

(assert (=> b!7073743 (= e!4252749 call!642876)))

(declare-fun b!7073744 () Bool)

(assert (=> b!7073744 (= e!4252747 (set.union call!642874 call!642875))))

(assert (= (and d!2212104 c!1319611) b!7073739))

(assert (= (and d!2212104 (not c!1319611)) b!7073734))

(assert (= (and b!7073734 c!1319609) b!7073742))

(assert (= (and b!7073734 (not c!1319609)) b!7073736))

(assert (= (and b!7073736 res!2889191) b!7073738))

(assert (= (and b!7073736 c!1319610) b!7073744))

(assert (= (and b!7073736 (not c!1319610)) b!7073737))

(assert (= (and b!7073737 c!1319608) b!7073735))

(assert (= (and b!7073737 (not c!1319608)) b!7073740))

(assert (= (and b!7073740 c!1319607) b!7073743))

(assert (= (and b!7073740 (not c!1319607)) b!7073741))

(assert (= (or b!7073735 b!7073743) bm!642872))

(assert (= (or b!7073735 b!7073743) bm!642869))

(assert (= (or b!7073744 bm!642869) bm!642871))

(assert (= (or b!7073744 bm!642872) bm!642873))

(assert (= (or b!7073742 bm!642871) bm!642870))

(assert (= (or b!7073742 b!7073744) bm!642874))

(declare-fun m!7800734 () Bool)

(assert (=> b!7073739 m!7800734))

(declare-fun m!7800736 () Bool)

(assert (=> bm!642873 m!7800736))

(declare-fun m!7800738 () Bool)

(assert (=> bm!642870 m!7800738))

(assert (=> b!7073738 m!7800550))

(declare-fun m!7800740 () Bool)

(assert (=> bm!642874 m!7800740))

(assert (=> b!7073482 d!2212104))

(declare-fun call!642882 () (Set Context!13296))

(declare-fun e!4252760 () (Set Context!13296))

(declare-fun b!7073755 () Bool)

(assert (=> b!7073755 (= e!4252760 (set.union call!642882 (derivationStepZipperUp!2236 (Context!13297 (t!382266 (exprs!7148 lt!2547338))) (h!74806 s!7408))))))

(declare-fun b!7073756 () Bool)

(declare-fun e!4252758 () (Set Context!13296))

(assert (=> b!7073756 (= e!4252760 e!4252758)))

(declare-fun c!1319617 () Bool)

(assert (=> b!7073756 (= c!1319617 (is-Cons!68359 (exprs!7148 lt!2547338)))))

(declare-fun bm!642877 () Bool)

(assert (=> bm!642877 (= call!642882 (derivationStepZipperDown!2286 (h!74807 (exprs!7148 lt!2547338)) (Context!13297 (t!382266 (exprs!7148 lt!2547338))) (h!74806 s!7408)))))

(declare-fun d!2212106 () Bool)

(declare-fun c!1319616 () Bool)

(declare-fun e!4252759 () Bool)

(assert (=> d!2212106 (= c!1319616 e!4252759)))

(declare-fun res!2889194 () Bool)

(assert (=> d!2212106 (=> (not res!2889194) (not e!4252759))))

(assert (=> d!2212106 (= res!2889194 (is-Cons!68359 (exprs!7148 lt!2547338)))))

(assert (=> d!2212106 (= (derivationStepZipperUp!2236 lt!2547338 (h!74806 s!7408)) e!4252760)))

(declare-fun b!7073757 () Bool)

(assert (=> b!7073757 (= e!4252758 (as set.empty (Set Context!13296)))))

(declare-fun b!7073758 () Bool)

(assert (=> b!7073758 (= e!4252758 call!642882)))

(declare-fun b!7073759 () Bool)

(assert (=> b!7073759 (= e!4252759 (nullable!7335 (h!74807 (exprs!7148 lt!2547338))))))

(assert (= (and d!2212106 res!2889194) b!7073759))

(assert (= (and d!2212106 c!1319616) b!7073755))

(assert (= (and d!2212106 (not c!1319616)) b!7073756))

(assert (= (and b!7073756 c!1319617) b!7073758))

(assert (= (and b!7073756 (not c!1319617)) b!7073757))

(assert (= (or b!7073755 b!7073758) bm!642877))

(declare-fun m!7800742 () Bool)

(assert (=> b!7073755 m!7800742))

(declare-fun m!7800744 () Bool)

(assert (=> bm!642877 m!7800744))

(declare-fun m!7800746 () Bool)

(assert (=> b!7073759 m!7800746))

(assert (=> b!7073482 d!2212106))

(declare-fun b!7073769 () Bool)

(declare-fun e!4252765 () List!68483)

(assert (=> b!7073769 (= e!4252765 (Cons!68359 (h!74807 lt!2547333) (++!15787 (t!382266 lt!2547333) (exprs!7148 ct2!306))))))

(declare-fun d!2212108 () Bool)

(declare-fun e!4252766 () Bool)

(assert (=> d!2212108 e!4252766))

(declare-fun res!2889199 () Bool)

(assert (=> d!2212108 (=> (not res!2889199) (not e!4252766))))

(declare-fun lt!2547590 () List!68483)

(declare-fun content!13807 (List!68483) (Set Regex!17652))

(assert (=> d!2212108 (= res!2889199 (= (content!13807 lt!2547590) (set.union (content!13807 lt!2547333) (content!13807 (exprs!7148 ct2!306)))))))

(assert (=> d!2212108 (= lt!2547590 e!4252765)))

(declare-fun c!1319620 () Bool)

(assert (=> d!2212108 (= c!1319620 (is-Nil!68359 lt!2547333))))

(assert (=> d!2212108 (= (++!15787 lt!2547333 (exprs!7148 ct2!306)) lt!2547590)))

(declare-fun b!7073771 () Bool)

(assert (=> b!7073771 (= e!4252766 (or (not (= (exprs!7148 ct2!306) Nil!68359)) (= lt!2547590 lt!2547333)))))

(declare-fun b!7073770 () Bool)

(declare-fun res!2889200 () Bool)

(assert (=> b!7073770 (=> (not res!2889200) (not e!4252766))))

(declare-fun size!41221 (List!68483) Int)

(assert (=> b!7073770 (= res!2889200 (= (size!41221 lt!2547590) (+ (size!41221 lt!2547333) (size!41221 (exprs!7148 ct2!306)))))))

(declare-fun b!7073768 () Bool)

(assert (=> b!7073768 (= e!4252765 (exprs!7148 ct2!306))))

(assert (= (and d!2212108 c!1319620) b!7073768))

(assert (= (and d!2212108 (not c!1319620)) b!7073769))

(assert (= (and d!2212108 res!2889199) b!7073770))

(assert (= (and b!7073770 res!2889200) b!7073771))

(declare-fun m!7800748 () Bool)

(assert (=> b!7073769 m!7800748))

(declare-fun m!7800750 () Bool)

(assert (=> d!2212108 m!7800750))

(declare-fun m!7800752 () Bool)

(assert (=> d!2212108 m!7800752))

(declare-fun m!7800754 () Bool)

(assert (=> d!2212108 m!7800754))

(declare-fun m!7800756 () Bool)

(assert (=> b!7073770 m!7800756))

(declare-fun m!7800758 () Bool)

(assert (=> b!7073770 m!7800758))

(declare-fun m!7800760 () Bool)

(assert (=> b!7073770 m!7800760))

(assert (=> b!7073482 d!2212108))

(declare-fun d!2212110 () Bool)

(declare-fun c!1319621 () Bool)

(assert (=> d!2212110 (= c!1319621 (isEmpty!39899 lt!2547334))))

(declare-fun e!4252767 () Bool)

(assert (=> d!2212110 (= (matchZipper!3192 lt!2547375 lt!2547334) e!4252767)))

(declare-fun b!7073772 () Bool)

(assert (=> b!7073772 (= e!4252767 (nullableZipper!2703 lt!2547375))))

(declare-fun b!7073773 () Bool)

(assert (=> b!7073773 (= e!4252767 (matchZipper!3192 (derivationStepZipper!3102 lt!2547375 (head!14411 lt!2547334)) (tail!13841 lt!2547334)))))

(assert (= (and d!2212110 c!1319621) b!7073772))

(assert (= (and d!2212110 (not c!1319621)) b!7073773))

(assert (=> d!2212110 m!7800670))

(declare-fun m!7800762 () Bool)

(assert (=> b!7073772 m!7800762))

(assert (=> b!7073773 m!7800622))

(assert (=> b!7073773 m!7800622))

(declare-fun m!7800764 () Bool)

(assert (=> b!7073773 m!7800764))

(assert (=> b!7073773 m!7800616))

(assert (=> b!7073773 m!7800764))

(assert (=> b!7073773 m!7800616))

(declare-fun m!7800766 () Bool)

(assert (=> b!7073773 m!7800766))

(assert (=> b!7073485 d!2212110))

(declare-fun d!2212112 () Bool)

(declare-fun c!1319622 () Bool)

(assert (=> d!2212112 (= c!1319622 (isEmpty!39899 (_1!37442 lt!2547341)))))

(declare-fun e!4252768 () Bool)

(assert (=> d!2212112 (= (matchZipper!3192 lt!2547369 (_1!37442 lt!2547341)) e!4252768)))

(declare-fun b!7073774 () Bool)

(assert (=> b!7073774 (= e!4252768 (nullableZipper!2703 lt!2547369))))

(declare-fun b!7073775 () Bool)

(assert (=> b!7073775 (= e!4252768 (matchZipper!3192 (derivationStepZipper!3102 lt!2547369 (head!14411 (_1!37442 lt!2547341))) (tail!13841 (_1!37442 lt!2547341))))))

(assert (= (and d!2212112 c!1319622) b!7073774))

(assert (= (and d!2212112 (not c!1319622)) b!7073775))

(assert (=> d!2212112 m!7800602))

(declare-fun m!7800768 () Bool)

(assert (=> b!7073774 m!7800768))

(assert (=> b!7073775 m!7800606))

(assert (=> b!7073775 m!7800606))

(declare-fun m!7800770 () Bool)

(assert (=> b!7073775 m!7800770))

(assert (=> b!7073775 m!7800610))

(assert (=> b!7073775 m!7800770))

(assert (=> b!7073775 m!7800610))

(declare-fun m!7800772 () Bool)

(assert (=> b!7073775 m!7800772))

(assert (=> b!7073485 d!2212112))

(declare-fun e!4252771 () Bool)

(declare-fun d!2212114 () Bool)

(assert (=> d!2212114 (= (matchZipper!3192 (set.union lt!2547371 lt!2547332) (_1!37442 lt!2547341)) e!4252771)))

(declare-fun res!2889203 () Bool)

(assert (=> d!2212114 (=> res!2889203 e!4252771)))

(assert (=> d!2212114 (= res!2889203 (matchZipper!3192 lt!2547371 (_1!37442 lt!2547341)))))

(declare-fun lt!2547593 () Unit!162014)

(declare-fun choose!54260 ((Set Context!13296) (Set Context!13296) List!68482) Unit!162014)

(assert (=> d!2212114 (= lt!2547593 (choose!54260 lt!2547371 lt!2547332 (_1!37442 lt!2547341)))))

(assert (=> d!2212114 (= (lemmaZipperConcatMatchesSameAsBothZippers!1665 lt!2547371 lt!2547332 (_1!37442 lt!2547341)) lt!2547593)))

(declare-fun b!7073778 () Bool)

(assert (=> b!7073778 (= e!4252771 (matchZipper!3192 lt!2547332 (_1!37442 lt!2547341)))))

(assert (= (and d!2212114 (not res!2889203)) b!7073778))

(declare-fun m!7800774 () Bool)

(assert (=> d!2212114 m!7800774))

(assert (=> d!2212114 m!7800306))

(declare-fun m!7800776 () Bool)

(assert (=> d!2212114 m!7800776))

(assert (=> b!7073778 m!7800340))

(assert (=> b!7073485 d!2212114))

(declare-fun d!2212116 () Bool)

(declare-fun c!1319623 () Bool)

(assert (=> d!2212116 (= c!1319623 (isEmpty!39899 (_2!37442 lt!2547341)))))

(declare-fun e!4252772 () Bool)

(assert (=> d!2212116 (= (matchZipper!3192 lt!2547376 (_2!37442 lt!2547341)) e!4252772)))

(declare-fun b!7073779 () Bool)

(assert (=> b!7073779 (= e!4252772 (nullableZipper!2703 lt!2547376))))

(declare-fun b!7073780 () Bool)

(assert (=> b!7073780 (= e!4252772 (matchZipper!3192 (derivationStepZipper!3102 lt!2547376 (head!14411 (_2!37442 lt!2547341))) (tail!13841 (_2!37442 lt!2547341))))))

(assert (= (and d!2212116 c!1319623) b!7073779))

(assert (= (and d!2212116 (not c!1319623)) b!7073780))

(declare-fun m!7800778 () Bool)

(assert (=> d!2212116 m!7800778))

(declare-fun m!7800780 () Bool)

(assert (=> b!7073779 m!7800780))

(declare-fun m!7800782 () Bool)

(assert (=> b!7073780 m!7800782))

(assert (=> b!7073780 m!7800782))

(declare-fun m!7800784 () Bool)

(assert (=> b!7073780 m!7800784))

(declare-fun m!7800786 () Bool)

(assert (=> b!7073780 m!7800786))

(assert (=> b!7073780 m!7800784))

(assert (=> b!7073780 m!7800786))

(declare-fun m!7800788 () Bool)

(assert (=> b!7073780 m!7800788))

(assert (=> b!7073505 d!2212116))

(declare-fun d!2212118 () Bool)

(assert (=> d!2212118 (forall!16605 (++!15787 (exprs!7148 lt!2547335) (exprs!7148 ct2!306)) lambda!426039)))

(declare-fun lt!2547594 () Unit!162014)

(assert (=> d!2212118 (= lt!2547594 (choose!54252 (exprs!7148 lt!2547335) (exprs!7148 ct2!306) lambda!426039))))

(assert (=> d!2212118 (forall!16605 (exprs!7148 lt!2547335) lambda!426039)))

(assert (=> d!2212118 (= (lemmaConcatPreservesForall!963 (exprs!7148 lt!2547335) (exprs!7148 ct2!306) lambda!426039) lt!2547594)))

(declare-fun bs!1880909 () Bool)

(assert (= bs!1880909 d!2212118))

(assert (=> bs!1880909 m!7800334))

(assert (=> bs!1880909 m!7800334))

(declare-fun m!7800790 () Bool)

(assert (=> bs!1880909 m!7800790))

(declare-fun m!7800792 () Bool)

(assert (=> bs!1880909 m!7800792))

(declare-fun m!7800794 () Bool)

(assert (=> bs!1880909 m!7800794))

(assert (=> b!7073486 d!2212118))

(declare-fun bs!1880910 () Bool)

(declare-fun d!2212120 () Bool)

(assert (= bs!1880910 (and d!2212120 b!7073484)))

(declare-fun lambda!426105 () Int)

(assert (=> bs!1880910 (not (= lambda!426105 lambda!426037))))

(declare-fun bs!1880911 () Bool)

(assert (= bs!1880911 (and d!2212120 b!7073511)))

(assert (=> bs!1880911 (not (= lambda!426105 lambda!426041))))

(declare-fun bs!1880912 () Bool)

(assert (= bs!1880912 (and d!2212120 d!2212082)))

(assert (=> bs!1880912 (not (= lambda!426105 lambda!426099))))

(assert (=> d!2212120 true))

(declare-fun order!28415 () Int)

(declare-fun dynLambda!27815 (Int Int) Int)

(assert (=> d!2212120 (< (dynLambda!27815 order!28415 lambda!426037) (dynLambda!27815 order!28415 lambda!426105))))

(declare-fun forall!16606 (List!68484 Int) Bool)

(assert (=> d!2212120 (= (exists!3704 lt!2547344 lambda!426037) (not (forall!16606 lt!2547344 lambda!426105)))))

(declare-fun bs!1880913 () Bool)

(assert (= bs!1880913 d!2212120))

(declare-fun m!7800796 () Bool)

(assert (=> bs!1880913 m!7800796))

(assert (=> b!7073484 d!2212120))

(declare-fun d!2212122 () Bool)

(declare-fun e!4252773 () Bool)

(assert (=> d!2212122 e!4252773))

(declare-fun res!2889204 () Bool)

(assert (=> d!2212122 (=> (not res!2889204) (not e!4252773))))

(declare-fun lt!2547595 () List!68484)

(assert (=> d!2212122 (= res!2889204 (noDuplicate!2732 lt!2547595))))

(assert (=> d!2212122 (= lt!2547595 (choose!54256 lt!2547346))))

(assert (=> d!2212122 (= (toList!10993 lt!2547346) lt!2547595)))

(declare-fun b!7073783 () Bool)

(assert (=> b!7073783 (= e!4252773 (= (content!13804 lt!2547595) lt!2547346))))

(assert (= (and d!2212122 res!2889204) b!7073783))

(declare-fun m!7800798 () Bool)

(assert (=> d!2212122 m!7800798))

(declare-fun m!7800800 () Bool)

(assert (=> d!2212122 m!7800800))

(declare-fun m!7800802 () Bool)

(assert (=> b!7073783 m!7800802))

(assert (=> b!7073484 d!2212122))

(declare-fun d!2212124 () Bool)

(declare-fun e!4252776 () Bool)

(assert (=> d!2212124 e!4252776))

(declare-fun res!2889207 () Bool)

(assert (=> d!2212124 (=> (not res!2889207) (not e!4252776))))

(declare-fun lt!2547598 () Context!13296)

(declare-fun dynLambda!27816 (Int Context!13296) Bool)

(assert (=> d!2212124 (= res!2889207 (dynLambda!27816 lambda!426037 lt!2547598))))

(declare-fun getWitness!1760 (List!68484 Int) Context!13296)

(assert (=> d!2212124 (= lt!2547598 (getWitness!1760 (toList!10993 lt!2547346) lambda!426037))))

(assert (=> d!2212124 (exists!3705 lt!2547346 lambda!426037)))

(assert (=> d!2212124 (= (getWitness!1758 lt!2547346 lambda!426037) lt!2547598)))

(declare-fun b!7073786 () Bool)

(assert (=> b!7073786 (= e!4252776 (set.member lt!2547598 lt!2547346))))

(assert (= (and d!2212124 res!2889207) b!7073786))

(declare-fun b_lambda!270063 () Bool)

(assert (=> (not b_lambda!270063) (not d!2212124)))

(declare-fun m!7800804 () Bool)

(assert (=> d!2212124 m!7800804))

(assert (=> d!2212124 m!7800368))

(assert (=> d!2212124 m!7800368))

(declare-fun m!7800806 () Bool)

(assert (=> d!2212124 m!7800806))

(declare-fun m!7800808 () Bool)

(assert (=> d!2212124 m!7800808))

(declare-fun m!7800810 () Bool)

(assert (=> b!7073786 m!7800810))

(assert (=> b!7073484 d!2212124))

(declare-fun d!2212126 () Bool)

(declare-fun c!1319624 () Bool)

(assert (=> d!2212126 (= c!1319624 (isEmpty!39899 s!7408))))

(declare-fun e!4252777 () Bool)

(assert (=> d!2212126 (= (matchZipper!3192 lt!2547365 s!7408) e!4252777)))

(declare-fun b!7073787 () Bool)

(assert (=> b!7073787 (= e!4252777 (nullableZipper!2703 lt!2547365))))

(declare-fun b!7073788 () Bool)

(assert (=> b!7073788 (= e!4252777 (matchZipper!3192 (derivationStepZipper!3102 lt!2547365 (head!14411 s!7408)) (tail!13841 s!7408)))))

(assert (= (and d!2212126 c!1319624) b!7073787))

(assert (= (and d!2212126 (not c!1319624)) b!7073788))

(declare-fun m!7800812 () Bool)

(assert (=> d!2212126 m!7800812))

(declare-fun m!7800814 () Bool)

(assert (=> b!7073787 m!7800814))

(declare-fun m!7800816 () Bool)

(assert (=> b!7073788 m!7800816))

(assert (=> b!7073788 m!7800816))

(declare-fun m!7800818 () Bool)

(assert (=> b!7073788 m!7800818))

(declare-fun m!7800820 () Bool)

(assert (=> b!7073788 m!7800820))

(assert (=> b!7073788 m!7800818))

(assert (=> b!7073788 m!7800820))

(declare-fun m!7800822 () Bool)

(assert (=> b!7073788 m!7800822))

(assert (=> b!7073484 d!2212126))

(declare-fun bs!1880914 () Bool)

(declare-fun d!2212128 () Bool)

(assert (= bs!1880914 (and d!2212128 b!7073484)))

(declare-fun lambda!426108 () Int)

(assert (=> bs!1880914 (= lambda!426108 lambda!426037)))

(declare-fun bs!1880915 () Bool)

(assert (= bs!1880915 (and d!2212128 b!7073511)))

(assert (=> bs!1880915 (= (= s!7408 lt!2547334) (= lambda!426108 lambda!426041))))

(declare-fun bs!1880916 () Bool)

(assert (= bs!1880916 (and d!2212128 d!2212082)))

(assert (=> bs!1880916 (= (= s!7408 lt!2547334) (= lambda!426108 lambda!426099))))

(declare-fun bs!1880917 () Bool)

(assert (= bs!1880917 (and d!2212128 d!2212120)))

(assert (=> bs!1880917 (not (= lambda!426108 lambda!426105))))

(assert (=> d!2212128 true))

(assert (=> d!2212128 (exists!3704 lt!2547344 lambda!426108)))

(declare-fun lt!2547601 () Unit!162014)

(declare-fun choose!54261 (List!68484 List!68482) Unit!162014)

(assert (=> d!2212128 (= lt!2547601 (choose!54261 lt!2547344 s!7408))))

(assert (=> d!2212128 (matchZipper!3192 (content!13804 lt!2547344) s!7408)))

(assert (=> d!2212128 (= (lemmaZipperMatchesExistsMatchingContext!573 lt!2547344 s!7408) lt!2547601)))

(declare-fun bs!1880918 () Bool)

(assert (= bs!1880918 d!2212128))

(declare-fun m!7800824 () Bool)

(assert (=> bs!1880918 m!7800824))

(declare-fun m!7800826 () Bool)

(assert (=> bs!1880918 m!7800826))

(declare-fun m!7800828 () Bool)

(assert (=> bs!1880918 m!7800828))

(assert (=> bs!1880918 m!7800828))

(declare-fun m!7800830 () Bool)

(assert (=> bs!1880918 m!7800830))

(assert (=> b!7073484 d!2212128))

(assert (=> b!7073504 d!2212094))

(declare-fun d!2212130 () Bool)

(declare-fun dynLambda!27817 (Int Context!13296) (Set Context!13296))

(assert (=> d!2212130 (= (flatMap!2578 lt!2547361 lambda!426040) (dynLambda!27817 lambda!426040 lt!2547353))))

(declare-fun lt!2547604 () Unit!162014)

(declare-fun choose!54262 ((Set Context!13296) Context!13296 Int) Unit!162014)

(assert (=> d!2212130 (= lt!2547604 (choose!54262 lt!2547361 lt!2547353 lambda!426040))))

(assert (=> d!2212130 (= lt!2547361 (set.insert lt!2547353 (as set.empty (Set Context!13296))))))

(assert (=> d!2212130 (= (lemmaFlatMapOnSingletonSet!2087 lt!2547361 lt!2547353 lambda!426040) lt!2547604)))

(declare-fun b_lambda!270065 () Bool)

(assert (=> (not b_lambda!270065) (not d!2212130)))

(declare-fun bs!1880919 () Bool)

(assert (= bs!1880919 d!2212130))

(assert (=> bs!1880919 m!7800378))

(declare-fun m!7800832 () Bool)

(assert (=> bs!1880919 m!7800832))

(declare-fun m!7800834 () Bool)

(assert (=> bs!1880919 m!7800834))

(assert (=> bs!1880919 m!7800278))

(assert (=> b!7073507 d!2212130))

(declare-fun bs!1880920 () Bool)

(declare-fun d!2212132 () Bool)

(assert (= bs!1880920 (and d!2212132 b!7073507)))

(declare-fun lambda!426111 () Int)

(assert (=> bs!1880920 (= lambda!426111 lambda!426040)))

(assert (=> d!2212132 true))

(assert (=> d!2212132 (= (derivationStepZipper!3102 lt!2547361 (h!74806 s!7408)) (flatMap!2578 lt!2547361 lambda!426111))))

(declare-fun bs!1880921 () Bool)

(assert (= bs!1880921 d!2212132))

(declare-fun m!7800836 () Bool)

(assert (=> bs!1880921 m!7800836))

(assert (=> b!7073507 d!2212132))

(declare-fun d!2212134 () Bool)

(declare-fun choose!54263 ((Set Context!13296) Int) (Set Context!13296))

(assert (=> d!2212134 (= (flatMap!2578 lt!2547361 lambda!426040) (choose!54263 lt!2547361 lambda!426040))))

(declare-fun bs!1880922 () Bool)

(assert (= bs!1880922 d!2212134))

(declare-fun m!7800838 () Bool)

(assert (=> bs!1880922 m!7800838))

(assert (=> b!7073507 d!2212134))

(assert (=> b!7073507 d!2212118))

(declare-fun call!642883 () (Set Context!13296))

(declare-fun e!4252780 () (Set Context!13296))

(declare-fun b!7073791 () Bool)

(assert (=> b!7073791 (= e!4252780 (set.union call!642883 (derivationStepZipperUp!2236 (Context!13297 (t!382266 (exprs!7148 lt!2547353))) (h!74806 s!7408))))))

(declare-fun b!7073792 () Bool)

(declare-fun e!4252778 () (Set Context!13296))

(assert (=> b!7073792 (= e!4252780 e!4252778)))

(declare-fun c!1319630 () Bool)

(assert (=> b!7073792 (= c!1319630 (is-Cons!68359 (exprs!7148 lt!2547353)))))

(declare-fun bm!642878 () Bool)

(assert (=> bm!642878 (= call!642883 (derivationStepZipperDown!2286 (h!74807 (exprs!7148 lt!2547353)) (Context!13297 (t!382266 (exprs!7148 lt!2547353))) (h!74806 s!7408)))))

(declare-fun d!2212136 () Bool)

(declare-fun c!1319629 () Bool)

(declare-fun e!4252779 () Bool)

(assert (=> d!2212136 (= c!1319629 e!4252779)))

(declare-fun res!2889208 () Bool)

(assert (=> d!2212136 (=> (not res!2889208) (not e!4252779))))

(assert (=> d!2212136 (= res!2889208 (is-Cons!68359 (exprs!7148 lt!2547353)))))

(assert (=> d!2212136 (= (derivationStepZipperUp!2236 lt!2547353 (h!74806 s!7408)) e!4252780)))

(declare-fun b!7073793 () Bool)

(assert (=> b!7073793 (= e!4252778 (as set.empty (Set Context!13296)))))

(declare-fun b!7073794 () Bool)

(assert (=> b!7073794 (= e!4252778 call!642883)))

(declare-fun b!7073795 () Bool)

(assert (=> b!7073795 (= e!4252779 (nullable!7335 (h!74807 (exprs!7148 lt!2547353))))))

(assert (= (and d!2212136 res!2889208) b!7073795))

(assert (= (and d!2212136 c!1319629) b!7073791))

(assert (= (and d!2212136 (not c!1319629)) b!7073792))

(assert (= (and b!7073792 c!1319630) b!7073794))

(assert (= (and b!7073792 (not c!1319630)) b!7073793))

(assert (= (or b!7073791 b!7073794) bm!642878))

(declare-fun m!7800840 () Bool)

(assert (=> b!7073791 m!7800840))

(declare-fun m!7800842 () Bool)

(assert (=> bm!642878 m!7800842))

(declare-fun m!7800844 () Bool)

(assert (=> b!7073795 m!7800844))

(assert (=> b!7073507 d!2212136))

(declare-fun b!7073797 () Bool)

(declare-fun e!4252781 () List!68483)

(assert (=> b!7073797 (= e!4252781 (Cons!68359 (h!74807 (exprs!7148 lt!2547335)) (++!15787 (t!382266 (exprs!7148 lt!2547335)) (exprs!7148 ct2!306))))))

(declare-fun d!2212138 () Bool)

(declare-fun e!4252782 () Bool)

(assert (=> d!2212138 e!4252782))

(declare-fun res!2889209 () Bool)

(assert (=> d!2212138 (=> (not res!2889209) (not e!4252782))))

(declare-fun lt!2547605 () List!68483)

(assert (=> d!2212138 (= res!2889209 (= (content!13807 lt!2547605) (set.union (content!13807 (exprs!7148 lt!2547335)) (content!13807 (exprs!7148 ct2!306)))))))

(assert (=> d!2212138 (= lt!2547605 e!4252781)))

(declare-fun c!1319631 () Bool)

(assert (=> d!2212138 (= c!1319631 (is-Nil!68359 (exprs!7148 lt!2547335)))))

(assert (=> d!2212138 (= (++!15787 (exprs!7148 lt!2547335) (exprs!7148 ct2!306)) lt!2547605)))

(declare-fun b!7073799 () Bool)

(assert (=> b!7073799 (= e!4252782 (or (not (= (exprs!7148 ct2!306) Nil!68359)) (= lt!2547605 (exprs!7148 lt!2547335))))))

(declare-fun b!7073798 () Bool)

(declare-fun res!2889210 () Bool)

(assert (=> b!7073798 (=> (not res!2889210) (not e!4252782))))

(assert (=> b!7073798 (= res!2889210 (= (size!41221 lt!2547605) (+ (size!41221 (exprs!7148 lt!2547335)) (size!41221 (exprs!7148 ct2!306)))))))

(declare-fun b!7073796 () Bool)

(assert (=> b!7073796 (= e!4252781 (exprs!7148 ct2!306))))

(assert (= (and d!2212138 c!1319631) b!7073796))

(assert (= (and d!2212138 (not c!1319631)) b!7073797))

(assert (= (and d!2212138 res!2889209) b!7073798))

(assert (= (and b!7073798 res!2889210) b!7073799))

(declare-fun m!7800846 () Bool)

(assert (=> b!7073797 m!7800846))

(declare-fun m!7800848 () Bool)

(assert (=> d!2212138 m!7800848))

(declare-fun m!7800850 () Bool)

(assert (=> d!2212138 m!7800850))

(assert (=> d!2212138 m!7800754))

(declare-fun m!7800852 () Bool)

(assert (=> b!7073798 m!7800852))

(declare-fun m!7800854 () Bool)

(assert (=> b!7073798 m!7800854))

(assert (=> b!7073798 m!7800760))

(assert (=> b!7073487 d!2212138))

(assert (=> b!7073487 d!2212118))

(declare-fun d!2212140 () Bool)

(declare-fun e!4252785 () Bool)

(assert (=> d!2212140 e!4252785))

(declare-fun res!2889213 () Bool)

(assert (=> d!2212140 (=> (not res!2889213) (not e!4252785))))

(declare-fun lt!2547608 () Context!13296)

(declare-fun dynLambda!27818 (Int Context!13296) Context!13296)

(assert (=> d!2212140 (= res!2889213 (= lt!2547336 (dynLambda!27818 lambda!426038 lt!2547608)))))

(declare-fun choose!54264 ((Set Context!13296) Int Context!13296) Context!13296)

(assert (=> d!2212140 (= lt!2547608 (choose!54264 z1!570 lambda!426038 lt!2547336))))

(assert (=> d!2212140 (set.member lt!2547336 (map!15998 z1!570 lambda!426038))))

(assert (=> d!2212140 (= (mapPost2!481 z1!570 lambda!426038 lt!2547336) lt!2547608)))

(declare-fun b!7073803 () Bool)

(assert (=> b!7073803 (= e!4252785 (set.member lt!2547608 z1!570))))

(assert (= (and d!2212140 res!2889213) b!7073803))

(declare-fun b_lambda!270067 () Bool)

(assert (=> (not b_lambda!270067) (not d!2212140)))

(declare-fun m!7800856 () Bool)

(assert (=> d!2212140 m!7800856))

(declare-fun m!7800858 () Bool)

(assert (=> d!2212140 m!7800858))

(declare-fun m!7800860 () Bool)

(assert (=> d!2212140 m!7800860))

(declare-fun m!7800862 () Bool)

(assert (=> d!2212140 m!7800862))

(declare-fun m!7800864 () Bool)

(assert (=> b!7073803 m!7800864))

(assert (=> b!7073487 d!2212140))

(assert (=> b!7073510 d!2212094))

(assert (=> b!7073510 d!2212048))

(declare-fun b!7073804 () Bool)

(declare-fun e!4252788 () (Set Context!13296))

(declare-fun call!642884 () (Set Context!13296))

(assert (=> b!7073804 (= e!4252788 (set.union call!642884 (derivationStepZipperUp!2236 (Context!13297 (t!382266 (exprs!7148 lt!2547370))) (h!74806 s!7408))))))

(declare-fun b!7073805 () Bool)

(declare-fun e!4252786 () (Set Context!13296))

(assert (=> b!7073805 (= e!4252788 e!4252786)))

(declare-fun c!1319633 () Bool)

(assert (=> b!7073805 (= c!1319633 (is-Cons!68359 (exprs!7148 lt!2547370)))))

(declare-fun bm!642879 () Bool)

(assert (=> bm!642879 (= call!642884 (derivationStepZipperDown!2286 (h!74807 (exprs!7148 lt!2547370)) (Context!13297 (t!382266 (exprs!7148 lt!2547370))) (h!74806 s!7408)))))

(declare-fun d!2212142 () Bool)

(declare-fun c!1319632 () Bool)

(declare-fun e!4252787 () Bool)

(assert (=> d!2212142 (= c!1319632 e!4252787)))

(declare-fun res!2889214 () Bool)

(assert (=> d!2212142 (=> (not res!2889214) (not e!4252787))))

(assert (=> d!2212142 (= res!2889214 (is-Cons!68359 (exprs!7148 lt!2547370)))))

(assert (=> d!2212142 (= (derivationStepZipperUp!2236 lt!2547370 (h!74806 s!7408)) e!4252788)))

(declare-fun b!7073806 () Bool)

(assert (=> b!7073806 (= e!4252786 (as set.empty (Set Context!13296)))))

(declare-fun b!7073807 () Bool)

(assert (=> b!7073807 (= e!4252786 call!642884)))

(declare-fun b!7073808 () Bool)

(assert (=> b!7073808 (= e!4252787 (nullable!7335 (h!74807 (exprs!7148 lt!2547370))))))

(assert (= (and d!2212142 res!2889214) b!7073808))

(assert (= (and d!2212142 c!1319632) b!7073804))

(assert (= (and d!2212142 (not c!1319632)) b!7073805))

(assert (= (and b!7073805 c!1319633) b!7073807))

(assert (= (and b!7073805 (not c!1319633)) b!7073806))

(assert (= (or b!7073804 b!7073807) bm!642879))

(declare-fun m!7800866 () Bool)

(assert (=> b!7073804 m!7800866))

(declare-fun m!7800868 () Bool)

(assert (=> bm!642879 m!7800868))

(declare-fun m!7800870 () Bool)

(assert (=> b!7073808 m!7800870))

(assert (=> b!7073490 d!2212142))

(declare-fun d!2212144 () Bool)

(declare-fun c!1319634 () Bool)

(assert (=> d!2212144 (= c!1319634 (isEmpty!39899 s!7408))))

(declare-fun e!4252789 () Bool)

(assert (=> d!2212144 (= (matchZipper!3192 lt!2547346 s!7408) e!4252789)))

(declare-fun b!7073809 () Bool)

(assert (=> b!7073809 (= e!4252789 (nullableZipper!2703 lt!2547346))))

(declare-fun b!7073810 () Bool)

(assert (=> b!7073810 (= e!4252789 (matchZipper!3192 (derivationStepZipper!3102 lt!2547346 (head!14411 s!7408)) (tail!13841 s!7408)))))

(assert (= (and d!2212144 c!1319634) b!7073809))

(assert (= (and d!2212144 (not c!1319634)) b!7073810))

(assert (=> d!2212144 m!7800812))

(declare-fun m!7800872 () Bool)

(assert (=> b!7073809 m!7800872))

(assert (=> b!7073810 m!7800816))

(assert (=> b!7073810 m!7800816))

(declare-fun m!7800874 () Bool)

(assert (=> b!7073810 m!7800874))

(assert (=> b!7073810 m!7800820))

(assert (=> b!7073810 m!7800874))

(assert (=> b!7073810 m!7800820))

(declare-fun m!7800876 () Bool)

(assert (=> b!7073810 m!7800876))

(assert (=> start!687262 d!2212144))

(declare-fun bs!1880923 () Bool)

(declare-fun d!2212146 () Bool)

(assert (= bs!1880923 (and d!2212146 b!7073487)))

(declare-fun lambda!426112 () Int)

(assert (=> bs!1880923 (= lambda!426112 lambda!426038)))

(declare-fun bs!1880924 () Bool)

(assert (= bs!1880924 (and d!2212146 d!2212056)))

(assert (=> bs!1880924 (= lambda!426112 lambda!426093)))

(assert (=> d!2212146 true))

(assert (=> d!2212146 (= (appendTo!773 z1!570 ct2!306) (map!15998 z1!570 lambda!426112))))

(declare-fun bs!1880925 () Bool)

(assert (= bs!1880925 d!2212146))

(declare-fun m!7800878 () Bool)

(assert (=> bs!1880925 m!7800878))

(assert (=> start!687262 d!2212146))

(declare-fun bs!1880926 () Bool)

(declare-fun d!2212148 () Bool)

(assert (= bs!1880926 (and d!2212148 b!7073487)))

(declare-fun lambda!426113 () Int)

(assert (=> bs!1880926 (= lambda!426113 lambda!426039)))

(declare-fun bs!1880927 () Bool)

(assert (= bs!1880927 (and d!2212148 d!2212060)))

(assert (=> bs!1880927 (= lambda!426113 lambda!426096)))

(declare-fun bs!1880928 () Bool)

(assert (= bs!1880928 (and d!2212148 d!2212088)))

(assert (=> bs!1880928 (= lambda!426113 lambda!426102)))

(assert (=> d!2212148 (= (inv!86990 ct2!306) (forall!16605 (exprs!7148 ct2!306) lambda!426113))))

(declare-fun bs!1880929 () Bool)

(assert (= bs!1880929 d!2212148))

(declare-fun m!7800880 () Bool)

(assert (=> bs!1880929 m!7800880))

(assert (=> start!687262 d!2212148))

(declare-fun d!2212150 () Bool)

(assert (=> d!2212150 (= (flatMap!2578 lt!2547375 lambda!426040) (choose!54263 lt!2547375 lambda!426040))))

(declare-fun bs!1880930 () Bool)

(assert (= bs!1880930 d!2212150))

(declare-fun m!7800882 () Bool)

(assert (=> bs!1880930 m!7800882))

(assert (=> b!7073509 d!2212150))

(declare-fun call!642885 () (Set Context!13296))

(declare-fun e!4252792 () (Set Context!13296))

(declare-fun b!7073811 () Bool)

(assert (=> b!7073811 (= e!4252792 (set.union call!642885 (derivationStepZipperUp!2236 (Context!13297 (t!382266 (exprs!7148 lt!2547335))) (h!74806 s!7408))))))

(declare-fun b!7073812 () Bool)

(declare-fun e!4252790 () (Set Context!13296))

(assert (=> b!7073812 (= e!4252792 e!4252790)))

(declare-fun c!1319636 () Bool)

(assert (=> b!7073812 (= c!1319636 (is-Cons!68359 (exprs!7148 lt!2547335)))))

(declare-fun bm!642880 () Bool)

(assert (=> bm!642880 (= call!642885 (derivationStepZipperDown!2286 (h!74807 (exprs!7148 lt!2547335)) (Context!13297 (t!382266 (exprs!7148 lt!2547335))) (h!74806 s!7408)))))

(declare-fun d!2212152 () Bool)

(declare-fun c!1319635 () Bool)

(declare-fun e!4252791 () Bool)

(assert (=> d!2212152 (= c!1319635 e!4252791)))

(declare-fun res!2889215 () Bool)

(assert (=> d!2212152 (=> (not res!2889215) (not e!4252791))))

(assert (=> d!2212152 (= res!2889215 (is-Cons!68359 (exprs!7148 lt!2547335)))))

(assert (=> d!2212152 (= (derivationStepZipperUp!2236 lt!2547335 (h!74806 s!7408)) e!4252792)))

(declare-fun b!7073813 () Bool)

(assert (=> b!7073813 (= e!4252790 (as set.empty (Set Context!13296)))))

(declare-fun b!7073814 () Bool)

(assert (=> b!7073814 (= e!4252790 call!642885)))

(declare-fun b!7073815 () Bool)

(assert (=> b!7073815 (= e!4252791 (nullable!7335 (h!74807 (exprs!7148 lt!2547335))))))

(assert (= (and d!2212152 res!2889215) b!7073815))

(assert (= (and d!2212152 c!1319635) b!7073811))

(assert (= (and d!2212152 (not c!1319635)) b!7073812))

(assert (= (and b!7073812 c!1319636) b!7073814))

(assert (= (and b!7073812 (not c!1319636)) b!7073813))

(assert (= (or b!7073811 b!7073814) bm!642880))

(declare-fun m!7800884 () Bool)

(assert (=> b!7073811 m!7800884))

(declare-fun m!7800886 () Bool)

(assert (=> bm!642880 m!7800886))

(assert (=> b!7073815 m!7800348))

(assert (=> b!7073509 d!2212152))

(declare-fun d!2212154 () Bool)

(assert (=> d!2212154 (= (flatMap!2578 lt!2547375 lambda!426040) (dynLambda!27817 lambda!426040 lt!2547335))))

(declare-fun lt!2547609 () Unit!162014)

(assert (=> d!2212154 (= lt!2547609 (choose!54262 lt!2547375 lt!2547335 lambda!426040))))

(assert (=> d!2212154 (= lt!2547375 (set.insert lt!2547335 (as set.empty (Set Context!13296))))))

(assert (=> d!2212154 (= (lemmaFlatMapOnSingletonSet!2087 lt!2547375 lt!2547335 lambda!426040) lt!2547609)))

(declare-fun b_lambda!270069 () Bool)

(assert (=> (not b_lambda!270069) (not d!2212154)))

(declare-fun bs!1880931 () Bool)

(assert (= bs!1880931 d!2212154))

(assert (=> bs!1880931 m!7800356))

(declare-fun m!7800888 () Bool)

(assert (=> bs!1880931 m!7800888))

(declare-fun m!7800890 () Bool)

(assert (=> bs!1880931 m!7800890))

(assert (=> bs!1880931 m!7800360))

(assert (=> b!7073509 d!2212154))

(declare-fun bs!1880932 () Bool)

(declare-fun d!2212156 () Bool)

(assert (= bs!1880932 (and d!2212156 b!7073507)))

(declare-fun lambda!426114 () Int)

(assert (=> bs!1880932 (= lambda!426114 lambda!426040)))

(declare-fun bs!1880933 () Bool)

(assert (= bs!1880933 (and d!2212156 d!2212132)))

(assert (=> bs!1880933 (= lambda!426114 lambda!426111)))

(assert (=> d!2212156 true))

(assert (=> d!2212156 (= (derivationStepZipper!3102 lt!2547375 (h!74806 s!7408)) (flatMap!2578 lt!2547375 lambda!426114))))

(declare-fun bs!1880934 () Bool)

(assert (= bs!1880934 d!2212156))

(declare-fun m!7800892 () Bool)

(assert (=> bs!1880934 m!7800892))

(assert (=> b!7073509 d!2212156))

(assert (=> b!7073489 d!2212048))

(declare-fun e!4252793 () Bool)

(declare-fun d!2212158 () Bool)

(assert (=> d!2212158 (= (matchZipper!3192 (set.union lt!2547339 lt!2547343) (t!382265 s!7408)) e!4252793)))

(declare-fun res!2889216 () Bool)

(assert (=> d!2212158 (=> res!2889216 e!4252793)))

(assert (=> d!2212158 (= res!2889216 (matchZipper!3192 lt!2547339 (t!382265 s!7408)))))

(declare-fun lt!2547610 () Unit!162014)

(assert (=> d!2212158 (= lt!2547610 (choose!54260 lt!2547339 lt!2547343 (t!382265 s!7408)))))

(assert (=> d!2212158 (= (lemmaZipperConcatMatchesSameAsBothZippers!1665 lt!2547339 lt!2547343 (t!382265 s!7408)) lt!2547610)))

(declare-fun b!7073816 () Bool)

(assert (=> b!7073816 (= e!4252793 (matchZipper!3192 lt!2547343 (t!382265 s!7408)))))

(assert (= (and d!2212158 (not res!2889216)) b!7073816))

(declare-fun m!7800894 () Bool)

(assert (=> d!2212158 m!7800894))

(assert (=> d!2212158 m!7800388))

(declare-fun m!7800896 () Bool)

(assert (=> d!2212158 m!7800896))

(assert (=> b!7073816 m!7800338))

(assert (=> b!7073489 d!2212158))

(declare-fun d!2212160 () Bool)

(declare-fun c!1319637 () Bool)

(assert (=> d!2212160 (= c!1319637 (isEmpty!39899 (t!382265 s!7408)))))

(declare-fun e!4252794 () Bool)

(assert (=> d!2212160 (= (matchZipper!3192 lt!2547330 (t!382265 s!7408)) e!4252794)))

(declare-fun b!7073817 () Bool)

(assert (=> b!7073817 (= e!4252794 (nullableZipper!2703 lt!2547330))))

(declare-fun b!7073818 () Bool)

(assert (=> b!7073818 (= e!4252794 (matchZipper!3192 (derivationStepZipper!3102 lt!2547330 (head!14411 (t!382265 s!7408))) (tail!13841 (t!382265 s!7408))))))

(assert (= (and d!2212160 c!1319637) b!7073817))

(assert (= (and d!2212160 (not c!1319637)) b!7073818))

(assert (=> d!2212160 m!7800714))

(declare-fun m!7800898 () Bool)

(assert (=> b!7073817 m!7800898))

(assert (=> b!7073818 m!7800718))

(assert (=> b!7073818 m!7800718))

(declare-fun m!7800900 () Bool)

(assert (=> b!7073818 m!7800900))

(assert (=> b!7073818 m!7800722))

(assert (=> b!7073818 m!7800900))

(assert (=> b!7073818 m!7800722))

(declare-fun m!7800902 () Bool)

(assert (=> b!7073818 m!7800902))

(assert (=> b!7073489 d!2212160))

(declare-fun d!2212162 () Bool)

(declare-fun c!1319638 () Bool)

(assert (=> d!2212162 (= c!1319638 (isEmpty!39899 (t!382265 s!7408)))))

(declare-fun e!4252795 () Bool)

(assert (=> d!2212162 (= (matchZipper!3192 lt!2547339 (t!382265 s!7408)) e!4252795)))

(declare-fun b!7073819 () Bool)

(assert (=> b!7073819 (= e!4252795 (nullableZipper!2703 lt!2547339))))

(declare-fun b!7073820 () Bool)

(assert (=> b!7073820 (= e!4252795 (matchZipper!3192 (derivationStepZipper!3102 lt!2547339 (head!14411 (t!382265 s!7408))) (tail!13841 (t!382265 s!7408))))))

(assert (= (and d!2212162 c!1319638) b!7073819))

(assert (= (and d!2212162 (not c!1319638)) b!7073820))

(assert (=> d!2212162 m!7800714))

(declare-fun m!7800904 () Bool)

(assert (=> b!7073819 m!7800904))

(assert (=> b!7073820 m!7800718))

(assert (=> b!7073820 m!7800718))

(declare-fun m!7800906 () Bool)

(assert (=> b!7073820 m!7800906))

(assert (=> b!7073820 m!7800722))

(assert (=> b!7073820 m!7800906))

(assert (=> b!7073820 m!7800722))

(declare-fun m!7800908 () Bool)

(assert (=> b!7073820 m!7800908))

(assert (=> b!7073489 d!2212162))

(declare-fun d!2212164 () Bool)

(declare-fun c!1319639 () Bool)

(assert (=> d!2212164 (= c!1319639 (isEmpty!39899 (t!382265 s!7408)))))

(declare-fun e!4252796 () Bool)

(assert (=> d!2212164 (= (matchZipper!3192 lt!2547374 (t!382265 s!7408)) e!4252796)))

(declare-fun b!7073821 () Bool)

(assert (=> b!7073821 (= e!4252796 (nullableZipper!2703 lt!2547374))))

(declare-fun b!7073822 () Bool)

(assert (=> b!7073822 (= e!4252796 (matchZipper!3192 (derivationStepZipper!3102 lt!2547374 (head!14411 (t!382265 s!7408))) (tail!13841 (t!382265 s!7408))))))

(assert (= (and d!2212164 c!1319639) b!7073821))

(assert (= (and d!2212164 (not c!1319639)) b!7073822))

(assert (=> d!2212164 m!7800714))

(declare-fun m!7800910 () Bool)

(assert (=> b!7073821 m!7800910))

(assert (=> b!7073822 m!7800718))

(assert (=> b!7073822 m!7800718))

(declare-fun m!7800912 () Bool)

(assert (=> b!7073822 m!7800912))

(assert (=> b!7073822 m!7800722))

(assert (=> b!7073822 m!7800912))

(assert (=> b!7073822 m!7800722))

(declare-fun m!7800914 () Bool)

(assert (=> b!7073822 m!7800914))

(assert (=> b!7073489 d!2212164))

(declare-fun b!7073827 () Bool)

(declare-fun e!4252799 () Bool)

(declare-fun tp!1942495 () Bool)

(assert (=> b!7073827 (= e!4252799 (and tp_is_empty!44529 tp!1942495))))

(assert (=> b!7073506 (= tp!1942477 e!4252799)))

(assert (= (and b!7073506 (is-Cons!68358 (t!382265 s!7408))) b!7073827))

(declare-fun condSetEmpty!50300 () Bool)

(assert (=> setNonEmpty!50294 (= condSetEmpty!50300 (= setRest!50294 (as set.empty (Set Context!13296))))))

(declare-fun setRes!50300 () Bool)

(assert (=> setNonEmpty!50294 (= tp!1942478 setRes!50300)))

(declare-fun setIsEmpty!50300 () Bool)

(assert (=> setIsEmpty!50300 setRes!50300))

(declare-fun e!4252802 () Bool)

(declare-fun setElem!50300 () Context!13296)

(declare-fun tp!1942501 () Bool)

(declare-fun setNonEmpty!50300 () Bool)

(assert (=> setNonEmpty!50300 (= setRes!50300 (and tp!1942501 (inv!86990 setElem!50300) e!4252802))))

(declare-fun setRest!50300 () (Set Context!13296))

(assert (=> setNonEmpty!50300 (= setRest!50294 (set.union (set.insert setElem!50300 (as set.empty (Set Context!13296))) setRest!50300))))

(declare-fun b!7073832 () Bool)

(declare-fun tp!1942500 () Bool)

(assert (=> b!7073832 (= e!4252802 tp!1942500)))

(assert (= (and setNonEmpty!50294 condSetEmpty!50300) setIsEmpty!50300))

(assert (= (and setNonEmpty!50294 (not condSetEmpty!50300)) setNonEmpty!50300))

(assert (= setNonEmpty!50300 b!7073832))

(declare-fun m!7800916 () Bool)

(assert (=> setNonEmpty!50300 m!7800916))

(declare-fun b!7073837 () Bool)

(declare-fun e!4252805 () Bool)

(declare-fun tp!1942506 () Bool)

(declare-fun tp!1942507 () Bool)

(assert (=> b!7073837 (= e!4252805 (and tp!1942506 tp!1942507))))

(assert (=> b!7073488 (= tp!1942479 e!4252805)))

(assert (= (and b!7073488 (is-Cons!68359 (exprs!7148 setElem!50294))) b!7073837))

(declare-fun b!7073838 () Bool)

(declare-fun e!4252806 () Bool)

(declare-fun tp!1942508 () Bool)

(declare-fun tp!1942509 () Bool)

(assert (=> b!7073838 (= e!4252806 (and tp!1942508 tp!1942509))))

(assert (=> b!7073503 (= tp!1942480 e!4252806)))

(assert (= (and b!7073503 (is-Cons!68359 (exprs!7148 ct2!306))) b!7073838))

(declare-fun b_lambda!270071 () Bool)

(assert (= b_lambda!270063 (or b!7073484 b_lambda!270071)))

(declare-fun bs!1880935 () Bool)

(declare-fun d!2212166 () Bool)

(assert (= bs!1880935 (and d!2212166 b!7073484)))

(assert (=> bs!1880935 (= (dynLambda!27816 lambda!426037 lt!2547598) (matchZipper!3192 (set.insert lt!2547598 (as set.empty (Set Context!13296))) s!7408))))

(declare-fun m!7800918 () Bool)

(assert (=> bs!1880935 m!7800918))

(assert (=> bs!1880935 m!7800918))

(declare-fun m!7800920 () Bool)

(assert (=> bs!1880935 m!7800920))

(assert (=> d!2212124 d!2212166))

(declare-fun b_lambda!270073 () Bool)

(assert (= b_lambda!270065 (or b!7073507 b_lambda!270073)))

(declare-fun bs!1880936 () Bool)

(declare-fun d!2212168 () Bool)

(assert (= bs!1880936 (and d!2212168 b!7073507)))

(assert (=> bs!1880936 (= (dynLambda!27817 lambda!426040 lt!2547353) (derivationStepZipperUp!2236 lt!2547353 (h!74806 s!7408)))))

(assert (=> bs!1880936 m!7800382))

(assert (=> d!2212130 d!2212168))

(declare-fun b_lambda!270075 () Bool)

(assert (= b_lambda!270069 (or b!7073507 b_lambda!270075)))

(declare-fun bs!1880937 () Bool)

(declare-fun d!2212170 () Bool)

(assert (= bs!1880937 (and d!2212170 b!7073507)))

(assert (=> bs!1880937 (= (dynLambda!27817 lambda!426040 lt!2547335) (derivationStepZipperUp!2236 lt!2547335 (h!74806 s!7408)))))

(assert (=> bs!1880937 m!7800362))

(assert (=> d!2212154 d!2212170))

(declare-fun b_lambda!270077 () Bool)

(assert (= b_lambda!270067 (or b!7073487 b_lambda!270077)))

(declare-fun bs!1880938 () Bool)

(declare-fun d!2212172 () Bool)

(assert (= bs!1880938 (and d!2212172 b!7073487)))

(declare-fun lt!2547611 () Unit!162014)

(assert (=> bs!1880938 (= lt!2547611 (lemmaConcatPreservesForall!963 (exprs!7148 lt!2547608) (exprs!7148 ct2!306) lambda!426039))))

(assert (=> bs!1880938 (= (dynLambda!27818 lambda!426038 lt!2547608) (Context!13297 (++!15787 (exprs!7148 lt!2547608) (exprs!7148 ct2!306))))))

(declare-fun m!7800922 () Bool)

(assert (=> bs!1880938 m!7800922))

(declare-fun m!7800924 () Bool)

(assert (=> bs!1880938 m!7800924))

(assert (=> d!2212140 d!2212172))

(push 1)

(assert (not d!2212088))

(assert (not d!2212070))

(assert (not bm!642880))

(assert (not b!7073809))

(assert (not d!2212116))

(assert (not b!7073755))

(assert (not d!2212064))

(assert (not d!2212086))

(assert (not b!7073697))

(assert (not b!7073817))

(assert (not b!7073732))

(assert (not b!7073690))

(assert (not bm!642867))

(assert (not bm!642870))

(assert (not b!7073832))

(assert (not d!2212080))

(assert (not d!2212124))

(assert (not d!2212052))

(assert (not b!7073811))

(assert (not setNonEmpty!50300))

(assert (not b!7073788))

(assert (not b!7073679))

(assert (not b!7073724))

(assert (not b!7073837))

(assert (not d!2212130))

(assert (not bm!642874))

(assert (not b!7073703))

(assert (not d!2212134))

(assert (not b!7073795))

(assert (not d!2212054))

(assert (not b!7073770))

(assert (not d!2212160))

(assert (not b!7073759))

(assert (not b!7073827))

(assert (not b!7073816))

(assert (not b_lambda!270075))

(assert (not b!7073691))

(assert (not b!7073808))

(assert (not b!7073723))

(assert (not b!7073822))

(assert (not b!7073711))

(assert (not b!7073769))

(assert (not d!2212146))

(assert (not b!7073710))

(assert (not bs!1880936))

(assert (not b!7073695))

(assert (not b!7073678))

(assert (not b!7073666))

(assert (not d!2212082))

(assert (not d!2212120))

(assert (not bm!642864))

(assert (not b!7073673))

(assert (not b!7073731))

(assert (not d!2212072))

(assert (not d!2212060))

(assert (not bs!1880938))

(assert (not b!7073668))

(assert (not d!2212132))

(assert (not d!2212150))

(assert (not b!7073821))

(assert (not b!7073778))

(assert (not bs!1880937))

(assert (not d!2212156))

(assert (not bm!642868))

(assert (not b!7073838))

(assert (not b!7073820))

(assert (not b_lambda!270071))

(assert (not b!7073773))

(assert (not b!7073810))

(assert (not d!2212138))

(assert (not b!7073797))

(assert tp_is_empty!44529)

(assert (not b!7073709))

(assert (not d!2212158))

(assert (not d!2212048))

(assert (not bm!642879))

(assert (not b!7073728))

(assert (not d!2212090))

(assert (not d!2212164))

(assert (not bm!642877))

(assert (not d!2212112))

(assert (not b!7073727))

(assert (not b!7073640))

(assert (not b!7073700))

(assert (not b!7073713))

(assert (not d!2212140))

(assert (not d!2212096))

(assert (not b!7073671))

(assert (not b!7073733))

(assert (not b!7073774))

(assert (not d!2212154))

(assert (not d!2212092))

(assert (not d!2212118))

(assert (not d!2212108))

(assert (not d!2212128))

(assert (not d!2212144))

(assert (not d!2212110))

(assert (not b!7073798))

(assert (not b!7073780))

(assert (not d!2212078))

(assert (not b!7073693))

(assert (not bs!1880935))

(assert (not b!7073730))

(assert (not b!7073783))

(assert (not b!7073670))

(assert (not d!2212074))

(assert (not bm!642873))

(assert (not d!2212162))

(assert (not d!2212094))

(assert (not d!2212084))

(assert (not b!7073698))

(assert (not d!2212122))

(assert (not b!7073818))

(assert (not b!7073819))

(assert (not b!7073689))

(assert (not b_lambda!270077))

(assert (not b!7073738))

(assert (not b!7073779))

(assert (not d!2212126))

(assert (not d!2212100))

(assert (not b!7073787))

(assert (not b!7073815))

(assert (not b!7073804))

(assert (not b!7073692))

(assert (not b!7073791))

(assert (not b!7073775))

(assert (not d!2212056))

(assert (not d!2212148))

(assert (not b!7073772))

(assert (not b_lambda!270073))

(assert (not d!2212058))

(assert (not b!7073712))

(assert (not d!2212068))

(assert (not d!2212114))

(assert (not bm!642878))

(assert (not b!7073665))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

