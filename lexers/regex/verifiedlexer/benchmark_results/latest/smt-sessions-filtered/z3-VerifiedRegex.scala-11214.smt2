; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!586552 () Bool)

(assert start!586552)

(declare-fun b!5681752 () Bool)

(assert (=> b!5681752 true))

(assert (=> b!5681752 true))

(declare-fun lambda!306166 () Int)

(declare-fun lambda!306165 () Int)

(assert (=> b!5681752 (not (= lambda!306166 lambda!306165))))

(assert (=> b!5681752 true))

(assert (=> b!5681752 true))

(declare-fun b!5681771 () Bool)

(assert (=> b!5681771 true))

(declare-fun e!3496846 () Bool)

(declare-fun e!3496853 () Bool)

(assert (=> b!5681752 (= e!3496846 e!3496853)))

(declare-fun res!2400787 () Bool)

(assert (=> b!5681752 (=> res!2400787 e!3496853)))

(declare-datatypes ((C!31620 0))(
  ( (C!31621 (val!25512 Int)) )
))
(declare-datatypes ((List!63324 0))(
  ( (Nil!63200) (Cons!63200 (h!69648 C!31620) (t!376638 List!63324)) )
))
(declare-fun s!2326 () List!63324)

(declare-fun lt!2270418 () Bool)

(declare-fun lt!2270416 () Bool)

(get-info :version)

(assert (=> b!5681752 (= res!2400787 (or (not (= lt!2270416 lt!2270418)) ((_ is Nil!63200) s!2326)))))

(declare-fun Exists!2775 (Int) Bool)

(assert (=> b!5681752 (= (Exists!2775 lambda!306165) (Exists!2775 lambda!306166))))

(declare-datatypes ((Unit!156232 0))(
  ( (Unit!156233) )
))
(declare-fun lt!2270422 () Unit!156232)

(declare-datatypes ((Regex!15675 0))(
  ( (ElementMatch!15675 (c!999837 C!31620)) (Concat!24520 (regOne!31862 Regex!15675) (regTwo!31862 Regex!15675)) (EmptyExpr!15675) (Star!15675 (reg!16004 Regex!15675)) (EmptyLang!15675) (Union!15675 (regOne!31863 Regex!15675) (regTwo!31863 Regex!15675)) )
))
(declare-fun r!7292 () Regex!15675)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1404 (Regex!15675 Regex!15675 List!63324) Unit!156232)

(assert (=> b!5681752 (= lt!2270422 (lemmaExistCutMatchRandMatchRSpecEquivalent!1404 (regOne!31862 r!7292) (regTwo!31862 r!7292) s!2326))))

(assert (=> b!5681752 (= lt!2270418 (Exists!2775 lambda!306165))))

(declare-datatypes ((tuple2!65544 0))(
  ( (tuple2!65545 (_1!36075 List!63324) (_2!36075 List!63324)) )
))
(declare-datatypes ((Option!15684 0))(
  ( (None!15683) (Some!15683 (v!51732 tuple2!65544)) )
))
(declare-fun isDefined!12387 (Option!15684) Bool)

(declare-fun findConcatSeparation!2098 (Regex!15675 Regex!15675 List!63324 List!63324 List!63324) Option!15684)

(assert (=> b!5681752 (= lt!2270418 (isDefined!12387 (findConcatSeparation!2098 (regOne!31862 r!7292) (regTwo!31862 r!7292) Nil!63200 s!2326 s!2326)))))

(declare-fun lt!2270411 () Unit!156232)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1862 (Regex!15675 Regex!15675 List!63324) Unit!156232)

(assert (=> b!5681752 (= lt!2270411 (lemmaFindConcatSeparationEquivalentToExists!1862 (regOne!31862 r!7292) (regTwo!31862 r!7292) s!2326))))

(declare-fun b!5681753 () Bool)

(declare-fun e!3496855 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!63325 0))(
  ( (Nil!63201) (Cons!63201 (h!69649 Regex!15675) (t!376639 List!63325)) )
))
(declare-datatypes ((Context!10118 0))(
  ( (Context!10119 (exprs!5559 List!63325)) )
))
(declare-fun lt!2270420 () (InoxSet Context!10118))

(declare-fun matchZipper!1813 ((InoxSet Context!10118) List!63324) Bool)

(assert (=> b!5681753 (= e!3496855 (matchZipper!1813 lt!2270420 (t!376638 s!2326)))))

(declare-fun b!5681754 () Bool)

