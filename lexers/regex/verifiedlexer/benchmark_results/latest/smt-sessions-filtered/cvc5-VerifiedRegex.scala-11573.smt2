; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!639600 () Bool)

(assert start!639600)

(declare-fun b!6509469 () Bool)

(assert (=> b!6509469 true))

(assert (=> b!6509469 true))

(declare-fun lambda!361132 () Int)

(declare-fun lambda!361131 () Int)

(assert (=> b!6509469 (not (= lambda!361132 lambda!361131))))

(assert (=> b!6509469 true))

(assert (=> b!6509469 true))

(declare-fun b!6509470 () Bool)

(assert (=> b!6509470 true))

(declare-fun b!6509479 () Bool)

(assert (=> b!6509479 true))

(declare-datatypes ((C!33054 0))(
  ( (C!33055 (val!26229 Int)) )
))
(declare-datatypes ((Regex!16392 0))(
  ( (ElementMatch!16392 (c!1193956 C!33054)) (Concat!25237 (regOne!33296 Regex!16392) (regTwo!33296 Regex!16392)) (EmptyExpr!16392) (Star!16392 (reg!16721 Regex!16392)) (EmptyLang!16392) (Union!16392 (regOne!33297 Regex!16392) (regTwo!33297 Regex!16392)) )
))
(declare-datatypes ((List!65475 0))(
  ( (Nil!65351) (Cons!65351 (h!71799 Regex!16392) (t!379111 List!65475)) )
))
(declare-datatypes ((Context!11552 0))(
  ( (Context!11553 (exprs!6276 List!65475)) )
))
(declare-fun setElem!44410 () Context!11552)

(declare-fun e!3943968 () Bool)

(declare-fun setRes!44410 () Bool)

(declare-fun tp!1799893 () Bool)

(declare-fun setNonEmpty!44410 () Bool)

(declare-fun inv!84228 (Context!11552) Bool)

(assert (=> setNonEmpty!44410 (= setRes!44410 (and tp!1799893 (inv!84228 setElem!44410) e!3943968))))

(declare-fun z!1189 () (Set Context!11552))

(declare-fun setRest!44410 () (Set Context!11552))

(assert (=> setNonEmpty!44410 (= z!1189 (set.union (set.insert setElem!44410 (as set.empty (Set Context!11552))) setRest!44410))))

(declare-fun b!6509464 () Bool)

(declare-fun tp!1799896 () Bool)

(assert (=> b!6509464 (= e!3943968 tp!1799896)))

(declare-fun b!6509465 () Bool)

(declare-fun res!2673334 () Bool)

(declare-fun e!3943967 () Bool)

(assert (=> b!6509465 (=> res!2673334 e!3943967)))

(declare-datatypes ((List!65476 0))(
  ( (Nil!65352) (Cons!65352 (h!71800 C!33054) (t!379112 List!65476)) )
))
(declare-fun s!2326 () List!65476)

(declare-fun matchZipper!2404 ((Set Context!11552) List!65476) Bool)

(assert (=> b!6509465 (= res!2673334 (not (matchZipper!2404 z!1189 s!2326)))))

(declare-fun b!6509466 () Bool)

(declare-fun res!2673351 () Bool)

(declare-fun e!3943960 () Bool)

(assert (=> b!6509466 (=> res!2673351 e!3943960)))

(declare-datatypes ((List!65477 0))(
  ( (Nil!65353) (Cons!65353 (h!71801 Context!11552) (t!379113 List!65477)) )
))
(declare-fun zl!343 () List!65477)

(declare-fun isEmpty!37563 (List!65477) Bool)

(assert (=> b!6509466 (= res!2673351 (not (isEmpty!37563 (t!379113 zl!343))))))

(declare-fun b!6509467 () Bool)

(declare-fun res!2673326 () Bool)

(declare-fun e!3943963 () Bool)

(assert (=> b!6509467 (=> res!2673326 e!3943963)))

(declare-fun lt!2394093 () Context!11552)

(declare-fun lt!2394091 () Regex!16392)

(declare-fun unfocusZipper!2134 (List!65477) Regex!16392)

(assert (=> b!6509467 (= res!2673326 (not (= (unfocusZipper!2134 (Cons!65353 lt!2394093 Nil!65353)) lt!2394091)))))

(declare-fun e!3943962 () Bool)

(assert (=> b!6509469 (= e!3943960 e!3943962)))

(declare-fun res!2673321 () Bool)

(assert (=> b!6509469 (=> res!2673321 e!3943962)))

(declare-fun lt!2394106 () Bool)

(declare-fun lt!2394067 () Bool)

(assert (=> b!6509469 (= res!2673321 (or (not (= lt!2394067 lt!2394106)) (is-Nil!65352 s!2326)))))

(declare-fun Exists!3462 (Int) Bool)

(assert (=> b!6509469 (= (Exists!3462 lambda!361131) (Exists!3462 lambda!361132))))

(declare-datatypes ((Unit!158903 0))(
  ( (Unit!158904) )
))
(declare-fun lt!2394070 () Unit!158903)

(declare-fun r!7292 () Regex!16392)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1999 (Regex!16392 Regex!16392 List!65476) Unit!158903)

(assert (=> b!6509469 (= lt!2394070 (lemmaExistCutMatchRandMatchRSpecEquivalent!1999 (regOne!33296 r!7292) (regTwo!33296 r!7292) s!2326))))

(assert (=> b!6509469 (= lt!2394106 (Exists!3462 lambda!361131))))

(declare-datatypes ((tuple2!66742 0))(
  ( (tuple2!66743 (_1!36674 List!65476) (_2!36674 List!65476)) )
))
(declare-datatypes ((Option!16283 0))(
  ( (None!16282) (Some!16282 (v!52461 tuple2!66742)) )
))
(declare-fun isDefined!12986 (Option!16283) Bool)

(declare-fun findConcatSeparation!2697 (Regex!16392 Regex!16392 List!65476 List!65476 List!65476) Option!16283)

(assert (=> b!6509469 (= lt!2394106 (isDefined!12986 (findConcatSeparation!2697 (regOne!33296 r!7292) (regTwo!33296 r!7292) Nil!65352 s!2326 s!2326)))))

(declare-fun lt!2394108 () Unit!158903)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2461 (Regex!16392 Regex!16392 List!65476) Unit!158903)

(assert (=> b!6509469 (= lt!2394108 (lemmaFindConcatSeparationEquivalentToExists!2461 (regOne!33296 r!7292) (regTwo!33296 r!7292) s!2326))))

(declare-fun e!3943972 () Bool)

(assert (=> b!6509470 (= e!3943962 e!3943972)))

(declare-fun res!2673328 () Bool)

(assert (=> b!6509470 (=> res!2673328 e!3943972)))

(assert (=> b!6509470 (= res!2673328 (or (and (is-ElementMatch!16392 (regOne!33296 r!7292)) (= (c!1193956 (regOne!33296 r!7292)) (h!71800 s!2326))) (is-Union!16392 (regOne!33296 r!7292))))))

(declare-fun lt!2394096 () Unit!158903)

(declare-fun e!3943959 () Unit!158903)

(assert (=> b!6509470 (= lt!2394096 e!3943959)))

(declare-fun c!1193955 () Bool)

(declare-fun lt!2394109 () Bool)

(assert (=> b!6509470 (= c!1193955 lt!2394109)))

(declare-fun nullable!6385 (Regex!16392) Bool)

(assert (=> b!6509470 (= lt!2394109 (nullable!6385 (h!71799 (exprs!6276 (h!71801 zl!343)))))))

(declare-fun lambda!361133 () Int)

(declare-fun flatMap!1897 ((Set Context!11552) Int) (Set Context!11552))

(declare-fun derivationStepZipperUp!1566 (Context!11552 C!33054) (Set Context!11552))

(assert (=> b!6509470 (= (flatMap!1897 z!1189 lambda!361133) (derivationStepZipperUp!1566 (h!71801 zl!343) (h!71800 s!2326)))))

(declare-fun lt!2394069 () Unit!158903)

(declare-fun lemmaFlatMapOnSingletonSet!1423 ((Set Context!11552) Context!11552 Int) Unit!158903)

(assert (=> b!6509470 (= lt!2394069 (lemmaFlatMapOnSingletonSet!1423 z!1189 (h!71801 zl!343) lambda!361133))))

(declare-fun lt!2394087 () (Set Context!11552))

(declare-fun lt!2394074 () Context!11552)

(assert (=> b!6509470 (= lt!2394087 (derivationStepZipperUp!1566 lt!2394074 (h!71800 s!2326)))))

(declare-fun lt!2394107 () (Set Context!11552))

(declare-fun derivationStepZipperDown!1640 (Regex!16392 Context!11552 C!33054) (Set Context!11552))

(assert (=> b!6509470 (= lt!2394107 (derivationStepZipperDown!1640 (h!71799 (exprs!6276 (h!71801 zl!343))) lt!2394074 (h!71800 s!2326)))))

(assert (=> b!6509470 (= lt!2394074 (Context!11553 (t!379111 (exprs!6276 (h!71801 zl!343)))))))

(declare-fun lt!2394103 () (Set Context!11552))

(assert (=> b!6509470 (= lt!2394103 (derivationStepZipperUp!1566 (Context!11553 (Cons!65351 (h!71799 (exprs!6276 (h!71801 zl!343))) (t!379111 (exprs!6276 (h!71801 zl!343))))) (h!71800 s!2326)))))

(declare-fun b!6509471 () Bool)

(declare-fun e!3943956 () Bool)

(declare-fun e!3943971 () Bool)

(assert (=> b!6509471 (= e!3943956 e!3943971)))

(declare-fun res!2673325 () Bool)

(assert (=> b!6509471 (=> res!2673325 e!3943971)))

(assert (=> b!6509471 (= res!2673325 (not (= r!7292 lt!2394091)))))

(declare-fun lt!2394101 () Regex!16392)

(assert (=> b!6509471 (= lt!2394091 (Concat!25237 lt!2394101 (regTwo!33296 r!7292)))))

(declare-fun b!6509472 () Bool)

(declare-fun res!2673343 () Bool)

(assert (=> b!6509472 (=> res!2673343 e!3943956)))

(declare-fun lt!2394071 () Regex!16392)

(assert (=> b!6509472 (= res!2673343 (not (= lt!2394071 r!7292)))))

(declare-fun b!6509473 () Bool)

(declare-fun e!3943970 () Bool)

(declare-fun tp!1799894 () Bool)

(declare-fun tp!1799888 () Bool)

(assert (=> b!6509473 (= e!3943970 (and tp!1799894 tp!1799888))))

(declare-fun b!6509474 () Bool)

(declare-fun res!2673320 () Bool)

(assert (=> b!6509474 (=> res!2673320 e!3943972)))

(assert (=> b!6509474 (= res!2673320 (or (is-Concat!25237 (regOne!33296 r!7292)) (not (is-Star!16392 (regOne!33296 r!7292)))))))

(declare-fun b!6509475 () Bool)

(declare-fun tp!1799891 () Bool)

(assert (=> b!6509475 (= e!3943970 tp!1799891)))

(declare-fun b!6509476 () Bool)

(declare-fun res!2673352 () Bool)

(assert (=> b!6509476 (=> res!2673352 e!3943967)))

(assert (=> b!6509476 (= res!2673352 (not lt!2394109))))

(declare-fun b!6509477 () Bool)

(declare-fun e!3943958 () Bool)

(assert (=> b!6509477 (= e!3943972 e!3943958)))

(declare-fun res!2673330 () Bool)

(assert (=> b!6509477 (=> res!2673330 e!3943958)))

(declare-fun lt!2394090 () (Set Context!11552))

(assert (=> b!6509477 (= res!2673330 (not (= lt!2394107 lt!2394090)))))

(assert (=> b!6509477 (= lt!2394090 (derivationStepZipperDown!1640 (reg!16721 (regOne!33296 r!7292)) lt!2394093 (h!71800 s!2326)))))

(declare-fun lt!2394073 () List!65475)

(assert (=> b!6509477 (= lt!2394093 (Context!11553 lt!2394073))))

(assert (=> b!6509477 (= lt!2394073 (Cons!65351 lt!2394101 (t!379111 (exprs!6276 (h!71801 zl!343)))))))

(assert (=> b!6509477 (= lt!2394101 (Star!16392 (reg!16721 (regOne!33296 r!7292))))))

(declare-fun b!6509478 () Bool)

(declare-fun e!3943965 () Bool)

(declare-fun tp_is_empty!42037 () Bool)

(declare-fun tp!1799889 () Bool)

(assert (=> b!6509478 (= e!3943965 (and tp_is_empty!42037 tp!1799889))))

(declare-fun e!3943954 () Bool)

(declare-fun e!3943966 () Bool)

(assert (=> b!6509479 (= e!3943954 e!3943966)))

(declare-fun res!2673332 () Bool)

(assert (=> b!6509479 (=> res!2673332 e!3943966)))

(declare-fun lt!2394072 () (Set Context!11552))

(declare-fun lt!2394078 () (Set Context!11552))

(declare-fun appendTo!153 ((Set Context!11552) Context!11552) (Set Context!11552))

(assert (=> b!6509479 (= res!2673332 (not (= (appendTo!153 lt!2394072 lt!2394093) lt!2394078)))))

(declare-fun lambda!361134 () Int)

(declare-fun lt!2394085 () List!65475)

(declare-fun map!14897 ((Set Context!11552) Int) (Set Context!11552))

(declare-fun ++!14486 (List!65475 List!65475) List!65475)

(assert (=> b!6509479 (= (map!14897 lt!2394072 lambda!361134) (set.insert (Context!11553 (++!14486 lt!2394085 lt!2394073)) (as set.empty (Set Context!11552))))))

(declare-fun lt!2394081 () Unit!158903)

(declare-fun lambda!361135 () Int)

(declare-fun lemmaConcatPreservesForall!365 (List!65475 List!65475 Int) Unit!158903)

(assert (=> b!6509479 (= lt!2394081 (lemmaConcatPreservesForall!365 lt!2394085 lt!2394073 lambda!361135))))

(declare-fun lt!2394098 () Unit!158903)

(declare-fun lt!2394092 () Context!11552)

(declare-fun lemmaMapOnSingletonSet!175 ((Set Context!11552) Context!11552 Int) Unit!158903)

(assert (=> b!6509479 (= lt!2394098 (lemmaMapOnSingletonSet!175 lt!2394072 lt!2394092 lambda!361134))))

(declare-fun b!6509480 () Bool)

(declare-fun res!2673322 () Bool)

(declare-fun e!3943964 () Bool)

(assert (=> b!6509480 (=> res!2673322 e!3943964)))

(declare-fun lt!2394105 () tuple2!66742)

(assert (=> b!6509480 (= res!2673322 (not (matchZipper!2404 lt!2394072 (_1!36674 lt!2394105))))))

(declare-fun b!6509481 () Bool)

(assert (=> b!6509481 (= e!3943967 e!3943954)))

(declare-fun res!2673349 () Bool)

(assert (=> b!6509481 (=> res!2673349 e!3943954)))

(declare-fun e!3943955 () Bool)

(assert (=> b!6509481 (= res!2673349 e!3943955)))

(declare-fun res!2673340 () Bool)

(assert (=> b!6509481 (=> (not res!2673340) (not e!3943955))))

(declare-fun lt!2394083 () Bool)

(assert (=> b!6509481 (= res!2673340 (not lt!2394083))))

(assert (=> b!6509481 (= lt!2394083 (matchZipper!2404 lt!2394107 (t!379112 s!2326)))))

(declare-fun res!2673324 () Bool)

(declare-fun e!3943957 () Bool)

(assert (=> start!639600 (=> (not res!2673324) (not e!3943957))))

(declare-fun validRegex!8128 (Regex!16392) Bool)

(assert (=> start!639600 (= res!2673324 (validRegex!8128 r!7292))))

(assert (=> start!639600 e!3943957))

(assert (=> start!639600 e!3943970))

(declare-fun condSetEmpty!44410 () Bool)

(assert (=> start!639600 (= condSetEmpty!44410 (= z!1189 (as set.empty (Set Context!11552))))))

(assert (=> start!639600 setRes!44410))

(declare-fun e!3943950 () Bool)

(assert (=> start!639600 e!3943950))

(assert (=> start!639600 e!3943965))

(declare-fun b!6509468 () Bool)

(assert (=> b!6509468 (= e!3943955 (not (matchZipper!2404 lt!2394087 (t!379112 s!2326))))))

(declare-fun b!6509482 () Bool)

(declare-fun res!2673338 () Bool)

(assert (=> b!6509482 (=> res!2673338 e!3943960)))

(declare-fun generalisedUnion!2236 (List!65475) Regex!16392)

(declare-fun unfocusZipperList!1813 (List!65477) List!65475)

(assert (=> b!6509482 (= res!2673338 (not (= r!7292 (generalisedUnion!2236 (unfocusZipperList!1813 zl!343)))))))

(declare-fun b!6509483 () Bool)

(declare-fun Unit!158905 () Unit!158903)

(assert (=> b!6509483 (= e!3943959 Unit!158905)))

(declare-fun b!6509484 () Bool)

(assert (=> b!6509484 (= e!3943970 tp_is_empty!42037)))

(declare-fun b!6509485 () Bool)

(declare-fun Unit!158906 () Unit!158903)

(assert (=> b!6509485 (= e!3943959 Unit!158906)))

(declare-fun lt!2394079 () Unit!158903)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1223 ((Set Context!11552) (Set Context!11552) List!65476) Unit!158903)

(assert (=> b!6509485 (= lt!2394079 (lemmaZipperConcatMatchesSameAsBothZippers!1223 lt!2394107 lt!2394087 (t!379112 s!2326)))))

(declare-fun res!2673336 () Bool)

(assert (=> b!6509485 (= res!2673336 (matchZipper!2404 lt!2394107 (t!379112 s!2326)))))

(declare-fun e!3943953 () Bool)

(assert (=> b!6509485 (=> res!2673336 e!3943953)))

(assert (=> b!6509485 (= (matchZipper!2404 (set.union lt!2394107 lt!2394087) (t!379112 s!2326)) e!3943953)))

(declare-fun b!6509486 () Bool)

(declare-fun e!3943952 () Bool)

(assert (=> b!6509486 (= e!3943958 e!3943952)))

(declare-fun res!2673339 () Bool)

(assert (=> b!6509486 (=> res!2673339 e!3943952)))

(declare-fun lt!2394095 () (Set Context!11552))

(assert (=> b!6509486 (= res!2673339 (not (= lt!2394095 lt!2394090)))))

(declare-fun lt!2394102 () Context!11552)

(assert (=> b!6509486 (= (flatMap!1897 lt!2394078 lambda!361133) (derivationStepZipperUp!1566 lt!2394102 (h!71800 s!2326)))))

(declare-fun lt!2394100 () Unit!158903)

(assert (=> b!6509486 (= lt!2394100 (lemmaFlatMapOnSingletonSet!1423 lt!2394078 lt!2394102 lambda!361133))))

(declare-fun lt!2394086 () (Set Context!11552))

(assert (=> b!6509486 (= lt!2394086 (derivationStepZipperUp!1566 lt!2394102 (h!71800 s!2326)))))

(declare-fun derivationStepZipper!2358 ((Set Context!11552) C!33054) (Set Context!11552))

(assert (=> b!6509486 (= lt!2394095 (derivationStepZipper!2358 lt!2394078 (h!71800 s!2326)))))

(assert (=> b!6509486 (= lt!2394078 (set.insert lt!2394102 (as set.empty (Set Context!11552))))))

(assert (=> b!6509486 (= lt!2394102 (Context!11553 (Cons!65351 (reg!16721 (regOne!33296 r!7292)) lt!2394073)))))

(declare-fun setIsEmpty!44410 () Bool)

(assert (=> setIsEmpty!44410 setRes!44410))

(declare-fun b!6509487 () Bool)

(declare-fun res!2673348 () Bool)

(assert (=> b!6509487 (=> res!2673348 e!3943960)))

(assert (=> b!6509487 (= res!2673348 (not (is-Cons!65351 (exprs!6276 (h!71801 zl!343)))))))

(declare-fun b!6509488 () Bool)

(assert (=> b!6509488 (= e!3943953 (matchZipper!2404 lt!2394087 (t!379112 s!2326)))))

(declare-fun b!6509489 () Bool)

(declare-fun e!3943951 () Bool)

(assert (=> b!6509489 (= e!3943971 e!3943951)))

(declare-fun res!2673337 () Bool)

(assert (=> b!6509489 (=> res!2673337 e!3943951)))

(declare-fun lt!2394088 () Regex!16392)

(assert (=> b!6509489 (= res!2673337 (not (= (unfocusZipper!2134 (Cons!65353 lt!2394102 Nil!65353)) lt!2394088)))))

(assert (=> b!6509489 (= lt!2394088 (Concat!25237 (reg!16721 (regOne!33296 r!7292)) lt!2394091))))

(declare-fun b!6509490 () Bool)

(declare-fun res!2673323 () Bool)

(assert (=> b!6509490 (=> res!2673323 e!3943972)))

(declare-fun e!3943969 () Bool)

(assert (=> b!6509490 (= res!2673323 e!3943969)))

(declare-fun res!2673329 () Bool)

(assert (=> b!6509490 (=> (not res!2673329) (not e!3943969))))

(assert (=> b!6509490 (= res!2673329 (is-Concat!25237 (regOne!33296 r!7292)))))

(declare-fun b!6509491 () Bool)

(declare-fun res!2673333 () Bool)

(assert (=> b!6509491 (=> res!2673333 e!3943954)))

(declare-fun lt!2394075 () Bool)

(assert (=> b!6509491 (= res!2673333 (or (not lt!2394083) (not lt!2394075)))))

(declare-fun b!6509492 () Bool)

(declare-fun e!3943961 () Bool)

(declare-fun tp!1799895 () Bool)

(assert (=> b!6509492 (= e!3943961 tp!1799895)))

(declare-fun b!6509493 () Bool)

(declare-fun e!3943949 () Bool)

(assert (=> b!6509493 (= e!3943949 (not e!3943960))))

(declare-fun res!2673345 () Bool)

(assert (=> b!6509493 (=> res!2673345 e!3943960)))

(assert (=> b!6509493 (= res!2673345 (not (is-Cons!65353 zl!343)))))

(declare-fun matchRSpec!3493 (Regex!16392 List!65476) Bool)

(assert (=> b!6509493 (= lt!2394067 (matchRSpec!3493 r!7292 s!2326))))

(declare-fun matchR!8575 (Regex!16392 List!65476) Bool)

(assert (=> b!6509493 (= lt!2394067 (matchR!8575 r!7292 s!2326))))

(declare-fun lt!2394104 () Unit!158903)

(declare-fun mainMatchTheorem!3493 (Regex!16392 List!65476) Unit!158903)

(assert (=> b!6509493 (= lt!2394104 (mainMatchTheorem!3493 r!7292 s!2326))))

(declare-fun tp!1799890 () Bool)

(declare-fun b!6509494 () Bool)

(assert (=> b!6509494 (= e!3943950 (and (inv!84228 (h!71801 zl!343)) e!3943961 tp!1799890))))

(declare-fun b!6509495 () Bool)

(assert (=> b!6509495 (= e!3943964 (inv!84228 lt!2394092))))

(declare-fun lt!2394110 () List!65476)

(assert (=> b!6509495 (matchZipper!2404 (set.insert (Context!11553 (++!14486 lt!2394085 lt!2394073)) (as set.empty (Set Context!11552))) lt!2394110)))

(declare-fun lt!2394097 () Unit!158903)

(assert (=> b!6509495 (= lt!2394097 (lemmaConcatPreservesForall!365 lt!2394085 lt!2394073 lambda!361135))))

(declare-fun lt!2394082 () Unit!158903)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!173 (Context!11552 Context!11552 List!65476 List!65476) Unit!158903)

(assert (=> b!6509495 (= lt!2394082 (lemmaConcatenateContextMatchesConcatOfStrings!173 lt!2394092 lt!2394093 (_1!36674 lt!2394105) (_2!36674 lt!2394105)))))

(declare-fun b!6509496 () Bool)

(assert (=> b!6509496 (= e!3943969 (nullable!6385 (regOne!33296 (regOne!33296 r!7292))))))

(declare-fun b!6509497 () Bool)

(declare-fun res!2673335 () Bool)

(assert (=> b!6509497 (=> res!2673335 e!3943964)))

(declare-fun lt!2394077 () (Set Context!11552))

(assert (=> b!6509497 (= res!2673335 (not (matchZipper!2404 lt!2394077 (_2!36674 lt!2394105))))))

(declare-fun b!6509498 () Bool)

(assert (=> b!6509498 (= e!3943963 e!3943967)))

(declare-fun res!2673350 () Bool)

(assert (=> b!6509498 (=> res!2673350 e!3943967)))

(assert (=> b!6509498 (= res!2673350 lt!2394067)))

(assert (=> b!6509498 (= (matchR!8575 lt!2394088 s!2326) (matchRSpec!3493 lt!2394088 s!2326))))

(declare-fun lt!2394068 () Unit!158903)

(assert (=> b!6509498 (= lt!2394068 (mainMatchTheorem!3493 lt!2394088 s!2326))))

(declare-fun b!6509499 () Bool)

(declare-fun res!2673331 () Bool)

(assert (=> b!6509499 (=> res!2673331 e!3943960)))

(declare-fun generalisedConcat!1989 (List!65475) Regex!16392)

(assert (=> b!6509499 (= res!2673331 (not (= r!7292 (generalisedConcat!1989 (exprs!6276 (h!71801 zl!343))))))))

(declare-fun b!6509500 () Bool)

(declare-fun tp!1799887 () Bool)

(declare-fun tp!1799892 () Bool)

(assert (=> b!6509500 (= e!3943970 (and tp!1799887 tp!1799892))))

(declare-fun b!6509501 () Bool)

(declare-fun res!2673347 () Bool)

