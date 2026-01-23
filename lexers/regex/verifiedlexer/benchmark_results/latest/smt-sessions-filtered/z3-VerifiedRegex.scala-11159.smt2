; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!579778 () Bool)

(assert start!579778)

(declare-fun b!5581439 () Bool)

(assert (=> b!5581439 true))

(assert (=> b!5581439 true))

(declare-fun lambda!299327 () Int)

(declare-fun lambda!299326 () Int)

(assert (=> b!5581439 (not (= lambda!299327 lambda!299326))))

(assert (=> b!5581439 true))

(assert (=> b!5581439 true))

(declare-fun b!5581447 () Bool)

(assert (=> b!5581447 true))

(declare-fun setIsEmpty!37153 () Bool)

(declare-fun setRes!37153 () Bool)

(assert (=> setIsEmpty!37153 setRes!37153))

(declare-fun b!5581436 () Bool)

(declare-fun e!3443909 () Bool)

(declare-fun e!3443914 () Bool)

(assert (=> b!5581436 (= e!3443909 e!3443914)))

(declare-fun res!2368663 () Bool)

(assert (=> b!5581436 (=> res!2368663 e!3443914)))

(declare-fun e!3443919 () Bool)

(assert (=> b!5581436 (= res!2368663 e!3443919)))

(declare-fun res!2368653 () Bool)

(assert (=> b!5581436 (=> (not res!2368653) (not e!3443919))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31400 0))(
  ( (C!31401 (val!25402 Int)) )
))
(declare-datatypes ((Regex!15565 0))(
  ( (ElementMatch!15565 (c!977372 C!31400)) (Concat!24410 (regOne!31642 Regex!15565) (regTwo!31642 Regex!15565)) (EmptyExpr!15565) (Star!15565 (reg!15894 Regex!15565)) (EmptyLang!15565) (Union!15565 (regOne!31643 Regex!15565) (regTwo!31643 Regex!15565)) )
))
(declare-datatypes ((List!62994 0))(
  ( (Nil!62870) (Cons!62870 (h!69318 Regex!15565) (t!376267 List!62994)) )
))
(declare-datatypes ((Context!9898 0))(
  ( (Context!9899 (exprs!5449 List!62994)) )
))
(declare-fun lt!2253609 () (InoxSet Context!9898))

(declare-datatypes ((List!62995 0))(
  ( (Nil!62871) (Cons!62871 (h!69319 C!31400) (t!376268 List!62995)) )
))
(declare-fun s!2326 () List!62995)

(declare-fun lt!2253618 () Bool)

(declare-fun matchZipper!1703 ((InoxSet Context!9898) List!62995) Bool)

(assert (=> b!5581436 (= res!2368653 (not (= (matchZipper!1703 lt!2253609 (t!376268 s!2326)) lt!2253618)))))

(declare-fun lt!2253608 () (InoxSet Context!9898))

(declare-fun e!3443918 () Bool)

(assert (=> b!5581436 (= (matchZipper!1703 lt!2253608 (t!376268 s!2326)) e!3443918)))

(declare-fun res!2368651 () Bool)

(assert (=> b!5581436 (=> res!2368651 e!3443918)))

(assert (=> b!5581436 (= res!2368651 lt!2253618)))

(declare-fun lt!2253621 () (InoxSet Context!9898))

(assert (=> b!5581436 (= lt!2253618 (matchZipper!1703 lt!2253621 (t!376268 s!2326)))))

(declare-fun lt!2253616 () (InoxSet Context!9898))

(declare-datatypes ((Unit!155634 0))(
  ( (Unit!155635) )
))
(declare-fun lt!2253607 () Unit!155634)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!590 ((InoxSet Context!9898) (InoxSet Context!9898) List!62995) Unit!155634)

(assert (=> b!5581436 (= lt!2253607 (lemmaZipperConcatMatchesSameAsBothZippers!590 lt!2253621 lt!2253616 (t!376268 s!2326)))))

(declare-fun b!5581437 () Bool)

(declare-fun e!3443921 () Bool)

(declare-fun tp!1544387 () Bool)

(assert (=> b!5581437 (= e!3443921 tp!1544387)))

(declare-fun b!5581438 () Bool)

(declare-fun e!3443922 () Bool)

(declare-fun tp!1544390 () Bool)

(assert (=> b!5581438 (= e!3443922 tp!1544390)))

(declare-fun e!3443920 () Bool)

(declare-fun e!3443915 () Bool)

(assert (=> b!5581439 (= e!3443920 e!3443915)))

(declare-fun res!2368649 () Bool)

(assert (=> b!5581439 (=> res!2368649 e!3443915)))

(declare-fun lt!2253627 () Bool)

(declare-fun lt!2253631 () Bool)

(get-info :version)

(assert (=> b!5581439 (= res!2368649 (or (not (= lt!2253631 lt!2253627)) ((_ is Nil!62871) s!2326)))))

(declare-fun Exists!2665 (Int) Bool)

(assert (=> b!5581439 (= (Exists!2665 lambda!299326) (Exists!2665 lambda!299327))))

(declare-fun lt!2253629 () Unit!155634)

(declare-fun r!7292 () Regex!15565)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1294 (Regex!15565 Regex!15565 List!62995) Unit!155634)

(assert (=> b!5581439 (= lt!2253629 (lemmaExistCutMatchRandMatchRSpecEquivalent!1294 (regOne!31642 r!7292) (regTwo!31642 r!7292) s!2326))))

(assert (=> b!5581439 (= lt!2253627 (Exists!2665 lambda!299326))))

(declare-datatypes ((tuple2!65324 0))(
  ( (tuple2!65325 (_1!35965 List!62995) (_2!35965 List!62995)) )
))
(declare-datatypes ((Option!15574 0))(
  ( (None!15573) (Some!15573 (v!51614 tuple2!65324)) )
))
(declare-fun isDefined!12277 (Option!15574) Bool)

(declare-fun findConcatSeparation!1988 (Regex!15565 Regex!15565 List!62995 List!62995 List!62995) Option!15574)

(assert (=> b!5581439 (= lt!2253627 (isDefined!12277 (findConcatSeparation!1988 (regOne!31642 r!7292) (regTwo!31642 r!7292) Nil!62871 s!2326 s!2326)))))

(declare-fun lt!2253617 () Unit!155634)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1752 (Regex!15565 Regex!15565 List!62995) Unit!155634)

(assert (=> b!5581439 (= lt!2253617 (lemmaFindConcatSeparationEquivalentToExists!1752 (regOne!31642 r!7292) (regTwo!31642 r!7292) s!2326))))

(declare-fun b!5581440 () Bool)

(declare-fun res!2368661 () Bool)

(assert (=> b!5581440 (=> res!2368661 e!3443920)))

(assert (=> b!5581440 (= res!2368661 (or ((_ is EmptyExpr!15565) r!7292) ((_ is EmptyLang!15565) r!7292) ((_ is ElementMatch!15565) r!7292) ((_ is Union!15565) r!7292) (not ((_ is Concat!24410) r!7292))))))

(declare-fun b!5581441 () Bool)

(declare-fun tp_is_empty!40383 () Bool)

(assert (=> b!5581441 (= e!3443921 tp_is_empty!40383)))

(declare-fun b!5581442 () Bool)

(declare-fun res!2368647 () Bool)

(assert (=> b!5581442 (=> res!2368647 e!3443920)))

(declare-datatypes ((List!62996 0))(
  ( (Nil!62872) (Cons!62872 (h!69320 Context!9898) (t!376269 List!62996)) )
))
(declare-fun zl!343 () List!62996)

(declare-fun generalisedConcat!1180 (List!62994) Regex!15565)

(assert (=> b!5581442 (= res!2368647 (not (= r!7292 (generalisedConcat!1180 (exprs!5449 (h!69320 zl!343))))))))

(declare-fun setNonEmpty!37153 () Bool)

(declare-fun e!3443910 () Bool)

(declare-fun tp!1544388 () Bool)

(declare-fun setElem!37153 () Context!9898)

(declare-fun inv!82159 (Context!9898) Bool)

(assert (=> setNonEmpty!37153 (= setRes!37153 (and tp!1544388 (inv!82159 setElem!37153) e!3443910))))

(declare-fun z!1189 () (InoxSet Context!9898))

(declare-fun setRest!37153 () (InoxSet Context!9898))

(assert (=> setNonEmpty!37153 (= z!1189 ((_ map or) (store ((as const (Array Context!9898 Bool)) false) setElem!37153 true) setRest!37153))))

(declare-fun b!5581444 () Bool)

(declare-fun e!3443908 () Bool)

(declare-fun lt!2253611 () (InoxSet Context!9898))

(assert (=> b!5581444 (= e!3443908 (matchZipper!1703 lt!2253611 (t!376268 s!2326)))))

(declare-fun b!5581445 () Bool)

(declare-fun res!2368659 () Bool)

(assert (=> b!5581445 (=> res!2368659 e!3443920)))

(declare-fun generalisedUnion!1428 (List!62994) Regex!15565)

(declare-fun unfocusZipperList!993 (List!62996) List!62994)

(assert (=> b!5581445 (= res!2368659 (not (= r!7292 (generalisedUnion!1428 (unfocusZipperList!993 zl!343)))))))

(declare-fun b!5581446 () Bool)

(declare-fun tp!1544394 () Bool)

(declare-fun tp!1544393 () Bool)

(assert (=> b!5581446 (= e!3443921 (and tp!1544394 tp!1544393))))

(declare-fun e!3443907 () Bool)

(assert (=> b!5581447 (= e!3443915 e!3443907)))

(declare-fun res!2368652 () Bool)

(assert (=> b!5581447 (=> res!2368652 e!3443907)))

(assert (=> b!5581447 (= res!2368652 (or (and ((_ is ElementMatch!15565) (regOne!31642 r!7292)) (= (c!977372 (regOne!31642 r!7292)) (h!69319 s!2326))) (not ((_ is Union!15565) (regOne!31642 r!7292)))))))

(declare-fun lt!2253606 () Unit!155634)

(declare-fun e!3443912 () Unit!155634)

(assert (=> b!5581447 (= lt!2253606 e!3443912)))

(declare-fun c!977371 () Bool)

(declare-fun nullable!5597 (Regex!15565) Bool)

(assert (=> b!5581447 (= c!977371 (nullable!5597 (h!69318 (exprs!5449 (h!69320 zl!343)))))))

(declare-fun lambda!299328 () Int)

(declare-fun flatMap!1178 ((InoxSet Context!9898) Int) (InoxSet Context!9898))

(declare-fun derivationStepZipperUp!833 (Context!9898 C!31400) (InoxSet Context!9898))

(assert (=> b!5581447 (= (flatMap!1178 z!1189 lambda!299328) (derivationStepZipperUp!833 (h!69320 zl!343) (h!69319 s!2326)))))

(declare-fun lt!2253622 () Unit!155634)

(declare-fun lemmaFlatMapOnSingletonSet!710 ((InoxSet Context!9898) Context!9898 Int) Unit!155634)

(assert (=> b!5581447 (= lt!2253622 (lemmaFlatMapOnSingletonSet!710 z!1189 (h!69320 zl!343) lambda!299328))))

(declare-fun lt!2253613 () Context!9898)

(assert (=> b!5581447 (= lt!2253611 (derivationStepZipperUp!833 lt!2253613 (h!69319 s!2326)))))

(declare-fun derivationStepZipperDown!907 (Regex!15565 Context!9898 C!31400) (InoxSet Context!9898))

(assert (=> b!5581447 (= lt!2253609 (derivationStepZipperDown!907 (h!69318 (exprs!5449 (h!69320 zl!343))) lt!2253613 (h!69319 s!2326)))))

(assert (=> b!5581447 (= lt!2253613 (Context!9899 (t!376267 (exprs!5449 (h!69320 zl!343)))))))

(declare-fun lt!2253626 () (InoxSet Context!9898))

(assert (=> b!5581447 (= lt!2253626 (derivationStepZipperUp!833 (Context!9899 (Cons!62870 (h!69318 (exprs!5449 (h!69320 zl!343))) (t!376267 (exprs!5449 (h!69320 zl!343))))) (h!69319 s!2326)))))

(declare-fun b!5581448 () Bool)

(declare-fun e!3443917 () Bool)

(assert (=> b!5581448 (= e!3443917 (matchZipper!1703 lt!2253611 (t!376268 s!2326)))))

(declare-fun b!5581449 () Bool)

(declare-fun Unit!155636 () Unit!155634)

(assert (=> b!5581449 (= e!3443912 Unit!155636)))

(declare-fun lt!2253612 () Unit!155634)

(assert (=> b!5581449 (= lt!2253612 (lemmaZipperConcatMatchesSameAsBothZippers!590 lt!2253609 lt!2253611 (t!376268 s!2326)))))

(declare-fun res!2368656 () Bool)

(assert (=> b!5581449 (= res!2368656 (matchZipper!1703 lt!2253609 (t!376268 s!2326)))))

(assert (=> b!5581449 (=> res!2368656 e!3443917)))

(assert (=> b!5581449 (= (matchZipper!1703 ((_ map or) lt!2253609 lt!2253611) (t!376268 s!2326)) e!3443917)))

(declare-fun b!5581450 () Bool)

(declare-fun Unit!155637 () Unit!155634)

(assert (=> b!5581450 (= e!3443912 Unit!155637)))

(declare-fun b!5581451 () Bool)

(declare-fun tp!1544386 () Bool)

(declare-fun e!3443906 () Bool)

(assert (=> b!5581451 (= e!3443906 (and (inv!82159 (h!69320 zl!343)) e!3443922 tp!1544386))))

(declare-fun b!5581452 () Bool)

(declare-fun e!3443911 () Unit!155634)

(declare-fun Unit!155638 () Unit!155634)

(assert (=> b!5581452 (= e!3443911 Unit!155638)))

(declare-fun lt!2253615 () Unit!155634)

(assert (=> b!5581452 (= lt!2253615 (lemmaZipperConcatMatchesSameAsBothZippers!590 lt!2253621 lt!2253611 (t!376268 s!2326)))))

(declare-fun res!2368654 () Bool)

(assert (=> b!5581452 (= res!2368654 lt!2253618)))

(assert (=> b!5581452 (=> res!2368654 e!3443908)))

(assert (=> b!5581452 (= (matchZipper!1703 ((_ map or) lt!2253621 lt!2253611) (t!376268 s!2326)) e!3443908)))

(declare-fun b!5581453 () Bool)

(declare-fun tp!1544391 () Bool)

(assert (=> b!5581453 (= e!3443910 tp!1544391)))

(declare-fun b!5581454 () Bool)

(declare-fun e!3443916 () Bool)

(assert (=> b!5581454 (= e!3443916 (not e!3443920))))

(declare-fun res!2368646 () Bool)

(assert (=> b!5581454 (=> res!2368646 e!3443920)))

(assert (=> b!5581454 (= res!2368646 (not ((_ is Cons!62872) zl!343)))))

(declare-fun matchRSpec!2668 (Regex!15565 List!62995) Bool)

(assert (=> b!5581454 (= lt!2253631 (matchRSpec!2668 r!7292 s!2326))))

(declare-fun matchR!7750 (Regex!15565 List!62995) Bool)

(assert (=> b!5581454 (= lt!2253631 (matchR!7750 r!7292 s!2326))))

(declare-fun lt!2253623 () Unit!155634)

(declare-fun mainMatchTheorem!2668 (Regex!15565 List!62995) Unit!155634)

(assert (=> b!5581454 (= lt!2253623 (mainMatchTheorem!2668 r!7292 s!2326))))

(declare-fun b!5581455 () Bool)

(assert (=> b!5581455 (= e!3443918 (matchZipper!1703 lt!2253616 (t!376268 s!2326)))))

(declare-fun b!5581456 () Bool)

(declare-fun Unit!155639 () Unit!155634)

(assert (=> b!5581456 (= e!3443911 Unit!155639)))

(declare-fun b!5581457 () Bool)

(declare-fun res!2368662 () Bool)

(assert (=> b!5581457 (=> res!2368662 e!3443920)))

(assert (=> b!5581457 (= res!2368662 (not ((_ is Cons!62870) (exprs!5449 (h!69320 zl!343)))))))

(declare-fun b!5581458 () Bool)

(declare-fun res!2368655 () Bool)

(assert (=> b!5581458 (=> (not res!2368655) (not e!3443916))))

(declare-fun toList!9349 ((InoxSet Context!9898)) List!62996)

(assert (=> b!5581458 (= res!2368655 (= (toList!9349 z!1189) zl!343))))

(declare-fun b!5581459 () Bool)

(assert (=> b!5581459 (= e!3443919 (not (matchZipper!1703 lt!2253616 (t!376268 s!2326))))))

(declare-fun b!5581460 () Bool)

(declare-fun res!2368664 () Bool)

(assert (=> b!5581460 (=> res!2368664 e!3443915)))

(declare-fun isEmpty!34679 (List!62994) Bool)

(assert (=> b!5581460 (= res!2368664 (isEmpty!34679 (t!376267 (exprs!5449 (h!69320 zl!343)))))))

(declare-fun b!5581461 () Bool)

(declare-fun tp!1544392 () Bool)

(declare-fun tp!1544395 () Bool)

(assert (=> b!5581461 (= e!3443921 (and tp!1544392 tp!1544395))))

(declare-fun b!5581462 () Bool)

(declare-fun res!2368660 () Bool)

(assert (=> b!5581462 (=> res!2368660 e!3443920)))

(declare-fun isEmpty!34680 (List!62996) Bool)

(assert (=> b!5581462 (= res!2368660 (not (isEmpty!34680 (t!376269 zl!343))))))

(declare-fun res!2368650 () Bool)

(assert (=> start!579778 (=> (not res!2368650) (not e!3443916))))

(declare-fun validRegex!7301 (Regex!15565) Bool)

(assert (=> start!579778 (= res!2368650 (validRegex!7301 r!7292))))

(assert (=> start!579778 e!3443916))

(assert (=> start!579778 e!3443921))

(declare-fun condSetEmpty!37153 () Bool)

(assert (=> start!579778 (= condSetEmpty!37153 (= z!1189 ((as const (Array Context!9898 Bool)) false)))))

(assert (=> start!579778 setRes!37153))

(assert (=> start!579778 e!3443906))

(declare-fun e!3443923 () Bool)

(assert (=> start!579778 e!3443923))

(declare-fun b!5581443 () Bool)

(declare-fun res!2368657 () Bool)

(assert (=> b!5581443 (=> (not res!2368657) (not e!3443916))))

(declare-fun unfocusZipper!1307 (List!62996) Regex!15565)

(assert (=> b!5581443 (= res!2368657 (= r!7292 (unfocusZipper!1307 zl!343)))))

(declare-fun b!5581463 () Bool)

(declare-fun e!3443913 () Bool)

(declare-fun lt!2253625 () (InoxSet Context!9898))