(declare-fun e!3496854 () Bool)

(assert (=> b!5681754 (= e!3496854 true)))

(declare-fun lt!2270415 () Bool)

(declare-fun lt!2270427 () (InoxSet Context!10118))

(assert (=> b!5681754 (= lt!2270415 (matchZipper!1813 lt!2270427 (t!376638 s!2326)))))

(declare-fun lt!2270408 () Bool)

(declare-fun lt!2270413 () (InoxSet Context!10118))

(assert (=> b!5681754 (= lt!2270408 (matchZipper!1813 lt!2270413 s!2326))))

(declare-fun b!5681755 () Bool)

(declare-fun e!3496847 () Bool)

(declare-fun nullable!5707 (Regex!15675) Bool)

(assert (=> b!5681755 (= e!3496847 (nullable!5707 (regOne!31862 (regOne!31862 r!7292))))))

(declare-fun b!5681756 () Bool)

(declare-fun res!2400779 () Bool)

(declare-fun e!3496852 () Bool)

(assert (=> b!5681756 (=> (not res!2400779) (not e!3496852))))

(declare-datatypes ((List!63326 0))(
  ( (Nil!63202) (Cons!63202 (h!69650 Context!10118) (t!376640 List!63326)) )
))
(declare-fun zl!343 () List!63326)

(declare-fun unfocusZipper!1417 (List!63326) Regex!15675)

(assert (=> b!5681756 (= res!2400779 (= r!7292 (unfocusZipper!1417 zl!343)))))

(declare-fun b!5681757 () Bool)

(assert (=> b!5681757 (= e!3496852 (not e!3496846))))

(declare-fun res!2400781 () Bool)

(assert (=> b!5681757 (=> res!2400781 e!3496846)))

(assert (=> b!5681757 (= res!2400781 (not ((_ is Cons!63202) zl!343)))))

(declare-fun matchRSpec!2778 (Regex!15675 List!63324) Bool)

(assert (=> b!5681757 (= lt!2270416 (matchRSpec!2778 r!7292 s!2326))))

(declare-fun matchR!7860 (Regex!15675 List!63324) Bool)

(assert (=> b!5681757 (= lt!2270416 (matchR!7860 r!7292 s!2326))))

(declare-fun lt!2270424 () Unit!156232)

(declare-fun mainMatchTheorem!2778 (Regex!15675 List!63324) Unit!156232)

(assert (=> b!5681757 (= lt!2270424 (mainMatchTheorem!2778 r!7292 s!2326))))

(declare-fun b!5681758 () Bool)

(declare-fun e!3496856 () Bool)

(declare-fun tp!1575487 () Bool)

(assert (=> b!5681758 (= e!3496856 tp!1575487)))

(declare-fun b!5681759 () Bool)

(declare-fun e!3496844 () Bool)

(assert (=> b!5681759 (= e!3496844 e!3496854)))

(declare-fun res!2400792 () Bool)

(assert (=> b!5681759 (=> res!2400792 e!3496854)))

(declare-fun lt!2270414 () (InoxSet Context!10118))

(assert (=> b!5681759 (= res!2400792 (not (= lt!2270427 lt!2270414)))))

(declare-fun lt!2270412 () Context!10118)

(declare-fun lambda!306167 () Int)

(declare-fun flatMap!1288 ((InoxSet Context!10118) Int) (InoxSet Context!10118))

(declare-fun derivationStepZipperUp!943 (Context!10118 C!31620) (InoxSet Context!10118))

(assert (=> b!5681759 (= (flatMap!1288 lt!2270413 lambda!306167) (derivationStepZipperUp!943 lt!2270412 (h!69648 s!2326)))))

(declare-fun lt!2270428 () Unit!156232)

(declare-fun lemmaFlatMapOnSingletonSet!820 ((InoxSet Context!10118) Context!10118 Int) Unit!156232)

(assert (=> b!5681759 (= lt!2270428 (lemmaFlatMapOnSingletonSet!820 lt!2270413 lt!2270412 lambda!306167))))

(declare-fun lt!2270425 () (InoxSet Context!10118))

(assert (=> b!5681759 (= lt!2270425 (derivationStepZipperUp!943 lt!2270412 (h!69648 s!2326)))))

(declare-fun derivationStepZipper!1758 ((InoxSet Context!10118) C!31620) (InoxSet Context!10118))

(assert (=> b!5681759 (= lt!2270427 (derivationStepZipper!1758 lt!2270413 (h!69648 s!2326)))))

