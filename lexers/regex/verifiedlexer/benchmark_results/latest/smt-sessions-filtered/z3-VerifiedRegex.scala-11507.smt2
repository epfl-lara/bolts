; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!629466 () Bool)

(assert start!629466)

(declare-fun b!6353605 () Bool)

(assert (=> b!6353605 true))

(assert (=> b!6353605 true))

(declare-fun lambda!349661 () Int)

(declare-fun lambda!349660 () Int)

(assert (=> b!6353605 (not (= lambda!349661 lambda!349660))))

(assert (=> b!6353605 true))

(assert (=> b!6353605 true))

(declare-fun b!6353601 () Bool)

(assert (=> b!6353601 true))

(declare-fun bs!1591365 () Bool)

(declare-fun b!6353590 () Bool)

(assert (= bs!1591365 (and b!6353590 b!6353605)))

(declare-datatypes ((C!32792 0))(
  ( (C!32793 (val!26098 Int)) )
))
(declare-datatypes ((Regex!16261 0))(
  ( (ElementMatch!16261 (c!1156050 C!32792)) (Concat!25106 (regOne!33034 Regex!16261) (regTwo!33034 Regex!16261)) (EmptyExpr!16261) (Star!16261 (reg!16590 Regex!16261)) (EmptyLang!16261) (Union!16261 (regOne!33035 Regex!16261) (regTwo!33035 Regex!16261)) )
))
(declare-fun r!7292 () Regex!16261)

(declare-fun lt!2365374 () Regex!16261)

(declare-fun lambda!349663 () Int)

(assert (=> bs!1591365 (= (and (= (regOne!33034 (regOne!33034 r!7292)) (regOne!33034 r!7292)) (= lt!2365374 (regTwo!33034 r!7292))) (= lambda!349663 lambda!349660))))

(assert (=> bs!1591365 (not (= lambda!349663 lambda!349661))))

(assert (=> b!6353590 true))

(assert (=> b!6353590 true))

(assert (=> b!6353590 true))

(declare-fun lambda!349664 () Int)

(assert (=> bs!1591365 (not (= lambda!349664 lambda!349660))))

(assert (=> bs!1591365 (= (and (= (regOne!33034 (regOne!33034 r!7292)) (regOne!33034 r!7292)) (= lt!2365374 (regTwo!33034 r!7292))) (= lambda!349664 lambda!349661))))

(assert (=> b!6353590 (not (= lambda!349664 lambda!349663))))

(assert (=> b!6353590 true))

(assert (=> b!6353590 true))

(assert (=> b!6353590 true))

(declare-fun lt!2365379 () Regex!16261)

(declare-fun lambda!349665 () Int)

(assert (=> bs!1591365 (= (and (= (regTwo!33034 (regOne!33034 r!7292)) (regOne!33034 r!7292)) (= lt!2365379 (regTwo!33034 r!7292))) (= lambda!349665 lambda!349660))))

(assert (=> bs!1591365 (not (= lambda!349665 lambda!349661))))

(assert (=> b!6353590 (= (and (= (regTwo!33034 (regOne!33034 r!7292)) (regOne!33034 (regOne!33034 r!7292))) (= lt!2365379 lt!2365374)) (= lambda!349665 lambda!349663))))

(assert (=> b!6353590 (not (= lambda!349665 lambda!349664))))

(assert (=> b!6353590 true))

(assert (=> b!6353590 true))

(assert (=> b!6353590 true))

(declare-fun b!6353571 () Bool)

(declare-fun e!3858436 () Bool)

(declare-fun tp!1770346 () Bool)

(assert (=> b!6353571 (= e!3858436 tp!1770346)))

(declare-fun b!6353572 () Bool)

(declare-fun e!3858450 () Bool)

(declare-fun tp_is_empty!41775 () Bool)

(assert (=> b!6353572 (= e!3858450 tp_is_empty!41775)))

(declare-fun b!6353573 () Bool)

(declare-fun e!3858447 () Bool)

(declare-fun e!3858437 () Bool)

(assert (=> b!6353573 (= e!3858447 e!3858437)))

(declare-fun res!2614347 () Bool)

(assert (=> b!6353573 (=> res!2614347 e!3858437)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65082 0))(
  ( (Nil!64958) (Cons!64958 (h!71406 Regex!16261) (t!378672 List!65082)) )
))
(declare-datatypes ((Context!11290 0))(
  ( (Context!11291 (exprs!6145 List!65082)) )
))
(declare-fun lt!2365371 () (InoxSet Context!11290))

(declare-fun lt!2365377 () (InoxSet Context!11290))

(assert (=> b!6353573 (= res!2614347 (not (= lt!2365371 lt!2365377)))))

(declare-datatypes ((List!65083 0))(
  ( (Nil!64959) (Cons!64959 (h!71407 C!32792) (t!378673 List!65083)) )
))
(declare-fun s!2326 () List!65083)

(declare-fun lt!2365395 () List!65082)

(declare-fun derivationStepZipperDown!1509 (Regex!16261 Context!11290 C!32792) (InoxSet Context!11290))

(assert (=> b!6353573 (= lt!2365377 (derivationStepZipperDown!1509 (regOne!33034 (regOne!33034 r!7292)) (Context!11291 lt!2365395) (h!71407 s!2326)))))

(declare-datatypes ((List!65084 0))(
  ( (Nil!64960) (Cons!64960 (h!71408 Context!11290) (t!378674 List!65084)) )
))
(declare-fun zl!343 () List!65084)

(assert (=> b!6353573 (= lt!2365395 (Cons!64958 (regTwo!33034 (regOne!33034 r!7292)) (t!378672 (exprs!6145 (h!71408 zl!343)))))))

(declare-fun b!6353574 () Bool)

(declare-fun e!3858441 () Bool)

(declare-fun tp!1770353 () Bool)

(assert (=> b!6353574 (= e!3858441 tp!1770353)))

(declare-fun b!6353575 () Bool)

(declare-fun res!2614344 () Bool)

(assert (=> b!6353575 (=> res!2614344 e!3858447)))

(get-info :version)

(assert (=> b!6353575 (= res!2614344 (not ((_ is Concat!25106) (regOne!33034 r!7292))))))

(declare-fun tp!1770345 () Bool)

(declare-fun setNonEmpty!43270 () Bool)

(declare-fun setElem!43270 () Context!11290)

(declare-fun setRes!43270 () Bool)

(declare-fun inv!83899 (Context!11290) Bool)

(assert (=> setNonEmpty!43270 (= setRes!43270 (and tp!1770345 (inv!83899 setElem!43270) e!3858441))))

(declare-fun z!1189 () (InoxSet Context!11290))

(declare-fun setRest!43270 () (InoxSet Context!11290))

(assert (=> setNonEmpty!43270 (= z!1189 ((_ map or) (store ((as const (Array Context!11290 Bool)) false) setElem!43270 true) setRest!43270))))

(declare-fun b!6353576 () Bool)

(declare-fun res!2614357 () Bool)

(declare-fun e!3858446 () Bool)

(assert (=> b!6353576 (=> res!2614357 e!3858446)))

(assert (=> b!6353576 (= res!2614357 (or ((_ is EmptyExpr!16261) r!7292) ((_ is EmptyLang!16261) r!7292) ((_ is ElementMatch!16261) r!7292) ((_ is Union!16261) r!7292) (not ((_ is Concat!25106) r!7292))))))

(declare-fun b!6353577 () Bool)

(declare-fun e!3858448 () Bool)

(assert (=> b!6353577 (= e!3858448 (not e!3858446))))

(declare-fun res!2614346 () Bool)

(assert (=> b!6353577 (=> res!2614346 e!3858446)))

(assert (=> b!6353577 (= res!2614346 (not ((_ is Cons!64960) zl!343)))))

(declare-fun lt!2365388 () Bool)

(declare-fun matchRSpec!3362 (Regex!16261 List!65083) Bool)

(assert (=> b!6353577 (= lt!2365388 (matchRSpec!3362 r!7292 s!2326))))

(declare-fun matchR!8444 (Regex!16261 List!65083) Bool)

(assert (=> b!6353577 (= lt!2365388 (matchR!8444 r!7292 s!2326))))

(declare-datatypes ((Unit!158375 0))(
  ( (Unit!158376) )
))
(declare-fun lt!2365384 () Unit!158375)

(declare-fun mainMatchTheorem!3362 (Regex!16261 List!65083) Unit!158375)

(assert (=> b!6353577 (= lt!2365384 (mainMatchTheorem!3362 r!7292 s!2326))))

(declare-fun b!6353578 () Bool)

(declare-fun e!3858442 () Unit!158375)

(declare-fun Unit!158377 () Unit!158375)

(assert (=> b!6353578 (= e!3858442 Unit!158377)))

(declare-fun b!6353579 () Bool)

(declare-fun res!2614359 () Bool)

(assert (=> b!6353579 (=> (not res!2614359) (not e!3858448))))

(declare-fun toList!10045 ((InoxSet Context!11290)) List!65084)

(assert (=> b!6353579 (= res!2614359 (= (toList!10045 z!1189) zl!343))))

(declare-fun res!2614353 () Bool)

(assert (=> start!629466 (=> (not res!2614353) (not e!3858448))))

(declare-fun validRegex!7997 (Regex!16261) Bool)

(assert (=> start!629466 (= res!2614353 (validRegex!7997 r!7292))))

(assert (=> start!629466 e!3858448))

(assert (=> start!629466 e!3858450))

(declare-fun condSetEmpty!43270 () Bool)

(assert (=> start!629466 (= condSetEmpty!43270 (= z!1189 ((as const (Array Context!11290 Bool)) false)))))

(assert (=> start!629466 setRes!43270))

(declare-fun e!3858439 () Bool)

(assert (=> start!629466 e!3858439))

(declare-fun e!3858451 () Bool)

(assert (=> start!629466 e!3858451))

(declare-fun b!6353580 () Bool)

(declare-fun e!3858444 () Bool)

(declare-fun lt!2365385 () (InoxSet Context!11290))

(declare-fun matchZipper!2273 ((InoxSet Context!11290) List!65083) Bool)

(assert (=> b!6353580 (= e!3858444 (matchZipper!2273 lt!2365385 (t!378673 s!2326)))))

(declare-fun b!6353581 () Bool)

(declare-fun res!2614355 () Bool)

(assert (=> b!6353581 (=> res!2614355 e!3858446)))

(declare-fun isEmpty!37053 (List!65084) Bool)

(assert (=> b!6353581 (= res!2614355 (not (isEmpty!37053 (t!378674 zl!343))))))

(declare-fun b!6353582 () Bool)

(declare-fun e!3858445 () Bool)

(declare-fun e!3858443 () Bool)

(assert (=> b!6353582 (= e!3858445 e!3858443)))

(declare-fun res!2614368 () Bool)

(assert (=> b!6353582 (=> res!2614368 e!3858443)))

(declare-fun lt!2365372 () List!65084)

(declare-fun zipperDepthTotal!398 (List!65084) Int)

(assert (=> b!6353582 (= res!2614368 (>= (zipperDepthTotal!398 lt!2365372) (zipperDepthTotal!398 zl!343)))))

(declare-fun lt!2365389 () Context!11290)

(assert (=> b!6353582 (= lt!2365372 (Cons!64960 lt!2365389 Nil!64960))))

(declare-fun b!6353583 () Bool)

(declare-fun Unit!158378 () Unit!158375)

(assert (=> b!6353583 (= e!3858442 Unit!158378)))

(declare-fun lt!2365390 () Unit!158375)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1092 ((InoxSet Context!11290) (InoxSet Context!11290) List!65083) Unit!158375)

(assert (=> b!6353583 (= lt!2365390 (lemmaZipperConcatMatchesSameAsBothZippers!1092 lt!2365371 lt!2365385 (t!378673 s!2326)))))

(declare-fun res!2614365 () Bool)

(assert (=> b!6353583 (= res!2614365 (matchZipper!2273 lt!2365371 (t!378673 s!2326)))))

(assert (=> b!6353583 (=> res!2614365 e!3858444)))

(assert (=> b!6353583 (= (matchZipper!2273 ((_ map or) lt!2365371 lt!2365385) (t!378673 s!2326)) e!3858444)))

(declare-fun b!6353584 () Bool)

(declare-fun res!2614361 () Bool)

(assert (=> b!6353584 (=> res!2614361 e!3858443)))

(declare-fun zipperDepth!368 (List!65084) Int)

(assert (=> b!6353584 (= res!2614361 (> (zipperDepth!368 lt!2365372) (zipperDepth!368 zl!343)))))

(declare-fun b!6353585 () Bool)

(declare-fun tp!1770347 () Bool)

(declare-fun tp!1770348 () Bool)

(assert (=> b!6353585 (= e!3858450 (and tp!1770347 tp!1770348))))

(declare-fun b!6353586 () Bool)

(declare-fun res!2614349 () Bool)

(assert (=> b!6353586 (=> res!2614349 e!3858446)))

(assert (=> b!6353586 (= res!2614349 (not ((_ is Cons!64958) (exprs!6145 (h!71408 zl!343)))))))

(declare-fun b!6353587 () Bool)

(declare-fun res!2614358 () Bool)

(assert (=> b!6353587 (=> res!2614358 e!3858445)))

(declare-fun contextDepthTotal!370 (Context!11290) Int)

(assert (=> b!6353587 (= res!2614358 (>= (contextDepthTotal!370 lt!2365389) (contextDepthTotal!370 (h!71408 zl!343))))))

(declare-fun b!6353588 () Bool)

(declare-fun e!3858449 () Bool)

(declare-fun nullable!6254 (Regex!16261) Bool)

(assert (=> b!6353588 (= e!3858449 (nullable!6254 (regOne!33034 (regOne!33034 r!7292))))))

(declare-fun b!6353589 () Bool)

(declare-fun res!2614363 () Bool)

(assert (=> b!6353589 (=> res!2614363 e!3858446)))

(declare-fun generalisedUnion!2105 (List!65082) Regex!16261)

(declare-fun unfocusZipperList!1682 (List!65084) List!65082)

(assert (=> b!6353589 (= res!2614363 (not (= r!7292 (generalisedUnion!2105 (unfocusZipperList!1682 zl!343)))))))

(declare-fun e!3858438 () Bool)

(assert (=> b!6353590 (= e!3858443 e!3858438)))

(declare-fun res!2614348 () Bool)

(assert (=> b!6353590 (=> res!2614348 e!3858438)))

(assert (=> b!6353590 (= res!2614348 (not (validRegex!7997 (regTwo!33034 (regOne!33034 r!7292)))))))

(declare-datatypes ((tuple2!66480 0))(
  ( (tuple2!66481 (_1!36543 List!65083) (_2!36543 List!65083)) )
))
(declare-datatypes ((Option!16152 0))(
  ( (None!16151) (Some!16151 (v!52320 tuple2!66480)) )
))
(declare-fun isDefined!12855 (Option!16152) Bool)

(declare-fun findConcatSeparation!2566 (Regex!16261 Regex!16261 List!65083 List!65083 List!65083) Option!16152)

(declare-fun Exists!3331 (Int) Bool)

(assert (=> b!6353590 (= (isDefined!12855 (findConcatSeparation!2566 (regTwo!33034 (regOne!33034 r!7292)) lt!2365379 Nil!64959 s!2326 s!2326)) (Exists!3331 lambda!349665))))

(declare-fun lt!2365387 () Unit!158375)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2330 (Regex!16261 Regex!16261 List!65083) Unit!158375)

(assert (=> b!6353590 (= lt!2365387 (lemmaFindConcatSeparationEquivalentToExists!2330 (regTwo!33034 (regOne!33034 r!7292)) lt!2365379 s!2326))))

(declare-fun generalisedConcat!1858 (List!65082) Regex!16261)

(assert (=> b!6353590 (= lt!2365379 (generalisedConcat!1858 (t!378672 (exprs!6145 (h!71408 zl!343)))))))

(assert (=> b!6353590 (= (matchR!8444 lt!2365374 s!2326) (matchRSpec!3362 lt!2365374 s!2326))))

(declare-fun lt!2365380 () Unit!158375)

(assert (=> b!6353590 (= lt!2365380 (mainMatchTheorem!3362 lt!2365374 s!2326))))

(assert (=> b!6353590 (= (Exists!3331 lambda!349663) (Exists!3331 lambda!349664))))

(declare-fun lt!2365392 () Unit!158375)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1868 (Regex!16261 Regex!16261 List!65083) Unit!158375)

(assert (=> b!6353590 (= lt!2365392 (lemmaExistCutMatchRandMatchRSpecEquivalent!1868 (regOne!33034 (regOne!33034 r!7292)) lt!2365374 s!2326))))

(assert (=> b!6353590 (= (isDefined!12855 (findConcatSeparation!2566 (regOne!33034 (regOne!33034 r!7292)) lt!2365374 Nil!64959 s!2326 s!2326)) (Exists!3331 lambda!349663))))

(declare-fun lt!2365400 () Unit!158375)

(assert (=> b!6353590 (= lt!2365400 (lemmaFindConcatSeparationEquivalentToExists!2330 (regOne!33034 (regOne!33034 r!7292)) lt!2365374 s!2326))))

(assert (=> b!6353590 (= lt!2365374 (generalisedConcat!1858 lt!2365395))))

(declare-fun lt!2365397 () Bool)

(declare-fun lt!2365396 () Regex!16261)

(assert (=> b!6353590 (= lt!2365397 (matchRSpec!3362 lt!2365396 s!2326))))

(declare-fun lt!2365381 () Unit!158375)

(assert (=> b!6353590 (= lt!2365381 (mainMatchTheorem!3362 lt!2365396 s!2326))))

(declare-fun lt!2365376 () (InoxSet Context!11290))

(assert (=> b!6353590 (= lt!2365397 (matchZipper!2273 lt!2365376 s!2326))))

(assert (=> b!6353590 (= lt!2365397 (matchR!8444 lt!2365396 s!2326))))

(declare-fun lt!2365394 () Unit!158375)

(declare-fun theoremZipperRegexEquiv!803 ((InoxSet Context!11290) List!65084 Regex!16261 List!65083) Unit!158375)

(assert (=> b!6353590 (= lt!2365394 (theoremZipperRegexEquiv!803 lt!2365376 lt!2365372 lt!2365396 s!2326))))

(declare-fun lt!2365375 () List!65082)

(assert (=> b!6353590 (= lt!2365396 (generalisedConcat!1858 lt!2365375))))

(declare-fun b!6353591 () Bool)

(declare-fun res!2614356 () Bool)

(assert (=> b!6353591 (=> res!2614356 e!3858446)))

(assert (=> b!6353591 (= res!2614356 (not (= r!7292 (generalisedConcat!1858 (exprs!6145 (h!71408 zl!343))))))))

(declare-fun b!6353592 () Bool)

(declare-fun res!2614354 () Bool)

(assert (=> b!6353592 (=> res!2614354 e!3858447)))

(assert (=> b!6353592 (= res!2614354 e!3858449)))

(declare-fun res!2614352 () Bool)

(assert (=> b!6353592 (=> (not res!2614352) (not e!3858449))))

(assert (=> b!6353592 (= res!2614352 ((_ is Concat!25106) (regOne!33034 r!7292)))))

(declare-fun b!6353593 () Bool)

(declare-fun e!3858440 () Bool)

(assert (=> b!6353593 (= e!3858440 e!3858445)))

(declare-fun res!2614345 () Bool)

(assert (=> b!6353593 (=> res!2614345 e!3858445)))

(declare-fun lt!2365373 () (InoxSet Context!11290))

(assert (=> b!6353593 (= res!2614345 (not (= lt!2365373 lt!2365377)))))

(declare-fun lambda!349662 () Int)

(declare-fun flatMap!1766 ((InoxSet Context!11290) Int) (InoxSet Context!11290))

(declare-fun derivationStepZipperUp!1435 (Context!11290 C!32792) (InoxSet Context!11290))

(assert (=> b!6353593 (= (flatMap!1766 lt!2365376 lambda!349662) (derivationStepZipperUp!1435 lt!2365389 (h!71407 s!2326)))))

(declare-fun lt!2365391 () Unit!158375)

(declare-fun lemmaFlatMapOnSingletonSet!1292 ((InoxSet Context!11290) Context!11290 Int) Unit!158375)

(assert (=> b!6353593 (= lt!2365391 (lemmaFlatMapOnSingletonSet!1292 lt!2365376 lt!2365389 lambda!349662))))

(declare-fun lt!2365398 () (InoxSet Context!11290))

(assert (=> b!6353593 (= lt!2365398 (derivationStepZipperUp!1435 lt!2365389 (h!71407 s!2326)))))

(declare-fun derivationStepZipper!2227 ((InoxSet Context!11290) C!32792) (InoxSet Context!11290))

(assert (=> b!6353593 (= lt!2365373 (derivationStepZipper!2227 lt!2365376 (h!71407 s!2326)))))

(assert (=> b!6353593 (= lt!2365376 (store ((as const (Array Context!11290 Bool)) false) lt!2365389 true))))

(assert (=> b!6353593 (= lt!2365389 (Context!11291 lt!2365375))))

(assert (=> b!6353593 (= lt!2365375 (Cons!64958 (regOne!33034 (regOne!33034 r!7292)) lt!2365395))))

(declare-fun b!6353594 () Bool)

(declare-fun tp!1770349 () Bool)

(assert (=> b!6353594 (= e!3858439 (and (inv!83899 (h!71408 zl!343)) e!3858436 tp!1770349))))

(declare-fun b!6353595 () Bool)

(assert (=> b!6353595 (= e!3858438 (validRegex!7997 lt!2365379))))

(declare-fun b!6353596 () Bool)

(declare-fun tp!1770350 () Bool)

(assert (=> b!6353596 (= e!3858451 (and tp_is_empty!41775 tp!1770350))))

(declare-fun b!6353597 () Bool)

(assert (=> b!6353597 (= e!3858437 e!3858440)))

(declare-fun res!2614351 () Bool)

(assert (=> b!6353597 (=> res!2614351 e!3858440)))

(declare-fun lt!2365393 () Bool)

(assert (=> b!6353597 (= res!2614351 (not (= lt!2365393 (matchZipper!2273 lt!2365377 (t!378673 s!2326)))))))

(assert (=> b!6353597 (= lt!2365393 (matchZipper!2273 lt!2365371 (t!378673 s!2326)))))

(declare-fun b!6353598 () Bool)

(declare-fun res!2614360 () Bool)

(declare-fun e!3858452 () Bool)

(assert (=> b!6353598 (=> res!2614360 e!3858452)))

(declare-fun isEmpty!37054 (List!65082) Bool)

(assert (=> b!6353598 (= res!2614360 (isEmpty!37054 (t!378672 (exprs!6145 (h!71408 zl!343)))))))

(declare-fun b!6353599 () Bool)

(declare-fun tp!1770354 () Bool)

(declare-fun tp!1770351 () Bool)

(assert (=> b!6353599 (= e!3858450 (and tp!1770354 tp!1770351))))

(declare-fun setIsEmpty!43270 () Bool)

(assert (=> setIsEmpty!43270 setRes!43270))

(declare-fun b!6353600 () Bool)

(declare-fun res!2614362 () Bool)

(assert (=> b!6353600 (=> res!2614362 e!3858445)))

(assert (=> b!6353600 (= res!2614362 (not (= lt!2365393 (matchZipper!2273 lt!2365373 (t!378673 s!2326)))))))

(assert (=> b!6353601 (= e!3858452 e!3858447)))

(declare-fun res!2614350 () Bool)

(assert (=> b!6353601 (=> res!2614350 e!3858447)))

(assert (=> b!6353601 (= res!2614350 (or (and ((_ is ElementMatch!16261) (regOne!33034 r!7292)) (= (c!1156050 (regOne!33034 r!7292)) (h!71407 s!2326))) ((_ is Union!16261) (regOne!33034 r!7292))))))

(declare-fun lt!2365386 () Unit!158375)

(assert (=> b!6353601 (= lt!2365386 e!3858442)))

(declare-fun c!1156049 () Bool)

(assert (=> b!6353601 (= c!1156049 (nullable!6254 (h!71406 (exprs!6145 (h!71408 zl!343)))))))

(assert (=> b!6353601 (= (flatMap!1766 z!1189 lambda!349662) (derivationStepZipperUp!1435 (h!71408 zl!343) (h!71407 s!2326)))))

(declare-fun lt!2365382 () Unit!158375)

(assert (=> b!6353601 (= lt!2365382 (lemmaFlatMapOnSingletonSet!1292 z!1189 (h!71408 zl!343) lambda!349662))))

(declare-fun lt!2365369 () Context!11290)

(assert (=> b!6353601 (= lt!2365385 (derivationStepZipperUp!1435 lt!2365369 (h!71407 s!2326)))))

(assert (=> b!6353601 (= lt!2365371 (derivationStepZipperDown!1509 (h!71406 (exprs!6145 (h!71408 zl!343))) lt!2365369 (h!71407 s!2326)))))

(assert (=> b!6353601 (= lt!2365369 (Context!11291 (t!378672 (exprs!6145 (h!71408 zl!343)))))))

(declare-fun lt!2365399 () (InoxSet Context!11290))

(assert (=> b!6353601 (= lt!2365399 (derivationStepZipperUp!1435 (Context!11291 (Cons!64958 (h!71406 (exprs!6145 (h!71408 zl!343))) (t!378672 (exprs!6145 (h!71408 zl!343))))) (h!71407 s!2326)))))

(declare-fun b!6353602 () Bool)

(declare-fun res!2614367 () Bool)

(assert (=> b!6353602 (=> res!2614367 e!3858445)))

(assert (=> b!6353602 (= res!2614367 (not (= (exprs!6145 (h!71408 zl!343)) (Cons!64958 (Concat!25106 (regOne!33034 (regOne!33034 r!7292)) (regTwo!33034 (regOne!33034 r!7292))) (t!378672 (exprs!6145 (h!71408 zl!343)))))))))

(declare-fun b!6353603 () Bool)

(declare-fun tp!1770352 () Bool)

(assert (=> b!6353603 (= e!3858450 tp!1770352)))

(declare-fun b!6353604 () Bool)

(declare-fun res!2614366 () Bool)

(assert (=> b!6353604 (=> (not res!2614366) (not e!3858448))))

(declare-fun unfocusZipper!2003 (List!65084) Regex!16261)

(assert (=> b!6353604 (= res!2614366 (= r!7292 (unfocusZipper!2003 zl!343)))))

(assert (=> b!6353605 (= e!3858446 e!3858452)))

(declare-fun res!2614364 () Bool)

(assert (=> b!6353605 (=> res!2614364 e!3858452)))

(declare-fun lt!2365378 () Bool)

(assert (=> b!6353605 (= res!2614364 (or (not (= lt!2365388 lt!2365378)) ((_ is Nil!64959) s!2326)))))

(assert (=> b!6353605 (= (Exists!3331 lambda!349660) (Exists!3331 lambda!349661))))

(declare-fun lt!2365383 () Unit!158375)

(assert (=> b!6353605 (= lt!2365383 (lemmaExistCutMatchRandMatchRSpecEquivalent!1868 (regOne!33034 r!7292) (regTwo!33034 r!7292) s!2326))))

(assert (=> b!6353605 (= lt!2365378 (Exists!3331 lambda!349660))))

(assert (=> b!6353605 (= lt!2365378 (isDefined!12855 (findConcatSeparation!2566 (regOne!33034 r!7292) (regTwo!33034 r!7292) Nil!64959 s!2326 s!2326)))))

(declare-fun lt!2365370 () Unit!158375)

(assert (=> b!6353605 (= lt!2365370 (lemmaFindConcatSeparationEquivalentToExists!2330 (regOne!33034 r!7292) (regTwo!33034 r!7292) s!2326))))

(assert (= (and start!629466 res!2614353) b!6353579))

(assert (= (and b!6353579 res!2614359) b!6353604))

(assert (= (and b!6353604 res!2614366) b!6353577))

(assert (= (and b!6353577 (not res!2614346)) b!6353581))

(assert (= (and b!6353581 (not res!2614355)) b!6353591))

(assert (= (and b!6353591 (not res!2614356)) b!6353586))

(assert (= (and b!6353586 (not res!2614349)) b!6353589))

(assert (= (and b!6353589 (not res!2614363)) b!6353576))

(assert (= (and b!6353576 (not res!2614357)) b!6353605))

(assert (= (and b!6353605 (not res!2614364)) b!6353598))

(assert (= (and b!6353598 (not res!2614360)) b!6353601))

(assert (= (and b!6353601 c!1156049) b!6353583))

(assert (= (and b!6353601 (not c!1156049)) b!6353578))

(assert (= (and b!6353583 (not res!2614365)) b!6353580))

(assert (= (and b!6353601 (not res!2614350)) b!6353592))

(assert (= (and b!6353592 res!2614352) b!6353588))

(assert (= (and b!6353592 (not res!2614354)) b!6353575))

(assert (= (and b!6353575 (not res!2614344)) b!6353573))

(assert (= (and b!6353573 (not res!2614347)) b!6353597))

(assert (= (and b!6353597 (not res!2614351)) b!6353593))

(assert (= (and b!6353593 (not res!2614345)) b!6353600))

(assert (= (and b!6353600 (not res!2614362)) b!6353602))

(assert (= (and b!6353602 (not res!2614367)) b!6353587))

(assert (= (and b!6353587 (not res!2614358)) b!6353582))

(assert (= (and b!6353582 (not res!2614368)) b!6353584))

(assert (= (and b!6353584 (not res!2614361)) b!6353590))

(assert (= (and b!6353590 (not res!2614348)) b!6353595))

(assert (= (and start!629466 ((_ is ElementMatch!16261) r!7292)) b!6353572))

(assert (= (and start!629466 ((_ is Concat!25106) r!7292)) b!6353599))

(assert (= (and start!629466 ((_ is Star!16261) r!7292)) b!6353603))

(assert (= (and start!629466 ((_ is Union!16261) r!7292)) b!6353585))

(assert (= (and start!629466 condSetEmpty!43270) setIsEmpty!43270))

(assert (= (and start!629466 (not condSetEmpty!43270)) setNonEmpty!43270))

(assert (= setNonEmpty!43270 b!6353574))

(assert (= b!6353594 b!6353571))

(assert (= (and start!629466 ((_ is Cons!64960) zl!343)) b!6353594))

(assert (= (and start!629466 ((_ is Cons!64959) s!2326)) b!6353596))

(declare-fun m!7160140 () Bool)

(assert (=> b!6353584 m!7160140))

(declare-fun m!7160142 () Bool)

(assert (=> b!6353584 m!7160142))

(declare-fun m!7160144 () Bool)

(assert (=> b!6353598 m!7160144))

(declare-fun m!7160146 () Bool)

(assert (=> b!6353604 m!7160146))

(declare-fun m!7160148 () Bool)

(assert (=> b!6353605 m!7160148))

(declare-fun m!7160150 () Bool)

(assert (=> b!6353605 m!7160150))

(declare-fun m!7160152 () Bool)

(assert (=> b!6353605 m!7160152))

(declare-fun m!7160154 () Bool)

(assert (=> b!6353605 m!7160154))

(assert (=> b!6353605 m!7160154))

(declare-fun m!7160156 () Bool)

(assert (=> b!6353605 m!7160156))

(assert (=> b!6353605 m!7160148))

(declare-fun m!7160158 () Bool)

(assert (=> b!6353605 m!7160158))

(declare-fun m!7160160 () Bool)

(assert (=> b!6353573 m!7160160))

(declare-fun m!7160162 () Bool)

(assert (=> b!6353590 m!7160162))

