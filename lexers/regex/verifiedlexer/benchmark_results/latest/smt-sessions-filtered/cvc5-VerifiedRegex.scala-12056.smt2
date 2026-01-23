; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!676428 () Bool)

(assert start!676428)

(declare-fun b!7017329 () Bool)

(assert (=> b!7017329 true))

(declare-fun b!7017328 () Bool)

(assert (=> b!7017328 true))

(declare-fun b!7017325 () Bool)

(assert (=> b!7017325 true))

(declare-fun b!7017312 () Bool)

(declare-fun res!2864010 () Bool)

(declare-fun e!4218253 () Bool)

(assert (=> b!7017312 (=> res!2864010 e!4218253)))

(declare-datatypes ((C!34986 0))(
  ( (C!34987 (val!27195 Int)) )
))
(declare-datatypes ((Regex!17358 0))(
  ( (ElementMatch!17358 (c!1303875 C!34986)) (Concat!26203 (regOne!35228 Regex!17358) (regTwo!35228 Regex!17358)) (EmptyExpr!17358) (Star!17358 (reg!17687 Regex!17358)) (EmptyLang!17358) (Union!17358 (regOne!35229 Regex!17358) (regTwo!35229 Regex!17358)) )
))
(declare-datatypes ((List!67619 0))(
  ( (Nil!67495) (Cons!67495 (h!73943 Regex!17358) (t!381374 List!67619)) )
))
(declare-datatypes ((Context!12708 0))(
  ( (Context!12709 (exprs!6854 List!67619)) )
))
(declare-fun lt!2509015 () Context!12708)

(declare-fun lt!2509019 () (Set Context!12708))

(assert (=> b!7017312 (= res!2864010 (not (set.member lt!2509015 lt!2509019)))))

(declare-fun setElem!48561 () Context!12708)

(declare-fun tp!1933402 () Bool)

(declare-fun setRes!48561 () Bool)

(declare-fun setNonEmpty!48561 () Bool)

(declare-fun e!4218254 () Bool)

(declare-fun inv!86255 (Context!12708) Bool)

(assert (=> setNonEmpty!48561 (= setRes!48561 (and tp!1933402 (inv!86255 setElem!48561) e!4218254))))

(declare-fun z1!570 () (Set Context!12708))

(declare-fun setRest!48561 () (Set Context!12708))

(assert (=> setNonEmpty!48561 (= z1!570 (set.union (set.insert setElem!48561 (as set.empty (Set Context!12708))) setRest!48561))))

(declare-fun b!7017313 () Bool)

(declare-fun e!4218252 () Bool)

(declare-fun lt!2509007 () Context!12708)

(declare-fun validRegex!8909 (Regex!17358) Bool)

(assert (=> b!7017313 (= e!4218252 (validRegex!8909 (h!73943 (exprs!6854 lt!2509007))))))

(declare-fun b!7017314 () Bool)

(declare-fun e!4218249 () Bool)

(declare-fun e!4218255 () Bool)

(assert (=> b!7017314 (= e!4218249 e!4218255)))

(declare-fun res!2864004 () Bool)

(assert (=> b!7017314 (=> res!2864004 e!4218255)))

(declare-fun nullable!7118 (Regex!17358) Bool)

(assert (=> b!7017314 (= res!2864004 (nullable!7118 (h!73943 (exprs!6854 lt!2509007))))))

(declare-fun lt!2509018 () Context!12708)

(declare-fun lt!2509014 () List!67619)

(assert (=> b!7017314 (= lt!2509018 (Context!12709 lt!2509014))))

(declare-fun tail!13452 (List!67619) List!67619)

(assert (=> b!7017314 (= lt!2509014 (tail!13452 (exprs!6854 lt!2509007)))))

(declare-fun b!7017315 () Bool)

(declare-fun e!4218250 () Bool)

(declare-fun tp_is_empty!43941 () Bool)

(declare-fun tp!1933400 () Bool)

(assert (=> b!7017315 (= e!4218250 (and tp_is_empty!43941 tp!1933400))))

(declare-fun b!7017316 () Bool)

(declare-fun e!4218260 () Bool)

(declare-fun tp!1933403 () Bool)

(assert (=> b!7017316 (= e!4218260 tp!1933403)))

(declare-fun b!7017317 () Bool)

(declare-fun e!4218256 () Bool)

(assert (=> b!7017317 (= e!4218256 e!4218252)))

(declare-fun res!2864006 () Bool)

(assert (=> b!7017317 (=> res!2864006 e!4218252)))

(declare-fun lt!2509026 () (Set Context!12708))

(declare-fun lt!2509024 () (Set Context!12708))

(declare-fun lt!2509017 () (Set Context!12708))

(assert (=> b!7017317 (= res!2864006 (or (not (= lt!2509024 lt!2509026)) (not (= lt!2509024 lt!2509017))))))

(declare-datatypes ((List!67620 0))(
  ( (Nil!67496) (Cons!67496 (h!73944 C!34986) (t!381375 List!67620)) )
))
(declare-fun s!7408 () List!67620)

(declare-fun lt!2509012 () (Set Context!12708))

(declare-fun lambda!410277 () Int)

(declare-fun flatMap!2344 ((Set Context!12708) Int) (Set Context!12708))

(declare-fun derivationStepZipperUp!2008 (Context!12708 C!34986) (Set Context!12708))

(assert (=> b!7017317 (= (flatMap!2344 lt!2509012 lambda!410277) (derivationStepZipperUp!2008 lt!2509007 (h!73944 s!7408)))))

(declare-datatypes ((Unit!161398 0))(
  ( (Unit!161399) )
))
(declare-fun lt!2509023 () Unit!161398)

(declare-fun lemmaFlatMapOnSingletonSet!1859 ((Set Context!12708) Context!12708 Int) Unit!161398)

(assert (=> b!7017317 (= lt!2509023 (lemmaFlatMapOnSingletonSet!1859 lt!2509012 lt!2509007 lambda!410277))))

(assert (=> b!7017317 (= lt!2509026 (derivationStepZipperUp!2008 lt!2509007 (h!73944 s!7408)))))

(declare-fun derivationStepZipper!2838 ((Set Context!12708) C!34986) (Set Context!12708))

(assert (=> b!7017317 (= lt!2509024 (derivationStepZipper!2838 lt!2509012 (h!73944 s!7408)))))

(assert (=> b!7017317 (= lt!2509012 (set.insert lt!2509007 (as set.empty (Set Context!12708))))))

(declare-fun b!7017318 () Bool)

(declare-fun e!4218251 () Bool)

(declare-fun e!4218259 () Bool)

(assert (=> b!7017318 (= e!4218251 e!4218259)))

(declare-fun res!2864011 () Bool)

(assert (=> b!7017318 (=> res!2864011 e!4218259)))

(declare-fun lt!2509031 () (Set Context!12708))

(declare-fun lt!2509020 () (Set Context!12708))

(assert (=> b!7017318 (= res!2864011 (not (= lt!2509031 lt!2509020)))))

(declare-fun lt!2509025 () Context!12708)

(assert (=> b!7017318 (= lt!2509031 (set.insert lt!2509025 (as set.empty (Set Context!12708))))))

(declare-fun ct2!306 () Context!12708)

(declare-fun lambda!410276 () Int)

(declare-fun lt!2509016 () Unit!161398)

(declare-fun lemmaConcatPreservesForall!694 (List!67619 List!67619 Int) Unit!161398)

(assert (=> b!7017318 (= lt!2509016 (lemmaConcatPreservesForall!694 (exprs!6854 lt!2509007) (exprs!6854 ct2!306) lambda!410276))))

(declare-fun b!7017319 () Bool)

(declare-fun tp!1933401 () Bool)

(assert (=> b!7017319 (= e!4218254 tp!1933401)))

(declare-fun b!7017320 () Bool)

(declare-fun res!2864009 () Bool)

(assert (=> b!7017320 (=> res!2864009 e!4218256)))

(declare-datatypes ((tuple2!67998 0))(
  ( (tuple2!67999 (_1!37302 List!67620) (_2!37302 List!67620)) )
))
(declare-fun lt!2509033 () tuple2!67998)

(declare-fun ++!15380 (List!67620 List!67620) List!67620)

(assert (=> b!7017320 (= res!2864009 (not (= (++!15380 (_1!37302 lt!2509033) (_2!37302 lt!2509033)) (t!381375 s!7408))))))

(declare-fun setIsEmpty!48561 () Bool)

(assert (=> setIsEmpty!48561 setRes!48561))

(declare-fun b!7017322 () Bool)

(declare-fun res!2864014 () Bool)

(assert (=> b!7017322 (=> res!2864014 e!4218256)))

(declare-fun lt!2509034 () (Set Context!12708))

(declare-fun matchZipper!2898 ((Set Context!12708) List!67620) Bool)

(assert (=> b!7017322 (= res!2864014 (not (matchZipper!2898 lt!2509034 (_2!37302 lt!2509033))))))

(declare-fun b!7017323 () Bool)

(declare-fun e!4218258 () Bool)

(assert (=> b!7017323 (= e!4218258 e!4218256)))

(declare-fun res!2864005 () Bool)

(assert (=> b!7017323 (=> res!2864005 e!4218256)))

(assert (=> b!7017323 (= res!2864005 (not (matchZipper!2898 lt!2509017 (_1!37302 lt!2509033))))))

(declare-datatypes ((Option!16831 0))(
  ( (None!16830) (Some!16830 (v!53108 tuple2!67998)) )
))
(declare-fun lt!2509028 () Option!16831)

(declare-fun get!23669 (Option!16831) tuple2!67998)

(assert (=> b!7017323 (= lt!2509033 (get!23669 lt!2509028))))

(declare-fun isDefined!13532 (Option!16831) Bool)

(assert (=> b!7017323 (isDefined!13532 lt!2509028)))

(declare-fun findConcatSeparationZippers!347 ((Set Context!12708) (Set Context!12708) List!67620 List!67620 List!67620) Option!16831)

(assert (=> b!7017323 (= lt!2509028 (findConcatSeparationZippers!347 lt!2509017 lt!2509034 Nil!67496 (t!381375 s!7408) (t!381375 s!7408)))))

(assert (=> b!7017323 (= lt!2509034 (set.insert ct2!306 (as set.empty (Set Context!12708))))))

(declare-fun lt!2509010 () Unit!161398)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!347 ((Set Context!12708) Context!12708 List!67620) Unit!161398)

(assert (=> b!7017323 (= lt!2509010 (lemmaConcatZipperMatchesStringThenFindConcatDefined!347 lt!2509017 ct2!306 (t!381375 s!7408)))))

(declare-fun lt!2509032 () (Set Context!12708))

(declare-fun appendTo!479 ((Set Context!12708) Context!12708) (Set Context!12708))

(assert (=> b!7017323 (= lt!2509032 (appendTo!479 lt!2509017 ct2!306))))

(declare-fun derivationStepZipperDown!2076 (Regex!17358 Context!12708 C!34986) (Set Context!12708))

(assert (=> b!7017323 (= lt!2509017 (derivationStepZipperDown!2076 (h!73943 (exprs!6854 lt!2509007)) lt!2509018 (h!73944 s!7408)))))

(declare-fun lt!2509009 () Unit!161398)

(assert (=> b!7017323 (= lt!2509009 (lemmaConcatPreservesForall!694 lt!2509014 (exprs!6854 ct2!306) lambda!410276))))

(declare-fun lt!2509008 () Unit!161398)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!49 (Context!12708 Regex!17358 C!34986 Context!12708) Unit!161398)

(assert (=> b!7017323 (= lt!2509008 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!49 lt!2509018 (h!73943 (exprs!6854 lt!2509007)) (h!73944 s!7408) ct2!306))))

(declare-fun b!7017324 () Bool)

(declare-fun res!2864013 () Bool)

(assert (=> b!7017324 (=> res!2864013 e!4218249)))

(declare-fun isEmpty!39420 (List!67619) Bool)

(assert (=> b!7017324 (= res!2864013 (isEmpty!39420 (exprs!6854 lt!2509007)))))

(assert (=> b!7017325 (= e!4218259 e!4218249)))

(declare-fun res!2864007 () Bool)

(assert (=> b!7017325 (=> res!2864007 e!4218249)))

(declare-fun lt!2509029 () (Set Context!12708))

(assert (=> b!7017325 (= res!2864007 (not (= (derivationStepZipper!2838 lt!2509031 (h!73944 s!7408)) lt!2509029)))))

(assert (=> b!7017325 (= (flatMap!2344 lt!2509031 lambda!410277) (derivationStepZipperUp!2008 lt!2509025 (h!73944 s!7408)))))

(declare-fun lt!2509011 () Unit!161398)

(assert (=> b!7017325 (= lt!2509011 (lemmaFlatMapOnSingletonSet!1859 lt!2509031 lt!2509025 lambda!410277))))

(assert (=> b!7017325 (= lt!2509029 (derivationStepZipperUp!2008 lt!2509025 (h!73944 s!7408)))))

(declare-fun lt!2509027 () Unit!161398)

