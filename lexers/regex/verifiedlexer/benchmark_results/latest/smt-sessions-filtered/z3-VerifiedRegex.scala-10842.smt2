; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!558674 () Bool)

(assert start!558674)

(declare-fun b!5294116 () Bool)

(assert (=> b!5294116 true))

(assert (=> b!5294116 true))

(declare-fun lambda!268310 () Int)

(declare-fun lambda!268309 () Int)

(assert (=> b!5294116 (not (= lambda!268310 lambda!268309))))

(assert (=> b!5294116 true))

(assert (=> b!5294116 true))

(declare-fun b!5294133 () Bool)

(assert (=> b!5294133 true))

(declare-fun bs!1227860 () Bool)

(declare-fun b!5294113 () Bool)

(assert (= bs!1227860 (and b!5294113 b!5294116)))

(declare-datatypes ((C!30132 0))(
  ( (C!30133 (val!24768 Int)) )
))
(declare-datatypes ((Regex!14931 0))(
  ( (ElementMatch!14931 (c!918549 C!30132)) (Concat!23776 (regOne!30374 Regex!14931) (regTwo!30374 Regex!14931)) (EmptyExpr!14931) (Star!14931 (reg!15260 Regex!14931)) (EmptyLang!14931) (Union!14931 (regOne!30375 Regex!14931) (regTwo!30375 Regex!14931)) )
))
(declare-fun r!7292 () Regex!14931)

(declare-fun lambda!268312 () Int)

(declare-fun lt!2163305 () Regex!14931)

(assert (=> bs!1227860 (= (and (= (regOne!30374 (regOne!30374 r!7292)) (regOne!30374 r!7292)) (= lt!2163305 (regTwo!30374 r!7292))) (= lambda!268312 lambda!268309))))

(assert (=> bs!1227860 (not (= lambda!268312 lambda!268310))))

(assert (=> b!5294113 true))

(assert (=> b!5294113 true))

(assert (=> b!5294113 true))

(declare-fun lambda!268313 () Int)

(assert (=> bs!1227860 (not (= lambda!268313 lambda!268309))))

(assert (=> bs!1227860 (= (and (= (regOne!30374 (regOne!30374 r!7292)) (regOne!30374 r!7292)) (= lt!2163305 (regTwo!30374 r!7292))) (= lambda!268313 lambda!268310))))

(assert (=> b!5294113 (not (= lambda!268313 lambda!268312))))

(assert (=> b!5294113 true))

(assert (=> b!5294113 true))

(assert (=> b!5294113 true))

(declare-fun lambda!268314 () Int)

(declare-fun lt!2163337 () Regex!14931)

(assert (=> bs!1227860 (= (and (= (regTwo!30374 (regOne!30374 r!7292)) (regOne!30374 r!7292)) (= lt!2163337 (regTwo!30374 r!7292))) (= lambda!268314 lambda!268309))))

(assert (=> bs!1227860 (not (= lambda!268314 lambda!268310))))

(assert (=> b!5294113 (= (and (= (regTwo!30374 (regOne!30374 r!7292)) (regOne!30374 (regOne!30374 r!7292))) (= lt!2163337 lt!2163305)) (= lambda!268314 lambda!268312))))

(assert (=> b!5294113 (not (= lambda!268314 lambda!268313))))

(assert (=> b!5294113 true))

(assert (=> b!5294113 true))

(assert (=> b!5294113 true))

(declare-fun lambda!268315 () Int)

(assert (=> b!5294113 (not (= lambda!268315 lambda!268312))))

(assert (=> b!5294113 (= (and (= (regTwo!30374 (regOne!30374 r!7292)) (regOne!30374 (regOne!30374 r!7292))) (= lt!2163337 lt!2163305)) (= lambda!268315 lambda!268313))))

(assert (=> bs!1227860 (= (and (= (regTwo!30374 (regOne!30374 r!7292)) (regOne!30374 r!7292)) (= lt!2163337 (regTwo!30374 r!7292))) (= lambda!268315 lambda!268310))))

(assert (=> b!5294113 (not (= lambda!268315 lambda!268314))))

(assert (=> bs!1227860 (not (= lambda!268315 lambda!268309))))

(assert (=> b!5294113 true))

(assert (=> b!5294113 true))

(assert (=> b!5294113 true))

(declare-fun b!5294107 () Bool)

(declare-fun e!3290966 () Bool)

(declare-fun tp!1477393 () Bool)

(declare-fun tp!1477397 () Bool)

(assert (=> b!5294107 (= e!3290966 (and tp!1477393 tp!1477397))))

(declare-fun b!5294108 () Bool)

(declare-fun res!2245422 () Bool)

(declare-fun e!3290965 () Bool)

(assert (=> b!5294108 (=> res!2245422 e!3290965)))

(declare-datatypes ((List!61092 0))(
  ( (Nil!60968) (Cons!60968 (h!67416 Regex!14931) (t!374297 List!61092)) )
))
(declare-datatypes ((Context!8630 0))(
  ( (Context!8631 (exprs!4815 List!61092)) )
))
(declare-datatypes ((List!61093 0))(
  ( (Nil!60969) (Cons!60969 (h!67417 Context!8630) (t!374298 List!61093)) )
))
(declare-fun zl!343 () List!61093)

(declare-fun isEmpty!32923 (List!61093) Bool)

(assert (=> b!5294108 (= res!2245422 (not (isEmpty!32923 (t!374298 zl!343))))))

(declare-fun b!5294109 () Bool)

(declare-fun res!2245420 () Bool)

(declare-fun e!3290969 () Bool)

(assert (=> b!5294109 (=> (not res!2245420) (not e!3290969))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8630))

(declare-fun toList!8715 ((InoxSet Context!8630)) List!61093)

(assert (=> b!5294109 (= res!2245420 (= (toList!8715 z!1189) zl!343))))

(declare-fun b!5294110 () Bool)

(declare-fun e!3290962 () Bool)

(declare-fun e!3290968 () Bool)

(assert (=> b!5294110 (= e!3290962 e!3290968)))

(declare-fun res!2245411 () Bool)

(assert (=> b!5294110 (=> res!2245411 e!3290968)))

(declare-fun lt!2163331 () List!61093)

(declare-fun zipperDepthTotal!92 (List!61093) Int)

(assert (=> b!5294110 (= res!2245411 (>= (zipperDepthTotal!92 lt!2163331) (zipperDepthTotal!92 zl!343)))))

(declare-fun lt!2163319 () Context!8630)

(assert (=> b!5294110 (= lt!2163331 (Cons!60969 lt!2163319 Nil!60969))))

(declare-fun setElem!33989 () Context!8630)

(declare-fun tp!1477388 () Bool)

(declare-fun e!3290974 () Bool)

(declare-fun setRes!33989 () Bool)

(declare-fun setNonEmpty!33989 () Bool)

(declare-fun inv!80574 (Context!8630) Bool)

(assert (=> setNonEmpty!33989 (= setRes!33989 (and tp!1477388 (inv!80574 setElem!33989) e!3290974))))

(declare-fun setRest!33989 () (InoxSet Context!8630))

(assert (=> setNonEmpty!33989 (= z!1189 ((_ map or) (store ((as const (Array Context!8630 Bool)) false) setElem!33989 true) setRest!33989))))

(declare-fun b!5294111 () Bool)

(declare-fun res!2245406 () Bool)

(assert (=> b!5294111 (=> res!2245406 e!3290965)))

(declare-fun generalisedConcat!600 (List!61092) Regex!14931)

(assert (=> b!5294111 (= res!2245406 (not (= r!7292 (generalisedConcat!600 (exprs!4815 (h!67417 zl!343))))))))

(declare-fun b!5294112 () Bool)

(declare-fun e!3290972 () Bool)

(declare-fun lt!2163302 () (InoxSet Context!8630))

(declare-datatypes ((List!61094 0))(
  ( (Nil!60970) (Cons!60970 (h!67418 C!30132) (t!374299 List!61094)) )
))
(declare-fun s!2326 () List!61094)

(declare-fun matchZipper!1175 ((InoxSet Context!8630) List!61094) Bool)

(assert (=> b!5294112 (= e!3290972 (not (matchZipper!1175 lt!2163302 (t!374299 s!2326))))))

(declare-fun e!3290963 () Bool)

(assert (=> b!5294113 (= e!3290968 e!3290963)))

(declare-fun res!2245414 () Bool)

(assert (=> b!5294113 (=> res!2245414 e!3290963)))

(declare-fun lt!2163312 () Bool)

(declare-fun lt!2163322 () Bool)

(assert (=> b!5294113 (= res!2245414 (not (= (matchZipper!1175 z!1189 s!2326) (or lt!2163322 lt!2163312))))))

(declare-fun Exists!2112 (Int) Bool)

(assert (=> b!5294113 (= (Exists!2112 lambda!268314) (Exists!2112 lambda!268315))))

(declare-datatypes ((Unit!153242 0))(
  ( (Unit!153243) )
))
(declare-fun lt!2163335 () Unit!153242)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!766 (Regex!14931 Regex!14931 List!61094) Unit!153242)

(assert (=> b!5294113 (= lt!2163335 (lemmaExistCutMatchRandMatchRSpecEquivalent!766 (regTwo!30374 (regOne!30374 r!7292)) lt!2163337 s!2326))))

(declare-datatypes ((tuple2!64260 0))(
  ( (tuple2!64261 (_1!35433 List!61094) (_2!35433 List!61094)) )
))
(declare-datatypes ((Option!15042 0))(
  ( (None!15041) (Some!15041 (v!51070 tuple2!64260)) )
))
(declare-fun isDefined!11745 (Option!15042) Bool)

(declare-fun findConcatSeparation!1456 (Regex!14931 Regex!14931 List!61094 List!61094 List!61094) Option!15042)

(assert (=> b!5294113 (= (isDefined!11745 (findConcatSeparation!1456 (regTwo!30374 (regOne!30374 r!7292)) lt!2163337 Nil!60970 s!2326 s!2326)) (Exists!2112 lambda!268314))))

(declare-fun lt!2163344 () Unit!153242)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1220 (Regex!14931 Regex!14931 List!61094) Unit!153242)

(assert (=> b!5294113 (= lt!2163344 (lemmaFindConcatSeparationEquivalentToExists!1220 (regTwo!30374 (regOne!30374 r!7292)) lt!2163337 s!2326))))

(assert (=> b!5294113 (= lt!2163337 (generalisedConcat!600 (t!374297 (exprs!4815 (h!67417 zl!343)))))))

(declare-fun lt!2163315 () Bool)

(declare-fun matchRSpec!2034 (Regex!14931 List!61094) Bool)

(assert (=> b!5294113 (= lt!2163315 (matchRSpec!2034 lt!2163305 s!2326))))

(declare-fun lt!2163343 () Unit!153242)

(declare-fun mainMatchTheorem!2034 (Regex!14931 List!61094) Unit!153242)

(assert (=> b!5294113 (= lt!2163343 (mainMatchTheorem!2034 lt!2163305 s!2326))))

(assert (=> b!5294113 (= (Exists!2112 lambda!268312) (Exists!2112 lambda!268313))))

(declare-fun lt!2163332 () Unit!153242)

(assert (=> b!5294113 (= lt!2163332 (lemmaExistCutMatchRandMatchRSpecEquivalent!766 (regOne!30374 (regOne!30374 r!7292)) lt!2163305 s!2326))))

(assert (=> b!5294113 (= (isDefined!11745 (findConcatSeparation!1456 (regOne!30374 (regOne!30374 r!7292)) lt!2163305 Nil!60970 s!2326 s!2326)) (Exists!2112 lambda!268312))))

(declare-fun lt!2163323 () Unit!153242)

(assert (=> b!5294113 (= lt!2163323 (lemmaFindConcatSeparationEquivalentToExists!1220 (regOne!30374 (regOne!30374 r!7292)) lt!2163305 s!2326))))

(declare-fun lt!2163321 () Bool)

(declare-fun lt!2163313 () Regex!14931)

(assert (=> b!5294113 (= lt!2163321 (matchRSpec!2034 lt!2163313 s!2326))))

(declare-fun lt!2163299 () Unit!153242)

(assert (=> b!5294113 (= lt!2163299 (mainMatchTheorem!2034 lt!2163313 s!2326))))

(assert (=> b!5294113 (= lt!2163315 lt!2163312)))

(declare-fun lt!2163318 () (InoxSet Context!8630))

(assert (=> b!5294113 (= lt!2163312 (matchZipper!1175 lt!2163318 s!2326))))

(declare-fun matchR!7116 (Regex!14931 List!61094) Bool)

(assert (=> b!5294113 (= lt!2163315 (matchR!7116 lt!2163305 s!2326))))

(declare-fun lt!2163303 () Context!8630)

(declare-fun lt!2163326 () Unit!153242)

(declare-fun theoremZipperRegexEquiv!341 ((InoxSet Context!8630) List!61093 Regex!14931 List!61094) Unit!153242)

(assert (=> b!5294113 (= lt!2163326 (theoremZipperRegexEquiv!341 lt!2163318 (Cons!60969 lt!2163303 Nil!60969) lt!2163305 s!2326))))

(declare-fun lt!2163339 () List!61092)

(assert (=> b!5294113 (= lt!2163305 (generalisedConcat!600 lt!2163339))))

(assert (=> b!5294113 (= lt!2163321 lt!2163322)))

(declare-fun lt!2163298 () (InoxSet Context!8630))

(assert (=> b!5294113 (= lt!2163322 (matchZipper!1175 lt!2163298 s!2326))))

(assert (=> b!5294113 (= lt!2163321 (matchR!7116 lt!2163313 s!2326))))

(declare-fun lt!2163306 () Unit!153242)

(assert (=> b!5294113 (= lt!2163306 (theoremZipperRegexEquiv!341 lt!2163298 lt!2163331 lt!2163313 s!2326))))

(declare-fun lt!2163330 () List!61092)

(assert (=> b!5294113 (= lt!2163313 (generalisedConcat!600 lt!2163330))))

(declare-fun b!5294114 () Bool)

(declare-fun e!3290955 () Bool)

(declare-fun tp!1477395 () Bool)

(declare-fun e!3290958 () Bool)

(assert (=> b!5294114 (= e!3290955 (and (inv!80574 (h!67417 zl!343)) e!3290958 tp!1477395))))

(declare-fun b!5294115 () Bool)

(declare-fun tp!1477389 () Bool)

(declare-fun tp!1477391 () Bool)

(assert (=> b!5294115 (= e!3290966 (and tp!1477389 tp!1477391))))

(declare-fun b!5294117 () Bool)

(declare-fun res!2245416 () Bool)

(assert (=> b!5294117 (=> res!2245416 e!3290965)))

(get-info :version)

(assert (=> b!5294117 (= res!2245416 (or ((_ is EmptyExpr!14931) r!7292) ((_ is EmptyLang!14931) r!7292) ((_ is ElementMatch!14931) r!7292) ((_ is Union!14931) r!7292) (not ((_ is Concat!23776) r!7292))))))

(declare-fun b!5294118 () Bool)

(declare-fun e!3290959 () Bool)

(declare-fun derivationStepZipper!1174 ((InoxSet Context!8630) C!30132) (InoxSet Context!8630))

(assert (=> b!5294118 (= e!3290959 (not (matchZipper!1175 (derivationStepZipper!1174 lt!2163318 (h!67418 s!2326)) (t!374299 s!2326))))))

(declare-fun b!5294119 () Bool)

(declare-fun res!2245429 () Bool)

(assert (=> b!5294119 (=> (not res!2245429) (not e!3290969))))

(declare-fun unfocusZipper!673 (List!61093) Regex!14931)

(assert (=> b!5294119 (= res!2245429 (= r!7292 (unfocusZipper!673 zl!343)))))

(declare-fun setIsEmpty!33989 () Bool)

(assert (=> setIsEmpty!33989 setRes!33989))

(declare-fun b!5294120 () Bool)

(declare-fun validRegex!6667 (Regex!14931) Bool)

(assert (=> b!5294120 (= e!3290963 (validRegex!6667 lt!2163313))))

(declare-fun b!5294121 () Bool)

(declare-fun e!3290971 () Unit!153242)

(declare-fun Unit!153244 () Unit!153242)

(assert (=> b!5294121 (= e!3290971 Unit!153244)))

(declare-fun b!5294122 () Bool)

(declare-fun res!2245407 () Bool)

(assert (=> b!5294122 (=> res!2245407 e!3290968)))

(declare-fun zipperDepth!48 (List!61093) Int)

(assert (=> b!5294122 (= res!2245407 (> (zipperDepth!48 lt!2163331) (zipperDepth!48 zl!343)))))

(declare-fun b!5294123 () Bool)

(declare-fun e!3290970 () Bool)

(assert (=> b!5294123 (= e!3290970 e!3290962)))

(declare-fun res!2245423 () Bool)

(assert (=> b!5294123 (=> res!2245423 e!3290962)))

(assert (=> b!5294123 (= res!2245423 e!3290959)))

(declare-fun res!2245412 () Bool)

(assert (=> b!5294123 (=> (not res!2245412) (not e!3290959))))

(declare-fun lt!2163341 () (InoxSet Context!8630))

(declare-fun lt!2163338 () Bool)

(assert (=> b!5294123 (= res!2245412 (not (= lt!2163338 (matchZipper!1175 lt!2163341 (t!374299 s!2326)))))))

(declare-fun lt!2163300 () (InoxSet Context!8630))

(declare-fun e!3290964 () Bool)

(assert (=> b!5294123 (= (matchZipper!1175 lt!2163300 (t!374299 s!2326)) e!3290964)))

(declare-fun res!2245424 () Bool)

(assert (=> b!5294123 (=> res!2245424 e!3290964)))

(declare-fun lt!2163325 () Bool)

(assert (=> b!5294123 (= res!2245424 lt!2163325)))

(declare-fun lt!2163309 () Unit!153242)

(declare-fun lt!2163329 () (InoxSet Context!8630))

(declare-fun lt!2163314 () (InoxSet Context!8630))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!168 ((InoxSet Context!8630) (InoxSet Context!8630) List!61094) Unit!153242)

(assert (=> b!5294123 (= lt!2163309 (lemmaZipperConcatMatchesSameAsBothZippers!168 lt!2163329 lt!2163314 (t!374299 s!2326)))))

(declare-fun lambda!268311 () Int)

(declare-fun flatMap!658 ((InoxSet Context!8630) Int) (InoxSet Context!8630))

(declare-fun derivationStepZipperUp!303 (Context!8630 C!30132) (InoxSet Context!8630))

(assert (=> b!5294123 (= (flatMap!658 lt!2163318 lambda!268311) (derivationStepZipperUp!303 lt!2163303 (h!67418 s!2326)))))

(declare-fun lt!2163317 () Unit!153242)

(declare-fun lemmaFlatMapOnSingletonSet!190 ((InoxSet Context!8630) Context!8630 Int) Unit!153242)

(assert (=> b!5294123 (= lt!2163317 (lemmaFlatMapOnSingletonSet!190 lt!2163318 lt!2163303 lambda!268311))))

(declare-fun b!5294124 () Bool)

(declare-fun res!2245421 () Bool)

(declare-fun e!3290956 () Bool)

(assert (=> b!5294124 (=> res!2245421 e!3290956)))

(declare-fun isEmpty!32924 (List!61092) Bool)

(assert (=> b!5294124 (= res!2245421 (isEmpty!32924 (t!374297 (exprs!4815 (h!67417 zl!343)))))))

(declare-fun b!5294125 () Bool)

(declare-fun tp_is_empty!39115 () Bool)

(assert (=> b!5294125 (= e!3290966 tp_is_empty!39115)))

(declare-fun b!5294126 () Bool)

(declare-fun res!2245410 () Bool)

(declare-fun e!3290967 () Bool)

(assert (=> b!5294126 (=> res!2245410 e!3290967)))

(declare-fun nullable!5100 (Regex!14931) Bool)

(assert (=> b!5294126 (= res!2245410 (not (nullable!5100 (regOne!30374 (regOne!30374 r!7292)))))))

(declare-fun b!5294127 () Bool)

(declare-fun e!3290973 () Bool)

(assert (=> b!5294127 (= e!3290967 e!3290973)))

(declare-fun res!2245428 () Bool)

(assert (=> b!5294127 (=> res!2245428 e!3290973)))

(declare-fun lt!2163320 () (InoxSet Context!8630))

(declare-fun lt!2163311 () (InoxSet Context!8630))

(assert (=> b!5294127 (= res!2245428 (not (= lt!2163320 lt!2163311)))))

(assert (=> b!5294127 (= lt!2163311 ((_ map or) lt!2163329 lt!2163302))))

(declare-fun lt!2163304 () Context!8630)

(declare-fun derivationStepZipperDown!379 (Regex!14931 Context!8630 C!30132) (InoxSet Context!8630))

(assert (=> b!5294127 (= lt!2163302 (derivationStepZipperDown!379 (regTwo!30374 (regOne!30374 r!7292)) lt!2163304 (h!67418 s!2326)))))

(assert (=> b!5294127 (= lt!2163329 (derivationStepZipperDown!379 (regOne!30374 (regOne!30374 r!7292)) lt!2163303 (h!67418 s!2326)))))

(assert (=> b!5294127 (= lt!2163303 (Context!8631 lt!2163339))))

(assert (=> b!5294127 (= lt!2163339 (Cons!60968 (regTwo!30374 (regOne!30374 r!7292)) (t!374297 (exprs!4815 (h!67417 zl!343)))))))

(declare-fun b!5294128 () Bool)

(declare-fun res!2245403 () Bool)

(assert (=> b!5294128 (=> res!2245403 e!3290965)))

(assert (=> b!5294128 (= res!2245403 (not ((_ is Cons!60968) (exprs!4815 (h!67417 zl!343)))))))

(declare-fun b!5294129 () Bool)

(declare-fun e!3290957 () Bool)

(assert (=> b!5294129 (= e!3290957 e!3290970)))

(declare-fun res!2245426 () Bool)

(assert (=> b!5294129 (=> res!2245426 e!3290970)))

(assert (=> b!5294129 (= res!2245426 (not (= lt!2163341 lt!2163300)))))

(assert (=> b!5294129 (= lt!2163300 ((_ map or) lt!2163329 lt!2163314))))

(assert (=> b!5294129 (= lt!2163314 (derivationStepZipperUp!303 lt!2163303 (h!67418 s!2326)))))

(assert (=> b!5294129 (= (flatMap!658 lt!2163298 lambda!268311) (derivationStepZipperUp!303 lt!2163319 (h!67418 s!2326)))))

(declare-fun lt!2163327 () Unit!153242)

(assert (=> b!5294129 (= lt!2163327 (lemmaFlatMapOnSingletonSet!190 lt!2163298 lt!2163319 lambda!268311))))

(declare-fun lt!2163328 () (InoxSet Context!8630))

(assert (=> b!5294129 (= lt!2163328 (derivationStepZipperUp!303 lt!2163319 (h!67418 s!2326)))))

(assert (=> b!5294129 (= lt!2163341 (derivationStepZipper!1174 lt!2163298 (h!67418 s!2326)))))

(assert (=> b!5294129 (= lt!2163318 (store ((as const (Array Context!8630 Bool)) false) lt!2163303 true))))

(assert (=> b!5294129 (= lt!2163298 (store ((as const (Array Context!8630 Bool)) false) lt!2163319 true))))

(assert (=> b!5294129 (= lt!2163319 (Context!8631 lt!2163330))))

(assert (=> b!5294129 (= lt!2163330 (Cons!60968 (regOne!30374 (regOne!30374 r!7292)) lt!2163339))))

(declare-fun b!5294130 () Bool)

(declare-fun e!3290960 () Bool)

(declare-fun tp!1477394 () Bool)

(assert (=> b!5294130 (= e!3290960 (and tp_is_empty!39115 tp!1477394))))

(declare-fun b!5294131 () Bool)

(declare-fun tp!1477392 () Bool)

(assert (=> b!5294131 (= e!3290966 tp!1477392)))

(declare-fun b!5294132 () Bool)

(declare-fun res!2245418 () Bool)

(assert (=> b!5294132 (=> res!2245418 e!3290962)))

(assert (=> b!5294132 (= res!2245418 (not (= (exprs!4815 (h!67417 zl!343)) (Cons!60968 (Concat!23776 (regOne!30374 (regOne!30374 r!7292)) (regTwo!30374 (regOne!30374 r!7292))) (t!374297 (exprs!4815 (h!67417 zl!343)))))))))

(assert (=> b!5294133 (= e!3290956 e!3290967)))

(declare-fun res!2245415 () Bool)

(assert (=> b!5294133 (=> res!2245415 e!3290967)))

(assert (=> b!5294133 (= res!2245415 (or (and ((_ is ElementMatch!14931) (regOne!30374 r!7292)) (= (c!918549 (regOne!30374 r!7292)) (h!67418 s!2326))) ((_ is Union!14931) (regOne!30374 r!7292)) (not ((_ is Concat!23776) (regOne!30374 r!7292)))))))

(declare-fun lt!2163324 () Unit!153242)

(assert (=> b!5294133 (= lt!2163324 e!3290971)))

(declare-fun c!918548 () Bool)

(assert (=> b!5294133 (= c!918548 (nullable!5100 (h!67416 (exprs!4815 (h!67417 zl!343)))))))

(assert (=> b!5294133 (= (flatMap!658 z!1189 lambda!268311) (derivationStepZipperUp!303 (h!67417 zl!343) (h!67418 s!2326)))))

(declare-fun lt!2163340 () Unit!153242)

(assert (=> b!5294133 (= lt!2163340 (lemmaFlatMapOnSingletonSet!190 z!1189 (h!67417 zl!343) lambda!268311))))

(declare-fun lt!2163301 () (InoxSet Context!8630))

(assert (=> b!5294133 (= lt!2163301 (derivationStepZipperUp!303 lt!2163304 (h!67418 s!2326)))))

(assert (=> b!5294133 (= lt!2163320 (derivationStepZipperDown!379 (h!67416 (exprs!4815 (h!67417 zl!343))) lt!2163304 (h!67418 s!2326)))))

(assert (=> b!5294133 (= lt!2163304 (Context!8631 (t!374297 (exprs!4815 (h!67417 zl!343)))))))

(declare-fun lt!2163307 () (InoxSet Context!8630))

(assert (=> b!5294133 (= lt!2163307 (derivationStepZipperUp!303 (Context!8631 (Cons!60968 (h!67416 (exprs!4815 (h!67417 zl!343))) (t!374297 (exprs!4815 (h!67417 zl!343))))) (h!67418 s!2326)))))

(declare-fun b!5294134 () Bool)

(declare-fun Unit!153245 () Unit!153242)

(assert (=> b!5294134 (= e!3290971 Unit!153245)))

(declare-fun lt!2163308 () Unit!153242)

(assert (=> b!5294134 (= lt!2163308 (lemmaZipperConcatMatchesSameAsBothZippers!168 lt!2163320 lt!2163301 (t!374299 s!2326)))))

(declare-fun res!2245425 () Bool)

(assert (=> b!5294134 (= res!2245425 (matchZipper!1175 lt!2163320 (t!374299 s!2326)))))

(declare-fun e!3290961 () Bool)

(assert (=> b!5294134 (=> res!2245425 e!3290961)))

(assert (=> b!5294134 (= (matchZipper!1175 ((_ map or) lt!2163320 lt!2163301) (t!374299 s!2326)) e!3290961)))

(declare-fun b!5294135 () Bool)

(assert (=> b!5294135 (= e!3290961 (matchZipper!1175 lt!2163301 (t!374299 s!2326)))))

(declare-fun b!5294136 () Bool)

(declare-fun res!2245408 () Bool)

(assert (=> b!5294136 (=> res!2245408 e!3290965)))

(declare-fun generalisedUnion!860 (List!61092) Regex!14931)

(declare-fun unfocusZipperList!373 (List!61093) List!61092)

(assert (=> b!5294136 (= res!2245408 (not (= r!7292 (generalisedUnion!860 (unfocusZipperList!373 zl!343)))))))

(declare-fun b!5294137 () Bool)

(declare-fun e!3290954 () Bool)

(assert (=> b!5294137 (= e!3290954 (matchZipper!1175 lt!2163302 (t!374299 s!2326)))))

(declare-fun b!5294138 () Bool)

(declare-fun tp!1477396 () Bool)

(assert (=> b!5294138 (= e!3290974 tp!1477396)))

(declare-fun b!5294139 () Bool)

(assert (=> b!5294139 (= e!3290969 (not e!3290965))))

(declare-fun res!2245419 () Bool)

(assert (=> b!5294139 (=> res!2245419 e!3290965)))

(assert (=> b!5294139 (= res!2245419 (not ((_ is Cons!60969) zl!343)))))

(declare-fun lt!2163342 () Bool)

(assert (=> b!5294139 (= lt!2163342 (matchRSpec!2034 r!7292 s!2326))))

(assert (=> b!5294139 (= lt!2163342 (matchR!7116 r!7292 s!2326))))

(declare-fun lt!2163336 () Unit!153242)

(assert (=> b!5294139 (= lt!2163336 (mainMatchTheorem!2034 r!7292 s!2326))))

(declare-fun b!5294140 () Bool)

(assert (=> b!5294140 (= e!3290964 (matchZipper!1175 lt!2163314 (t!374299 s!2326)))))

(declare-fun b!5294141 () Bool)

(declare-fun res!2245427 () Bool)

(assert (=> b!5294141 (=> res!2245427 e!3290962)))

(declare-fun contextDepthTotal!72 (Context!8630) Int)

(assert (=> b!5294141 (= res!2245427 (>= (contextDepthTotal!72 lt!2163319) (contextDepthTotal!72 (h!67417 zl!343))))))

(assert (=> b!5294116 (= e!3290965 e!3290956)))

(declare-fun res!2245404 () Bool)

(assert (=> b!5294116 (=> res!2245404 e!3290956)))

(declare-fun lt!2163310 () Bool)

(assert (=> b!5294116 (= res!2245404 (or (not (= lt!2163342 lt!2163310)) ((_ is Nil!60970) s!2326)))))

(assert (=> b!5294116 (= (Exists!2112 lambda!268309) (Exists!2112 lambda!268310))))

(declare-fun lt!2163334 () Unit!153242)

(assert (=> b!5294116 (= lt!2163334 (lemmaExistCutMatchRandMatchRSpecEquivalent!766 (regOne!30374 r!7292) (regTwo!30374 r!7292) s!2326))))

(assert (=> b!5294116 (= lt!2163310 (Exists!2112 lambda!268309))))

(assert (=> b!5294116 (= lt!2163310 (isDefined!11745 (findConcatSeparation!1456 (regOne!30374 r!7292) (regTwo!30374 r!7292) Nil!60970 s!2326 s!2326)))))

(declare-fun lt!2163333 () Unit!153242)

(assert (=> b!5294116 (= lt!2163333 (lemmaFindConcatSeparationEquivalentToExists!1220 (regOne!30374 r!7292) (regTwo!30374 r!7292) s!2326))))

(declare-fun res!2245417 () Bool)

(assert (=> start!558674 (=> (not res!2245417) (not e!3290969))))

(assert (=> start!558674 (= res!2245417 (validRegex!6667 r!7292))))

(assert (=> start!558674 e!3290969))

(assert (=> start!558674 e!3290966))

(declare-fun condSetEmpty!33989 () Bool)

(assert (=> start!558674 (= condSetEmpty!33989 (= z!1189 ((as const (Array Context!8630 Bool)) false)))))

(assert (=> start!558674 setRes!33989))

(assert (=> start!558674 e!3290955))

(assert (=> start!558674 e!3290960))

(declare-fun b!5294142 () Bool)

(assert (=> b!5294142 (= e!3290973 e!3290957)))

(declare-fun res!2245409 () Bool)

(assert (=> b!5294142 (=> res!2245409 e!3290957)))

(assert (=> b!5294142 (= res!2245409 e!3290972)))

(declare-fun res!2245405 () Bool)

(assert (=> b!5294142 (=> (not res!2245405) (not e!3290972))))

(assert (=> b!5294142 (= res!2245405 (not (= lt!2163338 lt!2163325)))))

(assert (=> b!5294142 (= lt!2163338 (matchZipper!1175 lt!2163320 (t!374299 s!2326)))))

(assert (=> b!5294142 (= (matchZipper!1175 lt!2163311 (t!374299 s!2326)) e!3290954)))

(declare-fun res!2245413 () Bool)

(assert (=> b!5294142 (=> res!2245413 e!3290954)))

(assert (=> b!5294142 (= res!2245413 lt!2163325)))

(assert (=> b!5294142 (= lt!2163325 (matchZipper!1175 lt!2163329 (t!374299 s!2326)))))

(declare-fun lt!2163316 () Unit!153242)

(assert (=> b!5294142 (= lt!2163316 (lemmaZipperConcatMatchesSameAsBothZippers!168 lt!2163329 lt!2163302 (t!374299 s!2326)))))

(declare-fun b!5294143 () Bool)

(declare-fun tp!1477390 () Bool)

(assert (=> b!5294143 (= e!3290958 tp!1477390)))

(assert (= (and start!558674 res!2245417) b!5294109))

(assert (= (and b!5294109 res!2245420) b!5294119))

(assert (= (and b!5294119 res!2245429) b!5294139))

(assert (= (and b!5294139 (not res!2245419)) b!5294108))

(assert (= (and b!5294108 (not res!2245422)) b!5294111))

(assert (= (and b!5294111 (not res!2245406)) b!5294128))

(assert (= (and b!5294128 (not res!2245403)) b!5294136))

(assert (= (and b!5294136 (not res!2245408)) b!5294117))

(assert (= (and b!5294117 (not res!2245416)) b!5294116))

(assert (= (and b!5294116 (not res!2245404)) b!5294124))

(assert (= (and b!5294124 (not res!2245421)) b!5294133))

(assert (= (and b!5294133 c!918548) b!5294134))

(assert (= (and b!5294133 (not c!918548)) b!5294121))

(assert (= (and b!5294134 (not res!2245425)) b!5294135))

(assert (= (and b!5294133 (not res!2245415)) b!5294126))

(assert (= (and b!5294126 (not res!2245410)) b!5294127))

(assert (= (and b!5294127 (not res!2245428)) b!5294142))

(assert (= (and b!5294142 (not res!2245413)) b!5294137))

(assert (= (and b!5294142 res!2245405) b!5294112))

(assert (= (and b!5294142 (not res!2245409)) b!5294129))

(assert (= (and b!5294129 (not res!2245426)) b!5294123))

(assert (= (and b!5294123 (not res!2245424)) b!5294140))

(assert (= (and b!5294123 res!2245412) b!5294118))

(assert (= (and b!5294123 (not res!2245423)) b!5294132))

(assert (= (and b!5294132 (not res!2245418)) b!5294141))

(assert (= (and b!5294141 (not res!2245427)) b!5294110))

(assert (= (and b!5294110 (not res!2245411)) b!5294122))

(assert (= (and b!5294122 (not res!2245407)) b!5294113))

(assert (= (and b!5294113 (not res!2245414)) b!5294120))

(assert (= (and start!558674 ((_ is ElementMatch!14931) r!7292)) b!5294125))

(assert (= (and start!558674 ((_ is Concat!23776) r!7292)) b!5294107))

(assert (= (and start!558674 ((_ is Star!14931) r!7292)) b!5294131))

(assert (= (and start!558674 ((_ is Union!14931) r!7292)) b!5294115))

(assert (= (and start!558674 condSetEmpty!33989) setIsEmpty!33989))

(assert (= (and start!558674 (not condSetEmpty!33989)) setNonEmpty!33989))

(assert (= setNonEmpty!33989 b!5294138))

(assert (= b!5294114 b!5294143))

(assert (= (and start!558674 ((_ is Cons!60969) zl!343)) b!5294114))

(assert (= (and start!558674 ((_ is Cons!60970) s!2326)) b!5294130))

(declare-fun m!6331510 () Bool)

(assert (=> b!5294136 m!6331510))

(assert (=> b!5294136 m!6331510))

(declare-fun m!6331512 () Bool)

(assert (=> b!5294136 m!6331512))

(declare-fun m!6331514 () Bool)

(assert (=> b!5294110 m!6331514))

(declare-fun m!6331516 () Bool)

(assert (=> b!5294110 m!6331516))

(declare-fun m!6331518 () Bool)

(assert (=> b!5294140 m!6331518))

(declare-fun m!6331520 () Bool)

