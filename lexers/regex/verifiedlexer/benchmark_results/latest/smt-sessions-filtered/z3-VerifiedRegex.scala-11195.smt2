; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!584334 () Bool)

(assert start!584334)

(declare-fun b!5650362 () Bool)

(assert (=> b!5650362 true))

(assert (=> b!5650362 true))

(declare-fun lambda!303884 () Int)

(declare-fun lambda!303883 () Int)

(assert (=> b!5650362 (not (= lambda!303884 lambda!303883))))

(assert (=> b!5650362 true))

(assert (=> b!5650362 true))

(declare-fun b!5650370 () Bool)

(assert (=> b!5650370 true))

(declare-fun bs!1314421 () Bool)

(declare-fun b!5650388 () Bool)

(assert (= bs!1314421 (and b!5650388 b!5650362)))

(declare-datatypes ((C!31544 0))(
  ( (C!31545 (val!25474 Int)) )
))
(declare-datatypes ((Regex!15637 0))(
  ( (ElementMatch!15637 (c!993087 C!31544)) (Concat!24482 (regOne!31786 Regex!15637) (regTwo!31786 Regex!15637)) (EmptyExpr!15637) (Star!15637 (reg!15966 Regex!15637)) (EmptyLang!15637) (Union!15637 (regOne!31787 Regex!15637) (regTwo!31787 Regex!15637)) )
))
(declare-fun r!7292 () Regex!15637)

(declare-fun lt!2265403 () Regex!15637)

(declare-fun lambda!303886 () Int)

(assert (=> bs!1314421 (= (and (= (regOne!31786 (regOne!31786 r!7292)) (regOne!31786 r!7292)) (= lt!2265403 (regTwo!31786 r!7292))) (= lambda!303886 lambda!303883))))

(assert (=> bs!1314421 (not (= lambda!303886 lambda!303884))))

(assert (=> b!5650388 true))

(assert (=> b!5650388 true))

(assert (=> b!5650388 true))

(declare-fun lambda!303887 () Int)

(assert (=> bs!1314421 (not (= lambda!303887 lambda!303883))))

(assert (=> bs!1314421 (= (and (= (regOne!31786 (regOne!31786 r!7292)) (regOne!31786 r!7292)) (= lt!2265403 (regTwo!31786 r!7292))) (= lambda!303887 lambda!303884))))

(assert (=> b!5650388 (not (= lambda!303887 lambda!303886))))

(assert (=> b!5650388 true))

(assert (=> b!5650388 true))

(assert (=> b!5650388 true))

(declare-fun lambda!303888 () Int)

(declare-fun lt!2265436 () Regex!15637)

(assert (=> bs!1314421 (= (and (= (regTwo!31786 (regOne!31786 r!7292)) (regOne!31786 r!7292)) (= lt!2265436 (regTwo!31786 r!7292))) (= lambda!303888 lambda!303883))))

(assert (=> bs!1314421 (not (= lambda!303888 lambda!303884))))

(assert (=> b!5650388 (= (and (= (regTwo!31786 (regOne!31786 r!7292)) (regOne!31786 (regOne!31786 r!7292))) (= lt!2265436 lt!2265403)) (= lambda!303888 lambda!303886))))

(assert (=> b!5650388 (not (= lambda!303888 lambda!303887))))

(assert (=> b!5650388 true))

(assert (=> b!5650388 true))

(assert (=> b!5650388 true))

(declare-fun lambda!303889 () Int)

(assert (=> b!5650388 (= (and (= (regTwo!31786 (regOne!31786 r!7292)) (regOne!31786 (regOne!31786 r!7292))) (= lt!2265436 lt!2265403)) (= lambda!303889 lambda!303887))))

(assert (=> b!5650388 (not (= lambda!303889 lambda!303886))))

(assert (=> b!5650388 (not (= lambda!303889 lambda!303888))))

(assert (=> bs!1314421 (not (= lambda!303889 lambda!303883))))

(assert (=> bs!1314421 (= (and (= (regTwo!31786 (regOne!31786 r!7292)) (regOne!31786 r!7292)) (= lt!2265436 (regTwo!31786 r!7292))) (= lambda!303889 lambda!303884))))

(assert (=> b!5650388 true))

(assert (=> b!5650388 true))

(assert (=> b!5650388 true))

(declare-fun b!5650360 () Bool)

(declare-fun e!3480573 () Bool)

(declare-fun e!3480579 () Bool)

(assert (=> b!5650360 (= e!3480573 (not e!3480579))))

(declare-fun res!2390268 () Bool)

(assert (=> b!5650360 (=> res!2390268 e!3480579)))

(declare-datatypes ((List!63210 0))(
  ( (Nil!63086) (Cons!63086 (h!69534 Regex!15637) (t!376510 List!63210)) )
))
(declare-datatypes ((Context!10042 0))(
  ( (Context!10043 (exprs!5521 List!63210)) )
))
(declare-datatypes ((List!63211 0))(
  ( (Nil!63087) (Cons!63087 (h!69535 Context!10042) (t!376511 List!63211)) )
))
(declare-fun zl!343 () List!63211)

(get-info :version)

(assert (=> b!5650360 (= res!2390268 (not ((_ is Cons!63087) zl!343)))))

(declare-fun lt!2265424 () Bool)

(declare-datatypes ((List!63212 0))(
  ( (Nil!63088) (Cons!63088 (h!69536 C!31544) (t!376512 List!63212)) )
))
(declare-fun s!2326 () List!63212)

(declare-fun matchRSpec!2740 (Regex!15637 List!63212) Bool)

(assert (=> b!5650360 (= lt!2265424 (matchRSpec!2740 r!7292 s!2326))))

(declare-fun matchR!7822 (Regex!15637 List!63212) Bool)

(assert (=> b!5650360 (= lt!2265424 (matchR!7822 r!7292 s!2326))))