(assert (=> b!5681759 (= lt!2270413 (store ((as const (Array Context!10118 Bool)) false) lt!2270412 true))))

(declare-fun lt!2270423 () List!63325)

(assert (=> b!5681759 (= lt!2270412 (Context!10119 (Cons!63201 (reg!16004 (regOne!31862 r!7292)) lt!2270423)))))

(declare-fun b!5681760 () Bool)

(declare-fun e!3496849 () Bool)

(declare-fun tp!1575488 () Bool)

(assert (=> b!5681760 (= e!3496849 tp!1575488)))

(declare-fun b!5681761 () Bool)

(declare-fun e!3496851 () Bool)

(declare-fun tp!1575489 () Bool)

(declare-fun tp!1575483 () Bool)

(assert (=> b!5681761 (= e!3496851 (and tp!1575489 tp!1575483))))

(declare-fun b!5681762 () Bool)

(declare-fun res!2400785 () Bool)

(assert (=> b!5681762 (=> res!2400785 e!3496846)))

(assert (=> b!5681762 (= res!2400785 (or ((_ is EmptyExpr!15675) r!7292) ((_ is EmptyLang!15675) r!7292) ((_ is ElementMatch!15675) r!7292) ((_ is Union!15675) r!7292) (not ((_ is Concat!24520) r!7292))))))

(declare-fun b!5681763 () Bool)

(declare-fun res!2400795 () Bool)

(assert (=> b!5681763 (=> res!2400795 e!3496846)))

(assert (=> b!5681763 (= res!2400795 (not ((_ is Cons!63201) (exprs!5559 (h!69650 zl!343)))))))

(declare-fun b!5681764 () Bool)

(declare-fun e!3496848 () Bool)

(declare-fun tp_is_empty!40603 () Bool)

(declare-fun tp!1575484 () Bool)

(assert (=> b!5681764 (= e!3496848 (and tp_is_empty!40603 tp!1575484))))

(declare-fun b!5681765 () Bool)

(declare-fun e!3496850 () Unit!156232)

(declare-fun Unit!156234 () Unit!156232)

(assert (=> b!5681765 (= e!3496850 Unit!156234)))

(declare-fun setIsEmpty!38017 () Bool)

(declare-fun setRes!38017 () Bool)

(assert (=> setIsEmpty!38017 setRes!38017))

(declare-fun b!5681766 () Bool)

(declare-fun res!2400780 () Bool)

(assert (=> b!5681766 (=> res!2400780 e!3496846)))

(declare-fun generalisedConcat!1290 (List!63325) Regex!15675)

(assert (=> b!5681766 (= res!2400780 (not (= r!7292 (generalisedConcat!1290 (exprs!5559 (h!69650 zl!343))))))))

(declare-fun b!5681767 () Bool)

(declare-fun Unit!156235 () Unit!156232)

(assert (=> b!5681767 (= e!3496850 Unit!156235)))

(declare-fun lt!2270421 () Unit!156232)

(declare-fun lt!2270410 () (InoxSet Context!10118))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!700 ((InoxSet Context!10118) (InoxSet Context!10118) List!63324) Unit!156232)

(assert (=> b!5681767 (= lt!2270421 (lemmaZipperConcatMatchesSameAsBothZippers!700 lt!2270410 lt!2270420 (t!376638 s!2326)))))

(declare-fun res!2400789 () Bool)

(assert (=> b!5681767 (= res!2400789 (matchZipper!1813 lt!2270410 (t!376638 s!2326)))))

(assert (=> b!5681767 (=> res!2400789 e!3496855)))

(assert (=> b!5681767 (= (matchZipper!1813 ((_ map or) lt!2270410 lt!2270420) (t!376638 s!2326)) e!3496855)))

(declare-fun b!5681768 () Bool)

(declare-fun res!2400778 () Bool)

(assert (=> b!5681768 (=> res!2400778 e!3496846)))

(declare-fun generalisedUnion!1538 (List!63325) Regex!15675)

(declare-fun unfocusZipperList!1103 (List!63326) List!63325)

(assert (=> b!5681768 (= res!2400778 (not (= r!7292 (generalisedUnion!1538 (unfocusZipperList!1103 zl!343)))))))

(declare-fun b!5681769 () Bool)

(assert (=> b!5681769 (= e!3496851 tp_is_empty!40603)))

(declare-fun b!5681770 () Bool)

(declare-fun tp!1575485 () Bool)

(declare-fun tp!1575481 () Bool)

