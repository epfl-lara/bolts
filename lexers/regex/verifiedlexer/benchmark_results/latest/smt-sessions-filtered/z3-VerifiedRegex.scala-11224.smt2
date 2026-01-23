; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!587592 () Bool)

(assert start!587592)

(declare-fun b!5698605 () Bool)

(assert (=> b!5698605 true))

(assert (=> b!5698605 true))

(declare-fun lambda!307306 () Int)

(declare-fun lambda!307305 () Int)

(assert (=> b!5698605 (not (= lambda!307306 lambda!307305))))

(assert (=> b!5698605 true))

(assert (=> b!5698605 true))

(declare-fun b!5698622 () Bool)

(assert (=> b!5698622 true))

(declare-fun bs!1328150 () Bool)

(declare-fun b!5698636 () Bool)

(assert (= bs!1328150 (and b!5698636 b!5698605)))

(declare-datatypes ((C!31660 0))(
  ( (C!31661 (val!25532 Int)) )
))
(declare-datatypes ((Regex!15695 0))(
  ( (ElementMatch!15695 (c!1003517 C!31660)) (Concat!24540 (regOne!31902 Regex!15695) (regTwo!31902 Regex!15695)) (EmptyExpr!15695) (Star!15695 (reg!16024 Regex!15695)) (EmptyLang!15695) (Union!15695 (regOne!31903 Regex!15695) (regTwo!31903 Regex!15695)) )
))
(declare-fun r!7292 () Regex!15695)

(declare-fun lambda!307308 () Int)

(declare-fun lt!2273350 () Regex!15695)

(assert (=> bs!1328150 (= (= lt!2273350 (regOne!31902 r!7292)) (= lambda!307308 lambda!307305))))

(assert (=> bs!1328150 (not (= lambda!307308 lambda!307306))))

(assert (=> b!5698636 true))

(assert (=> b!5698636 true))

(assert (=> b!5698636 true))

(declare-fun lambda!307309 () Int)

(assert (=> bs!1328150 (not (= lambda!307309 lambda!307305))))

(assert (=> bs!1328150 (= (= lt!2273350 (regOne!31902 r!7292)) (= lambda!307309 lambda!307306))))

(assert (=> b!5698636 (not (= lambda!307309 lambda!307308))))

(assert (=> b!5698636 true))

(assert (=> b!5698636 true))

(assert (=> b!5698636 true))

(declare-fun e!3505758 () Bool)

(declare-fun e!3505766 () Bool)

(assert (=> b!5698605 (= e!3505758 e!3505766)))

(declare-fun res!2406592 () Bool)

(assert (=> b!5698605 (=> res!2406592 e!3505766)))

(declare-datatypes ((List!63384 0))(
  ( (Nil!63260) (Cons!63260 (h!69708 C!31660) (t!376702 List!63384)) )
))
(declare-fun s!2326 () List!63384)

(declare-fun lt!2273333 () Bool)

(declare-fun lt!2273341 () Bool)

(get-info :version)

(assert (=> b!5698605 (= res!2406592 (or (not (= lt!2273333 lt!2273341)) ((_ is Nil!63260) s!2326)))))

(declare-fun Exists!2795 (Int) Bool)

(assert (=> b!5698605 (= (Exists!2795 lambda!307305) (Exists!2795 lambda!307306))))

(declare-datatypes ((Unit!156312 0))(
  ( (Unit!156313) )
))
(declare-fun lt!2273358 () Unit!156312)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1424 (Regex!15695 Regex!15695 List!63384) Unit!156312)

(assert (=> b!5698605 (= lt!2273358 (lemmaExistCutMatchRandMatchRSpecEquivalent!1424 (regOne!31902 r!7292) (regTwo!31902 r!7292) s!2326))))

(assert (=> b!5698605 (= lt!2273341 (Exists!2795 lambda!307305))))

(declare-datatypes ((tuple2!65584 0))(
  ( (tuple2!65585 (_1!36095 List!63384) (_2!36095 List!63384)) )
))
(declare-datatypes ((Option!15704 0))(
  ( (None!15703) (Some!15703 (v!51756 tuple2!65584)) )
))
(declare-fun isDefined!12407 (Option!15704) Bool)

(declare-fun findConcatSeparation!2118 (Regex!15695 Regex!15695 List!63384 List!63384 List!63384) Option!15704)

(assert (=> b!5698605 (= lt!2273341 (isDefined!12407 (findConcatSeparation!2118 (regOne!31902 r!7292) (regTwo!31902 r!7292) Nil!63260 s!2326 s!2326)))))

(declare-fun lt!2273340 () Unit!156312)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1882 (Regex!15695 Regex!15695 List!63384) Unit!156312)

(assert (=> b!5698605 (= lt!2273340 (lemmaFindConcatSeparationEquivalentToExists!1882 (regOne!31902 r!7292) (regTwo!31902 r!7292) s!2326))))

(declare-fun b!5698606 () Bool)

(declare-fun e!3505764 () Bool)

(assert (=> b!5698606 (= e!3505764 (not e!3505758))))

(declare-fun res!2406600 () Bool)