(declare-datatypes ((Unit!156080 0))(
  ( (Unit!156081) )
))
(declare-fun lt!2265398 () Unit!156080)

(declare-fun mainMatchTheorem!2740 (Regex!15637 List!63212) Unit!156080)

(assert (=> b!5650360 (= lt!2265398 (mainMatchTheorem!2740 r!7292 s!2326))))

(declare-fun b!5650361 () Bool)

(declare-fun e!3480566 () Bool)

(declare-fun tp_is_empty!40527 () Bool)

(assert (=> b!5650361 (= e!3480566 tp_is_empty!40527)))

(declare-fun e!3480564 () Bool)

(assert (=> b!5650362 (= e!3480579 e!3480564)))

(declare-fun res!2390266 () Bool)

(assert (=> b!5650362 (=> res!2390266 e!3480564)))

(declare-fun lt!2265400 () Bool)

(assert (=> b!5650362 (= res!2390266 (or (not (= lt!2265424 lt!2265400)) ((_ is Nil!63088) s!2326)))))

(declare-fun Exists!2737 (Int) Bool)

(assert (=> b!5650362 (= (Exists!2737 lambda!303883) (Exists!2737 lambda!303884))))

(declare-fun lt!2265395 () Unit!156080)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1366 (Regex!15637 Regex!15637 List!63212) Unit!156080)

(assert (=> b!5650362 (= lt!2265395 (lemmaExistCutMatchRandMatchRSpecEquivalent!1366 (regOne!31786 r!7292) (regTwo!31786 r!7292) s!2326))))

(assert (=> b!5650362 (= lt!2265400 (Exists!2737 lambda!303883))))

(declare-datatypes ((tuple2!65468 0))(
  ( (tuple2!65469 (_1!36037 List!63212) (_2!36037 List!63212)) )
))
(declare-datatypes ((Option!15646 0))(
  ( (None!15645) (Some!15645 (v!51692 tuple2!65468)) )
))
(declare-fun isDefined!12349 (Option!15646) Bool)

(declare-fun findConcatSeparation!2060 (Regex!15637 Regex!15637 List!63212 List!63212 List!63212) Option!15646)

(assert (=> b!5650362 (= lt!2265400 (isDefined!12349 (findConcatSeparation!2060 (regOne!31786 r!7292) (regTwo!31786 r!7292) Nil!63088 s!2326 s!2326)))))

(declare-fun lt!2265426 () Unit!156080)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1824 (Regex!15637 Regex!15637 List!63212) Unit!156080)

(assert (=> b!5650362 (= lt!2265426 (lemmaFindConcatSeparationEquivalentToExists!1824 (regOne!31786 r!7292) (regTwo!31786 r!7292) s!2326))))

(declare-fun b!5650363 () Bool)

(declare-fun e!3480570 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2265422 () (InoxSet Context!10042))

(declare-fun matchZipper!1775 ((InoxSet Context!10042) List!63212) Bool)

(declare-fun derivationStepZipper!1724 ((InoxSet Context!10042) C!31544) (InoxSet Context!10042))

(assert (=> b!5650363 (= e!3480570 (not (matchZipper!1775 (derivationStepZipper!1724 lt!2265422 (h!69536 s!2326)) (t!376512 s!2326))))))

(declare-fun b!5650364 () Bool)

(declare-fun e!3480578 () Bool)

(declare-fun e!3480581 () Bool)

(assert (=> b!5650364 (= e!3480578 e!3480581)))

(declare-fun res!2390263 () Bool)

(assert (=> b!5650364 (=> res!2390263 e!3480581)))

(declare-fun lt!2265402 () (InoxSet Context!10042))

(declare-fun lt!2265428 () (InoxSet Context!10042))

(assert (=> b!5650364 (= res!2390263 (not (= lt!2265402 lt!2265428)))))

(declare-fun lt!2265431 () (InoxSet Context!10042))

(declare-fun lt!2265432 () (InoxSet Context!10042))

(assert (=> b!5650364 (= lt!2265428 ((_ map or) lt!2265431 lt!2265432))))

(declare-fun lt!2265413 () Context!10042)

(declare-fun derivationStepZipperDown!979 (Regex!15637 Context!10042 C!31544) (InoxSet Context!10042))

(assert (=> b!5650364 (= lt!2265432 (derivationStepZipperDown!979 (regTwo!31786 (regOne!31786 r!7292)) lt!2265413 (h!69536 s!2326)))))

(declare-fun lt!2265396 () Context!10042)

(assert (=> b!5650364 (= lt!2265431 (derivationStepZipperDown!979 (regOne!31786 (regOne!31786 r!7292)) lt!2265396 (h!69536 s!2326)))))

(declare-fun lt!2265408 () List!63210)

(assert (=> b!5650364 (= lt!2265396 (Context!10043 lt!2265408))))

(assert (=> b!5650364 (= lt!2265408 (Cons!63086 (regTwo!31786 (regOne!31786 r!7292)) (t!376510 (exprs!5521 (h!69535 zl!343)))))))

(declare-fun b!5650365 () Bool)

(declare-fun res!2390244 () Bool)

(assert (=> b!5650365 (=> res!2390244 e!3480578)))

(declare-fun nullable!5669 (Regex!15637) Bool)

(assert (=> b!5650365 (= res!2390244 (not (nullable!5669 (regOne!31786 (regOne!31786 r!7292)))))))

(declare-fun b!5650366 () Bool)

(declare-fun res!2390248 () Bool)

(assert (=> b!5650366 (=> res!2390248 e!3480579)))

(declare-fun isEmpty!34929 (List!63211) Bool)

(assert (=> b!5650366 (= res!2390248 (not (isEmpty!34929 (t!376511 zl!343))))))

(declare-fun b!5650367 () Bool)

(declare-fun res!2390259 () Bool)

(assert (=> b!5650367 (=> res!2390259 e!3480579)))