(declare-fun m!7160164 () Bool)

(assert (=> b!6353590 m!7160164))

(declare-fun m!7160166 () Bool)

(assert (=> b!6353590 m!7160166))

(declare-fun m!7160168 () Bool)

(assert (=> b!6353590 m!7160168))

(declare-fun m!7160170 () Bool)

(assert (=> b!6353590 m!7160170))

(declare-fun m!7160172 () Bool)

(assert (=> b!6353590 m!7160172))

(declare-fun m!7160174 () Bool)

(assert (=> b!6353590 m!7160174))

(declare-fun m!7160176 () Bool)

(assert (=> b!6353590 m!7160176))

(declare-fun m!7160178 () Bool)

(assert (=> b!6353590 m!7160178))

(assert (=> b!6353590 m!7160176))

(declare-fun m!7160180 () Bool)

(assert (=> b!6353590 m!7160180))

(declare-fun m!7160182 () Bool)

(assert (=> b!6353590 m!7160182))

(declare-fun m!7160184 () Bool)

(assert (=> b!6353590 m!7160184))

(declare-fun m!7160186 () Bool)

(assert (=> b!6353590 m!7160186))

(declare-fun m!7160188 () Bool)

(assert (=> b!6353590 m!7160188))

(declare-fun m!7160190 () Bool)

(assert (=> b!6353590 m!7160190))

(declare-fun m!7160192 () Bool)

(assert (=> b!6353590 m!7160192))

(declare-fun m!7160194 () Bool)

(assert (=> b!6353590 m!7160194))

(declare-fun m!7160196 () Bool)

(assert (=> b!6353590 m!7160196))

(declare-fun m!7160198 () Bool)

(assert (=> b!6353590 m!7160198))

(assert (=> b!6353590 m!7160170))

(declare-fun m!7160200 () Bool)

(assert (=> b!6353590 m!7160200))

(assert (=> b!6353590 m!7160174))

(declare-fun m!7160202 () Bool)

(assert (=> b!6353590 m!7160202))

(declare-fun m!7160204 () Bool)

(assert (=> b!6353590 m!7160204))

(declare-fun m!7160206 () Bool)

(assert (=> b!6353581 m!7160206))

(declare-fun m!7160208 () Bool)

(assert (=> b!6353588 m!7160208))

(declare-fun m!7160210 () Bool)

(assert (=> b!6353587 m!7160210))

(declare-fun m!7160212 () Bool)

(assert (=> b!6353587 m!7160212))

(declare-fun m!7160214 () Bool)

(assert (=> b!6353601 m!7160214))

(declare-fun m!7160216 () Bool)

(assert (=> b!6353601 m!7160216))

(declare-fun m!7160218 () Bool)

(assert (=> b!6353601 m!7160218))

(declare-fun m!7160220 () Bool)

(assert (=> b!6353601 m!7160220))

(declare-fun m!7160222 () Bool)

(assert (=> b!6353601 m!7160222))

(declare-fun m!7160224 () Bool)

(assert (=> b!6353601 m!7160224))

(declare-fun m!7160226 () Bool)

(assert (=> b!6353601 m!7160226))

(declare-fun m!7160228 () Bool)

(assert (=> b!6353580 m!7160228))

(declare-fun m!7160230 () Bool)

(assert (=> b!6353600 m!7160230))

(declare-fun m!7160232 () Bool)

(assert (=> b!6353594 m!7160232))

(declare-fun m!7160234 () Bool)

(assert (=> b!6353593 m!7160234))

(declare-fun m!7160236 () Bool)

(assert (=> b!6353593 m!7160236))

(declare-fun m!7160238 () Bool)

(assert (=> b!6353593 m!7160238))

(declare-fun m!7160240 () Bool)

(assert (=> b!6353593 m!7160240))

(declare-fun m!7160242 () Bool)

(assert (=> b!6353593 m!7160242))

(declare-fun m!7160244 () Bool)

(assert (=> b!6353597 m!7160244))

(declare-fun m!7160246 () Bool)

(assert (=> b!6353597 m!7160246))

(declare-fun m!7160248 () Bool)

(assert (=> b!6353589 m!7160248))

(assert (=> b!6353589 m!7160248))

(declare-fun m!7160250 () Bool)

(assert (=> b!6353589 m!7160250))

(declare-fun m!7160252 () Bool)

(assert (=> b!6353583 m!7160252))

(assert (=> b!6353583 m!7160246))

(declare-fun m!7160254 () Bool)

(assert (=> b!6353583 m!7160254))

(declare-fun m!7160256 () Bool)

(assert (=> b!6353595 m!7160256))

(declare-fun m!7160258 () Bool)

(assert (=> b!6353591 m!7160258))

(declare-fun m!7160260 () Bool)

(assert (=> b!6353582 m!7160260))

(declare-fun m!7160262 () Bool)

(assert (=> b!6353582 m!7160262))

(declare-fun m!7160264 () Bool)

(assert (=> setNonEmpty!43270 m!7160264))

(declare-fun m!7160266 () Bool)

(assert (=> b!6353577 m!7160266))

(declare-fun m!7160268 () Bool)

(assert (=> b!6353577 m!7160268))

(declare-fun m!7160270 () Bool)

(assert (=> b!6353577 m!7160270))

(declare-fun m!7160272 () Bool)

(assert (=> b!6353579 m!7160272))

(declare-fun m!7160274 () Bool)

(assert (=> start!629466 m!7160274))

(check-sat (not b!6353588) (not b!6353593) (not b!6353574) (not b!6353598) (not b!6353587) (not b!6353577) (not start!629466) (not b!6353583) (not b!6353605) (not b!6353581) (not b!6353580) (not b!6353591) (not b!6353589) (not b!6353594) (not b!6353597) tp_is_empty!41775 (not b!6353582) (not b!6353584) (not setNonEmpty!43270) (not b!6353585) (not b!6353573) (not b!6353579) (not b!6353590) (not b!6353601) (not b!6353596) (not b!6353603) (not b!6353571) (not b!6353604) (not b!6353600) (not b!6353599) (not b!6353595))
(check-sat)
(get-model)

(declare-fun b!6353752 () Bool)

(declare-fun e!3858533 () (InoxSet Context!11290))

(declare-fun call!541838 () (InoxSet Context!11290))

(declare-fun call!541840 () (InoxSet Context!11290))

(assert (=> b!6353752 (= e!3858533 ((_ map or) call!541838 call!541840))))

(declare-fun bm!541833 () Bool)

(declare-fun call!541841 () (InoxSet Context!11290))

(declare-fun c!1156115 () Bool)

(declare-fun c!1156113 () Bool)

(declare-fun call!541843 () List!65082)

(declare-fun c!1156112 () Bool)

(assert (=> bm!541833 (= call!541841 (derivationStepZipperDown!1509 (ite c!1156113 (regTwo!33035 (regOne!33034 (regOne!33034 r!7292))) (ite c!1156112 (regTwo!33034 (regOne!33034 (regOne!33034 r!7292))) (ite c!1156115 (regOne!33034 (regOne!33034 (regOne!33034 r!7292))) (reg!16590 (regOne!33034 (regOne!33034 r!7292)))))) (ite (or c!1156113 c!1156112) (Context!11291 lt!2365395) (Context!11291 call!541843)) (h!71407 s!2326)))))

(declare-fun b!6353753 () Bool)

(declare-fun e!3858535 () (InoxSet Context!11290))

(assert (=> b!6353753 (= e!3858533 e!3858535)))

(assert (=> b!6353753 (= c!1156115 ((_ is Concat!25106) (regOne!33034 (regOne!33034 r!7292))))))

(declare-fun call!541842 () List!65082)

(declare-fun bm!541834 () Bool)

(assert (=> bm!541834 (= call!541838 (derivationStepZipperDown!1509 (ite c!1156113 (regOne!33035 (regOne!33034 (regOne!33034 r!7292))) (regOne!33034 (regOne!33034 (regOne!33034 r!7292)))) (ite c!1156113 (Context!11291 lt!2365395) (Context!11291 call!541842)) (h!71407 s!2326)))))

(declare-fun b!6353754 () Bool)

(declare-fun e!3858536 () Bool)

(assert (=> b!6353754 (= c!1156112 e!3858536)))

(declare-fun res!2614399 () Bool)

(assert (=> b!6353754 (=> (not res!2614399) (not e!3858536))))

(assert (=> b!6353754 (= res!2614399 ((_ is Concat!25106) (regOne!33034 (regOne!33034 r!7292))))))

(declare-fun e!3858534 () (InoxSet Context!11290))

(assert (=> b!6353754 (= e!3858534 e!3858533)))

(declare-fun bm!541835 () Bool)

(declare-fun $colon$colon!2122 (List!65082 Regex!16261) List!65082)

(assert (=> bm!541835 (= call!541842 ($colon$colon!2122 (exprs!6145 (Context!11291 lt!2365395)) (ite (or c!1156112 c!1156115) (regTwo!33034 (regOne!33034 (regOne!33034 r!7292))) (regOne!33034 (regOne!33034 r!7292)))))))

(declare-fun b!6353755 () Bool)

(declare-fun e!3858531 () (InoxSet Context!11290))

(declare-fun call!541839 () (InoxSet Context!11290))

(assert (=> b!6353755 (= e!3858531 call!541839)))

(declare-fun d!1993454 () Bool)

(declare-fun c!1156114 () Bool)

(assert (=> d!1993454 (= c!1156114 (and ((_ is ElementMatch!16261) (regOne!33034 (regOne!33034 r!7292))) (= (c!1156050 (regOne!33034 (regOne!33034 r!7292))) (h!71407 s!2326))))))

(declare-fun e!3858532 () (InoxSet Context!11290))

(assert (=> d!1993454 (= (derivationStepZipperDown!1509 (regOne!33034 (regOne!33034 r!7292)) (Context!11291 lt!2365395) (h!71407 s!2326)) e!3858532)))

(declare-fun bm!541836 () Bool)

(assert (=> bm!541836 (= call!541840 call!541841)))

(declare-fun bm!541837 () Bool)

(assert (=> bm!541837 (= call!541843 call!541842)))

(declare-fun b!6353756 () Bool)

(assert (=> b!6353756 (= e!3858535 call!541839)))

(declare-fun b!6353757 () Bool)

(declare-fun c!1156111 () Bool)

(assert (=> b!6353757 (= c!1156111 ((_ is Star!16261) (regOne!33034 (regOne!33034 r!7292))))))

(assert (=> b!6353757 (= e!3858535 e!3858531)))

(declare-fun b!6353758 () Bool)

(assert (=> b!6353758 (= e!3858532 e!3858534)))

(assert (=> b!6353758 (= c!1156113 ((_ is Union!16261) (regOne!33034 (regOne!33034 r!7292))))))

(declare-fun bm!541838 () Bool)

(assert (=> bm!541838 (= call!541839 call!541840)))

(declare-fun b!6353759 () Bool)

(assert (=> b!6353759 (= e!3858534 ((_ map or) call!541838 call!541841))))

(declare-fun b!6353760 () Bool)

(assert (=> b!6353760 (= e!3858531 ((as const (Array Context!11290 Bool)) false))))

(declare-fun b!6353761 () Bool)

(assert (=> b!6353761 (= e!3858532 (store ((as const (Array Context!11290 Bool)) false) (Context!11291 lt!2365395) true))))

(declare-fun b!6353762 () Bool)

(assert (=> b!6353762 (= e!3858536 (nullable!6254 (regOne!33034 (regOne!33034 (regOne!33034 r!7292)))))))

(assert (= (and d!1993454 c!1156114) b!6353761))

(assert (= (and d!1993454 (not c!1156114)) b!6353758))

(assert (= (and b!6353758 c!1156113) b!6353759))

(assert (= (and b!6353758 (not c!1156113)) b!6353754))

(assert (= (and b!6353754 res!2614399) b!6353762))

(assert (= (and b!6353754 c!1156112) b!6353752))

(assert (= (and b!6353754 (not c!1156112)) b!6353753))

(assert (= (and b!6353753 c!1156115) b!6353756))

(assert (= (and b!6353753 (not c!1156115)) b!6353757))

(assert (= (and b!6353757 c!1156111) b!6353755))

(assert (= (and b!6353757 (not c!1156111)) b!6353760))

(assert (= (or b!6353756 b!6353755) bm!541837))

(assert (= (or b!6353756 b!6353755) bm!541838))

(assert (= (or b!6353752 bm!541837) bm!541835))

(assert (= (or b!6353752 bm!541838) bm!541836))

(assert (= (or b!6353759 bm!541836) bm!541833))

(assert (= (or b!6353759 b!6353752) bm!541834))

(declare-fun m!7160396 () Bool)

(assert (=> bm!541835 m!7160396))

(declare-fun m!7160398 () Bool)

(assert (=> b!6353761 m!7160398))

(declare-fun m!7160400 () Bool)

(assert (=> bm!541833 m!7160400))

(declare-fun m!7160402 () Bool)

(assert (=> b!6353762 m!7160402))

(declare-fun m!7160404 () Bool)

(assert (=> bm!541834 m!7160404))

(assert (=> b!6353573 d!1993454))

(declare-fun d!1993480 () Bool)

(declare-fun choose!47164 ((InoxSet Context!11290) Int) (InoxSet Context!11290))

(assert (=> d!1993480 (= (flatMap!1766 lt!2365376 lambda!349662) (choose!47164 lt!2365376 lambda!349662))))

(declare-fun bs!1591379 () Bool)

(assert (= bs!1591379 d!1993480))

(declare-fun m!7160406 () Bool)

(assert (=> bs!1591379 m!7160406))

(assert (=> b!6353593 d!1993480))

(declare-fun b!6353777 () Bool)

(declare-fun e!3858547 () (InoxSet Context!11290))

(declare-fun e!3858546 () (InoxSet Context!11290))

(assert (=> b!6353777 (= e!3858547 e!3858546)))

(declare-fun c!1156121 () Bool)

(assert (=> b!6353777 (= c!1156121 ((_ is Cons!64958) (exprs!6145 lt!2365389)))))

(declare-fun b!6353778 () Bool)

(declare-fun call!541846 () (InoxSet Context!11290))

(assert (=> b!6353778 (= e!3858546 call!541846)))

(declare-fun b!6353779 () Bool)

(declare-fun e!3858545 () Bool)

(assert (=> b!6353779 (= e!3858545 (nullable!6254 (h!71406 (exprs!6145 lt!2365389))))))

(declare-fun d!1993482 () Bool)

(declare-fun c!1156120 () Bool)

(assert (=> d!1993482 (= c!1156120 e!3858545)))

(declare-fun res!2614406 () Bool)

(assert (=> d!1993482 (=> (not res!2614406) (not e!3858545))))

(assert (=> d!1993482 (= res!2614406 ((_ is Cons!64958) (exprs!6145 lt!2365389)))))

(assert (=> d!1993482 (= (derivationStepZipperUp!1435 lt!2365389 (h!71407 s!2326)) e!3858547)))

(declare-fun b!6353780 () Bool)

(assert (=> b!6353780 (= e!3858546 ((as const (Array Context!11290 Bool)) false))))

(declare-fun b!6353781 () Bool)

(assert (=> b!6353781 (= e!3858547 ((_ map or) call!541846 (derivationStepZipperUp!1435 (Context!11291 (t!378672 (exprs!6145 lt!2365389))) (h!71407 s!2326))))))

(declare-fun bm!541841 () Bool)

(assert (=> bm!541841 (= call!541846 (derivationStepZipperDown!1509 (h!71406 (exprs!6145 lt!2365389)) (Context!11291 (t!378672 (exprs!6145 lt!2365389))) (h!71407 s!2326)))))

(assert (= (and d!1993482 res!2614406) b!6353779))

(assert (= (and d!1993482 c!1156120) b!6353781))

(assert (= (and d!1993482 (not c!1156120)) b!6353777))

(assert (= (and b!6353777 c!1156121) b!6353778))

(assert (= (and b!6353777 (not c!1156121)) b!6353780))

(assert (= (or b!6353781 b!6353778) bm!541841))

(declare-fun m!7160412 () Bool)

(assert (=> b!6353779 m!7160412))

(declare-fun m!7160414 () Bool)

(assert (=> b!6353781 m!7160414))

(declare-fun m!7160416 () Bool)

(assert (=> bm!541841 m!7160416))

(assert (=> b!6353593 d!1993482))

(declare-fun d!1993486 () Bool)

(declare-fun dynLambda!25759 (Int Context!11290) (InoxSet Context!11290))

(assert (=> d!1993486 (= (flatMap!1766 lt!2365376 lambda!349662) (dynLambda!25759 lambda!349662 lt!2365389))))

(declare-fun lt!2365437 () Unit!158375)

(declare-fun choose!47166 ((InoxSet Context!11290) Context!11290 Int) Unit!158375)

(assert (=> d!1993486 (= lt!2365437 (choose!47166 lt!2365376 lt!2365389 lambda!349662))))

(assert (=> d!1993486 (= lt!2365376 (store ((as const (Array Context!11290 Bool)) false) lt!2365389 true))))

(assert (=> d!1993486 (= (lemmaFlatMapOnSingletonSet!1292 lt!2365376 lt!2365389 lambda!349662) lt!2365437)))

(declare-fun b_lambda!241639 () Bool)

(assert (=> (not b_lambda!241639) (not d!1993486)))

(declare-fun bs!1591386 () Bool)

(assert (= bs!1591386 d!1993486))

(assert (=> bs!1591386 m!7160242))

(declare-fun m!7160418 () Bool)

(assert (=> bs!1591386 m!7160418))

(declare-fun m!7160420 () Bool)

(assert (=> bs!1591386 m!7160420))

(assert (=> bs!1591386 m!7160240))

(assert (=> b!6353593 d!1993486))

(declare-fun bs!1591389 () Bool)

(declare-fun d!1993488 () Bool)

(assert (= bs!1591389 (and d!1993488 b!6353601)))

(declare-fun lambda!349692 () Int)

(assert (=> bs!1591389 (= lambda!349692 lambda!349662)))

(assert (=> d!1993488 true))

(assert (=> d!1993488 (= (derivationStepZipper!2227 lt!2365376 (h!71407 s!2326)) (flatMap!1766 lt!2365376 lambda!349692))))

(declare-fun bs!1591390 () Bool)

(assert (= bs!1591390 d!1993488))

(declare-fun m!7160430 () Bool)

(assert (=> bs!1591390 m!7160430))

(assert (=> b!6353593 d!1993488))

(declare-fun b!6353874 () Bool)

(declare-fun e!3858612 () Bool)

(declare-fun lt!2365446 () Regex!16261)

(declare-fun isEmptyExpr!1663 (Regex!16261) Bool)

(assert (=> b!6353874 (= e!3858612 (isEmptyExpr!1663 lt!2365446))))

(declare-fun b!6353875 () Bool)

(declare-fun e!3858608 () Regex!16261)

(declare-fun e!3858611 () Regex!16261)

(assert (=> b!6353875 (= e!3858608 e!3858611)))

(declare-fun c!1156154 () Bool)

(assert (=> b!6353875 (= c!1156154 ((_ is Cons!64958) (exprs!6145 (h!71408 zl!343))))))

(declare-fun b!6353876 () Bool)

(declare-fun e!3858607 () Bool)

(declare-fun head!13014 (List!65082) Regex!16261)

(assert (=> b!6353876 (= e!3858607 (= lt!2365446 (head!13014 (exprs!6145 (h!71408 zl!343)))))))

(declare-fun b!6353877 () Bool)

(assert (=> b!6353877 (= e!3858608 (h!71406 (exprs!6145 (h!71408 zl!343))))))

(declare-fun b!6353878 () Bool)

(assert (=> b!6353878 (= e!3858611 EmptyExpr!16261)))

(declare-fun b!6353879 () Bool)

(assert (=> b!6353879 (= e!3858611 (Concat!25106 (h!71406 (exprs!6145 (h!71408 zl!343))) (generalisedConcat!1858 (t!378672 (exprs!6145 (h!71408 zl!343))))))))

(declare-fun b!6353880 () Bool)

(declare-fun isConcat!1186 (Regex!16261) Bool)

(assert (=> b!6353880 (= e!3858607 (isConcat!1186 lt!2365446))))

(declare-fun d!1993494 () Bool)

(declare-fun e!3858610 () Bool)

(assert (=> d!1993494 e!3858610))

(declare-fun res!2614444 () Bool)

(assert (=> d!1993494 (=> (not res!2614444) (not e!3858610))))

(assert (=> d!1993494 (= res!2614444 (validRegex!7997 lt!2365446))))

(assert (=> d!1993494 (= lt!2365446 e!3858608)))

(declare-fun c!1156153 () Bool)

(declare-fun e!3858609 () Bool)

(assert (=> d!1993494 (= c!1156153 e!3858609)))

(declare-fun res!2614443 () Bool)

(assert (=> d!1993494 (=> (not res!2614443) (not e!3858609))))

(assert (=> d!1993494 (= res!2614443 ((_ is Cons!64958) (exprs!6145 (h!71408 zl!343))))))

(declare-fun lambda!349698 () Int)

(declare-fun forall!15434 (List!65082 Int) Bool)

(assert (=> d!1993494 (forall!15434 (exprs!6145 (h!71408 zl!343)) lambda!349698)))

(assert (=> d!1993494 (= (generalisedConcat!1858 (exprs!6145 (h!71408 zl!343))) lt!2365446)))

(declare-fun b!6353881 () Bool)

(assert (=> b!6353881 (= e!3858612 e!3858607)))

(declare-fun c!1156151 () Bool)

(declare-fun tail!12099 (List!65082) List!65082)

(assert (=> b!6353881 (= c!1156151 (isEmpty!37054 (tail!12099 (exprs!6145 (h!71408 zl!343)))))))

(declare-fun b!6353882 () Bool)

(assert (=> b!6353882 (= e!3858610 e!3858612)))

(declare-fun c!1156152 () Bool)

(assert (=> b!6353882 (= c!1156152 (isEmpty!37054 (exprs!6145 (h!71408 zl!343))))))

(declare-fun b!6353883 () Bool)

(assert (=> b!6353883 (= e!3858609 (isEmpty!37054 (t!378672 (exprs!6145 (h!71408 zl!343)))))))

(assert (= (and d!1993494 res!2614443) b!6353883))

(assert (= (and d!1993494 c!1156153) b!6353877))

(assert (= (and d!1993494 (not c!1156153)) b!6353875))

(assert (= (and b!6353875 c!1156154) b!6353879))

(assert (= (and b!6353875 (not c!1156154)) b!6353878))

(assert (= (and d!1993494 res!2614444) b!6353882))

(assert (= (and b!6353882 c!1156152) b!6353874))

(assert (= (and b!6353882 (not c!1156152)) b!6353881))

(assert (= (and b!6353881 c!1156151) b!6353876))

(assert (= (and b!6353881 (not c!1156151)) b!6353880))

(declare-fun m!7160466 () Bool)

(assert (=> b!6353882 m!7160466))

(declare-fun m!7160468 () Bool)

(assert (=> b!6353876 m!7160468))

(declare-fun m!7160470 () Bool)

(assert (=> b!6353880 m!7160470))

(declare-fun m!7160472 () Bool)

(assert (=> b!6353881 m!7160472))

(assert (=> b!6353881 m!7160472))

(declare-fun m!7160474 () Bool)

(assert (=> b!6353881 m!7160474))

(assert (=> b!6353883 m!7160144))

(declare-fun m!7160476 () Bool)

(assert (=> b!6353874 m!7160476))

(assert (=> b!6353879 m!7160178))

(declare-fun m!7160478 () Bool)

(assert (=> d!1993494 m!7160478))

(declare-fun m!7160480 () Bool)

(assert (=> d!1993494 m!7160480))

(assert (=> b!6353591 d!1993494))

(declare-fun b!6353938 () Bool)

(declare-fun e!3858648 () Bool)

(declare-fun e!3858651 () Bool)

(assert (=> b!6353938 (= e!3858648 e!3858651)))

(declare-fun c!1156175 () Bool)

(assert (=> b!6353938 (= c!1156175 ((_ is Union!16261) lt!2365379))))

(declare-fun d!1993504 () Bool)

(declare-fun res!2614465 () Bool)

(declare-fun e!3858650 () Bool)

(assert (=> d!1993504 (=> res!2614465 e!3858650)))

(assert (=> d!1993504 (= res!2614465 ((_ is ElementMatch!16261) lt!2365379))))

(assert (=> d!1993504 (= (validRegex!7997 lt!2365379) e!3858650)))

(declare-fun b!6353939 () Bool)

(declare-fun res!2614461 () Bool)

(declare-fun e!3858649 () Bool)

(assert (=> b!6353939 (=> res!2614461 e!3858649)))

(assert (=> b!6353939 (= res!2614461 (not ((_ is Concat!25106) lt!2365379)))))

(assert (=> b!6353939 (= e!3858651 e!3858649)))

(declare-fun bm!541857 () Bool)

(declare-fun call!541862 () Bool)

(assert (=> bm!541857 (= call!541862 (validRegex!7997 (ite c!1156175 (regOne!33035 lt!2365379) (regOne!33034 lt!2365379))))))

(declare-fun b!6353940 () Bool)

(declare-fun res!2614464 () Bool)

(declare-fun e!3858652 () Bool)

(assert (=> b!6353940 (=> (not res!2614464) (not e!3858652))))

(assert (=> b!6353940 (= res!2614464 call!541862)))

(assert (=> b!6353940 (= e!3858651 e!3858652)))

(declare-fun b!6353941 () Bool)

(assert (=> b!6353941 (= e!3858650 e!3858648)))

(declare-fun c!1156174 () Bool)

(assert (=> b!6353941 (= c!1156174 ((_ is Star!16261) lt!2365379))))

(declare-fun b!6353942 () Bool)

(declare-fun e!3858654 () Bool)

(declare-fun call!541864 () Bool)

(assert (=> b!6353942 (= e!3858654 call!541864)))

(declare-fun b!6353943 () Bool)

(declare-fun e!3858653 () Bool)

(assert (=> b!6353943 (= e!3858648 e!3858653)))

(declare-fun res!2614462 () Bool)

(assert (=> b!6353943 (= res!2614462 (not (nullable!6254 (reg!16590 lt!2365379))))))

(assert (=> b!6353943 (=> (not res!2614462) (not e!3858653))))

(declare-fun call!541863 () Bool)

(declare-fun bm!541858 () Bool)

(assert (=> bm!541858 (= call!541863 (validRegex!7997 (ite c!1156174 (reg!16590 lt!2365379) (ite c!1156175 (regTwo!33035 lt!2365379) (regTwo!33034 lt!2365379)))))))

(declare-fun b!6353944 () Bool)

(assert (=> b!6353944 (= e!3858652 call!541864)))

(declare-fun b!6353945 () Bool)

(assert (=> b!6353945 (= e!3858653 call!541863)))

(declare-fun bm!541859 () Bool)

(assert (=> bm!541859 (= call!541864 call!541863)))

(declare-fun b!6353946 () Bool)

(assert (=> b!6353946 (= e!3858649 e!3858654)))

(declare-fun res!2614463 () Bool)

(assert (=> b!6353946 (=> (not res!2614463) (not e!3858654))))

(assert (=> b!6353946 (= res!2614463 call!541862)))

(assert (= (and d!1993504 (not res!2614465)) b!6353941))

(assert (= (and b!6353941 c!1156174) b!6353943))

(assert (= (and b!6353941 (not c!1156174)) b!6353938))

(assert (= (and b!6353943 res!2614462) b!6353945))

(assert (= (and b!6353938 c!1156175) b!6353940))

(assert (= (and b!6353938 (not c!1156175)) b!6353939))

(assert (= (and b!6353940 res!2614464) b!6353944))

(assert (= (and b!6353939 (not res!2614461)) b!6353946))

(assert (= (and b!6353946 res!2614463) b!6353942))

(assert (= (or b!6353944 b!6353942) bm!541859))

(assert (= (or b!6353940 b!6353946) bm!541857))

(assert (= (or b!6353945 bm!541859) bm!541858))

(declare-fun m!7160512 () Bool)

(assert (=> bm!541857 m!7160512))

(declare-fun m!7160514 () Bool)

(assert (=> b!6353943 m!7160514))

(declare-fun m!7160516 () Bool)

(assert (=> bm!541858 m!7160516))

(assert (=> b!6353595 d!1993504))

(declare-fun bs!1591397 () Bool)

(declare-fun d!1993512 () Bool)

(assert (= bs!1591397 (and d!1993512 d!1993494)))

(declare-fun lambda!349707 () Int)

(assert (=> bs!1591397 (= lambda!349707 lambda!349698)))

(assert (=> d!1993512 (= (inv!83899 (h!71408 zl!343)) (forall!15434 (exprs!6145 (h!71408 zl!343)) lambda!349707))))

(declare-fun bs!1591398 () Bool)

(assert (= bs!1591398 d!1993512))

(declare-fun m!7160518 () Bool)

(assert (=> bs!1591398 m!7160518))

(assert (=> b!6353594 d!1993512))

(declare-fun d!1993516 () Bool)

(assert (=> d!1993516 (= (isEmpty!37054 (t!378672 (exprs!6145 (h!71408 zl!343)))) ((_ is Nil!64958) (t!378672 (exprs!6145 (h!71408 zl!343)))))))

(assert (=> b!6353598 d!1993516))

(declare-fun bs!1591413 () Bool)

(declare-fun b!6354039 () Bool)

(assert (= bs!1591413 (and b!6354039 b!6353605)))

(declare-fun lambda!349719 () Int)

(assert (=> bs!1591413 (not (= lambda!349719 lambda!349661))))

(declare-fun bs!1591414 () Bool)

(assert (= bs!1591414 (and b!6354039 b!6353590)))

(assert (=> bs!1591414 (not (= lambda!349719 lambda!349664))))

(assert (=> bs!1591414 (not (= lambda!349719 lambda!349663))))

(assert (=> bs!1591413 (not (= lambda!349719 lambda!349660))))

(assert (=> bs!1591414 (not (= lambda!349719 lambda!349665))))

(assert (=> b!6354039 true))

(assert (=> b!6354039 true))

(declare-fun bs!1591415 () Bool)

(declare-fun b!6354045 () Bool)

(assert (= bs!1591415 (and b!6354045 b!6353605)))

(declare-fun lambda!349720 () Int)

(assert (=> bs!1591415 (= lambda!349720 lambda!349661)))

(declare-fun bs!1591416 () Bool)

(assert (= bs!1591416 (and b!6354045 b!6353590)))

(assert (=> bs!1591416 (= (and (= (regOne!33034 r!7292) (regOne!33034 (regOne!33034 r!7292))) (= (regTwo!33034 r!7292) lt!2365374)) (= lambda!349720 lambda!349664))))

(assert (=> bs!1591416 (not (= lambda!349720 lambda!349663))))

(declare-fun bs!1591417 () Bool)

(assert (= bs!1591417 (and b!6354045 b!6354039)))

(assert (=> bs!1591417 (not (= lambda!349720 lambda!349719))))

(assert (=> bs!1591415 (not (= lambda!349720 lambda!349660))))

(assert (=> bs!1591416 (not (= lambda!349720 lambda!349665))))

(assert (=> b!6354045 true))

(assert (=> b!6354045 true))

(declare-fun b!6354038 () Bool)

(declare-fun e!3858709 () Bool)

(assert (=> b!6354038 (= e!3858709 (= s!2326 (Cons!64959 (c!1156050 r!7292) Nil!64959)))))

(declare-fun e!3858713 () Bool)

(declare-fun call!541876 () Bool)