(assert (=> b!5294142 m!6331520))

(declare-fun m!6331522 () Bool)

(assert (=> b!5294142 m!6331522))

(declare-fun m!6331524 () Bool)

(assert (=> b!5294142 m!6331524))

(declare-fun m!6331526 () Bool)

(assert (=> b!5294142 m!6331526))

(declare-fun m!6331528 () Bool)

(assert (=> b!5294111 m!6331528))

(declare-fun m!6331530 () Bool)

(assert (=> b!5294139 m!6331530))

(declare-fun m!6331532 () Bool)

(assert (=> b!5294139 m!6331532))

(declare-fun m!6331534 () Bool)

(assert (=> b!5294139 m!6331534))

(declare-fun m!6331536 () Bool)

(assert (=> b!5294108 m!6331536))

(declare-fun m!6331538 () Bool)

(assert (=> b!5294109 m!6331538))

(declare-fun m!6331540 () Bool)

(assert (=> b!5294122 m!6331540))

(declare-fun m!6331542 () Bool)

(assert (=> b!5294122 m!6331542))

(declare-fun m!6331544 () Bool)

(assert (=> start!558674 m!6331544))

(declare-fun m!6331546 () Bool)

(assert (=> b!5294123 m!6331546))

(declare-fun m!6331548 () Bool)

(assert (=> b!5294123 m!6331548))

(declare-fun m!6331550 () Bool)

(assert (=> b!5294123 m!6331550))

(declare-fun m!6331552 () Bool)

(assert (=> b!5294123 m!6331552))

(declare-fun m!6331554 () Bool)

(assert (=> b!5294123 m!6331554))

(declare-fun m!6331556 () Bool)

(assert (=> b!5294123 m!6331556))

(declare-fun m!6331558 () Bool)

(assert (=> b!5294129 m!6331558))

(declare-fun m!6331560 () Bool)

(assert (=> b!5294129 m!6331560))

(declare-fun m!6331562 () Bool)

(assert (=> b!5294129 m!6331562))

(declare-fun m!6331564 () Bool)

(assert (=> b!5294129 m!6331564))

(declare-fun m!6331566 () Bool)

(assert (=> b!5294129 m!6331566))

(assert (=> b!5294129 m!6331550))

(declare-fun m!6331568 () Bool)

(assert (=> b!5294129 m!6331568))

(declare-fun m!6331570 () Bool)

(assert (=> b!5294126 m!6331570))

(declare-fun m!6331572 () Bool)

(assert (=> b!5294116 m!6331572))

(declare-fun m!6331574 () Bool)

(assert (=> b!5294116 m!6331574))

(declare-fun m!6331576 () Bool)

(assert (=> b!5294116 m!6331576))

(declare-fun m!6331578 () Bool)

(assert (=> b!5294116 m!6331578))

(declare-fun m!6331580 () Bool)

(assert (=> b!5294116 m!6331580))

(assert (=> b!5294116 m!6331578))

(assert (=> b!5294116 m!6331574))

(declare-fun m!6331582 () Bool)

(assert (=> b!5294116 m!6331582))

(declare-fun m!6331584 () Bool)

(assert (=> b!5294134 m!6331584))

(assert (=> b!5294134 m!6331520))

(declare-fun m!6331586 () Bool)

(assert (=> b!5294134 m!6331586))

(declare-fun m!6331588 () Bool)

(assert (=> b!5294124 m!6331588))

(declare-fun m!6331590 () Bool)

(assert (=> b!5294119 m!6331590))

(declare-fun m!6331592 () Bool)

(assert (=> b!5294133 m!6331592))

(declare-fun m!6331594 () Bool)

(assert (=> b!5294133 m!6331594))

(declare-fun m!6331596 () Bool)

(assert (=> b!5294133 m!6331596))

(declare-fun m!6331598 () Bool)

(assert (=> b!5294133 m!6331598))

(declare-fun m!6331600 () Bool)

(assert (=> b!5294133 m!6331600))

(declare-fun m!6331602 () Bool)

(assert (=> b!5294133 m!6331602))

(declare-fun m!6331604 () Bool)

(assert (=> b!5294133 m!6331604))

(declare-fun m!6331606 () Bool)

(assert (=> b!5294141 m!6331606))

(declare-fun m!6331608 () Bool)

(assert (=> b!5294141 m!6331608))

(declare-fun m!6331610 () Bool)

(assert (=> b!5294120 m!6331610))

(declare-fun m!6331612 () Bool)

(assert (=> b!5294114 m!6331612))

(declare-fun m!6331614 () Bool)

(assert (=> setNonEmpty!33989 m!6331614))

(declare-fun m!6331616 () Bool)

(assert (=> b!5294135 m!6331616))

(declare-fun m!6331618 () Bool)

(assert (=> b!5294127 m!6331618))

(declare-fun m!6331620 () Bool)

(assert (=> b!5294127 m!6331620))

(declare-fun m!6331622 () Bool)

(assert (=> b!5294118 m!6331622))

(assert (=> b!5294118 m!6331622))

(declare-fun m!6331624 () Bool)

(assert (=> b!5294118 m!6331624))

(declare-fun m!6331626 () Bool)

(assert (=> b!5294112 m!6331626))

(assert (=> b!5294137 m!6331626))

(declare-fun m!6331628 () Bool)

(assert (=> b!5294113 m!6331628))

(declare-fun m!6331630 () Bool)

(assert (=> b!5294113 m!6331630))

(declare-fun m!6331632 () Bool)

(assert (=> b!5294113 m!6331632))

(declare-fun m!6331634 () Bool)

(assert (=> b!5294113 m!6331634))

(declare-fun m!6331636 () Bool)

(assert (=> b!5294113 m!6331636))

(declare-fun m!6331638 () Bool)

(assert (=> b!5294113 m!6331638))

(declare-fun m!6331640 () Bool)

(assert (=> b!5294113 m!6331640))

(declare-fun m!6331642 () Bool)

(assert (=> b!5294113 m!6331642))

(declare-fun m!6331644 () Bool)

(assert (=> b!5294113 m!6331644))

(declare-fun m!6331646 () Bool)

(assert (=> b!5294113 m!6331646))

(declare-fun m!6331648 () Bool)

(assert (=> b!5294113 m!6331648))

(declare-fun m!6331650 () Bool)

(assert (=> b!5294113 m!6331650))

(declare-fun m!6331652 () Bool)

(assert (=> b!5294113 m!6331652))

(declare-fun m!6331654 () Bool)

(assert (=> b!5294113 m!6331654))

(declare-fun m!6331656 () Bool)

(assert (=> b!5294113 m!6331656))

(declare-fun m!6331658 () Bool)

(assert (=> b!5294113 m!6331658))

(declare-fun m!6331660 () Bool)

(assert (=> b!5294113 m!6331660))

(declare-fun m!6331662 () Bool)

(assert (=> b!5294113 m!6331662))

(declare-fun m!6331664 () Bool)

(assert (=> b!5294113 m!6331664))

(declare-fun m!6331666 () Bool)

(assert (=> b!5294113 m!6331666))

(declare-fun m!6331668 () Bool)

(assert (=> b!5294113 m!6331668))

(assert (=> b!5294113 m!6331652))

(declare-fun m!6331670 () Bool)

(assert (=> b!5294113 m!6331670))

(declare-fun m!6331672 () Bool)

(assert (=> b!5294113 m!6331672))

(declare-fun m!6331674 () Bool)

(assert (=> b!5294113 m!6331674))

(declare-fun m!6331676 () Bool)

(assert (=> b!5294113 m!6331676))

(assert (=> b!5294113 m!6331628))

(assert (=> b!5294113 m!6331664))

(assert (=> b!5294113 m!6331670))

(declare-fun m!6331678 () Bool)

(assert (=> b!5294113 m!6331678))

(check-sat (not b!5294142) (not b!5294130) (not b!5294131) (not b!5294143) (not b!5294116) (not b!5294137) (not b!5294124) (not b!5294120) (not b!5294139) (not b!5294126) (not b!5294108) (not b!5294136) (not b!5294135) (not b!5294141) (not b!5294118) (not b!5294134) (not b!5294107) (not b!5294123) (not b!5294113) (not b!5294111) (not b!5294138) (not b!5294129) (not b!5294114) (not b!5294133) tp_is_empty!39115 (not b!5294122) (not b!5294115) (not start!558674) (not setNonEmpty!33989) (not b!5294127) (not b!5294140) (not b!5294109) (not b!5294110) (not b!5294119) (not b!5294112))
(check-sat)
(get-model)

(declare-fun d!1702985 () Bool)

(assert (=> d!1702985 (= (isEmpty!32923 (t!374298 zl!343)) ((_ is Nil!60969) (t!374298 zl!343)))))

(assert (=> b!5294108 d!1702985))

(declare-fun bm!377372 () Bool)

(declare-fun call!377377 () (InoxSet Context!8630))

(declare-fun call!377380 () (InoxSet Context!8630))

(assert (=> bm!377372 (= call!377377 call!377380)))

(declare-fun b!5294638 () Bool)

(declare-fun e!3291254 () (InoxSet Context!8630))

(declare-fun call!377378 () (InoxSet Context!8630))

(assert (=> b!5294638 (= e!3291254 ((_ map or) call!377378 call!377380))))

(declare-fun bm!377373 () Bool)

(declare-fun call!377379 () (InoxSet Context!8630))

(assert (=> bm!377373 (= call!377380 call!377379)))

(declare-fun b!5294639 () Bool)

(declare-fun e!3291253 () Bool)

(assert (=> b!5294639 (= e!3291253 (nullable!5100 (regOne!30374 (regTwo!30374 (regOne!30374 r!7292)))))))

(declare-fun b!5294640 () Bool)

(declare-fun e!3291258 () (InoxSet Context!8630))

(assert (=> b!5294640 (= e!3291258 (store ((as const (Array Context!8630 Bool)) false) lt!2163304 true))))

(declare-fun call!377381 () List!61092)

(declare-fun bm!377374 () Bool)

(declare-fun c!918725 () Bool)

(declare-fun c!918726 () Bool)

(declare-fun $colon$colon!1364 (List!61092 Regex!14931) List!61092)

(assert (=> bm!377374 (= call!377381 ($colon$colon!1364 (exprs!4815 lt!2163304) (ite (or c!918726 c!918725) (regTwo!30374 (regTwo!30374 (regOne!30374 r!7292))) (regTwo!30374 (regOne!30374 r!7292)))))))

(declare-fun b!5294641 () Bool)

(declare-fun e!3291256 () (InoxSet Context!8630))

(assert (=> b!5294641 (= e!3291256 ((as const (Array Context!8630 Bool)) false))))

(declare-fun bm!377376 () Bool)

(declare-fun call!377382 () List!61092)

(assert (=> bm!377376 (= call!377382 call!377381)))

(declare-fun b!5294642 () Bool)

(declare-fun e!3291255 () (InoxSet Context!8630))

(assert (=> b!5294642 (= e!3291258 e!3291255)))

(declare-fun c!918723 () Bool)

(assert (=> b!5294642 (= c!918723 ((_ is Union!14931) (regTwo!30374 (regOne!30374 r!7292))))))

(declare-fun b!5294643 () Bool)

(declare-fun c!918727 () Bool)

(assert (=> b!5294643 (= c!918727 ((_ is Star!14931) (regTwo!30374 (regOne!30374 r!7292))))))

(declare-fun e!3291257 () (InoxSet Context!8630))

(assert (=> b!5294643 (= e!3291257 e!3291256)))

(declare-fun b!5294644 () Bool)

(assert (=> b!5294644 (= e!3291254 e!3291257)))

(assert (=> b!5294644 (= c!918725 ((_ is Concat!23776) (regTwo!30374 (regOne!30374 r!7292))))))

(declare-fun b!5294645 () Bool)

(assert (=> b!5294645 (= c!918726 e!3291253)))

(declare-fun res!2245586 () Bool)

(assert (=> b!5294645 (=> (not res!2245586) (not e!3291253))))

(assert (=> b!5294645 (= res!2245586 ((_ is Concat!23776) (regTwo!30374 (regOne!30374 r!7292))))))

(assert (=> b!5294645 (= e!3291255 e!3291254)))

(declare-fun b!5294646 () Bool)

(assert (=> b!5294646 (= e!3291256 call!377377)))

(declare-fun b!5294647 () Bool)

(assert (=> b!5294647 (= e!3291255 ((_ map or) call!377378 call!377379))))

(declare-fun bm!377375 () Bool)

(assert (=> bm!377375 (= call!377378 (derivationStepZipperDown!379 (ite c!918723 (regOne!30375 (regTwo!30374 (regOne!30374 r!7292))) (regOne!30374 (regTwo!30374 (regOne!30374 r!7292)))) (ite c!918723 lt!2163304 (Context!8631 call!377381)) (h!67418 s!2326)))))

(declare-fun d!1702995 () Bool)

(declare-fun c!918724 () Bool)

(assert (=> d!1702995 (= c!918724 (and ((_ is ElementMatch!14931) (regTwo!30374 (regOne!30374 r!7292))) (= (c!918549 (regTwo!30374 (regOne!30374 r!7292))) (h!67418 s!2326))))))

(assert (=> d!1702995 (= (derivationStepZipperDown!379 (regTwo!30374 (regOne!30374 r!7292)) lt!2163304 (h!67418 s!2326)) e!3291258)))

(declare-fun b!5294648 () Bool)

(assert (=> b!5294648 (= e!3291257 call!377377)))

(declare-fun bm!377377 () Bool)

(assert (=> bm!377377 (= call!377379 (derivationStepZipperDown!379 (ite c!918723 (regTwo!30375 (regTwo!30374 (regOne!30374 r!7292))) (ite c!918726 (regTwo!30374 (regTwo!30374 (regOne!30374 r!7292))) (ite c!918725 (regOne!30374 (regTwo!30374 (regOne!30374 r!7292))) (reg!15260 (regTwo!30374 (regOne!30374 r!7292)))))) (ite (or c!918723 c!918726) lt!2163304 (Context!8631 call!377382)) (h!67418 s!2326)))))

(assert (= (and d!1702995 c!918724) b!5294640))

(assert (= (and d!1702995 (not c!918724)) b!5294642))

(assert (= (and b!5294642 c!918723) b!5294647))

(assert (= (and b!5294642 (not c!918723)) b!5294645))

(assert (= (and b!5294645 res!2245586) b!5294639))

(assert (= (and b!5294645 c!918726) b!5294638))

(assert (= (and b!5294645 (not c!918726)) b!5294644))

(assert (= (and b!5294644 c!918725) b!5294648))

(assert (= (and b!5294644 (not c!918725)) b!5294643))

(assert (= (and b!5294643 c!918727) b!5294646))

(assert (= (and b!5294643 (not c!918727)) b!5294641))

(assert (= (or b!5294648 b!5294646) bm!377376))

(assert (= (or b!5294648 b!5294646) bm!377372))

(assert (= (or b!5294638 bm!377376) bm!377374))

(assert (= (or b!5294638 bm!377372) bm!377373))

(assert (= (or b!5294647 bm!377373) bm!377377))

(assert (= (or b!5294647 b!5294638) bm!377375))

(declare-fun m!6332170 () Bool)

(assert (=> bm!377377 m!6332170))

(declare-fun m!6332172 () Bool)

(assert (=> b!5294639 m!6332172))

(declare-fun m!6332174 () Bool)

(assert (=> bm!377375 m!6332174))

(declare-fun m!6332176 () Bool)

(assert (=> b!5294640 m!6332176))

(declare-fun m!6332178 () Bool)

(assert (=> bm!377374 m!6332178))

(assert (=> b!5294127 d!1702995))

(declare-fun bm!377381 () Bool)

(declare-fun call!377386 () (InoxSet Context!8630))

(declare-fun call!377389 () (InoxSet Context!8630))

(assert (=> bm!377381 (= call!377386 call!377389)))

(declare-fun b!5294658 () Bool)

(declare-fun e!3291267 () (InoxSet Context!8630))

(declare-fun call!377387 () (InoxSet Context!8630))

(assert (=> b!5294658 (= e!3291267 ((_ map or) call!377387 call!377389))))

(declare-fun bm!377382 () Bool)

(declare-fun call!377388 () (InoxSet Context!8630))

(assert (=> bm!377382 (= call!377389 call!377388)))

(declare-fun b!5294659 () Bool)

(declare-fun e!3291266 () Bool)

(assert (=> b!5294659 (= e!3291266 (nullable!5100 (regOne!30374 (regOne!30374 (regOne!30374 r!7292)))))))

(declare-fun b!5294660 () Bool)

(declare-fun e!3291271 () (InoxSet Context!8630))

(assert (=> b!5294660 (= e!3291271 (store ((as const (Array Context!8630 Bool)) false) lt!2163303 true))))

(declare-fun c!918733 () Bool)

(declare-fun c!918732 () Bool)

(declare-fun call!377390 () List!61092)

(declare-fun bm!377383 () Bool)

(assert (=> bm!377383 (= call!377390 ($colon$colon!1364 (exprs!4815 lt!2163303) (ite (or c!918733 c!918732) (regTwo!30374 (regOne!30374 (regOne!30374 r!7292))) (regOne!30374 (regOne!30374 r!7292)))))))

(declare-fun b!5294661 () Bool)

(declare-fun e!3291269 () (InoxSet Context!8630))

(assert (=> b!5294661 (= e!3291269 ((as const (Array Context!8630 Bool)) false))))

(declare-fun bm!377385 () Bool)

(declare-fun call!377391 () List!61092)

(assert (=> bm!377385 (= call!377391 call!377390)))

(declare-fun b!5294662 () Bool)

(declare-fun e!3291268 () (InoxSet Context!8630))

(assert (=> b!5294662 (= e!3291271 e!3291268)))

(declare-fun c!918730 () Bool)

(assert (=> b!5294662 (= c!918730 ((_ is Union!14931) (regOne!30374 (regOne!30374 r!7292))))))

(declare-fun b!5294663 () Bool)

(declare-fun c!918734 () Bool)

(assert (=> b!5294663 (= c!918734 ((_ is Star!14931) (regOne!30374 (regOne!30374 r!7292))))))

(declare-fun e!3291270 () (InoxSet Context!8630))

(assert (=> b!5294663 (= e!3291270 e!3291269)))

(declare-fun b!5294664 () Bool)

(assert (=> b!5294664 (= e!3291267 e!3291270)))

(assert (=> b!5294664 (= c!918732 ((_ is Concat!23776) (regOne!30374 (regOne!30374 r!7292))))))

(declare-fun b!5294665 () Bool)

(assert (=> b!5294665 (= c!918733 e!3291266)))

(declare-fun res!2245592 () Bool)

(assert (=> b!5294665 (=> (not res!2245592) (not e!3291266))))

(assert (=> b!5294665 (= res!2245592 ((_ is Concat!23776) (regOne!30374 (regOne!30374 r!7292))))))

(assert (=> b!5294665 (= e!3291268 e!3291267)))

(declare-fun b!5294666 () Bool)

(assert (=> b!5294666 (= e!3291269 call!377386)))

(declare-fun b!5294667 () Bool)

(assert (=> b!5294667 (= e!3291268 ((_ map or) call!377387 call!377388))))

(declare-fun bm!377384 () Bool)

(assert (=> bm!377384 (= call!377387 (derivationStepZipperDown!379 (ite c!918730 (regOne!30375 (regOne!30374 (regOne!30374 r!7292))) (regOne!30374 (regOne!30374 (regOne!30374 r!7292)))) (ite c!918730 lt!2163303 (Context!8631 call!377390)) (h!67418 s!2326)))))

(declare-fun d!1703043 () Bool)

(declare-fun c!918731 () Bool)

(assert (=> d!1703043 (= c!918731 (and ((_ is ElementMatch!14931) (regOne!30374 (regOne!30374 r!7292))) (= (c!918549 (regOne!30374 (regOne!30374 r!7292))) (h!67418 s!2326))))))

(assert (=> d!1703043 (= (derivationStepZipperDown!379 (regOne!30374 (regOne!30374 r!7292)) lt!2163303 (h!67418 s!2326)) e!3291271)))

(declare-fun b!5294668 () Bool)

(assert (=> b!5294668 (= e!3291270 call!377386)))

(declare-fun bm!377386 () Bool)

(assert (=> bm!377386 (= call!377388 (derivationStepZipperDown!379 (ite c!918730 (regTwo!30375 (regOne!30374 (regOne!30374 r!7292))) (ite c!918733 (regTwo!30374 (regOne!30374 (regOne!30374 r!7292))) (ite c!918732 (regOne!30374 (regOne!30374 (regOne!30374 r!7292))) (reg!15260 (regOne!30374 (regOne!30374 r!7292)))))) (ite (or c!918730 c!918733) lt!2163303 (Context!8631 call!377391)) (h!67418 s!2326)))))

(assert (= (and d!1703043 c!918731) b!5294660))

(assert (= (and d!1703043 (not c!918731)) b!5294662))

(assert (= (and b!5294662 c!918730) b!5294667))

(assert (= (and b!5294662 (not c!918730)) b!5294665))

(assert (= (and b!5294665 res!2245592) b!5294659))

(assert (= (and b!5294665 c!918733) b!5294658))

(assert (= (and b!5294665 (not c!918733)) b!5294664))

(assert (= (and b!5294664 c!918732) b!5294668))

(assert (= (and b!5294664 (not c!918732)) b!5294663))

(assert (= (and b!5294663 c!918734) b!5294666))

(assert (= (and b!5294663 (not c!918734)) b!5294661))

(assert (= (or b!5294668 b!5294666) bm!377385))

(assert (= (or b!5294668 b!5294666) bm!377381))

(assert (= (or b!5294658 bm!377385) bm!377383))

(assert (= (or b!5294658 bm!377381) bm!377382))

(assert (= (or b!5294667 bm!377382) bm!377386))

(assert (= (or b!5294667 b!5294658) bm!377384))

(declare-fun m!6332188 () Bool)

(assert (=> bm!377386 m!6332188))

(declare-fun m!6332190 () Bool)

(assert (=> b!5294659 m!6332190))

(declare-fun m!6332192 () Bool)

(assert (=> bm!377384 m!6332192))

(assert (=> b!5294660 m!6331558))

(declare-fun m!6332194 () Bool)

(assert (=> bm!377383 m!6332194))

(assert (=> b!5294127 d!1703043))

(declare-fun d!1703049 () Bool)

(declare-fun nullableFct!1466 (Regex!14931) Bool)

(assert (=> d!1703049 (= (nullable!5100 (regOne!30374 (regOne!30374 r!7292))) (nullableFct!1466 (regOne!30374 (regOne!30374 r!7292))))))

(declare-fun bs!1228021 () Bool)

(assert (= bs!1228021 d!1703049))

(declare-fun m!6332196 () Bool)

(assert (=> bs!1228021 m!6332196))

(assert (=> b!5294126 d!1703049))

(declare-fun d!1703051 () Bool)

(assert (=> d!1703051 (= (isEmpty!32924 (t!374297 (exprs!4815 (h!67417 zl!343)))) ((_ is Nil!60968) (t!374297 (exprs!4815 (h!67417 zl!343)))))))

(assert (=> b!5294124 d!1703051))

(declare-fun d!1703053 () Bool)

(declare-fun c!918739 () Bool)

(declare-fun isEmpty!32927 (List!61094) Bool)

(assert (=> d!1703053 (= c!918739 (isEmpty!32927 (t!374299 s!2326)))))

(declare-fun e!3291304 () Bool)

(assert (=> d!1703053 (= (matchZipper!1175 lt!2163341 (t!374299 s!2326)) e!3291304)))

(declare-fun b!5294736 () Bool)

(declare-fun nullableZipper!1314 ((InoxSet Context!8630)) Bool)

(assert (=> b!5294736 (= e!3291304 (nullableZipper!1314 lt!2163341))))

(declare-fun b!5294737 () Bool)

(declare-fun head!11346 (List!61094) C!30132)

(declare-fun tail!10443 (List!61094) List!61094)

(assert (=> b!5294737 (= e!3291304 (matchZipper!1175 (derivationStepZipper!1174 lt!2163341 (head!11346 (t!374299 s!2326))) (tail!10443 (t!374299 s!2326))))))

(assert (= (and d!1703053 c!918739) b!5294736))

(assert (= (and d!1703053 (not c!918739)) b!5294737))

(declare-fun m!6332202 () Bool)

(assert (=> d!1703053 m!6332202))

(declare-fun m!6332204 () Bool)

(assert (=> b!5294736 m!6332204))

(declare-fun m!6332206 () Bool)

(assert (=> b!5294737 m!6332206))

(assert (=> b!5294737 m!6332206))

(declare-fun m!6332208 () Bool)

(assert (=> b!5294737 m!6332208))

(declare-fun m!6332210 () Bool)

(assert (=> b!5294737 m!6332210))

(assert (=> b!5294737 m!6332208))

(assert (=> b!5294737 m!6332210))

(declare-fun m!6332212 () Bool)

(assert (=> b!5294737 m!6332212))

(assert (=> b!5294123 d!1703053))

(declare-fun d!1703061 () Bool)

(declare-fun e!3291307 () Bool)

(assert (=> d!1703061 (= (matchZipper!1175 ((_ map or) lt!2163329 lt!2163314) (t!374299 s!2326)) e!3291307)))

(declare-fun res!2245600 () Bool)

(assert (=> d!1703061 (=> res!2245600 e!3291307)))

(assert (=> d!1703061 (= res!2245600 (matchZipper!1175 lt!2163329 (t!374299 s!2326)))))

(declare-fun lt!2163438 () Unit!153242)

(declare-fun choose!39546 ((InoxSet Context!8630) (InoxSet Context!8630) List!61094) Unit!153242)

(assert (=> d!1703061 (= lt!2163438 (choose!39546 lt!2163329 lt!2163314 (t!374299 s!2326)))))

(assert (=> d!1703061 (= (lemmaZipperConcatMatchesSameAsBothZippers!168 lt!2163329 lt!2163314 (t!374299 s!2326)) lt!2163438)))

(declare-fun b!5294740 () Bool)

(assert (=> b!5294740 (= e!3291307 (matchZipper!1175 lt!2163314 (t!374299 s!2326)))))

(assert (= (and d!1703061 (not res!2245600)) b!5294740))

(declare-fun m!6332214 () Bool)

(assert (=> d!1703061 m!6332214))

(assert (=> d!1703061 m!6331524))

(declare-fun m!6332216 () Bool)

(assert (=> d!1703061 m!6332216))

(assert (=> b!5294740 m!6331518))

(assert (=> b!5294123 d!1703061))

(declare-fun b!5294751 () Bool)

(declare-fun e!3291314 () Bool)

(assert (=> b!5294751 (= e!3291314 (nullable!5100 (h!67416 (exprs!4815 lt!2163303))))))

(declare-fun call!377397 () (InoxSet Context!8630))

(declare-fun e!3291316 () (InoxSet Context!8630))

(declare-fun b!5294752 () Bool)

(assert (=> b!5294752 (= e!3291316 ((_ map or) call!377397 (derivationStepZipperUp!303 (Context!8631 (t!374297 (exprs!4815 lt!2163303))) (h!67418 s!2326))))))

(declare-fun d!1703063 () Bool)

(declare-fun c!918745 () Bool)

(assert (=> d!1703063 (= c!918745 e!3291314)))

(declare-fun res!2245603 () Bool)

(assert (=> d!1703063 (=> (not res!2245603) (not e!3291314))))

(assert (=> d!1703063 (= res!2245603 ((_ is Cons!60968) (exprs!4815 lt!2163303)))))

(assert (=> d!1703063 (= (derivationStepZipperUp!303 lt!2163303 (h!67418 s!2326)) e!3291316)))

(declare-fun b!5294753 () Bool)

(declare-fun e!3291315 () (InoxSet Context!8630))

(assert (=> b!5294753 (= e!3291315 ((as const (Array Context!8630 Bool)) false))))

(declare-fun bm!377392 () Bool)

(assert (=> bm!377392 (= call!377397 (derivationStepZipperDown!379 (h!67416 (exprs!4815 lt!2163303)) (Context!8631 (t!374297 (exprs!4815 lt!2163303))) (h!67418 s!2326)))))

(declare-fun b!5294754 () Bool)

(assert (=> b!5294754 (= e!3291316 e!3291315)))

(declare-fun c!918744 () Bool)

(assert (=> b!5294754 (= c!918744 ((_ is Cons!60968) (exprs!4815 lt!2163303)))))

(declare-fun b!5294755 () Bool)

(assert (=> b!5294755 (= e!3291315 call!377397)))

(assert (= (and d!1703063 res!2245603) b!5294751))

(assert (= (and d!1703063 c!918745) b!5294752))

(assert (= (and d!1703063 (not c!918745)) b!5294754))

(assert (= (and b!5294754 c!918744) b!5294755))

(assert (= (and b!5294754 (not c!918744)) b!5294753))

(assert (= (or b!5294752 b!5294755) bm!377392))

(declare-fun m!6332218 () Bool)

(assert (=> b!5294751 m!6332218))

(declare-fun m!6332220 () Bool)

(assert (=> b!5294752 m!6332220))

(declare-fun m!6332222 () Bool)

(assert (=> bm!377392 m!6332222))

(assert (=> b!5294123 d!1703063))

(declare-fun d!1703065 () Bool)

(declare-fun dynLambda!24109 (Int Context!8630) (InoxSet Context!8630))

(assert (=> d!1703065 (= (flatMap!658 lt!2163318 lambda!268311) (dynLambda!24109 lambda!268311 lt!2163303))))

(declare-fun lt!2163441 () Unit!153242)

(declare-fun choose!39547 ((InoxSet Context!8630) Context!8630 Int) Unit!153242)

(assert (=> d!1703065 (= lt!2163441 (choose!39547 lt!2163318 lt!2163303 lambda!268311))))

(assert (=> d!1703065 (= lt!2163318 (store ((as const (Array Context!8630 Bool)) false) lt!2163303 true))))

(assert (=> d!1703065 (= (lemmaFlatMapOnSingletonSet!190 lt!2163318 lt!2163303 lambda!268311) lt!2163441)))

(declare-fun b_lambda!204145 () Bool)

(assert (=> (not b_lambda!204145) (not d!1703065)))

(declare-fun bs!1228025 () Bool)

(assert (= bs!1228025 d!1703065))

(assert (=> bs!1228025 m!6331546))

(declare-fun m!6332224 () Bool)

(assert (=> bs!1228025 m!6332224))

(declare-fun m!6332226 () Bool)

(assert (=> bs!1228025 m!6332226))

(assert (=> bs!1228025 m!6331558))

(assert (=> b!5294123 d!1703065))

(declare-fun d!1703067 () Bool)

(declare-fun choose!39548 ((InoxSet Context!8630) Int) (InoxSet Context!8630))

(assert (=> d!1703067 (= (flatMap!658 lt!2163318 lambda!268311) (choose!39548 lt!2163318 lambda!268311))))

(declare-fun bs!1228026 () Bool)

(assert (= bs!1228026 d!1703067))

(declare-fun m!6332228 () Bool)

(assert (=> bs!1228026 m!6332228))

(assert (=> b!5294123 d!1703067))

(declare-fun d!1703069 () Bool)

(declare-fun c!918746 () Bool)

(assert (=> d!1703069 (= c!918746 (isEmpty!32927 (t!374299 s!2326)))))

(declare-fun e!3291317 () Bool)

(assert (=> d!1703069 (= (matchZipper!1175 lt!2163300 (t!374299 s!2326)) e!3291317)))

(declare-fun b!5294756 () Bool)

(assert (=> b!5294756 (= e!3291317 (nullableZipper!1314 lt!2163300))))

(declare-fun b!5294757 () Bool)

(assert (=> b!5294757 (= e!3291317 (matchZipper!1175 (derivationStepZipper!1174 lt!2163300 (head!11346 (t!374299 s!2326))) (tail!10443 (t!374299 s!2326))))))

(assert (= (and d!1703069 c!918746) b!5294756))

(assert (= (and d!1703069 (not c!918746)) b!5294757))

(assert (=> d!1703069 m!6332202))

(declare-fun m!6332230 () Bool)

(assert (=> b!5294756 m!6332230))

(assert (=> b!5294757 m!6332206))

(assert (=> b!5294757 m!6332206))

(declare-fun m!6332232 () Bool)

(assert (=> b!5294757 m!6332232))

(assert (=> b!5294757 m!6332210))

(assert (=> b!5294757 m!6332232))

(assert (=> b!5294757 m!6332210))

(declare-fun m!6332234 () Bool)

(assert (=> b!5294757 m!6332234))

(assert (=> b!5294123 d!1703069))

(declare-fun b!5294764 () Bool)

(assert (=> b!5294764 true))

(declare-fun bs!1228027 () Bool)

(declare-fun b!5294766 () Bool)

(assert (= bs!1228027 (and b!5294766 b!5294764)))

(declare-fun lambda!268381 () Int)

(declare-fun lt!2163453 () Int)

(declare-fun lambda!268380 () Int)

(declare-fun lt!2163452 () Int)

(assert (=> bs!1228027 (= (= lt!2163452 lt!2163453) (= lambda!268381 lambda!268380))))

(assert (=> b!5294766 true))

(declare-fun d!1703071 () Bool)

(declare-fun e!3291323 () Bool)

(assert (=> d!1703071 e!3291323))

(declare-fun res!2245606 () Bool)

(assert (=> d!1703071 (=> (not res!2245606) (not e!3291323))))

(assert (=> d!1703071 (= res!2245606 (>= lt!2163452 0))))

(declare-fun e!3291322 () Int)

(assert (=> d!1703071 (= lt!2163452 e!3291322)))

(declare-fun c!918755 () Bool)

(assert (=> d!1703071 (= c!918755 ((_ is Cons!60969) lt!2163331))))

(assert (=> d!1703071 (= (zipperDepth!48 lt!2163331) lt!2163452)))

(assert (=> b!5294764 (= e!3291322 lt!2163453)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!26 (Context!8630) Int)

(assert (=> b!5294764 (= lt!2163453 (maxBigInt!0 (contextDepth!26 (h!67417 lt!2163331)) (zipperDepth!48 (t!374298 lt!2163331))))))

(declare-fun lambda!268379 () Int)

(declare-fun lt!2163451 () Unit!153242)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!20 (List!61093 Int Int Int) Unit!153242)

(assert (=> b!5294764 (= lt!2163451 (lemmaForallContextDepthBiggerThanTransitive!20 (t!374298 lt!2163331) lt!2163453 (zipperDepth!48 (t!374298 lt!2163331)) lambda!268379))))

(declare-fun forall!14342 (List!61093 Int) Bool)

(assert (=> b!5294764 (forall!14342 (t!374298 lt!2163331) lambda!268380)))

(declare-fun lt!2163450 () Unit!153242)

(assert (=> b!5294764 (= lt!2163450 lt!2163451)))

(declare-fun b!5294765 () Bool)

(assert (=> b!5294765 (= e!3291322 0)))

(assert (=> b!5294766 (= e!3291323 (forall!14342 lt!2163331 lambda!268381))))

(assert (= (and d!1703071 c!918755) b!5294764))

(assert (= (and d!1703071 (not c!918755)) b!5294765))

(assert (= (and d!1703071 res!2245606) b!5294766))

(declare-fun m!6332236 () Bool)

(assert (=> b!5294764 m!6332236))

(assert (=> b!5294764 m!6332236))

(declare-fun m!6332238 () Bool)

(assert (=> b!5294764 m!6332238))

(declare-fun m!6332240 () Bool)

(assert (=> b!5294764 m!6332240))

(declare-fun m!6332242 () Bool)

(assert (=> b!5294764 m!6332242))

(assert (=> b!5294764 m!6332242))

(assert (=> b!5294764 m!6332236))

(declare-fun m!6332244 () Bool)

(assert (=> b!5294764 m!6332244))

(declare-fun m!6332246 () Bool)

(assert (=> b!5294766 m!6332246))

(assert (=> b!5294122 d!1703071))

(declare-fun bs!1228028 () Bool)

(declare-fun b!5294769 () Bool)

(assert (= bs!1228028 (and b!5294769 b!5294764)))

(declare-fun lambda!268382 () Int)

(assert (=> bs!1228028 (= lambda!268382 lambda!268379)))

(declare-fun lt!2163457 () Int)

(declare-fun lambda!268383 () Int)

(assert (=> bs!1228028 (= (= lt!2163457 lt!2163453) (= lambda!268383 lambda!268380))))