(assert (=> b!5650367 (= res!2390259 (or ((_ is EmptyExpr!15637) r!7292) ((_ is EmptyLang!15637) r!7292) ((_ is ElementMatch!15637) r!7292) ((_ is Union!15637) r!7292) (not ((_ is Concat!24482) r!7292))))))

(declare-fun b!5650368 () Bool)

(declare-fun e!3480574 () Bool)

(declare-fun lt!2265442 () (InoxSet Context!10042))

(assert (=> b!5650368 (= e!3480574 (matchZipper!1775 lt!2265442 (t!376512 s!2326)))))

(declare-fun b!5650369 () Bool)

(declare-fun res!2390258 () Bool)

(declare-fun e!3480580 () Bool)

(assert (=> b!5650369 (=> res!2390258 e!3480580)))

(declare-fun lt!2265441 () Context!10042)

(declare-fun contextDepthTotal!222 (Context!10042) Int)

(assert (=> b!5650369 (= res!2390258 (>= (contextDepthTotal!222 lt!2265441) (contextDepthTotal!222 (h!69535 zl!343))))))

(assert (=> b!5650370 (= e!3480564 e!3480578)))

(declare-fun res!2390262 () Bool)

(assert (=> b!5650370 (=> res!2390262 e!3480578)))

(assert (=> b!5650370 (= res!2390262 (or (and ((_ is ElementMatch!15637) (regOne!31786 r!7292)) (= (c!993087 (regOne!31786 r!7292)) (h!69536 s!2326))) ((_ is Union!15637) (regOne!31786 r!7292)) (not ((_ is Concat!24482) (regOne!31786 r!7292)))))))

(declare-fun lt!2265410 () Unit!156080)

(declare-fun e!3480568 () Unit!156080)

(assert (=> b!5650370 (= lt!2265410 e!3480568)))

(declare-fun c!993086 () Bool)

(assert (=> b!5650370 (= c!993086 (nullable!5669 (h!69534 (exprs!5521 (h!69535 zl!343)))))))

(declare-fun lambda!303885 () Int)

(declare-fun z!1189 () (InoxSet Context!10042))

(declare-fun flatMap!1250 ((InoxSet Context!10042) Int) (InoxSet Context!10042))

(declare-fun derivationStepZipperUp!905 (Context!10042 C!31544) (InoxSet Context!10042))

(assert (=> b!5650370 (= (flatMap!1250 z!1189 lambda!303885) (derivationStepZipperUp!905 (h!69535 zl!343) (h!69536 s!2326)))))

(declare-fun lt!2265417 () Unit!156080)

(declare-fun lemmaFlatMapOnSingletonSet!782 ((InoxSet Context!10042) Context!10042 Int) Unit!156080)

(assert (=> b!5650370 (= lt!2265417 (lemmaFlatMapOnSingletonSet!782 z!1189 (h!69535 zl!343) lambda!303885))))

(declare-fun lt!2265414 () (InoxSet Context!10042))

(assert (=> b!5650370 (= lt!2265414 (derivationStepZipperUp!905 lt!2265413 (h!69536 s!2326)))))

(assert (=> b!5650370 (= lt!2265402 (derivationStepZipperDown!979 (h!69534 (exprs!5521 (h!69535 zl!343))) lt!2265413 (h!69536 s!2326)))))

(assert (=> b!5650370 (= lt!2265413 (Context!10043 (t!376510 (exprs!5521 (h!69535 zl!343)))))))

(declare-fun lt!2265409 () (InoxSet Context!10042))

(assert (=> b!5650370 (= lt!2265409 (derivationStepZipperUp!905 (Context!10043 (Cons!63086 (h!69534 (exprs!5521 (h!69535 zl!343))) (t!376510 (exprs!5521 (h!69535 zl!343))))) (h!69536 s!2326)))))

(declare-fun b!5650371 () Bool)

(declare-fun res!2390267 () Bool)

(declare-fun e!3480562 () Bool)

(assert (=> b!5650371 (=> res!2390267 e!3480562)))

(assert (=> b!5650371 (= res!2390267 (not (= lt!2265424 (matchR!7822 (Concat!24482 (regOne!31786 r!7292) (regTwo!31786 r!7292)) s!2326))))))

(declare-fun b!5650372 () Bool)

(declare-fun e!3480569 () Bool)

(declare-fun e!3480576 () Bool)

(assert (=> b!5650372 (= e!3480569 e!3480576)))

(declare-fun res!2390255 () Bool)

(assert (=> b!5650372 (=> res!2390255 e!3480576)))

(declare-fun lt!2265440 () (InoxSet Context!10042))

(declare-fun lt!2265412 () (InoxSet Context!10042))

(assert (=> b!5650372 (= res!2390255 (not (= lt!2265440 lt!2265412)))))

(assert (=> b!5650372 (= lt!2265412 ((_ map or) lt!2265431 lt!2265442))))

(assert (=> b!5650372 (= lt!2265442 (derivationStepZipperUp!905 lt!2265396 (h!69536 s!2326)))))

(declare-fun lt!2265429 () (InoxSet Context!10042))

(assert (=> b!5650372 (= (flatMap!1250 lt!2265429 lambda!303885) (derivationStepZipperUp!905 lt!2265441 (h!69536 s!2326)))))

(declare-fun lt!2265405 () Unit!156080)

(assert (=> b!5650372 (= lt!2265405 (lemmaFlatMapOnSingletonSet!782 lt!2265429 lt!2265441 lambda!303885))))

(declare-fun lt!2265435 () (InoxSet Context!10042))

(assert (=> b!5650372 (= lt!2265435 (derivationStepZipperUp!905 lt!2265441 (h!69536 s!2326)))))

(assert (=> b!5650372 (= lt!2265440 (derivationStepZipper!1724 lt!2265429 (h!69536 s!2326)))))

(assert (=> b!5650372 (= lt!2265422 (store ((as const (Array Context!10042 Bool)) false) lt!2265396 true))))