(assert (=> b!6509501 (=> (not res!2673347) (not e!3943957))))

(declare-fun toList!10176 ((Set Context!11552)) List!65477)

(assert (=> b!6509501 (= res!2673347 (= (toList!10176 z!1189) zl!343))))

(declare-fun b!6509502 () Bool)

(assert (=> b!6509502 (= e!3943957 e!3943949)))

(declare-fun res!2673341 () Bool)

(assert (=> b!6509502 (=> (not res!2673341) (not e!3943949))))

(assert (=> b!6509502 (= res!2673341 (= r!7292 lt!2394071))))

(assert (=> b!6509502 (= lt!2394071 (unfocusZipper!2134 zl!343))))

(declare-fun b!6509503 () Bool)

(assert (=> b!6509503 (= e!3943952 e!3943956)))

(declare-fun res!2673319 () Bool)

(assert (=> b!6509503 (=> res!2673319 e!3943956)))

(assert (=> b!6509503 (= res!2673319 (not (= lt!2394075 (matchZipper!2404 lt!2394095 (t!379112 s!2326)))))))

(assert (=> b!6509503 (= lt!2394075 (matchZipper!2404 lt!2394078 s!2326))))

(declare-fun b!6509504 () Bool)

(assert (=> b!6509504 (= e!3943966 e!3943964)))

(declare-fun res!2673342 () Bool)

(assert (=> b!6509504 (=> res!2673342 e!3943964)))

(assert (=> b!6509504 (= res!2673342 (not (= s!2326 lt!2394110)))))

(declare-fun ++!14487 (List!65476 List!65476) List!65476)

(assert (=> b!6509504 (= lt!2394110 (++!14487 (_1!36674 lt!2394105) (_2!36674 lt!2394105)))))

(declare-fun lt!2394076 () Option!16283)

(declare-fun get!22670 (Option!16283) tuple2!66742)

(assert (=> b!6509504 (= lt!2394105 (get!22670 lt!2394076))))

(assert (=> b!6509504 (isDefined!12986 lt!2394076)))

(declare-fun findConcatSeparationZippers!157 ((Set Context!11552) (Set Context!11552) List!65476 List!65476 List!65476) Option!16283)

(assert (=> b!6509504 (= lt!2394076 (findConcatSeparationZippers!157 lt!2394072 lt!2394077 Nil!65352 s!2326 s!2326))))

(declare-fun lt!2394094 () Unit!158903)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!157 ((Set Context!11552) Context!11552 List!65476) Unit!158903)

(assert (=> b!6509504 (= lt!2394094 (lemmaConcatZipperMatchesStringThenFindConcatDefined!157 lt!2394072 lt!2394093 s!2326))))

(declare-fun b!6509505 () Bool)

(assert (=> b!6509505 (= e!3943951 e!3943963)))

(declare-fun res!2673346 () Bool)

(assert (=> b!6509505 (=> res!2673346 e!3943963)))

(assert (=> b!6509505 (= res!2673346 (not (= (unfocusZipper!2134 (Cons!65353 lt!2394092 Nil!65353)) (reg!16721 (regOne!33296 r!7292)))))))

(assert (=> b!6509505 (= (flatMap!1897 lt!2394077 lambda!361133) (derivationStepZipperUp!1566 lt!2394093 (h!71800 s!2326)))))

(declare-fun lt!2394089 () Unit!158903)

(assert (=> b!6509505 (= lt!2394089 (lemmaFlatMapOnSingletonSet!1423 lt!2394077 lt!2394093 lambda!361133))))

(assert (=> b!6509505 (= (flatMap!1897 lt!2394072 lambda!361133) (derivationStepZipperUp!1566 lt!2394092 (h!71800 s!2326)))))

(declare-fun lt!2394080 () Unit!158903)

(assert (=> b!6509505 (= lt!2394080 (lemmaFlatMapOnSingletonSet!1423 lt!2394072 lt!2394092 lambda!361133))))

(declare-fun lt!2394099 () (Set Context!11552))

(assert (=> b!6509505 (= lt!2394099 (derivationStepZipperUp!1566 lt!2394093 (h!71800 s!2326)))))

(declare-fun lt!2394084 () (Set Context!11552))

(assert (=> b!6509505 (= lt!2394084 (derivationStepZipperUp!1566 lt!2394092 (h!71800 s!2326)))))

(assert (=> b!6509505 (= lt!2394077 (set.insert lt!2394093 (as set.empty (Set Context!11552))))))

(assert (=> b!6509505 (= lt!2394072 (set.insert lt!2394092 (as set.empty (Set Context!11552))))))

(assert (=> b!6509505 (= lt!2394092 (Context!11553 lt!2394085))))

(assert (=> b!6509505 (= lt!2394085 (Cons!65351 (reg!16721 (regOne!33296 r!7292)) Nil!65351))))

(declare-fun b!6509506 () Bool)

(declare-fun res!2673327 () Bool)

(assert (=> b!6509506 (=> res!2673327 e!3943962)))

(declare-fun isEmpty!37564 (List!65475) Bool)

(assert (=> b!6509506 (= res!2673327 (isEmpty!37564 (t!379111 (exprs!6276 (h!71801 zl!343)))))))

(declare-fun b!6509507 () Bool)

(declare-fun res!2673344 () Bool)

(assert (=> b!6509507 (=> res!2673344 e!3943960)))

(assert (=> b!6509507 (= res!2673344 (or (is-EmptyExpr!16392 r!7292) (is-EmptyLang!16392 r!7292) (is-ElementMatch!16392 r!7292) (is-Union!16392 r!7292) (not (is-Concat!25237 r!7292))))))

(assert (= (and start!639600 res!2673324) b!6509501))

(assert (= (and b!6509501 res!2673347) b!6509502))

(assert (= (and b!6509502 res!2673341) b!6509493))

(assert (= (and b!6509493 (not res!2673345)) b!6509466))

(assert (= (and b!6509466 (not res!2673351)) b!6509499))

(assert (= (and b!6509499 (not res!2673331)) b!6509487))

(assert (= (and b!6509487 (not res!2673348)) b!6509482))

(assert (= (and b!6509482 (not res!2673338)) b!6509507))

(assert (= (and b!6509507 (not res!2673344)) b!6509469))

(assert (= (and b!6509469 (not res!2673321)) b!6509506))

(assert (= (and b!6509506 (not res!2673327)) b!6509470))

(assert (= (and b!6509470 c!1193955) b!6509485))

(assert (= (and b!6509470 (not c!1193955)) b!6509483))

(assert (= (and b!6509485 (not res!2673336)) b!6509488))

(assert (= (and b!6509470 (not res!2673328)) b!6509490))

(assert (= (and b!6509490 res!2673329) b!6509496))

(assert (= (and b!6509490 (not res!2673323)) b!6509474))

(assert (= (and b!6509474 (not res!2673320)) b!6509477))

(assert (= (and b!6509477 (not res!2673330)) b!6509486))

(assert (= (and b!6509486 (not res!2673339)) b!6509503))

(assert (= (and b!6509503 (not res!2673319)) b!6509472))

(assert (= (and b!6509472 (not res!2673343)) b!6509471))

(assert (= (and b!6509471 (not res!2673325)) b!6509489))

(assert (= (and b!6509489 (not res!2673337)) b!6509505))

(assert (= (and b!6509505 (not res!2673346)) b!6509467))

(assert (= (and b!6509467 (not res!2673326)) b!6509498))

(assert (= (and b!6509498 (not res!2673350)) b!6509465))

(assert (= (and b!6509465 (not res!2673334)) b!6509476))

(assert (= (and b!6509476 (not res!2673352)) b!6509481))

(assert (= (and b!6509481 res!2673340) b!6509468))

(assert (= (and b!6509481 (not res!2673349)) b!6509491))

(assert (= (and b!6509491 (not res!2673333)) b!6509479))

(assert (= (and b!6509479 (not res!2673332)) b!6509504))

(assert (= (and b!6509504 (not res!2673342)) b!6509480))

(assert (= (and b!6509480 (not res!2673322)) b!6509497))

(assert (= (and b!6509497 (not res!2673335)) b!6509495))

(assert (= (and start!639600 (is-ElementMatch!16392 r!7292)) b!6509484))

(assert (= (and start!639600 (is-Concat!25237 r!7292)) b!6509500))

(assert (= (and start!639600 (is-Star!16392 r!7292)) b!6509475))

(assert (= (and start!639600 (is-Union!16392 r!7292)) b!6509473))

(assert (= (and start!639600 condSetEmpty!44410) setIsEmpty!44410))

(assert (= (and start!639600 (not condSetEmpty!44410)) setNonEmpty!44410))

(assert (= setNonEmpty!44410 b!6509464))

(assert (= b!6509494 b!6509492))

(assert (= (and start!639600 (is-Cons!65353 zl!343)) b!6509494))

(assert (= (and start!639600 (is-Cons!65352 s!2326)) b!6509478))

(declare-fun m!7295864 () Bool)

(assert (=> b!6509493 m!7295864))

(declare-fun m!7295866 () Bool)

(assert (=> b!6509493 m!7295866))

(declare-fun m!7295868 () Bool)

(assert (=> b!6509493 m!7295868))

(declare-fun m!7295870 () Bool)

(assert (=> b!6509499 m!7295870))

(declare-fun m!7295872 () Bool)

(assert (=> b!6509481 m!7295872))

(declare-fun m!7295874 () Bool)

(assert (=> b!6509503 m!7295874))

(declare-fun m!7295876 () Bool)

(assert (=> b!6509503 m!7295876))

(declare-fun m!7295878 () Bool)

(assert (=> start!639600 m!7295878))

(declare-fun m!7295880 () Bool)

(assert (=> b!6509470 m!7295880))

(declare-fun m!7295882 () Bool)

(assert (=> b!6509470 m!7295882))

(declare-fun m!7295884 () Bool)

(assert (=> b!6509470 m!7295884))

(declare-fun m!7295886 () Bool)

(assert (=> b!6509470 m!7295886))

(declare-fun m!7295888 () Bool)

(assert (=> b!6509470 m!7295888))

(declare-fun m!7295890 () Bool)

(assert (=> b!6509470 m!7295890))

(declare-fun m!7295892 () Bool)

(assert (=> b!6509470 m!7295892))

(declare-fun m!7295894 () Bool)

(assert (=> b!6509504 m!7295894))

(declare-fun m!7295896 () Bool)

(assert (=> b!6509504 m!7295896))

(declare-fun m!7295898 () Bool)

(assert (=> b!6509504 m!7295898))

(declare-fun m!7295900 () Bool)

(assert (=> b!6509504 m!7295900))

(declare-fun m!7295902 () Bool)

(assert (=> b!6509504 m!7295902))

(declare-fun m!7295904 () Bool)

(assert (=> b!6509485 m!7295904))

(assert (=> b!6509485 m!7295872))

(declare-fun m!7295906 () Bool)

(assert (=> b!6509485 m!7295906))

(declare-fun m!7295908 () Bool)

(assert (=> setNonEmpty!44410 m!7295908))

(declare-fun m!7295910 () Bool)

(assert (=> b!6509465 m!7295910))

(declare-fun m!7295912 () Bool)

(assert (=> b!6509477 m!7295912))

(declare-fun m!7295914 () Bool)

(assert (=> b!6509489 m!7295914))

(declare-fun m!7295916 () Bool)

(assert (=> b!6509488 m!7295916))

(declare-fun m!7295918 () Bool)

(assert (=> b!6509506 m!7295918))

(declare-fun m!7295920 () Bool)

(assert (=> b!6509486 m!7295920))

(declare-fun m!7295922 () Bool)

(assert (=> b!6509486 m!7295922))

(declare-fun m!7295924 () Bool)

(assert (=> b!6509486 m!7295924))

(declare-fun m!7295926 () Bool)

(assert (=> b!6509486 m!7295926))

(declare-fun m!7295928 () Bool)

(assert (=> b!6509486 m!7295928))

(declare-fun m!7295930 () Bool)

(assert (=> b!6509480 m!7295930))

(declare-fun m!7295932 () Bool)

(assert (=> b!6509501 m!7295932))

(declare-fun m!7295934 () Bool)

(assert (=> b!6509467 m!7295934))

(declare-fun m!7295936 () Bool)

(assert (=> b!6509496 m!7295936))

(declare-fun m!7295938 () Bool)

(assert (=> b!6509469 m!7295938))

(declare-fun m!7295940 () Bool)

(assert (=> b!6509469 m!7295940))

(declare-fun m!7295942 () Bool)

(assert (=> b!6509469 m!7295942))

(declare-fun m!7295944 () Bool)

(assert (=> b!6509469 m!7295944))

(assert (=> b!6509469 m!7295938))

(declare-fun m!7295946 () Bool)

(assert (=> b!6509469 m!7295946))

(assert (=> b!6509469 m!7295942))

(declare-fun m!7295948 () Bool)

(assert (=> b!6509469 m!7295948))

(declare-fun m!7295950 () Bool)

(assert (=> b!6509479 m!7295950))

(declare-fun m!7295952 () Bool)

(assert (=> b!6509479 m!7295952))

(declare-fun m!7295954 () Bool)

(assert (=> b!6509479 m!7295954))

(declare-fun m!7295956 () Bool)

(assert (=> b!6509479 m!7295956))

(declare-fun m!7295958 () Bool)

(assert (=> b!6509479 m!7295958))

(declare-fun m!7295960 () Bool)

(assert (=> b!6509479 m!7295960))

(assert (=> b!6509468 m!7295916))

(declare-fun m!7295962 () Bool)

(assert (=> b!6509505 m!7295962))

(declare-fun m!7295964 () Bool)

(assert (=> b!6509505 m!7295964))

(declare-fun m!7295966 () Bool)

(assert (=> b!6509505 m!7295966))

(declare-fun m!7295968 () Bool)

(assert (=> b!6509505 m!7295968))

(declare-fun m!7295970 () Bool)

(assert (=> b!6509505 m!7295970))

(declare-fun m!7295972 () Bool)

(assert (=> b!6509505 m!7295972))

(declare-fun m!7295974 () Bool)

(assert (=> b!6509505 m!7295974))

(declare-fun m!7295976 () Bool)

(assert (=> b!6509505 m!7295976))

(declare-fun m!7295978 () Bool)

(assert (=> b!6509505 m!7295978))

(declare-fun m!7295980 () Bool)

(assert (=> b!6509466 m!7295980))

(assert (=> b!6509495 m!7295958))

(declare-fun m!7295982 () Bool)

(assert (=> b!6509495 m!7295982))

(assert (=> b!6509495 m!7295954))

(declare-fun m!7295984 () Bool)

(assert (=> b!6509495 m!7295984))

(declare-fun m!7295986 () Bool)

(assert (=> b!6509495 m!7295986))

(assert (=> b!6509495 m!7295958))

(assert (=> b!6509495 m!7295960))

(declare-fun m!7295988 () Bool)

(assert (=> b!6509498 m!7295988))

(declare-fun m!7295990 () Bool)

(assert (=> b!6509498 m!7295990))

(declare-fun m!7295992 () Bool)

(assert (=> b!6509498 m!7295992))

(declare-fun m!7295994 () Bool)

(assert (=> b!6509497 m!7295994))

(declare-fun m!7295996 () Bool)

(assert (=> b!6509494 m!7295996))

(declare-fun m!7295998 () Bool)

(assert (=> b!6509502 m!7295998))

(declare-fun m!7296000 () Bool)

(assert (=> b!6509482 m!7296000))

(assert (=> b!6509482 m!7296000))

(declare-fun m!7296002 () Bool)

(assert (=> b!6509482 m!7296002))

(push 1)

(assert (not b!6509475))

(assert (not b!6509500))

(assert (not b!6509506))

(assert (not b!6509501))

(assert (not b!6509505))

(assert (not b!6509488))

(assert (not b!6509493))

(assert (not b!6509503))

(assert (not b!6509497))

(assert (not b!6509502))

(assert (not b!6509477))

(assert (not b!6509469))

(assert (not b!6509465))

(assert (not b!6509495))

(assert (not b!6509468))

(assert (not setNonEmpty!44410))

(assert (not b!6509478))

(assert (not b!6509470))

(assert (not b!6509486))

(assert (not b!6509482))

(assert (not b!6509496))

(assert (not b!6509481))

(assert (not b!6509494))

(assert (not b!6509479))

(assert (not b!6509499))

(assert (not b!6509480))

(assert (not b!6509485))

(assert (not b!6509498))

(assert (not b!6509466))

(assert (not b!6509489))

(assert (not b!6509492))

(assert (not b!6509464))

(assert (not b!6509504))

(assert (not b!6509473))

(assert (not start!639600))

(assert tp_is_empty!42037)

(assert (not b!6509467))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2042010 () Bool)

(declare-fun c!1193974 () Bool)

(declare-fun isEmpty!37567 (List!65476) Bool)

(assert (=> d!2042010 (= c!1193974 (isEmpty!37567 s!2326))))

(declare-fun e!3944053 () Bool)

(assert (=> d!2042010 (= (matchZipper!2404 z!1189 s!2326) e!3944053)))

(declare-fun b!6509672 () Bool)

(declare-fun nullableZipper!2145 ((Set Context!11552)) Bool)

(assert (=> b!6509672 (= e!3944053 (nullableZipper!2145 z!1189))))

(declare-fun b!6509673 () Bool)

(declare-fun head!13251 (List!65476) C!33054)

(declare-fun tail!12336 (List!65476) List!65476)

(assert (=> b!6509673 (= e!3944053 (matchZipper!2404 (derivationStepZipper!2358 z!1189 (head!13251 s!2326)) (tail!12336 s!2326)))))

(assert (= (and d!2042010 c!1193974) b!6509672))

(assert (= (and d!2042010 (not c!1193974)) b!6509673))

(declare-fun m!7296144 () Bool)

(assert (=> d!2042010 m!7296144))

(declare-fun m!7296146 () Bool)

(assert (=> b!6509672 m!7296146))

(declare-fun m!7296148 () Bool)

(assert (=> b!6509673 m!7296148))

(assert (=> b!6509673 m!7296148))

(declare-fun m!7296150 () Bool)

(assert (=> b!6509673 m!7296150))

(declare-fun m!7296152 () Bool)

(assert (=> b!6509673 m!7296152))

(assert (=> b!6509673 m!7296150))

(assert (=> b!6509673 m!7296152))

(declare-fun m!7296154 () Bool)

(assert (=> b!6509673 m!7296154))

(assert (=> b!6509465 d!2042010))

(declare-fun d!2042012 () Bool)

(assert (=> d!2042012 (= (isEmpty!37564 (t!379111 (exprs!6276 (h!71801 zl!343)))) (is-Nil!65351 (t!379111 (exprs!6276 (h!71801 zl!343)))))))

(assert (=> b!6509506 d!2042012))

(declare-fun d!2042014 () Bool)

(declare-fun choose!48383 ((Set Context!11552) Int) (Set Context!11552))

(assert (=> d!2042014 (= (flatMap!1897 lt!2394078 lambda!361133) (choose!48383 lt!2394078 lambda!361133))))

(declare-fun bs!1652962 () Bool)

(assert (= bs!1652962 d!2042014))

(declare-fun m!7296156 () Bool)

(assert (=> bs!1652962 m!7296156))

(assert (=> b!6509486 d!2042014))

(declare-fun bm!564197 () Bool)

(declare-fun call!564202 () (Set Context!11552))

(assert (=> bm!564197 (= call!564202 (derivationStepZipperDown!1640 (h!71799 (exprs!6276 lt!2394102)) (Context!11553 (t!379111 (exprs!6276 lt!2394102))) (h!71800 s!2326)))))

(declare-fun b!6509684 () Bool)

(declare-fun e!3944062 () (Set Context!11552))

(assert (=> b!6509684 (= e!3944062 (as set.empty (Set Context!11552)))))

(declare-fun e!3944060 () (Set Context!11552))

(declare-fun b!6509685 () Bool)

(assert (=> b!6509685 (= e!3944060 (set.union call!564202 (derivationStepZipperUp!1566 (Context!11553 (t!379111 (exprs!6276 lt!2394102))) (h!71800 s!2326))))))

(declare-fun b!6509686 () Bool)

(assert (=> b!6509686 (= e!3944060 e!3944062)))

(declare-fun c!1193979 () Bool)

(assert (=> b!6509686 (= c!1193979 (is-Cons!65351 (exprs!6276 lt!2394102)))))

(declare-fun d!2042016 () Bool)

(declare-fun c!1193980 () Bool)

(declare-fun e!3944061 () Bool)

(assert (=> d!2042016 (= c!1193980 e!3944061)))

(declare-fun res!2673470 () Bool)

(assert (=> d!2042016 (=> (not res!2673470) (not e!3944061))))

(assert (=> d!2042016 (= res!2673470 (is-Cons!65351 (exprs!6276 lt!2394102)))))

(assert (=> d!2042016 (= (derivationStepZipperUp!1566 lt!2394102 (h!71800 s!2326)) e!3944060)))

(declare-fun b!6509687 () Bool)

(assert (=> b!6509687 (= e!3944062 call!564202)))

(declare-fun b!6509688 () Bool)

(assert (=> b!6509688 (= e!3944061 (nullable!6385 (h!71799 (exprs!6276 lt!2394102))))))

(assert (= (and d!2042016 res!2673470) b!6509688))

(assert (= (and d!2042016 c!1193980) b!6509685))

(assert (= (and d!2042016 (not c!1193980)) b!6509686))

(assert (= (and b!6509686 c!1193979) b!6509687))

(assert (= (and b!6509686 (not c!1193979)) b!6509684))

(assert (= (or b!6509685 b!6509687) bm!564197))

(declare-fun m!7296158 () Bool)

(assert (=> bm!564197 m!7296158))

(declare-fun m!7296160 () Bool)

(assert (=> b!6509685 m!7296160))

(declare-fun m!7296162 () Bool)

(assert (=> b!6509688 m!7296162))

(assert (=> b!6509486 d!2042016))

(declare-fun d!2042018 () Bool)

(declare-fun dynLambda!25966 (Int Context!11552) (Set Context!11552))

(assert (=> d!2042018 (= (flatMap!1897 lt!2394078 lambda!361133) (dynLambda!25966 lambda!361133 lt!2394102))))

(declare-fun lt!2394247 () Unit!158903)

(declare-fun choose!48384 ((Set Context!11552) Context!11552 Int) Unit!158903)

(assert (=> d!2042018 (= lt!2394247 (choose!48384 lt!2394078 lt!2394102 lambda!361133))))

(assert (=> d!2042018 (= lt!2394078 (set.insert lt!2394102 (as set.empty (Set Context!11552))))))

(assert (=> d!2042018 (= (lemmaFlatMapOnSingletonSet!1423 lt!2394078 lt!2394102 lambda!361133) lt!2394247)))

(declare-fun b_lambda!246441 () Bool)

(assert (=> (not b_lambda!246441) (not d!2042018)))

(declare-fun bs!1652963 () Bool)

(assert (= bs!1652963 d!2042018))

(assert (=> bs!1652963 m!7295920))

(declare-fun m!7296164 () Bool)

(assert (=> bs!1652963 m!7296164))

(declare-fun m!7296166 () Bool)

(assert (=> bs!1652963 m!7296166))

(assert (=> bs!1652963 m!7295926))

(assert (=> b!6509486 d!2042018))

(declare-fun bs!1652964 () Bool)

(declare-fun d!2042020 () Bool)

(assert (= bs!1652964 (and d!2042020 b!6509470)))

(declare-fun lambda!361165 () Int)

(assert (=> bs!1652964 (= lambda!361165 lambda!361133)))

(assert (=> d!2042020 true))

(assert (=> d!2042020 (= (derivationStepZipper!2358 lt!2394078 (h!71800 s!2326)) (flatMap!1897 lt!2394078 lambda!361165))))

(declare-fun bs!1652965 () Bool)

(assert (= bs!1652965 d!2042020))

(declare-fun m!7296168 () Bool)

(assert (=> bs!1652965 m!7296168))

(assert (=> b!6509486 d!2042020))

(declare-fun e!3944065 () Bool)

(declare-fun d!2042022 () Bool)

(assert (=> d!2042022 (= (matchZipper!2404 (set.union lt!2394107 lt!2394087) (t!379112 s!2326)) e!3944065)))

(declare-fun res!2673473 () Bool)

(assert (=> d!2042022 (=> res!2673473 e!3944065)))

(assert (=> d!2042022 (= res!2673473 (matchZipper!2404 lt!2394107 (t!379112 s!2326)))))

(declare-fun lt!2394250 () Unit!158903)

(declare-fun choose!48385 ((Set Context!11552) (Set Context!11552) List!65476) Unit!158903)

(assert (=> d!2042022 (= lt!2394250 (choose!48385 lt!2394107 lt!2394087 (t!379112 s!2326)))))

(assert (=> d!2042022 (= (lemmaZipperConcatMatchesSameAsBothZippers!1223 lt!2394107 lt!2394087 (t!379112 s!2326)) lt!2394250)))

(declare-fun b!6509693 () Bool)

(assert (=> b!6509693 (= e!3944065 (matchZipper!2404 lt!2394087 (t!379112 s!2326)))))

(assert (= (and d!2042022 (not res!2673473)) b!6509693))

(assert (=> d!2042022 m!7295906))

(assert (=> d!2042022 m!7295872))

(declare-fun m!7296170 () Bool)

(assert (=> d!2042022 m!7296170))

(assert (=> b!6509693 m!7295916))

(assert (=> b!6509485 d!2042022))

(declare-fun d!2042024 () Bool)

(declare-fun c!1193983 () Bool)

(assert (=> d!2042024 (= c!1193983 (isEmpty!37567 (t!379112 s!2326)))))

(declare-fun e!3944066 () Bool)

(assert (=> d!2042024 (= (matchZipper!2404 lt!2394107 (t!379112 s!2326)) e!3944066)))

(declare-fun b!6509694 () Bool)

(assert (=> b!6509694 (= e!3944066 (nullableZipper!2145 lt!2394107))))