(assert (=> b!6354039 (= e!3858713 call!541876)))

(declare-fun b!6354040 () Bool)

(declare-fun e!3858708 () Bool)

(declare-fun e!3858711 () Bool)

(assert (=> b!6354040 (= e!3858708 e!3858711)))

(declare-fun res!2614505 () Bool)

(assert (=> b!6354040 (= res!2614505 (matchRSpec!3362 (regOne!33035 r!7292) s!2326))))

(assert (=> b!6354040 (=> res!2614505 e!3858711)))

(declare-fun bm!541870 () Bool)

(declare-fun c!1156206 () Bool)

(assert (=> bm!541870 (= call!541876 (Exists!3331 (ite c!1156206 lambda!349719 lambda!349720)))))

(declare-fun bm!541871 () Bool)

(declare-fun call!541875 () Bool)

(declare-fun isEmpty!37057 (List!65083) Bool)

(assert (=> bm!541871 (= call!541875 (isEmpty!37057 s!2326))))

(declare-fun b!6354041 () Bool)

(declare-fun e!3858710 () Bool)

(declare-fun e!3858712 () Bool)

(assert (=> b!6354041 (= e!3858710 e!3858712)))

(declare-fun res!2614506 () Bool)

(assert (=> b!6354041 (= res!2614506 (not ((_ is EmptyLang!16261) r!7292)))))

(assert (=> b!6354041 (=> (not res!2614506) (not e!3858712))))

(declare-fun b!6354042 () Bool)

(assert (=> b!6354042 (= e!3858710 call!541875)))

(declare-fun b!6354043 () Bool)

(declare-fun e!3858707 () Bool)

(assert (=> b!6354043 (= e!3858708 e!3858707)))

(assert (=> b!6354043 (= c!1156206 ((_ is Star!16261) r!7292))))

(declare-fun b!6354044 () Bool)

(assert (=> b!6354044 (= e!3858711 (matchRSpec!3362 (regTwo!33035 r!7292) s!2326))))

(assert (=> b!6354045 (= e!3858707 call!541876)))

(declare-fun b!6354037 () Bool)

(declare-fun c!1156204 () Bool)

(assert (=> b!6354037 (= c!1156204 ((_ is ElementMatch!16261) r!7292))))

(assert (=> b!6354037 (= e!3858712 e!3858709)))

(declare-fun d!1993522 () Bool)

(declare-fun c!1156203 () Bool)

(assert (=> d!1993522 (= c!1156203 ((_ is EmptyExpr!16261) r!7292))))

(assert (=> d!1993522 (= (matchRSpec!3362 r!7292 s!2326) e!3858710)))

(declare-fun b!6354046 () Bool)

(declare-fun c!1156205 () Bool)

(assert (=> b!6354046 (= c!1156205 ((_ is Union!16261) r!7292))))

(assert (=> b!6354046 (= e!3858709 e!3858708)))

(declare-fun b!6354047 () Bool)

(declare-fun res!2614504 () Bool)

(assert (=> b!6354047 (=> res!2614504 e!3858713)))

(assert (=> b!6354047 (= res!2614504 call!541875)))

(assert (=> b!6354047 (= e!3858707 e!3858713)))

(assert (= (and d!1993522 c!1156203) b!6354042))

(assert (= (and d!1993522 (not c!1156203)) b!6354041))

(assert (= (and b!6354041 res!2614506) b!6354037))

(assert (= (and b!6354037 c!1156204) b!6354038))

(assert (= (and b!6354037 (not c!1156204)) b!6354046))

(assert (= (and b!6354046 c!1156205) b!6354040))

(assert (= (and b!6354046 (not c!1156205)) b!6354043))

(assert (= (and b!6354040 (not res!2614505)) b!6354044))

(assert (= (and b!6354043 c!1156206) b!6354047))

(assert (= (and b!6354043 (not c!1156206)) b!6354045))

(assert (= (and b!6354047 (not res!2614504)) b!6354039))

(assert (= (or b!6354039 b!6354045) bm!541870))

(assert (= (or b!6354042 b!6354047) bm!541871))

(declare-fun m!7160546 () Bool)

(assert (=> b!6354040 m!7160546))

(declare-fun m!7160548 () Bool)

(assert (=> bm!541870 m!7160548))

(declare-fun m!7160550 () Bool)

(assert (=> bm!541871 m!7160550))

(declare-fun m!7160552 () Bool)

(assert (=> b!6354044 m!7160552))

(assert (=> b!6353577 d!1993522))

(declare-fun b!6354135 () Bool)

(declare-fun e!3858762 () Bool)

(declare-fun head!13015 (List!65083) C!32792)

(assert (=> b!6354135 (= e!3858762 (not (= (head!13015 s!2326) (c!1156050 r!7292))))))

(declare-fun b!6354136 () Bool)

(declare-fun e!3858766 () Bool)

(declare-fun lt!2365476 () Bool)

(assert (=> b!6354136 (= e!3858766 (not lt!2365476))))

(declare-fun b!6354137 () Bool)

(declare-fun e!3858764 () Bool)

(declare-fun derivativeStep!4965 (Regex!16261 C!32792) Regex!16261)

(declare-fun tail!12100 (List!65083) List!65083)

(assert (=> b!6354137 (= e!3858764 (matchR!8444 (derivativeStep!4965 r!7292 (head!13015 s!2326)) (tail!12100 s!2326)))))

(declare-fun b!6354138 () Bool)

(declare-fun res!2614552 () Bool)

(declare-fun e!3858761 () Bool)

(assert (=> b!6354138 (=> res!2614552 e!3858761)))

(declare-fun e!3858763 () Bool)

(assert (=> b!6354138 (= res!2614552 e!3858763)))

(declare-fun res!2614557 () Bool)

(assert (=> b!6354138 (=> (not res!2614557) (not e!3858763))))

(assert (=> b!6354138 (= res!2614557 lt!2365476)))

(declare-fun b!6354139 () Bool)

(declare-fun e!3858765 () Bool)

(assert (=> b!6354139 (= e!3858765 e!3858766)))

(declare-fun c!1156229 () Bool)

(assert (=> b!6354139 (= c!1156229 ((_ is EmptyLang!16261) r!7292))))

(declare-fun b!6354140 () Bool)

(declare-fun res!2614553 () Bool)

(assert (=> b!6354140 (=> (not res!2614553) (not e!3858763))))

(assert (=> b!6354140 (= res!2614553 (isEmpty!37057 (tail!12100 s!2326)))))

(declare-fun b!6354141 () Bool)

(assert (=> b!6354141 (= e!3858763 (= (head!13015 s!2326) (c!1156050 r!7292)))))

(declare-fun b!6354142 () Bool)

(declare-fun e!3858760 () Bool)

(assert (=> b!6354142 (= e!3858760 e!3858762)))

(declare-fun res!2614554 () Bool)

(assert (=> b!6354142 (=> res!2614554 e!3858762)))

(declare-fun call!541885 () Bool)

(assert (=> b!6354142 (= res!2614554 call!541885)))

(declare-fun b!6354143 () Bool)

(assert (=> b!6354143 (= e!3858761 e!3858760)))

(declare-fun res!2614556 () Bool)

(assert (=> b!6354143 (=> (not res!2614556) (not e!3858760))))

(assert (=> b!6354143 (= res!2614556 (not lt!2365476))))

(declare-fun b!6354144 () Bool)

(declare-fun res!2614555 () Bool)

(assert (=> b!6354144 (=> res!2614555 e!3858762)))

(assert (=> b!6354144 (= res!2614555 (not (isEmpty!37057 (tail!12100 s!2326))))))

(declare-fun b!6354145 () Bool)

(declare-fun res!2614559 () Bool)

(assert (=> b!6354145 (=> (not res!2614559) (not e!3858763))))

(assert (=> b!6354145 (= res!2614559 (not call!541885))))

(declare-fun b!6354146 () Bool)

(assert (=> b!6354146 (= e!3858764 (nullable!6254 r!7292))))

(declare-fun b!6354147 () Bool)

(assert (=> b!6354147 (= e!3858765 (= lt!2365476 call!541885))))

(declare-fun b!6354148 () Bool)

(declare-fun res!2614558 () Bool)

(assert (=> b!6354148 (=> res!2614558 e!3858761)))

(assert (=> b!6354148 (= res!2614558 (not ((_ is ElementMatch!16261) r!7292)))))

(assert (=> b!6354148 (= e!3858766 e!3858761)))

(declare-fun d!1993530 () Bool)

(assert (=> d!1993530 e!3858765))

(declare-fun c!1156230 () Bool)

(assert (=> d!1993530 (= c!1156230 ((_ is EmptyExpr!16261) r!7292))))

(assert (=> d!1993530 (= lt!2365476 e!3858764)))

(declare-fun c!1156228 () Bool)

(assert (=> d!1993530 (= c!1156228 (isEmpty!37057 s!2326))))

(assert (=> d!1993530 (validRegex!7997 r!7292)))

(assert (=> d!1993530 (= (matchR!8444 r!7292 s!2326) lt!2365476)))

(declare-fun bm!541880 () Bool)

(assert (=> bm!541880 (= call!541885 (isEmpty!37057 s!2326))))

(assert (= (and d!1993530 c!1156228) b!6354146))

(assert (= (and d!1993530 (not c!1156228)) b!6354137))

(assert (= (and d!1993530 c!1156230) b!6354147))

(assert (= (and d!1993530 (not c!1156230)) b!6354139))

(assert (= (and b!6354139 c!1156229) b!6354136))

(assert (= (and b!6354139 (not c!1156229)) b!6354148))

(assert (= (and b!6354148 (not res!2614558)) b!6354138))

(assert (= (and b!6354138 res!2614557) b!6354145))

(assert (= (and b!6354145 res!2614559) b!6354140))

(assert (= (and b!6354140 res!2614553) b!6354141))

(assert (= (and b!6354138 (not res!2614552)) b!6354143))

(assert (= (and b!6354143 res!2614556) b!6354142))

(assert (= (and b!6354142 (not res!2614554)) b!6354144))

(assert (= (and b!6354144 (not res!2614555)) b!6354135))

(assert (= (or b!6354147 b!6354142 b!6354145) bm!541880))

(assert (=> bm!541880 m!7160550))

(assert (=> d!1993530 m!7160550))

(assert (=> d!1993530 m!7160274))

(declare-fun m!7160596 () Bool)

(assert (=> b!6354137 m!7160596))

(assert (=> b!6354137 m!7160596))

(declare-fun m!7160598 () Bool)

(assert (=> b!6354137 m!7160598))

(declare-fun m!7160600 () Bool)

(assert (=> b!6354137 m!7160600))

(assert (=> b!6354137 m!7160598))

(assert (=> b!6354137 m!7160600))

(declare-fun m!7160602 () Bool)

(assert (=> b!6354137 m!7160602))

(assert (=> b!6354135 m!7160596))

(assert (=> b!6354141 m!7160596))

(assert (=> b!6354144 m!7160600))

(assert (=> b!6354144 m!7160600))

(declare-fun m!7160604 () Bool)

(assert (=> b!6354144 m!7160604))

(declare-fun m!7160606 () Bool)

(assert (=> b!6354146 m!7160606))

(assert (=> b!6354140 m!7160600))

(assert (=> b!6354140 m!7160600))

(assert (=> b!6354140 m!7160604))

(assert (=> b!6353577 d!1993530))

(declare-fun d!1993550 () Bool)

(assert (=> d!1993550 (= (matchR!8444 r!7292 s!2326) (matchRSpec!3362 r!7292 s!2326))))

(declare-fun lt!2365480 () Unit!158375)

(declare-fun choose!47168 (Regex!16261 List!65083) Unit!158375)

(assert (=> d!1993550 (= lt!2365480 (choose!47168 r!7292 s!2326))))

(assert (=> d!1993550 (validRegex!7997 r!7292)))

(assert (=> d!1993550 (= (mainMatchTheorem!3362 r!7292 s!2326) lt!2365480)))

(declare-fun bs!1591443 () Bool)

(assert (= bs!1591443 d!1993550))

(assert (=> bs!1591443 m!7160268))

(assert (=> bs!1591443 m!7160266))

(declare-fun m!7160608 () Bool)

(assert (=> bs!1591443 m!7160608))

(assert (=> bs!1591443 m!7160274))

(assert (=> b!6353577 d!1993550))

(declare-fun bs!1591444 () Bool)

(declare-fun d!1993552 () Bool)

(assert (= bs!1591444 (and d!1993552 d!1993494)))

(declare-fun lambda!349725 () Int)

(assert (=> bs!1591444 (= lambda!349725 lambda!349698)))

(declare-fun bs!1591446 () Bool)

(assert (= bs!1591446 (and d!1993552 d!1993512)))

(assert (=> bs!1591446 (= lambda!349725 lambda!349707)))

(assert (=> d!1993552 (= (inv!83899 setElem!43270) (forall!15434 (exprs!6145 setElem!43270) lambda!349725))))

(declare-fun bs!1591447 () Bool)

(assert (= bs!1591447 d!1993552))

(declare-fun m!7160610 () Bool)

(assert (=> bs!1591447 m!7160610))

(assert (=> setNonEmpty!43270 d!1993552))

(declare-fun d!1993554 () Bool)

(declare-fun c!1156237 () Bool)

(assert (=> d!1993554 (= c!1156237 (isEmpty!37057 (t!378673 s!2326)))))

(declare-fun e!3858776 () Bool)

(assert (=> d!1993554 (= (matchZipper!2273 lt!2365377 (t!378673 s!2326)) e!3858776)))

(declare-fun b!6354164 () Bool)

(declare-fun nullableZipper!2027 ((InoxSet Context!11290)) Bool)

(assert (=> b!6354164 (= e!3858776 (nullableZipper!2027 lt!2365377))))

(declare-fun b!6354165 () Bool)

(assert (=> b!6354165 (= e!3858776 (matchZipper!2273 (derivationStepZipper!2227 lt!2365377 (head!13015 (t!378673 s!2326))) (tail!12100 (t!378673 s!2326))))))

(assert (= (and d!1993554 c!1156237) b!6354164))

(assert (= (and d!1993554 (not c!1156237)) b!6354165))

(declare-fun m!7160624 () Bool)

(assert (=> d!1993554 m!7160624))

(declare-fun m!7160626 () Bool)

(assert (=> b!6354164 m!7160626))

(declare-fun m!7160628 () Bool)

(assert (=> b!6354165 m!7160628))

(assert (=> b!6354165 m!7160628))

(declare-fun m!7160630 () Bool)

(assert (=> b!6354165 m!7160630))

(declare-fun m!7160632 () Bool)

(assert (=> b!6354165 m!7160632))

(assert (=> b!6354165 m!7160630))

(assert (=> b!6354165 m!7160632))

(declare-fun m!7160634 () Bool)

(assert (=> b!6354165 m!7160634))

(assert (=> b!6353597 d!1993554))

(declare-fun d!1993562 () Bool)

(declare-fun c!1156238 () Bool)

(assert (=> d!1993562 (= c!1156238 (isEmpty!37057 (t!378673 s!2326)))))

(declare-fun e!3858777 () Bool)

(assert (=> d!1993562 (= (matchZipper!2273 lt!2365371 (t!378673 s!2326)) e!3858777)))

(declare-fun b!6354166 () Bool)

(assert (=> b!6354166 (= e!3858777 (nullableZipper!2027 lt!2365371))))

(declare-fun b!6354167 () Bool)

(assert (=> b!6354167 (= e!3858777 (matchZipper!2273 (derivationStepZipper!2227 lt!2365371 (head!13015 (t!378673 s!2326))) (tail!12100 (t!378673 s!2326))))))

(assert (= (and d!1993562 c!1156238) b!6354166))

(assert (= (and d!1993562 (not c!1156238)) b!6354167))

(assert (=> d!1993562 m!7160624))

(declare-fun m!7160636 () Bool)

(assert (=> b!6354166 m!7160636))

(assert (=> b!6354167 m!7160628))

(assert (=> b!6354167 m!7160628))

(declare-fun m!7160638 () Bool)

(assert (=> b!6354167 m!7160638))

(assert (=> b!6354167 m!7160632))

(assert (=> b!6354167 m!7160638))

(assert (=> b!6354167 m!7160632))

(declare-fun m!7160640 () Bool)

(assert (=> b!6354167 m!7160640))

(assert (=> b!6353597 d!1993562))

(declare-fun d!1993564 () Bool)

(declare-fun e!3858780 () Bool)

(assert (=> d!1993564 e!3858780))

(declare-fun res!2614565 () Bool)

(assert (=> d!1993564 (=> (not res!2614565) (not e!3858780))))

(declare-fun lt!2365484 () List!65084)

(declare-fun noDuplicate!2091 (List!65084) Bool)

(assert (=> d!1993564 (= res!2614565 (noDuplicate!2091 lt!2365484))))

(declare-fun choose!47169 ((InoxSet Context!11290)) List!65084)

(assert (=> d!1993564 (= lt!2365484 (choose!47169 z!1189))))

(assert (=> d!1993564 (= (toList!10045 z!1189) lt!2365484)))

(declare-fun b!6354170 () Bool)

(declare-fun content!12262 (List!65084) (InoxSet Context!11290))

(assert (=> b!6354170 (= e!3858780 (= (content!12262 lt!2365484) z!1189))))

(assert (= (and d!1993564 res!2614565) b!6354170))

(declare-fun m!7160642 () Bool)

(assert (=> d!1993564 m!7160642))

(declare-fun m!7160644 () Bool)

(assert (=> d!1993564 m!7160644))

(declare-fun m!7160646 () Bool)

(assert (=> b!6354170 m!7160646))

(assert (=> b!6353579 d!1993564))

(declare-fun d!1993566 () Bool)

(declare-fun c!1156239 () Bool)

(assert (=> d!1993566 (= c!1156239 (isEmpty!37057 (t!378673 s!2326)))))

(declare-fun e!3858781 () Bool)

(assert (=> d!1993566 (= (matchZipper!2273 lt!2365385 (t!378673 s!2326)) e!3858781)))

(declare-fun b!6354171 () Bool)

(assert (=> b!6354171 (= e!3858781 (nullableZipper!2027 lt!2365385))))

(declare-fun b!6354172 () Bool)

(assert (=> b!6354172 (= e!3858781 (matchZipper!2273 (derivationStepZipper!2227 lt!2365385 (head!13015 (t!378673 s!2326))) (tail!12100 (t!378673 s!2326))))))

(assert (= (and d!1993566 c!1156239) b!6354171))

(assert (= (and d!1993566 (not c!1156239)) b!6354172))

(assert (=> d!1993566 m!7160624))

(declare-fun m!7160648 () Bool)

(assert (=> b!6354171 m!7160648))

(assert (=> b!6354172 m!7160628))

(assert (=> b!6354172 m!7160628))

(declare-fun m!7160650 () Bool)

(assert (=> b!6354172 m!7160650))

(assert (=> b!6354172 m!7160632))

(assert (=> b!6354172 m!7160650))

(assert (=> b!6354172 m!7160632))

(declare-fun m!7160652 () Bool)

(assert (=> b!6354172 m!7160652))

(assert (=> b!6353580 d!1993566))

(declare-fun d!1993568 () Bool)

(declare-fun c!1156240 () Bool)

(assert (=> d!1993568 (= c!1156240 (isEmpty!37057 (t!378673 s!2326)))))

(declare-fun e!3858782 () Bool)

(assert (=> d!1993568 (= (matchZipper!2273 lt!2365373 (t!378673 s!2326)) e!3858782)))

(declare-fun b!6354173 () Bool)

(assert (=> b!6354173 (= e!3858782 (nullableZipper!2027 lt!2365373))))

(declare-fun b!6354174 () Bool)

(assert (=> b!6354174 (= e!3858782 (matchZipper!2273 (derivationStepZipper!2227 lt!2365373 (head!13015 (t!378673 s!2326))) (tail!12100 (t!378673 s!2326))))))

(assert (= (and d!1993568 c!1156240) b!6354173))

(assert (= (and d!1993568 (not c!1156240)) b!6354174))

(assert (=> d!1993568 m!7160624))

(declare-fun m!7160654 () Bool)

(assert (=> b!6354173 m!7160654))

(assert (=> b!6354174 m!7160628))

(assert (=> b!6354174 m!7160628))

(declare-fun m!7160656 () Bool)

(assert (=> b!6354174 m!7160656))

(assert (=> b!6354174 m!7160632))

(assert (=> b!6354174 m!7160656))

(assert (=> b!6354174 m!7160632))

(declare-fun m!7160658 () Bool)

(assert (=> b!6354174 m!7160658))

(assert (=> b!6353600 d!1993568))

(declare-fun b!6354175 () Bool)

(declare-fun e!3858783 () Bool)

(declare-fun e!3858786 () Bool)

(assert (=> b!6354175 (= e!3858783 e!3858786)))

(declare-fun c!1156242 () Bool)

(assert (=> b!6354175 (= c!1156242 ((_ is Union!16261) r!7292))))

(declare-fun d!1993570 () Bool)

(declare-fun res!2614570 () Bool)

(declare-fun e!3858785 () Bool)

(assert (=> d!1993570 (=> res!2614570 e!3858785)))

(assert (=> d!1993570 (= res!2614570 ((_ is ElementMatch!16261) r!7292))))

(assert (=> d!1993570 (= (validRegex!7997 r!7292) e!3858785)))

(declare-fun b!6354176 () Bool)

(declare-fun res!2614566 () Bool)

(declare-fun e!3858784 () Bool)

(assert (=> b!6354176 (=> res!2614566 e!3858784)))

(assert (=> b!6354176 (= res!2614566 (not ((_ is Concat!25106) r!7292)))))

(assert (=> b!6354176 (= e!3858786 e!3858784)))

(declare-fun bm!541883 () Bool)

(declare-fun call!541888 () Bool)

(assert (=> bm!541883 (= call!541888 (validRegex!7997 (ite c!1156242 (regOne!33035 r!7292) (regOne!33034 r!7292))))))

(declare-fun b!6354177 () Bool)

(declare-fun res!2614569 () Bool)

(declare-fun e!3858787 () Bool)

(assert (=> b!6354177 (=> (not res!2614569) (not e!3858787))))

(assert (=> b!6354177 (= res!2614569 call!541888)))

(assert (=> b!6354177 (= e!3858786 e!3858787)))

(declare-fun b!6354178 () Bool)

(assert (=> b!6354178 (= e!3858785 e!3858783)))

(declare-fun c!1156241 () Bool)

(assert (=> b!6354178 (= c!1156241 ((_ is Star!16261) r!7292))))

(declare-fun b!6354179 () Bool)

(declare-fun e!3858789 () Bool)

(declare-fun call!541890 () Bool)

(assert (=> b!6354179 (= e!3858789 call!541890)))

(declare-fun b!6354180 () Bool)

(declare-fun e!3858788 () Bool)

(assert (=> b!6354180 (= e!3858783 e!3858788)))

(declare-fun res!2614567 () Bool)

(assert (=> b!6354180 (= res!2614567 (not (nullable!6254 (reg!16590 r!7292))))))

(assert (=> b!6354180 (=> (not res!2614567) (not e!3858788))))

(declare-fun bm!541884 () Bool)

(declare-fun call!541889 () Bool)

(assert (=> bm!541884 (= call!541889 (validRegex!7997 (ite c!1156241 (reg!16590 r!7292) (ite c!1156242 (regTwo!33035 r!7292) (regTwo!33034 r!7292)))))))

(declare-fun b!6354181 () Bool)

(assert (=> b!6354181 (= e!3858787 call!541890)))

(declare-fun b!6354182 () Bool)

(assert (=> b!6354182 (= e!3858788 call!541889)))

(declare-fun bm!541885 () Bool)

(assert (=> bm!541885 (= call!541890 call!541889)))

(declare-fun b!6354183 () Bool)

(assert (=> b!6354183 (= e!3858784 e!3858789)))

(declare-fun res!2614568 () Bool)

(assert (=> b!6354183 (=> (not res!2614568) (not e!3858789))))

(assert (=> b!6354183 (= res!2614568 call!541888)))

(assert (= (and d!1993570 (not res!2614570)) b!6354178))

(assert (= (and b!6354178 c!1156241) b!6354180))

(assert (= (and b!6354178 (not c!1156241)) b!6354175))

(assert (= (and b!6354180 res!2614567) b!6354182))

(assert (= (and b!6354175 c!1156242) b!6354177))

(assert (= (and b!6354175 (not c!1156242)) b!6354176))

(assert (= (and b!6354177 res!2614569) b!6354181))

(assert (= (and b!6354176 (not res!2614566)) b!6354183))

(assert (= (and b!6354183 res!2614568) b!6354179))

(assert (= (or b!6354181 b!6354179) bm!541885))

(assert (= (or b!6354177 b!6354183) bm!541883))

(assert (= (or b!6354182 bm!541885) bm!541884))

(declare-fun m!7160660 () Bool)

(assert (=> bm!541883 m!7160660))

(declare-fun m!7160662 () Bool)

(assert (=> b!6354180 m!7160662))

(declare-fun m!7160664 () Bool)

(assert (=> bm!541884 m!7160664))

(assert (=> start!629466 d!1993570))

(declare-fun d!1993572 () Bool)

(declare-fun lt!2365491 () Int)

(assert (=> d!1993572 (>= lt!2365491 0)))

(declare-fun e!3858792 () Int)

(assert (=> d!1993572 (= lt!2365491 e!3858792)))

(declare-fun c!1156245 () Bool)

(assert (=> d!1993572 (= c!1156245 ((_ is Cons!64960) lt!2365372))))

(assert (=> d!1993572 (= (zipperDepthTotal!398 lt!2365372) lt!2365491)))

(declare-fun b!6354188 () Bool)

(assert (=> b!6354188 (= e!3858792 (+ (contextDepthTotal!370 (h!71408 lt!2365372)) (zipperDepthTotal!398 (t!378674 lt!2365372))))))

(declare-fun b!6354189 () Bool)

(assert (=> b!6354189 (= e!3858792 0)))

(assert (= (and d!1993572 c!1156245) b!6354188))

(assert (= (and d!1993572 (not c!1156245)) b!6354189))

(declare-fun m!7160668 () Bool)

(assert (=> b!6354188 m!7160668))

(declare-fun m!7160670 () Bool)

(assert (=> b!6354188 m!7160670))

(assert (=> b!6353582 d!1993572))

(declare-fun d!1993576 () Bool)

(declare-fun lt!2365492 () Int)

(assert (=> d!1993576 (>= lt!2365492 0)))

(declare-fun e!3858793 () Int)

(assert (=> d!1993576 (= lt!2365492 e!3858793)))

(declare-fun c!1156246 () Bool)

(assert (=> d!1993576 (= c!1156246 ((_ is Cons!64960) zl!343))))

(assert (=> d!1993576 (= (zipperDepthTotal!398 zl!343) lt!2365492)))

(declare-fun b!6354190 () Bool)

(assert (=> b!6354190 (= e!3858793 (+ (contextDepthTotal!370 (h!71408 zl!343)) (zipperDepthTotal!398 (t!378674 zl!343))))))

(declare-fun b!6354191 () Bool)

(assert (=> b!6354191 (= e!3858793 0)))

(assert (= (and d!1993576 c!1156246) b!6354190))

(assert (= (and d!1993576 (not c!1156246)) b!6354191))

(assert (=> b!6354190 m!7160212))

(declare-fun m!7160672 () Bool)

(assert (=> b!6354190 m!7160672))

(assert (=> b!6353582 d!1993576))

(declare-fun b!6354192 () Bool)

(declare-fun e!3858796 () (InoxSet Context!11290))

(declare-fun call!541891 () (InoxSet Context!11290))

(declare-fun call!541893 () (InoxSet Context!11290))

(assert (=> b!6354192 (= e!3858796 ((_ map or) call!541891 call!541893))))

(declare-fun c!1156248 () Bool)

(declare-fun bm!541886 () Bool)

(declare-fun c!1156251 () Bool)

(declare-fun c!1156249 () Bool)

(declare-fun call!541896 () List!65082)

(declare-fun call!541894 () (InoxSet Context!11290))

(assert (=> bm!541886 (= call!541894 (derivationStepZipperDown!1509 (ite c!1156249 (regTwo!33035 (h!71406 (exprs!6145 (h!71408 zl!343)))) (ite c!1156248 (regTwo!33034 (h!71406 (exprs!6145 (h!71408 zl!343)))) (ite c!1156251 (regOne!33034 (h!71406 (exprs!6145 (h!71408 zl!343)))) (reg!16590 (h!71406 (exprs!6145 (h!71408 zl!343))))))) (ite (or c!1156249 c!1156248) lt!2365369 (Context!11291 call!541896)) (h!71407 s!2326)))))

(declare-fun b!6354193 () Bool)

(declare-fun e!3858798 () (InoxSet Context!11290))

(assert (=> b!6354193 (= e!3858796 e!3858798)))

(assert (=> b!6354193 (= c!1156251 ((_ is Concat!25106) (h!71406 (exprs!6145 (h!71408 zl!343)))))))

(declare-fun bm!541887 () Bool)

(declare-fun call!541895 () List!65082)

(assert (=> bm!541887 (= call!541891 (derivationStepZipperDown!1509 (ite c!1156249 (regOne!33035 (h!71406 (exprs!6145 (h!71408 zl!343)))) (regOne!33034 (h!71406 (exprs!6145 (h!71408 zl!343))))) (ite c!1156249 lt!2365369 (Context!11291 call!541895)) (h!71407 s!2326)))))

(declare-fun b!6354194 () Bool)

(declare-fun e!3858799 () Bool)

(assert (=> b!6354194 (= c!1156248 e!3858799)))

(declare-fun res!2614571 () Bool)

(assert (=> b!6354194 (=> (not res!2614571) (not e!3858799))))

(assert (=> b!6354194 (= res!2614571 ((_ is Concat!25106) (h!71406 (exprs!6145 (h!71408 zl!343)))))))

(declare-fun e!3858797 () (InoxSet Context!11290))

(assert (=> b!6354194 (= e!3858797 e!3858796)))

(declare-fun bm!541888 () Bool)

(assert (=> bm!541888 (= call!541895 ($colon$colon!2122 (exprs!6145 lt!2365369) (ite (or c!1156248 c!1156251) (regTwo!33034 (h!71406 (exprs!6145 (h!71408 zl!343)))) (h!71406 (exprs!6145 (h!71408 zl!343))))))))

(declare-fun b!6354195 () Bool)

(declare-fun e!3858794 () (InoxSet Context!11290))

(declare-fun call!541892 () (InoxSet Context!11290))

(assert (=> b!6354195 (= e!3858794 call!541892)))

(declare-fun d!1993578 () Bool)

(declare-fun c!1156250 () Bool)

(assert (=> d!1993578 (= c!1156250 (and ((_ is ElementMatch!16261) (h!71406 (exprs!6145 (h!71408 zl!343)))) (= (c!1156050 (h!71406 (exprs!6145 (h!71408 zl!343)))) (h!71407 s!2326))))))

(declare-fun e!3858795 () (InoxSet Context!11290))

(assert (=> d!1993578 (= (derivationStepZipperDown!1509 (h!71406 (exprs!6145 (h!71408 zl!343))) lt!2365369 (h!71407 s!2326)) e!3858795)))

(declare-fun bm!541889 () Bool)

(assert (=> bm!541889 (= call!541893 call!541894)))

(declare-fun bm!541890 () Bool)

(assert (=> bm!541890 (= call!541896 call!541895)))

(declare-fun b!6354196 () Bool)