(assert (=> b!5650372 (= lt!2265429 (store ((as const (Array Context!10042 Bool)) false) lt!2265441 true))))

(declare-fun lt!2265438 () List!63210)

(assert (=> b!5650372 (= lt!2265441 (Context!10043 lt!2265438))))

(assert (=> b!5650372 (= lt!2265438 (Cons!63086 (regOne!31786 (regOne!31786 r!7292)) lt!2265408))))

(declare-fun b!5650373 () Bool)

(declare-fun e!3480577 () Bool)

(assert (=> b!5650373 (= e!3480577 (not (matchZipper!1775 lt!2265432 (t!376512 s!2326))))))

(declare-fun b!5650374 () Bool)

(declare-fun Unit!156082 () Unit!156080)

(assert (=> b!5650374 (= e!3480568 Unit!156082)))

(declare-fun tp!1565664 () Bool)

(declare-fun e!3480571 () Bool)

(declare-fun b!5650375 () Bool)

(declare-fun e!3480563 () Bool)

(declare-fun inv!82339 (Context!10042) Bool)

(assert (=> b!5650375 (= e!3480571 (and (inv!82339 (h!69535 zl!343)) e!3480563 tp!1565664))))

(declare-fun b!5650376 () Bool)

(declare-fun tp!1565666 () Bool)

(assert (=> b!5650376 (= e!3480563 tp!1565666)))

(declare-fun b!5650377 () Bool)

(declare-fun e!3480572 () Bool)

(declare-fun tp!1565667 () Bool)

(assert (=> b!5650377 (= e!3480572 (and tp_is_empty!40527 tp!1565667))))

(declare-fun b!5650378 () Bool)

(declare-fun e!3480565 () Bool)

(assert (=> b!5650378 (= e!3480580 e!3480565)))

(declare-fun res!2390247 () Bool)

(assert (=> b!5650378 (=> res!2390247 e!3480565)))

(declare-fun lt!2265423 () List!63211)

(declare-fun zipperDepthTotal!246 (List!63211) Int)

(assert (=> b!5650378 (= res!2390247 (>= (zipperDepthTotal!246 lt!2265423) (zipperDepthTotal!246 zl!343)))))

(assert (=> b!5650378 (= lt!2265423 (Cons!63087 lt!2265441 Nil!63087))))

(declare-fun lt!2265427 () Regex!15637)

(declare-fun b!5650379 () Bool)

(assert (=> b!5650379 (= e!3480562 (= lt!2265424 (matchR!7822 (Concat!24482 lt!2265427 (regTwo!31786 r!7292)) s!2326)))))

(declare-fun setNonEmpty!37748 () Bool)

(declare-fun setRes!37748 () Bool)

(declare-fun setElem!37748 () Context!10042)

(declare-fun tp!1565673 () Bool)

(declare-fun e!3480575 () Bool)

(assert (=> setNonEmpty!37748 (= setRes!37748 (and tp!1565673 (inv!82339 setElem!37748) e!3480575))))

(declare-fun setRest!37748 () (InoxSet Context!10042))

(assert (=> setNonEmpty!37748 (= z!1189 ((_ map or) (store ((as const (Array Context!10042 Bool)) false) setElem!37748 true) setRest!37748))))

(declare-fun b!5650380 () Bool)

(declare-fun e!3480567 () Bool)

(assert (=> b!5650380 (= e!3480576 e!3480567)))

(declare-fun res!2390252 () Bool)

(assert (=> b!5650380 (=> res!2390252 e!3480567)))

(assert (=> b!5650380 (= res!2390252 e!3480570)))

(declare-fun res!2390256 () Bool)

(assert (=> b!5650380 (=> (not res!2390256) (not e!3480570))))

(declare-fun lt!2265406 () Bool)

(assert (=> b!5650380 (= res!2390256 (not (= lt!2265406 (matchZipper!1775 lt!2265440 (t!376512 s!2326)))))))

(assert (=> b!5650380 (= (matchZipper!1775 lt!2265412 (t!376512 s!2326)) e!3480574)))

(declare-fun res!2390250 () Bool)

(assert (=> b!5650380 (=> res!2390250 e!3480574)))

(declare-fun lt!2265434 () Bool)

(assert (=> b!5650380 (= res!2390250 lt!2265434)))

(declare-fun lt!2265420 () Unit!156080)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!662 ((InoxSet Context!10042) (InoxSet Context!10042) List!63212) Unit!156080)

(assert (=> b!5650380 (= lt!2265420 (lemmaZipperConcatMatchesSameAsBothZippers!662 lt!2265431 lt!2265442 (t!376512 s!2326)))))

(assert (=> b!5650380 (= (flatMap!1250 lt!2265422 lambda!303885) (derivationStepZipperUp!905 lt!2265396 (h!69536 s!2326)))))

(declare-fun lt!2265416 () Unit!156080)

(assert (=> b!5650380 (= lt!2265416 (lemmaFlatMapOnSingletonSet!782 lt!2265422 lt!2265396 lambda!303885))))

(declare-fun b!5650381 () Bool)

(declare-fun res!2390265 () Bool)

(assert (=> b!5650381 (=> res!2390265 e!3480579)))

(declare-fun generalisedConcat!1252 (List!63210) Regex!15637)

(assert (=> b!5650381 (= res!2390265 (not (= r!7292 (generalisedConcat!1252 (exprs!5521 (h!69535 zl!343))))))))

(declare-fun setIsEmpty!37748 () Bool)

(assert (=> setIsEmpty!37748 setRes!37748))

(declare-fun b!5650382 () Bool)

(assert (=> b!5650382 (= e!3480581 e!3480569)))

(declare-fun res!2390249 () Bool)

(assert (=> b!5650382 (=> res!2390249 e!3480569)))

(assert (=> b!5650382 (= res!2390249 e!3480577)))

(declare-fun res!2390260 () Bool)

(assert (=> b!5650382 (=> (not res!2390260) (not e!3480577))))

