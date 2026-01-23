; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549554 () Bool)

(assert start!549554)

(declare-fun b!5192585 () Bool)

(assert (=> b!5192585 true))

(declare-fun b!5192582 () Bool)

(declare-fun res!2205526 () Bool)

(declare-fun e!3234319 () Bool)

(assert (=> b!5192582 (=> res!2205526 e!3234319)))

(declare-datatypes ((C!29740 0))(
  ( (C!29741 (val!24572 Int)) )
))
(declare-datatypes ((Regex!14735 0))(
  ( (ElementMatch!14735 (c!895114 C!29740)) (Concat!23580 (regOne!29982 Regex!14735) (regTwo!29982 Regex!14735)) (EmptyExpr!14735) (Star!14735 (reg!15064 Regex!14735)) (EmptyLang!14735) (Union!14735 (regOne!29983 Regex!14735) (regTwo!29983 Regex!14735)) )
))
(declare-fun r!7292 () Regex!14735)

(get-info :version)

(assert (=> b!5192582 (= res!2205526 (or ((_ is EmptyExpr!14735) r!7292) ((_ is EmptyLang!14735) r!7292) ((_ is ElementMatch!14735) r!7292) (not ((_ is Union!14735) r!7292))))))

(declare-fun tp!1456585 () Bool)

(declare-fun e!3234321 () Bool)

(declare-fun e!3234315 () Bool)

(declare-fun b!5192583 () Bool)

(declare-datatypes ((List!60504 0))(
  ( (Nil!60380) (Cons!60380 (h!66828 Regex!14735) (t!373657 List!60504)) )
))
(declare-datatypes ((Context!8238 0))(
  ( (Context!8239 (exprs!4619 List!60504)) )
))
(declare-datatypes ((List!60505 0))(
  ( (Nil!60381) (Cons!60381 (h!66829 Context!8238) (t!373658 List!60505)) )
))
(declare-fun zl!343 () List!60505)

(declare-fun inv!80084 (Context!8238) Bool)

(assert (=> b!5192583 (= e!3234321 (and (inv!80084 (h!66829 zl!343)) e!3234315 tp!1456585))))

(declare-fun b!5192584 () Bool)

(declare-fun res!2205541 () Bool)

(declare-fun e!3234329 () Bool)

(assert (=> b!5192584 (=> (not res!2205541) (not e!3234329))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8238))

(declare-fun toList!8519 ((InoxSet Context!8238)) List!60505)

(assert (=> b!5192584 (= res!2205541 (= (toList!8519 z!1189) zl!343))))

(declare-fun e!3234325 () Bool)

(declare-fun e!3234326 () Bool)

(assert (=> b!5192585 (= e!3234325 e!3234326)))

(declare-fun res!2205533 () Bool)

(assert (=> b!5192585 (=> res!2205533 e!3234326)))

(declare-datatypes ((List!60506 0))(
  ( (Nil!60382) (Cons!60382 (h!66830 C!29740) (t!373659 List!60506)) )
))
(declare-fun s!2326 () List!60506)

(declare-fun lt!2138310 () (InoxSet Context!8238))

(declare-fun derivationStepZipper!1037 ((InoxSet Context!8238) C!29740) (InoxSet Context!8238))

(assert (=> b!5192585 (= res!2205533 (not (= (derivationStepZipper!1037 z!1189 (h!66830 s!2326)) lt!2138310)))))

(declare-fun lambda!259661 () Int)

(declare-fun flatMap!488 ((InoxSet Context!8238) Int) (InoxSet Context!8238))

(declare-fun derivationStepZipperUp!125 (Context!8238 C!29740) (InoxSet Context!8238))

(assert (=> b!5192585 (= (flatMap!488 z!1189 lambda!259661) (derivationStepZipperUp!125 (h!66829 zl!343) (h!66830 s!2326)))))

(declare-datatypes ((Unit!152304 0))(
  ( (Unit!152305) )
))
(declare-fun lt!2138305 () Unit!152304)

(declare-fun lemmaFlatMapOnSingletonSet!20 ((InoxSet Context!8238) Context!8238 Int) Unit!152304)