(assert (=> b!5581463 (= e!3443913 (= lt!2253625 ((_ map or) lt!2253616 lt!2253611)))))

(declare-fun b!5581464 () Bool)

(assert (=> b!5581464 (= e!3443914 e!3443913)))

(declare-fun res!2368658 () Bool)

(assert (=> b!5581464 (=> res!2368658 e!3443913)))

(assert (=> b!5581464 (= res!2368658 (not (nullable!5597 (regTwo!31643 (regOne!31642 r!7292)))))))

(declare-fun lt!2253632 () Context!9898)

(declare-fun lt!2253619 () (InoxSet Context!9898))

(assert (=> b!5581464 (= (flatMap!1178 lt!2253619 lambda!299328) (derivationStepZipperUp!833 lt!2253632 (h!69319 s!2326)))))

(declare-fun lt!2253628 () Unit!155634)

(assert (=> b!5581464 (= lt!2253628 (lemmaFlatMapOnSingletonSet!710 lt!2253619 lt!2253632 lambda!299328))))

(assert (=> b!5581464 (= lt!2253625 (derivationStepZipperUp!833 lt!2253632 (h!69319 s!2326)))))

(declare-fun lt!2253614 () Unit!155634)

(assert (=> b!5581464 (= lt!2253614 e!3443911)))

(declare-fun c!977370 () Bool)

(assert (=> b!5581464 (= c!977370 (nullable!5597 (regOne!31643 (regOne!31642 r!7292))))))

(declare-fun lt!2253620 () (InoxSet Context!9898))

(declare-fun lt!2253630 () Context!9898)

(assert (=> b!5581464 (= (flatMap!1178 lt!2253620 lambda!299328) (derivationStepZipperUp!833 lt!2253630 (h!69319 s!2326)))))

(declare-fun lt!2253610 () Unit!155634)

(assert (=> b!5581464 (= lt!2253610 (lemmaFlatMapOnSingletonSet!710 lt!2253620 lt!2253630 lambda!299328))))

(declare-fun lt!2253624 () (InoxSet Context!9898))

(assert (=> b!5581464 (= lt!2253624 (derivationStepZipperUp!833 lt!2253630 (h!69319 s!2326)))))

(assert (=> b!5581464 (= lt!2253619 (store ((as const (Array Context!9898 Bool)) false) lt!2253632 true))))

(assert (=> b!5581464 (= lt!2253632 (Context!9899 (Cons!62870 (regTwo!31643 (regOne!31642 r!7292)) (t!376267 (exprs!5449 (h!69320 zl!343))))))))

(assert (=> b!5581464 (= lt!2253620 (store ((as const (Array Context!9898 Bool)) false) lt!2253630 true))))

(assert (=> b!5581464 (= lt!2253630 (Context!9899 (Cons!62870 (regOne!31643 (regOne!31642 r!7292)) (t!376267 (exprs!5449 (h!69320 zl!343))))))))

(declare-fun b!5581465 () Bool)

(declare-fun tp!1544389 () Bool)

(assert (=> b!5581465 (= e!3443923 (and tp_is_empty!40383 tp!1544389))))

(declare-fun b!5581466 () Bool)

(assert (=> b!5581466 (= e!3443907 e!3443909)))

(declare-fun res!2368648 () Bool)

(assert (=> b!5581466 (=> res!2368648 e!3443909)))

(assert (=> b!5581466 (= res!2368648 (not (= lt!2253609 lt!2253608)))))

(assert (=> b!5581466 (= lt!2253608 ((_ map or) lt!2253621 lt!2253616))))

(assert (=> b!5581466 (= lt!2253616 (derivationStepZipperDown!907 (regTwo!31643 (regOne!31642 r!7292)) lt!2253613 (h!69319 s!2326)))))

(assert (=> b!5581466 (= lt!2253621 (derivationStepZipperDown!907 (regOne!31643 (regOne!31642 r!7292)) lt!2253613 (h!69319 s!2326)))))

(assert (= (and start!579778 res!2368650) b!5581458))

(assert (= (and b!5581458 res!2368655) b!5581443))

(assert (= (and b!5581443 res!2368657) b!5581454))

(assert (= (and b!5581454 (not res!2368646)) b!5581462))

(assert (= (and b!5581462 (not res!2368660)) b!5581442))

(assert (= (and b!5581442 (not res!2368647)) b!5581457))

(assert (= (and b!5581457 (not res!2368662)) b!5581445))

(assert (= (and b!5581445 (not res!2368659)) b!5581440))

(assert (= (and b!5581440 (not res!2368661)) b!5581439))

(assert (= (and b!5581439 (not res!2368649)) b!5581460))

(assert (= (and b!5581460 (not res!2368664)) b!5581447))

(assert (= (and b!5581447 c!977371) b!5581449))

(assert (= (and b!5581447 (not c!977371)) b!5581450))

(assert (= (and b!5581449 (not res!2368656)) b!5581448))

(assert (= (and b!5581447 (not res!2368652)) b!5581466))

(assert (= (and b!5581466 (not res!2368648)) b!5581436))

(assert (= (and b!5581436 (not res!2368651)) b!5581455))

(assert (= (and b!5581436 res!2368653) b!5581459))

(assert (= (and b!5581436 (not res!2368663)) b!5581464))

(assert (= (and b!5581464 c!977370) b!5581452))

(assert (= (and b!5581464 (not c!977370)) b!5581456))

(assert (= (and b!5581452 (not res!2368654)) b!5581444))

(assert (= (and b!5581464 (not res!2368658)) b!5581463))

(assert (= (and start!579778 ((_ is ElementMatch!15565) r!7292)) b!5581441))

(assert (= (and start!579778 ((_ is Concat!24410) r!7292)) b!5581446))

(assert (= (and start!579778 ((_ is Star!15565) r!7292)) b!5581437))

(assert (= (and start!579778 ((_ is Union!15565) r!7292)) b!5581461))

(assert (= (and start!579778 condSetEmpty!37153) setIsEmpty!37153))

(assert (= (and start!579778 (not condSetEmpty!37153)) setNonEmpty!37153))

(assert (= setNonEmpty!37153 b!5581453))

(assert (= b!5581451 b!5581438))

(assert (= (and start!579778 ((_ is Cons!62872) zl!343)) b!5581451))

(assert (= (and start!579778 ((_ is Cons!62871) s!2326)) b!5581465))

(declare-fun m!6563366 () Bool)

(assert (=> b!5581444 m!6563366))

(declare-fun m!6563368 () Bool)

(assert (=> b!5581452 m!6563368))

(declare-fun m!6563370 () Bool)

(assert (=> b!5581452 m!6563370))

(declare-fun m!6563372 () Bool)

(assert (=> b!5581454 m!6563372))

(declare-fun m!6563374 () Bool)

(assert (=> b!5581454 m!6563374))

(declare-fun m!6563376 () Bool)

(assert (=> b!5581454 m!6563376))

(declare-fun m!6563378 () Bool)

(assert (=> b!5581436 m!6563378))

(declare-fun m!6563380 () Bool)

(assert (=> b!5581436 m!6563380))

(declare-fun m!6563382 () Bool)

(assert (=> b!5581436 m!6563382))

(declare-fun m!6563384 () Bool)

(assert (=> b!5581436 m!6563384))

(declare-fun m!6563386 () Bool)

(assert (=> b!5581466 m!6563386))

(declare-fun m!6563388 () Bool)

(assert (=> b!5581466 m!6563388))

(declare-fun m!6563390 () Bool)

(assert (=> b!5581464 m!6563390))

(declare-fun m!6563392 () Bool)

(assert (=> b!5581464 m!6563392))

(declare-fun m!6563394 () Bool)

(assert (=> b!5581464 m!6563394))

(declare-fun m!6563396 () Bool)

(assert (=> b!5581464 m!6563396))

(declare-fun m!6563398 () Bool)

(assert (=> b!5581464 m!6563398))

(declare-fun m!6563400 () Bool)

(assert (=> b!5581464 m!6563400))

(declare-fun m!6563402 () Bool)

(assert (=> b!5581464 m!6563402))

(declare-fun m!6563404 () Bool)

(assert (=> b!5581464 m!6563404))

(declare-fun m!6563406 () Bool)

(assert (=> b!5581464 m!6563406))

(declare-fun m!6563408 () Bool)

(assert (=> b!5581464 m!6563408))

(declare-fun m!6563410 () Bool)

(assert (=> b!5581445 m!6563410))

(assert (=> b!5581445 m!6563410))

(declare-fun m!6563412 () Bool)

(assert (=> b!5581445 m!6563412))

(declare-fun m!6563414 () Bool)

(assert (=> b!5581462 m!6563414))

(declare-fun m!6563416 () Bool)

(assert (=> b!5581439 m!6563416))

(declare-fun m!6563418 () Bool)

(assert (=> b!5581439 m!6563418))

(declare-fun m!6563420 () Bool)

(assert (=> b!5581439 m!6563420))

(declare-fun m!6563422 () Bool)

(assert (=> b!5581439 m!6563422))

(assert (=> b!5581439 m!6563416))

(declare-fun m!6563424 () Bool)

(assert (=> b!5581439 m!6563424))

(assert (=> b!5581439 m!6563418))

(declare-fun m!6563426 () Bool)

(assert (=> b!5581439 m!6563426))

(declare-fun m!6563428 () Bool)

(assert (=> b!5581455 m!6563428))

(assert (=> b!5581448 m!6563366))

(declare-fun m!6563430 () Bool)

(assert (=> b!5581449 m!6563430))

(assert (=> b!5581449 m!6563378))

(declare-fun m!6563432 () Bool)

(assert (=> b!5581449 m!6563432))

(declare-fun m!6563434 () Bool)

(assert (=> b!5581460 m!6563434))

(declare-fun m!6563436 () Bool)

(assert (=> b!5581443 m!6563436))

(declare-fun m!6563438 () Bool)

(assert (=> setNonEmpty!37153 m!6563438))

(declare-fun m!6563440 () Bool)

(assert (=> b!5581458 m!6563440))

(declare-fun m!6563442 () Bool)

(assert (=> b!5581447 m!6563442))

(declare-fun m!6563444 () Bool)

(assert (=> b!5581447 m!6563444))

(declare-fun m!6563446 () Bool)

(assert (=> b!5581447 m!6563446))

(declare-fun m!6563448 () Bool)

(assert (=> b!5581447 m!6563448))

(declare-fun m!6563450 () Bool)

(assert (=> b!5581447 m!6563450))

(declare-fun m!6563452 () Bool)

(assert (=> b!5581447 m!6563452))

(declare-fun m!6563454 () Bool)

(assert (=> b!5581447 m!6563454))

(declare-fun m!6563456 () Bool)

(assert (=> b!5581442 m!6563456))

(declare-fun m!6563458 () Bool)

(assert (=> b!5581451 m!6563458))

(declare-fun m!6563460 () Bool)

(assert (=> start!579778 m!6563460))

(assert (=> b!5581459 m!6563428))

(check-sat (not b!5581452) (not b!5581442) (not b!5581453) (not b!5581455) (not b!5581437) (not b!5581438) (not b!5581458) (not b!5581439) (not b!5581444) (not b!5581461) (not b!5581448) (not b!5581446) (not b!5581460) (not setNonEmpty!37153) (not b!5581462) (not b!5581443) (not start!579778) (not b!5581447) (not b!5581466) (not b!5581464) (not b!5581449) tp_is_empty!40383 (not b!5581454) (not b!5581436) (not b!5581459) (not b!5581451) (not b!5581465) (not b!5581445))
(check-sat)
(get-model)

(declare-fun d!1764472 () Bool)

(assert (=> d!1764472 (= (isEmpty!34680 (t!376269 zl!343)) ((_ is Nil!62872) (t!376269 zl!343)))))

(assert (=> b!5581462 d!1764472))

(declare-fun b!5581569 () Bool)

(declare-fun e!3443986 () Bool)

(declare-fun lt!2253653 () Regex!15565)

(declare-fun isEmptyExpr!1122 (Regex!15565) Bool)

(assert (=> b!5581569 (= e!3443986 (isEmptyExpr!1122 lt!2253653))))

(declare-fun b!5581570 () Bool)

(declare-fun e!3443987 () Bool)

(declare-fun head!11904 (List!62994) Regex!15565)

(assert (=> b!5581570 (= e!3443987 (= lt!2253653 (head!11904 (exprs!5449 (h!69320 zl!343)))))))

(declare-fun d!1764474 () Bool)

(declare-fun e!3443985 () Bool)

(assert (=> d!1764474 e!3443985))

(declare-fun res!2368707 () Bool)

(assert (=> d!1764474 (=> (not res!2368707) (not e!3443985))))

(assert (=> d!1764474 (= res!2368707 (validRegex!7301 lt!2253653))))

(declare-fun e!3443990 () Regex!15565)

(assert (=> d!1764474 (= lt!2253653 e!3443990)))

(declare-fun c!977401 () Bool)

(declare-fun e!3443988 () Bool)

(assert (=> d!1764474 (= c!977401 e!3443988)))

(declare-fun res!2368708 () Bool)

(assert (=> d!1764474 (=> (not res!2368708) (not e!3443988))))

(assert (=> d!1764474 (= res!2368708 ((_ is Cons!62870) (exprs!5449 (h!69320 zl!343))))))

(declare-fun lambda!299338 () Int)

(declare-fun forall!14734 (List!62994 Int) Bool)

(assert (=> d!1764474 (forall!14734 (exprs!5449 (h!69320 zl!343)) lambda!299338)))

(assert (=> d!1764474 (= (generalisedConcat!1180 (exprs!5449 (h!69320 zl!343))) lt!2253653)))

(declare-fun b!5581571 () Bool)

(assert (=> b!5581571 (= e!3443986 e!3443987)))

(declare-fun c!977402 () Bool)

(declare-fun tail!10999 (List!62994) List!62994)

(assert (=> b!5581571 (= c!977402 (isEmpty!34679 (tail!10999 (exprs!5449 (h!69320 zl!343)))))))

(declare-fun b!5581572 () Bool)

(declare-fun isConcat!645 (Regex!15565) Bool)

(assert (=> b!5581572 (= e!3443987 (isConcat!645 lt!2253653))))

(declare-fun b!5581573 () Bool)

(assert (=> b!5581573 (= e!3443990 (h!69318 (exprs!5449 (h!69320 zl!343))))))

(declare-fun b!5581574 () Bool)

(assert (=> b!5581574 (= e!3443985 e!3443986)))

(declare-fun c!977400 () Bool)

(assert (=> b!5581574 (= c!977400 (isEmpty!34679 (exprs!5449 (h!69320 zl!343))))))

(declare-fun b!5581575 () Bool)

(declare-fun e!3443989 () Regex!15565)

(assert (=> b!5581575 (= e!3443990 e!3443989)))

(declare-fun c!977403 () Bool)

(assert (=> b!5581575 (= c!977403 ((_ is Cons!62870) (exprs!5449 (h!69320 zl!343))))))

(declare-fun b!5581576 () Bool)

(assert (=> b!5581576 (= e!3443989 EmptyExpr!15565)))

(declare-fun b!5581577 () Bool)

(assert (=> b!5581577 (= e!3443988 (isEmpty!34679 (t!376267 (exprs!5449 (h!69320 zl!343)))))))

(declare-fun b!5581578 () Bool)

(assert (=> b!5581578 (= e!3443989 (Concat!24410 (h!69318 (exprs!5449 (h!69320 zl!343))) (generalisedConcat!1180 (t!376267 (exprs!5449 (h!69320 zl!343))))))))

(assert (= (and d!1764474 res!2368708) b!5581577))

(assert (= (and d!1764474 c!977401) b!5581573))

(assert (= (and d!1764474 (not c!977401)) b!5581575))

(assert (= (and b!5581575 c!977403) b!5581578))

(assert (= (and b!5581575 (not c!977403)) b!5581576))

(assert (= (and d!1764474 res!2368707) b!5581574))

(assert (= (and b!5581574 c!977400) b!5581569))

(assert (= (and b!5581574 (not c!977400)) b!5581571))

(assert (= (and b!5581571 c!977402) b!5581570))

(assert (= (and b!5581571 (not c!977402)) b!5581572))

(declare-fun m!6563544 () Bool)

(assert (=> d!1764474 m!6563544))

(declare-fun m!6563546 () Bool)

(assert (=> d!1764474 m!6563546))

(declare-fun m!6563548 () Bool)

(assert (=> b!5581571 m!6563548))

(assert (=> b!5581571 m!6563548))

(declare-fun m!6563550 () Bool)

(assert (=> b!5581571 m!6563550))

(assert (=> b!5581577 m!6563434))

(declare-fun m!6563552 () Bool)

(assert (=> b!5581578 m!6563552))

(declare-fun m!6563554 () Bool)

(assert (=> b!5581574 m!6563554))

(declare-fun m!6563556 () Bool)

(assert (=> b!5581570 m!6563556))

(declare-fun m!6563558 () Bool)

(assert (=> b!5581569 m!6563558))

(declare-fun m!6563560 () Bool)

(assert (=> b!5581572 m!6563560))

(assert (=> b!5581442 d!1764474))

(declare-fun e!3443997 () Bool)

(declare-fun d!1764484 () Bool)

(assert (=> d!1764484 (= (matchZipper!1703 ((_ map or) lt!2253621 lt!2253611) (t!376268 s!2326)) e!3443997)))

(declare-fun res!2368719 () Bool)

(assert (=> d!1764484 (=> res!2368719 e!3443997)))

(assert (=> d!1764484 (= res!2368719 (matchZipper!1703 lt!2253621 (t!376268 s!2326)))))

(declare-fun lt!2253657 () Unit!155634)

(declare-fun choose!42303 ((InoxSet Context!9898) (InoxSet Context!9898) List!62995) Unit!155634)

(assert (=> d!1764484 (= lt!2253657 (choose!42303 lt!2253621 lt!2253611 (t!376268 s!2326)))))

(assert (=> d!1764484 (= (lemmaZipperConcatMatchesSameAsBothZippers!590 lt!2253621 lt!2253611 (t!376268 s!2326)) lt!2253657)))

(declare-fun b!5581589 () Bool)

(assert (=> b!5581589 (= e!3443997 (matchZipper!1703 lt!2253611 (t!376268 s!2326)))))

(assert (= (and d!1764484 (not res!2368719)) b!5581589))

(assert (=> d!1764484 m!6563370))

(assert (=> d!1764484 m!6563382))

(declare-fun m!6563570 () Bool)

(assert (=> d!1764484 m!6563570))

(assert (=> b!5581589 m!6563366))

(assert (=> b!5581452 d!1764484))

(declare-fun d!1764490 () Bool)

(declare-fun c!977418 () Bool)

(declare-fun isEmpty!34683 (List!62995) Bool)

(assert (=> d!1764490 (= c!977418 (isEmpty!34683 (t!376268 s!2326)))))

(declare-fun e!3444018 () Bool)