(assert (=> b!5650382 (= res!2390260 (not (= lt!2265406 lt!2265434)))))

(assert (=> b!5650382 (= lt!2265406 (matchZipper!1775 lt!2265402 (t!376512 s!2326)))))

(declare-fun e!3480561 () Bool)

(assert (=> b!5650382 (= (matchZipper!1775 lt!2265428 (t!376512 s!2326)) e!3480561)))

(declare-fun res!2390243 () Bool)

(assert (=> b!5650382 (=> res!2390243 e!3480561)))

(assert (=> b!5650382 (= res!2390243 lt!2265434)))

(assert (=> b!5650382 (= lt!2265434 (matchZipper!1775 lt!2265431 (t!376512 s!2326)))))

(declare-fun lt!2265411 () Unit!156080)

(assert (=> b!5650382 (= lt!2265411 (lemmaZipperConcatMatchesSameAsBothZippers!662 lt!2265431 lt!2265432 (t!376512 s!2326)))))

(declare-fun b!5650383 () Bool)

(declare-fun res!2390264 () Bool)

(assert (=> b!5650383 (=> res!2390264 e!3480579)))

(assert (=> b!5650383 (= res!2390264 (not ((_ is Cons!63086) (exprs!5521 (h!69535 zl!343)))))))

(declare-fun b!5650384 () Bool)

(declare-fun Unit!156083 () Unit!156080)

(assert (=> b!5650384 (= e!3480568 Unit!156083)))

(declare-fun lt!2265430 () Unit!156080)

(assert (=> b!5650384 (= lt!2265430 (lemmaZipperConcatMatchesSameAsBothZippers!662 lt!2265402 lt!2265414 (t!376512 s!2326)))))

(declare-fun res!2390261 () Bool)

(assert (=> b!5650384 (= res!2390261 (matchZipper!1775 lt!2265402 (t!376512 s!2326)))))

(declare-fun e!3480582 () Bool)

(assert (=> b!5650384 (=> res!2390261 e!3480582)))

(assert (=> b!5650384 (= (matchZipper!1775 ((_ map or) lt!2265402 lt!2265414) (t!376512 s!2326)) e!3480582)))

(declare-fun b!5650385 () Bool)

(assert (=> b!5650385 (= e!3480561 (matchZipper!1775 lt!2265432 (t!376512 s!2326)))))

(declare-fun b!5650386 () Bool)

(declare-fun res!2390242 () Bool)

(assert (=> b!5650386 (=> (not res!2390242) (not e!3480573))))

(declare-fun unfocusZipper!1379 (List!63211) Regex!15637)

(assert (=> b!5650386 (= res!2390242 (= r!7292 (unfocusZipper!1379 zl!343)))))

(declare-fun b!5650387 () Bool)

(declare-fun res!2390241 () Bool)

(assert (=> b!5650387 (=> res!2390241 e!3480565)))

(declare-fun zipperDepth!214 (List!63211) Int)

(assert (=> b!5650387 (= res!2390241 (> (zipperDepth!214 lt!2265423) (zipperDepth!214 zl!343)))))

(assert (=> b!5650388 (= e!3480565 e!3480562)))

(declare-fun res!2390251 () Bool)

(assert (=> b!5650388 (=> res!2390251 e!3480562)))

(declare-fun lt!2265407 () Bool)

(declare-fun lt!2265425 () Bool)

(declare-fun lt!2265394 () Bool)

(declare-fun lt!2265419 () Bool)

(declare-fun lt!2265401 () Bool)

(assert (=> b!5650388 (= res!2390251 (or (not (= lt!2265419 (or lt!2265401 lt!2265394))) (not (= lt!2265419 (or lt!2265425 lt!2265407)))))))

(assert (=> b!5650388 (= lt!2265419 (matchZipper!1775 z!1189 s!2326))))

(assert (=> b!5650388 (= (Exists!2737 lambda!303888) (Exists!2737 lambda!303889))))

(declare-fun lt!2265404 () Unit!156080)

(assert (=> b!5650388 (= lt!2265404 (lemmaExistCutMatchRandMatchRSpecEquivalent!1366 (regTwo!31786 (regOne!31786 r!7292)) lt!2265436 s!2326))))

(assert (=> b!5650388 (= (isDefined!12349 (findConcatSeparation!2060 (regTwo!31786 (regOne!31786 r!7292)) lt!2265436 Nil!63088 s!2326 s!2326)) (Exists!2737 lambda!303888))))

(declare-fun lt!2265437 () Unit!156080)

(assert (=> b!5650388 (= lt!2265437 (lemmaFindConcatSeparationEquivalentToExists!1824 (regTwo!31786 (regOne!31786 r!7292)) lt!2265436 s!2326))))

(assert (=> b!5650388 (= lt!2265436 (generalisedConcat!1252 (t!376510 (exprs!5521 (h!69535 zl!343)))))))

(assert (=> b!5650388 (= lt!2265407 (matchRSpec!2740 lt!2265403 s!2326))))

(declare-fun lt!2265433 () Unit!156080)

(assert (=> b!5650388 (= lt!2265433 (mainMatchTheorem!2740 lt!2265403 s!2326))))

(assert (=> b!5650388 (= (Exists!2737 lambda!303886) (Exists!2737 lambda!303887))))

(declare-fun lt!2265421 () Unit!156080)

(assert (=> b!5650388 (= lt!2265421 (lemmaExistCutMatchRandMatchRSpecEquivalent!1366 (regOne!31786 (regOne!31786 r!7292)) lt!2265403 s!2326))))

(assert (=> b!5650388 (= (isDefined!12349 (findConcatSeparation!2060 (regOne!31786 (regOne!31786 r!7292)) lt!2265403 Nil!63088 s!2326 s!2326)) (Exists!2737 lambda!303886))))

(declare-fun lt!2265397 () Unit!156080)

