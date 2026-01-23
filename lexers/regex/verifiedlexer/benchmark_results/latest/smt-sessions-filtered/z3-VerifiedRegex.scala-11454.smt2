; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!619804 () Bool)

(assert start!619804)

(declare-fun b!6218730 () Bool)

(assert (=> b!6218730 true))

(assert (=> b!6218730 true))

(declare-fun lambda!339864 () Int)

(declare-fun lambda!339863 () Int)

(assert (=> b!6218730 (not (= lambda!339864 lambda!339863))))

(assert (=> b!6218730 true))

(assert (=> b!6218730 true))

(declare-fun b!6218742 () Bool)

(assert (=> b!6218742 true))

(declare-fun e!3785590 () Bool)

(declare-fun e!3785585 () Bool)

(assert (=> b!6218730 (= e!3785590 e!3785585)))

(declare-fun res!2570462 () Bool)

(assert (=> b!6218730 (=> res!2570462 e!3785585)))

(declare-datatypes ((C!32580 0))(
  ( (C!32581 (val!25992 Int)) )
))
(declare-datatypes ((List!64764 0))(
  ( (Nil!64640) (Cons!64640 (h!71088 C!32580) (t!378294 List!64764)) )
))
(declare-fun s!2326 () List!64764)

(declare-fun lt!2344688 () Bool)

(declare-fun lt!2344669 () Bool)

(get-info :version)

(assert (=> b!6218730 (= res!2570462 (or (not (= lt!2344669 lt!2344688)) ((_ is Nil!64640) s!2326)))))

(declare-fun Exists!3225 (Int) Bool)

(assert (=> b!6218730 (= (Exists!3225 lambda!339863) (Exists!3225 lambda!339864))))

(declare-datatypes ((Unit!157951 0))(
  ( (Unit!157952) )
))
(declare-fun lt!2344677 () Unit!157951)

(declare-datatypes ((Regex!16155 0))(
  ( (ElementMatch!16155 (c!1123433 C!32580)) (Concat!25000 (regOne!32822 Regex!16155) (regTwo!32822 Regex!16155)) (EmptyExpr!16155) (Star!16155 (reg!16484 Regex!16155)) (EmptyLang!16155) (Union!16155 (regOne!32823 Regex!16155) (regTwo!32823 Regex!16155)) )
))
(declare-fun r!7292 () Regex!16155)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1762 (Regex!16155 Regex!16155 List!64764) Unit!157951)

(assert (=> b!6218730 (= lt!2344677 (lemmaExistCutMatchRandMatchRSpecEquivalent!1762 (regOne!32822 r!7292) (regTwo!32822 r!7292) s!2326))))

(assert (=> b!6218730 (= lt!2344688 (Exists!3225 lambda!339863))))

(declare-datatypes ((tuple2!66268 0))(
  ( (tuple2!66269 (_1!36437 List!64764) (_2!36437 List!64764)) )
))
(declare-datatypes ((Option!16046 0))(
  ( (None!16045) (Some!16045 (v!52191 tuple2!66268)) )
))
(declare-fun isDefined!12749 (Option!16046) Bool)

(declare-fun findConcatSeparation!2460 (Regex!16155 Regex!16155 List!64764 List!64764 List!64764) Option!16046)

(assert (=> b!6218730 (= lt!2344688 (isDefined!12749 (findConcatSeparation!2460 (regOne!32822 r!7292) (regTwo!32822 r!7292) Nil!64640 s!2326 s!2326)))))

(declare-fun lt!2344667 () Unit!157951)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2224 (Regex!16155 Regex!16155 List!64764) Unit!157951)

(assert (=> b!6218730 (= lt!2344667 (lemmaFindConcatSeparationEquivalentToExists!2224 (regOne!32822 r!7292) (regTwo!32822 r!7292) s!2326))))

(declare-fun b!6218731 () Bool)

(declare-fun e!3785589 () Bool)

(assert (=> b!6218731 (= e!3785589 (not e!3785590))))

(declare-fun res!2570479 () Bool)

(assert (=> b!6218731 (=> res!2570479 e!3785590)))

(declare-datatypes ((List!64765 0))(
  ( (Nil!64641) (Cons!64641 (h!71089 Regex!16155) (t!378295 List!64765)) )
))
(declare-datatypes ((Context!11078 0))(
  ( (Context!11079 (exprs!6039 List!64765)) )
))
(declare-datatypes ((List!64766 0))(
  ( (Nil!64642) (Cons!64642 (h!71090 Context!11078) (t!378296 List!64766)) )
))
(declare-fun zl!343 () List!64766)

(assert (=> b!6218731 (= res!2570479 (not ((_ is Cons!64642) zl!343)))))

(declare-fun matchRSpec!3256 (Regex!16155 List!64764) Bool)

(assert (=> b!6218731 (= lt!2344669 (matchRSpec!3256 r!7292 s!2326))))

(declare-fun matchR!8338 (Regex!16155 List!64764) Bool)

(assert (=> b!6218731 (= lt!2344669 (matchR!8338 r!7292 s!2326))))

(declare-fun lt!2344680 () Unit!157951)

(declare-fun mainMatchTheorem!3256 (Regex!16155 List!64764) Unit!157951)

(assert (=> b!6218731 (= lt!2344680 (mainMatchTheorem!3256 r!7292 s!2326))))

(declare-fun b!6218732 () Bool)

(declare-fun e!3785582 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2344674 () (InoxSet Context!11078))

(declare-fun matchZipper!2167 ((InoxSet Context!11078) List!64764) Bool)

(assert (=> b!6218732 (= e!3785582 (matchZipper!2167 lt!2344674 (t!378294 s!2326)))))

(declare-fun b!6218733 () Bool)

(declare-fun res!2570470 () Bool)

(assert (=> b!6218733 (=> res!2570470 e!3785590)))

(assert (=> b!6218733 (= res!2570470 (or ((_ is EmptyExpr!16155) r!7292) ((_ is EmptyLang!16155) r!7292) ((_ is ElementMatch!16155) r!7292) ((_ is Union!16155) r!7292) (not ((_ is Concat!25000) r!7292))))))

(declare-fun b!6218734 () Bool)

(declare-fun res!2570477 () Bool)

(assert (=> b!6218734 (=> res!2570477 e!3785585)))

(declare-fun isEmpty!36646 (List!64765) Bool)

(assert (=> b!6218734 (= res!2570477 (isEmpty!36646 (t!378295 (exprs!6039 (h!71090 zl!343)))))))

(declare-fun b!6218735 () Bool)

(declare-fun e!3785580 () Bool)

(declare-fun tp!1734934 () Bool)

(assert (=> b!6218735 (= e!3785580 tp!1734934)))

(declare-fun b!6218736 () Bool)

(declare-fun res!2570471 () Bool)

(assert (=> b!6218736 (=> res!2570471 e!3785590)))

(declare-fun isEmpty!36647 (List!64766) Bool)

(assert (=> b!6218736 (= res!2570471 (not (isEmpty!36647 (t!378296 zl!343))))))

(declare-fun res!2570469 () Bool)

(assert (=> start!619804 (=> (not res!2570469) (not e!3785589))))

(declare-fun validRegex!7891 (Regex!16155) Bool)

(assert (=> start!619804 (= res!2570469 (validRegex!7891 r!7292))))

(assert (=> start!619804 e!3785589))

(declare-fun e!3785584 () Bool)

(assert (=> start!619804 e!3785584))

(declare-fun condSetEmpty!42232 () Bool)

(declare-fun z!1189 () (InoxSet Context!11078))

(assert (=> start!619804 (= condSetEmpty!42232 (= z!1189 ((as const (Array Context!11078 Bool)) false)))))

(declare-fun setRes!42232 () Bool)

(assert (=> start!619804 setRes!42232))

(declare-fun e!3785577 () Bool)

(assert (=> start!619804 e!3785577))

(declare-fun e!3785586 () Bool)

(assert (=> start!619804 e!3785586))

(declare-fun b!6218737 () Bool)

(declare-fun e!3785587 () Bool)

(declare-fun e!3785578 () Bool)

(assert (=> b!6218737 (= e!3785587 e!3785578)))

(declare-fun res!2570465 () Bool)

(assert (=> b!6218737 (=> res!2570465 e!3785578)))

(declare-fun e!3785579 () Bool)

(assert (=> b!6218737 (= res!2570465 e!3785579)))

(declare-fun res!2570480 () Bool)

(assert (=> b!6218737 (=> (not res!2570480) (not e!3785579))))

(declare-fun lt!2344671 () (InoxSet Context!11078))

(declare-fun lt!2344679 () Bool)

(assert (=> b!6218737 (= res!2570480 (not (= (matchZipper!2167 lt!2344671 (t!378294 s!2326)) lt!2344679)))))

(declare-fun lt!2344683 () (InoxSet Context!11078))

(assert (=> b!6218737 (= (matchZipper!2167 lt!2344683 (t!378294 s!2326)) e!3785582)))

(declare-fun res!2570467 () Bool)

(assert (=> b!6218737 (=> res!2570467 e!3785582)))

(assert (=> b!6218737 (= res!2570467 lt!2344679)))

(declare-fun lt!2344670 () (InoxSet Context!11078))

(assert (=> b!6218737 (= lt!2344679 (matchZipper!2167 lt!2344670 (t!378294 s!2326)))))

(declare-fun lt!2344668 () Unit!157951)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!986 ((InoxSet Context!11078) (InoxSet Context!11078) List!64764) Unit!157951)

(assert (=> b!6218737 (= lt!2344668 (lemmaZipperConcatMatchesSameAsBothZippers!986 lt!2344670 lt!2344674 (t!378294 s!2326)))))

(declare-fun b!6218738 () Bool)

(declare-fun e!3785583 () Bool)

(assert (=> b!6218738 (= e!3785583 e!3785587)))

(declare-fun res!2570473 () Bool)

(assert (=> b!6218738 (=> res!2570473 e!3785587)))

(assert (=> b!6218738 (= res!2570473 (not (= lt!2344671 lt!2344683)))))

(assert (=> b!6218738 (= lt!2344683 ((_ map or) lt!2344670 lt!2344674))))

(declare-fun lt!2344673 () Context!11078)

(declare-fun derivationStepZipperDown!1403 (Regex!16155 Context!11078 C!32580) (InoxSet Context!11078))

(assert (=> b!6218738 (= lt!2344674 (derivationStepZipperDown!1403 (regTwo!32822 (regOne!32822 r!7292)) lt!2344673 (h!71088 s!2326)))))

(declare-fun lt!2344676 () Context!11078)

(assert (=> b!6218738 (= lt!2344670 (derivationStepZipperDown!1403 (regOne!32822 (regOne!32822 r!7292)) lt!2344676 (h!71088 s!2326)))))

(declare-fun lt!2344666 () List!64765)

(assert (=> b!6218738 (= lt!2344676 (Context!11079 lt!2344666))))

(assert (=> b!6218738 (= lt!2344666 (Cons!64641 (regTwo!32822 (regOne!32822 r!7292)) (t!378295 (exprs!6039 (h!71090 zl!343)))))))

(declare-fun b!6218739 () Bool)

(declare-fun res!2570472 () Bool)

(assert (=> b!6218739 (=> res!2570472 e!3785590)))

(declare-fun generalisedConcat!1752 (List!64765) Regex!16155)

(assert (=> b!6218739 (= res!2570472 (not (= r!7292 (generalisedConcat!1752 (exprs!6039 (h!71090 zl!343))))))))

(declare-fun b!6218740 () Bool)

(declare-fun e!3785588 () Unit!157951)

(declare-fun Unit!157953 () Unit!157951)

(assert (=> b!6218740 (= e!3785588 Unit!157953)))

(declare-fun b!6218741 () Bool)

(declare-fun e!3785591 () Bool)

(declare-fun tp!1734941 () Bool)

(assert (=> b!6218741 (= e!3785591 tp!1734941)))

(assert (=> b!6218742 (= e!3785585 e!3785583)))

(declare-fun res!2570468 () Bool)

(assert (=> b!6218742 (=> res!2570468 e!3785583)))

(assert (=> b!6218742 (= res!2570468 (or (and ((_ is ElementMatch!16155) (regOne!32822 r!7292)) (= (c!1123433 (regOne!32822 r!7292)) (h!71088 s!2326))) ((_ is Union!16155) (regOne!32822 r!7292)) (not ((_ is Concat!25000) (regOne!32822 r!7292)))))))

(declare-fun lt!2344686 () Unit!157951)

(assert (=> b!6218742 (= lt!2344686 e!3785588)))

(declare-fun c!1123432 () Bool)

(declare-fun nullable!6148 (Regex!16155) Bool)

(assert (=> b!6218742 (= c!1123432 (nullable!6148 (h!71089 (exprs!6039 (h!71090 zl!343)))))))

(declare-fun lambda!339865 () Int)

(declare-fun flatMap!1660 ((InoxSet Context!11078) Int) (InoxSet Context!11078))

(declare-fun derivationStepZipperUp!1329 (Context!11078 C!32580) (InoxSet Context!11078))

(assert (=> b!6218742 (= (flatMap!1660 z!1189 lambda!339865) (derivationStepZipperUp!1329 (h!71090 zl!343) (h!71088 s!2326)))))

(declare-fun lt!2344684 () Unit!157951)

(declare-fun lemmaFlatMapOnSingletonSet!1186 ((InoxSet Context!11078) Context!11078 Int) Unit!157951)

(assert (=> b!6218742 (= lt!2344684 (lemmaFlatMapOnSingletonSet!1186 z!1189 (h!71090 zl!343) lambda!339865))))

(declare-fun lt!2344678 () (InoxSet Context!11078))

(assert (=> b!6218742 (= lt!2344678 (derivationStepZipperUp!1329 lt!2344673 (h!71088 s!2326)))))

(assert (=> b!6218742 (= lt!2344671 (derivationStepZipperDown!1403 (h!71089 (exprs!6039 (h!71090 zl!343))) lt!2344673 (h!71088 s!2326)))))

(assert (=> b!6218742 (= lt!2344673 (Context!11079 (t!378295 (exprs!6039 (h!71090 zl!343)))))))

(declare-fun lt!2344675 () (InoxSet Context!11078))

(assert (=> b!6218742 (= lt!2344675 (derivationStepZipperUp!1329 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343))))) (h!71088 s!2326)))))

(declare-fun b!6218743 () Bool)

(declare-fun e!3785581 () Bool)

(assert (=> b!6218743 (= e!3785581 (matchZipper!2167 lt!2344678 (t!378294 s!2326)))))

(declare-fun b!6218744 () Bool)

(declare-fun Unit!157954 () Unit!157951)

(assert (=> b!6218744 (= e!3785588 Unit!157954)))

(declare-fun lt!2344685 () Unit!157951)

(assert (=> b!6218744 (= lt!2344685 (lemmaZipperConcatMatchesSameAsBothZippers!986 lt!2344671 lt!2344678 (t!378294 s!2326)))))

(declare-fun res!2570475 () Bool)

(assert (=> b!6218744 (= res!2570475 (matchZipper!2167 lt!2344671 (t!378294 s!2326)))))

(assert (=> b!6218744 (=> res!2570475 e!3785581)))

(assert (=> b!6218744 (= (matchZipper!2167 ((_ map or) lt!2344671 lt!2344678) (t!378294 s!2326)) e!3785581)))

(declare-fun b!6218745 () Bool)

(declare-fun tp_is_empty!41563 () Bool)

(assert (=> b!6218745 (= e!3785584 tp_is_empty!41563)))

(declare-fun b!6218746 () Bool)

(declare-fun tp!1734937 () Bool)

(declare-fun tp!1734935 () Bool)

(assert (=> b!6218746 (= e!3785584 (and tp!1734937 tp!1734935))))

(declare-fun b!6218747 () Bool)

(declare-fun tp!1734933 () Bool)

(assert (=> b!6218747 (= e!3785584 tp!1734933)))

(declare-fun b!6218748 () Bool)

(declare-fun res!2570476 () Bool)

(assert (=> b!6218748 (=> res!2570476 e!3785590)))

(assert (=> b!6218748 (= res!2570476 (not ((_ is Cons!64641) (exprs!6039 (h!71090 zl!343)))))))

(declare-fun b!6218749 () Bool)

(declare-fun res!2570464 () Bool)

(assert (=> b!6218749 (=> (not res!2570464) (not e!3785589))))

(declare-fun toList!9939 ((InoxSet Context!11078)) List!64766)

(assert (=> b!6218749 (= res!2570464 (= (toList!9939 z!1189) zl!343))))

(declare-fun b!6218750 () Bool)

(declare-fun tp!1734938 () Bool)

(declare-fun inv!83634 (Context!11078) Bool)

(assert (=> b!6218750 (= e!3785577 (and (inv!83634 (h!71090 zl!343)) e!3785591 tp!1734938))))

(declare-fun b!6218751 () Bool)

(declare-fun tp!1734940 () Bool)

(assert (=> b!6218751 (= e!3785586 (and tp_is_empty!41563 tp!1734940))))

(declare-fun b!6218752 () Bool)

(declare-fun e!3785576 () Bool)

(assert (=> b!6218752 (= e!3785578 e!3785576)))

(declare-fun res!2570474 () Bool)

(assert (=> b!6218752 (=> res!2570474 e!3785576)))

(declare-fun lt!2344681 () (InoxSet Context!11078))

(declare-fun derivationStepZipper!2121 ((InoxSet Context!11078) C!32580) (InoxSet Context!11078))

(assert (=> b!6218752 (= res!2570474 (not (= (derivationStepZipper!2121 lt!2344681 (h!71088 s!2326)) ((_ map or) lt!2344670 (derivationStepZipperUp!1329 lt!2344676 (h!71088 s!2326))))))))

(declare-fun lt!2344687 () Context!11078)

(assert (=> b!6218752 (= (flatMap!1660 lt!2344681 lambda!339865) (derivationStepZipperUp!1329 lt!2344687 (h!71088 s!2326)))))

(declare-fun lt!2344682 () Unit!157951)

(assert (=> b!6218752 (= lt!2344682 (lemmaFlatMapOnSingletonSet!1186 lt!2344681 lt!2344687 lambda!339865))))

(declare-fun lt!2344672 () (InoxSet Context!11078))

(assert (=> b!6218752 (= lt!2344672 (derivationStepZipperUp!1329 lt!2344687 (h!71088 s!2326)))))

(assert (=> b!6218752 (= lt!2344681 (store ((as const (Array Context!11078 Bool)) false) lt!2344687 true))))

(assert (=> b!6218752 (= lt!2344687 (Context!11079 (Cons!64641 (regOne!32822 (regOne!32822 r!7292)) lt!2344666)))))

(declare-fun b!6218753 () Bool)

(declare-fun res!2570463 () Bool)

(assert (=> b!6218753 (=> (not res!2570463) (not e!3785589))))

(declare-fun unfocusZipper!1897 (List!64766) Regex!16155)

(assert (=> b!6218753 (= res!2570463 (= r!7292 (unfocusZipper!1897 zl!343)))))

(declare-fun b!6218754 () Bool)

(assert (=> b!6218754 (= e!3785576 (inv!83634 lt!2344676))))

(declare-fun setIsEmpty!42232 () Bool)

(assert (=> setIsEmpty!42232 setRes!42232))

(declare-fun b!6218755 () Bool)

(declare-fun res!2570478 () Bool)

(assert (=> b!6218755 (=> res!2570478 e!3785583)))

(assert (=> b!6218755 (= res!2570478 (not (nullable!6148 (regOne!32822 (regOne!32822 r!7292)))))))

(declare-fun b!6218756 () Bool)

(declare-fun res!2570466 () Bool)

(assert (=> b!6218756 (=> res!2570466 e!3785590)))

(declare-fun generalisedUnion!1999 (List!64765) Regex!16155)

(declare-fun unfocusZipperList!1576 (List!64766) List!64765)

(assert (=> b!6218756 (= res!2570466 (not (= r!7292 (generalisedUnion!1999 (unfocusZipperList!1576 zl!343)))))))

(declare-fun b!6218757 () Bool)

(assert (=> b!6218757 (= e!3785579 (not (matchZipper!2167 lt!2344674 (t!378294 s!2326))))))

(declare-fun setElem!42232 () Context!11078)

(declare-fun tp!1734936 () Bool)

(declare-fun setNonEmpty!42232 () Bool)

(assert (=> setNonEmpty!42232 (= setRes!42232 (and tp!1734936 (inv!83634 setElem!42232) e!3785580))))

(declare-fun setRest!42232 () (InoxSet Context!11078))

(assert (=> setNonEmpty!42232 (= z!1189 ((_ map or) (store ((as const (Array Context!11078 Bool)) false) setElem!42232 true) setRest!42232))))

(declare-fun b!6218758 () Bool)

(declare-fun tp!1734942 () Bool)

(declare-fun tp!1734939 () Bool)

(assert (=> b!6218758 (= e!3785584 (and tp!1734942 tp!1734939))))

(assert (= (and start!619804 res!2570469) b!6218749))

(assert (= (and b!6218749 res!2570464) b!6218753))

(assert (= (and b!6218753 res!2570463) b!6218731))

(assert (= (and b!6218731 (not res!2570479)) b!6218736))

(assert (= (and b!6218736 (not res!2570471)) b!6218739))

(assert (= (and b!6218739 (not res!2570472)) b!6218748))

(assert (= (and b!6218748 (not res!2570476)) b!6218756))

(assert (= (and b!6218756 (not res!2570466)) b!6218733))

(assert (= (and b!6218733 (not res!2570470)) b!6218730))

(assert (= (and b!6218730 (not res!2570462)) b!6218734))

(assert (= (and b!6218734 (not res!2570477)) b!6218742))

(assert (= (and b!6218742 c!1123432) b!6218744))

(assert (= (and b!6218742 (not c!1123432)) b!6218740))

(assert (= (and b!6218744 (not res!2570475)) b!6218743))

(assert (= (and b!6218742 (not res!2570468)) b!6218755))

(assert (= (and b!6218755 (not res!2570478)) b!6218738))

(assert (= (and b!6218738 (not res!2570473)) b!6218737))

(assert (= (and b!6218737 (not res!2570467)) b!6218732))

(assert (= (and b!6218737 res!2570480) b!6218757))

(assert (= (and b!6218737 (not res!2570465)) b!6218752))

(assert (= (and b!6218752 (not res!2570474)) b!6218754))

(assert (= (and start!619804 ((_ is ElementMatch!16155) r!7292)) b!6218745))

(assert (= (and start!619804 ((_ is Concat!25000) r!7292)) b!6218746))

(assert (= (and start!619804 ((_ is Star!16155) r!7292)) b!6218747))

(assert (= (and start!619804 ((_ is Union!16155) r!7292)) b!6218758))

(assert (= (and start!619804 condSetEmpty!42232) setIsEmpty!42232))

(assert (= (and start!619804 (not condSetEmpty!42232)) setNonEmpty!42232))

(assert (= setNonEmpty!42232 b!6218735))

(assert (= b!6218750 b!6218741))

(assert (= (and start!619804 ((_ is Cons!64642) zl!343)) b!6218750))

(assert (= (and start!619804 ((_ is Cons!64640) s!2326)) b!6218751))

(declare-fun m!7046962 () Bool)

(assert (=> b!6218731 m!7046962))

(declare-fun m!7046964 () Bool)

(assert (=> b!6218731 m!7046964))

(declare-fun m!7046966 () Bool)

(assert (=> b!6218731 m!7046966))

(declare-fun m!7046968 () Bool)

(assert (=> b!6218749 m!7046968))

(declare-fun m!7046970 () Bool)

(assert (=> start!619804 m!7046970))

(declare-fun m!7046972 () Bool)

(assert (=> b!6218732 m!7046972))

(declare-fun m!7046974 () Bool)

(assert (=> b!6218755 m!7046974))

(declare-fun m!7046976 () Bool)

(assert (=> b!6218750 m!7046976))

(declare-fun m!7046978 () Bool)

(assert (=> b!6218739 m!7046978))

(declare-fun m!7046980 () Bool)

(assert (=> setNonEmpty!42232 m!7046980))

(declare-fun m!7046982 () Bool)

(assert (=> b!6218736 m!7046982))

(declare-fun m!7046984 () Bool)

(assert (=> b!6218730 m!7046984))

(declare-fun m!7046986 () Bool)

(assert (=> b!6218730 m!7046986))

(declare-fun m!7046988 () Bool)

(assert (=> b!6218730 m!7046988))

(assert (=> b!6218730 m!7046984))

(declare-fun m!7046990 () Bool)

(assert (=> b!6218730 m!7046990))

(declare-fun m!7046992 () Bool)

(assert (=> b!6218730 m!7046992))

(declare-fun m!7046994 () Bool)

(assert (=> b!6218730 m!7046994))

(assert (=> b!6218730 m!7046986))

(declare-fun m!7046996 () Bool)

(assert (=> b!6218754 m!7046996))

(declare-fun m!7046998 () Bool)

(assert (=> b!6218742 m!7046998))

(declare-fun m!7047000 () Bool)

(assert (=> b!6218742 m!7047000))

(declare-fun m!7047002 () Bool)

(assert (=> b!6218742 m!7047002))

(declare-fun m!7047004 () Bool)

(assert (=> b!6218742 m!7047004))

(declare-fun m!7047006 () Bool)

(assert (=> b!6218742 m!7047006))

(declare-fun m!7047008 () Bool)

(assert (=> b!6218742 m!7047008))

(declare-fun m!7047010 () Bool)

(assert (=> b!6218742 m!7047010))

(declare-fun m!7047012 () Bool)

(assert (=> b!6218756 m!7047012))

(assert (=> b!6218756 m!7047012))

(declare-fun m!7047014 () Bool)

(assert (=> b!6218756 m!7047014))

(declare-fun m!7047016 () Bool)

(assert (=> b!6218737 m!7047016))

(declare-fun m!7047018 () Bool)

(assert (=> b!6218737 m!7047018))

(declare-fun m!7047020 () Bool)

(assert (=> b!6218737 m!7047020))

(declare-fun m!7047022 () Bool)

(assert (=> b!6218737 m!7047022))

(declare-fun m!7047024 () Bool)

(assert (=> b!6218744 m!7047024))

(assert (=> b!6218744 m!7047016))

(declare-fun m!7047026 () Bool)

(assert (=> b!6218744 m!7047026))

(declare-fun m!7047028 () Bool)

(assert (=> b!6218753 m!7047028))

(declare-fun m!7047030 () Bool)

(assert (=> b!6218752 m!7047030))

(declare-fun m!7047032 () Bool)

(assert (=> b!6218752 m!7047032))

(declare-fun m!7047034 () Bool)

(assert (=> b!6218752 m!7047034))

(declare-fun m!7047036 () Bool)

(assert (=> b!6218752 m!7047036))

(declare-fun m!7047038 () Bool)

(assert (=> b!6218752 m!7047038))

(declare-fun m!7047040 () Bool)

(assert (=> b!6218752 m!7047040))

(declare-fun m!7047042 () Bool)

(assert (=> b!6218743 m!7047042))

(assert (=> b!6218757 m!7046972))

(declare-fun m!7047044 () Bool)

(assert (=> b!6218734 m!7047044))

(declare-fun m!7047046 () Bool)

(assert (=> b!6218738 m!7047046))

(declare-fun m!7047048 () Bool)

(assert (=> b!6218738 m!7047048))

(check-sat (not b!6218757) (not b!6218741) (not b!6218735) (not b!6218747) (not b!6218749) (not b!6218755) (not b!6218742) (not b!6218739) (not setNonEmpty!42232) (not b!6218754) (not b!6218752) (not start!619804) (not b!6218736) (not b!6218734) (not b!6218758) (not b!6218746) (not b!6218751) (not b!6218731) (not b!6218737) (not b!6218750) (not b!6218753) (not b!6218730) (not b!6218744) (not b!6218732) (not b!6218756) tp_is_empty!41563 (not b!6218738) (not b!6218743))
(check-sat)
(get-model)

(declare-fun d!1949443 () Bool)

(assert (=> d!1949443 (= (isEmpty!36646 (t!378295 (exprs!6039 (h!71090 zl!343)))) ((_ is Nil!64641) (t!378295 (exprs!6039 (h!71090 zl!343)))))))

(assert (=> b!6218734 d!1949443))

(declare-fun e!3785810 () Bool)

(declare-fun d!1949445 () Bool)

(assert (=> d!1949445 (= (matchZipper!2167 ((_ map or) lt!2344671 lt!2344678) (t!378294 s!2326)) e!3785810)))

(declare-fun res!2570599 () Bool)

(assert (=> d!1949445 (=> res!2570599 e!3785810)))

(assert (=> d!1949445 (= res!2570599 (matchZipper!2167 lt!2344671 (t!378294 s!2326)))))

(declare-fun lt!2344735 () Unit!157951)

(declare-fun choose!46211 ((InoxSet Context!11078) (InoxSet Context!11078) List!64764) Unit!157951)

(assert (=> d!1949445 (= lt!2344735 (choose!46211 lt!2344671 lt!2344678 (t!378294 s!2326)))))

(assert (=> d!1949445 (= (lemmaZipperConcatMatchesSameAsBothZippers!986 lt!2344671 lt!2344678 (t!378294 s!2326)) lt!2344735)))

(declare-fun b!6219153 () Bool)

(assert (=> b!6219153 (= e!3785810 (matchZipper!2167 lt!2344678 (t!378294 s!2326)))))

(assert (= (and d!1949445 (not res!2570599)) b!6219153))

(assert (=> d!1949445 m!7047026))

(assert (=> d!1949445 m!7047016))

(declare-fun m!7047302 () Bool)

(assert (=> d!1949445 m!7047302))

(assert (=> b!6219153 m!7047042))

(assert (=> b!6218744 d!1949445))

(declare-fun d!1949447 () Bool)

(declare-fun c!1123545 () Bool)

(declare-fun isEmpty!36649 (List!64764) Bool)

(assert (=> d!1949447 (= c!1123545 (isEmpty!36649 (t!378294 s!2326)))))

(declare-fun e!3785813 () Bool)

(assert (=> d!1949447 (= (matchZipper!2167 lt!2344671 (t!378294 s!2326)) e!3785813)))

(declare-fun b!6219158 () Bool)

(declare-fun nullableZipper!1929 ((InoxSet Context!11078)) Bool)

(assert (=> b!6219158 (= e!3785813 (nullableZipper!1929 lt!2344671))))

(declare-fun b!6219159 () Bool)

(declare-fun head!12818 (List!64764) C!32580)

(declare-fun tail!11903 (List!64764) List!64764)

(assert (=> b!6219159 (= e!3785813 (matchZipper!2167 (derivationStepZipper!2121 lt!2344671 (head!12818 (t!378294 s!2326))) (tail!11903 (t!378294 s!2326))))))

(assert (= (and d!1949447 c!1123545) b!6219158))

(assert (= (and d!1949447 (not c!1123545)) b!6219159))

(declare-fun m!7047304 () Bool)

(assert (=> d!1949447 m!7047304))

(declare-fun m!7047306 () Bool)

(assert (=> b!6219158 m!7047306))

(declare-fun m!7047308 () Bool)

(assert (=> b!6219159 m!7047308))

(assert (=> b!6219159 m!7047308))

(declare-fun m!7047310 () Bool)

(assert (=> b!6219159 m!7047310))

(declare-fun m!7047312 () Bool)

(assert (=> b!6219159 m!7047312))

(assert (=> b!6219159 m!7047310))

(assert (=> b!6219159 m!7047312))

(declare-fun m!7047314 () Bool)

(assert (=> b!6219159 m!7047314))

(assert (=> b!6218744 d!1949447))

(declare-fun d!1949449 () Bool)

(declare-fun c!1123546 () Bool)

(assert (=> d!1949449 (= c!1123546 (isEmpty!36649 (t!378294 s!2326)))))

(declare-fun e!3785814 () Bool)

(assert (=> d!1949449 (= (matchZipper!2167 ((_ map or) lt!2344671 lt!2344678) (t!378294 s!2326)) e!3785814)))

(declare-fun b!6219160 () Bool)

(assert (=> b!6219160 (= e!3785814 (nullableZipper!1929 ((_ map or) lt!2344671 lt!2344678)))))

(declare-fun b!6219161 () Bool)

(assert (=> b!6219161 (= e!3785814 (matchZipper!2167 (derivationStepZipper!2121 ((_ map or) lt!2344671 lt!2344678) (head!12818 (t!378294 s!2326))) (tail!11903 (t!378294 s!2326))))))

(assert (= (and d!1949449 c!1123546) b!6219160))

(assert (= (and d!1949449 (not c!1123546)) b!6219161))

(assert (=> d!1949449 m!7047304))

(declare-fun m!7047316 () Bool)

(assert (=> b!6219160 m!7047316))

(assert (=> b!6219161 m!7047308))

(assert (=> b!6219161 m!7047308))

(declare-fun m!7047318 () Bool)

(assert (=> b!6219161 m!7047318))

(assert (=> b!6219161 m!7047312))

(assert (=> b!6219161 m!7047318))

(assert (=> b!6219161 m!7047312))

(declare-fun m!7047320 () Bool)

(assert (=> b!6219161 m!7047320))

(assert (=> b!6218744 d!1949449))

(declare-fun b!6219182 () Bool)

(declare-fun e!3785827 () Regex!16155)

(declare-fun e!3785829 () Regex!16155)

(assert (=> b!6219182 (= e!3785827 e!3785829)))

(declare-fun c!1123557 () Bool)

(assert (=> b!6219182 (= c!1123557 ((_ is Cons!64641) (unfocusZipperList!1576 zl!343)))))

(declare-fun b!6219183 () Bool)

(assert (=> b!6219183 (= e!3785829 EmptyLang!16155)))

(declare-fun d!1949451 () Bool)

(declare-fun e!3785828 () Bool)

(assert (=> d!1949451 e!3785828))

(declare-fun res!2570605 () Bool)

(assert (=> d!1949451 (=> (not res!2570605) (not e!3785828))))

(declare-fun lt!2344738 () Regex!16155)

(assert (=> d!1949451 (= res!2570605 (validRegex!7891 lt!2344738))))

(assert (=> d!1949451 (= lt!2344738 e!3785827)))

(declare-fun c!1123556 () Bool)

(declare-fun e!3785831 () Bool)

(assert (=> d!1949451 (= c!1123556 e!3785831)))

(declare-fun res!2570604 () Bool)

(assert (=> d!1949451 (=> (not res!2570604) (not e!3785831))))

(assert (=> d!1949451 (= res!2570604 ((_ is Cons!64641) (unfocusZipperList!1576 zl!343)))))

(declare-fun lambda!339900 () Int)

(declare-fun forall!15269 (List!64765 Int) Bool)

(assert (=> d!1949451 (forall!15269 (unfocusZipperList!1576 zl!343) lambda!339900)))

(assert (=> d!1949451 (= (generalisedUnion!1999 (unfocusZipperList!1576 zl!343)) lt!2344738)))

(declare-fun b!6219184 () Bool)

(assert (=> b!6219184 (= e!3785829 (Union!16155 (h!71089 (unfocusZipperList!1576 zl!343)) (generalisedUnion!1999 (t!378295 (unfocusZipperList!1576 zl!343)))))))

(declare-fun b!6219185 () Bool)

(declare-fun e!3785830 () Bool)

(assert (=> b!6219185 (= e!3785828 e!3785830)))

(declare-fun c!1123555 () Bool)

(assert (=> b!6219185 (= c!1123555 (isEmpty!36646 (unfocusZipperList!1576 zl!343)))))

(declare-fun b!6219186 () Bool)

(declare-fun e!3785832 () Bool)

(assert (=> b!6219186 (= e!3785830 e!3785832)))

(declare-fun c!1123558 () Bool)

(declare-fun tail!11904 (List!64765) List!64765)

(assert (=> b!6219186 (= c!1123558 (isEmpty!36646 (tail!11904 (unfocusZipperList!1576 zl!343))))))

(declare-fun b!6219187 () Bool)

(declare-fun isEmptyLang!1574 (Regex!16155) Bool)

(assert (=> b!6219187 (= e!3785830 (isEmptyLang!1574 lt!2344738))))

(declare-fun b!6219188 () Bool)

(declare-fun head!12819 (List!64765) Regex!16155)

(assert (=> b!6219188 (= e!3785832 (= lt!2344738 (head!12819 (unfocusZipperList!1576 zl!343))))))

(declare-fun b!6219189 () Bool)

(declare-fun isUnion!1004 (Regex!16155) Bool)

(assert (=> b!6219189 (= e!3785832 (isUnion!1004 lt!2344738))))

(declare-fun b!6219190 () Bool)

(assert (=> b!6219190 (= e!3785831 (isEmpty!36646 (t!378295 (unfocusZipperList!1576 zl!343))))))

(declare-fun b!6219191 () Bool)

(assert (=> b!6219191 (= e!3785827 (h!71089 (unfocusZipperList!1576 zl!343)))))

(assert (= (and d!1949451 res!2570604) b!6219190))

(assert (= (and d!1949451 c!1123556) b!6219191))

(assert (= (and d!1949451 (not c!1123556)) b!6219182))

(assert (= (and b!6219182 c!1123557) b!6219184))

(assert (= (and b!6219182 (not c!1123557)) b!6219183))

(assert (= (and d!1949451 res!2570605) b!6219185))

(assert (= (and b!6219185 c!1123555) b!6219187))

(assert (= (and b!6219185 (not c!1123555)) b!6219186))

(assert (= (and b!6219186 c!1123558) b!6219188))

(assert (= (and b!6219186 (not c!1123558)) b!6219189))

(assert (=> b!6219188 m!7047012))

(declare-fun m!7047322 () Bool)

(assert (=> b!6219188 m!7047322))

(declare-fun m!7047324 () Bool)

(assert (=> b!6219184 m!7047324))

(declare-fun m!7047326 () Bool)

(assert (=> d!1949451 m!7047326))

(assert (=> d!1949451 m!7047012))

(declare-fun m!7047328 () Bool)

(assert (=> d!1949451 m!7047328))

(declare-fun m!7047330 () Bool)

(assert (=> b!6219187 m!7047330))

(assert (=> b!6219186 m!7047012))

(declare-fun m!7047332 () Bool)

(assert (=> b!6219186 m!7047332))

(assert (=> b!6219186 m!7047332))

(declare-fun m!7047334 () Bool)

(assert (=> b!6219186 m!7047334))

(assert (=> b!6219185 m!7047012))

(declare-fun m!7047336 () Bool)

(assert (=> b!6219185 m!7047336))

(declare-fun m!7047338 () Bool)

(assert (=> b!6219190 m!7047338))

(declare-fun m!7047340 () Bool)

(assert (=> b!6219189 m!7047340))

(assert (=> b!6218756 d!1949451))

(declare-fun bs!1542333 () Bool)

(declare-fun d!1949453 () Bool)

(assert (= bs!1542333 (and d!1949453 d!1949451)))

(declare-fun lambda!339903 () Int)

(assert (=> bs!1542333 (= lambda!339903 lambda!339900)))

(declare-fun lt!2344741 () List!64765)

(assert (=> d!1949453 (forall!15269 lt!2344741 lambda!339903)))

(declare-fun e!3785835 () List!64765)

(assert (=> d!1949453 (= lt!2344741 e!3785835)))

(declare-fun c!1123561 () Bool)

(assert (=> d!1949453 (= c!1123561 ((_ is Cons!64642) zl!343))))

(assert (=> d!1949453 (= (unfocusZipperList!1576 zl!343) lt!2344741)))

(declare-fun b!6219196 () Bool)

(assert (=> b!6219196 (= e!3785835 (Cons!64641 (generalisedConcat!1752 (exprs!6039 (h!71090 zl!343))) (unfocusZipperList!1576 (t!378296 zl!343))))))

(declare-fun b!6219197 () Bool)

(assert (=> b!6219197 (= e!3785835 Nil!64641)))

(assert (= (and d!1949453 c!1123561) b!6219196))

(assert (= (and d!1949453 (not c!1123561)) b!6219197))

(declare-fun m!7047342 () Bool)

(assert (=> d!1949453 m!7047342))

(assert (=> b!6219196 m!7046978))

(declare-fun m!7047344 () Bool)

(assert (=> b!6219196 m!7047344))

(assert (=> b!6218756 d!1949453))

(declare-fun d!1949455 () Bool)

(declare-fun nullableFct!2104 (Regex!16155) Bool)

(assert (=> d!1949455 (= (nullable!6148 (regOne!32822 (regOne!32822 r!7292))) (nullableFct!2104 (regOne!32822 (regOne!32822 r!7292))))))

(declare-fun bs!1542334 () Bool)

(assert (= bs!1542334 d!1949455))

(declare-fun m!7047346 () Bool)

(assert (=> bs!1542334 m!7047346))

(assert (=> b!6218755 d!1949455))

(declare-fun d!1949457 () Bool)

(declare-fun c!1123562 () Bool)

(assert (=> d!1949457 (= c!1123562 (isEmpty!36649 (t!378294 s!2326)))))

(declare-fun e!3785836 () Bool)

(assert (=> d!1949457 (= (matchZipper!2167 lt!2344674 (t!378294 s!2326)) e!3785836)))

(declare-fun b!6219198 () Bool)

(assert (=> b!6219198 (= e!3785836 (nullableZipper!1929 lt!2344674))))

(declare-fun b!6219199 () Bool)

(assert (=> b!6219199 (= e!3785836 (matchZipper!2167 (derivationStepZipper!2121 lt!2344674 (head!12818 (t!378294 s!2326))) (tail!11903 (t!378294 s!2326))))))

(assert (= (and d!1949457 c!1123562) b!6219198))

(assert (= (and d!1949457 (not c!1123562)) b!6219199))

(assert (=> d!1949457 m!7047304))

(declare-fun m!7047348 () Bool)

(assert (=> b!6219198 m!7047348))

(assert (=> b!6219199 m!7047308))

(assert (=> b!6219199 m!7047308))

(declare-fun m!7047350 () Bool)

(assert (=> b!6219199 m!7047350))

(assert (=> b!6219199 m!7047312))

(assert (=> b!6219199 m!7047350))

(assert (=> b!6219199 m!7047312))

(declare-fun m!7047352 () Bool)

(assert (=> b!6219199 m!7047352))

(assert (=> b!6218757 d!1949457))

(assert (=> b!6218737 d!1949447))

(declare-fun d!1949459 () Bool)

(declare-fun c!1123563 () Bool)

(assert (=> d!1949459 (= c!1123563 (isEmpty!36649 (t!378294 s!2326)))))

(declare-fun e!3785837 () Bool)

(assert (=> d!1949459 (= (matchZipper!2167 lt!2344683 (t!378294 s!2326)) e!3785837)))

(declare-fun b!6219200 () Bool)

(assert (=> b!6219200 (= e!3785837 (nullableZipper!1929 lt!2344683))))

(declare-fun b!6219201 () Bool)

(assert (=> b!6219201 (= e!3785837 (matchZipper!2167 (derivationStepZipper!2121 lt!2344683 (head!12818 (t!378294 s!2326))) (tail!11903 (t!378294 s!2326))))))

(assert (= (and d!1949459 c!1123563) b!6219200))

(assert (= (and d!1949459 (not c!1123563)) b!6219201))

(assert (=> d!1949459 m!7047304))

(declare-fun m!7047354 () Bool)

(assert (=> b!6219200 m!7047354))

(assert (=> b!6219201 m!7047308))

(assert (=> b!6219201 m!7047308))

(declare-fun m!7047356 () Bool)

(assert (=> b!6219201 m!7047356))

(assert (=> b!6219201 m!7047312))

(assert (=> b!6219201 m!7047356))

(assert (=> b!6219201 m!7047312))

(declare-fun m!7047358 () Bool)

(assert (=> b!6219201 m!7047358))

(assert (=> b!6218737 d!1949459))

(declare-fun d!1949461 () Bool)

(declare-fun c!1123564 () Bool)

(assert (=> d!1949461 (= c!1123564 (isEmpty!36649 (t!378294 s!2326)))))

(declare-fun e!3785838 () Bool)

(assert (=> d!1949461 (= (matchZipper!2167 lt!2344670 (t!378294 s!2326)) e!3785838)))

(declare-fun b!6219202 () Bool)

(assert (=> b!6219202 (= e!3785838 (nullableZipper!1929 lt!2344670))))

(declare-fun b!6219203 () Bool)

(assert (=> b!6219203 (= e!3785838 (matchZipper!2167 (derivationStepZipper!2121 lt!2344670 (head!12818 (t!378294 s!2326))) (tail!11903 (t!378294 s!2326))))))

(assert (= (and d!1949461 c!1123564) b!6219202))

(assert (= (and d!1949461 (not c!1123564)) b!6219203))

(assert (=> d!1949461 m!7047304))

(declare-fun m!7047360 () Bool)

(assert (=> b!6219202 m!7047360))

(assert (=> b!6219203 m!7047308))

(assert (=> b!6219203 m!7047308))

(declare-fun m!7047362 () Bool)

(assert (=> b!6219203 m!7047362))

(assert (=> b!6219203 m!7047312))

(assert (=> b!6219203 m!7047362))

(assert (=> b!6219203 m!7047312))

(declare-fun m!7047364 () Bool)

(assert (=> b!6219203 m!7047364))

(assert (=> b!6218737 d!1949461))

(declare-fun e!3785839 () Bool)

(declare-fun d!1949463 () Bool)

(assert (=> d!1949463 (= (matchZipper!2167 ((_ map or) lt!2344670 lt!2344674) (t!378294 s!2326)) e!3785839)))

(declare-fun res!2570606 () Bool)

(assert (=> d!1949463 (=> res!2570606 e!3785839)))

(assert (=> d!1949463 (= res!2570606 (matchZipper!2167 lt!2344670 (t!378294 s!2326)))))

(declare-fun lt!2344742 () Unit!157951)

(assert (=> d!1949463 (= lt!2344742 (choose!46211 lt!2344670 lt!2344674 (t!378294 s!2326)))))

(assert (=> d!1949463 (= (lemmaZipperConcatMatchesSameAsBothZippers!986 lt!2344670 lt!2344674 (t!378294 s!2326)) lt!2344742)))

(declare-fun b!6219204 () Bool)

(assert (=> b!6219204 (= e!3785839 (matchZipper!2167 lt!2344674 (t!378294 s!2326)))))

(assert (= (and d!1949463 (not res!2570606)) b!6219204))

(declare-fun m!7047366 () Bool)

(assert (=> d!1949463 m!7047366))

(assert (=> d!1949463 m!7047020))

(declare-fun m!7047368 () Bool)

(assert (=> d!1949463 m!7047368))

(assert (=> b!6219204 m!7046972))

(assert (=> b!6218737 d!1949463))

(declare-fun d!1949465 () Bool)

(assert (=> d!1949465 (= (isEmpty!36647 (t!378296 zl!343)) ((_ is Nil!64642) (t!378296 zl!343)))))

(assert (=> b!6218736 d!1949465))

(declare-fun b!6219227 () Bool)

(declare-fun c!1123577 () Bool)

(declare-fun e!3785856 () Bool)

(assert (=> b!6219227 (= c!1123577 e!3785856)))

(declare-fun res!2570609 () Bool)

(assert (=> b!6219227 (=> (not res!2570609) (not e!3785856))))

(assert (=> b!6219227 (= res!2570609 ((_ is Concat!25000) (regTwo!32822 (regOne!32822 r!7292))))))

(declare-fun e!3785855 () (InoxSet Context!11078))

(declare-fun e!3785854 () (InoxSet Context!11078))

(assert (=> b!6219227 (= e!3785855 e!3785854)))

(declare-fun b!6219228 () Bool)

(declare-fun c!1123575 () Bool)

(assert (=> b!6219228 (= c!1123575 ((_ is Star!16155) (regTwo!32822 (regOne!32822 r!7292))))))

(declare-fun e!3785853 () (InoxSet Context!11078))

(declare-fun e!3785857 () (InoxSet Context!11078))

(assert (=> b!6219228 (= e!3785853 e!3785857)))

(declare-fun b!6219229 () Bool)

(assert (=> b!6219229 (= e!3785857 ((as const (Array Context!11078 Bool)) false))))

(declare-fun b!6219230 () Bool)

(declare-fun call!521854 () (InoxSet Context!11078))

(declare-fun call!521855 () (InoxSet Context!11078))

(assert (=> b!6219230 (= e!3785854 ((_ map or) call!521854 call!521855))))

(declare-fun b!6219231 () Bool)

(declare-fun call!521853 () (InoxSet Context!11078))

(assert (=> b!6219231 (= e!3785857 call!521853)))

(declare-fun b!6219232 () Bool)

(assert (=> b!6219232 (= e!3785854 e!3785853)))

(declare-fun c!1123576 () Bool)

(assert (=> b!6219232 (= c!1123576 ((_ is Concat!25000) (regTwo!32822 (regOne!32822 r!7292))))))

(declare-fun d!1949467 () Bool)

(declare-fun c!1123579 () Bool)

(assert (=> d!1949467 (= c!1123579 (and ((_ is ElementMatch!16155) (regTwo!32822 (regOne!32822 r!7292))) (= (c!1123433 (regTwo!32822 (regOne!32822 r!7292))) (h!71088 s!2326))))))

(declare-fun e!3785852 () (InoxSet Context!11078))

(assert (=> d!1949467 (= (derivationStepZipperDown!1403 (regTwo!32822 (regOne!32822 r!7292)) lt!2344673 (h!71088 s!2326)) e!3785852)))

(declare-fun bm!521845 () Bool)

(assert (=> bm!521845 (= call!521853 call!521855)))

(declare-fun b!6219233 () Bool)

(assert (=> b!6219233 (= e!3785856 (nullable!6148 (regOne!32822 (regTwo!32822 (regOne!32822 r!7292)))))))

(declare-fun bm!521846 () Bool)

(declare-fun call!521851 () (InoxSet Context!11078))

(assert (=> bm!521846 (= call!521855 call!521851)))

(declare-fun c!1123578 () Bool)

(declare-fun bm!521847 () Bool)

(declare-fun call!521850 () List!64765)

(assert (=> bm!521847 (= call!521851 (derivationStepZipperDown!1403 (ite c!1123578 (regOne!32823 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123577 (regTwo!32822 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123576 (regOne!32822 (regTwo!32822 (regOne!32822 r!7292))) (reg!16484 (regTwo!32822 (regOne!32822 r!7292)))))) (ite (or c!1123578 c!1123577) lt!2344673 (Context!11079 call!521850)) (h!71088 s!2326)))))

(declare-fun call!521852 () List!64765)

(declare-fun bm!521848 () Bool)

(assert (=> bm!521848 (= call!521854 (derivationStepZipperDown!1403 (ite c!1123578 (regTwo!32823 (regTwo!32822 (regOne!32822 r!7292))) (regOne!32822 (regTwo!32822 (regOne!32822 r!7292)))) (ite c!1123578 lt!2344673 (Context!11079 call!521852)) (h!71088 s!2326)))))

(declare-fun b!6219234 () Bool)

(assert (=> b!6219234 (= e!3785852 e!3785855)))

(assert (=> b!6219234 (= c!1123578 ((_ is Union!16155) (regTwo!32822 (regOne!32822 r!7292))))))

(declare-fun b!6219235 () Bool)

(assert (=> b!6219235 (= e!3785855 ((_ map or) call!521851 call!521854))))

(declare-fun bm!521849 () Bool)

(assert (=> bm!521849 (= call!521850 call!521852)))

(declare-fun bm!521850 () Bool)

(declare-fun $colon$colon!2024 (List!64765 Regex!16155) List!64765)

(assert (=> bm!521850 (= call!521852 ($colon$colon!2024 (exprs!6039 lt!2344673) (ite (or c!1123577 c!1123576) (regTwo!32822 (regTwo!32822 (regOne!32822 r!7292))) (regTwo!32822 (regOne!32822 r!7292)))))))

(declare-fun b!6219236 () Bool)

(assert (=> b!6219236 (= e!3785852 (store ((as const (Array Context!11078 Bool)) false) lt!2344673 true))))

(declare-fun b!6219237 () Bool)

(assert (=> b!6219237 (= e!3785853 call!521853)))

(assert (= (and d!1949467 c!1123579) b!6219236))

(assert (= (and d!1949467 (not c!1123579)) b!6219234))

(assert (= (and b!6219234 c!1123578) b!6219235))

(assert (= (and b!6219234 (not c!1123578)) b!6219227))

(assert (= (and b!6219227 res!2570609) b!6219233))

(assert (= (and b!6219227 c!1123577) b!6219230))

(assert (= (and b!6219227 (not c!1123577)) b!6219232))

(assert (= (and b!6219232 c!1123576) b!6219237))

(assert (= (and b!6219232 (not c!1123576)) b!6219228))

(assert (= (and b!6219228 c!1123575) b!6219231))

(assert (= (and b!6219228 (not c!1123575)) b!6219229))

(assert (= (or b!6219237 b!6219231) bm!521849))

(assert (= (or b!6219237 b!6219231) bm!521845))

(assert (= (or b!6219230 bm!521849) bm!521850))

(assert (= (or b!6219230 bm!521845) bm!521846))

(assert (= (or b!6219235 b!6219230) bm!521848))

(assert (= (or b!6219235 bm!521846) bm!521847))

(declare-fun m!7047370 () Bool)

(assert (=> b!6219233 m!7047370))

(declare-fun m!7047372 () Bool)

(assert (=> bm!521847 m!7047372))

(declare-fun m!7047374 () Bool)

(assert (=> bm!521850 m!7047374))

(declare-fun m!7047376 () Bool)

(assert (=> b!6219236 m!7047376))

(declare-fun m!7047378 () Bool)

(assert (=> bm!521848 m!7047378))

(assert (=> b!6218738 d!1949467))

(declare-fun b!6219238 () Bool)

(declare-fun c!1123582 () Bool)

(declare-fun e!3785862 () Bool)

(assert (=> b!6219238 (= c!1123582 e!3785862)))

(declare-fun res!2570610 () Bool)

(assert (=> b!6219238 (=> (not res!2570610) (not e!3785862))))

(assert (=> b!6219238 (= res!2570610 ((_ is Concat!25000) (regOne!32822 (regOne!32822 r!7292))))))

(declare-fun e!3785861 () (InoxSet Context!11078))

(declare-fun e!3785860 () (InoxSet Context!11078))

(assert (=> b!6219238 (= e!3785861 e!3785860)))

(declare-fun b!6219239 () Bool)

(declare-fun c!1123580 () Bool)

(assert (=> b!6219239 (= c!1123580 ((_ is Star!16155) (regOne!32822 (regOne!32822 r!7292))))))

(declare-fun e!3785859 () (InoxSet Context!11078))

(declare-fun e!3785863 () (InoxSet Context!11078))

(assert (=> b!6219239 (= e!3785859 e!3785863)))

(declare-fun b!6219240 () Bool)

(assert (=> b!6219240 (= e!3785863 ((as const (Array Context!11078 Bool)) false))))

(declare-fun b!6219241 () Bool)

(declare-fun call!521860 () (InoxSet Context!11078))

(declare-fun call!521861 () (InoxSet Context!11078))

(assert (=> b!6219241 (= e!3785860 ((_ map or) call!521860 call!521861))))

(declare-fun b!6219242 () Bool)

(declare-fun call!521859 () (InoxSet Context!11078))

(assert (=> b!6219242 (= e!3785863 call!521859)))

(declare-fun b!6219243 () Bool)

(assert (=> b!6219243 (= e!3785860 e!3785859)))

(declare-fun c!1123581 () Bool)

(assert (=> b!6219243 (= c!1123581 ((_ is Concat!25000) (regOne!32822 (regOne!32822 r!7292))))))

(declare-fun d!1949469 () Bool)

(declare-fun c!1123584 () Bool)

(assert (=> d!1949469 (= c!1123584 (and ((_ is ElementMatch!16155) (regOne!32822 (regOne!32822 r!7292))) (= (c!1123433 (regOne!32822 (regOne!32822 r!7292))) (h!71088 s!2326))))))

(declare-fun e!3785858 () (InoxSet Context!11078))

(assert (=> d!1949469 (= (derivationStepZipperDown!1403 (regOne!32822 (regOne!32822 r!7292)) lt!2344676 (h!71088 s!2326)) e!3785858)))

(declare-fun bm!521851 () Bool)

(assert (=> bm!521851 (= call!521859 call!521861)))

(declare-fun b!6219244 () Bool)

(assert (=> b!6219244 (= e!3785862 (nullable!6148 (regOne!32822 (regOne!32822 (regOne!32822 r!7292)))))))

(declare-fun bm!521852 () Bool)

(declare-fun call!521857 () (InoxSet Context!11078))

(assert (=> bm!521852 (= call!521861 call!521857)))

(declare-fun bm!521853 () Bool)

(declare-fun c!1123583 () Bool)

(declare-fun call!521856 () List!64765)

(assert (=> bm!521853 (= call!521857 (derivationStepZipperDown!1403 (ite c!1123583 (regOne!32823 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123582 (regTwo!32822 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123581 (regOne!32822 (regOne!32822 (regOne!32822 r!7292))) (reg!16484 (regOne!32822 (regOne!32822 r!7292)))))) (ite (or c!1123583 c!1123582) lt!2344676 (Context!11079 call!521856)) (h!71088 s!2326)))))

(declare-fun bm!521854 () Bool)

(declare-fun call!521858 () List!64765)

(assert (=> bm!521854 (= call!521860 (derivationStepZipperDown!1403 (ite c!1123583 (regTwo!32823 (regOne!32822 (regOne!32822 r!7292))) (regOne!32822 (regOne!32822 (regOne!32822 r!7292)))) (ite c!1123583 lt!2344676 (Context!11079 call!521858)) (h!71088 s!2326)))))

(declare-fun b!6219245 () Bool)

(assert (=> b!6219245 (= e!3785858 e!3785861)))

(assert (=> b!6219245 (= c!1123583 ((_ is Union!16155) (regOne!32822 (regOne!32822 r!7292))))))

(declare-fun b!6219246 () Bool)

(assert (=> b!6219246 (= e!3785861 ((_ map or) call!521857 call!521860))))

(declare-fun bm!521855 () Bool)

(assert (=> bm!521855 (= call!521856 call!521858)))

(declare-fun bm!521856 () Bool)

(assert (=> bm!521856 (= call!521858 ($colon$colon!2024 (exprs!6039 lt!2344676) (ite (or c!1123582 c!1123581) (regTwo!32822 (regOne!32822 (regOne!32822 r!7292))) (regOne!32822 (regOne!32822 r!7292)))))))

(declare-fun b!6219247 () Bool)

(assert (=> b!6219247 (= e!3785858 (store ((as const (Array Context!11078 Bool)) false) lt!2344676 true))))

(declare-fun b!6219248 () Bool)

(assert (=> b!6219248 (= e!3785859 call!521859)))

(assert (= (and d!1949469 c!1123584) b!6219247))

(assert (= (and d!1949469 (not c!1123584)) b!6219245))

(assert (= (and b!6219245 c!1123583) b!6219246))

(assert (= (and b!6219245 (not c!1123583)) b!6219238))

(assert (= (and b!6219238 res!2570610) b!6219244))

(assert (= (and b!6219238 c!1123582) b!6219241))

(assert (= (and b!6219238 (not c!1123582)) b!6219243))

(assert (= (and b!6219243 c!1123581) b!6219248))

(assert (= (and b!6219243 (not c!1123581)) b!6219239))

(assert (= (and b!6219239 c!1123580) b!6219242))

(assert (= (and b!6219239 (not c!1123580)) b!6219240))

(assert (= (or b!6219248 b!6219242) bm!521855))

(assert (= (or b!6219248 b!6219242) bm!521851))

(assert (= (or b!6219241 bm!521855) bm!521856))

(assert (= (or b!6219241 bm!521851) bm!521852))

(assert (= (or b!6219246 b!6219241) bm!521854))

(assert (= (or b!6219246 bm!521852) bm!521853))

(declare-fun m!7047380 () Bool)

(assert (=> b!6219244 m!7047380))

(declare-fun m!7047382 () Bool)

(assert (=> bm!521853 m!7047382))

(declare-fun m!7047384 () Bool)

(assert (=> bm!521856 m!7047384))

(declare-fun m!7047386 () Bool)

(assert (=> b!6219247 m!7047386))

(declare-fun m!7047388 () Bool)

(assert (=> bm!521854 m!7047388))

(assert (=> b!6218738 d!1949469))

(declare-fun d!1949471 () Bool)

(declare-fun e!3785866 () Bool)

(assert (=> d!1949471 e!3785866))

(declare-fun res!2570613 () Bool)

(assert (=> d!1949471 (=> (not res!2570613) (not e!3785866))))

(declare-fun lt!2344745 () List!64766)

(declare-fun noDuplicate!1993 (List!64766) Bool)

(assert (=> d!1949471 (= res!2570613 (noDuplicate!1993 lt!2344745))))

(declare-fun choose!46214 ((InoxSet Context!11078)) List!64766)

(assert (=> d!1949471 (= lt!2344745 (choose!46214 z!1189))))

(assert (=> d!1949471 (= (toList!9939 z!1189) lt!2344745)))

(declare-fun b!6219251 () Bool)

(declare-fun content!12104 (List!64766) (InoxSet Context!11078))

(assert (=> b!6219251 (= e!3785866 (= (content!12104 lt!2344745) z!1189))))

(assert (= (and d!1949471 res!2570613) b!6219251))

(declare-fun m!7047390 () Bool)

(assert (=> d!1949471 m!7047390))

(declare-fun m!7047392 () Bool)

(assert (=> d!1949471 m!7047392))

(declare-fun m!7047394 () Bool)

(assert (=> b!6219251 m!7047394))

(assert (=> b!6218749 d!1949471))

(declare-fun bs!1542335 () Bool)

(declare-fun d!1949473 () Bool)

(assert (= bs!1542335 (and d!1949473 d!1949451)))

(declare-fun lambda!339906 () Int)

(assert (=> bs!1542335 (= lambda!339906 lambda!339900)))

(declare-fun bs!1542336 () Bool)

(assert (= bs!1542336 (and d!1949473 d!1949453)))

(assert (=> bs!1542336 (= lambda!339906 lambda!339903)))

(assert (=> d!1949473 (= (inv!83634 setElem!42232) (forall!15269 (exprs!6039 setElem!42232) lambda!339906))))

(declare-fun bs!1542337 () Bool)

(assert (= bs!1542337 d!1949473))

(declare-fun m!7047396 () Bool)

(assert (=> bs!1542337 m!7047396))

(assert (=> setNonEmpty!42232 d!1949473))

(declare-fun bs!1542338 () Bool)

(declare-fun d!1949475 () Bool)

(assert (= bs!1542338 (and d!1949475 d!1949451)))

(declare-fun lambda!339907 () Int)

(assert (=> bs!1542338 (= lambda!339907 lambda!339900)))

(declare-fun bs!1542339 () Bool)

(assert (= bs!1542339 (and d!1949475 d!1949453)))

(assert (=> bs!1542339 (= lambda!339907 lambda!339903)))

(declare-fun bs!1542340 () Bool)

(assert (= bs!1542340 (and d!1949475 d!1949473)))

(assert (=> bs!1542340 (= lambda!339907 lambda!339906)))

(assert (=> d!1949475 (= (inv!83634 (h!71090 zl!343)) (forall!15269 (exprs!6039 (h!71090 zl!343)) lambda!339907))))

(declare-fun bs!1542341 () Bool)

(assert (= bs!1542341 d!1949475))

(declare-fun m!7047398 () Bool)

(assert (=> bs!1542341 m!7047398))

(assert (=> b!6218750 d!1949475))

(declare-fun b!6219270 () Bool)

(declare-fun e!3785882 () Bool)

(declare-fun e!3785881 () Bool)

(assert (=> b!6219270 (= e!3785882 e!3785881)))

(declare-fun res!2570628 () Bool)

(assert (=> b!6219270 (=> (not res!2570628) (not e!3785881))))

(declare-fun call!521868 () Bool)

(assert (=> b!6219270 (= res!2570628 call!521868)))

(declare-fun b!6219271 () Bool)

(declare-fun e!3785886 () Bool)

(declare-fun call!521869 () Bool)

(assert (=> b!6219271 (= e!3785886 call!521869)))

(declare-fun b!6219272 () Bool)

(declare-fun res!2570626 () Bool)

(assert (=> b!6219272 (=> res!2570626 e!3785882)))

(assert (=> b!6219272 (= res!2570626 (not ((_ is Concat!25000) r!7292)))))

(declare-fun e!3785887 () Bool)

(assert (=> b!6219272 (= e!3785887 e!3785882)))

(declare-fun b!6219273 () Bool)

(declare-fun e!3785883 () Bool)

(declare-fun e!3785884 () Bool)

(assert (=> b!6219273 (= e!3785883 e!3785884)))

(declare-fun res!2570627 () Bool)

(assert (=> b!6219273 (= res!2570627 (not (nullable!6148 (reg!16484 r!7292))))))

(assert (=> b!6219273 (=> (not res!2570627) (not e!3785884))))

(declare-fun d!1949477 () Bool)

(declare-fun res!2570624 () Bool)

(declare-fun e!3785885 () Bool)

(assert (=> d!1949477 (=> res!2570624 e!3785885)))

(assert (=> d!1949477 (= res!2570624 ((_ is ElementMatch!16155) r!7292))))

(assert (=> d!1949477 (= (validRegex!7891 r!7292) e!3785885)))

(declare-fun bm!521863 () Bool)

(declare-fun c!1123589 () Bool)

(assert (=> bm!521863 (= call!521869 (validRegex!7891 (ite c!1123589 (regTwo!32823 r!7292) (regTwo!32822 r!7292))))))

(declare-fun bm!521864 () Bool)

(declare-fun call!521870 () Bool)

(assert (=> bm!521864 (= call!521868 call!521870)))

(declare-fun b!6219274 () Bool)

(assert (=> b!6219274 (= e!3785883 e!3785887)))

(assert (=> b!6219274 (= c!1123589 ((_ is Union!16155) r!7292))))

(declare-fun b!6219275 () Bool)

(assert (=> b!6219275 (= e!3785881 call!521869)))

(declare-fun b!6219276 () Bool)

(assert (=> b!6219276 (= e!3785884 call!521870)))

(declare-fun c!1123590 () Bool)

(declare-fun bm!521865 () Bool)

(assert (=> bm!521865 (= call!521870 (validRegex!7891 (ite c!1123590 (reg!16484 r!7292) (ite c!1123589 (regOne!32823 r!7292) (regOne!32822 r!7292)))))))

(declare-fun b!6219277 () Bool)

(declare-fun res!2570625 () Bool)

(assert (=> b!6219277 (=> (not res!2570625) (not e!3785886))))

(assert (=> b!6219277 (= res!2570625 call!521868)))

(assert (=> b!6219277 (= e!3785887 e!3785886)))

(declare-fun b!6219278 () Bool)

(assert (=> b!6219278 (= e!3785885 e!3785883)))

(assert (=> b!6219278 (= c!1123590 ((_ is Star!16155) r!7292))))

(assert (= (and d!1949477 (not res!2570624)) b!6219278))

(assert (= (and b!6219278 c!1123590) b!6219273))

(assert (= (and b!6219278 (not c!1123590)) b!6219274))

(assert (= (and b!6219273 res!2570627) b!6219276))

(assert (= (and b!6219274 c!1123589) b!6219277))

(assert (= (and b!6219274 (not c!1123589)) b!6219272))

(assert (= (and b!6219277 res!2570625) b!6219271))

(assert (= (and b!6219272 (not res!2570626)) b!6219270))

(assert (= (and b!6219270 res!2570628) b!6219275))

(assert (= (or b!6219271 b!6219275) bm!521863))

(assert (= (or b!6219277 b!6219270) bm!521864))

(assert (= (or b!6219276 bm!521864) bm!521865))

(declare-fun m!7047400 () Bool)

(assert (=> b!6219273 m!7047400))

(declare-fun m!7047402 () Bool)

(assert (=> bm!521863 m!7047402))

(declare-fun m!7047404 () Bool)

(assert (=> bm!521865 m!7047404))

(assert (=> start!619804 d!1949477))

(declare-fun bs!1542342 () Bool)

(declare-fun d!1949479 () Bool)

(assert (= bs!1542342 (and d!1949479 d!1949451)))

(declare-fun lambda!339910 () Int)

(assert (=> bs!1542342 (= lambda!339910 lambda!339900)))

(declare-fun bs!1542343 () Bool)

(assert (= bs!1542343 (and d!1949479 d!1949453)))

(assert (=> bs!1542343 (= lambda!339910 lambda!339903)))

(declare-fun bs!1542344 () Bool)

(assert (= bs!1542344 (and d!1949479 d!1949473)))

(assert (=> bs!1542344 (= lambda!339910 lambda!339906)))

(declare-fun bs!1542345 () Bool)

(assert (= bs!1542345 (and d!1949479 d!1949475)))

(assert (=> bs!1542345 (= lambda!339910 lambda!339907)))

(declare-fun b!6219299 () Bool)

(declare-fun e!3785905 () Regex!16155)

(declare-fun e!3785901 () Regex!16155)

(assert (=> b!6219299 (= e!3785905 e!3785901)))

(declare-fun c!1123601 () Bool)

(assert (=> b!6219299 (= c!1123601 ((_ is Cons!64641) (exprs!6039 (h!71090 zl!343))))))

(declare-fun b!6219300 () Bool)

(assert (=> b!6219300 (= e!3785905 (h!71089 (exprs!6039 (h!71090 zl!343))))))

(declare-fun b!6219302 () Bool)

(assert (=> b!6219302 (= e!3785901 EmptyExpr!16155)))

(declare-fun b!6219303 () Bool)

(declare-fun e!3785903 () Bool)

(declare-fun e!3785902 () Bool)

(assert (=> b!6219303 (= e!3785903 e!3785902)))

(declare-fun c!1123599 () Bool)

(assert (=> b!6219303 (= c!1123599 (isEmpty!36646 (tail!11904 (exprs!6039 (h!71090 zl!343)))))))

(declare-fun b!6219304 () Bool)

(declare-fun lt!2344748 () Regex!16155)

(assert (=> b!6219304 (= e!3785902 (= lt!2344748 (head!12819 (exprs!6039 (h!71090 zl!343)))))))

(declare-fun b!6219305 () Bool)

(declare-fun isEmptyExpr!1565 (Regex!16155) Bool)

(assert (=> b!6219305 (= e!3785903 (isEmptyExpr!1565 lt!2344748))))

(declare-fun b!6219306 () Bool)

(declare-fun e!3785900 () Bool)

(assert (=> b!6219306 (= e!3785900 e!3785903)))

(declare-fun c!1123602 () Bool)

(assert (=> b!6219306 (= c!1123602 (isEmpty!36646 (exprs!6039 (h!71090 zl!343))))))

(declare-fun b!6219307 () Bool)

(declare-fun e!3785904 () Bool)

(assert (=> b!6219307 (= e!3785904 (isEmpty!36646 (t!378295 (exprs!6039 (h!71090 zl!343)))))))

(declare-fun b!6219308 () Bool)

(declare-fun isConcat!1088 (Regex!16155) Bool)

(assert (=> b!6219308 (= e!3785902 (isConcat!1088 lt!2344748))))

(assert (=> d!1949479 e!3785900))

(declare-fun res!2570634 () Bool)

(assert (=> d!1949479 (=> (not res!2570634) (not e!3785900))))

(assert (=> d!1949479 (= res!2570634 (validRegex!7891 lt!2344748))))

(assert (=> d!1949479 (= lt!2344748 e!3785905)))

(declare-fun c!1123600 () Bool)

(assert (=> d!1949479 (= c!1123600 e!3785904)))

(declare-fun res!2570633 () Bool)

(assert (=> d!1949479 (=> (not res!2570633) (not e!3785904))))

(assert (=> d!1949479 (= res!2570633 ((_ is Cons!64641) (exprs!6039 (h!71090 zl!343))))))

(assert (=> d!1949479 (forall!15269 (exprs!6039 (h!71090 zl!343)) lambda!339910)))

(assert (=> d!1949479 (= (generalisedConcat!1752 (exprs!6039 (h!71090 zl!343))) lt!2344748)))

(declare-fun b!6219301 () Bool)

(assert (=> b!6219301 (= e!3785901 (Concat!25000 (h!71089 (exprs!6039 (h!71090 zl!343))) (generalisedConcat!1752 (t!378295 (exprs!6039 (h!71090 zl!343))))))))

(assert (= (and d!1949479 res!2570633) b!6219307))

(assert (= (and d!1949479 c!1123600) b!6219300))

(assert (= (and d!1949479 (not c!1123600)) b!6219299))

(assert (= (and b!6219299 c!1123601) b!6219301))

(assert (= (and b!6219299 (not c!1123601)) b!6219302))

(assert (= (and d!1949479 res!2570634) b!6219306))

(assert (= (and b!6219306 c!1123602) b!6219305))

(assert (= (and b!6219306 (not c!1123602)) b!6219303))

(assert (= (and b!6219303 c!1123599) b!6219304))

(assert (= (and b!6219303 (not c!1123599)) b!6219308))

(assert (=> b!6219307 m!7047044))

(declare-fun m!7047406 () Bool)

(assert (=> b!6219304 m!7047406))

(declare-fun m!7047408 () Bool)

(assert (=> b!6219308 m!7047408))

(declare-fun m!7047410 () Bool)

(assert (=> b!6219305 m!7047410))

(declare-fun m!7047412 () Bool)

(assert (=> d!1949479 m!7047412))

(declare-fun m!7047414 () Bool)

(assert (=> d!1949479 m!7047414))

(declare-fun m!7047416 () Bool)

(assert (=> b!6219303 m!7047416))

(assert (=> b!6219303 m!7047416))

(declare-fun m!7047418 () Bool)

(assert (=> b!6219303 m!7047418))

(declare-fun m!7047420 () Bool)

(assert (=> b!6219306 m!7047420))

(declare-fun m!7047422 () Bool)

(assert (=> b!6219301 m!7047422))

(assert (=> b!6218739 d!1949479))

(declare-fun b!6219327 () Bool)

(declare-fun res!2570646 () Bool)

(declare-fun e!3785917 () Bool)

(assert (=> b!6219327 (=> (not res!2570646) (not e!3785917))))

(declare-fun lt!2344756 () Option!16046)

(declare-fun get!22326 (Option!16046) tuple2!66268)

(assert (=> b!6219327 (= res!2570646 (matchR!8338 (regTwo!32822 r!7292) (_2!36437 (get!22326 lt!2344756))))))

(declare-fun b!6219328 () Bool)

(declare-fun e!3785916 () Option!16046)

(declare-fun e!3785919 () Option!16046)

(assert (=> b!6219328 (= e!3785916 e!3785919)))

(declare-fun c!1123607 () Bool)

(assert (=> b!6219328 (= c!1123607 ((_ is Nil!64640) s!2326))))

(declare-fun b!6219329 () Bool)

(assert (=> b!6219329 (= e!3785919 None!16045)))

(declare-fun b!6219330 () Bool)

(assert (=> b!6219330 (= e!3785916 (Some!16045 (tuple2!66269 Nil!64640 s!2326)))))

(declare-fun d!1949481 () Bool)

(declare-fun e!3785918 () Bool)

(assert (=> d!1949481 e!3785918))

(declare-fun res!2570648 () Bool)

(assert (=> d!1949481 (=> res!2570648 e!3785918)))

(assert (=> d!1949481 (= res!2570648 e!3785917)))

(declare-fun res!2570649 () Bool)

(assert (=> d!1949481 (=> (not res!2570649) (not e!3785917))))

(assert (=> d!1949481 (= res!2570649 (isDefined!12749 lt!2344756))))

(assert (=> d!1949481 (= lt!2344756 e!3785916)))

(declare-fun c!1123608 () Bool)

(declare-fun e!3785920 () Bool)

(assert (=> d!1949481 (= c!1123608 e!3785920)))

(declare-fun res!2570647 () Bool)

(assert (=> d!1949481 (=> (not res!2570647) (not e!3785920))))

(assert (=> d!1949481 (= res!2570647 (matchR!8338 (regOne!32822 r!7292) Nil!64640))))

(assert (=> d!1949481 (validRegex!7891 (regOne!32822 r!7292))))

(assert (=> d!1949481 (= (findConcatSeparation!2460 (regOne!32822 r!7292) (regTwo!32822 r!7292) Nil!64640 s!2326 s!2326) lt!2344756)))

(declare-fun b!6219331 () Bool)

(assert (=> b!6219331 (= e!3785918 (not (isDefined!12749 lt!2344756)))))

(declare-fun b!6219332 () Bool)

(declare-fun ++!14233 (List!64764 List!64764) List!64764)

(assert (=> b!6219332 (= e!3785917 (= (++!14233 (_1!36437 (get!22326 lt!2344756)) (_2!36437 (get!22326 lt!2344756))) s!2326))))

(declare-fun b!6219333 () Bool)

(declare-fun lt!2344755 () Unit!157951)

(declare-fun lt!2344757 () Unit!157951)

(assert (=> b!6219333 (= lt!2344755 lt!2344757)))

(assert (=> b!6219333 (= (++!14233 (++!14233 Nil!64640 (Cons!64640 (h!71088 s!2326) Nil!64640)) (t!378294 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2328 (List!64764 C!32580 List!64764 List!64764) Unit!157951)

(assert (=> b!6219333 (= lt!2344757 (lemmaMoveElementToOtherListKeepsConcatEq!2328 Nil!64640 (h!71088 s!2326) (t!378294 s!2326) s!2326))))

(assert (=> b!6219333 (= e!3785919 (findConcatSeparation!2460 (regOne!32822 r!7292) (regTwo!32822 r!7292) (++!14233 Nil!64640 (Cons!64640 (h!71088 s!2326) Nil!64640)) (t!378294 s!2326) s!2326))))

(declare-fun b!6219334 () Bool)

(assert (=> b!6219334 (= e!3785920 (matchR!8338 (regTwo!32822 r!7292) s!2326))))

(declare-fun b!6219335 () Bool)

(declare-fun res!2570645 () Bool)

(assert (=> b!6219335 (=> (not res!2570645) (not e!3785917))))

(assert (=> b!6219335 (= res!2570645 (matchR!8338 (regOne!32822 r!7292) (_1!36437 (get!22326 lt!2344756))))))

(assert (= (and d!1949481 res!2570647) b!6219334))

(assert (= (and d!1949481 c!1123608) b!6219330))

(assert (= (and d!1949481 (not c!1123608)) b!6219328))

(assert (= (and b!6219328 c!1123607) b!6219329))

(assert (= (and b!6219328 (not c!1123607)) b!6219333))

(assert (= (and d!1949481 res!2570649) b!6219335))

(assert (= (and b!6219335 res!2570645) b!6219327))

(assert (= (and b!6219327 res!2570646) b!6219332))

(assert (= (and d!1949481 (not res!2570648)) b!6219331))

(declare-fun m!7047424 () Bool)

(assert (=> b!6219332 m!7047424))

(declare-fun m!7047426 () Bool)

(assert (=> b!6219332 m!7047426))

(declare-fun m!7047428 () Bool)

(assert (=> b!6219333 m!7047428))

(assert (=> b!6219333 m!7047428))

(declare-fun m!7047430 () Bool)

(assert (=> b!6219333 m!7047430))

(declare-fun m!7047432 () Bool)

(assert (=> b!6219333 m!7047432))

(assert (=> b!6219333 m!7047428))

(declare-fun m!7047434 () Bool)

(assert (=> b!6219333 m!7047434))

(declare-fun m!7047436 () Bool)

(assert (=> d!1949481 m!7047436))

(declare-fun m!7047438 () Bool)

(assert (=> d!1949481 m!7047438))

(declare-fun m!7047440 () Bool)

(assert (=> d!1949481 m!7047440))

(assert (=> b!6219331 m!7047436))

(assert (=> b!6219327 m!7047424))

(declare-fun m!7047442 () Bool)

(assert (=> b!6219327 m!7047442))

(assert (=> b!6219335 m!7047424))

(declare-fun m!7047444 () Bool)

(assert (=> b!6219335 m!7047444))

(declare-fun m!7047446 () Bool)

(assert (=> b!6219334 m!7047446))

(assert (=> b!6218730 d!1949481))

(declare-fun d!1949483 () Bool)

(declare-fun choose!46215 (Int) Bool)

(assert (=> d!1949483 (= (Exists!3225 lambda!339864) (choose!46215 lambda!339864))))

(declare-fun bs!1542346 () Bool)

(assert (= bs!1542346 d!1949483))

(declare-fun m!7047448 () Bool)

(assert (=> bs!1542346 m!7047448))

(assert (=> b!6218730 d!1949483))

(declare-fun d!1949485 () Bool)

(assert (=> d!1949485 (= (Exists!3225 lambda!339863) (choose!46215 lambda!339863))))

(declare-fun bs!1542347 () Bool)

(assert (= bs!1542347 d!1949485))

(declare-fun m!7047450 () Bool)

(assert (=> bs!1542347 m!7047450))

(assert (=> b!6218730 d!1949485))

(declare-fun bs!1542348 () Bool)

(declare-fun d!1949487 () Bool)

(assert (= bs!1542348 (and d!1949487 b!6218730)))

(declare-fun lambda!339913 () Int)

(assert (=> bs!1542348 (= lambda!339913 lambda!339863)))

(assert (=> bs!1542348 (not (= lambda!339913 lambda!339864))))

(assert (=> d!1949487 true))

(assert (=> d!1949487 true))

(assert (=> d!1949487 true))

(assert (=> d!1949487 (= (isDefined!12749 (findConcatSeparation!2460 (regOne!32822 r!7292) (regTwo!32822 r!7292) Nil!64640 s!2326 s!2326)) (Exists!3225 lambda!339913))))

(declare-fun lt!2344760 () Unit!157951)

(declare-fun choose!46216 (Regex!16155 Regex!16155 List!64764) Unit!157951)

(assert (=> d!1949487 (= lt!2344760 (choose!46216 (regOne!32822 r!7292) (regTwo!32822 r!7292) s!2326))))

(assert (=> d!1949487 (validRegex!7891 (regOne!32822 r!7292))))

(assert (=> d!1949487 (= (lemmaFindConcatSeparationEquivalentToExists!2224 (regOne!32822 r!7292) (regTwo!32822 r!7292) s!2326) lt!2344760)))

(declare-fun bs!1542349 () Bool)

(assert (= bs!1542349 d!1949487))

(assert (=> bs!1542349 m!7046986))

(assert (=> bs!1542349 m!7046988))

(declare-fun m!7047452 () Bool)

(assert (=> bs!1542349 m!7047452))

(assert (=> bs!1542349 m!7046986))

(declare-fun m!7047454 () Bool)

(assert (=> bs!1542349 m!7047454))

(assert (=> bs!1542349 m!7047440))

(assert (=> b!6218730 d!1949487))

(declare-fun bs!1542350 () Bool)

(declare-fun d!1949489 () Bool)

(assert (= bs!1542350 (and d!1949489 b!6218730)))

(declare-fun lambda!339918 () Int)

(assert (=> bs!1542350 (= lambda!339918 lambda!339863)))

(assert (=> bs!1542350 (not (= lambda!339918 lambda!339864))))

(declare-fun bs!1542351 () Bool)

(assert (= bs!1542351 (and d!1949489 d!1949487)))

(assert (=> bs!1542351 (= lambda!339918 lambda!339913)))

(assert (=> d!1949489 true))

(assert (=> d!1949489 true))

(assert (=> d!1949489 true))

(declare-fun lambda!339919 () Int)

(assert (=> bs!1542350 (not (= lambda!339919 lambda!339863))))

(assert (=> bs!1542350 (= lambda!339919 lambda!339864)))

(assert (=> bs!1542351 (not (= lambda!339919 lambda!339913))))

(declare-fun bs!1542352 () Bool)

(assert (= bs!1542352 d!1949489))

(assert (=> bs!1542352 (not (= lambda!339919 lambda!339918))))

(assert (=> d!1949489 true))

(assert (=> d!1949489 true))

(assert (=> d!1949489 true))

(assert (=> d!1949489 (= (Exists!3225 lambda!339918) (Exists!3225 lambda!339919))))

(declare-fun lt!2344763 () Unit!157951)

(declare-fun choose!46217 (Regex!16155 Regex!16155 List!64764) Unit!157951)

(assert (=> d!1949489 (= lt!2344763 (choose!46217 (regOne!32822 r!7292) (regTwo!32822 r!7292) s!2326))))

(assert (=> d!1949489 (validRegex!7891 (regOne!32822 r!7292))))

(assert (=> d!1949489 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1762 (regOne!32822 r!7292) (regTwo!32822 r!7292) s!2326) lt!2344763)))

(declare-fun m!7047456 () Bool)

(assert (=> bs!1542352 m!7047456))

(declare-fun m!7047458 () Bool)

(assert (=> bs!1542352 m!7047458))

(declare-fun m!7047460 () Bool)

(assert (=> bs!1542352 m!7047460))

(assert (=> bs!1542352 m!7047440))

(assert (=> b!6218730 d!1949489))

(declare-fun d!1949491 () Bool)

(declare-fun isEmpty!36651 (Option!16046) Bool)

(assert (=> d!1949491 (= (isDefined!12749 (findConcatSeparation!2460 (regOne!32822 r!7292) (regTwo!32822 r!7292) Nil!64640 s!2326 s!2326)) (not (isEmpty!36651 (findConcatSeparation!2460 (regOne!32822 r!7292) (regTwo!32822 r!7292) Nil!64640 s!2326 s!2326))))))

(declare-fun bs!1542353 () Bool)

(assert (= bs!1542353 d!1949491))

(assert (=> bs!1542353 m!7046986))

(declare-fun m!7047462 () Bool)

(assert (=> bs!1542353 m!7047462))

(assert (=> b!6218730 d!1949491))

(declare-fun d!1949493 () Bool)

(declare-fun choose!46218 ((InoxSet Context!11078) Int) (InoxSet Context!11078))

(assert (=> d!1949493 (= (flatMap!1660 z!1189 lambda!339865) (choose!46218 z!1189 lambda!339865))))

(declare-fun bs!1542354 () Bool)

(assert (= bs!1542354 d!1949493))

(declare-fun m!7047464 () Bool)

(assert (=> bs!1542354 m!7047464))

(assert (=> b!6218742 d!1949493))

(declare-fun d!1949495 () Bool)

(declare-fun dynLambda!25503 (Int Context!11078) (InoxSet Context!11078))

(assert (=> d!1949495 (= (flatMap!1660 z!1189 lambda!339865) (dynLambda!25503 lambda!339865 (h!71090 zl!343)))))

(declare-fun lt!2344766 () Unit!157951)

(declare-fun choose!46219 ((InoxSet Context!11078) Context!11078 Int) Unit!157951)

(assert (=> d!1949495 (= lt!2344766 (choose!46219 z!1189 (h!71090 zl!343) lambda!339865))))

(assert (=> d!1949495 (= z!1189 (store ((as const (Array Context!11078 Bool)) false) (h!71090 zl!343) true))))

(assert (=> d!1949495 (= (lemmaFlatMapOnSingletonSet!1186 z!1189 (h!71090 zl!343) lambda!339865) lt!2344766)))

(declare-fun b_lambda!236433 () Bool)

(assert (=> (not b_lambda!236433) (not d!1949495)))

(declare-fun bs!1542355 () Bool)

(assert (= bs!1542355 d!1949495))

(assert (=> bs!1542355 m!7047004))

(declare-fun m!7047466 () Bool)

(assert (=> bs!1542355 m!7047466))

(declare-fun m!7047468 () Bool)

(assert (=> bs!1542355 m!7047468))

(declare-fun m!7047470 () Bool)

(assert (=> bs!1542355 m!7047470))

(assert (=> b!6218742 d!1949495))

(declare-fun d!1949497 () Bool)

(assert (=> d!1949497 (= (nullable!6148 (h!71089 (exprs!6039 (h!71090 zl!343)))) (nullableFct!2104 (h!71089 (exprs!6039 (h!71090 zl!343)))))))

(declare-fun bs!1542356 () Bool)

(assert (= bs!1542356 d!1949497))

(declare-fun m!7047472 () Bool)

(assert (=> bs!1542356 m!7047472))

(assert (=> b!6218742 d!1949497))

(declare-fun b!6219358 () Bool)

(declare-fun e!3785934 () (InoxSet Context!11078))

(declare-fun call!521873 () (InoxSet Context!11078))

(assert (=> b!6219358 (= e!3785934 ((_ map or) call!521873 (derivationStepZipperUp!1329 (Context!11079 (t!378295 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343)))))))) (h!71088 s!2326))))))

(declare-fun b!6219359 () Bool)

(declare-fun e!3785933 () (InoxSet Context!11078))

(assert (=> b!6219359 (= e!3785933 ((as const (Array Context!11078 Bool)) false))))

(declare-fun b!6219360 () Bool)

(assert (=> b!6219360 (= e!3785933 call!521873)))

(declare-fun bm!521868 () Bool)

(assert (=> bm!521868 (= call!521873 (derivationStepZipperDown!1403 (h!71089 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343))))))) (Context!11079 (t!378295 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343)))))))) (h!71088 s!2326)))))

(declare-fun b!6219361 () Bool)

(assert (=> b!6219361 (= e!3785934 e!3785933)))

(declare-fun c!1123613 () Bool)

(assert (=> b!6219361 (= c!1123613 ((_ is Cons!64641) (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343))))))))))

(declare-fun d!1949499 () Bool)

(declare-fun c!1123614 () Bool)

(declare-fun e!3785935 () Bool)

(assert (=> d!1949499 (= c!1123614 e!3785935)))

(declare-fun res!2570664 () Bool)

(assert (=> d!1949499 (=> (not res!2570664) (not e!3785935))))

(assert (=> d!1949499 (= res!2570664 ((_ is Cons!64641) (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343))))))))))

(assert (=> d!1949499 (= (derivationStepZipperUp!1329 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343))))) (h!71088 s!2326)) e!3785934)))

(declare-fun b!6219362 () Bool)

(assert (=> b!6219362 (= e!3785935 (nullable!6148 (h!71089 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343)))))))))))

(assert (= (and d!1949499 res!2570664) b!6219362))

(assert (= (and d!1949499 c!1123614) b!6219358))

(assert (= (and d!1949499 (not c!1123614)) b!6219361))

(assert (= (and b!6219361 c!1123613) b!6219360))

(assert (= (and b!6219361 (not c!1123613)) b!6219359))

(assert (= (or b!6219358 b!6219360) bm!521868))

(declare-fun m!7047474 () Bool)

(assert (=> b!6219358 m!7047474))

(declare-fun m!7047476 () Bool)

(assert (=> bm!521868 m!7047476))

(declare-fun m!7047478 () Bool)

(assert (=> b!6219362 m!7047478))

(assert (=> b!6218742 d!1949499))

(declare-fun call!521874 () (InoxSet Context!11078))

(declare-fun e!3785937 () (InoxSet Context!11078))

(declare-fun b!6219363 () Bool)

(assert (=> b!6219363 (= e!3785937 ((_ map or) call!521874 (derivationStepZipperUp!1329 (Context!11079 (t!378295 (exprs!6039 (h!71090 zl!343)))) (h!71088 s!2326))))))

(declare-fun b!6219364 () Bool)

(declare-fun e!3785936 () (InoxSet Context!11078))

(assert (=> b!6219364 (= e!3785936 ((as const (Array Context!11078 Bool)) false))))

(declare-fun b!6219365 () Bool)

(assert (=> b!6219365 (= e!3785936 call!521874)))

(declare-fun bm!521869 () Bool)

(assert (=> bm!521869 (= call!521874 (derivationStepZipperDown!1403 (h!71089 (exprs!6039 (h!71090 zl!343))) (Context!11079 (t!378295 (exprs!6039 (h!71090 zl!343)))) (h!71088 s!2326)))))

(declare-fun b!6219366 () Bool)

(assert (=> b!6219366 (= e!3785937 e!3785936)))

(declare-fun c!1123615 () Bool)

(assert (=> b!6219366 (= c!1123615 ((_ is Cons!64641) (exprs!6039 (h!71090 zl!343))))))

(declare-fun d!1949501 () Bool)

(declare-fun c!1123616 () Bool)

(declare-fun e!3785938 () Bool)

(assert (=> d!1949501 (= c!1123616 e!3785938)))

(declare-fun res!2570665 () Bool)

(assert (=> d!1949501 (=> (not res!2570665) (not e!3785938))))

(assert (=> d!1949501 (= res!2570665 ((_ is Cons!64641) (exprs!6039 (h!71090 zl!343))))))

(assert (=> d!1949501 (= (derivationStepZipperUp!1329 (h!71090 zl!343) (h!71088 s!2326)) e!3785937)))

(declare-fun b!6219367 () Bool)

(assert (=> b!6219367 (= e!3785938 (nullable!6148 (h!71089 (exprs!6039 (h!71090 zl!343)))))))

(assert (= (and d!1949501 res!2570665) b!6219367))

(assert (= (and d!1949501 c!1123616) b!6219363))

(assert (= (and d!1949501 (not c!1123616)) b!6219366))

(assert (= (and b!6219366 c!1123615) b!6219365))

(assert (= (and b!6219366 (not c!1123615)) b!6219364))

(assert (= (or b!6219363 b!6219365) bm!521869))

(declare-fun m!7047480 () Bool)

(assert (=> b!6219363 m!7047480))

(declare-fun m!7047482 () Bool)

(assert (=> bm!521869 m!7047482))

(assert (=> b!6219367 m!7047006))

(assert (=> b!6218742 d!1949501))

(declare-fun b!6219368 () Bool)

(declare-fun c!1123619 () Bool)

(declare-fun e!3785943 () Bool)

(assert (=> b!6219368 (= c!1123619 e!3785943)))

(declare-fun res!2570666 () Bool)

(assert (=> b!6219368 (=> (not res!2570666) (not e!3785943))))

(assert (=> b!6219368 (= res!2570666 ((_ is Concat!25000) (h!71089 (exprs!6039 (h!71090 zl!343)))))))

(declare-fun e!3785942 () (InoxSet Context!11078))

(declare-fun e!3785941 () (InoxSet Context!11078))

(assert (=> b!6219368 (= e!3785942 e!3785941)))

(declare-fun b!6219369 () Bool)

(declare-fun c!1123617 () Bool)

(assert (=> b!6219369 (= c!1123617 ((_ is Star!16155) (h!71089 (exprs!6039 (h!71090 zl!343)))))))

(declare-fun e!3785940 () (InoxSet Context!11078))

(declare-fun e!3785944 () (InoxSet Context!11078))

(assert (=> b!6219369 (= e!3785940 e!3785944)))

(declare-fun b!6219370 () Bool)

(assert (=> b!6219370 (= e!3785944 ((as const (Array Context!11078 Bool)) false))))

(declare-fun b!6219371 () Bool)

(declare-fun call!521879 () (InoxSet Context!11078))

(declare-fun call!521880 () (InoxSet Context!11078))

(assert (=> b!6219371 (= e!3785941 ((_ map or) call!521879 call!521880))))

(declare-fun b!6219372 () Bool)

(declare-fun call!521878 () (InoxSet Context!11078))

(assert (=> b!6219372 (= e!3785944 call!521878)))

(declare-fun b!6219373 () Bool)

(assert (=> b!6219373 (= e!3785941 e!3785940)))

(declare-fun c!1123618 () Bool)

(assert (=> b!6219373 (= c!1123618 ((_ is Concat!25000) (h!71089 (exprs!6039 (h!71090 zl!343)))))))

(declare-fun d!1949503 () Bool)

(declare-fun c!1123621 () Bool)

(assert (=> d!1949503 (= c!1123621 (and ((_ is ElementMatch!16155) (h!71089 (exprs!6039 (h!71090 zl!343)))) (= (c!1123433 (h!71089 (exprs!6039 (h!71090 zl!343)))) (h!71088 s!2326))))))

(declare-fun e!3785939 () (InoxSet Context!11078))

(assert (=> d!1949503 (= (derivationStepZipperDown!1403 (h!71089 (exprs!6039 (h!71090 zl!343))) lt!2344673 (h!71088 s!2326)) e!3785939)))

(declare-fun bm!521870 () Bool)

(assert (=> bm!521870 (= call!521878 call!521880)))

(declare-fun b!6219374 () Bool)

(assert (=> b!6219374 (= e!3785943 (nullable!6148 (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343))))))))

(declare-fun bm!521871 () Bool)

(declare-fun call!521876 () (InoxSet Context!11078))

(assert (=> bm!521871 (= call!521880 call!521876)))

(declare-fun call!521875 () List!64765)

(declare-fun bm!521872 () Bool)

(declare-fun c!1123620 () Bool)

(assert (=> bm!521872 (= call!521876 (derivationStepZipperDown!1403 (ite c!1123620 (regOne!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123619 (regTwo!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123618 (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (reg!16484 (h!71089 (exprs!6039 (h!71090 zl!343))))))) (ite (or c!1123620 c!1123619) lt!2344673 (Context!11079 call!521875)) (h!71088 s!2326)))))

(declare-fun call!521877 () List!64765)

(declare-fun bm!521873 () Bool)

(assert (=> bm!521873 (= call!521879 (derivationStepZipperDown!1403 (ite c!1123620 (regTwo!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343))))) (ite c!1123620 lt!2344673 (Context!11079 call!521877)) (h!71088 s!2326)))))

(declare-fun b!6219375 () Bool)

(assert (=> b!6219375 (= e!3785939 e!3785942)))

(assert (=> b!6219375 (= c!1123620 ((_ is Union!16155) (h!71089 (exprs!6039 (h!71090 zl!343)))))))

(declare-fun b!6219376 () Bool)

(assert (=> b!6219376 (= e!3785942 ((_ map or) call!521876 call!521879))))

(declare-fun bm!521874 () Bool)

(assert (=> bm!521874 (= call!521875 call!521877)))

(declare-fun bm!521875 () Bool)

(assert (=> bm!521875 (= call!521877 ($colon$colon!2024 (exprs!6039 lt!2344673) (ite (or c!1123619 c!1123618) (regTwo!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (h!71089 (exprs!6039 (h!71090 zl!343))))))))

(declare-fun b!6219377 () Bool)

(assert (=> b!6219377 (= e!3785939 (store ((as const (Array Context!11078 Bool)) false) lt!2344673 true))))

(declare-fun b!6219378 () Bool)

(assert (=> b!6219378 (= e!3785940 call!521878)))

(assert (= (and d!1949503 c!1123621) b!6219377))

(assert (= (and d!1949503 (not c!1123621)) b!6219375))

(assert (= (and b!6219375 c!1123620) b!6219376))

(assert (= (and b!6219375 (not c!1123620)) b!6219368))

(assert (= (and b!6219368 res!2570666) b!6219374))

(assert (= (and b!6219368 c!1123619) b!6219371))

(assert (= (and b!6219368 (not c!1123619)) b!6219373))

(assert (= (and b!6219373 c!1123618) b!6219378))

(assert (= (and b!6219373 (not c!1123618)) b!6219369))

(assert (= (and b!6219369 c!1123617) b!6219372))

(assert (= (and b!6219369 (not c!1123617)) b!6219370))

(assert (= (or b!6219378 b!6219372) bm!521874))

(assert (= (or b!6219378 b!6219372) bm!521870))

(assert (= (or b!6219371 bm!521874) bm!521875))

(assert (= (or b!6219371 bm!521870) bm!521871))

(assert (= (or b!6219376 b!6219371) bm!521873))

(assert (= (or b!6219376 bm!521871) bm!521872))

(declare-fun m!7047484 () Bool)

(assert (=> b!6219374 m!7047484))

(declare-fun m!7047486 () Bool)

(assert (=> bm!521872 m!7047486))

(declare-fun m!7047488 () Bool)

(assert (=> bm!521875 m!7047488))

(assert (=> b!6219377 m!7047376))

(declare-fun m!7047490 () Bool)

(assert (=> bm!521873 m!7047490))

(assert (=> b!6218742 d!1949503))

(declare-fun call!521881 () (InoxSet Context!11078))

(declare-fun b!6219379 () Bool)

(declare-fun e!3785946 () (InoxSet Context!11078))

(assert (=> b!6219379 (= e!3785946 ((_ map or) call!521881 (derivationStepZipperUp!1329 (Context!11079 (t!378295 (exprs!6039 lt!2344673))) (h!71088 s!2326))))))

(declare-fun b!6219380 () Bool)

(declare-fun e!3785945 () (InoxSet Context!11078))

(assert (=> b!6219380 (= e!3785945 ((as const (Array Context!11078 Bool)) false))))

(declare-fun b!6219381 () Bool)

(assert (=> b!6219381 (= e!3785945 call!521881)))

(declare-fun bm!521876 () Bool)

(assert (=> bm!521876 (= call!521881 (derivationStepZipperDown!1403 (h!71089 (exprs!6039 lt!2344673)) (Context!11079 (t!378295 (exprs!6039 lt!2344673))) (h!71088 s!2326)))))

(declare-fun b!6219382 () Bool)

(assert (=> b!6219382 (= e!3785946 e!3785945)))

(declare-fun c!1123622 () Bool)

(assert (=> b!6219382 (= c!1123622 ((_ is Cons!64641) (exprs!6039 lt!2344673)))))

(declare-fun d!1949505 () Bool)

(declare-fun c!1123623 () Bool)

(declare-fun e!3785947 () Bool)

(assert (=> d!1949505 (= c!1123623 e!3785947)))

(declare-fun res!2570667 () Bool)

(assert (=> d!1949505 (=> (not res!2570667) (not e!3785947))))

(assert (=> d!1949505 (= res!2570667 ((_ is Cons!64641) (exprs!6039 lt!2344673)))))

(assert (=> d!1949505 (= (derivationStepZipperUp!1329 lt!2344673 (h!71088 s!2326)) e!3785946)))

(declare-fun b!6219383 () Bool)

(assert (=> b!6219383 (= e!3785947 (nullable!6148 (h!71089 (exprs!6039 lt!2344673))))))

(assert (= (and d!1949505 res!2570667) b!6219383))

(assert (= (and d!1949505 c!1123623) b!6219379))

(assert (= (and d!1949505 (not c!1123623)) b!6219382))

(assert (= (and b!6219382 c!1123622) b!6219381))

(assert (= (and b!6219382 (not c!1123622)) b!6219380))

(assert (= (or b!6219379 b!6219381) bm!521876))

(declare-fun m!7047492 () Bool)

(assert (=> b!6219379 m!7047492))

(declare-fun m!7047494 () Bool)

(assert (=> bm!521876 m!7047494))

(declare-fun m!7047496 () Bool)

(assert (=> b!6219383 m!7047496))

(assert (=> b!6218742 d!1949505))

(declare-fun d!1949507 () Bool)

(declare-fun lt!2344769 () Regex!16155)

(assert (=> d!1949507 (validRegex!7891 lt!2344769)))

(assert (=> d!1949507 (= lt!2344769 (generalisedUnion!1999 (unfocusZipperList!1576 zl!343)))))

(assert (=> d!1949507 (= (unfocusZipper!1897 zl!343) lt!2344769)))

(declare-fun bs!1542357 () Bool)

(assert (= bs!1542357 d!1949507))

(declare-fun m!7047498 () Bool)

(assert (=> bs!1542357 m!7047498))

(assert (=> bs!1542357 m!7047012))

(assert (=> bs!1542357 m!7047012))

(assert (=> bs!1542357 m!7047014))

(assert (=> b!6218753 d!1949507))

(declare-fun d!1949509 () Bool)

(assert (=> d!1949509 (= (flatMap!1660 lt!2344681 lambda!339865) (choose!46218 lt!2344681 lambda!339865))))

(declare-fun bs!1542358 () Bool)

(assert (= bs!1542358 d!1949509))

(declare-fun m!7047500 () Bool)

(assert (=> bs!1542358 m!7047500))

(assert (=> b!6218752 d!1949509))

(declare-fun b!6219384 () Bool)

(declare-fun call!521882 () (InoxSet Context!11078))

(declare-fun e!3785949 () (InoxSet Context!11078))

(assert (=> b!6219384 (= e!3785949 ((_ map or) call!521882 (derivationStepZipperUp!1329 (Context!11079 (t!378295 (exprs!6039 lt!2344687))) (h!71088 s!2326))))))

(declare-fun b!6219385 () Bool)

(declare-fun e!3785948 () (InoxSet Context!11078))

(assert (=> b!6219385 (= e!3785948 ((as const (Array Context!11078 Bool)) false))))

(declare-fun b!6219386 () Bool)

(assert (=> b!6219386 (= e!3785948 call!521882)))

(declare-fun bm!521877 () Bool)

(assert (=> bm!521877 (= call!521882 (derivationStepZipperDown!1403 (h!71089 (exprs!6039 lt!2344687)) (Context!11079 (t!378295 (exprs!6039 lt!2344687))) (h!71088 s!2326)))))

(declare-fun b!6219387 () Bool)

(assert (=> b!6219387 (= e!3785949 e!3785948)))

(declare-fun c!1123624 () Bool)

(assert (=> b!6219387 (= c!1123624 ((_ is Cons!64641) (exprs!6039 lt!2344687)))))

(declare-fun d!1949511 () Bool)

(declare-fun c!1123625 () Bool)

(declare-fun e!3785950 () Bool)

(assert (=> d!1949511 (= c!1123625 e!3785950)))

(declare-fun res!2570668 () Bool)

(assert (=> d!1949511 (=> (not res!2570668) (not e!3785950))))

(assert (=> d!1949511 (= res!2570668 ((_ is Cons!64641) (exprs!6039 lt!2344687)))))

(assert (=> d!1949511 (= (derivationStepZipperUp!1329 lt!2344687 (h!71088 s!2326)) e!3785949)))

(declare-fun b!6219388 () Bool)

(assert (=> b!6219388 (= e!3785950 (nullable!6148 (h!71089 (exprs!6039 lt!2344687))))))

(assert (= (and d!1949511 res!2570668) b!6219388))

(assert (= (and d!1949511 c!1123625) b!6219384))

(assert (= (and d!1949511 (not c!1123625)) b!6219387))

(assert (= (and b!6219387 c!1123624) b!6219386))

(assert (= (and b!6219387 (not c!1123624)) b!6219385))

(assert (= (or b!6219384 b!6219386) bm!521877))

(declare-fun m!7047502 () Bool)

(assert (=> b!6219384 m!7047502))

(declare-fun m!7047504 () Bool)

(assert (=> bm!521877 m!7047504))

(declare-fun m!7047506 () Bool)

(assert (=> b!6219388 m!7047506))

(assert (=> b!6218752 d!1949511))

(declare-fun d!1949513 () Bool)

(assert (=> d!1949513 (= (flatMap!1660 lt!2344681 lambda!339865) (dynLambda!25503 lambda!339865 lt!2344687))))

(declare-fun lt!2344770 () Unit!157951)

(assert (=> d!1949513 (= lt!2344770 (choose!46219 lt!2344681 lt!2344687 lambda!339865))))

(assert (=> d!1949513 (= lt!2344681 (store ((as const (Array Context!11078 Bool)) false) lt!2344687 true))))

(assert (=> d!1949513 (= (lemmaFlatMapOnSingletonSet!1186 lt!2344681 lt!2344687 lambda!339865) lt!2344770)))

(declare-fun b_lambda!236435 () Bool)

(assert (=> (not b_lambda!236435) (not d!1949513)))

(declare-fun bs!1542359 () Bool)

(assert (= bs!1542359 d!1949513))

(assert (=> bs!1542359 m!7047036))

(declare-fun m!7047508 () Bool)

(assert (=> bs!1542359 m!7047508))

(declare-fun m!7047510 () Bool)

(assert (=> bs!1542359 m!7047510))

(assert (=> bs!1542359 m!7047032))

(assert (=> b!6218752 d!1949513))

(declare-fun bs!1542360 () Bool)

(declare-fun d!1949515 () Bool)

(assert (= bs!1542360 (and d!1949515 b!6218742)))

(declare-fun lambda!339922 () Int)

(assert (=> bs!1542360 (= lambda!339922 lambda!339865)))

(assert (=> d!1949515 true))

(assert (=> d!1949515 (= (derivationStepZipper!2121 lt!2344681 (h!71088 s!2326)) (flatMap!1660 lt!2344681 lambda!339922))))

(declare-fun bs!1542361 () Bool)

(assert (= bs!1542361 d!1949515))

(declare-fun m!7047512 () Bool)

(assert (=> bs!1542361 m!7047512))

(assert (=> b!6218752 d!1949515))

(declare-fun e!3785952 () (InoxSet Context!11078))

(declare-fun call!521883 () (InoxSet Context!11078))

(declare-fun b!6219391 () Bool)

(assert (=> b!6219391 (= e!3785952 ((_ map or) call!521883 (derivationStepZipperUp!1329 (Context!11079 (t!378295 (exprs!6039 lt!2344676))) (h!71088 s!2326))))))

(declare-fun b!6219392 () Bool)

(declare-fun e!3785951 () (InoxSet Context!11078))

(assert (=> b!6219392 (= e!3785951 ((as const (Array Context!11078 Bool)) false))))

(declare-fun b!6219393 () Bool)

(assert (=> b!6219393 (= e!3785951 call!521883)))

(declare-fun bm!521878 () Bool)

(assert (=> bm!521878 (= call!521883 (derivationStepZipperDown!1403 (h!71089 (exprs!6039 lt!2344676)) (Context!11079 (t!378295 (exprs!6039 lt!2344676))) (h!71088 s!2326)))))

(declare-fun b!6219394 () Bool)

(assert (=> b!6219394 (= e!3785952 e!3785951)))

(declare-fun c!1123628 () Bool)

(assert (=> b!6219394 (= c!1123628 ((_ is Cons!64641) (exprs!6039 lt!2344676)))))

(declare-fun d!1949517 () Bool)

(declare-fun c!1123629 () Bool)

(declare-fun e!3785953 () Bool)

(assert (=> d!1949517 (= c!1123629 e!3785953)))

(declare-fun res!2570669 () Bool)

(assert (=> d!1949517 (=> (not res!2570669) (not e!3785953))))

(assert (=> d!1949517 (= res!2570669 ((_ is Cons!64641) (exprs!6039 lt!2344676)))))

(assert (=> d!1949517 (= (derivationStepZipperUp!1329 lt!2344676 (h!71088 s!2326)) e!3785952)))

(declare-fun b!6219395 () Bool)

(assert (=> b!6219395 (= e!3785953 (nullable!6148 (h!71089 (exprs!6039 lt!2344676))))))

(assert (= (and d!1949517 res!2570669) b!6219395))

(assert (= (and d!1949517 c!1123629) b!6219391))

(assert (= (and d!1949517 (not c!1123629)) b!6219394))

(assert (= (and b!6219394 c!1123628) b!6219393))

(assert (= (and b!6219394 (not c!1123628)) b!6219392))

(assert (= (or b!6219391 b!6219393) bm!521878))

(declare-fun m!7047514 () Bool)

(assert (=> b!6219391 m!7047514))

(declare-fun m!7047516 () Bool)

(assert (=> bm!521878 m!7047516))

(declare-fun m!7047518 () Bool)

(assert (=> b!6219395 m!7047518))

(assert (=> b!6218752 d!1949517))

(declare-fun bs!1542362 () Bool)

(declare-fun b!6219432 () Bool)

(assert (= bs!1542362 (and b!6219432 b!6218730)))

(declare-fun lambda!339927 () Int)

(assert (=> bs!1542362 (not (= lambda!339927 lambda!339863))))

(declare-fun bs!1542363 () Bool)

(assert (= bs!1542363 (and b!6219432 d!1949487)))

(assert (=> bs!1542363 (not (= lambda!339927 lambda!339913))))

(declare-fun bs!1542364 () Bool)

(assert (= bs!1542364 (and b!6219432 d!1949489)))

(assert (=> bs!1542364 (not (= lambda!339927 lambda!339918))))

(assert (=> bs!1542364 (not (= lambda!339927 lambda!339919))))

(assert (=> bs!1542362 (not (= lambda!339927 lambda!339864))))

(assert (=> b!6219432 true))

(assert (=> b!6219432 true))

(declare-fun bs!1542365 () Bool)

(declare-fun b!6219438 () Bool)

(assert (= bs!1542365 (and b!6219438 b!6218730)))

(declare-fun lambda!339928 () Int)

(assert (=> bs!1542365 (not (= lambda!339928 lambda!339863))))

(declare-fun bs!1542366 () Bool)

(assert (= bs!1542366 (and b!6219438 d!1949487)))

(assert (=> bs!1542366 (not (= lambda!339928 lambda!339913))))

(declare-fun bs!1542367 () Bool)

(assert (= bs!1542367 (and b!6219438 b!6219432)))

(assert (=> bs!1542367 (not (= lambda!339928 lambda!339927))))

(declare-fun bs!1542368 () Bool)

(assert (= bs!1542368 (and b!6219438 d!1949489)))

(assert (=> bs!1542368 (not (= lambda!339928 lambda!339918))))

(assert (=> bs!1542368 (= lambda!339928 lambda!339919)))

(assert (=> bs!1542365 (= lambda!339928 lambda!339864)))

(assert (=> b!6219438 true))

(assert (=> b!6219438 true))

(declare-fun b!6219428 () Bool)

(declare-fun e!3785972 () Bool)

(assert (=> b!6219428 (= e!3785972 (matchRSpec!3256 (regTwo!32823 r!7292) s!2326))))

(declare-fun b!6219429 () Bool)

(declare-fun e!3785976 () Bool)

(declare-fun e!3785977 () Bool)

(assert (=> b!6219429 (= e!3785976 e!3785977)))

(declare-fun c!1123639 () Bool)

(assert (=> b!6219429 (= c!1123639 ((_ is Star!16155) r!7292))))

(declare-fun b!6219430 () Bool)

(declare-fun e!3785974 () Bool)

(declare-fun e!3785973 () Bool)

(assert (=> b!6219430 (= e!3785974 e!3785973)))

(declare-fun res!2570687 () Bool)

(assert (=> b!6219430 (= res!2570687 (not ((_ is EmptyLang!16155) r!7292)))))

(assert (=> b!6219430 (=> (not res!2570687) (not e!3785973))))

(declare-fun b!6219431 () Bool)

(declare-fun c!1123638 () Bool)

(assert (=> b!6219431 (= c!1123638 ((_ is Union!16155) r!7292))))

(declare-fun e!3785978 () Bool)

(assert (=> b!6219431 (= e!3785978 e!3785976)))

(declare-fun e!3785975 () Bool)

(declare-fun call!521888 () Bool)

(assert (=> b!6219432 (= e!3785975 call!521888)))

(declare-fun b!6219433 () Bool)

(assert (=> b!6219433 (= e!3785976 e!3785972)))

(declare-fun res!2570686 () Bool)

(assert (=> b!6219433 (= res!2570686 (matchRSpec!3256 (regOne!32823 r!7292) s!2326))))

(assert (=> b!6219433 (=> res!2570686 e!3785972)))

(declare-fun b!6219434 () Bool)

(declare-fun c!1123640 () Bool)

(assert (=> b!6219434 (= c!1123640 ((_ is ElementMatch!16155) r!7292))))

(assert (=> b!6219434 (= e!3785973 e!3785978)))

(declare-fun bm!521883 () Bool)

(declare-fun call!521889 () Bool)

(assert (=> bm!521883 (= call!521889 (isEmpty!36649 s!2326))))

(declare-fun bm!521884 () Bool)

(assert (=> bm!521884 (= call!521888 (Exists!3225 (ite c!1123639 lambda!339927 lambda!339928)))))

(declare-fun b!6219435 () Bool)

(assert (=> b!6219435 (= e!3785974 call!521889)))

(declare-fun b!6219437 () Bool)

(assert (=> b!6219437 (= e!3785978 (= s!2326 (Cons!64640 (c!1123433 r!7292) Nil!64640)))))

(assert (=> b!6219438 (= e!3785977 call!521888)))

(declare-fun d!1949519 () Bool)

(declare-fun c!1123641 () Bool)

(assert (=> d!1949519 (= c!1123641 ((_ is EmptyExpr!16155) r!7292))))

(assert (=> d!1949519 (= (matchRSpec!3256 r!7292 s!2326) e!3785974)))

(declare-fun b!6219436 () Bool)

(declare-fun res!2570688 () Bool)

(assert (=> b!6219436 (=> res!2570688 e!3785975)))

(assert (=> b!6219436 (= res!2570688 call!521889)))

(assert (=> b!6219436 (= e!3785977 e!3785975)))

(assert (= (and d!1949519 c!1123641) b!6219435))

(assert (= (and d!1949519 (not c!1123641)) b!6219430))

(assert (= (and b!6219430 res!2570687) b!6219434))

(assert (= (and b!6219434 c!1123640) b!6219437))

(assert (= (and b!6219434 (not c!1123640)) b!6219431))

(assert (= (and b!6219431 c!1123638) b!6219433))

(assert (= (and b!6219431 (not c!1123638)) b!6219429))

(assert (= (and b!6219433 (not res!2570686)) b!6219428))

(assert (= (and b!6219429 c!1123639) b!6219436))

(assert (= (and b!6219429 (not c!1123639)) b!6219438))

(assert (= (and b!6219436 (not res!2570688)) b!6219432))

(assert (= (or b!6219432 b!6219438) bm!521884))

(assert (= (or b!6219435 b!6219436) bm!521883))

(declare-fun m!7047520 () Bool)

(assert (=> b!6219428 m!7047520))

(declare-fun m!7047522 () Bool)

(assert (=> b!6219433 m!7047522))

(declare-fun m!7047524 () Bool)

(assert (=> bm!521883 m!7047524))

(declare-fun m!7047526 () Bool)

(assert (=> bm!521884 m!7047526))

(assert (=> b!6218731 d!1949519))

(declare-fun b!6219467 () Bool)

(declare-fun e!3785993 () Bool)

(assert (=> b!6219467 (= e!3785993 (= (head!12818 s!2326) (c!1123433 r!7292)))))

(declare-fun b!6219468 () Bool)

(declare-fun e!3785996 () Bool)

(declare-fun e!3785999 () Bool)

(assert (=> b!6219468 (= e!3785996 e!3785999)))

(declare-fun c!1123649 () Bool)

(assert (=> b!6219468 (= c!1123649 ((_ is EmptyLang!16155) r!7292))))

(declare-fun b!6219469 () Bool)

(declare-fun res!2570709 () Bool)

(assert (=> b!6219469 (=> (not res!2570709) (not e!3785993))))

(declare-fun call!521892 () Bool)

(assert (=> b!6219469 (= res!2570709 (not call!521892))))

(declare-fun b!6219470 () Bool)

(declare-fun e!3785995 () Bool)

(declare-fun e!3785998 () Bool)

(assert (=> b!6219470 (= e!3785995 e!3785998)))

(declare-fun res!2570712 () Bool)

(assert (=> b!6219470 (=> (not res!2570712) (not e!3785998))))

(declare-fun lt!2344773 () Bool)

(assert (=> b!6219470 (= res!2570712 (not lt!2344773))))

(declare-fun b!6219471 () Bool)

(declare-fun e!3785997 () Bool)

(assert (=> b!6219471 (= e!3785997 (nullable!6148 r!7292))))

(declare-fun b!6219472 () Bool)

(declare-fun res!2570706 () Bool)

(assert (=> b!6219472 (=> (not res!2570706) (not e!3785993))))

(assert (=> b!6219472 (= res!2570706 (isEmpty!36649 (tail!11903 s!2326)))))

(declare-fun d!1949521 () Bool)

(assert (=> d!1949521 e!3785996))

(declare-fun c!1123650 () Bool)

(assert (=> d!1949521 (= c!1123650 ((_ is EmptyExpr!16155) r!7292))))

(assert (=> d!1949521 (= lt!2344773 e!3785997)))

(declare-fun c!1123648 () Bool)

(assert (=> d!1949521 (= c!1123648 (isEmpty!36649 s!2326))))

(assert (=> d!1949521 (validRegex!7891 r!7292)))

(assert (=> d!1949521 (= (matchR!8338 r!7292 s!2326) lt!2344773)))

(declare-fun b!6219473 () Bool)

(assert (=> b!6219473 (= e!3785996 (= lt!2344773 call!521892))))

(declare-fun b!6219474 () Bool)

(declare-fun e!3785994 () Bool)

(assert (=> b!6219474 (= e!3785998 e!3785994)))

(declare-fun res!2570710 () Bool)

(assert (=> b!6219474 (=> res!2570710 e!3785994)))

(assert (=> b!6219474 (= res!2570710 call!521892)))

(declare-fun b!6219475 () Bool)

(declare-fun res!2570707 () Bool)

(assert (=> b!6219475 (=> res!2570707 e!3785994)))

(assert (=> b!6219475 (= res!2570707 (not (isEmpty!36649 (tail!11903 s!2326))))))

(declare-fun b!6219476 () Bool)

(declare-fun res!2570711 () Bool)

(assert (=> b!6219476 (=> res!2570711 e!3785995)))

(assert (=> b!6219476 (= res!2570711 (not ((_ is ElementMatch!16155) r!7292)))))

(assert (=> b!6219476 (= e!3785999 e!3785995)))

(declare-fun b!6219477 () Bool)

(assert (=> b!6219477 (= e!3785994 (not (= (head!12818 s!2326) (c!1123433 r!7292))))))

(declare-fun b!6219478 () Bool)

(declare-fun res!2570705 () Bool)

(assert (=> b!6219478 (=> res!2570705 e!3785995)))

(assert (=> b!6219478 (= res!2570705 e!3785993)))

(declare-fun res!2570708 () Bool)

(assert (=> b!6219478 (=> (not res!2570708) (not e!3785993))))

(assert (=> b!6219478 (= res!2570708 lt!2344773)))

(declare-fun bm!521887 () Bool)

(assert (=> bm!521887 (= call!521892 (isEmpty!36649 s!2326))))

(declare-fun b!6219479 () Bool)

(assert (=> b!6219479 (= e!3785999 (not lt!2344773))))

(declare-fun b!6219480 () Bool)

(declare-fun derivativeStep!4868 (Regex!16155 C!32580) Regex!16155)

(assert (=> b!6219480 (= e!3785997 (matchR!8338 (derivativeStep!4868 r!7292 (head!12818 s!2326)) (tail!11903 s!2326)))))

(assert (= (and d!1949521 c!1123648) b!6219471))

(assert (= (and d!1949521 (not c!1123648)) b!6219480))

(assert (= (and d!1949521 c!1123650) b!6219473))

(assert (= (and d!1949521 (not c!1123650)) b!6219468))

(assert (= (and b!6219468 c!1123649) b!6219479))

(assert (= (and b!6219468 (not c!1123649)) b!6219476))

(assert (= (and b!6219476 (not res!2570711)) b!6219478))

(assert (= (and b!6219478 res!2570708) b!6219469))

(assert (= (and b!6219469 res!2570709) b!6219472))

(assert (= (and b!6219472 res!2570706) b!6219467))

(assert (= (and b!6219478 (not res!2570705)) b!6219470))

(assert (= (and b!6219470 res!2570712) b!6219474))

(assert (= (and b!6219474 (not res!2570710)) b!6219475))

(assert (= (and b!6219475 (not res!2570707)) b!6219477))

(assert (= (or b!6219473 b!6219469 b!6219474) bm!521887))

(assert (=> d!1949521 m!7047524))

(assert (=> d!1949521 m!7046970))

(declare-fun m!7047528 () Bool)

(assert (=> b!6219471 m!7047528))

(declare-fun m!7047530 () Bool)

(assert (=> b!6219472 m!7047530))

(assert (=> b!6219472 m!7047530))

(declare-fun m!7047532 () Bool)

(assert (=> b!6219472 m!7047532))

(assert (=> b!6219475 m!7047530))

(assert (=> b!6219475 m!7047530))

(assert (=> b!6219475 m!7047532))

(declare-fun m!7047534 () Bool)

(assert (=> b!6219480 m!7047534))

(assert (=> b!6219480 m!7047534))

(declare-fun m!7047536 () Bool)

(assert (=> b!6219480 m!7047536))

(assert (=> b!6219480 m!7047530))

(assert (=> b!6219480 m!7047536))

(assert (=> b!6219480 m!7047530))

(declare-fun m!7047538 () Bool)

(assert (=> b!6219480 m!7047538))

(assert (=> b!6219477 m!7047534))

(assert (=> b!6219467 m!7047534))

(assert (=> bm!521887 m!7047524))

(assert (=> b!6218731 d!1949521))

(declare-fun d!1949523 () Bool)

(assert (=> d!1949523 (= (matchR!8338 r!7292 s!2326) (matchRSpec!3256 r!7292 s!2326))))

(declare-fun lt!2344776 () Unit!157951)

(declare-fun choose!46220 (Regex!16155 List!64764) Unit!157951)

(assert (=> d!1949523 (= lt!2344776 (choose!46220 r!7292 s!2326))))

(assert (=> d!1949523 (validRegex!7891 r!7292)))

(assert (=> d!1949523 (= (mainMatchTheorem!3256 r!7292 s!2326) lt!2344776)))

(declare-fun bs!1542369 () Bool)

(assert (= bs!1542369 d!1949523))

(assert (=> bs!1542369 m!7046964))

(assert (=> bs!1542369 m!7046962))

(declare-fun m!7047540 () Bool)

(assert (=> bs!1542369 m!7047540))

(assert (=> bs!1542369 m!7046970))

(assert (=> b!6218731 d!1949523))

(declare-fun bs!1542370 () Bool)

(declare-fun d!1949525 () Bool)

(assert (= bs!1542370 (and d!1949525 d!1949453)))

(declare-fun lambda!339929 () Int)

(assert (=> bs!1542370 (= lambda!339929 lambda!339903)))

(declare-fun bs!1542371 () Bool)

(assert (= bs!1542371 (and d!1949525 d!1949475)))

(assert (=> bs!1542371 (= lambda!339929 lambda!339907)))

(declare-fun bs!1542372 () Bool)

(assert (= bs!1542372 (and d!1949525 d!1949451)))

(assert (=> bs!1542372 (= lambda!339929 lambda!339900)))

(declare-fun bs!1542373 () Bool)

(assert (= bs!1542373 (and d!1949525 d!1949479)))

(assert (=> bs!1542373 (= lambda!339929 lambda!339910)))

(declare-fun bs!1542374 () Bool)

(assert (= bs!1542374 (and d!1949525 d!1949473)))

(assert (=> bs!1542374 (= lambda!339929 lambda!339906)))

(assert (=> d!1949525 (= (inv!83634 lt!2344676) (forall!15269 (exprs!6039 lt!2344676) lambda!339929))))

(declare-fun bs!1542375 () Bool)

(assert (= bs!1542375 d!1949525))

(declare-fun m!7047542 () Bool)

(assert (=> bs!1542375 m!7047542))

(assert (=> b!6218754 d!1949525))

(assert (=> b!6218732 d!1949457))

(declare-fun d!1949527 () Bool)

(declare-fun c!1123651 () Bool)

(assert (=> d!1949527 (= c!1123651 (isEmpty!36649 (t!378294 s!2326)))))

(declare-fun e!3786000 () Bool)

(assert (=> d!1949527 (= (matchZipper!2167 lt!2344678 (t!378294 s!2326)) e!3786000)))

(declare-fun b!6219481 () Bool)

(assert (=> b!6219481 (= e!3786000 (nullableZipper!1929 lt!2344678))))

(declare-fun b!6219482 () Bool)

(assert (=> b!6219482 (= e!3786000 (matchZipper!2167 (derivationStepZipper!2121 lt!2344678 (head!12818 (t!378294 s!2326))) (tail!11903 (t!378294 s!2326))))))

(assert (= (and d!1949527 c!1123651) b!6219481))

(assert (= (and d!1949527 (not c!1123651)) b!6219482))

(assert (=> d!1949527 m!7047304))

(declare-fun m!7047544 () Bool)

(assert (=> b!6219481 m!7047544))

(assert (=> b!6219482 m!7047308))

(assert (=> b!6219482 m!7047308))

(declare-fun m!7047546 () Bool)

(assert (=> b!6219482 m!7047546))

(assert (=> b!6219482 m!7047312))

(assert (=> b!6219482 m!7047546))

(assert (=> b!6219482 m!7047312))

(declare-fun m!7047548 () Bool)

(assert (=> b!6219482 m!7047548))

(assert (=> b!6218743 d!1949527))

(declare-fun b!6219490 () Bool)

(declare-fun e!3786006 () Bool)

(declare-fun tp!1735005 () Bool)

(assert (=> b!6219490 (= e!3786006 tp!1735005)))

(declare-fun b!6219489 () Bool)

(declare-fun tp!1735006 () Bool)

(declare-fun e!3786005 () Bool)

(assert (=> b!6219489 (= e!3786005 (and (inv!83634 (h!71090 (t!378296 zl!343))) e!3786006 tp!1735006))))

(assert (=> b!6218750 (= tp!1734938 e!3786005)))

(assert (= b!6219489 b!6219490))

(assert (= (and b!6218750 ((_ is Cons!64642) (t!378296 zl!343))) b!6219489))

(declare-fun m!7047550 () Bool)

(assert (=> b!6219489 m!7047550))

(declare-fun b!6219504 () Bool)

(declare-fun e!3786009 () Bool)

(declare-fun tp!1735018 () Bool)

(declare-fun tp!1735020 () Bool)

(assert (=> b!6219504 (= e!3786009 (and tp!1735018 tp!1735020))))

(assert (=> b!6218758 (= tp!1734942 e!3786009)))

(declare-fun b!6219501 () Bool)

(assert (=> b!6219501 (= e!3786009 tp_is_empty!41563)))

(declare-fun b!6219503 () Bool)

(declare-fun tp!1735019 () Bool)

(assert (=> b!6219503 (= e!3786009 tp!1735019)))

(declare-fun b!6219502 () Bool)

(declare-fun tp!1735021 () Bool)

(declare-fun tp!1735017 () Bool)

(assert (=> b!6219502 (= e!3786009 (and tp!1735021 tp!1735017))))

(assert (= (and b!6218758 ((_ is ElementMatch!16155) (regOne!32823 r!7292))) b!6219501))

(assert (= (and b!6218758 ((_ is Concat!25000) (regOne!32823 r!7292))) b!6219502))

(assert (= (and b!6218758 ((_ is Star!16155) (regOne!32823 r!7292))) b!6219503))

(assert (= (and b!6218758 ((_ is Union!16155) (regOne!32823 r!7292))) b!6219504))

(declare-fun b!6219508 () Bool)

(declare-fun e!3786010 () Bool)

(declare-fun tp!1735023 () Bool)

(declare-fun tp!1735025 () Bool)

(assert (=> b!6219508 (= e!3786010 (and tp!1735023 tp!1735025))))

(assert (=> b!6218758 (= tp!1734939 e!3786010)))

(declare-fun b!6219505 () Bool)

(assert (=> b!6219505 (= e!3786010 tp_is_empty!41563)))

(declare-fun b!6219507 () Bool)

(declare-fun tp!1735024 () Bool)

(assert (=> b!6219507 (= e!3786010 tp!1735024)))

(declare-fun b!6219506 () Bool)

(declare-fun tp!1735026 () Bool)

(declare-fun tp!1735022 () Bool)

(assert (=> b!6219506 (= e!3786010 (and tp!1735026 tp!1735022))))

(assert (= (and b!6218758 ((_ is ElementMatch!16155) (regTwo!32823 r!7292))) b!6219505))

(assert (= (and b!6218758 ((_ is Concat!25000) (regTwo!32823 r!7292))) b!6219506))

(assert (= (and b!6218758 ((_ is Star!16155) (regTwo!32823 r!7292))) b!6219507))

(assert (= (and b!6218758 ((_ is Union!16155) (regTwo!32823 r!7292))) b!6219508))

(declare-fun b!6219512 () Bool)

(declare-fun e!3786011 () Bool)

(declare-fun tp!1735028 () Bool)

(declare-fun tp!1735030 () Bool)

(assert (=> b!6219512 (= e!3786011 (and tp!1735028 tp!1735030))))

(assert (=> b!6218746 (= tp!1734937 e!3786011)))

(declare-fun b!6219509 () Bool)

(assert (=> b!6219509 (= e!3786011 tp_is_empty!41563)))

(declare-fun b!6219511 () Bool)

(declare-fun tp!1735029 () Bool)

(assert (=> b!6219511 (= e!3786011 tp!1735029)))

(declare-fun b!6219510 () Bool)

(declare-fun tp!1735031 () Bool)

(declare-fun tp!1735027 () Bool)

(assert (=> b!6219510 (= e!3786011 (and tp!1735031 tp!1735027))))

(assert (= (and b!6218746 ((_ is ElementMatch!16155) (regOne!32822 r!7292))) b!6219509))

(assert (= (and b!6218746 ((_ is Concat!25000) (regOne!32822 r!7292))) b!6219510))

(assert (= (and b!6218746 ((_ is Star!16155) (regOne!32822 r!7292))) b!6219511))

(assert (= (and b!6218746 ((_ is Union!16155) (regOne!32822 r!7292))) b!6219512))

(declare-fun b!6219516 () Bool)

(declare-fun e!3786012 () Bool)

(declare-fun tp!1735033 () Bool)

(declare-fun tp!1735035 () Bool)

(assert (=> b!6219516 (= e!3786012 (and tp!1735033 tp!1735035))))

(assert (=> b!6218746 (= tp!1734935 e!3786012)))

(declare-fun b!6219513 () Bool)

(assert (=> b!6219513 (= e!3786012 tp_is_empty!41563)))

(declare-fun b!6219515 () Bool)

(declare-fun tp!1735034 () Bool)

(assert (=> b!6219515 (= e!3786012 tp!1735034)))

(declare-fun b!6219514 () Bool)

(declare-fun tp!1735036 () Bool)

(declare-fun tp!1735032 () Bool)

(assert (=> b!6219514 (= e!3786012 (and tp!1735036 tp!1735032))))

(assert (= (and b!6218746 ((_ is ElementMatch!16155) (regTwo!32822 r!7292))) b!6219513))

(assert (= (and b!6218746 ((_ is Concat!25000) (regTwo!32822 r!7292))) b!6219514))

(assert (= (and b!6218746 ((_ is Star!16155) (regTwo!32822 r!7292))) b!6219515))

(assert (= (and b!6218746 ((_ is Union!16155) (regTwo!32822 r!7292))) b!6219516))

(declare-fun b!6219521 () Bool)

(declare-fun e!3786015 () Bool)

(declare-fun tp!1735041 () Bool)

(declare-fun tp!1735042 () Bool)

(assert (=> b!6219521 (= e!3786015 (and tp!1735041 tp!1735042))))

(assert (=> b!6218741 (= tp!1734941 e!3786015)))

(assert (= (and b!6218741 ((_ is Cons!64641) (exprs!6039 (h!71090 zl!343)))) b!6219521))

(declare-fun b!6219522 () Bool)

(declare-fun e!3786016 () Bool)

(declare-fun tp!1735043 () Bool)

(declare-fun tp!1735044 () Bool)

(assert (=> b!6219522 (= e!3786016 (and tp!1735043 tp!1735044))))

(assert (=> b!6218735 (= tp!1734934 e!3786016)))

(assert (= (and b!6218735 ((_ is Cons!64641) (exprs!6039 setElem!42232))) b!6219522))

(declare-fun b!6219527 () Bool)

(declare-fun e!3786019 () Bool)

(declare-fun tp!1735047 () Bool)

(assert (=> b!6219527 (= e!3786019 (and tp_is_empty!41563 tp!1735047))))

(assert (=> b!6218751 (= tp!1734940 e!3786019)))

(assert (= (and b!6218751 ((_ is Cons!64640) (t!378294 s!2326))) b!6219527))

(declare-fun b!6219531 () Bool)

(declare-fun e!3786020 () Bool)

(declare-fun tp!1735049 () Bool)

(declare-fun tp!1735051 () Bool)

(assert (=> b!6219531 (= e!3786020 (and tp!1735049 tp!1735051))))

(assert (=> b!6218747 (= tp!1734933 e!3786020)))

(declare-fun b!6219528 () Bool)

(assert (=> b!6219528 (= e!3786020 tp_is_empty!41563)))

(declare-fun b!6219530 () Bool)

(declare-fun tp!1735050 () Bool)

(assert (=> b!6219530 (= e!3786020 tp!1735050)))

(declare-fun b!6219529 () Bool)

(declare-fun tp!1735052 () Bool)

(declare-fun tp!1735048 () Bool)

(assert (=> b!6219529 (= e!3786020 (and tp!1735052 tp!1735048))))

(assert (= (and b!6218747 ((_ is ElementMatch!16155) (reg!16484 r!7292))) b!6219528))

(assert (= (and b!6218747 ((_ is Concat!25000) (reg!16484 r!7292))) b!6219529))

(assert (= (and b!6218747 ((_ is Star!16155) (reg!16484 r!7292))) b!6219530))

(assert (= (and b!6218747 ((_ is Union!16155) (reg!16484 r!7292))) b!6219531))

(declare-fun condSetEmpty!42238 () Bool)

(assert (=> setNonEmpty!42232 (= condSetEmpty!42238 (= setRest!42232 ((as const (Array Context!11078 Bool)) false)))))

(declare-fun setRes!42238 () Bool)

(assert (=> setNonEmpty!42232 (= tp!1734936 setRes!42238)))

(declare-fun setIsEmpty!42238 () Bool)

(assert (=> setIsEmpty!42238 setRes!42238))

(declare-fun setNonEmpty!42238 () Bool)

(declare-fun tp!1735057 () Bool)

(declare-fun setElem!42238 () Context!11078)

(declare-fun e!3786023 () Bool)

(assert (=> setNonEmpty!42238 (= setRes!42238 (and tp!1735057 (inv!83634 setElem!42238) e!3786023))))

(declare-fun setRest!42238 () (InoxSet Context!11078))

(assert (=> setNonEmpty!42238 (= setRest!42232 ((_ map or) (store ((as const (Array Context!11078 Bool)) false) setElem!42238 true) setRest!42238))))

(declare-fun b!6219536 () Bool)

(declare-fun tp!1735058 () Bool)

(assert (=> b!6219536 (= e!3786023 tp!1735058)))

(assert (= (and setNonEmpty!42232 condSetEmpty!42238) setIsEmpty!42238))

(assert (= (and setNonEmpty!42232 (not condSetEmpty!42238)) setNonEmpty!42238))

(assert (= setNonEmpty!42238 b!6219536))

(declare-fun m!7047552 () Bool)

(assert (=> setNonEmpty!42238 m!7047552))

(declare-fun b_lambda!236437 () Bool)

(assert (= b_lambda!236433 (or b!6218742 b_lambda!236437)))

(declare-fun bs!1542376 () Bool)

(declare-fun d!1949529 () Bool)

(assert (= bs!1542376 (and d!1949529 b!6218742)))

(assert (=> bs!1542376 (= (dynLambda!25503 lambda!339865 (h!71090 zl!343)) (derivationStepZipperUp!1329 (h!71090 zl!343) (h!71088 s!2326)))))

(assert (=> bs!1542376 m!7047002))

(assert (=> d!1949495 d!1949529))

(declare-fun b_lambda!236439 () Bool)

(assert (= b_lambda!236435 (or b!6218742 b_lambda!236439)))

(declare-fun bs!1542377 () Bool)

(declare-fun d!1949531 () Bool)

(assert (= bs!1542377 (and d!1949531 b!6218742)))

(assert (=> bs!1542377 (= (dynLambda!25503 lambda!339865 lt!2344687) (derivationStepZipperUp!1329 lt!2344687 (h!71088 s!2326)))))

(assert (=> bs!1542377 m!7047038))

(assert (=> d!1949513 d!1949531))

(check-sat (not b!6219506) (not b!6219203) (not b!6219480) (not b!6219510) (not bm!521878) (not bm!521877) (not b!6219521) (not d!1949463) (not b!6219303) (not b!6219516) (not b!6219490) (not d!1949493) (not b!6219395) (not b!6219374) (not d!1949487) (not b!6219383) (not bm!521853) (not d!1949485) (not b!6219514) (not d!1949507) (not d!1949489) (not bm!521848) (not b!6219244) (not b!6219301) (not b!6219536) (not b!6219511) (not b!6219507) (not bm!521850) (not b!6219502) (not b!6219503) (not b!6219522) (not bm!521865) (not bs!1542377) (not d!1949513) (not b!6219198) (not b!6219391) (not b!6219482) (not b!6219185) (not b!6219362) (not b!6219188) (not b!6219335) (not d!1949525) (not b!6219489) (not d!1949497) (not b!6219190) (not d!1949473) (not d!1949481) (not b!6219527) (not b!6219367) (not bm!521883) (not b!6219200) (not b!6219204) (not d!1949523) (not b!6219531) (not b!6219308) (not b!6219189) (not b!6219379) (not b!6219307) (not bm!521856) (not bm!521876) (not b!6219160) (not d!1949461) (not b!6219153) (not d!1949527) (not d!1949447) (not b!6219305) (not d!1949475) (not b!6219161) (not b!6219158) (not b!6219508) (not b!6219475) (not b!6219327) (not b!6219504) (not b!6219472) (not d!1949515) (not b!6219332) (not bm!521872) (not d!1949483) (not b!6219159) (not b!6219199) (not b!6219433) (not b!6219306) (not bm!521887) (not d!1949455) (not b!6219481) (not b!6219358) (not b!6219233) (not bm!521868) (not b!6219186) (not b!6219273) (not bm!521869) (not d!1949479) (not b!6219388) (not b!6219202) (not bm!521875) (not b!6219184) (not bm!521873) (not bm!521863) (not b_lambda!236437) (not d!1949451) (not bs!1542376) (not d!1949491) (not b!6219304) (not bm!521847) (not b!6219251) (not b_lambda!236439) (not b!6219187) (not d!1949457) (not d!1949445) (not b!6219477) (not b!6219471) (not d!1949459) (not b!6219201) (not d!1949449) (not b!6219512) (not b!6219515) (not d!1949453) (not b!6219467) tp_is_empty!41563 (not d!1949509) (not setNonEmpty!42238) (not b!6219333) (not b!6219428) (not b!6219334) (not d!1949521) (not b!6219529) (not b!6219384) (not b!6219331) (not bm!521884) (not b!6219363) (not bm!521854) (not d!1949471) (not b!6219196) (not b!6219530) (not d!1949495))
(check-sat)
(get-model)

(declare-fun d!1949545 () Bool)

(declare-fun res!2570729 () Bool)

(declare-fun e!3786057 () Bool)

(assert (=> d!1949545 (=> res!2570729 e!3786057)))

(assert (=> d!1949545 (= res!2570729 ((_ is Nil!64641) (exprs!6039 lt!2344676)))))

(assert (=> d!1949545 (= (forall!15269 (exprs!6039 lt!2344676) lambda!339929) e!3786057)))

(declare-fun b!6219595 () Bool)

(declare-fun e!3786058 () Bool)

(assert (=> b!6219595 (= e!3786057 e!3786058)))

(declare-fun res!2570730 () Bool)

(assert (=> b!6219595 (=> (not res!2570730) (not e!3786058))))

(declare-fun dynLambda!25504 (Int Regex!16155) Bool)

(assert (=> b!6219595 (= res!2570730 (dynLambda!25504 lambda!339929 (h!71089 (exprs!6039 lt!2344676))))))

(declare-fun b!6219596 () Bool)

(assert (=> b!6219596 (= e!3786058 (forall!15269 (t!378295 (exprs!6039 lt!2344676)) lambda!339929))))

(assert (= (and d!1949545 (not res!2570729)) b!6219595))

(assert (= (and b!6219595 res!2570730) b!6219596))

(declare-fun b_lambda!236441 () Bool)

(assert (=> (not b_lambda!236441) (not b!6219595)))

(declare-fun m!7047600 () Bool)

(assert (=> b!6219595 m!7047600))

(declare-fun m!7047602 () Bool)

(assert (=> b!6219596 m!7047602))

(assert (=> d!1949525 d!1949545))

(declare-fun d!1949547 () Bool)

(assert (=> d!1949547 (= (isUnion!1004 lt!2344738) ((_ is Union!16155) lt!2344738))))

(assert (=> b!6219189 d!1949547))

(declare-fun d!1949549 () Bool)

(assert (=> d!1949549 (= (isConcat!1088 lt!2344748) ((_ is Concat!25000) lt!2344748))))

(assert (=> b!6219308 d!1949549))

(declare-fun d!1949551 () Bool)

(declare-fun lambda!339936 () Int)

(declare-fun exists!2489 ((InoxSet Context!11078) Int) Bool)

(assert (=> d!1949551 (= (nullableZipper!1929 lt!2344671) (exists!2489 lt!2344671 lambda!339936))))

(declare-fun bs!1542385 () Bool)

(assert (= bs!1542385 d!1949551))

(declare-fun m!7047604 () Bool)

(assert (=> bs!1542385 m!7047604))

(assert (=> b!6219158 d!1949551))

(declare-fun d!1949553 () Bool)

(assert (=> d!1949553 true))

(assert (=> d!1949553 true))

(declare-fun res!2570733 () Bool)

(assert (=> d!1949553 (= (choose!46215 lambda!339864) res!2570733)))

(assert (=> d!1949483 d!1949553))

(declare-fun d!1949555 () Bool)

(assert (=> d!1949555 true))

(declare-fun setRes!42241 () Bool)

(assert (=> d!1949555 setRes!42241))

(declare-fun condSetEmpty!42241 () Bool)

(declare-fun res!2570736 () (InoxSet Context!11078))

(assert (=> d!1949555 (= condSetEmpty!42241 (= res!2570736 ((as const (Array Context!11078 Bool)) false)))))

(assert (=> d!1949555 (= (choose!46218 lt!2344681 lambda!339865) res!2570736)))

(declare-fun setIsEmpty!42241 () Bool)

(assert (=> setIsEmpty!42241 setRes!42241))

(declare-fun tp!1735063 () Bool)

(declare-fun setNonEmpty!42241 () Bool)

(declare-fun setElem!42241 () Context!11078)

(declare-fun e!3786066 () Bool)

(assert (=> setNonEmpty!42241 (= setRes!42241 (and tp!1735063 (inv!83634 setElem!42241) e!3786066))))

(declare-fun setRest!42241 () (InoxSet Context!11078))

(assert (=> setNonEmpty!42241 (= res!2570736 ((_ map or) (store ((as const (Array Context!11078 Bool)) false) setElem!42241 true) setRest!42241))))

(declare-fun b!6219609 () Bool)

(declare-fun tp!1735064 () Bool)

(assert (=> b!6219609 (= e!3786066 tp!1735064)))

(assert (= (and d!1949555 condSetEmpty!42241) setIsEmpty!42241))

(assert (= (and d!1949555 (not condSetEmpty!42241)) setNonEmpty!42241))

(assert (= setNonEmpty!42241 b!6219609))

(declare-fun m!7047614 () Bool)

(assert (=> setNonEmpty!42241 m!7047614))

(assert (=> d!1949509 d!1949555))

(declare-fun b!6219610 () Bool)

(declare-fun c!1123684 () Bool)

(declare-fun e!3786071 () Bool)

(assert (=> b!6219610 (= c!1123684 e!3786071)))

(declare-fun res!2570737 () Bool)

(assert (=> b!6219610 (=> (not res!2570737) (not e!3786071))))

(assert (=> b!6219610 (= res!2570737 ((_ is Concat!25000) (h!71089 (exprs!6039 lt!2344673))))))

(declare-fun e!3786070 () (InoxSet Context!11078))

(declare-fun e!3786069 () (InoxSet Context!11078))

(assert (=> b!6219610 (= e!3786070 e!3786069)))

(declare-fun b!6219611 () Bool)

(declare-fun c!1123682 () Bool)

(assert (=> b!6219611 (= c!1123682 ((_ is Star!16155) (h!71089 (exprs!6039 lt!2344673))))))

(declare-fun e!3786068 () (InoxSet Context!11078))

(declare-fun e!3786072 () (InoxSet Context!11078))

(assert (=> b!6219611 (= e!3786068 e!3786072)))

(declare-fun b!6219612 () Bool)

(assert (=> b!6219612 (= e!3786072 ((as const (Array Context!11078 Bool)) false))))

(declare-fun b!6219613 () Bool)

(declare-fun call!521912 () (InoxSet Context!11078))

(declare-fun call!521913 () (InoxSet Context!11078))

(assert (=> b!6219613 (= e!3786069 ((_ map or) call!521912 call!521913))))

(declare-fun b!6219614 () Bool)

(declare-fun call!521911 () (InoxSet Context!11078))

(assert (=> b!6219614 (= e!3786072 call!521911)))

(declare-fun b!6219615 () Bool)

(assert (=> b!6219615 (= e!3786069 e!3786068)))

(declare-fun c!1123683 () Bool)

(assert (=> b!6219615 (= c!1123683 ((_ is Concat!25000) (h!71089 (exprs!6039 lt!2344673))))))

(declare-fun d!1949559 () Bool)

(declare-fun c!1123686 () Bool)

(assert (=> d!1949559 (= c!1123686 (and ((_ is ElementMatch!16155) (h!71089 (exprs!6039 lt!2344673))) (= (c!1123433 (h!71089 (exprs!6039 lt!2344673))) (h!71088 s!2326))))))

(declare-fun e!3786067 () (InoxSet Context!11078))

(assert (=> d!1949559 (= (derivationStepZipperDown!1403 (h!71089 (exprs!6039 lt!2344673)) (Context!11079 (t!378295 (exprs!6039 lt!2344673))) (h!71088 s!2326)) e!3786067)))

(declare-fun bm!521903 () Bool)

(assert (=> bm!521903 (= call!521911 call!521913)))

(declare-fun b!6219616 () Bool)

(assert (=> b!6219616 (= e!3786071 (nullable!6148 (regOne!32822 (h!71089 (exprs!6039 lt!2344673)))))))

(declare-fun bm!521904 () Bool)

(declare-fun call!521909 () (InoxSet Context!11078))

(assert (=> bm!521904 (= call!521913 call!521909)))

(declare-fun call!521908 () List!64765)

(declare-fun c!1123685 () Bool)

(declare-fun bm!521905 () Bool)

(assert (=> bm!521905 (= call!521909 (derivationStepZipperDown!1403 (ite c!1123685 (regOne!32823 (h!71089 (exprs!6039 lt!2344673))) (ite c!1123684 (regTwo!32822 (h!71089 (exprs!6039 lt!2344673))) (ite c!1123683 (regOne!32822 (h!71089 (exprs!6039 lt!2344673))) (reg!16484 (h!71089 (exprs!6039 lt!2344673)))))) (ite (or c!1123685 c!1123684) (Context!11079 (t!378295 (exprs!6039 lt!2344673))) (Context!11079 call!521908)) (h!71088 s!2326)))))

(declare-fun call!521910 () List!64765)

(declare-fun bm!521906 () Bool)

(assert (=> bm!521906 (= call!521912 (derivationStepZipperDown!1403 (ite c!1123685 (regTwo!32823 (h!71089 (exprs!6039 lt!2344673))) (regOne!32822 (h!71089 (exprs!6039 lt!2344673)))) (ite c!1123685 (Context!11079 (t!378295 (exprs!6039 lt!2344673))) (Context!11079 call!521910)) (h!71088 s!2326)))))

(declare-fun b!6219617 () Bool)

(assert (=> b!6219617 (= e!3786067 e!3786070)))

(assert (=> b!6219617 (= c!1123685 ((_ is Union!16155) (h!71089 (exprs!6039 lt!2344673))))))

(declare-fun b!6219618 () Bool)

(assert (=> b!6219618 (= e!3786070 ((_ map or) call!521909 call!521912))))

(declare-fun bm!521907 () Bool)

(assert (=> bm!521907 (= call!521908 call!521910)))

(declare-fun bm!521908 () Bool)

(assert (=> bm!521908 (= call!521910 ($colon$colon!2024 (exprs!6039 (Context!11079 (t!378295 (exprs!6039 lt!2344673)))) (ite (or c!1123684 c!1123683) (regTwo!32822 (h!71089 (exprs!6039 lt!2344673))) (h!71089 (exprs!6039 lt!2344673)))))))

(declare-fun b!6219619 () Bool)

(assert (=> b!6219619 (= e!3786067 (store ((as const (Array Context!11078 Bool)) false) (Context!11079 (t!378295 (exprs!6039 lt!2344673))) true))))

(declare-fun b!6219620 () Bool)

(assert (=> b!6219620 (= e!3786068 call!521911)))

(assert (= (and d!1949559 c!1123686) b!6219619))

(assert (= (and d!1949559 (not c!1123686)) b!6219617))

(assert (= (and b!6219617 c!1123685) b!6219618))

(assert (= (and b!6219617 (not c!1123685)) b!6219610))

(assert (= (and b!6219610 res!2570737) b!6219616))

(assert (= (and b!6219610 c!1123684) b!6219613))

(assert (= (and b!6219610 (not c!1123684)) b!6219615))

(assert (= (and b!6219615 c!1123683) b!6219620))

(assert (= (and b!6219615 (not c!1123683)) b!6219611))

(assert (= (and b!6219611 c!1123682) b!6219614))

(assert (= (and b!6219611 (not c!1123682)) b!6219612))

(assert (= (or b!6219620 b!6219614) bm!521907))

(assert (= (or b!6219620 b!6219614) bm!521903))

(assert (= (or b!6219613 bm!521907) bm!521908))

(assert (= (or b!6219613 bm!521903) bm!521904))

(assert (= (or b!6219618 b!6219613) bm!521906))

(assert (= (or b!6219618 bm!521904) bm!521905))

(declare-fun m!7047618 () Bool)

(assert (=> b!6219616 m!7047618))

(declare-fun m!7047620 () Bool)

(assert (=> bm!521905 m!7047620))

(declare-fun m!7047622 () Bool)

(assert (=> bm!521908 m!7047622))

(declare-fun m!7047624 () Bool)

(assert (=> b!6219619 m!7047624))

(declare-fun m!7047626 () Bool)

(assert (=> bm!521906 m!7047626))

(assert (=> bm!521876 d!1949559))

(declare-fun d!1949567 () Bool)

(assert (=> d!1949567 (= (Exists!3225 lambda!339913) (choose!46215 lambda!339913))))

(declare-fun bs!1542387 () Bool)

(assert (= bs!1542387 d!1949567))

(declare-fun m!7047628 () Bool)

(assert (=> bs!1542387 m!7047628))

(assert (=> d!1949487 d!1949567))

(assert (=> d!1949487 d!1949481))

(declare-fun b!6219623 () Bool)

(declare-fun e!3786076 () Bool)

(declare-fun e!3786075 () Bool)

(assert (=> b!6219623 (= e!3786076 e!3786075)))

(declare-fun res!2570744 () Bool)

(assert (=> b!6219623 (=> (not res!2570744) (not e!3786075))))

(declare-fun call!521914 () Bool)

(assert (=> b!6219623 (= res!2570744 call!521914)))

(declare-fun b!6219624 () Bool)

(declare-fun e!3786080 () Bool)

(declare-fun call!521915 () Bool)

(assert (=> b!6219624 (= e!3786080 call!521915)))

(declare-fun b!6219625 () Bool)

(declare-fun res!2570742 () Bool)

(assert (=> b!6219625 (=> res!2570742 e!3786076)))

(assert (=> b!6219625 (= res!2570742 (not ((_ is Concat!25000) (regOne!32822 r!7292))))))

(declare-fun e!3786081 () Bool)

(assert (=> b!6219625 (= e!3786081 e!3786076)))

(declare-fun b!6219626 () Bool)

(declare-fun e!3786077 () Bool)

(declare-fun e!3786078 () Bool)

(assert (=> b!6219626 (= e!3786077 e!3786078)))

(declare-fun res!2570743 () Bool)

(assert (=> b!6219626 (= res!2570743 (not (nullable!6148 (reg!16484 (regOne!32822 r!7292)))))))

(assert (=> b!6219626 (=> (not res!2570743) (not e!3786078))))

(declare-fun d!1949569 () Bool)

(declare-fun res!2570740 () Bool)

(declare-fun e!3786079 () Bool)

(assert (=> d!1949569 (=> res!2570740 e!3786079)))

(assert (=> d!1949569 (= res!2570740 ((_ is ElementMatch!16155) (regOne!32822 r!7292)))))

(assert (=> d!1949569 (= (validRegex!7891 (regOne!32822 r!7292)) e!3786079)))

(declare-fun bm!521909 () Bool)

(declare-fun c!1123687 () Bool)

(assert (=> bm!521909 (= call!521915 (validRegex!7891 (ite c!1123687 (regTwo!32823 (regOne!32822 r!7292)) (regTwo!32822 (regOne!32822 r!7292)))))))

(declare-fun bm!521910 () Bool)

(declare-fun call!521916 () Bool)

(assert (=> bm!521910 (= call!521914 call!521916)))

(declare-fun b!6219627 () Bool)

(assert (=> b!6219627 (= e!3786077 e!3786081)))

(assert (=> b!6219627 (= c!1123687 ((_ is Union!16155) (regOne!32822 r!7292)))))

(declare-fun b!6219628 () Bool)

(assert (=> b!6219628 (= e!3786075 call!521915)))

(declare-fun b!6219629 () Bool)

(assert (=> b!6219629 (= e!3786078 call!521916)))

(declare-fun bm!521911 () Bool)

(declare-fun c!1123688 () Bool)

(assert (=> bm!521911 (= call!521916 (validRegex!7891 (ite c!1123688 (reg!16484 (regOne!32822 r!7292)) (ite c!1123687 (regOne!32823 (regOne!32822 r!7292)) (regOne!32822 (regOne!32822 r!7292))))))))

(declare-fun b!6219630 () Bool)

(declare-fun res!2570741 () Bool)

(assert (=> b!6219630 (=> (not res!2570741) (not e!3786080))))

(assert (=> b!6219630 (= res!2570741 call!521914)))

(assert (=> b!6219630 (= e!3786081 e!3786080)))

(declare-fun b!6219631 () Bool)

(assert (=> b!6219631 (= e!3786079 e!3786077)))

(assert (=> b!6219631 (= c!1123688 ((_ is Star!16155) (regOne!32822 r!7292)))))

(assert (= (and d!1949569 (not res!2570740)) b!6219631))

(assert (= (and b!6219631 c!1123688) b!6219626))

(assert (= (and b!6219631 (not c!1123688)) b!6219627))

(assert (= (and b!6219626 res!2570743) b!6219629))

(assert (= (and b!6219627 c!1123687) b!6219630))

(assert (= (and b!6219627 (not c!1123687)) b!6219625))

(assert (= (and b!6219630 res!2570741) b!6219624))

(assert (= (and b!6219625 (not res!2570742)) b!6219623))

(assert (= (and b!6219623 res!2570744) b!6219628))

(assert (= (or b!6219624 b!6219628) bm!521909))

(assert (= (or b!6219630 b!6219623) bm!521910))

(assert (= (or b!6219629 bm!521910) bm!521911))

(declare-fun m!7047630 () Bool)

(assert (=> b!6219626 m!7047630))

(declare-fun m!7047632 () Bool)

(assert (=> bm!521909 m!7047632))

(declare-fun m!7047634 () Bool)

(assert (=> bm!521911 m!7047634))

(assert (=> d!1949487 d!1949569))

(assert (=> d!1949487 d!1949491))

(declare-fun bs!1542389 () Bool)

(declare-fun d!1949571 () Bool)

(assert (= bs!1542389 (and d!1949571 b!6218730)))

(declare-fun lambda!339939 () Int)

(assert (=> bs!1542389 (= lambda!339939 lambda!339863)))

(declare-fun bs!1542390 () Bool)

(assert (= bs!1542390 (and d!1949571 d!1949487)))

(assert (=> bs!1542390 (= lambda!339939 lambda!339913)))

(declare-fun bs!1542391 () Bool)

(assert (= bs!1542391 (and d!1949571 b!6219432)))

(assert (=> bs!1542391 (not (= lambda!339939 lambda!339927))))

(declare-fun bs!1542392 () Bool)

(assert (= bs!1542392 (and d!1949571 d!1949489)))

(assert (=> bs!1542392 (not (= lambda!339939 lambda!339919))))

(assert (=> bs!1542389 (not (= lambda!339939 lambda!339864))))

(assert (=> bs!1542392 (= lambda!339939 lambda!339918)))

(declare-fun bs!1542393 () Bool)

(assert (= bs!1542393 (and d!1949571 b!6219438)))

(assert (=> bs!1542393 (not (= lambda!339939 lambda!339928))))

(assert (=> d!1949571 true))

(assert (=> d!1949571 true))

(assert (=> d!1949571 true))

(assert (=> d!1949571 (= (isDefined!12749 (findConcatSeparation!2460 (regOne!32822 r!7292) (regTwo!32822 r!7292) Nil!64640 s!2326 s!2326)) (Exists!3225 lambda!339939))))

(assert (=> d!1949571 true))

(declare-fun _$89!2386 () Unit!157951)

(assert (=> d!1949571 (= (choose!46216 (regOne!32822 r!7292) (regTwo!32822 r!7292) s!2326) _$89!2386)))

(declare-fun bs!1542394 () Bool)

(assert (= bs!1542394 d!1949571))

(assert (=> bs!1542394 m!7046986))

(assert (=> bs!1542394 m!7046986))

(assert (=> bs!1542394 m!7046988))

(declare-fun m!7047656 () Bool)

(assert (=> bs!1542394 m!7047656))

(assert (=> d!1949487 d!1949571))

(declare-fun d!1949585 () Bool)

(assert (=> d!1949585 (= (nullable!6148 (h!71089 (exprs!6039 lt!2344676))) (nullableFct!2104 (h!71089 (exprs!6039 lt!2344676))))))

(declare-fun bs!1542395 () Bool)

(assert (= bs!1542395 d!1949585))

(declare-fun m!7047658 () Bool)

(assert (=> bs!1542395 m!7047658))

(assert (=> b!6219395 d!1949585))

(declare-fun b!6219699 () Bool)

(declare-fun res!2570777 () Bool)

(declare-fun e!3786126 () Bool)

(assert (=> b!6219699 (=> (not res!2570777) (not e!3786126))))

(declare-fun lt!2344784 () List!64764)

(declare-fun size!40281 (List!64764) Int)

(assert (=> b!6219699 (= res!2570777 (= (size!40281 lt!2344784) (+ (size!40281 (_1!36437 (get!22326 lt!2344756))) (size!40281 (_2!36437 (get!22326 lt!2344756))))))))

(declare-fun b!6219700 () Bool)

(assert (=> b!6219700 (= e!3786126 (or (not (= (_2!36437 (get!22326 lt!2344756)) Nil!64640)) (= lt!2344784 (_1!36437 (get!22326 lt!2344756)))))))

(declare-fun d!1949587 () Bool)

(assert (=> d!1949587 e!3786126))

(declare-fun res!2570776 () Bool)

(assert (=> d!1949587 (=> (not res!2570776) (not e!3786126))))

(declare-fun content!12105 (List!64764) (InoxSet C!32580))

(assert (=> d!1949587 (= res!2570776 (= (content!12105 lt!2344784) ((_ map or) (content!12105 (_1!36437 (get!22326 lt!2344756))) (content!12105 (_2!36437 (get!22326 lt!2344756))))))))

(declare-fun e!3786127 () List!64764)

(assert (=> d!1949587 (= lt!2344784 e!3786127)))

(declare-fun c!1123706 () Bool)

(assert (=> d!1949587 (= c!1123706 ((_ is Nil!64640) (_1!36437 (get!22326 lt!2344756))))))

(assert (=> d!1949587 (= (++!14233 (_1!36437 (get!22326 lt!2344756)) (_2!36437 (get!22326 lt!2344756))) lt!2344784)))

(declare-fun b!6219698 () Bool)

(assert (=> b!6219698 (= e!3786127 (Cons!64640 (h!71088 (_1!36437 (get!22326 lt!2344756))) (++!14233 (t!378294 (_1!36437 (get!22326 lt!2344756))) (_2!36437 (get!22326 lt!2344756)))))))

(declare-fun b!6219697 () Bool)

(assert (=> b!6219697 (= e!3786127 (_2!36437 (get!22326 lt!2344756)))))

(assert (= (and d!1949587 c!1123706) b!6219697))

(assert (= (and d!1949587 (not c!1123706)) b!6219698))

(assert (= (and d!1949587 res!2570776) b!6219699))

(assert (= (and b!6219699 res!2570777) b!6219700))

(declare-fun m!7047674 () Bool)

(assert (=> b!6219699 m!7047674))

(declare-fun m!7047676 () Bool)

(assert (=> b!6219699 m!7047676))

(declare-fun m!7047678 () Bool)

(assert (=> b!6219699 m!7047678))

(declare-fun m!7047680 () Bool)

(assert (=> d!1949587 m!7047680))

(declare-fun m!7047682 () Bool)

(assert (=> d!1949587 m!7047682))

(declare-fun m!7047684 () Bool)

(assert (=> d!1949587 m!7047684))

(declare-fun m!7047686 () Bool)

(assert (=> b!6219698 m!7047686))

(assert (=> b!6219332 d!1949587))

(declare-fun d!1949595 () Bool)

(assert (=> d!1949595 (= (get!22326 lt!2344756) (v!52191 lt!2344756))))

(assert (=> b!6219332 d!1949595))

(declare-fun d!1949597 () Bool)

(assert (=> d!1949597 (= ($colon$colon!2024 (exprs!6039 lt!2344676) (ite (or c!1123582 c!1123581) (regTwo!32822 (regOne!32822 (regOne!32822 r!7292))) (regOne!32822 (regOne!32822 r!7292)))) (Cons!64641 (ite (or c!1123582 c!1123581) (regTwo!32822 (regOne!32822 (regOne!32822 r!7292))) (regOne!32822 (regOne!32822 r!7292))) (exprs!6039 lt!2344676)))))

(assert (=> bm!521856 d!1949597))

(declare-fun d!1949599 () Bool)

(assert (=> d!1949599 (= (isEmpty!36646 (unfocusZipperList!1576 zl!343)) ((_ is Nil!64641) (unfocusZipperList!1576 zl!343)))))

(assert (=> b!6219185 d!1949599))

(declare-fun d!1949601 () Bool)

(assert (=> d!1949601 (= (head!12819 (exprs!6039 (h!71090 zl!343))) (h!71089 (exprs!6039 (h!71090 zl!343))))))

(assert (=> b!6219304 d!1949601))

(declare-fun d!1949605 () Bool)

(assert (=> d!1949605 (= (Exists!3225 (ite c!1123639 lambda!339927 lambda!339928)) (choose!46215 (ite c!1123639 lambda!339927 lambda!339928)))))

(declare-fun bs!1542397 () Bool)

(assert (= bs!1542397 d!1949605))

(declare-fun m!7047692 () Bool)

(assert (=> bs!1542397 m!7047692))

(assert (=> bm!521884 d!1949605))

(declare-fun d!1949607 () Bool)

(assert (=> d!1949607 (= (isEmpty!36649 (tail!11903 s!2326)) ((_ is Nil!64640) (tail!11903 s!2326)))))

(assert (=> b!6219475 d!1949607))

(declare-fun d!1949611 () Bool)

(assert (=> d!1949611 (= (tail!11903 s!2326) (t!378294 s!2326))))

(assert (=> b!6219475 d!1949611))

(declare-fun d!1949613 () Bool)

(assert (=> d!1949613 (= (nullable!6148 (reg!16484 r!7292)) (nullableFct!2104 (reg!16484 r!7292)))))

(declare-fun bs!1542398 () Bool)

(assert (= bs!1542398 d!1949613))

(declare-fun m!7047710 () Bool)

(assert (=> bs!1542398 m!7047710))

(assert (=> b!6219273 d!1949613))

(declare-fun e!3786139 () (InoxSet Context!11078))

(declare-fun call!521939 () (InoxSet Context!11078))

(declare-fun b!6219714 () Bool)

(assert (=> b!6219714 (= e!3786139 ((_ map or) call!521939 (derivationStepZipperUp!1329 (Context!11079 (t!378295 (exprs!6039 (Context!11079 (t!378295 (exprs!6039 (h!71090 zl!343))))))) (h!71088 s!2326))))))

(declare-fun b!6219715 () Bool)

(declare-fun e!3786138 () (InoxSet Context!11078))

(assert (=> b!6219715 (= e!3786138 ((as const (Array Context!11078 Bool)) false))))

(declare-fun b!6219716 () Bool)

(assert (=> b!6219716 (= e!3786138 call!521939)))

(declare-fun bm!521934 () Bool)

(assert (=> bm!521934 (= call!521939 (derivationStepZipperDown!1403 (h!71089 (exprs!6039 (Context!11079 (t!378295 (exprs!6039 (h!71090 zl!343)))))) (Context!11079 (t!378295 (exprs!6039 (Context!11079 (t!378295 (exprs!6039 (h!71090 zl!343))))))) (h!71088 s!2326)))))

(declare-fun b!6219717 () Bool)

(assert (=> b!6219717 (= e!3786139 e!3786138)))

(declare-fun c!1123710 () Bool)

(assert (=> b!6219717 (= c!1123710 ((_ is Cons!64641) (exprs!6039 (Context!11079 (t!378295 (exprs!6039 (h!71090 zl!343)))))))))

(declare-fun d!1949615 () Bool)

(declare-fun c!1123711 () Bool)

(declare-fun e!3786140 () Bool)

(assert (=> d!1949615 (= c!1123711 e!3786140)))

(declare-fun res!2570785 () Bool)

(assert (=> d!1949615 (=> (not res!2570785) (not e!3786140))))

(assert (=> d!1949615 (= res!2570785 ((_ is Cons!64641) (exprs!6039 (Context!11079 (t!378295 (exprs!6039 (h!71090 zl!343)))))))))

(assert (=> d!1949615 (= (derivationStepZipperUp!1329 (Context!11079 (t!378295 (exprs!6039 (h!71090 zl!343)))) (h!71088 s!2326)) e!3786139)))

(declare-fun b!6219718 () Bool)

(assert (=> b!6219718 (= e!3786140 (nullable!6148 (h!71089 (exprs!6039 (Context!11079 (t!378295 (exprs!6039 (h!71090 zl!343))))))))))

(assert (= (and d!1949615 res!2570785) b!6219718))

(assert (= (and d!1949615 c!1123711) b!6219714))

(assert (= (and d!1949615 (not c!1123711)) b!6219717))

(assert (= (and b!6219717 c!1123710) b!6219716))

(assert (= (and b!6219717 (not c!1123710)) b!6219715))

(assert (= (or b!6219714 b!6219716) bm!521934))

(declare-fun m!7047716 () Bool)

(assert (=> b!6219714 m!7047716))

(declare-fun m!7047718 () Bool)

(assert (=> bm!521934 m!7047718))

(declare-fun m!7047720 () Bool)

(assert (=> b!6219718 m!7047720))

(assert (=> b!6219363 d!1949615))

(declare-fun e!3786142 () (InoxSet Context!11078))

(declare-fun call!521940 () (InoxSet Context!11078))

(declare-fun b!6219719 () Bool)

(assert (=> b!6219719 (= e!3786142 ((_ map or) call!521940 (derivationStepZipperUp!1329 (Context!11079 (t!378295 (exprs!6039 (Context!11079 (t!378295 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343))))))))))) (h!71088 s!2326))))))

(declare-fun b!6219720 () Bool)

(declare-fun e!3786141 () (InoxSet Context!11078))

(assert (=> b!6219720 (= e!3786141 ((as const (Array Context!11078 Bool)) false))))

(declare-fun b!6219721 () Bool)

(assert (=> b!6219721 (= e!3786141 call!521940)))

(declare-fun bm!521935 () Bool)

(assert (=> bm!521935 (= call!521940 (derivationStepZipperDown!1403 (h!71089 (exprs!6039 (Context!11079 (t!378295 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343)))))))))) (Context!11079 (t!378295 (exprs!6039 (Context!11079 (t!378295 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343))))))))))) (h!71088 s!2326)))))

(declare-fun b!6219722 () Bool)

(assert (=> b!6219722 (= e!3786142 e!3786141)))

(declare-fun c!1123712 () Bool)

(assert (=> b!6219722 (= c!1123712 ((_ is Cons!64641) (exprs!6039 (Context!11079 (t!378295 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343)))))))))))))

(declare-fun d!1949625 () Bool)

(declare-fun c!1123713 () Bool)

(declare-fun e!3786143 () Bool)

(assert (=> d!1949625 (= c!1123713 e!3786143)))

(declare-fun res!2570786 () Bool)

(assert (=> d!1949625 (=> (not res!2570786) (not e!3786143))))

(assert (=> d!1949625 (= res!2570786 ((_ is Cons!64641) (exprs!6039 (Context!11079 (t!378295 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343)))))))))))))

(assert (=> d!1949625 (= (derivationStepZipperUp!1329 (Context!11079 (t!378295 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343)))))))) (h!71088 s!2326)) e!3786142)))

(declare-fun b!6219723 () Bool)

(assert (=> b!6219723 (= e!3786143 (nullable!6148 (h!71089 (exprs!6039 (Context!11079 (t!378295 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343))))))))))))))

(assert (= (and d!1949625 res!2570786) b!6219723))

(assert (= (and d!1949625 c!1123713) b!6219719))

(assert (= (and d!1949625 (not c!1123713)) b!6219722))

(assert (= (and b!6219722 c!1123712) b!6219721))

(assert (= (and b!6219722 (not c!1123712)) b!6219720))

(assert (= (or b!6219719 b!6219721) bm!521935))

(declare-fun m!7047722 () Bool)

(assert (=> b!6219719 m!7047722))

(declare-fun m!7047724 () Bool)

(assert (=> bm!521935 m!7047724))

(declare-fun m!7047726 () Bool)

(assert (=> b!6219723 m!7047726))

(assert (=> b!6219358 d!1949625))

(declare-fun b!6219724 () Bool)

(declare-fun c!1123716 () Bool)

(declare-fun e!3786148 () Bool)

(assert (=> b!6219724 (= c!1123716 e!3786148)))

(declare-fun res!2570787 () Bool)

(assert (=> b!6219724 (=> (not res!2570787) (not e!3786148))))

(assert (=> b!6219724 (= res!2570787 ((_ is Concat!25000) (ite c!1123583 (regTwo!32823 (regOne!32822 (regOne!32822 r!7292))) (regOne!32822 (regOne!32822 (regOne!32822 r!7292))))))))

(declare-fun e!3786147 () (InoxSet Context!11078))

(declare-fun e!3786146 () (InoxSet Context!11078))

(assert (=> b!6219724 (= e!3786147 e!3786146)))

(declare-fun b!6219725 () Bool)

(declare-fun c!1123714 () Bool)

(assert (=> b!6219725 (= c!1123714 ((_ is Star!16155) (ite c!1123583 (regTwo!32823 (regOne!32822 (regOne!32822 r!7292))) (regOne!32822 (regOne!32822 (regOne!32822 r!7292))))))))

(declare-fun e!3786145 () (InoxSet Context!11078))

(declare-fun e!3786149 () (InoxSet Context!11078))

(assert (=> b!6219725 (= e!3786145 e!3786149)))

(declare-fun b!6219726 () Bool)

(assert (=> b!6219726 (= e!3786149 ((as const (Array Context!11078 Bool)) false))))

(declare-fun b!6219727 () Bool)

(declare-fun call!521945 () (InoxSet Context!11078))

(declare-fun call!521946 () (InoxSet Context!11078))

(assert (=> b!6219727 (= e!3786146 ((_ map or) call!521945 call!521946))))

(declare-fun b!6219728 () Bool)

(declare-fun call!521944 () (InoxSet Context!11078))

(assert (=> b!6219728 (= e!3786149 call!521944)))

(declare-fun b!6219729 () Bool)

(assert (=> b!6219729 (= e!3786146 e!3786145)))

(declare-fun c!1123715 () Bool)

(assert (=> b!6219729 (= c!1123715 ((_ is Concat!25000) (ite c!1123583 (regTwo!32823 (regOne!32822 (regOne!32822 r!7292))) (regOne!32822 (regOne!32822 (regOne!32822 r!7292))))))))

(declare-fun d!1949627 () Bool)

(declare-fun c!1123718 () Bool)

(assert (=> d!1949627 (= c!1123718 (and ((_ is ElementMatch!16155) (ite c!1123583 (regTwo!32823 (regOne!32822 (regOne!32822 r!7292))) (regOne!32822 (regOne!32822 (regOne!32822 r!7292))))) (= (c!1123433 (ite c!1123583 (regTwo!32823 (regOne!32822 (regOne!32822 r!7292))) (regOne!32822 (regOne!32822 (regOne!32822 r!7292))))) (h!71088 s!2326))))))

(declare-fun e!3786144 () (InoxSet Context!11078))

(assert (=> d!1949627 (= (derivationStepZipperDown!1403 (ite c!1123583 (regTwo!32823 (regOne!32822 (regOne!32822 r!7292))) (regOne!32822 (regOne!32822 (regOne!32822 r!7292)))) (ite c!1123583 lt!2344676 (Context!11079 call!521858)) (h!71088 s!2326)) e!3786144)))

(declare-fun bm!521936 () Bool)

(assert (=> bm!521936 (= call!521944 call!521946)))

(declare-fun b!6219730 () Bool)

(assert (=> b!6219730 (= e!3786148 (nullable!6148 (regOne!32822 (ite c!1123583 (regTwo!32823 (regOne!32822 (regOne!32822 r!7292))) (regOne!32822 (regOne!32822 (regOne!32822 r!7292)))))))))

(declare-fun bm!521937 () Bool)

(declare-fun call!521942 () (InoxSet Context!11078))

(assert (=> bm!521937 (= call!521946 call!521942)))

(declare-fun c!1123717 () Bool)

(declare-fun call!521941 () List!64765)

(declare-fun bm!521938 () Bool)

(assert (=> bm!521938 (= call!521942 (derivationStepZipperDown!1403 (ite c!1123717 (regOne!32823 (ite c!1123583 (regTwo!32823 (regOne!32822 (regOne!32822 r!7292))) (regOne!32822 (regOne!32822 (regOne!32822 r!7292))))) (ite c!1123716 (regTwo!32822 (ite c!1123583 (regTwo!32823 (regOne!32822 (regOne!32822 r!7292))) (regOne!32822 (regOne!32822 (regOne!32822 r!7292))))) (ite c!1123715 (regOne!32822 (ite c!1123583 (regTwo!32823 (regOne!32822 (regOne!32822 r!7292))) (regOne!32822 (regOne!32822 (regOne!32822 r!7292))))) (reg!16484 (ite c!1123583 (regTwo!32823 (regOne!32822 (regOne!32822 r!7292))) (regOne!32822 (regOne!32822 (regOne!32822 r!7292)))))))) (ite (or c!1123717 c!1123716) (ite c!1123583 lt!2344676 (Context!11079 call!521858)) (Context!11079 call!521941)) (h!71088 s!2326)))))

(declare-fun call!521943 () List!64765)

(declare-fun bm!521939 () Bool)

(assert (=> bm!521939 (= call!521945 (derivationStepZipperDown!1403 (ite c!1123717 (regTwo!32823 (ite c!1123583 (regTwo!32823 (regOne!32822 (regOne!32822 r!7292))) (regOne!32822 (regOne!32822 (regOne!32822 r!7292))))) (regOne!32822 (ite c!1123583 (regTwo!32823 (regOne!32822 (regOne!32822 r!7292))) (regOne!32822 (regOne!32822 (regOne!32822 r!7292)))))) (ite c!1123717 (ite c!1123583 lt!2344676 (Context!11079 call!521858)) (Context!11079 call!521943)) (h!71088 s!2326)))))

(declare-fun b!6219731 () Bool)

(assert (=> b!6219731 (= e!3786144 e!3786147)))

(assert (=> b!6219731 (= c!1123717 ((_ is Union!16155) (ite c!1123583 (regTwo!32823 (regOne!32822 (regOne!32822 r!7292))) (regOne!32822 (regOne!32822 (regOne!32822 r!7292))))))))

(declare-fun b!6219732 () Bool)

(assert (=> b!6219732 (= e!3786147 ((_ map or) call!521942 call!521945))))

(declare-fun bm!521940 () Bool)

(assert (=> bm!521940 (= call!521941 call!521943)))

(declare-fun bm!521941 () Bool)

(assert (=> bm!521941 (= call!521943 ($colon$colon!2024 (exprs!6039 (ite c!1123583 lt!2344676 (Context!11079 call!521858))) (ite (or c!1123716 c!1123715) (regTwo!32822 (ite c!1123583 (regTwo!32823 (regOne!32822 (regOne!32822 r!7292))) (regOne!32822 (regOne!32822 (regOne!32822 r!7292))))) (ite c!1123583 (regTwo!32823 (regOne!32822 (regOne!32822 r!7292))) (regOne!32822 (regOne!32822 (regOne!32822 r!7292)))))))))

(declare-fun b!6219733 () Bool)

(assert (=> b!6219733 (= e!3786144 (store ((as const (Array Context!11078 Bool)) false) (ite c!1123583 lt!2344676 (Context!11079 call!521858)) true))))

(declare-fun b!6219734 () Bool)

(assert (=> b!6219734 (= e!3786145 call!521944)))

(assert (= (and d!1949627 c!1123718) b!6219733))

(assert (= (and d!1949627 (not c!1123718)) b!6219731))

(assert (= (and b!6219731 c!1123717) b!6219732))

(assert (= (and b!6219731 (not c!1123717)) b!6219724))

(assert (= (and b!6219724 res!2570787) b!6219730))

(assert (= (and b!6219724 c!1123716) b!6219727))

(assert (= (and b!6219724 (not c!1123716)) b!6219729))

(assert (= (and b!6219729 c!1123715) b!6219734))

(assert (= (and b!6219729 (not c!1123715)) b!6219725))

(assert (= (and b!6219725 c!1123714) b!6219728))

(assert (= (and b!6219725 (not c!1123714)) b!6219726))

(assert (= (or b!6219734 b!6219728) bm!521940))

(assert (= (or b!6219734 b!6219728) bm!521936))

(assert (= (or b!6219727 bm!521940) bm!521941))

(assert (= (or b!6219727 bm!521936) bm!521937))

(assert (= (or b!6219732 b!6219727) bm!521939))

(assert (= (or b!6219732 bm!521937) bm!521938))

(declare-fun m!7047728 () Bool)

(assert (=> b!6219730 m!7047728))

(declare-fun m!7047730 () Bool)

(assert (=> bm!521938 m!7047730))

(declare-fun m!7047732 () Bool)

(assert (=> bm!521941 m!7047732))

(declare-fun m!7047734 () Bool)

(assert (=> b!6219733 m!7047734))

(declare-fun m!7047736 () Bool)

(assert (=> bm!521939 m!7047736))

(assert (=> bm!521854 d!1949627))

(declare-fun d!1949629 () Bool)

(declare-fun c!1123719 () Bool)

(assert (=> d!1949629 (= c!1123719 (isEmpty!36649 (tail!11903 (t!378294 s!2326))))))

(declare-fun e!3786156 () Bool)

(assert (=> d!1949629 (= (matchZipper!2167 (derivationStepZipper!2121 lt!2344671 (head!12818 (t!378294 s!2326))) (tail!11903 (t!378294 s!2326))) e!3786156)))

(declare-fun b!6219741 () Bool)

(assert (=> b!6219741 (= e!3786156 (nullableZipper!1929 (derivationStepZipper!2121 lt!2344671 (head!12818 (t!378294 s!2326)))))))

(declare-fun b!6219742 () Bool)

(assert (=> b!6219742 (= e!3786156 (matchZipper!2167 (derivationStepZipper!2121 (derivationStepZipper!2121 lt!2344671 (head!12818 (t!378294 s!2326))) (head!12818 (tail!11903 (t!378294 s!2326)))) (tail!11903 (tail!11903 (t!378294 s!2326)))))))

(assert (= (and d!1949629 c!1123719) b!6219741))

(assert (= (and d!1949629 (not c!1123719)) b!6219742))

(assert (=> d!1949629 m!7047312))

(declare-fun m!7047742 () Bool)

(assert (=> d!1949629 m!7047742))

(assert (=> b!6219741 m!7047310))

(declare-fun m!7047744 () Bool)

(assert (=> b!6219741 m!7047744))

(assert (=> b!6219742 m!7047312))

(declare-fun m!7047746 () Bool)

(assert (=> b!6219742 m!7047746))

(assert (=> b!6219742 m!7047310))

(assert (=> b!6219742 m!7047746))

(declare-fun m!7047748 () Bool)

(assert (=> b!6219742 m!7047748))

(assert (=> b!6219742 m!7047312))

(declare-fun m!7047750 () Bool)

(assert (=> b!6219742 m!7047750))

(assert (=> b!6219742 m!7047748))

(assert (=> b!6219742 m!7047750))

(declare-fun m!7047752 () Bool)

(assert (=> b!6219742 m!7047752))

(assert (=> b!6219159 d!1949629))

(declare-fun bs!1542402 () Bool)

(declare-fun d!1949633 () Bool)

(assert (= bs!1542402 (and d!1949633 b!6218742)))

(declare-fun lambda!339941 () Int)

(assert (=> bs!1542402 (= (= (head!12818 (t!378294 s!2326)) (h!71088 s!2326)) (= lambda!339941 lambda!339865))))

(declare-fun bs!1542403 () Bool)

(assert (= bs!1542403 (and d!1949633 d!1949515)))

(assert (=> bs!1542403 (= (= (head!12818 (t!378294 s!2326)) (h!71088 s!2326)) (= lambda!339941 lambda!339922))))

(assert (=> d!1949633 true))

(assert (=> d!1949633 (= (derivationStepZipper!2121 lt!2344671 (head!12818 (t!378294 s!2326))) (flatMap!1660 lt!2344671 lambda!339941))))

(declare-fun bs!1542404 () Bool)

(assert (= bs!1542404 d!1949633))

(declare-fun m!7047754 () Bool)

(assert (=> bs!1542404 m!7047754))

(assert (=> b!6219159 d!1949633))

(declare-fun d!1949635 () Bool)

(assert (=> d!1949635 (= (head!12818 (t!378294 s!2326)) (h!71088 (t!378294 s!2326)))))

(assert (=> b!6219159 d!1949635))

(declare-fun d!1949637 () Bool)

(assert (=> d!1949637 (= (tail!11903 (t!378294 s!2326)) (t!378294 (t!378294 s!2326)))))

(assert (=> b!6219159 d!1949637))

(declare-fun d!1949639 () Bool)

(assert (=> d!1949639 true))

(declare-fun setRes!42245 () Bool)

(assert (=> d!1949639 setRes!42245))

(declare-fun condSetEmpty!42245 () Bool)

(declare-fun res!2570798 () (InoxSet Context!11078))

(assert (=> d!1949639 (= condSetEmpty!42245 (= res!2570798 ((as const (Array Context!11078 Bool)) false)))))

(assert (=> d!1949639 (= (choose!46218 z!1189 lambda!339865) res!2570798)))

(declare-fun setIsEmpty!42245 () Bool)

(assert (=> setIsEmpty!42245 setRes!42245))

(declare-fun setNonEmpty!42245 () Bool)

(declare-fun tp!1735075 () Bool)

(declare-fun e!3786163 () Bool)

(declare-fun setElem!42245 () Context!11078)

(assert (=> setNonEmpty!42245 (= setRes!42245 (and tp!1735075 (inv!83634 setElem!42245) e!3786163))))

(declare-fun setRest!42245 () (InoxSet Context!11078))

(assert (=> setNonEmpty!42245 (= res!2570798 ((_ map or) (store ((as const (Array Context!11078 Bool)) false) setElem!42245 true) setRest!42245))))

(declare-fun b!6219749 () Bool)

(declare-fun tp!1735076 () Bool)

(assert (=> b!6219749 (= e!3786163 tp!1735076)))

(assert (= (and d!1949639 condSetEmpty!42245) setIsEmpty!42245))

(assert (= (and d!1949639 (not condSetEmpty!42245)) setNonEmpty!42245))

(assert (= setNonEmpty!42245 b!6219749))

(declare-fun m!7047756 () Bool)

(assert (=> setNonEmpty!42245 m!7047756))

(assert (=> d!1949493 d!1949639))

(declare-fun d!1949641 () Bool)

(assert (=> d!1949641 (= (nullable!6148 (regOne!32822 (regTwo!32822 (regOne!32822 r!7292)))) (nullableFct!2104 (regOne!32822 (regTwo!32822 (regOne!32822 r!7292)))))))

(declare-fun bs!1542405 () Bool)

(assert (= bs!1542405 d!1949641))

(declare-fun m!7047758 () Bool)

(assert (=> bs!1542405 m!7047758))

(assert (=> b!6219233 d!1949641))

(declare-fun call!521947 () (InoxSet Context!11078))

(declare-fun b!6219753 () Bool)

(declare-fun e!3786168 () (InoxSet Context!11078))

(assert (=> b!6219753 (= e!3786168 ((_ map or) call!521947 (derivationStepZipperUp!1329 (Context!11079 (t!378295 (exprs!6039 (Context!11079 (t!378295 (exprs!6039 lt!2344687)))))) (h!71088 s!2326))))))

(declare-fun b!6219754 () Bool)

(declare-fun e!3786167 () (InoxSet Context!11078))

(assert (=> b!6219754 (= e!3786167 ((as const (Array Context!11078 Bool)) false))))

(declare-fun b!6219755 () Bool)

(assert (=> b!6219755 (= e!3786167 call!521947)))

(declare-fun bm!521942 () Bool)

(assert (=> bm!521942 (= call!521947 (derivationStepZipperDown!1403 (h!71089 (exprs!6039 (Context!11079 (t!378295 (exprs!6039 lt!2344687))))) (Context!11079 (t!378295 (exprs!6039 (Context!11079 (t!378295 (exprs!6039 lt!2344687)))))) (h!71088 s!2326)))))

(declare-fun b!6219756 () Bool)

(assert (=> b!6219756 (= e!3786168 e!3786167)))

(declare-fun c!1123720 () Bool)

(assert (=> b!6219756 (= c!1123720 ((_ is Cons!64641) (exprs!6039 (Context!11079 (t!378295 (exprs!6039 lt!2344687))))))))

(declare-fun d!1949643 () Bool)

(declare-fun c!1123721 () Bool)

(declare-fun e!3786169 () Bool)

(assert (=> d!1949643 (= c!1123721 e!3786169)))

(declare-fun res!2570801 () Bool)

(assert (=> d!1949643 (=> (not res!2570801) (not e!3786169))))

(assert (=> d!1949643 (= res!2570801 ((_ is Cons!64641) (exprs!6039 (Context!11079 (t!378295 (exprs!6039 lt!2344687))))))))

(assert (=> d!1949643 (= (derivationStepZipperUp!1329 (Context!11079 (t!378295 (exprs!6039 lt!2344687))) (h!71088 s!2326)) e!3786168)))

(declare-fun b!6219757 () Bool)

(assert (=> b!6219757 (= e!3786169 (nullable!6148 (h!71089 (exprs!6039 (Context!11079 (t!378295 (exprs!6039 lt!2344687)))))))))

(assert (= (and d!1949643 res!2570801) b!6219757))

(assert (= (and d!1949643 c!1123721) b!6219753))

(assert (= (and d!1949643 (not c!1123721)) b!6219756))

(assert (= (and b!6219756 c!1123720) b!6219755))

(assert (= (and b!6219756 (not c!1123720)) b!6219754))

(assert (= (or b!6219753 b!6219755) bm!521942))

(declare-fun m!7047766 () Bool)

(assert (=> b!6219753 m!7047766))

(declare-fun m!7047768 () Bool)

(assert (=> bm!521942 m!7047768))

(declare-fun m!7047770 () Bool)

(assert (=> b!6219757 m!7047770))

(assert (=> b!6219384 d!1949643))

(declare-fun d!1949649 () Bool)

(assert (=> d!1949649 (= (Exists!3225 lambda!339918) (choose!46215 lambda!339918))))

(declare-fun bs!1542406 () Bool)

(assert (= bs!1542406 d!1949649))

(declare-fun m!7047772 () Bool)

(assert (=> bs!1542406 m!7047772))

(assert (=> d!1949489 d!1949649))

(declare-fun d!1949651 () Bool)

(assert (=> d!1949651 (= (Exists!3225 lambda!339919) (choose!46215 lambda!339919))))

(declare-fun bs!1542407 () Bool)

(assert (= bs!1542407 d!1949651))

(declare-fun m!7047774 () Bool)

(assert (=> bs!1542407 m!7047774))

(assert (=> d!1949489 d!1949651))

(declare-fun bs!1542408 () Bool)

(declare-fun d!1949653 () Bool)

(assert (= bs!1542408 (and d!1949653 b!6218730)))

(declare-fun lambda!339946 () Int)

(assert (=> bs!1542408 (= lambda!339946 lambda!339863)))

(declare-fun bs!1542409 () Bool)

(assert (= bs!1542409 (and d!1949653 d!1949487)))

(assert (=> bs!1542409 (= lambda!339946 lambda!339913)))

(declare-fun bs!1542410 () Bool)

(assert (= bs!1542410 (and d!1949653 b!6219432)))

(assert (=> bs!1542410 (not (= lambda!339946 lambda!339927))))

(declare-fun bs!1542411 () Bool)

(assert (= bs!1542411 (and d!1949653 d!1949571)))

(assert (=> bs!1542411 (= lambda!339946 lambda!339939)))

(declare-fun bs!1542412 () Bool)

(assert (= bs!1542412 (and d!1949653 d!1949489)))

(assert (=> bs!1542412 (not (= lambda!339946 lambda!339919))))

(assert (=> bs!1542408 (not (= lambda!339946 lambda!339864))))

(assert (=> bs!1542412 (= lambda!339946 lambda!339918)))

(declare-fun bs!1542413 () Bool)

(assert (= bs!1542413 (and d!1949653 b!6219438)))

(assert (=> bs!1542413 (not (= lambda!339946 lambda!339928))))

(assert (=> d!1949653 true))

(assert (=> d!1949653 true))

(assert (=> d!1949653 true))

(declare-fun lambda!339947 () Int)

(assert (=> bs!1542408 (not (= lambda!339947 lambda!339863))))

(assert (=> bs!1542409 (not (= lambda!339947 lambda!339913))))

(assert (=> bs!1542410 (not (= lambda!339947 lambda!339927))))

(declare-fun bs!1542414 () Bool)

(assert (= bs!1542414 d!1949653))

(assert (=> bs!1542414 (not (= lambda!339947 lambda!339946))))

(assert (=> bs!1542411 (not (= lambda!339947 lambda!339939))))

(assert (=> bs!1542412 (= lambda!339947 lambda!339919)))

(assert (=> bs!1542408 (= lambda!339947 lambda!339864)))

(assert (=> bs!1542412 (not (= lambda!339947 lambda!339918))))

(assert (=> bs!1542413 (= lambda!339947 lambda!339928)))

(assert (=> d!1949653 true))

(assert (=> d!1949653 true))

(assert (=> d!1949653 true))

(assert (=> d!1949653 (= (Exists!3225 lambda!339946) (Exists!3225 lambda!339947))))

(assert (=> d!1949653 true))

(declare-fun _$90!2010 () Unit!157951)

(assert (=> d!1949653 (= (choose!46217 (regOne!32822 r!7292) (regTwo!32822 r!7292) s!2326) _$90!2010)))

(declare-fun m!7047802 () Bool)

(assert (=> bs!1542414 m!7047802))

(declare-fun m!7047804 () Bool)

(assert (=> bs!1542414 m!7047804))

(assert (=> d!1949489 d!1949653))

(assert (=> d!1949489 d!1949569))

(declare-fun d!1949667 () Bool)

(assert (=> d!1949667 (= (isEmpty!36649 s!2326) ((_ is Nil!64640) s!2326))))

(assert (=> bm!521887 d!1949667))

(declare-fun bs!1542416 () Bool)

(declare-fun d!1949669 () Bool)

(assert (= bs!1542416 (and d!1949669 d!1949551)))

(declare-fun lambda!339948 () Int)

(assert (=> bs!1542416 (= lambda!339948 lambda!339936)))

(assert (=> d!1949669 (= (nullableZipper!1929 lt!2344670) (exists!2489 lt!2344670 lambda!339948))))

(declare-fun bs!1542417 () Bool)

(assert (= bs!1542417 d!1949669))

(declare-fun m!7047806 () Bool)

(assert (=> bs!1542417 m!7047806))

(assert (=> b!6219202 d!1949669))

(declare-fun b!6219799 () Bool)

(declare-fun e!3786193 () Bool)

(assert (=> b!6219799 (= e!3786193 (= (head!12818 (_1!36437 (get!22326 lt!2344756))) (c!1123433 (regOne!32822 r!7292))))))

(declare-fun b!6219800 () Bool)

(declare-fun e!3786196 () Bool)

(declare-fun e!3786199 () Bool)

(assert (=> b!6219800 (= e!3786196 e!3786199)))

(declare-fun c!1123734 () Bool)

(assert (=> b!6219800 (= c!1123734 ((_ is EmptyLang!16155) (regOne!32822 r!7292)))))

(declare-fun b!6219801 () Bool)

(declare-fun res!2570825 () Bool)

(assert (=> b!6219801 (=> (not res!2570825) (not e!3786193))))

(declare-fun call!521955 () Bool)

(assert (=> b!6219801 (= res!2570825 (not call!521955))))

(declare-fun b!6219802 () Bool)

(declare-fun e!3786195 () Bool)

(declare-fun e!3786198 () Bool)

(assert (=> b!6219802 (= e!3786195 e!3786198)))

(declare-fun res!2570828 () Bool)

(assert (=> b!6219802 (=> (not res!2570828) (not e!3786198))))

(declare-fun lt!2344788 () Bool)

(assert (=> b!6219802 (= res!2570828 (not lt!2344788))))

(declare-fun b!6219803 () Bool)

(declare-fun e!3786197 () Bool)

(assert (=> b!6219803 (= e!3786197 (nullable!6148 (regOne!32822 r!7292)))))

(declare-fun b!6219804 () Bool)

(declare-fun res!2570822 () Bool)

(assert (=> b!6219804 (=> (not res!2570822) (not e!3786193))))

(assert (=> b!6219804 (= res!2570822 (isEmpty!36649 (tail!11903 (_1!36437 (get!22326 lt!2344756)))))))

(declare-fun d!1949671 () Bool)

(assert (=> d!1949671 e!3786196))

(declare-fun c!1123735 () Bool)

(assert (=> d!1949671 (= c!1123735 ((_ is EmptyExpr!16155) (regOne!32822 r!7292)))))

(assert (=> d!1949671 (= lt!2344788 e!3786197)))

(declare-fun c!1123733 () Bool)

(assert (=> d!1949671 (= c!1123733 (isEmpty!36649 (_1!36437 (get!22326 lt!2344756))))))

(assert (=> d!1949671 (validRegex!7891 (regOne!32822 r!7292))))

(assert (=> d!1949671 (= (matchR!8338 (regOne!32822 r!7292) (_1!36437 (get!22326 lt!2344756))) lt!2344788)))

(declare-fun b!6219805 () Bool)

(assert (=> b!6219805 (= e!3786196 (= lt!2344788 call!521955))))

(declare-fun b!6219806 () Bool)

(declare-fun e!3786194 () Bool)

(assert (=> b!6219806 (= e!3786198 e!3786194)))

(declare-fun res!2570826 () Bool)

(assert (=> b!6219806 (=> res!2570826 e!3786194)))

(assert (=> b!6219806 (= res!2570826 call!521955)))

(declare-fun b!6219807 () Bool)

(declare-fun res!2570823 () Bool)

(assert (=> b!6219807 (=> res!2570823 e!3786194)))

(assert (=> b!6219807 (= res!2570823 (not (isEmpty!36649 (tail!11903 (_1!36437 (get!22326 lt!2344756))))))))

(declare-fun b!6219808 () Bool)

(declare-fun res!2570827 () Bool)

(assert (=> b!6219808 (=> res!2570827 e!3786195)))

(assert (=> b!6219808 (= res!2570827 (not ((_ is ElementMatch!16155) (regOne!32822 r!7292))))))

(assert (=> b!6219808 (= e!3786199 e!3786195)))

(declare-fun b!6219809 () Bool)

(assert (=> b!6219809 (= e!3786194 (not (= (head!12818 (_1!36437 (get!22326 lt!2344756))) (c!1123433 (regOne!32822 r!7292)))))))

(declare-fun b!6219810 () Bool)

(declare-fun res!2570821 () Bool)

(assert (=> b!6219810 (=> res!2570821 e!3786195)))

(assert (=> b!6219810 (= res!2570821 e!3786193)))

(declare-fun res!2570824 () Bool)

(assert (=> b!6219810 (=> (not res!2570824) (not e!3786193))))

(assert (=> b!6219810 (= res!2570824 lt!2344788)))

(declare-fun bm!521950 () Bool)

(assert (=> bm!521950 (= call!521955 (isEmpty!36649 (_1!36437 (get!22326 lt!2344756))))))

(declare-fun b!6219811 () Bool)

(assert (=> b!6219811 (= e!3786199 (not lt!2344788))))

(declare-fun b!6219812 () Bool)

(assert (=> b!6219812 (= e!3786197 (matchR!8338 (derivativeStep!4868 (regOne!32822 r!7292) (head!12818 (_1!36437 (get!22326 lt!2344756)))) (tail!11903 (_1!36437 (get!22326 lt!2344756)))))))

(assert (= (and d!1949671 c!1123733) b!6219803))

(assert (= (and d!1949671 (not c!1123733)) b!6219812))

(assert (= (and d!1949671 c!1123735) b!6219805))

(assert (= (and d!1949671 (not c!1123735)) b!6219800))

(assert (= (and b!6219800 c!1123734) b!6219811))

(assert (= (and b!6219800 (not c!1123734)) b!6219808))

(assert (= (and b!6219808 (not res!2570827)) b!6219810))

(assert (= (and b!6219810 res!2570824) b!6219801))

(assert (= (and b!6219801 res!2570825) b!6219804))

(assert (= (and b!6219804 res!2570822) b!6219799))

(assert (= (and b!6219810 (not res!2570821)) b!6219802))

(assert (= (and b!6219802 res!2570828) b!6219806))

(assert (= (and b!6219806 (not res!2570826)) b!6219807))

(assert (= (and b!6219807 (not res!2570823)) b!6219809))

(assert (= (or b!6219805 b!6219801 b!6219806) bm!521950))

(declare-fun m!7047822 () Bool)

(assert (=> d!1949671 m!7047822))

(assert (=> d!1949671 m!7047440))

(declare-fun m!7047826 () Bool)

(assert (=> b!6219803 m!7047826))

(declare-fun m!7047828 () Bool)

(assert (=> b!6219804 m!7047828))

(assert (=> b!6219804 m!7047828))

(declare-fun m!7047832 () Bool)

(assert (=> b!6219804 m!7047832))

(assert (=> b!6219807 m!7047828))

(assert (=> b!6219807 m!7047828))

(assert (=> b!6219807 m!7047832))

(declare-fun m!7047834 () Bool)

(assert (=> b!6219812 m!7047834))

(assert (=> b!6219812 m!7047834))

(declare-fun m!7047836 () Bool)

(assert (=> b!6219812 m!7047836))

(assert (=> b!6219812 m!7047828))

(assert (=> b!6219812 m!7047836))

(assert (=> b!6219812 m!7047828))

(declare-fun m!7047838 () Bool)

(assert (=> b!6219812 m!7047838))

(assert (=> b!6219809 m!7047834))

(assert (=> b!6219799 m!7047834))

(assert (=> bm!521950 m!7047822))

(assert (=> b!6219335 d!1949671))

(assert (=> b!6219335 d!1949595))

(declare-fun d!1949683 () Bool)

(assert (=> d!1949683 (= (head!12819 (unfocusZipperList!1576 zl!343)) (h!71089 (unfocusZipperList!1576 zl!343)))))

(assert (=> b!6219188 d!1949683))

(assert (=> b!6219307 d!1949443))

(declare-fun call!521956 () (InoxSet Context!11078))

(declare-fun e!3786201 () (InoxSet Context!11078))

(declare-fun b!6219813 () Bool)

(assert (=> b!6219813 (= e!3786201 ((_ map or) call!521956 (derivationStepZipperUp!1329 (Context!11079 (t!378295 (exprs!6039 (Context!11079 (t!378295 (exprs!6039 lt!2344676)))))) (h!71088 s!2326))))))

(declare-fun b!6219814 () Bool)

(declare-fun e!3786200 () (InoxSet Context!11078))

(assert (=> b!6219814 (= e!3786200 ((as const (Array Context!11078 Bool)) false))))

(declare-fun b!6219815 () Bool)

(assert (=> b!6219815 (= e!3786200 call!521956)))

(declare-fun bm!521951 () Bool)

(assert (=> bm!521951 (= call!521956 (derivationStepZipperDown!1403 (h!71089 (exprs!6039 (Context!11079 (t!378295 (exprs!6039 lt!2344676))))) (Context!11079 (t!378295 (exprs!6039 (Context!11079 (t!378295 (exprs!6039 lt!2344676)))))) (h!71088 s!2326)))))

(declare-fun b!6219816 () Bool)

(assert (=> b!6219816 (= e!3786201 e!3786200)))

(declare-fun c!1123736 () Bool)

(assert (=> b!6219816 (= c!1123736 ((_ is Cons!64641) (exprs!6039 (Context!11079 (t!378295 (exprs!6039 lt!2344676))))))))

(declare-fun d!1949685 () Bool)

(declare-fun c!1123737 () Bool)

(declare-fun e!3786202 () Bool)

(assert (=> d!1949685 (= c!1123737 e!3786202)))

(declare-fun res!2570829 () Bool)

(assert (=> d!1949685 (=> (not res!2570829) (not e!3786202))))

(assert (=> d!1949685 (= res!2570829 ((_ is Cons!64641) (exprs!6039 (Context!11079 (t!378295 (exprs!6039 lt!2344676))))))))

(assert (=> d!1949685 (= (derivationStepZipperUp!1329 (Context!11079 (t!378295 (exprs!6039 lt!2344676))) (h!71088 s!2326)) e!3786201)))

(declare-fun b!6219817 () Bool)

(assert (=> b!6219817 (= e!3786202 (nullable!6148 (h!71089 (exprs!6039 (Context!11079 (t!378295 (exprs!6039 lt!2344676)))))))))

(assert (= (and d!1949685 res!2570829) b!6219817))

(assert (= (and d!1949685 c!1123737) b!6219813))

(assert (= (and d!1949685 (not c!1123737)) b!6219816))

(assert (= (and b!6219816 c!1123736) b!6219815))

(assert (= (and b!6219816 (not c!1123736)) b!6219814))

(assert (= (or b!6219813 b!6219815) bm!521951))

(declare-fun m!7047842 () Bool)

(assert (=> b!6219813 m!7047842))

(declare-fun m!7047844 () Bool)

(assert (=> bm!521951 m!7047844))

(declare-fun m!7047846 () Bool)

(assert (=> b!6219817 m!7047846))

(assert (=> b!6219391 d!1949685))

(declare-fun d!1949691 () Bool)

(assert (=> d!1949691 (= (isEmpty!36649 (t!378294 s!2326)) ((_ is Nil!64640) (t!378294 s!2326)))))

(assert (=> d!1949457 d!1949691))

(declare-fun d!1949693 () Bool)

(assert (=> d!1949693 (= (isDefined!12749 lt!2344756) (not (isEmpty!36651 lt!2344756)))))

(declare-fun bs!1542431 () Bool)

(assert (= bs!1542431 d!1949693))

(declare-fun m!7047848 () Bool)

(assert (=> bs!1542431 m!7047848))

(assert (=> b!6219331 d!1949693))

(declare-fun b!6219818 () Bool)

(declare-fun c!1123740 () Bool)

(declare-fun e!3786207 () Bool)

(assert (=> b!6219818 (= c!1123740 e!3786207)))

(declare-fun res!2570830 () Bool)

(assert (=> b!6219818 (=> (not res!2570830) (not e!3786207))))

(assert (=> b!6219818 (= res!2570830 ((_ is Concat!25000) (h!71089 (exprs!6039 (h!71090 zl!343)))))))

(declare-fun e!3786206 () (InoxSet Context!11078))

(declare-fun e!3786205 () (InoxSet Context!11078))

(assert (=> b!6219818 (= e!3786206 e!3786205)))

(declare-fun b!6219819 () Bool)

(declare-fun c!1123738 () Bool)

(assert (=> b!6219819 (= c!1123738 ((_ is Star!16155) (h!71089 (exprs!6039 (h!71090 zl!343)))))))

(declare-fun e!3786204 () (InoxSet Context!11078))

(declare-fun e!3786208 () (InoxSet Context!11078))

(assert (=> b!6219819 (= e!3786204 e!3786208)))

(declare-fun b!6219820 () Bool)

(assert (=> b!6219820 (= e!3786208 ((as const (Array Context!11078 Bool)) false))))

(declare-fun b!6219821 () Bool)

(declare-fun call!521961 () (InoxSet Context!11078))

(declare-fun call!521962 () (InoxSet Context!11078))

(assert (=> b!6219821 (= e!3786205 ((_ map or) call!521961 call!521962))))

(declare-fun b!6219822 () Bool)

(declare-fun call!521960 () (InoxSet Context!11078))

(assert (=> b!6219822 (= e!3786208 call!521960)))

(declare-fun b!6219823 () Bool)

(assert (=> b!6219823 (= e!3786205 e!3786204)))

(declare-fun c!1123739 () Bool)

(assert (=> b!6219823 (= c!1123739 ((_ is Concat!25000) (h!71089 (exprs!6039 (h!71090 zl!343)))))))

(declare-fun d!1949695 () Bool)

(declare-fun c!1123742 () Bool)

(assert (=> d!1949695 (= c!1123742 (and ((_ is ElementMatch!16155) (h!71089 (exprs!6039 (h!71090 zl!343)))) (= (c!1123433 (h!71089 (exprs!6039 (h!71090 zl!343)))) (h!71088 s!2326))))))

(declare-fun e!3786203 () (InoxSet Context!11078))

(assert (=> d!1949695 (= (derivationStepZipperDown!1403 (h!71089 (exprs!6039 (h!71090 zl!343))) (Context!11079 (t!378295 (exprs!6039 (h!71090 zl!343)))) (h!71088 s!2326)) e!3786203)))

(declare-fun bm!521952 () Bool)

(assert (=> bm!521952 (= call!521960 call!521962)))

(declare-fun b!6219824 () Bool)

(assert (=> b!6219824 (= e!3786207 (nullable!6148 (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343))))))))

(declare-fun bm!521953 () Bool)

(declare-fun call!521958 () (InoxSet Context!11078))

(assert (=> bm!521953 (= call!521962 call!521958)))

(declare-fun c!1123741 () Bool)

(declare-fun call!521957 () List!64765)

(declare-fun bm!521954 () Bool)

(assert (=> bm!521954 (= call!521958 (derivationStepZipperDown!1403 (ite c!1123741 (regOne!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123740 (regTwo!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123739 (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (reg!16484 (h!71089 (exprs!6039 (h!71090 zl!343))))))) (ite (or c!1123741 c!1123740) (Context!11079 (t!378295 (exprs!6039 (h!71090 zl!343)))) (Context!11079 call!521957)) (h!71088 s!2326)))))

(declare-fun bm!521955 () Bool)

(declare-fun call!521959 () List!64765)

(assert (=> bm!521955 (= call!521961 (derivationStepZipperDown!1403 (ite c!1123741 (regTwo!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343))))) (ite c!1123741 (Context!11079 (t!378295 (exprs!6039 (h!71090 zl!343)))) (Context!11079 call!521959)) (h!71088 s!2326)))))

(declare-fun b!6219825 () Bool)

(assert (=> b!6219825 (= e!3786203 e!3786206)))

(assert (=> b!6219825 (= c!1123741 ((_ is Union!16155) (h!71089 (exprs!6039 (h!71090 zl!343)))))))

(declare-fun b!6219826 () Bool)

(assert (=> b!6219826 (= e!3786206 ((_ map or) call!521958 call!521961))))

(declare-fun bm!521956 () Bool)

(assert (=> bm!521956 (= call!521957 call!521959)))

(declare-fun bm!521957 () Bool)

(assert (=> bm!521957 (= call!521959 ($colon$colon!2024 (exprs!6039 (Context!11079 (t!378295 (exprs!6039 (h!71090 zl!343))))) (ite (or c!1123740 c!1123739) (regTwo!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (h!71089 (exprs!6039 (h!71090 zl!343))))))))

(declare-fun b!6219827 () Bool)

(assert (=> b!6219827 (= e!3786203 (store ((as const (Array Context!11078 Bool)) false) (Context!11079 (t!378295 (exprs!6039 (h!71090 zl!343)))) true))))

(declare-fun b!6219828 () Bool)

(assert (=> b!6219828 (= e!3786204 call!521960)))

(assert (= (and d!1949695 c!1123742) b!6219827))

(assert (= (and d!1949695 (not c!1123742)) b!6219825))

(assert (= (and b!6219825 c!1123741) b!6219826))

(assert (= (and b!6219825 (not c!1123741)) b!6219818))

(assert (= (and b!6219818 res!2570830) b!6219824))

(assert (= (and b!6219818 c!1123740) b!6219821))

(assert (= (and b!6219818 (not c!1123740)) b!6219823))

(assert (= (and b!6219823 c!1123739) b!6219828))

(assert (= (and b!6219823 (not c!1123739)) b!6219819))

(assert (= (and b!6219819 c!1123738) b!6219822))

(assert (= (and b!6219819 (not c!1123738)) b!6219820))

(assert (= (or b!6219828 b!6219822) bm!521956))

(assert (= (or b!6219828 b!6219822) bm!521952))

(assert (= (or b!6219821 bm!521956) bm!521957))

(assert (= (or b!6219821 bm!521952) bm!521953))

(assert (= (or b!6219826 b!6219821) bm!521955))

(assert (= (or b!6219826 bm!521953) bm!521954))

(assert (=> b!6219824 m!7047484))

(declare-fun m!7047852 () Bool)

(assert (=> bm!521954 m!7047852))

(declare-fun m!7047854 () Bool)

(assert (=> bm!521957 m!7047854))

(declare-fun m!7047856 () Bool)

(assert (=> b!6219827 m!7047856))

(declare-fun m!7047858 () Bool)

(assert (=> bm!521955 m!7047858))

(assert (=> bm!521869 d!1949695))

(declare-fun b!6219852 () Bool)

(declare-fun e!3786233 () Bool)

(declare-fun e!3786229 () Bool)

(assert (=> b!6219852 (= e!3786233 e!3786229)))

(declare-fun res!2570849 () Bool)

(assert (=> b!6219852 (=> (not res!2570849) (not e!3786229))))

(assert (=> b!6219852 (= res!2570849 (and (not ((_ is EmptyLang!16155) (regOne!32822 (regOne!32822 r!7292)))) (not ((_ is ElementMatch!16155) (regOne!32822 (regOne!32822 r!7292))))))))

(declare-fun b!6219853 () Bool)

(declare-fun e!3786230 () Bool)

(assert (=> b!6219853 (= e!3786229 e!3786230)))

(declare-fun res!2570850 () Bool)

(assert (=> b!6219853 (=> res!2570850 e!3786230)))

(assert (=> b!6219853 (= res!2570850 ((_ is Star!16155) (regOne!32822 (regOne!32822 r!7292))))))

(declare-fun b!6219854 () Bool)

(declare-fun e!3786231 () Bool)

(assert (=> b!6219854 (= e!3786230 e!3786231)))

(declare-fun c!1123747 () Bool)

(assert (=> b!6219854 (= c!1123747 ((_ is Union!16155) (regOne!32822 (regOne!32822 r!7292))))))

(declare-fun bm!521965 () Bool)

(declare-fun call!521971 () Bool)

(assert (=> bm!521965 (= call!521971 (nullable!6148 (ite c!1123747 (regTwo!32823 (regOne!32822 (regOne!32822 r!7292))) (regTwo!32822 (regOne!32822 (regOne!32822 r!7292))))))))

(declare-fun b!6219855 () Bool)

(declare-fun e!3786232 () Bool)

(assert (=> b!6219855 (= e!3786232 call!521971)))

(declare-fun bm!521966 () Bool)

(declare-fun call!521970 () Bool)

(assert (=> bm!521966 (= call!521970 (nullable!6148 (ite c!1123747 (regOne!32823 (regOne!32822 (regOne!32822 r!7292))) (regOne!32822 (regOne!32822 (regOne!32822 r!7292))))))))

(declare-fun b!6219856 () Bool)

(assert (=> b!6219856 (= e!3786231 e!3786232)))

(declare-fun res!2570847 () Bool)

(assert (=> b!6219856 (= res!2570847 call!521970)))

(assert (=> b!6219856 (=> res!2570847 e!3786232)))

(declare-fun b!6219857 () Bool)

(declare-fun e!3786228 () Bool)

(assert (=> b!6219857 (= e!3786231 e!3786228)))

(declare-fun res!2570846 () Bool)

(assert (=> b!6219857 (= res!2570846 call!521970)))

(assert (=> b!6219857 (=> (not res!2570846) (not e!3786228))))

(declare-fun b!6219858 () Bool)

(assert (=> b!6219858 (= e!3786228 call!521971)))

(declare-fun d!1949707 () Bool)

(declare-fun res!2570848 () Bool)

(assert (=> d!1949707 (=> res!2570848 e!3786233)))

(assert (=> d!1949707 (= res!2570848 ((_ is EmptyExpr!16155) (regOne!32822 (regOne!32822 r!7292))))))

(assert (=> d!1949707 (= (nullableFct!2104 (regOne!32822 (regOne!32822 r!7292))) e!3786233)))

(assert (= (and d!1949707 (not res!2570848)) b!6219852))

(assert (= (and b!6219852 res!2570849) b!6219853))

(assert (= (and b!6219853 (not res!2570850)) b!6219854))

(assert (= (and b!6219854 c!1123747) b!6219856))

(assert (= (and b!6219854 (not c!1123747)) b!6219857))

(assert (= (and b!6219856 (not res!2570847)) b!6219855))

(assert (= (and b!6219857 res!2570846) b!6219858))

(assert (= (or b!6219855 b!6219858) bm!521965))

(assert (= (or b!6219856 b!6219857) bm!521966))

(declare-fun m!7047868 () Bool)

(assert (=> bm!521965 m!7047868))

(declare-fun m!7047870 () Bool)

(assert (=> bm!521966 m!7047870))

(assert (=> d!1949455 d!1949707))

(declare-fun b!6219863 () Bool)

(declare-fun c!1123750 () Bool)

(declare-fun e!3786240 () Bool)

(assert (=> b!6219863 (= c!1123750 e!3786240)))

(declare-fun res!2570855 () Bool)

(assert (=> b!6219863 (=> (not res!2570855) (not e!3786240))))

(assert (=> b!6219863 (= res!2570855 ((_ is Concat!25000) (h!71089 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343)))))))))))

(declare-fun e!3786239 () (InoxSet Context!11078))

(declare-fun e!3786238 () (InoxSet Context!11078))

(assert (=> b!6219863 (= e!3786239 e!3786238)))

(declare-fun b!6219864 () Bool)

(declare-fun c!1123748 () Bool)

(assert (=> b!6219864 (= c!1123748 ((_ is Star!16155) (h!71089 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343)))))))))))

(declare-fun e!3786237 () (InoxSet Context!11078))

(declare-fun e!3786241 () (InoxSet Context!11078))

(assert (=> b!6219864 (= e!3786237 e!3786241)))

(declare-fun b!6219865 () Bool)

(assert (=> b!6219865 (= e!3786241 ((as const (Array Context!11078 Bool)) false))))

(declare-fun b!6219866 () Bool)

(declare-fun call!521976 () (InoxSet Context!11078))

(declare-fun call!521977 () (InoxSet Context!11078))

(assert (=> b!6219866 (= e!3786238 ((_ map or) call!521976 call!521977))))

(declare-fun b!6219867 () Bool)

(declare-fun call!521975 () (InoxSet Context!11078))

(assert (=> b!6219867 (= e!3786241 call!521975)))

(declare-fun b!6219868 () Bool)

(assert (=> b!6219868 (= e!3786238 e!3786237)))

(declare-fun c!1123749 () Bool)

(assert (=> b!6219868 (= c!1123749 ((_ is Concat!25000) (h!71089 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343)))))))))))

(declare-fun d!1949713 () Bool)

(declare-fun c!1123752 () Bool)

(assert (=> d!1949713 (= c!1123752 (and ((_ is ElementMatch!16155) (h!71089 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343)))))))) (= (c!1123433 (h!71089 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343)))))))) (h!71088 s!2326))))))

(declare-fun e!3786236 () (InoxSet Context!11078))

(assert (=> d!1949713 (= (derivationStepZipperDown!1403 (h!71089 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343))))))) (Context!11079 (t!378295 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343)))))))) (h!71088 s!2326)) e!3786236)))

(declare-fun bm!521967 () Bool)

(assert (=> bm!521967 (= call!521975 call!521977)))

(declare-fun b!6219869 () Bool)

(assert (=> b!6219869 (= e!3786240 (nullable!6148 (regOne!32822 (h!71089 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343))))))))))))

(declare-fun bm!521968 () Bool)

(declare-fun call!521973 () (InoxSet Context!11078))

(assert (=> bm!521968 (= call!521977 call!521973)))

(declare-fun bm!521969 () Bool)

(declare-fun call!521972 () List!64765)

(declare-fun c!1123751 () Bool)

(assert (=> bm!521969 (= call!521973 (derivationStepZipperDown!1403 (ite c!1123751 (regOne!32823 (h!71089 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343)))))))) (ite c!1123750 (regTwo!32822 (h!71089 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343)))))))) (ite c!1123749 (regOne!32822 (h!71089 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343)))))))) (reg!16484 (h!71089 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343))))))))))) (ite (or c!1123751 c!1123750) (Context!11079 (t!378295 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343)))))))) (Context!11079 call!521972)) (h!71088 s!2326)))))

(declare-fun call!521974 () List!64765)

(declare-fun bm!521970 () Bool)

(assert (=> bm!521970 (= call!521976 (derivationStepZipperDown!1403 (ite c!1123751 (regTwo!32823 (h!71089 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343)))))))) (regOne!32822 (h!71089 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343))))))))) (ite c!1123751 (Context!11079 (t!378295 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343)))))))) (Context!11079 call!521974)) (h!71088 s!2326)))))

(declare-fun b!6219870 () Bool)

(assert (=> b!6219870 (= e!3786236 e!3786239)))

(assert (=> b!6219870 (= c!1123751 ((_ is Union!16155) (h!71089 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343)))))))))))

(declare-fun b!6219871 () Bool)

(assert (=> b!6219871 (= e!3786239 ((_ map or) call!521973 call!521976))))

(declare-fun bm!521971 () Bool)

(assert (=> bm!521971 (= call!521972 call!521974)))

(declare-fun bm!521972 () Bool)

(assert (=> bm!521972 (= call!521974 ($colon$colon!2024 (exprs!6039 (Context!11079 (t!378295 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343))))))))) (ite (or c!1123750 c!1123749) (regTwo!32822 (h!71089 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343)))))))) (h!71089 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343))))))))))))

(declare-fun b!6219872 () Bool)

(assert (=> b!6219872 (= e!3786236 (store ((as const (Array Context!11078 Bool)) false) (Context!11079 (t!378295 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343)))))))) true))))

(declare-fun b!6219873 () Bool)

(assert (=> b!6219873 (= e!3786237 call!521975)))

(assert (= (and d!1949713 c!1123752) b!6219872))

(assert (= (and d!1949713 (not c!1123752)) b!6219870))

(assert (= (and b!6219870 c!1123751) b!6219871))

(assert (= (and b!6219870 (not c!1123751)) b!6219863))

(assert (= (and b!6219863 res!2570855) b!6219869))

(assert (= (and b!6219863 c!1123750) b!6219866))

(assert (= (and b!6219863 (not c!1123750)) b!6219868))

(assert (= (and b!6219868 c!1123749) b!6219873))

(assert (= (and b!6219868 (not c!1123749)) b!6219864))

(assert (= (and b!6219864 c!1123748) b!6219867))

(assert (= (and b!6219864 (not c!1123748)) b!6219865))

(assert (= (or b!6219873 b!6219867) bm!521971))

(assert (= (or b!6219873 b!6219867) bm!521967))

(assert (= (or b!6219866 bm!521971) bm!521972))

(assert (= (or b!6219866 bm!521967) bm!521968))

(assert (= (or b!6219871 b!6219866) bm!521970))

(assert (= (or b!6219871 bm!521968) bm!521969))

(declare-fun m!7047872 () Bool)

(assert (=> b!6219869 m!7047872))

(declare-fun m!7047874 () Bool)

(assert (=> bm!521969 m!7047874))

(declare-fun m!7047876 () Bool)

(assert (=> bm!521972 m!7047876))

(declare-fun m!7047878 () Bool)

(assert (=> b!6219872 m!7047878))

(declare-fun m!7047880 () Bool)

(assert (=> bm!521970 m!7047880))

(assert (=> bm!521868 d!1949713))

(declare-fun bs!1542435 () Bool)

(declare-fun d!1949715 () Bool)

(assert (= bs!1542435 (and d!1949715 d!1949453)))

(declare-fun lambda!339954 () Int)

(assert (=> bs!1542435 (= lambda!339954 lambda!339903)))

(declare-fun bs!1542436 () Bool)

(assert (= bs!1542436 (and d!1949715 d!1949475)))

(assert (=> bs!1542436 (= lambda!339954 lambda!339907)))

(declare-fun bs!1542437 () Bool)

(assert (= bs!1542437 (and d!1949715 d!1949451)))

(assert (=> bs!1542437 (= lambda!339954 lambda!339900)))

(declare-fun bs!1542439 () Bool)

(assert (= bs!1542439 (and d!1949715 d!1949525)))

(assert (=> bs!1542439 (= lambda!339954 lambda!339929)))

(declare-fun bs!1542440 () Bool)

(assert (= bs!1542440 (and d!1949715 d!1949479)))

(assert (=> bs!1542440 (= lambda!339954 lambda!339910)))

(declare-fun bs!1542442 () Bool)

(assert (= bs!1542442 (and d!1949715 d!1949473)))

(assert (=> bs!1542442 (= lambda!339954 lambda!339906)))

(assert (=> d!1949715 (= (inv!83634 setElem!42238) (forall!15269 (exprs!6039 setElem!42238) lambda!339954))))

(declare-fun bs!1542444 () Bool)

(assert (= bs!1542444 d!1949715))

(declare-fun m!7047882 () Bool)

(assert (=> bs!1542444 m!7047882))

(assert (=> setNonEmpty!42238 d!1949715))

(declare-fun bs!1542446 () Bool)

(declare-fun d!1949717 () Bool)

(assert (= bs!1542446 (and d!1949717 d!1949453)))

(declare-fun lambda!339955 () Int)

(assert (=> bs!1542446 (= lambda!339955 lambda!339903)))

(declare-fun bs!1542448 () Bool)

(assert (= bs!1542448 (and d!1949717 d!1949475)))

(assert (=> bs!1542448 (= lambda!339955 lambda!339907)))

(declare-fun bs!1542449 () Bool)

(assert (= bs!1542449 (and d!1949717 d!1949715)))

(assert (=> bs!1542449 (= lambda!339955 lambda!339954)))

(declare-fun bs!1542450 () Bool)

(assert (= bs!1542450 (and d!1949717 d!1949451)))

(assert (=> bs!1542450 (= lambda!339955 lambda!339900)))

(declare-fun bs!1542451 () Bool)

(assert (= bs!1542451 (and d!1949717 d!1949525)))

(assert (=> bs!1542451 (= lambda!339955 lambda!339929)))

(declare-fun bs!1542452 () Bool)

(assert (= bs!1542452 (and d!1949717 d!1949479)))

(assert (=> bs!1542452 (= lambda!339955 lambda!339910)))

(declare-fun bs!1542453 () Bool)

(assert (= bs!1542453 (and d!1949717 d!1949473)))

(assert (=> bs!1542453 (= lambda!339955 lambda!339906)))

(declare-fun b!6219874 () Bool)

(declare-fun e!3786242 () Regex!16155)

(declare-fun e!3786244 () Regex!16155)

(assert (=> b!6219874 (= e!3786242 e!3786244)))

(declare-fun c!1123755 () Bool)

(assert (=> b!6219874 (= c!1123755 ((_ is Cons!64641) (t!378295 (unfocusZipperList!1576 zl!343))))))

(declare-fun b!6219875 () Bool)

(assert (=> b!6219875 (= e!3786244 EmptyLang!16155)))

(declare-fun e!3786243 () Bool)

(assert (=> d!1949717 e!3786243))

(declare-fun res!2570857 () Bool)

(assert (=> d!1949717 (=> (not res!2570857) (not e!3786243))))

(declare-fun lt!2344789 () Regex!16155)

(assert (=> d!1949717 (= res!2570857 (validRegex!7891 lt!2344789))))

(assert (=> d!1949717 (= lt!2344789 e!3786242)))

(declare-fun c!1123754 () Bool)

(declare-fun e!3786246 () Bool)

(assert (=> d!1949717 (= c!1123754 e!3786246)))

(declare-fun res!2570856 () Bool)

(assert (=> d!1949717 (=> (not res!2570856) (not e!3786246))))

(assert (=> d!1949717 (= res!2570856 ((_ is Cons!64641) (t!378295 (unfocusZipperList!1576 zl!343))))))

(assert (=> d!1949717 (forall!15269 (t!378295 (unfocusZipperList!1576 zl!343)) lambda!339955)))

(assert (=> d!1949717 (= (generalisedUnion!1999 (t!378295 (unfocusZipperList!1576 zl!343))) lt!2344789)))

(declare-fun b!6219876 () Bool)

(assert (=> b!6219876 (= e!3786244 (Union!16155 (h!71089 (t!378295 (unfocusZipperList!1576 zl!343))) (generalisedUnion!1999 (t!378295 (t!378295 (unfocusZipperList!1576 zl!343))))))))

(declare-fun b!6219877 () Bool)

(declare-fun e!3786245 () Bool)

(assert (=> b!6219877 (= e!3786243 e!3786245)))

(declare-fun c!1123753 () Bool)

(assert (=> b!6219877 (= c!1123753 (isEmpty!36646 (t!378295 (unfocusZipperList!1576 zl!343))))))

(declare-fun b!6219878 () Bool)

(declare-fun e!3786247 () Bool)

(assert (=> b!6219878 (= e!3786245 e!3786247)))

(declare-fun c!1123756 () Bool)

(assert (=> b!6219878 (= c!1123756 (isEmpty!36646 (tail!11904 (t!378295 (unfocusZipperList!1576 zl!343)))))))

(declare-fun b!6219879 () Bool)

(assert (=> b!6219879 (= e!3786245 (isEmptyLang!1574 lt!2344789))))

(declare-fun b!6219880 () Bool)

(assert (=> b!6219880 (= e!3786247 (= lt!2344789 (head!12819 (t!378295 (unfocusZipperList!1576 zl!343)))))))

(declare-fun b!6219881 () Bool)

(assert (=> b!6219881 (= e!3786247 (isUnion!1004 lt!2344789))))

(declare-fun b!6219882 () Bool)

(assert (=> b!6219882 (= e!3786246 (isEmpty!36646 (t!378295 (t!378295 (unfocusZipperList!1576 zl!343)))))))

(declare-fun b!6219883 () Bool)

(assert (=> b!6219883 (= e!3786242 (h!71089 (t!378295 (unfocusZipperList!1576 zl!343))))))

(assert (= (and d!1949717 res!2570856) b!6219882))

(assert (= (and d!1949717 c!1123754) b!6219883))

(assert (= (and d!1949717 (not c!1123754)) b!6219874))

(assert (= (and b!6219874 c!1123755) b!6219876))

(assert (= (and b!6219874 (not c!1123755)) b!6219875))

(assert (= (and d!1949717 res!2570857) b!6219877))

(assert (= (and b!6219877 c!1123753) b!6219879))

(assert (= (and b!6219877 (not c!1123753)) b!6219878))

(assert (= (and b!6219878 c!1123756) b!6219880))

(assert (= (and b!6219878 (not c!1123756)) b!6219881))

(declare-fun m!7047886 () Bool)

(assert (=> b!6219880 m!7047886))

(declare-fun m!7047888 () Bool)

(assert (=> b!6219876 m!7047888))

(declare-fun m!7047890 () Bool)

(assert (=> d!1949717 m!7047890))

(declare-fun m!7047892 () Bool)

(assert (=> d!1949717 m!7047892))

(declare-fun m!7047894 () Bool)

(assert (=> b!6219879 m!7047894))

(declare-fun m!7047896 () Bool)

(assert (=> b!6219878 m!7047896))

(assert (=> b!6219878 m!7047896))

(declare-fun m!7047898 () Bool)

(assert (=> b!6219878 m!7047898))

(assert (=> b!6219877 m!7047338))

(declare-fun m!7047900 () Bool)

(assert (=> b!6219882 m!7047900))

(declare-fun m!7047902 () Bool)

(assert (=> b!6219881 m!7047902))

(assert (=> b!6219184 d!1949717))

(declare-fun d!1949721 () Bool)

(assert (=> d!1949721 (= (isEmpty!36646 (tail!11904 (exprs!6039 (h!71090 zl!343)))) ((_ is Nil!64641) (tail!11904 (exprs!6039 (h!71090 zl!343)))))))

(assert (=> b!6219303 d!1949721))

(declare-fun d!1949723 () Bool)

(assert (=> d!1949723 (= (tail!11904 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343))))))

(assert (=> b!6219303 d!1949723))

(declare-fun b!6219895 () Bool)

(declare-fun c!1123764 () Bool)

(declare-fun e!3786258 () Bool)

(assert (=> b!6219895 (= c!1123764 e!3786258)))

(declare-fun res!2570859 () Bool)

(assert (=> b!6219895 (=> (not res!2570859) (not e!3786258))))

(assert (=> b!6219895 (= res!2570859 ((_ is Concat!25000) (ite c!1123578 (regTwo!32823 (regTwo!32822 (regOne!32822 r!7292))) (regOne!32822 (regTwo!32822 (regOne!32822 r!7292))))))))

(declare-fun e!3786257 () (InoxSet Context!11078))

(declare-fun e!3786256 () (InoxSet Context!11078))

(assert (=> b!6219895 (= e!3786257 e!3786256)))

(declare-fun b!6219896 () Bool)

(declare-fun c!1123762 () Bool)

(assert (=> b!6219896 (= c!1123762 ((_ is Star!16155) (ite c!1123578 (regTwo!32823 (regTwo!32822 (regOne!32822 r!7292))) (regOne!32822 (regTwo!32822 (regOne!32822 r!7292))))))))

(declare-fun e!3786255 () (InoxSet Context!11078))

(declare-fun e!3786259 () (InoxSet Context!11078))

(assert (=> b!6219896 (= e!3786255 e!3786259)))

(declare-fun b!6219897 () Bool)

(assert (=> b!6219897 (= e!3786259 ((as const (Array Context!11078 Bool)) false))))

(declare-fun b!6219898 () Bool)

(declare-fun call!521988 () (InoxSet Context!11078))

(declare-fun call!521989 () (InoxSet Context!11078))

(assert (=> b!6219898 (= e!3786256 ((_ map or) call!521988 call!521989))))

(declare-fun b!6219899 () Bool)

(declare-fun call!521987 () (InoxSet Context!11078))

(assert (=> b!6219899 (= e!3786259 call!521987)))

(declare-fun b!6219900 () Bool)

(assert (=> b!6219900 (= e!3786256 e!3786255)))

(declare-fun c!1123763 () Bool)

(assert (=> b!6219900 (= c!1123763 ((_ is Concat!25000) (ite c!1123578 (regTwo!32823 (regTwo!32822 (regOne!32822 r!7292))) (regOne!32822 (regTwo!32822 (regOne!32822 r!7292))))))))

(declare-fun d!1949725 () Bool)

(declare-fun c!1123766 () Bool)

(assert (=> d!1949725 (= c!1123766 (and ((_ is ElementMatch!16155) (ite c!1123578 (regTwo!32823 (regTwo!32822 (regOne!32822 r!7292))) (regOne!32822 (regTwo!32822 (regOne!32822 r!7292))))) (= (c!1123433 (ite c!1123578 (regTwo!32823 (regTwo!32822 (regOne!32822 r!7292))) (regOne!32822 (regTwo!32822 (regOne!32822 r!7292))))) (h!71088 s!2326))))))

(declare-fun e!3786254 () (InoxSet Context!11078))

(assert (=> d!1949725 (= (derivationStepZipperDown!1403 (ite c!1123578 (regTwo!32823 (regTwo!32822 (regOne!32822 r!7292))) (regOne!32822 (regTwo!32822 (regOne!32822 r!7292)))) (ite c!1123578 lt!2344673 (Context!11079 call!521852)) (h!71088 s!2326)) e!3786254)))

(declare-fun bm!521979 () Bool)

(assert (=> bm!521979 (= call!521987 call!521989)))

(declare-fun b!6219901 () Bool)

(assert (=> b!6219901 (= e!3786258 (nullable!6148 (regOne!32822 (ite c!1123578 (regTwo!32823 (regTwo!32822 (regOne!32822 r!7292))) (regOne!32822 (regTwo!32822 (regOne!32822 r!7292)))))))))

(declare-fun bm!521980 () Bool)

(declare-fun call!521985 () (InoxSet Context!11078))

(assert (=> bm!521980 (= call!521989 call!521985)))

(declare-fun c!1123765 () Bool)

(declare-fun bm!521981 () Bool)

(declare-fun call!521984 () List!64765)

(assert (=> bm!521981 (= call!521985 (derivationStepZipperDown!1403 (ite c!1123765 (regOne!32823 (ite c!1123578 (regTwo!32823 (regTwo!32822 (regOne!32822 r!7292))) (regOne!32822 (regTwo!32822 (regOne!32822 r!7292))))) (ite c!1123764 (regTwo!32822 (ite c!1123578 (regTwo!32823 (regTwo!32822 (regOne!32822 r!7292))) (regOne!32822 (regTwo!32822 (regOne!32822 r!7292))))) (ite c!1123763 (regOne!32822 (ite c!1123578 (regTwo!32823 (regTwo!32822 (regOne!32822 r!7292))) (regOne!32822 (regTwo!32822 (regOne!32822 r!7292))))) (reg!16484 (ite c!1123578 (regTwo!32823 (regTwo!32822 (regOne!32822 r!7292))) (regOne!32822 (regTwo!32822 (regOne!32822 r!7292)))))))) (ite (or c!1123765 c!1123764) (ite c!1123578 lt!2344673 (Context!11079 call!521852)) (Context!11079 call!521984)) (h!71088 s!2326)))))

(declare-fun call!521986 () List!64765)

(declare-fun bm!521982 () Bool)

(assert (=> bm!521982 (= call!521988 (derivationStepZipperDown!1403 (ite c!1123765 (regTwo!32823 (ite c!1123578 (regTwo!32823 (regTwo!32822 (regOne!32822 r!7292))) (regOne!32822 (regTwo!32822 (regOne!32822 r!7292))))) (regOne!32822 (ite c!1123578 (regTwo!32823 (regTwo!32822 (regOne!32822 r!7292))) (regOne!32822 (regTwo!32822 (regOne!32822 r!7292)))))) (ite c!1123765 (ite c!1123578 lt!2344673 (Context!11079 call!521852)) (Context!11079 call!521986)) (h!71088 s!2326)))))

(declare-fun b!6219902 () Bool)

(assert (=> b!6219902 (= e!3786254 e!3786257)))

(assert (=> b!6219902 (= c!1123765 ((_ is Union!16155) (ite c!1123578 (regTwo!32823 (regTwo!32822 (regOne!32822 r!7292))) (regOne!32822 (regTwo!32822 (regOne!32822 r!7292))))))))

(declare-fun b!6219903 () Bool)

(assert (=> b!6219903 (= e!3786257 ((_ map or) call!521985 call!521988))))

(declare-fun bm!521983 () Bool)

(assert (=> bm!521983 (= call!521984 call!521986)))

(declare-fun bm!521984 () Bool)

(assert (=> bm!521984 (= call!521986 ($colon$colon!2024 (exprs!6039 (ite c!1123578 lt!2344673 (Context!11079 call!521852))) (ite (or c!1123764 c!1123763) (regTwo!32822 (ite c!1123578 (regTwo!32823 (regTwo!32822 (regOne!32822 r!7292))) (regOne!32822 (regTwo!32822 (regOne!32822 r!7292))))) (ite c!1123578 (regTwo!32823 (regTwo!32822 (regOne!32822 r!7292))) (regOne!32822 (regTwo!32822 (regOne!32822 r!7292)))))))))

(declare-fun b!6219904 () Bool)

(assert (=> b!6219904 (= e!3786254 (store ((as const (Array Context!11078 Bool)) false) (ite c!1123578 lt!2344673 (Context!11079 call!521852)) true))))

(declare-fun b!6219905 () Bool)

(assert (=> b!6219905 (= e!3786255 call!521987)))

(assert (= (and d!1949725 c!1123766) b!6219904))

(assert (= (and d!1949725 (not c!1123766)) b!6219902))

(assert (= (and b!6219902 c!1123765) b!6219903))

(assert (= (and b!6219902 (not c!1123765)) b!6219895))

(assert (= (and b!6219895 res!2570859) b!6219901))

(assert (= (and b!6219895 c!1123764) b!6219898))

(assert (= (and b!6219895 (not c!1123764)) b!6219900))

(assert (= (and b!6219900 c!1123763) b!6219905))

(assert (= (and b!6219900 (not c!1123763)) b!6219896))

(assert (= (and b!6219896 c!1123762) b!6219899))

(assert (= (and b!6219896 (not c!1123762)) b!6219897))

(assert (= (or b!6219905 b!6219899) bm!521983))

(assert (= (or b!6219905 b!6219899) bm!521979))

(assert (= (or b!6219898 bm!521983) bm!521984))

(assert (= (or b!6219898 bm!521979) bm!521980))

(assert (= (or b!6219903 b!6219898) bm!521982))

(assert (= (or b!6219903 bm!521980) bm!521981))

(declare-fun m!7047920 () Bool)

(assert (=> b!6219901 m!7047920))

(declare-fun m!7047922 () Bool)

(assert (=> bm!521981 m!7047922))

(declare-fun m!7047926 () Bool)

(assert (=> bm!521984 m!7047926))

(declare-fun m!7047928 () Bool)

(assert (=> b!6219904 m!7047928))

(declare-fun m!7047930 () Bool)

(assert (=> bm!521982 m!7047930))

(assert (=> bm!521848 d!1949725))

(declare-fun b!6219908 () Bool)

(declare-fun c!1123771 () Bool)

(declare-fun e!3786268 () Bool)

(assert (=> b!6219908 (= c!1123771 e!3786268)))

(declare-fun res!2570863 () Bool)

(assert (=> b!6219908 (=> (not res!2570863) (not e!3786268))))

(assert (=> b!6219908 (= res!2570863 ((_ is Concat!25000) (h!71089 (exprs!6039 lt!2344687))))))

(declare-fun e!3786266 () (InoxSet Context!11078))

(declare-fun e!3786265 () (InoxSet Context!11078))

(assert (=> b!6219908 (= e!3786266 e!3786265)))

(declare-fun b!6219909 () Bool)

(declare-fun c!1123769 () Bool)

(assert (=> b!6219909 (= c!1123769 ((_ is Star!16155) (h!71089 (exprs!6039 lt!2344687))))))

(declare-fun e!3786263 () (InoxSet Context!11078))

(declare-fun e!3786269 () (InoxSet Context!11078))

(assert (=> b!6219909 (= e!3786263 e!3786269)))

(declare-fun b!6219910 () Bool)

(assert (=> b!6219910 (= e!3786269 ((as const (Array Context!11078 Bool)) false))))

(declare-fun b!6219911 () Bool)

(declare-fun call!521995 () (InoxSet Context!11078))

(declare-fun call!521996 () (InoxSet Context!11078))

(assert (=> b!6219911 (= e!3786265 ((_ map or) call!521995 call!521996))))

(declare-fun b!6219912 () Bool)

(declare-fun call!521994 () (InoxSet Context!11078))

(assert (=> b!6219912 (= e!3786269 call!521994)))

(declare-fun b!6219913 () Bool)

(assert (=> b!6219913 (= e!3786265 e!3786263)))

(declare-fun c!1123770 () Bool)

(assert (=> b!6219913 (= c!1123770 ((_ is Concat!25000) (h!71089 (exprs!6039 lt!2344687))))))

(declare-fun d!1949733 () Bool)

(declare-fun c!1123773 () Bool)

(assert (=> d!1949733 (= c!1123773 (and ((_ is ElementMatch!16155) (h!71089 (exprs!6039 lt!2344687))) (= (c!1123433 (h!71089 (exprs!6039 lt!2344687))) (h!71088 s!2326))))))

(declare-fun e!3786262 () (InoxSet Context!11078))

(assert (=> d!1949733 (= (derivationStepZipperDown!1403 (h!71089 (exprs!6039 lt!2344687)) (Context!11079 (t!378295 (exprs!6039 lt!2344687))) (h!71088 s!2326)) e!3786262)))

(declare-fun bm!521985 () Bool)

(assert (=> bm!521985 (= call!521994 call!521996)))

(declare-fun b!6219914 () Bool)

(assert (=> b!6219914 (= e!3786268 (nullable!6148 (regOne!32822 (h!71089 (exprs!6039 lt!2344687)))))))

(declare-fun bm!521986 () Bool)

(declare-fun call!521992 () (InoxSet Context!11078))

(assert (=> bm!521986 (= call!521996 call!521992)))

(declare-fun bm!521987 () Bool)

(declare-fun c!1123772 () Bool)

(declare-fun call!521990 () List!64765)

(assert (=> bm!521987 (= call!521992 (derivationStepZipperDown!1403 (ite c!1123772 (regOne!32823 (h!71089 (exprs!6039 lt!2344687))) (ite c!1123771 (regTwo!32822 (h!71089 (exprs!6039 lt!2344687))) (ite c!1123770 (regOne!32822 (h!71089 (exprs!6039 lt!2344687))) (reg!16484 (h!71089 (exprs!6039 lt!2344687)))))) (ite (or c!1123772 c!1123771) (Context!11079 (t!378295 (exprs!6039 lt!2344687))) (Context!11079 call!521990)) (h!71088 s!2326)))))

(declare-fun call!521993 () List!64765)

(declare-fun bm!521988 () Bool)

(assert (=> bm!521988 (= call!521995 (derivationStepZipperDown!1403 (ite c!1123772 (regTwo!32823 (h!71089 (exprs!6039 lt!2344687))) (regOne!32822 (h!71089 (exprs!6039 lt!2344687)))) (ite c!1123772 (Context!11079 (t!378295 (exprs!6039 lt!2344687))) (Context!11079 call!521993)) (h!71088 s!2326)))))

(declare-fun b!6219915 () Bool)

(assert (=> b!6219915 (= e!3786262 e!3786266)))

(assert (=> b!6219915 (= c!1123772 ((_ is Union!16155) (h!71089 (exprs!6039 lt!2344687))))))

(declare-fun b!6219916 () Bool)

(assert (=> b!6219916 (= e!3786266 ((_ map or) call!521992 call!521995))))

(declare-fun bm!521989 () Bool)

(assert (=> bm!521989 (= call!521990 call!521993)))

(declare-fun bm!521990 () Bool)

(assert (=> bm!521990 (= call!521993 ($colon$colon!2024 (exprs!6039 (Context!11079 (t!378295 (exprs!6039 lt!2344687)))) (ite (or c!1123771 c!1123770) (regTwo!32822 (h!71089 (exprs!6039 lt!2344687))) (h!71089 (exprs!6039 lt!2344687)))))))

(declare-fun b!6219917 () Bool)

(assert (=> b!6219917 (= e!3786262 (store ((as const (Array Context!11078 Bool)) false) (Context!11079 (t!378295 (exprs!6039 lt!2344687))) true))))

(declare-fun b!6219918 () Bool)

(assert (=> b!6219918 (= e!3786263 call!521994)))

(assert (= (and d!1949733 c!1123773) b!6219917))

(assert (= (and d!1949733 (not c!1123773)) b!6219915))

(assert (= (and b!6219915 c!1123772) b!6219916))

(assert (= (and b!6219915 (not c!1123772)) b!6219908))

(assert (= (and b!6219908 res!2570863) b!6219914))

(assert (= (and b!6219908 c!1123771) b!6219911))

(assert (= (and b!6219908 (not c!1123771)) b!6219913))

(assert (= (and b!6219913 c!1123770) b!6219918))

(assert (= (and b!6219913 (not c!1123770)) b!6219909))

(assert (= (and b!6219909 c!1123769) b!6219912))

(assert (= (and b!6219909 (not c!1123769)) b!6219910))

(assert (= (or b!6219918 b!6219912) bm!521989))

(assert (= (or b!6219918 b!6219912) bm!521985))

(assert (= (or b!6219911 bm!521989) bm!521990))

(assert (= (or b!6219911 bm!521985) bm!521986))

(assert (= (or b!6219916 b!6219911) bm!521988))

(assert (= (or b!6219916 bm!521986) bm!521987))

(declare-fun m!7047940 () Bool)

(assert (=> b!6219914 m!7047940))

(declare-fun m!7047942 () Bool)

(assert (=> bm!521987 m!7047942))

(declare-fun m!7047944 () Bool)

(assert (=> bm!521990 m!7047944))

(declare-fun m!7047946 () Bool)

(assert (=> b!6219917 m!7047946))

(declare-fun m!7047948 () Bool)

(assert (=> bm!521988 m!7047948))

(assert (=> bm!521877 d!1949733))

(assert (=> bm!521883 d!1949667))

(declare-fun d!1949741 () Bool)

(assert (=> d!1949741 true))

(assert (=> d!1949741 true))

(declare-fun res!2570866 () Bool)

(assert (=> d!1949741 (= (choose!46215 lambda!339863) res!2570866)))

(assert (=> d!1949485 d!1949741))

(declare-fun b!6219926 () Bool)

(declare-fun e!3786273 () Bool)

(assert (=> b!6219926 (= e!3786273 (= (head!12818 (_2!36437 (get!22326 lt!2344756))) (c!1123433 (regTwo!32822 r!7292))))))

(declare-fun b!6219927 () Bool)

(declare-fun e!3786276 () Bool)

(declare-fun e!3786279 () Bool)

(assert (=> b!6219927 (= e!3786276 e!3786279)))

(declare-fun c!1123775 () Bool)

(assert (=> b!6219927 (= c!1123775 ((_ is EmptyLang!16155) (regTwo!32822 r!7292)))))

(declare-fun b!6219928 () Bool)

(declare-fun res!2570871 () Bool)

(assert (=> b!6219928 (=> (not res!2570871) (not e!3786273))))

(declare-fun call!521998 () Bool)

(assert (=> b!6219928 (= res!2570871 (not call!521998))))

(declare-fun b!6219929 () Bool)

(declare-fun e!3786275 () Bool)

(declare-fun e!3786278 () Bool)

(assert (=> b!6219929 (= e!3786275 e!3786278)))

(declare-fun res!2570874 () Bool)

(assert (=> b!6219929 (=> (not res!2570874) (not e!3786278))))

(declare-fun lt!2344790 () Bool)

(assert (=> b!6219929 (= res!2570874 (not lt!2344790))))

(declare-fun b!6219930 () Bool)

(declare-fun e!3786277 () Bool)

(assert (=> b!6219930 (= e!3786277 (nullable!6148 (regTwo!32822 r!7292)))))

(declare-fun b!6219931 () Bool)

(declare-fun res!2570868 () Bool)

(assert (=> b!6219931 (=> (not res!2570868) (not e!3786273))))

(assert (=> b!6219931 (= res!2570868 (isEmpty!36649 (tail!11903 (_2!36437 (get!22326 lt!2344756)))))))

(declare-fun d!1949745 () Bool)

(assert (=> d!1949745 e!3786276))

(declare-fun c!1123776 () Bool)

(assert (=> d!1949745 (= c!1123776 ((_ is EmptyExpr!16155) (regTwo!32822 r!7292)))))

(assert (=> d!1949745 (= lt!2344790 e!3786277)))

(declare-fun c!1123774 () Bool)

(assert (=> d!1949745 (= c!1123774 (isEmpty!36649 (_2!36437 (get!22326 lt!2344756))))))

(assert (=> d!1949745 (validRegex!7891 (regTwo!32822 r!7292))))

(assert (=> d!1949745 (= (matchR!8338 (regTwo!32822 r!7292) (_2!36437 (get!22326 lt!2344756))) lt!2344790)))

(declare-fun b!6219932 () Bool)

(assert (=> b!6219932 (= e!3786276 (= lt!2344790 call!521998))))

(declare-fun b!6219933 () Bool)

(declare-fun e!3786274 () Bool)

(assert (=> b!6219933 (= e!3786278 e!3786274)))

(declare-fun res!2570872 () Bool)

(assert (=> b!6219933 (=> res!2570872 e!3786274)))

(assert (=> b!6219933 (= res!2570872 call!521998)))

(declare-fun b!6219934 () Bool)

(declare-fun res!2570869 () Bool)

(assert (=> b!6219934 (=> res!2570869 e!3786274)))

(assert (=> b!6219934 (= res!2570869 (not (isEmpty!36649 (tail!11903 (_2!36437 (get!22326 lt!2344756))))))))

(declare-fun b!6219935 () Bool)

(declare-fun res!2570873 () Bool)

(assert (=> b!6219935 (=> res!2570873 e!3786275)))

(assert (=> b!6219935 (= res!2570873 (not ((_ is ElementMatch!16155) (regTwo!32822 r!7292))))))

(assert (=> b!6219935 (= e!3786279 e!3786275)))

(declare-fun b!6219936 () Bool)

(assert (=> b!6219936 (= e!3786274 (not (= (head!12818 (_2!36437 (get!22326 lt!2344756))) (c!1123433 (regTwo!32822 r!7292)))))))

(declare-fun b!6219937 () Bool)

(declare-fun res!2570867 () Bool)

(assert (=> b!6219937 (=> res!2570867 e!3786275)))

(assert (=> b!6219937 (= res!2570867 e!3786273)))

(declare-fun res!2570870 () Bool)

(assert (=> b!6219937 (=> (not res!2570870) (not e!3786273))))

(assert (=> b!6219937 (= res!2570870 lt!2344790)))

(declare-fun bm!521993 () Bool)

(assert (=> bm!521993 (= call!521998 (isEmpty!36649 (_2!36437 (get!22326 lt!2344756))))))

(declare-fun b!6219938 () Bool)

(assert (=> b!6219938 (= e!3786279 (not lt!2344790))))

(declare-fun b!6219939 () Bool)

(assert (=> b!6219939 (= e!3786277 (matchR!8338 (derivativeStep!4868 (regTwo!32822 r!7292) (head!12818 (_2!36437 (get!22326 lt!2344756)))) (tail!11903 (_2!36437 (get!22326 lt!2344756)))))))

(assert (= (and d!1949745 c!1123774) b!6219930))

(assert (= (and d!1949745 (not c!1123774)) b!6219939))

(assert (= (and d!1949745 c!1123776) b!6219932))

(assert (= (and d!1949745 (not c!1123776)) b!6219927))

(assert (= (and b!6219927 c!1123775) b!6219938))

(assert (= (and b!6219927 (not c!1123775)) b!6219935))

(assert (= (and b!6219935 (not res!2570873)) b!6219937))

(assert (= (and b!6219937 res!2570870) b!6219928))

(assert (= (and b!6219928 res!2570871) b!6219931))

(assert (= (and b!6219931 res!2570868) b!6219926))

(assert (= (and b!6219937 (not res!2570867)) b!6219929))

(assert (= (and b!6219929 res!2570874) b!6219933))

(assert (= (and b!6219933 (not res!2570872)) b!6219934))

(assert (= (and b!6219934 (not res!2570869)) b!6219936))

(assert (= (or b!6219932 b!6219928 b!6219933) bm!521993))

(declare-fun m!7047954 () Bool)

(assert (=> d!1949745 m!7047954))

(declare-fun m!7047956 () Bool)

(assert (=> d!1949745 m!7047956))

(declare-fun m!7047958 () Bool)

(assert (=> b!6219930 m!7047958))

(declare-fun m!7047960 () Bool)

(assert (=> b!6219931 m!7047960))

(assert (=> b!6219931 m!7047960))

(declare-fun m!7047962 () Bool)

(assert (=> b!6219931 m!7047962))

(assert (=> b!6219934 m!7047960))

(assert (=> b!6219934 m!7047960))

(assert (=> b!6219934 m!7047962))

(declare-fun m!7047964 () Bool)

(assert (=> b!6219939 m!7047964))

(assert (=> b!6219939 m!7047964))

(declare-fun m!7047966 () Bool)

(assert (=> b!6219939 m!7047966))

(assert (=> b!6219939 m!7047960))

(assert (=> b!6219939 m!7047966))

(assert (=> b!6219939 m!7047960))

(declare-fun m!7047970 () Bool)

(assert (=> b!6219939 m!7047970))

(assert (=> b!6219936 m!7047964))

(assert (=> b!6219926 m!7047964))

(assert (=> bm!521993 m!7047954))

(assert (=> b!6219327 d!1949745))

(assert (=> b!6219327 d!1949595))

(declare-fun d!1949751 () Bool)

(declare-fun res!2570881 () Bool)

(declare-fun e!3786288 () Bool)

(assert (=> d!1949751 (=> res!2570881 e!3786288)))

(assert (=> d!1949751 (= res!2570881 ((_ is Nil!64641) (exprs!6039 setElem!42232)))))

(assert (=> d!1949751 (= (forall!15269 (exprs!6039 setElem!42232) lambda!339906) e!3786288)))

(declare-fun b!6219949 () Bool)

(declare-fun e!3786289 () Bool)

(assert (=> b!6219949 (= e!3786288 e!3786289)))

(declare-fun res!2570882 () Bool)

(assert (=> b!6219949 (=> (not res!2570882) (not e!3786289))))

(assert (=> b!6219949 (= res!2570882 (dynLambda!25504 lambda!339906 (h!71089 (exprs!6039 setElem!42232))))))

(declare-fun b!6219951 () Bool)

(assert (=> b!6219951 (= e!3786289 (forall!15269 (t!378295 (exprs!6039 setElem!42232)) lambda!339906))))

(assert (= (and d!1949751 (not res!2570881)) b!6219949))

(assert (= (and b!6219949 res!2570882) b!6219951))

(declare-fun b_lambda!236451 () Bool)

(assert (=> (not b_lambda!236451) (not b!6219949)))

(declare-fun m!7047976 () Bool)

(assert (=> b!6219949 m!7047976))

(declare-fun m!7047980 () Bool)

(assert (=> b!6219951 m!7047980))

(assert (=> d!1949473 d!1949751))

(assert (=> d!1949523 d!1949521))

(assert (=> d!1949523 d!1949519))

(declare-fun d!1949755 () Bool)

(assert (=> d!1949755 (= (matchR!8338 r!7292 s!2326) (matchRSpec!3256 r!7292 s!2326))))

(assert (=> d!1949755 true))

(declare-fun _$88!4832 () Unit!157951)

(assert (=> d!1949755 (= (choose!46220 r!7292 s!2326) _$88!4832)))

(declare-fun bs!1542464 () Bool)

(assert (= bs!1542464 d!1949755))

(assert (=> bs!1542464 m!7046964))

(assert (=> bs!1542464 m!7046962))

(assert (=> d!1949523 d!1949755))

(assert (=> d!1949523 d!1949477))

(declare-fun b!6219978 () Bool)

(declare-fun c!1123789 () Bool)

(declare-fun e!3786308 () Bool)

(assert (=> b!6219978 (= c!1123789 e!3786308)))

(declare-fun res!2570893 () Bool)

(assert (=> b!6219978 (=> (not res!2570893) (not e!3786308))))

(assert (=> b!6219978 (= res!2570893 ((_ is Concat!25000) (ite c!1123583 (regOne!32823 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123582 (regTwo!32822 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123581 (regOne!32822 (regOne!32822 (regOne!32822 r!7292))) (reg!16484 (regOne!32822 (regOne!32822 r!7292))))))))))

(declare-fun e!3786307 () (InoxSet Context!11078))

(declare-fun e!3786306 () (InoxSet Context!11078))

(assert (=> b!6219978 (= e!3786307 e!3786306)))

(declare-fun c!1123787 () Bool)

(declare-fun b!6219979 () Bool)

(assert (=> b!6219979 (= c!1123787 ((_ is Star!16155) (ite c!1123583 (regOne!32823 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123582 (regTwo!32822 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123581 (regOne!32822 (regOne!32822 (regOne!32822 r!7292))) (reg!16484 (regOne!32822 (regOne!32822 r!7292))))))))))

(declare-fun e!3786305 () (InoxSet Context!11078))

(declare-fun e!3786309 () (InoxSet Context!11078))

(assert (=> b!6219979 (= e!3786305 e!3786309)))

(declare-fun b!6219980 () Bool)

(assert (=> b!6219980 (= e!3786309 ((as const (Array Context!11078 Bool)) false))))

(declare-fun b!6219981 () Bool)

(declare-fun call!522013 () (InoxSet Context!11078))

(declare-fun call!522014 () (InoxSet Context!11078))

(assert (=> b!6219981 (= e!3786306 ((_ map or) call!522013 call!522014))))

(declare-fun b!6219982 () Bool)

(declare-fun call!522012 () (InoxSet Context!11078))

(assert (=> b!6219982 (= e!3786309 call!522012)))

(declare-fun b!6219983 () Bool)

(assert (=> b!6219983 (= e!3786306 e!3786305)))

(declare-fun c!1123788 () Bool)

(assert (=> b!6219983 (= c!1123788 ((_ is Concat!25000) (ite c!1123583 (regOne!32823 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123582 (regTwo!32822 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123581 (regOne!32822 (regOne!32822 (regOne!32822 r!7292))) (reg!16484 (regOne!32822 (regOne!32822 r!7292))))))))))

(declare-fun d!1949765 () Bool)

(declare-fun c!1123791 () Bool)

(assert (=> d!1949765 (= c!1123791 (and ((_ is ElementMatch!16155) (ite c!1123583 (regOne!32823 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123582 (regTwo!32822 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123581 (regOne!32822 (regOne!32822 (regOne!32822 r!7292))) (reg!16484 (regOne!32822 (regOne!32822 r!7292))))))) (= (c!1123433 (ite c!1123583 (regOne!32823 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123582 (regTwo!32822 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123581 (regOne!32822 (regOne!32822 (regOne!32822 r!7292))) (reg!16484 (regOne!32822 (regOne!32822 r!7292))))))) (h!71088 s!2326))))))

(declare-fun e!3786304 () (InoxSet Context!11078))

(assert (=> d!1949765 (= (derivationStepZipperDown!1403 (ite c!1123583 (regOne!32823 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123582 (regTwo!32822 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123581 (regOne!32822 (regOne!32822 (regOne!32822 r!7292))) (reg!16484 (regOne!32822 (regOne!32822 r!7292)))))) (ite (or c!1123583 c!1123582) lt!2344676 (Context!11079 call!521856)) (h!71088 s!2326)) e!3786304)))

(declare-fun bm!522004 () Bool)

(assert (=> bm!522004 (= call!522012 call!522014)))

(declare-fun b!6219984 () Bool)

(assert (=> b!6219984 (= e!3786308 (nullable!6148 (regOne!32822 (ite c!1123583 (regOne!32823 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123582 (regTwo!32822 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123581 (regOne!32822 (regOne!32822 (regOne!32822 r!7292))) (reg!16484 (regOne!32822 (regOne!32822 r!7292)))))))))))

(declare-fun bm!522005 () Bool)

(declare-fun call!522010 () (InoxSet Context!11078))

(assert (=> bm!522005 (= call!522014 call!522010)))

(declare-fun c!1123790 () Bool)

(declare-fun bm!522006 () Bool)

(declare-fun call!522009 () List!64765)

(assert (=> bm!522006 (= call!522010 (derivationStepZipperDown!1403 (ite c!1123790 (regOne!32823 (ite c!1123583 (regOne!32823 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123582 (regTwo!32822 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123581 (regOne!32822 (regOne!32822 (regOne!32822 r!7292))) (reg!16484 (regOne!32822 (regOne!32822 r!7292))))))) (ite c!1123789 (regTwo!32822 (ite c!1123583 (regOne!32823 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123582 (regTwo!32822 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123581 (regOne!32822 (regOne!32822 (regOne!32822 r!7292))) (reg!16484 (regOne!32822 (regOne!32822 r!7292))))))) (ite c!1123788 (regOne!32822 (ite c!1123583 (regOne!32823 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123582 (regTwo!32822 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123581 (regOne!32822 (regOne!32822 (regOne!32822 r!7292))) (reg!16484 (regOne!32822 (regOne!32822 r!7292))))))) (reg!16484 (ite c!1123583 (regOne!32823 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123582 (regTwo!32822 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123581 (regOne!32822 (regOne!32822 (regOne!32822 r!7292))) (reg!16484 (regOne!32822 (regOne!32822 r!7292)))))))))) (ite (or c!1123790 c!1123789) (ite (or c!1123583 c!1123582) lt!2344676 (Context!11079 call!521856)) (Context!11079 call!522009)) (h!71088 s!2326)))))

(declare-fun bm!522007 () Bool)

(declare-fun call!522011 () List!64765)

(assert (=> bm!522007 (= call!522013 (derivationStepZipperDown!1403 (ite c!1123790 (regTwo!32823 (ite c!1123583 (regOne!32823 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123582 (regTwo!32822 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123581 (regOne!32822 (regOne!32822 (regOne!32822 r!7292))) (reg!16484 (regOne!32822 (regOne!32822 r!7292))))))) (regOne!32822 (ite c!1123583 (regOne!32823 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123582 (regTwo!32822 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123581 (regOne!32822 (regOne!32822 (regOne!32822 r!7292))) (reg!16484 (regOne!32822 (regOne!32822 r!7292)))))))) (ite c!1123790 (ite (or c!1123583 c!1123582) lt!2344676 (Context!11079 call!521856)) (Context!11079 call!522011)) (h!71088 s!2326)))))

(declare-fun b!6219985 () Bool)

(assert (=> b!6219985 (= e!3786304 e!3786307)))

(assert (=> b!6219985 (= c!1123790 ((_ is Union!16155) (ite c!1123583 (regOne!32823 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123582 (regTwo!32822 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123581 (regOne!32822 (regOne!32822 (regOne!32822 r!7292))) (reg!16484 (regOne!32822 (regOne!32822 r!7292))))))))))

(declare-fun b!6219986 () Bool)

(assert (=> b!6219986 (= e!3786307 ((_ map or) call!522010 call!522013))))

(declare-fun bm!522008 () Bool)

(assert (=> bm!522008 (= call!522009 call!522011)))

(declare-fun bm!522009 () Bool)

(assert (=> bm!522009 (= call!522011 ($colon$colon!2024 (exprs!6039 (ite (or c!1123583 c!1123582) lt!2344676 (Context!11079 call!521856))) (ite (or c!1123789 c!1123788) (regTwo!32822 (ite c!1123583 (regOne!32823 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123582 (regTwo!32822 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123581 (regOne!32822 (regOne!32822 (regOne!32822 r!7292))) (reg!16484 (regOne!32822 (regOne!32822 r!7292))))))) (ite c!1123583 (regOne!32823 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123582 (regTwo!32822 (regOne!32822 (regOne!32822 r!7292))) (ite c!1123581 (regOne!32822 (regOne!32822 (regOne!32822 r!7292))) (reg!16484 (regOne!32822 (regOne!32822 r!7292)))))))))))

(declare-fun b!6219987 () Bool)

(assert (=> b!6219987 (= e!3786304 (store ((as const (Array Context!11078 Bool)) false) (ite (or c!1123583 c!1123582) lt!2344676 (Context!11079 call!521856)) true))))

(declare-fun b!6219988 () Bool)

(assert (=> b!6219988 (= e!3786305 call!522012)))

(assert (= (and d!1949765 c!1123791) b!6219987))

(assert (= (and d!1949765 (not c!1123791)) b!6219985))

(assert (= (and b!6219985 c!1123790) b!6219986))

(assert (= (and b!6219985 (not c!1123790)) b!6219978))

(assert (= (and b!6219978 res!2570893) b!6219984))

(assert (= (and b!6219978 c!1123789) b!6219981))

(assert (= (and b!6219978 (not c!1123789)) b!6219983))

(assert (= (and b!6219983 c!1123788) b!6219988))

(assert (= (and b!6219983 (not c!1123788)) b!6219979))

(assert (= (and b!6219979 c!1123787) b!6219982))

(assert (= (and b!6219979 (not c!1123787)) b!6219980))

(assert (= (or b!6219988 b!6219982) bm!522008))

(assert (= (or b!6219988 b!6219982) bm!522004))

(assert (= (or b!6219981 bm!522008) bm!522009))

(assert (= (or b!6219981 bm!522004) bm!522005))

(assert (= (or b!6219986 b!6219981) bm!522007))

(assert (= (or b!6219986 bm!522005) bm!522006))

(declare-fun m!7048002 () Bool)

(assert (=> b!6219984 m!7048002))

(declare-fun m!7048004 () Bool)

(assert (=> bm!522006 m!7048004))

(declare-fun m!7048008 () Bool)

(assert (=> bm!522009 m!7048008))

(declare-fun m!7048010 () Bool)

(assert (=> b!6219987 m!7048010))

(declare-fun m!7048012 () Bool)

(assert (=> bm!522007 m!7048012))

(assert (=> bm!521853 d!1949765))

(declare-fun b!6219991 () Bool)

(declare-fun e!3786316 () Bool)

(declare-fun e!3786312 () Bool)

(assert (=> b!6219991 (= e!3786316 e!3786312)))

(declare-fun res!2570897 () Bool)

(assert (=> b!6219991 (=> (not res!2570897) (not e!3786312))))

(assert (=> b!6219991 (= res!2570897 (and (not ((_ is EmptyLang!16155) (h!71089 (exprs!6039 (h!71090 zl!343))))) (not ((_ is ElementMatch!16155) (h!71089 (exprs!6039 (h!71090 zl!343)))))))))

(declare-fun b!6219992 () Bool)

(declare-fun e!3786313 () Bool)

(assert (=> b!6219992 (= e!3786312 e!3786313)))

(declare-fun res!2570898 () Bool)

(assert (=> b!6219992 (=> res!2570898 e!3786313)))

(assert (=> b!6219992 (= res!2570898 ((_ is Star!16155) (h!71089 (exprs!6039 (h!71090 zl!343)))))))

(declare-fun b!6219993 () Bool)

(declare-fun e!3786314 () Bool)

(assert (=> b!6219993 (= e!3786313 e!3786314)))

(declare-fun c!1123793 () Bool)

(assert (=> b!6219993 (= c!1123793 ((_ is Union!16155) (h!71089 (exprs!6039 (h!71090 zl!343)))))))

(declare-fun bm!522010 () Bool)

(declare-fun call!522016 () Bool)

(assert (=> bm!522010 (= call!522016 (nullable!6148 (ite c!1123793 (regTwo!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (regTwo!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))))))))

(declare-fun b!6219994 () Bool)

(declare-fun e!3786315 () Bool)

(assert (=> b!6219994 (= e!3786315 call!522016)))

(declare-fun bm!522011 () Bool)

(declare-fun call!522015 () Bool)

(assert (=> bm!522011 (= call!522015 (nullable!6148 (ite c!1123793 (regOne!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))))))))

(declare-fun b!6219995 () Bool)

(assert (=> b!6219995 (= e!3786314 e!3786315)))

(declare-fun res!2570895 () Bool)

(assert (=> b!6219995 (= res!2570895 call!522015)))

(assert (=> b!6219995 (=> res!2570895 e!3786315)))

(declare-fun b!6219996 () Bool)

(declare-fun e!3786311 () Bool)

(assert (=> b!6219996 (= e!3786314 e!3786311)))

(declare-fun res!2570894 () Bool)

(assert (=> b!6219996 (= res!2570894 call!522015)))

(assert (=> b!6219996 (=> (not res!2570894) (not e!3786311))))

(declare-fun b!6219997 () Bool)

(assert (=> b!6219997 (= e!3786311 call!522016)))

(declare-fun d!1949771 () Bool)

(declare-fun res!2570896 () Bool)

(assert (=> d!1949771 (=> res!2570896 e!3786316)))

(assert (=> d!1949771 (= res!2570896 ((_ is EmptyExpr!16155) (h!71089 (exprs!6039 (h!71090 zl!343)))))))

(assert (=> d!1949771 (= (nullableFct!2104 (h!71089 (exprs!6039 (h!71090 zl!343)))) e!3786316)))

(assert (= (and d!1949771 (not res!2570896)) b!6219991))

(assert (= (and b!6219991 res!2570897) b!6219992))

(assert (= (and b!6219992 (not res!2570898)) b!6219993))

(assert (= (and b!6219993 c!1123793) b!6219995))

(assert (= (and b!6219993 (not c!1123793)) b!6219996))

(assert (= (and b!6219995 (not res!2570895)) b!6219994))

(assert (= (and b!6219996 res!2570894) b!6219997))

(assert (= (or b!6219994 b!6219997) bm!522010))

(assert (= (or b!6219995 b!6219996) bm!522011))

(declare-fun m!7048020 () Bool)

(assert (=> bm!522010 m!7048020))

(declare-fun m!7048022 () Bool)

(assert (=> bm!522011 m!7048022))

(assert (=> d!1949497 d!1949771))

(declare-fun d!1949775 () Bool)

(assert (=> d!1949775 (= ($colon$colon!2024 (exprs!6039 lt!2344673) (ite (or c!1123577 c!1123576) (regTwo!32822 (regTwo!32822 (regOne!32822 r!7292))) (regTwo!32822 (regOne!32822 r!7292)))) (Cons!64641 (ite (or c!1123577 c!1123576) (regTwo!32822 (regTwo!32822 (regOne!32822 r!7292))) (regTwo!32822 (regOne!32822 r!7292))) (exprs!6039 lt!2344673)))))

(assert (=> bm!521850 d!1949775))

(declare-fun d!1949777 () Bool)

(declare-fun c!1123798 () Bool)

(assert (=> d!1949777 (= c!1123798 ((_ is Nil!64642) lt!2344745))))

(declare-fun e!3786323 () (InoxSet Context!11078))

(assert (=> d!1949777 (= (content!12104 lt!2344745) e!3786323)))

(declare-fun b!6220010 () Bool)

(assert (=> b!6220010 (= e!3786323 ((as const (Array Context!11078 Bool)) false))))

(declare-fun b!6220011 () Bool)

(assert (=> b!6220011 (= e!3786323 ((_ map or) (store ((as const (Array Context!11078 Bool)) false) (h!71090 lt!2344745) true) (content!12104 (t!378296 lt!2344745))))))

(assert (= (and d!1949777 c!1123798) b!6220010))

(assert (= (and d!1949777 (not c!1123798)) b!6220011))

(declare-fun m!7048048 () Bool)

(assert (=> b!6220011 m!7048048))

(declare-fun m!7048054 () Bool)

(assert (=> b!6220011 m!7048054))

(assert (=> b!6219251 d!1949777))

(declare-fun d!1949791 () Bool)

(declare-fun res!2570903 () Bool)

(declare-fun e!3786324 () Bool)

(assert (=> d!1949791 (=> res!2570903 e!3786324)))

(assert (=> d!1949791 (= res!2570903 ((_ is Nil!64641) lt!2344741))))

(assert (=> d!1949791 (= (forall!15269 lt!2344741 lambda!339903) e!3786324)))

(declare-fun b!6220012 () Bool)

(declare-fun e!3786325 () Bool)

(assert (=> b!6220012 (= e!3786324 e!3786325)))

(declare-fun res!2570904 () Bool)

(assert (=> b!6220012 (=> (not res!2570904) (not e!3786325))))

(assert (=> b!6220012 (= res!2570904 (dynLambda!25504 lambda!339903 (h!71089 lt!2344741)))))

(declare-fun b!6220013 () Bool)

(assert (=> b!6220013 (= e!3786325 (forall!15269 (t!378295 lt!2344741) lambda!339903))))

(assert (= (and d!1949791 (not res!2570903)) b!6220012))

(assert (= (and b!6220012 res!2570904) b!6220013))

(declare-fun b_lambda!236453 () Bool)

(assert (=> (not b_lambda!236453) (not b!6220012)))

(declare-fun m!7048060 () Bool)

(assert (=> b!6220012 m!7048060))

(declare-fun m!7048062 () Bool)

(assert (=> b!6220013 m!7048062))

(assert (=> d!1949453 d!1949791))

(assert (=> d!1949481 d!1949693))

(declare-fun b!6220014 () Bool)

(declare-fun e!3786326 () Bool)

(assert (=> b!6220014 (= e!3786326 (= (head!12818 Nil!64640) (c!1123433 (regOne!32822 r!7292))))))

(declare-fun b!6220015 () Bool)

(declare-fun e!3786329 () Bool)

(declare-fun e!3786332 () Bool)

(assert (=> b!6220015 (= e!3786329 e!3786332)))

(declare-fun c!1123800 () Bool)

(assert (=> b!6220015 (= c!1123800 ((_ is EmptyLang!16155) (regOne!32822 r!7292)))))

(declare-fun b!6220016 () Bool)

(declare-fun res!2570909 () Bool)

(assert (=> b!6220016 (=> (not res!2570909) (not e!3786326))))

(declare-fun call!522017 () Bool)

(assert (=> b!6220016 (= res!2570909 (not call!522017))))

(declare-fun b!6220017 () Bool)

(declare-fun e!3786328 () Bool)

(declare-fun e!3786331 () Bool)

(assert (=> b!6220017 (= e!3786328 e!3786331)))

(declare-fun res!2570912 () Bool)

(assert (=> b!6220017 (=> (not res!2570912) (not e!3786331))))

(declare-fun lt!2344794 () Bool)

(assert (=> b!6220017 (= res!2570912 (not lt!2344794))))

(declare-fun b!6220018 () Bool)

(declare-fun e!3786330 () Bool)

(assert (=> b!6220018 (= e!3786330 (nullable!6148 (regOne!32822 r!7292)))))

(declare-fun b!6220019 () Bool)

(declare-fun res!2570906 () Bool)

(assert (=> b!6220019 (=> (not res!2570906) (not e!3786326))))

(assert (=> b!6220019 (= res!2570906 (isEmpty!36649 (tail!11903 Nil!64640)))))

(declare-fun d!1949793 () Bool)

(assert (=> d!1949793 e!3786329))

(declare-fun c!1123801 () Bool)

(assert (=> d!1949793 (= c!1123801 ((_ is EmptyExpr!16155) (regOne!32822 r!7292)))))

(assert (=> d!1949793 (= lt!2344794 e!3786330)))

(declare-fun c!1123799 () Bool)

(assert (=> d!1949793 (= c!1123799 (isEmpty!36649 Nil!64640))))

(assert (=> d!1949793 (validRegex!7891 (regOne!32822 r!7292))))

(assert (=> d!1949793 (= (matchR!8338 (regOne!32822 r!7292) Nil!64640) lt!2344794)))

(declare-fun b!6220020 () Bool)

(assert (=> b!6220020 (= e!3786329 (= lt!2344794 call!522017))))

(declare-fun b!6220021 () Bool)

(declare-fun e!3786327 () Bool)

(assert (=> b!6220021 (= e!3786331 e!3786327)))

(declare-fun res!2570910 () Bool)

(assert (=> b!6220021 (=> res!2570910 e!3786327)))

(assert (=> b!6220021 (= res!2570910 call!522017)))

(declare-fun b!6220022 () Bool)

(declare-fun res!2570907 () Bool)

(assert (=> b!6220022 (=> res!2570907 e!3786327)))

(assert (=> b!6220022 (= res!2570907 (not (isEmpty!36649 (tail!11903 Nil!64640))))))

(declare-fun b!6220023 () Bool)

(declare-fun res!2570911 () Bool)

(assert (=> b!6220023 (=> res!2570911 e!3786328)))

(assert (=> b!6220023 (= res!2570911 (not ((_ is ElementMatch!16155) (regOne!32822 r!7292))))))

(assert (=> b!6220023 (= e!3786332 e!3786328)))

(declare-fun b!6220024 () Bool)

(assert (=> b!6220024 (= e!3786327 (not (= (head!12818 Nil!64640) (c!1123433 (regOne!32822 r!7292)))))))

(declare-fun b!6220025 () Bool)

(declare-fun res!2570905 () Bool)

(assert (=> b!6220025 (=> res!2570905 e!3786328)))

(assert (=> b!6220025 (= res!2570905 e!3786326)))

(declare-fun res!2570908 () Bool)

(assert (=> b!6220025 (=> (not res!2570908) (not e!3786326))))

(assert (=> b!6220025 (= res!2570908 lt!2344794)))

(declare-fun bm!522012 () Bool)

(assert (=> bm!522012 (= call!522017 (isEmpty!36649 Nil!64640))))

(declare-fun b!6220026 () Bool)

(assert (=> b!6220026 (= e!3786332 (not lt!2344794))))

(declare-fun b!6220027 () Bool)

(assert (=> b!6220027 (= e!3786330 (matchR!8338 (derivativeStep!4868 (regOne!32822 r!7292) (head!12818 Nil!64640)) (tail!11903 Nil!64640)))))

(assert (= (and d!1949793 c!1123799) b!6220018))

(assert (= (and d!1949793 (not c!1123799)) b!6220027))

(assert (= (and d!1949793 c!1123801) b!6220020))

(assert (= (and d!1949793 (not c!1123801)) b!6220015))

(assert (= (and b!6220015 c!1123800) b!6220026))

(assert (= (and b!6220015 (not c!1123800)) b!6220023))

(assert (= (and b!6220023 (not res!2570911)) b!6220025))

(assert (= (and b!6220025 res!2570908) b!6220016))

(assert (= (and b!6220016 res!2570909) b!6220019))

(assert (= (and b!6220019 res!2570906) b!6220014))

(assert (= (and b!6220025 (not res!2570905)) b!6220017))

(assert (= (and b!6220017 res!2570912) b!6220021))

(assert (= (and b!6220021 (not res!2570910)) b!6220022))

(assert (= (and b!6220022 (not res!2570907)) b!6220024))

(assert (= (or b!6220020 b!6220016 b!6220021) bm!522012))

(declare-fun m!7048064 () Bool)

(assert (=> d!1949793 m!7048064))

(assert (=> d!1949793 m!7047440))

(assert (=> b!6220018 m!7047826))

(declare-fun m!7048066 () Bool)

(assert (=> b!6220019 m!7048066))

(assert (=> b!6220019 m!7048066))

(declare-fun m!7048068 () Bool)

(assert (=> b!6220019 m!7048068))

(assert (=> b!6220022 m!7048066))

(assert (=> b!6220022 m!7048066))

(assert (=> b!6220022 m!7048068))

(declare-fun m!7048070 () Bool)

(assert (=> b!6220027 m!7048070))

(assert (=> b!6220027 m!7048070))

(declare-fun m!7048072 () Bool)

(assert (=> b!6220027 m!7048072))

(assert (=> b!6220027 m!7048066))

(assert (=> b!6220027 m!7048072))

(assert (=> b!6220027 m!7048066))

(declare-fun m!7048074 () Bool)

(assert (=> b!6220027 m!7048074))

(assert (=> b!6220024 m!7048070))

(assert (=> b!6220014 m!7048070))

(assert (=> bm!522012 m!7048064))

(assert (=> d!1949481 d!1949793))

(assert (=> d!1949481 d!1949569))

(declare-fun b!6220028 () Bool)

(declare-fun e!3786334 () Bool)

(declare-fun e!3786333 () Bool)

(assert (=> b!6220028 (= e!3786334 e!3786333)))

(declare-fun res!2570917 () Bool)

(assert (=> b!6220028 (=> (not res!2570917) (not e!3786333))))

(declare-fun call!522018 () Bool)

(assert (=> b!6220028 (= res!2570917 call!522018)))

(declare-fun b!6220029 () Bool)

(declare-fun e!3786338 () Bool)

(declare-fun call!522019 () Bool)

(assert (=> b!6220029 (= e!3786338 call!522019)))

(declare-fun b!6220030 () Bool)

(declare-fun res!2570915 () Bool)

(assert (=> b!6220030 (=> res!2570915 e!3786334)))

(assert (=> b!6220030 (= res!2570915 (not ((_ is Concat!25000) lt!2344748)))))

(declare-fun e!3786339 () Bool)

(assert (=> b!6220030 (= e!3786339 e!3786334)))

(declare-fun b!6220031 () Bool)

(declare-fun e!3786335 () Bool)

(declare-fun e!3786336 () Bool)

(assert (=> b!6220031 (= e!3786335 e!3786336)))

(declare-fun res!2570916 () Bool)

(assert (=> b!6220031 (= res!2570916 (not (nullable!6148 (reg!16484 lt!2344748))))))

(assert (=> b!6220031 (=> (not res!2570916) (not e!3786336))))

(declare-fun d!1949795 () Bool)

(declare-fun res!2570913 () Bool)

(declare-fun e!3786337 () Bool)

(assert (=> d!1949795 (=> res!2570913 e!3786337)))

(assert (=> d!1949795 (= res!2570913 ((_ is ElementMatch!16155) lt!2344748))))

(assert (=> d!1949795 (= (validRegex!7891 lt!2344748) e!3786337)))

(declare-fun bm!522013 () Bool)

(declare-fun c!1123802 () Bool)

(assert (=> bm!522013 (= call!522019 (validRegex!7891 (ite c!1123802 (regTwo!32823 lt!2344748) (regTwo!32822 lt!2344748))))))

(declare-fun bm!522014 () Bool)

(declare-fun call!522020 () Bool)

(assert (=> bm!522014 (= call!522018 call!522020)))

(declare-fun b!6220032 () Bool)

(assert (=> b!6220032 (= e!3786335 e!3786339)))

(assert (=> b!6220032 (= c!1123802 ((_ is Union!16155) lt!2344748))))

(declare-fun b!6220033 () Bool)

(assert (=> b!6220033 (= e!3786333 call!522019)))

(declare-fun b!6220034 () Bool)

(assert (=> b!6220034 (= e!3786336 call!522020)))

(declare-fun c!1123803 () Bool)

(declare-fun bm!522015 () Bool)

(assert (=> bm!522015 (= call!522020 (validRegex!7891 (ite c!1123803 (reg!16484 lt!2344748) (ite c!1123802 (regOne!32823 lt!2344748) (regOne!32822 lt!2344748)))))))

(declare-fun b!6220035 () Bool)

(declare-fun res!2570914 () Bool)

(assert (=> b!6220035 (=> (not res!2570914) (not e!3786338))))

(assert (=> b!6220035 (= res!2570914 call!522018)))

(assert (=> b!6220035 (= e!3786339 e!3786338)))

(declare-fun b!6220036 () Bool)

(assert (=> b!6220036 (= e!3786337 e!3786335)))

(assert (=> b!6220036 (= c!1123803 ((_ is Star!16155) lt!2344748))))

(assert (= (and d!1949795 (not res!2570913)) b!6220036))

(assert (= (and b!6220036 c!1123803) b!6220031))

(assert (= (and b!6220036 (not c!1123803)) b!6220032))

(assert (= (and b!6220031 res!2570916) b!6220034))

(assert (= (and b!6220032 c!1123802) b!6220035))

(assert (= (and b!6220032 (not c!1123802)) b!6220030))

(assert (= (and b!6220035 res!2570914) b!6220029))

(assert (= (and b!6220030 (not res!2570915)) b!6220028))

(assert (= (and b!6220028 res!2570917) b!6220033))

(assert (= (or b!6220029 b!6220033) bm!522013))

(assert (= (or b!6220035 b!6220028) bm!522014))

(assert (= (or b!6220034 bm!522014) bm!522015))

(declare-fun m!7048076 () Bool)

(assert (=> b!6220031 m!7048076))

(declare-fun m!7048078 () Bool)

(assert (=> bm!522013 m!7048078))

(declare-fun m!7048080 () Bool)

(assert (=> bm!522015 m!7048080))

(assert (=> d!1949479 d!1949795))

(declare-fun d!1949797 () Bool)

(declare-fun res!2570918 () Bool)

(declare-fun e!3786340 () Bool)

(assert (=> d!1949797 (=> res!2570918 e!3786340)))

(assert (=> d!1949797 (= res!2570918 ((_ is Nil!64641) (exprs!6039 (h!71090 zl!343))))))

(assert (=> d!1949797 (= (forall!15269 (exprs!6039 (h!71090 zl!343)) lambda!339910) e!3786340)))

(declare-fun b!6220037 () Bool)

(declare-fun e!3786341 () Bool)

(assert (=> b!6220037 (= e!3786340 e!3786341)))

(declare-fun res!2570919 () Bool)

(assert (=> b!6220037 (=> (not res!2570919) (not e!3786341))))

(assert (=> b!6220037 (= res!2570919 (dynLambda!25504 lambda!339910 (h!71089 (exprs!6039 (h!71090 zl!343)))))))

(declare-fun b!6220038 () Bool)

(assert (=> b!6220038 (= e!3786341 (forall!15269 (t!378295 (exprs!6039 (h!71090 zl!343))) lambda!339910))))

(assert (= (and d!1949797 (not res!2570918)) b!6220037))

(assert (= (and b!6220037 res!2570919) b!6220038))

(declare-fun b_lambda!236455 () Bool)

(assert (=> (not b_lambda!236455) (not b!6220037)))

(declare-fun m!7048082 () Bool)

(assert (=> b!6220037 m!7048082))

(declare-fun m!7048084 () Bool)

(assert (=> b!6220038 m!7048084))

(assert (=> d!1949479 d!1949797))

(declare-fun d!1949799 () Bool)

(assert (=> d!1949799 (= (nullable!6148 (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343))))) (nullableFct!2104 (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343))))))))

(declare-fun bs!1542480 () Bool)

(assert (= bs!1542480 d!1949799))

(declare-fun m!7048086 () Bool)

(assert (=> bs!1542480 m!7048086))

(assert (=> b!6219374 d!1949799))

(declare-fun bs!1542481 () Bool)

(declare-fun d!1949801 () Bool)

(assert (= bs!1542481 (and d!1949801 d!1949453)))

(declare-fun lambda!339960 () Int)

(assert (=> bs!1542481 (= lambda!339960 lambda!339903)))

(declare-fun bs!1542483 () Bool)

(assert (= bs!1542483 (and d!1949801 d!1949475)))

(assert (=> bs!1542483 (= lambda!339960 lambda!339907)))

(declare-fun bs!1542484 () Bool)

(assert (= bs!1542484 (and d!1949801 d!1949715)))

(assert (=> bs!1542484 (= lambda!339960 lambda!339954)))

(declare-fun bs!1542485 () Bool)

(assert (= bs!1542485 (and d!1949801 d!1949525)))

(assert (=> bs!1542485 (= lambda!339960 lambda!339929)))

(declare-fun bs!1542486 () Bool)

(assert (= bs!1542486 (and d!1949801 d!1949479)))

(assert (=> bs!1542486 (= lambda!339960 lambda!339910)))

(declare-fun bs!1542487 () Bool)

(assert (= bs!1542487 (and d!1949801 d!1949473)))

(assert (=> bs!1542487 (= lambda!339960 lambda!339906)))

(declare-fun bs!1542488 () Bool)

(assert (= bs!1542488 (and d!1949801 d!1949451)))

(assert (=> bs!1542488 (= lambda!339960 lambda!339900)))

(declare-fun bs!1542489 () Bool)

(assert (= bs!1542489 (and d!1949801 d!1949717)))

(assert (=> bs!1542489 (= lambda!339960 lambda!339955)))

(assert (=> d!1949801 (= (inv!83634 (h!71090 (t!378296 zl!343))) (forall!15269 (exprs!6039 (h!71090 (t!378296 zl!343))) lambda!339960))))

(declare-fun bs!1542490 () Bool)

(assert (= bs!1542490 d!1949801))

(declare-fun m!7048092 () Bool)

(assert (=> bs!1542490 m!7048092))

(assert (=> b!6219489 d!1949801))

(declare-fun d!1949805 () Bool)

(assert (=> d!1949805 (= (isEmptyLang!1574 lt!2344738) ((_ is EmptyLang!16155) lt!2344738))))

(assert (=> b!6219187 d!1949805))

(declare-fun d!1949807 () Bool)

(assert (=> d!1949807 (= (isEmpty!36646 (exprs!6039 (h!71090 zl!343))) ((_ is Nil!64641) (exprs!6039 (h!71090 zl!343))))))

(assert (=> b!6219306 d!1949807))

(declare-fun d!1949809 () Bool)

(declare-fun c!1123806 () Bool)

(assert (=> d!1949809 (= c!1123806 (isEmpty!36649 (tail!11903 (t!378294 s!2326))))))

(declare-fun e!3786347 () Bool)

(assert (=> d!1949809 (= (matchZipper!2167 (derivationStepZipper!2121 ((_ map or) lt!2344671 lt!2344678) (head!12818 (t!378294 s!2326))) (tail!11903 (t!378294 s!2326))) e!3786347)))

(declare-fun b!6220048 () Bool)

(assert (=> b!6220048 (= e!3786347 (nullableZipper!1929 (derivationStepZipper!2121 ((_ map or) lt!2344671 lt!2344678) (head!12818 (t!378294 s!2326)))))))

(declare-fun b!6220049 () Bool)

(assert (=> b!6220049 (= e!3786347 (matchZipper!2167 (derivationStepZipper!2121 (derivationStepZipper!2121 ((_ map or) lt!2344671 lt!2344678) (head!12818 (t!378294 s!2326))) (head!12818 (tail!11903 (t!378294 s!2326)))) (tail!11903 (tail!11903 (t!378294 s!2326)))))))

(assert (= (and d!1949809 c!1123806) b!6220048))

(assert (= (and d!1949809 (not c!1123806)) b!6220049))

(assert (=> d!1949809 m!7047312))

(assert (=> d!1949809 m!7047742))

(assert (=> b!6220048 m!7047318))

(declare-fun m!7048102 () Bool)

(assert (=> b!6220048 m!7048102))

(assert (=> b!6220049 m!7047312))

(assert (=> b!6220049 m!7047746))

(assert (=> b!6220049 m!7047318))

(assert (=> b!6220049 m!7047746))

(declare-fun m!7048106 () Bool)

(assert (=> b!6220049 m!7048106))

(assert (=> b!6220049 m!7047312))

(assert (=> b!6220049 m!7047750))

(assert (=> b!6220049 m!7048106))

(assert (=> b!6220049 m!7047750))

(declare-fun m!7048112 () Bool)

(assert (=> b!6220049 m!7048112))

(assert (=> b!6219161 d!1949809))

(declare-fun bs!1542491 () Bool)

(declare-fun d!1949811 () Bool)

(assert (= bs!1542491 (and d!1949811 b!6218742)))

(declare-fun lambda!339961 () Int)

(assert (=> bs!1542491 (= (= (head!12818 (t!378294 s!2326)) (h!71088 s!2326)) (= lambda!339961 lambda!339865))))

(declare-fun bs!1542492 () Bool)

(assert (= bs!1542492 (and d!1949811 d!1949515)))

(assert (=> bs!1542492 (= (= (head!12818 (t!378294 s!2326)) (h!71088 s!2326)) (= lambda!339961 lambda!339922))))

(declare-fun bs!1542493 () Bool)

(assert (= bs!1542493 (and d!1949811 d!1949633)))

(assert (=> bs!1542493 (= lambda!339961 lambda!339941)))

(assert (=> d!1949811 true))

(assert (=> d!1949811 (= (derivationStepZipper!2121 ((_ map or) lt!2344671 lt!2344678) (head!12818 (t!378294 s!2326))) (flatMap!1660 ((_ map or) lt!2344671 lt!2344678) lambda!339961))))

(declare-fun bs!1542494 () Bool)

(assert (= bs!1542494 d!1949811))

(declare-fun m!7048122 () Bool)

(assert (=> bs!1542494 m!7048122))

(assert (=> b!6219161 d!1949811))

(assert (=> b!6219161 d!1949635))

(assert (=> b!6219161 d!1949637))

(declare-fun d!1949815 () Bool)

(assert (=> d!1949815 (= ($colon$colon!2024 (exprs!6039 lt!2344673) (ite (or c!1123619 c!1123618) (regTwo!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (h!71089 (exprs!6039 (h!71090 zl!343))))) (Cons!64641 (ite (or c!1123619 c!1123618) (regTwo!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (h!71089 (exprs!6039 (h!71090 zl!343)))) (exprs!6039 lt!2344673)))))

(assert (=> bm!521875 d!1949815))

(assert (=> b!6219472 d!1949607))

(assert (=> b!6219472 d!1949611))

(assert (=> d!1949459 d!1949691))

(assert (=> d!1949449 d!1949691))

(declare-fun b!6220059 () Bool)

(declare-fun e!3786356 () Bool)

(declare-fun e!3786355 () Bool)

(assert (=> b!6220059 (= e!3786356 e!3786355)))

(declare-fun res!2570934 () Bool)

(assert (=> b!6220059 (=> (not res!2570934) (not e!3786355))))

(declare-fun call!522024 () Bool)

(assert (=> b!6220059 (= res!2570934 call!522024)))

(declare-fun b!6220060 () Bool)

(declare-fun e!3786360 () Bool)

(declare-fun call!522025 () Bool)

(assert (=> b!6220060 (= e!3786360 call!522025)))

(declare-fun b!6220061 () Bool)

(declare-fun res!2570932 () Bool)

(assert (=> b!6220061 (=> res!2570932 e!3786356)))

(assert (=> b!6220061 (= res!2570932 (not ((_ is Concat!25000) (ite c!1123590 (reg!16484 r!7292) (ite c!1123589 (regOne!32823 r!7292) (regOne!32822 r!7292))))))))

(declare-fun e!3786361 () Bool)

(assert (=> b!6220061 (= e!3786361 e!3786356)))

(declare-fun b!6220062 () Bool)

(declare-fun e!3786357 () Bool)

(declare-fun e!3786358 () Bool)

(assert (=> b!6220062 (= e!3786357 e!3786358)))

(declare-fun res!2570933 () Bool)

(assert (=> b!6220062 (= res!2570933 (not (nullable!6148 (reg!16484 (ite c!1123590 (reg!16484 r!7292) (ite c!1123589 (regOne!32823 r!7292) (regOne!32822 r!7292)))))))))

(assert (=> b!6220062 (=> (not res!2570933) (not e!3786358))))

(declare-fun d!1949817 () Bool)

(declare-fun res!2570930 () Bool)

(declare-fun e!3786359 () Bool)

(assert (=> d!1949817 (=> res!2570930 e!3786359)))

(assert (=> d!1949817 (= res!2570930 ((_ is ElementMatch!16155) (ite c!1123590 (reg!16484 r!7292) (ite c!1123589 (regOne!32823 r!7292) (regOne!32822 r!7292)))))))

(assert (=> d!1949817 (= (validRegex!7891 (ite c!1123590 (reg!16484 r!7292) (ite c!1123589 (regOne!32823 r!7292) (regOne!32822 r!7292)))) e!3786359)))

(declare-fun c!1123809 () Bool)

(declare-fun bm!522019 () Bool)

(assert (=> bm!522019 (= call!522025 (validRegex!7891 (ite c!1123809 (regTwo!32823 (ite c!1123590 (reg!16484 r!7292) (ite c!1123589 (regOne!32823 r!7292) (regOne!32822 r!7292)))) (regTwo!32822 (ite c!1123590 (reg!16484 r!7292) (ite c!1123589 (regOne!32823 r!7292) (regOne!32822 r!7292)))))))))

(declare-fun bm!522020 () Bool)

(declare-fun call!522026 () Bool)

(assert (=> bm!522020 (= call!522024 call!522026)))

(declare-fun b!6220063 () Bool)

(assert (=> b!6220063 (= e!3786357 e!3786361)))

(assert (=> b!6220063 (= c!1123809 ((_ is Union!16155) (ite c!1123590 (reg!16484 r!7292) (ite c!1123589 (regOne!32823 r!7292) (regOne!32822 r!7292)))))))

(declare-fun b!6220064 () Bool)

(assert (=> b!6220064 (= e!3786355 call!522025)))

(declare-fun b!6220065 () Bool)

(assert (=> b!6220065 (= e!3786358 call!522026)))

(declare-fun bm!522021 () Bool)

(declare-fun c!1123810 () Bool)

(assert (=> bm!522021 (= call!522026 (validRegex!7891 (ite c!1123810 (reg!16484 (ite c!1123590 (reg!16484 r!7292) (ite c!1123589 (regOne!32823 r!7292) (regOne!32822 r!7292)))) (ite c!1123809 (regOne!32823 (ite c!1123590 (reg!16484 r!7292) (ite c!1123589 (regOne!32823 r!7292) (regOne!32822 r!7292)))) (regOne!32822 (ite c!1123590 (reg!16484 r!7292) (ite c!1123589 (regOne!32823 r!7292) (regOne!32822 r!7292))))))))))

(declare-fun b!6220066 () Bool)

(declare-fun res!2570931 () Bool)

(assert (=> b!6220066 (=> (not res!2570931) (not e!3786360))))

(assert (=> b!6220066 (= res!2570931 call!522024)))

(assert (=> b!6220066 (= e!3786361 e!3786360)))

(declare-fun b!6220067 () Bool)

(assert (=> b!6220067 (= e!3786359 e!3786357)))

(assert (=> b!6220067 (= c!1123810 ((_ is Star!16155) (ite c!1123590 (reg!16484 r!7292) (ite c!1123589 (regOne!32823 r!7292) (regOne!32822 r!7292)))))))

(assert (= (and d!1949817 (not res!2570930)) b!6220067))

(assert (= (and b!6220067 c!1123810) b!6220062))

(assert (= (and b!6220067 (not c!1123810)) b!6220063))

(assert (= (and b!6220062 res!2570933) b!6220065))

(assert (= (and b!6220063 c!1123809) b!6220066))

(assert (= (and b!6220063 (not c!1123809)) b!6220061))

(assert (= (and b!6220066 res!2570931) b!6220060))

(assert (= (and b!6220061 (not res!2570932)) b!6220059))

(assert (= (and b!6220059 res!2570934) b!6220064))

(assert (= (or b!6220060 b!6220064) bm!522019))

(assert (= (or b!6220066 b!6220059) bm!522020))

(assert (= (or b!6220065 bm!522020) bm!522021))

(declare-fun m!7048130 () Bool)

(assert (=> b!6220062 m!7048130))

(declare-fun m!7048134 () Bool)

(assert (=> bm!522019 m!7048134))

(declare-fun m!7048136 () Bool)

(assert (=> bm!522021 m!7048136))

(assert (=> bm!521865 d!1949817))

(declare-fun d!1949823 () Bool)

(assert (=> d!1949823 (= (nullable!6148 (h!71089 (exprs!6039 lt!2344673))) (nullableFct!2104 (h!71089 (exprs!6039 lt!2344673))))))

(declare-fun bs!1542495 () Bool)

(assert (= bs!1542495 d!1949823))

(declare-fun m!7048138 () Bool)

(assert (=> bs!1542495 m!7048138))

(assert (=> b!6219383 d!1949823))

(declare-fun b!6220078 () Bool)

(declare-fun c!1123815 () Bool)

(declare-fun e!3786374 () Bool)

(assert (=> b!6220078 (= c!1123815 e!3786374)))

(declare-fun res!2570941 () Bool)

(assert (=> b!6220078 (=> (not res!2570941) (not e!3786374))))

(assert (=> b!6220078 (= res!2570941 ((_ is Concat!25000) (h!71089 (exprs!6039 lt!2344676))))))

(declare-fun e!3786373 () (InoxSet Context!11078))

(declare-fun e!3786372 () (InoxSet Context!11078))

(assert (=> b!6220078 (= e!3786373 e!3786372)))

(declare-fun b!6220079 () Bool)

(declare-fun c!1123813 () Bool)

(assert (=> b!6220079 (= c!1123813 ((_ is Star!16155) (h!71089 (exprs!6039 lt!2344676))))))

(declare-fun e!3786371 () (InoxSet Context!11078))

(declare-fun e!3786375 () (InoxSet Context!11078))

(assert (=> b!6220079 (= e!3786371 e!3786375)))

(declare-fun b!6220080 () Bool)

(assert (=> b!6220080 (= e!3786375 ((as const (Array Context!11078 Bool)) false))))

(declare-fun b!6220081 () Bool)

(declare-fun call!522034 () (InoxSet Context!11078))

(declare-fun call!522035 () (InoxSet Context!11078))

(assert (=> b!6220081 (= e!3786372 ((_ map or) call!522034 call!522035))))

(declare-fun b!6220082 () Bool)

(declare-fun call!522033 () (InoxSet Context!11078))

(assert (=> b!6220082 (= e!3786375 call!522033)))

(declare-fun b!6220083 () Bool)

(assert (=> b!6220083 (= e!3786372 e!3786371)))

(declare-fun c!1123814 () Bool)

(assert (=> b!6220083 (= c!1123814 ((_ is Concat!25000) (h!71089 (exprs!6039 lt!2344676))))))

(declare-fun d!1949825 () Bool)

(declare-fun c!1123817 () Bool)

(assert (=> d!1949825 (= c!1123817 (and ((_ is ElementMatch!16155) (h!71089 (exprs!6039 lt!2344676))) (= (c!1123433 (h!71089 (exprs!6039 lt!2344676))) (h!71088 s!2326))))))

(declare-fun e!3786370 () (InoxSet Context!11078))

(assert (=> d!1949825 (= (derivationStepZipperDown!1403 (h!71089 (exprs!6039 lt!2344676)) (Context!11079 (t!378295 (exprs!6039 lt!2344676))) (h!71088 s!2326)) e!3786370)))

(declare-fun bm!522025 () Bool)

(assert (=> bm!522025 (= call!522033 call!522035)))

(declare-fun b!6220084 () Bool)

(assert (=> b!6220084 (= e!3786374 (nullable!6148 (regOne!32822 (h!71089 (exprs!6039 lt!2344676)))))))

(declare-fun bm!522026 () Bool)

(declare-fun call!522031 () (InoxSet Context!11078))

(assert (=> bm!522026 (= call!522035 call!522031)))

(declare-fun call!522030 () List!64765)

(declare-fun c!1123816 () Bool)

(declare-fun bm!522027 () Bool)

(assert (=> bm!522027 (= call!522031 (derivationStepZipperDown!1403 (ite c!1123816 (regOne!32823 (h!71089 (exprs!6039 lt!2344676))) (ite c!1123815 (regTwo!32822 (h!71089 (exprs!6039 lt!2344676))) (ite c!1123814 (regOne!32822 (h!71089 (exprs!6039 lt!2344676))) (reg!16484 (h!71089 (exprs!6039 lt!2344676)))))) (ite (or c!1123816 c!1123815) (Context!11079 (t!378295 (exprs!6039 lt!2344676))) (Context!11079 call!522030)) (h!71088 s!2326)))))

(declare-fun bm!522028 () Bool)

(declare-fun call!522032 () List!64765)

(assert (=> bm!522028 (= call!522034 (derivationStepZipperDown!1403 (ite c!1123816 (regTwo!32823 (h!71089 (exprs!6039 lt!2344676))) (regOne!32822 (h!71089 (exprs!6039 lt!2344676)))) (ite c!1123816 (Context!11079 (t!378295 (exprs!6039 lt!2344676))) (Context!11079 call!522032)) (h!71088 s!2326)))))

(declare-fun b!6220085 () Bool)

(assert (=> b!6220085 (= e!3786370 e!3786373)))

(assert (=> b!6220085 (= c!1123816 ((_ is Union!16155) (h!71089 (exprs!6039 lt!2344676))))))

(declare-fun b!6220086 () Bool)

(assert (=> b!6220086 (= e!3786373 ((_ map or) call!522031 call!522034))))

(declare-fun bm!522029 () Bool)

(assert (=> bm!522029 (= call!522030 call!522032)))

(declare-fun bm!522030 () Bool)

(assert (=> bm!522030 (= call!522032 ($colon$colon!2024 (exprs!6039 (Context!11079 (t!378295 (exprs!6039 lt!2344676)))) (ite (or c!1123815 c!1123814) (regTwo!32822 (h!71089 (exprs!6039 lt!2344676))) (h!71089 (exprs!6039 lt!2344676)))))))

(declare-fun b!6220087 () Bool)

(assert (=> b!6220087 (= e!3786370 (store ((as const (Array Context!11078 Bool)) false) (Context!11079 (t!378295 (exprs!6039 lt!2344676))) true))))

(declare-fun b!6220088 () Bool)

(assert (=> b!6220088 (= e!3786371 call!522033)))

(assert (= (and d!1949825 c!1123817) b!6220087))

(assert (= (and d!1949825 (not c!1123817)) b!6220085))

(assert (= (and b!6220085 c!1123816) b!6220086))

(assert (= (and b!6220085 (not c!1123816)) b!6220078))

(assert (= (and b!6220078 res!2570941) b!6220084))

(assert (= (and b!6220078 c!1123815) b!6220081))

(assert (= (and b!6220078 (not c!1123815)) b!6220083))

(assert (= (and b!6220083 c!1123814) b!6220088))

(assert (= (and b!6220083 (not c!1123814)) b!6220079))

(assert (= (and b!6220079 c!1123813) b!6220082))

(assert (= (and b!6220079 (not c!1123813)) b!6220080))

(assert (= (or b!6220088 b!6220082) bm!522029))

(assert (= (or b!6220088 b!6220082) bm!522025))

(assert (= (or b!6220081 bm!522029) bm!522030))

(assert (= (or b!6220081 bm!522025) bm!522026))

(assert (= (or b!6220086 b!6220081) bm!522028))

(assert (= (or b!6220086 bm!522026) bm!522027))

(declare-fun m!7048150 () Bool)

(assert (=> b!6220084 m!7048150))

(declare-fun m!7048152 () Bool)

(assert (=> bm!522027 m!7048152))

(declare-fun m!7048154 () Bool)

(assert (=> bm!522030 m!7048154))

(declare-fun m!7048156 () Bool)

(assert (=> b!6220087 m!7048156))

(declare-fun m!7048158 () Bool)

(assert (=> bm!522028 m!7048158))

(assert (=> bm!521878 d!1949825))

(declare-fun b!6220091 () Bool)

(declare-fun e!3786378 () Bool)

(assert (=> b!6220091 (= e!3786378 (= (head!12818 s!2326) (c!1123433 (regTwo!32822 r!7292))))))

(declare-fun b!6220092 () Bool)

(declare-fun e!3786381 () Bool)

(declare-fun e!3786384 () Bool)

(assert (=> b!6220092 (= e!3786381 e!3786384)))

(declare-fun c!1123819 () Bool)

(assert (=> b!6220092 (= c!1123819 ((_ is EmptyLang!16155) (regTwo!32822 r!7292)))))

(declare-fun b!6220093 () Bool)

(declare-fun res!2570948 () Bool)

(assert (=> b!6220093 (=> (not res!2570948) (not e!3786378))))

(declare-fun call!522036 () Bool)

(assert (=> b!6220093 (= res!2570948 (not call!522036))))

(declare-fun b!6220094 () Bool)

(declare-fun e!3786380 () Bool)

(declare-fun e!3786383 () Bool)

(assert (=> b!6220094 (= e!3786380 e!3786383)))

(declare-fun res!2570951 () Bool)

(assert (=> b!6220094 (=> (not res!2570951) (not e!3786383))))

(declare-fun lt!2344801 () Bool)

(assert (=> b!6220094 (= res!2570951 (not lt!2344801))))

(declare-fun b!6220095 () Bool)

(declare-fun e!3786382 () Bool)

(assert (=> b!6220095 (= e!3786382 (nullable!6148 (regTwo!32822 r!7292)))))

(declare-fun b!6220096 () Bool)

(declare-fun res!2570945 () Bool)

(assert (=> b!6220096 (=> (not res!2570945) (not e!3786378))))

(assert (=> b!6220096 (= res!2570945 (isEmpty!36649 (tail!11903 s!2326)))))

(declare-fun d!1949831 () Bool)

(assert (=> d!1949831 e!3786381))

(declare-fun c!1123820 () Bool)

(assert (=> d!1949831 (= c!1123820 ((_ is EmptyExpr!16155) (regTwo!32822 r!7292)))))

(assert (=> d!1949831 (= lt!2344801 e!3786382)))

(declare-fun c!1123818 () Bool)

(assert (=> d!1949831 (= c!1123818 (isEmpty!36649 s!2326))))

(assert (=> d!1949831 (validRegex!7891 (regTwo!32822 r!7292))))

(assert (=> d!1949831 (= (matchR!8338 (regTwo!32822 r!7292) s!2326) lt!2344801)))

(declare-fun b!6220097 () Bool)

(assert (=> b!6220097 (= e!3786381 (= lt!2344801 call!522036))))

(declare-fun b!6220098 () Bool)

(declare-fun e!3786379 () Bool)

(assert (=> b!6220098 (= e!3786383 e!3786379)))

(declare-fun res!2570949 () Bool)

(assert (=> b!6220098 (=> res!2570949 e!3786379)))

(assert (=> b!6220098 (= res!2570949 call!522036)))

(declare-fun b!6220099 () Bool)

(declare-fun res!2570946 () Bool)

(assert (=> b!6220099 (=> res!2570946 e!3786379)))

(assert (=> b!6220099 (= res!2570946 (not (isEmpty!36649 (tail!11903 s!2326))))))

(declare-fun b!6220100 () Bool)

(declare-fun res!2570950 () Bool)

(assert (=> b!6220100 (=> res!2570950 e!3786380)))

(assert (=> b!6220100 (= res!2570950 (not ((_ is ElementMatch!16155) (regTwo!32822 r!7292))))))

(assert (=> b!6220100 (= e!3786384 e!3786380)))

(declare-fun b!6220101 () Bool)

(assert (=> b!6220101 (= e!3786379 (not (= (head!12818 s!2326) (c!1123433 (regTwo!32822 r!7292)))))))

(declare-fun b!6220102 () Bool)

(declare-fun res!2570944 () Bool)

(assert (=> b!6220102 (=> res!2570944 e!3786380)))

(assert (=> b!6220102 (= res!2570944 e!3786378)))

(declare-fun res!2570947 () Bool)

(assert (=> b!6220102 (=> (not res!2570947) (not e!3786378))))

(assert (=> b!6220102 (= res!2570947 lt!2344801)))

(declare-fun bm!522031 () Bool)

(assert (=> bm!522031 (= call!522036 (isEmpty!36649 s!2326))))

(declare-fun b!6220103 () Bool)

(assert (=> b!6220103 (= e!3786384 (not lt!2344801))))

(declare-fun b!6220104 () Bool)

(assert (=> b!6220104 (= e!3786382 (matchR!8338 (derivativeStep!4868 (regTwo!32822 r!7292) (head!12818 s!2326)) (tail!11903 s!2326)))))

(assert (= (and d!1949831 c!1123818) b!6220095))

(assert (= (and d!1949831 (not c!1123818)) b!6220104))

(assert (= (and d!1949831 c!1123820) b!6220097))

(assert (= (and d!1949831 (not c!1123820)) b!6220092))

(assert (= (and b!6220092 c!1123819) b!6220103))

(assert (= (and b!6220092 (not c!1123819)) b!6220100))

(assert (= (and b!6220100 (not res!2570950)) b!6220102))

(assert (= (and b!6220102 res!2570947) b!6220093))

(assert (= (and b!6220093 res!2570948) b!6220096))

(assert (= (and b!6220096 res!2570945) b!6220091))

(assert (= (and b!6220102 (not res!2570944)) b!6220094))

(assert (= (and b!6220094 res!2570951) b!6220098))

(assert (= (and b!6220098 (not res!2570949)) b!6220099))

(assert (= (and b!6220099 (not res!2570946)) b!6220101))

(assert (= (or b!6220097 b!6220093 b!6220098) bm!522031))

(assert (=> d!1949831 m!7047524))

(assert (=> d!1949831 m!7047956))

(assert (=> b!6220095 m!7047958))

(assert (=> b!6220096 m!7047530))

(assert (=> b!6220096 m!7047530))

(assert (=> b!6220096 m!7047532))

(assert (=> b!6220099 m!7047530))

(assert (=> b!6220099 m!7047530))

(assert (=> b!6220099 m!7047532))

(assert (=> b!6220104 m!7047534))

(assert (=> b!6220104 m!7047534))

(declare-fun m!7048168 () Bool)

(assert (=> b!6220104 m!7048168))

(assert (=> b!6220104 m!7047530))

(assert (=> b!6220104 m!7048168))

(assert (=> b!6220104 m!7047530))

(declare-fun m!7048170 () Bool)

(assert (=> b!6220104 m!7048170))

(assert (=> b!6220101 m!7047534))

(assert (=> b!6220091 m!7047534))

(assert (=> bm!522031 m!7047524))

(assert (=> b!6219334 d!1949831))

(declare-fun d!1949837 () Bool)

(declare-fun c!1123822 () Bool)

(assert (=> d!1949837 (= c!1123822 (isEmpty!36649 (tail!11903 (t!378294 s!2326))))))

(declare-fun e!3786386 () Bool)

(assert (=> d!1949837 (= (matchZipper!2167 (derivationStepZipper!2121 lt!2344683 (head!12818 (t!378294 s!2326))) (tail!11903 (t!378294 s!2326))) e!3786386)))

(declare-fun b!6220107 () Bool)

(assert (=> b!6220107 (= e!3786386 (nullableZipper!1929 (derivationStepZipper!2121 lt!2344683 (head!12818 (t!378294 s!2326)))))))

(declare-fun b!6220108 () Bool)

(assert (=> b!6220108 (= e!3786386 (matchZipper!2167 (derivationStepZipper!2121 (derivationStepZipper!2121 lt!2344683 (head!12818 (t!378294 s!2326))) (head!12818 (tail!11903 (t!378294 s!2326)))) (tail!11903 (tail!11903 (t!378294 s!2326)))))))

(assert (= (and d!1949837 c!1123822) b!6220107))

(assert (= (and d!1949837 (not c!1123822)) b!6220108))

(assert (=> d!1949837 m!7047312))

(assert (=> d!1949837 m!7047742))

(assert (=> b!6220107 m!7047356))

(declare-fun m!7048174 () Bool)

(assert (=> b!6220107 m!7048174))

(assert (=> b!6220108 m!7047312))

(assert (=> b!6220108 m!7047746))

(assert (=> b!6220108 m!7047356))

(assert (=> b!6220108 m!7047746))

(declare-fun m!7048176 () Bool)

(assert (=> b!6220108 m!7048176))

(assert (=> b!6220108 m!7047312))

(assert (=> b!6220108 m!7047750))

(assert (=> b!6220108 m!7048176))

(assert (=> b!6220108 m!7047750))

(declare-fun m!7048178 () Bool)

(assert (=> b!6220108 m!7048178))

(assert (=> b!6219201 d!1949837))

(declare-fun bs!1542506 () Bool)

(declare-fun d!1949841 () Bool)

(assert (= bs!1542506 (and d!1949841 b!6218742)))

(declare-fun lambda!339964 () Int)

(assert (=> bs!1542506 (= (= (head!12818 (t!378294 s!2326)) (h!71088 s!2326)) (= lambda!339964 lambda!339865))))

(declare-fun bs!1542507 () Bool)

(assert (= bs!1542507 (and d!1949841 d!1949515)))

(assert (=> bs!1542507 (= (= (head!12818 (t!378294 s!2326)) (h!71088 s!2326)) (= lambda!339964 lambda!339922))))

(declare-fun bs!1542508 () Bool)

(assert (= bs!1542508 (and d!1949841 d!1949633)))

(assert (=> bs!1542508 (= lambda!339964 lambda!339941)))

(declare-fun bs!1542509 () Bool)

(assert (= bs!1542509 (and d!1949841 d!1949811)))

(assert (=> bs!1542509 (= lambda!339964 lambda!339961)))

(assert (=> d!1949841 true))

(assert (=> d!1949841 (= (derivationStepZipper!2121 lt!2344683 (head!12818 (t!378294 s!2326))) (flatMap!1660 lt!2344683 lambda!339964))))

(declare-fun bs!1542510 () Bool)

(assert (= bs!1542510 d!1949841))

(declare-fun m!7048186 () Bool)

(assert (=> bs!1542510 m!7048186))

(assert (=> b!6219201 d!1949841))

(assert (=> b!6219201 d!1949635))

(assert (=> b!6219201 d!1949637))

(declare-fun d!1949845 () Bool)

(assert (=> d!1949845 (= (head!12818 s!2326) (h!71088 s!2326))))

(assert (=> b!6219477 d!1949845))

(assert (=> d!1949527 d!1949691))

(declare-fun b!6220128 () Bool)

(declare-fun c!1123831 () Bool)

(declare-fun e!3786404 () Bool)

(assert (=> b!6220128 (= c!1123831 e!3786404)))

(declare-fun res!2570959 () Bool)

(assert (=> b!6220128 (=> (not res!2570959) (not e!3786404))))

(assert (=> b!6220128 (= res!2570959 ((_ is Concat!25000) (ite c!1123620 (regTwo!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))))))))

(declare-fun e!3786403 () (InoxSet Context!11078))

(declare-fun e!3786402 () (InoxSet Context!11078))

(assert (=> b!6220128 (= e!3786403 e!3786402)))

(declare-fun b!6220129 () Bool)

(declare-fun c!1123829 () Bool)

(assert (=> b!6220129 (= c!1123829 ((_ is Star!16155) (ite c!1123620 (regTwo!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))))))))

(declare-fun e!3786401 () (InoxSet Context!11078))

(declare-fun e!3786405 () (InoxSet Context!11078))

(assert (=> b!6220129 (= e!3786401 e!3786405)))

(declare-fun b!6220130 () Bool)

(assert (=> b!6220130 (= e!3786405 ((as const (Array Context!11078 Bool)) false))))

(declare-fun b!6220131 () Bool)

(declare-fun call!522044 () (InoxSet Context!11078))

(declare-fun call!522045 () (InoxSet Context!11078))

(assert (=> b!6220131 (= e!3786402 ((_ map or) call!522044 call!522045))))

(declare-fun b!6220132 () Bool)

(declare-fun call!522043 () (InoxSet Context!11078))

(assert (=> b!6220132 (= e!3786405 call!522043)))

(declare-fun b!6220133 () Bool)

(assert (=> b!6220133 (= e!3786402 e!3786401)))

(declare-fun c!1123830 () Bool)

(assert (=> b!6220133 (= c!1123830 ((_ is Concat!25000) (ite c!1123620 (regTwo!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))))))))

(declare-fun d!1949847 () Bool)

(declare-fun c!1123833 () Bool)

(assert (=> d!1949847 (= c!1123833 (and ((_ is ElementMatch!16155) (ite c!1123620 (regTwo!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))))) (= (c!1123433 (ite c!1123620 (regTwo!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))))) (h!71088 s!2326))))))

(declare-fun e!3786400 () (InoxSet Context!11078))

(assert (=> d!1949847 (= (derivationStepZipperDown!1403 (ite c!1123620 (regTwo!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343))))) (ite c!1123620 lt!2344673 (Context!11079 call!521877)) (h!71088 s!2326)) e!3786400)))

(declare-fun bm!522035 () Bool)

(assert (=> bm!522035 (= call!522043 call!522045)))

(declare-fun b!6220134 () Bool)

(assert (=> b!6220134 (= e!3786404 (nullable!6148 (regOne!32822 (ite c!1123620 (regTwo!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343))))))))))

(declare-fun bm!522036 () Bool)

(declare-fun call!522041 () (InoxSet Context!11078))

(assert (=> bm!522036 (= call!522045 call!522041)))

(declare-fun bm!522037 () Bool)

(declare-fun call!522040 () List!64765)

(declare-fun c!1123832 () Bool)

(assert (=> bm!522037 (= call!522041 (derivationStepZipperDown!1403 (ite c!1123832 (regOne!32823 (ite c!1123620 (regTwo!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))))) (ite c!1123831 (regTwo!32822 (ite c!1123620 (regTwo!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))))) (ite c!1123830 (regOne!32822 (ite c!1123620 (regTwo!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))))) (reg!16484 (ite c!1123620 (regTwo!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343))))))))) (ite (or c!1123832 c!1123831) (ite c!1123620 lt!2344673 (Context!11079 call!521877)) (Context!11079 call!522040)) (h!71088 s!2326)))))

(declare-fun call!522042 () List!64765)

(declare-fun bm!522038 () Bool)

(assert (=> bm!522038 (= call!522044 (derivationStepZipperDown!1403 (ite c!1123832 (regTwo!32823 (ite c!1123620 (regTwo!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))))) (regOne!32822 (ite c!1123620 (regTwo!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343))))))) (ite c!1123832 (ite c!1123620 lt!2344673 (Context!11079 call!521877)) (Context!11079 call!522042)) (h!71088 s!2326)))))

(declare-fun b!6220135 () Bool)

(assert (=> b!6220135 (= e!3786400 e!3786403)))

(assert (=> b!6220135 (= c!1123832 ((_ is Union!16155) (ite c!1123620 (regTwo!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))))))))

(declare-fun b!6220136 () Bool)

(assert (=> b!6220136 (= e!3786403 ((_ map or) call!522041 call!522044))))

(declare-fun bm!522039 () Bool)

(assert (=> bm!522039 (= call!522040 call!522042)))

(declare-fun bm!522040 () Bool)

(assert (=> bm!522040 (= call!522042 ($colon$colon!2024 (exprs!6039 (ite c!1123620 lt!2344673 (Context!11079 call!521877))) (ite (or c!1123831 c!1123830) (regTwo!32822 (ite c!1123620 (regTwo!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))))) (ite c!1123620 (regTwo!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343))))))))))

(declare-fun b!6220137 () Bool)

(assert (=> b!6220137 (= e!3786400 (store ((as const (Array Context!11078 Bool)) false) (ite c!1123620 lt!2344673 (Context!11079 call!521877)) true))))

(declare-fun b!6220138 () Bool)

(assert (=> b!6220138 (= e!3786401 call!522043)))

(assert (= (and d!1949847 c!1123833) b!6220137))

(assert (= (and d!1949847 (not c!1123833)) b!6220135))

(assert (= (and b!6220135 c!1123832) b!6220136))

(assert (= (and b!6220135 (not c!1123832)) b!6220128))

(assert (= (and b!6220128 res!2570959) b!6220134))

(assert (= (and b!6220128 c!1123831) b!6220131))

(assert (= (and b!6220128 (not c!1123831)) b!6220133))

(assert (= (and b!6220133 c!1123830) b!6220138))

(assert (= (and b!6220133 (not c!1123830)) b!6220129))

(assert (= (and b!6220129 c!1123829) b!6220132))

(assert (= (and b!6220129 (not c!1123829)) b!6220130))

(assert (= (or b!6220138 b!6220132) bm!522039))

(assert (= (or b!6220138 b!6220132) bm!522035))

(assert (= (or b!6220131 bm!522039) bm!522040))

(assert (= (or b!6220131 bm!522035) bm!522036))

(assert (= (or b!6220136 b!6220131) bm!522038))

(assert (= (or b!6220136 bm!522036) bm!522037))

(declare-fun m!7048188 () Bool)

(assert (=> b!6220134 m!7048188))

(declare-fun m!7048190 () Bool)

(assert (=> bm!522037 m!7048190))

(declare-fun m!7048192 () Bool)

(assert (=> bm!522040 m!7048192))

(declare-fun m!7048194 () Bool)

(assert (=> b!6220137 m!7048194))

(declare-fun m!7048196 () Bool)

(assert (=> bm!522038 m!7048196))

(assert (=> bm!521873 d!1949847))

(declare-fun b!6220139 () Bool)

(declare-fun e!3786406 () Bool)

(assert (=> b!6220139 (= e!3786406 (= (head!12818 (tail!11903 s!2326)) (c!1123433 (derivativeStep!4868 r!7292 (head!12818 s!2326)))))))

(declare-fun b!6220140 () Bool)

(declare-fun e!3786409 () Bool)

(declare-fun e!3786412 () Bool)

(assert (=> b!6220140 (= e!3786409 e!3786412)))

(declare-fun c!1123835 () Bool)

(assert (=> b!6220140 (= c!1123835 ((_ is EmptyLang!16155) (derivativeStep!4868 r!7292 (head!12818 s!2326))))))

(declare-fun b!6220141 () Bool)

(declare-fun res!2570964 () Bool)

(assert (=> b!6220141 (=> (not res!2570964) (not e!3786406))))

(declare-fun call!522046 () Bool)

(assert (=> b!6220141 (= res!2570964 (not call!522046))))

(declare-fun b!6220142 () Bool)

(declare-fun e!3786408 () Bool)

(declare-fun e!3786411 () Bool)

(assert (=> b!6220142 (= e!3786408 e!3786411)))

(declare-fun res!2570967 () Bool)

(assert (=> b!6220142 (=> (not res!2570967) (not e!3786411))))

(declare-fun lt!2344803 () Bool)

(assert (=> b!6220142 (= res!2570967 (not lt!2344803))))

(declare-fun b!6220143 () Bool)

(declare-fun e!3786410 () Bool)

(assert (=> b!6220143 (= e!3786410 (nullable!6148 (derivativeStep!4868 r!7292 (head!12818 s!2326))))))

(declare-fun b!6220144 () Bool)

(declare-fun res!2570961 () Bool)

(assert (=> b!6220144 (=> (not res!2570961) (not e!3786406))))

(assert (=> b!6220144 (= res!2570961 (isEmpty!36649 (tail!11903 (tail!11903 s!2326))))))

(declare-fun d!1949849 () Bool)

(assert (=> d!1949849 e!3786409))

(declare-fun c!1123836 () Bool)

(assert (=> d!1949849 (= c!1123836 ((_ is EmptyExpr!16155) (derivativeStep!4868 r!7292 (head!12818 s!2326))))))

(assert (=> d!1949849 (= lt!2344803 e!3786410)))

(declare-fun c!1123834 () Bool)

(assert (=> d!1949849 (= c!1123834 (isEmpty!36649 (tail!11903 s!2326)))))

(assert (=> d!1949849 (validRegex!7891 (derivativeStep!4868 r!7292 (head!12818 s!2326)))))

(assert (=> d!1949849 (= (matchR!8338 (derivativeStep!4868 r!7292 (head!12818 s!2326)) (tail!11903 s!2326)) lt!2344803)))

(declare-fun b!6220145 () Bool)

(assert (=> b!6220145 (= e!3786409 (= lt!2344803 call!522046))))

(declare-fun b!6220146 () Bool)

(declare-fun e!3786407 () Bool)

(assert (=> b!6220146 (= e!3786411 e!3786407)))

(declare-fun res!2570965 () Bool)

(assert (=> b!6220146 (=> res!2570965 e!3786407)))

(assert (=> b!6220146 (= res!2570965 call!522046)))

(declare-fun b!6220147 () Bool)

(declare-fun res!2570962 () Bool)

(assert (=> b!6220147 (=> res!2570962 e!3786407)))

(assert (=> b!6220147 (= res!2570962 (not (isEmpty!36649 (tail!11903 (tail!11903 s!2326)))))))

(declare-fun b!6220148 () Bool)

(declare-fun res!2570966 () Bool)

(assert (=> b!6220148 (=> res!2570966 e!3786408)))

(assert (=> b!6220148 (= res!2570966 (not ((_ is ElementMatch!16155) (derivativeStep!4868 r!7292 (head!12818 s!2326)))))))

(assert (=> b!6220148 (= e!3786412 e!3786408)))

(declare-fun b!6220149 () Bool)

(assert (=> b!6220149 (= e!3786407 (not (= (head!12818 (tail!11903 s!2326)) (c!1123433 (derivativeStep!4868 r!7292 (head!12818 s!2326))))))))

(declare-fun b!6220150 () Bool)

(declare-fun res!2570960 () Bool)

(assert (=> b!6220150 (=> res!2570960 e!3786408)))

(assert (=> b!6220150 (= res!2570960 e!3786406)))

(declare-fun res!2570963 () Bool)

(assert (=> b!6220150 (=> (not res!2570963) (not e!3786406))))

(assert (=> b!6220150 (= res!2570963 lt!2344803)))

(declare-fun bm!522041 () Bool)

(assert (=> bm!522041 (= call!522046 (isEmpty!36649 (tail!11903 s!2326)))))

(declare-fun b!6220151 () Bool)

(assert (=> b!6220151 (= e!3786412 (not lt!2344803))))

(declare-fun b!6220152 () Bool)

(assert (=> b!6220152 (= e!3786410 (matchR!8338 (derivativeStep!4868 (derivativeStep!4868 r!7292 (head!12818 s!2326)) (head!12818 (tail!11903 s!2326))) (tail!11903 (tail!11903 s!2326))))))

(assert (= (and d!1949849 c!1123834) b!6220143))

(assert (= (and d!1949849 (not c!1123834)) b!6220152))

(assert (= (and d!1949849 c!1123836) b!6220145))

(assert (= (and d!1949849 (not c!1123836)) b!6220140))

(assert (= (and b!6220140 c!1123835) b!6220151))

(assert (= (and b!6220140 (not c!1123835)) b!6220148))

(assert (= (and b!6220148 (not res!2570966)) b!6220150))

(assert (= (and b!6220150 res!2570963) b!6220141))

(assert (= (and b!6220141 res!2570964) b!6220144))

(assert (= (and b!6220144 res!2570961) b!6220139))

(assert (= (and b!6220150 (not res!2570960)) b!6220142))

(assert (= (and b!6220142 res!2570967) b!6220146))

(assert (= (and b!6220146 (not res!2570965)) b!6220147))

(assert (= (and b!6220147 (not res!2570962)) b!6220149))

(assert (= (or b!6220145 b!6220141 b!6220146) bm!522041))

(assert (=> d!1949849 m!7047530))

(assert (=> d!1949849 m!7047532))

(assert (=> d!1949849 m!7047536))

(declare-fun m!7048216 () Bool)

(assert (=> d!1949849 m!7048216))

(assert (=> b!6220143 m!7047536))

(declare-fun m!7048218 () Bool)

(assert (=> b!6220143 m!7048218))

(assert (=> b!6220144 m!7047530))

(declare-fun m!7048220 () Bool)

(assert (=> b!6220144 m!7048220))

(assert (=> b!6220144 m!7048220))

(declare-fun m!7048222 () Bool)

(assert (=> b!6220144 m!7048222))

(assert (=> b!6220147 m!7047530))

(assert (=> b!6220147 m!7048220))

(assert (=> b!6220147 m!7048220))

(assert (=> b!6220147 m!7048222))

(assert (=> b!6220152 m!7047530))

(declare-fun m!7048224 () Bool)

(assert (=> b!6220152 m!7048224))

(assert (=> b!6220152 m!7047536))

(assert (=> b!6220152 m!7048224))

(declare-fun m!7048226 () Bool)

(assert (=> b!6220152 m!7048226))

(assert (=> b!6220152 m!7047530))

(assert (=> b!6220152 m!7048220))

(assert (=> b!6220152 m!7048226))

(assert (=> b!6220152 m!7048220))

(declare-fun m!7048228 () Bool)

(assert (=> b!6220152 m!7048228))

(assert (=> b!6220149 m!7047530))

(assert (=> b!6220149 m!7048224))

(assert (=> b!6220139 m!7047530))

(assert (=> b!6220139 m!7048224))

(assert (=> bm!522041 m!7047530))

(assert (=> bm!522041 m!7047532))

(assert (=> b!6219480 d!1949849))

(declare-fun b!6220236 () Bool)

(declare-fun e!3786458 () Regex!16155)

(declare-fun call!522070 () Regex!16155)

(assert (=> b!6220236 (= e!3786458 (Concat!25000 call!522070 r!7292))))

(declare-fun bm!522064 () Bool)

(declare-fun call!522072 () Regex!16155)

(assert (=> bm!522064 (= call!522070 call!522072)))

(declare-fun b!6220237 () Bool)

(declare-fun c!1123872 () Bool)

(assert (=> b!6220237 (= c!1123872 (nullable!6148 (regOne!32822 r!7292)))))

(declare-fun e!3786456 () Regex!16155)

(assert (=> b!6220237 (= e!3786458 e!3786456)))

(declare-fun bm!522065 () Bool)

(declare-fun call!522071 () Regex!16155)

(declare-fun call!522069 () Regex!16155)

(assert (=> bm!522065 (= call!522071 call!522069)))

(declare-fun b!6220238 () Bool)

(assert (=> b!6220238 (= e!3786456 (Union!16155 (Concat!25000 call!522070 (regTwo!32822 r!7292)) call!522071))))

(declare-fun b!6220239 () Bool)

(declare-fun e!3786459 () Regex!16155)

(assert (=> b!6220239 (= e!3786459 EmptyLang!16155)))

(declare-fun b!6220240 () Bool)

(declare-fun e!3786461 () Regex!16155)

(assert (=> b!6220240 (= e!3786461 e!3786458)))

(declare-fun c!1123871 () Bool)

(assert (=> b!6220240 (= c!1123871 ((_ is Star!16155) r!7292))))

(declare-fun b!6220241 () Bool)

(declare-fun e!3786460 () Regex!16155)

(assert (=> b!6220241 (= e!3786460 (ite (= (head!12818 s!2326) (c!1123433 r!7292)) EmptyExpr!16155 EmptyLang!16155))))

(declare-fun d!1949855 () Bool)

(declare-fun lt!2344809 () Regex!16155)

(assert (=> d!1949855 (validRegex!7891 lt!2344809)))

(assert (=> d!1949855 (= lt!2344809 e!3786459)))

(declare-fun c!1123869 () Bool)

(assert (=> d!1949855 (= c!1123869 (or ((_ is EmptyExpr!16155) r!7292) ((_ is EmptyLang!16155) r!7292)))))

(assert (=> d!1949855 (validRegex!7891 r!7292)))

(assert (=> d!1949855 (= (derivativeStep!4868 r!7292 (head!12818 s!2326)) lt!2344809)))

(declare-fun b!6220242 () Bool)

(assert (=> b!6220242 (= e!3786461 (Union!16155 call!522072 call!522069))))

(declare-fun c!1123867 () Bool)

(declare-fun bm!522066 () Bool)

(assert (=> bm!522066 (= call!522072 (derivativeStep!4868 (ite c!1123867 (regOne!32823 r!7292) (ite c!1123871 (reg!16484 r!7292) (regOne!32822 r!7292))) (head!12818 s!2326)))))

(declare-fun b!6220243 () Bool)

(assert (=> b!6220243 (= e!3786456 (Union!16155 (Concat!25000 call!522071 (regTwo!32822 r!7292)) EmptyLang!16155))))

(declare-fun b!6220244 () Bool)

(assert (=> b!6220244 (= c!1123867 ((_ is Union!16155) r!7292))))

(assert (=> b!6220244 (= e!3786460 e!3786461)))

(declare-fun b!6220245 () Bool)

(assert (=> b!6220245 (= e!3786459 e!3786460)))

(declare-fun c!1123868 () Bool)

(assert (=> b!6220245 (= c!1123868 ((_ is ElementMatch!16155) r!7292))))

(declare-fun bm!522067 () Bool)

(assert (=> bm!522067 (= call!522069 (derivativeStep!4868 (ite c!1123867 (regTwo!32823 r!7292) (ite c!1123872 (regTwo!32822 r!7292) (regOne!32822 r!7292))) (head!12818 s!2326)))))

(assert (= (and d!1949855 c!1123869) b!6220239))

(assert (= (and d!1949855 (not c!1123869)) b!6220245))

(assert (= (and b!6220245 c!1123868) b!6220241))

(assert (= (and b!6220245 (not c!1123868)) b!6220244))

(assert (= (and b!6220244 c!1123867) b!6220242))

(assert (= (and b!6220244 (not c!1123867)) b!6220240))

(assert (= (and b!6220240 c!1123871) b!6220236))

(assert (= (and b!6220240 (not c!1123871)) b!6220237))

(assert (= (and b!6220237 c!1123872) b!6220238))

(assert (= (and b!6220237 (not c!1123872)) b!6220243))

(assert (= (or b!6220238 b!6220243) bm!522065))

(assert (= (or b!6220236 b!6220238) bm!522064))

(assert (= (or b!6220242 bm!522065) bm!522067))

(assert (= (or b!6220242 bm!522064) bm!522066))

(assert (=> b!6220237 m!7047826))

(declare-fun m!7048294 () Bool)

(assert (=> d!1949855 m!7048294))

(assert (=> d!1949855 m!7046970))

(assert (=> bm!522066 m!7047534))

(declare-fun m!7048296 () Bool)

(assert (=> bm!522066 m!7048296))

(assert (=> bm!522067 m!7047534))

(declare-fun m!7048298 () Bool)

(assert (=> bm!522067 m!7048298))

(assert (=> b!6219480 d!1949855))

(assert (=> b!6219480 d!1949845))

(assert (=> b!6219480 d!1949611))

(declare-fun d!1949883 () Bool)

(declare-fun c!1123873 () Bool)

(assert (=> d!1949883 (= c!1123873 (isEmpty!36649 (tail!11903 (t!378294 s!2326))))))

(declare-fun e!3786462 () Bool)

(assert (=> d!1949883 (= (matchZipper!2167 (derivationStepZipper!2121 lt!2344678 (head!12818 (t!378294 s!2326))) (tail!11903 (t!378294 s!2326))) e!3786462)))

(declare-fun b!6220246 () Bool)

(assert (=> b!6220246 (= e!3786462 (nullableZipper!1929 (derivationStepZipper!2121 lt!2344678 (head!12818 (t!378294 s!2326)))))))

(declare-fun b!6220247 () Bool)

(assert (=> b!6220247 (= e!3786462 (matchZipper!2167 (derivationStepZipper!2121 (derivationStepZipper!2121 lt!2344678 (head!12818 (t!378294 s!2326))) (head!12818 (tail!11903 (t!378294 s!2326)))) (tail!11903 (tail!11903 (t!378294 s!2326)))))))

(assert (= (and d!1949883 c!1123873) b!6220246))

(assert (= (and d!1949883 (not c!1123873)) b!6220247))

(assert (=> d!1949883 m!7047312))

(assert (=> d!1949883 m!7047742))

(assert (=> b!6220246 m!7047546))

(declare-fun m!7048302 () Bool)

(assert (=> b!6220246 m!7048302))

(assert (=> b!6220247 m!7047312))

(assert (=> b!6220247 m!7047746))

(assert (=> b!6220247 m!7047546))

(assert (=> b!6220247 m!7047746))

(declare-fun m!7048304 () Bool)

(assert (=> b!6220247 m!7048304))

(assert (=> b!6220247 m!7047312))

(assert (=> b!6220247 m!7047750))

(assert (=> b!6220247 m!7048304))

(assert (=> b!6220247 m!7047750))

(declare-fun m!7048306 () Bool)

(assert (=> b!6220247 m!7048306))

(assert (=> b!6219482 d!1949883))

(declare-fun bs!1542537 () Bool)

(declare-fun d!1949887 () Bool)

(assert (= bs!1542537 (and d!1949887 d!1949515)))

(declare-fun lambda!339968 () Int)

(assert (=> bs!1542537 (= (= (head!12818 (t!378294 s!2326)) (h!71088 s!2326)) (= lambda!339968 lambda!339922))))

(declare-fun bs!1542538 () Bool)

(assert (= bs!1542538 (and d!1949887 b!6218742)))

(assert (=> bs!1542538 (= (= (head!12818 (t!378294 s!2326)) (h!71088 s!2326)) (= lambda!339968 lambda!339865))))

(declare-fun bs!1542539 () Bool)

(assert (= bs!1542539 (and d!1949887 d!1949633)))

(assert (=> bs!1542539 (= lambda!339968 lambda!339941)))

(declare-fun bs!1542540 () Bool)

(assert (= bs!1542540 (and d!1949887 d!1949811)))

(assert (=> bs!1542540 (= lambda!339968 lambda!339961)))

(declare-fun bs!1542541 () Bool)

(assert (= bs!1542541 (and d!1949887 d!1949841)))

(assert (=> bs!1542541 (= lambda!339968 lambda!339964)))

(assert (=> d!1949887 true))

(assert (=> d!1949887 (= (derivationStepZipper!2121 lt!2344678 (head!12818 (t!378294 s!2326))) (flatMap!1660 lt!2344678 lambda!339968))))

(declare-fun bs!1542542 () Bool)

(assert (= bs!1542542 d!1949887))

(declare-fun m!7048308 () Bool)

(assert (=> bs!1542542 m!7048308))

(assert (=> b!6219482 d!1949887))

(assert (=> b!6219482 d!1949635))

(assert (=> b!6219482 d!1949637))

(declare-fun d!1949889 () Bool)

(declare-fun c!1123874 () Bool)

(assert (=> d!1949889 (= c!1123874 (isEmpty!36649 (tail!11903 (t!378294 s!2326))))))

(declare-fun e!3786463 () Bool)

(assert (=> d!1949889 (= (matchZipper!2167 (derivationStepZipper!2121 lt!2344674 (head!12818 (t!378294 s!2326))) (tail!11903 (t!378294 s!2326))) e!3786463)))

(declare-fun b!6220248 () Bool)

(assert (=> b!6220248 (= e!3786463 (nullableZipper!1929 (derivationStepZipper!2121 lt!2344674 (head!12818 (t!378294 s!2326)))))))

(declare-fun b!6220249 () Bool)

(assert (=> b!6220249 (= e!3786463 (matchZipper!2167 (derivationStepZipper!2121 (derivationStepZipper!2121 lt!2344674 (head!12818 (t!378294 s!2326))) (head!12818 (tail!11903 (t!378294 s!2326)))) (tail!11903 (tail!11903 (t!378294 s!2326)))))))

(assert (= (and d!1949889 c!1123874) b!6220248))

(assert (= (and d!1949889 (not c!1123874)) b!6220249))

(assert (=> d!1949889 m!7047312))

(assert (=> d!1949889 m!7047742))

(assert (=> b!6220248 m!7047350))

(declare-fun m!7048310 () Bool)

(assert (=> b!6220248 m!7048310))

(assert (=> b!6220249 m!7047312))

(assert (=> b!6220249 m!7047746))

(assert (=> b!6220249 m!7047350))

(assert (=> b!6220249 m!7047746))

(declare-fun m!7048312 () Bool)

(assert (=> b!6220249 m!7048312))

(assert (=> b!6220249 m!7047312))

(assert (=> b!6220249 m!7047750))

(assert (=> b!6220249 m!7048312))

(assert (=> b!6220249 m!7047750))

(declare-fun m!7048314 () Bool)

(assert (=> b!6220249 m!7048314))

(assert (=> b!6219199 d!1949889))

(declare-fun bs!1542543 () Bool)

(declare-fun d!1949891 () Bool)

(assert (= bs!1542543 (and d!1949891 d!1949515)))

(declare-fun lambda!339969 () Int)

(assert (=> bs!1542543 (= (= (head!12818 (t!378294 s!2326)) (h!71088 s!2326)) (= lambda!339969 lambda!339922))))

(declare-fun bs!1542544 () Bool)

(assert (= bs!1542544 (and d!1949891 d!1949887)))

(assert (=> bs!1542544 (= lambda!339969 lambda!339968)))

(declare-fun bs!1542545 () Bool)

(assert (= bs!1542545 (and d!1949891 b!6218742)))

(assert (=> bs!1542545 (= (= (head!12818 (t!378294 s!2326)) (h!71088 s!2326)) (= lambda!339969 lambda!339865))))

(declare-fun bs!1542547 () Bool)

(assert (= bs!1542547 (and d!1949891 d!1949633)))

(assert (=> bs!1542547 (= lambda!339969 lambda!339941)))

(declare-fun bs!1542548 () Bool)

(assert (= bs!1542548 (and d!1949891 d!1949811)))

(assert (=> bs!1542548 (= lambda!339969 lambda!339961)))

(declare-fun bs!1542549 () Bool)

(assert (= bs!1542549 (and d!1949891 d!1949841)))

(assert (=> bs!1542549 (= lambda!339969 lambda!339964)))

(assert (=> d!1949891 true))

(assert (=> d!1949891 (= (derivationStepZipper!2121 lt!2344674 (head!12818 (t!378294 s!2326))) (flatMap!1660 lt!2344674 lambda!339969))))

(declare-fun bs!1542550 () Bool)

(assert (= bs!1542550 d!1949891))

(declare-fun m!7048316 () Bool)

(assert (=> bs!1542550 m!7048316))

(assert (=> b!6219199 d!1949891))

(assert (=> b!6219199 d!1949635))

(assert (=> b!6219199 d!1949637))

(assert (=> b!6219196 d!1949479))

(declare-fun bs!1542551 () Bool)

(declare-fun d!1949895 () Bool)

(assert (= bs!1542551 (and d!1949895 d!1949453)))

(declare-fun lambda!339970 () Int)

(assert (=> bs!1542551 (= lambda!339970 lambda!339903)))

(declare-fun bs!1542552 () Bool)

(assert (= bs!1542552 (and d!1949895 d!1949475)))

(assert (=> bs!1542552 (= lambda!339970 lambda!339907)))

(declare-fun bs!1542553 () Bool)

(assert (= bs!1542553 (and d!1949895 d!1949715)))

(assert (=> bs!1542553 (= lambda!339970 lambda!339954)))

(declare-fun bs!1542554 () Bool)

(assert (= bs!1542554 (and d!1949895 d!1949801)))

(assert (=> bs!1542554 (= lambda!339970 lambda!339960)))

(declare-fun bs!1542555 () Bool)

(assert (= bs!1542555 (and d!1949895 d!1949525)))

(assert (=> bs!1542555 (= lambda!339970 lambda!339929)))

(declare-fun bs!1542556 () Bool)

(assert (= bs!1542556 (and d!1949895 d!1949479)))

(assert (=> bs!1542556 (= lambda!339970 lambda!339910)))

(declare-fun bs!1542557 () Bool)

(assert (= bs!1542557 (and d!1949895 d!1949473)))

(assert (=> bs!1542557 (= lambda!339970 lambda!339906)))

(declare-fun bs!1542558 () Bool)

(assert (= bs!1542558 (and d!1949895 d!1949451)))

(assert (=> bs!1542558 (= lambda!339970 lambda!339900)))

(declare-fun bs!1542559 () Bool)

(assert (= bs!1542559 (and d!1949895 d!1949717)))

(assert (=> bs!1542559 (= lambda!339970 lambda!339955)))

(declare-fun lt!2344810 () List!64765)

(assert (=> d!1949895 (forall!15269 lt!2344810 lambda!339970)))

(declare-fun e!3786464 () List!64765)

(assert (=> d!1949895 (= lt!2344810 e!3786464)))

(declare-fun c!1123875 () Bool)

(assert (=> d!1949895 (= c!1123875 ((_ is Cons!64642) (t!378296 zl!343)))))

(assert (=> d!1949895 (= (unfocusZipperList!1576 (t!378296 zl!343)) lt!2344810)))

(declare-fun b!6220250 () Bool)

(assert (=> b!6220250 (= e!3786464 (Cons!64641 (generalisedConcat!1752 (exprs!6039 (h!71090 (t!378296 zl!343)))) (unfocusZipperList!1576 (t!378296 (t!378296 zl!343)))))))

(declare-fun b!6220251 () Bool)

(assert (=> b!6220251 (= e!3786464 Nil!64641)))

(assert (= (and d!1949895 c!1123875) b!6220250))

(assert (= (and d!1949895 (not c!1123875)) b!6220251))

(declare-fun m!7048318 () Bool)

(assert (=> d!1949895 m!7048318))

(declare-fun m!7048320 () Bool)

(assert (=> b!6220250 m!7048320))

(declare-fun m!7048322 () Bool)

(assert (=> b!6220250 m!7048322))

(assert (=> b!6219196 d!1949895))

(assert (=> d!1949521 d!1949667))

(assert (=> d!1949521 d!1949477))

(declare-fun b!6220263 () Bool)

(declare-fun c!1123883 () Bool)

(declare-fun e!3786475 () Bool)

(assert (=> b!6220263 (= c!1123883 e!3786475)))

(declare-fun res!2570994 () Bool)

(assert (=> b!6220263 (=> (not res!2570994) (not e!3786475))))

(assert (=> b!6220263 (= res!2570994 ((_ is Concat!25000) (ite c!1123578 (regOne!32823 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123577 (regTwo!32822 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123576 (regOne!32822 (regTwo!32822 (regOne!32822 r!7292))) (reg!16484 (regTwo!32822 (regOne!32822 r!7292))))))))))

(declare-fun e!3786474 () (InoxSet Context!11078))

(declare-fun e!3786473 () (InoxSet Context!11078))

(assert (=> b!6220263 (= e!3786474 e!3786473)))

(declare-fun c!1123881 () Bool)

(declare-fun b!6220264 () Bool)

(assert (=> b!6220264 (= c!1123881 ((_ is Star!16155) (ite c!1123578 (regOne!32823 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123577 (regTwo!32822 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123576 (regOne!32822 (regTwo!32822 (regOne!32822 r!7292))) (reg!16484 (regTwo!32822 (regOne!32822 r!7292))))))))))

(declare-fun e!3786472 () (InoxSet Context!11078))

(declare-fun e!3786476 () (InoxSet Context!11078))

(assert (=> b!6220264 (= e!3786472 e!3786476)))

(declare-fun b!6220265 () Bool)

(assert (=> b!6220265 (= e!3786476 ((as const (Array Context!11078 Bool)) false))))

(declare-fun b!6220266 () Bool)

(declare-fun call!522083 () (InoxSet Context!11078))

(declare-fun call!522084 () (InoxSet Context!11078))

(assert (=> b!6220266 (= e!3786473 ((_ map or) call!522083 call!522084))))

(declare-fun b!6220267 () Bool)

(declare-fun call!522082 () (InoxSet Context!11078))

(assert (=> b!6220267 (= e!3786476 call!522082)))

(declare-fun b!6220268 () Bool)

(assert (=> b!6220268 (= e!3786473 e!3786472)))

(declare-fun c!1123882 () Bool)

(assert (=> b!6220268 (= c!1123882 ((_ is Concat!25000) (ite c!1123578 (regOne!32823 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123577 (regTwo!32822 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123576 (regOne!32822 (regTwo!32822 (regOne!32822 r!7292))) (reg!16484 (regTwo!32822 (regOne!32822 r!7292))))))))))

(declare-fun c!1123885 () Bool)

(declare-fun d!1949901 () Bool)

(assert (=> d!1949901 (= c!1123885 (and ((_ is ElementMatch!16155) (ite c!1123578 (regOne!32823 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123577 (regTwo!32822 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123576 (regOne!32822 (regTwo!32822 (regOne!32822 r!7292))) (reg!16484 (regTwo!32822 (regOne!32822 r!7292))))))) (= (c!1123433 (ite c!1123578 (regOne!32823 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123577 (regTwo!32822 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123576 (regOne!32822 (regTwo!32822 (regOne!32822 r!7292))) (reg!16484 (regTwo!32822 (regOne!32822 r!7292))))))) (h!71088 s!2326))))))

(declare-fun e!3786471 () (InoxSet Context!11078))

(assert (=> d!1949901 (= (derivationStepZipperDown!1403 (ite c!1123578 (regOne!32823 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123577 (regTwo!32822 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123576 (regOne!32822 (regTwo!32822 (regOne!32822 r!7292))) (reg!16484 (regTwo!32822 (regOne!32822 r!7292)))))) (ite (or c!1123578 c!1123577) lt!2344673 (Context!11079 call!521850)) (h!71088 s!2326)) e!3786471)))

(declare-fun bm!522074 () Bool)

(assert (=> bm!522074 (= call!522082 call!522084)))

(declare-fun b!6220269 () Bool)

(assert (=> b!6220269 (= e!3786475 (nullable!6148 (regOne!32822 (ite c!1123578 (regOne!32823 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123577 (regTwo!32822 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123576 (regOne!32822 (regTwo!32822 (regOne!32822 r!7292))) (reg!16484 (regTwo!32822 (regOne!32822 r!7292)))))))))))

(declare-fun bm!522075 () Bool)

(declare-fun call!522080 () (InoxSet Context!11078))

(assert (=> bm!522075 (= call!522084 call!522080)))

(declare-fun bm!522076 () Bool)

(declare-fun call!522079 () List!64765)

(declare-fun c!1123884 () Bool)

(assert (=> bm!522076 (= call!522080 (derivationStepZipperDown!1403 (ite c!1123884 (regOne!32823 (ite c!1123578 (regOne!32823 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123577 (regTwo!32822 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123576 (regOne!32822 (regTwo!32822 (regOne!32822 r!7292))) (reg!16484 (regTwo!32822 (regOne!32822 r!7292))))))) (ite c!1123883 (regTwo!32822 (ite c!1123578 (regOne!32823 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123577 (regTwo!32822 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123576 (regOne!32822 (regTwo!32822 (regOne!32822 r!7292))) (reg!16484 (regTwo!32822 (regOne!32822 r!7292))))))) (ite c!1123882 (regOne!32822 (ite c!1123578 (regOne!32823 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123577 (regTwo!32822 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123576 (regOne!32822 (regTwo!32822 (regOne!32822 r!7292))) (reg!16484 (regTwo!32822 (regOne!32822 r!7292))))))) (reg!16484 (ite c!1123578 (regOne!32823 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123577 (regTwo!32822 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123576 (regOne!32822 (regTwo!32822 (regOne!32822 r!7292))) (reg!16484 (regTwo!32822 (regOne!32822 r!7292)))))))))) (ite (or c!1123884 c!1123883) (ite (or c!1123578 c!1123577) lt!2344673 (Context!11079 call!521850)) (Context!11079 call!522079)) (h!71088 s!2326)))))

(declare-fun bm!522077 () Bool)

(declare-fun call!522081 () List!64765)

(assert (=> bm!522077 (= call!522083 (derivationStepZipperDown!1403 (ite c!1123884 (regTwo!32823 (ite c!1123578 (regOne!32823 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123577 (regTwo!32822 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123576 (regOne!32822 (regTwo!32822 (regOne!32822 r!7292))) (reg!16484 (regTwo!32822 (regOne!32822 r!7292))))))) (regOne!32822 (ite c!1123578 (regOne!32823 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123577 (regTwo!32822 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123576 (regOne!32822 (regTwo!32822 (regOne!32822 r!7292))) (reg!16484 (regTwo!32822 (regOne!32822 r!7292)))))))) (ite c!1123884 (ite (or c!1123578 c!1123577) lt!2344673 (Context!11079 call!521850)) (Context!11079 call!522081)) (h!71088 s!2326)))))

(declare-fun b!6220270 () Bool)

(assert (=> b!6220270 (= e!3786471 e!3786474)))

(assert (=> b!6220270 (= c!1123884 ((_ is Union!16155) (ite c!1123578 (regOne!32823 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123577 (regTwo!32822 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123576 (regOne!32822 (regTwo!32822 (regOne!32822 r!7292))) (reg!16484 (regTwo!32822 (regOne!32822 r!7292))))))))))

(declare-fun b!6220271 () Bool)

(assert (=> b!6220271 (= e!3786474 ((_ map or) call!522080 call!522083))))

(declare-fun bm!522078 () Bool)

(assert (=> bm!522078 (= call!522079 call!522081)))

(declare-fun bm!522079 () Bool)

(assert (=> bm!522079 (= call!522081 ($colon$colon!2024 (exprs!6039 (ite (or c!1123578 c!1123577) lt!2344673 (Context!11079 call!521850))) (ite (or c!1123883 c!1123882) (regTwo!32822 (ite c!1123578 (regOne!32823 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123577 (regTwo!32822 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123576 (regOne!32822 (regTwo!32822 (regOne!32822 r!7292))) (reg!16484 (regTwo!32822 (regOne!32822 r!7292))))))) (ite c!1123578 (regOne!32823 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123577 (regTwo!32822 (regTwo!32822 (regOne!32822 r!7292))) (ite c!1123576 (regOne!32822 (regTwo!32822 (regOne!32822 r!7292))) (reg!16484 (regTwo!32822 (regOne!32822 r!7292)))))))))))

(declare-fun b!6220272 () Bool)

(assert (=> b!6220272 (= e!3786471 (store ((as const (Array Context!11078 Bool)) false) (ite (or c!1123578 c!1123577) lt!2344673 (Context!11079 call!521850)) true))))

(declare-fun b!6220273 () Bool)

(assert (=> b!6220273 (= e!3786472 call!522082)))

(assert (= (and d!1949901 c!1123885) b!6220272))

(assert (= (and d!1949901 (not c!1123885)) b!6220270))

(assert (= (and b!6220270 c!1123884) b!6220271))

(assert (= (and b!6220270 (not c!1123884)) b!6220263))

(assert (= (and b!6220263 res!2570994) b!6220269))

(assert (= (and b!6220263 c!1123883) b!6220266))

(assert (= (and b!6220263 (not c!1123883)) b!6220268))

(assert (= (and b!6220268 c!1123882) b!6220273))

(assert (= (and b!6220268 (not c!1123882)) b!6220264))

(assert (= (and b!6220264 c!1123881) b!6220267))

(assert (= (and b!6220264 (not c!1123881)) b!6220265))

(assert (= (or b!6220273 b!6220267) bm!522078))

(assert (= (or b!6220273 b!6220267) bm!522074))

(assert (= (or b!6220266 bm!522078) bm!522079))

(assert (= (or b!6220266 bm!522074) bm!522075))

(assert (= (or b!6220271 b!6220266) bm!522077))

(assert (= (or b!6220271 bm!522075) bm!522076))

(declare-fun m!7048334 () Bool)

(assert (=> b!6220269 m!7048334))

(declare-fun m!7048338 () Bool)

(assert (=> bm!522076 m!7048338))

(declare-fun m!7048340 () Bool)

(assert (=> bm!522079 m!7048340))

(declare-fun m!7048346 () Bool)

(assert (=> b!6220272 m!7048346))

(declare-fun m!7048352 () Bool)

(assert (=> bm!522077 m!7048352))

(assert (=> bm!521847 d!1949901))

(declare-fun d!1949907 () Bool)

(assert (=> d!1949907 (= (flatMap!1660 lt!2344681 lambda!339922) (choose!46218 lt!2344681 lambda!339922))))

(declare-fun bs!1542560 () Bool)

(assert (= bs!1542560 d!1949907))

(declare-fun m!7048354 () Bool)

(assert (=> bs!1542560 m!7048354))

(assert (=> d!1949515 d!1949907))

(declare-fun d!1949909 () Bool)

(assert (=> d!1949909 (= (isEmpty!36651 (findConcatSeparation!2460 (regOne!32822 r!7292) (regTwo!32822 r!7292) Nil!64640 s!2326 s!2326)) (not ((_ is Some!16045) (findConcatSeparation!2460 (regOne!32822 r!7292) (regTwo!32822 r!7292) Nil!64640 s!2326 s!2326))))))

(assert (=> d!1949491 d!1949909))

(declare-fun bs!1542561 () Bool)

(declare-fun d!1949911 () Bool)

(assert (= bs!1542561 (and d!1949911 d!1949551)))

(declare-fun lambda!339971 () Int)

(assert (=> bs!1542561 (= lambda!339971 lambda!339936)))

(declare-fun bs!1542562 () Bool)

(assert (= bs!1542562 (and d!1949911 d!1949669)))

(assert (=> bs!1542562 (= lambda!339971 lambda!339948)))

(assert (=> d!1949911 (= (nullableZipper!1929 ((_ map or) lt!2344671 lt!2344678)) (exists!2489 ((_ map or) lt!2344671 lt!2344678) lambda!339971))))

(declare-fun bs!1542563 () Bool)

(assert (= bs!1542563 d!1949911))

(declare-fun m!7048368 () Bool)

(assert (=> bs!1542563 m!7048368))

(assert (=> b!6219160 d!1949911))

(assert (=> b!6219204 d!1949457))

(declare-fun d!1949913 () Bool)

(assert (=> d!1949913 (= (isEmpty!36646 (t!378295 (unfocusZipperList!1576 zl!343))) ((_ is Nil!64641) (t!378295 (unfocusZipperList!1576 zl!343))))))

(assert (=> b!6219190 d!1949913))

(assert (=> bs!1542377 d!1949511))

(assert (=> d!1949495 d!1949493))

(declare-fun d!1949917 () Bool)

(assert (=> d!1949917 (= (flatMap!1660 z!1189 lambda!339865) (dynLambda!25503 lambda!339865 (h!71090 zl!343)))))

(assert (=> d!1949917 true))

(declare-fun _$13!3251 () Unit!157951)

(assert (=> d!1949917 (= (choose!46219 z!1189 (h!71090 zl!343) lambda!339865) _$13!3251)))

(declare-fun b_lambda!236461 () Bool)

(assert (=> (not b_lambda!236461) (not d!1949917)))

(declare-fun bs!1542566 () Bool)

(assert (= bs!1542566 d!1949917))

(assert (=> bs!1542566 m!7047004))

(assert (=> bs!1542566 m!7047466))

(assert (=> d!1949495 d!1949917))

(declare-fun bs!1542570 () Bool)

(declare-fun d!1949919 () Bool)

(assert (= bs!1542570 (and d!1949919 d!1949453)))

(declare-fun lambda!339973 () Int)

(assert (=> bs!1542570 (= lambda!339973 lambda!339903)))

(declare-fun bs!1542572 () Bool)

(assert (= bs!1542572 (and d!1949919 d!1949895)))

(assert (=> bs!1542572 (= lambda!339973 lambda!339970)))

(declare-fun bs!1542573 () Bool)

(assert (= bs!1542573 (and d!1949919 d!1949475)))

(assert (=> bs!1542573 (= lambda!339973 lambda!339907)))

(declare-fun bs!1542574 () Bool)

(assert (= bs!1542574 (and d!1949919 d!1949715)))

(assert (=> bs!1542574 (= lambda!339973 lambda!339954)))

(declare-fun bs!1542575 () Bool)

(assert (= bs!1542575 (and d!1949919 d!1949801)))

(assert (=> bs!1542575 (= lambda!339973 lambda!339960)))

(declare-fun bs!1542576 () Bool)

(assert (= bs!1542576 (and d!1949919 d!1949525)))

(assert (=> bs!1542576 (= lambda!339973 lambda!339929)))

(declare-fun bs!1542577 () Bool)

(assert (= bs!1542577 (and d!1949919 d!1949479)))

(assert (=> bs!1542577 (= lambda!339973 lambda!339910)))

(declare-fun bs!1542578 () Bool)

(assert (= bs!1542578 (and d!1949919 d!1949473)))

(assert (=> bs!1542578 (= lambda!339973 lambda!339906)))

(declare-fun bs!1542579 () Bool)

(assert (= bs!1542579 (and d!1949919 d!1949451)))

(assert (=> bs!1542579 (= lambda!339973 lambda!339900)))

(declare-fun bs!1542580 () Bool)

(assert (= bs!1542580 (and d!1949919 d!1949717)))

(assert (=> bs!1542580 (= lambda!339973 lambda!339955)))

(declare-fun b!6220310 () Bool)

(declare-fun e!3786502 () Regex!16155)

(declare-fun e!3786498 () Regex!16155)

(assert (=> b!6220310 (= e!3786502 e!3786498)))

(declare-fun c!1123900 () Bool)

(assert (=> b!6220310 (= c!1123900 ((_ is Cons!64641) (t!378295 (exprs!6039 (h!71090 zl!343)))))))

(declare-fun b!6220311 () Bool)

(assert (=> b!6220311 (= e!3786502 (h!71089 (t!378295 (exprs!6039 (h!71090 zl!343)))))))

(declare-fun b!6220313 () Bool)

(assert (=> b!6220313 (= e!3786498 EmptyExpr!16155)))

(declare-fun b!6220314 () Bool)

(declare-fun e!3786500 () Bool)

(declare-fun e!3786499 () Bool)

(assert (=> b!6220314 (= e!3786500 e!3786499)))

(declare-fun c!1123898 () Bool)

(assert (=> b!6220314 (= c!1123898 (isEmpty!36646 (tail!11904 (t!378295 (exprs!6039 (h!71090 zl!343))))))))

(declare-fun b!6220315 () Bool)

(declare-fun lt!2344812 () Regex!16155)

(assert (=> b!6220315 (= e!3786499 (= lt!2344812 (head!12819 (t!378295 (exprs!6039 (h!71090 zl!343))))))))

(declare-fun b!6220316 () Bool)

(assert (=> b!6220316 (= e!3786500 (isEmptyExpr!1565 lt!2344812))))

(declare-fun b!6220317 () Bool)

(declare-fun e!3786497 () Bool)

(assert (=> b!6220317 (= e!3786497 e!3786500)))

(declare-fun c!1123901 () Bool)

(assert (=> b!6220317 (= c!1123901 (isEmpty!36646 (t!378295 (exprs!6039 (h!71090 zl!343)))))))

(declare-fun b!6220318 () Bool)

(declare-fun e!3786501 () Bool)

(assert (=> b!6220318 (= e!3786501 (isEmpty!36646 (t!378295 (t!378295 (exprs!6039 (h!71090 zl!343))))))))

(declare-fun b!6220319 () Bool)

(assert (=> b!6220319 (= e!3786499 (isConcat!1088 lt!2344812))))

(assert (=> d!1949919 e!3786497))

(declare-fun res!2571008 () Bool)

(assert (=> d!1949919 (=> (not res!2571008) (not e!3786497))))

(assert (=> d!1949919 (= res!2571008 (validRegex!7891 lt!2344812))))

(assert (=> d!1949919 (= lt!2344812 e!3786502)))

(declare-fun c!1123899 () Bool)

(assert (=> d!1949919 (= c!1123899 e!3786501)))

(declare-fun res!2571007 () Bool)

(assert (=> d!1949919 (=> (not res!2571007) (not e!3786501))))

(assert (=> d!1949919 (= res!2571007 ((_ is Cons!64641) (t!378295 (exprs!6039 (h!71090 zl!343)))))))

(assert (=> d!1949919 (forall!15269 (t!378295 (exprs!6039 (h!71090 zl!343))) lambda!339973)))

(assert (=> d!1949919 (= (generalisedConcat!1752 (t!378295 (exprs!6039 (h!71090 zl!343)))) lt!2344812)))

(declare-fun b!6220312 () Bool)

(assert (=> b!6220312 (= e!3786498 (Concat!25000 (h!71089 (t!378295 (exprs!6039 (h!71090 zl!343)))) (generalisedConcat!1752 (t!378295 (t!378295 (exprs!6039 (h!71090 zl!343)))))))))

(assert (= (and d!1949919 res!2571007) b!6220318))

(assert (= (and d!1949919 c!1123899) b!6220311))

(assert (= (and d!1949919 (not c!1123899)) b!6220310))

(assert (= (and b!6220310 c!1123900) b!6220312))

(assert (= (and b!6220310 (not c!1123900)) b!6220313))

(assert (= (and d!1949919 res!2571008) b!6220317))

(assert (= (and b!6220317 c!1123901) b!6220316))

(assert (= (and b!6220317 (not c!1123901)) b!6220314))

(assert (= (and b!6220314 c!1123898) b!6220315))

(assert (= (and b!6220314 (not c!1123898)) b!6220319))

(declare-fun m!7048370 () Bool)

(assert (=> b!6220318 m!7048370))

(declare-fun m!7048372 () Bool)

(assert (=> b!6220315 m!7048372))

(declare-fun m!7048374 () Bool)

(assert (=> b!6220319 m!7048374))

(declare-fun m!7048376 () Bool)

(assert (=> b!6220316 m!7048376))

(declare-fun m!7048378 () Bool)

(assert (=> d!1949919 m!7048378))

(declare-fun m!7048380 () Bool)

(assert (=> d!1949919 m!7048380))

(declare-fun m!7048382 () Bool)

(assert (=> b!6220314 m!7048382))

(assert (=> b!6220314 m!7048382))

(declare-fun m!7048384 () Bool)

(assert (=> b!6220314 m!7048384))

(assert (=> b!6220317 m!7047044))

(declare-fun m!7048386 () Bool)

(assert (=> b!6220312 m!7048386))

(assert (=> b!6219301 d!1949919))

(declare-fun d!1949921 () Bool)

(assert (=> d!1949921 (= (nullable!6148 r!7292) (nullableFct!2104 r!7292))))

(declare-fun bs!1542587 () Bool)

(assert (= bs!1542587 d!1949921))

(declare-fun m!7048388 () Bool)

(assert (=> bs!1542587 m!7048388))

(assert (=> b!6219471 d!1949921))

(declare-fun bs!1542589 () Bool)

(declare-fun b!6220324 () Bool)

(assert (= bs!1542589 (and b!6220324 b!6218730)))

(declare-fun lambda!339975 () Int)

(assert (=> bs!1542589 (not (= lambda!339975 lambda!339863))))

(declare-fun bs!1542592 () Bool)

(assert (= bs!1542592 (and b!6220324 d!1949487)))

(assert (=> bs!1542592 (not (= lambda!339975 lambda!339913))))

(declare-fun bs!1542595 () Bool)

(assert (= bs!1542595 (and b!6220324 b!6219432)))

(assert (=> bs!1542595 (= (and (= (reg!16484 (regTwo!32823 r!7292)) (reg!16484 r!7292)) (= (regTwo!32823 r!7292) r!7292)) (= lambda!339975 lambda!339927))))

(declare-fun bs!1542597 () Bool)

(assert (= bs!1542597 (and b!6220324 d!1949653)))

(assert (=> bs!1542597 (not (= lambda!339975 lambda!339946))))

(declare-fun bs!1542598 () Bool)

(assert (= bs!1542598 (and b!6220324 d!1949571)))

(assert (=> bs!1542598 (not (= lambda!339975 lambda!339939))))

(assert (=> bs!1542597 (not (= lambda!339975 lambda!339947))))

(declare-fun bs!1542599 () Bool)

(assert (= bs!1542599 (and b!6220324 d!1949489)))

(assert (=> bs!1542599 (not (= lambda!339975 lambda!339919))))

(assert (=> bs!1542589 (not (= lambda!339975 lambda!339864))))

(assert (=> bs!1542599 (not (= lambda!339975 lambda!339918))))

(declare-fun bs!1542600 () Bool)

(assert (= bs!1542600 (and b!6220324 b!6219438)))

(assert (=> bs!1542600 (not (= lambda!339975 lambda!339928))))

(assert (=> b!6220324 true))

(assert (=> b!6220324 true))

(declare-fun bs!1542609 () Bool)

(declare-fun b!6220330 () Bool)

(assert (= bs!1542609 (and b!6220330 b!6218730)))

(declare-fun lambda!339978 () Int)

(assert (=> bs!1542609 (not (= lambda!339978 lambda!339863))))

(declare-fun bs!1542610 () Bool)

(assert (= bs!1542610 (and b!6220330 d!1949487)))

(assert (=> bs!1542610 (not (= lambda!339978 lambda!339913))))

(declare-fun bs!1542611 () Bool)

(assert (= bs!1542611 (and b!6220330 b!6219432)))

(assert (=> bs!1542611 (not (= lambda!339978 lambda!339927))))

(declare-fun bs!1542612 () Bool)

(assert (= bs!1542612 (and b!6220330 d!1949653)))

(assert (=> bs!1542612 (not (= lambda!339978 lambda!339946))))

(declare-fun bs!1542613 () Bool)

(assert (= bs!1542613 (and b!6220330 d!1949571)))

(assert (=> bs!1542613 (not (= lambda!339978 lambda!339939))))

(declare-fun bs!1542614 () Bool)

(assert (= bs!1542614 (and b!6220330 b!6220324)))

(assert (=> bs!1542614 (not (= lambda!339978 lambda!339975))))

(assert (=> bs!1542612 (= (and (= (regOne!32822 (regTwo!32823 r!7292)) (regOne!32822 r!7292)) (= (regTwo!32822 (regTwo!32823 r!7292)) (regTwo!32822 r!7292))) (= lambda!339978 lambda!339947))))

(declare-fun bs!1542615 () Bool)

(assert (= bs!1542615 (and b!6220330 d!1949489)))

(assert (=> bs!1542615 (= (and (= (regOne!32822 (regTwo!32823 r!7292)) (regOne!32822 r!7292)) (= (regTwo!32822 (regTwo!32823 r!7292)) (regTwo!32822 r!7292))) (= lambda!339978 lambda!339919))))

(assert (=> bs!1542609 (= (and (= (regOne!32822 (regTwo!32823 r!7292)) (regOne!32822 r!7292)) (= (regTwo!32822 (regTwo!32823 r!7292)) (regTwo!32822 r!7292))) (= lambda!339978 lambda!339864))))

(assert (=> bs!1542615 (not (= lambda!339978 lambda!339918))))

(declare-fun bs!1542616 () Bool)

(assert (= bs!1542616 (and b!6220330 b!6219438)))

(assert (=> bs!1542616 (= (and (= (regOne!32822 (regTwo!32823 r!7292)) (regOne!32822 r!7292)) (= (regTwo!32822 (regTwo!32823 r!7292)) (regTwo!32822 r!7292))) (= lambda!339978 lambda!339928))))

(assert (=> b!6220330 true))

(assert (=> b!6220330 true))

(declare-fun b!6220320 () Bool)

(declare-fun e!3786503 () Bool)

(assert (=> b!6220320 (= e!3786503 (matchRSpec!3256 (regTwo!32823 (regTwo!32823 r!7292)) s!2326))))

(declare-fun b!6220321 () Bool)

(declare-fun e!3786507 () Bool)

(declare-fun e!3786508 () Bool)

(assert (=> b!6220321 (= e!3786507 e!3786508)))

(declare-fun c!1123903 () Bool)

(assert (=> b!6220321 (= c!1123903 ((_ is Star!16155) (regTwo!32823 r!7292)))))

(declare-fun b!6220322 () Bool)

(declare-fun e!3786505 () Bool)

(declare-fun e!3786504 () Bool)

(assert (=> b!6220322 (= e!3786505 e!3786504)))

(declare-fun res!2571010 () Bool)

(assert (=> b!6220322 (= res!2571010 (not ((_ is EmptyLang!16155) (regTwo!32823 r!7292))))))

(assert (=> b!6220322 (=> (not res!2571010) (not e!3786504))))

(declare-fun b!6220323 () Bool)

(declare-fun c!1123902 () Bool)

(assert (=> b!6220323 (= c!1123902 ((_ is Union!16155) (regTwo!32823 r!7292)))))

(declare-fun e!3786509 () Bool)

(assert (=> b!6220323 (= e!3786509 e!3786507)))

(declare-fun e!3786506 () Bool)

(declare-fun call!522094 () Bool)

(assert (=> b!6220324 (= e!3786506 call!522094)))

(declare-fun b!6220325 () Bool)

(assert (=> b!6220325 (= e!3786507 e!3786503)))

(declare-fun res!2571009 () Bool)

(assert (=> b!6220325 (= res!2571009 (matchRSpec!3256 (regOne!32823 (regTwo!32823 r!7292)) s!2326))))

(assert (=> b!6220325 (=> res!2571009 e!3786503)))

(declare-fun b!6220326 () Bool)

(declare-fun c!1123904 () Bool)

(assert (=> b!6220326 (= c!1123904 ((_ is ElementMatch!16155) (regTwo!32823 r!7292)))))

(assert (=> b!6220326 (= e!3786504 e!3786509)))

(declare-fun bm!522089 () Bool)

(declare-fun call!522095 () Bool)

(assert (=> bm!522089 (= call!522095 (isEmpty!36649 s!2326))))

(declare-fun bm!522090 () Bool)

(assert (=> bm!522090 (= call!522094 (Exists!3225 (ite c!1123903 lambda!339975 lambda!339978)))))

(declare-fun b!6220327 () Bool)

(assert (=> b!6220327 (= e!3786505 call!522095)))

(declare-fun b!6220329 () Bool)

(assert (=> b!6220329 (= e!3786509 (= s!2326 (Cons!64640 (c!1123433 (regTwo!32823 r!7292)) Nil!64640)))))

(assert (=> b!6220330 (= e!3786508 call!522094)))

(declare-fun d!1949923 () Bool)

(declare-fun c!1123905 () Bool)

(assert (=> d!1949923 (= c!1123905 ((_ is EmptyExpr!16155) (regTwo!32823 r!7292)))))

(assert (=> d!1949923 (= (matchRSpec!3256 (regTwo!32823 r!7292) s!2326) e!3786505)))

(declare-fun b!6220328 () Bool)

(declare-fun res!2571011 () Bool)

(assert (=> b!6220328 (=> res!2571011 e!3786506)))

(assert (=> b!6220328 (= res!2571011 call!522095)))

(assert (=> b!6220328 (= e!3786508 e!3786506)))

(assert (= (and d!1949923 c!1123905) b!6220327))

(assert (= (and d!1949923 (not c!1123905)) b!6220322))

(assert (= (and b!6220322 res!2571010) b!6220326))

(assert (= (and b!6220326 c!1123904) b!6220329))

(assert (= (and b!6220326 (not c!1123904)) b!6220323))

(assert (= (and b!6220323 c!1123902) b!6220325))

(assert (= (and b!6220323 (not c!1123902)) b!6220321))

(assert (= (and b!6220325 (not res!2571009)) b!6220320))

(assert (= (and b!6220321 c!1123903) b!6220328))

(assert (= (and b!6220321 (not c!1123903)) b!6220330))

(assert (= (and b!6220328 (not res!2571011)) b!6220324))

(assert (= (or b!6220324 b!6220330) bm!522090))

(assert (= (or b!6220327 b!6220328) bm!522089))

(declare-fun m!7048404 () Bool)

(assert (=> b!6220320 m!7048404))

(declare-fun m!7048406 () Bool)

(assert (=> b!6220325 m!7048406))

(assert (=> bm!522089 m!7047524))

(declare-fun m!7048408 () Bool)

(assert (=> bm!522090 m!7048408))

(assert (=> b!6219428 d!1949923))

(declare-fun d!1949937 () Bool)

(declare-fun c!1123906 () Bool)

(assert (=> d!1949937 (= c!1123906 (isEmpty!36649 (t!378294 s!2326)))))

(declare-fun e!3786510 () Bool)

(assert (=> d!1949937 (= (matchZipper!2167 ((_ map or) lt!2344670 lt!2344674) (t!378294 s!2326)) e!3786510)))

(declare-fun b!6220331 () Bool)

(assert (=> b!6220331 (= e!3786510 (nullableZipper!1929 ((_ map or) lt!2344670 lt!2344674)))))

(declare-fun b!6220332 () Bool)

(assert (=> b!6220332 (= e!3786510 (matchZipper!2167 (derivationStepZipper!2121 ((_ map or) lt!2344670 lt!2344674) (head!12818 (t!378294 s!2326))) (tail!11903 (t!378294 s!2326))))))

(assert (= (and d!1949937 c!1123906) b!6220331))

(assert (= (and d!1949937 (not c!1123906)) b!6220332))

(assert (=> d!1949937 m!7047304))

(declare-fun m!7048410 () Bool)

(assert (=> b!6220331 m!7048410))

(assert (=> b!6220332 m!7047308))

(assert (=> b!6220332 m!7047308))

(declare-fun m!7048412 () Bool)

(assert (=> b!6220332 m!7048412))

(assert (=> b!6220332 m!7047312))

(assert (=> b!6220332 m!7048412))

(assert (=> b!6220332 m!7047312))

(declare-fun m!7048414 () Bool)

(assert (=> b!6220332 m!7048414))

(assert (=> d!1949463 d!1949937))

(assert (=> d!1949463 d!1949461))

(declare-fun e!3786515 () Bool)

(declare-fun d!1949939 () Bool)

(assert (=> d!1949939 (= (matchZipper!2167 ((_ map or) lt!2344670 lt!2344674) (t!378294 s!2326)) e!3786515)))

(declare-fun res!2571018 () Bool)

(assert (=> d!1949939 (=> res!2571018 e!3786515)))

(assert (=> d!1949939 (= res!2571018 (matchZipper!2167 lt!2344670 (t!378294 s!2326)))))

(assert (=> d!1949939 true))

(declare-fun _$48!1899 () Unit!157951)

(assert (=> d!1949939 (= (choose!46211 lt!2344670 lt!2344674 (t!378294 s!2326)) _$48!1899)))

(declare-fun b!6220339 () Bool)

(assert (=> b!6220339 (= e!3786515 (matchZipper!2167 lt!2344674 (t!378294 s!2326)))))

(assert (= (and d!1949939 (not res!2571018)) b!6220339))

(assert (=> d!1949939 m!7047366))

(assert (=> d!1949939 m!7047020))

(assert (=> b!6220339 m!7046972))

(assert (=> d!1949463 d!1949939))

(declare-fun b!6220346 () Bool)

(declare-fun res!2571024 () Bool)

(declare-fun e!3786518 () Bool)

(assert (=> b!6220346 (=> (not res!2571024) (not e!3786518))))

(declare-fun lt!2344813 () List!64764)

(assert (=> b!6220346 (= res!2571024 (= (size!40281 lt!2344813) (+ (size!40281 (++!14233 Nil!64640 (Cons!64640 (h!71088 s!2326) Nil!64640))) (size!40281 (t!378294 s!2326)))))))

(declare-fun b!6220347 () Bool)

(assert (=> b!6220347 (= e!3786518 (or (not (= (t!378294 s!2326) Nil!64640)) (= lt!2344813 (++!14233 Nil!64640 (Cons!64640 (h!71088 s!2326) Nil!64640)))))))

(declare-fun d!1949941 () Bool)

(assert (=> d!1949941 e!3786518))

(declare-fun res!2571023 () Bool)

(assert (=> d!1949941 (=> (not res!2571023) (not e!3786518))))

(assert (=> d!1949941 (= res!2571023 (= (content!12105 lt!2344813) ((_ map or) (content!12105 (++!14233 Nil!64640 (Cons!64640 (h!71088 s!2326) Nil!64640))) (content!12105 (t!378294 s!2326)))))))

(declare-fun e!3786519 () List!64764)

(assert (=> d!1949941 (= lt!2344813 e!3786519)))

(declare-fun c!1123907 () Bool)

(assert (=> d!1949941 (= c!1123907 ((_ is Nil!64640) (++!14233 Nil!64640 (Cons!64640 (h!71088 s!2326) Nil!64640))))))

(assert (=> d!1949941 (= (++!14233 (++!14233 Nil!64640 (Cons!64640 (h!71088 s!2326) Nil!64640)) (t!378294 s!2326)) lt!2344813)))

(declare-fun b!6220345 () Bool)

(assert (=> b!6220345 (= e!3786519 (Cons!64640 (h!71088 (++!14233 Nil!64640 (Cons!64640 (h!71088 s!2326) Nil!64640))) (++!14233 (t!378294 (++!14233 Nil!64640 (Cons!64640 (h!71088 s!2326) Nil!64640))) (t!378294 s!2326))))))

(declare-fun b!6220344 () Bool)

(assert (=> b!6220344 (= e!3786519 (t!378294 s!2326))))

(assert (= (and d!1949941 c!1123907) b!6220344))

(assert (= (and d!1949941 (not c!1123907)) b!6220345))

(assert (= (and d!1949941 res!2571023) b!6220346))

(assert (= (and b!6220346 res!2571024) b!6220347))

(declare-fun m!7048416 () Bool)

(assert (=> b!6220346 m!7048416))

(assert (=> b!6220346 m!7047428))

(declare-fun m!7048418 () Bool)

(assert (=> b!6220346 m!7048418))

(declare-fun m!7048420 () Bool)

(assert (=> b!6220346 m!7048420))

(declare-fun m!7048422 () Bool)

(assert (=> d!1949941 m!7048422))

(assert (=> d!1949941 m!7047428))

(declare-fun m!7048424 () Bool)

(assert (=> d!1949941 m!7048424))

(declare-fun m!7048426 () Bool)

(assert (=> d!1949941 m!7048426))

(declare-fun m!7048428 () Bool)

(assert (=> b!6220345 m!7048428))

(assert (=> b!6219333 d!1949941))

(declare-fun b!6220350 () Bool)

(declare-fun res!2571026 () Bool)

(declare-fun e!3786520 () Bool)

(assert (=> b!6220350 (=> (not res!2571026) (not e!3786520))))

(declare-fun lt!2344814 () List!64764)

(assert (=> b!6220350 (= res!2571026 (= (size!40281 lt!2344814) (+ (size!40281 Nil!64640) (size!40281 (Cons!64640 (h!71088 s!2326) Nil!64640)))))))

(declare-fun b!6220351 () Bool)

(assert (=> b!6220351 (= e!3786520 (or (not (= (Cons!64640 (h!71088 s!2326) Nil!64640) Nil!64640)) (= lt!2344814 Nil!64640)))))

(declare-fun d!1949943 () Bool)

(assert (=> d!1949943 e!3786520))

(declare-fun res!2571025 () Bool)

(assert (=> d!1949943 (=> (not res!2571025) (not e!3786520))))

(assert (=> d!1949943 (= res!2571025 (= (content!12105 lt!2344814) ((_ map or) (content!12105 Nil!64640) (content!12105 (Cons!64640 (h!71088 s!2326) Nil!64640)))))))

(declare-fun e!3786521 () List!64764)

(assert (=> d!1949943 (= lt!2344814 e!3786521)))

(declare-fun c!1123908 () Bool)

(assert (=> d!1949943 (= c!1123908 ((_ is Nil!64640) Nil!64640))))

(assert (=> d!1949943 (= (++!14233 Nil!64640 (Cons!64640 (h!71088 s!2326) Nil!64640)) lt!2344814)))

(declare-fun b!6220349 () Bool)

(assert (=> b!6220349 (= e!3786521 (Cons!64640 (h!71088 Nil!64640) (++!14233 (t!378294 Nil!64640) (Cons!64640 (h!71088 s!2326) Nil!64640))))))

(declare-fun b!6220348 () Bool)

(assert (=> b!6220348 (= e!3786521 (Cons!64640 (h!71088 s!2326) Nil!64640))))

(assert (= (and d!1949943 c!1123908) b!6220348))

(assert (= (and d!1949943 (not c!1123908)) b!6220349))

(assert (= (and d!1949943 res!2571025) b!6220350))

(assert (= (and b!6220350 res!2571026) b!6220351))

(declare-fun m!7048430 () Bool)

(assert (=> b!6220350 m!7048430))

(declare-fun m!7048432 () Bool)

(assert (=> b!6220350 m!7048432))

(declare-fun m!7048434 () Bool)

(assert (=> b!6220350 m!7048434))

(declare-fun m!7048436 () Bool)

(assert (=> d!1949943 m!7048436))

(declare-fun m!7048438 () Bool)

(assert (=> d!1949943 m!7048438))

(declare-fun m!7048440 () Bool)

(assert (=> d!1949943 m!7048440))

(declare-fun m!7048442 () Bool)

(assert (=> b!6220349 m!7048442))

(assert (=> b!6219333 d!1949943))

(declare-fun d!1949945 () Bool)

(assert (=> d!1949945 (= (++!14233 (++!14233 Nil!64640 (Cons!64640 (h!71088 s!2326) Nil!64640)) (t!378294 s!2326)) s!2326)))

(declare-fun lt!2344817 () Unit!157951)

(declare-fun choose!46222 (List!64764 C!32580 List!64764 List!64764) Unit!157951)

(assert (=> d!1949945 (= lt!2344817 (choose!46222 Nil!64640 (h!71088 s!2326) (t!378294 s!2326) s!2326))))

(assert (=> d!1949945 (= (++!14233 Nil!64640 (Cons!64640 (h!71088 s!2326) (t!378294 s!2326))) s!2326)))

(assert (=> d!1949945 (= (lemmaMoveElementToOtherListKeepsConcatEq!2328 Nil!64640 (h!71088 s!2326) (t!378294 s!2326) s!2326) lt!2344817)))

(declare-fun bs!1542625 () Bool)

(assert (= bs!1542625 d!1949945))

(assert (=> bs!1542625 m!7047428))

(assert (=> bs!1542625 m!7047428))

(assert (=> bs!1542625 m!7047430))

(declare-fun m!7048444 () Bool)

(assert (=> bs!1542625 m!7048444))

(declare-fun m!7048446 () Bool)

(assert (=> bs!1542625 m!7048446))

(assert (=> b!6219333 d!1949945))

(declare-fun b!6220352 () Bool)

(declare-fun res!2571028 () Bool)

(declare-fun e!3786523 () Bool)

(assert (=> b!6220352 (=> (not res!2571028) (not e!3786523))))

(declare-fun lt!2344819 () Option!16046)

(assert (=> b!6220352 (= res!2571028 (matchR!8338 (regTwo!32822 r!7292) (_2!36437 (get!22326 lt!2344819))))))

(declare-fun b!6220353 () Bool)

(declare-fun e!3786522 () Option!16046)

(declare-fun e!3786525 () Option!16046)

(assert (=> b!6220353 (= e!3786522 e!3786525)))

(declare-fun c!1123909 () Bool)

(assert (=> b!6220353 (= c!1123909 ((_ is Nil!64640) (t!378294 s!2326)))))

(declare-fun b!6220354 () Bool)

(assert (=> b!6220354 (= e!3786525 None!16045)))

(declare-fun b!6220355 () Bool)

(assert (=> b!6220355 (= e!3786522 (Some!16045 (tuple2!66269 (++!14233 Nil!64640 (Cons!64640 (h!71088 s!2326) Nil!64640)) (t!378294 s!2326))))))

(declare-fun d!1949947 () Bool)

(declare-fun e!3786524 () Bool)

(assert (=> d!1949947 e!3786524))

(declare-fun res!2571030 () Bool)

(assert (=> d!1949947 (=> res!2571030 e!3786524)))

(assert (=> d!1949947 (= res!2571030 e!3786523)))

(declare-fun res!2571031 () Bool)

(assert (=> d!1949947 (=> (not res!2571031) (not e!3786523))))

(assert (=> d!1949947 (= res!2571031 (isDefined!12749 lt!2344819))))

(assert (=> d!1949947 (= lt!2344819 e!3786522)))

(declare-fun c!1123910 () Bool)

(declare-fun e!3786526 () Bool)

(assert (=> d!1949947 (= c!1123910 e!3786526)))

(declare-fun res!2571029 () Bool)

(assert (=> d!1949947 (=> (not res!2571029) (not e!3786526))))

(assert (=> d!1949947 (= res!2571029 (matchR!8338 (regOne!32822 r!7292) (++!14233 Nil!64640 (Cons!64640 (h!71088 s!2326) Nil!64640))))))

(assert (=> d!1949947 (validRegex!7891 (regOne!32822 r!7292))))

(assert (=> d!1949947 (= (findConcatSeparation!2460 (regOne!32822 r!7292) (regTwo!32822 r!7292) (++!14233 Nil!64640 (Cons!64640 (h!71088 s!2326) Nil!64640)) (t!378294 s!2326) s!2326) lt!2344819)))

(declare-fun b!6220356 () Bool)

(assert (=> b!6220356 (= e!3786524 (not (isDefined!12749 lt!2344819)))))

(declare-fun b!6220357 () Bool)

(assert (=> b!6220357 (= e!3786523 (= (++!14233 (_1!36437 (get!22326 lt!2344819)) (_2!36437 (get!22326 lt!2344819))) s!2326))))

(declare-fun b!6220358 () Bool)

(declare-fun lt!2344818 () Unit!157951)

(declare-fun lt!2344820 () Unit!157951)

(assert (=> b!6220358 (= lt!2344818 lt!2344820)))

(assert (=> b!6220358 (= (++!14233 (++!14233 (++!14233 Nil!64640 (Cons!64640 (h!71088 s!2326) Nil!64640)) (Cons!64640 (h!71088 (t!378294 s!2326)) Nil!64640)) (t!378294 (t!378294 s!2326))) s!2326)))

(assert (=> b!6220358 (= lt!2344820 (lemmaMoveElementToOtherListKeepsConcatEq!2328 (++!14233 Nil!64640 (Cons!64640 (h!71088 s!2326) Nil!64640)) (h!71088 (t!378294 s!2326)) (t!378294 (t!378294 s!2326)) s!2326))))

(assert (=> b!6220358 (= e!3786525 (findConcatSeparation!2460 (regOne!32822 r!7292) (regTwo!32822 r!7292) (++!14233 (++!14233 Nil!64640 (Cons!64640 (h!71088 s!2326) Nil!64640)) (Cons!64640 (h!71088 (t!378294 s!2326)) Nil!64640)) (t!378294 (t!378294 s!2326)) s!2326))))

(declare-fun b!6220359 () Bool)

(assert (=> b!6220359 (= e!3786526 (matchR!8338 (regTwo!32822 r!7292) (t!378294 s!2326)))))

(declare-fun b!6220360 () Bool)

(declare-fun res!2571027 () Bool)

(assert (=> b!6220360 (=> (not res!2571027) (not e!3786523))))

(assert (=> b!6220360 (= res!2571027 (matchR!8338 (regOne!32822 r!7292) (_1!36437 (get!22326 lt!2344819))))))

(assert (= (and d!1949947 res!2571029) b!6220359))

(assert (= (and d!1949947 c!1123910) b!6220355))

(assert (= (and d!1949947 (not c!1123910)) b!6220353))

(assert (= (and b!6220353 c!1123909) b!6220354))

(assert (= (and b!6220353 (not c!1123909)) b!6220358))

(assert (= (and d!1949947 res!2571031) b!6220360))

(assert (= (and b!6220360 res!2571027) b!6220352))

(assert (= (and b!6220352 res!2571028) b!6220357))

(assert (= (and d!1949947 (not res!2571030)) b!6220356))

(declare-fun m!7048454 () Bool)

(assert (=> b!6220357 m!7048454))

(declare-fun m!7048456 () Bool)

(assert (=> b!6220357 m!7048456))

(assert (=> b!6220358 m!7047428))

(declare-fun m!7048460 () Bool)

(assert (=> b!6220358 m!7048460))

(assert (=> b!6220358 m!7048460))

(declare-fun m!7048462 () Bool)

(assert (=> b!6220358 m!7048462))

(assert (=> b!6220358 m!7047428))

(declare-fun m!7048468 () Bool)

(assert (=> b!6220358 m!7048468))

(assert (=> b!6220358 m!7048460))

(declare-fun m!7048474 () Bool)

(assert (=> b!6220358 m!7048474))

(declare-fun m!7048476 () Bool)

(assert (=> d!1949947 m!7048476))

(assert (=> d!1949947 m!7047428))

(declare-fun m!7048478 () Bool)

(assert (=> d!1949947 m!7048478))

(assert (=> d!1949947 m!7047440))

(assert (=> b!6220356 m!7048476))

(assert (=> b!6220352 m!7048454))

(declare-fun m!7048482 () Bool)

(assert (=> b!6220352 m!7048482))

(assert (=> b!6220360 m!7048454))

(declare-fun m!7048484 () Bool)

(assert (=> b!6220360 m!7048484))

(declare-fun m!7048486 () Bool)

(assert (=> b!6220359 m!7048486))

(assert (=> b!6219333 d!1949947))

(declare-fun bs!1542629 () Bool)

(declare-fun d!1949959 () Bool)

(assert (= bs!1542629 (and d!1949959 d!1949551)))

(declare-fun lambda!339985 () Int)

(assert (=> bs!1542629 (= lambda!339985 lambda!339936)))

(declare-fun bs!1542630 () Bool)

(assert (= bs!1542630 (and d!1949959 d!1949669)))

(assert (=> bs!1542630 (= lambda!339985 lambda!339948)))

(declare-fun bs!1542631 () Bool)

(assert (= bs!1542631 (and d!1949959 d!1949911)))

(assert (=> bs!1542631 (= lambda!339985 lambda!339971)))

(assert (=> d!1949959 (= (nullableZipper!1929 lt!2344683) (exists!2489 lt!2344683 lambda!339985))))

(declare-fun bs!1542632 () Bool)

(assert (= bs!1542632 d!1949959))

(declare-fun m!7048488 () Bool)

(assert (=> bs!1542632 m!7048488))

(assert (=> b!6219200 d!1949959))

(assert (=> b!6219367 d!1949497))

(declare-fun d!1949961 () Bool)

(assert (=> d!1949961 (= (nullable!6148 (h!71089 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343)))))))) (nullableFct!2104 (h!71089 (exprs!6039 (Context!11079 (Cons!64641 (h!71089 (exprs!6039 (h!71090 zl!343))) (t!378295 (exprs!6039 (h!71090 zl!343)))))))))))

(declare-fun bs!1542633 () Bool)

(assert (= bs!1542633 d!1949961))

(declare-fun m!7048490 () Bool)

(assert (=> bs!1542633 m!7048490))

(assert (=> b!6219362 d!1949961))

(assert (=> d!1949513 d!1949509))

(declare-fun d!1949963 () Bool)

(assert (=> d!1949963 (= (flatMap!1660 lt!2344681 lambda!339865) (dynLambda!25503 lambda!339865 lt!2344687))))

(assert (=> d!1949963 true))

(declare-fun _$13!3252 () Unit!157951)

(assert (=> d!1949963 (= (choose!46219 lt!2344681 lt!2344687 lambda!339865) _$13!3252)))

(declare-fun b_lambda!236463 () Bool)

(assert (=> (not b_lambda!236463) (not d!1949963)))

(declare-fun bs!1542636 () Bool)

(assert (= bs!1542636 d!1949963))

(assert (=> bs!1542636 m!7047036))

(assert (=> bs!1542636 m!7047508))

(assert (=> d!1949513 d!1949963))

(declare-fun d!1949965 () Bool)

(assert (=> d!1949965 (= (isEmpty!36646 (tail!11904 (unfocusZipperList!1576 zl!343))) ((_ is Nil!64641) (tail!11904 (unfocusZipperList!1576 zl!343))))))

(assert (=> b!6219186 d!1949965))

(declare-fun d!1949967 () Bool)

(assert (=> d!1949967 (= (tail!11904 (unfocusZipperList!1576 zl!343)) (t!378295 (unfocusZipperList!1576 zl!343)))))

(assert (=> b!6219186 d!1949967))

(declare-fun d!1949969 () Bool)

(assert (=> d!1949969 (= (isEmptyExpr!1565 lt!2344748) ((_ is EmptyExpr!16155) lt!2344748))))

(assert (=> b!6219305 d!1949969))

(assert (=> b!6219467 d!1949845))

(assert (=> d!1949447 d!1949691))

(declare-fun b!6220383 () Bool)

(declare-fun c!1123922 () Bool)

(declare-fun e!3786544 () Bool)

(assert (=> b!6220383 (= c!1123922 e!3786544)))

(declare-fun res!2571036 () Bool)

(assert (=> b!6220383 (=> (not res!2571036) (not e!3786544))))

(assert (=> b!6220383 (= res!2571036 ((_ is Concat!25000) (ite c!1123620 (regOne!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123619 (regTwo!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123618 (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (reg!16484 (h!71089 (exprs!6039 (h!71090 zl!343)))))))))))

(declare-fun e!3786543 () (InoxSet Context!11078))

(declare-fun e!3786542 () (InoxSet Context!11078))

(assert (=> b!6220383 (= e!3786543 e!3786542)))

(declare-fun b!6220384 () Bool)

(declare-fun c!1123920 () Bool)

(assert (=> b!6220384 (= c!1123920 ((_ is Star!16155) (ite c!1123620 (regOne!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123619 (regTwo!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123618 (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (reg!16484 (h!71089 (exprs!6039 (h!71090 zl!343)))))))))))

(declare-fun e!3786541 () (InoxSet Context!11078))

(declare-fun e!3786545 () (InoxSet Context!11078))

(assert (=> b!6220384 (= e!3786541 e!3786545)))

(declare-fun b!6220385 () Bool)

(assert (=> b!6220385 (= e!3786545 ((as const (Array Context!11078 Bool)) false))))

(declare-fun b!6220386 () Bool)

(declare-fun call!522108 () (InoxSet Context!11078))

(declare-fun call!522109 () (InoxSet Context!11078))

(assert (=> b!6220386 (= e!3786542 ((_ map or) call!522108 call!522109))))

(declare-fun b!6220387 () Bool)

(declare-fun call!522107 () (InoxSet Context!11078))

(assert (=> b!6220387 (= e!3786545 call!522107)))

(declare-fun b!6220388 () Bool)

(assert (=> b!6220388 (= e!3786542 e!3786541)))

(declare-fun c!1123921 () Bool)

(assert (=> b!6220388 (= c!1123921 ((_ is Concat!25000) (ite c!1123620 (regOne!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123619 (regTwo!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123618 (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (reg!16484 (h!71089 (exprs!6039 (h!71090 zl!343)))))))))))

(declare-fun d!1949971 () Bool)

(declare-fun c!1123924 () Bool)

(assert (=> d!1949971 (= c!1123924 (and ((_ is ElementMatch!16155) (ite c!1123620 (regOne!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123619 (regTwo!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123618 (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (reg!16484 (h!71089 (exprs!6039 (h!71090 zl!343)))))))) (= (c!1123433 (ite c!1123620 (regOne!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123619 (regTwo!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123618 (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (reg!16484 (h!71089 (exprs!6039 (h!71090 zl!343)))))))) (h!71088 s!2326))))))

(declare-fun e!3786540 () (InoxSet Context!11078))

(assert (=> d!1949971 (= (derivationStepZipperDown!1403 (ite c!1123620 (regOne!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123619 (regTwo!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123618 (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (reg!16484 (h!71089 (exprs!6039 (h!71090 zl!343))))))) (ite (or c!1123620 c!1123619) lt!2344673 (Context!11079 call!521875)) (h!71088 s!2326)) e!3786540)))

(declare-fun bm!522099 () Bool)

(assert (=> bm!522099 (= call!522107 call!522109)))

(declare-fun b!6220389 () Bool)

(assert (=> b!6220389 (= e!3786544 (nullable!6148 (regOne!32822 (ite c!1123620 (regOne!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123619 (regTwo!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123618 (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (reg!16484 (h!71089 (exprs!6039 (h!71090 zl!343))))))))))))

(declare-fun bm!522100 () Bool)

(declare-fun call!522105 () (InoxSet Context!11078))

(assert (=> bm!522100 (= call!522109 call!522105)))

(declare-fun c!1123923 () Bool)

(declare-fun call!522104 () List!64765)

(declare-fun bm!522101 () Bool)

(assert (=> bm!522101 (= call!522105 (derivationStepZipperDown!1403 (ite c!1123923 (regOne!32823 (ite c!1123620 (regOne!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123619 (regTwo!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123618 (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (reg!16484 (h!71089 (exprs!6039 (h!71090 zl!343)))))))) (ite c!1123922 (regTwo!32822 (ite c!1123620 (regOne!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123619 (regTwo!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123618 (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (reg!16484 (h!71089 (exprs!6039 (h!71090 zl!343)))))))) (ite c!1123921 (regOne!32822 (ite c!1123620 (regOne!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123619 (regTwo!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123618 (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (reg!16484 (h!71089 (exprs!6039 (h!71090 zl!343)))))))) (reg!16484 (ite c!1123620 (regOne!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123619 (regTwo!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123618 (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (reg!16484 (h!71089 (exprs!6039 (h!71090 zl!343))))))))))) (ite (or c!1123923 c!1123922) (ite (or c!1123620 c!1123619) lt!2344673 (Context!11079 call!521875)) (Context!11079 call!522104)) (h!71088 s!2326)))))

(declare-fun bm!522102 () Bool)

(declare-fun call!522106 () List!64765)

(assert (=> bm!522102 (= call!522108 (derivationStepZipperDown!1403 (ite c!1123923 (regTwo!32823 (ite c!1123620 (regOne!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123619 (regTwo!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123618 (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (reg!16484 (h!71089 (exprs!6039 (h!71090 zl!343)))))))) (regOne!32822 (ite c!1123620 (regOne!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123619 (regTwo!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123618 (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (reg!16484 (h!71089 (exprs!6039 (h!71090 zl!343))))))))) (ite c!1123923 (ite (or c!1123620 c!1123619) lt!2344673 (Context!11079 call!521875)) (Context!11079 call!522106)) (h!71088 s!2326)))))

(declare-fun b!6220390 () Bool)

(assert (=> b!6220390 (= e!3786540 e!3786543)))

(assert (=> b!6220390 (= c!1123923 ((_ is Union!16155) (ite c!1123620 (regOne!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123619 (regTwo!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123618 (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (reg!16484 (h!71089 (exprs!6039 (h!71090 zl!343)))))))))))

(declare-fun b!6220391 () Bool)

(assert (=> b!6220391 (= e!3786543 ((_ map or) call!522105 call!522108))))

(declare-fun bm!522103 () Bool)

(assert (=> bm!522103 (= call!522104 call!522106)))

(declare-fun bm!522104 () Bool)

(assert (=> bm!522104 (= call!522106 ($colon$colon!2024 (exprs!6039 (ite (or c!1123620 c!1123619) lt!2344673 (Context!11079 call!521875))) (ite (or c!1123922 c!1123921) (regTwo!32822 (ite c!1123620 (regOne!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123619 (regTwo!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123618 (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (reg!16484 (h!71089 (exprs!6039 (h!71090 zl!343)))))))) (ite c!1123620 (regOne!32823 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123619 (regTwo!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (ite c!1123618 (regOne!32822 (h!71089 (exprs!6039 (h!71090 zl!343)))) (reg!16484 (h!71089 (exprs!6039 (h!71090 zl!343))))))))))))

(declare-fun b!6220392 () Bool)

(assert (=> b!6220392 (= e!3786540 (store ((as const (Array Context!11078 Bool)) false) (ite (or c!1123620 c!1123619) lt!2344673 (Context!11079 call!521875)) true))))

(declare-fun b!6220393 () Bool)

(assert (=> b!6220393 (= e!3786541 call!522107)))

(assert (= (and d!1949971 c!1123924) b!6220392))

(assert (= (and d!1949971 (not c!1123924)) b!6220390))

(assert (= (and b!6220390 c!1123923) b!6220391))

(assert (= (and b!6220390 (not c!1123923)) b!6220383))

(assert (= (and b!6220383 res!2571036) b!6220389))

(assert (= (and b!6220383 c!1123922) b!6220386))

(assert (= (and b!6220383 (not c!1123922)) b!6220388))

(assert (= (and b!6220388 c!1123921) b!6220393))

(assert (= (and b!6220388 (not c!1123921)) b!6220384))

(assert (= (and b!6220384 c!1123920) b!6220387))

(assert (= (and b!6220384 (not c!1123920)) b!6220385))

(assert (= (or b!6220393 b!6220387) bm!522103))

(assert (= (or b!6220393 b!6220387) bm!522099))

(assert (= (or b!6220386 bm!522103) bm!522104))

(assert (= (or b!6220386 bm!522099) bm!522100))

(assert (= (or b!6220391 b!6220386) bm!522102))

(assert (= (or b!6220391 bm!522100) bm!522101))

(declare-fun m!7048492 () Bool)

(assert (=> b!6220389 m!7048492))

(declare-fun m!7048494 () Bool)

(assert (=> bm!522101 m!7048494))

(declare-fun m!7048496 () Bool)

(assert (=> bm!522104 m!7048496))

(declare-fun m!7048498 () Bool)

(assert (=> b!6220392 m!7048498))

(declare-fun m!7048500 () Bool)

(assert (=> bm!522102 m!7048500))

(assert (=> bm!521872 d!1949971))

(declare-fun d!1949973 () Bool)

(declare-fun c!1123925 () Bool)

(assert (=> d!1949973 (= c!1123925 (isEmpty!36649 (tail!11903 (t!378294 s!2326))))))

(declare-fun e!3786546 () Bool)

(assert (=> d!1949973 (= (matchZipper!2167 (derivationStepZipper!2121 lt!2344670 (head!12818 (t!378294 s!2326))) (tail!11903 (t!378294 s!2326))) e!3786546)))

(declare-fun b!6220394 () Bool)

(assert (=> b!6220394 (= e!3786546 (nullableZipper!1929 (derivationStepZipper!2121 lt!2344670 (head!12818 (t!378294 s!2326)))))))

(declare-fun b!6220395 () Bool)

(assert (=> b!6220395 (= e!3786546 (matchZipper!2167 (derivationStepZipper!2121 (derivationStepZipper!2121 lt!2344670 (head!12818 (t!378294 s!2326))) (head!12818 (tail!11903 (t!378294 s!2326)))) (tail!11903 (tail!11903 (t!378294 s!2326)))))))

(assert (= (and d!1949973 c!1123925) b!6220394))

(assert (= (and d!1949973 (not c!1123925)) b!6220395))

(assert (=> d!1949973 m!7047312))

(assert (=> d!1949973 m!7047742))

(assert (=> b!6220394 m!7047362))

(declare-fun m!7048502 () Bool)

(assert (=> b!6220394 m!7048502))

(assert (=> b!6220395 m!7047312))

(assert (=> b!6220395 m!7047746))

(assert (=> b!6220395 m!7047362))

(assert (=> b!6220395 m!7047746))

(declare-fun m!7048504 () Bool)

(assert (=> b!6220395 m!7048504))

(assert (=> b!6220395 m!7047312))

(assert (=> b!6220395 m!7047750))

(assert (=> b!6220395 m!7048504))

(assert (=> b!6220395 m!7047750))

(declare-fun m!7048506 () Bool)

(assert (=> b!6220395 m!7048506))

(assert (=> b!6219203 d!1949973))

(declare-fun bs!1542654 () Bool)

(declare-fun d!1949975 () Bool)

(assert (= bs!1542654 (and d!1949975 d!1949515)))

(declare-fun lambda!339988 () Int)

(assert (=> bs!1542654 (= (= (head!12818 (t!378294 s!2326)) (h!71088 s!2326)) (= lambda!339988 lambda!339922))))

(declare-fun bs!1542655 () Bool)

(assert (= bs!1542655 (and d!1949975 d!1949887)))

(assert (=> bs!1542655 (= lambda!339988 lambda!339968)))

(declare-fun bs!1542656 () Bool)

(assert (= bs!1542656 (and d!1949975 b!6218742)))

(assert (=> bs!1542656 (= (= (head!12818 (t!378294 s!2326)) (h!71088 s!2326)) (= lambda!339988 lambda!339865))))

(declare-fun bs!1542657 () Bool)

(assert (= bs!1542657 (and d!1949975 d!1949633)))

(assert (=> bs!1542657 (= lambda!339988 lambda!339941)))

(declare-fun bs!1542658 () Bool)

(assert (= bs!1542658 (and d!1949975 d!1949811)))

(assert (=> bs!1542658 (= lambda!339988 lambda!339961)))

(declare-fun bs!1542659 () Bool)

(assert (= bs!1542659 (and d!1949975 d!1949891)))

(assert (=> bs!1542659 (= lambda!339988 lambda!339969)))

(declare-fun bs!1542660 () Bool)

(assert (= bs!1542660 (and d!1949975 d!1949841)))

(assert (=> bs!1542660 (= lambda!339988 lambda!339964)))

(assert (=> d!1949975 true))

(assert (=> d!1949975 (= (derivationStepZipper!2121 lt!2344670 (head!12818 (t!378294 s!2326))) (flatMap!1660 lt!2344670 lambda!339988))))

(declare-fun bs!1542661 () Bool)

(assert (= bs!1542661 d!1949975))

(declare-fun m!7048514 () Bool)

(assert (=> bs!1542661 m!7048514))

(assert (=> b!6219203 d!1949975))

(assert (=> b!6219203 d!1949635))

(assert (=> b!6219203 d!1949637))

(declare-fun d!1949979 () Bool)

(declare-fun res!2571046 () Bool)

(declare-fun e!3786561 () Bool)

(assert (=> d!1949979 (=> res!2571046 e!3786561)))

(assert (=> d!1949979 (= res!2571046 ((_ is Nil!64642) lt!2344745))))

(assert (=> d!1949979 (= (noDuplicate!1993 lt!2344745) e!3786561)))

(declare-fun b!6220415 () Bool)

(declare-fun e!3786562 () Bool)

(assert (=> b!6220415 (= e!3786561 e!3786562)))

(declare-fun res!2571047 () Bool)

(assert (=> b!6220415 (=> (not res!2571047) (not e!3786562))))

(declare-fun contains!20096 (List!64766 Context!11078) Bool)

(assert (=> b!6220415 (= res!2571047 (not (contains!20096 (t!378296 lt!2344745) (h!71090 lt!2344745))))))

(declare-fun b!6220416 () Bool)

(assert (=> b!6220416 (= e!3786562 (noDuplicate!1993 (t!378296 lt!2344745)))))

(assert (= (and d!1949979 (not res!2571046)) b!6220415))

(assert (= (and b!6220415 res!2571047) b!6220416))

(declare-fun m!7048532 () Bool)

(assert (=> b!6220415 m!7048532))

(declare-fun m!7048534 () Bool)

(assert (=> b!6220416 m!7048534))

(assert (=> d!1949471 d!1949979))

(declare-fun d!1949987 () Bool)

(declare-fun e!3786574 () Bool)

(assert (=> d!1949987 e!3786574))

(declare-fun res!2571053 () Bool)

(assert (=> d!1949987 (=> (not res!2571053) (not e!3786574))))

(declare-fun res!2571054 () List!64766)

(assert (=> d!1949987 (= res!2571053 (noDuplicate!1993 res!2571054))))

(declare-fun e!3786573 () Bool)

(assert (=> d!1949987 e!3786573))

(assert (=> d!1949987 (= (choose!46214 z!1189) res!2571054)))

(declare-fun b!6220431 () Bool)

(declare-fun e!3786575 () Bool)

(declare-fun tp!1735086 () Bool)

(assert (=> b!6220431 (= e!3786575 tp!1735086)))

(declare-fun tp!1735085 () Bool)

(declare-fun b!6220430 () Bool)

(assert (=> b!6220430 (= e!3786573 (and (inv!83634 (h!71090 res!2571054)) e!3786575 tp!1735085))))

(declare-fun b!6220432 () Bool)

(assert (=> b!6220432 (= e!3786574 (= (content!12104 res!2571054) z!1189))))

(assert (= b!6220430 b!6220431))

(assert (= (and d!1949987 ((_ is Cons!64642) res!2571054)) b!6220430))

(assert (= (and d!1949987 res!2571053) b!6220432))

(declare-fun m!7048550 () Bool)

(assert (=> d!1949987 m!7048550))

(declare-fun m!7048552 () Bool)

(assert (=> b!6220430 m!7048552))

(declare-fun m!7048554 () Bool)

(assert (=> b!6220432 m!7048554))

(assert (=> d!1949471 d!1949987))

(declare-fun d!1949993 () Bool)

(assert (=> d!1949993 (= (nullable!6148 (regOne!32822 (regOne!32822 (regOne!32822 r!7292)))) (nullableFct!2104 (regOne!32822 (regOne!32822 (regOne!32822 r!7292)))))))

(declare-fun bs!1542670 () Bool)

(assert (= bs!1542670 d!1949993))

(declare-fun m!7048556 () Bool)

(assert (=> bs!1542670 m!7048556))

(assert (=> b!6219244 d!1949993))

(declare-fun d!1949995 () Bool)

(assert (=> d!1949995 (= (nullable!6148 (h!71089 (exprs!6039 lt!2344687))) (nullableFct!2104 (h!71089 (exprs!6039 lt!2344687))))))

(declare-fun bs!1542671 () Bool)

(assert (= bs!1542671 d!1949995))

(declare-fun m!7048558 () Bool)

(assert (=> bs!1542671 m!7048558))

(assert (=> b!6219388 d!1949995))

(declare-fun bs!1542672 () Bool)

(declare-fun b!6220439 () Bool)

(assert (= bs!1542672 (and b!6220439 b!6218730)))

(declare-fun lambda!339990 () Int)

(assert (=> bs!1542672 (not (= lambda!339990 lambda!339863))))

(declare-fun bs!1542673 () Bool)

(assert (= bs!1542673 (and b!6220439 d!1949487)))

(assert (=> bs!1542673 (not (= lambda!339990 lambda!339913))))

(declare-fun bs!1542674 () Bool)

(assert (= bs!1542674 (and b!6220439 b!6219432)))

(assert (=> bs!1542674 (= (and (= (reg!16484 (regOne!32823 r!7292)) (reg!16484 r!7292)) (= (regOne!32823 r!7292) r!7292)) (= lambda!339990 lambda!339927))))

(declare-fun bs!1542675 () Bool)

(assert (= bs!1542675 (and b!6220439 d!1949653)))

(assert (=> bs!1542675 (not (= lambda!339990 lambda!339946))))

(declare-fun bs!1542676 () Bool)

(assert (= bs!1542676 (and b!6220439 b!6220324)))

(assert (=> bs!1542676 (= (and (= (reg!16484 (regOne!32823 r!7292)) (reg!16484 (regTwo!32823 r!7292))) (= (regOne!32823 r!7292) (regTwo!32823 r!7292))) (= lambda!339990 lambda!339975))))

(assert (=> bs!1542675 (not (= lambda!339990 lambda!339947))))

(declare-fun bs!1542677 () Bool)

(assert (= bs!1542677 (and b!6220439 d!1949571)))

(assert (=> bs!1542677 (not (= lambda!339990 lambda!339939))))

(declare-fun bs!1542678 () Bool)

(assert (= bs!1542678 (and b!6220439 b!6220330)))

(assert (=> bs!1542678 (not (= lambda!339990 lambda!339978))))

(declare-fun bs!1542679 () Bool)

(assert (= bs!1542679 (and b!6220439 d!1949489)))

(assert (=> bs!1542679 (not (= lambda!339990 lambda!339919))))

(assert (=> bs!1542672 (not (= lambda!339990 lambda!339864))))

(assert (=> bs!1542679 (not (= lambda!339990 lambda!339918))))

(declare-fun bs!1542680 () Bool)

(assert (= bs!1542680 (and b!6220439 b!6219438)))

(assert (=> bs!1542680 (not (= lambda!339990 lambda!339928))))

(assert (=> b!6220439 true))

(assert (=> b!6220439 true))

(declare-fun bs!1542681 () Bool)

(declare-fun b!6220445 () Bool)

(assert (= bs!1542681 (and b!6220445 b!6218730)))

(declare-fun lambda!339991 () Int)

(assert (=> bs!1542681 (not (= lambda!339991 lambda!339863))))

(declare-fun bs!1542682 () Bool)

(assert (= bs!1542682 (and b!6220445 d!1949487)))

(assert (=> bs!1542682 (not (= lambda!339991 lambda!339913))))

(declare-fun bs!1542683 () Bool)

(assert (= bs!1542683 (and b!6220445 b!6219432)))

(assert (=> bs!1542683 (not (= lambda!339991 lambda!339927))))

(declare-fun bs!1542684 () Bool)

(assert (= bs!1542684 (and b!6220445 d!1949653)))

(assert (=> bs!1542684 (not (= lambda!339991 lambda!339946))))

(assert (=> bs!1542684 (= (and (= (regOne!32822 (regOne!32823 r!7292)) (regOne!32822 r!7292)) (= (regTwo!32822 (regOne!32823 r!7292)) (regTwo!32822 r!7292))) (= lambda!339991 lambda!339947))))

(declare-fun bs!1542685 () Bool)

(assert (= bs!1542685 (and b!6220445 d!1949571)))

(assert (=> bs!1542685 (not (= lambda!339991 lambda!339939))))

(declare-fun bs!1542686 () Bool)

(assert (= bs!1542686 (and b!6220445 b!6220330)))

(assert (=> bs!1542686 (= (and (= (regOne!32822 (regOne!32823 r!7292)) (regOne!32822 (regTwo!32823 r!7292))) (= (regTwo!32822 (regOne!32823 r!7292)) (regTwo!32822 (regTwo!32823 r!7292)))) (= lambda!339991 lambda!339978))))

(declare-fun bs!1542687 () Bool)

(assert (= bs!1542687 (and b!6220445 b!6220324)))

(assert (=> bs!1542687 (not (= lambda!339991 lambda!339975))))

(declare-fun bs!1542688 () Bool)

(assert (= bs!1542688 (and b!6220445 b!6220439)))

(assert (=> bs!1542688 (not (= lambda!339991 lambda!339990))))

(declare-fun bs!1542689 () Bool)

(assert (= bs!1542689 (and b!6220445 d!1949489)))

(assert (=> bs!1542689 (= (and (= (regOne!32822 (regOne!32823 r!7292)) (regOne!32822 r!7292)) (= (regTwo!32822 (regOne!32823 r!7292)) (regTwo!32822 r!7292))) (= lambda!339991 lambda!339919))))

(assert (=> bs!1542681 (= (and (= (regOne!32822 (regOne!32823 r!7292)) (regOne!32822 r!7292)) (= (regTwo!32822 (regOne!32823 r!7292)) (regTwo!32822 r!7292))) (= lambda!339991 lambda!339864))))

(assert (=> bs!1542689 (not (= lambda!339991 lambda!339918))))

(declare-fun bs!1542690 () Bool)

(assert (= bs!1542690 (and b!6220445 b!6219438)))

(assert (=> bs!1542690 (= (and (= (regOne!32822 (regOne!32823 r!7292)) (regOne!32822 r!7292)) (= (regTwo!32822 (regOne!32823 r!7292)) (regTwo!32822 r!7292))) (= lambda!339991 lambda!339928))))

(assert (=> b!6220445 true))

(assert (=> b!6220445 true))

(declare-fun b!6220435 () Bool)

(declare-fun e!3786577 () Bool)

(assert (=> b!6220435 (= e!3786577 (matchRSpec!3256 (regTwo!32823 (regOne!32823 r!7292)) s!2326))))

(declare-fun b!6220436 () Bool)

(declare-fun e!3786581 () Bool)

(declare-fun e!3786583 () Bool)

(assert (=> b!6220436 (= e!3786581 e!3786583)))

(declare-fun c!1123935 () Bool)

(assert (=> b!6220436 (= c!1123935 ((_ is Star!16155) (regOne!32823 r!7292)))))

(declare-fun b!6220437 () Bool)

(declare-fun e!3786579 () Bool)

(declare-fun e!3786578 () Bool)

(assert (=> b!6220437 (= e!3786579 e!3786578)))

(declare-fun res!2571056 () Bool)

(assert (=> b!6220437 (= res!2571056 (not ((_ is EmptyLang!16155) (regOne!32823 r!7292))))))

(assert (=> b!6220437 (=> (not res!2571056) (not e!3786578))))

(declare-fun b!6220438 () Bool)

(declare-fun c!1123934 () Bool)

(assert (=> b!6220438 (= c!1123934 ((_ is Union!16155) (regOne!32823 r!7292)))))

(declare-fun e!3786584 () Bool)

(assert (=> b!6220438 (= e!3786584 e!3786581)))

(declare-fun e!3786580 () Bool)

(declare-fun call!522117 () Bool)

(assert (=> b!6220439 (= e!3786580 call!522117)))

(declare-fun b!6220440 () Bool)

(assert (=> b!6220440 (= e!3786581 e!3786577)))

(declare-fun res!2571055 () Bool)

(assert (=> b!6220440 (= res!2571055 (matchRSpec!3256 (regOne!32823 (regOne!32823 r!7292)) s!2326))))

(assert (=> b!6220440 (=> res!2571055 e!3786577)))

(declare-fun b!6220441 () Bool)

(declare-fun c!1123936 () Bool)

(assert (=> b!6220441 (= c!1123936 ((_ is ElementMatch!16155) (regOne!32823 r!7292)))))

(assert (=> b!6220441 (= e!3786578 e!3786584)))

(declare-fun bm!522112 () Bool)

(declare-fun call!522118 () Bool)

(assert (=> bm!522112 (= call!522118 (isEmpty!36649 s!2326))))

(declare-fun bm!522113 () Bool)

(assert (=> bm!522113 (= call!522117 (Exists!3225 (ite c!1123935 lambda!339990 lambda!339991)))))

(declare-fun b!6220442 () Bool)

(assert (=> b!6220442 (= e!3786579 call!522118)))

(declare-fun b!6220444 () Bool)

(assert (=> b!6220444 (= e!3786584 (= s!2326 (Cons!64640 (c!1123433 (regOne!32823 r!7292)) Nil!64640)))))

(assert (=> b!6220445 (= e!3786583 call!522117)))

(declare-fun d!1949997 () Bool)

(declare-fun c!1123937 () Bool)

(assert (=> d!1949997 (= c!1123937 ((_ is EmptyExpr!16155) (regOne!32823 r!7292)))))

(assert (=> d!1949997 (= (matchRSpec!3256 (regOne!32823 r!7292) s!2326) e!3786579)))

(declare-fun b!6220443 () Bool)

(declare-fun res!2571057 () Bool)

(assert (=> b!6220443 (=> res!2571057 e!3786580)))

(assert (=> b!6220443 (= res!2571057 call!522118)))

(assert (=> b!6220443 (= e!3786583 e!3786580)))

(assert (= (and d!1949997 c!1123937) b!6220442))

(assert (= (and d!1949997 (not c!1123937)) b!6220437))

(assert (= (and b!6220437 res!2571056) b!6220441))

(assert (= (and b!6220441 c!1123936) b!6220444))

(assert (= (and b!6220441 (not c!1123936)) b!6220438))

(assert (= (and b!6220438 c!1123934) b!6220440))

(assert (= (and b!6220438 (not c!1123934)) b!6220436))

(assert (= (and b!6220440 (not res!2571055)) b!6220435))

(assert (= (and b!6220436 c!1123935) b!6220443))

(assert (= (and b!6220436 (not c!1123935)) b!6220445))

(assert (= (and b!6220443 (not res!2571057)) b!6220439))

(assert (= (or b!6220439 b!6220445) bm!522113))

(assert (= (or b!6220442 b!6220443) bm!522112))

(declare-fun m!7048562 () Bool)

(assert (=> b!6220435 m!7048562))

(declare-fun m!7048564 () Bool)

(assert (=> b!6220440 m!7048564))

(assert (=> bm!522112 m!7047524))

(declare-fun m!7048566 () Bool)

(assert (=> bm!522113 m!7048566))

(assert (=> b!6219433 d!1949997))

(declare-fun b!6220555 () Bool)

(declare-fun e!3786617 () Bool)

(declare-fun e!3786616 () Bool)

(assert (=> b!6220555 (= e!3786617 e!3786616)))

(declare-fun res!2571062 () Bool)

(assert (=> b!6220555 (=> (not res!2571062) (not e!3786616))))

(declare-fun call!522119 () Bool)

(assert (=> b!6220555 (= res!2571062 call!522119)))

(declare-fun b!6220556 () Bool)

(declare-fun e!3786621 () Bool)

(declare-fun call!522120 () Bool)

(assert (=> b!6220556 (= e!3786621 call!522120)))

(declare-fun b!6220557 () Bool)

(declare-fun res!2571060 () Bool)

(assert (=> b!6220557 (=> res!2571060 e!3786617)))

(assert (=> b!6220557 (= res!2571060 (not ((_ is Concat!25000) (ite c!1123589 (regTwo!32823 r!7292) (regTwo!32822 r!7292)))))))

(declare-fun e!3786622 () Bool)

(assert (=> b!6220557 (= e!3786622 e!3786617)))

(declare-fun b!6220558 () Bool)

(declare-fun e!3786618 () Bool)

(declare-fun e!3786619 () Bool)

(assert (=> b!6220558 (= e!3786618 e!3786619)))

(declare-fun res!2571061 () Bool)

(assert (=> b!6220558 (= res!2571061 (not (nullable!6148 (reg!16484 (ite c!1123589 (regTwo!32823 r!7292) (regTwo!32822 r!7292))))))))

(assert (=> b!6220558 (=> (not res!2571061) (not e!3786619))))

(declare-fun d!1949999 () Bool)

(declare-fun res!2571058 () Bool)

(declare-fun e!3786620 () Bool)

(assert (=> d!1949999 (=> res!2571058 e!3786620)))

(assert (=> d!1949999 (= res!2571058 ((_ is ElementMatch!16155) (ite c!1123589 (regTwo!32823 r!7292) (regTwo!32822 r!7292))))))

(assert (=> d!1949999 (= (validRegex!7891 (ite c!1123589 (regTwo!32823 r!7292) (regTwo!32822 r!7292))) e!3786620)))

(declare-fun bm!522114 () Bool)

(declare-fun c!1123938 () Bool)

(assert (=> bm!522114 (= call!522120 (validRegex!7891 (ite c!1123938 (regTwo!32823 (ite c!1123589 (regTwo!32823 r!7292) (regTwo!32822 r!7292))) (regTwo!32822 (ite c!1123589 (regTwo!32823 r!7292) (regTwo!32822 r!7292))))))))

(declare-fun bm!522115 () Bool)

(declare-fun call!522121 () Bool)

(assert (=> bm!522115 (= call!522119 call!522121)))

(declare-fun b!6220559 () Bool)

(assert (=> b!6220559 (= e!3786618 e!3786622)))

(assert (=> b!6220559 (= c!1123938 ((_ is Union!16155) (ite c!1123589 (regTwo!32823 r!7292) (regTwo!32822 r!7292))))))

(declare-fun b!6220560 () Bool)

(assert (=> b!6220560 (= e!3786616 call!522120)))

(declare-fun b!6220561 () Bool)

(assert (=> b!6220561 (= e!3786619 call!522121)))

(declare-fun c!1123939 () Bool)

(declare-fun bm!522116 () Bool)

(assert (=> bm!522116 (= call!522121 (validRegex!7891 (ite c!1123939 (reg!16484 (ite c!1123589 (regTwo!32823 r!7292) (regTwo!32822 r!7292))) (ite c!1123938 (regOne!32823 (ite c!1123589 (regTwo!32823 r!7292) (regTwo!32822 r!7292))) (regOne!32822 (ite c!1123589 (regTwo!32823 r!7292) (regTwo!32822 r!7292)))))))))

(declare-fun b!6220562 () Bool)

(declare-fun res!2571059 () Bool)

(assert (=> b!6220562 (=> (not res!2571059) (not e!3786621))))

(assert (=> b!6220562 (= res!2571059 call!522119)))

(assert (=> b!6220562 (= e!3786622 e!3786621)))

(declare-fun b!6220563 () Bool)

(assert (=> b!6220563 (= e!3786620 e!3786618)))

(assert (=> b!6220563 (= c!1123939 ((_ is Star!16155) (ite c!1123589 (regTwo!32823 r!7292) (regTwo!32822 r!7292))))))

(assert (= (and d!1949999 (not res!2571058)) b!6220563))

(assert (= (and b!6220563 c!1123939) b!6220558))

(assert (= (and b!6220563 (not c!1123939)) b!6220559))

(assert (= (and b!6220558 res!2571061) b!6220561))

(assert (= (and b!6220559 c!1123938) b!6220562))

(assert (= (and b!6220559 (not c!1123938)) b!6220557))

(assert (= (and b!6220562 res!2571059) b!6220556))

(assert (= (and b!6220557 (not res!2571060)) b!6220555))

(assert (= (and b!6220555 res!2571062) b!6220560))

(assert (= (or b!6220556 b!6220560) bm!522114))

(assert (= (or b!6220562 b!6220555) bm!522115))

(assert (= (or b!6220561 bm!522115) bm!522116))

(declare-fun m!7048570 () Bool)

(assert (=> b!6220558 m!7048570))

(declare-fun m!7048572 () Bool)

(assert (=> bm!522114 m!7048572))

(declare-fun m!7048574 () Bool)

(assert (=> bm!522116 m!7048574))

(assert (=> bm!521863 d!1949999))

(declare-fun call!522122 () (InoxSet Context!11078))

(declare-fun b!6220569 () Bool)

(declare-fun e!3786626 () (InoxSet Context!11078))

(assert (=> b!6220569 (= e!3786626 ((_ map or) call!522122 (derivationStepZipperUp!1329 (Context!11079 (t!378295 (exprs!6039 (Context!11079 (t!378295 (exprs!6039 lt!2344673)))))) (h!71088 s!2326))))))

(declare-fun b!6220570 () Bool)

(declare-fun e!3786625 () (InoxSet Context!11078))

(assert (=> b!6220570 (= e!3786625 ((as const (Array Context!11078 Bool)) false))))

(declare-fun b!6220571 () Bool)

(assert (=> b!6220571 (= e!3786625 call!522122)))

(declare-fun bm!522117 () Bool)

(assert (=> bm!522117 (= call!522122 (derivationStepZipperDown!1403 (h!71089 (exprs!6039 (Context!11079 (t!378295 (exprs!6039 lt!2344673))))) (Context!11079 (t!378295 (exprs!6039 (Context!11079 (t!378295 (exprs!6039 lt!2344673)))))) (h!71088 s!2326)))))

(declare-fun b!6220572 () Bool)

(assert (=> b!6220572 (= e!3786626 e!3786625)))

(declare-fun c!1123940 () Bool)

(assert (=> b!6220572 (= c!1123940 ((_ is Cons!64641) (exprs!6039 (Context!11079 (t!378295 (exprs!6039 lt!2344673))))))))

(declare-fun d!1950003 () Bool)

(declare-fun c!1123941 () Bool)

(declare-fun e!3786627 () Bool)

(assert (=> d!1950003 (= c!1123941 e!3786627)))

(declare-fun res!2571063 () Bool)

(assert (=> d!1950003 (=> (not res!2571063) (not e!3786627))))

(assert (=> d!1950003 (= res!2571063 ((_ is Cons!64641) (exprs!6039 (Context!11079 (t!378295 (exprs!6039 lt!2344673))))))))

(assert (=> d!1950003 (= (derivationStepZipperUp!1329 (Context!11079 (t!378295 (exprs!6039 lt!2344673))) (h!71088 s!2326)) e!3786626)))

(declare-fun b!6220573 () Bool)

(assert (=> b!6220573 (= e!3786627 (nullable!6148 (h!71089 (exprs!6039 (Context!11079 (t!378295 (exprs!6039 lt!2344673)))))))))

(assert (= (and d!1950003 res!2571063) b!6220573))

(assert (= (and d!1950003 c!1123941) b!6220569))

(assert (= (and d!1950003 (not c!1123941)) b!6220572))

(assert (= (and b!6220572 c!1123940) b!6220571))

(assert (= (and b!6220572 (not c!1123940)) b!6220570))

(assert (= (or b!6220569 b!6220571) bm!522117))

(declare-fun m!7048586 () Bool)

(assert (=> b!6220569 m!7048586))

(declare-fun m!7048588 () Bool)

(assert (=> bm!522117 m!7048588))

(declare-fun m!7048590 () Bool)

(assert (=> b!6220573 m!7048590))

(assert (=> b!6219379 d!1950003))

(declare-fun b!6220574 () Bool)

(declare-fun e!3786629 () Bool)

(declare-fun e!3786628 () Bool)

(assert (=> b!6220574 (= e!3786629 e!3786628)))

(declare-fun res!2571068 () Bool)

(assert (=> b!6220574 (=> (not res!2571068) (not e!3786628))))

(declare-fun call!522123 () Bool)

(assert (=> b!6220574 (= res!2571068 call!522123)))

(declare-fun b!6220575 () Bool)

(declare-fun e!3786633 () Bool)

(declare-fun call!522124 () Bool)

(assert (=> b!6220575 (= e!3786633 call!522124)))

(declare-fun b!6220576 () Bool)

(declare-fun res!2571066 () Bool)

(assert (=> b!6220576 (=> res!2571066 e!3786629)))

(assert (=> b!6220576 (= res!2571066 (not ((_ is Concat!25000) lt!2344769)))))

(declare-fun e!3786634 () Bool)

(assert (=> b!6220576 (= e!3786634 e!3786629)))

(declare-fun b!6220577 () Bool)

(declare-fun e!3786630 () Bool)

(declare-fun e!3786631 () Bool)

(assert (=> b!6220577 (= e!3786630 e!3786631)))

(declare-fun res!2571067 () Bool)

(assert (=> b!6220577 (= res!2571067 (not (nullable!6148 (reg!16484 lt!2344769))))))

(assert (=> b!6220577 (=> (not res!2571067) (not e!3786631))))

(declare-fun d!1950015 () Bool)

(declare-fun res!2571064 () Bool)

(declare-fun e!3786632 () Bool)

(assert (=> d!1950015 (=> res!2571064 e!3786632)))

(assert (=> d!1950015 (= res!2571064 ((_ is ElementMatch!16155) lt!2344769))))

(assert (=> d!1950015 (= (validRegex!7891 lt!2344769) e!3786632)))

(declare-fun bm!522118 () Bool)

(declare-fun c!1123942 () Bool)

(assert (=> bm!522118 (= call!522124 (validRegex!7891 (ite c!1123942 (regTwo!32823 lt!2344769) (regTwo!32822 lt!2344769))))))

(declare-fun bm!522119 () Bool)

(declare-fun call!522125 () Bool)

(assert (=> bm!522119 (= call!522123 call!522125)))

(declare-fun b!6220578 () Bool)

(assert (=> b!6220578 (= e!3786630 e!3786634)))

(assert (=> b!6220578 (= c!1123942 ((_ is Union!16155) lt!2344769))))

(declare-fun b!6220579 () Bool)

(assert (=> b!6220579 (= e!3786628 call!522124)))

(declare-fun b!6220580 () Bool)

(assert (=> b!6220580 (= e!3786631 call!522125)))

(declare-fun bm!522120 () Bool)

(declare-fun c!1123943 () Bool)

(assert (=> bm!522120 (= call!522125 (validRegex!7891 (ite c!1123943 (reg!16484 lt!2344769) (ite c!1123942 (regOne!32823 lt!2344769) (regOne!32822 lt!2344769)))))))

(declare-fun b!6220581 () Bool)

(declare-fun res!2571065 () Bool)

(assert (=> b!6220581 (=> (not res!2571065) (not e!3786633))))

(assert (=> b!6220581 (= res!2571065 call!522123)))

(assert (=> b!6220581 (= e!3786634 e!3786633)))

(declare-fun b!6220582 () Bool)

(assert (=> b!6220582 (= e!3786632 e!3786630)))

(assert (=> b!6220582 (= c!1123943 ((_ is Star!16155) lt!2344769))))

(assert (= (and d!1950015 (not res!2571064)) b!6220582))

(assert (= (and b!6220582 c!1123943) b!6220577))

(assert (= (and b!6220582 (not c!1123943)) b!6220578))

(assert (= (and b!6220577 res!2571067) b!6220580))

(assert (= (and b!6220578 c!1123942) b!6220581))

(assert (= (and b!6220578 (not c!1123942)) b!6220576))

(assert (= (and b!6220581 res!2571065) b!6220575))

(assert (= (and b!6220576 (not res!2571066)) b!6220574))

(assert (= (and b!6220574 res!2571068) b!6220579))

(assert (= (or b!6220575 b!6220579) bm!522118))

(assert (= (or b!6220581 b!6220574) bm!522119))

(assert (= (or b!6220580 bm!522119) bm!522120))

(declare-fun m!7048592 () Bool)

(assert (=> b!6220577 m!7048592))

(declare-fun m!7048594 () Bool)

(assert (=> bm!522118 m!7048594))

(declare-fun m!7048596 () Bool)

(assert (=> bm!522120 m!7048596))

(assert (=> d!1949507 d!1950015))

(assert (=> d!1949507 d!1949451))

(assert (=> d!1949507 d!1949453))

(assert (=> d!1949445 d!1949449))

(assert (=> d!1949445 d!1949447))

(declare-fun e!3786635 () Bool)

(declare-fun d!1950017 () Bool)

(assert (=> d!1950017 (= (matchZipper!2167 ((_ map or) lt!2344671 lt!2344678) (t!378294 s!2326)) e!3786635)))

(declare-fun res!2571069 () Bool)

(assert (=> d!1950017 (=> res!2571069 e!3786635)))

(assert (=> d!1950017 (= res!2571069 (matchZipper!2167 lt!2344671 (t!378294 s!2326)))))

(assert (=> d!1950017 true))

(declare-fun _$48!1900 () Unit!157951)

(assert (=> d!1950017 (= (choose!46211 lt!2344671 lt!2344678 (t!378294 s!2326)) _$48!1900)))

(declare-fun b!6220583 () Bool)

(assert (=> b!6220583 (= e!3786635 (matchZipper!2167 lt!2344678 (t!378294 s!2326)))))

(assert (= (and d!1950017 (not res!2571069)) b!6220583))

(assert (=> d!1950017 m!7047026))

(assert (=> d!1950017 m!7047016))

(assert (=> b!6220583 m!7047042))

(assert (=> d!1949445 d!1950017))

(assert (=> b!6219153 d!1949527))

(assert (=> d!1949461 d!1949691))

(declare-fun d!1950019 () Bool)

(declare-fun res!2571070 () Bool)

(declare-fun e!3786636 () Bool)

(assert (=> d!1950019 (=> res!2571070 e!3786636)))

(assert (=> d!1950019 (= res!2571070 ((_ is Nil!64641) (exprs!6039 (h!71090 zl!343))))))

(assert (=> d!1950019 (= (forall!15269 (exprs!6039 (h!71090 zl!343)) lambda!339907) e!3786636)))

(declare-fun b!6220584 () Bool)

(declare-fun e!3786637 () Bool)

(assert (=> b!6220584 (= e!3786636 e!3786637)))

(declare-fun res!2571071 () Bool)

(assert (=> b!6220584 (=> (not res!2571071) (not e!3786637))))

(assert (=> b!6220584 (= res!2571071 (dynLambda!25504 lambda!339907 (h!71089 (exprs!6039 (h!71090 zl!343)))))))

(declare-fun b!6220585 () Bool)

(assert (=> b!6220585 (= e!3786637 (forall!15269 (t!378295 (exprs!6039 (h!71090 zl!343))) lambda!339907))))

(assert (= (and d!1950019 (not res!2571070)) b!6220584))

(assert (= (and b!6220584 res!2571071) b!6220585))

(declare-fun b_lambda!236485 () Bool)

(assert (=> (not b_lambda!236485) (not b!6220584)))

(declare-fun m!7048598 () Bool)

(assert (=> b!6220584 m!7048598))

(declare-fun m!7048600 () Bool)

(assert (=> b!6220585 m!7048600))

(assert (=> d!1949475 d!1950019))

(declare-fun bs!1542697 () Bool)

(declare-fun d!1950021 () Bool)

(assert (= bs!1542697 (and d!1950021 d!1949551)))

(declare-fun lambda!339992 () Int)

(assert (=> bs!1542697 (= lambda!339992 lambda!339936)))

(declare-fun bs!1542698 () Bool)

(assert (= bs!1542698 (and d!1950021 d!1949669)))

(assert (=> bs!1542698 (= lambda!339992 lambda!339948)))

(declare-fun bs!1542699 () Bool)

(assert (= bs!1542699 (and d!1950021 d!1949911)))

(assert (=> bs!1542699 (= lambda!339992 lambda!339971)))

(declare-fun bs!1542700 () Bool)

(assert (= bs!1542700 (and d!1950021 d!1949959)))

(assert (=> bs!1542700 (= lambda!339992 lambda!339985)))

(assert (=> d!1950021 (= (nullableZipper!1929 lt!2344674) (exists!2489 lt!2344674 lambda!339992))))

(declare-fun bs!1542701 () Bool)

(assert (= bs!1542701 d!1950021))

(declare-fun m!7048602 () Bool)

(assert (=> bs!1542701 m!7048602))

(assert (=> b!6219198 d!1950021))

(assert (=> bs!1542376 d!1949501))

(declare-fun bs!1542702 () Bool)

(declare-fun d!1950023 () Bool)

(assert (= bs!1542702 (and d!1950023 d!1949911)))

(declare-fun lambda!339993 () Int)

(assert (=> bs!1542702 (= lambda!339993 lambda!339971)))

(declare-fun bs!1542703 () Bool)

(assert (= bs!1542703 (and d!1950023 d!1950021)))

(assert (=> bs!1542703 (= lambda!339993 lambda!339992)))

(declare-fun bs!1542704 () Bool)

(assert (= bs!1542704 (and d!1950023 d!1949551)))

(assert (=> bs!1542704 (= lambda!339993 lambda!339936)))

(declare-fun bs!1542705 () Bool)

(assert (= bs!1542705 (and d!1950023 d!1949669)))

(assert (=> bs!1542705 (= lambda!339993 lambda!339948)))

(declare-fun bs!1542706 () Bool)

(assert (= bs!1542706 (and d!1950023 d!1949959)))

(assert (=> bs!1542706 (= lambda!339993 lambda!339985)))

(assert (=> d!1950023 (= (nullableZipper!1929 lt!2344678) (exists!2489 lt!2344678 lambda!339993))))

(declare-fun bs!1542707 () Bool)

(assert (= bs!1542707 d!1950023))

(declare-fun m!7048604 () Bool)

(assert (=> bs!1542707 m!7048604))

(assert (=> b!6219481 d!1950023))

(declare-fun b!6220586 () Bool)

(declare-fun e!3786639 () Bool)

(declare-fun e!3786638 () Bool)

(assert (=> b!6220586 (= e!3786639 e!3786638)))

(declare-fun res!2571076 () Bool)

(assert (=> b!6220586 (=> (not res!2571076) (not e!3786638))))

(declare-fun call!522126 () Bool)

(assert (=> b!6220586 (= res!2571076 call!522126)))

(declare-fun b!6220587 () Bool)

(declare-fun e!3786643 () Bool)

(declare-fun call!522127 () Bool)

(assert (=> b!6220587 (= e!3786643 call!522127)))

(declare-fun b!6220588 () Bool)

(declare-fun res!2571074 () Bool)

(assert (=> b!6220588 (=> res!2571074 e!3786639)))

(assert (=> b!6220588 (= res!2571074 (not ((_ is Concat!25000) lt!2344738)))))

(declare-fun e!3786644 () Bool)

(assert (=> b!6220588 (= e!3786644 e!3786639)))

(declare-fun b!6220589 () Bool)

(declare-fun e!3786640 () Bool)

(declare-fun e!3786641 () Bool)

(assert (=> b!6220589 (= e!3786640 e!3786641)))

(declare-fun res!2571075 () Bool)

(assert (=> b!6220589 (= res!2571075 (not (nullable!6148 (reg!16484 lt!2344738))))))

(assert (=> b!6220589 (=> (not res!2571075) (not e!3786641))))

(declare-fun d!1950025 () Bool)

(declare-fun res!2571072 () Bool)

(declare-fun e!3786642 () Bool)

(assert (=> d!1950025 (=> res!2571072 e!3786642)))

(assert (=> d!1950025 (= res!2571072 ((_ is ElementMatch!16155) lt!2344738))))

(assert (=> d!1950025 (= (validRegex!7891 lt!2344738) e!3786642)))

(declare-fun bm!522121 () Bool)

(declare-fun c!1123944 () Bool)

(assert (=> bm!522121 (= call!522127 (validRegex!7891 (ite c!1123944 (regTwo!32823 lt!2344738) (regTwo!32822 lt!2344738))))))

(declare-fun bm!522122 () Bool)

(declare-fun call!522128 () Bool)

(assert (=> bm!522122 (= call!522126 call!522128)))

(declare-fun b!6220590 () Bool)

(assert (=> b!6220590 (= e!3786640 e!3786644)))

(assert (=> b!6220590 (= c!1123944 ((_ is Union!16155) lt!2344738))))

(declare-fun b!6220591 () Bool)

(assert (=> b!6220591 (= e!3786638 call!522127)))

(declare-fun b!6220592 () Bool)

(assert (=> b!6220592 (= e!3786641 call!522128)))

(declare-fun c!1123945 () Bool)

(declare-fun bm!522123 () Bool)

(assert (=> bm!522123 (= call!522128 (validRegex!7891 (ite c!1123945 (reg!16484 lt!2344738) (ite c!1123944 (regOne!32823 lt!2344738) (regOne!32822 lt!2344738)))))))

(declare-fun b!6220593 () Bool)

(declare-fun res!2571073 () Bool)

(assert (=> b!6220593 (=> (not res!2571073) (not e!3786643))))

(assert (=> b!6220593 (= res!2571073 call!522126)))

(assert (=> b!6220593 (= e!3786644 e!3786643)))

(declare-fun b!6220594 () Bool)

(assert (=> b!6220594 (= e!3786642 e!3786640)))

(assert (=> b!6220594 (= c!1123945 ((_ is Star!16155) lt!2344738))))

(assert (= (and d!1950025 (not res!2571072)) b!6220594))

(assert (= (and b!6220594 c!1123945) b!6220589))

(assert (= (and b!6220594 (not c!1123945)) b!6220590))

(assert (= (and b!6220589 res!2571075) b!6220592))

(assert (= (and b!6220590 c!1123944) b!6220593))

(assert (= (and b!6220590 (not c!1123944)) b!6220588))

(assert (= (and b!6220593 res!2571073) b!6220587))

(assert (= (and b!6220588 (not res!2571074)) b!6220586))

(assert (= (and b!6220586 res!2571076) b!6220591))

(assert (= (or b!6220587 b!6220591) bm!522121))

(assert (= (or b!6220593 b!6220586) bm!522122))

(assert (= (or b!6220592 bm!522122) bm!522123))

(declare-fun m!7048606 () Bool)

(assert (=> b!6220589 m!7048606))

(declare-fun m!7048608 () Bool)

(assert (=> bm!522121 m!7048608))

(declare-fun m!7048610 () Bool)

(assert (=> bm!522123 m!7048610))

(assert (=> d!1949451 d!1950025))

(declare-fun d!1950027 () Bool)

(declare-fun res!2571077 () Bool)

(declare-fun e!3786645 () Bool)

(assert (=> d!1950027 (=> res!2571077 e!3786645)))

(assert (=> d!1950027 (= res!2571077 ((_ is Nil!64641) (unfocusZipperList!1576 zl!343)))))

(assert (=> d!1950027 (= (forall!15269 (unfocusZipperList!1576 zl!343) lambda!339900) e!3786645)))

(declare-fun b!6220595 () Bool)

(declare-fun e!3786646 () Bool)

(assert (=> b!6220595 (= e!3786645 e!3786646)))

(declare-fun res!2571078 () Bool)

(assert (=> b!6220595 (=> (not res!2571078) (not e!3786646))))

(assert (=> b!6220595 (= res!2571078 (dynLambda!25504 lambda!339900 (h!71089 (unfocusZipperList!1576 zl!343))))))

(declare-fun b!6220596 () Bool)

(assert (=> b!6220596 (= e!3786646 (forall!15269 (t!378295 (unfocusZipperList!1576 zl!343)) lambda!339900))))

(assert (= (and d!1950027 (not res!2571077)) b!6220595))

(assert (= (and b!6220595 res!2571078) b!6220596))

(declare-fun b_lambda!236487 () Bool)

(assert (=> (not b_lambda!236487) (not b!6220595)))

(declare-fun m!7048612 () Bool)

(assert (=> b!6220595 m!7048612))

(declare-fun m!7048614 () Bool)

(assert (=> b!6220596 m!7048614))

(assert (=> d!1949451 d!1950027))

(declare-fun b!6220598 () Bool)

(declare-fun e!3786648 () Bool)

(declare-fun tp!1735235 () Bool)

(assert (=> b!6220598 (= e!3786648 tp!1735235)))

(declare-fun e!3786647 () Bool)

(declare-fun b!6220597 () Bool)

(declare-fun tp!1735236 () Bool)

(assert (=> b!6220597 (= e!3786647 (and (inv!83634 (h!71090 (t!378296 (t!378296 zl!343)))) e!3786648 tp!1735236))))

(assert (=> b!6219489 (= tp!1735006 e!3786647)))

(assert (= b!6220597 b!6220598))

(assert (= (and b!6219489 ((_ is Cons!64642) (t!378296 (t!378296 zl!343)))) b!6220597))

(declare-fun m!7048616 () Bool)

(assert (=> b!6220597 m!7048616))

(declare-fun b!6220599 () Bool)

(declare-fun e!3786649 () Bool)

(declare-fun tp!1735237 () Bool)

(assert (=> b!6220599 (= e!3786649 (and tp_is_empty!41563 tp!1735237))))

(assert (=> b!6219527 (= tp!1735047 e!3786649)))

(assert (= (and b!6219527 ((_ is Cons!64640) (t!378294 (t!378294 s!2326)))) b!6220599))

(declare-fun b!6220603 () Bool)

(declare-fun e!3786650 () Bool)

(declare-fun tp!1735239 () Bool)

(declare-fun tp!1735241 () Bool)

(assert (=> b!6220603 (= e!3786650 (and tp!1735239 tp!1735241))))

(assert (=> b!6219504 (= tp!1735018 e!3786650)))

(declare-fun b!6220600 () Bool)

(assert (=> b!6220600 (= e!3786650 tp_is_empty!41563)))

(declare-fun b!6220602 () Bool)

(declare-fun tp!1735240 () Bool)

(assert (=> b!6220602 (= e!3786650 tp!1735240)))

(declare-fun b!6220601 () Bool)

(declare-fun tp!1735242 () Bool)

(declare-fun tp!1735238 () Bool)

(assert (=> b!6220601 (= e!3786650 (and tp!1735242 tp!1735238))))

(assert (= (and b!6219504 ((_ is ElementMatch!16155) (regOne!32823 (regOne!32823 r!7292)))) b!6220600))

(assert (= (and b!6219504 ((_ is Concat!25000) (regOne!32823 (regOne!32823 r!7292)))) b!6220601))

(assert (= (and b!6219504 ((_ is Star!16155) (regOne!32823 (regOne!32823 r!7292)))) b!6220602))

(assert (= (and b!6219504 ((_ is Union!16155) (regOne!32823 (regOne!32823 r!7292)))) b!6220603))

(declare-fun b!6220607 () Bool)

(declare-fun e!3786651 () Bool)

(declare-fun tp!1735244 () Bool)

(declare-fun tp!1735246 () Bool)

(assert (=> b!6220607 (= e!3786651 (and tp!1735244 tp!1735246))))

(assert (=> b!6219504 (= tp!1735020 e!3786651)))

(declare-fun b!6220604 () Bool)

(assert (=> b!6220604 (= e!3786651 tp_is_empty!41563)))

(declare-fun b!6220606 () Bool)

(declare-fun tp!1735245 () Bool)

(assert (=> b!6220606 (= e!3786651 tp!1735245)))

(declare-fun b!6220605 () Bool)

(declare-fun tp!1735247 () Bool)

(declare-fun tp!1735243 () Bool)

(assert (=> b!6220605 (= e!3786651 (and tp!1735247 tp!1735243))))

(assert (= (and b!6219504 ((_ is ElementMatch!16155) (regTwo!32823 (regOne!32823 r!7292)))) b!6220604))

(assert (= (and b!6219504 ((_ is Concat!25000) (regTwo!32823 (regOne!32823 r!7292)))) b!6220605))

(assert (= (and b!6219504 ((_ is Star!16155) (regTwo!32823 (regOne!32823 r!7292)))) b!6220606))

(assert (= (and b!6219504 ((_ is Union!16155) (regTwo!32823 (regOne!32823 r!7292)))) b!6220607))

(declare-fun b!6220611 () Bool)

(declare-fun e!3786652 () Bool)

(declare-fun tp!1735249 () Bool)

(declare-fun tp!1735251 () Bool)

(assert (=> b!6220611 (= e!3786652 (and tp!1735249 tp!1735251))))

(assert (=> b!6219503 (= tp!1735019 e!3786652)))

(declare-fun b!6220608 () Bool)

(assert (=> b!6220608 (= e!3786652 tp_is_empty!41563)))

(declare-fun b!6220610 () Bool)

(declare-fun tp!1735250 () Bool)

(assert (=> b!6220610 (= e!3786652 tp!1735250)))

(declare-fun b!6220609 () Bool)

(declare-fun tp!1735252 () Bool)

(declare-fun tp!1735248 () Bool)

(assert (=> b!6220609 (= e!3786652 (and tp!1735252 tp!1735248))))

(assert (= (and b!6219503 ((_ is ElementMatch!16155) (reg!16484 (regOne!32823 r!7292)))) b!6220608))

(assert (= (and b!6219503 ((_ is Concat!25000) (reg!16484 (regOne!32823 r!7292)))) b!6220609))

(assert (= (and b!6219503 ((_ is Star!16155) (reg!16484 (regOne!32823 r!7292)))) b!6220610))

(assert (= (and b!6219503 ((_ is Union!16155) (reg!16484 (regOne!32823 r!7292)))) b!6220611))

(declare-fun b!6220615 () Bool)

(declare-fun e!3786653 () Bool)

(declare-fun tp!1735254 () Bool)

(declare-fun tp!1735256 () Bool)

(assert (=> b!6220615 (= e!3786653 (and tp!1735254 tp!1735256))))

(assert (=> b!6219512 (= tp!1735028 e!3786653)))

(declare-fun b!6220612 () Bool)

(assert (=> b!6220612 (= e!3786653 tp_is_empty!41563)))

(declare-fun b!6220614 () Bool)

(declare-fun tp!1735255 () Bool)

(assert (=> b!6220614 (= e!3786653 tp!1735255)))

(declare-fun b!6220613 () Bool)

(declare-fun tp!1735257 () Bool)

(declare-fun tp!1735253 () Bool)

(assert (=> b!6220613 (= e!3786653 (and tp!1735257 tp!1735253))))

(assert (= (and b!6219512 ((_ is ElementMatch!16155) (regOne!32823 (regOne!32822 r!7292)))) b!6220612))

(assert (= (and b!6219512 ((_ is Concat!25000) (regOne!32823 (regOne!32822 r!7292)))) b!6220613))

(assert (= (and b!6219512 ((_ is Star!16155) (regOne!32823 (regOne!32822 r!7292)))) b!6220614))

(assert (= (and b!6219512 ((_ is Union!16155) (regOne!32823 (regOne!32822 r!7292)))) b!6220615))

(declare-fun b!6220619 () Bool)

(declare-fun e!3786654 () Bool)

(declare-fun tp!1735259 () Bool)

(declare-fun tp!1735261 () Bool)

(assert (=> b!6220619 (= e!3786654 (and tp!1735259 tp!1735261))))

(assert (=> b!6219512 (= tp!1735030 e!3786654)))

(declare-fun b!6220616 () Bool)

(assert (=> b!6220616 (= e!3786654 tp_is_empty!41563)))

(declare-fun b!6220618 () Bool)

(declare-fun tp!1735260 () Bool)

(assert (=> b!6220618 (= e!3786654 tp!1735260)))

(declare-fun b!6220617 () Bool)

(declare-fun tp!1735262 () Bool)

(declare-fun tp!1735258 () Bool)

(assert (=> b!6220617 (= e!3786654 (and tp!1735262 tp!1735258))))

(assert (= (and b!6219512 ((_ is ElementMatch!16155) (regTwo!32823 (regOne!32822 r!7292)))) b!6220616))

(assert (= (and b!6219512 ((_ is Concat!25000) (regTwo!32823 (regOne!32822 r!7292)))) b!6220617))

(assert (= (and b!6219512 ((_ is Star!16155) (regTwo!32823 (regOne!32822 r!7292)))) b!6220618))

(assert (= (and b!6219512 ((_ is Union!16155) (regTwo!32823 (regOne!32822 r!7292)))) b!6220619))

(declare-fun b!6220623 () Bool)

(declare-fun e!3786655 () Bool)

(declare-fun tp!1735264 () Bool)

(declare-fun tp!1735266 () Bool)

(assert (=> b!6220623 (= e!3786655 (and tp!1735264 tp!1735266))))

(assert (=> b!6219507 (= tp!1735024 e!3786655)))

(declare-fun b!6220620 () Bool)

(assert (=> b!6220620 (= e!3786655 tp_is_empty!41563)))

(declare-fun b!6220622 () Bool)

(declare-fun tp!1735265 () Bool)

(assert (=> b!6220622 (= e!3786655 tp!1735265)))

(declare-fun b!6220621 () Bool)

(declare-fun tp!1735267 () Bool)

(declare-fun tp!1735263 () Bool)

(assert (=> b!6220621 (= e!3786655 (and tp!1735267 tp!1735263))))

(assert (= (and b!6219507 ((_ is ElementMatch!16155) (reg!16484 (regTwo!32823 r!7292)))) b!6220620))

(assert (= (and b!6219507 ((_ is Concat!25000) (reg!16484 (regTwo!32823 r!7292)))) b!6220621))

(assert (= (and b!6219507 ((_ is Star!16155) (reg!16484 (regTwo!32823 r!7292)))) b!6220622))

(assert (= (and b!6219507 ((_ is Union!16155) (reg!16484 (regTwo!32823 r!7292)))) b!6220623))

(declare-fun b!6220627 () Bool)

(declare-fun e!3786656 () Bool)

(declare-fun tp!1735269 () Bool)

(declare-fun tp!1735271 () Bool)

(assert (=> b!6220627 (= e!3786656 (and tp!1735269 tp!1735271))))

(assert (=> b!6219516 (= tp!1735033 e!3786656)))

(declare-fun b!6220624 () Bool)

(assert (=> b!6220624 (= e!3786656 tp_is_empty!41563)))

(declare-fun b!6220626 () Bool)

(declare-fun tp!1735270 () Bool)

(assert (=> b!6220626 (= e!3786656 tp!1735270)))

(declare-fun b!6220625 () Bool)

(declare-fun tp!1735272 () Bool)

(declare-fun tp!1735268 () Bool)

(assert (=> b!6220625 (= e!3786656 (and tp!1735272 tp!1735268))))

(assert (= (and b!6219516 ((_ is ElementMatch!16155) (regOne!32823 (regTwo!32822 r!7292)))) b!6220624))

(assert (= (and b!6219516 ((_ is Concat!25000) (regOne!32823 (regTwo!32822 r!7292)))) b!6220625))

(assert (= (and b!6219516 ((_ is Star!16155) (regOne!32823 (regTwo!32822 r!7292)))) b!6220626))

(assert (= (and b!6219516 ((_ is Union!16155) (regOne!32823 (regTwo!32822 r!7292)))) b!6220627))

(declare-fun b!6220631 () Bool)

(declare-fun e!3786657 () Bool)

(declare-fun tp!1735274 () Bool)

(declare-fun tp!1735276 () Bool)

(assert (=> b!6220631 (= e!3786657 (and tp!1735274 tp!1735276))))

(assert (=> b!6219516 (= tp!1735035 e!3786657)))

(declare-fun b!6220628 () Bool)

(assert (=> b!6220628 (= e!3786657 tp_is_empty!41563)))

(declare-fun b!6220630 () Bool)

(declare-fun tp!1735275 () Bool)

(assert (=> b!6220630 (= e!3786657 tp!1735275)))

(declare-fun b!6220629 () Bool)

(declare-fun tp!1735277 () Bool)

(declare-fun tp!1735273 () Bool)

(assert (=> b!6220629 (= e!3786657 (and tp!1735277 tp!1735273))))

(assert (= (and b!6219516 ((_ is ElementMatch!16155) (regTwo!32823 (regTwo!32822 r!7292)))) b!6220628))

(assert (= (and b!6219516 ((_ is Concat!25000) (regTwo!32823 (regTwo!32822 r!7292)))) b!6220629))

(assert (= (and b!6219516 ((_ is Star!16155) (regTwo!32823 (regTwo!32822 r!7292)))) b!6220630))

(assert (= (and b!6219516 ((_ is Union!16155) (regTwo!32823 (regTwo!32822 r!7292)))) b!6220631))

(declare-fun b!6220635 () Bool)

(declare-fun e!3786658 () Bool)

(declare-fun tp!1735279 () Bool)

(declare-fun tp!1735281 () Bool)

(assert (=> b!6220635 (= e!3786658 (and tp!1735279 tp!1735281))))

(assert (=> b!6219506 (= tp!1735026 e!3786658)))

(declare-fun b!6220632 () Bool)

(assert (=> b!6220632 (= e!3786658 tp_is_empty!41563)))

(declare-fun b!6220634 () Bool)

(declare-fun tp!1735280 () Bool)

(assert (=> b!6220634 (= e!3786658 tp!1735280)))

(declare-fun b!6220633 () Bool)

(declare-fun tp!1735282 () Bool)

(declare-fun tp!1735278 () Bool)

(assert (=> b!6220633 (= e!3786658 (and tp!1735282 tp!1735278))))

(assert (= (and b!6219506 ((_ is ElementMatch!16155) (regOne!32822 (regTwo!32823 r!7292)))) b!6220632))

(assert (= (and b!6219506 ((_ is Concat!25000) (regOne!32822 (regTwo!32823 r!7292)))) b!6220633))

(assert (= (and b!6219506 ((_ is Star!16155) (regOne!32822 (regTwo!32823 r!7292)))) b!6220634))

(assert (= (and b!6219506 ((_ is Union!16155) (regOne!32822 (regTwo!32823 r!7292)))) b!6220635))

(declare-fun b!6220639 () Bool)

(declare-fun e!3786659 () Bool)

(declare-fun tp!1735284 () Bool)

(declare-fun tp!1735286 () Bool)

(assert (=> b!6220639 (= e!3786659 (and tp!1735284 tp!1735286))))

(assert (=> b!6219506 (= tp!1735022 e!3786659)))

(declare-fun b!6220636 () Bool)

(assert (=> b!6220636 (= e!3786659 tp_is_empty!41563)))

(declare-fun b!6220638 () Bool)

(declare-fun tp!1735285 () Bool)

(assert (=> b!6220638 (= e!3786659 tp!1735285)))

(declare-fun b!6220637 () Bool)

(declare-fun tp!1735287 () Bool)

(declare-fun tp!1735283 () Bool)

(assert (=> b!6220637 (= e!3786659 (and tp!1735287 tp!1735283))))

(assert (= (and b!6219506 ((_ is ElementMatch!16155) (regTwo!32822 (regTwo!32823 r!7292)))) b!6220636))

(assert (= (and b!6219506 ((_ is Concat!25000) (regTwo!32822 (regTwo!32823 r!7292)))) b!6220637))

(assert (= (and b!6219506 ((_ is Star!16155) (regTwo!32822 (regTwo!32823 r!7292)))) b!6220638))

(assert (= (and b!6219506 ((_ is Union!16155) (regTwo!32822 (regTwo!32823 r!7292)))) b!6220639))

(declare-fun b!6220643 () Bool)

(declare-fun e!3786660 () Bool)

(declare-fun tp!1735289 () Bool)

(declare-fun tp!1735291 () Bool)

(assert (=> b!6220643 (= e!3786660 (and tp!1735289 tp!1735291))))

(assert (=> b!6219515 (= tp!1735034 e!3786660)))

(declare-fun b!6220640 () Bool)

(assert (=> b!6220640 (= e!3786660 tp_is_empty!41563)))

(declare-fun b!6220642 () Bool)

(declare-fun tp!1735290 () Bool)

(assert (=> b!6220642 (= e!3786660 tp!1735290)))

(declare-fun b!6220641 () Bool)

(declare-fun tp!1735292 () Bool)

(declare-fun tp!1735288 () Bool)

(assert (=> b!6220641 (= e!3786660 (and tp!1735292 tp!1735288))))

(assert (= (and b!6219515 ((_ is ElementMatch!16155) (reg!16484 (regTwo!32822 r!7292)))) b!6220640))

(assert (= (and b!6219515 ((_ is Concat!25000) (reg!16484 (regTwo!32822 r!7292)))) b!6220641))

(assert (= (and b!6219515 ((_ is Star!16155) (reg!16484 (regTwo!32822 r!7292)))) b!6220642))

(assert (= (and b!6219515 ((_ is Union!16155) (reg!16484 (regTwo!32822 r!7292)))) b!6220643))

(declare-fun b!6220644 () Bool)

(declare-fun e!3786661 () Bool)

(declare-fun tp!1735293 () Bool)

(declare-fun tp!1735294 () Bool)

(assert (=> b!6220644 (= e!3786661 (and tp!1735293 tp!1735294))))

(assert (=> b!6219536 (= tp!1735058 e!3786661)))

(assert (= (and b!6219536 ((_ is Cons!64641) (exprs!6039 setElem!42238))) b!6220644))

(declare-fun b!6220648 () Bool)

(declare-fun e!3786662 () Bool)

(declare-fun tp!1735296 () Bool)

(declare-fun tp!1735298 () Bool)

(assert (=> b!6220648 (= e!3786662 (and tp!1735296 tp!1735298))))

(assert (=> b!6219514 (= tp!1735036 e!3786662)))

(declare-fun b!6220645 () Bool)

(assert (=> b!6220645 (= e!3786662 tp_is_empty!41563)))

(declare-fun b!6220647 () Bool)

(declare-fun tp!1735297 () Bool)

(assert (=> b!6220647 (= e!3786662 tp!1735297)))

(declare-fun b!6220646 () Bool)

(declare-fun tp!1735299 () Bool)

(declare-fun tp!1735295 () Bool)

(assert (=> b!6220646 (= e!3786662 (and tp!1735299 tp!1735295))))

(assert (= (and b!6219514 ((_ is ElementMatch!16155) (regOne!32822 (regTwo!32822 r!7292)))) b!6220645))

(assert (= (and b!6219514 ((_ is Concat!25000) (regOne!32822 (regTwo!32822 r!7292)))) b!6220646))

(assert (= (and b!6219514 ((_ is Star!16155) (regOne!32822 (regTwo!32822 r!7292)))) b!6220647))

(assert (= (and b!6219514 ((_ is Union!16155) (regOne!32822 (regTwo!32822 r!7292)))) b!6220648))

(declare-fun b!6220652 () Bool)

(declare-fun e!3786663 () Bool)

(declare-fun tp!1735301 () Bool)

(declare-fun tp!1735303 () Bool)

(assert (=> b!6220652 (= e!3786663 (and tp!1735301 tp!1735303))))

(assert (=> b!6219514 (= tp!1735032 e!3786663)))

(declare-fun b!6220649 () Bool)

(assert (=> b!6220649 (= e!3786663 tp_is_empty!41563)))

(declare-fun b!6220651 () Bool)

(declare-fun tp!1735302 () Bool)

(assert (=> b!6220651 (= e!3786663 tp!1735302)))

(declare-fun b!6220650 () Bool)

(declare-fun tp!1735304 () Bool)

(declare-fun tp!1735300 () Bool)

(assert (=> b!6220650 (= e!3786663 (and tp!1735304 tp!1735300))))

(assert (= (and b!6219514 ((_ is ElementMatch!16155) (regTwo!32822 (regTwo!32822 r!7292)))) b!6220649))

(assert (= (and b!6219514 ((_ is Concat!25000) (regTwo!32822 (regTwo!32822 r!7292)))) b!6220650))

(assert (= (and b!6219514 ((_ is Star!16155) (regTwo!32822 (regTwo!32822 r!7292)))) b!6220651))

(assert (= (and b!6219514 ((_ is Union!16155) (regTwo!32822 (regTwo!32822 r!7292)))) b!6220652))

(declare-fun condSetEmpty!42248 () Bool)

(assert (=> setNonEmpty!42238 (= condSetEmpty!42248 (= setRest!42238 ((as const (Array Context!11078 Bool)) false)))))

(declare-fun setRes!42248 () Bool)

(assert (=> setNonEmpty!42238 (= tp!1735057 setRes!42248)))

(declare-fun setIsEmpty!42248 () Bool)

(assert (=> setIsEmpty!42248 setRes!42248))

(declare-fun setNonEmpty!42248 () Bool)

(declare-fun tp!1735305 () Bool)

(declare-fun e!3786664 () Bool)

(declare-fun setElem!42248 () Context!11078)

(assert (=> setNonEmpty!42248 (= setRes!42248 (and tp!1735305 (inv!83634 setElem!42248) e!3786664))))

(declare-fun setRest!42248 () (InoxSet Context!11078))

(assert (=> setNonEmpty!42248 (= setRest!42238 ((_ map or) (store ((as const (Array Context!11078 Bool)) false) setElem!42248 true) setRest!42248))))

(declare-fun b!6220653 () Bool)

(declare-fun tp!1735306 () Bool)

(assert (=> b!6220653 (= e!3786664 tp!1735306)))

(assert (= (and setNonEmpty!42238 condSetEmpty!42248) setIsEmpty!42248))

(assert (= (and setNonEmpty!42238 (not condSetEmpty!42248)) setNonEmpty!42248))

(assert (= setNonEmpty!42248 b!6220653))

(declare-fun m!7048618 () Bool)

(assert (=> setNonEmpty!42248 m!7048618))

(declare-fun b!6220657 () Bool)

(declare-fun e!3786665 () Bool)

(declare-fun tp!1735308 () Bool)

(declare-fun tp!1735310 () Bool)

(assert (=> b!6220657 (= e!3786665 (and tp!1735308 tp!1735310))))

(assert (=> b!6219521 (= tp!1735041 e!3786665)))

(declare-fun b!6220654 () Bool)

(assert (=> b!6220654 (= e!3786665 tp_is_empty!41563)))

(declare-fun b!6220656 () Bool)

(declare-fun tp!1735309 () Bool)

(assert (=> b!6220656 (= e!3786665 tp!1735309)))

(declare-fun b!6220655 () Bool)

(declare-fun tp!1735311 () Bool)

(declare-fun tp!1735307 () Bool)

(assert (=> b!6220655 (= e!3786665 (and tp!1735311 tp!1735307))))

(assert (= (and b!6219521 ((_ is ElementMatch!16155) (h!71089 (exprs!6039 (h!71090 zl!343))))) b!6220654))

(assert (= (and b!6219521 ((_ is Concat!25000) (h!71089 (exprs!6039 (h!71090 zl!343))))) b!6220655))

(assert (= (and b!6219521 ((_ is Star!16155) (h!71089 (exprs!6039 (h!71090 zl!343))))) b!6220656))

(assert (= (and b!6219521 ((_ is Union!16155) (h!71089 (exprs!6039 (h!71090 zl!343))))) b!6220657))

(declare-fun b!6220658 () Bool)

(declare-fun e!3786666 () Bool)

(declare-fun tp!1735312 () Bool)

(declare-fun tp!1735313 () Bool)

(assert (=> b!6220658 (= e!3786666 (and tp!1735312 tp!1735313))))

(assert (=> b!6219521 (= tp!1735042 e!3786666)))

(assert (= (and b!6219521 ((_ is Cons!64641) (t!378295 (exprs!6039 (h!71090 zl!343))))) b!6220658))

(declare-fun b!6220659 () Bool)

(declare-fun e!3786667 () Bool)

(declare-fun tp!1735314 () Bool)

(declare-fun tp!1735315 () Bool)

(assert (=> b!6220659 (= e!3786667 (and tp!1735314 tp!1735315))))

(assert (=> b!6219490 (= tp!1735005 e!3786667)))

(assert (= (and b!6219490 ((_ is Cons!64641) (exprs!6039 (h!71090 (t!378296 zl!343))))) b!6220659))

(declare-fun b!6220663 () Bool)

(declare-fun e!3786668 () Bool)

(declare-fun tp!1735317 () Bool)

(declare-fun tp!1735319 () Bool)

(assert (=> b!6220663 (= e!3786668 (and tp!1735317 tp!1735319))))

(assert (=> b!6219531 (= tp!1735049 e!3786668)))

(declare-fun b!6220660 () Bool)

(assert (=> b!6220660 (= e!3786668 tp_is_empty!41563)))

(declare-fun b!6220662 () Bool)

(declare-fun tp!1735318 () Bool)

(assert (=> b!6220662 (= e!3786668 tp!1735318)))

(declare-fun b!6220661 () Bool)

(declare-fun tp!1735320 () Bool)

(declare-fun tp!1735316 () Bool)

(assert (=> b!6220661 (= e!3786668 (and tp!1735320 tp!1735316))))

(assert (= (and b!6219531 ((_ is ElementMatch!16155) (regOne!32823 (reg!16484 r!7292)))) b!6220660))

(assert (= (and b!6219531 ((_ is Concat!25000) (regOne!32823 (reg!16484 r!7292)))) b!6220661))

(assert (= (and b!6219531 ((_ is Star!16155) (regOne!32823 (reg!16484 r!7292)))) b!6220662))

(assert (= (and b!6219531 ((_ is Union!16155) (regOne!32823 (reg!16484 r!7292)))) b!6220663))

(declare-fun b!6220667 () Bool)

(declare-fun e!3786669 () Bool)

(declare-fun tp!1735322 () Bool)

(declare-fun tp!1735324 () Bool)

(assert (=> b!6220667 (= e!3786669 (and tp!1735322 tp!1735324))))

(assert (=> b!6219531 (= tp!1735051 e!3786669)))

(declare-fun b!6220664 () Bool)

(assert (=> b!6220664 (= e!3786669 tp_is_empty!41563)))

(declare-fun b!6220666 () Bool)

(declare-fun tp!1735323 () Bool)

(assert (=> b!6220666 (= e!3786669 tp!1735323)))

(declare-fun b!6220665 () Bool)

(declare-fun tp!1735325 () Bool)

(declare-fun tp!1735321 () Bool)

(assert (=> b!6220665 (= e!3786669 (and tp!1735325 tp!1735321))))

(assert (= (and b!6219531 ((_ is ElementMatch!16155) (regTwo!32823 (reg!16484 r!7292)))) b!6220664))

(assert (= (and b!6219531 ((_ is Concat!25000) (regTwo!32823 (reg!16484 r!7292)))) b!6220665))

(assert (= (and b!6219531 ((_ is Star!16155) (regTwo!32823 (reg!16484 r!7292)))) b!6220666))

(assert (= (and b!6219531 ((_ is Union!16155) (regTwo!32823 (reg!16484 r!7292)))) b!6220667))

(declare-fun b!6220671 () Bool)

(declare-fun e!3786670 () Bool)

(declare-fun tp!1735327 () Bool)

(declare-fun tp!1735329 () Bool)

(assert (=> b!6220671 (= e!3786670 (and tp!1735327 tp!1735329))))

(assert (=> b!6219530 (= tp!1735050 e!3786670)))

(declare-fun b!6220668 () Bool)

(assert (=> b!6220668 (= e!3786670 tp_is_empty!41563)))

(declare-fun b!6220670 () Bool)

(declare-fun tp!1735328 () Bool)

(assert (=> b!6220670 (= e!3786670 tp!1735328)))

(declare-fun b!6220669 () Bool)

(declare-fun tp!1735330 () Bool)

(declare-fun tp!1735326 () Bool)

(assert (=> b!6220669 (= e!3786670 (and tp!1735330 tp!1735326))))

(assert (= (and b!6219530 ((_ is ElementMatch!16155) (reg!16484 (reg!16484 r!7292)))) b!6220668))

(assert (= (and b!6219530 ((_ is Concat!25000) (reg!16484 (reg!16484 r!7292)))) b!6220669))

(assert (= (and b!6219530 ((_ is Star!16155) (reg!16484 (reg!16484 r!7292)))) b!6220670))

(assert (= (and b!6219530 ((_ is Union!16155) (reg!16484 (reg!16484 r!7292)))) b!6220671))

(declare-fun b!6220675 () Bool)

(declare-fun e!3786671 () Bool)

(declare-fun tp!1735332 () Bool)

(declare-fun tp!1735334 () Bool)

(assert (=> b!6220675 (= e!3786671 (and tp!1735332 tp!1735334))))

(assert (=> b!6219529 (= tp!1735052 e!3786671)))

(declare-fun b!6220672 () Bool)

(assert (=> b!6220672 (= e!3786671 tp_is_empty!41563)))

(declare-fun b!6220674 () Bool)

(declare-fun tp!1735333 () Bool)

(assert (=> b!6220674 (= e!3786671 tp!1735333)))

(declare-fun b!6220673 () Bool)

(declare-fun tp!1735335 () Bool)

(declare-fun tp!1735331 () Bool)

(assert (=> b!6220673 (= e!3786671 (and tp!1735335 tp!1735331))))

(assert (= (and b!6219529 ((_ is ElementMatch!16155) (regOne!32822 (reg!16484 r!7292)))) b!6220672))

(assert (= (and b!6219529 ((_ is Concat!25000) (regOne!32822 (reg!16484 r!7292)))) b!6220673))

(assert (= (and b!6219529 ((_ is Star!16155) (regOne!32822 (reg!16484 r!7292)))) b!6220674))

(assert (= (and b!6219529 ((_ is Union!16155) (regOne!32822 (reg!16484 r!7292)))) b!6220675))

(declare-fun b!6220679 () Bool)

(declare-fun e!3786672 () Bool)

(declare-fun tp!1735337 () Bool)

(declare-fun tp!1735339 () Bool)

(assert (=> b!6220679 (= e!3786672 (and tp!1735337 tp!1735339))))

(assert (=> b!6219529 (= tp!1735048 e!3786672)))

(declare-fun b!6220676 () Bool)

(assert (=> b!6220676 (= e!3786672 tp_is_empty!41563)))

(declare-fun b!6220678 () Bool)

(declare-fun tp!1735338 () Bool)

(assert (=> b!6220678 (= e!3786672 tp!1735338)))

(declare-fun b!6220677 () Bool)

(declare-fun tp!1735340 () Bool)

(declare-fun tp!1735336 () Bool)

(assert (=> b!6220677 (= e!3786672 (and tp!1735340 tp!1735336))))

(assert (= (and b!6219529 ((_ is ElementMatch!16155) (regTwo!32822 (reg!16484 r!7292)))) b!6220676))

(assert (= (and b!6219529 ((_ is Concat!25000) (regTwo!32822 (reg!16484 r!7292)))) b!6220677))

(assert (= (and b!6219529 ((_ is Star!16155) (regTwo!32822 (reg!16484 r!7292)))) b!6220678))

(assert (= (and b!6219529 ((_ is Union!16155) (regTwo!32822 (reg!16484 r!7292)))) b!6220679))

(declare-fun b!6220683 () Bool)

(declare-fun e!3786673 () Bool)

(declare-fun tp!1735342 () Bool)

(declare-fun tp!1735344 () Bool)

(assert (=> b!6220683 (= e!3786673 (and tp!1735342 tp!1735344))))

(assert (=> b!6219508 (= tp!1735023 e!3786673)))

(declare-fun b!6220680 () Bool)

(assert (=> b!6220680 (= e!3786673 tp_is_empty!41563)))

(declare-fun b!6220682 () Bool)

(declare-fun tp!1735343 () Bool)

(assert (=> b!6220682 (= e!3786673 tp!1735343)))

(declare-fun b!6220681 () Bool)

(declare-fun tp!1735345 () Bool)

(declare-fun tp!1735341 () Bool)

(assert (=> b!6220681 (= e!3786673 (and tp!1735345 tp!1735341))))

(assert (= (and b!6219508 ((_ is ElementMatch!16155) (regOne!32823 (regTwo!32823 r!7292)))) b!6220680))

(assert (= (and b!6219508 ((_ is Concat!25000) (regOne!32823 (regTwo!32823 r!7292)))) b!6220681))

(assert (= (and b!6219508 ((_ is Star!16155) (regOne!32823 (regTwo!32823 r!7292)))) b!6220682))

(assert (= (and b!6219508 ((_ is Union!16155) (regOne!32823 (regTwo!32823 r!7292)))) b!6220683))

(declare-fun b!6220687 () Bool)

(declare-fun e!3786674 () Bool)

(declare-fun tp!1735347 () Bool)

(declare-fun tp!1735349 () Bool)

(assert (=> b!6220687 (= e!3786674 (and tp!1735347 tp!1735349))))

(assert (=> b!6219508 (= tp!1735025 e!3786674)))

(declare-fun b!6220684 () Bool)

(assert (=> b!6220684 (= e!3786674 tp_is_empty!41563)))

(declare-fun b!6220686 () Bool)

(declare-fun tp!1735348 () Bool)

(assert (=> b!6220686 (= e!3786674 tp!1735348)))

(declare-fun b!6220685 () Bool)

(declare-fun tp!1735350 () Bool)

(declare-fun tp!1735346 () Bool)

(assert (=> b!6220685 (= e!3786674 (and tp!1735350 tp!1735346))))

(assert (= (and b!6219508 ((_ is ElementMatch!16155) (regTwo!32823 (regTwo!32823 r!7292)))) b!6220684))

(assert (= (and b!6219508 ((_ is Concat!25000) (regTwo!32823 (regTwo!32823 r!7292)))) b!6220685))

(assert (= (and b!6219508 ((_ is Star!16155) (regTwo!32823 (regTwo!32823 r!7292)))) b!6220686))

(assert (= (and b!6219508 ((_ is Union!16155) (regTwo!32823 (regTwo!32823 r!7292)))) b!6220687))

(declare-fun b!6220691 () Bool)

(declare-fun e!3786675 () Bool)

(declare-fun tp!1735352 () Bool)

(declare-fun tp!1735354 () Bool)

(assert (=> b!6220691 (= e!3786675 (and tp!1735352 tp!1735354))))

(assert (=> b!6219522 (= tp!1735043 e!3786675)))

(declare-fun b!6220688 () Bool)

(assert (=> b!6220688 (= e!3786675 tp_is_empty!41563)))

(declare-fun b!6220690 () Bool)

(declare-fun tp!1735353 () Bool)

(assert (=> b!6220690 (= e!3786675 tp!1735353)))

(declare-fun b!6220689 () Bool)

(declare-fun tp!1735355 () Bool)

(declare-fun tp!1735351 () Bool)

(assert (=> b!6220689 (= e!3786675 (and tp!1735355 tp!1735351))))

(assert (= (and b!6219522 ((_ is ElementMatch!16155) (h!71089 (exprs!6039 setElem!42232)))) b!6220688))

(assert (= (and b!6219522 ((_ is Concat!25000) (h!71089 (exprs!6039 setElem!42232)))) b!6220689))

(assert (= (and b!6219522 ((_ is Star!16155) (h!71089 (exprs!6039 setElem!42232)))) b!6220690))

(assert (= (and b!6219522 ((_ is Union!16155) (h!71089 (exprs!6039 setElem!42232)))) b!6220691))

(declare-fun b!6220692 () Bool)

(declare-fun e!3786676 () Bool)

(declare-fun tp!1735356 () Bool)

(declare-fun tp!1735357 () Bool)

(assert (=> b!6220692 (= e!3786676 (and tp!1735356 tp!1735357))))

(assert (=> b!6219522 (= tp!1735044 e!3786676)))

(assert (= (and b!6219522 ((_ is Cons!64641) (t!378295 (exprs!6039 setElem!42232)))) b!6220692))

(declare-fun b!6220696 () Bool)

(declare-fun e!3786677 () Bool)

(declare-fun tp!1735359 () Bool)

(declare-fun tp!1735361 () Bool)

(assert (=> b!6220696 (= e!3786677 (and tp!1735359 tp!1735361))))

(assert (=> b!6219502 (= tp!1735021 e!3786677)))

(declare-fun b!6220693 () Bool)

(assert (=> b!6220693 (= e!3786677 tp_is_empty!41563)))

(declare-fun b!6220695 () Bool)

(declare-fun tp!1735360 () Bool)

(assert (=> b!6220695 (= e!3786677 tp!1735360)))

(declare-fun b!6220694 () Bool)

(declare-fun tp!1735362 () Bool)

(declare-fun tp!1735358 () Bool)

(assert (=> b!6220694 (= e!3786677 (and tp!1735362 tp!1735358))))

(assert (= (and b!6219502 ((_ is ElementMatch!16155) (regOne!32822 (regOne!32823 r!7292)))) b!6220693))

(assert (= (and b!6219502 ((_ is Concat!25000) (regOne!32822 (regOne!32823 r!7292)))) b!6220694))

(assert (= (and b!6219502 ((_ is Star!16155) (regOne!32822 (regOne!32823 r!7292)))) b!6220695))

(assert (= (and b!6219502 ((_ is Union!16155) (regOne!32822 (regOne!32823 r!7292)))) b!6220696))

(declare-fun b!6220700 () Bool)

(declare-fun e!3786678 () Bool)

(declare-fun tp!1735364 () Bool)

(declare-fun tp!1735366 () Bool)

(assert (=> b!6220700 (= e!3786678 (and tp!1735364 tp!1735366))))

(assert (=> b!6219502 (= tp!1735017 e!3786678)))

(declare-fun b!6220697 () Bool)

(assert (=> b!6220697 (= e!3786678 tp_is_empty!41563)))

(declare-fun b!6220699 () Bool)

(declare-fun tp!1735365 () Bool)

(assert (=> b!6220699 (= e!3786678 tp!1735365)))

(declare-fun b!6220698 () Bool)

(declare-fun tp!1735367 () Bool)

(declare-fun tp!1735363 () Bool)

(assert (=> b!6220698 (= e!3786678 (and tp!1735367 tp!1735363))))

(assert (= (and b!6219502 ((_ is ElementMatch!16155) (regTwo!32822 (regOne!32823 r!7292)))) b!6220697))

(assert (= (and b!6219502 ((_ is Concat!25000) (regTwo!32822 (regOne!32823 r!7292)))) b!6220698))

(assert (= (and b!6219502 ((_ is Star!16155) (regTwo!32822 (regOne!32823 r!7292)))) b!6220699))

(assert (= (and b!6219502 ((_ is Union!16155) (regTwo!32822 (regOne!32823 r!7292)))) b!6220700))

(declare-fun b!6220704 () Bool)

(declare-fun e!3786679 () Bool)

(declare-fun tp!1735369 () Bool)

(declare-fun tp!1735371 () Bool)

(assert (=> b!6220704 (= e!3786679 (and tp!1735369 tp!1735371))))

(assert (=> b!6219511 (= tp!1735029 e!3786679)))

(declare-fun b!6220701 () Bool)

(assert (=> b!6220701 (= e!3786679 tp_is_empty!41563)))

(declare-fun b!6220703 () Bool)

(declare-fun tp!1735370 () Bool)

(assert (=> b!6220703 (= e!3786679 tp!1735370)))

(declare-fun b!6220702 () Bool)

(declare-fun tp!1735372 () Bool)

(declare-fun tp!1735368 () Bool)

(assert (=> b!6220702 (= e!3786679 (and tp!1735372 tp!1735368))))

(assert (= (and b!6219511 ((_ is ElementMatch!16155) (reg!16484 (regOne!32822 r!7292)))) b!6220701))

(assert (= (and b!6219511 ((_ is Concat!25000) (reg!16484 (regOne!32822 r!7292)))) b!6220702))

(assert (= (and b!6219511 ((_ is Star!16155) (reg!16484 (regOne!32822 r!7292)))) b!6220703))

(assert (= (and b!6219511 ((_ is Union!16155) (reg!16484 (regOne!32822 r!7292)))) b!6220704))

(declare-fun b!6220708 () Bool)

(declare-fun e!3786680 () Bool)

(declare-fun tp!1735374 () Bool)

(declare-fun tp!1735376 () Bool)

(assert (=> b!6220708 (= e!3786680 (and tp!1735374 tp!1735376))))

(assert (=> b!6219510 (= tp!1735031 e!3786680)))

(declare-fun b!6220705 () Bool)

(assert (=> b!6220705 (= e!3786680 tp_is_empty!41563)))

(declare-fun b!6220707 () Bool)

(declare-fun tp!1735375 () Bool)

(assert (=> b!6220707 (= e!3786680 tp!1735375)))

(declare-fun b!6220706 () Bool)

(declare-fun tp!1735377 () Bool)

(declare-fun tp!1735373 () Bool)

(assert (=> b!6220706 (= e!3786680 (and tp!1735377 tp!1735373))))

(assert (= (and b!6219510 ((_ is ElementMatch!16155) (regOne!32822 (regOne!32822 r!7292)))) b!6220705))

(assert (= (and b!6219510 ((_ is Concat!25000) (regOne!32822 (regOne!32822 r!7292)))) b!6220706))

(assert (= (and b!6219510 ((_ is Star!16155) (regOne!32822 (regOne!32822 r!7292)))) b!6220707))

(assert (= (and b!6219510 ((_ is Union!16155) (regOne!32822 (regOne!32822 r!7292)))) b!6220708))

(declare-fun b!6220712 () Bool)

(declare-fun e!3786681 () Bool)

(declare-fun tp!1735379 () Bool)

(declare-fun tp!1735381 () Bool)

(assert (=> b!6220712 (= e!3786681 (and tp!1735379 tp!1735381))))

(assert (=> b!6219510 (= tp!1735027 e!3786681)))

(declare-fun b!6220709 () Bool)

(assert (=> b!6220709 (= e!3786681 tp_is_empty!41563)))

(declare-fun b!6220711 () Bool)

(declare-fun tp!1735380 () Bool)

(assert (=> b!6220711 (= e!3786681 tp!1735380)))

(declare-fun b!6220710 () Bool)

(declare-fun tp!1735382 () Bool)

(declare-fun tp!1735378 () Bool)

(assert (=> b!6220710 (= e!3786681 (and tp!1735382 tp!1735378))))

(assert (= (and b!6219510 ((_ is ElementMatch!16155) (regTwo!32822 (regOne!32822 r!7292)))) b!6220709))

(assert (= (and b!6219510 ((_ is Concat!25000) (regTwo!32822 (regOne!32822 r!7292)))) b!6220710))

(assert (= (and b!6219510 ((_ is Star!16155) (regTwo!32822 (regOne!32822 r!7292)))) b!6220711))

(assert (= (and b!6219510 ((_ is Union!16155) (regTwo!32822 (regOne!32822 r!7292)))) b!6220712))

(declare-fun b_lambda!236489 () Bool)

(assert (= b_lambda!236455 (or d!1949479 b_lambda!236489)))

(declare-fun bs!1542708 () Bool)

(declare-fun d!1950029 () Bool)

(assert (= bs!1542708 (and d!1950029 d!1949479)))

(assert (=> bs!1542708 (= (dynLambda!25504 lambda!339910 (h!71089 (exprs!6039 (h!71090 zl!343)))) (validRegex!7891 (h!71089 (exprs!6039 (h!71090 zl!343)))))))

(declare-fun m!7048620 () Bool)

(assert (=> bs!1542708 m!7048620))

(assert (=> b!6220037 d!1950029))

(declare-fun b_lambda!236491 () Bool)

(assert (= b_lambda!236461 (or b!6218742 b_lambda!236491)))

(assert (=> d!1949917 d!1949529))

(declare-fun b_lambda!236493 () Bool)

(assert (= b_lambda!236485 (or d!1949475 b_lambda!236493)))

(declare-fun bs!1542709 () Bool)

(declare-fun d!1950031 () Bool)

(assert (= bs!1542709 (and d!1950031 d!1949475)))

(assert (=> bs!1542709 (= (dynLambda!25504 lambda!339907 (h!71089 (exprs!6039 (h!71090 zl!343)))) (validRegex!7891 (h!71089 (exprs!6039 (h!71090 zl!343)))))))

(assert (=> bs!1542709 m!7048620))

(assert (=> b!6220584 d!1950031))

(declare-fun b_lambda!236495 () Bool)

(assert (= b_lambda!236487 (or d!1949451 b_lambda!236495)))

(declare-fun bs!1542710 () Bool)

(declare-fun d!1950033 () Bool)

(assert (= bs!1542710 (and d!1950033 d!1949451)))

(assert (=> bs!1542710 (= (dynLambda!25504 lambda!339900 (h!71089 (unfocusZipperList!1576 zl!343))) (validRegex!7891 (h!71089 (unfocusZipperList!1576 zl!343))))))

(declare-fun m!7048622 () Bool)

(assert (=> bs!1542710 m!7048622))

(assert (=> b!6220595 d!1950033))

(declare-fun b_lambda!236497 () Bool)

(assert (= b_lambda!236463 (or b!6218742 b_lambda!236497)))

(assert (=> d!1949963 d!1949531))

(declare-fun b_lambda!236499 () Bool)

(assert (= b_lambda!236453 (or d!1949453 b_lambda!236499)))

(declare-fun bs!1542711 () Bool)

(declare-fun d!1950035 () Bool)

(assert (= bs!1542711 (and d!1950035 d!1949453)))

(assert (=> bs!1542711 (= (dynLambda!25504 lambda!339903 (h!71089 lt!2344741)) (validRegex!7891 (h!71089 lt!2344741)))))

(declare-fun m!7048624 () Bool)

(assert (=> bs!1542711 m!7048624))

(assert (=> b!6220012 d!1950035))

(declare-fun b_lambda!236501 () Bool)

(assert (= b_lambda!236451 (or d!1949473 b_lambda!236501)))

(declare-fun bs!1542712 () Bool)

(declare-fun d!1950037 () Bool)

(assert (= bs!1542712 (and d!1950037 d!1949473)))

(assert (=> bs!1542712 (= (dynLambda!25504 lambda!339906 (h!71089 (exprs!6039 setElem!42232))) (validRegex!7891 (h!71089 (exprs!6039 setElem!42232))))))

(declare-fun m!7048626 () Bool)

(assert (=> bs!1542712 m!7048626))

(assert (=> b!6219949 d!1950037))

(declare-fun b_lambda!236503 () Bool)

(assert (= b_lambda!236441 (or d!1949525 b_lambda!236503)))

(declare-fun bs!1542713 () Bool)

(declare-fun d!1950039 () Bool)

(assert (= bs!1542713 (and d!1950039 d!1949525)))

(assert (=> bs!1542713 (= (dynLambda!25504 lambda!339929 (h!71089 (exprs!6039 lt!2344676))) (validRegex!7891 (h!71089 (exprs!6039 lt!2344676))))))

(declare-fun m!7048628 () Bool)

(assert (=> bs!1542713 m!7048628))

(assert (=> b!6219595 d!1950039))

(check-sat (not bm!521984) (not bm!521941) (not bm!522038) (not b_lambda!236503) (not b!6220104) (not bm!521990) (not b!6220618) (not b!6219878) (not b!6220611) (not b!6220031) (not d!1949907) (not b!6220630) (not bm!521981) (not b!6220394) (not bs!1542711) (not b!6220134) (not b!6220108) (not b!6219757) (not bs!1542713) (not b!6220681) (not b!6220018) (not b!6220658) (not b!6220339) (not d!1949937) (not b!6220692) (not b!6220316) (not bm!522009) (not b!6220011) (not bm!522027) (not d!1949911) (not b!6220700) (not d!1949891) (not bm!521942) (not b!6219616) (not b!6220435) (not b!6220622) (not bm!521970) (not b!6220147) (not bm!522076) (not bm!521957) (not bm!522121) (not d!1949837) (not d!1949973) (not b!6220634) (not d!1950021) (not b!6220690) (not b!6220359) (not b!6220657) (not b!6220667) (not bm!521951) (not d!1949941) (not b!6220430) (not d!1949921) (not b!6220312) (not b!6220683) (not b!6220638) (not b!6219626) (not d!1949585) (not b!6220432) (not b!6220583) (not b!6220360) (not b!6220602) (not bs!1542708) (not b!6219596) (not b!6220598) (not b!6220095) (not bm!522112) (not bm!522066) (not b!6219926) (not b!6220318) (not b!6220665) (not setNonEmpty!42245) (not b!6220332) (not b!6220101) (not d!1949669) (not b!6220107) (not d!1949809) (not b!6220149) (not b!6220577) (not b!6219880) (not b!6220617) (not b!6220599) (not d!1949799) (not d!1949947) (not b!6220647) (not b!6220558) (not d!1949629) (not b!6220707) (not bm!522090) (not b!6220669) (not b!6219723) (not b!6220610) (not b!6220653) (not b!6220246) (not b!6220703) (not d!1949889) (not d!1949551) (not d!1949633) (not b!6220024) (not b!6219741) (not b!6220596) (not bm!522012) (not bm!521939) (not b!6220615) (not b_lambda!236495) (not d!1949919) (not d!1950023) (not b!6220352) (not b!6220696) (not b!6220642) (not bm!522089) (not b!6220631) (not b!6220099) (not bm!521955) (not b!6220671) (not b!6220650) (not d!1949587) (not b!6220633) (not d!1949823) (not b!6220247) (not bm!522120) (not b!6219698) (not b!6220678) (not b!6219749) (not b!6220686) (not b!6219939) (not d!1949755) (not b!6220711) (not b!6220623) (not b!6220331) (not b!6220607) (not b!6220646) (not b!6220019) (not b!6220250) (not b!6219951) (not b!6220662) (not bm!522116) (not d!1949887) (not b!6219817) (not b!6220014) (not bm!522030) (not bs!1542712) (not b!6220249) (not bm!522031) (not b!6220655) (not d!1949641) (not b!6219930) (not bm!521987) (not bm!522104) (not b!6219882) (not b!6220666) (not b!6220349) (not b!6219803) (not b!6220712) (not b!6220317) (not b!6219718) (not d!1949613) (not b!6219753) (not b!6220637) (not b!6220689) (not d!1949811) (not bm!521934) (not b!6219719) (not d!1949605) (not bm!521954) (not b!6220320) (not b!6220357) (not b_lambda!236501) (not b!6220152) (not b_lambda!236491) (not b!6219824) (not b!6220356) (not b!6219984) (not b!6219931) (not b!6220710) (not bm!522013) (not b!6220589) (not b!6219901) (not b!6220698) (not bm!521908) (not b!6220699) (not bm!522077) (not d!1949651) (not b!6220416) (not bs!1542710) (not bm!521905) (not b!6220038) (not bm!522019) (not b!6219699) (not b!6220706) (not bm!522028) (not bm!522041) (not bm!521911) (not b!6220315) (not b!6219914) (not b!6220663) (not d!1949567) (not b!6220614) (not d!1949995) (not b!6219730) (not b!6220639) (not d!1949671) (not b!6220325) (not d!1949717) (not d!1949715) (not b!6220350) (not b!6219869) (not d!1949793) (not b!6220415) (not d!1949801) (not bm!522040) (not b!6220346) (not bm!521938) (not d!1949855) (not bm!522079) (not b!6220597) (not bm!522007) (not d!1949975) (not b!6220644) (not bm!521906) (not b_lambda!236497) (not b!6220635) (not b!6220648) (not b!6220269) (not b!6220139) (not d!1949653) (not bm!522123) (not b!6220643) (not b!6220641) (not b!6220345) (not b!6220677) (not b!6220613) (not b!6220674) (not d!1949943) (not b!6220606) (not b!6220395) (not bm!522114) (not b!6220096) (not bm!522011) (not b!6220691) (not b!6220619) (not bm!521950) (not b!6220625) (not d!1949917) (not b!6220585) (not b!6220687) (not bm!522006) (not b_lambda!236437) (not b_lambda!236499) (not b!6220573) (not b!6219813) (not b!6220144) (not b!6219877) (not bm!522117) (not d!1949963) (not bm!521969) (not b!6220237) (not b!6220049) (not b!6220651) (not b!6220656) (not bm!522113) (not b!6220702) (not d!1949939) (not b!6219799) (not d!1949649) (not d!1949745) (not b!6220675) (not b!6220601) (not b_lambda!236439) (not b!6220682) (not bs!1542709) (not b!6219804) (not b!6219609) (not b!6220358) (not b!6220679) (not bm!522015) (not bm!521935) (not d!1949841) (not d!1949571) (not bm!522067) (not bm!522101) (not d!1950017) (not bm!522118) (not b!6220314) (not b!6220652) (not b!6219876) (not b!6220627) (not setNonEmpty!42248) (not b!6220091) (not d!1949959) (not b!6220013) (not b!6220694) (not b!6219934) (not b_lambda!236489) (not b!6220022) (not b!6219714) (not b!6219809) tp_is_empty!41563 (not d!1949693) (not b!6220605) (not b!6220048) (not b!6220062) (not b!6220626) (not b!6220389) (not bm!522037) (not b!6219936) (not bm!522102) (not bm!521982) (not b!6220704) (not b_lambda!236493) (not b!6220143) (not d!1949961) (not b!6220569) (not d!1949883) (not b!6220659) (not b!6219881) (not b!6220248) (not bm!522010) (not b!6219879) (not d!1949849) (not b!6220695) (not bm!521988) (not b!6220084) (not b!6220319) (not bm!521966) (not b!6220708) (not d!1949895) (not b!6220440) (not b!6220431) (not bm!521909) (not d!1949945) (not b!6219812) (not b!6220661) (not bm!522021) (not d!1949987) (not b!6220027) (not b!6220609) (not bm!521972) (not b!6219742) (not d!1949993) (not b!6219807) (not b!6220673) (not b!6220685) (not b!6220629) (not d!1949831) (not b!6220603) (not b!6220621) (not bm!521965) (not bm!521993) (not setNonEmpty!42241) (not b!6220670))
(check-sat)