(assert (=> d!1764490 (= (matchZipper!1703 ((_ map or) lt!2253621 lt!2253611) (t!376268 s!2326)) e!3444018)))

(declare-fun b!5581624 () Bool)

(declare-fun nullableZipper!1562 ((InoxSet Context!9898)) Bool)

(assert (=> b!5581624 (= e!3444018 (nullableZipper!1562 ((_ map or) lt!2253621 lt!2253611)))))

(declare-fun b!5581625 () Bool)

(declare-fun derivationStepZipper!1664 ((InoxSet Context!9898) C!31400) (InoxSet Context!9898))

(declare-fun head!11905 (List!62995) C!31400)

(declare-fun tail!11000 (List!62995) List!62995)

(assert (=> b!5581625 (= e!3444018 (matchZipper!1703 (derivationStepZipper!1664 ((_ map or) lt!2253621 lt!2253611) (head!11905 (t!376268 s!2326))) (tail!11000 (t!376268 s!2326))))))

(assert (= (and d!1764490 c!977418) b!5581624))

(assert (= (and d!1764490 (not c!977418)) b!5581625))

(declare-fun m!6563594 () Bool)

(assert (=> d!1764490 m!6563594))

(declare-fun m!6563596 () Bool)

(assert (=> b!5581624 m!6563596))

(declare-fun m!6563598 () Bool)

(assert (=> b!5581625 m!6563598))

(assert (=> b!5581625 m!6563598))

(declare-fun m!6563600 () Bool)

(assert (=> b!5581625 m!6563600))

(declare-fun m!6563602 () Bool)

(assert (=> b!5581625 m!6563602))

(assert (=> b!5581625 m!6563600))

(assert (=> b!5581625 m!6563602))

(declare-fun m!6563604 () Bool)

(assert (=> b!5581625 m!6563604))

(assert (=> b!5581452 d!1764490))

(declare-fun bs!1291238 () Bool)

(declare-fun d!1764498 () Bool)

(assert (= bs!1291238 (and d!1764498 d!1764474)))

(declare-fun lambda!299349 () Int)

(assert (=> bs!1291238 (= lambda!299349 lambda!299338)))

(assert (=> d!1764498 (= (inv!82159 setElem!37153) (forall!14734 (exprs!5449 setElem!37153) lambda!299349))))

(declare-fun bs!1291239 () Bool)

(assert (= bs!1291239 d!1764498))

(declare-fun m!6563612 () Bool)

(assert (=> bs!1291239 m!6563612))

(assert (=> setNonEmpty!37153 d!1764498))

(declare-fun d!1764502 () Bool)

(declare-fun dynLambda!24589 (Int Context!9898) (InoxSet Context!9898))

(assert (=> d!1764502 (= (flatMap!1178 lt!2253620 lambda!299328) (dynLambda!24589 lambda!299328 lt!2253630))))

(declare-fun lt!2253670 () Unit!155634)

(declare-fun choose!42304 ((InoxSet Context!9898) Context!9898 Int) Unit!155634)

(assert (=> d!1764502 (= lt!2253670 (choose!42304 lt!2253620 lt!2253630 lambda!299328))))

(assert (=> d!1764502 (= lt!2253620 (store ((as const (Array Context!9898 Bool)) false) lt!2253630 true))))

(assert (=> d!1764502 (= (lemmaFlatMapOnSingletonSet!710 lt!2253620 lt!2253630 lambda!299328) lt!2253670)))

(declare-fun b_lambda!211551 () Bool)

(assert (=> (not b_lambda!211551) (not d!1764502)))

(declare-fun bs!1291246 () Bool)

(assert (= bs!1291246 d!1764502))

(assert (=> bs!1291246 m!6563406))

(declare-fun m!6563636 () Bool)

(assert (=> bs!1291246 m!6563636))

(declare-fun m!6563638 () Bool)

(assert (=> bs!1291246 m!6563638))

(assert (=> bs!1291246 m!6563390))

(assert (=> b!5581464 d!1764502))

(declare-fun d!1764520 () Bool)

(declare-fun nullableFct!1709 (Regex!15565) Bool)

(assert (=> d!1764520 (= (nullable!5597 (regTwo!31643 (regOne!31642 r!7292))) (nullableFct!1709 (regTwo!31643 (regOne!31642 r!7292))))))

(declare-fun bs!1291247 () Bool)

(assert (= bs!1291247 d!1764520))

(declare-fun m!6563646 () Bool)

(assert (=> bs!1291247 m!6563646))

(assert (=> b!5581464 d!1764520))

(declare-fun d!1764524 () Bool)

(assert (=> d!1764524 (= (flatMap!1178 lt!2253619 lambda!299328) (dynLambda!24589 lambda!299328 lt!2253632))))

(declare-fun lt!2253671 () Unit!155634)

(assert (=> d!1764524 (= lt!2253671 (choose!42304 lt!2253619 lt!2253632 lambda!299328))))

(assert (=> d!1764524 (= lt!2253619 (store ((as const (Array Context!9898 Bool)) false) lt!2253632 true))))

(assert (=> d!1764524 (= (lemmaFlatMapOnSingletonSet!710 lt!2253619 lt!2253632 lambda!299328) lt!2253671)))

(declare-fun b_lambda!211553 () Bool)

(assert (=> (not b_lambda!211553) (not d!1764524)))

(declare-fun bs!1291248 () Bool)

(assert (= bs!1291248 d!1764524))

(assert (=> bs!1291248 m!6563396))

(declare-fun m!6563648 () Bool)

(assert (=> bs!1291248 m!6563648))

(declare-fun m!6563650 () Bool)

(assert (=> bs!1291248 m!6563650))

(assert (=> bs!1291248 m!6563408))

(assert (=> b!5581464 d!1764524))

(declare-fun d!1764526 () Bool)

(declare-fun choose!42305 ((InoxSet Context!9898) Int) (InoxSet Context!9898))

(assert (=> d!1764526 (= (flatMap!1178 lt!2253620 lambda!299328) (choose!42305 lt!2253620 lambda!299328))))

(declare-fun bs!1291249 () Bool)

(assert (= bs!1291249 d!1764526))

(declare-fun m!6563652 () Bool)

(assert (=> bs!1291249 m!6563652))

(assert (=> b!5581464 d!1764526))

(declare-fun d!1764528 () Bool)

(assert (=> d!1764528 (= (flatMap!1178 lt!2253619 lambda!299328) (choose!42305 lt!2253619 lambda!299328))))

(declare-fun bs!1291250 () Bool)

(assert (= bs!1291250 d!1764528))

(declare-fun m!6563654 () Bool)

(assert (=> bs!1291250 m!6563654))

(assert (=> b!5581464 d!1764528))

(declare-fun b!5581694 () Bool)

(declare-fun e!3444060 () (InoxSet Context!9898))

(declare-fun call!417519 () (InoxSet Context!9898))

(assert (=> b!5581694 (= e!3444060 call!417519)))

(declare-fun b!5581696 () Bool)

(declare-fun e!3444059 () Bool)

(assert (=> b!5581696 (= e!3444059 (nullable!5597 (h!69318 (exprs!5449 lt!2253630))))))

(declare-fun b!5581697 () Bool)

(declare-fun e!3444058 () (InoxSet Context!9898))

(assert (=> b!5581697 (= e!3444058 ((_ map or) call!417519 (derivationStepZipperUp!833 (Context!9899 (t!376267 (exprs!5449 lt!2253630))) (h!69319 s!2326))))))

(declare-fun d!1764530 () Bool)

(declare-fun c!977448 () Bool)

(assert (=> d!1764530 (= c!977448 e!3444059)))

(declare-fun res!2368736 () Bool)

(assert (=> d!1764530 (=> (not res!2368736) (not e!3444059))))

(assert (=> d!1764530 (= res!2368736 ((_ is Cons!62870) (exprs!5449 lt!2253630)))))

(assert (=> d!1764530 (= (derivationStepZipperUp!833 lt!2253630 (h!69319 s!2326)) e!3444058)))

(declare-fun b!5581695 () Bool)

(assert (=> b!5581695 (= e!3444060 ((as const (Array Context!9898 Bool)) false))))

(declare-fun b!5581698 () Bool)

(assert (=> b!5581698 (= e!3444058 e!3444060)))

(declare-fun c!977449 () Bool)

(assert (=> b!5581698 (= c!977449 ((_ is Cons!62870) (exprs!5449 lt!2253630)))))

(declare-fun bm!417514 () Bool)

(assert (=> bm!417514 (= call!417519 (derivationStepZipperDown!907 (h!69318 (exprs!5449 lt!2253630)) (Context!9899 (t!376267 (exprs!5449 lt!2253630))) (h!69319 s!2326)))))

(assert (= (and d!1764530 res!2368736) b!5581696))

(assert (= (and d!1764530 c!977448) b!5581697))

(assert (= (and d!1764530 (not c!977448)) b!5581698))

(assert (= (and b!5581698 c!977449) b!5581694))

(assert (= (and b!5581698 (not c!977449)) b!5581695))

(assert (= (or b!5581697 b!5581694) bm!417514))

(declare-fun m!6563664 () Bool)

(assert (=> b!5581696 m!6563664))

(declare-fun m!6563668 () Bool)

(assert (=> b!5581697 m!6563668))

(declare-fun m!6563670 () Bool)

(assert (=> bm!417514 m!6563670))

(assert (=> b!5581464 d!1764530))

(declare-fun b!5581699 () Bool)

(declare-fun e!3444063 () (InoxSet Context!9898))

(declare-fun call!417520 () (InoxSet Context!9898))

(assert (=> b!5581699 (= e!3444063 call!417520)))

(declare-fun b!5581701 () Bool)

(declare-fun e!3444062 () Bool)

(assert (=> b!5581701 (= e!3444062 (nullable!5597 (h!69318 (exprs!5449 lt!2253632))))))

(declare-fun e!3444061 () (InoxSet Context!9898))

(declare-fun b!5581702 () Bool)

(assert (=> b!5581702 (= e!3444061 ((_ map or) call!417520 (derivationStepZipperUp!833 (Context!9899 (t!376267 (exprs!5449 lt!2253632))) (h!69319 s!2326))))))

(declare-fun d!1764534 () Bool)

(declare-fun c!977450 () Bool)

(assert (=> d!1764534 (= c!977450 e!3444062)))

(declare-fun res!2368737 () Bool)

(assert (=> d!1764534 (=> (not res!2368737) (not e!3444062))))

(assert (=> d!1764534 (= res!2368737 ((_ is Cons!62870) (exprs!5449 lt!2253632)))))

(assert (=> d!1764534 (= (derivationStepZipperUp!833 lt!2253632 (h!69319 s!2326)) e!3444061)))

(declare-fun b!5581700 () Bool)

(assert (=> b!5581700 (= e!3444063 ((as const (Array Context!9898 Bool)) false))))

(declare-fun b!5581703 () Bool)

(assert (=> b!5581703 (= e!3444061 e!3444063)))

(declare-fun c!977451 () Bool)

(assert (=> b!5581703 (= c!977451 ((_ is Cons!62870) (exprs!5449 lt!2253632)))))

(declare-fun bm!417515 () Bool)

(assert (=> bm!417515 (= call!417520 (derivationStepZipperDown!907 (h!69318 (exprs!5449 lt!2253632)) (Context!9899 (t!376267 (exprs!5449 lt!2253632))) (h!69319 s!2326)))))

(assert (= (and d!1764534 res!2368737) b!5581701))

(assert (= (and d!1764534 c!977450) b!5581702))

(assert (= (and d!1764534 (not c!977450)) b!5581703))

(assert (= (and b!5581703 c!977451) b!5581699))

(assert (= (and b!5581703 (not c!977451)) b!5581700))

(assert (= (or b!5581702 b!5581699) bm!417515))

(declare-fun m!6563680 () Bool)

(assert (=> b!5581701 m!6563680))

(declare-fun m!6563685 () Bool)

(assert (=> b!5581702 m!6563685))

(declare-fun m!6563690 () Bool)

(assert (=> bm!417515 m!6563690))

(assert (=> b!5581464 d!1764534))

(declare-fun d!1764542 () Bool)

(assert (=> d!1764542 (= (nullable!5597 (regOne!31643 (regOne!31642 r!7292))) (nullableFct!1709 (regOne!31643 (regOne!31642 r!7292))))))

(declare-fun bs!1291253 () Bool)

(assert (= bs!1291253 d!1764542))

(declare-fun m!6563692 () Bool)

(assert (=> bs!1291253 m!6563692))

(assert (=> b!5581464 d!1764542))

(declare-fun d!1764544 () Bool)

(declare-fun lt!2253675 () Regex!15565)

(assert (=> d!1764544 (validRegex!7301 lt!2253675)))

(assert (=> d!1764544 (= lt!2253675 (generalisedUnion!1428 (unfocusZipperList!993 zl!343)))))

(assert (=> d!1764544 (= (unfocusZipper!1307 zl!343) lt!2253675)))

(declare-fun bs!1291254 () Bool)

(assert (= bs!1291254 d!1764544))

(declare-fun m!6563714 () Bool)

(assert (=> bs!1291254 m!6563714))

(assert (=> bs!1291254 m!6563410))

(assert (=> bs!1291254 m!6563410))

(assert (=> bs!1291254 m!6563412))

(assert (=> b!5581443 d!1764544))

(declare-fun b!5581830 () Bool)

(declare-fun lt!2253693 () Unit!155634)

(declare-fun lt!2253694 () Unit!155634)

(assert (=> b!5581830 (= lt!2253693 lt!2253694)))

(declare-fun ++!13797 (List!62995 List!62995) List!62995)