(assert (=> b!5650388 (= lt!2265397 (lemmaFindConcatSeparationEquivalentToExists!1824 (regOne!31786 (regOne!31786 r!7292)) lt!2265403 s!2326))))

(declare-fun lt!2265415 () Regex!15637)

(assert (=> b!5650388 (= lt!2265425 (matchRSpec!2740 lt!2265415 s!2326))))

(declare-fun lt!2265418 () Unit!156080)

(assert (=> b!5650388 (= lt!2265418 (mainMatchTheorem!2740 lt!2265415 s!2326))))

(assert (=> b!5650388 (= lt!2265407 lt!2265394)))

(assert (=> b!5650388 (= lt!2265394 (matchZipper!1775 lt!2265422 s!2326))))

(assert (=> b!5650388 (= lt!2265407 (matchR!7822 lt!2265403 s!2326))))

(declare-fun lt!2265439 () Unit!156080)

(declare-fun theoremZipperRegexEquiv!633 ((InoxSet Context!10042) List!63211 Regex!15637 List!63212) Unit!156080)

(assert (=> b!5650388 (= lt!2265439 (theoremZipperRegexEquiv!633 lt!2265422 (Cons!63087 lt!2265396 Nil!63087) lt!2265403 s!2326))))

(assert (=> b!5650388 (= lt!2265403 (generalisedConcat!1252 lt!2265408))))

(assert (=> b!5650388 (= lt!2265425 lt!2265401)))

(assert (=> b!5650388 (= lt!2265401 (matchZipper!1775 lt!2265429 s!2326))))

(assert (=> b!5650388 (= lt!2265425 (matchR!7822 lt!2265415 s!2326))))

(declare-fun lt!2265399 () Unit!156080)

(assert (=> b!5650388 (= lt!2265399 (theoremZipperRegexEquiv!633 lt!2265429 lt!2265423 lt!2265415 s!2326))))

(assert (=> b!5650388 (= lt!2265415 (generalisedConcat!1252 lt!2265438))))

(declare-fun b!5650389 () Bool)

(declare-fun tp!1565669 () Bool)

(assert (=> b!5650389 (= e!3480566 tp!1565669)))

(declare-fun b!5650390 () Bool)

(declare-fun res!2390257 () Bool)

(assert (=> b!5650390 (=> (not res!2390257) (not e!3480573))))

(declare-fun toList!9421 ((InoxSet Context!10042)) List!63211)

(assert (=> b!5650390 (= res!2390257 (= (toList!9421 z!1189) zl!343))))

(declare-fun b!5650391 () Bool)

(declare-fun tp!1565672 () Bool)

(assert (=> b!5650391 (= e!3480575 tp!1565672)))

(declare-fun b!5650392 () Bool)

(assert (=> b!5650392 (= e!3480567 e!3480580)))

(declare-fun res!2390253 () Bool)

(assert (=> b!5650392 (=> res!2390253 e!3480580)))

(assert (=> b!5650392 (= res!2390253 (not (= (exprs!5521 (h!69535 zl!343)) (Cons!63086 lt!2265427 (t!376510 (exprs!5521 (h!69535 zl!343)))))))))

(assert (=> b!5650392 (= lt!2265427 (Concat!24482 (regOne!31786 (regOne!31786 r!7292)) (regTwo!31786 (regOne!31786 r!7292))))))

(declare-fun b!5650393 () Bool)

(declare-fun tp!1565671 () Bool)

(declare-fun tp!1565665 () Bool)

(assert (=> b!5650393 (= e!3480566 (and tp!1565671 tp!1565665))))

(declare-fun b!5650394 () Bool)

(declare-fun res!2390245 () Bool)

(assert (=> b!5650394 (=> res!2390245 e!3480564)))

(declare-fun isEmpty!34930 (List!63210) Bool)

(assert (=> b!5650394 (= res!2390245 (isEmpty!34930 (t!376510 (exprs!5521 (h!69535 zl!343)))))))

(declare-fun res!2390246 () Bool)

(assert (=> start!584334 (=> (not res!2390246) (not e!3480573))))

(declare-fun validRegex!7373 (Regex!15637) Bool)

(assert (=> start!584334 (= res!2390246 (validRegex!7373 r!7292))))

(assert (=> start!584334 e!3480573))

(assert (=> start!584334 e!3480566))

(declare-fun condSetEmpty!37748 () Bool)

(assert (=> start!584334 (= condSetEmpty!37748 (= z!1189 ((as const (Array Context!10042 Bool)) false)))))

(assert (=> start!584334 setRes!37748))

(assert (=> start!584334 e!3480571))

(assert (=> start!584334 e!3480572))

(declare-fun b!5650395 () Bool)

(declare-fun tp!1565668 () Bool)

(declare-fun tp!1565670 () Bool)

(assert (=> b!5650395 (= e!3480566 (and tp!1565668 tp!1565670))))

(declare-fun b!5650396 () Bool)

(declare-fun res!2390254 () Bool)

(assert (=> b!5650396 (=> res!2390254 e!3480579)))

(declare-fun generalisedUnion!1500 (List!63210) Regex!15637)

(declare-fun unfocusZipperList!1065 (List!63211) List!63210)

(assert (=> b!5650396 (= res!2390254 (not (= r!7292 (generalisedUnion!1500 (unfocusZipperList!1065 zl!343)))))))

(declare-fun b!5650397 () Bool)

(assert (=> b!5650397 (= e!3480582 (matchZipper!1775 lt!2265414 (t!376512 s!2326)))))

(assert (= (and start!584334 res!2390246) b!5650390))

(assert (= (and b!5650390 res!2390257) b!5650386))

(assert (= (and b!5650386 res!2390242) b!5650360))

(assert (= (and b!5650360 (not res!2390268)) b!5650366))

(assert (= (and b!5650366 (not res!2390248)) b!5650381))

(assert (= (and b!5650381 (not res!2390265)) b!5650383))

