; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!575786 () Bool)

(assert start!575786)

(declare-fun b!5513745 () Bool)

(assert (=> b!5513745 true))

(assert (=> b!5513745 true))

(declare-fun lambda!295458 () Int)

(declare-fun lambda!295457 () Int)

(assert (=> b!5513745 (not (= lambda!295458 lambda!295457))))

(assert (=> b!5513745 true))

(assert (=> b!5513745 true))

(declare-fun b!5513755 () Bool)

(assert (=> b!5513755 true))

(declare-fun b!5513736 () Bool)

(declare-fun e!3409679 () Bool)

(declare-fun tp!1516941 () Bool)

(declare-datatypes ((C!31272 0))(
  ( (C!31273 (val!25338 Int)) )
))
(declare-datatypes ((Regex!15501 0))(
  ( (ElementMatch!15501 (c!963733 C!31272)) (Concat!24346 (regOne!31514 Regex!15501) (regTwo!31514 Regex!15501)) (EmptyExpr!15501) (Star!15501 (reg!15830 Regex!15501)) (EmptyLang!15501) (Union!15501 (regOne!31515 Regex!15501) (regTwo!31515 Regex!15501)) )
))
(declare-datatypes ((List!62802 0))(
  ( (Nil!62678) (Cons!62678 (h!69126 Regex!15501) (t!376049 List!62802)) )
))
(declare-datatypes ((Context!9770 0))(
  ( (Context!9771 (exprs!5385 List!62802)) )
))
(declare-datatypes ((List!62803 0))(
  ( (Nil!62679) (Cons!62679 (h!69127 Context!9770) (t!376050 List!62803)) )
))
(declare-fun zl!343 () List!62803)

(declare-fun e!3409686 () Bool)

(declare-fun inv!81999 (Context!9770) Bool)

(assert (=> b!5513736 (= e!3409679 (and (inv!81999 (h!69127 zl!343)) e!3409686 tp!1516941))))

(declare-fun b!5513737 () Bool)

(declare-fun res!2349344 () Bool)

(declare-fun e!3409677 () Bool)

(assert (=> b!5513737 (=> res!2349344 e!3409677)))

(declare-fun r!7292 () Regex!15501)

(get-info :version)

(assert (=> b!5513737 (= res!2349344 (or ((_ is EmptyExpr!15501) r!7292) ((_ is EmptyLang!15501) r!7292) ((_ is ElementMatch!15501) r!7292) ((_ is Union!15501) r!7292) (not ((_ is Concat!24346) r!7292))))))

(declare-fun b!5513738 () Bool)

(declare-fun e!3409682 () Bool)

(declare-fun tp!1516940 () Bool)

(declare-fun tp!1516943 () Bool)

(assert (=> b!5513738 (= e!3409682 (and tp!1516940 tp!1516943))))

(declare-fun b!5513739 () Bool)

(declare-fun res!2349340 () Bool)

(assert (=> b!5513739 (=> res!2349340 e!3409677)))

(declare-fun isEmpty!34461 (List!62803) Bool)

(assert (=> b!5513739 (= res!2349340 (not (isEmpty!34461 (t!376050 zl!343))))))

(declare-fun b!5513740 () Bool)

(declare-fun res!2349342 () Bool)

(assert (=> b!5513740 (=> res!2349342 e!3409677)))

(assert (=> b!5513740 (= res!2349342 (not ((_ is Cons!62678) (exprs!5385 (h!69127 zl!343)))))))

(declare-fun b!5513741 () Bool)

(declare-fun tp_is_empty!40255 () Bool)

(assert (=> b!5513741 (= e!3409682 tp_is_empty!40255)))

(declare-fun b!5513742 () Bool)

(declare-fun res!2349341 () Bool)

(assert (=> b!5513742 (=> res!2349341 e!3409677)))

(declare-fun generalisedConcat!1116 (List!62802) Regex!15501)

(assert (=> b!5513742 (= res!2349341 (not (= r!7292 (generalisedConcat!1116 (exprs!5385 (h!69127 zl!343))))))))

(declare-fun b!5513743 () Bool)

(declare-fun e!3409681 () Bool)

(declare-fun e!3409675 () Bool)

(assert (=> b!5513743 (= e!3409681 e!3409675)))

(declare-fun res!2349336 () Bool)

(assert (=> b!5513743 (=> res!2349336 e!3409675)))

(declare-fun lt!2245698 () Bool)