(declare-fun bs!1228029 () Bool)

(assert (= bs!1228029 (and b!5294769 b!5294766)))

(assert (=> bs!1228029 (= (= lt!2163457 lt!2163452) (= lambda!268383 lambda!268381))))

(assert (=> b!5294769 true))

(declare-fun bs!1228030 () Bool)

(declare-fun b!5294771 () Bool)

(assert (= bs!1228030 (and b!5294771 b!5294764)))

(declare-fun lt!2163456 () Int)

(declare-fun lambda!268384 () Int)

(assert (=> bs!1228030 (= (= lt!2163456 lt!2163453) (= lambda!268384 lambda!268380))))

(declare-fun bs!1228031 () Bool)

(assert (= bs!1228031 (and b!5294771 b!5294766)))

(assert (=> bs!1228031 (= (= lt!2163456 lt!2163452) (= lambda!268384 lambda!268381))))

(declare-fun bs!1228032 () Bool)

(assert (= bs!1228032 (and b!5294771 b!5294769)))

(assert (=> bs!1228032 (= (= lt!2163456 lt!2163457) (= lambda!268384 lambda!268383))))

(assert (=> b!5294771 true))

(declare-fun d!1703073 () Bool)

(declare-fun e!3291325 () Bool)

(assert (=> d!1703073 e!3291325))

(declare-fun res!2245607 () Bool)

(assert (=> d!1703073 (=> (not res!2245607) (not e!3291325))))

(assert (=> d!1703073 (= res!2245607 (>= lt!2163456 0))))

(declare-fun e!3291324 () Int)

(assert (=> d!1703073 (= lt!2163456 e!3291324)))

(declare-fun c!918756 () Bool)

(assert (=> d!1703073 (= c!918756 ((_ is Cons!60969) zl!343))))

(assert (=> d!1703073 (= (zipperDepth!48 zl!343) lt!2163456)))

(assert (=> b!5294769 (= e!3291324 lt!2163457)))

(assert (=> b!5294769 (= lt!2163457 (maxBigInt!0 (contextDepth!26 (h!67417 zl!343)) (zipperDepth!48 (t!374298 zl!343))))))

(declare-fun lt!2163455 () Unit!153242)

(assert (=> b!5294769 (= lt!2163455 (lemmaForallContextDepthBiggerThanTransitive!20 (t!374298 zl!343) lt!2163457 (zipperDepth!48 (t!374298 zl!343)) lambda!268382))))

(assert (=> b!5294769 (forall!14342 (t!374298 zl!343) lambda!268383)))

(declare-fun lt!2163454 () Unit!153242)

(assert (=> b!5294769 (= lt!2163454 lt!2163455)))

(declare-fun b!5294770 () Bool)

(assert (=> b!5294770 (= e!3291324 0)))

(assert (=> b!5294771 (= e!3291325 (forall!14342 zl!343 lambda!268384))))

(assert (= (and d!1703073 c!918756) b!5294769))

(assert (= (and d!1703073 (not c!918756)) b!5294770))

(assert (= (and d!1703073 res!2245607) b!5294771))

(declare-fun m!6332248 () Bool)

(assert (=> b!5294769 m!6332248))

(assert (=> b!5294769 m!6332248))

(declare-fun m!6332250 () Bool)

(assert (=> b!5294769 m!6332250))

(declare-fun m!6332252 () Bool)

(assert (=> b!5294769 m!6332252))

(declare-fun m!6332254 () Bool)

(assert (=> b!5294769 m!6332254))

(assert (=> b!5294769 m!6332254))

(assert (=> b!5294769 m!6332248))

(declare-fun m!6332256 () Bool)

(assert (=> b!5294769 m!6332256))

(declare-fun m!6332258 () Bool)

(assert (=> b!5294771 m!6332258))

(assert (=> b!5294122 d!1703073))

(declare-fun b!5294790 () Bool)

(declare-fun e!3291346 () Bool)

(declare-fun e!3291340 () Bool)

(assert (=> b!5294790 (= e!3291346 e!3291340)))

(declare-fun c!918761 () Bool)

(assert (=> b!5294790 (= c!918761 ((_ is Star!14931) lt!2163313))))

(declare-fun b!5294791 () Bool)

(declare-fun res!2245622 () Bool)

(declare-fun e!3291345 () Bool)

(assert (=> b!5294791 (=> res!2245622 e!3291345)))

(assert (=> b!5294791 (= res!2245622 (not ((_ is Concat!23776) lt!2163313)))))

(declare-fun e!3291342 () Bool)

(assert (=> b!5294791 (= e!3291342 e!3291345)))

(declare-fun b!5294792 () Bool)

(declare-fun res!2245621 () Bool)

(declare-fun e!3291344 () Bool)

(assert (=> b!5294792 (=> (not res!2245621) (not e!3291344))))

(declare-fun call!377406 () Bool)

(assert (=> b!5294792 (= res!2245621 call!377406)))

(assert (=> b!5294792 (= e!3291342 e!3291344)))

(declare-fun b!5294793 () Bool)

(declare-fun e!3291341 () Bool)

(assert (=> b!5294793 (= e!3291345 e!3291341)))

(declare-fun res!2245618 () Bool)

(assert (=> b!5294793 (=> (not res!2245618) (not e!3291341))))

(assert (=> b!5294793 (= res!2245618 call!377406)))

(declare-fun b!5294794 () Bool)

(declare-fun e!3291343 () Bool)

(assert (=> b!5294794 (= e!3291340 e!3291343)))

(declare-fun res!2245619 () Bool)

(assert (=> b!5294794 (= res!2245619 (not (nullable!5100 (reg!15260 lt!2163313))))))

(assert (=> b!5294794 (=> (not res!2245619) (not e!3291343))))

(declare-fun d!1703075 () Bool)

(declare-fun res!2245620 () Bool)

(assert (=> d!1703075 (=> res!2245620 e!3291346)))

(assert (=> d!1703075 (= res!2245620 ((_ is ElementMatch!14931) lt!2163313))))

(assert (=> d!1703075 (= (validRegex!6667 lt!2163313) e!3291346)))

(declare-fun bm!377399 () Bool)

(declare-fun c!918762 () Bool)

(declare-fun call!377404 () Bool)

(assert (=> bm!377399 (= call!377404 (validRegex!6667 (ite c!918761 (reg!15260 lt!2163313) (ite c!918762 (regTwo!30375 lt!2163313) (regTwo!30374 lt!2163313)))))))

(declare-fun bm!377400 () Bool)

(assert (=> bm!377400 (= call!377406 (validRegex!6667 (ite c!918762 (regOne!30375 lt!2163313) (regOne!30374 lt!2163313))))))

(declare-fun b!5294795 () Bool)

(declare-fun call!377405 () Bool)

(assert (=> b!5294795 (= e!3291341 call!377405)))

(declare-fun b!5294796 () Bool)

(assert (=> b!5294796 (= e!3291343 call!377404)))

(declare-fun b!5294797 () Bool)

(assert (=> b!5294797 (= e!3291344 call!377405)))

(declare-fun bm!377401 () Bool)

(assert (=> bm!377401 (= call!377405 call!377404)))

(declare-fun b!5294798 () Bool)

(assert (=> b!5294798 (= e!3291340 e!3291342)))

(assert (=> b!5294798 (= c!918762 ((_ is Union!14931) lt!2163313))))

(assert (= (and d!1703075 (not res!2245620)) b!5294790))

(assert (= (and b!5294790 c!918761) b!5294794))

(assert (= (and b!5294790 (not c!918761)) b!5294798))

(assert (= (and b!5294794 res!2245619) b!5294796))

(assert (= (and b!5294798 c!918762) b!5294792))

(assert (= (and b!5294798 (not c!918762)) b!5294791))

(assert (= (and b!5294792 res!2245621) b!5294797))

(assert (= (and b!5294791 (not res!2245622)) b!5294793))

(assert (= (and b!5294793 res!2245618) b!5294795))

(assert (= (or b!5294797 b!5294795) bm!377401))

(assert (= (or b!5294792 b!5294793) bm!377400))

(assert (= (or b!5294796 bm!377401) bm!377399))

(declare-fun m!6332260 () Bool)

(assert (=> b!5294794 m!6332260))

(declare-fun m!6332262 () Bool)

(assert (=> bm!377399 m!6332262))

(declare-fun m!6332264 () Bool)

(assert (=> bm!377400 m!6332264))

(assert (=> b!5294120 d!1703075))

(declare-fun d!1703077 () Bool)

(declare-fun lt!2163460 () Int)

(assert (=> d!1703077 (>= lt!2163460 0)))

(declare-fun e!3291349 () Int)

(assert (=> d!1703077 (= lt!2163460 e!3291349)))

(declare-fun c!918766 () Bool)

(assert (=> d!1703077 (= c!918766 ((_ is Cons!60968) (exprs!4815 lt!2163319)))))

(assert (=> d!1703077 (= (contextDepthTotal!72 lt!2163319) lt!2163460)))

(declare-fun b!5294803 () Bool)

(declare-fun regexDepthTotal!26 (Regex!14931) Int)

(assert (=> b!5294803 (= e!3291349 (+ (regexDepthTotal!26 (h!67416 (exprs!4815 lt!2163319))) (contextDepthTotal!72 (Context!8631 (t!374297 (exprs!4815 lt!2163319))))))))

(declare-fun b!5294804 () Bool)

(assert (=> b!5294804 (= e!3291349 1)))

(assert (= (and d!1703077 c!918766) b!5294803))

(assert (= (and d!1703077 (not c!918766)) b!5294804))

(declare-fun m!6332266 () Bool)

(assert (=> b!5294803 m!6332266))

(declare-fun m!6332268 () Bool)

(assert (=> b!5294803 m!6332268))

(assert (=> b!5294141 d!1703077))

(declare-fun d!1703079 () Bool)

(declare-fun lt!2163461 () Int)

(assert (=> d!1703079 (>= lt!2163461 0)))

(declare-fun e!3291350 () Int)

(assert (=> d!1703079 (= lt!2163461 e!3291350)))

(declare-fun c!918767 () Bool)

(assert (=> d!1703079 (= c!918767 ((_ is Cons!60968) (exprs!4815 (h!67417 zl!343))))))

(assert (=> d!1703079 (= (contextDepthTotal!72 (h!67417 zl!343)) lt!2163461)))

(declare-fun b!5294805 () Bool)

(assert (=> b!5294805 (= e!3291350 (+ (regexDepthTotal!26 (h!67416 (exprs!4815 (h!67417 zl!343)))) (contextDepthTotal!72 (Context!8631 (t!374297 (exprs!4815 (h!67417 zl!343)))))))))

(declare-fun b!5294806 () Bool)

(assert (=> b!5294806 (= e!3291350 1)))

(assert (= (and d!1703079 c!918767) b!5294805))

(assert (= (and d!1703079 (not c!918767)) b!5294806))

(declare-fun m!6332270 () Bool)

(assert (=> b!5294805 m!6332270))

(declare-fun m!6332272 () Bool)

(assert (=> b!5294805 m!6332272))

(assert (=> b!5294141 d!1703079))

(declare-fun d!1703081 () Bool)

(declare-fun c!918768 () Bool)

(assert (=> d!1703081 (= c!918768 (isEmpty!32927 (t!374299 s!2326)))))

(declare-fun e!3291351 () Bool)

(assert (=> d!1703081 (= (matchZipper!1175 lt!2163320 (t!374299 s!2326)) e!3291351)))

(declare-fun b!5294807 () Bool)

(assert (=> b!5294807 (= e!3291351 (nullableZipper!1314 lt!2163320))))

(declare-fun b!5294808 () Bool)

(assert (=> b!5294808 (= e!3291351 (matchZipper!1175 (derivationStepZipper!1174 lt!2163320 (head!11346 (t!374299 s!2326))) (tail!10443 (t!374299 s!2326))))))

(assert (= (and d!1703081 c!918768) b!5294807))

(assert (= (and d!1703081 (not c!918768)) b!5294808))

(assert (=> d!1703081 m!6332202))

(declare-fun m!6332274 () Bool)

(assert (=> b!5294807 m!6332274))

(assert (=> b!5294808 m!6332206))

(assert (=> b!5294808 m!6332206))

(declare-fun m!6332276 () Bool)

(assert (=> b!5294808 m!6332276))

(assert (=> b!5294808 m!6332210))

(assert (=> b!5294808 m!6332276))

(assert (=> b!5294808 m!6332210))

(declare-fun m!6332278 () Bool)

(assert (=> b!5294808 m!6332278))

(assert (=> b!5294142 d!1703081))

(declare-fun d!1703083 () Bool)

(declare-fun c!918769 () Bool)

(assert (=> d!1703083 (= c!918769 (isEmpty!32927 (t!374299 s!2326)))))

(declare-fun e!3291352 () Bool)

(assert (=> d!1703083 (= (matchZipper!1175 lt!2163311 (t!374299 s!2326)) e!3291352)))

(declare-fun b!5294809 () Bool)

(assert (=> b!5294809 (= e!3291352 (nullableZipper!1314 lt!2163311))))

(declare-fun b!5294810 () Bool)

(assert (=> b!5294810 (= e!3291352 (matchZipper!1175 (derivationStepZipper!1174 lt!2163311 (head!11346 (t!374299 s!2326))) (tail!10443 (t!374299 s!2326))))))

(assert (= (and d!1703083 c!918769) b!5294809))

(assert (= (and d!1703083 (not c!918769)) b!5294810))

(assert (=> d!1703083 m!6332202))

(declare-fun m!6332280 () Bool)

(assert (=> b!5294809 m!6332280))

(assert (=> b!5294810 m!6332206))

(assert (=> b!5294810 m!6332206))

(declare-fun m!6332282 () Bool)

(assert (=> b!5294810 m!6332282))

(assert (=> b!5294810 m!6332210))

(assert (=> b!5294810 m!6332282))

(assert (=> b!5294810 m!6332210))

(declare-fun m!6332284 () Bool)

(assert (=> b!5294810 m!6332284))

(assert (=> b!5294142 d!1703083))

(declare-fun d!1703085 () Bool)

(declare-fun c!918770 () Bool)

(assert (=> d!1703085 (= c!918770 (isEmpty!32927 (t!374299 s!2326)))))

(declare-fun e!3291353 () Bool)

(assert (=> d!1703085 (= (matchZipper!1175 lt!2163329 (t!374299 s!2326)) e!3291353)))

(declare-fun b!5294811 () Bool)

(assert (=> b!5294811 (= e!3291353 (nullableZipper!1314 lt!2163329))))

(declare-fun b!5294812 () Bool)

(assert (=> b!5294812 (= e!3291353 (matchZipper!1175 (derivationStepZipper!1174 lt!2163329 (head!11346 (t!374299 s!2326))) (tail!10443 (t!374299 s!2326))))))

(assert (= (and d!1703085 c!918770) b!5294811))

(assert (= (and d!1703085 (not c!918770)) b!5294812))

(assert (=> d!1703085 m!6332202))

(declare-fun m!6332286 () Bool)

(assert (=> b!5294811 m!6332286))

(assert (=> b!5294812 m!6332206))

(assert (=> b!5294812 m!6332206))

(declare-fun m!6332288 () Bool)

(assert (=> b!5294812 m!6332288))

(assert (=> b!5294812 m!6332210))

(assert (=> b!5294812 m!6332288))

(assert (=> b!5294812 m!6332210))

(declare-fun m!6332290 () Bool)

(assert (=> b!5294812 m!6332290))

(assert (=> b!5294142 d!1703085))

(declare-fun d!1703087 () Bool)

(declare-fun e!3291354 () Bool)

(assert (=> d!1703087 (= (matchZipper!1175 ((_ map or) lt!2163329 lt!2163302) (t!374299 s!2326)) e!3291354)))

(declare-fun res!2245623 () Bool)

(assert (=> d!1703087 (=> res!2245623 e!3291354)))

(assert (=> d!1703087 (= res!2245623 (matchZipper!1175 lt!2163329 (t!374299 s!2326)))))

(declare-fun lt!2163462 () Unit!153242)

(assert (=> d!1703087 (= lt!2163462 (choose!39546 lt!2163329 lt!2163302 (t!374299 s!2326)))))

(assert (=> d!1703087 (= (lemmaZipperConcatMatchesSameAsBothZippers!168 lt!2163329 lt!2163302 (t!374299 s!2326)) lt!2163462)))

(declare-fun b!5294813 () Bool)

(assert (=> b!5294813 (= e!3291354 (matchZipper!1175 lt!2163302 (t!374299 s!2326)))))

(assert (= (and d!1703087 (not res!2245623)) b!5294813))

(declare-fun m!6332292 () Bool)

(assert (=> d!1703087 m!6332292))

(assert (=> d!1703087 m!6331524))

(declare-fun m!6332294 () Bool)

(assert (=> d!1703087 m!6332294))

(assert (=> b!5294813 m!6331626))

(assert (=> b!5294142 d!1703087))

(declare-fun d!1703089 () Bool)

(declare-fun c!918771 () Bool)

(assert (=> d!1703089 (= c!918771 (isEmpty!32927 (t!374299 s!2326)))))

(declare-fun e!3291355 () Bool)

(assert (=> d!1703089 (= (matchZipper!1175 lt!2163314 (t!374299 s!2326)) e!3291355)))

(declare-fun b!5294814 () Bool)

(assert (=> b!5294814 (= e!3291355 (nullableZipper!1314 lt!2163314))))

(declare-fun b!5294815 () Bool)

(assert (=> b!5294815 (= e!3291355 (matchZipper!1175 (derivationStepZipper!1174 lt!2163314 (head!11346 (t!374299 s!2326))) (tail!10443 (t!374299 s!2326))))))

(assert (= (and d!1703089 c!918771) b!5294814))

(assert (= (and d!1703089 (not c!918771)) b!5294815))

(assert (=> d!1703089 m!6332202))

(declare-fun m!6332296 () Bool)

(assert (=> b!5294814 m!6332296))

(assert (=> b!5294815 m!6332206))

(assert (=> b!5294815 m!6332206))

(declare-fun m!6332298 () Bool)

(assert (=> b!5294815 m!6332298))

(assert (=> b!5294815 m!6332210))

(assert (=> b!5294815 m!6332298))

(assert (=> b!5294815 m!6332210))

(declare-fun m!6332300 () Bool)

(assert (=> b!5294815 m!6332300))

(assert (=> b!5294140 d!1703089))

(declare-fun d!1703091 () Bool)

(declare-fun c!918772 () Bool)

(assert (=> d!1703091 (= c!918772 (isEmpty!32927 (t!374299 s!2326)))))

(declare-fun e!3291356 () Bool)

(assert (=> d!1703091 (= (matchZipper!1175 (derivationStepZipper!1174 lt!2163318 (h!67418 s!2326)) (t!374299 s!2326)) e!3291356)))

(declare-fun b!5294816 () Bool)

(assert (=> b!5294816 (= e!3291356 (nullableZipper!1314 (derivationStepZipper!1174 lt!2163318 (h!67418 s!2326))))))

(declare-fun b!5294817 () Bool)

(assert (=> b!5294817 (= e!3291356 (matchZipper!1175 (derivationStepZipper!1174 (derivationStepZipper!1174 lt!2163318 (h!67418 s!2326)) (head!11346 (t!374299 s!2326))) (tail!10443 (t!374299 s!2326))))))

(assert (= (and d!1703091 c!918772) b!5294816))

(assert (= (and d!1703091 (not c!918772)) b!5294817))

(assert (=> d!1703091 m!6332202))

(assert (=> b!5294816 m!6331622))

(declare-fun m!6332302 () Bool)

(assert (=> b!5294816 m!6332302))

(assert (=> b!5294817 m!6332206))

(assert (=> b!5294817 m!6331622))

(assert (=> b!5294817 m!6332206))

(declare-fun m!6332304 () Bool)

(assert (=> b!5294817 m!6332304))

(assert (=> b!5294817 m!6332210))

(assert (=> b!5294817 m!6332304))

(assert (=> b!5294817 m!6332210))

(declare-fun m!6332306 () Bool)

(assert (=> b!5294817 m!6332306))

(assert (=> b!5294118 d!1703091))

(declare-fun bs!1228033 () Bool)

(declare-fun d!1703093 () Bool)

(assert (= bs!1228033 (and d!1703093 b!5294133)))

(declare-fun lambda!268387 () Int)

(assert (=> bs!1228033 (= lambda!268387 lambda!268311)))

(assert (=> d!1703093 true))

(assert (=> d!1703093 (= (derivationStepZipper!1174 lt!2163318 (h!67418 s!2326)) (flatMap!658 lt!2163318 lambda!268387))))

(declare-fun bs!1228034 () Bool)

(assert (= bs!1228034 d!1703093))

(declare-fun m!6332308 () Bool)

(assert (=> bs!1228034 m!6332308))

(assert (=> b!5294118 d!1703093))

(declare-fun d!1703095 () Bool)

(declare-fun lt!2163465 () Regex!14931)

(assert (=> d!1703095 (validRegex!6667 lt!2163465)))

(assert (=> d!1703095 (= lt!2163465 (generalisedUnion!860 (unfocusZipperList!373 zl!343)))))

(assert (=> d!1703095 (= (unfocusZipper!673 zl!343) lt!2163465)))

(declare-fun bs!1228035 () Bool)

(assert (= bs!1228035 d!1703095))

(declare-fun m!6332310 () Bool)

(assert (=> bs!1228035 m!6332310))

(assert (=> bs!1228035 m!6331510))

(assert (=> bs!1228035 m!6331510))

(assert (=> bs!1228035 m!6331512))

(assert (=> b!5294119 d!1703095))

(declare-fun bs!1228036 () Bool)

(declare-fun b!5294859 () Bool)

(assert (= bs!1228036 (and b!5294859 b!5294113)))

(declare-fun lambda!268392 () Int)

(assert (=> bs!1228036 (not (= lambda!268392 lambda!268312))))

(assert (=> bs!1228036 (not (= lambda!268392 lambda!268315))))

(assert (=> bs!1228036 (not (= lambda!268392 lambda!268313))))

(declare-fun bs!1228037 () Bool)

(assert (= bs!1228037 (and b!5294859 b!5294116)))

(assert (=> bs!1228037 (not (= lambda!268392 lambda!268310))))

(assert (=> bs!1228036 (not (= lambda!268392 lambda!268314))))

(assert (=> bs!1228037 (not (= lambda!268392 lambda!268309))))

(assert (=> b!5294859 true))

(assert (=> b!5294859 true))

(declare-fun bs!1228038 () Bool)

(declare-fun b!5294852 () Bool)

(assert (= bs!1228038 (and b!5294852 b!5294113)))

(declare-fun lambda!268393 () Int)

(assert (=> bs!1228038 (not (= lambda!268393 lambda!268312))))

(assert (=> bs!1228038 (= (and (= (regOne!30374 r!7292) (regTwo!30374 (regOne!30374 r!7292))) (= (regTwo!30374 r!7292) lt!2163337)) (= lambda!268393 lambda!268315))))

(assert (=> bs!1228038 (= (and (= (regOne!30374 r!7292) (regOne!30374 (regOne!30374 r!7292))) (= (regTwo!30374 r!7292) lt!2163305)) (= lambda!268393 lambda!268313))))

(declare-fun bs!1228039 () Bool)

(assert (= bs!1228039 (and b!5294852 b!5294859)))

(assert (=> bs!1228039 (not (= lambda!268393 lambda!268392))))

(declare-fun bs!1228040 () Bool)

(assert (= bs!1228040 (and b!5294852 b!5294116)))

(assert (=> bs!1228040 (= lambda!268393 lambda!268310)))

(assert (=> bs!1228038 (not (= lambda!268393 lambda!268314))))

(assert (=> bs!1228040 (not (= lambda!268393 lambda!268309))))

(assert (=> b!5294852 true))

(assert (=> b!5294852 true))

(declare-fun e!3291380 () Bool)

(declare-fun call!377411 () Bool)

(assert (=> b!5294852 (= e!3291380 call!377411)))

(declare-fun b!5294853 () Bool)

(declare-fun e!3291381 () Bool)

(declare-fun call!377412 () Bool)

(assert (=> b!5294853 (= e!3291381 call!377412)))

(declare-fun b!5294854 () Bool)

(declare-fun c!918786 () Bool)

(assert (=> b!5294854 (= c!918786 ((_ is ElementMatch!14931) r!7292))))

(declare-fun e!3291375 () Bool)

(declare-fun e!3291377 () Bool)

(assert (=> b!5294854 (= e!3291375 e!3291377)))

(declare-fun b!5294855 () Bool)

(declare-fun e!3291378 () Bool)

(declare-fun e!3291379 () Bool)

(assert (=> b!5294855 (= e!3291378 e!3291379)))

(declare-fun res!2245642 () Bool)

(assert (=> b!5294855 (= res!2245642 (matchRSpec!2034 (regOne!30375 r!7292) s!2326))))

(assert (=> b!5294855 (=> res!2245642 e!3291379)))

(declare-fun bm!377406 () Bool)

(declare-fun c!918784 () Bool)

(assert (=> bm!377406 (= call!377411 (Exists!2112 (ite c!918784 lambda!268392 lambda!268393)))))

(declare-fun b!5294856 () Bool)

(assert (=> b!5294856 (= e!3291378 e!3291380)))

(assert (=> b!5294856 (= c!918784 ((_ is Star!14931) r!7292))))

(declare-fun b!5294857 () Bool)

(declare-fun res!2245640 () Bool)

(declare-fun e!3291376 () Bool)

(assert (=> b!5294857 (=> res!2245640 e!3291376)))

(assert (=> b!5294857 (= res!2245640 call!377412)))

(assert (=> b!5294857 (= e!3291380 e!3291376)))

(declare-fun d!1703097 () Bool)

(declare-fun c!918785 () Bool)

(assert (=> d!1703097 (= c!918785 ((_ is EmptyExpr!14931) r!7292))))

(assert (=> d!1703097 (= (matchRSpec!2034 r!7292 s!2326) e!3291381)))

(declare-fun b!5294858 () Bool)

(declare-fun c!918783 () Bool)

(assert (=> b!5294858 (= c!918783 ((_ is Union!14931) r!7292))))

(assert (=> b!5294858 (= e!3291377 e!3291378)))

(assert (=> b!5294859 (= e!3291376 call!377411)))

(declare-fun b!5294860 () Bool)

(assert (=> b!5294860 (= e!3291379 (matchRSpec!2034 (regTwo!30375 r!7292) s!2326))))

(declare-fun b!5294861 () Bool)

(assert (=> b!5294861 (= e!3291381 e!3291375)))

(declare-fun res!2245641 () Bool)

(assert (=> b!5294861 (= res!2245641 (not ((_ is EmptyLang!14931) r!7292)))))

(assert (=> b!5294861 (=> (not res!2245641) (not e!3291375))))

(declare-fun bm!377407 () Bool)

(assert (=> bm!377407 (= call!377412 (isEmpty!32927 s!2326))))

(declare-fun b!5294862 () Bool)

(assert (=> b!5294862 (= e!3291377 (= s!2326 (Cons!60970 (c!918549 r!7292) Nil!60970)))))

(assert (= (and d!1703097 c!918785) b!5294853))

(assert (= (and d!1703097 (not c!918785)) b!5294861))

(assert (= (and b!5294861 res!2245641) b!5294854))

(assert (= (and b!5294854 c!918786) b!5294862))

(assert (= (and b!5294854 (not c!918786)) b!5294858))

(assert (= (and b!5294858 c!918783) b!5294855))

(assert (= (and b!5294858 (not c!918783)) b!5294856))

(assert (= (and b!5294855 (not res!2245642)) b!5294860))

(assert (= (and b!5294856 c!918784) b!5294857))

(assert (= (and b!5294856 (not c!918784)) b!5294852))

(assert (= (and b!5294857 (not res!2245640)) b!5294859))

(assert (= (or b!5294859 b!5294852) bm!377406))

(assert (= (or b!5294853 b!5294857) bm!377407))

(declare-fun m!6332312 () Bool)

(assert (=> b!5294855 m!6332312))

(declare-fun m!6332314 () Bool)

(assert (=> bm!377406 m!6332314))

(declare-fun m!6332316 () Bool)

(assert (=> b!5294860 m!6332316))

(declare-fun m!6332318 () Bool)

(assert (=> bm!377407 m!6332318))

(assert (=> b!5294139 d!1703097))

(declare-fun b!5294891 () Bool)

(declare-fun res!2245662 () Bool)

(declare-fun e!3291400 () Bool)

(assert (=> b!5294891 (=> (not res!2245662) (not e!3291400))))

(declare-fun call!377415 () Bool)

(assert (=> b!5294891 (= res!2245662 (not call!377415))))

(declare-fun b!5294892 () Bool)

(declare-fun res!2245666 () Bool)

(assert (=> b!5294892 (=> (not res!2245666) (not e!3291400))))

(assert (=> b!5294892 (= res!2245666 (isEmpty!32927 (tail!10443 s!2326)))))

(declare-fun b!5294893 () Bool)

(declare-fun e!3291396 () Bool)

(declare-fun e!3291402 () Bool)

(assert (=> b!5294893 (= e!3291396 e!3291402)))

(declare-fun c!918793 () Bool)

(assert (=> b!5294893 (= c!918793 ((_ is EmptyLang!14931) r!7292))))

(declare-fun bm!377410 () Bool)

(assert (=> bm!377410 (= call!377415 (isEmpty!32927 s!2326))))

(declare-fun b!5294894 () Bool)

(declare-fun res!2245664 () Bool)

(declare-fun e!3291399 () Bool)

(assert (=> b!5294894 (=> res!2245664 e!3291399)))

(assert (=> b!5294894 (= res!2245664 e!3291400)))

(declare-fun res!2245659 () Bool)

(assert (=> b!5294894 (=> (not res!2245659) (not e!3291400))))

(declare-fun lt!2163468 () Bool)

(assert (=> b!5294894 (= res!2245659 lt!2163468)))

(declare-fun b!5294895 () Bool)

(declare-fun e!3291401 () Bool)

(declare-fun e!3291398 () Bool)

(assert (=> b!5294895 (= e!3291401 e!3291398)))

(declare-fun res!2245661 () Bool)

(assert (=> b!5294895 (=> res!2245661 e!3291398)))

(assert (=> b!5294895 (= res!2245661 call!377415)))

(declare-fun b!5294896 () Bool)

(assert (=> b!5294896 (= e!3291398 (not (= (head!11346 s!2326) (c!918549 r!7292))))))

(declare-fun b!5294897 () Bool)

(assert (=> b!5294897 (= e!3291396 (= lt!2163468 call!377415))))

(declare-fun b!5294898 () Bool)

(assert (=> b!5294898 (= e!3291402 (not lt!2163468))))

(declare-fun d!1703099 () Bool)

(assert (=> d!1703099 e!3291396))

(declare-fun c!918795 () Bool)

(assert (=> d!1703099 (= c!918795 ((_ is EmptyExpr!14931) r!7292))))

(declare-fun e!3291397 () Bool)

(assert (=> d!1703099 (= lt!2163468 e!3291397)))

(declare-fun c!918794 () Bool)

(assert (=> d!1703099 (= c!918794 (isEmpty!32927 s!2326))))

(assert (=> d!1703099 (validRegex!6667 r!7292)))

(assert (=> d!1703099 (= (matchR!7116 r!7292 s!2326) lt!2163468)))

(declare-fun b!5294899 () Bool)

(declare-fun res!2245663 () Bool)

(assert (=> b!5294899 (=> res!2245663 e!3291399)))

(assert (=> b!5294899 (= res!2245663 (not ((_ is ElementMatch!14931) r!7292)))))

(assert (=> b!5294899 (= e!3291402 e!3291399)))

(declare-fun b!5294900 () Bool)

(declare-fun derivativeStep!4135 (Regex!14931 C!30132) Regex!14931)

(assert (=> b!5294900 (= e!3291397 (matchR!7116 (derivativeStep!4135 r!7292 (head!11346 s!2326)) (tail!10443 s!2326)))))

(declare-fun b!5294901 () Bool)

(declare-fun res!2245665 () Bool)

(assert (=> b!5294901 (=> res!2245665 e!3291398)))

(assert (=> b!5294901 (= res!2245665 (not (isEmpty!32927 (tail!10443 s!2326))))))

(declare-fun b!5294902 () Bool)

(assert (=> b!5294902 (= e!3291397 (nullable!5100 r!7292))))

(declare-fun b!5294903 () Bool)

(assert (=> b!5294903 (= e!3291399 e!3291401)))

(declare-fun res!2245660 () Bool)

(assert (=> b!5294903 (=> (not res!2245660) (not e!3291401))))

(assert (=> b!5294903 (= res!2245660 (not lt!2163468))))

(declare-fun b!5294904 () Bool)

(assert (=> b!5294904 (= e!3291400 (= (head!11346 s!2326) (c!918549 r!7292)))))

(assert (= (and d!1703099 c!918794) b!5294902))

(assert (= (and d!1703099 (not c!918794)) b!5294900))

(assert (= (and d!1703099 c!918795) b!5294897))

(assert (= (and d!1703099 (not c!918795)) b!5294893))

(assert (= (and b!5294893 c!918793) b!5294898))

(assert (= (and b!5294893 (not c!918793)) b!5294899))

(assert (= (and b!5294899 (not res!2245663)) b!5294894))

(assert (= (and b!5294894 res!2245659) b!5294891))

(assert (= (and b!5294891 res!2245662) b!5294892))

(assert (= (and b!5294892 res!2245666) b!5294904))

(assert (= (and b!5294894 (not res!2245664)) b!5294903))

(assert (= (and b!5294903 res!2245660) b!5294895))

(assert (= (and b!5294895 (not res!2245661)) b!5294901))

(assert (= (and b!5294901 (not res!2245665)) b!5294896))

(assert (= (or b!5294897 b!5294891 b!5294895) bm!377410))

(declare-fun m!6332320 () Bool)

(assert (=> b!5294901 m!6332320))

(assert (=> b!5294901 m!6332320))

(declare-fun m!6332322 () Bool)

(assert (=> b!5294901 m!6332322))

(declare-fun m!6332324 () Bool)

(assert (=> b!5294904 m!6332324))

(assert (=> bm!377410 m!6332318))

(assert (=> b!5294892 m!6332320))

(assert (=> b!5294892 m!6332320))

(assert (=> b!5294892 m!6332322))

(assert (=> b!5294896 m!6332324))

(assert (=> b!5294900 m!6332324))

(assert (=> b!5294900 m!6332324))

(declare-fun m!6332326 () Bool)

(assert (=> b!5294900 m!6332326))

(assert (=> b!5294900 m!6332320))

(assert (=> b!5294900 m!6332326))

(assert (=> b!5294900 m!6332320))

(declare-fun m!6332328 () Bool)

(assert (=> b!5294900 m!6332328))

(assert (=> d!1703099 m!6332318))

(assert (=> d!1703099 m!6331544))

(declare-fun m!6332330 () Bool)

(assert (=> b!5294902 m!6332330))

(assert (=> b!5294139 d!1703099))

(declare-fun d!1703101 () Bool)

(assert (=> d!1703101 (= (matchR!7116 r!7292 s!2326) (matchRSpec!2034 r!7292 s!2326))))

(declare-fun lt!2163471 () Unit!153242)

(declare-fun choose!39549 (Regex!14931 List!61094) Unit!153242)

(assert (=> d!1703101 (= lt!2163471 (choose!39549 r!7292 s!2326))))

(assert (=> d!1703101 (validRegex!6667 r!7292)))

(assert (=> d!1703101 (= (mainMatchTheorem!2034 r!7292 s!2326) lt!2163471)))

(declare-fun bs!1228041 () Bool)

(assert (= bs!1228041 d!1703101))

(assert (=> bs!1228041 m!6331532))

(assert (=> bs!1228041 m!6331530))

(declare-fun m!6332332 () Bool)

(assert (=> bs!1228041 m!6332332))

(assert (=> bs!1228041 m!6331544))

(assert (=> b!5294139 d!1703101))

(declare-fun d!1703103 () Bool)

(declare-fun c!918796 () Bool)

(assert (=> d!1703103 (= c!918796 (isEmpty!32927 (t!374299 s!2326)))))

(declare-fun e!3291403 () Bool)

(assert (=> d!1703103 (= (matchZipper!1175 lt!2163302 (t!374299 s!2326)) e!3291403)))