(assert (=> b!5581830 (= (++!13797 (++!13797 Nil!62871 (Cons!62871 (h!69319 s!2326) Nil!62871)) (t!376268 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1966 (List!62995 C!31400 List!62995 List!62995) Unit!155634)

(assert (=> b!5581830 (= lt!2253694 (lemmaMoveElementToOtherListKeepsConcatEq!1966 Nil!62871 (h!69319 s!2326) (t!376268 s!2326) s!2326))))

(declare-fun e!3444141 () Option!15574)

(assert (=> b!5581830 (= e!3444141 (findConcatSeparation!1988 (regOne!31642 r!7292) (regTwo!31642 r!7292) (++!13797 Nil!62871 (Cons!62871 (h!69319 s!2326) Nil!62871)) (t!376268 s!2326) s!2326))))

(declare-fun b!5581831 () Bool)

(declare-fun res!2368776 () Bool)

(declare-fun e!3444139 () Bool)

(assert (=> b!5581831 (=> (not res!2368776) (not e!3444139))))

(declare-fun lt!2253692 () Option!15574)

(declare-fun get!21647 (Option!15574) tuple2!65324)

(assert (=> b!5581831 (= res!2368776 (matchR!7750 (regOne!31642 r!7292) (_1!35965 (get!21647 lt!2253692))))))

(declare-fun b!5581832 () Bool)

(declare-fun e!3444140 () Option!15574)

(assert (=> b!5581832 (= e!3444140 (Some!15573 (tuple2!65325 Nil!62871 s!2326)))))

(declare-fun b!5581833 () Bool)

(assert (=> b!5581833 (= e!3444139 (= (++!13797 (_1!35965 (get!21647 lt!2253692)) (_2!35965 (get!21647 lt!2253692))) s!2326))))

(declare-fun d!1764552 () Bool)

(declare-fun e!3444138 () Bool)

(assert (=> d!1764552 e!3444138))

(declare-fun res!2368778 () Bool)

(assert (=> d!1764552 (=> res!2368778 e!3444138)))

(assert (=> d!1764552 (= res!2368778 e!3444139)))

(declare-fun res!2368777 () Bool)

(assert (=> d!1764552 (=> (not res!2368777) (not e!3444139))))

(assert (=> d!1764552 (= res!2368777 (isDefined!12277 lt!2253692))))

(assert (=> d!1764552 (= lt!2253692 e!3444140)))

(declare-fun c!977495 () Bool)

(declare-fun e!3444137 () Bool)

(assert (=> d!1764552 (= c!977495 e!3444137)))

(declare-fun res!2368782 () Bool)

(assert (=> d!1764552 (=> (not res!2368782) (not e!3444137))))

(assert (=> d!1764552 (= res!2368782 (matchR!7750 (regOne!31642 r!7292) Nil!62871))))

(assert (=> d!1764552 (validRegex!7301 (regOne!31642 r!7292))))

(assert (=> d!1764552 (= (findConcatSeparation!1988 (regOne!31642 r!7292) (regTwo!31642 r!7292) Nil!62871 s!2326 s!2326) lt!2253692)))

(declare-fun b!5581834 () Bool)

(assert (=> b!5581834 (= e!3444141 None!15573)))

(declare-fun b!5581835 () Bool)

(assert (=> b!5581835 (= e!3444137 (matchR!7750 (regTwo!31642 r!7292) s!2326))))

(declare-fun b!5581836 () Bool)

(assert (=> b!5581836 (= e!3444138 (not (isDefined!12277 lt!2253692)))))

(declare-fun b!5581837 () Bool)

(assert (=> b!5581837 (= e!3444140 e!3444141)))

(declare-fun c!977496 () Bool)

(assert (=> b!5581837 (= c!977496 ((_ is Nil!62871) s!2326))))

(declare-fun b!5581838 () Bool)

(declare-fun res!2368779 () Bool)

(assert (=> b!5581838 (=> (not res!2368779) (not e!3444139))))

(assert (=> b!5581838 (= res!2368779 (matchR!7750 (regTwo!31642 r!7292) (_2!35965 (get!21647 lt!2253692))))))

(assert (= (and d!1764552 res!2368782) b!5581835))

(assert (= (and d!1764552 c!977495) b!5581832))

(assert (= (and d!1764552 (not c!977495)) b!5581837))

(assert (= (and b!5581837 c!977496) b!5581834))

(assert (= (and b!5581837 (not c!977496)) b!5581830))

(assert (= (and d!1764552 res!2368777) b!5581831))

(assert (= (and b!5581831 res!2368776) b!5581838))

(assert (= (and b!5581838 res!2368779) b!5581833))

(assert (= (and d!1764552 (not res!2368778)) b!5581836))

(declare-fun m!6563762 () Bool)

(assert (=> b!5581836 m!6563762))

(declare-fun m!6563764 () Bool)

(assert (=> b!5581833 m!6563764))

(declare-fun m!6563766 () Bool)

(assert (=> b!5581833 m!6563766))

(declare-fun m!6563768 () Bool)

(assert (=> b!5581830 m!6563768))

(assert (=> b!5581830 m!6563768))

(declare-fun m!6563770 () Bool)

(assert (=> b!5581830 m!6563770))

(declare-fun m!6563772 () Bool)

(assert (=> b!5581830 m!6563772))

(assert (=> b!5581830 m!6563768))

(declare-fun m!6563774 () Bool)

(assert (=> b!5581830 m!6563774))

(assert (=> b!5581831 m!6563764))

(declare-fun m!6563776 () Bool)

(assert (=> b!5581831 m!6563776))

(assert (=> b!5581838 m!6563764))

(declare-fun m!6563778 () Bool)

(assert (=> b!5581838 m!6563778))

(declare-fun m!6563780 () Bool)

(assert (=> b!5581835 m!6563780))

(assert (=> d!1764552 m!6563762))

(declare-fun m!6563782 () Bool)

(assert (=> d!1764552 m!6563782))

(declare-fun m!6563784 () Bool)

(assert (=> d!1764552 m!6563784))

(assert (=> b!5581439 d!1764552))

(declare-fun d!1764570 () Bool)

(declare-fun choose!42306 (Int) Bool)

(assert (=> d!1764570 (= (Exists!2665 lambda!299326) (choose!42306 lambda!299326))))

(declare-fun bs!1291265 () Bool)

(assert (= bs!1291265 d!1764570))

(declare-fun m!6563786 () Bool)

(assert (=> bs!1291265 m!6563786))

(assert (=> b!5581439 d!1764570))

(declare-fun d!1764572 () Bool)

(assert (=> d!1764572 (= (Exists!2665 lambda!299327) (choose!42306 lambda!299327))))

(declare-fun bs!1291266 () Bool)

(assert (= bs!1291266 d!1764572))

(declare-fun m!6563788 () Bool)

(assert (=> bs!1291266 m!6563788))

(assert (=> b!5581439 d!1764572))

(declare-fun bs!1291274 () Bool)

(declare-fun d!1764574 () Bool)

(assert (= bs!1291274 (and d!1764574 b!5581439)))

(declare-fun lambda!299365 () Int)

(assert (=> bs!1291274 (= lambda!299365 lambda!299326)))

(assert (=> bs!1291274 (not (= lambda!299365 lambda!299327))))

(assert (=> d!1764574 true))

(assert (=> d!1764574 true))

(assert (=> d!1764574 true))

(assert (=> d!1764574 (= (isDefined!12277 (findConcatSeparation!1988 (regOne!31642 r!7292) (regTwo!31642 r!7292) Nil!62871 s!2326 s!2326)) (Exists!2665 lambda!299365))))

(declare-fun lt!2253697 () Unit!155634)

(declare-fun choose!42308 (Regex!15565 Regex!15565 List!62995) Unit!155634)

(assert (=> d!1764574 (= lt!2253697 (choose!42308 (regOne!31642 r!7292) (regTwo!31642 r!7292) s!2326))))

(assert (=> d!1764574 (validRegex!7301 (regOne!31642 r!7292))))

(assert (=> d!1764574 (= (lemmaFindConcatSeparationEquivalentToExists!1752 (regOne!31642 r!7292) (regTwo!31642 r!7292) s!2326) lt!2253697)))

(declare-fun bs!1291275 () Bool)

(assert (= bs!1291275 d!1764574))

(assert (=> bs!1291275 m!6563784))

(assert (=> bs!1291275 m!6563418))

(declare-fun m!6563798 () Bool)

(assert (=> bs!1291275 m!6563798))

(declare-fun m!6563800 () Bool)

(assert (=> bs!1291275 m!6563800))

(assert (=> bs!1291275 m!6563418))

(assert (=> bs!1291275 m!6563420))

(assert (=> b!5581439 d!1764574))

(declare-fun bs!1291276 () Bool)

(declare-fun d!1764578 () Bool)

(assert (= bs!1291276 (and d!1764578 b!5581439)))

(declare-fun lambda!299370 () Int)

(assert (=> bs!1291276 (= lambda!299370 lambda!299326)))

(assert (=> bs!1291276 (not (= lambda!299370 lambda!299327))))

(declare-fun bs!1291277 () Bool)

(assert (= bs!1291277 (and d!1764578 d!1764574)))

(assert (=> bs!1291277 (= lambda!299370 lambda!299365)))

(assert (=> d!1764578 true))

(assert (=> d!1764578 true))

(assert (=> d!1764578 true))

(declare-fun lambda!299371 () Int)

(assert (=> bs!1291276 (not (= lambda!299371 lambda!299326))))

(assert (=> bs!1291276 (= lambda!299371 lambda!299327)))

(assert (=> bs!1291277 (not (= lambda!299371 lambda!299365))))

(declare-fun bs!1291278 () Bool)

(assert (= bs!1291278 d!1764578))

(assert (=> bs!1291278 (not (= lambda!299371 lambda!299370))))

(assert (=> d!1764578 true))

(assert (=> d!1764578 true))

(assert (=> d!1764578 true))

(assert (=> d!1764578 (= (Exists!2665 lambda!299370) (Exists!2665 lambda!299371))))

(declare-fun lt!2253703 () Unit!155634)

(declare-fun choose!42309 (Regex!15565 Regex!15565 List!62995) Unit!155634)

(assert (=> d!1764578 (= lt!2253703 (choose!42309 (regOne!31642 r!7292) (regTwo!31642 r!7292) s!2326))))

(assert (=> d!1764578 (validRegex!7301 (regOne!31642 r!7292))))

(assert (=> d!1764578 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1294 (regOne!31642 r!7292) (regTwo!31642 r!7292) s!2326) lt!2253703)))

(declare-fun m!6563814 () Bool)

(assert (=> bs!1291278 m!6563814))

(declare-fun m!6563816 () Bool)

(assert (=> bs!1291278 m!6563816))

(declare-fun m!6563818 () Bool)

(assert (=> bs!1291278 m!6563818))

(assert (=> bs!1291278 m!6563784))

(assert (=> b!5581439 d!1764578))

(declare-fun d!1764582 () Bool)

(declare-fun isEmpty!34684 (Option!15574) Bool)

(assert (=> d!1764582 (= (isDefined!12277 (findConcatSeparation!1988 (regOne!31642 r!7292) (regTwo!31642 r!7292) Nil!62871 s!2326 s!2326)) (not (isEmpty!34684 (findConcatSeparation!1988 (regOne!31642 r!7292) (regTwo!31642 r!7292) Nil!62871 s!2326 s!2326))))))

(declare-fun bs!1291279 () Bool)

(assert (= bs!1291279 d!1764582))

(assert (=> bs!1291279 m!6563418))

(declare-fun m!6563820 () Bool)

(assert (=> bs!1291279 m!6563820))

(assert (=> b!5581439 d!1764582))

(declare-fun e!3444176 () Bool)

(declare-fun d!1764584 () Bool)

(assert (=> d!1764584 (= (matchZipper!1703 ((_ map or) lt!2253609 lt!2253611) (t!376268 s!2326)) e!3444176)))

(declare-fun res!2368822 () Bool)

(assert (=> d!1764584 (=> res!2368822 e!3444176)))

(assert (=> d!1764584 (= res!2368822 (matchZipper!1703 lt!2253609 (t!376268 s!2326)))))

(declare-fun lt!2253706 () Unit!155634)

(assert (=> d!1764584 (= lt!2253706 (choose!42303 lt!2253609 lt!2253611 (t!376268 s!2326)))))

(assert (=> d!1764584 (= (lemmaZipperConcatMatchesSameAsBothZippers!590 lt!2253609 lt!2253611 (t!376268 s!2326)) lt!2253706)))

(declare-fun b!5581904 () Bool)

(assert (=> b!5581904 (= e!3444176 (matchZipper!1703 lt!2253611 (t!376268 s!2326)))))

(assert (= (and d!1764584 (not res!2368822)) b!5581904))

(assert (=> d!1764584 m!6563432))

(assert (=> d!1764584 m!6563378))

(declare-fun m!6563822 () Bool)

(assert (=> d!1764584 m!6563822))

(assert (=> b!5581904 m!6563366))

(assert (=> b!5581449 d!1764584))

(declare-fun d!1764586 () Bool)

(declare-fun c!977510 () Bool)

(assert (=> d!1764586 (= c!977510 (isEmpty!34683 (t!376268 s!2326)))))

(declare-fun e!3444177 () Bool)

(assert (=> d!1764586 (= (matchZipper!1703 lt!2253609 (t!376268 s!2326)) e!3444177)))

(declare-fun b!5581905 () Bool)

(assert (=> b!5581905 (= e!3444177 (nullableZipper!1562 lt!2253609))))

(declare-fun b!5581906 () Bool)

(assert (=> b!5581906 (= e!3444177 (matchZipper!1703 (derivationStepZipper!1664 lt!2253609 (head!11905 (t!376268 s!2326))) (tail!11000 (t!376268 s!2326))))))

(assert (= (and d!1764586 c!977510) b!5581905))

(assert (= (and d!1764586 (not c!977510)) b!5581906))

(assert (=> d!1764586 m!6563594))

(declare-fun m!6563824 () Bool)

(assert (=> b!5581905 m!6563824))

(assert (=> b!5581906 m!6563598))

(assert (=> b!5581906 m!6563598))

(declare-fun m!6563826 () Bool)

(assert (=> b!5581906 m!6563826))

(assert (=> b!5581906 m!6563602))

(assert (=> b!5581906 m!6563826))

(assert (=> b!5581906 m!6563602))

(declare-fun m!6563828 () Bool)

(assert (=> b!5581906 m!6563828))

(assert (=> b!5581449 d!1764586))

(declare-fun d!1764588 () Bool)

(declare-fun c!977511 () Bool)

(assert (=> d!1764588 (= c!977511 (isEmpty!34683 (t!376268 s!2326)))))

(declare-fun e!3444178 () Bool)

(assert (=> d!1764588 (= (matchZipper!1703 ((_ map or) lt!2253609 lt!2253611) (t!376268 s!2326)) e!3444178)))

(declare-fun b!5581907 () Bool)

(assert (=> b!5581907 (= e!3444178 (nullableZipper!1562 ((_ map or) lt!2253609 lt!2253611)))))

(declare-fun b!5581908 () Bool)

(assert (=> b!5581908 (= e!3444178 (matchZipper!1703 (derivationStepZipper!1664 ((_ map or) lt!2253609 lt!2253611) (head!11905 (t!376268 s!2326))) (tail!11000 (t!376268 s!2326))))))

(assert (= (and d!1764588 c!977511) b!5581907))

(assert (= (and d!1764588 (not c!977511)) b!5581908))

(assert (=> d!1764588 m!6563594))

(declare-fun m!6563832 () Bool)

(assert (=> b!5581907 m!6563832))

(assert (=> b!5581908 m!6563598))

(assert (=> b!5581908 m!6563598))

(declare-fun m!6563834 () Bool)

(assert (=> b!5581908 m!6563834))

(assert (=> b!5581908 m!6563602))

(assert (=> b!5581908 m!6563834))

(assert (=> b!5581908 m!6563602))

(declare-fun m!6563836 () Bool)

(assert (=> b!5581908 m!6563836))

(assert (=> b!5581449 d!1764588))

(declare-fun d!1764590 () Bool)

(assert (=> d!1764590 (= (isEmpty!34679 (t!376267 (exprs!5449 (h!69320 zl!343)))) ((_ is Nil!62870) (t!376267 (exprs!5449 (h!69320 zl!343)))))))

(assert (=> b!5581460 d!1764590))

(declare-fun bs!1291281 () Bool)

(declare-fun d!1764592 () Bool)

(assert (= bs!1291281 (and d!1764592 d!1764474)))

(declare-fun lambda!299372 () Int)

(assert (=> bs!1291281 (= lambda!299372 lambda!299338)))

(declare-fun bs!1291282 () Bool)

(assert (= bs!1291282 (and d!1764592 d!1764498)))

(assert (=> bs!1291282 (= lambda!299372 lambda!299349)))

(assert (=> d!1764592 (= (inv!82159 (h!69320 zl!343)) (forall!14734 (exprs!5449 (h!69320 zl!343)) lambda!299372))))

(declare-fun bs!1291283 () Bool)

(assert (= bs!1291283 d!1764592))

(declare-fun m!6563838 () Bool)

(assert (=> bs!1291283 m!6563838))

(assert (=> b!5581451 d!1764592))

(declare-fun b!5581924 () Bool)

(declare-fun e!3444186 () (InoxSet Context!9898))

(declare-fun call!417544 () (InoxSet Context!9898))

(assert (=> b!5581924 (= e!3444186 call!417544)))

(declare-fun b!5581926 () Bool)

(declare-fun e!3444185 () Bool)

(assert (=> b!5581926 (= e!3444185 (nullable!5597 (h!69318 (exprs!5449 lt!2253613))))))

(declare-fun e!3444184 () (InoxSet Context!9898))

(declare-fun b!5581927 () Bool)

(assert (=> b!5581927 (= e!3444184 ((_ map or) call!417544 (derivationStepZipperUp!833 (Context!9899 (t!376267 (exprs!5449 lt!2253613))) (h!69319 s!2326))))))

(declare-fun d!1764594 () Bool)

(declare-fun c!977512 () Bool)

(assert (=> d!1764594 (= c!977512 e!3444185)))

(declare-fun res!2368823 () Bool)

(assert (=> d!1764594 (=> (not res!2368823) (not e!3444185))))

(assert (=> d!1764594 (= res!2368823 ((_ is Cons!62870) (exprs!5449 lt!2253613)))))

(assert (=> d!1764594 (= (derivationStepZipperUp!833 lt!2253613 (h!69319 s!2326)) e!3444184)))

(declare-fun b!5581925 () Bool)

(assert (=> b!5581925 (= e!3444186 ((as const (Array Context!9898 Bool)) false))))

(declare-fun b!5581928 () Bool)

(assert (=> b!5581928 (= e!3444184 e!3444186)))

(declare-fun c!977513 () Bool)

(assert (=> b!5581928 (= c!977513 ((_ is Cons!62870) (exprs!5449 lt!2253613)))))

(declare-fun bm!417539 () Bool)

(assert (=> bm!417539 (= call!417544 (derivationStepZipperDown!907 (h!69318 (exprs!5449 lt!2253613)) (Context!9899 (t!376267 (exprs!5449 lt!2253613))) (h!69319 s!2326)))))

(assert (= (and d!1764594 res!2368823) b!5581926))

(assert (= (and d!1764594 c!977512) b!5581927))

(assert (= (and d!1764594 (not c!977512)) b!5581928))

(assert (= (and b!5581928 c!977513) b!5581924))

(assert (= (and b!5581928 (not c!977513)) b!5581925))

(assert (= (or b!5581927 b!5581924) bm!417539))

(declare-fun m!6563840 () Bool)

(assert (=> b!5581926 m!6563840))

(declare-fun m!6563842 () Bool)

(assert (=> b!5581927 m!6563842))

(declare-fun m!6563844 () Bool)

(assert (=> bm!417539 m!6563844))

(assert (=> b!5581447 d!1764594))

(declare-fun b!5581990 () Bool)

(declare-fun e!3444217 () (InoxSet Context!9898))

(assert (=> b!5581990 (= e!3444217 (store ((as const (Array Context!9898 Bool)) false) lt!2253613 true))))

(declare-fun c!977524 () Bool)

(declare-fun call!417561 () List!62994)

(declare-fun call!417562 () (InoxSet Context!9898))

(declare-fun c!977525 () Bool)

(declare-fun bm!417552 () Bool)

(declare-fun c!977526 () Bool)

(assert (=> bm!417552 (= call!417562 (derivationStepZipperDown!907 (ite c!977524 (regOne!31643 (h!69318 (exprs!5449 (h!69320 zl!343)))) (ite c!977525 (regTwo!31642 (h!69318 (exprs!5449 (h!69320 zl!343)))) (ite c!977526 (regOne!31642 (h!69318 (exprs!5449 (h!69320 zl!343)))) (reg!15894 (h!69318 (exprs!5449 (h!69320 zl!343))))))) (ite (or c!977524 c!977525) lt!2253613 (Context!9899 call!417561)) (h!69319 s!2326)))))

(declare-fun b!5581991 () Bool)

(declare-fun e!3444219 () (InoxSet Context!9898))

(declare-fun call!417560 () (InoxSet Context!9898))

(assert (=> b!5581991 (= e!3444219 ((_ map or) call!417562 call!417560))))

(declare-fun b!5581992 () Bool)

(declare-fun e!3444218 () (InoxSet Context!9898))

(assert (=> b!5581992 (= e!3444218 ((as const (Array Context!9898 Bool)) false))))

(declare-fun bm!417553 () Bool)

(declare-fun call!417559 () (InoxSet Context!9898))

(declare-fun call!417557 () (InoxSet Context!9898))

(assert (=> bm!417553 (= call!417559 call!417557)))

(declare-fun b!5581994 () Bool)

(declare-fun e!3444222 () Bool)

(assert (=> b!5581994 (= e!3444222 (nullable!5597 (regOne!31642 (h!69318 (exprs!5449 (h!69320 zl!343))))))))

(declare-fun b!5581995 () Bool)

(declare-fun e!3444221 () (InoxSet Context!9898))

(assert (=> b!5581995 (= e!3444221 ((_ map or) call!417560 call!417557))))

(declare-fun bm!417554 () Bool)

(declare-fun call!417558 () List!62994)

(declare-fun $colon$colon!1630 (List!62994 Regex!15565) List!62994)

(assert (=> bm!417554 (= call!417558 ($colon$colon!1630 (exprs!5449 lt!2253613) (ite (or c!977525 c!977526) (regTwo!31642 (h!69318 (exprs!5449 (h!69320 zl!343)))) (h!69318 (exprs!5449 (h!69320 zl!343))))))))

(declare-fun bm!417555 () Bool)

(assert (=> bm!417555 (= call!417561 call!417558)))

(declare-fun bm!417556 () Bool)

(assert (=> bm!417556 (= call!417560 (derivationStepZipperDown!907 (ite c!977524 (regTwo!31643 (h!69318 (exprs!5449 (h!69320 zl!343)))) (regOne!31642 (h!69318 (exprs!5449 (h!69320 zl!343))))) (ite c!977524 lt!2253613 (Context!9899 call!417558)) (h!69319 s!2326)))))

(declare-fun b!5581996 () Bool)

(declare-fun e!3444220 () (InoxSet Context!9898))

(assert (=> b!5581996 (= e!3444221 e!3444220)))

(assert (=> b!5581996 (= c!977526 ((_ is Concat!24410) (h!69318 (exprs!5449 (h!69320 zl!343)))))))

(declare-fun b!5581997 () Bool)

(assert (=> b!5581997 (= e!3444217 e!3444219)))

(assert (=> b!5581997 (= c!977524 ((_ is Union!15565) (h!69318 (exprs!5449 (h!69320 zl!343)))))))

(declare-fun bm!417557 () Bool)

(assert (=> bm!417557 (= call!417557 call!417562)))

(declare-fun b!5581998 () Bool)

(assert (=> b!5581998 (= e!3444218 call!417559)))

(declare-fun b!5581999 () Bool)

(declare-fun c!977527 () Bool)

(assert (=> b!5581999 (= c!977527 ((_ is Star!15565) (h!69318 (exprs!5449 (h!69320 zl!343)))))))

(assert (=> b!5581999 (= e!3444220 e!3444218)))

(declare-fun b!5582000 () Bool)

(assert (=> b!5582000 (= e!3444220 call!417559)))

(declare-fun d!1764596 () Bool)

(declare-fun c!977528 () Bool)

(assert (=> d!1764596 (= c!977528 (and ((_ is ElementMatch!15565) (h!69318 (exprs!5449 (h!69320 zl!343)))) (= (c!977372 (h!69318 (exprs!5449 (h!69320 zl!343)))) (h!69319 s!2326))))))

(assert (=> d!1764596 (= (derivationStepZipperDown!907 (h!69318 (exprs!5449 (h!69320 zl!343))) lt!2253613 (h!69319 s!2326)) e!3444217)))

(declare-fun b!5581993 () Bool)

(assert (=> b!5581993 (= c!977525 e!3444222)))

(declare-fun res!2368826 () Bool)

(assert (=> b!5581993 (=> (not res!2368826) (not e!3444222))))

(assert (=> b!5581993 (= res!2368826 ((_ is Concat!24410) (h!69318 (exprs!5449 (h!69320 zl!343)))))))

(assert (=> b!5581993 (= e!3444219 e!3444221)))

(assert (= (and d!1764596 c!977528) b!5581990))

(assert (= (and d!1764596 (not c!977528)) b!5581997))

(assert (= (and b!5581997 c!977524) b!5581991))

(assert (= (and b!5581997 (not c!977524)) b!5581993))

(assert (= (and b!5581993 res!2368826) b!5581994))

(assert (= (and b!5581993 c!977525) b!5581995))

(assert (= (and b!5581993 (not c!977525)) b!5581996))

(assert (= (and b!5581996 c!977526) b!5582000))

(assert (= (and b!5581996 (not c!977526)) b!5581999))

(assert (= (and b!5581999 c!977527) b!5581998))

(assert (= (and b!5581999 (not c!977527)) b!5581992))

(assert (= (or b!5582000 b!5581998) bm!417555))

(assert (= (or b!5582000 b!5581998) bm!417553))

(assert (= (or b!5581995 bm!417555) bm!417554))

(assert (= (or b!5581995 bm!417553) bm!417557))

(assert (= (or b!5581991 b!5581995) bm!417556))

(assert (= (or b!5581991 bm!417557) bm!417552))

(declare-fun m!6563850 () Bool)

(assert (=> bm!417554 m!6563850))

(declare-fun m!6563852 () Bool)

(assert (=> bm!417556 m!6563852))

(declare-fun m!6563854 () Bool)

(assert (=> bm!417552 m!6563854))

(declare-fun m!6563856 () Bool)

(assert (=> b!5581994 m!6563856))

(declare-fun m!6563858 () Bool)

(assert (=> b!5581990 m!6563858))

(assert (=> b!5581447 d!1764596))

(declare-fun d!1764604 () Bool)

(assert (=> d!1764604 (= (nullable!5597 (h!69318 (exprs!5449 (h!69320 zl!343)))) (nullableFct!1709 (h!69318 (exprs!5449 (h!69320 zl!343)))))))

(declare-fun bs!1291287 () Bool)

(assert (= bs!1291287 d!1764604))

(declare-fun m!6563860 () Bool)

(assert (=> bs!1291287 m!6563860))

(assert (=> b!5581447 d!1764604))

(declare-fun b!5582001 () Bool)

(declare-fun e!3444225 () (InoxSet Context!9898))

(declare-fun call!417563 () (InoxSet Context!9898))

(assert (=> b!5582001 (= e!3444225 call!417563)))

(declare-fun b!5582003 () Bool)

(declare-fun e!3444224 () Bool)

(assert (=> b!5582003 (= e!3444224 (nullable!5597 (h!69318 (exprs!5449 (Context!9899 (Cons!62870 (h!69318 (exprs!5449 (h!69320 zl!343))) (t!376267 (exprs!5449 (h!69320 zl!343)))))))))))

(declare-fun e!3444223 () (InoxSet Context!9898))

(declare-fun b!5582004 () Bool)

(assert (=> b!5582004 (= e!3444223 ((_ map or) call!417563 (derivationStepZipperUp!833 (Context!9899 (t!376267 (exprs!5449 (Context!9899 (Cons!62870 (h!69318 (exprs!5449 (h!69320 zl!343))) (t!376267 (exprs!5449 (h!69320 zl!343)))))))) (h!69319 s!2326))))))

(declare-fun d!1764606 () Bool)

(declare-fun c!977529 () Bool)

(assert (=> d!1764606 (= c!977529 e!3444224)))

(declare-fun res!2368827 () Bool)

(assert (=> d!1764606 (=> (not res!2368827) (not e!3444224))))

(assert (=> d!1764606 (= res!2368827 ((_ is Cons!62870) (exprs!5449 (Context!9899 (Cons!62870 (h!69318 (exprs!5449 (h!69320 zl!343))) (t!376267 (exprs!5449 (h!69320 zl!343))))))))))

(assert (=> d!1764606 (= (derivationStepZipperUp!833 (Context!9899 (Cons!62870 (h!69318 (exprs!5449 (h!69320 zl!343))) (t!376267 (exprs!5449 (h!69320 zl!343))))) (h!69319 s!2326)) e!3444223)))

(declare-fun b!5582002 () Bool)

(assert (=> b!5582002 (= e!3444225 ((as const (Array Context!9898 Bool)) false))))

(declare-fun b!5582005 () Bool)

(assert (=> b!5582005 (= e!3444223 e!3444225)))

(declare-fun c!977530 () Bool)

(assert (=> b!5582005 (= c!977530 ((_ is Cons!62870) (exprs!5449 (Context!9899 (Cons!62870 (h!69318 (exprs!5449 (h!69320 zl!343))) (t!376267 (exprs!5449 (h!69320 zl!343))))))))))

(declare-fun bm!417558 () Bool)

(assert (=> bm!417558 (= call!417563 (derivationStepZipperDown!907 (h!69318 (exprs!5449 (Context!9899 (Cons!62870 (h!69318 (exprs!5449 (h!69320 zl!343))) (t!376267 (exprs!5449 (h!69320 zl!343))))))) (Context!9899 (t!376267 (exprs!5449 (Context!9899 (Cons!62870 (h!69318 (exprs!5449 (h!69320 zl!343))) (t!376267 (exprs!5449 (h!69320 zl!343)))))))) (h!69319 s!2326)))))

(assert (= (and d!1764606 res!2368827) b!5582003))

(assert (= (and d!1764606 c!977529) b!5582004))

(assert (= (and d!1764606 (not c!977529)) b!5582005))

(assert (= (and b!5582005 c!977530) b!5582001))

(assert (= (and b!5582005 (not c!977530)) b!5582002))

(assert (= (or b!5582004 b!5582001) bm!417558))

(declare-fun m!6563862 () Bool)

(assert (=> b!5582003 m!6563862))

(declare-fun m!6563864 () Bool)

(assert (=> b!5582004 m!6563864))

(declare-fun m!6563866 () Bool)

(assert (=> bm!417558 m!6563866))

(assert (=> b!5581447 d!1764606))

(declare-fun d!1764608 () Bool)

(assert (=> d!1764608 (= (flatMap!1178 z!1189 lambda!299328) (dynLambda!24589 lambda!299328 (h!69320 zl!343)))))

(declare-fun lt!2253708 () Unit!155634)

(assert (=> d!1764608 (= lt!2253708 (choose!42304 z!1189 (h!69320 zl!343) lambda!299328))))

(assert (=> d!1764608 (= z!1189 (store ((as const (Array Context!9898 Bool)) false) (h!69320 zl!343) true))))

(assert (=> d!1764608 (= (lemmaFlatMapOnSingletonSet!710 z!1189 (h!69320 zl!343) lambda!299328) lt!2253708)))

(declare-fun b_lambda!211563 () Bool)

(assert (=> (not b_lambda!211563) (not d!1764608)))

(declare-fun bs!1291288 () Bool)

(assert (= bs!1291288 d!1764608))

(assert (=> bs!1291288 m!6563452))

(declare-fun m!6563868 () Bool)

(assert (=> bs!1291288 m!6563868))

(declare-fun m!6563870 () Bool)

(assert (=> bs!1291288 m!6563870))

(declare-fun m!6563872 () Bool)

(assert (=> bs!1291288 m!6563872))

(assert (=> b!5581447 d!1764608))

(declare-fun b!5582006 () Bool)

(declare-fun e!3444228 () (InoxSet Context!9898))

(declare-fun call!417564 () (InoxSet Context!9898))

(assert (=> b!5582006 (= e!3444228 call!417564)))

(declare-fun b!5582008 () Bool)

(declare-fun e!3444227 () Bool)

(assert (=> b!5582008 (= e!3444227 (nullable!5597 (h!69318 (exprs!5449 (h!69320 zl!343)))))))

(declare-fun b!5582009 () Bool)

(declare-fun e!3444226 () (InoxSet Context!9898))

(assert (=> b!5582009 (= e!3444226 ((_ map or) call!417564 (derivationStepZipperUp!833 (Context!9899 (t!376267 (exprs!5449 (h!69320 zl!343)))) (h!69319 s!2326))))))

(declare-fun d!1764610 () Bool)

(declare-fun c!977531 () Bool)

(assert (=> d!1764610 (= c!977531 e!3444227)))

(declare-fun res!2368828 () Bool)

(assert (=> d!1764610 (=> (not res!2368828) (not e!3444227))))

(assert (=> d!1764610 (= res!2368828 ((_ is Cons!62870) (exprs!5449 (h!69320 zl!343))))))

(assert (=> d!1764610 (= (derivationStepZipperUp!833 (h!69320 zl!343) (h!69319 s!2326)) e!3444226)))

(declare-fun b!5582007 () Bool)

(assert (=> b!5582007 (= e!3444228 ((as const (Array Context!9898 Bool)) false))))

(declare-fun b!5582010 () Bool)

(assert (=> b!5582010 (= e!3444226 e!3444228)))

(declare-fun c!977532 () Bool)

(assert (=> b!5582010 (= c!977532 ((_ is Cons!62870) (exprs!5449 (h!69320 zl!343))))))

(declare-fun bm!417559 () Bool)

(assert (=> bm!417559 (= call!417564 (derivationStepZipperDown!907 (h!69318 (exprs!5449 (h!69320 zl!343))) (Context!9899 (t!376267 (exprs!5449 (h!69320 zl!343)))) (h!69319 s!2326)))))

(assert (= (and d!1764610 res!2368828) b!5582008))

(assert (= (and d!1764610 c!977531) b!5582009))

(assert (= (and d!1764610 (not c!977531)) b!5582010))

(assert (= (and b!5582010 c!977532) b!5582006))

(assert (= (and b!5582010 (not c!977532)) b!5582007))

(assert (= (or b!5582009 b!5582006) bm!417559))

(assert (=> b!5582008 m!6563448))

(declare-fun m!6563874 () Bool)

(assert (=> b!5582009 m!6563874))

(declare-fun m!6563876 () Bool)

(assert (=> bm!417559 m!6563876))

(assert (=> b!5581447 d!1764610))

(declare-fun d!1764612 () Bool)

(assert (=> d!1764612 (= (flatMap!1178 z!1189 lambda!299328) (choose!42305 z!1189 lambda!299328))))

(declare-fun bs!1291289 () Bool)

(assert (= bs!1291289 d!1764612))

(declare-fun m!6563878 () Bool)

(assert (=> bs!1291289 m!6563878))

(assert (=> b!5581447 d!1764612))

(declare-fun d!1764614 () Bool)

(declare-fun e!3444231 () Bool)

(assert (=> d!1764614 e!3444231))

(declare-fun res!2368831 () Bool)

(assert (=> d!1764614 (=> (not res!2368831) (not e!3444231))))

(declare-fun lt!2253711 () List!62996)

(declare-fun noDuplicate!1543 (List!62996) Bool)

(assert (=> d!1764614 (= res!2368831 (noDuplicate!1543 lt!2253711))))

(declare-fun choose!42311 ((InoxSet Context!9898)) List!62996)

(assert (=> d!1764614 (= lt!2253711 (choose!42311 z!1189))))

(assert (=> d!1764614 (= (toList!9349 z!1189) lt!2253711)))

(declare-fun b!5582013 () Bool)

(declare-fun content!11335 (List!62996) (InoxSet Context!9898))

(assert (=> b!5582013 (= e!3444231 (= (content!11335 lt!2253711) z!1189))))

(assert (= (and d!1764614 res!2368831) b!5582013))

(declare-fun m!6563880 () Bool)

(assert (=> d!1764614 m!6563880))

(declare-fun m!6563882 () Bool)

(assert (=> d!1764614 m!6563882))

(declare-fun m!6563884 () Bool)

(assert (=> b!5582013 m!6563884))

(assert (=> b!5581458 d!1764614))

(declare-fun d!1764616 () Bool)

(declare-fun c!977533 () Bool)

(assert (=> d!1764616 (= c!977533 (isEmpty!34683 (t!376268 s!2326)))))

(declare-fun e!3444232 () Bool)

(assert (=> d!1764616 (= (matchZipper!1703 lt!2253611 (t!376268 s!2326)) e!3444232)))

(declare-fun b!5582014 () Bool)

(assert (=> b!5582014 (= e!3444232 (nullableZipper!1562 lt!2253611))))

(declare-fun b!5582015 () Bool)

(assert (=> b!5582015 (= e!3444232 (matchZipper!1703 (derivationStepZipper!1664 lt!2253611 (head!11905 (t!376268 s!2326))) (tail!11000 (t!376268 s!2326))))))

(assert (= (and d!1764616 c!977533) b!5582014))

(assert (= (and d!1764616 (not c!977533)) b!5582015))

(assert (=> d!1764616 m!6563594))

(declare-fun m!6563886 () Bool)

(assert (=> b!5582014 m!6563886))

(assert (=> b!5582015 m!6563598))

(assert (=> b!5582015 m!6563598))

(declare-fun m!6563888 () Bool)

(assert (=> b!5582015 m!6563888))

(assert (=> b!5582015 m!6563602))

(assert (=> b!5582015 m!6563888))

(assert (=> b!5582015 m!6563602))

(declare-fun m!6563890 () Bool)

(assert (=> b!5582015 m!6563890))

(assert (=> b!5581448 d!1764616))

(declare-fun d!1764618 () Bool)

(declare-fun c!977534 () Bool)

(assert (=> d!1764618 (= c!977534 (isEmpty!34683 (t!376268 s!2326)))))

(declare-fun e!3444233 () Bool)

(assert (=> d!1764618 (= (matchZipper!1703 lt!2253616 (t!376268 s!2326)) e!3444233)))

(declare-fun b!5582016 () Bool)

(assert (=> b!5582016 (= e!3444233 (nullableZipper!1562 lt!2253616))))

(declare-fun b!5582017 () Bool)

(assert (=> b!5582017 (= e!3444233 (matchZipper!1703 (derivationStepZipper!1664 lt!2253616 (head!11905 (t!376268 s!2326))) (tail!11000 (t!376268 s!2326))))))

(assert (= (and d!1764618 c!977534) b!5582016))

(assert (= (and d!1764618 (not c!977534)) b!5582017))

(assert (=> d!1764618 m!6563594))

(declare-fun m!6563892 () Bool)

(assert (=> b!5582016 m!6563892))

(assert (=> b!5582017 m!6563598))

(assert (=> b!5582017 m!6563598))

(declare-fun m!6563894 () Bool)

(assert (=> b!5582017 m!6563894))

(assert (=> b!5582017 m!6563602))

(assert (=> b!5582017 m!6563894))

(assert (=> b!5582017 m!6563602))

(declare-fun m!6563896 () Bool)

(assert (=> b!5582017 m!6563896))

(assert (=> b!5581459 d!1764618))

(declare-fun bs!1291290 () Bool)

(declare-fun b!5582055 () Bool)

(assert (= bs!1291290 (and b!5582055 d!1764574)))

(declare-fun lambda!299377 () Int)

(assert (=> bs!1291290 (not (= lambda!299377 lambda!299365))))

(declare-fun bs!1291291 () Bool)

(assert (= bs!1291291 (and b!5582055 d!1764578)))

(assert (=> bs!1291291 (not (= lambda!299377 lambda!299370))))

(assert (=> bs!1291291 (not (= lambda!299377 lambda!299371))))

(declare-fun bs!1291292 () Bool)

(assert (= bs!1291292 (and b!5582055 b!5581439)))

(assert (=> bs!1291292 (not (= lambda!299377 lambda!299326))))

(assert (=> bs!1291292 (not (= lambda!299377 lambda!299327))))

(assert (=> b!5582055 true))

(assert (=> b!5582055 true))

(declare-fun bs!1291293 () Bool)

(declare-fun b!5582050 () Bool)

(assert (= bs!1291293 (and b!5582050 d!1764574)))

(declare-fun lambda!299378 () Int)

(assert (=> bs!1291293 (not (= lambda!299378 lambda!299365))))

(declare-fun bs!1291294 () Bool)

(assert (= bs!1291294 (and b!5582050 d!1764578)))

(assert (=> bs!1291294 (not (= lambda!299378 lambda!299370))))

(assert (=> bs!1291294 (= lambda!299378 lambda!299371)))

(declare-fun bs!1291295 () Bool)

(assert (= bs!1291295 (and b!5582050 b!5581439)))

(assert (=> bs!1291295 (not (= lambda!299378 lambda!299326))))

(assert (=> bs!1291295 (= lambda!299378 lambda!299327)))

(declare-fun bs!1291296 () Bool)

(assert (= bs!1291296 (and b!5582050 b!5582055)))

(assert (=> bs!1291296 (not (= lambda!299378 lambda!299377))))

(assert (=> b!5582050 true))

(assert (=> b!5582050 true))

(declare-fun e!3444258 () Bool)

(declare-fun call!417570 () Bool)

(assert (=> b!5582050 (= e!3444258 call!417570)))

(declare-fun b!5582051 () Bool)

(declare-fun e!3444254 () Bool)

(assert (=> b!5582051 (= e!3444254 (= s!2326 (Cons!62871 (c!977372 r!7292) Nil!62871)))))

(declare-fun b!5582052 () Bool)

(declare-fun res!2368848 () Bool)

(declare-fun e!3444255 () Bool)

(assert (=> b!5582052 (=> res!2368848 e!3444255)))

(declare-fun call!417569 () Bool)

(assert (=> b!5582052 (= res!2368848 call!417569)))

(assert (=> b!5582052 (= e!3444258 e!3444255)))

(declare-fun b!5582053 () Bool)

(declare-fun e!3444253 () Bool)

(assert (=> b!5582053 (= e!3444253 (matchRSpec!2668 (regTwo!31643 r!7292) s!2326))))

(declare-fun b!5582054 () Bool)

(declare-fun e!3444257 () Bool)

(assert (=> b!5582054 (= e!3444257 e!3444253)))

(declare-fun res!2368850 () Bool)

(assert (=> b!5582054 (= res!2368850 (matchRSpec!2668 (regOne!31643 r!7292) s!2326))))

(assert (=> b!5582054 (=> res!2368850 e!3444253)))

(declare-fun d!1764620 () Bool)

(declare-fun c!977544 () Bool)

(assert (=> d!1764620 (= c!977544 ((_ is EmptyExpr!15565) r!7292))))

(declare-fun e!3444256 () Bool)

(assert (=> d!1764620 (= (matchRSpec!2668 r!7292 s!2326) e!3444256)))

(declare-fun bm!417564 () Bool)

(declare-fun c!977546 () Bool)

(assert (=> bm!417564 (= call!417570 (Exists!2665 (ite c!977546 lambda!299377 lambda!299378)))))

(declare-fun bm!417565 () Bool)

(assert (=> bm!417565 (= call!417569 (isEmpty!34683 s!2326))))

(assert (=> b!5582055 (= e!3444255 call!417570)))

(declare-fun b!5582056 () Bool)

(assert (=> b!5582056 (= e!3444257 e!3444258)))

(assert (=> b!5582056 (= c!977546 ((_ is Star!15565) r!7292))))

(declare-fun b!5582057 () Bool)

(assert (=> b!5582057 (= e!3444256 call!417569)))

(declare-fun b!5582058 () Bool)

(declare-fun e!3444252 () Bool)

(assert (=> b!5582058 (= e!3444256 e!3444252)))

(declare-fun res!2368849 () Bool)

(assert (=> b!5582058 (= res!2368849 (not ((_ is EmptyLang!15565) r!7292)))))

(assert (=> b!5582058 (=> (not res!2368849) (not e!3444252))))

(declare-fun b!5582059 () Bool)

(declare-fun c!977545 () Bool)

(assert (=> b!5582059 (= c!977545 ((_ is Union!15565) r!7292))))

(assert (=> b!5582059 (= e!3444254 e!3444257)))

(declare-fun b!5582060 () Bool)

(declare-fun c!977543 () Bool)

(assert (=> b!5582060 (= c!977543 ((_ is ElementMatch!15565) r!7292))))

(assert (=> b!5582060 (= e!3444252 e!3444254)))

(assert (= (and d!1764620 c!977544) b!5582057))

(assert (= (and d!1764620 (not c!977544)) b!5582058))

(assert (= (and b!5582058 res!2368849) b!5582060))

(assert (= (and b!5582060 c!977543) b!5582051))

(assert (= (and b!5582060 (not c!977543)) b!5582059))

(assert (= (and b!5582059 c!977545) b!5582054))

(assert (= (and b!5582059 (not c!977545)) b!5582056))

(assert (= (and b!5582054 (not res!2368850)) b!5582053))

(assert (= (and b!5582056 c!977546) b!5582052))

(assert (= (and b!5582056 (not c!977546)) b!5582050))

(assert (= (and b!5582052 (not res!2368848)) b!5582055))

(assert (= (or b!5582055 b!5582050) bm!417564))

(assert (= (or b!5582057 b!5582052) bm!417565))

(declare-fun m!6563898 () Bool)

(assert (=> b!5582053 m!6563898))

(declare-fun m!6563900 () Bool)

(assert (=> b!5582054 m!6563900))

(declare-fun m!6563902 () Bool)

(assert (=> bm!417564 m!6563902))

(declare-fun m!6563904 () Bool)

(assert (=> bm!417565 m!6563904))

(assert (=> b!5581454 d!1764620))

(declare-fun d!1764622 () Bool)

(declare-fun e!3444277 () Bool)

(assert (=> d!1764622 e!3444277))

(declare-fun c!977554 () Bool)

(assert (=> d!1764622 (= c!977554 ((_ is EmptyExpr!15565) r!7292))))

(declare-fun lt!2253714 () Bool)

(declare-fun e!3444276 () Bool)

(assert (=> d!1764622 (= lt!2253714 e!3444276)))

(declare-fun c!977553 () Bool)

(assert (=> d!1764622 (= c!977553 (isEmpty!34683 s!2326))))

(assert (=> d!1764622 (validRegex!7301 r!7292)))

(assert (=> d!1764622 (= (matchR!7750 r!7292 s!2326) lt!2253714)))

(declare-fun b!5582089 () Bool)

(assert (=> b!5582089 (= e!3444276 (nullable!5597 r!7292))))

(declare-fun b!5582090 () Bool)

(declare-fun e!3444273 () Bool)

(assert (=> b!5582090 (= e!3444277 e!3444273)))

(declare-fun c!977555 () Bool)

(assert (=> b!5582090 (= c!977555 ((_ is EmptyLang!15565) r!7292))))

(declare-fun b!5582091 () Bool)

(declare-fun e!3444274 () Bool)

(declare-fun e!3444279 () Bool)

(assert (=> b!5582091 (= e!3444274 e!3444279)))

(declare-fun res!2368874 () Bool)

(assert (=> b!5582091 (=> (not res!2368874) (not e!3444279))))

(assert (=> b!5582091 (= res!2368874 (not lt!2253714))))

(declare-fun b!5582092 () Bool)

(declare-fun call!417573 () Bool)

(assert (=> b!5582092 (= e!3444277 (= lt!2253714 call!417573))))

(declare-fun b!5582093 () Bool)

(declare-fun e!3444278 () Bool)

(assert (=> b!5582093 (= e!3444278 (not (= (head!11905 s!2326) (c!977372 r!7292))))))

(declare-fun b!5582094 () Bool)

(assert (=> b!5582094 (= e!3444279 e!3444278)))

(declare-fun res!2368873 () Bool)

(assert (=> b!5582094 (=> res!2368873 e!3444278)))

(assert (=> b!5582094 (= res!2368873 call!417573)))

(declare-fun b!5582095 () Bool)

(declare-fun res!2368869 () Bool)

(declare-fun e!3444275 () Bool)

(assert (=> b!5582095 (=> (not res!2368869) (not e!3444275))))

(assert (=> b!5582095 (= res!2368869 (not call!417573))))

(declare-fun b!5582096 () Bool)

(assert (=> b!5582096 (= e!3444275 (= (head!11905 s!2326) (c!977372 r!7292)))))

(declare-fun b!5582097 () Bool)

(declare-fun res!2368870 () Bool)

(assert (=> b!5582097 (=> res!2368870 e!3444274)))

(assert (=> b!5582097 (= res!2368870 e!3444275)))

(declare-fun res!2368871 () Bool)

(assert (=> b!5582097 (=> (not res!2368871) (not e!3444275))))

(assert (=> b!5582097 (= res!2368871 lt!2253714)))

(declare-fun b!5582098 () Bool)

(declare-fun res!2368868 () Bool)

(assert (=> b!5582098 (=> (not res!2368868) (not e!3444275))))

(assert (=> b!5582098 (= res!2368868 (isEmpty!34683 (tail!11000 s!2326)))))

(declare-fun b!5582099 () Bool)

(declare-fun res!2368867 () Bool)

(assert (=> b!5582099 (=> res!2368867 e!3444278)))

(assert (=> b!5582099 (= res!2368867 (not (isEmpty!34683 (tail!11000 s!2326))))))

(declare-fun bm!417568 () Bool)

(assert (=> bm!417568 (= call!417573 (isEmpty!34683 s!2326))))

(declare-fun b!5582100 () Bool)

(assert (=> b!5582100 (= e!3444273 (not lt!2253714))))

(declare-fun b!5582101 () Bool)

(declare-fun res!2368872 () Bool)

(assert (=> b!5582101 (=> res!2368872 e!3444274)))

(assert (=> b!5582101 (= res!2368872 (not ((_ is ElementMatch!15565) r!7292)))))

(assert (=> b!5582101 (= e!3444273 e!3444274)))

(declare-fun b!5582102 () Bool)

(declare-fun derivativeStep!4416 (Regex!15565 C!31400) Regex!15565)

(assert (=> b!5582102 (= e!3444276 (matchR!7750 (derivativeStep!4416 r!7292 (head!11905 s!2326)) (tail!11000 s!2326)))))

(assert (= (and d!1764622 c!977553) b!5582089))

(assert (= (and d!1764622 (not c!977553)) b!5582102))

(assert (= (and d!1764622 c!977554) b!5582092))

(assert (= (and d!1764622 (not c!977554)) b!5582090))

(assert (= (and b!5582090 c!977555) b!5582100))

(assert (= (and b!5582090 (not c!977555)) b!5582101))

(assert (= (and b!5582101 (not res!2368872)) b!5582097))

(assert (= (and b!5582097 res!2368871) b!5582095))

(assert (= (and b!5582095 res!2368869) b!5582098))

(assert (= (and b!5582098 res!2368868) b!5582096))

(assert (= (and b!5582097 (not res!2368870)) b!5582091))

(assert (= (and b!5582091 res!2368874) b!5582094))

(assert (= (and b!5582094 (not res!2368873)) b!5582099))

(assert (= (and b!5582099 (not res!2368867)) b!5582093))

(assert (= (or b!5582092 b!5582094 b!5582095) bm!417568))

(assert (=> d!1764622 m!6563904))

(assert (=> d!1764622 m!6563460))

(declare-fun m!6563906 () Bool)

(assert (=> b!5582098 m!6563906))

(assert (=> b!5582098 m!6563906))

(declare-fun m!6563908 () Bool)

(assert (=> b!5582098 m!6563908))

(assert (=> b!5582099 m!6563906))

(assert (=> b!5582099 m!6563906))

(assert (=> b!5582099 m!6563908))

(assert (=> bm!417568 m!6563904))

(declare-fun m!6563910 () Bool)

(assert (=> b!5582096 m!6563910))

(assert (=> b!5582102 m!6563910))

(assert (=> b!5582102 m!6563910))

(declare-fun m!6563912 () Bool)

(assert (=> b!5582102 m!6563912))

(assert (=> b!5582102 m!6563906))

(assert (=> b!5582102 m!6563912))

(assert (=> b!5582102 m!6563906))

(declare-fun m!6563914 () Bool)

(assert (=> b!5582102 m!6563914))

(declare-fun m!6563916 () Bool)

(assert (=> b!5582089 m!6563916))

(assert (=> b!5582093 m!6563910))

(assert (=> b!5581454 d!1764622))

(declare-fun d!1764624 () Bool)

(assert (=> d!1764624 (= (matchR!7750 r!7292 s!2326) (matchRSpec!2668 r!7292 s!2326))))

(declare-fun lt!2253717 () Unit!155634)

(declare-fun choose!42312 (Regex!15565 List!62995) Unit!155634)

(assert (=> d!1764624 (= lt!2253717 (choose!42312 r!7292 s!2326))))

(assert (=> d!1764624 (validRegex!7301 r!7292)))

(assert (=> d!1764624 (= (mainMatchTheorem!2668 r!7292 s!2326) lt!2253717)))

(declare-fun bs!1291297 () Bool)

(assert (= bs!1291297 d!1764624))

(assert (=> bs!1291297 m!6563374))

(assert (=> bs!1291297 m!6563372))

(declare-fun m!6563918 () Bool)

(assert (=> bs!1291297 m!6563918))

(assert (=> bs!1291297 m!6563460))

(assert (=> b!5581454 d!1764624))

(assert (=> b!5581444 d!1764616))

(assert (=> b!5581455 d!1764618))

(declare-fun b!5582103 () Bool)

(declare-fun e!3444280 () (InoxSet Context!9898))

(assert (=> b!5582103 (= e!3444280 (store ((as const (Array Context!9898 Bool)) false) lt!2253613 true))))

(declare-fun bm!417569 () Bool)

(declare-fun call!417579 () (InoxSet Context!9898))

(declare-fun call!417578 () List!62994)

(declare-fun c!977557 () Bool)

(declare-fun c!977556 () Bool)

(declare-fun c!977558 () Bool)

(assert (=> bm!417569 (= call!417579 (derivationStepZipperDown!907 (ite c!977556 (regOne!31643 (regTwo!31643 (regOne!31642 r!7292))) (ite c!977557 (regTwo!31642 (regTwo!31643 (regOne!31642 r!7292))) (ite c!977558 (regOne!31642 (regTwo!31643 (regOne!31642 r!7292))) (reg!15894 (regTwo!31643 (regOne!31642 r!7292)))))) (ite (or c!977556 c!977557) lt!2253613 (Context!9899 call!417578)) (h!69319 s!2326)))))

(declare-fun b!5582104 () Bool)

(declare-fun e!3444282 () (InoxSet Context!9898))

(declare-fun call!417577 () (InoxSet Context!9898))

(assert (=> b!5582104 (= e!3444282 ((_ map or) call!417579 call!417577))))

(declare-fun b!5582105 () Bool)

(declare-fun e!3444281 () (InoxSet Context!9898))

(assert (=> b!5582105 (= e!3444281 ((as const (Array Context!9898 Bool)) false))))

(declare-fun bm!417570 () Bool)

(declare-fun call!417576 () (InoxSet Context!9898))

(declare-fun call!417574 () (InoxSet Context!9898))

(assert (=> bm!417570 (= call!417576 call!417574)))

(declare-fun b!5582107 () Bool)

(declare-fun e!3444285 () Bool)

(assert (=> b!5582107 (= e!3444285 (nullable!5597 (regOne!31642 (regTwo!31643 (regOne!31642 r!7292)))))))

(declare-fun b!5582108 () Bool)

(declare-fun e!3444284 () (InoxSet Context!9898))

(assert (=> b!5582108 (= e!3444284 ((_ map or) call!417577 call!417574))))

(declare-fun call!417575 () List!62994)

(declare-fun bm!417571 () Bool)

(assert (=> bm!417571 (= call!417575 ($colon$colon!1630 (exprs!5449 lt!2253613) (ite (or c!977557 c!977558) (regTwo!31642 (regTwo!31643 (regOne!31642 r!7292))) (regTwo!31643 (regOne!31642 r!7292)))))))

(declare-fun bm!417572 () Bool)

(assert (=> bm!417572 (= call!417578 call!417575)))

(declare-fun bm!417573 () Bool)

(assert (=> bm!417573 (= call!417577 (derivationStepZipperDown!907 (ite c!977556 (regTwo!31643 (regTwo!31643 (regOne!31642 r!7292))) (regOne!31642 (regTwo!31643 (regOne!31642 r!7292)))) (ite c!977556 lt!2253613 (Context!9899 call!417575)) (h!69319 s!2326)))))

(declare-fun b!5582109 () Bool)

(declare-fun e!3444283 () (InoxSet Context!9898))

(assert (=> b!5582109 (= e!3444284 e!3444283)))

(assert (=> b!5582109 (= c!977558 ((_ is Concat!24410) (regTwo!31643 (regOne!31642 r!7292))))))

(declare-fun b!5582110 () Bool)

(assert (=> b!5582110 (= e!3444280 e!3444282)))

(assert (=> b!5582110 (= c!977556 ((_ is Union!15565) (regTwo!31643 (regOne!31642 r!7292))))))

(declare-fun bm!417574 () Bool)

(assert (=> bm!417574 (= call!417574 call!417579)))

(declare-fun b!5582111 () Bool)

(assert (=> b!5582111 (= e!3444281 call!417576)))

(declare-fun b!5582112 () Bool)

(declare-fun c!977559 () Bool)

(assert (=> b!5582112 (= c!977559 ((_ is Star!15565) (regTwo!31643 (regOne!31642 r!7292))))))

(assert (=> b!5582112 (= e!3444283 e!3444281)))

(declare-fun b!5582113 () Bool)

(assert (=> b!5582113 (= e!3444283 call!417576)))

(declare-fun d!1764626 () Bool)

(declare-fun c!977560 () Bool)

(assert (=> d!1764626 (= c!977560 (and ((_ is ElementMatch!15565) (regTwo!31643 (regOne!31642 r!7292))) (= (c!977372 (regTwo!31643 (regOne!31642 r!7292))) (h!69319 s!2326))))))

(assert (=> d!1764626 (= (derivationStepZipperDown!907 (regTwo!31643 (regOne!31642 r!7292)) lt!2253613 (h!69319 s!2326)) e!3444280)))

(declare-fun b!5582106 () Bool)

(assert (=> b!5582106 (= c!977557 e!3444285)))

(declare-fun res!2368875 () Bool)

(assert (=> b!5582106 (=> (not res!2368875) (not e!3444285))))

(assert (=> b!5582106 (= res!2368875 ((_ is Concat!24410) (regTwo!31643 (regOne!31642 r!7292))))))

(assert (=> b!5582106 (= e!3444282 e!3444284)))

(assert (= (and d!1764626 c!977560) b!5582103))

(assert (= (and d!1764626 (not c!977560)) b!5582110))

(assert (= (and b!5582110 c!977556) b!5582104))

(assert (= (and b!5582110 (not c!977556)) b!5582106))

(assert (= (and b!5582106 res!2368875) b!5582107))

(assert (= (and b!5582106 c!977557) b!5582108))

(assert (= (and b!5582106 (not c!977557)) b!5582109))

(assert (= (and b!5582109 c!977558) b!5582113))

(assert (= (and b!5582109 (not c!977558)) b!5582112))

(assert (= (and b!5582112 c!977559) b!5582111))

(assert (= (and b!5582112 (not c!977559)) b!5582105))

(assert (= (or b!5582113 b!5582111) bm!417572))

(assert (= (or b!5582113 b!5582111) bm!417570))

(assert (= (or b!5582108 bm!417572) bm!417571))

(assert (= (or b!5582108 bm!417570) bm!417574))

(assert (= (or b!5582104 b!5582108) bm!417573))

(assert (= (or b!5582104 bm!417574) bm!417569))

(declare-fun m!6563920 () Bool)

(assert (=> bm!417571 m!6563920))

(declare-fun m!6563922 () Bool)

(assert (=> bm!417573 m!6563922))

(declare-fun m!6563924 () Bool)

(assert (=> bm!417569 m!6563924))

(declare-fun m!6563926 () Bool)

(assert (=> b!5582107 m!6563926))

(assert (=> b!5582103 m!6563858))

(assert (=> b!5581466 d!1764626))

(declare-fun b!5582114 () Bool)

(declare-fun e!3444286 () (InoxSet Context!9898))

(assert (=> b!5582114 (= e!3444286 (store ((as const (Array Context!9898 Bool)) false) lt!2253613 true))))

(declare-fun c!977563 () Bool)

(declare-fun c!977561 () Bool)

(declare-fun c!977562 () Bool)

(declare-fun bm!417575 () Bool)

(declare-fun call!417585 () (InoxSet Context!9898))

(declare-fun call!417584 () List!62994)

(assert (=> bm!417575 (= call!417585 (derivationStepZipperDown!907 (ite c!977561 (regOne!31643 (regOne!31643 (regOne!31642 r!7292))) (ite c!977562 (regTwo!31642 (regOne!31643 (regOne!31642 r!7292))) (ite c!977563 (regOne!31642 (regOne!31643 (regOne!31642 r!7292))) (reg!15894 (regOne!31643 (regOne!31642 r!7292)))))) (ite (or c!977561 c!977562) lt!2253613 (Context!9899 call!417584)) (h!69319 s!2326)))))

(declare-fun b!5582115 () Bool)

(declare-fun e!3444288 () (InoxSet Context!9898))

(declare-fun call!417583 () (InoxSet Context!9898))

(assert (=> b!5582115 (= e!3444288 ((_ map or) call!417585 call!417583))))

(declare-fun b!5582116 () Bool)

(declare-fun e!3444287 () (InoxSet Context!9898))

(assert (=> b!5582116 (= e!3444287 ((as const (Array Context!9898 Bool)) false))))

(declare-fun bm!417576 () Bool)

(declare-fun call!417582 () (InoxSet Context!9898))

(declare-fun call!417580 () (InoxSet Context!9898))

(assert (=> bm!417576 (= call!417582 call!417580)))

(declare-fun b!5582118 () Bool)

(declare-fun e!3444291 () Bool)

(assert (=> b!5582118 (= e!3444291 (nullable!5597 (regOne!31642 (regOne!31643 (regOne!31642 r!7292)))))))

(declare-fun b!5582119 () Bool)

(declare-fun e!3444290 () (InoxSet Context!9898))

(assert (=> b!5582119 (= e!3444290 ((_ map or) call!417583 call!417580))))

(declare-fun call!417581 () List!62994)

(declare-fun bm!417577 () Bool)

(assert (=> bm!417577 (= call!417581 ($colon$colon!1630 (exprs!5449 lt!2253613) (ite (or c!977562 c!977563) (regTwo!31642 (regOne!31643 (regOne!31642 r!7292))) (regOne!31643 (regOne!31642 r!7292)))))))

(declare-fun bm!417578 () Bool)

(assert (=> bm!417578 (= call!417584 call!417581)))

(declare-fun bm!417579 () Bool)

(assert (=> bm!417579 (= call!417583 (derivationStepZipperDown!907 (ite c!977561 (regTwo!31643 (regOne!31643 (regOne!31642 r!7292))) (regOne!31642 (regOne!31643 (regOne!31642 r!7292)))) (ite c!977561 lt!2253613 (Context!9899 call!417581)) (h!69319 s!2326)))))

(declare-fun b!5582120 () Bool)

(declare-fun e!3444289 () (InoxSet Context!9898))

(assert (=> b!5582120 (= e!3444290 e!3444289)))

(assert (=> b!5582120 (= c!977563 ((_ is Concat!24410) (regOne!31643 (regOne!31642 r!7292))))))

(declare-fun b!5582121 () Bool)

(assert (=> b!5582121 (= e!3444286 e!3444288)))

(assert (=> b!5582121 (= c!977561 ((_ is Union!15565) (regOne!31643 (regOne!31642 r!7292))))))

(declare-fun bm!417580 () Bool)

(assert (=> bm!417580 (= call!417580 call!417585)))

(declare-fun b!5582122 () Bool)

(assert (=> b!5582122 (= e!3444287 call!417582)))

(declare-fun b!5582123 () Bool)

(declare-fun c!977564 () Bool)

(assert (=> b!5582123 (= c!977564 ((_ is Star!15565) (regOne!31643 (regOne!31642 r!7292))))))

(assert (=> b!5582123 (= e!3444289 e!3444287)))

(declare-fun b!5582124 () Bool)

(assert (=> b!5582124 (= e!3444289 call!417582)))

(declare-fun d!1764628 () Bool)

(declare-fun c!977565 () Bool)

(assert (=> d!1764628 (= c!977565 (and ((_ is ElementMatch!15565) (regOne!31643 (regOne!31642 r!7292))) (= (c!977372 (regOne!31643 (regOne!31642 r!7292))) (h!69319 s!2326))))))

(assert (=> d!1764628 (= (derivationStepZipperDown!907 (regOne!31643 (regOne!31642 r!7292)) lt!2253613 (h!69319 s!2326)) e!3444286)))

(declare-fun b!5582117 () Bool)

(assert (=> b!5582117 (= c!977562 e!3444291)))

(declare-fun res!2368876 () Bool)

(assert (=> b!5582117 (=> (not res!2368876) (not e!3444291))))

(assert (=> b!5582117 (= res!2368876 ((_ is Concat!24410) (regOne!31643 (regOne!31642 r!7292))))))

(assert (=> b!5582117 (= e!3444288 e!3444290)))

(assert (= (and d!1764628 c!977565) b!5582114))

(assert (= (and d!1764628 (not c!977565)) b!5582121))

(assert (= (and b!5582121 c!977561) b!5582115))

(assert (= (and b!5582121 (not c!977561)) b!5582117))

(assert (= (and b!5582117 res!2368876) b!5582118))

(assert (= (and b!5582117 c!977562) b!5582119))

(assert (= (and b!5582117 (not c!977562)) b!5582120))

(assert (= (and b!5582120 c!977563) b!5582124))

(assert (= (and b!5582120 (not c!977563)) b!5582123))

(assert (= (and b!5582123 c!977564) b!5582122))

(assert (= (and b!5582123 (not c!977564)) b!5582116))

(assert (= (or b!5582124 b!5582122) bm!417578))

(assert (= (or b!5582124 b!5582122) bm!417576))

(assert (= (or b!5582119 bm!417578) bm!417577))

(assert (= (or b!5582119 bm!417576) bm!417580))

(assert (= (or b!5582115 b!5582119) bm!417579))

(assert (= (or b!5582115 bm!417580) bm!417575))

(declare-fun m!6563928 () Bool)

(assert (=> bm!417577 m!6563928))

(declare-fun m!6563930 () Bool)

(assert (=> bm!417579 m!6563930))

(declare-fun m!6563932 () Bool)

(assert (=> bm!417575 m!6563932))

(declare-fun m!6563934 () Bool)

(assert (=> b!5582118 m!6563934))

(assert (=> b!5582114 m!6563858))

(assert (=> b!5581466 d!1764628))

(declare-fun bm!417587 () Bool)

(declare-fun call!417593 () Bool)

(declare-fun c!977570 () Bool)

(assert (=> bm!417587 (= call!417593 (validRegex!7301 (ite c!977570 (regOne!31643 r!7292) (regOne!31642 r!7292))))))

(declare-fun b!5582144 () Bool)

(declare-fun e!3444312 () Bool)

(declare-fun e!3444308 () Bool)

(assert (=> b!5582144 (= e!3444312 e!3444308)))

(declare-fun res!2368889 () Bool)

(assert (=> b!5582144 (=> (not res!2368889) (not e!3444308))))

(assert (=> b!5582144 (= res!2368889 call!417593)))

(declare-fun b!5582145 () Bool)

(declare-fun e!3444311 () Bool)

(declare-fun e!3444307 () Bool)

(assert (=> b!5582145 (= e!3444311 e!3444307)))

(declare-fun res!2368891 () Bool)

(assert (=> b!5582145 (= res!2368891 (not (nullable!5597 (reg!15894 r!7292))))))

(assert (=> b!5582145 (=> (not res!2368891) (not e!3444307))))

(declare-fun b!5582146 () Bool)

(declare-fun res!2368887 () Bool)

(declare-fun e!3444310 () Bool)

(assert (=> b!5582146 (=> (not res!2368887) (not e!3444310))))

(assert (=> b!5582146 (= res!2368887 call!417593)))

(declare-fun e!3444309 () Bool)

(assert (=> b!5582146 (= e!3444309 e!3444310)))

(declare-fun b!5582147 () Bool)

(declare-fun call!417594 () Bool)

(assert (=> b!5582147 (= e!3444310 call!417594)))

(declare-fun bm!417588 () Bool)

(declare-fun call!417592 () Bool)

(assert (=> bm!417588 (= call!417594 call!417592)))

(declare-fun b!5582148 () Bool)

(declare-fun e!3444306 () Bool)

(assert (=> b!5582148 (= e!3444306 e!3444311)))

(declare-fun c!977571 () Bool)

(assert (=> b!5582148 (= c!977571 ((_ is Star!15565) r!7292))))

(declare-fun b!5582149 () Bool)

(assert (=> b!5582149 (= e!3444307 call!417592)))

(declare-fun b!5582150 () Bool)

(declare-fun res!2368890 () Bool)

(assert (=> b!5582150 (=> res!2368890 e!3444312)))

(assert (=> b!5582150 (= res!2368890 (not ((_ is Concat!24410) r!7292)))))

(assert (=> b!5582150 (= e!3444309 e!3444312)))

(declare-fun b!5582151 () Bool)

(assert (=> b!5582151 (= e!3444311 e!3444309)))

(assert (=> b!5582151 (= c!977570 ((_ is Union!15565) r!7292))))

(declare-fun bm!417589 () Bool)

(assert (=> bm!417589 (= call!417592 (validRegex!7301 (ite c!977571 (reg!15894 r!7292) (ite c!977570 (regTwo!31643 r!7292) (regTwo!31642 r!7292)))))))

(declare-fun d!1764630 () Bool)

(declare-fun res!2368888 () Bool)

(assert (=> d!1764630 (=> res!2368888 e!3444306)))

(assert (=> d!1764630 (= res!2368888 ((_ is ElementMatch!15565) r!7292))))

(assert (=> d!1764630 (= (validRegex!7301 r!7292) e!3444306)))

(declare-fun b!5582143 () Bool)

(assert (=> b!5582143 (= e!3444308 call!417594)))

(assert (= (and d!1764630 (not res!2368888)) b!5582148))

(assert (= (and b!5582148 c!977571) b!5582145))

(assert (= (and b!5582148 (not c!977571)) b!5582151))

(assert (= (and b!5582145 res!2368891) b!5582149))

(assert (= (and b!5582151 c!977570) b!5582146))

(assert (= (and b!5582151 (not c!977570)) b!5582150))

(assert (= (and b!5582146 res!2368887) b!5582147))

(assert (= (and b!5582150 (not res!2368890)) b!5582144))

(assert (= (and b!5582144 res!2368889) b!5582143))

(assert (= (or b!5582147 b!5582143) bm!417588))

(assert (= (or b!5582146 b!5582144) bm!417587))

(assert (= (or b!5582149 bm!417588) bm!417589))

(declare-fun m!6563936 () Bool)

(assert (=> bm!417587 m!6563936))

(declare-fun m!6563938 () Bool)

(assert (=> b!5582145 m!6563938))

(declare-fun m!6563940 () Bool)

(assert (=> bm!417589 m!6563940))

(assert (=> start!579778 d!1764630))

(declare-fun bs!1291298 () Bool)

(declare-fun d!1764632 () Bool)

(assert (= bs!1291298 (and d!1764632 d!1764474)))

(declare-fun lambda!299381 () Int)

(assert (=> bs!1291298 (= lambda!299381 lambda!299338)))

(declare-fun bs!1291299 () Bool)

(assert (= bs!1291299 (and d!1764632 d!1764498)))

(assert (=> bs!1291299 (= lambda!299381 lambda!299349)))

(declare-fun bs!1291300 () Bool)

(assert (= bs!1291300 (and d!1764632 d!1764592)))

(assert (=> bs!1291300 (= lambda!299381 lambda!299372)))

(declare-fun b!5582172 () Bool)

(declare-fun e!3444330 () Regex!15565)

(assert (=> b!5582172 (= e!3444330 EmptyLang!15565)))

(declare-fun b!5582173 () Bool)

(declare-fun e!3444326 () Bool)

(declare-fun lt!2253720 () Regex!15565)

(declare-fun isUnion!562 (Regex!15565) Bool)

(assert (=> b!5582173 (= e!3444326 (isUnion!562 lt!2253720))))

(declare-fun b!5582174 () Bool)

(declare-fun e!3444329 () Regex!15565)

(assert (=> b!5582174 (= e!3444329 (h!69318 (unfocusZipperList!993 zl!343)))))

(declare-fun b!5582175 () Bool)

(declare-fun e!3444327 () Bool)

(declare-fun isEmptyLang!1132 (Regex!15565) Bool)

(assert (=> b!5582175 (= e!3444327 (isEmptyLang!1132 lt!2253720))))

(declare-fun b!5582176 () Bool)

(assert (=> b!5582176 (= e!3444327 e!3444326)))

(declare-fun c!977583 () Bool)

(assert (=> b!5582176 (= c!977583 (isEmpty!34679 (tail!10999 (unfocusZipperList!993 zl!343))))))

(declare-fun b!5582177 () Bool)

(declare-fun e!3444328 () Bool)

(assert (=> b!5582177 (= e!3444328 (isEmpty!34679 (t!376267 (unfocusZipperList!993 zl!343))))))

(declare-fun b!5582178 () Bool)

(assert (=> b!5582178 (= e!3444329 e!3444330)))

(declare-fun c!977582 () Bool)

(assert (=> b!5582178 (= c!977582 ((_ is Cons!62870) (unfocusZipperList!993 zl!343)))))

(declare-fun e!3444325 () Bool)

(assert (=> d!1764632 e!3444325))

(declare-fun res!2368896 () Bool)

(assert (=> d!1764632 (=> (not res!2368896) (not e!3444325))))

(assert (=> d!1764632 (= res!2368896 (validRegex!7301 lt!2253720))))

(assert (=> d!1764632 (= lt!2253720 e!3444329)))

(declare-fun c!977581 () Bool)

(assert (=> d!1764632 (= c!977581 e!3444328)))

(declare-fun res!2368897 () Bool)

(assert (=> d!1764632 (=> (not res!2368897) (not e!3444328))))

(assert (=> d!1764632 (= res!2368897 ((_ is Cons!62870) (unfocusZipperList!993 zl!343)))))

(assert (=> d!1764632 (forall!14734 (unfocusZipperList!993 zl!343) lambda!299381)))

(assert (=> d!1764632 (= (generalisedUnion!1428 (unfocusZipperList!993 zl!343)) lt!2253720)))

(declare-fun b!5582179 () Bool)

(assert (=> b!5582179 (= e!3444325 e!3444327)))

(declare-fun c!977580 () Bool)

(assert (=> b!5582179 (= c!977580 (isEmpty!34679 (unfocusZipperList!993 zl!343)))))

(declare-fun b!5582180 () Bool)

(assert (=> b!5582180 (= e!3444330 (Union!15565 (h!69318 (unfocusZipperList!993 zl!343)) (generalisedUnion!1428 (t!376267 (unfocusZipperList!993 zl!343)))))))

(declare-fun b!5582181 () Bool)

(assert (=> b!5582181 (= e!3444326 (= lt!2253720 (head!11904 (unfocusZipperList!993 zl!343))))))

(assert (= (and d!1764632 res!2368897) b!5582177))

(assert (= (and d!1764632 c!977581) b!5582174))

(assert (= (and d!1764632 (not c!977581)) b!5582178))

(assert (= (and b!5582178 c!977582) b!5582180))

(assert (= (and b!5582178 (not c!977582)) b!5582172))

(assert (= (and d!1764632 res!2368896) b!5582179))

(assert (= (and b!5582179 c!977580) b!5582175))

(assert (= (and b!5582179 (not c!977580)) b!5582176))

(assert (= (and b!5582176 c!977583) b!5582181))

(assert (= (and b!5582176 (not c!977583)) b!5582173))

(assert (=> b!5582179 m!6563410))

(declare-fun m!6563942 () Bool)

(assert (=> b!5582179 m!6563942))

(declare-fun m!6563944 () Bool)

(assert (=> b!5582177 m!6563944))

(assert (=> b!5582176 m!6563410))

(declare-fun m!6563946 () Bool)

(assert (=> b!5582176 m!6563946))

(assert (=> b!5582176 m!6563946))

(declare-fun m!6563948 () Bool)

(assert (=> b!5582176 m!6563948))

(declare-fun m!6563950 () Bool)

(assert (=> b!5582180 m!6563950))

(assert (=> b!5582181 m!6563410))

(declare-fun m!6563952 () Bool)

(assert (=> b!5582181 m!6563952))

(declare-fun m!6563954 () Bool)

(assert (=> d!1764632 m!6563954))

(assert (=> d!1764632 m!6563410))

(declare-fun m!6563956 () Bool)

(assert (=> d!1764632 m!6563956))

(declare-fun m!6563958 () Bool)

(assert (=> b!5582175 m!6563958))

(declare-fun m!6563960 () Bool)

(assert (=> b!5582173 m!6563960))

(assert (=> b!5581445 d!1764632))

(declare-fun bs!1291301 () Bool)

(declare-fun d!1764634 () Bool)

(assert (= bs!1291301 (and d!1764634 d!1764474)))

(declare-fun lambda!299384 () Int)

(assert (=> bs!1291301 (= lambda!299384 lambda!299338)))

(declare-fun bs!1291302 () Bool)

(assert (= bs!1291302 (and d!1764634 d!1764498)))

(assert (=> bs!1291302 (= lambda!299384 lambda!299349)))

(declare-fun bs!1291303 () Bool)

(assert (= bs!1291303 (and d!1764634 d!1764592)))

(assert (=> bs!1291303 (= lambda!299384 lambda!299372)))

(declare-fun bs!1291304 () Bool)

(assert (= bs!1291304 (and d!1764634 d!1764632)))

(assert (=> bs!1291304 (= lambda!299384 lambda!299381)))

(declare-fun lt!2253723 () List!62994)

(assert (=> d!1764634 (forall!14734 lt!2253723 lambda!299384)))

(declare-fun e!3444333 () List!62994)

(assert (=> d!1764634 (= lt!2253723 e!3444333)))

(declare-fun c!977586 () Bool)

(assert (=> d!1764634 (= c!977586 ((_ is Cons!62872) zl!343))))

(assert (=> d!1764634 (= (unfocusZipperList!993 zl!343) lt!2253723)))

(declare-fun b!5582186 () Bool)

(assert (=> b!5582186 (= e!3444333 (Cons!62870 (generalisedConcat!1180 (exprs!5449 (h!69320 zl!343))) (unfocusZipperList!993 (t!376269 zl!343))))))

(declare-fun b!5582187 () Bool)

(assert (=> b!5582187 (= e!3444333 Nil!62870)))

(assert (= (and d!1764634 c!977586) b!5582186))

(assert (= (and d!1764634 (not c!977586)) b!5582187))

(declare-fun m!6563962 () Bool)

(assert (=> d!1764634 m!6563962))

(assert (=> b!5582186 m!6563456))

(declare-fun m!6563964 () Bool)

(assert (=> b!5582186 m!6563964))

(assert (=> b!5581445 d!1764634))

(assert (=> b!5581436 d!1764586))

(declare-fun d!1764636 () Bool)

(declare-fun c!977587 () Bool)

(assert (=> d!1764636 (= c!977587 (isEmpty!34683 (t!376268 s!2326)))))

(declare-fun e!3444334 () Bool)

(assert (=> d!1764636 (= (matchZipper!1703 lt!2253608 (t!376268 s!2326)) e!3444334)))

(declare-fun b!5582188 () Bool)

(assert (=> b!5582188 (= e!3444334 (nullableZipper!1562 lt!2253608))))

(declare-fun b!5582189 () Bool)

(assert (=> b!5582189 (= e!3444334 (matchZipper!1703 (derivationStepZipper!1664 lt!2253608 (head!11905 (t!376268 s!2326))) (tail!11000 (t!376268 s!2326))))))

(assert (= (and d!1764636 c!977587) b!5582188))

(assert (= (and d!1764636 (not c!977587)) b!5582189))

(assert (=> d!1764636 m!6563594))

(declare-fun m!6563966 () Bool)

(assert (=> b!5582188 m!6563966))

(assert (=> b!5582189 m!6563598))

(assert (=> b!5582189 m!6563598))

(declare-fun m!6563968 () Bool)

(assert (=> b!5582189 m!6563968))

(assert (=> b!5582189 m!6563602))

(assert (=> b!5582189 m!6563968))

(assert (=> b!5582189 m!6563602))

(declare-fun m!6563970 () Bool)

(assert (=> b!5582189 m!6563970))

(assert (=> b!5581436 d!1764636))

(declare-fun d!1764638 () Bool)

(declare-fun c!977588 () Bool)

(assert (=> d!1764638 (= c!977588 (isEmpty!34683 (t!376268 s!2326)))))

(declare-fun e!3444335 () Bool)

(assert (=> d!1764638 (= (matchZipper!1703 lt!2253621 (t!376268 s!2326)) e!3444335)))

(declare-fun b!5582190 () Bool)

(assert (=> b!5582190 (= e!3444335 (nullableZipper!1562 lt!2253621))))

(declare-fun b!5582191 () Bool)

(assert (=> b!5582191 (= e!3444335 (matchZipper!1703 (derivationStepZipper!1664 lt!2253621 (head!11905 (t!376268 s!2326))) (tail!11000 (t!376268 s!2326))))))

(assert (= (and d!1764638 c!977588) b!5582190))

(assert (= (and d!1764638 (not c!977588)) b!5582191))

(assert (=> d!1764638 m!6563594))

(declare-fun m!6563972 () Bool)

(assert (=> b!5582190 m!6563972))

(assert (=> b!5582191 m!6563598))

(assert (=> b!5582191 m!6563598))

(declare-fun m!6563974 () Bool)

(assert (=> b!5582191 m!6563974))

(assert (=> b!5582191 m!6563602))

(assert (=> b!5582191 m!6563974))

(assert (=> b!5582191 m!6563602))

(declare-fun m!6563976 () Bool)

(assert (=> b!5582191 m!6563976))

(assert (=> b!5581436 d!1764638))

(declare-fun e!3444336 () Bool)

(declare-fun d!1764640 () Bool)

(assert (=> d!1764640 (= (matchZipper!1703 ((_ map or) lt!2253621 lt!2253616) (t!376268 s!2326)) e!3444336)))

(declare-fun res!2368898 () Bool)

(assert (=> d!1764640 (=> res!2368898 e!3444336)))

(assert (=> d!1764640 (= res!2368898 (matchZipper!1703 lt!2253621 (t!376268 s!2326)))))

(declare-fun lt!2253724 () Unit!155634)

(assert (=> d!1764640 (= lt!2253724 (choose!42303 lt!2253621 lt!2253616 (t!376268 s!2326)))))

(assert (=> d!1764640 (= (lemmaZipperConcatMatchesSameAsBothZippers!590 lt!2253621 lt!2253616 (t!376268 s!2326)) lt!2253724)))

(declare-fun b!5582192 () Bool)

(assert (=> b!5582192 (= e!3444336 (matchZipper!1703 lt!2253616 (t!376268 s!2326)))))

(assert (= (and d!1764640 (not res!2368898)) b!5582192))

(declare-fun m!6563978 () Bool)

(assert (=> d!1764640 m!6563978))

(assert (=> d!1764640 m!6563382))

(declare-fun m!6563980 () Bool)

(assert (=> d!1764640 m!6563980))

(assert (=> b!5582192 m!6563428))

(assert (=> b!5581436 d!1764640))

(declare-fun b!5582204 () Bool)

(declare-fun e!3444339 () Bool)

(declare-fun tp!1544464 () Bool)

(declare-fun tp!1544466 () Bool)

(assert (=> b!5582204 (= e!3444339 (and tp!1544464 tp!1544466))))

(assert (=> b!5581446 (= tp!1544394 e!3444339)))

(declare-fun b!5582205 () Bool)

(declare-fun tp!1544468 () Bool)

(assert (=> b!5582205 (= e!3444339 tp!1544468)))

(declare-fun b!5582203 () Bool)

(assert (=> b!5582203 (= e!3444339 tp_is_empty!40383)))

(declare-fun b!5582206 () Bool)

(declare-fun tp!1544465 () Bool)

(declare-fun tp!1544467 () Bool)

(assert (=> b!5582206 (= e!3444339 (and tp!1544465 tp!1544467))))

(assert (= (and b!5581446 ((_ is ElementMatch!15565) (regOne!31642 r!7292))) b!5582203))

(assert (= (and b!5581446 ((_ is Concat!24410) (regOne!31642 r!7292))) b!5582204))

(assert (= (and b!5581446 ((_ is Star!15565) (regOne!31642 r!7292))) b!5582205))

(assert (= (and b!5581446 ((_ is Union!15565) (regOne!31642 r!7292))) b!5582206))

(declare-fun b!5582208 () Bool)

(declare-fun e!3444340 () Bool)

(declare-fun tp!1544469 () Bool)

(declare-fun tp!1544471 () Bool)

(assert (=> b!5582208 (= e!3444340 (and tp!1544469 tp!1544471))))

(assert (=> b!5581446 (= tp!1544393 e!3444340)))

(declare-fun b!5582209 () Bool)

(declare-fun tp!1544473 () Bool)

(assert (=> b!5582209 (= e!3444340 tp!1544473)))

(declare-fun b!5582207 () Bool)

(assert (=> b!5582207 (= e!3444340 tp_is_empty!40383)))

(declare-fun b!5582210 () Bool)

(declare-fun tp!1544470 () Bool)

(declare-fun tp!1544472 () Bool)

(assert (=> b!5582210 (= e!3444340 (and tp!1544470 tp!1544472))))

(assert (= (and b!5581446 ((_ is ElementMatch!15565) (regTwo!31642 r!7292))) b!5582207))

(assert (= (and b!5581446 ((_ is Concat!24410) (regTwo!31642 r!7292))) b!5582208))

(assert (= (and b!5581446 ((_ is Star!15565) (regTwo!31642 r!7292))) b!5582209))

(assert (= (and b!5581446 ((_ is Union!15565) (regTwo!31642 r!7292))) b!5582210))

(declare-fun b!5582212 () Bool)

(declare-fun e!3444341 () Bool)

(declare-fun tp!1544474 () Bool)

(declare-fun tp!1544476 () Bool)

(assert (=> b!5582212 (= e!3444341 (and tp!1544474 tp!1544476))))

(assert (=> b!5581437 (= tp!1544387 e!3444341)))

(declare-fun b!5582213 () Bool)

(declare-fun tp!1544478 () Bool)

(assert (=> b!5582213 (= e!3444341 tp!1544478)))

(declare-fun b!5582211 () Bool)

(assert (=> b!5582211 (= e!3444341 tp_is_empty!40383)))

(declare-fun b!5582214 () Bool)

(declare-fun tp!1544475 () Bool)

(declare-fun tp!1544477 () Bool)

(assert (=> b!5582214 (= e!3444341 (and tp!1544475 tp!1544477))))

(assert (= (and b!5581437 ((_ is ElementMatch!15565) (reg!15894 r!7292))) b!5582211))

(assert (= (and b!5581437 ((_ is Concat!24410) (reg!15894 r!7292))) b!5582212))

(assert (= (and b!5581437 ((_ is Star!15565) (reg!15894 r!7292))) b!5582213))

(assert (= (and b!5581437 ((_ is Union!15565) (reg!15894 r!7292))) b!5582214))

(declare-fun condSetEmpty!37159 () Bool)

(assert (=> setNonEmpty!37153 (= condSetEmpty!37159 (= setRest!37153 ((as const (Array Context!9898 Bool)) false)))))

(declare-fun setRes!37159 () Bool)

(assert (=> setNonEmpty!37153 (= tp!1544388 setRes!37159)))

(declare-fun setIsEmpty!37159 () Bool)

(assert (=> setIsEmpty!37159 setRes!37159))

(declare-fun e!3444344 () Bool)

(declare-fun setNonEmpty!37159 () Bool)

(declare-fun setElem!37159 () Context!9898)

(declare-fun tp!1544484 () Bool)

(assert (=> setNonEmpty!37159 (= setRes!37159 (and tp!1544484 (inv!82159 setElem!37159) e!3444344))))

(declare-fun setRest!37159 () (InoxSet Context!9898))

(assert (=> setNonEmpty!37159 (= setRest!37153 ((_ map or) (store ((as const (Array Context!9898 Bool)) false) setElem!37159 true) setRest!37159))))

(declare-fun b!5582219 () Bool)

(declare-fun tp!1544483 () Bool)

(assert (=> b!5582219 (= e!3444344 tp!1544483)))

(assert (= (and setNonEmpty!37153 condSetEmpty!37159) setIsEmpty!37159))

(assert (= (and setNonEmpty!37153 (not condSetEmpty!37159)) setNonEmpty!37159))

(assert (= setNonEmpty!37159 b!5582219))

(declare-fun m!6563982 () Bool)

(assert (=> setNonEmpty!37159 m!6563982))

(declare-fun b!5582224 () Bool)

(declare-fun e!3444347 () Bool)

(declare-fun tp!1544489 () Bool)

(declare-fun tp!1544490 () Bool)

(assert (=> b!5582224 (= e!3444347 (and tp!1544489 tp!1544490))))

(assert (=> b!5581453 (= tp!1544391 e!3444347)))

(assert (= (and b!5581453 ((_ is Cons!62870) (exprs!5449 setElem!37153))) b!5582224))

(declare-fun b!5582225 () Bool)

(declare-fun e!3444348 () Bool)

(declare-fun tp!1544491 () Bool)

(declare-fun tp!1544492 () Bool)

(assert (=> b!5582225 (= e!3444348 (and tp!1544491 tp!1544492))))

(assert (=> b!5581438 (= tp!1544390 e!3444348)))

(assert (= (and b!5581438 ((_ is Cons!62870) (exprs!5449 (h!69320 zl!343)))) b!5582225))

(declare-fun b!5582230 () Bool)

(declare-fun e!3444351 () Bool)

(declare-fun tp!1544495 () Bool)

(assert (=> b!5582230 (= e!3444351 (and tp_is_empty!40383 tp!1544495))))

(assert (=> b!5581465 (= tp!1544389 e!3444351)))

(assert (= (and b!5581465 ((_ is Cons!62871) (t!376268 s!2326))) b!5582230))

(declare-fun b!5582232 () Bool)

(declare-fun e!3444352 () Bool)

(declare-fun tp!1544496 () Bool)

(declare-fun tp!1544498 () Bool)

(assert (=> b!5582232 (= e!3444352 (and tp!1544496 tp!1544498))))

(assert (=> b!5581461 (= tp!1544392 e!3444352)))

(declare-fun b!5582233 () Bool)

(declare-fun tp!1544500 () Bool)

(assert (=> b!5582233 (= e!3444352 tp!1544500)))

(declare-fun b!5582231 () Bool)

(assert (=> b!5582231 (= e!3444352 tp_is_empty!40383)))

(declare-fun b!5582234 () Bool)

(declare-fun tp!1544497 () Bool)

(declare-fun tp!1544499 () Bool)

(assert (=> b!5582234 (= e!3444352 (and tp!1544497 tp!1544499))))

(assert (= (and b!5581461 ((_ is ElementMatch!15565) (regOne!31643 r!7292))) b!5582231))

(assert (= (and b!5581461 ((_ is Concat!24410) (regOne!31643 r!7292))) b!5582232))

(assert (= (and b!5581461 ((_ is Star!15565) (regOne!31643 r!7292))) b!5582233))

(assert (= (and b!5581461 ((_ is Union!15565) (regOne!31643 r!7292))) b!5582234))

(declare-fun b!5582236 () Bool)

(declare-fun e!3444353 () Bool)

(declare-fun tp!1544501 () Bool)

(declare-fun tp!1544503 () Bool)

(assert (=> b!5582236 (= e!3444353 (and tp!1544501 tp!1544503))))

(assert (=> b!5581461 (= tp!1544395 e!3444353)))

(declare-fun b!5582237 () Bool)

(declare-fun tp!1544505 () Bool)

(assert (=> b!5582237 (= e!3444353 tp!1544505)))

(declare-fun b!5582235 () Bool)

(assert (=> b!5582235 (= e!3444353 tp_is_empty!40383)))

(declare-fun b!5582238 () Bool)

(declare-fun tp!1544502 () Bool)

(declare-fun tp!1544504 () Bool)

(assert (=> b!5582238 (= e!3444353 (and tp!1544502 tp!1544504))))

(assert (= (and b!5581461 ((_ is ElementMatch!15565) (regTwo!31643 r!7292))) b!5582235))

(assert (= (and b!5581461 ((_ is Concat!24410) (regTwo!31643 r!7292))) b!5582236))

(assert (= (and b!5581461 ((_ is Star!15565) (regTwo!31643 r!7292))) b!5582237))

(assert (= (and b!5581461 ((_ is Union!15565) (regTwo!31643 r!7292))) b!5582238))

(declare-fun b!5582246 () Bool)

(declare-fun e!3444359 () Bool)

(declare-fun tp!1544510 () Bool)

(assert (=> b!5582246 (= e!3444359 tp!1544510)))

(declare-fun e!3444358 () Bool)

(declare-fun tp!1544511 () Bool)

(declare-fun b!5582245 () Bool)

(assert (=> b!5582245 (= e!3444358 (and (inv!82159 (h!69320 (t!376269 zl!343))) e!3444359 tp!1544511))))

(assert (=> b!5581451 (= tp!1544386 e!3444358)))

(assert (= b!5582245 b!5582246))

(assert (= (and b!5581451 ((_ is Cons!62872) (t!376269 zl!343))) b!5582245))

(declare-fun m!6563984 () Bool)

(assert (=> b!5582245 m!6563984))

(declare-fun b_lambda!211565 () Bool)

(assert (= b_lambda!211551 (or b!5581447 b_lambda!211565)))

(declare-fun bs!1291305 () Bool)

(declare-fun d!1764642 () Bool)

(assert (= bs!1291305 (and d!1764642 b!5581447)))

(assert (=> bs!1291305 (= (dynLambda!24589 lambda!299328 lt!2253630) (derivationStepZipperUp!833 lt!2253630 (h!69319 s!2326)))))

(assert (=> bs!1291305 m!6563400))

(assert (=> d!1764502 d!1764642))

(declare-fun b_lambda!211567 () Bool)

(assert (= b_lambda!211553 (or b!5581447 b_lambda!211567)))

(declare-fun bs!1291306 () Bool)

(declare-fun d!1764644 () Bool)

(assert (= bs!1291306 (and d!1764644 b!5581447)))

(assert (=> bs!1291306 (= (dynLambda!24589 lambda!299328 lt!2253632) (derivationStepZipperUp!833 lt!2253632 (h!69319 s!2326)))))

(assert (=> bs!1291306 m!6563404))

(assert (=> d!1764524 d!1764644))

(declare-fun b_lambda!211569 () Bool)

(assert (= b_lambda!211563 (or b!5581447 b_lambda!211569)))

(declare-fun bs!1291307 () Bool)

(declare-fun d!1764646 () Bool)

(assert (= bs!1291307 (and d!1764646 b!5581447)))

(assert (=> bs!1291307 (= (dynLambda!24589 lambda!299328 (h!69320 zl!343)) (derivationStepZipperUp!833 (h!69320 zl!343) (h!69319 s!2326)))))

(assert (=> bs!1291307 m!6563444))

(assert (=> d!1764608 d!1764646))

(check-sat (not b!5581831) (not b!5582204) (not bm!417573) (not d!1764578) (not b!5581906) (not b!5581578) (not b!5582015) (not b!5581702) (not bm!417587) (not d!1764618) (not bm!417579) (not b!5582003) (not b!5582208) (not b!5582190) (not d!1764570) (not b!5582234) (not b!5581697) (not d!1764526) (not b!5582188) (not b!5582236) (not d!1764584) (not d!1764586) (not b!5581625) (not d!1764616) (not b!5581701) (not b!5581833) (not d!1764612) (not b!5581696) (not b!5582089) (not bm!417539) (not b!5582213) (not d!1764636) (not d!1764582) (not d!1764524) (not bm!417514) (not bm!417571) (not b!5581926) (not b!5582145) (not b!5582191) (not b!5582176) (not b!5582225) (not b!5582179) (not bm!417515) (not d!1764622) (not b!5582210) (not b!5582180) (not b!5582054) (not d!1764474) (not b!5581571) (not d!1764542) (not b!5581838) (not b!5581927) (not b!5581907) (not b!5582206) (not b!5581572) (not b!5582118) (not b!5581570) (not b!5582232) (not b!5581624) (not bm!417554) (not b!5582230) (not b!5581836) (not d!1764632) (not b!5582246) (not bm!417575) (not b!5581905) (not d!1764634) (not b!5581589) (not d!1764502) (not b!5582017) (not b!5582192) (not bm!417556) (not b!5582009) (not d!1764604) (not d!1764484) (not b!5581577) (not b!5582098) (not b!5582008) (not bm!417558) (not b!5581835) (not b!5582013) (not b!5582237) (not bm!417577) (not d!1764574) (not b!5581574) (not b!5581994) (not b!5582177) (not b_lambda!211567) (not b!5582014) (not b!5582245) (not b!5582189) (not b_lambda!211569) (not d!1764544) tp_is_empty!40383 (not b!5582096) (not b!5582102) (not b!5582224) (not b!5582186) (not b!5582219) (not d!1764608) (not d!1764528) (not d!1764588) (not b!5582233) (not d!1764624) (not d!1764592) (not bm!417589) (not b!5582093) (not bs!1291307) (not bm!417565) (not b!5582053) (not b!5582175) (not b!5582214) (not b!5582205) (not b!5582099) (not b!5582107) (not b!5582209) (not b!5582238) (not setNonEmpty!37159) (not bm!417569) (not bm!417552) (not d!1764614) (not bs!1291305) (not b!5582212) (not d!1764490) (not d!1764640) (not d!1764552) (not b!5582181) (not d!1764638) (not bs!1291306) (not b!5582004) (not b!5582173) (not b_lambda!211565) (not b!5581908) (not b!5582016) (not bm!417564) (not d!1764520) (not b!5581904) (not b!5581569) (not bm!417559) (not bm!417568) (not b!5581830) (not d!1764572) (not d!1764498))
(check-sat)