(assert (= (and b!5650383 (not res!2390264)) b!5650396))

(assert (= (and b!5650396 (not res!2390254)) b!5650367))

(assert (= (and b!5650367 (not res!2390259)) b!5650362))

(assert (= (and b!5650362 (not res!2390266)) b!5650394))

(assert (= (and b!5650394 (not res!2390245)) b!5650370))

(assert (= (and b!5650370 c!993086) b!5650384))

(assert (= (and b!5650370 (not c!993086)) b!5650374))

(assert (= (and b!5650384 (not res!2390261)) b!5650397))

(assert (= (and b!5650370 (not res!2390262)) b!5650365))

(assert (= (and b!5650365 (not res!2390244)) b!5650364))

(assert (= (and b!5650364 (not res!2390263)) b!5650382))

(assert (= (and b!5650382 (not res!2390243)) b!5650385))

(assert (= (and b!5650382 res!2390260) b!5650373))

(assert (= (and b!5650382 (not res!2390249)) b!5650372))

(assert (= (and b!5650372 (not res!2390255)) b!5650380))

(assert (= (and b!5650380 (not res!2390250)) b!5650368))

(assert (= (and b!5650380 res!2390256) b!5650363))

(assert (= (and b!5650380 (not res!2390252)) b!5650392))

(assert (= (and b!5650392 (not res!2390253)) b!5650369))

(assert (= (and b!5650369 (not res!2390258)) b!5650378))

(assert (= (and b!5650378 (not res!2390247)) b!5650387))

(assert (= (and b!5650387 (not res!2390241)) b!5650388))

(assert (= (and b!5650388 (not res!2390251)) b!5650371))

(assert (= (and b!5650371 (not res!2390267)) b!5650379))

(assert (= (and start!584334 ((_ is ElementMatch!15637) r!7292)) b!5650361))

(assert (= (and start!584334 ((_ is Concat!24482) r!7292)) b!5650395))

(assert (= (and start!584334 ((_ is Star!15637) r!7292)) b!5650389))

(assert (= (and start!584334 ((_ is Union!15637) r!7292)) b!5650393))

(assert (= (and start!584334 condSetEmpty!37748) setIsEmpty!37748))

(assert (= (and start!584334 (not condSetEmpty!37748)) setNonEmpty!37748))

(assert (= setNonEmpty!37748 b!5650391))

(assert (= b!5650375 b!5650376))

(assert (= (and start!584334 ((_ is Cons!63087) zl!343)) b!5650375))

(assert (= (and start!584334 ((_ is Cons!63088) s!2326)) b!5650377))

(declare-fun m!6617700 () Bool)

(assert (=> b!5650394 m!6617700))

(declare-fun m!6617702 () Bool)

(assert (=> b!5650380 m!6617702))

(declare-fun m!6617704 () Bool)

(assert (=> b!5650380 m!6617704))

(declare-fun m!6617706 () Bool)

(assert (=> b!5650380 m!6617706))

(declare-fun m!6617708 () Bool)

(assert (=> b!5650380 m!6617708))

(declare-fun m!6617710 () Bool)

(assert (=> b!5650380 m!6617710))

(declare-fun m!6617712 () Bool)

(assert (=> b!5650380 m!6617712))

(declare-fun m!6617714 () Bool)

(assert (=> b!5650364 m!6617714))

(declare-fun m!6617716 () Bool)

(assert (=> b!5650364 m!6617716))

(declare-fun m!6617718 () Bool)

(assert (=> b!5650360 m!6617718))

(declare-fun m!6617720 () Bool)

(assert (=> b!5650360 m!6617720))

(declare-fun m!6617722 () Bool)

(assert (=> b!5650360 m!6617722))

(declare-fun m!6617724 () Bool)

(assert (=> b!5650362 m!6617724))

(declare-fun m!6617726 () Bool)

(assert (=> b!5650362 m!6617726))

(declare-fun m!6617728 () Bool)

(assert (=> b!5650362 m!6617728))

(declare-fun m!6617730 () Bool)

(assert (=> b!5650362 m!6617730))

(declare-fun m!6617732 () Bool)

(assert (=> b!5650362 m!6617732))

(assert (=> b!5650362 m!6617730))

(assert (=> b!5650362 m!6617724))

(declare-fun m!6617734 () Bool)

(assert (=> b!5650362 m!6617734))

(declare-fun m!6617736 () Bool)

(assert (=> b!5650363 m!6617736))

(assert (=> b!5650363 m!6617736))

(declare-fun m!6617738 () Bool)

(assert (=> b!5650363 m!6617738))

(declare-fun m!6617740 () Bool)

(assert (=> b!5650381 m!6617740))

(declare-fun m!6617742 () Bool)

(assert (=> b!5650368 m!6617742))

(declare-fun m!6617744 () Bool)

(assert (=> b!5650365 m!6617744))

(declare-fun m!6617746 () Bool)

(assert (=> b!5650371 m!6617746))

(declare-fun m!6617748 () Bool)

(assert (=> b!5650378 m!6617748))

(declare-fun m!6617750 () Bool)

(assert (=> b!5650378 m!6617750))

(declare-fun m!6617752 () Bool)

(assert (=> b!5650382 m!6617752))

(declare-fun m!6617754 () Bool)

(assert (=> b!5650382 m!6617754))

(declare-fun m!6617756 () Bool)

(assert (=> b!5650382 m!6617756))

(declare-fun m!6617758 () Bool)

(assert (=> b!5650382 m!6617758))

(declare-fun m!6617760 () Bool)

(assert (=> b!5650370 m!6617760))

(declare-fun m!6617762 () Bool)

(assert (=> b!5650370 m!6617762))

(declare-fun m!6617764 () Bool)

(assert (=> b!5650370 m!6617764))

(declare-fun m!6617766 () Bool)

(assert (=> b!5650370 m!6617766))

(declare-fun m!6617768 () Bool)

(assert (=> b!5650370 m!6617768))

