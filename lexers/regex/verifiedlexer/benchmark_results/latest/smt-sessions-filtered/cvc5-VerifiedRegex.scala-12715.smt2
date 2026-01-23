; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!702964 () Bool)

(assert start!702964)

(declare-fun b!7238267 () Bool)

(assert (=> b!7238267 true))

(declare-fun b!7238269 () Bool)

(assert (=> b!7238269 true))

(declare-fun b!7238260 () Bool)

(declare-fun e!4339543 () Bool)

(declare-datatypes ((C!37350 0))(
  ( (C!37351 (val!28623 Int)) )
))
(declare-datatypes ((Regex!18538 0))(
  ( (ElementMatch!18538 (c!1343731 C!37350)) (Concat!27383 (regOne!37588 Regex!18538) (regTwo!37588 Regex!18538)) (EmptyExpr!18538) (Star!18538 (reg!18867 Regex!18538)) (EmptyLang!18538) (Union!18538 (regOne!37589 Regex!18538) (regTwo!37589 Regex!18538)) )
))
(declare-datatypes ((List!70222 0))(
  ( (Nil!70098) (Cons!70098 (h!76546 Regex!18538) (t!384273 List!70222)) )
))
(declare-datatypes ((Context!14956 0))(
  ( (Context!14957 (exprs!7978 List!70222)) )
))
(declare-fun lt!2577430 () (Set Context!14956))

(declare-datatypes ((List!70223 0))(
  ( (Nil!70099) (Cons!70099 (h!76547 C!37350) (t!384274 List!70223)) )
))
(declare-fun s1!1971 () List!70223)

(declare-fun matchZipper!3448 ((Set Context!14956) List!70223) Bool)

(assert (=> b!7238260 (= e!4339543 (matchZipper!3448 lt!2577430 (t!384274 s1!1971)))))

(declare-fun b!7238261 () Bool)

(declare-fun e!4339548 () Bool)

(declare-fun tp_is_empty!46541 () Bool)

(declare-fun tp!2034900 () Bool)

(assert (=> b!7238261 (= e!4339548 (and tp_is_empty!46541 tp!2034900))))

(declare-fun res!2936455 () Bool)

(declare-fun e!4339551 () Bool)

(assert (=> start!702964 (=> (not res!2936455) (not e!4339551))))

(declare-fun lt!2577454 () (Set Context!14956))

(assert (=> start!702964 (= res!2936455 (matchZipper!3448 lt!2577454 s1!1971))))

(declare-fun ct1!232 () Context!14956)

(assert (=> start!702964 (= lt!2577454 (set.insert ct1!232 (as set.empty (Set Context!14956))))))

(assert (=> start!702964 e!4339551))

(declare-fun e!4339550 () Bool)

(declare-fun inv!89356 (Context!14956) Bool)

(assert (=> start!702964 (and (inv!89356 ct1!232) e!4339550)))

(assert (=> start!702964 e!4339548))

(declare-fun e!4339542 () Bool)

(assert (=> start!702964 e!4339542))

(declare-fun ct2!328 () Context!14956)

(declare-fun e!4339544 () Bool)

(assert (=> start!702964 (and (inv!89356 ct2!328) e!4339544)))

(declare-fun b!7238262 () Bool)

(declare-fun tp!2034898 () Bool)

(assert (=> b!7238262 (= e!4339544 tp!2034898)))

(declare-fun b!7238263 () Bool)

(declare-fun tp!2034897 () Bool)

(assert (=> b!7238263 (= e!4339542 (and tp_is_empty!46541 tp!2034897))))

(declare-fun b!7238264 () Bool)

(declare-datatypes ((Unit!163626 0))(
  ( (Unit!163627) )
))
(declare-fun e!4339549 () Unit!163626)

(declare-fun Unit!163628 () Unit!163626)

(assert (=> b!7238264 (= e!4339549 Unit!163628)))

(declare-fun lambda!440986 () Int)

(declare-fun lt!2577437 () Unit!163626)

(declare-fun lemmaConcatPreservesForall!1347 (List!70222 List!70222 Int) Unit!163626)

(assert (=> b!7238264 (= lt!2577437 (lemmaConcatPreservesForall!1347 (exprs!7978 ct1!232) (exprs!7978 ct2!328) lambda!440986))))

(declare-fun lt!2577455 () Context!14956)

(declare-fun derivationStepZipperUp!2412 (Context!14956 C!37350) (Set Context!14956))

(assert (=> b!7238264 (= lt!2577430 (derivationStepZipperUp!2412 lt!2577455 (h!76547 s1!1971)))))

(declare-fun lt!2577429 () Unit!163626)

(declare-fun lt!2577435 () (Set Context!14956))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1685 ((Set Context!14956) (Set Context!14956) List!70223) Unit!163626)

(assert (=> b!7238264 (= lt!2577429 (lemmaZipperConcatMatchesSameAsBothZippers!1685 lt!2577435 lt!2577430 (t!384274 s1!1971)))))

(declare-fun res!2936447 () Bool)

(assert (=> b!7238264 (= res!2936447 (matchZipper!3448 lt!2577435 (t!384274 s1!1971)))))

(assert (=> b!7238264 (=> res!2936447 e!4339543)))

(assert (=> b!7238264 (= (matchZipper!3448 (set.union lt!2577435 lt!2577430) (t!384274 s1!1971)) e!4339543)))

(declare-fun lt!2577447 () Unit!163626)

(assert (=> b!7238264 (= lt!2577447 (lemmaConcatPreservesForall!1347 (exprs!7978 ct1!232) (exprs!7978 ct2!328) lambda!440986))))

(declare-fun lt!2577432 () (Set Context!14956))

(declare-fun lt!2577441 () Context!14956)

(assert (=> b!7238264 (= lt!2577432 (derivationStepZipperUp!2412 lt!2577441 (h!76547 s1!1971)))))

(declare-fun lt!2577451 () (Set Context!14956))

(declare-fun lt!2577457 () Unit!163626)

(declare-fun lt!2577433 () List!70223)

(assert (=> b!7238264 (= lt!2577457 (lemmaZipperConcatMatchesSameAsBothZippers!1685 lt!2577451 lt!2577432 lt!2577433))))

(declare-fun res!2936456 () Bool)

(assert (=> b!7238264 (= res!2936456 (matchZipper!3448 lt!2577451 lt!2577433))))

(declare-fun e!4339554 () Bool)

(assert (=> b!7238264 (=> res!2936456 e!4339554)))

(assert (=> b!7238264 (= (matchZipper!3448 (set.union lt!2577451 lt!2577432) lt!2577433) e!4339554)))

(declare-fun b!7238265 () Bool)

(declare-fun e!4339541 () Bool)

(assert (=> b!7238265 (= e!4339551 e!4339541)))

(declare-fun res!2936448 () Bool)

(assert (=> b!7238265 (=> (not res!2936448) (not e!4339541))))

(assert (=> b!7238265 (= res!2936448 (and (not (is-Nil!70098 (exprs!7978 ct1!232))) (is-Cons!70099 s1!1971)))))

(declare-fun lt!2577439 () (Set Context!14956))

(declare-fun lt!2577431 () Context!14956)

(assert (=> b!7238265 (= lt!2577439 (set.insert lt!2577431 (as set.empty (Set Context!14956))))))

(declare-fun lt!2577427 () List!70222)

(assert (=> b!7238265 (= lt!2577431 (Context!14957 lt!2577427))))

(declare-fun ++!16376 (List!70222 List!70222) List!70222)

(assert (=> b!7238265 (= lt!2577427 (++!16376 (exprs!7978 ct1!232) (exprs!7978 ct2!328)))))

(declare-fun lt!2577450 () Unit!163626)

(assert (=> b!7238265 (= lt!2577450 (lemmaConcatPreservesForall!1347 (exprs!7978 ct1!232) (exprs!7978 ct2!328) lambda!440986))))

(declare-fun b!7238266 () Bool)

(declare-fun e!4339545 () Bool)

(declare-fun forall!17375 (List!70222 Int) Bool)

(assert (=> b!7238266 (= e!4339545 (forall!17375 (exprs!7978 ct2!328) lambda!440986))))

(declare-fun e!4339552 () Bool)

(declare-fun e!4339547 () Bool)

(assert (=> b!7238267 (= e!4339552 (not e!4339547))))

(declare-fun res!2936454 () Bool)

(assert (=> b!7238267 (=> res!2936454 e!4339547)))

(declare-fun lt!2577434 () (Set Context!14956))

(declare-fun lambda!440987 () Int)

(declare-fun exists!4219 ((Set Context!14956) Int) Bool)

(assert (=> b!7238267 (= res!2936454 (not (exists!4219 lt!2577434 lambda!440987)))))

(declare-datatypes ((List!70224 0))(
  ( (Nil!70100) (Cons!70100 (h!76548 Context!14956) (t!384275 List!70224)) )
))
(declare-fun lt!2577446 () List!70224)

(declare-fun exists!4220 (List!70224 Int) Bool)

(assert (=> b!7238267 (exists!4220 lt!2577446 lambda!440987)))

(declare-fun lt!2577438 () Unit!163626)

(declare-fun lemmaZipperMatchesExistsMatchingContext!681 (List!70224 List!70223) Unit!163626)

(assert (=> b!7238267 (= lt!2577438 (lemmaZipperMatchesExistsMatchingContext!681 lt!2577446 (t!384274 s1!1971)))))

(declare-fun toList!11395 ((Set Context!14956)) List!70224)

(assert (=> b!7238267 (= lt!2577446 (toList!11395 lt!2577434))))

(declare-fun b!7238268 () Bool)

(declare-fun res!2936452 () Bool)

(assert (=> b!7238268 (=> (not res!2936452) (not e!4339551))))

(declare-fun s2!1849 () List!70223)

(assert (=> b!7238268 (= res!2936452 (matchZipper!3448 (set.insert ct2!328 (as set.empty (Set Context!14956))) s2!1849))))

(declare-fun e!4339553 () Bool)

(assert (=> b!7238269 (= e!4339553 e!4339545)))

(declare-fun res!2936449 () Bool)

(assert (=> b!7238269 (=> res!2936449 e!4339545)))

(declare-fun lt!2577461 () Context!14956)

(assert (=> b!7238269 (= res!2936449 (not (forall!17375 (exprs!7978 lt!2577461) lambda!440986)))))

(declare-fun lt!2577436 () Context!14956)

(declare-fun lt!2577460 () (Set Context!14956))

(assert (=> b!7238269 (set.member lt!2577436 lt!2577460)))

(declare-fun lt!2577456 () Unit!163626)

(assert (=> b!7238269 (= lt!2577456 (lemmaConcatPreservesForall!1347 (exprs!7978 ct1!232) (exprs!7978 ct2!328) lambda!440986))))

(declare-fun lt!2577459 () Unit!163626)

(assert (=> b!7238269 (= lt!2577459 (lemmaConcatPreservesForall!1347 (exprs!7978 lt!2577461) (exprs!7978 ct2!328) lambda!440986))))

(declare-fun lt!2577443 () Unit!163626)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!3 (Context!14956 Context!14956 Context!14956 C!37350) Unit!163626)

(assert (=> b!7238269 (= lt!2577443 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!3 ct1!232 ct2!328 lt!2577461 (h!76547 s1!1971)))))

(declare-fun tail!14186 (List!70223) List!70223)

(declare-fun ++!16377 (List!70223 List!70223) List!70223)

(assert (=> b!7238269 (= (tail!14186 (++!16377 s1!1971 s2!1849)) lt!2577433)))

(declare-fun lt!2577448 () Unit!163626)

(assert (=> b!7238269 (= lt!2577448 e!4339549)))

(declare-fun c!1343730 () Bool)

(declare-fun nullable!7851 (Regex!18538) Bool)

(assert (=> b!7238269 (= c!1343730 (nullable!7851 (h!76546 (exprs!7978 ct1!232))))))

(declare-fun lambda!440988 () Int)

(declare-fun flatMap!2742 ((Set Context!14956) Int) (Set Context!14956))

(assert (=> b!7238269 (= (flatMap!2742 lt!2577439 lambda!440988) (derivationStepZipperUp!2412 lt!2577431 (h!76547 s1!1971)))))

(declare-fun lt!2577445 () Unit!163626)

(declare-fun lemmaFlatMapOnSingletonSet!2169 ((Set Context!14956) Context!14956 Int) Unit!163626)

(assert (=> b!7238269 (= lt!2577445 (lemmaFlatMapOnSingletonSet!2169 lt!2577439 lt!2577431 lambda!440988))))

(declare-fun lt!2577442 () Unit!163626)

(assert (=> b!7238269 (= lt!2577442 (lemmaConcatPreservesForall!1347 (exprs!7978 ct1!232) (exprs!7978 ct2!328) lambda!440986))))

(assert (=> b!7238269 (= (flatMap!2742 lt!2577454 lambda!440988) (derivationStepZipperUp!2412 ct1!232 (h!76547 s1!1971)))))

(declare-fun lt!2577458 () Unit!163626)

(assert (=> b!7238269 (= lt!2577458 (lemmaFlatMapOnSingletonSet!2169 lt!2577454 ct1!232 lambda!440988))))

(declare-fun derivationStepZipperDown!2582 (Regex!18538 Context!14956 C!37350) (Set Context!14956))

(assert (=> b!7238269 (= lt!2577451 (derivationStepZipperDown!2582 (h!76546 (exprs!7978 ct1!232)) lt!2577441 (h!76547 s1!1971)))))

(declare-fun tail!14187 (List!70222) List!70222)

(assert (=> b!7238269 (= lt!2577441 (Context!14957 (tail!14187 lt!2577427)))))

(declare-fun b!7238270 () Bool)

(assert (=> b!7238270 (= e!4339541 e!4339552)))

(declare-fun res!2936450 () Bool)

(assert (=> b!7238270 (=> (not res!2936450) (not e!4339552))))

(assert (=> b!7238270 (= res!2936450 (matchZipper!3448 lt!2577434 (t!384274 s1!1971)))))

(declare-fun derivationStepZipper!3330 ((Set Context!14956) C!37350) (Set Context!14956))

(assert (=> b!7238270 (= lt!2577434 (derivationStepZipper!3330 lt!2577454 (h!76547 s1!1971)))))