(declare-datatypes ((List!62804 0))(
  ( (Nil!62680) (Cons!62680 (h!69128 C!31272) (t!376051 List!62804)) )
))
(declare-fun s!2326 () List!62804)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2245694 () (InoxSet Context!9770))

(declare-fun matchZipper!1659 ((InoxSet Context!9770) List!62804) Bool)

(assert (=> b!5513743 (= res!2349336 (not (= lt!2245698 (matchZipper!1659 lt!2245694 (t!376051 s!2326)))))))

(declare-fun lt!2245692 () Bool)

(assert (=> b!5513743 (= lt!2245692 lt!2245698)))

(declare-fun e!3409685 () Bool)

(assert (=> b!5513743 (= lt!2245698 e!3409685)))

(declare-fun res!2349349 () Bool)

(assert (=> b!5513743 (=> res!2349349 e!3409685)))

(declare-fun lt!2245684 () Bool)

(assert (=> b!5513743 (= res!2349349 lt!2245684)))

(declare-fun lt!2245678 () (InoxSet Context!9770))

(assert (=> b!5513743 (= lt!2245692 (matchZipper!1659 lt!2245678 (t!376051 s!2326)))))

(declare-fun lt!2245677 () (InoxSet Context!9770))

(assert (=> b!5513743 (= lt!2245684 (matchZipper!1659 lt!2245677 (t!376051 s!2326)))))

(declare-fun lt!2245696 () (InoxSet Context!9770))

(declare-datatypes ((Unit!155462 0))(
  ( (Unit!155463) )
))
(declare-fun lt!2245695 () Unit!155462)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!548 ((InoxSet Context!9770) (InoxSet Context!9770) List!62804) Unit!155462)

(assert (=> b!5513743 (= lt!2245695 (lemmaZipperConcatMatchesSameAsBothZippers!548 lt!2245677 lt!2245696 (t!376051 s!2326)))))

(declare-fun b!5513744 () Bool)

(declare-fun e!3409678 () Bool)

(assert (=> b!5513744 (= e!3409678 e!3409681)))

(declare-fun res!2349347 () Bool)

(assert (=> b!5513744 (=> res!2349347 e!3409681)))

(assert (=> b!5513744 (= res!2349347 (not (= lt!2245694 lt!2245678)))))

(assert (=> b!5513744 (= lt!2245678 ((_ map or) lt!2245677 lt!2245696))))

(declare-fun e!3409684 () Bool)

(assert (=> b!5513745 (= e!3409677 e!3409684)))

(declare-fun res!2349334 () Bool)

(assert (=> b!5513745 (=> res!2349334 e!3409684)))

(declare-fun lt!2245699 () Bool)

(declare-fun lt!2245679 () Bool)

(assert (=> b!5513745 (= res!2349334 (or (not (= lt!2245699 lt!2245679)) ((_ is Nil!62680) s!2326)))))

(declare-fun Exists!2601 (Int) Bool)

(assert (=> b!5513745 (= (Exists!2601 lambda!295457) (Exists!2601 lambda!295458))))

(declare-fun lt!2245690 () Unit!155462)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1230 (Regex!15501 Regex!15501 List!62804) Unit!155462)

(assert (=> b!5513745 (= lt!2245690 (lemmaExistCutMatchRandMatchRSpecEquivalent!1230 (regOne!31514 r!7292) (regTwo!31514 r!7292) s!2326))))

(assert (=> b!5513745 (= lt!2245679 (Exists!2601 lambda!295457))))

(declare-datatypes ((tuple2!65196 0))(
  ( (tuple2!65197 (_1!35901 List!62804) (_2!35901 List!62804)) )
))
(declare-datatypes ((Option!15510 0))(
  ( (None!15509) (Some!15509 (v!51544 tuple2!65196)) )
))
(declare-fun isDefined!12213 (Option!15510) Bool)

(declare-fun findConcatSeparation!1924 (Regex!15501 Regex!15501 List!62804 List!62804 List!62804) Option!15510)

(assert (=> b!5513745 (= lt!2245679 (isDefined!12213 (findConcatSeparation!1924 (regOne!31514 r!7292) (regTwo!31514 r!7292) Nil!62680 s!2326 s!2326)))))

(declare-fun lt!2245693 () Unit!155462)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1688 (Regex!15501 Regex!15501 List!62804) Unit!155462)

