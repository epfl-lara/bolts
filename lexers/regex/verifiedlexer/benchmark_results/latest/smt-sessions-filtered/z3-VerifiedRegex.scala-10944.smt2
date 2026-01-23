; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!566470 () Bool)

(assert start!566470)

(declare-fun b!5390600 () Bool)

(assert (=> b!5390600 true))

(assert (=> b!5390600 true))

(declare-fun lambda!279970 () Int)

(declare-fun lambda!279969 () Int)

(assert (=> b!5390600 (not (= lambda!279970 lambda!279969))))

(assert (=> b!5390600 true))

(assert (=> b!5390600 true))

(declare-fun b!5390608 () Bool)

(assert (=> b!5390608 true))

(declare-fun bs!1247316 () Bool)

(declare-fun b!5390589 () Bool)

(assert (= bs!1247316 (and b!5390589 b!5390600)))

(declare-datatypes ((C!30540 0))(
  ( (C!30541 (val!24972 Int)) )
))
(declare-datatypes ((Regex!15135 0))(
  ( (ElementMatch!15135 (c!939355 C!30540)) (Concat!23980 (regOne!30782 Regex!15135) (regTwo!30782 Regex!15135)) (EmptyExpr!15135) (Star!15135 (reg!15464 Regex!15135)) (EmptyLang!15135) (Union!15135 (regOne!30783 Regex!15135) (regTwo!30783 Regex!15135)) )
))
(declare-fun r!7292 () Regex!15135)

(declare-fun lt!2196395 () Regex!15135)

(declare-fun lambda!279972 () Int)

(assert (=> bs!1247316 (= (= lt!2196395 (regOne!30782 r!7292)) (= lambda!279972 lambda!279969))))

(assert (=> bs!1247316 (not (= lambda!279972 lambda!279970))))

(assert (=> b!5390589 true))

(assert (=> b!5390589 true))

(assert (=> b!5390589 true))

(declare-fun lambda!279973 () Int)

(assert (=> bs!1247316 (not (= lambda!279973 lambda!279969))))

(assert (=> bs!1247316 (= (= lt!2196395 (regOne!30782 r!7292)) (= lambda!279973 lambda!279970))))

(assert (=> b!5390589 (not (= lambda!279973 lambda!279972))))

(assert (=> b!5390589 true))

(assert (=> b!5390589 true))

(assert (=> b!5390589 true))

(declare-fun bs!1247317 () Bool)

(declare-fun b!5390617 () Bool)

(assert (= bs!1247317 (and b!5390617 b!5390600)))

(declare-datatypes ((List!61704 0))(
  ( (Nil!61580) (Cons!61580 (h!68028 C!30540) (t!374927 List!61704)) )
))
(declare-fun s!2326 () List!61704)

(declare-fun lambda!279974 () Int)

(declare-datatypes ((tuple2!64668 0))(
  ( (tuple2!64669 (_1!35637 List!61704) (_2!35637 List!61704)) )
))
(declare-fun lt!2196435 () tuple2!64668)

(assert (=> bs!1247317 (= (and (= (_1!35637 lt!2196435) s!2326) (= (reg!15464 (regOne!30782 r!7292)) (regOne!30782 r!7292)) (= lt!2196395 (regTwo!30782 r!7292))) (= lambda!279974 lambda!279969))))

(assert (=> bs!1247317 (not (= lambda!279974 lambda!279970))))

(declare-fun bs!1247318 () Bool)

(assert (= bs!1247318 (and b!5390617 b!5390589)))

(assert (=> bs!1247318 (= (and (= (_1!35637 lt!2196435) s!2326) (= (reg!15464 (regOne!30782 r!7292)) lt!2196395) (= lt!2196395 (regTwo!30782 r!7292))) (= lambda!279974 lambda!279972))))

(assert (=> bs!1247318 (not (= lambda!279974 lambda!279973))))

(assert (=> b!5390617 true))

(assert (=> b!5390617 true))

(assert (=> b!5390617 true))

(declare-fun lambda!279975 () Int)

(assert (=> bs!1247317 (not (= lambda!279975 lambda!279970))))

(assert (=> b!5390617 (not (= lambda!279975 lambda!279974))))

(assert (=> bs!1247317 (not (= lambda!279975 lambda!279969))))

(assert (=> bs!1247318 (not (= lambda!279975 lambda!279973))))

(assert (=> bs!1247318 (not (= lambda!279975 lambda!279972))))

(assert (=> b!5390617 true))

(assert (=> b!5390617 true))

(assert (=> b!5390617 true))

(declare-fun lambda!279976 () Int)

(assert (=> bs!1247317 (= (and (= (_1!35637 lt!2196435) s!2326) (= (reg!15464 (regOne!30782 r!7292)) (regOne!30782 r!7292)) (= lt!2196395 (regTwo!30782 r!7292))) (= lambda!279976 lambda!279970))))

(assert (=> b!5390617 (not (= lambda!279976 lambda!279974))))

(assert (=> bs!1247317 (not (= lambda!279976 lambda!279969))))

(assert (=> bs!1247318 (= (and (= (_1!35637 lt!2196435) s!2326) (= (reg!15464 (regOne!30782 r!7292)) lt!2196395) (= lt!2196395 (regTwo!30782 r!7292))) (= lambda!279976 lambda!279973))))

(assert (=> b!5390617 (not (= lambda!279976 lambda!279975))))

(assert (=> bs!1247318 (not (= lambda!279976 lambda!279972))))

(assert (=> b!5390617 true))

(assert (=> b!5390617 true))

(assert (=> b!5390617 true))

(declare-fun b!5390579 () Bool)

(declare-fun e!3343104 () Bool)

(declare-fun e!3343112 () Bool)

(assert (=> b!5390579 (= e!3343104 e!3343112)))

(declare-fun res!2290548 () Bool)

(assert (=> b!5390579 (=> res!2290548 e!3343112)))

(declare-fun lt!2196428 () Regex!15135)

(assert (=> b!5390579 (= res!2290548 (not (= r!7292 lt!2196428)))))

(assert (=> b!5390579 (= lt!2196428 (Concat!23980 lt!2196395 (regTwo!30782 r!7292)))))

(declare-fun b!5390580 () Bool)

(declare-fun e!3343105 () Bool)

(declare-fun e!3343109 () Bool)

(assert (=> b!5390580 (= e!3343105 e!3343109)))

(declare-fun res!2290547 () Bool)

(assert (=> b!5390580 (=> res!2290547 e!3343109)))

(declare-datatypes ((List!61705 0))(
  ( (Nil!61581) (Cons!61581 (h!68029 Regex!15135) (t!374928 List!61705)) )
))
(declare-datatypes ((Context!9038 0))(
  ( (Context!9039 (exprs!5019 List!61705)) )
))
(declare-datatypes ((List!61706 0))(
  ( (Nil!61582) (Cons!61582 (h!68030 Context!9038) (t!374929 List!61706)) )
))
(declare-fun lt!2196390 () List!61706)

(declare-fun unfocusZipper!877 (List!61706) Regex!15135)