(assert (=> b!6354196 (= e!3858798 call!541892)))

(declare-fun b!6354197 () Bool)

(declare-fun c!1156247 () Bool)

(assert (=> b!6354197 (= c!1156247 ((_ is Star!16261) (h!71406 (exprs!6145 (h!71408 zl!343)))))))

(assert (=> b!6354197 (= e!3858798 e!3858794)))

(declare-fun b!6354198 () Bool)

(assert (=> b!6354198 (= e!3858795 e!3858797)))

(assert (=> b!6354198 (= c!1156249 ((_ is Union!16261) (h!71406 (exprs!6145 (h!71408 zl!343)))))))

(declare-fun bm!541891 () Bool)

(assert (=> bm!541891 (= call!541892 call!541893)))

(declare-fun b!6354199 () Bool)

(assert (=> b!6354199 (= e!3858797 ((_ map or) call!541891 call!541894))))

(declare-fun b!6354200 () Bool)

(assert (=> b!6354200 (= e!3858794 ((as const (Array Context!11290 Bool)) false))))

(declare-fun b!6354201 () Bool)

(assert (=> b!6354201 (= e!3858795 (store ((as const (Array Context!11290 Bool)) false) lt!2365369 true))))

(declare-fun b!6354202 () Bool)

(assert (=> b!6354202 (= e!3858799 (nullable!6254 (regOne!33034 (h!71406 (exprs!6145 (h!71408 zl!343))))))))

(assert (= (and d!1993578 c!1156250) b!6354201))

(assert (= (and d!1993578 (not c!1156250)) b!6354198))

(assert (= (and b!6354198 c!1156249) b!6354199))

(assert (= (and b!6354198 (not c!1156249)) b!6354194))

(assert (= (and b!6354194 res!2614571) b!6354202))

(assert (= (and b!6354194 c!1156248) b!6354192))

(assert (= (and b!6354194 (not c!1156248)) b!6354193))

(assert (= (and b!6354193 c!1156251) b!6354196))

(assert (= (and b!6354193 (not c!1156251)) b!6354197))

(assert (= (and b!6354197 c!1156247) b!6354195))

(assert (= (and b!6354197 (not c!1156247)) b!6354200))

(assert (= (or b!6354196 b!6354195) bm!541890))

(assert (= (or b!6354196 b!6354195) bm!541891))

(assert (= (or b!6354192 bm!541890) bm!541888))

(assert (= (or b!6354192 bm!541891) bm!541889))

(assert (= (or b!6354199 bm!541889) bm!541886))

(assert (= (or b!6354199 b!6354192) bm!541887))

(declare-fun m!7160680 () Bool)

(assert (=> bm!541888 m!7160680))

(declare-fun m!7160682 () Bool)

(assert (=> b!6354201 m!7160682))

(declare-fun m!7160684 () Bool)

(assert (=> bm!541886 m!7160684))

(declare-fun m!7160686 () Bool)

(assert (=> b!6354202 m!7160686))

(declare-fun m!7160688 () Bool)

(assert (=> bm!541887 m!7160688))

(assert (=> b!6353601 d!1993578))

(declare-fun d!1993584 () Bool)

(declare-fun nullableFct!2201 (Regex!16261) Bool)

(assert (=> d!1993584 (= (nullable!6254 (h!71406 (exprs!6145 (h!71408 zl!343)))) (nullableFct!2201 (h!71406 (exprs!6145 (h!71408 zl!343)))))))

(declare-fun bs!1591472 () Bool)

(assert (= bs!1591472 d!1993584))

(declare-fun m!7160690 () Bool)

(assert (=> bs!1591472 m!7160690))

(assert (=> b!6353601 d!1993584))

(declare-fun b!6354217 () Bool)

(declare-fun e!3858809 () (InoxSet Context!11290))

(declare-fun e!3858808 () (InoxSet Context!11290))

(assert (=> b!6354217 (= e!3858809 e!3858808)))

(declare-fun c!1156256 () Bool)

(assert (=> b!6354217 (= c!1156256 ((_ is Cons!64958) (exprs!6145 (Context!11291 (Cons!64958 (h!71406 (exprs!6145 (h!71408 zl!343))) (t!378672 (exprs!6145 (h!71408 zl!343))))))))))

(declare-fun b!6354218 () Bool)

(declare-fun call!541898 () (InoxSet Context!11290))

(assert (=> b!6354218 (= e!3858808 call!541898)))

(declare-fun b!6354219 () Bool)

(declare-fun e!3858807 () Bool)

(assert (=> b!6354219 (= e!3858807 (nullable!6254 (h!71406 (exprs!6145 (Context!11291 (Cons!64958 (h!71406 (exprs!6145 (h!71408 zl!343))) (t!378672 (exprs!6145 (h!71408 zl!343)))))))))))

(declare-fun d!1993586 () Bool)

(declare-fun c!1156255 () Bool)

(assert (=> d!1993586 (= c!1156255 e!3858807)))

(declare-fun res!2614580 () Bool)

(assert (=> d!1993586 (=> (not res!2614580) (not e!3858807))))

(assert (=> d!1993586 (= res!2614580 ((_ is Cons!64958) (exprs!6145 (Context!11291 (Cons!64958 (h!71406 (exprs!6145 (h!71408 zl!343))) (t!378672 (exprs!6145 (h!71408 zl!343))))))))))

(assert (=> d!1993586 (= (derivationStepZipperUp!1435 (Context!11291 (Cons!64958 (h!71406 (exprs!6145 (h!71408 zl!343))) (t!378672 (exprs!6145 (h!71408 zl!343))))) (h!71407 s!2326)) e!3858809)))

(declare-fun b!6354220 () Bool)

(assert (=> b!6354220 (= e!3858808 ((as const (Array Context!11290 Bool)) false))))

(declare-fun b!6354221 () Bool)

(assert (=> b!6354221 (= e!3858809 ((_ map or) call!541898 (derivationStepZipperUp!1435 (Context!11291 (t!378672 (exprs!6145 (Context!11291 (Cons!64958 (h!71406 (exprs!6145 (h!71408 zl!343))) (t!378672 (exprs!6145 (h!71408 zl!343)))))))) (h!71407 s!2326))))))

(declare-fun bm!541893 () Bool)

(assert (=> bm!541893 (= call!541898 (derivationStepZipperDown!1509 (h!71406 (exprs!6145 (Context!11291 (Cons!64958 (h!71406 (exprs!6145 (h!71408 zl!343))) (t!378672 (exprs!6145 (h!71408 zl!343))))))) (Context!11291 (t!378672 (exprs!6145 (Context!11291 (Cons!64958 (h!71406 (exprs!6145 (h!71408 zl!343))) (t!378672 (exprs!6145 (h!71408 zl!343)))))))) (h!71407 s!2326)))))

(assert (= (and d!1993586 res!2614580) b!6354219))

(assert (= (and d!1993586 c!1156255) b!6354221))

(assert (= (and d!1993586 (not c!1156255)) b!6354217))

(assert (= (and b!6354217 c!1156256) b!6354218))

(assert (= (and b!6354217 (not c!1156256)) b!6354220))

(assert (= (or b!6354221 b!6354218) bm!541893))

(declare-fun m!7160702 () Bool)

(assert (=> b!6354219 m!7160702))

(declare-fun m!7160704 () Bool)

(assert (=> b!6354221 m!7160704))

(declare-fun m!7160706 () Bool)

(assert (=> bm!541893 m!7160706))

(assert (=> b!6353601 d!1993586))

(declare-fun b!6354232 () Bool)

(declare-fun e!3858818 () (InoxSet Context!11290))

(declare-fun e!3858817 () (InoxSet Context!11290))

(assert (=> b!6354232 (= e!3858818 e!3858817)))

(declare-fun c!1156262 () Bool)

(assert (=> b!6354232 (= c!1156262 ((_ is Cons!64958) (exprs!6145 (h!71408 zl!343))))))

(declare-fun b!6354233 () Bool)

(declare-fun call!541899 () (InoxSet Context!11290))

(assert (=> b!6354233 (= e!3858817 call!541899)))

(declare-fun b!6354234 () Bool)

(declare-fun e!3858816 () Bool)

(assert (=> b!6354234 (= e!3858816 (nullable!6254 (h!71406 (exprs!6145 (h!71408 zl!343)))))))

(declare-fun d!1993594 () Bool)

(declare-fun c!1156261 () Bool)

(assert (=> d!1993594 (= c!1156261 e!3858816)))

(declare-fun res!2614583 () Bool)

(assert (=> d!1993594 (=> (not res!2614583) (not e!3858816))))

(assert (=> d!1993594 (= res!2614583 ((_ is Cons!64958) (exprs!6145 (h!71408 zl!343))))))

(assert (=> d!1993594 (= (derivationStepZipperUp!1435 (h!71408 zl!343) (h!71407 s!2326)) e!3858818)))

(declare-fun b!6354235 () Bool)

(assert (=> b!6354235 (= e!3858817 ((as const (Array Context!11290 Bool)) false))))

(declare-fun b!6354236 () Bool)

(assert (=> b!6354236 (= e!3858818 ((_ map or) call!541899 (derivationStepZipperUp!1435 (Context!11291 (t!378672 (exprs!6145 (h!71408 zl!343)))) (h!71407 s!2326))))))

(declare-fun bm!541894 () Bool)

(assert (=> bm!541894 (= call!541899 (derivationStepZipperDown!1509 (h!71406 (exprs!6145 (h!71408 zl!343))) (Context!11291 (t!378672 (exprs!6145 (h!71408 zl!343)))) (h!71407 s!2326)))))

(assert (= (and d!1993594 res!2614583) b!6354234))

(assert (= (and d!1993594 c!1156261) b!6354236))

(assert (= (and d!1993594 (not c!1156261)) b!6354232))

(assert (= (and b!6354232 c!1156262) b!6354233))

(assert (= (and b!6354232 (not c!1156262)) b!6354235))

(assert (= (or b!6354236 b!6354233) bm!541894))

(assert (=> b!6354234 m!7160224))

(declare-fun m!7160708 () Bool)

(assert (=> b!6354236 m!7160708))

(declare-fun m!7160710 () Bool)

(assert (=> bm!541894 m!7160710))

(assert (=> b!6353601 d!1993594))

(declare-fun b!6354237 () Bool)

(declare-fun e!3858821 () (InoxSet Context!11290))

(declare-fun e!3858820 () (InoxSet Context!11290))

(assert (=> b!6354237 (= e!3858821 e!3858820)))

(declare-fun c!1156264 () Bool)

(assert (=> b!6354237 (= c!1156264 ((_ is Cons!64958) (exprs!6145 lt!2365369)))))

(declare-fun b!6354238 () Bool)

(declare-fun call!541900 () (InoxSet Context!11290))

(assert (=> b!6354238 (= e!3858820 call!541900)))

(declare-fun b!6354239 () Bool)

(declare-fun e!3858819 () Bool)

(assert (=> b!6354239 (= e!3858819 (nullable!6254 (h!71406 (exprs!6145 lt!2365369))))))

(declare-fun d!1993596 () Bool)

(declare-fun c!1156263 () Bool)

(assert (=> d!1993596 (= c!1156263 e!3858819)))

(declare-fun res!2614584 () Bool)

(assert (=> d!1993596 (=> (not res!2614584) (not e!3858819))))

(assert (=> d!1993596 (= res!2614584 ((_ is Cons!64958) (exprs!6145 lt!2365369)))))

(assert (=> d!1993596 (= (derivationStepZipperUp!1435 lt!2365369 (h!71407 s!2326)) e!3858821)))

(declare-fun b!6354240 () Bool)

(assert (=> b!6354240 (= e!3858820 ((as const (Array Context!11290 Bool)) false))))

(declare-fun b!6354241 () Bool)

(assert (=> b!6354241 (= e!3858821 ((_ map or) call!541900 (derivationStepZipperUp!1435 (Context!11291 (t!378672 (exprs!6145 lt!2365369))) (h!71407 s!2326))))))

(declare-fun bm!541895 () Bool)

(assert (=> bm!541895 (= call!541900 (derivationStepZipperDown!1509 (h!71406 (exprs!6145 lt!2365369)) (Context!11291 (t!378672 (exprs!6145 lt!2365369))) (h!71407 s!2326)))))

(assert (= (and d!1993596 res!2614584) b!6354239))

(assert (= (and d!1993596 c!1156263) b!6354241))

(assert (= (and d!1993596 (not c!1156263)) b!6354237))

(assert (= (and b!6354237 c!1156264) b!6354238))

(assert (= (and b!6354237 (not c!1156264)) b!6354240))

(assert (= (or b!6354241 b!6354238) bm!541895))

(declare-fun m!7160712 () Bool)

(assert (=> b!6354239 m!7160712))

(declare-fun m!7160714 () Bool)

(assert (=> b!6354241 m!7160714))

(declare-fun m!7160716 () Bool)

(assert (=> bm!541895 m!7160716))

(assert (=> b!6353601 d!1993596))

(declare-fun d!1993598 () Bool)

(assert (=> d!1993598 (= (flatMap!1766 z!1189 lambda!349662) (choose!47164 z!1189 lambda!349662))))

(declare-fun bs!1591480 () Bool)

(assert (= bs!1591480 d!1993598))

(declare-fun m!7160718 () Bool)

(assert (=> bs!1591480 m!7160718))

(assert (=> b!6353601 d!1993598))

(declare-fun d!1993600 () Bool)

(assert (=> d!1993600 (= (flatMap!1766 z!1189 lambda!349662) (dynLambda!25759 lambda!349662 (h!71408 zl!343)))))

(declare-fun lt!2365495 () Unit!158375)

(assert (=> d!1993600 (= lt!2365495 (choose!47166 z!1189 (h!71408 zl!343) lambda!349662))))

(assert (=> d!1993600 (= z!1189 (store ((as const (Array Context!11290 Bool)) false) (h!71408 zl!343) true))))

(assert (=> d!1993600 (= (lemmaFlatMapOnSingletonSet!1292 z!1189 (h!71408 zl!343) lambda!349662) lt!2365495)))

(declare-fun b_lambda!241641 () Bool)

(assert (=> (not b_lambda!241641) (not d!1993600)))

(declare-fun bs!1591481 () Bool)

(assert (= bs!1591481 d!1993600))

(assert (=> bs!1591481 m!7160220))

(declare-fun m!7160732 () Bool)

(assert (=> bs!1591481 m!7160732))

(declare-fun m!7160736 () Bool)

(assert (=> bs!1591481 m!7160736))

(declare-fun m!7160742 () Bool)

(assert (=> bs!1591481 m!7160742))

(assert (=> b!6353601 d!1993600))

(declare-fun d!1993604 () Bool)

(assert (=> d!1993604 (= (isEmpty!37053 (t!378674 zl!343)) ((_ is Nil!64960) (t!378674 zl!343)))))

(assert (=> b!6353581 d!1993604))

(declare-fun b!6354334 () Bool)

(declare-fun e!3858876 () Bool)

(assert (=> b!6354334 (= e!3858876 (matchR!8444 (regTwo!33034 r!7292) s!2326))))

(declare-fun b!6354335 () Bool)

(declare-fun e!3858878 () Option!16152)

(assert (=> b!6354335 (= e!3858878 None!16151)))

(declare-fun b!6354336 () Bool)

(declare-fun res!2614629 () Bool)

(declare-fun e!3858879 () Bool)

(assert (=> b!6354336 (=> (not res!2614629) (not e!3858879))))

(declare-fun lt!2365513 () Option!16152)

(declare-fun get!22476 (Option!16152) tuple2!66480)

(assert (=> b!6354336 (= res!2614629 (matchR!8444 (regTwo!33034 r!7292) (_2!36543 (get!22476 lt!2365513))))))

(declare-fun b!6354337 () Bool)

(declare-fun ++!14330 (List!65083 List!65083) List!65083)

(assert (=> b!6354337 (= e!3858879 (= (++!14330 (_1!36543 (get!22476 lt!2365513)) (_2!36543 (get!22476 lt!2365513))) s!2326))))

(declare-fun b!6354338 () Bool)

(declare-fun e!3858877 () Option!16152)

(assert (=> b!6354338 (= e!3858877 e!3858878)))

(declare-fun c!1156292 () Bool)

(assert (=> b!6354338 (= c!1156292 ((_ is Nil!64959) s!2326))))

(declare-fun b!6354339 () Bool)

(declare-fun lt!2365512 () Unit!158375)

(declare-fun lt!2365514 () Unit!158375)

(assert (=> b!6354339 (= lt!2365512 lt!2365514)))