(assert (=> b!5698606 (=> res!2406600 e!3505758)))

(declare-datatypes ((List!63385 0))(
  ( (Nil!63261) (Cons!63261 (h!69709 Regex!15695) (t!376703 List!63385)) )
))
(declare-datatypes ((Context!10158 0))(
  ( (Context!10159 (exprs!5579 List!63385)) )
))
(declare-datatypes ((List!63386 0))(
  ( (Nil!63262) (Cons!63262 (h!69710 Context!10158) (t!376704 List!63386)) )
))
(declare-fun zl!343 () List!63386)

(assert (=> b!5698606 (= res!2406600 (not ((_ is Cons!63262) zl!343)))))

(declare-fun lt!2273338 () Bool)

(assert (=> b!5698606 (= lt!2273333 lt!2273338)))

(declare-fun matchRSpec!2798 (Regex!15695 List!63384) Bool)

(assert (=> b!5698606 (= lt!2273338 (matchRSpec!2798 r!7292 s!2326))))

(declare-fun matchR!7880 (Regex!15695 List!63384) Bool)

(assert (=> b!5698606 (= lt!2273333 (matchR!7880 r!7292 s!2326))))

(declare-fun lt!2273343 () Unit!156312)

(declare-fun mainMatchTheorem!2798 (Regex!15695 List!63384) Unit!156312)

(assert (=> b!5698606 (= lt!2273343 (mainMatchTheorem!2798 r!7292 s!2326))))

(declare-fun setIsEmpty!38163 () Bool)

(declare-fun setRes!38163 () Bool)

(assert (=> setIsEmpty!38163 setRes!38163))

(declare-fun b!5698607 () Bool)

(declare-fun e!3505761 () Unit!156312)

(declare-fun Unit!156314 () Unit!156312)

(assert (=> b!5698607 (= e!3505761 Unit!156314)))

(declare-fun b!5698608 () Bool)

(declare-fun e!3505751 () Bool)

(declare-fun e!3505767 () Bool)

(assert (=> b!5698608 (= e!3505751 e!3505767)))

(declare-fun res!2406583 () Bool)

(assert (=> b!5698608 (=> res!2406583 e!3505767)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2273342 () (InoxSet Context!10158))

(declare-fun lt!2273352 () (InoxSet Context!10158))

(assert (=> b!5698608 (= res!2406583 (not (= lt!2273342 lt!2273352)))))

(declare-fun lt!2273355 () (InoxSet Context!10158))

(declare-fun lambda!307307 () Int)

(declare-fun lt!2273346 () Context!10158)

(declare-fun flatMap!1308 ((InoxSet Context!10158) Int) (InoxSet Context!10158))

(declare-fun derivationStepZipperUp!963 (Context!10158 C!31660) (InoxSet Context!10158))

(assert (=> b!5698608 (= (flatMap!1308 lt!2273355 lambda!307307) (derivationStepZipperUp!963 lt!2273346 (h!69708 s!2326)))))

(declare-fun lt!2273367 () Unit!156312)

(declare-fun lemmaFlatMapOnSingletonSet!840 ((InoxSet Context!10158) Context!10158 Int) Unit!156312)

(assert (=> b!5698608 (= lt!2273367 (lemmaFlatMapOnSingletonSet!840 lt!2273355 lt!2273346 lambda!307307))))

(declare-fun lt!2273368 () (InoxSet Context!10158))

(assert (=> b!5698608 (= lt!2273368 (derivationStepZipperUp!963 lt!2273346 (h!69708 s!2326)))))

(declare-fun derivationStepZipper!1778 ((InoxSet Context!10158) C!31660) (InoxSet Context!10158))

(assert (=> b!5698608 (= lt!2273342 (derivationStepZipper!1778 lt!2273355 (h!69708 s!2326)))))

(assert (=> b!5698608 (= lt!2273355 (store ((as const (Array Context!10158 Bool)) false) lt!2273346 true))))

(declare-fun lt!2273351 () List!63385)

(assert (=> b!5698608 (= lt!2273346 (Context!10159 (Cons!63261 (reg!16024 (regOne!31902 r!7292)) lt!2273351)))))

(declare-fun b!5698609 () Bool)

(declare-fun e!3505750 () Bool)

(declare-fun lt!2273363 () (InoxSet Context!10158))

(declare-fun matchZipper!1833 ((InoxSet Context!10158) List!63384) Bool)

(assert (=> b!5698609 (= e!3505750 (matchZipper!1833 lt!2273363 (t!376702 s!2326)))))

(declare-fun b!5698610 () Bool)

(declare-fun e!3505763 () Bool)

(assert (=> b!5698610 (= e!3505763 (or (not lt!2273333) lt!2273338))))

(declare-fun b!5698611 () Bool)

(declare-fun e!3505755 () Bool)

(assert (=> b!5698611 (= e!3505767 e!3505755)))

(declare-fun res!2406607 () Bool)

(assert (=> b!5698611 (=> res!2406607 e!3505755)))

(declare-fun lt!2273349 () Regex!15695)

(assert (=> b!5698611 (= res!2406607 (not (= r!7292 lt!2273349)))))

(assert (=> b!5698611 (= lt!2273349 (Concat!24540 lt!2273350 (regTwo!31902 r!7292)))))

(declare-fun b!5698612 () Bool)

(declare-fun Unit!156315 () Unit!156312)

(assert (=> b!5698612 (= e!3505761 Unit!156315)))

(declare-fun lt!2273356 () (InoxSet Context!10158))

(declare-fun lt!2273348 () Unit!156312)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!720 ((InoxSet Context!10158) (InoxSet Context!10158) List!63384) Unit!156312)

