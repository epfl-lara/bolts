; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!637438 () Bool)

(assert start!637438)

(declare-fun b!6485097 () Bool)

(assert (=> b!6485097 true))

(assert (=> b!6485097 true))

(declare-fun lambda!358931 () Int)

(declare-fun lambda!358930 () Int)

(assert (=> b!6485097 (not (= lambda!358931 lambda!358930))))

(assert (=> b!6485097 true))

(assert (=> b!6485097 true))

(declare-fun b!6485086 () Bool)

(assert (=> b!6485086 true))

(declare-fun bs!1645237 () Bool)

(declare-fun b!6485058 () Bool)

(assert (= bs!1645237 (and b!6485058 b!6485097)))

(declare-datatypes ((C!33000 0))(
  ( (C!33001 (val!26202 Int)) )
))
(declare-datatypes ((Regex!16365 0))(
  ( (ElementMatch!16365 (c!1188049 C!33000)) (Concat!25210 (regOne!33242 Regex!16365) (regTwo!33242 Regex!16365)) (EmptyExpr!16365) (Star!16365 (reg!16694 Regex!16365)) (EmptyLang!16365) (Union!16365 (regOne!33243 Regex!16365) (regTwo!33243 Regex!16365)) )
))
(declare-fun r!7292 () Regex!16365)

(declare-fun lambda!358933 () Int)

(declare-fun lt!2388338 () Regex!16365)

(assert (=> bs!1645237 (= (= lt!2388338 (regOne!33242 r!7292)) (= lambda!358933 lambda!358930))))

(assert (=> bs!1645237 (not (= lambda!358933 lambda!358931))))

(assert (=> b!6485058 true))

(assert (=> b!6485058 true))

(assert (=> b!6485058 true))

(declare-fun lambda!358934 () Int)

(assert (=> bs!1645237 (not (= lambda!358934 lambda!358930))))

(assert (=> bs!1645237 (= (= lt!2388338 (regOne!33242 r!7292)) (= lambda!358934 lambda!358931))))

(assert (=> b!6485058 (not (= lambda!358934 lambda!358933))))

(assert (=> b!6485058 true))

(assert (=> b!6485058 true))

(assert (=> b!6485058 true))

(declare-fun bs!1645238 () Bool)

(declare-fun b!6485065 () Bool)

(assert (= bs!1645238 (and b!6485065 b!6485097)))

(declare-datatypes ((List!65394 0))(
  ( (Nil!65270) (Cons!65270 (h!71718 C!33000) (t!379020 List!65394)) )
))
(declare-fun s!2326 () List!65394)

(declare-datatypes ((tuple2!66688 0))(
  ( (tuple2!66689 (_1!36647 List!65394) (_2!36647 List!65394)) )
))
(declare-fun lt!2388334 () tuple2!66688)

(declare-fun lambda!358935 () Int)

(assert (=> bs!1645238 (= (and (= (_1!36647 lt!2388334) s!2326) (= (reg!16694 (regOne!33242 r!7292)) (regOne!33242 r!7292)) (= lt!2388338 (regTwo!33242 r!7292))) (= lambda!358935 lambda!358930))))

(assert (=> bs!1645238 (not (= lambda!358935 lambda!358931))))

(declare-fun bs!1645239 () Bool)

(assert (= bs!1645239 (and b!6485065 b!6485058)))

(assert (=> bs!1645239 (= (and (= (_1!36647 lt!2388334) s!2326) (= (reg!16694 (regOne!33242 r!7292)) lt!2388338) (= lt!2388338 (regTwo!33242 r!7292))) (= lambda!358935 lambda!358933))))

(assert (=> bs!1645239 (not (= lambda!358935 lambda!358934))))

(assert (=> b!6485065 true))

(assert (=> b!6485065 true))

(assert (=> b!6485065 true))

(declare-fun lambda!358936 () Int)

(assert (=> bs!1645238 (not (= lambda!358936 lambda!358931))))

(assert (=> bs!1645239 (not (= lambda!358936 lambda!358934))))

(assert (=> b!6485065 (not (= lambda!358936 lambda!358935))))

(assert (=> bs!1645239 (not (= lambda!358936 lambda!358933))))

(assert (=> bs!1645238 (not (= lambda!358936 lambda!358930))))

(assert (=> b!6485065 true))

(assert (=> b!6485065 true))

(assert (=> b!6485065 true))

(declare-fun lambda!358937 () Int)

(assert (=> bs!1645238 (= (and (= (_1!36647 lt!2388334) s!2326) (= (reg!16694 (regOne!33242 r!7292)) (regOne!33242 r!7292)) (= lt!2388338 (regTwo!33242 r!7292))) (= lambda!358937 lambda!358931))))

(assert (=> b!6485065 (not (= lambda!358937 lambda!358936))))

(assert (=> bs!1645239 (= (and (= (_1!36647 lt!2388334) s!2326) (= (reg!16694 (regOne!33242 r!7292)) lt!2388338) (= lt!2388338 (regTwo!33242 r!7292))) (= lambda!358937 lambda!358934))))

(assert (=> b!6485065 (not (= lambda!358937 lambda!358935))))

(assert (=> bs!1645239 (not (= lambda!358937 lambda!358933))))

(assert (=> bs!1645238 (not (= lambda!358937 lambda!358930))))

(assert (=> b!6485065 true))

(assert (=> b!6485065 true))

(assert (=> b!6485065 true))

(declare-fun b!6485057 () Bool)

(declare-fun e!3930474 () Bool)

(declare-fun e!3930487 () Bool)

(assert (=> b!6485057 (= e!3930474 e!3930487)))

(declare-fun res!2663326 () Bool)

(assert (=> b!6485057 (=> res!2663326 e!3930487)))

(declare-datatypes ((List!65395 0))(
  ( (Nil!65271) (Cons!65271 (h!71719 Regex!16365) (t!379021 List!65395)) )
))
(declare-datatypes ((Context!11498 0))(
  ( (Context!11499 (exprs!6249 List!65395)) )
))
(declare-datatypes ((List!65396 0))(
  ( (Nil!65272) (Cons!65272 (h!71720 Context!11498) (t!379022 List!65396)) )
))
(declare-fun lt!2388310 () List!65396)

(declare-fun lt!2388294 () Regex!16365)

(declare-fun unfocusZipper!2107 (List!65396) Regex!16365)

(assert (=> b!6485057 (= res!2663326 (not (= (unfocusZipper!2107 lt!2388310) lt!2388294)))))

(declare-fun lt!2388330 () Context!11498)

(assert (=> b!6485057 (= lt!2388310 (Cons!65272 lt!2388330 Nil!65272))))

(declare-fun e!3930492 () Bool)

(declare-fun e!3930480 () Bool)

(assert (=> b!6485058 (= e!3930492 e!3930480)))

(declare-fun res!2663324 () Bool)

(assert (=> b!6485058 (=> res!2663324 e!3930480)))

(declare-fun ++!14440 (List!65394 List!65394) List!65394)

(assert (=> b!6485058 (= res!2663324 (not (= (++!14440 (_1!36647 lt!2388334) (_2!36647 lt!2388334)) s!2326)))))

(declare-datatypes ((Option!16256 0))(
  ( (None!16255) (Some!16255 (v!52434 tuple2!66688)) )
))
(declare-fun lt!2388304 () Option!16256)

(declare-fun get!22631 (Option!16256) tuple2!66688)

(assert (=> b!6485058 (= lt!2388334 (get!22631 lt!2388304))))

(declare-fun Exists!3435 (Int) Bool)

(assert (=> b!6485058 (= (Exists!3435 lambda!358933) (Exists!3435 lambda!358934))))

(declare-datatypes ((Unit!158791 0))(
  ( (Unit!158792) )
))
(declare-fun lt!2388316 () Unit!158791)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1972 (Regex!16365 Regex!16365 List!65394) Unit!158791)

(assert (=> b!6485058 (= lt!2388316 (lemmaExistCutMatchRandMatchRSpecEquivalent!1972 lt!2388338 (regTwo!33242 r!7292) s!2326))))

(declare-fun isDefined!12959 (Option!16256) Bool)

(assert (=> b!6485058 (= (isDefined!12959 lt!2388304) (Exists!3435 lambda!358933))))

(declare-fun findConcatSeparation!2670 (Regex!16365 Regex!16365 List!65394 List!65394 List!65394) Option!16256)

(assert (=> b!6485058 (= lt!2388304 (findConcatSeparation!2670 lt!2388338 (regTwo!33242 r!7292) Nil!65270 s!2326 s!2326))))

(declare-fun lt!2388309 () Unit!158791)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2434 (Regex!16365 Regex!16365 List!65394) Unit!158791)

(assert (=> b!6485058 (= lt!2388309 (lemmaFindConcatSeparationEquivalentToExists!2434 lt!2388338 (regTwo!33242 r!7292) s!2326))))

(declare-fun b!6485059 () Bool)

(declare-fun e!3930489 () Unit!158791)

(declare-fun Unit!158793 () Unit!158791)

(assert (=> b!6485059 (= e!3930489 Unit!158793)))

(declare-fun b!6485060 () Bool)

(declare-fun res!2663335 () Bool)

(assert (=> b!6485060 (=> res!2663335 e!3930480)))

(declare-fun isEmpty!37460 (List!65394) Bool)

(assert (=> b!6485060 (= res!2663335 (isEmpty!37460 (_1!36647 lt!2388334)))))

(declare-fun b!6485061 () Bool)

(declare-fun Unit!158794 () Unit!158791)

(assert (=> b!6485061 (= e!3930489 Unit!158794)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2388297 () (InoxSet Context!11498))

(declare-fun lt!2388344 () (InoxSet Context!11498))

(declare-fun lt!2388308 () Unit!158791)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1196 ((InoxSet Context!11498) (InoxSet Context!11498) List!65394) Unit!158791)

(assert (=> b!6485061 (= lt!2388308 (lemmaZipperConcatMatchesSameAsBothZippers!1196 lt!2388344 lt!2388297 (t!379020 s!2326)))))

(declare-fun res!2663330 () Bool)

(declare-fun matchZipper!2377 ((InoxSet Context!11498) List!65394) Bool)

(assert (=> b!6485061 (= res!2663330 (matchZipper!2377 lt!2388344 (t!379020 s!2326)))))

(declare-fun e!3930478 () Bool)

(assert (=> b!6485061 (=> res!2663330 e!3930478)))

(assert (=> b!6485061 (= (matchZipper!2377 ((_ map or) lt!2388344 lt!2388297) (t!379020 s!2326)) e!3930478)))

(declare-fun b!6485062 () Bool)

(declare-fun res!2663313 () Bool)

(assert (=> b!6485062 (=> res!2663313 e!3930480)))

(declare-fun matchR!8548 (Regex!16365 List!65394) Bool)

(assert (=> b!6485062 (= res!2663313 (not (matchR!8548 lt!2388338 (_1!36647 lt!2388334))))))

(declare-fun b!6485063 () Bool)

(declare-fun e!3930477 () Bool)

(declare-fun tp!1796006 () Bool)

(assert (=> b!6485063 (= e!3930477 tp!1796006)))

(declare-fun b!6485064 () Bool)

(declare-fun e!3930491 () Bool)

(declare-fun tp_is_empty!41983 () Bool)

(declare-fun tp!1796003 () Bool)

(assert (=> b!6485064 (= e!3930491 (and tp_is_empty!41983 tp!1796003))))

(declare-fun e!3930486 () Bool)

(assert (=> b!6485065 (= e!3930480 e!3930486)))

(declare-fun res!2663311 () Bool)

(assert (=> b!6485065 (=> res!2663311 e!3930486)))

(declare-fun lt!2388306 () List!65394)

(assert (=> b!6485065 (= res!2663311 (not (= (_1!36647 lt!2388334) lt!2388306)))))

(declare-fun lt!2388318 () tuple2!66688)

(assert (=> b!6485065 (= lt!2388306 (++!14440 (_1!36647 lt!2388318) (_2!36647 lt!2388318)))))

(declare-fun lt!2388336 () Option!16256)

(assert (=> b!6485065 (= lt!2388318 (get!22631 lt!2388336))))

(assert (=> b!6485065 (= (Exists!3435 lambda!358935) (Exists!3435 lambda!358937))))

(declare-fun lt!2388322 () Unit!158791)

(assert (=> b!6485065 (= lt!2388322 (lemmaExistCutMatchRandMatchRSpecEquivalent!1972 (reg!16694 (regOne!33242 r!7292)) lt!2388338 (_1!36647 lt!2388334)))))

(assert (=> b!6485065 (= (Exists!3435 lambda!358935) (Exists!3435 lambda!358936))))

(declare-fun lt!2388307 () Unit!158791)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!656 (Regex!16365 List!65394) Unit!158791)

(assert (=> b!6485065 (= lt!2388307 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!656 (reg!16694 (regOne!33242 r!7292)) (_1!36647 lt!2388334)))))

(assert (=> b!6485065 (= (isDefined!12959 lt!2388336) (Exists!3435 lambda!358935))))

(assert (=> b!6485065 (= lt!2388336 (findConcatSeparation!2670 (reg!16694 (regOne!33242 r!7292)) lt!2388338 Nil!65270 (_1!36647 lt!2388334) (_1!36647 lt!2388334)))))

(declare-fun lt!2388321 () Unit!158791)

(assert (=> b!6485065 (= lt!2388321 (lemmaFindConcatSeparationEquivalentToExists!2434 (reg!16694 (regOne!33242 r!7292)) lt!2388338 (_1!36647 lt!2388334)))))

(declare-fun matchRSpec!3466 (Regex!16365 List!65394) Bool)

(assert (=> b!6485065 (matchRSpec!3466 lt!2388338 (_1!36647 lt!2388334))))

(declare-fun lt!2388327 () Unit!158791)

(declare-fun mainMatchTheorem!3466 (Regex!16365 List!65394) Unit!158791)

(assert (=> b!6485065 (= lt!2388327 (mainMatchTheorem!3466 lt!2388338 (_1!36647 lt!2388334)))))

(declare-fun b!6485066 () Bool)

(declare-fun res!2663342 () Bool)

(declare-fun e!3930497 () Bool)

(assert (=> b!6485066 (=> res!2663342 e!3930497)))

(declare-fun lt!2388323 () Regex!16365)

(assert (=> b!6485066 (= res!2663342 (not (= lt!2388323 r!7292)))))

(declare-fun b!6485067 () Bool)

(declare-fun e!3930476 () Bool)

(declare-fun lt!2388295 () Bool)

(declare-fun lt!2388342 () Bool)

(assert (=> b!6485067 (= e!3930476 (or (not lt!2388295) lt!2388342))))

(declare-fun b!6485068 () Bool)

(declare-fun e!3930485 () Bool)

(declare-fun tp!1796008 () Bool)

(declare-fun tp!1796010 () Bool)

(assert (=> b!6485068 (= e!3930485 (and tp!1796008 tp!1796010))))

(declare-fun b!6485069 () Bool)

(declare-fun e!3930494 () Bool)

(declare-fun nullable!6358 (Regex!16365) Bool)

(assert (=> b!6485069 (= e!3930494 (nullable!6358 (regOne!33242 (regOne!33242 r!7292))))))

(declare-fun b!6485070 () Bool)

(declare-fun e!3930481 () Bool)

(declare-fun e!3930498 () Bool)

(assert (=> b!6485070 (= e!3930481 e!3930498)))

(declare-fun res!2663317 () Bool)

(assert (=> b!6485070 (=> res!2663317 e!3930498)))

(declare-fun lt!2388289 () Context!11498)

(declare-fun lt!2388335 () Regex!16365)

(assert (=> b!6485070 (= res!2663317 (not (= (unfocusZipper!2107 (Cons!65272 lt!2388289 Nil!65272)) lt!2388335)))))

(assert (=> b!6485070 (= lt!2388335 (Concat!25210 (reg!16694 (regOne!33242 r!7292)) lt!2388294))))

(declare-fun b!6485071 () Bool)

(declare-fun res!2663338 () Bool)

(declare-fun e!3930493 () Bool)

(assert (=> b!6485071 (=> res!2663338 e!3930493)))

(declare-fun zl!343 () List!65396)

(declare-fun generalisedUnion!2209 (List!65395) Regex!16365)

(declare-fun unfocusZipperList!1786 (List!65396) List!65395)

(assert (=> b!6485071 (= res!2663338 (not (= r!7292 (generalisedUnion!2209 (unfocusZipperList!1786 zl!343)))))))

(declare-fun b!6485072 () Bool)

(declare-fun res!2663318 () Bool)

(declare-fun e!3930484 () Bool)

(assert (=> b!6485072 (=> res!2663318 e!3930484)))

(assert (=> b!6485072 (= res!2663318 e!3930494)))

(declare-fun res!2663343 () Bool)

(assert (=> b!6485072 (=> (not res!2663343) (not e!3930494))))

(get-info :version)

(assert (=> b!6485072 (= res!2663343 ((_ is Concat!25210) (regOne!33242 r!7292)))))

(declare-fun b!6485073 () Bool)

(declare-fun res!2663314 () Bool)

(declare-fun e!3930482 () Bool)

(assert (=> b!6485073 (=> res!2663314 e!3930482)))

(assert (=> b!6485073 (= res!2663314 (not (matchR!8548 lt!2388338 (_2!36647 lt!2388318))))))

(declare-fun b!6485074 () Bool)

(declare-fun res!2663331 () Bool)

(assert (=> b!6485074 (=> res!2663331 e!3930493)))

(declare-fun isEmpty!37461 (List!65396) Bool)

(assert (=> b!6485074 (= res!2663331 (not (isEmpty!37461 (t!379022 zl!343))))))

(declare-fun b!6485075 () Bool)

(declare-fun e!3930475 () Bool)

(assert (=> b!6485075 (= e!3930475 (not e!3930493))))

(declare-fun res!2663339 () Bool)

(assert (=> b!6485075 (=> res!2663339 e!3930493)))

(assert (=> b!6485075 (= res!2663339 (not ((_ is Cons!65272) zl!343)))))

(assert (=> b!6485075 (= lt!2388295 lt!2388342)))

(assert (=> b!6485075 (= lt!2388342 (matchRSpec!3466 r!7292 s!2326))))

(assert (=> b!6485075 (= lt!2388295 (matchR!8548 r!7292 s!2326))))

(declare-fun lt!2388325 () Unit!158791)

(assert (=> b!6485075 (= lt!2388325 (mainMatchTheorem!3466 r!7292 s!2326))))

(declare-fun b!6485076 () Bool)

(declare-fun res!2663320 () Bool)

(declare-fun e!3930483 () Bool)

(assert (=> b!6485076 (=> (not res!2663320) (not e!3930483))))

(declare-fun z!1189 () (InoxSet Context!11498))

(declare-fun toList!10149 ((InoxSet Context!11498)) List!65396)

(assert (=> b!6485076 (= res!2663320 (= (toList!10149 z!1189) zl!343))))

(declare-fun b!6485077 () Bool)

(declare-fun e!3930479 () Bool)

(assert (=> b!6485077 (= e!3930479 e!3930497)))

(declare-fun res!2663337 () Bool)

(assert (=> b!6485077 (=> res!2663337 e!3930497)))

(declare-fun lt!2388293 () (InoxSet Context!11498))

(declare-fun lt!2388311 () (InoxSet Context!11498))

(assert (=> b!6485077 (= res!2663337 (not (= lt!2388293 lt!2388311)))))

(declare-fun lambda!358932 () Int)

(declare-fun lt!2388328 () (InoxSet Context!11498))

(declare-fun flatMap!1870 ((InoxSet Context!11498) Int) (InoxSet Context!11498))

(declare-fun derivationStepZipperUp!1539 (Context!11498 C!33000) (InoxSet Context!11498))

(assert (=> b!6485077 (= (flatMap!1870 lt!2388328 lambda!358932) (derivationStepZipperUp!1539 lt!2388289 (h!71718 s!2326)))))

(declare-fun lt!2388305 () Unit!158791)

(declare-fun lemmaFlatMapOnSingletonSet!1396 ((InoxSet Context!11498) Context!11498 Int) Unit!158791)

(assert (=> b!6485077 (= lt!2388305 (lemmaFlatMapOnSingletonSet!1396 lt!2388328 lt!2388289 lambda!358932))))

(declare-fun lt!2388340 () (InoxSet Context!11498))

(assert (=> b!6485077 (= lt!2388340 (derivationStepZipperUp!1539 lt!2388289 (h!71718 s!2326)))))

(declare-fun derivationStepZipper!2331 ((InoxSet Context!11498) C!33000) (InoxSet Context!11498))

(assert (=> b!6485077 (= lt!2388293 (derivationStepZipper!2331 lt!2388328 (h!71718 s!2326)))))

(assert (=> b!6485077 (= lt!2388328 (store ((as const (Array Context!11498 Bool)) false) lt!2388289 true))))

(declare-fun lt!2388320 () List!65395)

(assert (=> b!6485077 (= lt!2388289 (Context!11499 (Cons!65271 (reg!16694 (regOne!33242 r!7292)) lt!2388320)))))

(declare-fun b!6485078 () Bool)

(declare-fun e!3930488 () Bool)

(declare-fun tp!1796005 () Bool)

(assert (=> b!6485078 (= e!3930488 tp!1796005)))

(declare-fun b!6485079 () Bool)

(declare-fun res!2663341 () Bool)

(assert (=> b!6485079 (=> res!2663341 e!3930493)))

(assert (=> b!6485079 (= res!2663341 (or ((_ is EmptyExpr!16365) r!7292) ((_ is EmptyLang!16365) r!7292) ((_ is ElementMatch!16365) r!7292) ((_ is Union!16365) r!7292) (not ((_ is Concat!25210) r!7292))))))

(declare-fun b!6485080 () Bool)

(assert (=> b!6485080 (= e!3930483 e!3930475)))

(declare-fun res!2663329 () Bool)

(assert (=> b!6485080 (=> (not res!2663329) (not e!3930475))))

(assert (=> b!6485080 (= res!2663329 (= r!7292 lt!2388323))))

(assert (=> b!6485080 (= lt!2388323 (unfocusZipper!2107 zl!343))))

(declare-fun tp!1796012 () Bool)

(declare-fun setRes!44181 () Bool)

(declare-fun setNonEmpty!44181 () Bool)

(declare-fun setElem!44181 () Context!11498)

(declare-fun inv!84159 (Context!11498) Bool)

(assert (=> setNonEmpty!44181 (= setRes!44181 (and tp!1796012 (inv!84159 setElem!44181) e!3930477))))

(declare-fun setRest!44181 () (InoxSet Context!11498))

(assert (=> setNonEmpty!44181 (= z!1189 ((_ map or) (store ((as const (Array Context!11498 Bool)) false) setElem!44181 true) setRest!44181))))

(declare-fun b!6485081 () Bool)

(assert (=> b!6485081 (= e!3930482 (inv!84159 lt!2388330))))

(declare-fun e!3930490 () Bool)

(assert (=> b!6485081 e!3930490))

(declare-fun res!2663316 () Bool)

(assert (=> b!6485081 (=> (not res!2663316) (not e!3930490))))

(declare-fun lt!2388343 () List!65394)

(assert (=> b!6485081 (= res!2663316 (matchR!8548 lt!2388335 lt!2388343))))

(declare-fun lt!2388317 () List!65394)

(declare-fun lt!2388324 () Unit!158791)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!328 (Regex!16365 Regex!16365 List!65394 List!65394) Unit!158791)

(assert (=> b!6485081 (= lt!2388324 (lemmaTwoRegexMatchThenConcatMatchesConcatString!328 (reg!16694 (regOne!33242 r!7292)) lt!2388294 (_1!36647 lt!2388318) lt!2388317))))

(declare-fun lt!2388299 () List!65395)

(declare-fun ++!14441 (List!65395 List!65395) List!65395)

(assert (=> b!6485081 (matchZipper!2377 (store ((as const (Array Context!11498 Bool)) false) (Context!11499 (++!14441 lt!2388299 lt!2388320)) true) lt!2388343)))

(declare-fun lt!2388314 () Unit!158791)

(declare-fun lambda!358938 () Int)

(declare-fun lemmaConcatPreservesForall!344 (List!65395 List!65395 Int) Unit!158791)

(assert (=> b!6485081 (= lt!2388314 (lemmaConcatPreservesForall!344 lt!2388299 lt!2388320 lambda!358938))))

(declare-fun lt!2388290 () Unit!158791)

(declare-fun lt!2388315 () Context!11498)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!166 (Context!11498 Context!11498 List!65394 List!65394) Unit!158791)

(assert (=> b!6485081 (= lt!2388290 (lemmaConcatenateContextMatchesConcatOfStrings!166 lt!2388315 lt!2388330 (_1!36647 lt!2388318) lt!2388317))))

(declare-fun lt!2388319 () (InoxSet Context!11498))

(assert (=> b!6485081 (matchZipper!2377 lt!2388319 lt!2388317)))

(declare-fun lt!2388326 () Unit!158791)

(declare-fun theoremZipperRegexEquiv!831 ((InoxSet Context!11498) List!65396 Regex!16365 List!65394) Unit!158791)

(assert (=> b!6485081 (= lt!2388326 (theoremZipperRegexEquiv!831 lt!2388319 lt!2388310 lt!2388294 lt!2388317))))

(declare-fun lt!2388296 () (InoxSet Context!11498))

(assert (=> b!6485081 (matchZipper!2377 lt!2388296 (_1!36647 lt!2388318))))

(declare-fun lt!2388302 () List!65396)

(declare-fun lt!2388332 () Unit!158791)

(assert (=> b!6485081 (= lt!2388332 (theoremZipperRegexEquiv!831 lt!2388296 lt!2388302 (reg!16694 (regOne!33242 r!7292)) (_1!36647 lt!2388318)))))

(assert (=> b!6485081 (matchR!8548 lt!2388294 lt!2388317)))

(declare-fun lt!2388303 () Unit!158791)

(assert (=> b!6485081 (= lt!2388303 (lemmaTwoRegexMatchThenConcatMatchesConcatString!328 lt!2388338 (regTwo!33242 r!7292) (_2!36647 lt!2388318) (_2!36647 lt!2388334)))))

(assert (=> b!6485081 (matchR!8548 lt!2388338 lt!2388306)))

(declare-fun lt!2388345 () Unit!158791)

(declare-fun lemmaStarApp!142 (Regex!16365 List!65394 List!65394) Unit!158791)

(assert (=> b!6485081 (= lt!2388345 (lemmaStarApp!142 (reg!16694 (regOne!33242 r!7292)) (_1!36647 lt!2388318) (_2!36647 lt!2388318)))))

(declare-fun b!6485082 () Bool)

(declare-fun tp!1796004 () Bool)

(declare-fun tp!1796007 () Bool)

(assert (=> b!6485082 (= e!3930485 (and tp!1796004 tp!1796007))))

(declare-fun b!6485083 () Bool)

(declare-fun res!2663344 () Bool)

(assert (=> b!6485083 (=> res!2663344 e!3930480)))

(assert (=> b!6485083 (= res!2663344 (not (matchR!8548 (regTwo!33242 r!7292) (_2!36647 lt!2388334))))))

(declare-fun b!6485084 () Bool)

(assert (=> b!6485084 (= e!3930485 tp_is_empty!41983)))

(declare-fun b!6485085 () Bool)

(declare-fun res!2663328 () Bool)

(assert (=> b!6485085 (=> res!2663328 e!3930493)))

(assert (=> b!6485085 (= res!2663328 (not ((_ is Cons!65271) (exprs!6249 (h!71720 zl!343)))))))

(declare-fun e!3930495 () Bool)

(assert (=> b!6485086 (= e!3930495 e!3930484)))

(declare-fun res!2663332 () Bool)

(assert (=> b!6485086 (=> res!2663332 e!3930484)))

(assert (=> b!6485086 (= res!2663332 (or (and ((_ is ElementMatch!16365) (regOne!33242 r!7292)) (= (c!1188049 (regOne!33242 r!7292)) (h!71718 s!2326))) ((_ is Union!16365) (regOne!33242 r!7292))))))

(declare-fun lt!2388331 () Unit!158791)

(assert (=> b!6485086 (= lt!2388331 e!3930489)))

(declare-fun c!1188048 () Bool)

(assert (=> b!6485086 (= c!1188048 (nullable!6358 (h!71719 (exprs!6249 (h!71720 zl!343)))))))

(assert (=> b!6485086 (= (flatMap!1870 z!1189 lambda!358932) (derivationStepZipperUp!1539 (h!71720 zl!343) (h!71718 s!2326)))))

(declare-fun lt!2388301 () Unit!158791)

(assert (=> b!6485086 (= lt!2388301 (lemmaFlatMapOnSingletonSet!1396 z!1189 (h!71720 zl!343) lambda!358932))))

(declare-fun lt!2388300 () Context!11498)

(assert (=> b!6485086 (= lt!2388297 (derivationStepZipperUp!1539 lt!2388300 (h!71718 s!2326)))))

(declare-fun derivationStepZipperDown!1613 (Regex!16365 Context!11498 C!33000) (InoxSet Context!11498))

(assert (=> b!6485086 (= lt!2388344 (derivationStepZipperDown!1613 (h!71719 (exprs!6249 (h!71720 zl!343))) lt!2388300 (h!71718 s!2326)))))

(assert (=> b!6485086 (= lt!2388300 (Context!11499 (t!379021 (exprs!6249 (h!71720 zl!343)))))))

(declare-fun lt!2388337 () (InoxSet Context!11498))

(assert (=> b!6485086 (= lt!2388337 (derivationStepZipperUp!1539 (Context!11499 (Cons!65271 (h!71719 (exprs!6249 (h!71720 zl!343))) (t!379021 (exprs!6249 (h!71720 zl!343))))) (h!71718 s!2326)))))

(declare-fun b!6485087 () Bool)

(assert (=> b!6485087 (= e!3930498 e!3930474)))

(declare-fun res!2663322 () Bool)

(assert (=> b!6485087 (=> res!2663322 e!3930474)))

(assert (=> b!6485087 (= res!2663322 (not (= (unfocusZipper!2107 lt!2388302) (reg!16694 (regOne!33242 r!7292)))))))

(assert (=> b!6485087 (= lt!2388302 (Cons!65272 lt!2388315 Nil!65272))))

(assert (=> b!6485087 (= (flatMap!1870 lt!2388319 lambda!358932) (derivationStepZipperUp!1539 lt!2388330 (h!71718 s!2326)))))

(declare-fun lt!2388292 () Unit!158791)

(assert (=> b!6485087 (= lt!2388292 (lemmaFlatMapOnSingletonSet!1396 lt!2388319 lt!2388330 lambda!358932))))

(assert (=> b!6485087 (= (flatMap!1870 lt!2388296 lambda!358932) (derivationStepZipperUp!1539 lt!2388315 (h!71718 s!2326)))))

(declare-fun lt!2388291 () Unit!158791)

(assert (=> b!6485087 (= lt!2388291 (lemmaFlatMapOnSingletonSet!1396 lt!2388296 lt!2388315 lambda!358932))))

(declare-fun lt!2388346 () (InoxSet Context!11498))

(assert (=> b!6485087 (= lt!2388346 (derivationStepZipperUp!1539 lt!2388330 (h!71718 s!2326)))))

(declare-fun lt!2388312 () (InoxSet Context!11498))

(assert (=> b!6485087 (= lt!2388312 (derivationStepZipperUp!1539 lt!2388315 (h!71718 s!2326)))))

(assert (=> b!6485087 (= lt!2388319 (store ((as const (Array Context!11498 Bool)) false) lt!2388330 true))))

(assert (=> b!6485087 (= lt!2388296 (store ((as const (Array Context!11498 Bool)) false) lt!2388315 true))))

(assert (=> b!6485087 (= lt!2388315 (Context!11499 lt!2388299))))

(assert (=> b!6485087 (= lt!2388299 (Cons!65271 (reg!16694 (regOne!33242 r!7292)) Nil!65271))))

(declare-fun b!6485088 () Bool)

(declare-fun res!2663340 () Bool)

(assert (=> b!6485088 (=> res!2663340 e!3930482)))

(assert (=> b!6485088 (= res!2663340 (not (matchR!8548 (reg!16694 (regOne!33242 r!7292)) (_1!36647 lt!2388318))))))

(declare-fun b!6485089 () Bool)

(assert (=> b!6485089 (= e!3930486 e!3930482)))

(declare-fun res!2663319 () Bool)

(assert (=> b!6485089 (=> res!2663319 e!3930482)))

(declare-fun lt!2388339 () List!65394)

(assert (=> b!6485089 (= res!2663319 (not (= lt!2388339 s!2326)))))

(assert (=> b!6485089 (= lt!2388339 lt!2388343)))

(assert (=> b!6485089 (= lt!2388343 (++!14440 (_1!36647 lt!2388318) lt!2388317))))

(assert (=> b!6485089 (= lt!2388339 (++!14440 lt!2388306 (_2!36647 lt!2388334)))))

(assert (=> b!6485089 (= lt!2388317 (++!14440 (_2!36647 lt!2388318) (_2!36647 lt!2388334)))))

(declare-fun lt!2388329 () Unit!158791)

(declare-fun lemmaConcatAssociativity!2936 (List!65394 List!65394 List!65394) Unit!158791)

(assert (=> b!6485089 (= lt!2388329 (lemmaConcatAssociativity!2936 (_1!36647 lt!2388318) (_2!36647 lt!2388318) (_2!36647 lt!2388334)))))

(declare-fun b!6485090 () Bool)

(declare-fun res!2663336 () Bool)

(assert (=> b!6485090 (=> res!2663336 e!3930497)))

(assert (=> b!6485090 (= res!2663336 (not (= (matchZipper!2377 lt!2388328 s!2326) (matchZipper!2377 lt!2388293 (t!379020 s!2326)))))))

(declare-fun res!2663312 () Bool)

(assert (=> start!637438 (=> (not res!2663312) (not e!3930483))))

(declare-fun validRegex!8101 (Regex!16365) Bool)

(assert (=> start!637438 (= res!2663312 (validRegex!8101 r!7292))))

(assert (=> start!637438 e!3930483))

(assert (=> start!637438 e!3930485))

(declare-fun condSetEmpty!44181 () Bool)

(assert (=> start!637438 (= condSetEmpty!44181 (= z!1189 ((as const (Array Context!11498 Bool)) false)))))

(assert (=> start!637438 setRes!44181))

(declare-fun e!3930496 () Bool)

(assert (=> start!637438 e!3930496))

(assert (=> start!637438 e!3930491))

(declare-fun b!6485091 () Bool)

(declare-fun tp!1796011 () Bool)

(assert (=> b!6485091 (= e!3930485 tp!1796011)))

(declare-fun setIsEmpty!44181 () Bool)

(assert (=> setIsEmpty!44181 setRes!44181))

(declare-fun b!6485092 () Bool)

(declare-fun res!2663315 () Bool)

(assert (=> b!6485092 (=> res!2663315 e!3930495)))

(declare-fun isEmpty!37462 (List!65395) Bool)

(assert (=> b!6485092 (= res!2663315 (isEmpty!37462 (t!379021 (exprs!6249 (h!71720 zl!343)))))))

(declare-fun b!6485093 () Bool)

(assert (=> b!6485093 (= e!3930478 (matchZipper!2377 lt!2388297 (t!379020 s!2326)))))

(declare-fun b!6485094 () Bool)

(assert (=> b!6485094 (= e!3930487 e!3930492)))

(declare-fun res!2663310 () Bool)

(assert (=> b!6485094 (=> res!2663310 e!3930492)))

(assert (=> b!6485094 (= res!2663310 (not lt!2388295))))

(assert (=> b!6485094 e!3930476))

(declare-fun res!2663323 () Bool)

(assert (=> b!6485094 (=> (not res!2663323) (not e!3930476))))

(declare-fun lt!2388333 () Bool)

(assert (=> b!6485094 (= res!2663323 (= lt!2388333 (matchRSpec!3466 lt!2388335 s!2326)))))

(assert (=> b!6485094 (= lt!2388333 (matchR!8548 lt!2388335 s!2326))))

(declare-fun lt!2388313 () Unit!158791)

(assert (=> b!6485094 (= lt!2388313 (mainMatchTheorem!3466 lt!2388335 s!2326))))

(declare-fun b!6485095 () Bool)

(declare-fun res!2663327 () Bool)

(assert (=> b!6485095 (=> res!2663327 e!3930493)))

(declare-fun generalisedConcat!1962 (List!65395) Regex!16365)

(assert (=> b!6485095 (= res!2663327 (not (= r!7292 (generalisedConcat!1962 (exprs!6249 (h!71720 zl!343))))))))

(declare-fun b!6485096 () Bool)

(assert (=> b!6485096 (= e!3930484 e!3930479)))

(declare-fun res!2663334 () Bool)

(assert (=> b!6485096 (=> res!2663334 e!3930479)))

(assert (=> b!6485096 (= res!2663334 (not (= lt!2388344 lt!2388311)))))

(assert (=> b!6485096 (= lt!2388311 (derivationStepZipperDown!1613 (reg!16694 (regOne!33242 r!7292)) lt!2388330 (h!71718 s!2326)))))

(assert (=> b!6485096 (= lt!2388330 (Context!11499 lt!2388320))))

(assert (=> b!6485096 (= lt!2388320 (Cons!65271 lt!2388338 (t!379021 (exprs!6249 (h!71720 zl!343)))))))

(assert (=> b!6485096 (= lt!2388338 (Star!16365 (reg!16694 (regOne!33242 r!7292))))))

(assert (=> b!6485097 (= e!3930493 e!3930495)))

(declare-fun res!2663321 () Bool)

(assert (=> b!6485097 (=> res!2663321 e!3930495)))

(declare-fun lt!2388298 () Bool)

(assert (=> b!6485097 (= res!2663321 (or (not (= lt!2388295 lt!2388298)) ((_ is Nil!65270) s!2326)))))

(assert (=> b!6485097 (= (Exists!3435 lambda!358930) (Exists!3435 lambda!358931))))

(declare-fun lt!2388341 () Unit!158791)

(assert (=> b!6485097 (= lt!2388341 (lemmaExistCutMatchRandMatchRSpecEquivalent!1972 (regOne!33242 r!7292) (regTwo!33242 r!7292) s!2326))))

(assert (=> b!6485097 (= lt!2388298 (Exists!3435 lambda!358930))))

(assert (=> b!6485097 (= lt!2388298 (isDefined!12959 (findConcatSeparation!2670 (regOne!33242 r!7292) (regTwo!33242 r!7292) Nil!65270 s!2326 s!2326)))))

(declare-fun lt!2388288 () Unit!158791)

(assert (=> b!6485097 (= lt!2388288 (lemmaFindConcatSeparationEquivalentToExists!2434 (regOne!33242 r!7292) (regTwo!33242 r!7292) s!2326))))

(declare-fun b!6485098 () Bool)

(assert (=> b!6485098 (= e!3930490 lt!2388333)))

(declare-fun b!6485099 () Bool)

(declare-fun res!2663325 () Bool)

(assert (=> b!6485099 (=> res!2663325 e!3930484)))

(assert (=> b!6485099 (= res!2663325 (or ((_ is Concat!25210) (regOne!33242 r!7292)) (not ((_ is Star!16365) (regOne!33242 r!7292)))))))

(declare-fun b!6485100 () Bool)

(assert (=> b!6485100 (= e!3930497 e!3930481)))

(declare-fun res!2663333 () Bool)

(assert (=> b!6485100 (=> res!2663333 e!3930481)))

(assert (=> b!6485100 (= res!2663333 (not (= r!7292 lt!2388294)))))

(assert (=> b!6485100 (= lt!2388294 (Concat!25210 lt!2388338 (regTwo!33242 r!7292)))))

(declare-fun b!6485101 () Bool)

(declare-fun tp!1796009 () Bool)

(assert (=> b!6485101 (= e!3930496 (and (inv!84159 (h!71720 zl!343)) e!3930488 tp!1796009))))

(assert (= (and start!637438 res!2663312) b!6485076))

(assert (= (and b!6485076 res!2663320) b!6485080))

(assert (= (and b!6485080 res!2663329) b!6485075))

(assert (= (and b!6485075 (not res!2663339)) b!6485074))

(assert (= (and b!6485074 (not res!2663331)) b!6485095))

(assert (= (and b!6485095 (not res!2663327)) b!6485085))

(assert (= (and b!6485085 (not res!2663328)) b!6485071))

(assert (= (and b!6485071 (not res!2663338)) b!6485079))

(assert (= (and b!6485079 (not res!2663341)) b!6485097))

(assert (= (and b!6485097 (not res!2663321)) b!6485092))

(assert (= (and b!6485092 (not res!2663315)) b!6485086))

(assert (= (and b!6485086 c!1188048) b!6485061))

(assert (= (and b!6485086 (not c!1188048)) b!6485059))

(assert (= (and b!6485061 (not res!2663330)) b!6485093))

(assert (= (and b!6485086 (not res!2663332)) b!6485072))

(assert (= (and b!6485072 res!2663343) b!6485069))

(assert (= (and b!6485072 (not res!2663318)) b!6485099))

(assert (= (and b!6485099 (not res!2663325)) b!6485096))

(assert (= (and b!6485096 (not res!2663334)) b!6485077))

(assert (= (and b!6485077 (not res!2663337)) b!6485090))

(assert (= (and b!6485090 (not res!2663336)) b!6485066))

(assert (= (and b!6485066 (not res!2663342)) b!6485100))

(assert (= (and b!6485100 (not res!2663333)) b!6485070))

(assert (= (and b!6485070 (not res!2663317)) b!6485087))

(assert (= (and b!6485087 (not res!2663322)) b!6485057))

(assert (= (and b!6485057 (not res!2663326)) b!6485094))

(assert (= (and b!6485094 res!2663323) b!6485067))

(assert (= (and b!6485094 (not res!2663310)) b!6485058))

(assert (= (and b!6485058 (not res!2663324)) b!6485062))

(assert (= (and b!6485062 (not res!2663313)) b!6485083))

(assert (= (and b!6485083 (not res!2663344)) b!6485060))

(assert (= (and b!6485060 (not res!2663335)) b!6485065))

(assert (= (and b!6485065 (not res!2663311)) b!6485089))

(assert (= (and b!6485089 (not res!2663319)) b!6485088))

(assert (= (and b!6485088 (not res!2663340)) b!6485073))

(assert (= (and b!6485073 (not res!2663314)) b!6485081))

(assert (= (and b!6485081 res!2663316) b!6485098))

(assert (= (and start!637438 ((_ is ElementMatch!16365) r!7292)) b!6485084))

(assert (= (and start!637438 ((_ is Concat!25210) r!7292)) b!6485068))

(assert (= (and start!637438 ((_ is Star!16365) r!7292)) b!6485091))

(assert (= (and start!637438 ((_ is Union!16365) r!7292)) b!6485082))

(assert (= (and start!637438 condSetEmpty!44181) setIsEmpty!44181))

(assert (= (and start!637438 (not condSetEmpty!44181)) setNonEmpty!44181))

(assert (= setNonEmpty!44181 b!6485063))

(assert (= b!6485101 b!6485078))

(assert (= (and start!637438 ((_ is Cons!65272) zl!343)) b!6485101))

(assert (= (and start!637438 ((_ is Cons!65270) s!2326)) b!6485064))

(declare-fun m!7273314 () Bool)

(assert (=> b!6485070 m!7273314))

(declare-fun m!7273316 () Bool)

(assert (=> b!6485093 m!7273316))

(declare-fun m!7273318 () Bool)

(assert (=> b!6485073 m!7273318))

(declare-fun m!7273320 () Bool)

(assert (=> b!6485080 m!7273320))

(declare-fun m!7273322 () Bool)

(assert (=> b!6485097 m!7273322))

(declare-fun m!7273324 () Bool)

(assert (=> b!6485097 m!7273324))

(declare-fun m!7273326 () Bool)

(assert (=> b!6485097 m!7273326))

(assert (=> b!6485097 m!7273326))

(declare-fun m!7273328 () Bool)

(assert (=> b!6485097 m!7273328))

(declare-fun m!7273330 () Bool)

(assert (=> b!6485097 m!7273330))

(assert (=> b!6485097 m!7273322))

(declare-fun m!7273332 () Bool)

(assert (=> b!6485097 m!7273332))

(declare-fun m!7273334 () Bool)

(assert (=> b!6485081 m!7273334))

(declare-fun m!7273336 () Bool)

(assert (=> b!6485081 m!7273336))

(declare-fun m!7273338 () Bool)

(assert (=> b!6485081 m!7273338))

(declare-fun m!7273340 () Bool)

(assert (=> b!6485081 m!7273340))

(declare-fun m!7273342 () Bool)

(assert (=> b!6485081 m!7273342))

(declare-fun m!7273344 () Bool)

(assert (=> b!6485081 m!7273344))

(declare-fun m!7273346 () Bool)

(assert (=> b!6485081 m!7273346))

(declare-fun m!7273348 () Bool)

(assert (=> b!6485081 m!7273348))

(assert (=> b!6485081 m!7273344))

(declare-fun m!7273350 () Bool)

(assert (=> b!6485081 m!7273350))

(declare-fun m!7273352 () Bool)

(assert (=> b!6485081 m!7273352))

(declare-fun m!7273354 () Bool)

(assert (=> b!6485081 m!7273354))

(declare-fun m!7273356 () Bool)

(assert (=> b!6485081 m!7273356))

(declare-fun m!7273358 () Bool)

(assert (=> b!6485081 m!7273358))

(declare-fun m!7273360 () Bool)

(assert (=> b!6485081 m!7273360))

(declare-fun m!7273362 () Bool)

(assert (=> b!6485081 m!7273362))

(declare-fun m!7273364 () Bool)

(assert (=> b!6485081 m!7273364))

(declare-fun m!7273366 () Bool)

(assert (=> b!6485058 m!7273366))

(declare-fun m!7273368 () Bool)

(assert (=> b!6485058 m!7273368))

(declare-fun m!7273370 () Bool)

(assert (=> b!6485058 m!7273370))

(declare-fun m!7273372 () Bool)

(assert (=> b!6485058 m!7273372))

(declare-fun m!7273374 () Bool)

(assert (=> b!6485058 m!7273374))

(declare-fun m!7273376 () Bool)

(assert (=> b!6485058 m!7273376))

(declare-fun m!7273378 () Bool)

(assert (=> b!6485058 m!7273378))

(assert (=> b!6485058 m!7273368))

(declare-fun m!7273380 () Bool)

(assert (=> b!6485058 m!7273380))

(declare-fun m!7273382 () Bool)

(assert (=> start!637438 m!7273382))

(declare-fun m!7273384 () Bool)

(assert (=> b!6485090 m!7273384))

(declare-fun m!7273386 () Bool)

(assert (=> b!6485090 m!7273386))

(declare-fun m!7273388 () Bool)

(assert (=> b!6485057 m!7273388))

(declare-fun m!7273390 () Bool)

(assert (=> b!6485075 m!7273390))

(declare-fun m!7273392 () Bool)

(assert (=> b!6485075 m!7273392))

(declare-fun m!7273394 () Bool)

(assert (=> b!6485075 m!7273394))

(declare-fun m!7273396 () Bool)

(assert (=> b!6485076 m!7273396))

(declare-fun m!7273398 () Bool)

(assert (=> setNonEmpty!44181 m!7273398))

(declare-fun m!7273400 () Bool)

(assert (=> b!6485087 m!7273400))

(declare-fun m!7273402 () Bool)

(assert (=> b!6485087 m!7273402))

(declare-fun m!7273404 () Bool)

(assert (=> b!6485087 m!7273404))

(declare-fun m!7273406 () Bool)

(assert (=> b!6485087 m!7273406))

(declare-fun m!7273408 () Bool)

(assert (=> b!6485087 m!7273408))

(declare-fun m!7273410 () Bool)

(assert (=> b!6485087 m!7273410))

(declare-fun m!7273412 () Bool)

(assert (=> b!6485087 m!7273412))

(declare-fun m!7273414 () Bool)

(assert (=> b!6485087 m!7273414))

(declare-fun m!7273416 () Bool)

(assert (=> b!6485087 m!7273416))

(declare-fun m!7273418 () Bool)

(assert (=> b!6485065 m!7273418))

(declare-fun m!7273420 () Bool)

(assert (=> b!6485065 m!7273420))

(declare-fun m!7273422 () Bool)

(assert (=> b!6485065 m!7273422))

(declare-fun m!7273424 () Bool)

(assert (=> b!6485065 m!7273424))

(declare-fun m!7273426 () Bool)

(assert (=> b!6485065 m!7273426))

(assert (=> b!6485065 m!7273422))

(declare-fun m!7273428 () Bool)

(assert (=> b!6485065 m!7273428))

(declare-fun m!7273430 () Bool)

(assert (=> b!6485065 m!7273430))

(declare-fun m!7273432 () Bool)

(assert (=> b!6485065 m!7273432))

(declare-fun m!7273434 () Bool)

(assert (=> b!6485065 m!7273434))

(declare-fun m!7273436 () Bool)

(assert (=> b!6485065 m!7273436))

(declare-fun m!7273438 () Bool)

(assert (=> b!6485065 m!7273438))

(assert (=> b!6485065 m!7273422))

(declare-fun m!7273440 () Bool)

(assert (=> b!6485065 m!7273440))

(declare-fun m!7273442 () Bool)

(assert (=> b!6485071 m!7273442))

(assert (=> b!6485071 m!7273442))

(declare-fun m!7273444 () Bool)

(assert (=> b!6485071 m!7273444))

(declare-fun m!7273446 () Bool)

(assert (=> b!6485088 m!7273446))

(declare-fun m!7273448 () Bool)

(assert (=> b!6485061 m!7273448))

(declare-fun m!7273450 () Bool)

(assert (=> b!6485061 m!7273450))

(declare-fun m!7273452 () Bool)

(assert (=> b!6485061 m!7273452))

(declare-fun m!7273454 () Bool)

(assert (=> b!6485086 m!7273454))

(declare-fun m!7273456 () Bool)

(assert (=> b!6485086 m!7273456))

(declare-fun m!7273458 () Bool)

(assert (=> b!6485086 m!7273458))

(declare-fun m!7273460 () Bool)

(assert (=> b!6485086 m!7273460))

(declare-fun m!7273462 () Bool)

(assert (=> b!6485086 m!7273462))

(declare-fun m!7273464 () Bool)

(assert (=> b!6485086 m!7273464))

(declare-fun m!7273466 () Bool)

(assert (=> b!6485086 m!7273466))

(declare-fun m!7273468 () Bool)

(assert (=> b!6485096 m!7273468))

(declare-fun m!7273470 () Bool)

(assert (=> b!6485095 m!7273470))

(declare-fun m!7273472 () Bool)

(assert (=> b!6485083 m!7273472))

(declare-fun m!7273474 () Bool)

(assert (=> b!6485074 m!7273474))

(declare-fun m!7273476 () Bool)

(assert (=> b!6485060 m!7273476))

(declare-fun m!7273478 () Bool)

(assert (=> b!6485089 m!7273478))

(declare-fun m!7273480 () Bool)

(assert (=> b!6485089 m!7273480))

(declare-fun m!7273482 () Bool)

(assert (=> b!6485089 m!7273482))

(declare-fun m!7273484 () Bool)

(assert (=> b!6485089 m!7273484))

(declare-fun m!7273486 () Bool)

(assert (=> b!6485101 m!7273486))

(declare-fun m!7273488 () Bool)

(assert (=> b!6485092 m!7273488))

(declare-fun m!7273490 () Bool)

(assert (=> b!6485069 m!7273490))

(declare-fun m!7273492 () Bool)

(assert (=> b!6485077 m!7273492))

(declare-fun m!7273494 () Bool)

(assert (=> b!6485077 m!7273494))

(declare-fun m!7273496 () Bool)

(assert (=> b!6485077 m!7273496))

(declare-fun m!7273498 () Bool)

(assert (=> b!6485077 m!7273498))

(declare-fun m!7273500 () Bool)

(assert (=> b!6485077 m!7273500))

(declare-fun m!7273502 () Bool)

(assert (=> b!6485062 m!7273502))

(declare-fun m!7273504 () Bool)

(assert (=> b!6485094 m!7273504))

(declare-fun m!7273506 () Bool)

(assert (=> b!6485094 m!7273506))

(declare-fun m!7273508 () Bool)

(assert (=> b!6485094 m!7273508))

(check-sat (not b!6485077) (not b!6485078) (not b!6485062) (not setNonEmpty!44181) (not b!6485093) (not b!6485057) (not b!6485095) (not b!6485090) (not b!6485069) (not b!6485101) (not b!6485064) (not b!6485074) (not b!6485060) (not b!6485058) (not b!6485082) (not b!6485061) (not b!6485070) (not b!6485071) (not b!6485075) (not b!6485096) (not b!6485094) (not b!6485089) (not b!6485063) (not b!6485073) (not start!637438) (not b!6485086) (not b!6485080) (not b!6485091) (not b!6485088) tp_is_empty!41983 (not b!6485068) (not b!6485083) (not b!6485076) (not b!6485097) (not b!6485087) (not b!6485092) (not b!6485065) (not b!6485081))
(check-sat)
(get-model)

(declare-fun b!6485419 () Bool)

(declare-fun e!3930671 () Bool)

(declare-fun derivativeStep!5061 (Regex!16365 C!33000) Regex!16365)

(declare-fun head!13205 (List!65394) C!33000)

(declare-fun tail!12290 (List!65394) List!65394)

(assert (=> b!6485419 (= e!3930671 (matchR!8548 (derivativeStep!5061 lt!2388338 (head!13205 (_1!36647 lt!2388334))) (tail!12290 (_1!36647 lt!2388334))))))

(declare-fun b!6485420 () Bool)

(assert (=> b!6485420 (= e!3930671 (nullable!6358 lt!2388338))))

(declare-fun b!6485421 () Bool)

(declare-fun e!3930668 () Bool)

(assert (=> b!6485421 (= e!3930668 (not (= (head!13205 (_1!36647 lt!2388334)) (c!1188049 lt!2388338))))))

(declare-fun b!6485422 () Bool)

(declare-fun res!2663480 () Bool)

(declare-fun e!3930669 () Bool)

(assert (=> b!6485422 (=> res!2663480 e!3930669)))

(assert (=> b!6485422 (= res!2663480 (not ((_ is ElementMatch!16365) lt!2388338)))))

(declare-fun e!3930667 () Bool)

(assert (=> b!6485422 (= e!3930667 e!3930669)))

(declare-fun b!6485423 () Bool)

(declare-fun res!2663476 () Bool)

(assert (=> b!6485423 (=> res!2663476 e!3930668)))

(assert (=> b!6485423 (= res!2663476 (not (isEmpty!37460 (tail!12290 (_1!36647 lt!2388334)))))))

(declare-fun b!6485424 () Bool)

(declare-fun lt!2388404 () Bool)

(assert (=> b!6485424 (= e!3930667 (not lt!2388404))))

(declare-fun b!6485425 () Bool)

(declare-fun res!2663483 () Bool)

(declare-fun e!3930672 () Bool)

(assert (=> b!6485425 (=> (not res!2663483) (not e!3930672))))

(assert (=> b!6485425 (= res!2663483 (isEmpty!37460 (tail!12290 (_1!36647 lt!2388334))))))

(declare-fun b!6485426 () Bool)

(declare-fun e!3930670 () Bool)

(declare-fun call!561297 () Bool)

(assert (=> b!6485426 (= e!3930670 (= lt!2388404 call!561297))))

(declare-fun bm!561292 () Bool)

(assert (=> bm!561292 (= call!561297 (isEmpty!37460 (_1!36647 lt!2388334)))))

(declare-fun b!6485427 () Bool)

(declare-fun res!2663478 () Bool)

(assert (=> b!6485427 (=> res!2663478 e!3930669)))

(assert (=> b!6485427 (= res!2663478 e!3930672)))

(declare-fun res!2663477 () Bool)

(assert (=> b!6485427 (=> (not res!2663477) (not e!3930672))))

(assert (=> b!6485427 (= res!2663477 lt!2388404)))

(declare-fun b!6485428 () Bool)

(declare-fun e!3930666 () Bool)

(assert (=> b!6485428 (= e!3930666 e!3930668)))

(declare-fun res!2663482 () Bool)

(assert (=> b!6485428 (=> res!2663482 e!3930668)))

(assert (=> b!6485428 (= res!2663482 call!561297)))

(declare-fun d!2034492 () Bool)

(assert (=> d!2034492 e!3930670))

(declare-fun c!1188141 () Bool)

(assert (=> d!2034492 (= c!1188141 ((_ is EmptyExpr!16365) lt!2388338))))

(assert (=> d!2034492 (= lt!2388404 e!3930671)))

(declare-fun c!1188140 () Bool)

(assert (=> d!2034492 (= c!1188140 (isEmpty!37460 (_1!36647 lt!2388334)))))

(assert (=> d!2034492 (validRegex!8101 lt!2388338)))

(assert (=> d!2034492 (= (matchR!8548 lt!2388338 (_1!36647 lt!2388334)) lt!2388404)))

(declare-fun b!6485429 () Bool)

(declare-fun res!2663481 () Bool)

(assert (=> b!6485429 (=> (not res!2663481) (not e!3930672))))

(assert (=> b!6485429 (= res!2663481 (not call!561297))))

(declare-fun b!6485430 () Bool)

(assert (=> b!6485430 (= e!3930672 (= (head!13205 (_1!36647 lt!2388334)) (c!1188049 lt!2388338)))))

(declare-fun b!6485431 () Bool)

(assert (=> b!6485431 (= e!3930670 e!3930667)))

(declare-fun c!1188139 () Bool)

(assert (=> b!6485431 (= c!1188139 ((_ is EmptyLang!16365) lt!2388338))))

(declare-fun b!6485432 () Bool)

(assert (=> b!6485432 (= e!3930669 e!3930666)))

(declare-fun res!2663479 () Bool)

(assert (=> b!6485432 (=> (not res!2663479) (not e!3930666))))

(assert (=> b!6485432 (= res!2663479 (not lt!2388404))))

(assert (= (and d!2034492 c!1188140) b!6485420))

(assert (= (and d!2034492 (not c!1188140)) b!6485419))

(assert (= (and d!2034492 c!1188141) b!6485426))

(assert (= (and d!2034492 (not c!1188141)) b!6485431))

(assert (= (and b!6485431 c!1188139) b!6485424))

(assert (= (and b!6485431 (not c!1188139)) b!6485422))

(assert (= (and b!6485422 (not res!2663480)) b!6485427))

(assert (= (and b!6485427 res!2663477) b!6485429))

(assert (= (and b!6485429 res!2663481) b!6485425))

(assert (= (and b!6485425 res!2663483) b!6485430))

(assert (= (and b!6485427 (not res!2663478)) b!6485432))

(assert (= (and b!6485432 res!2663479) b!6485428))

(assert (= (and b!6485428 (not res!2663482)) b!6485423))

(assert (= (and b!6485423 (not res!2663476)) b!6485421))

(assert (= (or b!6485426 b!6485428 b!6485429) bm!561292))

(declare-fun m!7273762 () Bool)

(assert (=> b!6485419 m!7273762))

(assert (=> b!6485419 m!7273762))

(declare-fun m!7273764 () Bool)

(assert (=> b!6485419 m!7273764))

(declare-fun m!7273766 () Bool)

(assert (=> b!6485419 m!7273766))

(assert (=> b!6485419 m!7273764))

(assert (=> b!6485419 m!7273766))

(declare-fun m!7273770 () Bool)

(assert (=> b!6485419 m!7273770))

(assert (=> b!6485430 m!7273762))

(assert (=> b!6485423 m!7273766))

(assert (=> b!6485423 m!7273766))

(declare-fun m!7273776 () Bool)

(assert (=> b!6485423 m!7273776))

(assert (=> b!6485425 m!7273766))

(assert (=> b!6485425 m!7273766))

(assert (=> b!6485425 m!7273776))

(assert (=> bm!561292 m!7273476))

(declare-fun m!7273778 () Bool)

(assert (=> b!6485420 m!7273778))

(assert (=> d!2034492 m!7273476))

(declare-fun m!7273780 () Bool)

(assert (=> d!2034492 m!7273780))

(assert (=> b!6485421 m!7273762))

(assert (=> b!6485062 d!2034492))

(declare-fun b!6485433 () Bool)

(declare-fun e!3930678 () Bool)

(assert (=> b!6485433 (= e!3930678 (matchR!8548 (derivativeStep!5061 (regTwo!33242 r!7292) (head!13205 (_2!36647 lt!2388334))) (tail!12290 (_2!36647 lt!2388334))))))

(declare-fun b!6485434 () Bool)

(assert (=> b!6485434 (= e!3930678 (nullable!6358 (regTwo!33242 r!7292)))))

(declare-fun b!6485435 () Bool)

(declare-fun e!3930675 () Bool)

(assert (=> b!6485435 (= e!3930675 (not (= (head!13205 (_2!36647 lt!2388334)) (c!1188049 (regTwo!33242 r!7292)))))))

(declare-fun b!6485436 () Bool)

(declare-fun res!2663488 () Bool)

(declare-fun e!3930676 () Bool)

(assert (=> b!6485436 (=> res!2663488 e!3930676)))

(assert (=> b!6485436 (= res!2663488 (not ((_ is ElementMatch!16365) (regTwo!33242 r!7292))))))

(declare-fun e!3930674 () Bool)

(assert (=> b!6485436 (= e!3930674 e!3930676)))

(declare-fun b!6485437 () Bool)

(declare-fun res!2663484 () Bool)

(assert (=> b!6485437 (=> res!2663484 e!3930675)))

(assert (=> b!6485437 (= res!2663484 (not (isEmpty!37460 (tail!12290 (_2!36647 lt!2388334)))))))

(declare-fun b!6485438 () Bool)

(declare-fun lt!2388405 () Bool)

(assert (=> b!6485438 (= e!3930674 (not lt!2388405))))

(declare-fun b!6485439 () Bool)

(declare-fun res!2663491 () Bool)

(declare-fun e!3930679 () Bool)

(assert (=> b!6485439 (=> (not res!2663491) (not e!3930679))))

(assert (=> b!6485439 (= res!2663491 (isEmpty!37460 (tail!12290 (_2!36647 lt!2388334))))))

(declare-fun b!6485440 () Bool)

(declare-fun e!3930677 () Bool)

(declare-fun call!561298 () Bool)

(assert (=> b!6485440 (= e!3930677 (= lt!2388405 call!561298))))

(declare-fun bm!561293 () Bool)

(assert (=> bm!561293 (= call!561298 (isEmpty!37460 (_2!36647 lt!2388334)))))

(declare-fun b!6485441 () Bool)

(declare-fun res!2663486 () Bool)

(assert (=> b!6485441 (=> res!2663486 e!3930676)))

(assert (=> b!6485441 (= res!2663486 e!3930679)))

(declare-fun res!2663485 () Bool)

(assert (=> b!6485441 (=> (not res!2663485) (not e!3930679))))

(assert (=> b!6485441 (= res!2663485 lt!2388405)))

(declare-fun b!6485442 () Bool)

(declare-fun e!3930673 () Bool)

(assert (=> b!6485442 (= e!3930673 e!3930675)))

(declare-fun res!2663490 () Bool)

(assert (=> b!6485442 (=> res!2663490 e!3930675)))

(assert (=> b!6485442 (= res!2663490 call!561298)))

(declare-fun d!2034496 () Bool)

(assert (=> d!2034496 e!3930677))

(declare-fun c!1188144 () Bool)

(assert (=> d!2034496 (= c!1188144 ((_ is EmptyExpr!16365) (regTwo!33242 r!7292)))))

(assert (=> d!2034496 (= lt!2388405 e!3930678)))

(declare-fun c!1188143 () Bool)

(assert (=> d!2034496 (= c!1188143 (isEmpty!37460 (_2!36647 lt!2388334)))))

(assert (=> d!2034496 (validRegex!8101 (regTwo!33242 r!7292))))

(assert (=> d!2034496 (= (matchR!8548 (regTwo!33242 r!7292) (_2!36647 lt!2388334)) lt!2388405)))

(declare-fun b!6485443 () Bool)

(declare-fun res!2663489 () Bool)

(assert (=> b!6485443 (=> (not res!2663489) (not e!3930679))))

(assert (=> b!6485443 (= res!2663489 (not call!561298))))

(declare-fun b!6485444 () Bool)

(assert (=> b!6485444 (= e!3930679 (= (head!13205 (_2!36647 lt!2388334)) (c!1188049 (regTwo!33242 r!7292))))))

(declare-fun b!6485445 () Bool)

(assert (=> b!6485445 (= e!3930677 e!3930674)))

(declare-fun c!1188142 () Bool)

(assert (=> b!6485445 (= c!1188142 ((_ is EmptyLang!16365) (regTwo!33242 r!7292)))))

(declare-fun b!6485446 () Bool)

(assert (=> b!6485446 (= e!3930676 e!3930673)))

(declare-fun res!2663487 () Bool)

(assert (=> b!6485446 (=> (not res!2663487) (not e!3930673))))

(assert (=> b!6485446 (= res!2663487 (not lt!2388405))))

(assert (= (and d!2034496 c!1188143) b!6485434))

(assert (= (and d!2034496 (not c!1188143)) b!6485433))

(assert (= (and d!2034496 c!1188144) b!6485440))

(assert (= (and d!2034496 (not c!1188144)) b!6485445))

(assert (= (and b!6485445 c!1188142) b!6485438))

(assert (= (and b!6485445 (not c!1188142)) b!6485436))

(assert (= (and b!6485436 (not res!2663488)) b!6485441))

(assert (= (and b!6485441 res!2663485) b!6485443))

(assert (= (and b!6485443 res!2663489) b!6485439))

(assert (= (and b!6485439 res!2663491) b!6485444))

(assert (= (and b!6485441 (not res!2663486)) b!6485446))

(assert (= (and b!6485446 res!2663487) b!6485442))

(assert (= (and b!6485442 (not res!2663490)) b!6485437))

(assert (= (and b!6485437 (not res!2663484)) b!6485435))

(assert (= (or b!6485440 b!6485442 b!6485443) bm!561293))

(declare-fun m!7273784 () Bool)

(assert (=> b!6485433 m!7273784))

(assert (=> b!6485433 m!7273784))

(declare-fun m!7273786 () Bool)

(assert (=> b!6485433 m!7273786))

(declare-fun m!7273788 () Bool)

(assert (=> b!6485433 m!7273788))

(assert (=> b!6485433 m!7273786))

(assert (=> b!6485433 m!7273788))

(declare-fun m!7273790 () Bool)

(assert (=> b!6485433 m!7273790))

(assert (=> b!6485444 m!7273784))

(assert (=> b!6485437 m!7273788))

(assert (=> b!6485437 m!7273788))

(declare-fun m!7273792 () Bool)

(assert (=> b!6485437 m!7273792))

(assert (=> b!6485439 m!7273788))

(assert (=> b!6485439 m!7273788))

(assert (=> b!6485439 m!7273792))

(declare-fun m!7273794 () Bool)

(assert (=> bm!561293 m!7273794))

(declare-fun m!7273796 () Bool)

(assert (=> b!6485434 m!7273796))

(assert (=> d!2034496 m!7273794))

(declare-fun m!7273798 () Bool)

(assert (=> d!2034496 m!7273798))

(assert (=> b!6485435 m!7273784))

(assert (=> b!6485083 d!2034496))

(declare-fun d!2034502 () Bool)

(declare-fun choose!48114 ((InoxSet Context!11498) Int) (InoxSet Context!11498))

(assert (=> d!2034502 (= (flatMap!1870 z!1189 lambda!358932) (choose!48114 z!1189 lambda!358932))))

(declare-fun bs!1645305 () Bool)

(assert (= bs!1645305 d!2034502))

(declare-fun m!7273800 () Bool)

(assert (=> bs!1645305 m!7273800))

(assert (=> b!6485086 d!2034502))

(declare-fun d!2034504 () Bool)

(declare-fun nullableFct!2296 (Regex!16365) Bool)

(assert (=> d!2034504 (= (nullable!6358 (h!71719 (exprs!6249 (h!71720 zl!343)))) (nullableFct!2296 (h!71719 (exprs!6249 (h!71720 zl!343)))))))

(declare-fun bs!1645306 () Bool)

(assert (= bs!1645306 d!2034504))

(declare-fun m!7273802 () Bool)

(assert (=> bs!1645306 m!7273802))

(assert (=> b!6485086 d!2034504))

(declare-fun b!6485461 () Bool)

(declare-fun e!3930689 () (InoxSet Context!11498))

(declare-fun e!3930690 () (InoxSet Context!11498))

(assert (=> b!6485461 (= e!3930689 e!3930690)))

(declare-fun c!1188149 () Bool)

(assert (=> b!6485461 (= c!1188149 ((_ is Cons!65271) (exprs!6249 (Context!11499 (Cons!65271 (h!71719 (exprs!6249 (h!71720 zl!343))) (t!379021 (exprs!6249 (h!71720 zl!343))))))))))

(declare-fun d!2034506 () Bool)

(declare-fun c!1188150 () Bool)

(declare-fun e!3930688 () Bool)

(assert (=> d!2034506 (= c!1188150 e!3930688)))

(declare-fun res!2663498 () Bool)

(assert (=> d!2034506 (=> (not res!2663498) (not e!3930688))))

(assert (=> d!2034506 (= res!2663498 ((_ is Cons!65271) (exprs!6249 (Context!11499 (Cons!65271 (h!71719 (exprs!6249 (h!71720 zl!343))) (t!379021 (exprs!6249 (h!71720 zl!343))))))))))

(assert (=> d!2034506 (= (derivationStepZipperUp!1539 (Context!11499 (Cons!65271 (h!71719 (exprs!6249 (h!71720 zl!343))) (t!379021 (exprs!6249 (h!71720 zl!343))))) (h!71718 s!2326)) e!3930689)))

(declare-fun call!561301 () (InoxSet Context!11498))

(declare-fun b!6485462 () Bool)

(assert (=> b!6485462 (= e!3930689 ((_ map or) call!561301 (derivationStepZipperUp!1539 (Context!11499 (t!379021 (exprs!6249 (Context!11499 (Cons!65271 (h!71719 (exprs!6249 (h!71720 zl!343))) (t!379021 (exprs!6249 (h!71720 zl!343)))))))) (h!71718 s!2326))))))

(declare-fun b!6485463 () Bool)

(assert (=> b!6485463 (= e!3930690 call!561301)))

(declare-fun b!6485464 () Bool)

(assert (=> b!6485464 (= e!3930690 ((as const (Array Context!11498 Bool)) false))))

(declare-fun b!6485465 () Bool)

(assert (=> b!6485465 (= e!3930688 (nullable!6358 (h!71719 (exprs!6249 (Context!11499 (Cons!65271 (h!71719 (exprs!6249 (h!71720 zl!343))) (t!379021 (exprs!6249 (h!71720 zl!343)))))))))))

(declare-fun bm!561296 () Bool)

(assert (=> bm!561296 (= call!561301 (derivationStepZipperDown!1613 (h!71719 (exprs!6249 (Context!11499 (Cons!65271 (h!71719 (exprs!6249 (h!71720 zl!343))) (t!379021 (exprs!6249 (h!71720 zl!343))))))) (Context!11499 (t!379021 (exprs!6249 (Context!11499 (Cons!65271 (h!71719 (exprs!6249 (h!71720 zl!343))) (t!379021 (exprs!6249 (h!71720 zl!343)))))))) (h!71718 s!2326)))))

(assert (= (and d!2034506 res!2663498) b!6485465))

(assert (= (and d!2034506 c!1188150) b!6485462))

(assert (= (and d!2034506 (not c!1188150)) b!6485461))

(assert (= (and b!6485461 c!1188149) b!6485463))

(assert (= (and b!6485461 (not c!1188149)) b!6485464))

(assert (= (or b!6485462 b!6485463) bm!561296))

(declare-fun m!7273804 () Bool)

(assert (=> b!6485462 m!7273804))

(declare-fun m!7273806 () Bool)

(assert (=> b!6485465 m!7273806))

(declare-fun m!7273808 () Bool)

(assert (=> bm!561296 m!7273808))

(assert (=> b!6485086 d!2034506))

(declare-fun d!2034508 () Bool)

(declare-fun dynLambda!25925 (Int Context!11498) (InoxSet Context!11498))

(assert (=> d!2034508 (= (flatMap!1870 z!1189 lambda!358932) (dynLambda!25925 lambda!358932 (h!71720 zl!343)))))

(declare-fun lt!2388411 () Unit!158791)

(declare-fun choose!48116 ((InoxSet Context!11498) Context!11498 Int) Unit!158791)

(assert (=> d!2034508 (= lt!2388411 (choose!48116 z!1189 (h!71720 zl!343) lambda!358932))))

(assert (=> d!2034508 (= z!1189 (store ((as const (Array Context!11498 Bool)) false) (h!71720 zl!343) true))))

(assert (=> d!2034508 (= (lemmaFlatMapOnSingletonSet!1396 z!1189 (h!71720 zl!343) lambda!358932) lt!2388411)))

(declare-fun b_lambda!245573 () Bool)

(assert (=> (not b_lambda!245573) (not d!2034508)))

(declare-fun bs!1645307 () Bool)

(assert (= bs!1645307 d!2034508))

(assert (=> bs!1645307 m!7273464))

(declare-fun m!7273810 () Bool)

(assert (=> bs!1645307 m!7273810))

(declare-fun m!7273812 () Bool)

(assert (=> bs!1645307 m!7273812))

(declare-fun m!7273814 () Bool)

(assert (=> bs!1645307 m!7273814))

(assert (=> b!6485086 d!2034508))

(declare-fun b!6485470 () Bool)

(declare-fun e!3930694 () (InoxSet Context!11498))

(declare-fun e!3930695 () (InoxSet Context!11498))

(assert (=> b!6485470 (= e!3930694 e!3930695)))

(declare-fun c!1188151 () Bool)

(assert (=> b!6485470 (= c!1188151 ((_ is Cons!65271) (exprs!6249 lt!2388300)))))

(declare-fun d!2034510 () Bool)

(declare-fun c!1188152 () Bool)

(declare-fun e!3930693 () Bool)

(assert (=> d!2034510 (= c!1188152 e!3930693)))

(declare-fun res!2663503 () Bool)

(assert (=> d!2034510 (=> (not res!2663503) (not e!3930693))))

(assert (=> d!2034510 (= res!2663503 ((_ is Cons!65271) (exprs!6249 lt!2388300)))))

(assert (=> d!2034510 (= (derivationStepZipperUp!1539 lt!2388300 (h!71718 s!2326)) e!3930694)))

(declare-fun call!561302 () (InoxSet Context!11498))

(declare-fun b!6485471 () Bool)

(assert (=> b!6485471 (= e!3930694 ((_ map or) call!561302 (derivationStepZipperUp!1539 (Context!11499 (t!379021 (exprs!6249 lt!2388300))) (h!71718 s!2326))))))

(declare-fun b!6485472 () Bool)

(assert (=> b!6485472 (= e!3930695 call!561302)))

(declare-fun b!6485473 () Bool)

(assert (=> b!6485473 (= e!3930695 ((as const (Array Context!11498 Bool)) false))))

(declare-fun b!6485474 () Bool)

(assert (=> b!6485474 (= e!3930693 (nullable!6358 (h!71719 (exprs!6249 lt!2388300))))))

(declare-fun bm!561297 () Bool)

(assert (=> bm!561297 (= call!561302 (derivationStepZipperDown!1613 (h!71719 (exprs!6249 lt!2388300)) (Context!11499 (t!379021 (exprs!6249 lt!2388300))) (h!71718 s!2326)))))

(assert (= (and d!2034510 res!2663503) b!6485474))

(assert (= (and d!2034510 c!1188152) b!6485471))

(assert (= (and d!2034510 (not c!1188152)) b!6485470))

(assert (= (and b!6485470 c!1188151) b!6485472))

(assert (= (and b!6485470 (not c!1188151)) b!6485473))

(assert (= (or b!6485471 b!6485472) bm!561297))

(declare-fun m!7273816 () Bool)

(assert (=> b!6485471 m!7273816))

(declare-fun m!7273818 () Bool)

(assert (=> b!6485474 m!7273818))

(declare-fun m!7273820 () Bool)

(assert (=> bm!561297 m!7273820))

(assert (=> b!6485086 d!2034510))

(declare-fun bm!561310 () Bool)

(declare-fun call!561316 () List!65395)

(declare-fun call!561319 () List!65395)

(assert (=> bm!561310 (= call!561316 call!561319)))

(declare-fun b!6485509 () Bool)

(declare-fun e!3930715 () (InoxSet Context!11498))

(declare-fun e!3930719 () (InoxSet Context!11498))

(assert (=> b!6485509 (= e!3930715 e!3930719)))

(declare-fun c!1188166 () Bool)

(assert (=> b!6485509 (= c!1188166 ((_ is Union!16365) (h!71719 (exprs!6249 (h!71720 zl!343)))))))

(declare-fun b!6485510 () Bool)

(declare-fun e!3930714 () (InoxSet Context!11498))

(declare-fun call!561315 () (InoxSet Context!11498))

(declare-fun call!561318 () (InoxSet Context!11498))

(assert (=> b!6485510 (= e!3930714 ((_ map or) call!561315 call!561318))))

(declare-fun b!6485511 () Bool)

(assert (=> b!6485511 (= e!3930715 (store ((as const (Array Context!11498 Bool)) false) lt!2388300 true))))

(declare-fun d!2034512 () Bool)

(declare-fun c!1188167 () Bool)

(assert (=> d!2034512 (= c!1188167 (and ((_ is ElementMatch!16365) (h!71719 (exprs!6249 (h!71720 zl!343)))) (= (c!1188049 (h!71719 (exprs!6249 (h!71720 zl!343)))) (h!71718 s!2326))))))

(assert (=> d!2034512 (= (derivationStepZipperDown!1613 (h!71719 (exprs!6249 (h!71720 zl!343))) lt!2388300 (h!71718 s!2326)) e!3930715)))

(declare-fun b!6485512 () Bool)

(declare-fun e!3930716 () (InoxSet Context!11498))

(assert (=> b!6485512 (= e!3930714 e!3930716)))

(declare-fun c!1188169 () Bool)

(assert (=> b!6485512 (= c!1188169 ((_ is Concat!25210) (h!71719 (exprs!6249 (h!71720 zl!343)))))))

(declare-fun b!6485513 () Bool)

(declare-fun e!3930718 () (InoxSet Context!11498))

(assert (=> b!6485513 (= e!3930718 ((as const (Array Context!11498 Bool)) false))))

(declare-fun b!6485514 () Bool)

(declare-fun call!561317 () (InoxSet Context!11498))

(assert (=> b!6485514 (= e!3930716 call!561317)))

(declare-fun c!1188170 () Bool)

(declare-fun bm!561311 () Bool)

(declare-fun $colon$colon!2218 (List!65395 Regex!16365) List!65395)

(assert (=> bm!561311 (= call!561319 ($colon$colon!2218 (exprs!6249 lt!2388300) (ite (or c!1188170 c!1188169) (regTwo!33242 (h!71719 (exprs!6249 (h!71720 zl!343)))) (h!71719 (exprs!6249 (h!71720 zl!343))))))))

(declare-fun b!6485515 () Bool)

(declare-fun e!3930717 () Bool)

(assert (=> b!6485515 (= c!1188170 e!3930717)))

(declare-fun res!2663512 () Bool)

(assert (=> b!6485515 (=> (not res!2663512) (not e!3930717))))

(assert (=> b!6485515 (= res!2663512 ((_ is Concat!25210) (h!71719 (exprs!6249 (h!71720 zl!343)))))))

(assert (=> b!6485515 (= e!3930719 e!3930714)))

(declare-fun bm!561312 () Bool)

(declare-fun call!561320 () (InoxSet Context!11498))

(assert (=> bm!561312 (= call!561318 call!561320)))

(declare-fun b!6485516 () Bool)

(assert (=> b!6485516 (= e!3930719 ((_ map or) call!561315 call!561320))))

(declare-fun bm!561313 () Bool)

(assert (=> bm!561313 (= call!561320 (derivationStepZipperDown!1613 (ite c!1188166 (regTwo!33243 (h!71719 (exprs!6249 (h!71720 zl!343)))) (ite c!1188170 (regTwo!33242 (h!71719 (exprs!6249 (h!71720 zl!343)))) (ite c!1188169 (regOne!33242 (h!71719 (exprs!6249 (h!71720 zl!343)))) (reg!16694 (h!71719 (exprs!6249 (h!71720 zl!343))))))) (ite (or c!1188166 c!1188170) lt!2388300 (Context!11499 call!561316)) (h!71718 s!2326)))))

(declare-fun bm!561314 () Bool)

(assert (=> bm!561314 (= call!561317 call!561318)))

(declare-fun bm!561315 () Bool)

(assert (=> bm!561315 (= call!561315 (derivationStepZipperDown!1613 (ite c!1188166 (regOne!33243 (h!71719 (exprs!6249 (h!71720 zl!343)))) (regOne!33242 (h!71719 (exprs!6249 (h!71720 zl!343))))) (ite c!1188166 lt!2388300 (Context!11499 call!561319)) (h!71718 s!2326)))))

(declare-fun b!6485517 () Bool)

(assert (=> b!6485517 (= e!3930717 (nullable!6358 (regOne!33242 (h!71719 (exprs!6249 (h!71720 zl!343))))))))

(declare-fun b!6485518 () Bool)

(assert (=> b!6485518 (= e!3930718 call!561317)))

(declare-fun b!6485519 () Bool)

(declare-fun c!1188168 () Bool)

(assert (=> b!6485519 (= c!1188168 ((_ is Star!16365) (h!71719 (exprs!6249 (h!71720 zl!343)))))))

(assert (=> b!6485519 (= e!3930716 e!3930718)))

(assert (= (and d!2034512 c!1188167) b!6485511))

(assert (= (and d!2034512 (not c!1188167)) b!6485509))

(assert (= (and b!6485509 c!1188166) b!6485516))

(assert (= (and b!6485509 (not c!1188166)) b!6485515))

(assert (= (and b!6485515 res!2663512) b!6485517))

(assert (= (and b!6485515 c!1188170) b!6485510))

(assert (= (and b!6485515 (not c!1188170)) b!6485512))

(assert (= (and b!6485512 c!1188169) b!6485514))

(assert (= (and b!6485512 (not c!1188169)) b!6485519))

(assert (= (and b!6485519 c!1188168) b!6485518))

(assert (= (and b!6485519 (not c!1188168)) b!6485513))

(assert (= (or b!6485514 b!6485518) bm!561310))

(assert (= (or b!6485514 b!6485518) bm!561314))

(assert (= (or b!6485510 bm!561310) bm!561311))

(assert (= (or b!6485510 bm!561314) bm!561312))

(assert (= (or b!6485516 bm!561312) bm!561313))

(assert (= (or b!6485516 b!6485510) bm!561315))

(declare-fun m!7273842 () Bool)

(assert (=> bm!561315 m!7273842))

(declare-fun m!7273844 () Bool)

(assert (=> b!6485517 m!7273844))

(declare-fun m!7273846 () Bool)

(assert (=> b!6485511 m!7273846))

(declare-fun m!7273848 () Bool)

(assert (=> bm!561313 m!7273848))

(declare-fun m!7273850 () Bool)

(assert (=> bm!561311 m!7273850))

(assert (=> b!6485086 d!2034512))

(declare-fun b!6485520 () Bool)

(declare-fun e!3930721 () (InoxSet Context!11498))

(declare-fun e!3930722 () (InoxSet Context!11498))

(assert (=> b!6485520 (= e!3930721 e!3930722)))

(declare-fun c!1188171 () Bool)

(assert (=> b!6485520 (= c!1188171 ((_ is Cons!65271) (exprs!6249 (h!71720 zl!343))))))

(declare-fun d!2034518 () Bool)

(declare-fun c!1188172 () Bool)

(declare-fun e!3930720 () Bool)

(assert (=> d!2034518 (= c!1188172 e!3930720)))

(declare-fun res!2663513 () Bool)

(assert (=> d!2034518 (=> (not res!2663513) (not e!3930720))))

(assert (=> d!2034518 (= res!2663513 ((_ is Cons!65271) (exprs!6249 (h!71720 zl!343))))))

(assert (=> d!2034518 (= (derivationStepZipperUp!1539 (h!71720 zl!343) (h!71718 s!2326)) e!3930721)))

(declare-fun b!6485521 () Bool)

(declare-fun call!561321 () (InoxSet Context!11498))

(assert (=> b!6485521 (= e!3930721 ((_ map or) call!561321 (derivationStepZipperUp!1539 (Context!11499 (t!379021 (exprs!6249 (h!71720 zl!343)))) (h!71718 s!2326))))))

(declare-fun b!6485522 () Bool)

(assert (=> b!6485522 (= e!3930722 call!561321)))

(declare-fun b!6485523 () Bool)

(assert (=> b!6485523 (= e!3930722 ((as const (Array Context!11498 Bool)) false))))

(declare-fun b!6485524 () Bool)

(assert (=> b!6485524 (= e!3930720 (nullable!6358 (h!71719 (exprs!6249 (h!71720 zl!343)))))))

(declare-fun bm!561316 () Bool)

(assert (=> bm!561316 (= call!561321 (derivationStepZipperDown!1613 (h!71719 (exprs!6249 (h!71720 zl!343))) (Context!11499 (t!379021 (exprs!6249 (h!71720 zl!343)))) (h!71718 s!2326)))))

(assert (= (and d!2034518 res!2663513) b!6485524))

(assert (= (and d!2034518 c!1188172) b!6485521))

(assert (= (and d!2034518 (not c!1188172)) b!6485520))

(assert (= (and b!6485520 c!1188171) b!6485522))

(assert (= (and b!6485520 (not c!1188171)) b!6485523))

(assert (= (or b!6485521 b!6485522) bm!561316))

(declare-fun m!7273852 () Bool)

(assert (=> b!6485521 m!7273852))

(assert (=> b!6485524 m!7273462))

(declare-fun m!7273854 () Bool)

(assert (=> bm!561316 m!7273854))

(assert (=> b!6485086 d!2034518))

(declare-fun d!2034520 () Bool)

(assert (=> d!2034520 (= (flatMap!1870 lt!2388319 lambda!358932) (choose!48114 lt!2388319 lambda!358932))))

(declare-fun bs!1645318 () Bool)

(assert (= bs!1645318 d!2034520))

(declare-fun m!7273856 () Bool)

(assert (=> bs!1645318 m!7273856))

(assert (=> b!6485087 d!2034520))

(declare-fun d!2034522 () Bool)

(assert (=> d!2034522 (= (flatMap!1870 lt!2388296 lambda!358932) (dynLambda!25925 lambda!358932 lt!2388315))))

(declare-fun lt!2388415 () Unit!158791)

(assert (=> d!2034522 (= lt!2388415 (choose!48116 lt!2388296 lt!2388315 lambda!358932))))

(assert (=> d!2034522 (= lt!2388296 (store ((as const (Array Context!11498 Bool)) false) lt!2388315 true))))

(assert (=> d!2034522 (= (lemmaFlatMapOnSingletonSet!1396 lt!2388296 lt!2388315 lambda!358932) lt!2388415)))

(declare-fun b_lambda!245575 () Bool)

(assert (=> (not b_lambda!245575) (not d!2034522)))

(declare-fun bs!1645319 () Bool)

(assert (= bs!1645319 d!2034522))

(assert (=> bs!1645319 m!7273412))

(declare-fun m!7273858 () Bool)

(assert (=> bs!1645319 m!7273858))

(declare-fun m!7273860 () Bool)

(assert (=> bs!1645319 m!7273860))

(assert (=> bs!1645319 m!7273416))

(assert (=> b!6485087 d!2034522))

(declare-fun d!2034524 () Bool)

(assert (=> d!2034524 (= (flatMap!1870 lt!2388319 lambda!358932) (dynLambda!25925 lambda!358932 lt!2388330))))

(declare-fun lt!2388416 () Unit!158791)

(assert (=> d!2034524 (= lt!2388416 (choose!48116 lt!2388319 lt!2388330 lambda!358932))))

(assert (=> d!2034524 (= lt!2388319 (store ((as const (Array Context!11498 Bool)) false) lt!2388330 true))))

(assert (=> d!2034524 (= (lemmaFlatMapOnSingletonSet!1396 lt!2388319 lt!2388330 lambda!358932) lt!2388416)))

(declare-fun b_lambda!245577 () Bool)

(assert (=> (not b_lambda!245577) (not d!2034524)))

(declare-fun bs!1645320 () Bool)

(assert (= bs!1645320 d!2034524))

(assert (=> bs!1645320 m!7273406))

(declare-fun m!7273862 () Bool)

(assert (=> bs!1645320 m!7273862))

(declare-fun m!7273864 () Bool)

(assert (=> bs!1645320 m!7273864))

(assert (=> bs!1645320 m!7273402))

(assert (=> b!6485087 d!2034524))

(declare-fun d!2034526 () Bool)

(declare-fun lt!2388419 () Regex!16365)

(assert (=> d!2034526 (validRegex!8101 lt!2388419)))

(assert (=> d!2034526 (= lt!2388419 (generalisedUnion!2209 (unfocusZipperList!1786 lt!2388302)))))

(assert (=> d!2034526 (= (unfocusZipper!2107 lt!2388302) lt!2388419)))

(declare-fun bs!1645321 () Bool)

(assert (= bs!1645321 d!2034526))

(declare-fun m!7273866 () Bool)

(assert (=> bs!1645321 m!7273866))

(declare-fun m!7273868 () Bool)

(assert (=> bs!1645321 m!7273868))

(assert (=> bs!1645321 m!7273868))

(declare-fun m!7273870 () Bool)

(assert (=> bs!1645321 m!7273870))

(assert (=> b!6485087 d!2034526))

(declare-fun d!2034528 () Bool)

(assert (=> d!2034528 (= (flatMap!1870 lt!2388296 lambda!358932) (choose!48114 lt!2388296 lambda!358932))))

(declare-fun bs!1645322 () Bool)

(assert (= bs!1645322 d!2034528))

(declare-fun m!7273872 () Bool)

(assert (=> bs!1645322 m!7273872))

(assert (=> b!6485087 d!2034528))

(declare-fun b!6485525 () Bool)

(declare-fun e!3930724 () (InoxSet Context!11498))

(declare-fun e!3930725 () (InoxSet Context!11498))

(assert (=> b!6485525 (= e!3930724 e!3930725)))

(declare-fun c!1188173 () Bool)

(assert (=> b!6485525 (= c!1188173 ((_ is Cons!65271) (exprs!6249 lt!2388315)))))

(declare-fun d!2034530 () Bool)

(declare-fun c!1188174 () Bool)

(declare-fun e!3930723 () Bool)

(assert (=> d!2034530 (= c!1188174 e!3930723)))

(declare-fun res!2663514 () Bool)

(assert (=> d!2034530 (=> (not res!2663514) (not e!3930723))))

(assert (=> d!2034530 (= res!2663514 ((_ is Cons!65271) (exprs!6249 lt!2388315)))))

(assert (=> d!2034530 (= (derivationStepZipperUp!1539 lt!2388315 (h!71718 s!2326)) e!3930724)))

(declare-fun call!561322 () (InoxSet Context!11498))

(declare-fun b!6485526 () Bool)

(assert (=> b!6485526 (= e!3930724 ((_ map or) call!561322 (derivationStepZipperUp!1539 (Context!11499 (t!379021 (exprs!6249 lt!2388315))) (h!71718 s!2326))))))

(declare-fun b!6485527 () Bool)

(assert (=> b!6485527 (= e!3930725 call!561322)))

(declare-fun b!6485528 () Bool)

(assert (=> b!6485528 (= e!3930725 ((as const (Array Context!11498 Bool)) false))))

(declare-fun b!6485529 () Bool)

(assert (=> b!6485529 (= e!3930723 (nullable!6358 (h!71719 (exprs!6249 lt!2388315))))))

(declare-fun bm!561317 () Bool)

(assert (=> bm!561317 (= call!561322 (derivationStepZipperDown!1613 (h!71719 (exprs!6249 lt!2388315)) (Context!11499 (t!379021 (exprs!6249 lt!2388315))) (h!71718 s!2326)))))

(assert (= (and d!2034530 res!2663514) b!6485529))

(assert (= (and d!2034530 c!1188174) b!6485526))

(assert (= (and d!2034530 (not c!1188174)) b!6485525))

(assert (= (and b!6485525 c!1188173) b!6485527))

(assert (= (and b!6485525 (not c!1188173)) b!6485528))

(assert (= (or b!6485526 b!6485527) bm!561317))

(declare-fun m!7273874 () Bool)

(assert (=> b!6485526 m!7273874))

(declare-fun m!7273876 () Bool)

(assert (=> b!6485529 m!7273876))

(declare-fun m!7273878 () Bool)

(assert (=> bm!561317 m!7273878))

(assert (=> b!6485087 d!2034530))

(declare-fun b!6485530 () Bool)

(declare-fun e!3930727 () (InoxSet Context!11498))

(declare-fun e!3930728 () (InoxSet Context!11498))

(assert (=> b!6485530 (= e!3930727 e!3930728)))

(declare-fun c!1188175 () Bool)

(assert (=> b!6485530 (= c!1188175 ((_ is Cons!65271) (exprs!6249 lt!2388330)))))

(declare-fun d!2034532 () Bool)

(declare-fun c!1188176 () Bool)

(declare-fun e!3930726 () Bool)

(assert (=> d!2034532 (= c!1188176 e!3930726)))

(declare-fun res!2663515 () Bool)

(assert (=> d!2034532 (=> (not res!2663515) (not e!3930726))))

(assert (=> d!2034532 (= res!2663515 ((_ is Cons!65271) (exprs!6249 lt!2388330)))))

(assert (=> d!2034532 (= (derivationStepZipperUp!1539 lt!2388330 (h!71718 s!2326)) e!3930727)))

(declare-fun call!561323 () (InoxSet Context!11498))

(declare-fun b!6485531 () Bool)

(assert (=> b!6485531 (= e!3930727 ((_ map or) call!561323 (derivationStepZipperUp!1539 (Context!11499 (t!379021 (exprs!6249 lt!2388330))) (h!71718 s!2326))))))

(declare-fun b!6485532 () Bool)

(assert (=> b!6485532 (= e!3930728 call!561323)))

(declare-fun b!6485533 () Bool)

(assert (=> b!6485533 (= e!3930728 ((as const (Array Context!11498 Bool)) false))))

(declare-fun b!6485534 () Bool)

(assert (=> b!6485534 (= e!3930726 (nullable!6358 (h!71719 (exprs!6249 lt!2388330))))))

(declare-fun bm!561318 () Bool)

(assert (=> bm!561318 (= call!561323 (derivationStepZipperDown!1613 (h!71719 (exprs!6249 lt!2388330)) (Context!11499 (t!379021 (exprs!6249 lt!2388330))) (h!71718 s!2326)))))

(assert (= (and d!2034532 res!2663515) b!6485534))

(assert (= (and d!2034532 c!1188176) b!6485531))

(assert (= (and d!2034532 (not c!1188176)) b!6485530))

(assert (= (and b!6485530 c!1188175) b!6485532))

(assert (= (and b!6485530 (not c!1188175)) b!6485533))

(assert (= (or b!6485531 b!6485532) bm!561318))

(declare-fun m!7273880 () Bool)

(assert (=> b!6485531 m!7273880))

(declare-fun m!7273882 () Bool)

(assert (=> b!6485534 m!7273882))

(declare-fun m!7273884 () Bool)

(assert (=> bm!561318 m!7273884))

(assert (=> b!6485087 d!2034532))

(declare-fun bs!1645323 () Bool)

(declare-fun d!2034534 () Bool)

(assert (= bs!1645323 (and d!2034534 b!6485097)))

(declare-fun lambda!358976 () Int)

(assert (=> bs!1645323 (not (= lambda!358976 lambda!358931))))

(declare-fun bs!1645324 () Bool)

(assert (= bs!1645324 (and d!2034534 b!6485065)))

(assert (=> bs!1645324 (not (= lambda!358976 lambda!358936))))

(declare-fun bs!1645325 () Bool)

(assert (= bs!1645325 (and d!2034534 b!6485058)))

(assert (=> bs!1645325 (not (= lambda!358976 lambda!358934))))

(assert (=> bs!1645325 (= (and (= (_1!36647 lt!2388334) s!2326) (= (reg!16694 (regOne!33242 r!7292)) lt!2388338) (= lt!2388338 (regTwo!33242 r!7292))) (= lambda!358976 lambda!358933))))

(assert (=> bs!1645323 (= (and (= (_1!36647 lt!2388334) s!2326) (= (reg!16694 (regOne!33242 r!7292)) (regOne!33242 r!7292)) (= lt!2388338 (regTwo!33242 r!7292))) (= lambda!358976 lambda!358930))))

(assert (=> bs!1645324 (= lambda!358976 lambda!358935)))

(assert (=> bs!1645324 (not (= lambda!358976 lambda!358937))))

(assert (=> d!2034534 true))

(assert (=> d!2034534 true))

(assert (=> d!2034534 true))

(assert (=> d!2034534 (= (isDefined!12959 (findConcatSeparation!2670 (reg!16694 (regOne!33242 r!7292)) lt!2388338 Nil!65270 (_1!36647 lt!2388334) (_1!36647 lt!2388334))) (Exists!3435 lambda!358976))))

(declare-fun lt!2388431 () Unit!158791)

(declare-fun choose!48121 (Regex!16365 Regex!16365 List!65394) Unit!158791)

(assert (=> d!2034534 (= lt!2388431 (choose!48121 (reg!16694 (regOne!33242 r!7292)) lt!2388338 (_1!36647 lt!2388334)))))

(assert (=> d!2034534 (validRegex!8101 (reg!16694 (regOne!33242 r!7292)))))

(assert (=> d!2034534 (= (lemmaFindConcatSeparationEquivalentToExists!2434 (reg!16694 (regOne!33242 r!7292)) lt!2388338 (_1!36647 lt!2388334)) lt!2388431)))

(declare-fun bs!1645326 () Bool)

(assert (= bs!1645326 d!2034534))

(declare-fun m!7273948 () Bool)

(assert (=> bs!1645326 m!7273948))

(assert (=> bs!1645326 m!7273428))

(declare-fun m!7273950 () Bool)

(assert (=> bs!1645326 m!7273950))

(declare-fun m!7273952 () Bool)

(assert (=> bs!1645326 m!7273952))

(declare-fun m!7273954 () Bool)

(assert (=> bs!1645326 m!7273954))

(assert (=> bs!1645326 m!7273428))

(assert (=> b!6485065 d!2034534))

(declare-fun d!2034546 () Bool)

(declare-fun choose!48122 (Int) Bool)

(assert (=> d!2034546 (= (Exists!3435 lambda!358937) (choose!48122 lambda!358937))))

(declare-fun bs!1645327 () Bool)

(assert (= bs!1645327 d!2034546))

(declare-fun m!7273962 () Bool)

(assert (=> bs!1645327 m!7273962))

(assert (=> b!6485065 d!2034546))

(declare-fun bs!1645329 () Bool)

(declare-fun d!2034550 () Bool)

(assert (= bs!1645329 (and d!2034550 b!6485097)))

(declare-fun lambda!358981 () Int)

(assert (=> bs!1645329 (not (= lambda!358981 lambda!358931))))

(declare-fun bs!1645331 () Bool)

(assert (= bs!1645331 (and d!2034550 b!6485065)))

(assert (=> bs!1645331 (not (= lambda!358981 lambda!358936))))

(declare-fun bs!1645333 () Bool)

(assert (= bs!1645333 (and d!2034550 b!6485058)))

(assert (=> bs!1645333 (not (= lambda!358981 lambda!358934))))

(assert (=> bs!1645333 (= (and (= (_1!36647 lt!2388334) s!2326) (= (reg!16694 (regOne!33242 r!7292)) lt!2388338) (= (Star!16365 (reg!16694 (regOne!33242 r!7292))) (regTwo!33242 r!7292))) (= lambda!358981 lambda!358933))))

(declare-fun bs!1645335 () Bool)

(assert (= bs!1645335 (and d!2034550 d!2034534)))

(assert (=> bs!1645335 (= (= (Star!16365 (reg!16694 (regOne!33242 r!7292))) lt!2388338) (= lambda!358981 lambda!358976))))

(assert (=> bs!1645329 (= (and (= (_1!36647 lt!2388334) s!2326) (= (reg!16694 (regOne!33242 r!7292)) (regOne!33242 r!7292)) (= (Star!16365 (reg!16694 (regOne!33242 r!7292))) (regTwo!33242 r!7292))) (= lambda!358981 lambda!358930))))

(assert (=> bs!1645331 (= (= (Star!16365 (reg!16694 (regOne!33242 r!7292))) lt!2388338) (= lambda!358981 lambda!358935))))

(assert (=> bs!1645331 (not (= lambda!358981 lambda!358937))))

(assert (=> d!2034550 true))

(assert (=> d!2034550 true))

(declare-fun lambda!358983 () Int)

(assert (=> bs!1645329 (not (= lambda!358983 lambda!358931))))

(assert (=> bs!1645331 (= (= (Star!16365 (reg!16694 (regOne!33242 r!7292))) lt!2388338) (= lambda!358983 lambda!358936))))

(assert (=> bs!1645333 (not (= lambda!358983 lambda!358934))))

(assert (=> bs!1645333 (not (= lambda!358983 lambda!358933))))

(declare-fun bs!1645343 () Bool)

(assert (= bs!1645343 d!2034550))

(assert (=> bs!1645343 (not (= lambda!358983 lambda!358981))))

(assert (=> bs!1645335 (not (= lambda!358983 lambda!358976))))

(assert (=> bs!1645329 (not (= lambda!358983 lambda!358930))))

(assert (=> bs!1645331 (not (= lambda!358983 lambda!358935))))

(assert (=> bs!1645331 (not (= lambda!358983 lambda!358937))))

(assert (=> d!2034550 true))

(assert (=> d!2034550 true))

(assert (=> d!2034550 (= (Exists!3435 lambda!358981) (Exists!3435 lambda!358983))))

(declare-fun lt!2388443 () Unit!158791)

(declare-fun choose!48123 (Regex!16365 List!65394) Unit!158791)

(assert (=> d!2034550 (= lt!2388443 (choose!48123 (reg!16694 (regOne!33242 r!7292)) (_1!36647 lt!2388334)))))

(assert (=> d!2034550 (validRegex!8101 (reg!16694 (regOne!33242 r!7292)))))

(assert (=> d!2034550 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!656 (reg!16694 (regOne!33242 r!7292)) (_1!36647 lt!2388334)) lt!2388443)))

(declare-fun m!7274010 () Bool)

(assert (=> bs!1645343 m!7274010))

(declare-fun m!7274012 () Bool)

(assert (=> bs!1645343 m!7274012))

(declare-fun m!7274014 () Bool)

(assert (=> bs!1645343 m!7274014))

(assert (=> bs!1645343 m!7273954))

(assert (=> b!6485065 d!2034550))

(declare-fun d!2034562 () Bool)

(assert (=> d!2034562 (= (Exists!3435 lambda!358935) (choose!48122 lambda!358935))))

(declare-fun bs!1645345 () Bool)

(assert (= bs!1645345 d!2034562))

(declare-fun m!7274016 () Bool)

(assert (=> bs!1645345 m!7274016))

(assert (=> b!6485065 d!2034562))

(declare-fun bs!1645371 () Bool)

(declare-fun b!6485711 () Bool)

(assert (= bs!1645371 (and b!6485711 b!6485097)))

(declare-fun lambda!358991 () Int)

(assert (=> bs!1645371 (not (= lambda!358991 lambda!358931))))

(declare-fun bs!1645372 () Bool)

(assert (= bs!1645372 (and b!6485711 b!6485065)))

(assert (=> bs!1645372 (= (= (reg!16694 lt!2388338) (reg!16694 (regOne!33242 r!7292))) (= lambda!358991 lambda!358936))))

(declare-fun bs!1645373 () Bool)

(assert (= bs!1645373 (and b!6485711 d!2034550)))

(assert (=> bs!1645373 (= (and (= (reg!16694 lt!2388338) (reg!16694 (regOne!33242 r!7292))) (= lt!2388338 (Star!16365 (reg!16694 (regOne!33242 r!7292))))) (= lambda!358991 lambda!358983))))

(declare-fun bs!1645374 () Bool)

(assert (= bs!1645374 (and b!6485711 b!6485058)))

(assert (=> bs!1645374 (not (= lambda!358991 lambda!358934))))

(assert (=> bs!1645374 (not (= lambda!358991 lambda!358933))))

(assert (=> bs!1645373 (not (= lambda!358991 lambda!358981))))

(declare-fun bs!1645375 () Bool)

(assert (= bs!1645375 (and b!6485711 d!2034534)))

(assert (=> bs!1645375 (not (= lambda!358991 lambda!358976))))

(assert (=> bs!1645371 (not (= lambda!358991 lambda!358930))))

(assert (=> bs!1645372 (not (= lambda!358991 lambda!358935))))

(assert (=> bs!1645372 (not (= lambda!358991 lambda!358937))))

(assert (=> b!6485711 true))

(assert (=> b!6485711 true))

(declare-fun bs!1645376 () Bool)

(declare-fun b!6485710 () Bool)

(assert (= bs!1645376 (and b!6485710 b!6485097)))

(declare-fun lambda!358992 () Int)

(assert (=> bs!1645376 (= (and (= (_1!36647 lt!2388334) s!2326) (= (regOne!33242 lt!2388338) (regOne!33242 r!7292)) (= (regTwo!33242 lt!2388338) (regTwo!33242 r!7292))) (= lambda!358992 lambda!358931))))

(declare-fun bs!1645377 () Bool)

(assert (= bs!1645377 (and b!6485710 b!6485065)))

(assert (=> bs!1645377 (not (= lambda!358992 lambda!358936))))

(declare-fun bs!1645378 () Bool)

(assert (= bs!1645378 (and b!6485710 b!6485711)))

(assert (=> bs!1645378 (not (= lambda!358992 lambda!358991))))

(declare-fun bs!1645379 () Bool)

(assert (= bs!1645379 (and b!6485710 d!2034550)))

(assert (=> bs!1645379 (not (= lambda!358992 lambda!358983))))

(declare-fun bs!1645380 () Bool)

(assert (= bs!1645380 (and b!6485710 b!6485058)))

(assert (=> bs!1645380 (= (and (= (_1!36647 lt!2388334) s!2326) (= (regOne!33242 lt!2388338) lt!2388338) (= (regTwo!33242 lt!2388338) (regTwo!33242 r!7292))) (= lambda!358992 lambda!358934))))

(assert (=> bs!1645380 (not (= lambda!358992 lambda!358933))))

(assert (=> bs!1645379 (not (= lambda!358992 lambda!358981))))

(declare-fun bs!1645381 () Bool)

(assert (= bs!1645381 (and b!6485710 d!2034534)))

(assert (=> bs!1645381 (not (= lambda!358992 lambda!358976))))

(assert (=> bs!1645376 (not (= lambda!358992 lambda!358930))))

(assert (=> bs!1645377 (not (= lambda!358992 lambda!358935))))

(assert (=> bs!1645377 (= (and (= (regOne!33242 lt!2388338) (reg!16694 (regOne!33242 r!7292))) (= (regTwo!33242 lt!2388338) lt!2388338)) (= lambda!358992 lambda!358937))))

(assert (=> b!6485710 true))

(assert (=> b!6485710 true))

(declare-fun b!6485705 () Bool)

(declare-fun c!1188219 () Bool)

(assert (=> b!6485705 (= c!1188219 ((_ is ElementMatch!16365) lt!2388338))))

(declare-fun e!3930833 () Bool)

(declare-fun e!3930834 () Bool)

(assert (=> b!6485705 (= e!3930833 e!3930834)))

(declare-fun bm!561342 () Bool)

(declare-fun c!1188220 () Bool)

(declare-fun call!561347 () Bool)

(assert (=> bm!561342 (= call!561347 (Exists!3435 (ite c!1188220 lambda!358991 lambda!358992)))))

(declare-fun b!6485706 () Bool)

(declare-fun c!1188221 () Bool)

(assert (=> b!6485706 (= c!1188221 ((_ is Union!16365) lt!2388338))))

(declare-fun e!3930829 () Bool)

(assert (=> b!6485706 (= e!3930834 e!3930829)))

(declare-fun b!6485707 () Bool)

(declare-fun e!3930831 () Bool)

(assert (=> b!6485707 (= e!3930831 e!3930833)))

(declare-fun res!2663603 () Bool)

(assert (=> b!6485707 (= res!2663603 (not ((_ is EmptyLang!16365) lt!2388338)))))

(assert (=> b!6485707 (=> (not res!2663603) (not e!3930833))))

(declare-fun b!6485708 () Bool)

(declare-fun e!3930832 () Bool)

(assert (=> b!6485708 (= e!3930829 e!3930832)))

(declare-fun res!2663604 () Bool)

(assert (=> b!6485708 (= res!2663604 (matchRSpec!3466 (regOne!33243 lt!2388338) (_1!36647 lt!2388334)))))

(assert (=> b!6485708 (=> res!2663604 e!3930832)))

(declare-fun b!6485709 () Bool)

(declare-fun e!3930828 () Bool)

(assert (=> b!6485709 (= e!3930829 e!3930828)))

(assert (=> b!6485709 (= c!1188220 ((_ is Star!16365) lt!2388338))))

(assert (=> b!6485710 (= e!3930828 call!561347)))

(declare-fun e!3930830 () Bool)

(assert (=> b!6485711 (= e!3930830 call!561347)))

(declare-fun b!6485713 () Bool)

(assert (=> b!6485713 (= e!3930832 (matchRSpec!3466 (regTwo!33243 lt!2388338) (_1!36647 lt!2388334)))))

(declare-fun b!6485714 () Bool)

(declare-fun res!2663602 () Bool)

(assert (=> b!6485714 (=> res!2663602 e!3930830)))

(declare-fun call!561348 () Bool)

(assert (=> b!6485714 (= res!2663602 call!561348)))

(assert (=> b!6485714 (= e!3930828 e!3930830)))

(declare-fun b!6485712 () Bool)

(assert (=> b!6485712 (= e!3930834 (= (_1!36647 lt!2388334) (Cons!65270 (c!1188049 lt!2388338) Nil!65270)))))

(declare-fun d!2034564 () Bool)

(declare-fun c!1188222 () Bool)

(assert (=> d!2034564 (= c!1188222 ((_ is EmptyExpr!16365) lt!2388338))))

(assert (=> d!2034564 (= (matchRSpec!3466 lt!2388338 (_1!36647 lt!2388334)) e!3930831)))

(declare-fun b!6485715 () Bool)

(assert (=> b!6485715 (= e!3930831 call!561348)))

(declare-fun bm!561343 () Bool)

(assert (=> bm!561343 (= call!561348 (isEmpty!37460 (_1!36647 lt!2388334)))))

(assert (= (and d!2034564 c!1188222) b!6485715))

(assert (= (and d!2034564 (not c!1188222)) b!6485707))

(assert (= (and b!6485707 res!2663603) b!6485705))

(assert (= (and b!6485705 c!1188219) b!6485712))

(assert (= (and b!6485705 (not c!1188219)) b!6485706))

(assert (= (and b!6485706 c!1188221) b!6485708))

(assert (= (and b!6485706 (not c!1188221)) b!6485709))

(assert (= (and b!6485708 (not res!2663604)) b!6485713))

(assert (= (and b!6485709 c!1188220) b!6485714))

(assert (= (and b!6485709 (not c!1188220)) b!6485710))

(assert (= (and b!6485714 (not res!2663602)) b!6485711))

(assert (= (or b!6485711 b!6485710) bm!561342))

(assert (= (or b!6485715 b!6485714) bm!561343))

(declare-fun m!7274090 () Bool)

(assert (=> bm!561342 m!7274090))

(declare-fun m!7274092 () Bool)

(assert (=> b!6485708 m!7274092))

(declare-fun m!7274094 () Bool)

(assert (=> b!6485713 m!7274094))

(assert (=> bm!561343 m!7273476))

(assert (=> b!6485065 d!2034564))

(declare-fun b!6485754 () Bool)

(declare-fun e!3930858 () List!65394)

(assert (=> b!6485754 (= e!3930858 (_2!36647 lt!2388318))))

(declare-fun b!6485756 () Bool)

(declare-fun res!2663615 () Bool)

(declare-fun e!3930857 () Bool)

(assert (=> b!6485756 (=> (not res!2663615) (not e!3930857))))

(declare-fun lt!2388457 () List!65394)

(declare-fun size!40420 (List!65394) Int)

(assert (=> b!6485756 (= res!2663615 (= (size!40420 lt!2388457) (+ (size!40420 (_1!36647 lt!2388318)) (size!40420 (_2!36647 lt!2388318)))))))

(declare-fun b!6485757 () Bool)

(assert (=> b!6485757 (= e!3930857 (or (not (= (_2!36647 lt!2388318) Nil!65270)) (= lt!2388457 (_1!36647 lt!2388318))))))

(declare-fun d!2034598 () Bool)

(assert (=> d!2034598 e!3930857))

(declare-fun res!2663616 () Bool)

(assert (=> d!2034598 (=> (not res!2663616) (not e!3930857))))

(declare-fun content!12430 (List!65394) (InoxSet C!33000))

(assert (=> d!2034598 (= res!2663616 (= (content!12430 lt!2388457) ((_ map or) (content!12430 (_1!36647 lt!2388318)) (content!12430 (_2!36647 lt!2388318)))))))

(assert (=> d!2034598 (= lt!2388457 e!3930858)))

(declare-fun c!1188237 () Bool)

(assert (=> d!2034598 (= c!1188237 ((_ is Nil!65270) (_1!36647 lt!2388318)))))

(assert (=> d!2034598 (= (++!14440 (_1!36647 lt!2388318) (_2!36647 lt!2388318)) lt!2388457)))

(declare-fun b!6485755 () Bool)

(assert (=> b!6485755 (= e!3930858 (Cons!65270 (h!71718 (_1!36647 lt!2388318)) (++!14440 (t!379020 (_1!36647 lt!2388318)) (_2!36647 lt!2388318))))))

(assert (= (and d!2034598 c!1188237) b!6485754))

(assert (= (and d!2034598 (not c!1188237)) b!6485755))

(assert (= (and d!2034598 res!2663616) b!6485756))

(assert (= (and b!6485756 res!2663615) b!6485757))

(declare-fun m!7274096 () Bool)

(assert (=> b!6485756 m!7274096))

(declare-fun m!7274098 () Bool)

(assert (=> b!6485756 m!7274098))

(declare-fun m!7274100 () Bool)

(assert (=> b!6485756 m!7274100))

(declare-fun m!7274102 () Bool)

(assert (=> d!2034598 m!7274102))

(declare-fun m!7274104 () Bool)

(assert (=> d!2034598 m!7274104))

(declare-fun m!7274106 () Bool)

(assert (=> d!2034598 m!7274106))

(declare-fun m!7274108 () Bool)

(assert (=> b!6485755 m!7274108))

(assert (=> b!6485065 d!2034598))

(declare-fun bs!1645392 () Bool)

(declare-fun d!2034600 () Bool)

(assert (= bs!1645392 (and d!2034600 b!6485097)))

(declare-fun lambda!359003 () Int)

(assert (=> bs!1645392 (not (= lambda!359003 lambda!358931))))

(declare-fun bs!1645393 () Bool)

(assert (= bs!1645393 (and d!2034600 b!6485065)))

(assert (=> bs!1645393 (not (= lambda!359003 lambda!358936))))

(declare-fun bs!1645394 () Bool)

(assert (= bs!1645394 (and d!2034600 b!6485711)))

(assert (=> bs!1645394 (not (= lambda!359003 lambda!358991))))

(declare-fun bs!1645395 () Bool)

(assert (= bs!1645395 (and d!2034600 d!2034550)))

(assert (=> bs!1645395 (not (= lambda!359003 lambda!358983))))

(declare-fun bs!1645396 () Bool)

(assert (= bs!1645396 (and d!2034600 b!6485058)))

(assert (=> bs!1645396 (not (= lambda!359003 lambda!358934))))

(assert (=> bs!1645396 (= (and (= (_1!36647 lt!2388334) s!2326) (= (reg!16694 (regOne!33242 r!7292)) lt!2388338) (= lt!2388338 (regTwo!33242 r!7292))) (= lambda!359003 lambda!358933))))

(declare-fun bs!1645397 () Bool)

(assert (= bs!1645397 (and d!2034600 b!6485710)))

(assert (=> bs!1645397 (not (= lambda!359003 lambda!358992))))

(assert (=> bs!1645395 (= (= lt!2388338 (Star!16365 (reg!16694 (regOne!33242 r!7292)))) (= lambda!359003 lambda!358981))))

(declare-fun bs!1645400 () Bool)

(assert (= bs!1645400 (and d!2034600 d!2034534)))

(assert (=> bs!1645400 (= lambda!359003 lambda!358976)))

(assert (=> bs!1645392 (= (and (= (_1!36647 lt!2388334) s!2326) (= (reg!16694 (regOne!33242 r!7292)) (regOne!33242 r!7292)) (= lt!2388338 (regTwo!33242 r!7292))) (= lambda!359003 lambda!358930))))

(assert (=> bs!1645393 (= lambda!359003 lambda!358935)))

(assert (=> bs!1645393 (not (= lambda!359003 lambda!358937))))

(assert (=> d!2034600 true))

(assert (=> d!2034600 true))

(assert (=> d!2034600 true))

(declare-fun lambda!359005 () Int)

(assert (=> bs!1645392 (= (and (= (_1!36647 lt!2388334) s!2326) (= (reg!16694 (regOne!33242 r!7292)) (regOne!33242 r!7292)) (= lt!2388338 (regTwo!33242 r!7292))) (= lambda!359005 lambda!358931))))

(assert (=> bs!1645393 (not (= lambda!359005 lambda!358936))))

(assert (=> bs!1645394 (not (= lambda!359005 lambda!358991))))

(assert (=> bs!1645395 (not (= lambda!359005 lambda!358983))))

(assert (=> bs!1645396 (= (and (= (_1!36647 lt!2388334) s!2326) (= (reg!16694 (regOne!33242 r!7292)) lt!2388338) (= lt!2388338 (regTwo!33242 r!7292))) (= lambda!359005 lambda!358934))))

(declare-fun bs!1645407 () Bool)

(assert (= bs!1645407 d!2034600))

(assert (=> bs!1645407 (not (= lambda!359005 lambda!359003))))

(assert (=> bs!1645396 (not (= lambda!359005 lambda!358933))))

(assert (=> bs!1645397 (= (and (= (reg!16694 (regOne!33242 r!7292)) (regOne!33242 lt!2388338)) (= lt!2388338 (regTwo!33242 lt!2388338))) (= lambda!359005 lambda!358992))))

(assert (=> bs!1645395 (not (= lambda!359005 lambda!358981))))

(assert (=> bs!1645400 (not (= lambda!359005 lambda!358976))))

(assert (=> bs!1645392 (not (= lambda!359005 lambda!358930))))

(assert (=> bs!1645393 (not (= lambda!359005 lambda!358935))))

(assert (=> bs!1645393 (= lambda!359005 lambda!358937)))

(assert (=> d!2034600 true))

(assert (=> d!2034600 true))

(assert (=> d!2034600 true))

(assert (=> d!2034600 (= (Exists!3435 lambda!359003) (Exists!3435 lambda!359005))))

(declare-fun lt!2388464 () Unit!158791)

(declare-fun choose!48126 (Regex!16365 Regex!16365 List!65394) Unit!158791)

(assert (=> d!2034600 (= lt!2388464 (choose!48126 (reg!16694 (regOne!33242 r!7292)) lt!2388338 (_1!36647 lt!2388334)))))

(assert (=> d!2034600 (validRegex!8101 (reg!16694 (regOne!33242 r!7292)))))

(assert (=> d!2034600 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1972 (reg!16694 (regOne!33242 r!7292)) lt!2388338 (_1!36647 lt!2388334)) lt!2388464)))

(declare-fun m!7274166 () Bool)

(assert (=> bs!1645407 m!7274166))

(declare-fun m!7274168 () Bool)

(assert (=> bs!1645407 m!7274168))

(declare-fun m!7274170 () Bool)

(assert (=> bs!1645407 m!7274170))

(assert (=> bs!1645407 m!7273954))

(assert (=> b!6485065 d!2034600))

(declare-fun d!2034624 () Bool)

(declare-fun e!3930906 () Bool)

(assert (=> d!2034624 e!3930906))

(declare-fun res!2663658 () Bool)

(assert (=> d!2034624 (=> res!2663658 e!3930906)))

(declare-fun e!3930903 () Bool)

(assert (=> d!2034624 (= res!2663658 e!3930903)))

(declare-fun res!2663660 () Bool)

(assert (=> d!2034624 (=> (not res!2663660) (not e!3930903))))

(declare-fun lt!2388478 () Option!16256)

(assert (=> d!2034624 (= res!2663660 (isDefined!12959 lt!2388478))))

(declare-fun e!3930905 () Option!16256)

(assert (=> d!2034624 (= lt!2388478 e!3930905)))

(declare-fun c!1188259 () Bool)

(declare-fun e!3930904 () Bool)

(assert (=> d!2034624 (= c!1188259 e!3930904)))

(declare-fun res!2663659 () Bool)

(assert (=> d!2034624 (=> (not res!2663659) (not e!3930904))))

(assert (=> d!2034624 (= res!2663659 (matchR!8548 (reg!16694 (regOne!33242 r!7292)) Nil!65270))))

(assert (=> d!2034624 (validRegex!8101 (reg!16694 (regOne!33242 r!7292)))))

(assert (=> d!2034624 (= (findConcatSeparation!2670 (reg!16694 (regOne!33242 r!7292)) lt!2388338 Nil!65270 (_1!36647 lt!2388334) (_1!36647 lt!2388334)) lt!2388478)))

(declare-fun b!6485836 () Bool)

(declare-fun e!3930902 () Option!16256)

(assert (=> b!6485836 (= e!3930905 e!3930902)))

(declare-fun c!1188258 () Bool)

(assert (=> b!6485836 (= c!1188258 ((_ is Nil!65270) (_1!36647 lt!2388334)))))

(declare-fun b!6485837 () Bool)

(assert (=> b!6485837 (= e!3930905 (Some!16255 (tuple2!66689 Nil!65270 (_1!36647 lt!2388334))))))

(declare-fun b!6485838 () Bool)

(assert (=> b!6485838 (= e!3930906 (not (isDefined!12959 lt!2388478)))))

(declare-fun b!6485839 () Bool)

(assert (=> b!6485839 (= e!3930904 (matchR!8548 lt!2388338 (_1!36647 lt!2388334)))))

(declare-fun b!6485840 () Bool)

(assert (=> b!6485840 (= e!3930903 (= (++!14440 (_1!36647 (get!22631 lt!2388478)) (_2!36647 (get!22631 lt!2388478))) (_1!36647 lt!2388334)))))

(declare-fun b!6485841 () Bool)

(declare-fun res!2663661 () Bool)

(assert (=> b!6485841 (=> (not res!2663661) (not e!3930903))))

(assert (=> b!6485841 (= res!2663661 (matchR!8548 (reg!16694 (regOne!33242 r!7292)) (_1!36647 (get!22631 lt!2388478))))))

(declare-fun b!6485842 () Bool)

(declare-fun res!2663657 () Bool)

(assert (=> b!6485842 (=> (not res!2663657) (not e!3930903))))

(assert (=> b!6485842 (= res!2663657 (matchR!8548 lt!2388338 (_2!36647 (get!22631 lt!2388478))))))

(declare-fun b!6485843 () Bool)

(assert (=> b!6485843 (= e!3930902 None!16255)))

(declare-fun b!6485844 () Bool)

(declare-fun lt!2388480 () Unit!158791)

(declare-fun lt!2388479 () Unit!158791)

(assert (=> b!6485844 (= lt!2388480 lt!2388479)))

(assert (=> b!6485844 (= (++!14440 (++!14440 Nil!65270 (Cons!65270 (h!71718 (_1!36647 lt!2388334)) Nil!65270)) (t!379020 (_1!36647 lt!2388334))) (_1!36647 lt!2388334))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2520 (List!65394 C!33000 List!65394 List!65394) Unit!158791)

(assert (=> b!6485844 (= lt!2388479 (lemmaMoveElementToOtherListKeepsConcatEq!2520 Nil!65270 (h!71718 (_1!36647 lt!2388334)) (t!379020 (_1!36647 lt!2388334)) (_1!36647 lt!2388334)))))

(assert (=> b!6485844 (= e!3930902 (findConcatSeparation!2670 (reg!16694 (regOne!33242 r!7292)) lt!2388338 (++!14440 Nil!65270 (Cons!65270 (h!71718 (_1!36647 lt!2388334)) Nil!65270)) (t!379020 (_1!36647 lt!2388334)) (_1!36647 lt!2388334)))))

(assert (= (and d!2034624 res!2663659) b!6485839))

(assert (= (and d!2034624 c!1188259) b!6485837))

(assert (= (and d!2034624 (not c!1188259)) b!6485836))

(assert (= (and b!6485836 c!1188258) b!6485843))

(assert (= (and b!6485836 (not c!1188258)) b!6485844))

(assert (= (and d!2034624 res!2663660) b!6485841))

(assert (= (and b!6485841 res!2663661) b!6485842))

(assert (= (and b!6485842 res!2663657) b!6485840))

(assert (= (and d!2034624 (not res!2663658)) b!6485838))

(declare-fun m!7274214 () Bool)

(assert (=> b!6485842 m!7274214))

(declare-fun m!7274216 () Bool)

(assert (=> b!6485842 m!7274216))

(assert (=> b!6485839 m!7273502))

(declare-fun m!7274218 () Bool)

(assert (=> b!6485838 m!7274218))

(assert (=> b!6485841 m!7274214))

(declare-fun m!7274220 () Bool)

(assert (=> b!6485841 m!7274220))

(assert (=> b!6485840 m!7274214))

(declare-fun m!7274222 () Bool)

(assert (=> b!6485840 m!7274222))

(declare-fun m!7274224 () Bool)

(assert (=> b!6485844 m!7274224))

(assert (=> b!6485844 m!7274224))

(declare-fun m!7274226 () Bool)

(assert (=> b!6485844 m!7274226))

(declare-fun m!7274228 () Bool)

(assert (=> b!6485844 m!7274228))

(assert (=> b!6485844 m!7274224))

(declare-fun m!7274230 () Bool)

(assert (=> b!6485844 m!7274230))

(assert (=> d!2034624 m!7274218))

(declare-fun m!7274232 () Bool)

(assert (=> d!2034624 m!7274232))

(assert (=> d!2034624 m!7273954))

(assert (=> b!6485065 d!2034624))

(declare-fun d!2034642 () Bool)

(declare-fun isEmpty!37464 (Option!16256) Bool)

(assert (=> d!2034642 (= (isDefined!12959 lt!2388336) (not (isEmpty!37464 lt!2388336)))))

(declare-fun bs!1645466 () Bool)

(assert (= bs!1645466 d!2034642))

(declare-fun m!7274234 () Bool)

(assert (=> bs!1645466 m!7274234))

(assert (=> b!6485065 d!2034642))

(declare-fun d!2034644 () Bool)

(assert (=> d!2034644 (= (Exists!3435 lambda!358936) (choose!48122 lambda!358936))))

(declare-fun bs!1645467 () Bool)

(assert (= bs!1645467 d!2034644))

(declare-fun m!7274236 () Bool)

(assert (=> bs!1645467 m!7274236))

(assert (=> b!6485065 d!2034644))

(declare-fun d!2034646 () Bool)

(assert (=> d!2034646 (= (get!22631 lt!2388336) (v!52434 lt!2388336))))

(assert (=> b!6485065 d!2034646))

(declare-fun d!2034648 () Bool)

(assert (=> d!2034648 (= (matchR!8548 lt!2388338 (_1!36647 lt!2388334)) (matchRSpec!3466 lt!2388338 (_1!36647 lt!2388334)))))

(declare-fun lt!2388486 () Unit!158791)

(declare-fun choose!48127 (Regex!16365 List!65394) Unit!158791)

(assert (=> d!2034648 (= lt!2388486 (choose!48127 lt!2388338 (_1!36647 lt!2388334)))))

(assert (=> d!2034648 (validRegex!8101 lt!2388338)))

(assert (=> d!2034648 (= (mainMatchTheorem!3466 lt!2388338 (_1!36647 lt!2388334)) lt!2388486)))

(declare-fun bs!1645470 () Bool)

(assert (= bs!1645470 d!2034648))

(assert (=> bs!1645470 m!7273502))

(assert (=> bs!1645470 m!7273418))

(declare-fun m!7274260 () Bool)

(assert (=> bs!1645470 m!7274260))

(assert (=> bs!1645470 m!7273780))

(assert (=> b!6485065 d!2034648))

(declare-fun b!6485873 () Bool)

(declare-fun e!3930922 () List!65394)

(assert (=> b!6485873 (= e!3930922 lt!2388317)))

(declare-fun b!6485875 () Bool)

(declare-fun res!2663678 () Bool)

(declare-fun e!3930921 () Bool)

(assert (=> b!6485875 (=> (not res!2663678) (not e!3930921))))

(declare-fun lt!2388487 () List!65394)

(assert (=> b!6485875 (= res!2663678 (= (size!40420 lt!2388487) (+ (size!40420 (_1!36647 lt!2388318)) (size!40420 lt!2388317))))))

(declare-fun b!6485876 () Bool)

(assert (=> b!6485876 (= e!3930921 (or (not (= lt!2388317 Nil!65270)) (= lt!2388487 (_1!36647 lt!2388318))))))

(declare-fun d!2034656 () Bool)

(assert (=> d!2034656 e!3930921))

(declare-fun res!2663679 () Bool)

(assert (=> d!2034656 (=> (not res!2663679) (not e!3930921))))

(assert (=> d!2034656 (= res!2663679 (= (content!12430 lt!2388487) ((_ map or) (content!12430 (_1!36647 lt!2388318)) (content!12430 lt!2388317))))))

(assert (=> d!2034656 (= lt!2388487 e!3930922)))

(declare-fun c!1188266 () Bool)

(assert (=> d!2034656 (= c!1188266 ((_ is Nil!65270) (_1!36647 lt!2388318)))))

(assert (=> d!2034656 (= (++!14440 (_1!36647 lt!2388318) lt!2388317) lt!2388487)))

(declare-fun b!6485874 () Bool)

(assert (=> b!6485874 (= e!3930922 (Cons!65270 (h!71718 (_1!36647 lt!2388318)) (++!14440 (t!379020 (_1!36647 lt!2388318)) lt!2388317)))))

(assert (= (and d!2034656 c!1188266) b!6485873))

(assert (= (and d!2034656 (not c!1188266)) b!6485874))

(assert (= (and d!2034656 res!2663679) b!6485875))

(assert (= (and b!6485875 res!2663678) b!6485876))

(declare-fun m!7274268 () Bool)

(assert (=> b!6485875 m!7274268))

(assert (=> b!6485875 m!7274098))

(declare-fun m!7274270 () Bool)

(assert (=> b!6485875 m!7274270))

(declare-fun m!7274272 () Bool)

(assert (=> d!2034656 m!7274272))

(assert (=> d!2034656 m!7274104))

(declare-fun m!7274274 () Bool)

(assert (=> d!2034656 m!7274274))

(declare-fun m!7274276 () Bool)

(assert (=> b!6485874 m!7274276))

(assert (=> b!6485089 d!2034656))

(declare-fun b!6485881 () Bool)

(declare-fun e!3930926 () List!65394)

(assert (=> b!6485881 (= e!3930926 (_2!36647 lt!2388334))))

(declare-fun b!6485883 () Bool)

(declare-fun res!2663680 () Bool)

(declare-fun e!3930925 () Bool)

(assert (=> b!6485883 (=> (not res!2663680) (not e!3930925))))

(declare-fun lt!2388488 () List!65394)

(assert (=> b!6485883 (= res!2663680 (= (size!40420 lt!2388488) (+ (size!40420 lt!2388306) (size!40420 (_2!36647 lt!2388334)))))))

(declare-fun b!6485884 () Bool)

(assert (=> b!6485884 (= e!3930925 (or (not (= (_2!36647 lt!2388334) Nil!65270)) (= lt!2388488 lt!2388306)))))

(declare-fun d!2034658 () Bool)

(assert (=> d!2034658 e!3930925))

(declare-fun res!2663681 () Bool)

(assert (=> d!2034658 (=> (not res!2663681) (not e!3930925))))

(assert (=> d!2034658 (= res!2663681 (= (content!12430 lt!2388488) ((_ map or) (content!12430 lt!2388306) (content!12430 (_2!36647 lt!2388334)))))))

(assert (=> d!2034658 (= lt!2388488 e!3930926)))

(declare-fun c!1188267 () Bool)

(assert (=> d!2034658 (= c!1188267 ((_ is Nil!65270) lt!2388306))))

(assert (=> d!2034658 (= (++!14440 lt!2388306 (_2!36647 lt!2388334)) lt!2388488)))

(declare-fun b!6485882 () Bool)

(assert (=> b!6485882 (= e!3930926 (Cons!65270 (h!71718 lt!2388306) (++!14440 (t!379020 lt!2388306) (_2!36647 lt!2388334))))))

(assert (= (and d!2034658 c!1188267) b!6485881))

(assert (= (and d!2034658 (not c!1188267)) b!6485882))

(assert (= (and d!2034658 res!2663681) b!6485883))

(assert (= (and b!6485883 res!2663680) b!6485884))

(declare-fun m!7274278 () Bool)

(assert (=> b!6485883 m!7274278))

(declare-fun m!7274280 () Bool)

(assert (=> b!6485883 m!7274280))

(declare-fun m!7274282 () Bool)

(assert (=> b!6485883 m!7274282))

(declare-fun m!7274284 () Bool)

(assert (=> d!2034658 m!7274284))

(declare-fun m!7274286 () Bool)

(assert (=> d!2034658 m!7274286))

(declare-fun m!7274288 () Bool)

(assert (=> d!2034658 m!7274288))

(declare-fun m!7274290 () Bool)

(assert (=> b!6485882 m!7274290))

(assert (=> b!6485089 d!2034658))

(declare-fun b!6485886 () Bool)

(declare-fun e!3930929 () List!65394)

(assert (=> b!6485886 (= e!3930929 (_2!36647 lt!2388334))))

(declare-fun b!6485888 () Bool)

(declare-fun res!2663682 () Bool)

(declare-fun e!3930928 () Bool)

(assert (=> b!6485888 (=> (not res!2663682) (not e!3930928))))

(declare-fun lt!2388489 () List!65394)

(assert (=> b!6485888 (= res!2663682 (= (size!40420 lt!2388489) (+ (size!40420 (_2!36647 lt!2388318)) (size!40420 (_2!36647 lt!2388334)))))))

(declare-fun b!6485889 () Bool)

(assert (=> b!6485889 (= e!3930928 (or (not (= (_2!36647 lt!2388334) Nil!65270)) (= lt!2388489 (_2!36647 lt!2388318))))))

(declare-fun d!2034660 () Bool)

(assert (=> d!2034660 e!3930928))

(declare-fun res!2663683 () Bool)

(assert (=> d!2034660 (=> (not res!2663683) (not e!3930928))))

(assert (=> d!2034660 (= res!2663683 (= (content!12430 lt!2388489) ((_ map or) (content!12430 (_2!36647 lt!2388318)) (content!12430 (_2!36647 lt!2388334)))))))

(assert (=> d!2034660 (= lt!2388489 e!3930929)))

(declare-fun c!1188268 () Bool)

(assert (=> d!2034660 (= c!1188268 ((_ is Nil!65270) (_2!36647 lt!2388318)))))

(assert (=> d!2034660 (= (++!14440 (_2!36647 lt!2388318) (_2!36647 lt!2388334)) lt!2388489)))

(declare-fun b!6485887 () Bool)

(assert (=> b!6485887 (= e!3930929 (Cons!65270 (h!71718 (_2!36647 lt!2388318)) (++!14440 (t!379020 (_2!36647 lt!2388318)) (_2!36647 lt!2388334))))))

(assert (= (and d!2034660 c!1188268) b!6485886))

(assert (= (and d!2034660 (not c!1188268)) b!6485887))

(assert (= (and d!2034660 res!2663683) b!6485888))

(assert (= (and b!6485888 res!2663682) b!6485889))

(declare-fun m!7274292 () Bool)

(assert (=> b!6485888 m!7274292))

(assert (=> b!6485888 m!7274100))

(assert (=> b!6485888 m!7274282))

(declare-fun m!7274294 () Bool)

(assert (=> d!2034660 m!7274294))

(assert (=> d!2034660 m!7274106))

(assert (=> d!2034660 m!7274288))

(declare-fun m!7274296 () Bool)

(assert (=> b!6485887 m!7274296))

(assert (=> b!6485089 d!2034660))

(declare-fun d!2034662 () Bool)

(assert (=> d!2034662 (= (++!14440 (++!14440 (_1!36647 lt!2388318) (_2!36647 lt!2388318)) (_2!36647 lt!2388334)) (++!14440 (_1!36647 lt!2388318) (++!14440 (_2!36647 lt!2388318) (_2!36647 lt!2388334))))))

(declare-fun lt!2388492 () Unit!158791)

(declare-fun choose!48128 (List!65394 List!65394 List!65394) Unit!158791)

(assert (=> d!2034662 (= lt!2388492 (choose!48128 (_1!36647 lt!2388318) (_2!36647 lt!2388318) (_2!36647 lt!2388334)))))

(assert (=> d!2034662 (= (lemmaConcatAssociativity!2936 (_1!36647 lt!2388318) (_2!36647 lt!2388318) (_2!36647 lt!2388334)) lt!2388492)))

(declare-fun bs!1645471 () Bool)

(assert (= bs!1645471 d!2034662))

(assert (=> bs!1645471 m!7273482))

(declare-fun m!7274298 () Bool)

(assert (=> bs!1645471 m!7274298))

(assert (=> bs!1645471 m!7273426))

(assert (=> bs!1645471 m!7273426))

(declare-fun m!7274300 () Bool)

(assert (=> bs!1645471 m!7274300))

(declare-fun m!7274302 () Bool)

(assert (=> bs!1645471 m!7274302))

(assert (=> bs!1645471 m!7273482))

(assert (=> b!6485089 d!2034662))

(declare-fun d!2034664 () Bool)

(assert (=> d!2034664 (= (nullable!6358 (regOne!33242 (regOne!33242 r!7292))) (nullableFct!2296 (regOne!33242 (regOne!33242 r!7292))))))

(declare-fun bs!1645472 () Bool)

(assert (= bs!1645472 d!2034664))

(declare-fun m!7274306 () Bool)

(assert (=> bs!1645472 m!7274306))

(assert (=> b!6485069 d!2034664))

(declare-fun b!6485918 () Bool)

(declare-fun e!3930944 () Bool)

(assert (=> b!6485918 (= e!3930944 (matchR!8548 (derivativeStep!5061 (reg!16694 (regOne!33242 r!7292)) (head!13205 (_1!36647 lt!2388318))) (tail!12290 (_1!36647 lt!2388318))))))

(declare-fun b!6485919 () Bool)

(assert (=> b!6485919 (= e!3930944 (nullable!6358 (reg!16694 (regOne!33242 r!7292))))))

(declare-fun b!6485920 () Bool)

(declare-fun e!3930941 () Bool)

(assert (=> b!6485920 (= e!3930941 (not (= (head!13205 (_1!36647 lt!2388318)) (c!1188049 (reg!16694 (regOne!33242 r!7292))))))))

(declare-fun b!6485921 () Bool)

(declare-fun res!2663688 () Bool)

(declare-fun e!3930942 () Bool)

(assert (=> b!6485921 (=> res!2663688 e!3930942)))

(assert (=> b!6485921 (= res!2663688 (not ((_ is ElementMatch!16365) (reg!16694 (regOne!33242 r!7292)))))))

(declare-fun e!3930940 () Bool)

(assert (=> b!6485921 (= e!3930940 e!3930942)))

(declare-fun b!6485922 () Bool)

(declare-fun res!2663684 () Bool)

(assert (=> b!6485922 (=> res!2663684 e!3930941)))

(assert (=> b!6485922 (= res!2663684 (not (isEmpty!37460 (tail!12290 (_1!36647 lt!2388318)))))))

(declare-fun b!6485923 () Bool)

(declare-fun lt!2388493 () Bool)

(assert (=> b!6485923 (= e!3930940 (not lt!2388493))))

(declare-fun b!6485924 () Bool)

(declare-fun res!2663691 () Bool)

(declare-fun e!3930945 () Bool)

(assert (=> b!6485924 (=> (not res!2663691) (not e!3930945))))

(assert (=> b!6485924 (= res!2663691 (isEmpty!37460 (tail!12290 (_1!36647 lt!2388318))))))

(declare-fun b!6485925 () Bool)

(declare-fun e!3930943 () Bool)

(declare-fun call!561355 () Bool)

(assert (=> b!6485925 (= e!3930943 (= lt!2388493 call!561355))))

(declare-fun bm!561350 () Bool)

(assert (=> bm!561350 (= call!561355 (isEmpty!37460 (_1!36647 lt!2388318)))))

(declare-fun b!6485926 () Bool)

(declare-fun res!2663686 () Bool)

(assert (=> b!6485926 (=> res!2663686 e!3930942)))

(assert (=> b!6485926 (= res!2663686 e!3930945)))

(declare-fun res!2663685 () Bool)

(assert (=> b!6485926 (=> (not res!2663685) (not e!3930945))))

(assert (=> b!6485926 (= res!2663685 lt!2388493)))

(declare-fun b!6485927 () Bool)

(declare-fun e!3930939 () Bool)

(assert (=> b!6485927 (= e!3930939 e!3930941)))

(declare-fun res!2663690 () Bool)

(assert (=> b!6485927 (=> res!2663690 e!3930941)))

(assert (=> b!6485927 (= res!2663690 call!561355)))

(declare-fun d!2034666 () Bool)

(assert (=> d!2034666 e!3930943))

(declare-fun c!1188271 () Bool)

(assert (=> d!2034666 (= c!1188271 ((_ is EmptyExpr!16365) (reg!16694 (regOne!33242 r!7292))))))

(assert (=> d!2034666 (= lt!2388493 e!3930944)))

(declare-fun c!1188270 () Bool)

(assert (=> d!2034666 (= c!1188270 (isEmpty!37460 (_1!36647 lt!2388318)))))

(assert (=> d!2034666 (validRegex!8101 (reg!16694 (regOne!33242 r!7292)))))

(assert (=> d!2034666 (= (matchR!8548 (reg!16694 (regOne!33242 r!7292)) (_1!36647 lt!2388318)) lt!2388493)))

(declare-fun b!6485928 () Bool)

(declare-fun res!2663689 () Bool)

(assert (=> b!6485928 (=> (not res!2663689) (not e!3930945))))

(assert (=> b!6485928 (= res!2663689 (not call!561355))))

(declare-fun b!6485929 () Bool)

(assert (=> b!6485929 (= e!3930945 (= (head!13205 (_1!36647 lt!2388318)) (c!1188049 (reg!16694 (regOne!33242 r!7292)))))))

(declare-fun b!6485930 () Bool)

(assert (=> b!6485930 (= e!3930943 e!3930940)))

(declare-fun c!1188269 () Bool)

(assert (=> b!6485930 (= c!1188269 ((_ is EmptyLang!16365) (reg!16694 (regOne!33242 r!7292))))))

(declare-fun b!6485931 () Bool)

(assert (=> b!6485931 (= e!3930942 e!3930939)))

(declare-fun res!2663687 () Bool)

(assert (=> b!6485931 (=> (not res!2663687) (not e!3930939))))

(assert (=> b!6485931 (= res!2663687 (not lt!2388493))))

(assert (= (and d!2034666 c!1188270) b!6485919))

(assert (= (and d!2034666 (not c!1188270)) b!6485918))

(assert (= (and d!2034666 c!1188271) b!6485925))

(assert (= (and d!2034666 (not c!1188271)) b!6485930))

(assert (= (and b!6485930 c!1188269) b!6485923))

(assert (= (and b!6485930 (not c!1188269)) b!6485921))

(assert (= (and b!6485921 (not res!2663688)) b!6485926))

(assert (= (and b!6485926 res!2663685) b!6485928))

(assert (= (and b!6485928 res!2663689) b!6485924))

(assert (= (and b!6485924 res!2663691) b!6485929))

(assert (= (and b!6485926 (not res!2663686)) b!6485931))

(assert (= (and b!6485931 res!2663687) b!6485927))

(assert (= (and b!6485927 (not res!2663690)) b!6485922))

(assert (= (and b!6485922 (not res!2663684)) b!6485920))

(assert (= (or b!6485925 b!6485927 b!6485928) bm!561350))

(declare-fun m!7274308 () Bool)

(assert (=> b!6485918 m!7274308))

(assert (=> b!6485918 m!7274308))

(declare-fun m!7274310 () Bool)

(assert (=> b!6485918 m!7274310))

(declare-fun m!7274312 () Bool)

(assert (=> b!6485918 m!7274312))

(assert (=> b!6485918 m!7274310))

(assert (=> b!6485918 m!7274312))

(declare-fun m!7274314 () Bool)

(assert (=> b!6485918 m!7274314))

(assert (=> b!6485929 m!7274308))

(assert (=> b!6485922 m!7274312))

(assert (=> b!6485922 m!7274312))

(declare-fun m!7274316 () Bool)

(assert (=> b!6485922 m!7274316))

(assert (=> b!6485924 m!7274312))

(assert (=> b!6485924 m!7274312))

(assert (=> b!6485924 m!7274316))

(declare-fun m!7274318 () Bool)

(assert (=> bm!561350 m!7274318))

(declare-fun m!7274320 () Bool)

(assert (=> b!6485919 m!7274320))

(assert (=> d!2034666 m!7274318))

(assert (=> d!2034666 m!7273954))

(assert (=> b!6485920 m!7274308))

(assert (=> b!6485088 d!2034666))

(declare-fun bs!1645477 () Bool)

(declare-fun d!2034668 () Bool)

(assert (= bs!1645477 (and d!2034668 b!6485081)))

(declare-fun lambda!359013 () Int)

(assert (=> bs!1645477 (= lambda!359013 lambda!358938)))

(declare-fun b!6485973 () Bool)

(declare-fun e!3930970 () Regex!16365)

(declare-fun e!3930972 () Regex!16365)

(assert (=> b!6485973 (= e!3930970 e!3930972)))

(declare-fun c!1188280 () Bool)

(assert (=> b!6485973 (= c!1188280 ((_ is Cons!65271) (unfocusZipperList!1786 zl!343)))))

(declare-fun b!6485974 () Bool)

(declare-fun e!3930971 () Bool)

(declare-fun e!3930974 () Bool)

(assert (=> b!6485974 (= e!3930971 e!3930974)))

(declare-fun c!1188283 () Bool)

(declare-fun tail!12291 (List!65395) List!65395)

(assert (=> b!6485974 (= c!1188283 (isEmpty!37462 (tail!12291 (unfocusZipperList!1786 zl!343))))))

(declare-fun b!6485975 () Bool)

(declare-fun lt!2388496 () Regex!16365)

(declare-fun isUnion!1195 (Regex!16365) Bool)

(assert (=> b!6485975 (= e!3930974 (isUnion!1195 lt!2388496))))

(declare-fun b!6485976 () Bool)

(declare-fun e!3930973 () Bool)

(assert (=> b!6485976 (= e!3930973 (isEmpty!37462 (t!379021 (unfocusZipperList!1786 zl!343))))))

(declare-fun b!6485977 () Bool)

(assert (=> b!6485977 (= e!3930972 (Union!16365 (h!71719 (unfocusZipperList!1786 zl!343)) (generalisedUnion!2209 (t!379021 (unfocusZipperList!1786 zl!343)))))))

(declare-fun b!6485978 () Bool)

(declare-fun e!3930969 () Bool)

(assert (=> b!6485978 (= e!3930969 e!3930971)))

(declare-fun c!1188282 () Bool)

(assert (=> b!6485978 (= c!1188282 (isEmpty!37462 (unfocusZipperList!1786 zl!343)))))

(declare-fun b!6485979 () Bool)

(declare-fun head!13206 (List!65395) Regex!16365)

(assert (=> b!6485979 (= e!3930974 (= lt!2388496 (head!13206 (unfocusZipperList!1786 zl!343))))))

(declare-fun b!6485980 () Bool)

(assert (=> b!6485980 (= e!3930970 (h!71719 (unfocusZipperList!1786 zl!343)))))

(assert (=> d!2034668 e!3930969))

(declare-fun res!2663697 () Bool)

(assert (=> d!2034668 (=> (not res!2663697) (not e!3930969))))

(assert (=> d!2034668 (= res!2663697 (validRegex!8101 lt!2388496))))

(assert (=> d!2034668 (= lt!2388496 e!3930970)))

(declare-fun c!1188281 () Bool)

(assert (=> d!2034668 (= c!1188281 e!3930973)))

(declare-fun res!2663696 () Bool)

(assert (=> d!2034668 (=> (not res!2663696) (not e!3930973))))

(assert (=> d!2034668 (= res!2663696 ((_ is Cons!65271) (unfocusZipperList!1786 zl!343)))))

(declare-fun forall!15548 (List!65395 Int) Bool)

(assert (=> d!2034668 (forall!15548 (unfocusZipperList!1786 zl!343) lambda!359013)))

(assert (=> d!2034668 (= (generalisedUnion!2209 (unfocusZipperList!1786 zl!343)) lt!2388496)))

(declare-fun b!6485981 () Bool)

(declare-fun isEmptyLang!1765 (Regex!16365) Bool)

(assert (=> b!6485981 (= e!3930971 (isEmptyLang!1765 lt!2388496))))

(declare-fun b!6485982 () Bool)

(assert (=> b!6485982 (= e!3930972 EmptyLang!16365)))

(assert (= (and d!2034668 res!2663696) b!6485976))

(assert (= (and d!2034668 c!1188281) b!6485980))

(assert (= (and d!2034668 (not c!1188281)) b!6485973))

(assert (= (and b!6485973 c!1188280) b!6485977))

(assert (= (and b!6485973 (not c!1188280)) b!6485982))

(assert (= (and d!2034668 res!2663697) b!6485978))

(assert (= (and b!6485978 c!1188282) b!6485981))

(assert (= (and b!6485978 (not c!1188282)) b!6485974))

(assert (= (and b!6485974 c!1188283) b!6485979))

(assert (= (and b!6485974 (not c!1188283)) b!6485975))

(assert (=> b!6485979 m!7273442))

(declare-fun m!7274324 () Bool)

(assert (=> b!6485979 m!7274324))

(declare-fun m!7274326 () Bool)

(assert (=> d!2034668 m!7274326))

(assert (=> d!2034668 m!7273442))

(declare-fun m!7274328 () Bool)

(assert (=> d!2034668 m!7274328))

(declare-fun m!7274330 () Bool)

(assert (=> b!6485976 m!7274330))

(declare-fun m!7274332 () Bool)

(assert (=> b!6485977 m!7274332))

(declare-fun m!7274334 () Bool)

(assert (=> b!6485975 m!7274334))

(declare-fun m!7274336 () Bool)

(assert (=> b!6485981 m!7274336))

(assert (=> b!6485974 m!7273442))

(declare-fun m!7274338 () Bool)

(assert (=> b!6485974 m!7274338))

(assert (=> b!6485974 m!7274338))

(declare-fun m!7274340 () Bool)

(assert (=> b!6485974 m!7274340))

(assert (=> b!6485978 m!7273442))

(declare-fun m!7274342 () Bool)

(assert (=> b!6485978 m!7274342))

(assert (=> b!6485071 d!2034668))

(declare-fun bs!1645478 () Bool)

(declare-fun d!2034678 () Bool)

(assert (= bs!1645478 (and d!2034678 b!6485081)))

(declare-fun lambda!359016 () Int)

(assert (=> bs!1645478 (= lambda!359016 lambda!358938)))

(declare-fun bs!1645479 () Bool)

(assert (= bs!1645479 (and d!2034678 d!2034668)))

(assert (=> bs!1645479 (= lambda!359016 lambda!359013)))

(declare-fun lt!2388499 () List!65395)

(assert (=> d!2034678 (forall!15548 lt!2388499 lambda!359016)))

(declare-fun e!3930977 () List!65395)

(assert (=> d!2034678 (= lt!2388499 e!3930977)))

(declare-fun c!1188286 () Bool)

(assert (=> d!2034678 (= c!1188286 ((_ is Cons!65272) zl!343))))

(assert (=> d!2034678 (= (unfocusZipperList!1786 zl!343) lt!2388499)))

(declare-fun b!6485987 () Bool)

(assert (=> b!6485987 (= e!3930977 (Cons!65271 (generalisedConcat!1962 (exprs!6249 (h!71720 zl!343))) (unfocusZipperList!1786 (t!379022 zl!343))))))

(declare-fun b!6485988 () Bool)

(assert (=> b!6485988 (= e!3930977 Nil!65271)))

(assert (= (and d!2034678 c!1188286) b!6485987))

(assert (= (and d!2034678 (not c!1188286)) b!6485988))

(declare-fun m!7274344 () Bool)

(assert (=> d!2034678 m!7274344))

(assert (=> b!6485987 m!7273470))

(declare-fun m!7274346 () Bool)

(assert (=> b!6485987 m!7274346))

(assert (=> b!6485071 d!2034678))

(declare-fun d!2034680 () Bool)

(declare-fun c!1188289 () Bool)

(assert (=> d!2034680 (= c!1188289 (isEmpty!37460 s!2326))))

(declare-fun e!3930980 () Bool)

(assert (=> d!2034680 (= (matchZipper!2377 lt!2388328 s!2326) e!3930980)))

(declare-fun b!6485993 () Bool)

(declare-fun nullableZipper!2122 ((InoxSet Context!11498)) Bool)

(assert (=> b!6485993 (= e!3930980 (nullableZipper!2122 lt!2388328))))

(declare-fun b!6485994 () Bool)

(assert (=> b!6485994 (= e!3930980 (matchZipper!2377 (derivationStepZipper!2331 lt!2388328 (head!13205 s!2326)) (tail!12290 s!2326)))))

(assert (= (and d!2034680 c!1188289) b!6485993))

(assert (= (and d!2034680 (not c!1188289)) b!6485994))

(declare-fun m!7274348 () Bool)

(assert (=> d!2034680 m!7274348))

(declare-fun m!7274350 () Bool)

(assert (=> b!6485993 m!7274350))

(declare-fun m!7274352 () Bool)

(assert (=> b!6485994 m!7274352))

(assert (=> b!6485994 m!7274352))

(declare-fun m!7274354 () Bool)

(assert (=> b!6485994 m!7274354))

(declare-fun m!7274356 () Bool)

(assert (=> b!6485994 m!7274356))

(assert (=> b!6485994 m!7274354))

(assert (=> b!6485994 m!7274356))

(declare-fun m!7274358 () Bool)

(assert (=> b!6485994 m!7274358))

(assert (=> b!6485090 d!2034680))

(declare-fun d!2034682 () Bool)

(declare-fun c!1188290 () Bool)

(assert (=> d!2034682 (= c!1188290 (isEmpty!37460 (t!379020 s!2326)))))

(declare-fun e!3930981 () Bool)

(assert (=> d!2034682 (= (matchZipper!2377 lt!2388293 (t!379020 s!2326)) e!3930981)))

(declare-fun b!6485995 () Bool)

(assert (=> b!6485995 (= e!3930981 (nullableZipper!2122 lt!2388293))))

(declare-fun b!6485996 () Bool)

(assert (=> b!6485996 (= e!3930981 (matchZipper!2377 (derivationStepZipper!2331 lt!2388293 (head!13205 (t!379020 s!2326))) (tail!12290 (t!379020 s!2326))))))

(assert (= (and d!2034682 c!1188290) b!6485995))

(assert (= (and d!2034682 (not c!1188290)) b!6485996))

(declare-fun m!7274360 () Bool)

(assert (=> d!2034682 m!7274360))

(declare-fun m!7274362 () Bool)

(assert (=> b!6485995 m!7274362))

(declare-fun m!7274364 () Bool)

(assert (=> b!6485996 m!7274364))

(assert (=> b!6485996 m!7274364))

(declare-fun m!7274366 () Bool)

(assert (=> b!6485996 m!7274366))

(declare-fun m!7274368 () Bool)

(assert (=> b!6485996 m!7274368))

(assert (=> b!6485996 m!7274366))

(assert (=> b!6485996 m!7274368))

(declare-fun m!7274370 () Bool)

(assert (=> b!6485996 m!7274370))

(assert (=> b!6485090 d!2034682))

(declare-fun d!2034684 () Bool)

(declare-fun lt!2388500 () Regex!16365)

(assert (=> d!2034684 (validRegex!8101 lt!2388500)))

(assert (=> d!2034684 (= lt!2388500 (generalisedUnion!2209 (unfocusZipperList!1786 (Cons!65272 lt!2388289 Nil!65272))))))

(assert (=> d!2034684 (= (unfocusZipper!2107 (Cons!65272 lt!2388289 Nil!65272)) lt!2388500)))

(declare-fun bs!1645480 () Bool)

(assert (= bs!1645480 d!2034684))

(declare-fun m!7274372 () Bool)

(assert (=> bs!1645480 m!7274372))

(declare-fun m!7274374 () Bool)

(assert (=> bs!1645480 m!7274374))

(assert (=> bs!1645480 m!7274374))

(declare-fun m!7274376 () Bool)

(assert (=> bs!1645480 m!7274376))

(assert (=> b!6485070 d!2034684))

(declare-fun d!2034686 () Bool)

(declare-fun c!1188291 () Bool)

(assert (=> d!2034686 (= c!1188291 (isEmpty!37460 (t!379020 s!2326)))))

(declare-fun e!3930982 () Bool)

(assert (=> d!2034686 (= (matchZipper!2377 lt!2388297 (t!379020 s!2326)) e!3930982)))

(declare-fun b!6485997 () Bool)

(assert (=> b!6485997 (= e!3930982 (nullableZipper!2122 lt!2388297))))

(declare-fun b!6485998 () Bool)

(assert (=> b!6485998 (= e!3930982 (matchZipper!2377 (derivationStepZipper!2331 lt!2388297 (head!13205 (t!379020 s!2326))) (tail!12290 (t!379020 s!2326))))))

(assert (= (and d!2034686 c!1188291) b!6485997))

(assert (= (and d!2034686 (not c!1188291)) b!6485998))

(assert (=> d!2034686 m!7274360))

(declare-fun m!7274378 () Bool)

(assert (=> b!6485997 m!7274378))

(assert (=> b!6485998 m!7274364))

(assert (=> b!6485998 m!7274364))

(declare-fun m!7274380 () Bool)

(assert (=> b!6485998 m!7274380))

(assert (=> b!6485998 m!7274368))

(assert (=> b!6485998 m!7274380))

(assert (=> b!6485998 m!7274368))

(declare-fun m!7274382 () Bool)

(assert (=> b!6485998 m!7274382))

(assert (=> b!6485093 d!2034686))

(declare-fun d!2034688 () Bool)

(assert (=> d!2034688 (= (isEmpty!37461 (t!379022 zl!343)) ((_ is Nil!65272) (t!379022 zl!343)))))

(assert (=> b!6485074 d!2034688))

(declare-fun bs!1645481 () Bool)

(declare-fun b!6486005 () Bool)

(assert (= bs!1645481 (and b!6486005 b!6485097)))

(declare-fun lambda!359017 () Int)

(assert (=> bs!1645481 (not (= lambda!359017 lambda!358931))))

(declare-fun bs!1645482 () Bool)

(assert (= bs!1645482 (and b!6486005 d!2034600)))

(assert (=> bs!1645482 (not (= lambda!359017 lambda!359005))))

(declare-fun bs!1645483 () Bool)

(assert (= bs!1645483 (and b!6486005 b!6485065)))

(assert (=> bs!1645483 (= (and (= s!2326 (_1!36647 lt!2388334)) (= (reg!16694 lt!2388335) (reg!16694 (regOne!33242 r!7292))) (= lt!2388335 lt!2388338)) (= lambda!359017 lambda!358936))))

(declare-fun bs!1645484 () Bool)

(assert (= bs!1645484 (and b!6486005 b!6485711)))

(assert (=> bs!1645484 (= (and (= s!2326 (_1!36647 lt!2388334)) (= (reg!16694 lt!2388335) (reg!16694 lt!2388338)) (= lt!2388335 lt!2388338)) (= lambda!359017 lambda!358991))))

(declare-fun bs!1645485 () Bool)

(assert (= bs!1645485 (and b!6486005 d!2034550)))

(assert (=> bs!1645485 (= (and (= s!2326 (_1!36647 lt!2388334)) (= (reg!16694 lt!2388335) (reg!16694 (regOne!33242 r!7292))) (= lt!2388335 (Star!16365 (reg!16694 (regOne!33242 r!7292))))) (= lambda!359017 lambda!358983))))

(declare-fun bs!1645486 () Bool)

(assert (= bs!1645486 (and b!6486005 b!6485058)))

(assert (=> bs!1645486 (not (= lambda!359017 lambda!358934))))

(assert (=> bs!1645482 (not (= lambda!359017 lambda!359003))))

(assert (=> bs!1645486 (not (= lambda!359017 lambda!358933))))

(declare-fun bs!1645487 () Bool)

(assert (= bs!1645487 (and b!6486005 b!6485710)))

(assert (=> bs!1645487 (not (= lambda!359017 lambda!358992))))

(assert (=> bs!1645485 (not (= lambda!359017 lambda!358981))))

(declare-fun bs!1645488 () Bool)

(assert (= bs!1645488 (and b!6486005 d!2034534)))

(assert (=> bs!1645488 (not (= lambda!359017 lambda!358976))))

(assert (=> bs!1645481 (not (= lambda!359017 lambda!358930))))

(assert (=> bs!1645483 (not (= lambda!359017 lambda!358935))))

(assert (=> bs!1645483 (not (= lambda!359017 lambda!358937))))

(assert (=> b!6486005 true))

(assert (=> b!6486005 true))

(declare-fun bs!1645489 () Bool)

(declare-fun b!6486004 () Bool)

(assert (= bs!1645489 (and b!6486004 b!6485097)))

(declare-fun lambda!359018 () Int)

(assert (=> bs!1645489 (= (and (= (regOne!33242 lt!2388335) (regOne!33242 r!7292)) (= (regTwo!33242 lt!2388335) (regTwo!33242 r!7292))) (= lambda!359018 lambda!358931))))

(declare-fun bs!1645490 () Bool)

(assert (= bs!1645490 (and b!6486004 d!2034600)))

(assert (=> bs!1645490 (= (and (= s!2326 (_1!36647 lt!2388334)) (= (regOne!33242 lt!2388335) (reg!16694 (regOne!33242 r!7292))) (= (regTwo!33242 lt!2388335) lt!2388338)) (= lambda!359018 lambda!359005))))

(declare-fun bs!1645491 () Bool)

(assert (= bs!1645491 (and b!6486004 b!6485065)))

(assert (=> bs!1645491 (not (= lambda!359018 lambda!358936))))

(declare-fun bs!1645492 () Bool)

(assert (= bs!1645492 (and b!6486004 d!2034550)))

(assert (=> bs!1645492 (not (= lambda!359018 lambda!358983))))

(declare-fun bs!1645493 () Bool)

(assert (= bs!1645493 (and b!6486004 b!6485058)))

(assert (=> bs!1645493 (= (and (= (regOne!33242 lt!2388335) lt!2388338) (= (regTwo!33242 lt!2388335) (regTwo!33242 r!7292))) (= lambda!359018 lambda!358934))))

(assert (=> bs!1645490 (not (= lambda!359018 lambda!359003))))

(assert (=> bs!1645493 (not (= lambda!359018 lambda!358933))))

(declare-fun bs!1645494 () Bool)

(assert (= bs!1645494 (and b!6486004 b!6485710)))

(assert (=> bs!1645494 (= (and (= s!2326 (_1!36647 lt!2388334)) (= (regOne!33242 lt!2388335) (regOne!33242 lt!2388338)) (= (regTwo!33242 lt!2388335) (regTwo!33242 lt!2388338))) (= lambda!359018 lambda!358992))))

(assert (=> bs!1645492 (not (= lambda!359018 lambda!358981))))

(declare-fun bs!1645495 () Bool)

(assert (= bs!1645495 (and b!6486004 d!2034534)))

(assert (=> bs!1645495 (not (= lambda!359018 lambda!358976))))

(assert (=> bs!1645489 (not (= lambda!359018 lambda!358930))))

(declare-fun bs!1645496 () Bool)

(assert (= bs!1645496 (and b!6486004 b!6486005)))

(assert (=> bs!1645496 (not (= lambda!359018 lambda!359017))))

(declare-fun bs!1645497 () Bool)

(assert (= bs!1645497 (and b!6486004 b!6485711)))

(assert (=> bs!1645497 (not (= lambda!359018 lambda!358991))))

(assert (=> bs!1645491 (not (= lambda!359018 lambda!358935))))

(assert (=> bs!1645491 (= (and (= s!2326 (_1!36647 lt!2388334)) (= (regOne!33242 lt!2388335) (reg!16694 (regOne!33242 r!7292))) (= (regTwo!33242 lt!2388335) lt!2388338)) (= lambda!359018 lambda!358937))))

(assert (=> b!6486004 true))

(assert (=> b!6486004 true))

(declare-fun b!6485999 () Bool)

(declare-fun c!1188292 () Bool)

(assert (=> b!6485999 (= c!1188292 ((_ is ElementMatch!16365) lt!2388335))))

(declare-fun e!3930988 () Bool)

(declare-fun e!3930989 () Bool)

(assert (=> b!6485999 (= e!3930988 e!3930989)))

(declare-fun call!561356 () Bool)

(declare-fun c!1188293 () Bool)

(declare-fun bm!561351 () Bool)

(assert (=> bm!561351 (= call!561356 (Exists!3435 (ite c!1188293 lambda!359017 lambda!359018)))))

(declare-fun b!6486000 () Bool)

(declare-fun c!1188294 () Bool)

(assert (=> b!6486000 (= c!1188294 ((_ is Union!16365) lt!2388335))))

(declare-fun e!3930984 () Bool)

(assert (=> b!6486000 (= e!3930989 e!3930984)))

(declare-fun b!6486001 () Bool)

(declare-fun e!3930986 () Bool)

(assert (=> b!6486001 (= e!3930986 e!3930988)))

(declare-fun res!2663699 () Bool)

(assert (=> b!6486001 (= res!2663699 (not ((_ is EmptyLang!16365) lt!2388335)))))

(assert (=> b!6486001 (=> (not res!2663699) (not e!3930988))))

(declare-fun b!6486002 () Bool)

(declare-fun e!3930987 () Bool)

(assert (=> b!6486002 (= e!3930984 e!3930987)))

(declare-fun res!2663700 () Bool)

(assert (=> b!6486002 (= res!2663700 (matchRSpec!3466 (regOne!33243 lt!2388335) s!2326))))

(assert (=> b!6486002 (=> res!2663700 e!3930987)))

(declare-fun b!6486003 () Bool)

(declare-fun e!3930983 () Bool)

(assert (=> b!6486003 (= e!3930984 e!3930983)))

(assert (=> b!6486003 (= c!1188293 ((_ is Star!16365) lt!2388335))))

(assert (=> b!6486004 (= e!3930983 call!561356)))

(declare-fun e!3930985 () Bool)

(assert (=> b!6486005 (= e!3930985 call!561356)))

(declare-fun b!6486007 () Bool)

(assert (=> b!6486007 (= e!3930987 (matchRSpec!3466 (regTwo!33243 lt!2388335) s!2326))))

(declare-fun b!6486008 () Bool)

(declare-fun res!2663698 () Bool)

(assert (=> b!6486008 (=> res!2663698 e!3930985)))

(declare-fun call!561357 () Bool)

(assert (=> b!6486008 (= res!2663698 call!561357)))

(assert (=> b!6486008 (= e!3930983 e!3930985)))

(declare-fun b!6486006 () Bool)

(assert (=> b!6486006 (= e!3930989 (= s!2326 (Cons!65270 (c!1188049 lt!2388335) Nil!65270)))))

(declare-fun d!2034690 () Bool)

(declare-fun c!1188295 () Bool)

(assert (=> d!2034690 (= c!1188295 ((_ is EmptyExpr!16365) lt!2388335))))

(assert (=> d!2034690 (= (matchRSpec!3466 lt!2388335 s!2326) e!3930986)))

(declare-fun b!6486009 () Bool)

(assert (=> b!6486009 (= e!3930986 call!561357)))

(declare-fun bm!561352 () Bool)

(assert (=> bm!561352 (= call!561357 (isEmpty!37460 s!2326))))

(assert (= (and d!2034690 c!1188295) b!6486009))

(assert (= (and d!2034690 (not c!1188295)) b!6486001))

(assert (= (and b!6486001 res!2663699) b!6485999))

(assert (= (and b!6485999 c!1188292) b!6486006))

(assert (= (and b!6485999 (not c!1188292)) b!6486000))

(assert (= (and b!6486000 c!1188294) b!6486002))

(assert (= (and b!6486000 (not c!1188294)) b!6486003))

(assert (= (and b!6486002 (not res!2663700)) b!6486007))

(assert (= (and b!6486003 c!1188293) b!6486008))

(assert (= (and b!6486003 (not c!1188293)) b!6486004))

(assert (= (and b!6486008 (not res!2663698)) b!6486005))

(assert (= (or b!6486005 b!6486004) bm!561351))

(assert (= (or b!6486009 b!6486008) bm!561352))

(declare-fun m!7274384 () Bool)

(assert (=> bm!561351 m!7274384))

(declare-fun m!7274386 () Bool)

(assert (=> b!6486002 m!7274386))

(declare-fun m!7274388 () Bool)

(assert (=> b!6486007 m!7274388))

(assert (=> bm!561352 m!7274348))

(assert (=> b!6485094 d!2034690))

(declare-fun b!6486010 () Bool)

(declare-fun e!3930995 () Bool)

(assert (=> b!6486010 (= e!3930995 (matchR!8548 (derivativeStep!5061 lt!2388335 (head!13205 s!2326)) (tail!12290 s!2326)))))

(declare-fun b!6486011 () Bool)

(assert (=> b!6486011 (= e!3930995 (nullable!6358 lt!2388335))))

(declare-fun b!6486012 () Bool)

(declare-fun e!3930992 () Bool)

(assert (=> b!6486012 (= e!3930992 (not (= (head!13205 s!2326) (c!1188049 lt!2388335))))))

(declare-fun b!6486013 () Bool)

(declare-fun res!2663705 () Bool)

(declare-fun e!3930993 () Bool)

(assert (=> b!6486013 (=> res!2663705 e!3930993)))

(assert (=> b!6486013 (= res!2663705 (not ((_ is ElementMatch!16365) lt!2388335)))))

(declare-fun e!3930991 () Bool)

(assert (=> b!6486013 (= e!3930991 e!3930993)))

(declare-fun b!6486014 () Bool)

(declare-fun res!2663701 () Bool)

(assert (=> b!6486014 (=> res!2663701 e!3930992)))

(assert (=> b!6486014 (= res!2663701 (not (isEmpty!37460 (tail!12290 s!2326))))))

(declare-fun b!6486015 () Bool)

(declare-fun lt!2388501 () Bool)

(assert (=> b!6486015 (= e!3930991 (not lt!2388501))))

(declare-fun b!6486016 () Bool)

(declare-fun res!2663708 () Bool)

(declare-fun e!3930996 () Bool)

(assert (=> b!6486016 (=> (not res!2663708) (not e!3930996))))

(assert (=> b!6486016 (= res!2663708 (isEmpty!37460 (tail!12290 s!2326)))))

(declare-fun b!6486017 () Bool)

(declare-fun e!3930994 () Bool)

(declare-fun call!561358 () Bool)

(assert (=> b!6486017 (= e!3930994 (= lt!2388501 call!561358))))

(declare-fun bm!561353 () Bool)

(assert (=> bm!561353 (= call!561358 (isEmpty!37460 s!2326))))

(declare-fun b!6486018 () Bool)

(declare-fun res!2663703 () Bool)

(assert (=> b!6486018 (=> res!2663703 e!3930993)))

(assert (=> b!6486018 (= res!2663703 e!3930996)))

(declare-fun res!2663702 () Bool)

(assert (=> b!6486018 (=> (not res!2663702) (not e!3930996))))

(assert (=> b!6486018 (= res!2663702 lt!2388501)))

(declare-fun b!6486019 () Bool)

(declare-fun e!3930990 () Bool)

(assert (=> b!6486019 (= e!3930990 e!3930992)))

(declare-fun res!2663707 () Bool)

(assert (=> b!6486019 (=> res!2663707 e!3930992)))

(assert (=> b!6486019 (= res!2663707 call!561358)))

(declare-fun d!2034692 () Bool)

(assert (=> d!2034692 e!3930994))

(declare-fun c!1188298 () Bool)

(assert (=> d!2034692 (= c!1188298 ((_ is EmptyExpr!16365) lt!2388335))))

(assert (=> d!2034692 (= lt!2388501 e!3930995)))

(declare-fun c!1188297 () Bool)

(assert (=> d!2034692 (= c!1188297 (isEmpty!37460 s!2326))))

(assert (=> d!2034692 (validRegex!8101 lt!2388335)))

(assert (=> d!2034692 (= (matchR!8548 lt!2388335 s!2326) lt!2388501)))

(declare-fun b!6486020 () Bool)

(declare-fun res!2663706 () Bool)

(assert (=> b!6486020 (=> (not res!2663706) (not e!3930996))))

(assert (=> b!6486020 (= res!2663706 (not call!561358))))

(declare-fun b!6486021 () Bool)

(assert (=> b!6486021 (= e!3930996 (= (head!13205 s!2326) (c!1188049 lt!2388335)))))

(declare-fun b!6486022 () Bool)

(assert (=> b!6486022 (= e!3930994 e!3930991)))

(declare-fun c!1188296 () Bool)

(assert (=> b!6486022 (= c!1188296 ((_ is EmptyLang!16365) lt!2388335))))

(declare-fun b!6486023 () Bool)

(assert (=> b!6486023 (= e!3930993 e!3930990)))

(declare-fun res!2663704 () Bool)

(assert (=> b!6486023 (=> (not res!2663704) (not e!3930990))))

(assert (=> b!6486023 (= res!2663704 (not lt!2388501))))

(assert (= (and d!2034692 c!1188297) b!6486011))

(assert (= (and d!2034692 (not c!1188297)) b!6486010))

(assert (= (and d!2034692 c!1188298) b!6486017))

(assert (= (and d!2034692 (not c!1188298)) b!6486022))

(assert (= (and b!6486022 c!1188296) b!6486015))

(assert (= (and b!6486022 (not c!1188296)) b!6486013))

(assert (= (and b!6486013 (not res!2663705)) b!6486018))

(assert (= (and b!6486018 res!2663702) b!6486020))

(assert (= (and b!6486020 res!2663706) b!6486016))

(assert (= (and b!6486016 res!2663708) b!6486021))

(assert (= (and b!6486018 (not res!2663703)) b!6486023))

(assert (= (and b!6486023 res!2663704) b!6486019))

(assert (= (and b!6486019 (not res!2663707)) b!6486014))

(assert (= (and b!6486014 (not res!2663701)) b!6486012))

(assert (= (or b!6486017 b!6486019 b!6486020) bm!561353))

(assert (=> b!6486010 m!7274352))

(assert (=> b!6486010 m!7274352))

(declare-fun m!7274390 () Bool)

(assert (=> b!6486010 m!7274390))

(assert (=> b!6486010 m!7274356))

(assert (=> b!6486010 m!7274390))

(assert (=> b!6486010 m!7274356))

(declare-fun m!7274392 () Bool)

(assert (=> b!6486010 m!7274392))

(assert (=> b!6486021 m!7274352))

(assert (=> b!6486014 m!7274356))

(assert (=> b!6486014 m!7274356))

(declare-fun m!7274394 () Bool)

(assert (=> b!6486014 m!7274394))

(assert (=> b!6486016 m!7274356))

(assert (=> b!6486016 m!7274356))

(assert (=> b!6486016 m!7274394))

(assert (=> bm!561353 m!7274348))

(declare-fun m!7274396 () Bool)

(assert (=> b!6486011 m!7274396))

(assert (=> d!2034692 m!7274348))

(declare-fun m!7274398 () Bool)

(assert (=> d!2034692 m!7274398))

(assert (=> b!6486012 m!7274352))

(assert (=> b!6485094 d!2034692))

(declare-fun d!2034694 () Bool)

(assert (=> d!2034694 (= (matchR!8548 lt!2388335 s!2326) (matchRSpec!3466 lt!2388335 s!2326))))

(declare-fun lt!2388502 () Unit!158791)

(assert (=> d!2034694 (= lt!2388502 (choose!48127 lt!2388335 s!2326))))

(assert (=> d!2034694 (validRegex!8101 lt!2388335)))

(assert (=> d!2034694 (= (mainMatchTheorem!3466 lt!2388335 s!2326) lt!2388502)))

(declare-fun bs!1645498 () Bool)

(assert (= bs!1645498 d!2034694))

(assert (=> bs!1645498 m!7273506))

(assert (=> bs!1645498 m!7273504))

(declare-fun m!7274400 () Bool)

(assert (=> bs!1645498 m!7274400))

(assert (=> bs!1645498 m!7274398))

(assert (=> b!6485094 d!2034694))

(declare-fun d!2034696 () Bool)

(assert (=> d!2034696 (= (isEmpty!37462 (t!379021 (exprs!6249 (h!71720 zl!343)))) ((_ is Nil!65271) (t!379021 (exprs!6249 (h!71720 zl!343)))))))

(assert (=> b!6485092 d!2034696))

(declare-fun b!6486024 () Bool)

(declare-fun e!3931002 () Bool)

(assert (=> b!6486024 (= e!3931002 (matchR!8548 (derivativeStep!5061 lt!2388338 (head!13205 (_2!36647 lt!2388318))) (tail!12290 (_2!36647 lt!2388318))))))

(declare-fun b!6486025 () Bool)

(assert (=> b!6486025 (= e!3931002 (nullable!6358 lt!2388338))))

(declare-fun b!6486026 () Bool)

(declare-fun e!3930999 () Bool)

(assert (=> b!6486026 (= e!3930999 (not (= (head!13205 (_2!36647 lt!2388318)) (c!1188049 lt!2388338))))))

(declare-fun b!6486027 () Bool)

(declare-fun res!2663713 () Bool)

(declare-fun e!3931000 () Bool)

(assert (=> b!6486027 (=> res!2663713 e!3931000)))

(assert (=> b!6486027 (= res!2663713 (not ((_ is ElementMatch!16365) lt!2388338)))))

(declare-fun e!3930998 () Bool)

(assert (=> b!6486027 (= e!3930998 e!3931000)))

(declare-fun b!6486028 () Bool)

(declare-fun res!2663709 () Bool)

(assert (=> b!6486028 (=> res!2663709 e!3930999)))

(assert (=> b!6486028 (= res!2663709 (not (isEmpty!37460 (tail!12290 (_2!36647 lt!2388318)))))))

(declare-fun b!6486029 () Bool)

(declare-fun lt!2388503 () Bool)

(assert (=> b!6486029 (= e!3930998 (not lt!2388503))))

(declare-fun b!6486030 () Bool)

(declare-fun res!2663716 () Bool)

(declare-fun e!3931003 () Bool)

(assert (=> b!6486030 (=> (not res!2663716) (not e!3931003))))

(assert (=> b!6486030 (= res!2663716 (isEmpty!37460 (tail!12290 (_2!36647 lt!2388318))))))

(declare-fun b!6486031 () Bool)

(declare-fun e!3931001 () Bool)

(declare-fun call!561359 () Bool)

(assert (=> b!6486031 (= e!3931001 (= lt!2388503 call!561359))))

(declare-fun bm!561354 () Bool)

(assert (=> bm!561354 (= call!561359 (isEmpty!37460 (_2!36647 lt!2388318)))))

(declare-fun b!6486032 () Bool)

(declare-fun res!2663711 () Bool)

(assert (=> b!6486032 (=> res!2663711 e!3931000)))

(assert (=> b!6486032 (= res!2663711 e!3931003)))

(declare-fun res!2663710 () Bool)

(assert (=> b!6486032 (=> (not res!2663710) (not e!3931003))))

(assert (=> b!6486032 (= res!2663710 lt!2388503)))

(declare-fun b!6486033 () Bool)

(declare-fun e!3930997 () Bool)

(assert (=> b!6486033 (= e!3930997 e!3930999)))

(declare-fun res!2663715 () Bool)

(assert (=> b!6486033 (=> res!2663715 e!3930999)))

(assert (=> b!6486033 (= res!2663715 call!561359)))

(declare-fun d!2034698 () Bool)

(assert (=> d!2034698 e!3931001))

(declare-fun c!1188301 () Bool)

(assert (=> d!2034698 (= c!1188301 ((_ is EmptyExpr!16365) lt!2388338))))

(assert (=> d!2034698 (= lt!2388503 e!3931002)))

(declare-fun c!1188300 () Bool)

(assert (=> d!2034698 (= c!1188300 (isEmpty!37460 (_2!36647 lt!2388318)))))

(assert (=> d!2034698 (validRegex!8101 lt!2388338)))

(assert (=> d!2034698 (= (matchR!8548 lt!2388338 (_2!36647 lt!2388318)) lt!2388503)))

(declare-fun b!6486034 () Bool)

(declare-fun res!2663714 () Bool)

(assert (=> b!6486034 (=> (not res!2663714) (not e!3931003))))

(assert (=> b!6486034 (= res!2663714 (not call!561359))))

(declare-fun b!6486035 () Bool)

(assert (=> b!6486035 (= e!3931003 (= (head!13205 (_2!36647 lt!2388318)) (c!1188049 lt!2388338)))))

(declare-fun b!6486036 () Bool)

(assert (=> b!6486036 (= e!3931001 e!3930998)))

(declare-fun c!1188299 () Bool)

(assert (=> b!6486036 (= c!1188299 ((_ is EmptyLang!16365) lt!2388338))))

(declare-fun b!6486037 () Bool)

(assert (=> b!6486037 (= e!3931000 e!3930997)))

(declare-fun res!2663712 () Bool)

(assert (=> b!6486037 (=> (not res!2663712) (not e!3930997))))

(assert (=> b!6486037 (= res!2663712 (not lt!2388503))))

(assert (= (and d!2034698 c!1188300) b!6486025))

(assert (= (and d!2034698 (not c!1188300)) b!6486024))

(assert (= (and d!2034698 c!1188301) b!6486031))

(assert (= (and d!2034698 (not c!1188301)) b!6486036))

(assert (= (and b!6486036 c!1188299) b!6486029))

(assert (= (and b!6486036 (not c!1188299)) b!6486027))

(assert (= (and b!6486027 (not res!2663713)) b!6486032))

(assert (= (and b!6486032 res!2663710) b!6486034))

(assert (= (and b!6486034 res!2663714) b!6486030))

(assert (= (and b!6486030 res!2663716) b!6486035))

(assert (= (and b!6486032 (not res!2663711)) b!6486037))

(assert (= (and b!6486037 res!2663712) b!6486033))

(assert (= (and b!6486033 (not res!2663715)) b!6486028))

(assert (= (and b!6486028 (not res!2663709)) b!6486026))

(assert (= (or b!6486031 b!6486033 b!6486034) bm!561354))

(declare-fun m!7274402 () Bool)

(assert (=> b!6486024 m!7274402))

(assert (=> b!6486024 m!7274402))

(declare-fun m!7274404 () Bool)

(assert (=> b!6486024 m!7274404))

(declare-fun m!7274406 () Bool)

(assert (=> b!6486024 m!7274406))

(assert (=> b!6486024 m!7274404))

(assert (=> b!6486024 m!7274406))

(declare-fun m!7274408 () Bool)

(assert (=> b!6486024 m!7274408))

(assert (=> b!6486035 m!7274402))

(assert (=> b!6486028 m!7274406))

(assert (=> b!6486028 m!7274406))

(declare-fun m!7274410 () Bool)

(assert (=> b!6486028 m!7274410))

(assert (=> b!6486030 m!7274406))

(assert (=> b!6486030 m!7274406))

(assert (=> b!6486030 m!7274410))

(declare-fun m!7274412 () Bool)

(assert (=> bm!561354 m!7274412))

(assert (=> b!6486025 m!7273778))

(assert (=> d!2034698 m!7274412))

(assert (=> d!2034698 m!7273780))

(assert (=> b!6486026 m!7274402))

(assert (=> b!6485073 d!2034698))

(declare-fun b!6486056 () Bool)

(declare-fun e!3931018 () Bool)

(declare-fun e!3931019 () Bool)

(assert (=> b!6486056 (= e!3931018 e!3931019)))

(declare-fun c!1188307 () Bool)

(assert (=> b!6486056 (= c!1188307 ((_ is Union!16365) r!7292))))

(declare-fun bm!561361 () Bool)

(declare-fun call!561368 () Bool)

(declare-fun call!561367 () Bool)

(assert (=> bm!561361 (= call!561368 call!561367)))

(declare-fun b!6486057 () Bool)

(declare-fun e!3931022 () Bool)

(declare-fun e!3931021 () Bool)

(assert (=> b!6486057 (= e!3931022 e!3931021)))

(declare-fun res!2663729 () Bool)

(assert (=> b!6486057 (=> (not res!2663729) (not e!3931021))))

(declare-fun call!561366 () Bool)

(assert (=> b!6486057 (= res!2663729 call!561366)))

(declare-fun bm!561362 () Bool)

(assert (=> bm!561362 (= call!561366 (validRegex!8101 (ite c!1188307 (regOne!33243 r!7292) (regOne!33242 r!7292))))))

(declare-fun b!6486058 () Bool)

(declare-fun e!3931020 () Bool)

(assert (=> b!6486058 (= e!3931020 call!561368)))

(declare-fun b!6486059 () Bool)

(declare-fun res!2663731 () Bool)

(assert (=> b!6486059 (=> res!2663731 e!3931022)))

(assert (=> b!6486059 (= res!2663731 (not ((_ is Concat!25210) r!7292)))))

(assert (=> b!6486059 (= e!3931019 e!3931022)))

(declare-fun b!6486060 () Bool)

(declare-fun e!3931024 () Bool)

(assert (=> b!6486060 (= e!3931024 e!3931018)))

(declare-fun c!1188306 () Bool)

(assert (=> b!6486060 (= c!1188306 ((_ is Star!16365) r!7292))))

(declare-fun bm!561363 () Bool)

(assert (=> bm!561363 (= call!561367 (validRegex!8101 (ite c!1188306 (reg!16694 r!7292) (ite c!1188307 (regTwo!33243 r!7292) (regTwo!33242 r!7292)))))))

(declare-fun b!6486061 () Bool)

(declare-fun res!2663728 () Bool)

(assert (=> b!6486061 (=> (not res!2663728) (not e!3931020))))

(assert (=> b!6486061 (= res!2663728 call!561366)))

(assert (=> b!6486061 (= e!3931019 e!3931020)))

(declare-fun d!2034700 () Bool)

(declare-fun res!2663730 () Bool)

(assert (=> d!2034700 (=> res!2663730 e!3931024)))

(assert (=> d!2034700 (= res!2663730 ((_ is ElementMatch!16365) r!7292))))

(assert (=> d!2034700 (= (validRegex!8101 r!7292) e!3931024)))

(declare-fun b!6486062 () Bool)

(declare-fun e!3931023 () Bool)

(assert (=> b!6486062 (= e!3931018 e!3931023)))

(declare-fun res!2663727 () Bool)

(assert (=> b!6486062 (= res!2663727 (not (nullable!6358 (reg!16694 r!7292))))))

(assert (=> b!6486062 (=> (not res!2663727) (not e!3931023))))

(declare-fun b!6486063 () Bool)

(assert (=> b!6486063 (= e!3931023 call!561367)))

(declare-fun b!6486064 () Bool)

(assert (=> b!6486064 (= e!3931021 call!561368)))

(assert (= (and d!2034700 (not res!2663730)) b!6486060))

(assert (= (and b!6486060 c!1188306) b!6486062))

(assert (= (and b!6486060 (not c!1188306)) b!6486056))

(assert (= (and b!6486062 res!2663727) b!6486063))

(assert (= (and b!6486056 c!1188307) b!6486061))

(assert (= (and b!6486056 (not c!1188307)) b!6486059))

(assert (= (and b!6486061 res!2663728) b!6486058))

(assert (= (and b!6486059 (not res!2663731)) b!6486057))

(assert (= (and b!6486057 res!2663729) b!6486064))

(assert (= (or b!6486058 b!6486064) bm!561361))

(assert (= (or b!6486061 b!6486057) bm!561362))

(assert (= (or b!6486063 bm!561361) bm!561363))

(declare-fun m!7274414 () Bool)

(assert (=> bm!561362 m!7274414))

(declare-fun m!7274416 () Bool)

(assert (=> bm!561363 m!7274416))

(declare-fun m!7274418 () Bool)

(assert (=> b!6486062 m!7274418))

(assert (=> start!637438 d!2034700))

(declare-fun bm!561364 () Bool)

(declare-fun call!561370 () List!65395)

(declare-fun call!561373 () List!65395)

(assert (=> bm!561364 (= call!561370 call!561373)))

(declare-fun b!6486065 () Bool)

(declare-fun e!3931026 () (InoxSet Context!11498))

(declare-fun e!3931030 () (InoxSet Context!11498))

(assert (=> b!6486065 (= e!3931026 e!3931030)))

(declare-fun c!1188308 () Bool)

(assert (=> b!6486065 (= c!1188308 ((_ is Union!16365) (reg!16694 (regOne!33242 r!7292))))))

(declare-fun b!6486066 () Bool)

(declare-fun e!3931025 () (InoxSet Context!11498))

(declare-fun call!561369 () (InoxSet Context!11498))

(declare-fun call!561372 () (InoxSet Context!11498))

(assert (=> b!6486066 (= e!3931025 ((_ map or) call!561369 call!561372))))

(declare-fun b!6486067 () Bool)

(assert (=> b!6486067 (= e!3931026 (store ((as const (Array Context!11498 Bool)) false) lt!2388330 true))))

(declare-fun d!2034702 () Bool)

(declare-fun c!1188309 () Bool)

(assert (=> d!2034702 (= c!1188309 (and ((_ is ElementMatch!16365) (reg!16694 (regOne!33242 r!7292))) (= (c!1188049 (reg!16694 (regOne!33242 r!7292))) (h!71718 s!2326))))))

(assert (=> d!2034702 (= (derivationStepZipperDown!1613 (reg!16694 (regOne!33242 r!7292)) lt!2388330 (h!71718 s!2326)) e!3931026)))

(declare-fun b!6486068 () Bool)

(declare-fun e!3931027 () (InoxSet Context!11498))

(assert (=> b!6486068 (= e!3931025 e!3931027)))

(declare-fun c!1188311 () Bool)

(assert (=> b!6486068 (= c!1188311 ((_ is Concat!25210) (reg!16694 (regOne!33242 r!7292))))))

(declare-fun b!6486069 () Bool)

(declare-fun e!3931029 () (InoxSet Context!11498))

(assert (=> b!6486069 (= e!3931029 ((as const (Array Context!11498 Bool)) false))))

(declare-fun b!6486070 () Bool)

(declare-fun call!561371 () (InoxSet Context!11498))

(assert (=> b!6486070 (= e!3931027 call!561371)))

(declare-fun c!1188312 () Bool)

(declare-fun bm!561365 () Bool)

(assert (=> bm!561365 (= call!561373 ($colon$colon!2218 (exprs!6249 lt!2388330) (ite (or c!1188312 c!1188311) (regTwo!33242 (reg!16694 (regOne!33242 r!7292))) (reg!16694 (regOne!33242 r!7292)))))))

(declare-fun b!6486071 () Bool)

(declare-fun e!3931028 () Bool)

(assert (=> b!6486071 (= c!1188312 e!3931028)))

(declare-fun res!2663732 () Bool)

(assert (=> b!6486071 (=> (not res!2663732) (not e!3931028))))

(assert (=> b!6486071 (= res!2663732 ((_ is Concat!25210) (reg!16694 (regOne!33242 r!7292))))))

(assert (=> b!6486071 (= e!3931030 e!3931025)))

(declare-fun bm!561366 () Bool)

(declare-fun call!561374 () (InoxSet Context!11498))

(assert (=> bm!561366 (= call!561372 call!561374)))

(declare-fun b!6486072 () Bool)

(assert (=> b!6486072 (= e!3931030 ((_ map or) call!561369 call!561374))))

(declare-fun bm!561367 () Bool)

(assert (=> bm!561367 (= call!561374 (derivationStepZipperDown!1613 (ite c!1188308 (regTwo!33243 (reg!16694 (regOne!33242 r!7292))) (ite c!1188312 (regTwo!33242 (reg!16694 (regOne!33242 r!7292))) (ite c!1188311 (regOne!33242 (reg!16694 (regOne!33242 r!7292))) (reg!16694 (reg!16694 (regOne!33242 r!7292)))))) (ite (or c!1188308 c!1188312) lt!2388330 (Context!11499 call!561370)) (h!71718 s!2326)))))

(declare-fun bm!561368 () Bool)

(assert (=> bm!561368 (= call!561371 call!561372)))

(declare-fun bm!561369 () Bool)

(assert (=> bm!561369 (= call!561369 (derivationStepZipperDown!1613 (ite c!1188308 (regOne!33243 (reg!16694 (regOne!33242 r!7292))) (regOne!33242 (reg!16694 (regOne!33242 r!7292)))) (ite c!1188308 lt!2388330 (Context!11499 call!561373)) (h!71718 s!2326)))))

(declare-fun b!6486073 () Bool)

(assert (=> b!6486073 (= e!3931028 (nullable!6358 (regOne!33242 (reg!16694 (regOne!33242 r!7292)))))))

(declare-fun b!6486074 () Bool)

(assert (=> b!6486074 (= e!3931029 call!561371)))

(declare-fun b!6486075 () Bool)

(declare-fun c!1188310 () Bool)

(assert (=> b!6486075 (= c!1188310 ((_ is Star!16365) (reg!16694 (regOne!33242 r!7292))))))

(assert (=> b!6486075 (= e!3931027 e!3931029)))

(assert (= (and d!2034702 c!1188309) b!6486067))

(assert (= (and d!2034702 (not c!1188309)) b!6486065))

(assert (= (and b!6486065 c!1188308) b!6486072))

(assert (= (and b!6486065 (not c!1188308)) b!6486071))

(assert (= (and b!6486071 res!2663732) b!6486073))

(assert (= (and b!6486071 c!1188312) b!6486066))

(assert (= (and b!6486071 (not c!1188312)) b!6486068))

(assert (= (and b!6486068 c!1188311) b!6486070))

(assert (= (and b!6486068 (not c!1188311)) b!6486075))

(assert (= (and b!6486075 c!1188310) b!6486074))

(assert (= (and b!6486075 (not c!1188310)) b!6486069))

(assert (= (or b!6486070 b!6486074) bm!561364))

(assert (= (or b!6486070 b!6486074) bm!561368))

(assert (= (or b!6486066 bm!561364) bm!561365))

(assert (= (or b!6486066 bm!561368) bm!561366))

(assert (= (or b!6486072 bm!561366) bm!561367))

(assert (= (or b!6486072 b!6486066) bm!561369))

(declare-fun m!7274420 () Bool)

(assert (=> bm!561369 m!7274420))

(declare-fun m!7274422 () Bool)

(assert (=> b!6486073 m!7274422))

(assert (=> b!6486067 m!7273402))

(declare-fun m!7274424 () Bool)

(assert (=> bm!561367 m!7274424))

(declare-fun m!7274426 () Bool)

(assert (=> bm!561365 m!7274426))

(assert (=> b!6485096 d!2034702))

(declare-fun d!2034704 () Bool)

(assert (=> d!2034704 (= (flatMap!1870 lt!2388328 lambda!358932) (choose!48114 lt!2388328 lambda!358932))))

(declare-fun bs!1645499 () Bool)

(assert (= bs!1645499 d!2034704))

(declare-fun m!7274428 () Bool)

(assert (=> bs!1645499 m!7274428))

(assert (=> b!6485077 d!2034704))

(declare-fun b!6486076 () Bool)

(declare-fun e!3931032 () (InoxSet Context!11498))

(declare-fun e!3931033 () (InoxSet Context!11498))

(assert (=> b!6486076 (= e!3931032 e!3931033)))

(declare-fun c!1188313 () Bool)

(assert (=> b!6486076 (= c!1188313 ((_ is Cons!65271) (exprs!6249 lt!2388289)))))

(declare-fun d!2034706 () Bool)

(declare-fun c!1188314 () Bool)

(declare-fun e!3931031 () Bool)

(assert (=> d!2034706 (= c!1188314 e!3931031)))

(declare-fun res!2663733 () Bool)

(assert (=> d!2034706 (=> (not res!2663733) (not e!3931031))))

(assert (=> d!2034706 (= res!2663733 ((_ is Cons!65271) (exprs!6249 lt!2388289)))))

(assert (=> d!2034706 (= (derivationStepZipperUp!1539 lt!2388289 (h!71718 s!2326)) e!3931032)))

(declare-fun b!6486077 () Bool)

(declare-fun call!561375 () (InoxSet Context!11498))

(assert (=> b!6486077 (= e!3931032 ((_ map or) call!561375 (derivationStepZipperUp!1539 (Context!11499 (t!379021 (exprs!6249 lt!2388289))) (h!71718 s!2326))))))

(declare-fun b!6486078 () Bool)

(assert (=> b!6486078 (= e!3931033 call!561375)))

(declare-fun b!6486079 () Bool)

(assert (=> b!6486079 (= e!3931033 ((as const (Array Context!11498 Bool)) false))))

(declare-fun b!6486080 () Bool)

(assert (=> b!6486080 (= e!3931031 (nullable!6358 (h!71719 (exprs!6249 lt!2388289))))))

(declare-fun bm!561370 () Bool)

(assert (=> bm!561370 (= call!561375 (derivationStepZipperDown!1613 (h!71719 (exprs!6249 lt!2388289)) (Context!11499 (t!379021 (exprs!6249 lt!2388289))) (h!71718 s!2326)))))

(assert (= (and d!2034706 res!2663733) b!6486080))

(assert (= (and d!2034706 c!1188314) b!6486077))

(assert (= (and d!2034706 (not c!1188314)) b!6486076))

(assert (= (and b!6486076 c!1188313) b!6486078))

(assert (= (and b!6486076 (not c!1188313)) b!6486079))

(assert (= (or b!6486077 b!6486078) bm!561370))

(declare-fun m!7274430 () Bool)

(assert (=> b!6486077 m!7274430))

(declare-fun m!7274432 () Bool)

(assert (=> b!6486080 m!7274432))

(declare-fun m!7274434 () Bool)

(assert (=> bm!561370 m!7274434))

(assert (=> b!6485077 d!2034706))

(declare-fun d!2034708 () Bool)

(assert (=> d!2034708 (= (flatMap!1870 lt!2388328 lambda!358932) (dynLambda!25925 lambda!358932 lt!2388289))))

(declare-fun lt!2388504 () Unit!158791)

(assert (=> d!2034708 (= lt!2388504 (choose!48116 lt!2388328 lt!2388289 lambda!358932))))

(assert (=> d!2034708 (= lt!2388328 (store ((as const (Array Context!11498 Bool)) false) lt!2388289 true))))

(assert (=> d!2034708 (= (lemmaFlatMapOnSingletonSet!1396 lt!2388328 lt!2388289 lambda!358932) lt!2388504)))

(declare-fun b_lambda!245591 () Bool)

(assert (=> (not b_lambda!245591) (not d!2034708)))

(declare-fun bs!1645500 () Bool)

(assert (= bs!1645500 d!2034708))

(assert (=> bs!1645500 m!7273496))

(declare-fun m!7274436 () Bool)

(assert (=> bs!1645500 m!7274436))

(declare-fun m!7274438 () Bool)

(assert (=> bs!1645500 m!7274438))

(assert (=> bs!1645500 m!7273498))

(assert (=> b!6485077 d!2034708))

(declare-fun bs!1645501 () Bool)

(declare-fun d!2034710 () Bool)

(assert (= bs!1645501 (and d!2034710 b!6485086)))

(declare-fun lambda!359021 () Int)

(assert (=> bs!1645501 (= lambda!359021 lambda!358932)))

(assert (=> d!2034710 true))

(assert (=> d!2034710 (= (derivationStepZipper!2331 lt!2388328 (h!71718 s!2326)) (flatMap!1870 lt!2388328 lambda!359021))))

(declare-fun bs!1645502 () Bool)

(assert (= bs!1645502 d!2034710))

(declare-fun m!7274440 () Bool)

(assert (=> bs!1645502 m!7274440))

(assert (=> b!6485077 d!2034710))

(declare-fun bs!1645503 () Bool)

(declare-fun b!6486089 () Bool)

(assert (= bs!1645503 (and b!6486089 b!6485097)))

(declare-fun lambda!359022 () Int)

(assert (=> bs!1645503 (not (= lambda!359022 lambda!358931))))

(declare-fun bs!1645504 () Bool)

(assert (= bs!1645504 (and b!6486089 d!2034600)))

(assert (=> bs!1645504 (not (= lambda!359022 lambda!359005))))

(declare-fun bs!1645505 () Bool)

(assert (= bs!1645505 (and b!6486089 b!6485065)))

(assert (=> bs!1645505 (= (and (= s!2326 (_1!36647 lt!2388334)) (= (reg!16694 r!7292) (reg!16694 (regOne!33242 r!7292))) (= r!7292 lt!2388338)) (= lambda!359022 lambda!358936))))

(declare-fun bs!1645506 () Bool)

(assert (= bs!1645506 (and b!6486089 d!2034550)))

(assert (=> bs!1645506 (= (and (= s!2326 (_1!36647 lt!2388334)) (= (reg!16694 r!7292) (reg!16694 (regOne!33242 r!7292))) (= r!7292 (Star!16365 (reg!16694 (regOne!33242 r!7292))))) (= lambda!359022 lambda!358983))))

(declare-fun bs!1645507 () Bool)

(assert (= bs!1645507 (and b!6486089 b!6485058)))

(assert (=> bs!1645507 (not (= lambda!359022 lambda!358934))))

(assert (=> bs!1645504 (not (= lambda!359022 lambda!359003))))

(assert (=> bs!1645507 (not (= lambda!359022 lambda!358933))))

(assert (=> bs!1645506 (not (= lambda!359022 lambda!358981))))

(declare-fun bs!1645508 () Bool)

(assert (= bs!1645508 (and b!6486089 d!2034534)))

(assert (=> bs!1645508 (not (= lambda!359022 lambda!358976))))

(assert (=> bs!1645503 (not (= lambda!359022 lambda!358930))))

(declare-fun bs!1645509 () Bool)

(assert (= bs!1645509 (and b!6486089 b!6486005)))

(assert (=> bs!1645509 (= (and (= (reg!16694 r!7292) (reg!16694 lt!2388335)) (= r!7292 lt!2388335)) (= lambda!359022 lambda!359017))))

(declare-fun bs!1645510 () Bool)

(assert (= bs!1645510 (and b!6486089 b!6485711)))

(assert (=> bs!1645510 (= (and (= s!2326 (_1!36647 lt!2388334)) (= (reg!16694 r!7292) (reg!16694 lt!2388338)) (= r!7292 lt!2388338)) (= lambda!359022 lambda!358991))))

(assert (=> bs!1645505 (not (= lambda!359022 lambda!358935))))

(assert (=> bs!1645505 (not (= lambda!359022 lambda!358937))))

(declare-fun bs!1645511 () Bool)

(assert (= bs!1645511 (and b!6486089 b!6486004)))

(assert (=> bs!1645511 (not (= lambda!359022 lambda!359018))))

(declare-fun bs!1645512 () Bool)

(assert (= bs!1645512 (and b!6486089 b!6485710)))

(assert (=> bs!1645512 (not (= lambda!359022 lambda!358992))))

(assert (=> b!6486089 true))

(assert (=> b!6486089 true))

(declare-fun bs!1645513 () Bool)

(declare-fun b!6486088 () Bool)

(assert (= bs!1645513 (and b!6486088 b!6485097)))

(declare-fun lambda!359023 () Int)

(assert (=> bs!1645513 (= lambda!359023 lambda!358931)))

(declare-fun bs!1645514 () Bool)

(assert (= bs!1645514 (and b!6486088 d!2034600)))

(assert (=> bs!1645514 (= (and (= s!2326 (_1!36647 lt!2388334)) (= (regOne!33242 r!7292) (reg!16694 (regOne!33242 r!7292))) (= (regTwo!33242 r!7292) lt!2388338)) (= lambda!359023 lambda!359005))))

(declare-fun bs!1645515 () Bool)

(assert (= bs!1645515 (and b!6486088 b!6485065)))

(assert (=> bs!1645515 (not (= lambda!359023 lambda!358936))))

(declare-fun bs!1645516 () Bool)

(assert (= bs!1645516 (and b!6486088 b!6486089)))

(assert (=> bs!1645516 (not (= lambda!359023 lambda!359022))))

(declare-fun bs!1645517 () Bool)

(assert (= bs!1645517 (and b!6486088 d!2034550)))

(assert (=> bs!1645517 (not (= lambda!359023 lambda!358983))))

(declare-fun bs!1645518 () Bool)

(assert (= bs!1645518 (and b!6486088 b!6485058)))

(assert (=> bs!1645518 (= (= (regOne!33242 r!7292) lt!2388338) (= lambda!359023 lambda!358934))))

(assert (=> bs!1645514 (not (= lambda!359023 lambda!359003))))

(assert (=> bs!1645518 (not (= lambda!359023 lambda!358933))))

(assert (=> bs!1645517 (not (= lambda!359023 lambda!358981))))

(declare-fun bs!1645519 () Bool)

(assert (= bs!1645519 (and b!6486088 d!2034534)))

(assert (=> bs!1645519 (not (= lambda!359023 lambda!358976))))

(assert (=> bs!1645513 (not (= lambda!359023 lambda!358930))))

(declare-fun bs!1645520 () Bool)

(assert (= bs!1645520 (and b!6486088 b!6486005)))

(assert (=> bs!1645520 (not (= lambda!359023 lambda!359017))))

(declare-fun bs!1645521 () Bool)

(assert (= bs!1645521 (and b!6486088 b!6485711)))

(assert (=> bs!1645521 (not (= lambda!359023 lambda!358991))))

(assert (=> bs!1645515 (not (= lambda!359023 lambda!358935))))

(assert (=> bs!1645515 (= (and (= s!2326 (_1!36647 lt!2388334)) (= (regOne!33242 r!7292) (reg!16694 (regOne!33242 r!7292))) (= (regTwo!33242 r!7292) lt!2388338)) (= lambda!359023 lambda!358937))))

(declare-fun bs!1645522 () Bool)

(assert (= bs!1645522 (and b!6486088 b!6486004)))

(assert (=> bs!1645522 (= (and (= (regOne!33242 r!7292) (regOne!33242 lt!2388335)) (= (regTwo!33242 r!7292) (regTwo!33242 lt!2388335))) (= lambda!359023 lambda!359018))))

(declare-fun bs!1645523 () Bool)

(assert (= bs!1645523 (and b!6486088 b!6485710)))

(assert (=> bs!1645523 (= (and (= s!2326 (_1!36647 lt!2388334)) (= (regOne!33242 r!7292) (regOne!33242 lt!2388338)) (= (regTwo!33242 r!7292) (regTwo!33242 lt!2388338))) (= lambda!359023 lambda!358992))))

(assert (=> b!6486088 true))

(assert (=> b!6486088 true))

(declare-fun b!6486083 () Bool)

(declare-fun c!1188317 () Bool)

(assert (=> b!6486083 (= c!1188317 ((_ is ElementMatch!16365) r!7292))))

(declare-fun e!3931039 () Bool)

(declare-fun e!3931040 () Bool)

(assert (=> b!6486083 (= e!3931039 e!3931040)))

(declare-fun bm!561371 () Bool)

(declare-fun c!1188318 () Bool)

(declare-fun call!561376 () Bool)

(assert (=> bm!561371 (= call!561376 (Exists!3435 (ite c!1188318 lambda!359022 lambda!359023)))))

(declare-fun b!6486084 () Bool)

(declare-fun c!1188319 () Bool)

(assert (=> b!6486084 (= c!1188319 ((_ is Union!16365) r!7292))))

(declare-fun e!3931035 () Bool)

(assert (=> b!6486084 (= e!3931040 e!3931035)))

(declare-fun b!6486085 () Bool)

(declare-fun e!3931037 () Bool)

(assert (=> b!6486085 (= e!3931037 e!3931039)))

(declare-fun res!2663735 () Bool)

(assert (=> b!6486085 (= res!2663735 (not ((_ is EmptyLang!16365) r!7292)))))

(assert (=> b!6486085 (=> (not res!2663735) (not e!3931039))))

(declare-fun b!6486086 () Bool)

(declare-fun e!3931038 () Bool)

(assert (=> b!6486086 (= e!3931035 e!3931038)))

(declare-fun res!2663736 () Bool)

(assert (=> b!6486086 (= res!2663736 (matchRSpec!3466 (regOne!33243 r!7292) s!2326))))

(assert (=> b!6486086 (=> res!2663736 e!3931038)))

(declare-fun b!6486087 () Bool)

(declare-fun e!3931034 () Bool)

(assert (=> b!6486087 (= e!3931035 e!3931034)))

(assert (=> b!6486087 (= c!1188318 ((_ is Star!16365) r!7292))))

(assert (=> b!6486088 (= e!3931034 call!561376)))

(declare-fun e!3931036 () Bool)

(assert (=> b!6486089 (= e!3931036 call!561376)))

(declare-fun b!6486091 () Bool)

(assert (=> b!6486091 (= e!3931038 (matchRSpec!3466 (regTwo!33243 r!7292) s!2326))))

(declare-fun b!6486092 () Bool)

(declare-fun res!2663734 () Bool)

(assert (=> b!6486092 (=> res!2663734 e!3931036)))

(declare-fun call!561377 () Bool)

(assert (=> b!6486092 (= res!2663734 call!561377)))

(assert (=> b!6486092 (= e!3931034 e!3931036)))

(declare-fun b!6486090 () Bool)

(assert (=> b!6486090 (= e!3931040 (= s!2326 (Cons!65270 (c!1188049 r!7292) Nil!65270)))))

(declare-fun d!2034712 () Bool)

(declare-fun c!1188320 () Bool)

(assert (=> d!2034712 (= c!1188320 ((_ is EmptyExpr!16365) r!7292))))

(assert (=> d!2034712 (= (matchRSpec!3466 r!7292 s!2326) e!3931037)))

(declare-fun b!6486093 () Bool)

(assert (=> b!6486093 (= e!3931037 call!561377)))

(declare-fun bm!561372 () Bool)

(assert (=> bm!561372 (= call!561377 (isEmpty!37460 s!2326))))

(assert (= (and d!2034712 c!1188320) b!6486093))

(assert (= (and d!2034712 (not c!1188320)) b!6486085))

(assert (= (and b!6486085 res!2663735) b!6486083))

(assert (= (and b!6486083 c!1188317) b!6486090))

(assert (= (and b!6486083 (not c!1188317)) b!6486084))

(assert (= (and b!6486084 c!1188319) b!6486086))

(assert (= (and b!6486084 (not c!1188319)) b!6486087))

(assert (= (and b!6486086 (not res!2663736)) b!6486091))

(assert (= (and b!6486087 c!1188318) b!6486092))

(assert (= (and b!6486087 (not c!1188318)) b!6486088))

(assert (= (and b!6486092 (not res!2663734)) b!6486089))

(assert (= (or b!6486089 b!6486088) bm!561371))

(assert (= (or b!6486093 b!6486092) bm!561372))

(declare-fun m!7274442 () Bool)

(assert (=> bm!561371 m!7274442))

(declare-fun m!7274444 () Bool)

(assert (=> b!6486086 m!7274444))

(declare-fun m!7274446 () Bool)

(assert (=> b!6486091 m!7274446))

(assert (=> bm!561372 m!7274348))

(assert (=> b!6485075 d!2034712))

(declare-fun b!6486094 () Bool)

(declare-fun e!3931046 () Bool)

(assert (=> b!6486094 (= e!3931046 (matchR!8548 (derivativeStep!5061 r!7292 (head!13205 s!2326)) (tail!12290 s!2326)))))

(declare-fun b!6486095 () Bool)

(assert (=> b!6486095 (= e!3931046 (nullable!6358 r!7292))))

(declare-fun b!6486096 () Bool)

(declare-fun e!3931043 () Bool)

(assert (=> b!6486096 (= e!3931043 (not (= (head!13205 s!2326) (c!1188049 r!7292))))))

(declare-fun b!6486097 () Bool)

(declare-fun res!2663741 () Bool)

(declare-fun e!3931044 () Bool)

(assert (=> b!6486097 (=> res!2663741 e!3931044)))

(assert (=> b!6486097 (= res!2663741 (not ((_ is ElementMatch!16365) r!7292)))))

(declare-fun e!3931042 () Bool)

(assert (=> b!6486097 (= e!3931042 e!3931044)))

(declare-fun b!6486098 () Bool)

(declare-fun res!2663737 () Bool)

(assert (=> b!6486098 (=> res!2663737 e!3931043)))

(assert (=> b!6486098 (= res!2663737 (not (isEmpty!37460 (tail!12290 s!2326))))))

(declare-fun b!6486099 () Bool)

(declare-fun lt!2388505 () Bool)

(assert (=> b!6486099 (= e!3931042 (not lt!2388505))))

(declare-fun b!6486100 () Bool)

(declare-fun res!2663744 () Bool)

(declare-fun e!3931047 () Bool)

(assert (=> b!6486100 (=> (not res!2663744) (not e!3931047))))

(assert (=> b!6486100 (= res!2663744 (isEmpty!37460 (tail!12290 s!2326)))))

(declare-fun b!6486101 () Bool)

(declare-fun e!3931045 () Bool)

(declare-fun call!561378 () Bool)

(assert (=> b!6486101 (= e!3931045 (= lt!2388505 call!561378))))

(declare-fun bm!561373 () Bool)

(assert (=> bm!561373 (= call!561378 (isEmpty!37460 s!2326))))

(declare-fun b!6486102 () Bool)

(declare-fun res!2663739 () Bool)

(assert (=> b!6486102 (=> res!2663739 e!3931044)))

(assert (=> b!6486102 (= res!2663739 e!3931047)))

(declare-fun res!2663738 () Bool)

(assert (=> b!6486102 (=> (not res!2663738) (not e!3931047))))

(assert (=> b!6486102 (= res!2663738 lt!2388505)))

(declare-fun b!6486103 () Bool)

(declare-fun e!3931041 () Bool)

(assert (=> b!6486103 (= e!3931041 e!3931043)))

(declare-fun res!2663743 () Bool)

(assert (=> b!6486103 (=> res!2663743 e!3931043)))

(assert (=> b!6486103 (= res!2663743 call!561378)))

(declare-fun d!2034714 () Bool)

(assert (=> d!2034714 e!3931045))

(declare-fun c!1188323 () Bool)

(assert (=> d!2034714 (= c!1188323 ((_ is EmptyExpr!16365) r!7292))))

(assert (=> d!2034714 (= lt!2388505 e!3931046)))

(declare-fun c!1188322 () Bool)

(assert (=> d!2034714 (= c!1188322 (isEmpty!37460 s!2326))))

(assert (=> d!2034714 (validRegex!8101 r!7292)))

(assert (=> d!2034714 (= (matchR!8548 r!7292 s!2326) lt!2388505)))

(declare-fun b!6486104 () Bool)

(declare-fun res!2663742 () Bool)

(assert (=> b!6486104 (=> (not res!2663742) (not e!3931047))))

(assert (=> b!6486104 (= res!2663742 (not call!561378))))

(declare-fun b!6486105 () Bool)

(assert (=> b!6486105 (= e!3931047 (= (head!13205 s!2326) (c!1188049 r!7292)))))

(declare-fun b!6486106 () Bool)

(assert (=> b!6486106 (= e!3931045 e!3931042)))

(declare-fun c!1188321 () Bool)

(assert (=> b!6486106 (= c!1188321 ((_ is EmptyLang!16365) r!7292))))

(declare-fun b!6486107 () Bool)

(assert (=> b!6486107 (= e!3931044 e!3931041)))

(declare-fun res!2663740 () Bool)

(assert (=> b!6486107 (=> (not res!2663740) (not e!3931041))))

(assert (=> b!6486107 (= res!2663740 (not lt!2388505))))

(assert (= (and d!2034714 c!1188322) b!6486095))

(assert (= (and d!2034714 (not c!1188322)) b!6486094))

(assert (= (and d!2034714 c!1188323) b!6486101))

(assert (= (and d!2034714 (not c!1188323)) b!6486106))

(assert (= (and b!6486106 c!1188321) b!6486099))

(assert (= (and b!6486106 (not c!1188321)) b!6486097))

(assert (= (and b!6486097 (not res!2663741)) b!6486102))

(assert (= (and b!6486102 res!2663738) b!6486104))

(assert (= (and b!6486104 res!2663742) b!6486100))

(assert (= (and b!6486100 res!2663744) b!6486105))

(assert (= (and b!6486102 (not res!2663739)) b!6486107))

(assert (= (and b!6486107 res!2663740) b!6486103))

(assert (= (and b!6486103 (not res!2663743)) b!6486098))

(assert (= (and b!6486098 (not res!2663737)) b!6486096))

(assert (= (or b!6486101 b!6486103 b!6486104) bm!561373))

(assert (=> b!6486094 m!7274352))

(assert (=> b!6486094 m!7274352))

(declare-fun m!7274448 () Bool)

(assert (=> b!6486094 m!7274448))

(assert (=> b!6486094 m!7274356))

(assert (=> b!6486094 m!7274448))

(assert (=> b!6486094 m!7274356))

(declare-fun m!7274450 () Bool)

(assert (=> b!6486094 m!7274450))

(assert (=> b!6486105 m!7274352))

(assert (=> b!6486098 m!7274356))

(assert (=> b!6486098 m!7274356))

(assert (=> b!6486098 m!7274394))

(assert (=> b!6486100 m!7274356))

(assert (=> b!6486100 m!7274356))

(assert (=> b!6486100 m!7274394))

(assert (=> bm!561373 m!7274348))

(declare-fun m!7274452 () Bool)

(assert (=> b!6486095 m!7274452))

(assert (=> d!2034714 m!7274348))

(assert (=> d!2034714 m!7273382))

(assert (=> b!6486096 m!7274352))

(assert (=> b!6485075 d!2034714))

(declare-fun d!2034716 () Bool)

(assert (=> d!2034716 (= (matchR!8548 r!7292 s!2326) (matchRSpec!3466 r!7292 s!2326))))

(declare-fun lt!2388506 () Unit!158791)

(assert (=> d!2034716 (= lt!2388506 (choose!48127 r!7292 s!2326))))

(assert (=> d!2034716 (validRegex!8101 r!7292)))

(assert (=> d!2034716 (= (mainMatchTheorem!3466 r!7292 s!2326) lt!2388506)))

(declare-fun bs!1645524 () Bool)

(assert (= bs!1645524 d!2034716))

(assert (=> bs!1645524 m!7273392))

(assert (=> bs!1645524 m!7273390))

(declare-fun m!7274454 () Bool)

(assert (=> bs!1645524 m!7274454))

(assert (=> bs!1645524 m!7273382))

(assert (=> b!6485075 d!2034716))

(declare-fun bs!1645525 () Bool)

(declare-fun d!2034718 () Bool)

(assert (= bs!1645525 (and d!2034718 b!6485081)))

(declare-fun lambda!359026 () Int)

(assert (=> bs!1645525 (= lambda!359026 lambda!358938)))

(declare-fun bs!1645526 () Bool)

(assert (= bs!1645526 (and d!2034718 d!2034668)))

(assert (=> bs!1645526 (= lambda!359026 lambda!359013)))

(declare-fun bs!1645527 () Bool)

(assert (= bs!1645527 (and d!2034718 d!2034678)))

(assert (=> bs!1645527 (= lambda!359026 lambda!359016)))

(declare-fun b!6486128 () Bool)

(declare-fun e!3931061 () Regex!16365)

(declare-fun e!3931062 () Regex!16365)

(assert (=> b!6486128 (= e!3931061 e!3931062)))

(declare-fun c!1188335 () Bool)

(assert (=> b!6486128 (= c!1188335 ((_ is Cons!65271) (exprs!6249 (h!71720 zl!343))))))

(declare-fun b!6486129 () Bool)

(declare-fun e!3931060 () Bool)

(declare-fun e!3931064 () Bool)

(assert (=> b!6486129 (= e!3931060 e!3931064)))

(declare-fun c!1188333 () Bool)

(assert (=> b!6486129 (= c!1188333 (isEmpty!37462 (exprs!6249 (h!71720 zl!343))))))

(declare-fun b!6486130 () Bool)

(assert (=> b!6486130 (= e!3931061 (h!71719 (exprs!6249 (h!71720 zl!343))))))

(declare-fun b!6486131 () Bool)

(declare-fun e!3931065 () Bool)

(assert (=> b!6486131 (= e!3931065 (isEmpty!37462 (t!379021 (exprs!6249 (h!71720 zl!343)))))))

(declare-fun b!6486132 () Bool)

(declare-fun e!3931063 () Bool)

(assert (=> b!6486132 (= e!3931064 e!3931063)))

(declare-fun c!1188334 () Bool)

(assert (=> b!6486132 (= c!1188334 (isEmpty!37462 (tail!12291 (exprs!6249 (h!71720 zl!343)))))))

(declare-fun b!6486133 () Bool)

(assert (=> b!6486133 (= e!3931062 EmptyExpr!16365)))

(declare-fun b!6486134 () Bool)

(declare-fun lt!2388509 () Regex!16365)

(assert (=> b!6486134 (= e!3931063 (= lt!2388509 (head!13206 (exprs!6249 (h!71720 zl!343)))))))

(declare-fun b!6486135 () Bool)

(assert (=> b!6486135 (= e!3931062 (Concat!25210 (h!71719 (exprs!6249 (h!71720 zl!343))) (generalisedConcat!1962 (t!379021 (exprs!6249 (h!71720 zl!343))))))))

(assert (=> d!2034718 e!3931060))

(declare-fun res!2663750 () Bool)

(assert (=> d!2034718 (=> (not res!2663750) (not e!3931060))))

(assert (=> d!2034718 (= res!2663750 (validRegex!8101 lt!2388509))))

(assert (=> d!2034718 (= lt!2388509 e!3931061)))

(declare-fun c!1188332 () Bool)

(assert (=> d!2034718 (= c!1188332 e!3931065)))

(declare-fun res!2663749 () Bool)

(assert (=> d!2034718 (=> (not res!2663749) (not e!3931065))))

(assert (=> d!2034718 (= res!2663749 ((_ is Cons!65271) (exprs!6249 (h!71720 zl!343))))))

(assert (=> d!2034718 (forall!15548 (exprs!6249 (h!71720 zl!343)) lambda!359026)))

(assert (=> d!2034718 (= (generalisedConcat!1962 (exprs!6249 (h!71720 zl!343))) lt!2388509)))

(declare-fun b!6486136 () Bool)

(declare-fun isEmptyExpr!1757 (Regex!16365) Bool)

(assert (=> b!6486136 (= e!3931064 (isEmptyExpr!1757 lt!2388509))))

(declare-fun b!6486137 () Bool)

(declare-fun isConcat!1280 (Regex!16365) Bool)

(assert (=> b!6486137 (= e!3931063 (isConcat!1280 lt!2388509))))

(assert (= (and d!2034718 res!2663749) b!6486131))

(assert (= (and d!2034718 c!1188332) b!6486130))

(assert (= (and d!2034718 (not c!1188332)) b!6486128))

(assert (= (and b!6486128 c!1188335) b!6486135))

(assert (= (and b!6486128 (not c!1188335)) b!6486133))

(assert (= (and d!2034718 res!2663750) b!6486129))

(assert (= (and b!6486129 c!1188333) b!6486136))

(assert (= (and b!6486129 (not c!1188333)) b!6486132))

(assert (= (and b!6486132 c!1188334) b!6486134))

(assert (= (and b!6486132 (not c!1188334)) b!6486137))

(declare-fun m!7274456 () Bool)

(assert (=> d!2034718 m!7274456))

(declare-fun m!7274458 () Bool)

(assert (=> d!2034718 m!7274458))

(declare-fun m!7274460 () Bool)

(assert (=> b!6486129 m!7274460))

(declare-fun m!7274462 () Bool)

(assert (=> b!6486136 m!7274462))

(declare-fun m!7274464 () Bool)

(assert (=> b!6486132 m!7274464))

(assert (=> b!6486132 m!7274464))

(declare-fun m!7274466 () Bool)

(assert (=> b!6486132 m!7274466))

(assert (=> b!6486131 m!7273488))

(declare-fun m!7274468 () Bool)

(assert (=> b!6486135 m!7274468))

(declare-fun m!7274470 () Bool)

(assert (=> b!6486137 m!7274470))

(declare-fun m!7274472 () Bool)

(assert (=> b!6486134 m!7274472))

(assert (=> b!6485095 d!2034718))

(declare-fun d!2034720 () Bool)

(declare-fun e!3931068 () Bool)

(assert (=> d!2034720 e!3931068))

(declare-fun res!2663753 () Bool)

(assert (=> d!2034720 (=> (not res!2663753) (not e!3931068))))

(declare-fun lt!2388512 () List!65396)

(declare-fun noDuplicate!2185 (List!65396) Bool)

(assert (=> d!2034720 (= res!2663753 (noDuplicate!2185 lt!2388512))))

(declare-fun choose!48132 ((InoxSet Context!11498)) List!65396)

(assert (=> d!2034720 (= lt!2388512 (choose!48132 z!1189))))

(assert (=> d!2034720 (= (toList!10149 z!1189) lt!2388512)))

(declare-fun b!6486140 () Bool)

(declare-fun content!12433 (List!65396) (InoxSet Context!11498))

(assert (=> b!6486140 (= e!3931068 (= (content!12433 lt!2388512) z!1189))))

(assert (= (and d!2034720 res!2663753) b!6486140))

(declare-fun m!7274474 () Bool)

(assert (=> d!2034720 m!7274474))

(declare-fun m!7274476 () Bool)

(assert (=> d!2034720 m!7274476))

(declare-fun m!7274478 () Bool)

(assert (=> b!6486140 m!7274478))

(assert (=> b!6485076 d!2034720))

(declare-fun d!2034722 () Bool)

(assert (=> d!2034722 (= (isDefined!12959 lt!2388304) (not (isEmpty!37464 lt!2388304)))))

(declare-fun bs!1645528 () Bool)

(assert (= bs!1645528 d!2034722))

(declare-fun m!7274480 () Bool)

(assert (=> bs!1645528 m!7274480))

(assert (=> b!6485058 d!2034722))

(declare-fun d!2034724 () Bool)

(assert (=> d!2034724 (= (Exists!3435 lambda!358934) (choose!48122 lambda!358934))))

(declare-fun bs!1645529 () Bool)

(assert (= bs!1645529 d!2034724))

(declare-fun m!7274482 () Bool)

(assert (=> bs!1645529 m!7274482))

(assert (=> b!6485058 d!2034724))

(declare-fun d!2034726 () Bool)

(declare-fun e!3931073 () Bool)

(assert (=> d!2034726 e!3931073))

(declare-fun res!2663755 () Bool)

(assert (=> d!2034726 (=> res!2663755 e!3931073)))

(declare-fun e!3931070 () Bool)

(assert (=> d!2034726 (= res!2663755 e!3931070)))

(declare-fun res!2663757 () Bool)

(assert (=> d!2034726 (=> (not res!2663757) (not e!3931070))))

(declare-fun lt!2388513 () Option!16256)

(assert (=> d!2034726 (= res!2663757 (isDefined!12959 lt!2388513))))

(declare-fun e!3931072 () Option!16256)

(assert (=> d!2034726 (= lt!2388513 e!3931072)))

(declare-fun c!1188337 () Bool)

(declare-fun e!3931071 () Bool)

(assert (=> d!2034726 (= c!1188337 e!3931071)))

(declare-fun res!2663756 () Bool)

(assert (=> d!2034726 (=> (not res!2663756) (not e!3931071))))

(assert (=> d!2034726 (= res!2663756 (matchR!8548 lt!2388338 Nil!65270))))

(assert (=> d!2034726 (validRegex!8101 lt!2388338)))

(assert (=> d!2034726 (= (findConcatSeparation!2670 lt!2388338 (regTwo!33242 r!7292) Nil!65270 s!2326 s!2326) lt!2388513)))

(declare-fun b!6486141 () Bool)

(declare-fun e!3931069 () Option!16256)

(assert (=> b!6486141 (= e!3931072 e!3931069)))

(declare-fun c!1188336 () Bool)

(assert (=> b!6486141 (= c!1188336 ((_ is Nil!65270) s!2326))))

(declare-fun b!6486142 () Bool)

(assert (=> b!6486142 (= e!3931072 (Some!16255 (tuple2!66689 Nil!65270 s!2326)))))

(declare-fun b!6486143 () Bool)

(assert (=> b!6486143 (= e!3931073 (not (isDefined!12959 lt!2388513)))))

(declare-fun b!6486144 () Bool)

(assert (=> b!6486144 (= e!3931071 (matchR!8548 (regTwo!33242 r!7292) s!2326))))

(declare-fun b!6486145 () Bool)

(assert (=> b!6486145 (= e!3931070 (= (++!14440 (_1!36647 (get!22631 lt!2388513)) (_2!36647 (get!22631 lt!2388513))) s!2326))))

(declare-fun b!6486146 () Bool)

(declare-fun res!2663758 () Bool)

(assert (=> b!6486146 (=> (not res!2663758) (not e!3931070))))

(assert (=> b!6486146 (= res!2663758 (matchR!8548 lt!2388338 (_1!36647 (get!22631 lt!2388513))))))

(declare-fun b!6486147 () Bool)

(declare-fun res!2663754 () Bool)

(assert (=> b!6486147 (=> (not res!2663754) (not e!3931070))))

(assert (=> b!6486147 (= res!2663754 (matchR!8548 (regTwo!33242 r!7292) (_2!36647 (get!22631 lt!2388513))))))

(declare-fun b!6486148 () Bool)

(assert (=> b!6486148 (= e!3931069 None!16255)))

(declare-fun b!6486149 () Bool)

(declare-fun lt!2388515 () Unit!158791)

(declare-fun lt!2388514 () Unit!158791)

(assert (=> b!6486149 (= lt!2388515 lt!2388514)))

(assert (=> b!6486149 (= (++!14440 (++!14440 Nil!65270 (Cons!65270 (h!71718 s!2326) Nil!65270)) (t!379020 s!2326)) s!2326)))

(assert (=> b!6486149 (= lt!2388514 (lemmaMoveElementToOtherListKeepsConcatEq!2520 Nil!65270 (h!71718 s!2326) (t!379020 s!2326) s!2326))))

(assert (=> b!6486149 (= e!3931069 (findConcatSeparation!2670 lt!2388338 (regTwo!33242 r!7292) (++!14440 Nil!65270 (Cons!65270 (h!71718 s!2326) Nil!65270)) (t!379020 s!2326) s!2326))))

(assert (= (and d!2034726 res!2663756) b!6486144))

(assert (= (and d!2034726 c!1188337) b!6486142))

(assert (= (and d!2034726 (not c!1188337)) b!6486141))

(assert (= (and b!6486141 c!1188336) b!6486148))

(assert (= (and b!6486141 (not c!1188336)) b!6486149))

(assert (= (and d!2034726 res!2663757) b!6486146))

(assert (= (and b!6486146 res!2663758) b!6486147))

(assert (= (and b!6486147 res!2663754) b!6486145))

(assert (= (and d!2034726 (not res!2663755)) b!6486143))

(declare-fun m!7274484 () Bool)

(assert (=> b!6486147 m!7274484))

(declare-fun m!7274486 () Bool)

(assert (=> b!6486147 m!7274486))

(declare-fun m!7274488 () Bool)

(assert (=> b!6486144 m!7274488))

(declare-fun m!7274490 () Bool)

(assert (=> b!6486143 m!7274490))

(assert (=> b!6486146 m!7274484))

(declare-fun m!7274492 () Bool)

(assert (=> b!6486146 m!7274492))

(assert (=> b!6486145 m!7274484))

(declare-fun m!7274494 () Bool)

(assert (=> b!6486145 m!7274494))

(declare-fun m!7274496 () Bool)

(assert (=> b!6486149 m!7274496))

(assert (=> b!6486149 m!7274496))

(declare-fun m!7274498 () Bool)

(assert (=> b!6486149 m!7274498))

(declare-fun m!7274500 () Bool)

(assert (=> b!6486149 m!7274500))

(assert (=> b!6486149 m!7274496))

(declare-fun m!7274502 () Bool)

(assert (=> b!6486149 m!7274502))

(assert (=> d!2034726 m!7274490))

(declare-fun m!7274504 () Bool)

(assert (=> d!2034726 m!7274504))

(assert (=> d!2034726 m!7273780))

(assert (=> b!6485058 d!2034726))

(declare-fun bs!1645530 () Bool)

(declare-fun d!2034728 () Bool)

(assert (= bs!1645530 (and d!2034728 b!6485097)))

(declare-fun lambda!359027 () Int)

(assert (=> bs!1645530 (not (= lambda!359027 lambda!358931))))

(declare-fun bs!1645531 () Bool)

(assert (= bs!1645531 (and d!2034728 d!2034600)))

(assert (=> bs!1645531 (not (= lambda!359027 lambda!359005))))

(declare-fun bs!1645532 () Bool)

(assert (= bs!1645532 (and d!2034728 b!6485065)))

(assert (=> bs!1645532 (not (= lambda!359027 lambda!358936))))

(declare-fun bs!1645533 () Bool)

(assert (= bs!1645533 (and d!2034728 b!6486089)))

(assert (=> bs!1645533 (not (= lambda!359027 lambda!359022))))

(declare-fun bs!1645534 () Bool)

(assert (= bs!1645534 (and d!2034728 d!2034550)))

(assert (=> bs!1645534 (not (= lambda!359027 lambda!358983))))

(declare-fun bs!1645535 () Bool)

(assert (= bs!1645535 (and d!2034728 b!6485058)))

(assert (=> bs!1645535 (not (= lambda!359027 lambda!358934))))

(assert (=> bs!1645531 (= (and (= s!2326 (_1!36647 lt!2388334)) (= lt!2388338 (reg!16694 (regOne!33242 r!7292))) (= (regTwo!33242 r!7292) lt!2388338)) (= lambda!359027 lambda!359003))))

(assert (=> bs!1645535 (= lambda!359027 lambda!358933)))

(assert (=> bs!1645534 (= (and (= s!2326 (_1!36647 lt!2388334)) (= lt!2388338 (reg!16694 (regOne!33242 r!7292))) (= (regTwo!33242 r!7292) (Star!16365 (reg!16694 (regOne!33242 r!7292))))) (= lambda!359027 lambda!358981))))

(declare-fun bs!1645536 () Bool)

(assert (= bs!1645536 (and d!2034728 b!6486088)))

(assert (=> bs!1645536 (not (= lambda!359027 lambda!359023))))

(declare-fun bs!1645537 () Bool)

(assert (= bs!1645537 (and d!2034728 d!2034534)))

(assert (=> bs!1645537 (= (and (= s!2326 (_1!36647 lt!2388334)) (= lt!2388338 (reg!16694 (regOne!33242 r!7292))) (= (regTwo!33242 r!7292) lt!2388338)) (= lambda!359027 lambda!358976))))

(assert (=> bs!1645530 (= (= lt!2388338 (regOne!33242 r!7292)) (= lambda!359027 lambda!358930))))

(declare-fun bs!1645538 () Bool)

(assert (= bs!1645538 (and d!2034728 b!6486005)))

(assert (=> bs!1645538 (not (= lambda!359027 lambda!359017))))

(declare-fun bs!1645539 () Bool)

(assert (= bs!1645539 (and d!2034728 b!6485711)))

(assert (=> bs!1645539 (not (= lambda!359027 lambda!358991))))

(assert (=> bs!1645532 (= (and (= s!2326 (_1!36647 lt!2388334)) (= lt!2388338 (reg!16694 (regOne!33242 r!7292))) (= (regTwo!33242 r!7292) lt!2388338)) (= lambda!359027 lambda!358935))))

(assert (=> bs!1645532 (not (= lambda!359027 lambda!358937))))

(declare-fun bs!1645540 () Bool)

(assert (= bs!1645540 (and d!2034728 b!6486004)))

(assert (=> bs!1645540 (not (= lambda!359027 lambda!359018))))

(declare-fun bs!1645541 () Bool)

(assert (= bs!1645541 (and d!2034728 b!6485710)))

(assert (=> bs!1645541 (not (= lambda!359027 lambda!358992))))

(assert (=> d!2034728 true))

(assert (=> d!2034728 true))

(assert (=> d!2034728 true))

(declare-fun lambda!359028 () Int)

(assert (=> bs!1645530 (= (= lt!2388338 (regOne!33242 r!7292)) (= lambda!359028 lambda!358931))))

(assert (=> bs!1645531 (= (and (= s!2326 (_1!36647 lt!2388334)) (= lt!2388338 (reg!16694 (regOne!33242 r!7292))) (= (regTwo!33242 r!7292) lt!2388338)) (= lambda!359028 lambda!359005))))

(assert (=> bs!1645532 (not (= lambda!359028 lambda!358936))))

(assert (=> bs!1645533 (not (= lambda!359028 lambda!359022))))

(assert (=> bs!1645534 (not (= lambda!359028 lambda!358983))))

(assert (=> bs!1645535 (= lambda!359028 lambda!358934)))

(declare-fun bs!1645542 () Bool)

(assert (= bs!1645542 d!2034728))

(assert (=> bs!1645542 (not (= lambda!359028 lambda!359027))))

(assert (=> bs!1645531 (not (= lambda!359028 lambda!359003))))

(assert (=> bs!1645535 (not (= lambda!359028 lambda!358933))))

(assert (=> bs!1645534 (not (= lambda!359028 lambda!358981))))

(assert (=> bs!1645536 (= (= lt!2388338 (regOne!33242 r!7292)) (= lambda!359028 lambda!359023))))

(assert (=> bs!1645537 (not (= lambda!359028 lambda!358976))))

(assert (=> bs!1645530 (not (= lambda!359028 lambda!358930))))

(assert (=> bs!1645538 (not (= lambda!359028 lambda!359017))))

(assert (=> bs!1645539 (not (= lambda!359028 lambda!358991))))

(assert (=> bs!1645532 (not (= lambda!359028 lambda!358935))))

(assert (=> bs!1645532 (= (and (= s!2326 (_1!36647 lt!2388334)) (= lt!2388338 (reg!16694 (regOne!33242 r!7292))) (= (regTwo!33242 r!7292) lt!2388338)) (= lambda!359028 lambda!358937))))

(assert (=> bs!1645540 (= (and (= lt!2388338 (regOne!33242 lt!2388335)) (= (regTwo!33242 r!7292) (regTwo!33242 lt!2388335))) (= lambda!359028 lambda!359018))))

(assert (=> bs!1645541 (= (and (= s!2326 (_1!36647 lt!2388334)) (= lt!2388338 (regOne!33242 lt!2388338)) (= (regTwo!33242 r!7292) (regTwo!33242 lt!2388338))) (= lambda!359028 lambda!358992))))

(assert (=> d!2034728 true))

(assert (=> d!2034728 true))

(assert (=> d!2034728 true))

(assert (=> d!2034728 (= (Exists!3435 lambda!359027) (Exists!3435 lambda!359028))))

(declare-fun lt!2388516 () Unit!158791)

(assert (=> d!2034728 (= lt!2388516 (choose!48126 lt!2388338 (regTwo!33242 r!7292) s!2326))))

(assert (=> d!2034728 (validRegex!8101 lt!2388338)))

(assert (=> d!2034728 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1972 lt!2388338 (regTwo!33242 r!7292) s!2326) lt!2388516)))

(declare-fun m!7274506 () Bool)

(assert (=> bs!1645542 m!7274506))

(declare-fun m!7274508 () Bool)

(assert (=> bs!1645542 m!7274508))

(declare-fun m!7274510 () Bool)

(assert (=> bs!1645542 m!7274510))

(assert (=> bs!1645542 m!7273780))

(assert (=> b!6485058 d!2034728))

(declare-fun d!2034730 () Bool)

(assert (=> d!2034730 (= (Exists!3435 lambda!358933) (choose!48122 lambda!358933))))

(declare-fun bs!1645543 () Bool)

(assert (= bs!1645543 d!2034730))

(declare-fun m!7274512 () Bool)

(assert (=> bs!1645543 m!7274512))

(assert (=> b!6485058 d!2034730))

(declare-fun b!6486150 () Bool)

(declare-fun e!3931075 () List!65394)

(assert (=> b!6486150 (= e!3931075 (_2!36647 lt!2388334))))

(declare-fun b!6486152 () Bool)

(declare-fun res!2663759 () Bool)

(declare-fun e!3931074 () Bool)

(assert (=> b!6486152 (=> (not res!2663759) (not e!3931074))))

(declare-fun lt!2388517 () List!65394)

(assert (=> b!6486152 (= res!2663759 (= (size!40420 lt!2388517) (+ (size!40420 (_1!36647 lt!2388334)) (size!40420 (_2!36647 lt!2388334)))))))

(declare-fun b!6486153 () Bool)

(assert (=> b!6486153 (= e!3931074 (or (not (= (_2!36647 lt!2388334) Nil!65270)) (= lt!2388517 (_1!36647 lt!2388334))))))

(declare-fun d!2034732 () Bool)

(assert (=> d!2034732 e!3931074))

(declare-fun res!2663760 () Bool)

(assert (=> d!2034732 (=> (not res!2663760) (not e!3931074))))

(assert (=> d!2034732 (= res!2663760 (= (content!12430 lt!2388517) ((_ map or) (content!12430 (_1!36647 lt!2388334)) (content!12430 (_2!36647 lt!2388334)))))))

(assert (=> d!2034732 (= lt!2388517 e!3931075)))

(declare-fun c!1188338 () Bool)

(assert (=> d!2034732 (= c!1188338 ((_ is Nil!65270) (_1!36647 lt!2388334)))))

(assert (=> d!2034732 (= (++!14440 (_1!36647 lt!2388334) (_2!36647 lt!2388334)) lt!2388517)))

(declare-fun b!6486151 () Bool)

(assert (=> b!6486151 (= e!3931075 (Cons!65270 (h!71718 (_1!36647 lt!2388334)) (++!14440 (t!379020 (_1!36647 lt!2388334)) (_2!36647 lt!2388334))))))

(assert (= (and d!2034732 c!1188338) b!6486150))

(assert (= (and d!2034732 (not c!1188338)) b!6486151))

(assert (= (and d!2034732 res!2663760) b!6486152))

(assert (= (and b!6486152 res!2663759) b!6486153))

(declare-fun m!7274514 () Bool)

(assert (=> b!6486152 m!7274514))

(declare-fun m!7274516 () Bool)

(assert (=> b!6486152 m!7274516))

(assert (=> b!6486152 m!7274282))

(declare-fun m!7274518 () Bool)

(assert (=> d!2034732 m!7274518))

(declare-fun m!7274520 () Bool)

(assert (=> d!2034732 m!7274520))

(assert (=> d!2034732 m!7274288))

(declare-fun m!7274522 () Bool)

(assert (=> b!6486151 m!7274522))

(assert (=> b!6485058 d!2034732))

(declare-fun bs!1645544 () Bool)

(declare-fun d!2034734 () Bool)

(assert (= bs!1645544 (and d!2034734 b!6485097)))

(declare-fun lambda!359029 () Int)

(assert (=> bs!1645544 (not (= lambda!359029 lambda!358931))))

(declare-fun bs!1645545 () Bool)

(assert (= bs!1645545 (and d!2034734 d!2034600)))

(assert (=> bs!1645545 (not (= lambda!359029 lambda!359005))))

(declare-fun bs!1645546 () Bool)

(assert (= bs!1645546 (and d!2034734 b!6485065)))

(assert (=> bs!1645546 (not (= lambda!359029 lambda!358936))))

(declare-fun bs!1645547 () Bool)

(assert (= bs!1645547 (and d!2034734 b!6486089)))

(assert (=> bs!1645547 (not (= lambda!359029 lambda!359022))))

(declare-fun bs!1645548 () Bool)

(assert (= bs!1645548 (and d!2034734 d!2034550)))

(assert (=> bs!1645548 (not (= lambda!359029 lambda!358983))))

(declare-fun bs!1645549 () Bool)

(assert (= bs!1645549 (and d!2034734 b!6485058)))

(assert (=> bs!1645549 (not (= lambda!359029 lambda!358934))))

(declare-fun bs!1645550 () Bool)

(assert (= bs!1645550 (and d!2034734 d!2034728)))

(assert (=> bs!1645550 (= lambda!359029 lambda!359027)))

(assert (=> bs!1645545 (= (and (= s!2326 (_1!36647 lt!2388334)) (= lt!2388338 (reg!16694 (regOne!33242 r!7292))) (= (regTwo!33242 r!7292) lt!2388338)) (= lambda!359029 lambda!359003))))

(assert (=> bs!1645549 (= lambda!359029 lambda!358933)))

(assert (=> bs!1645548 (= (and (= s!2326 (_1!36647 lt!2388334)) (= lt!2388338 (reg!16694 (regOne!33242 r!7292))) (= (regTwo!33242 r!7292) (Star!16365 (reg!16694 (regOne!33242 r!7292))))) (= lambda!359029 lambda!358981))))

(declare-fun bs!1645551 () Bool)

(assert (= bs!1645551 (and d!2034734 b!6486088)))

(assert (=> bs!1645551 (not (= lambda!359029 lambda!359023))))

(declare-fun bs!1645552 () Bool)

(assert (= bs!1645552 (and d!2034734 d!2034534)))

(assert (=> bs!1645552 (= (and (= s!2326 (_1!36647 lt!2388334)) (= lt!2388338 (reg!16694 (regOne!33242 r!7292))) (= (regTwo!33242 r!7292) lt!2388338)) (= lambda!359029 lambda!358976))))

(assert (=> bs!1645550 (not (= lambda!359029 lambda!359028))))

(assert (=> bs!1645544 (= (= lt!2388338 (regOne!33242 r!7292)) (= lambda!359029 lambda!358930))))

(declare-fun bs!1645553 () Bool)

(assert (= bs!1645553 (and d!2034734 b!6486005)))

(assert (=> bs!1645553 (not (= lambda!359029 lambda!359017))))

(declare-fun bs!1645554 () Bool)

(assert (= bs!1645554 (and d!2034734 b!6485711)))

(assert (=> bs!1645554 (not (= lambda!359029 lambda!358991))))

(assert (=> bs!1645546 (= (and (= s!2326 (_1!36647 lt!2388334)) (= lt!2388338 (reg!16694 (regOne!33242 r!7292))) (= (regTwo!33242 r!7292) lt!2388338)) (= lambda!359029 lambda!358935))))

(assert (=> bs!1645546 (not (= lambda!359029 lambda!358937))))

(declare-fun bs!1645555 () Bool)

(assert (= bs!1645555 (and d!2034734 b!6486004)))

(assert (=> bs!1645555 (not (= lambda!359029 lambda!359018))))

(declare-fun bs!1645556 () Bool)

(assert (= bs!1645556 (and d!2034734 b!6485710)))

(assert (=> bs!1645556 (not (= lambda!359029 lambda!358992))))

(assert (=> d!2034734 true))

(assert (=> d!2034734 true))

(assert (=> d!2034734 true))

(assert (=> d!2034734 (= (isDefined!12959 (findConcatSeparation!2670 lt!2388338 (regTwo!33242 r!7292) Nil!65270 s!2326 s!2326)) (Exists!3435 lambda!359029))))

(declare-fun lt!2388518 () Unit!158791)

(assert (=> d!2034734 (= lt!2388518 (choose!48121 lt!2388338 (regTwo!33242 r!7292) s!2326))))

(assert (=> d!2034734 (validRegex!8101 lt!2388338)))

(assert (=> d!2034734 (= (lemmaFindConcatSeparationEquivalentToExists!2434 lt!2388338 (regTwo!33242 r!7292) s!2326) lt!2388518)))

(declare-fun bs!1645557 () Bool)

(assert (= bs!1645557 d!2034734))

(declare-fun m!7274524 () Bool)

(assert (=> bs!1645557 m!7274524))

(assert (=> bs!1645557 m!7273370))

(declare-fun m!7274526 () Bool)

(assert (=> bs!1645557 m!7274526))

(declare-fun m!7274528 () Bool)

(assert (=> bs!1645557 m!7274528))

(assert (=> bs!1645557 m!7273780))

(assert (=> bs!1645557 m!7273370))

(assert (=> b!6485058 d!2034734))

(declare-fun d!2034736 () Bool)

(assert (=> d!2034736 (= (get!22631 lt!2388304) (v!52434 lt!2388304))))

(assert (=> b!6485058 d!2034736))

(declare-fun d!2034738 () Bool)

(declare-fun lt!2388519 () Regex!16365)

(assert (=> d!2034738 (validRegex!8101 lt!2388519)))

(assert (=> d!2034738 (= lt!2388519 (generalisedUnion!2209 (unfocusZipperList!1786 zl!343)))))

(assert (=> d!2034738 (= (unfocusZipper!2107 zl!343) lt!2388519)))

(declare-fun bs!1645558 () Bool)

(assert (= bs!1645558 d!2034738))

(declare-fun m!7274530 () Bool)

(assert (=> bs!1645558 m!7274530))

(assert (=> bs!1645558 m!7273442))

(assert (=> bs!1645558 m!7273442))

(assert (=> bs!1645558 m!7273444))

(assert (=> b!6485080 d!2034738))

(declare-fun d!2034740 () Bool)

(declare-fun e!3931080 () Bool)

(assert (=> d!2034740 e!3931080))

(declare-fun res!2663762 () Bool)

(assert (=> d!2034740 (=> res!2663762 e!3931080)))

(declare-fun e!3931077 () Bool)

(assert (=> d!2034740 (= res!2663762 e!3931077)))

(declare-fun res!2663764 () Bool)

(assert (=> d!2034740 (=> (not res!2663764) (not e!3931077))))

(declare-fun lt!2388520 () Option!16256)

(assert (=> d!2034740 (= res!2663764 (isDefined!12959 lt!2388520))))

(declare-fun e!3931079 () Option!16256)

(assert (=> d!2034740 (= lt!2388520 e!3931079)))

(declare-fun c!1188340 () Bool)

(declare-fun e!3931078 () Bool)

(assert (=> d!2034740 (= c!1188340 e!3931078)))

(declare-fun res!2663763 () Bool)

(assert (=> d!2034740 (=> (not res!2663763) (not e!3931078))))

(assert (=> d!2034740 (= res!2663763 (matchR!8548 (regOne!33242 r!7292) Nil!65270))))

(assert (=> d!2034740 (validRegex!8101 (regOne!33242 r!7292))))

(assert (=> d!2034740 (= (findConcatSeparation!2670 (regOne!33242 r!7292) (regTwo!33242 r!7292) Nil!65270 s!2326 s!2326) lt!2388520)))

(declare-fun b!6486154 () Bool)

(declare-fun e!3931076 () Option!16256)

(assert (=> b!6486154 (= e!3931079 e!3931076)))

(declare-fun c!1188339 () Bool)

(assert (=> b!6486154 (= c!1188339 ((_ is Nil!65270) s!2326))))

(declare-fun b!6486155 () Bool)

(assert (=> b!6486155 (= e!3931079 (Some!16255 (tuple2!66689 Nil!65270 s!2326)))))

(declare-fun b!6486156 () Bool)

(assert (=> b!6486156 (= e!3931080 (not (isDefined!12959 lt!2388520)))))

(declare-fun b!6486157 () Bool)

(assert (=> b!6486157 (= e!3931078 (matchR!8548 (regTwo!33242 r!7292) s!2326))))

(declare-fun b!6486158 () Bool)

(assert (=> b!6486158 (= e!3931077 (= (++!14440 (_1!36647 (get!22631 lt!2388520)) (_2!36647 (get!22631 lt!2388520))) s!2326))))

(declare-fun b!6486159 () Bool)

(declare-fun res!2663765 () Bool)

(assert (=> b!6486159 (=> (not res!2663765) (not e!3931077))))

(assert (=> b!6486159 (= res!2663765 (matchR!8548 (regOne!33242 r!7292) (_1!36647 (get!22631 lt!2388520))))))

(declare-fun b!6486160 () Bool)

(declare-fun res!2663761 () Bool)

(assert (=> b!6486160 (=> (not res!2663761) (not e!3931077))))

(assert (=> b!6486160 (= res!2663761 (matchR!8548 (regTwo!33242 r!7292) (_2!36647 (get!22631 lt!2388520))))))

(declare-fun b!6486161 () Bool)

(assert (=> b!6486161 (= e!3931076 None!16255)))

(declare-fun b!6486162 () Bool)

(declare-fun lt!2388522 () Unit!158791)

(declare-fun lt!2388521 () Unit!158791)

(assert (=> b!6486162 (= lt!2388522 lt!2388521)))

(assert (=> b!6486162 (= (++!14440 (++!14440 Nil!65270 (Cons!65270 (h!71718 s!2326) Nil!65270)) (t!379020 s!2326)) s!2326)))

(assert (=> b!6486162 (= lt!2388521 (lemmaMoveElementToOtherListKeepsConcatEq!2520 Nil!65270 (h!71718 s!2326) (t!379020 s!2326) s!2326))))

(assert (=> b!6486162 (= e!3931076 (findConcatSeparation!2670 (regOne!33242 r!7292) (regTwo!33242 r!7292) (++!14440 Nil!65270 (Cons!65270 (h!71718 s!2326) Nil!65270)) (t!379020 s!2326) s!2326))))

(assert (= (and d!2034740 res!2663763) b!6486157))

(assert (= (and d!2034740 c!1188340) b!6486155))

(assert (= (and d!2034740 (not c!1188340)) b!6486154))

(assert (= (and b!6486154 c!1188339) b!6486161))

(assert (= (and b!6486154 (not c!1188339)) b!6486162))

(assert (= (and d!2034740 res!2663764) b!6486159))

(assert (= (and b!6486159 res!2663765) b!6486160))

(assert (= (and b!6486160 res!2663761) b!6486158))

(assert (= (and d!2034740 (not res!2663762)) b!6486156))

(declare-fun m!7274532 () Bool)

(assert (=> b!6486160 m!7274532))

(declare-fun m!7274534 () Bool)

(assert (=> b!6486160 m!7274534))

(assert (=> b!6486157 m!7274488))

(declare-fun m!7274536 () Bool)

(assert (=> b!6486156 m!7274536))

(assert (=> b!6486159 m!7274532))

(declare-fun m!7274538 () Bool)

(assert (=> b!6486159 m!7274538))

(assert (=> b!6486158 m!7274532))

(declare-fun m!7274540 () Bool)

(assert (=> b!6486158 m!7274540))

(assert (=> b!6486162 m!7274496))

(assert (=> b!6486162 m!7274496))

(assert (=> b!6486162 m!7274498))

(assert (=> b!6486162 m!7274500))

(assert (=> b!6486162 m!7274496))

(declare-fun m!7274542 () Bool)

(assert (=> b!6486162 m!7274542))

(assert (=> d!2034740 m!7274536))

(declare-fun m!7274544 () Bool)

(assert (=> d!2034740 m!7274544))

(declare-fun m!7274546 () Bool)

(assert (=> d!2034740 m!7274546))

(assert (=> b!6485097 d!2034740))

(declare-fun d!2034742 () Bool)

(assert (=> d!2034742 (= (Exists!3435 lambda!358931) (choose!48122 lambda!358931))))

(declare-fun bs!1645559 () Bool)

(assert (= bs!1645559 d!2034742))

(declare-fun m!7274548 () Bool)

(assert (=> bs!1645559 m!7274548))

(assert (=> b!6485097 d!2034742))

(declare-fun d!2034744 () Bool)

(assert (=> d!2034744 (= (Exists!3435 lambda!358930) (choose!48122 lambda!358930))))

(declare-fun bs!1645560 () Bool)

(assert (= bs!1645560 d!2034744))

(declare-fun m!7274550 () Bool)

(assert (=> bs!1645560 m!7274550))

(assert (=> b!6485097 d!2034744))

(declare-fun bs!1645561 () Bool)

(declare-fun d!2034746 () Bool)

(assert (= bs!1645561 (and d!2034746 b!6485097)))

(declare-fun lambda!359030 () Int)

(assert (=> bs!1645561 (not (= lambda!359030 lambda!358931))))

(declare-fun bs!1645562 () Bool)

(assert (= bs!1645562 (and d!2034746 d!2034600)))

(assert (=> bs!1645562 (not (= lambda!359030 lambda!359005))))

(declare-fun bs!1645563 () Bool)

(assert (= bs!1645563 (and d!2034746 b!6485065)))

(assert (=> bs!1645563 (not (= lambda!359030 lambda!358936))))

(declare-fun bs!1645564 () Bool)

(assert (= bs!1645564 (and d!2034746 d!2034550)))

(assert (=> bs!1645564 (not (= lambda!359030 lambda!358983))))

(declare-fun bs!1645565 () Bool)

(assert (= bs!1645565 (and d!2034746 b!6485058)))

(assert (=> bs!1645565 (not (= lambda!359030 lambda!358934))))

(declare-fun bs!1645566 () Bool)

(assert (= bs!1645566 (and d!2034746 d!2034728)))

(assert (=> bs!1645566 (= (= (regOne!33242 r!7292) lt!2388338) (= lambda!359030 lambda!359027))))

(assert (=> bs!1645562 (= (and (= s!2326 (_1!36647 lt!2388334)) (= (regOne!33242 r!7292) (reg!16694 (regOne!33242 r!7292))) (= (regTwo!33242 r!7292) lt!2388338)) (= lambda!359030 lambda!359003))))

(assert (=> bs!1645565 (= (= (regOne!33242 r!7292) lt!2388338) (= lambda!359030 lambda!358933))))

(assert (=> bs!1645564 (= (and (= s!2326 (_1!36647 lt!2388334)) (= (regOne!33242 r!7292) (reg!16694 (regOne!33242 r!7292))) (= (regTwo!33242 r!7292) (Star!16365 (reg!16694 (regOne!33242 r!7292))))) (= lambda!359030 lambda!358981))))

(declare-fun bs!1645567 () Bool)

(assert (= bs!1645567 (and d!2034746 b!6486088)))

(assert (=> bs!1645567 (not (= lambda!359030 lambda!359023))))

(declare-fun bs!1645568 () Bool)

(assert (= bs!1645568 (and d!2034746 d!2034534)))

(assert (=> bs!1645568 (= (and (= s!2326 (_1!36647 lt!2388334)) (= (regOne!33242 r!7292) (reg!16694 (regOne!33242 r!7292))) (= (regTwo!33242 r!7292) lt!2388338)) (= lambda!359030 lambda!358976))))

(assert (=> bs!1645566 (not (= lambda!359030 lambda!359028))))

(assert (=> bs!1645561 (= lambda!359030 lambda!358930)))

(declare-fun bs!1645569 () Bool)

(assert (= bs!1645569 (and d!2034746 b!6486089)))

(assert (=> bs!1645569 (not (= lambda!359030 lambda!359022))))

(declare-fun bs!1645570 () Bool)

(assert (= bs!1645570 (and d!2034746 d!2034734)))

(assert (=> bs!1645570 (= (= (regOne!33242 r!7292) lt!2388338) (= lambda!359030 lambda!359029))))

(declare-fun bs!1645571 () Bool)

(assert (= bs!1645571 (and d!2034746 b!6486005)))

(assert (=> bs!1645571 (not (= lambda!359030 lambda!359017))))

(declare-fun bs!1645572 () Bool)

(assert (= bs!1645572 (and d!2034746 b!6485711)))

(assert (=> bs!1645572 (not (= lambda!359030 lambda!358991))))

(assert (=> bs!1645563 (= (and (= s!2326 (_1!36647 lt!2388334)) (= (regOne!33242 r!7292) (reg!16694 (regOne!33242 r!7292))) (= (regTwo!33242 r!7292) lt!2388338)) (= lambda!359030 lambda!358935))))

(assert (=> bs!1645563 (not (= lambda!359030 lambda!358937))))

(declare-fun bs!1645573 () Bool)

(assert (= bs!1645573 (and d!2034746 b!6486004)))

(assert (=> bs!1645573 (not (= lambda!359030 lambda!359018))))

(declare-fun bs!1645574 () Bool)

(assert (= bs!1645574 (and d!2034746 b!6485710)))

(assert (=> bs!1645574 (not (= lambda!359030 lambda!358992))))

(assert (=> d!2034746 true))

(assert (=> d!2034746 true))

(assert (=> d!2034746 true))

(assert (=> d!2034746 (= (isDefined!12959 (findConcatSeparation!2670 (regOne!33242 r!7292) (regTwo!33242 r!7292) Nil!65270 s!2326 s!2326)) (Exists!3435 lambda!359030))))

(declare-fun lt!2388523 () Unit!158791)

(assert (=> d!2034746 (= lt!2388523 (choose!48121 (regOne!33242 r!7292) (regTwo!33242 r!7292) s!2326))))

(assert (=> d!2034746 (validRegex!8101 (regOne!33242 r!7292))))

(assert (=> d!2034746 (= (lemmaFindConcatSeparationEquivalentToExists!2434 (regOne!33242 r!7292) (regTwo!33242 r!7292) s!2326) lt!2388523)))

(declare-fun bs!1645575 () Bool)

(assert (= bs!1645575 d!2034746))

(declare-fun m!7274552 () Bool)

(assert (=> bs!1645575 m!7274552))

(assert (=> bs!1645575 m!7273322))

(assert (=> bs!1645575 m!7273324))

(declare-fun m!7274554 () Bool)

(assert (=> bs!1645575 m!7274554))

(assert (=> bs!1645575 m!7274546))

(assert (=> bs!1645575 m!7273322))

(assert (=> b!6485097 d!2034746))

(declare-fun bs!1645576 () Bool)

(declare-fun d!2034748 () Bool)

(assert (= bs!1645576 (and d!2034748 b!6485097)))

(declare-fun lambda!359031 () Int)

(assert (=> bs!1645576 (not (= lambda!359031 lambda!358931))))

(declare-fun bs!1645577 () Bool)

(assert (= bs!1645577 (and d!2034748 d!2034600)))

(assert (=> bs!1645577 (not (= lambda!359031 lambda!359005))))

(declare-fun bs!1645578 () Bool)

(assert (= bs!1645578 (and d!2034748 b!6485065)))

(assert (=> bs!1645578 (not (= lambda!359031 lambda!358936))))

(declare-fun bs!1645579 () Bool)

(assert (= bs!1645579 (and d!2034748 d!2034550)))

(assert (=> bs!1645579 (not (= lambda!359031 lambda!358983))))

(declare-fun bs!1645580 () Bool)

(assert (= bs!1645580 (and d!2034748 b!6485058)))

(assert (=> bs!1645580 (not (= lambda!359031 lambda!358934))))

(declare-fun bs!1645581 () Bool)

(assert (= bs!1645581 (and d!2034748 d!2034728)))

(assert (=> bs!1645581 (= (= (regOne!33242 r!7292) lt!2388338) (= lambda!359031 lambda!359027))))

(assert (=> bs!1645577 (= (and (= s!2326 (_1!36647 lt!2388334)) (= (regOne!33242 r!7292) (reg!16694 (regOne!33242 r!7292))) (= (regTwo!33242 r!7292) lt!2388338)) (= lambda!359031 lambda!359003))))

(assert (=> bs!1645580 (= (= (regOne!33242 r!7292) lt!2388338) (= lambda!359031 lambda!358933))))

(declare-fun bs!1645582 () Bool)

(assert (= bs!1645582 (and d!2034748 b!6486088)))

(assert (=> bs!1645582 (not (= lambda!359031 lambda!359023))))

(declare-fun bs!1645583 () Bool)

(assert (= bs!1645583 (and d!2034748 d!2034534)))

(assert (=> bs!1645583 (= (and (= s!2326 (_1!36647 lt!2388334)) (= (regOne!33242 r!7292) (reg!16694 (regOne!33242 r!7292))) (= (regTwo!33242 r!7292) lt!2388338)) (= lambda!359031 lambda!358976))))

(assert (=> bs!1645581 (not (= lambda!359031 lambda!359028))))

(assert (=> bs!1645576 (= lambda!359031 lambda!358930)))

(declare-fun bs!1645584 () Bool)

(assert (= bs!1645584 (and d!2034748 b!6486089)))

(assert (=> bs!1645584 (not (= lambda!359031 lambda!359022))))

(declare-fun bs!1645585 () Bool)

(assert (= bs!1645585 (and d!2034748 d!2034734)))

(assert (=> bs!1645585 (= (= (regOne!33242 r!7292) lt!2388338) (= lambda!359031 lambda!359029))))

(declare-fun bs!1645586 () Bool)

(assert (= bs!1645586 (and d!2034748 b!6486005)))

(assert (=> bs!1645586 (not (= lambda!359031 lambda!359017))))

(declare-fun bs!1645587 () Bool)

(assert (= bs!1645587 (and d!2034748 b!6485711)))

(assert (=> bs!1645587 (not (= lambda!359031 lambda!358991))))

(assert (=> bs!1645578 (= (and (= s!2326 (_1!36647 lt!2388334)) (= (regOne!33242 r!7292) (reg!16694 (regOne!33242 r!7292))) (= (regTwo!33242 r!7292) lt!2388338)) (= lambda!359031 lambda!358935))))

(assert (=> bs!1645578 (not (= lambda!359031 lambda!358937))))

(declare-fun bs!1645588 () Bool)

(assert (= bs!1645588 (and d!2034748 b!6486004)))

(assert (=> bs!1645588 (not (= lambda!359031 lambda!359018))))

(declare-fun bs!1645589 () Bool)

(assert (= bs!1645589 (and d!2034748 b!6485710)))

(assert (=> bs!1645589 (not (= lambda!359031 lambda!358992))))

(declare-fun bs!1645590 () Bool)

(assert (= bs!1645590 (and d!2034748 d!2034746)))

(assert (=> bs!1645590 (= lambda!359031 lambda!359030)))

(assert (=> bs!1645579 (= (and (= s!2326 (_1!36647 lt!2388334)) (= (regOne!33242 r!7292) (reg!16694 (regOne!33242 r!7292))) (= (regTwo!33242 r!7292) (Star!16365 (reg!16694 (regOne!33242 r!7292))))) (= lambda!359031 lambda!358981))))

(assert (=> d!2034748 true))

(assert (=> d!2034748 true))

(assert (=> d!2034748 true))

(declare-fun lambda!359032 () Int)

(assert (=> bs!1645576 (= lambda!359032 lambda!358931)))

(assert (=> bs!1645577 (= (and (= s!2326 (_1!36647 lt!2388334)) (= (regOne!33242 r!7292) (reg!16694 (regOne!33242 r!7292))) (= (regTwo!33242 r!7292) lt!2388338)) (= lambda!359032 lambda!359005))))

(assert (=> bs!1645578 (not (= lambda!359032 lambda!358936))))

(assert (=> bs!1645579 (not (= lambda!359032 lambda!358983))))

(assert (=> bs!1645580 (= (= (regOne!33242 r!7292) lt!2388338) (= lambda!359032 lambda!358934))))

(declare-fun bs!1645591 () Bool)

(assert (= bs!1645591 d!2034748))

(assert (=> bs!1645591 (not (= lambda!359032 lambda!359031))))

(assert (=> bs!1645581 (not (= lambda!359032 lambda!359027))))

(assert (=> bs!1645577 (not (= lambda!359032 lambda!359003))))

(assert (=> bs!1645580 (not (= lambda!359032 lambda!358933))))

(assert (=> bs!1645582 (= lambda!359032 lambda!359023)))

(assert (=> bs!1645583 (not (= lambda!359032 lambda!358976))))

(assert (=> bs!1645581 (= (= (regOne!33242 r!7292) lt!2388338) (= lambda!359032 lambda!359028))))

(assert (=> bs!1645576 (not (= lambda!359032 lambda!358930))))

(assert (=> bs!1645584 (not (= lambda!359032 lambda!359022))))

(assert (=> bs!1645585 (not (= lambda!359032 lambda!359029))))

(assert (=> bs!1645586 (not (= lambda!359032 lambda!359017))))

(assert (=> bs!1645587 (not (= lambda!359032 lambda!358991))))

(assert (=> bs!1645578 (not (= lambda!359032 lambda!358935))))

(assert (=> bs!1645578 (= (and (= s!2326 (_1!36647 lt!2388334)) (= (regOne!33242 r!7292) (reg!16694 (regOne!33242 r!7292))) (= (regTwo!33242 r!7292) lt!2388338)) (= lambda!359032 lambda!358937))))

(assert (=> bs!1645588 (= (and (= (regOne!33242 r!7292) (regOne!33242 lt!2388335)) (= (regTwo!33242 r!7292) (regTwo!33242 lt!2388335))) (= lambda!359032 lambda!359018))))

(assert (=> bs!1645589 (= (and (= s!2326 (_1!36647 lt!2388334)) (= (regOne!33242 r!7292) (regOne!33242 lt!2388338)) (= (regTwo!33242 r!7292) (regTwo!33242 lt!2388338))) (= lambda!359032 lambda!358992))))

(assert (=> bs!1645590 (not (= lambda!359032 lambda!359030))))

(assert (=> bs!1645579 (not (= lambda!359032 lambda!358981))))

(assert (=> d!2034748 true))

(assert (=> d!2034748 true))

(assert (=> d!2034748 true))

(assert (=> d!2034748 (= (Exists!3435 lambda!359031) (Exists!3435 lambda!359032))))

(declare-fun lt!2388524 () Unit!158791)

(assert (=> d!2034748 (= lt!2388524 (choose!48126 (regOne!33242 r!7292) (regTwo!33242 r!7292) s!2326))))

(assert (=> d!2034748 (validRegex!8101 (regOne!33242 r!7292))))

(assert (=> d!2034748 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1972 (regOne!33242 r!7292) (regTwo!33242 r!7292) s!2326) lt!2388524)))

(declare-fun m!7274556 () Bool)

(assert (=> bs!1645591 m!7274556))

(declare-fun m!7274558 () Bool)

(assert (=> bs!1645591 m!7274558))

(declare-fun m!7274560 () Bool)

(assert (=> bs!1645591 m!7274560))

(assert (=> bs!1645591 m!7274546))

(assert (=> b!6485097 d!2034748))

(declare-fun d!2034750 () Bool)

(assert (=> d!2034750 (= (isDefined!12959 (findConcatSeparation!2670 (regOne!33242 r!7292) (regTwo!33242 r!7292) Nil!65270 s!2326 s!2326)) (not (isEmpty!37464 (findConcatSeparation!2670 (regOne!33242 r!7292) (regTwo!33242 r!7292) Nil!65270 s!2326 s!2326))))))

(declare-fun bs!1645592 () Bool)

(assert (= bs!1645592 d!2034750))

(assert (=> bs!1645592 m!7273322))

(declare-fun m!7274562 () Bool)

(assert (=> bs!1645592 m!7274562))

(assert (=> b!6485097 d!2034750))

(declare-fun d!2034752 () Bool)

(declare-fun lt!2388525 () Regex!16365)

(assert (=> d!2034752 (validRegex!8101 lt!2388525)))

(assert (=> d!2034752 (= lt!2388525 (generalisedUnion!2209 (unfocusZipperList!1786 lt!2388310)))))

(assert (=> d!2034752 (= (unfocusZipper!2107 lt!2388310) lt!2388525)))

(declare-fun bs!1645593 () Bool)

(assert (= bs!1645593 d!2034752))

(declare-fun m!7274564 () Bool)

(assert (=> bs!1645593 m!7274564))

(declare-fun m!7274566 () Bool)

(assert (=> bs!1645593 m!7274566))

(assert (=> bs!1645593 m!7274566))

(declare-fun m!7274568 () Bool)

(assert (=> bs!1645593 m!7274568))

(assert (=> b!6485057 d!2034752))

(declare-fun bs!1645594 () Bool)

(declare-fun d!2034754 () Bool)

(assert (= bs!1645594 (and d!2034754 b!6485081)))

(declare-fun lambda!359035 () Int)

(assert (=> bs!1645594 (= lambda!359035 lambda!358938)))

(declare-fun bs!1645595 () Bool)

(assert (= bs!1645595 (and d!2034754 d!2034668)))

(assert (=> bs!1645595 (= lambda!359035 lambda!359013)))

(declare-fun bs!1645596 () Bool)

(assert (= bs!1645596 (and d!2034754 d!2034678)))

(assert (=> bs!1645596 (= lambda!359035 lambda!359016)))

(declare-fun bs!1645597 () Bool)

(assert (= bs!1645597 (and d!2034754 d!2034718)))

(assert (=> bs!1645597 (= lambda!359035 lambda!359026)))

(assert (=> d!2034754 (= (inv!84159 (h!71720 zl!343)) (forall!15548 (exprs!6249 (h!71720 zl!343)) lambda!359035))))

(declare-fun bs!1645598 () Bool)

(assert (= bs!1645598 d!2034754))

(declare-fun m!7274570 () Bool)

(assert (=> bs!1645598 m!7274570))

(assert (=> b!6485101 d!2034754))

(declare-fun b!6486171 () Bool)

(declare-fun e!3931085 () List!65395)

(assert (=> b!6486171 (= e!3931085 lt!2388320)))

(declare-fun b!6486174 () Bool)

(declare-fun e!3931086 () Bool)

(declare-fun lt!2388528 () List!65395)

(assert (=> b!6486174 (= e!3931086 (or (not (= lt!2388320 Nil!65271)) (= lt!2388528 lt!2388299)))))

(declare-fun b!6486173 () Bool)

(declare-fun res!2663770 () Bool)

(assert (=> b!6486173 (=> (not res!2663770) (not e!3931086))))

(declare-fun size!40422 (List!65395) Int)

(assert (=> b!6486173 (= res!2663770 (= (size!40422 lt!2388528) (+ (size!40422 lt!2388299) (size!40422 lt!2388320))))))

(declare-fun b!6486172 () Bool)

(assert (=> b!6486172 (= e!3931085 (Cons!65271 (h!71719 lt!2388299) (++!14441 (t!379021 lt!2388299) lt!2388320)))))

(declare-fun d!2034756 () Bool)

(assert (=> d!2034756 e!3931086))

(declare-fun res!2663771 () Bool)

(assert (=> d!2034756 (=> (not res!2663771) (not e!3931086))))

(declare-fun content!12434 (List!65395) (InoxSet Regex!16365))

(assert (=> d!2034756 (= res!2663771 (= (content!12434 lt!2388528) ((_ map or) (content!12434 lt!2388299) (content!12434 lt!2388320))))))

(assert (=> d!2034756 (= lt!2388528 e!3931085)))

(declare-fun c!1188343 () Bool)

(assert (=> d!2034756 (= c!1188343 ((_ is Nil!65271) lt!2388299))))

(assert (=> d!2034756 (= (++!14441 lt!2388299 lt!2388320) lt!2388528)))

(assert (= (and d!2034756 c!1188343) b!6486171))

(assert (= (and d!2034756 (not c!1188343)) b!6486172))

(assert (= (and d!2034756 res!2663771) b!6486173))

(assert (= (and b!6486173 res!2663770) b!6486174))

(declare-fun m!7274572 () Bool)

(assert (=> b!6486173 m!7274572))

(declare-fun m!7274574 () Bool)

(assert (=> b!6486173 m!7274574))

(declare-fun m!7274576 () Bool)

(assert (=> b!6486173 m!7274576))

(declare-fun m!7274578 () Bool)

(assert (=> b!6486172 m!7274578))

(declare-fun m!7274580 () Bool)

(assert (=> d!2034756 m!7274580))

(declare-fun m!7274582 () Bool)

(assert (=> d!2034756 m!7274582))

(declare-fun m!7274584 () Bool)

(assert (=> d!2034756 m!7274584))

(assert (=> b!6485081 d!2034756))

(declare-fun d!2034758 () Bool)

(assert (=> d!2034758 (forall!15548 (++!14441 lt!2388299 lt!2388320) lambda!358938)))

(declare-fun lt!2388531 () Unit!158791)

(declare-fun choose!48133 (List!65395 List!65395 Int) Unit!158791)

(assert (=> d!2034758 (= lt!2388531 (choose!48133 lt!2388299 lt!2388320 lambda!358938))))

(assert (=> d!2034758 (forall!15548 lt!2388299 lambda!358938)))

(assert (=> d!2034758 (= (lemmaConcatPreservesForall!344 lt!2388299 lt!2388320 lambda!358938) lt!2388531)))

(declare-fun bs!1645599 () Bool)

(assert (= bs!1645599 d!2034758))

(assert (=> bs!1645599 m!7273336))

(assert (=> bs!1645599 m!7273336))

(declare-fun m!7274586 () Bool)

(assert (=> bs!1645599 m!7274586))

(declare-fun m!7274588 () Bool)

(assert (=> bs!1645599 m!7274588))

(declare-fun m!7274590 () Bool)

(assert (=> bs!1645599 m!7274590))

(assert (=> b!6485081 d!2034758))

(declare-fun d!2034760 () Bool)

(assert (=> d!2034760 (matchR!8548 (Star!16365 (reg!16694 (regOne!33242 r!7292))) (++!14440 (_1!36647 lt!2388318) (_2!36647 lt!2388318)))))

(declare-fun lt!2388534 () Unit!158791)

(declare-fun choose!48134 (Regex!16365 List!65394 List!65394) Unit!158791)

(assert (=> d!2034760 (= lt!2388534 (choose!48134 (reg!16694 (regOne!33242 r!7292)) (_1!36647 lt!2388318) (_2!36647 lt!2388318)))))

(assert (=> d!2034760 (validRegex!8101 (Star!16365 (reg!16694 (regOne!33242 r!7292))))))

(assert (=> d!2034760 (= (lemmaStarApp!142 (reg!16694 (regOne!33242 r!7292)) (_1!36647 lt!2388318) (_2!36647 lt!2388318)) lt!2388534)))

(declare-fun bs!1645600 () Bool)

(assert (= bs!1645600 d!2034760))

(assert (=> bs!1645600 m!7273426))

(assert (=> bs!1645600 m!7273426))

(declare-fun m!7274592 () Bool)

(assert (=> bs!1645600 m!7274592))

(declare-fun m!7274594 () Bool)

(assert (=> bs!1645600 m!7274594))

(declare-fun m!7274596 () Bool)

(assert (=> bs!1645600 m!7274596))

(assert (=> b!6485081 d!2034760))

(declare-fun b!6486175 () Bool)

(declare-fun e!3931092 () Bool)

(assert (=> b!6486175 (= e!3931092 (matchR!8548 (derivativeStep!5061 lt!2388335 (head!13205 lt!2388343)) (tail!12290 lt!2388343)))))

(declare-fun b!6486176 () Bool)

(assert (=> b!6486176 (= e!3931092 (nullable!6358 lt!2388335))))

(declare-fun b!6486177 () Bool)

(declare-fun e!3931089 () Bool)

(assert (=> b!6486177 (= e!3931089 (not (= (head!13205 lt!2388343) (c!1188049 lt!2388335))))))

(declare-fun b!6486178 () Bool)

(declare-fun res!2663776 () Bool)

(declare-fun e!3931090 () Bool)

(assert (=> b!6486178 (=> res!2663776 e!3931090)))

(assert (=> b!6486178 (= res!2663776 (not ((_ is ElementMatch!16365) lt!2388335)))))

(declare-fun e!3931088 () Bool)

(assert (=> b!6486178 (= e!3931088 e!3931090)))

(declare-fun b!6486179 () Bool)

(declare-fun res!2663772 () Bool)

(assert (=> b!6486179 (=> res!2663772 e!3931089)))

(assert (=> b!6486179 (= res!2663772 (not (isEmpty!37460 (tail!12290 lt!2388343))))))

(declare-fun b!6486180 () Bool)

(declare-fun lt!2388535 () Bool)

(assert (=> b!6486180 (= e!3931088 (not lt!2388535))))

(declare-fun b!6486181 () Bool)

(declare-fun res!2663779 () Bool)

(declare-fun e!3931093 () Bool)

(assert (=> b!6486181 (=> (not res!2663779) (not e!3931093))))

(assert (=> b!6486181 (= res!2663779 (isEmpty!37460 (tail!12290 lt!2388343)))))

(declare-fun b!6486182 () Bool)

(declare-fun e!3931091 () Bool)

(declare-fun call!561379 () Bool)

(assert (=> b!6486182 (= e!3931091 (= lt!2388535 call!561379))))

(declare-fun bm!561374 () Bool)

(assert (=> bm!561374 (= call!561379 (isEmpty!37460 lt!2388343))))

(declare-fun b!6486183 () Bool)

(declare-fun res!2663774 () Bool)

(assert (=> b!6486183 (=> res!2663774 e!3931090)))

(assert (=> b!6486183 (= res!2663774 e!3931093)))

(declare-fun res!2663773 () Bool)

(assert (=> b!6486183 (=> (not res!2663773) (not e!3931093))))

(assert (=> b!6486183 (= res!2663773 lt!2388535)))

(declare-fun b!6486184 () Bool)

(declare-fun e!3931087 () Bool)

(assert (=> b!6486184 (= e!3931087 e!3931089)))

(declare-fun res!2663778 () Bool)

(assert (=> b!6486184 (=> res!2663778 e!3931089)))

(assert (=> b!6486184 (= res!2663778 call!561379)))

(declare-fun d!2034762 () Bool)

(assert (=> d!2034762 e!3931091))

(declare-fun c!1188346 () Bool)

(assert (=> d!2034762 (= c!1188346 ((_ is EmptyExpr!16365) lt!2388335))))

(assert (=> d!2034762 (= lt!2388535 e!3931092)))

(declare-fun c!1188345 () Bool)

(assert (=> d!2034762 (= c!1188345 (isEmpty!37460 lt!2388343))))

(assert (=> d!2034762 (validRegex!8101 lt!2388335)))

(assert (=> d!2034762 (= (matchR!8548 lt!2388335 lt!2388343) lt!2388535)))

(declare-fun b!6486185 () Bool)

(declare-fun res!2663777 () Bool)

(assert (=> b!6486185 (=> (not res!2663777) (not e!3931093))))

(assert (=> b!6486185 (= res!2663777 (not call!561379))))

(declare-fun b!6486186 () Bool)

(assert (=> b!6486186 (= e!3931093 (= (head!13205 lt!2388343) (c!1188049 lt!2388335)))))

(declare-fun b!6486187 () Bool)

(assert (=> b!6486187 (= e!3931091 e!3931088)))

(declare-fun c!1188344 () Bool)

(assert (=> b!6486187 (= c!1188344 ((_ is EmptyLang!16365) lt!2388335))))

(declare-fun b!6486188 () Bool)

(assert (=> b!6486188 (= e!3931090 e!3931087)))

(declare-fun res!2663775 () Bool)

(assert (=> b!6486188 (=> (not res!2663775) (not e!3931087))))

(assert (=> b!6486188 (= res!2663775 (not lt!2388535))))

(assert (= (and d!2034762 c!1188345) b!6486176))

(assert (= (and d!2034762 (not c!1188345)) b!6486175))

(assert (= (and d!2034762 c!1188346) b!6486182))

(assert (= (and d!2034762 (not c!1188346)) b!6486187))

(assert (= (and b!6486187 c!1188344) b!6486180))

(assert (= (and b!6486187 (not c!1188344)) b!6486178))

(assert (= (and b!6486178 (not res!2663776)) b!6486183))

(assert (= (and b!6486183 res!2663773) b!6486185))

(assert (= (and b!6486185 res!2663777) b!6486181))

(assert (= (and b!6486181 res!2663779) b!6486186))

(assert (= (and b!6486183 (not res!2663774)) b!6486188))

(assert (= (and b!6486188 res!2663775) b!6486184))

(assert (= (and b!6486184 (not res!2663778)) b!6486179))

(assert (= (and b!6486179 (not res!2663772)) b!6486177))

(assert (= (or b!6486182 b!6486184 b!6486185) bm!561374))

(declare-fun m!7274598 () Bool)

(assert (=> b!6486175 m!7274598))

(assert (=> b!6486175 m!7274598))

(declare-fun m!7274600 () Bool)

(assert (=> b!6486175 m!7274600))

(declare-fun m!7274602 () Bool)

(assert (=> b!6486175 m!7274602))

(assert (=> b!6486175 m!7274600))

(assert (=> b!6486175 m!7274602))

(declare-fun m!7274604 () Bool)

(assert (=> b!6486175 m!7274604))

(assert (=> b!6486186 m!7274598))

(assert (=> b!6486179 m!7274602))

(assert (=> b!6486179 m!7274602))

(declare-fun m!7274606 () Bool)

(assert (=> b!6486179 m!7274606))

(assert (=> b!6486181 m!7274602))

(assert (=> b!6486181 m!7274602))

(assert (=> b!6486181 m!7274606))

(declare-fun m!7274608 () Bool)

(assert (=> bm!561374 m!7274608))

(assert (=> b!6486176 m!7274396))

(assert (=> d!2034762 m!7274608))

(assert (=> d!2034762 m!7274398))

(assert (=> b!6486177 m!7274598))

(assert (=> b!6485081 d!2034762))

(declare-fun d!2034764 () Bool)

(declare-fun c!1188347 () Bool)

(assert (=> d!2034764 (= c!1188347 (isEmpty!37460 lt!2388343))))

(declare-fun e!3931094 () Bool)

(assert (=> d!2034764 (= (matchZipper!2377 (store ((as const (Array Context!11498 Bool)) false) (Context!11499 (++!14441 lt!2388299 lt!2388320)) true) lt!2388343) e!3931094)))

(declare-fun b!6486189 () Bool)

(assert (=> b!6486189 (= e!3931094 (nullableZipper!2122 (store ((as const (Array Context!11498 Bool)) false) (Context!11499 (++!14441 lt!2388299 lt!2388320)) true)))))

(declare-fun b!6486190 () Bool)

(assert (=> b!6486190 (= e!3931094 (matchZipper!2377 (derivationStepZipper!2331 (store ((as const (Array Context!11498 Bool)) false) (Context!11499 (++!14441 lt!2388299 lt!2388320)) true) (head!13205 lt!2388343)) (tail!12290 lt!2388343)))))

(assert (= (and d!2034764 c!1188347) b!6486189))

(assert (= (and d!2034764 (not c!1188347)) b!6486190))

(assert (=> d!2034764 m!7274608))

(assert (=> b!6486189 m!7273344))

(declare-fun m!7274610 () Bool)

(assert (=> b!6486189 m!7274610))

(assert (=> b!6486190 m!7274598))

(assert (=> b!6486190 m!7273344))

(assert (=> b!6486190 m!7274598))

(declare-fun m!7274612 () Bool)

(assert (=> b!6486190 m!7274612))

(assert (=> b!6486190 m!7274602))

(assert (=> b!6486190 m!7274612))

(assert (=> b!6486190 m!7274602))

(declare-fun m!7274614 () Bool)

(assert (=> b!6486190 m!7274614))

(assert (=> b!6485081 d!2034764))

(declare-fun b!6486191 () Bool)

(declare-fun e!3931100 () Bool)

(assert (=> b!6486191 (= e!3931100 (matchR!8548 (derivativeStep!5061 lt!2388294 (head!13205 lt!2388317)) (tail!12290 lt!2388317)))))

(declare-fun b!6486192 () Bool)

(assert (=> b!6486192 (= e!3931100 (nullable!6358 lt!2388294))))

(declare-fun b!6486193 () Bool)

(declare-fun e!3931097 () Bool)

(assert (=> b!6486193 (= e!3931097 (not (= (head!13205 lt!2388317) (c!1188049 lt!2388294))))))

(declare-fun b!6486194 () Bool)

(declare-fun res!2663784 () Bool)

(declare-fun e!3931098 () Bool)

(assert (=> b!6486194 (=> res!2663784 e!3931098)))

(assert (=> b!6486194 (= res!2663784 (not ((_ is ElementMatch!16365) lt!2388294)))))

(declare-fun e!3931096 () Bool)

(assert (=> b!6486194 (= e!3931096 e!3931098)))

(declare-fun b!6486195 () Bool)

(declare-fun res!2663780 () Bool)

(assert (=> b!6486195 (=> res!2663780 e!3931097)))

(assert (=> b!6486195 (= res!2663780 (not (isEmpty!37460 (tail!12290 lt!2388317))))))

(declare-fun b!6486196 () Bool)

(declare-fun lt!2388536 () Bool)

(assert (=> b!6486196 (= e!3931096 (not lt!2388536))))

(declare-fun b!6486197 () Bool)

(declare-fun res!2663787 () Bool)

(declare-fun e!3931101 () Bool)

(assert (=> b!6486197 (=> (not res!2663787) (not e!3931101))))

(assert (=> b!6486197 (= res!2663787 (isEmpty!37460 (tail!12290 lt!2388317)))))

(declare-fun b!6486198 () Bool)

(declare-fun e!3931099 () Bool)

(declare-fun call!561380 () Bool)

(assert (=> b!6486198 (= e!3931099 (= lt!2388536 call!561380))))

(declare-fun bm!561375 () Bool)

(assert (=> bm!561375 (= call!561380 (isEmpty!37460 lt!2388317))))

(declare-fun b!6486199 () Bool)

(declare-fun res!2663782 () Bool)

(assert (=> b!6486199 (=> res!2663782 e!3931098)))

(assert (=> b!6486199 (= res!2663782 e!3931101)))

(declare-fun res!2663781 () Bool)

(assert (=> b!6486199 (=> (not res!2663781) (not e!3931101))))

(assert (=> b!6486199 (= res!2663781 lt!2388536)))

(declare-fun b!6486200 () Bool)

(declare-fun e!3931095 () Bool)

(assert (=> b!6486200 (= e!3931095 e!3931097)))

(declare-fun res!2663786 () Bool)

(assert (=> b!6486200 (=> res!2663786 e!3931097)))

(assert (=> b!6486200 (= res!2663786 call!561380)))

(declare-fun d!2034766 () Bool)

(assert (=> d!2034766 e!3931099))

(declare-fun c!1188350 () Bool)

(assert (=> d!2034766 (= c!1188350 ((_ is EmptyExpr!16365) lt!2388294))))

(assert (=> d!2034766 (= lt!2388536 e!3931100)))

(declare-fun c!1188349 () Bool)

(assert (=> d!2034766 (= c!1188349 (isEmpty!37460 lt!2388317))))

(assert (=> d!2034766 (validRegex!8101 lt!2388294)))

(assert (=> d!2034766 (= (matchR!8548 lt!2388294 lt!2388317) lt!2388536)))

(declare-fun b!6486201 () Bool)

(declare-fun res!2663785 () Bool)

(assert (=> b!6486201 (=> (not res!2663785) (not e!3931101))))

(assert (=> b!6486201 (= res!2663785 (not call!561380))))

(declare-fun b!6486202 () Bool)

(assert (=> b!6486202 (= e!3931101 (= (head!13205 lt!2388317) (c!1188049 lt!2388294)))))

(declare-fun b!6486203 () Bool)

(assert (=> b!6486203 (= e!3931099 e!3931096)))

(declare-fun c!1188348 () Bool)

(assert (=> b!6486203 (= c!1188348 ((_ is EmptyLang!16365) lt!2388294))))

(declare-fun b!6486204 () Bool)

(assert (=> b!6486204 (= e!3931098 e!3931095)))

(declare-fun res!2663783 () Bool)

(assert (=> b!6486204 (=> (not res!2663783) (not e!3931095))))

(assert (=> b!6486204 (= res!2663783 (not lt!2388536))))

(assert (= (and d!2034766 c!1188349) b!6486192))

(assert (= (and d!2034766 (not c!1188349)) b!6486191))

(assert (= (and d!2034766 c!1188350) b!6486198))

(assert (= (and d!2034766 (not c!1188350)) b!6486203))

(assert (= (and b!6486203 c!1188348) b!6486196))

(assert (= (and b!6486203 (not c!1188348)) b!6486194))

(assert (= (and b!6486194 (not res!2663784)) b!6486199))

(assert (= (and b!6486199 res!2663781) b!6486201))

(assert (= (and b!6486201 res!2663785) b!6486197))

(assert (= (and b!6486197 res!2663787) b!6486202))

(assert (= (and b!6486199 (not res!2663782)) b!6486204))

(assert (= (and b!6486204 res!2663783) b!6486200))

(assert (= (and b!6486200 (not res!2663786)) b!6486195))

(assert (= (and b!6486195 (not res!2663780)) b!6486193))

(assert (= (or b!6486198 b!6486200 b!6486201) bm!561375))

(declare-fun m!7274616 () Bool)

(assert (=> b!6486191 m!7274616))

(assert (=> b!6486191 m!7274616))

(declare-fun m!7274618 () Bool)

(assert (=> b!6486191 m!7274618))

(declare-fun m!7274620 () Bool)

(assert (=> b!6486191 m!7274620))

(assert (=> b!6486191 m!7274618))

(assert (=> b!6486191 m!7274620))

(declare-fun m!7274622 () Bool)

(assert (=> b!6486191 m!7274622))

(assert (=> b!6486202 m!7274616))

(assert (=> b!6486195 m!7274620))

(assert (=> b!6486195 m!7274620))

(declare-fun m!7274624 () Bool)

(assert (=> b!6486195 m!7274624))

(assert (=> b!6486197 m!7274620))

(assert (=> b!6486197 m!7274620))

(assert (=> b!6486197 m!7274624))

(declare-fun m!7274626 () Bool)

(assert (=> bm!561375 m!7274626))

(declare-fun m!7274628 () Bool)

(assert (=> b!6486192 m!7274628))

(assert (=> d!2034766 m!7274626))

(declare-fun m!7274630 () Bool)

(assert (=> d!2034766 m!7274630))

(assert (=> b!6486193 m!7274616))

(assert (=> b!6485081 d!2034766))

(declare-fun bs!1645601 () Bool)

(declare-fun d!2034768 () Bool)

(assert (= bs!1645601 (and d!2034768 d!2034754)))

(declare-fun lambda!359038 () Int)

(assert (=> bs!1645601 (= lambda!359038 lambda!359035)))

(declare-fun bs!1645602 () Bool)

(assert (= bs!1645602 (and d!2034768 d!2034678)))

(assert (=> bs!1645602 (= lambda!359038 lambda!359016)))

(declare-fun bs!1645603 () Bool)

(assert (= bs!1645603 (and d!2034768 b!6485081)))

(assert (=> bs!1645603 (= lambda!359038 lambda!358938)))

(declare-fun bs!1645604 () Bool)

(assert (= bs!1645604 (and d!2034768 d!2034668)))

(assert (=> bs!1645604 (= lambda!359038 lambda!359013)))

(declare-fun bs!1645605 () Bool)

(assert (= bs!1645605 (and d!2034768 d!2034718)))

(assert (=> bs!1645605 (= lambda!359038 lambda!359026)))

(assert (=> d!2034768 (matchZipper!2377 (store ((as const (Array Context!11498 Bool)) false) (Context!11499 (++!14441 (exprs!6249 lt!2388315) (exprs!6249 lt!2388330))) true) (++!14440 (_1!36647 lt!2388318) lt!2388317))))

(declare-fun lt!2388542 () Unit!158791)

(assert (=> d!2034768 (= lt!2388542 (lemmaConcatPreservesForall!344 (exprs!6249 lt!2388315) (exprs!6249 lt!2388330) lambda!359038))))

(declare-fun lt!2388541 () Unit!158791)

(declare-fun choose!48135 (Context!11498 Context!11498 List!65394 List!65394) Unit!158791)

(assert (=> d!2034768 (= lt!2388541 (choose!48135 lt!2388315 lt!2388330 (_1!36647 lt!2388318) lt!2388317))))

(assert (=> d!2034768 (matchZipper!2377 (store ((as const (Array Context!11498 Bool)) false) lt!2388315 true) (_1!36647 lt!2388318))))

(assert (=> d!2034768 (= (lemmaConcatenateContextMatchesConcatOfStrings!166 lt!2388315 lt!2388330 (_1!36647 lt!2388318) lt!2388317) lt!2388541)))

(declare-fun bs!1645606 () Bool)

(assert (= bs!1645606 d!2034768))

(declare-fun m!7274632 () Bool)

(assert (=> bs!1645606 m!7274632))

(declare-fun m!7274634 () Bool)

(assert (=> bs!1645606 m!7274634))

(assert (=> bs!1645606 m!7273478))

(declare-fun m!7274636 () Bool)

(assert (=> bs!1645606 m!7274636))

(assert (=> bs!1645606 m!7273478))

(declare-fun m!7274638 () Bool)

(assert (=> bs!1645606 m!7274638))

(assert (=> bs!1645606 m!7273416))

(declare-fun m!7274640 () Bool)

(assert (=> bs!1645606 m!7274640))

(assert (=> bs!1645606 m!7274634))

(declare-fun m!7274642 () Bool)

(assert (=> bs!1645606 m!7274642))

(assert (=> bs!1645606 m!7273416))

(assert (=> b!6485081 d!2034768))

(declare-fun b!6486205 () Bool)

(declare-fun e!3931107 () Bool)

(assert (=> b!6486205 (= e!3931107 (matchR!8548 (derivativeStep!5061 lt!2388338 (head!13205 lt!2388306)) (tail!12290 lt!2388306)))))

(declare-fun b!6486206 () Bool)

(assert (=> b!6486206 (= e!3931107 (nullable!6358 lt!2388338))))

(declare-fun b!6486207 () Bool)

(declare-fun e!3931104 () Bool)

(assert (=> b!6486207 (= e!3931104 (not (= (head!13205 lt!2388306) (c!1188049 lt!2388338))))))

(declare-fun b!6486208 () Bool)

(declare-fun res!2663792 () Bool)

(declare-fun e!3931105 () Bool)

(assert (=> b!6486208 (=> res!2663792 e!3931105)))

(assert (=> b!6486208 (= res!2663792 (not ((_ is ElementMatch!16365) lt!2388338)))))

(declare-fun e!3931103 () Bool)

(assert (=> b!6486208 (= e!3931103 e!3931105)))

(declare-fun b!6486209 () Bool)

(declare-fun res!2663788 () Bool)

(assert (=> b!6486209 (=> res!2663788 e!3931104)))

(assert (=> b!6486209 (= res!2663788 (not (isEmpty!37460 (tail!12290 lt!2388306))))))

(declare-fun b!6486210 () Bool)

(declare-fun lt!2388543 () Bool)

(assert (=> b!6486210 (= e!3931103 (not lt!2388543))))

(declare-fun b!6486211 () Bool)

(declare-fun res!2663795 () Bool)

(declare-fun e!3931108 () Bool)

(assert (=> b!6486211 (=> (not res!2663795) (not e!3931108))))

(assert (=> b!6486211 (= res!2663795 (isEmpty!37460 (tail!12290 lt!2388306)))))

(declare-fun b!6486212 () Bool)

(declare-fun e!3931106 () Bool)

(declare-fun call!561381 () Bool)

(assert (=> b!6486212 (= e!3931106 (= lt!2388543 call!561381))))

(declare-fun bm!561376 () Bool)

(assert (=> bm!561376 (= call!561381 (isEmpty!37460 lt!2388306))))

(declare-fun b!6486213 () Bool)

(declare-fun res!2663790 () Bool)

(assert (=> b!6486213 (=> res!2663790 e!3931105)))

(assert (=> b!6486213 (= res!2663790 e!3931108)))

(declare-fun res!2663789 () Bool)

(assert (=> b!6486213 (=> (not res!2663789) (not e!3931108))))

(assert (=> b!6486213 (= res!2663789 lt!2388543)))

(declare-fun b!6486214 () Bool)

(declare-fun e!3931102 () Bool)

(assert (=> b!6486214 (= e!3931102 e!3931104)))

(declare-fun res!2663794 () Bool)

(assert (=> b!6486214 (=> res!2663794 e!3931104)))

(assert (=> b!6486214 (= res!2663794 call!561381)))

(declare-fun d!2034770 () Bool)

(assert (=> d!2034770 e!3931106))

(declare-fun c!1188353 () Bool)

(assert (=> d!2034770 (= c!1188353 ((_ is EmptyExpr!16365) lt!2388338))))

(assert (=> d!2034770 (= lt!2388543 e!3931107)))

(declare-fun c!1188352 () Bool)

(assert (=> d!2034770 (= c!1188352 (isEmpty!37460 lt!2388306))))

(assert (=> d!2034770 (validRegex!8101 lt!2388338)))

(assert (=> d!2034770 (= (matchR!8548 lt!2388338 lt!2388306) lt!2388543)))

(declare-fun b!6486215 () Bool)

(declare-fun res!2663793 () Bool)

(assert (=> b!6486215 (=> (not res!2663793) (not e!3931108))))

(assert (=> b!6486215 (= res!2663793 (not call!561381))))

(declare-fun b!6486216 () Bool)

(assert (=> b!6486216 (= e!3931108 (= (head!13205 lt!2388306) (c!1188049 lt!2388338)))))

(declare-fun b!6486217 () Bool)

(assert (=> b!6486217 (= e!3931106 e!3931103)))

(declare-fun c!1188351 () Bool)

(assert (=> b!6486217 (= c!1188351 ((_ is EmptyLang!16365) lt!2388338))))

(declare-fun b!6486218 () Bool)

(assert (=> b!6486218 (= e!3931105 e!3931102)))

(declare-fun res!2663791 () Bool)

(assert (=> b!6486218 (=> (not res!2663791) (not e!3931102))))

(assert (=> b!6486218 (= res!2663791 (not lt!2388543))))

(assert (= (and d!2034770 c!1188352) b!6486206))

(assert (= (and d!2034770 (not c!1188352)) b!6486205))

(assert (= (and d!2034770 c!1188353) b!6486212))

(assert (= (and d!2034770 (not c!1188353)) b!6486217))

(assert (= (and b!6486217 c!1188351) b!6486210))

(assert (= (and b!6486217 (not c!1188351)) b!6486208))

(assert (= (and b!6486208 (not res!2663792)) b!6486213))

(assert (= (and b!6486213 res!2663789) b!6486215))

(assert (= (and b!6486215 res!2663793) b!6486211))

(assert (= (and b!6486211 res!2663795) b!6486216))

(assert (= (and b!6486213 (not res!2663790)) b!6486218))

(assert (= (and b!6486218 res!2663791) b!6486214))

(assert (= (and b!6486214 (not res!2663794)) b!6486209))

(assert (= (and b!6486209 (not res!2663788)) b!6486207))

(assert (= (or b!6486212 b!6486214 b!6486215) bm!561376))

(declare-fun m!7274644 () Bool)

(assert (=> b!6486205 m!7274644))

(assert (=> b!6486205 m!7274644))

(declare-fun m!7274646 () Bool)

(assert (=> b!6486205 m!7274646))

(declare-fun m!7274648 () Bool)

(assert (=> b!6486205 m!7274648))

(assert (=> b!6486205 m!7274646))

(assert (=> b!6486205 m!7274648))

(declare-fun m!7274650 () Bool)

(assert (=> b!6486205 m!7274650))

(assert (=> b!6486216 m!7274644))

(assert (=> b!6486209 m!7274648))

(assert (=> b!6486209 m!7274648))

(declare-fun m!7274652 () Bool)

(assert (=> b!6486209 m!7274652))

(assert (=> b!6486211 m!7274648))

(assert (=> b!6486211 m!7274648))

(assert (=> b!6486211 m!7274652))

(declare-fun m!7274654 () Bool)

(assert (=> bm!561376 m!7274654))

(assert (=> b!6486206 m!7273778))

(assert (=> d!2034770 m!7274654))

(assert (=> d!2034770 m!7273780))

(assert (=> b!6486207 m!7274644))

(assert (=> b!6485081 d!2034770))

(declare-fun d!2034772 () Bool)

(declare-fun c!1188354 () Bool)

(assert (=> d!2034772 (= c!1188354 (isEmpty!37460 lt!2388317))))

(declare-fun e!3931109 () Bool)

(assert (=> d!2034772 (= (matchZipper!2377 lt!2388319 lt!2388317) e!3931109)))

(declare-fun b!6486219 () Bool)

(assert (=> b!6486219 (= e!3931109 (nullableZipper!2122 lt!2388319))))

(declare-fun b!6486220 () Bool)

(assert (=> b!6486220 (= e!3931109 (matchZipper!2377 (derivationStepZipper!2331 lt!2388319 (head!13205 lt!2388317)) (tail!12290 lt!2388317)))))

(assert (= (and d!2034772 c!1188354) b!6486219))

(assert (= (and d!2034772 (not c!1188354)) b!6486220))

(assert (=> d!2034772 m!7274626))

(declare-fun m!7274656 () Bool)

(assert (=> b!6486219 m!7274656))

(assert (=> b!6486220 m!7274616))

(assert (=> b!6486220 m!7274616))

(declare-fun m!7274658 () Bool)

(assert (=> b!6486220 m!7274658))

(assert (=> b!6486220 m!7274620))

(assert (=> b!6486220 m!7274658))

(assert (=> b!6486220 m!7274620))

(declare-fun m!7274660 () Bool)

(assert (=> b!6486220 m!7274660))

(assert (=> b!6485081 d!2034772))

(declare-fun d!2034774 () Bool)

(assert (=> d!2034774 (= (matchR!8548 (reg!16694 (regOne!33242 r!7292)) (_1!36647 lt!2388318)) (matchZipper!2377 lt!2388296 (_1!36647 lt!2388318)))))

(declare-fun lt!2388546 () Unit!158791)

(declare-fun choose!48136 ((InoxSet Context!11498) List!65396 Regex!16365 List!65394) Unit!158791)

(assert (=> d!2034774 (= lt!2388546 (choose!48136 lt!2388296 lt!2388302 (reg!16694 (regOne!33242 r!7292)) (_1!36647 lt!2388318)))))

(assert (=> d!2034774 (validRegex!8101 (reg!16694 (regOne!33242 r!7292)))))

(assert (=> d!2034774 (= (theoremZipperRegexEquiv!831 lt!2388296 lt!2388302 (reg!16694 (regOne!33242 r!7292)) (_1!36647 lt!2388318)) lt!2388546)))

(declare-fun bs!1645607 () Bool)

(assert (= bs!1645607 d!2034774))

(assert (=> bs!1645607 m!7273446))

(assert (=> bs!1645607 m!7273340))

(declare-fun m!7274662 () Bool)

(assert (=> bs!1645607 m!7274662))

(assert (=> bs!1645607 m!7273954))

(assert (=> b!6485081 d!2034774))

(declare-fun bs!1645608 () Bool)

(declare-fun d!2034776 () Bool)

(assert (= bs!1645608 (and d!2034776 d!2034754)))

(declare-fun lambda!359039 () Int)

(assert (=> bs!1645608 (= lambda!359039 lambda!359035)))

(declare-fun bs!1645609 () Bool)

(assert (= bs!1645609 (and d!2034776 d!2034678)))

(assert (=> bs!1645609 (= lambda!359039 lambda!359016)))

(declare-fun bs!1645610 () Bool)

(assert (= bs!1645610 (and d!2034776 b!6485081)))

(assert (=> bs!1645610 (= lambda!359039 lambda!358938)))

(declare-fun bs!1645611 () Bool)

(assert (= bs!1645611 (and d!2034776 d!2034668)))

(assert (=> bs!1645611 (= lambda!359039 lambda!359013)))

(declare-fun bs!1645612 () Bool)

(assert (= bs!1645612 (and d!2034776 d!2034718)))

(assert (=> bs!1645612 (= lambda!359039 lambda!359026)))

(declare-fun bs!1645613 () Bool)

(assert (= bs!1645613 (and d!2034776 d!2034768)))

(assert (=> bs!1645613 (= lambda!359039 lambda!359038)))

(assert (=> d!2034776 (= (inv!84159 lt!2388330) (forall!15548 (exprs!6249 lt!2388330) lambda!359039))))

(declare-fun bs!1645614 () Bool)

(assert (= bs!1645614 d!2034776))

(declare-fun m!7274664 () Bool)

(assert (=> bs!1645614 m!7274664))

(assert (=> b!6485081 d!2034776))

(declare-fun d!2034778 () Bool)

(assert (=> d!2034778 (matchR!8548 (Concat!25210 lt!2388338 (regTwo!33242 r!7292)) (++!14440 (_2!36647 lt!2388318) (_2!36647 lt!2388334)))))

(declare-fun lt!2388549 () Unit!158791)

(declare-fun choose!48137 (Regex!16365 Regex!16365 List!65394 List!65394) Unit!158791)

(assert (=> d!2034778 (= lt!2388549 (choose!48137 lt!2388338 (regTwo!33242 r!7292) (_2!36647 lt!2388318) (_2!36647 lt!2388334)))))

(declare-fun e!3931112 () Bool)

(assert (=> d!2034778 e!3931112))

(declare-fun res!2663798 () Bool)

(assert (=> d!2034778 (=> (not res!2663798) (not e!3931112))))

(assert (=> d!2034778 (= res!2663798 (validRegex!8101 lt!2388338))))

(assert (=> d!2034778 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!328 lt!2388338 (regTwo!33242 r!7292) (_2!36647 lt!2388318) (_2!36647 lt!2388334)) lt!2388549)))

(declare-fun b!6486223 () Bool)

(assert (=> b!6486223 (= e!3931112 (validRegex!8101 (regTwo!33242 r!7292)))))

(assert (= (and d!2034778 res!2663798) b!6486223))

(assert (=> d!2034778 m!7273482))

(assert (=> d!2034778 m!7273482))

(declare-fun m!7274666 () Bool)

(assert (=> d!2034778 m!7274666))

(declare-fun m!7274668 () Bool)

(assert (=> d!2034778 m!7274668))

(assert (=> d!2034778 m!7273780))

(assert (=> b!6486223 m!7273798))

(assert (=> b!6485081 d!2034778))

(declare-fun d!2034780 () Bool)

(assert (=> d!2034780 (= (matchR!8548 lt!2388294 lt!2388317) (matchZipper!2377 lt!2388319 lt!2388317))))

(declare-fun lt!2388550 () Unit!158791)

(assert (=> d!2034780 (= lt!2388550 (choose!48136 lt!2388319 lt!2388310 lt!2388294 lt!2388317))))

(assert (=> d!2034780 (validRegex!8101 lt!2388294)))

(assert (=> d!2034780 (= (theoremZipperRegexEquiv!831 lt!2388319 lt!2388310 lt!2388294 lt!2388317) lt!2388550)))

(declare-fun bs!1645615 () Bool)

(assert (= bs!1645615 d!2034780))

(assert (=> bs!1645615 m!7273346))

(assert (=> bs!1645615 m!7273364))

(declare-fun m!7274670 () Bool)

(assert (=> bs!1645615 m!7274670))

(assert (=> bs!1645615 m!7274630))

(assert (=> b!6485081 d!2034780))

(declare-fun d!2034782 () Bool)

(assert (=> d!2034782 (matchR!8548 (Concat!25210 (reg!16694 (regOne!33242 r!7292)) lt!2388294) (++!14440 (_1!36647 lt!2388318) lt!2388317))))

(declare-fun lt!2388551 () Unit!158791)

(assert (=> d!2034782 (= lt!2388551 (choose!48137 (reg!16694 (regOne!33242 r!7292)) lt!2388294 (_1!36647 lt!2388318) lt!2388317))))

(declare-fun e!3931113 () Bool)

(assert (=> d!2034782 e!3931113))

(declare-fun res!2663799 () Bool)

(assert (=> d!2034782 (=> (not res!2663799) (not e!3931113))))

(assert (=> d!2034782 (= res!2663799 (validRegex!8101 (reg!16694 (regOne!33242 r!7292))))))

(assert (=> d!2034782 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!328 (reg!16694 (regOne!33242 r!7292)) lt!2388294 (_1!36647 lt!2388318) lt!2388317) lt!2388551)))

(declare-fun b!6486224 () Bool)

(assert (=> b!6486224 (= e!3931113 (validRegex!8101 lt!2388294))))

(assert (= (and d!2034782 res!2663799) b!6486224))

(assert (=> d!2034782 m!7273478))

(assert (=> d!2034782 m!7273478))

(declare-fun m!7274672 () Bool)

(assert (=> d!2034782 m!7274672))

(declare-fun m!7274674 () Bool)

(assert (=> d!2034782 m!7274674))

(assert (=> d!2034782 m!7273954))

(assert (=> b!6486224 m!7274630))

(assert (=> b!6485081 d!2034782))

(declare-fun d!2034784 () Bool)

(declare-fun c!1188355 () Bool)

(assert (=> d!2034784 (= c!1188355 (isEmpty!37460 (_1!36647 lt!2388318)))))

(declare-fun e!3931114 () Bool)

(assert (=> d!2034784 (= (matchZipper!2377 lt!2388296 (_1!36647 lt!2388318)) e!3931114)))

(declare-fun b!6486225 () Bool)

(assert (=> b!6486225 (= e!3931114 (nullableZipper!2122 lt!2388296))))

(declare-fun b!6486226 () Bool)

(assert (=> b!6486226 (= e!3931114 (matchZipper!2377 (derivationStepZipper!2331 lt!2388296 (head!13205 (_1!36647 lt!2388318))) (tail!12290 (_1!36647 lt!2388318))))))

(assert (= (and d!2034784 c!1188355) b!6486225))

(assert (= (and d!2034784 (not c!1188355)) b!6486226))

(assert (=> d!2034784 m!7274318))

(declare-fun m!7274676 () Bool)

(assert (=> b!6486225 m!7274676))

(assert (=> b!6486226 m!7274308))

(assert (=> b!6486226 m!7274308))

(declare-fun m!7274678 () Bool)

(assert (=> b!6486226 m!7274678))

(assert (=> b!6486226 m!7274312))

(assert (=> b!6486226 m!7274678))

(assert (=> b!6486226 m!7274312))

(declare-fun m!7274680 () Bool)

(assert (=> b!6486226 m!7274680))

(assert (=> b!6485081 d!2034784))

(declare-fun d!2034786 () Bool)

(declare-fun e!3931117 () Bool)

(assert (=> d!2034786 (= (matchZipper!2377 ((_ map or) lt!2388344 lt!2388297) (t!379020 s!2326)) e!3931117)))

(declare-fun res!2663802 () Bool)

(assert (=> d!2034786 (=> res!2663802 e!3931117)))

(assert (=> d!2034786 (= res!2663802 (matchZipper!2377 lt!2388344 (t!379020 s!2326)))))

(declare-fun lt!2388554 () Unit!158791)

(declare-fun choose!48138 ((InoxSet Context!11498) (InoxSet Context!11498) List!65394) Unit!158791)

(assert (=> d!2034786 (= lt!2388554 (choose!48138 lt!2388344 lt!2388297 (t!379020 s!2326)))))

(assert (=> d!2034786 (= (lemmaZipperConcatMatchesSameAsBothZippers!1196 lt!2388344 lt!2388297 (t!379020 s!2326)) lt!2388554)))

(declare-fun b!6486229 () Bool)

(assert (=> b!6486229 (= e!3931117 (matchZipper!2377 lt!2388297 (t!379020 s!2326)))))

(assert (= (and d!2034786 (not res!2663802)) b!6486229))

(assert (=> d!2034786 m!7273452))

(assert (=> d!2034786 m!7273450))

(declare-fun m!7274682 () Bool)

(assert (=> d!2034786 m!7274682))

(assert (=> b!6486229 m!7273316))

(assert (=> b!6485061 d!2034786))

(declare-fun d!2034788 () Bool)

(declare-fun c!1188356 () Bool)

(assert (=> d!2034788 (= c!1188356 (isEmpty!37460 (t!379020 s!2326)))))

(declare-fun e!3931118 () Bool)

(assert (=> d!2034788 (= (matchZipper!2377 lt!2388344 (t!379020 s!2326)) e!3931118)))

(declare-fun b!6486230 () Bool)

(assert (=> b!6486230 (= e!3931118 (nullableZipper!2122 lt!2388344))))

(declare-fun b!6486231 () Bool)

(assert (=> b!6486231 (= e!3931118 (matchZipper!2377 (derivationStepZipper!2331 lt!2388344 (head!13205 (t!379020 s!2326))) (tail!12290 (t!379020 s!2326))))))

(assert (= (and d!2034788 c!1188356) b!6486230))

(assert (= (and d!2034788 (not c!1188356)) b!6486231))

(assert (=> d!2034788 m!7274360))

(declare-fun m!7274684 () Bool)

(assert (=> b!6486230 m!7274684))

(assert (=> b!6486231 m!7274364))

(assert (=> b!6486231 m!7274364))

(declare-fun m!7274686 () Bool)

(assert (=> b!6486231 m!7274686))

(assert (=> b!6486231 m!7274368))

(assert (=> b!6486231 m!7274686))

(assert (=> b!6486231 m!7274368))

(declare-fun m!7274688 () Bool)

(assert (=> b!6486231 m!7274688))

(assert (=> b!6485061 d!2034788))

(declare-fun d!2034790 () Bool)

(declare-fun c!1188357 () Bool)

(assert (=> d!2034790 (= c!1188357 (isEmpty!37460 (t!379020 s!2326)))))

(declare-fun e!3931119 () Bool)

(assert (=> d!2034790 (= (matchZipper!2377 ((_ map or) lt!2388344 lt!2388297) (t!379020 s!2326)) e!3931119)))

(declare-fun b!6486232 () Bool)

(assert (=> b!6486232 (= e!3931119 (nullableZipper!2122 ((_ map or) lt!2388344 lt!2388297)))))

(declare-fun b!6486233 () Bool)

(assert (=> b!6486233 (= e!3931119 (matchZipper!2377 (derivationStepZipper!2331 ((_ map or) lt!2388344 lt!2388297) (head!13205 (t!379020 s!2326))) (tail!12290 (t!379020 s!2326))))))

(assert (= (and d!2034790 c!1188357) b!6486232))

(assert (= (and d!2034790 (not c!1188357)) b!6486233))

(assert (=> d!2034790 m!7274360))

(declare-fun m!7274690 () Bool)

(assert (=> b!6486232 m!7274690))

(assert (=> b!6486233 m!7274364))

(assert (=> b!6486233 m!7274364))

(declare-fun m!7274692 () Bool)

(assert (=> b!6486233 m!7274692))

(assert (=> b!6486233 m!7274368))

(assert (=> b!6486233 m!7274692))

(assert (=> b!6486233 m!7274368))

(declare-fun m!7274694 () Bool)

(assert (=> b!6486233 m!7274694))

(assert (=> b!6485061 d!2034790))

(declare-fun bs!1645616 () Bool)

(declare-fun d!2034792 () Bool)

(assert (= bs!1645616 (and d!2034792 d!2034754)))

(declare-fun lambda!359040 () Int)

(assert (=> bs!1645616 (= lambda!359040 lambda!359035)))

(declare-fun bs!1645617 () Bool)

(assert (= bs!1645617 (and d!2034792 d!2034678)))

(assert (=> bs!1645617 (= lambda!359040 lambda!359016)))

(declare-fun bs!1645618 () Bool)

(assert (= bs!1645618 (and d!2034792 b!6485081)))

(assert (=> bs!1645618 (= lambda!359040 lambda!358938)))

(declare-fun bs!1645619 () Bool)

(assert (= bs!1645619 (and d!2034792 d!2034668)))

(assert (=> bs!1645619 (= lambda!359040 lambda!359013)))

(declare-fun bs!1645620 () Bool)

(assert (= bs!1645620 (and d!2034792 d!2034776)))

(assert (=> bs!1645620 (= lambda!359040 lambda!359039)))

(declare-fun bs!1645621 () Bool)

(assert (= bs!1645621 (and d!2034792 d!2034718)))

(assert (=> bs!1645621 (= lambda!359040 lambda!359026)))

(declare-fun bs!1645622 () Bool)

(assert (= bs!1645622 (and d!2034792 d!2034768)))

(assert (=> bs!1645622 (= lambda!359040 lambda!359038)))

(assert (=> d!2034792 (= (inv!84159 setElem!44181) (forall!15548 (exprs!6249 setElem!44181) lambda!359040))))

(declare-fun bs!1645623 () Bool)

(assert (= bs!1645623 d!2034792))

(declare-fun m!7274696 () Bool)

(assert (=> bs!1645623 m!7274696))

(assert (=> setNonEmpty!44181 d!2034792))

(declare-fun d!2034794 () Bool)

(assert (=> d!2034794 (= (isEmpty!37460 (_1!36647 lt!2388334)) ((_ is Nil!65270) (_1!36647 lt!2388334)))))

(assert (=> b!6485060 d!2034794))

(declare-fun b!6486238 () Bool)

(declare-fun e!3931122 () Bool)

(declare-fun tp!1796075 () Bool)

(declare-fun tp!1796076 () Bool)

(assert (=> b!6486238 (= e!3931122 (and tp!1796075 tp!1796076))))

(assert (=> b!6485063 (= tp!1796006 e!3931122)))

(assert (= (and b!6485063 ((_ is Cons!65271) (exprs!6249 setElem!44181))) b!6486238))

(declare-fun b!6486243 () Bool)

(declare-fun e!3931125 () Bool)

(declare-fun tp!1796079 () Bool)

(assert (=> b!6486243 (= e!3931125 (and tp_is_empty!41983 tp!1796079))))

(assert (=> b!6485064 (= tp!1796003 e!3931125)))

(assert (= (and b!6485064 ((_ is Cons!65270) (t!379020 s!2326))) b!6486243))

(declare-fun b!6486255 () Bool)

(declare-fun e!3931128 () Bool)

(declare-fun tp!1796094 () Bool)

(declare-fun tp!1796091 () Bool)

(assert (=> b!6486255 (= e!3931128 (and tp!1796094 tp!1796091))))

(assert (=> b!6485082 (= tp!1796004 e!3931128)))

(declare-fun b!6486257 () Bool)

(declare-fun tp!1796092 () Bool)

(declare-fun tp!1796090 () Bool)

(assert (=> b!6486257 (= e!3931128 (and tp!1796092 tp!1796090))))

(declare-fun b!6486256 () Bool)

(declare-fun tp!1796093 () Bool)

(assert (=> b!6486256 (= e!3931128 tp!1796093)))

(declare-fun b!6486254 () Bool)

(assert (=> b!6486254 (= e!3931128 tp_is_empty!41983)))

(assert (= (and b!6485082 ((_ is ElementMatch!16365) (regOne!33243 r!7292))) b!6486254))

(assert (= (and b!6485082 ((_ is Concat!25210) (regOne!33243 r!7292))) b!6486255))

(assert (= (and b!6485082 ((_ is Star!16365) (regOne!33243 r!7292))) b!6486256))

(assert (= (and b!6485082 ((_ is Union!16365) (regOne!33243 r!7292))) b!6486257))

(declare-fun b!6486259 () Bool)

(declare-fun e!3931129 () Bool)

(declare-fun tp!1796099 () Bool)

(declare-fun tp!1796096 () Bool)

(assert (=> b!6486259 (= e!3931129 (and tp!1796099 tp!1796096))))

(assert (=> b!6485082 (= tp!1796007 e!3931129)))

(declare-fun b!6486261 () Bool)

(declare-fun tp!1796097 () Bool)

(declare-fun tp!1796095 () Bool)

(assert (=> b!6486261 (= e!3931129 (and tp!1796097 tp!1796095))))

(declare-fun b!6486260 () Bool)

(declare-fun tp!1796098 () Bool)

(assert (=> b!6486260 (= e!3931129 tp!1796098)))

(declare-fun b!6486258 () Bool)

(assert (=> b!6486258 (= e!3931129 tp_is_empty!41983)))

(assert (= (and b!6485082 ((_ is ElementMatch!16365) (regTwo!33243 r!7292))) b!6486258))

(assert (= (and b!6485082 ((_ is Concat!25210) (regTwo!33243 r!7292))) b!6486259))

(assert (= (and b!6485082 ((_ is Star!16365) (regTwo!33243 r!7292))) b!6486260))

(assert (= (and b!6485082 ((_ is Union!16365) (regTwo!33243 r!7292))) b!6486261))

(declare-fun b!6486262 () Bool)

(declare-fun e!3931130 () Bool)

(declare-fun tp!1796100 () Bool)

(declare-fun tp!1796101 () Bool)

(assert (=> b!6486262 (= e!3931130 (and tp!1796100 tp!1796101))))

(assert (=> b!6485078 (= tp!1796005 e!3931130)))

(assert (= (and b!6485078 ((_ is Cons!65271) (exprs!6249 (h!71720 zl!343)))) b!6486262))

(declare-fun b!6486264 () Bool)

(declare-fun e!3931131 () Bool)

(declare-fun tp!1796106 () Bool)

(declare-fun tp!1796103 () Bool)

(assert (=> b!6486264 (= e!3931131 (and tp!1796106 tp!1796103))))

(assert (=> b!6485068 (= tp!1796008 e!3931131)))

(declare-fun b!6486266 () Bool)

(declare-fun tp!1796104 () Bool)

(declare-fun tp!1796102 () Bool)

(assert (=> b!6486266 (= e!3931131 (and tp!1796104 tp!1796102))))

(declare-fun b!6486265 () Bool)

(declare-fun tp!1796105 () Bool)

(assert (=> b!6486265 (= e!3931131 tp!1796105)))

(declare-fun b!6486263 () Bool)

(assert (=> b!6486263 (= e!3931131 tp_is_empty!41983)))

(assert (= (and b!6485068 ((_ is ElementMatch!16365) (regOne!33242 r!7292))) b!6486263))

(assert (= (and b!6485068 ((_ is Concat!25210) (regOne!33242 r!7292))) b!6486264))

(assert (= (and b!6485068 ((_ is Star!16365) (regOne!33242 r!7292))) b!6486265))

(assert (= (and b!6485068 ((_ is Union!16365) (regOne!33242 r!7292))) b!6486266))

(declare-fun b!6486268 () Bool)

(declare-fun e!3931132 () Bool)

(declare-fun tp!1796111 () Bool)

(declare-fun tp!1796108 () Bool)

(assert (=> b!6486268 (= e!3931132 (and tp!1796111 tp!1796108))))

(assert (=> b!6485068 (= tp!1796010 e!3931132)))

(declare-fun b!6486270 () Bool)

(declare-fun tp!1796109 () Bool)

(declare-fun tp!1796107 () Bool)

(assert (=> b!6486270 (= e!3931132 (and tp!1796109 tp!1796107))))

(declare-fun b!6486269 () Bool)

(declare-fun tp!1796110 () Bool)

(assert (=> b!6486269 (= e!3931132 tp!1796110)))

(declare-fun b!6486267 () Bool)

(assert (=> b!6486267 (= e!3931132 tp_is_empty!41983)))

(assert (= (and b!6485068 ((_ is ElementMatch!16365) (regTwo!33242 r!7292))) b!6486267))

(assert (= (and b!6485068 ((_ is Concat!25210) (regTwo!33242 r!7292))) b!6486268))

(assert (= (and b!6485068 ((_ is Star!16365) (regTwo!33242 r!7292))) b!6486269))

(assert (= (and b!6485068 ((_ is Union!16365) (regTwo!33242 r!7292))) b!6486270))

(declare-fun b!6486278 () Bool)

(declare-fun e!3931138 () Bool)

(declare-fun tp!1796116 () Bool)

(assert (=> b!6486278 (= e!3931138 tp!1796116)))

(declare-fun e!3931137 () Bool)

(declare-fun tp!1796117 () Bool)

(declare-fun b!6486277 () Bool)

(assert (=> b!6486277 (= e!3931137 (and (inv!84159 (h!71720 (t!379022 zl!343))) e!3931138 tp!1796117))))

(assert (=> b!6485101 (= tp!1796009 e!3931137)))

(assert (= b!6486277 b!6486278))

(assert (= (and b!6485101 ((_ is Cons!65272) (t!379022 zl!343))) b!6486277))

(declare-fun m!7274698 () Bool)

(assert (=> b!6486277 m!7274698))

(declare-fun condSetEmpty!44187 () Bool)

(assert (=> setNonEmpty!44181 (= condSetEmpty!44187 (= setRest!44181 ((as const (Array Context!11498 Bool)) false)))))

(declare-fun setRes!44187 () Bool)

(assert (=> setNonEmpty!44181 (= tp!1796012 setRes!44187)))

(declare-fun setIsEmpty!44187 () Bool)

(assert (=> setIsEmpty!44187 setRes!44187))

(declare-fun e!3931141 () Bool)

(declare-fun setNonEmpty!44187 () Bool)

(declare-fun setElem!44187 () Context!11498)

(declare-fun tp!1796122 () Bool)

(assert (=> setNonEmpty!44187 (= setRes!44187 (and tp!1796122 (inv!84159 setElem!44187) e!3931141))))

(declare-fun setRest!44187 () (InoxSet Context!11498))

(assert (=> setNonEmpty!44187 (= setRest!44181 ((_ map or) (store ((as const (Array Context!11498 Bool)) false) setElem!44187 true) setRest!44187))))

(declare-fun b!6486283 () Bool)

(declare-fun tp!1796123 () Bool)

(assert (=> b!6486283 (= e!3931141 tp!1796123)))

(assert (= (and setNonEmpty!44181 condSetEmpty!44187) setIsEmpty!44187))

(assert (= (and setNonEmpty!44181 (not condSetEmpty!44187)) setNonEmpty!44187))

(assert (= setNonEmpty!44187 b!6486283))

(declare-fun m!7274700 () Bool)

(assert (=> setNonEmpty!44187 m!7274700))

(declare-fun b!6486285 () Bool)

(declare-fun e!3931142 () Bool)

(declare-fun tp!1796128 () Bool)

(declare-fun tp!1796125 () Bool)

(assert (=> b!6486285 (= e!3931142 (and tp!1796128 tp!1796125))))

(assert (=> b!6485091 (= tp!1796011 e!3931142)))

(declare-fun b!6486287 () Bool)

(declare-fun tp!1796126 () Bool)

(declare-fun tp!1796124 () Bool)

(assert (=> b!6486287 (= e!3931142 (and tp!1796126 tp!1796124))))

(declare-fun b!6486286 () Bool)

(declare-fun tp!1796127 () Bool)

(assert (=> b!6486286 (= e!3931142 tp!1796127)))

(declare-fun b!6486284 () Bool)

(assert (=> b!6486284 (= e!3931142 tp_is_empty!41983)))

(assert (= (and b!6485091 ((_ is ElementMatch!16365) (reg!16694 r!7292))) b!6486284))

(assert (= (and b!6485091 ((_ is Concat!25210) (reg!16694 r!7292))) b!6486285))

(assert (= (and b!6485091 ((_ is Star!16365) (reg!16694 r!7292))) b!6486286))

(assert (= (and b!6485091 ((_ is Union!16365) (reg!16694 r!7292))) b!6486287))

(declare-fun b_lambda!245593 () Bool)

(assert (= b_lambda!245575 (or b!6485086 b_lambda!245593)))

(declare-fun bs!1645624 () Bool)

(declare-fun d!2034796 () Bool)

(assert (= bs!1645624 (and d!2034796 b!6485086)))

(assert (=> bs!1645624 (= (dynLambda!25925 lambda!358932 lt!2388315) (derivationStepZipperUp!1539 lt!2388315 (h!71718 s!2326)))))

(assert (=> bs!1645624 m!7273400))

(assert (=> d!2034522 d!2034796))

(declare-fun b_lambda!245595 () Bool)

(assert (= b_lambda!245591 (or b!6485086 b_lambda!245595)))

(declare-fun bs!1645625 () Bool)

(declare-fun d!2034798 () Bool)

(assert (= bs!1645625 (and d!2034798 b!6485086)))

(assert (=> bs!1645625 (= (dynLambda!25925 lambda!358932 lt!2388289) (derivationStepZipperUp!1539 lt!2388289 (h!71718 s!2326)))))

(assert (=> bs!1645625 m!7273494))

(assert (=> d!2034708 d!2034798))

(declare-fun b_lambda!245597 () Bool)

(assert (= b_lambda!245577 (or b!6485086 b_lambda!245597)))

(declare-fun bs!1645626 () Bool)

(declare-fun d!2034800 () Bool)

(assert (= bs!1645626 (and d!2034800 b!6485086)))

(assert (=> bs!1645626 (= (dynLambda!25925 lambda!358932 lt!2388330) (derivationStepZipperUp!1539 lt!2388330 (h!71718 s!2326)))))

(assert (=> bs!1645626 m!7273404))

(assert (=> d!2034524 d!2034800))

(declare-fun b_lambda!245599 () Bool)

(assert (= b_lambda!245573 (or b!6485086 b_lambda!245599)))

(declare-fun bs!1645627 () Bool)

(declare-fun d!2034802 () Bool)

(assert (= bs!1645627 (and d!2034802 b!6485086)))

(assert (=> bs!1645627 (= (dynLambda!25925 lambda!358932 (h!71720 zl!343)) (derivationStepZipperUp!1539 (h!71720 zl!343) (h!71718 s!2326)))))

(assert (=> bs!1645627 m!7273458))

(assert (=> d!2034508 d!2034802))

(check-sat (not b!6485919) (not b!6486207) (not d!2034742) (not b!6485755) (not d!2034762) (not b!6486140) (not d!2034666) (not b!6486134) (not b!6486283) (not b!6485839) (not d!2034546) (not b!6486261) (not b!6486105) (not d!2034728) (not d!2034750) (not b!6485713) (not bm!561311) (not bm!561362) (not b!6486149) (not b_lambda!245599) (not b!6486095) (not d!2034758) (not d!2034730) (not d!2034624) (not b!6486152) (not b!6485997) (not bm!561342) (not b!6485420) (not d!2034660) (not b!6486255) (not b!6486264) (not b!6486230) (not d!2034698) (not d!2034748) (not b!6486205) (not b!6486173) (not b!6485974) (not d!2034692) (not b!6486014) (not b!6486146) (not d!2034684) (not d!2034782) (not bm!561353) (not d!2034656) (not b!6485976) (not b!6486265) (not bs!1645626) (not d!2034776) (not d!2034686) (not b!6486285) (not bm!561373) (not bm!561296) (not b!6486259) (not b!6486026) (not b!6485437) (not b!6485995) (not d!2034770) (not b!6485435) (not d!2034520) (not b!6486156) (not b!6486216) (not b!6485979) (not b!6485996) (not d!2034662) (not d!2034680) (not d!2034526) (not bm!561350) (not b!6485977) (not d!2034744) (not bm!561365) (not bm!561376) (not b!6486195) (not b!6486209) (not b!6485534) (not b!6485465) (not d!2034694) (not b!6486024) (not d!2034766) (not b!6485838) (not d!2034682) (not b!6485987) (not b!6485981) (not bm!561315) (not b!6486233) (not bm!561369) (not d!2034492) (not bm!561343) (not b!6485920) (not b!6486232) (not d!2034708) (not b!6486012) (not b!6486223) (not bm!561367) (not b!6485993) (not b!6486062) (not b!6485439) (not b!6486016) (not b!6486226) (not b!6485521) (not b!6486145) (not d!2034740) (not b_lambda!245595) (not d!2034784) (not bm!561371) (not b!6486021) (not b!6485524) (not b!6486136) (not b!6486256) (not b!6485430) (not b!6486158) (not b!6486189) (not b!6486260) (not d!2034738) (not b!6486179) (not d!2034768) (not b!6486193) (not bm!561372) (not b!6486172) (not b!6486159) (not b!6485708) (not b!6485875) (not d!2034598) (not b!6485425) (not bm!561292) (not b!6486257) (not b!6486220) (not b!6486135) (not d!2034778) (not b!6486269) (not b!6485922) (not d!2034502) (not b_lambda!245597) (not b!6486132) (not bm!561297) (not bm!561363) (not d!2034704) (not b!6486073) (not b!6485842) (not b!6486086) (not b!6486129) (not b!6485998) (not b!6485888) (not b_lambda!245593) (not b!6486028) (not bm!561351) (not d!2034722) (not b!6486229) (not d!2034644) (not b!6486277) (not b!6486211) (not d!2034790) (not b!6486286) (not b!6485423) (not b!6486147) (not d!2034724) (not bm!561317) (not d!2034718) (not d!2034664) (not b!6486137) (not b!6485841) (not b!6486091) (not b!6485462) (not b!6485924) (not b!6486080) (not d!2034786) (not d!2034714) (not b!6486143) (not bm!561313) (not d!2034550) (not b!6486100) (not bm!561318) (not d!2034522) (not d!2034716) (not b!6486278) (not b!6486144) (not d!2034732) (not b!6486096) (not b!6485874) (not b!6486191) (not b!6486202) (not b!6485471) (not bm!561352) (not b!6486238) (not b!6486287) (not bm!561370) (not b!6486243) (not b!6486224) (not b!6486010) (not b!6485756) (not b!6486177) (not d!2034562) (not b!6486181) (not b!6486219) (not b!6486007) (not d!2034788) (not b!6485882) (not bm!561374) (not d!2034774) (not d!2034504) (not b!6486190) (not b!6485419) (not d!2034668) (not b!6486151) (not d!2034746) (not b!6485883) (not bm!561293) (not d!2034752) (not b!6486002) (not setNonEmpty!44187) (not d!2034780) tp_is_empty!41983 (not b!6486035) (not d!2034678) (not d!2034734) (not d!2034760) (not b!6486162) (not d!2034772) (not b!6485994) (not b!6486160) (not bs!1645627) (not b!6486197) (not b!6485531) (not b!6486025) (not d!2034600) (not b!6486175) (not d!2034764) (not d!2034726) (not d!2034648) (not b!6485840) (not b!6486268) (not b!6485433) (not bm!561316) (not b!6486231) (not b!6485421) (not bm!561375) (not d!2034754) (not b!6486262) (not b!6486270) (not d!2034658) (not b!6486176) (not d!2034710) (not b!6485474) (not bm!561354) (not b!6485978) (not d!2034756) (not b!6485526) (not b!6485529) (not d!2034524) (not b!6486131) (not d!2034534) (not b!6485929) (not d!2034508) (not b!6485434) (not b!6486266) (not b!6485918) (not d!2034642) (not b!6486030) (not b!6486206) (not d!2034496) (not d!2034792) (not bs!1645625) (not b!6486192) (not b!6485444) (not b!6485844) (not b!6486225) (not b!6486011) (not b!6486186) (not d!2034720) (not d!2034528) (not b!6486157) (not b!6485517) (not b!6486094) (not b!6486077) (not b!6486098) (not b!6485975) (not bs!1645624) (not b!6485887))
(check-sat)