(declare-fun b!5294905 () Bool)

(assert (=> b!5294905 (= e!3291403 (nullableZipper!1314 lt!2163302))))

(declare-fun b!5294906 () Bool)

(assert (=> b!5294906 (= e!3291403 (matchZipper!1175 (derivationStepZipper!1174 lt!2163302 (head!11346 (t!374299 s!2326))) (tail!10443 (t!374299 s!2326))))))

(assert (= (and d!1703103 c!918796) b!5294905))

(assert (= (and d!1703103 (not c!918796)) b!5294906))

(assert (=> d!1703103 m!6332202))

(declare-fun m!6332334 () Bool)

(assert (=> b!5294905 m!6332334))

(assert (=> b!5294906 m!6332206))

(assert (=> b!5294906 m!6332206))

(declare-fun m!6332336 () Bool)

(assert (=> b!5294906 m!6332336))

(assert (=> b!5294906 m!6332210))

(assert (=> b!5294906 m!6332336))

(assert (=> b!5294906 m!6332210))

(declare-fun m!6332338 () Bool)

(assert (=> b!5294906 m!6332338))

(assert (=> b!5294137 d!1703103))

(declare-fun b!5294927 () Bool)

(declare-fun e!3291418 () Regex!14931)

(declare-fun e!3291419 () Regex!14931)

(assert (=> b!5294927 (= e!3291418 e!3291419)))

(declare-fun c!918806 () Bool)

(assert (=> b!5294927 (= c!918806 ((_ is Cons!60968) (unfocusZipperList!373 zl!343)))))

(declare-fun b!5294928 () Bool)

(declare-fun e!3291416 () Bool)

(declare-fun e!3291420 () Bool)

(assert (=> b!5294928 (= e!3291416 e!3291420)))

(declare-fun c!918805 () Bool)

(assert (=> b!5294928 (= c!918805 (isEmpty!32924 (unfocusZipperList!373 zl!343)))))

(declare-fun d!1703105 () Bool)

(assert (=> d!1703105 e!3291416))

(declare-fun res!2245672 () Bool)

(assert (=> d!1703105 (=> (not res!2245672) (not e!3291416))))

(declare-fun lt!2163474 () Regex!14931)

(assert (=> d!1703105 (= res!2245672 (validRegex!6667 lt!2163474))))

(assert (=> d!1703105 (= lt!2163474 e!3291418)))

(declare-fun c!918808 () Bool)

(declare-fun e!3291417 () Bool)

(assert (=> d!1703105 (= c!918808 e!3291417)))

(declare-fun res!2245671 () Bool)

(assert (=> d!1703105 (=> (not res!2245671) (not e!3291417))))

(assert (=> d!1703105 (= res!2245671 ((_ is Cons!60968) (unfocusZipperList!373 zl!343)))))

(declare-fun lambda!268396 () Int)

(declare-fun forall!14343 (List!61092 Int) Bool)

(assert (=> d!1703105 (forall!14343 (unfocusZipperList!373 zl!343) lambda!268396)))

(assert (=> d!1703105 (= (generalisedUnion!860 (unfocusZipperList!373 zl!343)) lt!2163474)))

(declare-fun b!5294929 () Bool)

(assert (=> b!5294929 (= e!3291419 EmptyLang!14931)))

(declare-fun b!5294930 () Bool)

(declare-fun isEmptyLang!857 (Regex!14931) Bool)

(assert (=> b!5294930 (= e!3291420 (isEmptyLang!857 lt!2163474))))

(declare-fun b!5294931 () Bool)

(assert (=> b!5294931 (= e!3291419 (Union!14931 (h!67416 (unfocusZipperList!373 zl!343)) (generalisedUnion!860 (t!374297 (unfocusZipperList!373 zl!343)))))))

(declare-fun b!5294932 () Bool)

(declare-fun e!3291421 () Bool)

(declare-fun head!11347 (List!61092) Regex!14931)

(assert (=> b!5294932 (= e!3291421 (= lt!2163474 (head!11347 (unfocusZipperList!373 zl!343))))))

(declare-fun b!5294933 () Bool)

(assert (=> b!5294933 (= e!3291420 e!3291421)))

(declare-fun c!918807 () Bool)

(declare-fun tail!10444 (List!61092) List!61092)

(assert (=> b!5294933 (= c!918807 (isEmpty!32924 (tail!10444 (unfocusZipperList!373 zl!343))))))

(declare-fun b!5294934 () Bool)

(assert (=> b!5294934 (= e!3291417 (isEmpty!32924 (t!374297 (unfocusZipperList!373 zl!343))))))

(declare-fun b!5294935 () Bool)

(declare-fun isUnion!289 (Regex!14931) Bool)

(assert (=> b!5294935 (= e!3291421 (isUnion!289 lt!2163474))))

(declare-fun b!5294936 () Bool)

(assert (=> b!5294936 (= e!3291418 (h!67416 (unfocusZipperList!373 zl!343)))))

(assert (= (and d!1703105 res!2245671) b!5294934))

(assert (= (and d!1703105 c!918808) b!5294936))

(assert (= (and d!1703105 (not c!918808)) b!5294927))

(assert (= (and b!5294927 c!918806) b!5294931))

(assert (= (and b!5294927 (not c!918806)) b!5294929))

(assert (= (and d!1703105 res!2245672) b!5294928))

(assert (= (and b!5294928 c!918805) b!5294930))

(assert (= (and b!5294928 (not c!918805)) b!5294933))

(assert (= (and b!5294933 c!918807) b!5294932))

(assert (= (and b!5294933 (not c!918807)) b!5294935))

(declare-fun m!6332340 () Bool)

(assert (=> b!5294930 m!6332340))

(assert (=> b!5294932 m!6331510))

(declare-fun m!6332342 () Bool)

(assert (=> b!5294932 m!6332342))

(declare-fun m!6332344 () Bool)

(assert (=> d!1703105 m!6332344))

(assert (=> d!1703105 m!6331510))

(declare-fun m!6332346 () Bool)

(assert (=> d!1703105 m!6332346))

(assert (=> b!5294933 m!6331510))

(declare-fun m!6332348 () Bool)

(assert (=> b!5294933 m!6332348))

(assert (=> b!5294933 m!6332348))

(declare-fun m!6332350 () Bool)

(assert (=> b!5294933 m!6332350))

(declare-fun m!6332352 () Bool)

(assert (=> b!5294935 m!6332352))

(declare-fun m!6332354 () Bool)

(assert (=> b!5294931 m!6332354))

(assert (=> b!5294928 m!6331510))

(declare-fun m!6332356 () Bool)

(assert (=> b!5294928 m!6332356))

(declare-fun m!6332358 () Bool)

(assert (=> b!5294934 m!6332358))

(assert (=> b!5294136 d!1703105))

(declare-fun bs!1228042 () Bool)

(declare-fun d!1703107 () Bool)

(assert (= bs!1228042 (and d!1703107 d!1703105)))

(declare-fun lambda!268399 () Int)

(assert (=> bs!1228042 (= lambda!268399 lambda!268396)))

(declare-fun lt!2163477 () List!61092)

(assert (=> d!1703107 (forall!14343 lt!2163477 lambda!268399)))

(declare-fun e!3291424 () List!61092)

(assert (=> d!1703107 (= lt!2163477 e!3291424)))

(declare-fun c!918811 () Bool)

(assert (=> d!1703107 (= c!918811 ((_ is Cons!60969) zl!343))))

(assert (=> d!1703107 (= (unfocusZipperList!373 zl!343) lt!2163477)))

(declare-fun b!5294941 () Bool)

(assert (=> b!5294941 (= e!3291424 (Cons!60968 (generalisedConcat!600 (exprs!4815 (h!67417 zl!343))) (unfocusZipperList!373 (t!374298 zl!343))))))

(declare-fun b!5294942 () Bool)

(assert (=> b!5294942 (= e!3291424 Nil!60968)))

(assert (= (and d!1703107 c!918811) b!5294941))

(assert (= (and d!1703107 (not c!918811)) b!5294942))

(declare-fun m!6332360 () Bool)

(assert (=> d!1703107 m!6332360))

(assert (=> b!5294941 m!6331528))

(declare-fun m!6332362 () Bool)

(assert (=> b!5294941 m!6332362))

(assert (=> b!5294136 d!1703107))

(declare-fun b!5294943 () Bool)

(declare-fun e!3291431 () Bool)

(declare-fun e!3291425 () Bool)

(assert (=> b!5294943 (= e!3291431 e!3291425)))

(declare-fun c!918812 () Bool)

(assert (=> b!5294943 (= c!918812 ((_ is Star!14931) r!7292))))

(declare-fun b!5294944 () Bool)

(declare-fun res!2245677 () Bool)

(declare-fun e!3291430 () Bool)

(assert (=> b!5294944 (=> res!2245677 e!3291430)))

(assert (=> b!5294944 (= res!2245677 (not ((_ is Concat!23776) r!7292)))))

(declare-fun e!3291427 () Bool)

(assert (=> b!5294944 (= e!3291427 e!3291430)))

(declare-fun b!5294945 () Bool)

(declare-fun res!2245676 () Bool)

(declare-fun e!3291429 () Bool)

(assert (=> b!5294945 (=> (not res!2245676) (not e!3291429))))

(declare-fun call!377418 () Bool)

(assert (=> b!5294945 (= res!2245676 call!377418)))

(assert (=> b!5294945 (= e!3291427 e!3291429)))

(declare-fun b!5294946 () Bool)

(declare-fun e!3291426 () Bool)

(assert (=> b!5294946 (= e!3291430 e!3291426)))

(declare-fun res!2245673 () Bool)

(assert (=> b!5294946 (=> (not res!2245673) (not e!3291426))))

(assert (=> b!5294946 (= res!2245673 call!377418)))

(declare-fun b!5294947 () Bool)

(declare-fun e!3291428 () Bool)

(assert (=> b!5294947 (= e!3291425 e!3291428)))

(declare-fun res!2245674 () Bool)

(assert (=> b!5294947 (= res!2245674 (not (nullable!5100 (reg!15260 r!7292))))))

(assert (=> b!5294947 (=> (not res!2245674) (not e!3291428))))

(declare-fun d!1703109 () Bool)

(declare-fun res!2245675 () Bool)

(assert (=> d!1703109 (=> res!2245675 e!3291431)))

(assert (=> d!1703109 (= res!2245675 ((_ is ElementMatch!14931) r!7292))))

(assert (=> d!1703109 (= (validRegex!6667 r!7292) e!3291431)))

(declare-fun c!918813 () Bool)

(declare-fun bm!377411 () Bool)

(declare-fun call!377416 () Bool)

(assert (=> bm!377411 (= call!377416 (validRegex!6667 (ite c!918812 (reg!15260 r!7292) (ite c!918813 (regTwo!30375 r!7292) (regTwo!30374 r!7292)))))))

(declare-fun bm!377412 () Bool)

(assert (=> bm!377412 (= call!377418 (validRegex!6667 (ite c!918813 (regOne!30375 r!7292) (regOne!30374 r!7292))))))

(declare-fun b!5294948 () Bool)

(declare-fun call!377417 () Bool)

(assert (=> b!5294948 (= e!3291426 call!377417)))

(declare-fun b!5294949 () Bool)

(assert (=> b!5294949 (= e!3291428 call!377416)))

(declare-fun b!5294950 () Bool)

(assert (=> b!5294950 (= e!3291429 call!377417)))

(declare-fun bm!377413 () Bool)

(assert (=> bm!377413 (= call!377417 call!377416)))

(declare-fun b!5294951 () Bool)

(assert (=> b!5294951 (= e!3291425 e!3291427)))

(assert (=> b!5294951 (= c!918813 ((_ is Union!14931) r!7292))))

(assert (= (and d!1703109 (not res!2245675)) b!5294943))

(assert (= (and b!5294943 c!918812) b!5294947))

(assert (= (and b!5294943 (not c!918812)) b!5294951))

(assert (= (and b!5294947 res!2245674) b!5294949))

(assert (= (and b!5294951 c!918813) b!5294945))

(assert (= (and b!5294951 (not c!918813)) b!5294944))

(assert (= (and b!5294945 res!2245676) b!5294950))

(assert (= (and b!5294944 (not res!2245677)) b!5294946))

(assert (= (and b!5294946 res!2245673) b!5294948))

(assert (= (or b!5294950 b!5294948) bm!377413))

(assert (= (or b!5294945 b!5294946) bm!377412))

(assert (= (or b!5294949 bm!377413) bm!377411))

(declare-fun m!6332364 () Bool)

(assert (=> b!5294947 m!6332364))

(declare-fun m!6332366 () Bool)

(assert (=> bm!377411 m!6332366))

(declare-fun m!6332368 () Bool)

(assert (=> bm!377412 m!6332368))

(assert (=> start!558674 d!1703109))

(declare-fun b!5294970 () Bool)

(declare-fun e!3291442 () Bool)

(declare-fun lt!2163485 () Option!15042)

(assert (=> b!5294970 (= e!3291442 (not (isDefined!11745 lt!2163485)))))

(declare-fun b!5294971 () Bool)

(declare-fun e!3291444 () Option!15042)

(assert (=> b!5294971 (= e!3291444 (Some!15041 (tuple2!64261 Nil!60970 s!2326)))))

(declare-fun b!5294972 () Bool)

(declare-fun res!2245691 () Bool)

(declare-fun e!3291446 () Bool)

(assert (=> b!5294972 (=> (not res!2245691) (not e!3291446))))

(declare-fun get!20965 (Option!15042) tuple2!64260)

(assert (=> b!5294972 (= res!2245691 (matchR!7116 (regTwo!30374 r!7292) (_2!35433 (get!20965 lt!2163485))))))

(declare-fun b!5294973 () Bool)

(declare-fun e!3291443 () Option!15042)

(assert (=> b!5294973 (= e!3291443 None!15041)))

(declare-fun b!5294974 () Bool)

(declare-fun ++!13294 (List!61094 List!61094) List!61094)

(assert (=> b!5294974 (= e!3291446 (= (++!13294 (_1!35433 (get!20965 lt!2163485)) (_2!35433 (get!20965 lt!2163485))) s!2326))))

(declare-fun b!5294975 () Bool)

(assert (=> b!5294975 (= e!3291444 e!3291443)))

(declare-fun c!918818 () Bool)

(assert (=> b!5294975 (= c!918818 ((_ is Nil!60970) s!2326))))

(declare-fun d!1703111 () Bool)

(assert (=> d!1703111 e!3291442))

(declare-fun res!2245690 () Bool)

(assert (=> d!1703111 (=> res!2245690 e!3291442)))

(assert (=> d!1703111 (= res!2245690 e!3291446)))

(declare-fun res!2245689 () Bool)

(assert (=> d!1703111 (=> (not res!2245689) (not e!3291446))))

(assert (=> d!1703111 (= res!2245689 (isDefined!11745 lt!2163485))))

(assert (=> d!1703111 (= lt!2163485 e!3291444)))

(declare-fun c!918819 () Bool)

(declare-fun e!3291445 () Bool)

(assert (=> d!1703111 (= c!918819 e!3291445)))

(declare-fun res!2245692 () Bool)

(assert (=> d!1703111 (=> (not res!2245692) (not e!3291445))))

(assert (=> d!1703111 (= res!2245692 (matchR!7116 (regOne!30374 r!7292) Nil!60970))))

(assert (=> d!1703111 (validRegex!6667 (regOne!30374 r!7292))))

(assert (=> d!1703111 (= (findConcatSeparation!1456 (regOne!30374 r!7292) (regTwo!30374 r!7292) Nil!60970 s!2326 s!2326) lt!2163485)))

(declare-fun b!5294976 () Bool)

(declare-fun lt!2163486 () Unit!153242)

(declare-fun lt!2163484 () Unit!153242)

(assert (=> b!5294976 (= lt!2163486 lt!2163484)))