(assert (=> b!5698612 (= lt!2273348 (lemmaZipperConcatMatchesSameAsBothZippers!720 lt!2273356 lt!2273363 (t!376702 s!2326)))))

(declare-fun res!2406586 () Bool)

(assert (=> b!5698612 (= res!2406586 (matchZipper!1833 lt!2273356 (t!376702 s!2326)))))

(assert (=> b!5698612 (=> res!2406586 e!3505750)))

(assert (=> b!5698612 (= (matchZipper!1833 ((_ map or) lt!2273356 lt!2273363) (t!376702 s!2326)) e!3505750)))

(declare-fun b!5698613 () Bool)

(declare-fun e!3505753 () Bool)

(declare-fun nullable!5727 (Regex!15695) Bool)

(assert (=> b!5698613 (= e!3505753 (nullable!5727 (regOne!31902 (regOne!31902 r!7292))))))

(declare-fun b!5698614 () Bool)

(declare-fun e!3505760 () Bool)

(declare-fun tp!1580477 () Bool)

(assert (=> b!5698614 (= e!3505760 tp!1580477)))

(declare-fun b!5698615 () Bool)

(declare-fun res!2406605 () Bool)

(declare-fun e!3505762 () Bool)

(assert (=> b!5698615 (=> res!2406605 e!3505762)))

(declare-fun lt!2273332 () tuple2!65584)

(declare-fun isEmpty!35122 (List!63384) Bool)

(assert (=> b!5698615 (= res!2406605 (not (isEmpty!35122 (_1!36095 lt!2273332))))))

(declare-fun b!5698616 () Bool)

(declare-fun res!2406589 () Bool)

(declare-fun e!3505769 () Bool)

(assert (=> b!5698616 (=> res!2406589 e!3505769)))

(declare-fun lt!2273365 () Context!10158)

(declare-fun unfocusZipper!1437 (List!63386) Regex!15695)

(assert (=> b!5698616 (= res!2406589 (not (= (unfocusZipper!1437 (Cons!63262 lt!2273365 Nil!63262)) lt!2273349)))))

(declare-fun b!5698617 () Bool)

(declare-fun res!2406610 () Bool)

(assert (=> b!5698617 (=> res!2406610 e!3505766)))

(declare-fun isEmpty!35123 (List!63385) Bool)

(assert (=> b!5698617 (= res!2406610 (isEmpty!35123 (t!376703 (exprs!5579 (h!69710 zl!343)))))))

(declare-fun b!5698618 () Bool)

(declare-fun res!2406599 () Bool)

(declare-fun e!3505765 () Bool)

(assert (=> b!5698618 (=> (not res!2406599) (not e!3505765))))

(declare-fun z!1189 () (InoxSet Context!10158))

(declare-fun toList!9479 ((InoxSet Context!10158)) List!63386)

(assert (=> b!5698618 (= res!2406599 (= (toList!9479 z!1189) zl!343))))

(declare-fun b!5698619 () Bool)

(declare-fun e!3505757 () Bool)

(declare-fun tp!1580474 () Bool)

(declare-fun tp!1580478 () Bool)

(assert (=> b!5698619 (= e!3505757 (and tp!1580474 tp!1580478))))

(declare-fun b!5698620 () Bool)

(declare-fun e!3505752 () Bool)

(assert (=> b!5698620 (= e!3505752 e!3505769)))

(declare-fun res!2406608 () Bool)

(assert (=> b!5698620 (=> res!2406608 e!3505769)))

(declare-fun lt!2273353 () Context!10158)

(assert (=> b!5698620 (= res!2406608 (not (= (unfocusZipper!1437 (Cons!63262 lt!2273353 Nil!63262)) (reg!16024 (regOne!31902 r!7292)))))))

(declare-fun lt!2273347 () (InoxSet Context!10158))

(assert (=> b!5698620 (= (flatMap!1308 lt!2273347 lambda!307307) (derivationStepZipperUp!963 lt!2273365 (h!69708 s!2326)))))

(declare-fun lt!2273361 () Unit!156312)

(assert (=> b!5698620 (= lt!2273361 (lemmaFlatMapOnSingletonSet!840 lt!2273347 lt!2273365 lambda!307307))))

(declare-fun lt!2273364 () (InoxSet Context!10158))

(assert (=> b!5698620 (= (flatMap!1308 lt!2273364 lambda!307307) (derivationStepZipperUp!963 lt!2273353 (h!69708 s!2326)))))

(declare-fun lt!2273337 () Unit!156312)