(assert (=> b!5513745 (= lt!2245693 (lemmaFindConcatSeparationEquivalentToExists!1688 (regOne!31514 r!7292) (regTwo!31514 r!7292) s!2326))))

(declare-fun setIsEmpty!36633 () Bool)

(declare-fun setRes!36633 () Bool)

(assert (=> setIsEmpty!36633 setRes!36633))

(declare-fun b!5513746 () Bool)

(declare-fun res!2349338 () Bool)

(declare-fun e!3409676 () Bool)

(assert (=> b!5513746 (=> (not res!2349338) (not e!3409676))))

(declare-fun z!1189 () (InoxSet Context!9770))

(declare-fun toList!9285 ((InoxSet Context!9770)) List!62803)

(assert (=> b!5513746 (= res!2349338 (= (toList!9285 z!1189) zl!343))))

(declare-fun b!5513747 () Bool)

(declare-fun e!3409680 () Bool)

(declare-fun tp!1516946 () Bool)

(assert (=> b!5513747 (= e!3409680 tp!1516946)))

(declare-fun b!5513748 () Bool)

(declare-fun tp!1516945 () Bool)

(assert (=> b!5513748 (= e!3409686 tp!1516945)))

(declare-fun lt!2245685 () (InoxSet Context!9770))

(declare-fun lt!2245676 () (InoxSet Context!9770))

(declare-fun b!5513749 () Bool)

(assert (=> b!5513749 (= e!3409675 (or (not (= lt!2245676 ((_ map or) lt!2245677 lt!2245685))) (not (= lt!2245676 lt!2245678)) (= lt!2245676 lt!2245694)))))

(declare-fun b!5513751 () Bool)

(declare-fun tp!1516939 () Bool)

(declare-fun tp!1516947 () Bool)

(assert (=> b!5513751 (= e!3409682 (and tp!1516939 tp!1516947))))

(declare-fun b!5513752 () Bool)

(assert (=> b!5513752 (= e!3409685 (matchZipper!1659 lt!2245696 (t!376051 s!2326)))))

(declare-fun b!5513753 () Bool)

(assert (=> b!5513753 (= e!3409676 (not e!3409677))))

(declare-fun res!2349337 () Bool)

(assert (=> b!5513753 (=> res!2349337 e!3409677)))

(assert (=> b!5513753 (= res!2349337 (not ((_ is Cons!62679) zl!343)))))

(declare-fun matchRSpec!2604 (Regex!15501 List!62804) Bool)

(assert (=> b!5513753 (= lt!2245699 (matchRSpec!2604 r!7292 s!2326))))

(declare-fun matchR!7686 (Regex!15501 List!62804) Bool)

(assert (=> b!5513753 (= lt!2245699 (matchR!7686 r!7292 s!2326))))

(declare-fun lt!2245700 () Unit!155462)

(declare-fun mainMatchTheorem!2604 (Regex!15501 List!62804) Unit!155462)

(assert (=> b!5513753 (= lt!2245700 (mainMatchTheorem!2604 r!7292 s!2326))))

(declare-fun b!5513754 () Bool)

(declare-fun res!2349339 () Bool)

(assert (=> b!5513754 (=> res!2349339 e!3409684)))

(declare-fun isEmpty!34462 (List!62802) Bool)

(assert (=> b!5513754 (= res!2349339 (not (isEmpty!34462 (t!376049 (exprs!5385 (h!69127 zl!343))))))))

(declare-fun e!3409673 () Bool)

(declare-fun e!3409674 () Bool)

(assert (=> b!5513755 (= e!3409673 e!3409674)))

(declare-fun res!2349345 () Bool)

(assert (=> b!5513755 (=> res!2349345 e!3409674)))

(declare-fun lt!2245681 () (InoxSet Context!9770))

(assert (=> b!5513755 (= res!2349345 (not (= lt!2245694 lt!2245681)))))

(declare-fun lambda!295459 () Int)

(declare-fun flatMap!1114 ((InoxSet Context!9770) Int) (InoxSet Context!9770))

(declare-fun derivationStepZipperUp!769 (Context!9770 C!31272) (InoxSet Context!9770))

(assert (=> b!5513755 (= (flatMap!1114 z!1189 lambda!295459) (derivationStepZipperUp!769 (h!69127 zl!343) (h!69128 s!2326)))))

(declare-fun lt!2245686 () Unit!155462)

(declare-fun lemmaFlatMapOnSingletonSet!646 ((InoxSet Context!9770) Context!9770 Int) Unit!155462)