(assert (=> b!5681770 (= e!3496851 (and tp!1575485 tp!1575481))))

(declare-fun e!3496843 () Bool)

(assert (=> b!5681771 (= e!3496853 e!3496843)))

(declare-fun res!2400793 () Bool)

(assert (=> b!5681771 (=> res!2400793 e!3496843)))

(assert (=> b!5681771 (= res!2400793 (or (and ((_ is ElementMatch!15675) (regOne!31862 r!7292)) (= (c!999837 (regOne!31862 r!7292)) (h!69648 s!2326))) ((_ is Union!15675) (regOne!31862 r!7292))))))

(declare-fun lt!2270417 () Unit!156232)

(assert (=> b!5681771 (= lt!2270417 e!3496850)))

(declare-fun c!999836 () Bool)

(assert (=> b!5681771 (= c!999836 (nullable!5707 (h!69649 (exprs!5559 (h!69650 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!10118))

(assert (=> b!5681771 (= (flatMap!1288 z!1189 lambda!306167) (derivationStepZipperUp!943 (h!69650 zl!343) (h!69648 s!2326)))))

(declare-fun lt!2270426 () Unit!156232)

(assert (=> b!5681771 (= lt!2270426 (lemmaFlatMapOnSingletonSet!820 z!1189 (h!69650 zl!343) lambda!306167))))

(declare-fun lt!2270419 () Context!10118)

(assert (=> b!5681771 (= lt!2270420 (derivationStepZipperUp!943 lt!2270419 (h!69648 s!2326)))))

(declare-fun derivationStepZipperDown!1017 (Regex!15675 Context!10118 C!31620) (InoxSet Context!10118))

(assert (=> b!5681771 (= lt!2270410 (derivationStepZipperDown!1017 (h!69649 (exprs!5559 (h!69650 zl!343))) lt!2270419 (h!69648 s!2326)))))

(assert (=> b!5681771 (= lt!2270419 (Context!10119 (t!376639 (exprs!5559 (h!69650 zl!343)))))))

(declare-fun lt!2270409 () (InoxSet Context!10118))

(assert (=> b!5681771 (= lt!2270409 (derivationStepZipperUp!943 (Context!10119 (Cons!63201 (h!69649 (exprs!5559 (h!69650 zl!343))) (t!376639 (exprs!5559 (h!69650 zl!343))))) (h!69648 s!2326)))))

(declare-fun res!2400788 () Bool)

(assert (=> start!586552 (=> (not res!2400788) (not e!3496852))))

(declare-fun validRegex!7411 (Regex!15675) Bool)

(assert (=> start!586552 (= res!2400788 (validRegex!7411 r!7292))))

(assert (=> start!586552 e!3496852))

(assert (=> start!586552 e!3496851))

(declare-fun condSetEmpty!38017 () Bool)

(assert (=> start!586552 (= condSetEmpty!38017 (= z!1189 ((as const (Array Context!10118 Bool)) false)))))

(assert (=> start!586552 setRes!38017))

(declare-fun e!3496845 () Bool)

(assert (=> start!586552 e!3496845))

(assert (=> start!586552 e!3496848))

(declare-fun b!5681772 () Bool)

(declare-fun res!2400794 () Bool)

(assert (=> b!5681772 (=> res!2400794 e!3496843)))

(assert (=> b!5681772 (= res!2400794 e!3496847)))

(declare-fun res!2400782 () Bool)

(assert (=> b!5681772 (=> (not res!2400782) (not e!3496847))))

(assert (=> b!5681772 (= res!2400782 ((_ is Concat!24520) (regOne!31862 r!7292)))))

(declare-fun tp!1575490 () Bool)

(declare-fun b!5681773 () Bool)

(declare-fun inv!82434 (Context!10118) Bool)

(assert (=> b!5681773 (= e!3496845 (and (inv!82434 (h!69650 zl!343)) e!3496856 tp!1575490))))

(declare-fun b!5681774 () Bool)

(declare-fun res!2400790 () Bool)

(assert (=> b!5681774 (=> res!2400790 e!3496846)))

(declare-fun isEmpty!35053 (List!63326) Bool)

(assert (=> b!5681774 (= res!2400790 (not (isEmpty!35053 (t!376640 zl!343))))))

(declare-fun setNonEmpty!38017 () Bool)

(declare-fun setElem!38017 () Context!10118)

(declare-fun tp!1575482 () Bool)

(assert (=> setNonEmpty!38017 (= setRes!38017 (and tp!1575482 (inv!82434 setElem!38017) e!3496849))))

(declare-fun setRest!38017 () (InoxSet Context!10118))

(assert (=> setNonEmpty!38017 (= z!1189 ((_ map or) (store ((as const (Array Context!10118 Bool)) false) setElem!38017 true) setRest!38017))))

(declare-fun b!5681775 () Bool)

(declare-fun res!2400791 () Bool)

(assert (=> b!5681775 (=> res!2400791 e!3496843)))

(assert (=> b!5681775 (= res!2400791 (or ((_ is Concat!24520) (regOne!31862 r!7292)) (not ((_ is Star!15675) (regOne!31862 r!7292)))))))

(declare-fun b!5681776 () Bool)

(declare-fun res!2400784 () Bool)

(assert (=> b!5681776 (=> res!2400784 e!3496853)))

(declare-fun isEmpty!35054 (List!63325) Bool)

(assert (=> b!5681776 (= res!2400784 (isEmpty!35054 (t!376639 (exprs!5559 (h!69650 zl!343)))))))

(declare-fun b!5681777 () Bool)

(declare-fun tp!1575486 () Bool)

(assert (=> b!5681777 (= e!3496851 tp!1575486)))

(declare-fun b!5681778 () Bool)

(assert (=> b!5681778 (= e!3496843 e!3496844)))

(declare-fun res!2400783 () Bool)

(assert (=> b!5681778 (=> res!2400783 e!3496844)))

(assert (=> b!5681778 (= res!2400783 (not (= lt!2270410 lt!2270414)))))

(assert (=> b!5681778 (= lt!2270414 (derivationStepZipperDown!1017 (reg!16004 (regOne!31862 r!7292)) (Context!10119 lt!2270423) (h!69648 s!2326)))))

(assert (=> b!5681778 (= lt!2270423 (Cons!63201 (Star!15675 (reg!16004 (regOne!31862 r!7292))) (t!376639 (exprs!5559 (h!69650 zl!343)))))))

(declare-fun b!5681779 () Bool)

(declare-fun res!2400786 () Bool)

(assert (=> b!5681779 (=> (not res!2400786) (not e!3496852))))

(declare-fun toList!9459 ((InoxSet Context!10118)) List!63326)

(assert (=> b!5681779 (= res!2400786 (= (toList!9459 z!1189) zl!343))))

(assert (= (and start!586552 res!2400788) b!5681779))

(assert (= (and b!5681779 res!2400786) b!5681756))

(assert (= (and b!5681756 res!2400779) b!5681757))

(assert (= (and b!5681757 (not res!2400781)) b!5681774))

(assert (= (and b!5681774 (not res!2400790)) b!5681766))

(assert (= (and b!5681766 (not res!2400780)) b!5681763))

(assert (= (and b!5681763 (not res!2400795)) b!5681768))

(assert (= (and b!5681768 (not res!2400778)) b!5681762))

(assert (= (and b!5681762 (not res!2400785)) b!5681752))

(assert (= (and b!5681752 (not res!2400787)) b!5681776))

(assert (= (and b!5681776 (not res!2400784)) b!5681771))

(assert (= (and b!5681771 c!999836) b!5681767))

(assert (= (and b!5681771 (not c!999836)) b!5681765))

(assert (= (and b!5681767 (not res!2400789)) b!5681753))

(assert (= (and b!5681771 (not res!2400793)) b!5681772))

(assert (= (and b!5681772 res!2400782) b!5681755))

(assert (= (and b!5681772 (not res!2400794)) b!5681775))

(assert (= (and b!5681775 (not res!2400791)) b!5681778))

(assert (= (and b!5681778 (not res!2400783)) b!5681759))

(assert (= (and b!5681759 (not res!2400792)) b!5681754))

(assert (= (and start!586552 ((_ is ElementMatch!15675) r!7292)) b!5681769))

(assert (= (and start!586552 ((_ is Concat!24520) r!7292)) b!5681761))

(assert (= (and start!586552 ((_ is Star!15675) r!7292)) b!5681777))

(assert (= (and start!586552 ((_ is Union!15675) r!7292)) b!5681770))

(assert (= (and start!586552 condSetEmpty!38017) setIsEmpty!38017))

(assert (= (and start!586552 (not condSetEmpty!38017)) setNonEmpty!38017))

(assert (= setNonEmpty!38017 b!5681760))

(assert (= b!5681773 b!5681758))

(assert (= (and start!586552 ((_ is Cons!63202) zl!343)) b!5681773))

(assert (= (and start!586552 ((_ is Cons!63200) s!2326)) b!5681764))

(declare-fun m!6640960 () Bool)

(assert (=> b!5681771 m!6640960))

(declare-fun m!6640962 () Bool)

(assert (=> b!5681771 m!6640962))

(declare-fun m!6640964 () Bool)

(assert (=> b!5681771 m!6640964))

(declare-fun m!6640966 () Bool)

(assert (=> b!5681771 m!6640966))

(declare-fun m!6640968 () Bool)

(assert (=> b!5681771 m!6640968))

(declare-fun m!6640970 () Bool)

(assert (=> b!5681771 m!6640970))

(declare-fun m!6640972 () Bool)

(assert (=> b!5681771 m!6640972))

(declare-fun m!6640974 () Bool)

(assert (=> b!5681756 m!6640974))

(declare-fun m!6640976 () Bool)

(assert (=> b!5681773 m!6640976))

(declare-fun m!6640978 () Bool)

(assert (=> b!5681778 m!6640978))

(declare-fun m!6640980 () Bool)

(assert (=> setNonEmpty!38017 m!6640980))

(declare-fun m!6640982 () Bool)

(assert (=> b!5681759 m!6640982))

(declare-fun m!6640984 () Bool)

(assert (=> b!5681759 m!6640984))

(declare-fun m!6640986 () Bool)

(assert (=> b!5681759 m!6640986))

(declare-fun m!6640988 () Bool)

(assert (=> b!5681759 m!6640988))

(declare-fun m!6640990 () Bool)

(assert (=> b!5681759 m!6640990))

(declare-fun m!6640992 () Bool)

(assert (=> b!5681757 m!6640992))

(declare-fun m!6640994 () Bool)

(assert (=> b!5681757 m!6640994))

(declare-fun m!6640996 () Bool)

(assert (=> b!5681757 m!6640996))

(declare-fun m!6640998 () Bool)

(assert (=> start!586552 m!6640998))

(declare-fun m!6641000 () Bool)

(assert (=> b!5681755 m!6641000))

(declare-fun m!6641002 () Bool)

(assert (=> b!5681752 m!6641002))

(declare-fun m!6641004 () Bool)

(assert (=> b!5681752 m!6641004))

(declare-fun m!6641006 () Bool)

(assert (=> b!5681752 m!6641006))

(declare-fun m!6641008 () Bool)

(assert (=> b!5681752 m!6641008))

(assert (=> b!5681752 m!6641006))

(declare-fun m!6641010 () Bool)

(assert (=> b!5681752 m!6641010))

(assert (=> b!5681752 m!6641002))

(declare-fun m!6641012 () Bool)

(assert (=> b!5681752 m!6641012))

(declare-fun m!6641014 () Bool)

(assert (=> b!5681753 m!6641014))

(declare-fun m!6641016 () Bool)

(assert (=> b!5681768 m!6641016))

(assert (=> b!5681768 m!6641016))

(declare-fun m!6641018 () Bool)

(assert (=> b!5681768 m!6641018))

(declare-fun m!6641020 () Bool)

(assert (=> b!5681774 m!6641020))

(declare-fun m!6641022 () Bool)

(assert (=> b!5681776 m!6641022))

(declare-fun m!6641024 () Bool)

(assert (=> b!5681779 m!6641024))

(declare-fun m!6641026 () Bool)

(assert (=> b!5681766 m!6641026))

(declare-fun m!6641028 () Bool)

(assert (=> b!5681754 m!6641028))

(declare-fun m!6641030 () Bool)

(assert (=> b!5681754 m!6641030))

(declare-fun m!6641032 () Bool)

(assert (=> b!5681767 m!6641032))

(declare-fun m!6641034 () Bool)

(assert (=> b!5681767 m!6641034))

(declare-fun m!6641036 () Bool)

(assert (=> b!5681767 m!6641036))

(check-sat (not b!5681752) (not b!5681754) (not b!5681774) (not b!5681755) (not b!5681773) (not b!5681778) (not b!5681766) (not b!5681767) (not b!5681756) (not b!5681771) (not b!5681777) (not b!5681757) (not b!5681764) (not b!5681758) (not b!5681779) (not setNonEmpty!38017) (not b!5681760) (not b!5681759) (not start!586552) (not b!5681768) tp_is_empty!40603 (not b!5681770) (not b!5681761) (not b!5681776) (not b!5681753))
(check-sat)