(assert (=> b!5698620 (= lt!2273337 (lemmaFlatMapOnSingletonSet!840 lt!2273364 lt!2273353 lambda!307307))))

(declare-fun lt!2273354 () (InoxSet Context!10158))

(assert (=> b!5698620 (= lt!2273354 (derivationStepZipperUp!963 lt!2273365 (h!69708 s!2326)))))

(declare-fun lt!2273366 () (InoxSet Context!10158))

(assert (=> b!5698620 (= lt!2273366 (derivationStepZipperUp!963 lt!2273353 (h!69708 s!2326)))))

(assert (=> b!5698620 (= lt!2273347 (store ((as const (Array Context!10158 Bool)) false) lt!2273365 true))))

(assert (=> b!5698620 (= lt!2273364 (store ((as const (Array Context!10158 Bool)) false) lt!2273353 true))))

(assert (=> b!5698620 (= lt!2273353 (Context!10159 (Cons!63261 (reg!16024 (regOne!31902 r!7292)) Nil!63261)))))

(declare-fun b!5698621 () Bool)

(declare-fun res!2406603 () Bool)

(assert (=> b!5698621 (=> res!2406603 e!3505758)))

(assert (=> b!5698621 (= res!2406603 (not ((_ is Cons!63261) (exprs!5579 (h!69710 zl!343)))))))

(declare-fun e!3505770 () Bool)

(assert (=> b!5698622 (= e!3505766 e!3505770)))

(declare-fun res!2406595 () Bool)

(assert (=> b!5698622 (=> res!2406595 e!3505770)))

(assert (=> b!5698622 (= res!2406595 (or (and ((_ is ElementMatch!15695) (regOne!31902 r!7292)) (= (c!1003517 (regOne!31902 r!7292)) (h!69708 s!2326))) ((_ is Union!15695) (regOne!31902 r!7292))))))

(declare-fun lt!2273331 () Unit!156312)

(assert (=> b!5698622 (= lt!2273331 e!3505761)))

(declare-fun c!1003516 () Bool)

(assert (=> b!5698622 (= c!1003516 (nullable!5727 (h!69709 (exprs!5579 (h!69710 zl!343)))))))

(assert (=> b!5698622 (= (flatMap!1308 z!1189 lambda!307307) (derivationStepZipperUp!963 (h!69710 zl!343) (h!69708 s!2326)))))

(declare-fun lt!2273334 () Unit!156312)

(assert (=> b!5698622 (= lt!2273334 (lemmaFlatMapOnSingletonSet!840 z!1189 (h!69710 zl!343) lambda!307307))))

(declare-fun lt!2273330 () Context!10158)

(assert (=> b!5698622 (= lt!2273363 (derivationStepZipperUp!963 lt!2273330 (h!69708 s!2326)))))

(declare-fun derivationStepZipperDown!1037 (Regex!15695 Context!10158 C!31660) (InoxSet Context!10158))

(assert (=> b!5698622 (= lt!2273356 (derivationStepZipperDown!1037 (h!69709 (exprs!5579 (h!69710 zl!343))) lt!2273330 (h!69708 s!2326)))))

(assert (=> b!5698622 (= lt!2273330 (Context!10159 (t!376703 (exprs!5579 (h!69710 zl!343)))))))

(declare-fun lt!2273359 () (InoxSet Context!10158))

(assert (=> b!5698622 (= lt!2273359 (derivationStepZipperUp!963 (Context!10159 (Cons!63261 (h!69709 (exprs!5579 (h!69710 zl!343))) (t!376703 (exprs!5579 (h!69710 zl!343))))) (h!69708 s!2326)))))

(declare-fun b!5698623 () Bool)

(declare-fun res!2406609 () Bool)

(assert (=> b!5698623 (=> res!2406609 e!3505758)))

(declare-fun generalisedUnion!1558 (List!63385) Regex!15695)

(declare-fun unfocusZipperList!1123 (List!63386) List!63385)

(assert (=> b!5698623 (= res!2406609 (not (= r!7292 (generalisedUnion!1558 (unfocusZipperList!1123 zl!343)))))))

(declare-fun b!5698624 () Bool)

(declare-fun tp!1580469 () Bool)

(declare-fun tp!1580475 () Bool)

(assert (=> b!5698624 (= e!3505757 (and tp!1580469 tp!1580475))))

(declare-fun res!2406596 () Bool)

(assert (=> start!587592 (=> (not res!2406596) (not e!3505765))))

(declare-fun validRegex!7431 (Regex!15695) Bool)

(assert (=> start!587592 (= res!2406596 (validRegex!7431 r!7292))))

(assert (=> start!587592 e!3505765))

(assert (=> start!587592 e!3505757))

(declare-fun condSetEmpty!38163 () Bool)

(assert (=> start!587592 (= condSetEmpty!38163 (= z!1189 ((as const (Array Context!10158 Bool)) false)))))

(assert (=> start!587592 setRes!38163))

(declare-fun e!3505759 () Bool)

(assert (=> start!587592 e!3505759))

(declare-fun e!3505754 () Bool)

(assert (=> start!587592 e!3505754))