(assert (=> b!5192585 (= lt!2138305 (lemmaFlatMapOnSingletonSet!20 z!1189 (h!66829 zl!343) lambda!259661))))

(declare-fun b!5192586 () Bool)

(declare-fun e!3234320 () Bool)

(assert (=> b!5192586 (= e!3234320 e!3234325)))

(declare-fun res!2205532 () Bool)

(assert (=> b!5192586 (=> res!2205532 e!3234325)))

(declare-fun lt!2138295 () (InoxSet Context!8238))

(assert (=> b!5192586 (= res!2205532 (not (= lt!2138295 lt!2138310)))))

(declare-fun lt!2138291 () (InoxSet Context!8238))

(declare-fun lt!2138301 () (InoxSet Context!8238))

(assert (=> b!5192586 (= lt!2138310 ((_ map or) lt!2138291 lt!2138301))))

(declare-fun lt!2138298 () Context!8238)

(declare-fun derivationStepZipperDown!204 (Regex!14735 Context!8238 C!29740) (InoxSet Context!8238))

(assert (=> b!5192586 (= lt!2138301 (derivationStepZipperDown!204 (regTwo!29983 r!7292) lt!2138298 (h!66830 s!2326)))))

(assert (=> b!5192586 (= lt!2138291 (derivationStepZipperDown!204 (regOne!29983 r!7292) lt!2138298 (h!66830 s!2326)))))

(declare-fun b!5192587 () Bool)

(declare-fun res!2205521 () Bool)

(declare-fun e!3234318 () Bool)

(assert (=> b!5192587 (=> res!2205521 e!3234318)))

(declare-fun lt!2138292 () List!60505)

(declare-fun unfocusZipper!477 (List!60505) Regex!14735)

(assert (=> b!5192587 (= res!2205521 (not (= (regTwo!29983 r!7292) (unfocusZipper!477 lt!2138292))))))

(declare-fun b!5192588 () Bool)

(assert (=> b!5192588 (= e!3234318 true)))

(declare-fun lt!2138288 () Bool)

(declare-fun lt!2138294 () Bool)

(assert (=> b!5192588 (= lt!2138288 lt!2138294)))

(declare-fun lt!2138308 () Unit!152304)

(declare-fun lt!2138290 () (InoxSet Context!8238))

(declare-fun theoremZipperRegexEquiv!247 ((InoxSet Context!8238) List!60505 Regex!14735 List!60506) Unit!152304)

(assert (=> b!5192588 (= lt!2138308 (theoremZipperRegexEquiv!247 lt!2138290 lt!2138292 (regTwo!29983 r!7292) s!2326))))

(declare-fun b!5192589 () Bool)

(declare-fun e!3234314 () Bool)

(declare-fun tp_is_empty!38723 () Bool)

(assert (=> b!5192589 (= e!3234314 tp_is_empty!38723)))

(declare-fun b!5192590 () Bool)

(declare-fun e!3234328 () Bool)

(declare-fun tp!1456586 () Bool)

(assert (=> b!5192590 (= e!3234328 tp!1456586)))

(declare-fun b!5192591 () Bool)

(declare-fun res!2205528 () Bool)

(assert (=> b!5192591 (=> res!2205528 e!3234319)))

(declare-fun generalisedUnion!664 (List!60504) Regex!14735)

(declare-fun unfocusZipperList!177 (List!60505) List!60504)

(assert (=> b!5192591 (= res!2205528 (not (= r!7292 (generalisedUnion!664 (unfocusZipperList!177 zl!343)))))))

(declare-fun b!5192592 () Bool)

(declare-fun e!3234322 () Bool)

(declare-fun matchZipper!1015 ((InoxSet Context!8238) List!60506) Bool)

(assert (=> b!5192592 (= e!3234322 (matchZipper!1015 lt!2138301 (t!373659 s!2326)))))

(declare-fun tp!1456587 () Bool)

(declare-fun setElem!32800 () Context!8238)

(declare-fun setNonEmpty!32800 () Bool)

(declare-fun setRes!32800 () Bool)

(assert (=> setNonEmpty!32800 (= setRes!32800 (and tp!1456587 (inv!80084 setElem!32800) e!3234328))))