(declare-fun b!7238271 () Bool)

(declare-fun e!4339546 () Bool)

(assert (=> b!7238271 (= e!4339547 e!4339546)))

(declare-fun res!2936451 () Bool)

(assert (=> b!7238271 (=> res!2936451 e!4339546)))

(declare-fun isEmpty!40397 (List!70222) Bool)

(assert (=> b!7238271 (= res!2936451 (isEmpty!40397 (exprs!7978 ct1!232)))))

(declare-fun lt!2577440 () (Set Context!14956))

(assert (=> b!7238271 (= lt!2577440 (derivationStepZipperUp!2412 ct1!232 (h!76547 s1!1971)))))

(declare-fun lt!2577428 () Unit!163626)

(assert (=> b!7238271 (= lt!2577428 (lemmaConcatPreservesForall!1347 (exprs!7978 lt!2577461) (exprs!7978 ct2!328) lambda!440986))))

(assert (=> b!7238271 (matchZipper!3448 (set.insert lt!2577436 (as set.empty (Set Context!14956))) lt!2577433)))

(assert (=> b!7238271 (= lt!2577433 (++!16377 (t!384274 s1!1971) s2!1849))))

(assert (=> b!7238271 (= lt!2577436 (Context!14957 (++!16376 (exprs!7978 lt!2577461) (exprs!7978 ct2!328))))))

(declare-fun lt!2577452 () Unit!163626)

(assert (=> b!7238271 (= lt!2577452 (lemmaConcatPreservesForall!1347 (exprs!7978 lt!2577461) (exprs!7978 ct2!328) lambda!440986))))

(declare-fun lt!2577444 () Unit!163626)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!329 (Context!14956 Context!14956 List!70223 List!70223) Unit!163626)

(assert (=> b!7238271 (= lt!2577444 (lemmaConcatenateContextMatchesConcatOfStrings!329 lt!2577461 ct2!328 (t!384274 s1!1971) s2!1849))))

(declare-fun getWitness!2081 ((Set Context!14956) Int) Context!14956)

(assert (=> b!7238271 (= lt!2577461 (getWitness!2081 lt!2577434 lambda!440987))))

(declare-fun b!7238272 () Bool)

(declare-fun tp!2034899 () Bool)

(assert (=> b!7238272 (= e!4339550 tp!2034899)))

(declare-fun b!7238273 () Bool)

(assert (=> b!7238273 (= e!4339546 e!4339553)))

(declare-fun res!2936453 () Bool)

(assert (=> b!7238273 (=> res!2936453 e!4339553)))

(assert (=> b!7238273 (= res!2936453 (isEmpty!40397 lt!2577427))))

(declare-fun lt!2577453 () Unit!163626)

(assert (=> b!7238273 (= lt!2577453 (lemmaConcatPreservesForall!1347 (exprs!7978 ct1!232) (exprs!7978 ct2!328) lambda!440986))))

(assert (=> b!7238273 (= lt!2577460 (derivationStepZipperUp!2412 lt!2577431 (h!76547 s1!1971)))))

(declare-fun lt!2577449 () Unit!163626)

(assert (=> b!7238273 (= lt!2577449 (lemmaConcatPreservesForall!1347 (exprs!7978 ct1!232) (exprs!7978 ct2!328) lambda!440986))))

(assert (=> b!7238273 (= lt!2577435 (derivationStepZipperDown!2582 (h!76546 (exprs!7978 ct1!232)) lt!2577455 (h!76547 s1!1971)))))

(assert (=> b!7238273 (= lt!2577455 (Context!14957 (tail!14187 (exprs!7978 ct1!232))))))

(declare-fun b!7238274 () Bool)

(assert (=> b!7238274 (= e!4339554 (matchZipper!3448 lt!2577432 lt!2577433))))

(declare-fun b!7238275 () Bool)

(declare-fun Unit!163629 () Unit!163626)

(assert (=> b!7238275 (= e!4339549 Unit!163629)))

(assert (= (and start!702964 res!2936455) b!7238268))

(assert (= (and b!7238268 res!2936452) b!7238265))

(assert (= (and b!7238265 res!2936448) b!7238270))

(assert (= (and b!7238270 res!2936450) b!7238267))

(assert (= (and b!7238267 (not res!2936454)) b!7238271))

(assert (= (and b!7238271 (not res!2936451)) b!7238273))

(assert (= (and b!7238273 (not res!2936453)) b!7238269))

(assert (= (and b!7238269 c!1343730) b!7238264))

(assert (= (and b!7238269 (not c!1343730)) b!7238275))

(assert (= (and b!7238264 (not res!2936447)) b!7238260))

(assert (= (and b!7238264 (not res!2936456)) b!7238274))

(assert (= (and b!7238269 (not res!2936449)) b!7238266))

(assert (= start!702964 b!7238272))

(assert (= (and start!702964 (is-Cons!70099 s1!1971)) b!7238261))

(assert (= (and start!702964 (is-Cons!70099 s2!1849)) b!7238263))

(assert (= start!702964 b!7238262))

(declare-fun m!7910256 () Bool)

(assert (=> b!7238269 m!7910256))

(declare-fun m!7910258 () Bool)

(assert (=> b!7238269 m!7910258))

(declare-fun m!7910260 () Bool)

(assert (=> b!7238269 m!7910260))

(declare-fun m!7910262 () Bool)

(assert (=> b!7238269 m!7910262))

(declare-fun m!7910264 () Bool)

(assert (=> b!7238269 m!7910264))

(declare-fun m!7910266 () Bool)

(assert (=> b!7238269 m!7910266))

(assert (=> b!7238269 m!7910256))

(declare-fun m!7910268 () Bool)

(assert (=> b!7238269 m!7910268))

(declare-fun m!7910270 () Bool)

(assert (=> b!7238269 m!7910270))

(declare-fun m!7910272 () Bool)

(assert (=> b!7238269 m!7910272))

(declare-fun m!7910274 () Bool)

(assert (=> b!7238269 m!7910274))

(declare-fun m!7910276 () Bool)

(assert (=> b!7238269 m!7910276))

(declare-fun m!7910278 () Bool)

(assert (=> b!7238269 m!7910278))

(declare-fun m!7910280 () Bool)

(assert (=> b!7238269 m!7910280))

(assert (=> b!7238269 m!7910266))

(declare-fun m!7910282 () Bool)

(assert (=> b!7238269 m!7910282))

(declare-fun m!7910284 () Bool)

(assert (=> b!7238269 m!7910284))

(declare-fun m!7910286 () Bool)

(assert (=> b!7238269 m!7910286))

(declare-fun m!7910288 () Bool)

(assert (=> b!7238266 m!7910288))

(declare-fun m!7910290 () Bool)

(assert (=> b!7238271 m!7910290))

(declare-fun m!7910292 () Bool)

(assert (=> b!7238271 m!7910292))

(declare-fun m!7910294 () Bool)

(assert (=> b!7238271 m!7910294))

(assert (=> b!7238271 m!7910290))

(declare-fun m!7910296 () Bool)

(assert (=> b!7238271 m!7910296))

(declare-fun m!7910298 () Bool)

(assert (=> b!7238271 m!7910298))

(assert (=> b!7238271 m!7910276))

(declare-fun m!7910300 () Bool)

(assert (=> b!7238271 m!7910300))

(assert (=> b!7238271 m!7910276))

(assert (=> b!7238271 m!7910264))

(declare-fun m!7910302 () Bool)

(assert (=> b!7238271 m!7910302))

(declare-fun m!7910304 () Bool)

(assert (=> b!7238265 m!7910304))

(declare-fun m!7910306 () Bool)

(assert (=> b!7238265 m!7910306))

(assert (=> b!7238265 m!7910256))

(declare-fun m!7910308 () Bool)

(assert (=> b!7238260 m!7910308))

(assert (=> b!7238273 m!7910256))

(assert (=> b!7238273 m!7910260))

(declare-fun m!7910310 () Bool)

(assert (=> b!7238273 m!7910310))

(declare-fun m!7910312 () Bool)

(assert (=> b!7238273 m!7910312))

(assert (=> b!7238273 m!7910256))

(declare-fun m!7910314 () Bool)

(assert (=> b!7238273 m!7910314))

(declare-fun m!7910316 () Bool)

(assert (=> b!7238264 m!7910316))

(assert (=> b!7238264 m!7910256))

(assert (=> b!7238264 m!7910256))

(declare-fun m!7910318 () Bool)

(assert (=> b!7238264 m!7910318))

(declare-fun m!7910320 () Bool)

(assert (=> b!7238264 m!7910320))

(declare-fun m!7910322 () Bool)

(assert (=> b!7238264 m!7910322))

(declare-fun m!7910324 () Bool)

(assert (=> b!7238264 m!7910324))

(declare-fun m!7910326 () Bool)

(assert (=> b!7238264 m!7910326))

(declare-fun m!7910328 () Bool)

(assert (=> b!7238264 m!7910328))

(declare-fun m!7910330 () Bool)

(assert (=> b!7238264 m!7910330))

(declare-fun m!7910332 () Bool)

(assert (=> b!7238267 m!7910332))

(declare-fun m!7910334 () Bool)

(assert (=> b!7238267 m!7910334))

(declare-fun m!7910336 () Bool)

(assert (=> b!7238267 m!7910336))

(declare-fun m!7910338 () Bool)

(assert (=> b!7238267 m!7910338))

(declare-fun m!7910340 () Bool)

(assert (=> b!7238268 m!7910340))

(assert (=> b!7238268 m!7910340))

(declare-fun m!7910342 () Bool)

(assert (=> b!7238268 m!7910342))

(declare-fun m!7910344 () Bool)

(assert (=> b!7238270 m!7910344))

(declare-fun m!7910346 () Bool)

(assert (=> b!7238270 m!7910346))

(declare-fun m!7910348 () Bool)

(assert (=> b!7238274 m!7910348))

(declare-fun m!7910350 () Bool)

(assert (=> start!702964 m!7910350))

(declare-fun m!7910352 () Bool)

(assert (=> start!702964 m!7910352))

(declare-fun m!7910354 () Bool)

(assert (=> start!702964 m!7910354))

(declare-fun m!7910356 () Bool)

(assert (=> start!702964 m!7910356))

(push 1)

(assert (not b!7238273))

(assert (not b!7238260))

(assert (not b!7238261))

(assert (not b!7238265))

(assert (not b!7238262))

(assert (not b!7238269))

(assert (not start!702964))

(assert (not b!7238270))

(assert (not b!7238268))

(assert (not b!7238272))

(assert (not b!7238271))

(assert (not b!7238264))

(assert (not b!7238274))

(assert (not b!7238267))

(assert (not b!7238266))

(assert (not b!7238263))

(assert tp_is_empty!46541)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2248482 () Bool)

(declare-fun c!1343748 () Bool)

(declare-fun isEmpty!40399 (List!70223) Bool)

(assert (=> d!2248482 (= c!1343748 (isEmpty!40399 (t!384274 s1!1971)))))

(declare-fun e!4339599 () Bool)

(assert (=> d!2248482 (= (matchZipper!3448 lt!2577430 (t!384274 s1!1971)) e!4339599)))

(declare-fun b!7238336 () Bool)

(declare-fun nullableZipper!2838 ((Set Context!14956)) Bool)

(assert (=> b!7238336 (= e!4339599 (nullableZipper!2838 lt!2577430))))

(declare-fun b!7238337 () Bool)

(declare-fun head!14827 (List!70223) C!37350)

(assert (=> b!7238337 (= e!4339599 (matchZipper!3448 (derivationStepZipper!3330 lt!2577430 (head!14827 (t!384274 s1!1971))) (tail!14186 (t!384274 s1!1971))))))

(assert (= (and d!2248482 c!1343748) b!7238336))

(assert (= (and d!2248482 (not c!1343748)) b!7238337))

(declare-fun m!7910460 () Bool)

(assert (=> d!2248482 m!7910460))

(declare-fun m!7910462 () Bool)

(assert (=> b!7238336 m!7910462))

(declare-fun m!7910464 () Bool)

(assert (=> b!7238337 m!7910464))

(assert (=> b!7238337 m!7910464))

(declare-fun m!7910466 () Bool)

(assert (=> b!7238337 m!7910466))

(declare-fun m!7910468 () Bool)

(assert (=> b!7238337 m!7910468))

(assert (=> b!7238337 m!7910466))

(assert (=> b!7238337 m!7910468))

(declare-fun m!7910470 () Bool)

(assert (=> b!7238337 m!7910470))

(assert (=> b!7238260 d!2248482))

(declare-fun d!2248484 () Bool)

(declare-fun e!4339602 () Bool)

(assert (=> d!2248484 e!4339602))

(declare-fun res!2936489 () Bool)

(assert (=> d!2248484 (=> (not res!2936489) (not e!4339602))))

(declare-fun lt!2577569 () Context!14956)

(declare-fun dynLambda!28607 (Int Context!14956) Bool)

(assert (=> d!2248484 (= res!2936489 (dynLambda!28607 lambda!440987 lt!2577569))))

(declare-fun getWitness!2083 (List!70224 Int) Context!14956)

(assert (=> d!2248484 (= lt!2577569 (getWitness!2083 (toList!11395 lt!2577434) lambda!440987))))

(assert (=> d!2248484 (exists!4219 lt!2577434 lambda!440987)))

(assert (=> d!2248484 (= (getWitness!2081 lt!2577434 lambda!440987) lt!2577569)))

(declare-fun b!7238340 () Bool)

(assert (=> b!7238340 (= e!4339602 (set.member lt!2577569 lt!2577434))))

(assert (= (and d!2248484 res!2936489) b!7238340))

(declare-fun b_lambda!277595 () Bool)

(assert (=> (not b_lambda!277595) (not d!2248484)))

(declare-fun m!7910472 () Bool)

(assert (=> d!2248484 m!7910472))

(assert (=> d!2248484 m!7910338))

(assert (=> d!2248484 m!7910338))

(declare-fun m!7910474 () Bool)

(assert (=> d!2248484 m!7910474))

(assert (=> d!2248484 m!7910332))

(declare-fun m!7910476 () Bool)

(assert (=> b!7238340 m!7910476))