(assert (=> b!5390580 (= res!2290547 (not (= (unfocusZipper!877 lt!2196390) (reg!15464 (regOne!30782 r!7292)))))))

(declare-fun lt!2196389 () Context!9038)

(assert (=> b!5390580 (= lt!2196390 (Cons!61582 lt!2196389 Nil!61582))))

(declare-fun lt!2196412 () Context!9038)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2196431 () (InoxSet Context!9038))

(declare-fun lambda!279971 () Int)

(declare-fun flatMap!862 ((InoxSet Context!9038) Int) (InoxSet Context!9038))

(declare-fun derivationStepZipperUp!507 (Context!9038 C!30540) (InoxSet Context!9038))

(assert (=> b!5390580 (= (flatMap!862 lt!2196431 lambda!279971) (derivationStepZipperUp!507 lt!2196412 (h!68028 s!2326)))))

(declare-datatypes ((Unit!154060 0))(
  ( (Unit!154061) )
))
(declare-fun lt!2196385 () Unit!154060)

(declare-fun lemmaFlatMapOnSingletonSet!394 ((InoxSet Context!9038) Context!9038 Int) Unit!154060)

(assert (=> b!5390580 (= lt!2196385 (lemmaFlatMapOnSingletonSet!394 lt!2196431 lt!2196412 lambda!279971))))

(declare-fun lt!2196387 () (InoxSet Context!9038))

(assert (=> b!5390580 (= (flatMap!862 lt!2196387 lambda!279971) (derivationStepZipperUp!507 lt!2196389 (h!68028 s!2326)))))

(declare-fun lt!2196427 () Unit!154060)

(assert (=> b!5390580 (= lt!2196427 (lemmaFlatMapOnSingletonSet!394 lt!2196387 lt!2196389 lambda!279971))))

(declare-fun lt!2196417 () (InoxSet Context!9038))

(assert (=> b!5390580 (= lt!2196417 (derivationStepZipperUp!507 lt!2196412 (h!68028 s!2326)))))

(declare-fun lt!2196438 () (InoxSet Context!9038))

(assert (=> b!5390580 (= lt!2196438 (derivationStepZipperUp!507 lt!2196389 (h!68028 s!2326)))))

(assert (=> b!5390580 (= lt!2196431 (store ((as const (Array Context!9038 Bool)) false) lt!2196412 true))))

(assert (=> b!5390580 (= lt!2196387 (store ((as const (Array Context!9038 Bool)) false) lt!2196389 true))))

(declare-fun lt!2196422 () List!61705)

(assert (=> b!5390580 (= lt!2196389 (Context!9039 lt!2196422))))

(assert (=> b!5390580 (= lt!2196422 (Cons!61581 (reg!15464 (regOne!30782 r!7292)) Nil!61581))))

(declare-fun b!5390582 () Bool)

(declare-fun e!3343093 () Bool)

(declare-fun e!3343107 () Bool)

(assert (=> b!5390582 (= e!3343093 (not e!3343107))))

(declare-fun res!2290541 () Bool)

(assert (=> b!5390582 (=> res!2290541 e!3343107)))

(declare-fun zl!343 () List!61706)

(get-info :version)

(assert (=> b!5390582 (= res!2290541 (not ((_ is Cons!61582) zl!343)))))

(declare-fun lt!2196400 () Bool)

(declare-fun lt!2196403 () Bool)

(assert (=> b!5390582 (= lt!2196400 lt!2196403)))

(declare-fun matchRSpec!2238 (Regex!15135 List!61704) Bool)

(assert (=> b!5390582 (= lt!2196403 (matchRSpec!2238 r!7292 s!2326))))

(declare-fun matchR!7320 (Regex!15135 List!61704) Bool)

(assert (=> b!5390582 (= lt!2196400 (matchR!7320 r!7292 s!2326))))

(declare-fun lt!2196414 () Unit!154060)

(declare-fun mainMatchTheorem!2238 (Regex!15135 List!61704) Unit!154060)

(assert (=> b!5390582 (= lt!2196414 (mainMatchTheorem!2238 r!7292 s!2326))))

(declare-fun b!5390583 () Bool)

(declare-fun e!3343092 () Bool)

(assert (=> b!5390583 (= e!3343092 e!3343104)))

(declare-fun res!2290558 () Bool)

(assert (=> b!5390583 (=> res!2290558 e!3343104)))

(declare-fun lt!2196398 () (InoxSet Context!9038))

(declare-fun lt!2196397 () (InoxSet Context!9038))

(assert (=> b!5390583 (= res!2290558 (not (= lt!2196398 lt!2196397)))))

(declare-fun lt!2196413 () Context!9038)

(declare-fun lt!2196406 () (InoxSet Context!9038))

(assert (=> b!5390583 (= (flatMap!862 lt!2196406 lambda!279971) (derivationStepZipperUp!507 lt!2196413 (h!68028 s!2326)))))

(declare-fun lt!2196404 () Unit!154060)

(assert (=> b!5390583 (= lt!2196404 (lemmaFlatMapOnSingletonSet!394 lt!2196406 lt!2196413 lambda!279971))))

(declare-fun lt!2196410 () (InoxSet Context!9038))

(assert (=> b!5390583 (= lt!2196410 (derivationStepZipperUp!507 lt!2196413 (h!68028 s!2326)))))

(declare-fun derivationStepZipper!1374 ((InoxSet Context!9038) C!30540) (InoxSet Context!9038))

(assert (=> b!5390583 (= lt!2196398 (derivationStepZipper!1374 lt!2196406 (h!68028 s!2326)))))

(assert (=> b!5390583 (= lt!2196406 (store ((as const (Array Context!9038 Bool)) false) lt!2196413 true))))

(declare-fun lt!2196420 () List!61705)

(assert (=> b!5390583 (= lt!2196413 (Context!9039 (Cons!61581 (reg!15464 (regOne!30782 r!7292)) lt!2196420)))))

(declare-fun b!5390584 () Bool)

(declare-fun res!2290542 () Bool)

(assert (=> b!5390584 (=> res!2290542 e!3343107)))

(assert (=> b!5390584 (= res!2290542 (not ((_ is Cons!61581) (exprs!5019 (h!68030 zl!343)))))))

(declare-fun b!5390585 () Bool)

(declare-fun e!3343106 () Bool)

(declare-fun tp!1492694 () Bool)

(assert (=> b!5390585 (= e!3343106 tp!1492694)))

(declare-fun b!5390586 () Bool)

(declare-fun res!2290544 () Bool)

(assert (=> b!5390586 (=> res!2290544 e!3343107)))

(declare-fun generalisedUnion!1064 (List!61705) Regex!15135)

(declare-fun unfocusZipperList!577 (List!61706) List!61705)

(assert (=> b!5390586 (= res!2290544 (not (= r!7292 (generalisedUnion!1064 (unfocusZipperList!577 zl!343)))))))

(declare-fun b!5390587 () Bool)

(declare-fun e!3343100 () Unit!154060)

(declare-fun Unit!154062 () Unit!154060)

(assert (=> b!5390587 (= e!3343100 Unit!154062)))

(declare-fun lt!2196405 () Unit!154060)