(declare-fun b!5698604 () Bool)

(declare-fun res!2406591 () Bool)

(assert (=> b!5698604 (=> res!2406591 e!3505758)))

(declare-fun isEmpty!35124 (List!63386) Bool)

(assert (=> b!5698604 (= res!2406591 (not (isEmpty!35124 (t!376704 zl!343))))))

(declare-fun b!5698625 () Bool)

(assert (=> b!5698625 (= e!3505762 true)))

(declare-fun lt!2273345 () (InoxSet Context!10158))

(assert (=> b!5698625 (= (flatMap!1308 lt!2273345 lambda!307307) (derivationStepZipperUp!963 lt!2273330 (h!69708 s!2326)))))

(declare-fun lt!2273335 () Unit!156312)

(assert (=> b!5698625 (= lt!2273335 (lemmaFlatMapOnSingletonSet!840 lt!2273345 lt!2273330 lambda!307307))))

(assert (=> b!5698625 (= lt!2273345 (store ((as const (Array Context!10158 Bool)) false) lt!2273330 true))))

(declare-fun b!5698626 () Bool)

(assert (=> b!5698626 (= e!3505770 e!3505751)))

(declare-fun res!2406604 () Bool)

(assert (=> b!5698626 (=> res!2406604 e!3505751)))

(assert (=> b!5698626 (= res!2406604 (not (= lt!2273356 lt!2273352)))))

(assert (=> b!5698626 (= lt!2273352 (derivationStepZipperDown!1037 (reg!16024 (regOne!31902 r!7292)) lt!2273365 (h!69708 s!2326)))))

(assert (=> b!5698626 (= lt!2273365 (Context!10159 lt!2273351))))

(assert (=> b!5698626 (= lt!2273351 (Cons!63261 lt!2273350 (t!376703 (exprs!5579 (h!69710 zl!343)))))))

(assert (=> b!5698626 (= lt!2273350 (Star!15695 (reg!16024 (regOne!31902 r!7292))))))

(declare-fun b!5698627 () Bool)

(declare-fun res!2406590 () Bool)

(assert (=> b!5698627 (=> res!2406590 e!3505770)))

(assert (=> b!5698627 (= res!2406590 e!3505753)))

(declare-fun res!2406597 () Bool)

(assert (=> b!5698627 (=> (not res!2406597) (not e!3505753))))

(assert (=> b!5698627 (= res!2406597 ((_ is Concat!24540) (regOne!31902 r!7292)))))

(declare-fun b!5698628 () Bool)

(declare-fun res!2406584 () Bool)

(assert (=> b!5698628 (=> res!2406584 e!3505758)))

(assert (=> b!5698628 (= res!2406584 (or ((_ is EmptyExpr!15695) r!7292) ((_ is EmptyLang!15695) r!7292) ((_ is ElementMatch!15695) r!7292) ((_ is Union!15695) r!7292) (not ((_ is Concat!24540) r!7292))))))

(declare-fun b!5698629 () Bool)

(declare-fun e!3505756 () Bool)

(assert (=> b!5698629 (= e!3505769 e!3505756)))

(declare-fun res!2406601 () Bool)

(assert (=> b!5698629 (=> res!2406601 e!3505756)))

(assert (=> b!5698629 (= res!2406601 (not lt!2273333))))

(assert (=> b!5698629 e!3505763))

(declare-fun res!2406606 () Bool)

(assert (=> b!5698629 (=> (not res!2406606) (not e!3505763))))

(declare-fun lt!2273357 () Regex!15695)

(assert (=> b!5698629 (= res!2406606 (= (matchR!7880 lt!2273357 s!2326) (matchRSpec!2798 lt!2273357 s!2326)))))

(declare-fun lt!2273344 () Unit!156312)

(assert (=> b!5698629 (= lt!2273344 (mainMatchTheorem!2798 lt!2273357 s!2326))))

(declare-fun e!3505768 () Bool)

(declare-fun tp!1580473 () Bool)

(declare-fun setNonEmpty!38163 () Bool)

(declare-fun setElem!38163 () Context!10158)

(declare-fun inv!82484 (Context!10158) Bool)

(assert (=> setNonEmpty!38163 (= setRes!38163 (and tp!1580473 (inv!82484 setElem!38163) e!3505768))))

(declare-fun setRest!38163 () (InoxSet Context!10158))

(assert (=> setNonEmpty!38163 (= z!1189 ((_ map or) (store ((as const (Array Context!10158 Bool)) false) setElem!38163 true) setRest!38163))))

(declare-fun b!5698630 () Bool)

(declare-fun res!2406594 () Bool)

(assert (=> b!5698630 (=> res!2406594 e!3505770)))

(assert (=> b!5698630 (= res!2406594 (or ((_ is Concat!24540) (regOne!31902 r!7292)) (not ((_ is Star!15695) (regOne!31902 r!7292)))))))

(declare-fun tp!1580470 () Bool)

(declare-fun b!5698631 () Bool)

(assert (=> b!5698631 (= e!3505759 (and (inv!82484 (h!69710 zl!343)) e!3505760 tp!1580470))))