(assert (=> b!7238271 d!2248484))

(declare-fun e!4339607 () Bool)

(declare-fun b!7238352 () Bool)

(declare-fun lt!2577572 () List!70222)

(assert (=> b!7238352 (= e!4339607 (or (not (= (exprs!7978 ct2!328) Nil!70098)) (= lt!2577572 (exprs!7978 lt!2577461))))))

(declare-fun d!2248486 () Bool)

(assert (=> d!2248486 e!4339607))

(declare-fun res!2936494 () Bool)

(assert (=> d!2248486 (=> (not res!2936494) (not e!4339607))))

(declare-fun content!14461 (List!70222) (Set Regex!18538))

(assert (=> d!2248486 (= res!2936494 (= (content!14461 lt!2577572) (set.union (content!14461 (exprs!7978 lt!2577461)) (content!14461 (exprs!7978 ct2!328)))))))

(declare-fun e!4339608 () List!70222)

(assert (=> d!2248486 (= lt!2577572 e!4339608)))

(declare-fun c!1343751 () Bool)

(assert (=> d!2248486 (= c!1343751 (is-Nil!70098 (exprs!7978 lt!2577461)))))

(assert (=> d!2248486 (= (++!16376 (exprs!7978 lt!2577461) (exprs!7978 ct2!328)) lt!2577572)))

(declare-fun b!7238350 () Bool)

(assert (=> b!7238350 (= e!4339608 (Cons!70098 (h!76546 (exprs!7978 lt!2577461)) (++!16376 (t!384273 (exprs!7978 lt!2577461)) (exprs!7978 ct2!328))))))

(declare-fun b!7238351 () Bool)

(declare-fun res!2936495 () Bool)

(assert (=> b!7238351 (=> (not res!2936495) (not e!4339607))))

(declare-fun size!41608 (List!70222) Int)

(assert (=> b!7238351 (= res!2936495 (= (size!41608 lt!2577572) (+ (size!41608 (exprs!7978 lt!2577461)) (size!41608 (exprs!7978 ct2!328)))))))

(declare-fun b!7238349 () Bool)

(assert (=> b!7238349 (= e!4339608 (exprs!7978 ct2!328))))

(assert (= (and d!2248486 c!1343751) b!7238349))

(assert (= (and d!2248486 (not c!1343751)) b!7238350))

(assert (= (and d!2248486 res!2936494) b!7238351))

(assert (= (and b!7238351 res!2936495) b!7238352))

(declare-fun m!7910478 () Bool)

(assert (=> d!2248486 m!7910478))

(declare-fun m!7910480 () Bool)

(assert (=> d!2248486 m!7910480))

(declare-fun m!7910482 () Bool)

(assert (=> d!2248486 m!7910482))

(declare-fun m!7910484 () Bool)

(assert (=> b!7238350 m!7910484))

(declare-fun m!7910486 () Bool)

(assert (=> b!7238351 m!7910486))

(declare-fun m!7910488 () Bool)

(assert (=> b!7238351 m!7910488))

(declare-fun m!7910490 () Bool)

(assert (=> b!7238351 m!7910490))

(assert (=> b!7238271 d!2248486))

(declare-fun d!2248488 () Bool)

(assert (=> d!2248488 (= (isEmpty!40397 (exprs!7978 ct1!232)) (is-Nil!70098 (exprs!7978 ct1!232)))))

(assert (=> b!7238271 d!2248488))

(declare-fun bs!1903673 () Bool)

(declare-fun d!2248490 () Bool)

(assert (= bs!1903673 (and d!2248490 b!7238265)))

(declare-fun lambda!441026 () Int)

(assert (=> bs!1903673 (= lambda!441026 lambda!440986)))

(assert (=> d!2248490 (matchZipper!3448 (set.insert (Context!14957 (++!16376 (exprs!7978 lt!2577461) (exprs!7978 ct2!328))) (as set.empty (Set Context!14956))) (++!16377 (t!384274 s1!1971) s2!1849))))

(declare-fun lt!2577578 () Unit!163626)

(assert (=> d!2248490 (= lt!2577578 (lemmaConcatPreservesForall!1347 (exprs!7978 lt!2577461) (exprs!7978 ct2!328) lambda!441026))))

(declare-fun lt!2577577 () Unit!163626)

(declare-fun choose!55698 (Context!14956 Context!14956 List!70223 List!70223) Unit!163626)

(assert (=> d!2248490 (= lt!2577577 (choose!55698 lt!2577461 ct2!328 (t!384274 s1!1971) s2!1849))))

(assert (=> d!2248490 (matchZipper!3448 (set.insert lt!2577461 (as set.empty (Set Context!14956))) (t!384274 s1!1971))))

(assert (=> d!2248490 (= (lemmaConcatenateContextMatchesConcatOfStrings!329 lt!2577461 ct2!328 (t!384274 s1!1971) s2!1849) lt!2577577)))

(declare-fun bs!1903674 () Bool)

(assert (= bs!1903674 d!2248490))

(declare-fun m!7910492 () Bool)

(assert (=> bs!1903674 m!7910492))

(assert (=> bs!1903674 m!7910298))

(declare-fun m!7910494 () Bool)

(assert (=> bs!1903674 m!7910494))

(assert (=> bs!1903674 m!7910298))

(declare-fun m!7910496 () Bool)

(assert (=> bs!1903674 m!7910496))

(declare-fun m!7910498 () Bool)

(assert (=> bs!1903674 m!7910498))

(declare-fun m!7910500 () Bool)

(assert (=> bs!1903674 m!7910500))

(declare-fun m!7910502 () Bool)

(assert (=> bs!1903674 m!7910502))

(assert (=> bs!1903674 m!7910296))

(assert (=> bs!1903674 m!7910498))

(assert (=> bs!1903674 m!7910492))

(assert (=> b!7238271 d!2248490))

(declare-fun b!7238363 () Bool)

(declare-fun e!4339617 () (Set Context!14956))

(declare-fun call!659106 () (Set Context!14956))

(assert (=> b!7238363 (= e!4339617 call!659106)))

(declare-fun d!2248492 () Bool)

(declare-fun c!1343757 () Bool)

(declare-fun e!4339615 () Bool)

(assert (=> d!2248492 (= c!1343757 e!4339615)))

(declare-fun res!2936498 () Bool)

(assert (=> d!2248492 (=> (not res!2936498) (not e!4339615))))

(assert (=> d!2248492 (= res!2936498 (is-Cons!70098 (exprs!7978 ct1!232)))))

(declare-fun e!4339616 () (Set Context!14956))

(assert (=> d!2248492 (= (derivationStepZipperUp!2412 ct1!232 (h!76547 s1!1971)) e!4339616)))

(declare-fun b!7238364 () Bool)

(assert (=> b!7238364 (= e!4339616 e!4339617)))

(declare-fun c!1343756 () Bool)

(assert (=> b!7238364 (= c!1343756 (is-Cons!70098 (exprs!7978 ct1!232)))))

(declare-fun b!7238365 () Bool)

(assert (=> b!7238365 (= e!4339617 (as set.empty (Set Context!14956)))))

(declare-fun b!7238366 () Bool)

(assert (=> b!7238366 (= e!4339615 (nullable!7851 (h!76546 (exprs!7978 ct1!232))))))

(declare-fun b!7238367 () Bool)

(assert (=> b!7238367 (= e!4339616 (set.union call!659106 (derivationStepZipperUp!2412 (Context!14957 (t!384273 (exprs!7978 ct1!232))) (h!76547 s1!1971))))))

(declare-fun bm!659101 () Bool)

(assert (=> bm!659101 (= call!659106 (derivationStepZipperDown!2582 (h!76546 (exprs!7978 ct1!232)) (Context!14957 (t!384273 (exprs!7978 ct1!232))) (h!76547 s1!1971)))))

(assert (= (and d!2248492 res!2936498) b!7238366))

(assert (= (and d!2248492 c!1343757) b!7238367))

(assert (= (and d!2248492 (not c!1343757)) b!7238364))

(assert (= (and b!7238364 c!1343756) b!7238363))

(assert (= (and b!7238364 (not c!1343756)) b!7238365))

(assert (= (or b!7238367 b!7238363) bm!659101))

(assert (=> b!7238366 m!7910280))

(declare-fun m!7910504 () Bool)

(assert (=> b!7238367 m!7910504))

(declare-fun m!7910506 () Bool)

(assert (=> bm!659101 m!7910506))

(assert (=> b!7238271 d!2248492))

(declare-fun d!2248494 () Bool)

(declare-fun c!1343758 () Bool)

(assert (=> d!2248494 (= c!1343758 (isEmpty!40399 lt!2577433))))

(declare-fun e!4339618 () Bool)

(assert (=> d!2248494 (= (matchZipper!3448 (set.insert lt!2577436 (as set.empty (Set Context!14956))) lt!2577433) e!4339618)))

(declare-fun b!7238368 () Bool)

(assert (=> b!7238368 (= e!4339618 (nullableZipper!2838 (set.insert lt!2577436 (as set.empty (Set Context!14956)))))))

(declare-fun b!7238369 () Bool)

(assert (=> b!7238369 (= e!4339618 (matchZipper!3448 (derivationStepZipper!3330 (set.insert lt!2577436 (as set.empty (Set Context!14956))) (head!14827 lt!2577433)) (tail!14186 lt!2577433)))))

(assert (= (and d!2248494 c!1343758) b!7238368))

(assert (= (and d!2248494 (not c!1343758)) b!7238369))

(declare-fun m!7910508 () Bool)

(assert (=> d!2248494 m!7910508))

(assert (=> b!7238368 m!7910290))

(declare-fun m!7910510 () Bool)

(assert (=> b!7238368 m!7910510))

(declare-fun m!7910512 () Bool)

(assert (=> b!7238369 m!7910512))

(assert (=> b!7238369 m!7910290))

(assert (=> b!7238369 m!7910512))

(declare-fun m!7910514 () Bool)

(assert (=> b!7238369 m!7910514))

(declare-fun m!7910516 () Bool)

(assert (=> b!7238369 m!7910516))

(assert (=> b!7238369 m!7910514))

(assert (=> b!7238369 m!7910516))

(declare-fun m!7910518 () Bool)

(assert (=> b!7238369 m!7910518))

(assert (=> b!7238271 d!2248494))

(declare-fun d!2248496 () Bool)

(assert (=> d!2248496 (forall!17375 (++!16376 (exprs!7978 lt!2577461) (exprs!7978 ct2!328)) lambda!440986)))

(declare-fun lt!2577581 () Unit!163626)

(declare-fun choose!55699 (List!70222 List!70222 Int) Unit!163626)

(assert (=> d!2248496 (= lt!2577581 (choose!55699 (exprs!7978 lt!2577461) (exprs!7978 ct2!328) lambda!440986))))

(assert (=> d!2248496 (forall!17375 (exprs!7978 lt!2577461) lambda!440986)))

(assert (=> d!2248496 (= (lemmaConcatPreservesForall!1347 (exprs!7978 lt!2577461) (exprs!7978 ct2!328) lambda!440986) lt!2577581)))

(declare-fun bs!1903675 () Bool)

(assert (= bs!1903675 d!2248496))

(assert (=> bs!1903675 m!7910296))

(assert (=> bs!1903675 m!7910296))

(declare-fun m!7910520 () Bool)

(assert (=> bs!1903675 m!7910520))

(declare-fun m!7910522 () Bool)

(assert (=> bs!1903675 m!7910522))

(assert (=> bs!1903675 m!7910262))

(assert (=> b!7238271 d!2248496))

(declare-fun b!7238380 () Bool)

(declare-fun res!2936503 () Bool)

(declare-fun e!4339624 () Bool)

(assert (=> b!7238380 (=> (not res!2936503) (not e!4339624))))

(declare-fun lt!2577584 () List!70223)

(declare-fun size!41609 (List!70223) Int)

(assert (=> b!7238380 (= res!2936503 (= (size!41609 lt!2577584) (+ (size!41609 (t!384274 s1!1971)) (size!41609 s2!1849))))))

(declare-fun b!7238379 () Bool)

(declare-fun e!4339623 () List!70223)

(assert (=> b!7238379 (= e!4339623 (Cons!70099 (h!76547 (t!384274 s1!1971)) (++!16377 (t!384274 (t!384274 s1!1971)) s2!1849)))))

(declare-fun b!7238378 () Bool)

(assert (=> b!7238378 (= e!4339623 s2!1849)))

(declare-fun b!7238381 () Bool)

(assert (=> b!7238381 (= e!4339624 (or (not (= s2!1849 Nil!70099)) (= lt!2577584 (t!384274 s1!1971))))))

(declare-fun d!2248498 () Bool)

(assert (=> d!2248498 e!4339624))

(declare-fun res!2936504 () Bool)

(assert (=> d!2248498 (=> (not res!2936504) (not e!4339624))))

(declare-fun content!14462 (List!70223) (Set C!37350))

(assert (=> d!2248498 (= res!2936504 (= (content!14462 lt!2577584) (set.union (content!14462 (t!384274 s1!1971)) (content!14462 s2!1849))))))

(assert (=> d!2248498 (= lt!2577584 e!4339623)))

(declare-fun c!1343761 () Bool)

(assert (=> d!2248498 (= c!1343761 (is-Nil!70099 (t!384274 s1!1971)))))

(assert (=> d!2248498 (= (++!16377 (t!384274 s1!1971) s2!1849) lt!2577584)))

(assert (= (and d!2248498 c!1343761) b!7238378))

(assert (= (and d!2248498 (not c!1343761)) b!7238379))

(assert (= (and d!2248498 res!2936504) b!7238380))

(assert (= (and b!7238380 res!2936503) b!7238381))

(declare-fun m!7910524 () Bool)

(assert (=> b!7238380 m!7910524))

(declare-fun m!7910526 () Bool)

(assert (=> b!7238380 m!7910526))

(declare-fun m!7910528 () Bool)

(assert (=> b!7238380 m!7910528))

(declare-fun m!7910530 () Bool)

(assert (=> b!7238379 m!7910530))

(declare-fun m!7910532 () Bool)

(assert (=> d!2248498 m!7910532))

(declare-fun m!7910534 () Bool)