(declare-fun lt!2196393 () (InoxSet Context!9038))

(declare-fun lt!2196376 () (InoxSet Context!9038))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!372 ((InoxSet Context!9038) (InoxSet Context!9038) List!61704) Unit!154060)

(assert (=> b!5390587 (= lt!2196405 (lemmaZipperConcatMatchesSameAsBothZippers!372 lt!2196393 lt!2196376 (t!374927 s!2326)))))

(declare-fun res!2290556 () Bool)

(declare-fun matchZipper!1379 ((InoxSet Context!9038) List!61704) Bool)

(assert (=> b!5390587 (= res!2290556 (matchZipper!1379 lt!2196393 (t!374927 s!2326)))))

(declare-fun e!3343094 () Bool)

(assert (=> b!5390587 (=> res!2290556 e!3343094)))

(assert (=> b!5390587 (= (matchZipper!1379 ((_ map or) lt!2196393 lt!2196376) (t!374927 s!2326)) e!3343094)))

(declare-fun setIsEmpty!35015 () Bool)

(declare-fun setRes!35015 () Bool)

(assert (=> setIsEmpty!35015 setRes!35015))

(declare-fun b!5390588 () Bool)

(declare-fun e!3343102 () Bool)

(assert (=> b!5390588 (= e!3343102 true)))

(declare-fun lt!2196386 () Unit!154060)

(declare-fun e!3343111 () Unit!154060)

(assert (=> b!5390588 (= lt!2196386 e!3343111)))

(declare-fun c!939354 () Bool)

(declare-fun isEmpty!33580 (List!61704) Bool)

(assert (=> b!5390588 (= c!939354 (isEmpty!33580 (_1!35637 lt!2196435)))))

(declare-fun e!3343089 () Bool)

(assert (=> b!5390589 (= e!3343089 e!3343102)))

(declare-fun res!2290552 () Bool)

(assert (=> b!5390589 (=> res!2290552 e!3343102)))

(declare-fun ++!13455 (List!61704 List!61704) List!61704)

(assert (=> b!5390589 (= res!2290552 (not (= (++!13455 (_1!35637 lt!2196435) (_2!35637 lt!2196435)) s!2326)))))

(declare-datatypes ((Option!15246 0))(
  ( (None!15245) (Some!15245 (v!51274 tuple2!64668)) )
))
(declare-fun lt!2196440 () Option!15246)

(declare-fun get!21211 (Option!15246) tuple2!64668)

(assert (=> b!5390589 (= lt!2196435 (get!21211 lt!2196440))))

(declare-fun Exists!2316 (Int) Bool)

(assert (=> b!5390589 (= (Exists!2316 lambda!279972) (Exists!2316 lambda!279973))))

(declare-fun lt!2196399 () Unit!154060)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!970 (Regex!15135 Regex!15135 List!61704) Unit!154060)

(assert (=> b!5390589 (= lt!2196399 (lemmaExistCutMatchRandMatchRSpecEquivalent!970 lt!2196395 (regTwo!30782 r!7292) s!2326))))

(declare-fun isDefined!11949 (Option!15246) Bool)

(assert (=> b!5390589 (= (isDefined!11949 lt!2196440) (Exists!2316 lambda!279972))))

(declare-fun findConcatSeparation!1660 (Regex!15135 Regex!15135 List!61704 List!61704 List!61704) Option!15246)

(assert (=> b!5390589 (= lt!2196440 (findConcatSeparation!1660 lt!2196395 (regTwo!30782 r!7292) Nil!61580 s!2326 s!2326))))

(declare-fun lt!2196425 () Unit!154060)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1424 (Regex!15135 Regex!15135 List!61704) Unit!154060)

(assert (=> b!5390589 (= lt!2196425 (lemmaFindConcatSeparationEquivalentToExists!1424 lt!2196395 (regTwo!30782 r!7292) s!2326))))

(declare-fun b!5390590 () Bool)

(declare-fun res!2290554 () Bool)

(declare-fun e!3343110 () Bool)

(assert (=> b!5390590 (=> res!2290554 e!3343110)))

(declare-fun isEmpty!33581 (List!61705) Bool)

(assert (=> b!5390590 (= res!2290554 (isEmpty!33581 (t!374928 (exprs!5019 (h!68030 zl!343)))))))

(declare-fun b!5390591 () Bool)

(declare-fun res!2290571 () Bool)

(assert (=> b!5390591 (=> res!2290571 e!3343107)))

(assert (=> b!5390591 (= res!2290571 (or ((_ is EmptyExpr!15135) r!7292) ((_ is EmptyLang!15135) r!7292) ((_ is ElementMatch!15135) r!7292) ((_ is Union!15135) r!7292) (not ((_ is Concat!23980) r!7292))))))

(declare-fun b!5390592 () Bool)

(declare-fun e!3343095 () Bool)

(declare-fun tp!1492696 () Bool)

(assert (=> b!5390592 (= e!3343095 tp!1492696)))

(declare-fun b!5390593 () Bool)

(declare-fun Unit!154063 () Unit!154060)

(assert (=> b!5390593 (= e!3343100 Unit!154063)))

(declare-fun b!5390594 () Bool)

(declare-fun res!2290557 () Bool)

(assert (=> b!5390594 (=> res!2290557 e!3343107)))

(declare-fun isEmpty!33582 (List!61706) Bool)

(assert (=> b!5390594 (= res!2290557 (not (isEmpty!33582 (t!374929 zl!343))))))

(declare-fun b!5390595 () Bool)

(assert (=> b!5390595 (= e!3343094 (matchZipper!1379 lt!2196376 (t!374927 s!2326)))))

(declare-fun b!5390596 () Bool)

(declare-fun e!3343098 () Bool)

(declare-fun lt!2196429 () Bool)

(assert (=> b!5390596 (= e!3343098 lt!2196429)))

(declare-fun b!5390597 () Bool)

(declare-fun tp_is_empty!39523 () Bool)

(assert (=> b!5390597 (= e!3343095 tp_is_empty!39523)))

(declare-fun b!5390598 () Bool)

(declare-fun res!2290566 () Bool)

(assert (=> b!5390598 (=> res!2290566 e!3343102)))

(assert (=> b!5390598 (= res!2290566 (not (matchR!7320 lt!2196395 (_1!35637 lt!2196435))))))

(declare-fun b!5390599 () Bool)

(declare-fun e!3343090 () Bool)

(declare-fun tp!1492689 () Bool)

(assert (=> b!5390599 (= e!3343090 tp!1492689)))

(assert (=> b!5390600 (= e!3343107 e!3343110)))

(declare-fun res!2290559 () Bool)

(assert (=> b!5390600 (=> res!2290559 e!3343110)))

(declare-fun lt!2196436 () Bool)

(assert (=> b!5390600 (= res!2290559 (or (not (= lt!2196400 lt!2196436)) ((_ is Nil!61580) s!2326)))))

(assert (=> b!5390600 (= (Exists!2316 lambda!279969) (Exists!2316 lambda!279970))))

(declare-fun lt!2196419 () Unit!154060)