(assert (=> b!7017325 (= lt!2509027 (lemmaConcatPreservesForall!694 (exprs!6854 lt!2509007) (exprs!6854 ct2!306) lambda!410276))))

(declare-fun b!7017326 () Bool)

(declare-fun res!2864015 () Bool)

(assert (=> b!7017326 (=> res!2864015 e!4218249)))

(assert (=> b!7017326 (= res!2864015 (not (is-Cons!67495 (exprs!6854 lt!2509007))))))

(declare-fun b!7017321 () Bool)

(declare-fun res!2864017 () Bool)

(declare-fun e!4218257 () Bool)

(assert (=> b!7017321 (=> (not res!2864017) (not e!4218257))))

(assert (=> b!7017321 (= res!2864017 (is-Cons!67496 s!7408))))

(declare-fun res!2864018 () Bool)

(assert (=> start!676428 (=> (not res!2864018) (not e!4218257))))

(assert (=> start!676428 (= res!2864018 (matchZipper!2898 lt!2509019 s!7408))))

(assert (=> start!676428 (= lt!2509019 (appendTo!479 z1!570 ct2!306))))

(assert (=> start!676428 e!4218257))

(declare-fun condSetEmpty!48561 () Bool)

(assert (=> start!676428 (= condSetEmpty!48561 (= z1!570 (as set.empty (Set Context!12708))))))

(assert (=> start!676428 setRes!48561))

(assert (=> start!676428 (and (inv!86255 ct2!306) e!4218260)))

(assert (=> start!676428 e!4218250))

(declare-fun b!7017327 () Bool)

(assert (=> b!7017327 (= e!4218255 e!4218258)))

(declare-fun res!2864008 () Bool)

(assert (=> b!7017327 (=> res!2864008 e!4218258)))

(assert (=> b!7017327 (= res!2864008 (not (matchZipper!2898 lt!2509032 (t!381375 s!7408))))))

(declare-fun ++!15381 (List!67619 List!67619) List!67619)

(assert (=> b!7017327 (= lt!2509032 (derivationStepZipperDown!2076 (h!73943 (exprs!6854 lt!2509007)) (Context!12709 (++!15381 lt!2509014 (exprs!6854 ct2!306))) (h!73944 s!7408)))))

(declare-fun lt!2509021 () Unit!161398)

(assert (=> b!7017327 (= lt!2509021 (lemmaConcatPreservesForall!694 lt!2509014 (exprs!6854 ct2!306) lambda!410276))))

(assert (=> b!7017328 (= e!4218253 e!4218251)))

(declare-fun res!2864012 () Bool)

(assert (=> b!7017328 (=> res!2864012 e!4218251)))

(assert (=> b!7017328 (= res!2864012 (or (not (= lt!2509025 lt!2509015)) (not (set.member lt!2509007 z1!570))))))

(assert (=> b!7017328 (= lt!2509025 (Context!12709 (++!15381 (exprs!6854 lt!2509007) (exprs!6854 ct2!306))))))

(declare-fun lt!2509013 () Unit!161398)

(assert (=> b!7017328 (= lt!2509013 (lemmaConcatPreservesForall!694 (exprs!6854 lt!2509007) (exprs!6854 ct2!306) lambda!410276))))

(declare-fun lambda!410275 () Int)

(declare-fun mapPost2!213 ((Set Context!12708) Int Context!12708) Context!12708)

(assert (=> b!7017328 (= lt!2509007 (mapPost2!213 z1!570 lambda!410275 lt!2509015))))

(assert (=> b!7017329 (= e!4218257 (not e!4218253))))

(declare-fun res!2864016 () Bool)

(assert (=> b!7017329 (=> res!2864016 e!4218253)))

(assert (=> b!7017329 (= res!2864016 (not (matchZipper!2898 lt!2509020 s!7408)))))

(assert (=> b!7017329 (= lt!2509020 (set.insert lt!2509015 (as set.empty (Set Context!12708))))))

(declare-fun lambda!410274 () Int)

(declare-fun getWitness!1319 ((Set Context!12708) Int) Context!12708)

(assert (=> b!7017329 (= lt!2509015 (getWitness!1319 lt!2509019 lambda!410274))))

(declare-datatypes ((List!67621 0))(
  ( (Nil!67497) (Cons!67497 (h!73945 Context!12708) (t!381376 List!67621)) )
))
(declare-fun lt!2509030 () List!67621)

(declare-fun exists!3226 (List!67621 Int) Bool)

(assert (=> b!7017329 (exists!3226 lt!2509030 lambda!410274)))

(declare-fun lt!2509022 () Unit!161398)

(declare-fun lemmaZipperMatchesExistsMatchingContext!327 (List!67621 List!67620) Unit!161398)

(assert (=> b!7017329 (= lt!2509022 (lemmaZipperMatchesExistsMatchingContext!327 lt!2509030 s!7408))))

(declare-fun toList!10718 ((Set Context!12708)) List!67621)

(assert (=> b!7017329 (= lt!2509030 (toList!10718 lt!2509019))))

(assert (= (and start!676428 res!2864018) b!7017321))

(assert (= (and b!7017321 res!2864017) b!7017329))

(assert (= (and b!7017329 (not res!2864016)) b!7017312))

(assert (= (and b!7017312 (not res!2864010)) b!7017328))

(assert (= (and b!7017328 (not res!2864012)) b!7017318))

(assert (= (and b!7017318 (not res!2864011)) b!7017325))

(assert (= (and b!7017325 (not res!2864007)) b!7017326))

(assert (= (and b!7017326 (not res!2864015)) b!7017324))

(assert (= (and b!7017324 (not res!2864013)) b!7017314))

(assert (= (and b!7017314 (not res!2864004)) b!7017327))

(assert (= (and b!7017327 (not res!2864008)) b!7017323))

(assert (= (and b!7017323 (not res!2864005)) b!7017322))

(assert (= (and b!7017322 (not res!2864014)) b!7017320))

(assert (= (and b!7017320 (not res!2864009)) b!7017317))

(assert (= (and b!7017317 (not res!2864006)) b!7017313))

(assert (= (and start!676428 condSetEmpty!48561) setIsEmpty!48561))

(assert (= (and start!676428 (not condSetEmpty!48561)) setNonEmpty!48561))

(assert (= setNonEmpty!48561 b!7017319))

(assert (= start!676428 b!7017316))

(assert (= (and start!676428 (is-Cons!67496 s!7408)) b!7017315))

(declare-fun m!7717324 () Bool)

(assert (=> setNonEmpty!48561 m!7717324))

(declare-fun m!7717326 () Bool)

(assert (=> b!7017322 m!7717326))

(declare-fun m!7717328 () Bool)

(assert (=> b!7017329 m!7717328))

(declare-fun m!7717330 () Bool)

(assert (=> b!7017329 m!7717330))

(declare-fun m!7717332 () Bool)

(assert (=> b!7017329 m!7717332))

(declare-fun m!7717334 () Bool)

(assert (=> b!7017329 m!7717334))

(declare-fun m!7717336 () Bool)

(assert (=> b!7017329 m!7717336))

(declare-fun m!7717338 () Bool)

(assert (=> b!7017329 m!7717338))

(declare-fun m!7717340 () Bool)

(assert (=> b!7017324 m!7717340))

(declare-fun m!7717342 () Bool)

(assert (=> b!7017325 m!7717342))

(declare-fun m!7717344 () Bool)

(assert (=> b!7017325 m!7717344))

(declare-fun m!7717346 () Bool)

(assert (=> b!7017325 m!7717346))

(declare-fun m!7717348 () Bool)

(assert (=> b!7017325 m!7717348))

(declare-fun m!7717350 () Bool)

(assert (=> b!7017325 m!7717350))

(declare-fun m!7717352 () Bool)

(assert (=> b!7017313 m!7717352))

(declare-fun m!7717354 () Bool)

(assert (=> b!7017317 m!7717354))

(declare-fun m!7717356 () Bool)

(assert (=> b!7017317 m!7717356))

(declare-fun m!7717358 () Bool)

(assert (=> b!7017317 m!7717358))

(declare-fun m!7717360 () Bool)

(assert (=> b!7017317 m!7717360))

(declare-fun m!7717362 () Bool)

(assert (=> b!7017317 m!7717362))

(declare-fun m!7717364 () Bool)

(assert (=> b!7017320 m!7717364))

(declare-fun m!7717366 () Bool)

(assert (=> b!7017323 m!7717366))

(declare-fun m!7717368 () Bool)

(assert (=> b!7017323 m!7717368))

(declare-fun m!7717370 () Bool)

(assert (=> b!7017323 m!7717370))

(declare-fun m!7717372 () Bool)

(assert (=> b!7017323 m!7717372))

(declare-fun m!7717374 () Bool)

(assert (=> b!7017323 m!7717374))

(declare-fun m!7717376 () Bool)

(assert (=> b!7017323 m!7717376))

(declare-fun m!7717378 () Bool)

(assert (=> b!7017323 m!7717378))

(declare-fun m!7717380 () Bool)

(assert (=> b!7017323 m!7717380))

(declare-fun m!7717382 () Bool)

(assert (=> b!7017323 m!7717382))

(declare-fun m!7717384 () Bool)

(assert (=> b!7017323 m!7717384))

(declare-fun m!7717386 () Bool)

(assert (=> b!7017314 m!7717386))

(declare-fun m!7717388 () Bool)

(assert (=> b!7017314 m!7717388))

(declare-fun m!7717390 () Bool)

(assert (=> b!7017328 m!7717390))

(declare-fun m!7717392 () Bool)

(assert (=> b!7017328 m!7717392))

(assert (=> b!7017328 m!7717344))

(declare-fun m!7717394 () Bool)

(assert (=> b!7017328 m!7717394))

(declare-fun m!7717396 () Bool)

(assert (=> b!7017327 m!7717396))

(declare-fun m!7717398 () Bool)

(assert (=> b!7017327 m!7717398))

(declare-fun m!7717400 () Bool)

(assert (=> b!7017327 m!7717400))

(assert (=> b!7017327 m!7717382))

(declare-fun m!7717402 () Bool)

(assert (=> b!7017318 m!7717402))

(assert (=> b!7017318 m!7717344))

(declare-fun m!7717404 () Bool)

(assert (=> start!676428 m!7717404))

(declare-fun m!7717406 () Bool)

(assert (=> start!676428 m!7717406))

(declare-fun m!7717408 () Bool)

(assert (=> start!676428 m!7717408))

(declare-fun m!7717410 () Bool)

(assert (=> b!7017312 m!7717410))

(push 1)

(assert (not b!7017319))

(assert (not b!7017314))

(assert (not b!7017315))

(assert (not b!7017325))

(assert (not b!7017317))

(assert (not b!7017318))

(assert tp_is_empty!43941)

(assert (not b!7017323))

(assert (not b!7017320))

(assert (not b!7017327))

(assert (not start!676428))

(assert (not b!7017313))

(assert (not b!7017324))

(assert (not b!7017329))

(assert (not setNonEmpty!48561))

(assert (not b!7017322))

(assert (not b!7017316))

(assert (not b!7017328))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2187441 () Bool)

(assert (=> d!2187441 (= (isEmpty!39420 (exprs!6854 lt!2509007)) (is-Nil!67495 (exprs!6854 lt!2509007)))))

(assert (=> b!7017324 d!2187441))

(declare-fun d!2187443 () Bool)

(declare-fun nullableFct!2700 (Regex!17358) Bool)

(assert (=> d!2187443 (= (nullable!7118 (h!73943 (exprs!6854 lt!2509007))) (nullableFct!2700 (h!73943 (exprs!6854 lt!2509007))))))

(declare-fun bs!1867029 () Bool)

(assert (= bs!1867029 d!2187443))

(declare-fun m!7717500 () Bool)

(assert (=> bs!1867029 m!7717500))

(assert (=> b!7017314 d!2187443))

(declare-fun d!2187445 () Bool)

(assert (=> d!2187445 (= (tail!13452 (exprs!6854 lt!2509007)) (t!381374 (exprs!6854 lt!2509007)))))

(assert (=> b!7017314 d!2187445))

(declare-fun bs!1867030 () Bool)

(declare-fun d!2187447 () Bool)

(assert (= bs!1867030 (and d!2187447 b!7017328)))

(declare-fun lambda!410306 () Int)

(assert (=> bs!1867030 (= lambda!410306 lambda!410276)))

(assert (=> d!2187447 (= (derivationStepZipperDown!2076 (h!73943 (exprs!6854 lt!2509007)) (Context!12709 (++!15381 (exprs!6854 lt!2509018) (exprs!6854 ct2!306))) (h!73944 s!7408)) (appendTo!479 (derivationStepZipperDown!2076 (h!73943 (exprs!6854 lt!2509007)) lt!2509018 (h!73944 s!7408)) ct2!306))))

(declare-fun lt!2509126 () Unit!161398)

(assert (=> d!2187447 (= lt!2509126 (lemmaConcatPreservesForall!694 (exprs!6854 lt!2509018) (exprs!6854 ct2!306) lambda!410306))))

(declare-fun lt!2509125 () Unit!161398)

(declare-fun choose!52862 (Context!12708 Regex!17358 C!34986 Context!12708) Unit!161398)