(assert (=> b!6354339 (= (++!14330 (++!14330 Nil!64959 (Cons!64959 (h!71407 s!2326) Nil!64959)) (t!378673 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2425 (List!65083 C!32792 List!65083 List!65083) Unit!158375)

(assert (=> b!6354339 (= lt!2365514 (lemmaMoveElementToOtherListKeepsConcatEq!2425 Nil!64959 (h!71407 s!2326) (t!378673 s!2326) s!2326))))

(assert (=> b!6354339 (= e!3858878 (findConcatSeparation!2566 (regOne!33034 r!7292) (regTwo!33034 r!7292) (++!14330 Nil!64959 (Cons!64959 (h!71407 s!2326) Nil!64959)) (t!378673 s!2326) s!2326))))

(declare-fun d!1993606 () Bool)

(declare-fun e!3858880 () Bool)

(assert (=> d!1993606 e!3858880))

(declare-fun res!2614625 () Bool)

(assert (=> d!1993606 (=> res!2614625 e!3858880)))

(assert (=> d!1993606 (= res!2614625 e!3858879)))

(declare-fun res!2614627 () Bool)

(assert (=> d!1993606 (=> (not res!2614627) (not e!3858879))))

(assert (=> d!1993606 (= res!2614627 (isDefined!12855 lt!2365513))))

(assert (=> d!1993606 (= lt!2365513 e!3858877)))

(declare-fun c!1156291 () Bool)

(assert (=> d!1993606 (= c!1156291 e!3858876)))

(declare-fun res!2614626 () Bool)

(assert (=> d!1993606 (=> (not res!2614626) (not e!3858876))))

(assert (=> d!1993606 (= res!2614626 (matchR!8444 (regOne!33034 r!7292) Nil!64959))))

(assert (=> d!1993606 (validRegex!7997 (regOne!33034 r!7292))))

(assert (=> d!1993606 (= (findConcatSeparation!2566 (regOne!33034 r!7292) (regTwo!33034 r!7292) Nil!64959 s!2326 s!2326) lt!2365513)))

(declare-fun b!6354340 () Bool)

(declare-fun res!2614628 () Bool)

(assert (=> b!6354340 (=> (not res!2614628) (not e!3858879))))

(assert (=> b!6354340 (= res!2614628 (matchR!8444 (regOne!33034 r!7292) (_1!36543 (get!22476 lt!2365513))))))

(declare-fun b!6354341 () Bool)

(assert (=> b!6354341 (= e!3858877 (Some!16151 (tuple2!66481 Nil!64959 s!2326)))))

(declare-fun b!6354342 () Bool)

(assert (=> b!6354342 (= e!3858880 (not (isDefined!12855 lt!2365513)))))

(assert (= (and d!1993606 res!2614626) b!6354334))

(assert (= (and d!1993606 c!1156291) b!6354341))

(assert (= (and d!1993606 (not c!1156291)) b!6354338))

(assert (= (and b!6354338 c!1156292) b!6354335))

(assert (= (and b!6354338 (not c!1156292)) b!6354339))

(assert (= (and d!1993606 res!2614627) b!6354340))

(assert (= (and b!6354340 res!2614628) b!6354336))

(assert (= (and b!6354336 res!2614629) b!6354337))

(assert (= (and d!1993606 (not res!2614625)) b!6354342))

(declare-fun m!7160850 () Bool)

(assert (=> b!6354339 m!7160850))

(assert (=> b!6354339 m!7160850))

(declare-fun m!7160852 () Bool)

(assert (=> b!6354339 m!7160852))

(declare-fun m!7160854 () Bool)

(assert (=> b!6354339 m!7160854))

(assert (=> b!6354339 m!7160850))

(declare-fun m!7160856 () Bool)

(assert (=> b!6354339 m!7160856))

(declare-fun m!7160860 () Bool)

(assert (=> b!6354337 m!7160860))

(declare-fun m!7160864 () Bool)

(assert (=> b!6354337 m!7160864))

(declare-fun m!7160866 () Bool)

(assert (=> b!6354342 m!7160866))

(declare-fun m!7160868 () Bool)

(assert (=> b!6354334 m!7160868))

(assert (=> b!6354336 m!7160860))

(declare-fun m!7160870 () Bool)

(assert (=> b!6354336 m!7160870))

(assert (=> b!6354340 m!7160860))

(declare-fun m!7160872 () Bool)

(assert (=> b!6354340 m!7160872))

(assert (=> d!1993606 m!7160866))

(declare-fun m!7160874 () Bool)

(assert (=> d!1993606 m!7160874))

(declare-fun m!7160876 () Bool)

(assert (=> d!1993606 m!7160876))

(assert (=> b!6353605 d!1993606))

(declare-fun d!1993634 () Bool)

(declare-fun choose!47171 (Int) Bool)

(assert (=> d!1993634 (= (Exists!3331 lambda!349660) (choose!47171 lambda!349660))))

(declare-fun bs!1591521 () Bool)

(assert (= bs!1591521 d!1993634))

(declare-fun m!7160878 () Bool)

(assert (=> bs!1591521 m!7160878))

(assert (=> b!6353605 d!1993634))

(declare-fun bs!1591526 () Bool)

(declare-fun d!1993636 () Bool)

(assert (= bs!1591526 (and d!1993636 b!6353605)))

(declare-fun lambda!349738 () Int)

(assert (=> bs!1591526 (not (= lambda!349738 lambda!349661))))

(declare-fun bs!1591527 () Bool)

(assert (= bs!1591527 (and d!1993636 b!6353590)))

(assert (=> bs!1591527 (not (= lambda!349738 lambda!349664))))

(assert (=> bs!1591527 (= (and (= (regOne!33034 r!7292) (regOne!33034 (regOne!33034 r!7292))) (= (regTwo!33034 r!7292) lt!2365374)) (= lambda!349738 lambda!349663))))

(declare-fun bs!1591528 () Bool)

(assert (= bs!1591528 (and d!1993636 b!6354045)))

(assert (=> bs!1591528 (not (= lambda!349738 lambda!349720))))

(declare-fun bs!1591529 () Bool)

(assert (= bs!1591529 (and d!1993636 b!6354039)))

(assert (=> bs!1591529 (not (= lambda!349738 lambda!349719))))

(assert (=> bs!1591526 (= lambda!349738 lambda!349660)))

(assert (=> bs!1591527 (= (and (= (regOne!33034 r!7292) (regTwo!33034 (regOne!33034 r!7292))) (= (regTwo!33034 r!7292) lt!2365379)) (= lambda!349738 lambda!349665))))

(assert (=> d!1993636 true))

(assert (=> d!1993636 true))

(assert (=> d!1993636 true))

(assert (=> d!1993636 (= (isDefined!12855 (findConcatSeparation!2566 (regOne!33034 r!7292) (regTwo!33034 r!7292) Nil!64959 s!2326 s!2326)) (Exists!3331 lambda!349738))))

(declare-fun lt!2365518 () Unit!158375)

(declare-fun choose!47172 (Regex!16261 Regex!16261 List!65083) Unit!158375)

(assert (=> d!1993636 (= lt!2365518 (choose!47172 (regOne!33034 r!7292) (regTwo!33034 r!7292) s!2326))))

(assert (=> d!1993636 (validRegex!7997 (regOne!33034 r!7292))))

(assert (=> d!1993636 (= (lemmaFindConcatSeparationEquivalentToExists!2330 (regOne!33034 r!7292) (regTwo!33034 r!7292) s!2326) lt!2365518)))

(declare-fun bs!1591530 () Bool)

(assert (= bs!1591530 d!1993636))

(assert (=> bs!1591530 m!7160148))

(declare-fun m!7160886 () Bool)

(assert (=> bs!1591530 m!7160886))

(assert (=> bs!1591530 m!7160148))

(assert (=> bs!1591530 m!7160150))

(declare-fun m!7160888 () Bool)

(assert (=> bs!1591530 m!7160888))

(assert (=> bs!1591530 m!7160876))

(assert (=> b!6353605 d!1993636))

(declare-fun bs!1591531 () Bool)

(declare-fun d!1993642 () Bool)

(assert (= bs!1591531 (and d!1993642 b!6353605)))

(declare-fun lambda!349743 () Int)

(assert (=> bs!1591531 (not (= lambda!349743 lambda!349661))))

(declare-fun bs!1591532 () Bool)

(assert (= bs!1591532 (and d!1993642 b!6353590)))

(assert (=> bs!1591532 (not (= lambda!349743 lambda!349664))))

(assert (=> bs!1591532 (= (and (= (regOne!33034 r!7292) (regOne!33034 (regOne!33034 r!7292))) (= (regTwo!33034 r!7292) lt!2365374)) (= lambda!349743 lambda!349663))))

(declare-fun bs!1591533 () Bool)

(assert (= bs!1591533 (and d!1993642 b!6354045)))

(assert (=> bs!1591533 (not (= lambda!349743 lambda!349720))))

(declare-fun bs!1591534 () Bool)

(assert (= bs!1591534 (and d!1993642 d!1993636)))

(assert (=> bs!1591534 (= lambda!349743 lambda!349738)))

(declare-fun bs!1591535 () Bool)

(assert (= bs!1591535 (and d!1993642 b!6354039)))

(assert (=> bs!1591535 (not (= lambda!349743 lambda!349719))))

(assert (=> bs!1591531 (= lambda!349743 lambda!349660)))

(assert (=> bs!1591532 (= (and (= (regOne!33034 r!7292) (regTwo!33034 (regOne!33034 r!7292))) (= (regTwo!33034 r!7292) lt!2365379)) (= lambda!349743 lambda!349665))))

(assert (=> d!1993642 true))

(assert (=> d!1993642 true))

(assert (=> d!1993642 true))

(declare-fun lambda!349744 () Int)

(assert (=> bs!1591531 (= lambda!349744 lambda!349661)))

(assert (=> bs!1591532 (= (and (= (regOne!33034 r!7292) (regOne!33034 (regOne!33034 r!7292))) (= (regTwo!33034 r!7292) lt!2365374)) (= lambda!349744 lambda!349664))))

(assert (=> bs!1591532 (not (= lambda!349744 lambda!349663))))

(assert (=> bs!1591533 (= lambda!349744 lambda!349720)))

(assert (=> bs!1591534 (not (= lambda!349744 lambda!349738))))

(declare-fun bs!1591536 () Bool)

(assert (= bs!1591536 d!1993642))

(assert (=> bs!1591536 (not (= lambda!349744 lambda!349743))))

(assert (=> bs!1591535 (not (= lambda!349744 lambda!349719))))

(assert (=> bs!1591531 (not (= lambda!349744 lambda!349660))))

(assert (=> bs!1591532 (not (= lambda!349744 lambda!349665))))

(assert (=> d!1993642 true))

(assert (=> d!1993642 true))

(assert (=> d!1993642 true))

(assert (=> d!1993642 (= (Exists!3331 lambda!349743) (Exists!3331 lambda!349744))))

(declare-fun lt!2365521 () Unit!158375)

(declare-fun choose!47174 (Regex!16261 Regex!16261 List!65083) Unit!158375)

(assert (=> d!1993642 (= lt!2365521 (choose!47174 (regOne!33034 r!7292) (regTwo!33034 r!7292) s!2326))))

(assert (=> d!1993642 (validRegex!7997 (regOne!33034 r!7292))))

(assert (=> d!1993642 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1868 (regOne!33034 r!7292) (regTwo!33034 r!7292) s!2326) lt!2365521)))

(declare-fun m!7160890 () Bool)

(assert (=> bs!1591536 m!7160890))

(declare-fun m!7160892 () Bool)

(assert (=> bs!1591536 m!7160892))

(declare-fun m!7160894 () Bool)

(assert (=> bs!1591536 m!7160894))

(assert (=> bs!1591536 m!7160876))

(assert (=> b!6353605 d!1993642))

(declare-fun d!1993644 () Bool)

(assert (=> d!1993644 (= (Exists!3331 lambda!349661) (choose!47171 lambda!349661))))

(declare-fun bs!1591537 () Bool)

(assert (= bs!1591537 d!1993644))

(declare-fun m!7160896 () Bool)

(assert (=> bs!1591537 m!7160896))

(assert (=> b!6353605 d!1993644))

(declare-fun d!1993646 () Bool)

(declare-fun isEmpty!37058 (Option!16152) Bool)

(assert (=> d!1993646 (= (isDefined!12855 (findConcatSeparation!2566 (regOne!33034 r!7292) (regTwo!33034 r!7292) Nil!64959 s!2326 s!2326)) (not (isEmpty!37058 (findConcatSeparation!2566 (regOne!33034 r!7292) (regTwo!33034 r!7292) Nil!64959 s!2326 s!2326))))))

(declare-fun bs!1591538 () Bool)

(assert (= bs!1591538 d!1993646))

(assert (=> bs!1591538 m!7160148))

(declare-fun m!7160898 () Bool)

(assert (=> bs!1591538 m!7160898))

(assert (=> b!6353605 d!1993646))

(declare-fun d!1993648 () Bool)

(declare-fun e!3858915 () Bool)

(assert (=> d!1993648 (= (matchZipper!2273 ((_ map or) lt!2365371 lt!2365385) (t!378673 s!2326)) e!3858915)))

(declare-fun res!2614645 () Bool)

(assert (=> d!1993648 (=> res!2614645 e!3858915)))

(assert (=> d!1993648 (= res!2614645 (matchZipper!2273 lt!2365371 (t!378673 s!2326)))))

(declare-fun lt!2365524 () Unit!158375)

(declare-fun choose!47175 ((InoxSet Context!11290) (InoxSet Context!11290) List!65083) Unit!158375)

(assert (=> d!1993648 (= lt!2365524 (choose!47175 lt!2365371 lt!2365385 (t!378673 s!2326)))))

(assert (=> d!1993648 (= (lemmaZipperConcatMatchesSameAsBothZippers!1092 lt!2365371 lt!2365385 (t!378673 s!2326)) lt!2365524)))

(declare-fun b!6354418 () Bool)

(assert (=> b!6354418 (= e!3858915 (matchZipper!2273 lt!2365385 (t!378673 s!2326)))))

(assert (= (and d!1993648 (not res!2614645)) b!6354418))

(assert (=> d!1993648 m!7160254))

(assert (=> d!1993648 m!7160246))

(declare-fun m!7160900 () Bool)

(assert (=> d!1993648 m!7160900))

(assert (=> b!6354418 m!7160228))

(assert (=> b!6353583 d!1993648))

(assert (=> b!6353583 d!1993562))

(declare-fun d!1993650 () Bool)

(declare-fun c!1156297 () Bool)

(assert (=> d!1993650 (= c!1156297 (isEmpty!37057 (t!378673 s!2326)))))

(declare-fun e!3858916 () Bool)

(assert (=> d!1993650 (= (matchZipper!2273 ((_ map or) lt!2365371 lt!2365385) (t!378673 s!2326)) e!3858916)))

(declare-fun b!6354419 () Bool)

(assert (=> b!6354419 (= e!3858916 (nullableZipper!2027 ((_ map or) lt!2365371 lt!2365385)))))

(declare-fun b!6354420 () Bool)

(assert (=> b!6354420 (= e!3858916 (matchZipper!2273 (derivationStepZipper!2227 ((_ map or) lt!2365371 lt!2365385) (head!13015 (t!378673 s!2326))) (tail!12100 (t!378673 s!2326))))))

(assert (= (and d!1993650 c!1156297) b!6354419))

(assert (= (and d!1993650 (not c!1156297)) b!6354420))

(assert (=> d!1993650 m!7160624))

(declare-fun m!7160902 () Bool)

(assert (=> b!6354419 m!7160902))

(assert (=> b!6354420 m!7160628))

(assert (=> b!6354420 m!7160628))

(declare-fun m!7160904 () Bool)

(assert (=> b!6354420 m!7160904))

(assert (=> b!6354420 m!7160632))

(assert (=> b!6354420 m!7160904))

(assert (=> b!6354420 m!7160632))

(declare-fun m!7160906 () Bool)

(assert (=> b!6354420 m!7160906))

(assert (=> b!6353583 d!1993650))

(declare-fun b!6354427 () Bool)

(assert (=> b!6354427 true))

(declare-fun bs!1591539 () Bool)

(declare-fun b!6354429 () Bool)

(assert (= bs!1591539 (and b!6354429 b!6354427)))

(declare-fun lambda!349752 () Int)

(declare-fun lt!2365533 () Int)

(declare-fun lt!2365534 () Int)

(declare-fun lambda!349753 () Int)

(assert (=> bs!1591539 (= (= lt!2365534 lt!2365533) (= lambda!349753 lambda!349752))))

(assert (=> b!6354429 true))

(declare-fun d!1993652 () Bool)

(declare-fun e!3858922 () Bool)

(assert (=> d!1993652 e!3858922))

(declare-fun res!2614648 () Bool)

(assert (=> d!1993652 (=> (not res!2614648) (not e!3858922))))

(assert (=> d!1993652 (= res!2614648 (>= lt!2365534 0))))

(declare-fun e!3858921 () Int)

(assert (=> d!1993652 (= lt!2365534 e!3858921)))

(declare-fun c!1156306 () Bool)

(assert (=> d!1993652 (= c!1156306 ((_ is Cons!64960) lt!2365372))))

(assert (=> d!1993652 (= (zipperDepth!368 lt!2365372) lt!2365534)))

(assert (=> b!6354427 (= e!3858921 lt!2365533)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!257 (Context!11290) Int)

(assert (=> b!6354427 (= lt!2365533 (maxBigInt!0 (contextDepth!257 (h!71408 lt!2365372)) (zipperDepth!368 (t!378674 lt!2365372))))))

(declare-fun lt!2365535 () Unit!158375)

(declare-fun lambda!349751 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!241 (List!65084 Int Int Int) Unit!158375)

(assert (=> b!6354427 (= lt!2365535 (lemmaForallContextDepthBiggerThanTransitive!241 (t!378674 lt!2365372) lt!2365533 (zipperDepth!368 (t!378674 lt!2365372)) lambda!349751))))

(declare-fun forall!15435 (List!65084 Int) Bool)

(assert (=> b!6354427 (forall!15435 (t!378674 lt!2365372) lambda!349752)))

(declare-fun lt!2365536 () Unit!158375)

(assert (=> b!6354427 (= lt!2365536 lt!2365535)))

(declare-fun b!6354428 () Bool)

(assert (=> b!6354428 (= e!3858921 0)))

(assert (=> b!6354429 (= e!3858922 (forall!15435 lt!2365372 lambda!349753))))

(assert (= (and d!1993652 c!1156306) b!6354427))

(assert (= (and d!1993652 (not c!1156306)) b!6354428))

(assert (= (and d!1993652 res!2614648) b!6354429))

(declare-fun m!7160908 () Bool)

(assert (=> b!6354427 m!7160908))

(declare-fun m!7160910 () Bool)

(assert (=> b!6354427 m!7160910))

(declare-fun m!7160912 () Bool)

(assert (=> b!6354427 m!7160912))

(assert (=> b!6354427 m!7160908))

(assert (=> b!6354427 m!7160912))

(assert (=> b!6354427 m!7160908))

(declare-fun m!7160914 () Bool)

(assert (=> b!6354427 m!7160914))

(declare-fun m!7160916 () Bool)

(assert (=> b!6354427 m!7160916))

(declare-fun m!7160918 () Bool)

(assert (=> b!6354429 m!7160918))

(assert (=> b!6353584 d!1993652))

(declare-fun bs!1591540 () Bool)

(declare-fun b!6354432 () Bool)

(assert (= bs!1591540 (and b!6354432 b!6354427)))

(declare-fun lambda!349754 () Int)

(assert (=> bs!1591540 (= lambda!349754 lambda!349751)))

(declare-fun lambda!349755 () Int)

(declare-fun lt!2365537 () Int)

(assert (=> bs!1591540 (= (= lt!2365537 lt!2365533) (= lambda!349755 lambda!349752))))

(declare-fun bs!1591541 () Bool)

(assert (= bs!1591541 (and b!6354432 b!6354429)))

(assert (=> bs!1591541 (= (= lt!2365537 lt!2365534) (= lambda!349755 lambda!349753))))

(assert (=> b!6354432 true))

(declare-fun bs!1591542 () Bool)

(declare-fun b!6354434 () Bool)

(assert (= bs!1591542 (and b!6354434 b!6354427)))

(declare-fun lambda!349756 () Int)

(declare-fun lt!2365538 () Int)

(assert (=> bs!1591542 (= (= lt!2365538 lt!2365533) (= lambda!349756 lambda!349752))))

(declare-fun bs!1591543 () Bool)

(assert (= bs!1591543 (and b!6354434 b!6354429)))

(assert (=> bs!1591543 (= (= lt!2365538 lt!2365534) (= lambda!349756 lambda!349753))))

(declare-fun bs!1591544 () Bool)

(assert (= bs!1591544 (and b!6354434 b!6354432)))

(assert (=> bs!1591544 (= (= lt!2365538 lt!2365537) (= lambda!349756 lambda!349755))))

(assert (=> b!6354434 true))

(declare-fun d!1993654 () Bool)

(declare-fun e!3858924 () Bool)

(assert (=> d!1993654 e!3858924))

(declare-fun res!2614649 () Bool)

(assert (=> d!1993654 (=> (not res!2614649) (not e!3858924))))

(assert (=> d!1993654 (= res!2614649 (>= lt!2365538 0))))

(declare-fun e!3858923 () Int)

(assert (=> d!1993654 (= lt!2365538 e!3858923)))

(declare-fun c!1156307 () Bool)

(assert (=> d!1993654 (= c!1156307 ((_ is Cons!64960) zl!343))))

(assert (=> d!1993654 (= (zipperDepth!368 zl!343) lt!2365538)))

(assert (=> b!6354432 (= e!3858923 lt!2365537)))

(assert (=> b!6354432 (= lt!2365537 (maxBigInt!0 (contextDepth!257 (h!71408 zl!343)) (zipperDepth!368 (t!378674 zl!343))))))

(declare-fun lt!2365539 () Unit!158375)

(assert (=> b!6354432 (= lt!2365539 (lemmaForallContextDepthBiggerThanTransitive!241 (t!378674 zl!343) lt!2365537 (zipperDepth!368 (t!378674 zl!343)) lambda!349754))))

(assert (=> b!6354432 (forall!15435 (t!378674 zl!343) lambda!349755)))

(declare-fun lt!2365540 () Unit!158375)

(assert (=> b!6354432 (= lt!2365540 lt!2365539)))

(declare-fun b!6354433 () Bool)

(assert (=> b!6354433 (= e!3858923 0)))

(assert (=> b!6354434 (= e!3858924 (forall!15435 zl!343 lambda!349756))))

(assert (= (and d!1993654 c!1156307) b!6354432))

(assert (= (and d!1993654 (not c!1156307)) b!6354433))

(assert (= (and d!1993654 res!2614649) b!6354434))

(declare-fun m!7160920 () Bool)

(assert (=> b!6354432 m!7160920))

(declare-fun m!7160922 () Bool)

(assert (=> b!6354432 m!7160922))

(declare-fun m!7160924 () Bool)

(assert (=> b!6354432 m!7160924))

(assert (=> b!6354432 m!7160920))

(assert (=> b!6354432 m!7160924))

(assert (=> b!6354432 m!7160920))

(declare-fun m!7160926 () Bool)

(assert (=> b!6354432 m!7160926))

(declare-fun m!7160928 () Bool)

(assert (=> b!6354432 m!7160928))

(declare-fun m!7160930 () Bool)

(assert (=> b!6354434 m!7160930))

(assert (=> b!6353584 d!1993654))

(declare-fun d!1993656 () Bool)

(declare-fun lt!2365543 () Regex!16261)

(assert (=> d!1993656 (validRegex!7997 lt!2365543)))

(assert (=> d!1993656 (= lt!2365543 (generalisedUnion!2105 (unfocusZipperList!1682 zl!343)))))

(assert (=> d!1993656 (= (unfocusZipper!2003 zl!343) lt!2365543)))

(declare-fun bs!1591545 () Bool)

(assert (= bs!1591545 d!1993656))

(declare-fun m!7160932 () Bool)

(assert (=> bs!1591545 m!7160932))

(assert (=> bs!1591545 m!7160248))

(assert (=> bs!1591545 m!7160248))

(assert (=> bs!1591545 m!7160250))

(assert (=> b!6353604 d!1993656))

(declare-fun d!1993658 () Bool)

(declare-fun lt!2365546 () Int)

(assert (=> d!1993658 (>= lt!2365546 0)))

(declare-fun e!3858927 () Int)

(assert (=> d!1993658 (= lt!2365546 e!3858927)))

(declare-fun c!1156311 () Bool)

(assert (=> d!1993658 (= c!1156311 ((_ is Cons!64958) (exprs!6145 lt!2365389)))))

(assert (=> d!1993658 (= (contextDepthTotal!370 lt!2365389) lt!2365546)))

(declare-fun b!6354439 () Bool)

(declare-fun regexDepthTotal!219 (Regex!16261) Int)

(assert (=> b!6354439 (= e!3858927 (+ (regexDepthTotal!219 (h!71406 (exprs!6145 lt!2365389))) (contextDepthTotal!370 (Context!11291 (t!378672 (exprs!6145 lt!2365389))))))))

(declare-fun b!6354440 () Bool)

(assert (=> b!6354440 (= e!3858927 1)))

(assert (= (and d!1993658 c!1156311) b!6354439))

(assert (= (and d!1993658 (not c!1156311)) b!6354440))

(declare-fun m!7160934 () Bool)

(assert (=> b!6354439 m!7160934))

(declare-fun m!7160936 () Bool)

(assert (=> b!6354439 m!7160936))

(assert (=> b!6353587 d!1993658))

(declare-fun d!1993660 () Bool)

(declare-fun lt!2365547 () Int)

(assert (=> d!1993660 (>= lt!2365547 0)))

(declare-fun e!3858928 () Int)

(assert (=> d!1993660 (= lt!2365547 e!3858928)))

(declare-fun c!1156312 () Bool)

(assert (=> d!1993660 (= c!1156312 ((_ is Cons!64958) (exprs!6145 (h!71408 zl!343))))))

(assert (=> d!1993660 (= (contextDepthTotal!370 (h!71408 zl!343)) lt!2365547)))

(declare-fun b!6354441 () Bool)

(assert (=> b!6354441 (= e!3858928 (+ (regexDepthTotal!219 (h!71406 (exprs!6145 (h!71408 zl!343)))) (contextDepthTotal!370 (Context!11291 (t!378672 (exprs!6145 (h!71408 zl!343)))))))))

(declare-fun b!6354442 () Bool)

(assert (=> b!6354442 (= e!3858928 1)))

(assert (= (and d!1993660 c!1156312) b!6354441))

(assert (= (and d!1993660 (not c!1156312)) b!6354442))

(declare-fun m!7160938 () Bool)

(assert (=> b!6354441 m!7160938))

(declare-fun m!7160940 () Bool)

(assert (=> b!6354441 m!7160940))

(assert (=> b!6353587 d!1993660))

(declare-fun d!1993662 () Bool)

(assert (=> d!1993662 (= (nullable!6254 (regOne!33034 (regOne!33034 r!7292))) (nullableFct!2201 (regOne!33034 (regOne!33034 r!7292))))))

(declare-fun bs!1591546 () Bool)

(assert (= bs!1591546 d!1993662))

(declare-fun m!7160942 () Bool)

(assert (=> bs!1591546 m!7160942))

(assert (=> b!6353588 d!1993662))

(declare-fun bs!1591547 () Bool)

(declare-fun d!1993664 () Bool)

(assert (= bs!1591547 (and d!1993664 b!6353605)))

(declare-fun lambda!349757 () Int)

(assert (=> bs!1591547 (not (= lambda!349757 lambda!349661))))

(declare-fun bs!1591548 () Bool)

(assert (= bs!1591548 (and d!1993664 d!1993642)))

(assert (=> bs!1591548 (not (= lambda!349757 lambda!349744))))

(declare-fun bs!1591549 () Bool)

(assert (= bs!1591549 (and d!1993664 b!6353590)))

(assert (=> bs!1591549 (not (= lambda!349757 lambda!349664))))

(assert (=> bs!1591549 (= lambda!349757 lambda!349663)))

(declare-fun bs!1591550 () Bool)

(assert (= bs!1591550 (and d!1993664 b!6354045)))

(assert (=> bs!1591550 (not (= lambda!349757 lambda!349720))))

(declare-fun bs!1591551 () Bool)

(assert (= bs!1591551 (and d!1993664 d!1993636)))

(assert (=> bs!1591551 (= (and (= (regOne!33034 (regOne!33034 r!7292)) (regOne!33034 r!7292)) (= lt!2365374 (regTwo!33034 r!7292))) (= lambda!349757 lambda!349738))))

(assert (=> bs!1591548 (= (and (= (regOne!33034 (regOne!33034 r!7292)) (regOne!33034 r!7292)) (= lt!2365374 (regTwo!33034 r!7292))) (= lambda!349757 lambda!349743))))

(declare-fun bs!1591552 () Bool)

(assert (= bs!1591552 (and d!1993664 b!6354039)))

(assert (=> bs!1591552 (not (= lambda!349757 lambda!349719))))

(assert (=> bs!1591547 (= (and (= (regOne!33034 (regOne!33034 r!7292)) (regOne!33034 r!7292)) (= lt!2365374 (regTwo!33034 r!7292))) (= lambda!349757 lambda!349660))))

(assert (=> bs!1591549 (= (and (= (regOne!33034 (regOne!33034 r!7292)) (regTwo!33034 (regOne!33034 r!7292))) (= lt!2365374 lt!2365379)) (= lambda!349757 lambda!349665))))

(assert (=> d!1993664 true))

(assert (=> d!1993664 true))

(assert (=> d!1993664 true))

(assert (=> d!1993664 (= (isDefined!12855 (findConcatSeparation!2566 (regOne!33034 (regOne!33034 r!7292)) lt!2365374 Nil!64959 s!2326 s!2326)) (Exists!3331 lambda!349757))))

(declare-fun lt!2365548 () Unit!158375)

(assert (=> d!1993664 (= lt!2365548 (choose!47172 (regOne!33034 (regOne!33034 r!7292)) lt!2365374 s!2326))))

(assert (=> d!1993664 (validRegex!7997 (regOne!33034 (regOne!33034 r!7292)))))

(assert (=> d!1993664 (= (lemmaFindConcatSeparationEquivalentToExists!2330 (regOne!33034 (regOne!33034 r!7292)) lt!2365374 s!2326) lt!2365548)))

(declare-fun bs!1591553 () Bool)

(assert (= bs!1591553 d!1993664))

(assert (=> bs!1591553 m!7160176))

(declare-fun m!7160944 () Bool)

(assert (=> bs!1591553 m!7160944))

(assert (=> bs!1591553 m!7160176))

(assert (=> bs!1591553 m!7160180))

(declare-fun m!7160946 () Bool)

(assert (=> bs!1591553 m!7160946))

(declare-fun m!7160948 () Bool)

(assert (=> bs!1591553 m!7160948))

(assert (=> b!6353590 d!1993664))

(declare-fun d!1993666 () Bool)

(assert (=> d!1993666 (= (isDefined!12855 (findConcatSeparation!2566 (regTwo!33034 (regOne!33034 r!7292)) lt!2365379 Nil!64959 s!2326 s!2326)) (not (isEmpty!37058 (findConcatSeparation!2566 (regTwo!33034 (regOne!33034 r!7292)) lt!2365379 Nil!64959 s!2326 s!2326))))))

(declare-fun bs!1591554 () Bool)

(assert (= bs!1591554 d!1993666))

(assert (=> bs!1591554 m!7160174))

(declare-fun m!7160950 () Bool)

(assert (=> bs!1591554 m!7160950))

(assert (=> b!6353590 d!1993666))

(declare-fun b!6354443 () Bool)

(declare-fun e!3858931 () Bool)

(assert (=> b!6354443 (= e!3858931 (not (= (head!13015 s!2326) (c!1156050 lt!2365396))))))

(declare-fun b!6354444 () Bool)

(declare-fun e!3858935 () Bool)

(declare-fun lt!2365549 () Bool)

(assert (=> b!6354444 (= e!3858935 (not lt!2365549))))

(declare-fun b!6354445 () Bool)

(declare-fun e!3858933 () Bool)

(assert (=> b!6354445 (= e!3858933 (matchR!8444 (derivativeStep!4965 lt!2365396 (head!13015 s!2326)) (tail!12100 s!2326)))))

(declare-fun b!6354446 () Bool)

(declare-fun res!2614650 () Bool)

(declare-fun e!3858930 () Bool)

(assert (=> b!6354446 (=> res!2614650 e!3858930)))

(declare-fun e!3858932 () Bool)

(assert (=> b!6354446 (= res!2614650 e!3858932)))

(declare-fun res!2614655 () Bool)

(assert (=> b!6354446 (=> (not res!2614655) (not e!3858932))))

(assert (=> b!6354446 (= res!2614655 lt!2365549)))

(declare-fun b!6354447 () Bool)

(declare-fun e!3858934 () Bool)

(assert (=> b!6354447 (= e!3858934 e!3858935)))

(declare-fun c!1156314 () Bool)

(assert (=> b!6354447 (= c!1156314 ((_ is EmptyLang!16261) lt!2365396))))

(declare-fun b!6354448 () Bool)

(declare-fun res!2614651 () Bool)

(assert (=> b!6354448 (=> (not res!2614651) (not e!3858932))))

(assert (=> b!6354448 (= res!2614651 (isEmpty!37057 (tail!12100 s!2326)))))

(declare-fun b!6354449 () Bool)

(assert (=> b!6354449 (= e!3858932 (= (head!13015 s!2326) (c!1156050 lt!2365396)))))

(declare-fun b!6354450 () Bool)

(declare-fun e!3858929 () Bool)

(assert (=> b!6354450 (= e!3858929 e!3858931)))

(declare-fun res!2614652 () Bool)

(assert (=> b!6354450 (=> res!2614652 e!3858931)))

(declare-fun call!541908 () Bool)

(assert (=> b!6354450 (= res!2614652 call!541908)))

(declare-fun b!6354451 () Bool)

(assert (=> b!6354451 (= e!3858930 e!3858929)))

(declare-fun res!2614654 () Bool)

(assert (=> b!6354451 (=> (not res!2614654) (not e!3858929))))

(assert (=> b!6354451 (= res!2614654 (not lt!2365549))))

(declare-fun b!6354452 () Bool)

(declare-fun res!2614653 () Bool)

(assert (=> b!6354452 (=> res!2614653 e!3858931)))

(assert (=> b!6354452 (= res!2614653 (not (isEmpty!37057 (tail!12100 s!2326))))))

(declare-fun b!6354453 () Bool)

(declare-fun res!2614657 () Bool)

(assert (=> b!6354453 (=> (not res!2614657) (not e!3858932))))

(assert (=> b!6354453 (= res!2614657 (not call!541908))))

(declare-fun b!6354454 () Bool)

(assert (=> b!6354454 (= e!3858933 (nullable!6254 lt!2365396))))

(declare-fun b!6354455 () Bool)

(assert (=> b!6354455 (= e!3858934 (= lt!2365549 call!541908))))

(declare-fun b!6354456 () Bool)

(declare-fun res!2614656 () Bool)

(assert (=> b!6354456 (=> res!2614656 e!3858930)))

(assert (=> b!6354456 (= res!2614656 (not ((_ is ElementMatch!16261) lt!2365396)))))

(assert (=> b!6354456 (= e!3858935 e!3858930)))

(declare-fun d!1993668 () Bool)

(assert (=> d!1993668 e!3858934))

(declare-fun c!1156315 () Bool)

(assert (=> d!1993668 (= c!1156315 ((_ is EmptyExpr!16261) lt!2365396))))

(assert (=> d!1993668 (= lt!2365549 e!3858933)))

(declare-fun c!1156313 () Bool)

(assert (=> d!1993668 (= c!1156313 (isEmpty!37057 s!2326))))

(assert (=> d!1993668 (validRegex!7997 lt!2365396)))

(assert (=> d!1993668 (= (matchR!8444 lt!2365396 s!2326) lt!2365549)))

(declare-fun bm!541903 () Bool)

(assert (=> bm!541903 (= call!541908 (isEmpty!37057 s!2326))))

(assert (= (and d!1993668 c!1156313) b!6354454))

(assert (= (and d!1993668 (not c!1156313)) b!6354445))

(assert (= (and d!1993668 c!1156315) b!6354455))

(assert (= (and d!1993668 (not c!1156315)) b!6354447))

(assert (= (and b!6354447 c!1156314) b!6354444))

(assert (= (and b!6354447 (not c!1156314)) b!6354456))

(assert (= (and b!6354456 (not res!2614656)) b!6354446))

(assert (= (and b!6354446 res!2614655) b!6354453))

(assert (= (and b!6354453 res!2614657) b!6354448))

(assert (= (and b!6354448 res!2614651) b!6354449))

(assert (= (and b!6354446 (not res!2614650)) b!6354451))

(assert (= (and b!6354451 res!2614654) b!6354450))

(assert (= (and b!6354450 (not res!2614652)) b!6354452))

(assert (= (and b!6354452 (not res!2614653)) b!6354443))

(assert (= (or b!6354455 b!6354450 b!6354453) bm!541903))

(assert (=> bm!541903 m!7160550))

(assert (=> d!1993668 m!7160550))

(declare-fun m!7160952 () Bool)

(assert (=> d!1993668 m!7160952))

(assert (=> b!6354445 m!7160596))

(assert (=> b!6354445 m!7160596))

(declare-fun m!7160954 () Bool)

(assert (=> b!6354445 m!7160954))

(assert (=> b!6354445 m!7160600))

(assert (=> b!6354445 m!7160954))

(assert (=> b!6354445 m!7160600))

(declare-fun m!7160956 () Bool)

(assert (=> b!6354445 m!7160956))

(assert (=> b!6354443 m!7160596))

(assert (=> b!6354449 m!7160596))

(assert (=> b!6354452 m!7160600))

(assert (=> b!6354452 m!7160600))

(assert (=> b!6354452 m!7160604))

(declare-fun m!7160958 () Bool)

(assert (=> b!6354454 m!7160958))

(assert (=> b!6354448 m!7160600))

(assert (=> b!6354448 m!7160600))

(assert (=> b!6354448 m!7160604))

(assert (=> b!6353590 d!1993668))

(declare-fun b!6354457 () Bool)

(declare-fun e!3858936 () Bool)

(assert (=> b!6354457 (= e!3858936 (matchR!8444 lt!2365379 s!2326))))

(declare-fun b!6354458 () Bool)

(declare-fun e!3858938 () Option!16152)

(assert (=> b!6354458 (= e!3858938 None!16151)))

(declare-fun b!6354459 () Bool)

(declare-fun res!2614662 () Bool)

(declare-fun e!3858939 () Bool)

(assert (=> b!6354459 (=> (not res!2614662) (not e!3858939))))

(declare-fun lt!2365551 () Option!16152)

(assert (=> b!6354459 (= res!2614662 (matchR!8444 lt!2365379 (_2!36543 (get!22476 lt!2365551))))))

(declare-fun b!6354460 () Bool)

(assert (=> b!6354460 (= e!3858939 (= (++!14330 (_1!36543 (get!22476 lt!2365551)) (_2!36543 (get!22476 lt!2365551))) s!2326))))

(declare-fun b!6354461 () Bool)

(declare-fun e!3858937 () Option!16152)

(assert (=> b!6354461 (= e!3858937 e!3858938)))

(declare-fun c!1156317 () Bool)

(assert (=> b!6354461 (= c!1156317 ((_ is Nil!64959) s!2326))))

(declare-fun b!6354462 () Bool)

(declare-fun lt!2365550 () Unit!158375)

(declare-fun lt!2365552 () Unit!158375)

(assert (=> b!6354462 (= lt!2365550 lt!2365552)))

(assert (=> b!6354462 (= (++!14330 (++!14330 Nil!64959 (Cons!64959 (h!71407 s!2326) Nil!64959)) (t!378673 s!2326)) s!2326)))

(assert (=> b!6354462 (= lt!2365552 (lemmaMoveElementToOtherListKeepsConcatEq!2425 Nil!64959 (h!71407 s!2326) (t!378673 s!2326) s!2326))))

(assert (=> b!6354462 (= e!3858938 (findConcatSeparation!2566 (regTwo!33034 (regOne!33034 r!7292)) lt!2365379 (++!14330 Nil!64959 (Cons!64959 (h!71407 s!2326) Nil!64959)) (t!378673 s!2326) s!2326))))

(declare-fun d!1993670 () Bool)

(declare-fun e!3858940 () Bool)

(assert (=> d!1993670 e!3858940))

(declare-fun res!2614658 () Bool)

(assert (=> d!1993670 (=> res!2614658 e!3858940)))

(assert (=> d!1993670 (= res!2614658 e!3858939)))

(declare-fun res!2614660 () Bool)

(assert (=> d!1993670 (=> (not res!2614660) (not e!3858939))))

(assert (=> d!1993670 (= res!2614660 (isDefined!12855 lt!2365551))))

(assert (=> d!1993670 (= lt!2365551 e!3858937)))

(declare-fun c!1156316 () Bool)

(assert (=> d!1993670 (= c!1156316 e!3858936)))

(declare-fun res!2614659 () Bool)

(assert (=> d!1993670 (=> (not res!2614659) (not e!3858936))))

(assert (=> d!1993670 (= res!2614659 (matchR!8444 (regTwo!33034 (regOne!33034 r!7292)) Nil!64959))))

(assert (=> d!1993670 (validRegex!7997 (regTwo!33034 (regOne!33034 r!7292)))))

(assert (=> d!1993670 (= (findConcatSeparation!2566 (regTwo!33034 (regOne!33034 r!7292)) lt!2365379 Nil!64959 s!2326 s!2326) lt!2365551)))

(declare-fun b!6354463 () Bool)

(declare-fun res!2614661 () Bool)

(assert (=> b!6354463 (=> (not res!2614661) (not e!3858939))))

(assert (=> b!6354463 (= res!2614661 (matchR!8444 (regTwo!33034 (regOne!33034 r!7292)) (_1!36543 (get!22476 lt!2365551))))))

(declare-fun b!6354464 () Bool)

(assert (=> b!6354464 (= e!3858937 (Some!16151 (tuple2!66481 Nil!64959 s!2326)))))

(declare-fun b!6354465 () Bool)

(assert (=> b!6354465 (= e!3858940 (not (isDefined!12855 lt!2365551)))))

(assert (= (and d!1993670 res!2614659) b!6354457))

(assert (= (and d!1993670 c!1156316) b!6354464))

(assert (= (and d!1993670 (not c!1156316)) b!6354461))

(assert (= (and b!6354461 c!1156317) b!6354458))

(assert (= (and b!6354461 (not c!1156317)) b!6354462))

(assert (= (and d!1993670 res!2614660) b!6354463))

(assert (= (and b!6354463 res!2614661) b!6354459))

(assert (= (and b!6354459 res!2614662) b!6354460))

(assert (= (and d!1993670 (not res!2614658)) b!6354465))

(assert (=> b!6354462 m!7160850))

(assert (=> b!6354462 m!7160850))

(assert (=> b!6354462 m!7160852))

(assert (=> b!6354462 m!7160854))

(assert (=> b!6354462 m!7160850))

(declare-fun m!7160960 () Bool)

(assert (=> b!6354462 m!7160960))

(declare-fun m!7160962 () Bool)

(assert (=> b!6354460 m!7160962))

(declare-fun m!7160964 () Bool)

(assert (=> b!6354460 m!7160964))

(declare-fun m!7160966 () Bool)

(assert (=> b!6354465 m!7160966))

(declare-fun m!7160968 () Bool)

(assert (=> b!6354457 m!7160968))

(assert (=> b!6354459 m!7160962))

(declare-fun m!7160970 () Bool)

(assert (=> b!6354459 m!7160970))

(assert (=> b!6354463 m!7160962))

(declare-fun m!7160972 () Bool)

(assert (=> b!6354463 m!7160972))

(assert (=> d!1993670 m!7160966))

(declare-fun m!7160974 () Bool)

(assert (=> d!1993670 m!7160974))

(assert (=> d!1993670 m!7160194))

(assert (=> b!6353590 d!1993670))

(declare-fun bs!1591555 () Bool)

(declare-fun d!1993672 () Bool)

(assert (= bs!1591555 (and d!1993672 d!1993494)))

(declare-fun lambda!349758 () Int)

(assert (=> bs!1591555 (= lambda!349758 lambda!349698)))

(declare-fun bs!1591556 () Bool)

(assert (= bs!1591556 (and d!1993672 d!1993512)))

(assert (=> bs!1591556 (= lambda!349758 lambda!349707)))

(declare-fun bs!1591557 () Bool)

(assert (= bs!1591557 (and d!1993672 d!1993552)))

(assert (=> bs!1591557 (= lambda!349758 lambda!349725)))

(declare-fun b!6354466 () Bool)

(declare-fun e!3858946 () Bool)

(declare-fun lt!2365553 () Regex!16261)

(assert (=> b!6354466 (= e!3858946 (isEmptyExpr!1663 lt!2365553))))

(declare-fun b!6354467 () Bool)

(declare-fun e!3858942 () Regex!16261)

(declare-fun e!3858945 () Regex!16261)

(assert (=> b!6354467 (= e!3858942 e!3858945)))

(declare-fun c!1156321 () Bool)

(assert (=> b!6354467 (= c!1156321 ((_ is Cons!64958) lt!2365375))))

(declare-fun b!6354468 () Bool)

(declare-fun e!3858941 () Bool)

(assert (=> b!6354468 (= e!3858941 (= lt!2365553 (head!13014 lt!2365375)))))

(declare-fun b!6354469 () Bool)

(assert (=> b!6354469 (= e!3858942 (h!71406 lt!2365375))))

(declare-fun b!6354470 () Bool)

(assert (=> b!6354470 (= e!3858945 EmptyExpr!16261)))

(declare-fun b!6354471 () Bool)

(assert (=> b!6354471 (= e!3858945 (Concat!25106 (h!71406 lt!2365375) (generalisedConcat!1858 (t!378672 lt!2365375))))))

(declare-fun b!6354472 () Bool)

(assert (=> b!6354472 (= e!3858941 (isConcat!1186 lt!2365553))))

(declare-fun e!3858944 () Bool)

(assert (=> d!1993672 e!3858944))

(declare-fun res!2614664 () Bool)

(assert (=> d!1993672 (=> (not res!2614664) (not e!3858944))))

(assert (=> d!1993672 (= res!2614664 (validRegex!7997 lt!2365553))))

(assert (=> d!1993672 (= lt!2365553 e!3858942)))

(declare-fun c!1156320 () Bool)

(declare-fun e!3858943 () Bool)

(assert (=> d!1993672 (= c!1156320 e!3858943)))

(declare-fun res!2614663 () Bool)

(assert (=> d!1993672 (=> (not res!2614663) (not e!3858943))))

(assert (=> d!1993672 (= res!2614663 ((_ is Cons!64958) lt!2365375))))

(assert (=> d!1993672 (forall!15434 lt!2365375 lambda!349758)))

(assert (=> d!1993672 (= (generalisedConcat!1858 lt!2365375) lt!2365553)))

(declare-fun b!6354473 () Bool)

(assert (=> b!6354473 (= e!3858946 e!3858941)))

(declare-fun c!1156318 () Bool)

(assert (=> b!6354473 (= c!1156318 (isEmpty!37054 (tail!12099 lt!2365375)))))

(declare-fun b!6354474 () Bool)

(assert (=> b!6354474 (= e!3858944 e!3858946)))

(declare-fun c!1156319 () Bool)

(assert (=> b!6354474 (= c!1156319 (isEmpty!37054 lt!2365375))))

(declare-fun b!6354475 () Bool)

(assert (=> b!6354475 (= e!3858943 (isEmpty!37054 (t!378672 lt!2365375)))))

(assert (= (and d!1993672 res!2614663) b!6354475))

(assert (= (and d!1993672 c!1156320) b!6354469))

(assert (= (and d!1993672 (not c!1156320)) b!6354467))

(assert (= (and b!6354467 c!1156321) b!6354471))

(assert (= (and b!6354467 (not c!1156321)) b!6354470))

(assert (= (and d!1993672 res!2614664) b!6354474))

(assert (= (and b!6354474 c!1156319) b!6354466))

(assert (= (and b!6354474 (not c!1156319)) b!6354473))

(assert (= (and b!6354473 c!1156318) b!6354468))

(assert (= (and b!6354473 (not c!1156318)) b!6354472))

(declare-fun m!7160976 () Bool)

(assert (=> b!6354474 m!7160976))

(declare-fun m!7160978 () Bool)

(assert (=> b!6354468 m!7160978))

(declare-fun m!7160980 () Bool)

(assert (=> b!6354472 m!7160980))

(declare-fun m!7160982 () Bool)

(assert (=> b!6354473 m!7160982))

(assert (=> b!6354473 m!7160982))

(declare-fun m!7160984 () Bool)

(assert (=> b!6354473 m!7160984))

(declare-fun m!7160986 () Bool)

(assert (=> b!6354475 m!7160986))

(declare-fun m!7160988 () Bool)

(assert (=> b!6354466 m!7160988))

(declare-fun m!7160990 () Bool)

(assert (=> b!6354471 m!7160990))

(declare-fun m!7160992 () Bool)

(assert (=> d!1993672 m!7160992))

(declare-fun m!7160994 () Bool)

(assert (=> d!1993672 m!7160994))

(assert (=> b!6353590 d!1993672))

(declare-fun b!6354476 () Bool)

(declare-fun e!3858947 () Bool)

(declare-fun e!3858950 () Bool)

(assert (=> b!6354476 (= e!3858947 e!3858950)))

(declare-fun c!1156323 () Bool)

(assert (=> b!6354476 (= c!1156323 ((_ is Union!16261) (regTwo!33034 (regOne!33034 r!7292))))))

(declare-fun d!1993674 () Bool)

(declare-fun res!2614669 () Bool)

(declare-fun e!3858949 () Bool)

(assert (=> d!1993674 (=> res!2614669 e!3858949)))

(assert (=> d!1993674 (= res!2614669 ((_ is ElementMatch!16261) (regTwo!33034 (regOne!33034 r!7292))))))

(assert (=> d!1993674 (= (validRegex!7997 (regTwo!33034 (regOne!33034 r!7292))) e!3858949)))

(declare-fun b!6354477 () Bool)

(declare-fun res!2614665 () Bool)

(declare-fun e!3858948 () Bool)

(assert (=> b!6354477 (=> res!2614665 e!3858948)))

(assert (=> b!6354477 (= res!2614665 (not ((_ is Concat!25106) (regTwo!33034 (regOne!33034 r!7292)))))))

(assert (=> b!6354477 (= e!3858950 e!3858948)))

(declare-fun bm!541904 () Bool)

(declare-fun call!541909 () Bool)

(assert (=> bm!541904 (= call!541909 (validRegex!7997 (ite c!1156323 (regOne!33035 (regTwo!33034 (regOne!33034 r!7292))) (regOne!33034 (regTwo!33034 (regOne!33034 r!7292))))))))

(declare-fun b!6354478 () Bool)

(declare-fun res!2614668 () Bool)

(declare-fun e!3858951 () Bool)

(assert (=> b!6354478 (=> (not res!2614668) (not e!3858951))))

(assert (=> b!6354478 (= res!2614668 call!541909)))

(assert (=> b!6354478 (= e!3858950 e!3858951)))

(declare-fun b!6354479 () Bool)

(assert (=> b!6354479 (= e!3858949 e!3858947)))

(declare-fun c!1156322 () Bool)

(assert (=> b!6354479 (= c!1156322 ((_ is Star!16261) (regTwo!33034 (regOne!33034 r!7292))))))

(declare-fun b!6354480 () Bool)

(declare-fun e!3858953 () Bool)

(declare-fun call!541911 () Bool)

(assert (=> b!6354480 (= e!3858953 call!541911)))

(declare-fun b!6354481 () Bool)

(declare-fun e!3858952 () Bool)

(assert (=> b!6354481 (= e!3858947 e!3858952)))

(declare-fun res!2614666 () Bool)

(assert (=> b!6354481 (= res!2614666 (not (nullable!6254 (reg!16590 (regTwo!33034 (regOne!33034 r!7292))))))))

(assert (=> b!6354481 (=> (not res!2614666) (not e!3858952))))

(declare-fun call!541910 () Bool)

(declare-fun bm!541905 () Bool)

(assert (=> bm!541905 (= call!541910 (validRegex!7997 (ite c!1156322 (reg!16590 (regTwo!33034 (regOne!33034 r!7292))) (ite c!1156323 (regTwo!33035 (regTwo!33034 (regOne!33034 r!7292))) (regTwo!33034 (regTwo!33034 (regOne!33034 r!7292)))))))))

(declare-fun b!6354482 () Bool)

(assert (=> b!6354482 (= e!3858951 call!541911)))

(declare-fun b!6354483 () Bool)

(assert (=> b!6354483 (= e!3858952 call!541910)))

(declare-fun bm!541906 () Bool)

(assert (=> bm!541906 (= call!541911 call!541910)))

(declare-fun b!6354484 () Bool)

(assert (=> b!6354484 (= e!3858948 e!3858953)))

(declare-fun res!2614667 () Bool)

(assert (=> b!6354484 (=> (not res!2614667) (not e!3858953))))

(assert (=> b!6354484 (= res!2614667 call!541909)))

(assert (= (and d!1993674 (not res!2614669)) b!6354479))

(assert (= (and b!6354479 c!1156322) b!6354481))

(assert (= (and b!6354479 (not c!1156322)) b!6354476))

(assert (= (and b!6354481 res!2614666) b!6354483))

(assert (= (and b!6354476 c!1156323) b!6354478))

(assert (= (and b!6354476 (not c!1156323)) b!6354477))

(assert (= (and b!6354478 res!2614668) b!6354482))

(assert (= (and b!6354477 (not res!2614665)) b!6354484))

(assert (= (and b!6354484 res!2614667) b!6354480))

(assert (= (or b!6354482 b!6354480) bm!541906))

(assert (= (or b!6354478 b!6354484) bm!541904))

(assert (= (or b!6354483 bm!541906) bm!541905))

(declare-fun m!7160996 () Bool)

(assert (=> bm!541904 m!7160996))

(declare-fun m!7160998 () Bool)

(assert (=> b!6354481 m!7160998))

(declare-fun m!7161000 () Bool)

(assert (=> bm!541905 m!7161000))

(assert (=> b!6353590 d!1993674))

(declare-fun b!6354485 () Bool)

(declare-fun e!3858954 () Bool)

(assert (=> b!6354485 (= e!3858954 (matchR!8444 lt!2365374 s!2326))))

(declare-fun b!6354486 () Bool)

(declare-fun e!3858956 () Option!16152)

(assert (=> b!6354486 (= e!3858956 None!16151)))

(declare-fun b!6354487 () Bool)

(declare-fun res!2614674 () Bool)

(declare-fun e!3858957 () Bool)

(assert (=> b!6354487 (=> (not res!2614674) (not e!3858957))))

(declare-fun lt!2365555 () Option!16152)

(assert (=> b!6354487 (= res!2614674 (matchR!8444 lt!2365374 (_2!36543 (get!22476 lt!2365555))))))

(declare-fun b!6354488 () Bool)

(assert (=> b!6354488 (= e!3858957 (= (++!14330 (_1!36543 (get!22476 lt!2365555)) (_2!36543 (get!22476 lt!2365555))) s!2326))))

(declare-fun b!6354489 () Bool)

(declare-fun e!3858955 () Option!16152)

(assert (=> b!6354489 (= e!3858955 e!3858956)))

(declare-fun c!1156325 () Bool)

(assert (=> b!6354489 (= c!1156325 ((_ is Nil!64959) s!2326))))

(declare-fun b!6354490 () Bool)

(declare-fun lt!2365554 () Unit!158375)

(declare-fun lt!2365556 () Unit!158375)

(assert (=> b!6354490 (= lt!2365554 lt!2365556)))

(assert (=> b!6354490 (= (++!14330 (++!14330 Nil!64959 (Cons!64959 (h!71407 s!2326) Nil!64959)) (t!378673 s!2326)) s!2326)))

(assert (=> b!6354490 (= lt!2365556 (lemmaMoveElementToOtherListKeepsConcatEq!2425 Nil!64959 (h!71407 s!2326) (t!378673 s!2326) s!2326))))

(assert (=> b!6354490 (= e!3858956 (findConcatSeparation!2566 (regOne!33034 (regOne!33034 r!7292)) lt!2365374 (++!14330 Nil!64959 (Cons!64959 (h!71407 s!2326) Nil!64959)) (t!378673 s!2326) s!2326))))

(declare-fun d!1993676 () Bool)

(declare-fun e!3858958 () Bool)

(assert (=> d!1993676 e!3858958))

(declare-fun res!2614670 () Bool)

(assert (=> d!1993676 (=> res!2614670 e!3858958)))

(assert (=> d!1993676 (= res!2614670 e!3858957)))

(declare-fun res!2614672 () Bool)

(assert (=> d!1993676 (=> (not res!2614672) (not e!3858957))))

(assert (=> d!1993676 (= res!2614672 (isDefined!12855 lt!2365555))))

(assert (=> d!1993676 (= lt!2365555 e!3858955)))

(declare-fun c!1156324 () Bool)

(assert (=> d!1993676 (= c!1156324 e!3858954)))

(declare-fun res!2614671 () Bool)

(assert (=> d!1993676 (=> (not res!2614671) (not e!3858954))))

(assert (=> d!1993676 (= res!2614671 (matchR!8444 (regOne!33034 (regOne!33034 r!7292)) Nil!64959))))

(assert (=> d!1993676 (validRegex!7997 (regOne!33034 (regOne!33034 r!7292)))))

(assert (=> d!1993676 (= (findConcatSeparation!2566 (regOne!33034 (regOne!33034 r!7292)) lt!2365374 Nil!64959 s!2326 s!2326) lt!2365555)))

(declare-fun b!6354491 () Bool)

(declare-fun res!2614673 () Bool)

(assert (=> b!6354491 (=> (not res!2614673) (not e!3858957))))

(assert (=> b!6354491 (= res!2614673 (matchR!8444 (regOne!33034 (regOne!33034 r!7292)) (_1!36543 (get!22476 lt!2365555))))))

(declare-fun b!6354492 () Bool)

(assert (=> b!6354492 (= e!3858955 (Some!16151 (tuple2!66481 Nil!64959 s!2326)))))

(declare-fun b!6354493 () Bool)

(assert (=> b!6354493 (= e!3858958 (not (isDefined!12855 lt!2365555)))))

(assert (= (and d!1993676 res!2614671) b!6354485))

(assert (= (and d!1993676 c!1156324) b!6354492))

(assert (= (and d!1993676 (not c!1156324)) b!6354489))

(assert (= (and b!6354489 c!1156325) b!6354486))

(assert (= (and b!6354489 (not c!1156325)) b!6354490))

(assert (= (and d!1993676 res!2614672) b!6354491))

(assert (= (and b!6354491 res!2614673) b!6354487))

(assert (= (and b!6354487 res!2614674) b!6354488))

(assert (= (and d!1993676 (not res!2614670)) b!6354493))

(assert (=> b!6354490 m!7160850))

(assert (=> b!6354490 m!7160850))

(assert (=> b!6354490 m!7160852))

(assert (=> b!6354490 m!7160854))

(assert (=> b!6354490 m!7160850))

(declare-fun m!7161002 () Bool)

(assert (=> b!6354490 m!7161002))

(declare-fun m!7161004 () Bool)

(assert (=> b!6354488 m!7161004))

(declare-fun m!7161006 () Bool)

(assert (=> b!6354488 m!7161006))

(declare-fun m!7161008 () Bool)

(assert (=> b!6354493 m!7161008))

(assert (=> b!6354485 m!7160190))

(assert (=> b!6354487 m!7161004))

(declare-fun m!7161010 () Bool)

(assert (=> b!6354487 m!7161010))

(assert (=> b!6354491 m!7161004))

(declare-fun m!7161012 () Bool)

(assert (=> b!6354491 m!7161012))

(assert (=> d!1993676 m!7161008))

(declare-fun m!7161014 () Bool)

(assert (=> d!1993676 m!7161014))

(assert (=> d!1993676 m!7160948))

(assert (=> b!6353590 d!1993676))

(declare-fun d!1993678 () Bool)

(assert (=> d!1993678 (= (matchR!8444 lt!2365396 s!2326) (matchRSpec!3362 lt!2365396 s!2326))))

(declare-fun lt!2365557 () Unit!158375)

(assert (=> d!1993678 (= lt!2365557 (choose!47168 lt!2365396 s!2326))))

(assert (=> d!1993678 (validRegex!7997 lt!2365396)))

(assert (=> d!1993678 (= (mainMatchTheorem!3362 lt!2365396 s!2326) lt!2365557)))

(declare-fun bs!1591558 () Bool)

(assert (= bs!1591558 d!1993678))

(assert (=> bs!1591558 m!7160162))

(assert (=> bs!1591558 m!7160192))

(declare-fun m!7161016 () Bool)

(assert (=> bs!1591558 m!7161016))

(assert (=> bs!1591558 m!7160952))

(assert (=> b!6353590 d!1993678))

(declare-fun bs!1591559 () Bool)

(declare-fun b!6354496 () Bool)

(assert (= bs!1591559 (and b!6354496 b!6353605)))

(declare-fun lambda!349759 () Int)

(assert (=> bs!1591559 (not (= lambda!349759 lambda!349661))))

(declare-fun bs!1591560 () Bool)

(assert (= bs!1591560 (and b!6354496 d!1993642)))

(assert (=> bs!1591560 (not (= lambda!349759 lambda!349744))))

(declare-fun bs!1591561 () Bool)

(assert (= bs!1591561 (and b!6354496 b!6353590)))

(assert (=> bs!1591561 (not (= lambda!349759 lambda!349664))))

(assert (=> bs!1591561 (not (= lambda!349759 lambda!349663))))

(declare-fun bs!1591562 () Bool)

(assert (= bs!1591562 (and b!6354496 b!6354045)))

(assert (=> bs!1591562 (not (= lambda!349759 lambda!349720))))

(declare-fun bs!1591563 () Bool)

(assert (= bs!1591563 (and b!6354496 d!1993664)))

(assert (=> bs!1591563 (not (= lambda!349759 lambda!349757))))

(declare-fun bs!1591564 () Bool)

(assert (= bs!1591564 (and b!6354496 d!1993636)))

(assert (=> bs!1591564 (not (= lambda!349759 lambda!349738))))

(assert (=> bs!1591560 (not (= lambda!349759 lambda!349743))))

(declare-fun bs!1591565 () Bool)

(assert (= bs!1591565 (and b!6354496 b!6354039)))

(assert (=> bs!1591565 (= (and (= (reg!16590 lt!2365396) (reg!16590 r!7292)) (= lt!2365396 r!7292)) (= lambda!349759 lambda!349719))))

(assert (=> bs!1591559 (not (= lambda!349759 lambda!349660))))

(assert (=> bs!1591561 (not (= lambda!349759 lambda!349665))))

(assert (=> b!6354496 true))

(assert (=> b!6354496 true))

(declare-fun bs!1591566 () Bool)

(declare-fun b!6354502 () Bool)

(assert (= bs!1591566 (and b!6354502 b!6353605)))

(declare-fun lambda!349760 () Int)

(assert (=> bs!1591566 (= (and (= (regOne!33034 lt!2365396) (regOne!33034 r!7292)) (= (regTwo!33034 lt!2365396) (regTwo!33034 r!7292))) (= lambda!349760 lambda!349661))))

(declare-fun bs!1591567 () Bool)

(assert (= bs!1591567 (and b!6354502 d!1993642)))

(assert (=> bs!1591567 (= (and (= (regOne!33034 lt!2365396) (regOne!33034 r!7292)) (= (regTwo!33034 lt!2365396) (regTwo!33034 r!7292))) (= lambda!349760 lambda!349744))))

(declare-fun bs!1591568 () Bool)

(assert (= bs!1591568 (and b!6354502 b!6353590)))

(assert (=> bs!1591568 (= (and (= (regOne!33034 lt!2365396) (regOne!33034 (regOne!33034 r!7292))) (= (regTwo!33034 lt!2365396) lt!2365374)) (= lambda!349760 lambda!349664))))

(assert (=> bs!1591568 (not (= lambda!349760 lambda!349663))))

(declare-fun bs!1591569 () Bool)

(assert (= bs!1591569 (and b!6354502 b!6354045)))

(assert (=> bs!1591569 (= (and (= (regOne!33034 lt!2365396) (regOne!33034 r!7292)) (= (regTwo!33034 lt!2365396) (regTwo!33034 r!7292))) (= lambda!349760 lambda!349720))))

(declare-fun bs!1591570 () Bool)

(assert (= bs!1591570 (and b!6354502 d!1993664)))

(assert (=> bs!1591570 (not (= lambda!349760 lambda!349757))))

(declare-fun bs!1591571 () Bool)

(assert (= bs!1591571 (and b!6354502 b!6354496)))

(assert (=> bs!1591571 (not (= lambda!349760 lambda!349759))))

(declare-fun bs!1591572 () Bool)

(assert (= bs!1591572 (and b!6354502 d!1993636)))

(assert (=> bs!1591572 (not (= lambda!349760 lambda!349738))))

(assert (=> bs!1591567 (not (= lambda!349760 lambda!349743))))

(declare-fun bs!1591573 () Bool)

(assert (= bs!1591573 (and b!6354502 b!6354039)))

(assert (=> bs!1591573 (not (= lambda!349760 lambda!349719))))

(assert (=> bs!1591566 (not (= lambda!349760 lambda!349660))))

(assert (=> bs!1591568 (not (= lambda!349760 lambda!349665))))

(assert (=> b!6354502 true))

(assert (=> b!6354502 true))

(declare-fun b!6354495 () Bool)

(declare-fun e!3858961 () Bool)

(assert (=> b!6354495 (= e!3858961 (= s!2326 (Cons!64959 (c!1156050 lt!2365396) Nil!64959)))))

(declare-fun e!3858965 () Bool)

(declare-fun call!541913 () Bool)

(assert (=> b!6354496 (= e!3858965 call!541913)))

(declare-fun b!6354497 () Bool)

(declare-fun e!3858960 () Bool)

(declare-fun e!3858963 () Bool)

(assert (=> b!6354497 (= e!3858960 e!3858963)))

(declare-fun res!2614676 () Bool)

(assert (=> b!6354497 (= res!2614676 (matchRSpec!3362 (regOne!33035 lt!2365396) s!2326))))

(assert (=> b!6354497 (=> res!2614676 e!3858963)))

(declare-fun bm!541907 () Bool)

(declare-fun c!1156329 () Bool)

(assert (=> bm!541907 (= call!541913 (Exists!3331 (ite c!1156329 lambda!349759 lambda!349760)))))

(declare-fun bm!541908 () Bool)

(declare-fun call!541912 () Bool)

(assert (=> bm!541908 (= call!541912 (isEmpty!37057 s!2326))))

(declare-fun b!6354498 () Bool)

(declare-fun e!3858962 () Bool)

(declare-fun e!3858964 () Bool)

(assert (=> b!6354498 (= e!3858962 e!3858964)))

(declare-fun res!2614677 () Bool)

(assert (=> b!6354498 (= res!2614677 (not ((_ is EmptyLang!16261) lt!2365396)))))

(assert (=> b!6354498 (=> (not res!2614677) (not e!3858964))))

(declare-fun b!6354499 () Bool)

(assert (=> b!6354499 (= e!3858962 call!541912)))

(declare-fun b!6354500 () Bool)

(declare-fun e!3858959 () Bool)

(assert (=> b!6354500 (= e!3858960 e!3858959)))

(assert (=> b!6354500 (= c!1156329 ((_ is Star!16261) lt!2365396))))

(declare-fun b!6354501 () Bool)

(assert (=> b!6354501 (= e!3858963 (matchRSpec!3362 (regTwo!33035 lt!2365396) s!2326))))

(assert (=> b!6354502 (= e!3858959 call!541913)))

(declare-fun b!6354494 () Bool)

(declare-fun c!1156327 () Bool)

(assert (=> b!6354494 (= c!1156327 ((_ is ElementMatch!16261) lt!2365396))))

(assert (=> b!6354494 (= e!3858964 e!3858961)))

(declare-fun d!1993680 () Bool)

(declare-fun c!1156326 () Bool)

(assert (=> d!1993680 (= c!1156326 ((_ is EmptyExpr!16261) lt!2365396))))

(assert (=> d!1993680 (= (matchRSpec!3362 lt!2365396 s!2326) e!3858962)))

(declare-fun b!6354503 () Bool)

(declare-fun c!1156328 () Bool)

(assert (=> b!6354503 (= c!1156328 ((_ is Union!16261) lt!2365396))))

(assert (=> b!6354503 (= e!3858961 e!3858960)))

(declare-fun b!6354504 () Bool)

(declare-fun res!2614675 () Bool)

(assert (=> b!6354504 (=> res!2614675 e!3858965)))

(assert (=> b!6354504 (= res!2614675 call!541912)))

(assert (=> b!6354504 (= e!3858959 e!3858965)))

(assert (= (and d!1993680 c!1156326) b!6354499))

(assert (= (and d!1993680 (not c!1156326)) b!6354498))

(assert (= (and b!6354498 res!2614677) b!6354494))

(assert (= (and b!6354494 c!1156327) b!6354495))

(assert (= (and b!6354494 (not c!1156327)) b!6354503))

(assert (= (and b!6354503 c!1156328) b!6354497))

(assert (= (and b!6354503 (not c!1156328)) b!6354500))

(assert (= (and b!6354497 (not res!2614676)) b!6354501))

(assert (= (and b!6354500 c!1156329) b!6354504))

(assert (= (and b!6354500 (not c!1156329)) b!6354502))

(assert (= (and b!6354504 (not res!2614675)) b!6354496))

(assert (= (or b!6354496 b!6354502) bm!541907))

(assert (= (or b!6354499 b!6354504) bm!541908))

(declare-fun m!7161018 () Bool)

(assert (=> b!6354497 m!7161018))

(declare-fun m!7161020 () Bool)

(assert (=> bm!541907 m!7161020))

(assert (=> bm!541908 m!7160550))

(declare-fun m!7161022 () Bool)

(assert (=> b!6354501 m!7161022))

(assert (=> b!6353590 d!1993680))

(declare-fun bs!1591574 () Bool)

(declare-fun d!1993682 () Bool)

(assert (= bs!1591574 (and d!1993682 b!6354502)))

(declare-fun lambda!349761 () Int)

(assert (=> bs!1591574 (not (= lambda!349761 lambda!349760))))

(declare-fun bs!1591575 () Bool)

(assert (= bs!1591575 (and d!1993682 b!6353605)))

(assert (=> bs!1591575 (not (= lambda!349761 lambda!349661))))

(declare-fun bs!1591576 () Bool)

(assert (= bs!1591576 (and d!1993682 d!1993642)))

(assert (=> bs!1591576 (not (= lambda!349761 lambda!349744))))

(declare-fun bs!1591577 () Bool)

(assert (= bs!1591577 (and d!1993682 b!6353590)))

(assert (=> bs!1591577 (not (= lambda!349761 lambda!349664))))

(assert (=> bs!1591577 (= lambda!349761 lambda!349663)))

(declare-fun bs!1591578 () Bool)

(assert (= bs!1591578 (and d!1993682 b!6354045)))

(assert (=> bs!1591578 (not (= lambda!349761 lambda!349720))))

(declare-fun bs!1591579 () Bool)

(assert (= bs!1591579 (and d!1993682 d!1993664)))

(assert (=> bs!1591579 (= lambda!349761 lambda!349757)))

(declare-fun bs!1591580 () Bool)

(assert (= bs!1591580 (and d!1993682 b!6354496)))

(assert (=> bs!1591580 (not (= lambda!349761 lambda!349759))))

(declare-fun bs!1591581 () Bool)

(assert (= bs!1591581 (and d!1993682 d!1993636)))

(assert (=> bs!1591581 (= (and (= (regOne!33034 (regOne!33034 r!7292)) (regOne!33034 r!7292)) (= lt!2365374 (regTwo!33034 r!7292))) (= lambda!349761 lambda!349738))))

(assert (=> bs!1591576 (= (and (= (regOne!33034 (regOne!33034 r!7292)) (regOne!33034 r!7292)) (= lt!2365374 (regTwo!33034 r!7292))) (= lambda!349761 lambda!349743))))

(declare-fun bs!1591582 () Bool)

(assert (= bs!1591582 (and d!1993682 b!6354039)))

(assert (=> bs!1591582 (not (= lambda!349761 lambda!349719))))

(assert (=> bs!1591575 (= (and (= (regOne!33034 (regOne!33034 r!7292)) (regOne!33034 r!7292)) (= lt!2365374 (regTwo!33034 r!7292))) (= lambda!349761 lambda!349660))))

(assert (=> bs!1591577 (= (and (= (regOne!33034 (regOne!33034 r!7292)) (regTwo!33034 (regOne!33034 r!7292))) (= lt!2365374 lt!2365379)) (= lambda!349761 lambda!349665))))

(assert (=> d!1993682 true))

(assert (=> d!1993682 true))

(assert (=> d!1993682 true))

(declare-fun lambda!349762 () Int)

(assert (=> bs!1591574 (= (and (= (regOne!33034 (regOne!33034 r!7292)) (regOne!33034 lt!2365396)) (= lt!2365374 (regTwo!33034 lt!2365396))) (= lambda!349762 lambda!349760))))

(assert (=> bs!1591575 (= (and (= (regOne!33034 (regOne!33034 r!7292)) (regOne!33034 r!7292)) (= lt!2365374 (regTwo!33034 r!7292))) (= lambda!349762 lambda!349661))))

(assert (=> bs!1591576 (= (and (= (regOne!33034 (regOne!33034 r!7292)) (regOne!33034 r!7292)) (= lt!2365374 (regTwo!33034 r!7292))) (= lambda!349762 lambda!349744))))

(declare-fun bs!1591583 () Bool)

(assert (= bs!1591583 d!1993682))

(assert (=> bs!1591583 (not (= lambda!349762 lambda!349761))))

(assert (=> bs!1591577 (= lambda!349762 lambda!349664)))

(assert (=> bs!1591577 (not (= lambda!349762 lambda!349663))))

(assert (=> bs!1591578 (= (and (= (regOne!33034 (regOne!33034 r!7292)) (regOne!33034 r!7292)) (= lt!2365374 (regTwo!33034 r!7292))) (= lambda!349762 lambda!349720))))

(assert (=> bs!1591579 (not (= lambda!349762 lambda!349757))))

(assert (=> bs!1591580 (not (= lambda!349762 lambda!349759))))

(assert (=> bs!1591581 (not (= lambda!349762 lambda!349738))))

(assert (=> bs!1591576 (not (= lambda!349762 lambda!349743))))

(assert (=> bs!1591582 (not (= lambda!349762 lambda!349719))))

(assert (=> bs!1591575 (not (= lambda!349762 lambda!349660))))

(assert (=> bs!1591577 (not (= lambda!349762 lambda!349665))))

(assert (=> d!1993682 true))

(assert (=> d!1993682 true))

(assert (=> d!1993682 true))

(assert (=> d!1993682 (= (Exists!3331 lambda!349761) (Exists!3331 lambda!349762))))

(declare-fun lt!2365558 () Unit!158375)

(assert (=> d!1993682 (= lt!2365558 (choose!47174 (regOne!33034 (regOne!33034 r!7292)) lt!2365374 s!2326))))

(assert (=> d!1993682 (validRegex!7997 (regOne!33034 (regOne!33034 r!7292)))))

(assert (=> d!1993682 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1868 (regOne!33034 (regOne!33034 r!7292)) lt!2365374 s!2326) lt!2365558)))

(declare-fun m!7161024 () Bool)

(assert (=> bs!1591583 m!7161024))

(declare-fun m!7161026 () Bool)

(assert (=> bs!1591583 m!7161026))

(declare-fun m!7161028 () Bool)

(assert (=> bs!1591583 m!7161028))

(assert (=> bs!1591583 m!7160948))

(assert (=> b!6353590 d!1993682))

(declare-fun bs!1591584 () Bool)

(declare-fun d!1993684 () Bool)

(assert (= bs!1591584 (and d!1993684 d!1993494)))

(declare-fun lambda!349763 () Int)

(assert (=> bs!1591584 (= lambda!349763 lambda!349698)))

(declare-fun bs!1591585 () Bool)

(assert (= bs!1591585 (and d!1993684 d!1993512)))

(assert (=> bs!1591585 (= lambda!349763 lambda!349707)))

(declare-fun bs!1591586 () Bool)

(assert (= bs!1591586 (and d!1993684 d!1993552)))

(assert (=> bs!1591586 (= lambda!349763 lambda!349725)))

(declare-fun bs!1591587 () Bool)

(assert (= bs!1591587 (and d!1993684 d!1993672)))

(assert (=> bs!1591587 (= lambda!349763 lambda!349758)))

(declare-fun b!6354505 () Bool)

(declare-fun e!3858971 () Bool)

(declare-fun lt!2365559 () Regex!16261)

(assert (=> b!6354505 (= e!3858971 (isEmptyExpr!1663 lt!2365559))))

(declare-fun b!6354506 () Bool)

(declare-fun e!3858967 () Regex!16261)

(declare-fun e!3858970 () Regex!16261)

(assert (=> b!6354506 (= e!3858967 e!3858970)))

(declare-fun c!1156333 () Bool)

(assert (=> b!6354506 (= c!1156333 ((_ is Cons!64958) (t!378672 (exprs!6145 (h!71408 zl!343)))))))

(declare-fun b!6354507 () Bool)

(declare-fun e!3858966 () Bool)

(assert (=> b!6354507 (= e!3858966 (= lt!2365559 (head!13014 (t!378672 (exprs!6145 (h!71408 zl!343))))))))

(declare-fun b!6354508 () Bool)

(assert (=> b!6354508 (= e!3858967 (h!71406 (t!378672 (exprs!6145 (h!71408 zl!343)))))))

(declare-fun b!6354509 () Bool)

(assert (=> b!6354509 (= e!3858970 EmptyExpr!16261)))

(declare-fun b!6354510 () Bool)

(assert (=> b!6354510 (= e!3858970 (Concat!25106 (h!71406 (t!378672 (exprs!6145 (h!71408 zl!343)))) (generalisedConcat!1858 (t!378672 (t!378672 (exprs!6145 (h!71408 zl!343)))))))))

(declare-fun b!6354511 () Bool)

(assert (=> b!6354511 (= e!3858966 (isConcat!1186 lt!2365559))))

(declare-fun e!3858969 () Bool)

(assert (=> d!1993684 e!3858969))

(declare-fun res!2614679 () Bool)

(assert (=> d!1993684 (=> (not res!2614679) (not e!3858969))))

(assert (=> d!1993684 (= res!2614679 (validRegex!7997 lt!2365559))))

(assert (=> d!1993684 (= lt!2365559 e!3858967)))

(declare-fun c!1156332 () Bool)

(declare-fun e!3858968 () Bool)

(assert (=> d!1993684 (= c!1156332 e!3858968)))

(declare-fun res!2614678 () Bool)

(assert (=> d!1993684 (=> (not res!2614678) (not e!3858968))))

(assert (=> d!1993684 (= res!2614678 ((_ is Cons!64958) (t!378672 (exprs!6145 (h!71408 zl!343)))))))

(assert (=> d!1993684 (forall!15434 (t!378672 (exprs!6145 (h!71408 zl!343))) lambda!349763)))

(assert (=> d!1993684 (= (generalisedConcat!1858 (t!378672 (exprs!6145 (h!71408 zl!343)))) lt!2365559)))

(declare-fun b!6354512 () Bool)

(assert (=> b!6354512 (= e!3858971 e!3858966)))

(declare-fun c!1156330 () Bool)

(assert (=> b!6354512 (= c!1156330 (isEmpty!37054 (tail!12099 (t!378672 (exprs!6145 (h!71408 zl!343))))))))

(declare-fun b!6354513 () Bool)

(assert (=> b!6354513 (= e!3858969 e!3858971)))

(declare-fun c!1156331 () Bool)

(assert (=> b!6354513 (= c!1156331 (isEmpty!37054 (t!378672 (exprs!6145 (h!71408 zl!343)))))))

(declare-fun b!6354514 () Bool)

(assert (=> b!6354514 (= e!3858968 (isEmpty!37054 (t!378672 (t!378672 (exprs!6145 (h!71408 zl!343))))))))

(assert (= (and d!1993684 res!2614678) b!6354514))

(assert (= (and d!1993684 c!1156332) b!6354508))

(assert (= (and d!1993684 (not c!1156332)) b!6354506))

(assert (= (and b!6354506 c!1156333) b!6354510))

(assert (= (and b!6354506 (not c!1156333)) b!6354509))

(assert (= (and d!1993684 res!2614679) b!6354513))

(assert (= (and b!6354513 c!1156331) b!6354505))

(assert (= (and b!6354513 (not c!1156331)) b!6354512))

(assert (= (and b!6354512 c!1156330) b!6354507))

(assert (= (and b!6354512 (not c!1156330)) b!6354511))

(assert (=> b!6354513 m!7160144))

(declare-fun m!7161030 () Bool)

(assert (=> b!6354507 m!7161030))

(declare-fun m!7161032 () Bool)

(assert (=> b!6354511 m!7161032))

(declare-fun m!7161034 () Bool)

(assert (=> b!6354512 m!7161034))

(assert (=> b!6354512 m!7161034))

(declare-fun m!7161036 () Bool)

(assert (=> b!6354512 m!7161036))

(declare-fun m!7161038 () Bool)

(assert (=> b!6354514 m!7161038))

(declare-fun m!7161040 () Bool)

(assert (=> b!6354505 m!7161040))

(declare-fun m!7161042 () Bool)

(assert (=> b!6354510 m!7161042))

(declare-fun m!7161044 () Bool)

(assert (=> d!1993684 m!7161044))

(declare-fun m!7161046 () Bool)

(assert (=> d!1993684 m!7161046))

(assert (=> b!6353590 d!1993684))

(declare-fun b!6354515 () Bool)

(declare-fun e!3858974 () Bool)

(assert (=> b!6354515 (= e!3858974 (not (= (head!13015 s!2326) (c!1156050 lt!2365374))))))

(declare-fun b!6354516 () Bool)

(declare-fun e!3858978 () Bool)

(declare-fun lt!2365560 () Bool)

(assert (=> b!6354516 (= e!3858978 (not lt!2365560))))

(declare-fun b!6354517 () Bool)

(declare-fun e!3858976 () Bool)

(assert (=> b!6354517 (= e!3858976 (matchR!8444 (derivativeStep!4965 lt!2365374 (head!13015 s!2326)) (tail!12100 s!2326)))))

(declare-fun b!6354518 () Bool)

(declare-fun res!2614680 () Bool)

(declare-fun e!3858973 () Bool)

(assert (=> b!6354518 (=> res!2614680 e!3858973)))

(declare-fun e!3858975 () Bool)

(assert (=> b!6354518 (= res!2614680 e!3858975)))

(declare-fun res!2614685 () Bool)

(assert (=> b!6354518 (=> (not res!2614685) (not e!3858975))))

(assert (=> b!6354518 (= res!2614685 lt!2365560)))

(declare-fun b!6354519 () Bool)

(declare-fun e!3858977 () Bool)

(assert (=> b!6354519 (= e!3858977 e!3858978)))

(declare-fun c!1156335 () Bool)

(assert (=> b!6354519 (= c!1156335 ((_ is EmptyLang!16261) lt!2365374))))

(declare-fun b!6354520 () Bool)

(declare-fun res!2614681 () Bool)

(assert (=> b!6354520 (=> (not res!2614681) (not e!3858975))))

(assert (=> b!6354520 (= res!2614681 (isEmpty!37057 (tail!12100 s!2326)))))

(declare-fun b!6354521 () Bool)

(assert (=> b!6354521 (= e!3858975 (= (head!13015 s!2326) (c!1156050 lt!2365374)))))

(declare-fun b!6354522 () Bool)

(declare-fun e!3858972 () Bool)

(assert (=> b!6354522 (= e!3858972 e!3858974)))

(declare-fun res!2614682 () Bool)

(assert (=> b!6354522 (=> res!2614682 e!3858974)))

(declare-fun call!541914 () Bool)

(assert (=> b!6354522 (= res!2614682 call!541914)))

(declare-fun b!6354523 () Bool)

(assert (=> b!6354523 (= e!3858973 e!3858972)))

(declare-fun res!2614684 () Bool)

(assert (=> b!6354523 (=> (not res!2614684) (not e!3858972))))

(assert (=> b!6354523 (= res!2614684 (not lt!2365560))))

(declare-fun b!6354524 () Bool)

(declare-fun res!2614683 () Bool)

(assert (=> b!6354524 (=> res!2614683 e!3858974)))

(assert (=> b!6354524 (= res!2614683 (not (isEmpty!37057 (tail!12100 s!2326))))))

(declare-fun b!6354525 () Bool)

(declare-fun res!2614687 () Bool)

(assert (=> b!6354525 (=> (not res!2614687) (not e!3858975))))

(assert (=> b!6354525 (= res!2614687 (not call!541914))))

(declare-fun b!6354526 () Bool)

(assert (=> b!6354526 (= e!3858976 (nullable!6254 lt!2365374))))

(declare-fun b!6354527 () Bool)

(assert (=> b!6354527 (= e!3858977 (= lt!2365560 call!541914))))

(declare-fun b!6354528 () Bool)

(declare-fun res!2614686 () Bool)

(assert (=> b!6354528 (=> res!2614686 e!3858973)))

(assert (=> b!6354528 (= res!2614686 (not ((_ is ElementMatch!16261) lt!2365374)))))

(assert (=> b!6354528 (= e!3858978 e!3858973)))

(declare-fun d!1993686 () Bool)

(assert (=> d!1993686 e!3858977))

(declare-fun c!1156336 () Bool)

(assert (=> d!1993686 (= c!1156336 ((_ is EmptyExpr!16261) lt!2365374))))

(assert (=> d!1993686 (= lt!2365560 e!3858976)))

(declare-fun c!1156334 () Bool)

(assert (=> d!1993686 (= c!1156334 (isEmpty!37057 s!2326))))

(assert (=> d!1993686 (validRegex!7997 lt!2365374)))

(assert (=> d!1993686 (= (matchR!8444 lt!2365374 s!2326) lt!2365560)))

(declare-fun bm!541909 () Bool)

(assert (=> bm!541909 (= call!541914 (isEmpty!37057 s!2326))))

(assert (= (and d!1993686 c!1156334) b!6354526))

(assert (= (and d!1993686 (not c!1156334)) b!6354517))

(assert (= (and d!1993686 c!1156336) b!6354527))

(assert (= (and d!1993686 (not c!1156336)) b!6354519))

(assert (= (and b!6354519 c!1156335) b!6354516))

(assert (= (and b!6354519 (not c!1156335)) b!6354528))

(assert (= (and b!6354528 (not res!2614686)) b!6354518))

(assert (= (and b!6354518 res!2614685) b!6354525))

(assert (= (and b!6354525 res!2614687) b!6354520))

(assert (= (and b!6354520 res!2614681) b!6354521))

(assert (= (and b!6354518 (not res!2614680)) b!6354523))

(assert (= (and b!6354523 res!2614684) b!6354522))

(assert (= (and b!6354522 (not res!2614682)) b!6354524))

(assert (= (and b!6354524 (not res!2614683)) b!6354515))

(assert (= (or b!6354527 b!6354522 b!6354525) bm!541909))

(assert (=> bm!541909 m!7160550))

(assert (=> d!1993686 m!7160550))

(declare-fun m!7161048 () Bool)

(assert (=> d!1993686 m!7161048))

(assert (=> b!6354517 m!7160596))

(assert (=> b!6354517 m!7160596))

(declare-fun m!7161050 () Bool)

(assert (=> b!6354517 m!7161050))

(assert (=> b!6354517 m!7160600))

(assert (=> b!6354517 m!7161050))

(assert (=> b!6354517 m!7160600))

(declare-fun m!7161052 () Bool)

(assert (=> b!6354517 m!7161052))

(assert (=> b!6354515 m!7160596))

(assert (=> b!6354521 m!7160596))

(assert (=> b!6354524 m!7160600))

(assert (=> b!6354524 m!7160600))

(assert (=> b!6354524 m!7160604))

(declare-fun m!7161054 () Bool)

(assert (=> b!6354526 m!7161054))

(assert (=> b!6354520 m!7160600))

(assert (=> b!6354520 m!7160600))

(assert (=> b!6354520 m!7160604))

(assert (=> b!6353590 d!1993686))

(declare-fun bs!1591588 () Bool)

(declare-fun d!1993688 () Bool)

(assert (= bs!1591588 (and d!1993688 b!6354502)))

(declare-fun lambda!349764 () Int)

(assert (=> bs!1591588 (not (= lambda!349764 lambda!349760))))

(declare-fun bs!1591589 () Bool)

(assert (= bs!1591589 (and d!1993688 b!6353605)))

(assert (=> bs!1591589 (not (= lambda!349764 lambda!349661))))

(declare-fun bs!1591590 () Bool)

(assert (= bs!1591590 (and d!1993688 d!1993642)))

(assert (=> bs!1591590 (not (= lambda!349764 lambda!349744))))

(declare-fun bs!1591591 () Bool)

(assert (= bs!1591591 (and d!1993688 d!1993682)))

(assert (=> bs!1591591 (not (= lambda!349764 lambda!349762))))

(assert (=> bs!1591591 (= (and (= (regTwo!33034 (regOne!33034 r!7292)) (regOne!33034 (regOne!33034 r!7292))) (= lt!2365379 lt!2365374)) (= lambda!349764 lambda!349761))))

(declare-fun bs!1591592 () Bool)

(assert (= bs!1591592 (and d!1993688 b!6353590)))

(assert (=> bs!1591592 (not (= lambda!349764 lambda!349664))))

(assert (=> bs!1591592 (= (and (= (regTwo!33034 (regOne!33034 r!7292)) (regOne!33034 (regOne!33034 r!7292))) (= lt!2365379 lt!2365374)) (= lambda!349764 lambda!349663))))

(declare-fun bs!1591593 () Bool)

(assert (= bs!1591593 (and d!1993688 b!6354045)))

(assert (=> bs!1591593 (not (= lambda!349764 lambda!349720))))

(declare-fun bs!1591594 () Bool)

(assert (= bs!1591594 (and d!1993688 d!1993664)))

(assert (=> bs!1591594 (= (and (= (regTwo!33034 (regOne!33034 r!7292)) (regOne!33034 (regOne!33034 r!7292))) (= lt!2365379 lt!2365374)) (= lambda!349764 lambda!349757))))

(declare-fun bs!1591595 () Bool)

(assert (= bs!1591595 (and d!1993688 b!6354496)))

(assert (=> bs!1591595 (not (= lambda!349764 lambda!349759))))

(declare-fun bs!1591596 () Bool)

(assert (= bs!1591596 (and d!1993688 d!1993636)))

(assert (=> bs!1591596 (= (and (= (regTwo!33034 (regOne!33034 r!7292)) (regOne!33034 r!7292)) (= lt!2365379 (regTwo!33034 r!7292))) (= lambda!349764 lambda!349738))))

(assert (=> bs!1591590 (= (and (= (regTwo!33034 (regOne!33034 r!7292)) (regOne!33034 r!7292)) (= lt!2365379 (regTwo!33034 r!7292))) (= lambda!349764 lambda!349743))))

(declare-fun bs!1591597 () Bool)

(assert (= bs!1591597 (and d!1993688 b!6354039)))

(assert (=> bs!1591597 (not (= lambda!349764 lambda!349719))))

(assert (=> bs!1591589 (= (and (= (regTwo!33034 (regOne!33034 r!7292)) (regOne!33034 r!7292)) (= lt!2365379 (regTwo!33034 r!7292))) (= lambda!349764 lambda!349660))))

(assert (=> bs!1591592 (= lambda!349764 lambda!349665)))

(assert (=> d!1993688 true))

(assert (=> d!1993688 true))

(assert (=> d!1993688 true))

(assert (=> d!1993688 (= (isDefined!12855 (findConcatSeparation!2566 (regTwo!33034 (regOne!33034 r!7292)) lt!2365379 Nil!64959 s!2326 s!2326)) (Exists!3331 lambda!349764))))

(declare-fun lt!2365561 () Unit!158375)

(assert (=> d!1993688 (= lt!2365561 (choose!47172 (regTwo!33034 (regOne!33034 r!7292)) lt!2365379 s!2326))))

(assert (=> d!1993688 (validRegex!7997 (regTwo!33034 (regOne!33034 r!7292)))))

(assert (=> d!1993688 (= (lemmaFindConcatSeparationEquivalentToExists!2330 (regTwo!33034 (regOne!33034 r!7292)) lt!2365379 s!2326) lt!2365561)))

(declare-fun bs!1591598 () Bool)

(assert (= bs!1591598 d!1993688))

(assert (=> bs!1591598 m!7160174))

(declare-fun m!7161056 () Bool)

(assert (=> bs!1591598 m!7161056))

(assert (=> bs!1591598 m!7160174))

(assert (=> bs!1591598 m!7160202))

(declare-fun m!7161058 () Bool)

(assert (=> bs!1591598 m!7161058))

(assert (=> bs!1591598 m!7160194))

(assert (=> b!6353590 d!1993688))

(declare-fun bs!1591599 () Bool)

(declare-fun b!6354531 () Bool)

(assert (= bs!1591599 (and b!6354531 b!6354502)))

(declare-fun lambda!349765 () Int)

(assert (=> bs!1591599 (not (= lambda!349765 lambda!349760))))

(declare-fun bs!1591600 () Bool)

(assert (= bs!1591600 (and b!6354531 b!6353605)))

(assert (=> bs!1591600 (not (= lambda!349765 lambda!349661))))

(declare-fun bs!1591601 () Bool)

(assert (= bs!1591601 (and b!6354531 d!1993642)))

(assert (=> bs!1591601 (not (= lambda!349765 lambda!349744))))

(declare-fun bs!1591602 () Bool)

(assert (= bs!1591602 (and b!6354531 d!1993682)))

(assert (=> bs!1591602 (not (= lambda!349765 lambda!349762))))

(assert (=> bs!1591602 (not (= lambda!349765 lambda!349761))))

(declare-fun bs!1591603 () Bool)

(assert (= bs!1591603 (and b!6354531 b!6353590)))

(assert (=> bs!1591603 (not (= lambda!349765 lambda!349664))))

(assert (=> bs!1591603 (not (= lambda!349765 lambda!349663))))

(declare-fun bs!1591604 () Bool)

(assert (= bs!1591604 (and b!6354531 b!6354045)))

(assert (=> bs!1591604 (not (= lambda!349765 lambda!349720))))

(declare-fun bs!1591605 () Bool)

(assert (= bs!1591605 (and b!6354531 d!1993688)))

(assert (=> bs!1591605 (not (= lambda!349765 lambda!349764))))

(declare-fun bs!1591606 () Bool)

(assert (= bs!1591606 (and b!6354531 d!1993664)))

(assert (=> bs!1591606 (not (= lambda!349765 lambda!349757))))

(declare-fun bs!1591607 () Bool)

(assert (= bs!1591607 (and b!6354531 b!6354496)))

(assert (=> bs!1591607 (= (and (= (reg!16590 lt!2365374) (reg!16590 lt!2365396)) (= lt!2365374 lt!2365396)) (= lambda!349765 lambda!349759))))

(declare-fun bs!1591608 () Bool)

(assert (= bs!1591608 (and b!6354531 d!1993636)))

(assert (=> bs!1591608 (not (= lambda!349765 lambda!349738))))

(assert (=> bs!1591601 (not (= lambda!349765 lambda!349743))))

(declare-fun bs!1591609 () Bool)

(assert (= bs!1591609 (and b!6354531 b!6354039)))

(assert (=> bs!1591609 (= (and (= (reg!16590 lt!2365374) (reg!16590 r!7292)) (= lt!2365374 r!7292)) (= lambda!349765 lambda!349719))))

(assert (=> bs!1591600 (not (= lambda!349765 lambda!349660))))

(assert (=> bs!1591603 (not (= lambda!349765 lambda!349665))))

(assert (=> b!6354531 true))

(assert (=> b!6354531 true))

(declare-fun bs!1591610 () Bool)

(declare-fun b!6354537 () Bool)

(assert (= bs!1591610 (and b!6354537 b!6354502)))

(declare-fun lambda!349766 () Int)

(assert (=> bs!1591610 (= (and (= (regOne!33034 lt!2365374) (regOne!33034 lt!2365396)) (= (regTwo!33034 lt!2365374) (regTwo!33034 lt!2365396))) (= lambda!349766 lambda!349760))))

(declare-fun bs!1591611 () Bool)

(assert (= bs!1591611 (and b!6354537 b!6353605)))

(assert (=> bs!1591611 (= (and (= (regOne!33034 lt!2365374) (regOne!33034 r!7292)) (= (regTwo!33034 lt!2365374) (regTwo!33034 r!7292))) (= lambda!349766 lambda!349661))))

(declare-fun bs!1591612 () Bool)

(assert (= bs!1591612 (and b!6354537 d!1993642)))

(assert (=> bs!1591612 (= (and (= (regOne!33034 lt!2365374) (regOne!33034 r!7292)) (= (regTwo!33034 lt!2365374) (regTwo!33034 r!7292))) (= lambda!349766 lambda!349744))))

(declare-fun bs!1591613 () Bool)

(assert (= bs!1591613 (and b!6354537 d!1993682)))

(assert (=> bs!1591613 (= (and (= (regOne!33034 lt!2365374) (regOne!33034 (regOne!33034 r!7292))) (= (regTwo!33034 lt!2365374) lt!2365374)) (= lambda!349766 lambda!349762))))

(assert (=> bs!1591613 (not (= lambda!349766 lambda!349761))))

(declare-fun bs!1591614 () Bool)

(assert (= bs!1591614 (and b!6354537 b!6353590)))

(assert (=> bs!1591614 (= (and (= (regOne!33034 lt!2365374) (regOne!33034 (regOne!33034 r!7292))) (= (regTwo!33034 lt!2365374) lt!2365374)) (= lambda!349766 lambda!349664))))

(assert (=> bs!1591614 (not (= lambda!349766 lambda!349663))))

(declare-fun bs!1591615 () Bool)

(assert (= bs!1591615 (and b!6354537 d!1993688)))

(assert (=> bs!1591615 (not (= lambda!349766 lambda!349764))))

(declare-fun bs!1591616 () Bool)

(assert (= bs!1591616 (and b!6354537 d!1993664)))

(assert (=> bs!1591616 (not (= lambda!349766 lambda!349757))))

(declare-fun bs!1591617 () Bool)

(assert (= bs!1591617 (and b!6354537 b!6354496)))

(assert (=> bs!1591617 (not (= lambda!349766 lambda!349759))))

(declare-fun bs!1591618 () Bool)

(assert (= bs!1591618 (and b!6354537 b!6354045)))

(assert (=> bs!1591618 (= (and (= (regOne!33034 lt!2365374) (regOne!33034 r!7292)) (= (regTwo!33034 lt!2365374) (regTwo!33034 r!7292))) (= lambda!349766 lambda!349720))))

(declare-fun bs!1591619 () Bool)

(assert (= bs!1591619 (and b!6354537 b!6354531)))

(assert (=> bs!1591619 (not (= lambda!349766 lambda!349765))))

(declare-fun bs!1591620 () Bool)

(assert (= bs!1591620 (and b!6354537 d!1993636)))

(assert (=> bs!1591620 (not (= lambda!349766 lambda!349738))))

(assert (=> bs!1591612 (not (= lambda!349766 lambda!349743))))

(declare-fun bs!1591621 () Bool)

(assert (= bs!1591621 (and b!6354537 b!6354039)))

(assert (=> bs!1591621 (not (= lambda!349766 lambda!349719))))

(assert (=> bs!1591611 (not (= lambda!349766 lambda!349660))))

(assert (=> bs!1591614 (not (= lambda!349766 lambda!349665))))

(assert (=> b!6354537 true))

(assert (=> b!6354537 true))

(declare-fun b!6354530 () Bool)

(declare-fun e!3858981 () Bool)

(assert (=> b!6354530 (= e!3858981 (= s!2326 (Cons!64959 (c!1156050 lt!2365374) Nil!64959)))))

(declare-fun e!3858985 () Bool)

(declare-fun call!541916 () Bool)

(assert (=> b!6354531 (= e!3858985 call!541916)))

(declare-fun b!6354532 () Bool)

(declare-fun e!3858980 () Bool)

(declare-fun e!3858983 () Bool)

(assert (=> b!6354532 (= e!3858980 e!3858983)))

(declare-fun res!2614689 () Bool)

(assert (=> b!6354532 (= res!2614689 (matchRSpec!3362 (regOne!33035 lt!2365374) s!2326))))

(assert (=> b!6354532 (=> res!2614689 e!3858983)))

(declare-fun bm!541910 () Bool)

(declare-fun c!1156340 () Bool)

(assert (=> bm!541910 (= call!541916 (Exists!3331 (ite c!1156340 lambda!349765 lambda!349766)))))

(declare-fun bm!541911 () Bool)

(declare-fun call!541915 () Bool)

(assert (=> bm!541911 (= call!541915 (isEmpty!37057 s!2326))))

(declare-fun b!6354533 () Bool)

(declare-fun e!3858982 () Bool)

(declare-fun e!3858984 () Bool)

(assert (=> b!6354533 (= e!3858982 e!3858984)))

(declare-fun res!2614690 () Bool)

(assert (=> b!6354533 (= res!2614690 (not ((_ is EmptyLang!16261) lt!2365374)))))

(assert (=> b!6354533 (=> (not res!2614690) (not e!3858984))))

(declare-fun b!6354534 () Bool)

(assert (=> b!6354534 (= e!3858982 call!541915)))

(declare-fun b!6354535 () Bool)

(declare-fun e!3858979 () Bool)

(assert (=> b!6354535 (= e!3858980 e!3858979)))

(assert (=> b!6354535 (= c!1156340 ((_ is Star!16261) lt!2365374))))

(declare-fun b!6354536 () Bool)

(assert (=> b!6354536 (= e!3858983 (matchRSpec!3362 (regTwo!33035 lt!2365374) s!2326))))

(assert (=> b!6354537 (= e!3858979 call!541916)))

(declare-fun b!6354529 () Bool)

(declare-fun c!1156338 () Bool)

(assert (=> b!6354529 (= c!1156338 ((_ is ElementMatch!16261) lt!2365374))))

(assert (=> b!6354529 (= e!3858984 e!3858981)))

(declare-fun d!1993690 () Bool)

(declare-fun c!1156337 () Bool)

(assert (=> d!1993690 (= c!1156337 ((_ is EmptyExpr!16261) lt!2365374))))

(assert (=> d!1993690 (= (matchRSpec!3362 lt!2365374 s!2326) e!3858982)))

(declare-fun b!6354538 () Bool)

(declare-fun c!1156339 () Bool)

(assert (=> b!6354538 (= c!1156339 ((_ is Union!16261) lt!2365374))))

(assert (=> b!6354538 (= e!3858981 e!3858980)))

(declare-fun b!6354539 () Bool)

(declare-fun res!2614688 () Bool)

(assert (=> b!6354539 (=> res!2614688 e!3858985)))

(assert (=> b!6354539 (= res!2614688 call!541915)))

(assert (=> b!6354539 (= e!3858979 e!3858985)))

(assert (= (and d!1993690 c!1156337) b!6354534))

(assert (= (and d!1993690 (not c!1156337)) b!6354533))

(assert (= (and b!6354533 res!2614690) b!6354529))

(assert (= (and b!6354529 c!1156338) b!6354530))

(assert (= (and b!6354529 (not c!1156338)) b!6354538))

(assert (= (and b!6354538 c!1156339) b!6354532))

(assert (= (and b!6354538 (not c!1156339)) b!6354535))

(assert (= (and b!6354532 (not res!2614689)) b!6354536))

(assert (= (and b!6354535 c!1156340) b!6354539))

(assert (= (and b!6354535 (not c!1156340)) b!6354537))

(assert (= (and b!6354539 (not res!2614688)) b!6354531))

(assert (= (or b!6354531 b!6354537) bm!541910))

(assert (= (or b!6354534 b!6354539) bm!541911))

(declare-fun m!7161060 () Bool)

(assert (=> b!6354532 m!7161060))

(declare-fun m!7161062 () Bool)

(assert (=> bm!541910 m!7161062))

(assert (=> bm!541911 m!7160550))

(declare-fun m!7161064 () Bool)

(assert (=> b!6354536 m!7161064))

(assert (=> b!6353590 d!1993690))

(declare-fun d!1993692 () Bool)

(assert (=> d!1993692 (= (matchR!8444 lt!2365374 s!2326) (matchRSpec!3362 lt!2365374 s!2326))))

(declare-fun lt!2365562 () Unit!158375)

(assert (=> d!1993692 (= lt!2365562 (choose!47168 lt!2365374 s!2326))))

(assert (=> d!1993692 (validRegex!7997 lt!2365374)))

(assert (=> d!1993692 (= (mainMatchTheorem!3362 lt!2365374 s!2326) lt!2365562)))

(declare-fun bs!1591622 () Bool)

(assert (= bs!1591622 d!1993692))

(assert (=> bs!1591622 m!7160190))

(assert (=> bs!1591622 m!7160168))

(declare-fun m!7161066 () Bool)

(assert (=> bs!1591622 m!7161066))

(assert (=> bs!1591622 m!7161048))

(assert (=> b!6353590 d!1993692))

(declare-fun d!1993694 () Bool)

(assert (=> d!1993694 (= (isDefined!12855 (findConcatSeparation!2566 (regOne!33034 (regOne!33034 r!7292)) lt!2365374 Nil!64959 s!2326 s!2326)) (not (isEmpty!37058 (findConcatSeparation!2566 (regOne!33034 (regOne!33034 r!7292)) lt!2365374 Nil!64959 s!2326 s!2326))))))

(declare-fun bs!1591623 () Bool)

(assert (= bs!1591623 d!1993694))

(assert (=> bs!1591623 m!7160176))

(declare-fun m!7161068 () Bool)

(assert (=> bs!1591623 m!7161068))

(assert (=> b!6353590 d!1993694))

(declare-fun d!1993696 () Bool)

(assert (=> d!1993696 (= (Exists!3331 lambda!349664) (choose!47171 lambda!349664))))

(declare-fun bs!1591624 () Bool)

(assert (= bs!1591624 d!1993696))

(declare-fun m!7161070 () Bool)

(assert (=> bs!1591624 m!7161070))

(assert (=> b!6353590 d!1993696))

(declare-fun d!1993698 () Bool)

(declare-fun c!1156341 () Bool)

(assert (=> d!1993698 (= c!1156341 (isEmpty!37057 s!2326))))

(declare-fun e!3858986 () Bool)

(assert (=> d!1993698 (= (matchZipper!2273 lt!2365376 s!2326) e!3858986)))

(declare-fun b!6354540 () Bool)

(assert (=> b!6354540 (= e!3858986 (nullableZipper!2027 lt!2365376))))

(declare-fun b!6354541 () Bool)

(assert (=> b!6354541 (= e!3858986 (matchZipper!2273 (derivationStepZipper!2227 lt!2365376 (head!13015 s!2326)) (tail!12100 s!2326)))))

(assert (= (and d!1993698 c!1156341) b!6354540))

(assert (= (and d!1993698 (not c!1156341)) b!6354541))

(assert (=> d!1993698 m!7160550))

(declare-fun m!7161072 () Bool)

(assert (=> b!6354540 m!7161072))

(assert (=> b!6354541 m!7160596))

(assert (=> b!6354541 m!7160596))

(declare-fun m!7161074 () Bool)

(assert (=> b!6354541 m!7161074))

(assert (=> b!6354541 m!7160600))

(assert (=> b!6354541 m!7161074))

(assert (=> b!6354541 m!7160600))

(declare-fun m!7161076 () Bool)

(assert (=> b!6354541 m!7161076))

(assert (=> b!6353590 d!1993698))

(declare-fun d!1993700 () Bool)

(assert (=> d!1993700 (= (Exists!3331 lambda!349665) (choose!47171 lambda!349665))))

(declare-fun bs!1591625 () Bool)

(assert (= bs!1591625 d!1993700))

(declare-fun m!7161078 () Bool)

(assert (=> bs!1591625 m!7161078))

(assert (=> b!6353590 d!1993700))

(declare-fun bs!1591626 () Bool)

(declare-fun d!1993702 () Bool)

(assert (= bs!1591626 (and d!1993702 d!1993684)))

(declare-fun lambda!349767 () Int)

(assert (=> bs!1591626 (= lambda!349767 lambda!349763)))

(declare-fun bs!1591627 () Bool)

(assert (= bs!1591627 (and d!1993702 d!1993552)))

(assert (=> bs!1591627 (= lambda!349767 lambda!349725)))

(declare-fun bs!1591628 () Bool)

(assert (= bs!1591628 (and d!1993702 d!1993494)))

(assert (=> bs!1591628 (= lambda!349767 lambda!349698)))

(declare-fun bs!1591629 () Bool)

(assert (= bs!1591629 (and d!1993702 d!1993672)))

(assert (=> bs!1591629 (= lambda!349767 lambda!349758)))

(declare-fun bs!1591630 () Bool)

(assert (= bs!1591630 (and d!1993702 d!1993512)))

(assert (=> bs!1591630 (= lambda!349767 lambda!349707)))

(declare-fun b!6354542 () Bool)

(declare-fun e!3858992 () Bool)

(declare-fun lt!2365563 () Regex!16261)

(assert (=> b!6354542 (= e!3858992 (isEmptyExpr!1663 lt!2365563))))

(declare-fun b!6354543 () Bool)

(declare-fun e!3858988 () Regex!16261)

(declare-fun e!3858991 () Regex!16261)

(assert (=> b!6354543 (= e!3858988 e!3858991)))

(declare-fun c!1156345 () Bool)

(assert (=> b!6354543 (= c!1156345 ((_ is Cons!64958) lt!2365395))))

(declare-fun b!6354544 () Bool)

(declare-fun e!3858987 () Bool)

(assert (=> b!6354544 (= e!3858987 (= lt!2365563 (head!13014 lt!2365395)))))

(declare-fun b!6354545 () Bool)

(assert (=> b!6354545 (= e!3858988 (h!71406 lt!2365395))))

(declare-fun b!6354546 () Bool)

(assert (=> b!6354546 (= e!3858991 EmptyExpr!16261)))

(declare-fun b!6354547 () Bool)

(assert (=> b!6354547 (= e!3858991 (Concat!25106 (h!71406 lt!2365395) (generalisedConcat!1858 (t!378672 lt!2365395))))))

(declare-fun b!6354548 () Bool)

(assert (=> b!6354548 (= e!3858987 (isConcat!1186 lt!2365563))))

(declare-fun e!3858990 () Bool)

(assert (=> d!1993702 e!3858990))

(declare-fun res!2614692 () Bool)

(assert (=> d!1993702 (=> (not res!2614692) (not e!3858990))))

(assert (=> d!1993702 (= res!2614692 (validRegex!7997 lt!2365563))))

(assert (=> d!1993702 (= lt!2365563 e!3858988)))

(declare-fun c!1156344 () Bool)

(declare-fun e!3858989 () Bool)

(assert (=> d!1993702 (= c!1156344 e!3858989)))

(declare-fun res!2614691 () Bool)

(assert (=> d!1993702 (=> (not res!2614691) (not e!3858989))))

(assert (=> d!1993702 (= res!2614691 ((_ is Cons!64958) lt!2365395))))

(assert (=> d!1993702 (forall!15434 lt!2365395 lambda!349767)))

(assert (=> d!1993702 (= (generalisedConcat!1858 lt!2365395) lt!2365563)))

(declare-fun b!6354549 () Bool)

(assert (=> b!6354549 (= e!3858992 e!3858987)))

(declare-fun c!1156342 () Bool)

(assert (=> b!6354549 (= c!1156342 (isEmpty!37054 (tail!12099 lt!2365395)))))

(declare-fun b!6354550 () Bool)

(assert (=> b!6354550 (= e!3858990 e!3858992)))

(declare-fun c!1156343 () Bool)

(assert (=> b!6354550 (= c!1156343 (isEmpty!37054 lt!2365395))))

(declare-fun b!6354551 () Bool)

(assert (=> b!6354551 (= e!3858989 (isEmpty!37054 (t!378672 lt!2365395)))))

(assert (= (and d!1993702 res!2614691) b!6354551))

(assert (= (and d!1993702 c!1156344) b!6354545))

(assert (= (and d!1993702 (not c!1156344)) b!6354543))

(assert (= (and b!6354543 c!1156345) b!6354547))

(assert (= (and b!6354543 (not c!1156345)) b!6354546))

(assert (= (and d!1993702 res!2614692) b!6354550))

(assert (= (and b!6354550 c!1156343) b!6354542))

(assert (= (and b!6354550 (not c!1156343)) b!6354549))

(assert (= (and b!6354549 c!1156342) b!6354544))

(assert (= (and b!6354549 (not c!1156342)) b!6354548))

(declare-fun m!7161080 () Bool)

(assert (=> b!6354550 m!7161080))

(declare-fun m!7161082 () Bool)

(assert (=> b!6354544 m!7161082))

(declare-fun m!7161084 () Bool)

(assert (=> b!6354548 m!7161084))

(declare-fun m!7161086 () Bool)

(assert (=> b!6354549 m!7161086))

(assert (=> b!6354549 m!7161086))

(declare-fun m!7161088 () Bool)

(assert (=> b!6354549 m!7161088))

(declare-fun m!7161090 () Bool)

(assert (=> b!6354551 m!7161090))

(declare-fun m!7161092 () Bool)

(assert (=> b!6354542 m!7161092))

(declare-fun m!7161094 () Bool)

(assert (=> b!6354547 m!7161094))

(declare-fun m!7161096 () Bool)

(assert (=> d!1993702 m!7161096))

(declare-fun m!7161098 () Bool)

(assert (=> d!1993702 m!7161098))

(assert (=> b!6353590 d!1993702))

(declare-fun d!1993704 () Bool)

(assert (=> d!1993704 (= (matchR!8444 lt!2365396 s!2326) (matchZipper!2273 lt!2365376 s!2326))))

(declare-fun lt!2365566 () Unit!158375)

(declare-fun choose!47176 ((InoxSet Context!11290) List!65084 Regex!16261 List!65083) Unit!158375)

(assert (=> d!1993704 (= lt!2365566 (choose!47176 lt!2365376 lt!2365372 lt!2365396 s!2326))))

(assert (=> d!1993704 (validRegex!7997 lt!2365396)))

(assert (=> d!1993704 (= (theoremZipperRegexEquiv!803 lt!2365376 lt!2365372 lt!2365396 s!2326) lt!2365566)))

(declare-fun bs!1591631 () Bool)

(assert (= bs!1591631 d!1993704))

(assert (=> bs!1591631 m!7160162))

(assert (=> bs!1591631 m!7160204))

(declare-fun m!7161100 () Bool)

(assert (=> bs!1591631 m!7161100))

(assert (=> bs!1591631 m!7160952))

(assert (=> b!6353590 d!1993704))

(declare-fun d!1993706 () Bool)

(assert (=> d!1993706 (= (Exists!3331 lambda!349663) (choose!47171 lambda!349663))))

(declare-fun bs!1591632 () Bool)

(assert (= bs!1591632 d!1993706))

(declare-fun m!7161102 () Bool)

(assert (=> bs!1591632 m!7161102))

(assert (=> b!6353590 d!1993706))

(declare-fun bs!1591633 () Bool)

(declare-fun d!1993708 () Bool)

(assert (= bs!1591633 (and d!1993708 d!1993684)))

(declare-fun lambda!349770 () Int)

(assert (=> bs!1591633 (= lambda!349770 lambda!349763)))

(declare-fun bs!1591634 () Bool)

(assert (= bs!1591634 (and d!1993708 d!1993552)))

(assert (=> bs!1591634 (= lambda!349770 lambda!349725)))

(declare-fun bs!1591635 () Bool)

(assert (= bs!1591635 (and d!1993708 d!1993702)))

(assert (=> bs!1591635 (= lambda!349770 lambda!349767)))

(declare-fun bs!1591636 () Bool)

(assert (= bs!1591636 (and d!1993708 d!1993494)))

(assert (=> bs!1591636 (= lambda!349770 lambda!349698)))

(declare-fun bs!1591637 () Bool)

(assert (= bs!1591637 (and d!1993708 d!1993672)))

(assert (=> bs!1591637 (= lambda!349770 lambda!349758)))

(declare-fun bs!1591638 () Bool)

(assert (= bs!1591638 (and d!1993708 d!1993512)))

(assert (=> bs!1591638 (= lambda!349770 lambda!349707)))

(declare-fun b!6354572 () Bool)

(declare-fun e!3859009 () Bool)

(declare-fun lt!2365569 () Regex!16261)

(declare-fun isUnion!1100 (Regex!16261) Bool)

(assert (=> b!6354572 (= e!3859009 (isUnion!1100 lt!2365569))))

(declare-fun b!6354573 () Bool)

(declare-fun e!3859005 () Bool)

(declare-fun isEmptyLang!1670 (Regex!16261) Bool)

(assert (=> b!6354573 (= e!3859005 (isEmptyLang!1670 lt!2365569))))

(declare-fun b!6354574 () Bool)

(assert (=> b!6354574 (= e!3859005 e!3859009)))

(declare-fun c!1156357 () Bool)

(assert (=> b!6354574 (= c!1156357 (isEmpty!37054 (tail!12099 (unfocusZipperList!1682 zl!343))))))

(declare-fun b!6354575 () Bool)

(declare-fun e!3859006 () Bool)

(assert (=> b!6354575 (= e!3859006 e!3859005)))

(declare-fun c!1156354 () Bool)

(assert (=> b!6354575 (= c!1156354 (isEmpty!37054 (unfocusZipperList!1682 zl!343)))))

(declare-fun b!6354576 () Bool)

(declare-fun e!3859010 () Bool)

(assert (=> b!6354576 (= e!3859010 (isEmpty!37054 (t!378672 (unfocusZipperList!1682 zl!343))))))

(assert (=> d!1993708 e!3859006))

(declare-fun res!2614698 () Bool)

(assert (=> d!1993708 (=> (not res!2614698) (not e!3859006))))

(assert (=> d!1993708 (= res!2614698 (validRegex!7997 lt!2365569))))

(declare-fun e!3859008 () Regex!16261)

(assert (=> d!1993708 (= lt!2365569 e!3859008)))

(declare-fun c!1156355 () Bool)

(assert (=> d!1993708 (= c!1156355 e!3859010)))

(declare-fun res!2614697 () Bool)

(assert (=> d!1993708 (=> (not res!2614697) (not e!3859010))))

(assert (=> d!1993708 (= res!2614697 ((_ is Cons!64958) (unfocusZipperList!1682 zl!343)))))

(assert (=> d!1993708 (forall!15434 (unfocusZipperList!1682 zl!343) lambda!349770)))

(assert (=> d!1993708 (= (generalisedUnion!2105 (unfocusZipperList!1682 zl!343)) lt!2365569)))

(declare-fun b!6354577 () Bool)

(declare-fun e!3859007 () Regex!16261)

(assert (=> b!6354577 (= e!3859007 EmptyLang!16261)))

(declare-fun b!6354578 () Bool)

(assert (=> b!6354578 (= e!3859007 (Union!16261 (h!71406 (unfocusZipperList!1682 zl!343)) (generalisedUnion!2105 (t!378672 (unfocusZipperList!1682 zl!343)))))))

(declare-fun b!6354579 () Bool)

(assert (=> b!6354579 (= e!3859008 e!3859007)))

(declare-fun c!1156356 () Bool)

(assert (=> b!6354579 (= c!1156356 ((_ is Cons!64958) (unfocusZipperList!1682 zl!343)))))

(declare-fun b!6354580 () Bool)

(assert (=> b!6354580 (= e!3859008 (h!71406 (unfocusZipperList!1682 zl!343)))))

(declare-fun b!6354581 () Bool)

(assert (=> b!6354581 (= e!3859009 (= lt!2365569 (head!13014 (unfocusZipperList!1682 zl!343))))))

(assert (= (and d!1993708 res!2614697) b!6354576))

(assert (= (and d!1993708 c!1156355) b!6354580))

(assert (= (and d!1993708 (not c!1156355)) b!6354579))

(assert (= (and b!6354579 c!1156356) b!6354578))

(assert (= (and b!6354579 (not c!1156356)) b!6354577))

(assert (= (and d!1993708 res!2614698) b!6354575))

(assert (= (and b!6354575 c!1156354) b!6354573))

(assert (= (and b!6354575 (not c!1156354)) b!6354574))

(assert (= (and b!6354574 c!1156357) b!6354581))

(assert (= (and b!6354574 (not c!1156357)) b!6354572))

(declare-fun m!7161104 () Bool)

(assert (=> d!1993708 m!7161104))

(assert (=> d!1993708 m!7160248))

(declare-fun m!7161106 () Bool)

(assert (=> d!1993708 m!7161106))

(assert (=> b!6354575 m!7160248))

(declare-fun m!7161108 () Bool)

(assert (=> b!6354575 m!7161108))

(declare-fun m!7161110 () Bool)

(assert (=> b!6354573 m!7161110))

(declare-fun m!7161112 () Bool)

(assert (=> b!6354578 m!7161112))

(declare-fun m!7161114 () Bool)

(assert (=> b!6354572 m!7161114))

(assert (=> b!6354574 m!7160248))

(declare-fun m!7161116 () Bool)

(assert (=> b!6354574 m!7161116))

(assert (=> b!6354574 m!7161116))

(declare-fun m!7161118 () Bool)

(assert (=> b!6354574 m!7161118))

(assert (=> b!6354581 m!7160248))

(declare-fun m!7161120 () Bool)

(assert (=> b!6354581 m!7161120))

(declare-fun m!7161122 () Bool)

(assert (=> b!6354576 m!7161122))

(assert (=> b!6353589 d!1993708))

(declare-fun bs!1591639 () Bool)

(declare-fun d!1993710 () Bool)

(assert (= bs!1591639 (and d!1993710 d!1993684)))

(declare-fun lambda!349773 () Int)

(assert (=> bs!1591639 (= lambda!349773 lambda!349763)))

(declare-fun bs!1591640 () Bool)

(assert (= bs!1591640 (and d!1993710 d!1993552)))

(assert (=> bs!1591640 (= lambda!349773 lambda!349725)))

(declare-fun bs!1591641 () Bool)

(assert (= bs!1591641 (and d!1993710 d!1993708)))

(assert (=> bs!1591641 (= lambda!349773 lambda!349770)))

(declare-fun bs!1591642 () Bool)

(assert (= bs!1591642 (and d!1993710 d!1993702)))

(assert (=> bs!1591642 (= lambda!349773 lambda!349767)))

(declare-fun bs!1591643 () Bool)

(assert (= bs!1591643 (and d!1993710 d!1993494)))

(assert (=> bs!1591643 (= lambda!349773 lambda!349698)))

(declare-fun bs!1591644 () Bool)

(assert (= bs!1591644 (and d!1993710 d!1993672)))

(assert (=> bs!1591644 (= lambda!349773 lambda!349758)))

(declare-fun bs!1591645 () Bool)

(assert (= bs!1591645 (and d!1993710 d!1993512)))

(assert (=> bs!1591645 (= lambda!349773 lambda!349707)))

(declare-fun lt!2365572 () List!65082)

(assert (=> d!1993710 (forall!15434 lt!2365572 lambda!349773)))

(declare-fun e!3859013 () List!65082)

(assert (=> d!1993710 (= lt!2365572 e!3859013)))

(declare-fun c!1156360 () Bool)

(assert (=> d!1993710 (= c!1156360 ((_ is Cons!64960) zl!343))))

(assert (=> d!1993710 (= (unfocusZipperList!1682 zl!343) lt!2365572)))

(declare-fun b!6354586 () Bool)

(assert (=> b!6354586 (= e!3859013 (Cons!64958 (generalisedConcat!1858 (exprs!6145 (h!71408 zl!343))) (unfocusZipperList!1682 (t!378674 zl!343))))))

(declare-fun b!6354587 () Bool)

(assert (=> b!6354587 (= e!3859013 Nil!64958)))

(assert (= (and d!1993710 c!1156360) b!6354586))

(assert (= (and d!1993710 (not c!1156360)) b!6354587))

(declare-fun m!7161124 () Bool)

(assert (=> d!1993710 m!7161124))

(assert (=> b!6354586 m!7160258))

(declare-fun m!7161126 () Bool)

(assert (=> b!6354586 m!7161126))

(assert (=> b!6353589 d!1993710))

(declare-fun e!3859016 () Bool)

(assert (=> b!6353603 (= tp!1770352 e!3859016)))

(declare-fun b!6354598 () Bool)

(assert (=> b!6354598 (= e!3859016 tp_is_empty!41775)))

(declare-fun b!6354601 () Bool)

(declare-fun tp!1770427 () Bool)

(declare-fun tp!1770425 () Bool)

(assert (=> b!6354601 (= e!3859016 (and tp!1770427 tp!1770425))))

(declare-fun b!6354600 () Bool)

(declare-fun tp!1770424 () Bool)

(assert (=> b!6354600 (= e!3859016 tp!1770424)))

(declare-fun b!6354599 () Bool)

(declare-fun tp!1770426 () Bool)

(declare-fun tp!1770423 () Bool)

(assert (=> b!6354599 (= e!3859016 (and tp!1770426 tp!1770423))))

(assert (= (and b!6353603 ((_ is ElementMatch!16261) (reg!16590 r!7292))) b!6354598))

(assert (= (and b!6353603 ((_ is Concat!25106) (reg!16590 r!7292))) b!6354599))

(assert (= (and b!6353603 ((_ is Star!16261) (reg!16590 r!7292))) b!6354600))

(assert (= (and b!6353603 ((_ is Union!16261) (reg!16590 r!7292))) b!6354601))

(declare-fun b!6354606 () Bool)

(declare-fun e!3859019 () Bool)

(declare-fun tp!1770432 () Bool)

(declare-fun tp!1770433 () Bool)

(assert (=> b!6354606 (= e!3859019 (and tp!1770432 tp!1770433))))

(assert (=> b!6353571 (= tp!1770346 e!3859019)))

(assert (= (and b!6353571 ((_ is Cons!64958) (exprs!6145 (h!71408 zl!343)))) b!6354606))

(declare-fun condSetEmpty!43276 () Bool)

(assert (=> setNonEmpty!43270 (= condSetEmpty!43276 (= setRest!43270 ((as const (Array Context!11290 Bool)) false)))))

(declare-fun setRes!43276 () Bool)

(assert (=> setNonEmpty!43270 (= tp!1770345 setRes!43276)))

(declare-fun setIsEmpty!43276 () Bool)

(assert (=> setIsEmpty!43276 setRes!43276))

(declare-fun e!3859022 () Bool)

(declare-fun setNonEmpty!43276 () Bool)

(declare-fun tp!1770439 () Bool)

(declare-fun setElem!43276 () Context!11290)

(assert (=> setNonEmpty!43276 (= setRes!43276 (and tp!1770439 (inv!83899 setElem!43276) e!3859022))))

(declare-fun setRest!43276 () (InoxSet Context!11290))

(assert (=> setNonEmpty!43276 (= setRest!43270 ((_ map or) (store ((as const (Array Context!11290 Bool)) false) setElem!43276 true) setRest!43276))))

(declare-fun b!6354611 () Bool)

(declare-fun tp!1770438 () Bool)

(assert (=> b!6354611 (= e!3859022 tp!1770438)))

(assert (= (and setNonEmpty!43270 condSetEmpty!43276) setIsEmpty!43276))

(assert (= (and setNonEmpty!43270 (not condSetEmpty!43276)) setNonEmpty!43276))

(assert (= setNonEmpty!43276 b!6354611))

(declare-fun m!7161128 () Bool)

(assert (=> setNonEmpty!43276 m!7161128))

(declare-fun b!6354616 () Bool)

(declare-fun e!3859025 () Bool)

(declare-fun tp!1770442 () Bool)

(assert (=> b!6354616 (= e!3859025 (and tp_is_empty!41775 tp!1770442))))

(assert (=> b!6353596 (= tp!1770350 e!3859025)))

(assert (= (and b!6353596 ((_ is Cons!64959) (t!378673 s!2326))) b!6354616))

(declare-fun e!3859026 () Bool)

(assert (=> b!6353585 (= tp!1770347 e!3859026)))

(declare-fun b!6354617 () Bool)

(assert (=> b!6354617 (= e!3859026 tp_is_empty!41775)))

(declare-fun b!6354620 () Bool)

(declare-fun tp!1770447 () Bool)

(declare-fun tp!1770445 () Bool)

(assert (=> b!6354620 (= e!3859026 (and tp!1770447 tp!1770445))))

(declare-fun b!6354619 () Bool)

(declare-fun tp!1770444 () Bool)

(assert (=> b!6354619 (= e!3859026 tp!1770444)))

(declare-fun b!6354618 () Bool)

(declare-fun tp!1770446 () Bool)

(declare-fun tp!1770443 () Bool)

(assert (=> b!6354618 (= e!3859026 (and tp!1770446 tp!1770443))))

(assert (= (and b!6353585 ((_ is ElementMatch!16261) (regOne!33035 r!7292))) b!6354617))

(assert (= (and b!6353585 ((_ is Concat!25106) (regOne!33035 r!7292))) b!6354618))

(assert (= (and b!6353585 ((_ is Star!16261) (regOne!33035 r!7292))) b!6354619))

(assert (= (and b!6353585 ((_ is Union!16261) (regOne!33035 r!7292))) b!6354620))

(declare-fun e!3859027 () Bool)

(assert (=> b!6353585 (= tp!1770348 e!3859027)))

(declare-fun b!6354621 () Bool)

(assert (=> b!6354621 (= e!3859027 tp_is_empty!41775)))

(declare-fun b!6354624 () Bool)

(declare-fun tp!1770452 () Bool)

(declare-fun tp!1770450 () Bool)

(assert (=> b!6354624 (= e!3859027 (and tp!1770452 tp!1770450))))

(declare-fun b!6354623 () Bool)

(declare-fun tp!1770449 () Bool)

(assert (=> b!6354623 (= e!3859027 tp!1770449)))

(declare-fun b!6354622 () Bool)

(declare-fun tp!1770451 () Bool)

(declare-fun tp!1770448 () Bool)

(assert (=> b!6354622 (= e!3859027 (and tp!1770451 tp!1770448))))

(assert (= (and b!6353585 ((_ is ElementMatch!16261) (regTwo!33035 r!7292))) b!6354621))

(assert (= (and b!6353585 ((_ is Concat!25106) (regTwo!33035 r!7292))) b!6354622))

(assert (= (and b!6353585 ((_ is Star!16261) (regTwo!33035 r!7292))) b!6354623))

(assert (= (and b!6353585 ((_ is Union!16261) (regTwo!33035 r!7292))) b!6354624))

(declare-fun b!6354632 () Bool)

(declare-fun e!3859033 () Bool)

(declare-fun tp!1770457 () Bool)

(assert (=> b!6354632 (= e!3859033 tp!1770457)))

(declare-fun b!6354631 () Bool)

(declare-fun e!3859032 () Bool)

(declare-fun tp!1770458 () Bool)

(assert (=> b!6354631 (= e!3859032 (and (inv!83899 (h!71408 (t!378674 zl!343))) e!3859033 tp!1770458))))

(assert (=> b!6353594 (= tp!1770349 e!3859032)))

(assert (= b!6354631 b!6354632))

(assert (= (and b!6353594 ((_ is Cons!64960) (t!378674 zl!343))) b!6354631))

(declare-fun m!7161130 () Bool)

(assert (=> b!6354631 m!7161130))

(declare-fun e!3859034 () Bool)

(assert (=> b!6353599 (= tp!1770354 e!3859034)))

(declare-fun b!6354633 () Bool)

(assert (=> b!6354633 (= e!3859034 tp_is_empty!41775)))

(declare-fun b!6354636 () Bool)

(declare-fun tp!1770463 () Bool)

(declare-fun tp!1770461 () Bool)

(assert (=> b!6354636 (= e!3859034 (and tp!1770463 tp!1770461))))

(declare-fun b!6354635 () Bool)

(declare-fun tp!1770460 () Bool)

(assert (=> b!6354635 (= e!3859034 tp!1770460)))

(declare-fun b!6354634 () Bool)

(declare-fun tp!1770462 () Bool)

(declare-fun tp!1770459 () Bool)

(assert (=> b!6354634 (= e!3859034 (and tp!1770462 tp!1770459))))

(assert (= (and b!6353599 ((_ is ElementMatch!16261) (regOne!33034 r!7292))) b!6354633))

(assert (= (and b!6353599 ((_ is Concat!25106) (regOne!33034 r!7292))) b!6354634))

(assert (= (and b!6353599 ((_ is Star!16261) (regOne!33034 r!7292))) b!6354635))

(assert (= (and b!6353599 ((_ is Union!16261) (regOne!33034 r!7292))) b!6354636))

(declare-fun e!3859035 () Bool)

(assert (=> b!6353599 (= tp!1770351 e!3859035)))

(declare-fun b!6354637 () Bool)

(assert (=> b!6354637 (= e!3859035 tp_is_empty!41775)))

(declare-fun b!6354640 () Bool)

(declare-fun tp!1770468 () Bool)

(declare-fun tp!1770466 () Bool)

(assert (=> b!6354640 (= e!3859035 (and tp!1770468 tp!1770466))))

(declare-fun b!6354639 () Bool)

(declare-fun tp!1770465 () Bool)

(assert (=> b!6354639 (= e!3859035 tp!1770465)))

(declare-fun b!6354638 () Bool)

(declare-fun tp!1770467 () Bool)

(declare-fun tp!1770464 () Bool)

(assert (=> b!6354638 (= e!3859035 (and tp!1770467 tp!1770464))))

(assert (= (and b!6353599 ((_ is ElementMatch!16261) (regTwo!33034 r!7292))) b!6354637))

(assert (= (and b!6353599 ((_ is Concat!25106) (regTwo!33034 r!7292))) b!6354638))

(assert (= (and b!6353599 ((_ is Star!16261) (regTwo!33034 r!7292))) b!6354639))

(assert (= (and b!6353599 ((_ is Union!16261) (regTwo!33034 r!7292))) b!6354640))

(declare-fun b!6354641 () Bool)

(declare-fun e!3859036 () Bool)

(declare-fun tp!1770469 () Bool)

(declare-fun tp!1770470 () Bool)

(assert (=> b!6354641 (= e!3859036 (and tp!1770469 tp!1770470))))

(assert (=> b!6353574 (= tp!1770353 e!3859036)))

(assert (= (and b!6353574 ((_ is Cons!64958) (exprs!6145 setElem!43270))) b!6354641))

(declare-fun b_lambda!241649 () Bool)

(assert (= b_lambda!241639 (or b!6353601 b_lambda!241649)))

(declare-fun bs!1591646 () Bool)

(declare-fun d!1993712 () Bool)

(assert (= bs!1591646 (and d!1993712 b!6353601)))

(assert (=> bs!1591646 (= (dynLambda!25759 lambda!349662 lt!2365389) (derivationStepZipperUp!1435 lt!2365389 (h!71407 s!2326)))))

(assert (=> bs!1591646 m!7160234))

(assert (=> d!1993486 d!1993712))

(declare-fun b_lambda!241651 () Bool)

(assert (= b_lambda!241641 (or b!6353601 b_lambda!241651)))

(declare-fun bs!1591647 () Bool)

(declare-fun d!1993714 () Bool)

(assert (= bs!1591647 (and d!1993714 b!6353601)))

(assert (=> bs!1591647 (= (dynLambda!25759 lambda!349662 (h!71408 zl!343)) (derivationStepZipperUp!1435 (h!71408 zl!343) (h!71407 s!2326)))))

(assert (=> bs!1591647 m!7160222))

(assert (=> d!1993600 d!1993714))

(check-sat (not b!6354551) (not d!1993566) (not d!1993564) (not d!1993562) tp_is_empty!41775 (not b!6354239) (not d!1993682) (not b!6354236) (not b!6354337) (not b!6354631) (not b!6354459) (not d!1993692) (not b!6354581) (not bm!541841) (not b!6354457) (not b!6354636) (not b!6354493) (not setNonEmpty!43276) (not bm!541858) (not b!6354465) (not b!6354144) (not b!6354542) (not b_lambda!241651) (not bm!541886) (not b!6354466) (not b!6354420) (not b!6354497) (not d!1993656) (not d!1993670) (not b!6354618) (not b!6354481) (not b!6354439) (not b!6354638) (not bm!541888) (not b!6354462) (not bs!1591647) (not bm!541835) (not b!6354474) (not bm!541880) (not b!6354463) (not b!6354616) (not bm!541887) (not b!6354166) (not b!6354601) (not bm!541884) (not b!6354520) (not b!6354640) (not b!6354342) (not bm!541833) (not d!1993650) (not b!6354427) (not b!6354164) (not d!1993666) (not b!6354336) (not b!6354505) (not b!6354445) (not b!6354449) (not d!1993552) (not bm!541893) (not bm!541910) (not b!6354219) (not d!1993486) (not b!6354188) (not b!6354510) (not bm!541905) (not b!6354146) (not b!6354339) (not b!6354501) (not b!6354574) (not b!6354490) (not bm!541871) (not bm!541870) (not b!6354623) (not b!6354170) (not d!1993672) (not b!6354547) (not b!6354167) (not bm!541909) (not b!6354473) (not d!1993684) (not b!6353879) (not b!6354517) (not b!6354576) (not d!1993648) (not b!6354632) (not b!6354548) (not b!6353874) (not b!6354599) (not d!1993664) (not b!6354526) (not b!6354532) (not b!6354141) (not b!6353781) (not d!1993662) (not b!6354511) (not b!6354491) (not d!1993668) (not b!6354488) (not b!6354549) (not b!6354641) (not b!6354475) (not b!6354173) (not b_lambda!241649) (not b!6354174) (not b!6354514) (not b!6354040) (not d!1993634) (not b!6354340) (not b!6354202) (not b!6354234) (not d!1993708) (not b!6354472) (not d!1993700) (not b!6354521) (not b!6354221) (not b!6353779) (not bm!541908) (not b!6354443) (not b!6354165) (not bm!541903) (not b!6354507) (not b!6354624) (not bm!541857) (not b!6354622) (not d!1993568) (not b!6354600) (not b!6354573) (not b!6354434) (not b!6354135) (not bm!541895) (not b!6353883) (not bm!541894) (not b!6354171) (not b!6354639) (not bm!541834) (not d!1993530) (not bm!541883) (not b!6354471) (not b!6354536) (not b!6354140) (not b!6354448) (not b!6354419) (not d!1993644) (not b!6354418) (not b!6354572) (not b!6353881) (not d!1993698) (not b!6354429) (not b!6354541) (not b!6354578) (not d!1993702) (not d!1993696) (not d!1993494) (not b!6354485) (not b!6354441) (not b!6354611) (not b!6353876) (not d!1993710) (not d!1993488) (not b!6354468) (not b!6354619) (not b!6354515) (not b!6354044) (not b!6354172) (not d!1993704) (not d!1993600) (not bm!541904) (not b!6354241) (not b!6354635) (not b!6354137) (not b!6354334) (not d!1993554) (not d!1993598) (not b!6354606) (not b!6353762) (not b!6354512) (not b!6353943) (not b!6354540) (not d!1993706) (not d!1993636) (not d!1993646) (not b!6354544) (not b!6354634) (not d!1993688) (not d!1993584) (not b!6354190) (not d!1993676) (not d!1993512) (not b!6354454) (not d!1993678) (not b!6354575) (not bs!1591646) (not b!6354550) (not b!6353882) (not d!1993686) (not b!6353880) (not d!1993480) (not b!6354524) (not d!1993642) (not b!6354460) (not d!1993694) (not b!6354452) (not b!6354432) (not d!1993550) (not b!6354620) (not b!6354513) (not d!1993606) (not bm!541911) (not b!6354487) (not b!6354180) (not bm!541907) (not b!6354586))
(check-sat)