(declare-fun b!5698632 () Bool)

(declare-fun res!2406582 () Bool)

(assert (=> b!5698632 (=> res!2406582 e!3505762)))

(assert (=> b!5698632 (= res!2406582 (not (matchR!7880 (regTwo!31902 r!7292) (_2!36095 lt!2273332))))))

(declare-fun b!5698633 () Bool)

(assert (=> b!5698633 (= e!3505755 e!3505752)))

(declare-fun res!2406598 () Bool)

(assert (=> b!5698633 (=> res!2406598 e!3505752)))

(assert (=> b!5698633 (= res!2406598 (not (= (unfocusZipper!1437 (Cons!63262 lt!2273346 Nil!63262)) lt!2273357)))))

(assert (=> b!5698633 (= lt!2273357 (Concat!24540 (reg!16024 (regOne!31902 r!7292)) lt!2273349))))

(declare-fun b!5698634 () Bool)

(declare-fun res!2406593 () Bool)

(assert (=> b!5698634 (=> res!2406593 e!3505758)))

(declare-fun generalisedConcat!1310 (List!63385) Regex!15695)

(assert (=> b!5698634 (= res!2406593 (not (= r!7292 (generalisedConcat!1310 (exprs!5579 (h!69710 zl!343))))))))

(declare-fun b!5698635 () Bool)

(declare-fun tp!1580476 () Bool)

(assert (=> b!5698635 (= e!3505757 tp!1580476)))

(assert (=> b!5698636 (= e!3505756 e!3505762)))

(declare-fun res!2406611 () Bool)

(assert (=> b!5698636 (=> res!2406611 e!3505762)))

(declare-fun ++!13887 (List!63384 List!63384) List!63384)

(assert (=> b!5698636 (= res!2406611 (not (= (++!13887 (_1!36095 lt!2273332) (_2!36095 lt!2273332)) s!2326)))))

(declare-fun lt!2273336 () Option!15704)

(declare-fun get!21802 (Option!15704) tuple2!65584)

(assert (=> b!5698636 (= lt!2273332 (get!21802 lt!2273336))))

(assert (=> b!5698636 (= (Exists!2795 lambda!307308) (Exists!2795 lambda!307309))))

(declare-fun lt!2273339 () Unit!156312)

(assert (=> b!5698636 (= lt!2273339 (lemmaExistCutMatchRandMatchRSpecEquivalent!1424 lt!2273350 (regTwo!31902 r!7292) s!2326))))

(assert (=> b!5698636 (= (isDefined!12407 lt!2273336) (Exists!2795 lambda!307308))))

(assert (=> b!5698636 (= lt!2273336 (findConcatSeparation!2118 lt!2273350 (regTwo!31902 r!7292) Nil!63260 s!2326 s!2326))))

(declare-fun lt!2273362 () Unit!156312)

(assert (=> b!5698636 (= lt!2273362 (lemmaFindConcatSeparationEquivalentToExists!1882 lt!2273350 (regTwo!31902 r!7292) s!2326))))

(declare-fun b!5698637 () Bool)

(declare-fun res!2406588 () Bool)

(assert (=> b!5698637 (=> res!2406588 e!3505767)))

(assert (=> b!5698637 (= res!2406588 (not (= (matchZipper!1833 lt!2273355 s!2326) (matchZipper!1833 lt!2273342 (t!376702 s!2326)))))))

(declare-fun b!5698638 () Bool)

(declare-fun res!2406602 () Bool)

(assert (=> b!5698638 (=> res!2406602 e!3505767)))

(declare-fun lt!2273360 () Regex!15695)

(assert (=> b!5698638 (= res!2406602 (not (= lt!2273360 r!7292)))))

(declare-fun b!5698639 () Bool)

(declare-fun tp_is_empty!40643 () Bool)

(assert (=> b!5698639 (= e!3505757 tp_is_empty!40643)))

(declare-fun b!5698640 () Bool)

(declare-fun res!2406587 () Bool)

(assert (=> b!5698640 (=> res!2406587 e!3505762)))

(assert (=> b!5698640 (= res!2406587 (not (matchR!7880 lt!2273350 (_1!36095 lt!2273332))))))

(declare-fun b!5698641 () Bool)

(declare-fun tp!1580471 () Bool)

(assert (=> b!5698641 (= e!3505768 tp!1580471)))

(declare-fun b!5698642 () Bool)

(declare-fun tp!1580472 () Bool)

(assert (=> b!5698642 (= e!3505754 (and tp_is_empty!40643 tp!1580472))))

(declare-fun b!5698643 () Bool)

(assert (=> b!5698643 (= e!3505765 e!3505764)))

(declare-fun res!2406585 () Bool)

(assert (=> b!5698643 (=> (not res!2406585) (not e!3505764))))

(assert (=> b!5698643 (= res!2406585 (= r!7292 lt!2273360))))

(assert (=> b!5698643 (= lt!2273360 (unfocusZipper!1437 zl!343))))

(assert (= (and start!587592 res!2406596) b!5698618))

(assert (= (and b!5698618 res!2406599) b!5698643))