(assert (=> d!2248498 m!7910534))

(declare-fun m!7910536 () Bool)

(assert (=> d!2248498 m!7910536))

(assert (=> b!7238271 d!2248498))

(declare-fun d!2248500 () Bool)

(declare-fun c!1343762 () Bool)

(assert (=> d!2248500 (= c!1343762 (isEmpty!40399 s1!1971))))

(declare-fun e!4339625 () Bool)

(assert (=> d!2248500 (= (matchZipper!3448 lt!2577454 s1!1971) e!4339625)))

(declare-fun b!7238382 () Bool)

(assert (=> b!7238382 (= e!4339625 (nullableZipper!2838 lt!2577454))))

(declare-fun b!7238383 () Bool)

(assert (=> b!7238383 (= e!4339625 (matchZipper!3448 (derivationStepZipper!3330 lt!2577454 (head!14827 s1!1971)) (tail!14186 s1!1971)))))

(assert (= (and d!2248500 c!1343762) b!7238382))

(assert (= (and d!2248500 (not c!1343762)) b!7238383))

(declare-fun m!7910538 () Bool)

(assert (=> d!2248500 m!7910538))

(declare-fun m!7910540 () Bool)

(assert (=> b!7238382 m!7910540))

(declare-fun m!7910542 () Bool)

(assert (=> b!7238383 m!7910542))

(assert (=> b!7238383 m!7910542))

(declare-fun m!7910544 () Bool)

(assert (=> b!7238383 m!7910544))

(declare-fun m!7910546 () Bool)

(assert (=> b!7238383 m!7910546))

(assert (=> b!7238383 m!7910544))

(assert (=> b!7238383 m!7910546))

(declare-fun m!7910548 () Bool)

(assert (=> b!7238383 m!7910548))

(assert (=> start!702964 d!2248500))

(declare-fun bs!1903676 () Bool)

(declare-fun d!2248502 () Bool)

(assert (= bs!1903676 (and d!2248502 b!7238265)))

(declare-fun lambda!441029 () Int)

(assert (=> bs!1903676 (= lambda!441029 lambda!440986)))

(declare-fun bs!1903677 () Bool)

(assert (= bs!1903677 (and d!2248502 d!2248490)))

(assert (=> bs!1903677 (= lambda!441029 lambda!441026)))

(assert (=> d!2248502 (= (inv!89356 ct1!232) (forall!17375 (exprs!7978 ct1!232) lambda!441029))))

(declare-fun bs!1903678 () Bool)

(assert (= bs!1903678 d!2248502))

(declare-fun m!7910550 () Bool)

(assert (=> bs!1903678 m!7910550))

(assert (=> start!702964 d!2248502))

(declare-fun bs!1903679 () Bool)

(declare-fun d!2248504 () Bool)

(assert (= bs!1903679 (and d!2248504 b!7238265)))

(declare-fun lambda!441030 () Int)

(assert (=> bs!1903679 (= lambda!441030 lambda!440986)))

(declare-fun bs!1903680 () Bool)

(assert (= bs!1903680 (and d!2248504 d!2248490)))

(assert (=> bs!1903680 (= lambda!441030 lambda!441026)))

(declare-fun bs!1903681 () Bool)

(assert (= bs!1903681 (and d!2248504 d!2248502)))

(assert (=> bs!1903681 (= lambda!441030 lambda!441029)))

(assert (=> d!2248504 (= (inv!89356 ct2!328) (forall!17375 (exprs!7978 ct2!328) lambda!441030))))

(declare-fun bs!1903682 () Bool)

(assert (= bs!1903682 d!2248504))

(declare-fun m!7910552 () Bool)

(assert (=> bs!1903682 m!7910552))

(assert (=> start!702964 d!2248504))

(declare-fun d!2248506 () Bool)

(declare-fun dynLambda!28608 (Int Context!14956) (Set Context!14956))

(assert (=> d!2248506 (= (flatMap!2742 lt!2577454 lambda!440988) (dynLambda!28608 lambda!440988 ct1!232))))

(declare-fun lt!2577587 () Unit!163626)

(declare-fun choose!55700 ((Set Context!14956) Context!14956 Int) Unit!163626)

(assert (=> d!2248506 (= lt!2577587 (choose!55700 lt!2577454 ct1!232 lambda!440988))))

(assert (=> d!2248506 (= lt!2577454 (set.insert ct1!232 (as set.empty (Set Context!14956))))))

(assert (=> d!2248506 (= (lemmaFlatMapOnSingletonSet!2169 lt!2577454 ct1!232 lambda!440988) lt!2577587)))

(declare-fun b_lambda!277597 () Bool)

(assert (=> (not b_lambda!277597) (not d!2248506)))

(declare-fun bs!1903683 () Bool)

(assert (= bs!1903683 d!2248506))

(assert (=> bs!1903683 m!7910268))

(declare-fun m!7910554 () Bool)

(assert (=> bs!1903683 m!7910554))

(declare-fun m!7910556 () Bool)

(assert (=> bs!1903683 m!7910556))

(assert (=> bs!1903683 m!7910352))

(assert (=> b!7238269 d!2248506))

(declare-fun d!2248508 () Bool)

(declare-fun res!2936509 () Bool)

(declare-fun e!4339630 () Bool)

(assert (=> d!2248508 (=> res!2936509 e!4339630)))

(assert (=> d!2248508 (= res!2936509 (is-Nil!70098 (exprs!7978 lt!2577461)))))

(assert (=> d!2248508 (= (forall!17375 (exprs!7978 lt!2577461) lambda!440986) e!4339630)))

(declare-fun b!7238388 () Bool)

(declare-fun e!4339631 () Bool)

(assert (=> b!7238388 (= e!4339630 e!4339631)))

(declare-fun res!2936510 () Bool)

(assert (=> b!7238388 (=> (not res!2936510) (not e!4339631))))

(declare-fun dynLambda!28609 (Int Regex!18538) Bool)

(assert (=> b!7238388 (= res!2936510 (dynLambda!28609 lambda!440986 (h!76546 (exprs!7978 lt!2577461))))))

(declare-fun b!7238389 () Bool)

(assert (=> b!7238389 (= e!4339631 (forall!17375 (t!384273 (exprs!7978 lt!2577461)) lambda!440986))))

(assert (= (and d!2248508 (not res!2936509)) b!7238388))

(assert (= (and b!7238388 res!2936510) b!7238389))

(declare-fun b_lambda!277599 () Bool)

(assert (=> (not b_lambda!277599) (not b!7238388)))

(declare-fun m!7910558 () Bool)

(assert (=> b!7238388 m!7910558))

(declare-fun m!7910560 () Bool)

(assert (=> b!7238389 m!7910560))

(assert (=> b!7238269 d!2248508))

(declare-fun d!2248510 () Bool)

(assert (=> d!2248510 (forall!17375 (++!16376 (exprs!7978 ct1!232) (exprs!7978 ct2!328)) lambda!440986)))

(declare-fun lt!2577588 () Unit!163626)

(assert (=> d!2248510 (= lt!2577588 (choose!55699 (exprs!7978 ct1!232) (exprs!7978 ct2!328) lambda!440986))))

(assert (=> d!2248510 (forall!17375 (exprs!7978 ct1!232) lambda!440986)))

(assert (=> d!2248510 (= (lemmaConcatPreservesForall!1347 (exprs!7978 ct1!232) (exprs!7978 ct2!328) lambda!440986) lt!2577588)))

(declare-fun bs!1903684 () Bool)

(assert (= bs!1903684 d!2248510))

(assert (=> bs!1903684 m!7910306))

(assert (=> bs!1903684 m!7910306))

(declare-fun m!7910562 () Bool)

(assert (=> bs!1903684 m!7910562))

(declare-fun m!7910564 () Bool)

(assert (=> bs!1903684 m!7910564))

(declare-fun m!7910566 () Bool)

(assert (=> bs!1903684 m!7910566))

(assert (=> b!7238269 d!2248510))

(declare-fun d!2248512 () Bool)

(declare-fun choose!55701 ((Set Context!14956) Int) (Set Context!14956))

(assert (=> d!2248512 (= (flatMap!2742 lt!2577439 lambda!440988) (choose!55701 lt!2577439 lambda!440988))))

(declare-fun bs!1903685 () Bool)

(assert (= bs!1903685 d!2248512))

(declare-fun m!7910568 () Bool)

(assert (=> bs!1903685 m!7910568))

(assert (=> b!7238269 d!2248512))

(declare-fun d!2248514 () Bool)

(assert (=> d!2248514 (= (flatMap!2742 lt!2577439 lambda!440988) (dynLambda!28608 lambda!440988 lt!2577431))))

(declare-fun lt!2577589 () Unit!163626)

(assert (=> d!2248514 (= lt!2577589 (choose!55700 lt!2577439 lt!2577431 lambda!440988))))

(assert (=> d!2248514 (= lt!2577439 (set.insert lt!2577431 (as set.empty (Set Context!14956))))))

(assert (=> d!2248514 (= (lemmaFlatMapOnSingletonSet!2169 lt!2577439 lt!2577431 lambda!440988) lt!2577589)))

(declare-fun b_lambda!277601 () Bool)

(assert (=> (not b_lambda!277601) (not d!2248514)))

(declare-fun bs!1903686 () Bool)

(assert (= bs!1903686 d!2248514))

(assert (=> bs!1903686 m!7910274))

(declare-fun m!7910570 () Bool)

(assert (=> bs!1903686 m!7910570))

(declare-fun m!7910572 () Bool)

(assert (=> bs!1903686 m!7910572))

(assert (=> bs!1903686 m!7910304))

(assert (=> b!7238269 d!2248514))

(declare-fun b!7238392 () Bool)

(declare-fun res!2936511 () Bool)

(declare-fun e!4339633 () Bool)

(assert (=> b!7238392 (=> (not res!2936511) (not e!4339633))))

(declare-fun lt!2577590 () List!70223)

(assert (=> b!7238392 (= res!2936511 (= (size!41609 lt!2577590) (+ (size!41609 s1!1971) (size!41609 s2!1849))))))

(declare-fun b!7238391 () Bool)

(declare-fun e!4339632 () List!70223)

(assert (=> b!7238391 (= e!4339632 (Cons!70099 (h!76547 s1!1971) (++!16377 (t!384274 s1!1971) s2!1849)))))

(declare-fun b!7238390 () Bool)

(assert (=> b!7238390 (= e!4339632 s2!1849)))

(declare-fun b!7238393 () Bool)

(assert (=> b!7238393 (= e!4339633 (or (not (= s2!1849 Nil!70099)) (= lt!2577590 s1!1971)))))

(declare-fun d!2248516 () Bool)

(assert (=> d!2248516 e!4339633))

(declare-fun res!2936512 () Bool)

(assert (=> d!2248516 (=> (not res!2936512) (not e!4339633))))

(assert (=> d!2248516 (= res!2936512 (= (content!14462 lt!2577590) (set.union (content!14462 s1!1971) (content!14462 s2!1849))))))

(assert (=> d!2248516 (= lt!2577590 e!4339632)))

(declare-fun c!1343763 () Bool)

(assert (=> d!2248516 (= c!1343763 (is-Nil!70099 s1!1971))))

(assert (=> d!2248516 (= (++!16377 s1!1971 s2!1849) lt!2577590)))

(assert (= (and d!2248516 c!1343763) b!7238390))

(assert (= (and d!2248516 (not c!1343763)) b!7238391))

(assert (= (and d!2248516 res!2936512) b!7238392))

(assert (= (and b!7238392 res!2936511) b!7238393))

(declare-fun m!7910574 () Bool)

(assert (=> b!7238392 m!7910574))

(declare-fun m!7910576 () Bool)

(assert (=> b!7238392 m!7910576))

(assert (=> b!7238392 m!7910528))

(assert (=> b!7238391 m!7910298))

(declare-fun m!7910578 () Bool)

(assert (=> d!2248516 m!7910578))

(declare-fun m!7910580 () Bool)

(assert (=> d!2248516 m!7910580))

(assert (=> d!2248516 m!7910536))

(assert (=> b!7238269 d!2248516))

(assert (=> b!7238269 d!2248496))

(assert (=> b!7238269 d!2248492))

(declare-fun d!2248518 () Bool)

(assert (=> d!2248518 (= (tail!14186 (++!16377 s1!1971 s2!1849)) (t!384274 (++!16377 s1!1971 s2!1849)))))

(assert (=> b!7238269 d!2248518))

(declare-fun bs!1903687 () Bool)

(declare-fun d!2248520 () Bool)

(assert (= bs!1903687 (and d!2248520 b!7238265)))

(declare-fun lambda!441035 () Int)

(assert (=> bs!1903687 (= lambda!441035 lambda!440986)))

(declare-fun bs!1903688 () Bool)

(assert (= bs!1903688 (and d!2248520 d!2248490)))

(assert (=> bs!1903688 (= lambda!441035 lambda!441026)))

(declare-fun bs!1903689 () Bool)

(assert (= bs!1903689 (and d!2248520 d!2248502)))

(assert (=> bs!1903689 (= lambda!441035 lambda!441029)))

(declare-fun bs!1903690 () Bool)

(assert (= bs!1903690 (and d!2248520 d!2248504)))

(assert (=> bs!1903690 (= lambda!441035 lambda!441030)))

(assert (=> d!2248520 (set.member (Context!14957 (++!16376 (exprs!7978 lt!2577461) (exprs!7978 ct2!328))) (derivationStepZipperUp!2412 (Context!14957 (++!16376 (exprs!7978 ct1!232) (exprs!7978 ct2!328))) (h!76547 s1!1971)))))

(declare-fun lt!2577599 () Unit!163626)

(assert (=> d!2248520 (= lt!2577599 (lemmaConcatPreservesForall!1347 (exprs!7978 ct1!232) (exprs!7978 ct2!328) lambda!441035))))

(declare-fun lt!2577598 () Unit!163626)

(assert (=> d!2248520 (= lt!2577598 (lemmaConcatPreservesForall!1347 (exprs!7978 lt!2577461) (exprs!7978 ct2!328) lambda!441035))))

(declare-fun lt!2577597 () Unit!163626)

(declare-fun choose!55702 (Context!14956 Context!14956 Context!14956 C!37350) Unit!163626)