(assert (=> b!5390600 (= lt!2196419 (lemmaExistCutMatchRandMatchRSpecEquivalent!970 (regOne!30782 r!7292) (regTwo!30782 r!7292) s!2326))))

(assert (=> b!5390600 (= lt!2196436 (Exists!2316 lambda!279969))))

(assert (=> b!5390600 (= lt!2196436 (isDefined!11949 (findConcatSeparation!1660 (regOne!30782 r!7292) (regTwo!30782 r!7292) Nil!61580 s!2326 s!2326)))))

(declare-fun lt!2196415 () Unit!154060)

(assert (=> b!5390600 (= lt!2196415 (lemmaFindConcatSeparationEquivalentToExists!1424 (regOne!30782 r!7292) (regTwo!30782 r!7292) s!2326))))

(declare-fun b!5390601 () Bool)

(assert (=> b!5390601 (= e!3343112 e!3343105)))

(declare-fun res!2290545 () Bool)

(assert (=> b!5390601 (=> res!2290545 e!3343105)))

(declare-fun lt!2196430 () Regex!15135)

(assert (=> b!5390601 (= res!2290545 (not (= (unfocusZipper!877 (Cons!61582 lt!2196413 Nil!61582)) lt!2196430)))))

(assert (=> b!5390601 (= lt!2196430 (Concat!23980 (reg!15464 (regOne!30782 r!7292)) lt!2196428))))

(declare-fun b!5390581 () Bool)

(declare-fun res!2290551 () Bool)

(declare-fun e!3343101 () Bool)

(assert (=> b!5390581 (=> res!2290551 e!3343101)))

(declare-fun e!3343099 () Bool)

(assert (=> b!5390581 (= res!2290551 e!3343099)))

(declare-fun res!2290569 () Bool)

(assert (=> b!5390581 (=> (not res!2290569) (not e!3343099))))

(assert (=> b!5390581 (= res!2290569 ((_ is Concat!23980) (regOne!30782 r!7292)))))

(declare-fun res!2290549 () Bool)

(declare-fun e!3343091 () Bool)

(assert (=> start!566470 (=> (not res!2290549) (not e!3343091))))

(declare-fun validRegex!6871 (Regex!15135) Bool)

(assert (=> start!566470 (= res!2290549 (validRegex!6871 r!7292))))

(assert (=> start!566470 e!3343091))

(assert (=> start!566470 e!3343095))

(declare-fun condSetEmpty!35015 () Bool)

(declare-fun z!1189 () (InoxSet Context!9038))

(assert (=> start!566470 (= condSetEmpty!35015 (= z!1189 ((as const (Array Context!9038 Bool)) false)))))

(assert (=> start!566470 setRes!35015))

(declare-fun e!3343096 () Bool)

(assert (=> start!566470 e!3343096))

(declare-fun e!3343108 () Bool)

(assert (=> start!566470 e!3343108))

(declare-fun b!5390602 () Bool)

(declare-fun res!2290543 () Bool)

(assert (=> b!5390602 (=> res!2290543 e!3343104)))

(declare-fun lt!2196408 () Regex!15135)

(assert (=> b!5390602 (= res!2290543 (not (= lt!2196408 r!7292)))))

(declare-fun b!5390603 () Bool)

(declare-fun e!3343103 () Bool)

(assert (=> b!5390603 (= e!3343109 e!3343103)))

(declare-fun res!2290550 () Bool)

(assert (=> b!5390603 (=> res!2290550 e!3343103)))

(declare-fun lt!2196396 () List!61706)

(assert (=> b!5390603 (= res!2290550 (not (= (unfocusZipper!877 lt!2196396) lt!2196428)))))

(assert (=> b!5390603 (= lt!2196396 (Cons!61582 lt!2196412 Nil!61582))))

(declare-fun bm!385836 () Bool)

(declare-fun lt!2196382 () List!61704)

(declare-fun call!385841 () Bool)

(declare-fun lt!2196401 () Regex!15135)

(assert (=> bm!385836 (= call!385841 (matchR!7320 (ite c!939354 lt!2196401 lt!2196395) (ite c!939354 s!2326 lt!2196382)))))

(declare-fun call!385844 () Bool)

(declare-fun bm!385837 () Bool)

(declare-fun lt!2196381 () (InoxSet Context!9038))

(assert (=> bm!385837 (= call!385844 (matchZipper!1379 (ite c!939354 lt!2196381 z!1189) s!2326))))

(declare-fun b!5390604 () Bool)

(declare-fun res!2290570 () Bool)

(assert (=> b!5390604 (=> res!2290570 e!3343107)))

(declare-fun generalisedConcat!804 (List!61705) Regex!15135)

(assert (=> b!5390604 (= res!2290570 (not (= r!7292 (generalisedConcat!804 (exprs!5019 (h!68030 zl!343))))))))

(declare-fun b!5390605 () Bool)

(declare-fun tp!1492695 () Bool)

(assert (=> b!5390605 (= e!3343108 (and tp_is_empty!39523 tp!1492695))))

(declare-fun b!5390606 () Bool)

(declare-fun res!2290568 () Bool)

(assert (=> b!5390606 (=> res!2290568 e!3343101)))

(assert (=> b!5390606 (= res!2290568 (or ((_ is Concat!23980) (regOne!30782 r!7292)) (not ((_ is Star!15135) (regOne!30782 r!7292)))))))

(declare-fun b!5390607 () Bool)

(declare-fun res!2290562 () Bool)

(assert (=> b!5390607 (=> res!2290562 e!3343104)))

(assert (=> b!5390607 (= res!2290562 (not (= (matchZipper!1379 lt!2196406 s!2326) (matchZipper!1379 lt!2196398 (t!374927 s!2326)))))))

(assert (=> b!5390608 (= e!3343110 e!3343101)))

(declare-fun res!2290555 () Bool)

(assert (=> b!5390608 (=> res!2290555 e!3343101)))

(assert (=> b!5390608 (= res!2290555 (or (and ((_ is ElementMatch!15135) (regOne!30782 r!7292)) (= (c!939355 (regOne!30782 r!7292)) (h!68028 s!2326))) ((_ is Union!15135) (regOne!30782 r!7292))))))

(declare-fun lt!2196402 () Unit!154060)

(assert (=> b!5390608 (= lt!2196402 e!3343100)))

(declare-fun c!939353 () Bool)

(declare-fun nullable!5304 (Regex!15135) Bool)

(assert (=> b!5390608 (= c!939353 (nullable!5304 (h!68029 (exprs!5019 (h!68030 zl!343)))))))

(assert (=> b!5390608 (= (flatMap!862 z!1189 lambda!279971) (derivationStepZipperUp!507 (h!68030 zl!343) (h!68028 s!2326)))))

(declare-fun lt!2196421 () Unit!154060)

(assert (=> b!5390608 (= lt!2196421 (lemmaFlatMapOnSingletonSet!394 z!1189 (h!68030 zl!343) lambda!279971))))

(declare-fun lt!2196379 () Context!9038)

(assert (=> b!5390608 (= lt!2196376 (derivationStepZipperUp!507 lt!2196379 (h!68028 s!2326)))))