(declare-fun m!6617770 () Bool)

(assert (=> b!5650370 m!6617770))

(declare-fun m!6617772 () Bool)

(assert (=> b!5650370 m!6617772))

(declare-fun m!6617774 () Bool)

(assert (=> setNonEmpty!37748 m!6617774))

(declare-fun m!6617776 () Bool)

(assert (=> start!584334 m!6617776))

(declare-fun m!6617778 () Bool)

(assert (=> b!5650387 m!6617778))

(declare-fun m!6617780 () Bool)

(assert (=> b!5650387 m!6617780))

(declare-fun m!6617782 () Bool)

(assert (=> b!5650373 m!6617782))

(declare-fun m!6617784 () Bool)

(assert (=> b!5650397 m!6617784))

(declare-fun m!6617786 () Bool)

(assert (=> b!5650386 m!6617786))

(declare-fun m!6617788 () Bool)

(assert (=> b!5650375 m!6617788))

(declare-fun m!6617790 () Bool)

(assert (=> b!5650372 m!6617790))

(declare-fun m!6617792 () Bool)

(assert (=> b!5650372 m!6617792))

(declare-fun m!6617794 () Bool)

(assert (=> b!5650372 m!6617794))

(declare-fun m!6617796 () Bool)

(assert (=> b!5650372 m!6617796))

(assert (=> b!5650372 m!6617710))

(declare-fun m!6617798 () Bool)

(assert (=> b!5650372 m!6617798))

(declare-fun m!6617800 () Bool)

(assert (=> b!5650372 m!6617800))

(assert (=> b!5650385 m!6617782))

(declare-fun m!6617802 () Bool)

(assert (=> b!5650384 m!6617802))

(assert (=> b!5650384 m!6617752))

(declare-fun m!6617804 () Bool)

(assert (=> b!5650384 m!6617804))

(declare-fun m!6617806 () Bool)

(assert (=> b!5650396 m!6617806))

(assert (=> b!5650396 m!6617806))

(declare-fun m!6617808 () Bool)

(assert (=> b!5650396 m!6617808))

(declare-fun m!6617810 () Bool)

(assert (=> b!5650390 m!6617810))

(declare-fun m!6617812 () Bool)

(assert (=> b!5650388 m!6617812))

(declare-fun m!6617814 () Bool)

(assert (=> b!5650388 m!6617814))

(declare-fun m!6617816 () Bool)

(assert (=> b!5650388 m!6617816))

(declare-fun m!6617818 () Bool)

(assert (=> b!5650388 m!6617818))

(declare-fun m!6617820 () Bool)

(assert (=> b!5650388 m!6617820))

(declare-fun m!6617822 () Bool)

(assert (=> b!5650388 m!6617822))

(declare-fun m!6617824 () Bool)

(assert (=> b!5650388 m!6617824))

(declare-fun m!6617826 () Bool)

(assert (=> b!5650388 m!6617826))

(declare-fun m!6617828 () Bool)

(assert (=> b!5650388 m!6617828))

(declare-fun m!6617830 () Bool)

(assert (=> b!5650388 m!6617830))

(assert (=> b!5650388 m!6617816))

(declare-fun m!6617832 () Bool)

(assert (=> b!5650388 m!6617832))

(declare-fun m!6617834 () Bool)

(assert (=> b!5650388 m!6617834))

(declare-fun m!6617836 () Bool)

(assert (=> b!5650388 m!6617836))

(assert (=> b!5650388 m!6617820))

(declare-fun m!6617838 () Bool)

(assert (=> b!5650388 m!6617838))

(declare-fun m!6617840 () Bool)

(assert (=> b!5650388 m!6617840))

(declare-fun m!6617842 () Bool)

(assert (=> b!5650388 m!6617842))

(declare-fun m!6617844 () Bool)

(assert (=> b!5650388 m!6617844))

(declare-fun m!6617846 () Bool)

(assert (=> b!5650388 m!6617846))

(assert (=> b!5650388 m!6617814))

(assert (=> b!5650388 m!6617822))

(declare-fun m!6617848 () Bool)

(assert (=> b!5650388 m!6617848))

(declare-fun m!6617850 () Bool)

(assert (=> b!5650388 m!6617850))

(declare-fun m!6617852 () Bool)

(assert (=> b!5650388 m!6617852))

(declare-fun m!6617854 () Bool)

(assert (=> b!5650388 m!6617854))

(declare-fun m!6617856 () Bool)

(assert (=> b!5650388 m!6617856))

(declare-fun m!6617858 () Bool)

(assert (=> b!5650388 m!6617858))

(declare-fun m!6617860 () Bool)

(assert (=> b!5650388 m!6617860))

(declare-fun m!6617862 () Bool)

(assert (=> b!5650388 m!6617862))

(declare-fun m!6617864 () Bool)

(assert (=> b!5650369 m!6617864))

(declare-fun m!6617866 () Bool)

(assert (=> b!5650369 m!6617866))

(declare-fun m!6617868 () Bool)

(assert (=> b!5650366 m!6617868))

(declare-fun m!6617870 () Bool)

(assert (=> b!5650379 m!6617870))

(check-sat (not b!5650396) (not b!5650386) (not b!5650377) (not b!5650372) (not b!5650387) (not setNonEmpty!37748) (not b!5650375) (not b!5650362) (not b!5650378) (not b!5650373) (not b!5650393) (not b!5650363) (not b!5650365) (not b!5650360) (not b!5650388) (not b!5650390) (not b!5650391) (not b!5650376) (not b!5650382) (not b!5650368) (not b!5650384) (not b!5650385) (not b!5650397) (not start!584334) (not b!5650379) (not b!5650381) (not b!5650380) (not b!5650394) (not b!5650366) (not b!5650364) tp_is_empty!40527 (not b!5650395) (not b!5650369) (not b!5650370) (not b!5650389) (not b!5650371))
(check-sat)