(assert (=> d!2248520 (= lt!2577597 (choose!55702 ct1!232 ct2!328 lt!2577461 (h!76547 s1!1971)))))

(assert (=> d!2248520 (set.member lt!2577461 (derivationStepZipperUp!2412 ct1!232 (h!76547 s1!1971)))))

(assert (=> d!2248520 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!3 ct1!232 ct2!328 lt!2577461 (h!76547 s1!1971)) lt!2577597)))

(declare-fun bs!1903691 () Bool)

(assert (= bs!1903691 d!2248520))

(declare-fun m!7910582 () Bool)

(assert (=> bs!1903691 m!7910582))

(declare-fun m!7910584 () Bool)

(assert (=> bs!1903691 m!7910584))

(assert (=> bs!1903691 m!7910296))

(assert (=> bs!1903691 m!7910264))

(declare-fun m!7910586 () Bool)

(assert (=> bs!1903691 m!7910586))

(assert (=> bs!1903691 m!7910306))

(declare-fun m!7910588 () Bool)

(assert (=> bs!1903691 m!7910588))

(declare-fun m!7910590 () Bool)

(assert (=> bs!1903691 m!7910590))

(declare-fun m!7910592 () Bool)

(assert (=> bs!1903691 m!7910592))

(assert (=> b!7238269 d!2248520))

(declare-fun d!2248522 () Bool)

(assert (=> d!2248522 (= (tail!14187 lt!2577427) (t!384273 lt!2577427))))

(assert (=> b!7238269 d!2248522))

(declare-fun d!2248524 () Bool)

(declare-fun nullableFct!3077 (Regex!18538) Bool)

(assert (=> d!2248524 (= (nullable!7851 (h!76546 (exprs!7978 ct1!232))) (nullableFct!3077 (h!76546 (exprs!7978 ct1!232))))))

(declare-fun bs!1903692 () Bool)

(assert (= bs!1903692 d!2248524))

(declare-fun m!7910594 () Bool)

(assert (=> bs!1903692 m!7910594))

(assert (=> b!7238269 d!2248524))

(declare-fun b!7238416 () Bool)

(declare-fun e!4339648 () (Set Context!14956))

(assert (=> b!7238416 (= e!4339648 (set.insert lt!2577441 (as set.empty (Set Context!14956))))))

(declare-fun bm!659114 () Bool)

(declare-fun call!659124 () (Set Context!14956))

(declare-fun call!659122 () (Set Context!14956))

(assert (=> bm!659114 (= call!659124 call!659122)))

(declare-fun b!7238417 () Bool)

(declare-fun e!4339647 () (Set Context!14956))

(assert (=> b!7238417 (= e!4339647 (as set.empty (Set Context!14956)))))

(declare-fun c!1343776 () Bool)

(declare-fun call!659121 () List!70222)

(declare-fun call!659119 () (Set Context!14956))

(declare-fun bm!659115 () Bool)

(assert (=> bm!659115 (= call!659119 (derivationStepZipperDown!2582 (ite c!1343776 (regTwo!37589 (h!76546 (exprs!7978 ct1!232))) (regOne!37588 (h!76546 (exprs!7978 ct1!232)))) (ite c!1343776 lt!2577441 (Context!14957 call!659121)) (h!76547 s1!1971)))))

(declare-fun b!7238418 () Bool)

(declare-fun c!1343778 () Bool)

(declare-fun e!4339646 () Bool)

(assert (=> b!7238418 (= c!1343778 e!4339646)))

(declare-fun res!2936515 () Bool)

(assert (=> b!7238418 (=> (not res!2936515) (not e!4339646))))

(assert (=> b!7238418 (= res!2936515 (is-Concat!27383 (h!76546 (exprs!7978 ct1!232))))))

(declare-fun e!4339650 () (Set Context!14956))

(declare-fun e!4339649 () (Set Context!14956))

(assert (=> b!7238418 (= e!4339650 e!4339649)))

(declare-fun c!1343779 () Bool)

(declare-fun bm!659116 () Bool)

(declare-fun $colon$colon!2885 (List!70222 Regex!18538) List!70222)

(assert (=> bm!659116 (= call!659121 ($colon$colon!2885 (exprs!7978 lt!2577441) (ite (or c!1343778 c!1343779) (regTwo!37588 (h!76546 (exprs!7978 ct1!232))) (h!76546 (exprs!7978 ct1!232)))))))

(declare-fun b!7238419 () Bool)

(declare-fun e!4339651 () (Set Context!14956))

(assert (=> b!7238419 (= e!4339649 e!4339651)))

(assert (=> b!7238419 (= c!1343779 (is-Concat!27383 (h!76546 (exprs!7978 ct1!232))))))

(declare-fun b!7238420 () Bool)

(declare-fun call!659123 () (Set Context!14956))

(assert (=> b!7238420 (= e!4339651 call!659123)))

(declare-fun bm!659117 () Bool)

(assert (=> bm!659117 (= call!659123 call!659124)))

(declare-fun b!7238421 () Bool)

(assert (=> b!7238421 (= e!4339646 (nullable!7851 (regOne!37588 (h!76546 (exprs!7978 ct1!232)))))))

(declare-fun b!7238422 () Bool)

(assert (=> b!7238422 (= e!4339649 (set.union call!659119 call!659124))))

(declare-fun b!7238423 () Bool)

(declare-fun c!1343777 () Bool)

(assert (=> b!7238423 (= c!1343777 (is-Star!18538 (h!76546 (exprs!7978 ct1!232))))))

(assert (=> b!7238423 (= e!4339651 e!4339647)))

(declare-fun bm!659118 () Bool)

(declare-fun call!659120 () List!70222)

(assert (=> bm!659118 (= call!659120 call!659121)))

(declare-fun b!7238424 () Bool)

(assert (=> b!7238424 (= e!4339647 call!659123)))

(declare-fun b!7238425 () Bool)

(assert (=> b!7238425 (= e!4339648 e!4339650)))

(assert (=> b!7238425 (= c!1343776 (is-Union!18538 (h!76546 (exprs!7978 ct1!232))))))

(declare-fun bm!659119 () Bool)

(assert (=> bm!659119 (= call!659122 (derivationStepZipperDown!2582 (ite c!1343776 (regOne!37589 (h!76546 (exprs!7978 ct1!232))) (ite c!1343778 (regTwo!37588 (h!76546 (exprs!7978 ct1!232))) (ite c!1343779 (regOne!37588 (h!76546 (exprs!7978 ct1!232))) (reg!18867 (h!76546 (exprs!7978 ct1!232)))))) (ite (or c!1343776 c!1343778) lt!2577441 (Context!14957 call!659120)) (h!76547 s1!1971)))))

(declare-fun d!2248526 () Bool)

(declare-fun c!1343775 () Bool)

(assert (=> d!2248526 (= c!1343775 (and (is-ElementMatch!18538 (h!76546 (exprs!7978 ct1!232))) (= (c!1343731 (h!76546 (exprs!7978 ct1!232))) (h!76547 s1!1971))))))

(assert (=> d!2248526 (= (derivationStepZipperDown!2582 (h!76546 (exprs!7978 ct1!232)) lt!2577441 (h!76547 s1!1971)) e!4339648)))

(declare-fun b!7238426 () Bool)

(assert (=> b!7238426 (= e!4339650 (set.union call!659122 call!659119))))

(assert (= (and d!2248526 c!1343775) b!7238416))

(assert (= (and d!2248526 (not c!1343775)) b!7238425))

(assert (= (and b!7238425 c!1343776) b!7238426))

(assert (= (and b!7238425 (not c!1343776)) b!7238418))

(assert (= (and b!7238418 res!2936515) b!7238421))

(assert (= (and b!7238418 c!1343778) b!7238422))

(assert (= (and b!7238418 (not c!1343778)) b!7238419))

(assert (= (and b!7238419 c!1343779) b!7238420))

(assert (= (and b!7238419 (not c!1343779)) b!7238423))

(assert (= (and b!7238423 c!1343777) b!7238424))

(assert (= (and b!7238423 (not c!1343777)) b!7238417))

(assert (= (or b!7238420 b!7238424) bm!659118))

(assert (= (or b!7238420 b!7238424) bm!659117))

(assert (= (or b!7238422 bm!659118) bm!659116))

(assert (= (or b!7238422 bm!659117) bm!659114))

(assert (= (or b!7238426 b!7238422) bm!659115))

(assert (= (or b!7238426 bm!659114) bm!659119))

(declare-fun m!7910596 () Bool)

(assert (=> bm!659115 m!7910596))

(declare-fun m!7910598 () Bool)

(assert (=> b!7238416 m!7910598))

(declare-fun m!7910600 () Bool)

(assert (=> bm!659119 m!7910600))

(declare-fun m!7910602 () Bool)

(assert (=> b!7238421 m!7910602))

(declare-fun m!7910604 () Bool)

(assert (=> bm!659116 m!7910604))

(assert (=> b!7238269 d!2248526))

(declare-fun d!2248528 () Bool)

(assert (=> d!2248528 (= (flatMap!2742 lt!2577454 lambda!440988) (choose!55701 lt!2577454 lambda!440988))))

(declare-fun bs!1903693 () Bool)

(assert (= bs!1903693 d!2248528))

(declare-fun m!7910606 () Bool)

(assert (=> bs!1903693 m!7910606))

(assert (=> b!7238269 d!2248528))

(declare-fun b!7238427 () Bool)

(declare-fun e!4339654 () (Set Context!14956))

(declare-fun call!659125 () (Set Context!14956))

(assert (=> b!7238427 (= e!4339654 call!659125)))

(declare-fun d!2248530 () Bool)

(declare-fun c!1343781 () Bool)

(declare-fun e!4339652 () Bool)

(assert (=> d!2248530 (= c!1343781 e!4339652)))

(declare-fun res!2936516 () Bool)

(assert (=> d!2248530 (=> (not res!2936516) (not e!4339652))))

(assert (=> d!2248530 (= res!2936516 (is-Cons!70098 (exprs!7978 lt!2577431)))))

(declare-fun e!4339653 () (Set Context!14956))

(assert (=> d!2248530 (= (derivationStepZipperUp!2412 lt!2577431 (h!76547 s1!1971)) e!4339653)))

(declare-fun b!7238428 () Bool)

(assert (=> b!7238428 (= e!4339653 e!4339654)))

(declare-fun c!1343780 () Bool)

(assert (=> b!7238428 (= c!1343780 (is-Cons!70098 (exprs!7978 lt!2577431)))))

(declare-fun b!7238429 () Bool)

(assert (=> b!7238429 (= e!4339654 (as set.empty (Set Context!14956)))))

(declare-fun b!7238430 () Bool)

(assert (=> b!7238430 (= e!4339652 (nullable!7851 (h!76546 (exprs!7978 lt!2577431))))))

(declare-fun b!7238431 () Bool)

(assert (=> b!7238431 (= e!4339653 (set.union call!659125 (derivationStepZipperUp!2412 (Context!14957 (t!384273 (exprs!7978 lt!2577431))) (h!76547 s1!1971))))))

(declare-fun bm!659120 () Bool)

(assert (=> bm!659120 (= call!659125 (derivationStepZipperDown!2582 (h!76546 (exprs!7978 lt!2577431)) (Context!14957 (t!384273 (exprs!7978 lt!2577431))) (h!76547 s1!1971)))))

(assert (= (and d!2248530 res!2936516) b!7238430))

(assert (= (and d!2248530 c!1343781) b!7238431))

(assert (= (and d!2248530 (not c!1343781)) b!7238428))

(assert (= (and b!7238428 c!1343780) b!7238427))

(assert (= (and b!7238428 (not c!1343780)) b!7238429))

(assert (= (or b!7238431 b!7238427) bm!659120))

(declare-fun m!7910608 () Bool)

(assert (=> b!7238430 m!7910608))

(declare-fun m!7910610 () Bool)

(assert (=> b!7238431 m!7910610))

(declare-fun m!7910612 () Bool)

(assert (=> bm!659120 m!7910612))

(assert (=> b!7238269 d!2248530))

(declare-fun d!2248532 () Bool)

(declare-fun c!1343782 () Bool)

(assert (=> d!2248532 (= c!1343782 (isEmpty!40399 (t!384274 s1!1971)))))

(declare-fun e!4339655 () Bool)

(assert (=> d!2248532 (= (matchZipper!3448 lt!2577434 (t!384274 s1!1971)) e!4339655)))

(declare-fun b!7238432 () Bool)

(assert (=> b!7238432 (= e!4339655 (nullableZipper!2838 lt!2577434))))

(declare-fun b!7238433 () Bool)

(assert (=> b!7238433 (= e!4339655 (matchZipper!3448 (derivationStepZipper!3330 lt!2577434 (head!14827 (t!384274 s1!1971))) (tail!14186 (t!384274 s1!1971))))))

(assert (= (and d!2248532 c!1343782) b!7238432))

(assert (= (and d!2248532 (not c!1343782)) b!7238433))

(assert (=> d!2248532 m!7910460))

(declare-fun m!7910614 () Bool)

(assert (=> b!7238432 m!7910614))

(assert (=> b!7238433 m!7910464))

(assert (=> b!7238433 m!7910464))

(declare-fun m!7910616 () Bool)

(assert (=> b!7238433 m!7910616))

(assert (=> b!7238433 m!7910468))

(assert (=> b!7238433 m!7910616))

(assert (=> b!7238433 m!7910468))

(declare-fun m!7910618 () Bool)

(assert (=> b!7238433 m!7910618))

(assert (=> b!7238270 d!2248532))

(declare-fun bs!1903694 () Bool)

(declare-fun d!2248534 () Bool)

(assert (= bs!1903694 (and d!2248534 b!7238269)))

(declare-fun lambda!441038 () Int)

(assert (=> bs!1903694 (= lambda!441038 lambda!440988)))

(assert (=> d!2248534 true))

(assert (=> d!2248534 (= (derivationStepZipper!3330 lt!2577454 (h!76547 s1!1971)) (flatMap!2742 lt!2577454 lambda!441038))))

(declare-fun bs!1903695 () Bool)

(assert (= bs!1903695 d!2248534))

(declare-fun m!7910620 () Bool)