(declare-fun setRest!32800 () (InoxSet Context!8238))

(assert (=> setNonEmpty!32800 (= z!1189 ((_ map or) (store ((as const (Array Context!8238 Bool)) false) setElem!32800 true) setRest!32800))))

(declare-fun b!5192593 () Bool)

(declare-fun tp!1456589 () Bool)

(assert (=> b!5192593 (= e!3234315 tp!1456589)))

(declare-fun res!2205523 () Bool)

(assert (=> start!549554 (=> (not res!2205523) (not e!3234329))))

(declare-fun validRegex!6471 (Regex!14735) Bool)

(assert (=> start!549554 (= res!2205523 (validRegex!6471 r!7292))))

(assert (=> start!549554 e!3234329))

(assert (=> start!549554 e!3234314))

(declare-fun condSetEmpty!32800 () Bool)

(assert (=> start!549554 (= condSetEmpty!32800 (= z!1189 ((as const (Array Context!8238 Bool)) false)))))

(assert (=> start!549554 setRes!32800))

(assert (=> start!549554 e!3234321))

(declare-fun e!3234327 () Bool)

(assert (=> start!549554 e!3234327))

(declare-fun b!5192594 () Bool)

(declare-fun res!2205539 () Bool)

(declare-fun e!3234316 () Bool)

(assert (=> b!5192594 (=> res!2205539 e!3234316)))

(declare-fun lt!2138307 () Bool)

(declare-fun lt!2138282 () Bool)

(assert (=> b!5192594 (= res!2205539 (not (= (or lt!2138282 lt!2138294) lt!2138307)))))

(declare-fun b!5192595 () Bool)

(declare-fun tp!1456592 () Bool)

(declare-fun tp!1456593 () Bool)

(assert (=> b!5192595 (= e!3234314 (and tp!1456592 tp!1456593))))

(declare-fun b!5192596 () Bool)

(declare-fun tp!1456584 () Bool)

(assert (=> b!5192596 (= e!3234314 tp!1456584)))

(declare-fun b!5192597 () Bool)

(declare-fun e!3234313 () Bool)

(assert (=> b!5192597 (= e!3234326 e!3234313)))

(declare-fun res!2205535 () Bool)

(assert (=> b!5192597 (=> res!2205535 e!3234313)))

(declare-fun lt!2138289 () Bool)

(assert (=> b!5192597 (= res!2205535 (not (= lt!2138289 lt!2138307)))))

(assert (=> b!5192597 (= lt!2138307 (matchZipper!1015 z!1189 s!2326))))

(assert (=> b!5192597 (= lt!2138289 (matchZipper!1015 lt!2138310 (t!373659 s!2326)))))

(declare-fun b!5192598 () Bool)

(declare-fun e!3234324 () Bool)

(assert (=> b!5192598 (= e!3234324 e!3234320)))

(declare-fun res!2205529 () Bool)

(assert (=> b!5192598 (=> res!2205529 e!3234320)))

(declare-fun lt!2138297 () (InoxSet Context!8238))

(assert (=> b!5192598 (= res!2205529 (not (= lt!2138297 lt!2138295)))))

(assert (=> b!5192598 (= lt!2138295 (derivationStepZipperDown!204 r!7292 lt!2138298 (h!66830 s!2326)))))

(assert (=> b!5192598 (= lt!2138298 (Context!8239 Nil!60380))))

(assert (=> b!5192598 (= lt!2138297 (derivationStepZipperUp!125 (Context!8239 (Cons!60380 r!7292 Nil!60380)) (h!66830 s!2326)))))

(declare-fun b!5192599 () Bool)

(declare-fun res!2205536 () Bool)

(assert (=> b!5192599 (=> res!2205536 e!3234319)))

(declare-fun generalisedConcat!404 (List!60504) Regex!14735)

(assert (=> b!5192599 (= res!2205536 (not (= r!7292 (generalisedConcat!404 (exprs!4619 (h!66829 zl!343))))))))

(declare-fun b!5192600 () Bool)

(assert (=> b!5192600 (= e!3234319 e!3234324)))

(declare-fun res!2205537 () Bool)