(declare-fun derivationStepZipperDown!583 (Regex!15135 Context!9038 C!30540) (InoxSet Context!9038))

(assert (=> b!5390608 (= lt!2196393 (derivationStepZipperDown!583 (h!68029 (exprs!5019 (h!68030 zl!343))) lt!2196379 (h!68028 s!2326)))))

(assert (=> b!5390608 (= lt!2196379 (Context!9039 (t!374928 (exprs!5019 (h!68030 zl!343)))))))

(declare-fun lt!2196377 () (InoxSet Context!9038))

(assert (=> b!5390608 (= lt!2196377 (derivationStepZipperUp!507 (Context!9039 (Cons!61581 (h!68029 (exprs!5019 (h!68030 zl!343))) (t!374928 (exprs!5019 (h!68030 zl!343))))) (h!68028 s!2326)))))

(declare-fun bm!385838 () Bool)

(declare-fun call!385842 () Bool)

(declare-fun lt!2196433 () List!61704)

(assert (=> bm!385838 (= call!385842 (matchZipper!1379 (ite c!939354 z!1189 lt!2196431) (ite c!939354 s!2326 lt!2196433)))))

(declare-fun setElem!35015 () Context!9038)

(declare-fun tp!1492692 () Bool)

(declare-fun setNonEmpty!35015 () Bool)

(declare-fun inv!81084 (Context!9038) Bool)

(assert (=> setNonEmpty!35015 (= setRes!35015 (and tp!1492692 (inv!81084 setElem!35015) e!3343106))))

(declare-fun setRest!35015 () (InoxSet Context!9038))

(assert (=> setNonEmpty!35015 (= z!1189 ((_ map or) (store ((as const (Array Context!9038 Bool)) false) setElem!35015 true) setRest!35015))))

(declare-fun b!5390609 () Bool)

(declare-fun res!2290546 () Bool)

(assert (=> b!5390609 (=> (not res!2290546) (not e!3343091))))

(declare-fun toList!8919 ((InoxSet Context!9038)) List!61706)

(assert (=> b!5390609 (= res!2290546 (= (toList!8919 z!1189) zl!343))))

(declare-fun b!5390610 () Bool)

(declare-fun res!2290567 () Bool)

(assert (=> b!5390610 (=> res!2290567 e!3343102)))

(assert (=> b!5390610 (= res!2290567 (not (matchR!7320 (regTwo!30782 r!7292) (_2!35637 lt!2196435))))))

(declare-fun b!5390611 () Bool)

(assert (=> b!5390611 (= e!3343101 e!3343092)))

(declare-fun res!2290560 () Bool)

(assert (=> b!5390611 (=> res!2290560 e!3343092)))

(assert (=> b!5390611 (= res!2290560 (not (= lt!2196393 lt!2196397)))))

(assert (=> b!5390611 (= lt!2196397 (derivationStepZipperDown!583 (reg!15464 (regOne!30782 r!7292)) lt!2196412 (h!68028 s!2326)))))

(assert (=> b!5390611 (= lt!2196412 (Context!9039 lt!2196420))))

(assert (=> b!5390611 (= lt!2196420 (Cons!61581 lt!2196395 (t!374928 (exprs!5019 (h!68030 zl!343)))))))

(assert (=> b!5390611 (= lt!2196395 (Star!15135 (reg!15464 (regOne!30782 r!7292))))))

(declare-fun call!385843 () Unit!154060)

(declare-fun bm!385839 () Bool)

(declare-fun theoremZipperRegexEquiv!465 ((InoxSet Context!9038) List!61706 Regex!15135 List!61704) Unit!154060)

(assert (=> bm!385839 (= call!385843 (theoremZipperRegexEquiv!465 (ite c!939354 lt!2196381 lt!2196431) (ite c!939354 (Cons!61582 lt!2196379 Nil!61582) lt!2196396) (ite c!939354 lt!2196401 lt!2196428) (ite c!939354 s!2326 lt!2196433)))))

(declare-fun b!5390612 () Bool)

(declare-fun tp!1492690 () Bool)

(declare-fun tp!1492688 () Bool)

(assert (=> b!5390612 (= e!3343095 (and tp!1492690 tp!1492688))))

(declare-fun b!5390613 () Bool)

(declare-fun e!3343097 () Bool)

(assert (=> b!5390613 (= e!3343097 (or (not lt!2196400) lt!2196403))))

(declare-fun b!5390614 () Bool)

(assert (=> b!5390614 (= e!3343099 (nullable!5304 (regOne!30782 (regOne!30782 r!7292))))))

(declare-fun b!5390615 () Bool)

(assert (=> b!5390615 (= e!3343103 e!3343089)))

(declare-fun res!2290553 () Bool)

(assert (=> b!5390615 (=> res!2290553 e!3343089)))

(assert (=> b!5390615 (= res!2290553 (not lt!2196400))))

(assert (=> b!5390615 e!3343097))

(declare-fun res!2290564 () Bool)

(assert (=> b!5390615 (=> (not res!2290564) (not e!3343097))))

(assert (=> b!5390615 (= res!2290564 (= lt!2196429 (matchRSpec!2238 lt!2196430 s!2326)))))

(assert (=> b!5390615 (= lt!2196429 (matchR!7320 lt!2196430 s!2326))))

(declare-fun lt!2196416 () Unit!154060)

(assert (=> b!5390615 (= lt!2196416 (mainMatchTheorem!2238 lt!2196430 s!2326))))

(declare-fun tp!1492693 () Bool)

(declare-fun b!5390616 () Bool)

(assert (=> b!5390616 (= e!3343096 (and (inv!81084 (h!68030 zl!343)) e!3343090 tp!1492693))))

(declare-fun Unit!154064 () Unit!154060)

(assert (=> b!5390617 (= e!3343111 Unit!154064)))

(declare-fun lt!2196409 () Unit!154060)

(assert (=> b!5390617 (= lt!2196409 (mainMatchTheorem!2238 lt!2196395 (_1!35637 lt!2196435)))))

(assert (=> b!5390617 (matchRSpec!2238 lt!2196395 (_1!35637 lt!2196435))))

(declare-fun lt!2196423 () Unit!154060)

(assert (=> b!5390617 (= lt!2196423 (lemmaFindConcatSeparationEquivalentToExists!1424 (reg!15464 (regOne!30782 r!7292)) lt!2196395 (_1!35637 lt!2196435)))))

(declare-fun lt!2196391 () Option!15246)

(assert (=> b!5390617 (= lt!2196391 (findConcatSeparation!1660 (reg!15464 (regOne!30782 r!7292)) lt!2196395 Nil!61580 (_1!35637 lt!2196435) (_1!35637 lt!2196435)))))

(assert (=> b!5390617 (= (isDefined!11949 lt!2196391) (Exists!2316 lambda!279974))))

(declare-fun lt!2196411 () Unit!154060)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!400 (Regex!15135 List!61704) Unit!154060)

(assert (=> b!5390617 (= lt!2196411 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!400 (reg!15464 (regOne!30782 r!7292)) (_1!35637 lt!2196435)))))