(assert (=> bs!1903695 m!7910620))

(assert (=> b!7238270 d!2248534))

(declare-fun d!2248536 () Bool)

(declare-fun c!1343785 () Bool)

(assert (=> d!2248536 (= c!1343785 (isEmpty!40399 s2!1849))))

(declare-fun e!4339656 () Bool)

(assert (=> d!2248536 (= (matchZipper!3448 (set.insert ct2!328 (as set.empty (Set Context!14956))) s2!1849) e!4339656)))

(declare-fun b!7238436 () Bool)

(assert (=> b!7238436 (= e!4339656 (nullableZipper!2838 (set.insert ct2!328 (as set.empty (Set Context!14956)))))))

(declare-fun b!7238437 () Bool)

(assert (=> b!7238437 (= e!4339656 (matchZipper!3448 (derivationStepZipper!3330 (set.insert ct2!328 (as set.empty (Set Context!14956))) (head!14827 s2!1849)) (tail!14186 s2!1849)))))

(assert (= (and d!2248536 c!1343785) b!7238436))

(assert (= (and d!2248536 (not c!1343785)) b!7238437))

(declare-fun m!7910622 () Bool)

(assert (=> d!2248536 m!7910622))

(assert (=> b!7238436 m!7910340))

(declare-fun m!7910624 () Bool)

(assert (=> b!7238436 m!7910624))

(declare-fun m!7910626 () Bool)

(assert (=> b!7238437 m!7910626))

(assert (=> b!7238437 m!7910340))

(assert (=> b!7238437 m!7910626))

(declare-fun m!7910628 () Bool)

(assert (=> b!7238437 m!7910628))

(declare-fun m!7910630 () Bool)

(assert (=> b!7238437 m!7910630))

(assert (=> b!7238437 m!7910628))

(assert (=> b!7238437 m!7910630))

(declare-fun m!7910632 () Bool)

(assert (=> b!7238437 m!7910632))

(assert (=> b!7238268 d!2248536))

(declare-fun d!2248538 () Bool)

(declare-fun lt!2577602 () Bool)

(assert (=> d!2248538 (= lt!2577602 (exists!4220 (toList!11395 lt!2577434) lambda!440987))))

(declare-fun choose!55703 ((Set Context!14956) Int) Bool)

(assert (=> d!2248538 (= lt!2577602 (choose!55703 lt!2577434 lambda!440987))))

(assert (=> d!2248538 (= (exists!4219 lt!2577434 lambda!440987) lt!2577602)))

(declare-fun bs!1903696 () Bool)

(assert (= bs!1903696 d!2248538))

(assert (=> bs!1903696 m!7910338))

(assert (=> bs!1903696 m!7910338))

(declare-fun m!7910634 () Bool)

(assert (=> bs!1903696 m!7910634))

(declare-fun m!7910636 () Bool)

(assert (=> bs!1903696 m!7910636))

(assert (=> b!7238267 d!2248538))

(declare-fun bs!1903697 () Bool)

(declare-fun d!2248540 () Bool)

(assert (= bs!1903697 (and d!2248540 b!7238267)))

(declare-fun lambda!441041 () Int)

(assert (=> bs!1903697 (not (= lambda!441041 lambda!440987))))

(assert (=> d!2248540 true))

(declare-fun order!28875 () Int)

(declare-fun dynLambda!28610 (Int Int) Int)

(assert (=> d!2248540 (< (dynLambda!28610 order!28875 lambda!440987) (dynLambda!28610 order!28875 lambda!441041))))

(declare-fun forall!17377 (List!70224 Int) Bool)

(assert (=> d!2248540 (= (exists!4220 lt!2577446 lambda!440987) (not (forall!17377 lt!2577446 lambda!441041)))))

(declare-fun bs!1903698 () Bool)

(assert (= bs!1903698 d!2248540))

(declare-fun m!7910638 () Bool)

(assert (=> bs!1903698 m!7910638))

(assert (=> b!7238267 d!2248540))

(declare-fun bs!1903699 () Bool)

(declare-fun d!2248542 () Bool)

(assert (= bs!1903699 (and d!2248542 b!7238267)))

(declare-fun lambda!441044 () Int)

(assert (=> bs!1903699 (= lambda!441044 lambda!440987)))

(declare-fun bs!1903700 () Bool)

(assert (= bs!1903700 (and d!2248542 d!2248540)))

(assert (=> bs!1903700 (not (= lambda!441044 lambda!441041))))

(assert (=> d!2248542 true))

(assert (=> d!2248542 (exists!4220 lt!2577446 lambda!441044)))

(declare-fun lt!2577605 () Unit!163626)

(declare-fun choose!55704 (List!70224 List!70223) Unit!163626)

(assert (=> d!2248542 (= lt!2577605 (choose!55704 lt!2577446 (t!384274 s1!1971)))))

(declare-fun content!14463 (List!70224) (Set Context!14956))

(assert (=> d!2248542 (matchZipper!3448 (content!14463 lt!2577446) (t!384274 s1!1971))))

(assert (=> d!2248542 (= (lemmaZipperMatchesExistsMatchingContext!681 lt!2577446 (t!384274 s1!1971)) lt!2577605)))

(declare-fun bs!1903701 () Bool)

(assert (= bs!1903701 d!2248542))

(declare-fun m!7910640 () Bool)

(assert (=> bs!1903701 m!7910640))

(declare-fun m!7910642 () Bool)

(assert (=> bs!1903701 m!7910642))

(declare-fun m!7910644 () Bool)

(assert (=> bs!1903701 m!7910644))

(assert (=> bs!1903701 m!7910644))

(declare-fun m!7910646 () Bool)

(assert (=> bs!1903701 m!7910646))

(assert (=> b!7238267 d!2248542))

(declare-fun d!2248544 () Bool)

(declare-fun e!4339659 () Bool)

(assert (=> d!2248544 e!4339659))

(declare-fun res!2936519 () Bool)

(assert (=> d!2248544 (=> (not res!2936519) (not e!4339659))))

(declare-fun lt!2577608 () List!70224)

(declare-fun noDuplicate!2947 (List!70224) Bool)

(assert (=> d!2248544 (= res!2936519 (noDuplicate!2947 lt!2577608))))

(declare-fun choose!55705 ((Set Context!14956)) List!70224)

(assert (=> d!2248544 (= lt!2577608 (choose!55705 lt!2577434))))

(assert (=> d!2248544 (= (toList!11395 lt!2577434) lt!2577608)))

(declare-fun b!7238442 () Bool)

(assert (=> b!7238442 (= e!4339659 (= (content!14463 lt!2577608) lt!2577434))))

(assert (= (and d!2248544 res!2936519) b!7238442))

(declare-fun m!7910648 () Bool)

(assert (=> d!2248544 m!7910648))

(declare-fun m!7910650 () Bool)

(assert (=> d!2248544 m!7910650))

(declare-fun m!7910652 () Bool)

(assert (=> b!7238442 m!7910652))

(assert (=> b!7238267 d!2248544))

(declare-fun b!7238446 () Bool)

(declare-fun lt!2577609 () List!70222)

(declare-fun e!4339660 () Bool)

(assert (=> b!7238446 (= e!4339660 (or (not (= (exprs!7978 ct2!328) Nil!70098)) (= lt!2577609 (exprs!7978 ct1!232))))))

(declare-fun d!2248546 () Bool)

(assert (=> d!2248546 e!4339660))

(declare-fun res!2936520 () Bool)

(assert (=> d!2248546 (=> (not res!2936520) (not e!4339660))))

(assert (=> d!2248546 (= res!2936520 (= (content!14461 lt!2577609) (set.union (content!14461 (exprs!7978 ct1!232)) (content!14461 (exprs!7978 ct2!328)))))))

(declare-fun e!4339661 () List!70222)

(assert (=> d!2248546 (= lt!2577609 e!4339661)))

(declare-fun c!1343788 () Bool)

(assert (=> d!2248546 (= c!1343788 (is-Nil!70098 (exprs!7978 ct1!232)))))

(assert (=> d!2248546 (= (++!16376 (exprs!7978 ct1!232) (exprs!7978 ct2!328)) lt!2577609)))

(declare-fun b!7238444 () Bool)

(assert (=> b!7238444 (= e!4339661 (Cons!70098 (h!76546 (exprs!7978 ct1!232)) (++!16376 (t!384273 (exprs!7978 ct1!232)) (exprs!7978 ct2!328))))))

(declare-fun b!7238445 () Bool)

(declare-fun res!2936521 () Bool)

(assert (=> b!7238445 (=> (not res!2936521) (not e!4339660))))

(assert (=> b!7238445 (= res!2936521 (= (size!41608 lt!2577609) (+ (size!41608 (exprs!7978 ct1!232)) (size!41608 (exprs!7978 ct2!328)))))))

(declare-fun b!7238443 () Bool)

(assert (=> b!7238443 (= e!4339661 (exprs!7978 ct2!328))))

(assert (= (and d!2248546 c!1343788) b!7238443))

(assert (= (and d!2248546 (not c!1343788)) b!7238444))

(assert (= (and d!2248546 res!2936520) b!7238445))

(assert (= (and b!7238445 res!2936521) b!7238446))

(declare-fun m!7910654 () Bool)

(assert (=> d!2248546 m!7910654))

(declare-fun m!7910656 () Bool)

(assert (=> d!2248546 m!7910656))

(assert (=> d!2248546 m!7910482))

(declare-fun m!7910658 () Bool)

(assert (=> b!7238444 m!7910658))

(declare-fun m!7910660 () Bool)

(assert (=> b!7238445 m!7910660))

(declare-fun m!7910662 () Bool)

(assert (=> b!7238445 m!7910662))

(assert (=> b!7238445 m!7910490))

(assert (=> b!7238265 d!2248546))

(assert (=> b!7238265 d!2248510))

(declare-fun d!2248548 () Bool)

(declare-fun res!2936522 () Bool)

(declare-fun e!4339662 () Bool)

(assert (=> d!2248548 (=> res!2936522 e!4339662)))

(assert (=> d!2248548 (= res!2936522 (is-Nil!70098 (exprs!7978 ct2!328)))))

(assert (=> d!2248548 (= (forall!17375 (exprs!7978 ct2!328) lambda!440986) e!4339662)))

(declare-fun b!7238447 () Bool)

(declare-fun e!4339663 () Bool)

(assert (=> b!7238447 (= e!4339662 e!4339663)))

(declare-fun res!2936523 () Bool)

(assert (=> b!7238447 (=> (not res!2936523) (not e!4339663))))

(assert (=> b!7238447 (= res!2936523 (dynLambda!28609 lambda!440986 (h!76546 (exprs!7978 ct2!328))))))

(declare-fun b!7238448 () Bool)

(assert (=> b!7238448 (= e!4339663 (forall!17375 (t!384273 (exprs!7978 ct2!328)) lambda!440986))))

(assert (= (and d!2248548 (not res!2936522)) b!7238447))

(assert (= (and b!7238447 res!2936523) b!7238448))

(declare-fun b_lambda!277603 () Bool)

(assert (=> (not b_lambda!277603) (not b!7238447)))

(declare-fun m!7910664 () Bool)

(assert (=> b!7238447 m!7910664))

(declare-fun m!7910666 () Bool)

(assert (=> b!7238448 m!7910666))

(assert (=> b!7238266 d!2248548))

(declare-fun d!2248550 () Bool)

(declare-fun c!1343789 () Bool)

(assert (=> d!2248550 (= c!1343789 (isEmpty!40399 lt!2577433))))

(declare-fun e!4339664 () Bool)

(assert (=> d!2248550 (= (matchZipper!3448 lt!2577451 lt!2577433) e!4339664)))

(declare-fun b!7238449 () Bool)

(assert (=> b!7238449 (= e!4339664 (nullableZipper!2838 lt!2577451))))

(declare-fun b!7238450 () Bool)

(assert (=> b!7238450 (= e!4339664 (matchZipper!3448 (derivationStepZipper!3330 lt!2577451 (head!14827 lt!2577433)) (tail!14186 lt!2577433)))))

(assert (= (and d!2248550 c!1343789) b!7238449))

(assert (= (and d!2248550 (not c!1343789)) b!7238450))

(assert (=> d!2248550 m!7910508))

(declare-fun m!7910668 () Bool)

(assert (=> b!7238449 m!7910668))

(assert (=> b!7238450 m!7910512))

(assert (=> b!7238450 m!7910512))

(declare-fun m!7910670 () Bool)

(assert (=> b!7238450 m!7910670))

(assert (=> b!7238450 m!7910516))

(assert (=> b!7238450 m!7910670))

(assert (=> b!7238450 m!7910516))

(declare-fun m!7910672 () Bool)

(assert (=> b!7238450 m!7910672))

(assert (=> b!7238264 d!2248550))

(declare-fun b!7238451 () Bool)

(declare-fun e!4339667 () (Set Context!14956))

(declare-fun call!659126 () (Set Context!14956))

(assert (=> b!7238451 (= e!4339667 call!659126)))

(declare-fun d!2248552 () Bool)

(declare-fun c!1343791 () Bool)

(declare-fun e!4339665 () Bool)

(assert (=> d!2248552 (= c!1343791 e!4339665)))

(declare-fun res!2936524 () Bool)

(assert (=> d!2248552 (=> (not res!2936524) (not e!4339665))))

(assert (=> d!2248552 (= res!2936524 (is-Cons!70098 (exprs!7978 lt!2577441)))))

(declare-fun e!4339666 () (Set Context!14956))

(assert (=> d!2248552 (= (derivationStepZipperUp!2412 lt!2577441 (h!76547 s1!1971)) e!4339666)))

(declare-fun b!7238452 () Bool)

(assert (=> b!7238452 (= e!4339666 e!4339667)))

(declare-fun c!1343790 () Bool)

(assert (=> b!7238452 (= c!1343790 (is-Cons!70098 (exprs!7978 lt!2577441)))))

(declare-fun b!7238453 () Bool)

(assert (=> b!7238453 (= e!4339667 (as set.empty (Set Context!14956)))))

(declare-fun b!7238454 () Bool)

(assert (=> b!7238454 (= e!4339665 (nullable!7851 (h!76546 (exprs!7978 lt!2577441))))))