(assert (=> b!5192600 (=> res!2205537 e!3234324)))

(declare-fun lt!2138311 () Bool)

(declare-fun lt!2138306 () Bool)

(assert (=> b!5192600 (= res!2205537 (or (not (= lt!2138306 (or lt!2138311 lt!2138288))) ((_ is Nil!60382) s!2326)))))

(declare-fun matchRSpec!1838 (Regex!14735 List!60506) Bool)

(assert (=> b!5192600 (= lt!2138288 (matchRSpec!1838 (regTwo!29983 r!7292) s!2326))))

(declare-fun matchR!6920 (Regex!14735 List!60506) Bool)

(assert (=> b!5192600 (= lt!2138288 (matchR!6920 (regTwo!29983 r!7292) s!2326))))

(declare-fun lt!2138286 () Unit!152304)

(declare-fun mainMatchTheorem!1838 (Regex!14735 List!60506) Unit!152304)

(assert (=> b!5192600 (= lt!2138286 (mainMatchTheorem!1838 (regTwo!29983 r!7292) s!2326))))

(assert (=> b!5192600 (= lt!2138311 (matchRSpec!1838 (regOne!29983 r!7292) s!2326))))

(assert (=> b!5192600 (= lt!2138311 (matchR!6920 (regOne!29983 r!7292) s!2326))))

(declare-fun lt!2138300 () Unit!152304)

(assert (=> b!5192600 (= lt!2138300 (mainMatchTheorem!1838 (regOne!29983 r!7292) s!2326))))

(declare-fun b!5192601 () Bool)

(declare-fun e!3234323 () Bool)

(assert (=> b!5192601 (= e!3234313 e!3234323)))

(declare-fun res!2205538 () Bool)

(assert (=> b!5192601 (=> res!2205538 e!3234323)))

(declare-fun lt!2138299 () Bool)

(assert (=> b!5192601 (= res!2205538 (or (not (= lt!2138299 lt!2138289)) (not (= lt!2138299 lt!2138307))))))

(assert (=> b!5192601 (= lt!2138289 lt!2138299)))

(assert (=> b!5192601 (= lt!2138299 e!3234322)))

(declare-fun res!2205527 () Bool)

(assert (=> b!5192601 (=> res!2205527 e!3234322)))

(declare-fun lt!2138284 () Bool)

(assert (=> b!5192601 (= res!2205527 lt!2138284)))

(assert (=> b!5192601 (= lt!2138284 (matchZipper!1015 lt!2138291 (t!373659 s!2326)))))

(declare-fun lt!2138296 () Unit!152304)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!14 ((InoxSet Context!8238) (InoxSet Context!8238) List!60506) Unit!152304)

(assert (=> b!5192601 (= lt!2138296 (lemmaZipperConcatMatchesSameAsBothZippers!14 lt!2138291 lt!2138301 (t!373659 s!2326)))))

(declare-fun b!5192602 () Bool)

(declare-fun res!2205534 () Bool)

(assert (=> b!5192602 (=> res!2205534 e!3234319)))

(assert (=> b!5192602 (= res!2205534 (not ((_ is Cons!60380) (exprs!4619 (h!66829 zl!343)))))))

(declare-fun b!5192603 () Bool)

(declare-fun e!3234317 () Bool)

(assert (=> b!5192603 (= e!3234317 e!3234316)))

(declare-fun res!2205542 () Bool)

(assert (=> b!5192603 (=> res!2205542 e!3234316)))

(assert (=> b!5192603 (= res!2205542 (not (= lt!2138294 (matchZipper!1015 lt!2138301 (t!373659 s!2326)))))))

(assert (=> b!5192603 (= lt!2138294 (matchZipper!1015 lt!2138290 s!2326))))

(declare-fun b!5192604 () Bool)

(assert (=> b!5192604 (= e!3234329 (not e!3234319))))

(declare-fun res!2205540 () Bool)

(assert (=> b!5192604 (=> res!2205540 e!3234319)))

(assert (=> b!5192604 (= res!2205540 (not ((_ is Cons!60381) zl!343)))))

(assert (=> b!5192604 (= lt!2138306 (matchRSpec!1838 r!7292 s!2326))))

