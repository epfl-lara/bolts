; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!583344 () Bool)

(assert start!583344)

(declare-fun b!5630572 () Bool)

(assert (=> b!5630572 true))

(assert (=> b!5630572 true))

(declare-fun lambda!302573 () Int)

(declare-fun lambda!302572 () Int)

(assert (=> b!5630572 (not (= lambda!302573 lambda!302572))))

(assert (=> b!5630572 true))

(assert (=> b!5630572 true))

(declare-fun b!5630585 () Bool)

(assert (=> b!5630585 true))

(declare-fun b!5630561 () Bool)

(declare-datatypes ((Unit!156024 0))(
  ( (Unit!156025) )
))
(declare-fun e!3470364 () Unit!156024)

(declare-fun Unit!156026 () Unit!156024)

(assert (=> b!5630561 (= e!3470364 Unit!156026)))

(declare-fun b!5630562 () Bool)

(declare-fun e!3470363 () Bool)

(declare-fun e!3470371 () Bool)

(assert (=> b!5630562 (= e!3470363 e!3470371)))

(declare-fun res!2384492 () Bool)

(assert (=> b!5630562 (=> res!2384492 e!3470371)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31516 0))(
  ( (C!31517 (val!25460 Int)) )
))
(declare-datatypes ((Regex!15623 0))(
  ( (ElementMatch!15623 (c!988711 C!31516)) (Concat!24468 (regOne!31758 Regex!15623) (regTwo!31758 Regex!15623)) (EmptyExpr!15623) (Star!15623 (reg!15952 Regex!15623)) (EmptyLang!15623) (Union!15623 (regOne!31759 Regex!15623) (regTwo!31759 Regex!15623)) )
))
(declare-datatypes ((List!63168 0))(
  ( (Nil!63044) (Cons!63044 (h!69492 Regex!15623) (t!376462 List!63168)) )
))
(declare-datatypes ((Context!10014 0))(
  ( (Context!10015 (exprs!5507 List!63168)) )
))
(declare-fun lt!2262397 () (InoxSet Context!10014))

(declare-fun lt!2262395 () (InoxSet Context!10014))

(assert (=> b!5630562 (= res!2384492 (not (= lt!2262397 lt!2262395)))))

(declare-fun lt!2262383 () (InoxSet Context!10014))

(declare-fun lt!2262410 () (InoxSet Context!10014))

(assert (=> b!5630562 (= lt!2262395 ((_ map or) lt!2262383 lt!2262410))))

(declare-fun lt!2262404 () Context!10014)

(declare-datatypes ((List!63169 0))(
  ( (Nil!63045) (Cons!63045 (h!69493 C!31516) (t!376463 List!63169)) )
))
(declare-fun s!2326 () List!63169)

(declare-fun derivationStepZipperUp!891 (Context!10014 C!31516) (InoxSet Context!10014))

(assert (=> b!5630562 (= lt!2262410 (derivationStepZipperUp!891 lt!2262404 (h!69493 s!2326)))))

(declare-fun lt!2262398 () (InoxSet Context!10014))

(declare-fun lambda!302574 () Int)

(declare-fun lt!2262401 () Context!10014)

(declare-fun flatMap!1236 ((InoxSet Context!10014) Int) (InoxSet Context!10014))

(assert (=> b!5630562 (= (flatMap!1236 lt!2262398 lambda!302574) (derivationStepZipperUp!891 lt!2262401 (h!69493 s!2326)))))

(declare-fun lt!2262393 () Unit!156024)

(declare-fun lemmaFlatMapOnSingletonSet!768 ((InoxSet Context!10014) Context!10014 Int) Unit!156024)

(assert (=> b!5630562 (= lt!2262393 (lemmaFlatMapOnSingletonSet!768 lt!2262398 lt!2262401 lambda!302574))))

(declare-fun lt!2262388 () (InoxSet Context!10014))

(assert (=> b!5630562 (= lt!2262388 (derivationStepZipperUp!891 lt!2262401 (h!69493 s!2326)))))

(declare-fun derivationStepZipper!1710 ((InoxSet Context!10014) C!31516) (InoxSet Context!10014))

(assert (=> b!5630562 (= lt!2262397 (derivationStepZipper!1710 lt!2262398 (h!69493 s!2326)))))

(declare-fun lt!2262396 () (InoxSet Context!10014))

(assert (=> b!5630562 (= lt!2262396 (store ((as const (Array Context!10014 Bool)) false) lt!2262404 true))))

(assert (=> b!5630562 (= lt!2262398 (store ((as const (Array Context!10014 Bool)) false) lt!2262401 true))))

(declare-fun r!7292 () Regex!15623)

(declare-fun lt!2262381 () List!63168)

(assert (=> b!5630562 (= lt!2262401 (Context!10015 (Cons!63044 (regOne!31758 (regOne!31758 r!7292)) lt!2262381)))))

(declare-fun b!5630563 () Bool)

(declare-fun e!3470365 () Bool)

(declare-fun lt!2262403 () (InoxSet Context!10014))

(declare-fun matchZipper!1761 ((InoxSet Context!10014) List!63169) Bool)

(assert (=> b!5630563 (= e!3470365 (matchZipper!1761 lt!2262403 (t!376463 s!2326)))))

(declare-fun b!5630564 () Bool)

(declare-fun e!3470376 () Bool)

(declare-fun e!3470369 () Bool)

(assert (=> b!5630564 (= e!3470376 (not e!3470369))))

(declare-fun res!2384499 () Bool)

(assert (=> b!5630564 (=> res!2384499 e!3470369)))

(declare-datatypes ((List!63170 0))(
  ( (Nil!63046) (Cons!63046 (h!69494 Context!10014) (t!376464 List!63170)) )
))
(declare-fun zl!343 () List!63170)

(get-info :version)

(assert (=> b!5630564 (= res!2384499 (not ((_ is Cons!63046) zl!343)))))

(declare-fun lt!2262387 () Bool)

(declare-fun matchRSpec!2726 (Regex!15623 List!63169) Bool)

(assert (=> b!5630564 (= lt!2262387 (matchRSpec!2726 r!7292 s!2326))))

(declare-fun matchR!7808 (Regex!15623 List!63169) Bool)

(assert (=> b!5630564 (= lt!2262387 (matchR!7808 r!7292 s!2326))))

(declare-fun lt!2262409 () Unit!156024)

(declare-fun mainMatchTheorem!2726 (Regex!15623 List!63169) Unit!156024)

(assert (=> b!5630564 (= lt!2262409 (mainMatchTheorem!2726 r!7292 s!2326))))

(declare-fun b!5630565 () Bool)

(declare-fun res!2384501 () Bool)

(assert (=> b!5630565 (=> (not res!2384501) (not e!3470376))))

(declare-fun z!1189 () (InoxSet Context!10014))

(declare-fun toList!9407 ((InoxSet Context!10014)) List!63170)

(assert (=> b!5630565 (= res!2384501 (= (toList!9407 z!1189) zl!343))))

(declare-fun b!5630566 () Bool)

(declare-fun res!2384493 () Bool)

(assert (=> b!5630566 (=> res!2384493 e!3470369)))

(declare-fun isEmpty!34881 (List!63170) Bool)

(assert (=> b!5630566 (= res!2384493 (not (isEmpty!34881 (t!376464 zl!343))))))

(declare-fun b!5630567 () Bool)

(declare-fun e!3470362 () Bool)

(declare-fun lt!2262407 () (InoxSet Context!10014))

(assert (=> b!5630567 (= e!3470362 (matchZipper!1761 lt!2262407 (t!376463 s!2326)))))

(declare-fun b!5630568 () Bool)

(declare-fun res!2384494 () Bool)

(declare-fun e!3470379 () Bool)

(assert (=> b!5630568 (=> res!2384494 e!3470379)))

(declare-fun nullable!5655 (Regex!15623) Bool)

(assert (=> b!5630568 (= res!2384494 (not (nullable!5655 (regOne!31758 (regOne!31758 r!7292)))))))

(declare-fun b!5630569 () Bool)

(declare-fun e!3470378 () Bool)

(declare-fun tp_is_empty!40499 () Bool)

(assert (=> b!5630569 (= e!3470378 tp_is_empty!40499)))

(declare-fun b!5630570 () Bool)

(declare-fun e!3470374 () Bool)

(assert (=> b!5630570 (= e!3470374 e!3470363)))

(declare-fun res!2384503 () Bool)

(assert (=> b!5630570 (=> res!2384503 e!3470363)))

(declare-fun e!3470373 () Bool)

(assert (=> b!5630570 (= res!2384503 e!3470373)))

(declare-fun res!2384506 () Bool)

(assert (=> b!5630570 (=> (not res!2384506) (not e!3470373))))

(declare-fun lt!2262392 () Bool)

(declare-fun lt!2262394 () Bool)

(assert (=> b!5630570 (= res!2384506 (not (= lt!2262392 lt!2262394)))))

(declare-fun lt!2262402 () (InoxSet Context!10014))

(assert (=> b!5630570 (= lt!2262392 (matchZipper!1761 lt!2262402 (t!376463 s!2326)))))

(declare-fun lt!2262389 () (InoxSet Context!10014))

(assert (=> b!5630570 (= (matchZipper!1761 lt!2262389 (t!376463 s!2326)) e!3470365)))

(declare-fun res!2384502 () Bool)

(assert (=> b!5630570 (=> res!2384502 e!3470365)))

(assert (=> b!5630570 (= res!2384502 lt!2262394)))

(assert (=> b!5630570 (= lt!2262394 (matchZipper!1761 lt!2262383 (t!376463 s!2326)))))

(declare-fun lt!2262382 () Unit!156024)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!648 ((InoxSet Context!10014) (InoxSet Context!10014) List!63169) Unit!156024)

(assert (=> b!5630570 (= lt!2262382 (lemmaZipperConcatMatchesSameAsBothZippers!648 lt!2262383 lt!2262403 (t!376463 s!2326)))))

(declare-fun b!5630571 () Bool)

(declare-fun e!3470368 () Bool)

(assert (=> b!5630571 (= e!3470368 (= (exprs!5507 (h!69494 zl!343)) (Cons!63044 (Concat!24468 (regOne!31758 (regOne!31758 r!7292)) (regTwo!31758 (regOne!31758 r!7292))) (t!376462 (exprs!5507 (h!69494 zl!343))))))))

(declare-fun e!3470367 () Bool)

(assert (=> b!5630572 (= e!3470369 e!3470367)))

(declare-fun res!2384495 () Bool)

(assert (=> b!5630572 (=> res!2384495 e!3470367)))

(declare-fun lt!2262386 () Bool)

(assert (=> b!5630572 (= res!2384495 (or (not (= lt!2262387 lt!2262386)) ((_ is Nil!63045) s!2326)))))

(declare-fun Exists!2723 (Int) Bool)

(assert (=> b!5630572 (= (Exists!2723 lambda!302572) (Exists!2723 lambda!302573))))

(declare-fun lt!2262390 () Unit!156024)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1352 (Regex!15623 Regex!15623 List!63169) Unit!156024)

(assert (=> b!5630572 (= lt!2262390 (lemmaExistCutMatchRandMatchRSpecEquivalent!1352 (regOne!31758 r!7292) (regTwo!31758 r!7292) s!2326))))

(assert (=> b!5630572 (= lt!2262386 (Exists!2723 lambda!302572))))

(declare-datatypes ((tuple2!65440 0))(
  ( (tuple2!65441 (_1!36023 List!63169) (_2!36023 List!63169)) )
))
(declare-datatypes ((Option!15632 0))(
  ( (None!15631) (Some!15631 (v!51676 tuple2!65440)) )
))
(declare-fun isDefined!12335 (Option!15632) Bool)

(declare-fun findConcatSeparation!2046 (Regex!15623 Regex!15623 List!63169 List!63169 List!63169) Option!15632)

(assert (=> b!5630572 (= lt!2262386 (isDefined!12335 (findConcatSeparation!2046 (regOne!31758 r!7292) (regTwo!31758 r!7292) Nil!63045 s!2326 s!2326)))))

(declare-fun lt!2262384 () Unit!156024)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1810 (Regex!15623 Regex!15623 List!63169) Unit!156024)

(assert (=> b!5630572 (= lt!2262384 (lemmaFindConcatSeparationEquivalentToExists!1810 (regOne!31758 r!7292) (regTwo!31758 r!7292) s!2326))))

(declare-fun b!5630573 () Bool)

(assert (=> b!5630573 (= e!3470379 e!3470374)))

(declare-fun res!2384485 () Bool)

(assert (=> b!5630573 (=> res!2384485 e!3470374)))

(assert (=> b!5630573 (= res!2384485 (not (= lt!2262402 lt!2262389)))))

(assert (=> b!5630573 (= lt!2262389 ((_ map or) lt!2262383 lt!2262403))))

(declare-fun lt!2262406 () Context!10014)

(declare-fun derivationStepZipperDown!965 (Regex!15623 Context!10014 C!31516) (InoxSet Context!10014))

(assert (=> b!5630573 (= lt!2262403 (derivationStepZipperDown!965 (regTwo!31758 (regOne!31758 r!7292)) lt!2262406 (h!69493 s!2326)))))

(assert (=> b!5630573 (= lt!2262383 (derivationStepZipperDown!965 (regOne!31758 (regOne!31758 r!7292)) lt!2262404 (h!69493 s!2326)))))

(assert (=> b!5630573 (= lt!2262404 (Context!10015 lt!2262381))))

(assert (=> b!5630573 (= lt!2262381 (Cons!63044 (regTwo!31758 (regOne!31758 r!7292)) (t!376462 (exprs!5507 (h!69494 zl!343)))))))

(declare-fun tp!1558621 () Bool)

(declare-fun setRes!37612 () Bool)

(declare-fun e!3470366 () Bool)

(declare-fun setElem!37612 () Context!10014)

(declare-fun setNonEmpty!37612 () Bool)

(declare-fun inv!82304 (Context!10014) Bool)

(assert (=> setNonEmpty!37612 (= setRes!37612 (and tp!1558621 (inv!82304 setElem!37612) e!3470366))))

(declare-fun setRest!37612 () (InoxSet Context!10014))

(assert (=> setNonEmpty!37612 (= z!1189 ((_ map or) (store ((as const (Array Context!10014 Bool)) false) setElem!37612 true) setRest!37612))))

(declare-fun tp!1558623 () Bool)

(declare-fun b!5630574 () Bool)

(declare-fun e!3470375 () Bool)

(declare-fun e!3470380 () Bool)

(assert (=> b!5630574 (= e!3470375 (and (inv!82304 (h!69494 zl!343)) e!3470380 tp!1558623))))

(declare-fun b!5630575 () Bool)

(declare-fun tp!1558626 () Bool)

(assert (=> b!5630575 (= e!3470380 tp!1558626)))

(declare-fun b!5630576 () Bool)

(declare-fun Unit!156027 () Unit!156024)

(assert (=> b!5630576 (= e!3470364 Unit!156027)))

(declare-fun lt!2262399 () Unit!156024)

(assert (=> b!5630576 (= lt!2262399 (lemmaZipperConcatMatchesSameAsBothZippers!648 lt!2262402 lt!2262407 (t!376463 s!2326)))))

(declare-fun res!2384488 () Bool)

(assert (=> b!5630576 (= res!2384488 (matchZipper!1761 lt!2262402 (t!376463 s!2326)))))

(assert (=> b!5630576 (=> res!2384488 e!3470362)))

(assert (=> b!5630576 (= (matchZipper!1761 ((_ map or) lt!2262402 lt!2262407) (t!376463 s!2326)) e!3470362)))

(declare-fun b!5630577 () Bool)

(declare-fun res!2384498 () Bool)

(assert (=> b!5630577 (=> res!2384498 e!3470367)))

(declare-fun isEmpty!34882 (List!63168) Bool)

(assert (=> b!5630577 (= res!2384498 (isEmpty!34882 (t!376462 (exprs!5507 (h!69494 zl!343)))))))

(declare-fun b!5630578 () Bool)

(declare-fun e!3470370 () Bool)

(assert (=> b!5630578 (= e!3470370 (not (matchZipper!1761 (derivationStepZipper!1710 lt!2262396 (h!69493 s!2326)) (t!376463 s!2326))))))

(declare-fun b!5630579 () Bool)

(declare-fun res!2384497 () Bool)

(assert (=> b!5630579 (=> res!2384497 e!3470369)))

(declare-fun generalisedUnion!1486 (List!63168) Regex!15623)

(declare-fun unfocusZipperList!1051 (List!63170) List!63168)

(assert (=> b!5630579 (= res!2384497 (not (= r!7292 (generalisedUnion!1486 (unfocusZipperList!1051 zl!343)))))))

(declare-fun b!5630580 () Bool)

(declare-fun tp!1558619 () Bool)

(assert (=> b!5630580 (= e!3470378 tp!1558619)))

(declare-fun b!5630581 () Bool)

(declare-fun res!2384491 () Bool)

(assert (=> b!5630581 (=> res!2384491 e!3470369)))

(assert (=> b!5630581 (= res!2384491 (not ((_ is Cons!63044) (exprs!5507 (h!69494 zl!343)))))))

(declare-fun b!5630582 () Bool)

(assert (=> b!5630582 (= e!3470373 (not (matchZipper!1761 lt!2262403 (t!376463 s!2326))))))

(declare-fun b!5630583 () Bool)

(declare-fun res!2384500 () Bool)

(assert (=> b!5630583 (=> res!2384500 e!3470369)))

(assert (=> b!5630583 (= res!2384500 (or ((_ is EmptyExpr!15623) r!7292) ((_ is EmptyLang!15623) r!7292) ((_ is ElementMatch!15623) r!7292) ((_ is Union!15623) r!7292) (not ((_ is Concat!24468) r!7292))))))

(declare-fun b!5630584 () Bool)

(declare-fun e!3470377 () Bool)

(declare-fun tp!1558625 () Bool)

(assert (=> b!5630584 (= e!3470377 (and tp_is_empty!40499 tp!1558625))))

(assert (=> b!5630585 (= e!3470367 e!3470379)))

(declare-fun res!2384505 () Bool)

(assert (=> b!5630585 (=> res!2384505 e!3470379)))

(assert (=> b!5630585 (= res!2384505 (or (and ((_ is ElementMatch!15623) (regOne!31758 r!7292)) (= (c!988711 (regOne!31758 r!7292)) (h!69493 s!2326))) ((_ is Union!15623) (regOne!31758 r!7292)) (not ((_ is Concat!24468) (regOne!31758 r!7292)))))))

(declare-fun lt!2262385 () Unit!156024)

(assert (=> b!5630585 (= lt!2262385 e!3470364)))

(declare-fun c!988710 () Bool)

(assert (=> b!5630585 (= c!988710 (nullable!5655 (h!69492 (exprs!5507 (h!69494 zl!343)))))))

(assert (=> b!5630585 (= (flatMap!1236 z!1189 lambda!302574) (derivationStepZipperUp!891 (h!69494 zl!343) (h!69493 s!2326)))))

(declare-fun lt!2262405 () Unit!156024)

(assert (=> b!5630585 (= lt!2262405 (lemmaFlatMapOnSingletonSet!768 z!1189 (h!69494 zl!343) lambda!302574))))

(assert (=> b!5630585 (= lt!2262407 (derivationStepZipperUp!891 lt!2262406 (h!69493 s!2326)))))

(assert (=> b!5630585 (= lt!2262402 (derivationStepZipperDown!965 (h!69492 (exprs!5507 (h!69494 zl!343))) lt!2262406 (h!69493 s!2326)))))

(assert (=> b!5630585 (= lt!2262406 (Context!10015 (t!376462 (exprs!5507 (h!69494 zl!343)))))))

(declare-fun lt!2262408 () (InoxSet Context!10014))