(assert (=> b!5513755 (= lt!2245686 (lemmaFlatMapOnSingletonSet!646 z!1189 (h!69127 zl!343) lambda!295459))))

(declare-fun b!5513756 () Bool)

(assert (=> b!5513756 (= e!3409674 e!3409678)))

(declare-fun res!2349343 () Bool)

(assert (=> b!5513756 (=> res!2349343 e!3409678)))

(declare-fun nullable!5535 (Regex!15501) Bool)

(assert (=> b!5513756 (= res!2349343 (not (nullable!5535 (regOne!31514 r!7292))))))

(declare-fun lt!2245683 () Context!9770)

(declare-fun derivationStepZipperDown!843 (Regex!15501 Context!9770 C!31272) (InoxSet Context!9770))

(assert (=> b!5513756 (= lt!2245696 (derivationStepZipperDown!843 (regTwo!31514 r!7292) lt!2245683 (h!69128 s!2326)))))

(declare-fun lt!2245697 () Context!9770)

(assert (=> b!5513756 (= lt!2245677 (derivationStepZipperDown!843 (regOne!31514 r!7292) lt!2245697 (h!69128 s!2326)))))

(declare-fun lt!2245687 () (InoxSet Context!9770))

(assert (=> b!5513756 (= (flatMap!1114 lt!2245687 lambda!295459) (derivationStepZipperUp!769 lt!2245697 (h!69128 s!2326)))))

(declare-fun lt!2245701 () Unit!155462)

(assert (=> b!5513756 (= lt!2245701 (lemmaFlatMapOnSingletonSet!646 lt!2245687 lt!2245697 lambda!295459))))

(declare-fun lt!2245689 () (InoxSet Context!9770))

(declare-fun lt!2245680 () Context!9770)

(assert (=> b!5513756 (= (flatMap!1114 lt!2245689 lambda!295459) (derivationStepZipperUp!769 lt!2245680 (h!69128 s!2326)))))

(declare-fun lt!2245691 () Unit!155462)

(assert (=> b!5513756 (= lt!2245691 (lemmaFlatMapOnSingletonSet!646 lt!2245689 lt!2245680 lambda!295459))))

(assert (=> b!5513756 (= lt!2245685 (derivationStepZipperUp!769 lt!2245697 (h!69128 s!2326)))))

(assert (=> b!5513756 (= lt!2245676 (derivationStepZipperUp!769 lt!2245680 (h!69128 s!2326)))))

(assert (=> b!5513756 (= lt!2245687 (store ((as const (Array Context!9770 Bool)) false) lt!2245697 true))))

(declare-fun lt!2245688 () List!62802)

(assert (=> b!5513756 (= lt!2245697 (Context!9771 lt!2245688))))

(assert (=> b!5513756 (= lt!2245689 (store ((as const (Array Context!9770 Bool)) false) lt!2245680 true))))

(assert (=> b!5513756 (= lt!2245680 (Context!9771 (Cons!62678 (regOne!31514 r!7292) lt!2245688)))))

(assert (=> b!5513756 (= lt!2245688 (Cons!62678 (regTwo!31514 r!7292) Nil!62678))))

(declare-fun b!5513757 () Bool)

(declare-fun res!2349335 () Bool)

(assert (=> b!5513757 (=> res!2349335 e!3409677)))

(declare-fun generalisedUnion!1364 (List!62802) Regex!15501)

(declare-fun unfocusZipperList!929 (List!62803) List!62802)

(assert (=> b!5513757 (= res!2349335 (not (= r!7292 (generalisedUnion!1364 (unfocusZipperList!929 zl!343)))))))

(declare-fun b!5513758 () Bool)

(declare-fun tp!1516942 () Bool)

(assert (=> b!5513758 (= e!3409682 tp!1516942)))

(declare-fun b!5513759 () Bool)

(declare-fun res!2349348 () Bool)

(assert (=> b!5513759 (=> (not res!2349348) (not e!3409676))))

(declare-fun unfocusZipper!1243 (List!62803) Regex!15501)

(assert (=> b!5513759 (= res!2349348 (= r!7292 (unfocusZipper!1243 zl!343)))))

(declare-fun b!5513760 () Bool)

(declare-fun e!3409683 () Bool)

(declare-fun tp!1516944 () Bool)

(assert (=> b!5513760 (= e!3409683 (and tp_is_empty!40255 tp!1516944))))

(declare-fun setNonEmpty!36633 () Bool)