(assert (=> b!5192604 (= lt!2138306 (matchR!6920 r!7292 s!2326))))

(declare-fun lt!2138285 () Unit!152304)

(assert (=> b!5192604 (= lt!2138285 (mainMatchTheorem!1838 r!7292 s!2326))))

(declare-fun setIsEmpty!32800 () Bool)

(assert (=> setIsEmpty!32800 setRes!32800))

(declare-fun b!5192605 () Bool)

(declare-fun res!2205522 () Bool)

(assert (=> b!5192605 (=> (not res!2205522) (not e!3234329))))

(assert (=> b!5192605 (= res!2205522 (= r!7292 (unfocusZipper!477 zl!343)))))

(declare-fun b!5192606 () Bool)

(declare-fun tp!1456590 () Bool)

(assert (=> b!5192606 (= e!3234327 (and tp_is_empty!38723 tp!1456590))))

(declare-fun b!5192607 () Bool)

(declare-fun tp!1456588 () Bool)

(declare-fun tp!1456591 () Bool)

(assert (=> b!5192607 (= e!3234314 (and tp!1456588 tp!1456591))))

(declare-fun b!5192608 () Bool)

(declare-fun res!2205531 () Bool)

(assert (=> b!5192608 (=> res!2205531 e!3234318)))

(assert (=> b!5192608 (= res!2205531 (not (= (toList!8519 lt!2138290) lt!2138292)))))

(declare-fun b!5192609 () Bool)

(declare-fun res!2205525 () Bool)

(assert (=> b!5192609 (=> res!2205525 e!3234319)))

(declare-fun isEmpty!32324 (List!60505) Bool)

(assert (=> b!5192609 (= res!2205525 (not (isEmpty!32324 (t!373658 zl!343))))))

(declare-fun b!5192610 () Bool)

(assert (=> b!5192610 (= e!3234323 e!3234317)))

(declare-fun res!2205524 () Bool)

(assert (=> b!5192610 (=> res!2205524 e!3234317)))

(assert (=> b!5192610 (= res!2205524 (not (= lt!2138282 lt!2138284)))))

(declare-fun lt!2138293 () (InoxSet Context!8238))

(assert (=> b!5192610 (= lt!2138282 (matchZipper!1015 lt!2138293 s!2326))))

(declare-fun lt!2138303 () Context!8238)

(assert (=> b!5192610 (= (flatMap!488 lt!2138290 lambda!259661) (derivationStepZipperUp!125 lt!2138303 (h!66830 s!2326)))))

(declare-fun lt!2138283 () Unit!152304)

(assert (=> b!5192610 (= lt!2138283 (lemmaFlatMapOnSingletonSet!20 lt!2138290 lt!2138303 lambda!259661))))

(declare-fun lt!2138304 () Context!8238)

(assert (=> b!5192610 (= (flatMap!488 lt!2138293 lambda!259661) (derivationStepZipperUp!125 lt!2138304 (h!66830 s!2326)))))

(declare-fun lt!2138302 () Unit!152304)

(assert (=> b!5192610 (= lt!2138302 (lemmaFlatMapOnSingletonSet!20 lt!2138293 lt!2138304 lambda!259661))))

(declare-fun lt!2138281 () (InoxSet Context!8238))

(assert (=> b!5192610 (= lt!2138281 (derivationStepZipperUp!125 lt!2138303 (h!66830 s!2326)))))

(declare-fun lt!2138309 () (InoxSet Context!8238))

(assert (=> b!5192610 (= lt!2138309 (derivationStepZipperUp!125 lt!2138304 (h!66830 s!2326)))))

(assert (=> b!5192610 (= lt!2138290 (store ((as const (Array Context!8238 Bool)) false) lt!2138303 true))))

(assert (=> b!5192610 (= lt!2138303 (Context!8239 (Cons!60380 (regTwo!29983 r!7292) Nil!60380)))))

(assert (=> b!5192610 (= lt!2138293 (store ((as const (Array Context!8238 Bool)) false) lt!2138304 true))))

(assert (=> b!5192610 (= lt!2138304 (Context!8239 (Cons!60380 (regOne!29983 r!7292) Nil!60380)))))