(assert (=> b!5390617 (= (Exists!2316 lambda!279974) (Exists!2316 lambda!279975))))

(declare-fun lt!2196383 () Unit!154060)

(assert (=> b!5390617 (= lt!2196383 (lemmaExistCutMatchRandMatchRSpecEquivalent!970 (reg!15464 (regOne!30782 r!7292)) lt!2196395 (_1!35637 lt!2196435)))))

(assert (=> b!5390617 (= (Exists!2316 lambda!279974) (Exists!2316 lambda!279976))))

(declare-fun lt!2196392 () tuple2!64668)

(assert (=> b!5390617 (= lt!2196392 (get!21211 lt!2196391))))

(declare-fun lt!2196407 () Unit!154060)

(declare-fun lemmaConcatAssociativity!2832 (List!61704 List!61704 List!61704) Unit!154060)

(assert (=> b!5390617 (= lt!2196407 (lemmaConcatAssociativity!2832 (_1!35637 lt!2196392) (_2!35637 lt!2196392) (_2!35637 lt!2196435)))))

(assert (=> b!5390617 (= lt!2196382 (++!13455 (_1!35637 lt!2196392) (_2!35637 lt!2196392)))))

(assert (=> b!5390617 (= lt!2196433 (++!13455 (_2!35637 lt!2196392) (_2!35637 lt!2196435)))))

(declare-fun lt!2196424 () List!61704)

(assert (=> b!5390617 (= lt!2196424 (++!13455 lt!2196382 (_2!35637 lt!2196435)))))

(declare-fun lt!2196380 () List!61704)

(assert (=> b!5390617 (= lt!2196380 (++!13455 (_1!35637 lt!2196392) lt!2196433))))

(assert (=> b!5390617 (= lt!2196424 lt!2196380)))

(declare-fun lt!2196426 () Unit!154060)

(declare-fun lemmaStarApp!56 (Regex!15135 List!61704 List!61704) Unit!154060)

(assert (=> b!5390617 (= lt!2196426 (lemmaStarApp!56 (reg!15464 (regOne!30782 r!7292)) (_1!35637 lt!2196392) (_2!35637 lt!2196392)))))

(assert (=> b!5390617 call!385841))

(declare-fun lt!2196439 () Unit!154060)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!182 (Regex!15135 Regex!15135 List!61704 List!61704) Unit!154060)

(assert (=> b!5390617 (= lt!2196439 (lemmaTwoRegexMatchThenConcatMatchesConcatString!182 lt!2196395 (regTwo!30782 r!7292) (_2!35637 lt!2196392) (_2!35637 lt!2196435)))))

(assert (=> b!5390617 (matchR!7320 lt!2196428 lt!2196433)))

(declare-fun lt!2196418 () Unit!154060)

(assert (=> b!5390617 (= lt!2196418 (theoremZipperRegexEquiv!465 lt!2196387 lt!2196390 (reg!15464 (regOne!30782 r!7292)) (_1!35637 lt!2196392)))))

(assert (=> b!5390617 (= (matchR!7320 (reg!15464 (regOne!30782 r!7292)) (_1!35637 lt!2196392)) (matchZipper!1379 lt!2196387 (_1!35637 lt!2196392)))))

(declare-fun lt!2196388 () Unit!154060)

(assert (=> b!5390617 (= lt!2196388 call!385843)))

(assert (=> b!5390617 call!385842))

(declare-fun lt!2196434 () Unit!154060)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!22 (Context!9038 Context!9038 List!61704 List!61704) Unit!154060)

(assert (=> b!5390617 (= lt!2196434 (lemmaConcatenateContextMatchesConcatOfStrings!22 lt!2196389 lt!2196412 (_1!35637 lt!2196392) lt!2196433))))

(declare-fun lambda!279977 () Int)

(declare-fun lt!2196378 () Unit!154060)

(declare-fun lemmaConcatPreservesForall!166 (List!61705 List!61705 Int) Unit!154060)

(assert (=> b!5390617 (= lt!2196378 (lemmaConcatPreservesForall!166 lt!2196422 lt!2196420 lambda!279977))))

(declare-fun ++!13456 (List!61705 List!61705) List!61705)

(assert (=> b!5390617 (matchZipper!1379 (store ((as const (Array Context!9038 Bool)) false) (Context!9039 (++!13456 lt!2196422 lt!2196420)) true) lt!2196380)))

(declare-fun lt!2196437 () Unit!154060)

(assert (=> b!5390617 (= lt!2196437 (lemmaTwoRegexMatchThenConcatMatchesConcatString!182 (reg!15464 (regOne!30782 r!7292)) lt!2196428 (_1!35637 lt!2196392) lt!2196433))))

(declare-fun res!2290563 () Bool)

(assert (=> b!5390617 (= res!2290563 (matchR!7320 lt!2196430 lt!2196380))))

(assert (=> b!5390617 (=> (not res!2290563) (not e!3343098))))

(assert (=> b!5390617 e!3343098))

(declare-fun lt!2196394 () Unit!154060)

(assert (=> b!5390617 (= lt!2196394 (lemmaConcatPreservesForall!166 lt!2196422 lt!2196420 lambda!279977))))

(assert (=> b!5390617 call!385844))

(declare-fun b!5390618 () Bool)

(declare-fun Unit!154065 () Unit!154060)

(assert (=> b!5390618 (= e!3343111 Unit!154065)))

(assert (=> b!5390618 (= lt!2196381 (store ((as const (Array Context!9038 Bool)) false) lt!2196379 true))))

(declare-fun lt!2196384 () Unit!154060)

(assert (=> b!5390618 (= lt!2196384 (lemmaFlatMapOnSingletonSet!394 lt!2196381 lt!2196379 lambda!279971))))

(assert (=> b!5390618 (= (flatMap!862 lt!2196381 lambda!279971) (derivationStepZipperUp!507 lt!2196379 (h!68028 s!2326)))))

(assert (=> b!5390618 (= lt!2196401 (generalisedConcat!804 (t!374928 (exprs!5019 (h!68030 zl!343)))))))

(declare-fun lt!2196432 () Unit!154060)

(assert (=> b!5390618 (= lt!2196432 call!385843)))

(declare-fun res!2290561 () Bool)

(assert (=> b!5390618 (= res!2290561 (= call!385841 call!385844))))

(declare-fun e!3343088 () Bool)

(assert (=> b!5390618 (=> (not res!2290561) (not e!3343088))))

(assert (=> b!5390618 e!3343088))

(declare-fun b!5390619 () Bool)

(declare-fun tp!1492697 () Bool)

(declare-fun tp!1492691 () Bool)

(assert (=> b!5390619 (= e!3343095 (and tp!1492697 tp!1492691))))

(declare-fun b!5390620 () Bool)

(assert (=> b!5390620 (= e!3343088 call!385842)))

(declare-fun b!5390621 () Bool)

(assert (=> b!5390621 (= e!3343091 e!3343093)))

(declare-fun res!2290565 () Bool)

(assert (=> b!5390621 (=> (not res!2290565) (not e!3343093))))

(assert (=> b!5390621 (= res!2290565 (= r!7292 lt!2196408))))