(declare-fun tp!1516938 () Bool)

(declare-fun setElem!36633 () Context!9770)

(assert (=> setNonEmpty!36633 (= setRes!36633 (and tp!1516938 (inv!81999 setElem!36633) e!3409680))))

(declare-fun setRest!36633 () (InoxSet Context!9770))

(assert (=> setNonEmpty!36633 (= z!1189 ((_ map or) (store ((as const (Array Context!9770 Bool)) false) setElem!36633 true) setRest!36633))))

(declare-fun b!5513750 () Bool)

(assert (=> b!5513750 (= e!3409684 e!3409673)))

(declare-fun res!2349350 () Bool)

(assert (=> b!5513750 (=> res!2349350 e!3409673)))

(declare-fun lt!2245682 () (InoxSet Context!9770))

(assert (=> b!5513750 (= res!2349350 (not (= lt!2245682 lt!2245681)))))

(assert (=> b!5513750 (= lt!2245681 (derivationStepZipperDown!843 r!7292 lt!2245683 (h!69128 s!2326)))))

(assert (=> b!5513750 (= lt!2245683 (Context!9771 Nil!62678))))

(assert (=> b!5513750 (= lt!2245682 (derivationStepZipperUp!769 (Context!9771 (Cons!62678 r!7292 Nil!62678)) (h!69128 s!2326)))))

(declare-fun derivationStepZipper!1606 ((InoxSet Context!9770) C!31272) (InoxSet Context!9770))

(assert (=> b!5513750 (= lt!2245694 (derivationStepZipper!1606 z!1189 (h!69128 s!2326)))))

(declare-fun res!2349346 () Bool)

(assert (=> start!575786 (=> (not res!2349346) (not e!3409676))))

(declare-fun validRegex!7237 (Regex!15501) Bool)

(assert (=> start!575786 (= res!2349346 (validRegex!7237 r!7292))))

(assert (=> start!575786 e!3409676))

(assert (=> start!575786 e!3409682))

(declare-fun condSetEmpty!36633 () Bool)

(assert (=> start!575786 (= condSetEmpty!36633 (= z!1189 ((as const (Array Context!9770 Bool)) false)))))

(assert (=> start!575786 setRes!36633))

(assert (=> start!575786 e!3409679))

(assert (=> start!575786 e!3409683))

(assert (= (and start!575786 res!2349346) b!5513746))

(assert (= (and b!5513746 res!2349338) b!5513759))

(assert (= (and b!5513759 res!2349348) b!5513753))

(assert (= (and b!5513753 (not res!2349337)) b!5513739))

(assert (= (and b!5513739 (not res!2349340)) b!5513742))

(assert (= (and b!5513742 (not res!2349341)) b!5513740))

(assert (= (and b!5513740 (not res!2349342)) b!5513757))

(assert (= (and b!5513757 (not res!2349335)) b!5513737))

(assert (= (and b!5513737 (not res!2349344)) b!5513745))

(assert (= (and b!5513745 (not res!2349334)) b!5513754))

(assert (= (and b!5513754 (not res!2349339)) b!5513750))

(assert (= (and b!5513750 (not res!2349350)) b!5513755))

(assert (= (and b!5513755 (not res!2349345)) b!5513756))

(assert (= (and b!5513756 (not res!2349343)) b!5513744))

(assert (= (and b!5513744 (not res!2349347)) b!5513743))

(assert (= (and b!5513743 (not res!2349349)) b!5513752))

(assert (= (and b!5513743 (not res!2349336)) b!5513749))

(assert (= (and start!575786 ((_ is ElementMatch!15501) r!7292)) b!5513741))

(assert (= (and start!575786 ((_ is Concat!24346) r!7292)) b!5513751))

(assert (= (and start!575786 ((_ is Star!15501) r!7292)) b!5513758))

(assert (= (and start!575786 ((_ is Union!15501) r!7292)) b!5513738))

(assert (= (and start!575786 condSetEmpty!36633) setIsEmpty!36633))

(assert (= (and start!575786 (not condSetEmpty!36633)) setNonEmpty!36633))

(assert (= setNonEmpty!36633 b!5513747))

(assert (= b!5513736 b!5513748))

(assert (= (and start!575786 ((_ is Cons!62679) zl!343)) b!5513736))

(assert (= (and start!575786 ((_ is Cons!62680) s!2326)) b!5513760))

(declare-fun m!6518086 () Bool)