(declare-fun b!5192611 () Bool)

(assert (=> b!5192611 (= e!3234316 e!3234318)))

(declare-fun res!2205530 () Bool)

(assert (=> b!5192611 (=> res!2205530 e!3234318)))

(assert (=> b!5192611 (= res!2205530 (not (validRegex!6471 (regTwo!29983 r!7292))))))

(assert (=> b!5192611 (= lt!2138292 (Cons!60381 lt!2138303 Nil!60381))))

(assert (=> b!5192611 (= lt!2138311 lt!2138282)))

(declare-fun lt!2138287 () Unit!152304)

(assert (=> b!5192611 (= lt!2138287 (theoremZipperRegexEquiv!247 lt!2138293 (Cons!60381 lt!2138304 Nil!60381) (regOne!29983 r!7292) s!2326))))

(assert (= (and start!549554 res!2205523) b!5192584))

(assert (= (and b!5192584 res!2205541) b!5192605))

(assert (= (and b!5192605 res!2205522) b!5192604))

(assert (= (and b!5192604 (not res!2205540)) b!5192609))

(assert (= (and b!5192609 (not res!2205525)) b!5192599))

(assert (= (and b!5192599 (not res!2205536)) b!5192602))

(assert (= (and b!5192602 (not res!2205534)) b!5192591))

(assert (= (and b!5192591 (not res!2205528)) b!5192582))

(assert (= (and b!5192582 (not res!2205526)) b!5192600))

(assert (= (and b!5192600 (not res!2205537)) b!5192598))

(assert (= (and b!5192598 (not res!2205529)) b!5192586))

(assert (= (and b!5192586 (not res!2205532)) b!5192585))

(assert (= (and b!5192585 (not res!2205533)) b!5192597))

(assert (= (and b!5192597 (not res!2205535)) b!5192601))

(assert (= (and b!5192601 (not res!2205527)) b!5192592))

(assert (= (and b!5192601 (not res!2205538)) b!5192610))

(assert (= (and b!5192610 (not res!2205524)) b!5192603))

(assert (= (and b!5192603 (not res!2205542)) b!5192594))

(assert (= (and b!5192594 (not res!2205539)) b!5192611))

(assert (= (and b!5192611 (not res!2205530)) b!5192608))

(assert (= (and b!5192608 (not res!2205531)) b!5192587))

(assert (= (and b!5192587 (not res!2205521)) b!5192588))

(assert (= (and start!549554 ((_ is ElementMatch!14735) r!7292)) b!5192589))

(assert (= (and start!549554 ((_ is Concat!23580) r!7292)) b!5192595))

(assert (= (and start!549554 ((_ is Star!14735) r!7292)) b!5192596))

(assert (= (and start!549554 ((_ is Union!14735) r!7292)) b!5192607))

(assert (= (and start!549554 condSetEmpty!32800) setIsEmpty!32800))

(assert (= (and start!549554 (not condSetEmpty!32800)) setNonEmpty!32800))

(assert (= setNonEmpty!32800 b!5192590))

(assert (= b!5192583 b!5192593))

(assert (= (and start!549554 ((_ is Cons!60381) zl!343)) b!5192583))

(assert (= (and start!549554 ((_ is Cons!60382) s!2326)) b!5192606))

(declare-fun m!6248262 () Bool)

(assert (=> b!5192586 m!6248262))

(declare-fun m!6248264 () Bool)

(assert (=> b!5192586 m!6248264))

(declare-fun m!6248266 () Bool)

(assert (=> b!5192588 m!6248266))

(declare-fun m!6248268 () Bool)

(assert (=> b!5192599 m!6248268))

(declare-fun m!6248270 () Bool)

(assert (=> b!5192585 m!6248270))

(declare-fun m!6248272 () Bool)

(assert (=> b!5192585 m!6248272))

(declare-fun m!6248274 () Bool)

(assert (=> b!5192585 m!6248274))

(declare-fun m!6248276 () Bool)

(assert (=> b!5192585 m!6248276))

(declare-fun m!6248278 () Bool)

(assert (=> b!5192603 m!6248278))

(declare-fun m!6248280 () Bool)