(assert (=> b!5294976 (= (++!13294 (++!13294 Nil!60970 (Cons!60970 (h!67418 s!2326) Nil!60970)) (t!374299 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1709 (List!61094 C!30132 List!61094 List!61094) Unit!153242)

(assert (=> b!5294976 (= lt!2163484 (lemmaMoveElementToOtherListKeepsConcatEq!1709 Nil!60970 (h!67418 s!2326) (t!374299 s!2326) s!2326))))

(assert (=> b!5294976 (= e!3291443 (findConcatSeparation!1456 (regOne!30374 r!7292) (regTwo!30374 r!7292) (++!13294 Nil!60970 (Cons!60970 (h!67418 s!2326) Nil!60970)) (t!374299 s!2326) s!2326))))

(declare-fun b!5294977 () Bool)

(assert (=> b!5294977 (= e!3291445 (matchR!7116 (regTwo!30374 r!7292) s!2326))))

(declare-fun b!5294978 () Bool)

(declare-fun res!2245688 () Bool)

(assert (=> b!5294978 (=> (not res!2245688) (not e!3291446))))

(assert (=> b!5294978 (= res!2245688 (matchR!7116 (regOne!30374 r!7292) (_1!35433 (get!20965 lt!2163485))))))

(assert (= (and d!1703111 res!2245692) b!5294977))

(assert (= (and d!1703111 c!918819) b!5294971))

(assert (= (and d!1703111 (not c!918819)) b!5294975))

(assert (= (and b!5294975 c!918818) b!5294973))

(assert (= (and b!5294975 (not c!918818)) b!5294976))

(assert (= (and d!1703111 res!2245689) b!5294978))

(assert (= (and b!5294978 res!2245688) b!5294972))

(assert (= (and b!5294972 res!2245691) b!5294974))

(assert (= (and d!1703111 (not res!2245690)) b!5294970))

(declare-fun m!6332370 () Bool)

(assert (=> b!5294977 m!6332370))

(declare-fun m!6332372 () Bool)

(assert (=> b!5294974 m!6332372))

(declare-fun m!6332374 () Bool)

(assert (=> b!5294974 m!6332374))

(assert (=> b!5294978 m!6332372))

(declare-fun m!6332376 () Bool)

(assert (=> b!5294978 m!6332376))

(declare-fun m!6332378 () Bool)

(assert (=> b!5294970 m!6332378))

(assert (=> d!1703111 m!6332378))

(declare-fun m!6332380 () Bool)

(assert (=> d!1703111 m!6332380))

(declare-fun m!6332382 () Bool)

(assert (=> d!1703111 m!6332382))

(assert (=> b!5294972 m!6332372))

(declare-fun m!6332384 () Bool)

(assert (=> b!5294972 m!6332384))

(declare-fun m!6332386 () Bool)

(assert (=> b!5294976 m!6332386))

(assert (=> b!5294976 m!6332386))

(declare-fun m!6332388 () Bool)

(assert (=> b!5294976 m!6332388))

(declare-fun m!6332390 () Bool)

(assert (=> b!5294976 m!6332390))

(assert (=> b!5294976 m!6332386))

(declare-fun m!6332392 () Bool)

(assert (=> b!5294976 m!6332392))

(assert (=> b!5294116 d!1703111))

(declare-fun d!1703113 () Bool)

(declare-fun choose!39550 (Int) Bool)

(assert (=> d!1703113 (= (Exists!2112 lambda!268309) (choose!39550 lambda!268309))))

(declare-fun bs!1228043 () Bool)

(assert (= bs!1228043 d!1703113))

(declare-fun m!6332394 () Bool)

(assert (=> bs!1228043 m!6332394))

(assert (=> b!5294116 d!1703113))

(declare-fun bs!1228044 () Bool)

(declare-fun d!1703115 () Bool)

(assert (= bs!1228044 (and d!1703115 b!5294113)))

(declare-fun lambda!268402 () Int)

(assert (=> bs!1228044 (= (and (= (regOne!30374 r!7292) (regOne!30374 (regOne!30374 r!7292))) (= (regTwo!30374 r!7292) lt!2163305)) (= lambda!268402 lambda!268312))))

(assert (=> bs!1228044 (not (= lambda!268402 lambda!268315))))

(assert (=> bs!1228044 (not (= lambda!268402 lambda!268313))))

(declare-fun bs!1228045 () Bool)

(assert (= bs!1228045 (and d!1703115 b!5294859)))

(assert (=> bs!1228045 (not (= lambda!268402 lambda!268392))))

(declare-fun bs!1228046 () Bool)

(assert (= bs!1228046 (and d!1703115 b!5294116)))

(assert (=> bs!1228046 (not (= lambda!268402 lambda!268310))))

(assert (=> bs!1228044 (= (and (= (regOne!30374 r!7292) (regTwo!30374 (regOne!30374 r!7292))) (= (regTwo!30374 r!7292) lt!2163337)) (= lambda!268402 lambda!268314))))

(declare-fun bs!1228047 () Bool)

(assert (= bs!1228047 (and d!1703115 b!5294852)))

(assert (=> bs!1228047 (not (= lambda!268402 lambda!268393))))

(assert (=> bs!1228046 (= lambda!268402 lambda!268309)))

(assert (=> d!1703115 true))

(assert (=> d!1703115 true))

(assert (=> d!1703115 true))

(assert (=> d!1703115 (= (isDefined!11745 (findConcatSeparation!1456 (regOne!30374 r!7292) (regTwo!30374 r!7292) Nil!60970 s!2326 s!2326)) (Exists!2112 lambda!268402))))

(declare-fun lt!2163489 () Unit!153242)

(declare-fun choose!39551 (Regex!14931 Regex!14931 List!61094) Unit!153242)

(assert (=> d!1703115 (= lt!2163489 (choose!39551 (regOne!30374 r!7292) (regTwo!30374 r!7292) s!2326))))

(assert (=> d!1703115 (validRegex!6667 (regOne!30374 r!7292))))

(assert (=> d!1703115 (= (lemmaFindConcatSeparationEquivalentToExists!1220 (regOne!30374 r!7292) (regTwo!30374 r!7292) s!2326) lt!2163489)))

(declare-fun bs!1228048 () Bool)

(assert (= bs!1228048 d!1703115))

(assert (=> bs!1228048 m!6332382))

(declare-fun m!6332396 () Bool)

(assert (=> bs!1228048 m!6332396))

(declare-fun m!6332398 () Bool)

(assert (=> bs!1228048 m!6332398))

(assert (=> bs!1228048 m!6331574))

(assert (=> bs!1228048 m!6331574))

(assert (=> bs!1228048 m!6331576))

(assert (=> b!5294116 d!1703115))

(declare-fun bs!1228049 () Bool)

(declare-fun d!1703117 () Bool)

(assert (= bs!1228049 (and d!1703117 b!5294113)))

(declare-fun lambda!268407 () Int)

(assert (=> bs!1228049 (= (and (= (regOne!30374 r!7292) (regOne!30374 (regOne!30374 r!7292))) (= (regTwo!30374 r!7292) lt!2163305)) (= lambda!268407 lambda!268312))))

(assert (=> bs!1228049 (not (= lambda!268407 lambda!268315))))

(assert (=> bs!1228049 (not (= lambda!268407 lambda!268313))))

(declare-fun bs!1228050 () Bool)

(assert (= bs!1228050 (and d!1703117 b!5294859)))

(assert (=> bs!1228050 (not (= lambda!268407 lambda!268392))))

(declare-fun bs!1228051 () Bool)

(assert (= bs!1228051 (and d!1703117 b!5294116)))

(assert (=> bs!1228051 (not (= lambda!268407 lambda!268310))))

(declare-fun bs!1228052 () Bool)

(assert (= bs!1228052 (and d!1703117 d!1703115)))

(assert (=> bs!1228052 (= lambda!268407 lambda!268402)))

(assert (=> bs!1228049 (= (and (= (regOne!30374 r!7292) (regTwo!30374 (regOne!30374 r!7292))) (= (regTwo!30374 r!7292) lt!2163337)) (= lambda!268407 lambda!268314))))

(declare-fun bs!1228053 () Bool)

(assert (= bs!1228053 (and d!1703117 b!5294852)))

(assert (=> bs!1228053 (not (= lambda!268407 lambda!268393))))

(assert (=> bs!1228051 (= lambda!268407 lambda!268309)))

(assert (=> d!1703117 true))

(assert (=> d!1703117 true))

(assert (=> d!1703117 true))

(declare-fun lambda!268408 () Int)

(assert (=> bs!1228049 (not (= lambda!268408 lambda!268312))))

(assert (=> bs!1228049 (= (and (= (regOne!30374 r!7292) (regTwo!30374 (regOne!30374 r!7292))) (= (regTwo!30374 r!7292) lt!2163337)) (= lambda!268408 lambda!268315))))

(assert (=> bs!1228049 (= (and (= (regOne!30374 r!7292) (regOne!30374 (regOne!30374 r!7292))) (= (regTwo!30374 r!7292) lt!2163305)) (= lambda!268408 lambda!268313))))

(assert (=> bs!1228050 (not (= lambda!268408 lambda!268392))))

(assert (=> bs!1228051 (= lambda!268408 lambda!268310)))

(assert (=> bs!1228052 (not (= lambda!268408 lambda!268402))))

(assert (=> bs!1228049 (not (= lambda!268408 lambda!268314))))

(declare-fun bs!1228054 () Bool)

(assert (= bs!1228054 d!1703117))

(assert (=> bs!1228054 (not (= lambda!268408 lambda!268407))))

(assert (=> bs!1228053 (= lambda!268408 lambda!268393)))

(assert (=> bs!1228051 (not (= lambda!268408 lambda!268309))))

(assert (=> d!1703117 true))

(assert (=> d!1703117 true))

(assert (=> d!1703117 true))

(assert (=> d!1703117 (= (Exists!2112 lambda!268407) (Exists!2112 lambda!268408))))

(declare-fun lt!2163492 () Unit!153242)

(declare-fun choose!39552 (Regex!14931 Regex!14931 List!61094) Unit!153242)

(assert (=> d!1703117 (= lt!2163492 (choose!39552 (regOne!30374 r!7292) (regTwo!30374 r!7292) s!2326))))

(assert (=> d!1703117 (validRegex!6667 (regOne!30374 r!7292))))

(assert (=> d!1703117 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!766 (regOne!30374 r!7292) (regTwo!30374 r!7292) s!2326) lt!2163492)))

(declare-fun m!6332400 () Bool)

(assert (=> bs!1228054 m!6332400))

(declare-fun m!6332402 () Bool)

(assert (=> bs!1228054 m!6332402))

(declare-fun m!6332404 () Bool)

(assert (=> bs!1228054 m!6332404))

(assert (=> bs!1228054 m!6332382))

(assert (=> b!5294116 d!1703117))

(declare-fun d!1703119 () Bool)

(declare-fun isEmpty!32928 (Option!15042) Bool)

(assert (=> d!1703119 (= (isDefined!11745 (findConcatSeparation!1456 (regOne!30374 r!7292) (regTwo!30374 r!7292) Nil!60970 s!2326 s!2326)) (not (isEmpty!32928 (findConcatSeparation!1456 (regOne!30374 r!7292) (regTwo!30374 r!7292) Nil!60970 s!2326 s!2326))))))

(declare-fun bs!1228055 () Bool)

(assert (= bs!1228055 d!1703119))

(assert (=> bs!1228055 m!6331574))

(declare-fun m!6332406 () Bool)

(assert (=> bs!1228055 m!6332406))

(assert (=> b!5294116 d!1703119))

(declare-fun d!1703121 () Bool)

(assert (=> d!1703121 (= (Exists!2112 lambda!268310) (choose!39550 lambda!268310))))

(declare-fun bs!1228056 () Bool)

(assert (= bs!1228056 d!1703121))

(declare-fun m!6332408 () Bool)

(assert (=> bs!1228056 m!6332408))

(assert (=> b!5294116 d!1703121))

(declare-fun bs!1228057 () Bool)

(declare-fun d!1703123 () Bool)

(assert (= bs!1228057 (and d!1703123 d!1703105)))

(declare-fun lambda!268411 () Int)

(assert (=> bs!1228057 (= lambda!268411 lambda!268396)))

(declare-fun bs!1228058 () Bool)

(assert (= bs!1228058 (and d!1703123 d!1703107)))

(assert (=> bs!1228058 (= lambda!268411 lambda!268399)))

(assert (=> d!1703123 (= (inv!80574 (h!67417 zl!343)) (forall!14343 (exprs!4815 (h!67417 zl!343)) lambda!268411))))

(declare-fun bs!1228059 () Bool)

(assert (= bs!1228059 d!1703123))

(declare-fun m!6332410 () Bool)

(assert (=> bs!1228059 m!6332410))

(assert (=> b!5294114 d!1703123))

(declare-fun d!1703125 () Bool)

(declare-fun c!918820 () Bool)

(assert (=> d!1703125 (= c!918820 (isEmpty!32927 (t!374299 s!2326)))))

(declare-fun e!3291453 () Bool)

(assert (=> d!1703125 (= (matchZipper!1175 lt!2163301 (t!374299 s!2326)) e!3291453)))

(declare-fun b!5294991 () Bool)

(assert (=> b!5294991 (= e!3291453 (nullableZipper!1314 lt!2163301))))

(declare-fun b!5294992 () Bool)

(assert (=> b!5294992 (= e!3291453 (matchZipper!1175 (derivationStepZipper!1174 lt!2163301 (head!11346 (t!374299 s!2326))) (tail!10443 (t!374299 s!2326))))))

(assert (= (and d!1703125 c!918820) b!5294991))

(assert (= (and d!1703125 (not c!918820)) b!5294992))

(assert (=> d!1703125 m!6332202))

(declare-fun m!6332412 () Bool)

(assert (=> b!5294991 m!6332412))

(assert (=> b!5294992 m!6332206))

(assert (=> b!5294992 m!6332206))

(declare-fun m!6332414 () Bool)

(assert (=> b!5294992 m!6332414))

(assert (=> b!5294992 m!6332210))

(assert (=> b!5294992 m!6332414))

(assert (=> b!5294992 m!6332210))

(declare-fun m!6332416 () Bool)

(assert (=> b!5294992 m!6332416))

(assert (=> b!5294135 d!1703125))

(declare-fun d!1703127 () Bool)

(declare-fun c!918821 () Bool)

(assert (=> d!1703127 (= c!918821 (isEmpty!32927 s!2326))))

(declare-fun e!3291454 () Bool)

(assert (=> d!1703127 (= (matchZipper!1175 lt!2163318 s!2326) e!3291454)))

(declare-fun b!5294993 () Bool)

(assert (=> b!5294993 (= e!3291454 (nullableZipper!1314 lt!2163318))))

(declare-fun b!5294994 () Bool)

(assert (=> b!5294994 (= e!3291454 (matchZipper!1175 (derivationStepZipper!1174 lt!2163318 (head!11346 s!2326)) (tail!10443 s!2326)))))

(assert (= (and d!1703127 c!918821) b!5294993))

(assert (= (and d!1703127 (not c!918821)) b!5294994))

(assert (=> d!1703127 m!6332318))

(declare-fun m!6332418 () Bool)

(assert (=> b!5294993 m!6332418))

(assert (=> b!5294994 m!6332324))

(assert (=> b!5294994 m!6332324))

(declare-fun m!6332420 () Bool)

(assert (=> b!5294994 m!6332420))

(assert (=> b!5294994 m!6332320))

(assert (=> b!5294994 m!6332420))

(assert (=> b!5294994 m!6332320))

(declare-fun m!6332422 () Bool)

(assert (=> b!5294994 m!6332422))

(assert (=> b!5294113 d!1703127))

(declare-fun bs!1228060 () Bool)

(declare-fun d!1703129 () Bool)

(assert (= bs!1228060 (and d!1703129 d!1703105)))

(declare-fun lambda!268414 () Int)

(assert (=> bs!1228060 (= lambda!268414 lambda!268396)))

(declare-fun bs!1228061 () Bool)

(assert (= bs!1228061 (and d!1703129 d!1703107)))

(assert (=> bs!1228061 (= lambda!268414 lambda!268399)))

(declare-fun bs!1228062 () Bool)

(assert (= bs!1228062 (and d!1703129 d!1703123)))

(assert (=> bs!1228062 (= lambda!268414 lambda!268411)))

(declare-fun b!5295015 () Bool)

(declare-fun e!3291468 () Bool)

(declare-fun e!3291470 () Bool)

(assert (=> b!5295015 (= e!3291468 e!3291470)))

(declare-fun c!918831 () Bool)

(assert (=> b!5295015 (= c!918831 (isEmpty!32924 lt!2163330))))

(assert (=> d!1703129 e!3291468))

(declare-fun res!2245709 () Bool)

(assert (=> d!1703129 (=> (not res!2245709) (not e!3291468))))

(declare-fun lt!2163495 () Regex!14931)

(assert (=> d!1703129 (= res!2245709 (validRegex!6667 lt!2163495))))

(declare-fun e!3291467 () Regex!14931)

(assert (=> d!1703129 (= lt!2163495 e!3291467)))

(declare-fun c!918832 () Bool)

(declare-fun e!3291469 () Bool)

(assert (=> d!1703129 (= c!918832 e!3291469)))

(declare-fun res!2245710 () Bool)

(assert (=> d!1703129 (=> (not res!2245710) (not e!3291469))))

(assert (=> d!1703129 (= res!2245710 ((_ is Cons!60968) lt!2163330))))

(assert (=> d!1703129 (forall!14343 lt!2163330 lambda!268414)))

(assert (=> d!1703129 (= (generalisedConcat!600 lt!2163330) lt!2163495)))

(declare-fun b!5295016 () Bool)

(declare-fun isEmptyExpr!849 (Regex!14931) Bool)

(assert (=> b!5295016 (= e!3291470 (isEmptyExpr!849 lt!2163495))))

(declare-fun b!5295017 () Bool)

(assert (=> b!5295017 (= e!3291469 (isEmpty!32924 (t!374297 lt!2163330)))))

(declare-fun b!5295018 () Bool)

(declare-fun e!3291472 () Bool)

(declare-fun isConcat!372 (Regex!14931) Bool)

(assert (=> b!5295018 (= e!3291472 (isConcat!372 lt!2163495))))

(declare-fun b!5295019 () Bool)

(assert (=> b!5295019 (= e!3291470 e!3291472)))

(declare-fun c!918830 () Bool)

(assert (=> b!5295019 (= c!918830 (isEmpty!32924 (tail!10444 lt!2163330)))))

(declare-fun b!5295020 () Bool)

(declare-fun e!3291471 () Regex!14931)

(assert (=> b!5295020 (= e!3291467 e!3291471)))

(declare-fun c!918833 () Bool)

(assert (=> b!5295020 (= c!918833 ((_ is Cons!60968) lt!2163330))))

(declare-fun b!5295021 () Bool)

(assert (=> b!5295021 (= e!3291472 (= lt!2163495 (head!11347 lt!2163330)))))

(declare-fun b!5295022 () Bool)

(assert (=> b!5295022 (= e!3291467 (h!67416 lt!2163330))))

(declare-fun b!5295023 () Bool)

(assert (=> b!5295023 (= e!3291471 EmptyExpr!14931)))

(declare-fun b!5295024 () Bool)

(assert (=> b!5295024 (= e!3291471 (Concat!23776 (h!67416 lt!2163330) (generalisedConcat!600 (t!374297 lt!2163330))))))

(assert (= (and d!1703129 res!2245710) b!5295017))

(assert (= (and d!1703129 c!918832) b!5295022))

(assert (= (and d!1703129 (not c!918832)) b!5295020))

(assert (= (and b!5295020 c!918833) b!5295024))

(assert (= (and b!5295020 (not c!918833)) b!5295023))

(assert (= (and d!1703129 res!2245709) b!5295015))

(assert (= (and b!5295015 c!918831) b!5295016))

(assert (= (and b!5295015 (not c!918831)) b!5295019))

(assert (= (and b!5295019 c!918830) b!5295021))

(assert (= (and b!5295019 (not c!918830)) b!5295018))

(declare-fun m!6332424 () Bool)

(assert (=> b!5295018 m!6332424))

(declare-fun m!6332426 () Bool)

(assert (=> b!5295019 m!6332426))

(assert (=> b!5295019 m!6332426))

(declare-fun m!6332428 () Bool)

(assert (=> b!5295019 m!6332428))

(declare-fun m!6332430 () Bool)

(assert (=> b!5295016 m!6332430))

(declare-fun m!6332432 () Bool)

(assert (=> b!5295024 m!6332432))

(declare-fun m!6332434 () Bool)

(assert (=> b!5295017 m!6332434))

(declare-fun m!6332436 () Bool)

(assert (=> d!1703129 m!6332436))

(declare-fun m!6332438 () Bool)

(assert (=> d!1703129 m!6332438))

(declare-fun m!6332440 () Bool)

(assert (=> b!5295021 m!6332440))

(declare-fun m!6332442 () Bool)

(assert (=> b!5295015 m!6332442))

(assert (=> b!5294113 d!1703129))

(declare-fun d!1703131 () Bool)

(assert (=> d!1703131 (= (matchR!7116 lt!2163305 s!2326) (matchRSpec!2034 lt!2163305 s!2326))))

(declare-fun lt!2163496 () Unit!153242)

(assert (=> d!1703131 (= lt!2163496 (choose!39549 lt!2163305 s!2326))))

(assert (=> d!1703131 (validRegex!6667 lt!2163305)))

(assert (=> d!1703131 (= (mainMatchTheorem!2034 lt!2163305 s!2326) lt!2163496)))

(declare-fun bs!1228063 () Bool)

(assert (= bs!1228063 d!1703131))

(assert (=> bs!1228063 m!6331646))

(assert (=> bs!1228063 m!6331674))

(declare-fun m!6332444 () Bool)

(assert (=> bs!1228063 m!6332444))

(declare-fun m!6332446 () Bool)

(assert (=> bs!1228063 m!6332446))

(assert (=> b!5294113 d!1703131))

(declare-fun d!1703133 () Bool)

(declare-fun c!918834 () Bool)

(assert (=> d!1703133 (= c!918834 (isEmpty!32927 s!2326))))

(declare-fun e!3291473 () Bool)

(assert (=> d!1703133 (= (matchZipper!1175 z!1189 s!2326) e!3291473)))

(declare-fun b!5295025 () Bool)

(assert (=> b!5295025 (= e!3291473 (nullableZipper!1314 z!1189))))

(declare-fun b!5295026 () Bool)

(assert (=> b!5295026 (= e!3291473 (matchZipper!1175 (derivationStepZipper!1174 z!1189 (head!11346 s!2326)) (tail!10443 s!2326)))))

(assert (= (and d!1703133 c!918834) b!5295025))

(assert (= (and d!1703133 (not c!918834)) b!5295026))

(assert (=> d!1703133 m!6332318))

(declare-fun m!6332448 () Bool)

(assert (=> b!5295025 m!6332448))

(assert (=> b!5295026 m!6332324))

(assert (=> b!5295026 m!6332324))

(declare-fun m!6332450 () Bool)

(assert (=> b!5295026 m!6332450))

(assert (=> b!5295026 m!6332320))

(assert (=> b!5295026 m!6332450))

(assert (=> b!5295026 m!6332320))

(declare-fun m!6332452 () Bool)

(assert (=> b!5295026 m!6332452))

(assert (=> b!5294113 d!1703133))

(declare-fun d!1703135 () Bool)

(assert (=> d!1703135 (= (matchR!7116 lt!2163313 s!2326) (matchRSpec!2034 lt!2163313 s!2326))))

(declare-fun lt!2163497 () Unit!153242)

(assert (=> d!1703135 (= lt!2163497 (choose!39549 lt!2163313 s!2326))))

(assert (=> d!1703135 (validRegex!6667 lt!2163313)))

(assert (=> d!1703135 (= (mainMatchTheorem!2034 lt!2163313 s!2326) lt!2163497)))

(declare-fun bs!1228064 () Bool)

(assert (= bs!1228064 d!1703135))

(assert (=> bs!1228064 m!6331638))

(assert (=> bs!1228064 m!6331642))

(declare-fun m!6332454 () Bool)

(assert (=> bs!1228064 m!6332454))

(assert (=> bs!1228064 m!6331610))

(assert (=> b!5294113 d!1703135))

(declare-fun b!5295027 () Bool)

(declare-fun res!2245714 () Bool)

(declare-fun e!3291478 () Bool)

(assert (=> b!5295027 (=> (not res!2245714) (not e!3291478))))

(declare-fun call!377419 () Bool)

(assert (=> b!5295027 (= res!2245714 (not call!377419))))

(declare-fun b!5295028 () Bool)

(declare-fun res!2245718 () Bool)

(assert (=> b!5295028 (=> (not res!2245718) (not e!3291478))))

(assert (=> b!5295028 (= res!2245718 (isEmpty!32927 (tail!10443 s!2326)))))

(declare-fun b!5295029 () Bool)

(declare-fun e!3291474 () Bool)

(declare-fun e!3291480 () Bool)

(assert (=> b!5295029 (= e!3291474 e!3291480)))

(declare-fun c!918835 () Bool)

(assert (=> b!5295029 (= c!918835 ((_ is EmptyLang!14931) lt!2163305))))

(declare-fun bm!377414 () Bool)

(assert (=> bm!377414 (= call!377419 (isEmpty!32927 s!2326))))

(declare-fun b!5295030 () Bool)

(declare-fun res!2245716 () Bool)

(declare-fun e!3291477 () Bool)

(assert (=> b!5295030 (=> res!2245716 e!3291477)))

(assert (=> b!5295030 (= res!2245716 e!3291478)))

(declare-fun res!2245711 () Bool)

(assert (=> b!5295030 (=> (not res!2245711) (not e!3291478))))

(declare-fun lt!2163498 () Bool)

(assert (=> b!5295030 (= res!2245711 lt!2163498)))

(declare-fun b!5295031 () Bool)

(declare-fun e!3291479 () Bool)

(declare-fun e!3291476 () Bool)

(assert (=> b!5295031 (= e!3291479 e!3291476)))

(declare-fun res!2245713 () Bool)

(assert (=> b!5295031 (=> res!2245713 e!3291476)))

(assert (=> b!5295031 (= res!2245713 call!377419)))

(declare-fun b!5295032 () Bool)

(assert (=> b!5295032 (= e!3291476 (not (= (head!11346 s!2326) (c!918549 lt!2163305))))))

(declare-fun b!5295033 () Bool)

(assert (=> b!5295033 (= e!3291474 (= lt!2163498 call!377419))))

(declare-fun b!5295034 () Bool)

(assert (=> b!5295034 (= e!3291480 (not lt!2163498))))

(declare-fun d!1703137 () Bool)

(assert (=> d!1703137 e!3291474))

(declare-fun c!918837 () Bool)

(assert (=> d!1703137 (= c!918837 ((_ is EmptyExpr!14931) lt!2163305))))

(declare-fun e!3291475 () Bool)

(assert (=> d!1703137 (= lt!2163498 e!3291475)))

(declare-fun c!918836 () Bool)

(assert (=> d!1703137 (= c!918836 (isEmpty!32927 s!2326))))

(assert (=> d!1703137 (validRegex!6667 lt!2163305)))

(assert (=> d!1703137 (= (matchR!7116 lt!2163305 s!2326) lt!2163498)))

(declare-fun b!5295035 () Bool)

(declare-fun res!2245715 () Bool)

(assert (=> b!5295035 (=> res!2245715 e!3291477)))

(assert (=> b!5295035 (= res!2245715 (not ((_ is ElementMatch!14931) lt!2163305)))))

(assert (=> b!5295035 (= e!3291480 e!3291477)))

(declare-fun b!5295036 () Bool)

(assert (=> b!5295036 (= e!3291475 (matchR!7116 (derivativeStep!4135 lt!2163305 (head!11346 s!2326)) (tail!10443 s!2326)))))

(declare-fun b!5295037 () Bool)

(declare-fun res!2245717 () Bool)

(assert (=> b!5295037 (=> res!2245717 e!3291476)))

(assert (=> b!5295037 (= res!2245717 (not (isEmpty!32927 (tail!10443 s!2326))))))

(declare-fun b!5295038 () Bool)

(assert (=> b!5295038 (= e!3291475 (nullable!5100 lt!2163305))))

(declare-fun b!5295039 () Bool)

(assert (=> b!5295039 (= e!3291477 e!3291479)))

(declare-fun res!2245712 () Bool)

(assert (=> b!5295039 (=> (not res!2245712) (not e!3291479))))

(assert (=> b!5295039 (= res!2245712 (not lt!2163498))))

(declare-fun b!5295040 () Bool)

(assert (=> b!5295040 (= e!3291478 (= (head!11346 s!2326) (c!918549 lt!2163305)))))

(assert (= (and d!1703137 c!918836) b!5295038))

(assert (= (and d!1703137 (not c!918836)) b!5295036))

(assert (= (and d!1703137 c!918837) b!5295033))

(assert (= (and d!1703137 (not c!918837)) b!5295029))

(assert (= (and b!5295029 c!918835) b!5295034))

(assert (= (and b!5295029 (not c!918835)) b!5295035))

(assert (= (and b!5295035 (not res!2245715)) b!5295030))

(assert (= (and b!5295030 res!2245711) b!5295027))

(assert (= (and b!5295027 res!2245714) b!5295028))

(assert (= (and b!5295028 res!2245718) b!5295040))

(assert (= (and b!5295030 (not res!2245716)) b!5295039))

(assert (= (and b!5295039 res!2245712) b!5295031))

(assert (= (and b!5295031 (not res!2245713)) b!5295037))

(assert (= (and b!5295037 (not res!2245717)) b!5295032))

(assert (= (or b!5295033 b!5295027 b!5295031) bm!377414))

(assert (=> b!5295037 m!6332320))

(assert (=> b!5295037 m!6332320))

(assert (=> b!5295037 m!6332322))

(assert (=> b!5295040 m!6332324))

(assert (=> bm!377414 m!6332318))

(assert (=> b!5295028 m!6332320))

(assert (=> b!5295028 m!6332320))

(assert (=> b!5295028 m!6332322))

(assert (=> b!5295032 m!6332324))

(assert (=> b!5295036 m!6332324))

(assert (=> b!5295036 m!6332324))

(declare-fun m!6332456 () Bool)

(assert (=> b!5295036 m!6332456))

(assert (=> b!5295036 m!6332320))

(assert (=> b!5295036 m!6332456))

(assert (=> b!5295036 m!6332320))

(declare-fun m!6332458 () Bool)

(assert (=> b!5295036 m!6332458))

(assert (=> d!1703137 m!6332318))

(assert (=> d!1703137 m!6332446))

(declare-fun m!6332460 () Bool)

(assert (=> b!5295038 m!6332460))

(assert (=> b!5294113 d!1703137))

(declare-fun d!1703139 () Bool)

(assert (=> d!1703139 (= (matchR!7116 lt!2163313 s!2326) (matchZipper!1175 lt!2163298 s!2326))))

(declare-fun lt!2163501 () Unit!153242)

(declare-fun choose!39553 ((InoxSet Context!8630) List!61093 Regex!14931 List!61094) Unit!153242)

(assert (=> d!1703139 (= lt!2163501 (choose!39553 lt!2163298 lt!2163331 lt!2163313 s!2326))))

(assert (=> d!1703139 (validRegex!6667 lt!2163313)))

(assert (=> d!1703139 (= (theoremZipperRegexEquiv!341 lt!2163298 lt!2163331 lt!2163313 s!2326) lt!2163501)))

(declare-fun bs!1228065 () Bool)

(assert (= bs!1228065 d!1703139))

(assert (=> bs!1228065 m!6331638))

(assert (=> bs!1228065 m!6331678))

(declare-fun m!6332462 () Bool)

(assert (=> bs!1228065 m!6332462))

(assert (=> bs!1228065 m!6331610))

(assert (=> b!5294113 d!1703139))

(declare-fun d!1703141 () Bool)

(assert (=> d!1703141 (= (Exists!2112 lambda!268312) (choose!39550 lambda!268312))))

(declare-fun bs!1228066 () Bool)

(assert (= bs!1228066 d!1703141))

(declare-fun m!6332464 () Bool)

(assert (=> bs!1228066 m!6332464))

(assert (=> b!5294113 d!1703141))

(declare-fun d!1703143 () Bool)

(assert (=> d!1703143 (= (matchR!7116 lt!2163305 s!2326) (matchZipper!1175 lt!2163318 s!2326))))

(declare-fun lt!2163502 () Unit!153242)

(assert (=> d!1703143 (= lt!2163502 (choose!39553 lt!2163318 (Cons!60969 lt!2163303 Nil!60969) lt!2163305 s!2326))))

(assert (=> d!1703143 (validRegex!6667 lt!2163305)))

(assert (=> d!1703143 (= (theoremZipperRegexEquiv!341 lt!2163318 (Cons!60969 lt!2163303 Nil!60969) lt!2163305 s!2326) lt!2163502)))

(declare-fun bs!1228067 () Bool)

(assert (= bs!1228067 d!1703143))

(assert (=> bs!1228067 m!6331646))

(assert (=> bs!1228067 m!6331650))

(declare-fun m!6332466 () Bool)

(assert (=> bs!1228067 m!6332466))

(assert (=> bs!1228067 m!6332446))

(assert (=> b!5294113 d!1703143))

(declare-fun bs!1228068 () Bool)

(declare-fun d!1703145 () Bool)

(assert (= bs!1228068 (and d!1703145 b!5294113)))

(declare-fun lambda!268415 () Int)

(assert (=> bs!1228068 (= lambda!268415 lambda!268312)))

(assert (=> bs!1228068 (not (= lambda!268415 lambda!268315))))

(assert (=> bs!1228068 (not (= lambda!268415 lambda!268313))))

(declare-fun bs!1228069 () Bool)

(assert (= bs!1228069 (and d!1703145 b!5294859)))

(assert (=> bs!1228069 (not (= lambda!268415 lambda!268392))))

(declare-fun bs!1228070 () Bool)

(assert (= bs!1228070 (and d!1703145 b!5294116)))

(assert (=> bs!1228070 (not (= lambda!268415 lambda!268310))))

(declare-fun bs!1228071 () Bool)

(assert (= bs!1228071 (and d!1703145 d!1703115)))

(assert (=> bs!1228071 (= (and (= (regOne!30374 (regOne!30374 r!7292)) (regOne!30374 r!7292)) (= lt!2163305 (regTwo!30374 r!7292))) (= lambda!268415 lambda!268402))))

(assert (=> bs!1228068 (= (and (= (regOne!30374 (regOne!30374 r!7292)) (regTwo!30374 (regOne!30374 r!7292))) (= lt!2163305 lt!2163337)) (= lambda!268415 lambda!268314))))

(declare-fun bs!1228072 () Bool)

(assert (= bs!1228072 (and d!1703145 d!1703117)))

(assert (=> bs!1228072 (= (and (= (regOne!30374 (regOne!30374 r!7292)) (regOne!30374 r!7292)) (= lt!2163305 (regTwo!30374 r!7292))) (= lambda!268415 lambda!268407))))

(declare-fun bs!1228073 () Bool)

(assert (= bs!1228073 (and d!1703145 b!5294852)))

(assert (=> bs!1228073 (not (= lambda!268415 lambda!268393))))

(assert (=> bs!1228072 (not (= lambda!268415 lambda!268408))))

(assert (=> bs!1228070 (= (and (= (regOne!30374 (regOne!30374 r!7292)) (regOne!30374 r!7292)) (= lt!2163305 (regTwo!30374 r!7292))) (= lambda!268415 lambda!268309))))

(assert (=> d!1703145 true))

(assert (=> d!1703145 true))

(assert (=> d!1703145 true))

(assert (=> d!1703145 (= (isDefined!11745 (findConcatSeparation!1456 (regOne!30374 (regOne!30374 r!7292)) lt!2163305 Nil!60970 s!2326 s!2326)) (Exists!2112 lambda!268415))))

(declare-fun lt!2163503 () Unit!153242)

(assert (=> d!1703145 (= lt!2163503 (choose!39551 (regOne!30374 (regOne!30374 r!7292)) lt!2163305 s!2326))))

(assert (=> d!1703145 (validRegex!6667 (regOne!30374 (regOne!30374 r!7292)))))

(assert (=> d!1703145 (= (lemmaFindConcatSeparationEquivalentToExists!1220 (regOne!30374 (regOne!30374 r!7292)) lt!2163305 s!2326) lt!2163503)))

(declare-fun bs!1228074 () Bool)

(assert (= bs!1228074 d!1703145))

(declare-fun m!6332468 () Bool)

(assert (=> bs!1228074 m!6332468))

(declare-fun m!6332470 () Bool)

(assert (=> bs!1228074 m!6332470))

(declare-fun m!6332472 () Bool)

(assert (=> bs!1228074 m!6332472))

(assert (=> bs!1228074 m!6331664))

(assert (=> bs!1228074 m!6331664))

(assert (=> bs!1228074 m!6331666))

(assert (=> b!5294113 d!1703145))

(declare-fun bs!1228075 () Bool)

(declare-fun d!1703147 () Bool)

(assert (= bs!1228075 (and d!1703147 d!1703145)))

(declare-fun lambda!268416 () Int)

(assert (=> bs!1228075 (= (and (= (regTwo!30374 (regOne!30374 r!7292)) (regOne!30374 (regOne!30374 r!7292))) (= lt!2163337 lt!2163305)) (= lambda!268416 lambda!268415))))

(declare-fun bs!1228076 () Bool)

(assert (= bs!1228076 (and d!1703147 b!5294113)))

(assert (=> bs!1228076 (= (and (= (regTwo!30374 (regOne!30374 r!7292)) (regOne!30374 (regOne!30374 r!7292))) (= lt!2163337 lt!2163305)) (= lambda!268416 lambda!268312))))

(assert (=> bs!1228076 (not (= lambda!268416 lambda!268315))))

(assert (=> bs!1228076 (not (= lambda!268416 lambda!268313))))

(declare-fun bs!1228077 () Bool)

(assert (= bs!1228077 (and d!1703147 b!5294859)))

(assert (=> bs!1228077 (not (= lambda!268416 lambda!268392))))

(declare-fun bs!1228078 () Bool)

(assert (= bs!1228078 (and d!1703147 b!5294116)))

(assert (=> bs!1228078 (not (= lambda!268416 lambda!268310))))

(declare-fun bs!1228079 () Bool)

(assert (= bs!1228079 (and d!1703147 d!1703115)))

(assert (=> bs!1228079 (= (and (= (regTwo!30374 (regOne!30374 r!7292)) (regOne!30374 r!7292)) (= lt!2163337 (regTwo!30374 r!7292))) (= lambda!268416 lambda!268402))))

(assert (=> bs!1228076 (= lambda!268416 lambda!268314)))

(declare-fun bs!1228080 () Bool)

(assert (= bs!1228080 (and d!1703147 d!1703117)))

(assert (=> bs!1228080 (= (and (= (regTwo!30374 (regOne!30374 r!7292)) (regOne!30374 r!7292)) (= lt!2163337 (regTwo!30374 r!7292))) (= lambda!268416 lambda!268407))))

(declare-fun bs!1228081 () Bool)

(assert (= bs!1228081 (and d!1703147 b!5294852)))

(assert (=> bs!1228081 (not (= lambda!268416 lambda!268393))))

(assert (=> bs!1228080 (not (= lambda!268416 lambda!268408))))

(assert (=> bs!1228078 (= (and (= (regTwo!30374 (regOne!30374 r!7292)) (regOne!30374 r!7292)) (= lt!2163337 (regTwo!30374 r!7292))) (= lambda!268416 lambda!268309))))

(assert (=> d!1703147 true))

(assert (=> d!1703147 true))

(assert (=> d!1703147 true))

(assert (=> d!1703147 (= (isDefined!11745 (findConcatSeparation!1456 (regTwo!30374 (regOne!30374 r!7292)) lt!2163337 Nil!60970 s!2326 s!2326)) (Exists!2112 lambda!268416))))

(declare-fun lt!2163504 () Unit!153242)

(assert (=> d!1703147 (= lt!2163504 (choose!39551 (regTwo!30374 (regOne!30374 r!7292)) lt!2163337 s!2326))))

(assert (=> d!1703147 (validRegex!6667 (regTwo!30374 (regOne!30374 r!7292)))))

(assert (=> d!1703147 (= (lemmaFindConcatSeparationEquivalentToExists!1220 (regTwo!30374 (regOne!30374 r!7292)) lt!2163337 s!2326) lt!2163504)))

(declare-fun bs!1228082 () Bool)

(assert (= bs!1228082 d!1703147))

(declare-fun m!6332474 () Bool)

(assert (=> bs!1228082 m!6332474))

(declare-fun m!6332476 () Bool)

(assert (=> bs!1228082 m!6332476))

(declare-fun m!6332478 () Bool)

(assert (=> bs!1228082 m!6332478))

(assert (=> bs!1228082 m!6331670))

(assert (=> bs!1228082 m!6331670))

(assert (=> bs!1228082 m!6331672))

(assert (=> b!5294113 d!1703147))

(declare-fun bs!1228083 () Bool)

(declare-fun d!1703149 () Bool)

(assert (= bs!1228083 (and d!1703149 d!1703145)))

(declare-fun lambda!268417 () Int)

(assert (=> bs!1228083 (= lambda!268417 lambda!268415)))

(declare-fun bs!1228084 () Bool)

(assert (= bs!1228084 (and d!1703149 b!5294113)))

(assert (=> bs!1228084 (= lambda!268417 lambda!268312)))

(assert (=> bs!1228084 (not (= lambda!268417 lambda!268313))))

(declare-fun bs!1228085 () Bool)

(assert (= bs!1228085 (and d!1703149 b!5294859)))

(assert (=> bs!1228085 (not (= lambda!268417 lambda!268392))))

(declare-fun bs!1228086 () Bool)

(assert (= bs!1228086 (and d!1703149 b!5294116)))

(assert (=> bs!1228086 (not (= lambda!268417 lambda!268310))))

(declare-fun bs!1228087 () Bool)

(assert (= bs!1228087 (and d!1703149 d!1703115)))

(assert (=> bs!1228087 (= (and (= (regOne!30374 (regOne!30374 r!7292)) (regOne!30374 r!7292)) (= lt!2163305 (regTwo!30374 r!7292))) (= lambda!268417 lambda!268402))))

(assert (=> bs!1228084 (= (and (= (regOne!30374 (regOne!30374 r!7292)) (regTwo!30374 (regOne!30374 r!7292))) (= lt!2163305 lt!2163337)) (= lambda!268417 lambda!268314))))

(declare-fun bs!1228088 () Bool)

(assert (= bs!1228088 (and d!1703149 d!1703117)))

(assert (=> bs!1228088 (= (and (= (regOne!30374 (regOne!30374 r!7292)) (regOne!30374 r!7292)) (= lt!2163305 (regTwo!30374 r!7292))) (= lambda!268417 lambda!268407))))

(declare-fun bs!1228089 () Bool)

(assert (= bs!1228089 (and d!1703149 b!5294852)))

(assert (=> bs!1228089 (not (= lambda!268417 lambda!268393))))

(assert (=> bs!1228084 (not (= lambda!268417 lambda!268315))))

(declare-fun bs!1228090 () Bool)

(assert (= bs!1228090 (and d!1703149 d!1703147)))

(assert (=> bs!1228090 (= (and (= (regOne!30374 (regOne!30374 r!7292)) (regTwo!30374 (regOne!30374 r!7292))) (= lt!2163305 lt!2163337)) (= lambda!268417 lambda!268416))))

(assert (=> bs!1228088 (not (= lambda!268417 lambda!268408))))

(assert (=> bs!1228086 (= (and (= (regOne!30374 (regOne!30374 r!7292)) (regOne!30374 r!7292)) (= lt!2163305 (regTwo!30374 r!7292))) (= lambda!268417 lambda!268309))))

(assert (=> d!1703149 true))

(assert (=> d!1703149 true))

(assert (=> d!1703149 true))

(declare-fun lambda!268418 () Int)

(assert (=> bs!1228083 (not (= lambda!268418 lambda!268415))))

(assert (=> bs!1228084 (not (= lambda!268418 lambda!268312))))

(assert (=> bs!1228084 (= lambda!268418 lambda!268313)))

(assert (=> bs!1228085 (not (= lambda!268418 lambda!268392))))

(assert (=> bs!1228086 (= (and (= (regOne!30374 (regOne!30374 r!7292)) (regOne!30374 r!7292)) (= lt!2163305 (regTwo!30374 r!7292))) (= lambda!268418 lambda!268310))))

(declare-fun bs!1228091 () Bool)

(assert (= bs!1228091 d!1703149))

(assert (=> bs!1228091 (not (= lambda!268418 lambda!268417))))

(assert (=> bs!1228087 (not (= lambda!268418 lambda!268402))))

(assert (=> bs!1228084 (not (= lambda!268418 lambda!268314))))

(assert (=> bs!1228088 (not (= lambda!268418 lambda!268407))))

(assert (=> bs!1228089 (= (and (= (regOne!30374 (regOne!30374 r!7292)) (regOne!30374 r!7292)) (= lt!2163305 (regTwo!30374 r!7292))) (= lambda!268418 lambda!268393))))

(assert (=> bs!1228084 (= (and (= (regOne!30374 (regOne!30374 r!7292)) (regTwo!30374 (regOne!30374 r!7292))) (= lt!2163305 lt!2163337)) (= lambda!268418 lambda!268315))))

(assert (=> bs!1228090 (not (= lambda!268418 lambda!268416))))

(assert (=> bs!1228088 (= (and (= (regOne!30374 (regOne!30374 r!7292)) (regOne!30374 r!7292)) (= lt!2163305 (regTwo!30374 r!7292))) (= lambda!268418 lambda!268408))))

(assert (=> bs!1228086 (not (= lambda!268418 lambda!268309))))

(assert (=> d!1703149 true))

(assert (=> d!1703149 true))

(assert (=> d!1703149 true))

(assert (=> d!1703149 (= (Exists!2112 lambda!268417) (Exists!2112 lambda!268418))))

(declare-fun lt!2163505 () Unit!153242)

(assert (=> d!1703149 (= lt!2163505 (choose!39552 (regOne!30374 (regOne!30374 r!7292)) lt!2163305 s!2326))))

(assert (=> d!1703149 (validRegex!6667 (regOne!30374 (regOne!30374 r!7292)))))

(assert (=> d!1703149 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!766 (regOne!30374 (regOne!30374 r!7292)) lt!2163305 s!2326) lt!2163505)))

(declare-fun m!6332480 () Bool)

(assert (=> bs!1228091 m!6332480))

(declare-fun m!6332482 () Bool)

(assert (=> bs!1228091 m!6332482))

(declare-fun m!6332484 () Bool)

(assert (=> bs!1228091 m!6332484))

(assert (=> bs!1228091 m!6332468))

(assert (=> b!5294113 d!1703149))

(declare-fun b!5295041 () Bool)

(declare-fun e!3291481 () Bool)

(declare-fun lt!2163507 () Option!15042)

(assert (=> b!5295041 (= e!3291481 (not (isDefined!11745 lt!2163507)))))

(declare-fun b!5295042 () Bool)

(declare-fun e!3291483 () Option!15042)

(assert (=> b!5295042 (= e!3291483 (Some!15041 (tuple2!64261 Nil!60970 s!2326)))))

(declare-fun b!5295043 () Bool)

(declare-fun res!2245722 () Bool)

(declare-fun e!3291485 () Bool)

(assert (=> b!5295043 (=> (not res!2245722) (not e!3291485))))

(assert (=> b!5295043 (= res!2245722 (matchR!7116 lt!2163305 (_2!35433 (get!20965 lt!2163507))))))

(declare-fun b!5295044 () Bool)

(declare-fun e!3291482 () Option!15042)

(assert (=> b!5295044 (= e!3291482 None!15041)))

(declare-fun b!5295045 () Bool)

(assert (=> b!5295045 (= e!3291485 (= (++!13294 (_1!35433 (get!20965 lt!2163507)) (_2!35433 (get!20965 lt!2163507))) s!2326))))

(declare-fun b!5295046 () Bool)

(assert (=> b!5295046 (= e!3291483 e!3291482)))

(declare-fun c!918838 () Bool)

(assert (=> b!5295046 (= c!918838 ((_ is Nil!60970) s!2326))))

(declare-fun d!1703151 () Bool)

(assert (=> d!1703151 e!3291481))

(declare-fun res!2245721 () Bool)

(assert (=> d!1703151 (=> res!2245721 e!3291481)))

(assert (=> d!1703151 (= res!2245721 e!3291485)))

(declare-fun res!2245720 () Bool)

(assert (=> d!1703151 (=> (not res!2245720) (not e!3291485))))

(assert (=> d!1703151 (= res!2245720 (isDefined!11745 lt!2163507))))

(assert (=> d!1703151 (= lt!2163507 e!3291483)))

(declare-fun c!918839 () Bool)

(declare-fun e!3291484 () Bool)

(assert (=> d!1703151 (= c!918839 e!3291484)))

(declare-fun res!2245723 () Bool)

(assert (=> d!1703151 (=> (not res!2245723) (not e!3291484))))

(assert (=> d!1703151 (= res!2245723 (matchR!7116 (regOne!30374 (regOne!30374 r!7292)) Nil!60970))))

(assert (=> d!1703151 (validRegex!6667 (regOne!30374 (regOne!30374 r!7292)))))

(assert (=> d!1703151 (= (findConcatSeparation!1456 (regOne!30374 (regOne!30374 r!7292)) lt!2163305 Nil!60970 s!2326 s!2326) lt!2163507)))

(declare-fun b!5295047 () Bool)

(declare-fun lt!2163508 () Unit!153242)

(declare-fun lt!2163506 () Unit!153242)

(assert (=> b!5295047 (= lt!2163508 lt!2163506)))

(assert (=> b!5295047 (= (++!13294 (++!13294 Nil!60970 (Cons!60970 (h!67418 s!2326) Nil!60970)) (t!374299 s!2326)) s!2326)))

(assert (=> b!5295047 (= lt!2163506 (lemmaMoveElementToOtherListKeepsConcatEq!1709 Nil!60970 (h!67418 s!2326) (t!374299 s!2326) s!2326))))

(assert (=> b!5295047 (= e!3291482 (findConcatSeparation!1456 (regOne!30374 (regOne!30374 r!7292)) lt!2163305 (++!13294 Nil!60970 (Cons!60970 (h!67418 s!2326) Nil!60970)) (t!374299 s!2326) s!2326))))

(declare-fun b!5295048 () Bool)

(assert (=> b!5295048 (= e!3291484 (matchR!7116 lt!2163305 s!2326))))

(declare-fun b!5295049 () Bool)

(declare-fun res!2245719 () Bool)

(assert (=> b!5295049 (=> (not res!2245719) (not e!3291485))))

(assert (=> b!5295049 (= res!2245719 (matchR!7116 (regOne!30374 (regOne!30374 r!7292)) (_1!35433 (get!20965 lt!2163507))))))

(assert (= (and d!1703151 res!2245723) b!5295048))

(assert (= (and d!1703151 c!918839) b!5295042))

(assert (= (and d!1703151 (not c!918839)) b!5295046))

(assert (= (and b!5295046 c!918838) b!5295044))

(assert (= (and b!5295046 (not c!918838)) b!5295047))

(assert (= (and d!1703151 res!2245720) b!5295049))

(assert (= (and b!5295049 res!2245719) b!5295043))

(assert (= (and b!5295043 res!2245722) b!5295045))

(assert (= (and d!1703151 (not res!2245721)) b!5295041))

(assert (=> b!5295048 m!6331646))

(declare-fun m!6332486 () Bool)

(assert (=> b!5295045 m!6332486))

(declare-fun m!6332488 () Bool)

(assert (=> b!5295045 m!6332488))

(assert (=> b!5295049 m!6332486))

(declare-fun m!6332490 () Bool)

(assert (=> b!5295049 m!6332490))

(declare-fun m!6332492 () Bool)

(assert (=> b!5295041 m!6332492))

(assert (=> d!1703151 m!6332492))

(declare-fun m!6332494 () Bool)

(assert (=> d!1703151 m!6332494))

(assert (=> d!1703151 m!6332468))

(assert (=> b!5295043 m!6332486))

(declare-fun m!6332496 () Bool)

(assert (=> b!5295043 m!6332496))

(assert (=> b!5295047 m!6332386))

(assert (=> b!5295047 m!6332386))

(assert (=> b!5295047 m!6332388))

(assert (=> b!5295047 m!6332390))

(assert (=> b!5295047 m!6332386))

(declare-fun m!6332498 () Bool)

(assert (=> b!5295047 m!6332498))

(assert (=> b!5294113 d!1703151))

(declare-fun bs!1228092 () Bool)

(declare-fun b!5295057 () Bool)

(assert (= bs!1228092 (and b!5295057 d!1703145)))

(declare-fun lambda!268419 () Int)

(assert (=> bs!1228092 (not (= lambda!268419 lambda!268415))))

(declare-fun bs!1228093 () Bool)

(assert (= bs!1228093 (and b!5295057 b!5294113)))

(assert (=> bs!1228093 (not (= lambda!268419 lambda!268312))))

(assert (=> bs!1228093 (not (= lambda!268419 lambda!268313))))

(declare-fun bs!1228094 () Bool)

(assert (= bs!1228094 (and b!5295057 b!5294859)))

(assert (=> bs!1228094 (= (and (= (reg!15260 lt!2163305) (reg!15260 r!7292)) (= lt!2163305 r!7292)) (= lambda!268419 lambda!268392))))

(declare-fun bs!1228095 () Bool)

(assert (= bs!1228095 (and b!5295057 b!5294116)))

(assert (=> bs!1228095 (not (= lambda!268419 lambda!268310))))

(declare-fun bs!1228096 () Bool)

(assert (= bs!1228096 (and b!5295057 d!1703149)))

(assert (=> bs!1228096 (not (= lambda!268419 lambda!268417))))

(declare-fun bs!1228097 () Bool)

(assert (= bs!1228097 (and b!5295057 d!1703115)))

(assert (=> bs!1228097 (not (= lambda!268419 lambda!268402))))

(assert (=> bs!1228093 (not (= lambda!268419 lambda!268314))))

(assert (=> bs!1228096 (not (= lambda!268419 lambda!268418))))

(declare-fun bs!1228098 () Bool)

(assert (= bs!1228098 (and b!5295057 d!1703117)))

(assert (=> bs!1228098 (not (= lambda!268419 lambda!268407))))

(declare-fun bs!1228099 () Bool)

(assert (= bs!1228099 (and b!5295057 b!5294852)))

(assert (=> bs!1228099 (not (= lambda!268419 lambda!268393))))

(assert (=> bs!1228093 (not (= lambda!268419 lambda!268315))))

(declare-fun bs!1228100 () Bool)

(assert (= bs!1228100 (and b!5295057 d!1703147)))

(assert (=> bs!1228100 (not (= lambda!268419 lambda!268416))))

(assert (=> bs!1228098 (not (= lambda!268419 lambda!268408))))

(assert (=> bs!1228095 (not (= lambda!268419 lambda!268309))))

(assert (=> b!5295057 true))

(assert (=> b!5295057 true))

(declare-fun bs!1228101 () Bool)

(declare-fun b!5295050 () Bool)

(assert (= bs!1228101 (and b!5295050 d!1703145)))

(declare-fun lambda!268420 () Int)

(assert (=> bs!1228101 (not (= lambda!268420 lambda!268415))))

(declare-fun bs!1228102 () Bool)

(assert (= bs!1228102 (and b!5295050 b!5294113)))

(assert (=> bs!1228102 (not (= lambda!268420 lambda!268312))))

(assert (=> bs!1228102 (= (and (= (regOne!30374 lt!2163305) (regOne!30374 (regOne!30374 r!7292))) (= (regTwo!30374 lt!2163305) lt!2163305)) (= lambda!268420 lambda!268313))))

(declare-fun bs!1228103 () Bool)

(assert (= bs!1228103 (and b!5295050 b!5294859)))

(assert (=> bs!1228103 (not (= lambda!268420 lambda!268392))))

(declare-fun bs!1228104 () Bool)

(assert (= bs!1228104 (and b!5295050 b!5294116)))

(assert (=> bs!1228104 (= (and (= (regOne!30374 lt!2163305) (regOne!30374 r!7292)) (= (regTwo!30374 lt!2163305) (regTwo!30374 r!7292))) (= lambda!268420 lambda!268310))))

(declare-fun bs!1228105 () Bool)

(assert (= bs!1228105 (and b!5295050 d!1703149)))

(assert (=> bs!1228105 (not (= lambda!268420 lambda!268417))))

(declare-fun bs!1228106 () Bool)

(assert (= bs!1228106 (and b!5295050 d!1703115)))

(assert (=> bs!1228106 (not (= lambda!268420 lambda!268402))))

