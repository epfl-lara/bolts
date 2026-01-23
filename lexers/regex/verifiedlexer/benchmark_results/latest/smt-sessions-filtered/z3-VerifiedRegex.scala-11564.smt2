; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!638390 () Bool)

(assert start!638390)

(declare-fun b!6497365 () Bool)

(assert (=> b!6497365 true))

(assert (=> b!6497365 true))

(declare-fun lambda!359989 () Int)

(declare-fun lambda!359988 () Int)

(assert (=> b!6497365 (not (= lambda!359989 lambda!359988))))

(assert (=> b!6497365 true))

(assert (=> b!6497365 true))

(declare-fun b!6497395 () Bool)

(assert (=> b!6497395 true))

(declare-fun b!6497360 () Bool)

(declare-fun res!2668417 () Bool)

(declare-fun e!3937260 () Bool)

(assert (=> b!6497360 (=> res!2668417 e!3937260)))

(declare-datatypes ((C!33020 0))(
  ( (C!33021 (val!26212 Int)) )
))
(declare-datatypes ((Regex!16375 0))(
  ( (ElementMatch!16375 (c!1191063 C!33020)) (Concat!25220 (regOne!33262 Regex!16375) (regTwo!33262 Regex!16375)) (EmptyExpr!16375) (Star!16375 (reg!16704 Regex!16375)) (EmptyLang!16375) (Union!16375 (regOne!33263 Regex!16375) (regTwo!33263 Regex!16375)) )
))
(declare-datatypes ((List!65424 0))(
  ( (Nil!65300) (Cons!65300 (h!71748 Regex!16375) (t!379056 List!65424)) )
))
(declare-datatypes ((Context!11518 0))(
  ( (Context!11519 (exprs!6259 List!65424)) )
))
(declare-datatypes ((List!65425 0))(
  ( (Nil!65301) (Cons!65301 (h!71749 Context!11518) (t!379057 List!65425)) )
))
(declare-fun zl!343 () List!65425)

(declare-fun isEmpty!37497 (List!65424) Bool)

(assert (=> b!6497360 (= res!2668417 (isEmpty!37497 (t!379056 (exprs!6259 (h!71749 zl!343)))))))

(declare-fun b!6497361 () Bool)

(declare-fun e!3937259 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2391017 () (InoxSet Context!11518))

(declare-datatypes ((List!65426 0))(
  ( (Nil!65302) (Cons!65302 (h!71750 C!33020) (t!379058 List!65426)) )
))
(declare-fun s!2326 () List!65426)

(declare-fun matchZipper!2387 ((InoxSet Context!11518) List!65426) Bool)

(assert (=> b!6497361 (= e!3937259 (not (matchZipper!2387 lt!2391017 (t!379058 s!2326))))))

(declare-fun b!6497362 () Bool)

(declare-fun e!3937258 () Bool)

(declare-fun e!3937261 () Bool)

(assert (=> b!6497362 (= e!3937258 e!3937261)))

(declare-fun res!2668446 () Bool)

(assert (=> b!6497362 (=> res!2668446 e!3937261)))

(declare-fun lt!2391003 () Bool)

(assert (=> b!6497362 (= res!2668446 lt!2391003)))

(declare-fun lt!2391008 () Regex!16375)

(declare-fun matchR!8558 (Regex!16375 List!65426) Bool)

(declare-fun matchRSpec!3476 (Regex!16375 List!65426) Bool)

(assert (=> b!6497362 (= (matchR!8558 lt!2391008 s!2326) (matchRSpec!3476 lt!2391008 s!2326))))

(declare-datatypes ((Unit!158835 0))(
  ( (Unit!158836) )
))
(declare-fun lt!2391005 () Unit!158835)

(declare-fun mainMatchTheorem!3476 (Regex!16375 List!65426) Unit!158835)

(assert (=> b!6497362 (= lt!2391005 (mainMatchTheorem!3476 lt!2391008 s!2326))))

(declare-fun b!6497363 () Bool)

(declare-fun e!3937253 () Bool)

(assert (=> b!6497363 (= e!3937261 e!3937253)))

(declare-fun res!2668432 () Bool)

(assert (=> b!6497363 (=> res!2668432 e!3937253)))

(assert (=> b!6497363 (= res!2668432 e!3937259)))

(declare-fun res!2668423 () Bool)

(assert (=> b!6497363 (=> (not res!2668423) (not e!3937259))))

(declare-fun lt!2391023 () Bool)

(assert (=> b!6497363 (= res!2668423 (not lt!2391023))))

(declare-fun lt!2391025 () (InoxSet Context!11518))

(assert (=> b!6497363 (= lt!2391023 (matchZipper!2387 lt!2391025 (t!379058 s!2326)))))

(declare-fun b!6497364 () Bool)

(declare-fun res!2668427 () Bool)

(assert (=> b!6497364 (=> res!2668427 e!3937258)))

(declare-fun lt!2391011 () Context!11518)

(declare-fun lt!2391006 () Regex!16375)

(declare-fun unfocusZipper!2117 (List!65425) Regex!16375)

(assert (=> b!6497364 (= res!2668427 (not (= (unfocusZipper!2117 (Cons!65301 lt!2391011 Nil!65301)) lt!2391006)))))

(declare-fun e!3937265 () Bool)

(assert (=> b!6497365 (= e!3937265 e!3937260)))

(declare-fun res!2668438 () Bool)

(assert (=> b!6497365 (=> res!2668438 e!3937260)))

(declare-fun lt!2391010 () Bool)

(get-info :version)

(assert (=> b!6497365 (= res!2668438 (or (not (= lt!2391003 lt!2391010)) ((_ is Nil!65302) s!2326)))))

(declare-fun Exists!3445 (Int) Bool)

(assert (=> b!6497365 (= (Exists!3445 lambda!359988) (Exists!3445 lambda!359989))))

(declare-fun lt!2390998 () Unit!158835)

(declare-fun r!7292 () Regex!16375)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1982 (Regex!16375 Regex!16375 List!65426) Unit!158835)

(assert (=> b!6497365 (= lt!2390998 (lemmaExistCutMatchRandMatchRSpecEquivalent!1982 (regOne!33262 r!7292) (regTwo!33262 r!7292) s!2326))))

(assert (=> b!6497365 (= lt!2391010 (Exists!3445 lambda!359988))))

(declare-datatypes ((tuple2!66708 0))(
  ( (tuple2!66709 (_1!36657 List!65426) (_2!36657 List!65426)) )
))
(declare-datatypes ((Option!16266 0))(
  ( (None!16265) (Some!16265 (v!52444 tuple2!66708)) )
))
(declare-fun isDefined!12969 (Option!16266) Bool)

(declare-fun findConcatSeparation!2680 (Regex!16375 Regex!16375 List!65426 List!65426 List!65426) Option!16266)

(assert (=> b!6497365 (= lt!2391010 (isDefined!12969 (findConcatSeparation!2680 (regOne!33262 r!7292) (regTwo!33262 r!7292) Nil!65302 s!2326 s!2326)))))

(declare-fun lt!2391018 () Unit!158835)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2444 (Regex!16375 Regex!16375 List!65426) Unit!158835)

(assert (=> b!6497365 (= lt!2391018 (lemmaFindConcatSeparationEquivalentToExists!2444 (regOne!33262 r!7292) (regTwo!33262 r!7292) s!2326))))

(declare-fun b!6497366 () Bool)

(declare-fun e!3937262 () Bool)

(declare-fun tp!1797766 () Bool)

(declare-fun tp!1797764 () Bool)

(assert (=> b!6497366 (= e!3937262 (and tp!1797766 tp!1797764))))

(declare-fun b!6497368 () Bool)

(declare-fun e!3937252 () Bool)

(declare-fun e!3937263 () Bool)

(assert (=> b!6497368 (= e!3937252 e!3937263)))

(declare-fun res!2668422 () Bool)

(assert (=> b!6497368 (=> res!2668422 e!3937263)))

(declare-fun lt!2391000 () (InoxSet Context!11518))

(declare-fun lt!2391007 () (InoxSet Context!11518))

(assert (=> b!6497368 (= res!2668422 (not (= lt!2391000 lt!2391007)))))

(declare-fun lambda!359990 () Int)

(declare-fun lt!2391014 () (InoxSet Context!11518))

(declare-fun lt!2391016 () Context!11518)

(declare-fun flatMap!1880 ((InoxSet Context!11518) Int) (InoxSet Context!11518))

(declare-fun derivationStepZipperUp!1549 (Context!11518 C!33020) (InoxSet Context!11518))

(assert (=> b!6497368 (= (flatMap!1880 lt!2391014 lambda!359990) (derivationStepZipperUp!1549 lt!2391016 (h!71750 s!2326)))))

(declare-fun lt!2391009 () Unit!158835)

(declare-fun lemmaFlatMapOnSingletonSet!1406 ((InoxSet Context!11518) Context!11518 Int) Unit!158835)

(assert (=> b!6497368 (= lt!2391009 (lemmaFlatMapOnSingletonSet!1406 lt!2391014 lt!2391016 lambda!359990))))

(declare-fun lt!2391001 () (InoxSet Context!11518))

(assert (=> b!6497368 (= lt!2391001 (derivationStepZipperUp!1549 lt!2391016 (h!71750 s!2326)))))

(declare-fun derivationStepZipper!2341 ((InoxSet Context!11518) C!33020) (InoxSet Context!11518))

(assert (=> b!6497368 (= lt!2391000 (derivationStepZipper!2341 lt!2391014 (h!71750 s!2326)))))

(assert (=> b!6497368 (= lt!2391014 (store ((as const (Array Context!11518 Bool)) false) lt!2391016 true))))

(declare-fun lt!2391015 () List!65424)

(assert (=> b!6497368 (= lt!2391016 (Context!11519 (Cons!65300 (reg!16704 (regOne!33262 r!7292)) lt!2391015)))))

(declare-fun b!6497369 () Bool)

(declare-fun e!3937270 () Bool)

(declare-fun nullable!6368 (Regex!16375) Bool)

(assert (=> b!6497369 (= e!3937270 (nullable!6368 (regOne!33262 (regOne!33262 r!7292))))))

(declare-fun b!6497370 () Bool)

(declare-fun res!2668425 () Bool)

(declare-fun e!3937272 () Bool)

(assert (=> b!6497370 (=> res!2668425 e!3937272)))

(assert (=> b!6497370 (= res!2668425 e!3937270)))

(declare-fun res!2668444 () Bool)

(assert (=> b!6497370 (=> (not res!2668444) (not e!3937270))))

(assert (=> b!6497370 (= res!2668444 ((_ is Concat!25220) (regOne!33262 r!7292)))))

(declare-fun b!6497371 () Bool)

(declare-fun res!2668436 () Bool)

(assert (=> b!6497371 (=> res!2668436 e!3937272)))

(assert (=> b!6497371 (= res!2668436 (or ((_ is Concat!25220) (regOne!33262 r!7292)) (not ((_ is Star!16375) (regOne!33262 r!7292)))))))

(declare-fun b!6497372 () Bool)

(declare-fun e!3937268 () Bool)

(declare-fun tp!1797768 () Bool)

(assert (=> b!6497372 (= e!3937268 tp!1797768)))

(declare-fun b!6497373 () Bool)

(declare-fun res!2668442 () Bool)

(assert (=> b!6497373 (=> res!2668442 e!3937265)))

(declare-fun generalisedUnion!2219 (List!65424) Regex!16375)

(declare-fun unfocusZipperList!1796 (List!65425) List!65424)

(assert (=> b!6497373 (= res!2668442 (not (= r!7292 (generalisedUnion!2219 (unfocusZipperList!1796 zl!343)))))))

(declare-fun b!6497374 () Bool)

(declare-fun res!2668428 () Bool)

(assert (=> b!6497374 (=> res!2668428 e!3937265)))

(assert (=> b!6497374 (= res!2668428 (or ((_ is EmptyExpr!16375) r!7292) ((_ is EmptyLang!16375) r!7292) ((_ is ElementMatch!16375) r!7292) ((_ is Union!16375) r!7292) (not ((_ is Concat!25220) r!7292))))))

(declare-fun b!6497375 () Bool)

(declare-fun res!2668440 () Bool)

(assert (=> b!6497375 (=> res!2668440 e!3937261)))

(declare-fun z!1189 () (InoxSet Context!11518))

(assert (=> b!6497375 (= res!2668440 (not (matchZipper!2387 z!1189 s!2326)))))

(declare-fun b!6497376 () Bool)

(declare-fun e!3937254 () Bool)

(assert (=> b!6497376 (= e!3937254 e!3937258)))

(declare-fun res!2668420 () Bool)

(assert (=> b!6497376 (=> res!2668420 e!3937258)))

(declare-fun lt!2391002 () Context!11518)

(assert (=> b!6497376 (= res!2668420 (not (= (unfocusZipper!2117 (Cons!65301 lt!2391002 Nil!65301)) (reg!16704 (regOne!33262 r!7292)))))))

(declare-fun lt!2391031 () (InoxSet Context!11518))

(assert (=> b!6497376 (= (flatMap!1880 lt!2391031 lambda!359990) (derivationStepZipperUp!1549 lt!2391011 (h!71750 s!2326)))))

(declare-fun lt!2391013 () Unit!158835)

(assert (=> b!6497376 (= lt!2391013 (lemmaFlatMapOnSingletonSet!1406 lt!2391031 lt!2391011 lambda!359990))))

(declare-fun lt!2391022 () (InoxSet Context!11518))

(assert (=> b!6497376 (= (flatMap!1880 lt!2391022 lambda!359990) (derivationStepZipperUp!1549 lt!2391002 (h!71750 s!2326)))))

(declare-fun lt!2391028 () Unit!158835)

(assert (=> b!6497376 (= lt!2391028 (lemmaFlatMapOnSingletonSet!1406 lt!2391022 lt!2391002 lambda!359990))))

(declare-fun lt!2391024 () (InoxSet Context!11518))

(assert (=> b!6497376 (= lt!2391024 (derivationStepZipperUp!1549 lt!2391011 (h!71750 s!2326)))))

(declare-fun lt!2391012 () (InoxSet Context!11518))

(assert (=> b!6497376 (= lt!2391012 (derivationStepZipperUp!1549 lt!2391002 (h!71750 s!2326)))))

(assert (=> b!6497376 (= lt!2391031 (store ((as const (Array Context!11518 Bool)) false) lt!2391011 true))))

(assert (=> b!6497376 (= lt!2391022 (store ((as const (Array Context!11518 Bool)) false) lt!2391002 true))))

(assert (=> b!6497376 (= lt!2391002 (Context!11519 (Cons!65300 (reg!16704 (regOne!33262 r!7292)) Nil!65300)))))

(declare-fun b!6497377 () Bool)

(declare-fun e!3937264 () Bool)

(declare-fun tp!1797769 () Bool)

(assert (=> b!6497377 (= e!3937264 tp!1797769)))

(declare-fun b!6497378 () Bool)

(declare-fun res!2668429 () Bool)

(assert (=> b!6497378 (=> res!2668429 e!3937253)))

(declare-fun lt!2391032 () Bool)

(assert (=> b!6497378 (= res!2668429 (or (not lt!2391023) (not lt!2391032)))))

(declare-fun b!6497379 () Bool)

(declare-fun e!3937266 () Bool)

(declare-fun e!3937256 () Bool)

(assert (=> b!6497379 (= e!3937266 e!3937256)))

(declare-fun res!2668433 () Bool)

(assert (=> b!6497379 (=> res!2668433 e!3937256)))

(assert (=> b!6497379 (= res!2668433 (not (= r!7292 lt!2391006)))))

(declare-fun lt!2390999 () Regex!16375)

(assert (=> b!6497379 (= lt!2391006 (Concat!25220 lt!2390999 (regTwo!33262 r!7292)))))

(declare-fun b!6497380 () Bool)

(declare-fun e!3937271 () Bool)

(assert (=> b!6497380 (= e!3937271 (matchZipper!2387 lt!2391017 (t!379058 s!2326)))))

(declare-fun b!6497381 () Bool)

(declare-fun res!2668421 () Bool)

(assert (=> b!6497381 (=> res!2668421 e!3937265)))

(declare-fun generalisedConcat!1972 (List!65424) Regex!16375)

(assert (=> b!6497381 (= res!2668421 (not (= r!7292 (generalisedConcat!1972 (exprs!6259 (h!71749 zl!343))))))))

(declare-fun b!6497382 () Bool)

(declare-fun res!2668419 () Bool)

(assert (=> b!6497382 (=> res!2668419 e!3937265)))

(assert (=> b!6497382 (= res!2668419 (not ((_ is Cons!65300) (exprs!6259 (h!71749 zl!343)))))))

(declare-fun b!6497383 () Bool)

(declare-fun e!3937267 () Bool)

(declare-fun tp_is_empty!42003 () Bool)

(declare-fun tp!1797770 () Bool)

(assert (=> b!6497383 (= e!3937267 (and tp_is_empty!42003 tp!1797770))))

(declare-fun b!6497384 () Bool)

(declare-fun tp!1797772 () Bool)

(assert (=> b!6497384 (= e!3937262 tp!1797772)))

(declare-fun b!6497385 () Bool)

(declare-fun tp!1797767 () Bool)

(declare-fun tp!1797763 () Bool)

(assert (=> b!6497385 (= e!3937262 (and tp!1797767 tp!1797763))))

(declare-fun b!6497386 () Bool)

(assert (=> b!6497386 (= e!3937263 e!3937266)))

(declare-fun res!2668439 () Bool)

(assert (=> b!6497386 (=> res!2668439 e!3937266)))

(assert (=> b!6497386 (= res!2668439 (not (= lt!2391032 (matchZipper!2387 lt!2391000 (t!379058 s!2326)))))))

(assert (=> b!6497386 (= lt!2391032 (matchZipper!2387 lt!2391014 s!2326))))

(declare-fun b!6497387 () Bool)

(declare-fun e!3937255 () Unit!158835)

(declare-fun Unit!158837 () Unit!158835)

(assert (=> b!6497387 (= e!3937255 Unit!158837)))

(declare-fun lt!2391004 () Unit!158835)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1206 ((InoxSet Context!11518) (InoxSet Context!11518) List!65426) Unit!158835)

(assert (=> b!6497387 (= lt!2391004 (lemmaZipperConcatMatchesSameAsBothZippers!1206 lt!2391025 lt!2391017 (t!379058 s!2326)))))

(declare-fun res!2668443 () Bool)

(assert (=> b!6497387 (= res!2668443 (matchZipper!2387 lt!2391025 (t!379058 s!2326)))))

(assert (=> b!6497387 (=> res!2668443 e!3937271)))

(assert (=> b!6497387 (= (matchZipper!2387 ((_ map or) lt!2391025 lt!2391017) (t!379058 s!2326)) e!3937271)))

(declare-fun setRes!44277 () Bool)

(declare-fun tp!1797765 () Bool)

(declare-fun setNonEmpty!44277 () Bool)

(declare-fun setElem!44277 () Context!11518)

(declare-fun inv!84184 (Context!11518) Bool)

(assert (=> setNonEmpty!44277 (= setRes!44277 (and tp!1797765 (inv!84184 setElem!44277) e!3937264))))

(declare-fun setRest!44277 () (InoxSet Context!11518))

(assert (=> setNonEmpty!44277 (= z!1189 ((_ map or) (store ((as const (Array Context!11518 Bool)) false) setElem!44277 true) setRest!44277))))

(declare-fun b!6497388 () Bool)

(declare-fun tp!1797771 () Bool)

(declare-fun e!3937251 () Bool)

(assert (=> b!6497388 (= e!3937251 (and (inv!84184 (h!71749 zl!343)) e!3937268 tp!1797771))))

(declare-fun b!6497389 () Bool)

(declare-fun res!2668434 () Bool)

(assert (=> b!6497389 (=> res!2668434 e!3937261)))

(declare-fun lt!2391030 () Bool)

(assert (=> b!6497389 (= res!2668434 (not lt!2391030))))

(declare-fun b!6497390 () Bool)

(declare-fun e!3937257 () Bool)

(declare-fun e!3937269 () Bool)

(assert (=> b!6497390 (= e!3937257 e!3937269)))

(declare-fun res!2668437 () Bool)

(assert (=> b!6497390 (=> (not res!2668437) (not e!3937269))))

(declare-fun lt!2391026 () Regex!16375)

(assert (=> b!6497390 (= res!2668437 (= r!7292 lt!2391026))))

(assert (=> b!6497390 (= lt!2391026 (unfocusZipper!2117 zl!343))))

(declare-fun b!6497391 () Bool)

(assert (=> b!6497391 (= e!3937262 tp_is_empty!42003)))

(declare-fun b!6497392 () Bool)

(declare-fun res!2668441 () Bool)

(assert (=> b!6497392 (=> (not res!2668441) (not e!3937257))))

(declare-fun toList!10159 ((InoxSet Context!11518)) List!65425)

(assert (=> b!6497392 (= res!2668441 (= (toList!10159 z!1189) zl!343))))

(declare-fun b!6497393 () Bool)

(assert (=> b!6497393 (= e!3937256 e!3937254)))

(declare-fun res!2668445 () Bool)

(assert (=> b!6497393 (=> res!2668445 e!3937254)))

(assert (=> b!6497393 (= res!2668445 (not (= (unfocusZipper!2117 (Cons!65301 lt!2391016 Nil!65301)) lt!2391008)))))

(assert (=> b!6497393 (= lt!2391008 (Concat!25220 (reg!16704 (regOne!33262 r!7292)) lt!2391006))))

(declare-fun b!6497394 () Bool)

(assert (=> b!6497394 (= e!3937253 (inv!84184 lt!2391002))))

(assert (=> b!6497395 (= e!3937260 e!3937272)))

(declare-fun res!2668426 () Bool)

(assert (=> b!6497395 (=> res!2668426 e!3937272)))

(assert (=> b!6497395 (= res!2668426 (or (and ((_ is ElementMatch!16375) (regOne!33262 r!7292)) (= (c!1191063 (regOne!33262 r!7292)) (h!71750 s!2326))) ((_ is Union!16375) (regOne!33262 r!7292))))))

(declare-fun lt!2391027 () Unit!158835)

(assert (=> b!6497395 (= lt!2391027 e!3937255)))

(declare-fun c!1191062 () Bool)

(assert (=> b!6497395 (= c!1191062 lt!2391030)))

(assert (=> b!6497395 (= lt!2391030 (nullable!6368 (h!71748 (exprs!6259 (h!71749 zl!343)))))))

(assert (=> b!6497395 (= (flatMap!1880 z!1189 lambda!359990) (derivationStepZipperUp!1549 (h!71749 zl!343) (h!71750 s!2326)))))

(declare-fun lt!2391020 () Unit!158835)

(assert (=> b!6497395 (= lt!2391020 (lemmaFlatMapOnSingletonSet!1406 z!1189 (h!71749 zl!343) lambda!359990))))

(declare-fun lt!2391021 () Context!11518)

(assert (=> b!6497395 (= lt!2391017 (derivationStepZipperUp!1549 lt!2391021 (h!71750 s!2326)))))

(declare-fun derivationStepZipperDown!1623 (Regex!16375 Context!11518 C!33020) (InoxSet Context!11518))

(assert (=> b!6497395 (= lt!2391025 (derivationStepZipperDown!1623 (h!71748 (exprs!6259 (h!71749 zl!343))) lt!2391021 (h!71750 s!2326)))))

(assert (=> b!6497395 (= lt!2391021 (Context!11519 (t!379056 (exprs!6259 (h!71749 zl!343)))))))

(declare-fun lt!2391019 () (InoxSet Context!11518))

(assert (=> b!6497395 (= lt!2391019 (derivationStepZipperUp!1549 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343))))) (h!71750 s!2326)))))

(declare-fun b!6497396 () Bool)

(declare-fun res!2668435 () Bool)

(assert (=> b!6497396 (=> res!2668435 e!3937265)))

(declare-fun isEmpty!37498 (List!65425) Bool)

(assert (=> b!6497396 (= res!2668435 (not (isEmpty!37498 (t!379057 zl!343))))))

(declare-fun b!6497397 () Bool)

(assert (=> b!6497397 (= e!3937272 e!3937252)))

(declare-fun res!2668430 () Bool)

(assert (=> b!6497397 (=> res!2668430 e!3937252)))

(assert (=> b!6497397 (= res!2668430 (not (= lt!2391025 lt!2391007)))))

(assert (=> b!6497397 (= lt!2391007 (derivationStepZipperDown!1623 (reg!16704 (regOne!33262 r!7292)) lt!2391011 (h!71750 s!2326)))))

(assert (=> b!6497397 (= lt!2391011 (Context!11519 lt!2391015))))

(assert (=> b!6497397 (= lt!2391015 (Cons!65300 lt!2390999 (t!379056 (exprs!6259 (h!71749 zl!343)))))))

(assert (=> b!6497397 (= lt!2390999 (Star!16375 (reg!16704 (regOne!33262 r!7292))))))

(declare-fun b!6497398 () Bool)

(declare-fun res!2668431 () Bool)

(assert (=> b!6497398 (=> res!2668431 e!3937266)))

(assert (=> b!6497398 (= res!2668431 (not (= lt!2391026 r!7292)))))

(declare-fun res!2668424 () Bool)

(assert (=> start!638390 (=> (not res!2668424) (not e!3937257))))

(declare-fun validRegex!8111 (Regex!16375) Bool)

(assert (=> start!638390 (= res!2668424 (validRegex!8111 r!7292))))

(assert (=> start!638390 e!3937257))

(assert (=> start!638390 e!3937262))

(declare-fun condSetEmpty!44277 () Bool)

(assert (=> start!638390 (= condSetEmpty!44277 (= z!1189 ((as const (Array Context!11518 Bool)) false)))))

(assert (=> start!638390 setRes!44277))

(assert (=> start!638390 e!3937251))

(assert (=> start!638390 e!3937267))

(declare-fun b!6497367 () Bool)

(assert (=> b!6497367 (= e!3937269 (not e!3937265))))

(declare-fun res!2668418 () Bool)

(assert (=> b!6497367 (=> res!2668418 e!3937265)))

(assert (=> b!6497367 (= res!2668418 (not ((_ is Cons!65301) zl!343)))))

(assert (=> b!6497367 (= lt!2391003 (matchRSpec!3476 r!7292 s!2326))))

(assert (=> b!6497367 (= lt!2391003 (matchR!8558 r!7292 s!2326))))

(declare-fun lt!2391029 () Unit!158835)

(assert (=> b!6497367 (= lt!2391029 (mainMatchTheorem!3476 r!7292 s!2326))))

(declare-fun b!6497399 () Bool)

(declare-fun Unit!158838 () Unit!158835)

(assert (=> b!6497399 (= e!3937255 Unit!158838)))

(declare-fun setIsEmpty!44277 () Bool)

(assert (=> setIsEmpty!44277 setRes!44277))

(assert (= (and start!638390 res!2668424) b!6497392))

(assert (= (and b!6497392 res!2668441) b!6497390))

(assert (= (and b!6497390 res!2668437) b!6497367))

(assert (= (and b!6497367 (not res!2668418)) b!6497396))

(assert (= (and b!6497396 (not res!2668435)) b!6497381))

(assert (= (and b!6497381 (not res!2668421)) b!6497382))

(assert (= (and b!6497382 (not res!2668419)) b!6497373))

(assert (= (and b!6497373 (not res!2668442)) b!6497374))

(assert (= (and b!6497374 (not res!2668428)) b!6497365))

(assert (= (and b!6497365 (not res!2668438)) b!6497360))

(assert (= (and b!6497360 (not res!2668417)) b!6497395))

(assert (= (and b!6497395 c!1191062) b!6497387))

(assert (= (and b!6497395 (not c!1191062)) b!6497399))

(assert (= (and b!6497387 (not res!2668443)) b!6497380))

(assert (= (and b!6497395 (not res!2668426)) b!6497370))

(assert (= (and b!6497370 res!2668444) b!6497369))

(assert (= (and b!6497370 (not res!2668425)) b!6497371))

(assert (= (and b!6497371 (not res!2668436)) b!6497397))

(assert (= (and b!6497397 (not res!2668430)) b!6497368))

(assert (= (and b!6497368 (not res!2668422)) b!6497386))

(assert (= (and b!6497386 (not res!2668439)) b!6497398))

(assert (= (and b!6497398 (not res!2668431)) b!6497379))

(assert (= (and b!6497379 (not res!2668433)) b!6497393))

(assert (= (and b!6497393 (not res!2668445)) b!6497376))

(assert (= (and b!6497376 (not res!2668420)) b!6497364))

(assert (= (and b!6497364 (not res!2668427)) b!6497362))

(assert (= (and b!6497362 (not res!2668446)) b!6497375))

(assert (= (and b!6497375 (not res!2668440)) b!6497389))

(assert (= (and b!6497389 (not res!2668434)) b!6497363))

(assert (= (and b!6497363 res!2668423) b!6497361))

(assert (= (and b!6497363 (not res!2668432)) b!6497378))

(assert (= (and b!6497378 (not res!2668429)) b!6497394))

(assert (= (and start!638390 ((_ is ElementMatch!16375) r!7292)) b!6497391))

(assert (= (and start!638390 ((_ is Concat!25220) r!7292)) b!6497366))

(assert (= (and start!638390 ((_ is Star!16375) r!7292)) b!6497384))

(assert (= (and start!638390 ((_ is Union!16375) r!7292)) b!6497385))

(assert (= (and start!638390 condSetEmpty!44277) setIsEmpty!44277))

(assert (= (and start!638390 (not condSetEmpty!44277)) setNonEmpty!44277))

(assert (= setNonEmpty!44277 b!6497377))

(assert (= b!6497388 b!6497372))

(assert (= (and start!638390 ((_ is Cons!65301) zl!343)) b!6497388))

(assert (= (and start!638390 ((_ is Cons!65302) s!2326)) b!6497383))

(declare-fun m!7285738 () Bool)

(assert (=> b!6497388 m!7285738))

(declare-fun m!7285740 () Bool)

(assert (=> b!6497390 m!7285740))

(declare-fun m!7285742 () Bool)

(assert (=> start!638390 m!7285742))

(declare-fun m!7285744 () Bool)

(assert (=> b!6497369 m!7285744))

(declare-fun m!7285746 () Bool)

(assert (=> b!6497365 m!7285746))

(declare-fun m!7285748 () Bool)

(assert (=> b!6497365 m!7285748))

(declare-fun m!7285750 () Bool)

(assert (=> b!6497365 m!7285750))

(declare-fun m!7285752 () Bool)

(assert (=> b!6497365 m!7285752))

(assert (=> b!6497365 m!7285748))

(declare-fun m!7285754 () Bool)

(assert (=> b!6497365 m!7285754))

(assert (=> b!6497365 m!7285750))

(declare-fun m!7285756 () Bool)

(assert (=> b!6497365 m!7285756))

(declare-fun m!7285758 () Bool)

(assert (=> b!6497363 m!7285758))

(declare-fun m!7285760 () Bool)

(assert (=> b!6497386 m!7285760))

(declare-fun m!7285762 () Bool)

(assert (=> b!6497386 m!7285762))

(declare-fun m!7285764 () Bool)

(assert (=> b!6497360 m!7285764))

(declare-fun m!7285766 () Bool)

(assert (=> b!6497393 m!7285766))

(declare-fun m!7285768 () Bool)

(assert (=> b!6497364 m!7285768))

(declare-fun m!7285770 () Bool)

(assert (=> b!6497375 m!7285770))

(declare-fun m!7285772 () Bool)

(assert (=> b!6497367 m!7285772))

(declare-fun m!7285774 () Bool)

(assert (=> b!6497367 m!7285774))

(declare-fun m!7285776 () Bool)

(assert (=> b!6497367 m!7285776))

(declare-fun m!7285778 () Bool)

(assert (=> b!6497380 m!7285778))

(declare-fun m!7285780 () Bool)

(assert (=> b!6497392 m!7285780))

(declare-fun m!7285782 () Bool)

(assert (=> b!6497376 m!7285782))

(declare-fun m!7285784 () Bool)

(assert (=> b!6497376 m!7285784))

(declare-fun m!7285786 () Bool)

(assert (=> b!6497376 m!7285786))

(declare-fun m!7285788 () Bool)

(assert (=> b!6497376 m!7285788))

(declare-fun m!7285790 () Bool)

(assert (=> b!6497376 m!7285790))

(declare-fun m!7285792 () Bool)

(assert (=> b!6497376 m!7285792))

(declare-fun m!7285794 () Bool)

(assert (=> b!6497376 m!7285794))

(declare-fun m!7285796 () Bool)

(assert (=> b!6497376 m!7285796))

(declare-fun m!7285798 () Bool)

(assert (=> b!6497376 m!7285798))

(declare-fun m!7285800 () Bool)

(assert (=> b!6497396 m!7285800))

(declare-fun m!7285802 () Bool)

(assert (=> b!6497395 m!7285802))

(declare-fun m!7285804 () Bool)

(assert (=> b!6497395 m!7285804))

(declare-fun m!7285806 () Bool)

(assert (=> b!6497395 m!7285806))

(declare-fun m!7285808 () Bool)

(assert (=> b!6497395 m!7285808))

(declare-fun m!7285810 () Bool)

(assert (=> b!6497395 m!7285810))

(declare-fun m!7285812 () Bool)

(assert (=> b!6497395 m!7285812))

(declare-fun m!7285814 () Bool)

(assert (=> b!6497395 m!7285814))

(declare-fun m!7285816 () Bool)

(assert (=> b!6497362 m!7285816))

(declare-fun m!7285818 () Bool)

(assert (=> b!6497362 m!7285818))

(declare-fun m!7285820 () Bool)

(assert (=> b!6497362 m!7285820))

(declare-fun m!7285822 () Bool)

(assert (=> b!6497387 m!7285822))

(assert (=> b!6497387 m!7285758))

(declare-fun m!7285824 () Bool)

(assert (=> b!6497387 m!7285824))

(declare-fun m!7285826 () Bool)

(assert (=> b!6497381 m!7285826))

(declare-fun m!7285828 () Bool)

(assert (=> b!6497394 m!7285828))

(declare-fun m!7285830 () Bool)

(assert (=> b!6497397 m!7285830))

(declare-fun m!7285832 () Bool)

(assert (=> setNonEmpty!44277 m!7285832))

(declare-fun m!7285834 () Bool)

(assert (=> b!6497368 m!7285834))

(declare-fun m!7285836 () Bool)

(assert (=> b!6497368 m!7285836))

(declare-fun m!7285838 () Bool)

(assert (=> b!6497368 m!7285838))

(declare-fun m!7285840 () Bool)

(assert (=> b!6497368 m!7285840))

(declare-fun m!7285842 () Bool)

(assert (=> b!6497368 m!7285842))

(declare-fun m!7285844 () Bool)

(assert (=> b!6497373 m!7285844))

(assert (=> b!6497373 m!7285844))

(declare-fun m!7285846 () Bool)

(assert (=> b!6497373 m!7285846))

(assert (=> b!6497361 m!7285778))

(check-sat (not setNonEmpty!44277) (not b!6497360) (not b!6497364) (not b!6497373) (not b!6497376) (not b!6497390) (not b!6497392) (not b!6497369) (not b!6497388) (not b!6497366) (not b!6497362) (not b!6497385) (not b!6497368) (not b!6497387) (not b!6497381) (not b!6497394) (not b!6497375) (not b!6497380) (not b!6497363) (not b!6497372) (not b!6497386) (not b!6497393) (not b!6497365) (not start!638390) (not b!6497396) (not b!6497397) (not b!6497395) tp_is_empty!42003 (not b!6497383) (not b!6497361) (not b!6497384) (not b!6497377) (not b!6497367))
(check-sat)
(get-model)

(declare-fun b!6497832 () Bool)

(declare-fun e!3937511 () (InoxSet Context!11518))

(assert (=> b!6497832 (= e!3937511 ((as const (Array Context!11518 Bool)) false))))

(declare-fun c!1191189 () Bool)

(declare-fun bm!562876 () Bool)

(declare-fun call!562881 () List!65424)

(declare-fun c!1191187 () Bool)

(declare-fun c!1191188 () Bool)

(declare-fun call!562885 () (InoxSet Context!11518))

(assert (=> bm!562876 (= call!562885 (derivationStepZipperDown!1623 (ite c!1191188 (regOne!33263 (reg!16704 (regOne!33262 r!7292))) (ite c!1191189 (regTwo!33262 (reg!16704 (regOne!33262 r!7292))) (ite c!1191187 (regOne!33262 (reg!16704 (regOne!33262 r!7292))) (reg!16704 (reg!16704 (regOne!33262 r!7292)))))) (ite (or c!1191188 c!1191189) lt!2391011 (Context!11519 call!562881)) (h!71750 s!2326)))))

(declare-fun b!6497833 () Bool)

(declare-fun e!3937516 () (InoxSet Context!11518))

(declare-fun e!3937514 () (InoxSet Context!11518))

(assert (=> b!6497833 (= e!3937516 e!3937514)))

(assert (=> b!6497833 (= c!1191188 ((_ is Union!16375) (reg!16704 (regOne!33262 r!7292))))))

(declare-fun bm!562877 () Bool)

(declare-fun call!562882 () List!65424)

(assert (=> bm!562877 (= call!562881 call!562882)))

(declare-fun d!2038899 () Bool)

(declare-fun c!1191190 () Bool)

(assert (=> d!2038899 (= c!1191190 (and ((_ is ElementMatch!16375) (reg!16704 (regOne!33262 r!7292))) (= (c!1191063 (reg!16704 (regOne!33262 r!7292))) (h!71750 s!2326))))))

(assert (=> d!2038899 (= (derivationStepZipperDown!1623 (reg!16704 (regOne!33262 r!7292)) lt!2391011 (h!71750 s!2326)) e!3937516)))

(declare-fun b!6497834 () Bool)

(declare-fun call!562886 () (InoxSet Context!11518))

(assert (=> b!6497834 (= e!3937514 ((_ map or) call!562885 call!562886))))

(declare-fun bm!562878 () Bool)

(declare-fun $colon$colon!2226 (List!65424 Regex!16375) List!65424)

(assert (=> bm!562878 (= call!562882 ($colon$colon!2226 (exprs!6259 lt!2391011) (ite (or c!1191189 c!1191187) (regTwo!33262 (reg!16704 (regOne!33262 r!7292))) (reg!16704 (regOne!33262 r!7292)))))))

(declare-fun b!6497835 () Bool)

(declare-fun e!3937515 () Bool)

(assert (=> b!6497835 (= c!1191189 e!3937515)))

(declare-fun res!2668575 () Bool)

(assert (=> b!6497835 (=> (not res!2668575) (not e!3937515))))

(assert (=> b!6497835 (= res!2668575 ((_ is Concat!25220) (reg!16704 (regOne!33262 r!7292))))))

(declare-fun e!3937512 () (InoxSet Context!11518))

(assert (=> b!6497835 (= e!3937514 e!3937512)))

(declare-fun b!6497836 () Bool)

(declare-fun e!3937513 () (InoxSet Context!11518))

(assert (=> b!6497836 (= e!3937512 e!3937513)))

(assert (=> b!6497836 (= c!1191187 ((_ is Concat!25220) (reg!16704 (regOne!33262 r!7292))))))

(declare-fun b!6497837 () Bool)

(declare-fun call!562883 () (InoxSet Context!11518))

(assert (=> b!6497837 (= e!3937513 call!562883)))

(declare-fun b!6497838 () Bool)

(assert (=> b!6497838 (= e!3937515 (nullable!6368 (regOne!33262 (reg!16704 (regOne!33262 r!7292)))))))

(declare-fun b!6497839 () Bool)

(declare-fun call!562884 () (InoxSet Context!11518))

(assert (=> b!6497839 (= e!3937512 ((_ map or) call!562886 call!562884))))

(declare-fun bm!562879 () Bool)

(assert (=> bm!562879 (= call!562886 (derivationStepZipperDown!1623 (ite c!1191188 (regTwo!33263 (reg!16704 (regOne!33262 r!7292))) (regOne!33262 (reg!16704 (regOne!33262 r!7292)))) (ite c!1191188 lt!2391011 (Context!11519 call!562882)) (h!71750 s!2326)))))

(declare-fun b!6497840 () Bool)

(assert (=> b!6497840 (= e!3937516 (store ((as const (Array Context!11518 Bool)) false) lt!2391011 true))))

(declare-fun bm!562880 () Bool)

(assert (=> bm!562880 (= call!562883 call!562884)))

(declare-fun b!6497841 () Bool)

(declare-fun c!1191191 () Bool)

(assert (=> b!6497841 (= c!1191191 ((_ is Star!16375) (reg!16704 (regOne!33262 r!7292))))))

(assert (=> b!6497841 (= e!3937513 e!3937511)))

(declare-fun b!6497842 () Bool)

(assert (=> b!6497842 (= e!3937511 call!562883)))

(declare-fun bm!562881 () Bool)

(assert (=> bm!562881 (= call!562884 call!562885)))

(assert (= (and d!2038899 c!1191190) b!6497840))

(assert (= (and d!2038899 (not c!1191190)) b!6497833))

(assert (= (and b!6497833 c!1191188) b!6497834))

(assert (= (and b!6497833 (not c!1191188)) b!6497835))

(assert (= (and b!6497835 res!2668575) b!6497838))

(assert (= (and b!6497835 c!1191189) b!6497839))

(assert (= (and b!6497835 (not c!1191189)) b!6497836))

(assert (= (and b!6497836 c!1191187) b!6497837))

(assert (= (and b!6497836 (not c!1191187)) b!6497841))

(assert (= (and b!6497841 c!1191191) b!6497842))

(assert (= (and b!6497841 (not c!1191191)) b!6497832))

(assert (= (or b!6497837 b!6497842) bm!562877))

(assert (= (or b!6497837 b!6497842) bm!562880))

(assert (= (or b!6497839 bm!562877) bm!562878))

(assert (= (or b!6497839 bm!562880) bm!562881))

(assert (= (or b!6497834 b!6497839) bm!562879))

(assert (= (or b!6497834 bm!562881) bm!562876))

(declare-fun m!7286138 () Bool)

(assert (=> bm!562879 m!7286138))

(declare-fun m!7286140 () Bool)

(assert (=> b!6497838 m!7286140))

(declare-fun m!7286142 () Bool)

(assert (=> bm!562876 m!7286142))

(assert (=> b!6497840 m!7285784))

(declare-fun m!7286144 () Bool)

(assert (=> bm!562878 m!7286144))

(assert (=> b!6497397 d!2038899))

(declare-fun d!2038919 () Bool)

(declare-fun lt!2391085 () Regex!16375)

(assert (=> d!2038919 (validRegex!8111 lt!2391085)))

(assert (=> d!2038919 (= lt!2391085 (generalisedUnion!2219 (unfocusZipperList!1796 (Cons!65301 lt!2391002 Nil!65301))))))

(assert (=> d!2038919 (= (unfocusZipper!2117 (Cons!65301 lt!2391002 Nil!65301)) lt!2391085)))

(declare-fun bs!1650476 () Bool)

(assert (= bs!1650476 d!2038919))

(declare-fun m!7286146 () Bool)

(assert (=> bs!1650476 m!7286146))

(declare-fun m!7286148 () Bool)

(assert (=> bs!1650476 m!7286148))

(assert (=> bs!1650476 m!7286148))

(declare-fun m!7286150 () Bool)

(assert (=> bs!1650476 m!7286150))

(assert (=> b!6497376 d!2038919))

(declare-fun d!2038921 () Bool)

(declare-fun dynLambda!25939 (Int Context!11518) (InoxSet Context!11518))

(assert (=> d!2038921 (= (flatMap!1880 lt!2391022 lambda!359990) (dynLambda!25939 lambda!359990 lt!2391002))))

(declare-fun lt!2391088 () Unit!158835)

(declare-fun choose!48228 ((InoxSet Context!11518) Context!11518 Int) Unit!158835)

(assert (=> d!2038921 (= lt!2391088 (choose!48228 lt!2391022 lt!2391002 lambda!359990))))

(assert (=> d!2038921 (= lt!2391022 (store ((as const (Array Context!11518 Bool)) false) lt!2391002 true))))

(assert (=> d!2038921 (= (lemmaFlatMapOnSingletonSet!1406 lt!2391022 lt!2391002 lambda!359990) lt!2391088)))

(declare-fun b_lambda!245977 () Bool)

(assert (=> (not b_lambda!245977) (not d!2038921)))

(declare-fun bs!1650477 () Bool)

(assert (= bs!1650477 d!2038921))

(assert (=> bs!1650477 m!7285782))

(declare-fun m!7286152 () Bool)

(assert (=> bs!1650477 m!7286152))

(declare-fun m!7286154 () Bool)

(assert (=> bs!1650477 m!7286154))

(assert (=> bs!1650477 m!7285786))

(assert (=> b!6497376 d!2038921))

(declare-fun d!2038923 () Bool)

(declare-fun choose!48229 ((InoxSet Context!11518) Int) (InoxSet Context!11518))

(assert (=> d!2038923 (= (flatMap!1880 lt!2391031 lambda!359990) (choose!48229 lt!2391031 lambda!359990))))

(declare-fun bs!1650478 () Bool)

(assert (= bs!1650478 d!2038923))

(declare-fun m!7286156 () Bool)

(assert (=> bs!1650478 m!7286156))

(assert (=> b!6497376 d!2038923))

(declare-fun bm!562884 () Bool)

(declare-fun call!562889 () (InoxSet Context!11518))

(assert (=> bm!562884 (= call!562889 (derivationStepZipperDown!1623 (h!71748 (exprs!6259 lt!2391002)) (Context!11519 (t!379056 (exprs!6259 lt!2391002))) (h!71750 s!2326)))))

(declare-fun b!6497853 () Bool)

(declare-fun e!3937524 () Bool)

(assert (=> b!6497853 (= e!3937524 (nullable!6368 (h!71748 (exprs!6259 lt!2391002))))))

(declare-fun b!6497854 () Bool)

(declare-fun e!3937523 () (InoxSet Context!11518))

(declare-fun e!3937525 () (InoxSet Context!11518))

(assert (=> b!6497854 (= e!3937523 e!3937525)))

(declare-fun c!1191197 () Bool)

(assert (=> b!6497854 (= c!1191197 ((_ is Cons!65300) (exprs!6259 lt!2391002)))))

(declare-fun d!2038925 () Bool)

(declare-fun c!1191196 () Bool)

(assert (=> d!2038925 (= c!1191196 e!3937524)))

(declare-fun res!2668578 () Bool)

(assert (=> d!2038925 (=> (not res!2668578) (not e!3937524))))

(assert (=> d!2038925 (= res!2668578 ((_ is Cons!65300) (exprs!6259 lt!2391002)))))

(assert (=> d!2038925 (= (derivationStepZipperUp!1549 lt!2391002 (h!71750 s!2326)) e!3937523)))

(declare-fun b!6497855 () Bool)

(assert (=> b!6497855 (= e!3937525 call!562889)))

(declare-fun b!6497856 () Bool)

(assert (=> b!6497856 (= e!3937523 ((_ map or) call!562889 (derivationStepZipperUp!1549 (Context!11519 (t!379056 (exprs!6259 lt!2391002))) (h!71750 s!2326))))))

(declare-fun b!6497857 () Bool)

(assert (=> b!6497857 (= e!3937525 ((as const (Array Context!11518 Bool)) false))))

(assert (= (and d!2038925 res!2668578) b!6497853))

(assert (= (and d!2038925 c!1191196) b!6497856))

(assert (= (and d!2038925 (not c!1191196)) b!6497854))

(assert (= (and b!6497854 c!1191197) b!6497855))

(assert (= (and b!6497854 (not c!1191197)) b!6497857))

(assert (= (or b!6497856 b!6497855) bm!562884))

(declare-fun m!7286158 () Bool)

(assert (=> bm!562884 m!7286158))

(declare-fun m!7286160 () Bool)

(assert (=> b!6497853 m!7286160))

(declare-fun m!7286162 () Bool)

(assert (=> b!6497856 m!7286162))

(assert (=> b!6497376 d!2038925))

(declare-fun d!2038927 () Bool)

(assert (=> d!2038927 (= (flatMap!1880 lt!2391031 lambda!359990) (dynLambda!25939 lambda!359990 lt!2391011))))

(declare-fun lt!2391089 () Unit!158835)

(assert (=> d!2038927 (= lt!2391089 (choose!48228 lt!2391031 lt!2391011 lambda!359990))))

(assert (=> d!2038927 (= lt!2391031 (store ((as const (Array Context!11518 Bool)) false) lt!2391011 true))))

(assert (=> d!2038927 (= (lemmaFlatMapOnSingletonSet!1406 lt!2391031 lt!2391011 lambda!359990) lt!2391089)))

(declare-fun b_lambda!245979 () Bool)

(assert (=> (not b_lambda!245979) (not d!2038927)))

(declare-fun bs!1650479 () Bool)

(assert (= bs!1650479 d!2038927))

(assert (=> bs!1650479 m!7285796))

(declare-fun m!7286164 () Bool)

(assert (=> bs!1650479 m!7286164))

(declare-fun m!7286166 () Bool)

(assert (=> bs!1650479 m!7286166))

(assert (=> bs!1650479 m!7285784))

(assert (=> b!6497376 d!2038927))

(declare-fun d!2038929 () Bool)

(assert (=> d!2038929 (= (flatMap!1880 lt!2391022 lambda!359990) (choose!48229 lt!2391022 lambda!359990))))

(declare-fun bs!1650480 () Bool)

(assert (= bs!1650480 d!2038929))

(declare-fun m!7286168 () Bool)

(assert (=> bs!1650480 m!7286168))

(assert (=> b!6497376 d!2038929))

(declare-fun bm!562885 () Bool)

(declare-fun call!562890 () (InoxSet Context!11518))

(assert (=> bm!562885 (= call!562890 (derivationStepZipperDown!1623 (h!71748 (exprs!6259 lt!2391011)) (Context!11519 (t!379056 (exprs!6259 lt!2391011))) (h!71750 s!2326)))))

(declare-fun b!6497858 () Bool)

(declare-fun e!3937527 () Bool)

(assert (=> b!6497858 (= e!3937527 (nullable!6368 (h!71748 (exprs!6259 lt!2391011))))))

(declare-fun b!6497859 () Bool)

(declare-fun e!3937526 () (InoxSet Context!11518))

(declare-fun e!3937528 () (InoxSet Context!11518))

(assert (=> b!6497859 (= e!3937526 e!3937528)))

(declare-fun c!1191199 () Bool)

(assert (=> b!6497859 (= c!1191199 ((_ is Cons!65300) (exprs!6259 lt!2391011)))))

(declare-fun d!2038931 () Bool)

(declare-fun c!1191198 () Bool)

(assert (=> d!2038931 (= c!1191198 e!3937527)))

(declare-fun res!2668579 () Bool)

(assert (=> d!2038931 (=> (not res!2668579) (not e!3937527))))

(assert (=> d!2038931 (= res!2668579 ((_ is Cons!65300) (exprs!6259 lt!2391011)))))

(assert (=> d!2038931 (= (derivationStepZipperUp!1549 lt!2391011 (h!71750 s!2326)) e!3937526)))

(declare-fun b!6497860 () Bool)

(assert (=> b!6497860 (= e!3937528 call!562890)))

(declare-fun b!6497861 () Bool)

(assert (=> b!6497861 (= e!3937526 ((_ map or) call!562890 (derivationStepZipperUp!1549 (Context!11519 (t!379056 (exprs!6259 lt!2391011))) (h!71750 s!2326))))))

(declare-fun b!6497862 () Bool)

(assert (=> b!6497862 (= e!3937528 ((as const (Array Context!11518 Bool)) false))))

(assert (= (and d!2038931 res!2668579) b!6497858))

(assert (= (and d!2038931 c!1191198) b!6497861))

(assert (= (and d!2038931 (not c!1191198)) b!6497859))

(assert (= (and b!6497859 c!1191199) b!6497860))

(assert (= (and b!6497859 (not c!1191199)) b!6497862))

(assert (= (or b!6497861 b!6497860) bm!562885))

(declare-fun m!7286170 () Bool)

(assert (=> bm!562885 m!7286170))

(declare-fun m!7286172 () Bool)

(assert (=> b!6497858 m!7286172))

(declare-fun m!7286174 () Bool)

(assert (=> b!6497861 m!7286174))

(assert (=> b!6497376 d!2038931))

(declare-fun d!2038933 () Bool)

(assert (=> d!2038933 (= (isEmpty!37498 (t!379057 zl!343)) ((_ is Nil!65301) (t!379057 zl!343)))))

(assert (=> b!6497396 d!2038933))

(declare-fun d!2038935 () Bool)

(declare-fun c!1191202 () Bool)

(declare-fun isEmpty!37501 (List!65426) Bool)

(assert (=> d!2038935 (= c!1191202 (isEmpty!37501 (t!379058 s!2326)))))

(declare-fun e!3937531 () Bool)

(assert (=> d!2038935 (= (matchZipper!2387 lt!2391017 (t!379058 s!2326)) e!3937531)))

(declare-fun b!6497867 () Bool)

(declare-fun nullableZipper!2130 ((InoxSet Context!11518)) Bool)

(assert (=> b!6497867 (= e!3937531 (nullableZipper!2130 lt!2391017))))

(declare-fun b!6497868 () Bool)

(declare-fun head!13221 (List!65426) C!33020)

(declare-fun tail!12306 (List!65426) List!65426)

(assert (=> b!6497868 (= e!3937531 (matchZipper!2387 (derivationStepZipper!2341 lt!2391017 (head!13221 (t!379058 s!2326))) (tail!12306 (t!379058 s!2326))))))

(assert (= (and d!2038935 c!1191202) b!6497867))

(assert (= (and d!2038935 (not c!1191202)) b!6497868))

(declare-fun m!7286176 () Bool)

(assert (=> d!2038935 m!7286176))

(declare-fun m!7286178 () Bool)

(assert (=> b!6497867 m!7286178))

(declare-fun m!7286180 () Bool)

(assert (=> b!6497868 m!7286180))

(assert (=> b!6497868 m!7286180))

(declare-fun m!7286182 () Bool)

(assert (=> b!6497868 m!7286182))

(declare-fun m!7286184 () Bool)

(assert (=> b!6497868 m!7286184))

(assert (=> b!6497868 m!7286182))

(assert (=> b!6497868 m!7286184))

(declare-fun m!7286186 () Bool)

(assert (=> b!6497868 m!7286186))

(assert (=> b!6497380 d!2038935))

(declare-fun b!6497887 () Bool)

(declare-fun e!3937549 () Bool)

(declare-fun e!3937546 () Bool)

(assert (=> b!6497887 (= e!3937549 e!3937546)))

(declare-fun c!1191208 () Bool)

(assert (=> b!6497887 (= c!1191208 ((_ is Union!16375) r!7292))))

(declare-fun b!6497888 () Bool)

(declare-fun e!3937547 () Bool)

(assert (=> b!6497888 (= e!3937549 e!3937547)))

(declare-fun res!2668593 () Bool)

(assert (=> b!6497888 (= res!2668593 (not (nullable!6368 (reg!16704 r!7292))))))

(assert (=> b!6497888 (=> (not res!2668593) (not e!3937547))))

(declare-fun b!6497889 () Bool)

(declare-fun e!3937552 () Bool)

(declare-fun e!3937551 () Bool)

(assert (=> b!6497889 (= e!3937552 e!3937551)))

(declare-fun res!2668591 () Bool)

(assert (=> b!6497889 (=> (not res!2668591) (not e!3937551))))

(declare-fun call!562897 () Bool)

(assert (=> b!6497889 (= res!2668591 call!562897)))

(declare-fun b!6497890 () Bool)

(declare-fun res!2668592 () Bool)

(assert (=> b!6497890 (=> res!2668592 e!3937552)))

(assert (=> b!6497890 (= res!2668592 (not ((_ is Concat!25220) r!7292)))))

(assert (=> b!6497890 (= e!3937546 e!3937552)))

(declare-fun d!2038937 () Bool)

(declare-fun res!2668594 () Bool)

(declare-fun e!3937550 () Bool)

(assert (=> d!2038937 (=> res!2668594 e!3937550)))

(assert (=> d!2038937 (= res!2668594 ((_ is ElementMatch!16375) r!7292))))

(assert (=> d!2038937 (= (validRegex!8111 r!7292) e!3937550)))

(declare-fun bm!562892 () Bool)

(declare-fun call!562898 () Bool)

(declare-fun c!1191207 () Bool)

(assert (=> bm!562892 (= call!562898 (validRegex!8111 (ite c!1191207 (reg!16704 r!7292) (ite c!1191208 (regOne!33263 r!7292) (regOne!33262 r!7292)))))))

(declare-fun b!6497891 () Bool)

(assert (=> b!6497891 (= e!3937547 call!562898)))

(declare-fun b!6497892 () Bool)

(declare-fun e!3937548 () Bool)

(declare-fun call!562899 () Bool)

(assert (=> b!6497892 (= e!3937548 call!562899)))

(declare-fun b!6497893 () Bool)

(assert (=> b!6497893 (= e!3937551 call!562899)))

(declare-fun bm!562893 () Bool)

(assert (=> bm!562893 (= call!562899 (validRegex!8111 (ite c!1191208 (regTwo!33263 r!7292) (regTwo!33262 r!7292))))))

(declare-fun b!6497894 () Bool)

(declare-fun res!2668590 () Bool)

(assert (=> b!6497894 (=> (not res!2668590) (not e!3937548))))

(assert (=> b!6497894 (= res!2668590 call!562897)))

(assert (=> b!6497894 (= e!3937546 e!3937548)))

(declare-fun b!6497895 () Bool)

(assert (=> b!6497895 (= e!3937550 e!3937549)))

(assert (=> b!6497895 (= c!1191207 ((_ is Star!16375) r!7292))))

(declare-fun bm!562894 () Bool)

(assert (=> bm!562894 (= call!562897 call!562898)))

(assert (= (and d!2038937 (not res!2668594)) b!6497895))

(assert (= (and b!6497895 c!1191207) b!6497888))

(assert (= (and b!6497895 (not c!1191207)) b!6497887))

(assert (= (and b!6497888 res!2668593) b!6497891))

(assert (= (and b!6497887 c!1191208) b!6497894))

(assert (= (and b!6497887 (not c!1191208)) b!6497890))

(assert (= (and b!6497894 res!2668590) b!6497892))

(assert (= (and b!6497890 (not res!2668592)) b!6497889))

(assert (= (and b!6497889 res!2668591) b!6497893))

(assert (= (or b!6497892 b!6497893) bm!562893))

(assert (= (or b!6497894 b!6497889) bm!562894))

(assert (= (or b!6497891 bm!562894) bm!562892))

(declare-fun m!7286188 () Bool)

(assert (=> b!6497888 m!7286188))

(declare-fun m!7286190 () Bool)

(assert (=> bm!562892 m!7286190))

(declare-fun m!7286192 () Bool)

(assert (=> bm!562893 m!7286192))

(assert (=> start!638390 d!2038937))

(assert (=> b!6497361 d!2038935))

(declare-fun d!2038939 () Bool)

(assert (=> d!2038939 (= (isEmpty!37497 (t!379056 (exprs!6259 (h!71749 zl!343)))) ((_ is Nil!65300) (t!379056 (exprs!6259 (h!71749 zl!343)))))))

(assert (=> b!6497360 d!2038939))

(declare-fun b!6497916 () Bool)

(declare-fun e!3937569 () Regex!16375)

(declare-fun e!3937565 () Regex!16375)

(assert (=> b!6497916 (= e!3937569 e!3937565)))

(declare-fun c!1191219 () Bool)

(assert (=> b!6497916 (= c!1191219 ((_ is Cons!65300) (exprs!6259 (h!71749 zl!343))))))

(declare-fun b!6497917 () Bool)

(declare-fun e!3937568 () Bool)

(declare-fun lt!2391092 () Regex!16375)

(declare-fun isConcat!1288 (Regex!16375) Bool)

(assert (=> b!6497917 (= e!3937568 (isConcat!1288 lt!2391092))))

(declare-fun b!6497918 () Bool)

(assert (=> b!6497918 (= e!3937565 (Concat!25220 (h!71748 (exprs!6259 (h!71749 zl!343))) (generalisedConcat!1972 (t!379056 (exprs!6259 (h!71749 zl!343))))))))

(declare-fun d!2038941 () Bool)

(declare-fun e!3937566 () Bool)

(assert (=> d!2038941 e!3937566))

(declare-fun res!2668599 () Bool)

(assert (=> d!2038941 (=> (not res!2668599) (not e!3937566))))

(assert (=> d!2038941 (= res!2668599 (validRegex!8111 lt!2391092))))

(assert (=> d!2038941 (= lt!2391092 e!3937569)))

(declare-fun c!1191220 () Bool)

(declare-fun e!3937567 () Bool)

(assert (=> d!2038941 (= c!1191220 e!3937567)))

(declare-fun res!2668600 () Bool)

(assert (=> d!2038941 (=> (not res!2668600) (not e!3937567))))

(assert (=> d!2038941 (= res!2668600 ((_ is Cons!65300) (exprs!6259 (h!71749 zl!343))))))

(declare-fun lambda!360027 () Int)

(declare-fun forall!15556 (List!65424 Int) Bool)

(assert (=> d!2038941 (forall!15556 (exprs!6259 (h!71749 zl!343)) lambda!360027)))

(assert (=> d!2038941 (= (generalisedConcat!1972 (exprs!6259 (h!71749 zl!343))) lt!2391092)))

(declare-fun b!6497919 () Bool)

(declare-fun head!13222 (List!65424) Regex!16375)

(assert (=> b!6497919 (= e!3937568 (= lt!2391092 (head!13222 (exprs!6259 (h!71749 zl!343)))))))

(declare-fun b!6497920 () Bool)

(assert (=> b!6497920 (= e!3937565 EmptyExpr!16375)))

(declare-fun b!6497921 () Bool)

(assert (=> b!6497921 (= e!3937567 (isEmpty!37497 (t!379056 (exprs!6259 (h!71749 zl!343)))))))

(declare-fun b!6497922 () Bool)

(declare-fun e!3937570 () Bool)

(assert (=> b!6497922 (= e!3937566 e!3937570)))

(declare-fun c!1191218 () Bool)

(assert (=> b!6497922 (= c!1191218 (isEmpty!37497 (exprs!6259 (h!71749 zl!343))))))

(declare-fun b!6497923 () Bool)

(declare-fun isEmptyExpr!1765 (Regex!16375) Bool)

(assert (=> b!6497923 (= e!3937570 (isEmptyExpr!1765 lt!2391092))))

(declare-fun b!6497924 () Bool)

(assert (=> b!6497924 (= e!3937569 (h!71748 (exprs!6259 (h!71749 zl!343))))))

(declare-fun b!6497925 () Bool)

(assert (=> b!6497925 (= e!3937570 e!3937568)))

(declare-fun c!1191217 () Bool)

(declare-fun tail!12307 (List!65424) List!65424)

(assert (=> b!6497925 (= c!1191217 (isEmpty!37497 (tail!12307 (exprs!6259 (h!71749 zl!343)))))))

(assert (= (and d!2038941 res!2668600) b!6497921))

(assert (= (and d!2038941 c!1191220) b!6497924))

(assert (= (and d!2038941 (not c!1191220)) b!6497916))

(assert (= (and b!6497916 c!1191219) b!6497918))

(assert (= (and b!6497916 (not c!1191219)) b!6497920))

(assert (= (and d!2038941 res!2668599) b!6497922))

(assert (= (and b!6497922 c!1191218) b!6497923))

(assert (= (and b!6497922 (not c!1191218)) b!6497925))

(assert (= (and b!6497925 c!1191217) b!6497919))

(assert (= (and b!6497925 (not c!1191217)) b!6497917))

(declare-fun m!7286194 () Bool)

(assert (=> b!6497918 m!7286194))

(declare-fun m!7286196 () Bool)

(assert (=> b!6497923 m!7286196))

(declare-fun m!7286198 () Bool)

(assert (=> b!6497919 m!7286198))

(declare-fun m!7286200 () Bool)

(assert (=> d!2038941 m!7286200))

(declare-fun m!7286202 () Bool)

(assert (=> d!2038941 m!7286202))

(declare-fun m!7286204 () Bool)

(assert (=> b!6497922 m!7286204))

(declare-fun m!7286206 () Bool)

(assert (=> b!6497917 m!7286206))

(declare-fun m!7286208 () Bool)

(assert (=> b!6497925 m!7286208))

(assert (=> b!6497925 m!7286208))

(declare-fun m!7286210 () Bool)

(assert (=> b!6497925 m!7286210))

(assert (=> b!6497921 m!7285764))

(assert (=> b!6497381 d!2038941))

(declare-fun d!2038943 () Bool)

(declare-fun lt!2391093 () Regex!16375)

(assert (=> d!2038943 (validRegex!8111 lt!2391093)))

(assert (=> d!2038943 (= lt!2391093 (generalisedUnion!2219 (unfocusZipperList!1796 (Cons!65301 lt!2391011 Nil!65301))))))

(assert (=> d!2038943 (= (unfocusZipper!2117 (Cons!65301 lt!2391011 Nil!65301)) lt!2391093)))

(declare-fun bs!1650481 () Bool)

(assert (= bs!1650481 d!2038943))

(declare-fun m!7286212 () Bool)

(assert (=> bs!1650481 m!7286212))

(declare-fun m!7286214 () Bool)

(assert (=> bs!1650481 m!7286214))

(assert (=> bs!1650481 m!7286214))

(declare-fun m!7286216 () Bool)

(assert (=> bs!1650481 m!7286216))

(assert (=> b!6497364 d!2038943))

(declare-fun d!2038945 () Bool)

(declare-fun c!1191221 () Bool)

(assert (=> d!2038945 (= c!1191221 (isEmpty!37501 (t!379058 s!2326)))))

(declare-fun e!3937571 () Bool)

(assert (=> d!2038945 (= (matchZipper!2387 lt!2391025 (t!379058 s!2326)) e!3937571)))

(declare-fun b!6497926 () Bool)

(assert (=> b!6497926 (= e!3937571 (nullableZipper!2130 lt!2391025))))

(declare-fun b!6497927 () Bool)

(assert (=> b!6497927 (= e!3937571 (matchZipper!2387 (derivationStepZipper!2341 lt!2391025 (head!13221 (t!379058 s!2326))) (tail!12306 (t!379058 s!2326))))))

(assert (= (and d!2038945 c!1191221) b!6497926))

(assert (= (and d!2038945 (not c!1191221)) b!6497927))

(assert (=> d!2038945 m!7286176))

(declare-fun m!7286218 () Bool)

(assert (=> b!6497926 m!7286218))

(assert (=> b!6497927 m!7286180))

(assert (=> b!6497927 m!7286180))

(declare-fun m!7286220 () Bool)

(assert (=> b!6497927 m!7286220))

(assert (=> b!6497927 m!7286184))

(assert (=> b!6497927 m!7286220))

(assert (=> b!6497927 m!7286184))

(declare-fun m!7286222 () Bool)

(assert (=> b!6497927 m!7286222))

(assert (=> b!6497363 d!2038945))

(declare-fun b!6497956 () Bool)

(declare-fun res!2668624 () Bool)

(declare-fun e!3937588 () Bool)

(assert (=> b!6497956 (=> res!2668624 e!3937588)))

(assert (=> b!6497956 (= res!2668624 (not ((_ is ElementMatch!16375) lt!2391008)))))

(declare-fun e!3937587 () Bool)

(assert (=> b!6497956 (= e!3937587 e!3937588)))

(declare-fun b!6497957 () Bool)

(declare-fun e!3937589 () Bool)

(assert (=> b!6497957 (= e!3937589 (not (= (head!13221 s!2326) (c!1191063 lt!2391008))))))

(declare-fun bm!562897 () Bool)

(declare-fun call!562902 () Bool)

(assert (=> bm!562897 (= call!562902 (isEmpty!37501 s!2326))))

(declare-fun b!6497958 () Bool)

(declare-fun res!2668618 () Bool)

(assert (=> b!6497958 (=> res!2668618 e!3937588)))

(declare-fun e!3937591 () Bool)

(assert (=> b!6497958 (= res!2668618 e!3937591)))

(declare-fun res!2668620 () Bool)

(assert (=> b!6497958 (=> (not res!2668620) (not e!3937591))))

(declare-fun lt!2391096 () Bool)

(assert (=> b!6497958 (= res!2668620 lt!2391096)))

(declare-fun b!6497959 () Bool)

(declare-fun res!2668621 () Bool)

(assert (=> b!6497959 (=> (not res!2668621) (not e!3937591))))

(assert (=> b!6497959 (= res!2668621 (not call!562902))))

(declare-fun b!6497960 () Bool)

(declare-fun e!3937592 () Bool)

(assert (=> b!6497960 (= e!3937592 (nullable!6368 lt!2391008))))

(declare-fun b!6497961 () Bool)

(declare-fun e!3937590 () Bool)

(assert (=> b!6497961 (= e!3937590 e!3937587)))

(declare-fun c!1191228 () Bool)

(assert (=> b!6497961 (= c!1191228 ((_ is EmptyLang!16375) lt!2391008))))

(declare-fun b!6497962 () Bool)

(assert (=> b!6497962 (= e!3937590 (= lt!2391096 call!562902))))

(declare-fun b!6497963 () Bool)

(declare-fun e!3937586 () Bool)

(assert (=> b!6497963 (= e!3937586 e!3937589)))

(declare-fun res!2668623 () Bool)

(assert (=> b!6497963 (=> res!2668623 e!3937589)))

(assert (=> b!6497963 (= res!2668623 call!562902)))

(declare-fun b!6497965 () Bool)

(assert (=> b!6497965 (= e!3937587 (not lt!2391096))))

(declare-fun d!2038947 () Bool)

(assert (=> d!2038947 e!3937590))

(declare-fun c!1191229 () Bool)

(assert (=> d!2038947 (= c!1191229 ((_ is EmptyExpr!16375) lt!2391008))))

(assert (=> d!2038947 (= lt!2391096 e!3937592)))

(declare-fun c!1191230 () Bool)

(assert (=> d!2038947 (= c!1191230 (isEmpty!37501 s!2326))))

(assert (=> d!2038947 (validRegex!8111 lt!2391008)))

(assert (=> d!2038947 (= (matchR!8558 lt!2391008 s!2326) lt!2391096)))

(declare-fun b!6497964 () Bool)

(declare-fun res!2668622 () Bool)

(assert (=> b!6497964 (=> res!2668622 e!3937589)))

(assert (=> b!6497964 (= res!2668622 (not (isEmpty!37501 (tail!12306 s!2326))))))

(declare-fun b!6497966 () Bool)

(assert (=> b!6497966 (= e!3937591 (= (head!13221 s!2326) (c!1191063 lt!2391008)))))

(declare-fun b!6497967 () Bool)

(declare-fun derivativeStep!5069 (Regex!16375 C!33020) Regex!16375)

(assert (=> b!6497967 (= e!3937592 (matchR!8558 (derivativeStep!5069 lt!2391008 (head!13221 s!2326)) (tail!12306 s!2326)))))

(declare-fun b!6497968 () Bool)

(assert (=> b!6497968 (= e!3937588 e!3937586)))

(declare-fun res!2668617 () Bool)

(assert (=> b!6497968 (=> (not res!2668617) (not e!3937586))))

(assert (=> b!6497968 (= res!2668617 (not lt!2391096))))

(declare-fun b!6497969 () Bool)

(declare-fun res!2668619 () Bool)

(assert (=> b!6497969 (=> (not res!2668619) (not e!3937591))))

(assert (=> b!6497969 (= res!2668619 (isEmpty!37501 (tail!12306 s!2326)))))

(assert (= (and d!2038947 c!1191230) b!6497960))

(assert (= (and d!2038947 (not c!1191230)) b!6497967))

(assert (= (and d!2038947 c!1191229) b!6497962))

(assert (= (and d!2038947 (not c!1191229)) b!6497961))

(assert (= (and b!6497961 c!1191228) b!6497965))

(assert (= (and b!6497961 (not c!1191228)) b!6497956))

(assert (= (and b!6497956 (not res!2668624)) b!6497958))

(assert (= (and b!6497958 res!2668620) b!6497959))

(assert (= (and b!6497959 res!2668621) b!6497969))

(assert (= (and b!6497969 res!2668619) b!6497966))

(assert (= (and b!6497958 (not res!2668618)) b!6497968))

(assert (= (and b!6497968 res!2668617) b!6497963))

(assert (= (and b!6497963 (not res!2668623)) b!6497964))

(assert (= (and b!6497964 (not res!2668622)) b!6497957))

(assert (= (or b!6497962 b!6497959 b!6497963) bm!562897))

(declare-fun m!7286224 () Bool)

(assert (=> d!2038947 m!7286224))

(declare-fun m!7286226 () Bool)

(assert (=> d!2038947 m!7286226))

(declare-fun m!7286228 () Bool)

(assert (=> b!6497967 m!7286228))

(assert (=> b!6497967 m!7286228))

(declare-fun m!7286230 () Bool)

(assert (=> b!6497967 m!7286230))

(declare-fun m!7286232 () Bool)

(assert (=> b!6497967 m!7286232))

(assert (=> b!6497967 m!7286230))

(assert (=> b!6497967 m!7286232))

(declare-fun m!7286234 () Bool)

(assert (=> b!6497967 m!7286234))

(assert (=> b!6497957 m!7286228))

(assert (=> bm!562897 m!7286224))

(assert (=> b!6497969 m!7286232))

(assert (=> b!6497969 m!7286232))

(declare-fun m!7286236 () Bool)

(assert (=> b!6497969 m!7286236))

(assert (=> b!6497966 m!7286228))

(assert (=> b!6497964 m!7286232))

(assert (=> b!6497964 m!7286232))

(assert (=> b!6497964 m!7286236))

(declare-fun m!7286238 () Bool)

(assert (=> b!6497960 m!7286238))

(assert (=> b!6497362 d!2038947))

(declare-fun bs!1650482 () Bool)

(declare-fun b!6498007 () Bool)

(assert (= bs!1650482 (and b!6498007 b!6497365)))

(declare-fun lambda!360032 () Int)

(assert (=> bs!1650482 (not (= lambda!360032 lambda!359988))))

(assert (=> bs!1650482 (not (= lambda!360032 lambda!359989))))

(assert (=> b!6498007 true))

(assert (=> b!6498007 true))

(declare-fun bs!1650483 () Bool)

(declare-fun b!6498010 () Bool)

(assert (= bs!1650483 (and b!6498010 b!6497365)))

(declare-fun lambda!360033 () Int)

(assert (=> bs!1650483 (not (= lambda!360033 lambda!359988))))

(assert (=> bs!1650483 (= (and (= (regOne!33262 lt!2391008) (regOne!33262 r!7292)) (= (regTwo!33262 lt!2391008) (regTwo!33262 r!7292))) (= lambda!360033 lambda!359989))))

(declare-fun bs!1650484 () Bool)

(assert (= bs!1650484 (and b!6498010 b!6498007)))

(assert (=> bs!1650484 (not (= lambda!360033 lambda!360032))))

(assert (=> b!6498010 true))

(assert (=> b!6498010 true))

(declare-fun b!6498002 () Bool)

(declare-fun e!3937617 () Bool)

(declare-fun call!562908 () Bool)

(assert (=> b!6498002 (= e!3937617 call!562908)))

(declare-fun d!2038949 () Bool)

(declare-fun c!1191242 () Bool)

(assert (=> d!2038949 (= c!1191242 ((_ is EmptyExpr!16375) lt!2391008))))

(assert (=> d!2038949 (= (matchRSpec!3476 lt!2391008 s!2326) e!3937617)))

(declare-fun b!6498003 () Bool)

(declare-fun e!3937614 () Bool)

(assert (=> b!6498003 (= e!3937614 (= s!2326 (Cons!65302 (c!1191063 lt!2391008) Nil!65302)))))

(declare-fun b!6498004 () Bool)

(declare-fun res!2668641 () Bool)

(declare-fun e!3937612 () Bool)

(assert (=> b!6498004 (=> res!2668641 e!3937612)))

(assert (=> b!6498004 (= res!2668641 call!562908)))

(declare-fun e!3937611 () Bool)

(assert (=> b!6498004 (= e!3937611 e!3937612)))

(declare-fun b!6498005 () Bool)

(declare-fun c!1191239 () Bool)

(assert (=> b!6498005 (= c!1191239 ((_ is ElementMatch!16375) lt!2391008))))

(declare-fun e!3937615 () Bool)

(assert (=> b!6498005 (= e!3937615 e!3937614)))

(declare-fun b!6498006 () Bool)

(declare-fun e!3937613 () Bool)

(declare-fun e!3937616 () Bool)

(assert (=> b!6498006 (= e!3937613 e!3937616)))

(declare-fun res!2668642 () Bool)

(assert (=> b!6498006 (= res!2668642 (matchRSpec!3476 (regOne!33263 lt!2391008) s!2326))))

(assert (=> b!6498006 (=> res!2668642 e!3937616)))

(declare-fun call!562907 () Bool)

(assert (=> b!6498007 (= e!3937612 call!562907)))

(declare-fun c!1191241 () Bool)

(declare-fun bm!562902 () Bool)

(assert (=> bm!562902 (= call!562907 (Exists!3445 (ite c!1191241 lambda!360032 lambda!360033)))))

(declare-fun b!6498008 () Bool)

(declare-fun c!1191240 () Bool)

(assert (=> b!6498008 (= c!1191240 ((_ is Union!16375) lt!2391008))))

(assert (=> b!6498008 (= e!3937614 e!3937613)))

(declare-fun b!6498009 () Bool)

(assert (=> b!6498009 (= e!3937616 (matchRSpec!3476 (regTwo!33263 lt!2391008) s!2326))))

(declare-fun bm!562903 () Bool)

(assert (=> bm!562903 (= call!562908 (isEmpty!37501 s!2326))))

(assert (=> b!6498010 (= e!3937611 call!562907)))

(declare-fun b!6498011 () Bool)

(assert (=> b!6498011 (= e!3937617 e!3937615)))

(declare-fun res!2668643 () Bool)

(assert (=> b!6498011 (= res!2668643 (not ((_ is EmptyLang!16375) lt!2391008)))))

(assert (=> b!6498011 (=> (not res!2668643) (not e!3937615))))

(declare-fun b!6498012 () Bool)

(assert (=> b!6498012 (= e!3937613 e!3937611)))

(assert (=> b!6498012 (= c!1191241 ((_ is Star!16375) lt!2391008))))

(assert (= (and d!2038949 c!1191242) b!6498002))

(assert (= (and d!2038949 (not c!1191242)) b!6498011))

(assert (= (and b!6498011 res!2668643) b!6498005))

(assert (= (and b!6498005 c!1191239) b!6498003))

(assert (= (and b!6498005 (not c!1191239)) b!6498008))

(assert (= (and b!6498008 c!1191240) b!6498006))

(assert (= (and b!6498008 (not c!1191240)) b!6498012))

(assert (= (and b!6498006 (not res!2668642)) b!6498009))

(assert (= (and b!6498012 c!1191241) b!6498004))

(assert (= (and b!6498012 (not c!1191241)) b!6498010))

(assert (= (and b!6498004 (not res!2668641)) b!6498007))

(assert (= (or b!6498007 b!6498010) bm!562902))

(assert (= (or b!6498002 b!6498004) bm!562903))

(declare-fun m!7286240 () Bool)

(assert (=> b!6498006 m!7286240))

(declare-fun m!7286242 () Bool)

(assert (=> bm!562902 m!7286242))

(declare-fun m!7286244 () Bool)

(assert (=> b!6498009 m!7286244))

(assert (=> bm!562903 m!7286224))

(assert (=> b!6497362 d!2038949))

(declare-fun d!2038951 () Bool)

(assert (=> d!2038951 (= (matchR!8558 lt!2391008 s!2326) (matchRSpec!3476 lt!2391008 s!2326))))

(declare-fun lt!2391099 () Unit!158835)

(declare-fun choose!48231 (Regex!16375 List!65426) Unit!158835)

(assert (=> d!2038951 (= lt!2391099 (choose!48231 lt!2391008 s!2326))))

(assert (=> d!2038951 (validRegex!8111 lt!2391008)))

(assert (=> d!2038951 (= (mainMatchTheorem!3476 lt!2391008 s!2326) lt!2391099)))

(declare-fun bs!1650485 () Bool)

(assert (= bs!1650485 d!2038951))

(assert (=> bs!1650485 m!7285816))

(assert (=> bs!1650485 m!7285818))

(declare-fun m!7286246 () Bool)

(assert (=> bs!1650485 m!7286246))

(assert (=> bs!1650485 m!7286226))

(assert (=> b!6497362 d!2038951))

(declare-fun bs!1650486 () Bool)

(declare-fun b!6498018 () Bool)

(assert (= bs!1650486 (and b!6498018 b!6497365)))

(declare-fun lambda!360034 () Int)

(assert (=> bs!1650486 (not (= lambda!360034 lambda!359988))))

(assert (=> bs!1650486 (not (= lambda!360034 lambda!359989))))

(declare-fun bs!1650487 () Bool)

(assert (= bs!1650487 (and b!6498018 b!6498007)))

(assert (=> bs!1650487 (= (and (= (reg!16704 r!7292) (reg!16704 lt!2391008)) (= r!7292 lt!2391008)) (= lambda!360034 lambda!360032))))

(declare-fun bs!1650488 () Bool)

(assert (= bs!1650488 (and b!6498018 b!6498010)))

(assert (=> bs!1650488 (not (= lambda!360034 lambda!360033))))

(assert (=> b!6498018 true))

(assert (=> b!6498018 true))

(declare-fun bs!1650489 () Bool)

(declare-fun b!6498021 () Bool)

(assert (= bs!1650489 (and b!6498021 b!6497365)))

(declare-fun lambda!360035 () Int)

(assert (=> bs!1650489 (not (= lambda!360035 lambda!359988))))

(declare-fun bs!1650490 () Bool)

(assert (= bs!1650490 (and b!6498021 b!6498018)))

(assert (=> bs!1650490 (not (= lambda!360035 lambda!360034))))

(assert (=> bs!1650489 (= lambda!360035 lambda!359989)))

(declare-fun bs!1650491 () Bool)

(assert (= bs!1650491 (and b!6498021 b!6498010)))

(assert (=> bs!1650491 (= (and (= (regOne!33262 r!7292) (regOne!33262 lt!2391008)) (= (regTwo!33262 r!7292) (regTwo!33262 lt!2391008))) (= lambda!360035 lambda!360033))))

(declare-fun bs!1650492 () Bool)

(assert (= bs!1650492 (and b!6498021 b!6498007)))

(assert (=> bs!1650492 (not (= lambda!360035 lambda!360032))))

(assert (=> b!6498021 true))

(assert (=> b!6498021 true))

(declare-fun b!6498013 () Bool)

(declare-fun e!3937624 () Bool)

(declare-fun call!562910 () Bool)

(assert (=> b!6498013 (= e!3937624 call!562910)))

(declare-fun d!2038953 () Bool)

(declare-fun c!1191246 () Bool)

(assert (=> d!2038953 (= c!1191246 ((_ is EmptyExpr!16375) r!7292))))

(assert (=> d!2038953 (= (matchRSpec!3476 r!7292 s!2326) e!3937624)))

(declare-fun b!6498014 () Bool)

(declare-fun e!3937621 () Bool)

(assert (=> b!6498014 (= e!3937621 (= s!2326 (Cons!65302 (c!1191063 r!7292) Nil!65302)))))

(declare-fun b!6498015 () Bool)

(declare-fun res!2668644 () Bool)

(declare-fun e!3937619 () Bool)

(assert (=> b!6498015 (=> res!2668644 e!3937619)))

(assert (=> b!6498015 (= res!2668644 call!562910)))

(declare-fun e!3937618 () Bool)

(assert (=> b!6498015 (= e!3937618 e!3937619)))

(declare-fun b!6498016 () Bool)

(declare-fun c!1191243 () Bool)

(assert (=> b!6498016 (= c!1191243 ((_ is ElementMatch!16375) r!7292))))

(declare-fun e!3937622 () Bool)

(assert (=> b!6498016 (= e!3937622 e!3937621)))

(declare-fun b!6498017 () Bool)

(declare-fun e!3937620 () Bool)

(declare-fun e!3937623 () Bool)

(assert (=> b!6498017 (= e!3937620 e!3937623)))

(declare-fun res!2668645 () Bool)

(assert (=> b!6498017 (= res!2668645 (matchRSpec!3476 (regOne!33263 r!7292) s!2326))))

(assert (=> b!6498017 (=> res!2668645 e!3937623)))

(declare-fun call!562909 () Bool)

(assert (=> b!6498018 (= e!3937619 call!562909)))

(declare-fun c!1191245 () Bool)

(declare-fun bm!562904 () Bool)

(assert (=> bm!562904 (= call!562909 (Exists!3445 (ite c!1191245 lambda!360034 lambda!360035)))))

(declare-fun b!6498019 () Bool)

(declare-fun c!1191244 () Bool)

(assert (=> b!6498019 (= c!1191244 ((_ is Union!16375) r!7292))))

(assert (=> b!6498019 (= e!3937621 e!3937620)))

(declare-fun b!6498020 () Bool)

(assert (=> b!6498020 (= e!3937623 (matchRSpec!3476 (regTwo!33263 r!7292) s!2326))))

(declare-fun bm!562905 () Bool)

(assert (=> bm!562905 (= call!562910 (isEmpty!37501 s!2326))))

(assert (=> b!6498021 (= e!3937618 call!562909)))

(declare-fun b!6498022 () Bool)

(assert (=> b!6498022 (= e!3937624 e!3937622)))

(declare-fun res!2668646 () Bool)

(assert (=> b!6498022 (= res!2668646 (not ((_ is EmptyLang!16375) r!7292)))))

(assert (=> b!6498022 (=> (not res!2668646) (not e!3937622))))

(declare-fun b!6498023 () Bool)

(assert (=> b!6498023 (= e!3937620 e!3937618)))

(assert (=> b!6498023 (= c!1191245 ((_ is Star!16375) r!7292))))

(assert (= (and d!2038953 c!1191246) b!6498013))

(assert (= (and d!2038953 (not c!1191246)) b!6498022))

(assert (= (and b!6498022 res!2668646) b!6498016))

(assert (= (and b!6498016 c!1191243) b!6498014))

(assert (= (and b!6498016 (not c!1191243)) b!6498019))

(assert (= (and b!6498019 c!1191244) b!6498017))

(assert (= (and b!6498019 (not c!1191244)) b!6498023))

(assert (= (and b!6498017 (not res!2668645)) b!6498020))

(assert (= (and b!6498023 c!1191245) b!6498015))

(assert (= (and b!6498023 (not c!1191245)) b!6498021))

(assert (= (and b!6498015 (not res!2668644)) b!6498018))

(assert (= (or b!6498018 b!6498021) bm!562904))

(assert (= (or b!6498013 b!6498015) bm!562905))

(declare-fun m!7286248 () Bool)

(assert (=> b!6498017 m!7286248))

(declare-fun m!7286250 () Bool)

(assert (=> bm!562904 m!7286250))

(declare-fun m!7286252 () Bool)

(assert (=> b!6498020 m!7286252))

(assert (=> bm!562905 m!7286224))

(assert (=> b!6497367 d!2038953))

(declare-fun b!6498024 () Bool)

(declare-fun res!2668654 () Bool)

(declare-fun e!3937627 () Bool)

(assert (=> b!6498024 (=> res!2668654 e!3937627)))

(assert (=> b!6498024 (= res!2668654 (not ((_ is ElementMatch!16375) r!7292)))))

(declare-fun e!3937626 () Bool)

(assert (=> b!6498024 (= e!3937626 e!3937627)))

(declare-fun b!6498025 () Bool)

(declare-fun e!3937628 () Bool)

(assert (=> b!6498025 (= e!3937628 (not (= (head!13221 s!2326) (c!1191063 r!7292))))))

(declare-fun bm!562906 () Bool)

(declare-fun call!562911 () Bool)

(assert (=> bm!562906 (= call!562911 (isEmpty!37501 s!2326))))

(declare-fun b!6498026 () Bool)

(declare-fun res!2668648 () Bool)

(assert (=> b!6498026 (=> res!2668648 e!3937627)))

(declare-fun e!3937630 () Bool)

(assert (=> b!6498026 (= res!2668648 e!3937630)))

(declare-fun res!2668650 () Bool)

(assert (=> b!6498026 (=> (not res!2668650) (not e!3937630))))

(declare-fun lt!2391100 () Bool)

(assert (=> b!6498026 (= res!2668650 lt!2391100)))

(declare-fun b!6498027 () Bool)

(declare-fun res!2668651 () Bool)

(assert (=> b!6498027 (=> (not res!2668651) (not e!3937630))))

(assert (=> b!6498027 (= res!2668651 (not call!562911))))

(declare-fun b!6498028 () Bool)

(declare-fun e!3937631 () Bool)

(assert (=> b!6498028 (= e!3937631 (nullable!6368 r!7292))))

(declare-fun b!6498029 () Bool)

(declare-fun e!3937629 () Bool)

(assert (=> b!6498029 (= e!3937629 e!3937626)))

(declare-fun c!1191247 () Bool)

(assert (=> b!6498029 (= c!1191247 ((_ is EmptyLang!16375) r!7292))))

(declare-fun b!6498030 () Bool)

(assert (=> b!6498030 (= e!3937629 (= lt!2391100 call!562911))))

(declare-fun b!6498031 () Bool)

(declare-fun e!3937625 () Bool)

(assert (=> b!6498031 (= e!3937625 e!3937628)))

(declare-fun res!2668653 () Bool)

(assert (=> b!6498031 (=> res!2668653 e!3937628)))

(assert (=> b!6498031 (= res!2668653 call!562911)))

(declare-fun b!6498033 () Bool)

(assert (=> b!6498033 (= e!3937626 (not lt!2391100))))

(declare-fun d!2038955 () Bool)

(assert (=> d!2038955 e!3937629))

(declare-fun c!1191248 () Bool)

(assert (=> d!2038955 (= c!1191248 ((_ is EmptyExpr!16375) r!7292))))

(assert (=> d!2038955 (= lt!2391100 e!3937631)))

(declare-fun c!1191249 () Bool)

(assert (=> d!2038955 (= c!1191249 (isEmpty!37501 s!2326))))

(assert (=> d!2038955 (validRegex!8111 r!7292)))

(assert (=> d!2038955 (= (matchR!8558 r!7292 s!2326) lt!2391100)))

(declare-fun b!6498032 () Bool)

(declare-fun res!2668652 () Bool)

(assert (=> b!6498032 (=> res!2668652 e!3937628)))

(assert (=> b!6498032 (= res!2668652 (not (isEmpty!37501 (tail!12306 s!2326))))))

(declare-fun b!6498034 () Bool)

(assert (=> b!6498034 (= e!3937630 (= (head!13221 s!2326) (c!1191063 r!7292)))))

(declare-fun b!6498035 () Bool)

(assert (=> b!6498035 (= e!3937631 (matchR!8558 (derivativeStep!5069 r!7292 (head!13221 s!2326)) (tail!12306 s!2326)))))

(declare-fun b!6498036 () Bool)

(assert (=> b!6498036 (= e!3937627 e!3937625)))

(declare-fun res!2668647 () Bool)

(assert (=> b!6498036 (=> (not res!2668647) (not e!3937625))))

(assert (=> b!6498036 (= res!2668647 (not lt!2391100))))

(declare-fun b!6498037 () Bool)

(declare-fun res!2668649 () Bool)

(assert (=> b!6498037 (=> (not res!2668649) (not e!3937630))))

(assert (=> b!6498037 (= res!2668649 (isEmpty!37501 (tail!12306 s!2326)))))

(assert (= (and d!2038955 c!1191249) b!6498028))

(assert (= (and d!2038955 (not c!1191249)) b!6498035))

(assert (= (and d!2038955 c!1191248) b!6498030))

(assert (= (and d!2038955 (not c!1191248)) b!6498029))

(assert (= (and b!6498029 c!1191247) b!6498033))

(assert (= (and b!6498029 (not c!1191247)) b!6498024))

(assert (= (and b!6498024 (not res!2668654)) b!6498026))

(assert (= (and b!6498026 res!2668650) b!6498027))

(assert (= (and b!6498027 res!2668651) b!6498037))

(assert (= (and b!6498037 res!2668649) b!6498034))

(assert (= (and b!6498026 (not res!2668648)) b!6498036))

(assert (= (and b!6498036 res!2668647) b!6498031))

(assert (= (and b!6498031 (not res!2668653)) b!6498032))

(assert (= (and b!6498032 (not res!2668652)) b!6498025))

(assert (= (or b!6498030 b!6498027 b!6498031) bm!562906))

(assert (=> d!2038955 m!7286224))

(assert (=> d!2038955 m!7285742))

(assert (=> b!6498035 m!7286228))

(assert (=> b!6498035 m!7286228))

(declare-fun m!7286254 () Bool)

(assert (=> b!6498035 m!7286254))

(assert (=> b!6498035 m!7286232))

(assert (=> b!6498035 m!7286254))

(assert (=> b!6498035 m!7286232))

(declare-fun m!7286256 () Bool)

(assert (=> b!6498035 m!7286256))

(assert (=> b!6498025 m!7286228))

(assert (=> bm!562906 m!7286224))

(assert (=> b!6498037 m!7286232))

(assert (=> b!6498037 m!7286232))

(assert (=> b!6498037 m!7286236))

(assert (=> b!6498034 m!7286228))

(assert (=> b!6498032 m!7286232))

(assert (=> b!6498032 m!7286232))

(assert (=> b!6498032 m!7286236))

(declare-fun m!7286258 () Bool)

(assert (=> b!6498028 m!7286258))

(assert (=> b!6497367 d!2038955))

(declare-fun d!2038957 () Bool)

(assert (=> d!2038957 (= (matchR!8558 r!7292 s!2326) (matchRSpec!3476 r!7292 s!2326))))

(declare-fun lt!2391101 () Unit!158835)

(assert (=> d!2038957 (= lt!2391101 (choose!48231 r!7292 s!2326))))

(assert (=> d!2038957 (validRegex!8111 r!7292)))

(assert (=> d!2038957 (= (mainMatchTheorem!3476 r!7292 s!2326) lt!2391101)))

(declare-fun bs!1650493 () Bool)

(assert (= bs!1650493 d!2038957))

(assert (=> bs!1650493 m!7285774))

(assert (=> bs!1650493 m!7285772))

(declare-fun m!7286260 () Bool)

(assert (=> bs!1650493 m!7286260))

(assert (=> bs!1650493 m!7285742))

(assert (=> b!6497367 d!2038957))

(declare-fun bs!1650494 () Bool)

(declare-fun d!2038959 () Bool)

(assert (= bs!1650494 (and d!2038959 d!2038941)))

(declare-fun lambda!360038 () Int)

(assert (=> bs!1650494 (= lambda!360038 lambda!360027)))

(assert (=> d!2038959 (= (inv!84184 setElem!44277) (forall!15556 (exprs!6259 setElem!44277) lambda!360038))))

(declare-fun bs!1650495 () Bool)

(assert (= bs!1650495 d!2038959))

(declare-fun m!7286262 () Bool)

(assert (=> bs!1650495 m!7286262))

(assert (=> setNonEmpty!44277 d!2038959))

(declare-fun d!2038961 () Bool)

(declare-fun e!3937634 () Bool)

(assert (=> d!2038961 (= (matchZipper!2387 ((_ map or) lt!2391025 lt!2391017) (t!379058 s!2326)) e!3937634)))

(declare-fun res!2668657 () Bool)

(assert (=> d!2038961 (=> res!2668657 e!3937634)))

(assert (=> d!2038961 (= res!2668657 (matchZipper!2387 lt!2391025 (t!379058 s!2326)))))

(declare-fun lt!2391104 () Unit!158835)

(declare-fun choose!48232 ((InoxSet Context!11518) (InoxSet Context!11518) List!65426) Unit!158835)

(assert (=> d!2038961 (= lt!2391104 (choose!48232 lt!2391025 lt!2391017 (t!379058 s!2326)))))

(assert (=> d!2038961 (= (lemmaZipperConcatMatchesSameAsBothZippers!1206 lt!2391025 lt!2391017 (t!379058 s!2326)) lt!2391104)))

(declare-fun b!6498040 () Bool)

(assert (=> b!6498040 (= e!3937634 (matchZipper!2387 lt!2391017 (t!379058 s!2326)))))

(assert (= (and d!2038961 (not res!2668657)) b!6498040))

(assert (=> d!2038961 m!7285824))

(assert (=> d!2038961 m!7285758))

(declare-fun m!7286264 () Bool)

(assert (=> d!2038961 m!7286264))

(assert (=> b!6498040 m!7285778))

(assert (=> b!6497387 d!2038961))

(assert (=> b!6497387 d!2038945))

(declare-fun d!2038963 () Bool)

(declare-fun c!1191250 () Bool)

(assert (=> d!2038963 (= c!1191250 (isEmpty!37501 (t!379058 s!2326)))))

(declare-fun e!3937635 () Bool)

(assert (=> d!2038963 (= (matchZipper!2387 ((_ map or) lt!2391025 lt!2391017) (t!379058 s!2326)) e!3937635)))

(declare-fun b!6498041 () Bool)

(assert (=> b!6498041 (= e!3937635 (nullableZipper!2130 ((_ map or) lt!2391025 lt!2391017)))))

(declare-fun b!6498042 () Bool)

(assert (=> b!6498042 (= e!3937635 (matchZipper!2387 (derivationStepZipper!2341 ((_ map or) lt!2391025 lt!2391017) (head!13221 (t!379058 s!2326))) (tail!12306 (t!379058 s!2326))))))

(assert (= (and d!2038963 c!1191250) b!6498041))

(assert (= (and d!2038963 (not c!1191250)) b!6498042))

(assert (=> d!2038963 m!7286176))

(declare-fun m!7286266 () Bool)

(assert (=> b!6498041 m!7286266))

(assert (=> b!6498042 m!7286180))

(assert (=> b!6498042 m!7286180))

(declare-fun m!7286268 () Bool)

(assert (=> b!6498042 m!7286268))

(assert (=> b!6498042 m!7286184))

(assert (=> b!6498042 m!7286268))

(assert (=> b!6498042 m!7286184))

(declare-fun m!7286270 () Bool)

(assert (=> b!6498042 m!7286270))

(assert (=> b!6497387 d!2038963))

(declare-fun b!6498061 () Bool)

(declare-fun e!3937649 () Bool)

(declare-fun lt!2391111 () Option!16266)

(assert (=> b!6498061 (= e!3937649 (not (isDefined!12969 lt!2391111)))))

(declare-fun b!6498062 () Bool)

(declare-fun e!3937648 () Option!16266)

(assert (=> b!6498062 (= e!3937648 None!16265)))

(declare-fun b!6498063 () Bool)

(declare-fun e!3937646 () Bool)

(declare-fun ++!14457 (List!65426 List!65426) List!65426)

(declare-fun get!22646 (Option!16266) tuple2!66708)

(assert (=> b!6498063 (= e!3937646 (= (++!14457 (_1!36657 (get!22646 lt!2391111)) (_2!36657 (get!22646 lt!2391111))) s!2326))))

(declare-fun b!6498064 () Bool)

(declare-fun e!3937647 () Option!16266)

(assert (=> b!6498064 (= e!3937647 (Some!16265 (tuple2!66709 Nil!65302 s!2326)))))

(declare-fun b!6498065 () Bool)

(declare-fun e!3937650 () Bool)

(assert (=> b!6498065 (= e!3937650 (matchR!8558 (regTwo!33262 r!7292) s!2326))))

(declare-fun d!2038965 () Bool)

(assert (=> d!2038965 e!3937649))

(declare-fun res!2668670 () Bool)

(assert (=> d!2038965 (=> res!2668670 e!3937649)))

(assert (=> d!2038965 (= res!2668670 e!3937646)))

(declare-fun res!2668668 () Bool)

(assert (=> d!2038965 (=> (not res!2668668) (not e!3937646))))

(assert (=> d!2038965 (= res!2668668 (isDefined!12969 lt!2391111))))

(assert (=> d!2038965 (= lt!2391111 e!3937647)))

(declare-fun c!1191255 () Bool)

(assert (=> d!2038965 (= c!1191255 e!3937650)))

(declare-fun res!2668672 () Bool)

(assert (=> d!2038965 (=> (not res!2668672) (not e!3937650))))

(assert (=> d!2038965 (= res!2668672 (matchR!8558 (regOne!33262 r!7292) Nil!65302))))

(assert (=> d!2038965 (validRegex!8111 (regOne!33262 r!7292))))

(assert (=> d!2038965 (= (findConcatSeparation!2680 (regOne!33262 r!7292) (regTwo!33262 r!7292) Nil!65302 s!2326 s!2326) lt!2391111)))

(declare-fun b!6498066 () Bool)

(declare-fun lt!2391113 () Unit!158835)

(declare-fun lt!2391112 () Unit!158835)

(assert (=> b!6498066 (= lt!2391113 lt!2391112)))

(assert (=> b!6498066 (= (++!14457 (++!14457 Nil!65302 (Cons!65302 (h!71750 s!2326) Nil!65302)) (t!379058 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2528 (List!65426 C!33020 List!65426 List!65426) Unit!158835)

(assert (=> b!6498066 (= lt!2391112 (lemmaMoveElementToOtherListKeepsConcatEq!2528 Nil!65302 (h!71750 s!2326) (t!379058 s!2326) s!2326))))

(assert (=> b!6498066 (= e!3937648 (findConcatSeparation!2680 (regOne!33262 r!7292) (regTwo!33262 r!7292) (++!14457 Nil!65302 (Cons!65302 (h!71750 s!2326) Nil!65302)) (t!379058 s!2326) s!2326))))

(declare-fun b!6498067 () Bool)

(declare-fun res!2668669 () Bool)

(assert (=> b!6498067 (=> (not res!2668669) (not e!3937646))))

(assert (=> b!6498067 (= res!2668669 (matchR!8558 (regTwo!33262 r!7292) (_2!36657 (get!22646 lt!2391111))))))

(declare-fun b!6498068 () Bool)

(assert (=> b!6498068 (= e!3937647 e!3937648)))

(declare-fun c!1191256 () Bool)

(assert (=> b!6498068 (= c!1191256 ((_ is Nil!65302) s!2326))))

(declare-fun b!6498069 () Bool)

(declare-fun res!2668671 () Bool)

(assert (=> b!6498069 (=> (not res!2668671) (not e!3937646))))

(assert (=> b!6498069 (= res!2668671 (matchR!8558 (regOne!33262 r!7292) (_1!36657 (get!22646 lt!2391111))))))

(assert (= (and d!2038965 res!2668672) b!6498065))

(assert (= (and d!2038965 c!1191255) b!6498064))

(assert (= (and d!2038965 (not c!1191255)) b!6498068))

(assert (= (and b!6498068 c!1191256) b!6498062))

(assert (= (and b!6498068 (not c!1191256)) b!6498066))

(assert (= (and d!2038965 res!2668668) b!6498069))

(assert (= (and b!6498069 res!2668671) b!6498067))

(assert (= (and b!6498067 res!2668669) b!6498063))

(assert (= (and d!2038965 (not res!2668670)) b!6498061))

(declare-fun m!7286272 () Bool)

(assert (=> b!6498069 m!7286272))

(declare-fun m!7286274 () Bool)

(assert (=> b!6498069 m!7286274))

(assert (=> b!6498067 m!7286272))

(declare-fun m!7286276 () Bool)

(assert (=> b!6498067 m!7286276))

(assert (=> b!6498063 m!7286272))

(declare-fun m!7286278 () Bool)

(assert (=> b!6498063 m!7286278))

(declare-fun m!7286280 () Bool)

(assert (=> b!6498066 m!7286280))

(assert (=> b!6498066 m!7286280))

(declare-fun m!7286282 () Bool)

(assert (=> b!6498066 m!7286282))

(declare-fun m!7286284 () Bool)

(assert (=> b!6498066 m!7286284))

(assert (=> b!6498066 m!7286280))

(declare-fun m!7286286 () Bool)

(assert (=> b!6498066 m!7286286))

(declare-fun m!7286288 () Bool)

(assert (=> b!6498061 m!7286288))

(assert (=> d!2038965 m!7286288))

(declare-fun m!7286290 () Bool)

(assert (=> d!2038965 m!7286290))

(declare-fun m!7286292 () Bool)

(assert (=> d!2038965 m!7286292))

(declare-fun m!7286294 () Bool)

(assert (=> b!6498065 m!7286294))

(assert (=> b!6497365 d!2038965))

(declare-fun d!2038967 () Bool)

(declare-fun choose!48233 (Int) Bool)

(assert (=> d!2038967 (= (Exists!3445 lambda!359988) (choose!48233 lambda!359988))))

(declare-fun bs!1650496 () Bool)

(assert (= bs!1650496 d!2038967))

(declare-fun m!7286296 () Bool)

(assert (=> bs!1650496 m!7286296))

(assert (=> b!6497365 d!2038967))

(declare-fun d!2038969 () Bool)

(assert (=> d!2038969 (= (Exists!3445 lambda!359989) (choose!48233 lambda!359989))))

(declare-fun bs!1650497 () Bool)

(assert (= bs!1650497 d!2038969))

(declare-fun m!7286298 () Bool)

(assert (=> bs!1650497 m!7286298))

(assert (=> b!6497365 d!2038969))

(declare-fun bs!1650498 () Bool)

(declare-fun d!2038971 () Bool)

(assert (= bs!1650498 (and d!2038971 b!6497365)))

(declare-fun lambda!360041 () Int)

(assert (=> bs!1650498 (= lambda!360041 lambda!359988)))

(declare-fun bs!1650499 () Bool)

(assert (= bs!1650499 (and d!2038971 b!6498018)))

(assert (=> bs!1650499 (not (= lambda!360041 lambda!360034))))

(declare-fun bs!1650500 () Bool)

(assert (= bs!1650500 (and d!2038971 b!6498010)))

(assert (=> bs!1650500 (not (= lambda!360041 lambda!360033))))

(declare-fun bs!1650501 () Bool)

(assert (= bs!1650501 (and d!2038971 b!6498007)))

(assert (=> bs!1650501 (not (= lambda!360041 lambda!360032))))

(declare-fun bs!1650502 () Bool)

(assert (= bs!1650502 (and d!2038971 b!6498021)))

(assert (=> bs!1650502 (not (= lambda!360041 lambda!360035))))

(assert (=> bs!1650498 (not (= lambda!360041 lambda!359989))))

(assert (=> d!2038971 true))

(assert (=> d!2038971 true))

(assert (=> d!2038971 true))

(assert (=> d!2038971 (= (isDefined!12969 (findConcatSeparation!2680 (regOne!33262 r!7292) (regTwo!33262 r!7292) Nil!65302 s!2326 s!2326)) (Exists!3445 lambda!360041))))

(declare-fun lt!2391116 () Unit!158835)

(declare-fun choose!48234 (Regex!16375 Regex!16375 List!65426) Unit!158835)

(assert (=> d!2038971 (= lt!2391116 (choose!48234 (regOne!33262 r!7292) (regTwo!33262 r!7292) s!2326))))

(assert (=> d!2038971 (validRegex!8111 (regOne!33262 r!7292))))

(assert (=> d!2038971 (= (lemmaFindConcatSeparationEquivalentToExists!2444 (regOne!33262 r!7292) (regTwo!33262 r!7292) s!2326) lt!2391116)))

(declare-fun bs!1650503 () Bool)

(assert (= bs!1650503 d!2038971))

(declare-fun m!7286300 () Bool)

(assert (=> bs!1650503 m!7286300))

(assert (=> bs!1650503 m!7285750))

(assert (=> bs!1650503 m!7285752))

(declare-fun m!7286302 () Bool)

(assert (=> bs!1650503 m!7286302))

(assert (=> bs!1650503 m!7285750))

(assert (=> bs!1650503 m!7286292))

(assert (=> b!6497365 d!2038971))

(declare-fun bs!1650504 () Bool)

(declare-fun d!2038973 () Bool)

(assert (= bs!1650504 (and d!2038973 b!6497365)))

(declare-fun lambda!360046 () Int)

(assert (=> bs!1650504 (= lambda!360046 lambda!359988)))

(declare-fun bs!1650505 () Bool)

(assert (= bs!1650505 (and d!2038973 b!6498018)))

(assert (=> bs!1650505 (not (= lambda!360046 lambda!360034))))

(declare-fun bs!1650506 () Bool)

(assert (= bs!1650506 (and d!2038973 d!2038971)))

(assert (=> bs!1650506 (= lambda!360046 lambda!360041)))

(declare-fun bs!1650507 () Bool)

(assert (= bs!1650507 (and d!2038973 b!6498010)))

(assert (=> bs!1650507 (not (= lambda!360046 lambda!360033))))

(declare-fun bs!1650508 () Bool)

(assert (= bs!1650508 (and d!2038973 b!6498007)))

(assert (=> bs!1650508 (not (= lambda!360046 lambda!360032))))

(declare-fun bs!1650509 () Bool)

(assert (= bs!1650509 (and d!2038973 b!6498021)))

(assert (=> bs!1650509 (not (= lambda!360046 lambda!360035))))

(assert (=> bs!1650504 (not (= lambda!360046 lambda!359989))))

(assert (=> d!2038973 true))

(assert (=> d!2038973 true))

(assert (=> d!2038973 true))

(declare-fun lambda!360047 () Int)

(assert (=> bs!1650504 (not (= lambda!360047 lambda!359988))))

(assert (=> bs!1650505 (not (= lambda!360047 lambda!360034))))

(declare-fun bs!1650510 () Bool)

(assert (= bs!1650510 d!2038973))

(assert (=> bs!1650510 (not (= lambda!360047 lambda!360046))))

(assert (=> bs!1650506 (not (= lambda!360047 lambda!360041))))

(assert (=> bs!1650507 (= (and (= (regOne!33262 r!7292) (regOne!33262 lt!2391008)) (= (regTwo!33262 r!7292) (regTwo!33262 lt!2391008))) (= lambda!360047 lambda!360033))))

(assert (=> bs!1650508 (not (= lambda!360047 lambda!360032))))

(assert (=> bs!1650509 (= lambda!360047 lambda!360035)))

(assert (=> bs!1650504 (= lambda!360047 lambda!359989)))

(assert (=> d!2038973 true))

(assert (=> d!2038973 true))

(assert (=> d!2038973 true))

(assert (=> d!2038973 (= (Exists!3445 lambda!360046) (Exists!3445 lambda!360047))))

(declare-fun lt!2391119 () Unit!158835)

(declare-fun choose!48235 (Regex!16375 Regex!16375 List!65426) Unit!158835)

(assert (=> d!2038973 (= lt!2391119 (choose!48235 (regOne!33262 r!7292) (regTwo!33262 r!7292) s!2326))))

(assert (=> d!2038973 (validRegex!8111 (regOne!33262 r!7292))))

(assert (=> d!2038973 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1982 (regOne!33262 r!7292) (regTwo!33262 r!7292) s!2326) lt!2391119)))

(declare-fun m!7286304 () Bool)

(assert (=> bs!1650510 m!7286304))

(declare-fun m!7286306 () Bool)

(assert (=> bs!1650510 m!7286306))

(declare-fun m!7286308 () Bool)

(assert (=> bs!1650510 m!7286308))

(assert (=> bs!1650510 m!7286292))

(assert (=> b!6497365 d!2038973))

(declare-fun d!2038975 () Bool)

(declare-fun isEmpty!37502 (Option!16266) Bool)

(assert (=> d!2038975 (= (isDefined!12969 (findConcatSeparation!2680 (regOne!33262 r!7292) (regTwo!33262 r!7292) Nil!65302 s!2326 s!2326)) (not (isEmpty!37502 (findConcatSeparation!2680 (regOne!33262 r!7292) (regTwo!33262 r!7292) Nil!65302 s!2326 s!2326))))))

(declare-fun bs!1650511 () Bool)

(assert (= bs!1650511 d!2038975))

(assert (=> bs!1650511 m!7285750))

(declare-fun m!7286310 () Bool)

(assert (=> bs!1650511 m!7286310))

(assert (=> b!6497365 d!2038975))

(declare-fun d!2038977 () Bool)

(declare-fun c!1191257 () Bool)

(assert (=> d!2038977 (= c!1191257 (isEmpty!37501 (t!379058 s!2326)))))

(declare-fun e!3937657 () Bool)

(assert (=> d!2038977 (= (matchZipper!2387 lt!2391000 (t!379058 s!2326)) e!3937657)))

(declare-fun b!6498082 () Bool)

(assert (=> b!6498082 (= e!3937657 (nullableZipper!2130 lt!2391000))))

(declare-fun b!6498083 () Bool)

(assert (=> b!6498083 (= e!3937657 (matchZipper!2387 (derivationStepZipper!2341 lt!2391000 (head!13221 (t!379058 s!2326))) (tail!12306 (t!379058 s!2326))))))

(assert (= (and d!2038977 c!1191257) b!6498082))

(assert (= (and d!2038977 (not c!1191257)) b!6498083))

(assert (=> d!2038977 m!7286176))

(declare-fun m!7286312 () Bool)

(assert (=> b!6498082 m!7286312))

(assert (=> b!6498083 m!7286180))

(assert (=> b!6498083 m!7286180))

(declare-fun m!7286314 () Bool)

(assert (=> b!6498083 m!7286314))

(assert (=> b!6498083 m!7286184))

(assert (=> b!6498083 m!7286314))

(assert (=> b!6498083 m!7286184))

(declare-fun m!7286316 () Bool)

(assert (=> b!6498083 m!7286316))

(assert (=> b!6497386 d!2038977))

(declare-fun d!2038979 () Bool)

(declare-fun c!1191258 () Bool)

(assert (=> d!2038979 (= c!1191258 (isEmpty!37501 s!2326))))

(declare-fun e!3937658 () Bool)

(assert (=> d!2038979 (= (matchZipper!2387 lt!2391014 s!2326) e!3937658)))

(declare-fun b!6498084 () Bool)

(assert (=> b!6498084 (= e!3937658 (nullableZipper!2130 lt!2391014))))

(declare-fun b!6498085 () Bool)

(assert (=> b!6498085 (= e!3937658 (matchZipper!2387 (derivationStepZipper!2341 lt!2391014 (head!13221 s!2326)) (tail!12306 s!2326)))))

(assert (= (and d!2038979 c!1191258) b!6498084))

(assert (= (and d!2038979 (not c!1191258)) b!6498085))

(assert (=> d!2038979 m!7286224))

(declare-fun m!7286318 () Bool)

(assert (=> b!6498084 m!7286318))

(assert (=> b!6498085 m!7286228))

(assert (=> b!6498085 m!7286228))

(declare-fun m!7286320 () Bool)

(assert (=> b!6498085 m!7286320))

(assert (=> b!6498085 m!7286232))

(assert (=> b!6498085 m!7286320))

(assert (=> b!6498085 m!7286232))

(declare-fun m!7286322 () Bool)

(assert (=> b!6498085 m!7286322))

(assert (=> b!6497386 d!2038979))

(declare-fun d!2038981 () Bool)

(declare-fun lt!2391120 () Regex!16375)

(assert (=> d!2038981 (validRegex!8111 lt!2391120)))

(assert (=> d!2038981 (= lt!2391120 (generalisedUnion!2219 (unfocusZipperList!1796 zl!343)))))

(assert (=> d!2038981 (= (unfocusZipper!2117 zl!343) lt!2391120)))

(declare-fun bs!1650512 () Bool)

(assert (= bs!1650512 d!2038981))

(declare-fun m!7286324 () Bool)

(assert (=> bs!1650512 m!7286324))

(assert (=> bs!1650512 m!7285844))

(assert (=> bs!1650512 m!7285844))

(assert (=> bs!1650512 m!7285846))

(assert (=> b!6497390 d!2038981))

(declare-fun d!2038983 () Bool)

(declare-fun nullableFct!2304 (Regex!16375) Bool)

(assert (=> d!2038983 (= (nullable!6368 (regOne!33262 (regOne!33262 r!7292))) (nullableFct!2304 (regOne!33262 (regOne!33262 r!7292))))))

(declare-fun bs!1650513 () Bool)

(assert (= bs!1650513 d!2038983))

(declare-fun m!7286326 () Bool)

(assert (=> bs!1650513 m!7286326))

(assert (=> b!6497369 d!2038983))

(declare-fun d!2038985 () Bool)

(assert (=> d!2038985 (= (flatMap!1880 lt!2391014 lambda!359990) (choose!48229 lt!2391014 lambda!359990))))

(declare-fun bs!1650514 () Bool)

(assert (= bs!1650514 d!2038985))

(declare-fun m!7286328 () Bool)

(assert (=> bs!1650514 m!7286328))

(assert (=> b!6497368 d!2038985))

(declare-fun bm!562907 () Bool)

(declare-fun call!562912 () (InoxSet Context!11518))

(assert (=> bm!562907 (= call!562912 (derivationStepZipperDown!1623 (h!71748 (exprs!6259 lt!2391016)) (Context!11519 (t!379056 (exprs!6259 lt!2391016))) (h!71750 s!2326)))))

(declare-fun b!6498086 () Bool)

(declare-fun e!3937660 () Bool)

(assert (=> b!6498086 (= e!3937660 (nullable!6368 (h!71748 (exprs!6259 lt!2391016))))))

(declare-fun b!6498087 () Bool)

(declare-fun e!3937659 () (InoxSet Context!11518))

(declare-fun e!3937661 () (InoxSet Context!11518))

(assert (=> b!6498087 (= e!3937659 e!3937661)))

(declare-fun c!1191260 () Bool)

(assert (=> b!6498087 (= c!1191260 ((_ is Cons!65300) (exprs!6259 lt!2391016)))))

(declare-fun d!2038987 () Bool)

(declare-fun c!1191259 () Bool)

(assert (=> d!2038987 (= c!1191259 e!3937660)))

(declare-fun res!2668685 () Bool)

(assert (=> d!2038987 (=> (not res!2668685) (not e!3937660))))

(assert (=> d!2038987 (= res!2668685 ((_ is Cons!65300) (exprs!6259 lt!2391016)))))

(assert (=> d!2038987 (= (derivationStepZipperUp!1549 lt!2391016 (h!71750 s!2326)) e!3937659)))

(declare-fun b!6498088 () Bool)

(assert (=> b!6498088 (= e!3937661 call!562912)))

(declare-fun b!6498089 () Bool)

(assert (=> b!6498089 (= e!3937659 ((_ map or) call!562912 (derivationStepZipperUp!1549 (Context!11519 (t!379056 (exprs!6259 lt!2391016))) (h!71750 s!2326))))))

(declare-fun b!6498090 () Bool)

(assert (=> b!6498090 (= e!3937661 ((as const (Array Context!11518 Bool)) false))))

(assert (= (and d!2038987 res!2668685) b!6498086))

(assert (= (and d!2038987 c!1191259) b!6498089))

(assert (= (and d!2038987 (not c!1191259)) b!6498087))

(assert (= (and b!6498087 c!1191260) b!6498088))

(assert (= (and b!6498087 (not c!1191260)) b!6498090))

(assert (= (or b!6498089 b!6498088) bm!562907))

(declare-fun m!7286330 () Bool)

(assert (=> bm!562907 m!7286330))

(declare-fun m!7286332 () Bool)

(assert (=> b!6498086 m!7286332))

(declare-fun m!7286334 () Bool)

(assert (=> b!6498089 m!7286334))

(assert (=> b!6497368 d!2038987))

(declare-fun d!2038989 () Bool)

(assert (=> d!2038989 (= (flatMap!1880 lt!2391014 lambda!359990) (dynLambda!25939 lambda!359990 lt!2391016))))

(declare-fun lt!2391121 () Unit!158835)

(assert (=> d!2038989 (= lt!2391121 (choose!48228 lt!2391014 lt!2391016 lambda!359990))))

(assert (=> d!2038989 (= lt!2391014 (store ((as const (Array Context!11518 Bool)) false) lt!2391016 true))))

(assert (=> d!2038989 (= (lemmaFlatMapOnSingletonSet!1406 lt!2391014 lt!2391016 lambda!359990) lt!2391121)))

(declare-fun b_lambda!245981 () Bool)

(assert (=> (not b_lambda!245981) (not d!2038989)))

(declare-fun bs!1650515 () Bool)

(assert (= bs!1650515 d!2038989))

(assert (=> bs!1650515 m!7285842))

(declare-fun m!7286336 () Bool)

(assert (=> bs!1650515 m!7286336))

(declare-fun m!7286338 () Bool)

(assert (=> bs!1650515 m!7286338))

(assert (=> bs!1650515 m!7285834))

(assert (=> b!6497368 d!2038989))

(declare-fun bs!1650516 () Bool)

(declare-fun d!2038991 () Bool)

(assert (= bs!1650516 (and d!2038991 b!6497395)))

(declare-fun lambda!360050 () Int)

(assert (=> bs!1650516 (= lambda!360050 lambda!359990)))

(assert (=> d!2038991 true))

(assert (=> d!2038991 (= (derivationStepZipper!2341 lt!2391014 (h!71750 s!2326)) (flatMap!1880 lt!2391014 lambda!360050))))

(declare-fun bs!1650517 () Bool)

(assert (= bs!1650517 d!2038991))

(declare-fun m!7286340 () Bool)

(assert (=> bs!1650517 m!7286340))

(assert (=> b!6497368 d!2038991))

(declare-fun bs!1650518 () Bool)

(declare-fun d!2038993 () Bool)

(assert (= bs!1650518 (and d!2038993 d!2038941)))

(declare-fun lambda!360051 () Int)

(assert (=> bs!1650518 (= lambda!360051 lambda!360027)))

(declare-fun bs!1650519 () Bool)

(assert (= bs!1650519 (and d!2038993 d!2038959)))

(assert (=> bs!1650519 (= lambda!360051 lambda!360038)))

(assert (=> d!2038993 (= (inv!84184 (h!71749 zl!343)) (forall!15556 (exprs!6259 (h!71749 zl!343)) lambda!360051))))

(declare-fun bs!1650520 () Bool)

(assert (= bs!1650520 d!2038993))

(declare-fun m!7286342 () Bool)

(assert (=> bs!1650520 m!7286342))

(assert (=> b!6497388 d!2038993))

(declare-fun d!2038995 () Bool)

(declare-fun e!3937664 () Bool)

(assert (=> d!2038995 e!3937664))

(declare-fun res!2668688 () Bool)

(assert (=> d!2038995 (=> (not res!2668688) (not e!3937664))))

(declare-fun lt!2391124 () List!65425)

(declare-fun noDuplicate!2193 (List!65425) Bool)

(assert (=> d!2038995 (= res!2668688 (noDuplicate!2193 lt!2391124))))

(declare-fun choose!48236 ((InoxSet Context!11518)) List!65425)

(assert (=> d!2038995 (= lt!2391124 (choose!48236 z!1189))))

(assert (=> d!2038995 (= (toList!10159 z!1189) lt!2391124)))

(declare-fun b!6498095 () Bool)

(declare-fun content!12452 (List!65425) (InoxSet Context!11518))

(assert (=> b!6498095 (= e!3937664 (= (content!12452 lt!2391124) z!1189))))

(assert (= (and d!2038995 res!2668688) b!6498095))

(declare-fun m!7286344 () Bool)

(assert (=> d!2038995 m!7286344))

(declare-fun m!7286346 () Bool)

(assert (=> d!2038995 m!7286346))

(declare-fun m!7286348 () Bool)

(assert (=> b!6498095 m!7286348))

(assert (=> b!6497392 d!2038995))

(declare-fun d!2038997 () Bool)

(declare-fun c!1191263 () Bool)

(assert (=> d!2038997 (= c!1191263 (isEmpty!37501 s!2326))))

(declare-fun e!3937665 () Bool)

(assert (=> d!2038997 (= (matchZipper!2387 z!1189 s!2326) e!3937665)))

(declare-fun b!6498096 () Bool)

(assert (=> b!6498096 (= e!3937665 (nullableZipper!2130 z!1189))))

(declare-fun b!6498097 () Bool)

(assert (=> b!6498097 (= e!3937665 (matchZipper!2387 (derivationStepZipper!2341 z!1189 (head!13221 s!2326)) (tail!12306 s!2326)))))

(assert (= (and d!2038997 c!1191263) b!6498096))

(assert (= (and d!2038997 (not c!1191263)) b!6498097))

(assert (=> d!2038997 m!7286224))

(declare-fun m!7286350 () Bool)

(assert (=> b!6498096 m!7286350))

(assert (=> b!6498097 m!7286228))

(assert (=> b!6498097 m!7286228))

(declare-fun m!7286352 () Bool)

(assert (=> b!6498097 m!7286352))

(assert (=> b!6498097 m!7286232))

(assert (=> b!6498097 m!7286352))

(assert (=> b!6498097 m!7286232))

(declare-fun m!7286354 () Bool)

(assert (=> b!6498097 m!7286354))

(assert (=> b!6497375 d!2038997))

(declare-fun d!2038999 () Bool)

(assert (=> d!2038999 (= (flatMap!1880 z!1189 lambda!359990) (dynLambda!25939 lambda!359990 (h!71749 zl!343)))))

(declare-fun lt!2391125 () Unit!158835)

(assert (=> d!2038999 (= lt!2391125 (choose!48228 z!1189 (h!71749 zl!343) lambda!359990))))

(assert (=> d!2038999 (= z!1189 (store ((as const (Array Context!11518 Bool)) false) (h!71749 zl!343) true))))

(assert (=> d!2038999 (= (lemmaFlatMapOnSingletonSet!1406 z!1189 (h!71749 zl!343) lambda!359990) lt!2391125)))

(declare-fun b_lambda!245983 () Bool)

(assert (=> (not b_lambda!245983) (not d!2038999)))

(declare-fun bs!1650521 () Bool)

(assert (= bs!1650521 d!2038999))

(assert (=> bs!1650521 m!7285812))

(declare-fun m!7286356 () Bool)

(assert (=> bs!1650521 m!7286356))

(declare-fun m!7286358 () Bool)

(assert (=> bs!1650521 m!7286358))

(declare-fun m!7286360 () Bool)

(assert (=> bs!1650521 m!7286360))

(assert (=> b!6497395 d!2038999))

(declare-fun d!2039001 () Bool)

(assert (=> d!2039001 (= (nullable!6368 (h!71748 (exprs!6259 (h!71749 zl!343)))) (nullableFct!2304 (h!71748 (exprs!6259 (h!71749 zl!343)))))))

(declare-fun bs!1650522 () Bool)

(assert (= bs!1650522 d!2039001))

(declare-fun m!7286362 () Bool)

(assert (=> bs!1650522 m!7286362))

(assert (=> b!6497395 d!2039001))

(declare-fun bm!562908 () Bool)

(declare-fun call!562913 () (InoxSet Context!11518))

(assert (=> bm!562908 (= call!562913 (derivationStepZipperDown!1623 (h!71748 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343))))))) (Context!11519 (t!379056 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343)))))))) (h!71750 s!2326)))))

(declare-fun b!6498098 () Bool)

(declare-fun e!3937667 () Bool)

(assert (=> b!6498098 (= e!3937667 (nullable!6368 (h!71748 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343)))))))))))

(declare-fun b!6498099 () Bool)

(declare-fun e!3937666 () (InoxSet Context!11518))

(declare-fun e!3937668 () (InoxSet Context!11518))

(assert (=> b!6498099 (= e!3937666 e!3937668)))

(declare-fun c!1191265 () Bool)

(assert (=> b!6498099 (= c!1191265 ((_ is Cons!65300) (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343))))))))))

(declare-fun d!2039003 () Bool)

(declare-fun c!1191264 () Bool)

(assert (=> d!2039003 (= c!1191264 e!3937667)))

(declare-fun res!2668689 () Bool)

(assert (=> d!2039003 (=> (not res!2668689) (not e!3937667))))

(assert (=> d!2039003 (= res!2668689 ((_ is Cons!65300) (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343))))))))))

(assert (=> d!2039003 (= (derivationStepZipperUp!1549 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343))))) (h!71750 s!2326)) e!3937666)))

(declare-fun b!6498100 () Bool)

(assert (=> b!6498100 (= e!3937668 call!562913)))

(declare-fun b!6498101 () Bool)

(assert (=> b!6498101 (= e!3937666 ((_ map or) call!562913 (derivationStepZipperUp!1549 (Context!11519 (t!379056 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343)))))))) (h!71750 s!2326))))))

(declare-fun b!6498102 () Bool)

(assert (=> b!6498102 (= e!3937668 ((as const (Array Context!11518 Bool)) false))))

(assert (= (and d!2039003 res!2668689) b!6498098))

(assert (= (and d!2039003 c!1191264) b!6498101))

(assert (= (and d!2039003 (not c!1191264)) b!6498099))

(assert (= (and b!6498099 c!1191265) b!6498100))

(assert (= (and b!6498099 (not c!1191265)) b!6498102))

(assert (= (or b!6498101 b!6498100) bm!562908))

(declare-fun m!7286364 () Bool)

(assert (=> bm!562908 m!7286364))

(declare-fun m!7286366 () Bool)

(assert (=> b!6498098 m!7286366))

(declare-fun m!7286368 () Bool)

(assert (=> b!6498101 m!7286368))

(assert (=> b!6497395 d!2039003))

(declare-fun d!2039005 () Bool)

(assert (=> d!2039005 (= (flatMap!1880 z!1189 lambda!359990) (choose!48229 z!1189 lambda!359990))))

(declare-fun bs!1650523 () Bool)

(assert (= bs!1650523 d!2039005))

(declare-fun m!7286370 () Bool)

(assert (=> bs!1650523 m!7286370))

(assert (=> b!6497395 d!2039005))

(declare-fun b!6498103 () Bool)

(declare-fun e!3937669 () (InoxSet Context!11518))

(assert (=> b!6498103 (= e!3937669 ((as const (Array Context!11518 Bool)) false))))

(declare-fun c!1191268 () Bool)

(declare-fun call!562918 () (InoxSet Context!11518))

(declare-fun c!1191266 () Bool)

(declare-fun c!1191267 () Bool)

(declare-fun call!562914 () List!65424)

(declare-fun bm!562909 () Bool)

(assert (=> bm!562909 (= call!562918 (derivationStepZipperDown!1623 (ite c!1191267 (regOne!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191268 (regTwo!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191266 (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (reg!16704 (h!71748 (exprs!6259 (h!71749 zl!343))))))) (ite (or c!1191267 c!1191268) lt!2391021 (Context!11519 call!562914)) (h!71750 s!2326)))))

(declare-fun b!6498104 () Bool)

(declare-fun e!3937674 () (InoxSet Context!11518))

(declare-fun e!3937672 () (InoxSet Context!11518))

(assert (=> b!6498104 (= e!3937674 e!3937672)))

(assert (=> b!6498104 (= c!1191267 ((_ is Union!16375) (h!71748 (exprs!6259 (h!71749 zl!343)))))))

(declare-fun bm!562910 () Bool)

(declare-fun call!562915 () List!65424)

(assert (=> bm!562910 (= call!562914 call!562915)))

(declare-fun d!2039007 () Bool)

(declare-fun c!1191269 () Bool)

(assert (=> d!2039007 (= c!1191269 (and ((_ is ElementMatch!16375) (h!71748 (exprs!6259 (h!71749 zl!343)))) (= (c!1191063 (h!71748 (exprs!6259 (h!71749 zl!343)))) (h!71750 s!2326))))))

(assert (=> d!2039007 (= (derivationStepZipperDown!1623 (h!71748 (exprs!6259 (h!71749 zl!343))) lt!2391021 (h!71750 s!2326)) e!3937674)))

(declare-fun b!6498105 () Bool)

(declare-fun call!562919 () (InoxSet Context!11518))

(assert (=> b!6498105 (= e!3937672 ((_ map or) call!562918 call!562919))))

(declare-fun bm!562911 () Bool)

(assert (=> bm!562911 (= call!562915 ($colon$colon!2226 (exprs!6259 lt!2391021) (ite (or c!1191268 c!1191266) (regTwo!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (h!71748 (exprs!6259 (h!71749 zl!343))))))))

(declare-fun b!6498106 () Bool)

(declare-fun e!3937673 () Bool)

(assert (=> b!6498106 (= c!1191268 e!3937673)))

(declare-fun res!2668690 () Bool)

(assert (=> b!6498106 (=> (not res!2668690) (not e!3937673))))

(assert (=> b!6498106 (= res!2668690 ((_ is Concat!25220) (h!71748 (exprs!6259 (h!71749 zl!343)))))))

(declare-fun e!3937670 () (InoxSet Context!11518))

(assert (=> b!6498106 (= e!3937672 e!3937670)))

(declare-fun b!6498107 () Bool)

(declare-fun e!3937671 () (InoxSet Context!11518))

(assert (=> b!6498107 (= e!3937670 e!3937671)))

(assert (=> b!6498107 (= c!1191266 ((_ is Concat!25220) (h!71748 (exprs!6259 (h!71749 zl!343)))))))

(declare-fun b!6498108 () Bool)

(declare-fun call!562916 () (InoxSet Context!11518))

(assert (=> b!6498108 (= e!3937671 call!562916)))

(declare-fun b!6498109 () Bool)

(assert (=> b!6498109 (= e!3937673 (nullable!6368 (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343))))))))

(declare-fun b!6498110 () Bool)

(declare-fun call!562917 () (InoxSet Context!11518))

(assert (=> b!6498110 (= e!3937670 ((_ map or) call!562919 call!562917))))

(declare-fun bm!562912 () Bool)

(assert (=> bm!562912 (= call!562919 (derivationStepZipperDown!1623 (ite c!1191267 (regTwo!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343))))) (ite c!1191267 lt!2391021 (Context!11519 call!562915)) (h!71750 s!2326)))))

(declare-fun b!6498111 () Bool)

(assert (=> b!6498111 (= e!3937674 (store ((as const (Array Context!11518 Bool)) false) lt!2391021 true))))

(declare-fun bm!562913 () Bool)

(assert (=> bm!562913 (= call!562916 call!562917)))

(declare-fun b!6498112 () Bool)

(declare-fun c!1191270 () Bool)

(assert (=> b!6498112 (= c!1191270 ((_ is Star!16375) (h!71748 (exprs!6259 (h!71749 zl!343)))))))

(assert (=> b!6498112 (= e!3937671 e!3937669)))

(declare-fun b!6498113 () Bool)

(assert (=> b!6498113 (= e!3937669 call!562916)))

(declare-fun bm!562914 () Bool)

(assert (=> bm!562914 (= call!562917 call!562918)))

(assert (= (and d!2039007 c!1191269) b!6498111))

(assert (= (and d!2039007 (not c!1191269)) b!6498104))

(assert (= (and b!6498104 c!1191267) b!6498105))

(assert (= (and b!6498104 (not c!1191267)) b!6498106))

(assert (= (and b!6498106 res!2668690) b!6498109))

(assert (= (and b!6498106 c!1191268) b!6498110))

(assert (= (and b!6498106 (not c!1191268)) b!6498107))

(assert (= (and b!6498107 c!1191266) b!6498108))

(assert (= (and b!6498107 (not c!1191266)) b!6498112))

(assert (= (and b!6498112 c!1191270) b!6498113))

(assert (= (and b!6498112 (not c!1191270)) b!6498103))

(assert (= (or b!6498108 b!6498113) bm!562910))

(assert (= (or b!6498108 b!6498113) bm!562913))

(assert (= (or b!6498110 bm!562910) bm!562911))

(assert (= (or b!6498110 bm!562913) bm!562914))

(assert (= (or b!6498105 b!6498110) bm!562912))

(assert (= (or b!6498105 bm!562914) bm!562909))

(declare-fun m!7286372 () Bool)

(assert (=> bm!562912 m!7286372))

(declare-fun m!7286374 () Bool)

(assert (=> b!6498109 m!7286374))

(declare-fun m!7286376 () Bool)

(assert (=> bm!562909 m!7286376))

(declare-fun m!7286378 () Bool)

(assert (=> b!6498111 m!7286378))

(declare-fun m!7286380 () Bool)

(assert (=> bm!562911 m!7286380))

(assert (=> b!6497395 d!2039007))

(declare-fun bm!562915 () Bool)

(declare-fun call!562920 () (InoxSet Context!11518))

(assert (=> bm!562915 (= call!562920 (derivationStepZipperDown!1623 (h!71748 (exprs!6259 (h!71749 zl!343))) (Context!11519 (t!379056 (exprs!6259 (h!71749 zl!343)))) (h!71750 s!2326)))))

(declare-fun b!6498114 () Bool)

(declare-fun e!3937676 () Bool)

(assert (=> b!6498114 (= e!3937676 (nullable!6368 (h!71748 (exprs!6259 (h!71749 zl!343)))))))

(declare-fun b!6498115 () Bool)

(declare-fun e!3937675 () (InoxSet Context!11518))

(declare-fun e!3937677 () (InoxSet Context!11518))

(assert (=> b!6498115 (= e!3937675 e!3937677)))

(declare-fun c!1191272 () Bool)

(assert (=> b!6498115 (= c!1191272 ((_ is Cons!65300) (exprs!6259 (h!71749 zl!343))))))

(declare-fun d!2039009 () Bool)

(declare-fun c!1191271 () Bool)

(assert (=> d!2039009 (= c!1191271 e!3937676)))

(declare-fun res!2668691 () Bool)

(assert (=> d!2039009 (=> (not res!2668691) (not e!3937676))))

(assert (=> d!2039009 (= res!2668691 ((_ is Cons!65300) (exprs!6259 (h!71749 zl!343))))))

(assert (=> d!2039009 (= (derivationStepZipperUp!1549 (h!71749 zl!343) (h!71750 s!2326)) e!3937675)))

(declare-fun b!6498116 () Bool)

(assert (=> b!6498116 (= e!3937677 call!562920)))

(declare-fun b!6498117 () Bool)

(assert (=> b!6498117 (= e!3937675 ((_ map or) call!562920 (derivationStepZipperUp!1549 (Context!11519 (t!379056 (exprs!6259 (h!71749 zl!343)))) (h!71750 s!2326))))))

(declare-fun b!6498118 () Bool)

(assert (=> b!6498118 (= e!3937677 ((as const (Array Context!11518 Bool)) false))))

(assert (= (and d!2039009 res!2668691) b!6498114))

(assert (= (and d!2039009 c!1191271) b!6498117))

(assert (= (and d!2039009 (not c!1191271)) b!6498115))

(assert (= (and b!6498115 c!1191272) b!6498116))

(assert (= (and b!6498115 (not c!1191272)) b!6498118))

(assert (= (or b!6498117 b!6498116) bm!562915))

(declare-fun m!7286382 () Bool)

(assert (=> bm!562915 m!7286382))

(assert (=> b!6498114 m!7285808))

(declare-fun m!7286384 () Bool)

(assert (=> b!6498117 m!7286384))

(assert (=> b!6497395 d!2039009))

(declare-fun bm!562916 () Bool)

(declare-fun call!562921 () (InoxSet Context!11518))

(assert (=> bm!562916 (= call!562921 (derivationStepZipperDown!1623 (h!71748 (exprs!6259 lt!2391021)) (Context!11519 (t!379056 (exprs!6259 lt!2391021))) (h!71750 s!2326)))))

(declare-fun b!6498119 () Bool)

(declare-fun e!3937679 () Bool)

(assert (=> b!6498119 (= e!3937679 (nullable!6368 (h!71748 (exprs!6259 lt!2391021))))))

(declare-fun b!6498120 () Bool)

(declare-fun e!3937678 () (InoxSet Context!11518))

(declare-fun e!3937680 () (InoxSet Context!11518))

(assert (=> b!6498120 (= e!3937678 e!3937680)))

(declare-fun c!1191274 () Bool)

(assert (=> b!6498120 (= c!1191274 ((_ is Cons!65300) (exprs!6259 lt!2391021)))))

(declare-fun d!2039011 () Bool)

(declare-fun c!1191273 () Bool)

(assert (=> d!2039011 (= c!1191273 e!3937679)))

(declare-fun res!2668692 () Bool)

(assert (=> d!2039011 (=> (not res!2668692) (not e!3937679))))

(assert (=> d!2039011 (= res!2668692 ((_ is Cons!65300) (exprs!6259 lt!2391021)))))

(assert (=> d!2039011 (= (derivationStepZipperUp!1549 lt!2391021 (h!71750 s!2326)) e!3937678)))

(declare-fun b!6498121 () Bool)

(assert (=> b!6498121 (= e!3937680 call!562921)))

(declare-fun b!6498122 () Bool)

(assert (=> b!6498122 (= e!3937678 ((_ map or) call!562921 (derivationStepZipperUp!1549 (Context!11519 (t!379056 (exprs!6259 lt!2391021))) (h!71750 s!2326))))))

(declare-fun b!6498123 () Bool)

(assert (=> b!6498123 (= e!3937680 ((as const (Array Context!11518 Bool)) false))))

(assert (= (and d!2039011 res!2668692) b!6498119))

(assert (= (and d!2039011 c!1191273) b!6498122))

(assert (= (and d!2039011 (not c!1191273)) b!6498120))

(assert (= (and b!6498120 c!1191274) b!6498121))

(assert (= (and b!6498120 (not c!1191274)) b!6498123))

(assert (= (or b!6498122 b!6498121) bm!562916))

(declare-fun m!7286386 () Bool)

(assert (=> bm!562916 m!7286386))

(declare-fun m!7286388 () Bool)

(assert (=> b!6498119 m!7286388))

(declare-fun m!7286390 () Bool)

(assert (=> b!6498122 m!7286390))

(assert (=> b!6497395 d!2039011))

(declare-fun bs!1650524 () Bool)

(declare-fun d!2039013 () Bool)

(assert (= bs!1650524 (and d!2039013 d!2038941)))

(declare-fun lambda!360052 () Int)

(assert (=> bs!1650524 (= lambda!360052 lambda!360027)))

(declare-fun bs!1650525 () Bool)

(assert (= bs!1650525 (and d!2039013 d!2038959)))

(assert (=> bs!1650525 (= lambda!360052 lambda!360038)))

(declare-fun bs!1650526 () Bool)

(assert (= bs!1650526 (and d!2039013 d!2038993)))

(assert (=> bs!1650526 (= lambda!360052 lambda!360051)))

(assert (=> d!2039013 (= (inv!84184 lt!2391002) (forall!15556 (exprs!6259 lt!2391002) lambda!360052))))

(declare-fun bs!1650527 () Bool)

(assert (= bs!1650527 d!2039013))

(declare-fun m!7286392 () Bool)

(assert (=> bs!1650527 m!7286392))

(assert (=> b!6497394 d!2039013))

(declare-fun bs!1650528 () Bool)

(declare-fun d!2039015 () Bool)

(assert (= bs!1650528 (and d!2039015 d!2038941)))

(declare-fun lambda!360055 () Int)

(assert (=> bs!1650528 (= lambda!360055 lambda!360027)))

(declare-fun bs!1650529 () Bool)

(assert (= bs!1650529 (and d!2039015 d!2038959)))

(assert (=> bs!1650529 (= lambda!360055 lambda!360038)))

(declare-fun bs!1650530 () Bool)

(assert (= bs!1650530 (and d!2039015 d!2038993)))

(assert (=> bs!1650530 (= lambda!360055 lambda!360051)))

(declare-fun bs!1650531 () Bool)

(assert (= bs!1650531 (and d!2039015 d!2039013)))

(assert (=> bs!1650531 (= lambda!360055 lambda!360052)))

(declare-fun b!6498144 () Bool)

(declare-fun e!3937694 () Bool)

(declare-fun lt!2391128 () Regex!16375)

(declare-fun isUnion!1203 (Regex!16375) Bool)

(assert (=> b!6498144 (= e!3937694 (isUnion!1203 lt!2391128))))

(declare-fun b!6498145 () Bool)

(declare-fun e!3937698 () Regex!16375)

(declare-fun e!3937696 () Regex!16375)

(assert (=> b!6498145 (= e!3937698 e!3937696)))

(declare-fun c!1191286 () Bool)

(assert (=> b!6498145 (= c!1191286 ((_ is Cons!65300) (unfocusZipperList!1796 zl!343)))))

(declare-fun b!6498146 () Bool)

(assert (=> b!6498146 (= e!3937694 (= lt!2391128 (head!13222 (unfocusZipperList!1796 zl!343))))))

(declare-fun e!3937695 () Bool)

(assert (=> d!2039015 e!3937695))

(declare-fun res!2668697 () Bool)

(assert (=> d!2039015 (=> (not res!2668697) (not e!3937695))))

(assert (=> d!2039015 (= res!2668697 (validRegex!8111 lt!2391128))))

(assert (=> d!2039015 (= lt!2391128 e!3937698)))

(declare-fun c!1191285 () Bool)

(declare-fun e!3937697 () Bool)

(assert (=> d!2039015 (= c!1191285 e!3937697)))

(declare-fun res!2668698 () Bool)

(assert (=> d!2039015 (=> (not res!2668698) (not e!3937697))))

(assert (=> d!2039015 (= res!2668698 ((_ is Cons!65300) (unfocusZipperList!1796 zl!343)))))

(assert (=> d!2039015 (forall!15556 (unfocusZipperList!1796 zl!343) lambda!360055)))

(assert (=> d!2039015 (= (generalisedUnion!2219 (unfocusZipperList!1796 zl!343)) lt!2391128)))

(declare-fun b!6498147 () Bool)

(assert (=> b!6498147 (= e!3937696 EmptyLang!16375)))

(declare-fun b!6498148 () Bool)

(assert (=> b!6498148 (= e!3937697 (isEmpty!37497 (t!379056 (unfocusZipperList!1796 zl!343))))))

(declare-fun b!6498149 () Bool)

(declare-fun e!3937693 () Bool)

(declare-fun isEmptyLang!1773 (Regex!16375) Bool)

(assert (=> b!6498149 (= e!3937693 (isEmptyLang!1773 lt!2391128))))

(declare-fun b!6498150 () Bool)

(assert (=> b!6498150 (= e!3937698 (h!71748 (unfocusZipperList!1796 zl!343)))))

(declare-fun b!6498151 () Bool)

(assert (=> b!6498151 (= e!3937696 (Union!16375 (h!71748 (unfocusZipperList!1796 zl!343)) (generalisedUnion!2219 (t!379056 (unfocusZipperList!1796 zl!343)))))))

(declare-fun b!6498152 () Bool)

(assert (=> b!6498152 (= e!3937695 e!3937693)))

(declare-fun c!1191284 () Bool)

(assert (=> b!6498152 (= c!1191284 (isEmpty!37497 (unfocusZipperList!1796 zl!343)))))

(declare-fun b!6498153 () Bool)

(assert (=> b!6498153 (= e!3937693 e!3937694)))

(declare-fun c!1191283 () Bool)

(assert (=> b!6498153 (= c!1191283 (isEmpty!37497 (tail!12307 (unfocusZipperList!1796 zl!343))))))

(assert (= (and d!2039015 res!2668698) b!6498148))

(assert (= (and d!2039015 c!1191285) b!6498150))

(assert (= (and d!2039015 (not c!1191285)) b!6498145))

(assert (= (and b!6498145 c!1191286) b!6498151))

(assert (= (and b!6498145 (not c!1191286)) b!6498147))

(assert (= (and d!2039015 res!2668697) b!6498152))

(assert (= (and b!6498152 c!1191284) b!6498149))

(assert (= (and b!6498152 (not c!1191284)) b!6498153))

(assert (= (and b!6498153 c!1191283) b!6498146))

(assert (= (and b!6498153 (not c!1191283)) b!6498144))

(assert (=> b!6498153 m!7285844))

(declare-fun m!7286394 () Bool)

(assert (=> b!6498153 m!7286394))

(assert (=> b!6498153 m!7286394))

(declare-fun m!7286396 () Bool)

(assert (=> b!6498153 m!7286396))

(declare-fun m!7286398 () Bool)

(assert (=> b!6498149 m!7286398))

(assert (=> b!6498146 m!7285844))

(declare-fun m!7286400 () Bool)

(assert (=> b!6498146 m!7286400))

(declare-fun m!7286402 () Bool)

(assert (=> b!6498151 m!7286402))

(declare-fun m!7286404 () Bool)

(assert (=> b!6498148 m!7286404))

(declare-fun m!7286406 () Bool)

(assert (=> d!2039015 m!7286406))

(assert (=> d!2039015 m!7285844))

(declare-fun m!7286408 () Bool)

(assert (=> d!2039015 m!7286408))

(declare-fun m!7286410 () Bool)

(assert (=> b!6498144 m!7286410))

(assert (=> b!6498152 m!7285844))

(declare-fun m!7286412 () Bool)

(assert (=> b!6498152 m!7286412))

(assert (=> b!6497373 d!2039015))

(declare-fun bs!1650532 () Bool)

(declare-fun d!2039017 () Bool)

(assert (= bs!1650532 (and d!2039017 d!2038959)))

(declare-fun lambda!360058 () Int)

(assert (=> bs!1650532 (= lambda!360058 lambda!360038)))

(declare-fun bs!1650533 () Bool)

(assert (= bs!1650533 (and d!2039017 d!2038941)))

(assert (=> bs!1650533 (= lambda!360058 lambda!360027)))

(declare-fun bs!1650534 () Bool)

(assert (= bs!1650534 (and d!2039017 d!2039015)))

(assert (=> bs!1650534 (= lambda!360058 lambda!360055)))

(declare-fun bs!1650535 () Bool)

(assert (= bs!1650535 (and d!2039017 d!2039013)))

(assert (=> bs!1650535 (= lambda!360058 lambda!360052)))

(declare-fun bs!1650536 () Bool)

(assert (= bs!1650536 (and d!2039017 d!2038993)))

(assert (=> bs!1650536 (= lambda!360058 lambda!360051)))

(declare-fun lt!2391131 () List!65424)

(assert (=> d!2039017 (forall!15556 lt!2391131 lambda!360058)))

(declare-fun e!3937701 () List!65424)

(assert (=> d!2039017 (= lt!2391131 e!3937701)))

(declare-fun c!1191289 () Bool)

(assert (=> d!2039017 (= c!1191289 ((_ is Cons!65301) zl!343))))

(assert (=> d!2039017 (= (unfocusZipperList!1796 zl!343) lt!2391131)))

(declare-fun b!6498158 () Bool)

(assert (=> b!6498158 (= e!3937701 (Cons!65300 (generalisedConcat!1972 (exprs!6259 (h!71749 zl!343))) (unfocusZipperList!1796 (t!379057 zl!343))))))

(declare-fun b!6498159 () Bool)

(assert (=> b!6498159 (= e!3937701 Nil!65300)))

(assert (= (and d!2039017 c!1191289) b!6498158))

(assert (= (and d!2039017 (not c!1191289)) b!6498159))

(declare-fun m!7286414 () Bool)

(assert (=> d!2039017 m!7286414))

(assert (=> b!6498158 m!7285826))

(declare-fun m!7286416 () Bool)

(assert (=> b!6498158 m!7286416))

(assert (=> b!6497373 d!2039017))

(declare-fun d!2039019 () Bool)

(declare-fun lt!2391132 () Regex!16375)

(assert (=> d!2039019 (validRegex!8111 lt!2391132)))

(assert (=> d!2039019 (= lt!2391132 (generalisedUnion!2219 (unfocusZipperList!1796 (Cons!65301 lt!2391016 Nil!65301))))))

(assert (=> d!2039019 (= (unfocusZipper!2117 (Cons!65301 lt!2391016 Nil!65301)) lt!2391132)))

(declare-fun bs!1650537 () Bool)

(assert (= bs!1650537 d!2039019))

(declare-fun m!7286418 () Bool)

(assert (=> bs!1650537 m!7286418))

(declare-fun m!7286420 () Bool)

(assert (=> bs!1650537 m!7286420))

(assert (=> bs!1650537 m!7286420))

(declare-fun m!7286422 () Bool)

(assert (=> bs!1650537 m!7286422))

(assert (=> b!6497393 d!2039019))

(declare-fun b!6498164 () Bool)

(declare-fun e!3937704 () Bool)

(declare-fun tp!1797833 () Bool)

(assert (=> b!6498164 (= e!3937704 (and tp_is_empty!42003 tp!1797833))))

(assert (=> b!6497383 (= tp!1797770 e!3937704)))

(assert (= (and b!6497383 ((_ is Cons!65302) (t!379058 s!2326))) b!6498164))

(declare-fun condSetEmpty!44283 () Bool)

(assert (=> setNonEmpty!44277 (= condSetEmpty!44283 (= setRest!44277 ((as const (Array Context!11518 Bool)) false)))))

(declare-fun setRes!44283 () Bool)

(assert (=> setNonEmpty!44277 (= tp!1797765 setRes!44283)))

(declare-fun setIsEmpty!44283 () Bool)

(assert (=> setIsEmpty!44283 setRes!44283))

(declare-fun tp!1797838 () Bool)

(declare-fun e!3937707 () Bool)

(declare-fun setElem!44283 () Context!11518)

(declare-fun setNonEmpty!44283 () Bool)

(assert (=> setNonEmpty!44283 (= setRes!44283 (and tp!1797838 (inv!84184 setElem!44283) e!3937707))))

(declare-fun setRest!44283 () (InoxSet Context!11518))

(assert (=> setNonEmpty!44283 (= setRest!44277 ((_ map or) (store ((as const (Array Context!11518 Bool)) false) setElem!44283 true) setRest!44283))))

(declare-fun b!6498169 () Bool)

(declare-fun tp!1797839 () Bool)

(assert (=> b!6498169 (= e!3937707 tp!1797839)))

(assert (= (and setNonEmpty!44277 condSetEmpty!44283) setIsEmpty!44283))

(assert (= (and setNonEmpty!44277 (not condSetEmpty!44283)) setNonEmpty!44283))

(assert (= setNonEmpty!44283 b!6498169))

(declare-fun m!7286424 () Bool)

(assert (=> setNonEmpty!44283 m!7286424))

(declare-fun b!6498174 () Bool)

(declare-fun e!3937710 () Bool)

(declare-fun tp!1797844 () Bool)

(declare-fun tp!1797845 () Bool)

(assert (=> b!6498174 (= e!3937710 (and tp!1797844 tp!1797845))))

(assert (=> b!6497372 (= tp!1797768 e!3937710)))

(assert (= (and b!6497372 ((_ is Cons!65300) (exprs!6259 (h!71749 zl!343)))) b!6498174))

(declare-fun b!6498175 () Bool)

(declare-fun e!3937711 () Bool)

(declare-fun tp!1797846 () Bool)

(declare-fun tp!1797847 () Bool)

(assert (=> b!6498175 (= e!3937711 (and tp!1797846 tp!1797847))))

(assert (=> b!6497377 (= tp!1797769 e!3937711)))

(assert (= (and b!6497377 ((_ is Cons!65300) (exprs!6259 setElem!44277))) b!6498175))

(declare-fun b!6498186 () Bool)

(declare-fun e!3937714 () Bool)

(assert (=> b!6498186 (= e!3937714 tp_is_empty!42003)))

(declare-fun b!6498188 () Bool)

(declare-fun tp!1797861 () Bool)

(assert (=> b!6498188 (= e!3937714 tp!1797861)))

(declare-fun b!6498189 () Bool)

(declare-fun tp!1797862 () Bool)

(declare-fun tp!1797858 () Bool)

(assert (=> b!6498189 (= e!3937714 (and tp!1797862 tp!1797858))))

(assert (=> b!6497366 (= tp!1797766 e!3937714)))

(declare-fun b!6498187 () Bool)

(declare-fun tp!1797860 () Bool)

(declare-fun tp!1797859 () Bool)

(assert (=> b!6498187 (= e!3937714 (and tp!1797860 tp!1797859))))

(assert (= (and b!6497366 ((_ is ElementMatch!16375) (regOne!33262 r!7292))) b!6498186))

(assert (= (and b!6497366 ((_ is Concat!25220) (regOne!33262 r!7292))) b!6498187))

(assert (= (and b!6497366 ((_ is Star!16375) (regOne!33262 r!7292))) b!6498188))

(assert (= (and b!6497366 ((_ is Union!16375) (regOne!33262 r!7292))) b!6498189))

(declare-fun b!6498190 () Bool)

(declare-fun e!3937715 () Bool)

(assert (=> b!6498190 (= e!3937715 tp_is_empty!42003)))

(declare-fun b!6498192 () Bool)

(declare-fun tp!1797866 () Bool)

(assert (=> b!6498192 (= e!3937715 tp!1797866)))

(declare-fun b!6498193 () Bool)

(declare-fun tp!1797867 () Bool)

(declare-fun tp!1797863 () Bool)

(assert (=> b!6498193 (= e!3937715 (and tp!1797867 tp!1797863))))

(assert (=> b!6497366 (= tp!1797764 e!3937715)))

(declare-fun b!6498191 () Bool)

(declare-fun tp!1797865 () Bool)

(declare-fun tp!1797864 () Bool)

(assert (=> b!6498191 (= e!3937715 (and tp!1797865 tp!1797864))))

(assert (= (and b!6497366 ((_ is ElementMatch!16375) (regTwo!33262 r!7292))) b!6498190))

(assert (= (and b!6497366 ((_ is Concat!25220) (regTwo!33262 r!7292))) b!6498191))

(assert (= (and b!6497366 ((_ is Star!16375) (regTwo!33262 r!7292))) b!6498192))

(assert (= (and b!6497366 ((_ is Union!16375) (regTwo!33262 r!7292))) b!6498193))

(declare-fun b!6498194 () Bool)

(declare-fun e!3937716 () Bool)

(assert (=> b!6498194 (= e!3937716 tp_is_empty!42003)))

(declare-fun b!6498196 () Bool)

(declare-fun tp!1797871 () Bool)

(assert (=> b!6498196 (= e!3937716 tp!1797871)))

(declare-fun b!6498197 () Bool)

(declare-fun tp!1797872 () Bool)

(declare-fun tp!1797868 () Bool)

(assert (=> b!6498197 (= e!3937716 (and tp!1797872 tp!1797868))))

(assert (=> b!6497385 (= tp!1797767 e!3937716)))

(declare-fun b!6498195 () Bool)

(declare-fun tp!1797870 () Bool)

(declare-fun tp!1797869 () Bool)

(assert (=> b!6498195 (= e!3937716 (and tp!1797870 tp!1797869))))

(assert (= (and b!6497385 ((_ is ElementMatch!16375) (regOne!33263 r!7292))) b!6498194))

(assert (= (and b!6497385 ((_ is Concat!25220) (regOne!33263 r!7292))) b!6498195))

(assert (= (and b!6497385 ((_ is Star!16375) (regOne!33263 r!7292))) b!6498196))

(assert (= (and b!6497385 ((_ is Union!16375) (regOne!33263 r!7292))) b!6498197))

(declare-fun b!6498198 () Bool)

(declare-fun e!3937717 () Bool)

(assert (=> b!6498198 (= e!3937717 tp_is_empty!42003)))

(declare-fun b!6498200 () Bool)

(declare-fun tp!1797876 () Bool)

(assert (=> b!6498200 (= e!3937717 tp!1797876)))

(declare-fun b!6498201 () Bool)

(declare-fun tp!1797877 () Bool)

(declare-fun tp!1797873 () Bool)

(assert (=> b!6498201 (= e!3937717 (and tp!1797877 tp!1797873))))

(assert (=> b!6497385 (= tp!1797763 e!3937717)))

(declare-fun b!6498199 () Bool)

(declare-fun tp!1797875 () Bool)

(declare-fun tp!1797874 () Bool)

(assert (=> b!6498199 (= e!3937717 (and tp!1797875 tp!1797874))))

(assert (= (and b!6497385 ((_ is ElementMatch!16375) (regTwo!33263 r!7292))) b!6498198))

(assert (= (and b!6497385 ((_ is Concat!25220) (regTwo!33263 r!7292))) b!6498199))

(assert (= (and b!6497385 ((_ is Star!16375) (regTwo!33263 r!7292))) b!6498200))

(assert (= (and b!6497385 ((_ is Union!16375) (regTwo!33263 r!7292))) b!6498201))

(declare-fun b!6498202 () Bool)

(declare-fun e!3937718 () Bool)

(assert (=> b!6498202 (= e!3937718 tp_is_empty!42003)))

(declare-fun b!6498204 () Bool)

(declare-fun tp!1797881 () Bool)

(assert (=> b!6498204 (= e!3937718 tp!1797881)))

(declare-fun b!6498205 () Bool)

(declare-fun tp!1797882 () Bool)

(declare-fun tp!1797878 () Bool)

(assert (=> b!6498205 (= e!3937718 (and tp!1797882 tp!1797878))))

(assert (=> b!6497384 (= tp!1797772 e!3937718)))

(declare-fun b!6498203 () Bool)

(declare-fun tp!1797880 () Bool)

(declare-fun tp!1797879 () Bool)

(assert (=> b!6498203 (= e!3937718 (and tp!1797880 tp!1797879))))

(assert (= (and b!6497384 ((_ is ElementMatch!16375) (reg!16704 r!7292))) b!6498202))

(assert (= (and b!6497384 ((_ is Concat!25220) (reg!16704 r!7292))) b!6498203))

(assert (= (and b!6497384 ((_ is Star!16375) (reg!16704 r!7292))) b!6498204))

(assert (= (and b!6497384 ((_ is Union!16375) (reg!16704 r!7292))) b!6498205))

(declare-fun b!6498213 () Bool)

(declare-fun e!3937724 () Bool)

(declare-fun tp!1797887 () Bool)

(assert (=> b!6498213 (= e!3937724 tp!1797887)))

(declare-fun tp!1797888 () Bool)

(declare-fun e!3937723 () Bool)

(declare-fun b!6498212 () Bool)

(assert (=> b!6498212 (= e!3937723 (and (inv!84184 (h!71749 (t!379057 zl!343))) e!3937724 tp!1797888))))

(assert (=> b!6497388 (= tp!1797771 e!3937723)))

(assert (= b!6498212 b!6498213))

(assert (= (and b!6497388 ((_ is Cons!65301) (t!379057 zl!343))) b!6498212))

(declare-fun m!7286426 () Bool)

(assert (=> b!6498212 m!7286426))

(declare-fun b_lambda!245985 () Bool)

(assert (= b_lambda!245983 (or b!6497395 b_lambda!245985)))

(declare-fun bs!1650538 () Bool)

(declare-fun d!2039021 () Bool)

(assert (= bs!1650538 (and d!2039021 b!6497395)))

(assert (=> bs!1650538 (= (dynLambda!25939 lambda!359990 (h!71749 zl!343)) (derivationStepZipperUp!1549 (h!71749 zl!343) (h!71750 s!2326)))))

(assert (=> bs!1650538 m!7285804))

(assert (=> d!2038999 d!2039021))

(declare-fun b_lambda!245987 () Bool)

(assert (= b_lambda!245977 (or b!6497395 b_lambda!245987)))

(declare-fun bs!1650539 () Bool)

(declare-fun d!2039023 () Bool)

(assert (= bs!1650539 (and d!2039023 b!6497395)))

(assert (=> bs!1650539 (= (dynLambda!25939 lambda!359990 lt!2391002) (derivationStepZipperUp!1549 lt!2391002 (h!71750 s!2326)))))

(assert (=> bs!1650539 m!7285790))

(assert (=> d!2038921 d!2039023))

(declare-fun b_lambda!245989 () Bool)

(assert (= b_lambda!245979 (or b!6497395 b_lambda!245989)))

(declare-fun bs!1650540 () Bool)

(declare-fun d!2039025 () Bool)

(assert (= bs!1650540 (and d!2039025 b!6497395)))

(assert (=> bs!1650540 (= (dynLambda!25939 lambda!359990 lt!2391011) (derivationStepZipperUp!1549 lt!2391011 (h!71750 s!2326)))))

(assert (=> bs!1650540 m!7285792))

(assert (=> d!2038927 d!2039025))

(declare-fun b_lambda!245991 () Bool)

(assert (= b_lambda!245981 (or b!6497395 b_lambda!245991)))

(declare-fun bs!1650541 () Bool)

(declare-fun d!2039027 () Bool)

(assert (= bs!1650541 (and d!2039027 b!6497395)))

(assert (=> bs!1650541 (= (dynLambda!25939 lambda!359990 lt!2391016) (derivationStepZipperUp!1549 lt!2391016 (h!71750 s!2326)))))

(assert (=> bs!1650541 m!7285838))

(assert (=> d!2038989 d!2039027))

(check-sat (not d!2038969) (not b!6497921) (not d!2038951) (not b!6498042) (not b!6498020) (not d!2038981) (not d!2038941) (not bm!562904) (not b!6498187) (not b!6498204) (not b!6498169) (not b!6498067) (not b!6498032) (not d!2038947) (not b!6497867) (not d!2038971) (not d!2038959) (not bm!562878) (not d!2038935) (not b!6498213) (not bm!562907) (not bm!562911) (not b!6498149) (not b!6498148) (not bm!562885) (not b!6498212) (not b!6498175) (not b!6497858) (not b_lambda!245987) (not b!6498146) (not d!2039001) (not d!2038965) (not b!6497861) (not d!2038975) (not d!2038955) (not b!6498098) (not b!6497926) (not b!6498066) (not b!6498095) (not b!6498028) (not b!6498174) (not d!2039017) (not b!6498195) (not b!6497853) (not b!6498114) (not b!6497868) (not b!6498061) (not d!2038979) (not b!6498040) (not bm!562903) (not b!6498152) (not b!6497925) (not d!2039019) (not d!2038997) (not b_lambda!245989) (not b!6498122) (not b!6498119) (not b!6497927) (not b!6497923) (not d!2038995) (not b!6498188) (not d!2038923) (not b!6498200) (not bm!562915) (not b!6498193) (not b_lambda!245985) (not b!6498192) (not b!6498158) (not b!6497918) (not b!6498191) (not bm!562893) (not d!2038985) (not b!6497838) (not b!6498153) (not b!6498201) (not d!2038977) (not b!6497967) (not setNonEmpty!44283) (not b!6498151) (not bm!562884) (not b!6498037) (not b!6498069) (not bs!1650541) (not d!2038929) (not b!6498109) tp_is_empty!42003 (not b!6497964) (not b!6498205) (not b!6498086) (not b!6498199) (not b!6498164) (not b!6498009) (not d!2038927) (not b!6498197) (not bs!1650539) (not b!6498096) (not d!2038921) (not d!2038967) (not b!6497856) (not b!6498063) (not b!6498189) (not d!2038991) (not b!6498035) (not d!2039005) (not bm!562906) (not b!6497919) (not b!6498089) (not b!6498117) (not d!2038993) (not d!2038989) (not b!6498085) (not b!6497917) (not b!6497922) (not bm!562879) (not b!6497957) (not b!6498097) (not b!6498065) (not bm!562876) (not d!2038957) (not b!6498082) (not b!6498017) (not b!6498006) (not d!2038943) (not d!2038973) (not bm!562905) (not bm!562909) (not bs!1650538) (not b!6497966) (not bm!562908) (not d!2038945) (not b!6498196) (not d!2038983) (not b!6497888) (not d!2038919) (not b!6498034) (not d!2039015) (not bm!562916) (not bm!562902) (not b!6498025) (not b!6498101) (not bm!562892) (not b_lambda!245991) (not b!6498084) (not bm!562912) (not d!2038963) (not b!6498144) (not b!6497960) (not b!6498203) (not d!2038999) (not bm!562897) (not b!6497969) (not d!2038961) (not b!6498041) (not b!6498083) (not bs!1650540) (not d!2039013))
(check-sat)
(get-model)

(declare-fun bs!1650866 () Bool)

(declare-fun b!6498918 () Bool)

(assert (= bs!1650866 (and b!6498918 b!6497365)))

(declare-fun lambda!360101 () Int)

(assert (=> bs!1650866 (not (= lambda!360101 lambda!359988))))

(declare-fun bs!1650867 () Bool)

(assert (= bs!1650867 (and b!6498918 b!6498018)))

(assert (=> bs!1650867 (= (and (= (reg!16704 (regOne!33263 lt!2391008)) (reg!16704 r!7292)) (= (regOne!33263 lt!2391008) r!7292)) (= lambda!360101 lambda!360034))))

(declare-fun bs!1650868 () Bool)

(assert (= bs!1650868 (and b!6498918 d!2038973)))

(assert (=> bs!1650868 (not (= lambda!360101 lambda!360047))))

(assert (=> bs!1650868 (not (= lambda!360101 lambda!360046))))

(declare-fun bs!1650869 () Bool)

(assert (= bs!1650869 (and b!6498918 d!2038971)))

(assert (=> bs!1650869 (not (= lambda!360101 lambda!360041))))

(declare-fun bs!1650870 () Bool)

(assert (= bs!1650870 (and b!6498918 b!6498010)))

(assert (=> bs!1650870 (not (= lambda!360101 lambda!360033))))

(declare-fun bs!1650871 () Bool)

(assert (= bs!1650871 (and b!6498918 b!6498007)))

(assert (=> bs!1650871 (= (and (= (reg!16704 (regOne!33263 lt!2391008)) (reg!16704 lt!2391008)) (= (regOne!33263 lt!2391008) lt!2391008)) (= lambda!360101 lambda!360032))))

(declare-fun bs!1650872 () Bool)

(assert (= bs!1650872 (and b!6498918 b!6498021)))

(assert (=> bs!1650872 (not (= lambda!360101 lambda!360035))))

(assert (=> bs!1650866 (not (= lambda!360101 lambda!359989))))

(assert (=> b!6498918 true))

(assert (=> b!6498918 true))

(declare-fun bs!1650873 () Bool)

(declare-fun b!6498921 () Bool)

(assert (= bs!1650873 (and b!6498921 b!6498918)))

(declare-fun lambda!360102 () Int)

(assert (=> bs!1650873 (not (= lambda!360102 lambda!360101))))

(declare-fun bs!1650874 () Bool)

(assert (= bs!1650874 (and b!6498921 b!6497365)))

(assert (=> bs!1650874 (not (= lambda!360102 lambda!359988))))

(declare-fun bs!1650875 () Bool)

(assert (= bs!1650875 (and b!6498921 b!6498018)))

(assert (=> bs!1650875 (not (= lambda!360102 lambda!360034))))

(declare-fun bs!1650876 () Bool)

(assert (= bs!1650876 (and b!6498921 d!2038973)))

(assert (=> bs!1650876 (= (and (= (regOne!33262 (regOne!33263 lt!2391008)) (regOne!33262 r!7292)) (= (regTwo!33262 (regOne!33263 lt!2391008)) (regTwo!33262 r!7292))) (= lambda!360102 lambda!360047))))

(assert (=> bs!1650876 (not (= lambda!360102 lambda!360046))))

(declare-fun bs!1650877 () Bool)

(assert (= bs!1650877 (and b!6498921 d!2038971)))

(assert (=> bs!1650877 (not (= lambda!360102 lambda!360041))))

(declare-fun bs!1650878 () Bool)

(assert (= bs!1650878 (and b!6498921 b!6498010)))

(assert (=> bs!1650878 (= (and (= (regOne!33262 (regOne!33263 lt!2391008)) (regOne!33262 lt!2391008)) (= (regTwo!33262 (regOne!33263 lt!2391008)) (regTwo!33262 lt!2391008))) (= lambda!360102 lambda!360033))))

(declare-fun bs!1650879 () Bool)

(assert (= bs!1650879 (and b!6498921 b!6498007)))

(assert (=> bs!1650879 (not (= lambda!360102 lambda!360032))))

(declare-fun bs!1650880 () Bool)

(assert (= bs!1650880 (and b!6498921 b!6498021)))

(assert (=> bs!1650880 (= (and (= (regOne!33262 (regOne!33263 lt!2391008)) (regOne!33262 r!7292)) (= (regTwo!33262 (regOne!33263 lt!2391008)) (regTwo!33262 r!7292))) (= lambda!360102 lambda!360035))))

(assert (=> bs!1650874 (= (and (= (regOne!33262 (regOne!33263 lt!2391008)) (regOne!33262 r!7292)) (= (regTwo!33262 (regOne!33263 lt!2391008)) (regTwo!33262 r!7292))) (= lambda!360102 lambda!359989))))

(assert (=> b!6498921 true))

(assert (=> b!6498921 true))

(declare-fun b!6498913 () Bool)

(declare-fun e!3938132 () Bool)

(declare-fun call!563057 () Bool)

(assert (=> b!6498913 (= e!3938132 call!563057)))

(declare-fun d!2039319 () Bool)

(declare-fun c!1191475 () Bool)

(assert (=> d!2039319 (= c!1191475 ((_ is EmptyExpr!16375) (regOne!33263 lt!2391008)))))

(assert (=> d!2039319 (= (matchRSpec!3476 (regOne!33263 lt!2391008) s!2326) e!3938132)))

(declare-fun b!6498914 () Bool)

(declare-fun e!3938129 () Bool)

(assert (=> b!6498914 (= e!3938129 (= s!2326 (Cons!65302 (c!1191063 (regOne!33263 lt!2391008)) Nil!65302)))))

(declare-fun b!6498915 () Bool)

(declare-fun res!2668923 () Bool)

(declare-fun e!3938127 () Bool)

(assert (=> b!6498915 (=> res!2668923 e!3938127)))

(assert (=> b!6498915 (= res!2668923 call!563057)))

(declare-fun e!3938126 () Bool)

(assert (=> b!6498915 (= e!3938126 e!3938127)))

(declare-fun b!6498916 () Bool)

(declare-fun c!1191472 () Bool)

(assert (=> b!6498916 (= c!1191472 ((_ is ElementMatch!16375) (regOne!33263 lt!2391008)))))

(declare-fun e!3938130 () Bool)

(assert (=> b!6498916 (= e!3938130 e!3938129)))

(declare-fun b!6498917 () Bool)

(declare-fun e!3938128 () Bool)

(declare-fun e!3938131 () Bool)

(assert (=> b!6498917 (= e!3938128 e!3938131)))

(declare-fun res!2668924 () Bool)

(assert (=> b!6498917 (= res!2668924 (matchRSpec!3476 (regOne!33263 (regOne!33263 lt!2391008)) s!2326))))

(assert (=> b!6498917 (=> res!2668924 e!3938131)))

(declare-fun call!563056 () Bool)

(assert (=> b!6498918 (= e!3938127 call!563056)))

(declare-fun bm!563051 () Bool)

(declare-fun c!1191474 () Bool)

(assert (=> bm!563051 (= call!563056 (Exists!3445 (ite c!1191474 lambda!360101 lambda!360102)))))

(declare-fun b!6498919 () Bool)

(declare-fun c!1191473 () Bool)

(assert (=> b!6498919 (= c!1191473 ((_ is Union!16375) (regOne!33263 lt!2391008)))))

(assert (=> b!6498919 (= e!3938129 e!3938128)))

(declare-fun b!6498920 () Bool)

(assert (=> b!6498920 (= e!3938131 (matchRSpec!3476 (regTwo!33263 (regOne!33263 lt!2391008)) s!2326))))

(declare-fun bm!563052 () Bool)

(assert (=> bm!563052 (= call!563057 (isEmpty!37501 s!2326))))

(assert (=> b!6498921 (= e!3938126 call!563056)))

(declare-fun b!6498922 () Bool)

(assert (=> b!6498922 (= e!3938132 e!3938130)))

(declare-fun res!2668925 () Bool)

(assert (=> b!6498922 (= res!2668925 (not ((_ is EmptyLang!16375) (regOne!33263 lt!2391008))))))

(assert (=> b!6498922 (=> (not res!2668925) (not e!3938130))))

(declare-fun b!6498923 () Bool)

(assert (=> b!6498923 (= e!3938128 e!3938126)))

(assert (=> b!6498923 (= c!1191474 ((_ is Star!16375) (regOne!33263 lt!2391008)))))

(assert (= (and d!2039319 c!1191475) b!6498913))

(assert (= (and d!2039319 (not c!1191475)) b!6498922))

(assert (= (and b!6498922 res!2668925) b!6498916))

(assert (= (and b!6498916 c!1191472) b!6498914))

(assert (= (and b!6498916 (not c!1191472)) b!6498919))

(assert (= (and b!6498919 c!1191473) b!6498917))

(assert (= (and b!6498919 (not c!1191473)) b!6498923))

(assert (= (and b!6498917 (not res!2668924)) b!6498920))

(assert (= (and b!6498923 c!1191474) b!6498915))

(assert (= (and b!6498923 (not c!1191474)) b!6498921))

(assert (= (and b!6498915 (not res!2668923)) b!6498918))

(assert (= (or b!6498918 b!6498921) bm!563051))

(assert (= (or b!6498913 b!6498915) bm!563052))

(declare-fun m!7287094 () Bool)

(assert (=> b!6498917 m!7287094))

(declare-fun m!7287096 () Bool)

(assert (=> bm!563051 m!7287096))

(declare-fun m!7287098 () Bool)

(assert (=> b!6498920 m!7287098))

(assert (=> bm!563052 m!7286224))

(assert (=> b!6498006 d!2039319))

(assert (=> d!2038951 d!2038947))

(assert (=> d!2038951 d!2038949))

(declare-fun d!2039321 () Bool)

(assert (=> d!2039321 (= (matchR!8558 lt!2391008 s!2326) (matchRSpec!3476 lt!2391008 s!2326))))

(assert (=> d!2039321 true))

(declare-fun _$88!5206 () Unit!158835)

(assert (=> d!2039321 (= (choose!48231 lt!2391008 s!2326) _$88!5206)))

(declare-fun bs!1650881 () Bool)

(assert (= bs!1650881 d!2039321))

(assert (=> bs!1650881 m!7285816))

(assert (=> bs!1650881 m!7285818))

(assert (=> d!2038951 d!2039321))

(declare-fun b!6498924 () Bool)

(declare-fun e!3938136 () Bool)

(declare-fun e!3938133 () Bool)

(assert (=> b!6498924 (= e!3938136 e!3938133)))

(declare-fun c!1191477 () Bool)

(assert (=> b!6498924 (= c!1191477 ((_ is Union!16375) lt!2391008))))

(declare-fun b!6498925 () Bool)

(declare-fun e!3938134 () Bool)

(assert (=> b!6498925 (= e!3938136 e!3938134)))

(declare-fun res!2668929 () Bool)

(assert (=> b!6498925 (= res!2668929 (not (nullable!6368 (reg!16704 lt!2391008))))))

(assert (=> b!6498925 (=> (not res!2668929) (not e!3938134))))

(declare-fun b!6498926 () Bool)

(declare-fun e!3938139 () Bool)

(declare-fun e!3938138 () Bool)

(assert (=> b!6498926 (= e!3938139 e!3938138)))

(declare-fun res!2668927 () Bool)

(assert (=> b!6498926 (=> (not res!2668927) (not e!3938138))))

(declare-fun call!563058 () Bool)

(assert (=> b!6498926 (= res!2668927 call!563058)))

(declare-fun b!6498927 () Bool)

(declare-fun res!2668928 () Bool)

(assert (=> b!6498927 (=> res!2668928 e!3938139)))

(assert (=> b!6498927 (= res!2668928 (not ((_ is Concat!25220) lt!2391008)))))

(assert (=> b!6498927 (= e!3938133 e!3938139)))

(declare-fun d!2039323 () Bool)

(declare-fun res!2668930 () Bool)

(declare-fun e!3938137 () Bool)

(assert (=> d!2039323 (=> res!2668930 e!3938137)))

(assert (=> d!2039323 (= res!2668930 ((_ is ElementMatch!16375) lt!2391008))))

(assert (=> d!2039323 (= (validRegex!8111 lt!2391008) e!3938137)))

(declare-fun call!563059 () Bool)

(declare-fun bm!563053 () Bool)

(declare-fun c!1191476 () Bool)

(assert (=> bm!563053 (= call!563059 (validRegex!8111 (ite c!1191476 (reg!16704 lt!2391008) (ite c!1191477 (regOne!33263 lt!2391008) (regOne!33262 lt!2391008)))))))

(declare-fun b!6498928 () Bool)

(assert (=> b!6498928 (= e!3938134 call!563059)))

(declare-fun b!6498929 () Bool)

(declare-fun e!3938135 () Bool)

(declare-fun call!563060 () Bool)

(assert (=> b!6498929 (= e!3938135 call!563060)))

(declare-fun b!6498930 () Bool)

(assert (=> b!6498930 (= e!3938138 call!563060)))

(declare-fun bm!563054 () Bool)

(assert (=> bm!563054 (= call!563060 (validRegex!8111 (ite c!1191477 (regTwo!33263 lt!2391008) (regTwo!33262 lt!2391008))))))

(declare-fun b!6498931 () Bool)

(declare-fun res!2668926 () Bool)

(assert (=> b!6498931 (=> (not res!2668926) (not e!3938135))))

(assert (=> b!6498931 (= res!2668926 call!563058)))

(assert (=> b!6498931 (= e!3938133 e!3938135)))

(declare-fun b!6498932 () Bool)

(assert (=> b!6498932 (= e!3938137 e!3938136)))

(assert (=> b!6498932 (= c!1191476 ((_ is Star!16375) lt!2391008))))

(declare-fun bm!563055 () Bool)

(assert (=> bm!563055 (= call!563058 call!563059)))

(assert (= (and d!2039323 (not res!2668930)) b!6498932))

(assert (= (and b!6498932 c!1191476) b!6498925))

(assert (= (and b!6498932 (not c!1191476)) b!6498924))

(assert (= (and b!6498925 res!2668929) b!6498928))

(assert (= (and b!6498924 c!1191477) b!6498931))

(assert (= (and b!6498924 (not c!1191477)) b!6498927))

(assert (= (and b!6498931 res!2668926) b!6498929))

(assert (= (and b!6498927 (not res!2668928)) b!6498926))

(assert (= (and b!6498926 res!2668927) b!6498930))

(assert (= (or b!6498929 b!6498930) bm!563054))

(assert (= (or b!6498931 b!6498926) bm!563055))

(assert (= (or b!6498928 bm!563055) bm!563053))

(declare-fun m!7287100 () Bool)

(assert (=> b!6498925 m!7287100))

(declare-fun m!7287102 () Bool)

(assert (=> bm!563053 m!7287102))

(declare-fun m!7287104 () Bool)

(assert (=> bm!563054 m!7287104))

(assert (=> d!2038951 d!2039323))

(declare-fun d!2039325 () Bool)

(declare-fun c!1191478 () Bool)

(assert (=> d!2039325 (= c!1191478 (isEmpty!37501 (tail!12306 (t!379058 s!2326))))))

(declare-fun e!3938140 () Bool)

(assert (=> d!2039325 (= (matchZipper!2387 (derivationStepZipper!2341 lt!2391017 (head!13221 (t!379058 s!2326))) (tail!12306 (t!379058 s!2326))) e!3938140)))

(declare-fun b!6498933 () Bool)

(assert (=> b!6498933 (= e!3938140 (nullableZipper!2130 (derivationStepZipper!2341 lt!2391017 (head!13221 (t!379058 s!2326)))))))

(declare-fun b!6498934 () Bool)

(assert (=> b!6498934 (= e!3938140 (matchZipper!2387 (derivationStepZipper!2341 (derivationStepZipper!2341 lt!2391017 (head!13221 (t!379058 s!2326))) (head!13221 (tail!12306 (t!379058 s!2326)))) (tail!12306 (tail!12306 (t!379058 s!2326)))))))

(assert (= (and d!2039325 c!1191478) b!6498933))

(assert (= (and d!2039325 (not c!1191478)) b!6498934))

(assert (=> d!2039325 m!7286184))

(declare-fun m!7287106 () Bool)

(assert (=> d!2039325 m!7287106))

(assert (=> b!6498933 m!7286182))

(declare-fun m!7287108 () Bool)

(assert (=> b!6498933 m!7287108))

(assert (=> b!6498934 m!7286184))

(declare-fun m!7287110 () Bool)

(assert (=> b!6498934 m!7287110))

(assert (=> b!6498934 m!7286182))

(assert (=> b!6498934 m!7287110))

(declare-fun m!7287112 () Bool)

(assert (=> b!6498934 m!7287112))

(assert (=> b!6498934 m!7286184))

(declare-fun m!7287114 () Bool)

(assert (=> b!6498934 m!7287114))

(assert (=> b!6498934 m!7287112))

(assert (=> b!6498934 m!7287114))

(declare-fun m!7287116 () Bool)

(assert (=> b!6498934 m!7287116))

(assert (=> b!6497868 d!2039325))

(declare-fun bs!1650882 () Bool)

(declare-fun d!2039327 () Bool)

(assert (= bs!1650882 (and d!2039327 b!6497395)))

(declare-fun lambda!360103 () Int)

(assert (=> bs!1650882 (= (= (head!13221 (t!379058 s!2326)) (h!71750 s!2326)) (= lambda!360103 lambda!359990))))

(declare-fun bs!1650883 () Bool)

(assert (= bs!1650883 (and d!2039327 d!2038991)))

(assert (=> bs!1650883 (= (= (head!13221 (t!379058 s!2326)) (h!71750 s!2326)) (= lambda!360103 lambda!360050))))

(assert (=> d!2039327 true))

(assert (=> d!2039327 (= (derivationStepZipper!2341 lt!2391017 (head!13221 (t!379058 s!2326))) (flatMap!1880 lt!2391017 lambda!360103))))

(declare-fun bs!1650884 () Bool)

(assert (= bs!1650884 d!2039327))

(declare-fun m!7287118 () Bool)

(assert (=> bs!1650884 m!7287118))

(assert (=> b!6497868 d!2039327))

(declare-fun d!2039329 () Bool)

(assert (=> d!2039329 (= (head!13221 (t!379058 s!2326)) (h!71750 (t!379058 s!2326)))))

(assert (=> b!6497868 d!2039329))

(declare-fun d!2039331 () Bool)

(assert (=> d!2039331 (= (tail!12306 (t!379058 s!2326)) (t!379058 (t!379058 s!2326)))))

(assert (=> b!6497868 d!2039331))

(declare-fun b!6498945 () Bool)

(declare-fun res!2668936 () Bool)

(declare-fun e!3938146 () Bool)

(assert (=> b!6498945 (=> (not res!2668936) (not e!3938146))))

(declare-fun lt!2391165 () List!65426)

(declare-fun size!40434 (List!65426) Int)

(assert (=> b!6498945 (= res!2668936 (= (size!40434 lt!2391165) (+ (size!40434 (++!14457 Nil!65302 (Cons!65302 (h!71750 s!2326) Nil!65302))) (size!40434 (t!379058 s!2326)))))))

(declare-fun b!6498943 () Bool)

(declare-fun e!3938145 () List!65426)

(assert (=> b!6498943 (= e!3938145 (t!379058 s!2326))))

(declare-fun d!2039333 () Bool)

(assert (=> d!2039333 e!3938146))

(declare-fun res!2668935 () Bool)

(assert (=> d!2039333 (=> (not res!2668935) (not e!3938146))))

(declare-fun content!12454 (List!65426) (InoxSet C!33020))

(assert (=> d!2039333 (= res!2668935 (= (content!12454 lt!2391165) ((_ map or) (content!12454 (++!14457 Nil!65302 (Cons!65302 (h!71750 s!2326) Nil!65302))) (content!12454 (t!379058 s!2326)))))))

(assert (=> d!2039333 (= lt!2391165 e!3938145)))

(declare-fun c!1191481 () Bool)

(assert (=> d!2039333 (= c!1191481 ((_ is Nil!65302) (++!14457 Nil!65302 (Cons!65302 (h!71750 s!2326) Nil!65302))))))

(assert (=> d!2039333 (= (++!14457 (++!14457 Nil!65302 (Cons!65302 (h!71750 s!2326) Nil!65302)) (t!379058 s!2326)) lt!2391165)))

(declare-fun b!6498944 () Bool)

(assert (=> b!6498944 (= e!3938145 (Cons!65302 (h!71750 (++!14457 Nil!65302 (Cons!65302 (h!71750 s!2326) Nil!65302))) (++!14457 (t!379058 (++!14457 Nil!65302 (Cons!65302 (h!71750 s!2326) Nil!65302))) (t!379058 s!2326))))))

(declare-fun b!6498946 () Bool)

(assert (=> b!6498946 (= e!3938146 (or (not (= (t!379058 s!2326) Nil!65302)) (= lt!2391165 (++!14457 Nil!65302 (Cons!65302 (h!71750 s!2326) Nil!65302)))))))

(assert (= (and d!2039333 c!1191481) b!6498943))

(assert (= (and d!2039333 (not c!1191481)) b!6498944))

(assert (= (and d!2039333 res!2668935) b!6498945))

(assert (= (and b!6498945 res!2668936) b!6498946))

(declare-fun m!7287120 () Bool)

(assert (=> b!6498945 m!7287120))

(assert (=> b!6498945 m!7286280))

(declare-fun m!7287122 () Bool)

(assert (=> b!6498945 m!7287122))

(declare-fun m!7287124 () Bool)

(assert (=> b!6498945 m!7287124))

(declare-fun m!7287126 () Bool)

(assert (=> d!2039333 m!7287126))

(assert (=> d!2039333 m!7286280))

(declare-fun m!7287128 () Bool)

(assert (=> d!2039333 m!7287128))

(declare-fun m!7287130 () Bool)

(assert (=> d!2039333 m!7287130))

(declare-fun m!7287132 () Bool)

(assert (=> b!6498944 m!7287132))

(assert (=> b!6498066 d!2039333))

(declare-fun b!6498949 () Bool)

(declare-fun res!2668938 () Bool)

(declare-fun e!3938148 () Bool)

(assert (=> b!6498949 (=> (not res!2668938) (not e!3938148))))

(declare-fun lt!2391166 () List!65426)

(assert (=> b!6498949 (= res!2668938 (= (size!40434 lt!2391166) (+ (size!40434 Nil!65302) (size!40434 (Cons!65302 (h!71750 s!2326) Nil!65302)))))))

(declare-fun b!6498947 () Bool)

(declare-fun e!3938147 () List!65426)

(assert (=> b!6498947 (= e!3938147 (Cons!65302 (h!71750 s!2326) Nil!65302))))

(declare-fun d!2039335 () Bool)

(assert (=> d!2039335 e!3938148))

(declare-fun res!2668937 () Bool)

(assert (=> d!2039335 (=> (not res!2668937) (not e!3938148))))

(assert (=> d!2039335 (= res!2668937 (= (content!12454 lt!2391166) ((_ map or) (content!12454 Nil!65302) (content!12454 (Cons!65302 (h!71750 s!2326) Nil!65302)))))))

(assert (=> d!2039335 (= lt!2391166 e!3938147)))

(declare-fun c!1191482 () Bool)

(assert (=> d!2039335 (= c!1191482 ((_ is Nil!65302) Nil!65302))))

(assert (=> d!2039335 (= (++!14457 Nil!65302 (Cons!65302 (h!71750 s!2326) Nil!65302)) lt!2391166)))

(declare-fun b!6498948 () Bool)

(assert (=> b!6498948 (= e!3938147 (Cons!65302 (h!71750 Nil!65302) (++!14457 (t!379058 Nil!65302) (Cons!65302 (h!71750 s!2326) Nil!65302))))))

(declare-fun b!6498950 () Bool)

(assert (=> b!6498950 (= e!3938148 (or (not (= (Cons!65302 (h!71750 s!2326) Nil!65302) Nil!65302)) (= lt!2391166 Nil!65302)))))

(assert (= (and d!2039335 c!1191482) b!6498947))

(assert (= (and d!2039335 (not c!1191482)) b!6498948))

(assert (= (and d!2039335 res!2668937) b!6498949))

(assert (= (and b!6498949 res!2668938) b!6498950))

(declare-fun m!7287134 () Bool)

(assert (=> b!6498949 m!7287134))

(declare-fun m!7287136 () Bool)

(assert (=> b!6498949 m!7287136))

(declare-fun m!7287138 () Bool)

(assert (=> b!6498949 m!7287138))

(declare-fun m!7287140 () Bool)

(assert (=> d!2039335 m!7287140))

(declare-fun m!7287142 () Bool)

(assert (=> d!2039335 m!7287142))

(declare-fun m!7287144 () Bool)

(assert (=> d!2039335 m!7287144))

(declare-fun m!7287146 () Bool)

(assert (=> b!6498948 m!7287146))

(assert (=> b!6498066 d!2039335))

(declare-fun d!2039337 () Bool)

(assert (=> d!2039337 (= (++!14457 (++!14457 Nil!65302 (Cons!65302 (h!71750 s!2326) Nil!65302)) (t!379058 s!2326)) s!2326)))

(declare-fun lt!2391169 () Unit!158835)

(declare-fun choose!48237 (List!65426 C!33020 List!65426 List!65426) Unit!158835)

(assert (=> d!2039337 (= lt!2391169 (choose!48237 Nil!65302 (h!71750 s!2326) (t!379058 s!2326) s!2326))))

(assert (=> d!2039337 (= (++!14457 Nil!65302 (Cons!65302 (h!71750 s!2326) (t!379058 s!2326))) s!2326)))

(assert (=> d!2039337 (= (lemmaMoveElementToOtherListKeepsConcatEq!2528 Nil!65302 (h!71750 s!2326) (t!379058 s!2326) s!2326) lt!2391169)))

(declare-fun bs!1650885 () Bool)

(assert (= bs!1650885 d!2039337))

(assert (=> bs!1650885 m!7286280))

(assert (=> bs!1650885 m!7286280))

(assert (=> bs!1650885 m!7286282))

(declare-fun m!7287148 () Bool)

(assert (=> bs!1650885 m!7287148))

(declare-fun m!7287150 () Bool)

(assert (=> bs!1650885 m!7287150))

(assert (=> b!6498066 d!2039337))

(declare-fun b!6498951 () Bool)

(declare-fun e!3938152 () Bool)

(declare-fun lt!2391170 () Option!16266)

(assert (=> b!6498951 (= e!3938152 (not (isDefined!12969 lt!2391170)))))

(declare-fun b!6498952 () Bool)

(declare-fun e!3938151 () Option!16266)

(assert (=> b!6498952 (= e!3938151 None!16265)))

(declare-fun b!6498953 () Bool)

(declare-fun e!3938149 () Bool)

(assert (=> b!6498953 (= e!3938149 (= (++!14457 (_1!36657 (get!22646 lt!2391170)) (_2!36657 (get!22646 lt!2391170))) s!2326))))

(declare-fun b!6498954 () Bool)

(declare-fun e!3938150 () Option!16266)

(assert (=> b!6498954 (= e!3938150 (Some!16265 (tuple2!66709 (++!14457 Nil!65302 (Cons!65302 (h!71750 s!2326) Nil!65302)) (t!379058 s!2326))))))

(declare-fun b!6498955 () Bool)

(declare-fun e!3938153 () Bool)

(assert (=> b!6498955 (= e!3938153 (matchR!8558 (regTwo!33262 r!7292) (t!379058 s!2326)))))

(declare-fun d!2039339 () Bool)

(assert (=> d!2039339 e!3938152))

(declare-fun res!2668941 () Bool)

(assert (=> d!2039339 (=> res!2668941 e!3938152)))

(assert (=> d!2039339 (= res!2668941 e!3938149)))

(declare-fun res!2668939 () Bool)

(assert (=> d!2039339 (=> (not res!2668939) (not e!3938149))))

(assert (=> d!2039339 (= res!2668939 (isDefined!12969 lt!2391170))))

(assert (=> d!2039339 (= lt!2391170 e!3938150)))

(declare-fun c!1191483 () Bool)

(assert (=> d!2039339 (= c!1191483 e!3938153)))

(declare-fun res!2668943 () Bool)

(assert (=> d!2039339 (=> (not res!2668943) (not e!3938153))))

(assert (=> d!2039339 (= res!2668943 (matchR!8558 (regOne!33262 r!7292) (++!14457 Nil!65302 (Cons!65302 (h!71750 s!2326) Nil!65302))))))

(assert (=> d!2039339 (validRegex!8111 (regOne!33262 r!7292))))

(assert (=> d!2039339 (= (findConcatSeparation!2680 (regOne!33262 r!7292) (regTwo!33262 r!7292) (++!14457 Nil!65302 (Cons!65302 (h!71750 s!2326) Nil!65302)) (t!379058 s!2326) s!2326) lt!2391170)))

(declare-fun b!6498956 () Bool)

(declare-fun lt!2391172 () Unit!158835)

(declare-fun lt!2391171 () Unit!158835)

(assert (=> b!6498956 (= lt!2391172 lt!2391171)))

(assert (=> b!6498956 (= (++!14457 (++!14457 (++!14457 Nil!65302 (Cons!65302 (h!71750 s!2326) Nil!65302)) (Cons!65302 (h!71750 (t!379058 s!2326)) Nil!65302)) (t!379058 (t!379058 s!2326))) s!2326)))

(assert (=> b!6498956 (= lt!2391171 (lemmaMoveElementToOtherListKeepsConcatEq!2528 (++!14457 Nil!65302 (Cons!65302 (h!71750 s!2326) Nil!65302)) (h!71750 (t!379058 s!2326)) (t!379058 (t!379058 s!2326)) s!2326))))

(assert (=> b!6498956 (= e!3938151 (findConcatSeparation!2680 (regOne!33262 r!7292) (regTwo!33262 r!7292) (++!14457 (++!14457 Nil!65302 (Cons!65302 (h!71750 s!2326) Nil!65302)) (Cons!65302 (h!71750 (t!379058 s!2326)) Nil!65302)) (t!379058 (t!379058 s!2326)) s!2326))))

(declare-fun b!6498957 () Bool)

(declare-fun res!2668940 () Bool)

(assert (=> b!6498957 (=> (not res!2668940) (not e!3938149))))

(assert (=> b!6498957 (= res!2668940 (matchR!8558 (regTwo!33262 r!7292) (_2!36657 (get!22646 lt!2391170))))))

(declare-fun b!6498958 () Bool)

(assert (=> b!6498958 (= e!3938150 e!3938151)))

(declare-fun c!1191484 () Bool)

(assert (=> b!6498958 (= c!1191484 ((_ is Nil!65302) (t!379058 s!2326)))))

(declare-fun b!6498959 () Bool)

(declare-fun res!2668942 () Bool)

(assert (=> b!6498959 (=> (not res!2668942) (not e!3938149))))

(assert (=> b!6498959 (= res!2668942 (matchR!8558 (regOne!33262 r!7292) (_1!36657 (get!22646 lt!2391170))))))

(assert (= (and d!2039339 res!2668943) b!6498955))

(assert (= (and d!2039339 c!1191483) b!6498954))

(assert (= (and d!2039339 (not c!1191483)) b!6498958))

(assert (= (and b!6498958 c!1191484) b!6498952))

(assert (= (and b!6498958 (not c!1191484)) b!6498956))

(assert (= (and d!2039339 res!2668939) b!6498959))

(assert (= (and b!6498959 res!2668942) b!6498957))

(assert (= (and b!6498957 res!2668940) b!6498953))

(assert (= (and d!2039339 (not res!2668941)) b!6498951))

(declare-fun m!7287152 () Bool)

(assert (=> b!6498959 m!7287152))

(declare-fun m!7287154 () Bool)

(assert (=> b!6498959 m!7287154))

(assert (=> b!6498957 m!7287152))

(declare-fun m!7287156 () Bool)

(assert (=> b!6498957 m!7287156))

(assert (=> b!6498953 m!7287152))

(declare-fun m!7287158 () Bool)

(assert (=> b!6498953 m!7287158))

(assert (=> b!6498956 m!7286280))

(declare-fun m!7287160 () Bool)

(assert (=> b!6498956 m!7287160))

(assert (=> b!6498956 m!7287160))

(declare-fun m!7287162 () Bool)

(assert (=> b!6498956 m!7287162))

(assert (=> b!6498956 m!7286280))

(declare-fun m!7287164 () Bool)

(assert (=> b!6498956 m!7287164))

(assert (=> b!6498956 m!7287160))

(declare-fun m!7287166 () Bool)

(assert (=> b!6498956 m!7287166))

(declare-fun m!7287168 () Bool)

(assert (=> b!6498951 m!7287168))

(assert (=> d!2039339 m!7287168))

(assert (=> d!2039339 m!7286280))

(declare-fun m!7287170 () Bool)

(assert (=> d!2039339 m!7287170))

(assert (=> d!2039339 m!7286292))

(declare-fun m!7287172 () Bool)

(assert (=> b!6498955 m!7287172))

(assert (=> b!6498066 d!2039339))

(declare-fun d!2039341 () Bool)

(assert (=> d!2039341 (= (nullable!6368 (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343))))) (nullableFct!2304 (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343))))))))

(declare-fun bs!1650886 () Bool)

(assert (= bs!1650886 d!2039341))

(declare-fun m!7287174 () Bool)

(assert (=> bs!1650886 m!7287174))

(assert (=> b!6498109 d!2039341))

(declare-fun d!2039343 () Bool)

(assert (=> d!2039343 (= (Exists!3445 lambda!360046) (choose!48233 lambda!360046))))

(declare-fun bs!1650887 () Bool)

(assert (= bs!1650887 d!2039343))

(declare-fun m!7287176 () Bool)

(assert (=> bs!1650887 m!7287176))

(assert (=> d!2038973 d!2039343))

(declare-fun d!2039345 () Bool)

(assert (=> d!2039345 (= (Exists!3445 lambda!360047) (choose!48233 lambda!360047))))

(declare-fun bs!1650888 () Bool)

(assert (= bs!1650888 d!2039345))

(declare-fun m!7287178 () Bool)

(assert (=> bs!1650888 m!7287178))

(assert (=> d!2038973 d!2039345))

(declare-fun bs!1650889 () Bool)

(declare-fun d!2039347 () Bool)

(assert (= bs!1650889 (and d!2039347 b!6498918)))

(declare-fun lambda!360108 () Int)

(assert (=> bs!1650889 (not (= lambda!360108 lambda!360101))))

(declare-fun bs!1650890 () Bool)

(assert (= bs!1650890 (and d!2039347 b!6498921)))

(assert (=> bs!1650890 (not (= lambda!360108 lambda!360102))))

(declare-fun bs!1650891 () Bool)

(assert (= bs!1650891 (and d!2039347 b!6497365)))

(assert (=> bs!1650891 (= lambda!360108 lambda!359988)))

(declare-fun bs!1650892 () Bool)

(assert (= bs!1650892 (and d!2039347 b!6498018)))

(assert (=> bs!1650892 (not (= lambda!360108 lambda!360034))))

(declare-fun bs!1650893 () Bool)

(assert (= bs!1650893 (and d!2039347 d!2038973)))

(assert (=> bs!1650893 (not (= lambda!360108 lambda!360047))))

(assert (=> bs!1650893 (= lambda!360108 lambda!360046)))

(declare-fun bs!1650894 () Bool)

(assert (= bs!1650894 (and d!2039347 d!2038971)))

(assert (=> bs!1650894 (= lambda!360108 lambda!360041)))

(declare-fun bs!1650895 () Bool)

(assert (= bs!1650895 (and d!2039347 b!6498010)))

(assert (=> bs!1650895 (not (= lambda!360108 lambda!360033))))

(declare-fun bs!1650896 () Bool)

(assert (= bs!1650896 (and d!2039347 b!6498007)))

(assert (=> bs!1650896 (not (= lambda!360108 lambda!360032))))

(declare-fun bs!1650897 () Bool)

(assert (= bs!1650897 (and d!2039347 b!6498021)))

(assert (=> bs!1650897 (not (= lambda!360108 lambda!360035))))

(assert (=> bs!1650891 (not (= lambda!360108 lambda!359989))))

(assert (=> d!2039347 true))

(assert (=> d!2039347 true))

(assert (=> d!2039347 true))

(declare-fun lambda!360109 () Int)

(assert (=> bs!1650889 (not (= lambda!360109 lambda!360101))))

(assert (=> bs!1650890 (= (and (= (regOne!33262 r!7292) (regOne!33262 (regOne!33263 lt!2391008))) (= (regTwo!33262 r!7292) (regTwo!33262 (regOne!33263 lt!2391008)))) (= lambda!360109 lambda!360102))))

(assert (=> bs!1650891 (not (= lambda!360109 lambda!359988))))

(assert (=> bs!1650892 (not (= lambda!360109 lambda!360034))))

(assert (=> bs!1650893 (= lambda!360109 lambda!360047)))

(assert (=> bs!1650893 (not (= lambda!360109 lambda!360046))))

(assert (=> bs!1650894 (not (= lambda!360109 lambda!360041))))

(declare-fun bs!1650898 () Bool)

(assert (= bs!1650898 d!2039347))

(assert (=> bs!1650898 (not (= lambda!360109 lambda!360108))))

(assert (=> bs!1650895 (= (and (= (regOne!33262 r!7292) (regOne!33262 lt!2391008)) (= (regTwo!33262 r!7292) (regTwo!33262 lt!2391008))) (= lambda!360109 lambda!360033))))

(assert (=> bs!1650896 (not (= lambda!360109 lambda!360032))))

(assert (=> bs!1650897 (= lambda!360109 lambda!360035)))

(assert (=> bs!1650891 (= lambda!360109 lambda!359989)))

(assert (=> d!2039347 true))

(assert (=> d!2039347 true))

(assert (=> d!2039347 true))

(assert (=> d!2039347 (= (Exists!3445 lambda!360108) (Exists!3445 lambda!360109))))

(assert (=> d!2039347 true))

(declare-fun _$90!2371 () Unit!158835)

(assert (=> d!2039347 (= (choose!48235 (regOne!33262 r!7292) (regTwo!33262 r!7292) s!2326) _$90!2371)))

(declare-fun m!7287180 () Bool)

(assert (=> bs!1650898 m!7287180))

(declare-fun m!7287182 () Bool)

(assert (=> bs!1650898 m!7287182))

(assert (=> d!2038973 d!2039347))

(declare-fun b!6498968 () Bool)

(declare-fun e!3938161 () Bool)

(declare-fun e!3938158 () Bool)

(assert (=> b!6498968 (= e!3938161 e!3938158)))

(declare-fun c!1191486 () Bool)

(assert (=> b!6498968 (= c!1191486 ((_ is Union!16375) (regOne!33262 r!7292)))))

(declare-fun b!6498969 () Bool)

(declare-fun e!3938159 () Bool)

(assert (=> b!6498969 (= e!3938161 e!3938159)))

(declare-fun res!2668955 () Bool)

(assert (=> b!6498969 (= res!2668955 (not (nullable!6368 (reg!16704 (regOne!33262 r!7292)))))))

(assert (=> b!6498969 (=> (not res!2668955) (not e!3938159))))

(declare-fun b!6498970 () Bool)

(declare-fun e!3938164 () Bool)

(declare-fun e!3938163 () Bool)

(assert (=> b!6498970 (= e!3938164 e!3938163)))

(declare-fun res!2668953 () Bool)

(assert (=> b!6498970 (=> (not res!2668953) (not e!3938163))))

(declare-fun call!563061 () Bool)

(assert (=> b!6498970 (= res!2668953 call!563061)))

(declare-fun b!6498971 () Bool)

(declare-fun res!2668954 () Bool)

(assert (=> b!6498971 (=> res!2668954 e!3938164)))

(assert (=> b!6498971 (= res!2668954 (not ((_ is Concat!25220) (regOne!33262 r!7292))))))

(assert (=> b!6498971 (= e!3938158 e!3938164)))

(declare-fun d!2039349 () Bool)

(declare-fun res!2668956 () Bool)

(declare-fun e!3938162 () Bool)

(assert (=> d!2039349 (=> res!2668956 e!3938162)))

(assert (=> d!2039349 (= res!2668956 ((_ is ElementMatch!16375) (regOne!33262 r!7292)))))

(assert (=> d!2039349 (= (validRegex!8111 (regOne!33262 r!7292)) e!3938162)))

(declare-fun call!563062 () Bool)

(declare-fun c!1191485 () Bool)

(declare-fun bm!563056 () Bool)

(assert (=> bm!563056 (= call!563062 (validRegex!8111 (ite c!1191485 (reg!16704 (regOne!33262 r!7292)) (ite c!1191486 (regOne!33263 (regOne!33262 r!7292)) (regOne!33262 (regOne!33262 r!7292))))))))

(declare-fun b!6498972 () Bool)

(assert (=> b!6498972 (= e!3938159 call!563062)))

(declare-fun b!6498973 () Bool)

(declare-fun e!3938160 () Bool)

(declare-fun call!563063 () Bool)

(assert (=> b!6498973 (= e!3938160 call!563063)))

(declare-fun b!6498974 () Bool)

(assert (=> b!6498974 (= e!3938163 call!563063)))

(declare-fun bm!563057 () Bool)

(assert (=> bm!563057 (= call!563063 (validRegex!8111 (ite c!1191486 (regTwo!33263 (regOne!33262 r!7292)) (regTwo!33262 (regOne!33262 r!7292)))))))

(declare-fun b!6498975 () Bool)

(declare-fun res!2668952 () Bool)

(assert (=> b!6498975 (=> (not res!2668952) (not e!3938160))))

(assert (=> b!6498975 (= res!2668952 call!563061)))

(assert (=> b!6498975 (= e!3938158 e!3938160)))

(declare-fun b!6498976 () Bool)

(assert (=> b!6498976 (= e!3938162 e!3938161)))

(assert (=> b!6498976 (= c!1191485 ((_ is Star!16375) (regOne!33262 r!7292)))))

(declare-fun bm!563058 () Bool)

(assert (=> bm!563058 (= call!563061 call!563062)))

(assert (= (and d!2039349 (not res!2668956)) b!6498976))

(assert (= (and b!6498976 c!1191485) b!6498969))

(assert (= (and b!6498976 (not c!1191485)) b!6498968))

(assert (= (and b!6498969 res!2668955) b!6498972))

(assert (= (and b!6498968 c!1191486) b!6498975))

(assert (= (and b!6498968 (not c!1191486)) b!6498971))

(assert (= (and b!6498975 res!2668952) b!6498973))

(assert (= (and b!6498971 (not res!2668954)) b!6498970))

(assert (= (and b!6498970 res!2668953) b!6498974))

(assert (= (or b!6498973 b!6498974) bm!563057))

(assert (= (or b!6498975 b!6498970) bm!563058))

(assert (= (or b!6498972 bm!563058) bm!563056))

(declare-fun m!7287184 () Bool)

(assert (=> b!6498969 m!7287184))

(declare-fun m!7287186 () Bool)

(assert (=> bm!563056 m!7287186))

(declare-fun m!7287188 () Bool)

(assert (=> bm!563057 m!7287188))

(assert (=> d!2038973 d!2039349))

(declare-fun bm!563059 () Bool)

(declare-fun call!563064 () (InoxSet Context!11518))

(assert (=> bm!563059 (= call!563064 (derivationStepZipperDown!1623 (h!71748 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343)))))))))) (Context!11519 (t!379056 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343))))))))))) (h!71750 s!2326)))))

(declare-fun b!6498977 () Bool)

(declare-fun e!3938166 () Bool)

(assert (=> b!6498977 (= e!3938166 (nullable!6368 (h!71748 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343))))))))))))))

(declare-fun b!6498978 () Bool)

(declare-fun e!3938165 () (InoxSet Context!11518))

(declare-fun e!3938167 () (InoxSet Context!11518))

(assert (=> b!6498978 (= e!3938165 e!3938167)))

(declare-fun c!1191488 () Bool)

(assert (=> b!6498978 (= c!1191488 ((_ is Cons!65300) (exprs!6259 (Context!11519 (t!379056 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343)))))))))))))

(declare-fun d!2039351 () Bool)

(declare-fun c!1191487 () Bool)

(assert (=> d!2039351 (= c!1191487 e!3938166)))

(declare-fun res!2668957 () Bool)

(assert (=> d!2039351 (=> (not res!2668957) (not e!3938166))))

(assert (=> d!2039351 (= res!2668957 ((_ is Cons!65300) (exprs!6259 (Context!11519 (t!379056 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343)))))))))))))

(assert (=> d!2039351 (= (derivationStepZipperUp!1549 (Context!11519 (t!379056 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343)))))))) (h!71750 s!2326)) e!3938165)))

(declare-fun b!6498979 () Bool)

(assert (=> b!6498979 (= e!3938167 call!563064)))

(declare-fun b!6498980 () Bool)

(assert (=> b!6498980 (= e!3938165 ((_ map or) call!563064 (derivationStepZipperUp!1549 (Context!11519 (t!379056 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343))))))))))) (h!71750 s!2326))))))

(declare-fun b!6498981 () Bool)

(assert (=> b!6498981 (= e!3938167 ((as const (Array Context!11518 Bool)) false))))

(assert (= (and d!2039351 res!2668957) b!6498977))

(assert (= (and d!2039351 c!1191487) b!6498980))

(assert (= (and d!2039351 (not c!1191487)) b!6498978))

(assert (= (and b!6498978 c!1191488) b!6498979))

(assert (= (and b!6498978 (not c!1191488)) b!6498981))

(assert (= (or b!6498980 b!6498979) bm!563059))

(declare-fun m!7287190 () Bool)

(assert (=> bm!563059 m!7287190))

(declare-fun m!7287192 () Bool)

(assert (=> b!6498977 m!7287192))

(declare-fun m!7287194 () Bool)

(assert (=> b!6498980 m!7287194))

(assert (=> b!6498101 d!2039351))

(declare-fun b!6498996 () Bool)

(declare-fun e!3938182 () Bool)

(declare-fun e!3938180 () Bool)

(assert (=> b!6498996 (= e!3938182 e!3938180)))

(declare-fun res!2668970 () Bool)

(assert (=> b!6498996 (=> (not res!2668970) (not e!3938180))))

(assert (=> b!6498996 (= res!2668970 (and (not ((_ is EmptyLang!16375) (h!71748 (exprs!6259 (h!71749 zl!343))))) (not ((_ is ElementMatch!16375) (h!71748 (exprs!6259 (h!71749 zl!343)))))))))

(declare-fun b!6498997 () Bool)

(declare-fun e!3938181 () Bool)

(declare-fun e!3938185 () Bool)

(assert (=> b!6498997 (= e!3938181 e!3938185)))

(declare-fun res!2668971 () Bool)

(declare-fun call!563070 () Bool)

(assert (=> b!6498997 (= res!2668971 call!563070)))

(assert (=> b!6498997 (=> res!2668971 e!3938185)))

(declare-fun bm!563064 () Bool)

(declare-fun call!563069 () Bool)

(declare-fun c!1191491 () Bool)

(assert (=> bm!563064 (= call!563069 (nullable!6368 (ite c!1191491 (regTwo!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (regTwo!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))))))))

(declare-fun b!6498998 () Bool)

(declare-fun e!3938184 () Bool)

(assert (=> b!6498998 (= e!3938181 e!3938184)))

(declare-fun res!2668968 () Bool)

(assert (=> b!6498998 (= res!2668968 call!563070)))

(assert (=> b!6498998 (=> (not res!2668968) (not e!3938184))))

(declare-fun b!6498999 () Bool)

(declare-fun e!3938183 () Bool)

(assert (=> b!6498999 (= e!3938180 e!3938183)))

(declare-fun res!2668972 () Bool)

(assert (=> b!6498999 (=> res!2668972 e!3938183)))

(assert (=> b!6498999 (= res!2668972 ((_ is Star!16375) (h!71748 (exprs!6259 (h!71749 zl!343)))))))

(declare-fun d!2039353 () Bool)

(declare-fun res!2668969 () Bool)

(assert (=> d!2039353 (=> res!2668969 e!3938182)))

(assert (=> d!2039353 (= res!2668969 ((_ is EmptyExpr!16375) (h!71748 (exprs!6259 (h!71749 zl!343)))))))

(assert (=> d!2039353 (= (nullableFct!2304 (h!71748 (exprs!6259 (h!71749 zl!343)))) e!3938182)))

(declare-fun b!6499000 () Bool)

(assert (=> b!6499000 (= e!3938185 call!563069)))

(declare-fun b!6499001 () Bool)

(assert (=> b!6499001 (= e!3938183 e!3938181)))

(assert (=> b!6499001 (= c!1191491 ((_ is Union!16375) (h!71748 (exprs!6259 (h!71749 zl!343)))))))

(declare-fun bm!563065 () Bool)

(assert (=> bm!563065 (= call!563070 (nullable!6368 (ite c!1191491 (regOne!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))))))))

(declare-fun b!6499002 () Bool)

(assert (=> b!6499002 (= e!3938184 call!563069)))

(assert (= (and d!2039353 (not res!2668969)) b!6498996))

(assert (= (and b!6498996 res!2668970) b!6498999))

(assert (= (and b!6498999 (not res!2668972)) b!6499001))

(assert (= (and b!6499001 c!1191491) b!6498997))

(assert (= (and b!6499001 (not c!1191491)) b!6498998))

(assert (= (and b!6498997 (not res!2668971)) b!6499000))

(assert (= (and b!6498998 res!2668968) b!6499002))

(assert (= (or b!6499000 b!6499002) bm!563064))

(assert (= (or b!6498997 b!6498998) bm!563065))

(declare-fun m!7287196 () Bool)

(assert (=> bm!563064 m!7287196))

(declare-fun m!7287198 () Bool)

(assert (=> bm!563065 m!7287198))

(assert (=> d!2039001 d!2039353))

(declare-fun d!2039355 () Bool)

(assert (=> d!2039355 (= (isEmpty!37501 (t!379058 s!2326)) ((_ is Nil!65302) (t!379058 s!2326)))))

(assert (=> d!2038977 d!2039355))

(declare-fun b!6499003 () Bool)

(declare-fun e!3938186 () (InoxSet Context!11518))

(assert (=> b!6499003 (= e!3938186 ((as const (Array Context!11518 Bool)) false))))

(declare-fun c!1191493 () Bool)

(declare-fun call!563075 () (InoxSet Context!11518))

(declare-fun call!563071 () List!65424)

(declare-fun c!1191492 () Bool)

(declare-fun c!1191494 () Bool)

(declare-fun bm!563066 () Bool)

(assert (=> bm!563066 (= call!563075 (derivationStepZipperDown!1623 (ite c!1191493 (regOne!33263 (h!71748 (exprs!6259 lt!2391021))) (ite c!1191494 (regTwo!33262 (h!71748 (exprs!6259 lt!2391021))) (ite c!1191492 (regOne!33262 (h!71748 (exprs!6259 lt!2391021))) (reg!16704 (h!71748 (exprs!6259 lt!2391021)))))) (ite (or c!1191493 c!1191494) (Context!11519 (t!379056 (exprs!6259 lt!2391021))) (Context!11519 call!563071)) (h!71750 s!2326)))))

(declare-fun b!6499004 () Bool)

(declare-fun e!3938191 () (InoxSet Context!11518))

(declare-fun e!3938189 () (InoxSet Context!11518))

(assert (=> b!6499004 (= e!3938191 e!3938189)))

(assert (=> b!6499004 (= c!1191493 ((_ is Union!16375) (h!71748 (exprs!6259 lt!2391021))))))

(declare-fun bm!563067 () Bool)

(declare-fun call!563072 () List!65424)

(assert (=> bm!563067 (= call!563071 call!563072)))

(declare-fun d!2039357 () Bool)

(declare-fun c!1191495 () Bool)

(assert (=> d!2039357 (= c!1191495 (and ((_ is ElementMatch!16375) (h!71748 (exprs!6259 lt!2391021))) (= (c!1191063 (h!71748 (exprs!6259 lt!2391021))) (h!71750 s!2326))))))

(assert (=> d!2039357 (= (derivationStepZipperDown!1623 (h!71748 (exprs!6259 lt!2391021)) (Context!11519 (t!379056 (exprs!6259 lt!2391021))) (h!71750 s!2326)) e!3938191)))

(declare-fun b!6499005 () Bool)

(declare-fun call!563076 () (InoxSet Context!11518))

(assert (=> b!6499005 (= e!3938189 ((_ map or) call!563075 call!563076))))

(declare-fun bm!563068 () Bool)

(assert (=> bm!563068 (= call!563072 ($colon$colon!2226 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 lt!2391021)))) (ite (or c!1191494 c!1191492) (regTwo!33262 (h!71748 (exprs!6259 lt!2391021))) (h!71748 (exprs!6259 lt!2391021)))))))

(declare-fun b!6499006 () Bool)

(declare-fun e!3938190 () Bool)

(assert (=> b!6499006 (= c!1191494 e!3938190)))

(declare-fun res!2668973 () Bool)

(assert (=> b!6499006 (=> (not res!2668973) (not e!3938190))))

(assert (=> b!6499006 (= res!2668973 ((_ is Concat!25220) (h!71748 (exprs!6259 lt!2391021))))))

(declare-fun e!3938187 () (InoxSet Context!11518))

(assert (=> b!6499006 (= e!3938189 e!3938187)))

(declare-fun b!6499007 () Bool)

(declare-fun e!3938188 () (InoxSet Context!11518))

(assert (=> b!6499007 (= e!3938187 e!3938188)))

(assert (=> b!6499007 (= c!1191492 ((_ is Concat!25220) (h!71748 (exprs!6259 lt!2391021))))))

(declare-fun b!6499008 () Bool)

(declare-fun call!563073 () (InoxSet Context!11518))

(assert (=> b!6499008 (= e!3938188 call!563073)))

(declare-fun b!6499009 () Bool)

(assert (=> b!6499009 (= e!3938190 (nullable!6368 (regOne!33262 (h!71748 (exprs!6259 lt!2391021)))))))

(declare-fun b!6499010 () Bool)

(declare-fun call!563074 () (InoxSet Context!11518))

(assert (=> b!6499010 (= e!3938187 ((_ map or) call!563076 call!563074))))

(declare-fun bm!563069 () Bool)

(assert (=> bm!563069 (= call!563076 (derivationStepZipperDown!1623 (ite c!1191493 (regTwo!33263 (h!71748 (exprs!6259 lt!2391021))) (regOne!33262 (h!71748 (exprs!6259 lt!2391021)))) (ite c!1191493 (Context!11519 (t!379056 (exprs!6259 lt!2391021))) (Context!11519 call!563072)) (h!71750 s!2326)))))

(declare-fun b!6499011 () Bool)

(assert (=> b!6499011 (= e!3938191 (store ((as const (Array Context!11518 Bool)) false) (Context!11519 (t!379056 (exprs!6259 lt!2391021))) true))))

(declare-fun bm!563070 () Bool)

(assert (=> bm!563070 (= call!563073 call!563074)))

(declare-fun b!6499012 () Bool)

(declare-fun c!1191496 () Bool)

(assert (=> b!6499012 (= c!1191496 ((_ is Star!16375) (h!71748 (exprs!6259 lt!2391021))))))

(assert (=> b!6499012 (= e!3938188 e!3938186)))

(declare-fun b!6499013 () Bool)

(assert (=> b!6499013 (= e!3938186 call!563073)))

(declare-fun bm!563071 () Bool)

(assert (=> bm!563071 (= call!563074 call!563075)))

(assert (= (and d!2039357 c!1191495) b!6499011))

(assert (= (and d!2039357 (not c!1191495)) b!6499004))

(assert (= (and b!6499004 c!1191493) b!6499005))

(assert (= (and b!6499004 (not c!1191493)) b!6499006))

(assert (= (and b!6499006 res!2668973) b!6499009))

(assert (= (and b!6499006 c!1191494) b!6499010))

(assert (= (and b!6499006 (not c!1191494)) b!6499007))

(assert (= (and b!6499007 c!1191492) b!6499008))

(assert (= (and b!6499007 (not c!1191492)) b!6499012))

(assert (= (and b!6499012 c!1191496) b!6499013))

(assert (= (and b!6499012 (not c!1191496)) b!6499003))

(assert (= (or b!6499008 b!6499013) bm!563067))

(assert (= (or b!6499008 b!6499013) bm!563070))

(assert (= (or b!6499010 bm!563067) bm!563068))

(assert (= (or b!6499010 bm!563070) bm!563071))

(assert (= (or b!6499005 b!6499010) bm!563069))

(assert (= (or b!6499005 bm!563071) bm!563066))

(declare-fun m!7287200 () Bool)

(assert (=> bm!563069 m!7287200))

(declare-fun m!7287202 () Bool)

(assert (=> b!6499009 m!7287202))

(declare-fun m!7287204 () Bool)

(assert (=> bm!563066 m!7287204))

(declare-fun m!7287206 () Bool)

(assert (=> b!6499011 m!7287206))

(declare-fun m!7287208 () Bool)

(assert (=> bm!563068 m!7287208))

(assert (=> bm!562916 d!2039357))

(declare-fun d!2039359 () Bool)

(assert (=> d!2039359 (= (isDefined!12969 lt!2391111) (not (isEmpty!37502 lt!2391111)))))

(declare-fun bs!1650899 () Bool)

(assert (= bs!1650899 d!2039359))

(declare-fun m!7287210 () Bool)

(assert (=> bs!1650899 m!7287210))

(assert (=> d!2038965 d!2039359))

(declare-fun b!6499014 () Bool)

(declare-fun res!2668981 () Bool)

(declare-fun e!3938194 () Bool)

(assert (=> b!6499014 (=> res!2668981 e!3938194)))

(assert (=> b!6499014 (= res!2668981 (not ((_ is ElementMatch!16375) (regOne!33262 r!7292))))))

(declare-fun e!3938193 () Bool)

(assert (=> b!6499014 (= e!3938193 e!3938194)))

(declare-fun b!6499015 () Bool)

(declare-fun e!3938195 () Bool)

(assert (=> b!6499015 (= e!3938195 (not (= (head!13221 Nil!65302) (c!1191063 (regOne!33262 r!7292)))))))

(declare-fun bm!563072 () Bool)

(declare-fun call!563077 () Bool)

(assert (=> bm!563072 (= call!563077 (isEmpty!37501 Nil!65302))))

(declare-fun b!6499016 () Bool)

(declare-fun res!2668975 () Bool)

(assert (=> b!6499016 (=> res!2668975 e!3938194)))

(declare-fun e!3938197 () Bool)

(assert (=> b!6499016 (= res!2668975 e!3938197)))

(declare-fun res!2668977 () Bool)

(assert (=> b!6499016 (=> (not res!2668977) (not e!3938197))))

(declare-fun lt!2391173 () Bool)

(assert (=> b!6499016 (= res!2668977 lt!2391173)))

(declare-fun b!6499017 () Bool)

(declare-fun res!2668978 () Bool)

(assert (=> b!6499017 (=> (not res!2668978) (not e!3938197))))

(assert (=> b!6499017 (= res!2668978 (not call!563077))))

(declare-fun b!6499018 () Bool)

(declare-fun e!3938198 () Bool)

(assert (=> b!6499018 (= e!3938198 (nullable!6368 (regOne!33262 r!7292)))))

(declare-fun b!6499019 () Bool)

(declare-fun e!3938196 () Bool)

(assert (=> b!6499019 (= e!3938196 e!3938193)))

(declare-fun c!1191497 () Bool)

(assert (=> b!6499019 (= c!1191497 ((_ is EmptyLang!16375) (regOne!33262 r!7292)))))

(declare-fun b!6499020 () Bool)

(assert (=> b!6499020 (= e!3938196 (= lt!2391173 call!563077))))

(declare-fun b!6499021 () Bool)

(declare-fun e!3938192 () Bool)

(assert (=> b!6499021 (= e!3938192 e!3938195)))

(declare-fun res!2668980 () Bool)

(assert (=> b!6499021 (=> res!2668980 e!3938195)))

(assert (=> b!6499021 (= res!2668980 call!563077)))

(declare-fun b!6499023 () Bool)

(assert (=> b!6499023 (= e!3938193 (not lt!2391173))))

(declare-fun d!2039361 () Bool)

(assert (=> d!2039361 e!3938196))

(declare-fun c!1191498 () Bool)

(assert (=> d!2039361 (= c!1191498 ((_ is EmptyExpr!16375) (regOne!33262 r!7292)))))

(assert (=> d!2039361 (= lt!2391173 e!3938198)))

(declare-fun c!1191499 () Bool)

(assert (=> d!2039361 (= c!1191499 (isEmpty!37501 Nil!65302))))

(assert (=> d!2039361 (validRegex!8111 (regOne!33262 r!7292))))

(assert (=> d!2039361 (= (matchR!8558 (regOne!33262 r!7292) Nil!65302) lt!2391173)))

(declare-fun b!6499022 () Bool)

(declare-fun res!2668979 () Bool)

(assert (=> b!6499022 (=> res!2668979 e!3938195)))

(assert (=> b!6499022 (= res!2668979 (not (isEmpty!37501 (tail!12306 Nil!65302))))))

(declare-fun b!6499024 () Bool)

(assert (=> b!6499024 (= e!3938197 (= (head!13221 Nil!65302) (c!1191063 (regOne!33262 r!7292))))))

(declare-fun b!6499025 () Bool)

(assert (=> b!6499025 (= e!3938198 (matchR!8558 (derivativeStep!5069 (regOne!33262 r!7292) (head!13221 Nil!65302)) (tail!12306 Nil!65302)))))

(declare-fun b!6499026 () Bool)

(assert (=> b!6499026 (= e!3938194 e!3938192)))

(declare-fun res!2668974 () Bool)

(assert (=> b!6499026 (=> (not res!2668974) (not e!3938192))))

(assert (=> b!6499026 (= res!2668974 (not lt!2391173))))

(declare-fun b!6499027 () Bool)

(declare-fun res!2668976 () Bool)

(assert (=> b!6499027 (=> (not res!2668976) (not e!3938197))))

(assert (=> b!6499027 (= res!2668976 (isEmpty!37501 (tail!12306 Nil!65302)))))

(assert (= (and d!2039361 c!1191499) b!6499018))

(assert (= (and d!2039361 (not c!1191499)) b!6499025))

(assert (= (and d!2039361 c!1191498) b!6499020))

(assert (= (and d!2039361 (not c!1191498)) b!6499019))

(assert (= (and b!6499019 c!1191497) b!6499023))

(assert (= (and b!6499019 (not c!1191497)) b!6499014))

(assert (= (and b!6499014 (not res!2668981)) b!6499016))

(assert (= (and b!6499016 res!2668977) b!6499017))

(assert (= (and b!6499017 res!2668978) b!6499027))

(assert (= (and b!6499027 res!2668976) b!6499024))

(assert (= (and b!6499016 (not res!2668975)) b!6499026))

(assert (= (and b!6499026 res!2668974) b!6499021))

(assert (= (and b!6499021 (not res!2668980)) b!6499022))

(assert (= (and b!6499022 (not res!2668979)) b!6499015))

(assert (= (or b!6499020 b!6499017 b!6499021) bm!563072))

(declare-fun m!7287212 () Bool)

(assert (=> d!2039361 m!7287212))

(assert (=> d!2039361 m!7286292))

(declare-fun m!7287214 () Bool)

(assert (=> b!6499025 m!7287214))

(assert (=> b!6499025 m!7287214))

(declare-fun m!7287216 () Bool)

(assert (=> b!6499025 m!7287216))

(declare-fun m!7287218 () Bool)

(assert (=> b!6499025 m!7287218))

(assert (=> b!6499025 m!7287216))

(assert (=> b!6499025 m!7287218))

(declare-fun m!7287220 () Bool)

(assert (=> b!6499025 m!7287220))

(assert (=> b!6499015 m!7287214))

(assert (=> bm!563072 m!7287212))

(assert (=> b!6499027 m!7287218))

(assert (=> b!6499027 m!7287218))

(declare-fun m!7287222 () Bool)

(assert (=> b!6499027 m!7287222))

(assert (=> b!6499024 m!7287214))

(assert (=> b!6499022 m!7287218))

(assert (=> b!6499022 m!7287218))

(assert (=> b!6499022 m!7287222))

(declare-fun m!7287224 () Bool)

(assert (=> b!6499018 m!7287224))

(assert (=> d!2038965 d!2039361))

(assert (=> d!2038965 d!2039349))

(declare-fun d!2039363 () Bool)

(declare-fun c!1191500 () Bool)

(assert (=> d!2039363 (= c!1191500 (isEmpty!37501 (tail!12306 (t!379058 s!2326))))))

(declare-fun e!3938199 () Bool)

(assert (=> d!2039363 (= (matchZipper!2387 (derivationStepZipper!2341 lt!2391000 (head!13221 (t!379058 s!2326))) (tail!12306 (t!379058 s!2326))) e!3938199)))

(declare-fun b!6499028 () Bool)

(assert (=> b!6499028 (= e!3938199 (nullableZipper!2130 (derivationStepZipper!2341 lt!2391000 (head!13221 (t!379058 s!2326)))))))

(declare-fun b!6499029 () Bool)

(assert (=> b!6499029 (= e!3938199 (matchZipper!2387 (derivationStepZipper!2341 (derivationStepZipper!2341 lt!2391000 (head!13221 (t!379058 s!2326))) (head!13221 (tail!12306 (t!379058 s!2326)))) (tail!12306 (tail!12306 (t!379058 s!2326)))))))

(assert (= (and d!2039363 c!1191500) b!6499028))

(assert (= (and d!2039363 (not c!1191500)) b!6499029))

(assert (=> d!2039363 m!7286184))

(assert (=> d!2039363 m!7287106))

(assert (=> b!6499028 m!7286314))

(declare-fun m!7287226 () Bool)

(assert (=> b!6499028 m!7287226))

(assert (=> b!6499029 m!7286184))

(assert (=> b!6499029 m!7287110))

(assert (=> b!6499029 m!7286314))

(assert (=> b!6499029 m!7287110))

(declare-fun m!7287228 () Bool)

(assert (=> b!6499029 m!7287228))

(assert (=> b!6499029 m!7286184))

(assert (=> b!6499029 m!7287114))

(assert (=> b!6499029 m!7287228))

(assert (=> b!6499029 m!7287114))

(declare-fun m!7287230 () Bool)

(assert (=> b!6499029 m!7287230))

(assert (=> b!6498083 d!2039363))

(declare-fun bs!1650900 () Bool)

(declare-fun d!2039365 () Bool)

(assert (= bs!1650900 (and d!2039365 b!6497395)))

(declare-fun lambda!360110 () Int)

(assert (=> bs!1650900 (= (= (head!13221 (t!379058 s!2326)) (h!71750 s!2326)) (= lambda!360110 lambda!359990))))

(declare-fun bs!1650901 () Bool)

(assert (= bs!1650901 (and d!2039365 d!2038991)))

(assert (=> bs!1650901 (= (= (head!13221 (t!379058 s!2326)) (h!71750 s!2326)) (= lambda!360110 lambda!360050))))

(declare-fun bs!1650902 () Bool)

(assert (= bs!1650902 (and d!2039365 d!2039327)))

(assert (=> bs!1650902 (= lambda!360110 lambda!360103)))

(assert (=> d!2039365 true))

(assert (=> d!2039365 (= (derivationStepZipper!2341 lt!2391000 (head!13221 (t!379058 s!2326))) (flatMap!1880 lt!2391000 lambda!360110))))

(declare-fun bs!1650903 () Bool)

(assert (= bs!1650903 d!2039365))

(declare-fun m!7287232 () Bool)

(assert (=> bs!1650903 m!7287232))

(assert (=> b!6498083 d!2039365))

(assert (=> b!6498083 d!2039329))

(assert (=> b!6498083 d!2039331))

(declare-fun bm!563073 () Bool)

(declare-fun call!563078 () (InoxSet Context!11518))

(assert (=> bm!563073 (= call!563078 (derivationStepZipperDown!1623 (h!71748 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 lt!2391021))))) (Context!11519 (t!379056 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 lt!2391021)))))) (h!71750 s!2326)))))

(declare-fun b!6499030 () Bool)

(declare-fun e!3938201 () Bool)

(assert (=> b!6499030 (= e!3938201 (nullable!6368 (h!71748 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 lt!2391021)))))))))

(declare-fun b!6499031 () Bool)

(declare-fun e!3938200 () (InoxSet Context!11518))

(declare-fun e!3938202 () (InoxSet Context!11518))

(assert (=> b!6499031 (= e!3938200 e!3938202)))

(declare-fun c!1191502 () Bool)

(assert (=> b!6499031 (= c!1191502 ((_ is Cons!65300) (exprs!6259 (Context!11519 (t!379056 (exprs!6259 lt!2391021))))))))

(declare-fun d!2039367 () Bool)

(declare-fun c!1191501 () Bool)

(assert (=> d!2039367 (= c!1191501 e!3938201)))

(declare-fun res!2668982 () Bool)

(assert (=> d!2039367 (=> (not res!2668982) (not e!3938201))))

(assert (=> d!2039367 (= res!2668982 ((_ is Cons!65300) (exprs!6259 (Context!11519 (t!379056 (exprs!6259 lt!2391021))))))))

(assert (=> d!2039367 (= (derivationStepZipperUp!1549 (Context!11519 (t!379056 (exprs!6259 lt!2391021))) (h!71750 s!2326)) e!3938200)))

(declare-fun b!6499032 () Bool)

(assert (=> b!6499032 (= e!3938202 call!563078)))

(declare-fun b!6499033 () Bool)

(assert (=> b!6499033 (= e!3938200 ((_ map or) call!563078 (derivationStepZipperUp!1549 (Context!11519 (t!379056 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 lt!2391021)))))) (h!71750 s!2326))))))

(declare-fun b!6499034 () Bool)

(assert (=> b!6499034 (= e!3938202 ((as const (Array Context!11518 Bool)) false))))

(assert (= (and d!2039367 res!2668982) b!6499030))

(assert (= (and d!2039367 c!1191501) b!6499033))

(assert (= (and d!2039367 (not c!1191501)) b!6499031))

(assert (= (and b!6499031 c!1191502) b!6499032))

(assert (= (and b!6499031 (not c!1191502)) b!6499034))

(assert (= (or b!6499033 b!6499032) bm!563073))

(declare-fun m!7287234 () Bool)

(assert (=> bm!563073 m!7287234))

(declare-fun m!7287236 () Bool)

(assert (=> b!6499030 m!7287236))

(declare-fun m!7287238 () Bool)

(assert (=> b!6499033 m!7287238))

(assert (=> b!6498122 d!2039367))

(declare-fun bs!1650904 () Bool)

(declare-fun b!6499040 () Bool)

(assert (= bs!1650904 (and b!6499040 b!6498918)))

(declare-fun lambda!360111 () Int)

(assert (=> bs!1650904 (= (and (= (reg!16704 (regTwo!33263 lt!2391008)) (reg!16704 (regOne!33263 lt!2391008))) (= (regTwo!33263 lt!2391008) (regOne!33263 lt!2391008))) (= lambda!360111 lambda!360101))))

(declare-fun bs!1650905 () Bool)

(assert (= bs!1650905 (and b!6499040 b!6498921)))

(assert (=> bs!1650905 (not (= lambda!360111 lambda!360102))))

(declare-fun bs!1650906 () Bool)

(assert (= bs!1650906 (and b!6499040 b!6497365)))

(assert (=> bs!1650906 (not (= lambda!360111 lambda!359988))))

(declare-fun bs!1650907 () Bool)

(assert (= bs!1650907 (and b!6499040 b!6498018)))

(assert (=> bs!1650907 (= (and (= (reg!16704 (regTwo!33263 lt!2391008)) (reg!16704 r!7292)) (= (regTwo!33263 lt!2391008) r!7292)) (= lambda!360111 lambda!360034))))

(declare-fun bs!1650908 () Bool)

(assert (= bs!1650908 (and b!6499040 d!2038973)))

(assert (=> bs!1650908 (not (= lambda!360111 lambda!360047))))

(assert (=> bs!1650908 (not (= lambda!360111 lambda!360046))))

(declare-fun bs!1650909 () Bool)

(assert (= bs!1650909 (and b!6499040 d!2038971)))

(assert (=> bs!1650909 (not (= lambda!360111 lambda!360041))))

(declare-fun bs!1650910 () Bool)

(assert (= bs!1650910 (and b!6499040 d!2039347)))

(assert (=> bs!1650910 (not (= lambda!360111 lambda!360108))))

(assert (=> bs!1650910 (not (= lambda!360111 lambda!360109))))

(declare-fun bs!1650911 () Bool)

(assert (= bs!1650911 (and b!6499040 b!6498010)))

(assert (=> bs!1650911 (not (= lambda!360111 lambda!360033))))

(declare-fun bs!1650912 () Bool)

(assert (= bs!1650912 (and b!6499040 b!6498007)))

(assert (=> bs!1650912 (= (and (= (reg!16704 (regTwo!33263 lt!2391008)) (reg!16704 lt!2391008)) (= (regTwo!33263 lt!2391008) lt!2391008)) (= lambda!360111 lambda!360032))))

(declare-fun bs!1650913 () Bool)

(assert (= bs!1650913 (and b!6499040 b!6498021)))

(assert (=> bs!1650913 (not (= lambda!360111 lambda!360035))))

(assert (=> bs!1650906 (not (= lambda!360111 lambda!359989))))

(assert (=> b!6499040 true))

(assert (=> b!6499040 true))

(declare-fun bs!1650914 () Bool)

(declare-fun b!6499043 () Bool)

(assert (= bs!1650914 (and b!6499043 b!6498918)))

(declare-fun lambda!360112 () Int)

(assert (=> bs!1650914 (not (= lambda!360112 lambda!360101))))

(declare-fun bs!1650915 () Bool)

(assert (= bs!1650915 (and b!6499043 b!6498921)))

(assert (=> bs!1650915 (= (and (= (regOne!33262 (regTwo!33263 lt!2391008)) (regOne!33262 (regOne!33263 lt!2391008))) (= (regTwo!33262 (regTwo!33263 lt!2391008)) (regTwo!33262 (regOne!33263 lt!2391008)))) (= lambda!360112 lambda!360102))))

(declare-fun bs!1650916 () Bool)

(assert (= bs!1650916 (and b!6499043 b!6497365)))

(assert (=> bs!1650916 (not (= lambda!360112 lambda!359988))))

(declare-fun bs!1650917 () Bool)

(assert (= bs!1650917 (and b!6499043 b!6499040)))

(assert (=> bs!1650917 (not (= lambda!360112 lambda!360111))))

(declare-fun bs!1650918 () Bool)

(assert (= bs!1650918 (and b!6499043 b!6498018)))

(assert (=> bs!1650918 (not (= lambda!360112 lambda!360034))))

(declare-fun bs!1650919 () Bool)

(assert (= bs!1650919 (and b!6499043 d!2038973)))

(assert (=> bs!1650919 (= (and (= (regOne!33262 (regTwo!33263 lt!2391008)) (regOne!33262 r!7292)) (= (regTwo!33262 (regTwo!33263 lt!2391008)) (regTwo!33262 r!7292))) (= lambda!360112 lambda!360047))))

(assert (=> bs!1650919 (not (= lambda!360112 lambda!360046))))

(declare-fun bs!1650920 () Bool)

(assert (= bs!1650920 (and b!6499043 d!2038971)))

(assert (=> bs!1650920 (not (= lambda!360112 lambda!360041))))

(declare-fun bs!1650921 () Bool)

(assert (= bs!1650921 (and b!6499043 d!2039347)))

(assert (=> bs!1650921 (not (= lambda!360112 lambda!360108))))

(assert (=> bs!1650921 (= (and (= (regOne!33262 (regTwo!33263 lt!2391008)) (regOne!33262 r!7292)) (= (regTwo!33262 (regTwo!33263 lt!2391008)) (regTwo!33262 r!7292))) (= lambda!360112 lambda!360109))))

(declare-fun bs!1650922 () Bool)

(assert (= bs!1650922 (and b!6499043 b!6498010)))

(assert (=> bs!1650922 (= (and (= (regOne!33262 (regTwo!33263 lt!2391008)) (regOne!33262 lt!2391008)) (= (regTwo!33262 (regTwo!33263 lt!2391008)) (regTwo!33262 lt!2391008))) (= lambda!360112 lambda!360033))))

(declare-fun bs!1650923 () Bool)

(assert (= bs!1650923 (and b!6499043 b!6498007)))

(assert (=> bs!1650923 (not (= lambda!360112 lambda!360032))))

(declare-fun bs!1650924 () Bool)

(assert (= bs!1650924 (and b!6499043 b!6498021)))

(assert (=> bs!1650924 (= (and (= (regOne!33262 (regTwo!33263 lt!2391008)) (regOne!33262 r!7292)) (= (regTwo!33262 (regTwo!33263 lt!2391008)) (regTwo!33262 r!7292))) (= lambda!360112 lambda!360035))))

(assert (=> bs!1650916 (= (and (= (regOne!33262 (regTwo!33263 lt!2391008)) (regOne!33262 r!7292)) (= (regTwo!33262 (regTwo!33263 lt!2391008)) (regTwo!33262 r!7292))) (= lambda!360112 lambda!359989))))

(assert (=> b!6499043 true))

(assert (=> b!6499043 true))

(declare-fun b!6499035 () Bool)

(declare-fun e!3938209 () Bool)

(declare-fun call!563080 () Bool)

(assert (=> b!6499035 (= e!3938209 call!563080)))

(declare-fun d!2039369 () Bool)

(declare-fun c!1191506 () Bool)

(assert (=> d!2039369 (= c!1191506 ((_ is EmptyExpr!16375) (regTwo!33263 lt!2391008)))))

(assert (=> d!2039369 (= (matchRSpec!3476 (regTwo!33263 lt!2391008) s!2326) e!3938209)))

(declare-fun b!6499036 () Bool)

(declare-fun e!3938206 () Bool)

(assert (=> b!6499036 (= e!3938206 (= s!2326 (Cons!65302 (c!1191063 (regTwo!33263 lt!2391008)) Nil!65302)))))

(declare-fun b!6499037 () Bool)

(declare-fun res!2668983 () Bool)

(declare-fun e!3938204 () Bool)

(assert (=> b!6499037 (=> res!2668983 e!3938204)))

(assert (=> b!6499037 (= res!2668983 call!563080)))

(declare-fun e!3938203 () Bool)

(assert (=> b!6499037 (= e!3938203 e!3938204)))

(declare-fun b!6499038 () Bool)

(declare-fun c!1191503 () Bool)

(assert (=> b!6499038 (= c!1191503 ((_ is ElementMatch!16375) (regTwo!33263 lt!2391008)))))

(declare-fun e!3938207 () Bool)

(assert (=> b!6499038 (= e!3938207 e!3938206)))

(declare-fun b!6499039 () Bool)

(declare-fun e!3938205 () Bool)

(declare-fun e!3938208 () Bool)

(assert (=> b!6499039 (= e!3938205 e!3938208)))

(declare-fun res!2668984 () Bool)

(assert (=> b!6499039 (= res!2668984 (matchRSpec!3476 (regOne!33263 (regTwo!33263 lt!2391008)) s!2326))))

(assert (=> b!6499039 (=> res!2668984 e!3938208)))

(declare-fun call!563079 () Bool)

(assert (=> b!6499040 (= e!3938204 call!563079)))

(declare-fun c!1191505 () Bool)

(declare-fun bm!563074 () Bool)

(assert (=> bm!563074 (= call!563079 (Exists!3445 (ite c!1191505 lambda!360111 lambda!360112)))))

(declare-fun b!6499041 () Bool)

(declare-fun c!1191504 () Bool)

(assert (=> b!6499041 (= c!1191504 ((_ is Union!16375) (regTwo!33263 lt!2391008)))))

(assert (=> b!6499041 (= e!3938206 e!3938205)))

(declare-fun b!6499042 () Bool)

(assert (=> b!6499042 (= e!3938208 (matchRSpec!3476 (regTwo!33263 (regTwo!33263 lt!2391008)) s!2326))))

(declare-fun bm!563075 () Bool)

(assert (=> bm!563075 (= call!563080 (isEmpty!37501 s!2326))))

(assert (=> b!6499043 (= e!3938203 call!563079)))

(declare-fun b!6499044 () Bool)

(assert (=> b!6499044 (= e!3938209 e!3938207)))

(declare-fun res!2668985 () Bool)

(assert (=> b!6499044 (= res!2668985 (not ((_ is EmptyLang!16375) (regTwo!33263 lt!2391008))))))

(assert (=> b!6499044 (=> (not res!2668985) (not e!3938207))))

(declare-fun b!6499045 () Bool)

(assert (=> b!6499045 (= e!3938205 e!3938203)))

(assert (=> b!6499045 (= c!1191505 ((_ is Star!16375) (regTwo!33263 lt!2391008)))))

(assert (= (and d!2039369 c!1191506) b!6499035))

(assert (= (and d!2039369 (not c!1191506)) b!6499044))

(assert (= (and b!6499044 res!2668985) b!6499038))

(assert (= (and b!6499038 c!1191503) b!6499036))

(assert (= (and b!6499038 (not c!1191503)) b!6499041))

(assert (= (and b!6499041 c!1191504) b!6499039))

(assert (= (and b!6499041 (not c!1191504)) b!6499045))

(assert (= (and b!6499039 (not res!2668984)) b!6499042))

(assert (= (and b!6499045 c!1191505) b!6499037))

(assert (= (and b!6499045 (not c!1191505)) b!6499043))

(assert (= (and b!6499037 (not res!2668983)) b!6499040))

(assert (= (or b!6499040 b!6499043) bm!563074))

(assert (= (or b!6499035 b!6499037) bm!563075))

(declare-fun m!7287240 () Bool)

(assert (=> b!6499039 m!7287240))

(declare-fun m!7287242 () Bool)

(assert (=> bm!563074 m!7287242))

(declare-fun m!7287244 () Bool)

(assert (=> b!6499042 m!7287244))

(assert (=> bm!563075 m!7286224))

(assert (=> b!6498009 d!2039369))

(declare-fun d!2039371 () Bool)

(declare-fun lambda!360115 () Int)

(declare-fun exists!2623 ((InoxSet Context!11518) Int) Bool)

(assert (=> d!2039371 (= (nullableZipper!2130 z!1189) (exists!2623 z!1189 lambda!360115))))

(declare-fun bs!1650925 () Bool)

(assert (= bs!1650925 d!2039371))

(declare-fun m!7287246 () Bool)

(assert (=> bs!1650925 m!7287246))

(assert (=> b!6498096 d!2039371))

(assert (=> bs!1650541 d!2038987))

(declare-fun d!2039373 () Bool)

(assert (=> d!2039373 true))

(assert (=> d!2039373 true))

(declare-fun res!2668988 () Bool)

(assert (=> d!2039373 (= (choose!48233 lambda!359988) res!2668988)))

(assert (=> d!2038967 d!2039373))

(declare-fun d!2039375 () Bool)

(assert (=> d!2039375 (= (nullable!6368 (h!71748 (exprs!6259 lt!2391011))) (nullableFct!2304 (h!71748 (exprs!6259 lt!2391011))))))

(declare-fun bs!1650926 () Bool)

(assert (= bs!1650926 d!2039375))

(declare-fun m!7287248 () Bool)

(assert (=> bs!1650926 m!7287248))

(assert (=> b!6497858 d!2039375))

(declare-fun b!6499046 () Bool)

(declare-fun res!2668996 () Bool)

(declare-fun e!3938212 () Bool)

(assert (=> b!6499046 (=> res!2668996 e!3938212)))

(assert (=> b!6499046 (= res!2668996 (not ((_ is ElementMatch!16375) (derivativeStep!5069 r!7292 (head!13221 s!2326)))))))

(declare-fun e!3938211 () Bool)

(assert (=> b!6499046 (= e!3938211 e!3938212)))

(declare-fun b!6499047 () Bool)

(declare-fun e!3938213 () Bool)

(assert (=> b!6499047 (= e!3938213 (not (= (head!13221 (tail!12306 s!2326)) (c!1191063 (derivativeStep!5069 r!7292 (head!13221 s!2326))))))))

(declare-fun bm!563076 () Bool)

(declare-fun call!563081 () Bool)

(assert (=> bm!563076 (= call!563081 (isEmpty!37501 (tail!12306 s!2326)))))

(declare-fun b!6499048 () Bool)

(declare-fun res!2668990 () Bool)

(assert (=> b!6499048 (=> res!2668990 e!3938212)))

(declare-fun e!3938215 () Bool)

(assert (=> b!6499048 (= res!2668990 e!3938215)))

(declare-fun res!2668992 () Bool)

(assert (=> b!6499048 (=> (not res!2668992) (not e!3938215))))

(declare-fun lt!2391174 () Bool)

(assert (=> b!6499048 (= res!2668992 lt!2391174)))

(declare-fun b!6499049 () Bool)

(declare-fun res!2668993 () Bool)

(assert (=> b!6499049 (=> (not res!2668993) (not e!3938215))))

(assert (=> b!6499049 (= res!2668993 (not call!563081))))

(declare-fun b!6499050 () Bool)

(declare-fun e!3938216 () Bool)

(assert (=> b!6499050 (= e!3938216 (nullable!6368 (derivativeStep!5069 r!7292 (head!13221 s!2326))))))

(declare-fun b!6499051 () Bool)

(declare-fun e!3938214 () Bool)

(assert (=> b!6499051 (= e!3938214 e!3938211)))

(declare-fun c!1191509 () Bool)

(assert (=> b!6499051 (= c!1191509 ((_ is EmptyLang!16375) (derivativeStep!5069 r!7292 (head!13221 s!2326))))))

(declare-fun b!6499052 () Bool)

(assert (=> b!6499052 (= e!3938214 (= lt!2391174 call!563081))))

(declare-fun b!6499053 () Bool)

(declare-fun e!3938210 () Bool)

(assert (=> b!6499053 (= e!3938210 e!3938213)))

(declare-fun res!2668995 () Bool)

(assert (=> b!6499053 (=> res!2668995 e!3938213)))

(assert (=> b!6499053 (= res!2668995 call!563081)))

(declare-fun b!6499055 () Bool)

(assert (=> b!6499055 (= e!3938211 (not lt!2391174))))

(declare-fun d!2039377 () Bool)

(assert (=> d!2039377 e!3938214))

(declare-fun c!1191510 () Bool)

(assert (=> d!2039377 (= c!1191510 ((_ is EmptyExpr!16375) (derivativeStep!5069 r!7292 (head!13221 s!2326))))))

(assert (=> d!2039377 (= lt!2391174 e!3938216)))

(declare-fun c!1191511 () Bool)

(assert (=> d!2039377 (= c!1191511 (isEmpty!37501 (tail!12306 s!2326)))))

(assert (=> d!2039377 (validRegex!8111 (derivativeStep!5069 r!7292 (head!13221 s!2326)))))

(assert (=> d!2039377 (= (matchR!8558 (derivativeStep!5069 r!7292 (head!13221 s!2326)) (tail!12306 s!2326)) lt!2391174)))

(declare-fun b!6499054 () Bool)

(declare-fun res!2668994 () Bool)

(assert (=> b!6499054 (=> res!2668994 e!3938213)))

(assert (=> b!6499054 (= res!2668994 (not (isEmpty!37501 (tail!12306 (tail!12306 s!2326)))))))

(declare-fun b!6499056 () Bool)

(assert (=> b!6499056 (= e!3938215 (= (head!13221 (tail!12306 s!2326)) (c!1191063 (derivativeStep!5069 r!7292 (head!13221 s!2326)))))))

(declare-fun b!6499057 () Bool)

(assert (=> b!6499057 (= e!3938216 (matchR!8558 (derivativeStep!5069 (derivativeStep!5069 r!7292 (head!13221 s!2326)) (head!13221 (tail!12306 s!2326))) (tail!12306 (tail!12306 s!2326))))))

(declare-fun b!6499058 () Bool)

(assert (=> b!6499058 (= e!3938212 e!3938210)))

(declare-fun res!2668989 () Bool)

(assert (=> b!6499058 (=> (not res!2668989) (not e!3938210))))

(assert (=> b!6499058 (= res!2668989 (not lt!2391174))))

(declare-fun b!6499059 () Bool)

(declare-fun res!2668991 () Bool)

(assert (=> b!6499059 (=> (not res!2668991) (not e!3938215))))

(assert (=> b!6499059 (= res!2668991 (isEmpty!37501 (tail!12306 (tail!12306 s!2326))))))

(assert (= (and d!2039377 c!1191511) b!6499050))

(assert (= (and d!2039377 (not c!1191511)) b!6499057))

(assert (= (and d!2039377 c!1191510) b!6499052))

(assert (= (and d!2039377 (not c!1191510)) b!6499051))

(assert (= (and b!6499051 c!1191509) b!6499055))

(assert (= (and b!6499051 (not c!1191509)) b!6499046))

(assert (= (and b!6499046 (not res!2668996)) b!6499048))

(assert (= (and b!6499048 res!2668992) b!6499049))

(assert (= (and b!6499049 res!2668993) b!6499059))

(assert (= (and b!6499059 res!2668991) b!6499056))

(assert (= (and b!6499048 (not res!2668990)) b!6499058))

(assert (= (and b!6499058 res!2668989) b!6499053))

(assert (= (and b!6499053 (not res!2668995)) b!6499054))

(assert (= (and b!6499054 (not res!2668994)) b!6499047))

(assert (= (or b!6499052 b!6499049 b!6499053) bm!563076))

(assert (=> d!2039377 m!7286232))

(assert (=> d!2039377 m!7286236))

(assert (=> d!2039377 m!7286254))

(declare-fun m!7287250 () Bool)

(assert (=> d!2039377 m!7287250))

(assert (=> b!6499057 m!7286232))

(declare-fun m!7287252 () Bool)

(assert (=> b!6499057 m!7287252))

(assert (=> b!6499057 m!7286254))

(assert (=> b!6499057 m!7287252))

(declare-fun m!7287254 () Bool)

(assert (=> b!6499057 m!7287254))

(assert (=> b!6499057 m!7286232))

(declare-fun m!7287256 () Bool)

(assert (=> b!6499057 m!7287256))

(assert (=> b!6499057 m!7287254))

(assert (=> b!6499057 m!7287256))

(declare-fun m!7287258 () Bool)

(assert (=> b!6499057 m!7287258))

(assert (=> b!6499047 m!7286232))

(assert (=> b!6499047 m!7287252))

(assert (=> bm!563076 m!7286232))

(assert (=> bm!563076 m!7286236))

(assert (=> b!6499059 m!7286232))

(assert (=> b!6499059 m!7287256))

(assert (=> b!6499059 m!7287256))

(declare-fun m!7287260 () Bool)

(assert (=> b!6499059 m!7287260))

(assert (=> b!6499056 m!7286232))

(assert (=> b!6499056 m!7287252))

(assert (=> b!6499054 m!7286232))

(assert (=> b!6499054 m!7287256))

(assert (=> b!6499054 m!7287256))

(assert (=> b!6499054 m!7287260))

(assert (=> b!6499050 m!7286254))

(declare-fun m!7287262 () Bool)

(assert (=> b!6499050 m!7287262))

(assert (=> b!6498035 d!2039377))

(declare-fun b!6499080 () Bool)

(declare-fun e!3938230 () Regex!16375)

(declare-fun call!563093 () Regex!16375)

(assert (=> b!6499080 (= e!3938230 (Concat!25220 call!563093 r!7292))))

(declare-fun b!6499081 () Bool)

(declare-fun c!1191522 () Bool)

(assert (=> b!6499081 (= c!1191522 (nullable!6368 (regOne!33262 r!7292)))))

(declare-fun e!3938227 () Regex!16375)

(assert (=> b!6499081 (= e!3938230 e!3938227)))

(declare-fun b!6499082 () Bool)

(declare-fun e!3938229 () Regex!16375)

(declare-fun call!563091 () Regex!16375)

(declare-fun call!563090 () Regex!16375)

(assert (=> b!6499082 (= e!3938229 (Union!16375 call!563091 call!563090))))

(declare-fun bm!563085 () Bool)

(declare-fun c!1191525 () Bool)

(assert (=> bm!563085 (= call!563091 (derivativeStep!5069 (ite c!1191525 (regOne!33263 r!7292) (regOne!33262 r!7292)) (head!13221 s!2326)))))

(declare-fun b!6499083 () Bool)

(assert (=> b!6499083 (= c!1191525 ((_ is Union!16375) r!7292))))

(declare-fun e!3938228 () Regex!16375)

(assert (=> b!6499083 (= e!3938228 e!3938229)))

(declare-fun d!2039379 () Bool)

(declare-fun lt!2391177 () Regex!16375)

(assert (=> d!2039379 (validRegex!8111 lt!2391177)))

(declare-fun e!3938231 () Regex!16375)

(assert (=> d!2039379 (= lt!2391177 e!3938231)))

(declare-fun c!1191524 () Bool)

(assert (=> d!2039379 (= c!1191524 (or ((_ is EmptyExpr!16375) r!7292) ((_ is EmptyLang!16375) r!7292)))))

(assert (=> d!2039379 (validRegex!8111 r!7292)))

(assert (=> d!2039379 (= (derivativeStep!5069 r!7292 (head!13221 s!2326)) lt!2391177)))

(declare-fun b!6499084 () Bool)

(assert (=> b!6499084 (= e!3938228 (ite (= (head!13221 s!2326) (c!1191063 r!7292)) EmptyExpr!16375 EmptyLang!16375))))

(declare-fun bm!563086 () Bool)

(assert (=> bm!563086 (= call!563093 call!563090)))

(declare-fun b!6499085 () Bool)

(assert (=> b!6499085 (= e!3938231 e!3938228)))

(declare-fun c!1191523 () Bool)

(assert (=> b!6499085 (= c!1191523 ((_ is ElementMatch!16375) r!7292))))

(declare-fun b!6499086 () Bool)

(assert (=> b!6499086 (= e!3938231 EmptyLang!16375)))

(declare-fun b!6499087 () Bool)

(declare-fun call!563092 () Regex!16375)

(assert (=> b!6499087 (= e!3938227 (Union!16375 (Concat!25220 call!563092 (regTwo!33262 r!7292)) EmptyLang!16375))))

(declare-fun b!6499088 () Bool)

(assert (=> b!6499088 (= e!3938227 (Union!16375 (Concat!25220 call!563091 (regTwo!33262 r!7292)) call!563092))))

(declare-fun bm!563087 () Bool)

(assert (=> bm!563087 (= call!563092 call!563093)))

(declare-fun c!1191526 () Bool)

(declare-fun bm!563088 () Bool)

(assert (=> bm!563088 (= call!563090 (derivativeStep!5069 (ite c!1191525 (regTwo!33263 r!7292) (ite c!1191526 (reg!16704 r!7292) (ite c!1191522 (regTwo!33262 r!7292) (regOne!33262 r!7292)))) (head!13221 s!2326)))))

(declare-fun b!6499089 () Bool)

(assert (=> b!6499089 (= e!3938229 e!3938230)))

(assert (=> b!6499089 (= c!1191526 ((_ is Star!16375) r!7292))))

(assert (= (and d!2039379 c!1191524) b!6499086))

(assert (= (and d!2039379 (not c!1191524)) b!6499085))

(assert (= (and b!6499085 c!1191523) b!6499084))

(assert (= (and b!6499085 (not c!1191523)) b!6499083))

(assert (= (and b!6499083 c!1191525) b!6499082))

(assert (= (and b!6499083 (not c!1191525)) b!6499089))

(assert (= (and b!6499089 c!1191526) b!6499080))

(assert (= (and b!6499089 (not c!1191526)) b!6499081))

(assert (= (and b!6499081 c!1191522) b!6499088))

(assert (= (and b!6499081 (not c!1191522)) b!6499087))

(assert (= (or b!6499088 b!6499087) bm!563087))

(assert (= (or b!6499080 bm!563087) bm!563086))

(assert (= (or b!6499082 bm!563086) bm!563088))

(assert (= (or b!6499082 b!6499088) bm!563085))

(assert (=> b!6499081 m!7287224))

(assert (=> bm!563085 m!7286228))

(declare-fun m!7287264 () Bool)

(assert (=> bm!563085 m!7287264))

(declare-fun m!7287266 () Bool)

(assert (=> d!2039379 m!7287266))

(assert (=> d!2039379 m!7285742))

(assert (=> bm!563088 m!7286228))

(declare-fun m!7287268 () Bool)

(assert (=> bm!563088 m!7287268))

(assert (=> b!6498035 d!2039379))

(declare-fun d!2039381 () Bool)

(assert (=> d!2039381 (= (head!13221 s!2326) (h!71750 s!2326))))

(assert (=> b!6498035 d!2039381))

(declare-fun d!2039383 () Bool)

(assert (=> d!2039383 (= (tail!12306 s!2326) (t!379058 s!2326))))

(assert (=> b!6498035 d!2039383))

(declare-fun b!6499090 () Bool)

(declare-fun res!2669004 () Bool)

(declare-fun e!3938234 () Bool)

(assert (=> b!6499090 (=> res!2669004 e!3938234)))

(assert (=> b!6499090 (= res!2669004 (not ((_ is ElementMatch!16375) (derivativeStep!5069 lt!2391008 (head!13221 s!2326)))))))

(declare-fun e!3938233 () Bool)

(assert (=> b!6499090 (= e!3938233 e!3938234)))

(declare-fun b!6499091 () Bool)

(declare-fun e!3938235 () Bool)

(assert (=> b!6499091 (= e!3938235 (not (= (head!13221 (tail!12306 s!2326)) (c!1191063 (derivativeStep!5069 lt!2391008 (head!13221 s!2326))))))))

(declare-fun bm!563089 () Bool)

(declare-fun call!563094 () Bool)

(assert (=> bm!563089 (= call!563094 (isEmpty!37501 (tail!12306 s!2326)))))

(declare-fun b!6499092 () Bool)

(declare-fun res!2668998 () Bool)

(assert (=> b!6499092 (=> res!2668998 e!3938234)))

(declare-fun e!3938237 () Bool)

(assert (=> b!6499092 (= res!2668998 e!3938237)))

(declare-fun res!2669000 () Bool)

(assert (=> b!6499092 (=> (not res!2669000) (not e!3938237))))

(declare-fun lt!2391178 () Bool)

(assert (=> b!6499092 (= res!2669000 lt!2391178)))

(declare-fun b!6499093 () Bool)

(declare-fun res!2669001 () Bool)

(assert (=> b!6499093 (=> (not res!2669001) (not e!3938237))))

(assert (=> b!6499093 (= res!2669001 (not call!563094))))

(declare-fun b!6499094 () Bool)

(declare-fun e!3938238 () Bool)

(assert (=> b!6499094 (= e!3938238 (nullable!6368 (derivativeStep!5069 lt!2391008 (head!13221 s!2326))))))

(declare-fun b!6499095 () Bool)

(declare-fun e!3938236 () Bool)

(assert (=> b!6499095 (= e!3938236 e!3938233)))

(declare-fun c!1191527 () Bool)

(assert (=> b!6499095 (= c!1191527 ((_ is EmptyLang!16375) (derivativeStep!5069 lt!2391008 (head!13221 s!2326))))))

(declare-fun b!6499096 () Bool)

(assert (=> b!6499096 (= e!3938236 (= lt!2391178 call!563094))))

(declare-fun b!6499097 () Bool)

(declare-fun e!3938232 () Bool)

(assert (=> b!6499097 (= e!3938232 e!3938235)))

(declare-fun res!2669003 () Bool)

(assert (=> b!6499097 (=> res!2669003 e!3938235)))

(assert (=> b!6499097 (= res!2669003 call!563094)))

(declare-fun b!6499099 () Bool)

(assert (=> b!6499099 (= e!3938233 (not lt!2391178))))

(declare-fun d!2039385 () Bool)

(assert (=> d!2039385 e!3938236))

(declare-fun c!1191528 () Bool)

(assert (=> d!2039385 (= c!1191528 ((_ is EmptyExpr!16375) (derivativeStep!5069 lt!2391008 (head!13221 s!2326))))))

(assert (=> d!2039385 (= lt!2391178 e!3938238)))

(declare-fun c!1191529 () Bool)

(assert (=> d!2039385 (= c!1191529 (isEmpty!37501 (tail!12306 s!2326)))))

(assert (=> d!2039385 (validRegex!8111 (derivativeStep!5069 lt!2391008 (head!13221 s!2326)))))

(assert (=> d!2039385 (= (matchR!8558 (derivativeStep!5069 lt!2391008 (head!13221 s!2326)) (tail!12306 s!2326)) lt!2391178)))

(declare-fun b!6499098 () Bool)

(declare-fun res!2669002 () Bool)

(assert (=> b!6499098 (=> res!2669002 e!3938235)))

(assert (=> b!6499098 (= res!2669002 (not (isEmpty!37501 (tail!12306 (tail!12306 s!2326)))))))

(declare-fun b!6499100 () Bool)

(assert (=> b!6499100 (= e!3938237 (= (head!13221 (tail!12306 s!2326)) (c!1191063 (derivativeStep!5069 lt!2391008 (head!13221 s!2326)))))))

(declare-fun b!6499101 () Bool)

(assert (=> b!6499101 (= e!3938238 (matchR!8558 (derivativeStep!5069 (derivativeStep!5069 lt!2391008 (head!13221 s!2326)) (head!13221 (tail!12306 s!2326))) (tail!12306 (tail!12306 s!2326))))))

(declare-fun b!6499102 () Bool)

(assert (=> b!6499102 (= e!3938234 e!3938232)))

(declare-fun res!2668997 () Bool)

(assert (=> b!6499102 (=> (not res!2668997) (not e!3938232))))

(assert (=> b!6499102 (= res!2668997 (not lt!2391178))))

(declare-fun b!6499103 () Bool)

(declare-fun res!2668999 () Bool)

(assert (=> b!6499103 (=> (not res!2668999) (not e!3938237))))

(assert (=> b!6499103 (= res!2668999 (isEmpty!37501 (tail!12306 (tail!12306 s!2326))))))

(assert (= (and d!2039385 c!1191529) b!6499094))

(assert (= (and d!2039385 (not c!1191529)) b!6499101))

(assert (= (and d!2039385 c!1191528) b!6499096))

(assert (= (and d!2039385 (not c!1191528)) b!6499095))

(assert (= (and b!6499095 c!1191527) b!6499099))

(assert (= (and b!6499095 (not c!1191527)) b!6499090))

(assert (= (and b!6499090 (not res!2669004)) b!6499092))

(assert (= (and b!6499092 res!2669000) b!6499093))

(assert (= (and b!6499093 res!2669001) b!6499103))

(assert (= (and b!6499103 res!2668999) b!6499100))

(assert (= (and b!6499092 (not res!2668998)) b!6499102))

(assert (= (and b!6499102 res!2668997) b!6499097))

(assert (= (and b!6499097 (not res!2669003)) b!6499098))

(assert (= (and b!6499098 (not res!2669002)) b!6499091))

(assert (= (or b!6499096 b!6499093 b!6499097) bm!563089))

(assert (=> d!2039385 m!7286232))

(assert (=> d!2039385 m!7286236))

(assert (=> d!2039385 m!7286230))

(declare-fun m!7287270 () Bool)

(assert (=> d!2039385 m!7287270))

(assert (=> b!6499101 m!7286232))

(assert (=> b!6499101 m!7287252))

(assert (=> b!6499101 m!7286230))

(assert (=> b!6499101 m!7287252))

(declare-fun m!7287272 () Bool)

(assert (=> b!6499101 m!7287272))

(assert (=> b!6499101 m!7286232))

(assert (=> b!6499101 m!7287256))

(assert (=> b!6499101 m!7287272))

(assert (=> b!6499101 m!7287256))

(declare-fun m!7287274 () Bool)

(assert (=> b!6499101 m!7287274))

(assert (=> b!6499091 m!7286232))

(assert (=> b!6499091 m!7287252))

(assert (=> bm!563089 m!7286232))

(assert (=> bm!563089 m!7286236))

(assert (=> b!6499103 m!7286232))

(assert (=> b!6499103 m!7287256))

(assert (=> b!6499103 m!7287256))

(assert (=> b!6499103 m!7287260))

(assert (=> b!6499100 m!7286232))

(assert (=> b!6499100 m!7287252))

(assert (=> b!6499098 m!7286232))

(assert (=> b!6499098 m!7287256))

(assert (=> b!6499098 m!7287256))

(assert (=> b!6499098 m!7287260))

(assert (=> b!6499094 m!7286230))

(declare-fun m!7287276 () Bool)

(assert (=> b!6499094 m!7287276))

(assert (=> b!6497967 d!2039385))

(declare-fun b!6499104 () Bool)

(declare-fun e!3938242 () Regex!16375)

(declare-fun call!563098 () Regex!16375)

(assert (=> b!6499104 (= e!3938242 (Concat!25220 call!563098 lt!2391008))))

(declare-fun b!6499105 () Bool)

(declare-fun c!1191530 () Bool)

(assert (=> b!6499105 (= c!1191530 (nullable!6368 (regOne!33262 lt!2391008)))))

(declare-fun e!3938239 () Regex!16375)

(assert (=> b!6499105 (= e!3938242 e!3938239)))

(declare-fun b!6499106 () Bool)

(declare-fun e!3938241 () Regex!16375)

(declare-fun call!563096 () Regex!16375)

(declare-fun call!563095 () Regex!16375)

(assert (=> b!6499106 (= e!3938241 (Union!16375 call!563096 call!563095))))

(declare-fun c!1191533 () Bool)

(declare-fun bm!563090 () Bool)

(assert (=> bm!563090 (= call!563096 (derivativeStep!5069 (ite c!1191533 (regOne!33263 lt!2391008) (regOne!33262 lt!2391008)) (head!13221 s!2326)))))

(declare-fun b!6499107 () Bool)

(assert (=> b!6499107 (= c!1191533 ((_ is Union!16375) lt!2391008))))

(declare-fun e!3938240 () Regex!16375)

(assert (=> b!6499107 (= e!3938240 e!3938241)))

(declare-fun d!2039387 () Bool)

(declare-fun lt!2391179 () Regex!16375)

(assert (=> d!2039387 (validRegex!8111 lt!2391179)))

(declare-fun e!3938243 () Regex!16375)

(assert (=> d!2039387 (= lt!2391179 e!3938243)))

(declare-fun c!1191532 () Bool)

(assert (=> d!2039387 (= c!1191532 (or ((_ is EmptyExpr!16375) lt!2391008) ((_ is EmptyLang!16375) lt!2391008)))))

(assert (=> d!2039387 (validRegex!8111 lt!2391008)))

(assert (=> d!2039387 (= (derivativeStep!5069 lt!2391008 (head!13221 s!2326)) lt!2391179)))

(declare-fun b!6499108 () Bool)

(assert (=> b!6499108 (= e!3938240 (ite (= (head!13221 s!2326) (c!1191063 lt!2391008)) EmptyExpr!16375 EmptyLang!16375))))

(declare-fun bm!563091 () Bool)

(assert (=> bm!563091 (= call!563098 call!563095)))

(declare-fun b!6499109 () Bool)

(assert (=> b!6499109 (= e!3938243 e!3938240)))

(declare-fun c!1191531 () Bool)

(assert (=> b!6499109 (= c!1191531 ((_ is ElementMatch!16375) lt!2391008))))

(declare-fun b!6499110 () Bool)

(assert (=> b!6499110 (= e!3938243 EmptyLang!16375)))

(declare-fun b!6499111 () Bool)

(declare-fun call!563097 () Regex!16375)

(assert (=> b!6499111 (= e!3938239 (Union!16375 (Concat!25220 call!563097 (regTwo!33262 lt!2391008)) EmptyLang!16375))))

(declare-fun b!6499112 () Bool)

(assert (=> b!6499112 (= e!3938239 (Union!16375 (Concat!25220 call!563096 (regTwo!33262 lt!2391008)) call!563097))))

(declare-fun bm!563092 () Bool)

(assert (=> bm!563092 (= call!563097 call!563098)))

(declare-fun c!1191534 () Bool)

(declare-fun bm!563093 () Bool)

(assert (=> bm!563093 (= call!563095 (derivativeStep!5069 (ite c!1191533 (regTwo!33263 lt!2391008) (ite c!1191534 (reg!16704 lt!2391008) (ite c!1191530 (regTwo!33262 lt!2391008) (regOne!33262 lt!2391008)))) (head!13221 s!2326)))))

(declare-fun b!6499113 () Bool)

(assert (=> b!6499113 (= e!3938241 e!3938242)))

(assert (=> b!6499113 (= c!1191534 ((_ is Star!16375) lt!2391008))))

(assert (= (and d!2039387 c!1191532) b!6499110))

(assert (= (and d!2039387 (not c!1191532)) b!6499109))

(assert (= (and b!6499109 c!1191531) b!6499108))

(assert (= (and b!6499109 (not c!1191531)) b!6499107))

(assert (= (and b!6499107 c!1191533) b!6499106))

(assert (= (and b!6499107 (not c!1191533)) b!6499113))

(assert (= (and b!6499113 c!1191534) b!6499104))

(assert (= (and b!6499113 (not c!1191534)) b!6499105))

(assert (= (and b!6499105 c!1191530) b!6499112))

(assert (= (and b!6499105 (not c!1191530)) b!6499111))

(assert (= (or b!6499112 b!6499111) bm!563092))

(assert (= (or b!6499104 bm!563092) bm!563091))

(assert (= (or b!6499106 bm!563091) bm!563093))

(assert (= (or b!6499106 b!6499112) bm!563090))

(declare-fun m!7287278 () Bool)

(assert (=> b!6499105 m!7287278))

(assert (=> bm!563090 m!7286228))

(declare-fun m!7287280 () Bool)

(assert (=> bm!563090 m!7287280))

(declare-fun m!7287282 () Bool)

(assert (=> d!2039387 m!7287282))

(assert (=> d!2039387 m!7286226))

(assert (=> bm!563093 m!7286228))

(declare-fun m!7287284 () Bool)

(assert (=> bm!563093 m!7287284))

(assert (=> b!6497967 d!2039387))

(assert (=> b!6497967 d!2039381))

(assert (=> b!6497967 d!2039383))

(declare-fun b!6499114 () Bool)

(declare-fun e!3938246 () Bool)

(declare-fun e!3938244 () Bool)

(assert (=> b!6499114 (= e!3938246 e!3938244)))

(declare-fun res!2669007 () Bool)

(assert (=> b!6499114 (=> (not res!2669007) (not e!3938244))))

(assert (=> b!6499114 (= res!2669007 (and (not ((_ is EmptyLang!16375) (regOne!33262 (regOne!33262 r!7292)))) (not ((_ is ElementMatch!16375) (regOne!33262 (regOne!33262 r!7292))))))))

(declare-fun b!6499115 () Bool)

(declare-fun e!3938245 () Bool)

(declare-fun e!3938249 () Bool)

(assert (=> b!6499115 (= e!3938245 e!3938249)))

(declare-fun res!2669008 () Bool)

(declare-fun call!563100 () Bool)

(assert (=> b!6499115 (= res!2669008 call!563100)))

(assert (=> b!6499115 (=> res!2669008 e!3938249)))

(declare-fun bm!563094 () Bool)

(declare-fun call!563099 () Bool)

(declare-fun c!1191535 () Bool)

(assert (=> bm!563094 (= call!563099 (nullable!6368 (ite c!1191535 (regTwo!33263 (regOne!33262 (regOne!33262 r!7292))) (regTwo!33262 (regOne!33262 (regOne!33262 r!7292))))))))

(declare-fun b!6499116 () Bool)

(declare-fun e!3938248 () Bool)

(assert (=> b!6499116 (= e!3938245 e!3938248)))

(declare-fun res!2669005 () Bool)

(assert (=> b!6499116 (= res!2669005 call!563100)))

(assert (=> b!6499116 (=> (not res!2669005) (not e!3938248))))

(declare-fun b!6499117 () Bool)

(declare-fun e!3938247 () Bool)

(assert (=> b!6499117 (= e!3938244 e!3938247)))

(declare-fun res!2669009 () Bool)

(assert (=> b!6499117 (=> res!2669009 e!3938247)))

(assert (=> b!6499117 (= res!2669009 ((_ is Star!16375) (regOne!33262 (regOne!33262 r!7292))))))

(declare-fun d!2039389 () Bool)

(declare-fun res!2669006 () Bool)

(assert (=> d!2039389 (=> res!2669006 e!3938246)))

(assert (=> d!2039389 (= res!2669006 ((_ is EmptyExpr!16375) (regOne!33262 (regOne!33262 r!7292))))))

(assert (=> d!2039389 (= (nullableFct!2304 (regOne!33262 (regOne!33262 r!7292))) e!3938246)))

(declare-fun b!6499118 () Bool)

(assert (=> b!6499118 (= e!3938249 call!563099)))

(declare-fun b!6499119 () Bool)

(assert (=> b!6499119 (= e!3938247 e!3938245)))

(assert (=> b!6499119 (= c!1191535 ((_ is Union!16375) (regOne!33262 (regOne!33262 r!7292))))))

(declare-fun bm!563095 () Bool)

(assert (=> bm!563095 (= call!563100 (nullable!6368 (ite c!1191535 (regOne!33263 (regOne!33262 (regOne!33262 r!7292))) (regOne!33262 (regOne!33262 (regOne!33262 r!7292))))))))

(declare-fun b!6499120 () Bool)

(assert (=> b!6499120 (= e!3938248 call!563099)))

(assert (= (and d!2039389 (not res!2669006)) b!6499114))

(assert (= (and b!6499114 res!2669007) b!6499117))

(assert (= (and b!6499117 (not res!2669009)) b!6499119))

(assert (= (and b!6499119 c!1191535) b!6499115))

(assert (= (and b!6499119 (not c!1191535)) b!6499116))

(assert (= (and b!6499115 (not res!2669008)) b!6499118))

(assert (= (and b!6499116 res!2669005) b!6499120))

(assert (= (or b!6499118 b!6499120) bm!563094))

(assert (= (or b!6499115 b!6499116) bm!563095))

(declare-fun m!7287286 () Bool)

(assert (=> bm!563094 m!7287286))

(declare-fun m!7287288 () Bool)

(assert (=> bm!563095 m!7287288))

(assert (=> d!2038983 d!2039389))

(assert (=> b!6498040 d!2038935))

(assert (=> d!2038921 d!2038929))

(declare-fun d!2039391 () Bool)

(assert (=> d!2039391 (= (flatMap!1880 lt!2391022 lambda!359990) (dynLambda!25939 lambda!359990 lt!2391002))))

(assert (=> d!2039391 true))

(declare-fun _$13!3749 () Unit!158835)

(assert (=> d!2039391 (= (choose!48228 lt!2391022 lt!2391002 lambda!359990) _$13!3749)))

(declare-fun b_lambda!246033 () Bool)

(assert (=> (not b_lambda!246033) (not d!2039391)))

(declare-fun bs!1650927 () Bool)

(assert (= bs!1650927 d!2039391))

(assert (=> bs!1650927 m!7285782))

(assert (=> bs!1650927 m!7286152))

(assert (=> d!2038921 d!2039391))

(declare-fun b!6499121 () Bool)

(declare-fun e!3938253 () Bool)

(declare-fun e!3938250 () Bool)

(assert (=> b!6499121 (= e!3938253 e!3938250)))

(declare-fun c!1191537 () Bool)

(assert (=> b!6499121 (= c!1191537 ((_ is Union!16375) lt!2391092))))

(declare-fun b!6499122 () Bool)

(declare-fun e!3938251 () Bool)

(assert (=> b!6499122 (= e!3938253 e!3938251)))

(declare-fun res!2669013 () Bool)

(assert (=> b!6499122 (= res!2669013 (not (nullable!6368 (reg!16704 lt!2391092))))))

(assert (=> b!6499122 (=> (not res!2669013) (not e!3938251))))

(declare-fun b!6499123 () Bool)

(declare-fun e!3938256 () Bool)

(declare-fun e!3938255 () Bool)

(assert (=> b!6499123 (= e!3938256 e!3938255)))

(declare-fun res!2669011 () Bool)

(assert (=> b!6499123 (=> (not res!2669011) (not e!3938255))))

(declare-fun call!563101 () Bool)

(assert (=> b!6499123 (= res!2669011 call!563101)))

(declare-fun b!6499124 () Bool)

(declare-fun res!2669012 () Bool)

(assert (=> b!6499124 (=> res!2669012 e!3938256)))

(assert (=> b!6499124 (= res!2669012 (not ((_ is Concat!25220) lt!2391092)))))

(assert (=> b!6499124 (= e!3938250 e!3938256)))

(declare-fun d!2039393 () Bool)

(declare-fun res!2669014 () Bool)

(declare-fun e!3938254 () Bool)

(assert (=> d!2039393 (=> res!2669014 e!3938254)))

(assert (=> d!2039393 (= res!2669014 ((_ is ElementMatch!16375) lt!2391092))))

(assert (=> d!2039393 (= (validRegex!8111 lt!2391092) e!3938254)))

(declare-fun call!563102 () Bool)

(declare-fun bm!563096 () Bool)

(declare-fun c!1191536 () Bool)

(assert (=> bm!563096 (= call!563102 (validRegex!8111 (ite c!1191536 (reg!16704 lt!2391092) (ite c!1191537 (regOne!33263 lt!2391092) (regOne!33262 lt!2391092)))))))

(declare-fun b!6499125 () Bool)

(assert (=> b!6499125 (= e!3938251 call!563102)))

(declare-fun b!6499126 () Bool)

(declare-fun e!3938252 () Bool)

(declare-fun call!563103 () Bool)

(assert (=> b!6499126 (= e!3938252 call!563103)))

(declare-fun b!6499127 () Bool)

(assert (=> b!6499127 (= e!3938255 call!563103)))

(declare-fun bm!563097 () Bool)

(assert (=> bm!563097 (= call!563103 (validRegex!8111 (ite c!1191537 (regTwo!33263 lt!2391092) (regTwo!33262 lt!2391092))))))

(declare-fun b!6499128 () Bool)

(declare-fun res!2669010 () Bool)

(assert (=> b!6499128 (=> (not res!2669010) (not e!3938252))))

(assert (=> b!6499128 (= res!2669010 call!563101)))

(assert (=> b!6499128 (= e!3938250 e!3938252)))

(declare-fun b!6499129 () Bool)

(assert (=> b!6499129 (= e!3938254 e!3938253)))

(assert (=> b!6499129 (= c!1191536 ((_ is Star!16375) lt!2391092))))

(declare-fun bm!563098 () Bool)

(assert (=> bm!563098 (= call!563101 call!563102)))

(assert (= (and d!2039393 (not res!2669014)) b!6499129))

(assert (= (and b!6499129 c!1191536) b!6499122))

(assert (= (and b!6499129 (not c!1191536)) b!6499121))

(assert (= (and b!6499122 res!2669013) b!6499125))

(assert (= (and b!6499121 c!1191537) b!6499128))

(assert (= (and b!6499121 (not c!1191537)) b!6499124))

(assert (= (and b!6499128 res!2669010) b!6499126))

(assert (= (and b!6499124 (not res!2669012)) b!6499123))

(assert (= (and b!6499123 res!2669011) b!6499127))

(assert (= (or b!6499126 b!6499127) bm!563097))

(assert (= (or b!6499128 b!6499123) bm!563098))

(assert (= (or b!6499125 bm!563098) bm!563096))

(declare-fun m!7287290 () Bool)

(assert (=> b!6499122 m!7287290))

(declare-fun m!7287292 () Bool)

(assert (=> bm!563096 m!7287292))

(declare-fun m!7287294 () Bool)

(assert (=> bm!563097 m!7287294))

(assert (=> d!2038941 d!2039393))

(declare-fun d!2039395 () Bool)

(declare-fun res!2669019 () Bool)

(declare-fun e!3938261 () Bool)

(assert (=> d!2039395 (=> res!2669019 e!3938261)))

(assert (=> d!2039395 (= res!2669019 ((_ is Nil!65300) (exprs!6259 (h!71749 zl!343))))))

(assert (=> d!2039395 (= (forall!15556 (exprs!6259 (h!71749 zl!343)) lambda!360027) e!3938261)))

(declare-fun b!6499134 () Bool)

(declare-fun e!3938262 () Bool)

(assert (=> b!6499134 (= e!3938261 e!3938262)))

(declare-fun res!2669020 () Bool)

(assert (=> b!6499134 (=> (not res!2669020) (not e!3938262))))

(declare-fun dynLambda!25941 (Int Regex!16375) Bool)

(assert (=> b!6499134 (= res!2669020 (dynLambda!25941 lambda!360027 (h!71748 (exprs!6259 (h!71749 zl!343)))))))

(declare-fun b!6499135 () Bool)

(assert (=> b!6499135 (= e!3938262 (forall!15556 (t!379056 (exprs!6259 (h!71749 zl!343))) lambda!360027))))

(assert (= (and d!2039395 (not res!2669019)) b!6499134))

(assert (= (and b!6499134 res!2669020) b!6499135))

(declare-fun b_lambda!246035 () Bool)

(assert (=> (not b_lambda!246035) (not b!6499134)))

(declare-fun m!7287296 () Bool)

(assert (=> b!6499134 m!7287296))

(declare-fun m!7287298 () Bool)

(assert (=> b!6499135 m!7287298))

(assert (=> d!2038941 d!2039395))

(declare-fun d!2039397 () Bool)

(assert (=> d!2039397 (= (isEmpty!37497 (t!379056 (unfocusZipperList!1796 zl!343))) ((_ is Nil!65300) (t!379056 (unfocusZipperList!1796 zl!343))))))

(assert (=> b!6498148 d!2039397))

(declare-fun b!6499136 () Bool)

(declare-fun e!3938263 () (InoxSet Context!11518))

(assert (=> b!6499136 (= e!3938263 ((as const (Array Context!11518 Bool)) false))))

(declare-fun c!1191539 () Bool)

(declare-fun bm!563099 () Bool)

(declare-fun call!563108 () (InoxSet Context!11518))

(declare-fun call!563104 () List!65424)

(declare-fun c!1191538 () Bool)

(declare-fun c!1191540 () Bool)

(assert (=> bm!563099 (= call!563108 (derivationStepZipperDown!1623 (ite c!1191539 (regOne!33263 (h!71748 (exprs!6259 lt!2391016))) (ite c!1191540 (regTwo!33262 (h!71748 (exprs!6259 lt!2391016))) (ite c!1191538 (regOne!33262 (h!71748 (exprs!6259 lt!2391016))) (reg!16704 (h!71748 (exprs!6259 lt!2391016)))))) (ite (or c!1191539 c!1191540) (Context!11519 (t!379056 (exprs!6259 lt!2391016))) (Context!11519 call!563104)) (h!71750 s!2326)))))

(declare-fun b!6499137 () Bool)

(declare-fun e!3938268 () (InoxSet Context!11518))

(declare-fun e!3938266 () (InoxSet Context!11518))

(assert (=> b!6499137 (= e!3938268 e!3938266)))

(assert (=> b!6499137 (= c!1191539 ((_ is Union!16375) (h!71748 (exprs!6259 lt!2391016))))))

(declare-fun bm!563100 () Bool)

(declare-fun call!563105 () List!65424)

(assert (=> bm!563100 (= call!563104 call!563105)))

(declare-fun d!2039399 () Bool)

(declare-fun c!1191541 () Bool)

(assert (=> d!2039399 (= c!1191541 (and ((_ is ElementMatch!16375) (h!71748 (exprs!6259 lt!2391016))) (= (c!1191063 (h!71748 (exprs!6259 lt!2391016))) (h!71750 s!2326))))))

(assert (=> d!2039399 (= (derivationStepZipperDown!1623 (h!71748 (exprs!6259 lt!2391016)) (Context!11519 (t!379056 (exprs!6259 lt!2391016))) (h!71750 s!2326)) e!3938268)))

(declare-fun b!6499138 () Bool)

(declare-fun call!563109 () (InoxSet Context!11518))

(assert (=> b!6499138 (= e!3938266 ((_ map or) call!563108 call!563109))))

(declare-fun bm!563101 () Bool)

(assert (=> bm!563101 (= call!563105 ($colon$colon!2226 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 lt!2391016)))) (ite (or c!1191540 c!1191538) (regTwo!33262 (h!71748 (exprs!6259 lt!2391016))) (h!71748 (exprs!6259 lt!2391016)))))))

(declare-fun b!6499139 () Bool)

(declare-fun e!3938267 () Bool)

(assert (=> b!6499139 (= c!1191540 e!3938267)))

(declare-fun res!2669021 () Bool)

(assert (=> b!6499139 (=> (not res!2669021) (not e!3938267))))

(assert (=> b!6499139 (= res!2669021 ((_ is Concat!25220) (h!71748 (exprs!6259 lt!2391016))))))

(declare-fun e!3938264 () (InoxSet Context!11518))

(assert (=> b!6499139 (= e!3938266 e!3938264)))

(declare-fun b!6499140 () Bool)

(declare-fun e!3938265 () (InoxSet Context!11518))

(assert (=> b!6499140 (= e!3938264 e!3938265)))

(assert (=> b!6499140 (= c!1191538 ((_ is Concat!25220) (h!71748 (exprs!6259 lt!2391016))))))

(declare-fun b!6499141 () Bool)

(declare-fun call!563106 () (InoxSet Context!11518))

(assert (=> b!6499141 (= e!3938265 call!563106)))

(declare-fun b!6499142 () Bool)

(assert (=> b!6499142 (= e!3938267 (nullable!6368 (regOne!33262 (h!71748 (exprs!6259 lt!2391016)))))))

(declare-fun b!6499143 () Bool)

(declare-fun call!563107 () (InoxSet Context!11518))

(assert (=> b!6499143 (= e!3938264 ((_ map or) call!563109 call!563107))))

(declare-fun bm!563102 () Bool)

(assert (=> bm!563102 (= call!563109 (derivationStepZipperDown!1623 (ite c!1191539 (regTwo!33263 (h!71748 (exprs!6259 lt!2391016))) (regOne!33262 (h!71748 (exprs!6259 lt!2391016)))) (ite c!1191539 (Context!11519 (t!379056 (exprs!6259 lt!2391016))) (Context!11519 call!563105)) (h!71750 s!2326)))))

(declare-fun b!6499144 () Bool)

(assert (=> b!6499144 (= e!3938268 (store ((as const (Array Context!11518 Bool)) false) (Context!11519 (t!379056 (exprs!6259 lt!2391016))) true))))

(declare-fun bm!563103 () Bool)

(assert (=> bm!563103 (= call!563106 call!563107)))

(declare-fun b!6499145 () Bool)

(declare-fun c!1191542 () Bool)

(assert (=> b!6499145 (= c!1191542 ((_ is Star!16375) (h!71748 (exprs!6259 lt!2391016))))))

(assert (=> b!6499145 (= e!3938265 e!3938263)))

(declare-fun b!6499146 () Bool)

(assert (=> b!6499146 (= e!3938263 call!563106)))

(declare-fun bm!563104 () Bool)

(assert (=> bm!563104 (= call!563107 call!563108)))

(assert (= (and d!2039399 c!1191541) b!6499144))

(assert (= (and d!2039399 (not c!1191541)) b!6499137))

(assert (= (and b!6499137 c!1191539) b!6499138))

(assert (= (and b!6499137 (not c!1191539)) b!6499139))

(assert (= (and b!6499139 res!2669021) b!6499142))

(assert (= (and b!6499139 c!1191540) b!6499143))

(assert (= (and b!6499139 (not c!1191540)) b!6499140))

(assert (= (and b!6499140 c!1191538) b!6499141))

(assert (= (and b!6499140 (not c!1191538)) b!6499145))

(assert (= (and b!6499145 c!1191542) b!6499146))

(assert (= (and b!6499145 (not c!1191542)) b!6499136))

(assert (= (or b!6499141 b!6499146) bm!563100))

(assert (= (or b!6499141 b!6499146) bm!563103))

(assert (= (or b!6499143 bm!563100) bm!563101))

(assert (= (or b!6499143 bm!563103) bm!563104))

(assert (= (or b!6499138 b!6499143) bm!563102))

(assert (= (or b!6499138 bm!563104) bm!563099))

(declare-fun m!7287300 () Bool)

(assert (=> bm!563102 m!7287300))

(declare-fun m!7287302 () Bool)

(assert (=> b!6499142 m!7287302))

(declare-fun m!7287304 () Bool)

(assert (=> bm!563099 m!7287304))

(declare-fun m!7287306 () Bool)

(assert (=> b!6499144 m!7287306))

(declare-fun m!7287308 () Bool)

(assert (=> bm!563101 m!7287308))

(assert (=> bm!562907 d!2039399))

(declare-fun d!2039401 () Bool)

(assert (=> d!2039401 (= (isEmpty!37497 (unfocusZipperList!1796 zl!343)) ((_ is Nil!65300) (unfocusZipperList!1796 zl!343)))))

(assert (=> b!6498152 d!2039401))

(declare-fun b!6499147 () Bool)

(declare-fun e!3938269 () (InoxSet Context!11518))

(assert (=> b!6499147 (= e!3938269 ((as const (Array Context!11518 Bool)) false))))

(declare-fun bm!563105 () Bool)

(declare-fun c!1191544 () Bool)

(declare-fun c!1191545 () Bool)

(declare-fun c!1191543 () Bool)

(declare-fun call!563110 () List!65424)

(declare-fun call!563114 () (InoxSet Context!11518))

(assert (=> bm!563105 (= call!563114 (derivationStepZipperDown!1623 (ite c!1191544 (regOne!33263 (h!71748 (exprs!6259 lt!2391002))) (ite c!1191545 (regTwo!33262 (h!71748 (exprs!6259 lt!2391002))) (ite c!1191543 (regOne!33262 (h!71748 (exprs!6259 lt!2391002))) (reg!16704 (h!71748 (exprs!6259 lt!2391002)))))) (ite (or c!1191544 c!1191545) (Context!11519 (t!379056 (exprs!6259 lt!2391002))) (Context!11519 call!563110)) (h!71750 s!2326)))))

(declare-fun b!6499148 () Bool)

(declare-fun e!3938274 () (InoxSet Context!11518))

(declare-fun e!3938272 () (InoxSet Context!11518))

(assert (=> b!6499148 (= e!3938274 e!3938272)))

(assert (=> b!6499148 (= c!1191544 ((_ is Union!16375) (h!71748 (exprs!6259 lt!2391002))))))

(declare-fun bm!563106 () Bool)

(declare-fun call!563111 () List!65424)

(assert (=> bm!563106 (= call!563110 call!563111)))

(declare-fun d!2039403 () Bool)

(declare-fun c!1191546 () Bool)

(assert (=> d!2039403 (= c!1191546 (and ((_ is ElementMatch!16375) (h!71748 (exprs!6259 lt!2391002))) (= (c!1191063 (h!71748 (exprs!6259 lt!2391002))) (h!71750 s!2326))))))

(assert (=> d!2039403 (= (derivationStepZipperDown!1623 (h!71748 (exprs!6259 lt!2391002)) (Context!11519 (t!379056 (exprs!6259 lt!2391002))) (h!71750 s!2326)) e!3938274)))

(declare-fun b!6499149 () Bool)

(declare-fun call!563115 () (InoxSet Context!11518))

(assert (=> b!6499149 (= e!3938272 ((_ map or) call!563114 call!563115))))

(declare-fun bm!563107 () Bool)

(assert (=> bm!563107 (= call!563111 ($colon$colon!2226 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 lt!2391002)))) (ite (or c!1191545 c!1191543) (regTwo!33262 (h!71748 (exprs!6259 lt!2391002))) (h!71748 (exprs!6259 lt!2391002)))))))

(declare-fun b!6499150 () Bool)

(declare-fun e!3938273 () Bool)

(assert (=> b!6499150 (= c!1191545 e!3938273)))

(declare-fun res!2669022 () Bool)

(assert (=> b!6499150 (=> (not res!2669022) (not e!3938273))))

(assert (=> b!6499150 (= res!2669022 ((_ is Concat!25220) (h!71748 (exprs!6259 lt!2391002))))))

(declare-fun e!3938270 () (InoxSet Context!11518))

(assert (=> b!6499150 (= e!3938272 e!3938270)))

(declare-fun b!6499151 () Bool)

(declare-fun e!3938271 () (InoxSet Context!11518))

(assert (=> b!6499151 (= e!3938270 e!3938271)))

(assert (=> b!6499151 (= c!1191543 ((_ is Concat!25220) (h!71748 (exprs!6259 lt!2391002))))))

(declare-fun b!6499152 () Bool)

(declare-fun call!563112 () (InoxSet Context!11518))

(assert (=> b!6499152 (= e!3938271 call!563112)))

(declare-fun b!6499153 () Bool)

(assert (=> b!6499153 (= e!3938273 (nullable!6368 (regOne!33262 (h!71748 (exprs!6259 lt!2391002)))))))

(declare-fun b!6499154 () Bool)

(declare-fun call!563113 () (InoxSet Context!11518))

(assert (=> b!6499154 (= e!3938270 ((_ map or) call!563115 call!563113))))

(declare-fun bm!563108 () Bool)

(assert (=> bm!563108 (= call!563115 (derivationStepZipperDown!1623 (ite c!1191544 (regTwo!33263 (h!71748 (exprs!6259 lt!2391002))) (regOne!33262 (h!71748 (exprs!6259 lt!2391002)))) (ite c!1191544 (Context!11519 (t!379056 (exprs!6259 lt!2391002))) (Context!11519 call!563111)) (h!71750 s!2326)))))

(declare-fun b!6499155 () Bool)

(assert (=> b!6499155 (= e!3938274 (store ((as const (Array Context!11518 Bool)) false) (Context!11519 (t!379056 (exprs!6259 lt!2391002))) true))))

(declare-fun bm!563109 () Bool)

(assert (=> bm!563109 (= call!563112 call!563113)))

(declare-fun b!6499156 () Bool)

(declare-fun c!1191547 () Bool)

(assert (=> b!6499156 (= c!1191547 ((_ is Star!16375) (h!71748 (exprs!6259 lt!2391002))))))

(assert (=> b!6499156 (= e!3938271 e!3938269)))

(declare-fun b!6499157 () Bool)

(assert (=> b!6499157 (= e!3938269 call!563112)))

(declare-fun bm!563110 () Bool)

(assert (=> bm!563110 (= call!563113 call!563114)))

(assert (= (and d!2039403 c!1191546) b!6499155))

(assert (= (and d!2039403 (not c!1191546)) b!6499148))

(assert (= (and b!6499148 c!1191544) b!6499149))

(assert (= (and b!6499148 (not c!1191544)) b!6499150))

(assert (= (and b!6499150 res!2669022) b!6499153))

(assert (= (and b!6499150 c!1191545) b!6499154))

(assert (= (and b!6499150 (not c!1191545)) b!6499151))

(assert (= (and b!6499151 c!1191543) b!6499152))

(assert (= (and b!6499151 (not c!1191543)) b!6499156))

(assert (= (and b!6499156 c!1191547) b!6499157))

(assert (= (and b!6499156 (not c!1191547)) b!6499147))

(assert (= (or b!6499152 b!6499157) bm!563106))

(assert (= (or b!6499152 b!6499157) bm!563109))

(assert (= (or b!6499154 bm!563106) bm!563107))

(assert (= (or b!6499154 bm!563109) bm!563110))

(assert (= (or b!6499149 b!6499154) bm!563108))

(assert (= (or b!6499149 bm!563110) bm!563105))

(declare-fun m!7287310 () Bool)

(assert (=> bm!563108 m!7287310))

(declare-fun m!7287312 () Bool)

(assert (=> b!6499153 m!7287312))

(declare-fun m!7287314 () Bool)

(assert (=> bm!563105 m!7287314))

(declare-fun m!7287316 () Bool)

(assert (=> b!6499155 m!7287316))

(declare-fun m!7287318 () Bool)

(assert (=> bm!563107 m!7287318))

(assert (=> bm!562884 d!2039403))

(declare-fun bm!563111 () Bool)

(declare-fun call!563116 () (InoxSet Context!11518))

(assert (=> bm!563111 (= call!563116 (derivationStepZipperDown!1623 (h!71748 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 lt!2391016))))) (Context!11519 (t!379056 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 lt!2391016)))))) (h!71750 s!2326)))))

(declare-fun b!6499158 () Bool)

(declare-fun e!3938276 () Bool)

(assert (=> b!6499158 (= e!3938276 (nullable!6368 (h!71748 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 lt!2391016)))))))))

(declare-fun b!6499159 () Bool)

(declare-fun e!3938275 () (InoxSet Context!11518))

(declare-fun e!3938277 () (InoxSet Context!11518))

(assert (=> b!6499159 (= e!3938275 e!3938277)))

(declare-fun c!1191549 () Bool)

(assert (=> b!6499159 (= c!1191549 ((_ is Cons!65300) (exprs!6259 (Context!11519 (t!379056 (exprs!6259 lt!2391016))))))))

(declare-fun d!2039405 () Bool)

(declare-fun c!1191548 () Bool)

(assert (=> d!2039405 (= c!1191548 e!3938276)))

(declare-fun res!2669023 () Bool)

(assert (=> d!2039405 (=> (not res!2669023) (not e!3938276))))

(assert (=> d!2039405 (= res!2669023 ((_ is Cons!65300) (exprs!6259 (Context!11519 (t!379056 (exprs!6259 lt!2391016))))))))

(assert (=> d!2039405 (= (derivationStepZipperUp!1549 (Context!11519 (t!379056 (exprs!6259 lt!2391016))) (h!71750 s!2326)) e!3938275)))

(declare-fun b!6499160 () Bool)

(assert (=> b!6499160 (= e!3938277 call!563116)))

(declare-fun b!6499161 () Bool)

(assert (=> b!6499161 (= e!3938275 ((_ map or) call!563116 (derivationStepZipperUp!1549 (Context!11519 (t!379056 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 lt!2391016)))))) (h!71750 s!2326))))))

(declare-fun b!6499162 () Bool)

(assert (=> b!6499162 (= e!3938277 ((as const (Array Context!11518 Bool)) false))))

(assert (= (and d!2039405 res!2669023) b!6499158))

(assert (= (and d!2039405 c!1191548) b!6499161))

(assert (= (and d!2039405 (not c!1191548)) b!6499159))

(assert (= (and b!6499159 c!1191549) b!6499160))

(assert (= (and b!6499159 (not c!1191549)) b!6499162))

(assert (= (or b!6499161 b!6499160) bm!563111))

(declare-fun m!7287320 () Bool)

(assert (=> bm!563111 m!7287320))

(declare-fun m!7287322 () Bool)

(assert (=> b!6499158 m!7287322))

(declare-fun m!7287324 () Bool)

(assert (=> b!6499161 m!7287324))

(assert (=> b!6498089 d!2039405))

(declare-fun b!6499163 () Bool)

(declare-fun e!3938278 () (InoxSet Context!11518))

(assert (=> b!6499163 (= e!3938278 ((as const (Array Context!11518 Bool)) false))))

(declare-fun c!1191552 () Bool)

(declare-fun c!1191551 () Bool)

(declare-fun call!563121 () (InoxSet Context!11518))

(declare-fun call!563117 () List!65424)

(declare-fun c!1191550 () Bool)

(declare-fun bm!563112 () Bool)

(assert (=> bm!563112 (= call!563121 (derivationStepZipperDown!1623 (ite c!1191551 (regOne!33263 (ite c!1191267 (regOne!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191268 (regTwo!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191266 (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (reg!16704 (h!71748 (exprs!6259 (h!71749 zl!343)))))))) (ite c!1191552 (regTwo!33262 (ite c!1191267 (regOne!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191268 (regTwo!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191266 (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (reg!16704 (h!71748 (exprs!6259 (h!71749 zl!343)))))))) (ite c!1191550 (regOne!33262 (ite c!1191267 (regOne!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191268 (regTwo!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191266 (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (reg!16704 (h!71748 (exprs!6259 (h!71749 zl!343)))))))) (reg!16704 (ite c!1191267 (regOne!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191268 (regTwo!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191266 (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (reg!16704 (h!71748 (exprs!6259 (h!71749 zl!343))))))))))) (ite (or c!1191551 c!1191552) (ite (or c!1191267 c!1191268) lt!2391021 (Context!11519 call!562914)) (Context!11519 call!563117)) (h!71750 s!2326)))))

(declare-fun b!6499164 () Bool)

(declare-fun e!3938283 () (InoxSet Context!11518))

(declare-fun e!3938281 () (InoxSet Context!11518))

(assert (=> b!6499164 (= e!3938283 e!3938281)))

(assert (=> b!6499164 (= c!1191551 ((_ is Union!16375) (ite c!1191267 (regOne!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191268 (regTwo!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191266 (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (reg!16704 (h!71748 (exprs!6259 (h!71749 zl!343)))))))))))

(declare-fun bm!563113 () Bool)

(declare-fun call!563118 () List!65424)

(assert (=> bm!563113 (= call!563117 call!563118)))

(declare-fun c!1191553 () Bool)

(declare-fun d!2039407 () Bool)

(assert (=> d!2039407 (= c!1191553 (and ((_ is ElementMatch!16375) (ite c!1191267 (regOne!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191268 (regTwo!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191266 (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (reg!16704 (h!71748 (exprs!6259 (h!71749 zl!343)))))))) (= (c!1191063 (ite c!1191267 (regOne!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191268 (regTwo!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191266 (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (reg!16704 (h!71748 (exprs!6259 (h!71749 zl!343)))))))) (h!71750 s!2326))))))

(assert (=> d!2039407 (= (derivationStepZipperDown!1623 (ite c!1191267 (regOne!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191268 (regTwo!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191266 (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (reg!16704 (h!71748 (exprs!6259 (h!71749 zl!343))))))) (ite (or c!1191267 c!1191268) lt!2391021 (Context!11519 call!562914)) (h!71750 s!2326)) e!3938283)))

(declare-fun b!6499165 () Bool)

(declare-fun call!563122 () (InoxSet Context!11518))

(assert (=> b!6499165 (= e!3938281 ((_ map or) call!563121 call!563122))))

(declare-fun bm!563114 () Bool)

(assert (=> bm!563114 (= call!563118 ($colon$colon!2226 (exprs!6259 (ite (or c!1191267 c!1191268) lt!2391021 (Context!11519 call!562914))) (ite (or c!1191552 c!1191550) (regTwo!33262 (ite c!1191267 (regOne!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191268 (regTwo!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191266 (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (reg!16704 (h!71748 (exprs!6259 (h!71749 zl!343)))))))) (ite c!1191267 (regOne!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191268 (regTwo!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191266 (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (reg!16704 (h!71748 (exprs!6259 (h!71749 zl!343))))))))))))

(declare-fun b!6499166 () Bool)

(declare-fun e!3938282 () Bool)

(assert (=> b!6499166 (= c!1191552 e!3938282)))

(declare-fun res!2669024 () Bool)

(assert (=> b!6499166 (=> (not res!2669024) (not e!3938282))))

(assert (=> b!6499166 (= res!2669024 ((_ is Concat!25220) (ite c!1191267 (regOne!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191268 (regTwo!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191266 (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (reg!16704 (h!71748 (exprs!6259 (h!71749 zl!343)))))))))))

(declare-fun e!3938279 () (InoxSet Context!11518))

(assert (=> b!6499166 (= e!3938281 e!3938279)))

(declare-fun b!6499167 () Bool)

(declare-fun e!3938280 () (InoxSet Context!11518))

(assert (=> b!6499167 (= e!3938279 e!3938280)))

(assert (=> b!6499167 (= c!1191550 ((_ is Concat!25220) (ite c!1191267 (regOne!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191268 (regTwo!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191266 (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (reg!16704 (h!71748 (exprs!6259 (h!71749 zl!343)))))))))))

(declare-fun b!6499168 () Bool)

(declare-fun call!563119 () (InoxSet Context!11518))

(assert (=> b!6499168 (= e!3938280 call!563119)))

(declare-fun b!6499169 () Bool)

(assert (=> b!6499169 (= e!3938282 (nullable!6368 (regOne!33262 (ite c!1191267 (regOne!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191268 (regTwo!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191266 (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (reg!16704 (h!71748 (exprs!6259 (h!71749 zl!343))))))))))))

(declare-fun b!6499170 () Bool)

(declare-fun call!563120 () (InoxSet Context!11518))

(assert (=> b!6499170 (= e!3938279 ((_ map or) call!563122 call!563120))))

(declare-fun bm!563115 () Bool)

(assert (=> bm!563115 (= call!563122 (derivationStepZipperDown!1623 (ite c!1191551 (regTwo!33263 (ite c!1191267 (regOne!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191268 (regTwo!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191266 (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (reg!16704 (h!71748 (exprs!6259 (h!71749 zl!343)))))))) (regOne!33262 (ite c!1191267 (regOne!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191268 (regTwo!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191266 (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (reg!16704 (h!71748 (exprs!6259 (h!71749 zl!343))))))))) (ite c!1191551 (ite (or c!1191267 c!1191268) lt!2391021 (Context!11519 call!562914)) (Context!11519 call!563118)) (h!71750 s!2326)))))

(declare-fun b!6499171 () Bool)

(assert (=> b!6499171 (= e!3938283 (store ((as const (Array Context!11518 Bool)) false) (ite (or c!1191267 c!1191268) lt!2391021 (Context!11519 call!562914)) true))))

(declare-fun bm!563116 () Bool)

(assert (=> bm!563116 (= call!563119 call!563120)))

(declare-fun c!1191554 () Bool)

(declare-fun b!6499172 () Bool)

(assert (=> b!6499172 (= c!1191554 ((_ is Star!16375) (ite c!1191267 (regOne!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191268 (regTwo!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191266 (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (reg!16704 (h!71748 (exprs!6259 (h!71749 zl!343)))))))))))

(assert (=> b!6499172 (= e!3938280 e!3938278)))

(declare-fun b!6499173 () Bool)

(assert (=> b!6499173 (= e!3938278 call!563119)))

(declare-fun bm!563117 () Bool)

(assert (=> bm!563117 (= call!563120 call!563121)))

(assert (= (and d!2039407 c!1191553) b!6499171))

(assert (= (and d!2039407 (not c!1191553)) b!6499164))

(assert (= (and b!6499164 c!1191551) b!6499165))

(assert (= (and b!6499164 (not c!1191551)) b!6499166))

(assert (= (and b!6499166 res!2669024) b!6499169))

(assert (= (and b!6499166 c!1191552) b!6499170))

(assert (= (and b!6499166 (not c!1191552)) b!6499167))

(assert (= (and b!6499167 c!1191550) b!6499168))

(assert (= (and b!6499167 (not c!1191550)) b!6499172))

(assert (= (and b!6499172 c!1191554) b!6499173))

(assert (= (and b!6499172 (not c!1191554)) b!6499163))

(assert (= (or b!6499168 b!6499173) bm!563113))

(assert (= (or b!6499168 b!6499173) bm!563116))

(assert (= (or b!6499170 bm!563113) bm!563114))

(assert (= (or b!6499170 bm!563116) bm!563117))

(assert (= (or b!6499165 b!6499170) bm!563115))

(assert (= (or b!6499165 bm!563117) bm!563112))

(declare-fun m!7287326 () Bool)

(assert (=> bm!563115 m!7287326))

(declare-fun m!7287328 () Bool)

(assert (=> b!6499169 m!7287328))

(declare-fun m!7287330 () Bool)

(assert (=> bm!563112 m!7287330))

(declare-fun m!7287332 () Bool)

(assert (=> b!6499171 m!7287332))

(declare-fun m!7287334 () Bool)

(assert (=> bm!563114 m!7287334))

(assert (=> bm!562909 d!2039407))

(assert (=> d!2038999 d!2039005))

(declare-fun d!2039409 () Bool)

(assert (=> d!2039409 (= (flatMap!1880 z!1189 lambda!359990) (dynLambda!25939 lambda!359990 (h!71749 zl!343)))))

(assert (=> d!2039409 true))

(declare-fun _$13!3750 () Unit!158835)

(assert (=> d!2039409 (= (choose!48228 z!1189 (h!71749 zl!343) lambda!359990) _$13!3750)))

(declare-fun b_lambda!246037 () Bool)

(assert (=> (not b_lambda!246037) (not d!2039409)))

(declare-fun bs!1650928 () Bool)

(assert (= bs!1650928 d!2039409))

(assert (=> bs!1650928 m!7285812))

(assert (=> bs!1650928 m!7286356))

(assert (=> d!2038999 d!2039409))

(declare-fun d!2039411 () Bool)

(assert (=> d!2039411 (= ($colon$colon!2226 (exprs!6259 lt!2391021) (ite (or c!1191268 c!1191266) (regTwo!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (h!71748 (exprs!6259 (h!71749 zl!343))))) (Cons!65300 (ite (or c!1191268 c!1191266) (regTwo!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (h!71748 (exprs!6259 (h!71749 zl!343)))) (exprs!6259 lt!2391021)))))

(assert (=> bm!562911 d!2039411))

(declare-fun d!2039413 () Bool)

(assert (=> d!2039413 (= (isEmpty!37501 s!2326) ((_ is Nil!65302) s!2326))))

(assert (=> d!2038955 d!2039413))

(assert (=> d!2038955 d!2038937))

(declare-fun b!6499174 () Bool)

(declare-fun e!3938284 () (InoxSet Context!11518))

(assert (=> b!6499174 (= e!3938284 ((as const (Array Context!11518 Bool)) false))))

(declare-fun c!1191557 () Bool)

(declare-fun bm!563118 () Bool)

(declare-fun call!563123 () List!65424)

(declare-fun c!1191555 () Bool)

(declare-fun c!1191556 () Bool)

(declare-fun call!563127 () (InoxSet Context!11518))

(assert (=> bm!563118 (= call!563127 (derivationStepZipperDown!1623 (ite c!1191556 (regOne!33263 (h!71748 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343)))))))) (ite c!1191557 (regTwo!33262 (h!71748 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343)))))))) (ite c!1191555 (regOne!33262 (h!71748 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343)))))))) (reg!16704 (h!71748 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343))))))))))) (ite (or c!1191556 c!1191557) (Context!11519 (t!379056 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343)))))))) (Context!11519 call!563123)) (h!71750 s!2326)))))

(declare-fun b!6499175 () Bool)

(declare-fun e!3938289 () (InoxSet Context!11518))

(declare-fun e!3938287 () (InoxSet Context!11518))

(assert (=> b!6499175 (= e!3938289 e!3938287)))

(assert (=> b!6499175 (= c!1191556 ((_ is Union!16375) (h!71748 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343)))))))))))

(declare-fun bm!563119 () Bool)

(declare-fun call!563124 () List!65424)

(assert (=> bm!563119 (= call!563123 call!563124)))

(declare-fun d!2039415 () Bool)

(declare-fun c!1191558 () Bool)

(assert (=> d!2039415 (= c!1191558 (and ((_ is ElementMatch!16375) (h!71748 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343)))))))) (= (c!1191063 (h!71748 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343)))))))) (h!71750 s!2326))))))

(assert (=> d!2039415 (= (derivationStepZipperDown!1623 (h!71748 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343))))))) (Context!11519 (t!379056 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343)))))))) (h!71750 s!2326)) e!3938289)))

(declare-fun b!6499176 () Bool)

(declare-fun call!563128 () (InoxSet Context!11518))

(assert (=> b!6499176 (= e!3938287 ((_ map or) call!563127 call!563128))))

(declare-fun bm!563120 () Bool)

(assert (=> bm!563120 (= call!563124 ($colon$colon!2226 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343))))))))) (ite (or c!1191557 c!1191555) (regTwo!33262 (h!71748 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343)))))))) (h!71748 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343))))))))))))

(declare-fun b!6499177 () Bool)

(declare-fun e!3938288 () Bool)

(assert (=> b!6499177 (= c!1191557 e!3938288)))

(declare-fun res!2669025 () Bool)

(assert (=> b!6499177 (=> (not res!2669025) (not e!3938288))))

(assert (=> b!6499177 (= res!2669025 ((_ is Concat!25220) (h!71748 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343)))))))))))

(declare-fun e!3938285 () (InoxSet Context!11518))

(assert (=> b!6499177 (= e!3938287 e!3938285)))

(declare-fun b!6499178 () Bool)

(declare-fun e!3938286 () (InoxSet Context!11518))

(assert (=> b!6499178 (= e!3938285 e!3938286)))

(assert (=> b!6499178 (= c!1191555 ((_ is Concat!25220) (h!71748 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343)))))))))))

(declare-fun b!6499179 () Bool)

(declare-fun call!563125 () (InoxSet Context!11518))

(assert (=> b!6499179 (= e!3938286 call!563125)))

(declare-fun b!6499180 () Bool)

(assert (=> b!6499180 (= e!3938288 (nullable!6368 (regOne!33262 (h!71748 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343))))))))))))

(declare-fun b!6499181 () Bool)

(declare-fun call!563126 () (InoxSet Context!11518))

(assert (=> b!6499181 (= e!3938285 ((_ map or) call!563128 call!563126))))

(declare-fun bm!563121 () Bool)

(assert (=> bm!563121 (= call!563128 (derivationStepZipperDown!1623 (ite c!1191556 (regTwo!33263 (h!71748 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343)))))))) (regOne!33262 (h!71748 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343))))))))) (ite c!1191556 (Context!11519 (t!379056 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343)))))))) (Context!11519 call!563124)) (h!71750 s!2326)))))

(declare-fun b!6499182 () Bool)

(assert (=> b!6499182 (= e!3938289 (store ((as const (Array Context!11518 Bool)) false) (Context!11519 (t!379056 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343)))))))) true))))

(declare-fun bm!563122 () Bool)

(assert (=> bm!563122 (= call!563125 call!563126)))

(declare-fun b!6499183 () Bool)

(declare-fun c!1191559 () Bool)

(assert (=> b!6499183 (= c!1191559 ((_ is Star!16375) (h!71748 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343)))))))))))

(assert (=> b!6499183 (= e!3938286 e!3938284)))

(declare-fun b!6499184 () Bool)

(assert (=> b!6499184 (= e!3938284 call!563125)))

(declare-fun bm!563123 () Bool)

(assert (=> bm!563123 (= call!563126 call!563127)))

(assert (= (and d!2039415 c!1191558) b!6499182))

(assert (= (and d!2039415 (not c!1191558)) b!6499175))

(assert (= (and b!6499175 c!1191556) b!6499176))

(assert (= (and b!6499175 (not c!1191556)) b!6499177))

(assert (= (and b!6499177 res!2669025) b!6499180))

(assert (= (and b!6499177 c!1191557) b!6499181))

(assert (= (and b!6499177 (not c!1191557)) b!6499178))

(assert (= (and b!6499178 c!1191555) b!6499179))

(assert (= (and b!6499178 (not c!1191555)) b!6499183))

(assert (= (and b!6499183 c!1191559) b!6499184))

(assert (= (and b!6499183 (not c!1191559)) b!6499174))

(assert (= (or b!6499179 b!6499184) bm!563119))

(assert (= (or b!6499179 b!6499184) bm!563122))

(assert (= (or b!6499181 bm!563119) bm!563120))

(assert (= (or b!6499181 bm!563122) bm!563123))

(assert (= (or b!6499176 b!6499181) bm!563121))

(assert (= (or b!6499176 bm!563123) bm!563118))

(declare-fun m!7287336 () Bool)

(assert (=> bm!563121 m!7287336))

(declare-fun m!7287338 () Bool)

(assert (=> b!6499180 m!7287338))

(declare-fun m!7287340 () Bool)

(assert (=> bm!563118 m!7287340))

(declare-fun m!7287342 () Bool)

(assert (=> b!6499182 m!7287342))

(declare-fun m!7287344 () Bool)

(assert (=> bm!563120 m!7287344))

(assert (=> bm!562908 d!2039415))

(assert (=> bm!562905 d!2039413))

(declare-fun d!2039417 () Bool)

(assert (=> d!2039417 true))

(assert (=> d!2039417 true))

(declare-fun res!2669026 () Bool)

(assert (=> d!2039417 (= (choose!48233 lambda!359989) res!2669026)))

(assert (=> d!2038969 d!2039417))

(assert (=> d!2038963 d!2039355))

(declare-fun d!2039419 () Bool)

(declare-fun res!2669027 () Bool)

(declare-fun e!3938290 () Bool)

(assert (=> d!2039419 (=> res!2669027 e!3938290)))

(assert (=> d!2039419 (= res!2669027 ((_ is Nil!65300) (exprs!6259 lt!2391002)))))

(assert (=> d!2039419 (= (forall!15556 (exprs!6259 lt!2391002) lambda!360052) e!3938290)))

(declare-fun b!6499185 () Bool)

(declare-fun e!3938291 () Bool)

(assert (=> b!6499185 (= e!3938290 e!3938291)))

(declare-fun res!2669028 () Bool)

(assert (=> b!6499185 (=> (not res!2669028) (not e!3938291))))

(assert (=> b!6499185 (= res!2669028 (dynLambda!25941 lambda!360052 (h!71748 (exprs!6259 lt!2391002))))))

(declare-fun b!6499186 () Bool)

(assert (=> b!6499186 (= e!3938291 (forall!15556 (t!379056 (exprs!6259 lt!2391002)) lambda!360052))))

(assert (= (and d!2039419 (not res!2669027)) b!6499185))

(assert (= (and b!6499185 res!2669028) b!6499186))

(declare-fun b_lambda!246039 () Bool)

(assert (=> (not b_lambda!246039) (not b!6499185)))

(declare-fun m!7287346 () Bool)

(assert (=> b!6499185 m!7287346))

(declare-fun m!7287348 () Bool)

(assert (=> b!6499186 m!7287348))

(assert (=> d!2039013 d!2039419))

(declare-fun d!2039421 () Bool)

(assert (=> d!2039421 (= (isEmpty!37502 (findConcatSeparation!2680 (regOne!33262 r!7292) (regTwo!33262 r!7292) Nil!65302 s!2326 s!2326)) (not ((_ is Some!16265) (findConcatSeparation!2680 (regOne!33262 r!7292) (regTwo!33262 r!7292) Nil!65302 s!2326 s!2326))))))

(assert (=> d!2038975 d!2039421))

(assert (=> d!2038961 d!2038963))

(assert (=> d!2038961 d!2038945))

(declare-fun e!3938294 () Bool)

(declare-fun d!2039423 () Bool)

(assert (=> d!2039423 (= (matchZipper!2387 ((_ map or) lt!2391025 lt!2391017) (t!379058 s!2326)) e!3938294)))

(declare-fun res!2669031 () Bool)

(assert (=> d!2039423 (=> res!2669031 e!3938294)))

(assert (=> d!2039423 (= res!2669031 (matchZipper!2387 lt!2391025 (t!379058 s!2326)))))

(assert (=> d!2039423 true))

(declare-fun _$48!2264 () Unit!158835)

(assert (=> d!2039423 (= (choose!48232 lt!2391025 lt!2391017 (t!379058 s!2326)) _$48!2264)))

(declare-fun b!6499189 () Bool)

(assert (=> b!6499189 (= e!3938294 (matchZipper!2387 lt!2391017 (t!379058 s!2326)))))

(assert (= (and d!2039423 (not res!2669031)) b!6499189))

(assert (=> d!2039423 m!7285824))

(assert (=> d!2039423 m!7285758))

(assert (=> b!6499189 m!7285778))

(assert (=> d!2038961 d!2039423))

(declare-fun d!2039425 () Bool)

(assert (=> d!2039425 true))

(declare-fun setRes!44293 () Bool)

(assert (=> d!2039425 setRes!44293))

(declare-fun condSetEmpty!44293 () Bool)

(declare-fun res!2669034 () (InoxSet Context!11518))

(assert (=> d!2039425 (= condSetEmpty!44293 (= res!2669034 ((as const (Array Context!11518 Bool)) false)))))

(assert (=> d!2039425 (= (choose!48229 lt!2391014 lambda!359990) res!2669034)))

(declare-fun setIsEmpty!44293 () Bool)

(assert (=> setIsEmpty!44293 setRes!44293))

(declare-fun e!3938297 () Bool)

(declare-fun setElem!44293 () Context!11518)

(declare-fun setNonEmpty!44293 () Bool)

(declare-fun tp!1798059 () Bool)

(assert (=> setNonEmpty!44293 (= setRes!44293 (and tp!1798059 (inv!84184 setElem!44293) e!3938297))))

(declare-fun setRest!44293 () (InoxSet Context!11518))

(assert (=> setNonEmpty!44293 (= res!2669034 ((_ map or) (store ((as const (Array Context!11518 Bool)) false) setElem!44293 true) setRest!44293))))

(declare-fun b!6499192 () Bool)

(declare-fun tp!1798060 () Bool)

(assert (=> b!6499192 (= e!3938297 tp!1798060)))

(assert (= (and d!2039425 condSetEmpty!44293) setIsEmpty!44293))

(assert (= (and d!2039425 (not condSetEmpty!44293)) setNonEmpty!44293))

(assert (= setNonEmpty!44293 b!6499192))

(declare-fun m!7287350 () Bool)

(assert (=> setNonEmpty!44293 m!7287350))

(assert (=> d!2038985 d!2039425))

(declare-fun d!2039427 () Bool)

(declare-fun c!1191560 () Bool)

(assert (=> d!2039427 (= c!1191560 (isEmpty!37501 (tail!12306 (t!379058 s!2326))))))

(declare-fun e!3938298 () Bool)

(assert (=> d!2039427 (= (matchZipper!2387 (derivationStepZipper!2341 ((_ map or) lt!2391025 lt!2391017) (head!13221 (t!379058 s!2326))) (tail!12306 (t!379058 s!2326))) e!3938298)))

(declare-fun b!6499193 () Bool)

(assert (=> b!6499193 (= e!3938298 (nullableZipper!2130 (derivationStepZipper!2341 ((_ map or) lt!2391025 lt!2391017) (head!13221 (t!379058 s!2326)))))))

(declare-fun b!6499194 () Bool)

(assert (=> b!6499194 (= e!3938298 (matchZipper!2387 (derivationStepZipper!2341 (derivationStepZipper!2341 ((_ map or) lt!2391025 lt!2391017) (head!13221 (t!379058 s!2326))) (head!13221 (tail!12306 (t!379058 s!2326)))) (tail!12306 (tail!12306 (t!379058 s!2326)))))))

(assert (= (and d!2039427 c!1191560) b!6499193))

(assert (= (and d!2039427 (not c!1191560)) b!6499194))

(assert (=> d!2039427 m!7286184))

(assert (=> d!2039427 m!7287106))

(assert (=> b!6499193 m!7286268))

(declare-fun m!7287352 () Bool)

(assert (=> b!6499193 m!7287352))

(assert (=> b!6499194 m!7286184))

(assert (=> b!6499194 m!7287110))

(assert (=> b!6499194 m!7286268))

(assert (=> b!6499194 m!7287110))

(declare-fun m!7287354 () Bool)

(assert (=> b!6499194 m!7287354))

(assert (=> b!6499194 m!7286184))

(assert (=> b!6499194 m!7287114))

(assert (=> b!6499194 m!7287354))

(assert (=> b!6499194 m!7287114))

(declare-fun m!7287356 () Bool)

(assert (=> b!6499194 m!7287356))

(assert (=> b!6498042 d!2039427))

(declare-fun bs!1650929 () Bool)

(declare-fun d!2039429 () Bool)

(assert (= bs!1650929 (and d!2039429 b!6497395)))

(declare-fun lambda!360116 () Int)

(assert (=> bs!1650929 (= (= (head!13221 (t!379058 s!2326)) (h!71750 s!2326)) (= lambda!360116 lambda!359990))))

(declare-fun bs!1650930 () Bool)

(assert (= bs!1650930 (and d!2039429 d!2038991)))

(assert (=> bs!1650930 (= (= (head!13221 (t!379058 s!2326)) (h!71750 s!2326)) (= lambda!360116 lambda!360050))))

(declare-fun bs!1650931 () Bool)

(assert (= bs!1650931 (and d!2039429 d!2039327)))

(assert (=> bs!1650931 (= lambda!360116 lambda!360103)))

(declare-fun bs!1650932 () Bool)

(assert (= bs!1650932 (and d!2039429 d!2039365)))

(assert (=> bs!1650932 (= lambda!360116 lambda!360110)))

(assert (=> d!2039429 true))

(assert (=> d!2039429 (= (derivationStepZipper!2341 ((_ map or) lt!2391025 lt!2391017) (head!13221 (t!379058 s!2326))) (flatMap!1880 ((_ map or) lt!2391025 lt!2391017) lambda!360116))))

(declare-fun bs!1650933 () Bool)

(assert (= bs!1650933 d!2039429))

(declare-fun m!7287358 () Bool)

(assert (=> bs!1650933 m!7287358))

(assert (=> b!6498042 d!2039429))

(assert (=> b!6498042 d!2039329))

(assert (=> b!6498042 d!2039331))

(declare-fun bm!563124 () Bool)

(declare-fun call!563129 () (InoxSet Context!11518))

(assert (=> bm!563124 (= call!563129 (derivationStepZipperDown!1623 (h!71748 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 lt!2391002))))) (Context!11519 (t!379056 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 lt!2391002)))))) (h!71750 s!2326)))))

(declare-fun b!6499195 () Bool)

(declare-fun e!3938300 () Bool)

(assert (=> b!6499195 (= e!3938300 (nullable!6368 (h!71748 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 lt!2391002)))))))))

(declare-fun b!6499196 () Bool)

(declare-fun e!3938299 () (InoxSet Context!11518))

(declare-fun e!3938301 () (InoxSet Context!11518))

(assert (=> b!6499196 (= e!3938299 e!3938301)))

(declare-fun c!1191562 () Bool)

(assert (=> b!6499196 (= c!1191562 ((_ is Cons!65300) (exprs!6259 (Context!11519 (t!379056 (exprs!6259 lt!2391002))))))))

(declare-fun d!2039431 () Bool)

(declare-fun c!1191561 () Bool)

(assert (=> d!2039431 (= c!1191561 e!3938300)))

(declare-fun res!2669035 () Bool)

(assert (=> d!2039431 (=> (not res!2669035) (not e!3938300))))

(assert (=> d!2039431 (= res!2669035 ((_ is Cons!65300) (exprs!6259 (Context!11519 (t!379056 (exprs!6259 lt!2391002))))))))

(assert (=> d!2039431 (= (derivationStepZipperUp!1549 (Context!11519 (t!379056 (exprs!6259 lt!2391002))) (h!71750 s!2326)) e!3938299)))

(declare-fun b!6499197 () Bool)

(assert (=> b!6499197 (= e!3938301 call!563129)))

(declare-fun b!6499198 () Bool)

(assert (=> b!6499198 (= e!3938299 ((_ map or) call!563129 (derivationStepZipperUp!1549 (Context!11519 (t!379056 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 lt!2391002)))))) (h!71750 s!2326))))))

(declare-fun b!6499199 () Bool)

(assert (=> b!6499199 (= e!3938301 ((as const (Array Context!11518 Bool)) false))))

(assert (= (and d!2039431 res!2669035) b!6499195))

(assert (= (and d!2039431 c!1191561) b!6499198))

(assert (= (and d!2039431 (not c!1191561)) b!6499196))

(assert (= (and b!6499196 c!1191562) b!6499197))

(assert (= (and b!6499196 (not c!1191562)) b!6499199))

(assert (= (or b!6499198 b!6499197) bm!563124))

(declare-fun m!7287360 () Bool)

(assert (=> bm!563124 m!7287360))

(declare-fun m!7287362 () Bool)

(assert (=> b!6499195 m!7287362))

(declare-fun m!7287364 () Bool)

(assert (=> b!6499198 m!7287364))

(assert (=> b!6497856 d!2039431))

(declare-fun d!2039433 () Bool)

(assert (=> d!2039433 (= (head!13222 (exprs!6259 (h!71749 zl!343))) (h!71748 (exprs!6259 (h!71749 zl!343))))))

(assert (=> b!6497919 d!2039433))

(declare-fun bs!1650934 () Bool)

(declare-fun d!2039435 () Bool)

(assert (= bs!1650934 (and d!2039435 d!2039371)))

(declare-fun lambda!360117 () Int)

(assert (=> bs!1650934 (= lambda!360117 lambda!360115)))

(assert (=> d!2039435 (= (nullableZipper!2130 lt!2391017) (exists!2623 lt!2391017 lambda!360117))))

(declare-fun bs!1650935 () Bool)

(assert (= bs!1650935 d!2039435))

(declare-fun m!7287366 () Bool)

(assert (=> bs!1650935 m!7287366))

(assert (=> b!6497867 d!2039435))

(assert (=> b!6498158 d!2038941))

(declare-fun bs!1650936 () Bool)

(declare-fun d!2039437 () Bool)

(assert (= bs!1650936 (and d!2039437 d!2038959)))

(declare-fun lambda!360118 () Int)

(assert (=> bs!1650936 (= lambda!360118 lambda!360038)))

(declare-fun bs!1650937 () Bool)

(assert (= bs!1650937 (and d!2039437 d!2038941)))

(assert (=> bs!1650937 (= lambda!360118 lambda!360027)))

(declare-fun bs!1650938 () Bool)

(assert (= bs!1650938 (and d!2039437 d!2039015)))

(assert (=> bs!1650938 (= lambda!360118 lambda!360055)))

(declare-fun bs!1650939 () Bool)

(assert (= bs!1650939 (and d!2039437 d!2039017)))

(assert (=> bs!1650939 (= lambda!360118 lambda!360058)))

(declare-fun bs!1650940 () Bool)

(assert (= bs!1650940 (and d!2039437 d!2039013)))

(assert (=> bs!1650940 (= lambda!360118 lambda!360052)))

(declare-fun bs!1650941 () Bool)

(assert (= bs!1650941 (and d!2039437 d!2038993)))

(assert (=> bs!1650941 (= lambda!360118 lambda!360051)))

(declare-fun lt!2391180 () List!65424)

(assert (=> d!2039437 (forall!15556 lt!2391180 lambda!360118)))

(declare-fun e!3938302 () List!65424)

(assert (=> d!2039437 (= lt!2391180 e!3938302)))

(declare-fun c!1191563 () Bool)

(assert (=> d!2039437 (= c!1191563 ((_ is Cons!65301) (t!379057 zl!343)))))

(assert (=> d!2039437 (= (unfocusZipperList!1796 (t!379057 zl!343)) lt!2391180)))

(declare-fun b!6499200 () Bool)

(assert (=> b!6499200 (= e!3938302 (Cons!65300 (generalisedConcat!1972 (exprs!6259 (h!71749 (t!379057 zl!343)))) (unfocusZipperList!1796 (t!379057 (t!379057 zl!343)))))))

(declare-fun b!6499201 () Bool)

(assert (=> b!6499201 (= e!3938302 Nil!65300)))

(assert (= (and d!2039437 c!1191563) b!6499200))

(assert (= (and d!2039437 (not c!1191563)) b!6499201))

(declare-fun m!7287368 () Bool)

(assert (=> d!2039437 m!7287368))

(declare-fun m!7287370 () Bool)

(assert (=> b!6499200 m!7287370))

(declare-fun m!7287372 () Bool)

(assert (=> b!6499200 m!7287372))

(assert (=> b!6498158 d!2039437))

(declare-fun d!2039439 () Bool)

(declare-fun res!2669036 () Bool)

(declare-fun e!3938303 () Bool)

(assert (=> d!2039439 (=> res!2669036 e!3938303)))

(assert (=> d!2039439 (= res!2669036 ((_ is Nil!65300) lt!2391131))))

(assert (=> d!2039439 (= (forall!15556 lt!2391131 lambda!360058) e!3938303)))

(declare-fun b!6499202 () Bool)

(declare-fun e!3938304 () Bool)

(assert (=> b!6499202 (= e!3938303 e!3938304)))

(declare-fun res!2669037 () Bool)

(assert (=> b!6499202 (=> (not res!2669037) (not e!3938304))))

(assert (=> b!6499202 (= res!2669037 (dynLambda!25941 lambda!360058 (h!71748 lt!2391131)))))

(declare-fun b!6499203 () Bool)

(assert (=> b!6499203 (= e!3938304 (forall!15556 (t!379056 lt!2391131) lambda!360058))))

(assert (= (and d!2039439 (not res!2669036)) b!6499202))

(assert (= (and b!6499202 res!2669037) b!6499203))

(declare-fun b_lambda!246041 () Bool)

(assert (=> (not b_lambda!246041) (not b!6499202)))

(declare-fun m!7287374 () Bool)

(assert (=> b!6499202 m!7287374))

(declare-fun m!7287376 () Bool)

(assert (=> b!6499203 m!7287376))

(assert (=> d!2039017 d!2039439))

(declare-fun d!2039441 () Bool)

(declare-fun res!2669042 () Bool)

(declare-fun e!3938309 () Bool)

(assert (=> d!2039441 (=> res!2669042 e!3938309)))

(assert (=> d!2039441 (= res!2669042 ((_ is Nil!65301) lt!2391124))))

(assert (=> d!2039441 (= (noDuplicate!2193 lt!2391124) e!3938309)))

(declare-fun b!6499208 () Bool)

(declare-fun e!3938310 () Bool)

(assert (=> b!6499208 (= e!3938309 e!3938310)))

(declare-fun res!2669043 () Bool)

(assert (=> b!6499208 (=> (not res!2669043) (not e!3938310))))

(declare-fun contains!20195 (List!65425 Context!11518) Bool)

(assert (=> b!6499208 (= res!2669043 (not (contains!20195 (t!379057 lt!2391124) (h!71749 lt!2391124))))))

(declare-fun b!6499209 () Bool)

(assert (=> b!6499209 (= e!3938310 (noDuplicate!2193 (t!379057 lt!2391124)))))

(assert (= (and d!2039441 (not res!2669042)) b!6499208))

(assert (= (and b!6499208 res!2669043) b!6499209))

(declare-fun m!7287378 () Bool)

(assert (=> b!6499208 m!7287378))

(declare-fun m!7287380 () Bool)

(assert (=> b!6499209 m!7287380))

(assert (=> d!2038995 d!2039441))

(declare-fun d!2039443 () Bool)

(declare-fun e!3938319 () Bool)

(assert (=> d!2039443 e!3938319))

(declare-fun res!2669049 () Bool)

(assert (=> d!2039443 (=> (not res!2669049) (not e!3938319))))

(declare-fun res!2669048 () List!65425)

(assert (=> d!2039443 (= res!2669049 (noDuplicate!2193 res!2669048))))

(declare-fun e!3938318 () Bool)

(assert (=> d!2039443 e!3938318))

(assert (=> d!2039443 (= (choose!48236 z!1189) res!2669048)))

(declare-fun b!6499217 () Bool)

(declare-fun e!3938317 () Bool)

(declare-fun tp!1798066 () Bool)

(assert (=> b!6499217 (= e!3938317 tp!1798066)))

(declare-fun b!6499216 () Bool)

(declare-fun tp!1798065 () Bool)

(assert (=> b!6499216 (= e!3938318 (and (inv!84184 (h!71749 res!2669048)) e!3938317 tp!1798065))))

(declare-fun b!6499218 () Bool)

(assert (=> b!6499218 (= e!3938319 (= (content!12452 res!2669048) z!1189))))

(assert (= b!6499216 b!6499217))

(assert (= (and d!2039443 ((_ is Cons!65301) res!2669048)) b!6499216))

(assert (= (and d!2039443 res!2669049) b!6499218))

(declare-fun m!7287382 () Bool)

(assert (=> d!2039443 m!7287382))

(declare-fun m!7287384 () Bool)

(assert (=> b!6499216 m!7287384))

(declare-fun m!7287386 () Bool)

(assert (=> b!6499218 m!7287386))

(assert (=> d!2038995 d!2039443))

(declare-fun b!6499219 () Bool)

(declare-fun res!2669057 () Bool)

(declare-fun e!3938322 () Bool)

(assert (=> b!6499219 (=> res!2669057 e!3938322)))

(assert (=> b!6499219 (= res!2669057 (not ((_ is ElementMatch!16375) (regTwo!33262 r!7292))))))

(declare-fun e!3938321 () Bool)

(assert (=> b!6499219 (= e!3938321 e!3938322)))

(declare-fun b!6499220 () Bool)

(declare-fun e!3938323 () Bool)

(assert (=> b!6499220 (= e!3938323 (not (= (head!13221 s!2326) (c!1191063 (regTwo!33262 r!7292)))))))

(declare-fun bm!563125 () Bool)

(declare-fun call!563130 () Bool)

(assert (=> bm!563125 (= call!563130 (isEmpty!37501 s!2326))))

(declare-fun b!6499221 () Bool)

(declare-fun res!2669051 () Bool)

(assert (=> b!6499221 (=> res!2669051 e!3938322)))

(declare-fun e!3938325 () Bool)

(assert (=> b!6499221 (= res!2669051 e!3938325)))

(declare-fun res!2669053 () Bool)

(assert (=> b!6499221 (=> (not res!2669053) (not e!3938325))))

(declare-fun lt!2391181 () Bool)

(assert (=> b!6499221 (= res!2669053 lt!2391181)))

(declare-fun b!6499222 () Bool)

(declare-fun res!2669054 () Bool)

(assert (=> b!6499222 (=> (not res!2669054) (not e!3938325))))

(assert (=> b!6499222 (= res!2669054 (not call!563130))))

(declare-fun b!6499223 () Bool)

(declare-fun e!3938326 () Bool)

(assert (=> b!6499223 (= e!3938326 (nullable!6368 (regTwo!33262 r!7292)))))

(declare-fun b!6499224 () Bool)

(declare-fun e!3938324 () Bool)

(assert (=> b!6499224 (= e!3938324 e!3938321)))

(declare-fun c!1191564 () Bool)

(assert (=> b!6499224 (= c!1191564 ((_ is EmptyLang!16375) (regTwo!33262 r!7292)))))

(declare-fun b!6499225 () Bool)

(assert (=> b!6499225 (= e!3938324 (= lt!2391181 call!563130))))

(declare-fun b!6499226 () Bool)

(declare-fun e!3938320 () Bool)

(assert (=> b!6499226 (= e!3938320 e!3938323)))

(declare-fun res!2669056 () Bool)

(assert (=> b!6499226 (=> res!2669056 e!3938323)))

(assert (=> b!6499226 (= res!2669056 call!563130)))

(declare-fun b!6499228 () Bool)

(assert (=> b!6499228 (= e!3938321 (not lt!2391181))))

(declare-fun d!2039445 () Bool)

(assert (=> d!2039445 e!3938324))

(declare-fun c!1191565 () Bool)

(assert (=> d!2039445 (= c!1191565 ((_ is EmptyExpr!16375) (regTwo!33262 r!7292)))))

(assert (=> d!2039445 (= lt!2391181 e!3938326)))

(declare-fun c!1191566 () Bool)

(assert (=> d!2039445 (= c!1191566 (isEmpty!37501 s!2326))))

(assert (=> d!2039445 (validRegex!8111 (regTwo!33262 r!7292))))

(assert (=> d!2039445 (= (matchR!8558 (regTwo!33262 r!7292) s!2326) lt!2391181)))

(declare-fun b!6499227 () Bool)

(declare-fun res!2669055 () Bool)

(assert (=> b!6499227 (=> res!2669055 e!3938323)))

(assert (=> b!6499227 (= res!2669055 (not (isEmpty!37501 (tail!12306 s!2326))))))

(declare-fun b!6499229 () Bool)

(assert (=> b!6499229 (= e!3938325 (= (head!13221 s!2326) (c!1191063 (regTwo!33262 r!7292))))))

(declare-fun b!6499230 () Bool)

(assert (=> b!6499230 (= e!3938326 (matchR!8558 (derivativeStep!5069 (regTwo!33262 r!7292) (head!13221 s!2326)) (tail!12306 s!2326)))))

(declare-fun b!6499231 () Bool)

(assert (=> b!6499231 (= e!3938322 e!3938320)))

(declare-fun res!2669050 () Bool)

(assert (=> b!6499231 (=> (not res!2669050) (not e!3938320))))

(assert (=> b!6499231 (= res!2669050 (not lt!2391181))))

(declare-fun b!6499232 () Bool)

(declare-fun res!2669052 () Bool)

(assert (=> b!6499232 (=> (not res!2669052) (not e!3938325))))

(assert (=> b!6499232 (= res!2669052 (isEmpty!37501 (tail!12306 s!2326)))))

(assert (= (and d!2039445 c!1191566) b!6499223))

(assert (= (and d!2039445 (not c!1191566)) b!6499230))

(assert (= (and d!2039445 c!1191565) b!6499225))

(assert (= (and d!2039445 (not c!1191565)) b!6499224))

(assert (= (and b!6499224 c!1191564) b!6499228))

(assert (= (and b!6499224 (not c!1191564)) b!6499219))

(assert (= (and b!6499219 (not res!2669057)) b!6499221))

(assert (= (and b!6499221 res!2669053) b!6499222))

(assert (= (and b!6499222 res!2669054) b!6499232))

(assert (= (and b!6499232 res!2669052) b!6499229))

(assert (= (and b!6499221 (not res!2669051)) b!6499231))

(assert (= (and b!6499231 res!2669050) b!6499226))

(assert (= (and b!6499226 (not res!2669056)) b!6499227))

(assert (= (and b!6499227 (not res!2669055)) b!6499220))

(assert (= (or b!6499225 b!6499222 b!6499226) bm!563125))

(assert (=> d!2039445 m!7286224))

(declare-fun m!7287388 () Bool)

(assert (=> d!2039445 m!7287388))

(assert (=> b!6499230 m!7286228))

(assert (=> b!6499230 m!7286228))

(declare-fun m!7287390 () Bool)

(assert (=> b!6499230 m!7287390))

(assert (=> b!6499230 m!7286232))

(assert (=> b!6499230 m!7287390))

(assert (=> b!6499230 m!7286232))

(declare-fun m!7287392 () Bool)

(assert (=> b!6499230 m!7287392))

(assert (=> b!6499220 m!7286228))

(assert (=> bm!563125 m!7286224))

(assert (=> b!6499232 m!7286232))

(assert (=> b!6499232 m!7286232))

(assert (=> b!6499232 m!7286236))

(assert (=> b!6499229 m!7286228))

(assert (=> b!6499227 m!7286232))

(assert (=> b!6499227 m!7286232))

(assert (=> b!6499227 m!7286236))

(declare-fun m!7287394 () Bool)

(assert (=> b!6499223 m!7287394))

(assert (=> b!6498065 d!2039445))

(declare-fun b!6499233 () Bool)

(declare-fun res!2669065 () Bool)

(declare-fun e!3938329 () Bool)

(assert (=> b!6499233 (=> res!2669065 e!3938329)))

(assert (=> b!6499233 (= res!2669065 (not ((_ is ElementMatch!16375) (regOne!33262 r!7292))))))

(declare-fun e!3938328 () Bool)

(assert (=> b!6499233 (= e!3938328 e!3938329)))

(declare-fun b!6499234 () Bool)

(declare-fun e!3938330 () Bool)

(assert (=> b!6499234 (= e!3938330 (not (= (head!13221 (_1!36657 (get!22646 lt!2391111))) (c!1191063 (regOne!33262 r!7292)))))))

(declare-fun bm!563126 () Bool)

(declare-fun call!563131 () Bool)

(assert (=> bm!563126 (= call!563131 (isEmpty!37501 (_1!36657 (get!22646 lt!2391111))))))

(declare-fun b!6499235 () Bool)

(declare-fun res!2669059 () Bool)

(assert (=> b!6499235 (=> res!2669059 e!3938329)))

(declare-fun e!3938332 () Bool)

(assert (=> b!6499235 (= res!2669059 e!3938332)))

(declare-fun res!2669061 () Bool)

(assert (=> b!6499235 (=> (not res!2669061) (not e!3938332))))

(declare-fun lt!2391182 () Bool)

(assert (=> b!6499235 (= res!2669061 lt!2391182)))

(declare-fun b!6499236 () Bool)

(declare-fun res!2669062 () Bool)

(assert (=> b!6499236 (=> (not res!2669062) (not e!3938332))))

(assert (=> b!6499236 (= res!2669062 (not call!563131))))

(declare-fun b!6499237 () Bool)

(declare-fun e!3938333 () Bool)

(assert (=> b!6499237 (= e!3938333 (nullable!6368 (regOne!33262 r!7292)))))

(declare-fun b!6499238 () Bool)

(declare-fun e!3938331 () Bool)

(assert (=> b!6499238 (= e!3938331 e!3938328)))

(declare-fun c!1191567 () Bool)

(assert (=> b!6499238 (= c!1191567 ((_ is EmptyLang!16375) (regOne!33262 r!7292)))))

(declare-fun b!6499239 () Bool)

(assert (=> b!6499239 (= e!3938331 (= lt!2391182 call!563131))))

(declare-fun b!6499240 () Bool)

(declare-fun e!3938327 () Bool)

(assert (=> b!6499240 (= e!3938327 e!3938330)))

(declare-fun res!2669064 () Bool)

(assert (=> b!6499240 (=> res!2669064 e!3938330)))

(assert (=> b!6499240 (= res!2669064 call!563131)))

(declare-fun b!6499242 () Bool)

(assert (=> b!6499242 (= e!3938328 (not lt!2391182))))

(declare-fun d!2039447 () Bool)

(assert (=> d!2039447 e!3938331))

(declare-fun c!1191568 () Bool)

(assert (=> d!2039447 (= c!1191568 ((_ is EmptyExpr!16375) (regOne!33262 r!7292)))))

(assert (=> d!2039447 (= lt!2391182 e!3938333)))

(declare-fun c!1191569 () Bool)

(assert (=> d!2039447 (= c!1191569 (isEmpty!37501 (_1!36657 (get!22646 lt!2391111))))))

(assert (=> d!2039447 (validRegex!8111 (regOne!33262 r!7292))))

(assert (=> d!2039447 (= (matchR!8558 (regOne!33262 r!7292) (_1!36657 (get!22646 lt!2391111))) lt!2391182)))

(declare-fun b!6499241 () Bool)

(declare-fun res!2669063 () Bool)

(assert (=> b!6499241 (=> res!2669063 e!3938330)))

(assert (=> b!6499241 (= res!2669063 (not (isEmpty!37501 (tail!12306 (_1!36657 (get!22646 lt!2391111))))))))

(declare-fun b!6499243 () Bool)

(assert (=> b!6499243 (= e!3938332 (= (head!13221 (_1!36657 (get!22646 lt!2391111))) (c!1191063 (regOne!33262 r!7292))))))

(declare-fun b!6499244 () Bool)

(assert (=> b!6499244 (= e!3938333 (matchR!8558 (derivativeStep!5069 (regOne!33262 r!7292) (head!13221 (_1!36657 (get!22646 lt!2391111)))) (tail!12306 (_1!36657 (get!22646 lt!2391111)))))))

(declare-fun b!6499245 () Bool)

(assert (=> b!6499245 (= e!3938329 e!3938327)))

(declare-fun res!2669058 () Bool)

(assert (=> b!6499245 (=> (not res!2669058) (not e!3938327))))

(assert (=> b!6499245 (= res!2669058 (not lt!2391182))))

(declare-fun b!6499246 () Bool)

(declare-fun res!2669060 () Bool)

(assert (=> b!6499246 (=> (not res!2669060) (not e!3938332))))

(assert (=> b!6499246 (= res!2669060 (isEmpty!37501 (tail!12306 (_1!36657 (get!22646 lt!2391111)))))))

(assert (= (and d!2039447 c!1191569) b!6499237))

(assert (= (and d!2039447 (not c!1191569)) b!6499244))

(assert (= (and d!2039447 c!1191568) b!6499239))

(assert (= (and d!2039447 (not c!1191568)) b!6499238))

(assert (= (and b!6499238 c!1191567) b!6499242))

(assert (= (and b!6499238 (not c!1191567)) b!6499233))

(assert (= (and b!6499233 (not res!2669065)) b!6499235))

(assert (= (and b!6499235 res!2669061) b!6499236))

(assert (= (and b!6499236 res!2669062) b!6499246))

(assert (= (and b!6499246 res!2669060) b!6499243))

(assert (= (and b!6499235 (not res!2669059)) b!6499245))

(assert (= (and b!6499245 res!2669058) b!6499240))

(assert (= (and b!6499240 (not res!2669064)) b!6499241))

(assert (= (and b!6499241 (not res!2669063)) b!6499234))

(assert (= (or b!6499239 b!6499236 b!6499240) bm!563126))

(declare-fun m!7287396 () Bool)

(assert (=> d!2039447 m!7287396))

(assert (=> d!2039447 m!7286292))

(declare-fun m!7287398 () Bool)

(assert (=> b!6499244 m!7287398))

(assert (=> b!6499244 m!7287398))

(declare-fun m!7287400 () Bool)

(assert (=> b!6499244 m!7287400))

(declare-fun m!7287402 () Bool)

(assert (=> b!6499244 m!7287402))

(assert (=> b!6499244 m!7287400))

(assert (=> b!6499244 m!7287402))

(declare-fun m!7287404 () Bool)

(assert (=> b!6499244 m!7287404))

(assert (=> b!6499234 m!7287398))

(assert (=> bm!563126 m!7287396))

(assert (=> b!6499246 m!7287402))

(assert (=> b!6499246 m!7287402))

(declare-fun m!7287406 () Bool)

(assert (=> b!6499246 m!7287406))

(assert (=> b!6499243 m!7287398))

(assert (=> b!6499241 m!7287402))

(assert (=> b!6499241 m!7287402))

(assert (=> b!6499241 m!7287406))

(assert (=> b!6499237 m!7287224))

(assert (=> b!6498069 d!2039447))

(declare-fun d!2039449 () Bool)

(assert (=> d!2039449 (= (get!22646 lt!2391111) (v!52444 lt!2391111))))

(assert (=> b!6498069 d!2039449))

(declare-fun b!6499247 () Bool)

(declare-fun e!3938334 () (InoxSet Context!11518))

(assert (=> b!6499247 (= e!3938334 ((as const (Array Context!11518 Bool)) false))))

(declare-fun bm!563127 () Bool)

(declare-fun call!563132 () List!65424)

(declare-fun c!1191570 () Bool)

(declare-fun c!1191571 () Bool)

(declare-fun call!563136 () (InoxSet Context!11518))

(declare-fun c!1191572 () Bool)

(assert (=> bm!563127 (= call!563136 (derivationStepZipperDown!1623 (ite c!1191571 (regOne!33263 (ite c!1191188 (regTwo!33263 (reg!16704 (regOne!33262 r!7292))) (regOne!33262 (reg!16704 (regOne!33262 r!7292))))) (ite c!1191572 (regTwo!33262 (ite c!1191188 (regTwo!33263 (reg!16704 (regOne!33262 r!7292))) (regOne!33262 (reg!16704 (regOne!33262 r!7292))))) (ite c!1191570 (regOne!33262 (ite c!1191188 (regTwo!33263 (reg!16704 (regOne!33262 r!7292))) (regOne!33262 (reg!16704 (regOne!33262 r!7292))))) (reg!16704 (ite c!1191188 (regTwo!33263 (reg!16704 (regOne!33262 r!7292))) (regOne!33262 (reg!16704 (regOne!33262 r!7292)))))))) (ite (or c!1191571 c!1191572) (ite c!1191188 lt!2391011 (Context!11519 call!562882)) (Context!11519 call!563132)) (h!71750 s!2326)))))

(declare-fun b!6499248 () Bool)

(declare-fun e!3938339 () (InoxSet Context!11518))

(declare-fun e!3938337 () (InoxSet Context!11518))

(assert (=> b!6499248 (= e!3938339 e!3938337)))

(assert (=> b!6499248 (= c!1191571 ((_ is Union!16375) (ite c!1191188 (regTwo!33263 (reg!16704 (regOne!33262 r!7292))) (regOne!33262 (reg!16704 (regOne!33262 r!7292))))))))

(declare-fun bm!563128 () Bool)

(declare-fun call!563133 () List!65424)

(assert (=> bm!563128 (= call!563132 call!563133)))

(declare-fun c!1191573 () Bool)

(declare-fun d!2039451 () Bool)

(assert (=> d!2039451 (= c!1191573 (and ((_ is ElementMatch!16375) (ite c!1191188 (regTwo!33263 (reg!16704 (regOne!33262 r!7292))) (regOne!33262 (reg!16704 (regOne!33262 r!7292))))) (= (c!1191063 (ite c!1191188 (regTwo!33263 (reg!16704 (regOne!33262 r!7292))) (regOne!33262 (reg!16704 (regOne!33262 r!7292))))) (h!71750 s!2326))))))

(assert (=> d!2039451 (= (derivationStepZipperDown!1623 (ite c!1191188 (regTwo!33263 (reg!16704 (regOne!33262 r!7292))) (regOne!33262 (reg!16704 (regOne!33262 r!7292)))) (ite c!1191188 lt!2391011 (Context!11519 call!562882)) (h!71750 s!2326)) e!3938339)))

(declare-fun b!6499249 () Bool)

(declare-fun call!563137 () (InoxSet Context!11518))

(assert (=> b!6499249 (= e!3938337 ((_ map or) call!563136 call!563137))))

(declare-fun bm!563129 () Bool)

(assert (=> bm!563129 (= call!563133 ($colon$colon!2226 (exprs!6259 (ite c!1191188 lt!2391011 (Context!11519 call!562882))) (ite (or c!1191572 c!1191570) (regTwo!33262 (ite c!1191188 (regTwo!33263 (reg!16704 (regOne!33262 r!7292))) (regOne!33262 (reg!16704 (regOne!33262 r!7292))))) (ite c!1191188 (regTwo!33263 (reg!16704 (regOne!33262 r!7292))) (regOne!33262 (reg!16704 (regOne!33262 r!7292)))))))))

(declare-fun b!6499250 () Bool)

(declare-fun e!3938338 () Bool)

(assert (=> b!6499250 (= c!1191572 e!3938338)))

(declare-fun res!2669066 () Bool)

(assert (=> b!6499250 (=> (not res!2669066) (not e!3938338))))

(assert (=> b!6499250 (= res!2669066 ((_ is Concat!25220) (ite c!1191188 (regTwo!33263 (reg!16704 (regOne!33262 r!7292))) (regOne!33262 (reg!16704 (regOne!33262 r!7292))))))))

(declare-fun e!3938335 () (InoxSet Context!11518))

(assert (=> b!6499250 (= e!3938337 e!3938335)))

(declare-fun b!6499251 () Bool)

(declare-fun e!3938336 () (InoxSet Context!11518))

(assert (=> b!6499251 (= e!3938335 e!3938336)))

(assert (=> b!6499251 (= c!1191570 ((_ is Concat!25220) (ite c!1191188 (regTwo!33263 (reg!16704 (regOne!33262 r!7292))) (regOne!33262 (reg!16704 (regOne!33262 r!7292))))))))

(declare-fun b!6499252 () Bool)

(declare-fun call!563134 () (InoxSet Context!11518))

(assert (=> b!6499252 (= e!3938336 call!563134)))

(declare-fun b!6499253 () Bool)

(assert (=> b!6499253 (= e!3938338 (nullable!6368 (regOne!33262 (ite c!1191188 (regTwo!33263 (reg!16704 (regOne!33262 r!7292))) (regOne!33262 (reg!16704 (regOne!33262 r!7292)))))))))

(declare-fun b!6499254 () Bool)

(declare-fun call!563135 () (InoxSet Context!11518))

(assert (=> b!6499254 (= e!3938335 ((_ map or) call!563137 call!563135))))

(declare-fun bm!563130 () Bool)

(assert (=> bm!563130 (= call!563137 (derivationStepZipperDown!1623 (ite c!1191571 (regTwo!33263 (ite c!1191188 (regTwo!33263 (reg!16704 (regOne!33262 r!7292))) (regOne!33262 (reg!16704 (regOne!33262 r!7292))))) (regOne!33262 (ite c!1191188 (regTwo!33263 (reg!16704 (regOne!33262 r!7292))) (regOne!33262 (reg!16704 (regOne!33262 r!7292)))))) (ite c!1191571 (ite c!1191188 lt!2391011 (Context!11519 call!562882)) (Context!11519 call!563133)) (h!71750 s!2326)))))

(declare-fun b!6499255 () Bool)

(assert (=> b!6499255 (= e!3938339 (store ((as const (Array Context!11518 Bool)) false) (ite c!1191188 lt!2391011 (Context!11519 call!562882)) true))))

(declare-fun bm!563131 () Bool)

(assert (=> bm!563131 (= call!563134 call!563135)))

(declare-fun b!6499256 () Bool)

(declare-fun c!1191574 () Bool)

(assert (=> b!6499256 (= c!1191574 ((_ is Star!16375) (ite c!1191188 (regTwo!33263 (reg!16704 (regOne!33262 r!7292))) (regOne!33262 (reg!16704 (regOne!33262 r!7292))))))))

(assert (=> b!6499256 (= e!3938336 e!3938334)))

(declare-fun b!6499257 () Bool)

(assert (=> b!6499257 (= e!3938334 call!563134)))

(declare-fun bm!563132 () Bool)

(assert (=> bm!563132 (= call!563135 call!563136)))

(assert (= (and d!2039451 c!1191573) b!6499255))

(assert (= (and d!2039451 (not c!1191573)) b!6499248))

(assert (= (and b!6499248 c!1191571) b!6499249))

(assert (= (and b!6499248 (not c!1191571)) b!6499250))

(assert (= (and b!6499250 res!2669066) b!6499253))

(assert (= (and b!6499250 c!1191572) b!6499254))

(assert (= (and b!6499250 (not c!1191572)) b!6499251))

(assert (= (and b!6499251 c!1191570) b!6499252))

(assert (= (and b!6499251 (not c!1191570)) b!6499256))

(assert (= (and b!6499256 c!1191574) b!6499257))

(assert (= (and b!6499256 (not c!1191574)) b!6499247))

(assert (= (or b!6499252 b!6499257) bm!563128))

(assert (= (or b!6499252 b!6499257) bm!563131))

(assert (= (or b!6499254 bm!563128) bm!563129))

(assert (= (or b!6499254 bm!563131) bm!563132))

(assert (= (or b!6499249 b!6499254) bm!563130))

(assert (= (or b!6499249 bm!563132) bm!563127))

(declare-fun m!7287408 () Bool)

(assert (=> bm!563130 m!7287408))

(declare-fun m!7287410 () Bool)

(assert (=> b!6499253 m!7287410))

(declare-fun m!7287412 () Bool)

(assert (=> bm!563127 m!7287412))

(declare-fun m!7287414 () Bool)

(assert (=> b!6499255 m!7287414))

(declare-fun m!7287416 () Bool)

(assert (=> bm!563129 m!7287416))

(assert (=> bm!562879 d!2039451))

(declare-fun d!2039453 () Bool)

(declare-fun res!2669067 () Bool)

(declare-fun e!3938340 () Bool)

(assert (=> d!2039453 (=> res!2669067 e!3938340)))

(assert (=> d!2039453 (= res!2669067 ((_ is Nil!65300) (exprs!6259 setElem!44277)))))

(assert (=> d!2039453 (= (forall!15556 (exprs!6259 setElem!44277) lambda!360038) e!3938340)))

(declare-fun b!6499258 () Bool)

(declare-fun e!3938341 () Bool)

(assert (=> b!6499258 (= e!3938340 e!3938341)))

(declare-fun res!2669068 () Bool)

(assert (=> b!6499258 (=> (not res!2669068) (not e!3938341))))

(assert (=> b!6499258 (= res!2669068 (dynLambda!25941 lambda!360038 (h!71748 (exprs!6259 setElem!44277))))))

(declare-fun b!6499259 () Bool)

(assert (=> b!6499259 (= e!3938341 (forall!15556 (t!379056 (exprs!6259 setElem!44277)) lambda!360038))))

(assert (= (and d!2039453 (not res!2669067)) b!6499258))

(assert (= (and b!6499258 res!2669068) b!6499259))

(declare-fun b_lambda!246043 () Bool)

(assert (=> (not b_lambda!246043) (not b!6499258)))

(declare-fun m!7287418 () Bool)

(assert (=> b!6499258 m!7287418))

(declare-fun m!7287420 () Bool)

(assert (=> b!6499259 m!7287420))

(assert (=> d!2038959 d!2039453))

(assert (=> b!6497966 d!2039381))

(assert (=> b!6498114 d!2039001))

(assert (=> b!6498034 d!2039381))

(declare-fun bs!1650942 () Bool)

(declare-fun d!2039455 () Bool)

(assert (= bs!1650942 (and d!2039455 d!2038959)))

(declare-fun lambda!360119 () Int)

(assert (=> bs!1650942 (= lambda!360119 lambda!360038)))

(declare-fun bs!1650943 () Bool)

(assert (= bs!1650943 (and d!2039455 d!2038941)))

(assert (=> bs!1650943 (= lambda!360119 lambda!360027)))

(declare-fun bs!1650944 () Bool)

(assert (= bs!1650944 (and d!2039455 d!2039437)))

(assert (=> bs!1650944 (= lambda!360119 lambda!360118)))

(declare-fun bs!1650945 () Bool)

(assert (= bs!1650945 (and d!2039455 d!2039015)))

(assert (=> bs!1650945 (= lambda!360119 lambda!360055)))

(declare-fun bs!1650946 () Bool)

(assert (= bs!1650946 (and d!2039455 d!2039017)))

(assert (=> bs!1650946 (= lambda!360119 lambda!360058)))

(declare-fun bs!1650947 () Bool)

(assert (= bs!1650947 (and d!2039455 d!2039013)))

(assert (=> bs!1650947 (= lambda!360119 lambda!360052)))

(declare-fun bs!1650948 () Bool)

(assert (= bs!1650948 (and d!2039455 d!2038993)))

(assert (=> bs!1650948 (= lambda!360119 lambda!360051)))

(assert (=> d!2039455 (= (inv!84184 setElem!44283) (forall!15556 (exprs!6259 setElem!44283) lambda!360119))))

(declare-fun bs!1650949 () Bool)

(assert (= bs!1650949 d!2039455))

(declare-fun m!7287422 () Bool)

(assert (=> bs!1650949 m!7287422))

(assert (=> setNonEmpty!44283 d!2039455))

(declare-fun d!2039457 () Bool)

(assert (=> d!2039457 (= (isEmptyExpr!1765 lt!2391092) ((_ is EmptyExpr!16375) lt!2391092))))

(assert (=> b!6497923 d!2039457))

(declare-fun b!6499260 () Bool)

(declare-fun e!3938345 () Bool)

(declare-fun e!3938342 () Bool)

(assert (=> b!6499260 (= e!3938345 e!3938342)))

(declare-fun c!1191576 () Bool)

(assert (=> b!6499260 (= c!1191576 ((_ is Union!16375) lt!2391120))))

(declare-fun b!6499261 () Bool)

(declare-fun e!3938343 () Bool)

(assert (=> b!6499261 (= e!3938345 e!3938343)))

(declare-fun res!2669072 () Bool)

(assert (=> b!6499261 (= res!2669072 (not (nullable!6368 (reg!16704 lt!2391120))))))

(assert (=> b!6499261 (=> (not res!2669072) (not e!3938343))))

(declare-fun b!6499262 () Bool)

(declare-fun e!3938348 () Bool)

(declare-fun e!3938347 () Bool)

(assert (=> b!6499262 (= e!3938348 e!3938347)))

(declare-fun res!2669070 () Bool)

(assert (=> b!6499262 (=> (not res!2669070) (not e!3938347))))

(declare-fun call!563138 () Bool)

(assert (=> b!6499262 (= res!2669070 call!563138)))

(declare-fun b!6499263 () Bool)

(declare-fun res!2669071 () Bool)

(assert (=> b!6499263 (=> res!2669071 e!3938348)))

(assert (=> b!6499263 (= res!2669071 (not ((_ is Concat!25220) lt!2391120)))))

(assert (=> b!6499263 (= e!3938342 e!3938348)))

(declare-fun d!2039459 () Bool)

(declare-fun res!2669073 () Bool)

(declare-fun e!3938346 () Bool)

(assert (=> d!2039459 (=> res!2669073 e!3938346)))

(assert (=> d!2039459 (= res!2669073 ((_ is ElementMatch!16375) lt!2391120))))

(assert (=> d!2039459 (= (validRegex!8111 lt!2391120) e!3938346)))

(declare-fun call!563139 () Bool)

(declare-fun bm!563133 () Bool)

(declare-fun c!1191575 () Bool)

(assert (=> bm!563133 (= call!563139 (validRegex!8111 (ite c!1191575 (reg!16704 lt!2391120) (ite c!1191576 (regOne!33263 lt!2391120) (regOne!33262 lt!2391120)))))))

(declare-fun b!6499264 () Bool)

(assert (=> b!6499264 (= e!3938343 call!563139)))

(declare-fun b!6499265 () Bool)

(declare-fun e!3938344 () Bool)

(declare-fun call!563140 () Bool)

(assert (=> b!6499265 (= e!3938344 call!563140)))

(declare-fun b!6499266 () Bool)

(assert (=> b!6499266 (= e!3938347 call!563140)))

(declare-fun bm!563134 () Bool)

(assert (=> bm!563134 (= call!563140 (validRegex!8111 (ite c!1191576 (regTwo!33263 lt!2391120) (regTwo!33262 lt!2391120))))))

(declare-fun b!6499267 () Bool)

(declare-fun res!2669069 () Bool)

(assert (=> b!6499267 (=> (not res!2669069) (not e!3938344))))

(assert (=> b!6499267 (= res!2669069 call!563138)))

(assert (=> b!6499267 (= e!3938342 e!3938344)))

(declare-fun b!6499268 () Bool)

(assert (=> b!6499268 (= e!3938346 e!3938345)))

(assert (=> b!6499268 (= c!1191575 ((_ is Star!16375) lt!2391120))))

(declare-fun bm!563135 () Bool)

(assert (=> bm!563135 (= call!563138 call!563139)))

(assert (= (and d!2039459 (not res!2669073)) b!6499268))

(assert (= (and b!6499268 c!1191575) b!6499261))

(assert (= (and b!6499268 (not c!1191575)) b!6499260))

(assert (= (and b!6499261 res!2669072) b!6499264))

(assert (= (and b!6499260 c!1191576) b!6499267))

(assert (= (and b!6499260 (not c!1191576)) b!6499263))

(assert (= (and b!6499267 res!2669069) b!6499265))

(assert (= (and b!6499263 (not res!2669071)) b!6499262))

(assert (= (and b!6499262 res!2669070) b!6499266))

(assert (= (or b!6499265 b!6499266) bm!563134))

(assert (= (or b!6499267 b!6499262) bm!563135))

(assert (= (or b!6499264 bm!563135) bm!563133))

(declare-fun m!7287424 () Bool)

(assert (=> b!6499261 m!7287424))

(declare-fun m!7287426 () Bool)

(assert (=> bm!563133 m!7287426))

(declare-fun m!7287428 () Bool)

(assert (=> bm!563134 m!7287428))

(assert (=> d!2038981 d!2039459))

(assert (=> d!2038981 d!2039015))

(assert (=> d!2038981 d!2039017))

(declare-fun bs!1650950 () Bool)

(declare-fun d!2039461 () Bool)

(assert (= bs!1650950 (and d!2039461 d!2039371)))

(declare-fun lambda!360120 () Int)

(assert (=> bs!1650950 (= lambda!360120 lambda!360115)))

(declare-fun bs!1650951 () Bool)

(assert (= bs!1650951 (and d!2039461 d!2039435)))

(assert (=> bs!1650951 (= lambda!360120 lambda!360117)))

(assert (=> d!2039461 (= (nullableZipper!2130 lt!2391000) (exists!2623 lt!2391000 lambda!360120))))

(declare-fun bs!1650952 () Bool)

(assert (= bs!1650952 d!2039461))

(declare-fun m!7287430 () Bool)

(assert (=> bs!1650952 m!7287430))

(assert (=> b!6498082 d!2039461))

(declare-fun b!6499269 () Bool)

(declare-fun e!3938349 () (InoxSet Context!11518))

(assert (=> b!6499269 (= e!3938349 ((as const (Array Context!11518 Bool)) false))))

(declare-fun call!563145 () (InoxSet Context!11518))

(declare-fun c!1191578 () Bool)

(declare-fun call!563141 () List!65424)

(declare-fun c!1191579 () Bool)

(declare-fun bm!563136 () Bool)

(declare-fun c!1191577 () Bool)

(assert (=> bm!563136 (= call!563145 (derivationStepZipperDown!1623 (ite c!1191578 (regOne!33263 (h!71748 (exprs!6259 lt!2391011))) (ite c!1191579 (regTwo!33262 (h!71748 (exprs!6259 lt!2391011))) (ite c!1191577 (regOne!33262 (h!71748 (exprs!6259 lt!2391011))) (reg!16704 (h!71748 (exprs!6259 lt!2391011)))))) (ite (or c!1191578 c!1191579) (Context!11519 (t!379056 (exprs!6259 lt!2391011))) (Context!11519 call!563141)) (h!71750 s!2326)))))

(declare-fun b!6499270 () Bool)

(declare-fun e!3938354 () (InoxSet Context!11518))

(declare-fun e!3938352 () (InoxSet Context!11518))

(assert (=> b!6499270 (= e!3938354 e!3938352)))

(assert (=> b!6499270 (= c!1191578 ((_ is Union!16375) (h!71748 (exprs!6259 lt!2391011))))))

(declare-fun bm!563137 () Bool)

(declare-fun call!563142 () List!65424)

(assert (=> bm!563137 (= call!563141 call!563142)))

(declare-fun d!2039463 () Bool)

(declare-fun c!1191580 () Bool)

(assert (=> d!2039463 (= c!1191580 (and ((_ is ElementMatch!16375) (h!71748 (exprs!6259 lt!2391011))) (= (c!1191063 (h!71748 (exprs!6259 lt!2391011))) (h!71750 s!2326))))))

(assert (=> d!2039463 (= (derivationStepZipperDown!1623 (h!71748 (exprs!6259 lt!2391011)) (Context!11519 (t!379056 (exprs!6259 lt!2391011))) (h!71750 s!2326)) e!3938354)))

(declare-fun b!6499271 () Bool)

(declare-fun call!563146 () (InoxSet Context!11518))

(assert (=> b!6499271 (= e!3938352 ((_ map or) call!563145 call!563146))))

(declare-fun bm!563138 () Bool)

(assert (=> bm!563138 (= call!563142 ($colon$colon!2226 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 lt!2391011)))) (ite (or c!1191579 c!1191577) (regTwo!33262 (h!71748 (exprs!6259 lt!2391011))) (h!71748 (exprs!6259 lt!2391011)))))))

(declare-fun b!6499272 () Bool)

(declare-fun e!3938353 () Bool)

(assert (=> b!6499272 (= c!1191579 e!3938353)))

(declare-fun res!2669074 () Bool)

(assert (=> b!6499272 (=> (not res!2669074) (not e!3938353))))

(assert (=> b!6499272 (= res!2669074 ((_ is Concat!25220) (h!71748 (exprs!6259 lt!2391011))))))

(declare-fun e!3938350 () (InoxSet Context!11518))

(assert (=> b!6499272 (= e!3938352 e!3938350)))

(declare-fun b!6499273 () Bool)

(declare-fun e!3938351 () (InoxSet Context!11518))

(assert (=> b!6499273 (= e!3938350 e!3938351)))

(assert (=> b!6499273 (= c!1191577 ((_ is Concat!25220) (h!71748 (exprs!6259 lt!2391011))))))

(declare-fun b!6499274 () Bool)

(declare-fun call!563143 () (InoxSet Context!11518))

(assert (=> b!6499274 (= e!3938351 call!563143)))

(declare-fun b!6499275 () Bool)

(assert (=> b!6499275 (= e!3938353 (nullable!6368 (regOne!33262 (h!71748 (exprs!6259 lt!2391011)))))))

(declare-fun b!6499276 () Bool)

(declare-fun call!563144 () (InoxSet Context!11518))

(assert (=> b!6499276 (= e!3938350 ((_ map or) call!563146 call!563144))))

(declare-fun bm!563139 () Bool)

(assert (=> bm!563139 (= call!563146 (derivationStepZipperDown!1623 (ite c!1191578 (regTwo!33263 (h!71748 (exprs!6259 lt!2391011))) (regOne!33262 (h!71748 (exprs!6259 lt!2391011)))) (ite c!1191578 (Context!11519 (t!379056 (exprs!6259 lt!2391011))) (Context!11519 call!563142)) (h!71750 s!2326)))))

(declare-fun b!6499277 () Bool)

(assert (=> b!6499277 (= e!3938354 (store ((as const (Array Context!11518 Bool)) false) (Context!11519 (t!379056 (exprs!6259 lt!2391011))) true))))

(declare-fun bm!563140 () Bool)

(assert (=> bm!563140 (= call!563143 call!563144)))

(declare-fun b!6499278 () Bool)

(declare-fun c!1191581 () Bool)

(assert (=> b!6499278 (= c!1191581 ((_ is Star!16375) (h!71748 (exprs!6259 lt!2391011))))))

(assert (=> b!6499278 (= e!3938351 e!3938349)))

(declare-fun b!6499279 () Bool)

(assert (=> b!6499279 (= e!3938349 call!563143)))

(declare-fun bm!563141 () Bool)

(assert (=> bm!563141 (= call!563144 call!563145)))

(assert (= (and d!2039463 c!1191580) b!6499277))

(assert (= (and d!2039463 (not c!1191580)) b!6499270))

(assert (= (and b!6499270 c!1191578) b!6499271))

(assert (= (and b!6499270 (not c!1191578)) b!6499272))

(assert (= (and b!6499272 res!2669074) b!6499275))

(assert (= (and b!6499272 c!1191579) b!6499276))

(assert (= (and b!6499272 (not c!1191579)) b!6499273))

(assert (= (and b!6499273 c!1191577) b!6499274))

(assert (= (and b!6499273 (not c!1191577)) b!6499278))

(assert (= (and b!6499278 c!1191581) b!6499279))

(assert (= (and b!6499278 (not c!1191581)) b!6499269))

(assert (= (or b!6499274 b!6499279) bm!563137))

(assert (= (or b!6499274 b!6499279) bm!563140))

(assert (= (or b!6499276 bm!563137) bm!563138))

(assert (= (or b!6499276 bm!563140) bm!563141))

(assert (= (or b!6499271 b!6499276) bm!563139))

(assert (= (or b!6499271 bm!563141) bm!563136))

(declare-fun m!7287432 () Bool)

(assert (=> bm!563139 m!7287432))

(declare-fun m!7287434 () Bool)

(assert (=> b!6499275 m!7287434))

(declare-fun m!7287436 () Bool)

(assert (=> bm!563136 m!7287436))

(declare-fun m!7287438 () Bool)

(assert (=> b!6499277 m!7287438))

(declare-fun m!7287440 () Bool)

(assert (=> bm!563138 m!7287440))

(assert (=> bm!562885 d!2039463))

(declare-fun d!2039465 () Bool)

(assert (=> d!2039465 (= (head!13222 (unfocusZipperList!1796 zl!343)) (h!71748 (unfocusZipperList!1796 zl!343)))))

(assert (=> b!6498146 d!2039465))

(declare-fun bs!1650953 () Bool)

(declare-fun b!6499285 () Bool)

(assert (= bs!1650953 (and b!6499285 b!6498918)))

(declare-fun lambda!360121 () Int)

(assert (=> bs!1650953 (= (and (= (reg!16704 (regOne!33263 r!7292)) (reg!16704 (regOne!33263 lt!2391008))) (= (regOne!33263 r!7292) (regOne!33263 lt!2391008))) (= lambda!360121 lambda!360101))))

(declare-fun bs!1650954 () Bool)

(assert (= bs!1650954 (and b!6499285 b!6498921)))

(assert (=> bs!1650954 (not (= lambda!360121 lambda!360102))))

(declare-fun bs!1650955 () Bool)

(assert (= bs!1650955 (and b!6499285 b!6497365)))

(assert (=> bs!1650955 (not (= lambda!360121 lambda!359988))))

(declare-fun bs!1650956 () Bool)

(assert (= bs!1650956 (and b!6499285 b!6499040)))

(assert (=> bs!1650956 (= (and (= (reg!16704 (regOne!33263 r!7292)) (reg!16704 (regTwo!33263 lt!2391008))) (= (regOne!33263 r!7292) (regTwo!33263 lt!2391008))) (= lambda!360121 lambda!360111))))

(declare-fun bs!1650957 () Bool)

(assert (= bs!1650957 (and b!6499285 b!6499043)))

(assert (=> bs!1650957 (not (= lambda!360121 lambda!360112))))

(declare-fun bs!1650958 () Bool)

(assert (= bs!1650958 (and b!6499285 b!6498018)))

(assert (=> bs!1650958 (= (and (= (reg!16704 (regOne!33263 r!7292)) (reg!16704 r!7292)) (= (regOne!33263 r!7292) r!7292)) (= lambda!360121 lambda!360034))))

(declare-fun bs!1650959 () Bool)

(assert (= bs!1650959 (and b!6499285 d!2038973)))

(assert (=> bs!1650959 (not (= lambda!360121 lambda!360047))))

(assert (=> bs!1650959 (not (= lambda!360121 lambda!360046))))

(declare-fun bs!1650960 () Bool)

(assert (= bs!1650960 (and b!6499285 d!2038971)))

(assert (=> bs!1650960 (not (= lambda!360121 lambda!360041))))

(declare-fun bs!1650961 () Bool)

(assert (= bs!1650961 (and b!6499285 d!2039347)))

(assert (=> bs!1650961 (not (= lambda!360121 lambda!360108))))

(assert (=> bs!1650961 (not (= lambda!360121 lambda!360109))))

(declare-fun bs!1650962 () Bool)

(assert (= bs!1650962 (and b!6499285 b!6498010)))

(assert (=> bs!1650962 (not (= lambda!360121 lambda!360033))))

(declare-fun bs!1650963 () Bool)

(assert (= bs!1650963 (and b!6499285 b!6498007)))

(assert (=> bs!1650963 (= (and (= (reg!16704 (regOne!33263 r!7292)) (reg!16704 lt!2391008)) (= (regOne!33263 r!7292) lt!2391008)) (= lambda!360121 lambda!360032))))

(declare-fun bs!1650964 () Bool)

(assert (= bs!1650964 (and b!6499285 b!6498021)))

(assert (=> bs!1650964 (not (= lambda!360121 lambda!360035))))

(assert (=> bs!1650955 (not (= lambda!360121 lambda!359989))))

(assert (=> b!6499285 true))

(assert (=> b!6499285 true))

(declare-fun bs!1650965 () Bool)

(declare-fun b!6499288 () Bool)

(assert (= bs!1650965 (and b!6499288 b!6498918)))

(declare-fun lambda!360122 () Int)

(assert (=> bs!1650965 (not (= lambda!360122 lambda!360101))))

(declare-fun bs!1650966 () Bool)

(assert (= bs!1650966 (and b!6499288 b!6498921)))

(assert (=> bs!1650966 (= (and (= (regOne!33262 (regOne!33263 r!7292)) (regOne!33262 (regOne!33263 lt!2391008))) (= (regTwo!33262 (regOne!33263 r!7292)) (regTwo!33262 (regOne!33263 lt!2391008)))) (= lambda!360122 lambda!360102))))

(declare-fun bs!1650967 () Bool)

(assert (= bs!1650967 (and b!6499288 b!6497365)))

(assert (=> bs!1650967 (not (= lambda!360122 lambda!359988))))

(declare-fun bs!1650968 () Bool)

(assert (= bs!1650968 (and b!6499288 b!6499040)))

(assert (=> bs!1650968 (not (= lambda!360122 lambda!360111))))

(declare-fun bs!1650969 () Bool)

(assert (= bs!1650969 (and b!6499288 b!6499043)))

(assert (=> bs!1650969 (= (and (= (regOne!33262 (regOne!33263 r!7292)) (regOne!33262 (regTwo!33263 lt!2391008))) (= (regTwo!33262 (regOne!33263 r!7292)) (regTwo!33262 (regTwo!33263 lt!2391008)))) (= lambda!360122 lambda!360112))))

(declare-fun bs!1650970 () Bool)

(assert (= bs!1650970 (and b!6499288 b!6498018)))

(assert (=> bs!1650970 (not (= lambda!360122 lambda!360034))))

(declare-fun bs!1650971 () Bool)

(assert (= bs!1650971 (and b!6499288 d!2038973)))

(assert (=> bs!1650971 (= (and (= (regOne!33262 (regOne!33263 r!7292)) (regOne!33262 r!7292)) (= (regTwo!33262 (regOne!33263 r!7292)) (regTwo!33262 r!7292))) (= lambda!360122 lambda!360047))))

(assert (=> bs!1650971 (not (= lambda!360122 lambda!360046))))

(declare-fun bs!1650972 () Bool)

(assert (= bs!1650972 (and b!6499288 b!6499285)))

(assert (=> bs!1650972 (not (= lambda!360122 lambda!360121))))

(declare-fun bs!1650973 () Bool)

(assert (= bs!1650973 (and b!6499288 d!2038971)))

(assert (=> bs!1650973 (not (= lambda!360122 lambda!360041))))

(declare-fun bs!1650974 () Bool)

(assert (= bs!1650974 (and b!6499288 d!2039347)))

(assert (=> bs!1650974 (not (= lambda!360122 lambda!360108))))

(assert (=> bs!1650974 (= (and (= (regOne!33262 (regOne!33263 r!7292)) (regOne!33262 r!7292)) (= (regTwo!33262 (regOne!33263 r!7292)) (regTwo!33262 r!7292))) (= lambda!360122 lambda!360109))))

(declare-fun bs!1650975 () Bool)

(assert (= bs!1650975 (and b!6499288 b!6498010)))

(assert (=> bs!1650975 (= (and (= (regOne!33262 (regOne!33263 r!7292)) (regOne!33262 lt!2391008)) (= (regTwo!33262 (regOne!33263 r!7292)) (regTwo!33262 lt!2391008))) (= lambda!360122 lambda!360033))))

(declare-fun bs!1650976 () Bool)

(assert (= bs!1650976 (and b!6499288 b!6498007)))

(assert (=> bs!1650976 (not (= lambda!360122 lambda!360032))))

(declare-fun bs!1650977 () Bool)

(assert (= bs!1650977 (and b!6499288 b!6498021)))

(assert (=> bs!1650977 (= (and (= (regOne!33262 (regOne!33263 r!7292)) (regOne!33262 r!7292)) (= (regTwo!33262 (regOne!33263 r!7292)) (regTwo!33262 r!7292))) (= lambda!360122 lambda!360035))))

(assert (=> bs!1650967 (= (and (= (regOne!33262 (regOne!33263 r!7292)) (regOne!33262 r!7292)) (= (regTwo!33262 (regOne!33263 r!7292)) (regTwo!33262 r!7292))) (= lambda!360122 lambda!359989))))

(assert (=> b!6499288 true))

(assert (=> b!6499288 true))

(declare-fun b!6499280 () Bool)

(declare-fun e!3938361 () Bool)

(declare-fun call!563148 () Bool)

(assert (=> b!6499280 (= e!3938361 call!563148)))

(declare-fun d!2039467 () Bool)

(declare-fun c!1191585 () Bool)

(assert (=> d!2039467 (= c!1191585 ((_ is EmptyExpr!16375) (regOne!33263 r!7292)))))

(assert (=> d!2039467 (= (matchRSpec!3476 (regOne!33263 r!7292) s!2326) e!3938361)))

(declare-fun b!6499281 () Bool)

(declare-fun e!3938358 () Bool)

(assert (=> b!6499281 (= e!3938358 (= s!2326 (Cons!65302 (c!1191063 (regOne!33263 r!7292)) Nil!65302)))))

(declare-fun b!6499282 () Bool)

(declare-fun res!2669075 () Bool)

(declare-fun e!3938356 () Bool)

(assert (=> b!6499282 (=> res!2669075 e!3938356)))

(assert (=> b!6499282 (= res!2669075 call!563148)))

(declare-fun e!3938355 () Bool)

(assert (=> b!6499282 (= e!3938355 e!3938356)))

(declare-fun b!6499283 () Bool)

(declare-fun c!1191582 () Bool)

(assert (=> b!6499283 (= c!1191582 ((_ is ElementMatch!16375) (regOne!33263 r!7292)))))

(declare-fun e!3938359 () Bool)

(assert (=> b!6499283 (= e!3938359 e!3938358)))

(declare-fun b!6499284 () Bool)

(declare-fun e!3938357 () Bool)

(declare-fun e!3938360 () Bool)

(assert (=> b!6499284 (= e!3938357 e!3938360)))

(declare-fun res!2669076 () Bool)

(assert (=> b!6499284 (= res!2669076 (matchRSpec!3476 (regOne!33263 (regOne!33263 r!7292)) s!2326))))

(assert (=> b!6499284 (=> res!2669076 e!3938360)))

(declare-fun call!563147 () Bool)

(assert (=> b!6499285 (= e!3938356 call!563147)))

(declare-fun c!1191584 () Bool)

(declare-fun bm!563142 () Bool)

(assert (=> bm!563142 (= call!563147 (Exists!3445 (ite c!1191584 lambda!360121 lambda!360122)))))

(declare-fun b!6499286 () Bool)

(declare-fun c!1191583 () Bool)

(assert (=> b!6499286 (= c!1191583 ((_ is Union!16375) (regOne!33263 r!7292)))))

(assert (=> b!6499286 (= e!3938358 e!3938357)))

(declare-fun b!6499287 () Bool)

(assert (=> b!6499287 (= e!3938360 (matchRSpec!3476 (regTwo!33263 (regOne!33263 r!7292)) s!2326))))

(declare-fun bm!563143 () Bool)

(assert (=> bm!563143 (= call!563148 (isEmpty!37501 s!2326))))

(assert (=> b!6499288 (= e!3938355 call!563147)))

(declare-fun b!6499289 () Bool)

(assert (=> b!6499289 (= e!3938361 e!3938359)))

(declare-fun res!2669077 () Bool)

(assert (=> b!6499289 (= res!2669077 (not ((_ is EmptyLang!16375) (regOne!33263 r!7292))))))

(assert (=> b!6499289 (=> (not res!2669077) (not e!3938359))))

(declare-fun b!6499290 () Bool)

(assert (=> b!6499290 (= e!3938357 e!3938355)))

(assert (=> b!6499290 (= c!1191584 ((_ is Star!16375) (regOne!33263 r!7292)))))

(assert (= (and d!2039467 c!1191585) b!6499280))

(assert (= (and d!2039467 (not c!1191585)) b!6499289))

(assert (= (and b!6499289 res!2669077) b!6499283))

(assert (= (and b!6499283 c!1191582) b!6499281))

(assert (= (and b!6499283 (not c!1191582)) b!6499286))

(assert (= (and b!6499286 c!1191583) b!6499284))

(assert (= (and b!6499286 (not c!1191583)) b!6499290))

(assert (= (and b!6499284 (not res!2669076)) b!6499287))

(assert (= (and b!6499290 c!1191584) b!6499282))

(assert (= (and b!6499290 (not c!1191584)) b!6499288))

(assert (= (and b!6499282 (not res!2669075)) b!6499285))

(assert (= (or b!6499285 b!6499288) bm!563142))

(assert (= (or b!6499280 b!6499282) bm!563143))

(declare-fun m!7287442 () Bool)

(assert (=> b!6499284 m!7287442))

(declare-fun m!7287444 () Bool)

(assert (=> bm!563142 m!7287444))

(declare-fun m!7287446 () Bool)

(assert (=> b!6499287 m!7287446))

(assert (=> bm!563143 m!7286224))

(assert (=> b!6498017 d!2039467))

(declare-fun b!6499291 () Bool)

(declare-fun e!3938365 () Bool)

(declare-fun e!3938362 () Bool)

(assert (=> b!6499291 (= e!3938365 e!3938362)))

(declare-fun c!1191587 () Bool)

(assert (=> b!6499291 (= c!1191587 ((_ is Union!16375) lt!2391132))))

(declare-fun b!6499292 () Bool)

(declare-fun e!3938363 () Bool)

(assert (=> b!6499292 (= e!3938365 e!3938363)))

(declare-fun res!2669081 () Bool)

(assert (=> b!6499292 (= res!2669081 (not (nullable!6368 (reg!16704 lt!2391132))))))

(assert (=> b!6499292 (=> (not res!2669081) (not e!3938363))))

(declare-fun b!6499293 () Bool)

(declare-fun e!3938368 () Bool)

(declare-fun e!3938367 () Bool)

(assert (=> b!6499293 (= e!3938368 e!3938367)))

(declare-fun res!2669079 () Bool)

(assert (=> b!6499293 (=> (not res!2669079) (not e!3938367))))

(declare-fun call!563149 () Bool)

(assert (=> b!6499293 (= res!2669079 call!563149)))

(declare-fun b!6499294 () Bool)

(declare-fun res!2669080 () Bool)

(assert (=> b!6499294 (=> res!2669080 e!3938368)))

(assert (=> b!6499294 (= res!2669080 (not ((_ is Concat!25220) lt!2391132)))))

(assert (=> b!6499294 (= e!3938362 e!3938368)))

(declare-fun d!2039469 () Bool)

(declare-fun res!2669082 () Bool)

(declare-fun e!3938366 () Bool)

(assert (=> d!2039469 (=> res!2669082 e!3938366)))

(assert (=> d!2039469 (= res!2669082 ((_ is ElementMatch!16375) lt!2391132))))

(assert (=> d!2039469 (= (validRegex!8111 lt!2391132) e!3938366)))

(declare-fun c!1191586 () Bool)

(declare-fun bm!563144 () Bool)

(declare-fun call!563150 () Bool)

(assert (=> bm!563144 (= call!563150 (validRegex!8111 (ite c!1191586 (reg!16704 lt!2391132) (ite c!1191587 (regOne!33263 lt!2391132) (regOne!33262 lt!2391132)))))))

(declare-fun b!6499295 () Bool)

(assert (=> b!6499295 (= e!3938363 call!563150)))

(declare-fun b!6499296 () Bool)

(declare-fun e!3938364 () Bool)

(declare-fun call!563151 () Bool)

(assert (=> b!6499296 (= e!3938364 call!563151)))

(declare-fun b!6499297 () Bool)

(assert (=> b!6499297 (= e!3938367 call!563151)))

(declare-fun bm!563145 () Bool)

(assert (=> bm!563145 (= call!563151 (validRegex!8111 (ite c!1191587 (regTwo!33263 lt!2391132) (regTwo!33262 lt!2391132))))))

(declare-fun b!6499298 () Bool)

(declare-fun res!2669078 () Bool)

(assert (=> b!6499298 (=> (not res!2669078) (not e!3938364))))

(assert (=> b!6499298 (= res!2669078 call!563149)))

(assert (=> b!6499298 (= e!3938362 e!3938364)))

(declare-fun b!6499299 () Bool)

(assert (=> b!6499299 (= e!3938366 e!3938365)))

(assert (=> b!6499299 (= c!1191586 ((_ is Star!16375) lt!2391132))))

(declare-fun bm!563146 () Bool)

(assert (=> bm!563146 (= call!563149 call!563150)))

(assert (= (and d!2039469 (not res!2669082)) b!6499299))

(assert (= (and b!6499299 c!1191586) b!6499292))

(assert (= (and b!6499299 (not c!1191586)) b!6499291))

(assert (= (and b!6499292 res!2669081) b!6499295))

(assert (= (and b!6499291 c!1191587) b!6499298))

(assert (= (and b!6499291 (not c!1191587)) b!6499294))

(assert (= (and b!6499298 res!2669078) b!6499296))

(assert (= (and b!6499294 (not res!2669080)) b!6499293))

(assert (= (and b!6499293 res!2669079) b!6499297))

(assert (= (or b!6499296 b!6499297) bm!563145))

(assert (= (or b!6499298 b!6499293) bm!563146))

(assert (= (or b!6499295 bm!563146) bm!563144))

(declare-fun m!7287448 () Bool)

(assert (=> b!6499292 m!7287448))

(declare-fun m!7287450 () Bool)

(assert (=> bm!563144 m!7287450))

(declare-fun m!7287452 () Bool)

(assert (=> bm!563145 m!7287452))

(assert (=> d!2039019 d!2039469))

(declare-fun bs!1650978 () Bool)

(declare-fun d!2039471 () Bool)

(assert (= bs!1650978 (and d!2039471 d!2038959)))

(declare-fun lambda!360123 () Int)

(assert (=> bs!1650978 (= lambda!360123 lambda!360038)))

(declare-fun bs!1650979 () Bool)

(assert (= bs!1650979 (and d!2039471 d!2038941)))

(assert (=> bs!1650979 (= lambda!360123 lambda!360027)))

(declare-fun bs!1650980 () Bool)

(assert (= bs!1650980 (and d!2039471 d!2039437)))

(assert (=> bs!1650980 (= lambda!360123 lambda!360118)))

(declare-fun bs!1650981 () Bool)

(assert (= bs!1650981 (and d!2039471 d!2039015)))

(assert (=> bs!1650981 (= lambda!360123 lambda!360055)))

(declare-fun bs!1650982 () Bool)

(assert (= bs!1650982 (and d!2039471 d!2039017)))

(assert (=> bs!1650982 (= lambda!360123 lambda!360058)))

(declare-fun bs!1650983 () Bool)

(assert (= bs!1650983 (and d!2039471 d!2039455)))

(assert (=> bs!1650983 (= lambda!360123 lambda!360119)))

(declare-fun bs!1650984 () Bool)

(assert (= bs!1650984 (and d!2039471 d!2039013)))

(assert (=> bs!1650984 (= lambda!360123 lambda!360052)))

(declare-fun bs!1650985 () Bool)

(assert (= bs!1650985 (and d!2039471 d!2038993)))

(assert (=> bs!1650985 (= lambda!360123 lambda!360051)))

(declare-fun b!6499300 () Bool)

(declare-fun e!3938370 () Bool)

(declare-fun lt!2391183 () Regex!16375)

(assert (=> b!6499300 (= e!3938370 (isUnion!1203 lt!2391183))))

(declare-fun b!6499301 () Bool)

(declare-fun e!3938374 () Regex!16375)

(declare-fun e!3938372 () Regex!16375)

(assert (=> b!6499301 (= e!3938374 e!3938372)))

(declare-fun c!1191591 () Bool)

(assert (=> b!6499301 (= c!1191591 ((_ is Cons!65300) (unfocusZipperList!1796 (Cons!65301 lt!2391016 Nil!65301))))))

(declare-fun b!6499302 () Bool)

(assert (=> b!6499302 (= e!3938370 (= lt!2391183 (head!13222 (unfocusZipperList!1796 (Cons!65301 lt!2391016 Nil!65301)))))))

(declare-fun e!3938371 () Bool)

(assert (=> d!2039471 e!3938371))

(declare-fun res!2669083 () Bool)

(assert (=> d!2039471 (=> (not res!2669083) (not e!3938371))))

(assert (=> d!2039471 (= res!2669083 (validRegex!8111 lt!2391183))))

(assert (=> d!2039471 (= lt!2391183 e!3938374)))

(declare-fun c!1191590 () Bool)

(declare-fun e!3938373 () Bool)

(assert (=> d!2039471 (= c!1191590 e!3938373)))

(declare-fun res!2669084 () Bool)

(assert (=> d!2039471 (=> (not res!2669084) (not e!3938373))))

(assert (=> d!2039471 (= res!2669084 ((_ is Cons!65300) (unfocusZipperList!1796 (Cons!65301 lt!2391016 Nil!65301))))))

(assert (=> d!2039471 (forall!15556 (unfocusZipperList!1796 (Cons!65301 lt!2391016 Nil!65301)) lambda!360123)))

(assert (=> d!2039471 (= (generalisedUnion!2219 (unfocusZipperList!1796 (Cons!65301 lt!2391016 Nil!65301))) lt!2391183)))

(declare-fun b!6499303 () Bool)

(assert (=> b!6499303 (= e!3938372 EmptyLang!16375)))

(declare-fun b!6499304 () Bool)

(assert (=> b!6499304 (= e!3938373 (isEmpty!37497 (t!379056 (unfocusZipperList!1796 (Cons!65301 lt!2391016 Nil!65301)))))))

(declare-fun b!6499305 () Bool)

(declare-fun e!3938369 () Bool)

(assert (=> b!6499305 (= e!3938369 (isEmptyLang!1773 lt!2391183))))

(declare-fun b!6499306 () Bool)

(assert (=> b!6499306 (= e!3938374 (h!71748 (unfocusZipperList!1796 (Cons!65301 lt!2391016 Nil!65301))))))

(declare-fun b!6499307 () Bool)

(assert (=> b!6499307 (= e!3938372 (Union!16375 (h!71748 (unfocusZipperList!1796 (Cons!65301 lt!2391016 Nil!65301))) (generalisedUnion!2219 (t!379056 (unfocusZipperList!1796 (Cons!65301 lt!2391016 Nil!65301))))))))

(declare-fun b!6499308 () Bool)

(assert (=> b!6499308 (= e!3938371 e!3938369)))

(declare-fun c!1191589 () Bool)

(assert (=> b!6499308 (= c!1191589 (isEmpty!37497 (unfocusZipperList!1796 (Cons!65301 lt!2391016 Nil!65301))))))

(declare-fun b!6499309 () Bool)

(assert (=> b!6499309 (= e!3938369 e!3938370)))

(declare-fun c!1191588 () Bool)

(assert (=> b!6499309 (= c!1191588 (isEmpty!37497 (tail!12307 (unfocusZipperList!1796 (Cons!65301 lt!2391016 Nil!65301)))))))

(assert (= (and d!2039471 res!2669084) b!6499304))

(assert (= (and d!2039471 c!1191590) b!6499306))

(assert (= (and d!2039471 (not c!1191590)) b!6499301))

(assert (= (and b!6499301 c!1191591) b!6499307))

(assert (= (and b!6499301 (not c!1191591)) b!6499303))

(assert (= (and d!2039471 res!2669083) b!6499308))

(assert (= (and b!6499308 c!1191589) b!6499305))

(assert (= (and b!6499308 (not c!1191589)) b!6499309))

(assert (= (and b!6499309 c!1191588) b!6499302))

(assert (= (and b!6499309 (not c!1191588)) b!6499300))

(assert (=> b!6499309 m!7286420))

(declare-fun m!7287454 () Bool)

(assert (=> b!6499309 m!7287454))

(assert (=> b!6499309 m!7287454))

(declare-fun m!7287456 () Bool)

(assert (=> b!6499309 m!7287456))

(declare-fun m!7287458 () Bool)

(assert (=> b!6499305 m!7287458))

(assert (=> b!6499302 m!7286420))

(declare-fun m!7287460 () Bool)

(assert (=> b!6499302 m!7287460))

(declare-fun m!7287462 () Bool)

(assert (=> b!6499307 m!7287462))

(declare-fun m!7287464 () Bool)

(assert (=> b!6499304 m!7287464))

(declare-fun m!7287466 () Bool)

(assert (=> d!2039471 m!7287466))

(assert (=> d!2039471 m!7286420))

(declare-fun m!7287468 () Bool)

(assert (=> d!2039471 m!7287468))

(declare-fun m!7287470 () Bool)

(assert (=> b!6499300 m!7287470))

(assert (=> b!6499308 m!7286420))

(declare-fun m!7287472 () Bool)

(assert (=> b!6499308 m!7287472))

(assert (=> d!2039019 d!2039471))

(declare-fun bs!1650986 () Bool)

(declare-fun d!2039473 () Bool)

(assert (= bs!1650986 (and d!2039473 d!2038959)))

(declare-fun lambda!360124 () Int)

(assert (=> bs!1650986 (= lambda!360124 lambda!360038)))

(declare-fun bs!1650987 () Bool)

(assert (= bs!1650987 (and d!2039473 d!2039437)))

(assert (=> bs!1650987 (= lambda!360124 lambda!360118)))

(declare-fun bs!1650988 () Bool)

(assert (= bs!1650988 (and d!2039473 d!2039015)))

(assert (=> bs!1650988 (= lambda!360124 lambda!360055)))

(declare-fun bs!1650989 () Bool)

(assert (= bs!1650989 (and d!2039473 d!2039017)))

(assert (=> bs!1650989 (= lambda!360124 lambda!360058)))

(declare-fun bs!1650990 () Bool)

(assert (= bs!1650990 (and d!2039473 d!2039455)))

(assert (=> bs!1650990 (= lambda!360124 lambda!360119)))

(declare-fun bs!1650991 () Bool)

(assert (= bs!1650991 (and d!2039473 d!2039013)))

(assert (=> bs!1650991 (= lambda!360124 lambda!360052)))

(declare-fun bs!1650992 () Bool)

(assert (= bs!1650992 (and d!2039473 d!2038993)))

(assert (=> bs!1650992 (= lambda!360124 lambda!360051)))

(declare-fun bs!1650993 () Bool)

(assert (= bs!1650993 (and d!2039473 d!2039471)))

(assert (=> bs!1650993 (= lambda!360124 lambda!360123)))

(declare-fun bs!1650994 () Bool)

(assert (= bs!1650994 (and d!2039473 d!2038941)))

(assert (=> bs!1650994 (= lambda!360124 lambda!360027)))

(declare-fun lt!2391184 () List!65424)

(assert (=> d!2039473 (forall!15556 lt!2391184 lambda!360124)))

(declare-fun e!3938375 () List!65424)

(assert (=> d!2039473 (= lt!2391184 e!3938375)))

(declare-fun c!1191592 () Bool)

(assert (=> d!2039473 (= c!1191592 ((_ is Cons!65301) (Cons!65301 lt!2391016 Nil!65301)))))

(assert (=> d!2039473 (= (unfocusZipperList!1796 (Cons!65301 lt!2391016 Nil!65301)) lt!2391184)))

(declare-fun b!6499310 () Bool)

(assert (=> b!6499310 (= e!3938375 (Cons!65300 (generalisedConcat!1972 (exprs!6259 (h!71749 (Cons!65301 lt!2391016 Nil!65301)))) (unfocusZipperList!1796 (t!379057 (Cons!65301 lt!2391016 Nil!65301)))))))

(declare-fun b!6499311 () Bool)

(assert (=> b!6499311 (= e!3938375 Nil!65300)))

(assert (= (and d!2039473 c!1191592) b!6499310))

(assert (= (and d!2039473 (not c!1191592)) b!6499311))

(declare-fun m!7287474 () Bool)

(assert (=> d!2039473 m!7287474))

(declare-fun m!7287476 () Bool)

(assert (=> b!6499310 m!7287476))

(declare-fun m!7287478 () Bool)

(assert (=> b!6499310 m!7287478))

(assert (=> d!2039019 d!2039473))

(assert (=> d!2038979 d!2039413))

(declare-fun d!2039475 () Bool)

(declare-fun res!2669085 () Bool)

(declare-fun e!3938376 () Bool)

(assert (=> d!2039475 (=> res!2669085 e!3938376)))

(assert (=> d!2039475 (= res!2669085 ((_ is Nil!65300) (exprs!6259 (h!71749 zl!343))))))

(assert (=> d!2039475 (= (forall!15556 (exprs!6259 (h!71749 zl!343)) lambda!360051) e!3938376)))

(declare-fun b!6499312 () Bool)

(declare-fun e!3938377 () Bool)

(assert (=> b!6499312 (= e!3938376 e!3938377)))

(declare-fun res!2669086 () Bool)

(assert (=> b!6499312 (=> (not res!2669086) (not e!3938377))))

(assert (=> b!6499312 (= res!2669086 (dynLambda!25941 lambda!360051 (h!71748 (exprs!6259 (h!71749 zl!343)))))))

(declare-fun b!6499313 () Bool)

(assert (=> b!6499313 (= e!3938377 (forall!15556 (t!379056 (exprs!6259 (h!71749 zl!343))) lambda!360051))))

(assert (= (and d!2039475 (not res!2669085)) b!6499312))

(assert (= (and b!6499312 res!2669086) b!6499313))

(declare-fun b_lambda!246045 () Bool)

(assert (=> (not b_lambda!246045) (not b!6499312)))

(declare-fun m!7287480 () Bool)

(assert (=> b!6499312 m!7287480))

(declare-fun m!7287482 () Bool)

(assert (=> b!6499313 m!7287482))

(assert (=> d!2038993 d!2039475))

(declare-fun bs!1650995 () Bool)

(declare-fun d!2039477 () Bool)

(assert (= bs!1650995 (and d!2039477 d!2038959)))

(declare-fun lambda!360125 () Int)

(assert (=> bs!1650995 (= lambda!360125 lambda!360038)))

(declare-fun bs!1650996 () Bool)

(assert (= bs!1650996 (and d!2039477 d!2039015)))

(assert (=> bs!1650996 (= lambda!360125 lambda!360055)))

(declare-fun bs!1650997 () Bool)

(assert (= bs!1650997 (and d!2039477 d!2039017)))

(assert (=> bs!1650997 (= lambda!360125 lambda!360058)))

(declare-fun bs!1650998 () Bool)

(assert (= bs!1650998 (and d!2039477 d!2039455)))

(assert (=> bs!1650998 (= lambda!360125 lambda!360119)))

(declare-fun bs!1650999 () Bool)

(assert (= bs!1650999 (and d!2039477 d!2039013)))

(assert (=> bs!1650999 (= lambda!360125 lambda!360052)))

(declare-fun bs!1651000 () Bool)

(assert (= bs!1651000 (and d!2039477 d!2038993)))

(assert (=> bs!1651000 (= lambda!360125 lambda!360051)))

(declare-fun bs!1651001 () Bool)

(assert (= bs!1651001 (and d!2039477 d!2039471)))

(assert (=> bs!1651001 (= lambda!360125 lambda!360123)))

(declare-fun bs!1651002 () Bool)

(assert (= bs!1651002 (and d!2039477 d!2038941)))

(assert (=> bs!1651002 (= lambda!360125 lambda!360027)))

(declare-fun bs!1651003 () Bool)

(assert (= bs!1651003 (and d!2039477 d!2039473)))

(assert (=> bs!1651003 (= lambda!360125 lambda!360124)))

(declare-fun bs!1651004 () Bool)

(assert (= bs!1651004 (and d!2039477 d!2039437)))

(assert (=> bs!1651004 (= lambda!360125 lambda!360118)))

(declare-fun b!6499314 () Bool)

(declare-fun e!3938379 () Bool)

(declare-fun lt!2391185 () Regex!16375)

(assert (=> b!6499314 (= e!3938379 (isUnion!1203 lt!2391185))))

(declare-fun b!6499315 () Bool)

(declare-fun e!3938383 () Regex!16375)

(declare-fun e!3938381 () Regex!16375)

(assert (=> b!6499315 (= e!3938383 e!3938381)))

(declare-fun c!1191596 () Bool)

(assert (=> b!6499315 (= c!1191596 ((_ is Cons!65300) (t!379056 (unfocusZipperList!1796 zl!343))))))

(declare-fun b!6499316 () Bool)

(assert (=> b!6499316 (= e!3938379 (= lt!2391185 (head!13222 (t!379056 (unfocusZipperList!1796 zl!343)))))))

(declare-fun e!3938380 () Bool)

(assert (=> d!2039477 e!3938380))

(declare-fun res!2669087 () Bool)

(assert (=> d!2039477 (=> (not res!2669087) (not e!3938380))))

(assert (=> d!2039477 (= res!2669087 (validRegex!8111 lt!2391185))))

(assert (=> d!2039477 (= lt!2391185 e!3938383)))

(declare-fun c!1191595 () Bool)

(declare-fun e!3938382 () Bool)

(assert (=> d!2039477 (= c!1191595 e!3938382)))

(declare-fun res!2669088 () Bool)

(assert (=> d!2039477 (=> (not res!2669088) (not e!3938382))))

(assert (=> d!2039477 (= res!2669088 ((_ is Cons!65300) (t!379056 (unfocusZipperList!1796 zl!343))))))

(assert (=> d!2039477 (forall!15556 (t!379056 (unfocusZipperList!1796 zl!343)) lambda!360125)))

(assert (=> d!2039477 (= (generalisedUnion!2219 (t!379056 (unfocusZipperList!1796 zl!343))) lt!2391185)))

(declare-fun b!6499317 () Bool)

(assert (=> b!6499317 (= e!3938381 EmptyLang!16375)))

(declare-fun b!6499318 () Bool)

(assert (=> b!6499318 (= e!3938382 (isEmpty!37497 (t!379056 (t!379056 (unfocusZipperList!1796 zl!343)))))))

(declare-fun b!6499319 () Bool)

(declare-fun e!3938378 () Bool)

(assert (=> b!6499319 (= e!3938378 (isEmptyLang!1773 lt!2391185))))

(declare-fun b!6499320 () Bool)

(assert (=> b!6499320 (= e!3938383 (h!71748 (t!379056 (unfocusZipperList!1796 zl!343))))))

(declare-fun b!6499321 () Bool)

(assert (=> b!6499321 (= e!3938381 (Union!16375 (h!71748 (t!379056 (unfocusZipperList!1796 zl!343))) (generalisedUnion!2219 (t!379056 (t!379056 (unfocusZipperList!1796 zl!343))))))))

(declare-fun b!6499322 () Bool)

(assert (=> b!6499322 (= e!3938380 e!3938378)))

(declare-fun c!1191594 () Bool)

(assert (=> b!6499322 (= c!1191594 (isEmpty!37497 (t!379056 (unfocusZipperList!1796 zl!343))))))

(declare-fun b!6499323 () Bool)

(assert (=> b!6499323 (= e!3938378 e!3938379)))

(declare-fun c!1191593 () Bool)

(assert (=> b!6499323 (= c!1191593 (isEmpty!37497 (tail!12307 (t!379056 (unfocusZipperList!1796 zl!343)))))))

(assert (= (and d!2039477 res!2669088) b!6499318))

(assert (= (and d!2039477 c!1191595) b!6499320))

(assert (= (and d!2039477 (not c!1191595)) b!6499315))

(assert (= (and b!6499315 c!1191596) b!6499321))

(assert (= (and b!6499315 (not c!1191596)) b!6499317))

(assert (= (and d!2039477 res!2669087) b!6499322))

(assert (= (and b!6499322 c!1191594) b!6499319))

(assert (= (and b!6499322 (not c!1191594)) b!6499323))

(assert (= (and b!6499323 c!1191593) b!6499316))

(assert (= (and b!6499323 (not c!1191593)) b!6499314))

(declare-fun m!7287484 () Bool)

(assert (=> b!6499323 m!7287484))

(assert (=> b!6499323 m!7287484))

(declare-fun m!7287486 () Bool)

(assert (=> b!6499323 m!7287486))

(declare-fun m!7287488 () Bool)

(assert (=> b!6499319 m!7287488))

(declare-fun m!7287490 () Bool)

(assert (=> b!6499316 m!7287490))

(declare-fun m!7287492 () Bool)

(assert (=> b!6499321 m!7287492))

(declare-fun m!7287494 () Bool)

(assert (=> b!6499318 m!7287494))

(declare-fun m!7287496 () Bool)

(assert (=> d!2039477 m!7287496))

(declare-fun m!7287498 () Bool)

(assert (=> d!2039477 m!7287498))

(declare-fun m!7287500 () Bool)

(assert (=> b!6499314 m!7287500))

(assert (=> b!6499322 m!7286404))

(assert (=> b!6498151 d!2039477))

(assert (=> b!6498061 d!2039359))

(declare-fun bs!1651005 () Bool)

(declare-fun b!6499329 () Bool)

(assert (= bs!1651005 (and b!6499329 b!6498918)))

(declare-fun lambda!360126 () Int)

(assert (=> bs!1651005 (= (and (= (reg!16704 (regTwo!33263 r!7292)) (reg!16704 (regOne!33263 lt!2391008))) (= (regTwo!33263 r!7292) (regOne!33263 lt!2391008))) (= lambda!360126 lambda!360101))))

(declare-fun bs!1651006 () Bool)

(assert (= bs!1651006 (and b!6499329 b!6498921)))

(assert (=> bs!1651006 (not (= lambda!360126 lambda!360102))))

(declare-fun bs!1651007 () Bool)

(assert (= bs!1651007 (and b!6499329 b!6497365)))

(assert (=> bs!1651007 (not (= lambda!360126 lambda!359988))))

(declare-fun bs!1651008 () Bool)

(assert (= bs!1651008 (and b!6499329 b!6499040)))

(assert (=> bs!1651008 (= (and (= (reg!16704 (regTwo!33263 r!7292)) (reg!16704 (regTwo!33263 lt!2391008))) (= (regTwo!33263 r!7292) (regTwo!33263 lt!2391008))) (= lambda!360126 lambda!360111))))

(declare-fun bs!1651009 () Bool)

(assert (= bs!1651009 (and b!6499329 b!6499043)))

(assert (=> bs!1651009 (not (= lambda!360126 lambda!360112))))

(declare-fun bs!1651010 () Bool)

(assert (= bs!1651010 (and b!6499329 b!6498018)))

(assert (=> bs!1651010 (= (and (= (reg!16704 (regTwo!33263 r!7292)) (reg!16704 r!7292)) (= (regTwo!33263 r!7292) r!7292)) (= lambda!360126 lambda!360034))))

(declare-fun bs!1651011 () Bool)

(assert (= bs!1651011 (and b!6499329 d!2038973)))

(assert (=> bs!1651011 (not (= lambda!360126 lambda!360046))))

(declare-fun bs!1651012 () Bool)

(assert (= bs!1651012 (and b!6499329 b!6499285)))

(assert (=> bs!1651012 (= (and (= (reg!16704 (regTwo!33263 r!7292)) (reg!16704 (regOne!33263 r!7292))) (= (regTwo!33263 r!7292) (regOne!33263 r!7292))) (= lambda!360126 lambda!360121))))

(declare-fun bs!1651013 () Bool)

(assert (= bs!1651013 (and b!6499329 d!2038971)))

(assert (=> bs!1651013 (not (= lambda!360126 lambda!360041))))

(declare-fun bs!1651014 () Bool)

(assert (= bs!1651014 (and b!6499329 d!2039347)))

(assert (=> bs!1651014 (not (= lambda!360126 lambda!360108))))

(assert (=> bs!1651014 (not (= lambda!360126 lambda!360109))))

(declare-fun bs!1651015 () Bool)

(assert (= bs!1651015 (and b!6499329 b!6498010)))

(assert (=> bs!1651015 (not (= lambda!360126 lambda!360033))))

(declare-fun bs!1651016 () Bool)

(assert (= bs!1651016 (and b!6499329 b!6498007)))

(assert (=> bs!1651016 (= (and (= (reg!16704 (regTwo!33263 r!7292)) (reg!16704 lt!2391008)) (= (regTwo!33263 r!7292) lt!2391008)) (= lambda!360126 lambda!360032))))

(declare-fun bs!1651017 () Bool)

(assert (= bs!1651017 (and b!6499329 b!6499288)))

(assert (=> bs!1651017 (not (= lambda!360126 lambda!360122))))

(assert (=> bs!1651011 (not (= lambda!360126 lambda!360047))))

(declare-fun bs!1651018 () Bool)

(assert (= bs!1651018 (and b!6499329 b!6498021)))

(assert (=> bs!1651018 (not (= lambda!360126 lambda!360035))))

(assert (=> bs!1651007 (not (= lambda!360126 lambda!359989))))

(assert (=> b!6499329 true))

(assert (=> b!6499329 true))

(declare-fun bs!1651019 () Bool)

(declare-fun b!6499332 () Bool)

(assert (= bs!1651019 (and b!6499332 b!6498918)))

(declare-fun lambda!360127 () Int)

(assert (=> bs!1651019 (not (= lambda!360127 lambda!360101))))

(declare-fun bs!1651020 () Bool)

(assert (= bs!1651020 (and b!6499332 b!6498921)))

(assert (=> bs!1651020 (= (and (= (regOne!33262 (regTwo!33263 r!7292)) (regOne!33262 (regOne!33263 lt!2391008))) (= (regTwo!33262 (regTwo!33263 r!7292)) (regTwo!33262 (regOne!33263 lt!2391008)))) (= lambda!360127 lambda!360102))))

(declare-fun bs!1651021 () Bool)

(assert (= bs!1651021 (and b!6499332 b!6497365)))

(assert (=> bs!1651021 (not (= lambda!360127 lambda!359988))))

(declare-fun bs!1651022 () Bool)

(assert (= bs!1651022 (and b!6499332 b!6499040)))

(assert (=> bs!1651022 (not (= lambda!360127 lambda!360111))))

(declare-fun bs!1651023 () Bool)

(assert (= bs!1651023 (and b!6499332 b!6499043)))

(assert (=> bs!1651023 (= (and (= (regOne!33262 (regTwo!33263 r!7292)) (regOne!33262 (regTwo!33263 lt!2391008))) (= (regTwo!33262 (regTwo!33263 r!7292)) (regTwo!33262 (regTwo!33263 lt!2391008)))) (= lambda!360127 lambda!360112))))

(declare-fun bs!1651024 () Bool)

(assert (= bs!1651024 (and b!6499332 b!6498018)))

(assert (=> bs!1651024 (not (= lambda!360127 lambda!360034))))

(declare-fun bs!1651025 () Bool)

(assert (= bs!1651025 (and b!6499332 d!2038973)))

(assert (=> bs!1651025 (not (= lambda!360127 lambda!360046))))

(declare-fun bs!1651026 () Bool)

(assert (= bs!1651026 (and b!6499332 b!6499285)))

(assert (=> bs!1651026 (not (= lambda!360127 lambda!360121))))

(declare-fun bs!1651027 () Bool)

(assert (= bs!1651027 (and b!6499332 d!2038971)))

(assert (=> bs!1651027 (not (= lambda!360127 lambda!360041))))

(declare-fun bs!1651028 () Bool)

(assert (= bs!1651028 (and b!6499332 d!2039347)))

(assert (=> bs!1651028 (not (= lambda!360127 lambda!360108))))

(assert (=> bs!1651028 (= (and (= (regOne!33262 (regTwo!33263 r!7292)) (regOne!33262 r!7292)) (= (regTwo!33262 (regTwo!33263 r!7292)) (regTwo!33262 r!7292))) (= lambda!360127 lambda!360109))))

(declare-fun bs!1651029 () Bool)

(assert (= bs!1651029 (and b!6499332 b!6498010)))

(assert (=> bs!1651029 (= (and (= (regOne!33262 (regTwo!33263 r!7292)) (regOne!33262 lt!2391008)) (= (regTwo!33262 (regTwo!33263 r!7292)) (regTwo!33262 lt!2391008))) (= lambda!360127 lambda!360033))))

(declare-fun bs!1651030 () Bool)

(assert (= bs!1651030 (and b!6499332 b!6499288)))

(assert (=> bs!1651030 (= (and (= (regOne!33262 (regTwo!33263 r!7292)) (regOne!33262 (regOne!33263 r!7292))) (= (regTwo!33262 (regTwo!33263 r!7292)) (regTwo!33262 (regOne!33263 r!7292)))) (= lambda!360127 lambda!360122))))

(assert (=> bs!1651025 (= (and (= (regOne!33262 (regTwo!33263 r!7292)) (regOne!33262 r!7292)) (= (regTwo!33262 (regTwo!33263 r!7292)) (regTwo!33262 r!7292))) (= lambda!360127 lambda!360047))))

(declare-fun bs!1651031 () Bool)

(assert (= bs!1651031 (and b!6499332 b!6498021)))

(assert (=> bs!1651031 (= (and (= (regOne!33262 (regTwo!33263 r!7292)) (regOne!33262 r!7292)) (= (regTwo!33262 (regTwo!33263 r!7292)) (regTwo!33262 r!7292))) (= lambda!360127 lambda!360035))))

(assert (=> bs!1651021 (= (and (= (regOne!33262 (regTwo!33263 r!7292)) (regOne!33262 r!7292)) (= (regTwo!33262 (regTwo!33263 r!7292)) (regTwo!33262 r!7292))) (= lambda!360127 lambda!359989))))

(declare-fun bs!1651032 () Bool)

(assert (= bs!1651032 (and b!6499332 b!6499329)))

(assert (=> bs!1651032 (not (= lambda!360127 lambda!360126))))

(declare-fun bs!1651033 () Bool)

(assert (= bs!1651033 (and b!6499332 b!6498007)))

(assert (=> bs!1651033 (not (= lambda!360127 lambda!360032))))

(assert (=> b!6499332 true))

(assert (=> b!6499332 true))

(declare-fun b!6499324 () Bool)

(declare-fun e!3938390 () Bool)

(declare-fun call!563153 () Bool)

(assert (=> b!6499324 (= e!3938390 call!563153)))

(declare-fun d!2039479 () Bool)

(declare-fun c!1191600 () Bool)

(assert (=> d!2039479 (= c!1191600 ((_ is EmptyExpr!16375) (regTwo!33263 r!7292)))))

(assert (=> d!2039479 (= (matchRSpec!3476 (regTwo!33263 r!7292) s!2326) e!3938390)))

(declare-fun b!6499325 () Bool)

(declare-fun e!3938387 () Bool)

(assert (=> b!6499325 (= e!3938387 (= s!2326 (Cons!65302 (c!1191063 (regTwo!33263 r!7292)) Nil!65302)))))

(declare-fun b!6499326 () Bool)

(declare-fun res!2669089 () Bool)

(declare-fun e!3938385 () Bool)

(assert (=> b!6499326 (=> res!2669089 e!3938385)))

(assert (=> b!6499326 (= res!2669089 call!563153)))

(declare-fun e!3938384 () Bool)

(assert (=> b!6499326 (= e!3938384 e!3938385)))

(declare-fun b!6499327 () Bool)

(declare-fun c!1191597 () Bool)

(assert (=> b!6499327 (= c!1191597 ((_ is ElementMatch!16375) (regTwo!33263 r!7292)))))

(declare-fun e!3938388 () Bool)

(assert (=> b!6499327 (= e!3938388 e!3938387)))

(declare-fun b!6499328 () Bool)

(declare-fun e!3938386 () Bool)

(declare-fun e!3938389 () Bool)

(assert (=> b!6499328 (= e!3938386 e!3938389)))

(declare-fun res!2669090 () Bool)

(assert (=> b!6499328 (= res!2669090 (matchRSpec!3476 (regOne!33263 (regTwo!33263 r!7292)) s!2326))))

(assert (=> b!6499328 (=> res!2669090 e!3938389)))

(declare-fun call!563152 () Bool)

(assert (=> b!6499329 (= e!3938385 call!563152)))

(declare-fun bm!563147 () Bool)

(declare-fun c!1191599 () Bool)

(assert (=> bm!563147 (= call!563152 (Exists!3445 (ite c!1191599 lambda!360126 lambda!360127)))))

(declare-fun b!6499330 () Bool)

(declare-fun c!1191598 () Bool)

(assert (=> b!6499330 (= c!1191598 ((_ is Union!16375) (regTwo!33263 r!7292)))))

(assert (=> b!6499330 (= e!3938387 e!3938386)))

(declare-fun b!6499331 () Bool)

(assert (=> b!6499331 (= e!3938389 (matchRSpec!3476 (regTwo!33263 (regTwo!33263 r!7292)) s!2326))))

(declare-fun bm!563148 () Bool)

(assert (=> bm!563148 (= call!563153 (isEmpty!37501 s!2326))))

(assert (=> b!6499332 (= e!3938384 call!563152)))

(declare-fun b!6499333 () Bool)

(assert (=> b!6499333 (= e!3938390 e!3938388)))

(declare-fun res!2669091 () Bool)

(assert (=> b!6499333 (= res!2669091 (not ((_ is EmptyLang!16375) (regTwo!33263 r!7292))))))

(assert (=> b!6499333 (=> (not res!2669091) (not e!3938388))))

(declare-fun b!6499334 () Bool)

(assert (=> b!6499334 (= e!3938386 e!3938384)))

(assert (=> b!6499334 (= c!1191599 ((_ is Star!16375) (regTwo!33263 r!7292)))))

(assert (= (and d!2039479 c!1191600) b!6499324))

(assert (= (and d!2039479 (not c!1191600)) b!6499333))

(assert (= (and b!6499333 res!2669091) b!6499327))

(assert (= (and b!6499327 c!1191597) b!6499325))

(assert (= (and b!6499327 (not c!1191597)) b!6499330))

(assert (= (and b!6499330 c!1191598) b!6499328))

(assert (= (and b!6499330 (not c!1191598)) b!6499334))

(assert (= (and b!6499328 (not res!2669090)) b!6499331))

(assert (= (and b!6499334 c!1191599) b!6499326))

(assert (= (and b!6499334 (not c!1191599)) b!6499332))

(assert (= (and b!6499326 (not res!2669089)) b!6499329))

(assert (= (or b!6499329 b!6499332) bm!563147))

(assert (= (or b!6499324 b!6499326) bm!563148))

(declare-fun m!7287502 () Bool)

(assert (=> b!6499328 m!7287502))

(declare-fun m!7287504 () Bool)

(assert (=> bm!563147 m!7287504))

(declare-fun m!7287506 () Bool)

(assert (=> b!6499331 m!7287506))

(assert (=> bm!563148 m!7286224))

(assert (=> b!6498020 d!2039479))

(declare-fun d!2039481 () Bool)

(declare-fun c!1191601 () Bool)

(assert (=> d!2039481 (= c!1191601 (isEmpty!37501 (tail!12306 s!2326)))))

(declare-fun e!3938391 () Bool)

(assert (=> d!2039481 (= (matchZipper!2387 (derivationStepZipper!2341 lt!2391014 (head!13221 s!2326)) (tail!12306 s!2326)) e!3938391)))

(declare-fun b!6499335 () Bool)

(assert (=> b!6499335 (= e!3938391 (nullableZipper!2130 (derivationStepZipper!2341 lt!2391014 (head!13221 s!2326))))))

(declare-fun b!6499336 () Bool)

(assert (=> b!6499336 (= e!3938391 (matchZipper!2387 (derivationStepZipper!2341 (derivationStepZipper!2341 lt!2391014 (head!13221 s!2326)) (head!13221 (tail!12306 s!2326))) (tail!12306 (tail!12306 s!2326))))))

(assert (= (and d!2039481 c!1191601) b!6499335))

(assert (= (and d!2039481 (not c!1191601)) b!6499336))

(assert (=> d!2039481 m!7286232))

(assert (=> d!2039481 m!7286236))

(assert (=> b!6499335 m!7286320))

(declare-fun m!7287508 () Bool)

(assert (=> b!6499335 m!7287508))

(assert (=> b!6499336 m!7286232))

(assert (=> b!6499336 m!7287252))

(assert (=> b!6499336 m!7286320))

(assert (=> b!6499336 m!7287252))

(declare-fun m!7287510 () Bool)

(assert (=> b!6499336 m!7287510))

(assert (=> b!6499336 m!7286232))

(assert (=> b!6499336 m!7287256))

(assert (=> b!6499336 m!7287510))

(assert (=> b!6499336 m!7287256))

(declare-fun m!7287512 () Bool)

(assert (=> b!6499336 m!7287512))

(assert (=> b!6498085 d!2039481))

(declare-fun bs!1651034 () Bool)

(declare-fun d!2039483 () Bool)

(assert (= bs!1651034 (and d!2039483 d!2039365)))

(declare-fun lambda!360128 () Int)

(assert (=> bs!1651034 (= (= (head!13221 s!2326) (head!13221 (t!379058 s!2326))) (= lambda!360128 lambda!360110))))

(declare-fun bs!1651035 () Bool)

(assert (= bs!1651035 (and d!2039483 b!6497395)))

(assert (=> bs!1651035 (= (= (head!13221 s!2326) (h!71750 s!2326)) (= lambda!360128 lambda!359990))))

(declare-fun bs!1651036 () Bool)

(assert (= bs!1651036 (and d!2039483 d!2039429)))

(assert (=> bs!1651036 (= (= (head!13221 s!2326) (head!13221 (t!379058 s!2326))) (= lambda!360128 lambda!360116))))

(declare-fun bs!1651037 () Bool)

(assert (= bs!1651037 (and d!2039483 d!2038991)))

(assert (=> bs!1651037 (= (= (head!13221 s!2326) (h!71750 s!2326)) (= lambda!360128 lambda!360050))))

(declare-fun bs!1651038 () Bool)

(assert (= bs!1651038 (and d!2039483 d!2039327)))

(assert (=> bs!1651038 (= (= (head!13221 s!2326) (head!13221 (t!379058 s!2326))) (= lambda!360128 lambda!360103))))

(assert (=> d!2039483 true))

(assert (=> d!2039483 (= (derivationStepZipper!2341 lt!2391014 (head!13221 s!2326)) (flatMap!1880 lt!2391014 lambda!360128))))

(declare-fun bs!1651039 () Bool)

(assert (= bs!1651039 d!2039483))

(declare-fun m!7287514 () Bool)

(assert (=> bs!1651039 m!7287514))

(assert (=> b!6498085 d!2039483))

(assert (=> b!6498085 d!2039381))

(assert (=> b!6498085 d!2039383))

(declare-fun bs!1651040 () Bool)

(declare-fun d!2039485 () Bool)

(assert (= bs!1651040 (and d!2039485 d!2039371)))

(declare-fun lambda!360129 () Int)

(assert (=> bs!1651040 (= lambda!360129 lambda!360115)))

(declare-fun bs!1651041 () Bool)

(assert (= bs!1651041 (and d!2039485 d!2039435)))

(assert (=> bs!1651041 (= lambda!360129 lambda!360117)))

(declare-fun bs!1651042 () Bool)

(assert (= bs!1651042 (and d!2039485 d!2039461)))

(assert (=> bs!1651042 (= lambda!360129 lambda!360120)))

(assert (=> d!2039485 (= (nullableZipper!2130 ((_ map or) lt!2391025 lt!2391017)) (exists!2623 ((_ map or) lt!2391025 lt!2391017) lambda!360129))))

(declare-fun bs!1651043 () Bool)

(assert (= bs!1651043 d!2039485))

(declare-fun m!7287516 () Bool)

(assert (=> bs!1651043 m!7287516))

(assert (=> b!6498041 d!2039485))

(declare-fun b!6499337 () Bool)

(declare-fun e!3938392 () (InoxSet Context!11518))

(assert (=> b!6499337 (= e!3938392 ((as const (Array Context!11518 Bool)) false))))

(declare-fun c!1191603 () Bool)

(declare-fun c!1191602 () Bool)

(declare-fun call!563158 () (InoxSet Context!11518))

(declare-fun call!563154 () List!65424)

(declare-fun c!1191604 () Bool)

(declare-fun bm!563149 () Bool)

(assert (=> bm!563149 (= call!563158 (derivationStepZipperDown!1623 (ite c!1191603 (regOne!33263 (ite c!1191267 (regTwo!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))))) (ite c!1191604 (regTwo!33262 (ite c!1191267 (regTwo!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))))) (ite c!1191602 (regOne!33262 (ite c!1191267 (regTwo!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))))) (reg!16704 (ite c!1191267 (regTwo!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343))))))))) (ite (or c!1191603 c!1191604) (ite c!1191267 lt!2391021 (Context!11519 call!562915)) (Context!11519 call!563154)) (h!71750 s!2326)))))

(declare-fun b!6499338 () Bool)

(declare-fun e!3938397 () (InoxSet Context!11518))

(declare-fun e!3938395 () (InoxSet Context!11518))

(assert (=> b!6499338 (= e!3938397 e!3938395)))

(assert (=> b!6499338 (= c!1191603 ((_ is Union!16375) (ite c!1191267 (regTwo!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))))))))

(declare-fun bm!563150 () Bool)

(declare-fun call!563155 () List!65424)

(assert (=> bm!563150 (= call!563154 call!563155)))

(declare-fun c!1191605 () Bool)

(declare-fun d!2039487 () Bool)

(assert (=> d!2039487 (= c!1191605 (and ((_ is ElementMatch!16375) (ite c!1191267 (regTwo!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))))) (= (c!1191063 (ite c!1191267 (regTwo!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))))) (h!71750 s!2326))))))

(assert (=> d!2039487 (= (derivationStepZipperDown!1623 (ite c!1191267 (regTwo!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343))))) (ite c!1191267 lt!2391021 (Context!11519 call!562915)) (h!71750 s!2326)) e!3938397)))

(declare-fun b!6499339 () Bool)

(declare-fun call!563159 () (InoxSet Context!11518))

(assert (=> b!6499339 (= e!3938395 ((_ map or) call!563158 call!563159))))

(declare-fun bm!563151 () Bool)

(assert (=> bm!563151 (= call!563155 ($colon$colon!2226 (exprs!6259 (ite c!1191267 lt!2391021 (Context!11519 call!562915))) (ite (or c!1191604 c!1191602) (regTwo!33262 (ite c!1191267 (regTwo!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))))) (ite c!1191267 (regTwo!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343))))))))))

(declare-fun b!6499340 () Bool)

(declare-fun e!3938396 () Bool)

(assert (=> b!6499340 (= c!1191604 e!3938396)))

(declare-fun res!2669092 () Bool)

(assert (=> b!6499340 (=> (not res!2669092) (not e!3938396))))

(assert (=> b!6499340 (= res!2669092 ((_ is Concat!25220) (ite c!1191267 (regTwo!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))))))))

(declare-fun e!3938393 () (InoxSet Context!11518))

(assert (=> b!6499340 (= e!3938395 e!3938393)))

(declare-fun b!6499341 () Bool)

(declare-fun e!3938394 () (InoxSet Context!11518))

(assert (=> b!6499341 (= e!3938393 e!3938394)))

(assert (=> b!6499341 (= c!1191602 ((_ is Concat!25220) (ite c!1191267 (regTwo!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))))))))

(declare-fun b!6499342 () Bool)

(declare-fun call!563156 () (InoxSet Context!11518))

(assert (=> b!6499342 (= e!3938394 call!563156)))

(declare-fun b!6499343 () Bool)

(assert (=> b!6499343 (= e!3938396 (nullable!6368 (regOne!33262 (ite c!1191267 (regTwo!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343))))))))))

(declare-fun b!6499344 () Bool)

(declare-fun call!563157 () (InoxSet Context!11518))

(assert (=> b!6499344 (= e!3938393 ((_ map or) call!563159 call!563157))))

(declare-fun bm!563152 () Bool)

(assert (=> bm!563152 (= call!563159 (derivationStepZipperDown!1623 (ite c!1191603 (regTwo!33263 (ite c!1191267 (regTwo!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))))) (regOne!33262 (ite c!1191267 (regTwo!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343))))))) (ite c!1191603 (ite c!1191267 lt!2391021 (Context!11519 call!562915)) (Context!11519 call!563155)) (h!71750 s!2326)))))

(declare-fun b!6499345 () Bool)

(assert (=> b!6499345 (= e!3938397 (store ((as const (Array Context!11518 Bool)) false) (ite c!1191267 lt!2391021 (Context!11519 call!562915)) true))))

(declare-fun bm!563153 () Bool)

(assert (=> bm!563153 (= call!563156 call!563157)))

(declare-fun b!6499346 () Bool)

(declare-fun c!1191606 () Bool)

(assert (=> b!6499346 (= c!1191606 ((_ is Star!16375) (ite c!1191267 (regTwo!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))))))))

(assert (=> b!6499346 (= e!3938394 e!3938392)))

(declare-fun b!6499347 () Bool)

(assert (=> b!6499347 (= e!3938392 call!563156)))

(declare-fun bm!563154 () Bool)

(assert (=> bm!563154 (= call!563157 call!563158)))

(assert (= (and d!2039487 c!1191605) b!6499345))

(assert (= (and d!2039487 (not c!1191605)) b!6499338))

(assert (= (and b!6499338 c!1191603) b!6499339))

(assert (= (and b!6499338 (not c!1191603)) b!6499340))

(assert (= (and b!6499340 res!2669092) b!6499343))

(assert (= (and b!6499340 c!1191604) b!6499344))

(assert (= (and b!6499340 (not c!1191604)) b!6499341))

(assert (= (and b!6499341 c!1191602) b!6499342))

(assert (= (and b!6499341 (not c!1191602)) b!6499346))

(assert (= (and b!6499346 c!1191606) b!6499347))

(assert (= (and b!6499346 (not c!1191606)) b!6499337))

(assert (= (or b!6499342 b!6499347) bm!563150))

(assert (= (or b!6499342 b!6499347) bm!563153))

(assert (= (or b!6499344 bm!563150) bm!563151))

(assert (= (or b!6499344 bm!563153) bm!563154))

(assert (= (or b!6499339 b!6499344) bm!563152))

(assert (= (or b!6499339 bm!563154) bm!563149))

(declare-fun m!7287518 () Bool)

(assert (=> bm!563152 m!7287518))

(declare-fun m!7287520 () Bool)

(assert (=> b!6499343 m!7287520))

(declare-fun m!7287522 () Bool)

(assert (=> bm!563149 m!7287522))

(declare-fun m!7287524 () Bool)

(assert (=> b!6499345 m!7287524))

(declare-fun m!7287526 () Bool)

(assert (=> bm!563151 m!7287526))

(assert (=> bm!562912 d!2039487))

(declare-fun bs!1651044 () Bool)

(declare-fun d!2039489 () Bool)

(assert (= bs!1651044 (and d!2039489 d!2038959)))

(declare-fun lambda!360130 () Int)

(assert (=> bs!1651044 (= lambda!360130 lambda!360038)))

(declare-fun bs!1651045 () Bool)

(assert (= bs!1651045 (and d!2039489 d!2039015)))

(assert (=> bs!1651045 (= lambda!360130 lambda!360055)))

(declare-fun bs!1651046 () Bool)

(assert (= bs!1651046 (and d!2039489 d!2039455)))

(assert (=> bs!1651046 (= lambda!360130 lambda!360119)))

(declare-fun bs!1651047 () Bool)

(assert (= bs!1651047 (and d!2039489 d!2039013)))

(assert (=> bs!1651047 (= lambda!360130 lambda!360052)))

(declare-fun bs!1651048 () Bool)

(assert (= bs!1651048 (and d!2039489 d!2038993)))

(assert (=> bs!1651048 (= lambda!360130 lambda!360051)))

(declare-fun bs!1651049 () Bool)

(assert (= bs!1651049 (and d!2039489 d!2039471)))

(assert (=> bs!1651049 (= lambda!360130 lambda!360123)))

(declare-fun bs!1651050 () Bool)

(assert (= bs!1651050 (and d!2039489 d!2038941)))

(assert (=> bs!1651050 (= lambda!360130 lambda!360027)))

(declare-fun bs!1651051 () Bool)

(assert (= bs!1651051 (and d!2039489 d!2039473)))

(assert (=> bs!1651051 (= lambda!360130 lambda!360124)))

(declare-fun bs!1651052 () Bool)

(assert (= bs!1651052 (and d!2039489 d!2039437)))

(assert (=> bs!1651052 (= lambda!360130 lambda!360118)))

(declare-fun bs!1651053 () Bool)

(assert (= bs!1651053 (and d!2039489 d!2039477)))

(assert (=> bs!1651053 (= lambda!360130 lambda!360125)))

(declare-fun bs!1651054 () Bool)

(assert (= bs!1651054 (and d!2039489 d!2039017)))

(assert (=> bs!1651054 (= lambda!360130 lambda!360058)))

(declare-fun b!6499348 () Bool)

(declare-fun e!3938402 () Regex!16375)

(declare-fun e!3938398 () Regex!16375)

(assert (=> b!6499348 (= e!3938402 e!3938398)))

(declare-fun c!1191609 () Bool)

(assert (=> b!6499348 (= c!1191609 ((_ is Cons!65300) (t!379056 (exprs!6259 (h!71749 zl!343)))))))

(declare-fun b!6499349 () Bool)

(declare-fun e!3938401 () Bool)

(declare-fun lt!2391186 () Regex!16375)

(assert (=> b!6499349 (= e!3938401 (isConcat!1288 lt!2391186))))

(declare-fun b!6499350 () Bool)

(assert (=> b!6499350 (= e!3938398 (Concat!25220 (h!71748 (t!379056 (exprs!6259 (h!71749 zl!343)))) (generalisedConcat!1972 (t!379056 (t!379056 (exprs!6259 (h!71749 zl!343)))))))))

(declare-fun e!3938399 () Bool)

(assert (=> d!2039489 e!3938399))

(declare-fun res!2669093 () Bool)

(assert (=> d!2039489 (=> (not res!2669093) (not e!3938399))))

(assert (=> d!2039489 (= res!2669093 (validRegex!8111 lt!2391186))))

(assert (=> d!2039489 (= lt!2391186 e!3938402)))

(declare-fun c!1191610 () Bool)

(declare-fun e!3938400 () Bool)

(assert (=> d!2039489 (= c!1191610 e!3938400)))

(declare-fun res!2669094 () Bool)

(assert (=> d!2039489 (=> (not res!2669094) (not e!3938400))))

(assert (=> d!2039489 (= res!2669094 ((_ is Cons!65300) (t!379056 (exprs!6259 (h!71749 zl!343)))))))

(assert (=> d!2039489 (forall!15556 (t!379056 (exprs!6259 (h!71749 zl!343))) lambda!360130)))

(assert (=> d!2039489 (= (generalisedConcat!1972 (t!379056 (exprs!6259 (h!71749 zl!343)))) lt!2391186)))

(declare-fun b!6499351 () Bool)

(assert (=> b!6499351 (= e!3938401 (= lt!2391186 (head!13222 (t!379056 (exprs!6259 (h!71749 zl!343))))))))

(declare-fun b!6499352 () Bool)

(assert (=> b!6499352 (= e!3938398 EmptyExpr!16375)))

(declare-fun b!6499353 () Bool)

(assert (=> b!6499353 (= e!3938400 (isEmpty!37497 (t!379056 (t!379056 (exprs!6259 (h!71749 zl!343))))))))

(declare-fun b!6499354 () Bool)

(declare-fun e!3938403 () Bool)

(assert (=> b!6499354 (= e!3938399 e!3938403)))

(declare-fun c!1191608 () Bool)

(assert (=> b!6499354 (= c!1191608 (isEmpty!37497 (t!379056 (exprs!6259 (h!71749 zl!343)))))))

(declare-fun b!6499355 () Bool)

(assert (=> b!6499355 (= e!3938403 (isEmptyExpr!1765 lt!2391186))))

(declare-fun b!6499356 () Bool)

(assert (=> b!6499356 (= e!3938402 (h!71748 (t!379056 (exprs!6259 (h!71749 zl!343)))))))

(declare-fun b!6499357 () Bool)

(assert (=> b!6499357 (= e!3938403 e!3938401)))

(declare-fun c!1191607 () Bool)

(assert (=> b!6499357 (= c!1191607 (isEmpty!37497 (tail!12307 (t!379056 (exprs!6259 (h!71749 zl!343))))))))

(assert (= (and d!2039489 res!2669094) b!6499353))

(assert (= (and d!2039489 c!1191610) b!6499356))

(assert (= (and d!2039489 (not c!1191610)) b!6499348))

(assert (= (and b!6499348 c!1191609) b!6499350))

(assert (= (and b!6499348 (not c!1191609)) b!6499352))

(assert (= (and d!2039489 res!2669093) b!6499354))

(assert (= (and b!6499354 c!1191608) b!6499355))

(assert (= (and b!6499354 (not c!1191608)) b!6499357))

(assert (= (and b!6499357 c!1191607) b!6499351))

(assert (= (and b!6499357 (not c!1191607)) b!6499349))

(declare-fun m!7287528 () Bool)

(assert (=> b!6499350 m!7287528))

(declare-fun m!7287530 () Bool)

(assert (=> b!6499355 m!7287530))

(declare-fun m!7287532 () Bool)

(assert (=> b!6499351 m!7287532))

(declare-fun m!7287534 () Bool)

(assert (=> d!2039489 m!7287534))

(declare-fun m!7287536 () Bool)

(assert (=> d!2039489 m!7287536))

(assert (=> b!6499354 m!7285764))

(declare-fun m!7287538 () Bool)

(assert (=> b!6499349 m!7287538))

(declare-fun m!7287540 () Bool)

(assert (=> b!6499357 m!7287540))

(assert (=> b!6499357 m!7287540))

(declare-fun m!7287542 () Bool)

(assert (=> b!6499357 m!7287542))

(declare-fun m!7287544 () Bool)

(assert (=> b!6499353 m!7287544))

(assert (=> b!6497918 d!2039489))

(declare-fun d!2039491 () Bool)

(assert (=> d!2039491 (= (isEmpty!37497 (exprs!6259 (h!71749 zl!343))) ((_ is Nil!65300) (exprs!6259 (h!71749 zl!343))))))

(assert (=> b!6497922 d!2039491))

(declare-fun d!2039493 () Bool)

(assert (=> d!2039493 (= (Exists!3445 (ite c!1191241 lambda!360032 lambda!360033)) (choose!48233 (ite c!1191241 lambda!360032 lambda!360033)))))

(declare-fun bs!1651055 () Bool)

(assert (= bs!1651055 d!2039493))

(declare-fun m!7287546 () Bool)

(assert (=> bs!1651055 m!7287546))

(assert (=> bm!562902 d!2039493))

(assert (=> d!2038947 d!2039413))

(assert (=> d!2038947 d!2039323))

(declare-fun b!6499358 () Bool)

(declare-fun e!3938404 () (InoxSet Context!11518))

(assert (=> b!6499358 (= e!3938404 ((as const (Array Context!11518 Bool)) false))))

(declare-fun call!563164 () (InoxSet Context!11518))

(declare-fun c!1191612 () Bool)

(declare-fun c!1191613 () Bool)

(declare-fun bm!563155 () Bool)

(declare-fun c!1191611 () Bool)

(declare-fun call!563160 () List!65424)

(assert (=> bm!563155 (= call!563164 (derivationStepZipperDown!1623 (ite c!1191612 (regOne!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191613 (regTwo!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (ite c!1191611 (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (reg!16704 (h!71748 (exprs!6259 (h!71749 zl!343))))))) (ite (or c!1191612 c!1191613) (Context!11519 (t!379056 (exprs!6259 (h!71749 zl!343)))) (Context!11519 call!563160)) (h!71750 s!2326)))))

(declare-fun b!6499359 () Bool)

(declare-fun e!3938409 () (InoxSet Context!11518))

(declare-fun e!3938407 () (InoxSet Context!11518))

(assert (=> b!6499359 (= e!3938409 e!3938407)))

(assert (=> b!6499359 (= c!1191612 ((_ is Union!16375) (h!71748 (exprs!6259 (h!71749 zl!343)))))))

(declare-fun bm!563156 () Bool)

(declare-fun call!563161 () List!65424)

(assert (=> bm!563156 (= call!563160 call!563161)))

(declare-fun d!2039495 () Bool)

(declare-fun c!1191614 () Bool)

(assert (=> d!2039495 (= c!1191614 (and ((_ is ElementMatch!16375) (h!71748 (exprs!6259 (h!71749 zl!343)))) (= (c!1191063 (h!71748 (exprs!6259 (h!71749 zl!343)))) (h!71750 s!2326))))))

(assert (=> d!2039495 (= (derivationStepZipperDown!1623 (h!71748 (exprs!6259 (h!71749 zl!343))) (Context!11519 (t!379056 (exprs!6259 (h!71749 zl!343)))) (h!71750 s!2326)) e!3938409)))

(declare-fun b!6499360 () Bool)

(declare-fun call!563165 () (InoxSet Context!11518))

(assert (=> b!6499360 (= e!3938407 ((_ map or) call!563164 call!563165))))

(declare-fun bm!563157 () Bool)

(assert (=> bm!563157 (= call!563161 ($colon$colon!2226 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 (h!71749 zl!343))))) (ite (or c!1191613 c!1191611) (regTwo!33262 (h!71748 (exprs!6259 (h!71749 zl!343)))) (h!71748 (exprs!6259 (h!71749 zl!343))))))))

(declare-fun b!6499361 () Bool)

(declare-fun e!3938408 () Bool)

(assert (=> b!6499361 (= c!1191613 e!3938408)))

(declare-fun res!2669095 () Bool)

(assert (=> b!6499361 (=> (not res!2669095) (not e!3938408))))

(assert (=> b!6499361 (= res!2669095 ((_ is Concat!25220) (h!71748 (exprs!6259 (h!71749 zl!343)))))))

(declare-fun e!3938405 () (InoxSet Context!11518))

(assert (=> b!6499361 (= e!3938407 e!3938405)))

(declare-fun b!6499362 () Bool)

(declare-fun e!3938406 () (InoxSet Context!11518))

(assert (=> b!6499362 (= e!3938405 e!3938406)))

(assert (=> b!6499362 (= c!1191611 ((_ is Concat!25220) (h!71748 (exprs!6259 (h!71749 zl!343)))))))

(declare-fun b!6499363 () Bool)

(declare-fun call!563162 () (InoxSet Context!11518))

(assert (=> b!6499363 (= e!3938406 call!563162)))

(declare-fun b!6499364 () Bool)

(assert (=> b!6499364 (= e!3938408 (nullable!6368 (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343))))))))

(declare-fun b!6499365 () Bool)

(declare-fun call!563163 () (InoxSet Context!11518))

(assert (=> b!6499365 (= e!3938405 ((_ map or) call!563165 call!563163))))

(declare-fun bm!563158 () Bool)

(assert (=> bm!563158 (= call!563165 (derivationStepZipperDown!1623 (ite c!1191612 (regTwo!33263 (h!71748 (exprs!6259 (h!71749 zl!343)))) (regOne!33262 (h!71748 (exprs!6259 (h!71749 zl!343))))) (ite c!1191612 (Context!11519 (t!379056 (exprs!6259 (h!71749 zl!343)))) (Context!11519 call!563161)) (h!71750 s!2326)))))

(declare-fun b!6499366 () Bool)

(assert (=> b!6499366 (= e!3938409 (store ((as const (Array Context!11518 Bool)) false) (Context!11519 (t!379056 (exprs!6259 (h!71749 zl!343)))) true))))

(declare-fun bm!563159 () Bool)

(assert (=> bm!563159 (= call!563162 call!563163)))

(declare-fun b!6499367 () Bool)

(declare-fun c!1191615 () Bool)

(assert (=> b!6499367 (= c!1191615 ((_ is Star!16375) (h!71748 (exprs!6259 (h!71749 zl!343)))))))

(assert (=> b!6499367 (= e!3938406 e!3938404)))

(declare-fun b!6499368 () Bool)

(assert (=> b!6499368 (= e!3938404 call!563162)))

(declare-fun bm!563160 () Bool)

(assert (=> bm!563160 (= call!563163 call!563164)))

(assert (= (and d!2039495 c!1191614) b!6499366))

(assert (= (and d!2039495 (not c!1191614)) b!6499359))

(assert (= (and b!6499359 c!1191612) b!6499360))

(assert (= (and b!6499359 (not c!1191612)) b!6499361))

(assert (= (and b!6499361 res!2669095) b!6499364))

(assert (= (and b!6499361 c!1191613) b!6499365))

(assert (= (and b!6499361 (not c!1191613)) b!6499362))

(assert (= (and b!6499362 c!1191611) b!6499363))

(assert (= (and b!6499362 (not c!1191611)) b!6499367))

(assert (= (and b!6499367 c!1191615) b!6499368))

(assert (= (and b!6499367 (not c!1191615)) b!6499358))

(assert (= (or b!6499363 b!6499368) bm!563156))

(assert (= (or b!6499363 b!6499368) bm!563159))

(assert (= (or b!6499365 bm!563156) bm!563157))

(assert (= (or b!6499365 bm!563159) bm!563160))

(assert (= (or b!6499360 b!6499365) bm!563158))

(assert (= (or b!6499360 bm!563160) bm!563155))

(declare-fun m!7287548 () Bool)

(assert (=> bm!563158 m!7287548))

(assert (=> b!6499364 m!7286374))

(declare-fun m!7287550 () Bool)

(assert (=> bm!563155 m!7287550))

(declare-fun m!7287552 () Bool)

(assert (=> b!6499366 m!7287552))

(declare-fun m!7287554 () Bool)

(assert (=> bm!563157 m!7287554))

(assert (=> bm!562915 d!2039495))

(declare-fun bm!563161 () Bool)

(declare-fun call!563166 () (InoxSet Context!11518))

(assert (=> bm!563161 (= call!563166 (derivationStepZipperDown!1623 (h!71748 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 (h!71749 zl!343)))))) (Context!11519 (t!379056 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 (h!71749 zl!343))))))) (h!71750 s!2326)))))

(declare-fun b!6499369 () Bool)

(declare-fun e!3938411 () Bool)

(assert (=> b!6499369 (= e!3938411 (nullable!6368 (h!71748 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 (h!71749 zl!343))))))))))

(declare-fun b!6499370 () Bool)

(declare-fun e!3938410 () (InoxSet Context!11518))

(declare-fun e!3938412 () (InoxSet Context!11518))

(assert (=> b!6499370 (= e!3938410 e!3938412)))

(declare-fun c!1191617 () Bool)

(assert (=> b!6499370 (= c!1191617 ((_ is Cons!65300) (exprs!6259 (Context!11519 (t!379056 (exprs!6259 (h!71749 zl!343)))))))))

(declare-fun d!2039497 () Bool)

(declare-fun c!1191616 () Bool)

(assert (=> d!2039497 (= c!1191616 e!3938411)))

(declare-fun res!2669096 () Bool)

(assert (=> d!2039497 (=> (not res!2669096) (not e!3938411))))

(assert (=> d!2039497 (= res!2669096 ((_ is Cons!65300) (exprs!6259 (Context!11519 (t!379056 (exprs!6259 (h!71749 zl!343)))))))))

(assert (=> d!2039497 (= (derivationStepZipperUp!1549 (Context!11519 (t!379056 (exprs!6259 (h!71749 zl!343)))) (h!71750 s!2326)) e!3938410)))

(declare-fun b!6499371 () Bool)

(assert (=> b!6499371 (= e!3938412 call!563166)))

(declare-fun b!6499372 () Bool)

(assert (=> b!6499372 (= e!3938410 ((_ map or) call!563166 (derivationStepZipperUp!1549 (Context!11519 (t!379056 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 (h!71749 zl!343))))))) (h!71750 s!2326))))))

(declare-fun b!6499373 () Bool)

(assert (=> b!6499373 (= e!3938412 ((as const (Array Context!11518 Bool)) false))))

(assert (= (and d!2039497 res!2669096) b!6499369))

(assert (= (and d!2039497 c!1191616) b!6499372))

(assert (= (and d!2039497 (not c!1191616)) b!6499370))

(assert (= (and b!6499370 c!1191617) b!6499371))

(assert (= (and b!6499370 (not c!1191617)) b!6499373))

(assert (= (or b!6499372 b!6499371) bm!563161))

(declare-fun m!7287556 () Bool)

(assert (=> bm!563161 m!7287556))

(declare-fun m!7287558 () Bool)

(assert (=> b!6499369 m!7287558))

(declare-fun m!7287560 () Bool)

(assert (=> b!6499372 m!7287560))

(assert (=> b!6498117 d!2039497))

(declare-fun d!2039499 () Bool)

(assert (=> d!2039499 (= (isEmpty!37501 (tail!12306 s!2326)) ((_ is Nil!65302) (tail!12306 s!2326)))))

(assert (=> b!6498037 d!2039499))

(assert (=> b!6498037 d!2039383))

(assert (=> b!6497969 d!2039499))

(assert (=> b!6497969 d!2039383))

(declare-fun bm!563162 () Bool)

(declare-fun call!563167 () (InoxSet Context!11518))

(assert (=> bm!563162 (= call!563167 (derivationStepZipperDown!1623 (h!71748 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 lt!2391011))))) (Context!11519 (t!379056 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 lt!2391011)))))) (h!71750 s!2326)))))

(declare-fun b!6499374 () Bool)

(declare-fun e!3938414 () Bool)

(assert (=> b!6499374 (= e!3938414 (nullable!6368 (h!71748 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 lt!2391011)))))))))

(declare-fun b!6499375 () Bool)

(declare-fun e!3938413 () (InoxSet Context!11518))

(declare-fun e!3938415 () (InoxSet Context!11518))

(assert (=> b!6499375 (= e!3938413 e!3938415)))

(declare-fun c!1191619 () Bool)

(assert (=> b!6499375 (= c!1191619 ((_ is Cons!65300) (exprs!6259 (Context!11519 (t!379056 (exprs!6259 lt!2391011))))))))

(declare-fun d!2039501 () Bool)

(declare-fun c!1191618 () Bool)

(assert (=> d!2039501 (= c!1191618 e!3938414)))

(declare-fun res!2669097 () Bool)

(assert (=> d!2039501 (=> (not res!2669097) (not e!3938414))))

(assert (=> d!2039501 (= res!2669097 ((_ is Cons!65300) (exprs!6259 (Context!11519 (t!379056 (exprs!6259 lt!2391011))))))))

(assert (=> d!2039501 (= (derivationStepZipperUp!1549 (Context!11519 (t!379056 (exprs!6259 lt!2391011))) (h!71750 s!2326)) e!3938413)))

(declare-fun b!6499376 () Bool)

(assert (=> b!6499376 (= e!3938415 call!563167)))

(declare-fun b!6499377 () Bool)

(assert (=> b!6499377 (= e!3938413 ((_ map or) call!563167 (derivationStepZipperUp!1549 (Context!11519 (t!379056 (exprs!6259 (Context!11519 (t!379056 (exprs!6259 lt!2391011)))))) (h!71750 s!2326))))))

(declare-fun b!6499378 () Bool)

(assert (=> b!6499378 (= e!3938415 ((as const (Array Context!11518 Bool)) false))))

(assert (= (and d!2039501 res!2669097) b!6499374))

(assert (= (and d!2039501 c!1191618) b!6499377))

(assert (= (and d!2039501 (not c!1191618)) b!6499375))

(assert (= (and b!6499375 c!1191619) b!6499376))

(assert (= (and b!6499375 (not c!1191619)) b!6499378))

(assert (= (or b!6499377 b!6499376) bm!563162))

(declare-fun m!7287562 () Bool)

(assert (=> bm!563162 m!7287562))

(declare-fun m!7287564 () Bool)

(assert (=> b!6499374 m!7287564))

(declare-fun m!7287566 () Bool)

(assert (=> b!6499377 m!7287566))

(assert (=> b!6497861 d!2039501))

(declare-fun d!2039503 () Bool)

(assert (=> d!2039503 (= (nullable!6368 (reg!16704 r!7292)) (nullableFct!2304 (reg!16704 r!7292)))))

(declare-fun bs!1651056 () Bool)

(assert (= bs!1651056 d!2039503))

(declare-fun m!7287568 () Bool)

(assert (=> bs!1651056 m!7287568))

(assert (=> b!6497888 d!2039503))

(declare-fun d!2039505 () Bool)

(assert (=> d!2039505 (= (flatMap!1880 lt!2391014 lambda!360050) (choose!48229 lt!2391014 lambda!360050))))

(declare-fun bs!1651057 () Bool)

(assert (= bs!1651057 d!2039505))

(declare-fun m!7287570 () Bool)

(assert (=> bs!1651057 m!7287570))

(assert (=> d!2038991 d!2039505))

(declare-fun d!2039507 () Bool)

(assert (=> d!2039507 true))

(declare-fun setRes!44294 () Bool)

(assert (=> d!2039507 setRes!44294))

(declare-fun condSetEmpty!44294 () Bool)

(declare-fun res!2669098 () (InoxSet Context!11518))

(assert (=> d!2039507 (= condSetEmpty!44294 (= res!2669098 ((as const (Array Context!11518 Bool)) false)))))

(assert (=> d!2039507 (= (choose!48229 lt!2391022 lambda!359990) res!2669098)))

(declare-fun setIsEmpty!44294 () Bool)

(assert (=> setIsEmpty!44294 setRes!44294))

(declare-fun e!3938416 () Bool)

(declare-fun setElem!44294 () Context!11518)

(declare-fun setNonEmpty!44294 () Bool)

(declare-fun tp!1798067 () Bool)

(assert (=> setNonEmpty!44294 (= setRes!44294 (and tp!1798067 (inv!84184 setElem!44294) e!3938416))))

(declare-fun setRest!44294 () (InoxSet Context!11518))

(assert (=> setNonEmpty!44294 (= res!2669098 ((_ map or) (store ((as const (Array Context!11518 Bool)) false) setElem!44294 true) setRest!44294))))

(declare-fun b!6499379 () Bool)

(declare-fun tp!1798068 () Bool)

(assert (=> b!6499379 (= e!3938416 tp!1798068)))

(assert (= (and d!2039507 condSetEmpty!44294) setIsEmpty!44294))

(assert (= (and d!2039507 (not condSetEmpty!44294)) setNonEmpty!44294))

(assert (= setNonEmpty!44294 b!6499379))

(declare-fun m!7287572 () Bool)

(assert (=> setNonEmpty!44294 m!7287572))

(assert (=> d!2038929 d!2039507))

(declare-fun bs!1651058 () Bool)

(declare-fun d!2039509 () Bool)

(assert (= bs!1651058 (and d!2039509 d!2039371)))

(declare-fun lambda!360131 () Int)

(assert (=> bs!1651058 (= lambda!360131 lambda!360115)))

(declare-fun bs!1651059 () Bool)

(assert (= bs!1651059 (and d!2039509 d!2039435)))

(assert (=> bs!1651059 (= lambda!360131 lambda!360117)))

(declare-fun bs!1651060 () Bool)

(assert (= bs!1651060 (and d!2039509 d!2039461)))

(assert (=> bs!1651060 (= lambda!360131 lambda!360120)))

(declare-fun bs!1651061 () Bool)

(assert (= bs!1651061 (and d!2039509 d!2039485)))

(assert (=> bs!1651061 (= lambda!360131 lambda!360129)))

(assert (=> d!2039509 (= (nullableZipper!2130 lt!2391014) (exists!2623 lt!2391014 lambda!360131))))

(declare-fun bs!1651062 () Bool)

(assert (= bs!1651062 d!2039509))

(declare-fun m!7287574 () Bool)

(assert (=> bs!1651062 m!7287574))

(assert (=> b!6498084 d!2039509))

(assert (=> d!2038945 d!2039355))

(assert (=> bs!1650538 d!2039009))

(declare-fun d!2039511 () Bool)

(declare-fun c!1191620 () Bool)

(assert (=> d!2039511 (= c!1191620 (isEmpty!37501 (tail!12306 (t!379058 s!2326))))))

(declare-fun e!3938417 () Bool)

(assert (=> d!2039511 (= (matchZipper!2387 (derivationStepZipper!2341 lt!2391025 (head!13221 (t!379058 s!2326))) (tail!12306 (t!379058 s!2326))) e!3938417)))

(declare-fun b!6499380 () Bool)

(assert (=> b!6499380 (= e!3938417 (nullableZipper!2130 (derivationStepZipper!2341 lt!2391025 (head!13221 (t!379058 s!2326)))))))

(declare-fun b!6499381 () Bool)

(assert (=> b!6499381 (= e!3938417 (matchZipper!2387 (derivationStepZipper!2341 (derivationStepZipper!2341 lt!2391025 (head!13221 (t!379058 s!2326))) (head!13221 (tail!12306 (t!379058 s!2326)))) (tail!12306 (tail!12306 (t!379058 s!2326)))))))

(assert (= (and d!2039511 c!1191620) b!6499380))

(assert (= (and d!2039511 (not c!1191620)) b!6499381))

(assert (=> d!2039511 m!7286184))

(assert (=> d!2039511 m!7287106))

(assert (=> b!6499380 m!7286220))

(declare-fun m!7287576 () Bool)

(assert (=> b!6499380 m!7287576))

(assert (=> b!6499381 m!7286184))

(assert (=> b!6499381 m!7287110))

(assert (=> b!6499381 m!7286220))

(assert (=> b!6499381 m!7287110))

(declare-fun m!7287578 () Bool)

(assert (=> b!6499381 m!7287578))

(assert (=> b!6499381 m!7286184))

(assert (=> b!6499381 m!7287114))

(assert (=> b!6499381 m!7287578))

(assert (=> b!6499381 m!7287114))

(declare-fun m!7287580 () Bool)

(assert (=> b!6499381 m!7287580))

(assert (=> b!6497927 d!2039511))

(declare-fun bs!1651063 () Bool)

(declare-fun d!2039513 () Bool)

(assert (= bs!1651063 (and d!2039513 d!2039365)))

(declare-fun lambda!360132 () Int)

(assert (=> bs!1651063 (= lambda!360132 lambda!360110)))

(declare-fun bs!1651064 () Bool)

(assert (= bs!1651064 (and d!2039513 b!6497395)))

(assert (=> bs!1651064 (= (= (head!13221 (t!379058 s!2326)) (h!71750 s!2326)) (= lambda!360132 lambda!359990))))

(declare-fun bs!1651065 () Bool)

(assert (= bs!1651065 (and d!2039513 d!2039429)))

(assert (=> bs!1651065 (= lambda!360132 lambda!360116)))

(declare-fun bs!1651066 () Bool)

(assert (= bs!1651066 (and d!2039513 d!2039327)))

(assert (=> bs!1651066 (= lambda!360132 lambda!360103)))

(declare-fun bs!1651067 () Bool)

(assert (= bs!1651067 (and d!2039513 d!2039483)))

(assert (=> bs!1651067 (= (= (head!13221 (t!379058 s!2326)) (head!13221 s!2326)) (= lambda!360132 lambda!360128))))

(declare-fun bs!1651068 () Bool)

(assert (= bs!1651068 (and d!2039513 d!2038991)))

(assert (=> bs!1651068 (= (= (head!13221 (t!379058 s!2326)) (h!71750 s!2326)) (= lambda!360132 lambda!360050))))

(assert (=> d!2039513 true))

(assert (=> d!2039513 (= (derivationStepZipper!2341 lt!2391025 (head!13221 (t!379058 s!2326))) (flatMap!1880 lt!2391025 lambda!360132))))

(declare-fun bs!1651069 () Bool)

(assert (= bs!1651069 d!2039513))

(declare-fun m!7287582 () Bool)

(assert (=> bs!1651069 m!7287582))

(assert (=> b!6497927 d!2039513))

(assert (=> b!6497927 d!2039329))

(assert (=> b!6497927 d!2039331))

(assert (=> bs!1650539 d!2038925))

(declare-fun b!6499382 () Bool)

(declare-fun e!3938421 () Bool)

(declare-fun e!3938418 () Bool)

(assert (=> b!6499382 (= e!3938421 e!3938418)))

(declare-fun c!1191622 () Bool)

(assert (=> b!6499382 (= c!1191622 ((_ is Union!16375) lt!2391085))))

(declare-fun b!6499383 () Bool)

(declare-fun e!3938419 () Bool)

(assert (=> b!6499383 (= e!3938421 e!3938419)))

(declare-fun res!2669102 () Bool)

(assert (=> b!6499383 (= res!2669102 (not (nullable!6368 (reg!16704 lt!2391085))))))

(assert (=> b!6499383 (=> (not res!2669102) (not e!3938419))))

(declare-fun b!6499384 () Bool)

(declare-fun e!3938424 () Bool)

(declare-fun e!3938423 () Bool)

(assert (=> b!6499384 (= e!3938424 e!3938423)))

(declare-fun res!2669100 () Bool)

(assert (=> b!6499384 (=> (not res!2669100) (not e!3938423))))

(declare-fun call!563168 () Bool)

(assert (=> b!6499384 (= res!2669100 call!563168)))

(declare-fun b!6499385 () Bool)

(declare-fun res!2669101 () Bool)

(assert (=> b!6499385 (=> res!2669101 e!3938424)))

(assert (=> b!6499385 (= res!2669101 (not ((_ is Concat!25220) lt!2391085)))))

(assert (=> b!6499385 (= e!3938418 e!3938424)))

(declare-fun d!2039515 () Bool)

(declare-fun res!2669103 () Bool)

(declare-fun e!3938422 () Bool)

(assert (=> d!2039515 (=> res!2669103 e!3938422)))

(assert (=> d!2039515 (= res!2669103 ((_ is ElementMatch!16375) lt!2391085))))

(assert (=> d!2039515 (= (validRegex!8111 lt!2391085) e!3938422)))

(declare-fun c!1191621 () Bool)

(declare-fun bm!563163 () Bool)

(declare-fun call!563169 () Bool)

(assert (=> bm!563163 (= call!563169 (validRegex!8111 (ite c!1191621 (reg!16704 lt!2391085) (ite c!1191622 (regOne!33263 lt!2391085) (regOne!33262 lt!2391085)))))))

(declare-fun b!6499386 () Bool)

(assert (=> b!6499386 (= e!3938419 call!563169)))

(declare-fun b!6499387 () Bool)

(declare-fun e!3938420 () Bool)

(declare-fun call!563170 () Bool)

(assert (=> b!6499387 (= e!3938420 call!563170)))

(declare-fun b!6499388 () Bool)

(assert (=> b!6499388 (= e!3938423 call!563170)))

(declare-fun bm!563164 () Bool)

(assert (=> bm!563164 (= call!563170 (validRegex!8111 (ite c!1191622 (regTwo!33263 lt!2391085) (regTwo!33262 lt!2391085))))))

(declare-fun b!6499389 () Bool)

(declare-fun res!2669099 () Bool)

(assert (=> b!6499389 (=> (not res!2669099) (not e!3938420))))

(assert (=> b!6499389 (= res!2669099 call!563168)))

(assert (=> b!6499389 (= e!3938418 e!3938420)))

(declare-fun b!6499390 () Bool)

(assert (=> b!6499390 (= e!3938422 e!3938421)))

(assert (=> b!6499390 (= c!1191621 ((_ is Star!16375) lt!2391085))))

(declare-fun bm!563165 () Bool)

(assert (=> bm!563165 (= call!563168 call!563169)))

(assert (= (and d!2039515 (not res!2669103)) b!6499390))

(assert (= (and b!6499390 c!1191621) b!6499383))

(assert (= (and b!6499390 (not c!1191621)) b!6499382))

(assert (= (and b!6499383 res!2669102) b!6499386))

(assert (= (and b!6499382 c!1191622) b!6499389))

(assert (= (and b!6499382 (not c!1191622)) b!6499385))

(assert (= (and b!6499389 res!2669099) b!6499387))

(assert (= (and b!6499385 (not res!2669101)) b!6499384))

(assert (= (and b!6499384 res!2669100) b!6499388))

(assert (= (or b!6499387 b!6499388) bm!563164))

(assert (= (or b!6499389 b!6499384) bm!563165))

(assert (= (or b!6499386 bm!563165) bm!563163))

(declare-fun m!7287584 () Bool)

(assert (=> b!6499383 m!7287584))

(declare-fun m!7287586 () Bool)

(assert (=> bm!563163 m!7287586))

(declare-fun m!7287588 () Bool)

(assert (=> bm!563164 m!7287588))

(assert (=> d!2038919 d!2039515))

(declare-fun bs!1651070 () Bool)

(declare-fun d!2039517 () Bool)

(assert (= bs!1651070 (and d!2039517 d!2038959)))

(declare-fun lambda!360133 () Int)

(assert (=> bs!1651070 (= lambda!360133 lambda!360038)))

(declare-fun bs!1651071 () Bool)

(assert (= bs!1651071 (and d!2039517 d!2039015)))

(assert (=> bs!1651071 (= lambda!360133 lambda!360055)))

(declare-fun bs!1651072 () Bool)

(assert (= bs!1651072 (and d!2039517 d!2039455)))

(assert (=> bs!1651072 (= lambda!360133 lambda!360119)))

(declare-fun bs!1651073 () Bool)

(assert (= bs!1651073 (and d!2039517 d!2039013)))

(assert (=> bs!1651073 (= lambda!360133 lambda!360052)))

(declare-fun bs!1651074 () Bool)

(assert (= bs!1651074 (and d!2039517 d!2038993)))

(assert (=> bs!1651074 (= lambda!360133 lambda!360051)))

(declare-fun bs!1651075 () Bool)

(assert (= bs!1651075 (and d!2039517 d!2039471)))

(assert (=> bs!1651075 (= lambda!360133 lambda!360123)))

(declare-fun bs!1651076 () Bool)

(assert (= bs!1651076 (and d!2039517 d!2038941)))

(assert (=> bs!1651076 (= lambda!360133 lambda!360027)))

(declare-fun bs!1651077 () Bool)

(assert (= bs!1651077 (and d!2039517 d!2039473)))

(assert (=> bs!1651077 (= lambda!360133 lambda!360124)))

(declare-fun bs!1651078 () Bool)

(assert (= bs!1651078 (and d!2039517 d!2039437)))

(assert (=> bs!1651078 (= lambda!360133 lambda!360118)))

(declare-fun bs!1651079 () Bool)

(assert (= bs!1651079 (and d!2039517 d!2039489)))

(assert (=> bs!1651079 (= lambda!360133 lambda!360130)))

(declare-fun bs!1651080 () Bool)

(assert (= bs!1651080 (and d!2039517 d!2039477)))

(assert (=> bs!1651080 (= lambda!360133 lambda!360125)))

(declare-fun bs!1651081 () Bool)

(assert (= bs!1651081 (and d!2039517 d!2039017)))

(assert (=> bs!1651081 (= lambda!360133 lambda!360058)))

(declare-fun b!6499391 () Bool)

(declare-fun e!3938426 () Bool)

(declare-fun lt!2391187 () Regex!16375)

(assert (=> b!6499391 (= e!3938426 (isUnion!1203 lt!2391187))))

(declare-fun b!6499392 () Bool)

(declare-fun e!3938430 () Regex!16375)

(declare-fun e!3938428 () Regex!16375)

(assert (=> b!6499392 (= e!3938430 e!3938428)))

(declare-fun c!1191626 () Bool)

(assert (=> b!6499392 (= c!1191626 ((_ is Cons!65300) (unfocusZipperList!1796 (Cons!65301 lt!2391002 Nil!65301))))))

(declare-fun b!6499393 () Bool)

(assert (=> b!6499393 (= e!3938426 (= lt!2391187 (head!13222 (unfocusZipperList!1796 (Cons!65301 lt!2391002 Nil!65301)))))))

(declare-fun e!3938427 () Bool)

(assert (=> d!2039517 e!3938427))

(declare-fun res!2669104 () Bool)

(assert (=> d!2039517 (=> (not res!2669104) (not e!3938427))))

(assert (=> d!2039517 (= res!2669104 (validRegex!8111 lt!2391187))))

(assert (=> d!2039517 (= lt!2391187 e!3938430)))

(declare-fun c!1191625 () Bool)

(declare-fun e!3938429 () Bool)

(assert (=> d!2039517 (= c!1191625 e!3938429)))

(declare-fun res!2669105 () Bool)

(assert (=> d!2039517 (=> (not res!2669105) (not e!3938429))))

(assert (=> d!2039517 (= res!2669105 ((_ is Cons!65300) (unfocusZipperList!1796 (Cons!65301 lt!2391002 Nil!65301))))))

(assert (=> d!2039517 (forall!15556 (unfocusZipperList!1796 (Cons!65301 lt!2391002 Nil!65301)) lambda!360133)))

(assert (=> d!2039517 (= (generalisedUnion!2219 (unfocusZipperList!1796 (Cons!65301 lt!2391002 Nil!65301))) lt!2391187)))

(declare-fun b!6499394 () Bool)

(assert (=> b!6499394 (= e!3938428 EmptyLang!16375)))

(declare-fun b!6499395 () Bool)

(assert (=> b!6499395 (= e!3938429 (isEmpty!37497 (t!379056 (unfocusZipperList!1796 (Cons!65301 lt!2391002 Nil!65301)))))))

(declare-fun b!6499396 () Bool)

(declare-fun e!3938425 () Bool)

(assert (=> b!6499396 (= e!3938425 (isEmptyLang!1773 lt!2391187))))

(declare-fun b!6499397 () Bool)

(assert (=> b!6499397 (= e!3938430 (h!71748 (unfocusZipperList!1796 (Cons!65301 lt!2391002 Nil!65301))))))

(declare-fun b!6499398 () Bool)

(assert (=> b!6499398 (= e!3938428 (Union!16375 (h!71748 (unfocusZipperList!1796 (Cons!65301 lt!2391002 Nil!65301))) (generalisedUnion!2219 (t!379056 (unfocusZipperList!1796 (Cons!65301 lt!2391002 Nil!65301))))))))

(declare-fun b!6499399 () Bool)

(assert (=> b!6499399 (= e!3938427 e!3938425)))

(declare-fun c!1191624 () Bool)

(assert (=> b!6499399 (= c!1191624 (isEmpty!37497 (unfocusZipperList!1796 (Cons!65301 lt!2391002 Nil!65301))))))

(declare-fun b!6499400 () Bool)

(assert (=> b!6499400 (= e!3938425 e!3938426)))

(declare-fun c!1191623 () Bool)

(assert (=> b!6499400 (= c!1191623 (isEmpty!37497 (tail!12307 (unfocusZipperList!1796 (Cons!65301 lt!2391002 Nil!65301)))))))

(assert (= (and d!2039517 res!2669105) b!6499395))

(assert (= (and d!2039517 c!1191625) b!6499397))

(assert (= (and d!2039517 (not c!1191625)) b!6499392))

(assert (= (and b!6499392 c!1191626) b!6499398))

(assert (= (and b!6499392 (not c!1191626)) b!6499394))

(assert (= (and d!2039517 res!2669104) b!6499399))

(assert (= (and b!6499399 c!1191624) b!6499396))

(assert (= (and b!6499399 (not c!1191624)) b!6499400))

(assert (= (and b!6499400 c!1191623) b!6499393))

(assert (= (and b!6499400 (not c!1191623)) b!6499391))

(assert (=> b!6499400 m!7286148))

(declare-fun m!7287590 () Bool)

(assert (=> b!6499400 m!7287590))

(assert (=> b!6499400 m!7287590))

(declare-fun m!7287592 () Bool)

(assert (=> b!6499400 m!7287592))

(declare-fun m!7287594 () Bool)

(assert (=> b!6499396 m!7287594))

(assert (=> b!6499393 m!7286148))

(declare-fun m!7287596 () Bool)

(assert (=> b!6499393 m!7287596))

(declare-fun m!7287598 () Bool)

(assert (=> b!6499398 m!7287598))

(declare-fun m!7287600 () Bool)

(assert (=> b!6499395 m!7287600))

(declare-fun m!7287602 () Bool)

(assert (=> d!2039517 m!7287602))

(assert (=> d!2039517 m!7286148))

(declare-fun m!7287604 () Bool)

(assert (=> d!2039517 m!7287604))

(declare-fun m!7287606 () Bool)

(assert (=> b!6499391 m!7287606))

(assert (=> b!6499399 m!7286148))

(declare-fun m!7287608 () Bool)

(assert (=> b!6499399 m!7287608))

(assert (=> d!2038919 d!2039517))

(declare-fun bs!1651082 () Bool)

(declare-fun d!2039519 () Bool)

(assert (= bs!1651082 (and d!2039519 d!2038959)))

(declare-fun lambda!360134 () Int)

(assert (=> bs!1651082 (= lambda!360134 lambda!360038)))

(declare-fun bs!1651083 () Bool)

(assert (= bs!1651083 (and d!2039519 d!2039015)))

(assert (=> bs!1651083 (= lambda!360134 lambda!360055)))

(declare-fun bs!1651084 () Bool)

(assert (= bs!1651084 (and d!2039519 d!2039455)))

(assert (=> bs!1651084 (= lambda!360134 lambda!360119)))

(declare-fun bs!1651085 () Bool)

(assert (= bs!1651085 (and d!2039519 d!2038993)))

(assert (=> bs!1651085 (= lambda!360134 lambda!360051)))

(declare-fun bs!1651086 () Bool)

(assert (= bs!1651086 (and d!2039519 d!2039471)))

(assert (=> bs!1651086 (= lambda!360134 lambda!360123)))

(declare-fun bs!1651087 () Bool)

(assert (= bs!1651087 (and d!2039519 d!2038941)))

(assert (=> bs!1651087 (= lambda!360134 lambda!360027)))

(declare-fun bs!1651088 () Bool)

(assert (= bs!1651088 (and d!2039519 d!2039473)))

(assert (=> bs!1651088 (= lambda!360134 lambda!360124)))

(declare-fun bs!1651089 () Bool)

(assert (= bs!1651089 (and d!2039519 d!2039437)))

(assert (=> bs!1651089 (= lambda!360134 lambda!360118)))

(declare-fun bs!1651090 () Bool)

(assert (= bs!1651090 (and d!2039519 d!2039489)))

(assert (=> bs!1651090 (= lambda!360134 lambda!360130)))

(declare-fun bs!1651091 () Bool)

(assert (= bs!1651091 (and d!2039519 d!2039477)))

(assert (=> bs!1651091 (= lambda!360134 lambda!360125)))

(declare-fun bs!1651092 () Bool)

(assert (= bs!1651092 (and d!2039519 d!2039017)))

(assert (=> bs!1651092 (= lambda!360134 lambda!360058)))

(declare-fun bs!1651093 () Bool)

(assert (= bs!1651093 (and d!2039519 d!2039013)))

(assert (=> bs!1651093 (= lambda!360134 lambda!360052)))

(declare-fun bs!1651094 () Bool)

(assert (= bs!1651094 (and d!2039519 d!2039517)))

(assert (=> bs!1651094 (= lambda!360134 lambda!360133)))

(declare-fun lt!2391188 () List!65424)

(assert (=> d!2039519 (forall!15556 lt!2391188 lambda!360134)))

(declare-fun e!3938431 () List!65424)

(assert (=> d!2039519 (= lt!2391188 e!3938431)))

(declare-fun c!1191627 () Bool)

(assert (=> d!2039519 (= c!1191627 ((_ is Cons!65301) (Cons!65301 lt!2391002 Nil!65301)))))

(assert (=> d!2039519 (= (unfocusZipperList!1796 (Cons!65301 lt!2391002 Nil!65301)) lt!2391188)))

(declare-fun b!6499401 () Bool)

(assert (=> b!6499401 (= e!3938431 (Cons!65300 (generalisedConcat!1972 (exprs!6259 (h!71749 (Cons!65301 lt!2391002 Nil!65301)))) (unfocusZipperList!1796 (t!379057 (Cons!65301 lt!2391002 Nil!65301)))))))

(declare-fun b!6499402 () Bool)

(assert (=> b!6499402 (= e!3938431 Nil!65300)))

(assert (= (and d!2039519 c!1191627) b!6499401))

(assert (= (and d!2039519 (not c!1191627)) b!6499402))

(declare-fun m!7287610 () Bool)

(assert (=> d!2039519 m!7287610))

(declare-fun m!7287612 () Bool)

(assert (=> b!6499401 m!7287612))

(declare-fun m!7287614 () Bool)

(assert (=> b!6499401 m!7287614))

(assert (=> d!2038919 d!2039519))

(assert (=> bm!562906 d!2039413))

(assert (=> bm!562897 d!2039413))

(assert (=> d!2038971 d!2038965))

(assert (=> d!2038971 d!2039349))

(assert (=> d!2038971 d!2038975))

(declare-fun d!2039521 () Bool)

(assert (=> d!2039521 (= (Exists!3445 lambda!360041) (choose!48233 lambda!360041))))

(declare-fun bs!1651095 () Bool)

(assert (= bs!1651095 d!2039521))

(declare-fun m!7287616 () Bool)

(assert (=> bs!1651095 m!7287616))

(assert (=> d!2038971 d!2039521))

(declare-fun bs!1651096 () Bool)

(declare-fun d!2039523 () Bool)

(assert (= bs!1651096 (and d!2039523 b!6498918)))

(declare-fun lambda!360137 () Int)

(assert (=> bs!1651096 (not (= lambda!360137 lambda!360101))))

(declare-fun bs!1651097 () Bool)

(assert (= bs!1651097 (and d!2039523 b!6498921)))

(assert (=> bs!1651097 (not (= lambda!360137 lambda!360102))))

(declare-fun bs!1651098 () Bool)

(assert (= bs!1651098 (and d!2039523 b!6497365)))

(assert (=> bs!1651098 (= lambda!360137 lambda!359988)))

(declare-fun bs!1651099 () Bool)

(assert (= bs!1651099 (and d!2039523 b!6499040)))

(assert (=> bs!1651099 (not (= lambda!360137 lambda!360111))))

(declare-fun bs!1651100 () Bool)

(assert (= bs!1651100 (and d!2039523 b!6499043)))

(assert (=> bs!1651100 (not (= lambda!360137 lambda!360112))))

(declare-fun bs!1651101 () Bool)

(assert (= bs!1651101 (and d!2039523 b!6498018)))

(assert (=> bs!1651101 (not (= lambda!360137 lambda!360034))))

(declare-fun bs!1651102 () Bool)

(assert (= bs!1651102 (and d!2039523 d!2038973)))

(assert (=> bs!1651102 (= lambda!360137 lambda!360046)))

(declare-fun bs!1651103 () Bool)

(assert (= bs!1651103 (and d!2039523 b!6499285)))

(assert (=> bs!1651103 (not (= lambda!360137 lambda!360121))))

(declare-fun bs!1651104 () Bool)

(assert (= bs!1651104 (and d!2039523 d!2038971)))

(assert (=> bs!1651104 (= lambda!360137 lambda!360041)))

(declare-fun bs!1651105 () Bool)

(assert (= bs!1651105 (and d!2039523 d!2039347)))

(assert (=> bs!1651105 (= lambda!360137 lambda!360108)))

(assert (=> bs!1651105 (not (= lambda!360137 lambda!360109))))

(declare-fun bs!1651106 () Bool)

(assert (= bs!1651106 (and d!2039523 b!6498010)))

(assert (=> bs!1651106 (not (= lambda!360137 lambda!360033))))

(declare-fun bs!1651107 () Bool)

(assert (= bs!1651107 (and d!2039523 b!6499288)))

(assert (=> bs!1651107 (not (= lambda!360137 lambda!360122))))

(assert (=> bs!1651102 (not (= lambda!360137 lambda!360047))))

(declare-fun bs!1651108 () Bool)

(assert (= bs!1651108 (and d!2039523 b!6498021)))

(assert (=> bs!1651108 (not (= lambda!360137 lambda!360035))))

(declare-fun bs!1651109 () Bool)

(assert (= bs!1651109 (and d!2039523 b!6499332)))

(assert (=> bs!1651109 (not (= lambda!360137 lambda!360127))))

(assert (=> bs!1651098 (not (= lambda!360137 lambda!359989))))

(declare-fun bs!1651110 () Bool)

(assert (= bs!1651110 (and d!2039523 b!6499329)))

(assert (=> bs!1651110 (not (= lambda!360137 lambda!360126))))

(declare-fun bs!1651111 () Bool)

(assert (= bs!1651111 (and d!2039523 b!6498007)))

(assert (=> bs!1651111 (not (= lambda!360137 lambda!360032))))

(assert (=> d!2039523 true))

(assert (=> d!2039523 true))

(assert (=> d!2039523 true))

(assert (=> d!2039523 (= (isDefined!12969 (findConcatSeparation!2680 (regOne!33262 r!7292) (regTwo!33262 r!7292) Nil!65302 s!2326 s!2326)) (Exists!3445 lambda!360137))))

(assert (=> d!2039523 true))

(declare-fun _$89!2749 () Unit!158835)

(assert (=> d!2039523 (= (choose!48234 (regOne!33262 r!7292) (regTwo!33262 r!7292) s!2326) _$89!2749)))

(declare-fun bs!1651112 () Bool)

(assert (= bs!1651112 d!2039523))

(assert (=> bs!1651112 m!7285750))

(assert (=> bs!1651112 m!7285750))

(assert (=> bs!1651112 m!7285752))

(declare-fun m!7287618 () Bool)

(assert (=> bs!1651112 m!7287618))

(assert (=> d!2038971 d!2039523))

(assert (=> d!2038997 d!2039413))

(declare-fun d!2039525 () Bool)

(assert (=> d!2039525 (= (nullable!6368 (regOne!33262 (reg!16704 (regOne!33262 r!7292)))) (nullableFct!2304 (regOne!33262 (reg!16704 (regOne!33262 r!7292)))))))

(declare-fun bs!1651113 () Bool)

(assert (= bs!1651113 d!2039525))

(declare-fun m!7287620 () Bool)

(assert (=> bs!1651113 m!7287620))

(assert (=> b!6497838 d!2039525))

(declare-fun d!2039527 () Bool)

(assert (=> d!2039527 (= (nullable!6368 lt!2391008) (nullableFct!2304 lt!2391008))))

(declare-fun bs!1651114 () Bool)

(assert (= bs!1651114 d!2039527))

(declare-fun m!7287622 () Bool)

(assert (=> bs!1651114 m!7287622))

(assert (=> b!6497960 d!2039527))

(declare-fun d!2039529 () Bool)

(assert (=> d!2039529 (= (nullable!6368 r!7292) (nullableFct!2304 r!7292))))

(declare-fun bs!1651115 () Bool)

(assert (= bs!1651115 d!2039529))

(declare-fun m!7287624 () Bool)

(assert (=> bs!1651115 m!7287624))

(assert (=> b!6498028 d!2039529))

(declare-fun b!6499407 () Bool)

(declare-fun e!3938437 () Bool)

(declare-fun e!3938434 () Bool)

(assert (=> b!6499407 (= e!3938437 e!3938434)))

(declare-fun c!1191629 () Bool)

(assert (=> b!6499407 (= c!1191629 ((_ is Union!16375) lt!2391128))))

(declare-fun b!6499408 () Bool)

(declare-fun e!3938435 () Bool)

(assert (=> b!6499408 (= e!3938437 e!3938435)))

(declare-fun res!2669113 () Bool)

(assert (=> b!6499408 (= res!2669113 (not (nullable!6368 (reg!16704 lt!2391128))))))

(assert (=> b!6499408 (=> (not res!2669113) (not e!3938435))))

(declare-fun b!6499409 () Bool)

(declare-fun e!3938440 () Bool)

(declare-fun e!3938439 () Bool)

(assert (=> b!6499409 (= e!3938440 e!3938439)))

(declare-fun res!2669111 () Bool)

(assert (=> b!6499409 (=> (not res!2669111) (not e!3938439))))

(declare-fun call!563171 () Bool)

(assert (=> b!6499409 (= res!2669111 call!563171)))

(declare-fun b!6499410 () Bool)

(declare-fun res!2669112 () Bool)

(assert (=> b!6499410 (=> res!2669112 e!3938440)))

(assert (=> b!6499410 (= res!2669112 (not ((_ is Concat!25220) lt!2391128)))))

(assert (=> b!6499410 (= e!3938434 e!3938440)))

(declare-fun d!2039531 () Bool)

(declare-fun res!2669114 () Bool)

(declare-fun e!3938438 () Bool)

(assert (=> d!2039531 (=> res!2669114 e!3938438)))

(assert (=> d!2039531 (= res!2669114 ((_ is ElementMatch!16375) lt!2391128))))

(assert (=> d!2039531 (= (validRegex!8111 lt!2391128) e!3938438)))

(declare-fun call!563172 () Bool)

(declare-fun c!1191628 () Bool)

(declare-fun bm!563166 () Bool)

(assert (=> bm!563166 (= call!563172 (validRegex!8111 (ite c!1191628 (reg!16704 lt!2391128) (ite c!1191629 (regOne!33263 lt!2391128) (regOne!33262 lt!2391128)))))))

(declare-fun b!6499411 () Bool)

(assert (=> b!6499411 (= e!3938435 call!563172)))

(declare-fun b!6499412 () Bool)

(declare-fun e!3938436 () Bool)

(declare-fun call!563173 () Bool)

(assert (=> b!6499412 (= e!3938436 call!563173)))

(declare-fun b!6499413 () Bool)

(assert (=> b!6499413 (= e!3938439 call!563173)))

(declare-fun bm!563167 () Bool)

(assert (=> bm!563167 (= call!563173 (validRegex!8111 (ite c!1191629 (regTwo!33263 lt!2391128) (regTwo!33262 lt!2391128))))))

(declare-fun b!6499414 () Bool)

(declare-fun res!2669110 () Bool)

(assert (=> b!6499414 (=> (not res!2669110) (not e!3938436))))

(assert (=> b!6499414 (= res!2669110 call!563171)))

(assert (=> b!6499414 (= e!3938434 e!3938436)))

(declare-fun b!6499415 () Bool)

(assert (=> b!6499415 (= e!3938438 e!3938437)))

(assert (=> b!6499415 (= c!1191628 ((_ is Star!16375) lt!2391128))))

(declare-fun bm!563168 () Bool)

(assert (=> bm!563168 (= call!563171 call!563172)))

(assert (= (and d!2039531 (not res!2669114)) b!6499415))

(assert (= (and b!6499415 c!1191628) b!6499408))

(assert (= (and b!6499415 (not c!1191628)) b!6499407))

(assert (= (and b!6499408 res!2669113) b!6499411))

(assert (= (and b!6499407 c!1191629) b!6499414))

(assert (= (and b!6499407 (not c!1191629)) b!6499410))

(assert (= (and b!6499414 res!2669110) b!6499412))

(assert (= (and b!6499410 (not res!2669112)) b!6499409))

(assert (= (and b!6499409 res!2669111) b!6499413))

(assert (= (or b!6499412 b!6499413) bm!563167))

(assert (= (or b!6499414 b!6499409) bm!563168))

(assert (= (or b!6499411 bm!563168) bm!563166))

(declare-fun m!7287626 () Bool)

(assert (=> b!6499408 m!7287626))

(declare-fun m!7287628 () Bool)

(assert (=> bm!563166 m!7287628))

(declare-fun m!7287630 () Bool)

(assert (=> bm!563167 m!7287630))

(assert (=> d!2039015 d!2039531))

(declare-fun d!2039533 () Bool)

(declare-fun res!2669115 () Bool)

(declare-fun e!3938441 () Bool)

(assert (=> d!2039533 (=> res!2669115 e!3938441)))

(assert (=> d!2039533 (= res!2669115 ((_ is Nil!65300) (unfocusZipperList!1796 zl!343)))))

(assert (=> d!2039533 (= (forall!15556 (unfocusZipperList!1796 zl!343) lambda!360055) e!3938441)))

(declare-fun b!6499416 () Bool)

(declare-fun e!3938442 () Bool)

(assert (=> b!6499416 (= e!3938441 e!3938442)))

(declare-fun res!2669116 () Bool)

(assert (=> b!6499416 (=> (not res!2669116) (not e!3938442))))

(assert (=> b!6499416 (= res!2669116 (dynLambda!25941 lambda!360055 (h!71748 (unfocusZipperList!1796 zl!343))))))

(declare-fun b!6499417 () Bool)

(assert (=> b!6499417 (= e!3938442 (forall!15556 (t!379056 (unfocusZipperList!1796 zl!343)) lambda!360055))))

(assert (= (and d!2039533 (not res!2669115)) b!6499416))

(assert (= (and b!6499416 res!2669116) b!6499417))

(declare-fun b_lambda!246047 () Bool)

(assert (=> (not b_lambda!246047) (not b!6499416)))

(declare-fun m!7287632 () Bool)

(assert (=> b!6499416 m!7287632))

(declare-fun m!7287634 () Bool)

(assert (=> b!6499417 m!7287634))

(assert (=> d!2039015 d!2039533))

(declare-fun d!2039535 () Bool)

(assert (=> d!2039535 (= (nullable!6368 (h!71748 (exprs!6259 lt!2391021))) (nullableFct!2304 (h!71748 (exprs!6259 lt!2391021))))))

(declare-fun bs!1651116 () Bool)

(assert (= bs!1651116 d!2039535))

(declare-fun m!7287636 () Bool)

(assert (=> bs!1651116 m!7287636))

(assert (=> b!6498119 d!2039535))

(assert (=> b!6497964 d!2039499))

(assert (=> b!6497964 d!2039383))

(assert (=> b!6498032 d!2039499))

(assert (=> b!6498032 d!2039383))

(declare-fun b!6499418 () Bool)

(declare-fun res!2669124 () Bool)

(declare-fun e!3938445 () Bool)

(assert (=> b!6499418 (=> res!2669124 e!3938445)))

(assert (=> b!6499418 (= res!2669124 (not ((_ is ElementMatch!16375) (regTwo!33262 r!7292))))))

(declare-fun e!3938444 () Bool)

(assert (=> b!6499418 (= e!3938444 e!3938445)))

(declare-fun b!6499419 () Bool)

(declare-fun e!3938446 () Bool)

(assert (=> b!6499419 (= e!3938446 (not (= (head!13221 (_2!36657 (get!22646 lt!2391111))) (c!1191063 (regTwo!33262 r!7292)))))))

(declare-fun bm!563169 () Bool)

(declare-fun call!563174 () Bool)

(assert (=> bm!563169 (= call!563174 (isEmpty!37501 (_2!36657 (get!22646 lt!2391111))))))

(declare-fun b!6499420 () Bool)

(declare-fun res!2669118 () Bool)

(assert (=> b!6499420 (=> res!2669118 e!3938445)))

(declare-fun e!3938448 () Bool)

(assert (=> b!6499420 (= res!2669118 e!3938448)))

(declare-fun res!2669120 () Bool)

(assert (=> b!6499420 (=> (not res!2669120) (not e!3938448))))

(declare-fun lt!2391189 () Bool)

(assert (=> b!6499420 (= res!2669120 lt!2391189)))

(declare-fun b!6499421 () Bool)

(declare-fun res!2669121 () Bool)

(assert (=> b!6499421 (=> (not res!2669121) (not e!3938448))))

(assert (=> b!6499421 (= res!2669121 (not call!563174))))

(declare-fun b!6499422 () Bool)

(declare-fun e!3938449 () Bool)

(assert (=> b!6499422 (= e!3938449 (nullable!6368 (regTwo!33262 r!7292)))))

(declare-fun b!6499423 () Bool)

(declare-fun e!3938447 () Bool)

(assert (=> b!6499423 (= e!3938447 e!3938444)))

(declare-fun c!1191630 () Bool)

(assert (=> b!6499423 (= c!1191630 ((_ is EmptyLang!16375) (regTwo!33262 r!7292)))))

(declare-fun b!6499424 () Bool)

(assert (=> b!6499424 (= e!3938447 (= lt!2391189 call!563174))))

(declare-fun b!6499425 () Bool)

(declare-fun e!3938443 () Bool)

(assert (=> b!6499425 (= e!3938443 e!3938446)))

(declare-fun res!2669123 () Bool)

(assert (=> b!6499425 (=> res!2669123 e!3938446)))

(assert (=> b!6499425 (= res!2669123 call!563174)))

(declare-fun b!6499427 () Bool)

(assert (=> b!6499427 (= e!3938444 (not lt!2391189))))

(declare-fun d!2039537 () Bool)

(assert (=> d!2039537 e!3938447))

(declare-fun c!1191631 () Bool)

(assert (=> d!2039537 (= c!1191631 ((_ is EmptyExpr!16375) (regTwo!33262 r!7292)))))

(assert (=> d!2039537 (= lt!2391189 e!3938449)))

(declare-fun c!1191632 () Bool)

(assert (=> d!2039537 (= c!1191632 (isEmpty!37501 (_2!36657 (get!22646 lt!2391111))))))

(assert (=> d!2039537 (validRegex!8111 (regTwo!33262 r!7292))))

(assert (=> d!2039537 (= (matchR!8558 (regTwo!33262 r!7292) (_2!36657 (get!22646 lt!2391111))) lt!2391189)))

(declare-fun b!6499426 () Bool)

(declare-fun res!2669122 () Bool)

(assert (=> b!6499426 (=> res!2669122 e!3938446)))

(assert (=> b!6499426 (= res!2669122 (not (isEmpty!37501 (tail!12306 (_2!36657 (get!22646 lt!2391111))))))))

(declare-fun b!6499428 () Bool)

(assert (=> b!6499428 (= e!3938448 (= (head!13221 (_2!36657 (get!22646 lt!2391111))) (c!1191063 (regTwo!33262 r!7292))))))

(declare-fun b!6499429 () Bool)

(assert (=> b!6499429 (= e!3938449 (matchR!8558 (derivativeStep!5069 (regTwo!33262 r!7292) (head!13221 (_2!36657 (get!22646 lt!2391111)))) (tail!12306 (_2!36657 (get!22646 lt!2391111)))))))

(declare-fun b!6499430 () Bool)

(assert (=> b!6499430 (= e!3938445 e!3938443)))

(declare-fun res!2669117 () Bool)

(assert (=> b!6499430 (=> (not res!2669117) (not e!3938443))))

(assert (=> b!6499430 (= res!2669117 (not lt!2391189))))

(declare-fun b!6499431 () Bool)

(declare-fun res!2669119 () Bool)

(assert (=> b!6499431 (=> (not res!2669119) (not e!3938448))))

(assert (=> b!6499431 (= res!2669119 (isEmpty!37501 (tail!12306 (_2!36657 (get!22646 lt!2391111)))))))

(assert (= (and d!2039537 c!1191632) b!6499422))

(assert (= (and d!2039537 (not c!1191632)) b!6499429))

(assert (= (and d!2039537 c!1191631) b!6499424))

(assert (= (and d!2039537 (not c!1191631)) b!6499423))

(assert (= (and b!6499423 c!1191630) b!6499427))

(assert (= (and b!6499423 (not c!1191630)) b!6499418))

(assert (= (and b!6499418 (not res!2669124)) b!6499420))

(assert (= (and b!6499420 res!2669120) b!6499421))

(assert (= (and b!6499421 res!2669121) b!6499431))

(assert (= (and b!6499431 res!2669119) b!6499428))

(assert (= (and b!6499420 (not res!2669118)) b!6499430))

(assert (= (and b!6499430 res!2669117) b!6499425))

(assert (= (and b!6499425 (not res!2669123)) b!6499426))

(assert (= (and b!6499426 (not res!2669122)) b!6499419))

(assert (= (or b!6499424 b!6499421 b!6499425) bm!563169))

(declare-fun m!7287638 () Bool)

(assert (=> d!2039537 m!7287638))

(assert (=> d!2039537 m!7287388))

(declare-fun m!7287640 () Bool)

(assert (=> b!6499429 m!7287640))

(assert (=> b!6499429 m!7287640))

(declare-fun m!7287642 () Bool)

(assert (=> b!6499429 m!7287642))

(declare-fun m!7287644 () Bool)

(assert (=> b!6499429 m!7287644))

(assert (=> b!6499429 m!7287642))

(assert (=> b!6499429 m!7287644))

(declare-fun m!7287646 () Bool)

(assert (=> b!6499429 m!7287646))

(assert (=> b!6499419 m!7287640))

(assert (=> bm!563169 m!7287638))

(assert (=> b!6499431 m!7287644))

(assert (=> b!6499431 m!7287644))

(declare-fun m!7287648 () Bool)

(assert (=> b!6499431 m!7287648))

(assert (=> b!6499428 m!7287640))

(assert (=> b!6499426 m!7287644))

(assert (=> b!6499426 m!7287644))

(assert (=> b!6499426 m!7287648))

(assert (=> b!6499422 m!7287394))

(assert (=> b!6498067 d!2039537))

(assert (=> b!6498067 d!2039449))

(assert (=> bs!1650540 d!2038931))

(declare-fun bs!1651117 () Bool)

(declare-fun d!2039539 () Bool)

(assert (= bs!1651117 (and d!2039539 d!2038959)))

(declare-fun lambda!360138 () Int)

(assert (=> bs!1651117 (= lambda!360138 lambda!360038)))

(declare-fun bs!1651118 () Bool)

(assert (= bs!1651118 (and d!2039539 d!2039519)))

(assert (=> bs!1651118 (= lambda!360138 lambda!360134)))

(declare-fun bs!1651119 () Bool)

(assert (= bs!1651119 (and d!2039539 d!2039015)))

(assert (=> bs!1651119 (= lambda!360138 lambda!360055)))

(declare-fun bs!1651120 () Bool)

(assert (= bs!1651120 (and d!2039539 d!2039455)))

(assert (=> bs!1651120 (= lambda!360138 lambda!360119)))

(declare-fun bs!1651121 () Bool)

(assert (= bs!1651121 (and d!2039539 d!2038993)))

(assert (=> bs!1651121 (= lambda!360138 lambda!360051)))

(declare-fun bs!1651122 () Bool)

(assert (= bs!1651122 (and d!2039539 d!2039471)))

(assert (=> bs!1651122 (= lambda!360138 lambda!360123)))

(declare-fun bs!1651123 () Bool)

(assert (= bs!1651123 (and d!2039539 d!2038941)))

(assert (=> bs!1651123 (= lambda!360138 lambda!360027)))

(declare-fun bs!1651124 () Bool)

(assert (= bs!1651124 (and d!2039539 d!2039473)))

(assert (=> bs!1651124 (= lambda!360138 lambda!360124)))

(declare-fun bs!1651125 () Bool)

(assert (= bs!1651125 (and d!2039539 d!2039437)))

(assert (=> bs!1651125 (= lambda!360138 lambda!360118)))

(declare-fun bs!1651126 () Bool)

(assert (= bs!1651126 (and d!2039539 d!2039489)))

(assert (=> bs!1651126 (= lambda!360138 lambda!360130)))

(declare-fun bs!1651127 () Bool)

(assert (= bs!1651127 (and d!2039539 d!2039477)))

(assert (=> bs!1651127 (= lambda!360138 lambda!360125)))

(declare-fun bs!1651128 () Bool)

(assert (= bs!1651128 (and d!2039539 d!2039017)))

(assert (=> bs!1651128 (= lambda!360138 lambda!360058)))

(declare-fun bs!1651129 () Bool)

(assert (= bs!1651129 (and d!2039539 d!2039013)))

(assert (=> bs!1651129 (= lambda!360138 lambda!360052)))

(declare-fun bs!1651130 () Bool)

(assert (= bs!1651130 (and d!2039539 d!2039517)))

(assert (=> bs!1651130 (= lambda!360138 lambda!360133)))

(assert (=> d!2039539 (= (inv!84184 (h!71749 (t!379057 zl!343))) (forall!15556 (exprs!6259 (h!71749 (t!379057 zl!343))) lambda!360138))))

(declare-fun bs!1651131 () Bool)

(assert (= bs!1651131 d!2039539))

(declare-fun m!7287650 () Bool)

(assert (=> bs!1651131 m!7287650))

(assert (=> b!6498212 d!2039539))

(assert (=> d!2038989 d!2038985))

(declare-fun d!2039541 () Bool)

(assert (=> d!2039541 (= (flatMap!1880 lt!2391014 lambda!359990) (dynLambda!25939 lambda!359990 lt!2391016))))

(assert (=> d!2039541 true))

(declare-fun _$13!3751 () Unit!158835)

(assert (=> d!2039541 (= (choose!48228 lt!2391014 lt!2391016 lambda!359990) _$13!3751)))

(declare-fun b_lambda!246049 () Bool)

(assert (=> (not b_lambda!246049) (not d!2039541)))

(declare-fun bs!1651132 () Bool)

(assert (= bs!1651132 d!2039541))

(assert (=> bs!1651132 m!7285842))

(assert (=> bs!1651132 m!7286336))

(assert (=> d!2038989 d!2039541))

(assert (=> b!6497921 d!2038939))

(declare-fun b!6499432 () Bool)

(declare-fun e!3938453 () Bool)

(declare-fun e!3938450 () Bool)

(assert (=> b!6499432 (= e!3938453 e!3938450)))

(declare-fun c!1191634 () Bool)

(assert (=> b!6499432 (= c!1191634 ((_ is Union!16375) lt!2391093))))

(declare-fun b!6499433 () Bool)

(declare-fun e!3938451 () Bool)

(assert (=> b!6499433 (= e!3938453 e!3938451)))

(declare-fun res!2669128 () Bool)

(assert (=> b!6499433 (= res!2669128 (not (nullable!6368 (reg!16704 lt!2391093))))))

(assert (=> b!6499433 (=> (not res!2669128) (not e!3938451))))

(declare-fun b!6499434 () Bool)

(declare-fun e!3938456 () Bool)

(declare-fun e!3938455 () Bool)

(assert (=> b!6499434 (= e!3938456 e!3938455)))

(declare-fun res!2669126 () Bool)

(assert (=> b!6499434 (=> (not res!2669126) (not e!3938455))))

(declare-fun call!563175 () Bool)

(assert (=> b!6499434 (= res!2669126 call!563175)))

(declare-fun b!6499435 () Bool)

(declare-fun res!2669127 () Bool)

(assert (=> b!6499435 (=> res!2669127 e!3938456)))

(assert (=> b!6499435 (= res!2669127 (not ((_ is Concat!25220) lt!2391093)))))

(assert (=> b!6499435 (= e!3938450 e!3938456)))

(declare-fun d!2039543 () Bool)

(declare-fun res!2669129 () Bool)

(declare-fun e!3938454 () Bool)

(assert (=> d!2039543 (=> res!2669129 e!3938454)))

(assert (=> d!2039543 (= res!2669129 ((_ is ElementMatch!16375) lt!2391093))))

(assert (=> d!2039543 (= (validRegex!8111 lt!2391093) e!3938454)))

(declare-fun bm!563170 () Bool)

(declare-fun call!563176 () Bool)

(declare-fun c!1191633 () Bool)

(assert (=> bm!563170 (= call!563176 (validRegex!8111 (ite c!1191633 (reg!16704 lt!2391093) (ite c!1191634 (regOne!33263 lt!2391093) (regOne!33262 lt!2391093)))))))

(declare-fun b!6499436 () Bool)

(assert (=> b!6499436 (= e!3938451 call!563176)))

(declare-fun b!6499437 () Bool)

(declare-fun e!3938452 () Bool)

(declare-fun call!563177 () Bool)

(assert (=> b!6499437 (= e!3938452 call!563177)))

(declare-fun b!6499438 () Bool)

(assert (=> b!6499438 (= e!3938455 call!563177)))

(declare-fun bm!563171 () Bool)

(assert (=> bm!563171 (= call!563177 (validRegex!8111 (ite c!1191634 (regTwo!33263 lt!2391093) (regTwo!33262 lt!2391093))))))

(declare-fun b!6499439 () Bool)

(declare-fun res!2669125 () Bool)

(assert (=> b!6499439 (=> (not res!2669125) (not e!3938452))))

(assert (=> b!6499439 (= res!2669125 call!563175)))

(assert (=> b!6499439 (= e!3938450 e!3938452)))

(declare-fun b!6499440 () Bool)

(assert (=> b!6499440 (= e!3938454 e!3938453)))

(assert (=> b!6499440 (= c!1191633 ((_ is Star!16375) lt!2391093))))

(declare-fun bm!563172 () Bool)

(assert (=> bm!563172 (= call!563175 call!563176)))

(assert (= (and d!2039543 (not res!2669129)) b!6499440))

(assert (= (and b!6499440 c!1191633) b!6499433))

(assert (= (and b!6499440 (not c!1191633)) b!6499432))

(assert (= (and b!6499433 res!2669128) b!6499436))

(assert (= (and b!6499432 c!1191634) b!6499439))

(assert (= (and b!6499432 (not c!1191634)) b!6499435))

(assert (= (and b!6499439 res!2669125) b!6499437))

(assert (= (and b!6499435 (not res!2669127)) b!6499434))

(assert (= (and b!6499434 res!2669126) b!6499438))

(assert (= (or b!6499437 b!6499438) bm!563171))

(assert (= (or b!6499439 b!6499434) bm!563172))

(assert (= (or b!6499436 bm!563172) bm!563170))

(declare-fun m!7287652 () Bool)

(assert (=> b!6499433 m!7287652))

(declare-fun m!7287654 () Bool)

(assert (=> bm!563170 m!7287654))

(declare-fun m!7287656 () Bool)

(assert (=> bm!563171 m!7287656))

(assert (=> d!2038943 d!2039543))

(declare-fun bs!1651133 () Bool)

(declare-fun d!2039545 () Bool)

(assert (= bs!1651133 (and d!2039545 d!2038959)))

(declare-fun lambda!360139 () Int)

(assert (=> bs!1651133 (= lambda!360139 lambda!360038)))

(declare-fun bs!1651134 () Bool)

(assert (= bs!1651134 (and d!2039545 d!2039519)))

(assert (=> bs!1651134 (= lambda!360139 lambda!360134)))

(declare-fun bs!1651135 () Bool)

(assert (= bs!1651135 (and d!2039545 d!2039015)))

(assert (=> bs!1651135 (= lambda!360139 lambda!360055)))

(declare-fun bs!1651136 () Bool)

(assert (= bs!1651136 (and d!2039545 d!2039455)))

(assert (=> bs!1651136 (= lambda!360139 lambda!360119)))

(declare-fun bs!1651137 () Bool)

(assert (= bs!1651137 (and d!2039545 d!2038993)))

(assert (=> bs!1651137 (= lambda!360139 lambda!360051)))

(declare-fun bs!1651138 () Bool)

(assert (= bs!1651138 (and d!2039545 d!2039539)))

(assert (=> bs!1651138 (= lambda!360139 lambda!360138)))

(declare-fun bs!1651139 () Bool)

(assert (= bs!1651139 (and d!2039545 d!2039471)))

(assert (=> bs!1651139 (= lambda!360139 lambda!360123)))

(declare-fun bs!1651140 () Bool)

(assert (= bs!1651140 (and d!2039545 d!2038941)))

(assert (=> bs!1651140 (= lambda!360139 lambda!360027)))

(declare-fun bs!1651141 () Bool)

(assert (= bs!1651141 (and d!2039545 d!2039473)))

(assert (=> bs!1651141 (= lambda!360139 lambda!360124)))

(declare-fun bs!1651142 () Bool)

(assert (= bs!1651142 (and d!2039545 d!2039437)))

(assert (=> bs!1651142 (= lambda!360139 lambda!360118)))

(declare-fun bs!1651143 () Bool)

(assert (= bs!1651143 (and d!2039545 d!2039489)))

(assert (=> bs!1651143 (= lambda!360139 lambda!360130)))

(declare-fun bs!1651144 () Bool)

(assert (= bs!1651144 (and d!2039545 d!2039477)))

(assert (=> bs!1651144 (= lambda!360139 lambda!360125)))

(declare-fun bs!1651145 () Bool)

(assert (= bs!1651145 (and d!2039545 d!2039017)))

(assert (=> bs!1651145 (= lambda!360139 lambda!360058)))

(declare-fun bs!1651146 () Bool)

(assert (= bs!1651146 (and d!2039545 d!2039013)))

(assert (=> bs!1651146 (= lambda!360139 lambda!360052)))

(declare-fun bs!1651147 () Bool)

(assert (= bs!1651147 (and d!2039545 d!2039517)))

(assert (=> bs!1651147 (= lambda!360139 lambda!360133)))

(declare-fun b!6499441 () Bool)

(declare-fun e!3938458 () Bool)

(declare-fun lt!2391190 () Regex!16375)

(assert (=> b!6499441 (= e!3938458 (isUnion!1203 lt!2391190))))

(declare-fun b!6499442 () Bool)

(declare-fun e!3938462 () Regex!16375)

(declare-fun e!3938460 () Regex!16375)

(assert (=> b!6499442 (= e!3938462 e!3938460)))

(declare-fun c!1191638 () Bool)

(assert (=> b!6499442 (= c!1191638 ((_ is Cons!65300) (unfocusZipperList!1796 (Cons!65301 lt!2391011 Nil!65301))))))

(declare-fun b!6499443 () Bool)

(assert (=> b!6499443 (= e!3938458 (= lt!2391190 (head!13222 (unfocusZipperList!1796 (Cons!65301 lt!2391011 Nil!65301)))))))

(declare-fun e!3938459 () Bool)

(assert (=> d!2039545 e!3938459))

(declare-fun res!2669130 () Bool)

(assert (=> d!2039545 (=> (not res!2669130) (not e!3938459))))

(assert (=> d!2039545 (= res!2669130 (validRegex!8111 lt!2391190))))

(assert (=> d!2039545 (= lt!2391190 e!3938462)))

(declare-fun c!1191637 () Bool)

(declare-fun e!3938461 () Bool)

(assert (=> d!2039545 (= c!1191637 e!3938461)))

(declare-fun res!2669131 () Bool)

(assert (=> d!2039545 (=> (not res!2669131) (not e!3938461))))

(assert (=> d!2039545 (= res!2669131 ((_ is Cons!65300) (unfocusZipperList!1796 (Cons!65301 lt!2391011 Nil!65301))))))

(assert (=> d!2039545 (forall!15556 (unfocusZipperList!1796 (Cons!65301 lt!2391011 Nil!65301)) lambda!360139)))

(assert (=> d!2039545 (= (generalisedUnion!2219 (unfocusZipperList!1796 (Cons!65301 lt!2391011 Nil!65301))) lt!2391190)))

(declare-fun b!6499444 () Bool)

(assert (=> b!6499444 (= e!3938460 EmptyLang!16375)))

(declare-fun b!6499445 () Bool)

(assert (=> b!6499445 (= e!3938461 (isEmpty!37497 (t!379056 (unfocusZipperList!1796 (Cons!65301 lt!2391011 Nil!65301)))))))

(declare-fun b!6499446 () Bool)

(declare-fun e!3938457 () Bool)

(assert (=> b!6499446 (= e!3938457 (isEmptyLang!1773 lt!2391190))))

(declare-fun b!6499447 () Bool)

(assert (=> b!6499447 (= e!3938462 (h!71748 (unfocusZipperList!1796 (Cons!65301 lt!2391011 Nil!65301))))))

(declare-fun b!6499448 () Bool)

(assert (=> b!6499448 (= e!3938460 (Union!16375 (h!71748 (unfocusZipperList!1796 (Cons!65301 lt!2391011 Nil!65301))) (generalisedUnion!2219 (t!379056 (unfocusZipperList!1796 (Cons!65301 lt!2391011 Nil!65301))))))))

(declare-fun b!6499449 () Bool)

(assert (=> b!6499449 (= e!3938459 e!3938457)))

(declare-fun c!1191636 () Bool)

(assert (=> b!6499449 (= c!1191636 (isEmpty!37497 (unfocusZipperList!1796 (Cons!65301 lt!2391011 Nil!65301))))))

(declare-fun b!6499450 () Bool)

(assert (=> b!6499450 (= e!3938457 e!3938458)))

(declare-fun c!1191635 () Bool)

(assert (=> b!6499450 (= c!1191635 (isEmpty!37497 (tail!12307 (unfocusZipperList!1796 (Cons!65301 lt!2391011 Nil!65301)))))))

(assert (= (and d!2039545 res!2669131) b!6499445))

(assert (= (and d!2039545 c!1191637) b!6499447))

(assert (= (and d!2039545 (not c!1191637)) b!6499442))

(assert (= (and b!6499442 c!1191638) b!6499448))

(assert (= (and b!6499442 (not c!1191638)) b!6499444))

(assert (= (and d!2039545 res!2669130) b!6499449))

(assert (= (and b!6499449 c!1191636) b!6499446))

(assert (= (and b!6499449 (not c!1191636)) b!6499450))

(assert (= (and b!6499450 c!1191635) b!6499443))

(assert (= (and b!6499450 (not c!1191635)) b!6499441))

(assert (=> b!6499450 m!7286214))

(declare-fun m!7287658 () Bool)

(assert (=> b!6499450 m!7287658))

(assert (=> b!6499450 m!7287658))

(declare-fun m!7287660 () Bool)

(assert (=> b!6499450 m!7287660))

(declare-fun m!7287662 () Bool)

(assert (=> b!6499446 m!7287662))

(assert (=> b!6499443 m!7286214))

(declare-fun m!7287664 () Bool)

(assert (=> b!6499443 m!7287664))

(declare-fun m!7287666 () Bool)

(assert (=> b!6499448 m!7287666))

(declare-fun m!7287668 () Bool)

(assert (=> b!6499445 m!7287668))

(declare-fun m!7287670 () Bool)

(assert (=> d!2039545 m!7287670))

(assert (=> d!2039545 m!7286214))

(declare-fun m!7287672 () Bool)

(assert (=> d!2039545 m!7287672))

(declare-fun m!7287674 () Bool)

(assert (=> b!6499441 m!7287674))

(assert (=> b!6499449 m!7286214))

(declare-fun m!7287676 () Bool)

(assert (=> b!6499449 m!7287676))

(assert (=> d!2038943 d!2039545))

(declare-fun bs!1651148 () Bool)

(declare-fun d!2039547 () Bool)

(assert (= bs!1651148 (and d!2039547 d!2038959)))

(declare-fun lambda!360140 () Int)

(assert (=> bs!1651148 (= lambda!360140 lambda!360038)))

(declare-fun bs!1651149 () Bool)

(assert (= bs!1651149 (and d!2039547 d!2039519)))

(assert (=> bs!1651149 (= lambda!360140 lambda!360134)))

(declare-fun bs!1651150 () Bool)

(assert (= bs!1651150 (and d!2039547 d!2039015)))

(assert (=> bs!1651150 (= lambda!360140 lambda!360055)))

(declare-fun bs!1651151 () Bool)

(assert (= bs!1651151 (and d!2039547 d!2039455)))

(assert (=> bs!1651151 (= lambda!360140 lambda!360119)))

(declare-fun bs!1651152 () Bool)

(assert (= bs!1651152 (and d!2039547 d!2039545)))

(assert (=> bs!1651152 (= lambda!360140 lambda!360139)))

(declare-fun bs!1651153 () Bool)

(assert (= bs!1651153 (and d!2039547 d!2038993)))

(assert (=> bs!1651153 (= lambda!360140 lambda!360051)))

(declare-fun bs!1651154 () Bool)

(assert (= bs!1651154 (and d!2039547 d!2039539)))

(assert (=> bs!1651154 (= lambda!360140 lambda!360138)))

(declare-fun bs!1651155 () Bool)

(assert (= bs!1651155 (and d!2039547 d!2039471)))

(assert (=> bs!1651155 (= lambda!360140 lambda!360123)))

(declare-fun bs!1651156 () Bool)

(assert (= bs!1651156 (and d!2039547 d!2038941)))

(assert (=> bs!1651156 (= lambda!360140 lambda!360027)))

(declare-fun bs!1651157 () Bool)

(assert (= bs!1651157 (and d!2039547 d!2039473)))

(assert (=> bs!1651157 (= lambda!360140 lambda!360124)))

(declare-fun bs!1651158 () Bool)

(assert (= bs!1651158 (and d!2039547 d!2039437)))

(assert (=> bs!1651158 (= lambda!360140 lambda!360118)))

(declare-fun bs!1651159 () Bool)

(assert (= bs!1651159 (and d!2039547 d!2039489)))

(assert (=> bs!1651159 (= lambda!360140 lambda!360130)))

(declare-fun bs!1651160 () Bool)

(assert (= bs!1651160 (and d!2039547 d!2039477)))

(assert (=> bs!1651160 (= lambda!360140 lambda!360125)))

(declare-fun bs!1651161 () Bool)

(assert (= bs!1651161 (and d!2039547 d!2039017)))

(assert (=> bs!1651161 (= lambda!360140 lambda!360058)))

(declare-fun bs!1651162 () Bool)

(assert (= bs!1651162 (and d!2039547 d!2039013)))

(assert (=> bs!1651162 (= lambda!360140 lambda!360052)))

(declare-fun bs!1651163 () Bool)

(assert (= bs!1651163 (and d!2039547 d!2039517)))

(assert (=> bs!1651163 (= lambda!360140 lambda!360133)))

(declare-fun lt!2391191 () List!65424)

(assert (=> d!2039547 (forall!15556 lt!2391191 lambda!360140)))

(declare-fun e!3938463 () List!65424)

(assert (=> d!2039547 (= lt!2391191 e!3938463)))

(declare-fun c!1191639 () Bool)

(assert (=> d!2039547 (= c!1191639 ((_ is Cons!65301) (Cons!65301 lt!2391011 Nil!65301)))))

(assert (=> d!2039547 (= (unfocusZipperList!1796 (Cons!65301 lt!2391011 Nil!65301)) lt!2391191)))

(declare-fun b!6499451 () Bool)

(assert (=> b!6499451 (= e!3938463 (Cons!65300 (generalisedConcat!1972 (exprs!6259 (h!71749 (Cons!65301 lt!2391011 Nil!65301)))) (unfocusZipperList!1796 (t!379057 (Cons!65301 lt!2391011 Nil!65301)))))))

(declare-fun b!6499452 () Bool)

(assert (=> b!6499452 (= e!3938463 Nil!65300)))

(assert (= (and d!2039547 c!1191639) b!6499451))

(assert (= (and d!2039547 (not c!1191639)) b!6499452))

(declare-fun m!7287678 () Bool)

(assert (=> d!2039547 m!7287678))

(declare-fun m!7287680 () Bool)

(assert (=> b!6499451 m!7287680))

(declare-fun m!7287682 () Bool)

(assert (=> b!6499451 m!7287682))

(assert (=> d!2038943 d!2039547))

(assert (=> d!2038935 d!2039355))

(assert (=> bm!562903 d!2039413))

(declare-fun d!2039549 () Bool)

(assert (=> d!2039549 (= (isUnion!1203 lt!2391128) ((_ is Union!16375) lt!2391128))))

(assert (=> b!6498144 d!2039549))

(assert (=> d!2038927 d!2038923))

(declare-fun d!2039551 () Bool)

(assert (=> d!2039551 (= (flatMap!1880 lt!2391031 lambda!359990) (dynLambda!25939 lambda!359990 lt!2391011))))

(assert (=> d!2039551 true))

(declare-fun _$13!3752 () Unit!158835)

(assert (=> d!2039551 (= (choose!48228 lt!2391031 lt!2391011 lambda!359990) _$13!3752)))

(declare-fun b_lambda!246051 () Bool)

(assert (=> (not b_lambda!246051) (not d!2039551)))

(declare-fun bs!1651164 () Bool)

(assert (= bs!1651164 d!2039551))

(assert (=> bs!1651164 m!7285796))

(assert (=> bs!1651164 m!7286164))

(assert (=> d!2038927 d!2039551))

(declare-fun d!2039553 () Bool)

(assert (=> d!2039553 (= (isEmpty!37497 (tail!12307 (exprs!6259 (h!71749 zl!343)))) ((_ is Nil!65300) (tail!12307 (exprs!6259 (h!71749 zl!343)))))))

(assert (=> b!6497925 d!2039553))

(declare-fun d!2039555 () Bool)

(assert (=> d!2039555 (= (tail!12307 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343))))))

(assert (=> b!6497925 d!2039555))

(declare-fun d!2039557 () Bool)

(declare-fun c!1191640 () Bool)

(assert (=> d!2039557 (= c!1191640 (isEmpty!37501 (tail!12306 s!2326)))))

(declare-fun e!3938464 () Bool)

(assert (=> d!2039557 (= (matchZipper!2387 (derivationStepZipper!2341 z!1189 (head!13221 s!2326)) (tail!12306 s!2326)) e!3938464)))

(declare-fun b!6499453 () Bool)

(assert (=> b!6499453 (= e!3938464 (nullableZipper!2130 (derivationStepZipper!2341 z!1189 (head!13221 s!2326))))))

(declare-fun b!6499454 () Bool)

(assert (=> b!6499454 (= e!3938464 (matchZipper!2387 (derivationStepZipper!2341 (derivationStepZipper!2341 z!1189 (head!13221 s!2326)) (head!13221 (tail!12306 s!2326))) (tail!12306 (tail!12306 s!2326))))))

(assert (= (and d!2039557 c!1191640) b!6499453))

(assert (= (and d!2039557 (not c!1191640)) b!6499454))

(assert (=> d!2039557 m!7286232))

(assert (=> d!2039557 m!7286236))

(assert (=> b!6499453 m!7286352))

(declare-fun m!7287684 () Bool)

(assert (=> b!6499453 m!7287684))

(assert (=> b!6499454 m!7286232))

(assert (=> b!6499454 m!7287252))

(assert (=> b!6499454 m!7286352))

(assert (=> b!6499454 m!7287252))

(declare-fun m!7287686 () Bool)

(assert (=> b!6499454 m!7287686))

(assert (=> b!6499454 m!7286232))

(assert (=> b!6499454 m!7287256))

(assert (=> b!6499454 m!7287686))

(assert (=> b!6499454 m!7287256))

(declare-fun m!7287688 () Bool)

(assert (=> b!6499454 m!7287688))

(assert (=> b!6498097 d!2039557))

(declare-fun bs!1651165 () Bool)

(declare-fun d!2039559 () Bool)

(assert (= bs!1651165 (and d!2039559 d!2039365)))

(declare-fun lambda!360141 () Int)

(assert (=> bs!1651165 (= (= (head!13221 s!2326) (head!13221 (t!379058 s!2326))) (= lambda!360141 lambda!360110))))

(declare-fun bs!1651166 () Bool)

(assert (= bs!1651166 (and d!2039559 d!2039513)))

(assert (=> bs!1651166 (= (= (head!13221 s!2326) (head!13221 (t!379058 s!2326))) (= lambda!360141 lambda!360132))))

(declare-fun bs!1651167 () Bool)

(assert (= bs!1651167 (and d!2039559 b!6497395)))

(assert (=> bs!1651167 (= (= (head!13221 s!2326) (h!71750 s!2326)) (= lambda!360141 lambda!359990))))

(declare-fun bs!1651168 () Bool)

(assert (= bs!1651168 (and d!2039559 d!2039429)))

(assert (=> bs!1651168 (= (= (head!13221 s!2326) (head!13221 (t!379058 s!2326))) (= lambda!360141 lambda!360116))))

(declare-fun bs!1651169 () Bool)

(assert (= bs!1651169 (and d!2039559 d!2039327)))

(assert (=> bs!1651169 (= (= (head!13221 s!2326) (head!13221 (t!379058 s!2326))) (= lambda!360141 lambda!360103))))

(declare-fun bs!1651170 () Bool)

(assert (= bs!1651170 (and d!2039559 d!2039483)))

(assert (=> bs!1651170 (= lambda!360141 lambda!360128)))

(declare-fun bs!1651171 () Bool)

(assert (= bs!1651171 (and d!2039559 d!2038991)))

(assert (=> bs!1651171 (= (= (head!13221 s!2326) (h!71750 s!2326)) (= lambda!360141 lambda!360050))))

(assert (=> d!2039559 true))

(assert (=> d!2039559 (= (derivationStepZipper!2341 z!1189 (head!13221 s!2326)) (flatMap!1880 z!1189 lambda!360141))))

(declare-fun bs!1651172 () Bool)

(assert (= bs!1651172 d!2039559))

(declare-fun m!7287690 () Bool)

(assert (=> bs!1651172 m!7287690))

(assert (=> b!6498097 d!2039559))

(assert (=> b!6498097 d!2039381))

(assert (=> b!6498097 d!2039383))

(declare-fun d!2039561 () Bool)

(assert (=> d!2039561 true))

(declare-fun setRes!44295 () Bool)

(assert (=> d!2039561 setRes!44295))

(declare-fun condSetEmpty!44295 () Bool)

(declare-fun res!2669132 () (InoxSet Context!11518))

(assert (=> d!2039561 (= condSetEmpty!44295 (= res!2669132 ((as const (Array Context!11518 Bool)) false)))))

(assert (=> d!2039561 (= (choose!48229 z!1189 lambda!359990) res!2669132)))

(declare-fun setIsEmpty!44295 () Bool)

(assert (=> setIsEmpty!44295 setRes!44295))

(declare-fun tp!1798069 () Bool)

(declare-fun setElem!44295 () Context!11518)

(declare-fun e!3938465 () Bool)

(declare-fun setNonEmpty!44295 () Bool)

(assert (=> setNonEmpty!44295 (= setRes!44295 (and tp!1798069 (inv!84184 setElem!44295) e!3938465))))

(declare-fun setRest!44295 () (InoxSet Context!11518))

(assert (=> setNonEmpty!44295 (= res!2669132 ((_ map or) (store ((as const (Array Context!11518 Bool)) false) setElem!44295 true) setRest!44295))))

(declare-fun b!6499455 () Bool)

(declare-fun tp!1798070 () Bool)

(assert (=> b!6499455 (= e!3938465 tp!1798070)))

(assert (= (and d!2039561 condSetEmpty!44295) setIsEmpty!44295))

(assert (= (and d!2039561 (not condSetEmpty!44295)) setNonEmpty!44295))

(assert (= setNonEmpty!44295 b!6499455))

(declare-fun m!7287692 () Bool)

(assert (=> setNonEmpty!44295 m!7287692))

(assert (=> d!2039005 d!2039561))

(declare-fun d!2039563 () Bool)

(assert (=> d!2039563 true))

(declare-fun setRes!44296 () Bool)

(assert (=> d!2039563 setRes!44296))

(declare-fun condSetEmpty!44296 () Bool)

(declare-fun res!2669133 () (InoxSet Context!11518))

(assert (=> d!2039563 (= condSetEmpty!44296 (= res!2669133 ((as const (Array Context!11518 Bool)) false)))))

(assert (=> d!2039563 (= (choose!48229 lt!2391031 lambda!359990) res!2669133)))

(declare-fun setIsEmpty!44296 () Bool)

(assert (=> setIsEmpty!44296 setRes!44296))

(declare-fun setNonEmpty!44296 () Bool)

(declare-fun setElem!44296 () Context!11518)

(declare-fun e!3938466 () Bool)

(declare-fun tp!1798071 () Bool)

(assert (=> setNonEmpty!44296 (= setRes!44296 (and tp!1798071 (inv!84184 setElem!44296) e!3938466))))

(declare-fun setRest!44296 () (InoxSet Context!11518))

(assert (=> setNonEmpty!44296 (= res!2669133 ((_ map or) (store ((as const (Array Context!11518 Bool)) false) setElem!44296 true) setRest!44296))))

(declare-fun b!6499456 () Bool)

(declare-fun tp!1798072 () Bool)

(assert (=> b!6499456 (= e!3938466 tp!1798072)))

(assert (= (and d!2039563 condSetEmpty!44296) setIsEmpty!44296))

(assert (= (and d!2039563 (not condSetEmpty!44296)) setNonEmpty!44296))

(assert (= setNonEmpty!44296 b!6499456))

(declare-fun m!7287694 () Bool)

(assert (=> setNonEmpty!44296 m!7287694))

(assert (=> d!2038923 d!2039563))

(declare-fun d!2039565 () Bool)

(assert (=> d!2039565 (= (isEmptyLang!1773 lt!2391128) ((_ is EmptyLang!16375) lt!2391128))))

(assert (=> b!6498149 d!2039565))

(declare-fun d!2039567 () Bool)

(assert (=> d!2039567 (= (nullable!6368 (h!71748 (exprs!6259 lt!2391016))) (nullableFct!2304 (h!71748 (exprs!6259 lt!2391016))))))

(declare-fun bs!1651173 () Bool)

(assert (= bs!1651173 d!2039567))

(declare-fun m!7287696 () Bool)

(assert (=> bs!1651173 m!7287696))

(assert (=> b!6498086 d!2039567))

(declare-fun d!2039569 () Bool)

(assert (=> d!2039569 (= (Exists!3445 (ite c!1191245 lambda!360034 lambda!360035)) (choose!48233 (ite c!1191245 lambda!360034 lambda!360035)))))

(declare-fun bs!1651174 () Bool)

(assert (= bs!1651174 d!2039569))

(declare-fun m!7287698 () Bool)

(assert (=> bs!1651174 m!7287698))

(assert (=> bm!562904 d!2039569))

(declare-fun d!2039571 () Bool)

(declare-fun c!1191643 () Bool)

(assert (=> d!2039571 (= c!1191643 ((_ is Nil!65301) lt!2391124))))

(declare-fun e!3938469 () (InoxSet Context!11518))

(assert (=> d!2039571 (= (content!12452 lt!2391124) e!3938469)))

(declare-fun b!6499461 () Bool)

(assert (=> b!6499461 (= e!3938469 ((as const (Array Context!11518 Bool)) false))))

(declare-fun b!6499462 () Bool)

(assert (=> b!6499462 (= e!3938469 ((_ map or) (store ((as const (Array Context!11518 Bool)) false) (h!71749 lt!2391124) true) (content!12452 (t!379057 lt!2391124))))))

(assert (= (and d!2039571 c!1191643) b!6499461))

(assert (= (and d!2039571 (not c!1191643)) b!6499462))

(declare-fun m!7287700 () Bool)

(assert (=> b!6499462 m!7287700))

(declare-fun m!7287702 () Bool)

(assert (=> b!6499462 m!7287702))

(assert (=> b!6498095 d!2039571))

(declare-fun b!6499463 () Bool)

(declare-fun e!3938470 () (InoxSet Context!11518))

(assert (=> b!6499463 (= e!3938470 ((as const (Array Context!11518 Bool)) false))))

(declare-fun bm!563173 () Bool)

(declare-fun c!1191644 () Bool)

(declare-fun call!563178 () List!65424)

(declare-fun c!1191646 () Bool)

(declare-fun c!1191645 () Bool)

(declare-fun call!563182 () (InoxSet Context!11518))

(assert (=> bm!563173 (= call!563182 (derivationStepZipperDown!1623 (ite c!1191645 (regOne!33263 (ite c!1191188 (regOne!33263 (reg!16704 (regOne!33262 r!7292))) (ite c!1191189 (regTwo!33262 (reg!16704 (regOne!33262 r!7292))) (ite c!1191187 (regOne!33262 (reg!16704 (regOne!33262 r!7292))) (reg!16704 (reg!16704 (regOne!33262 r!7292))))))) (ite c!1191646 (regTwo!33262 (ite c!1191188 (regOne!33263 (reg!16704 (regOne!33262 r!7292))) (ite c!1191189 (regTwo!33262 (reg!16704 (regOne!33262 r!7292))) (ite c!1191187 (regOne!33262 (reg!16704 (regOne!33262 r!7292))) (reg!16704 (reg!16704 (regOne!33262 r!7292))))))) (ite c!1191644 (regOne!33262 (ite c!1191188 (regOne!33263 (reg!16704 (regOne!33262 r!7292))) (ite c!1191189 (regTwo!33262 (reg!16704 (regOne!33262 r!7292))) (ite c!1191187 (regOne!33262 (reg!16704 (regOne!33262 r!7292))) (reg!16704 (reg!16704 (regOne!33262 r!7292))))))) (reg!16704 (ite c!1191188 (regOne!33263 (reg!16704 (regOne!33262 r!7292))) (ite c!1191189 (regTwo!33262 (reg!16704 (regOne!33262 r!7292))) (ite c!1191187 (regOne!33262 (reg!16704 (regOne!33262 r!7292))) (reg!16704 (reg!16704 (regOne!33262 r!7292)))))))))) (ite (or c!1191645 c!1191646) (ite (or c!1191188 c!1191189) lt!2391011 (Context!11519 call!562881)) (Context!11519 call!563178)) (h!71750 s!2326)))))

(declare-fun b!6499464 () Bool)

(declare-fun e!3938475 () (InoxSet Context!11518))

(declare-fun e!3938473 () (InoxSet Context!11518))

(assert (=> b!6499464 (= e!3938475 e!3938473)))

(assert (=> b!6499464 (= c!1191645 ((_ is Union!16375) (ite c!1191188 (regOne!33263 (reg!16704 (regOne!33262 r!7292))) (ite c!1191189 (regTwo!33262 (reg!16704 (regOne!33262 r!7292))) (ite c!1191187 (regOne!33262 (reg!16704 (regOne!33262 r!7292))) (reg!16704 (reg!16704 (regOne!33262 r!7292))))))))))

(declare-fun bm!563174 () Bool)

(declare-fun call!563179 () List!65424)

(assert (=> bm!563174 (= call!563178 call!563179)))

(declare-fun d!2039573 () Bool)

(declare-fun c!1191647 () Bool)

(assert (=> d!2039573 (= c!1191647 (and ((_ is ElementMatch!16375) (ite c!1191188 (regOne!33263 (reg!16704 (regOne!33262 r!7292))) (ite c!1191189 (regTwo!33262 (reg!16704 (regOne!33262 r!7292))) (ite c!1191187 (regOne!33262 (reg!16704 (regOne!33262 r!7292))) (reg!16704 (reg!16704 (regOne!33262 r!7292))))))) (= (c!1191063 (ite c!1191188 (regOne!33263 (reg!16704 (regOne!33262 r!7292))) (ite c!1191189 (regTwo!33262 (reg!16704 (regOne!33262 r!7292))) (ite c!1191187 (regOne!33262 (reg!16704 (regOne!33262 r!7292))) (reg!16704 (reg!16704 (regOne!33262 r!7292))))))) (h!71750 s!2326))))))

(assert (=> d!2039573 (= (derivationStepZipperDown!1623 (ite c!1191188 (regOne!33263 (reg!16704 (regOne!33262 r!7292))) (ite c!1191189 (regTwo!33262 (reg!16704 (regOne!33262 r!7292))) (ite c!1191187 (regOne!33262 (reg!16704 (regOne!33262 r!7292))) (reg!16704 (reg!16704 (regOne!33262 r!7292)))))) (ite (or c!1191188 c!1191189) lt!2391011 (Context!11519 call!562881)) (h!71750 s!2326)) e!3938475)))

(declare-fun b!6499465 () Bool)

(declare-fun call!563183 () (InoxSet Context!11518))

(assert (=> b!6499465 (= e!3938473 ((_ map or) call!563182 call!563183))))

(declare-fun bm!563175 () Bool)

(assert (=> bm!563175 (= call!563179 ($colon$colon!2226 (exprs!6259 (ite (or c!1191188 c!1191189) lt!2391011 (Context!11519 call!562881))) (ite (or c!1191646 c!1191644) (regTwo!33262 (ite c!1191188 (regOne!33263 (reg!16704 (regOne!33262 r!7292))) (ite c!1191189 (regTwo!33262 (reg!16704 (regOne!33262 r!7292))) (ite c!1191187 (regOne!33262 (reg!16704 (regOne!33262 r!7292))) (reg!16704 (reg!16704 (regOne!33262 r!7292))))))) (ite c!1191188 (regOne!33263 (reg!16704 (regOne!33262 r!7292))) (ite c!1191189 (regTwo!33262 (reg!16704 (regOne!33262 r!7292))) (ite c!1191187 (regOne!33262 (reg!16704 (regOne!33262 r!7292))) (reg!16704 (reg!16704 (regOne!33262 r!7292)))))))))))

(declare-fun b!6499466 () Bool)

(declare-fun e!3938474 () Bool)

(assert (=> b!6499466 (= c!1191646 e!3938474)))

(declare-fun res!2669134 () Bool)

(assert (=> b!6499466 (=> (not res!2669134) (not e!3938474))))

(assert (=> b!6499466 (= res!2669134 ((_ is Concat!25220) (ite c!1191188 (regOne!33263 (reg!16704 (regOne!33262 r!7292))) (ite c!1191189 (regTwo!33262 (reg!16704 (regOne!33262 r!7292))) (ite c!1191187 (regOne!33262 (reg!16704 (regOne!33262 r!7292))) (reg!16704 (reg!16704 (regOne!33262 r!7292))))))))))

(declare-fun e!3938471 () (InoxSet Context!11518))

(assert (=> b!6499466 (= e!3938473 e!3938471)))

(declare-fun b!6499467 () Bool)

(declare-fun e!3938472 () (InoxSet Context!11518))

(assert (=> b!6499467 (= e!3938471 e!3938472)))

(assert (=> b!6499467 (= c!1191644 ((_ is Concat!25220) (ite c!1191188 (regOne!33263 (reg!16704 (regOne!33262 r!7292))) (ite c!1191189 (regTwo!33262 (reg!16704 (regOne!33262 r!7292))) (ite c!1191187 (regOne!33262 (reg!16704 (regOne!33262 r!7292))) (reg!16704 (reg!16704 (regOne!33262 r!7292))))))))))

(declare-fun b!6499468 () Bool)

(declare-fun call!563180 () (InoxSet Context!11518))

(assert (=> b!6499468 (= e!3938472 call!563180)))

(declare-fun b!6499469 () Bool)

(assert (=> b!6499469 (= e!3938474 (nullable!6368 (regOne!33262 (ite c!1191188 (regOne!33263 (reg!16704 (regOne!33262 r!7292))) (ite c!1191189 (regTwo!33262 (reg!16704 (regOne!33262 r!7292))) (ite c!1191187 (regOne!33262 (reg!16704 (regOne!33262 r!7292))) (reg!16704 (reg!16704 (regOne!33262 r!7292)))))))))))

(declare-fun b!6499470 () Bool)

(declare-fun call!563181 () (InoxSet Context!11518))

(assert (=> b!6499470 (= e!3938471 ((_ map or) call!563183 call!563181))))

(declare-fun bm!563176 () Bool)

(assert (=> bm!563176 (= call!563183 (derivationStepZipperDown!1623 (ite c!1191645 (regTwo!33263 (ite c!1191188 (regOne!33263 (reg!16704 (regOne!33262 r!7292))) (ite c!1191189 (regTwo!33262 (reg!16704 (regOne!33262 r!7292))) (ite c!1191187 (regOne!33262 (reg!16704 (regOne!33262 r!7292))) (reg!16704 (reg!16704 (regOne!33262 r!7292))))))) (regOne!33262 (ite c!1191188 (regOne!33263 (reg!16704 (regOne!33262 r!7292))) (ite c!1191189 (regTwo!33262 (reg!16704 (regOne!33262 r!7292))) (ite c!1191187 (regOne!33262 (reg!16704 (regOne!33262 r!7292))) (reg!16704 (reg!16704 (regOne!33262 r!7292)))))))) (ite c!1191645 (ite (or c!1191188 c!1191189) lt!2391011 (Context!11519 call!562881)) (Context!11519 call!563179)) (h!71750 s!2326)))))

(declare-fun b!6499471 () Bool)

(assert (=> b!6499471 (= e!3938475 (store ((as const (Array Context!11518 Bool)) false) (ite (or c!1191188 c!1191189) lt!2391011 (Context!11519 call!562881)) true))))

(declare-fun bm!563177 () Bool)

(assert (=> bm!563177 (= call!563180 call!563181)))

(declare-fun c!1191648 () Bool)

(declare-fun b!6499472 () Bool)

(assert (=> b!6499472 (= c!1191648 ((_ is Star!16375) (ite c!1191188 (regOne!33263 (reg!16704 (regOne!33262 r!7292))) (ite c!1191189 (regTwo!33262 (reg!16704 (regOne!33262 r!7292))) (ite c!1191187 (regOne!33262 (reg!16704 (regOne!33262 r!7292))) (reg!16704 (reg!16704 (regOne!33262 r!7292))))))))))

(assert (=> b!6499472 (= e!3938472 e!3938470)))

(declare-fun b!6499473 () Bool)

(assert (=> b!6499473 (= e!3938470 call!563180)))

(declare-fun bm!563178 () Bool)

(assert (=> bm!563178 (= call!563181 call!563182)))

(assert (= (and d!2039573 c!1191647) b!6499471))

(assert (= (and d!2039573 (not c!1191647)) b!6499464))

(assert (= (and b!6499464 c!1191645) b!6499465))

(assert (= (and b!6499464 (not c!1191645)) b!6499466))

(assert (= (and b!6499466 res!2669134) b!6499469))

(assert (= (and b!6499466 c!1191646) b!6499470))

(assert (= (and b!6499466 (not c!1191646)) b!6499467))

(assert (= (and b!6499467 c!1191644) b!6499468))

(assert (= (and b!6499467 (not c!1191644)) b!6499472))

(assert (= (and b!6499472 c!1191648) b!6499473))

(assert (= (and b!6499472 (not c!1191648)) b!6499463))

(assert (= (or b!6499468 b!6499473) bm!563174))

(assert (= (or b!6499468 b!6499473) bm!563177))

(assert (= (or b!6499470 bm!563174) bm!563175))

(assert (= (or b!6499470 bm!563177) bm!563178))

(assert (= (or b!6499465 b!6499470) bm!563176))

(assert (= (or b!6499465 bm!563178) bm!563173))

(declare-fun m!7287704 () Bool)

(assert (=> bm!563176 m!7287704))

(declare-fun m!7287706 () Bool)

(assert (=> b!6499469 m!7287706))

(declare-fun m!7287708 () Bool)

(assert (=> bm!563173 m!7287708))

(declare-fun m!7287710 () Bool)

(assert (=> b!6499471 m!7287710))

(declare-fun m!7287712 () Bool)

(assert (=> bm!563175 m!7287712))

(assert (=> bm!562876 d!2039573))

(declare-fun b!6499474 () Bool)

(declare-fun e!3938479 () Bool)

(declare-fun e!3938476 () Bool)

(assert (=> b!6499474 (= e!3938479 e!3938476)))

(declare-fun c!1191650 () Bool)

(assert (=> b!6499474 (= c!1191650 ((_ is Union!16375) (ite c!1191207 (reg!16704 r!7292) (ite c!1191208 (regOne!33263 r!7292) (regOne!33262 r!7292)))))))

(declare-fun b!6499475 () Bool)

(declare-fun e!3938477 () Bool)

(assert (=> b!6499475 (= e!3938479 e!3938477)))

(declare-fun res!2669138 () Bool)

(assert (=> b!6499475 (= res!2669138 (not (nullable!6368 (reg!16704 (ite c!1191207 (reg!16704 r!7292) (ite c!1191208 (regOne!33263 r!7292) (regOne!33262 r!7292)))))))))

(assert (=> b!6499475 (=> (not res!2669138) (not e!3938477))))

(declare-fun b!6499476 () Bool)

(declare-fun e!3938482 () Bool)

(declare-fun e!3938481 () Bool)

(assert (=> b!6499476 (= e!3938482 e!3938481)))

(declare-fun res!2669136 () Bool)

(assert (=> b!6499476 (=> (not res!2669136) (not e!3938481))))

(declare-fun call!563184 () Bool)

(assert (=> b!6499476 (= res!2669136 call!563184)))

(declare-fun b!6499477 () Bool)

(declare-fun res!2669137 () Bool)

(assert (=> b!6499477 (=> res!2669137 e!3938482)))

(assert (=> b!6499477 (= res!2669137 (not ((_ is Concat!25220) (ite c!1191207 (reg!16704 r!7292) (ite c!1191208 (regOne!33263 r!7292) (regOne!33262 r!7292))))))))

(assert (=> b!6499477 (= e!3938476 e!3938482)))

(declare-fun d!2039575 () Bool)

(declare-fun res!2669139 () Bool)

(declare-fun e!3938480 () Bool)

(assert (=> d!2039575 (=> res!2669139 e!3938480)))

(assert (=> d!2039575 (= res!2669139 ((_ is ElementMatch!16375) (ite c!1191207 (reg!16704 r!7292) (ite c!1191208 (regOne!33263 r!7292) (regOne!33262 r!7292)))))))

(assert (=> d!2039575 (= (validRegex!8111 (ite c!1191207 (reg!16704 r!7292) (ite c!1191208 (regOne!33263 r!7292) (regOne!33262 r!7292)))) e!3938480)))

(declare-fun bm!563179 () Bool)

(declare-fun call!563185 () Bool)

(declare-fun c!1191649 () Bool)

(assert (=> bm!563179 (= call!563185 (validRegex!8111 (ite c!1191649 (reg!16704 (ite c!1191207 (reg!16704 r!7292) (ite c!1191208 (regOne!33263 r!7292) (regOne!33262 r!7292)))) (ite c!1191650 (regOne!33263 (ite c!1191207 (reg!16704 r!7292) (ite c!1191208 (regOne!33263 r!7292) (regOne!33262 r!7292)))) (regOne!33262 (ite c!1191207 (reg!16704 r!7292) (ite c!1191208 (regOne!33263 r!7292) (regOne!33262 r!7292))))))))))

(declare-fun b!6499478 () Bool)

(assert (=> b!6499478 (= e!3938477 call!563185)))

(declare-fun b!6499479 () Bool)

(declare-fun e!3938478 () Bool)

(declare-fun call!563186 () Bool)

(assert (=> b!6499479 (= e!3938478 call!563186)))

(declare-fun b!6499480 () Bool)

(assert (=> b!6499480 (= e!3938481 call!563186)))

(declare-fun bm!563180 () Bool)

(assert (=> bm!563180 (= call!563186 (validRegex!8111 (ite c!1191650 (regTwo!33263 (ite c!1191207 (reg!16704 r!7292) (ite c!1191208 (regOne!33263 r!7292) (regOne!33262 r!7292)))) (regTwo!33262 (ite c!1191207 (reg!16704 r!7292) (ite c!1191208 (regOne!33263 r!7292) (regOne!33262 r!7292)))))))))

(declare-fun b!6499481 () Bool)

(declare-fun res!2669135 () Bool)

(assert (=> b!6499481 (=> (not res!2669135) (not e!3938478))))

(assert (=> b!6499481 (= res!2669135 call!563184)))

(assert (=> b!6499481 (= e!3938476 e!3938478)))

(declare-fun b!6499482 () Bool)

(assert (=> b!6499482 (= e!3938480 e!3938479)))

(assert (=> b!6499482 (= c!1191649 ((_ is Star!16375) (ite c!1191207 (reg!16704 r!7292) (ite c!1191208 (regOne!33263 r!7292) (regOne!33262 r!7292)))))))

(declare-fun bm!563181 () Bool)

(assert (=> bm!563181 (= call!563184 call!563185)))

(assert (= (and d!2039575 (not res!2669139)) b!6499482))

(assert (= (and b!6499482 c!1191649) b!6499475))

(assert (= (and b!6499482 (not c!1191649)) b!6499474))

(assert (= (and b!6499475 res!2669138) b!6499478))

(assert (= (and b!6499474 c!1191650) b!6499481))

(assert (= (and b!6499474 (not c!1191650)) b!6499477))

(assert (= (and b!6499481 res!2669135) b!6499479))

(assert (= (and b!6499477 (not res!2669137)) b!6499476))

(assert (= (and b!6499476 res!2669136) b!6499480))

(assert (= (or b!6499479 b!6499480) bm!563180))

(assert (= (or b!6499481 b!6499476) bm!563181))

(assert (= (or b!6499478 bm!563181) bm!563179))

(declare-fun m!7287714 () Bool)

(assert (=> b!6499475 m!7287714))

(declare-fun m!7287716 () Bool)

(assert (=> bm!563179 m!7287716))

(declare-fun m!7287718 () Bool)

(assert (=> bm!563180 m!7287718))

(assert (=> bm!562892 d!2039575))

(declare-fun d!2039577 () Bool)

(assert (=> d!2039577 (= ($colon$colon!2226 (exprs!6259 lt!2391011) (ite (or c!1191189 c!1191187) (regTwo!33262 (reg!16704 (regOne!33262 r!7292))) (reg!16704 (regOne!33262 r!7292)))) (Cons!65300 (ite (or c!1191189 c!1191187) (regTwo!33262 (reg!16704 (regOne!33262 r!7292))) (reg!16704 (regOne!33262 r!7292))) (exprs!6259 lt!2391011)))))

(assert (=> bm!562878 d!2039577))

(assert (=> b!6497957 d!2039381))

(assert (=> d!2038957 d!2038955))

(assert (=> d!2038957 d!2038953))

(declare-fun d!2039579 () Bool)

(assert (=> d!2039579 (= (matchR!8558 r!7292 s!2326) (matchRSpec!3476 r!7292 s!2326))))

(assert (=> d!2039579 true))

(declare-fun _$88!5207 () Unit!158835)

(assert (=> d!2039579 (= (choose!48231 r!7292 s!2326) _$88!5207)))

(declare-fun bs!1651175 () Bool)

(assert (= bs!1651175 d!2039579))

(assert (=> bs!1651175 m!7285774))

(assert (=> bs!1651175 m!7285772))

(assert (=> d!2038957 d!2039579))

(assert (=> d!2038957 d!2038937))

(declare-fun b!6499483 () Bool)

(declare-fun e!3938486 () Bool)

(declare-fun e!3938483 () Bool)

(assert (=> b!6499483 (= e!3938486 e!3938483)))

(declare-fun c!1191652 () Bool)

(assert (=> b!6499483 (= c!1191652 ((_ is Union!16375) (ite c!1191208 (regTwo!33263 r!7292) (regTwo!33262 r!7292))))))

(declare-fun b!6499484 () Bool)

(declare-fun e!3938484 () Bool)

(assert (=> b!6499484 (= e!3938486 e!3938484)))

(declare-fun res!2669143 () Bool)

(assert (=> b!6499484 (= res!2669143 (not (nullable!6368 (reg!16704 (ite c!1191208 (regTwo!33263 r!7292) (regTwo!33262 r!7292))))))))

(assert (=> b!6499484 (=> (not res!2669143) (not e!3938484))))

(declare-fun b!6499485 () Bool)

(declare-fun e!3938489 () Bool)

(declare-fun e!3938488 () Bool)

(assert (=> b!6499485 (= e!3938489 e!3938488)))

(declare-fun res!2669141 () Bool)

(assert (=> b!6499485 (=> (not res!2669141) (not e!3938488))))

(declare-fun call!563187 () Bool)

(assert (=> b!6499485 (= res!2669141 call!563187)))

(declare-fun b!6499486 () Bool)

(declare-fun res!2669142 () Bool)

(assert (=> b!6499486 (=> res!2669142 e!3938489)))

(assert (=> b!6499486 (= res!2669142 (not ((_ is Concat!25220) (ite c!1191208 (regTwo!33263 r!7292) (regTwo!33262 r!7292)))))))

(assert (=> b!6499486 (= e!3938483 e!3938489)))

(declare-fun d!2039581 () Bool)

(declare-fun res!2669144 () Bool)

(declare-fun e!3938487 () Bool)

(assert (=> d!2039581 (=> res!2669144 e!3938487)))

(assert (=> d!2039581 (= res!2669144 ((_ is ElementMatch!16375) (ite c!1191208 (regTwo!33263 r!7292) (regTwo!33262 r!7292))))))

(assert (=> d!2039581 (= (validRegex!8111 (ite c!1191208 (regTwo!33263 r!7292) (regTwo!33262 r!7292))) e!3938487)))

(declare-fun bm!563182 () Bool)

(declare-fun call!563188 () Bool)

(declare-fun c!1191651 () Bool)

(assert (=> bm!563182 (= call!563188 (validRegex!8111 (ite c!1191651 (reg!16704 (ite c!1191208 (regTwo!33263 r!7292) (regTwo!33262 r!7292))) (ite c!1191652 (regOne!33263 (ite c!1191208 (regTwo!33263 r!7292) (regTwo!33262 r!7292))) (regOne!33262 (ite c!1191208 (regTwo!33263 r!7292) (regTwo!33262 r!7292)))))))))

(declare-fun b!6499487 () Bool)

(assert (=> b!6499487 (= e!3938484 call!563188)))

(declare-fun b!6499488 () Bool)

(declare-fun e!3938485 () Bool)

(declare-fun call!563189 () Bool)

(assert (=> b!6499488 (= e!3938485 call!563189)))

(declare-fun b!6499489 () Bool)

(assert (=> b!6499489 (= e!3938488 call!563189)))

(declare-fun bm!563183 () Bool)

(assert (=> bm!563183 (= call!563189 (validRegex!8111 (ite c!1191652 (regTwo!33263 (ite c!1191208 (regTwo!33263 r!7292) (regTwo!33262 r!7292))) (regTwo!33262 (ite c!1191208 (regTwo!33263 r!7292) (regTwo!33262 r!7292))))))))

(declare-fun b!6499490 () Bool)

(declare-fun res!2669140 () Bool)

(assert (=> b!6499490 (=> (not res!2669140) (not e!3938485))))

(assert (=> b!6499490 (= res!2669140 call!563187)))

(assert (=> b!6499490 (= e!3938483 e!3938485)))

(declare-fun b!6499491 () Bool)

(assert (=> b!6499491 (= e!3938487 e!3938486)))

(assert (=> b!6499491 (= c!1191651 ((_ is Star!16375) (ite c!1191208 (regTwo!33263 r!7292) (regTwo!33262 r!7292))))))

(declare-fun bm!563184 () Bool)

(assert (=> bm!563184 (= call!563187 call!563188)))

(assert (= (and d!2039581 (not res!2669144)) b!6499491))

(assert (= (and b!6499491 c!1191651) b!6499484))

(assert (= (and b!6499491 (not c!1191651)) b!6499483))

(assert (= (and b!6499484 res!2669143) b!6499487))

(assert (= (and b!6499483 c!1191652) b!6499490))

(assert (= (and b!6499483 (not c!1191652)) b!6499486))

(assert (= (and b!6499490 res!2669140) b!6499488))

(assert (= (and b!6499486 (not res!2669142)) b!6499485))

(assert (= (and b!6499485 res!2669141) b!6499489))

(assert (= (or b!6499488 b!6499489) bm!563183))

(assert (= (or b!6499490 b!6499485) bm!563184))

(assert (= (or b!6499487 bm!563184) bm!563182))

(declare-fun m!7287720 () Bool)

(assert (=> b!6499484 m!7287720))

(declare-fun m!7287722 () Bool)

(assert (=> bm!563182 m!7287722))

(declare-fun m!7287724 () Bool)

(assert (=> bm!563183 m!7287724))

(assert (=> bm!562893 d!2039581))

(assert (=> b!6498025 d!2039381))

(declare-fun d!2039583 () Bool)

(assert (=> d!2039583 (= (isEmpty!37497 (tail!12307 (unfocusZipperList!1796 zl!343))) ((_ is Nil!65300) (tail!12307 (unfocusZipperList!1796 zl!343))))))

(assert (=> b!6498153 d!2039583))

(declare-fun d!2039585 () Bool)

(assert (=> d!2039585 (= (tail!12307 (unfocusZipperList!1796 zl!343)) (t!379056 (unfocusZipperList!1796 zl!343)))))

(assert (=> b!6498153 d!2039585))

(declare-fun d!2039587 () Bool)

(assert (=> d!2039587 (= (nullable!6368 (h!71748 (exprs!6259 lt!2391002))) (nullableFct!2304 (h!71748 (exprs!6259 lt!2391002))))))

(declare-fun bs!1651176 () Bool)

(assert (= bs!1651176 d!2039587))

(declare-fun m!7287726 () Bool)

(assert (=> bs!1651176 m!7287726))

(assert (=> b!6497853 d!2039587))

(declare-fun b!6499494 () Bool)

(declare-fun res!2669146 () Bool)

(declare-fun e!3938491 () Bool)

(assert (=> b!6499494 (=> (not res!2669146) (not e!3938491))))

(declare-fun lt!2391192 () List!65426)

(assert (=> b!6499494 (= res!2669146 (= (size!40434 lt!2391192) (+ (size!40434 (_1!36657 (get!22646 lt!2391111))) (size!40434 (_2!36657 (get!22646 lt!2391111))))))))

(declare-fun b!6499492 () Bool)

(declare-fun e!3938490 () List!65426)

(assert (=> b!6499492 (= e!3938490 (_2!36657 (get!22646 lt!2391111)))))

(declare-fun d!2039589 () Bool)

(assert (=> d!2039589 e!3938491))

(declare-fun res!2669145 () Bool)

(assert (=> d!2039589 (=> (not res!2669145) (not e!3938491))))

(assert (=> d!2039589 (= res!2669145 (= (content!12454 lt!2391192) ((_ map or) (content!12454 (_1!36657 (get!22646 lt!2391111))) (content!12454 (_2!36657 (get!22646 lt!2391111))))))))

(assert (=> d!2039589 (= lt!2391192 e!3938490)))

(declare-fun c!1191653 () Bool)

(assert (=> d!2039589 (= c!1191653 ((_ is Nil!65302) (_1!36657 (get!22646 lt!2391111))))))

(assert (=> d!2039589 (= (++!14457 (_1!36657 (get!22646 lt!2391111)) (_2!36657 (get!22646 lt!2391111))) lt!2391192)))

(declare-fun b!6499493 () Bool)

(assert (=> b!6499493 (= e!3938490 (Cons!65302 (h!71750 (_1!36657 (get!22646 lt!2391111))) (++!14457 (t!379058 (_1!36657 (get!22646 lt!2391111))) (_2!36657 (get!22646 lt!2391111)))))))

(declare-fun b!6499495 () Bool)

(assert (=> b!6499495 (= e!3938491 (or (not (= (_2!36657 (get!22646 lt!2391111)) Nil!65302)) (= lt!2391192 (_1!36657 (get!22646 lt!2391111)))))))

(assert (= (and d!2039589 c!1191653) b!6499492))

(assert (= (and d!2039589 (not c!1191653)) b!6499493))

(assert (= (and d!2039589 res!2669145) b!6499494))

(assert (= (and b!6499494 res!2669146) b!6499495))

(declare-fun m!7287728 () Bool)

(assert (=> b!6499494 m!7287728))

(declare-fun m!7287730 () Bool)

(assert (=> b!6499494 m!7287730))

(declare-fun m!7287732 () Bool)

(assert (=> b!6499494 m!7287732))

(declare-fun m!7287734 () Bool)

(assert (=> d!2039589 m!7287734))

(declare-fun m!7287736 () Bool)

(assert (=> d!2039589 m!7287736))

(declare-fun m!7287738 () Bool)

(assert (=> d!2039589 m!7287738))

(declare-fun m!7287740 () Bool)

(assert (=> b!6499493 m!7287740))

(assert (=> b!6498063 d!2039589))

(assert (=> b!6498063 d!2039449))

(declare-fun bs!1651177 () Bool)

(declare-fun d!2039591 () Bool)

(assert (= bs!1651177 (and d!2039591 d!2039461)))

(declare-fun lambda!360142 () Int)

(assert (=> bs!1651177 (= lambda!360142 lambda!360120)))

(declare-fun bs!1651178 () Bool)

(assert (= bs!1651178 (and d!2039591 d!2039509)))

(assert (=> bs!1651178 (= lambda!360142 lambda!360131)))

(declare-fun bs!1651179 () Bool)

(assert (= bs!1651179 (and d!2039591 d!2039485)))

(assert (=> bs!1651179 (= lambda!360142 lambda!360129)))

(declare-fun bs!1651180 () Bool)

(assert (= bs!1651180 (and d!2039591 d!2039371)))

(assert (=> bs!1651180 (= lambda!360142 lambda!360115)))

(declare-fun bs!1651181 () Bool)

(assert (= bs!1651181 (and d!2039591 d!2039435)))

(assert (=> bs!1651181 (= lambda!360142 lambda!360117)))

(assert (=> d!2039591 (= (nullableZipper!2130 lt!2391025) (exists!2623 lt!2391025 lambda!360142))))

(declare-fun bs!1651182 () Bool)

(assert (= bs!1651182 d!2039591))

(declare-fun m!7287742 () Bool)

(assert (=> bs!1651182 m!7287742))

(assert (=> b!6497926 d!2039591))

(declare-fun d!2039593 () Bool)

(assert (=> d!2039593 (= (isConcat!1288 lt!2391092) ((_ is Concat!25220) lt!2391092))))

(assert (=> b!6497917 d!2039593))

(declare-fun d!2039595 () Bool)

(assert (=> d!2039595 (= (nullable!6368 (h!71748 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343)))))))) (nullableFct!2304 (h!71748 (exprs!6259 (Context!11519 (Cons!65300 (h!71748 (exprs!6259 (h!71749 zl!343))) (t!379056 (exprs!6259 (h!71749 zl!343)))))))))))

(declare-fun bs!1651183 () Bool)

(assert (= bs!1651183 d!2039595))

(declare-fun m!7287744 () Bool)

(assert (=> bs!1651183 m!7287744))

(assert (=> b!6498098 d!2039595))

(declare-fun b!6499496 () Bool)

(declare-fun e!3938492 () Bool)

(assert (=> b!6499496 (= e!3938492 tp_is_empty!42003)))

(declare-fun b!6499498 () Bool)

(declare-fun tp!1798076 () Bool)

(assert (=> b!6499498 (= e!3938492 tp!1798076)))

(declare-fun b!6499499 () Bool)

(declare-fun tp!1798077 () Bool)

(declare-fun tp!1798073 () Bool)

(assert (=> b!6499499 (= e!3938492 (and tp!1798077 tp!1798073))))

(assert (=> b!6498205 (= tp!1797882 e!3938492)))

(declare-fun b!6499497 () Bool)

(declare-fun tp!1798075 () Bool)

(declare-fun tp!1798074 () Bool)

(assert (=> b!6499497 (= e!3938492 (and tp!1798075 tp!1798074))))

(assert (= (and b!6498205 ((_ is ElementMatch!16375) (regOne!33263 (reg!16704 r!7292)))) b!6499496))

(assert (= (and b!6498205 ((_ is Concat!25220) (regOne!33263 (reg!16704 r!7292)))) b!6499497))

(assert (= (and b!6498205 ((_ is Star!16375) (regOne!33263 (reg!16704 r!7292)))) b!6499498))

(assert (= (and b!6498205 ((_ is Union!16375) (regOne!33263 (reg!16704 r!7292)))) b!6499499))

(declare-fun b!6499500 () Bool)

(declare-fun e!3938493 () Bool)

(assert (=> b!6499500 (= e!3938493 tp_is_empty!42003)))

(declare-fun b!6499502 () Bool)

(declare-fun tp!1798081 () Bool)

(assert (=> b!6499502 (= e!3938493 tp!1798081)))

(declare-fun b!6499503 () Bool)

(declare-fun tp!1798082 () Bool)

(declare-fun tp!1798078 () Bool)

(assert (=> b!6499503 (= e!3938493 (and tp!1798082 tp!1798078))))

(assert (=> b!6498205 (= tp!1797878 e!3938493)))

(declare-fun b!6499501 () Bool)

(declare-fun tp!1798080 () Bool)

(declare-fun tp!1798079 () Bool)

(assert (=> b!6499501 (= e!3938493 (and tp!1798080 tp!1798079))))

(assert (= (and b!6498205 ((_ is ElementMatch!16375) (regTwo!33263 (reg!16704 r!7292)))) b!6499500))

(assert (= (and b!6498205 ((_ is Concat!25220) (regTwo!33263 (reg!16704 r!7292)))) b!6499501))

(assert (= (and b!6498205 ((_ is Star!16375) (regTwo!33263 (reg!16704 r!7292)))) b!6499502))

(assert (= (and b!6498205 ((_ is Union!16375) (regTwo!33263 (reg!16704 r!7292)))) b!6499503))

(declare-fun b!6499504 () Bool)

(declare-fun e!3938494 () Bool)

(assert (=> b!6499504 (= e!3938494 tp_is_empty!42003)))

(declare-fun b!6499506 () Bool)

(declare-fun tp!1798086 () Bool)

(assert (=> b!6499506 (= e!3938494 tp!1798086)))

(declare-fun b!6499507 () Bool)

(declare-fun tp!1798087 () Bool)

(declare-fun tp!1798083 () Bool)

(assert (=> b!6499507 (= e!3938494 (and tp!1798087 tp!1798083))))

(assert (=> b!6498196 (= tp!1797871 e!3938494)))

(declare-fun b!6499505 () Bool)

(declare-fun tp!1798085 () Bool)

(declare-fun tp!1798084 () Bool)

(assert (=> b!6499505 (= e!3938494 (and tp!1798085 tp!1798084))))

(assert (= (and b!6498196 ((_ is ElementMatch!16375) (reg!16704 (regOne!33263 r!7292)))) b!6499504))

(assert (= (and b!6498196 ((_ is Concat!25220) (reg!16704 (regOne!33263 r!7292)))) b!6499505))

(assert (= (and b!6498196 ((_ is Star!16375) (reg!16704 (regOne!33263 r!7292)))) b!6499506))

(assert (= (and b!6498196 ((_ is Union!16375) (reg!16704 (regOne!33263 r!7292)))) b!6499507))

(declare-fun b!6499508 () Bool)

(declare-fun e!3938495 () Bool)

(assert (=> b!6499508 (= e!3938495 tp_is_empty!42003)))

(declare-fun b!6499510 () Bool)

(declare-fun tp!1798091 () Bool)

(assert (=> b!6499510 (= e!3938495 tp!1798091)))

(declare-fun b!6499511 () Bool)

(declare-fun tp!1798092 () Bool)

(declare-fun tp!1798088 () Bool)

(assert (=> b!6499511 (= e!3938495 (and tp!1798092 tp!1798088))))

(assert (=> b!6498187 (= tp!1797860 e!3938495)))

(declare-fun b!6499509 () Bool)

(declare-fun tp!1798090 () Bool)

(declare-fun tp!1798089 () Bool)

(assert (=> b!6499509 (= e!3938495 (and tp!1798090 tp!1798089))))

(assert (= (and b!6498187 ((_ is ElementMatch!16375) (regOne!33262 (regOne!33262 r!7292)))) b!6499508))

(assert (= (and b!6498187 ((_ is Concat!25220) (regOne!33262 (regOne!33262 r!7292)))) b!6499509))

(assert (= (and b!6498187 ((_ is Star!16375) (regOne!33262 (regOne!33262 r!7292)))) b!6499510))

(assert (= (and b!6498187 ((_ is Union!16375) (regOne!33262 (regOne!33262 r!7292)))) b!6499511))

(declare-fun b!6499512 () Bool)

(declare-fun e!3938496 () Bool)

(assert (=> b!6499512 (= e!3938496 tp_is_empty!42003)))

(declare-fun b!6499514 () Bool)

(declare-fun tp!1798096 () Bool)

(assert (=> b!6499514 (= e!3938496 tp!1798096)))

(declare-fun b!6499515 () Bool)

(declare-fun tp!1798097 () Bool)

(declare-fun tp!1798093 () Bool)

(assert (=> b!6499515 (= e!3938496 (and tp!1798097 tp!1798093))))

(assert (=> b!6498187 (= tp!1797859 e!3938496)))

(declare-fun b!6499513 () Bool)

(declare-fun tp!1798095 () Bool)

(declare-fun tp!1798094 () Bool)

(assert (=> b!6499513 (= e!3938496 (and tp!1798095 tp!1798094))))

(assert (= (and b!6498187 ((_ is ElementMatch!16375) (regTwo!33262 (regOne!33262 r!7292)))) b!6499512))

(assert (= (and b!6498187 ((_ is Concat!25220) (regTwo!33262 (regOne!33262 r!7292)))) b!6499513))

(assert (= (and b!6498187 ((_ is Star!16375) (regTwo!33262 (regOne!33262 r!7292)))) b!6499514))

(assert (= (and b!6498187 ((_ is Union!16375) (regTwo!33262 (regOne!33262 r!7292)))) b!6499515))

(declare-fun b!6499516 () Bool)

(declare-fun e!3938497 () Bool)

(assert (=> b!6499516 (= e!3938497 tp_is_empty!42003)))

(declare-fun b!6499518 () Bool)

(declare-fun tp!1798101 () Bool)

(assert (=> b!6499518 (= e!3938497 tp!1798101)))

(declare-fun b!6499519 () Bool)

(declare-fun tp!1798102 () Bool)

(declare-fun tp!1798098 () Bool)

(assert (=> b!6499519 (= e!3938497 (and tp!1798102 tp!1798098))))

(assert (=> b!6498204 (= tp!1797881 e!3938497)))

(declare-fun b!6499517 () Bool)

(declare-fun tp!1798100 () Bool)

(declare-fun tp!1798099 () Bool)

(assert (=> b!6499517 (= e!3938497 (and tp!1798100 tp!1798099))))

(assert (= (and b!6498204 ((_ is ElementMatch!16375) (reg!16704 (reg!16704 r!7292)))) b!6499516))

(assert (= (and b!6498204 ((_ is Concat!25220) (reg!16704 (reg!16704 r!7292)))) b!6499517))

(assert (= (and b!6498204 ((_ is Star!16375) (reg!16704 (reg!16704 r!7292)))) b!6499518))

(assert (= (and b!6498204 ((_ is Union!16375) (reg!16704 (reg!16704 r!7292)))) b!6499519))

(declare-fun b!6499520 () Bool)

(declare-fun e!3938498 () Bool)

(assert (=> b!6499520 (= e!3938498 tp_is_empty!42003)))

(declare-fun b!6499522 () Bool)

(declare-fun tp!1798106 () Bool)

(assert (=> b!6499522 (= e!3938498 tp!1798106)))

(declare-fun b!6499523 () Bool)

(declare-fun tp!1798107 () Bool)

(declare-fun tp!1798103 () Bool)

(assert (=> b!6499523 (= e!3938498 (and tp!1798107 tp!1798103))))

(assert (=> b!6498195 (= tp!1797870 e!3938498)))

(declare-fun b!6499521 () Bool)

(declare-fun tp!1798105 () Bool)

(declare-fun tp!1798104 () Bool)

(assert (=> b!6499521 (= e!3938498 (and tp!1798105 tp!1798104))))

(assert (= (and b!6498195 ((_ is ElementMatch!16375) (regOne!33262 (regOne!33263 r!7292)))) b!6499520))

(assert (= (and b!6498195 ((_ is Concat!25220) (regOne!33262 (regOne!33263 r!7292)))) b!6499521))

(assert (= (and b!6498195 ((_ is Star!16375) (regOne!33262 (regOne!33263 r!7292)))) b!6499522))

(assert (= (and b!6498195 ((_ is Union!16375) (regOne!33262 (regOne!33263 r!7292)))) b!6499523))

(declare-fun b!6499524 () Bool)

(declare-fun e!3938499 () Bool)

(assert (=> b!6499524 (= e!3938499 tp_is_empty!42003)))

(declare-fun b!6499526 () Bool)

(declare-fun tp!1798111 () Bool)

(assert (=> b!6499526 (= e!3938499 tp!1798111)))

(declare-fun b!6499527 () Bool)

(declare-fun tp!1798112 () Bool)

(declare-fun tp!1798108 () Bool)

(assert (=> b!6499527 (= e!3938499 (and tp!1798112 tp!1798108))))

(assert (=> b!6498195 (= tp!1797869 e!3938499)))

(declare-fun b!6499525 () Bool)

(declare-fun tp!1798110 () Bool)

(declare-fun tp!1798109 () Bool)

(assert (=> b!6499525 (= e!3938499 (and tp!1798110 tp!1798109))))

(assert (= (and b!6498195 ((_ is ElementMatch!16375) (regTwo!33262 (regOne!33263 r!7292)))) b!6499524))

(assert (= (and b!6498195 ((_ is Concat!25220) (regTwo!33262 (regOne!33263 r!7292)))) b!6499525))

(assert (= (and b!6498195 ((_ is Star!16375) (regTwo!33262 (regOne!33263 r!7292)))) b!6499526))

(assert (= (and b!6498195 ((_ is Union!16375) (regTwo!33262 (regOne!33263 r!7292)))) b!6499527))

(declare-fun b!6499528 () Bool)

(declare-fun e!3938500 () Bool)

(declare-fun tp!1798113 () Bool)

(declare-fun tp!1798114 () Bool)

(assert (=> b!6499528 (= e!3938500 (and tp!1798113 tp!1798114))))

(assert (=> b!6498213 (= tp!1797887 e!3938500)))

(assert (= (and b!6498213 ((_ is Cons!65300) (exprs!6259 (h!71749 (t!379057 zl!343))))) b!6499528))

(declare-fun b!6499529 () Bool)

(declare-fun e!3938501 () Bool)

(assert (=> b!6499529 (= e!3938501 tp_is_empty!42003)))

(declare-fun b!6499531 () Bool)

(declare-fun tp!1798118 () Bool)

(assert (=> b!6499531 (= e!3938501 tp!1798118)))

(declare-fun b!6499532 () Bool)

(declare-fun tp!1798119 () Bool)

(declare-fun tp!1798115 () Bool)

(assert (=> b!6499532 (= e!3938501 (and tp!1798119 tp!1798115))))

(assert (=> b!6498189 (= tp!1797862 e!3938501)))

(declare-fun b!6499530 () Bool)

(declare-fun tp!1798117 () Bool)

(declare-fun tp!1798116 () Bool)

(assert (=> b!6499530 (= e!3938501 (and tp!1798117 tp!1798116))))

(assert (= (and b!6498189 ((_ is ElementMatch!16375) (regOne!33263 (regOne!33262 r!7292)))) b!6499529))

(assert (= (and b!6498189 ((_ is Concat!25220) (regOne!33263 (regOne!33262 r!7292)))) b!6499530))

(assert (= (and b!6498189 ((_ is Star!16375) (regOne!33263 (regOne!33262 r!7292)))) b!6499531))

(assert (= (and b!6498189 ((_ is Union!16375) (regOne!33263 (regOne!33262 r!7292)))) b!6499532))

(declare-fun b!6499533 () Bool)

(declare-fun e!3938502 () Bool)

(assert (=> b!6499533 (= e!3938502 tp_is_empty!42003)))

(declare-fun b!6499535 () Bool)

(declare-fun tp!1798123 () Bool)

(assert (=> b!6499535 (= e!3938502 tp!1798123)))

(declare-fun b!6499536 () Bool)

(declare-fun tp!1798124 () Bool)

(declare-fun tp!1798120 () Bool)

(assert (=> b!6499536 (= e!3938502 (and tp!1798124 tp!1798120))))

(assert (=> b!6498189 (= tp!1797858 e!3938502)))

(declare-fun b!6499534 () Bool)

(declare-fun tp!1798122 () Bool)

(declare-fun tp!1798121 () Bool)

(assert (=> b!6499534 (= e!3938502 (and tp!1798122 tp!1798121))))

(assert (= (and b!6498189 ((_ is ElementMatch!16375) (regTwo!33263 (regOne!33262 r!7292)))) b!6499533))

(assert (= (and b!6498189 ((_ is Concat!25220) (regTwo!33263 (regOne!33262 r!7292)))) b!6499534))

(assert (= (and b!6498189 ((_ is Star!16375) (regTwo!33263 (regOne!33262 r!7292)))) b!6499535))

(assert (= (and b!6498189 ((_ is Union!16375) (regTwo!33263 (regOne!33262 r!7292)))) b!6499536))

(declare-fun b!6499537 () Bool)

(declare-fun e!3938503 () Bool)

(assert (=> b!6499537 (= e!3938503 tp_is_empty!42003)))

(declare-fun b!6499539 () Bool)

(declare-fun tp!1798128 () Bool)

(assert (=> b!6499539 (= e!3938503 tp!1798128)))

(declare-fun b!6499540 () Bool)

(declare-fun tp!1798129 () Bool)

(declare-fun tp!1798125 () Bool)

(assert (=> b!6499540 (= e!3938503 (and tp!1798129 tp!1798125))))

(assert (=> b!6498197 (= tp!1797872 e!3938503)))

(declare-fun b!6499538 () Bool)

(declare-fun tp!1798127 () Bool)

(declare-fun tp!1798126 () Bool)

(assert (=> b!6499538 (= e!3938503 (and tp!1798127 tp!1798126))))

(assert (= (and b!6498197 ((_ is ElementMatch!16375) (regOne!33263 (regOne!33263 r!7292)))) b!6499537))

(assert (= (and b!6498197 ((_ is Concat!25220) (regOne!33263 (regOne!33263 r!7292)))) b!6499538))

(assert (= (and b!6498197 ((_ is Star!16375) (regOne!33263 (regOne!33263 r!7292)))) b!6499539))

(assert (= (and b!6498197 ((_ is Union!16375) (regOne!33263 (regOne!33263 r!7292)))) b!6499540))

(declare-fun b!6499541 () Bool)

(declare-fun e!3938504 () Bool)

(assert (=> b!6499541 (= e!3938504 tp_is_empty!42003)))

(declare-fun b!6499543 () Bool)

(declare-fun tp!1798133 () Bool)

(assert (=> b!6499543 (= e!3938504 tp!1798133)))

(declare-fun b!6499544 () Bool)

(declare-fun tp!1798134 () Bool)

(declare-fun tp!1798130 () Bool)

(assert (=> b!6499544 (= e!3938504 (and tp!1798134 tp!1798130))))

(assert (=> b!6498197 (= tp!1797868 e!3938504)))

(declare-fun b!6499542 () Bool)

(declare-fun tp!1798132 () Bool)

(declare-fun tp!1798131 () Bool)

(assert (=> b!6499542 (= e!3938504 (and tp!1798132 tp!1798131))))

(assert (= (and b!6498197 ((_ is ElementMatch!16375) (regTwo!33263 (regOne!33263 r!7292)))) b!6499541))

(assert (= (and b!6498197 ((_ is Concat!25220) (regTwo!33263 (regOne!33263 r!7292)))) b!6499542))

(assert (= (and b!6498197 ((_ is Star!16375) (regTwo!33263 (regOne!33263 r!7292)))) b!6499543))

(assert (= (and b!6498197 ((_ is Union!16375) (regTwo!33263 (regOne!33263 r!7292)))) b!6499544))

(declare-fun b!6499546 () Bool)

(declare-fun e!3938506 () Bool)

(declare-fun tp!1798135 () Bool)

(assert (=> b!6499546 (= e!3938506 tp!1798135)))

(declare-fun b!6499545 () Bool)

(declare-fun tp!1798136 () Bool)

(declare-fun e!3938505 () Bool)

(assert (=> b!6499545 (= e!3938505 (and (inv!84184 (h!71749 (t!379057 (t!379057 zl!343)))) e!3938506 tp!1798136))))

(assert (=> b!6498212 (= tp!1797888 e!3938505)))

(assert (= b!6499545 b!6499546))

(assert (= (and b!6498212 ((_ is Cons!65301) (t!379057 (t!379057 zl!343)))) b!6499545))

(declare-fun m!7287746 () Bool)

(assert (=> b!6499545 m!7287746))

(declare-fun b!6499547 () Bool)

(declare-fun e!3938507 () Bool)

(assert (=> b!6499547 (= e!3938507 tp_is_empty!42003)))

(declare-fun b!6499549 () Bool)

(declare-fun tp!1798140 () Bool)

(assert (=> b!6499549 (= e!3938507 tp!1798140)))

(declare-fun b!6499550 () Bool)

(declare-fun tp!1798141 () Bool)

(declare-fun tp!1798137 () Bool)

(assert (=> b!6499550 (= e!3938507 (and tp!1798141 tp!1798137))))

(assert (=> b!6498188 (= tp!1797861 e!3938507)))

(declare-fun b!6499548 () Bool)

(declare-fun tp!1798139 () Bool)

(declare-fun tp!1798138 () Bool)

(assert (=> b!6499548 (= e!3938507 (and tp!1798139 tp!1798138))))

(assert (= (and b!6498188 ((_ is ElementMatch!16375) (reg!16704 (regOne!33262 r!7292)))) b!6499547))

(assert (= (and b!6498188 ((_ is Concat!25220) (reg!16704 (regOne!33262 r!7292)))) b!6499548))

(assert (= (and b!6498188 ((_ is Star!16375) (reg!16704 (regOne!33262 r!7292)))) b!6499549))

(assert (= (and b!6498188 ((_ is Union!16375) (reg!16704 (regOne!33262 r!7292)))) b!6499550))

(declare-fun b!6499551 () Bool)

(declare-fun e!3938508 () Bool)

(assert (=> b!6499551 (= e!3938508 tp_is_empty!42003)))

(declare-fun b!6499553 () Bool)

(declare-fun tp!1798145 () Bool)

(assert (=> b!6499553 (= e!3938508 tp!1798145)))

(declare-fun b!6499554 () Bool)

(declare-fun tp!1798146 () Bool)

(declare-fun tp!1798142 () Bool)

(assert (=> b!6499554 (= e!3938508 (and tp!1798146 tp!1798142))))

(assert (=> b!6498174 (= tp!1797844 e!3938508)))

(declare-fun b!6499552 () Bool)

(declare-fun tp!1798144 () Bool)

(declare-fun tp!1798143 () Bool)

(assert (=> b!6499552 (= e!3938508 (and tp!1798144 tp!1798143))))

(assert (= (and b!6498174 ((_ is ElementMatch!16375) (h!71748 (exprs!6259 (h!71749 zl!343))))) b!6499551))

(assert (= (and b!6498174 ((_ is Concat!25220) (h!71748 (exprs!6259 (h!71749 zl!343))))) b!6499552))

(assert (= (and b!6498174 ((_ is Star!16375) (h!71748 (exprs!6259 (h!71749 zl!343))))) b!6499553))

(assert (= (and b!6498174 ((_ is Union!16375) (h!71748 (exprs!6259 (h!71749 zl!343))))) b!6499554))

(declare-fun b!6499555 () Bool)

(declare-fun e!3938509 () Bool)

(declare-fun tp!1798147 () Bool)

(declare-fun tp!1798148 () Bool)

(assert (=> b!6499555 (= e!3938509 (and tp!1798147 tp!1798148))))

(assert (=> b!6498174 (= tp!1797845 e!3938509)))

(assert (= (and b!6498174 ((_ is Cons!65300) (t!379056 (exprs!6259 (h!71749 zl!343))))) b!6499555))

(declare-fun condSetEmpty!44297 () Bool)

(assert (=> setNonEmpty!44283 (= condSetEmpty!44297 (= setRest!44283 ((as const (Array Context!11518 Bool)) false)))))

(declare-fun setRes!44297 () Bool)

(assert (=> setNonEmpty!44283 (= tp!1797838 setRes!44297)))

(declare-fun setIsEmpty!44297 () Bool)

(assert (=> setIsEmpty!44297 setRes!44297))

(declare-fun setNonEmpty!44297 () Bool)

(declare-fun tp!1798149 () Bool)

(declare-fun setElem!44297 () Context!11518)

(declare-fun e!3938510 () Bool)

(assert (=> setNonEmpty!44297 (= setRes!44297 (and tp!1798149 (inv!84184 setElem!44297) e!3938510))))

(declare-fun setRest!44297 () (InoxSet Context!11518))

(assert (=> setNonEmpty!44297 (= setRest!44283 ((_ map or) (store ((as const (Array Context!11518 Bool)) false) setElem!44297 true) setRest!44297))))

(declare-fun b!6499556 () Bool)

(declare-fun tp!1798150 () Bool)

(assert (=> b!6499556 (= e!3938510 tp!1798150)))

(assert (= (and setNonEmpty!44283 condSetEmpty!44297) setIsEmpty!44297))

(assert (= (and setNonEmpty!44283 (not condSetEmpty!44297)) setNonEmpty!44297))

(assert (= setNonEmpty!44297 b!6499556))

(declare-fun m!7287748 () Bool)

(assert (=> setNonEmpty!44297 m!7287748))

(declare-fun b!6499557 () Bool)

(declare-fun e!3938511 () Bool)

(declare-fun tp!1798151 () Bool)

(declare-fun tp!1798152 () Bool)

(assert (=> b!6499557 (= e!3938511 (and tp!1798151 tp!1798152))))

(assert (=> b!6498169 (= tp!1797839 e!3938511)))

(assert (= (and b!6498169 ((_ is Cons!65300) (exprs!6259 setElem!44283))) b!6499557))

(declare-fun b!6499558 () Bool)

(declare-fun e!3938512 () Bool)

(assert (=> b!6499558 (= e!3938512 tp_is_empty!42003)))

(declare-fun b!6499560 () Bool)

(declare-fun tp!1798156 () Bool)

(assert (=> b!6499560 (= e!3938512 tp!1798156)))

(declare-fun b!6499561 () Bool)

(declare-fun tp!1798157 () Bool)

(declare-fun tp!1798153 () Bool)

(assert (=> b!6499561 (= e!3938512 (and tp!1798157 tp!1798153))))

(assert (=> b!6498191 (= tp!1797865 e!3938512)))

(declare-fun b!6499559 () Bool)

(declare-fun tp!1798155 () Bool)

(declare-fun tp!1798154 () Bool)

(assert (=> b!6499559 (= e!3938512 (and tp!1798155 tp!1798154))))

(assert (= (and b!6498191 ((_ is ElementMatch!16375) (regOne!33262 (regTwo!33262 r!7292)))) b!6499558))

(assert (= (and b!6498191 ((_ is Concat!25220) (regOne!33262 (regTwo!33262 r!7292)))) b!6499559))

(assert (= (and b!6498191 ((_ is Star!16375) (regOne!33262 (regTwo!33262 r!7292)))) b!6499560))

(assert (= (and b!6498191 ((_ is Union!16375) (regOne!33262 (regTwo!33262 r!7292)))) b!6499561))

(declare-fun b!6499562 () Bool)

(declare-fun e!3938513 () Bool)

(assert (=> b!6499562 (= e!3938513 tp_is_empty!42003)))

(declare-fun b!6499564 () Bool)

(declare-fun tp!1798161 () Bool)

(assert (=> b!6499564 (= e!3938513 tp!1798161)))

(declare-fun b!6499565 () Bool)

(declare-fun tp!1798162 () Bool)

(declare-fun tp!1798158 () Bool)

(assert (=> b!6499565 (= e!3938513 (and tp!1798162 tp!1798158))))

(assert (=> b!6498191 (= tp!1797864 e!3938513)))

(declare-fun b!6499563 () Bool)

(declare-fun tp!1798160 () Bool)

(declare-fun tp!1798159 () Bool)

(assert (=> b!6499563 (= e!3938513 (and tp!1798160 tp!1798159))))

(assert (= (and b!6498191 ((_ is ElementMatch!16375) (regTwo!33262 (regTwo!33262 r!7292)))) b!6499562))

(assert (= (and b!6498191 ((_ is Concat!25220) (regTwo!33262 (regTwo!33262 r!7292)))) b!6499563))

(assert (= (and b!6498191 ((_ is Star!16375) (regTwo!33262 (regTwo!33262 r!7292)))) b!6499564))

(assert (= (and b!6498191 ((_ is Union!16375) (regTwo!33262 (regTwo!33262 r!7292)))) b!6499565))

(declare-fun b!6499566 () Bool)

(declare-fun e!3938514 () Bool)

(assert (=> b!6499566 (= e!3938514 tp_is_empty!42003)))

(declare-fun b!6499568 () Bool)

(declare-fun tp!1798166 () Bool)

(assert (=> b!6499568 (= e!3938514 tp!1798166)))

(declare-fun b!6499569 () Bool)

(declare-fun tp!1798167 () Bool)

(declare-fun tp!1798163 () Bool)

(assert (=> b!6499569 (= e!3938514 (and tp!1798167 tp!1798163))))

(assert (=> b!6498201 (= tp!1797877 e!3938514)))

(declare-fun b!6499567 () Bool)

(declare-fun tp!1798165 () Bool)

(declare-fun tp!1798164 () Bool)

(assert (=> b!6499567 (= e!3938514 (and tp!1798165 tp!1798164))))

(assert (= (and b!6498201 ((_ is ElementMatch!16375) (regOne!33263 (regTwo!33263 r!7292)))) b!6499566))

(assert (= (and b!6498201 ((_ is Concat!25220) (regOne!33263 (regTwo!33263 r!7292)))) b!6499567))

(assert (= (and b!6498201 ((_ is Star!16375) (regOne!33263 (regTwo!33263 r!7292)))) b!6499568))

(assert (= (and b!6498201 ((_ is Union!16375) (regOne!33263 (regTwo!33263 r!7292)))) b!6499569))

(declare-fun b!6499570 () Bool)

(declare-fun e!3938515 () Bool)

(assert (=> b!6499570 (= e!3938515 tp_is_empty!42003)))

(declare-fun b!6499572 () Bool)

(declare-fun tp!1798171 () Bool)

(assert (=> b!6499572 (= e!3938515 tp!1798171)))

(declare-fun b!6499573 () Bool)

(declare-fun tp!1798172 () Bool)

(declare-fun tp!1798168 () Bool)

(assert (=> b!6499573 (= e!3938515 (and tp!1798172 tp!1798168))))

(assert (=> b!6498201 (= tp!1797873 e!3938515)))

(declare-fun b!6499571 () Bool)

(declare-fun tp!1798170 () Bool)

(declare-fun tp!1798169 () Bool)

(assert (=> b!6499571 (= e!3938515 (and tp!1798170 tp!1798169))))

(assert (= (and b!6498201 ((_ is ElementMatch!16375) (regTwo!33263 (regTwo!33263 r!7292)))) b!6499570))

(assert (= (and b!6498201 ((_ is Concat!25220) (regTwo!33263 (regTwo!33263 r!7292)))) b!6499571))

(assert (= (and b!6498201 ((_ is Star!16375) (regTwo!33263 (regTwo!33263 r!7292)))) b!6499572))

(assert (= (and b!6498201 ((_ is Union!16375) (regTwo!33263 (regTwo!33263 r!7292)))) b!6499573))

(declare-fun b!6499574 () Bool)

(declare-fun e!3938516 () Bool)

(assert (=> b!6499574 (= e!3938516 tp_is_empty!42003)))

(declare-fun b!6499576 () Bool)

(declare-fun tp!1798176 () Bool)

(assert (=> b!6499576 (= e!3938516 tp!1798176)))

(declare-fun b!6499577 () Bool)

(declare-fun tp!1798177 () Bool)

(declare-fun tp!1798173 () Bool)

(assert (=> b!6499577 (= e!3938516 (and tp!1798177 tp!1798173))))

(assert (=> b!6498192 (= tp!1797866 e!3938516)))

(declare-fun b!6499575 () Bool)

(declare-fun tp!1798175 () Bool)

(declare-fun tp!1798174 () Bool)

(assert (=> b!6499575 (= e!3938516 (and tp!1798175 tp!1798174))))

(assert (= (and b!6498192 ((_ is ElementMatch!16375) (reg!16704 (regTwo!33262 r!7292)))) b!6499574))

(assert (= (and b!6498192 ((_ is Concat!25220) (reg!16704 (regTwo!33262 r!7292)))) b!6499575))

(assert (= (and b!6498192 ((_ is Star!16375) (reg!16704 (regTwo!33262 r!7292)))) b!6499576))

(assert (= (and b!6498192 ((_ is Union!16375) (reg!16704 (regTwo!33262 r!7292)))) b!6499577))

(declare-fun b!6499578 () Bool)

(declare-fun e!3938517 () Bool)

(assert (=> b!6499578 (= e!3938517 tp_is_empty!42003)))

(declare-fun b!6499580 () Bool)

(declare-fun tp!1798181 () Bool)

(assert (=> b!6499580 (= e!3938517 tp!1798181)))

(declare-fun b!6499581 () Bool)

(declare-fun tp!1798182 () Bool)

(declare-fun tp!1798178 () Bool)

(assert (=> b!6499581 (= e!3938517 (and tp!1798182 tp!1798178))))

(assert (=> b!6498199 (= tp!1797875 e!3938517)))

(declare-fun b!6499579 () Bool)

(declare-fun tp!1798180 () Bool)

(declare-fun tp!1798179 () Bool)

(assert (=> b!6499579 (= e!3938517 (and tp!1798180 tp!1798179))))

(assert (= (and b!6498199 ((_ is ElementMatch!16375) (regOne!33262 (regTwo!33263 r!7292)))) b!6499578))

(assert (= (and b!6498199 ((_ is Concat!25220) (regOne!33262 (regTwo!33263 r!7292)))) b!6499579))

(assert (= (and b!6498199 ((_ is Star!16375) (regOne!33262 (regTwo!33263 r!7292)))) b!6499580))

(assert (= (and b!6498199 ((_ is Union!16375) (regOne!33262 (regTwo!33263 r!7292)))) b!6499581))

(declare-fun b!6499582 () Bool)

(declare-fun e!3938518 () Bool)

(assert (=> b!6499582 (= e!3938518 tp_is_empty!42003)))

(declare-fun b!6499584 () Bool)

(declare-fun tp!1798186 () Bool)

(assert (=> b!6499584 (= e!3938518 tp!1798186)))

(declare-fun b!6499585 () Bool)

(declare-fun tp!1798187 () Bool)

(declare-fun tp!1798183 () Bool)

(assert (=> b!6499585 (= e!3938518 (and tp!1798187 tp!1798183))))

(assert (=> b!6498199 (= tp!1797874 e!3938518)))

(declare-fun b!6499583 () Bool)

(declare-fun tp!1798185 () Bool)

(declare-fun tp!1798184 () Bool)

(assert (=> b!6499583 (= e!3938518 (and tp!1798185 tp!1798184))))

(assert (= (and b!6498199 ((_ is ElementMatch!16375) (regTwo!33262 (regTwo!33263 r!7292)))) b!6499582))

(assert (= (and b!6498199 ((_ is Concat!25220) (regTwo!33262 (regTwo!33263 r!7292)))) b!6499583))

(assert (= (and b!6498199 ((_ is Star!16375) (regTwo!33262 (regTwo!33263 r!7292)))) b!6499584))

(assert (= (and b!6498199 ((_ is Union!16375) (regTwo!33262 (regTwo!33263 r!7292)))) b!6499585))

(declare-fun b!6499586 () Bool)

(declare-fun e!3938519 () Bool)

(assert (=> b!6499586 (= e!3938519 tp_is_empty!42003)))

(declare-fun b!6499588 () Bool)

(declare-fun tp!1798191 () Bool)

(assert (=> b!6499588 (= e!3938519 tp!1798191)))

(declare-fun b!6499589 () Bool)

(declare-fun tp!1798192 () Bool)

(declare-fun tp!1798188 () Bool)

(assert (=> b!6499589 (= e!3938519 (and tp!1798192 tp!1798188))))

(assert (=> b!6498175 (= tp!1797846 e!3938519)))

(declare-fun b!6499587 () Bool)

(declare-fun tp!1798190 () Bool)

(declare-fun tp!1798189 () Bool)

(assert (=> b!6499587 (= e!3938519 (and tp!1798190 tp!1798189))))

(assert (= (and b!6498175 ((_ is ElementMatch!16375) (h!71748 (exprs!6259 setElem!44277)))) b!6499586))

(assert (= (and b!6498175 ((_ is Concat!25220) (h!71748 (exprs!6259 setElem!44277)))) b!6499587))

(assert (= (and b!6498175 ((_ is Star!16375) (h!71748 (exprs!6259 setElem!44277)))) b!6499588))

(assert (= (and b!6498175 ((_ is Union!16375) (h!71748 (exprs!6259 setElem!44277)))) b!6499589))

(declare-fun b!6499590 () Bool)

(declare-fun e!3938520 () Bool)

(declare-fun tp!1798193 () Bool)

(declare-fun tp!1798194 () Bool)

(assert (=> b!6499590 (= e!3938520 (and tp!1798193 tp!1798194))))

(assert (=> b!6498175 (= tp!1797847 e!3938520)))

(assert (= (and b!6498175 ((_ is Cons!65300) (t!379056 (exprs!6259 setElem!44277)))) b!6499590))

(declare-fun b!6499591 () Bool)

(declare-fun e!3938521 () Bool)

(assert (=> b!6499591 (= e!3938521 tp_is_empty!42003)))

(declare-fun b!6499593 () Bool)

(declare-fun tp!1798198 () Bool)

(assert (=> b!6499593 (= e!3938521 tp!1798198)))

(declare-fun b!6499594 () Bool)

(declare-fun tp!1798199 () Bool)

(declare-fun tp!1798195 () Bool)

(assert (=> b!6499594 (= e!3938521 (and tp!1798199 tp!1798195))))

(assert (=> b!6498200 (= tp!1797876 e!3938521)))

(declare-fun b!6499592 () Bool)

(declare-fun tp!1798197 () Bool)

(declare-fun tp!1798196 () Bool)

(assert (=> b!6499592 (= e!3938521 (and tp!1798197 tp!1798196))))

(assert (= (and b!6498200 ((_ is ElementMatch!16375) (reg!16704 (regTwo!33263 r!7292)))) b!6499591))

(assert (= (and b!6498200 ((_ is Concat!25220) (reg!16704 (regTwo!33263 r!7292)))) b!6499592))

(assert (= (and b!6498200 ((_ is Star!16375) (reg!16704 (regTwo!33263 r!7292)))) b!6499593))

(assert (= (and b!6498200 ((_ is Union!16375) (reg!16704 (regTwo!33263 r!7292)))) b!6499594))

(declare-fun b!6499595 () Bool)

(declare-fun e!3938522 () Bool)

(declare-fun tp!1798200 () Bool)

(assert (=> b!6499595 (= e!3938522 (and tp_is_empty!42003 tp!1798200))))

(assert (=> b!6498164 (= tp!1797833 e!3938522)))

(assert (= (and b!6498164 ((_ is Cons!65302) (t!379058 (t!379058 s!2326)))) b!6499595))

(declare-fun b!6499596 () Bool)

(declare-fun e!3938523 () Bool)

(assert (=> b!6499596 (= e!3938523 tp_is_empty!42003)))

(declare-fun b!6499598 () Bool)

(declare-fun tp!1798204 () Bool)

(assert (=> b!6499598 (= e!3938523 tp!1798204)))

(declare-fun b!6499599 () Bool)

(declare-fun tp!1798205 () Bool)

(declare-fun tp!1798201 () Bool)

(assert (=> b!6499599 (= e!3938523 (and tp!1798205 tp!1798201))))

(assert (=> b!6498193 (= tp!1797867 e!3938523)))

(declare-fun b!6499597 () Bool)

(declare-fun tp!1798203 () Bool)

(declare-fun tp!1798202 () Bool)

(assert (=> b!6499597 (= e!3938523 (and tp!1798203 tp!1798202))))

(assert (= (and b!6498193 ((_ is ElementMatch!16375) (regOne!33263 (regTwo!33262 r!7292)))) b!6499596))

(assert (= (and b!6498193 ((_ is Concat!25220) (regOne!33263 (regTwo!33262 r!7292)))) b!6499597))

(assert (= (and b!6498193 ((_ is Star!16375) (regOne!33263 (regTwo!33262 r!7292)))) b!6499598))

(assert (= (and b!6498193 ((_ is Union!16375) (regOne!33263 (regTwo!33262 r!7292)))) b!6499599))

(declare-fun b!6499600 () Bool)

(declare-fun e!3938524 () Bool)

(assert (=> b!6499600 (= e!3938524 tp_is_empty!42003)))

(declare-fun b!6499602 () Bool)

(declare-fun tp!1798209 () Bool)

(assert (=> b!6499602 (= e!3938524 tp!1798209)))

(declare-fun b!6499603 () Bool)

(declare-fun tp!1798210 () Bool)

(declare-fun tp!1798206 () Bool)

(assert (=> b!6499603 (= e!3938524 (and tp!1798210 tp!1798206))))

(assert (=> b!6498193 (= tp!1797863 e!3938524)))

(declare-fun b!6499601 () Bool)

(declare-fun tp!1798208 () Bool)

(declare-fun tp!1798207 () Bool)

(assert (=> b!6499601 (= e!3938524 (and tp!1798208 tp!1798207))))

(assert (= (and b!6498193 ((_ is ElementMatch!16375) (regTwo!33263 (regTwo!33262 r!7292)))) b!6499600))

(assert (= (and b!6498193 ((_ is Concat!25220) (regTwo!33263 (regTwo!33262 r!7292)))) b!6499601))

(assert (= (and b!6498193 ((_ is Star!16375) (regTwo!33263 (regTwo!33262 r!7292)))) b!6499602))

(assert (= (and b!6498193 ((_ is Union!16375) (regTwo!33263 (regTwo!33262 r!7292)))) b!6499603))

(declare-fun b!6499604 () Bool)

(declare-fun e!3938525 () Bool)

(assert (=> b!6499604 (= e!3938525 tp_is_empty!42003)))

(declare-fun b!6499606 () Bool)

(declare-fun tp!1798214 () Bool)

(assert (=> b!6499606 (= e!3938525 tp!1798214)))

(declare-fun b!6499607 () Bool)

(declare-fun tp!1798215 () Bool)

(declare-fun tp!1798211 () Bool)

(assert (=> b!6499607 (= e!3938525 (and tp!1798215 tp!1798211))))

(assert (=> b!6498203 (= tp!1797880 e!3938525)))

(declare-fun b!6499605 () Bool)

(declare-fun tp!1798213 () Bool)

(declare-fun tp!1798212 () Bool)

(assert (=> b!6499605 (= e!3938525 (and tp!1798213 tp!1798212))))

(assert (= (and b!6498203 ((_ is ElementMatch!16375) (regOne!33262 (reg!16704 r!7292)))) b!6499604))

(assert (= (and b!6498203 ((_ is Concat!25220) (regOne!33262 (reg!16704 r!7292)))) b!6499605))

(assert (= (and b!6498203 ((_ is Star!16375) (regOne!33262 (reg!16704 r!7292)))) b!6499606))

(assert (= (and b!6498203 ((_ is Union!16375) (regOne!33262 (reg!16704 r!7292)))) b!6499607))

(declare-fun b!6499608 () Bool)

(declare-fun e!3938526 () Bool)

(assert (=> b!6499608 (= e!3938526 tp_is_empty!42003)))

(declare-fun b!6499610 () Bool)

(declare-fun tp!1798219 () Bool)

(assert (=> b!6499610 (= e!3938526 tp!1798219)))

(declare-fun b!6499611 () Bool)

(declare-fun tp!1798220 () Bool)

(declare-fun tp!1798216 () Bool)

(assert (=> b!6499611 (= e!3938526 (and tp!1798220 tp!1798216))))

(assert (=> b!6498203 (= tp!1797879 e!3938526)))

(declare-fun b!6499609 () Bool)

(declare-fun tp!1798218 () Bool)

(declare-fun tp!1798217 () Bool)

(assert (=> b!6499609 (= e!3938526 (and tp!1798218 tp!1798217))))

(assert (= (and b!6498203 ((_ is ElementMatch!16375) (regTwo!33262 (reg!16704 r!7292)))) b!6499608))

(assert (= (and b!6498203 ((_ is Concat!25220) (regTwo!33262 (reg!16704 r!7292)))) b!6499609))

(assert (= (and b!6498203 ((_ is Star!16375) (regTwo!33262 (reg!16704 r!7292)))) b!6499610))

(assert (= (and b!6498203 ((_ is Union!16375) (regTwo!33262 (reg!16704 r!7292)))) b!6499611))

(declare-fun b_lambda!246053 () Bool)

(assert (= b_lambda!246045 (or d!2038993 b_lambda!246053)))

(declare-fun bs!1651184 () Bool)

(declare-fun d!2039597 () Bool)

(assert (= bs!1651184 (and d!2039597 d!2038993)))

(assert (=> bs!1651184 (= (dynLambda!25941 lambda!360051 (h!71748 (exprs!6259 (h!71749 zl!343)))) (validRegex!8111 (h!71748 (exprs!6259 (h!71749 zl!343)))))))

(declare-fun m!7287750 () Bool)

(assert (=> bs!1651184 m!7287750))

(assert (=> b!6499312 d!2039597))

(declare-fun b_lambda!246055 () Bool)

(assert (= b_lambda!246039 (or d!2039013 b_lambda!246055)))

(declare-fun bs!1651185 () Bool)

(declare-fun d!2039599 () Bool)

(assert (= bs!1651185 (and d!2039599 d!2039013)))

(assert (=> bs!1651185 (= (dynLambda!25941 lambda!360052 (h!71748 (exprs!6259 lt!2391002))) (validRegex!8111 (h!71748 (exprs!6259 lt!2391002))))))

(declare-fun m!7287752 () Bool)

(assert (=> bs!1651185 m!7287752))

(assert (=> b!6499185 d!2039599))

(declare-fun b_lambda!246057 () Bool)

(assert (= b_lambda!246033 (or b!6497395 b_lambda!246057)))

(assert (=> d!2039391 d!2039023))

(declare-fun b_lambda!246059 () Bool)

(assert (= b_lambda!246041 (or d!2039017 b_lambda!246059)))

(declare-fun bs!1651186 () Bool)

(declare-fun d!2039601 () Bool)

(assert (= bs!1651186 (and d!2039601 d!2039017)))

(assert (=> bs!1651186 (= (dynLambda!25941 lambda!360058 (h!71748 lt!2391131)) (validRegex!8111 (h!71748 lt!2391131)))))

(declare-fun m!7287754 () Bool)

(assert (=> bs!1651186 m!7287754))

(assert (=> b!6499202 d!2039601))

(declare-fun b_lambda!246061 () Bool)

(assert (= b_lambda!246051 (or b!6497395 b_lambda!246061)))

(assert (=> d!2039551 d!2039025))

(declare-fun b_lambda!246063 () Bool)

(assert (= b_lambda!246037 (or b!6497395 b_lambda!246063)))

(assert (=> d!2039409 d!2039021))

(declare-fun b_lambda!246065 () Bool)

(assert (= b_lambda!246035 (or d!2038941 b_lambda!246065)))

(declare-fun bs!1651187 () Bool)

(declare-fun d!2039603 () Bool)

(assert (= bs!1651187 (and d!2039603 d!2038941)))

(assert (=> bs!1651187 (= (dynLambda!25941 lambda!360027 (h!71748 (exprs!6259 (h!71749 zl!343)))) (validRegex!8111 (h!71748 (exprs!6259 (h!71749 zl!343)))))))

(assert (=> bs!1651187 m!7287750))

(assert (=> b!6499134 d!2039603))

(declare-fun b_lambda!246067 () Bool)

(assert (= b_lambda!246049 (or b!6497395 b_lambda!246067)))

(assert (=> d!2039541 d!2039027))

(declare-fun b_lambda!246069 () Bool)

(assert (= b_lambda!246043 (or d!2038959 b_lambda!246069)))

(declare-fun bs!1651188 () Bool)

(declare-fun d!2039605 () Bool)

(assert (= bs!1651188 (and d!2039605 d!2038959)))

(assert (=> bs!1651188 (= (dynLambda!25941 lambda!360038 (h!71748 (exprs!6259 setElem!44277))) (validRegex!8111 (h!71748 (exprs!6259 setElem!44277))))))

(declare-fun m!7287756 () Bool)

(assert (=> bs!1651188 m!7287756))

(assert (=> b!6499258 d!2039605))

(declare-fun b_lambda!246071 () Bool)

(assert (= b_lambda!246047 (or d!2039015 b_lambda!246071)))

(declare-fun bs!1651189 () Bool)

(declare-fun d!2039607 () Bool)

(assert (= bs!1651189 (and d!2039607 d!2039015)))

(assert (=> bs!1651189 (= (dynLambda!25941 lambda!360055 (h!71748 (unfocusZipperList!1796 zl!343))) (validRegex!8111 (h!71748 (unfocusZipperList!1796 zl!343))))))

(declare-fun m!7287758 () Bool)

(assert (=> bs!1651189 m!7287758))

(assert (=> b!6499416 d!2039607))

(check-sat (not d!2039347) (not d!2039527) (not b!6499610) (not b_lambda!246063) (not b!6499469) (not b!6499433) (not b!6499573) (not b!6499241) (not b!6499419) (not bs!1651186) (not d!2039579) (not b!6499244) (not d!2039541) (not bm!563179) (not b!6499609) (not b!6499448) (not b!6499560) (not b!6499364) (not b!6499593) (not b!6498933) (not d!2039379) (not b!6499445) (not b!6499383) (not bm!563120) (not d!2039473) (not bm!563151) (not b!6499571) (not bm!563169) (not bm!563053) (not b!6499498) (not b!6499565) (not bm!563121) (not b!6499379) (not b!6499307) (not b!6499602) (not bm!563057) (not d!2039363) (not d!2039535) (not d!2039569) (not bm!563085) (not b!6499229) (not b!6499456) (not d!2039477) (not bm!563139) (not d!2039387) (not bm!563059) (not b!6499544) (not bm!563170) (not setNonEmpty!44296) (not b!6499322) (not d!2039365) (not b!6499564) (not b!6499253) (not b!6499158) (not b!6498957) (not b!6499515) (not bm!563052) (not bm!563093) (not b!6499305) (not b!6499335) (not b!6499494) (not b!6499580) (not d!2039513) (not bm!563148) (not b!6499369) (not bm!563069) (not b!6499354) (not b!6499431) (not b!6499534) (not b!6498934) (not b!6499536) (not b!6499572) (not b!6499309) (not b!6499493) (not b!6499575) (not d!2039503) (not b!6499525) (not d!2039483) (not d!2039385) (not b!6499569) (not bm!563133) (not b!6499584) (not bm!563145) (not b_lambda!246057) (not b!6499549) (not b!6499443) (not setNonEmpty!44297) (not b!6499217) (not b!6499300) (not bm!563075) (not d!2039345) (not d!2039567) (not b!6499186) (not bm!563096) (not b!6498980) (not bm!563130) (not b!6499246) (not b!6499455) (not b!6499029) (not b!6499284) (not b_lambda!245987) (not bm!563124) (not b!6499059) (not d!2039529) (not b!6499539) (not b!6499227) (not b!6499220) (not b!6499595) (not b_lambda!246071) (not bm!563125) (not bm!563051) (not bm!563149) (not d!2039371) (not b!6499462) (not b!6499532) (not bm!563111) (not b!6499542) (not bm!563054) (not d!2039377) (not d!2039525) (not b!6499203) (not d!2039551) (not b!6499441) (not b!6499517) (not b!6499018) (not b!6498925) (not d!2039509) (not d!2039595) (not b!6499599) (not b!6499323) (not bm!563176) (not b!6499507) (not b!6499545) (not setNonEmpty!44293) (not b!6499391) (not b!6499514) (not bm!563152) (not bm!563127) (not d!2039321) (not b!6499550) (not b!6499230) (not b!6499587) (not b_lambda!245989) (not b!6499426) (not bm!563095) (not b!6499050) (not bm!563094) (not b!6499585) (not bm!563126) (not b!6499275) (not b!6499153) (not bm!563108) (not b!6499555) (not bm!563182) (not b!6499556) (not b!6499105) (not b!6499103) (not d!2039333) (not b!6499319) (not b!6499449) (not bm!563072) (not b!6499193) (not b!6499232) (not b!6499603) (not b!6499398) (not d!2039361) (not b!6498949) (not b!6499057) (not b!6499505) (not b_lambda!245985) (not b!6499343) (not b!6499180) (not b!6499552) (not b!6499030) (not b!6499577) (not b!6499568) (not d!2039443) (not d!2039409) (not b!6499218) (not bm!563090) (not b!6499200) (not b!6499024) (not bm!563068) (not b!6499223) (not b!6499502) (not d!2039539) (not bm!563162) (not bm!563099) (not b!6499353) (not b!6499497) (not b!6499122) (not bs!1651189) (not b!6499022) (not bm!563076) (not setNonEmpty!44295) (not b!6499510) (not b!6499546) (not b!6498917) (not d!2039391) (not b!6499579) (not bm!563105) (not b!6499501) (not b!6499380) (not bm!563142) (not b!6498969) (not d!2039511) (not b!6499259) (not b!6499557) (not b!6499377) (not b!6499451) (not d!2039337) (not b_lambda!246067) (not b_lambda!246065) (not b!6499453) (not b!6499033) (not bm!563136) (not b!6499450) (not b!6499601) (not b!6499399) (not bm!563097) (not d!2039435) (not b!6499237) (not b!6499395) (not b!6499009) (not b!6498956) (not bm!563118) (not b!6499484) (not d!2039519) (not b!6499028) (not b!6499198) (not d!2039423) (not b!6499098) (not d!2039325) tp_is_empty!42003 (not b!6499530) (not d!2039481) (not b!6499429) (not b!6499313) (not b!6499475) (not b!6498945) (not b!6499503) (not bm!563065) (not b_lambda!246069) (not b!6499527) (not b!6499015) (not b!6499511) (not b!6499523) (not b!6499261) (not b!6499417) (not d!2039589) (not bm!563143) (not bm!563088) (not b!6499357) (not b_lambda!246053) (not d!2039375) (not b!6499606) (not bm!563138) (not b!6499567) (not bm!563115) (not d!2039537) (not b!6499056) (not b!6499422) (not d!2039505) (not bm!563147) (not d!2039521) (not d!2039437) (not b!6499400) (not d!2039327) (not bm!563155) (not b!6499027) (not d!2039517) (not b!6499349) (not b!6499522) (not b!6498953) (not b!6499142) (not bm!563066) (not d!2039559) (not bm!563164) (not b!6499101) (not d!2039485) (not b!6499538) (not b!6499195) (not b!6499548) (not bm!563107) (not b!6499554) (not b!6499535) (not bm!563089) (not bm!563056) (not bm!563134) (not b!6499042) (not b!6499597) (not bm!563114) (not bm!563180) (not b!6499355) (not b!6499592) (not b!6499192) (not bm!563171) (not b!6499454) (not b!6499589) (not b!6499336) (not b!6499209) (not bm!563161) (not b!6499581) (not bm!563073) (not b!6499350) (not b!6499054) (not b!6499216) (not b!6499540) (not b!6499583) (not b!6499446) (not b!6499292) (not b!6499519) (not b_lambda!246059) (not b!6499318) (not b!6499513) (not b!6499328) (not d!2039471) (not d!2039545) (not b!6499161) (not bm!563166) (not d!2039429) (not b!6499526) (not b!6499374) (not bs!1651184) (not bm!563175) (not b!6499310) (not b!6499499) (not b!6499594) (not b!6499576) (not d!2039493) (not d!2039341) (not bm!563163) (not d!2039523) (not d!2039461) (not b!6499169) (not b!6499518) (not bm!563101) (not b!6498955) (not b!6498944) (not b!6499509) (not b!6499081) (not b!6499401) (not b!6499025) (not b!6499372) (not b!6499194) (not b!6499559) (not b!6499208) (not b!6499100) (not bm!563144) (not b!6499531) (not bm!563183) (not b!6498920) (not b!6499521) (not b!6499234) (not b!6498977) (not b!6499321) (not b!6499316) (not b!6499314) (not bm!563157) (not b!6499563) (not b!6499381) (not d!2039557) (not bm!563158) (not d!2039447) (not bs!1651185) (not b_lambda!246061) (not b!6499543) (not d!2039343) (not b!6499189) (not d!2039489) (not b!6499605) (not b!6499304) (not b!6499611) (not b_lambda!246055) (not d!2039445) (not d!2039359) (not b_lambda!245991) (not d!2039335) (not bm!563112) (not b!6499607) (not b!6499588) (not b!6499331) (not b!6499351) (not b!6499393) (not bm!563102) (not b!6499302) (not b!6499039) (not b!6499287) (not bm!563129) (not b!6499094) (not bm!563173) (not b!6499047) (not b!6499308) (not b!6499428) (not bm!563064) (not d!2039455) (not d!2039339) (not bm!563167) (not b!6499091) (not setNonEmpty!44294) (not bm!563074) (not b!6499243) (not bs!1651187) (not d!2039591) (not b!6499561) (not d!2039587) (not b!6498959) (not b!6499598) (not d!2039427) (not b!6499506) (not b!6498951) (not d!2039547) (not b!6499135) (not b!6499408) (not b!6499553) (not b!6499396) (not bs!1651188) (not b!6498948) (not b!6499590) (not b!6499528))
(check-sat)