(declare-fun b!7238455 () Bool)

(assert (=> b!7238455 (= e!4339666 (set.union call!659126 (derivationStepZipperUp!2412 (Context!14957 (t!384273 (exprs!7978 lt!2577441))) (h!76547 s1!1971))))))

(declare-fun bm!659121 () Bool)

(assert (=> bm!659121 (= call!659126 (derivationStepZipperDown!2582 (h!76546 (exprs!7978 lt!2577441)) (Context!14957 (t!384273 (exprs!7978 lt!2577441))) (h!76547 s1!1971)))))

(assert (= (and d!2248552 res!2936524) b!7238454))

(assert (= (and d!2248552 c!1343791) b!7238455))

(assert (= (and d!2248552 (not c!1343791)) b!7238452))

(assert (= (and b!7238452 c!1343790) b!7238451))

(assert (= (and b!7238452 (not c!1343790)) b!7238453))

(assert (= (or b!7238455 b!7238451) bm!659121))

(declare-fun m!7910674 () Bool)

(assert (=> b!7238454 m!7910674))

(declare-fun m!7910676 () Bool)

(assert (=> b!7238455 m!7910676))

(declare-fun m!7910678 () Bool)

(assert (=> bm!659121 m!7910678))

(assert (=> b!7238264 d!2248552))

(declare-fun e!4339670 () Bool)

(declare-fun d!2248554 () Bool)

(assert (=> d!2248554 (= (matchZipper!3448 (set.union lt!2577435 lt!2577430) (t!384274 s1!1971)) e!4339670)))

(declare-fun res!2936527 () Bool)

(assert (=> d!2248554 (=> res!2936527 e!4339670)))

(assert (=> d!2248554 (= res!2936527 (matchZipper!3448 lt!2577435 (t!384274 s1!1971)))))

(declare-fun lt!2577612 () Unit!163626)

(declare-fun choose!55706 ((Set Context!14956) (Set Context!14956) List!70223) Unit!163626)

(assert (=> d!2248554 (= lt!2577612 (choose!55706 lt!2577435 lt!2577430 (t!384274 s1!1971)))))

(assert (=> d!2248554 (= (lemmaZipperConcatMatchesSameAsBothZippers!1685 lt!2577435 lt!2577430 (t!384274 s1!1971)) lt!2577612)))

(declare-fun b!7238458 () Bool)

(assert (=> b!7238458 (= e!4339670 (matchZipper!3448 lt!2577430 (t!384274 s1!1971)))))

(assert (= (and d!2248554 (not res!2936527)) b!7238458))

(assert (=> d!2248554 m!7910324))

(assert (=> d!2248554 m!7910318))

(declare-fun m!7910680 () Bool)

(assert (=> d!2248554 m!7910680))

(assert (=> b!7238458 m!7910308))

(assert (=> b!7238264 d!2248554))

(assert (=> b!7238264 d!2248510))

(declare-fun d!2248556 () Bool)

(declare-fun c!1343792 () Bool)

(assert (=> d!2248556 (= c!1343792 (isEmpty!40399 (t!384274 s1!1971)))))

(declare-fun e!4339671 () Bool)

(assert (=> d!2248556 (= (matchZipper!3448 lt!2577435 (t!384274 s1!1971)) e!4339671)))

(declare-fun b!7238459 () Bool)

(assert (=> b!7238459 (= e!4339671 (nullableZipper!2838 lt!2577435))))

(declare-fun b!7238460 () Bool)

(assert (=> b!7238460 (= e!4339671 (matchZipper!3448 (derivationStepZipper!3330 lt!2577435 (head!14827 (t!384274 s1!1971))) (tail!14186 (t!384274 s1!1971))))))

(assert (= (and d!2248556 c!1343792) b!7238459))

(assert (= (and d!2248556 (not c!1343792)) b!7238460))

(assert (=> d!2248556 m!7910460))

(declare-fun m!7910682 () Bool)

(assert (=> b!7238459 m!7910682))

(assert (=> b!7238460 m!7910464))

(assert (=> b!7238460 m!7910464))

(declare-fun m!7910684 () Bool)

(assert (=> b!7238460 m!7910684))

(assert (=> b!7238460 m!7910468))

(assert (=> b!7238460 m!7910684))

(assert (=> b!7238460 m!7910468))

(declare-fun m!7910686 () Bool)

(assert (=> b!7238460 m!7910686))

(assert (=> b!7238264 d!2248556))

(declare-fun d!2248558 () Bool)

(declare-fun c!1343793 () Bool)

(assert (=> d!2248558 (= c!1343793 (isEmpty!40399 lt!2577433))))

(declare-fun e!4339672 () Bool)

(assert (=> d!2248558 (= (matchZipper!3448 (set.union lt!2577451 lt!2577432) lt!2577433) e!4339672)))

(declare-fun b!7238461 () Bool)

(assert (=> b!7238461 (= e!4339672 (nullableZipper!2838 (set.union lt!2577451 lt!2577432)))))

(declare-fun b!7238462 () Bool)

(assert (=> b!7238462 (= e!4339672 (matchZipper!3448 (derivationStepZipper!3330 (set.union lt!2577451 lt!2577432) (head!14827 lt!2577433)) (tail!14186 lt!2577433)))))

(assert (= (and d!2248558 c!1343793) b!7238461))

(assert (= (and d!2248558 (not c!1343793)) b!7238462))

(assert (=> d!2248558 m!7910508))

(declare-fun m!7910688 () Bool)

(assert (=> b!7238461 m!7910688))

(assert (=> b!7238462 m!7910512))

(assert (=> b!7238462 m!7910512))

(declare-fun m!7910690 () Bool)

(assert (=> b!7238462 m!7910690))

(assert (=> b!7238462 m!7910516))

(assert (=> b!7238462 m!7910690))

(assert (=> b!7238462 m!7910516))

(declare-fun m!7910692 () Bool)

(assert (=> b!7238462 m!7910692))

(assert (=> b!7238264 d!2248558))

(declare-fun d!2248560 () Bool)

(declare-fun c!1343794 () Bool)

(assert (=> d!2248560 (= c!1343794 (isEmpty!40399 (t!384274 s1!1971)))))

(declare-fun e!4339673 () Bool)

(assert (=> d!2248560 (= (matchZipper!3448 (set.union lt!2577435 lt!2577430) (t!384274 s1!1971)) e!4339673)))

(declare-fun b!7238463 () Bool)

(assert (=> b!7238463 (= e!4339673 (nullableZipper!2838 (set.union lt!2577435 lt!2577430)))))

(declare-fun b!7238464 () Bool)

(assert (=> b!7238464 (= e!4339673 (matchZipper!3448 (derivationStepZipper!3330 (set.union lt!2577435 lt!2577430) (head!14827 (t!384274 s1!1971))) (tail!14186 (t!384274 s1!1971))))))

(assert (= (and d!2248560 c!1343794) b!7238463))

(assert (= (and d!2248560 (not c!1343794)) b!7238464))

(assert (=> d!2248560 m!7910460))

(declare-fun m!7910694 () Bool)

(assert (=> b!7238463 m!7910694))

(assert (=> b!7238464 m!7910464))

(assert (=> b!7238464 m!7910464))

(declare-fun m!7910696 () Bool)

(assert (=> b!7238464 m!7910696))

(assert (=> b!7238464 m!7910468))

(assert (=> b!7238464 m!7910696))

(assert (=> b!7238464 m!7910468))

(declare-fun m!7910698 () Bool)

(assert (=> b!7238464 m!7910698))

(assert (=> b!7238264 d!2248560))

(declare-fun d!2248562 () Bool)

(declare-fun e!4339674 () Bool)

(assert (=> d!2248562 (= (matchZipper!3448 (set.union lt!2577451 lt!2577432) lt!2577433) e!4339674)))

(declare-fun res!2936528 () Bool)

(assert (=> d!2248562 (=> res!2936528 e!4339674)))

(assert (=> d!2248562 (= res!2936528 (matchZipper!3448 lt!2577451 lt!2577433))))

(declare-fun lt!2577613 () Unit!163626)

(assert (=> d!2248562 (= lt!2577613 (choose!55706 lt!2577451 lt!2577432 lt!2577433))))

(assert (=> d!2248562 (= (lemmaZipperConcatMatchesSameAsBothZippers!1685 lt!2577451 lt!2577432 lt!2577433) lt!2577613)))

(declare-fun b!7238465 () Bool)

(assert (=> b!7238465 (= e!4339674 (matchZipper!3448 lt!2577432 lt!2577433))))

(assert (= (and d!2248562 (not res!2936528)) b!7238465))

(assert (=> d!2248562 m!7910320))

(assert (=> d!2248562 m!7910316))

(declare-fun m!7910700 () Bool)

(assert (=> d!2248562 m!7910700))

(assert (=> b!7238465 m!7910348))

(assert (=> b!7238264 d!2248562))

(declare-fun b!7238466 () Bool)

(declare-fun e!4339677 () (Set Context!14956))

(declare-fun call!659127 () (Set Context!14956))

(assert (=> b!7238466 (= e!4339677 call!659127)))

(declare-fun d!2248564 () Bool)

(declare-fun c!1343796 () Bool)

(declare-fun e!4339675 () Bool)

(assert (=> d!2248564 (= c!1343796 e!4339675)))

(declare-fun res!2936529 () Bool)

(assert (=> d!2248564 (=> (not res!2936529) (not e!4339675))))

(assert (=> d!2248564 (= res!2936529 (is-Cons!70098 (exprs!7978 lt!2577455)))))

(declare-fun e!4339676 () (Set Context!14956))

(assert (=> d!2248564 (= (derivationStepZipperUp!2412 lt!2577455 (h!76547 s1!1971)) e!4339676)))

(declare-fun b!7238467 () Bool)

(assert (=> b!7238467 (= e!4339676 e!4339677)))

(declare-fun c!1343795 () Bool)

(assert (=> b!7238467 (= c!1343795 (is-Cons!70098 (exprs!7978 lt!2577455)))))

(declare-fun b!7238468 () Bool)

(assert (=> b!7238468 (= e!4339677 (as set.empty (Set Context!14956)))))

(declare-fun b!7238469 () Bool)

(assert (=> b!7238469 (= e!4339675 (nullable!7851 (h!76546 (exprs!7978 lt!2577455))))))

(declare-fun b!7238470 () Bool)

(assert (=> b!7238470 (= e!4339676 (set.union call!659127 (derivationStepZipperUp!2412 (Context!14957 (t!384273 (exprs!7978 lt!2577455))) (h!76547 s1!1971))))))

(declare-fun bm!659122 () Bool)

(assert (=> bm!659122 (= call!659127 (derivationStepZipperDown!2582 (h!76546 (exprs!7978 lt!2577455)) (Context!14957 (t!384273 (exprs!7978 lt!2577455))) (h!76547 s1!1971)))))

(assert (= (and d!2248564 res!2936529) b!7238469))

(assert (= (and d!2248564 c!1343796) b!7238470))

(assert (= (and d!2248564 (not c!1343796)) b!7238467))

(assert (= (and b!7238467 c!1343795) b!7238466))

(assert (= (and b!7238467 (not c!1343795)) b!7238468))

(assert (= (or b!7238470 b!7238466) bm!659122))

(declare-fun m!7910702 () Bool)

(assert (=> b!7238469 m!7910702))

(declare-fun m!7910704 () Bool)

(assert (=> b!7238470 m!7910704))

(declare-fun m!7910706 () Bool)

(assert (=> bm!659122 m!7910706))

(assert (=> b!7238264 d!2248564))

(declare-fun d!2248566 () Bool)

(assert (=> d!2248566 (= (tail!14187 (exprs!7978 ct1!232)) (t!384273 (exprs!7978 ct1!232)))))

(assert (=> b!7238273 d!2248566))

(declare-fun b!7238471 () Bool)

(declare-fun e!4339680 () (Set Context!14956))

(assert (=> b!7238471 (= e!4339680 (set.insert lt!2577455 (as set.empty (Set Context!14956))))))

(declare-fun bm!659123 () Bool)

(declare-fun call!659133 () (Set Context!14956))

(declare-fun call!659131 () (Set Context!14956))

(assert (=> bm!659123 (= call!659133 call!659131)))

(declare-fun b!7238472 () Bool)

(declare-fun e!4339679 () (Set Context!14956))

(assert (=> b!7238472 (= e!4339679 (as set.empty (Set Context!14956)))))

(declare-fun bm!659124 () Bool)

(declare-fun c!1343798 () Bool)

(declare-fun call!659130 () List!70222)

(declare-fun call!659128 () (Set Context!14956))

(assert (=> bm!659124 (= call!659128 (derivationStepZipperDown!2582 (ite c!1343798 (regTwo!37589 (h!76546 (exprs!7978 ct1!232))) (regOne!37588 (h!76546 (exprs!7978 ct1!232)))) (ite c!1343798 lt!2577455 (Context!14957 call!659130)) (h!76547 s1!1971)))))

(declare-fun b!7238473 () Bool)

(declare-fun c!1343800 () Bool)

(declare-fun e!4339678 () Bool)

(assert (=> b!7238473 (= c!1343800 e!4339678)))

(declare-fun res!2936530 () Bool)

(assert (=> b!7238473 (=> (not res!2936530) (not e!4339678))))

(assert (=> b!7238473 (= res!2936530 (is-Concat!27383 (h!76546 (exprs!7978 ct1!232))))))

(declare-fun e!4339682 () (Set Context!14956))

(declare-fun e!4339681 () (Set Context!14956))

(assert (=> b!7238473 (= e!4339682 e!4339681)))

(declare-fun bm!659125 () Bool)

(declare-fun c!1343801 () Bool)

(assert (=> bm!659125 (= call!659130 ($colon$colon!2885 (exprs!7978 lt!2577455) (ite (or c!1343800 c!1343801) (regTwo!37588 (h!76546 (exprs!7978 ct1!232))) (h!76546 (exprs!7978 ct1!232)))))))

(declare-fun b!7238474 () Bool)

(declare-fun e!4339683 () (Set Context!14956))

(assert (=> b!7238474 (= e!4339681 e!4339683)))