(assert (=> bs!1228105 (= (and (= (regOne!30374 lt!2163305) (regOne!30374 (regOne!30374 r!7292))) (= (regTwo!30374 lt!2163305) lt!2163305)) (= lambda!268420 lambda!268418))))

(declare-fun bs!1228107 () Bool)

(assert (= bs!1228107 (and b!5295050 d!1703117)))

(assert (=> bs!1228107 (not (= lambda!268420 lambda!268407))))

(declare-fun bs!1228108 () Bool)

(assert (= bs!1228108 (and b!5295050 b!5294852)))

(assert (=> bs!1228108 (= (and (= (regOne!30374 lt!2163305) (regOne!30374 r!7292)) (= (regTwo!30374 lt!2163305) (regTwo!30374 r!7292))) (= lambda!268420 lambda!268393))))

(assert (=> bs!1228102 (= (and (= (regOne!30374 lt!2163305) (regTwo!30374 (regOne!30374 r!7292))) (= (regTwo!30374 lt!2163305) lt!2163337)) (= lambda!268420 lambda!268315))))

(declare-fun bs!1228109 () Bool)

(assert (= bs!1228109 (and b!5295050 d!1703147)))

(assert (=> bs!1228109 (not (= lambda!268420 lambda!268416))))

(declare-fun bs!1228110 () Bool)

(assert (= bs!1228110 (and b!5295050 b!5295057)))

(assert (=> bs!1228110 (not (= lambda!268420 lambda!268419))))

(assert (=> bs!1228102 (not (= lambda!268420 lambda!268314))))

(assert (=> bs!1228107 (= (and (= (regOne!30374 lt!2163305) (regOne!30374 r!7292)) (= (regTwo!30374 lt!2163305) (regTwo!30374 r!7292))) (= lambda!268420 lambda!268408))))

(assert (=> bs!1228104 (not (= lambda!268420 lambda!268309))))

(assert (=> b!5295050 true))

(assert (=> b!5295050 true))

(declare-fun e!3291491 () Bool)

(declare-fun call!377420 () Bool)

(assert (=> b!5295050 (= e!3291491 call!377420)))

(declare-fun b!5295051 () Bool)

(declare-fun e!3291492 () Bool)

(declare-fun call!377421 () Bool)

(assert (=> b!5295051 (= e!3291492 call!377421)))

(declare-fun b!5295052 () Bool)

(declare-fun c!918843 () Bool)

(assert (=> b!5295052 (= c!918843 ((_ is ElementMatch!14931) lt!2163305))))

(declare-fun e!3291486 () Bool)

(declare-fun e!3291488 () Bool)

(assert (=> b!5295052 (= e!3291486 e!3291488)))

(declare-fun b!5295053 () Bool)

(declare-fun e!3291489 () Bool)

(declare-fun e!3291490 () Bool)

(assert (=> b!5295053 (= e!3291489 e!3291490)))

(declare-fun res!2245726 () Bool)

(assert (=> b!5295053 (= res!2245726 (matchRSpec!2034 (regOne!30375 lt!2163305) s!2326))))

(assert (=> b!5295053 (=> res!2245726 e!3291490)))

(declare-fun bm!377415 () Bool)

(declare-fun c!918841 () Bool)

(assert (=> bm!377415 (= call!377420 (Exists!2112 (ite c!918841 lambda!268419 lambda!268420)))))

(declare-fun b!5295054 () Bool)

(assert (=> b!5295054 (= e!3291489 e!3291491)))

(assert (=> b!5295054 (= c!918841 ((_ is Star!14931) lt!2163305))))

(declare-fun b!5295055 () Bool)

(declare-fun res!2245724 () Bool)

(declare-fun e!3291487 () Bool)

(assert (=> b!5295055 (=> res!2245724 e!3291487)))

(assert (=> b!5295055 (= res!2245724 call!377421)))

(assert (=> b!5295055 (= e!3291491 e!3291487)))

(declare-fun d!1703153 () Bool)

(declare-fun c!918842 () Bool)

(assert (=> d!1703153 (= c!918842 ((_ is EmptyExpr!14931) lt!2163305))))

(assert (=> d!1703153 (= (matchRSpec!2034 lt!2163305 s!2326) e!3291492)))

(declare-fun b!5295056 () Bool)

(declare-fun c!918840 () Bool)

(assert (=> b!5295056 (= c!918840 ((_ is Union!14931) lt!2163305))))

(assert (=> b!5295056 (= e!3291488 e!3291489)))

(assert (=> b!5295057 (= e!3291487 call!377420)))

(declare-fun b!5295058 () Bool)

(assert (=> b!5295058 (= e!3291490 (matchRSpec!2034 (regTwo!30375 lt!2163305) s!2326))))

(declare-fun b!5295059 () Bool)

(assert (=> b!5295059 (= e!3291492 e!3291486)))

(declare-fun res!2245725 () Bool)

(assert (=> b!5295059 (= res!2245725 (not ((_ is EmptyLang!14931) lt!2163305)))))

(assert (=> b!5295059 (=> (not res!2245725) (not e!3291486))))

(declare-fun bm!377416 () Bool)

(assert (=> bm!377416 (= call!377421 (isEmpty!32927 s!2326))))

(declare-fun b!5295060 () Bool)

(assert (=> b!5295060 (= e!3291488 (= s!2326 (Cons!60970 (c!918549 lt!2163305) Nil!60970)))))

(assert (= (and d!1703153 c!918842) b!5295051))

(assert (= (and d!1703153 (not c!918842)) b!5295059))

(assert (= (and b!5295059 res!2245725) b!5295052))

(assert (= (and b!5295052 c!918843) b!5295060))

(assert (= (and b!5295052 (not c!918843)) b!5295056))

(assert (= (and b!5295056 c!918840) b!5295053))

(assert (= (and b!5295056 (not c!918840)) b!5295054))

(assert (= (and b!5295053 (not res!2245726)) b!5295058))

(assert (= (and b!5295054 c!918841) b!5295055))

(assert (= (and b!5295054 (not c!918841)) b!5295050))

(assert (= (and b!5295055 (not res!2245724)) b!5295057))

(assert (= (or b!5295057 b!5295050) bm!377415))

(assert (= (or b!5295051 b!5295055) bm!377416))

(declare-fun m!6332500 () Bool)

(assert (=> b!5295053 m!6332500))

(declare-fun m!6332502 () Bool)

(assert (=> bm!377415 m!6332502))

(declare-fun m!6332504 () Bool)

(assert (=> b!5295058 m!6332504))

(assert (=> bm!377416 m!6332318))

(assert (=> b!5294113 d!1703153))

(declare-fun bs!1228111 () Bool)

(declare-fun d!1703155 () Bool)

(assert (= bs!1228111 (and d!1703155 d!1703105)))

(declare-fun lambda!268421 () Int)

(assert (=> bs!1228111 (= lambda!268421 lambda!268396)))

(declare-fun bs!1228112 () Bool)

(assert (= bs!1228112 (and d!1703155 d!1703107)))

(assert (=> bs!1228112 (= lambda!268421 lambda!268399)))

(declare-fun bs!1228113 () Bool)

(assert (= bs!1228113 (and d!1703155 d!1703123)))

(assert (=> bs!1228113 (= lambda!268421 lambda!268411)))

(declare-fun bs!1228114 () Bool)

(assert (= bs!1228114 (and d!1703155 d!1703129)))

(assert (=> bs!1228114 (= lambda!268421 lambda!268414)))

(declare-fun b!5295061 () Bool)

(declare-fun e!3291494 () Bool)

(declare-fun e!3291496 () Bool)

(assert (=> b!5295061 (= e!3291494 e!3291496)))

(declare-fun c!918845 () Bool)

(assert (=> b!5295061 (= c!918845 (isEmpty!32924 (t!374297 (exprs!4815 (h!67417 zl!343)))))))

(assert (=> d!1703155 e!3291494))

(declare-fun res!2245727 () Bool)

(assert (=> d!1703155 (=> (not res!2245727) (not e!3291494))))

(declare-fun lt!2163509 () Regex!14931)

(assert (=> d!1703155 (= res!2245727 (validRegex!6667 lt!2163509))))

(declare-fun e!3291493 () Regex!14931)

(assert (=> d!1703155 (= lt!2163509 e!3291493)))

(declare-fun c!918846 () Bool)

(declare-fun e!3291495 () Bool)

(assert (=> d!1703155 (= c!918846 e!3291495)))

(declare-fun res!2245728 () Bool)

(assert (=> d!1703155 (=> (not res!2245728) (not e!3291495))))

(assert (=> d!1703155 (= res!2245728 ((_ is Cons!60968) (t!374297 (exprs!4815 (h!67417 zl!343)))))))

(assert (=> d!1703155 (forall!14343 (t!374297 (exprs!4815 (h!67417 zl!343))) lambda!268421)))

(assert (=> d!1703155 (= (generalisedConcat!600 (t!374297 (exprs!4815 (h!67417 zl!343)))) lt!2163509)))

(declare-fun b!5295062 () Bool)

(assert (=> b!5295062 (= e!3291496 (isEmptyExpr!849 lt!2163509))))

(declare-fun b!5295063 () Bool)

(assert (=> b!5295063 (= e!3291495 (isEmpty!32924 (t!374297 (t!374297 (exprs!4815 (h!67417 zl!343))))))))

(declare-fun b!5295064 () Bool)

(declare-fun e!3291498 () Bool)

(assert (=> b!5295064 (= e!3291498 (isConcat!372 lt!2163509))))

(declare-fun b!5295065 () Bool)

(assert (=> b!5295065 (= e!3291496 e!3291498)))

(declare-fun c!918844 () Bool)

(assert (=> b!5295065 (= c!918844 (isEmpty!32924 (tail!10444 (t!374297 (exprs!4815 (h!67417 zl!343))))))))

(declare-fun b!5295066 () Bool)

(declare-fun e!3291497 () Regex!14931)

(assert (=> b!5295066 (= e!3291493 e!3291497)))

(declare-fun c!918847 () Bool)

(assert (=> b!5295066 (= c!918847 ((_ is Cons!60968) (t!374297 (exprs!4815 (h!67417 zl!343)))))))

(declare-fun b!5295067 () Bool)

(assert (=> b!5295067 (= e!3291498 (= lt!2163509 (head!11347 (t!374297 (exprs!4815 (h!67417 zl!343))))))))

(declare-fun b!5295068 () Bool)

(assert (=> b!5295068 (= e!3291493 (h!67416 (t!374297 (exprs!4815 (h!67417 zl!343)))))))

(declare-fun b!5295069 () Bool)

(assert (=> b!5295069 (= e!3291497 EmptyExpr!14931)))

(declare-fun b!5295070 () Bool)

(assert (=> b!5295070 (= e!3291497 (Concat!23776 (h!67416 (t!374297 (exprs!4815 (h!67417 zl!343)))) (generalisedConcat!600 (t!374297 (t!374297 (exprs!4815 (h!67417 zl!343)))))))))

(assert (= (and d!1703155 res!2245728) b!5295063))

(assert (= (and d!1703155 c!918846) b!5295068))

(assert (= (and d!1703155 (not c!918846)) b!5295066))

(assert (= (and b!5295066 c!918847) b!5295070))

(assert (= (and b!5295066 (not c!918847)) b!5295069))

(assert (= (and d!1703155 res!2245727) b!5295061))

(assert (= (and b!5295061 c!918845) b!5295062))

(assert (= (and b!5295061 (not c!918845)) b!5295065))

(assert (= (and b!5295065 c!918844) b!5295067))

(assert (= (and b!5295065 (not c!918844)) b!5295064))

(declare-fun m!6332506 () Bool)

(assert (=> b!5295064 m!6332506))

(declare-fun m!6332508 () Bool)

(assert (=> b!5295065 m!6332508))

(assert (=> b!5295065 m!6332508))

(declare-fun m!6332510 () Bool)

(assert (=> b!5295065 m!6332510))

(declare-fun m!6332512 () Bool)

(assert (=> b!5295062 m!6332512))

(declare-fun m!6332514 () Bool)

(assert (=> b!5295070 m!6332514))

(declare-fun m!6332516 () Bool)

(assert (=> b!5295063 m!6332516))

(declare-fun m!6332518 () Bool)

(assert (=> d!1703155 m!6332518))

(declare-fun m!6332520 () Bool)

(assert (=> d!1703155 m!6332520))

(declare-fun m!6332522 () Bool)

(assert (=> b!5295067 m!6332522))

(assert (=> b!5295061 m!6331588))

(assert (=> b!5294113 d!1703155))

(declare-fun d!1703157 () Bool)

(assert (=> d!1703157 (= (isDefined!11745 (findConcatSeparation!1456 (regTwo!30374 (regOne!30374 r!7292)) lt!2163337 Nil!60970 s!2326 s!2326)) (not (isEmpty!32928 (findConcatSeparation!1456 (regTwo!30374 (regOne!30374 r!7292)) lt!2163337 Nil!60970 s!2326 s!2326))))))

(declare-fun bs!1228115 () Bool)

(assert (= bs!1228115 d!1703157))

(assert (=> bs!1228115 m!6331670))

(declare-fun m!6332524 () Bool)

(assert (=> bs!1228115 m!6332524))

(assert (=> b!5294113 d!1703157))

(declare-fun b!5295071 () Bool)

(declare-fun res!2245732 () Bool)

(declare-fun e!3291503 () Bool)

(assert (=> b!5295071 (=> (not res!2245732) (not e!3291503))))

(declare-fun call!377422 () Bool)

(assert (=> b!5295071 (= res!2245732 (not call!377422))))

(declare-fun b!5295072 () Bool)

(declare-fun res!2245736 () Bool)

(assert (=> b!5295072 (=> (not res!2245736) (not e!3291503))))

(assert (=> b!5295072 (= res!2245736 (isEmpty!32927 (tail!10443 s!2326)))))

(declare-fun b!5295073 () Bool)

(declare-fun e!3291499 () Bool)

(declare-fun e!3291505 () Bool)

(assert (=> b!5295073 (= e!3291499 e!3291505)))

(declare-fun c!918848 () Bool)

(assert (=> b!5295073 (= c!918848 ((_ is EmptyLang!14931) lt!2163313))))

(declare-fun bm!377417 () Bool)

(assert (=> bm!377417 (= call!377422 (isEmpty!32927 s!2326))))

(declare-fun b!5295074 () Bool)

(declare-fun res!2245734 () Bool)

(declare-fun e!3291502 () Bool)

(assert (=> b!5295074 (=> res!2245734 e!3291502)))

(assert (=> b!5295074 (= res!2245734 e!3291503)))

(declare-fun res!2245729 () Bool)

(assert (=> b!5295074 (=> (not res!2245729) (not e!3291503))))

(declare-fun lt!2163510 () Bool)

(assert (=> b!5295074 (= res!2245729 lt!2163510)))

(declare-fun b!5295075 () Bool)

(declare-fun e!3291504 () Bool)

(declare-fun e!3291501 () Bool)

(assert (=> b!5295075 (= e!3291504 e!3291501)))

(declare-fun res!2245731 () Bool)

(assert (=> b!5295075 (=> res!2245731 e!3291501)))

(assert (=> b!5295075 (= res!2245731 call!377422)))

(declare-fun b!5295076 () Bool)

(assert (=> b!5295076 (= e!3291501 (not (= (head!11346 s!2326) (c!918549 lt!2163313))))))

(declare-fun b!5295077 () Bool)

(assert (=> b!5295077 (= e!3291499 (= lt!2163510 call!377422))))

(declare-fun b!5295078 () Bool)

(assert (=> b!5295078 (= e!3291505 (not lt!2163510))))

(declare-fun d!1703159 () Bool)

(assert (=> d!1703159 e!3291499))

(declare-fun c!918850 () Bool)

(assert (=> d!1703159 (= c!918850 ((_ is EmptyExpr!14931) lt!2163313))))

(declare-fun e!3291500 () Bool)

(assert (=> d!1703159 (= lt!2163510 e!3291500)))

(declare-fun c!918849 () Bool)

(assert (=> d!1703159 (= c!918849 (isEmpty!32927 s!2326))))

(assert (=> d!1703159 (validRegex!6667 lt!2163313)))

(assert (=> d!1703159 (= (matchR!7116 lt!2163313 s!2326) lt!2163510)))

(declare-fun b!5295079 () Bool)

(declare-fun res!2245733 () Bool)

(assert (=> b!5295079 (=> res!2245733 e!3291502)))

(assert (=> b!5295079 (= res!2245733 (not ((_ is ElementMatch!14931) lt!2163313)))))

(assert (=> b!5295079 (= e!3291505 e!3291502)))

(declare-fun b!5295080 () Bool)

(assert (=> b!5295080 (= e!3291500 (matchR!7116 (derivativeStep!4135 lt!2163313 (head!11346 s!2326)) (tail!10443 s!2326)))))

(declare-fun b!5295081 () Bool)

(declare-fun res!2245735 () Bool)

(assert (=> b!5295081 (=> res!2245735 e!3291501)))

(assert (=> b!5295081 (= res!2245735 (not (isEmpty!32927 (tail!10443 s!2326))))))

(declare-fun b!5295082 () Bool)

(assert (=> b!5295082 (= e!3291500 (nullable!5100 lt!2163313))))

(declare-fun b!5295083 () Bool)

(assert (=> b!5295083 (= e!3291502 e!3291504)))

(declare-fun res!2245730 () Bool)

(assert (=> b!5295083 (=> (not res!2245730) (not e!3291504))))

(assert (=> b!5295083 (= res!2245730 (not lt!2163510))))

(declare-fun b!5295084 () Bool)

(assert (=> b!5295084 (= e!3291503 (= (head!11346 s!2326) (c!918549 lt!2163313)))))

(assert (= (and d!1703159 c!918849) b!5295082))

(assert (= (and d!1703159 (not c!918849)) b!5295080))

(assert (= (and d!1703159 c!918850) b!5295077))

(assert (= (and d!1703159 (not c!918850)) b!5295073))

(assert (= (and b!5295073 c!918848) b!5295078))

(assert (= (and b!5295073 (not c!918848)) b!5295079))

(assert (= (and b!5295079 (not res!2245733)) b!5295074))

(assert (= (and b!5295074 res!2245729) b!5295071))

(assert (= (and b!5295071 res!2245732) b!5295072))

(assert (= (and b!5295072 res!2245736) b!5295084))

(assert (= (and b!5295074 (not res!2245734)) b!5295083))

(assert (= (and b!5295083 res!2245730) b!5295075))

(assert (= (and b!5295075 (not res!2245731)) b!5295081))

(assert (= (and b!5295081 (not res!2245735)) b!5295076))

(assert (= (or b!5295077 b!5295071 b!5295075) bm!377417))

(assert (=> b!5295081 m!6332320))

(assert (=> b!5295081 m!6332320))

(assert (=> b!5295081 m!6332322))

(assert (=> b!5295084 m!6332324))

(assert (=> bm!377417 m!6332318))

(assert (=> b!5295072 m!6332320))

(assert (=> b!5295072 m!6332320))

(assert (=> b!5295072 m!6332322))

(assert (=> b!5295076 m!6332324))

(assert (=> b!5295080 m!6332324))

(assert (=> b!5295080 m!6332324))

(declare-fun m!6332526 () Bool)

(assert (=> b!5295080 m!6332526))

(assert (=> b!5295080 m!6332320))

(assert (=> b!5295080 m!6332526))

(assert (=> b!5295080 m!6332320))

(declare-fun m!6332528 () Bool)

(assert (=> b!5295080 m!6332528))

(assert (=> d!1703159 m!6332318))

(assert (=> d!1703159 m!6331610))

(declare-fun m!6332530 () Bool)

(assert (=> b!5295082 m!6332530))

(assert (=> b!5294113 d!1703159))

(declare-fun b!5295085 () Bool)

(declare-fun e!3291506 () Bool)

(declare-fun lt!2163512 () Option!15042)

(assert (=> b!5295085 (= e!3291506 (not (isDefined!11745 lt!2163512)))))

(declare-fun b!5295086 () Bool)

(declare-fun e!3291508 () Option!15042)

(assert (=> b!5295086 (= e!3291508 (Some!15041 (tuple2!64261 Nil!60970 s!2326)))))

(declare-fun b!5295087 () Bool)

(declare-fun res!2245740 () Bool)

(declare-fun e!3291510 () Bool)

(assert (=> b!5295087 (=> (not res!2245740) (not e!3291510))))

(assert (=> b!5295087 (= res!2245740 (matchR!7116 lt!2163337 (_2!35433 (get!20965 lt!2163512))))))

(declare-fun b!5295088 () Bool)

(declare-fun e!3291507 () Option!15042)

(assert (=> b!5295088 (= e!3291507 None!15041)))

(declare-fun b!5295089 () Bool)

(assert (=> b!5295089 (= e!3291510 (= (++!13294 (_1!35433 (get!20965 lt!2163512)) (_2!35433 (get!20965 lt!2163512))) s!2326))))

(declare-fun b!5295090 () Bool)

(assert (=> b!5295090 (= e!3291508 e!3291507)))

(declare-fun c!918851 () Bool)

(assert (=> b!5295090 (= c!918851 ((_ is Nil!60970) s!2326))))

(declare-fun d!1703161 () Bool)

(assert (=> d!1703161 e!3291506))

(declare-fun res!2245739 () Bool)

(assert (=> d!1703161 (=> res!2245739 e!3291506)))

(assert (=> d!1703161 (= res!2245739 e!3291510)))

(declare-fun res!2245738 () Bool)

(assert (=> d!1703161 (=> (not res!2245738) (not e!3291510))))

(assert (=> d!1703161 (= res!2245738 (isDefined!11745 lt!2163512))))

(assert (=> d!1703161 (= lt!2163512 e!3291508)))

(declare-fun c!918852 () Bool)

(declare-fun e!3291509 () Bool)

(assert (=> d!1703161 (= c!918852 e!3291509)))

(declare-fun res!2245741 () Bool)

(assert (=> d!1703161 (=> (not res!2245741) (not e!3291509))))

(assert (=> d!1703161 (= res!2245741 (matchR!7116 (regTwo!30374 (regOne!30374 r!7292)) Nil!60970))))

(assert (=> d!1703161 (validRegex!6667 (regTwo!30374 (regOne!30374 r!7292)))))

(assert (=> d!1703161 (= (findConcatSeparation!1456 (regTwo!30374 (regOne!30374 r!7292)) lt!2163337 Nil!60970 s!2326 s!2326) lt!2163512)))

(declare-fun b!5295091 () Bool)

(declare-fun lt!2163513 () Unit!153242)

(declare-fun lt!2163511 () Unit!153242)

(assert (=> b!5295091 (= lt!2163513 lt!2163511)))

(assert (=> b!5295091 (= (++!13294 (++!13294 Nil!60970 (Cons!60970 (h!67418 s!2326) Nil!60970)) (t!374299 s!2326)) s!2326)))

(assert (=> b!5295091 (= lt!2163511 (lemmaMoveElementToOtherListKeepsConcatEq!1709 Nil!60970 (h!67418 s!2326) (t!374299 s!2326) s!2326))))

(assert (=> b!5295091 (= e!3291507 (findConcatSeparation!1456 (regTwo!30374 (regOne!30374 r!7292)) lt!2163337 (++!13294 Nil!60970 (Cons!60970 (h!67418 s!2326) Nil!60970)) (t!374299 s!2326) s!2326))))

(declare-fun b!5295092 () Bool)

(assert (=> b!5295092 (= e!3291509 (matchR!7116 lt!2163337 s!2326))))

(declare-fun b!5295093 () Bool)

(declare-fun res!2245737 () Bool)

(assert (=> b!5295093 (=> (not res!2245737) (not e!3291510))))

(assert (=> b!5295093 (= res!2245737 (matchR!7116 (regTwo!30374 (regOne!30374 r!7292)) (_1!35433 (get!20965 lt!2163512))))))

(assert (= (and d!1703161 res!2245741) b!5295092))

(assert (= (and d!1703161 c!918852) b!5295086))

(assert (= (and d!1703161 (not c!918852)) b!5295090))

(assert (= (and b!5295090 c!918851) b!5295088))

(assert (= (and b!5295090 (not c!918851)) b!5295091))

(assert (= (and d!1703161 res!2245738) b!5295093))

(assert (= (and b!5295093 res!2245737) b!5295087))

(assert (= (and b!5295087 res!2245740) b!5295089))

(assert (= (and d!1703161 (not res!2245739)) b!5295085))

(declare-fun m!6332532 () Bool)

(assert (=> b!5295092 m!6332532))

(declare-fun m!6332534 () Bool)

(assert (=> b!5295089 m!6332534))

(declare-fun m!6332536 () Bool)

(assert (=> b!5295089 m!6332536))

(assert (=> b!5295093 m!6332534))

(declare-fun m!6332538 () Bool)

(assert (=> b!5295093 m!6332538))

(declare-fun m!6332540 () Bool)

(assert (=> b!5295085 m!6332540))

(assert (=> d!1703161 m!6332540))

(declare-fun m!6332542 () Bool)

(assert (=> d!1703161 m!6332542))

(assert (=> d!1703161 m!6332474))

(assert (=> b!5295087 m!6332534))

(declare-fun m!6332544 () Bool)

(assert (=> b!5295087 m!6332544))

(assert (=> b!5295091 m!6332386))

(assert (=> b!5295091 m!6332386))

(assert (=> b!5295091 m!6332388))

(assert (=> b!5295091 m!6332390))

(assert (=> b!5295091 m!6332386))

(declare-fun m!6332546 () Bool)

(assert (=> b!5295091 m!6332546))

(assert (=> b!5294113 d!1703161))

(declare-fun d!1703163 () Bool)

(assert (=> d!1703163 (= (isDefined!11745 (findConcatSeparation!1456 (regOne!30374 (regOne!30374 r!7292)) lt!2163305 Nil!60970 s!2326 s!2326)) (not (isEmpty!32928 (findConcatSeparation!1456 (regOne!30374 (regOne!30374 r!7292)) lt!2163305 Nil!60970 s!2326 s!2326))))))

(declare-fun bs!1228116 () Bool)

(assert (= bs!1228116 d!1703163))

(assert (=> bs!1228116 m!6331664))

(declare-fun m!6332548 () Bool)

(assert (=> bs!1228116 m!6332548))

(assert (=> b!5294113 d!1703163))

(declare-fun d!1703165 () Bool)

(assert (=> d!1703165 (= (Exists!2112 lambda!268315) (choose!39550 lambda!268315))))

(declare-fun bs!1228117 () Bool)

(assert (= bs!1228117 d!1703165))

(declare-fun m!6332550 () Bool)

(assert (=> bs!1228117 m!6332550))

(assert (=> b!5294113 d!1703165))

(declare-fun bs!1228118 () Bool)

(declare-fun b!5295101 () Bool)

(assert (= bs!1228118 (and b!5295101 d!1703145)))

(declare-fun lambda!268422 () Int)

(assert (=> bs!1228118 (not (= lambda!268422 lambda!268415))))

(declare-fun bs!1228119 () Bool)

(assert (= bs!1228119 (and b!5295101 b!5294113)))

(assert (=> bs!1228119 (not (= lambda!268422 lambda!268312))))

(assert (=> bs!1228119 (not (= lambda!268422 lambda!268313))))

(declare-fun bs!1228120 () Bool)

(assert (= bs!1228120 (and b!5295101 b!5294859)))

(assert (=> bs!1228120 (= (and (= (reg!15260 lt!2163313) (reg!15260 r!7292)) (= lt!2163313 r!7292)) (= lambda!268422 lambda!268392))))

(declare-fun bs!1228121 () Bool)

(assert (= bs!1228121 (and b!5295101 b!5294116)))

(assert (=> bs!1228121 (not (= lambda!268422 lambda!268310))))

(declare-fun bs!1228122 () Bool)

(assert (= bs!1228122 (and b!5295101 d!1703149)))

(assert (=> bs!1228122 (not (= lambda!268422 lambda!268417))))

(declare-fun bs!1228123 () Bool)

(assert (= bs!1228123 (and b!5295101 d!1703115)))

(assert (=> bs!1228123 (not (= lambda!268422 lambda!268402))))

(assert (=> bs!1228122 (not (= lambda!268422 lambda!268418))))

(declare-fun bs!1228124 () Bool)

(assert (= bs!1228124 (and b!5295101 b!5294852)))

(assert (=> bs!1228124 (not (= lambda!268422 lambda!268393))))

(assert (=> bs!1228119 (not (= lambda!268422 lambda!268315))))

(declare-fun bs!1228125 () Bool)

(assert (= bs!1228125 (and b!5295101 d!1703147)))

(assert (=> bs!1228125 (not (= lambda!268422 lambda!268416))))

(declare-fun bs!1228126 () Bool)

(assert (= bs!1228126 (and b!5295101 b!5295057)))

(assert (=> bs!1228126 (= (and (= (reg!15260 lt!2163313) (reg!15260 lt!2163305)) (= lt!2163313 lt!2163305)) (= lambda!268422 lambda!268419))))

(assert (=> bs!1228119 (not (= lambda!268422 lambda!268314))))

(declare-fun bs!1228127 () Bool)

(assert (= bs!1228127 (and b!5295101 d!1703117)))

(assert (=> bs!1228127 (not (= lambda!268422 lambda!268407))))

(declare-fun bs!1228128 () Bool)

(assert (= bs!1228128 (and b!5295101 b!5295050)))

(assert (=> bs!1228128 (not (= lambda!268422 lambda!268420))))

(assert (=> bs!1228127 (not (= lambda!268422 lambda!268408))))

(assert (=> bs!1228121 (not (= lambda!268422 lambda!268309))))

(assert (=> b!5295101 true))

(assert (=> b!5295101 true))

(declare-fun bs!1228129 () Bool)

(declare-fun b!5295094 () Bool)

(assert (= bs!1228129 (and b!5295094 d!1703145)))

(declare-fun lambda!268423 () Int)

(assert (=> bs!1228129 (not (= lambda!268423 lambda!268415))))

(declare-fun bs!1228130 () Bool)

(assert (= bs!1228130 (and b!5295094 b!5294113)))

(assert (=> bs!1228130 (not (= lambda!268423 lambda!268312))))

(assert (=> bs!1228130 (= (and (= (regOne!30374 lt!2163313) (regOne!30374 (regOne!30374 r!7292))) (= (regTwo!30374 lt!2163313) lt!2163305)) (= lambda!268423 lambda!268313))))

(declare-fun bs!1228131 () Bool)

(assert (= bs!1228131 (and b!5295094 b!5294859)))

(assert (=> bs!1228131 (not (= lambda!268423 lambda!268392))))

(declare-fun bs!1228132 () Bool)

(assert (= bs!1228132 (and b!5295094 b!5294116)))

(assert (=> bs!1228132 (= (and (= (regOne!30374 lt!2163313) (regOne!30374 r!7292)) (= (regTwo!30374 lt!2163313) (regTwo!30374 r!7292))) (= lambda!268423 lambda!268310))))

(declare-fun bs!1228133 () Bool)

(assert (= bs!1228133 (and b!5295094 d!1703149)))

(assert (=> bs!1228133 (not (= lambda!268423 lambda!268417))))

(declare-fun bs!1228134 () Bool)

(assert (= bs!1228134 (and b!5295094 d!1703115)))

(assert (=> bs!1228134 (not (= lambda!268423 lambda!268402))))

(declare-fun bs!1228135 () Bool)

(assert (= bs!1228135 (and b!5295094 b!5295101)))

(assert (=> bs!1228135 (not (= lambda!268423 lambda!268422))))

(assert (=> bs!1228133 (= (and (= (regOne!30374 lt!2163313) (regOne!30374 (regOne!30374 r!7292))) (= (regTwo!30374 lt!2163313) lt!2163305)) (= lambda!268423 lambda!268418))))

(declare-fun bs!1228136 () Bool)

(assert (= bs!1228136 (and b!5295094 b!5294852)))

(assert (=> bs!1228136 (= (and (= (regOne!30374 lt!2163313) (regOne!30374 r!7292)) (= (regTwo!30374 lt!2163313) (regTwo!30374 r!7292))) (= lambda!268423 lambda!268393))))

(assert (=> bs!1228130 (= (and (= (regOne!30374 lt!2163313) (regTwo!30374 (regOne!30374 r!7292))) (= (regTwo!30374 lt!2163313) lt!2163337)) (= lambda!268423 lambda!268315))))

(declare-fun bs!1228137 () Bool)

(assert (= bs!1228137 (and b!5295094 d!1703147)))

(assert (=> bs!1228137 (not (= lambda!268423 lambda!268416))))

(declare-fun bs!1228138 () Bool)

(assert (= bs!1228138 (and b!5295094 b!5295057)))

(assert (=> bs!1228138 (not (= lambda!268423 lambda!268419))))

(assert (=> bs!1228130 (not (= lambda!268423 lambda!268314))))

(declare-fun bs!1228139 () Bool)

(assert (= bs!1228139 (and b!5295094 d!1703117)))

(assert (=> bs!1228139 (not (= lambda!268423 lambda!268407))))

(declare-fun bs!1228140 () Bool)

(assert (= bs!1228140 (and b!5295094 b!5295050)))

(assert (=> bs!1228140 (= (and (= (regOne!30374 lt!2163313) (regOne!30374 lt!2163305)) (= (regTwo!30374 lt!2163313) (regTwo!30374 lt!2163305))) (= lambda!268423 lambda!268420))))

(assert (=> bs!1228139 (= (and (= (regOne!30374 lt!2163313) (regOne!30374 r!7292)) (= (regTwo!30374 lt!2163313) (regTwo!30374 r!7292))) (= lambda!268423 lambda!268408))))

(assert (=> bs!1228132 (not (= lambda!268423 lambda!268309))))

(assert (=> b!5295094 true))

(assert (=> b!5295094 true))

(declare-fun e!3291516 () Bool)

(declare-fun call!377423 () Bool)

(assert (=> b!5295094 (= e!3291516 call!377423)))

(declare-fun b!5295095 () Bool)

(declare-fun e!3291517 () Bool)

(declare-fun call!377424 () Bool)

(assert (=> b!5295095 (= e!3291517 call!377424)))

(declare-fun b!5295096 () Bool)

(declare-fun c!918856 () Bool)

(assert (=> b!5295096 (= c!918856 ((_ is ElementMatch!14931) lt!2163313))))

(declare-fun e!3291511 () Bool)

(declare-fun e!3291513 () Bool)

(assert (=> b!5295096 (= e!3291511 e!3291513)))

(declare-fun b!5295097 () Bool)

(declare-fun e!3291514 () Bool)

(declare-fun e!3291515 () Bool)

(assert (=> b!5295097 (= e!3291514 e!3291515)))

(declare-fun res!2245744 () Bool)

(assert (=> b!5295097 (= res!2245744 (matchRSpec!2034 (regOne!30375 lt!2163313) s!2326))))

(assert (=> b!5295097 (=> res!2245744 e!3291515)))

(declare-fun bm!377418 () Bool)

(declare-fun c!918854 () Bool)

(assert (=> bm!377418 (= call!377423 (Exists!2112 (ite c!918854 lambda!268422 lambda!268423)))))

(declare-fun b!5295098 () Bool)

(assert (=> b!5295098 (= e!3291514 e!3291516)))

(assert (=> b!5295098 (= c!918854 ((_ is Star!14931) lt!2163313))))

(declare-fun b!5295099 () Bool)

(declare-fun res!2245742 () Bool)

(declare-fun e!3291512 () Bool)

(assert (=> b!5295099 (=> res!2245742 e!3291512)))

(assert (=> b!5295099 (= res!2245742 call!377424)))

(assert (=> b!5295099 (= e!3291516 e!3291512)))

(declare-fun d!1703167 () Bool)

(declare-fun c!918855 () Bool)

(assert (=> d!1703167 (= c!918855 ((_ is EmptyExpr!14931) lt!2163313))))

(assert (=> d!1703167 (= (matchRSpec!2034 lt!2163313 s!2326) e!3291517)))

(declare-fun b!5295100 () Bool)

(declare-fun c!918853 () Bool)

(assert (=> b!5295100 (= c!918853 ((_ is Union!14931) lt!2163313))))

(assert (=> b!5295100 (= e!3291513 e!3291514)))

(assert (=> b!5295101 (= e!3291512 call!377423)))

(declare-fun b!5295102 () Bool)

(assert (=> b!5295102 (= e!3291515 (matchRSpec!2034 (regTwo!30375 lt!2163313) s!2326))))