(assert (=> b!5390621 (= lt!2196408 (unfocusZipper!877 zl!343))))

(assert (= (and start!566470 res!2290549) b!5390609))

(assert (= (and b!5390609 res!2290546) b!5390621))

(assert (= (and b!5390621 res!2290565) b!5390582))

(assert (= (and b!5390582 (not res!2290541)) b!5390594))

(assert (= (and b!5390594 (not res!2290557)) b!5390604))

(assert (= (and b!5390604 (not res!2290570)) b!5390584))

(assert (= (and b!5390584 (not res!2290542)) b!5390586))

(assert (= (and b!5390586 (not res!2290544)) b!5390591))

(assert (= (and b!5390591 (not res!2290571)) b!5390600))

(assert (= (and b!5390600 (not res!2290559)) b!5390590))

(assert (= (and b!5390590 (not res!2290554)) b!5390608))

(assert (= (and b!5390608 c!939353) b!5390587))

(assert (= (and b!5390608 (not c!939353)) b!5390593))

(assert (= (and b!5390587 (not res!2290556)) b!5390595))

(assert (= (and b!5390608 (not res!2290555)) b!5390581))

(assert (= (and b!5390581 res!2290569) b!5390614))

(assert (= (and b!5390581 (not res!2290551)) b!5390606))

(assert (= (and b!5390606 (not res!2290568)) b!5390611))

(assert (= (and b!5390611 (not res!2290560)) b!5390583))

(assert (= (and b!5390583 (not res!2290558)) b!5390607))

(assert (= (and b!5390607 (not res!2290562)) b!5390602))

(assert (= (and b!5390602 (not res!2290543)) b!5390579))

(assert (= (and b!5390579 (not res!2290548)) b!5390601))

(assert (= (and b!5390601 (not res!2290545)) b!5390580))

(assert (= (and b!5390580 (not res!2290547)) b!5390603))

(assert (= (and b!5390603 (not res!2290550)) b!5390615))

(assert (= (and b!5390615 res!2290564) b!5390613))

(assert (= (and b!5390615 (not res!2290553)) b!5390589))

(assert (= (and b!5390589 (not res!2290552)) b!5390598))

(assert (= (and b!5390598 (not res!2290566)) b!5390610))

(assert (= (and b!5390610 (not res!2290567)) b!5390588))

(assert (= (and b!5390588 c!939354) b!5390618))

(assert (= (and b!5390588 (not c!939354)) b!5390617))

(assert (= (and b!5390618 res!2290561) b!5390620))

(assert (= (and b!5390617 res!2290563) b!5390596))

(assert (= (or b!5390618 b!5390617) bm!385836))

(assert (= (or b!5390618 b!5390617) bm!385839))

(assert (= (or b!5390618 b!5390617) bm!385837))

(assert (= (or b!5390620 b!5390617) bm!385838))

(assert (= (and start!566470 ((_ is ElementMatch!15135) r!7292)) b!5390597))

(assert (= (and start!566470 ((_ is Concat!23980) r!7292)) b!5390619))

(assert (= (and start!566470 ((_ is Star!15135) r!7292)) b!5390592))

(assert (= (and start!566470 ((_ is Union!15135) r!7292)) b!5390612))

(assert (= (and start!566470 condSetEmpty!35015) setIsEmpty!35015))

(assert (= (and start!566470 (not condSetEmpty!35015)) setNonEmpty!35015))

(assert (= setNonEmpty!35015 b!5390585))

(assert (= b!5390616 b!5390599))

(assert (= (and start!566470 ((_ is Cons!61582) zl!343)) b!5390616))

(assert (= (and start!566470 ((_ is Cons!61580) s!2326)) b!5390605))

(declare-fun m!6416430 () Bool)

(assert (=> b!5390580 m!6416430))

(declare-fun m!6416432 () Bool)

(assert (=> b!5390580 m!6416432))

(declare-fun m!6416434 () Bool)

(assert (=> b!5390580 m!6416434))

(declare-fun m!6416436 () Bool)

(assert (=> b!5390580 m!6416436))

(declare-fun m!6416438 () Bool)

(assert (=> b!5390580 m!6416438))

(declare-fun m!6416440 () Bool)

(assert (=> b!5390580 m!6416440))

(declare-fun m!6416442 () Bool)

(assert (=> b!5390580 m!6416442))

(declare-fun m!6416444 () Bool)

(assert (=> b!5390580 m!6416444))

(declare-fun m!6416446 () Bool)

(assert (=> b!5390580 m!6416446))

(declare-fun m!6416448 () Bool)

(assert (=> b!5390601 m!6416448))

(declare-fun m!6416450 () Bool)

(assert (=> b!5390586 m!6416450))

(assert (=> b!5390586 m!6416450))

(declare-fun m!6416452 () Bool)

(assert (=> b!5390586 m!6416452))

(declare-fun m!6416454 () Bool)

(assert (=> b!5390615 m!6416454))

(declare-fun m!6416456 () Bool)

(assert (=> b!5390615 m!6416456))

(declare-fun m!6416458 () Bool)

(assert (=> b!5390615 m!6416458))

(declare-fun m!6416460 () Bool)

(assert (=> b!5390621 m!6416460))

(declare-fun m!6416462 () Bool)

(assert (=> b!5390588 m!6416462))

(declare-fun m!6416464 () Bool)

(assert (=> bm!385839 m!6416464))

(declare-fun m!6416466 () Bool)

(assert (=> start!566470 m!6416466))

(declare-fun m!6416468 () Bool)

(assert (=> b!5390611 m!6416468))

(declare-fun m!6416470 () Bool)

(assert (=> bm!385838 m!6416470))

(declare-fun m!6416472 () Bool)

(assert (=> setNonEmpty!35015 m!6416472))

(declare-fun m!6416474 () Bool)

(assert (=> b!5390587 m!6416474))

(declare-fun m!6416476 () Bool)

(assert (=> b!5390587 m!6416476))

(declare-fun m!6416478 () Bool)

(assert (=> b!5390587 m!6416478))

(declare-fun m!6416480 () Bool)

(assert (=> bm!385837 m!6416480))

(declare-fun m!6416482 () Bool)

(assert (=> b!5390594 m!6416482))

(declare-fun m!6416484 () Bool)

(assert (=> b!5390616 m!6416484))

(declare-fun m!6416486 () Bool)

(assert (=> b!5390617 m!6416486))

(declare-fun m!6416488 () Bool)

(assert (=> b!5390617 m!6416488))

(declare-fun m!6416490 () Bool)

(assert (=> b!5390617 m!6416490))

(declare-fun m!6416492 () Bool)

(assert (=> b!5390617 m!6416492))

(declare-fun m!6416494 () Bool)

(assert (=> b!5390617 m!6416494))

(declare-fun m!6416496 () Bool)

(assert (=> b!5390617 m!6416496))

(declare-fun m!6416498 () Bool)

(assert (=> b!5390617 m!6416498))

(declare-fun m!6416500 () Bool)

(assert (=> b!5390617 m!6416500))

(declare-fun m!6416502 () Bool)

(assert (=> b!5390617 m!6416502))