(assert (=> b!5630585 (= lt!2262408 (derivationStepZipperUp!891 (Context!10015 (Cons!63044 (h!69492 (exprs!5507 (h!69494 zl!343))) (t!376462 (exprs!5507 (h!69494 zl!343))))) (h!69493 s!2326)))))

(declare-fun b!5630586 () Bool)

(assert (=> b!5630586 (= e!3470371 e!3470368)))

(declare-fun res!2384490 () Bool)

(assert (=> b!5630586 (=> res!2384490 e!3470368)))

(assert (=> b!5630586 (= res!2384490 e!3470370)))

(declare-fun res!2384496 () Bool)

(assert (=> b!5630586 (=> (not res!2384496) (not e!3470370))))

(assert (=> b!5630586 (= res!2384496 (not (= lt!2262392 (matchZipper!1761 lt!2262397 (t!376463 s!2326)))))))

(declare-fun e!3470372 () Bool)

(assert (=> b!5630586 (= (matchZipper!1761 lt!2262395 (t!376463 s!2326)) e!3470372)))

(declare-fun res!2384504 () Bool)

(assert (=> b!5630586 (=> res!2384504 e!3470372)))

(assert (=> b!5630586 (= res!2384504 lt!2262394)))

(declare-fun lt!2262400 () Unit!156024)

(assert (=> b!5630586 (= lt!2262400 (lemmaZipperConcatMatchesSameAsBothZippers!648 lt!2262383 lt!2262410 (t!376463 s!2326)))))

(assert (=> b!5630586 (= (flatMap!1236 lt!2262396 lambda!302574) (derivationStepZipperUp!891 lt!2262404 (h!69493 s!2326)))))

(declare-fun lt!2262391 () Unit!156024)

(assert (=> b!5630586 (= lt!2262391 (lemmaFlatMapOnSingletonSet!768 lt!2262396 lt!2262404 lambda!302574))))

(declare-fun b!5630587 () Bool)

(declare-fun tp!1558624 () Bool)

(declare-fun tp!1558620 () Bool)

(assert (=> b!5630587 (= e!3470378 (and tp!1558624 tp!1558620))))

(declare-fun res!2384487 () Bool)

(assert (=> start!583344 (=> (not res!2384487) (not e!3470376))))

(declare-fun validRegex!7359 (Regex!15623) Bool)

(assert (=> start!583344 (= res!2384487 (validRegex!7359 r!7292))))

(assert (=> start!583344 e!3470376))

(assert (=> start!583344 e!3470378))

(declare-fun condSetEmpty!37612 () Bool)

(assert (=> start!583344 (= condSetEmpty!37612 (= z!1189 ((as const (Array Context!10014 Bool)) false)))))

(assert (=> start!583344 setRes!37612))

(assert (=> start!583344 e!3470375))

(assert (=> start!583344 e!3470377))

(declare-fun setIsEmpty!37612 () Bool)

(assert (=> setIsEmpty!37612 setRes!37612))

(declare-fun b!5630588 () Bool)

(declare-fun tp!1558622 () Bool)

(assert (=> b!5630588 (= e!3470366 tp!1558622)))

(declare-fun b!5630589 () Bool)

(declare-fun tp!1558627 () Bool)

(declare-fun tp!1558618 () Bool)

(assert (=> b!5630589 (= e!3470378 (and tp!1558627 tp!1558618))))

(declare-fun b!5630590 () Bool)

(declare-fun res!2384489 () Bool)

(assert (=> b!5630590 (=> (not res!2384489) (not e!3470376))))

(declare-fun unfocusZipper!1365 (List!63170) Regex!15623)

(assert (=> b!5630590 (= res!2384489 (= r!7292 (unfocusZipper!1365 zl!343)))))

(declare-fun b!5630591 () Bool)

(declare-fun res!2384486 () Bool)

(assert (=> b!5630591 (=> res!2384486 e!3470369)))

(declare-fun generalisedConcat!1238 (List!63168) Regex!15623)

(assert (=> b!5630591 (= res!2384486 (not (= r!7292 (generalisedConcat!1238 (exprs!5507 (h!69494 zl!343))))))))

(declare-fun b!5630592 () Bool)

(assert (=> b!5630592 (= e!3470372 (matchZipper!1761 lt!2262410 (t!376463 s!2326)))))

(assert (= (and start!583344 res!2384487) b!5630565))

(assert (= (and b!5630565 res!2384501) b!5630590))

(assert (= (and b!5630590 res!2384489) b!5630564))

(assert (= (and b!5630564 (not res!2384499)) b!5630566))

(assert (= (and b!5630566 (not res!2384493)) b!5630591))

(assert (= (and b!5630591 (not res!2384486)) b!5630581))

(assert (= (and b!5630581 (not res!2384491)) b!5630579))

(assert (= (and b!5630579 (not res!2384497)) b!5630583))

(assert (= (and b!5630583 (not res!2384500)) b!5630572))

(assert (= (and b!5630572 (not res!2384495)) b!5630577))

(assert (= (and b!5630577 (not res!2384498)) b!5630585))

(assert (= (and b!5630585 c!988710) b!5630576))

(assert (= (and b!5630585 (not c!988710)) b!5630561))

(assert (= (and b!5630576 (not res!2384488)) b!5630567))

(assert (= (and b!5630585 (not res!2384505)) b!5630568))

(assert (= (and b!5630568 (not res!2384494)) b!5630573))

(assert (= (and b!5630573 (not res!2384485)) b!5630570))

(assert (= (and b!5630570 (not res!2384502)) b!5630563))

(assert (= (and b!5630570 res!2384506) b!5630582))

(assert (= (and b!5630570 (not res!2384503)) b!5630562))

(assert (= (and b!5630562 (not res!2384492)) b!5630586))

(assert (= (and b!5630586 (not res!2384504)) b!5630592))

(assert (= (and b!5630586 res!2384496) b!5630578))

(assert (= (and b!5630586 (not res!2384490)) b!5630571))

(assert (= (and start!583344 ((_ is ElementMatch!15623) r!7292)) b!5630569))

(assert (= (and start!583344 ((_ is Concat!24468) r!7292)) b!5630587))

(assert (= (and start!583344 ((_ is Star!15623) r!7292)) b!5630580))

(assert (= (and start!583344 ((_ is Union!15623) r!7292)) b!5630589))

(assert (= (and start!583344 condSetEmpty!37612) setIsEmpty!37612))

(assert (= (and start!583344 (not condSetEmpty!37612)) setNonEmpty!37612))

(assert (= setNonEmpty!37612 b!5630588))

(assert (= b!5630574 b!5630575))

(assert (= (and start!583344 ((_ is Cons!63046) zl!343)) b!5630574))

(assert (= (and start!583344 ((_ is Cons!63045) s!2326)) b!5630584))

(declare-fun m!6601920 () Bool)

(assert (=> b!5630564 m!6601920))

(declare-fun m!6601922 () Bool)

(assert (=> b!5630564 m!6601922))

(declare-fun m!6601924 () Bool)

(assert (=> b!5630564 m!6601924))

(declare-fun m!6601926 () Bool)

(assert (=> b!5630573 m!6601926))

(declare-fun m!6601928 () Bool)

(assert (=> b!5630573 m!6601928))

(declare-fun m!6601930 () Bool)

(assert (=> b!5630565 m!6601930))

(declare-fun m!6601932 () Bool)

(assert (=> b!5630579 m!6601932))

(assert (=> b!5630579 m!6601932))

(declare-fun m!6601934 () Bool)

(assert (=> b!5630579 m!6601934))

(declare-fun m!6601936 () Bool)

(assert (=> b!5630566 m!6601936))

(declare-fun m!6601938 () Bool)

(assert (=> b!5630570 m!6601938))

(declare-fun m!6601940 () Bool)

(assert (=> b!5630570 m!6601940))

(declare-fun m!6601942 () Bool)

(assert (=> b!5630570 m!6601942))

(declare-fun m!6601944 () Bool)

(assert (=> b!5630570 m!6601944))

(declare-fun m!6601946 () Bool)

(assert (=> b!5630562 m!6601946))

(declare-fun m!6601948 () Bool)

(assert (=> b!5630562 m!6601948))

(declare-fun m!6601950 () Bool)

(assert (=> b!5630562 m!6601950))

(declare-fun m!6601952 () Bool)

(assert (=> b!5630562 m!6601952))

(declare-fun m!6601954 () Bool)

(assert (=> b!5630562 m!6601954))

(declare-fun m!6601956 () Bool)

(assert (=> b!5630562 m!6601956))

(declare-fun m!6601958 () Bool)

(assert (=> b!5630562 m!6601958))

(declare-fun m!6601960 () Bool)

(assert (=> b!5630592 m!6601960))

(declare-fun m!6601962 () Bool)

(assert (=> b!5630591 m!6601962))

(declare-fun m!6601964 () Bool)

(assert (=> b!5630586 m!6601964))

(declare-fun m!6601966 () Bool)

(assert (=> b!5630586 m!6601966))

(declare-fun m!6601968 () Bool)

(assert (=> b!5630586 m!6601968))

(assert (=> b!5630586 m!6601952))

(declare-fun m!6601970 () Bool)

(assert (=> b!5630586 m!6601970))

(declare-fun m!6601972 () Bool)

(assert (=> b!5630586 m!6601972))

(declare-fun m!6601974 () Bool)

(assert (=> b!5630576 m!6601974))

(assert (=> b!5630576 m!6601938))

(declare-fun m!6601976 () Bool)

(assert (=> b!5630576 m!6601976))

(declare-fun m!6601978 () Bool)

(assert (=> b!5630590 m!6601978))

(declare-fun m!6601980 () Bool)

(assert (=> b!5630574 m!6601980))

(declare-fun m!6601982 () Bool)

(assert (=> b!5630577 m!6601982))

(declare-fun m!6601984 () Bool)

(assert (=> b!5630568 m!6601984))

(declare-fun m!6601986 () Bool)

(assert (=> b!5630582 m!6601986))

(assert (=> b!5630563 m!6601986))

(declare-fun m!6601988 () Bool)

(assert (=> b!5630567 m!6601988))

(declare-fun m!6601990 () Bool)

(assert (=> b!5630572 m!6601990))

(declare-fun m!6601992 () Bool)

(assert (=> b!5630572 m!6601992))

(declare-fun m!6601994 () Bool)

(assert (=> b!5630572 m!6601994))

(declare-fun m!6601996 () Bool)

(assert (=> b!5630572 m!6601996))

(assert (=> b!5630572 m!6601992))

(declare-fun m!6601998 () Bool)

(assert (=> b!5630572 m!6601998))

(assert (=> b!5630572 m!6601994))

(declare-fun m!6602000 () Bool)

(assert (=> b!5630572 m!6602000))

(declare-fun m!6602002 () Bool)

(assert (=> start!583344 m!6602002))

(declare-fun m!6602004 () Bool)

(assert (=> setNonEmpty!37612 m!6602004))

(declare-fun m!6602006 () Bool)

(assert (=> b!5630578 m!6602006))

(assert (=> b!5630578 m!6602006))

(declare-fun m!6602008 () Bool)

(assert (=> b!5630578 m!6602008))

(declare-fun m!6602010 () Bool)

(assert (=> b!5630585 m!6602010))

(declare-fun m!6602012 () Bool)

(assert (=> b!5630585 m!6602012))

(declare-fun m!6602014 () Bool)

(assert (=> b!5630585 m!6602014))

(declare-fun m!6602016 () Bool)

(assert (=> b!5630585 m!6602016))

(declare-fun m!6602018 () Bool)

(assert (=> b!5630585 m!6602018))

(declare-fun m!6602020 () Bool)

(assert (=> b!5630585 m!6602020))

(declare-fun m!6602022 () Bool)

(assert (=> b!5630585 m!6602022))

(check-sat (not b!5630578) (not b!5630579) (not b!5630575) (not b!5630577) (not b!5630588) (not b!5630564) tp_is_empty!40499 (not b!5630563) (not b!5630591) (not b!5630584) (not b!5630587) (not b!5630582) (not b!5630589) (not b!5630568) (not b!5630567) (not b!5630562) (not b!5630572) (not b!5630566) (not b!5630573) (not b!5630586) (not b!5630590) (not b!5630592) (not b!5630580) (not b!5630576) (not b!5630585) (not b!5630565) (not setNonEmpty!37612) (not start!583344) (not b!5630574) (not b!5630570))
(check-sat)
(get-model)

(declare-fun d!1778563 () Bool)

(declare-fun lambda!302580 () Int)

(declare-fun forall!14777 (List!63168 Int) Bool)

(assert (=> d!1778563 (= (inv!82304 (h!69494 zl!343)) (forall!14777 (exprs!5507 (h!69494 zl!343)) lambda!302580))))

(declare-fun bs!1303130 () Bool)

(assert (= bs!1303130 d!1778563))

(declare-fun m!6602052 () Bool)

(assert (=> bs!1303130 m!6602052))

(assert (=> b!5630574 d!1778563))

(declare-fun bs!1303131 () Bool)

(declare-fun d!1778573 () Bool)

(assert (= bs!1303131 (and d!1778573 d!1778563)))

(declare-fun lambda!302581 () Int)

(assert (=> bs!1303131 (= lambda!302581 lambda!302580)))

(assert (=> d!1778573 (= (inv!82304 setElem!37612) (forall!14777 (exprs!5507 setElem!37612) lambda!302581))))

(declare-fun bs!1303132 () Bool)

(assert (= bs!1303132 d!1778573))

(declare-fun m!6602054 () Bool)

(assert (=> bs!1303132 m!6602054))

(assert (=> setNonEmpty!37612 d!1778573))

(declare-fun d!1778575 () Bool)

(declare-fun choose!42676 (Int) Bool)

(assert (=> d!1778575 (= (Exists!2723 lambda!302572) (choose!42676 lambda!302572))))

(declare-fun bs!1303133 () Bool)

(assert (= bs!1303133 d!1778575))

(declare-fun m!6602056 () Bool)

(assert (=> bs!1303133 m!6602056))

(assert (=> b!5630572 d!1778575))

(declare-fun b!5630716 () Bool)

(declare-fun e!3470451 () Bool)

(assert (=> b!5630716 (= e!3470451 (matchR!7808 (regTwo!31758 r!7292) s!2326))))

(declare-fun b!5630717 () Bool)

(declare-fun e!3470450 () Option!15632)

(assert (=> b!5630717 (= e!3470450 None!15631)))

(declare-fun b!5630718 () Bool)

(declare-fun e!3470453 () Bool)

(declare-fun lt!2262426 () Option!15632)

(assert (=> b!5630718 (= e!3470453 (not (isDefined!12335 lt!2262426)))))

(declare-fun d!1778577 () Bool)

(assert (=> d!1778577 e!3470453))

(declare-fun res!2384534 () Bool)

(assert (=> d!1778577 (=> res!2384534 e!3470453)))

(declare-fun e!3470449 () Bool)

(assert (=> d!1778577 (= res!2384534 e!3470449)))

(declare-fun res!2384537 () Bool)

(assert (=> d!1778577 (=> (not res!2384537) (not e!3470449))))

(assert (=> d!1778577 (= res!2384537 (isDefined!12335 lt!2262426))))

(declare-fun e!3470452 () Option!15632)

(assert (=> d!1778577 (= lt!2262426 e!3470452)))

(declare-fun c!988757 () Bool)

(assert (=> d!1778577 (= c!988757 e!3470451)))

(declare-fun res!2384538 () Bool)

(assert (=> d!1778577 (=> (not res!2384538) (not e!3470451))))

(assert (=> d!1778577 (= res!2384538 (matchR!7808 (regOne!31758 r!7292) Nil!63045))))

(assert (=> d!1778577 (validRegex!7359 (regOne!31758 r!7292))))

(assert (=> d!1778577 (= (findConcatSeparation!2046 (regOne!31758 r!7292) (regTwo!31758 r!7292) Nil!63045 s!2326 s!2326) lt!2262426)))

(declare-fun b!5630719 () Bool)

(assert (=> b!5630719 (= e!3470452 e!3470450)))

(declare-fun c!988758 () Bool)

(assert (=> b!5630719 (= c!988758 ((_ is Nil!63045) s!2326))))

(declare-fun b!5630720 () Bool)

(declare-fun lt!2262428 () Unit!156024)

(declare-fun lt!2262427 () Unit!156024)

(assert (=> b!5630720 (= lt!2262428 lt!2262427)))

(declare-fun ++!13838 (List!63169 List!63169) List!63169)