(declare-fun b!5295103 () Bool)

(assert (=> b!5295103 (= e!3291517 e!3291511)))

(declare-fun res!2245743 () Bool)

(assert (=> b!5295103 (= res!2245743 (not ((_ is EmptyLang!14931) lt!2163313)))))

(assert (=> b!5295103 (=> (not res!2245743) (not e!3291511))))

(declare-fun bm!377419 () Bool)

(assert (=> bm!377419 (= call!377424 (isEmpty!32927 s!2326))))

(declare-fun b!5295104 () Bool)

(assert (=> b!5295104 (= e!3291513 (= s!2326 (Cons!60970 (c!918549 lt!2163313) Nil!60970)))))

(assert (= (and d!1703167 c!918855) b!5295095))

(assert (= (and d!1703167 (not c!918855)) b!5295103))

(assert (= (and b!5295103 res!2245743) b!5295096))

(assert (= (and b!5295096 c!918856) b!5295104))

(assert (= (and b!5295096 (not c!918856)) b!5295100))

(assert (= (and b!5295100 c!918853) b!5295097))

(assert (= (and b!5295100 (not c!918853)) b!5295098))

(assert (= (and b!5295097 (not res!2245744)) b!5295102))

(assert (= (and b!5295098 c!918854) b!5295099))

(assert (= (and b!5295098 (not c!918854)) b!5295094))

(assert (= (and b!5295099 (not res!2245742)) b!5295101))

(assert (= (or b!5295101 b!5295094) bm!377418))

(assert (= (or b!5295095 b!5295099) bm!377419))

(declare-fun m!6332552 () Bool)

(assert (=> b!5295097 m!6332552))

(declare-fun m!6332554 () Bool)

(assert (=> bm!377418 m!6332554))

(declare-fun m!6332556 () Bool)

(assert (=> b!5295102 m!6332556))

(assert (=> bm!377419 m!6332318))

(assert (=> b!5294113 d!1703167))

(declare-fun bs!1228141 () Bool)

(declare-fun d!1703169 () Bool)

(assert (= bs!1228141 (and d!1703169 d!1703155)))

(declare-fun lambda!268424 () Int)

(assert (=> bs!1228141 (= lambda!268424 lambda!268421)))

(declare-fun bs!1228142 () Bool)

(assert (= bs!1228142 (and d!1703169 d!1703129)))

(assert (=> bs!1228142 (= lambda!268424 lambda!268414)))

(declare-fun bs!1228143 () Bool)

(assert (= bs!1228143 (and d!1703169 d!1703123)))

(assert (=> bs!1228143 (= lambda!268424 lambda!268411)))

(declare-fun bs!1228144 () Bool)

(assert (= bs!1228144 (and d!1703169 d!1703107)))

(assert (=> bs!1228144 (= lambda!268424 lambda!268399)))

(declare-fun bs!1228145 () Bool)

(assert (= bs!1228145 (and d!1703169 d!1703105)))

(assert (=> bs!1228145 (= lambda!268424 lambda!268396)))

(declare-fun b!5295105 () Bool)

(declare-fun e!3291519 () Bool)

(declare-fun e!3291521 () Bool)

(assert (=> b!5295105 (= e!3291519 e!3291521)))

(declare-fun c!918858 () Bool)

(assert (=> b!5295105 (= c!918858 (isEmpty!32924 lt!2163339))))

(assert (=> d!1703169 e!3291519))

(declare-fun res!2245745 () Bool)

(assert (=> d!1703169 (=> (not res!2245745) (not e!3291519))))

(declare-fun lt!2163514 () Regex!14931)

(assert (=> d!1703169 (= res!2245745 (validRegex!6667 lt!2163514))))

(declare-fun e!3291518 () Regex!14931)

(assert (=> d!1703169 (= lt!2163514 e!3291518)))

(declare-fun c!918859 () Bool)

(declare-fun e!3291520 () Bool)

(assert (=> d!1703169 (= c!918859 e!3291520)))

(declare-fun res!2245746 () Bool)

(assert (=> d!1703169 (=> (not res!2245746) (not e!3291520))))

(assert (=> d!1703169 (= res!2245746 ((_ is Cons!60968) lt!2163339))))

(assert (=> d!1703169 (forall!14343 lt!2163339 lambda!268424)))

(assert (=> d!1703169 (= (generalisedConcat!600 lt!2163339) lt!2163514)))

(declare-fun b!5295106 () Bool)

(assert (=> b!5295106 (= e!3291521 (isEmptyExpr!849 lt!2163514))))

(declare-fun b!5295107 () Bool)

(assert (=> b!5295107 (= e!3291520 (isEmpty!32924 (t!374297 lt!2163339)))))

(declare-fun b!5295108 () Bool)

(declare-fun e!3291523 () Bool)

(assert (=> b!5295108 (= e!3291523 (isConcat!372 lt!2163514))))

(declare-fun b!5295109 () Bool)

(assert (=> b!5295109 (= e!3291521 e!3291523)))

(declare-fun c!918857 () Bool)

(assert (=> b!5295109 (= c!918857 (isEmpty!32924 (tail!10444 lt!2163339)))))

(declare-fun b!5295110 () Bool)

(declare-fun e!3291522 () Regex!14931)

(assert (=> b!5295110 (= e!3291518 e!3291522)))

(declare-fun c!918860 () Bool)

(assert (=> b!5295110 (= c!918860 ((_ is Cons!60968) lt!2163339))))

(declare-fun b!5295111 () Bool)

(assert (=> b!5295111 (= e!3291523 (= lt!2163514 (head!11347 lt!2163339)))))

(declare-fun b!5295112 () Bool)

(assert (=> b!5295112 (= e!3291518 (h!67416 lt!2163339))))

(declare-fun b!5295113 () Bool)

(assert (=> b!5295113 (= e!3291522 EmptyExpr!14931)))

(declare-fun b!5295114 () Bool)

(assert (=> b!5295114 (= e!3291522 (Concat!23776 (h!67416 lt!2163339) (generalisedConcat!600 (t!374297 lt!2163339))))))

(assert (= (and d!1703169 res!2245746) b!5295107))

(assert (= (and d!1703169 c!918859) b!5295112))

(assert (= (and d!1703169 (not c!918859)) b!5295110))

(assert (= (and b!5295110 c!918860) b!5295114))

(assert (= (and b!5295110 (not c!918860)) b!5295113))

(assert (= (and d!1703169 res!2245745) b!5295105))

(assert (= (and b!5295105 c!918858) b!5295106))

(assert (= (and b!5295105 (not c!918858)) b!5295109))

(assert (= (and b!5295109 c!918857) b!5295111))

(assert (= (and b!5295109 (not c!918857)) b!5295108))

(declare-fun m!6332558 () Bool)

(assert (=> b!5295108 m!6332558))

(declare-fun m!6332560 () Bool)

(assert (=> b!5295109 m!6332560))

(assert (=> b!5295109 m!6332560))

(declare-fun m!6332562 () Bool)

(assert (=> b!5295109 m!6332562))

(declare-fun m!6332564 () Bool)

(assert (=> b!5295106 m!6332564))

(declare-fun m!6332566 () Bool)

(assert (=> b!5295114 m!6332566))

(declare-fun m!6332568 () Bool)

(assert (=> b!5295107 m!6332568))

(declare-fun m!6332570 () Bool)

(assert (=> d!1703169 m!6332570))

(declare-fun m!6332572 () Bool)

(assert (=> d!1703169 m!6332572))

(declare-fun m!6332574 () Bool)

(assert (=> b!5295111 m!6332574))

(declare-fun m!6332576 () Bool)

(assert (=> b!5295105 m!6332576))

(assert (=> b!5294113 d!1703169))

(declare-fun d!1703171 () Bool)

(assert (=> d!1703171 (= (Exists!2112 lambda!268314) (choose!39550 lambda!268314))))

(declare-fun bs!1228146 () Bool)

(assert (= bs!1228146 d!1703171))

(declare-fun m!6332578 () Bool)

(assert (=> bs!1228146 m!6332578))

(assert (=> b!5294113 d!1703171))

(declare-fun bs!1228147 () Bool)

(declare-fun d!1703173 () Bool)

(assert (= bs!1228147 (and d!1703173 d!1703145)))

(declare-fun lambda!268425 () Int)

(assert (=> bs!1228147 (= (and (= (regTwo!30374 (regOne!30374 r!7292)) (regOne!30374 (regOne!30374 r!7292))) (= lt!2163337 lt!2163305)) (= lambda!268425 lambda!268415))))

(declare-fun bs!1228148 () Bool)

(assert (= bs!1228148 (and d!1703173 b!5294113)))

(assert (=> bs!1228148 (= (and (= (regTwo!30374 (regOne!30374 r!7292)) (regOne!30374 (regOne!30374 r!7292))) (= lt!2163337 lt!2163305)) (= lambda!268425 lambda!268312))))

(assert (=> bs!1228148 (not (= lambda!268425 lambda!268313))))

(declare-fun bs!1228149 () Bool)

(assert (= bs!1228149 (and d!1703173 b!5294859)))

(assert (=> bs!1228149 (not (= lambda!268425 lambda!268392))))

(declare-fun bs!1228150 () Bool)

(assert (= bs!1228150 (and d!1703173 b!5294116)))

(assert (=> bs!1228150 (not (= lambda!268425 lambda!268310))))

(declare-fun bs!1228151 () Bool)

(assert (= bs!1228151 (and d!1703173 d!1703149)))

(assert (=> bs!1228151 (= (and (= (regTwo!30374 (regOne!30374 r!7292)) (regOne!30374 (regOne!30374 r!7292))) (= lt!2163337 lt!2163305)) (= lambda!268425 lambda!268417))))

(declare-fun bs!1228152 () Bool)

(assert (= bs!1228152 (and d!1703173 d!1703115)))

(assert (=> bs!1228152 (= (and (= (regTwo!30374 (regOne!30374 r!7292)) (regOne!30374 r!7292)) (= lt!2163337 (regTwo!30374 r!7292))) (= lambda!268425 lambda!268402))))

(declare-fun bs!1228153 () Bool)

(assert (= bs!1228153 (and d!1703173 b!5295101)))

(assert (=> bs!1228153 (not (= lambda!268425 lambda!268422))))

(assert (=> bs!1228151 (not (= lambda!268425 lambda!268418))))

(declare-fun bs!1228154 () Bool)

(assert (= bs!1228154 (and d!1703173 b!5294852)))

(assert (=> bs!1228154 (not (= lambda!268425 lambda!268393))))

(assert (=> bs!1228148 (not (= lambda!268425 lambda!268315))))

(declare-fun bs!1228155 () Bool)

(assert (= bs!1228155 (and d!1703173 d!1703147)))

(assert (=> bs!1228155 (= lambda!268425 lambda!268416)))

(declare-fun bs!1228156 () Bool)

(assert (= bs!1228156 (and d!1703173 b!5295057)))

(assert (=> bs!1228156 (not (= lambda!268425 lambda!268419))))

(assert (=> bs!1228148 (= lambda!268425 lambda!268314)))

(declare-fun bs!1228157 () Bool)

(assert (= bs!1228157 (and d!1703173 b!5295094)))

(assert (=> bs!1228157 (not (= lambda!268425 lambda!268423))))

(declare-fun bs!1228158 () Bool)

(assert (= bs!1228158 (and d!1703173 d!1703117)))

(assert (=> bs!1228158 (= (and (= (regTwo!30374 (regOne!30374 r!7292)) (regOne!30374 r!7292)) (= lt!2163337 (regTwo!30374 r!7292))) (= lambda!268425 lambda!268407))))

(declare-fun bs!1228159 () Bool)

(assert (= bs!1228159 (and d!1703173 b!5295050)))

(assert (=> bs!1228159 (not (= lambda!268425 lambda!268420))))

(assert (=> bs!1228158 (not (= lambda!268425 lambda!268408))))

(assert (=> bs!1228150 (= (and (= (regTwo!30374 (regOne!30374 r!7292)) (regOne!30374 r!7292)) (= lt!2163337 (regTwo!30374 r!7292))) (= lambda!268425 lambda!268309))))

(assert (=> d!1703173 true))

(assert (=> d!1703173 true))

(assert (=> d!1703173 true))

(declare-fun lambda!268426 () Int)

(assert (=> bs!1228147 (not (= lambda!268426 lambda!268415))))

(assert (=> bs!1228148 (not (= lambda!268426 lambda!268312))))

(assert (=> bs!1228148 (= (and (= (regTwo!30374 (regOne!30374 r!7292)) (regOne!30374 (regOne!30374 r!7292))) (= lt!2163337 lt!2163305)) (= lambda!268426 lambda!268313))))

(assert (=> bs!1228149 (not (= lambda!268426 lambda!268392))))

(assert (=> bs!1228150 (= (and (= (regTwo!30374 (regOne!30374 r!7292)) (regOne!30374 r!7292)) (= lt!2163337 (regTwo!30374 r!7292))) (= lambda!268426 lambda!268310))))

(assert (=> bs!1228151 (not (= lambda!268426 lambda!268417))))

(assert (=> bs!1228152 (not (= lambda!268426 lambda!268402))))

(assert (=> bs!1228153 (not (= lambda!268426 lambda!268422))))

(assert (=> bs!1228151 (= (and (= (regTwo!30374 (regOne!30374 r!7292)) (regOne!30374 (regOne!30374 r!7292))) (= lt!2163337 lt!2163305)) (= lambda!268426 lambda!268418))))

(assert (=> bs!1228154 (= (and (= (regTwo!30374 (regOne!30374 r!7292)) (regOne!30374 r!7292)) (= lt!2163337 (regTwo!30374 r!7292))) (= lambda!268426 lambda!268393))))

(declare-fun bs!1228160 () Bool)

(assert (= bs!1228160 d!1703173))

(assert (=> bs!1228160 (not (= lambda!268426 lambda!268425))))

(assert (=> bs!1228148 (= lambda!268426 lambda!268315)))

(assert (=> bs!1228155 (not (= lambda!268426 lambda!268416))))

(assert (=> bs!1228156 (not (= lambda!268426 lambda!268419))))

(assert (=> bs!1228148 (not (= lambda!268426 lambda!268314))))

(assert (=> bs!1228157 (= (and (= (regTwo!30374 (regOne!30374 r!7292)) (regOne!30374 lt!2163313)) (= lt!2163337 (regTwo!30374 lt!2163313))) (= lambda!268426 lambda!268423))))

(assert (=> bs!1228158 (not (= lambda!268426 lambda!268407))))

(assert (=> bs!1228159 (= (and (= (regTwo!30374 (regOne!30374 r!7292)) (regOne!30374 lt!2163305)) (= lt!2163337 (regTwo!30374 lt!2163305))) (= lambda!268426 lambda!268420))))

(assert (=> bs!1228158 (= (and (= (regTwo!30374 (regOne!30374 r!7292)) (regOne!30374 r!7292)) (= lt!2163337 (regTwo!30374 r!7292))) (= lambda!268426 lambda!268408))))

(assert (=> bs!1228150 (not (= lambda!268426 lambda!268309))))

(assert (=> d!1703173 true))

(assert (=> d!1703173 true))

(assert (=> d!1703173 true))

(assert (=> d!1703173 (= (Exists!2112 lambda!268425) (Exists!2112 lambda!268426))))

(declare-fun lt!2163515 () Unit!153242)

(assert (=> d!1703173 (= lt!2163515 (choose!39552 (regTwo!30374 (regOne!30374 r!7292)) lt!2163337 s!2326))))

(assert (=> d!1703173 (validRegex!6667 (regTwo!30374 (regOne!30374 r!7292)))))

(assert (=> d!1703173 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!766 (regTwo!30374 (regOne!30374 r!7292)) lt!2163337 s!2326) lt!2163515)))

(declare-fun m!6332580 () Bool)

(assert (=> bs!1228160 m!6332580))

(declare-fun m!6332582 () Bool)

(assert (=> bs!1228160 m!6332582))

(declare-fun m!6332584 () Bool)

(assert (=> bs!1228160 m!6332584))

(assert (=> bs!1228160 m!6332474))

(assert (=> b!5294113 d!1703173))

(declare-fun d!1703175 () Bool)

(assert (=> d!1703175 (= (Exists!2112 lambda!268313) (choose!39550 lambda!268313))))

(declare-fun bs!1228161 () Bool)

(assert (= bs!1228161 d!1703175))

(declare-fun m!6332586 () Bool)

(assert (=> bs!1228161 m!6332586))

(assert (=> b!5294113 d!1703175))

(declare-fun d!1703177 () Bool)

(declare-fun c!918861 () Bool)

(assert (=> d!1703177 (= c!918861 (isEmpty!32927 s!2326))))

(declare-fun e!3291524 () Bool)

(assert (=> d!1703177 (= (matchZipper!1175 lt!2163298 s!2326) e!3291524)))

(declare-fun b!5295115 () Bool)

(assert (=> b!5295115 (= e!3291524 (nullableZipper!1314 lt!2163298))))

(declare-fun b!5295116 () Bool)

(assert (=> b!5295116 (= e!3291524 (matchZipper!1175 (derivationStepZipper!1174 lt!2163298 (head!11346 s!2326)) (tail!10443 s!2326)))))

(assert (= (and d!1703177 c!918861) b!5295115))

(assert (= (and d!1703177 (not c!918861)) b!5295116))

(assert (=> d!1703177 m!6332318))

(declare-fun m!6332588 () Bool)

(assert (=> b!5295115 m!6332588))

(assert (=> b!5295116 m!6332324))

(assert (=> b!5295116 m!6332324))

(declare-fun m!6332590 () Bool)

(assert (=> b!5295116 m!6332590))

(assert (=> b!5295116 m!6332320))

(assert (=> b!5295116 m!6332590))

(assert (=> b!5295116 m!6332320))

(declare-fun m!6332592 () Bool)

(assert (=> b!5295116 m!6332592))

(assert (=> b!5294113 d!1703177))

(declare-fun d!1703179 () Bool)

(assert (=> d!1703179 (= (nullable!5100 (h!67416 (exprs!4815 (h!67417 zl!343)))) (nullableFct!1466 (h!67416 (exprs!4815 (h!67417 zl!343)))))))

(declare-fun bs!1228162 () Bool)

(assert (= bs!1228162 d!1703179))

(declare-fun m!6332594 () Bool)

(assert (=> bs!1228162 m!6332594))

(assert (=> b!5294133 d!1703179))

(declare-fun b!5295117 () Bool)

(declare-fun e!3291525 () Bool)

(assert (=> b!5295117 (= e!3291525 (nullable!5100 (h!67416 (exprs!4815 lt!2163304))))))

(declare-fun b!5295118 () Bool)

(declare-fun e!3291527 () (InoxSet Context!8630))

(declare-fun call!377425 () (InoxSet Context!8630))

(assert (=> b!5295118 (= e!3291527 ((_ map or) call!377425 (derivationStepZipperUp!303 (Context!8631 (t!374297 (exprs!4815 lt!2163304))) (h!67418 s!2326))))))

(declare-fun d!1703181 () Bool)

(declare-fun c!918863 () Bool)

(assert (=> d!1703181 (= c!918863 e!3291525)))

(declare-fun res!2245747 () Bool)

(assert (=> d!1703181 (=> (not res!2245747) (not e!3291525))))

(assert (=> d!1703181 (= res!2245747 ((_ is Cons!60968) (exprs!4815 lt!2163304)))))

(assert (=> d!1703181 (= (derivationStepZipperUp!303 lt!2163304 (h!67418 s!2326)) e!3291527)))

(declare-fun b!5295119 () Bool)

(declare-fun e!3291526 () (InoxSet Context!8630))

(assert (=> b!5295119 (= e!3291526 ((as const (Array Context!8630 Bool)) false))))

(declare-fun bm!377420 () Bool)

(assert (=> bm!377420 (= call!377425 (derivationStepZipperDown!379 (h!67416 (exprs!4815 lt!2163304)) (Context!8631 (t!374297 (exprs!4815 lt!2163304))) (h!67418 s!2326)))))

(declare-fun b!5295120 () Bool)

(assert (=> b!5295120 (= e!3291527 e!3291526)))

(declare-fun c!918862 () Bool)

(assert (=> b!5295120 (= c!918862 ((_ is Cons!60968) (exprs!4815 lt!2163304)))))

(declare-fun b!5295121 () Bool)

(assert (=> b!5295121 (= e!3291526 call!377425)))

(assert (= (and d!1703181 res!2245747) b!5295117))

(assert (= (and d!1703181 c!918863) b!5295118))

(assert (= (and d!1703181 (not c!918863)) b!5295120))

(assert (= (and b!5295120 c!918862) b!5295121))

(assert (= (and b!5295120 (not c!918862)) b!5295119))

(assert (= (or b!5295118 b!5295121) bm!377420))

(declare-fun m!6332596 () Bool)

(assert (=> b!5295117 m!6332596))

(declare-fun m!6332598 () Bool)

(assert (=> b!5295118 m!6332598))

(declare-fun m!6332600 () Bool)

(assert (=> bm!377420 m!6332600))

(assert (=> b!5294133 d!1703181))

(declare-fun b!5295122 () Bool)

(declare-fun e!3291528 () Bool)

(assert (=> b!5295122 (= e!3291528 (nullable!5100 (h!67416 (exprs!4815 (h!67417 zl!343)))))))

(declare-fun e!3291530 () (InoxSet Context!8630))

(declare-fun call!377426 () (InoxSet Context!8630))

(declare-fun b!5295123 () Bool)

(assert (=> b!5295123 (= e!3291530 ((_ map or) call!377426 (derivationStepZipperUp!303 (Context!8631 (t!374297 (exprs!4815 (h!67417 zl!343)))) (h!67418 s!2326))))))

(declare-fun d!1703183 () Bool)

(declare-fun c!918865 () Bool)

(assert (=> d!1703183 (= c!918865 e!3291528)))

(declare-fun res!2245748 () Bool)

(assert (=> d!1703183 (=> (not res!2245748) (not e!3291528))))

(assert (=> d!1703183 (= res!2245748 ((_ is Cons!60968) (exprs!4815 (h!67417 zl!343))))))

(assert (=> d!1703183 (= (derivationStepZipperUp!303 (h!67417 zl!343) (h!67418 s!2326)) e!3291530)))

(declare-fun b!5295124 () Bool)

(declare-fun e!3291529 () (InoxSet Context!8630))

(assert (=> b!5295124 (= e!3291529 ((as const (Array Context!8630 Bool)) false))))

(declare-fun bm!377421 () Bool)

(assert (=> bm!377421 (= call!377426 (derivationStepZipperDown!379 (h!67416 (exprs!4815 (h!67417 zl!343))) (Context!8631 (t!374297 (exprs!4815 (h!67417 zl!343)))) (h!67418 s!2326)))))

(declare-fun b!5295125 () Bool)

(assert (=> b!5295125 (= e!3291530 e!3291529)))

(declare-fun c!918864 () Bool)

(assert (=> b!5295125 (= c!918864 ((_ is Cons!60968) (exprs!4815 (h!67417 zl!343))))))

(declare-fun b!5295126 () Bool)

(assert (=> b!5295126 (= e!3291529 call!377426)))

(assert (= (and d!1703183 res!2245748) b!5295122))

(assert (= (and d!1703183 c!918865) b!5295123))

(assert (= (and d!1703183 (not c!918865)) b!5295125))

(assert (= (and b!5295125 c!918864) b!5295126))

(assert (= (and b!5295125 (not c!918864)) b!5295124))

(assert (= (or b!5295123 b!5295126) bm!377421))

(assert (=> b!5295122 m!6331602))

(declare-fun m!6332602 () Bool)

(assert (=> b!5295123 m!6332602))

(declare-fun m!6332604 () Bool)

(assert (=> bm!377421 m!6332604))

(assert (=> b!5294133 d!1703183))

(declare-fun bm!377422 () Bool)

(declare-fun call!377427 () (InoxSet Context!8630))

(declare-fun call!377430 () (InoxSet Context!8630))

(assert (=> bm!377422 (= call!377427 call!377430)))

(declare-fun b!5295127 () Bool)

(declare-fun e!3291532 () (InoxSet Context!8630))

(declare-fun call!377428 () (InoxSet Context!8630))

(assert (=> b!5295127 (= e!3291532 ((_ map or) call!377428 call!377430))))

(declare-fun bm!377423 () Bool)

(declare-fun call!377429 () (InoxSet Context!8630))

(assert (=> bm!377423 (= call!377430 call!377429)))

(declare-fun b!5295128 () Bool)

(declare-fun e!3291531 () Bool)

(assert (=> b!5295128 (= e!3291531 (nullable!5100 (regOne!30374 (h!67416 (exprs!4815 (h!67417 zl!343))))))))

(declare-fun b!5295129 () Bool)

(declare-fun e!3291536 () (InoxSet Context!8630))

(assert (=> b!5295129 (= e!3291536 (store ((as const (Array Context!8630 Bool)) false) lt!2163304 true))))

(declare-fun call!377431 () List!61092)

(declare-fun bm!377424 () Bool)

(declare-fun c!918869 () Bool)

(declare-fun c!918868 () Bool)

(assert (=> bm!377424 (= call!377431 ($colon$colon!1364 (exprs!4815 lt!2163304) (ite (or c!918869 c!918868) (regTwo!30374 (h!67416 (exprs!4815 (h!67417 zl!343)))) (h!67416 (exprs!4815 (h!67417 zl!343))))))))

(declare-fun b!5295130 () Bool)

(declare-fun e!3291534 () (InoxSet Context!8630))

(assert (=> b!5295130 (= e!3291534 ((as const (Array Context!8630 Bool)) false))))

(declare-fun bm!377426 () Bool)

(declare-fun call!377432 () List!61092)

(assert (=> bm!377426 (= call!377432 call!377431)))

(declare-fun b!5295131 () Bool)

(declare-fun e!3291533 () (InoxSet Context!8630))

(assert (=> b!5295131 (= e!3291536 e!3291533)))

(declare-fun c!918866 () Bool)

(assert (=> b!5295131 (= c!918866 ((_ is Union!14931) (h!67416 (exprs!4815 (h!67417 zl!343)))))))

(declare-fun b!5295132 () Bool)

(declare-fun c!918870 () Bool)

(assert (=> b!5295132 (= c!918870 ((_ is Star!14931) (h!67416 (exprs!4815 (h!67417 zl!343)))))))

(declare-fun e!3291535 () (InoxSet Context!8630))

(assert (=> b!5295132 (= e!3291535 e!3291534)))

(declare-fun b!5295133 () Bool)

(assert (=> b!5295133 (= e!3291532 e!3291535)))

(assert (=> b!5295133 (= c!918868 ((_ is Concat!23776) (h!67416 (exprs!4815 (h!67417 zl!343)))))))

(declare-fun b!5295134 () Bool)

(assert (=> b!5295134 (= c!918869 e!3291531)))

(declare-fun res!2245749 () Bool)

(assert (=> b!5295134 (=> (not res!2245749) (not e!3291531))))

(assert (=> b!5295134 (= res!2245749 ((_ is Concat!23776) (h!67416 (exprs!4815 (h!67417 zl!343)))))))

(assert (=> b!5295134 (= e!3291533 e!3291532)))

(declare-fun b!5295135 () Bool)

(assert (=> b!5295135 (= e!3291534 call!377427)))

(declare-fun b!5295136 () Bool)

(assert (=> b!5295136 (= e!3291533 ((_ map or) call!377428 call!377429))))

(declare-fun bm!377425 () Bool)

(assert (=> bm!377425 (= call!377428 (derivationStepZipperDown!379 (ite c!918866 (regOne!30375 (h!67416 (exprs!4815 (h!67417 zl!343)))) (regOne!30374 (h!67416 (exprs!4815 (h!67417 zl!343))))) (ite c!918866 lt!2163304 (Context!8631 call!377431)) (h!67418 s!2326)))))

(declare-fun d!1703185 () Bool)

(declare-fun c!918867 () Bool)

(assert (=> d!1703185 (= c!918867 (and ((_ is ElementMatch!14931) (h!67416 (exprs!4815 (h!67417 zl!343)))) (= (c!918549 (h!67416 (exprs!4815 (h!67417 zl!343)))) (h!67418 s!2326))))))

(assert (=> d!1703185 (= (derivationStepZipperDown!379 (h!67416 (exprs!4815 (h!67417 zl!343))) lt!2163304 (h!67418 s!2326)) e!3291536)))

(declare-fun b!5295137 () Bool)

(assert (=> b!5295137 (= e!3291535 call!377427)))

(declare-fun bm!377427 () Bool)

(assert (=> bm!377427 (= call!377429 (derivationStepZipperDown!379 (ite c!918866 (regTwo!30375 (h!67416 (exprs!4815 (h!67417 zl!343)))) (ite c!918869 (regTwo!30374 (h!67416 (exprs!4815 (h!67417 zl!343)))) (ite c!918868 (regOne!30374 (h!67416 (exprs!4815 (h!67417 zl!343)))) (reg!15260 (h!67416 (exprs!4815 (h!67417 zl!343))))))) (ite (or c!918866 c!918869) lt!2163304 (Context!8631 call!377432)) (h!67418 s!2326)))))

(assert (= (and d!1703185 c!918867) b!5295129))

(assert (= (and d!1703185 (not c!918867)) b!5295131))

(assert (= (and b!5295131 c!918866) b!5295136))

(assert (= (and b!5295131 (not c!918866)) b!5295134))

(assert (= (and b!5295134 res!2245749) b!5295128))

(assert (= (and b!5295134 c!918869) b!5295127))

(assert (= (and b!5295134 (not c!918869)) b!5295133))

(assert (= (and b!5295133 c!918868) b!5295137))

(assert (= (and b!5295133 (not c!918868)) b!5295132))

(assert (= (and b!5295132 c!918870) b!5295135))

(assert (= (and b!5295132 (not c!918870)) b!5295130))

(assert (= (or b!5295137 b!5295135) bm!377426))

(assert (= (or b!5295137 b!5295135) bm!377422))

(assert (= (or b!5295127 bm!377426) bm!377424))

(assert (= (or b!5295127 bm!377422) bm!377423))

(assert (= (or b!5295136 bm!377423) bm!377427))

(assert (= (or b!5295136 b!5295127) bm!377425))

(declare-fun m!6332606 () Bool)

(assert (=> bm!377427 m!6332606))

(declare-fun m!6332608 () Bool)

(assert (=> b!5295128 m!6332608))

(declare-fun m!6332610 () Bool)

(assert (=> bm!377425 m!6332610))

(assert (=> b!5295129 m!6332176))

(declare-fun m!6332612 () Bool)

(assert (=> bm!377424 m!6332612))

(assert (=> b!5294133 d!1703185))

(declare-fun d!1703187 () Bool)

(assert (=> d!1703187 (= (flatMap!658 z!1189 lambda!268311) (dynLambda!24109 lambda!268311 (h!67417 zl!343)))))

(declare-fun lt!2163516 () Unit!153242)

(assert (=> d!1703187 (= lt!2163516 (choose!39547 z!1189 (h!67417 zl!343) lambda!268311))))

(assert (=> d!1703187 (= z!1189 (store ((as const (Array Context!8630 Bool)) false) (h!67417 zl!343) true))))

(assert (=> d!1703187 (= (lemmaFlatMapOnSingletonSet!190 z!1189 (h!67417 zl!343) lambda!268311) lt!2163516)))

(declare-fun b_lambda!204147 () Bool)

(assert (=> (not b_lambda!204147) (not d!1703187)))

(declare-fun bs!1228163 () Bool)

(assert (= bs!1228163 d!1703187))

(assert (=> bs!1228163 m!6331600))

(declare-fun m!6332614 () Bool)

(assert (=> bs!1228163 m!6332614))

(declare-fun m!6332616 () Bool)

(assert (=> bs!1228163 m!6332616))

(declare-fun m!6332618 () Bool)

(assert (=> bs!1228163 m!6332618))

(assert (=> b!5294133 d!1703187))

(declare-fun d!1703189 () Bool)

(assert (=> d!1703189 (= (flatMap!658 z!1189 lambda!268311) (choose!39548 z!1189 lambda!268311))))

(declare-fun bs!1228164 () Bool)

(assert (= bs!1228164 d!1703189))

(declare-fun m!6332620 () Bool)

(assert (=> bs!1228164 m!6332620))

(assert (=> b!5294133 d!1703189))

(declare-fun b!5295138 () Bool)

(declare-fun e!3291537 () Bool)

(assert (=> b!5295138 (= e!3291537 (nullable!5100 (h!67416 (exprs!4815 (Context!8631 (Cons!60968 (h!67416 (exprs!4815 (h!67417 zl!343))) (t!374297 (exprs!4815 (h!67417 zl!343)))))))))))

(declare-fun call!377433 () (InoxSet Context!8630))

(declare-fun e!3291539 () (InoxSet Context!8630))

(declare-fun b!5295139 () Bool)

(assert (=> b!5295139 (= e!3291539 ((_ map or) call!377433 (derivationStepZipperUp!303 (Context!8631 (t!374297 (exprs!4815 (Context!8631 (Cons!60968 (h!67416 (exprs!4815 (h!67417 zl!343))) (t!374297 (exprs!4815 (h!67417 zl!343)))))))) (h!67418 s!2326))))))

(declare-fun d!1703191 () Bool)

(declare-fun c!918872 () Bool)

(assert (=> d!1703191 (= c!918872 e!3291537)))

(declare-fun res!2245750 () Bool)

(assert (=> d!1703191 (=> (not res!2245750) (not e!3291537))))

(assert (=> d!1703191 (= res!2245750 ((_ is Cons!60968) (exprs!4815 (Context!8631 (Cons!60968 (h!67416 (exprs!4815 (h!67417 zl!343))) (t!374297 (exprs!4815 (h!67417 zl!343))))))))))

(assert (=> d!1703191 (= (derivationStepZipperUp!303 (Context!8631 (Cons!60968 (h!67416 (exprs!4815 (h!67417 zl!343))) (t!374297 (exprs!4815 (h!67417 zl!343))))) (h!67418 s!2326)) e!3291539)))

(declare-fun b!5295140 () Bool)

(declare-fun e!3291538 () (InoxSet Context!8630))

(assert (=> b!5295140 (= e!3291538 ((as const (Array Context!8630 Bool)) false))))

(declare-fun bm!377428 () Bool)

(assert (=> bm!377428 (= call!377433 (derivationStepZipperDown!379 (h!67416 (exprs!4815 (Context!8631 (Cons!60968 (h!67416 (exprs!4815 (h!67417 zl!343))) (t!374297 (exprs!4815 (h!67417 zl!343))))))) (Context!8631 (t!374297 (exprs!4815 (Context!8631 (Cons!60968 (h!67416 (exprs!4815 (h!67417 zl!343))) (t!374297 (exprs!4815 (h!67417 zl!343)))))))) (h!67418 s!2326)))))

(declare-fun b!5295141 () Bool)

(assert (=> b!5295141 (= e!3291539 e!3291538)))

(declare-fun c!918871 () Bool)

(assert (=> b!5295141 (= c!918871 ((_ is Cons!60968) (exprs!4815 (Context!8631 (Cons!60968 (h!67416 (exprs!4815 (h!67417 zl!343))) (t!374297 (exprs!4815 (h!67417 zl!343))))))))))

(declare-fun b!5295142 () Bool)

(assert (=> b!5295142 (= e!3291538 call!377433)))

(assert (= (and d!1703191 res!2245750) b!5295138))

(assert (= (and d!1703191 c!918872) b!5295139))

(assert (= (and d!1703191 (not c!918872)) b!5295141))

(assert (= (and b!5295141 c!918871) b!5295142))

(assert (= (and b!5295141 (not c!918871)) b!5295140))

(assert (= (or b!5295139 b!5295142) bm!377428))

(declare-fun m!6332622 () Bool)

(assert (=> b!5295138 m!6332622))

(declare-fun m!6332624 () Bool)

(assert (=> b!5295139 m!6332624))

(declare-fun m!6332626 () Bool)

(assert (=> bm!377428 m!6332626))

(assert (=> b!5294133 d!1703191))

(declare-fun e!3291540 () Bool)

(declare-fun d!1703193 () Bool)

(assert (=> d!1703193 (= (matchZipper!1175 ((_ map or) lt!2163320 lt!2163301) (t!374299 s!2326)) e!3291540)))

(declare-fun res!2245751 () Bool)

(assert (=> d!1703193 (=> res!2245751 e!3291540)))