(assert (= (and b!5698643 res!2406585) b!5698606))

(assert (= (and b!5698606 (not res!2406600)) b!5698604))

(assert (= (and b!5698604 (not res!2406591)) b!5698634))

(assert (= (and b!5698634 (not res!2406593)) b!5698621))

(assert (= (and b!5698621 (not res!2406603)) b!5698623))

(assert (= (and b!5698623 (not res!2406609)) b!5698628))

(assert (= (and b!5698628 (not res!2406584)) b!5698605))

(assert (= (and b!5698605 (not res!2406592)) b!5698617))

(assert (= (and b!5698617 (not res!2406610)) b!5698622))

(assert (= (and b!5698622 c!1003516) b!5698612))

(assert (= (and b!5698622 (not c!1003516)) b!5698607))

(assert (= (and b!5698612 (not res!2406586)) b!5698609))

(assert (= (and b!5698622 (not res!2406595)) b!5698627))

(assert (= (and b!5698627 res!2406597) b!5698613))

(assert (= (and b!5698627 (not res!2406590)) b!5698630))

(assert (= (and b!5698630 (not res!2406594)) b!5698626))

(assert (= (and b!5698626 (not res!2406604)) b!5698608))

(assert (= (and b!5698608 (not res!2406583)) b!5698637))

(assert (= (and b!5698637 (not res!2406588)) b!5698638))

(assert (= (and b!5698638 (not res!2406602)) b!5698611))

(assert (= (and b!5698611 (not res!2406607)) b!5698633))

(assert (= (and b!5698633 (not res!2406598)) b!5698620))

(assert (= (and b!5698620 (not res!2406608)) b!5698616))

(assert (= (and b!5698616 (not res!2406589)) b!5698629))

(assert (= (and b!5698629 res!2406606) b!5698610))

(assert (= (and b!5698629 (not res!2406601)) b!5698636))

(assert (= (and b!5698636 (not res!2406611)) b!5698640))

(assert (= (and b!5698640 (not res!2406587)) b!5698632))

(assert (= (and b!5698632 (not res!2406582)) b!5698615))

(assert (= (and b!5698615 (not res!2406605)) b!5698625))

(assert (= (and start!587592 ((_ is ElementMatch!15695) r!7292)) b!5698639))

(assert (= (and start!587592 ((_ is Concat!24540) r!7292)) b!5698619))

(assert (= (and start!587592 ((_ is Star!15695) r!7292)) b!5698635))

(assert (= (and start!587592 ((_ is Union!15695) r!7292)) b!5698624))

(assert (= (and start!587592 condSetEmpty!38163) setIsEmpty!38163))

(assert (= (and start!587592 (not condSetEmpty!38163)) setNonEmpty!38163))

(assert (= setNonEmpty!38163 b!5698641))

(assert (= b!5698631 b!5698614))

(assert (= (and start!587592 ((_ is Cons!63262) zl!343)) b!5698631))

(assert (= (and start!587592 ((_ is Cons!63260) s!2326)) b!5698642))

(declare-fun m!6654136 () Bool)

(assert (=> b!5698633 m!6654136))

(declare-fun m!6654138 () Bool)

(assert (=> b!5698631 m!6654138))

(declare-fun m!6654140 () Bool)

(assert (=> b!5698643 m!6654140))

(declare-fun m!6654142 () Bool)

(assert (=> b!5698640 m!6654142))

(declare-fun m!6654144 () Bool)

(assert (=> b!5698618 m!6654144))

(declare-fun m!6654146 () Bool)

(assert (=> b!5698623 m!6654146))

(assert (=> b!5698623 m!6654146))

(declare-fun m!6654148 () Bool)

(assert (=> b!5698623 m!6654148))

(declare-fun m!6654150 () Bool)

(assert (=> b!5698634 m!6654150))

(declare-fun m!6654152 () Bool)

(assert (=> b!5698622 m!6654152))

(declare-fun m!6654154 () Bool)

(assert (=> b!5698622 m!6654154))

(declare-fun m!6654156 () Bool)

(assert (=> b!5698622 m!6654156))

(declare-fun m!6654158 () Bool)

(assert (=> b!5698622 m!6654158))

(declare-fun m!6654160 () Bool)

(assert (=> b!5698622 m!6654160))

(declare-fun m!6654162 () Bool)

(assert (=> b!5698622 m!6654162))

(declare-fun m!6654164 () Bool)

(assert (=> b!5698622 m!6654164))

(declare-fun m!6654166 () Bool)

(assert (=> b!5698604 m!6654166))

(declare-fun m!6654168 () Bool)

(assert (=> b!5698606 m!6654168))

(declare-fun m!6654170 () Bool)

(assert (=> b!5698606 m!6654170))

(declare-fun m!6654172 () Bool)

(assert (=> b!5698606 m!6654172))

(declare-fun m!6654174 () Bool)

(assert (=> start!587592 m!6654174))

(declare-fun m!6654176 () Bool)

(assert (=> b!5698629 m!6654176))

(declare-fun m!6654178 () Bool)

(assert (=> b!5698629 m!6654178))