(assert (=> b!7238474 (= c!1343801 (is-Concat!27383 (h!76546 (exprs!7978 ct1!232))))))

(declare-fun b!7238475 () Bool)

(declare-fun call!659132 () (Set Context!14956))

(assert (=> b!7238475 (= e!4339683 call!659132)))

(declare-fun bm!659126 () Bool)

(assert (=> bm!659126 (= call!659132 call!659133)))

(declare-fun b!7238476 () Bool)

(assert (=> b!7238476 (= e!4339678 (nullable!7851 (regOne!37588 (h!76546 (exprs!7978 ct1!232)))))))

(declare-fun b!7238477 () Bool)

(assert (=> b!7238477 (= e!4339681 (set.union call!659128 call!659133))))

(declare-fun b!7238478 () Bool)

(declare-fun c!1343799 () Bool)

(assert (=> b!7238478 (= c!1343799 (is-Star!18538 (h!76546 (exprs!7978 ct1!232))))))

(assert (=> b!7238478 (= e!4339683 e!4339679)))

(declare-fun bm!659127 () Bool)

(declare-fun call!659129 () List!70222)

(assert (=> bm!659127 (= call!659129 call!659130)))

(declare-fun b!7238479 () Bool)

(assert (=> b!7238479 (= e!4339679 call!659132)))

(declare-fun b!7238480 () Bool)

(assert (=> b!7238480 (= e!4339680 e!4339682)))

(assert (=> b!7238480 (= c!1343798 (is-Union!18538 (h!76546 (exprs!7978 ct1!232))))))

(declare-fun bm!659128 () Bool)

(assert (=> bm!659128 (= call!659131 (derivationStepZipperDown!2582 (ite c!1343798 (regOne!37589 (h!76546 (exprs!7978 ct1!232))) (ite c!1343800 (regTwo!37588 (h!76546 (exprs!7978 ct1!232))) (ite c!1343801 (regOne!37588 (h!76546 (exprs!7978 ct1!232))) (reg!18867 (h!76546 (exprs!7978 ct1!232)))))) (ite (or c!1343798 c!1343800) lt!2577455 (Context!14957 call!659129)) (h!76547 s1!1971)))))

(declare-fun d!2248568 () Bool)

(declare-fun c!1343797 () Bool)

(assert (=> d!2248568 (= c!1343797 (and (is-ElementMatch!18538 (h!76546 (exprs!7978 ct1!232))) (= (c!1343731 (h!76546 (exprs!7978 ct1!232))) (h!76547 s1!1971))))))

(assert (=> d!2248568 (= (derivationStepZipperDown!2582 (h!76546 (exprs!7978 ct1!232)) lt!2577455 (h!76547 s1!1971)) e!4339680)))

(declare-fun b!7238481 () Bool)

(assert (=> b!7238481 (= e!4339682 (set.union call!659131 call!659128))))

(assert (= (and d!2248568 c!1343797) b!7238471))

(assert (= (and d!2248568 (not c!1343797)) b!7238480))

(assert (= (and b!7238480 c!1343798) b!7238481))

(assert (= (and b!7238480 (not c!1343798)) b!7238473))

(assert (= (and b!7238473 res!2936530) b!7238476))

(assert (= (and b!7238473 c!1343800) b!7238477))

(assert (= (and b!7238473 (not c!1343800)) b!7238474))

(assert (= (and b!7238474 c!1343801) b!7238475))

(assert (= (and b!7238474 (not c!1343801)) b!7238478))

(assert (= (and b!7238478 c!1343799) b!7238479))

(assert (= (and b!7238478 (not c!1343799)) b!7238472))

(assert (= (or b!7238475 b!7238479) bm!659127))

(assert (= (or b!7238475 b!7238479) bm!659126))

(assert (= (or b!7238477 bm!659127) bm!659125))

(assert (= (or b!7238477 bm!659126) bm!659123))

(assert (= (or b!7238481 b!7238477) bm!659124))

(assert (= (or b!7238481 bm!659123) bm!659128))

(declare-fun m!7910708 () Bool)

(assert (=> bm!659124 m!7910708))

(declare-fun m!7910710 () Bool)

(assert (=> b!7238471 m!7910710))

(declare-fun m!7910712 () Bool)

(assert (=> bm!659128 m!7910712))

(assert (=> b!7238476 m!7910602))

(declare-fun m!7910714 () Bool)

(assert (=> bm!659125 m!7910714))

(assert (=> b!7238273 d!2248568))

(assert (=> b!7238273 d!2248510))

(declare-fun d!2248570 () Bool)

(assert (=> d!2248570 (= (isEmpty!40397 lt!2577427) (is-Nil!70098 lt!2577427))))

(assert (=> b!7238273 d!2248570))

(assert (=> b!7238273 d!2248530))

(declare-fun d!2248572 () Bool)

(declare-fun c!1343802 () Bool)

(assert (=> d!2248572 (= c!1343802 (isEmpty!40399 lt!2577433))))

(declare-fun e!4339684 () Bool)

(assert (=> d!2248572 (= (matchZipper!3448 lt!2577432 lt!2577433) e!4339684)))

(declare-fun b!7238482 () Bool)

(assert (=> b!7238482 (= e!4339684 (nullableZipper!2838 lt!2577432))))

(declare-fun b!7238483 () Bool)

(assert (=> b!7238483 (= e!4339684 (matchZipper!3448 (derivationStepZipper!3330 lt!2577432 (head!14827 lt!2577433)) (tail!14186 lt!2577433)))))

(assert (= (and d!2248572 c!1343802) b!7238482))

(assert (= (and d!2248572 (not c!1343802)) b!7238483))

(assert (=> d!2248572 m!7910508))

(declare-fun m!7910716 () Bool)

(assert (=> b!7238482 m!7910716))

(assert (=> b!7238483 m!7910512))

(assert (=> b!7238483 m!7910512))

(declare-fun m!7910718 () Bool)

(assert (=> b!7238483 m!7910718))

(assert (=> b!7238483 m!7910516))

(assert (=> b!7238483 m!7910718))

(assert (=> b!7238483 m!7910516))

(declare-fun m!7910720 () Bool)

(assert (=> b!7238483 m!7910720))

(assert (=> b!7238274 d!2248572))

(declare-fun b!7238488 () Bool)

(declare-fun e!4339687 () Bool)

(declare-fun tp!2034915 () Bool)

(assert (=> b!7238488 (= e!4339687 (and tp_is_empty!46541 tp!2034915))))

(assert (=> b!7238263 (= tp!2034897 e!4339687)))

(assert (= (and b!7238263 (is-Cons!70099 (t!384274 s2!1849))) b!7238488))

(declare-fun b!7238489 () Bool)

(declare-fun e!4339688 () Bool)

(declare-fun tp!2034916 () Bool)

(assert (=> b!7238489 (= e!4339688 (and tp_is_empty!46541 tp!2034916))))

(assert (=> b!7238261 (= tp!2034900 e!4339688)))

(assert (= (and b!7238261 (is-Cons!70099 (t!384274 s1!1971))) b!7238489))

(declare-fun b!7238494 () Bool)

(declare-fun e!4339691 () Bool)

(declare-fun tp!2034921 () Bool)

(declare-fun tp!2034922 () Bool)

(assert (=> b!7238494 (= e!4339691 (and tp!2034921 tp!2034922))))

(assert (=> b!7238272 (= tp!2034899 e!4339691)))

(assert (= (and b!7238272 (is-Cons!70098 (exprs!7978 ct1!232))) b!7238494))

(declare-fun b!7238495 () Bool)

(declare-fun e!4339692 () Bool)

(declare-fun tp!2034923 () Bool)

(declare-fun tp!2034924 () Bool)

(assert (=> b!7238495 (= e!4339692 (and tp!2034923 tp!2034924))))

(assert (=> b!7238262 (= tp!2034898 e!4339692)))

(assert (= (and b!7238262 (is-Cons!70098 (exprs!7978 ct2!328))) b!7238495))

(declare-fun b_lambda!277605 () Bool)

(assert (= b_lambda!277597 (or b!7238269 b_lambda!277605)))

(declare-fun bs!1903702 () Bool)

(declare-fun d!2248574 () Bool)

(assert (= bs!1903702 (and d!2248574 b!7238269)))

(assert (=> bs!1903702 (= (dynLambda!28608 lambda!440988 ct1!232) (derivationStepZipperUp!2412 ct1!232 (h!76547 s1!1971)))))

(assert (=> bs!1903702 m!7910264))

(assert (=> d!2248506 d!2248574))

(declare-fun b_lambda!277607 () Bool)

(assert (= b_lambda!277599 (or b!7238265 b_lambda!277607)))

(declare-fun bs!1903703 () Bool)

(declare-fun d!2248576 () Bool)

(assert (= bs!1903703 (and d!2248576 b!7238265)))

(declare-fun validRegex!9526 (Regex!18538) Bool)

(assert (=> bs!1903703 (= (dynLambda!28609 lambda!440986 (h!76546 (exprs!7978 lt!2577461))) (validRegex!9526 (h!76546 (exprs!7978 lt!2577461))))))

(declare-fun m!7910722 () Bool)

(assert (=> bs!1903703 m!7910722))

(assert (=> b!7238388 d!2248576))

(declare-fun b_lambda!277609 () Bool)

(assert (= b_lambda!277603 (or b!7238265 b_lambda!277609)))

(declare-fun bs!1903704 () Bool)

(declare-fun d!2248578 () Bool)

(assert (= bs!1903704 (and d!2248578 b!7238265)))

(assert (=> bs!1903704 (= (dynLambda!28609 lambda!440986 (h!76546 (exprs!7978 ct2!328))) (validRegex!9526 (h!76546 (exprs!7978 ct2!328))))))

(declare-fun m!7910724 () Bool)

(assert (=> bs!1903704 m!7910724))

(assert (=> b!7238447 d!2248578))

(declare-fun b_lambda!277611 () Bool)

(assert (= b_lambda!277601 (or b!7238269 b_lambda!277611)))

(declare-fun bs!1903705 () Bool)

(declare-fun d!2248580 () Bool)

(assert (= bs!1903705 (and d!2248580 b!7238269)))

(assert (=> bs!1903705 (= (dynLambda!28608 lambda!440988 lt!2577431) (derivationStepZipperUp!2412 lt!2577431 (h!76547 s1!1971)))))

(assert (=> bs!1903705 m!7910260))

(assert (=> d!2248514 d!2248580))

(declare-fun b_lambda!277613 () Bool)

(assert (= b_lambda!277595 (or b!7238267 b_lambda!277613)))

(declare-fun bs!1903706 () Bool)

(declare-fun d!2248582 () Bool)

(assert (= bs!1903706 (and d!2248582 b!7238267)))

(assert (=> bs!1903706 (= (dynLambda!28607 lambda!440987 lt!2577569) (matchZipper!3448 (set.insert lt!2577569 (as set.empty (Set Context!14956))) (t!384274 s1!1971)))))

(declare-fun m!7910726 () Bool)

(assert (=> bs!1903706 m!7910726))

(assert (=> bs!1903706 m!7910726))

(declare-fun m!7910728 () Bool)

(assert (=> bs!1903706 m!7910728))

(assert (=> d!2248484 d!2248582))

(push 1)

(assert (not b!7238460))

(assert (not d!2248544))

(assert (not b!7238476))

(assert (not b!7238366))

(assert (not b!7238463))

(assert (not b!7238430))

(assert (not d!2248542))

(assert (not b!7238464))

(assert (not d!2248558))

(assert (not b!7238431))

(assert (not b!7238389))

(assert (not d!2248572))

(assert (not b!7238489))

(assert (not b!7238382))

(assert (not b!7238458))

(assert (not b!7238459))

(assert (not bs!1903704))

(assert (not b!7238455))

(assert (not d!2248510))

(assert (not b!7238368))

(assert (not b!7238437))

(assert (not b!7238488))

(assert (not d!2248534))

(assert (not b!7238337))

(assert (not d!2248528))

(assert (not b_lambda!277611))

(assert (not d!2248494))

(assert (not b!7238448))

(assert (not bm!659101))

(assert (not d!2248504))

(assert (not d!2248506))

(assert (not b!7238392))

(assert (not d!2248562))

(assert (not d!2248536))

(assert (not bm!659122))

(assert (not b!7238445))

(assert (not bs!1903706))

(assert (not b!7238351))

(assert (not d!2248524))

(assert (not d!2248560))

(assert (not bm!659124))

(assert (not d!2248496))

(assert (not b_lambda!277607))

(assert (not b!7238379))

(assert (not b!7238380))

(assert (not b!7238449))

(assert (not bm!659116))

(assert (not b!7238421))

(assert (not b!7238369))

(assert (not b!7238442))

(assert (not b_lambda!277613))

(assert (not d!2248540))

(assert (not d!2248482))

(assert (not d!2248502))

(assert (not bs!1903702))

(assert (not b!7238391))

(assert (not bm!659120))

(assert (not b!7238482))

(assert (not b!7238454))

(assert (not d!2248490))

(assert (not b!7238433))

(assert (not b!7238350))

(assert (not d!2248554))

(assert (not d!2248516))

(assert (not bm!659121))

(assert tp_is_empty!46541)

(assert (not d!2248486))

(assert (not d!2248500))

(assert (not b!7238495))

(assert (not d!2248512))

(assert (not b!7238367))

(assert (not bm!659119))

(assert (not bm!659125))

(assert (not b!7238465))

(assert (not bs!1903703))

(assert (not d!2248498))

(assert (not b!7238494))

(assert (not d!2248546))

(assert (not d!2248484))

(assert (not bm!659128))

(assert (not d!2248514))

(assert (not b!7238436))

(assert (not b!7238462))

(assert (not b!7238444))

(assert (not b_lambda!277605))

(assert (not bm!659115))

(assert (not b!7238432))

(assert (not b!7238450))

(assert (not d!2248520))

(assert (not b!7238483))

(assert (not b!7238470))

(assert (not b!7238461))

(assert (not b!7238383))

(assert (not bs!1903705))

(assert (not d!2248556))

(assert (not d!2248532))

(assert (not b!7238469))

(assert (not b!7238336))

(assert (not d!2248538))

(assert (not d!2248550))

(assert (not b_lambda!277609))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