(assert (=> b!5630720 (= (++!13838 (++!13838 Nil!63045 (Cons!63045 (h!69493 s!2326) Nil!63045)) (t!376463 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2007 (List!63169 C!31516 List!63169 List!63169) Unit!156024)

(assert (=> b!5630720 (= lt!2262427 (lemmaMoveElementToOtherListKeepsConcatEq!2007 Nil!63045 (h!69493 s!2326) (t!376463 s!2326) s!2326))))

(assert (=> b!5630720 (= e!3470450 (findConcatSeparation!2046 (regOne!31758 r!7292) (regTwo!31758 r!7292) (++!13838 Nil!63045 (Cons!63045 (h!69493 s!2326) Nil!63045)) (t!376463 s!2326) s!2326))))

(declare-fun b!5630721 () Bool)

(declare-fun get!21717 (Option!15632) tuple2!65440)

(assert (=> b!5630721 (= e!3470449 (= (++!13838 (_1!36023 (get!21717 lt!2262426)) (_2!36023 (get!21717 lt!2262426))) s!2326))))

(declare-fun b!5630722 () Bool)

(assert (=> b!5630722 (= e!3470452 (Some!15631 (tuple2!65441 Nil!63045 s!2326)))))

(declare-fun b!5630723 () Bool)

(declare-fun res!2384536 () Bool)

(assert (=> b!5630723 (=> (not res!2384536) (not e!3470449))))

(assert (=> b!5630723 (= res!2384536 (matchR!7808 (regOne!31758 r!7292) (_1!36023 (get!21717 lt!2262426))))))

(declare-fun b!5630724 () Bool)

(declare-fun res!2384535 () Bool)

(assert (=> b!5630724 (=> (not res!2384535) (not e!3470449))))

(assert (=> b!5630724 (= res!2384535 (matchR!7808 (regTwo!31758 r!7292) (_2!36023 (get!21717 lt!2262426))))))

(assert (= (and d!1778577 res!2384538) b!5630716))

(assert (= (and d!1778577 c!988757) b!5630722))

(assert (= (and d!1778577 (not c!988757)) b!5630719))

(assert (= (and b!5630719 c!988758) b!5630717))

(assert (= (and b!5630719 (not c!988758)) b!5630720))

(assert (= (and d!1778577 res!2384537) b!5630723))

(assert (= (and b!5630723 res!2384536) b!5630724))

(assert (= (and b!5630724 res!2384535) b!5630721))

(assert (= (and d!1778577 (not res!2384534)) b!5630718))

(declare-fun m!6602110 () Bool)

(assert (=> b!5630723 m!6602110))

(declare-fun m!6602112 () Bool)

(assert (=> b!5630723 m!6602112))

(assert (=> b!5630724 m!6602110))

(declare-fun m!6602114 () Bool)

(assert (=> b!5630724 m!6602114))

(declare-fun m!6602116 () Bool)

(assert (=> b!5630720 m!6602116))

(assert (=> b!5630720 m!6602116))

(declare-fun m!6602118 () Bool)

(assert (=> b!5630720 m!6602118))

(declare-fun m!6602120 () Bool)

(assert (=> b!5630720 m!6602120))

(assert (=> b!5630720 m!6602116))

(declare-fun m!6602122 () Bool)

(assert (=> b!5630720 m!6602122))

(declare-fun m!6602124 () Bool)

(assert (=> b!5630718 m!6602124))

(assert (=> b!5630721 m!6602110))

(declare-fun m!6602126 () Bool)

(assert (=> b!5630721 m!6602126))

(assert (=> d!1778577 m!6602124))

(declare-fun m!6602128 () Bool)

(assert (=> d!1778577 m!6602128))

(declare-fun m!6602130 () Bool)

(assert (=> d!1778577 m!6602130))

(declare-fun m!6602132 () Bool)

(assert (=> b!5630716 m!6602132))

(assert (=> b!5630572 d!1778577))

(declare-fun d!1778593 () Bool)

(assert (=> d!1778593 (= (Exists!2723 lambda!302573) (choose!42676 lambda!302573))))

(declare-fun bs!1303137 () Bool)

(assert (= bs!1303137 d!1778593))

(declare-fun m!6602134 () Bool)

(assert (=> bs!1303137 m!6602134))

(assert (=> b!5630572 d!1778593))

(declare-fun bs!1303143 () Bool)

(declare-fun d!1778595 () Bool)

(assert (= bs!1303143 (and d!1778595 b!5630572)))

(declare-fun lambda!302593 () Int)

(assert (=> bs!1303143 (= lambda!302593 lambda!302572)))

(assert (=> bs!1303143 (not (= lambda!302593 lambda!302573))))

(assert (=> d!1778595 true))

(assert (=> d!1778595 true))

(assert (=> d!1778595 true))

(assert (=> d!1778595 (= (isDefined!12335 (findConcatSeparation!2046 (regOne!31758 r!7292) (regTwo!31758 r!7292) Nil!63045 s!2326 s!2326)) (Exists!2723 lambda!302593))))

(declare-fun lt!2262437 () Unit!156024)

(declare-fun choose!42677 (Regex!15623 Regex!15623 List!63169) Unit!156024)

(assert (=> d!1778595 (= lt!2262437 (choose!42677 (regOne!31758 r!7292) (regTwo!31758 r!7292) s!2326))))

(assert (=> d!1778595 (validRegex!7359 (regOne!31758 r!7292))))

(assert (=> d!1778595 (= (lemmaFindConcatSeparationEquivalentToExists!1810 (regOne!31758 r!7292) (regTwo!31758 r!7292) s!2326) lt!2262437)))

(declare-fun bs!1303144 () Bool)

(assert (= bs!1303144 d!1778595))

(assert (=> bs!1303144 m!6601994))

(assert (=> bs!1303144 m!6601996))

(declare-fun m!6602184 () Bool)

(assert (=> bs!1303144 m!6602184))

(assert (=> bs!1303144 m!6602130))

(declare-fun m!6602186 () Bool)

(assert (=> bs!1303144 m!6602186))

(assert (=> bs!1303144 m!6601994))

(assert (=> b!5630572 d!1778595))

(declare-fun bs!1303150 () Bool)

(declare-fun d!1778609 () Bool)

(assert (= bs!1303150 (and d!1778609 b!5630572)))

(declare-fun lambda!302603 () Int)

(assert (=> bs!1303150 (= lambda!302603 lambda!302572)))

(assert (=> bs!1303150 (not (= lambda!302603 lambda!302573))))

(declare-fun bs!1303151 () Bool)

(assert (= bs!1303151 (and d!1778609 d!1778595)))

(assert (=> bs!1303151 (= lambda!302603 lambda!302593)))

(assert (=> d!1778609 true))

(assert (=> d!1778609 true))

(assert (=> d!1778609 true))

(declare-fun lambda!302605 () Int)

(assert (=> bs!1303150 (not (= lambda!302605 lambda!302572))))

(assert (=> bs!1303150 (= lambda!302605 lambda!302573)))

(assert (=> bs!1303151 (not (= lambda!302605 lambda!302593))))

(declare-fun bs!1303152 () Bool)

(assert (= bs!1303152 d!1778609))

(assert (=> bs!1303152 (not (= lambda!302605 lambda!302603))))

(assert (=> d!1778609 true))

(assert (=> d!1778609 true))

(assert (=> d!1778609 true))

(assert (=> d!1778609 (= (Exists!2723 lambda!302603) (Exists!2723 lambda!302605))))

(declare-fun lt!2262446 () Unit!156024)

(declare-fun choose!42678 (Regex!15623 Regex!15623 List!63169) Unit!156024)

(assert (=> d!1778609 (= lt!2262446 (choose!42678 (regOne!31758 r!7292) (regTwo!31758 r!7292) s!2326))))

(assert (=> d!1778609 (validRegex!7359 (regOne!31758 r!7292))))

(assert (=> d!1778609 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1352 (regOne!31758 r!7292) (regTwo!31758 r!7292) s!2326) lt!2262446)))

(declare-fun m!6602242 () Bool)

(assert (=> bs!1303152 m!6602242))

(declare-fun m!6602244 () Bool)

(assert (=> bs!1303152 m!6602244))

(declare-fun m!6602246 () Bool)

(assert (=> bs!1303152 m!6602246))

(assert (=> bs!1303152 m!6602130))

(assert (=> b!5630572 d!1778609))

(declare-fun d!1778635 () Bool)

(declare-fun isEmpty!34884 (Option!15632) Bool)

(assert (=> d!1778635 (= (isDefined!12335 (findConcatSeparation!2046 (regOne!31758 r!7292) (regTwo!31758 r!7292) Nil!63045 s!2326 s!2326)) (not (isEmpty!34884 (findConcatSeparation!2046 (regOne!31758 r!7292) (regTwo!31758 r!7292) Nil!63045 s!2326 s!2326))))))

(declare-fun bs!1303153 () Bool)

(assert (= bs!1303153 d!1778635))

(assert (=> bs!1303153 m!6601994))

(declare-fun m!6602248 () Bool)

(assert (=> bs!1303153 m!6602248))

(assert (=> b!5630572 d!1778635))

(declare-fun b!5630940 () Bool)

(declare-fun e!3470580 () (InoxSet Context!10014))

(declare-fun e!3470581 () (InoxSet Context!10014))

(assert (=> b!5630940 (= e!3470580 e!3470581)))

(declare-fun c!988829 () Bool)

(assert (=> b!5630940 (= c!988829 ((_ is Concat!24468) (regTwo!31758 (regOne!31758 r!7292))))))

(declare-fun c!988828 () Bool)

(declare-fun call!424470 () (InoxSet Context!10014))

(declare-fun call!424467 () List!63168)

(declare-fun bm!424460 () Bool)

(declare-fun c!988826 () Bool)

(assert (=> bm!424460 (= call!424470 (derivationStepZipperDown!965 (ite c!988828 (regTwo!31759 (regTwo!31758 (regOne!31758 r!7292))) (ite c!988826 (regTwo!31758 (regTwo!31758 (regOne!31758 r!7292))) (ite c!988829 (regOne!31758 (regTwo!31758 (regOne!31758 r!7292))) (reg!15952 (regTwo!31758 (regOne!31758 r!7292)))))) (ite (or c!988828 c!988826) lt!2262406 (Context!10015 call!424467)) (h!69493 s!2326)))))

(declare-fun bm!424461 () Bool)

(declare-fun call!424465 () List!63168)

(declare-fun $colon$colon!1673 (List!63168 Regex!15623) List!63168)

(assert (=> bm!424461 (= call!424465 ($colon$colon!1673 (exprs!5507 lt!2262406) (ite (or c!988826 c!988829) (regTwo!31758 (regTwo!31758 (regOne!31758 r!7292))) (regTwo!31758 (regOne!31758 r!7292)))))))

(declare-fun b!5630941 () Bool)

(declare-fun e!3470582 () (InoxSet Context!10014))

(declare-fun call!424468 () (InoxSet Context!10014))

(assert (=> b!5630941 (= e!3470582 call!424468)))

(declare-fun b!5630942 () Bool)

(declare-fun e!3470583 () (InoxSet Context!10014))

(declare-fun call!424469 () (InoxSet Context!10014))

(assert (=> b!5630942 (= e!3470583 ((_ map or) call!424469 call!424470))))

(declare-fun b!5630943 () Bool)

(assert (=> b!5630943 (= e!3470582 ((as const (Array Context!10014 Bool)) false))))

(declare-fun bm!424462 () Bool)

(assert (=> bm!424462 (= call!424467 call!424465)))

(declare-fun d!1778637 () Bool)

(declare-fun c!988825 () Bool)

(assert (=> d!1778637 (= c!988825 (and ((_ is ElementMatch!15623) (regTwo!31758 (regOne!31758 r!7292))) (= (c!988711 (regTwo!31758 (regOne!31758 r!7292))) (h!69493 s!2326))))))

(declare-fun e!3470584 () (InoxSet Context!10014))

(assert (=> d!1778637 (= (derivationStepZipperDown!965 (regTwo!31758 (regOne!31758 r!7292)) lt!2262406 (h!69493 s!2326)) e!3470584)))

(declare-fun bm!424463 () Bool)

(declare-fun call!424466 () (InoxSet Context!10014))

(assert (=> bm!424463 (= call!424468 call!424466)))

(declare-fun bm!424464 () Bool)

(assert (=> bm!424464 (= call!424466 call!424470)))

(declare-fun b!5630944 () Bool)

(assert (=> b!5630944 (= e!3470584 (store ((as const (Array Context!10014 Bool)) false) lt!2262406 true))))

(declare-fun bm!424465 () Bool)

(assert (=> bm!424465 (= call!424469 (derivationStepZipperDown!965 (ite c!988828 (regOne!31759 (regTwo!31758 (regOne!31758 r!7292))) (regOne!31758 (regTwo!31758 (regOne!31758 r!7292)))) (ite c!988828 lt!2262406 (Context!10015 call!424465)) (h!69493 s!2326)))))

(declare-fun b!5630945 () Bool)

(assert (=> b!5630945 (= e!3470580 ((_ map or) call!424469 call!424466))))

(declare-fun b!5630946 () Bool)

(declare-fun e!3470579 () Bool)

(assert (=> b!5630946 (= c!988826 e!3470579)))

(declare-fun res!2384624 () Bool)

(assert (=> b!5630946 (=> (not res!2384624) (not e!3470579))))

(assert (=> b!5630946 (= res!2384624 ((_ is Concat!24468) (regTwo!31758 (regOne!31758 r!7292))))))

(assert (=> b!5630946 (= e!3470583 e!3470580)))

(declare-fun b!5630947 () Bool)

(assert (=> b!5630947 (= e!3470581 call!424468)))

(declare-fun b!5630948 () Bool)

(assert (=> b!5630948 (= e!3470584 e!3470583)))

(assert (=> b!5630948 (= c!988828 ((_ is Union!15623) (regTwo!31758 (regOne!31758 r!7292))))))

(declare-fun b!5630949 () Bool)

(declare-fun c!988827 () Bool)

(assert (=> b!5630949 (= c!988827 ((_ is Star!15623) (regTwo!31758 (regOne!31758 r!7292))))))

(assert (=> b!5630949 (= e!3470581 e!3470582)))

(declare-fun b!5630950 () Bool)

(assert (=> b!5630950 (= e!3470579 (nullable!5655 (regOne!31758 (regTwo!31758 (regOne!31758 r!7292)))))))

(assert (= (and d!1778637 c!988825) b!5630944))

(assert (= (and d!1778637 (not c!988825)) b!5630948))

(assert (= (and b!5630948 c!988828) b!5630942))

(assert (= (and b!5630948 (not c!988828)) b!5630946))

(assert (= (and b!5630946 res!2384624) b!5630950))

(assert (= (and b!5630946 c!988826) b!5630945))

(assert (= (and b!5630946 (not c!988826)) b!5630940))

(assert (= (and b!5630940 c!988829) b!5630947))

(assert (= (and b!5630940 (not c!988829)) b!5630949))

(assert (= (and b!5630949 c!988827) b!5630941))

(assert (= (and b!5630949 (not c!988827)) b!5630943))

(assert (= (or b!5630947 b!5630941) bm!424462))

(assert (= (or b!5630947 b!5630941) bm!424463))

(assert (= (or b!5630945 bm!424462) bm!424461))

(assert (= (or b!5630945 bm!424463) bm!424464))

(assert (= (or b!5630942 bm!424464) bm!424460))

(assert (= (or b!5630942 b!5630945) bm!424465))

(declare-fun m!6602290 () Bool)

(assert (=> b!5630944 m!6602290))

(declare-fun m!6602292 () Bool)

(assert (=> bm!424461 m!6602292))

(declare-fun m!6602294 () Bool)

(assert (=> bm!424465 m!6602294))

(declare-fun m!6602296 () Bool)

(assert (=> b!5630950 m!6602296))

(declare-fun m!6602298 () Bool)

(assert (=> bm!424460 m!6602298))

(assert (=> b!5630573 d!1778637))

(declare-fun b!5630951 () Bool)

(declare-fun e!3470586 () (InoxSet Context!10014))

(declare-fun e!3470587 () (InoxSet Context!10014))

(assert (=> b!5630951 (= e!3470586 e!3470587)))

(declare-fun c!988834 () Bool)

(assert (=> b!5630951 (= c!988834 ((_ is Concat!24468) (regOne!31758 (regOne!31758 r!7292))))))

(declare-fun c!988831 () Bool)

(declare-fun call!424476 () (InoxSet Context!10014))

(declare-fun bm!424466 () Bool)

(declare-fun c!988833 () Bool)

(declare-fun call!424473 () List!63168)

(assert (=> bm!424466 (= call!424476 (derivationStepZipperDown!965 (ite c!988833 (regTwo!31759 (regOne!31758 (regOne!31758 r!7292))) (ite c!988831 (regTwo!31758 (regOne!31758 (regOne!31758 r!7292))) (ite c!988834 (regOne!31758 (regOne!31758 (regOne!31758 r!7292))) (reg!15952 (regOne!31758 (regOne!31758 r!7292)))))) (ite (or c!988833 c!988831) lt!2262404 (Context!10015 call!424473)) (h!69493 s!2326)))))

(declare-fun call!424471 () List!63168)

(declare-fun bm!424467 () Bool)

(assert (=> bm!424467 (= call!424471 ($colon$colon!1673 (exprs!5507 lt!2262404) (ite (or c!988831 c!988834) (regTwo!31758 (regOne!31758 (regOne!31758 r!7292))) (regOne!31758 (regOne!31758 r!7292)))))))

(declare-fun b!5630952 () Bool)

(declare-fun e!3470588 () (InoxSet Context!10014))

(declare-fun call!424474 () (InoxSet Context!10014))

(assert (=> b!5630952 (= e!3470588 call!424474)))

(declare-fun b!5630953 () Bool)

(declare-fun e!3470589 () (InoxSet Context!10014))

(declare-fun call!424475 () (InoxSet Context!10014))

(assert (=> b!5630953 (= e!3470589 ((_ map or) call!424475 call!424476))))

(declare-fun b!5630954 () Bool)

(assert (=> b!5630954 (= e!3470588 ((as const (Array Context!10014 Bool)) false))))

(declare-fun bm!424468 () Bool)

(assert (=> bm!424468 (= call!424473 call!424471)))

(declare-fun d!1778659 () Bool)

(declare-fun c!988830 () Bool)

(assert (=> d!1778659 (= c!988830 (and ((_ is ElementMatch!15623) (regOne!31758 (regOne!31758 r!7292))) (= (c!988711 (regOne!31758 (regOne!31758 r!7292))) (h!69493 s!2326))))))

(declare-fun e!3470590 () (InoxSet Context!10014))

(assert (=> d!1778659 (= (derivationStepZipperDown!965 (regOne!31758 (regOne!31758 r!7292)) lt!2262404 (h!69493 s!2326)) e!3470590)))

(declare-fun bm!424469 () Bool)

(declare-fun call!424472 () (InoxSet Context!10014))

(assert (=> bm!424469 (= call!424474 call!424472)))

(declare-fun bm!424470 () Bool)

(assert (=> bm!424470 (= call!424472 call!424476)))

(declare-fun b!5630955 () Bool)

(assert (=> b!5630955 (= e!3470590 (store ((as const (Array Context!10014 Bool)) false) lt!2262404 true))))

(declare-fun bm!424471 () Bool)

(assert (=> bm!424471 (= call!424475 (derivationStepZipperDown!965 (ite c!988833 (regOne!31759 (regOne!31758 (regOne!31758 r!7292))) (regOne!31758 (regOne!31758 (regOne!31758 r!7292)))) (ite c!988833 lt!2262404 (Context!10015 call!424471)) (h!69493 s!2326)))))

(declare-fun b!5630956 () Bool)

(assert (=> b!5630956 (= e!3470586 ((_ map or) call!424475 call!424472))))

(declare-fun b!5630957 () Bool)

(declare-fun e!3470585 () Bool)

(assert (=> b!5630957 (= c!988831 e!3470585)))

(declare-fun res!2384625 () Bool)

(assert (=> b!5630957 (=> (not res!2384625) (not e!3470585))))

(assert (=> b!5630957 (= res!2384625 ((_ is Concat!24468) (regOne!31758 (regOne!31758 r!7292))))))

(assert (=> b!5630957 (= e!3470589 e!3470586)))

(declare-fun b!5630958 () Bool)

(assert (=> b!5630958 (= e!3470587 call!424474)))

(declare-fun b!5630959 () Bool)

(assert (=> b!5630959 (= e!3470590 e!3470589)))

(assert (=> b!5630959 (= c!988833 ((_ is Union!15623) (regOne!31758 (regOne!31758 r!7292))))))

(declare-fun b!5630960 () Bool)

(declare-fun c!988832 () Bool)

(assert (=> b!5630960 (= c!988832 ((_ is Star!15623) (regOne!31758 (regOne!31758 r!7292))))))

(assert (=> b!5630960 (= e!3470587 e!3470588)))

(declare-fun b!5630961 () Bool)

(assert (=> b!5630961 (= e!3470585 (nullable!5655 (regOne!31758 (regOne!31758 (regOne!31758 r!7292)))))))

(assert (= (and d!1778659 c!988830) b!5630955))

(assert (= (and d!1778659 (not c!988830)) b!5630959))

(assert (= (and b!5630959 c!988833) b!5630953))

(assert (= (and b!5630959 (not c!988833)) b!5630957))

(assert (= (and b!5630957 res!2384625) b!5630961))

(assert (= (and b!5630957 c!988831) b!5630956))

(assert (= (and b!5630957 (not c!988831)) b!5630951))

(assert (= (and b!5630951 c!988834) b!5630958))

(assert (= (and b!5630951 (not c!988834)) b!5630960))

(assert (= (and b!5630960 c!988832) b!5630952))

(assert (= (and b!5630960 (not c!988832)) b!5630954))

(assert (= (or b!5630958 b!5630952) bm!424468))

(assert (= (or b!5630958 b!5630952) bm!424469))

(assert (= (or b!5630956 bm!424468) bm!424467))

(assert (= (or b!5630956 bm!424469) bm!424470))

(assert (= (or b!5630953 bm!424470) bm!424466))

(assert (= (or b!5630953 b!5630956) bm!424471))

(assert (=> b!5630955 m!6601958))

(declare-fun m!6602300 () Bool)

(assert (=> bm!424467 m!6602300))

(declare-fun m!6602302 () Bool)

(assert (=> bm!424471 m!6602302))

(declare-fun m!6602304 () Bool)

(assert (=> b!5630961 m!6602304))

(declare-fun m!6602306 () Bool)

(assert (=> bm!424466 m!6602306))

(assert (=> b!5630573 d!1778659))

(declare-fun bs!1303165 () Bool)

(declare-fun d!1778661 () Bool)

(assert (= bs!1303165 (and d!1778661 d!1778563)))

(declare-fun lambda!302612 () Int)

(assert (=> bs!1303165 (= lambda!302612 lambda!302580)))

(declare-fun bs!1303166 () Bool)

(assert (= bs!1303166 (and d!1778661 d!1778573)))

(assert (=> bs!1303166 (= lambda!302612 lambda!302581)))

(declare-fun b!5631009 () Bool)

(declare-fun e!3470619 () Bool)

(assert (=> b!5631009 (= e!3470619 (isEmpty!34882 (t!376462 (exprs!5507 (h!69494 zl!343)))))))

(declare-fun b!5631010 () Bool)

(declare-fun e!3470622 () Regex!15623)

(declare-fun e!3470621 () Regex!15623)

(assert (=> b!5631010 (= e!3470622 e!3470621)))

(declare-fun c!988852 () Bool)

(assert (=> b!5631010 (= c!988852 ((_ is Cons!63044) (exprs!5507 (h!69494 zl!343))))))

(declare-fun b!5631011 () Bool)

(assert (=> b!5631011 (= e!3470621 (Concat!24468 (h!69492 (exprs!5507 (h!69494 zl!343))) (generalisedConcat!1238 (t!376462 (exprs!5507 (h!69494 zl!343))))))))

(declare-fun b!5631012 () Bool)

(assert (=> b!5631012 (= e!3470622 (h!69492 (exprs!5507 (h!69494 zl!343))))))

(declare-fun b!5631013 () Bool)

(assert (=> b!5631013 (= e!3470621 EmptyExpr!15623)))

(declare-fun e!3470620 () Bool)

(assert (=> d!1778661 e!3470620))

(declare-fun res!2384645 () Bool)

(assert (=> d!1778661 (=> (not res!2384645) (not e!3470620))))

(declare-fun lt!2262468 () Regex!15623)

(assert (=> d!1778661 (= res!2384645 (validRegex!7359 lt!2262468))))

(assert (=> d!1778661 (= lt!2262468 e!3470622)))

(declare-fun c!988851 () Bool)

(assert (=> d!1778661 (= c!988851 e!3470619)))

(declare-fun res!2384646 () Bool)

(assert (=> d!1778661 (=> (not res!2384646) (not e!3470619))))

(assert (=> d!1778661 (= res!2384646 ((_ is Cons!63044) (exprs!5507 (h!69494 zl!343))))))

(assert (=> d!1778661 (forall!14777 (exprs!5507 (h!69494 zl!343)) lambda!302612)))

(assert (=> d!1778661 (= (generalisedConcat!1238 (exprs!5507 (h!69494 zl!343))) lt!2262468)))

(declare-fun b!5631014 () Bool)

(declare-fun e!3470623 () Bool)

(declare-fun isConcat!687 (Regex!15623) Bool)

(assert (=> b!5631014 (= e!3470623 (isConcat!687 lt!2262468))))

(declare-fun b!5631015 () Bool)

(declare-fun e!3470618 () Bool)

(assert (=> b!5631015 (= e!3470618 e!3470623)))

(declare-fun c!988849 () Bool)

(declare-fun tail!11085 (List!63168) List!63168)

(assert (=> b!5631015 (= c!988849 (isEmpty!34882 (tail!11085 (exprs!5507 (h!69494 zl!343)))))))

(declare-fun b!5631016 () Bool)

(declare-fun head!11990 (List!63168) Regex!15623)

(assert (=> b!5631016 (= e!3470623 (= lt!2262468 (head!11990 (exprs!5507 (h!69494 zl!343)))))))

(declare-fun b!5631017 () Bool)

(declare-fun isEmptyExpr!1164 (Regex!15623) Bool)

(assert (=> b!5631017 (= e!3470618 (isEmptyExpr!1164 lt!2262468))))

(declare-fun b!5631018 () Bool)

(assert (=> b!5631018 (= e!3470620 e!3470618)))

(declare-fun c!988850 () Bool)

(assert (=> b!5631018 (= c!988850 (isEmpty!34882 (exprs!5507 (h!69494 zl!343))))))

(assert (= (and d!1778661 res!2384646) b!5631009))

(assert (= (and d!1778661 c!988851) b!5631012))

(assert (= (and d!1778661 (not c!988851)) b!5631010))

(assert (= (and b!5631010 c!988852) b!5631011))

(assert (= (and b!5631010 (not c!988852)) b!5631013))

(assert (= (and d!1778661 res!2384645) b!5631018))

(assert (= (and b!5631018 c!988850) b!5631017))

(assert (= (and b!5631018 (not c!988850)) b!5631015))

(assert (= (and b!5631015 c!988849) b!5631016))

(assert (= (and b!5631015 (not c!988849)) b!5631014))

(declare-fun m!6602334 () Bool)

(assert (=> b!5631014 m!6602334))

(declare-fun m!6602336 () Bool)

(assert (=> b!5631018 m!6602336))

(declare-fun m!6602338 () Bool)

(assert (=> b!5631011 m!6602338))

(declare-fun m!6602340 () Bool)

(assert (=> b!5631017 m!6602340))

(declare-fun m!6602342 () Bool)

(assert (=> b!5631015 m!6602342))

(assert (=> b!5631015 m!6602342))

(declare-fun m!6602344 () Bool)

(assert (=> b!5631015 m!6602344))

(declare-fun m!6602346 () Bool)

(assert (=> b!5631016 m!6602346))

(declare-fun m!6602348 () Bool)

(assert (=> d!1778661 m!6602348))

(declare-fun m!6602350 () Bool)

(assert (=> d!1778661 m!6602350))

(assert (=> b!5631009 m!6601982))

(assert (=> b!5630591 d!1778661))

(declare-fun d!1778667 () Bool)

(declare-fun c!988855 () Bool)

(declare-fun isEmpty!34885 (List!63169) Bool)

(assert (=> d!1778667 (= c!988855 (isEmpty!34885 (t!376463 s!2326)))))

(declare-fun e!3470628 () Bool)

(assert (=> d!1778667 (= (matchZipper!1761 lt!2262410 (t!376463 s!2326)) e!3470628)))

(declare-fun b!5631027 () Bool)

(declare-fun nullableZipper!1605 ((InoxSet Context!10014)) Bool)

(assert (=> b!5631027 (= e!3470628 (nullableZipper!1605 lt!2262410))))

(declare-fun b!5631028 () Bool)

(declare-fun head!11991 (List!63169) C!31516)

(declare-fun tail!11086 (List!63169) List!63169)

(assert (=> b!5631028 (= e!3470628 (matchZipper!1761 (derivationStepZipper!1710 lt!2262410 (head!11991 (t!376463 s!2326))) (tail!11086 (t!376463 s!2326))))))

(assert (= (and d!1778667 c!988855) b!5631027))

(assert (= (and d!1778667 (not c!988855)) b!5631028))

(declare-fun m!6602358 () Bool)

(assert (=> d!1778667 m!6602358))

(declare-fun m!6602360 () Bool)

(assert (=> b!5631027 m!6602360))

(declare-fun m!6602362 () Bool)

(assert (=> b!5631028 m!6602362))

(assert (=> b!5631028 m!6602362))

(declare-fun m!6602364 () Bool)

(assert (=> b!5631028 m!6602364))

(declare-fun m!6602366 () Bool)

(assert (=> b!5631028 m!6602366))

(assert (=> b!5631028 m!6602364))

(assert (=> b!5631028 m!6602366))

(declare-fun m!6602368 () Bool)

(assert (=> b!5631028 m!6602368))

(assert (=> b!5630592 d!1778667))

(declare-fun d!1778673 () Bool)

(declare-fun lt!2262476 () Regex!15623)

(assert (=> d!1778673 (validRegex!7359 lt!2262476)))

(assert (=> d!1778673 (= lt!2262476 (generalisedUnion!1486 (unfocusZipperList!1051 zl!343)))))

(assert (=> d!1778673 (= (unfocusZipper!1365 zl!343) lt!2262476)))

(declare-fun bs!1303172 () Bool)

(assert (= bs!1303172 d!1778673))

(declare-fun m!6602370 () Bool)

(assert (=> bs!1303172 m!6602370))

(assert (=> bs!1303172 m!6601932))

(assert (=> bs!1303172 m!6601932))

(assert (=> bs!1303172 m!6601934))

(assert (=> b!5630590 d!1778673))

(declare-fun d!1778675 () Bool)

(declare-fun c!988856 () Bool)

(assert (=> d!1778675 (= c!988856 (isEmpty!34885 (t!376463 s!2326)))))

(declare-fun e!3470631 () Bool)

(assert (=> d!1778675 (= (matchZipper!1761 lt!2262402 (t!376463 s!2326)) e!3470631)))

(declare-fun b!5631033 () Bool)

(assert (=> b!5631033 (= e!3470631 (nullableZipper!1605 lt!2262402))))

(declare-fun b!5631034 () Bool)

(assert (=> b!5631034 (= e!3470631 (matchZipper!1761 (derivationStepZipper!1710 lt!2262402 (head!11991 (t!376463 s!2326))) (tail!11086 (t!376463 s!2326))))))

(assert (= (and d!1778675 c!988856) b!5631033))

(assert (= (and d!1778675 (not c!988856)) b!5631034))

(assert (=> d!1778675 m!6602358))

(declare-fun m!6602372 () Bool)

(assert (=> b!5631033 m!6602372))

(assert (=> b!5631034 m!6602362))

(assert (=> b!5631034 m!6602362))

(declare-fun m!6602374 () Bool)

(assert (=> b!5631034 m!6602374))

(assert (=> b!5631034 m!6602366))

(assert (=> b!5631034 m!6602374))

(assert (=> b!5631034 m!6602366))

(declare-fun m!6602376 () Bool)

(assert (=> b!5631034 m!6602376))

(assert (=> b!5630570 d!1778675))

(declare-fun d!1778677 () Bool)

(declare-fun c!988857 () Bool)

(assert (=> d!1778677 (= c!988857 (isEmpty!34885 (t!376463 s!2326)))))

(declare-fun e!3470634 () Bool)

(assert (=> d!1778677 (= (matchZipper!1761 lt!2262389 (t!376463 s!2326)) e!3470634)))

(declare-fun b!5631039 () Bool)

(assert (=> b!5631039 (= e!3470634 (nullableZipper!1605 lt!2262389))))

(declare-fun b!5631040 () Bool)

(assert (=> b!5631040 (= e!3470634 (matchZipper!1761 (derivationStepZipper!1710 lt!2262389 (head!11991 (t!376463 s!2326))) (tail!11086 (t!376463 s!2326))))))

(assert (= (and d!1778677 c!988857) b!5631039))

(assert (= (and d!1778677 (not c!988857)) b!5631040))

(assert (=> d!1778677 m!6602358))

(declare-fun m!6602378 () Bool)

(assert (=> b!5631039 m!6602378))

(assert (=> b!5631040 m!6602362))

(assert (=> b!5631040 m!6602362))

(declare-fun m!6602380 () Bool)

(assert (=> b!5631040 m!6602380))

(assert (=> b!5631040 m!6602366))

(assert (=> b!5631040 m!6602380))

(assert (=> b!5631040 m!6602366))

(declare-fun m!6602382 () Bool)

(assert (=> b!5631040 m!6602382))

(assert (=> b!5630570 d!1778677))

(declare-fun d!1778679 () Bool)

(declare-fun c!988858 () Bool)

(assert (=> d!1778679 (= c!988858 (isEmpty!34885 (t!376463 s!2326)))))

(declare-fun e!3470635 () Bool)

(assert (=> d!1778679 (= (matchZipper!1761 lt!2262383 (t!376463 s!2326)) e!3470635)))

(declare-fun b!5631041 () Bool)

(assert (=> b!5631041 (= e!3470635 (nullableZipper!1605 lt!2262383))))

(declare-fun b!5631042 () Bool)

(assert (=> b!5631042 (= e!3470635 (matchZipper!1761 (derivationStepZipper!1710 lt!2262383 (head!11991 (t!376463 s!2326))) (tail!11086 (t!376463 s!2326))))))

(assert (= (and d!1778679 c!988858) b!5631041))

(assert (= (and d!1778679 (not c!988858)) b!5631042))

(assert (=> d!1778679 m!6602358))

(declare-fun m!6602384 () Bool)

(assert (=> b!5631041 m!6602384))

(assert (=> b!5631042 m!6602362))

(assert (=> b!5631042 m!6602362))

(declare-fun m!6602386 () Bool)

(assert (=> b!5631042 m!6602386))

(assert (=> b!5631042 m!6602366))

(assert (=> b!5631042 m!6602386))

(assert (=> b!5631042 m!6602366))

(declare-fun m!6602388 () Bool)

(assert (=> b!5631042 m!6602388))

(assert (=> b!5630570 d!1778679))

(declare-fun d!1778681 () Bool)

(declare-fun e!3470638 () Bool)

(assert (=> d!1778681 (= (matchZipper!1761 ((_ map or) lt!2262383 lt!2262403) (t!376463 s!2326)) e!3470638)))

(declare-fun res!2384661 () Bool)

(assert (=> d!1778681 (=> res!2384661 e!3470638)))

(assert (=> d!1778681 (= res!2384661 (matchZipper!1761 lt!2262383 (t!376463 s!2326)))))

(declare-fun lt!2262480 () Unit!156024)

(declare-fun choose!42680 ((InoxSet Context!10014) (InoxSet Context!10014) List!63169) Unit!156024)

(assert (=> d!1778681 (= lt!2262480 (choose!42680 lt!2262383 lt!2262403 (t!376463 s!2326)))))

(assert (=> d!1778681 (= (lemmaZipperConcatMatchesSameAsBothZippers!648 lt!2262383 lt!2262403 (t!376463 s!2326)) lt!2262480)))

(declare-fun b!5631045 () Bool)

(assert (=> b!5631045 (= e!3470638 (matchZipper!1761 lt!2262403 (t!376463 s!2326)))))

(assert (= (and d!1778681 (not res!2384661)) b!5631045))

(declare-fun m!6602398 () Bool)

(assert (=> d!1778681 m!6602398))

(assert (=> d!1778681 m!6601942))

(declare-fun m!6602400 () Bool)

(assert (=> d!1778681 m!6602400))

(assert (=> b!5631045 m!6601986))

(assert (=> b!5630570 d!1778681))

(declare-fun d!1778687 () Bool)

(declare-fun nullableFct!1752 (Regex!15623) Bool)

(assert (=> d!1778687 (= (nullable!5655 (regOne!31758 (regOne!31758 r!7292))) (nullableFct!1752 (regOne!31758 (regOne!31758 r!7292))))))

(declare-fun bs!1303179 () Bool)

(assert (= bs!1303179 d!1778687))

(declare-fun m!6602402 () Bool)

(assert (=> bs!1303179 m!6602402))

(assert (=> b!5630568 d!1778687))

(declare-fun d!1778689 () Bool)

(declare-fun dynLambda!24654 (Int Context!10014) (InoxSet Context!10014))

(assert (=> d!1778689 (= (flatMap!1236 lt!2262396 lambda!302574) (dynLambda!24654 lambda!302574 lt!2262404))))

(declare-fun lt!2262483 () Unit!156024)

(declare-fun choose!42681 ((InoxSet Context!10014) Context!10014 Int) Unit!156024)

(assert (=> d!1778689 (= lt!2262483 (choose!42681 lt!2262396 lt!2262404 lambda!302574))))

(assert (=> d!1778689 (= lt!2262396 (store ((as const (Array Context!10014 Bool)) false) lt!2262404 true))))

(assert (=> d!1778689 (= (lemmaFlatMapOnSingletonSet!768 lt!2262396 lt!2262404 lambda!302574) lt!2262483)))

(declare-fun b_lambda!212953 () Bool)

(assert (=> (not b_lambda!212953) (not d!1778689)))

(declare-fun bs!1303180 () Bool)

(assert (= bs!1303180 d!1778689))

(assert (=> bs!1303180 m!6601970))

(declare-fun m!6602420 () Bool)

(assert (=> bs!1303180 m!6602420))

(declare-fun m!6602422 () Bool)

(assert (=> bs!1303180 m!6602422))

(assert (=> bs!1303180 m!6601958))

(assert (=> b!5630586 d!1778689))

(declare-fun d!1778697 () Bool)

(declare-fun c!988869 () Bool)

(assert (=> d!1778697 (= c!988869 (isEmpty!34885 (t!376463 s!2326)))))

(declare-fun e!3470651 () Bool)

(assert (=> d!1778697 (= (matchZipper!1761 lt!2262395 (t!376463 s!2326)) e!3470651)))

(declare-fun b!5631068 () Bool)

(assert (=> b!5631068 (= e!3470651 (nullableZipper!1605 lt!2262395))))

(declare-fun b!5631069 () Bool)

(assert (=> b!5631069 (= e!3470651 (matchZipper!1761 (derivationStepZipper!1710 lt!2262395 (head!11991 (t!376463 s!2326))) (tail!11086 (t!376463 s!2326))))))

(assert (= (and d!1778697 c!988869) b!5631068))

(assert (= (and d!1778697 (not c!988869)) b!5631069))

(assert (=> d!1778697 m!6602358))

(declare-fun m!6602424 () Bool)

(assert (=> b!5631068 m!6602424))

(assert (=> b!5631069 m!6602362))

(assert (=> b!5631069 m!6602362))

(declare-fun m!6602426 () Bool)

(assert (=> b!5631069 m!6602426))

(assert (=> b!5631069 m!6602366))

(assert (=> b!5631069 m!6602426))

(assert (=> b!5631069 m!6602366))

(declare-fun m!6602428 () Bool)

(assert (=> b!5631069 m!6602428))

(assert (=> b!5630586 d!1778697))

(declare-fun d!1778699 () Bool)

(declare-fun c!988870 () Bool)

(assert (=> d!1778699 (= c!988870 (isEmpty!34885 (t!376463 s!2326)))))

(declare-fun e!3470652 () Bool)

(assert (=> d!1778699 (= (matchZipper!1761 lt!2262397 (t!376463 s!2326)) e!3470652)))

(declare-fun b!5631070 () Bool)

(assert (=> b!5631070 (= e!3470652 (nullableZipper!1605 lt!2262397))))

(declare-fun b!5631071 () Bool)

(assert (=> b!5631071 (= e!3470652 (matchZipper!1761 (derivationStepZipper!1710 lt!2262397 (head!11991 (t!376463 s!2326))) (tail!11086 (t!376463 s!2326))))))

(assert (= (and d!1778699 c!988870) b!5631070))

(assert (= (and d!1778699 (not c!988870)) b!5631071))

(assert (=> d!1778699 m!6602358))

(declare-fun m!6602432 () Bool)

(assert (=> b!5631070 m!6602432))

(assert (=> b!5631071 m!6602362))

(assert (=> b!5631071 m!6602362))

(declare-fun m!6602434 () Bool)

(assert (=> b!5631071 m!6602434))

(assert (=> b!5631071 m!6602366))

(assert (=> b!5631071 m!6602434))

(assert (=> b!5631071 m!6602366))

(declare-fun m!6602436 () Bool)

(assert (=> b!5631071 m!6602436))

(assert (=> b!5630586 d!1778699))

(declare-fun d!1778701 () Bool)

(declare-fun e!3470655 () Bool)

(assert (=> d!1778701 (= (matchZipper!1761 ((_ map or) lt!2262383 lt!2262410) (t!376463 s!2326)) e!3470655)))

(declare-fun res!2384664 () Bool)

(assert (=> d!1778701 (=> res!2384664 e!3470655)))

(assert (=> d!1778701 (= res!2384664 (matchZipper!1761 lt!2262383 (t!376463 s!2326)))))

(declare-fun lt!2262484 () Unit!156024)

(assert (=> d!1778701 (= lt!2262484 (choose!42680 lt!2262383 lt!2262410 (t!376463 s!2326)))))

(assert (=> d!1778701 (= (lemmaZipperConcatMatchesSameAsBothZippers!648 lt!2262383 lt!2262410 (t!376463 s!2326)) lt!2262484)))

(declare-fun b!5631076 () Bool)

(assert (=> b!5631076 (= e!3470655 (matchZipper!1761 lt!2262410 (t!376463 s!2326)))))

(assert (= (and d!1778701 (not res!2384664)) b!5631076))

(declare-fun m!6602438 () Bool)

(assert (=> d!1778701 m!6602438))

(assert (=> d!1778701 m!6601942))

(declare-fun m!6602440 () Bool)

(assert (=> d!1778701 m!6602440))

(assert (=> b!5631076 m!6601960))

(assert (=> b!5630586 d!1778701))

(declare-fun b!5631137 () Bool)

(declare-fun e!3470685 () (InoxSet Context!10014))

(declare-fun call!424491 () (InoxSet Context!10014))

(assert (=> b!5631137 (= e!3470685 call!424491)))

(declare-fun b!5631138 () Bool)

(declare-fun e!3470683 () (InoxSet Context!10014))

(assert (=> b!5631138 (= e!3470683 e!3470685)))

(declare-fun c!988875 () Bool)

(assert (=> b!5631138 (= c!988875 ((_ is Cons!63044) (exprs!5507 lt!2262404)))))

(declare-fun b!5631139 () Bool)

(assert (=> b!5631139 (= e!3470685 ((as const (Array Context!10014 Bool)) false))))

(declare-fun bm!424486 () Bool)

(assert (=> bm!424486 (= call!424491 (derivationStepZipperDown!965 (h!69492 (exprs!5507 lt!2262404)) (Context!10015 (t!376462 (exprs!5507 lt!2262404))) (h!69493 s!2326)))))

(declare-fun b!5631140 () Bool)

(assert (=> b!5631140 (= e!3470683 ((_ map or) call!424491 (derivationStepZipperUp!891 (Context!10015 (t!376462 (exprs!5507 lt!2262404))) (h!69493 s!2326))))))

(declare-fun b!5631141 () Bool)

(declare-fun e!3470684 () Bool)

(assert (=> b!5631141 (= e!3470684 (nullable!5655 (h!69492 (exprs!5507 lt!2262404))))))

(declare-fun d!1778703 () Bool)

(declare-fun c!988876 () Bool)

(assert (=> d!1778703 (= c!988876 e!3470684)))

(declare-fun res!2384667 () Bool)

(assert (=> d!1778703 (=> (not res!2384667) (not e!3470684))))

(assert (=> d!1778703 (= res!2384667 ((_ is Cons!63044) (exprs!5507 lt!2262404)))))

(assert (=> d!1778703 (= (derivationStepZipperUp!891 lt!2262404 (h!69493 s!2326)) e!3470683)))

(assert (= (and d!1778703 res!2384667) b!5631141))

(assert (= (and d!1778703 c!988876) b!5631140))

(assert (= (and d!1778703 (not c!988876)) b!5631138))

(assert (= (and b!5631138 c!988875) b!5631137))

(assert (= (and b!5631138 (not c!988875)) b!5631139))

(assert (= (or b!5631140 b!5631137) bm!424486))

(declare-fun m!6602446 () Bool)

(assert (=> bm!424486 m!6602446))

(declare-fun m!6602448 () Bool)

(assert (=> b!5631140 m!6602448))

(declare-fun m!6602450 () Bool)

(assert (=> b!5631141 m!6602450))

(assert (=> b!5630586 d!1778703))

(declare-fun d!1778711 () Bool)

(declare-fun choose!42684 ((InoxSet Context!10014) Int) (InoxSet Context!10014))

(assert (=> d!1778711 (= (flatMap!1236 lt!2262396 lambda!302574) (choose!42684 lt!2262396 lambda!302574))))

(declare-fun bs!1303189 () Bool)

(assert (= bs!1303189 d!1778711))

(declare-fun m!6602452 () Bool)

(assert (=> bs!1303189 m!6602452))

(assert (=> b!5630586 d!1778711))

(declare-fun d!1778713 () Bool)

(declare-fun c!988877 () Bool)

(assert (=> d!1778713 (= c!988877 (isEmpty!34885 (t!376463 s!2326)))))

(declare-fun e!3470686 () Bool)

(assert (=> d!1778713 (= (matchZipper!1761 lt!2262407 (t!376463 s!2326)) e!3470686)))

(declare-fun b!5631142 () Bool)

(assert (=> b!5631142 (= e!3470686 (nullableZipper!1605 lt!2262407))))

(declare-fun b!5631143 () Bool)

(assert (=> b!5631143 (= e!3470686 (matchZipper!1761 (derivationStepZipper!1710 lt!2262407 (head!11991 (t!376463 s!2326))) (tail!11086 (t!376463 s!2326))))))

(assert (= (and d!1778713 c!988877) b!5631142))

(assert (= (and d!1778713 (not c!988877)) b!5631143))

(assert (=> d!1778713 m!6602358))

(declare-fun m!6602454 () Bool)

(assert (=> b!5631142 m!6602454))

(assert (=> b!5631143 m!6602362))

(assert (=> b!5631143 m!6602362))

(declare-fun m!6602456 () Bool)

(assert (=> b!5631143 m!6602456))

(assert (=> b!5631143 m!6602366))

(assert (=> b!5631143 m!6602456))

(assert (=> b!5631143 m!6602366))

(declare-fun m!6602458 () Bool)

(assert (=> b!5631143 m!6602458))

(assert (=> b!5630567 d!1778713))

(declare-fun d!1778715 () Bool)

(declare-fun e!3470689 () Bool)

(assert (=> d!1778715 e!3470689))

(declare-fun res!2384670 () Bool)

(assert (=> d!1778715 (=> (not res!2384670) (not e!3470689))))

(declare-fun lt!2262487 () List!63170)

(declare-fun noDuplicate!1586 (List!63170) Bool)

(assert (=> d!1778715 (= res!2384670 (noDuplicate!1586 lt!2262487))))

(declare-fun choose!42685 ((InoxSet Context!10014)) List!63170)

(assert (=> d!1778715 (= lt!2262487 (choose!42685 z!1189))))

(assert (=> d!1778715 (= (toList!9407 z!1189) lt!2262487)))

(declare-fun b!5631146 () Bool)

(declare-fun content!11399 (List!63170) (InoxSet Context!10014))

(assert (=> b!5631146 (= e!3470689 (= (content!11399 lt!2262487) z!1189))))

(assert (= (and d!1778715 res!2384670) b!5631146))

(declare-fun m!6602460 () Bool)

(assert (=> d!1778715 m!6602460))

(declare-fun m!6602462 () Bool)

(assert (=> d!1778715 m!6602462))

(declare-fun m!6602464 () Bool)

(assert (=> b!5631146 m!6602464))

(assert (=> b!5630565 d!1778715))

(declare-fun d!1778717 () Bool)

(assert (=> d!1778717 (= (isEmpty!34881 (t!376464 zl!343)) ((_ is Nil!63046) (t!376464 zl!343)))))

(assert (=> b!5630566 d!1778717))

(declare-fun d!1778719 () Bool)

(assert (=> d!1778719 (= (flatMap!1236 z!1189 lambda!302574) (choose!42684 z!1189 lambda!302574))))

(declare-fun bs!1303190 () Bool)

(assert (= bs!1303190 d!1778719))

(declare-fun m!6602466 () Bool)

(assert (=> bs!1303190 m!6602466))

(assert (=> b!5630585 d!1778719))

(declare-fun d!1778721 () Bool)

(assert (=> d!1778721 (= (nullable!5655 (h!69492 (exprs!5507 (h!69494 zl!343)))) (nullableFct!1752 (h!69492 (exprs!5507 (h!69494 zl!343)))))))

(declare-fun bs!1303191 () Bool)

(assert (= bs!1303191 d!1778721))

(declare-fun m!6602468 () Bool)

(assert (=> bs!1303191 m!6602468))

(assert (=> b!5630585 d!1778721))

(declare-fun d!1778723 () Bool)

(assert (=> d!1778723 (= (flatMap!1236 z!1189 lambda!302574) (dynLambda!24654 lambda!302574 (h!69494 zl!343)))))

(declare-fun lt!2262488 () Unit!156024)

(assert (=> d!1778723 (= lt!2262488 (choose!42681 z!1189 (h!69494 zl!343) lambda!302574))))

(assert (=> d!1778723 (= z!1189 (store ((as const (Array Context!10014 Bool)) false) (h!69494 zl!343) true))))

(assert (=> d!1778723 (= (lemmaFlatMapOnSingletonSet!768 z!1189 (h!69494 zl!343) lambda!302574) lt!2262488)))

(declare-fun b_lambda!212961 () Bool)

(assert (=> (not b_lambda!212961) (not d!1778723)))

(declare-fun bs!1303192 () Bool)

(assert (= bs!1303192 d!1778723))

(assert (=> bs!1303192 m!6602022))

(declare-fun m!6602470 () Bool)

(assert (=> bs!1303192 m!6602470))

(declare-fun m!6602472 () Bool)

(assert (=> bs!1303192 m!6602472))

(declare-fun m!6602474 () Bool)

(assert (=> bs!1303192 m!6602474))

(assert (=> b!5630585 d!1778723))

(declare-fun b!5631147 () Bool)

(declare-fun e!3470692 () (InoxSet Context!10014))

(declare-fun call!424492 () (InoxSet Context!10014))

(assert (=> b!5631147 (= e!3470692 call!424492)))

(declare-fun b!5631148 () Bool)

(declare-fun e!3470690 () (InoxSet Context!10014))

(assert (=> b!5631148 (= e!3470690 e!3470692)))

(declare-fun c!988878 () Bool)

(assert (=> b!5631148 (= c!988878 ((_ is Cons!63044) (exprs!5507 (h!69494 zl!343))))))

(declare-fun b!5631149 () Bool)

(assert (=> b!5631149 (= e!3470692 ((as const (Array Context!10014 Bool)) false))))

(declare-fun bm!424487 () Bool)

(assert (=> bm!424487 (= call!424492 (derivationStepZipperDown!965 (h!69492 (exprs!5507 (h!69494 zl!343))) (Context!10015 (t!376462 (exprs!5507 (h!69494 zl!343)))) (h!69493 s!2326)))))

(declare-fun b!5631150 () Bool)

(assert (=> b!5631150 (= e!3470690 ((_ map or) call!424492 (derivationStepZipperUp!891 (Context!10015 (t!376462 (exprs!5507 (h!69494 zl!343)))) (h!69493 s!2326))))))

(declare-fun b!5631151 () Bool)

(declare-fun e!3470691 () Bool)

(assert (=> b!5631151 (= e!3470691 (nullable!5655 (h!69492 (exprs!5507 (h!69494 zl!343)))))))

(declare-fun d!1778725 () Bool)

(declare-fun c!988879 () Bool)

(assert (=> d!1778725 (= c!988879 e!3470691)))

(declare-fun res!2384671 () Bool)

(assert (=> d!1778725 (=> (not res!2384671) (not e!3470691))))

(assert (=> d!1778725 (= res!2384671 ((_ is Cons!63044) (exprs!5507 (h!69494 zl!343))))))

(assert (=> d!1778725 (= (derivationStepZipperUp!891 (h!69494 zl!343) (h!69493 s!2326)) e!3470690)))

(assert (= (and d!1778725 res!2384671) b!5631151))

(assert (= (and d!1778725 c!988879) b!5631150))

(assert (= (and d!1778725 (not c!988879)) b!5631148))

(assert (= (and b!5631148 c!988878) b!5631147))

(assert (= (and b!5631148 (not c!988878)) b!5631149))

(assert (= (or b!5631150 b!5631147) bm!424487))

(declare-fun m!6602476 () Bool)

(assert (=> bm!424487 m!6602476))

(declare-fun m!6602478 () Bool)

(assert (=> b!5631150 m!6602478))

(assert (=> b!5631151 m!6602020))

(assert (=> b!5630585 d!1778725))

(declare-fun b!5631152 () Bool)

(declare-fun e!3470695 () (InoxSet Context!10014))

(declare-fun call!424493 () (InoxSet Context!10014))

(assert (=> b!5631152 (= e!3470695 call!424493)))

(declare-fun b!5631153 () Bool)

(declare-fun e!3470693 () (InoxSet Context!10014))

(assert (=> b!5631153 (= e!3470693 e!3470695)))

(declare-fun c!988880 () Bool)

(assert (=> b!5631153 (= c!988880 ((_ is Cons!63044) (exprs!5507 lt!2262406)))))

(declare-fun b!5631154 () Bool)

(assert (=> b!5631154 (= e!3470695 ((as const (Array Context!10014 Bool)) false))))

(declare-fun bm!424488 () Bool)

(assert (=> bm!424488 (= call!424493 (derivationStepZipperDown!965 (h!69492 (exprs!5507 lt!2262406)) (Context!10015 (t!376462 (exprs!5507 lt!2262406))) (h!69493 s!2326)))))

(declare-fun b!5631155 () Bool)

(assert (=> b!5631155 (= e!3470693 ((_ map or) call!424493 (derivationStepZipperUp!891 (Context!10015 (t!376462 (exprs!5507 lt!2262406))) (h!69493 s!2326))))))

(declare-fun b!5631156 () Bool)

(declare-fun e!3470694 () Bool)

(assert (=> b!5631156 (= e!3470694 (nullable!5655 (h!69492 (exprs!5507 lt!2262406))))))

(declare-fun d!1778727 () Bool)

(declare-fun c!988881 () Bool)

(assert (=> d!1778727 (= c!988881 e!3470694)))

(declare-fun res!2384672 () Bool)

(assert (=> d!1778727 (=> (not res!2384672) (not e!3470694))))

(assert (=> d!1778727 (= res!2384672 ((_ is Cons!63044) (exprs!5507 lt!2262406)))))

(assert (=> d!1778727 (= (derivationStepZipperUp!891 lt!2262406 (h!69493 s!2326)) e!3470693)))

(assert (= (and d!1778727 res!2384672) b!5631156))

(assert (= (and d!1778727 c!988881) b!5631155))

(assert (= (and d!1778727 (not c!988881)) b!5631153))

(assert (= (and b!5631153 c!988880) b!5631152))

(assert (= (and b!5631153 (not c!988880)) b!5631154))

(assert (= (or b!5631155 b!5631152) bm!424488))

(declare-fun m!6602480 () Bool)

(assert (=> bm!424488 m!6602480))

(declare-fun m!6602482 () Bool)

(assert (=> b!5631155 m!6602482))

(declare-fun m!6602484 () Bool)

(assert (=> b!5631156 m!6602484))

(assert (=> b!5630585 d!1778727))

(declare-fun b!5631157 () Bool)

(declare-fun e!3470697 () (InoxSet Context!10014))

(declare-fun e!3470698 () (InoxSet Context!10014))

(assert (=> b!5631157 (= e!3470697 e!3470698)))

(declare-fun c!988886 () Bool)

(assert (=> b!5631157 (= c!988886 ((_ is Concat!24468) (h!69492 (exprs!5507 (h!69494 zl!343)))))))

(declare-fun call!424499 () (InoxSet Context!10014))

(declare-fun bm!424489 () Bool)

(declare-fun call!424496 () List!63168)

(declare-fun c!988885 () Bool)

(declare-fun c!988883 () Bool)

(assert (=> bm!424489 (= call!424499 (derivationStepZipperDown!965 (ite c!988885 (regTwo!31759 (h!69492 (exprs!5507 (h!69494 zl!343)))) (ite c!988883 (regTwo!31758 (h!69492 (exprs!5507 (h!69494 zl!343)))) (ite c!988886 (regOne!31758 (h!69492 (exprs!5507 (h!69494 zl!343)))) (reg!15952 (h!69492 (exprs!5507 (h!69494 zl!343))))))) (ite (or c!988885 c!988883) lt!2262406 (Context!10015 call!424496)) (h!69493 s!2326)))))

(declare-fun bm!424490 () Bool)

(declare-fun call!424494 () List!63168)

(assert (=> bm!424490 (= call!424494 ($colon$colon!1673 (exprs!5507 lt!2262406) (ite (or c!988883 c!988886) (regTwo!31758 (h!69492 (exprs!5507 (h!69494 zl!343)))) (h!69492 (exprs!5507 (h!69494 zl!343))))))))

(declare-fun b!5631158 () Bool)

(declare-fun e!3470699 () (InoxSet Context!10014))

(declare-fun call!424497 () (InoxSet Context!10014))

(assert (=> b!5631158 (= e!3470699 call!424497)))

(declare-fun b!5631159 () Bool)

(declare-fun e!3470700 () (InoxSet Context!10014))

(declare-fun call!424498 () (InoxSet Context!10014))

(assert (=> b!5631159 (= e!3470700 ((_ map or) call!424498 call!424499))))

(declare-fun b!5631160 () Bool)

(assert (=> b!5631160 (= e!3470699 ((as const (Array Context!10014 Bool)) false))))

(declare-fun bm!424491 () Bool)

(assert (=> bm!424491 (= call!424496 call!424494)))

(declare-fun d!1778729 () Bool)

(declare-fun c!988882 () Bool)

(assert (=> d!1778729 (= c!988882 (and ((_ is ElementMatch!15623) (h!69492 (exprs!5507 (h!69494 zl!343)))) (= (c!988711 (h!69492 (exprs!5507 (h!69494 zl!343)))) (h!69493 s!2326))))))

(declare-fun e!3470701 () (InoxSet Context!10014))

(assert (=> d!1778729 (= (derivationStepZipperDown!965 (h!69492 (exprs!5507 (h!69494 zl!343))) lt!2262406 (h!69493 s!2326)) e!3470701)))

(declare-fun bm!424492 () Bool)

(declare-fun call!424495 () (InoxSet Context!10014))

(assert (=> bm!424492 (= call!424497 call!424495)))

(declare-fun bm!424493 () Bool)

(assert (=> bm!424493 (= call!424495 call!424499)))

(declare-fun b!5631161 () Bool)

(assert (=> b!5631161 (= e!3470701 (store ((as const (Array Context!10014 Bool)) false) lt!2262406 true))))

(declare-fun bm!424494 () Bool)

(assert (=> bm!424494 (= call!424498 (derivationStepZipperDown!965 (ite c!988885 (regOne!31759 (h!69492 (exprs!5507 (h!69494 zl!343)))) (regOne!31758 (h!69492 (exprs!5507 (h!69494 zl!343))))) (ite c!988885 lt!2262406 (Context!10015 call!424494)) (h!69493 s!2326)))))

(declare-fun b!5631162 () Bool)

(assert (=> b!5631162 (= e!3470697 ((_ map or) call!424498 call!424495))))

(declare-fun b!5631163 () Bool)

(declare-fun e!3470696 () Bool)

(assert (=> b!5631163 (= c!988883 e!3470696)))

(declare-fun res!2384673 () Bool)

(assert (=> b!5631163 (=> (not res!2384673) (not e!3470696))))

(assert (=> b!5631163 (= res!2384673 ((_ is Concat!24468) (h!69492 (exprs!5507 (h!69494 zl!343)))))))

(assert (=> b!5631163 (= e!3470700 e!3470697)))

(declare-fun b!5631164 () Bool)

(assert (=> b!5631164 (= e!3470698 call!424497)))

(declare-fun b!5631165 () Bool)

(assert (=> b!5631165 (= e!3470701 e!3470700)))

(assert (=> b!5631165 (= c!988885 ((_ is Union!15623) (h!69492 (exprs!5507 (h!69494 zl!343)))))))

(declare-fun b!5631166 () Bool)

(declare-fun c!988884 () Bool)

(assert (=> b!5631166 (= c!988884 ((_ is Star!15623) (h!69492 (exprs!5507 (h!69494 zl!343)))))))

(assert (=> b!5631166 (= e!3470698 e!3470699)))

(declare-fun b!5631167 () Bool)

(assert (=> b!5631167 (= e!3470696 (nullable!5655 (regOne!31758 (h!69492 (exprs!5507 (h!69494 zl!343))))))))

(assert (= (and d!1778729 c!988882) b!5631161))

(assert (= (and d!1778729 (not c!988882)) b!5631165))

(assert (= (and b!5631165 c!988885) b!5631159))

(assert (= (and b!5631165 (not c!988885)) b!5631163))

(assert (= (and b!5631163 res!2384673) b!5631167))

(assert (= (and b!5631163 c!988883) b!5631162))

(assert (= (and b!5631163 (not c!988883)) b!5631157))

(assert (= (and b!5631157 c!988886) b!5631164))

(assert (= (and b!5631157 (not c!988886)) b!5631166))

(assert (= (and b!5631166 c!988884) b!5631158))

(assert (= (and b!5631166 (not c!988884)) b!5631160))

(assert (= (or b!5631164 b!5631158) bm!424491))

(assert (= (or b!5631164 b!5631158) bm!424492))

(assert (= (or b!5631162 bm!424491) bm!424490))

(assert (= (or b!5631162 bm!424492) bm!424493))

(assert (= (or b!5631159 bm!424493) bm!424489))

(assert (= (or b!5631159 b!5631162) bm!424494))

(assert (=> b!5631161 m!6602290))

(declare-fun m!6602486 () Bool)

(assert (=> bm!424490 m!6602486))

(declare-fun m!6602488 () Bool)

(assert (=> bm!424494 m!6602488))

(declare-fun m!6602490 () Bool)

(assert (=> b!5631167 m!6602490))

(declare-fun m!6602492 () Bool)

(assert (=> bm!424489 m!6602492))

(assert (=> b!5630585 d!1778729))

(declare-fun b!5631168 () Bool)

(declare-fun e!3470704 () (InoxSet Context!10014))

(declare-fun call!424500 () (InoxSet Context!10014))

(assert (=> b!5631168 (= e!3470704 call!424500)))

(declare-fun b!5631169 () Bool)

(declare-fun e!3470702 () (InoxSet Context!10014))

(assert (=> b!5631169 (= e!3470702 e!3470704)))

(declare-fun c!988887 () Bool)

(assert (=> b!5631169 (= c!988887 ((_ is Cons!63044) (exprs!5507 (Context!10015 (Cons!63044 (h!69492 (exprs!5507 (h!69494 zl!343))) (t!376462 (exprs!5507 (h!69494 zl!343))))))))))

(declare-fun b!5631170 () Bool)

(assert (=> b!5631170 (= e!3470704 ((as const (Array Context!10014 Bool)) false))))

(declare-fun bm!424495 () Bool)

(assert (=> bm!424495 (= call!424500 (derivationStepZipperDown!965 (h!69492 (exprs!5507 (Context!10015 (Cons!63044 (h!69492 (exprs!5507 (h!69494 zl!343))) (t!376462 (exprs!5507 (h!69494 zl!343))))))) (Context!10015 (t!376462 (exprs!5507 (Context!10015 (Cons!63044 (h!69492 (exprs!5507 (h!69494 zl!343))) (t!376462 (exprs!5507 (h!69494 zl!343)))))))) (h!69493 s!2326)))))

(declare-fun b!5631171 () Bool)

(assert (=> b!5631171 (= e!3470702 ((_ map or) call!424500 (derivationStepZipperUp!891 (Context!10015 (t!376462 (exprs!5507 (Context!10015 (Cons!63044 (h!69492 (exprs!5507 (h!69494 zl!343))) (t!376462 (exprs!5507 (h!69494 zl!343)))))))) (h!69493 s!2326))))))

(declare-fun b!5631172 () Bool)

(declare-fun e!3470703 () Bool)

(assert (=> b!5631172 (= e!3470703 (nullable!5655 (h!69492 (exprs!5507 (Context!10015 (Cons!63044 (h!69492 (exprs!5507 (h!69494 zl!343))) (t!376462 (exprs!5507 (h!69494 zl!343)))))))))))

(declare-fun d!1778731 () Bool)

(declare-fun c!988888 () Bool)

(assert (=> d!1778731 (= c!988888 e!3470703)))

(declare-fun res!2384674 () Bool)

(assert (=> d!1778731 (=> (not res!2384674) (not e!3470703))))

(assert (=> d!1778731 (= res!2384674 ((_ is Cons!63044) (exprs!5507 (Context!10015 (Cons!63044 (h!69492 (exprs!5507 (h!69494 zl!343))) (t!376462 (exprs!5507 (h!69494 zl!343))))))))))

(assert (=> d!1778731 (= (derivationStepZipperUp!891 (Context!10015 (Cons!63044 (h!69492 (exprs!5507 (h!69494 zl!343))) (t!376462 (exprs!5507 (h!69494 zl!343))))) (h!69493 s!2326)) e!3470702)))

(assert (= (and d!1778731 res!2384674) b!5631172))

(assert (= (and d!1778731 c!988888) b!5631171))

(assert (= (and d!1778731 (not c!988888)) b!5631169))

(assert (= (and b!5631169 c!988887) b!5631168))

(assert (= (and b!5631169 (not c!988887)) b!5631170))

(assert (= (or b!5631171 b!5631168) bm!424495))

(declare-fun m!6602494 () Bool)

(assert (=> bm!424495 m!6602494))

(declare-fun m!6602496 () Bool)

(assert (=> b!5631171 m!6602496))

(declare-fun m!6602498 () Bool)

(assert (=> b!5631172 m!6602498))

(assert (=> b!5630585 d!1778731))

(declare-fun bs!1303193 () Bool)

(declare-fun b!5631205 () Bool)

(assert (= bs!1303193 (and b!5631205 d!1778609)))

(declare-fun lambda!302627 () Int)

(assert (=> bs!1303193 (not (= lambda!302627 lambda!302605))))

(declare-fun bs!1303194 () Bool)

(assert (= bs!1303194 (and b!5631205 b!5630572)))

(assert (=> bs!1303194 (not (= lambda!302627 lambda!302573))))

(assert (=> bs!1303193 (not (= lambda!302627 lambda!302603))))

(declare-fun bs!1303195 () Bool)

(assert (= bs!1303195 (and b!5631205 d!1778595)))

(assert (=> bs!1303195 (not (= lambda!302627 lambda!302593))))

(assert (=> bs!1303194 (not (= lambda!302627 lambda!302572))))

(assert (=> b!5631205 true))

(assert (=> b!5631205 true))

(declare-fun bs!1303196 () Bool)

(declare-fun b!5631209 () Bool)

(assert (= bs!1303196 (and b!5631209 d!1778609)))

(declare-fun lambda!302628 () Int)

(assert (=> bs!1303196 (= lambda!302628 lambda!302605)))

(declare-fun bs!1303197 () Bool)

(assert (= bs!1303197 (and b!5631209 b!5631205)))

(assert (=> bs!1303197 (not (= lambda!302628 lambda!302627))))

(declare-fun bs!1303198 () Bool)

(assert (= bs!1303198 (and b!5631209 b!5630572)))

(assert (=> bs!1303198 (= lambda!302628 lambda!302573)))

(assert (=> bs!1303196 (not (= lambda!302628 lambda!302603))))

(declare-fun bs!1303199 () Bool)

(assert (= bs!1303199 (and b!5631209 d!1778595)))

(assert (=> bs!1303199 (not (= lambda!302628 lambda!302593))))

(assert (=> bs!1303198 (not (= lambda!302628 lambda!302572))))

(assert (=> b!5631209 true))

(assert (=> b!5631209 true))

(declare-fun e!3470729 () Bool)

(declare-fun call!424506 () Bool)

(assert (=> b!5631205 (= e!3470729 call!424506)))

(declare-fun b!5631206 () Bool)

(declare-fun c!988897 () Bool)

(assert (=> b!5631206 (= c!988897 ((_ is Union!15623) r!7292))))

(declare-fun e!3470723 () Bool)

(declare-fun e!3470724 () Bool)

(assert (=> b!5631206 (= e!3470723 e!3470724)))

(declare-fun d!1778733 () Bool)

(declare-fun c!988898 () Bool)

(assert (=> d!1778733 (= c!988898 ((_ is EmptyExpr!15623) r!7292))))

(declare-fun e!3470728 () Bool)

(assert (=> d!1778733 (= (matchRSpec!2726 r!7292 s!2326) e!3470728)))

(declare-fun b!5631207 () Bool)

(declare-fun c!988899 () Bool)

(assert (=> b!5631207 (= c!988899 ((_ is ElementMatch!15623) r!7292))))

(declare-fun e!3470725 () Bool)

(assert (=> b!5631207 (= e!3470725 e!3470723)))

(declare-fun bm!424500 () Bool)

(declare-fun c!988900 () Bool)

(assert (=> bm!424500 (= call!424506 (Exists!2723 (ite c!988900 lambda!302627 lambda!302628)))))

(declare-fun b!5631208 () Bool)

(assert (=> b!5631208 (= e!3470723 (= s!2326 (Cons!63045 (c!988711 r!7292) Nil!63045)))))

(declare-fun e!3470727 () Bool)

(assert (=> b!5631209 (= e!3470727 call!424506)))

(declare-fun b!5631210 () Bool)

(assert (=> b!5631210 (= e!3470728 e!3470725)))

(declare-fun res!2384691 () Bool)

(assert (=> b!5631210 (= res!2384691 (not ((_ is EmptyLang!15623) r!7292)))))

(assert (=> b!5631210 (=> (not res!2384691) (not e!3470725))))

(declare-fun bm!424501 () Bool)

(declare-fun call!424505 () Bool)

(assert (=> bm!424501 (= call!424505 (isEmpty!34885 s!2326))))

(declare-fun b!5631211 () Bool)

(declare-fun e!3470726 () Bool)

(assert (=> b!5631211 (= e!3470726 (matchRSpec!2726 (regTwo!31759 r!7292) s!2326))))

(declare-fun b!5631212 () Bool)

(assert (=> b!5631212 (= e!3470724 e!3470727)))

(assert (=> b!5631212 (= c!988900 ((_ is Star!15623) r!7292))))

(declare-fun b!5631213 () Bool)

(assert (=> b!5631213 (= e!3470724 e!3470726)))

(declare-fun res!2384692 () Bool)

(assert (=> b!5631213 (= res!2384692 (matchRSpec!2726 (regOne!31759 r!7292) s!2326))))

(assert (=> b!5631213 (=> res!2384692 e!3470726)))

(declare-fun b!5631214 () Bool)

(declare-fun res!2384693 () Bool)

(assert (=> b!5631214 (=> res!2384693 e!3470729)))

(assert (=> b!5631214 (= res!2384693 call!424505)))

(assert (=> b!5631214 (= e!3470727 e!3470729)))

(declare-fun b!5631215 () Bool)

(assert (=> b!5631215 (= e!3470728 call!424505)))

(assert (= (and d!1778733 c!988898) b!5631215))

(assert (= (and d!1778733 (not c!988898)) b!5631210))

(assert (= (and b!5631210 res!2384691) b!5631207))

(assert (= (and b!5631207 c!988899) b!5631208))

(assert (= (and b!5631207 (not c!988899)) b!5631206))

(assert (= (and b!5631206 c!988897) b!5631213))

(assert (= (and b!5631206 (not c!988897)) b!5631212))

(assert (= (and b!5631213 (not res!2384692)) b!5631211))

(assert (= (and b!5631212 c!988900) b!5631214))

(assert (= (and b!5631212 (not c!988900)) b!5631209))

(assert (= (and b!5631214 (not res!2384693)) b!5631205))

(assert (= (or b!5631205 b!5631209) bm!424500))

(assert (= (or b!5631215 b!5631214) bm!424501))

(declare-fun m!6602500 () Bool)

(assert (=> bm!424500 m!6602500))

(declare-fun m!6602502 () Bool)

(assert (=> bm!424501 m!6602502))

(declare-fun m!6602504 () Bool)

(assert (=> b!5631211 m!6602504))

(declare-fun m!6602506 () Bool)

(assert (=> b!5631213 m!6602506))

(assert (=> b!5630564 d!1778733))

(declare-fun b!5631244 () Bool)

(declare-fun e!3470745 () Bool)

(declare-fun lt!2262491 () Bool)

(assert (=> b!5631244 (= e!3470745 (not lt!2262491))))

(declare-fun b!5631245 () Bool)

(declare-fun e!3470749 () Bool)

(assert (=> b!5631245 (= e!3470749 (nullable!5655 r!7292))))

(declare-fun b!5631246 () Bool)

(declare-fun derivativeStep!4459 (Regex!15623 C!31516) Regex!15623)

(assert (=> b!5631246 (= e!3470749 (matchR!7808 (derivativeStep!4459 r!7292 (head!11991 s!2326)) (tail!11086 s!2326)))))

(declare-fun b!5631247 () Bool)

(declare-fun e!3470748 () Bool)

(assert (=> b!5631247 (= e!3470748 (= (head!11991 s!2326) (c!988711 r!7292)))))

(declare-fun b!5631248 () Bool)

(declare-fun e!3470746 () Bool)

(declare-fun e!3470744 () Bool)

(assert (=> b!5631248 (= e!3470746 e!3470744)))

(declare-fun res!2384713 () Bool)

(assert (=> b!5631248 (=> (not res!2384713) (not e!3470744))))

(assert (=> b!5631248 (= res!2384713 (not lt!2262491))))

(declare-fun b!5631249 () Bool)

(declare-fun res!2384712 () Bool)

(assert (=> b!5631249 (=> res!2384712 e!3470746)))

(assert (=> b!5631249 (= res!2384712 e!3470748)))

(declare-fun res!2384715 () Bool)

(assert (=> b!5631249 (=> (not res!2384715) (not e!3470748))))

(assert (=> b!5631249 (= res!2384715 lt!2262491)))

(declare-fun b!5631250 () Bool)

(declare-fun e!3470750 () Bool)

(declare-fun call!424509 () Bool)

(assert (=> b!5631250 (= e!3470750 (= lt!2262491 call!424509))))

(declare-fun b!5631251 () Bool)

(declare-fun e!3470747 () Bool)

(assert (=> b!5631251 (= e!3470747 (not (= (head!11991 s!2326) (c!988711 r!7292))))))

(declare-fun bm!424504 () Bool)

(assert (=> bm!424504 (= call!424509 (isEmpty!34885 s!2326))))

(declare-fun b!5631252 () Bool)

(declare-fun res!2384717 () Bool)

(assert (=> b!5631252 (=> res!2384717 e!3470746)))

(assert (=> b!5631252 (= res!2384717 (not ((_ is ElementMatch!15623) r!7292)))))

(assert (=> b!5631252 (= e!3470745 e!3470746)))

(declare-fun d!1778735 () Bool)

(assert (=> d!1778735 e!3470750))

(declare-fun c!988908 () Bool)

(assert (=> d!1778735 (= c!988908 ((_ is EmptyExpr!15623) r!7292))))

(assert (=> d!1778735 (= lt!2262491 e!3470749)))

(declare-fun c!988907 () Bool)

(assert (=> d!1778735 (= c!988907 (isEmpty!34885 s!2326))))

(assert (=> d!1778735 (validRegex!7359 r!7292)))

(assert (=> d!1778735 (= (matchR!7808 r!7292 s!2326) lt!2262491)))

(declare-fun b!5631253 () Bool)

(assert (=> b!5631253 (= e!3470744 e!3470747)))

(declare-fun res!2384711 () Bool)

(assert (=> b!5631253 (=> res!2384711 e!3470747)))

(assert (=> b!5631253 (= res!2384711 call!424509)))

(declare-fun b!5631254 () Bool)

(declare-fun res!2384714 () Bool)

(assert (=> b!5631254 (=> res!2384714 e!3470747)))

(assert (=> b!5631254 (= res!2384714 (not (isEmpty!34885 (tail!11086 s!2326))))))

(declare-fun b!5631255 () Bool)

(declare-fun res!2384710 () Bool)

(assert (=> b!5631255 (=> (not res!2384710) (not e!3470748))))

(assert (=> b!5631255 (= res!2384710 (isEmpty!34885 (tail!11086 s!2326)))))

(declare-fun b!5631256 () Bool)

(declare-fun res!2384716 () Bool)

(assert (=> b!5631256 (=> (not res!2384716) (not e!3470748))))

(assert (=> b!5631256 (= res!2384716 (not call!424509))))

(declare-fun b!5631257 () Bool)

(assert (=> b!5631257 (= e!3470750 e!3470745)))

(declare-fun c!988909 () Bool)

(assert (=> b!5631257 (= c!988909 ((_ is EmptyLang!15623) r!7292))))

(assert (= (and d!1778735 c!988907) b!5631245))

(assert (= (and d!1778735 (not c!988907)) b!5631246))

(assert (= (and d!1778735 c!988908) b!5631250))

(assert (= (and d!1778735 (not c!988908)) b!5631257))

(assert (= (and b!5631257 c!988909) b!5631244))

(assert (= (and b!5631257 (not c!988909)) b!5631252))

(assert (= (and b!5631252 (not res!2384717)) b!5631249))

(assert (= (and b!5631249 res!2384715) b!5631256))

(assert (= (and b!5631256 res!2384716) b!5631255))

(assert (= (and b!5631255 res!2384710) b!5631247))

(assert (= (and b!5631249 (not res!2384712)) b!5631248))

(assert (= (and b!5631248 res!2384713) b!5631253))

(assert (= (and b!5631253 (not res!2384711)) b!5631254))

(assert (= (and b!5631254 (not res!2384714)) b!5631251))

(assert (= (or b!5631250 b!5631253 b!5631256) bm!424504))

(declare-fun m!6602508 () Bool)

(assert (=> b!5631246 m!6602508))

(assert (=> b!5631246 m!6602508))

(declare-fun m!6602510 () Bool)

(assert (=> b!5631246 m!6602510))

(declare-fun m!6602512 () Bool)

(assert (=> b!5631246 m!6602512))

(assert (=> b!5631246 m!6602510))

(assert (=> b!5631246 m!6602512))

(declare-fun m!6602514 () Bool)

(assert (=> b!5631246 m!6602514))

(assert (=> bm!424504 m!6602502))

(assert (=> b!5631255 m!6602512))

(assert (=> b!5631255 m!6602512))

(declare-fun m!6602516 () Bool)

(assert (=> b!5631255 m!6602516))

(declare-fun m!6602518 () Bool)

(assert (=> b!5631245 m!6602518))

(assert (=> b!5631251 m!6602508))

(assert (=> b!5631247 m!6602508))

(assert (=> b!5631254 m!6602512))

(assert (=> b!5631254 m!6602512))

(assert (=> b!5631254 m!6602516))

(assert (=> d!1778735 m!6602502))

(assert (=> d!1778735 m!6602002))

(assert (=> b!5630564 d!1778735))

(declare-fun d!1778737 () Bool)

(assert (=> d!1778737 (= (matchR!7808 r!7292 s!2326) (matchRSpec!2726 r!7292 s!2326))))

(declare-fun lt!2262494 () Unit!156024)

(declare-fun choose!42687 (Regex!15623 List!63169) Unit!156024)

(assert (=> d!1778737 (= lt!2262494 (choose!42687 r!7292 s!2326))))

(assert (=> d!1778737 (validRegex!7359 r!7292)))

(assert (=> d!1778737 (= (mainMatchTheorem!2726 r!7292 s!2326) lt!2262494)))

(declare-fun bs!1303200 () Bool)

(assert (= bs!1303200 d!1778737))

(assert (=> bs!1303200 m!6601922))

(assert (=> bs!1303200 m!6601920))

(declare-fun m!6602520 () Bool)

(assert (=> bs!1303200 m!6602520))

(assert (=> bs!1303200 m!6602002))

(assert (=> b!5630564 d!1778737))

(declare-fun d!1778739 () Bool)

(declare-fun c!988910 () Bool)

(assert (=> d!1778739 (= c!988910 (isEmpty!34885 (t!376463 s!2326)))))

(declare-fun e!3470751 () Bool)

(assert (=> d!1778739 (= (matchZipper!1761 lt!2262403 (t!376463 s!2326)) e!3470751)))

(declare-fun b!5631258 () Bool)

(assert (=> b!5631258 (= e!3470751 (nullableZipper!1605 lt!2262403))))

(declare-fun b!5631259 () Bool)

(assert (=> b!5631259 (= e!3470751 (matchZipper!1761 (derivationStepZipper!1710 lt!2262403 (head!11991 (t!376463 s!2326))) (tail!11086 (t!376463 s!2326))))))

(assert (= (and d!1778739 c!988910) b!5631258))

(assert (= (and d!1778739 (not c!988910)) b!5631259))

(assert (=> d!1778739 m!6602358))

(declare-fun m!6602522 () Bool)

(assert (=> b!5631258 m!6602522))

(assert (=> b!5631259 m!6602362))

(assert (=> b!5631259 m!6602362))

(declare-fun m!6602524 () Bool)

(assert (=> b!5631259 m!6602524))

(assert (=> b!5631259 m!6602366))

(assert (=> b!5631259 m!6602524))

(assert (=> b!5631259 m!6602366))

(declare-fun m!6602526 () Bool)

(assert (=> b!5631259 m!6602526))

(assert (=> b!5630582 d!1778739))

(declare-fun b!5631278 () Bool)

(declare-fun e!3470767 () Bool)

(declare-fun call!424518 () Bool)

(assert (=> b!5631278 (= e!3470767 call!424518)))

(declare-fun b!5631279 () Bool)

(declare-fun e!3470772 () Bool)

(declare-fun call!424516 () Bool)

(assert (=> b!5631279 (= e!3470772 call!424516)))

(declare-fun b!5631280 () Bool)

(declare-fun res!2384731 () Bool)

(declare-fun e!3470768 () Bool)

(assert (=> b!5631280 (=> res!2384731 e!3470768)))

(assert (=> b!5631280 (= res!2384731 (not ((_ is Concat!24468) r!7292)))))

(declare-fun e!3470769 () Bool)

(assert (=> b!5631280 (= e!3470769 e!3470768)))

(declare-fun bm!424511 () Bool)

(declare-fun call!424517 () Bool)

(declare-fun c!988915 () Bool)

(assert (=> bm!424511 (= call!424517 (validRegex!7359 (ite c!988915 (regOne!31759 r!7292) (regOne!31758 r!7292))))))

(declare-fun bm!424512 () Bool)

(assert (=> bm!424512 (= call!424516 call!424518)))

(declare-fun b!5631281 () Bool)

(declare-fun e!3470771 () Bool)

(assert (=> b!5631281 (= e!3470771 call!424516)))

(declare-fun b!5631282 () Bool)

(declare-fun e!3470766 () Bool)

(assert (=> b!5631282 (= e!3470766 e!3470767)))

(declare-fun res!2384729 () Bool)

(assert (=> b!5631282 (= res!2384729 (not (nullable!5655 (reg!15952 r!7292))))))

(assert (=> b!5631282 (=> (not res!2384729) (not e!3470767))))

(declare-fun d!1778741 () Bool)

(declare-fun res!2384730 () Bool)

(declare-fun e!3470770 () Bool)

(assert (=> d!1778741 (=> res!2384730 e!3470770)))

(assert (=> d!1778741 (= res!2384730 ((_ is ElementMatch!15623) r!7292))))

(assert (=> d!1778741 (= (validRegex!7359 r!7292) e!3470770)))

(declare-fun bm!424513 () Bool)

(declare-fun c!988916 () Bool)

(assert (=> bm!424513 (= call!424518 (validRegex!7359 (ite c!988916 (reg!15952 r!7292) (ite c!988915 (regTwo!31759 r!7292) (regTwo!31758 r!7292)))))))

(declare-fun b!5631283 () Bool)

(assert (=> b!5631283 (= e!3470770 e!3470766)))

(assert (=> b!5631283 (= c!988916 ((_ is Star!15623) r!7292))))

(declare-fun b!5631284 () Bool)

(assert (=> b!5631284 (= e!3470768 e!3470771)))

(declare-fun res!2384732 () Bool)

(assert (=> b!5631284 (=> (not res!2384732) (not e!3470771))))

(assert (=> b!5631284 (= res!2384732 call!424517)))

(declare-fun b!5631285 () Bool)

(declare-fun res!2384728 () Bool)

(assert (=> b!5631285 (=> (not res!2384728) (not e!3470772))))

(assert (=> b!5631285 (= res!2384728 call!424517)))

(assert (=> b!5631285 (= e!3470769 e!3470772)))

(declare-fun b!5631286 () Bool)

(assert (=> b!5631286 (= e!3470766 e!3470769)))

(assert (=> b!5631286 (= c!988915 ((_ is Union!15623) r!7292))))

(assert (= (and d!1778741 (not res!2384730)) b!5631283))

(assert (= (and b!5631283 c!988916) b!5631282))

(assert (= (and b!5631283 (not c!988916)) b!5631286))

(assert (= (and b!5631282 res!2384729) b!5631278))

(assert (= (and b!5631286 c!988915) b!5631285))

(assert (= (and b!5631286 (not c!988915)) b!5631280))

(assert (= (and b!5631285 res!2384728) b!5631279))

(assert (= (and b!5631280 (not res!2384731)) b!5631284))

(assert (= (and b!5631284 res!2384732) b!5631281))

(assert (= (or b!5631279 b!5631281) bm!424512))

(assert (= (or b!5631285 b!5631284) bm!424511))

(assert (= (or b!5631278 bm!424512) bm!424513))

(declare-fun m!6602528 () Bool)

(assert (=> bm!424511 m!6602528))

(declare-fun m!6602530 () Bool)

(assert (=> b!5631282 m!6602530))

(declare-fun m!6602532 () Bool)

(assert (=> bm!424513 m!6602532))

(assert (=> start!583344 d!1778741))

(assert (=> b!5630563 d!1778739))

(declare-fun d!1778743 () Bool)

(assert (=> d!1778743 (= (flatMap!1236 lt!2262398 lambda!302574) (choose!42684 lt!2262398 lambda!302574))))

(declare-fun bs!1303201 () Bool)

(assert (= bs!1303201 d!1778743))

(declare-fun m!6602534 () Bool)

(assert (=> bs!1303201 m!6602534))

(assert (=> b!5630562 d!1778743))

(declare-fun d!1778745 () Bool)

(assert (=> d!1778745 (= (flatMap!1236 lt!2262398 lambda!302574) (dynLambda!24654 lambda!302574 lt!2262401))))

(declare-fun lt!2262495 () Unit!156024)

(assert (=> d!1778745 (= lt!2262495 (choose!42681 lt!2262398 lt!2262401 lambda!302574))))

(assert (=> d!1778745 (= lt!2262398 (store ((as const (Array Context!10014 Bool)) false) lt!2262401 true))))

(assert (=> d!1778745 (= (lemmaFlatMapOnSingletonSet!768 lt!2262398 lt!2262401 lambda!302574) lt!2262495)))

(declare-fun b_lambda!212963 () Bool)

(assert (=> (not b_lambda!212963) (not d!1778745)))

(declare-fun bs!1303202 () Bool)

(assert (= bs!1303202 d!1778745))

(assert (=> bs!1303202 m!6601950))

(declare-fun m!6602536 () Bool)

(assert (=> bs!1303202 m!6602536))

(declare-fun m!6602538 () Bool)

(assert (=> bs!1303202 m!6602538))

(assert (=> bs!1303202 m!6601956))

(assert (=> b!5630562 d!1778745))

(assert (=> b!5630562 d!1778703))

(declare-fun b!5631287 () Bool)

(declare-fun e!3470775 () (InoxSet Context!10014))

(declare-fun call!424519 () (InoxSet Context!10014))

(assert (=> b!5631287 (= e!3470775 call!424519)))

(declare-fun b!5631288 () Bool)

(declare-fun e!3470773 () (InoxSet Context!10014))

(assert (=> b!5631288 (= e!3470773 e!3470775)))

(declare-fun c!988917 () Bool)

(assert (=> b!5631288 (= c!988917 ((_ is Cons!63044) (exprs!5507 lt!2262401)))))

(declare-fun b!5631289 () Bool)

(assert (=> b!5631289 (= e!3470775 ((as const (Array Context!10014 Bool)) false))))

(declare-fun bm!424514 () Bool)

(assert (=> bm!424514 (= call!424519 (derivationStepZipperDown!965 (h!69492 (exprs!5507 lt!2262401)) (Context!10015 (t!376462 (exprs!5507 lt!2262401))) (h!69493 s!2326)))))

(declare-fun b!5631290 () Bool)

(assert (=> b!5631290 (= e!3470773 ((_ map or) call!424519 (derivationStepZipperUp!891 (Context!10015 (t!376462 (exprs!5507 lt!2262401))) (h!69493 s!2326))))))

(declare-fun b!5631291 () Bool)

(declare-fun e!3470774 () Bool)

(assert (=> b!5631291 (= e!3470774 (nullable!5655 (h!69492 (exprs!5507 lt!2262401))))))

(declare-fun d!1778747 () Bool)

(declare-fun c!988918 () Bool)

(assert (=> d!1778747 (= c!988918 e!3470774)))

(declare-fun res!2384733 () Bool)

(assert (=> d!1778747 (=> (not res!2384733) (not e!3470774))))

(assert (=> d!1778747 (= res!2384733 ((_ is Cons!63044) (exprs!5507 lt!2262401)))))

(assert (=> d!1778747 (= (derivationStepZipperUp!891 lt!2262401 (h!69493 s!2326)) e!3470773)))

(assert (= (and d!1778747 res!2384733) b!5631291))

(assert (= (and d!1778747 c!988918) b!5631290))

(assert (= (and d!1778747 (not c!988918)) b!5631288))

(assert (= (and b!5631288 c!988917) b!5631287))

(assert (= (and b!5631288 (not c!988917)) b!5631289))

(assert (= (or b!5631290 b!5631287) bm!424514))

(declare-fun m!6602540 () Bool)

(assert (=> bm!424514 m!6602540))

(declare-fun m!6602542 () Bool)

(assert (=> b!5631290 m!6602542))

(declare-fun m!6602544 () Bool)

(assert (=> b!5631291 m!6602544))

(assert (=> b!5630562 d!1778747))

(declare-fun bs!1303203 () Bool)

(declare-fun d!1778749 () Bool)

(assert (= bs!1303203 (and d!1778749 b!5630585)))

(declare-fun lambda!302631 () Int)

(assert (=> bs!1303203 (= lambda!302631 lambda!302574)))

(assert (=> d!1778749 true))

(assert (=> d!1778749 (= (derivationStepZipper!1710 lt!2262398 (h!69493 s!2326)) (flatMap!1236 lt!2262398 lambda!302631))))

(declare-fun bs!1303204 () Bool)

(assert (= bs!1303204 d!1778749))

(declare-fun m!6602546 () Bool)

(assert (=> bs!1303204 m!6602546))

(assert (=> b!5630562 d!1778749))

(declare-fun bs!1303205 () Bool)

(declare-fun d!1778751 () Bool)

(assert (= bs!1303205 (and d!1778751 d!1778563)))

(declare-fun lambda!302634 () Int)

(assert (=> bs!1303205 (= lambda!302634 lambda!302580)))

(declare-fun bs!1303206 () Bool)

(assert (= bs!1303206 (and d!1778751 d!1778573)))

(assert (=> bs!1303206 (= lambda!302634 lambda!302581)))

(declare-fun bs!1303207 () Bool)

(assert (= bs!1303207 (and d!1778751 d!1778661)))

(assert (=> bs!1303207 (= lambda!302634 lambda!302612)))

(declare-fun b!5631314 () Bool)

(declare-fun e!3470793 () Bool)

(assert (=> b!5631314 (= e!3470793 (isEmpty!34882 (t!376462 (unfocusZipperList!1051 zl!343))))))

(declare-fun e!3470788 () Bool)

(assert (=> d!1778751 e!3470788))

(declare-fun res!2384738 () Bool)

(assert (=> d!1778751 (=> (not res!2384738) (not e!3470788))))

(declare-fun lt!2262498 () Regex!15623)

(assert (=> d!1778751 (= res!2384738 (validRegex!7359 lt!2262498))))

(declare-fun e!3470790 () Regex!15623)

(assert (=> d!1778751 (= lt!2262498 e!3470790)))

(declare-fun c!988932 () Bool)

(assert (=> d!1778751 (= c!988932 e!3470793)))

(declare-fun res!2384739 () Bool)

(assert (=> d!1778751 (=> (not res!2384739) (not e!3470793))))

(assert (=> d!1778751 (= res!2384739 ((_ is Cons!63044) (unfocusZipperList!1051 zl!343)))))

(assert (=> d!1778751 (forall!14777 (unfocusZipperList!1051 zl!343) lambda!302634)))

(assert (=> d!1778751 (= (generalisedUnion!1486 (unfocusZipperList!1051 zl!343)) lt!2262498)))

(declare-fun b!5631315 () Bool)

(declare-fun e!3470789 () Regex!15623)

(assert (=> b!5631315 (= e!3470790 e!3470789)))

(declare-fun c!988931 () Bool)

(assert (=> b!5631315 (= c!988931 ((_ is Cons!63044) (unfocusZipperList!1051 zl!343)))))

(declare-fun b!5631316 () Bool)

(declare-fun e!3470791 () Bool)

(declare-fun isUnion!604 (Regex!15623) Bool)

(assert (=> b!5631316 (= e!3470791 (isUnion!604 lt!2262498))))

(declare-fun b!5631317 () Bool)

(assert (=> b!5631317 (= e!3470789 (Union!15623 (h!69492 (unfocusZipperList!1051 zl!343)) (generalisedUnion!1486 (t!376462 (unfocusZipperList!1051 zl!343)))))))

(declare-fun b!5631318 () Bool)

(declare-fun e!3470792 () Bool)

(assert (=> b!5631318 (= e!3470788 e!3470792)))

(declare-fun c!988930 () Bool)

(assert (=> b!5631318 (= c!988930 (isEmpty!34882 (unfocusZipperList!1051 zl!343)))))

(declare-fun b!5631319 () Bool)

(assert (=> b!5631319 (= e!3470790 (h!69492 (unfocusZipperList!1051 zl!343)))))

(declare-fun b!5631320 () Bool)

(assert (=> b!5631320 (= e!3470792 e!3470791)))

(declare-fun c!988929 () Bool)

(assert (=> b!5631320 (= c!988929 (isEmpty!34882 (tail!11085 (unfocusZipperList!1051 zl!343))))))

(declare-fun b!5631321 () Bool)

(declare-fun isEmptyLang!1174 (Regex!15623) Bool)

(assert (=> b!5631321 (= e!3470792 (isEmptyLang!1174 lt!2262498))))

(declare-fun b!5631322 () Bool)

(assert (=> b!5631322 (= e!3470791 (= lt!2262498 (head!11990 (unfocusZipperList!1051 zl!343))))))

(declare-fun b!5631323 () Bool)

(assert (=> b!5631323 (= e!3470789 EmptyLang!15623)))

(assert (= (and d!1778751 res!2384739) b!5631314))

(assert (= (and d!1778751 c!988932) b!5631319))

(assert (= (and d!1778751 (not c!988932)) b!5631315))

(assert (= (and b!5631315 c!988931) b!5631317))

(assert (= (and b!5631315 (not c!988931)) b!5631323))

(assert (= (and d!1778751 res!2384738) b!5631318))

(assert (= (and b!5631318 c!988930) b!5631321))

(assert (= (and b!5631318 (not c!988930)) b!5631320))

(assert (= (and b!5631320 c!988929) b!5631322))

(assert (= (and b!5631320 (not c!988929)) b!5631316))

(assert (=> b!5631322 m!6601932))

(declare-fun m!6602548 () Bool)

(assert (=> b!5631322 m!6602548))

(declare-fun m!6602550 () Bool)

(assert (=> b!5631316 m!6602550))

(assert (=> b!5631320 m!6601932))

(declare-fun m!6602552 () Bool)

(assert (=> b!5631320 m!6602552))

(assert (=> b!5631320 m!6602552))

(declare-fun m!6602554 () Bool)

(assert (=> b!5631320 m!6602554))

(declare-fun m!6602556 () Bool)

(assert (=> b!5631314 m!6602556))

(declare-fun m!6602558 () Bool)

(assert (=> b!5631317 m!6602558))

(declare-fun m!6602560 () Bool)

(assert (=> d!1778751 m!6602560))

(assert (=> d!1778751 m!6601932))

(declare-fun m!6602562 () Bool)

(assert (=> d!1778751 m!6602562))

(assert (=> b!5631318 m!6601932))

(declare-fun m!6602564 () Bool)

(assert (=> b!5631318 m!6602564))

(declare-fun m!6602566 () Bool)

(assert (=> b!5631321 m!6602566))

(assert (=> b!5630579 d!1778751))

(declare-fun bs!1303208 () Bool)

(declare-fun d!1778753 () Bool)

(assert (= bs!1303208 (and d!1778753 d!1778563)))

(declare-fun lambda!302637 () Int)

(assert (=> bs!1303208 (= lambda!302637 lambda!302580)))

(declare-fun bs!1303209 () Bool)

(assert (= bs!1303209 (and d!1778753 d!1778573)))

(assert (=> bs!1303209 (= lambda!302637 lambda!302581)))

(declare-fun bs!1303210 () Bool)

(assert (= bs!1303210 (and d!1778753 d!1778661)))

(assert (=> bs!1303210 (= lambda!302637 lambda!302612)))

(declare-fun bs!1303211 () Bool)

(assert (= bs!1303211 (and d!1778753 d!1778751)))

(assert (=> bs!1303211 (= lambda!302637 lambda!302634)))

(declare-fun lt!2262501 () List!63168)

(assert (=> d!1778753 (forall!14777 lt!2262501 lambda!302637)))

(declare-fun e!3470796 () List!63168)

(assert (=> d!1778753 (= lt!2262501 e!3470796)))

(declare-fun c!988935 () Bool)

(assert (=> d!1778753 (= c!988935 ((_ is Cons!63046) zl!343))))

(assert (=> d!1778753 (= (unfocusZipperList!1051 zl!343) lt!2262501)))

(declare-fun b!5631328 () Bool)

(assert (=> b!5631328 (= e!3470796 (Cons!63044 (generalisedConcat!1238 (exprs!5507 (h!69494 zl!343))) (unfocusZipperList!1051 (t!376464 zl!343))))))

(declare-fun b!5631329 () Bool)

(assert (=> b!5631329 (= e!3470796 Nil!63044)))

(assert (= (and d!1778753 c!988935) b!5631328))

(assert (= (and d!1778753 (not c!988935)) b!5631329))

(declare-fun m!6602568 () Bool)

(assert (=> d!1778753 m!6602568))

(assert (=> b!5631328 m!6601962))

(declare-fun m!6602570 () Bool)

(assert (=> b!5631328 m!6602570))

(assert (=> b!5630579 d!1778753))

(declare-fun d!1778755 () Bool)

(declare-fun c!988936 () Bool)

(assert (=> d!1778755 (= c!988936 (isEmpty!34885 (t!376463 s!2326)))))

(declare-fun e!3470797 () Bool)

(assert (=> d!1778755 (= (matchZipper!1761 (derivationStepZipper!1710 lt!2262396 (h!69493 s!2326)) (t!376463 s!2326)) e!3470797)))

(declare-fun b!5631330 () Bool)

(assert (=> b!5631330 (= e!3470797 (nullableZipper!1605 (derivationStepZipper!1710 lt!2262396 (h!69493 s!2326))))))

(declare-fun b!5631331 () Bool)

(assert (=> b!5631331 (= e!3470797 (matchZipper!1761 (derivationStepZipper!1710 (derivationStepZipper!1710 lt!2262396 (h!69493 s!2326)) (head!11991 (t!376463 s!2326))) (tail!11086 (t!376463 s!2326))))))

(assert (= (and d!1778755 c!988936) b!5631330))

(assert (= (and d!1778755 (not c!988936)) b!5631331))

(assert (=> d!1778755 m!6602358))

(assert (=> b!5631330 m!6602006))

(declare-fun m!6602572 () Bool)

(assert (=> b!5631330 m!6602572))

(assert (=> b!5631331 m!6602362))

(assert (=> b!5631331 m!6602006))

(assert (=> b!5631331 m!6602362))

(declare-fun m!6602574 () Bool)

(assert (=> b!5631331 m!6602574))

(assert (=> b!5631331 m!6602366))

(assert (=> b!5631331 m!6602574))

(assert (=> b!5631331 m!6602366))

(declare-fun m!6602576 () Bool)

(assert (=> b!5631331 m!6602576))

(assert (=> b!5630578 d!1778755))

(declare-fun bs!1303212 () Bool)

(declare-fun d!1778757 () Bool)

(assert (= bs!1303212 (and d!1778757 b!5630585)))

(declare-fun lambda!302638 () Int)

(assert (=> bs!1303212 (= lambda!302638 lambda!302574)))

(declare-fun bs!1303213 () Bool)

(assert (= bs!1303213 (and d!1778757 d!1778749)))

(assert (=> bs!1303213 (= lambda!302638 lambda!302631)))

(assert (=> d!1778757 true))

(assert (=> d!1778757 (= (derivationStepZipper!1710 lt!2262396 (h!69493 s!2326)) (flatMap!1236 lt!2262396 lambda!302638))))

(declare-fun bs!1303214 () Bool)

(assert (= bs!1303214 d!1778757))

(declare-fun m!6602578 () Bool)

(assert (=> bs!1303214 m!6602578))

(assert (=> b!5630578 d!1778757))

(declare-fun d!1778759 () Bool)

(assert (=> d!1778759 (= (isEmpty!34882 (t!376462 (exprs!5507 (h!69494 zl!343)))) ((_ is Nil!63044) (t!376462 (exprs!5507 (h!69494 zl!343)))))))

(assert (=> b!5630577 d!1778759))

(declare-fun e!3470798 () Bool)

(declare-fun d!1778761 () Bool)

(assert (=> d!1778761 (= (matchZipper!1761 ((_ map or) lt!2262402 lt!2262407) (t!376463 s!2326)) e!3470798)))

(declare-fun res!2384740 () Bool)

(assert (=> d!1778761 (=> res!2384740 e!3470798)))

(assert (=> d!1778761 (= res!2384740 (matchZipper!1761 lt!2262402 (t!376463 s!2326)))))

(declare-fun lt!2262502 () Unit!156024)

(assert (=> d!1778761 (= lt!2262502 (choose!42680 lt!2262402 lt!2262407 (t!376463 s!2326)))))

(assert (=> d!1778761 (= (lemmaZipperConcatMatchesSameAsBothZippers!648 lt!2262402 lt!2262407 (t!376463 s!2326)) lt!2262502)))

(declare-fun b!5631332 () Bool)

(assert (=> b!5631332 (= e!3470798 (matchZipper!1761 lt!2262407 (t!376463 s!2326)))))

(assert (= (and d!1778761 (not res!2384740)) b!5631332))

(assert (=> d!1778761 m!6601976))

(assert (=> d!1778761 m!6601938))

(declare-fun m!6602580 () Bool)

(assert (=> d!1778761 m!6602580))

(assert (=> b!5631332 m!6601988))

(assert (=> b!5630576 d!1778761))

(assert (=> b!5630576 d!1778675))

(declare-fun d!1778763 () Bool)

(declare-fun c!988937 () Bool)

(assert (=> d!1778763 (= c!988937 (isEmpty!34885 (t!376463 s!2326)))))

(declare-fun e!3470799 () Bool)

(assert (=> d!1778763 (= (matchZipper!1761 ((_ map or) lt!2262402 lt!2262407) (t!376463 s!2326)) e!3470799)))

(declare-fun b!5631333 () Bool)

(assert (=> b!5631333 (= e!3470799 (nullableZipper!1605 ((_ map or) lt!2262402 lt!2262407)))))

(declare-fun b!5631334 () Bool)

(assert (=> b!5631334 (= e!3470799 (matchZipper!1761 (derivationStepZipper!1710 ((_ map or) lt!2262402 lt!2262407) (head!11991 (t!376463 s!2326))) (tail!11086 (t!376463 s!2326))))))

(assert (= (and d!1778763 c!988937) b!5631333))

(assert (= (and d!1778763 (not c!988937)) b!5631334))

(assert (=> d!1778763 m!6602358))

(declare-fun m!6602582 () Bool)

(assert (=> b!5631333 m!6602582))

(assert (=> b!5631334 m!6602362))

(assert (=> b!5631334 m!6602362))

(declare-fun m!6602584 () Bool)

(assert (=> b!5631334 m!6602584))

(assert (=> b!5631334 m!6602366))

(assert (=> b!5631334 m!6602584))

(assert (=> b!5631334 m!6602366))

(declare-fun m!6602586 () Bool)

(assert (=> b!5631334 m!6602586))

(assert (=> b!5630576 d!1778763))

(declare-fun b!5631342 () Bool)

(declare-fun e!3470805 () Bool)

(declare-fun tp!1558690 () Bool)

(assert (=> b!5631342 (= e!3470805 tp!1558690)))

(declare-fun e!3470804 () Bool)

(declare-fun tp!1558691 () Bool)

(declare-fun b!5631341 () Bool)

(assert (=> b!5631341 (= e!3470804 (and (inv!82304 (h!69494 (t!376464 zl!343))) e!3470805 tp!1558691))))

(assert (=> b!5630574 (= tp!1558623 e!3470804)))

(assert (= b!5631341 b!5631342))

(assert (= (and b!5630574 ((_ is Cons!63046) (t!376464 zl!343))) b!5631341))

(declare-fun m!6602588 () Bool)

(assert (=> b!5631341 m!6602588))

(declare-fun b!5631355 () Bool)

(declare-fun e!3470808 () Bool)

(declare-fun tp!1558703 () Bool)

(assert (=> b!5631355 (= e!3470808 tp!1558703)))

(assert (=> b!5630580 (= tp!1558619 e!3470808)))

(declare-fun b!5631354 () Bool)

(declare-fun tp!1558705 () Bool)

(declare-fun tp!1558704 () Bool)

(assert (=> b!5631354 (= e!3470808 (and tp!1558705 tp!1558704))))

(declare-fun b!5631356 () Bool)

(declare-fun tp!1558702 () Bool)

(declare-fun tp!1558706 () Bool)

(assert (=> b!5631356 (= e!3470808 (and tp!1558702 tp!1558706))))

(declare-fun b!5631353 () Bool)

(assert (=> b!5631353 (= e!3470808 tp_is_empty!40499)))

(assert (= (and b!5630580 ((_ is ElementMatch!15623) (reg!15952 r!7292))) b!5631353))

(assert (= (and b!5630580 ((_ is Concat!24468) (reg!15952 r!7292))) b!5631354))

(assert (= (and b!5630580 ((_ is Star!15623) (reg!15952 r!7292))) b!5631355))

(assert (= (and b!5630580 ((_ is Union!15623) (reg!15952 r!7292))) b!5631356))

(declare-fun b!5631361 () Bool)

(declare-fun e!3470811 () Bool)

(declare-fun tp!1558709 () Bool)

(assert (=> b!5631361 (= e!3470811 (and tp_is_empty!40499 tp!1558709))))

(assert (=> b!5630584 (= tp!1558625 e!3470811)))

(assert (= (and b!5630584 ((_ is Cons!63045) (t!376463 s!2326))) b!5631361))

(declare-fun b!5631364 () Bool)

(declare-fun e!3470812 () Bool)

(declare-fun tp!1558711 () Bool)

(assert (=> b!5631364 (= e!3470812 tp!1558711)))

(assert (=> b!5630589 (= tp!1558627 e!3470812)))

(declare-fun b!5631363 () Bool)

(declare-fun tp!1558713 () Bool)

(declare-fun tp!1558712 () Bool)

(assert (=> b!5631363 (= e!3470812 (and tp!1558713 tp!1558712))))

(declare-fun b!5631365 () Bool)

(declare-fun tp!1558710 () Bool)

(declare-fun tp!1558714 () Bool)

(assert (=> b!5631365 (= e!3470812 (and tp!1558710 tp!1558714))))

(declare-fun b!5631362 () Bool)

(assert (=> b!5631362 (= e!3470812 tp_is_empty!40499)))

(assert (= (and b!5630589 ((_ is ElementMatch!15623) (regOne!31759 r!7292))) b!5631362))

(assert (= (and b!5630589 ((_ is Concat!24468) (regOne!31759 r!7292))) b!5631363))

(assert (= (and b!5630589 ((_ is Star!15623) (regOne!31759 r!7292))) b!5631364))

(assert (= (and b!5630589 ((_ is Union!15623) (regOne!31759 r!7292))) b!5631365))

(declare-fun b!5631368 () Bool)

(declare-fun e!3470813 () Bool)

(declare-fun tp!1558716 () Bool)

(assert (=> b!5631368 (= e!3470813 tp!1558716)))

(assert (=> b!5630589 (= tp!1558618 e!3470813)))

(declare-fun b!5631367 () Bool)

(declare-fun tp!1558718 () Bool)

(declare-fun tp!1558717 () Bool)

(assert (=> b!5631367 (= e!3470813 (and tp!1558718 tp!1558717))))

(declare-fun b!5631369 () Bool)

(declare-fun tp!1558715 () Bool)

(declare-fun tp!1558719 () Bool)

(assert (=> b!5631369 (= e!3470813 (and tp!1558715 tp!1558719))))

(declare-fun b!5631366 () Bool)

(assert (=> b!5631366 (= e!3470813 tp_is_empty!40499)))

(assert (= (and b!5630589 ((_ is ElementMatch!15623) (regTwo!31759 r!7292))) b!5631366))

(assert (= (and b!5630589 ((_ is Concat!24468) (regTwo!31759 r!7292))) b!5631367))

(assert (= (and b!5630589 ((_ is Star!15623) (regTwo!31759 r!7292))) b!5631368))

(assert (= (and b!5630589 ((_ is Union!15623) (regTwo!31759 r!7292))) b!5631369))

(declare-fun condSetEmpty!37618 () Bool)

(assert (=> setNonEmpty!37612 (= condSetEmpty!37618 (= setRest!37612 ((as const (Array Context!10014 Bool)) false)))))

(declare-fun setRes!37618 () Bool)

(assert (=> setNonEmpty!37612 (= tp!1558621 setRes!37618)))

(declare-fun setIsEmpty!37618 () Bool)

(assert (=> setIsEmpty!37618 setRes!37618))

(declare-fun setElem!37618 () Context!10014)

(declare-fun e!3470816 () Bool)

(declare-fun setNonEmpty!37618 () Bool)

(declare-fun tp!1558725 () Bool)

(assert (=> setNonEmpty!37618 (= setRes!37618 (and tp!1558725 (inv!82304 setElem!37618) e!3470816))))

(declare-fun setRest!37618 () (InoxSet Context!10014))

(assert (=> setNonEmpty!37618 (= setRest!37612 ((_ map or) (store ((as const (Array Context!10014 Bool)) false) setElem!37618 true) setRest!37618))))

(declare-fun b!5631374 () Bool)

(declare-fun tp!1558724 () Bool)

(assert (=> b!5631374 (= e!3470816 tp!1558724)))

(assert (= (and setNonEmpty!37612 condSetEmpty!37618) setIsEmpty!37618))

(assert (= (and setNonEmpty!37612 (not condSetEmpty!37618)) setNonEmpty!37618))

(assert (= setNonEmpty!37618 b!5631374))

(declare-fun m!6602590 () Bool)

(assert (=> setNonEmpty!37618 m!6602590))

(declare-fun b!5631377 () Bool)

(declare-fun e!3470817 () Bool)

(declare-fun tp!1558727 () Bool)

(assert (=> b!5631377 (= e!3470817 tp!1558727)))

(assert (=> b!5630587 (= tp!1558624 e!3470817)))

(declare-fun b!5631376 () Bool)

(declare-fun tp!1558729 () Bool)

(declare-fun tp!1558728 () Bool)

(assert (=> b!5631376 (= e!3470817 (and tp!1558729 tp!1558728))))

(declare-fun b!5631378 () Bool)

(declare-fun tp!1558726 () Bool)

(declare-fun tp!1558730 () Bool)

(assert (=> b!5631378 (= e!3470817 (and tp!1558726 tp!1558730))))

(declare-fun b!5631375 () Bool)

(assert (=> b!5631375 (= e!3470817 tp_is_empty!40499)))

(assert (= (and b!5630587 ((_ is ElementMatch!15623) (regOne!31758 r!7292))) b!5631375))

(assert (= (and b!5630587 ((_ is Concat!24468) (regOne!31758 r!7292))) b!5631376))

(assert (= (and b!5630587 ((_ is Star!15623) (regOne!31758 r!7292))) b!5631377))

(assert (= (and b!5630587 ((_ is Union!15623) (regOne!31758 r!7292))) b!5631378))

(declare-fun b!5631381 () Bool)

(declare-fun e!3470818 () Bool)

(declare-fun tp!1558732 () Bool)

(assert (=> b!5631381 (= e!3470818 tp!1558732)))

(assert (=> b!5630587 (= tp!1558620 e!3470818)))

(declare-fun b!5631380 () Bool)

(declare-fun tp!1558734 () Bool)

(declare-fun tp!1558733 () Bool)

(assert (=> b!5631380 (= e!3470818 (and tp!1558734 tp!1558733))))

(declare-fun b!5631382 () Bool)

(declare-fun tp!1558731 () Bool)

(declare-fun tp!1558735 () Bool)

(assert (=> b!5631382 (= e!3470818 (and tp!1558731 tp!1558735))))

(declare-fun b!5631379 () Bool)

(assert (=> b!5631379 (= e!3470818 tp_is_empty!40499)))

(assert (= (and b!5630587 ((_ is ElementMatch!15623) (regTwo!31758 r!7292))) b!5631379))

(assert (= (and b!5630587 ((_ is Concat!24468) (regTwo!31758 r!7292))) b!5631380))

(assert (= (and b!5630587 ((_ is Star!15623) (regTwo!31758 r!7292))) b!5631381))

(assert (= (and b!5630587 ((_ is Union!15623) (regTwo!31758 r!7292))) b!5631382))

(declare-fun b!5631387 () Bool)

(declare-fun e!3470821 () Bool)

(declare-fun tp!1558740 () Bool)

(declare-fun tp!1558741 () Bool)

(assert (=> b!5631387 (= e!3470821 (and tp!1558740 tp!1558741))))

(assert (=> b!5630588 (= tp!1558622 e!3470821)))

(assert (= (and b!5630588 ((_ is Cons!63044) (exprs!5507 setElem!37612))) b!5631387))

(declare-fun b!5631388 () Bool)

(declare-fun e!3470822 () Bool)

(declare-fun tp!1558742 () Bool)

(declare-fun tp!1558743 () Bool)

(assert (=> b!5631388 (= e!3470822 (and tp!1558742 tp!1558743))))

(assert (=> b!5630575 (= tp!1558626 e!3470822)))

(assert (= (and b!5630575 ((_ is Cons!63044) (exprs!5507 (h!69494 zl!343)))) b!5631388))

(declare-fun b_lambda!212965 () Bool)

(assert (= b_lambda!212963 (or b!5630585 b_lambda!212965)))

(declare-fun bs!1303215 () Bool)

(declare-fun d!1778765 () Bool)

(assert (= bs!1303215 (and d!1778765 b!5630585)))

(assert (=> bs!1303215 (= (dynLambda!24654 lambda!302574 lt!2262401) (derivationStepZipperUp!891 lt!2262401 (h!69493 s!2326)))))

(assert (=> bs!1303215 m!6601954))

(assert (=> d!1778745 d!1778765))

(declare-fun b_lambda!212967 () Bool)

(assert (= b_lambda!212953 (or b!5630585 b_lambda!212967)))

(declare-fun bs!1303216 () Bool)

(declare-fun d!1778767 () Bool)

(assert (= bs!1303216 (and d!1778767 b!5630585)))

(assert (=> bs!1303216 (= (dynLambda!24654 lambda!302574 lt!2262404) (derivationStepZipperUp!891 lt!2262404 (h!69493 s!2326)))))

(assert (=> bs!1303216 m!6601952))

(assert (=> d!1778689 d!1778767))

(declare-fun b_lambda!212969 () Bool)

(assert (= b_lambda!212961 (or b!5630585 b_lambda!212969)))

(declare-fun bs!1303217 () Bool)

(declare-fun d!1778769 () Bool)

(assert (= bs!1303217 (and d!1778769 b!5630585)))

(assert (=> bs!1303217 (= (dynLambda!24654 lambda!302574 (h!69494 zl!343)) (derivationStepZipperUp!891 (h!69494 zl!343) (h!69493 s!2326)))))

(assert (=> bs!1303217 m!6602014))

(assert (=> d!1778723 d!1778769))

(check-sat (not bm!424514) (not b!5631041) (not b!5631258) (not b!5631146) (not d!1778723) (not b!5631318) (not b!5631368) (not b!5631363) (not b!5631142) (not d!1778751) (not b!5630718) (not bm!424504) (not bm!424471) (not b!5631150) (not bm!424489) (not setNonEmpty!37618) (not bm!424488) (not b!5631291) (not b!5631356) (not b!5631155) (not d!1778577) (not b!5631330) (not bm!424513) (not b!5631376) (not d!1778689) (not b!5631388) (not b!5631017) (not b!5631039) (not b!5631331) (not d!1778743) (not bm!424465) (not b!5631342) (not b!5631369) (not bm!424501) (not b!5631156) (not bm!424460) (not d!1778575) (not d!1778753) (not b!5631071) (not b!5631213) (not d!1778635) (not b!5631332) (not b!5631045) (not d!1778757) (not b!5631387) (not b!5631367) (not b!5631365) (not b!5631076) (not b!5631016) (not b!5631069) (not b!5631014) (not bm!424511) (not b!5631070) (not bm!424486) (not b_lambda!212969) (not b!5631033) (not b!5631015) (not b!5631377) (not d!1778719) (not b!5631018) (not d!1778573) (not d!1778609) (not b!5631290) (not b!5631259) (not b!5631009) (not b!5631245) (not b!5631247) (not b!5631316) (not b!5631328) (not b!5630716) (not bs!1303216) (not b!5631040) (not bm!424467) (not bs!1303217) (not b!5631172) (not d!1778739) (not b!5631246) (not b!5631028) (not d!1778675) (not b!5631314) (not b!5631042) (not d!1778749) (not b!5631251) (not b!5630720) (not d!1778713) (not b!5631171) (not b!5631140) (not bm!424494) (not bm!424490) (not d!1778735) (not d!1778679) (not b!5631320) (not b!5631282) (not b!5631341) (not b!5631322) (not b!5631355) (not b!5630721) (not b!5631321) (not d!1778737) (not b!5631333) (not b!5631381) (not b!5631011) (not b!5631167) tp_is_empty!40499 (not bm!424500) (not b!5630723) (not d!1778661) (not d!1778563) (not b!5631255) (not b!5631374) (not b!5631151) (not b!5631034) (not bs!1303215) (not b!5631354) (not d!1778701) (not b!5630950) (not d!1778745) (not d!1778715) (not b!5631334) (not b!5630961) (not d!1778721) (not b!5631317) (not bm!424466) (not b!5631380) (not b!5631211) (not b!5631254) (not d!1778593) (not d!1778595) (not d!1778711) (not b!5631361) (not b!5631141) (not d!1778667) (not b!5631382) (not d!1778681) (not bm!424487) (not d!1778673) (not d!1778761) (not b!5631364) (not b!5630724) (not b_lambda!212967) (not bm!424495) (not b_lambda!212965) (not b!5631068) (not d!1778697) (not b!5631378) (not b!5631143) (not d!1778755) (not d!1778763) (not d!1778687) (not d!1778699) (not b!5631027) (not d!1778677) (not bm!424461))
(check-sat)