(declare-fun b!6509695 () Bool)

(assert (=> b!6509695 (= e!3944066 (matchZipper!2404 (derivationStepZipper!2358 lt!2394107 (head!13251 (t!379112 s!2326))) (tail!12336 (t!379112 s!2326))))))

(assert (= (and d!2042024 c!1193983) b!6509694))

(assert (= (and d!2042024 (not c!1193983)) b!6509695))

(declare-fun m!7296172 () Bool)

(assert (=> d!2042024 m!7296172))

(declare-fun m!7296174 () Bool)

(assert (=> b!6509694 m!7296174))

(declare-fun m!7296176 () Bool)

(assert (=> b!6509695 m!7296176))

(assert (=> b!6509695 m!7296176))

(declare-fun m!7296178 () Bool)

(assert (=> b!6509695 m!7296178))

(declare-fun m!7296180 () Bool)

(assert (=> b!6509695 m!7296180))

(assert (=> b!6509695 m!7296178))

(assert (=> b!6509695 m!7296180))

(declare-fun m!7296182 () Bool)

(assert (=> b!6509695 m!7296182))

(assert (=> b!6509485 d!2042024))

(declare-fun d!2042026 () Bool)

(declare-fun c!1193984 () Bool)

(assert (=> d!2042026 (= c!1193984 (isEmpty!37567 (t!379112 s!2326)))))

(declare-fun e!3944067 () Bool)

(assert (=> d!2042026 (= (matchZipper!2404 (set.union lt!2394107 lt!2394087) (t!379112 s!2326)) e!3944067)))

(declare-fun b!6509696 () Bool)

(assert (=> b!6509696 (= e!3944067 (nullableZipper!2145 (set.union lt!2394107 lt!2394087)))))

(declare-fun b!6509697 () Bool)

(assert (=> b!6509697 (= e!3944067 (matchZipper!2404 (derivationStepZipper!2358 (set.union lt!2394107 lt!2394087) (head!13251 (t!379112 s!2326))) (tail!12336 (t!379112 s!2326))))))

(assert (= (and d!2042026 c!1193984) b!6509696))

(assert (= (and d!2042026 (not c!1193984)) b!6509697))

(assert (=> d!2042026 m!7296172))

(declare-fun m!7296184 () Bool)

(assert (=> b!6509696 m!7296184))

(assert (=> b!6509697 m!7296176))

(assert (=> b!6509697 m!7296176))

(declare-fun m!7296186 () Bool)

(assert (=> b!6509697 m!7296186))

(assert (=> b!6509697 m!7296180))

(assert (=> b!6509697 m!7296186))

(assert (=> b!6509697 m!7296180))

(declare-fun m!7296188 () Bool)

(assert (=> b!6509697 m!7296188))

(assert (=> b!6509485 d!2042026))

(declare-fun bs!1652966 () Bool)

(declare-fun d!2042028 () Bool)

(assert (= bs!1652966 (and d!2042028 b!6509479)))

(declare-fun lambda!361168 () Int)

(assert (=> bs!1652966 (= lambda!361168 lambda!361135)))

(declare-fun forall!15571 (List!65475 Int) Bool)

(assert (=> d!2042028 (= (inv!84228 setElem!44410) (forall!15571 (exprs!6276 setElem!44410) lambda!361168))))

(declare-fun bs!1652967 () Bool)

(assert (= bs!1652967 d!2042028))

(declare-fun m!7296190 () Bool)

(assert (=> bs!1652967 m!7296190))

(assert (=> setNonEmpty!44410 d!2042028))

(declare-fun d!2042030 () Bool)

(assert (=> d!2042030 (= (flatMap!1897 lt!2394077 lambda!361133) (choose!48383 lt!2394077 lambda!361133))))

(declare-fun bs!1652968 () Bool)

(assert (= bs!1652968 d!2042030))

(declare-fun m!7296192 () Bool)

(assert (=> bs!1652968 m!7296192))

(assert (=> b!6509505 d!2042030))

(declare-fun bm!564198 () Bool)

(declare-fun call!564203 () (Set Context!11552))

(assert (=> bm!564198 (= call!564203 (derivationStepZipperDown!1640 (h!71799 (exprs!6276 lt!2394093)) (Context!11553 (t!379111 (exprs!6276 lt!2394093))) (h!71800 s!2326)))))

(declare-fun b!6509698 () Bool)

(declare-fun e!3944070 () (Set Context!11552))

(assert (=> b!6509698 (= e!3944070 (as set.empty (Set Context!11552)))))

(declare-fun b!6509699 () Bool)

(declare-fun e!3944068 () (Set Context!11552))

(assert (=> b!6509699 (= e!3944068 (set.union call!564203 (derivationStepZipperUp!1566 (Context!11553 (t!379111 (exprs!6276 lt!2394093))) (h!71800 s!2326))))))

(declare-fun b!6509700 () Bool)

(assert (=> b!6509700 (= e!3944068 e!3944070)))

(declare-fun c!1193985 () Bool)

(assert (=> b!6509700 (= c!1193985 (is-Cons!65351 (exprs!6276 lt!2394093)))))

(declare-fun d!2042032 () Bool)

(declare-fun c!1193986 () Bool)

(declare-fun e!3944069 () Bool)

(assert (=> d!2042032 (= c!1193986 e!3944069)))

(declare-fun res!2673474 () Bool)

(assert (=> d!2042032 (=> (not res!2673474) (not e!3944069))))

(assert (=> d!2042032 (= res!2673474 (is-Cons!65351 (exprs!6276 lt!2394093)))))

(assert (=> d!2042032 (= (derivationStepZipperUp!1566 lt!2394093 (h!71800 s!2326)) e!3944068)))

(declare-fun b!6509701 () Bool)

(assert (=> b!6509701 (= e!3944070 call!564203)))

(declare-fun b!6509702 () Bool)

(assert (=> b!6509702 (= e!3944069 (nullable!6385 (h!71799 (exprs!6276 lt!2394093))))))

(assert (= (and d!2042032 res!2673474) b!6509702))

(assert (= (and d!2042032 c!1193986) b!6509699))

(assert (= (and d!2042032 (not c!1193986)) b!6509700))

(assert (= (and b!6509700 c!1193985) b!6509701))

(assert (= (and b!6509700 (not c!1193985)) b!6509698))

(assert (= (or b!6509699 b!6509701) bm!564198))

(declare-fun m!7296194 () Bool)

(assert (=> bm!564198 m!7296194))

(declare-fun m!7296196 () Bool)

(assert (=> b!6509699 m!7296196))

(declare-fun m!7296198 () Bool)

(assert (=> b!6509702 m!7296198))

(assert (=> b!6509505 d!2042032))

(declare-fun d!2042034 () Bool)

(assert (=> d!2042034 (= (flatMap!1897 lt!2394072 lambda!361133) (choose!48383 lt!2394072 lambda!361133))))

(declare-fun bs!1652969 () Bool)

(assert (= bs!1652969 d!2042034))

(declare-fun m!7296200 () Bool)

(assert (=> bs!1652969 m!7296200))

(assert (=> b!6509505 d!2042034))

(declare-fun d!2042036 () Bool)

(declare-fun lt!2394253 () Regex!16392)

(assert (=> d!2042036 (validRegex!8128 lt!2394253)))

(assert (=> d!2042036 (= lt!2394253 (generalisedUnion!2236 (unfocusZipperList!1813 (Cons!65353 lt!2394092 Nil!65353))))))

(assert (=> d!2042036 (= (unfocusZipper!2134 (Cons!65353 lt!2394092 Nil!65353)) lt!2394253)))

(declare-fun bs!1652970 () Bool)

(assert (= bs!1652970 d!2042036))

(declare-fun m!7296202 () Bool)

(assert (=> bs!1652970 m!7296202))

(declare-fun m!7296204 () Bool)

(assert (=> bs!1652970 m!7296204))

(assert (=> bs!1652970 m!7296204))

(declare-fun m!7296206 () Bool)

(assert (=> bs!1652970 m!7296206))

(assert (=> b!6509505 d!2042036))

(declare-fun bm!564199 () Bool)

(declare-fun call!564204 () (Set Context!11552))

(assert (=> bm!564199 (= call!564204 (derivationStepZipperDown!1640 (h!71799 (exprs!6276 lt!2394092)) (Context!11553 (t!379111 (exprs!6276 lt!2394092))) (h!71800 s!2326)))))

(declare-fun b!6509703 () Bool)

(declare-fun e!3944073 () (Set Context!11552))

(assert (=> b!6509703 (= e!3944073 (as set.empty (Set Context!11552)))))

(declare-fun b!6509704 () Bool)

(declare-fun e!3944071 () (Set Context!11552))

(assert (=> b!6509704 (= e!3944071 (set.union call!564204 (derivationStepZipperUp!1566 (Context!11553 (t!379111 (exprs!6276 lt!2394092))) (h!71800 s!2326))))))

(declare-fun b!6509705 () Bool)

(assert (=> b!6509705 (= e!3944071 e!3944073)))

(declare-fun c!1193987 () Bool)

(assert (=> b!6509705 (= c!1193987 (is-Cons!65351 (exprs!6276 lt!2394092)))))

(declare-fun d!2042038 () Bool)

(declare-fun c!1193988 () Bool)

(declare-fun e!3944072 () Bool)

(assert (=> d!2042038 (= c!1193988 e!3944072)))

(declare-fun res!2673475 () Bool)

(assert (=> d!2042038 (=> (not res!2673475) (not e!3944072))))

(assert (=> d!2042038 (= res!2673475 (is-Cons!65351 (exprs!6276 lt!2394092)))))

(assert (=> d!2042038 (= (derivationStepZipperUp!1566 lt!2394092 (h!71800 s!2326)) e!3944071)))

(declare-fun b!6509706 () Bool)

(assert (=> b!6509706 (= e!3944073 call!564204)))

(declare-fun b!6509707 () Bool)

(assert (=> b!6509707 (= e!3944072 (nullable!6385 (h!71799 (exprs!6276 lt!2394092))))))

(assert (= (and d!2042038 res!2673475) b!6509707))

(assert (= (and d!2042038 c!1193988) b!6509704))

(assert (= (and d!2042038 (not c!1193988)) b!6509705))

(assert (= (and b!6509705 c!1193987) b!6509706))

(assert (= (and b!6509705 (not c!1193987)) b!6509703))

(assert (= (or b!6509704 b!6509706) bm!564199))

(declare-fun m!7296208 () Bool)

(assert (=> bm!564199 m!7296208))

(declare-fun m!7296210 () Bool)

(assert (=> b!6509704 m!7296210))

(declare-fun m!7296212 () Bool)

(assert (=> b!6509707 m!7296212))

(assert (=> b!6509505 d!2042038))

(declare-fun d!2042040 () Bool)

(assert (=> d!2042040 (= (flatMap!1897 lt!2394072 lambda!361133) (dynLambda!25966 lambda!361133 lt!2394092))))

(declare-fun lt!2394254 () Unit!158903)

(assert (=> d!2042040 (= lt!2394254 (choose!48384 lt!2394072 lt!2394092 lambda!361133))))

(assert (=> d!2042040 (= lt!2394072 (set.insert lt!2394092 (as set.empty (Set Context!11552))))))

(assert (=> d!2042040 (= (lemmaFlatMapOnSingletonSet!1423 lt!2394072 lt!2394092 lambda!361133) lt!2394254)))

(declare-fun b_lambda!246443 () Bool)

(assert (=> (not b_lambda!246443) (not d!2042040)))

(declare-fun bs!1652971 () Bool)

(assert (= bs!1652971 d!2042040))

(assert (=> bs!1652971 m!7295968))

(declare-fun m!7296214 () Bool)

(assert (=> bs!1652971 m!7296214))

(declare-fun m!7296216 () Bool)

(assert (=> bs!1652971 m!7296216))

(assert (=> bs!1652971 m!7295978))

(assert (=> b!6509505 d!2042040))

(declare-fun d!2042042 () Bool)

(assert (=> d!2042042 (= (flatMap!1897 lt!2394077 lambda!361133) (dynLambda!25966 lambda!361133 lt!2394093))))

(declare-fun lt!2394255 () Unit!158903)

(assert (=> d!2042042 (= lt!2394255 (choose!48384 lt!2394077 lt!2394093 lambda!361133))))

(assert (=> d!2042042 (= lt!2394077 (set.insert lt!2394093 (as set.empty (Set Context!11552))))))

(assert (=> d!2042042 (= (lemmaFlatMapOnSingletonSet!1423 lt!2394077 lt!2394093 lambda!361133) lt!2394255)))

(declare-fun b_lambda!246445 () Bool)

(assert (=> (not b_lambda!246445) (not d!2042042)))

(declare-fun bs!1652972 () Bool)

(assert (= bs!1652972 d!2042042))

(assert (=> bs!1652972 m!7295964))

(declare-fun m!7296218 () Bool)

(assert (=> bs!1652972 m!7296218))

(declare-fun m!7296220 () Bool)

(assert (=> bs!1652972 m!7296220))

(assert (=> bs!1652972 m!7295976))

(assert (=> b!6509505 d!2042042))

(declare-fun b!6509719 () Bool)

(declare-fun e!3944079 () Bool)

(declare-fun lt!2394258 () List!65476)

(assert (=> b!6509719 (= e!3944079 (or (not (= (_2!36674 lt!2394105) Nil!65352)) (= lt!2394258 (_1!36674 lt!2394105))))))

(declare-fun d!2042044 () Bool)

(assert (=> d!2042044 e!3944079))

(declare-fun res!2673480 () Bool)

(assert (=> d!2042044 (=> (not res!2673480) (not e!3944079))))

(declare-fun content!12485 (List!65476) (Set C!33054))

(assert (=> d!2042044 (= res!2673480 (= (content!12485 lt!2394258) (set.union (content!12485 (_1!36674 lt!2394105)) (content!12485 (_2!36674 lt!2394105)))))))

(declare-fun e!3944078 () List!65476)

(assert (=> d!2042044 (= lt!2394258 e!3944078)))

(declare-fun c!1193991 () Bool)

(assert (=> d!2042044 (= c!1193991 (is-Nil!65352 (_1!36674 lt!2394105)))))

(assert (=> d!2042044 (= (++!14487 (_1!36674 lt!2394105) (_2!36674 lt!2394105)) lt!2394258)))

(declare-fun b!6509717 () Bool)

(assert (=> b!6509717 (= e!3944078 (Cons!65352 (h!71800 (_1!36674 lt!2394105)) (++!14487 (t!379112 (_1!36674 lt!2394105)) (_2!36674 lt!2394105))))))

(declare-fun b!6509716 () Bool)

(assert (=> b!6509716 (= e!3944078 (_2!36674 lt!2394105))))

(declare-fun b!6509718 () Bool)

(declare-fun res!2673481 () Bool)

(assert (=> b!6509718 (=> (not res!2673481) (not e!3944079))))

(declare-fun size!40451 (List!65476) Int)

(assert (=> b!6509718 (= res!2673481 (= (size!40451 lt!2394258) (+ (size!40451 (_1!36674 lt!2394105)) (size!40451 (_2!36674 lt!2394105)))))))

(assert (= (and d!2042044 c!1193991) b!6509716))

(assert (= (and d!2042044 (not c!1193991)) b!6509717))

(assert (= (and d!2042044 res!2673480) b!6509718))

(assert (= (and b!6509718 res!2673481) b!6509719))

(declare-fun m!7296222 () Bool)

(assert (=> d!2042044 m!7296222))

(declare-fun m!7296224 () Bool)

(assert (=> d!2042044 m!7296224))

(declare-fun m!7296226 () Bool)

(assert (=> d!2042044 m!7296226))

(declare-fun m!7296228 () Bool)

(assert (=> b!6509717 m!7296228))

(declare-fun m!7296230 () Bool)

(assert (=> b!6509718 m!7296230))

(declare-fun m!7296232 () Bool)

(assert (=> b!6509718 m!7296232))

(declare-fun m!7296234 () Bool)

(assert (=> b!6509718 m!7296234))

(assert (=> b!6509504 d!2042044))

(declare-fun d!2042046 () Bool)

(assert (=> d!2042046 (= (get!22670 lt!2394076) (v!52461 lt!2394076))))

(assert (=> b!6509504 d!2042046))

(declare-fun d!2042048 () Bool)

(declare-fun isEmpty!37568 (Option!16283) Bool)

(assert (=> d!2042048 (= (isDefined!12986 lt!2394076) (not (isEmpty!37568 lt!2394076)))))

(declare-fun bs!1652973 () Bool)

(assert (= bs!1652973 d!2042048))

(declare-fun m!7296236 () Bool)

(assert (=> bs!1652973 m!7296236))

(assert (=> b!6509504 d!2042048))

(declare-fun d!2042050 () Bool)

(assert (=> d!2042050 (isDefined!12986 (findConcatSeparationZippers!157 lt!2394072 (set.insert lt!2394093 (as set.empty (Set Context!11552))) Nil!65352 s!2326 s!2326))))

(declare-fun lt!2394261 () Unit!158903)

(declare-fun choose!48386 ((Set Context!11552) Context!11552 List!65476) Unit!158903)

(assert (=> d!2042050 (= lt!2394261 (choose!48386 lt!2394072 lt!2394093 s!2326))))

(assert (=> d!2042050 (matchZipper!2404 (appendTo!153 lt!2394072 lt!2394093) s!2326)))

(assert (=> d!2042050 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!157 lt!2394072 lt!2394093 s!2326) lt!2394261)))

(declare-fun bs!1652974 () Bool)

(assert (= bs!1652974 d!2042050))

(assert (=> bs!1652974 m!7295950))

(assert (=> bs!1652974 m!7295950))

(declare-fun m!7296238 () Bool)

(assert (=> bs!1652974 m!7296238))

(assert (=> bs!1652974 m!7295976))

(declare-fun m!7296240 () Bool)

(assert (=> bs!1652974 m!7296240))

(assert (=> bs!1652974 m!7295976))

(declare-fun m!7296242 () Bool)

(assert (=> bs!1652974 m!7296242))

(assert (=> bs!1652974 m!7296240))

(declare-fun m!7296244 () Bool)

(assert (=> bs!1652974 m!7296244))

(assert (=> b!6509504 d!2042050))

(declare-fun d!2042052 () Bool)

(declare-fun e!3944091 () Bool)

(assert (=> d!2042052 e!3944091))

(declare-fun res!2673494 () Bool)

(assert (=> d!2042052 (=> res!2673494 e!3944091)))

(declare-fun e!3944094 () Bool)

(assert (=> d!2042052 (= res!2673494 e!3944094)))

(declare-fun res!2673492 () Bool)

(assert (=> d!2042052 (=> (not res!2673492) (not e!3944094))))

(declare-fun lt!2394268 () Option!16283)

(assert (=> d!2042052 (= res!2673492 (isDefined!12986 lt!2394268))))

(declare-fun e!3944092 () Option!16283)

(assert (=> d!2042052 (= lt!2394268 e!3944092)))

(declare-fun c!1193997 () Bool)

(declare-fun e!3944090 () Bool)

(assert (=> d!2042052 (= c!1193997 e!3944090)))

(declare-fun res!2673495 () Bool)

(assert (=> d!2042052 (=> (not res!2673495) (not e!3944090))))

(assert (=> d!2042052 (= res!2673495 (matchZipper!2404 lt!2394072 Nil!65352))))

(assert (=> d!2042052 (= (++!14487 Nil!65352 s!2326) s!2326)))

(assert (=> d!2042052 (= (findConcatSeparationZippers!157 lt!2394072 lt!2394077 Nil!65352 s!2326 s!2326) lt!2394268)))

(declare-fun b!6509738 () Bool)

(declare-fun lt!2394270 () Unit!158903)

(declare-fun lt!2394269 () Unit!158903)

(assert (=> b!6509738 (= lt!2394270 lt!2394269)))