(assert (=> d!2187447 (= lt!2509125 (choose!52862 lt!2509018 (h!73943 (exprs!6854 lt!2509007)) (h!73944 s!7408) ct2!306))))

(assert (=> d!2187447 (validRegex!8909 (h!73943 (exprs!6854 lt!2509007)))))

(assert (=> d!2187447 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!49 lt!2509018 (h!73943 (exprs!6854 lt!2509007)) (h!73944 s!7408) ct2!306) lt!2509125)))

(declare-fun bs!1867031 () Bool)

(assert (= bs!1867031 d!2187447))

(declare-fun m!7717502 () Bool)

(assert (=> bs!1867031 m!7717502))

(assert (=> bs!1867031 m!7717376))

(declare-fun m!7717504 () Bool)

(assert (=> bs!1867031 m!7717504))

(assert (=> bs!1867031 m!7717352))

(declare-fun m!7717506 () Bool)

(assert (=> bs!1867031 m!7717506))

(declare-fun m!7717508 () Bool)

(assert (=> bs!1867031 m!7717508))

(assert (=> bs!1867031 m!7717376))

(declare-fun m!7717510 () Bool)

(assert (=> bs!1867031 m!7717510))

(assert (=> b!7017323 d!2187447))

(declare-fun d!2187449 () Bool)

(assert (=> d!2187449 (isDefined!13532 (findConcatSeparationZippers!347 lt!2509017 (set.insert ct2!306 (as set.empty (Set Context!12708))) Nil!67496 (t!381375 s!7408) (t!381375 s!7408)))))

(declare-fun lt!2509129 () Unit!161398)

(declare-fun choose!52863 ((Set Context!12708) Context!12708 List!67620) Unit!161398)

(assert (=> d!2187449 (= lt!2509129 (choose!52863 lt!2509017 ct2!306 (t!381375 s!7408)))))

(assert (=> d!2187449 (matchZipper!2898 (appendTo!479 lt!2509017 ct2!306) (t!381375 s!7408))))

(assert (=> d!2187449 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!347 lt!2509017 ct2!306 (t!381375 s!7408)) lt!2509129)))

(declare-fun bs!1867032 () Bool)

(assert (= bs!1867032 d!2187449))

(assert (=> bs!1867032 m!7717384))

(assert (=> bs!1867032 m!7717372))

(assert (=> bs!1867032 m!7717372))

(declare-fun m!7717512 () Bool)

(assert (=> bs!1867032 m!7717512))

(declare-fun m!7717514 () Bool)

(assert (=> bs!1867032 m!7717514))

(assert (=> bs!1867032 m!7717512))

(declare-fun m!7717516 () Bool)

(assert (=> bs!1867032 m!7717516))

(assert (=> bs!1867032 m!7717384))

(declare-fun m!7717518 () Bool)

(assert (=> bs!1867032 m!7717518))

(assert (=> b!7017323 d!2187449))

(declare-fun b!7017418 () Bool)

(declare-fun e!4218313 () Bool)

(assert (=> b!7017418 (= e!4218313 (nullable!7118 (regOne!35228 (h!73943 (exprs!6854 lt!2509007)))))))

(declare-fun b!7017419 () Bool)

(declare-fun e!4218314 () (Set Context!12708))

(declare-fun call!637427 () (Set Context!12708))

(assert (=> b!7017419 (= e!4218314 call!637427)))

(declare-fun bm!637420 () Bool)

(declare-fun call!637429 () (Set Context!12708))

(assert (=> bm!637420 (= call!637427 call!637429)))

(declare-fun d!2187451 () Bool)

(declare-fun c!1303902 () Bool)

(assert (=> d!2187451 (= c!1303902 (and (is-ElementMatch!17358 (h!73943 (exprs!6854 lt!2509007))) (= (c!1303875 (h!73943 (exprs!6854 lt!2509007))) (h!73944 s!7408))))))

(declare-fun e!4218310 () (Set Context!12708))

(assert (=> d!2187451 (= (derivationStepZipperDown!2076 (h!73943 (exprs!6854 lt!2509007)) lt!2509018 (h!73944 s!7408)) e!4218310)))

(declare-fun c!1303898 () Bool)

(declare-fun bm!637421 () Bool)

(declare-fun call!637426 () List!67619)

(declare-fun c!1303901 () Bool)

(declare-fun $colon$colon!2547 (List!67619 Regex!17358) List!67619)

(assert (=> bm!637421 (= call!637426 ($colon$colon!2547 (exprs!6854 lt!2509018) (ite (or c!1303898 c!1303901) (regTwo!35228 (h!73943 (exprs!6854 lt!2509007))) (h!73943 (exprs!6854 lt!2509007)))))))

(declare-fun b!7017420 () Bool)

(declare-fun c!1303899 () Bool)

(assert (=> b!7017420 (= c!1303899 (is-Star!17358 (h!73943 (exprs!6854 lt!2509007))))))

(declare-fun e!4218309 () (Set Context!12708))

(assert (=> b!7017420 (= e!4218309 e!4218314)))

(declare-fun bm!637422 () Bool)

(declare-fun call!637428 () List!67619)

(assert (=> bm!637422 (= call!637428 call!637426)))

(declare-fun b!7017421 () Bool)

(assert (=> b!7017421 (= e!4218309 call!637427)))

(declare-fun b!7017422 () Bool)

(declare-fun e!4218312 () (Set Context!12708))

(declare-fun call!637430 () (Set Context!12708))

(assert (=> b!7017422 (= e!4218312 (set.union call!637430 call!637429))))

(declare-fun b!7017423 () Bool)

(declare-fun e!4218311 () (Set Context!12708))

(declare-fun call!637425 () (Set Context!12708))

(assert (=> b!7017423 (= e!4218311 (set.union call!637425 call!637430))))

(declare-fun b!7017424 () Bool)

(assert (=> b!7017424 (= e!4218314 (as set.empty (Set Context!12708)))))

(declare-fun b!7017425 () Bool)

(assert (=> b!7017425 (= e!4218310 (set.insert lt!2509018 (as set.empty (Set Context!12708))))))

(declare-fun b!7017426 () Bool)

(assert (=> b!7017426 (= c!1303898 e!4218313)))

(declare-fun res!2864068 () Bool)

(assert (=> b!7017426 (=> (not res!2864068) (not e!4218313))))

(assert (=> b!7017426 (= res!2864068 (is-Concat!26203 (h!73943 (exprs!6854 lt!2509007))))))

(assert (=> b!7017426 (= e!4218311 e!4218312)))

(declare-fun b!7017427 () Bool)

(assert (=> b!7017427 (= e!4218310 e!4218311)))

(declare-fun c!1303900 () Bool)

(assert (=> b!7017427 (= c!1303900 (is-Union!17358 (h!73943 (exprs!6854 lt!2509007))))))

(declare-fun bm!637423 () Bool)

(assert (=> bm!637423 (= call!637425 (derivationStepZipperDown!2076 (ite c!1303900 (regOne!35229 (h!73943 (exprs!6854 lt!2509007))) (ite c!1303898 (regTwo!35228 (h!73943 (exprs!6854 lt!2509007))) (ite c!1303901 (regOne!35228 (h!73943 (exprs!6854 lt!2509007))) (reg!17687 (h!73943 (exprs!6854 lt!2509007)))))) (ite (or c!1303900 c!1303898) lt!2509018 (Context!12709 call!637428)) (h!73944 s!7408)))))

(declare-fun bm!637424 () Bool)

(assert (=> bm!637424 (= call!637429 call!637425)))

(declare-fun bm!637425 () Bool)

(assert (=> bm!637425 (= call!637430 (derivationStepZipperDown!2076 (ite c!1303900 (regTwo!35229 (h!73943 (exprs!6854 lt!2509007))) (regOne!35228 (h!73943 (exprs!6854 lt!2509007)))) (ite c!1303900 lt!2509018 (Context!12709 call!637426)) (h!73944 s!7408)))))

(declare-fun b!7017428 () Bool)

(assert (=> b!7017428 (= e!4218312 e!4218309)))

(assert (=> b!7017428 (= c!1303901 (is-Concat!26203 (h!73943 (exprs!6854 lt!2509007))))))

(assert (= (and d!2187451 c!1303902) b!7017425))

(assert (= (and d!2187451 (not c!1303902)) b!7017427))

(assert (= (and b!7017427 c!1303900) b!7017423))

(assert (= (and b!7017427 (not c!1303900)) b!7017426))

(assert (= (and b!7017426 res!2864068) b!7017418))

(assert (= (and b!7017426 c!1303898) b!7017422))

(assert (= (and b!7017426 (not c!1303898)) b!7017428))

(assert (= (and b!7017428 c!1303901) b!7017421))

(assert (= (and b!7017428 (not c!1303901)) b!7017420))

(assert (= (and b!7017420 c!1303899) b!7017419))

(assert (= (and b!7017420 (not c!1303899)) b!7017424))

(assert (= (or b!7017421 b!7017419) bm!637422))

(assert (= (or b!7017421 b!7017419) bm!637420))

(assert (= (or b!7017422 bm!637420) bm!637424))

(assert (= (or b!7017422 bm!637422) bm!637421))

(assert (= (or b!7017423 bm!637424) bm!637423))

(assert (= (or b!7017423 b!7017422) bm!637425))

(declare-fun m!7717520 () Bool)

(assert (=> bm!637425 m!7717520))

(declare-fun m!7717522 () Bool)

(assert (=> bm!637423 m!7717522))

(declare-fun m!7717524 () Bool)

(assert (=> bm!637421 m!7717524))

(declare-fun m!7717526 () Bool)

(assert (=> b!7017418 m!7717526))

(declare-fun m!7717528 () Bool)

(assert (=> b!7017425 m!7717528))

(assert (=> b!7017323 d!2187451))

(declare-fun d!2187453 () Bool)

(declare-fun isEmpty!39422 (Option!16831) Bool)

(assert (=> d!2187453 (= (isDefined!13532 lt!2509028) (not (isEmpty!39422 lt!2509028)))))

(declare-fun bs!1867033 () Bool)

(assert (= bs!1867033 d!2187453))

(declare-fun m!7717530 () Bool)

(assert (=> bs!1867033 m!7717530))

(assert (=> b!7017323 d!2187453))

(declare-fun d!2187455 () Bool)

(declare-fun e!4218325 () Bool)

(assert (=> d!2187455 e!4218325))

(declare-fun res!2864079 () Bool)

(assert (=> d!2187455 (=> res!2864079 e!4218325)))

(declare-fun e!4218327 () Bool)

(assert (=> d!2187455 (= res!2864079 e!4218327)))

(declare-fun res!2864080 () Bool)

(assert (=> d!2187455 (=> (not res!2864080) (not e!4218327))))

(declare-fun lt!2509138 () Option!16831)

(assert (=> d!2187455 (= res!2864080 (isDefined!13532 lt!2509138))))

(declare-fun e!4218326 () Option!16831)

(assert (=> d!2187455 (= lt!2509138 e!4218326)))

(declare-fun c!1303908 () Bool)

(declare-fun e!4218328 () Bool)

(assert (=> d!2187455 (= c!1303908 e!4218328)))

(declare-fun res!2864082 () Bool)

(assert (=> d!2187455 (=> (not res!2864082) (not e!4218328))))

(assert (=> d!2187455 (= res!2864082 (matchZipper!2898 lt!2509017 Nil!67496))))

(assert (=> d!2187455 (= (++!15380 Nil!67496 (t!381375 s!7408)) (t!381375 s!7408))))

(assert (=> d!2187455 (= (findConcatSeparationZippers!347 lt!2509017 lt!2509034 Nil!67496 (t!381375 s!7408) (t!381375 s!7408)) lt!2509138)))

(declare-fun b!7017447 () Bool)

(assert (=> b!7017447 (= e!4218328 (matchZipper!2898 lt!2509034 (t!381375 s!7408)))))

(declare-fun b!7017448 () Bool)

(assert (=> b!7017448 (= e!4218325 (not (isDefined!13532 lt!2509138)))))

(declare-fun b!7017449 () Bool)

(declare-fun lt!2509136 () Unit!161398)

(declare-fun lt!2509137 () Unit!161398)

(assert (=> b!7017449 (= lt!2509136 lt!2509137)))