(declare-fun m!6416504 () Bool)

(assert (=> b!5390617 m!6416504))

(declare-fun m!6416506 () Bool)

(assert (=> b!5390617 m!6416506))

(assert (=> b!5390617 m!6416506))

(declare-fun m!6416508 () Bool)

(assert (=> b!5390617 m!6416508))

(declare-fun m!6416510 () Bool)

(assert (=> b!5390617 m!6416510))

(declare-fun m!6416512 () Bool)

(assert (=> b!5390617 m!6416512))

(declare-fun m!6416514 () Bool)

(assert (=> b!5390617 m!6416514))

(declare-fun m!6416516 () Bool)

(assert (=> b!5390617 m!6416516))

(declare-fun m!6416518 () Bool)

(assert (=> b!5390617 m!6416518))

(declare-fun m!6416520 () Bool)

(assert (=> b!5390617 m!6416520))

(declare-fun m!6416522 () Bool)

(assert (=> b!5390617 m!6416522))

(declare-fun m!6416524 () Bool)

(assert (=> b!5390617 m!6416524))

(declare-fun m!6416526 () Bool)

(assert (=> b!5390617 m!6416526))

(declare-fun m!6416528 () Bool)

(assert (=> b!5390617 m!6416528))

(declare-fun m!6416530 () Bool)

(assert (=> b!5390617 m!6416530))

(assert (=> b!5390617 m!6416506))

(assert (=> b!5390617 m!6416518))

(assert (=> b!5390617 m!6416496))

(declare-fun m!6416532 () Bool)

(assert (=> b!5390617 m!6416532))

(declare-fun m!6416534 () Bool)

(assert (=> b!5390617 m!6416534))

(declare-fun m!6416536 () Bool)

(assert (=> b!5390617 m!6416536))

(declare-fun m!6416538 () Bool)

(assert (=> b!5390617 m!6416538))

(declare-fun m!6416540 () Bool)

(assert (=> b!5390617 m!6416540))

(declare-fun m!6416542 () Bool)

(assert (=> b!5390617 m!6416542))

(declare-fun m!6416544 () Bool)

(assert (=> b!5390618 m!6416544))

(declare-fun m!6416546 () Bool)

(assert (=> b!5390618 m!6416546))

(declare-fun m!6416548 () Bool)

(assert (=> b!5390618 m!6416548))

(declare-fun m!6416550 () Bool)

(assert (=> b!5390618 m!6416550))

(declare-fun m!6416552 () Bool)

(assert (=> b!5390618 m!6416552))

(declare-fun m!6416554 () Bool)

(assert (=> b!5390598 m!6416554))

(declare-fun m!6416556 () Bool)

(assert (=> b!5390604 m!6416556))

(declare-fun m!6416558 () Bool)

(assert (=> b!5390600 m!6416558))

(declare-fun m!6416560 () Bool)

(assert (=> b!5390600 m!6416560))

(declare-fun m!6416562 () Bool)

(assert (=> b!5390600 m!6416562))

(assert (=> b!5390600 m!6416562))

(declare-fun m!6416564 () Bool)

(assert (=> b!5390600 m!6416564))

(declare-fun m!6416566 () Bool)

(assert (=> b!5390600 m!6416566))

(assert (=> b!5390600 m!6416558))

(declare-fun m!6416568 () Bool)

(assert (=> b!5390600 m!6416568))

(declare-fun m!6416570 () Bool)

(assert (=> b!5390608 m!6416570))

(declare-fun m!6416572 () Bool)

(assert (=> b!5390608 m!6416572))

(assert (=> b!5390608 m!6416544))

(declare-fun m!6416574 () Bool)

(assert (=> b!5390608 m!6416574))

(declare-fun m!6416576 () Bool)

(assert (=> b!5390608 m!6416576))

(declare-fun m!6416578 () Bool)

(assert (=> b!5390608 m!6416578))

(declare-fun m!6416580 () Bool)

(assert (=> b!5390608 m!6416580))

(declare-fun m!6416582 () Bool)

(assert (=> b!5390614 m!6416582))

(declare-fun m!6416584 () Bool)

(assert (=> b!5390603 m!6416584))

(declare-fun m!6416586 () Bool)

(assert (=> b!5390595 m!6416586))

(declare-fun m!6416588 () Bool)

(assert (=> b!5390583 m!6416588))

(declare-fun m!6416590 () Bool)

(assert (=> b!5390583 m!6416590))

(declare-fun m!6416592 () Bool)

(assert (=> b!5390583 m!6416592))

(declare-fun m!6416594 () Bool)

(assert (=> b!5390583 m!6416594))

(declare-fun m!6416596 () Bool)

(assert (=> b!5390583 m!6416596))

(declare-fun m!6416598 () Bool)

(assert (=> b!5390609 m!6416598))

(declare-fun m!6416600 () Bool)

(assert (=> b!5390582 m!6416600))

(declare-fun m!6416602 () Bool)

(assert (=> b!5390582 m!6416602))

(declare-fun m!6416604 () Bool)

(assert (=> b!5390582 m!6416604))

(declare-fun m!6416606 () Bool)

(assert (=> b!5390590 m!6416606))

(declare-fun m!6416608 () Bool)

(assert (=> b!5390589 m!6416608))

(declare-fun m!6416610 () Bool)

(assert (=> b!5390589 m!6416610))

(declare-fun m!6416612 () Bool)

(assert (=> b!5390589 m!6416612))

(declare-fun m!6416614 () Bool)

(assert (=> b!5390589 m!6416614))

(assert (=> b!5390589 m!6416614))

(declare-fun m!6416616 () Bool)

(assert (=> b!5390589 m!6416616))

(declare-fun m!6416618 () Bool)

(assert (=> b!5390589 m!6416618))

(declare-fun m!6416620 () Bool)

(assert (=> b!5390589 m!6416620))

(declare-fun m!6416622 () Bool)

(assert (=> b!5390589 m!6416622))

(declare-fun m!6416624 () Bool)

(assert (=> bm!385836 m!6416624))

(declare-fun m!6416626 () Bool)

(assert (=> b!5390607 m!6416626))

(declare-fun m!6416628 () Bool)

(assert (=> b!5390607 m!6416628))

(declare-fun m!6416630 () Bool)

(assert (=> b!5390610 m!6416630))

(check-sat (not b!5390617) (not b!5390582) tp_is_empty!39523 (not b!5390599) (not b!5390589) (not b!5390585) (not b!5390603) (not b!5390611) (not b!5390605) (not bm!385836) (not b!5390592) (not bm!385837) (not b!5390601) (not b!5390608) (not b!5390614) (not b!5390607) (not b!5390583) (not b!5390600) (not b!5390612) (not b!5390621) (not b!5390594) (not b!5390598) (not b!5390610) (not b!5390595) (not b!5390619) (not start!566470) (not bm!385838) (not b!5390587) (not b!5390588) (not b!5390586) (not b!5390580) (not b!5390615) (not setNonEmpty!35015) (not b!5390590) (not bm!385839) (not b!5390609) (not b!5390618) (not b!5390616) (not b!5390604))
(check-sat)