(declare-fun m!6654180 () Bool)

(assert (=> b!5698629 m!6654180))

(declare-fun m!6654182 () Bool)

(assert (=> b!5698626 m!6654182))

(declare-fun m!6654184 () Bool)

(assert (=> b!5698613 m!6654184))

(declare-fun m!6654186 () Bool)

(assert (=> setNonEmpty!38163 m!6654186))

(declare-fun m!6654188 () Bool)

(assert (=> b!5698617 m!6654188))

(declare-fun m!6654190 () Bool)

(assert (=> b!5698637 m!6654190))

(declare-fun m!6654192 () Bool)

(assert (=> b!5698637 m!6654192))

(declare-fun m!6654194 () Bool)

(assert (=> b!5698616 m!6654194))

(declare-fun m!6654196 () Bool)

(assert (=> b!5698620 m!6654196))

(declare-fun m!6654198 () Bool)

(assert (=> b!5698620 m!6654198))

(declare-fun m!6654200 () Bool)

(assert (=> b!5698620 m!6654200))

(declare-fun m!6654202 () Bool)

(assert (=> b!5698620 m!6654202))

(declare-fun m!6654204 () Bool)

(assert (=> b!5698620 m!6654204))

(declare-fun m!6654206 () Bool)

(assert (=> b!5698620 m!6654206))

(declare-fun m!6654208 () Bool)

(assert (=> b!5698620 m!6654208))

(declare-fun m!6654210 () Bool)

(assert (=> b!5698620 m!6654210))

(declare-fun m!6654212 () Bool)

(assert (=> b!5698620 m!6654212))

(declare-fun m!6654214 () Bool)

(assert (=> b!5698625 m!6654214))

(assert (=> b!5698625 m!6654154))

(declare-fun m!6654216 () Bool)

(assert (=> b!5698625 m!6654216))

(declare-fun m!6654218 () Bool)

(assert (=> b!5698625 m!6654218))

(declare-fun m!6654220 () Bool)

(assert (=> b!5698615 m!6654220))

(declare-fun m!6654222 () Bool)

(assert (=> b!5698608 m!6654222))

(declare-fun m!6654224 () Bool)

(assert (=> b!5698608 m!6654224))

(declare-fun m!6654226 () Bool)

(assert (=> b!5698608 m!6654226))

(declare-fun m!6654228 () Bool)

(assert (=> b!5698608 m!6654228))

(declare-fun m!6654230 () Bool)

(assert (=> b!5698608 m!6654230))

(declare-fun m!6654232 () Bool)

(assert (=> b!5698609 m!6654232))

(declare-fun m!6654234 () Bool)

(assert (=> b!5698636 m!6654234))

(declare-fun m!6654236 () Bool)

(assert (=> b!5698636 m!6654236))

(declare-fun m!6654238 () Bool)

(assert (=> b!5698636 m!6654238))

(declare-fun m!6654240 () Bool)

(assert (=> b!5698636 m!6654240))

(declare-fun m!6654242 () Bool)

(assert (=> b!5698636 m!6654242))

(declare-fun m!6654244 () Bool)

(assert (=> b!5698636 m!6654244))

(declare-fun m!6654246 () Bool)

(assert (=> b!5698636 m!6654246))

(declare-fun m!6654248 () Bool)

(assert (=> b!5698636 m!6654248))

(assert (=> b!5698636 m!6654248))

(declare-fun m!6654250 () Bool)

(assert (=> b!5698605 m!6654250))

(declare-fun m!6654252 () Bool)

(assert (=> b!5698605 m!6654252))

(declare-fun m!6654254 () Bool)

(assert (=> b!5698605 m!6654254))

(declare-fun m!6654256 () Bool)

(assert (=> b!5698605 m!6654256))

(assert (=> b!5698605 m!6654256))

(declare-fun m!6654258 () Bool)

(assert (=> b!5698605 m!6654258))

(assert (=> b!5698605 m!6654252))

(declare-fun m!6654260 () Bool)

(assert (=> b!5698605 m!6654260))

(declare-fun m!6654262 () Bool)

(assert (=> b!5698612 m!6654262))

(declare-fun m!6654264 () Bool)

(assert (=> b!5698612 m!6654264))

(declare-fun m!6654266 () Bool)

(assert (=> b!5698612 m!6654266))

(declare-fun m!6654268 () Bool)

(assert (=> b!5698632 m!6654268))

(check-sat (not b!5698633) (not b!5698608) (not b!5698609) (not b!5698620) (not b!5698636) (not b!5698616) (not b!5698622) (not b!5698640) (not b!5698614) (not b!5698641) (not b!5698634) (not b!5698615) (not setNonEmpty!38163) (not b!5698617) (not b!5698624) (not b!5698631) (not b!5698606) (not b!5698637) (not b!5698632) (not b!5698625) (not b!5698618) (not b!5698612) (not b!5698623) (not b!5698613) (not start!587592) (not b!5698605) (not b!5698643) (not b!5698626) (not b!5698629) (not b!5698604) (not b!5698635) (not b!5698642) (not b!5698619) tp_is_empty!40643)
(check-sat)