(assert (=> d!1703193 (= res!2245751 (matchZipper!1175 lt!2163320 (t!374299 s!2326)))))

(declare-fun lt!2163517 () Unit!153242)

(assert (=> d!1703193 (= lt!2163517 (choose!39546 lt!2163320 lt!2163301 (t!374299 s!2326)))))

(assert (=> d!1703193 (= (lemmaZipperConcatMatchesSameAsBothZippers!168 lt!2163320 lt!2163301 (t!374299 s!2326)) lt!2163517)))

(declare-fun b!5295143 () Bool)

(assert (=> b!5295143 (= e!3291540 (matchZipper!1175 lt!2163301 (t!374299 s!2326)))))

(assert (= (and d!1703193 (not res!2245751)) b!5295143))

(assert (=> d!1703193 m!6331586))

(assert (=> d!1703193 m!6331520))

(declare-fun m!6332628 () Bool)

(assert (=> d!1703193 m!6332628))

(assert (=> b!5295143 m!6331616))

(assert (=> b!5294134 d!1703193))

(assert (=> b!5294134 d!1703081))

(declare-fun d!1703195 () Bool)

(declare-fun c!918873 () Bool)

(assert (=> d!1703195 (= c!918873 (isEmpty!32927 (t!374299 s!2326)))))

(declare-fun e!3291541 () Bool)

(assert (=> d!1703195 (= (matchZipper!1175 ((_ map or) lt!2163320 lt!2163301) (t!374299 s!2326)) e!3291541)))

(declare-fun b!5295144 () Bool)

(assert (=> b!5295144 (= e!3291541 (nullableZipper!1314 ((_ map or) lt!2163320 lt!2163301)))))

(declare-fun b!5295145 () Bool)

(assert (=> b!5295145 (= e!3291541 (matchZipper!1175 (derivationStepZipper!1174 ((_ map or) lt!2163320 lt!2163301) (head!11346 (t!374299 s!2326))) (tail!10443 (t!374299 s!2326))))))

(assert (= (and d!1703195 c!918873) b!5295144))

(assert (= (and d!1703195 (not c!918873)) b!5295145))

(assert (=> d!1703195 m!6332202))

(declare-fun m!6332630 () Bool)

(assert (=> b!5295144 m!6332630))

(assert (=> b!5295145 m!6332206))

(assert (=> b!5295145 m!6332206))

(declare-fun m!6332632 () Bool)

(assert (=> b!5295145 m!6332632))

(assert (=> b!5295145 m!6332210))

(assert (=> b!5295145 m!6332632))

(assert (=> b!5295145 m!6332210))

(declare-fun m!6332634 () Bool)

(assert (=> b!5295145 m!6332634))

(assert (=> b!5294134 d!1703195))

(assert (=> b!5294112 d!1703103))

(declare-fun bs!1228165 () Bool)

(declare-fun d!1703197 () Bool)

(assert (= bs!1228165 (and d!1703197 d!1703155)))

(declare-fun lambda!268427 () Int)

(assert (=> bs!1228165 (= lambda!268427 lambda!268421)))

(declare-fun bs!1228166 () Bool)

(assert (= bs!1228166 (and d!1703197 d!1703129)))

(assert (=> bs!1228166 (= lambda!268427 lambda!268414)))

(declare-fun bs!1228167 () Bool)

(assert (= bs!1228167 (and d!1703197 d!1703123)))

(assert (=> bs!1228167 (= lambda!268427 lambda!268411)))

(declare-fun bs!1228168 () Bool)

(assert (= bs!1228168 (and d!1703197 d!1703169)))

(assert (=> bs!1228168 (= lambda!268427 lambda!268424)))

(declare-fun bs!1228169 () Bool)

(assert (= bs!1228169 (and d!1703197 d!1703107)))

(assert (=> bs!1228169 (= lambda!268427 lambda!268399)))

(declare-fun bs!1228170 () Bool)

(assert (= bs!1228170 (and d!1703197 d!1703105)))

(assert (=> bs!1228170 (= lambda!268427 lambda!268396)))

(assert (=> d!1703197 (= (inv!80574 setElem!33989) (forall!14343 (exprs!4815 setElem!33989) lambda!268427))))

(declare-fun bs!1228171 () Bool)

(assert (= bs!1228171 d!1703197))

(declare-fun m!6332636 () Bool)

(assert (=> bs!1228171 m!6332636))

(assert (=> setNonEmpty!33989 d!1703197))

(declare-fun bs!1228172 () Bool)

(declare-fun d!1703199 () Bool)

(assert (= bs!1228172 (and d!1703199 d!1703155)))

(declare-fun lambda!268428 () Int)

(assert (=> bs!1228172 (= lambda!268428 lambda!268421)))

(declare-fun bs!1228173 () Bool)

(assert (= bs!1228173 (and d!1703199 d!1703129)))

(assert (=> bs!1228173 (= lambda!268428 lambda!268414)))

(declare-fun bs!1228174 () Bool)

(assert (= bs!1228174 (and d!1703199 d!1703123)))

(assert (=> bs!1228174 (= lambda!268428 lambda!268411)))

(declare-fun bs!1228175 () Bool)

(assert (= bs!1228175 (and d!1703199 d!1703169)))

(assert (=> bs!1228175 (= lambda!268428 lambda!268424)))

(declare-fun bs!1228176 () Bool)

(assert (= bs!1228176 (and d!1703199 d!1703197)))

(assert (=> bs!1228176 (= lambda!268428 lambda!268427)))

(declare-fun bs!1228177 () Bool)

(assert (= bs!1228177 (and d!1703199 d!1703107)))

(assert (=> bs!1228177 (= lambda!268428 lambda!268399)))

(declare-fun bs!1228178 () Bool)

(assert (= bs!1228178 (and d!1703199 d!1703105)))

(assert (=> bs!1228178 (= lambda!268428 lambda!268396)))

(declare-fun b!5295146 () Bool)

(declare-fun e!3291543 () Bool)

(declare-fun e!3291545 () Bool)

(assert (=> b!5295146 (= e!3291543 e!3291545)))

(declare-fun c!918875 () Bool)

(assert (=> b!5295146 (= c!918875 (isEmpty!32924 (exprs!4815 (h!67417 zl!343))))))

(assert (=> d!1703199 e!3291543))

(declare-fun res!2245752 () Bool)

(assert (=> d!1703199 (=> (not res!2245752) (not e!3291543))))

(declare-fun lt!2163518 () Regex!14931)

(assert (=> d!1703199 (= res!2245752 (validRegex!6667 lt!2163518))))

(declare-fun e!3291542 () Regex!14931)

(assert (=> d!1703199 (= lt!2163518 e!3291542)))

(declare-fun c!918876 () Bool)

(declare-fun e!3291544 () Bool)

(assert (=> d!1703199 (= c!918876 e!3291544)))

(declare-fun res!2245753 () Bool)

(assert (=> d!1703199 (=> (not res!2245753) (not e!3291544))))

(assert (=> d!1703199 (= res!2245753 ((_ is Cons!60968) (exprs!4815 (h!67417 zl!343))))))

(assert (=> d!1703199 (forall!14343 (exprs!4815 (h!67417 zl!343)) lambda!268428)))

(assert (=> d!1703199 (= (generalisedConcat!600 (exprs!4815 (h!67417 zl!343))) lt!2163518)))

(declare-fun b!5295147 () Bool)

(assert (=> b!5295147 (= e!3291545 (isEmptyExpr!849 lt!2163518))))

(declare-fun b!5295148 () Bool)

(assert (=> b!5295148 (= e!3291544 (isEmpty!32924 (t!374297 (exprs!4815 (h!67417 zl!343)))))))

(declare-fun b!5295149 () Bool)

(declare-fun e!3291547 () Bool)

(assert (=> b!5295149 (= e!3291547 (isConcat!372 lt!2163518))))

(declare-fun b!5295150 () Bool)

(assert (=> b!5295150 (= e!3291545 e!3291547)))

(declare-fun c!918874 () Bool)

(assert (=> b!5295150 (= c!918874 (isEmpty!32924 (tail!10444 (exprs!4815 (h!67417 zl!343)))))))

(declare-fun b!5295151 () Bool)

(declare-fun e!3291546 () Regex!14931)

(assert (=> b!5295151 (= e!3291542 e!3291546)))

(declare-fun c!918877 () Bool)

(assert (=> b!5295151 (= c!918877 ((_ is Cons!60968) (exprs!4815 (h!67417 zl!343))))))

(declare-fun b!5295152 () Bool)

(assert (=> b!5295152 (= e!3291547 (= lt!2163518 (head!11347 (exprs!4815 (h!67417 zl!343)))))))

(declare-fun b!5295153 () Bool)

(assert (=> b!5295153 (= e!3291542 (h!67416 (exprs!4815 (h!67417 zl!343))))))

(declare-fun b!5295154 () Bool)

(assert (=> b!5295154 (= e!3291546 EmptyExpr!14931)))

(declare-fun b!5295155 () Bool)

(assert (=> b!5295155 (= e!3291546 (Concat!23776 (h!67416 (exprs!4815 (h!67417 zl!343))) (generalisedConcat!600 (t!374297 (exprs!4815 (h!67417 zl!343))))))))

(assert (= (and d!1703199 res!2245753) b!5295148))

(assert (= (and d!1703199 c!918876) b!5295153))

(assert (= (and d!1703199 (not c!918876)) b!5295151))

(assert (= (and b!5295151 c!918877) b!5295155))

(assert (= (and b!5295151 (not c!918877)) b!5295154))

(assert (= (and d!1703199 res!2245752) b!5295146))

(assert (= (and b!5295146 c!918875) b!5295147))

(assert (= (and b!5295146 (not c!918875)) b!5295150))

(assert (= (and b!5295150 c!918874) b!5295152))

(assert (= (and b!5295150 (not c!918874)) b!5295149))

(declare-fun m!6332638 () Bool)

(assert (=> b!5295149 m!6332638))

(declare-fun m!6332640 () Bool)

(assert (=> b!5295150 m!6332640))

(assert (=> b!5295150 m!6332640))

(declare-fun m!6332642 () Bool)

(assert (=> b!5295150 m!6332642))

(declare-fun m!6332644 () Bool)

(assert (=> b!5295147 m!6332644))

(assert (=> b!5295155 m!6331648))

(assert (=> b!5295148 m!6331588))

(declare-fun m!6332646 () Bool)

(assert (=> d!1703199 m!6332646))

(declare-fun m!6332648 () Bool)

(assert (=> d!1703199 m!6332648))

(declare-fun m!6332650 () Bool)

(assert (=> b!5295152 m!6332650))

(declare-fun m!6332652 () Bool)

(assert (=> b!5295146 m!6332652))

(assert (=> b!5294111 d!1703199))

(declare-fun d!1703201 () Bool)

(declare-fun lt!2163521 () Int)

(assert (=> d!1703201 (>= lt!2163521 0)))

(declare-fun e!3291550 () Int)

(assert (=> d!1703201 (= lt!2163521 e!3291550)))

(declare-fun c!918880 () Bool)

(assert (=> d!1703201 (= c!918880 ((_ is Cons!60969) lt!2163331))))

(assert (=> d!1703201 (= (zipperDepthTotal!92 lt!2163331) lt!2163521)))

(declare-fun b!5295160 () Bool)

(assert (=> b!5295160 (= e!3291550 (+ (contextDepthTotal!72 (h!67417 lt!2163331)) (zipperDepthTotal!92 (t!374298 lt!2163331))))))

(declare-fun b!5295161 () Bool)

(assert (=> b!5295161 (= e!3291550 0)))

(assert (= (and d!1703201 c!918880) b!5295160))

(assert (= (and d!1703201 (not c!918880)) b!5295161))

(declare-fun m!6332654 () Bool)

(assert (=> b!5295160 m!6332654))

(declare-fun m!6332656 () Bool)

(assert (=> b!5295160 m!6332656))

(assert (=> b!5294110 d!1703201))

(declare-fun d!1703203 () Bool)

(declare-fun lt!2163522 () Int)

(assert (=> d!1703203 (>= lt!2163522 0)))

(declare-fun e!3291551 () Int)

(assert (=> d!1703203 (= lt!2163522 e!3291551)))

(declare-fun c!918881 () Bool)

(assert (=> d!1703203 (= c!918881 ((_ is Cons!60969) zl!343))))

(assert (=> d!1703203 (= (zipperDepthTotal!92 zl!343) lt!2163522)))

(declare-fun b!5295162 () Bool)

(assert (=> b!5295162 (= e!3291551 (+ (contextDepthTotal!72 (h!67417 zl!343)) (zipperDepthTotal!92 (t!374298 zl!343))))))

(declare-fun b!5295163 () Bool)

(assert (=> b!5295163 (= e!3291551 0)))

(assert (= (and d!1703203 c!918881) b!5295162))

(assert (= (and d!1703203 (not c!918881)) b!5295163))

(assert (=> b!5295162 m!6331608))

(declare-fun m!6332658 () Bool)

(assert (=> b!5295162 m!6332658))

(assert (=> b!5294110 d!1703203))

(declare-fun bs!1228179 () Bool)

(declare-fun d!1703205 () Bool)

(assert (= bs!1228179 (and d!1703205 b!5294133)))

(declare-fun lambda!268429 () Int)

(assert (=> bs!1228179 (= lambda!268429 lambda!268311)))

(declare-fun bs!1228180 () Bool)

(assert (= bs!1228180 (and d!1703205 d!1703093)))

(assert (=> bs!1228180 (= lambda!268429 lambda!268387)))

(assert (=> d!1703205 true))

(assert (=> d!1703205 (= (derivationStepZipper!1174 lt!2163298 (h!67418 s!2326)) (flatMap!658 lt!2163298 lambda!268429))))

(declare-fun bs!1228181 () Bool)

(assert (= bs!1228181 d!1703205))

(declare-fun m!6332660 () Bool)

(assert (=> bs!1228181 m!6332660))

(assert (=> b!5294129 d!1703205))

(assert (=> b!5294129 d!1703063))

(declare-fun b!5295164 () Bool)

(declare-fun e!3291552 () Bool)

(assert (=> b!5295164 (= e!3291552 (nullable!5100 (h!67416 (exprs!4815 lt!2163319))))))

(declare-fun b!5295165 () Bool)

(declare-fun e!3291554 () (InoxSet Context!8630))

(declare-fun call!377434 () (InoxSet Context!8630))

(assert (=> b!5295165 (= e!3291554 ((_ map or) call!377434 (derivationStepZipperUp!303 (Context!8631 (t!374297 (exprs!4815 lt!2163319))) (h!67418 s!2326))))))

(declare-fun d!1703207 () Bool)

(declare-fun c!918883 () Bool)

(assert (=> d!1703207 (= c!918883 e!3291552)))

(declare-fun res!2245754 () Bool)

(assert (=> d!1703207 (=> (not res!2245754) (not e!3291552))))

(assert (=> d!1703207 (= res!2245754 ((_ is Cons!60968) (exprs!4815 lt!2163319)))))

(assert (=> d!1703207 (= (derivationStepZipperUp!303 lt!2163319 (h!67418 s!2326)) e!3291554)))

(declare-fun b!5295166 () Bool)

(declare-fun e!3291553 () (InoxSet Context!8630))

(assert (=> b!5295166 (= e!3291553 ((as const (Array Context!8630 Bool)) false))))

(declare-fun bm!377429 () Bool)

(assert (=> bm!377429 (= call!377434 (derivationStepZipperDown!379 (h!67416 (exprs!4815 lt!2163319)) (Context!8631 (t!374297 (exprs!4815 lt!2163319))) (h!67418 s!2326)))))

(declare-fun b!5295167 () Bool)

(assert (=> b!5295167 (= e!3291554 e!3291553)))

(declare-fun c!918882 () Bool)

(assert (=> b!5295167 (= c!918882 ((_ is Cons!60968) (exprs!4815 lt!2163319)))))

(declare-fun b!5295168 () Bool)

(assert (=> b!5295168 (= e!3291553 call!377434)))

(assert (= (and d!1703207 res!2245754) b!5295164))

(assert (= (and d!1703207 c!918883) b!5295165))

(assert (= (and d!1703207 (not c!918883)) b!5295167))

(assert (= (and b!5295167 c!918882) b!5295168))

(assert (= (and b!5295167 (not c!918882)) b!5295166))

(assert (= (or b!5295165 b!5295168) bm!377429))

(declare-fun m!6332662 () Bool)

(assert (=> b!5295164 m!6332662))

(declare-fun m!6332664 () Bool)

(assert (=> b!5295165 m!6332664))

(declare-fun m!6332666 () Bool)

(assert (=> bm!377429 m!6332666))

(assert (=> b!5294129 d!1703207))

(declare-fun d!1703209 () Bool)

(assert (=> d!1703209 (= (flatMap!658 lt!2163298 lambda!268311) (choose!39548 lt!2163298 lambda!268311))))

(declare-fun bs!1228182 () Bool)

(assert (= bs!1228182 d!1703209))

(declare-fun m!6332668 () Bool)

(assert (=> bs!1228182 m!6332668))

(assert (=> b!5294129 d!1703209))

(declare-fun d!1703211 () Bool)

(assert (=> d!1703211 (= (flatMap!658 lt!2163298 lambda!268311) (dynLambda!24109 lambda!268311 lt!2163319))))

(declare-fun lt!2163523 () Unit!153242)

(assert (=> d!1703211 (= lt!2163523 (choose!39547 lt!2163298 lt!2163319 lambda!268311))))

(assert (=> d!1703211 (= lt!2163298 (store ((as const (Array Context!8630 Bool)) false) lt!2163319 true))))

(assert (=> d!1703211 (= (lemmaFlatMapOnSingletonSet!190 lt!2163298 lt!2163319 lambda!268311) lt!2163523)))

(declare-fun b_lambda!204149 () Bool)

(assert (=> (not b_lambda!204149) (not d!1703211)))

(declare-fun bs!1228183 () Bool)

(assert (= bs!1228183 d!1703211))

(assert (=> bs!1228183 m!6331564))

(declare-fun m!6332670 () Bool)

(assert (=> bs!1228183 m!6332670))

(declare-fun m!6332672 () Bool)

(assert (=> bs!1228183 m!6332672))

(assert (=> bs!1228183 m!6331562))

(assert (=> b!5294129 d!1703211))

(declare-fun d!1703213 () Bool)

(declare-fun e!3291557 () Bool)

(assert (=> d!1703213 e!3291557))

(declare-fun res!2245757 () Bool)

(assert (=> d!1703213 (=> (not res!2245757) (not e!3291557))))

(declare-fun lt!2163526 () List!61093)

(declare-fun noDuplicate!1269 (List!61093) Bool)

(assert (=> d!1703213 (= res!2245757 (noDuplicate!1269 lt!2163526))))

(declare-fun choose!39554 ((InoxSet Context!8630)) List!61093)

(assert (=> d!1703213 (= lt!2163526 (choose!39554 z!1189))))

(assert (=> d!1703213 (= (toList!8715 z!1189) lt!2163526)))

(declare-fun b!5295171 () Bool)

(declare-fun content!10857 (List!61093) (InoxSet Context!8630))

(assert (=> b!5295171 (= e!3291557 (= (content!10857 lt!2163526) z!1189))))

(assert (= (and d!1703213 res!2245757) b!5295171))

(declare-fun m!6332674 () Bool)

(assert (=> d!1703213 m!6332674))

(declare-fun m!6332676 () Bool)

(assert (=> d!1703213 m!6332676))

(declare-fun m!6332678 () Bool)

(assert (=> b!5295171 m!6332678))

(assert (=> b!5294109 d!1703213))

(declare-fun b!5295182 () Bool)

(declare-fun e!3291560 () Bool)

(assert (=> b!5295182 (= e!3291560 tp_is_empty!39115)))

(declare-fun b!5295184 () Bool)

(declare-fun tp!1477467 () Bool)

(assert (=> b!5295184 (= e!3291560 tp!1477467)))

(declare-fun b!5295183 () Bool)

(declare-fun tp!1477469 () Bool)

(declare-fun tp!1477468 () Bool)

(assert (=> b!5295183 (= e!3291560 (and tp!1477469 tp!1477468))))

(declare-fun b!5295185 () Bool)

(declare-fun tp!1477466 () Bool)

(declare-fun tp!1477470 () Bool)

(assert (=> b!5295185 (= e!3291560 (and tp!1477466 tp!1477470))))

(assert (=> b!5294107 (= tp!1477393 e!3291560)))

(assert (= (and b!5294107 ((_ is ElementMatch!14931) (regOne!30374 r!7292))) b!5295182))

(assert (= (and b!5294107 ((_ is Concat!23776) (regOne!30374 r!7292))) b!5295183))

(assert (= (and b!5294107 ((_ is Star!14931) (regOne!30374 r!7292))) b!5295184))

(assert (= (and b!5294107 ((_ is Union!14931) (regOne!30374 r!7292))) b!5295185))

(declare-fun b!5295186 () Bool)

(declare-fun e!3291561 () Bool)

(assert (=> b!5295186 (= e!3291561 tp_is_empty!39115)))

(declare-fun b!5295188 () Bool)

(declare-fun tp!1477472 () Bool)

(assert (=> b!5295188 (= e!3291561 tp!1477472)))

(declare-fun b!5295187 () Bool)

(declare-fun tp!1477474 () Bool)

(declare-fun tp!1477473 () Bool)

(assert (=> b!5295187 (= e!3291561 (and tp!1477474 tp!1477473))))

(declare-fun b!5295189 () Bool)

(declare-fun tp!1477471 () Bool)

(declare-fun tp!1477475 () Bool)

(assert (=> b!5295189 (= e!3291561 (and tp!1477471 tp!1477475))))

(assert (=> b!5294107 (= tp!1477397 e!3291561)))

(assert (= (and b!5294107 ((_ is ElementMatch!14931) (regTwo!30374 r!7292))) b!5295186))

(assert (= (and b!5294107 ((_ is Concat!23776) (regTwo!30374 r!7292))) b!5295187))

(assert (= (and b!5294107 ((_ is Star!14931) (regTwo!30374 r!7292))) b!5295188))

(assert (= (and b!5294107 ((_ is Union!14931) (regTwo!30374 r!7292))) b!5295189))

(declare-fun b!5295194 () Bool)

(declare-fun e!3291564 () Bool)

(declare-fun tp!1477480 () Bool)

(declare-fun tp!1477481 () Bool)

(assert (=> b!5295194 (= e!3291564 (and tp!1477480 tp!1477481))))

(assert (=> b!5294138 (= tp!1477396 e!3291564)))

(assert (= (and b!5294138 ((_ is Cons!60968) (exprs!4815 setElem!33989))) b!5295194))

(declare-fun b!5295195 () Bool)

(declare-fun e!3291565 () Bool)

(declare-fun tp!1477482 () Bool)

(declare-fun tp!1477483 () Bool)

(assert (=> b!5295195 (= e!3291565 (and tp!1477482 tp!1477483))))

(assert (=> b!5294143 (= tp!1477390 e!3291565)))

(assert (= (and b!5294143 ((_ is Cons!60968) (exprs!4815 (h!67417 zl!343)))) b!5295195))

(declare-fun condSetEmpty!33995 () Bool)

(assert (=> setNonEmpty!33989 (= condSetEmpty!33995 (= setRest!33989 ((as const (Array Context!8630 Bool)) false)))))

(declare-fun setRes!33995 () Bool)

(assert (=> setNonEmpty!33989 (= tp!1477388 setRes!33995)))

(declare-fun setIsEmpty!33995 () Bool)

(assert (=> setIsEmpty!33995 setRes!33995))

(declare-fun setElem!33995 () Context!8630)

(declare-fun setNonEmpty!33995 () Bool)

(declare-fun tp!1477489 () Bool)

(declare-fun e!3291568 () Bool)

(assert (=> setNonEmpty!33995 (= setRes!33995 (and tp!1477489 (inv!80574 setElem!33995) e!3291568))))

(declare-fun setRest!33995 () (InoxSet Context!8630))

(assert (=> setNonEmpty!33995 (= setRest!33989 ((_ map or) (store ((as const (Array Context!8630 Bool)) false) setElem!33995 true) setRest!33995))))

(declare-fun b!5295200 () Bool)

(declare-fun tp!1477488 () Bool)

(assert (=> b!5295200 (= e!3291568 tp!1477488)))

(assert (= (and setNonEmpty!33989 condSetEmpty!33995) setIsEmpty!33995))

(assert (= (and setNonEmpty!33989 (not condSetEmpty!33995)) setNonEmpty!33995))

(assert (= setNonEmpty!33995 b!5295200))

(declare-fun m!6332680 () Bool)

(assert (=> setNonEmpty!33995 m!6332680))

(declare-fun b!5295201 () Bool)

(declare-fun e!3291569 () Bool)

(assert (=> b!5295201 (= e!3291569 tp_is_empty!39115)))

(declare-fun b!5295203 () Bool)

(declare-fun tp!1477491 () Bool)

(assert (=> b!5295203 (= e!3291569 tp!1477491)))

(declare-fun b!5295202 () Bool)

(declare-fun tp!1477493 () Bool)

(declare-fun tp!1477492 () Bool)

(assert (=> b!5295202 (= e!3291569 (and tp!1477493 tp!1477492))))

(declare-fun b!5295204 () Bool)

(declare-fun tp!1477490 () Bool)

(declare-fun tp!1477494 () Bool)

(assert (=> b!5295204 (= e!3291569 (and tp!1477490 tp!1477494))))

(assert (=> b!5294131 (= tp!1477392 e!3291569)))

(assert (= (and b!5294131 ((_ is ElementMatch!14931) (reg!15260 r!7292))) b!5295201))

(assert (= (and b!5294131 ((_ is Concat!23776) (reg!15260 r!7292))) b!5295202))

(assert (= (and b!5294131 ((_ is Star!14931) (reg!15260 r!7292))) b!5295203))

(assert (= (and b!5294131 ((_ is Union!14931) (reg!15260 r!7292))) b!5295204))

(declare-fun b!5295212 () Bool)

(declare-fun e!3291575 () Bool)

(declare-fun tp!1477499 () Bool)

(assert (=> b!5295212 (= e!3291575 tp!1477499)))

(declare-fun b!5295211 () Bool)

(declare-fun e!3291574 () Bool)

(declare-fun tp!1477500 () Bool)

(assert (=> b!5295211 (= e!3291574 (and (inv!80574 (h!67417 (t!374298 zl!343))) e!3291575 tp!1477500))))

(assert (=> b!5294114 (= tp!1477395 e!3291574)))

(assert (= b!5295211 b!5295212))

(assert (= (and b!5294114 ((_ is Cons!60969) (t!374298 zl!343))) b!5295211))

(declare-fun m!6332682 () Bool)

(assert (=> b!5295211 m!6332682))

(declare-fun b!5295213 () Bool)

(declare-fun e!3291576 () Bool)

(assert (=> b!5295213 (= e!3291576 tp_is_empty!39115)))

(declare-fun b!5295215 () Bool)

(declare-fun tp!1477502 () Bool)

(assert (=> b!5295215 (= e!3291576 tp!1477502)))

(declare-fun b!5295214 () Bool)

(declare-fun tp!1477504 () Bool)

(declare-fun tp!1477503 () Bool)

(assert (=> b!5295214 (= e!3291576 (and tp!1477504 tp!1477503))))

(declare-fun b!5295216 () Bool)

(declare-fun tp!1477501 () Bool)

(declare-fun tp!1477505 () Bool)

(assert (=> b!5295216 (= e!3291576 (and tp!1477501 tp!1477505))))

(assert (=> b!5294115 (= tp!1477389 e!3291576)))

(assert (= (and b!5294115 ((_ is ElementMatch!14931) (regOne!30375 r!7292))) b!5295213))

(assert (= (and b!5294115 ((_ is Concat!23776) (regOne!30375 r!7292))) b!5295214))

(assert (= (and b!5294115 ((_ is Star!14931) (regOne!30375 r!7292))) b!5295215))

(assert (= (and b!5294115 ((_ is Union!14931) (regOne!30375 r!7292))) b!5295216))

(declare-fun b!5295217 () Bool)

(declare-fun e!3291577 () Bool)

(assert (=> b!5295217 (= e!3291577 tp_is_empty!39115)))

(declare-fun b!5295219 () Bool)

(declare-fun tp!1477507 () Bool)

(assert (=> b!5295219 (= e!3291577 tp!1477507)))

(declare-fun b!5295218 () Bool)

(declare-fun tp!1477509 () Bool)

(declare-fun tp!1477508 () Bool)

(assert (=> b!5295218 (= e!3291577 (and tp!1477509 tp!1477508))))

(declare-fun b!5295220 () Bool)

(declare-fun tp!1477506 () Bool)

(declare-fun tp!1477510 () Bool)

(assert (=> b!5295220 (= e!3291577 (and tp!1477506 tp!1477510))))

(assert (=> b!5294115 (= tp!1477391 e!3291577)))

(assert (= (and b!5294115 ((_ is ElementMatch!14931) (regTwo!30375 r!7292))) b!5295217))

(assert (= (and b!5294115 ((_ is Concat!23776) (regTwo!30375 r!7292))) b!5295218))

(assert (= (and b!5294115 ((_ is Star!14931) (regTwo!30375 r!7292))) b!5295219))

(assert (= (and b!5294115 ((_ is Union!14931) (regTwo!30375 r!7292))) b!5295220))

(declare-fun b!5295225 () Bool)

(declare-fun e!3291580 () Bool)

(declare-fun tp!1477513 () Bool)

(assert (=> b!5295225 (= e!3291580 (and tp_is_empty!39115 tp!1477513))))

(assert (=> b!5294130 (= tp!1477394 e!3291580)))

(assert (= (and b!5294130 ((_ is Cons!60970) (t!374299 s!2326))) b!5295225))

(declare-fun b_lambda!204151 () Bool)

(assert (= b_lambda!204145 (or b!5294133 b_lambda!204151)))

(declare-fun bs!1228184 () Bool)

(declare-fun d!1703215 () Bool)

(assert (= bs!1228184 (and d!1703215 b!5294133)))

(assert (=> bs!1228184 (= (dynLambda!24109 lambda!268311 lt!2163303) (derivationStepZipperUp!303 lt!2163303 (h!67418 s!2326)))))

(assert (=> bs!1228184 m!6331550))

(assert (=> d!1703065 d!1703215))

(declare-fun b_lambda!204153 () Bool)

(assert (= b_lambda!204149 (or b!5294133 b_lambda!204153)))

(declare-fun bs!1228185 () Bool)

(declare-fun d!1703217 () Bool)

(assert (= bs!1228185 (and d!1703217 b!5294133)))

(assert (=> bs!1228185 (= (dynLambda!24109 lambda!268311 lt!2163319) (derivationStepZipperUp!303 lt!2163319 (h!67418 s!2326)))))

(assert (=> bs!1228185 m!6331566))

(assert (=> d!1703211 d!1703217))

(declare-fun b_lambda!204155 () Bool)

(assert (= b_lambda!204147 (or b!5294133 b_lambda!204155)))

(declare-fun bs!1228186 () Bool)

(declare-fun d!1703219 () Bool)

(assert (= bs!1228186 (and d!1703219 b!5294133)))

(assert (=> bs!1228186 (= (dynLambda!24109 lambda!268311 (h!67417 zl!343)) (derivationStepZipperUp!303 (h!67417 zl!343) (h!67418 s!2326)))))

(assert (=> bs!1228186 m!6331596))

(assert (=> d!1703187 d!1703219))

(check-sat (not b!5294810) (not b!5295048) (not d!1703213) (not b_lambda!204153) (not bm!377375) (not d!1703067) (not b!5294805) (not b!5295025) (not b!5295032) (not d!1703143) (not b!5295117) (not d!1703091) (not b!5294972) (not d!1703147) (not b!5295076) (not bm!377416) (not b!5295019) (not b!5295082) (not b!5295036) (not b!5295026) (not bm!377392) (not b!5295203) (not b!5294817) (not b!5295219) (not d!1703163) (not d!1703089) (not b!5294930) (not b!5295089) (not b!5294737) (not b!5295149) (not d!1703125) (not b!5295146) (not b!5294813) (not b!5295081) (not b!5295189) (not b!5295185) (not bm!377421) (not b!5295058) (not d!1703133) (not b!5294808) (not b!5294816) (not d!1703157) (not d!1703127) (not d!1703211) (not b!5294807) (not d!1703149) (not d!1703139) (not d!1703095) (not b!5295047) (not b!5295043) (not b!5295092) (not b!5295102) (not bm!377384) (not b!5294935) (not b!5294769) (not b!5294659) (not b!5295143) (not bm!377374) (not b!5295018) (not b!5294901) (not b!5295062) (not b!5295015) (not b!5295067) (not b!5295097) (not d!1703177) (not d!1703083) (not d!1703069) (not b!5294904) (not d!1703199) (not b!5294992) (not b!5295152) (not b!5294934) (not b!5295194) (not b!5295053) (not b!5294993) (not d!1703165) (not bm!377377) (not d!1703085) (not b!5294740) (not b!5295171) (not d!1703161) (not b!5295183) (not b!5295064) (not b!5295187) (not d!1703105) (not b!5295160) (not bm!377415) (not bm!377417) (not d!1703171) (not b!5295118) (not b!5295220) (not d!1703065) (not bs!1228185) (not d!1703123) (not bm!377399) (not d!1703179) (not d!1703141) (not bm!377424) (not b!5294941) (not b!5294976) (not b!5294812) (not b!5295150) (not b!5295188) (not b!5294933) (not d!1703049) tp_is_empty!39115 (not bm!377400) (not b!5295024) (not d!1703209) (not d!1703155) (not b!5295214) (not d!1703087) (not b!5295128) (not b!5295041) (not d!1703113) (not b!5294905) (not b!5295072) (not b!5295211) (not bm!377386) (not d!1703205) (not b!5295016) (not b!5294896) (not b!5294855) (not b!5295111) (not b!5295144) (not b!5295087) (not b!5295105) (not d!1703081) (not d!1703193) (not bm!377414) (not b!5294811) (not b!5295165) (not b!5295084) (not d!1703121) (not d!1703061) (not b!5294902) (not b!5294974) (not b!5295106) (not d!1703119) (not b!5295093) (not d!1703053) (not b!5295116) (not d!1703107) (not d!1703129) (not b_lambda!204151) (not b!5295028) (not b!5294815) (not b!5295038) (not b!5295065) (not b!5295195) (not b!5294752) (not b!5295138) (not d!1703137) (not b!5295063) (not bm!377429) (not bm!377420) (not bm!377411) (not bm!377418) (not b!5294932) (not b!5295114) (not b_lambda!204155) (not d!1703093) (not b!5295147) (not b!5294970) (not b!5295061) (not b!5295122) (not b!5294803) (not b!5295139) (not d!1703145) (not b!5295091) (not b!5294947) (not b!5295218) (not b!5294809) (not d!1703115) (not bm!377425) (not d!1703173) (not b!5295216) (not b!5295040) (not d!1703131) (not b!5295215) (not bs!1228184) (not b!5295108) (not d!1703169) (not d!1703101) (not b!5294794) (not b!5295049) (not d!1703175) (not b!5294928) (not b!5294931) (not bm!377383) (not b!5295085) (not bm!377419) (not b!5295164) (not b!5295202) (not bm!377412) (not d!1703117) (not b!5294771) (not b!5295080) (not b!5295021) (not d!1703197) (not b!5294977) (not b!5295045) (not b!5294757) (not b!5295162) (not b!5295107) (not b!5295225) (not b!5294994) (not bm!377410) (not d!1703103) (not b!5294736) (not b!5295155) (not b!5294900) (not b!5295037) (not d!1703111) (not b!5294978) (not b!5295200) (not d!1703159) (not b!5295017) (not b!5294860) (not d!1703135) (not b!5294764) (not bs!1228186) (not d!1703151) (not d!1703099) (not bm!377428) (not b!5295070) (not b!5294892) (not b!5295115) (not d!1703187) (not b!5294756) (not d!1703195) (not b!5295204) (not b!5295109) (not bm!377427) (not b!5295212) (not b!5294906) (not b!5295123) (not b!5294814) (not b!5294751) (not b!5295184) (not d!1703189) (not setNonEmpty!33995) (not b!5295145) (not b!5294991) (not b!5294639) (not bm!377407) (not bm!377406) (not b!5294766) (not b!5295148))
(check-sat)