(assert (=> b!5192603 m!6248280))

(declare-fun m!6248282 () Bool)

(assert (=> b!5192604 m!6248282))

(declare-fun m!6248284 () Bool)

(assert (=> b!5192604 m!6248284))

(declare-fun m!6248286 () Bool)

(assert (=> b!5192604 m!6248286))

(assert (=> b!5192592 m!6248278))

(declare-fun m!6248288 () Bool)

(assert (=> b!5192597 m!6248288))

(declare-fun m!6248290 () Bool)

(assert (=> b!5192597 m!6248290))

(declare-fun m!6248292 () Bool)

(assert (=> b!5192608 m!6248292))

(declare-fun m!6248294 () Bool)

(assert (=> b!5192610 m!6248294))

(declare-fun m!6248296 () Bool)

(assert (=> b!5192610 m!6248296))

(declare-fun m!6248298 () Bool)

(assert (=> b!5192610 m!6248298))

(declare-fun m!6248300 () Bool)

(assert (=> b!5192610 m!6248300))

(declare-fun m!6248302 () Bool)

(assert (=> b!5192610 m!6248302))

(declare-fun m!6248304 () Bool)

(assert (=> b!5192610 m!6248304))

(declare-fun m!6248306 () Bool)

(assert (=> b!5192610 m!6248306))

(declare-fun m!6248308 () Bool)

(assert (=> b!5192610 m!6248308))

(declare-fun m!6248310 () Bool)

(assert (=> b!5192610 m!6248310))

(declare-fun m!6248312 () Bool)

(assert (=> b!5192587 m!6248312))

(declare-fun m!6248314 () Bool)

(assert (=> setNonEmpty!32800 m!6248314))

(declare-fun m!6248316 () Bool)

(assert (=> b!5192591 m!6248316))

(assert (=> b!5192591 m!6248316))

(declare-fun m!6248318 () Bool)

(assert (=> b!5192591 m!6248318))

(declare-fun m!6248320 () Bool)

(assert (=> b!5192611 m!6248320))

(declare-fun m!6248322 () Bool)

(assert (=> b!5192611 m!6248322))

(declare-fun m!6248324 () Bool)

(assert (=> b!5192598 m!6248324))

(declare-fun m!6248326 () Bool)

(assert (=> b!5192598 m!6248326))

(declare-fun m!6248328 () Bool)

(assert (=> b!5192609 m!6248328))

(declare-fun m!6248330 () Bool)

(assert (=> b!5192600 m!6248330))

(declare-fun m!6248332 () Bool)

(assert (=> b!5192600 m!6248332))

(declare-fun m!6248334 () Bool)

(assert (=> b!5192600 m!6248334))

(declare-fun m!6248336 () Bool)

(assert (=> b!5192600 m!6248336))

(declare-fun m!6248338 () Bool)

(assert (=> b!5192600 m!6248338))

(declare-fun m!6248340 () Bool)

(assert (=> b!5192600 m!6248340))

(declare-fun m!6248342 () Bool)

(assert (=> b!5192605 m!6248342))

(declare-fun m!6248344 () Bool)

(assert (=> b!5192584 m!6248344))

(declare-fun m!6248346 () Bool)

(assert (=> start!549554 m!6248346))

(declare-fun m!6248348 () Bool)

(assert (=> b!5192601 m!6248348))

(declare-fun m!6248350 () Bool)

(assert (=> b!5192601 m!6248350))

(declare-fun m!6248352 () Bool)

(assert (=> b!5192583 m!6248352))

(check-sat (not b!5192590) (not b!5192598) (not b!5192587) (not b!5192606) (not b!5192601) (not b!5192596) (not start!549554) (not b!5192585) (not b!5192591) (not b!5192584) (not b!5192592) (not b!5192593) (not b!5192599) (not b!5192610) (not b!5192595) (not b!5192603) (not b!5192583) (not b!5192605) (not b!5192604) (not b!5192588) (not b!5192607) (not b!5192608) (not b!5192586) (not b!5192611) (not b!5192609) (not b!5192597) (not b!5192600) (not setNonEmpty!32800) tp_is_empty!38723)
(check-sat)