(assert (=> b!7017449 (= (++!15380 (++!15380 Nil!67496 (Cons!67496 (h!73944 (t!381375 s!7408)) Nil!67496)) (t!381375 (t!381375 s!7408))) (t!381375 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2904 (List!67620 C!34986 List!67620 List!67620) Unit!161398)

(assert (=> b!7017449 (= lt!2509137 (lemmaMoveElementToOtherListKeepsConcatEq!2904 Nil!67496 (h!73944 (t!381375 s!7408)) (t!381375 (t!381375 s!7408)) (t!381375 s!7408)))))

(declare-fun e!4218329 () Option!16831)

(assert (=> b!7017449 (= e!4218329 (findConcatSeparationZippers!347 lt!2509017 lt!2509034 (++!15380 Nil!67496 (Cons!67496 (h!73944 (t!381375 s!7408)) Nil!67496)) (t!381375 (t!381375 s!7408)) (t!381375 s!7408)))))

(declare-fun b!7017450 () Bool)

(declare-fun res!2864081 () Bool)

(assert (=> b!7017450 (=> (not res!2864081) (not e!4218327))))

(assert (=> b!7017450 (= res!2864081 (matchZipper!2898 lt!2509034 (_2!37302 (get!23669 lt!2509138))))))

(declare-fun b!7017451 () Bool)

(declare-fun res!2864083 () Bool)

(assert (=> b!7017451 (=> (not res!2864083) (not e!4218327))))

(assert (=> b!7017451 (= res!2864083 (matchZipper!2898 lt!2509017 (_1!37302 (get!23669 lt!2509138))))))

(declare-fun b!7017452 () Bool)

(assert (=> b!7017452 (= e!4218326 e!4218329)))

(declare-fun c!1303907 () Bool)

(assert (=> b!7017452 (= c!1303907 (is-Nil!67496 (t!381375 s!7408)))))

(declare-fun b!7017453 () Bool)

(assert (=> b!7017453 (= e!4218329 None!16830)))

(declare-fun b!7017454 () Bool)

(assert (=> b!7017454 (= e!4218327 (= (++!15380 (_1!37302 (get!23669 lt!2509138)) (_2!37302 (get!23669 lt!2509138))) (t!381375 s!7408)))))

(declare-fun b!7017455 () Bool)

(assert (=> b!7017455 (= e!4218326 (Some!16830 (tuple2!67999 Nil!67496 (t!381375 s!7408))))))

(assert (= (and d!2187455 res!2864082) b!7017447))

(assert (= (and d!2187455 c!1303908) b!7017455))

(assert (= (and d!2187455 (not c!1303908)) b!7017452))

(assert (= (and b!7017452 c!1303907) b!7017453))

(assert (= (and b!7017452 (not c!1303907)) b!7017449))

(assert (= (and d!2187455 res!2864080) b!7017451))

(assert (= (and b!7017451 res!2864083) b!7017450))

(assert (= (and b!7017450 res!2864081) b!7017454))

(assert (= (and d!2187455 (not res!2864079)) b!7017448))

(declare-fun m!7717532 () Bool)

(assert (=> d!2187455 m!7717532))

(declare-fun m!7717534 () Bool)

(assert (=> d!2187455 m!7717534))

(declare-fun m!7717536 () Bool)

(assert (=> d!2187455 m!7717536))

(declare-fun m!7717538 () Bool)

(assert (=> b!7017447 m!7717538))

(declare-fun m!7717540 () Bool)

(assert (=> b!7017451 m!7717540))

(declare-fun m!7717542 () Bool)

(assert (=> b!7017451 m!7717542))

(assert (=> b!7017448 m!7717532))

(assert (=> b!7017454 m!7717540))

(declare-fun m!7717544 () Bool)

(assert (=> b!7017454 m!7717544))

(declare-fun m!7717546 () Bool)

(assert (=> b!7017449 m!7717546))

(assert (=> b!7017449 m!7717546))

(declare-fun m!7717548 () Bool)

(assert (=> b!7017449 m!7717548))

(declare-fun m!7717550 () Bool)

(assert (=> b!7017449 m!7717550))

(assert (=> b!7017449 m!7717546))

(declare-fun m!7717552 () Bool)

(assert (=> b!7017449 m!7717552))

(assert (=> b!7017450 m!7717540))

(declare-fun m!7717554 () Bool)

(assert (=> b!7017450 m!7717554))

(assert (=> b!7017323 d!2187455))

(declare-fun bs!1867034 () Bool)

(declare-fun d!2187457 () Bool)

(assert (= bs!1867034 (and d!2187457 b!7017328)))

(declare-fun lambda!410311 () Int)

(assert (=> bs!1867034 (= lambda!410311 lambda!410275)))

(assert (=> d!2187457 true))

(declare-fun map!15651 ((Set Context!12708) Int) (Set Context!12708))

(assert (=> d!2187457 (= (appendTo!479 lt!2509017 ct2!306) (map!15651 lt!2509017 lambda!410311))))

(declare-fun bs!1867035 () Bool)

(assert (= bs!1867035 d!2187457))

(declare-fun m!7717556 () Bool)

(assert (=> bs!1867035 m!7717556))

(assert (=> b!7017323 d!2187457))

(declare-fun d!2187459 () Bool)

(declare-fun c!1303912 () Bool)

(declare-fun isEmpty!39423 (List!67620) Bool)

(assert (=> d!2187459 (= c!1303912 (isEmpty!39423 (_1!37302 lt!2509033)))))

(declare-fun e!4218332 () Bool)

(assert (=> d!2187459 (= (matchZipper!2898 lt!2509017 (_1!37302 lt!2509033)) e!4218332)))

(declare-fun b!7017460 () Bool)

(declare-fun nullableZipper!2507 ((Set Context!12708)) Bool)

(assert (=> b!7017460 (= e!4218332 (nullableZipper!2507 lt!2509017))))

(declare-fun b!7017461 () Bool)

(declare-fun head!14197 (List!67620) C!34986)

(declare-fun tail!13454 (List!67620) List!67620)

(assert (=> b!7017461 (= e!4218332 (matchZipper!2898 (derivationStepZipper!2838 lt!2509017 (head!14197 (_1!37302 lt!2509033))) (tail!13454 (_1!37302 lt!2509033))))))

(assert (= (and d!2187459 c!1303912) b!7017460))

(assert (= (and d!2187459 (not c!1303912)) b!7017461))

(declare-fun m!7717558 () Bool)

(assert (=> d!2187459 m!7717558))

(declare-fun m!7717560 () Bool)

(assert (=> b!7017460 m!7717560))

(declare-fun m!7717562 () Bool)

(assert (=> b!7017461 m!7717562))

(assert (=> b!7017461 m!7717562))

(declare-fun m!7717564 () Bool)

(assert (=> b!7017461 m!7717564))

(declare-fun m!7717566 () Bool)

(assert (=> b!7017461 m!7717566))

(assert (=> b!7017461 m!7717564))

(assert (=> b!7017461 m!7717566))

(declare-fun m!7717568 () Bool)

(assert (=> b!7017461 m!7717568))

(assert (=> b!7017323 d!2187459))

(declare-fun d!2187463 () Bool)

(assert (=> d!2187463 (= (get!23669 lt!2509028) (v!53108 lt!2509028))))

(assert (=> b!7017323 d!2187463))

(declare-fun d!2187465 () Bool)

(declare-fun forall!16274 (List!67619 Int) Bool)

(assert (=> d!2187465 (forall!16274 (++!15381 lt!2509014 (exprs!6854 ct2!306)) lambda!410276)))

(declare-fun lt!2509143 () Unit!161398)

(declare-fun choose!52864 (List!67619 List!67619 Int) Unit!161398)

(assert (=> d!2187465 (= lt!2509143 (choose!52864 lt!2509014 (exprs!6854 ct2!306) lambda!410276))))

(assert (=> d!2187465 (forall!16274 lt!2509014 lambda!410276)))

(assert (=> d!2187465 (= (lemmaConcatPreservesForall!694 lt!2509014 (exprs!6854 ct2!306) lambda!410276) lt!2509143)))

(declare-fun bs!1867036 () Bool)

(assert (= bs!1867036 d!2187465))

(assert (=> bs!1867036 m!7717398))

(assert (=> bs!1867036 m!7717398))

(declare-fun m!7717570 () Bool)

(assert (=> bs!1867036 m!7717570))

(declare-fun m!7717572 () Bool)

(assert (=> bs!1867036 m!7717572))

(declare-fun m!7717574 () Bool)

(assert (=> bs!1867036 m!7717574))

(assert (=> b!7017323 d!2187465))

(declare-fun b!7017478 () Bool)

(declare-fun e!4218342 () (Set Context!12708))

(declare-fun call!637433 () (Set Context!12708))

(assert (=> b!7017478 (= e!4218342 call!637433)))

(declare-fun b!7017479 () Bool)

(declare-fun e!4218343 () Bool)

(assert (=> b!7017479 (= e!4218343 (nullable!7118 (h!73943 (exprs!6854 lt!2509025))))))

(declare-fun d!2187467 () Bool)

(declare-fun c!1303921 () Bool)

(assert (=> d!2187467 (= c!1303921 e!4218343)))

(declare-fun res!2864086 () Bool)

(assert (=> d!2187467 (=> (not res!2864086) (not e!4218343))))

(assert (=> d!2187467 (= res!2864086 (is-Cons!67495 (exprs!6854 lt!2509025)))))

(declare-fun e!4218344 () (Set Context!12708))

(assert (=> d!2187467 (= (derivationStepZipperUp!2008 lt!2509025 (h!73944 s!7408)) e!4218344)))

(declare-fun b!7017480 () Bool)

(assert (=> b!7017480 (= e!4218344 (set.union call!637433 (derivationStepZipperUp!2008 (Context!12709 (t!381374 (exprs!6854 lt!2509025))) (h!73944 s!7408))))))

(declare-fun b!7017481 () Bool)

(assert (=> b!7017481 (= e!4218342 (as set.empty (Set Context!12708)))))

(declare-fun bm!637428 () Bool)

(assert (=> bm!637428 (= call!637433 (derivationStepZipperDown!2076 (h!73943 (exprs!6854 lt!2509025)) (Context!12709 (t!381374 (exprs!6854 lt!2509025))) (h!73944 s!7408)))))

(declare-fun b!7017482 () Bool)

(assert (=> b!7017482 (= e!4218344 e!4218342)))

(declare-fun c!1303920 () Bool)

(assert (=> b!7017482 (= c!1303920 (is-Cons!67495 (exprs!6854 lt!2509025)))))

(assert (= (and d!2187467 res!2864086) b!7017479))

(assert (= (and d!2187467 c!1303921) b!7017480))

(assert (= (and d!2187467 (not c!1303921)) b!7017482))

(assert (= (and b!7017482 c!1303920) b!7017478))

(assert (= (and b!7017482 (not c!1303920)) b!7017481))

(assert (= (or b!7017480 b!7017478) bm!637428))

(declare-fun m!7717586 () Bool)

(assert (=> b!7017479 m!7717586))

(declare-fun m!7717590 () Bool)

(assert (=> b!7017480 m!7717590))

(declare-fun m!7717592 () Bool)

(assert (=> bm!637428 m!7717592))

(assert (=> b!7017325 d!2187467))

(declare-fun d!2187471 () Bool)

(declare-fun dynLambda!27185 (Int Context!12708) (Set Context!12708))

(assert (=> d!2187471 (= (flatMap!2344 lt!2509031 lambda!410277) (dynLambda!27185 lambda!410277 lt!2509025))))

(declare-fun lt!2509146 () Unit!161398)

(declare-fun choose!52865 ((Set Context!12708) Context!12708 Int) Unit!161398)

(assert (=> d!2187471 (= lt!2509146 (choose!52865 lt!2509031 lt!2509025 lambda!410277))))

(assert (=> d!2187471 (= lt!2509031 (set.insert lt!2509025 (as set.empty (Set Context!12708))))))

(assert (=> d!2187471 (= (lemmaFlatMapOnSingletonSet!1859 lt!2509031 lt!2509025 lambda!410277) lt!2509146)))

(declare-fun b_lambda!264851 () Bool)

(assert (=> (not b_lambda!264851) (not d!2187471)))

(declare-fun bs!1867037 () Bool)

(assert (= bs!1867037 d!2187471))

(assert (=> bs!1867037 m!7717346))

(declare-fun m!7717594 () Bool)

(assert (=> bs!1867037 m!7717594))

(declare-fun m!7717596 () Bool)

(assert (=> bs!1867037 m!7717596))

(assert (=> bs!1867037 m!7717402))

(assert (=> b!7017325 d!2187471))

(declare-fun bs!1867039 () Bool)

(declare-fun d!2187473 () Bool)

(assert (= bs!1867039 (and d!2187473 b!7017325)))

(declare-fun lambda!410314 () Int)

(assert (=> bs!1867039 (= lambda!410314 lambda!410277)))

(assert (=> d!2187473 true))

(assert (=> d!2187473 (= (derivationStepZipper!2838 lt!2509031 (h!73944 s!7408)) (flatMap!2344 lt!2509031 lambda!410314))))

(declare-fun bs!1867040 () Bool)

(assert (= bs!1867040 d!2187473))

(declare-fun m!7717604 () Bool)

(assert (=> bs!1867040 m!7717604))

(assert (=> b!7017325 d!2187473))

(declare-fun d!2187477 () Bool)

(assert (=> d!2187477 (forall!16274 (++!15381 (exprs!6854 lt!2509007) (exprs!6854 ct2!306)) lambda!410276)))

(declare-fun lt!2509150 () Unit!161398)

(assert (=> d!2187477 (= lt!2509150 (choose!52864 (exprs!6854 lt!2509007) (exprs!6854 ct2!306) lambda!410276))))

(assert (=> d!2187477 (forall!16274 (exprs!6854 lt!2509007) lambda!410276)))

(assert (=> d!2187477 (= (lemmaConcatPreservesForall!694 (exprs!6854 lt!2509007) (exprs!6854 ct2!306) lambda!410276) lt!2509150)))

(declare-fun bs!1867041 () Bool)

(assert (= bs!1867041 d!2187477))

(assert (=> bs!1867041 m!7717392))

(assert (=> bs!1867041 m!7717392))

(declare-fun m!7717606 () Bool)

(assert (=> bs!1867041 m!7717606))

(declare-fun m!7717608 () Bool)

(assert (=> bs!1867041 m!7717608))

(declare-fun m!7717610 () Bool)

(assert (=> bs!1867041 m!7717610))

(assert (=> b!7017325 d!2187477))

(declare-fun d!2187479 () Bool)

(declare-fun choose!52866 ((Set Context!12708) Int) (Set Context!12708))

(assert (=> d!2187479 (= (flatMap!2344 lt!2509031 lambda!410277) (choose!52866 lt!2509031 lambda!410277))))

(declare-fun bs!1867043 () Bool)

(assert (= bs!1867043 d!2187479))

(declare-fun m!7717614 () Bool)

(assert (=> bs!1867043 m!7717614))

(assert (=> b!7017325 d!2187479))

(declare-fun b!7017506 () Bool)

(declare-fun e!4218360 () Bool)

(declare-fun call!637441 () Bool)

(assert (=> b!7017506 (= e!4218360 call!637441)))

(declare-fun c!1303929 () Bool)

(declare-fun bm!637435 () Bool)

(declare-fun c!1303930 () Bool)

(declare-fun call!637440 () Bool)

(assert (=> bm!637435 (= call!637440 (validRegex!8909 (ite c!1303930 (reg!17687 (h!73943 (exprs!6854 lt!2509007))) (ite c!1303929 (regOne!35229 (h!73943 (exprs!6854 lt!2509007))) (regOne!35228 (h!73943 (exprs!6854 lt!2509007)))))))))

(declare-fun bm!637436 () Bool)

(assert (=> bm!637436 (= call!637441 (validRegex!8909 (ite c!1303929 (regTwo!35229 (h!73943 (exprs!6854 lt!2509007))) (regTwo!35228 (h!73943 (exprs!6854 lt!2509007))))))))

(declare-fun b!7017507 () Bool)

(declare-fun res!2864097 () Bool)

(declare-fun e!4218361 () Bool)

(assert (=> b!7017507 (=> (not res!2864097) (not e!4218361))))

(declare-fun call!637442 () Bool)

(assert (=> b!7017507 (= res!2864097 call!637442)))

(declare-fun e!4218366 () Bool)

(assert (=> b!7017507 (= e!4218366 e!4218361)))

(declare-fun b!7017508 () Bool)

(declare-fun e!4218362 () Bool)

(assert (=> b!7017508 (= e!4218362 call!637440)))

(declare-fun bm!637437 () Bool)

(assert (=> bm!637437 (= call!637442 call!637440)))

(declare-fun b!7017509 () Bool)

(declare-fun res!2864099 () Bool)

(declare-fun e!4218365 () Bool)

(assert (=> b!7017509 (=> res!2864099 e!4218365)))

(assert (=> b!7017509 (= res!2864099 (not (is-Concat!26203 (h!73943 (exprs!6854 lt!2509007)))))))

(assert (=> b!7017509 (= e!4218366 e!4218365)))

(declare-fun b!7017510 () Bool)

(assert (=> b!7017510 (= e!4218361 call!637441)))

(declare-fun b!7017511 () Bool)

(declare-fun e!4218364 () Bool)

(assert (=> b!7017511 (= e!4218364 e!4218366)))

(assert (=> b!7017511 (= c!1303929 (is-Union!17358 (h!73943 (exprs!6854 lt!2509007))))))

(declare-fun b!7017505 () Bool)

(declare-fun e!4218363 () Bool)

(assert (=> b!7017505 (= e!4218363 e!4218364)))

(assert (=> b!7017505 (= c!1303930 (is-Star!17358 (h!73943 (exprs!6854 lt!2509007))))))

(declare-fun d!2187483 () Bool)

(declare-fun res!2864100 () Bool)

(assert (=> d!2187483 (=> res!2864100 e!4218363)))

(assert (=> d!2187483 (= res!2864100 (is-ElementMatch!17358 (h!73943 (exprs!6854 lt!2509007))))))

(assert (=> d!2187483 (= (validRegex!8909 (h!73943 (exprs!6854 lt!2509007))) e!4218363)))

(declare-fun b!7017512 () Bool)

(assert (=> b!7017512 (= e!4218365 e!4218360)))

(declare-fun res!2864098 () Bool)

(assert (=> b!7017512 (=> (not res!2864098) (not e!4218360))))

(assert (=> b!7017512 (= res!2864098 call!637442)))

(declare-fun b!7017513 () Bool)

(assert (=> b!7017513 (= e!4218364 e!4218362)))

(declare-fun res!2864101 () Bool)

(assert (=> b!7017513 (= res!2864101 (not (nullable!7118 (reg!17687 (h!73943 (exprs!6854 lt!2509007))))))))

(assert (=> b!7017513 (=> (not res!2864101) (not e!4218362))))

(assert (= (and d!2187483 (not res!2864100)) b!7017505))

(assert (= (and b!7017505 c!1303930) b!7017513))

(assert (= (and b!7017505 (not c!1303930)) b!7017511))

(assert (= (and b!7017513 res!2864101) b!7017508))

(assert (= (and b!7017511 c!1303929) b!7017507))

(assert (= (and b!7017511 (not c!1303929)) b!7017509))

(assert (= (and b!7017507 res!2864097) b!7017510))

(assert (= (and b!7017509 (not res!2864099)) b!7017512))

(assert (= (and b!7017512 res!2864098) b!7017506))

(assert (= (or b!7017510 b!7017506) bm!637436))

(assert (= (or b!7017507 b!7017512) bm!637437))

(assert (= (or b!7017508 bm!637437) bm!637435))

(declare-fun m!7717628 () Bool)

(assert (=> bm!637435 m!7717628))

(declare-fun m!7717630 () Bool)

(assert (=> bm!637436 m!7717630))

(declare-fun m!7717632 () Bool)

(assert (=> b!7017513 m!7717632))

(assert (=> b!7017313 d!2187483))

(declare-fun d!2187489 () Bool)

(declare-fun c!1303931 () Bool)

(assert (=> d!2187489 (= c!1303931 (isEmpty!39423 (_2!37302 lt!2509033)))))

(declare-fun e!4218367 () Bool)

(assert (=> d!2187489 (= (matchZipper!2898 lt!2509034 (_2!37302 lt!2509033)) e!4218367)))

(declare-fun b!7017514 () Bool)

(assert (=> b!7017514 (= e!4218367 (nullableZipper!2507 lt!2509034))))

(declare-fun b!7017515 () Bool)

(assert (=> b!7017515 (= e!4218367 (matchZipper!2898 (derivationStepZipper!2838 lt!2509034 (head!14197 (_2!37302 lt!2509033))) (tail!13454 (_2!37302 lt!2509033))))))

(assert (= (and d!2187489 c!1303931) b!7017514))

(assert (= (and d!2187489 (not c!1303931)) b!7017515))

(declare-fun m!7717634 () Bool)

(assert (=> d!2187489 m!7717634))

(declare-fun m!7717636 () Bool)

(assert (=> b!7017514 m!7717636))

(declare-fun m!7717638 () Bool)

(assert (=> b!7017515 m!7717638))

(assert (=> b!7017515 m!7717638))

(declare-fun m!7717640 () Bool)

(assert (=> b!7017515 m!7717640))

(declare-fun m!7717642 () Bool)

(assert (=> b!7017515 m!7717642))

(assert (=> b!7017515 m!7717640))

(assert (=> b!7017515 m!7717642))

(declare-fun m!7717644 () Bool)

(assert (=> b!7017515 m!7717644))

(assert (=> b!7017322 d!2187489))

(declare-fun bs!1867044 () Bool)

(declare-fun d!2187491 () Bool)

(assert (= bs!1867044 (and d!2187491 b!7017328)))

(declare-fun lambda!410317 () Int)

(assert (=> bs!1867044 (= lambda!410317 lambda!410276)))

(declare-fun bs!1867045 () Bool)

(assert (= bs!1867045 (and d!2187491 d!2187447)))

(assert (=> bs!1867045 (= lambda!410317 lambda!410306)))

(assert (=> d!2187491 (= (inv!86255 setElem!48561) (forall!16274 (exprs!6854 setElem!48561) lambda!410317))))

(declare-fun bs!1867046 () Bool)

(assert (= bs!1867046 d!2187491))

(declare-fun m!7717646 () Bool)

(assert (=> bs!1867046 m!7717646))

(assert (=> setNonEmpty!48561 d!2187491))

(declare-fun bs!1867047 () Bool)

(declare-fun d!2187493 () Bool)

(assert (= bs!1867047 (and d!2187493 b!7017329)))

(declare-fun lambda!410320 () Int)

(assert (=> bs!1867047 (not (= lambda!410320 lambda!410274))))

(assert (=> d!2187493 true))

(declare-fun order!28073 () Int)

(declare-fun dynLambda!27186 (Int Int) Int)

(assert (=> d!2187493 (< (dynLambda!27186 order!28073 lambda!410274) (dynLambda!27186 order!28073 lambda!410320))))

(declare-fun forall!16275 (List!67621 Int) Bool)

(assert (=> d!2187493 (= (exists!3226 lt!2509030 lambda!410274) (not (forall!16275 lt!2509030 lambda!410320)))))

(declare-fun bs!1867048 () Bool)

(assert (= bs!1867048 d!2187493))

(declare-fun m!7717648 () Bool)

(assert (=> bs!1867048 m!7717648))

(assert (=> b!7017329 d!2187493))

(declare-fun d!2187495 () Bool)

(declare-fun e!4218382 () Bool)

(assert (=> d!2187495 e!4218382))

(declare-fun res!2864106 () Bool)

(assert (=> d!2187495 (=> (not res!2864106) (not e!4218382))))

(declare-fun lt!2509153 () List!67621)

(declare-fun noDuplicate!2585 (List!67621) Bool)

(assert (=> d!2187495 (= res!2864106 (noDuplicate!2585 lt!2509153))))

(declare-fun choose!52867 ((Set Context!12708)) List!67621)

(assert (=> d!2187495 (= lt!2509153 (choose!52867 lt!2509019))))

(assert (=> d!2187495 (= (toList!10718 lt!2509019) lt!2509153)))

(declare-fun b!7017542 () Bool)

(declare-fun content!13425 (List!67621) (Set Context!12708))

(assert (=> b!7017542 (= e!4218382 (= (content!13425 lt!2509153) lt!2509019))))

(assert (= (and d!2187495 res!2864106) b!7017542))

(declare-fun m!7717650 () Bool)

(assert (=> d!2187495 m!7717650))

(declare-fun m!7717652 () Bool)

(assert (=> d!2187495 m!7717652))

(declare-fun m!7717654 () Bool)

(assert (=> b!7017542 m!7717654))

(assert (=> b!7017329 d!2187495))

(declare-fun bs!1867049 () Bool)

(declare-fun d!2187497 () Bool)

(assert (= bs!1867049 (and d!2187497 b!7017329)))

(declare-fun lambda!410323 () Int)

(assert (=> bs!1867049 (= lambda!410323 lambda!410274)))

(declare-fun bs!1867050 () Bool)

(assert (= bs!1867050 (and d!2187497 d!2187493)))

(assert (=> bs!1867050 (not (= lambda!410323 lambda!410320))))

(assert (=> d!2187497 true))

(assert (=> d!2187497 (exists!3226 lt!2509030 lambda!410323)))

(declare-fun lt!2509156 () Unit!161398)

(declare-fun choose!52868 (List!67621 List!67620) Unit!161398)

(assert (=> d!2187497 (= lt!2509156 (choose!52868 lt!2509030 s!7408))))

(assert (=> d!2187497 (matchZipper!2898 (content!13425 lt!2509030) s!7408)))

(assert (=> d!2187497 (= (lemmaZipperMatchesExistsMatchingContext!327 lt!2509030 s!7408) lt!2509156)))

(declare-fun bs!1867051 () Bool)

(assert (= bs!1867051 d!2187497))

(declare-fun m!7717656 () Bool)

(assert (=> bs!1867051 m!7717656))

(declare-fun m!7717658 () Bool)

(assert (=> bs!1867051 m!7717658))

(declare-fun m!7717660 () Bool)

(assert (=> bs!1867051 m!7717660))

(assert (=> bs!1867051 m!7717660))

(declare-fun m!7717662 () Bool)

(assert (=> bs!1867051 m!7717662))

(assert (=> b!7017329 d!2187497))

(declare-fun d!2187499 () Bool)

(declare-fun c!1303944 () Bool)

(assert (=> d!2187499 (= c!1303944 (isEmpty!39423 s!7408))))

(declare-fun e!4218383 () Bool)

(assert (=> d!2187499 (= (matchZipper!2898 lt!2509020 s!7408) e!4218383)))

(declare-fun b!7017543 () Bool)

(assert (=> b!7017543 (= e!4218383 (nullableZipper!2507 lt!2509020))))

(declare-fun b!7017544 () Bool)

(assert (=> b!7017544 (= e!4218383 (matchZipper!2898 (derivationStepZipper!2838 lt!2509020 (head!14197 s!7408)) (tail!13454 s!7408)))))

(assert (= (and d!2187499 c!1303944) b!7017543))

(assert (= (and d!2187499 (not c!1303944)) b!7017544))

(declare-fun m!7717664 () Bool)

(assert (=> d!2187499 m!7717664))

(declare-fun m!7717666 () Bool)

(assert (=> b!7017543 m!7717666))

(declare-fun m!7717668 () Bool)

(assert (=> b!7017544 m!7717668))

(assert (=> b!7017544 m!7717668))

(declare-fun m!7717670 () Bool)

(assert (=> b!7017544 m!7717670))

(declare-fun m!7717672 () Bool)

(assert (=> b!7017544 m!7717672))

(assert (=> b!7017544 m!7717670))

(assert (=> b!7017544 m!7717672))

(declare-fun m!7717674 () Bool)

(assert (=> b!7017544 m!7717674))

(assert (=> b!7017329 d!2187499))

(declare-fun d!2187501 () Bool)

(declare-fun e!4218392 () Bool)

(assert (=> d!2187501 e!4218392))

(declare-fun res!2864110 () Bool)

(assert (=> d!2187501 (=> (not res!2864110) (not e!4218392))))

(declare-fun lt!2509159 () Context!12708)

(declare-fun dynLambda!27187 (Int Context!12708) Bool)

(assert (=> d!2187501 (= res!2864110 (dynLambda!27187 lambda!410274 lt!2509159))))

(declare-fun getWitness!1321 (List!67621 Int) Context!12708)

(assert (=> d!2187501 (= lt!2509159 (getWitness!1321 (toList!10718 lt!2509019) lambda!410274))))

(declare-fun exists!3228 ((Set Context!12708) Int) Bool)

(assert (=> d!2187501 (exists!3228 lt!2509019 lambda!410274)))

(assert (=> d!2187501 (= (getWitness!1319 lt!2509019 lambda!410274) lt!2509159)))

(declare-fun b!7017558 () Bool)

(assert (=> b!7017558 (= e!4218392 (set.member lt!2509159 lt!2509019))))

(assert (= (and d!2187501 res!2864110) b!7017558))

(declare-fun b_lambda!264853 () Bool)

(assert (=> (not b_lambda!264853) (not d!2187501)))

(declare-fun m!7717680 () Bool)

(assert (=> d!2187501 m!7717680))

(assert (=> d!2187501 m!7717328))

(assert (=> d!2187501 m!7717328))

(declare-fun m!7717684 () Bool)

(assert (=> d!2187501 m!7717684))

(declare-fun m!7717686 () Bool)

(assert (=> d!2187501 m!7717686))

(declare-fun m!7717688 () Bool)

(assert (=> b!7017558 m!7717688))

(assert (=> b!7017329 d!2187501))

(declare-fun b!7017569 () Bool)

(declare-fun res!2864116 () Bool)

(declare-fun e!4218398 () Bool)

(assert (=> b!7017569 (=> (not res!2864116) (not e!4218398))))

(declare-fun lt!2509162 () List!67620)

(declare-fun size!41003 (List!67620) Int)

(assert (=> b!7017569 (= res!2864116 (= (size!41003 lt!2509162) (+ (size!41003 (_1!37302 lt!2509033)) (size!41003 (_2!37302 lt!2509033)))))))

(declare-fun d!2187503 () Bool)

(assert (=> d!2187503 e!4218398))

(declare-fun res!2864115 () Bool)

(assert (=> d!2187503 (=> (not res!2864115) (not e!4218398))))

(declare-fun content!13426 (List!67620) (Set C!34986))

(assert (=> d!2187503 (= res!2864115 (= (content!13426 lt!2509162) (set.union (content!13426 (_1!37302 lt!2509033)) (content!13426 (_2!37302 lt!2509033)))))))

(declare-fun e!4218397 () List!67620)

(assert (=> d!2187503 (= lt!2509162 e!4218397)))

(declare-fun c!1303952 () Bool)

(assert (=> d!2187503 (= c!1303952 (is-Nil!67496 (_1!37302 lt!2509033)))))

(assert (=> d!2187503 (= (++!15380 (_1!37302 lt!2509033) (_2!37302 lt!2509033)) lt!2509162)))

(declare-fun b!7017567 () Bool)

(assert (=> b!7017567 (= e!4218397 (_2!37302 lt!2509033))))

(declare-fun b!7017568 () Bool)

(assert (=> b!7017568 (= e!4218397 (Cons!67496 (h!73944 (_1!37302 lt!2509033)) (++!15380 (t!381375 (_1!37302 lt!2509033)) (_2!37302 lt!2509033))))))

(declare-fun b!7017570 () Bool)

(assert (=> b!7017570 (= e!4218398 (or (not (= (_2!37302 lt!2509033) Nil!67496)) (= lt!2509162 (_1!37302 lt!2509033))))))

(assert (= (and d!2187503 c!1303952) b!7017567))

(assert (= (and d!2187503 (not c!1303952)) b!7017568))

(assert (= (and d!2187503 res!2864115) b!7017569))

(assert (= (and b!7017569 res!2864116) b!7017570))

(declare-fun m!7717694 () Bool)

(assert (=> b!7017569 m!7717694))

(declare-fun m!7717696 () Bool)

(assert (=> b!7017569 m!7717696))

(declare-fun m!7717698 () Bool)

(assert (=> b!7017569 m!7717698))

(declare-fun m!7717700 () Bool)

(assert (=> d!2187503 m!7717700))

(declare-fun m!7717702 () Bool)

(assert (=> d!2187503 m!7717702))

(declare-fun m!7717704 () Bool)

(assert (=> d!2187503 m!7717704))

(declare-fun m!7717706 () Bool)

(assert (=> b!7017568 m!7717706))

(assert (=> b!7017320 d!2187503))

(declare-fun d!2187507 () Bool)

(assert (=> d!2187507 (= (flatMap!2344 lt!2509012 lambda!410277) (choose!52866 lt!2509012 lambda!410277))))

(declare-fun bs!1867052 () Bool)

(assert (= bs!1867052 d!2187507))

(declare-fun m!7717708 () Bool)

(assert (=> bs!1867052 m!7717708))

(assert (=> b!7017317 d!2187507))

(declare-fun b!7017575 () Bool)

(declare-fun e!4218401 () (Set Context!12708))

(declare-fun call!637461 () (Set Context!12708))

(assert (=> b!7017575 (= e!4218401 call!637461)))

(declare-fun b!7017576 () Bool)

(declare-fun e!4218402 () Bool)

(assert (=> b!7017576 (= e!4218402 (nullable!7118 (h!73943 (exprs!6854 lt!2509007))))))

(declare-fun d!2187509 () Bool)

(declare-fun c!1303956 () Bool)

(assert (=> d!2187509 (= c!1303956 e!4218402)))

(declare-fun res!2864117 () Bool)

(assert (=> d!2187509 (=> (not res!2864117) (not e!4218402))))

(assert (=> d!2187509 (= res!2864117 (is-Cons!67495 (exprs!6854 lt!2509007)))))

(declare-fun e!4218403 () (Set Context!12708))

(assert (=> d!2187509 (= (derivationStepZipperUp!2008 lt!2509007 (h!73944 s!7408)) e!4218403)))

(declare-fun b!7017577 () Bool)

(assert (=> b!7017577 (= e!4218403 (set.union call!637461 (derivationStepZipperUp!2008 (Context!12709 (t!381374 (exprs!6854 lt!2509007))) (h!73944 s!7408))))))

(declare-fun b!7017578 () Bool)

(assert (=> b!7017578 (= e!4218401 (as set.empty (Set Context!12708)))))

(declare-fun bm!637456 () Bool)

(assert (=> bm!637456 (= call!637461 (derivationStepZipperDown!2076 (h!73943 (exprs!6854 lt!2509007)) (Context!12709 (t!381374 (exprs!6854 lt!2509007))) (h!73944 s!7408)))))

(declare-fun b!7017579 () Bool)

(assert (=> b!7017579 (= e!4218403 e!4218401)))

(declare-fun c!1303955 () Bool)

(assert (=> b!7017579 (= c!1303955 (is-Cons!67495 (exprs!6854 lt!2509007)))))

(assert (= (and d!2187509 res!2864117) b!7017576))

(assert (= (and d!2187509 c!1303956) b!7017577))

(assert (= (and d!2187509 (not c!1303956)) b!7017579))

(assert (= (and b!7017579 c!1303955) b!7017575))

(assert (= (and b!7017579 (not c!1303955)) b!7017578))

(assert (= (or b!7017577 b!7017575) bm!637456))

(assert (=> b!7017576 m!7717386))

(declare-fun m!7717710 () Bool)

(assert (=> b!7017577 m!7717710))

(declare-fun m!7717712 () Bool)

(assert (=> bm!637456 m!7717712))

(assert (=> b!7017317 d!2187509))

(declare-fun d!2187511 () Bool)

(assert (=> d!2187511 (= (flatMap!2344 lt!2509012 lambda!410277) (dynLambda!27185 lambda!410277 lt!2509007))))

(declare-fun lt!2509165 () Unit!161398)

(assert (=> d!2187511 (= lt!2509165 (choose!52865 lt!2509012 lt!2509007 lambda!410277))))

(assert (=> d!2187511 (= lt!2509012 (set.insert lt!2509007 (as set.empty (Set Context!12708))))))

(assert (=> d!2187511 (= (lemmaFlatMapOnSingletonSet!1859 lt!2509012 lt!2509007 lambda!410277) lt!2509165)))

(declare-fun b_lambda!264855 () Bool)

(assert (=> (not b_lambda!264855) (not d!2187511)))

(declare-fun bs!1867053 () Bool)

(assert (= bs!1867053 d!2187511))

(assert (=> bs!1867053 m!7717354))

(declare-fun m!7717714 () Bool)

(assert (=> bs!1867053 m!7717714))

(declare-fun m!7717716 () Bool)

(assert (=> bs!1867053 m!7717716))

(assert (=> bs!1867053 m!7717358))

(assert (=> b!7017317 d!2187511))

(declare-fun bs!1867054 () Bool)

(declare-fun d!2187513 () Bool)

(assert (= bs!1867054 (and d!2187513 b!7017325)))

(declare-fun lambda!410324 () Int)

(assert (=> bs!1867054 (= lambda!410324 lambda!410277)))

(declare-fun bs!1867055 () Bool)

(assert (= bs!1867055 (and d!2187513 d!2187473)))

(assert (=> bs!1867055 (= lambda!410324 lambda!410314)))

(assert (=> d!2187513 true))

(assert (=> d!2187513 (= (derivationStepZipper!2838 lt!2509012 (h!73944 s!7408)) (flatMap!2344 lt!2509012 lambda!410324))))

(declare-fun bs!1867056 () Bool)

(assert (= bs!1867056 d!2187513))

(declare-fun m!7717718 () Bool)

(assert (=> bs!1867056 m!7717718))

(assert (=> b!7017317 d!2187513))

(declare-fun d!2187515 () Bool)

(declare-fun e!4218414 () Bool)

(assert (=> d!2187515 e!4218414))

(declare-fun res!2864128 () Bool)

(assert (=> d!2187515 (=> (not res!2864128) (not e!4218414))))

(declare-fun lt!2509170 () List!67619)

(declare-fun content!13427 (List!67619) (Set Regex!17358))

(assert (=> d!2187515 (= res!2864128 (= (content!13427 lt!2509170) (set.union (content!13427 (exprs!6854 lt!2509007)) (content!13427 (exprs!6854 ct2!306)))))))

(declare-fun e!4218413 () List!67619)

(assert (=> d!2187515 (= lt!2509170 e!4218413)))

(declare-fun c!1303961 () Bool)

(assert (=> d!2187515 (= c!1303961 (is-Nil!67495 (exprs!6854 lt!2509007)))))

(assert (=> d!2187515 (= (++!15381 (exprs!6854 lt!2509007) (exprs!6854 ct2!306)) lt!2509170)))

(declare-fun b!7017598 () Bool)

(assert (=> b!7017598 (= e!4218413 (exprs!6854 ct2!306))))

(declare-fun b!7017601 () Bool)

(assert (=> b!7017601 (= e!4218414 (or (not (= (exprs!6854 ct2!306) Nil!67495)) (= lt!2509170 (exprs!6854 lt!2509007))))))

(declare-fun b!7017599 () Bool)

(assert (=> b!7017599 (= e!4218413 (Cons!67495 (h!73943 (exprs!6854 lt!2509007)) (++!15381 (t!381374 (exprs!6854 lt!2509007)) (exprs!6854 ct2!306))))))

(declare-fun b!7017600 () Bool)

(declare-fun res!2864129 () Bool)

(assert (=> b!7017600 (=> (not res!2864129) (not e!4218414))))

(declare-fun size!41004 (List!67619) Int)

(assert (=> b!7017600 (= res!2864129 (= (size!41004 lt!2509170) (+ (size!41004 (exprs!6854 lt!2509007)) (size!41004 (exprs!6854 ct2!306)))))))

(assert (= (and d!2187515 c!1303961) b!7017598))

(assert (= (and d!2187515 (not c!1303961)) b!7017599))

(assert (= (and d!2187515 res!2864128) b!7017600))

(assert (= (and b!7017600 res!2864129) b!7017601))

(declare-fun m!7717750 () Bool)

(assert (=> d!2187515 m!7717750))

(declare-fun m!7717752 () Bool)

(assert (=> d!2187515 m!7717752))

(declare-fun m!7717754 () Bool)

(assert (=> d!2187515 m!7717754))

(declare-fun m!7717758 () Bool)

(assert (=> b!7017599 m!7717758))

(declare-fun m!7717760 () Bool)

(assert (=> b!7017600 m!7717760))

(declare-fun m!7717762 () Bool)

(assert (=> b!7017600 m!7717762))

(declare-fun m!7717764 () Bool)

(assert (=> b!7017600 m!7717764))

(assert (=> b!7017328 d!2187515))

(assert (=> b!7017328 d!2187477))

(declare-fun d!2187525 () Bool)

(declare-fun e!4218417 () Bool)

(assert (=> d!2187525 e!4218417))

(declare-fun res!2864132 () Bool)

(assert (=> d!2187525 (=> (not res!2864132) (not e!4218417))))

(declare-fun lt!2509173 () Context!12708)

(declare-fun dynLambda!27188 (Int Context!12708) Context!12708)

(assert (=> d!2187525 (= res!2864132 (= lt!2509015 (dynLambda!27188 lambda!410275 lt!2509173)))))

(declare-fun choose!52869 ((Set Context!12708) Int Context!12708) Context!12708)

(assert (=> d!2187525 (= lt!2509173 (choose!52869 z1!570 lambda!410275 lt!2509015))))

(assert (=> d!2187525 (set.member lt!2509015 (map!15651 z1!570 lambda!410275))))

(assert (=> d!2187525 (= (mapPost2!213 z1!570 lambda!410275 lt!2509015) lt!2509173)))

(declare-fun b!7017605 () Bool)

(assert (=> b!7017605 (= e!4218417 (set.member lt!2509173 z1!570))))

(assert (= (and d!2187525 res!2864132) b!7017605))

(declare-fun b_lambda!264857 () Bool)

(assert (=> (not b_lambda!264857) (not d!2187525)))

(declare-fun m!7717766 () Bool)

(assert (=> d!2187525 m!7717766))

(declare-fun m!7717768 () Bool)

(assert (=> d!2187525 m!7717768))

(declare-fun m!7717770 () Bool)

(assert (=> d!2187525 m!7717770))

(declare-fun m!7717772 () Bool)

(assert (=> d!2187525 m!7717772))

(declare-fun m!7717774 () Bool)

(assert (=> b!7017605 m!7717774))

(assert (=> b!7017328 d!2187525))

(declare-fun d!2187527 () Bool)

(declare-fun c!1303963 () Bool)

(assert (=> d!2187527 (= c!1303963 (isEmpty!39423 s!7408))))

(declare-fun e!4218418 () Bool)

(assert (=> d!2187527 (= (matchZipper!2898 lt!2509019 s!7408) e!4218418)))

(declare-fun b!7017606 () Bool)

(assert (=> b!7017606 (= e!4218418 (nullableZipper!2507 lt!2509019))))

(declare-fun b!7017607 () Bool)

(assert (=> b!7017607 (= e!4218418 (matchZipper!2898 (derivationStepZipper!2838 lt!2509019 (head!14197 s!7408)) (tail!13454 s!7408)))))

(assert (= (and d!2187527 c!1303963) b!7017606))

(assert (= (and d!2187527 (not c!1303963)) b!7017607))

(assert (=> d!2187527 m!7717664))

(declare-fun m!7717776 () Bool)

(assert (=> b!7017606 m!7717776))

(assert (=> b!7017607 m!7717668))

(assert (=> b!7017607 m!7717668))

(declare-fun m!7717778 () Bool)

(assert (=> b!7017607 m!7717778))

(assert (=> b!7017607 m!7717672))

(assert (=> b!7017607 m!7717778))

(assert (=> b!7017607 m!7717672))

(declare-fun m!7717780 () Bool)

(assert (=> b!7017607 m!7717780))

(assert (=> start!676428 d!2187527))

(declare-fun bs!1867058 () Bool)

(declare-fun d!2187529 () Bool)

(assert (= bs!1867058 (and d!2187529 b!7017328)))

(declare-fun lambda!410325 () Int)

(assert (=> bs!1867058 (= lambda!410325 lambda!410275)))

(declare-fun bs!1867059 () Bool)

(assert (= bs!1867059 (and d!2187529 d!2187457)))

(assert (=> bs!1867059 (= lambda!410325 lambda!410311)))

(assert (=> d!2187529 true))

(assert (=> d!2187529 (= (appendTo!479 z1!570 ct2!306) (map!15651 z1!570 lambda!410325))))

(declare-fun bs!1867060 () Bool)

(assert (= bs!1867060 d!2187529))

(declare-fun m!7717782 () Bool)

(assert (=> bs!1867060 m!7717782))

(assert (=> start!676428 d!2187529))

(declare-fun bs!1867061 () Bool)

(declare-fun d!2187531 () Bool)

(assert (= bs!1867061 (and d!2187531 b!7017328)))

(declare-fun lambda!410326 () Int)

(assert (=> bs!1867061 (= lambda!410326 lambda!410276)))

(declare-fun bs!1867062 () Bool)

(assert (= bs!1867062 (and d!2187531 d!2187447)))

(assert (=> bs!1867062 (= lambda!410326 lambda!410306)))

(declare-fun bs!1867063 () Bool)

(assert (= bs!1867063 (and d!2187531 d!2187491)))

(assert (=> bs!1867063 (= lambda!410326 lambda!410317)))

(assert (=> d!2187531 (= (inv!86255 ct2!306) (forall!16274 (exprs!6854 ct2!306) lambda!410326))))

(declare-fun bs!1867064 () Bool)

(assert (= bs!1867064 d!2187531))

(declare-fun m!7717784 () Bool)

(assert (=> bs!1867064 m!7717784))

(assert (=> start!676428 d!2187531))

(assert (=> b!7017318 d!2187477))

(declare-fun d!2187533 () Bool)

(declare-fun c!1303964 () Bool)

(assert (=> d!2187533 (= c!1303964 (isEmpty!39423 (t!381375 s!7408)))))

(declare-fun e!4218419 () Bool)

(assert (=> d!2187533 (= (matchZipper!2898 lt!2509032 (t!381375 s!7408)) e!4218419)))

(declare-fun b!7017608 () Bool)

(assert (=> b!7017608 (= e!4218419 (nullableZipper!2507 lt!2509032))))

(declare-fun b!7017609 () Bool)

(assert (=> b!7017609 (= e!4218419 (matchZipper!2898 (derivationStepZipper!2838 lt!2509032 (head!14197 (t!381375 s!7408))) (tail!13454 (t!381375 s!7408))))))

(assert (= (and d!2187533 c!1303964) b!7017608))

(assert (= (and d!2187533 (not c!1303964)) b!7017609))

(declare-fun m!7717786 () Bool)

(assert (=> d!2187533 m!7717786))

(declare-fun m!7717788 () Bool)

(assert (=> b!7017608 m!7717788))

(declare-fun m!7717790 () Bool)

(assert (=> b!7017609 m!7717790))

(assert (=> b!7017609 m!7717790))

(declare-fun m!7717792 () Bool)

(assert (=> b!7017609 m!7717792))

(declare-fun m!7717794 () Bool)

(assert (=> b!7017609 m!7717794))

(assert (=> b!7017609 m!7717792))

(assert (=> b!7017609 m!7717794))

(declare-fun m!7717796 () Bool)

(assert (=> b!7017609 m!7717796))

(assert (=> b!7017327 d!2187533))

(declare-fun b!7017610 () Bool)

(declare-fun e!4218424 () Bool)

(assert (=> b!7017610 (= e!4218424 (nullable!7118 (regOne!35228 (h!73943 (exprs!6854 lt!2509007)))))))

(declare-fun b!7017611 () Bool)

(declare-fun e!4218425 () (Set Context!12708))

(declare-fun call!637464 () (Set Context!12708))

(assert (=> b!7017611 (= e!4218425 call!637464)))

(declare-fun bm!637457 () Bool)

(declare-fun call!637466 () (Set Context!12708))

(assert (=> bm!637457 (= call!637464 call!637466)))

(declare-fun d!2187535 () Bool)

(declare-fun c!1303969 () Bool)

(assert (=> d!2187535 (= c!1303969 (and (is-ElementMatch!17358 (h!73943 (exprs!6854 lt!2509007))) (= (c!1303875 (h!73943 (exprs!6854 lt!2509007))) (h!73944 s!7408))))))

(declare-fun e!4218421 () (Set Context!12708))

(assert (=> d!2187535 (= (derivationStepZipperDown!2076 (h!73943 (exprs!6854 lt!2509007)) (Context!12709 (++!15381 lt!2509014 (exprs!6854 ct2!306))) (h!73944 s!7408)) e!4218421)))

(declare-fun bm!637458 () Bool)

(declare-fun call!637463 () List!67619)

(declare-fun c!1303968 () Bool)

(declare-fun c!1303965 () Bool)

(assert (=> bm!637458 (= call!637463 ($colon$colon!2547 (exprs!6854 (Context!12709 (++!15381 lt!2509014 (exprs!6854 ct2!306)))) (ite (or c!1303965 c!1303968) (regTwo!35228 (h!73943 (exprs!6854 lt!2509007))) (h!73943 (exprs!6854 lt!2509007)))))))

(declare-fun b!7017612 () Bool)

(declare-fun c!1303966 () Bool)

(assert (=> b!7017612 (= c!1303966 (is-Star!17358 (h!73943 (exprs!6854 lt!2509007))))))

(declare-fun e!4218420 () (Set Context!12708))

(assert (=> b!7017612 (= e!4218420 e!4218425)))

(declare-fun bm!637459 () Bool)

(declare-fun call!637465 () List!67619)

(assert (=> bm!637459 (= call!637465 call!637463)))

(declare-fun b!7017613 () Bool)

(assert (=> b!7017613 (= e!4218420 call!637464)))

(declare-fun b!7017614 () Bool)

(declare-fun e!4218423 () (Set Context!12708))

(declare-fun call!637467 () (Set Context!12708))

(assert (=> b!7017614 (= e!4218423 (set.union call!637467 call!637466))))

(declare-fun b!7017615 () Bool)

(declare-fun e!4218422 () (Set Context!12708))

(declare-fun call!637462 () (Set Context!12708))

(assert (=> b!7017615 (= e!4218422 (set.union call!637462 call!637467))))

(declare-fun b!7017616 () Bool)

(assert (=> b!7017616 (= e!4218425 (as set.empty (Set Context!12708)))))

(declare-fun b!7017617 () Bool)

(assert (=> b!7017617 (= e!4218421 (set.insert (Context!12709 (++!15381 lt!2509014 (exprs!6854 ct2!306))) (as set.empty (Set Context!12708))))))

(declare-fun b!7017618 () Bool)

(assert (=> b!7017618 (= c!1303965 e!4218424)))

(declare-fun res!2864133 () Bool)

(assert (=> b!7017618 (=> (not res!2864133) (not e!4218424))))

(assert (=> b!7017618 (= res!2864133 (is-Concat!26203 (h!73943 (exprs!6854 lt!2509007))))))

(assert (=> b!7017618 (= e!4218422 e!4218423)))

(declare-fun b!7017619 () Bool)

(assert (=> b!7017619 (= e!4218421 e!4218422)))

(declare-fun c!1303967 () Bool)

(assert (=> b!7017619 (= c!1303967 (is-Union!17358 (h!73943 (exprs!6854 lt!2509007))))))

(declare-fun bm!637460 () Bool)

(assert (=> bm!637460 (= call!637462 (derivationStepZipperDown!2076 (ite c!1303967 (regOne!35229 (h!73943 (exprs!6854 lt!2509007))) (ite c!1303965 (regTwo!35228 (h!73943 (exprs!6854 lt!2509007))) (ite c!1303968 (regOne!35228 (h!73943 (exprs!6854 lt!2509007))) (reg!17687 (h!73943 (exprs!6854 lt!2509007)))))) (ite (or c!1303967 c!1303965) (Context!12709 (++!15381 lt!2509014 (exprs!6854 ct2!306))) (Context!12709 call!637465)) (h!73944 s!7408)))))

(declare-fun bm!637461 () Bool)

(assert (=> bm!637461 (= call!637466 call!637462)))

(declare-fun bm!637462 () Bool)

(assert (=> bm!637462 (= call!637467 (derivationStepZipperDown!2076 (ite c!1303967 (regTwo!35229 (h!73943 (exprs!6854 lt!2509007))) (regOne!35228 (h!73943 (exprs!6854 lt!2509007)))) (ite c!1303967 (Context!12709 (++!15381 lt!2509014 (exprs!6854 ct2!306))) (Context!12709 call!637463)) (h!73944 s!7408)))))

(declare-fun b!7017620 () Bool)

(assert (=> b!7017620 (= e!4218423 e!4218420)))

(assert (=> b!7017620 (= c!1303968 (is-Concat!26203 (h!73943 (exprs!6854 lt!2509007))))))

(assert (= (and d!2187535 c!1303969) b!7017617))

(assert (= (and d!2187535 (not c!1303969)) b!7017619))

(assert (= (and b!7017619 c!1303967) b!7017615))

(assert (= (and b!7017619 (not c!1303967)) b!7017618))

(assert (= (and b!7017618 res!2864133) b!7017610))

(assert (= (and b!7017618 c!1303965) b!7017614))

(assert (= (and b!7017618 (not c!1303965)) b!7017620))

(assert (= (and b!7017620 c!1303968) b!7017613))

(assert (= (and b!7017620 (not c!1303968)) b!7017612))

(assert (= (and b!7017612 c!1303966) b!7017611))

(assert (= (and b!7017612 (not c!1303966)) b!7017616))

(assert (= (or b!7017613 b!7017611) bm!637459))

(assert (= (or b!7017613 b!7017611) bm!637457))

(assert (= (or b!7017614 bm!637457) bm!637461))

(assert (= (or b!7017614 bm!637459) bm!637458))

(assert (= (or b!7017615 bm!637461) bm!637460))

(assert (= (or b!7017615 b!7017614) bm!637462))

(declare-fun m!7717798 () Bool)

(assert (=> bm!637462 m!7717798))

(declare-fun m!7717800 () Bool)

(assert (=> bm!637460 m!7717800))

(declare-fun m!7717802 () Bool)

(assert (=> bm!637458 m!7717802))

(assert (=> b!7017610 m!7717526))

(declare-fun m!7717804 () Bool)

(assert (=> b!7017617 m!7717804))

(assert (=> b!7017327 d!2187535))

(declare-fun d!2187537 () Bool)

(declare-fun e!4218427 () Bool)

(assert (=> d!2187537 e!4218427))

(declare-fun res!2864134 () Bool)

(assert (=> d!2187537 (=> (not res!2864134) (not e!4218427))))

(declare-fun lt!2509176 () List!67619)

(assert (=> d!2187537 (= res!2864134 (= (content!13427 lt!2509176) (set.union (content!13427 lt!2509014) (content!13427 (exprs!6854 ct2!306)))))))

(declare-fun e!4218426 () List!67619)

(assert (=> d!2187537 (= lt!2509176 e!4218426)))

(declare-fun c!1303970 () Bool)

(assert (=> d!2187537 (= c!1303970 (is-Nil!67495 lt!2509014))))

(assert (=> d!2187537 (= (++!15381 lt!2509014 (exprs!6854 ct2!306)) lt!2509176)))

(declare-fun b!7017621 () Bool)

(assert (=> b!7017621 (= e!4218426 (exprs!6854 ct2!306))))

(declare-fun b!7017624 () Bool)

(assert (=> b!7017624 (= e!4218427 (or (not (= (exprs!6854 ct2!306) Nil!67495)) (= lt!2509176 lt!2509014)))))

(declare-fun b!7017622 () Bool)

(assert (=> b!7017622 (= e!4218426 (Cons!67495 (h!73943 lt!2509014) (++!15381 (t!381374 lt!2509014) (exprs!6854 ct2!306))))))

(declare-fun b!7017623 () Bool)

(declare-fun res!2864135 () Bool)

(assert (=> b!7017623 (=> (not res!2864135) (not e!4218427))))

(assert (=> b!7017623 (= res!2864135 (= (size!41004 lt!2509176) (+ (size!41004 lt!2509014) (size!41004 (exprs!6854 ct2!306)))))))

(assert (= (and d!2187537 c!1303970) b!7017621))

(assert (= (and d!2187537 (not c!1303970)) b!7017622))

(assert (= (and d!2187537 res!2864134) b!7017623))

(assert (= (and b!7017623 res!2864135) b!7017624))

(declare-fun m!7717806 () Bool)

(assert (=> d!2187537 m!7717806))

(declare-fun m!7717808 () Bool)

(assert (=> d!2187537 m!7717808))

(assert (=> d!2187537 m!7717754))

(declare-fun m!7717810 () Bool)

(assert (=> b!7017622 m!7717810))

(declare-fun m!7717812 () Bool)

(assert (=> b!7017623 m!7717812))

(declare-fun m!7717814 () Bool)

(assert (=> b!7017623 m!7717814))

(assert (=> b!7017623 m!7717764))

(assert (=> b!7017327 d!2187537))

(assert (=> b!7017327 d!2187465))

(declare-fun b!7017629 () Bool)

(declare-fun e!4218430 () Bool)

(declare-fun tp!1933420 () Bool)

(declare-fun tp!1933421 () Bool)

(assert (=> b!7017629 (= e!4218430 (and tp!1933420 tp!1933421))))

(assert (=> b!7017319 (= tp!1933401 e!4218430)))

(assert (= (and b!7017319 (is-Cons!67495 (exprs!6854 setElem!48561))) b!7017629))

(declare-fun b!7017634 () Bool)

(declare-fun e!4218433 () Bool)

(declare-fun tp!1933424 () Bool)

(assert (=> b!7017634 (= e!4218433 (and tp_is_empty!43941 tp!1933424))))

(assert (=> b!7017315 (= tp!1933400 e!4218433)))

(assert (= (and b!7017315 (is-Cons!67496 (t!381375 s!7408))) b!7017634))

(declare-fun b!7017635 () Bool)

(declare-fun e!4218434 () Bool)

(declare-fun tp!1933425 () Bool)

(declare-fun tp!1933426 () Bool)

(assert (=> b!7017635 (= e!4218434 (and tp!1933425 tp!1933426))))

(assert (=> b!7017316 (= tp!1933403 e!4218434)))

(assert (= (and b!7017316 (is-Cons!67495 (exprs!6854 ct2!306))) b!7017635))

(declare-fun condSetEmpty!48567 () Bool)

(assert (=> setNonEmpty!48561 (= condSetEmpty!48567 (= setRest!48561 (as set.empty (Set Context!12708))))))

(declare-fun setRes!48567 () Bool)

(assert (=> setNonEmpty!48561 (= tp!1933402 setRes!48567)))

(declare-fun setIsEmpty!48567 () Bool)

(assert (=> setIsEmpty!48567 setRes!48567))

(declare-fun e!4218437 () Bool)

(declare-fun tp!1933431 () Bool)

(declare-fun setNonEmpty!48567 () Bool)

(declare-fun setElem!48567 () Context!12708)

(assert (=> setNonEmpty!48567 (= setRes!48567 (and tp!1933431 (inv!86255 setElem!48567) e!4218437))))

(declare-fun setRest!48567 () (Set Context!12708))

(assert (=> setNonEmpty!48567 (= setRest!48561 (set.union (set.insert setElem!48567 (as set.empty (Set Context!12708))) setRest!48567))))

(declare-fun b!7017640 () Bool)

(declare-fun tp!1933432 () Bool)

(assert (=> b!7017640 (= e!4218437 tp!1933432)))

(assert (= (and setNonEmpty!48561 condSetEmpty!48567) setIsEmpty!48567))

(assert (= (and setNonEmpty!48561 (not condSetEmpty!48567)) setNonEmpty!48567))

(assert (= setNonEmpty!48567 b!7017640))

(declare-fun m!7717818 () Bool)

(assert (=> setNonEmpty!48567 m!7717818))

(declare-fun b_lambda!264859 () Bool)

(assert (= b_lambda!264853 (or b!7017329 b_lambda!264859)))

(declare-fun bs!1867067 () Bool)

(declare-fun d!2187541 () Bool)

(assert (= bs!1867067 (and d!2187541 b!7017329)))

(assert (=> bs!1867067 (= (dynLambda!27187 lambda!410274 lt!2509159) (matchZipper!2898 (set.insert lt!2509159 (as set.empty (Set Context!12708))) s!7408))))

(declare-fun m!7717820 () Bool)

(assert (=> bs!1867067 m!7717820))

(assert (=> bs!1867067 m!7717820))

(declare-fun m!7717822 () Bool)

(assert (=> bs!1867067 m!7717822))

(assert (=> d!2187501 d!2187541))

(declare-fun b_lambda!264861 () Bool)

(assert (= b_lambda!264855 (or b!7017325 b_lambda!264861)))

(declare-fun bs!1867068 () Bool)

(declare-fun d!2187543 () Bool)

(assert (= bs!1867068 (and d!2187543 b!7017325)))

(assert (=> bs!1867068 (= (dynLambda!27185 lambda!410277 lt!2509007) (derivationStepZipperUp!2008 lt!2509007 (h!73944 s!7408)))))

(assert (=> bs!1867068 m!7717356))

(assert (=> d!2187511 d!2187543))

(declare-fun b_lambda!264863 () Bool)

(assert (= b_lambda!264857 (or b!7017328 b_lambda!264863)))

(declare-fun bs!1867069 () Bool)

(declare-fun d!2187545 () Bool)

(assert (= bs!1867069 (and d!2187545 b!7017328)))

(declare-fun lt!2509177 () Unit!161398)

(assert (=> bs!1867069 (= lt!2509177 (lemmaConcatPreservesForall!694 (exprs!6854 lt!2509173) (exprs!6854 ct2!306) lambda!410276))))

(assert (=> bs!1867069 (= (dynLambda!27188 lambda!410275 lt!2509173) (Context!12709 (++!15381 (exprs!6854 lt!2509173) (exprs!6854 ct2!306))))))

(declare-fun m!7717824 () Bool)

(assert (=> bs!1867069 m!7717824))

(declare-fun m!7717826 () Bool)

(assert (=> bs!1867069 m!7717826))

(assert (=> d!2187525 d!2187545))

(declare-fun b_lambda!264865 () Bool)

(assert (= b_lambda!264851 (or b!7017325 b_lambda!264865)))

(declare-fun bs!1867070 () Bool)

(declare-fun d!2187547 () Bool)

(assert (= bs!1867070 (and d!2187547 b!7017325)))

(assert (=> bs!1867070 (= (dynLambda!27185 lambda!410277 lt!2509025) (derivationStepZipperUp!2008 lt!2509025 (h!73944 s!7408)))))

(assert (=> bs!1867070 m!7717348))

(assert (=> d!2187471 d!2187547))

(push 1)

(assert (not d!2187491))

(assert (not d!2187479))

(assert (not bm!637423))

(assert (not d!2187507))

(assert (not d!2187513))

(assert (not b!7017640))

(assert (not b!7017451))

(assert (not d!2187449))

(assert (not b!7017454))

(assert (not d!2187511))

(assert (not bm!637421))

(assert (not d!2187493))

(assert (not bm!637425))

(assert (not bm!637460))

(assert (not b!7017634))

(assert (not b!7017542))

(assert (not b!7017447))

(assert (not d!2187473))

(assert (not d!2187533))

(assert (not b!7017513))

(assert (not b!7017576))

(assert (not d!2187525))

(assert (not b!7017635))

(assert (not b!7017629))

(assert (not b!7017461))

(assert (not d!2187457))

(assert (not b!7017600))

(assert (not bm!637456))

(assert (not b!7017577))

(assert (not d!2187529))

(assert (not d!2187503))

(assert (not d!2187465))

(assert (not d!2187501))

(assert (not b!7017623))

(assert (not bs!1867068))

(assert (not d!2187495))

(assert (not b!7017543))

(assert (not b_lambda!264861))

(assert (not b!7017610))

(assert (not d!2187459))

(assert (not b!7017515))

(assert (not d!2187447))

(assert (not bs!1867069))

(assert (not bs!1867070))

(assert (not d!2187443))

(assert (not b_lambda!264859))

(assert (not bm!637436))

(assert (not bs!1867067))

(assert (not b!7017514))

(assert (not b!7017418))

(assert (not b!7017607))

(assert (not b!7017599))

(assert (not d!2187537))

(assert (not bm!637428))

(assert (not b!7017479))

(assert (not b!7017568))

(assert (not b!7017544))

(assert (not d!2187477))

(assert (not b_lambda!264865))

(assert (not bm!637462))

(assert (not setNonEmpty!48567))

(assert (not d!2187527))

(assert (not d!2187489))

(assert (not d!2187531))

(assert (not b!7017450))

(assert tp_is_empty!43941)

(assert (not b!7017480))

(assert (not b!7017448))

(assert (not d!2187515))

(assert (not bm!637435))

(assert (not d!2187471))

(assert (not d!2187497))

(assert (not d!2187453))

(assert (not b!7017569))

(assert (not b!7017608))

(assert (not d!2187499))

(assert (not b!7017609))

(assert (not b_lambda!264863))

(assert (not b!7017606))

(assert (not bm!637458))

(assert (not b!7017622))

(assert (not b!7017449))

(assert (not b!7017460))

(assert (not d!2187455))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