(assert (=> b!5513755 m!6518086))

(declare-fun m!6518088 () Bool)

(assert (=> b!5513755 m!6518088))

(declare-fun m!6518090 () Bool)

(assert (=> b!5513755 m!6518090))

(declare-fun m!6518092 () Bool)

(assert (=> b!5513759 m!6518092))

(declare-fun m!6518094 () Bool)

(assert (=> setNonEmpty!36633 m!6518094))

(declare-fun m!6518096 () Bool)

(assert (=> b!5513756 m!6518096))

(declare-fun m!6518098 () Bool)

(assert (=> b!5513756 m!6518098))

(declare-fun m!6518100 () Bool)

(assert (=> b!5513756 m!6518100))

(declare-fun m!6518102 () Bool)

(assert (=> b!5513756 m!6518102))

(declare-fun m!6518104 () Bool)

(assert (=> b!5513756 m!6518104))

(declare-fun m!6518106 () Bool)

(assert (=> b!5513756 m!6518106))

(declare-fun m!6518108 () Bool)

(assert (=> b!5513756 m!6518108))

(declare-fun m!6518110 () Bool)

(assert (=> b!5513756 m!6518110))

(declare-fun m!6518112 () Bool)

(assert (=> b!5513756 m!6518112))

(declare-fun m!6518114 () Bool)

(assert (=> b!5513756 m!6518114))

(declare-fun m!6518116 () Bool)

(assert (=> b!5513756 m!6518116))

(declare-fun m!6518118 () Bool)

(assert (=> b!5513745 m!6518118))

(declare-fun m!6518120 () Bool)

(assert (=> b!5513745 m!6518120))

(declare-fun m!6518122 () Bool)

(assert (=> b!5513745 m!6518122))

(assert (=> b!5513745 m!6518120))

(declare-fun m!6518124 () Bool)

(assert (=> b!5513745 m!6518124))

(declare-fun m!6518126 () Bool)

(assert (=> b!5513745 m!6518126))

(assert (=> b!5513745 m!6518124))

(declare-fun m!6518128 () Bool)

(assert (=> b!5513745 m!6518128))

(declare-fun m!6518130 () Bool)

(assert (=> start!575786 m!6518130))

(declare-fun m!6518132 () Bool)

(assert (=> b!5513743 m!6518132))

(declare-fun m!6518134 () Bool)

(assert (=> b!5513743 m!6518134))

(declare-fun m!6518136 () Bool)

(assert (=> b!5513743 m!6518136))

(declare-fun m!6518138 () Bool)

(assert (=> b!5513743 m!6518138))

(declare-fun m!6518140 () Bool)

(assert (=> b!5513757 m!6518140))

(assert (=> b!5513757 m!6518140))

(declare-fun m!6518142 () Bool)

(assert (=> b!5513757 m!6518142))

(declare-fun m!6518144 () Bool)

(assert (=> b!5513750 m!6518144))

(declare-fun m!6518146 () Bool)

(assert (=> b!5513750 m!6518146))

(declare-fun m!6518148 () Bool)

(assert (=> b!5513750 m!6518148))

(declare-fun m!6518150 () Bool)

(assert (=> b!5513736 m!6518150))

(declare-fun m!6518152 () Bool)

(assert (=> b!5513742 m!6518152))

(declare-fun m!6518154 () Bool)

(assert (=> b!5513746 m!6518154))

(declare-fun m!6518156 () Bool)

(assert (=> b!5513752 m!6518156))

(declare-fun m!6518158 () Bool)

(assert (=> b!5513739 m!6518158))

(declare-fun m!6518160 () Bool)

(assert (=> b!5513753 m!6518160))

(declare-fun m!6518162 () Bool)

(assert (=> b!5513753 m!6518162))

(declare-fun m!6518164 () Bool)

(assert (=> b!5513753 m!6518164))

(declare-fun m!6518166 () Bool)

(assert (=> b!5513754 m!6518166))

(check-sat (not b!5513754) (not b!5513758) (not b!5513750) (not setNonEmpty!36633) (not b!5513736) (not b!5513757) (not b!5513739) (not b!5513756) (not b!5513742) (not start!575786) (not b!5513748) (not b!5513751) (not b!5513745) (not b!5513753) (not b!5513743) (not b!5513752) (not b!5513760) (not b!5513746) tp_is_empty!40255 (not b!5513738) (not b!5513747) (not b!5513755) (not b!5513759))
(check-sat)