(assert (=> b!6509738 (= (++!14487 (++!14487 Nil!65352 (Cons!65352 (h!71800 s!2326) Nil!65352)) (t!379112 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2543 (List!65476 C!33054 List!65476 List!65476) Unit!158903)

(assert (=> b!6509738 (= lt!2394269 (lemmaMoveElementToOtherListKeepsConcatEq!2543 Nil!65352 (h!71800 s!2326) (t!379112 s!2326) s!2326))))

(declare-fun e!3944093 () Option!16283)

(assert (=> b!6509738 (= e!3944093 (findConcatSeparationZippers!157 lt!2394072 lt!2394077 (++!14487 Nil!65352 (Cons!65352 (h!71800 s!2326) Nil!65352)) (t!379112 s!2326) s!2326))))

(declare-fun b!6509739 () Bool)

(assert (=> b!6509739 (= e!3944090 (matchZipper!2404 lt!2394077 s!2326))))

(declare-fun b!6509740 () Bool)

(declare-fun res!2673496 () Bool)

(assert (=> b!6509740 (=> (not res!2673496) (not e!3944094))))

(assert (=> b!6509740 (= res!2673496 (matchZipper!2404 lt!2394077 (_2!36674 (get!22670 lt!2394268))))))

(declare-fun b!6509741 () Bool)

(assert (=> b!6509741 (= e!3944091 (not (isDefined!12986 lt!2394268)))))

(declare-fun b!6509742 () Bool)

(declare-fun res!2673493 () Bool)

(assert (=> b!6509742 (=> (not res!2673493) (not e!3944094))))

(assert (=> b!6509742 (= res!2673493 (matchZipper!2404 lt!2394072 (_1!36674 (get!22670 lt!2394268))))))

(declare-fun b!6509743 () Bool)

(assert (=> b!6509743 (= e!3944092 (Some!16282 (tuple2!66743 Nil!65352 s!2326)))))

(declare-fun b!6509744 () Bool)

(assert (=> b!6509744 (= e!3944093 None!16282)))

(declare-fun b!6509745 () Bool)

(assert (=> b!6509745 (= e!3944094 (= (++!14487 (_1!36674 (get!22670 lt!2394268)) (_2!36674 (get!22670 lt!2394268))) s!2326))))

(declare-fun b!6509746 () Bool)

(assert (=> b!6509746 (= e!3944092 e!3944093)))

(declare-fun c!1193996 () Bool)

(assert (=> b!6509746 (= c!1193996 (is-Nil!65352 s!2326))))

(assert (= (and d!2042052 res!2673495) b!6509739))

(assert (= (and d!2042052 c!1193997) b!6509743))

(assert (= (and d!2042052 (not c!1193997)) b!6509746))

(assert (= (and b!6509746 c!1193996) b!6509744))

(assert (= (and b!6509746 (not c!1193996)) b!6509738))

(assert (= (and d!2042052 res!2673492) b!6509742))

(assert (= (and b!6509742 res!2673493) b!6509740))

(assert (= (and b!6509740 res!2673496) b!6509745))

(assert (= (and d!2042052 (not res!2673494)) b!6509741))

(declare-fun m!7296246 () Bool)

(assert (=> b!6509739 m!7296246))

(declare-fun m!7296248 () Bool)

(assert (=> d!2042052 m!7296248))

(declare-fun m!7296250 () Bool)

(assert (=> d!2042052 m!7296250))

(declare-fun m!7296252 () Bool)

(assert (=> d!2042052 m!7296252))

(assert (=> b!6509741 m!7296248))

(declare-fun m!7296254 () Bool)

(assert (=> b!6509742 m!7296254))

(declare-fun m!7296256 () Bool)

(assert (=> b!6509742 m!7296256))

(declare-fun m!7296258 () Bool)

(assert (=> b!6509738 m!7296258))

(assert (=> b!6509738 m!7296258))

(declare-fun m!7296260 () Bool)

(assert (=> b!6509738 m!7296260))

(declare-fun m!7296262 () Bool)

(assert (=> b!6509738 m!7296262))

(assert (=> b!6509738 m!7296258))

(declare-fun m!7296264 () Bool)

(assert (=> b!6509738 m!7296264))

(assert (=> b!6509745 m!7296254))

(declare-fun m!7296266 () Bool)

(assert (=> b!6509745 m!7296266))

(assert (=> b!6509740 m!7296254))

(declare-fun m!7296268 () Bool)

(assert (=> b!6509740 m!7296268))

(assert (=> b!6509504 d!2042052))

(declare-fun b!6509765 () Bool)

(declare-fun e!3944115 () Bool)

(declare-fun call!564212 () Bool)

(assert (=> b!6509765 (= e!3944115 call!564212)))

(declare-fun bm!564206 () Bool)

(declare-fun call!564211 () Bool)

(assert (=> bm!564206 (= call!564212 call!564211)))

(declare-fun b!6509766 () Bool)

(declare-fun e!3944110 () Bool)

(declare-fun e!3944111 () Bool)

(assert (=> b!6509766 (= e!3944110 e!3944111)))

(declare-fun c!1194003 () Bool)

(assert (=> b!6509766 (= c!1194003 (is-Star!16392 r!7292))))

(declare-fun b!6509767 () Bool)

(declare-fun res!2673509 () Bool)

(declare-fun e!3944113 () Bool)

(assert (=> b!6509767 (=> res!2673509 e!3944113)))

(assert (=> b!6509767 (= res!2673509 (not (is-Concat!25237 r!7292)))))

(declare-fun e!3944114 () Bool)

(assert (=> b!6509767 (= e!3944114 e!3944113)))

(declare-fun b!6509768 () Bool)

(declare-fun e!3944109 () Bool)

(assert (=> b!6509768 (= e!3944109 call!564211)))

(declare-fun b!6509769 () Bool)

(declare-fun e!3944112 () Bool)

(assert (=> b!6509769 (= e!3944113 e!3944112)))

(declare-fun res!2673508 () Bool)

(assert (=> b!6509769 (=> (not res!2673508) (not e!3944112))))

(declare-fun call!564213 () Bool)

(assert (=> b!6509769 (= res!2673508 call!564213)))

(declare-fun b!6509770 () Bool)

(declare-fun res!2673510 () Bool)

(assert (=> b!6509770 (=> (not res!2673510) (not e!3944115))))

(assert (=> b!6509770 (= res!2673510 call!564213)))

(assert (=> b!6509770 (= e!3944114 e!3944115)))

(declare-fun d!2042054 () Bool)

(declare-fun res!2673511 () Bool)

(assert (=> d!2042054 (=> res!2673511 e!3944110)))

(assert (=> d!2042054 (= res!2673511 (is-ElementMatch!16392 r!7292))))

(assert (=> d!2042054 (= (validRegex!8128 r!7292) e!3944110)))

(declare-fun bm!564207 () Bool)

(declare-fun c!1194002 () Bool)

(assert (=> bm!564207 (= call!564211 (validRegex!8128 (ite c!1194003 (reg!16721 r!7292) (ite c!1194002 (regTwo!33297 r!7292) (regTwo!33296 r!7292)))))))

(declare-fun b!6509771 () Bool)

(assert (=> b!6509771 (= e!3944111 e!3944109)))

(declare-fun res!2673512 () Bool)

(assert (=> b!6509771 (= res!2673512 (not (nullable!6385 (reg!16721 r!7292))))))

(assert (=> b!6509771 (=> (not res!2673512) (not e!3944109))))

(declare-fun b!6509772 () Bool)

(assert (=> b!6509772 (= e!3944112 call!564212)))

(declare-fun bm!564208 () Bool)

(assert (=> bm!564208 (= call!564213 (validRegex!8128 (ite c!1194002 (regOne!33297 r!7292) (regOne!33296 r!7292))))))

(declare-fun b!6509773 () Bool)

(assert (=> b!6509773 (= e!3944111 e!3944114)))

(assert (=> b!6509773 (= c!1194002 (is-Union!16392 r!7292))))

(assert (= (and d!2042054 (not res!2673511)) b!6509766))

(assert (= (and b!6509766 c!1194003) b!6509771))

(assert (= (and b!6509766 (not c!1194003)) b!6509773))

(assert (= (and b!6509771 res!2673512) b!6509768))

(assert (= (and b!6509773 c!1194002) b!6509770))

(assert (= (and b!6509773 (not c!1194002)) b!6509767))

(assert (= (and b!6509770 res!2673510) b!6509765))

(assert (= (and b!6509767 (not res!2673509)) b!6509769))

(assert (= (and b!6509769 res!2673508) b!6509772))

(assert (= (or b!6509765 b!6509772) bm!564206))

(assert (= (or b!6509770 b!6509769) bm!564208))

(assert (= (or b!6509768 bm!564206) bm!564207))

(declare-fun m!7296270 () Bool)

(assert (=> bm!564207 m!7296270))

(declare-fun m!7296272 () Bool)

(assert (=> b!6509771 m!7296272))

(declare-fun m!7296274 () Bool)

(assert (=> bm!564208 m!7296274))

(assert (=> start!639600 d!2042054))

(declare-fun d!2042056 () Bool)

(declare-fun c!1194004 () Bool)

(assert (=> d!2042056 (= c!1194004 (isEmpty!37567 (t!379112 s!2326)))))

(declare-fun e!3944116 () Bool)

(assert (=> d!2042056 (= (matchZipper!2404 lt!2394095 (t!379112 s!2326)) e!3944116)))

(declare-fun b!6509774 () Bool)

(assert (=> b!6509774 (= e!3944116 (nullableZipper!2145 lt!2394095))))

(declare-fun b!6509775 () Bool)

(assert (=> b!6509775 (= e!3944116 (matchZipper!2404 (derivationStepZipper!2358 lt!2394095 (head!13251 (t!379112 s!2326))) (tail!12336 (t!379112 s!2326))))))

(assert (= (and d!2042056 c!1194004) b!6509774))

(assert (= (and d!2042056 (not c!1194004)) b!6509775))

(assert (=> d!2042056 m!7296172))

(declare-fun m!7296276 () Bool)

(assert (=> b!6509774 m!7296276))

(assert (=> b!6509775 m!7296176))

(assert (=> b!6509775 m!7296176))

(declare-fun m!7296278 () Bool)

(assert (=> b!6509775 m!7296278))

(assert (=> b!6509775 m!7296180))

(assert (=> b!6509775 m!7296278))

(assert (=> b!6509775 m!7296180))

(declare-fun m!7296280 () Bool)

(assert (=> b!6509775 m!7296280))

(assert (=> b!6509503 d!2042056))

(declare-fun d!2042058 () Bool)

(declare-fun c!1194005 () Bool)

(assert (=> d!2042058 (= c!1194005 (isEmpty!37567 s!2326))))

(declare-fun e!3944117 () Bool)

(assert (=> d!2042058 (= (matchZipper!2404 lt!2394078 s!2326) e!3944117)))

(declare-fun b!6509776 () Bool)

(assert (=> b!6509776 (= e!3944117 (nullableZipper!2145 lt!2394078))))

(declare-fun b!6509777 () Bool)

(assert (=> b!6509777 (= e!3944117 (matchZipper!2404 (derivationStepZipper!2358 lt!2394078 (head!13251 s!2326)) (tail!12336 s!2326)))))

(assert (= (and d!2042058 c!1194005) b!6509776))

(assert (= (and d!2042058 (not c!1194005)) b!6509777))

(assert (=> d!2042058 m!7296144))

(declare-fun m!7296282 () Bool)

(assert (=> b!6509776 m!7296282))

(assert (=> b!6509777 m!7296148))

(assert (=> b!6509777 m!7296148))

(declare-fun m!7296284 () Bool)

(assert (=> b!6509777 m!7296284))

(assert (=> b!6509777 m!7296152))

(assert (=> b!6509777 m!7296284))

(assert (=> b!6509777 m!7296152))

(declare-fun m!7296286 () Bool)

(assert (=> b!6509777 m!7296286))

(assert (=> b!6509503 d!2042058))

(declare-fun d!2042060 () Bool)

(declare-fun lt!2394271 () Regex!16392)

(assert (=> d!2042060 (validRegex!8128 lt!2394271)))

(assert (=> d!2042060 (= lt!2394271 (generalisedUnion!2236 (unfocusZipperList!1813 zl!343)))))

(assert (=> d!2042060 (= (unfocusZipper!2134 zl!343) lt!2394271)))

(declare-fun bs!1652975 () Bool)

(assert (= bs!1652975 d!2042060))

(declare-fun m!7296288 () Bool)

(assert (=> bs!1652975 m!7296288))

(assert (=> bs!1652975 m!7296000))

(assert (=> bs!1652975 m!7296000))

(assert (=> bs!1652975 m!7296002))

(assert (=> b!6509502 d!2042060))

(declare-fun bs!1652976 () Bool)

(declare-fun d!2042062 () Bool)

(assert (= bs!1652976 (and d!2042062 b!6509479)))

(declare-fun lambda!361171 () Int)

(assert (=> bs!1652976 (= lambda!361171 lambda!361135)))

(declare-fun bs!1652977 () Bool)

(assert (= bs!1652977 (and d!2042062 d!2042028)))

(assert (=> bs!1652977 (= lambda!361171 lambda!361168)))

(declare-fun b!6509798 () Bool)

(declare-fun e!3944132 () Regex!16392)

(assert (=> b!6509798 (= e!3944132 (Union!16392 (h!71799 (unfocusZipperList!1813 zl!343)) (generalisedUnion!2236 (t!379111 (unfocusZipperList!1813 zl!343)))))))

(declare-fun b!6509799 () Bool)

(declare-fun e!3944131 () Bool)

(declare-fun e!3944135 () Bool)

(assert (=> b!6509799 (= e!3944131 e!3944135)))

(declare-fun c!1194016 () Bool)

(assert (=> b!6509799 (= c!1194016 (isEmpty!37564 (unfocusZipperList!1813 zl!343)))))

(declare-fun b!6509800 () Bool)

(declare-fun e!3944133 () Regex!16392)

(assert (=> b!6509800 (= e!3944133 (h!71799 (unfocusZipperList!1813 zl!343)))))

(declare-fun b!6509801 () Bool)

(assert (=> b!6509801 (= e!3944132 EmptyLang!16392)))

(assert (=> d!2042062 e!3944131))

(declare-fun res!2673518 () Bool)

(assert (=> d!2042062 (=> (not res!2673518) (not e!3944131))))

(declare-fun lt!2394274 () Regex!16392)

(assert (=> d!2042062 (= res!2673518 (validRegex!8128 lt!2394274))))

(assert (=> d!2042062 (= lt!2394274 e!3944133)))

(declare-fun c!1194017 () Bool)

(declare-fun e!3944134 () Bool)

(assert (=> d!2042062 (= c!1194017 e!3944134)))

(declare-fun res!2673517 () Bool)

(assert (=> d!2042062 (=> (not res!2673517) (not e!3944134))))

(assert (=> d!2042062 (= res!2673517 (is-Cons!65351 (unfocusZipperList!1813 zl!343)))))

(assert (=> d!2042062 (forall!15571 (unfocusZipperList!1813 zl!343) lambda!361171)))

(assert (=> d!2042062 (= (generalisedUnion!2236 (unfocusZipperList!1813 zl!343)) lt!2394274)))

(declare-fun b!6509802 () Bool)

(declare-fun e!3944130 () Bool)

(declare-fun head!13252 (List!65475) Regex!16392)

(assert (=> b!6509802 (= e!3944130 (= lt!2394274 (head!13252 (unfocusZipperList!1813 zl!343))))))

(declare-fun b!6509803 () Bool)

(declare-fun isUnion!1218 (Regex!16392) Bool)

(assert (=> b!6509803 (= e!3944130 (isUnion!1218 lt!2394274))))

(declare-fun b!6509804 () Bool)

(assert (=> b!6509804 (= e!3944133 e!3944132)))

(declare-fun c!1194015 () Bool)

(assert (=> b!6509804 (= c!1194015 (is-Cons!65351 (unfocusZipperList!1813 zl!343)))))

(declare-fun b!6509805 () Bool)

(assert (=> b!6509805 (= e!3944134 (isEmpty!37564 (t!379111 (unfocusZipperList!1813 zl!343))))))

(declare-fun b!6509806 () Bool)

(declare-fun isEmptyLang!1788 (Regex!16392) Bool)

(assert (=> b!6509806 (= e!3944135 (isEmptyLang!1788 lt!2394274))))

(declare-fun b!6509807 () Bool)

(assert (=> b!6509807 (= e!3944135 e!3944130)))

(declare-fun c!1194014 () Bool)

(declare-fun tail!12337 (List!65475) List!65475)

(assert (=> b!6509807 (= c!1194014 (isEmpty!37564 (tail!12337 (unfocusZipperList!1813 zl!343))))))

(assert (= (and d!2042062 res!2673517) b!6509805))

(assert (= (and d!2042062 c!1194017) b!6509800))

(assert (= (and d!2042062 (not c!1194017)) b!6509804))

(assert (= (and b!6509804 c!1194015) b!6509798))

(assert (= (and b!6509804 (not c!1194015)) b!6509801))

(assert (= (and d!2042062 res!2673518) b!6509799))

(assert (= (and b!6509799 c!1194016) b!6509806))

(assert (= (and b!6509799 (not c!1194016)) b!6509807))

(assert (= (and b!6509807 c!1194014) b!6509802))

(assert (= (and b!6509807 (not c!1194014)) b!6509803))

(declare-fun m!7296290 () Bool)

(assert (=> d!2042062 m!7296290))

(assert (=> d!2042062 m!7296000))

(declare-fun m!7296292 () Bool)

(assert (=> d!2042062 m!7296292))

(assert (=> b!6509799 m!7296000))

(declare-fun m!7296294 () Bool)

(assert (=> b!6509799 m!7296294))

(declare-fun m!7296296 () Bool)

(assert (=> b!6509798 m!7296296))

(declare-fun m!7296298 () Bool)

(assert (=> b!6509805 m!7296298))

(declare-fun m!7296300 () Bool)

(assert (=> b!6509806 m!7296300))

(assert (=> b!6509802 m!7296000))

(declare-fun m!7296302 () Bool)

(assert (=> b!6509802 m!7296302))

(assert (=> b!6509807 m!7296000))

(declare-fun m!7296304 () Bool)

(assert (=> b!6509807 m!7296304))

(assert (=> b!6509807 m!7296304))

(declare-fun m!7296306 () Bool)

(assert (=> b!6509807 m!7296306))

(declare-fun m!7296308 () Bool)

(assert (=> b!6509803 m!7296308))

(assert (=> b!6509482 d!2042062))

(declare-fun bs!1652978 () Bool)

(declare-fun d!2042064 () Bool)

(assert (= bs!1652978 (and d!2042064 b!6509479)))

(declare-fun lambda!361174 () Int)

(assert (=> bs!1652978 (= lambda!361174 lambda!361135)))

(declare-fun bs!1652979 () Bool)

(assert (= bs!1652979 (and d!2042064 d!2042028)))

(assert (=> bs!1652979 (= lambda!361174 lambda!361168)))

(declare-fun bs!1652980 () Bool)

(assert (= bs!1652980 (and d!2042064 d!2042062)))

(assert (=> bs!1652980 (= lambda!361174 lambda!361171)))

(declare-fun lt!2394277 () List!65475)

(assert (=> d!2042064 (forall!15571 lt!2394277 lambda!361174)))

(declare-fun e!3944138 () List!65475)

(assert (=> d!2042064 (= lt!2394277 e!3944138)))

(declare-fun c!1194020 () Bool)

(assert (=> d!2042064 (= c!1194020 (is-Cons!65353 zl!343))))

(assert (=> d!2042064 (= (unfocusZipperList!1813 zl!343) lt!2394277)))

(declare-fun b!6509812 () Bool)

(assert (=> b!6509812 (= e!3944138 (Cons!65351 (generalisedConcat!1989 (exprs!6276 (h!71801 zl!343))) (unfocusZipperList!1813 (t!379113 zl!343))))))

(declare-fun b!6509813 () Bool)

(assert (=> b!6509813 (= e!3944138 Nil!65351)))

(assert (= (and d!2042064 c!1194020) b!6509812))

(assert (= (and d!2042064 (not c!1194020)) b!6509813))

(declare-fun m!7296310 () Bool)

(assert (=> d!2042064 m!7296310))

(assert (=> b!6509812 m!7295870))

(declare-fun m!7296312 () Bool)

(assert (=> b!6509812 m!7296312))

(assert (=> b!6509482 d!2042064))

(declare-fun d!2042066 () Bool)

(declare-fun nullableFct!2319 (Regex!16392) Bool)

(assert (=> d!2042066 (= (nullable!6385 (h!71799 (exprs!6276 (h!71801 zl!343)))) (nullableFct!2319 (h!71799 (exprs!6276 (h!71801 zl!343)))))))

(declare-fun bs!1652981 () Bool)

(assert (= bs!1652981 d!2042066))

(declare-fun m!7296314 () Bool)

(assert (=> bs!1652981 m!7296314))

(assert (=> b!6509470 d!2042066))

(declare-fun bm!564209 () Bool)

(declare-fun call!564214 () (Set Context!11552))

(assert (=> bm!564209 (= call!564214 (derivationStepZipperDown!1640 (h!71799 (exprs!6276 (Context!11553 (Cons!65351 (h!71799 (exprs!6276 (h!71801 zl!343))) (t!379111 (exprs!6276 (h!71801 zl!343))))))) (Context!11553 (t!379111 (exprs!6276 (Context!11553 (Cons!65351 (h!71799 (exprs!6276 (h!71801 zl!343))) (t!379111 (exprs!6276 (h!71801 zl!343)))))))) (h!71800 s!2326)))))

(declare-fun b!6509814 () Bool)

(declare-fun e!3944141 () (Set Context!11552))

(assert (=> b!6509814 (= e!3944141 (as set.empty (Set Context!11552)))))

(declare-fun e!3944139 () (Set Context!11552))

(declare-fun b!6509815 () Bool)

(assert (=> b!6509815 (= e!3944139 (set.union call!564214 (derivationStepZipperUp!1566 (Context!11553 (t!379111 (exprs!6276 (Context!11553 (Cons!65351 (h!71799 (exprs!6276 (h!71801 zl!343))) (t!379111 (exprs!6276 (h!71801 zl!343)))))))) (h!71800 s!2326))))))

(declare-fun b!6509816 () Bool)

(assert (=> b!6509816 (= e!3944139 e!3944141)))

(declare-fun c!1194021 () Bool)

(assert (=> b!6509816 (= c!1194021 (is-Cons!65351 (exprs!6276 (Context!11553 (Cons!65351 (h!71799 (exprs!6276 (h!71801 zl!343))) (t!379111 (exprs!6276 (h!71801 zl!343))))))))))

(declare-fun d!2042068 () Bool)

(declare-fun c!1194022 () Bool)

(declare-fun e!3944140 () Bool)

(assert (=> d!2042068 (= c!1194022 e!3944140)))

(declare-fun res!2673519 () Bool)

(assert (=> d!2042068 (=> (not res!2673519) (not e!3944140))))

(assert (=> d!2042068 (= res!2673519 (is-Cons!65351 (exprs!6276 (Context!11553 (Cons!65351 (h!71799 (exprs!6276 (h!71801 zl!343))) (t!379111 (exprs!6276 (h!71801 zl!343))))))))))

(assert (=> d!2042068 (= (derivationStepZipperUp!1566 (Context!11553 (Cons!65351 (h!71799 (exprs!6276 (h!71801 zl!343))) (t!379111 (exprs!6276 (h!71801 zl!343))))) (h!71800 s!2326)) e!3944139)))

(declare-fun b!6509817 () Bool)

(assert (=> b!6509817 (= e!3944141 call!564214)))

(declare-fun b!6509818 () Bool)

(assert (=> b!6509818 (= e!3944140 (nullable!6385 (h!71799 (exprs!6276 (Context!11553 (Cons!65351 (h!71799 (exprs!6276 (h!71801 zl!343))) (t!379111 (exprs!6276 (h!71801 zl!343)))))))))))

(assert (= (and d!2042068 res!2673519) b!6509818))

(assert (= (and d!2042068 c!1194022) b!6509815))

(assert (= (and d!2042068 (not c!1194022)) b!6509816))

(assert (= (and b!6509816 c!1194021) b!6509817))

(assert (= (and b!6509816 (not c!1194021)) b!6509814))

(assert (= (or b!6509815 b!6509817) bm!564209))

(declare-fun m!7296316 () Bool)

(assert (=> bm!564209 m!7296316))

(declare-fun m!7296318 () Bool)

(assert (=> b!6509815 m!7296318))

(declare-fun m!7296320 () Bool)

(assert (=> b!6509818 m!7296320))

(assert (=> b!6509470 d!2042068))

(declare-fun bm!564222 () Bool)

(declare-fun call!564230 () List!65475)

(declare-fun call!564228 () List!65475)

(assert (=> bm!564222 (= call!564230 call!564228)))

(declare-fun bm!564223 () Bool)

(declare-fun call!564232 () (Set Context!11552))

(declare-fun call!564231 () (Set Context!11552))

(assert (=> bm!564223 (= call!564232 call!564231)))

(declare-fun b!6509841 () Bool)

(declare-fun e!3944156 () (Set Context!11552))

(assert (=> b!6509841 (= e!3944156 (as set.empty (Set Context!11552)))))

(declare-fun c!1194037 () Bool)

(declare-fun c!1194033 () Bool)

(declare-fun bm!564224 () Bool)

(declare-fun $colon$colon!2241 (List!65475 Regex!16392) List!65475)

(assert (=> bm!564224 (= call!564228 ($colon$colon!2241 (exprs!6276 lt!2394074) (ite (or c!1194033 c!1194037) (regTwo!33296 (h!71799 (exprs!6276 (h!71801 zl!343)))) (h!71799 (exprs!6276 (h!71801 zl!343))))))))

(declare-fun c!1194036 () Bool)

(declare-fun bm!564225 () Bool)

(declare-fun call!564227 () (Set Context!11552))

(assert (=> bm!564225 (= call!564227 (derivationStepZipperDown!1640 (ite c!1194036 (regOne!33297 (h!71799 (exprs!6276 (h!71801 zl!343)))) (regOne!33296 (h!71799 (exprs!6276 (h!71801 zl!343))))) (ite c!1194036 lt!2394074 (Context!11553 call!564228)) (h!71800 s!2326)))))

(declare-fun b!6509842 () Bool)

(declare-fun e!3944157 () Bool)

(assert (=> b!6509842 (= e!3944157 (nullable!6385 (regOne!33296 (h!71799 (exprs!6276 (h!71801 zl!343))))))))

(declare-fun b!6509843 () Bool)

(assert (=> b!6509843 (= e!3944156 call!564232)))

(declare-fun b!6509844 () Bool)

(assert (=> b!6509844 (= c!1194033 e!3944157)))

(declare-fun res!2673522 () Bool)

(assert (=> b!6509844 (=> (not res!2673522) (not e!3944157))))

(assert (=> b!6509844 (= res!2673522 (is-Concat!25237 (h!71799 (exprs!6276 (h!71801 zl!343)))))))

(declare-fun e!3944159 () (Set Context!11552))

(declare-fun e!3944158 () (Set Context!11552))

(assert (=> b!6509844 (= e!3944159 e!3944158)))

(declare-fun b!6509845 () Bool)

(declare-fun call!564229 () (Set Context!11552))

(assert (=> b!6509845 (= e!3944159 (set.union call!564227 call!564229))))

(declare-fun b!6509846 () Bool)

(declare-fun e!3944155 () (Set Context!11552))

(assert (=> b!6509846 (= e!3944155 call!564232)))

(declare-fun b!6509847 () Bool)

(declare-fun e!3944154 () (Set Context!11552))

(assert (=> b!6509847 (= e!3944154 e!3944159)))

(assert (=> b!6509847 (= c!1194036 (is-Union!16392 (h!71799 (exprs!6276 (h!71801 zl!343)))))))

(declare-fun b!6509848 () Bool)

(declare-fun c!1194035 () Bool)

(assert (=> b!6509848 (= c!1194035 (is-Star!16392 (h!71799 (exprs!6276 (h!71801 zl!343)))))))

(assert (=> b!6509848 (= e!3944155 e!3944156)))

(declare-fun d!2042070 () Bool)

(declare-fun c!1194034 () Bool)

(assert (=> d!2042070 (= c!1194034 (and (is-ElementMatch!16392 (h!71799 (exprs!6276 (h!71801 zl!343)))) (= (c!1193956 (h!71799 (exprs!6276 (h!71801 zl!343)))) (h!71800 s!2326))))))

(assert (=> d!2042070 (= (derivationStepZipperDown!1640 (h!71799 (exprs!6276 (h!71801 zl!343))) lt!2394074 (h!71800 s!2326)) e!3944154)))

(declare-fun b!6509849 () Bool)

(assert (=> b!6509849 (= e!3944158 (set.union call!564227 call!564231))))

(declare-fun bm!564226 () Bool)

(assert (=> bm!564226 (= call!564231 call!564229)))

(declare-fun b!6509850 () Bool)

(assert (=> b!6509850 (= e!3944154 (set.insert lt!2394074 (as set.empty (Set Context!11552))))))

(declare-fun bm!564227 () Bool)

(assert (=> bm!564227 (= call!564229 (derivationStepZipperDown!1640 (ite c!1194036 (regTwo!33297 (h!71799 (exprs!6276 (h!71801 zl!343)))) (ite c!1194033 (regTwo!33296 (h!71799 (exprs!6276 (h!71801 zl!343)))) (ite c!1194037 (regOne!33296 (h!71799 (exprs!6276 (h!71801 zl!343)))) (reg!16721 (h!71799 (exprs!6276 (h!71801 zl!343))))))) (ite (or c!1194036 c!1194033) lt!2394074 (Context!11553 call!564230)) (h!71800 s!2326)))))

(declare-fun b!6509851 () Bool)

(assert (=> b!6509851 (= e!3944158 e!3944155)))

(assert (=> b!6509851 (= c!1194037 (is-Concat!25237 (h!71799 (exprs!6276 (h!71801 zl!343)))))))

(assert (= (and d!2042070 c!1194034) b!6509850))

(assert (= (and d!2042070 (not c!1194034)) b!6509847))

(assert (= (and b!6509847 c!1194036) b!6509845))

(assert (= (and b!6509847 (not c!1194036)) b!6509844))

(assert (= (and b!6509844 res!2673522) b!6509842))

(assert (= (and b!6509844 c!1194033) b!6509849))

(assert (= (and b!6509844 (not c!1194033)) b!6509851))

(assert (= (and b!6509851 c!1194037) b!6509846))

(assert (= (and b!6509851 (not c!1194037)) b!6509848))

(assert (= (and b!6509848 c!1194035) b!6509843))

(assert (= (and b!6509848 (not c!1194035)) b!6509841))

(assert (= (or b!6509846 b!6509843) bm!564222))

(assert (= (or b!6509846 b!6509843) bm!564223))

(assert (= (or b!6509849 bm!564222) bm!564224))

(assert (= (or b!6509849 bm!564223) bm!564226))

(assert (= (or b!6509845 bm!564226) bm!564227))

(assert (= (or b!6509845 b!6509849) bm!564225))

(declare-fun m!7296322 () Bool)

(assert (=> b!6509850 m!7296322))

(declare-fun m!7296324 () Bool)

(assert (=> b!6509842 m!7296324))

(declare-fun m!7296326 () Bool)

(assert (=> bm!564225 m!7296326))

(declare-fun m!7296328 () Bool)

(assert (=> bm!564224 m!7296328))

(declare-fun m!7296330 () Bool)

(assert (=> bm!564227 m!7296330))

(assert (=> b!6509470 d!2042070))

(declare-fun d!2042072 () Bool)

(assert (=> d!2042072 (= (flatMap!1897 z!1189 lambda!361133) (choose!48383 z!1189 lambda!361133))))

(declare-fun bs!1652982 () Bool)

(assert (= bs!1652982 d!2042072))

(declare-fun m!7296332 () Bool)

(assert (=> bs!1652982 m!7296332))

(assert (=> b!6509470 d!2042072))

(declare-fun bm!564228 () Bool)

(declare-fun call!564233 () (Set Context!11552))

(assert (=> bm!564228 (= call!564233 (derivationStepZipperDown!1640 (h!71799 (exprs!6276 (h!71801 zl!343))) (Context!11553 (t!379111 (exprs!6276 (h!71801 zl!343)))) (h!71800 s!2326)))))

(declare-fun b!6509852 () Bool)

(declare-fun e!3944162 () (Set Context!11552))

(assert (=> b!6509852 (= e!3944162 (as set.empty (Set Context!11552)))))

(declare-fun b!6509853 () Bool)

(declare-fun e!3944160 () (Set Context!11552))

(assert (=> b!6509853 (= e!3944160 (set.union call!564233 (derivationStepZipperUp!1566 (Context!11553 (t!379111 (exprs!6276 (h!71801 zl!343)))) (h!71800 s!2326))))))

(declare-fun b!6509854 () Bool)

(assert (=> b!6509854 (= e!3944160 e!3944162)))

(declare-fun c!1194038 () Bool)

(assert (=> b!6509854 (= c!1194038 (is-Cons!65351 (exprs!6276 (h!71801 zl!343))))))

(declare-fun d!2042074 () Bool)

(declare-fun c!1194039 () Bool)

(declare-fun e!3944161 () Bool)

(assert (=> d!2042074 (= c!1194039 e!3944161)))

(declare-fun res!2673523 () Bool)

(assert (=> d!2042074 (=> (not res!2673523) (not e!3944161))))

(assert (=> d!2042074 (= res!2673523 (is-Cons!65351 (exprs!6276 (h!71801 zl!343))))))

(assert (=> d!2042074 (= (derivationStepZipperUp!1566 (h!71801 zl!343) (h!71800 s!2326)) e!3944160)))

(declare-fun b!6509855 () Bool)

(assert (=> b!6509855 (= e!3944162 call!564233)))

(declare-fun b!6509856 () Bool)

(assert (=> b!6509856 (= e!3944161 (nullable!6385 (h!71799 (exprs!6276 (h!71801 zl!343)))))))

(assert (= (and d!2042074 res!2673523) b!6509856))

(assert (= (and d!2042074 c!1194039) b!6509853))

(assert (= (and d!2042074 (not c!1194039)) b!6509854))

(assert (= (and b!6509854 c!1194038) b!6509855))

(assert (= (and b!6509854 (not c!1194038)) b!6509852))

(assert (= (or b!6509853 b!6509855) bm!564228))

(declare-fun m!7296334 () Bool)

(assert (=> bm!564228 m!7296334))

(declare-fun m!7296336 () Bool)

(assert (=> b!6509853 m!7296336))

(assert (=> b!6509856 m!7295892))

(assert (=> b!6509470 d!2042074))

(declare-fun bm!564229 () Bool)

(declare-fun call!564234 () (Set Context!11552))

(assert (=> bm!564229 (= call!564234 (derivationStepZipperDown!1640 (h!71799 (exprs!6276 lt!2394074)) (Context!11553 (t!379111 (exprs!6276 lt!2394074))) (h!71800 s!2326)))))

(declare-fun b!6509857 () Bool)

(declare-fun e!3944165 () (Set Context!11552))

(assert (=> b!6509857 (= e!3944165 (as set.empty (Set Context!11552)))))

(declare-fun e!3944163 () (Set Context!11552))

(declare-fun b!6509858 () Bool)

(assert (=> b!6509858 (= e!3944163 (set.union call!564234 (derivationStepZipperUp!1566 (Context!11553 (t!379111 (exprs!6276 lt!2394074))) (h!71800 s!2326))))))

(declare-fun b!6509859 () Bool)

(assert (=> b!6509859 (= e!3944163 e!3944165)))

(declare-fun c!1194040 () Bool)

(assert (=> b!6509859 (= c!1194040 (is-Cons!65351 (exprs!6276 lt!2394074)))))

(declare-fun d!2042076 () Bool)

(declare-fun c!1194041 () Bool)

(declare-fun e!3944164 () Bool)

(assert (=> d!2042076 (= c!1194041 e!3944164)))

(declare-fun res!2673524 () Bool)

(assert (=> d!2042076 (=> (not res!2673524) (not e!3944164))))

(assert (=> d!2042076 (= res!2673524 (is-Cons!65351 (exprs!6276 lt!2394074)))))

(assert (=> d!2042076 (= (derivationStepZipperUp!1566 lt!2394074 (h!71800 s!2326)) e!3944163)))

(declare-fun b!6509860 () Bool)

(assert (=> b!6509860 (= e!3944165 call!564234)))

(declare-fun b!6509861 () Bool)

(assert (=> b!6509861 (= e!3944164 (nullable!6385 (h!71799 (exprs!6276 lt!2394074))))))

(assert (= (and d!2042076 res!2673524) b!6509861))

(assert (= (and d!2042076 c!1194041) b!6509858))

(assert (= (and d!2042076 (not c!1194041)) b!6509859))

(assert (= (and b!6509859 c!1194040) b!6509860))

(assert (= (and b!6509859 (not c!1194040)) b!6509857))

(assert (= (or b!6509858 b!6509860) bm!564229))

(declare-fun m!7296338 () Bool)

(assert (=> bm!564229 m!7296338))

(declare-fun m!7296340 () Bool)

(assert (=> b!6509858 m!7296340))

(declare-fun m!7296342 () Bool)

(assert (=> b!6509861 m!7296342))

(assert (=> b!6509470 d!2042076))

(declare-fun d!2042078 () Bool)

(assert (=> d!2042078 (= (flatMap!1897 z!1189 lambda!361133) (dynLambda!25966 lambda!361133 (h!71801 zl!343)))))

(declare-fun lt!2394278 () Unit!158903)

(assert (=> d!2042078 (= lt!2394278 (choose!48384 z!1189 (h!71801 zl!343) lambda!361133))))

(assert (=> d!2042078 (= z!1189 (set.insert (h!71801 zl!343) (as set.empty (Set Context!11552))))))

(assert (=> d!2042078 (= (lemmaFlatMapOnSingletonSet!1423 z!1189 (h!71801 zl!343) lambda!361133) lt!2394278)))

(declare-fun b_lambda!246447 () Bool)

(assert (=> (not b_lambda!246447) (not d!2042078)))

(declare-fun bs!1652983 () Bool)

(assert (= bs!1652983 d!2042078))

(assert (=> bs!1652983 m!7295888))

(declare-fun m!7296344 () Bool)

(assert (=> bs!1652983 m!7296344))

(declare-fun m!7296346 () Bool)

(assert (=> bs!1652983 m!7296346))

(declare-fun m!7296348 () Bool)

(assert (=> bs!1652983 m!7296348))

(assert (=> b!6509470 d!2042078))

(declare-fun b!6509880 () Bool)

(declare-fun e!3944176 () Bool)

(assert (=> b!6509880 (= e!3944176 (matchR!8575 (regTwo!33296 r!7292) s!2326))))

(declare-fun b!6509881 () Bool)

(declare-fun e!3944179 () Bool)

(declare-fun lt!2394287 () Option!16283)

(assert (=> b!6509881 (= e!3944179 (= (++!14487 (_1!36674 (get!22670 lt!2394287)) (_2!36674 (get!22670 lt!2394287))) s!2326))))

(declare-fun b!6509882 () Bool)

(declare-fun res!2673537 () Bool)

(assert (=> b!6509882 (=> (not res!2673537) (not e!3944179))))

(assert (=> b!6509882 (= res!2673537 (matchR!8575 (regTwo!33296 r!7292) (_2!36674 (get!22670 lt!2394287))))))

(declare-fun b!6509883 () Bool)

(declare-fun e!3944180 () Option!16283)

(declare-fun e!3944178 () Option!16283)

(assert (=> b!6509883 (= e!3944180 e!3944178)))

(declare-fun c!1194047 () Bool)

(assert (=> b!6509883 (= c!1194047 (is-Nil!65352 s!2326))))

(declare-fun b!6509884 () Bool)

(assert (=> b!6509884 (= e!3944178 None!16282)))

(declare-fun b!6509885 () Bool)

(declare-fun res!2673539 () Bool)

(assert (=> b!6509885 (=> (not res!2673539) (not e!3944179))))

(assert (=> b!6509885 (= res!2673539 (matchR!8575 (regOne!33296 r!7292) (_1!36674 (get!22670 lt!2394287))))))

(declare-fun d!2042080 () Bool)

(declare-fun e!3944177 () Bool)

(assert (=> d!2042080 e!3944177))

(declare-fun res!2673535 () Bool)

(assert (=> d!2042080 (=> res!2673535 e!3944177)))

(assert (=> d!2042080 (= res!2673535 e!3944179)))

(declare-fun res!2673538 () Bool)

(assert (=> d!2042080 (=> (not res!2673538) (not e!3944179))))

(assert (=> d!2042080 (= res!2673538 (isDefined!12986 lt!2394287))))

(assert (=> d!2042080 (= lt!2394287 e!3944180)))

(declare-fun c!1194046 () Bool)

(assert (=> d!2042080 (= c!1194046 e!3944176)))

(declare-fun res!2673536 () Bool)

(assert (=> d!2042080 (=> (not res!2673536) (not e!3944176))))

(assert (=> d!2042080 (= res!2673536 (matchR!8575 (regOne!33296 r!7292) Nil!65352))))

(assert (=> d!2042080 (validRegex!8128 (regOne!33296 r!7292))))

(assert (=> d!2042080 (= (findConcatSeparation!2697 (regOne!33296 r!7292) (regTwo!33296 r!7292) Nil!65352 s!2326 s!2326) lt!2394287)))

(declare-fun b!6509886 () Bool)

(declare-fun lt!2394285 () Unit!158903)

(declare-fun lt!2394286 () Unit!158903)

(assert (=> b!6509886 (= lt!2394285 lt!2394286)))

(assert (=> b!6509886 (= (++!14487 (++!14487 Nil!65352 (Cons!65352 (h!71800 s!2326) Nil!65352)) (t!379112 s!2326)) s!2326)))

(assert (=> b!6509886 (= lt!2394286 (lemmaMoveElementToOtherListKeepsConcatEq!2543 Nil!65352 (h!71800 s!2326) (t!379112 s!2326) s!2326))))

(assert (=> b!6509886 (= e!3944178 (findConcatSeparation!2697 (regOne!33296 r!7292) (regTwo!33296 r!7292) (++!14487 Nil!65352 (Cons!65352 (h!71800 s!2326) Nil!65352)) (t!379112 s!2326) s!2326))))

(declare-fun b!6509887 () Bool)

(assert (=> b!6509887 (= e!3944180 (Some!16282 (tuple2!66743 Nil!65352 s!2326)))))

(declare-fun b!6509888 () Bool)

(assert (=> b!6509888 (= e!3944177 (not (isDefined!12986 lt!2394287)))))

(assert (= (and d!2042080 res!2673536) b!6509880))

(assert (= (and d!2042080 c!1194046) b!6509887))

(assert (= (and d!2042080 (not c!1194046)) b!6509883))

(assert (= (and b!6509883 c!1194047) b!6509884))

(assert (= (and b!6509883 (not c!1194047)) b!6509886))

(assert (= (and d!2042080 res!2673538) b!6509885))

(assert (= (and b!6509885 res!2673539) b!6509882))

(assert (= (and b!6509882 res!2673537) b!6509881))

(assert (= (and d!2042080 (not res!2673535)) b!6509888))

(assert (=> b!6509886 m!7296258))

(assert (=> b!6509886 m!7296258))

(assert (=> b!6509886 m!7296260))

(assert (=> b!6509886 m!7296262))

(assert (=> b!6509886 m!7296258))

(declare-fun m!7296350 () Bool)

(assert (=> b!6509886 m!7296350))

(declare-fun m!7296352 () Bool)

(assert (=> d!2042080 m!7296352))

(declare-fun m!7296354 () Bool)

(assert (=> d!2042080 m!7296354))

(declare-fun m!7296356 () Bool)

(assert (=> d!2042080 m!7296356))

(declare-fun m!7296358 () Bool)

(assert (=> b!6509882 m!7296358))

(declare-fun m!7296360 () Bool)

(assert (=> b!6509882 m!7296360))

(assert (=> b!6509881 m!7296358))

(declare-fun m!7296362 () Bool)

(assert (=> b!6509881 m!7296362))

(assert (=> b!6509888 m!7296352))

(declare-fun m!7296364 () Bool)

(assert (=> b!6509880 m!7296364))

(assert (=> b!6509885 m!7296358))

(declare-fun m!7296366 () Bool)

(assert (=> b!6509885 m!7296366))

(assert (=> b!6509469 d!2042080))

(declare-fun d!2042082 () Bool)

(declare-fun choose!48387 (Int) Bool)

(assert (=> d!2042082 (= (Exists!3462 lambda!361131) (choose!48387 lambda!361131))))

(declare-fun bs!1652984 () Bool)

(assert (= bs!1652984 d!2042082))

(declare-fun m!7296368 () Bool)

(assert (=> bs!1652984 m!7296368))

(assert (=> b!6509469 d!2042082))

(declare-fun bs!1652985 () Bool)

(declare-fun d!2042084 () Bool)

(assert (= bs!1652985 (and d!2042084 b!6509469)))

(declare-fun lambda!361177 () Int)

(assert (=> bs!1652985 (= lambda!361177 lambda!361131)))

(assert (=> bs!1652985 (not (= lambda!361177 lambda!361132))))

(assert (=> d!2042084 true))

(assert (=> d!2042084 true))

(assert (=> d!2042084 true))

(assert (=> d!2042084 (= (isDefined!12986 (findConcatSeparation!2697 (regOne!33296 r!7292) (regTwo!33296 r!7292) Nil!65352 s!2326 s!2326)) (Exists!3462 lambda!361177))))

(declare-fun lt!2394290 () Unit!158903)

(declare-fun choose!48388 (Regex!16392 Regex!16392 List!65476) Unit!158903)

(assert (=> d!2042084 (= lt!2394290 (choose!48388 (regOne!33296 r!7292) (regTwo!33296 r!7292) s!2326))))

(assert (=> d!2042084 (validRegex!8128 (regOne!33296 r!7292))))

(assert (=> d!2042084 (= (lemmaFindConcatSeparationEquivalentToExists!2461 (regOne!33296 r!7292) (regTwo!33296 r!7292) s!2326) lt!2394290)))

(declare-fun bs!1652986 () Bool)

(assert (= bs!1652986 d!2042084))

(assert (=> bs!1652986 m!7295942))

(declare-fun m!7296370 () Bool)

(assert (=> bs!1652986 m!7296370))

(declare-fun m!7296372 () Bool)

(assert (=> bs!1652986 m!7296372))

(assert (=> bs!1652986 m!7295942))

(assert (=> bs!1652986 m!7295944))

(assert (=> bs!1652986 m!7296356))

(assert (=> b!6509469 d!2042084))

(declare-fun d!2042086 () Bool)

(assert (=> d!2042086 (= (Exists!3462 lambda!361132) (choose!48387 lambda!361132))))

(declare-fun bs!1652987 () Bool)

(assert (= bs!1652987 d!2042086))

(declare-fun m!7296374 () Bool)

(assert (=> bs!1652987 m!7296374))

(assert (=> b!6509469 d!2042086))

(declare-fun bs!1652988 () Bool)

(declare-fun d!2042088 () Bool)

(assert (= bs!1652988 (and d!2042088 b!6509469)))

(declare-fun lambda!361182 () Int)

(assert (=> bs!1652988 (= lambda!361182 lambda!361131)))

(assert (=> bs!1652988 (not (= lambda!361182 lambda!361132))))

(declare-fun bs!1652989 () Bool)

(assert (= bs!1652989 (and d!2042088 d!2042084)))

(assert (=> bs!1652989 (= lambda!361182 lambda!361177)))

(assert (=> d!2042088 true))

(assert (=> d!2042088 true))

(assert (=> d!2042088 true))

(declare-fun lambda!361183 () Int)

(assert (=> bs!1652988 (not (= lambda!361183 lambda!361131))))

(assert (=> bs!1652988 (= lambda!361183 lambda!361132)))

(assert (=> bs!1652989 (not (= lambda!361183 lambda!361177))))

(declare-fun bs!1652990 () Bool)

(assert (= bs!1652990 d!2042088))

(assert (=> bs!1652990 (not (= lambda!361183 lambda!361182))))

(assert (=> d!2042088 true))

(assert (=> d!2042088 true))

(assert (=> d!2042088 true))

(assert (=> d!2042088 (= (Exists!3462 lambda!361182) (Exists!3462 lambda!361183))))

(declare-fun lt!2394293 () Unit!158903)

(declare-fun choose!48389 (Regex!16392 Regex!16392 List!65476) Unit!158903)

(assert (=> d!2042088 (= lt!2394293 (choose!48389 (regOne!33296 r!7292) (regTwo!33296 r!7292) s!2326))))

(assert (=> d!2042088 (validRegex!8128 (regOne!33296 r!7292))))

(assert (=> d!2042088 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1999 (regOne!33296 r!7292) (regTwo!33296 r!7292) s!2326) lt!2394293)))

(declare-fun m!7296376 () Bool)

(assert (=> bs!1652990 m!7296376))

(declare-fun m!7296378 () Bool)

(assert (=> bs!1652990 m!7296378))

(declare-fun m!7296380 () Bool)

(assert (=> bs!1652990 m!7296380))

(assert (=> bs!1652990 m!7296356))

(assert (=> b!6509469 d!2042088))

(declare-fun d!2042090 () Bool)

(assert (=> d!2042090 (= (isDefined!12986 (findConcatSeparation!2697 (regOne!33296 r!7292) (regTwo!33296 r!7292) Nil!65352 s!2326 s!2326)) (not (isEmpty!37568 (findConcatSeparation!2697 (regOne!33296 r!7292) (regTwo!33296 r!7292) Nil!65352 s!2326 s!2326))))))

(declare-fun bs!1652991 () Bool)

(assert (= bs!1652991 d!2042090))

(assert (=> bs!1652991 m!7295942))

(declare-fun m!7296382 () Bool)

(assert (=> bs!1652991 m!7296382))

(assert (=> b!6509469 d!2042090))

(declare-fun d!2042092 () Bool)

(declare-fun lt!2394294 () Regex!16392)

(assert (=> d!2042092 (validRegex!8128 lt!2394294)))

(assert (=> d!2042092 (= lt!2394294 (generalisedUnion!2236 (unfocusZipperList!1813 (Cons!65353 lt!2394102 Nil!65353))))))

(assert (=> d!2042092 (= (unfocusZipper!2134 (Cons!65353 lt!2394102 Nil!65353)) lt!2394294)))

(declare-fun bs!1652992 () Bool)

(assert (= bs!1652992 d!2042092))

(declare-fun m!7296384 () Bool)

(assert (=> bs!1652992 m!7296384))

(declare-fun m!7296386 () Bool)

(assert (=> bs!1652992 m!7296386))

(assert (=> bs!1652992 m!7296386))

(declare-fun m!7296388 () Bool)

(assert (=> bs!1652992 m!7296388))

(assert (=> b!6509489 d!2042092))

(declare-fun d!2042094 () Bool)

(declare-fun c!1194048 () Bool)

(assert (=> d!2042094 (= c!1194048 (isEmpty!37567 (t!379112 s!2326)))))

(declare-fun e!3944187 () Bool)

(assert (=> d!2042094 (= (matchZipper!2404 lt!2394087 (t!379112 s!2326)) e!3944187)))

(declare-fun b!6509901 () Bool)

(assert (=> b!6509901 (= e!3944187 (nullableZipper!2145 lt!2394087))))

(declare-fun b!6509902 () Bool)

(assert (=> b!6509902 (= e!3944187 (matchZipper!2404 (derivationStepZipper!2358 lt!2394087 (head!13251 (t!379112 s!2326))) (tail!12336 (t!379112 s!2326))))))

(assert (= (and d!2042094 c!1194048) b!6509901))

(assert (= (and d!2042094 (not c!1194048)) b!6509902))

(assert (=> d!2042094 m!7296172))

(declare-fun m!7296390 () Bool)

(assert (=> b!6509901 m!7296390))

(assert (=> b!6509902 m!7296176))

(assert (=> b!6509902 m!7296176))

(declare-fun m!7296392 () Bool)

(assert (=> b!6509902 m!7296392))

(assert (=> b!6509902 m!7296180))

(assert (=> b!6509902 m!7296392))

(assert (=> b!6509902 m!7296180))

(declare-fun m!7296394 () Bool)

(assert (=> b!6509902 m!7296394))

(assert (=> b!6509488 d!2042094))

(assert (=> b!6509468 d!2042094))

(declare-fun d!2042096 () Bool)

(declare-fun lt!2394295 () Regex!16392)

(assert (=> d!2042096 (validRegex!8128 lt!2394295)))

(assert (=> d!2042096 (= lt!2394295 (generalisedUnion!2236 (unfocusZipperList!1813 (Cons!65353 lt!2394093 Nil!65353))))))

(assert (=> d!2042096 (= (unfocusZipper!2134 (Cons!65353 lt!2394093 Nil!65353)) lt!2394295)))

(declare-fun bs!1652993 () Bool)

(assert (= bs!1652993 d!2042096))

(declare-fun m!7296396 () Bool)

(assert (=> bs!1652993 m!7296396))

(declare-fun m!7296398 () Bool)

(assert (=> bs!1652993 m!7296398))

(assert (=> bs!1652993 m!7296398))

(declare-fun m!7296400 () Bool)

(assert (=> bs!1652993 m!7296400))

(assert (=> b!6509467 d!2042096))

(declare-fun d!2042098 () Bool)

(assert (=> d!2042098 (= (isEmpty!37563 (t!379113 zl!343)) (is-Nil!65353 (t!379113 zl!343)))))

(assert (=> b!6509466 d!2042098))

(declare-fun d!2042100 () Bool)

(assert (=> d!2042100 (= (nullable!6385 (regOne!33296 (regOne!33296 r!7292))) (nullableFct!2319 (regOne!33296 (regOne!33296 r!7292))))))

(declare-fun bs!1652994 () Bool)

(assert (= bs!1652994 d!2042100))

(declare-fun m!7296402 () Bool)

(assert (=> bs!1652994 m!7296402))

(assert (=> b!6509496 d!2042100))

(declare-fun b!6509913 () Bool)

(declare-fun res!2673557 () Bool)

(declare-fun e!3944192 () Bool)

(assert (=> b!6509913 (=> (not res!2673557) (not e!3944192))))

(declare-fun lt!2394298 () List!65475)

(declare-fun size!40452 (List!65475) Int)

(assert (=> b!6509913 (= res!2673557 (= (size!40452 lt!2394298) (+ (size!40452 lt!2394085) (size!40452 lt!2394073))))))

(declare-fun d!2042102 () Bool)

(assert (=> d!2042102 e!3944192))

(declare-fun res!2673556 () Bool)

(assert (=> d!2042102 (=> (not res!2673556) (not e!3944192))))

(declare-fun content!12486 (List!65475) (Set Regex!16392))

(assert (=> d!2042102 (= res!2673556 (= (content!12486 lt!2394298) (set.union (content!12486 lt!2394085) (content!12486 lt!2394073))))))

(declare-fun e!3944193 () List!65475)

(assert (=> d!2042102 (= lt!2394298 e!3944193)))

(declare-fun c!1194051 () Bool)

(assert (=> d!2042102 (= c!1194051 (is-Nil!65351 lt!2394085))))

(assert (=> d!2042102 (= (++!14486 lt!2394085 lt!2394073) lt!2394298)))

(declare-fun b!6509911 () Bool)

(assert (=> b!6509911 (= e!3944193 lt!2394073)))

(declare-fun b!6509912 () Bool)

(assert (=> b!6509912 (= e!3944193 (Cons!65351 (h!71799 lt!2394085) (++!14486 (t!379111 lt!2394085) lt!2394073)))))

(declare-fun b!6509914 () Bool)

(assert (=> b!6509914 (= e!3944192 (or (not (= lt!2394073 Nil!65351)) (= lt!2394298 lt!2394085)))))

(assert (= (and d!2042102 c!1194051) b!6509911))

(assert (= (and d!2042102 (not c!1194051)) b!6509912))

(assert (= (and d!2042102 res!2673556) b!6509913))

(assert (= (and b!6509913 res!2673557) b!6509914))

(declare-fun m!7296404 () Bool)

(assert (=> b!6509913 m!7296404))

(declare-fun m!7296406 () Bool)

(assert (=> b!6509913 m!7296406))

(declare-fun m!7296408 () Bool)

(assert (=> b!6509913 m!7296408))

(declare-fun m!7296410 () Bool)

(assert (=> d!2042102 m!7296410))

(declare-fun m!7296412 () Bool)

(assert (=> d!2042102 m!7296412))

(declare-fun m!7296414 () Bool)

(assert (=> d!2042102 m!7296414))

(declare-fun m!7296416 () Bool)

(assert (=> b!6509912 m!7296416))

(assert (=> b!6509495 d!2042102))

(declare-fun bs!1652995 () Bool)

(declare-fun d!2042104 () Bool)

(assert (= bs!1652995 (and d!2042104 b!6509479)))

(declare-fun lambda!361186 () Int)

(assert (=> bs!1652995 (= lambda!361186 lambda!361135)))

(declare-fun bs!1652996 () Bool)

(assert (= bs!1652996 (and d!2042104 d!2042028)))

(assert (=> bs!1652996 (= lambda!361186 lambda!361168)))

(declare-fun bs!1652997 () Bool)

(assert (= bs!1652997 (and d!2042104 d!2042062)))

(assert (=> bs!1652997 (= lambda!361186 lambda!361171)))

(declare-fun bs!1652998 () Bool)

(assert (= bs!1652998 (and d!2042104 d!2042064)))

(assert (=> bs!1652998 (= lambda!361186 lambda!361174)))

(assert (=> d!2042104 (matchZipper!2404 (set.insert (Context!11553 (++!14486 (exprs!6276 lt!2394092) (exprs!6276 lt!2394093))) (as set.empty (Set Context!11552))) (++!14487 (_1!36674 lt!2394105) (_2!36674 lt!2394105)))))

(declare-fun lt!2394304 () Unit!158903)

(assert (=> d!2042104 (= lt!2394304 (lemmaConcatPreservesForall!365 (exprs!6276 lt!2394092) (exprs!6276 lt!2394093) lambda!361186))))

(declare-fun lt!2394303 () Unit!158903)

(declare-fun choose!48390 (Context!11552 Context!11552 List!65476 List!65476) Unit!158903)

(assert (=> d!2042104 (= lt!2394303 (choose!48390 lt!2394092 lt!2394093 (_1!36674 lt!2394105) (_2!36674 lt!2394105)))))

(assert (=> d!2042104 (matchZipper!2404 (set.insert lt!2394092 (as set.empty (Set Context!11552))) (_1!36674 lt!2394105))))

(assert (=> d!2042104 (= (lemmaConcatenateContextMatchesConcatOfStrings!173 lt!2394092 lt!2394093 (_1!36674 lt!2394105) (_2!36674 lt!2394105)) lt!2394303)))

(declare-fun bs!1652999 () Bool)

(assert (= bs!1652999 d!2042104))

(declare-fun m!7296418 () Bool)

(assert (=> bs!1652999 m!7296418))

(assert (=> bs!1652999 m!7295978))

(declare-fun m!7296420 () Bool)

(assert (=> bs!1652999 m!7296420))

(assert (=> bs!1652999 m!7295978))

(declare-fun m!7296422 () Bool)

(assert (=> bs!1652999 m!7296422))

(declare-fun m!7296424 () Bool)

(assert (=> bs!1652999 m!7296424))

(assert (=> bs!1652999 m!7295898))

(declare-fun m!7296426 () Bool)

(assert (=> bs!1652999 m!7296426))

(assert (=> bs!1652999 m!7295898))

(declare-fun m!7296428 () Bool)

(assert (=> bs!1652999 m!7296428))

(assert (=> bs!1652999 m!7296424))

(assert (=> b!6509495 d!2042104))

(declare-fun d!2042106 () Bool)

(declare-fun c!1194052 () Bool)

(assert (=> d!2042106 (= c!1194052 (isEmpty!37567 lt!2394110))))

(declare-fun e!3944194 () Bool)

(assert (=> d!2042106 (= (matchZipper!2404 (set.insert (Context!11553 (++!14486 lt!2394085 lt!2394073)) (as set.empty (Set Context!11552))) lt!2394110) e!3944194)))

(declare-fun b!6509915 () Bool)

(assert (=> b!6509915 (= e!3944194 (nullableZipper!2145 (set.insert (Context!11553 (++!14486 lt!2394085 lt!2394073)) (as set.empty (Set Context!11552)))))))

(declare-fun b!6509916 () Bool)

(assert (=> b!6509916 (= e!3944194 (matchZipper!2404 (derivationStepZipper!2358 (set.insert (Context!11553 (++!14486 lt!2394085 lt!2394073)) (as set.empty (Set Context!11552))) (head!13251 lt!2394110)) (tail!12336 lt!2394110)))))

(assert (= (and d!2042106 c!1194052) b!6509915))

(assert (= (and d!2042106 (not c!1194052)) b!6509916))

(declare-fun m!7296430 () Bool)

(assert (=> d!2042106 m!7296430))

(assert (=> b!6509915 m!7295958))

(declare-fun m!7296432 () Bool)

(assert (=> b!6509915 m!7296432))

(declare-fun m!7296434 () Bool)

(assert (=> b!6509916 m!7296434))

(assert (=> b!6509916 m!7295958))

(assert (=> b!6509916 m!7296434))

(declare-fun m!7296436 () Bool)

(assert (=> b!6509916 m!7296436))

(declare-fun m!7296438 () Bool)

(assert (=> b!6509916 m!7296438))

(assert (=> b!6509916 m!7296436))

(assert (=> b!6509916 m!7296438))

(declare-fun m!7296440 () Bool)

(assert (=> b!6509916 m!7296440))

(assert (=> b!6509495 d!2042106))

(declare-fun bs!1653000 () Bool)

(declare-fun d!2042108 () Bool)

(assert (= bs!1653000 (and d!2042108 d!2042064)))

(declare-fun lambda!361187 () Int)

(assert (=> bs!1653000 (= lambda!361187 lambda!361174)))

(declare-fun bs!1653001 () Bool)

(assert (= bs!1653001 (and d!2042108 d!2042028)))

(assert (=> bs!1653001 (= lambda!361187 lambda!361168)))

(declare-fun bs!1653002 () Bool)

(assert (= bs!1653002 (and d!2042108 b!6509479)))

(assert (=> bs!1653002 (= lambda!361187 lambda!361135)))

(declare-fun bs!1653003 () Bool)

(assert (= bs!1653003 (and d!2042108 d!2042062)))

(assert (=> bs!1653003 (= lambda!361187 lambda!361171)))

(declare-fun bs!1653004 () Bool)

(assert (= bs!1653004 (and d!2042108 d!2042104)))

(assert (=> bs!1653004 (= lambda!361187 lambda!361186)))

(assert (=> d!2042108 (= (inv!84228 lt!2394092) (forall!15571 (exprs!6276 lt!2394092) lambda!361187))))

(declare-fun bs!1653005 () Bool)

(assert (= bs!1653005 d!2042108))

(declare-fun m!7296442 () Bool)

(assert (=> bs!1653005 m!7296442))

(assert (=> b!6509495 d!2042108))

(declare-fun d!2042110 () Bool)

(assert (=> d!2042110 (forall!15571 (++!14486 lt!2394085 lt!2394073) lambda!361135)))

(declare-fun lt!2394307 () Unit!158903)

(declare-fun choose!48391 (List!65475 List!65475 Int) Unit!158903)

(assert (=> d!2042110 (= lt!2394307 (choose!48391 lt!2394085 lt!2394073 lambda!361135))))

(assert (=> d!2042110 (forall!15571 lt!2394085 lambda!361135)))

(assert (=> d!2042110 (= (lemmaConcatPreservesForall!365 lt!2394085 lt!2394073 lambda!361135) lt!2394307)))

(declare-fun bs!1653006 () Bool)

(assert (= bs!1653006 d!2042110))

(assert (=> bs!1653006 m!7295960))

(assert (=> bs!1653006 m!7295960))

(declare-fun m!7296444 () Bool)

(assert (=> bs!1653006 m!7296444))

(declare-fun m!7296446 () Bool)

(assert (=> bs!1653006 m!7296446))

(declare-fun m!7296448 () Bool)

(assert (=> bs!1653006 m!7296448))

(assert (=> b!6509495 d!2042110))

(declare-fun bs!1653007 () Bool)

(declare-fun d!2042112 () Bool)

(assert (= bs!1653007 (and d!2042112 d!2042064)))

(declare-fun lambda!361188 () Int)

(assert (=> bs!1653007 (= lambda!361188 lambda!361174)))

(declare-fun bs!1653008 () Bool)

(assert (= bs!1653008 (and d!2042112 d!2042028)))

(assert (=> bs!1653008 (= lambda!361188 lambda!361168)))

(declare-fun bs!1653009 () Bool)

(assert (= bs!1653009 (and d!2042112 d!2042108)))

(assert (=> bs!1653009 (= lambda!361188 lambda!361187)))

(declare-fun bs!1653010 () Bool)

(assert (= bs!1653010 (and d!2042112 b!6509479)))

(assert (=> bs!1653010 (= lambda!361188 lambda!361135)))

(declare-fun bs!1653011 () Bool)

(assert (= bs!1653011 (and d!2042112 d!2042062)))

(assert (=> bs!1653011 (= lambda!361188 lambda!361171)))

(declare-fun bs!1653012 () Bool)

(assert (= bs!1653012 (and d!2042112 d!2042104)))

(assert (=> bs!1653012 (= lambda!361188 lambda!361186)))

(assert (=> d!2042112 (= (inv!84228 (h!71801 zl!343)) (forall!15571 (exprs!6276 (h!71801 zl!343)) lambda!361188))))

(declare-fun bs!1653013 () Bool)

(assert (= bs!1653013 d!2042112))

(declare-fun m!7296450 () Bool)

(assert (=> bs!1653013 m!7296450))

(assert (=> b!6509494 d!2042112))

(declare-fun bs!1653014 () Bool)

(declare-fun b!6509958 () Bool)

(assert (= bs!1653014 (and b!6509958 d!2042088)))

(declare-fun lambda!361193 () Int)

(assert (=> bs!1653014 (not (= lambda!361193 lambda!361182))))

(declare-fun bs!1653015 () Bool)

(assert (= bs!1653015 (and b!6509958 d!2042084)))

(assert (=> bs!1653015 (not (= lambda!361193 lambda!361177))))

(declare-fun bs!1653016 () Bool)

(assert (= bs!1653016 (and b!6509958 b!6509469)))

(assert (=> bs!1653016 (not (= lambda!361193 lambda!361131))))

(assert (=> bs!1653016 (not (= lambda!361193 lambda!361132))))

(assert (=> bs!1653014 (not (= lambda!361193 lambda!361183))))

(assert (=> b!6509958 true))

(assert (=> b!6509958 true))

(declare-fun bs!1653017 () Bool)

(declare-fun b!6509952 () Bool)

(assert (= bs!1653017 (and b!6509952 d!2042088)))

(declare-fun lambda!361194 () Int)

(assert (=> bs!1653017 (not (= lambda!361194 lambda!361182))))

(declare-fun bs!1653018 () Bool)

(assert (= bs!1653018 (and b!6509952 d!2042084)))

(assert (=> bs!1653018 (not (= lambda!361194 lambda!361177))))

(declare-fun bs!1653019 () Bool)

(assert (= bs!1653019 (and b!6509952 b!6509958)))

(assert (=> bs!1653019 (not (= lambda!361194 lambda!361193))))

(declare-fun bs!1653020 () Bool)

(assert (= bs!1653020 (and b!6509952 b!6509469)))

(assert (=> bs!1653020 (not (= lambda!361194 lambda!361131))))

(assert (=> bs!1653020 (= lambda!361194 lambda!361132)))

(assert (=> bs!1653017 (= lambda!361194 lambda!361183)))

(assert (=> b!6509952 true))

(assert (=> b!6509952 true))

(declare-fun b!6509949 () Bool)

(declare-fun e!3944219 () Bool)

(declare-fun e!3944213 () Bool)

(assert (=> b!6509949 (= e!3944219 e!3944213)))

(declare-fun c!1194062 () Bool)

(assert (=> b!6509949 (= c!1194062 (is-Star!16392 r!7292))))

(declare-fun b!6509950 () Bool)

(declare-fun e!3944215 () Bool)

(assert (=> b!6509950 (= e!3944215 (= s!2326 (Cons!65352 (c!1193956 r!7292) Nil!65352)))))

(declare-fun call!564239 () Bool)

(declare-fun bm!564234 () Bool)

(assert (=> bm!564234 (= call!564239 (Exists!3462 (ite c!1194062 lambda!361193 lambda!361194)))))

(declare-fun d!2042114 () Bool)

(declare-fun c!1194063 () Bool)

(assert (=> d!2042114 (= c!1194063 (is-EmptyExpr!16392 r!7292))))

(declare-fun e!3944214 () Bool)

(assert (=> d!2042114 (= (matchRSpec!3493 r!7292 s!2326) e!3944214)))

(declare-fun b!6509951 () Bool)

(declare-fun e!3944216 () Bool)

(assert (=> b!6509951 (= e!3944214 e!3944216)))

(declare-fun res!2673575 () Bool)

(assert (=> b!6509951 (= res!2673575 (not (is-EmptyLang!16392 r!7292)))))

(assert (=> b!6509951 (=> (not res!2673575) (not e!3944216))))

(assert (=> b!6509952 (= e!3944213 call!564239)))

(declare-fun b!6509953 () Bool)

(declare-fun c!1194064 () Bool)

(assert (=> b!6509953 (= c!1194064 (is-Union!16392 r!7292))))

(assert (=> b!6509953 (= e!3944215 e!3944219)))

(declare-fun b!6509954 () Bool)

(declare-fun call!564240 () Bool)

(assert (=> b!6509954 (= e!3944214 call!564240)))

(declare-fun b!6509955 () Bool)

(declare-fun e!3944218 () Bool)

(assert (=> b!6509955 (= e!3944219 e!3944218)))

(declare-fun res!2673576 () Bool)

(assert (=> b!6509955 (= res!2673576 (matchRSpec!3493 (regOne!33297 r!7292) s!2326))))

(assert (=> b!6509955 (=> res!2673576 e!3944218)))

(declare-fun b!6509956 () Bool)

(declare-fun res!2673574 () Bool)

(declare-fun e!3944217 () Bool)

(assert (=> b!6509956 (=> res!2673574 e!3944217)))

(assert (=> b!6509956 (= res!2673574 call!564240)))

(assert (=> b!6509956 (= e!3944213 e!3944217)))

(declare-fun b!6509957 () Bool)

(declare-fun c!1194061 () Bool)

(assert (=> b!6509957 (= c!1194061 (is-ElementMatch!16392 r!7292))))

(assert (=> b!6509957 (= e!3944216 e!3944215)))

(assert (=> b!6509958 (= e!3944217 call!564239)))

(declare-fun bm!564235 () Bool)

(assert (=> bm!564235 (= call!564240 (isEmpty!37567 s!2326))))

(declare-fun b!6509959 () Bool)

(assert (=> b!6509959 (= e!3944218 (matchRSpec!3493 (regTwo!33297 r!7292) s!2326))))

(assert (= (and d!2042114 c!1194063) b!6509954))

(assert (= (and d!2042114 (not c!1194063)) b!6509951))

(assert (= (and b!6509951 res!2673575) b!6509957))

(assert (= (and b!6509957 c!1194061) b!6509950))

(assert (= (and b!6509957 (not c!1194061)) b!6509953))

(assert (= (and b!6509953 c!1194064) b!6509955))

(assert (= (and b!6509953 (not c!1194064)) b!6509949))

(assert (= (and b!6509955 (not res!2673576)) b!6509959))

(assert (= (and b!6509949 c!1194062) b!6509956))

(assert (= (and b!6509949 (not c!1194062)) b!6509952))

(assert (= (and b!6509956 (not res!2673574)) b!6509958))

(assert (= (or b!6509958 b!6509952) bm!564234))

(assert (= (or b!6509954 b!6509956) bm!564235))

(declare-fun m!7296452 () Bool)

(assert (=> bm!564234 m!7296452))

(declare-fun m!7296454 () Bool)

(assert (=> b!6509955 m!7296454))

(assert (=> bm!564235 m!7296144))

(declare-fun m!7296456 () Bool)

(assert (=> b!6509959 m!7296456))

(assert (=> b!6509493 d!2042114))

(declare-fun bm!564247 () Bool)

(declare-fun call!564252 () Bool)

(assert (=> bm!564247 (= call!564252 (isEmpty!37567 s!2326))))

(declare-fun b!6510015 () Bool)

(declare-fun e!3944258 () Bool)

(declare-fun e!3944257 () Bool)

(assert (=> b!6510015 (= e!3944258 e!3944257)))

(declare-fun res!2673611 () Bool)

(assert (=> b!6510015 (=> res!2673611 e!3944257)))

(assert (=> b!6510015 (= res!2673611 call!564252)))

(declare-fun b!6510016 () Bool)

(declare-fun res!2673614 () Bool)

(declare-fun e!3944256 () Bool)

(assert (=> b!6510016 (=> (not res!2673614) (not e!3944256))))

(assert (=> b!6510016 (= res!2673614 (isEmpty!37567 (tail!12336 s!2326)))))

(declare-fun b!6510017 () Bool)

(declare-fun e!3944261 () Bool)

(declare-fun e!3944259 () Bool)

(assert (=> b!6510017 (= e!3944261 e!3944259)))

(declare-fun c!1194079 () Bool)

(assert (=> b!6510017 (= c!1194079 (is-EmptyLang!16392 r!7292))))

(declare-fun b!6510019 () Bool)

(declare-fun e!3944255 () Bool)

(assert (=> b!6510019 (= e!3944255 (nullable!6385 r!7292))))

(declare-fun b!6510020 () Bool)

(declare-fun lt!2394310 () Bool)

(assert (=> b!6510020 (= e!3944261 (= lt!2394310 call!564252))))

(declare-fun b!6510021 () Bool)

(assert (=> b!6510021 (= e!3944256 (= (head!13251 s!2326) (c!1193956 r!7292)))))

(declare-fun b!6510022 () Bool)

(declare-fun res!2673615 () Bool)

(declare-fun e!3944260 () Bool)

(assert (=> b!6510022 (=> res!2673615 e!3944260)))

(assert (=> b!6510022 (= res!2673615 (not (is-ElementMatch!16392 r!7292)))))

(assert (=> b!6510022 (= e!3944259 e!3944260)))

(declare-fun b!6510023 () Bool)

(assert (=> b!6510023 (= e!3944257 (not (= (head!13251 s!2326) (c!1193956 r!7292))))))

(declare-fun b!6510024 () Bool)

(assert (=> b!6510024 (= e!3944259 (not lt!2394310))))

(declare-fun d!2042118 () Bool)

(assert (=> d!2042118 e!3944261))

(declare-fun c!1194078 () Bool)

(assert (=> d!2042118 (= c!1194078 (is-EmptyExpr!16392 r!7292))))

(assert (=> d!2042118 (= lt!2394310 e!3944255)))

(declare-fun c!1194077 () Bool)

(assert (=> d!2042118 (= c!1194077 (isEmpty!37567 s!2326))))

(assert (=> d!2042118 (validRegex!8128 r!7292)))

(assert (=> d!2042118 (= (matchR!8575 r!7292 s!2326) lt!2394310)))

(declare-fun b!6510018 () Bool)

(declare-fun res!2673609 () Bool)

(assert (=> b!6510018 (=> res!2673609 e!3944257)))

(assert (=> b!6510018 (= res!2673609 (not (isEmpty!37567 (tail!12336 s!2326))))))

(declare-fun b!6510025 () Bool)

(declare-fun res!2673613 () Bool)

(assert (=> b!6510025 (=> (not res!2673613) (not e!3944256))))

(assert (=> b!6510025 (= res!2673613 (not call!564252))))

(declare-fun b!6510026 () Bool)

(declare-fun derivativeStep!5084 (Regex!16392 C!33054) Regex!16392)

(assert (=> b!6510026 (= e!3944255 (matchR!8575 (derivativeStep!5084 r!7292 (head!13251 s!2326)) (tail!12336 s!2326)))))

(declare-fun b!6510027 () Bool)

(declare-fun res!2673608 () Bool)

(assert (=> b!6510027 (=> res!2673608 e!3944260)))

(assert (=> b!6510027 (= res!2673608 e!3944256)))

(declare-fun res!2673610 () Bool)

(assert (=> b!6510027 (=> (not res!2673610) (not e!3944256))))

(assert (=> b!6510027 (= res!2673610 lt!2394310)))

(declare-fun b!6510028 () Bool)

(assert (=> b!6510028 (= e!3944260 e!3944258)))

(declare-fun res!2673612 () Bool)

(assert (=> b!6510028 (=> (not res!2673612) (not e!3944258))))

(assert (=> b!6510028 (= res!2673612 (not lt!2394310))))

(assert (= (and d!2042118 c!1194077) b!6510019))

(assert (= (and d!2042118 (not c!1194077)) b!6510026))

(assert (= (and d!2042118 c!1194078) b!6510020))

(assert (= (and d!2042118 (not c!1194078)) b!6510017))

(assert (= (and b!6510017 c!1194079) b!6510024))

(assert (= (and b!6510017 (not c!1194079)) b!6510022))

(assert (= (and b!6510022 (not res!2673615)) b!6510027))

(assert (= (and b!6510027 res!2673610) b!6510025))

(assert (= (and b!6510025 res!2673613) b!6510016))

(assert (= (and b!6510016 res!2673614) b!6510021))

(assert (= (and b!6510027 (not res!2673608)) b!6510028))

(assert (= (and b!6510028 res!2673612) b!6510015))

(assert (= (and b!6510015 (not res!2673611)) b!6510018))

(assert (= (and b!6510018 (not res!2673609)) b!6510023))

(assert (= (or b!6510020 b!6510015 b!6510025) bm!564247))

(assert (=> b!6510016 m!7296152))

(assert (=> b!6510016 m!7296152))

(declare-fun m!7296458 () Bool)

(assert (=> b!6510016 m!7296458))

(assert (=> d!2042118 m!7296144))

(assert (=> d!2042118 m!7295878))

(assert (=> bm!564247 m!7296144))

(declare-fun m!7296460 () Bool)

(assert (=> b!6510019 m!7296460))

(assert (=> b!6510023 m!7296148))

(assert (=> b!6510026 m!7296148))

(assert (=> b!6510026 m!7296148))

(declare-fun m!7296462 () Bool)

(assert (=> b!6510026 m!7296462))

(assert (=> b!6510026 m!7296152))

(assert (=> b!6510026 m!7296462))

(assert (=> b!6510026 m!7296152))

(declare-fun m!7296466 () Bool)

(assert (=> b!6510026 m!7296466))

(assert (=> b!6510021 m!7296148))

(assert (=> b!6510018 m!7296152))

(assert (=> b!6510018 m!7296152))

(assert (=> b!6510018 m!7296458))

(assert (=> b!6509493 d!2042118))

(declare-fun d!2042120 () Bool)

(assert (=> d!2042120 (= (matchR!8575 r!7292 s!2326) (matchRSpec!3493 r!7292 s!2326))))

(declare-fun lt!2394313 () Unit!158903)

(declare-fun choose!48392 (Regex!16392 List!65476) Unit!158903)

(assert (=> d!2042120 (= lt!2394313 (choose!48392 r!7292 s!2326))))

(assert (=> d!2042120 (validRegex!8128 r!7292)))

(assert (=> d!2042120 (= (mainMatchTheorem!3493 r!7292 s!2326) lt!2394313)))

(declare-fun bs!1653021 () Bool)

(assert (= bs!1653021 d!2042120))

(assert (=> bs!1653021 m!7295866))

(assert (=> bs!1653021 m!7295864))

(declare-fun m!7296472 () Bool)

(assert (=> bs!1653021 m!7296472))

(assert (=> bs!1653021 m!7295878))

(assert (=> b!6509493 d!2042120))

(assert (=> b!6509481 d!2042024))

(declare-fun d!2042124 () Bool)

(declare-fun e!3944264 () Bool)

(assert (=> d!2042124 e!3944264))

(declare-fun res!2673618 () Bool)

(assert (=> d!2042124 (=> (not res!2673618) (not e!3944264))))

(declare-fun lt!2394316 () List!65477)

(declare-fun noDuplicate!2207 (List!65477) Bool)

(assert (=> d!2042124 (= res!2673618 (noDuplicate!2207 lt!2394316))))

(declare-fun choose!48393 ((Set Context!11552)) List!65477)

(assert (=> d!2042124 (= lt!2394316 (choose!48393 z!1189))))

(assert (=> d!2042124 (= (toList!10176 z!1189) lt!2394316)))

(declare-fun b!6510031 () Bool)

(declare-fun content!12487 (List!65477) (Set Context!11552))

(assert (=> b!6510031 (= e!3944264 (= (content!12487 lt!2394316) z!1189))))

(assert (= (and d!2042124 res!2673618) b!6510031))

(declare-fun m!7296474 () Bool)

(assert (=> d!2042124 m!7296474))

(declare-fun m!7296476 () Bool)

(assert (=> d!2042124 m!7296476))

(declare-fun m!7296478 () Bool)

(assert (=> b!6510031 m!7296478))

(assert (=> b!6509501 d!2042124))

(declare-fun d!2042126 () Bool)

(declare-fun c!1194080 () Bool)

(assert (=> d!2042126 (= c!1194080 (isEmpty!37567 (_1!36674 lt!2394105)))))

(declare-fun e!3944265 () Bool)

(assert (=> d!2042126 (= (matchZipper!2404 lt!2394072 (_1!36674 lt!2394105)) e!3944265)))

(declare-fun b!6510032 () Bool)

(assert (=> b!6510032 (= e!3944265 (nullableZipper!2145 lt!2394072))))

(declare-fun b!6510033 () Bool)

(assert (=> b!6510033 (= e!3944265 (matchZipper!2404 (derivationStepZipper!2358 lt!2394072 (head!13251 (_1!36674 lt!2394105))) (tail!12336 (_1!36674 lt!2394105))))))

(assert (= (and d!2042126 c!1194080) b!6510032))

(assert (= (and d!2042126 (not c!1194080)) b!6510033))

(declare-fun m!7296480 () Bool)

(assert (=> d!2042126 m!7296480))

(declare-fun m!7296482 () Bool)

(assert (=> b!6510032 m!7296482))

(declare-fun m!7296484 () Bool)

(assert (=> b!6510033 m!7296484))

(assert (=> b!6510033 m!7296484))

(declare-fun m!7296486 () Bool)

(assert (=> b!6510033 m!7296486))

(declare-fun m!7296488 () Bool)

(assert (=> b!6510033 m!7296488))

(assert (=> b!6510033 m!7296486))

(assert (=> b!6510033 m!7296488))

(declare-fun m!7296490 () Bool)

(assert (=> b!6510033 m!7296490))

(assert (=> b!6509480 d!2042126))

(assert (=> b!6509479 d!2042110))

(declare-fun d!2042128 () Bool)

(declare-fun choose!48395 ((Set Context!11552) Int) (Set Context!11552))

(assert (=> d!2042128 (= (map!14897 lt!2394072 lambda!361134) (choose!48395 lt!2394072 lambda!361134))))

(declare-fun bs!1653022 () Bool)

(assert (= bs!1653022 d!2042128))

(declare-fun m!7296492 () Bool)

(assert (=> bs!1653022 m!7296492))

(assert (=> b!6509479 d!2042128))

(assert (=> b!6509479 d!2042102))

(declare-fun d!2042130 () Bool)

(declare-fun dynLambda!25967 (Int Context!11552) Context!11552)

(assert (=> d!2042130 (= (map!14897 lt!2394072 lambda!361134) (set.insert (dynLambda!25967 lambda!361134 lt!2394092) (as set.empty (Set Context!11552))))))

(declare-fun lt!2394319 () Unit!158903)

(declare-fun choose!48396 ((Set Context!11552) Context!11552 Int) Unit!158903)

(assert (=> d!2042130 (= lt!2394319 (choose!48396 lt!2394072 lt!2394092 lambda!361134))))

(assert (=> d!2042130 (= lt!2394072 (set.insert lt!2394092 (as set.empty (Set Context!11552))))))

(assert (=> d!2042130 (= (lemmaMapOnSingletonSet!175 lt!2394072 lt!2394092 lambda!361134) lt!2394319)))

(declare-fun b_lambda!246449 () Bool)

(assert (=> (not b_lambda!246449) (not d!2042130)))

(declare-fun bs!1653023 () Bool)

(assert (= bs!1653023 d!2042130))

(assert (=> bs!1653023 m!7295978))

(declare-fun m!7296494 () Bool)

(assert (=> bs!1653023 m!7296494))

(declare-fun m!7296496 () Bool)

(assert (=> bs!1653023 m!7296496))

(assert (=> bs!1653023 m!7296496))

(declare-fun m!7296498 () Bool)

(assert (=> bs!1653023 m!7296498))

(assert (=> bs!1653023 m!7295952))

(assert (=> b!6509479 d!2042130))

(declare-fun bs!1653024 () Bool)

(declare-fun d!2042132 () Bool)

(assert (= bs!1653024 (and d!2042132 b!6509479)))

(declare-fun lambda!361199 () Int)

(assert (=> bs!1653024 (= (= (exprs!6276 lt!2394093) lt!2394073) (= lambda!361199 lambda!361134))))

(assert (=> d!2042132 true))

(assert (=> d!2042132 (= (appendTo!153 lt!2394072 lt!2394093) (map!14897 lt!2394072 lambda!361199))))

(declare-fun bs!1653025 () Bool)

(assert (= bs!1653025 d!2042132))

(declare-fun m!7296500 () Bool)

(assert (=> bs!1653025 m!7296500))

(assert (=> b!6509479 d!2042132))

(declare-fun bs!1653026 () Bool)

(declare-fun d!2042134 () Bool)

(assert (= bs!1653026 (and d!2042134 d!2042112)))

(declare-fun lambda!361202 () Int)

(assert (=> bs!1653026 (= lambda!361202 lambda!361188)))

(declare-fun bs!1653027 () Bool)

(assert (= bs!1653027 (and d!2042134 d!2042064)))

(assert (=> bs!1653027 (= lambda!361202 lambda!361174)))

(declare-fun bs!1653028 () Bool)

(assert (= bs!1653028 (and d!2042134 d!2042028)))

(assert (=> bs!1653028 (= lambda!361202 lambda!361168)))

(declare-fun bs!1653029 () Bool)

(assert (= bs!1653029 (and d!2042134 d!2042108)))

(assert (=> bs!1653029 (= lambda!361202 lambda!361187)))

(declare-fun bs!1653030 () Bool)

(assert (= bs!1653030 (and d!2042134 b!6509479)))

(assert (=> bs!1653030 (= lambda!361202 lambda!361135)))

(declare-fun bs!1653031 () Bool)

(assert (= bs!1653031 (and d!2042134 d!2042062)))

(assert (=> bs!1653031 (= lambda!361202 lambda!361171)))

(declare-fun bs!1653032 () Bool)

(assert (= bs!1653032 (and d!2042134 d!2042104)))

(assert (=> bs!1653032 (= lambda!361202 lambda!361186)))

(declare-fun e!3944293 () Bool)

(assert (=> d!2042134 e!3944293))

(declare-fun res!2673626 () Bool)

(assert (=> d!2042134 (=> (not res!2673626) (not e!3944293))))

(declare-fun lt!2394324 () Regex!16392)

(assert (=> d!2042134 (= res!2673626 (validRegex!8128 lt!2394324))))

(declare-fun e!3944291 () Regex!16392)

(assert (=> d!2042134 (= lt!2394324 e!3944291)))

(declare-fun c!1194103 () Bool)

(declare-fun e!3944294 () Bool)

(assert (=> d!2042134 (= c!1194103 e!3944294)))

(declare-fun res!2673625 () Bool)

(assert (=> d!2042134 (=> (not res!2673625) (not e!3944294))))

(assert (=> d!2042134 (= res!2673625 (is-Cons!65351 (exprs!6276 (h!71801 zl!343))))))

(assert (=> d!2042134 (forall!15571 (exprs!6276 (h!71801 zl!343)) lambda!361202)))

(assert (=> d!2042134 (= (generalisedConcat!1989 (exprs!6276 (h!71801 zl!343))) lt!2394324)))

(declare-fun b!6510078 () Bool)

(assert (=> b!6510078 (= e!3944291 (h!71799 (exprs!6276 (h!71801 zl!343))))))

(declare-fun b!6510079 () Bool)

(declare-fun e!3944295 () Bool)

(assert (=> b!6510079 (= e!3944293 e!3944295)))

(declare-fun c!1194100 () Bool)

(assert (=> b!6510079 (= c!1194100 (isEmpty!37564 (exprs!6276 (h!71801 zl!343))))))

(declare-fun b!6510080 () Bool)

(declare-fun e!3944292 () Regex!16392)

(assert (=> b!6510080 (= e!3944291 e!3944292)))

(declare-fun c!1194102 () Bool)

(assert (=> b!6510080 (= c!1194102 (is-Cons!65351 (exprs!6276 (h!71801 zl!343))))))

(declare-fun b!6510081 () Bool)

(declare-fun e!3944290 () Bool)

(assert (=> b!6510081 (= e!3944290 (= lt!2394324 (head!13252 (exprs!6276 (h!71801 zl!343)))))))

(declare-fun b!6510082 () Bool)

(assert (=> b!6510082 (= e!3944292 EmptyExpr!16392)))

(declare-fun b!6510083 () Bool)

(assert (=> b!6510083 (= e!3944294 (isEmpty!37564 (t!379111 (exprs!6276 (h!71801 zl!343)))))))

(declare-fun b!6510084 () Bool)

(assert (=> b!6510084 (= e!3944292 (Concat!25237 (h!71799 (exprs!6276 (h!71801 zl!343))) (generalisedConcat!1989 (t!379111 (exprs!6276 (h!71801 zl!343))))))))

(declare-fun b!6510085 () Bool)

(assert (=> b!6510085 (= e!3944295 e!3944290)))

(declare-fun c!1194101 () Bool)

(assert (=> b!6510085 (= c!1194101 (isEmpty!37564 (tail!12337 (exprs!6276 (h!71801 zl!343)))))))

(declare-fun b!6510086 () Bool)

(declare-fun isEmptyExpr!1779 (Regex!16392) Bool)

(assert (=> b!6510086 (= e!3944295 (isEmptyExpr!1779 lt!2394324))))

(declare-fun b!6510087 () Bool)

(declare-fun isConcat!1302 (Regex!16392) Bool)

(assert (=> b!6510087 (= e!3944290 (isConcat!1302 lt!2394324))))

(assert (= (and d!2042134 res!2673625) b!6510083))

(assert (= (and d!2042134 c!1194103) b!6510078))

(assert (= (and d!2042134 (not c!1194103)) b!6510080))

(assert (= (and b!6510080 c!1194102) b!6510084))

(assert (= (and b!6510080 (not c!1194102)) b!6510082))

(assert (= (and d!2042134 res!2673626) b!6510079))

(assert (= (and b!6510079 c!1194100) b!6510086))

(assert (= (and b!6510079 (not c!1194100)) b!6510085))

(assert (= (and b!6510085 c!1194101) b!6510081))

(assert (= (and b!6510085 (not c!1194101)) b!6510087))

(assert (=> b!6510083 m!7295918))

(declare-fun m!7296502 () Bool)

(assert (=> b!6510084 m!7296502))

(declare-fun m!7296504 () Bool)

(assert (=> b!6510081 m!7296504))

(declare-fun m!7296506 () Bool)

(assert (=> b!6510086 m!7296506))

(declare-fun m!7296508 () Bool)

(assert (=> b!6510087 m!7296508))

(declare-fun m!7296510 () Bool)

(assert (=> d!2042134 m!7296510))

(declare-fun m!7296512 () Bool)

(assert (=> d!2042134 m!7296512))

(declare-fun m!7296514 () Bool)

(assert (=> b!6510085 m!7296514))

(assert (=> b!6510085 m!7296514))

(declare-fun m!7296516 () Bool)

(assert (=> b!6510085 m!7296516))

(declare-fun m!7296518 () Bool)

(assert (=> b!6510079 m!7296518))

(assert (=> b!6509499 d!2042134))

(declare-fun bm!564266 () Bool)

(declare-fun call!564271 () Bool)

(assert (=> bm!564266 (= call!564271 (isEmpty!37567 s!2326))))

(declare-fun b!6510099 () Bool)

(declare-fun e!3944305 () Bool)

(declare-fun e!3944304 () Bool)

(assert (=> b!6510099 (= e!3944305 e!3944304)))

(declare-fun res!2673631 () Bool)

(assert (=> b!6510099 (=> res!2673631 e!3944304)))

(assert (=> b!6510099 (= res!2673631 call!564271)))

(declare-fun b!6510100 () Bool)

(declare-fun res!2673634 () Bool)

(declare-fun e!3944303 () Bool)

(assert (=> b!6510100 (=> (not res!2673634) (not e!3944303))))

(assert (=> b!6510100 (= res!2673634 (isEmpty!37567 (tail!12336 s!2326)))))

(declare-fun b!6510101 () Bool)

(declare-fun e!3944308 () Bool)

(declare-fun e!3944306 () Bool)

(assert (=> b!6510101 (= e!3944308 e!3944306)))

(declare-fun c!1194111 () Bool)

(assert (=> b!6510101 (= c!1194111 (is-EmptyLang!16392 lt!2394088))))

(declare-fun b!6510103 () Bool)

(declare-fun e!3944302 () Bool)

(assert (=> b!6510103 (= e!3944302 (nullable!6385 lt!2394088))))

(declare-fun b!6510104 () Bool)

(declare-fun lt!2394325 () Bool)

(assert (=> b!6510104 (= e!3944308 (= lt!2394325 call!564271))))

(declare-fun b!6510105 () Bool)

(assert (=> b!6510105 (= e!3944303 (= (head!13251 s!2326) (c!1193956 lt!2394088)))))

(declare-fun b!6510106 () Bool)

(declare-fun res!2673635 () Bool)

(declare-fun e!3944307 () Bool)

(assert (=> b!6510106 (=> res!2673635 e!3944307)))

(assert (=> b!6510106 (= res!2673635 (not (is-ElementMatch!16392 lt!2394088)))))

(assert (=> b!6510106 (= e!3944306 e!3944307)))

(declare-fun b!6510107 () Bool)

(assert (=> b!6510107 (= e!3944304 (not (= (head!13251 s!2326) (c!1193956 lt!2394088))))))

(declare-fun b!6510108 () Bool)

(assert (=> b!6510108 (= e!3944306 (not lt!2394325))))

(declare-fun d!2042136 () Bool)

(assert (=> d!2042136 e!3944308))

(declare-fun c!1194110 () Bool)

(assert (=> d!2042136 (= c!1194110 (is-EmptyExpr!16392 lt!2394088))))

(assert (=> d!2042136 (= lt!2394325 e!3944302)))

(declare-fun c!1194109 () Bool)

(assert (=> d!2042136 (= c!1194109 (isEmpty!37567 s!2326))))

(assert (=> d!2042136 (validRegex!8128 lt!2394088)))

(assert (=> d!2042136 (= (matchR!8575 lt!2394088 s!2326) lt!2394325)))

(declare-fun b!6510102 () Bool)

(declare-fun res!2673629 () Bool)

(assert (=> b!6510102 (=> res!2673629 e!3944304)))

(assert (=> b!6510102 (= res!2673629 (not (isEmpty!37567 (tail!12336 s!2326))))))

(declare-fun b!6510109 () Bool)

(declare-fun res!2673633 () Bool)

(assert (=> b!6510109 (=> (not res!2673633) (not e!3944303))))

(assert (=> b!6510109 (= res!2673633 (not call!564271))))

(declare-fun b!6510110 () Bool)

(assert (=> b!6510110 (= e!3944302 (matchR!8575 (derivativeStep!5084 lt!2394088 (head!13251 s!2326)) (tail!12336 s!2326)))))

(declare-fun b!6510111 () Bool)

(declare-fun res!2673628 () Bool)

(assert (=> b!6510111 (=> res!2673628 e!3944307)))

(assert (=> b!6510111 (= res!2673628 e!3944303)))

(declare-fun res!2673630 () Bool)

(assert (=> b!6510111 (=> (not res!2673630) (not e!3944303))))

(assert (=> b!6510111 (= res!2673630 lt!2394325)))

(declare-fun b!6510112 () Bool)

(assert (=> b!6510112 (= e!3944307 e!3944305)))

(declare-fun res!2673632 () Bool)

(assert (=> b!6510112 (=> (not res!2673632) (not e!3944305))))

(assert (=> b!6510112 (= res!2673632 (not lt!2394325))))

(assert (= (and d!2042136 c!1194109) b!6510103))

(assert (= (and d!2042136 (not c!1194109)) b!6510110))

(assert (= (and d!2042136 c!1194110) b!6510104))

(assert (= (and d!2042136 (not c!1194110)) b!6510101))

(assert (= (and b!6510101 c!1194111) b!6510108))

(assert (= (and b!6510101 (not c!1194111)) b!6510106))

(assert (= (and b!6510106 (not res!2673635)) b!6510111))

(assert (= (and b!6510111 res!2673630) b!6510109))

(assert (= (and b!6510109 res!2673633) b!6510100))

(assert (= (and b!6510100 res!2673634) b!6510105))

(assert (= (and b!6510111 (not res!2673628)) b!6510112))

(assert (= (and b!6510112 res!2673632) b!6510099))

(assert (= (and b!6510099 (not res!2673631)) b!6510102))

(assert (= (and b!6510102 (not res!2673629)) b!6510107))

(assert (= (or b!6510104 b!6510099 b!6510109) bm!564266))

(assert (=> b!6510100 m!7296152))

(assert (=> b!6510100 m!7296152))

(assert (=> b!6510100 m!7296458))

(assert (=> d!2042136 m!7296144))

(declare-fun m!7296520 () Bool)

(assert (=> d!2042136 m!7296520))

(assert (=> bm!564266 m!7296144))

(declare-fun m!7296522 () Bool)

(assert (=> b!6510103 m!7296522))

(assert (=> b!6510107 m!7296148))

(assert (=> b!6510110 m!7296148))

(assert (=> b!6510110 m!7296148))

(declare-fun m!7296524 () Bool)

(assert (=> b!6510110 m!7296524))

(assert (=> b!6510110 m!7296152))

(assert (=> b!6510110 m!7296524))

(assert (=> b!6510110 m!7296152))

(declare-fun m!7296528 () Bool)

(assert (=> b!6510110 m!7296528))

(assert (=> b!6510105 m!7296148))

(assert (=> b!6510102 m!7296152))

(assert (=> b!6510102 m!7296152))

(assert (=> b!6510102 m!7296458))

(assert (=> b!6509498 d!2042136))

(declare-fun bs!1653033 () Bool)

(declare-fun b!6510122 () Bool)

(assert (= bs!1653033 (and b!6510122 d!2042088)))

(declare-fun lambda!361203 () Int)

(assert (=> bs!1653033 (not (= lambda!361203 lambda!361182))))

(declare-fun bs!1653034 () Bool)

(assert (= bs!1653034 (and b!6510122 b!6509958)))

(assert (=> bs!1653034 (= (and (= (reg!16721 lt!2394088) (reg!16721 r!7292)) (= lt!2394088 r!7292)) (= lambda!361203 lambda!361193))))

(declare-fun bs!1653035 () Bool)

(assert (= bs!1653035 (and b!6510122 b!6509469)))

(assert (=> bs!1653035 (not (= lambda!361203 lambda!361131))))

(assert (=> bs!1653035 (not (= lambda!361203 lambda!361132))))

(assert (=> bs!1653033 (not (= lambda!361203 lambda!361183))))

(declare-fun bs!1653036 () Bool)

(assert (= bs!1653036 (and b!6510122 d!2042084)))

(assert (=> bs!1653036 (not (= lambda!361203 lambda!361177))))

(declare-fun bs!1653037 () Bool)

(assert (= bs!1653037 (and b!6510122 b!6509952)))

(assert (=> bs!1653037 (not (= lambda!361203 lambda!361194))))

(assert (=> b!6510122 true))

(assert (=> b!6510122 true))

(declare-fun bs!1653038 () Bool)

(declare-fun b!6510116 () Bool)

(assert (= bs!1653038 (and b!6510116 d!2042088)))

(declare-fun lambda!361204 () Int)

(assert (=> bs!1653038 (not (= lambda!361204 lambda!361182))))

(declare-fun bs!1653039 () Bool)

(assert (= bs!1653039 (and b!6510116 b!6510122)))

(assert (=> bs!1653039 (not (= lambda!361204 lambda!361203))))

(declare-fun bs!1653040 () Bool)

(assert (= bs!1653040 (and b!6510116 b!6509958)))

(assert (=> bs!1653040 (not (= lambda!361204 lambda!361193))))

(declare-fun bs!1653041 () Bool)

(assert (= bs!1653041 (and b!6510116 b!6509469)))

(assert (=> bs!1653041 (not (= lambda!361204 lambda!361131))))

(assert (=> bs!1653041 (= (and (= (regOne!33296 lt!2394088) (regOne!33296 r!7292)) (= (regTwo!33296 lt!2394088) (regTwo!33296 r!7292))) (= lambda!361204 lambda!361132))))

(assert (=> bs!1653038 (= (and (= (regOne!33296 lt!2394088) (regOne!33296 r!7292)) (= (regTwo!33296 lt!2394088) (regTwo!33296 r!7292))) (= lambda!361204 lambda!361183))))

(declare-fun bs!1653042 () Bool)

(assert (= bs!1653042 (and b!6510116 d!2042084)))

(assert (=> bs!1653042 (not (= lambda!361204 lambda!361177))))

(declare-fun bs!1653043 () Bool)

(assert (= bs!1653043 (and b!6510116 b!6509952)))

(assert (=> bs!1653043 (= (and (= (regOne!33296 lt!2394088) (regOne!33296 r!7292)) (= (regTwo!33296 lt!2394088) (regTwo!33296 r!7292))) (= lambda!361204 lambda!361194))))

(assert (=> b!6510116 true))

(assert (=> b!6510116 true))

(declare-fun b!6510113 () Bool)

(declare-fun e!3944315 () Bool)

(declare-fun e!3944309 () Bool)

(assert (=> b!6510113 (= e!3944315 e!3944309)))

(declare-fun c!1194113 () Bool)

(assert (=> b!6510113 (= c!1194113 (is-Star!16392 lt!2394088))))

(declare-fun b!6510114 () Bool)

(declare-fun e!3944311 () Bool)

(assert (=> b!6510114 (= e!3944311 (= s!2326 (Cons!65352 (c!1193956 lt!2394088) Nil!65352)))))

(declare-fun bm!564267 () Bool)

(declare-fun call!564272 () Bool)

(assert (=> bm!564267 (= call!564272 (Exists!3462 (ite c!1194113 lambda!361203 lambda!361204)))))

(declare-fun d!2042138 () Bool)

(declare-fun c!1194114 () Bool)

(assert (=> d!2042138 (= c!1194114 (is-EmptyExpr!16392 lt!2394088))))

(declare-fun e!3944310 () Bool)

(assert (=> d!2042138 (= (matchRSpec!3493 lt!2394088 s!2326) e!3944310)))

(declare-fun b!6510115 () Bool)

(declare-fun e!3944312 () Bool)

(assert (=> b!6510115 (= e!3944310 e!3944312)))

(declare-fun res!2673637 () Bool)

(assert (=> b!6510115 (= res!2673637 (not (is-EmptyLang!16392 lt!2394088)))))

(assert (=> b!6510115 (=> (not res!2673637) (not e!3944312))))

(assert (=> b!6510116 (= e!3944309 call!564272)))

(declare-fun b!6510117 () Bool)

(declare-fun c!1194115 () Bool)

(assert (=> b!6510117 (= c!1194115 (is-Union!16392 lt!2394088))))

(assert (=> b!6510117 (= e!3944311 e!3944315)))

(declare-fun b!6510118 () Bool)

(declare-fun call!564273 () Bool)

(assert (=> b!6510118 (= e!3944310 call!564273)))

(declare-fun b!6510119 () Bool)

(declare-fun e!3944314 () Bool)

(assert (=> b!6510119 (= e!3944315 e!3944314)))

(declare-fun res!2673638 () Bool)

(assert (=> b!6510119 (= res!2673638 (matchRSpec!3493 (regOne!33297 lt!2394088) s!2326))))

(assert (=> b!6510119 (=> res!2673638 e!3944314)))

(declare-fun b!6510120 () Bool)

(declare-fun res!2673636 () Bool)

(declare-fun e!3944313 () Bool)

(assert (=> b!6510120 (=> res!2673636 e!3944313)))

(assert (=> b!6510120 (= res!2673636 call!564273)))

(assert (=> b!6510120 (= e!3944309 e!3944313)))

(declare-fun b!6510121 () Bool)

(declare-fun c!1194112 () Bool)

(assert (=> b!6510121 (= c!1194112 (is-ElementMatch!16392 lt!2394088))))

(assert (=> b!6510121 (= e!3944312 e!3944311)))

(assert (=> b!6510122 (= e!3944313 call!564272)))

(declare-fun bm!564268 () Bool)

(assert (=> bm!564268 (= call!564273 (isEmpty!37567 s!2326))))

(declare-fun b!6510123 () Bool)

(assert (=> b!6510123 (= e!3944314 (matchRSpec!3493 (regTwo!33297 lt!2394088) s!2326))))

(assert (= (and d!2042138 c!1194114) b!6510118))

(assert (= (and d!2042138 (not c!1194114)) b!6510115))

(assert (= (and b!6510115 res!2673637) b!6510121))

(assert (= (and b!6510121 c!1194112) b!6510114))

(assert (= (and b!6510121 (not c!1194112)) b!6510117))

(assert (= (and b!6510117 c!1194115) b!6510119))

(assert (= (and b!6510117 (not c!1194115)) b!6510113))

(assert (= (and b!6510119 (not res!2673638)) b!6510123))

(assert (= (and b!6510113 c!1194113) b!6510120))

(assert (= (and b!6510113 (not c!1194113)) b!6510116))

(assert (= (and b!6510120 (not res!2673636)) b!6510122))

(assert (= (or b!6510122 b!6510116) bm!564267))

(assert (= (or b!6510118 b!6510120) bm!564268))

(declare-fun m!7296536 () Bool)

(assert (=> bm!564267 m!7296536))

(declare-fun m!7296538 () Bool)

(assert (=> b!6510119 m!7296538))

(assert (=> bm!564268 m!7296144))

(declare-fun m!7296540 () Bool)

(assert (=> b!6510123 m!7296540))

(assert (=> b!6509498 d!2042138))

(declare-fun d!2042142 () Bool)

(assert (=> d!2042142 (= (matchR!8575 lt!2394088 s!2326) (matchRSpec!3493 lt!2394088 s!2326))))

(declare-fun lt!2394328 () Unit!158903)

(assert (=> d!2042142 (= lt!2394328 (choose!48392 lt!2394088 s!2326))))

(assert (=> d!2042142 (validRegex!8128 lt!2394088)))

(assert (=> d!2042142 (= (mainMatchTheorem!3493 lt!2394088 s!2326) lt!2394328)))

(declare-fun bs!1653044 () Bool)

(assert (= bs!1653044 d!2042142))

(assert (=> bs!1653044 m!7295988))

(assert (=> bs!1653044 m!7295990))

(declare-fun m!7296542 () Bool)

(assert (=> bs!1653044 m!7296542))

(assert (=> bs!1653044 m!7296520))

(assert (=> b!6509498 d!2042142))

(declare-fun bm!564269 () Bool)

(declare-fun call!564277 () List!65475)

(declare-fun call!564275 () List!65475)

(assert (=> bm!564269 (= call!564277 call!564275)))

(declare-fun bm!564270 () Bool)

(declare-fun call!564279 () (Set Context!11552))

(declare-fun call!564278 () (Set Context!11552))

(assert (=> bm!564270 (= call!564279 call!564278)))

(declare-fun b!6510124 () Bool)

(declare-fun e!3944318 () (Set Context!11552))

(assert (=> b!6510124 (= e!3944318 (as set.empty (Set Context!11552)))))

(declare-fun bm!564271 () Bool)

(declare-fun c!1194120 () Bool)

(declare-fun c!1194116 () Bool)

(assert (=> bm!564271 (= call!564275 ($colon$colon!2241 (exprs!6276 lt!2394093) (ite (or c!1194116 c!1194120) (regTwo!33296 (reg!16721 (regOne!33296 r!7292))) (reg!16721 (regOne!33296 r!7292)))))))

(declare-fun call!564274 () (Set Context!11552))

(declare-fun c!1194119 () Bool)

(declare-fun bm!564272 () Bool)

(assert (=> bm!564272 (= call!564274 (derivationStepZipperDown!1640 (ite c!1194119 (regOne!33297 (reg!16721 (regOne!33296 r!7292))) (regOne!33296 (reg!16721 (regOne!33296 r!7292)))) (ite c!1194119 lt!2394093 (Context!11553 call!564275)) (h!71800 s!2326)))))

(declare-fun b!6510125 () Bool)

(declare-fun e!3944319 () Bool)

(assert (=> b!6510125 (= e!3944319 (nullable!6385 (regOne!33296 (reg!16721 (regOne!33296 r!7292)))))))

(declare-fun b!6510126 () Bool)

(assert (=> b!6510126 (= e!3944318 call!564279)))

(declare-fun b!6510127 () Bool)

(assert (=> b!6510127 (= c!1194116 e!3944319)))

(declare-fun res!2673639 () Bool)

(assert (=> b!6510127 (=> (not res!2673639) (not e!3944319))))

(assert (=> b!6510127 (= res!2673639 (is-Concat!25237 (reg!16721 (regOne!33296 r!7292))))))

(declare-fun e!3944321 () (Set Context!11552))

(declare-fun e!3944320 () (Set Context!11552))

(assert (=> b!6510127 (= e!3944321 e!3944320)))

(declare-fun b!6510128 () Bool)

(declare-fun call!564276 () (Set Context!11552))

(assert (=> b!6510128 (= e!3944321 (set.union call!564274 call!564276))))

(declare-fun b!6510129 () Bool)

(declare-fun e!3944317 () (Set Context!11552))

(assert (=> b!6510129 (= e!3944317 call!564279)))

(declare-fun b!6510130 () Bool)

(declare-fun e!3944316 () (Set Context!11552))

(assert (=> b!6510130 (= e!3944316 e!3944321)))

(assert (=> b!6510130 (= c!1194119 (is-Union!16392 (reg!16721 (regOne!33296 r!7292))))))

(declare-fun b!6510131 () Bool)

(declare-fun c!1194118 () Bool)

(assert (=> b!6510131 (= c!1194118 (is-Star!16392 (reg!16721 (regOne!33296 r!7292))))))

(assert (=> b!6510131 (= e!3944317 e!3944318)))

(declare-fun d!2042144 () Bool)

(declare-fun c!1194117 () Bool)

(assert (=> d!2042144 (= c!1194117 (and (is-ElementMatch!16392 (reg!16721 (regOne!33296 r!7292))) (= (c!1193956 (reg!16721 (regOne!33296 r!7292))) (h!71800 s!2326))))))

(assert (=> d!2042144 (= (derivationStepZipperDown!1640 (reg!16721 (regOne!33296 r!7292)) lt!2394093 (h!71800 s!2326)) e!3944316)))

(declare-fun b!6510132 () Bool)

(assert (=> b!6510132 (= e!3944320 (set.union call!564274 call!564278))))

(declare-fun bm!564273 () Bool)

(assert (=> bm!564273 (= call!564278 call!564276)))

(declare-fun b!6510133 () Bool)

(assert (=> b!6510133 (= e!3944316 (set.insert lt!2394093 (as set.empty (Set Context!11552))))))

(declare-fun bm!564274 () Bool)

(assert (=> bm!564274 (= call!564276 (derivationStepZipperDown!1640 (ite c!1194119 (regTwo!33297 (reg!16721 (regOne!33296 r!7292))) (ite c!1194116 (regTwo!33296 (reg!16721 (regOne!33296 r!7292))) (ite c!1194120 (regOne!33296 (reg!16721 (regOne!33296 r!7292))) (reg!16721 (reg!16721 (regOne!33296 r!7292)))))) (ite (or c!1194119 c!1194116) lt!2394093 (Context!11553 call!564277)) (h!71800 s!2326)))))

(declare-fun b!6510134 () Bool)

(assert (=> b!6510134 (= e!3944320 e!3944317)))

(assert (=> b!6510134 (= c!1194120 (is-Concat!25237 (reg!16721 (regOne!33296 r!7292))))))

(assert (= (and d!2042144 c!1194117) b!6510133))

(assert (= (and d!2042144 (not c!1194117)) b!6510130))

(assert (= (and b!6510130 c!1194119) b!6510128))

(assert (= (and b!6510130 (not c!1194119)) b!6510127))

(assert (= (and b!6510127 res!2673639) b!6510125))

(assert (= (and b!6510127 c!1194116) b!6510132))

(assert (= (and b!6510127 (not c!1194116)) b!6510134))

(assert (= (and b!6510134 c!1194120) b!6510129))

(assert (= (and b!6510134 (not c!1194120)) b!6510131))

(assert (= (and b!6510131 c!1194118) b!6510126))

(assert (= (and b!6510131 (not c!1194118)) b!6510124))

(assert (= (or b!6510129 b!6510126) bm!564269))

(assert (= (or b!6510129 b!6510126) bm!564270))

(assert (= (or b!6510132 bm!564269) bm!564271))

(assert (= (or b!6510132 bm!564270) bm!564273))

(assert (= (or b!6510128 bm!564273) bm!564274))

(assert (= (or b!6510128 b!6510132) bm!564272))

(assert (=> b!6510133 m!7295976))

(declare-fun m!7296550 () Bool)

(assert (=> b!6510125 m!7296550))

(declare-fun m!7296552 () Bool)

(assert (=> bm!564272 m!7296552))

(declare-fun m!7296554 () Bool)

(assert (=> bm!564271 m!7296554))

(declare-fun m!7296556 () Bool)

(assert (=> bm!564274 m!7296556))

(assert (=> b!6509477 d!2042144))

(declare-fun d!2042148 () Bool)

(declare-fun c!1194121 () Bool)

(assert (=> d!2042148 (= c!1194121 (isEmpty!37567 (_2!36674 lt!2394105)))))

(declare-fun e!3944322 () Bool)

(assert (=> d!2042148 (= (matchZipper!2404 lt!2394077 (_2!36674 lt!2394105)) e!3944322)))

(declare-fun b!6510135 () Bool)

(assert (=> b!6510135 (= e!3944322 (nullableZipper!2145 lt!2394077))))

(declare-fun b!6510136 () Bool)

(assert (=> b!6510136 (= e!3944322 (matchZipper!2404 (derivationStepZipper!2358 lt!2394077 (head!13251 (_2!36674 lt!2394105))) (tail!12336 (_2!36674 lt!2394105))))))

(assert (= (and d!2042148 c!1194121) b!6510135))

(assert (= (and d!2042148 (not c!1194121)) b!6510136))

(declare-fun m!7296558 () Bool)

(assert (=> d!2042148 m!7296558))

(declare-fun m!7296560 () Bool)

(assert (=> b!6510135 m!7296560))

(declare-fun m!7296562 () Bool)

(assert (=> b!6510136 m!7296562))

(assert (=> b!6510136 m!7296562))

(declare-fun m!7296564 () Bool)

(assert (=> b!6510136 m!7296564))

(declare-fun m!7296566 () Bool)

(assert (=> b!6510136 m!7296566))

(assert (=> b!6510136 m!7296564))

(assert (=> b!6510136 m!7296566))

(declare-fun m!7296568 () Bool)

(assert (=> b!6510136 m!7296568))

(assert (=> b!6509497 d!2042148))

(declare-fun b!6510149 () Bool)

(declare-fun e!3944325 () Bool)

(declare-fun tp!1799940 () Bool)

(assert (=> b!6510149 (= e!3944325 tp!1799940)))

(declare-fun b!6510147 () Bool)

(assert (=> b!6510147 (= e!3944325 tp_is_empty!42037)))

(assert (=> b!6509475 (= tp!1799891 e!3944325)))

(declare-fun b!6510150 () Bool)

(declare-fun tp!1799938 () Bool)

(declare-fun tp!1799937 () Bool)

(assert (=> b!6510150 (= e!3944325 (and tp!1799938 tp!1799937))))

(declare-fun b!6510148 () Bool)

(declare-fun tp!1799939 () Bool)

(declare-fun tp!1799941 () Bool)

(assert (=> b!6510148 (= e!3944325 (and tp!1799939 tp!1799941))))

(assert (= (and b!6509475 (is-ElementMatch!16392 (reg!16721 r!7292))) b!6510147))

(assert (= (and b!6509475 (is-Concat!25237 (reg!16721 r!7292))) b!6510148))

(assert (= (and b!6509475 (is-Star!16392 (reg!16721 r!7292))) b!6510149))

(assert (= (and b!6509475 (is-Union!16392 (reg!16721 r!7292))) b!6510150))

(declare-fun b!6510153 () Bool)

(declare-fun e!3944326 () Bool)

(declare-fun tp!1799945 () Bool)

(assert (=> b!6510153 (= e!3944326 tp!1799945)))

(declare-fun b!6510151 () Bool)

(assert (=> b!6510151 (= e!3944326 tp_is_empty!42037)))

(assert (=> b!6509500 (= tp!1799887 e!3944326)))

(declare-fun b!6510154 () Bool)

(declare-fun tp!1799943 () Bool)

(declare-fun tp!1799942 () Bool)

(assert (=> b!6510154 (= e!3944326 (and tp!1799943 tp!1799942))))

(declare-fun b!6510152 () Bool)

(declare-fun tp!1799944 () Bool)

(declare-fun tp!1799946 () Bool)

(assert (=> b!6510152 (= e!3944326 (and tp!1799944 tp!1799946))))

(assert (= (and b!6509500 (is-ElementMatch!16392 (regOne!33296 r!7292))) b!6510151))

(assert (= (and b!6509500 (is-Concat!25237 (regOne!33296 r!7292))) b!6510152))

(assert (= (and b!6509500 (is-Star!16392 (regOne!33296 r!7292))) b!6510153))

(assert (= (and b!6509500 (is-Union!16392 (regOne!33296 r!7292))) b!6510154))

(declare-fun b!6510157 () Bool)

(declare-fun e!3944327 () Bool)

(declare-fun tp!1799950 () Bool)

(assert (=> b!6510157 (= e!3944327 tp!1799950)))

(declare-fun b!6510155 () Bool)

(assert (=> b!6510155 (= e!3944327 tp_is_empty!42037)))

(assert (=> b!6509500 (= tp!1799892 e!3944327)))

(declare-fun b!6510158 () Bool)

(declare-fun tp!1799948 () Bool)

(declare-fun tp!1799947 () Bool)

(assert (=> b!6510158 (= e!3944327 (and tp!1799948 tp!1799947))))

(declare-fun b!6510156 () Bool)

(declare-fun tp!1799949 () Bool)

(declare-fun tp!1799951 () Bool)

(assert (=> b!6510156 (= e!3944327 (and tp!1799949 tp!1799951))))

(assert (= (and b!6509500 (is-ElementMatch!16392 (regTwo!33296 r!7292))) b!6510155))

(assert (= (and b!6509500 (is-Concat!25237 (regTwo!33296 r!7292))) b!6510156))

(assert (= (and b!6509500 (is-Star!16392 (regTwo!33296 r!7292))) b!6510157))

(assert (= (and b!6509500 (is-Union!16392 (regTwo!33296 r!7292))) b!6510158))

(declare-fun b!6510163 () Bool)

(declare-fun e!3944330 () Bool)

(declare-fun tp!1799956 () Bool)

(declare-fun tp!1799957 () Bool)

(assert (=> b!6510163 (= e!3944330 (and tp!1799956 tp!1799957))))

(assert (=> b!6509464 (= tp!1799896 e!3944330)))

(assert (= (and b!6509464 (is-Cons!65351 (exprs!6276 setElem!44410))) b!6510163))

(declare-fun b!6510171 () Bool)

(declare-fun e!3944336 () Bool)

(declare-fun tp!1799962 () Bool)

(assert (=> b!6510171 (= e!3944336 tp!1799962)))

(declare-fun e!3944335 () Bool)

(declare-fun tp!1799963 () Bool)

(declare-fun b!6510170 () Bool)

(assert (=> b!6510170 (= e!3944335 (and (inv!84228 (h!71801 (t!379113 zl!343))) e!3944336 tp!1799963))))

(assert (=> b!6509494 (= tp!1799890 e!3944335)))

(assert (= b!6510170 b!6510171))

(assert (= (and b!6509494 (is-Cons!65353 (t!379113 zl!343))) b!6510170))

(declare-fun m!7296570 () Bool)

(assert (=> b!6510170 m!7296570))

(declare-fun condSetEmpty!44416 () Bool)

(assert (=> setNonEmpty!44410 (= condSetEmpty!44416 (= setRest!44410 (as set.empty (Set Context!11552))))))

(declare-fun setRes!44416 () Bool)

(assert (=> setNonEmpty!44410 (= tp!1799893 setRes!44416)))

(declare-fun setIsEmpty!44416 () Bool)

(assert (=> setIsEmpty!44416 setRes!44416))

(declare-fun tp!1799969 () Bool)

(declare-fun setNonEmpty!44416 () Bool)

(declare-fun setElem!44416 () Context!11552)

(declare-fun e!3944343 () Bool)

(assert (=> setNonEmpty!44416 (= setRes!44416 (and tp!1799969 (inv!84228 setElem!44416) e!3944343))))

(declare-fun setRest!44416 () (Set Context!11552))

(assert (=> setNonEmpty!44416 (= setRest!44410 (set.union (set.insert setElem!44416 (as set.empty (Set Context!11552))) setRest!44416))))

(declare-fun b!6510184 () Bool)

(declare-fun tp!1799968 () Bool)

(assert (=> b!6510184 (= e!3944343 tp!1799968)))

(assert (= (and setNonEmpty!44410 condSetEmpty!44416) setIsEmpty!44416))

(assert (= (and setNonEmpty!44410 (not condSetEmpty!44416)) setNonEmpty!44416))

(assert (= setNonEmpty!44416 b!6510184))

(declare-fun m!7296572 () Bool)

(assert (=> setNonEmpty!44416 m!7296572))

(declare-fun b!6510187 () Bool)

(declare-fun e!3944344 () Bool)

(declare-fun tp!1799973 () Bool)

(assert (=> b!6510187 (= e!3944344 tp!1799973)))

(declare-fun b!6510185 () Bool)

(assert (=> b!6510185 (= e!3944344 tp_is_empty!42037)))

(assert (=> b!6509473 (= tp!1799894 e!3944344)))

(declare-fun b!6510188 () Bool)

(declare-fun tp!1799971 () Bool)

(declare-fun tp!1799970 () Bool)

(assert (=> b!6510188 (= e!3944344 (and tp!1799971 tp!1799970))))

(declare-fun b!6510186 () Bool)

(declare-fun tp!1799972 () Bool)

(declare-fun tp!1799974 () Bool)

(assert (=> b!6510186 (= e!3944344 (and tp!1799972 tp!1799974))))

(assert (= (and b!6509473 (is-ElementMatch!16392 (regOne!33297 r!7292))) b!6510185))

(assert (= (and b!6509473 (is-Concat!25237 (regOne!33297 r!7292))) b!6510186))

(assert (= (and b!6509473 (is-Star!16392 (regOne!33297 r!7292))) b!6510187))

(assert (= (and b!6509473 (is-Union!16392 (regOne!33297 r!7292))) b!6510188))

(declare-fun b!6510191 () Bool)

(declare-fun e!3944345 () Bool)

(declare-fun tp!1799978 () Bool)

(assert (=> b!6510191 (= e!3944345 tp!1799978)))

(declare-fun b!6510189 () Bool)

(assert (=> b!6510189 (= e!3944345 tp_is_empty!42037)))

(assert (=> b!6509473 (= tp!1799888 e!3944345)))

(declare-fun b!6510192 () Bool)

(declare-fun tp!1799976 () Bool)

(declare-fun tp!1799975 () Bool)

(assert (=> b!6510192 (= e!3944345 (and tp!1799976 tp!1799975))))

(declare-fun b!6510190 () Bool)

(declare-fun tp!1799977 () Bool)

(declare-fun tp!1799979 () Bool)

(assert (=> b!6510190 (= e!3944345 (and tp!1799977 tp!1799979))))

(assert (= (and b!6509473 (is-ElementMatch!16392 (regTwo!33297 r!7292))) b!6510189))

(assert (= (and b!6509473 (is-Concat!25237 (regTwo!33297 r!7292))) b!6510190))

(assert (= (and b!6509473 (is-Star!16392 (regTwo!33297 r!7292))) b!6510191))

(assert (= (and b!6509473 (is-Union!16392 (regTwo!33297 r!7292))) b!6510192))

(declare-fun b!6510197 () Bool)

(declare-fun e!3944348 () Bool)

(declare-fun tp!1799982 () Bool)

(assert (=> b!6510197 (= e!3944348 (and tp_is_empty!42037 tp!1799982))))

(assert (=> b!6509478 (= tp!1799889 e!3944348)))

(assert (= (and b!6509478 (is-Cons!65352 (t!379112 s!2326))) b!6510197))

(declare-fun b!6510198 () Bool)

(declare-fun e!3944349 () Bool)

(declare-fun tp!1799983 () Bool)

(declare-fun tp!1799984 () Bool)

(assert (=> b!6510198 (= e!3944349 (and tp!1799983 tp!1799984))))

(assert (=> b!6509492 (= tp!1799895 e!3944349)))

(assert (= (and b!6509492 (is-Cons!65351 (exprs!6276 (h!71801 zl!343)))) b!6510198))

(declare-fun b_lambda!246451 () Bool)

(assert (= b_lambda!246441 (or b!6509470 b_lambda!246451)))

(declare-fun bs!1653046 () Bool)

(declare-fun d!2042150 () Bool)

(assert (= bs!1653046 (and d!2042150 b!6509470)))

(assert (=> bs!1653046 (= (dynLambda!25966 lambda!361133 lt!2394102) (derivationStepZipperUp!1566 lt!2394102 (h!71800 s!2326)))))

(assert (=> bs!1653046 m!7295928))

(assert (=> d!2042018 d!2042150))

(declare-fun b_lambda!246453 () Bool)

(assert (= b_lambda!246443 (or b!6509470 b_lambda!246453)))

(declare-fun bs!1653047 () Bool)

(declare-fun d!2042152 () Bool)

(assert (= bs!1653047 (and d!2042152 b!6509470)))

(assert (=> bs!1653047 (= (dynLambda!25966 lambda!361133 lt!2394092) (derivationStepZipperUp!1566 lt!2394092 (h!71800 s!2326)))))

(assert (=> bs!1653047 m!7295962))

(assert (=> d!2042040 d!2042152))

(declare-fun b_lambda!246455 () Bool)

(assert (= b_lambda!246445 (or b!6509470 b_lambda!246455)))

(declare-fun bs!1653048 () Bool)

(declare-fun d!2042154 () Bool)

(assert (= bs!1653048 (and d!2042154 b!6509470)))

(assert (=> bs!1653048 (= (dynLambda!25966 lambda!361133 lt!2394093) (derivationStepZipperUp!1566 lt!2394093 (h!71800 s!2326)))))

(assert (=> bs!1653048 m!7295970))

(assert (=> d!2042042 d!2042154))

(declare-fun b_lambda!246457 () Bool)

(assert (= b_lambda!246449 (or b!6509479 b_lambda!246457)))

(declare-fun bs!1653049 () Bool)

(declare-fun d!2042156 () Bool)

(assert (= bs!1653049 (and d!2042156 b!6509479)))

(declare-fun lt!2394332 () Unit!158903)

(assert (=> bs!1653049 (= lt!2394332 (lemmaConcatPreservesForall!365 (exprs!6276 lt!2394092) lt!2394073 lambda!361135))))

(assert (=> bs!1653049 (= (dynLambda!25967 lambda!361134 lt!2394092) (Context!11553 (++!14486 (exprs!6276 lt!2394092) lt!2394073)))))

(declare-fun m!7296574 () Bool)

(assert (=> bs!1653049 m!7296574))

(declare-fun m!7296576 () Bool)

(assert (=> bs!1653049 m!7296576))

(assert (=> d!2042130 d!2042156))

(declare-fun b_lambda!246459 () Bool)

(assert (= b_lambda!246447 (or b!6509470 b_lambda!246459)))

(declare-fun bs!1653050 () Bool)

(declare-fun d!2042158 () Bool)

(assert (= bs!1653050 (and d!2042158 b!6509470)))

(assert (=> bs!1653050 (= (dynLambda!25966 lambda!361133 (h!71801 zl!343)) (derivationStepZipperUp!1566 (h!71801 zl!343) (h!71800 s!2326)))))

(assert (=> bs!1653050 m!7295886))

(assert (=> d!2042078 d!2042158))

(push 1)

(assert (not b!6510087))

(assert (not b!6509853))

(assert (not b!6510125))

(assert (not d!2042028))

(assert (not bm!564234))

(assert (not d!2042090))

(assert (not d!2042124))

(assert (not d!2042112))

(assert (not bs!1653048))

(assert (not b!6509738))

(assert (not b!6509915))

(assert (not d!2042128))

(assert (not b_lambda!246455))

(assert (not b!6510110))

(assert (not bm!564227))

(assert (not b!6509807))

(assert (not bs!1653049))

(assert (not b!6510105))

(assert (not d!2042106))

(assert (not b!6510163))

(assert (not b!6510018))

(assert (not b_lambda!246453))

(assert (not b!6510191))

(assert (not bm!564197))

(assert (not d!2042020))

(assert (not bm!564209))

(assert (not b!6509688))

(assert (not b!6510152))

(assert (not b!6509699))

(assert (not d!2042052))

(assert (not b_lambda!246451))

(assert (not b!6510192))

(assert (not d!2042082))

(assert (not b!6510086))

(assert (not b!6510171))

(assert (not bm!564268))

(assert (not b!6510032))

(assert (not b!6510153))

(assert (not b!6509799))

(assert (not b!6510103))

(assert (not d!2042022))

(assert (not b!6509741))

(assert (not b!6510021))

(assert (not b!6509740))

(assert (not b!6510186))

(assert (not b!6510123))

(assert (not b!6509673))

(assert (not d!2042018))

(assert (not b!6509685))

(assert (not b!6509959))

(assert (not b!6509842))

(assert (not b!6509888))

(assert (not d!2042060))

(assert (not b!6509697))

(assert (not b!6509955))

(assert (not bm!564271))

(assert (not b!6510081))

(assert (not d!2042094))

(assert (not d!2042010))

(assert (not bm!564235))

(assert (not d!2042044))

(assert (not d!2042092))

(assert (not b!6510016))

(assert (not d!2042026))

(assert (not b!6509861))

(assert (not b!6510135))

(assert (not bs!1653046))

(assert (not b!6509672))

(assert (not d!2042130))

(assert (not b!6509694))

(assert (not b!6509856))

(assert (not d!2042078))

(assert (not d!2042024))

(assert (not d!2042084))

(assert (not b!6509771))

(assert (not b!6509774))

(assert (not b!6509802))

(assert (not b!6510198))

(assert (not b!6510119))

(assert (not b!6510083))

(assert (not b!6509886))

(assert (not b!6509858))

(assert (not b!6510170))

(assert (not b!6509803))

(assert (not b!6509806))

(assert (not bm!564272))

(assert (not d!2042034))

(assert (not b!6510187))

(assert (not bm!564224))

(assert (not d!2042110))

(assert (not b!6509775))

(assert (not b!6509880))

(assert (not setNonEmpty!44416))

(assert (not bm!564207))

(assert (not b!6509913))

(assert (not bs!1653047))

(assert (not d!2042086))

(assert (not b!6510033))

(assert (not b!6510107))

(assert (not b!6510023))

(assert (not b!6510079))

(assert (not b!6510100))

(assert (not d!2042072))

(assert (not d!2042120))

(assert (not b!6510150))

(assert (not b!6509916))

(assert (not b!6510085))

(assert (not d!2042126))

(assert (not b!6509815))

(assert (not b!6509881))

(assert (not b!6510148))

(assert (not d!2042030))

(assert (not d!2042100))

(assert (not bm!564247))

(assert (not b!6509742))

(assert (not b!6509798))

(assert (not bs!1653050))

(assert (not b!6509777))

(assert (not b!6509695))

(assert (not d!2042062))

(assert (not d!2042080))

(assert (not b!6509901))

(assert (not d!2042136))

(assert (not d!2042050))

(assert (not b!6510157))

(assert (not bm!564267))

(assert (not bm!564274))

(assert (not b!6509882))

(assert (not b!6509776))

(assert (not bm!564229))

(assert (not b!6509805))

(assert (not b!6510031))

(assert (not bm!564225))

(assert (not d!2042108))

(assert (not b!6510158))

(assert (not b!6510197))

(assert (not d!2042118))

(assert (not bm!564198))

(assert (not d!2042056))

(assert (not b_lambda!246457))

(assert tp_is_empty!42037)

(assert (not d!2042058))

(assert (not d!2042142))

(assert (not b!6510184))

(assert (not b!6509739))

(assert (not d!2042088))

(assert (not b!6510154))

(assert (not bm!564208))

(assert (not b!6510156))

(assert (not b!6510190))

(assert (not d!2042040))

(assert (not b!6509718))

(assert (not b!6509885))

(assert (not b!6510188))

(assert (not d!2042134))

(assert (not d!2042048))

(assert (not b!6509902))

(assert (not d!2042102))

(assert (not b!6509745))

(assert (not d!2042104))

(assert (not b!6509812))

(assert (not b!6509702))

(assert (not bm!564266))

(assert (not b_lambda!246459))

(assert (not b!6510026))

(assert (not d!2042148))

(assert (not d!2042036))

(assert (not d!2042064))

(assert (not b!6510102))

(assert (not b!6509717))

(assert (not d!2042096))

(assert (not d!2042014))

(assert (not b!6509818))

(assert (not b!6509704))

(assert (not d!2042132))

(assert (not b!6509707))

(assert (not d!2042042))

(assert (not bm!564228))

(assert (not b!6509693))

(assert (not d!2042066))

(assert (not b!6510136))

(assert (not b!6509912))

(assert (not b!6510149))

(assert (not bm!564199))

(assert (not b!6509696))

(assert (not b!6510019))

(assert (not b!6510084))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

