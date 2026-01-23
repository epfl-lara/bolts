; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!613826 () Bool)

(assert start!613826)

(declare-fun b!6145019 () Bool)

(assert (=> b!6145019 true))

(assert (=> b!6145019 true))

(declare-fun lambda!335020 () Int)

(declare-fun lambda!335019 () Int)

(assert (=> b!6145019 (not (= lambda!335020 lambda!335019))))

(assert (=> b!6145019 true))

(assert (=> b!6145019 true))

(declare-fun b!6145018 () Bool)

(assert (=> b!6145018 true))

(declare-fun b!6145012 () Bool)

(declare-fun e!3744721 () Bool)

(declare-fun tp!1716738 () Bool)

(assert (=> b!6145012 (= e!3744721 tp!1716738)))

(declare-fun b!6145013 () Bool)

(declare-fun e!3744729 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!32448 0))(
  ( (C!32449 (val!25926 Int)) )
))
(declare-datatypes ((Regex!16089 0))(
  ( (ElementMatch!16089 (c!1105579 C!32448)) (Concat!24934 (regOne!32690 Regex!16089) (regTwo!32690 Regex!16089)) (EmptyExpr!16089) (Star!16089 (reg!16418 Regex!16089)) (EmptyLang!16089) (Union!16089 (regOne!32691 Regex!16089) (regTwo!32691 Regex!16089)) )
))
(declare-datatypes ((List!64566 0))(
  ( (Nil!64442) (Cons!64442 (h!70890 Regex!16089) (t!378049 List!64566)) )
))
(declare-datatypes ((Context!10946 0))(
  ( (Context!10947 (exprs!5973 List!64566)) )
))
(declare-fun lt!2333666 () (InoxSet Context!10946))

(declare-datatypes ((List!64567 0))(
  ( (Nil!64443) (Cons!64443 (h!70891 C!32448) (t!378050 List!64567)) )
))
(declare-fun s!2326 () List!64567)

(declare-fun matchZipper!2101 ((InoxSet Context!10946) List!64567) Bool)

(assert (=> b!6145013 (= e!3744729 (not (matchZipper!2101 lt!2333666 (t!378050 s!2326))))))

(declare-fun b!6145014 () Bool)

(declare-fun e!3744720 () Bool)

(declare-fun e!3744727 () Bool)

(assert (=> b!6145014 (= e!3744720 e!3744727)))

(declare-fun res!2545848 () Bool)

(assert (=> b!6145014 (=> res!2545848 e!3744727)))

(declare-fun lt!2333651 () (InoxSet Context!10946))

(declare-fun lt!2333671 () (InoxSet Context!10946))

(assert (=> b!6145014 (= res!2545848 (not (= lt!2333651 lt!2333671)))))

(declare-fun lt!2333661 () (InoxSet Context!10946))

(assert (=> b!6145014 (= lt!2333671 ((_ map or) lt!2333661 lt!2333666))))

(declare-fun r!7292 () Regex!16089)

(declare-fun lt!2333656 () Context!10946)

(declare-fun derivationStepZipperDown!1337 (Regex!16089 Context!10946 C!32448) (InoxSet Context!10946))

(assert (=> b!6145014 (= lt!2333666 (derivationStepZipperDown!1337 (regTwo!32691 (regOne!32690 r!7292)) lt!2333656 (h!70891 s!2326)))))

(assert (=> b!6145014 (= lt!2333661 (derivationStepZipperDown!1337 (regOne!32691 (regOne!32690 r!7292)) lt!2333656 (h!70891 s!2326)))))

(declare-fun b!6145015 () Bool)

(declare-fun res!2545845 () Bool)

(declare-fun e!3744726 () Bool)

(assert (=> b!6145015 (=> res!2545845 e!3744726)))

(declare-datatypes ((List!64568 0))(
  ( (Nil!64444) (Cons!64444 (h!70892 Context!10946) (t!378051 List!64568)) )
))
(declare-fun zl!343 () List!64568)

(get-info :version)

(assert (=> b!6145015 (= res!2545845 (not ((_ is Cons!64442) (exprs!5973 (h!70892 zl!343)))))))

(declare-fun b!6145016 () Bool)

(declare-fun e!3744717 () Bool)

(declare-fun tp_is_empty!41431 () Bool)

(assert (=> b!6145016 (= e!3744717 tp_is_empty!41431)))

(declare-fun setElem!41584 () Context!10946)

(declare-fun setNonEmpty!41584 () Bool)

(declare-fun tp!1716736 () Bool)

(declare-fun setRes!41584 () Bool)

(declare-fun inv!83469 (Context!10946) Bool)

(assert (=> setNonEmpty!41584 (= setRes!41584 (and tp!1716736 (inv!83469 setElem!41584) e!3744721))))

(declare-fun z!1189 () (InoxSet Context!10946))

(declare-fun setRest!41584 () (InoxSet Context!10946))

(assert (=> setNonEmpty!41584 (= z!1189 ((_ map or) (store ((as const (Array Context!10946 Bool)) false) setElem!41584 true) setRest!41584))))

(declare-fun b!6145017 () Bool)

(declare-fun tp!1716729 () Bool)

(declare-fun tp!1716735 () Bool)

(assert (=> b!6145017 (= e!3744717 (and tp!1716729 tp!1716735))))

(declare-fun res!2545847 () Bool)

(declare-fun e!3744718 () Bool)

(assert (=> start!613826 (=> (not res!2545847) (not e!3744718))))

(declare-fun validRegex!7825 (Regex!16089) Bool)

(assert (=> start!613826 (= res!2545847 (validRegex!7825 r!7292))))

(assert (=> start!613826 e!3744718))

(assert (=> start!613826 e!3744717))

(declare-fun condSetEmpty!41584 () Bool)

(assert (=> start!613826 (= condSetEmpty!41584 (= z!1189 ((as const (Array Context!10946 Bool)) false)))))

(assert (=> start!613826 setRes!41584))

(declare-fun e!3744719 () Bool)

(assert (=> start!613826 e!3744719))

(declare-fun e!3744725 () Bool)

(assert (=> start!613826 e!3744725))

(declare-fun e!3744728 () Bool)

(assert (=> b!6145018 (= e!3744728 e!3744720)))

(declare-fun res!2545860 () Bool)

(assert (=> b!6145018 (=> res!2545860 e!3744720)))

(assert (=> b!6145018 (= res!2545860 (or (and ((_ is ElementMatch!16089) (regOne!32690 r!7292)) (= (c!1105579 (regOne!32690 r!7292)) (h!70891 s!2326))) (not ((_ is Union!16089) (regOne!32690 r!7292)))))))

(declare-datatypes ((Unit!157513 0))(
  ( (Unit!157514) )
))
(declare-fun lt!2333664 () Unit!157513)

(declare-fun e!3744716 () Unit!157513)

(assert (=> b!6145018 (= lt!2333664 e!3744716)))

(declare-fun c!1105578 () Bool)

(declare-fun nullable!6082 (Regex!16089) Bool)

(assert (=> b!6145018 (= c!1105578 (nullable!6082 (h!70890 (exprs!5973 (h!70892 zl!343)))))))

(declare-fun lambda!335021 () Int)

(declare-fun flatMap!1594 ((InoxSet Context!10946) Int) (InoxSet Context!10946))

(declare-fun derivationStepZipperUp!1263 (Context!10946 C!32448) (InoxSet Context!10946))

(assert (=> b!6145018 (= (flatMap!1594 z!1189 lambda!335021) (derivationStepZipperUp!1263 (h!70892 zl!343) (h!70891 s!2326)))))

(declare-fun lt!2333665 () Unit!157513)

(declare-fun lemmaFlatMapOnSingletonSet!1120 ((InoxSet Context!10946) Context!10946 Int) Unit!157513)

(assert (=> b!6145018 (= lt!2333665 (lemmaFlatMapOnSingletonSet!1120 z!1189 (h!70892 zl!343) lambda!335021))))

(declare-fun lt!2333650 () (InoxSet Context!10946))

(assert (=> b!6145018 (= lt!2333650 (derivationStepZipperUp!1263 lt!2333656 (h!70891 s!2326)))))

(assert (=> b!6145018 (= lt!2333651 (derivationStepZipperDown!1337 (h!70890 (exprs!5973 (h!70892 zl!343))) lt!2333656 (h!70891 s!2326)))))

(assert (=> b!6145018 (= lt!2333656 (Context!10947 (t!378049 (exprs!5973 (h!70892 zl!343)))))))

(declare-fun lt!2333654 () (InoxSet Context!10946))

(assert (=> b!6145018 (= lt!2333654 (derivationStepZipperUp!1263 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343))))) (h!70891 s!2326)))))

(assert (=> b!6145019 (= e!3744726 e!3744728)))

(declare-fun res!2545857 () Bool)

(assert (=> b!6145019 (=> res!2545857 e!3744728)))

(declare-fun lt!2333668 () Bool)

(declare-fun lt!2333658 () Bool)

(assert (=> b!6145019 (= res!2545857 (or (not (= lt!2333668 lt!2333658)) ((_ is Nil!64443) s!2326)))))

(declare-fun Exists!3159 (Int) Bool)

(assert (=> b!6145019 (= (Exists!3159 lambda!335019) (Exists!3159 lambda!335020))))

(declare-fun lt!2333669 () Unit!157513)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1696 (Regex!16089 Regex!16089 List!64567) Unit!157513)

(assert (=> b!6145019 (= lt!2333669 (lemmaExistCutMatchRandMatchRSpecEquivalent!1696 (regOne!32690 r!7292) (regTwo!32690 r!7292) s!2326))))

(assert (=> b!6145019 (= lt!2333658 (Exists!3159 lambda!335019))))

(declare-datatypes ((tuple2!66136 0))(
  ( (tuple2!66137 (_1!36371 List!64567) (_2!36371 List!64567)) )
))
(declare-datatypes ((Option!15980 0))(
  ( (None!15979) (Some!15979 (v!52118 tuple2!66136)) )
))
(declare-fun isDefined!12683 (Option!15980) Bool)

(declare-fun findConcatSeparation!2394 (Regex!16089 Regex!16089 List!64567 List!64567 List!64567) Option!15980)

(assert (=> b!6145019 (= lt!2333658 (isDefined!12683 (findConcatSeparation!2394 (regOne!32690 r!7292) (regTwo!32690 r!7292) Nil!64443 s!2326 s!2326)))))

(declare-fun lt!2333667 () Unit!157513)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2158 (Regex!16089 Regex!16089 List!64567) Unit!157513)

(assert (=> b!6145019 (= lt!2333667 (lemmaFindConcatSeparationEquivalentToExists!2158 (regOne!32690 r!7292) (regTwo!32690 r!7292) s!2326))))

(declare-fun b!6145020 () Bool)

(declare-fun tp!1716734 () Bool)

(assert (=> b!6145020 (= e!3744725 (and tp_is_empty!41431 tp!1716734))))

(declare-fun b!6145021 () Bool)

(declare-fun res!2545844 () Bool)

(assert (=> b!6145021 (=> res!2545844 e!3744726)))

(assert (=> b!6145021 (= res!2545844 (or ((_ is EmptyExpr!16089) r!7292) ((_ is EmptyLang!16089) r!7292) ((_ is ElementMatch!16089) r!7292) ((_ is Union!16089) r!7292) (not ((_ is Concat!24934) r!7292))))))

(declare-fun b!6145022 () Bool)

(declare-fun e!3744715 () Bool)

(assert (=> b!6145022 (= e!3744715 (matchZipper!2101 lt!2333650 (t!378050 s!2326)))))

(declare-fun b!6145023 () Bool)

(declare-fun res!2545859 () Bool)

(assert (=> b!6145023 (=> res!2545859 e!3744726)))

(declare-fun isEmpty!36396 (List!64568) Bool)

(assert (=> b!6145023 (= res!2545859 (not (isEmpty!36396 (t!378051 zl!343))))))

(declare-fun b!6145024 () Bool)

(declare-fun e!3744723 () Unit!157513)

(declare-fun Unit!157515 () Unit!157513)

(assert (=> b!6145024 (= e!3744723 Unit!157515)))

(declare-fun lt!2333657 () Unit!157513)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!920 ((InoxSet Context!10946) (InoxSet Context!10946) List!64567) Unit!157513)

(assert (=> b!6145024 (= lt!2333657 (lemmaZipperConcatMatchesSameAsBothZippers!920 lt!2333661 lt!2333650 (t!378050 s!2326)))))

(declare-fun res!2545861 () Bool)

(declare-fun lt!2333659 () Bool)

(assert (=> b!6145024 (= res!2545861 lt!2333659)))

(assert (=> b!6145024 (=> res!2545861 e!3744715)))

(assert (=> b!6145024 (= (matchZipper!2101 ((_ map or) lt!2333661 lt!2333650) (t!378050 s!2326)) e!3744715)))

(declare-fun b!6145025 () Bool)

(declare-fun tp!1716731 () Bool)

(declare-fun tp!1716733 () Bool)

(assert (=> b!6145025 (= e!3744717 (and tp!1716731 tp!1716733))))

(declare-fun e!3744730 () Bool)

(declare-fun tp!1716737 () Bool)

(declare-fun b!6145026 () Bool)

(assert (=> b!6145026 (= e!3744719 (and (inv!83469 (h!70892 zl!343)) e!3744730 tp!1716737))))

(declare-fun b!6145027 () Bool)

(declare-fun Unit!157516 () Unit!157513)

(assert (=> b!6145027 (= e!3744716 Unit!157516)))

(declare-fun setIsEmpty!41584 () Bool)

(assert (=> setIsEmpty!41584 setRes!41584))

(declare-fun b!6145028 () Bool)

(declare-fun e!3744724 () Bool)

(assert (=> b!6145028 (= e!3744724 (matchZipper!2101 lt!2333666 (t!378050 s!2326)))))

(declare-fun b!6145029 () Bool)

(declare-fun e!3744731 () Bool)

(assert (=> b!6145029 (= e!3744731 (inv!83469 (Context!10947 (Cons!64442 (regTwo!32691 (regOne!32690 r!7292)) (t!378049 (exprs!5973 (h!70892 zl!343)))))))))

(declare-fun lt!2333662 () Unit!157513)

(assert (=> b!6145029 (= lt!2333662 e!3744723)))

(declare-fun c!1105577 () Bool)

(assert (=> b!6145029 (= c!1105577 (nullable!6082 (regOne!32691 (regOne!32690 r!7292))))))

(declare-fun lt!2333670 () (InoxSet Context!10946))

(declare-fun lt!2333672 () Context!10946)

(assert (=> b!6145029 (= (flatMap!1594 lt!2333670 lambda!335021) (derivationStepZipperUp!1263 lt!2333672 (h!70891 s!2326)))))

(declare-fun lt!2333663 () Unit!157513)

(assert (=> b!6145029 (= lt!2333663 (lemmaFlatMapOnSingletonSet!1120 lt!2333670 lt!2333672 lambda!335021))))

(declare-fun lt!2333655 () (InoxSet Context!10946))

(assert (=> b!6145029 (= lt!2333655 (derivationStepZipperUp!1263 lt!2333672 (h!70891 s!2326)))))

(assert (=> b!6145029 (= lt!2333670 (store ((as const (Array Context!10946 Bool)) false) lt!2333672 true))))

(assert (=> b!6145029 (= lt!2333672 (Context!10947 (Cons!64442 (regOne!32691 (regOne!32690 r!7292)) (t!378049 (exprs!5973 (h!70892 zl!343))))))))

(declare-fun b!6145030 () Bool)

(declare-fun res!2545858 () Bool)

(assert (=> b!6145030 (=> (not res!2545858) (not e!3744718))))

(declare-fun unfocusZipper!1831 (List!64568) Regex!16089)

(assert (=> b!6145030 (= res!2545858 (= r!7292 (unfocusZipper!1831 zl!343)))))

(declare-fun b!6145031 () Bool)

(declare-fun tp!1716730 () Bool)

(assert (=> b!6145031 (= e!3744717 tp!1716730)))

(declare-fun b!6145032 () Bool)

(declare-fun tp!1716732 () Bool)

(assert (=> b!6145032 (= e!3744730 tp!1716732)))

(declare-fun b!6145033 () Bool)

(declare-fun res!2545850 () Bool)

(assert (=> b!6145033 (=> (not res!2545850) (not e!3744718))))

(declare-fun toList!9873 ((InoxSet Context!10946)) List!64568)

(assert (=> b!6145033 (= res!2545850 (= (toList!9873 z!1189) zl!343))))

(declare-fun b!6145034 () Bool)

(declare-fun res!2545853 () Bool)

(assert (=> b!6145034 (=> res!2545853 e!3744728)))

(declare-fun isEmpty!36397 (List!64566) Bool)

(assert (=> b!6145034 (= res!2545853 (isEmpty!36397 (t!378049 (exprs!5973 (h!70892 zl!343)))))))

(declare-fun b!6145035 () Bool)

(declare-fun e!3744722 () Bool)

(assert (=> b!6145035 (= e!3744722 (matchZipper!2101 lt!2333650 (t!378050 s!2326)))))

(declare-fun b!6145036 () Bool)

(declare-fun Unit!157517 () Unit!157513)

(assert (=> b!6145036 (= e!3744716 Unit!157517)))

(declare-fun lt!2333660 () Unit!157513)

(assert (=> b!6145036 (= lt!2333660 (lemmaZipperConcatMatchesSameAsBothZippers!920 lt!2333651 lt!2333650 (t!378050 s!2326)))))

(declare-fun res!2545856 () Bool)

(assert (=> b!6145036 (= res!2545856 (matchZipper!2101 lt!2333651 (t!378050 s!2326)))))

(assert (=> b!6145036 (=> res!2545856 e!3744722)))

(assert (=> b!6145036 (= (matchZipper!2101 ((_ map or) lt!2333651 lt!2333650) (t!378050 s!2326)) e!3744722)))

(declare-fun b!6145037 () Bool)

(declare-fun res!2545849 () Bool)

(assert (=> b!6145037 (=> res!2545849 e!3744726)))

(declare-fun generalisedConcat!1686 (List!64566) Regex!16089)

(assert (=> b!6145037 (= res!2545849 (not (= r!7292 (generalisedConcat!1686 (exprs!5973 (h!70892 zl!343))))))))

(declare-fun b!6145038 () Bool)

(declare-fun res!2545851 () Bool)

(assert (=> b!6145038 (=> res!2545851 e!3744726)))

(declare-fun generalisedUnion!1933 (List!64566) Regex!16089)

(declare-fun unfocusZipperList!1510 (List!64568) List!64566)

(assert (=> b!6145038 (= res!2545851 (not (= r!7292 (generalisedUnion!1933 (unfocusZipperList!1510 zl!343)))))))

(declare-fun b!6145039 () Bool)

(declare-fun Unit!157518 () Unit!157513)

(assert (=> b!6145039 (= e!3744723 Unit!157518)))

(declare-fun b!6145040 () Bool)

(assert (=> b!6145040 (= e!3744727 e!3744731)))

(declare-fun res!2545855 () Bool)

(assert (=> b!6145040 (=> res!2545855 e!3744731)))

(assert (=> b!6145040 (= res!2545855 e!3744729)))

(declare-fun res!2545846 () Bool)

(assert (=> b!6145040 (=> (not res!2545846) (not e!3744729))))

(assert (=> b!6145040 (= res!2545846 (not (= (matchZipper!2101 lt!2333651 (t!378050 s!2326)) lt!2333659)))))

(assert (=> b!6145040 (= (matchZipper!2101 lt!2333671 (t!378050 s!2326)) e!3744724)))

(declare-fun res!2545852 () Bool)

(assert (=> b!6145040 (=> res!2545852 e!3744724)))

(assert (=> b!6145040 (= res!2545852 lt!2333659)))

(assert (=> b!6145040 (= lt!2333659 (matchZipper!2101 lt!2333661 (t!378050 s!2326)))))

(declare-fun lt!2333652 () Unit!157513)

(assert (=> b!6145040 (= lt!2333652 (lemmaZipperConcatMatchesSameAsBothZippers!920 lt!2333661 lt!2333666 (t!378050 s!2326)))))

(declare-fun b!6145041 () Bool)

(assert (=> b!6145041 (= e!3744718 (not e!3744726))))

(declare-fun res!2545854 () Bool)

(assert (=> b!6145041 (=> res!2545854 e!3744726)))

(assert (=> b!6145041 (= res!2545854 (not ((_ is Cons!64444) zl!343)))))

(declare-fun matchRSpec!3190 (Regex!16089 List!64567) Bool)

(assert (=> b!6145041 (= lt!2333668 (matchRSpec!3190 r!7292 s!2326))))

(declare-fun matchR!8272 (Regex!16089 List!64567) Bool)

(assert (=> b!6145041 (= lt!2333668 (matchR!8272 r!7292 s!2326))))

(declare-fun lt!2333653 () Unit!157513)

(declare-fun mainMatchTheorem!3190 (Regex!16089 List!64567) Unit!157513)

(assert (=> b!6145041 (= lt!2333653 (mainMatchTheorem!3190 r!7292 s!2326))))

(assert (= (and start!613826 res!2545847) b!6145033))

(assert (= (and b!6145033 res!2545850) b!6145030))

(assert (= (and b!6145030 res!2545858) b!6145041))

(assert (= (and b!6145041 (not res!2545854)) b!6145023))

(assert (= (and b!6145023 (not res!2545859)) b!6145037))

(assert (= (and b!6145037 (not res!2545849)) b!6145015))

(assert (= (and b!6145015 (not res!2545845)) b!6145038))

(assert (= (and b!6145038 (not res!2545851)) b!6145021))

(assert (= (and b!6145021 (not res!2545844)) b!6145019))

(assert (= (and b!6145019 (not res!2545857)) b!6145034))

(assert (= (and b!6145034 (not res!2545853)) b!6145018))

(assert (= (and b!6145018 c!1105578) b!6145036))

(assert (= (and b!6145018 (not c!1105578)) b!6145027))

(assert (= (and b!6145036 (not res!2545856)) b!6145035))

(assert (= (and b!6145018 (not res!2545860)) b!6145014))

(assert (= (and b!6145014 (not res!2545848)) b!6145040))

(assert (= (and b!6145040 (not res!2545852)) b!6145028))

(assert (= (and b!6145040 res!2545846) b!6145013))

(assert (= (and b!6145040 (not res!2545855)) b!6145029))

(assert (= (and b!6145029 c!1105577) b!6145024))

(assert (= (and b!6145029 (not c!1105577)) b!6145039))

(assert (= (and b!6145024 (not res!2545861)) b!6145022))

(assert (= (and start!613826 ((_ is ElementMatch!16089) r!7292)) b!6145016))

(assert (= (and start!613826 ((_ is Concat!24934) r!7292)) b!6145025))

(assert (= (and start!613826 ((_ is Star!16089) r!7292)) b!6145031))

(assert (= (and start!613826 ((_ is Union!16089) r!7292)) b!6145017))

(assert (= (and start!613826 condSetEmpty!41584) setIsEmpty!41584))

(assert (= (and start!613826 (not condSetEmpty!41584)) setNonEmpty!41584))

(assert (= setNonEmpty!41584 b!6145012))

(assert (= b!6145026 b!6145032))

(assert (= (and start!613826 ((_ is Cons!64444) zl!343)) b!6145026))

(assert (= (and start!613826 ((_ is Cons!64443) s!2326)) b!6145020))

(declare-fun m!6985660 () Bool)

(assert (=> b!6145035 m!6985660))

(declare-fun m!6985662 () Bool)

(assert (=> b!6145034 m!6985662))

(declare-fun m!6985664 () Bool)

(assert (=> setNonEmpty!41584 m!6985664))

(declare-fun m!6985666 () Bool)

(assert (=> b!6145036 m!6985666))

(declare-fun m!6985668 () Bool)

(assert (=> b!6145036 m!6985668))

(declare-fun m!6985670 () Bool)

(assert (=> b!6145036 m!6985670))

(declare-fun m!6985672 () Bool)

(assert (=> b!6145041 m!6985672))

(declare-fun m!6985674 () Bool)

(assert (=> b!6145041 m!6985674))

(declare-fun m!6985676 () Bool)

(assert (=> b!6145041 m!6985676))

(declare-fun m!6985678 () Bool)

(assert (=> b!6145028 m!6985678))

(assert (=> b!6145013 m!6985678))

(assert (=> b!6145022 m!6985660))

(assert (=> b!6145040 m!6985668))

(declare-fun m!6985680 () Bool)

(assert (=> b!6145040 m!6985680))

(declare-fun m!6985682 () Bool)

(assert (=> b!6145040 m!6985682))

(declare-fun m!6985684 () Bool)

(assert (=> b!6145040 m!6985684))

(declare-fun m!6985686 () Bool)

(assert (=> b!6145018 m!6985686))

(declare-fun m!6985688 () Bool)

(assert (=> b!6145018 m!6985688))

(declare-fun m!6985690 () Bool)

(assert (=> b!6145018 m!6985690))

(declare-fun m!6985692 () Bool)

(assert (=> b!6145018 m!6985692))

(declare-fun m!6985694 () Bool)

(assert (=> b!6145018 m!6985694))

(declare-fun m!6985696 () Bool)

(assert (=> b!6145018 m!6985696))

(declare-fun m!6985698 () Bool)

(assert (=> b!6145018 m!6985698))

(declare-fun m!6985700 () Bool)

(assert (=> b!6145029 m!6985700))

(declare-fun m!6985702 () Bool)

(assert (=> b!6145029 m!6985702))

(declare-fun m!6985704 () Bool)

(assert (=> b!6145029 m!6985704))

(declare-fun m!6985706 () Bool)

(assert (=> b!6145029 m!6985706))

(declare-fun m!6985708 () Bool)

(assert (=> b!6145029 m!6985708))

(declare-fun m!6985710 () Bool)

(assert (=> b!6145029 m!6985710))

(declare-fun m!6985712 () Bool)

(assert (=> b!6145030 m!6985712))

(declare-fun m!6985714 () Bool)

(assert (=> b!6145033 m!6985714))

(declare-fun m!6985716 () Bool)

(assert (=> b!6145014 m!6985716))

(declare-fun m!6985718 () Bool)

(assert (=> b!6145014 m!6985718))

(declare-fun m!6985720 () Bool)

(assert (=> b!6145019 m!6985720))

(declare-fun m!6985722 () Bool)

(assert (=> b!6145019 m!6985722))

(declare-fun m!6985724 () Bool)

(assert (=> b!6145019 m!6985724))

(declare-fun m!6985726 () Bool)

(assert (=> b!6145019 m!6985726))

(declare-fun m!6985728 () Bool)

(assert (=> b!6145019 m!6985728))

(assert (=> b!6145019 m!6985722))

(assert (=> b!6145019 m!6985726))

(declare-fun m!6985730 () Bool)

(assert (=> b!6145019 m!6985730))

(declare-fun m!6985732 () Bool)

(assert (=> b!6145037 m!6985732))

(declare-fun m!6985734 () Bool)

(assert (=> b!6145024 m!6985734))

(declare-fun m!6985736 () Bool)

(assert (=> b!6145024 m!6985736))

(declare-fun m!6985738 () Bool)

(assert (=> start!613826 m!6985738))

(declare-fun m!6985740 () Bool)

(assert (=> b!6145023 m!6985740))

(declare-fun m!6985742 () Bool)

(assert (=> b!6145038 m!6985742))

(assert (=> b!6145038 m!6985742))

(declare-fun m!6985744 () Bool)

(assert (=> b!6145038 m!6985744))

(declare-fun m!6985746 () Bool)

(assert (=> b!6145026 m!6985746))

(check-sat (not b!6145017) (not b!6145038) (not b!6145013) (not setNonEmpty!41584) tp_is_empty!41431 (not b!6145018) (not b!6145022) (not b!6145029) (not b!6145030) (not b!6145036) (not b!6145032) (not b!6145034) (not start!613826) (not b!6145037) (not b!6145031) (not b!6145026) (not b!6145041) (not b!6145028) (not b!6145033) (not b!6145012) (not b!6145023) (not b!6145040) (not b!6145014) (not b!6145019) (not b!6145035) (not b!6145024) (not b!6145020) (not b!6145025))
(check-sat)
(get-model)

(declare-fun d!1925390 () Bool)

(declare-fun e!3744949 () Bool)

(assert (=> d!1925390 (= (matchZipper!2101 ((_ map or) lt!2333651 lt!2333650) (t!378050 s!2326)) e!3744949)))

(declare-fun res!2545980 () Bool)

(assert (=> d!1925390 (=> res!2545980 e!3744949)))

(assert (=> d!1925390 (= res!2545980 (matchZipper!2101 lt!2333651 (t!378050 s!2326)))))

(declare-fun lt!2333720 () Unit!157513)

(declare-fun choose!45674 ((InoxSet Context!10946) (InoxSet Context!10946) List!64567) Unit!157513)

(assert (=> d!1925390 (= lt!2333720 (choose!45674 lt!2333651 lt!2333650 (t!378050 s!2326)))))

(assert (=> d!1925390 (= (lemmaZipperConcatMatchesSameAsBothZippers!920 lt!2333651 lt!2333650 (t!378050 s!2326)) lt!2333720)))

(declare-fun b!6145432 () Bool)

(assert (=> b!6145432 (= e!3744949 (matchZipper!2101 lt!2333650 (t!378050 s!2326)))))

(assert (= (and d!1925390 (not res!2545980)) b!6145432))

(assert (=> d!1925390 m!6985670))

(assert (=> d!1925390 m!6985668))

(declare-fun m!6985998 () Bool)

(assert (=> d!1925390 m!6985998))

(assert (=> b!6145432 m!6985660))

(assert (=> b!6145036 d!1925390))

(declare-fun d!1925392 () Bool)

(declare-fun c!1105688 () Bool)

(declare-fun isEmpty!36399 (List!64567) Bool)

(assert (=> d!1925392 (= c!1105688 (isEmpty!36399 (t!378050 s!2326)))))

(declare-fun e!3744952 () Bool)

(assert (=> d!1925392 (= (matchZipper!2101 lt!2333651 (t!378050 s!2326)) e!3744952)))

(declare-fun b!6145437 () Bool)

(declare-fun nullableZipper!1870 ((InoxSet Context!10946)) Bool)

(assert (=> b!6145437 (= e!3744952 (nullableZipper!1870 lt!2333651))))

(declare-fun b!6145438 () Bool)

(declare-fun derivationStepZipper!2062 ((InoxSet Context!10946) C!32448) (InoxSet Context!10946))

(declare-fun head!12699 (List!64567) C!32448)

(declare-fun tail!11784 (List!64567) List!64567)

(assert (=> b!6145438 (= e!3744952 (matchZipper!2101 (derivationStepZipper!2062 lt!2333651 (head!12699 (t!378050 s!2326))) (tail!11784 (t!378050 s!2326))))))

(assert (= (and d!1925392 c!1105688) b!6145437))

(assert (= (and d!1925392 (not c!1105688)) b!6145438))

(declare-fun m!6986000 () Bool)

(assert (=> d!1925392 m!6986000))

(declare-fun m!6986002 () Bool)

(assert (=> b!6145437 m!6986002))

(declare-fun m!6986004 () Bool)

(assert (=> b!6145438 m!6986004))

(assert (=> b!6145438 m!6986004))

(declare-fun m!6986006 () Bool)

(assert (=> b!6145438 m!6986006))

(declare-fun m!6986008 () Bool)

(assert (=> b!6145438 m!6986008))

(assert (=> b!6145438 m!6986006))

(assert (=> b!6145438 m!6986008))

(declare-fun m!6986010 () Bool)

(assert (=> b!6145438 m!6986010))

(assert (=> b!6145036 d!1925392))

(declare-fun d!1925394 () Bool)

(declare-fun c!1105689 () Bool)

(assert (=> d!1925394 (= c!1105689 (isEmpty!36399 (t!378050 s!2326)))))

(declare-fun e!3744953 () Bool)

(assert (=> d!1925394 (= (matchZipper!2101 ((_ map or) lt!2333651 lt!2333650) (t!378050 s!2326)) e!3744953)))

(declare-fun b!6145439 () Bool)

(assert (=> b!6145439 (= e!3744953 (nullableZipper!1870 ((_ map or) lt!2333651 lt!2333650)))))

(declare-fun b!6145440 () Bool)

(assert (=> b!6145440 (= e!3744953 (matchZipper!2101 (derivationStepZipper!2062 ((_ map or) lt!2333651 lt!2333650) (head!12699 (t!378050 s!2326))) (tail!11784 (t!378050 s!2326))))))

(assert (= (and d!1925394 c!1105689) b!6145439))

(assert (= (and d!1925394 (not c!1105689)) b!6145440))

(assert (=> d!1925394 m!6986000))

(declare-fun m!6986012 () Bool)

(assert (=> b!6145439 m!6986012))

(assert (=> b!6145440 m!6986004))

(assert (=> b!6145440 m!6986004))

(declare-fun m!6986014 () Bool)

(assert (=> b!6145440 m!6986014))

(assert (=> b!6145440 m!6986008))

(assert (=> b!6145440 m!6986014))

(assert (=> b!6145440 m!6986008))

(declare-fun m!6986016 () Bool)

(assert (=> b!6145440 m!6986016))

(assert (=> b!6145036 d!1925394))

(declare-fun d!1925396 () Bool)

(declare-fun lambda!335053 () Int)

(declare-fun forall!15210 (List!64566 Int) Bool)

(assert (=> d!1925396 (= (inv!83469 setElem!41584) (forall!15210 (exprs!5973 setElem!41584) lambda!335053))))

(declare-fun bs!1523646 () Bool)

(assert (= bs!1523646 d!1925396))

(declare-fun m!6986018 () Bool)

(assert (=> bs!1523646 m!6986018))

(assert (=> setNonEmpty!41584 d!1925396))

(declare-fun bs!1523647 () Bool)

(declare-fun d!1925398 () Bool)

(assert (= bs!1523647 (and d!1925398 d!1925396)))

(declare-fun lambda!335056 () Int)

(assert (=> bs!1523647 (= lambda!335056 lambda!335053)))

(declare-fun b!6145461 () Bool)

(declare-fun e!3744966 () Bool)

(declare-fun lt!2333723 () Regex!16089)

(declare-fun isEmptyExpr!1505 (Regex!16089) Bool)

(assert (=> b!6145461 (= e!3744966 (isEmptyExpr!1505 lt!2333723))))

(declare-fun e!3744969 () Bool)

(assert (=> d!1925398 e!3744969))

(declare-fun res!2545986 () Bool)

(assert (=> d!1925398 (=> (not res!2545986) (not e!3744969))))

(assert (=> d!1925398 (= res!2545986 (validRegex!7825 lt!2333723))))

(declare-fun e!3744967 () Regex!16089)

(assert (=> d!1925398 (= lt!2333723 e!3744967)))

(declare-fun c!1105699 () Bool)

(declare-fun e!3744970 () Bool)

(assert (=> d!1925398 (= c!1105699 e!3744970)))

(declare-fun res!2545985 () Bool)

(assert (=> d!1925398 (=> (not res!2545985) (not e!3744970))))

(assert (=> d!1925398 (= res!2545985 ((_ is Cons!64442) (exprs!5973 (h!70892 zl!343))))))

(assert (=> d!1925398 (forall!15210 (exprs!5973 (h!70892 zl!343)) lambda!335056)))

(assert (=> d!1925398 (= (generalisedConcat!1686 (exprs!5973 (h!70892 zl!343))) lt!2333723)))

(declare-fun b!6145462 () Bool)

(declare-fun e!3744968 () Bool)

(assert (=> b!6145462 (= e!3744966 e!3744968)))

(declare-fun c!1105700 () Bool)

(declare-fun tail!11785 (List!64566) List!64566)

(assert (=> b!6145462 (= c!1105700 (isEmpty!36397 (tail!11785 (exprs!5973 (h!70892 zl!343)))))))

(declare-fun b!6145463 () Bool)

(assert (=> b!6145463 (= e!3744967 (h!70890 (exprs!5973 (h!70892 zl!343))))))

(declare-fun b!6145464 () Bool)

(declare-fun isConcat!1028 (Regex!16089) Bool)

(assert (=> b!6145464 (= e!3744968 (isConcat!1028 lt!2333723))))

(declare-fun b!6145465 () Bool)

(declare-fun head!12700 (List!64566) Regex!16089)

(assert (=> b!6145465 (= e!3744968 (= lt!2333723 (head!12700 (exprs!5973 (h!70892 zl!343)))))))

(declare-fun b!6145466 () Bool)

(assert (=> b!6145466 (= e!3744969 e!3744966)))

(declare-fun c!1105701 () Bool)

(assert (=> b!6145466 (= c!1105701 (isEmpty!36397 (exprs!5973 (h!70892 zl!343))))))

(declare-fun b!6145467 () Bool)

(assert (=> b!6145467 (= e!3744970 (isEmpty!36397 (t!378049 (exprs!5973 (h!70892 zl!343)))))))

(declare-fun b!6145468 () Bool)

(declare-fun e!3744971 () Regex!16089)

(assert (=> b!6145468 (= e!3744967 e!3744971)))

(declare-fun c!1105698 () Bool)

(assert (=> b!6145468 (= c!1105698 ((_ is Cons!64442) (exprs!5973 (h!70892 zl!343))))))

(declare-fun b!6145469 () Bool)

(assert (=> b!6145469 (= e!3744971 EmptyExpr!16089)))

(declare-fun b!6145470 () Bool)

(assert (=> b!6145470 (= e!3744971 (Concat!24934 (h!70890 (exprs!5973 (h!70892 zl!343))) (generalisedConcat!1686 (t!378049 (exprs!5973 (h!70892 zl!343))))))))

(assert (= (and d!1925398 res!2545985) b!6145467))

(assert (= (and d!1925398 c!1105699) b!6145463))

(assert (= (and d!1925398 (not c!1105699)) b!6145468))

(assert (= (and b!6145468 c!1105698) b!6145470))

(assert (= (and b!6145468 (not c!1105698)) b!6145469))

(assert (= (and d!1925398 res!2545986) b!6145466))

(assert (= (and b!6145466 c!1105701) b!6145461))

(assert (= (and b!6145466 (not c!1105701)) b!6145462))

(assert (= (and b!6145462 c!1105700) b!6145465))

(assert (= (and b!6145462 (not c!1105700)) b!6145464))

(declare-fun m!6986020 () Bool)

(assert (=> b!6145465 m!6986020))

(declare-fun m!6986022 () Bool)

(assert (=> b!6145462 m!6986022))

(assert (=> b!6145462 m!6986022))

(declare-fun m!6986024 () Bool)

(assert (=> b!6145462 m!6986024))

(declare-fun m!6986026 () Bool)

(assert (=> d!1925398 m!6986026))

(declare-fun m!6986028 () Bool)

(assert (=> d!1925398 m!6986028))

(declare-fun m!6986030 () Bool)

(assert (=> b!6145461 m!6986030))

(declare-fun m!6986032 () Bool)

(assert (=> b!6145466 m!6986032))

(declare-fun m!6986034 () Bool)

(assert (=> b!6145464 m!6986034))

(assert (=> b!6145467 m!6985662))

(declare-fun m!6986036 () Bool)

(assert (=> b!6145470 m!6986036))

(assert (=> b!6145037 d!1925398))

(declare-fun bs!1523648 () Bool)

(declare-fun d!1925400 () Bool)

(assert (= bs!1523648 (and d!1925400 d!1925396)))

(declare-fun lambda!335059 () Int)

(assert (=> bs!1523648 (= lambda!335059 lambda!335053)))

(declare-fun bs!1523649 () Bool)

(assert (= bs!1523649 (and d!1925400 d!1925398)))

(assert (=> bs!1523649 (= lambda!335059 lambda!335056)))

(declare-fun b!6145491 () Bool)

(declare-fun e!3744985 () Regex!16089)

(declare-fun e!3744987 () Regex!16089)

(assert (=> b!6145491 (= e!3744985 e!3744987)))

(declare-fun c!1105713 () Bool)

(assert (=> b!6145491 (= c!1105713 ((_ is Cons!64442) (unfocusZipperList!1510 zl!343)))))

(declare-fun b!6145492 () Bool)

(declare-fun e!3744988 () Bool)

(declare-fun lt!2333726 () Regex!16089)

(declare-fun isUnion!946 (Regex!16089) Bool)

(assert (=> b!6145492 (= e!3744988 (isUnion!946 lt!2333726))))

(declare-fun b!6145493 () Bool)

(declare-fun e!3744989 () Bool)

(assert (=> b!6145493 (= e!3744989 (isEmpty!36397 (t!378049 (unfocusZipperList!1510 zl!343))))))

(declare-fun b!6145494 () Bool)

(assert (=> b!6145494 (= e!3744987 (Union!16089 (h!70890 (unfocusZipperList!1510 zl!343)) (generalisedUnion!1933 (t!378049 (unfocusZipperList!1510 zl!343)))))))

(declare-fun b!6145495 () Bool)

(assert (=> b!6145495 (= e!3744985 (h!70890 (unfocusZipperList!1510 zl!343)))))

(declare-fun b!6145496 () Bool)

(assert (=> b!6145496 (= e!3744988 (= lt!2333726 (head!12700 (unfocusZipperList!1510 zl!343))))))

(declare-fun e!3744984 () Bool)

(assert (=> d!1925400 e!3744984))

(declare-fun res!2545991 () Bool)

(assert (=> d!1925400 (=> (not res!2545991) (not e!3744984))))

(assert (=> d!1925400 (= res!2545991 (validRegex!7825 lt!2333726))))

(assert (=> d!1925400 (= lt!2333726 e!3744985)))

(declare-fun c!1105710 () Bool)

(assert (=> d!1925400 (= c!1105710 e!3744989)))

(declare-fun res!2545992 () Bool)

(assert (=> d!1925400 (=> (not res!2545992) (not e!3744989))))

(assert (=> d!1925400 (= res!2545992 ((_ is Cons!64442) (unfocusZipperList!1510 zl!343)))))

(assert (=> d!1925400 (forall!15210 (unfocusZipperList!1510 zl!343) lambda!335059)))

(assert (=> d!1925400 (= (generalisedUnion!1933 (unfocusZipperList!1510 zl!343)) lt!2333726)))

(declare-fun b!6145497 () Bool)

(declare-fun e!3744986 () Bool)

(declare-fun isEmptyLang!1516 (Regex!16089) Bool)

(assert (=> b!6145497 (= e!3744986 (isEmptyLang!1516 lt!2333726))))

(declare-fun b!6145498 () Bool)

(assert (=> b!6145498 (= e!3744987 EmptyLang!16089)))

(declare-fun b!6145499 () Bool)

(assert (=> b!6145499 (= e!3744986 e!3744988)))

(declare-fun c!1105711 () Bool)

(assert (=> b!6145499 (= c!1105711 (isEmpty!36397 (tail!11785 (unfocusZipperList!1510 zl!343))))))

(declare-fun b!6145500 () Bool)

(assert (=> b!6145500 (= e!3744984 e!3744986)))

(declare-fun c!1105712 () Bool)

(assert (=> b!6145500 (= c!1105712 (isEmpty!36397 (unfocusZipperList!1510 zl!343)))))

(assert (= (and d!1925400 res!2545992) b!6145493))

(assert (= (and d!1925400 c!1105710) b!6145495))

(assert (= (and d!1925400 (not c!1105710)) b!6145491))

(assert (= (and b!6145491 c!1105713) b!6145494))

(assert (= (and b!6145491 (not c!1105713)) b!6145498))

(assert (= (and d!1925400 res!2545991) b!6145500))

(assert (= (and b!6145500 c!1105712) b!6145497))

(assert (= (and b!6145500 (not c!1105712)) b!6145499))

(assert (= (and b!6145499 c!1105711) b!6145496))

(assert (= (and b!6145499 (not c!1105711)) b!6145492))

(declare-fun m!6986038 () Bool)

(assert (=> b!6145494 m!6986038))

(declare-fun m!6986040 () Bool)

(assert (=> d!1925400 m!6986040))

(assert (=> d!1925400 m!6985742))

(declare-fun m!6986042 () Bool)

(assert (=> d!1925400 m!6986042))

(assert (=> b!6145499 m!6985742))

(declare-fun m!6986044 () Bool)

(assert (=> b!6145499 m!6986044))

(assert (=> b!6145499 m!6986044))

(declare-fun m!6986046 () Bool)

(assert (=> b!6145499 m!6986046))

(declare-fun m!6986048 () Bool)

(assert (=> b!6145497 m!6986048))

(assert (=> b!6145496 m!6985742))

(declare-fun m!6986050 () Bool)

(assert (=> b!6145496 m!6986050))

(assert (=> b!6145500 m!6985742))

(declare-fun m!6986052 () Bool)

(assert (=> b!6145500 m!6986052))

(declare-fun m!6986054 () Bool)

(assert (=> b!6145493 m!6986054))

(declare-fun m!6986056 () Bool)

(assert (=> b!6145492 m!6986056))

(assert (=> b!6145038 d!1925400))

(declare-fun bs!1523650 () Bool)

(declare-fun d!1925402 () Bool)

(assert (= bs!1523650 (and d!1925402 d!1925396)))

(declare-fun lambda!335062 () Int)

(assert (=> bs!1523650 (= lambda!335062 lambda!335053)))

(declare-fun bs!1523651 () Bool)

(assert (= bs!1523651 (and d!1925402 d!1925398)))

(assert (=> bs!1523651 (= lambda!335062 lambda!335056)))

(declare-fun bs!1523652 () Bool)

(assert (= bs!1523652 (and d!1925402 d!1925400)))

(assert (=> bs!1523652 (= lambda!335062 lambda!335059)))

(declare-fun lt!2333729 () List!64566)

(assert (=> d!1925402 (forall!15210 lt!2333729 lambda!335062)))

(declare-fun e!3744992 () List!64566)

(assert (=> d!1925402 (= lt!2333729 e!3744992)))

(declare-fun c!1105716 () Bool)

(assert (=> d!1925402 (= c!1105716 ((_ is Cons!64444) zl!343))))

(assert (=> d!1925402 (= (unfocusZipperList!1510 zl!343) lt!2333729)))

(declare-fun b!6145505 () Bool)

(assert (=> b!6145505 (= e!3744992 (Cons!64442 (generalisedConcat!1686 (exprs!5973 (h!70892 zl!343))) (unfocusZipperList!1510 (t!378051 zl!343))))))

(declare-fun b!6145506 () Bool)

(assert (=> b!6145506 (= e!3744992 Nil!64442)))

(assert (= (and d!1925402 c!1105716) b!6145505))

(assert (= (and d!1925402 (not c!1105716)) b!6145506))

(declare-fun m!6986058 () Bool)

(assert (=> d!1925402 m!6986058))

(assert (=> b!6145505 m!6985732))

(declare-fun m!6986060 () Bool)

(assert (=> b!6145505 m!6986060))

(assert (=> b!6145038 d!1925402))

(declare-fun d!1925404 () Bool)

(declare-fun nullableFct!2046 (Regex!16089) Bool)

(assert (=> d!1925404 (= (nullable!6082 (h!70890 (exprs!5973 (h!70892 zl!343)))) (nullableFct!2046 (h!70890 (exprs!5973 (h!70892 zl!343)))))))

(declare-fun bs!1523653 () Bool)

(assert (= bs!1523653 d!1925404))

(declare-fun m!6986062 () Bool)

(assert (=> bs!1523653 m!6986062))

(assert (=> b!6145018 d!1925404))

(declare-fun d!1925406 () Bool)

(declare-fun dynLambda!25398 (Int Context!10946) (InoxSet Context!10946))

(assert (=> d!1925406 (= (flatMap!1594 z!1189 lambda!335021) (dynLambda!25398 lambda!335021 (h!70892 zl!343)))))

(declare-fun lt!2333732 () Unit!157513)

(declare-fun choose!45677 ((InoxSet Context!10946) Context!10946 Int) Unit!157513)

(assert (=> d!1925406 (= lt!2333732 (choose!45677 z!1189 (h!70892 zl!343) lambda!335021))))

(assert (=> d!1925406 (= z!1189 (store ((as const (Array Context!10946 Bool)) false) (h!70892 zl!343) true))))

(assert (=> d!1925406 (= (lemmaFlatMapOnSingletonSet!1120 z!1189 (h!70892 zl!343) lambda!335021) lt!2333732)))

(declare-fun b_lambda!233897 () Bool)

(assert (=> (not b_lambda!233897) (not d!1925406)))

(declare-fun bs!1523654 () Bool)

(assert (= bs!1523654 d!1925406))

(assert (=> bs!1523654 m!6985688))

(declare-fun m!6986064 () Bool)

(assert (=> bs!1523654 m!6986064))

(declare-fun m!6986066 () Bool)

(assert (=> bs!1523654 m!6986066))

(declare-fun m!6986068 () Bool)

(assert (=> bs!1523654 m!6986068))

(assert (=> b!6145018 d!1925406))

(declare-fun d!1925408 () Bool)

(declare-fun choose!45678 ((InoxSet Context!10946) Int) (InoxSet Context!10946))

(assert (=> d!1925408 (= (flatMap!1594 z!1189 lambda!335021) (choose!45678 z!1189 lambda!335021))))

(declare-fun bs!1523655 () Bool)

(assert (= bs!1523655 d!1925408))

(declare-fun m!6986070 () Bool)

(assert (=> bs!1523655 m!6986070))

(assert (=> b!6145018 d!1925408))

(declare-fun b!6145517 () Bool)

(declare-fun e!3745001 () (InoxSet Context!10946))

(declare-fun call!510679 () (InoxSet Context!10946))

(assert (=> b!6145517 (= e!3745001 ((_ map or) call!510679 (derivationStepZipperUp!1263 (Context!10947 (t!378049 (exprs!5973 (h!70892 zl!343)))) (h!70891 s!2326))))))

(declare-fun b!6145518 () Bool)

(declare-fun e!3744999 () Bool)

(assert (=> b!6145518 (= e!3744999 (nullable!6082 (h!70890 (exprs!5973 (h!70892 zl!343)))))))

(declare-fun bm!510674 () Bool)

(assert (=> bm!510674 (= call!510679 (derivationStepZipperDown!1337 (h!70890 (exprs!5973 (h!70892 zl!343))) (Context!10947 (t!378049 (exprs!5973 (h!70892 zl!343)))) (h!70891 s!2326)))))

(declare-fun b!6145520 () Bool)

(declare-fun e!3745000 () (InoxSet Context!10946))

(assert (=> b!6145520 (= e!3745001 e!3745000)))

(declare-fun c!1105722 () Bool)

(assert (=> b!6145520 (= c!1105722 ((_ is Cons!64442) (exprs!5973 (h!70892 zl!343))))))

(declare-fun b!6145521 () Bool)

(assert (=> b!6145521 (= e!3745000 call!510679)))

(declare-fun b!6145519 () Bool)

(assert (=> b!6145519 (= e!3745000 ((as const (Array Context!10946 Bool)) false))))

(declare-fun d!1925410 () Bool)

(declare-fun c!1105721 () Bool)

(assert (=> d!1925410 (= c!1105721 e!3744999)))

(declare-fun res!2545995 () Bool)

(assert (=> d!1925410 (=> (not res!2545995) (not e!3744999))))

(assert (=> d!1925410 (= res!2545995 ((_ is Cons!64442) (exprs!5973 (h!70892 zl!343))))))

(assert (=> d!1925410 (= (derivationStepZipperUp!1263 (h!70892 zl!343) (h!70891 s!2326)) e!3745001)))

(assert (= (and d!1925410 res!2545995) b!6145518))

(assert (= (and d!1925410 c!1105721) b!6145517))

(assert (= (and d!1925410 (not c!1105721)) b!6145520))

(assert (= (and b!6145520 c!1105722) b!6145521))

(assert (= (and b!6145520 (not c!1105722)) b!6145519))

(assert (= (or b!6145517 b!6145521) bm!510674))

(declare-fun m!6986072 () Bool)

(assert (=> b!6145517 m!6986072))

(assert (=> b!6145518 m!6985698))

(declare-fun m!6986074 () Bool)

(assert (=> bm!510674 m!6986074))

(assert (=> b!6145018 d!1925410))

(declare-fun b!6145522 () Bool)

(declare-fun call!510680 () (InoxSet Context!10946))

(declare-fun e!3745004 () (InoxSet Context!10946))

(assert (=> b!6145522 (= e!3745004 ((_ map or) call!510680 (derivationStepZipperUp!1263 (Context!10947 (t!378049 (exprs!5973 lt!2333656))) (h!70891 s!2326))))))

(declare-fun b!6145523 () Bool)

(declare-fun e!3745002 () Bool)

(assert (=> b!6145523 (= e!3745002 (nullable!6082 (h!70890 (exprs!5973 lt!2333656))))))

(declare-fun bm!510675 () Bool)

(assert (=> bm!510675 (= call!510680 (derivationStepZipperDown!1337 (h!70890 (exprs!5973 lt!2333656)) (Context!10947 (t!378049 (exprs!5973 lt!2333656))) (h!70891 s!2326)))))

(declare-fun b!6145525 () Bool)

(declare-fun e!3745003 () (InoxSet Context!10946))

(assert (=> b!6145525 (= e!3745004 e!3745003)))

(declare-fun c!1105724 () Bool)

(assert (=> b!6145525 (= c!1105724 ((_ is Cons!64442) (exprs!5973 lt!2333656)))))

(declare-fun b!6145526 () Bool)

(assert (=> b!6145526 (= e!3745003 call!510680)))

(declare-fun b!6145524 () Bool)

(assert (=> b!6145524 (= e!3745003 ((as const (Array Context!10946 Bool)) false))))

(declare-fun d!1925412 () Bool)

(declare-fun c!1105723 () Bool)

(assert (=> d!1925412 (= c!1105723 e!3745002)))

(declare-fun res!2545996 () Bool)

(assert (=> d!1925412 (=> (not res!2545996) (not e!3745002))))

(assert (=> d!1925412 (= res!2545996 ((_ is Cons!64442) (exprs!5973 lt!2333656)))))

(assert (=> d!1925412 (= (derivationStepZipperUp!1263 lt!2333656 (h!70891 s!2326)) e!3745004)))

(assert (= (and d!1925412 res!2545996) b!6145523))

(assert (= (and d!1925412 c!1105723) b!6145522))

(assert (= (and d!1925412 (not c!1105723)) b!6145525))

(assert (= (and b!6145525 c!1105724) b!6145526))

(assert (= (and b!6145525 (not c!1105724)) b!6145524))

(assert (= (or b!6145522 b!6145526) bm!510675))

(declare-fun m!6986076 () Bool)

(assert (=> b!6145522 m!6986076))

(declare-fun m!6986078 () Bool)

(assert (=> b!6145523 m!6986078))

(declare-fun m!6986080 () Bool)

(assert (=> bm!510675 m!6986080))

(assert (=> b!6145018 d!1925412))

(declare-fun b!6145549 () Bool)

(declare-fun c!1105739 () Bool)

(assert (=> b!6145549 (= c!1105739 ((_ is Star!16089) (h!70890 (exprs!5973 (h!70892 zl!343)))))))

(declare-fun e!3745018 () (InoxSet Context!10946))

(declare-fun e!3745021 () (InoxSet Context!10946))

(assert (=> b!6145549 (= e!3745018 e!3745021)))

(declare-fun b!6145550 () Bool)

(declare-fun call!510696 () (InoxSet Context!10946))

(assert (=> b!6145550 (= e!3745021 call!510696)))

(declare-fun b!6145551 () Bool)

(declare-fun e!3745017 () (InoxSet Context!10946))

(declare-fun call!510698 () (InoxSet Context!10946))

(declare-fun call!510697 () (InoxSet Context!10946))

(assert (=> b!6145551 (= e!3745017 ((_ map or) call!510698 call!510697))))

(declare-fun b!6145552 () Bool)

(declare-fun e!3745019 () (InoxSet Context!10946))

(declare-fun call!510695 () (InoxSet Context!10946))

(assert (=> b!6145552 (= e!3745019 ((_ map or) call!510697 call!510695))))

(declare-fun b!6145553 () Bool)

(declare-fun e!3745022 () Bool)

(assert (=> b!6145553 (= e!3745022 (nullable!6082 (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343))))))))

(declare-fun call!510694 () List!64566)

(declare-fun c!1105736 () Bool)

(declare-fun bm!510688 () Bool)

(declare-fun c!1105735 () Bool)

(declare-fun c!1105737 () Bool)

(assert (=> bm!510688 (= call!510698 (derivationStepZipperDown!1337 (ite c!1105736 (regOne!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105735 (regTwo!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105737 (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (reg!16418 (h!70890 (exprs!5973 (h!70892 zl!343))))))) (ite (or c!1105736 c!1105735) lt!2333656 (Context!10947 call!510694)) (h!70891 s!2326)))))

(declare-fun bm!510689 () Bool)

(assert (=> bm!510689 (= call!510695 call!510698)))

(declare-fun b!6145554 () Bool)

(assert (=> b!6145554 (= e!3745018 call!510696)))

(declare-fun b!6145555 () Bool)

(declare-fun e!3745020 () (InoxSet Context!10946))

(assert (=> b!6145555 (= e!3745020 (store ((as const (Array Context!10946 Bool)) false) lt!2333656 true))))

(declare-fun b!6145557 () Bool)

(assert (=> b!6145557 (= e!3745020 e!3745017)))

(assert (=> b!6145557 (= c!1105736 ((_ is Union!16089) (h!70890 (exprs!5973 (h!70892 zl!343)))))))

(declare-fun call!510693 () List!64566)

(declare-fun bm!510690 () Bool)

(declare-fun $colon$colon!1966 (List!64566 Regex!16089) List!64566)

(assert (=> bm!510690 (= call!510693 ($colon$colon!1966 (exprs!5973 lt!2333656) (ite (or c!1105735 c!1105737) (regTwo!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (h!70890 (exprs!5973 (h!70892 zl!343))))))))

(declare-fun bm!510691 () Bool)

(assert (=> bm!510691 (= call!510696 call!510695)))

(declare-fun bm!510692 () Bool)

(assert (=> bm!510692 (= call!510694 call!510693)))

(declare-fun bm!510693 () Bool)

(assert (=> bm!510693 (= call!510697 (derivationStepZipperDown!1337 (ite c!1105736 (regTwo!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343))))) (ite c!1105736 lt!2333656 (Context!10947 call!510693)) (h!70891 s!2326)))))

(declare-fun b!6145558 () Bool)

(assert (=> b!6145558 (= e!3745019 e!3745018)))

(assert (=> b!6145558 (= c!1105737 ((_ is Concat!24934) (h!70890 (exprs!5973 (h!70892 zl!343)))))))

(declare-fun b!6145559 () Bool)

(assert (=> b!6145559 (= c!1105735 e!3745022)))

(declare-fun res!2545999 () Bool)

(assert (=> b!6145559 (=> (not res!2545999) (not e!3745022))))

(assert (=> b!6145559 (= res!2545999 ((_ is Concat!24934) (h!70890 (exprs!5973 (h!70892 zl!343)))))))

(assert (=> b!6145559 (= e!3745017 e!3745019)))

(declare-fun b!6145556 () Bool)

(assert (=> b!6145556 (= e!3745021 ((as const (Array Context!10946 Bool)) false))))

(declare-fun d!1925414 () Bool)

(declare-fun c!1105738 () Bool)

(assert (=> d!1925414 (= c!1105738 (and ((_ is ElementMatch!16089) (h!70890 (exprs!5973 (h!70892 zl!343)))) (= (c!1105579 (h!70890 (exprs!5973 (h!70892 zl!343)))) (h!70891 s!2326))))))

(assert (=> d!1925414 (= (derivationStepZipperDown!1337 (h!70890 (exprs!5973 (h!70892 zl!343))) lt!2333656 (h!70891 s!2326)) e!3745020)))

(assert (= (and d!1925414 c!1105738) b!6145555))

(assert (= (and d!1925414 (not c!1105738)) b!6145557))

(assert (= (and b!6145557 c!1105736) b!6145551))

(assert (= (and b!6145557 (not c!1105736)) b!6145559))

(assert (= (and b!6145559 res!2545999) b!6145553))

(assert (= (and b!6145559 c!1105735) b!6145552))

(assert (= (and b!6145559 (not c!1105735)) b!6145558))

(assert (= (and b!6145558 c!1105737) b!6145554))

(assert (= (and b!6145558 (not c!1105737)) b!6145549))

(assert (= (and b!6145549 c!1105739) b!6145550))

(assert (= (and b!6145549 (not c!1105739)) b!6145556))

(assert (= (or b!6145554 b!6145550) bm!510692))

(assert (= (or b!6145554 b!6145550) bm!510691))

(assert (= (or b!6145552 bm!510692) bm!510690))

(assert (= (or b!6145552 bm!510691) bm!510689))

(assert (= (or b!6145551 b!6145552) bm!510693))

(assert (= (or b!6145551 bm!510689) bm!510688))

(declare-fun m!6986082 () Bool)

(assert (=> b!6145555 m!6986082))

(declare-fun m!6986084 () Bool)

(assert (=> bm!510688 m!6986084))

(declare-fun m!6986086 () Bool)

(assert (=> bm!510693 m!6986086))

(declare-fun m!6986088 () Bool)

(assert (=> bm!510690 m!6986088))

(declare-fun m!6986090 () Bool)

(assert (=> b!6145553 m!6986090))

(assert (=> b!6145018 d!1925414))

(declare-fun b!6145560 () Bool)

(declare-fun e!3745025 () (InoxSet Context!10946))

(declare-fun call!510699 () (InoxSet Context!10946))

(assert (=> b!6145560 (= e!3745025 ((_ map or) call!510699 (derivationStepZipperUp!1263 (Context!10947 (t!378049 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343)))))))) (h!70891 s!2326))))))

(declare-fun b!6145561 () Bool)

(declare-fun e!3745023 () Bool)

(assert (=> b!6145561 (= e!3745023 (nullable!6082 (h!70890 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343)))))))))))

(declare-fun bm!510694 () Bool)

(assert (=> bm!510694 (= call!510699 (derivationStepZipperDown!1337 (h!70890 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343))))))) (Context!10947 (t!378049 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343)))))))) (h!70891 s!2326)))))

(declare-fun b!6145563 () Bool)

(declare-fun e!3745024 () (InoxSet Context!10946))

(assert (=> b!6145563 (= e!3745025 e!3745024)))

(declare-fun c!1105741 () Bool)

(assert (=> b!6145563 (= c!1105741 ((_ is Cons!64442) (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343))))))))))

(declare-fun b!6145564 () Bool)

(assert (=> b!6145564 (= e!3745024 call!510699)))

(declare-fun b!6145562 () Bool)

(assert (=> b!6145562 (= e!3745024 ((as const (Array Context!10946 Bool)) false))))

(declare-fun d!1925416 () Bool)

(declare-fun c!1105740 () Bool)

(assert (=> d!1925416 (= c!1105740 e!3745023)))

(declare-fun res!2546000 () Bool)

(assert (=> d!1925416 (=> (not res!2546000) (not e!3745023))))

(assert (=> d!1925416 (= res!2546000 ((_ is Cons!64442) (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343))))))))))

(assert (=> d!1925416 (= (derivationStepZipperUp!1263 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343))))) (h!70891 s!2326)) e!3745025)))

(assert (= (and d!1925416 res!2546000) b!6145561))

(assert (= (and d!1925416 c!1105740) b!6145560))

(assert (= (and d!1925416 (not c!1105740)) b!6145563))

(assert (= (and b!6145563 c!1105741) b!6145564))

(assert (= (and b!6145563 (not c!1105741)) b!6145562))

(assert (= (or b!6145560 b!6145564) bm!510694))

(declare-fun m!6986092 () Bool)

(assert (=> b!6145560 m!6986092))

(declare-fun m!6986094 () Bool)

(assert (=> b!6145561 m!6986094))

(declare-fun m!6986096 () Bool)

(assert (=> bm!510694 m!6986096))

(assert (=> b!6145018 d!1925416))

(declare-fun d!1925418 () Bool)

(declare-fun c!1105742 () Bool)

(assert (=> d!1925418 (= c!1105742 (isEmpty!36399 (t!378050 s!2326)))))

(declare-fun e!3745026 () Bool)

(assert (=> d!1925418 (= (matchZipper!2101 lt!2333666 (t!378050 s!2326)) e!3745026)))

(declare-fun b!6145565 () Bool)

(assert (=> b!6145565 (= e!3745026 (nullableZipper!1870 lt!2333666))))

(declare-fun b!6145566 () Bool)

(assert (=> b!6145566 (= e!3745026 (matchZipper!2101 (derivationStepZipper!2062 lt!2333666 (head!12699 (t!378050 s!2326))) (tail!11784 (t!378050 s!2326))))))

(assert (= (and d!1925418 c!1105742) b!6145565))

(assert (= (and d!1925418 (not c!1105742)) b!6145566))

(assert (=> d!1925418 m!6986000))

(declare-fun m!6986098 () Bool)

(assert (=> b!6145565 m!6986098))

(assert (=> b!6145566 m!6986004))

(assert (=> b!6145566 m!6986004))

(declare-fun m!6986100 () Bool)

(assert (=> b!6145566 m!6986100))

(assert (=> b!6145566 m!6986008))

(assert (=> b!6145566 m!6986100))

(assert (=> b!6145566 m!6986008))

(declare-fun m!6986102 () Bool)

(assert (=> b!6145566 m!6986102))

(assert (=> b!6145028 d!1925418))

(declare-fun b!6145585 () Bool)

(declare-fun e!3745037 () Bool)

(assert (=> b!6145585 (= e!3745037 (matchR!8272 (regTwo!32690 r!7292) s!2326))))

(declare-fun b!6145586 () Bool)

(declare-fun e!3745040 () Bool)

(declare-fun lt!2333740 () Option!15980)

(declare-fun ++!14175 (List!64567 List!64567) List!64567)

(declare-fun get!22235 (Option!15980) tuple2!66136)

(assert (=> b!6145586 (= e!3745040 (= (++!14175 (_1!36371 (get!22235 lt!2333740)) (_2!36371 (get!22235 lt!2333740))) s!2326))))

(declare-fun b!6145587 () Bool)

(declare-fun e!3745038 () Bool)

(assert (=> b!6145587 (= e!3745038 (not (isDefined!12683 lt!2333740)))))

(declare-fun b!6145588 () Bool)

(declare-fun e!3745041 () Option!15980)

(declare-fun e!3745039 () Option!15980)

(assert (=> b!6145588 (= e!3745041 e!3745039)))

(declare-fun c!1105748 () Bool)

(assert (=> b!6145588 (= c!1105748 ((_ is Nil!64443) s!2326))))

(declare-fun b!6145589 () Bool)

(declare-fun lt!2333739 () Unit!157513)

(declare-fun lt!2333741 () Unit!157513)

(assert (=> b!6145589 (= lt!2333739 lt!2333741)))

(assert (=> b!6145589 (= (++!14175 (++!14175 Nil!64443 (Cons!64443 (h!70891 s!2326) Nil!64443)) (t!378050 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2270 (List!64567 C!32448 List!64567 List!64567) Unit!157513)

(assert (=> b!6145589 (= lt!2333741 (lemmaMoveElementToOtherListKeepsConcatEq!2270 Nil!64443 (h!70891 s!2326) (t!378050 s!2326) s!2326))))

(assert (=> b!6145589 (= e!3745039 (findConcatSeparation!2394 (regOne!32690 r!7292) (regTwo!32690 r!7292) (++!14175 Nil!64443 (Cons!64443 (h!70891 s!2326) Nil!64443)) (t!378050 s!2326) s!2326))))

(declare-fun b!6145590 () Bool)

(declare-fun res!2546012 () Bool)

(assert (=> b!6145590 (=> (not res!2546012) (not e!3745040))))

(assert (=> b!6145590 (= res!2546012 (matchR!8272 (regOne!32690 r!7292) (_1!36371 (get!22235 lt!2333740))))))

(declare-fun b!6145591 () Bool)

(assert (=> b!6145591 (= e!3745039 None!15979)))

(declare-fun b!6145592 () Bool)

(declare-fun res!2546013 () Bool)

(assert (=> b!6145592 (=> (not res!2546013) (not e!3745040))))

(assert (=> b!6145592 (= res!2546013 (matchR!8272 (regTwo!32690 r!7292) (_2!36371 (get!22235 lt!2333740))))))

(declare-fun d!1925420 () Bool)

(assert (=> d!1925420 e!3745038))

(declare-fun res!2546015 () Bool)

(assert (=> d!1925420 (=> res!2546015 e!3745038)))

(assert (=> d!1925420 (= res!2546015 e!3745040)))

(declare-fun res!2546011 () Bool)

(assert (=> d!1925420 (=> (not res!2546011) (not e!3745040))))

(assert (=> d!1925420 (= res!2546011 (isDefined!12683 lt!2333740))))

(assert (=> d!1925420 (= lt!2333740 e!3745041)))

(declare-fun c!1105747 () Bool)

(assert (=> d!1925420 (= c!1105747 e!3745037)))

(declare-fun res!2546014 () Bool)

(assert (=> d!1925420 (=> (not res!2546014) (not e!3745037))))

(assert (=> d!1925420 (= res!2546014 (matchR!8272 (regOne!32690 r!7292) Nil!64443))))

(assert (=> d!1925420 (validRegex!7825 (regOne!32690 r!7292))))

(assert (=> d!1925420 (= (findConcatSeparation!2394 (regOne!32690 r!7292) (regTwo!32690 r!7292) Nil!64443 s!2326 s!2326) lt!2333740)))

(declare-fun b!6145593 () Bool)

(assert (=> b!6145593 (= e!3745041 (Some!15979 (tuple2!66137 Nil!64443 s!2326)))))

(assert (= (and d!1925420 res!2546014) b!6145585))

(assert (= (and d!1925420 c!1105747) b!6145593))

(assert (= (and d!1925420 (not c!1105747)) b!6145588))

(assert (= (and b!6145588 c!1105748) b!6145591))

(assert (= (and b!6145588 (not c!1105748)) b!6145589))

(assert (= (and d!1925420 res!2546011) b!6145590))

(assert (= (and b!6145590 res!2546012) b!6145592))

(assert (= (and b!6145592 res!2546013) b!6145586))

(assert (= (and d!1925420 (not res!2546015)) b!6145587))

(declare-fun m!6986104 () Bool)

(assert (=> b!6145585 m!6986104))

(declare-fun m!6986106 () Bool)

(assert (=> b!6145589 m!6986106))

(assert (=> b!6145589 m!6986106))

(declare-fun m!6986108 () Bool)

(assert (=> b!6145589 m!6986108))

(declare-fun m!6986110 () Bool)

(assert (=> b!6145589 m!6986110))

(assert (=> b!6145589 m!6986106))

(declare-fun m!6986112 () Bool)

(assert (=> b!6145589 m!6986112))

(declare-fun m!6986114 () Bool)

(assert (=> b!6145592 m!6986114))

(declare-fun m!6986116 () Bool)

(assert (=> b!6145592 m!6986116))

(assert (=> b!6145586 m!6986114))

(declare-fun m!6986118 () Bool)

(assert (=> b!6145586 m!6986118))

(declare-fun m!6986120 () Bool)

(assert (=> b!6145587 m!6986120))

(assert (=> b!6145590 m!6986114))

(declare-fun m!6986122 () Bool)

(assert (=> b!6145590 m!6986122))

(assert (=> d!1925420 m!6986120))

(declare-fun m!6986124 () Bool)

(assert (=> d!1925420 m!6986124))

(declare-fun m!6986126 () Bool)

(assert (=> d!1925420 m!6986126))

(assert (=> b!6145019 d!1925420))

(declare-fun d!1925422 () Bool)

(declare-fun choose!45679 (Int) Bool)

(assert (=> d!1925422 (= (Exists!3159 lambda!335020) (choose!45679 lambda!335020))))

(declare-fun bs!1523656 () Bool)

(assert (= bs!1523656 d!1925422))

(declare-fun m!6986128 () Bool)

(assert (=> bs!1523656 m!6986128))

(assert (=> b!6145019 d!1925422))

(declare-fun bs!1523657 () Bool)

(declare-fun d!1925424 () Bool)

(assert (= bs!1523657 (and d!1925424 b!6145019)))

(declare-fun lambda!335065 () Int)

(assert (=> bs!1523657 (= lambda!335065 lambda!335019)))

(assert (=> bs!1523657 (not (= lambda!335065 lambda!335020))))

(assert (=> d!1925424 true))

(assert (=> d!1925424 true))

(assert (=> d!1925424 true))

(assert (=> d!1925424 (= (isDefined!12683 (findConcatSeparation!2394 (regOne!32690 r!7292) (regTwo!32690 r!7292) Nil!64443 s!2326 s!2326)) (Exists!3159 lambda!335065))))

(declare-fun lt!2333744 () Unit!157513)

(declare-fun choose!45680 (Regex!16089 Regex!16089 List!64567) Unit!157513)

(assert (=> d!1925424 (= lt!2333744 (choose!45680 (regOne!32690 r!7292) (regTwo!32690 r!7292) s!2326))))

(assert (=> d!1925424 (validRegex!7825 (regOne!32690 r!7292))))

(assert (=> d!1925424 (= (lemmaFindConcatSeparationEquivalentToExists!2158 (regOne!32690 r!7292) (regTwo!32690 r!7292) s!2326) lt!2333744)))

(declare-fun bs!1523658 () Bool)

(assert (= bs!1523658 d!1925424))

(assert (=> bs!1523658 m!6986126))

(declare-fun m!6986130 () Bool)

(assert (=> bs!1523658 m!6986130))

(assert (=> bs!1523658 m!6985722))

(assert (=> bs!1523658 m!6985724))

(assert (=> bs!1523658 m!6985722))

(declare-fun m!6986132 () Bool)

(assert (=> bs!1523658 m!6986132))

(assert (=> b!6145019 d!1925424))

(declare-fun bs!1523659 () Bool)

(declare-fun d!1925426 () Bool)

(assert (= bs!1523659 (and d!1925426 b!6145019)))

(declare-fun lambda!335070 () Int)

(assert (=> bs!1523659 (= lambda!335070 lambda!335019)))

(assert (=> bs!1523659 (not (= lambda!335070 lambda!335020))))

(declare-fun bs!1523660 () Bool)

(assert (= bs!1523660 (and d!1925426 d!1925424)))

(assert (=> bs!1523660 (= lambda!335070 lambda!335065)))

(assert (=> d!1925426 true))

(assert (=> d!1925426 true))

(assert (=> d!1925426 true))

(declare-fun lambda!335071 () Int)

(assert (=> bs!1523659 (not (= lambda!335071 lambda!335019))))

(assert (=> bs!1523659 (= lambda!335071 lambda!335020)))

(assert (=> bs!1523660 (not (= lambda!335071 lambda!335065))))

(declare-fun bs!1523661 () Bool)

(assert (= bs!1523661 d!1925426))

(assert (=> bs!1523661 (not (= lambda!335071 lambda!335070))))

(assert (=> d!1925426 true))

(assert (=> d!1925426 true))

(assert (=> d!1925426 true))

(assert (=> d!1925426 (= (Exists!3159 lambda!335070) (Exists!3159 lambda!335071))))

(declare-fun lt!2333747 () Unit!157513)

(declare-fun choose!45681 (Regex!16089 Regex!16089 List!64567) Unit!157513)

(assert (=> d!1925426 (= lt!2333747 (choose!45681 (regOne!32690 r!7292) (regTwo!32690 r!7292) s!2326))))

(assert (=> d!1925426 (validRegex!7825 (regOne!32690 r!7292))))

(assert (=> d!1925426 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1696 (regOne!32690 r!7292) (regTwo!32690 r!7292) s!2326) lt!2333747)))

(declare-fun m!6986134 () Bool)

(assert (=> bs!1523661 m!6986134))

(declare-fun m!6986136 () Bool)

(assert (=> bs!1523661 m!6986136))

(declare-fun m!6986138 () Bool)

(assert (=> bs!1523661 m!6986138))

(assert (=> bs!1523661 m!6986126))

(assert (=> b!6145019 d!1925426))

(declare-fun d!1925428 () Bool)

(assert (=> d!1925428 (= (Exists!3159 lambda!335019) (choose!45679 lambda!335019))))

(declare-fun bs!1523662 () Bool)

(assert (= bs!1523662 d!1925428))

(declare-fun m!6986140 () Bool)

(assert (=> bs!1523662 m!6986140))

(assert (=> b!6145019 d!1925428))

(declare-fun d!1925430 () Bool)

(declare-fun isEmpty!36401 (Option!15980) Bool)

(assert (=> d!1925430 (= (isDefined!12683 (findConcatSeparation!2394 (regOne!32690 r!7292) (regTwo!32690 r!7292) Nil!64443 s!2326 s!2326)) (not (isEmpty!36401 (findConcatSeparation!2394 (regOne!32690 r!7292) (regTwo!32690 r!7292) Nil!64443 s!2326 s!2326))))))

(declare-fun bs!1523663 () Bool)

(assert (= bs!1523663 d!1925430))

(assert (=> bs!1523663 m!6985722))

(declare-fun m!6986142 () Bool)

(assert (=> bs!1523663 m!6986142))

(assert (=> b!6145019 d!1925430))

(declare-fun d!1925432 () Bool)

(assert (=> d!1925432 (= (flatMap!1594 lt!2333670 lambda!335021) (dynLambda!25398 lambda!335021 lt!2333672))))

(declare-fun lt!2333748 () Unit!157513)

(assert (=> d!1925432 (= lt!2333748 (choose!45677 lt!2333670 lt!2333672 lambda!335021))))

(assert (=> d!1925432 (= lt!2333670 (store ((as const (Array Context!10946 Bool)) false) lt!2333672 true))))

(assert (=> d!1925432 (= (lemmaFlatMapOnSingletonSet!1120 lt!2333670 lt!2333672 lambda!335021) lt!2333748)))

(declare-fun b_lambda!233899 () Bool)

(assert (=> (not b_lambda!233899) (not d!1925432)))

(declare-fun bs!1523664 () Bool)

(assert (= bs!1523664 d!1925432))

(assert (=> bs!1523664 m!6985704))

(declare-fun m!6986144 () Bool)

(assert (=> bs!1523664 m!6986144))

(declare-fun m!6986146 () Bool)

(assert (=> bs!1523664 m!6986146))

(assert (=> bs!1523664 m!6985706))

(assert (=> b!6145029 d!1925432))

(declare-fun bs!1523665 () Bool)

(declare-fun d!1925434 () Bool)

(assert (= bs!1523665 (and d!1925434 d!1925396)))

(declare-fun lambda!335072 () Int)

(assert (=> bs!1523665 (= lambda!335072 lambda!335053)))

(declare-fun bs!1523666 () Bool)

(assert (= bs!1523666 (and d!1925434 d!1925398)))

(assert (=> bs!1523666 (= lambda!335072 lambda!335056)))

(declare-fun bs!1523667 () Bool)

(assert (= bs!1523667 (and d!1925434 d!1925400)))

(assert (=> bs!1523667 (= lambda!335072 lambda!335059)))

(declare-fun bs!1523668 () Bool)

(assert (= bs!1523668 (and d!1925434 d!1925402)))

(assert (=> bs!1523668 (= lambda!335072 lambda!335062)))

(assert (=> d!1925434 (= (inv!83469 (Context!10947 (Cons!64442 (regTwo!32691 (regOne!32690 r!7292)) (t!378049 (exprs!5973 (h!70892 zl!343)))))) (forall!15210 (exprs!5973 (Context!10947 (Cons!64442 (regTwo!32691 (regOne!32690 r!7292)) (t!378049 (exprs!5973 (h!70892 zl!343)))))) lambda!335072))))

(declare-fun bs!1523669 () Bool)

(assert (= bs!1523669 d!1925434))

(declare-fun m!6986148 () Bool)

(assert (=> bs!1523669 m!6986148))

(assert (=> b!6145029 d!1925434))

(declare-fun e!3745050 () (InoxSet Context!10946))

(declare-fun b!6145606 () Bool)

(declare-fun call!510700 () (InoxSet Context!10946))

(assert (=> b!6145606 (= e!3745050 ((_ map or) call!510700 (derivationStepZipperUp!1263 (Context!10947 (t!378049 (exprs!5973 lt!2333672))) (h!70891 s!2326))))))

(declare-fun b!6145607 () Bool)

(declare-fun e!3745048 () Bool)

(assert (=> b!6145607 (= e!3745048 (nullable!6082 (h!70890 (exprs!5973 lt!2333672))))))

(declare-fun bm!510695 () Bool)

(assert (=> bm!510695 (= call!510700 (derivationStepZipperDown!1337 (h!70890 (exprs!5973 lt!2333672)) (Context!10947 (t!378049 (exprs!5973 lt!2333672))) (h!70891 s!2326)))))

(declare-fun b!6145609 () Bool)

(declare-fun e!3745049 () (InoxSet Context!10946))

(assert (=> b!6145609 (= e!3745050 e!3745049)))

(declare-fun c!1105750 () Bool)

(assert (=> b!6145609 (= c!1105750 ((_ is Cons!64442) (exprs!5973 lt!2333672)))))

(declare-fun b!6145610 () Bool)

(assert (=> b!6145610 (= e!3745049 call!510700)))

(declare-fun b!6145608 () Bool)

(assert (=> b!6145608 (= e!3745049 ((as const (Array Context!10946 Bool)) false))))

(declare-fun d!1925436 () Bool)

(declare-fun c!1105749 () Bool)

(assert (=> d!1925436 (= c!1105749 e!3745048)))

(declare-fun res!2546028 () Bool)

(assert (=> d!1925436 (=> (not res!2546028) (not e!3745048))))

(assert (=> d!1925436 (= res!2546028 ((_ is Cons!64442) (exprs!5973 lt!2333672)))))

(assert (=> d!1925436 (= (derivationStepZipperUp!1263 lt!2333672 (h!70891 s!2326)) e!3745050)))

(assert (= (and d!1925436 res!2546028) b!6145607))

(assert (= (and d!1925436 c!1105749) b!6145606))

(assert (= (and d!1925436 (not c!1105749)) b!6145609))

(assert (= (and b!6145609 c!1105750) b!6145610))

(assert (= (and b!6145609 (not c!1105750)) b!6145608))

(assert (= (or b!6145606 b!6145610) bm!510695))

(declare-fun m!6986150 () Bool)

(assert (=> b!6145606 m!6986150))

(declare-fun m!6986152 () Bool)

(assert (=> b!6145607 m!6986152))

(declare-fun m!6986154 () Bool)

(assert (=> bm!510695 m!6986154))

(assert (=> b!6145029 d!1925436))

(declare-fun d!1925438 () Bool)

(assert (=> d!1925438 (= (flatMap!1594 lt!2333670 lambda!335021) (choose!45678 lt!2333670 lambda!335021))))

(declare-fun bs!1523670 () Bool)

(assert (= bs!1523670 d!1925438))

(declare-fun m!6986156 () Bool)

(assert (=> bs!1523670 m!6986156))

(assert (=> b!6145029 d!1925438))

(declare-fun d!1925440 () Bool)

(assert (=> d!1925440 (= (nullable!6082 (regOne!32691 (regOne!32690 r!7292))) (nullableFct!2046 (regOne!32691 (regOne!32690 r!7292))))))

(declare-fun bs!1523671 () Bool)

(assert (= bs!1523671 d!1925440))

(declare-fun m!6986158 () Bool)

(assert (=> bs!1523671 m!6986158))

(assert (=> b!6145029 d!1925440))

(assert (=> b!6145040 d!1925392))

(declare-fun d!1925442 () Bool)

(declare-fun c!1105751 () Bool)

(assert (=> d!1925442 (= c!1105751 (isEmpty!36399 (t!378050 s!2326)))))

(declare-fun e!3745051 () Bool)

(assert (=> d!1925442 (= (matchZipper!2101 lt!2333671 (t!378050 s!2326)) e!3745051)))

(declare-fun b!6145611 () Bool)

(assert (=> b!6145611 (= e!3745051 (nullableZipper!1870 lt!2333671))))

(declare-fun b!6145612 () Bool)

(assert (=> b!6145612 (= e!3745051 (matchZipper!2101 (derivationStepZipper!2062 lt!2333671 (head!12699 (t!378050 s!2326))) (tail!11784 (t!378050 s!2326))))))

(assert (= (and d!1925442 c!1105751) b!6145611))

(assert (= (and d!1925442 (not c!1105751)) b!6145612))

(assert (=> d!1925442 m!6986000))

(declare-fun m!6986160 () Bool)

(assert (=> b!6145611 m!6986160))

(assert (=> b!6145612 m!6986004))

(assert (=> b!6145612 m!6986004))

(declare-fun m!6986162 () Bool)

(assert (=> b!6145612 m!6986162))

(assert (=> b!6145612 m!6986008))

(assert (=> b!6145612 m!6986162))

(assert (=> b!6145612 m!6986008))

(declare-fun m!6986164 () Bool)

(assert (=> b!6145612 m!6986164))

(assert (=> b!6145040 d!1925442))

(declare-fun d!1925444 () Bool)

(declare-fun c!1105752 () Bool)

(assert (=> d!1925444 (= c!1105752 (isEmpty!36399 (t!378050 s!2326)))))

(declare-fun e!3745052 () Bool)

(assert (=> d!1925444 (= (matchZipper!2101 lt!2333661 (t!378050 s!2326)) e!3745052)))

(declare-fun b!6145613 () Bool)

(assert (=> b!6145613 (= e!3745052 (nullableZipper!1870 lt!2333661))))

(declare-fun b!6145614 () Bool)

(assert (=> b!6145614 (= e!3745052 (matchZipper!2101 (derivationStepZipper!2062 lt!2333661 (head!12699 (t!378050 s!2326))) (tail!11784 (t!378050 s!2326))))))

(assert (= (and d!1925444 c!1105752) b!6145613))

(assert (= (and d!1925444 (not c!1105752)) b!6145614))

(assert (=> d!1925444 m!6986000))

(declare-fun m!6986166 () Bool)

(assert (=> b!6145613 m!6986166))

(assert (=> b!6145614 m!6986004))

(assert (=> b!6145614 m!6986004))

(declare-fun m!6986168 () Bool)

(assert (=> b!6145614 m!6986168))

(assert (=> b!6145614 m!6986008))

(assert (=> b!6145614 m!6986168))

(assert (=> b!6145614 m!6986008))

(declare-fun m!6986170 () Bool)

(assert (=> b!6145614 m!6986170))

(assert (=> b!6145040 d!1925444))

(declare-fun d!1925446 () Bool)

(declare-fun e!3745053 () Bool)

(assert (=> d!1925446 (= (matchZipper!2101 ((_ map or) lt!2333661 lt!2333666) (t!378050 s!2326)) e!3745053)))

(declare-fun res!2546029 () Bool)

(assert (=> d!1925446 (=> res!2546029 e!3745053)))

(assert (=> d!1925446 (= res!2546029 (matchZipper!2101 lt!2333661 (t!378050 s!2326)))))

(declare-fun lt!2333749 () Unit!157513)

(assert (=> d!1925446 (= lt!2333749 (choose!45674 lt!2333661 lt!2333666 (t!378050 s!2326)))))

(assert (=> d!1925446 (= (lemmaZipperConcatMatchesSameAsBothZippers!920 lt!2333661 lt!2333666 (t!378050 s!2326)) lt!2333749)))

(declare-fun b!6145615 () Bool)

(assert (=> b!6145615 (= e!3745053 (matchZipper!2101 lt!2333666 (t!378050 s!2326)))))

(assert (= (and d!1925446 (not res!2546029)) b!6145615))

(declare-fun m!6986172 () Bool)

(assert (=> d!1925446 m!6986172))

(assert (=> d!1925446 m!6985682))

(declare-fun m!6986174 () Bool)

(assert (=> d!1925446 m!6986174))

(assert (=> b!6145615 m!6985678))

(assert (=> b!6145040 d!1925446))

(declare-fun d!1925448 () Bool)

(declare-fun lt!2333752 () Regex!16089)

(assert (=> d!1925448 (validRegex!7825 lt!2333752)))

(assert (=> d!1925448 (= lt!2333752 (generalisedUnion!1933 (unfocusZipperList!1510 zl!343)))))

(assert (=> d!1925448 (= (unfocusZipper!1831 zl!343) lt!2333752)))

(declare-fun bs!1523672 () Bool)

(assert (= bs!1523672 d!1925448))

(declare-fun m!6986176 () Bool)

(assert (=> bs!1523672 m!6986176))

(assert (=> bs!1523672 m!6985742))

(assert (=> bs!1523672 m!6985742))

(assert (=> bs!1523672 m!6985744))

(assert (=> b!6145030 d!1925448))

(declare-fun bs!1523673 () Bool)

(declare-fun b!6145655 () Bool)

(assert (= bs!1523673 (and b!6145655 b!6145019)))

(declare-fun lambda!335077 () Int)

(assert (=> bs!1523673 (not (= lambda!335077 lambda!335019))))

(declare-fun bs!1523674 () Bool)

(assert (= bs!1523674 (and b!6145655 d!1925426)))

(assert (=> bs!1523674 (not (= lambda!335077 lambda!335070))))

(declare-fun bs!1523675 () Bool)

(assert (= bs!1523675 (and b!6145655 d!1925424)))

(assert (=> bs!1523675 (not (= lambda!335077 lambda!335065))))

(assert (=> bs!1523674 (not (= lambda!335077 lambda!335071))))

(assert (=> bs!1523673 (not (= lambda!335077 lambda!335020))))

(assert (=> b!6145655 true))

(assert (=> b!6145655 true))

(declare-fun bs!1523676 () Bool)

(declare-fun b!6145648 () Bool)

(assert (= bs!1523676 (and b!6145648 d!1925426)))

(declare-fun lambda!335078 () Int)

(assert (=> bs!1523676 (not (= lambda!335078 lambda!335070))))

(declare-fun bs!1523677 () Bool)

(assert (= bs!1523677 (and b!6145648 d!1925424)))

(assert (=> bs!1523677 (not (= lambda!335078 lambda!335065))))

(declare-fun bs!1523678 () Bool)

(assert (= bs!1523678 (and b!6145648 b!6145019)))

(assert (=> bs!1523678 (not (= lambda!335078 lambda!335019))))

(declare-fun bs!1523679 () Bool)

(assert (= bs!1523679 (and b!6145648 b!6145655)))

(assert (=> bs!1523679 (not (= lambda!335078 lambda!335077))))

(assert (=> bs!1523676 (= lambda!335078 lambda!335071)))

(assert (=> bs!1523678 (= lambda!335078 lambda!335020)))

(assert (=> b!6145648 true))

(assert (=> b!6145648 true))

(declare-fun bm!510700 () Bool)

(declare-fun call!510706 () Bool)

(assert (=> bm!510700 (= call!510706 (isEmpty!36399 s!2326))))

(declare-fun e!3745076 () Bool)

(declare-fun call!510705 () Bool)

(assert (=> b!6145648 (= e!3745076 call!510705)))

(declare-fun b!6145649 () Bool)

(declare-fun c!1105764 () Bool)

(assert (=> b!6145649 (= c!1105764 ((_ is ElementMatch!16089) r!7292))))

(declare-fun e!3745074 () Bool)

(declare-fun e!3745075 () Bool)

(assert (=> b!6145649 (= e!3745074 e!3745075)))

(declare-fun c!1105761 () Bool)

(declare-fun bm!510701 () Bool)

(assert (=> bm!510701 (= call!510705 (Exists!3159 (ite c!1105761 lambda!335077 lambda!335078)))))

(declare-fun b!6145650 () Bool)

(declare-fun e!3745072 () Bool)

(assert (=> b!6145650 (= e!3745072 e!3745076)))

(assert (=> b!6145650 (= c!1105761 ((_ is Star!16089) r!7292))))

(declare-fun b!6145651 () Bool)

(declare-fun e!3745077 () Bool)

(assert (=> b!6145651 (= e!3745077 call!510706)))

(declare-fun d!1925450 () Bool)

(declare-fun c!1105762 () Bool)

(assert (=> d!1925450 (= c!1105762 ((_ is EmptyExpr!16089) r!7292))))

(assert (=> d!1925450 (= (matchRSpec!3190 r!7292 s!2326) e!3745077)))

(declare-fun b!6145652 () Bool)

(assert (=> b!6145652 (= e!3745075 (= s!2326 (Cons!64443 (c!1105579 r!7292) Nil!64443)))))

(declare-fun b!6145653 () Bool)

(assert (=> b!6145653 (= e!3745077 e!3745074)))

(declare-fun res!2546046 () Bool)

(assert (=> b!6145653 (= res!2546046 (not ((_ is EmptyLang!16089) r!7292)))))

(assert (=> b!6145653 (=> (not res!2546046) (not e!3745074))))

(declare-fun b!6145654 () Bool)

(declare-fun c!1105763 () Bool)

(assert (=> b!6145654 (= c!1105763 ((_ is Union!16089) r!7292))))

(assert (=> b!6145654 (= e!3745075 e!3745072)))

(declare-fun e!3745073 () Bool)

(assert (=> b!6145655 (= e!3745073 call!510705)))

(declare-fun b!6145656 () Bool)

(declare-fun e!3745078 () Bool)

(assert (=> b!6145656 (= e!3745072 e!3745078)))

(declare-fun res!2546048 () Bool)

(assert (=> b!6145656 (= res!2546048 (matchRSpec!3190 (regOne!32691 r!7292) s!2326))))

(assert (=> b!6145656 (=> res!2546048 e!3745078)))

(declare-fun b!6145657 () Bool)

(assert (=> b!6145657 (= e!3745078 (matchRSpec!3190 (regTwo!32691 r!7292) s!2326))))

(declare-fun b!6145658 () Bool)

(declare-fun res!2546047 () Bool)

(assert (=> b!6145658 (=> res!2546047 e!3745073)))

(assert (=> b!6145658 (= res!2546047 call!510706)))

(assert (=> b!6145658 (= e!3745076 e!3745073)))

(assert (= (and d!1925450 c!1105762) b!6145651))

(assert (= (and d!1925450 (not c!1105762)) b!6145653))

(assert (= (and b!6145653 res!2546046) b!6145649))

(assert (= (and b!6145649 c!1105764) b!6145652))

(assert (= (and b!6145649 (not c!1105764)) b!6145654))

(assert (= (and b!6145654 c!1105763) b!6145656))

(assert (= (and b!6145654 (not c!1105763)) b!6145650))

(assert (= (and b!6145656 (not res!2546048)) b!6145657))

(assert (= (and b!6145650 c!1105761) b!6145658))

(assert (= (and b!6145650 (not c!1105761)) b!6145648))

(assert (= (and b!6145658 (not res!2546047)) b!6145655))

(assert (= (or b!6145655 b!6145648) bm!510701))

(assert (= (or b!6145651 b!6145658) bm!510700))

(declare-fun m!6986178 () Bool)

(assert (=> bm!510700 m!6986178))

(declare-fun m!6986180 () Bool)

(assert (=> bm!510701 m!6986180))

(declare-fun m!6986182 () Bool)

(assert (=> b!6145656 m!6986182))

(declare-fun m!6986184 () Bool)

(assert (=> b!6145657 m!6986184))

(assert (=> b!6145041 d!1925450))

(declare-fun b!6145687 () Bool)

(declare-fun e!3745097 () Bool)

(declare-fun lt!2333755 () Bool)

(declare-fun call!510709 () Bool)

(assert (=> b!6145687 (= e!3745097 (= lt!2333755 call!510709))))

(declare-fun b!6145688 () Bool)

(declare-fun res!2546072 () Bool)

(declare-fun e!3745099 () Bool)

(assert (=> b!6145688 (=> res!2546072 e!3745099)))

(declare-fun e!3745095 () Bool)

(assert (=> b!6145688 (= res!2546072 e!3745095)))

(declare-fun res!2546070 () Bool)

(assert (=> b!6145688 (=> (not res!2546070) (not e!3745095))))

(assert (=> b!6145688 (= res!2546070 lt!2333755)))

(declare-fun b!6145689 () Bool)

(declare-fun e!3745098 () Bool)

(declare-fun derivativeStep!4809 (Regex!16089 C!32448) Regex!16089)

(assert (=> b!6145689 (= e!3745098 (matchR!8272 (derivativeStep!4809 r!7292 (head!12699 s!2326)) (tail!11784 s!2326)))))

(declare-fun b!6145690 () Bool)

(declare-fun res!2546067 () Bool)

(declare-fun e!3745096 () Bool)

(assert (=> b!6145690 (=> res!2546067 e!3745096)))

(assert (=> b!6145690 (= res!2546067 (not (isEmpty!36399 (tail!11784 s!2326))))))

(declare-fun b!6145691 () Bool)

(assert (=> b!6145691 (= e!3745098 (nullable!6082 r!7292))))

(declare-fun b!6145692 () Bool)

(declare-fun res!2546071 () Bool)

(assert (=> b!6145692 (=> (not res!2546071) (not e!3745095))))

(assert (=> b!6145692 (= res!2546071 (not call!510709))))

(declare-fun b!6145693 () Bool)

(declare-fun res!2546066 () Bool)

(assert (=> b!6145693 (=> res!2546066 e!3745099)))

(assert (=> b!6145693 (= res!2546066 (not ((_ is ElementMatch!16089) r!7292)))))

(declare-fun e!3745093 () Bool)

(assert (=> b!6145693 (= e!3745093 e!3745099)))

(declare-fun d!1925452 () Bool)

(assert (=> d!1925452 e!3745097))

(declare-fun c!1105773 () Bool)

(assert (=> d!1925452 (= c!1105773 ((_ is EmptyExpr!16089) r!7292))))

(assert (=> d!1925452 (= lt!2333755 e!3745098)))

(declare-fun c!1105772 () Bool)

(assert (=> d!1925452 (= c!1105772 (isEmpty!36399 s!2326))))

(assert (=> d!1925452 (validRegex!7825 r!7292)))

(assert (=> d!1925452 (= (matchR!8272 r!7292 s!2326) lt!2333755)))

(declare-fun b!6145694 () Bool)

(assert (=> b!6145694 (= e!3745093 (not lt!2333755))))

(declare-fun b!6145695 () Bool)

(declare-fun res!2546065 () Bool)

(assert (=> b!6145695 (=> (not res!2546065) (not e!3745095))))

(assert (=> b!6145695 (= res!2546065 (isEmpty!36399 (tail!11784 s!2326)))))

(declare-fun b!6145696 () Bool)

(assert (=> b!6145696 (= e!3745097 e!3745093)))

(declare-fun c!1105771 () Bool)

(assert (=> b!6145696 (= c!1105771 ((_ is EmptyLang!16089) r!7292))))

(declare-fun bm!510704 () Bool)

(assert (=> bm!510704 (= call!510709 (isEmpty!36399 s!2326))))

(declare-fun b!6145697 () Bool)

(declare-fun e!3745094 () Bool)

(assert (=> b!6145697 (= e!3745099 e!3745094)))

(declare-fun res!2546069 () Bool)

(assert (=> b!6145697 (=> (not res!2546069) (not e!3745094))))

(assert (=> b!6145697 (= res!2546069 (not lt!2333755))))

(declare-fun b!6145698 () Bool)

(assert (=> b!6145698 (= e!3745096 (not (= (head!12699 s!2326) (c!1105579 r!7292))))))

(declare-fun b!6145699 () Bool)

(assert (=> b!6145699 (= e!3745095 (= (head!12699 s!2326) (c!1105579 r!7292)))))

(declare-fun b!6145700 () Bool)

(assert (=> b!6145700 (= e!3745094 e!3745096)))

(declare-fun res!2546068 () Bool)

(assert (=> b!6145700 (=> res!2546068 e!3745096)))

(assert (=> b!6145700 (= res!2546068 call!510709)))

(assert (= (and d!1925452 c!1105772) b!6145691))

(assert (= (and d!1925452 (not c!1105772)) b!6145689))

(assert (= (and d!1925452 c!1105773) b!6145687))

(assert (= (and d!1925452 (not c!1105773)) b!6145696))

(assert (= (and b!6145696 c!1105771) b!6145694))

(assert (= (and b!6145696 (not c!1105771)) b!6145693))

(assert (= (and b!6145693 (not res!2546066)) b!6145688))

(assert (= (and b!6145688 res!2546070) b!6145692))

(assert (= (and b!6145692 res!2546071) b!6145695))

(assert (= (and b!6145695 res!2546065) b!6145699))

(assert (= (and b!6145688 (not res!2546072)) b!6145697))

(assert (= (and b!6145697 res!2546069) b!6145700))

(assert (= (and b!6145700 (not res!2546068)) b!6145690))

(assert (= (and b!6145690 (not res!2546067)) b!6145698))

(assert (= (or b!6145687 b!6145692 b!6145700) bm!510704))

(declare-fun m!6986186 () Bool)

(assert (=> b!6145699 m!6986186))

(declare-fun m!6986188 () Bool)

(assert (=> b!6145691 m!6986188))

(assert (=> d!1925452 m!6986178))

(assert (=> d!1925452 m!6985738))

(assert (=> b!6145689 m!6986186))

(assert (=> b!6145689 m!6986186))

(declare-fun m!6986190 () Bool)

(assert (=> b!6145689 m!6986190))

(declare-fun m!6986192 () Bool)

(assert (=> b!6145689 m!6986192))

(assert (=> b!6145689 m!6986190))

(assert (=> b!6145689 m!6986192))

(declare-fun m!6986194 () Bool)

(assert (=> b!6145689 m!6986194))

(assert (=> b!6145695 m!6986192))

(assert (=> b!6145695 m!6986192))

(declare-fun m!6986196 () Bool)

(assert (=> b!6145695 m!6986196))

(assert (=> bm!510704 m!6986178))

(assert (=> b!6145690 m!6986192))

(assert (=> b!6145690 m!6986192))

(assert (=> b!6145690 m!6986196))

(assert (=> b!6145698 m!6986186))

(assert (=> b!6145041 d!1925452))

(declare-fun d!1925454 () Bool)

(assert (=> d!1925454 (= (matchR!8272 r!7292 s!2326) (matchRSpec!3190 r!7292 s!2326))))

(declare-fun lt!2333758 () Unit!157513)

(declare-fun choose!45682 (Regex!16089 List!64567) Unit!157513)

(assert (=> d!1925454 (= lt!2333758 (choose!45682 r!7292 s!2326))))

(assert (=> d!1925454 (validRegex!7825 r!7292)))

(assert (=> d!1925454 (= (mainMatchTheorem!3190 r!7292 s!2326) lt!2333758)))

(declare-fun bs!1523680 () Bool)

(assert (= bs!1523680 d!1925454))

(assert (=> bs!1523680 m!6985674))

(assert (=> bs!1523680 m!6985672))

(declare-fun m!6986198 () Bool)

(assert (=> bs!1523680 m!6986198))

(assert (=> bs!1523680 m!6985738))

(assert (=> b!6145041 d!1925454))

(declare-fun d!1925456 () Bool)

(declare-fun c!1105774 () Bool)

(assert (=> d!1925456 (= c!1105774 (isEmpty!36399 (t!378050 s!2326)))))

(declare-fun e!3745100 () Bool)

(assert (=> d!1925456 (= (matchZipper!2101 lt!2333650 (t!378050 s!2326)) e!3745100)))

(declare-fun b!6145701 () Bool)

(assert (=> b!6145701 (= e!3745100 (nullableZipper!1870 lt!2333650))))

(declare-fun b!6145702 () Bool)

(assert (=> b!6145702 (= e!3745100 (matchZipper!2101 (derivationStepZipper!2062 lt!2333650 (head!12699 (t!378050 s!2326))) (tail!11784 (t!378050 s!2326))))))

(assert (= (and d!1925456 c!1105774) b!6145701))

(assert (= (and d!1925456 (not c!1105774)) b!6145702))

(assert (=> d!1925456 m!6986000))

(declare-fun m!6986200 () Bool)

(assert (=> b!6145701 m!6986200))

(assert (=> b!6145702 m!6986004))

(assert (=> b!6145702 m!6986004))

(declare-fun m!6986202 () Bool)

(assert (=> b!6145702 m!6986202))

(assert (=> b!6145702 m!6986008))

(assert (=> b!6145702 m!6986202))

(assert (=> b!6145702 m!6986008))

(declare-fun m!6986204 () Bool)

(assert (=> b!6145702 m!6986204))

(assert (=> b!6145022 d!1925456))

(assert (=> b!6145013 d!1925418))

(declare-fun d!1925458 () Bool)

(assert (=> d!1925458 (= (isEmpty!36396 (t!378051 zl!343)) ((_ is Nil!64444) (t!378051 zl!343)))))

(assert (=> b!6145023 d!1925458))

(declare-fun d!1925460 () Bool)

(declare-fun e!3745103 () Bool)

(assert (=> d!1925460 e!3745103))

(declare-fun res!2546075 () Bool)

(assert (=> d!1925460 (=> (not res!2546075) (not e!3745103))))

(declare-fun lt!2333761 () List!64568)

(declare-fun noDuplicate!1936 (List!64568) Bool)

(assert (=> d!1925460 (= res!2546075 (noDuplicate!1936 lt!2333761))))

(declare-fun choose!45683 ((InoxSet Context!10946)) List!64568)

(assert (=> d!1925460 (= lt!2333761 (choose!45683 z!1189))))

(assert (=> d!1925460 (= (toList!9873 z!1189) lt!2333761)))

(declare-fun b!6145705 () Bool)

(declare-fun content!12000 (List!64568) (InoxSet Context!10946))

(assert (=> b!6145705 (= e!3745103 (= (content!12000 lt!2333761) z!1189))))

(assert (= (and d!1925460 res!2546075) b!6145705))

(declare-fun m!6986206 () Bool)

(assert (=> d!1925460 m!6986206))

(declare-fun m!6986208 () Bool)

(assert (=> d!1925460 m!6986208))

(declare-fun m!6986210 () Bool)

(assert (=> b!6145705 m!6986210))

(assert (=> b!6145033 d!1925460))

(declare-fun b!6145706 () Bool)

(declare-fun c!1105779 () Bool)

(assert (=> b!6145706 (= c!1105779 ((_ is Star!16089) (regTwo!32691 (regOne!32690 r!7292))))))

(declare-fun e!3745105 () (InoxSet Context!10946))

(declare-fun e!3745108 () (InoxSet Context!10946))

(assert (=> b!6145706 (= e!3745105 e!3745108)))

(declare-fun b!6145707 () Bool)

(declare-fun call!510713 () (InoxSet Context!10946))

(assert (=> b!6145707 (= e!3745108 call!510713)))

(declare-fun b!6145708 () Bool)

(declare-fun e!3745104 () (InoxSet Context!10946))

(declare-fun call!510715 () (InoxSet Context!10946))

(declare-fun call!510714 () (InoxSet Context!10946))

(assert (=> b!6145708 (= e!3745104 ((_ map or) call!510715 call!510714))))

(declare-fun b!6145709 () Bool)

(declare-fun e!3745106 () (InoxSet Context!10946))

(declare-fun call!510712 () (InoxSet Context!10946))

(assert (=> b!6145709 (= e!3745106 ((_ map or) call!510714 call!510712))))

(declare-fun b!6145710 () Bool)

(declare-fun e!3745109 () Bool)

(assert (=> b!6145710 (= e!3745109 (nullable!6082 (regOne!32690 (regTwo!32691 (regOne!32690 r!7292)))))))

(declare-fun c!1105777 () Bool)

(declare-fun c!1105775 () Bool)

(declare-fun c!1105776 () Bool)

(declare-fun call!510711 () List!64566)

(declare-fun bm!510705 () Bool)

(assert (=> bm!510705 (= call!510715 (derivationStepZipperDown!1337 (ite c!1105776 (regOne!32691 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105775 (regTwo!32690 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105777 (regOne!32690 (regTwo!32691 (regOne!32690 r!7292))) (reg!16418 (regTwo!32691 (regOne!32690 r!7292)))))) (ite (or c!1105776 c!1105775) lt!2333656 (Context!10947 call!510711)) (h!70891 s!2326)))))

(declare-fun bm!510706 () Bool)

(assert (=> bm!510706 (= call!510712 call!510715)))

(declare-fun b!6145711 () Bool)

(assert (=> b!6145711 (= e!3745105 call!510713)))

(declare-fun b!6145712 () Bool)

(declare-fun e!3745107 () (InoxSet Context!10946))

(assert (=> b!6145712 (= e!3745107 (store ((as const (Array Context!10946 Bool)) false) lt!2333656 true))))

(declare-fun b!6145714 () Bool)

(assert (=> b!6145714 (= e!3745107 e!3745104)))

(assert (=> b!6145714 (= c!1105776 ((_ is Union!16089) (regTwo!32691 (regOne!32690 r!7292))))))

(declare-fun call!510710 () List!64566)

(declare-fun bm!510707 () Bool)

(assert (=> bm!510707 (= call!510710 ($colon$colon!1966 (exprs!5973 lt!2333656) (ite (or c!1105775 c!1105777) (regTwo!32690 (regTwo!32691 (regOne!32690 r!7292))) (regTwo!32691 (regOne!32690 r!7292)))))))

(declare-fun bm!510708 () Bool)

(assert (=> bm!510708 (= call!510713 call!510712)))

(declare-fun bm!510709 () Bool)

(assert (=> bm!510709 (= call!510711 call!510710)))

(declare-fun bm!510710 () Bool)

(assert (=> bm!510710 (= call!510714 (derivationStepZipperDown!1337 (ite c!1105776 (regTwo!32691 (regTwo!32691 (regOne!32690 r!7292))) (regOne!32690 (regTwo!32691 (regOne!32690 r!7292)))) (ite c!1105776 lt!2333656 (Context!10947 call!510710)) (h!70891 s!2326)))))

(declare-fun b!6145715 () Bool)

(assert (=> b!6145715 (= e!3745106 e!3745105)))

(assert (=> b!6145715 (= c!1105777 ((_ is Concat!24934) (regTwo!32691 (regOne!32690 r!7292))))))

(declare-fun b!6145716 () Bool)

(assert (=> b!6145716 (= c!1105775 e!3745109)))

(declare-fun res!2546076 () Bool)

(assert (=> b!6145716 (=> (not res!2546076) (not e!3745109))))

(assert (=> b!6145716 (= res!2546076 ((_ is Concat!24934) (regTwo!32691 (regOne!32690 r!7292))))))

(assert (=> b!6145716 (= e!3745104 e!3745106)))

(declare-fun b!6145713 () Bool)

(assert (=> b!6145713 (= e!3745108 ((as const (Array Context!10946 Bool)) false))))

(declare-fun d!1925462 () Bool)

(declare-fun c!1105778 () Bool)

(assert (=> d!1925462 (= c!1105778 (and ((_ is ElementMatch!16089) (regTwo!32691 (regOne!32690 r!7292))) (= (c!1105579 (regTwo!32691 (regOne!32690 r!7292))) (h!70891 s!2326))))))

(assert (=> d!1925462 (= (derivationStepZipperDown!1337 (regTwo!32691 (regOne!32690 r!7292)) lt!2333656 (h!70891 s!2326)) e!3745107)))

(assert (= (and d!1925462 c!1105778) b!6145712))

(assert (= (and d!1925462 (not c!1105778)) b!6145714))

(assert (= (and b!6145714 c!1105776) b!6145708))

(assert (= (and b!6145714 (not c!1105776)) b!6145716))

(assert (= (and b!6145716 res!2546076) b!6145710))

(assert (= (and b!6145716 c!1105775) b!6145709))

(assert (= (and b!6145716 (not c!1105775)) b!6145715))

(assert (= (and b!6145715 c!1105777) b!6145711))

(assert (= (and b!6145715 (not c!1105777)) b!6145706))

(assert (= (and b!6145706 c!1105779) b!6145707))

(assert (= (and b!6145706 (not c!1105779)) b!6145713))

(assert (= (or b!6145711 b!6145707) bm!510709))

(assert (= (or b!6145711 b!6145707) bm!510708))

(assert (= (or b!6145709 bm!510709) bm!510707))

(assert (= (or b!6145709 bm!510708) bm!510706))

(assert (= (or b!6145708 b!6145709) bm!510710))

(assert (= (or b!6145708 bm!510706) bm!510705))

(assert (=> b!6145712 m!6986082))

(declare-fun m!6986212 () Bool)

(assert (=> bm!510705 m!6986212))

(declare-fun m!6986214 () Bool)

(assert (=> bm!510710 m!6986214))

(declare-fun m!6986216 () Bool)

(assert (=> bm!510707 m!6986216))

(declare-fun m!6986218 () Bool)

(assert (=> b!6145710 m!6986218))

(assert (=> b!6145014 d!1925462))

(declare-fun b!6145717 () Bool)

(declare-fun c!1105784 () Bool)

(assert (=> b!6145717 (= c!1105784 ((_ is Star!16089) (regOne!32691 (regOne!32690 r!7292))))))

(declare-fun e!3745111 () (InoxSet Context!10946))

(declare-fun e!3745114 () (InoxSet Context!10946))

(assert (=> b!6145717 (= e!3745111 e!3745114)))

(declare-fun b!6145718 () Bool)

(declare-fun call!510719 () (InoxSet Context!10946))

(assert (=> b!6145718 (= e!3745114 call!510719)))

(declare-fun b!6145719 () Bool)

(declare-fun e!3745110 () (InoxSet Context!10946))

(declare-fun call!510721 () (InoxSet Context!10946))

(declare-fun call!510720 () (InoxSet Context!10946))

(assert (=> b!6145719 (= e!3745110 ((_ map or) call!510721 call!510720))))

(declare-fun b!6145720 () Bool)

(declare-fun e!3745112 () (InoxSet Context!10946))

(declare-fun call!510718 () (InoxSet Context!10946))

(assert (=> b!6145720 (= e!3745112 ((_ map or) call!510720 call!510718))))

(declare-fun b!6145721 () Bool)

(declare-fun e!3745115 () Bool)

(assert (=> b!6145721 (= e!3745115 (nullable!6082 (regOne!32690 (regOne!32691 (regOne!32690 r!7292)))))))

(declare-fun bm!510711 () Bool)

(declare-fun call!510717 () List!64566)

(declare-fun c!1105780 () Bool)

(declare-fun c!1105782 () Bool)

(declare-fun c!1105781 () Bool)

(assert (=> bm!510711 (= call!510721 (derivationStepZipperDown!1337 (ite c!1105781 (regOne!32691 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105780 (regTwo!32690 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105782 (regOne!32690 (regOne!32691 (regOne!32690 r!7292))) (reg!16418 (regOne!32691 (regOne!32690 r!7292)))))) (ite (or c!1105781 c!1105780) lt!2333656 (Context!10947 call!510717)) (h!70891 s!2326)))))

(declare-fun bm!510712 () Bool)

(assert (=> bm!510712 (= call!510718 call!510721)))

(declare-fun b!6145722 () Bool)

(assert (=> b!6145722 (= e!3745111 call!510719)))

(declare-fun b!6145723 () Bool)

(declare-fun e!3745113 () (InoxSet Context!10946))

(assert (=> b!6145723 (= e!3745113 (store ((as const (Array Context!10946 Bool)) false) lt!2333656 true))))

(declare-fun b!6145725 () Bool)

(assert (=> b!6145725 (= e!3745113 e!3745110)))

(assert (=> b!6145725 (= c!1105781 ((_ is Union!16089) (regOne!32691 (regOne!32690 r!7292))))))

(declare-fun call!510716 () List!64566)

(declare-fun bm!510713 () Bool)

(assert (=> bm!510713 (= call!510716 ($colon$colon!1966 (exprs!5973 lt!2333656) (ite (or c!1105780 c!1105782) (regTwo!32690 (regOne!32691 (regOne!32690 r!7292))) (regOne!32691 (regOne!32690 r!7292)))))))

(declare-fun bm!510714 () Bool)

(assert (=> bm!510714 (= call!510719 call!510718)))

(declare-fun bm!510715 () Bool)

(assert (=> bm!510715 (= call!510717 call!510716)))

(declare-fun bm!510716 () Bool)

(assert (=> bm!510716 (= call!510720 (derivationStepZipperDown!1337 (ite c!1105781 (regTwo!32691 (regOne!32691 (regOne!32690 r!7292))) (regOne!32690 (regOne!32691 (regOne!32690 r!7292)))) (ite c!1105781 lt!2333656 (Context!10947 call!510716)) (h!70891 s!2326)))))

(declare-fun b!6145726 () Bool)

(assert (=> b!6145726 (= e!3745112 e!3745111)))

(assert (=> b!6145726 (= c!1105782 ((_ is Concat!24934) (regOne!32691 (regOne!32690 r!7292))))))

(declare-fun b!6145727 () Bool)

(assert (=> b!6145727 (= c!1105780 e!3745115)))

(declare-fun res!2546077 () Bool)

(assert (=> b!6145727 (=> (not res!2546077) (not e!3745115))))

(assert (=> b!6145727 (= res!2546077 ((_ is Concat!24934) (regOne!32691 (regOne!32690 r!7292))))))

(assert (=> b!6145727 (= e!3745110 e!3745112)))

(declare-fun b!6145724 () Bool)

(assert (=> b!6145724 (= e!3745114 ((as const (Array Context!10946 Bool)) false))))

(declare-fun d!1925464 () Bool)

(declare-fun c!1105783 () Bool)

(assert (=> d!1925464 (= c!1105783 (and ((_ is ElementMatch!16089) (regOne!32691 (regOne!32690 r!7292))) (= (c!1105579 (regOne!32691 (regOne!32690 r!7292))) (h!70891 s!2326))))))

(assert (=> d!1925464 (= (derivationStepZipperDown!1337 (regOne!32691 (regOne!32690 r!7292)) lt!2333656 (h!70891 s!2326)) e!3745113)))

(assert (= (and d!1925464 c!1105783) b!6145723))

(assert (= (and d!1925464 (not c!1105783)) b!6145725))

(assert (= (and b!6145725 c!1105781) b!6145719))

(assert (= (and b!6145725 (not c!1105781)) b!6145727))

(assert (= (and b!6145727 res!2546077) b!6145721))

(assert (= (and b!6145727 c!1105780) b!6145720))

(assert (= (and b!6145727 (not c!1105780)) b!6145726))

(assert (= (and b!6145726 c!1105782) b!6145722))

(assert (= (and b!6145726 (not c!1105782)) b!6145717))

(assert (= (and b!6145717 c!1105784) b!6145718))

(assert (= (and b!6145717 (not c!1105784)) b!6145724))

(assert (= (or b!6145722 b!6145718) bm!510715))

(assert (= (or b!6145722 b!6145718) bm!510714))

(assert (= (or b!6145720 bm!510715) bm!510713))

(assert (= (or b!6145720 bm!510714) bm!510712))

(assert (= (or b!6145719 b!6145720) bm!510716))

(assert (= (or b!6145719 bm!510712) bm!510711))

(assert (=> b!6145723 m!6986082))

(declare-fun m!6986220 () Bool)

(assert (=> bm!510711 m!6986220))

(declare-fun m!6986222 () Bool)

(assert (=> bm!510716 m!6986222))

(declare-fun m!6986224 () Bool)

(assert (=> bm!510713 m!6986224))

(declare-fun m!6986226 () Bool)

(assert (=> b!6145721 m!6986226))

(assert (=> b!6145014 d!1925464))

(declare-fun d!1925466 () Bool)

(declare-fun e!3745116 () Bool)

(assert (=> d!1925466 (= (matchZipper!2101 ((_ map or) lt!2333661 lt!2333650) (t!378050 s!2326)) e!3745116)))

(declare-fun res!2546078 () Bool)

(assert (=> d!1925466 (=> res!2546078 e!3745116)))

(assert (=> d!1925466 (= res!2546078 (matchZipper!2101 lt!2333661 (t!378050 s!2326)))))

(declare-fun lt!2333762 () Unit!157513)

(assert (=> d!1925466 (= lt!2333762 (choose!45674 lt!2333661 lt!2333650 (t!378050 s!2326)))))

(assert (=> d!1925466 (= (lemmaZipperConcatMatchesSameAsBothZippers!920 lt!2333661 lt!2333650 (t!378050 s!2326)) lt!2333762)))

(declare-fun b!6145728 () Bool)

(assert (=> b!6145728 (= e!3745116 (matchZipper!2101 lt!2333650 (t!378050 s!2326)))))

(assert (= (and d!1925466 (not res!2546078)) b!6145728))

(assert (=> d!1925466 m!6985736))

(assert (=> d!1925466 m!6985682))

(declare-fun m!6986228 () Bool)

(assert (=> d!1925466 m!6986228))

(assert (=> b!6145728 m!6985660))

(assert (=> b!6145024 d!1925466))

(declare-fun d!1925468 () Bool)

(declare-fun c!1105785 () Bool)

(assert (=> d!1925468 (= c!1105785 (isEmpty!36399 (t!378050 s!2326)))))

(declare-fun e!3745117 () Bool)

(assert (=> d!1925468 (= (matchZipper!2101 ((_ map or) lt!2333661 lt!2333650) (t!378050 s!2326)) e!3745117)))

(declare-fun b!6145729 () Bool)

(assert (=> b!6145729 (= e!3745117 (nullableZipper!1870 ((_ map or) lt!2333661 lt!2333650)))))

(declare-fun b!6145730 () Bool)

(assert (=> b!6145730 (= e!3745117 (matchZipper!2101 (derivationStepZipper!2062 ((_ map or) lt!2333661 lt!2333650) (head!12699 (t!378050 s!2326))) (tail!11784 (t!378050 s!2326))))))

(assert (= (and d!1925468 c!1105785) b!6145729))

(assert (= (and d!1925468 (not c!1105785)) b!6145730))

(assert (=> d!1925468 m!6986000))

(declare-fun m!6986230 () Bool)

(assert (=> b!6145729 m!6986230))

(assert (=> b!6145730 m!6986004))

(assert (=> b!6145730 m!6986004))

(declare-fun m!6986232 () Bool)

(assert (=> b!6145730 m!6986232))

(assert (=> b!6145730 m!6986008))

(assert (=> b!6145730 m!6986232))

(assert (=> b!6145730 m!6986008))

(declare-fun m!6986234 () Bool)

(assert (=> b!6145730 m!6986234))

(assert (=> b!6145024 d!1925468))

(declare-fun d!1925470 () Bool)

(assert (=> d!1925470 (= (isEmpty!36397 (t!378049 (exprs!5973 (h!70892 zl!343)))) ((_ is Nil!64442) (t!378049 (exprs!5973 (h!70892 zl!343)))))))

(assert (=> b!6145034 d!1925470))

(declare-fun b!6145749 () Bool)

(declare-fun e!3745137 () Bool)

(declare-fun e!3745133 () Bool)

(assert (=> b!6145749 (= e!3745137 e!3745133)))

(declare-fun c!1105791 () Bool)

(assert (=> b!6145749 (= c!1105791 ((_ is Union!16089) r!7292))))

(declare-fun d!1925472 () Bool)

(declare-fun res!2546091 () Bool)

(declare-fun e!3745136 () Bool)

(assert (=> d!1925472 (=> res!2546091 e!3745136)))

(assert (=> d!1925472 (= res!2546091 ((_ is ElementMatch!16089) r!7292))))

(assert (=> d!1925472 (= (validRegex!7825 r!7292) e!3745136)))

(declare-fun bm!510723 () Bool)

(declare-fun call!510728 () Bool)

(declare-fun call!510729 () Bool)

(assert (=> bm!510723 (= call!510728 call!510729)))

(declare-fun b!6145750 () Bool)

(declare-fun e!3745138 () Bool)

(assert (=> b!6145750 (= e!3745138 call!510729)))

(declare-fun b!6145751 () Bool)

(declare-fun e!3745134 () Bool)

(declare-fun call!510730 () Bool)

(assert (=> b!6145751 (= e!3745134 call!510730)))

(declare-fun c!1105790 () Bool)

(declare-fun bm!510724 () Bool)

(assert (=> bm!510724 (= call!510729 (validRegex!7825 (ite c!1105790 (reg!16418 r!7292) (ite c!1105791 (regOne!32691 r!7292) (regOne!32690 r!7292)))))))

(declare-fun bm!510725 () Bool)

(assert (=> bm!510725 (= call!510730 (validRegex!7825 (ite c!1105791 (regTwo!32691 r!7292) (regTwo!32690 r!7292))))))

(declare-fun b!6145752 () Bool)

(assert (=> b!6145752 (= e!3745136 e!3745137)))

(assert (=> b!6145752 (= c!1105790 ((_ is Star!16089) r!7292))))

(declare-fun b!6145753 () Bool)

(declare-fun e!3745135 () Bool)

(assert (=> b!6145753 (= e!3745135 call!510730)))

(declare-fun b!6145754 () Bool)

(declare-fun e!3745132 () Bool)

(assert (=> b!6145754 (= e!3745132 e!3745135)))

(declare-fun res!2546089 () Bool)

(assert (=> b!6145754 (=> (not res!2546089) (not e!3745135))))

(assert (=> b!6145754 (= res!2546089 call!510728)))

(declare-fun b!6145755 () Bool)

(assert (=> b!6145755 (= e!3745137 e!3745138)))

(declare-fun res!2546093 () Bool)

(assert (=> b!6145755 (= res!2546093 (not (nullable!6082 (reg!16418 r!7292))))))

(assert (=> b!6145755 (=> (not res!2546093) (not e!3745138))))

(declare-fun b!6145756 () Bool)

(declare-fun res!2546090 () Bool)

(assert (=> b!6145756 (=> res!2546090 e!3745132)))

(assert (=> b!6145756 (= res!2546090 (not ((_ is Concat!24934) r!7292)))))

(assert (=> b!6145756 (= e!3745133 e!3745132)))

(declare-fun b!6145757 () Bool)

(declare-fun res!2546092 () Bool)

(assert (=> b!6145757 (=> (not res!2546092) (not e!3745134))))

(assert (=> b!6145757 (= res!2546092 call!510728)))

(assert (=> b!6145757 (= e!3745133 e!3745134)))

(assert (= (and d!1925472 (not res!2546091)) b!6145752))

(assert (= (and b!6145752 c!1105790) b!6145755))

(assert (= (and b!6145752 (not c!1105790)) b!6145749))

(assert (= (and b!6145755 res!2546093) b!6145750))

(assert (= (and b!6145749 c!1105791) b!6145757))

(assert (= (and b!6145749 (not c!1105791)) b!6145756))

(assert (= (and b!6145757 res!2546092) b!6145751))

(assert (= (and b!6145756 (not res!2546090)) b!6145754))

(assert (= (and b!6145754 res!2546089) b!6145753))

(assert (= (or b!6145751 b!6145753) bm!510725))

(assert (= (or b!6145757 b!6145754) bm!510723))

(assert (= (or b!6145750 bm!510723) bm!510724))

(declare-fun m!6986236 () Bool)

(assert (=> bm!510724 m!6986236))

(declare-fun m!6986238 () Bool)

(assert (=> bm!510725 m!6986238))

(declare-fun m!6986240 () Bool)

(assert (=> b!6145755 m!6986240))

(assert (=> start!613826 d!1925472))

(assert (=> b!6145035 d!1925456))

(declare-fun bs!1523681 () Bool)

(declare-fun d!1925474 () Bool)

(assert (= bs!1523681 (and d!1925474 d!1925402)))

(declare-fun lambda!335079 () Int)

(assert (=> bs!1523681 (= lambda!335079 lambda!335062)))

(declare-fun bs!1523682 () Bool)

(assert (= bs!1523682 (and d!1925474 d!1925396)))

(assert (=> bs!1523682 (= lambda!335079 lambda!335053)))

(declare-fun bs!1523683 () Bool)

(assert (= bs!1523683 (and d!1925474 d!1925400)))

(assert (=> bs!1523683 (= lambda!335079 lambda!335059)))

(declare-fun bs!1523684 () Bool)

(assert (= bs!1523684 (and d!1925474 d!1925398)))

(assert (=> bs!1523684 (= lambda!335079 lambda!335056)))

(declare-fun bs!1523685 () Bool)

(assert (= bs!1523685 (and d!1925474 d!1925434)))

(assert (=> bs!1523685 (= lambda!335079 lambda!335072)))

(assert (=> d!1925474 (= (inv!83469 (h!70892 zl!343)) (forall!15210 (exprs!5973 (h!70892 zl!343)) lambda!335079))))

(declare-fun bs!1523686 () Bool)

(assert (= bs!1523686 d!1925474))

(declare-fun m!6986242 () Bool)

(assert (=> bs!1523686 m!6986242))

(assert (=> b!6145026 d!1925474))

(declare-fun e!3745141 () Bool)

(assert (=> b!6145031 (= tp!1716730 e!3745141)))

(declare-fun b!6145770 () Bool)

(declare-fun tp!1716811 () Bool)

(assert (=> b!6145770 (= e!3745141 tp!1716811)))

(declare-fun b!6145768 () Bool)

(assert (=> b!6145768 (= e!3745141 tp_is_empty!41431)))

(declare-fun b!6145771 () Bool)

(declare-fun tp!1716810 () Bool)

(declare-fun tp!1716808 () Bool)

(assert (=> b!6145771 (= e!3745141 (and tp!1716810 tp!1716808))))

(declare-fun b!6145769 () Bool)

(declare-fun tp!1716807 () Bool)

(declare-fun tp!1716809 () Bool)

(assert (=> b!6145769 (= e!3745141 (and tp!1716807 tp!1716809))))

(assert (= (and b!6145031 ((_ is ElementMatch!16089) (reg!16418 r!7292))) b!6145768))

(assert (= (and b!6145031 ((_ is Concat!24934) (reg!16418 r!7292))) b!6145769))

(assert (= (and b!6145031 ((_ is Star!16089) (reg!16418 r!7292))) b!6145770))

(assert (= (and b!6145031 ((_ is Union!16089) (reg!16418 r!7292))) b!6145771))

(declare-fun condSetEmpty!41590 () Bool)

(assert (=> setNonEmpty!41584 (= condSetEmpty!41590 (= setRest!41584 ((as const (Array Context!10946 Bool)) false)))))

(declare-fun setRes!41590 () Bool)

(assert (=> setNonEmpty!41584 (= tp!1716736 setRes!41590)))

(declare-fun setIsEmpty!41590 () Bool)

(assert (=> setIsEmpty!41590 setRes!41590))

(declare-fun setNonEmpty!41590 () Bool)

(declare-fun setElem!41590 () Context!10946)

(declare-fun e!3745144 () Bool)

(declare-fun tp!1716816 () Bool)

(assert (=> setNonEmpty!41590 (= setRes!41590 (and tp!1716816 (inv!83469 setElem!41590) e!3745144))))

(declare-fun setRest!41590 () (InoxSet Context!10946))

(assert (=> setNonEmpty!41590 (= setRest!41584 ((_ map or) (store ((as const (Array Context!10946 Bool)) false) setElem!41590 true) setRest!41590))))

(declare-fun b!6145776 () Bool)

(declare-fun tp!1716817 () Bool)

(assert (=> b!6145776 (= e!3745144 tp!1716817)))

(assert (= (and setNonEmpty!41584 condSetEmpty!41590) setIsEmpty!41590))

(assert (= (and setNonEmpty!41584 (not condSetEmpty!41590)) setNonEmpty!41590))

(assert (= setNonEmpty!41590 b!6145776))

(declare-fun m!6986244 () Bool)

(assert (=> setNonEmpty!41590 m!6986244))

(declare-fun b!6145781 () Bool)

(declare-fun e!3745147 () Bool)

(declare-fun tp!1716822 () Bool)

(declare-fun tp!1716823 () Bool)

(assert (=> b!6145781 (= e!3745147 (and tp!1716822 tp!1716823))))

(assert (=> b!6145012 (= tp!1716738 e!3745147)))

(assert (= (and b!6145012 ((_ is Cons!64442) (exprs!5973 setElem!41584))) b!6145781))

(declare-fun b!6145782 () Bool)

(declare-fun e!3745148 () Bool)

(declare-fun tp!1716824 () Bool)

(declare-fun tp!1716825 () Bool)

(assert (=> b!6145782 (= e!3745148 (and tp!1716824 tp!1716825))))

(assert (=> b!6145032 (= tp!1716732 e!3745148)))

(assert (= (and b!6145032 ((_ is Cons!64442) (exprs!5973 (h!70892 zl!343)))) b!6145782))

(declare-fun e!3745149 () Bool)

(assert (=> b!6145017 (= tp!1716729 e!3745149)))

(declare-fun b!6145785 () Bool)

(declare-fun tp!1716830 () Bool)

(assert (=> b!6145785 (= e!3745149 tp!1716830)))

(declare-fun b!6145783 () Bool)

(assert (=> b!6145783 (= e!3745149 tp_is_empty!41431)))

(declare-fun b!6145786 () Bool)

(declare-fun tp!1716829 () Bool)

(declare-fun tp!1716827 () Bool)

(assert (=> b!6145786 (= e!3745149 (and tp!1716829 tp!1716827))))

(declare-fun b!6145784 () Bool)

(declare-fun tp!1716826 () Bool)

(declare-fun tp!1716828 () Bool)

(assert (=> b!6145784 (= e!3745149 (and tp!1716826 tp!1716828))))

(assert (= (and b!6145017 ((_ is ElementMatch!16089) (regOne!32691 r!7292))) b!6145783))

(assert (= (and b!6145017 ((_ is Concat!24934) (regOne!32691 r!7292))) b!6145784))

(assert (= (and b!6145017 ((_ is Star!16089) (regOne!32691 r!7292))) b!6145785))

(assert (= (and b!6145017 ((_ is Union!16089) (regOne!32691 r!7292))) b!6145786))

(declare-fun e!3745150 () Bool)

(assert (=> b!6145017 (= tp!1716735 e!3745150)))

(declare-fun b!6145789 () Bool)

(declare-fun tp!1716835 () Bool)

(assert (=> b!6145789 (= e!3745150 tp!1716835)))

(declare-fun b!6145787 () Bool)

(assert (=> b!6145787 (= e!3745150 tp_is_empty!41431)))

(declare-fun b!6145790 () Bool)

(declare-fun tp!1716834 () Bool)

(declare-fun tp!1716832 () Bool)

(assert (=> b!6145790 (= e!3745150 (and tp!1716834 tp!1716832))))

(declare-fun b!6145788 () Bool)

(declare-fun tp!1716831 () Bool)

(declare-fun tp!1716833 () Bool)

(assert (=> b!6145788 (= e!3745150 (and tp!1716831 tp!1716833))))

(assert (= (and b!6145017 ((_ is ElementMatch!16089) (regTwo!32691 r!7292))) b!6145787))

(assert (= (and b!6145017 ((_ is Concat!24934) (regTwo!32691 r!7292))) b!6145788))

(assert (= (and b!6145017 ((_ is Star!16089) (regTwo!32691 r!7292))) b!6145789))

(assert (= (and b!6145017 ((_ is Union!16089) (regTwo!32691 r!7292))) b!6145790))

(declare-fun e!3745151 () Bool)

(assert (=> b!6145025 (= tp!1716731 e!3745151)))

(declare-fun b!6145793 () Bool)

(declare-fun tp!1716840 () Bool)

(assert (=> b!6145793 (= e!3745151 tp!1716840)))

(declare-fun b!6145791 () Bool)

(assert (=> b!6145791 (= e!3745151 tp_is_empty!41431)))

(declare-fun b!6145794 () Bool)

(declare-fun tp!1716839 () Bool)

(declare-fun tp!1716837 () Bool)

(assert (=> b!6145794 (= e!3745151 (and tp!1716839 tp!1716837))))

(declare-fun b!6145792 () Bool)

(declare-fun tp!1716836 () Bool)

(declare-fun tp!1716838 () Bool)

(assert (=> b!6145792 (= e!3745151 (and tp!1716836 tp!1716838))))

(assert (= (and b!6145025 ((_ is ElementMatch!16089) (regOne!32690 r!7292))) b!6145791))

(assert (= (and b!6145025 ((_ is Concat!24934) (regOne!32690 r!7292))) b!6145792))

(assert (= (and b!6145025 ((_ is Star!16089) (regOne!32690 r!7292))) b!6145793))

(assert (= (and b!6145025 ((_ is Union!16089) (regOne!32690 r!7292))) b!6145794))

(declare-fun e!3745152 () Bool)

(assert (=> b!6145025 (= tp!1716733 e!3745152)))

(declare-fun b!6145797 () Bool)

(declare-fun tp!1716845 () Bool)

(assert (=> b!6145797 (= e!3745152 tp!1716845)))

(declare-fun b!6145795 () Bool)

(assert (=> b!6145795 (= e!3745152 tp_is_empty!41431)))

(declare-fun b!6145798 () Bool)

(declare-fun tp!1716844 () Bool)

(declare-fun tp!1716842 () Bool)

(assert (=> b!6145798 (= e!3745152 (and tp!1716844 tp!1716842))))

(declare-fun b!6145796 () Bool)

(declare-fun tp!1716841 () Bool)

(declare-fun tp!1716843 () Bool)

(assert (=> b!6145796 (= e!3745152 (and tp!1716841 tp!1716843))))

(assert (= (and b!6145025 ((_ is ElementMatch!16089) (regTwo!32690 r!7292))) b!6145795))

(assert (= (and b!6145025 ((_ is Concat!24934) (regTwo!32690 r!7292))) b!6145796))

(assert (= (and b!6145025 ((_ is Star!16089) (regTwo!32690 r!7292))) b!6145797))

(assert (= (and b!6145025 ((_ is Union!16089) (regTwo!32690 r!7292))) b!6145798))

(declare-fun b!6145803 () Bool)

(declare-fun e!3745155 () Bool)

(declare-fun tp!1716848 () Bool)

(assert (=> b!6145803 (= e!3745155 (and tp_is_empty!41431 tp!1716848))))

(assert (=> b!6145020 (= tp!1716734 e!3745155)))

(assert (= (and b!6145020 ((_ is Cons!64443) (t!378050 s!2326))) b!6145803))

(declare-fun b!6145811 () Bool)

(declare-fun e!3745161 () Bool)

(declare-fun tp!1716853 () Bool)

(assert (=> b!6145811 (= e!3745161 tp!1716853)))

(declare-fun b!6145810 () Bool)

(declare-fun e!3745160 () Bool)

(declare-fun tp!1716854 () Bool)

(assert (=> b!6145810 (= e!3745160 (and (inv!83469 (h!70892 (t!378051 zl!343))) e!3745161 tp!1716854))))

(assert (=> b!6145026 (= tp!1716737 e!3745160)))

(assert (= b!6145810 b!6145811))

(assert (= (and b!6145026 ((_ is Cons!64444) (t!378051 zl!343))) b!6145810))

(declare-fun m!6986246 () Bool)

(assert (=> b!6145810 m!6986246))

(declare-fun b_lambda!233901 () Bool)

(assert (= b_lambda!233897 (or b!6145018 b_lambda!233901)))

(declare-fun bs!1523687 () Bool)

(declare-fun d!1925476 () Bool)

(assert (= bs!1523687 (and d!1925476 b!6145018)))

(assert (=> bs!1523687 (= (dynLambda!25398 lambda!335021 (h!70892 zl!343)) (derivationStepZipperUp!1263 (h!70892 zl!343) (h!70891 s!2326)))))

(assert (=> bs!1523687 m!6985692))

(assert (=> d!1925406 d!1925476))

(declare-fun b_lambda!233903 () Bool)

(assert (= b_lambda!233899 (or b!6145018 b_lambda!233903)))

(declare-fun bs!1523688 () Bool)

(declare-fun d!1925478 () Bool)

(assert (= bs!1523688 (and d!1925478 b!6145018)))

(assert (=> bs!1523688 (= (dynLambda!25398 lambda!335021 lt!2333672) (derivationStepZipperUp!1263 lt!2333672 (h!70891 s!2326)))))

(assert (=> bs!1523688 m!6985702))

(assert (=> d!1925432 d!1925478))

(check-sat (not b!6145769) (not b!6145566) (not b!6145500) (not b!6145492) (not b!6145523) (not b!6145656) (not b!6145810) (not d!1925392) (not b!6145695) (not d!1925444) (not bs!1523687) (not d!1925474) (not d!1925430) (not b!6145467) (not b!6145586) (not b!6145803) (not b!6145464) (not bm!510693) (not d!1925420) (not b!6145702) (not b!6145755) (not b!6145494) (not b!6145587) (not d!1925442) (not b!6145789) (not d!1925452) tp_is_empty!41431 (not b!6145607) (not b!6145811) (not bm!510704) (not d!1925402) (not b!6145496) (not b!6145701) (not d!1925426) (not d!1925398) (not d!1925456) (not b!6145518) (not b!6145585) (not bm!510716) (not b!6145438) (not bm!510675) (not b!6145784) (not bm!510700) (not bm!510695) (not b!6145497) (not b!6145729) (not d!1925440) (not d!1925448) (not b!6145611) (not d!1925432) (not d!1925422) (not b!6145793) (not b!6145590) (not b!6145689) (not bm!510713) (not b!6145798) (not b!6145699) (not b!6145721) (not b!6145613) (not d!1925428) (not b!6145612) (not b!6145690) (not b!6145465) (not d!1925446) (not d!1925466) (not b!6145493) (not b!6145797) (not b!6145776) (not setNonEmpty!41590) (not bm!510690) (not b!6145785) (not b!6145606) (not d!1925434) (not b!6145553) (not bm!510694) (not bm!510707) (not d!1925460) (not bm!510705) (not b!6145461) (not bm!510724) (not b!6145440) (not b!6145657) (not bm!510688) (not b!6145698) (not bs!1523688) (not b!6145730) (not b!6145561) (not b_lambda!233903) (not b!6145614) (not d!1925396) (not b!6145466) (not b_lambda!233901) (not b!6145790) (not d!1925438) (not b!6145592) (not b!6145615) (not b!6145517) (not d!1925404) (not bm!510710) (not b!6145705) (not b!6145470) (not b!6145792) (not b!6145691) (not b!6145796) (not b!6145437) (not d!1925424) (not bm!510711) (not d!1925406) (not b!6145782) (not b!6145710) (not d!1925394) (not b!6145728) (not b!6145565) (not b!6145771) (not b!6145786) (not d!1925418) (not bm!510674) (not b!6145439) (not bm!510701) (not d!1925400) (not b!6145589) (not b!6145794) (not b!6145770) (not b!6145462) (not b!6145781) (not d!1925390) (not b!6145560) (not b!6145522) (not b!6145788) (not bm!510725) (not d!1925408) (not b!6145499) (not b!6145432) (not d!1925468) (not d!1925454) (not b!6145505))
(check-sat)
(get-model)

(assert (=> bs!1523688 d!1925436))

(declare-fun d!1925734 () Bool)

(assert (=> d!1925734 (= (isEmpty!36399 (t!378050 s!2326)) ((_ is Nil!64443) (t!378050 s!2326)))))

(assert (=> d!1925418 d!1925734))

(assert (=> d!1925424 d!1925420))

(declare-fun b!6146389 () Bool)

(declare-fun e!3745489 () Bool)

(declare-fun e!3745485 () Bool)

(assert (=> b!6146389 (= e!3745489 e!3745485)))

(declare-fun c!1105936 () Bool)

(assert (=> b!6146389 (= c!1105936 ((_ is Union!16089) (regOne!32690 r!7292)))))

(declare-fun d!1925736 () Bool)

(declare-fun res!2546278 () Bool)

(declare-fun e!3745488 () Bool)

(assert (=> d!1925736 (=> res!2546278 e!3745488)))

(assert (=> d!1925736 (= res!2546278 ((_ is ElementMatch!16089) (regOne!32690 r!7292)))))

(assert (=> d!1925736 (= (validRegex!7825 (regOne!32690 r!7292)) e!3745488)))

(declare-fun bm!510837 () Bool)

(declare-fun call!510842 () Bool)

(declare-fun call!510843 () Bool)

(assert (=> bm!510837 (= call!510842 call!510843)))

(declare-fun b!6146390 () Bool)

(declare-fun e!3745490 () Bool)

(assert (=> b!6146390 (= e!3745490 call!510843)))

(declare-fun b!6146391 () Bool)

(declare-fun e!3745486 () Bool)

(declare-fun call!510844 () Bool)

(assert (=> b!6146391 (= e!3745486 call!510844)))

(declare-fun bm!510838 () Bool)

(declare-fun c!1105935 () Bool)

(assert (=> bm!510838 (= call!510843 (validRegex!7825 (ite c!1105935 (reg!16418 (regOne!32690 r!7292)) (ite c!1105936 (regOne!32691 (regOne!32690 r!7292)) (regOne!32690 (regOne!32690 r!7292))))))))

(declare-fun bm!510839 () Bool)

(assert (=> bm!510839 (= call!510844 (validRegex!7825 (ite c!1105936 (regTwo!32691 (regOne!32690 r!7292)) (regTwo!32690 (regOne!32690 r!7292)))))))

(declare-fun b!6146392 () Bool)

(assert (=> b!6146392 (= e!3745488 e!3745489)))

(assert (=> b!6146392 (= c!1105935 ((_ is Star!16089) (regOne!32690 r!7292)))))

(declare-fun b!6146393 () Bool)

(declare-fun e!3745487 () Bool)

(assert (=> b!6146393 (= e!3745487 call!510844)))

(declare-fun b!6146394 () Bool)

(declare-fun e!3745484 () Bool)

(assert (=> b!6146394 (= e!3745484 e!3745487)))

(declare-fun res!2546276 () Bool)

(assert (=> b!6146394 (=> (not res!2546276) (not e!3745487))))

(assert (=> b!6146394 (= res!2546276 call!510842)))

(declare-fun b!6146395 () Bool)

(assert (=> b!6146395 (= e!3745489 e!3745490)))

(declare-fun res!2546280 () Bool)

(assert (=> b!6146395 (= res!2546280 (not (nullable!6082 (reg!16418 (regOne!32690 r!7292)))))))

(assert (=> b!6146395 (=> (not res!2546280) (not e!3745490))))

(declare-fun b!6146396 () Bool)

(declare-fun res!2546277 () Bool)

(assert (=> b!6146396 (=> res!2546277 e!3745484)))

(assert (=> b!6146396 (= res!2546277 (not ((_ is Concat!24934) (regOne!32690 r!7292))))))

(assert (=> b!6146396 (= e!3745485 e!3745484)))

(declare-fun b!6146397 () Bool)

(declare-fun res!2546279 () Bool)

(assert (=> b!6146397 (=> (not res!2546279) (not e!3745486))))

(assert (=> b!6146397 (= res!2546279 call!510842)))

(assert (=> b!6146397 (= e!3745485 e!3745486)))

(assert (= (and d!1925736 (not res!2546278)) b!6146392))

(assert (= (and b!6146392 c!1105935) b!6146395))

(assert (= (and b!6146392 (not c!1105935)) b!6146389))

(assert (= (and b!6146395 res!2546280) b!6146390))

(assert (= (and b!6146389 c!1105936) b!6146397))

(assert (= (and b!6146389 (not c!1105936)) b!6146396))

(assert (= (and b!6146397 res!2546279) b!6146391))

(assert (= (and b!6146396 (not res!2546277)) b!6146394))

(assert (= (and b!6146394 res!2546276) b!6146393))

(assert (= (or b!6146391 b!6146393) bm!510839))

(assert (= (or b!6146397 b!6146394) bm!510837))

(assert (= (or b!6146390 bm!510837) bm!510838))

(declare-fun m!6986776 () Bool)

(assert (=> bm!510838 m!6986776))

(declare-fun m!6986778 () Bool)

(assert (=> bm!510839 m!6986778))

(declare-fun m!6986780 () Bool)

(assert (=> b!6146395 m!6986780))

(assert (=> d!1925424 d!1925736))

(assert (=> d!1925424 d!1925430))

(declare-fun bs!1523864 () Bool)

(declare-fun d!1925738 () Bool)

(assert (= bs!1523864 (and d!1925738 b!6145648)))

(declare-fun lambda!335118 () Int)

(assert (=> bs!1523864 (not (= lambda!335118 lambda!335078))))

(declare-fun bs!1523865 () Bool)

(assert (= bs!1523865 (and d!1925738 d!1925426)))

(assert (=> bs!1523865 (= lambda!335118 lambda!335070)))

(declare-fun bs!1523866 () Bool)

(assert (= bs!1523866 (and d!1925738 d!1925424)))

(assert (=> bs!1523866 (= lambda!335118 lambda!335065)))

(declare-fun bs!1523867 () Bool)

(assert (= bs!1523867 (and d!1925738 b!6145019)))

(assert (=> bs!1523867 (= lambda!335118 lambda!335019)))

(declare-fun bs!1523868 () Bool)

(assert (= bs!1523868 (and d!1925738 b!6145655)))

(assert (=> bs!1523868 (not (= lambda!335118 lambda!335077))))

(assert (=> bs!1523865 (not (= lambda!335118 lambda!335071))))

(assert (=> bs!1523867 (not (= lambda!335118 lambda!335020))))

(assert (=> d!1925738 true))

(assert (=> d!1925738 true))

(assert (=> d!1925738 true))

(assert (=> d!1925738 (= (isDefined!12683 (findConcatSeparation!2394 (regOne!32690 r!7292) (regTwo!32690 r!7292) Nil!64443 s!2326 s!2326)) (Exists!3159 lambda!335118))))

(assert (=> d!1925738 true))

(declare-fun _$89!2248 () Unit!157513)

(assert (=> d!1925738 (= (choose!45680 (regOne!32690 r!7292) (regTwo!32690 r!7292) s!2326) _$89!2248)))

(declare-fun bs!1523869 () Bool)

(assert (= bs!1523869 d!1925738))

(assert (=> bs!1523869 m!6985722))

(assert (=> bs!1523869 m!6985722))

(assert (=> bs!1523869 m!6985724))

(declare-fun m!6986782 () Bool)

(assert (=> bs!1523869 m!6986782))

(assert (=> d!1925424 d!1925738))

(declare-fun d!1925740 () Bool)

(assert (=> d!1925740 (= (Exists!3159 lambda!335065) (choose!45679 lambda!335065))))

(declare-fun bs!1523870 () Bool)

(assert (= bs!1523870 d!1925740))

(declare-fun m!6986784 () Bool)

(assert (=> bs!1523870 m!6986784))

(assert (=> d!1925424 d!1925740))

(declare-fun b!6146402 () Bool)

(declare-fun e!3745497 () Bool)

(declare-fun lt!2333785 () Bool)

(declare-fun call!510845 () Bool)

(assert (=> b!6146402 (= e!3745497 (= lt!2333785 call!510845))))

(declare-fun b!6146403 () Bool)

(declare-fun res!2546292 () Bool)

(declare-fun e!3745499 () Bool)

(assert (=> b!6146403 (=> res!2546292 e!3745499)))

(declare-fun e!3745495 () Bool)

(assert (=> b!6146403 (= res!2546292 e!3745495)))

(declare-fun res!2546290 () Bool)

(assert (=> b!6146403 (=> (not res!2546290) (not e!3745495))))

(assert (=> b!6146403 (= res!2546290 lt!2333785)))

(declare-fun b!6146404 () Bool)

(declare-fun e!3745498 () Bool)

(assert (=> b!6146404 (= e!3745498 (matchR!8272 (derivativeStep!4809 (regTwo!32690 r!7292) (head!12699 s!2326)) (tail!11784 s!2326)))))

(declare-fun b!6146405 () Bool)

(declare-fun res!2546287 () Bool)

(declare-fun e!3745496 () Bool)

(assert (=> b!6146405 (=> res!2546287 e!3745496)))

(assert (=> b!6146405 (= res!2546287 (not (isEmpty!36399 (tail!11784 s!2326))))))

(declare-fun b!6146406 () Bool)

(assert (=> b!6146406 (= e!3745498 (nullable!6082 (regTwo!32690 r!7292)))))

(declare-fun b!6146407 () Bool)

(declare-fun res!2546291 () Bool)

(assert (=> b!6146407 (=> (not res!2546291) (not e!3745495))))

(assert (=> b!6146407 (= res!2546291 (not call!510845))))

(declare-fun b!6146408 () Bool)

(declare-fun res!2546286 () Bool)

(assert (=> b!6146408 (=> res!2546286 e!3745499)))

(assert (=> b!6146408 (= res!2546286 (not ((_ is ElementMatch!16089) (regTwo!32690 r!7292))))))

(declare-fun e!3745493 () Bool)

(assert (=> b!6146408 (= e!3745493 e!3745499)))

(declare-fun d!1925742 () Bool)

(assert (=> d!1925742 e!3745497))

(declare-fun c!1105939 () Bool)

(assert (=> d!1925742 (= c!1105939 ((_ is EmptyExpr!16089) (regTwo!32690 r!7292)))))

(assert (=> d!1925742 (= lt!2333785 e!3745498)))

(declare-fun c!1105938 () Bool)

(assert (=> d!1925742 (= c!1105938 (isEmpty!36399 s!2326))))

(assert (=> d!1925742 (validRegex!7825 (regTwo!32690 r!7292))))

(assert (=> d!1925742 (= (matchR!8272 (regTwo!32690 r!7292) s!2326) lt!2333785)))

(declare-fun b!6146409 () Bool)

(assert (=> b!6146409 (= e!3745493 (not lt!2333785))))

(declare-fun b!6146410 () Bool)

(declare-fun res!2546285 () Bool)

(assert (=> b!6146410 (=> (not res!2546285) (not e!3745495))))

(assert (=> b!6146410 (= res!2546285 (isEmpty!36399 (tail!11784 s!2326)))))

(declare-fun b!6146411 () Bool)

(assert (=> b!6146411 (= e!3745497 e!3745493)))

(declare-fun c!1105937 () Bool)

(assert (=> b!6146411 (= c!1105937 ((_ is EmptyLang!16089) (regTwo!32690 r!7292)))))

(declare-fun bm!510840 () Bool)

(assert (=> bm!510840 (= call!510845 (isEmpty!36399 s!2326))))

(declare-fun b!6146412 () Bool)

(declare-fun e!3745494 () Bool)

(assert (=> b!6146412 (= e!3745499 e!3745494)))

(declare-fun res!2546289 () Bool)

(assert (=> b!6146412 (=> (not res!2546289) (not e!3745494))))

(assert (=> b!6146412 (= res!2546289 (not lt!2333785))))

(declare-fun b!6146413 () Bool)

(assert (=> b!6146413 (= e!3745496 (not (= (head!12699 s!2326) (c!1105579 (regTwo!32690 r!7292)))))))

(declare-fun b!6146414 () Bool)

(assert (=> b!6146414 (= e!3745495 (= (head!12699 s!2326) (c!1105579 (regTwo!32690 r!7292))))))

(declare-fun b!6146415 () Bool)

(assert (=> b!6146415 (= e!3745494 e!3745496)))

(declare-fun res!2546288 () Bool)

(assert (=> b!6146415 (=> res!2546288 e!3745496)))

(assert (=> b!6146415 (= res!2546288 call!510845)))

(assert (= (and d!1925742 c!1105938) b!6146406))

(assert (= (and d!1925742 (not c!1105938)) b!6146404))

(assert (= (and d!1925742 c!1105939) b!6146402))

(assert (= (and d!1925742 (not c!1105939)) b!6146411))

(assert (= (and b!6146411 c!1105937) b!6146409))

(assert (= (and b!6146411 (not c!1105937)) b!6146408))

(assert (= (and b!6146408 (not res!2546286)) b!6146403))

(assert (= (and b!6146403 res!2546290) b!6146407))

(assert (= (and b!6146407 res!2546291) b!6146410))

(assert (= (and b!6146410 res!2546285) b!6146414))

(assert (= (and b!6146403 (not res!2546292)) b!6146412))

(assert (= (and b!6146412 res!2546289) b!6146415))

(assert (= (and b!6146415 (not res!2546288)) b!6146405))

(assert (= (and b!6146405 (not res!2546287)) b!6146413))

(assert (= (or b!6146402 b!6146407 b!6146415) bm!510840))

(assert (=> b!6146414 m!6986186))

(declare-fun m!6986786 () Bool)

(assert (=> b!6146406 m!6986786))

(assert (=> d!1925742 m!6986178))

(declare-fun m!6986788 () Bool)

(assert (=> d!1925742 m!6986788))

(assert (=> b!6146404 m!6986186))

(assert (=> b!6146404 m!6986186))

(declare-fun m!6986790 () Bool)

(assert (=> b!6146404 m!6986790))

(assert (=> b!6146404 m!6986192))

(assert (=> b!6146404 m!6986790))

(assert (=> b!6146404 m!6986192))

(declare-fun m!6986792 () Bool)

(assert (=> b!6146404 m!6986792))

(assert (=> b!6146410 m!6986192))

(assert (=> b!6146410 m!6986192))

(assert (=> b!6146410 m!6986196))

(assert (=> bm!510840 m!6986178))

(assert (=> b!6146405 m!6986192))

(assert (=> b!6146405 m!6986192))

(assert (=> b!6146405 m!6986196))

(assert (=> b!6146413 m!6986186))

(assert (=> b!6145585 d!1925742))

(declare-fun d!1925744 () Bool)

(declare-fun lambda!335121 () Int)

(declare-fun exists!2434 ((InoxSet Context!10946) Int) Bool)

(assert (=> d!1925744 (= (nullableZipper!1870 lt!2333650) (exists!2434 lt!2333650 lambda!335121))))

(declare-fun bs!1523871 () Bool)

(assert (= bs!1523871 d!1925744))

(declare-fun m!6986794 () Bool)

(assert (=> bs!1523871 m!6986794))

(assert (=> b!6145701 d!1925744))

(declare-fun d!1925746 () Bool)

(assert (=> d!1925746 (= (nullable!6082 (regOne!32690 (regOne!32691 (regOne!32690 r!7292)))) (nullableFct!2046 (regOne!32690 (regOne!32691 (regOne!32690 r!7292)))))))

(declare-fun bs!1523872 () Bool)

(assert (= bs!1523872 d!1925746))

(declare-fun m!6986796 () Bool)

(assert (=> bs!1523872 m!6986796))

(assert (=> b!6145721 d!1925746))

(declare-fun d!1925748 () Bool)

(assert (=> d!1925748 (= (isEmpty!36399 s!2326) ((_ is Nil!64443) s!2326))))

(assert (=> bm!510700 d!1925748))

(declare-fun d!1925750 () Bool)

(assert (=> d!1925750 (= (head!12700 (exprs!5973 (h!70892 zl!343))) (h!70890 (exprs!5973 (h!70892 zl!343))))))

(assert (=> b!6145465 d!1925750))

(declare-fun call!510846 () (InoxSet Context!10946))

(declare-fun e!3745502 () (InoxSet Context!10946))

(declare-fun b!6146416 () Bool)

(assert (=> b!6146416 (= e!3745502 ((_ map or) call!510846 (derivationStepZipperUp!1263 (Context!10947 (t!378049 (exprs!5973 (Context!10947 (t!378049 (exprs!5973 (h!70892 zl!343))))))) (h!70891 s!2326))))))

(declare-fun b!6146417 () Bool)

(declare-fun e!3745500 () Bool)

(assert (=> b!6146417 (= e!3745500 (nullable!6082 (h!70890 (exprs!5973 (Context!10947 (t!378049 (exprs!5973 (h!70892 zl!343))))))))))

(declare-fun bm!510841 () Bool)

(assert (=> bm!510841 (= call!510846 (derivationStepZipperDown!1337 (h!70890 (exprs!5973 (Context!10947 (t!378049 (exprs!5973 (h!70892 zl!343)))))) (Context!10947 (t!378049 (exprs!5973 (Context!10947 (t!378049 (exprs!5973 (h!70892 zl!343))))))) (h!70891 s!2326)))))

(declare-fun b!6146419 () Bool)

(declare-fun e!3745501 () (InoxSet Context!10946))

(assert (=> b!6146419 (= e!3745502 e!3745501)))

(declare-fun c!1105943 () Bool)

(assert (=> b!6146419 (= c!1105943 ((_ is Cons!64442) (exprs!5973 (Context!10947 (t!378049 (exprs!5973 (h!70892 zl!343)))))))))

(declare-fun b!6146420 () Bool)

(assert (=> b!6146420 (= e!3745501 call!510846)))

(declare-fun b!6146418 () Bool)

(assert (=> b!6146418 (= e!3745501 ((as const (Array Context!10946 Bool)) false))))

(declare-fun d!1925752 () Bool)

(declare-fun c!1105942 () Bool)

(assert (=> d!1925752 (= c!1105942 e!3745500)))

(declare-fun res!2546293 () Bool)

(assert (=> d!1925752 (=> (not res!2546293) (not e!3745500))))

(assert (=> d!1925752 (= res!2546293 ((_ is Cons!64442) (exprs!5973 (Context!10947 (t!378049 (exprs!5973 (h!70892 zl!343)))))))))

(assert (=> d!1925752 (= (derivationStepZipperUp!1263 (Context!10947 (t!378049 (exprs!5973 (h!70892 zl!343)))) (h!70891 s!2326)) e!3745502)))

(assert (= (and d!1925752 res!2546293) b!6146417))

(assert (= (and d!1925752 c!1105942) b!6146416))

(assert (= (and d!1925752 (not c!1105942)) b!6146419))

(assert (= (and b!6146419 c!1105943) b!6146420))

(assert (= (and b!6146419 (not c!1105943)) b!6146418))

(assert (= (or b!6146416 b!6146420) bm!510841))

(declare-fun m!6986798 () Bool)

(assert (=> b!6146416 m!6986798))

(declare-fun m!6986800 () Bool)

(assert (=> b!6146417 m!6986800))

(declare-fun m!6986802 () Bool)

(assert (=> bm!510841 m!6986802))

(assert (=> b!6145517 d!1925752))

(declare-fun d!1925754 () Bool)

(declare-fun res!2546298 () Bool)

(declare-fun e!3745507 () Bool)

(assert (=> d!1925754 (=> res!2546298 e!3745507)))

(assert (=> d!1925754 (= res!2546298 ((_ is Nil!64442) (exprs!5973 (h!70892 zl!343))))))

(assert (=> d!1925754 (= (forall!15210 (exprs!5973 (h!70892 zl!343)) lambda!335079) e!3745507)))

(declare-fun b!6146425 () Bool)

(declare-fun e!3745508 () Bool)

(assert (=> b!6146425 (= e!3745507 e!3745508)))

(declare-fun res!2546299 () Bool)

(assert (=> b!6146425 (=> (not res!2546299) (not e!3745508))))

(declare-fun dynLambda!25400 (Int Regex!16089) Bool)

(assert (=> b!6146425 (= res!2546299 (dynLambda!25400 lambda!335079 (h!70890 (exprs!5973 (h!70892 zl!343)))))))

(declare-fun b!6146426 () Bool)

(assert (=> b!6146426 (= e!3745508 (forall!15210 (t!378049 (exprs!5973 (h!70892 zl!343))) lambda!335079))))

(assert (= (and d!1925754 (not res!2546298)) b!6146425))

(assert (= (and b!6146425 res!2546299) b!6146426))

(declare-fun b_lambda!233937 () Bool)

(assert (=> (not b_lambda!233937) (not b!6146425)))

(declare-fun m!6986804 () Bool)

(assert (=> b!6146425 m!6986804))

(declare-fun m!6986806 () Bool)

(assert (=> b!6146426 m!6986806))

(assert (=> d!1925474 d!1925754))

(declare-fun d!1925756 () Bool)

(declare-fun res!2546300 () Bool)

(declare-fun e!3745509 () Bool)

(assert (=> d!1925756 (=> res!2546300 e!3745509)))

(assert (=> d!1925756 (= res!2546300 ((_ is Nil!64442) (exprs!5973 setElem!41584)))))

(assert (=> d!1925756 (= (forall!15210 (exprs!5973 setElem!41584) lambda!335053) e!3745509)))

(declare-fun b!6146427 () Bool)

(declare-fun e!3745510 () Bool)

(assert (=> b!6146427 (= e!3745509 e!3745510)))

(declare-fun res!2546301 () Bool)

(assert (=> b!6146427 (=> (not res!2546301) (not e!3745510))))

(assert (=> b!6146427 (= res!2546301 (dynLambda!25400 lambda!335053 (h!70890 (exprs!5973 setElem!41584))))))

(declare-fun b!6146428 () Bool)

(assert (=> b!6146428 (= e!3745510 (forall!15210 (t!378049 (exprs!5973 setElem!41584)) lambda!335053))))

(assert (= (and d!1925756 (not res!2546300)) b!6146427))

(assert (= (and b!6146427 res!2546301) b!6146428))

(declare-fun b_lambda!233939 () Bool)

(assert (=> (not b_lambda!233939) (not b!6146427)))

(declare-fun m!6986808 () Bool)

(assert (=> b!6146427 m!6986808))

(declare-fun m!6986810 () Bool)

(assert (=> b!6146428 m!6986810))

(assert (=> d!1925396 d!1925756))

(declare-fun d!1925758 () Bool)

(assert (=> d!1925758 (= (isEmptyExpr!1505 lt!2333723) ((_ is EmptyExpr!16089) lt!2333723))))

(assert (=> b!6145461 d!1925758))

(declare-fun d!1925760 () Bool)

(assert (=> d!1925760 true))

(assert (=> d!1925760 true))

(declare-fun res!2546304 () Bool)

(assert (=> d!1925760 (= (choose!45679 lambda!335020) res!2546304)))

(assert (=> d!1925422 d!1925760))

(declare-fun d!1925762 () Bool)

(assert (=> d!1925762 (= (Exists!3159 lambda!335070) (choose!45679 lambda!335070))))

(declare-fun bs!1523873 () Bool)

(assert (= bs!1523873 d!1925762))

(declare-fun m!6986812 () Bool)

(assert (=> bs!1523873 m!6986812))

(assert (=> d!1925426 d!1925762))

(declare-fun d!1925764 () Bool)

(assert (=> d!1925764 (= (Exists!3159 lambda!335071) (choose!45679 lambda!335071))))

(declare-fun bs!1523874 () Bool)

(assert (= bs!1523874 d!1925764))

(declare-fun m!6986814 () Bool)

(assert (=> bs!1523874 m!6986814))

(assert (=> d!1925426 d!1925764))

(declare-fun bs!1523875 () Bool)

(declare-fun d!1925766 () Bool)

(assert (= bs!1523875 (and d!1925766 b!6145648)))

(declare-fun lambda!335126 () Int)

(assert (=> bs!1523875 (not (= lambda!335126 lambda!335078))))

(declare-fun bs!1523876 () Bool)

(assert (= bs!1523876 (and d!1925766 d!1925738)))

(assert (=> bs!1523876 (= lambda!335126 lambda!335118)))

(declare-fun bs!1523877 () Bool)

(assert (= bs!1523877 (and d!1925766 d!1925426)))

(assert (=> bs!1523877 (= lambda!335126 lambda!335070)))

(declare-fun bs!1523878 () Bool)

(assert (= bs!1523878 (and d!1925766 d!1925424)))

(assert (=> bs!1523878 (= lambda!335126 lambda!335065)))

(declare-fun bs!1523879 () Bool)

(assert (= bs!1523879 (and d!1925766 b!6145019)))

(assert (=> bs!1523879 (= lambda!335126 lambda!335019)))

(declare-fun bs!1523880 () Bool)

(assert (= bs!1523880 (and d!1925766 b!6145655)))

(assert (=> bs!1523880 (not (= lambda!335126 lambda!335077))))

(assert (=> bs!1523877 (not (= lambda!335126 lambda!335071))))

(assert (=> bs!1523879 (not (= lambda!335126 lambda!335020))))

(assert (=> d!1925766 true))

(assert (=> d!1925766 true))

(assert (=> d!1925766 true))

(declare-fun lambda!335127 () Int)

(assert (=> bs!1523875 (= lambda!335127 lambda!335078)))

(assert (=> bs!1523876 (not (= lambda!335127 lambda!335118))))

(declare-fun bs!1523881 () Bool)

(assert (= bs!1523881 d!1925766))

(assert (=> bs!1523881 (not (= lambda!335127 lambda!335126))))

(assert (=> bs!1523877 (not (= lambda!335127 lambda!335070))))

(assert (=> bs!1523878 (not (= lambda!335127 lambda!335065))))

(assert (=> bs!1523879 (not (= lambda!335127 lambda!335019))))

(assert (=> bs!1523880 (not (= lambda!335127 lambda!335077))))

(assert (=> bs!1523877 (= lambda!335127 lambda!335071)))

(assert (=> bs!1523879 (= lambda!335127 lambda!335020)))

(assert (=> d!1925766 true))

(assert (=> d!1925766 true))

(assert (=> d!1925766 true))

(assert (=> d!1925766 (= (Exists!3159 lambda!335126) (Exists!3159 lambda!335127))))

(assert (=> d!1925766 true))

(declare-fun _$90!1872 () Unit!157513)

(assert (=> d!1925766 (= (choose!45681 (regOne!32690 r!7292) (regTwo!32690 r!7292) s!2326) _$90!1872)))

(declare-fun m!6986816 () Bool)

(assert (=> bs!1523881 m!6986816))

(declare-fun m!6986818 () Bool)

(assert (=> bs!1523881 m!6986818))

(assert (=> d!1925426 d!1925766))

(assert (=> d!1925426 d!1925736))

(declare-fun d!1925768 () Bool)

(assert (=> d!1925768 (= (isEmptyLang!1516 lt!2333726) ((_ is EmptyLang!16089) lt!2333726))))

(assert (=> b!6145497 d!1925768))

(declare-fun d!1925770 () Bool)

(assert (=> d!1925770 (= (nullable!6082 (h!70890 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343)))))))) (nullableFct!2046 (h!70890 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343)))))))))))

(declare-fun bs!1523882 () Bool)

(assert (= bs!1523882 d!1925770))

(declare-fun m!6986820 () Bool)

(assert (=> bs!1523882 m!6986820))

(assert (=> b!6145561 d!1925770))

(declare-fun d!1925772 () Bool)

(declare-fun c!1105944 () Bool)

(assert (=> d!1925772 (= c!1105944 (isEmpty!36399 (tail!11784 (t!378050 s!2326))))))

(declare-fun e!3745515 () Bool)

(assert (=> d!1925772 (= (matchZipper!2101 (derivationStepZipper!2062 ((_ map or) lt!2333661 lt!2333650) (head!12699 (t!378050 s!2326))) (tail!11784 (t!378050 s!2326))) e!3745515)))

(declare-fun b!6146437 () Bool)

(assert (=> b!6146437 (= e!3745515 (nullableZipper!1870 (derivationStepZipper!2062 ((_ map or) lt!2333661 lt!2333650) (head!12699 (t!378050 s!2326)))))))

(declare-fun b!6146438 () Bool)

(assert (=> b!6146438 (= e!3745515 (matchZipper!2101 (derivationStepZipper!2062 (derivationStepZipper!2062 ((_ map or) lt!2333661 lt!2333650) (head!12699 (t!378050 s!2326))) (head!12699 (tail!11784 (t!378050 s!2326)))) (tail!11784 (tail!11784 (t!378050 s!2326)))))))

(assert (= (and d!1925772 c!1105944) b!6146437))

(assert (= (and d!1925772 (not c!1105944)) b!6146438))

(assert (=> d!1925772 m!6986008))

(declare-fun m!6986822 () Bool)

(assert (=> d!1925772 m!6986822))

(assert (=> b!6146437 m!6986232))

(declare-fun m!6986824 () Bool)

(assert (=> b!6146437 m!6986824))

(assert (=> b!6146438 m!6986008))

(declare-fun m!6986826 () Bool)

(assert (=> b!6146438 m!6986826))

(assert (=> b!6146438 m!6986232))

(assert (=> b!6146438 m!6986826))

(declare-fun m!6986828 () Bool)

(assert (=> b!6146438 m!6986828))

(assert (=> b!6146438 m!6986008))

(declare-fun m!6986830 () Bool)

(assert (=> b!6146438 m!6986830))

(assert (=> b!6146438 m!6986828))

(assert (=> b!6146438 m!6986830))

(declare-fun m!6986832 () Bool)

(assert (=> b!6146438 m!6986832))

(assert (=> b!6145730 d!1925772))

(declare-fun bs!1523883 () Bool)

(declare-fun d!1925774 () Bool)

(assert (= bs!1523883 (and d!1925774 b!6145018)))

(declare-fun lambda!335130 () Int)

(assert (=> bs!1523883 (= (= (head!12699 (t!378050 s!2326)) (h!70891 s!2326)) (= lambda!335130 lambda!335021))))

(assert (=> d!1925774 true))

(assert (=> d!1925774 (= (derivationStepZipper!2062 ((_ map or) lt!2333661 lt!2333650) (head!12699 (t!378050 s!2326))) (flatMap!1594 ((_ map or) lt!2333661 lt!2333650) lambda!335130))))

(declare-fun bs!1523884 () Bool)

(assert (= bs!1523884 d!1925774))

(declare-fun m!6986834 () Bool)

(assert (=> bs!1523884 m!6986834))

(assert (=> b!6145730 d!1925774))

(declare-fun d!1925776 () Bool)

(assert (=> d!1925776 (= (head!12699 (t!378050 s!2326)) (h!70891 (t!378050 s!2326)))))

(assert (=> b!6145730 d!1925776))

(declare-fun d!1925778 () Bool)

(assert (=> d!1925778 (= (tail!11784 (t!378050 s!2326)) (t!378050 (t!378050 s!2326)))))

(assert (=> b!6145730 d!1925778))

(declare-fun b!6146441 () Bool)

(declare-fun e!3745521 () Bool)

(declare-fun e!3745517 () Bool)

(assert (=> b!6146441 (= e!3745521 e!3745517)))

(declare-fun c!1105948 () Bool)

(assert (=> b!6146441 (= c!1105948 ((_ is Union!16089) lt!2333723))))

(declare-fun d!1925780 () Bool)

(declare-fun res!2546315 () Bool)

(declare-fun e!3745520 () Bool)

(assert (=> d!1925780 (=> res!2546315 e!3745520)))

(assert (=> d!1925780 (= res!2546315 ((_ is ElementMatch!16089) lt!2333723))))

(assert (=> d!1925780 (= (validRegex!7825 lt!2333723) e!3745520)))

(declare-fun bm!510842 () Bool)

(declare-fun call!510847 () Bool)

(declare-fun call!510848 () Bool)

(assert (=> bm!510842 (= call!510847 call!510848)))

(declare-fun b!6146442 () Bool)

(declare-fun e!3745522 () Bool)

(assert (=> b!6146442 (= e!3745522 call!510848)))

(declare-fun b!6146443 () Bool)

(declare-fun e!3745518 () Bool)

(declare-fun call!510849 () Bool)

(assert (=> b!6146443 (= e!3745518 call!510849)))

(declare-fun bm!510843 () Bool)

(declare-fun c!1105947 () Bool)

(assert (=> bm!510843 (= call!510848 (validRegex!7825 (ite c!1105947 (reg!16418 lt!2333723) (ite c!1105948 (regOne!32691 lt!2333723) (regOne!32690 lt!2333723)))))))

(declare-fun bm!510844 () Bool)

(assert (=> bm!510844 (= call!510849 (validRegex!7825 (ite c!1105948 (regTwo!32691 lt!2333723) (regTwo!32690 lt!2333723))))))

(declare-fun b!6146444 () Bool)

(assert (=> b!6146444 (= e!3745520 e!3745521)))

(assert (=> b!6146444 (= c!1105947 ((_ is Star!16089) lt!2333723))))

(declare-fun b!6146445 () Bool)

(declare-fun e!3745519 () Bool)

(assert (=> b!6146445 (= e!3745519 call!510849)))

(declare-fun b!6146446 () Bool)

(declare-fun e!3745516 () Bool)

(assert (=> b!6146446 (= e!3745516 e!3745519)))

(declare-fun res!2546313 () Bool)

(assert (=> b!6146446 (=> (not res!2546313) (not e!3745519))))

(assert (=> b!6146446 (= res!2546313 call!510847)))

(declare-fun b!6146447 () Bool)

(assert (=> b!6146447 (= e!3745521 e!3745522)))

(declare-fun res!2546317 () Bool)

(assert (=> b!6146447 (= res!2546317 (not (nullable!6082 (reg!16418 lt!2333723))))))

(assert (=> b!6146447 (=> (not res!2546317) (not e!3745522))))

(declare-fun b!6146448 () Bool)

(declare-fun res!2546314 () Bool)

(assert (=> b!6146448 (=> res!2546314 e!3745516)))

(assert (=> b!6146448 (= res!2546314 (not ((_ is Concat!24934) lt!2333723)))))

(assert (=> b!6146448 (= e!3745517 e!3745516)))

(declare-fun b!6146449 () Bool)

(declare-fun res!2546316 () Bool)

(assert (=> b!6146449 (=> (not res!2546316) (not e!3745518))))

(assert (=> b!6146449 (= res!2546316 call!510847)))

(assert (=> b!6146449 (= e!3745517 e!3745518)))

(assert (= (and d!1925780 (not res!2546315)) b!6146444))

(assert (= (and b!6146444 c!1105947) b!6146447))

(assert (= (and b!6146444 (not c!1105947)) b!6146441))

(assert (= (and b!6146447 res!2546317) b!6146442))

(assert (= (and b!6146441 c!1105948) b!6146449))

(assert (= (and b!6146441 (not c!1105948)) b!6146448))

(assert (= (and b!6146449 res!2546316) b!6146443))

(assert (= (and b!6146448 (not res!2546314)) b!6146446))

(assert (= (and b!6146446 res!2546313) b!6146445))

(assert (= (or b!6146443 b!6146445) bm!510844))

(assert (= (or b!6146449 b!6146446) bm!510842))

(assert (= (or b!6146442 bm!510842) bm!510843))

(declare-fun m!6986836 () Bool)

(assert (=> bm!510843 m!6986836))

(declare-fun m!6986838 () Bool)

(assert (=> bm!510844 m!6986838))

(declare-fun m!6986840 () Bool)

(assert (=> b!6146447 m!6986840))

(assert (=> d!1925398 d!1925780))

(declare-fun d!1925782 () Bool)

(declare-fun res!2546318 () Bool)

(declare-fun e!3745523 () Bool)

(assert (=> d!1925782 (=> res!2546318 e!3745523)))

(assert (=> d!1925782 (= res!2546318 ((_ is Nil!64442) (exprs!5973 (h!70892 zl!343))))))

(assert (=> d!1925782 (= (forall!15210 (exprs!5973 (h!70892 zl!343)) lambda!335056) e!3745523)))

(declare-fun b!6146450 () Bool)

(declare-fun e!3745524 () Bool)

(assert (=> b!6146450 (= e!3745523 e!3745524)))

(declare-fun res!2546319 () Bool)

(assert (=> b!6146450 (=> (not res!2546319) (not e!3745524))))

(assert (=> b!6146450 (= res!2546319 (dynLambda!25400 lambda!335056 (h!70890 (exprs!5973 (h!70892 zl!343)))))))

(declare-fun b!6146451 () Bool)

(assert (=> b!6146451 (= e!3745524 (forall!15210 (t!378049 (exprs!5973 (h!70892 zl!343))) lambda!335056))))

(assert (= (and d!1925782 (not res!2546318)) b!6146450))

(assert (= (and b!6146450 res!2546319) b!6146451))

(declare-fun b_lambda!233941 () Bool)

(assert (=> (not b_lambda!233941) (not b!6146450)))

(declare-fun m!6986842 () Bool)

(assert (=> b!6146450 m!6986842))

(declare-fun m!6986844 () Bool)

(assert (=> b!6146451 m!6986844))

(assert (=> d!1925398 d!1925782))

(assert (=> bm!510704 d!1925748))

(declare-fun d!1925784 () Bool)

(assert (=> d!1925784 (= (isEmpty!36397 (t!378049 (unfocusZipperList!1510 zl!343))) ((_ is Nil!64442) (t!378049 (unfocusZipperList!1510 zl!343))))))

(assert (=> b!6145493 d!1925784))

(declare-fun d!1925786 () Bool)

(declare-fun c!1105949 () Bool)

(assert (=> d!1925786 (= c!1105949 (isEmpty!36399 (tail!11784 (t!378050 s!2326))))))

(declare-fun e!3745525 () Bool)

(assert (=> d!1925786 (= (matchZipper!2101 (derivationStepZipper!2062 ((_ map or) lt!2333651 lt!2333650) (head!12699 (t!378050 s!2326))) (tail!11784 (t!378050 s!2326))) e!3745525)))

(declare-fun b!6146452 () Bool)

(assert (=> b!6146452 (= e!3745525 (nullableZipper!1870 (derivationStepZipper!2062 ((_ map or) lt!2333651 lt!2333650) (head!12699 (t!378050 s!2326)))))))

(declare-fun b!6146453 () Bool)

(assert (=> b!6146453 (= e!3745525 (matchZipper!2101 (derivationStepZipper!2062 (derivationStepZipper!2062 ((_ map or) lt!2333651 lt!2333650) (head!12699 (t!378050 s!2326))) (head!12699 (tail!11784 (t!378050 s!2326)))) (tail!11784 (tail!11784 (t!378050 s!2326)))))))

(assert (= (and d!1925786 c!1105949) b!6146452))

(assert (= (and d!1925786 (not c!1105949)) b!6146453))

(assert (=> d!1925786 m!6986008))

(assert (=> d!1925786 m!6986822))

(assert (=> b!6146452 m!6986014))

(declare-fun m!6986846 () Bool)

(assert (=> b!6146452 m!6986846))

(assert (=> b!6146453 m!6986008))

(assert (=> b!6146453 m!6986826))

(assert (=> b!6146453 m!6986014))

(assert (=> b!6146453 m!6986826))

(declare-fun m!6986848 () Bool)

(assert (=> b!6146453 m!6986848))

(assert (=> b!6146453 m!6986008))

(assert (=> b!6146453 m!6986830))

(assert (=> b!6146453 m!6986848))

(assert (=> b!6146453 m!6986830))

(declare-fun m!6986850 () Bool)

(assert (=> b!6146453 m!6986850))

(assert (=> b!6145440 d!1925786))

(declare-fun bs!1523885 () Bool)

(declare-fun d!1925788 () Bool)

(assert (= bs!1523885 (and d!1925788 b!6145018)))

(declare-fun lambda!335131 () Int)

(assert (=> bs!1523885 (= (= (head!12699 (t!378050 s!2326)) (h!70891 s!2326)) (= lambda!335131 lambda!335021))))

(declare-fun bs!1523886 () Bool)

(assert (= bs!1523886 (and d!1925788 d!1925774)))

(assert (=> bs!1523886 (= lambda!335131 lambda!335130)))

(assert (=> d!1925788 true))

(assert (=> d!1925788 (= (derivationStepZipper!2062 ((_ map or) lt!2333651 lt!2333650) (head!12699 (t!378050 s!2326))) (flatMap!1594 ((_ map or) lt!2333651 lt!2333650) lambda!335131))))

(declare-fun bs!1523887 () Bool)

(assert (= bs!1523887 d!1925788))

(declare-fun m!6986852 () Bool)

(assert (=> bs!1523887 m!6986852))

(assert (=> b!6145440 d!1925788))

(assert (=> b!6145440 d!1925776))

(assert (=> b!6145440 d!1925778))

(assert (=> d!1925468 d!1925734))

(declare-fun b!6146454 () Bool)

(declare-fun e!3745530 () Bool)

(declare-fun lt!2333786 () Bool)

(declare-fun call!510850 () Bool)

(assert (=> b!6146454 (= e!3745530 (= lt!2333786 call!510850))))

(declare-fun b!6146455 () Bool)

(declare-fun res!2546327 () Bool)

(declare-fun e!3745532 () Bool)

(assert (=> b!6146455 (=> res!2546327 e!3745532)))

(declare-fun e!3745528 () Bool)

(assert (=> b!6146455 (= res!2546327 e!3745528)))

(declare-fun res!2546325 () Bool)

(assert (=> b!6146455 (=> (not res!2546325) (not e!3745528))))

(assert (=> b!6146455 (= res!2546325 lt!2333786)))

(declare-fun b!6146456 () Bool)

(declare-fun e!3745531 () Bool)

(assert (=> b!6146456 (= e!3745531 (matchR!8272 (derivativeStep!4809 (regOne!32690 r!7292) (head!12699 (_1!36371 (get!22235 lt!2333740)))) (tail!11784 (_1!36371 (get!22235 lt!2333740)))))))

(declare-fun b!6146457 () Bool)

(declare-fun res!2546322 () Bool)

(declare-fun e!3745529 () Bool)

(assert (=> b!6146457 (=> res!2546322 e!3745529)))

(assert (=> b!6146457 (= res!2546322 (not (isEmpty!36399 (tail!11784 (_1!36371 (get!22235 lt!2333740))))))))

(declare-fun b!6146458 () Bool)

(assert (=> b!6146458 (= e!3745531 (nullable!6082 (regOne!32690 r!7292)))))

(declare-fun b!6146459 () Bool)

(declare-fun res!2546326 () Bool)

(assert (=> b!6146459 (=> (not res!2546326) (not e!3745528))))

(assert (=> b!6146459 (= res!2546326 (not call!510850))))

(declare-fun b!6146460 () Bool)

(declare-fun res!2546321 () Bool)

(assert (=> b!6146460 (=> res!2546321 e!3745532)))

(assert (=> b!6146460 (= res!2546321 (not ((_ is ElementMatch!16089) (regOne!32690 r!7292))))))

(declare-fun e!3745526 () Bool)

(assert (=> b!6146460 (= e!3745526 e!3745532)))

(declare-fun d!1925790 () Bool)

(assert (=> d!1925790 e!3745530))

(declare-fun c!1105952 () Bool)

(assert (=> d!1925790 (= c!1105952 ((_ is EmptyExpr!16089) (regOne!32690 r!7292)))))

(assert (=> d!1925790 (= lt!2333786 e!3745531)))

(declare-fun c!1105951 () Bool)

(assert (=> d!1925790 (= c!1105951 (isEmpty!36399 (_1!36371 (get!22235 lt!2333740))))))

(assert (=> d!1925790 (validRegex!7825 (regOne!32690 r!7292))))

(assert (=> d!1925790 (= (matchR!8272 (regOne!32690 r!7292) (_1!36371 (get!22235 lt!2333740))) lt!2333786)))

(declare-fun b!6146461 () Bool)

(assert (=> b!6146461 (= e!3745526 (not lt!2333786))))

(declare-fun b!6146462 () Bool)

(declare-fun res!2546320 () Bool)

(assert (=> b!6146462 (=> (not res!2546320) (not e!3745528))))

(assert (=> b!6146462 (= res!2546320 (isEmpty!36399 (tail!11784 (_1!36371 (get!22235 lt!2333740)))))))

(declare-fun b!6146463 () Bool)

(assert (=> b!6146463 (= e!3745530 e!3745526)))

(declare-fun c!1105950 () Bool)

(assert (=> b!6146463 (= c!1105950 ((_ is EmptyLang!16089) (regOne!32690 r!7292)))))

(declare-fun bm!510845 () Bool)

(assert (=> bm!510845 (= call!510850 (isEmpty!36399 (_1!36371 (get!22235 lt!2333740))))))

(declare-fun b!6146464 () Bool)

(declare-fun e!3745527 () Bool)

(assert (=> b!6146464 (= e!3745532 e!3745527)))

(declare-fun res!2546324 () Bool)

(assert (=> b!6146464 (=> (not res!2546324) (not e!3745527))))

(assert (=> b!6146464 (= res!2546324 (not lt!2333786))))

(declare-fun b!6146465 () Bool)

(assert (=> b!6146465 (= e!3745529 (not (= (head!12699 (_1!36371 (get!22235 lt!2333740))) (c!1105579 (regOne!32690 r!7292)))))))

(declare-fun b!6146466 () Bool)

(assert (=> b!6146466 (= e!3745528 (= (head!12699 (_1!36371 (get!22235 lt!2333740))) (c!1105579 (regOne!32690 r!7292))))))

(declare-fun b!6146467 () Bool)

(assert (=> b!6146467 (= e!3745527 e!3745529)))

(declare-fun res!2546323 () Bool)

(assert (=> b!6146467 (=> res!2546323 e!3745529)))

(assert (=> b!6146467 (= res!2546323 call!510850)))

(assert (= (and d!1925790 c!1105951) b!6146458))

(assert (= (and d!1925790 (not c!1105951)) b!6146456))

(assert (= (and d!1925790 c!1105952) b!6146454))

(assert (= (and d!1925790 (not c!1105952)) b!6146463))

(assert (= (and b!6146463 c!1105950) b!6146461))

(assert (= (and b!6146463 (not c!1105950)) b!6146460))

(assert (= (and b!6146460 (not res!2546321)) b!6146455))

(assert (= (and b!6146455 res!2546325) b!6146459))

(assert (= (and b!6146459 res!2546326) b!6146462))

(assert (= (and b!6146462 res!2546320) b!6146466))

(assert (= (and b!6146455 (not res!2546327)) b!6146464))

(assert (= (and b!6146464 res!2546324) b!6146467))

(assert (= (and b!6146467 (not res!2546323)) b!6146457))

(assert (= (and b!6146457 (not res!2546322)) b!6146465))

(assert (= (or b!6146454 b!6146459 b!6146467) bm!510845))

(declare-fun m!6986854 () Bool)

(assert (=> b!6146466 m!6986854))

(declare-fun m!6986856 () Bool)

(assert (=> b!6146458 m!6986856))

(declare-fun m!6986858 () Bool)

(assert (=> d!1925790 m!6986858))

(assert (=> d!1925790 m!6986126))

(assert (=> b!6146456 m!6986854))

(assert (=> b!6146456 m!6986854))

(declare-fun m!6986860 () Bool)

(assert (=> b!6146456 m!6986860))

(declare-fun m!6986862 () Bool)

(assert (=> b!6146456 m!6986862))

(assert (=> b!6146456 m!6986860))

(assert (=> b!6146456 m!6986862))

(declare-fun m!6986864 () Bool)

(assert (=> b!6146456 m!6986864))

(assert (=> b!6146462 m!6986862))

(assert (=> b!6146462 m!6986862))

(declare-fun m!6986866 () Bool)

(assert (=> b!6146462 m!6986866))

(assert (=> bm!510845 m!6986858))

(assert (=> b!6146457 m!6986862))

(assert (=> b!6146457 m!6986862))

(assert (=> b!6146457 m!6986866))

(assert (=> b!6146465 m!6986854))

(assert (=> b!6145590 d!1925790))

(declare-fun d!1925792 () Bool)

(assert (=> d!1925792 (= (get!22235 lt!2333740) (v!52118 lt!2333740))))

(assert (=> b!6145590 d!1925792))

(declare-fun d!1925794 () Bool)

(assert (=> d!1925794 true))

(assert (=> d!1925794 true))

(declare-fun res!2546328 () Bool)

(assert (=> d!1925794 (= (choose!45679 lambda!335019) res!2546328)))

(assert (=> d!1925428 d!1925794))

(assert (=> d!1925394 d!1925734))

(assert (=> b!6145728 d!1925456))

(declare-fun b!6146468 () Bool)

(declare-fun call!510851 () (InoxSet Context!10946))

(declare-fun e!3745535 () (InoxSet Context!10946))

(assert (=> b!6146468 (= e!3745535 ((_ map or) call!510851 (derivationStepZipperUp!1263 (Context!10947 (t!378049 (exprs!5973 (Context!10947 (t!378049 (exprs!5973 lt!2333672)))))) (h!70891 s!2326))))))

(declare-fun b!6146469 () Bool)

(declare-fun e!3745533 () Bool)

(assert (=> b!6146469 (= e!3745533 (nullable!6082 (h!70890 (exprs!5973 (Context!10947 (t!378049 (exprs!5973 lt!2333672)))))))))

(declare-fun bm!510846 () Bool)

(assert (=> bm!510846 (= call!510851 (derivationStepZipperDown!1337 (h!70890 (exprs!5973 (Context!10947 (t!378049 (exprs!5973 lt!2333672))))) (Context!10947 (t!378049 (exprs!5973 (Context!10947 (t!378049 (exprs!5973 lt!2333672)))))) (h!70891 s!2326)))))

(declare-fun b!6146471 () Bool)

(declare-fun e!3745534 () (InoxSet Context!10946))

(assert (=> b!6146471 (= e!3745535 e!3745534)))

(declare-fun c!1105954 () Bool)

(assert (=> b!6146471 (= c!1105954 ((_ is Cons!64442) (exprs!5973 (Context!10947 (t!378049 (exprs!5973 lt!2333672))))))))

(declare-fun b!6146472 () Bool)

(assert (=> b!6146472 (= e!3745534 call!510851)))

(declare-fun b!6146470 () Bool)

(assert (=> b!6146470 (= e!3745534 ((as const (Array Context!10946 Bool)) false))))

(declare-fun d!1925796 () Bool)

(declare-fun c!1105953 () Bool)

(assert (=> d!1925796 (= c!1105953 e!3745533)))

(declare-fun res!2546329 () Bool)

(assert (=> d!1925796 (=> (not res!2546329) (not e!3745533))))

(assert (=> d!1925796 (= res!2546329 ((_ is Cons!64442) (exprs!5973 (Context!10947 (t!378049 (exprs!5973 lt!2333672))))))))

(assert (=> d!1925796 (= (derivationStepZipperUp!1263 (Context!10947 (t!378049 (exprs!5973 lt!2333672))) (h!70891 s!2326)) e!3745535)))

(assert (= (and d!1925796 res!2546329) b!6146469))

(assert (= (and d!1925796 c!1105953) b!6146468))

(assert (= (and d!1925796 (not c!1105953)) b!6146471))

(assert (= (and b!6146471 c!1105954) b!6146472))

(assert (= (and b!6146471 (not c!1105954)) b!6146470))

(assert (= (or b!6146468 b!6146472) bm!510846))

(declare-fun m!6986868 () Bool)

(assert (=> b!6146468 m!6986868))

(declare-fun m!6986870 () Bool)

(assert (=> b!6146469 m!6986870))

(declare-fun m!6986872 () Bool)

(assert (=> bm!510846 m!6986872))

(assert (=> b!6145606 d!1925796))

(declare-fun d!1925798 () Bool)

(declare-fun c!1105955 () Bool)

(assert (=> d!1925798 (= c!1105955 (isEmpty!36399 (tail!11784 (t!378050 s!2326))))))

(declare-fun e!3745536 () Bool)

(assert (=> d!1925798 (= (matchZipper!2101 (derivationStepZipper!2062 lt!2333650 (head!12699 (t!378050 s!2326))) (tail!11784 (t!378050 s!2326))) e!3745536)))

(declare-fun b!6146473 () Bool)

(assert (=> b!6146473 (= e!3745536 (nullableZipper!1870 (derivationStepZipper!2062 lt!2333650 (head!12699 (t!378050 s!2326)))))))

(declare-fun b!6146474 () Bool)

(assert (=> b!6146474 (= e!3745536 (matchZipper!2101 (derivationStepZipper!2062 (derivationStepZipper!2062 lt!2333650 (head!12699 (t!378050 s!2326))) (head!12699 (tail!11784 (t!378050 s!2326)))) (tail!11784 (tail!11784 (t!378050 s!2326)))))))

(assert (= (and d!1925798 c!1105955) b!6146473))

(assert (= (and d!1925798 (not c!1105955)) b!6146474))

(assert (=> d!1925798 m!6986008))

(assert (=> d!1925798 m!6986822))

(assert (=> b!6146473 m!6986202))

(declare-fun m!6986874 () Bool)

(assert (=> b!6146473 m!6986874))

(assert (=> b!6146474 m!6986008))

(assert (=> b!6146474 m!6986826))

(assert (=> b!6146474 m!6986202))

(assert (=> b!6146474 m!6986826))

(declare-fun m!6986876 () Bool)

(assert (=> b!6146474 m!6986876))

(assert (=> b!6146474 m!6986008))

(assert (=> b!6146474 m!6986830))

(assert (=> b!6146474 m!6986876))

(assert (=> b!6146474 m!6986830))

(declare-fun m!6986878 () Bool)

(assert (=> b!6146474 m!6986878))

(assert (=> b!6145702 d!1925798))

(declare-fun bs!1523888 () Bool)

(declare-fun d!1925800 () Bool)

(assert (= bs!1523888 (and d!1925800 b!6145018)))

(declare-fun lambda!335132 () Int)

(assert (=> bs!1523888 (= (= (head!12699 (t!378050 s!2326)) (h!70891 s!2326)) (= lambda!335132 lambda!335021))))

(declare-fun bs!1523889 () Bool)

(assert (= bs!1523889 (and d!1925800 d!1925774)))

(assert (=> bs!1523889 (= lambda!335132 lambda!335130)))

(declare-fun bs!1523890 () Bool)

(assert (= bs!1523890 (and d!1925800 d!1925788)))

(assert (=> bs!1523890 (= lambda!335132 lambda!335131)))

(assert (=> d!1925800 true))

(assert (=> d!1925800 (= (derivationStepZipper!2062 lt!2333650 (head!12699 (t!378050 s!2326))) (flatMap!1594 lt!2333650 lambda!335132))))

(declare-fun bs!1523891 () Bool)

(assert (= bs!1523891 d!1925800))

(declare-fun m!6986880 () Bool)

(assert (=> bs!1523891 m!6986880))

(assert (=> b!6145702 d!1925800))

(assert (=> b!6145702 d!1925776))

(assert (=> b!6145702 d!1925778))

(declare-fun b!6146475 () Bool)

(declare-fun e!3745541 () Bool)

(declare-fun lt!2333787 () Bool)

(declare-fun call!510852 () Bool)

(assert (=> b!6146475 (= e!3745541 (= lt!2333787 call!510852))))

(declare-fun b!6146476 () Bool)

(declare-fun res!2546337 () Bool)

(declare-fun e!3745543 () Bool)

(assert (=> b!6146476 (=> res!2546337 e!3745543)))

(declare-fun e!3745539 () Bool)

(assert (=> b!6146476 (= res!2546337 e!3745539)))

(declare-fun res!2546335 () Bool)

(assert (=> b!6146476 (=> (not res!2546335) (not e!3745539))))

(assert (=> b!6146476 (= res!2546335 lt!2333787)))

(declare-fun b!6146477 () Bool)

(declare-fun e!3745542 () Bool)

(assert (=> b!6146477 (= e!3745542 (matchR!8272 (derivativeStep!4809 (derivativeStep!4809 r!7292 (head!12699 s!2326)) (head!12699 (tail!11784 s!2326))) (tail!11784 (tail!11784 s!2326))))))

(declare-fun b!6146478 () Bool)

(declare-fun res!2546332 () Bool)

(declare-fun e!3745540 () Bool)

(assert (=> b!6146478 (=> res!2546332 e!3745540)))

(assert (=> b!6146478 (= res!2546332 (not (isEmpty!36399 (tail!11784 (tail!11784 s!2326)))))))

(declare-fun b!6146479 () Bool)

(assert (=> b!6146479 (= e!3745542 (nullable!6082 (derivativeStep!4809 r!7292 (head!12699 s!2326))))))

(declare-fun b!6146480 () Bool)

(declare-fun res!2546336 () Bool)

(assert (=> b!6146480 (=> (not res!2546336) (not e!3745539))))

(assert (=> b!6146480 (= res!2546336 (not call!510852))))

(declare-fun b!6146481 () Bool)

(declare-fun res!2546331 () Bool)

(assert (=> b!6146481 (=> res!2546331 e!3745543)))

(assert (=> b!6146481 (= res!2546331 (not ((_ is ElementMatch!16089) (derivativeStep!4809 r!7292 (head!12699 s!2326)))))))

(declare-fun e!3745537 () Bool)

(assert (=> b!6146481 (= e!3745537 e!3745543)))

(declare-fun d!1925802 () Bool)

(assert (=> d!1925802 e!3745541))

(declare-fun c!1105958 () Bool)

(assert (=> d!1925802 (= c!1105958 ((_ is EmptyExpr!16089) (derivativeStep!4809 r!7292 (head!12699 s!2326))))))

(assert (=> d!1925802 (= lt!2333787 e!3745542)))

(declare-fun c!1105957 () Bool)

(assert (=> d!1925802 (= c!1105957 (isEmpty!36399 (tail!11784 s!2326)))))

(assert (=> d!1925802 (validRegex!7825 (derivativeStep!4809 r!7292 (head!12699 s!2326)))))

(assert (=> d!1925802 (= (matchR!8272 (derivativeStep!4809 r!7292 (head!12699 s!2326)) (tail!11784 s!2326)) lt!2333787)))

(declare-fun b!6146482 () Bool)

(assert (=> b!6146482 (= e!3745537 (not lt!2333787))))

(declare-fun b!6146483 () Bool)

(declare-fun res!2546330 () Bool)

(assert (=> b!6146483 (=> (not res!2546330) (not e!3745539))))

(assert (=> b!6146483 (= res!2546330 (isEmpty!36399 (tail!11784 (tail!11784 s!2326))))))

(declare-fun b!6146484 () Bool)

(assert (=> b!6146484 (= e!3745541 e!3745537)))

(declare-fun c!1105956 () Bool)

(assert (=> b!6146484 (= c!1105956 ((_ is EmptyLang!16089) (derivativeStep!4809 r!7292 (head!12699 s!2326))))))

(declare-fun bm!510847 () Bool)

(assert (=> bm!510847 (= call!510852 (isEmpty!36399 (tail!11784 s!2326)))))

(declare-fun b!6146485 () Bool)

(declare-fun e!3745538 () Bool)

(assert (=> b!6146485 (= e!3745543 e!3745538)))

(declare-fun res!2546334 () Bool)

(assert (=> b!6146485 (=> (not res!2546334) (not e!3745538))))

(assert (=> b!6146485 (= res!2546334 (not lt!2333787))))

(declare-fun b!6146486 () Bool)

(assert (=> b!6146486 (= e!3745540 (not (= (head!12699 (tail!11784 s!2326)) (c!1105579 (derivativeStep!4809 r!7292 (head!12699 s!2326))))))))

(declare-fun b!6146487 () Bool)

(assert (=> b!6146487 (= e!3745539 (= (head!12699 (tail!11784 s!2326)) (c!1105579 (derivativeStep!4809 r!7292 (head!12699 s!2326)))))))

(declare-fun b!6146488 () Bool)

(assert (=> b!6146488 (= e!3745538 e!3745540)))

(declare-fun res!2546333 () Bool)

(assert (=> b!6146488 (=> res!2546333 e!3745540)))

(assert (=> b!6146488 (= res!2546333 call!510852)))

(assert (= (and d!1925802 c!1105957) b!6146479))

(assert (= (and d!1925802 (not c!1105957)) b!6146477))

(assert (= (and d!1925802 c!1105958) b!6146475))

(assert (= (and d!1925802 (not c!1105958)) b!6146484))

(assert (= (and b!6146484 c!1105956) b!6146482))

(assert (= (and b!6146484 (not c!1105956)) b!6146481))

(assert (= (and b!6146481 (not res!2546331)) b!6146476))

(assert (= (and b!6146476 res!2546335) b!6146480))

(assert (= (and b!6146480 res!2546336) b!6146483))

(assert (= (and b!6146483 res!2546330) b!6146487))

(assert (= (and b!6146476 (not res!2546337)) b!6146485))

(assert (= (and b!6146485 res!2546334) b!6146488))

(assert (= (and b!6146488 (not res!2546333)) b!6146478))

(assert (= (and b!6146478 (not res!2546332)) b!6146486))

(assert (= (or b!6146475 b!6146480 b!6146488) bm!510847))

(assert (=> b!6146487 m!6986192))

(declare-fun m!6986882 () Bool)

(assert (=> b!6146487 m!6986882))

(assert (=> b!6146479 m!6986190))

(declare-fun m!6986884 () Bool)

(assert (=> b!6146479 m!6986884))

(assert (=> d!1925802 m!6986192))

(assert (=> d!1925802 m!6986196))

(assert (=> d!1925802 m!6986190))

(declare-fun m!6986886 () Bool)

(assert (=> d!1925802 m!6986886))

(assert (=> b!6146477 m!6986192))

(assert (=> b!6146477 m!6986882))

(assert (=> b!6146477 m!6986190))

(assert (=> b!6146477 m!6986882))

(declare-fun m!6986888 () Bool)

(assert (=> b!6146477 m!6986888))

(assert (=> b!6146477 m!6986192))

(declare-fun m!6986890 () Bool)

(assert (=> b!6146477 m!6986890))

(assert (=> b!6146477 m!6986888))

(assert (=> b!6146477 m!6986890))

(declare-fun m!6986892 () Bool)

(assert (=> b!6146477 m!6986892))

(assert (=> b!6146483 m!6986192))

(assert (=> b!6146483 m!6986890))

(assert (=> b!6146483 m!6986890))

(declare-fun m!6986894 () Bool)

(assert (=> b!6146483 m!6986894))

(assert (=> bm!510847 m!6986192))

(assert (=> bm!510847 m!6986196))

(assert (=> b!6146478 m!6986192))

(assert (=> b!6146478 m!6986890))

(assert (=> b!6146478 m!6986890))

(assert (=> b!6146478 m!6986894))

(assert (=> b!6146486 m!6986192))

(assert (=> b!6146486 m!6986882))

(assert (=> b!6145689 d!1925802))

(declare-fun b!6146509 () Bool)

(declare-fun e!3745556 () Regex!16089)

(declare-fun call!510861 () Regex!16089)

(declare-fun call!510863 () Regex!16089)

(assert (=> b!6146509 (= e!3745556 (Union!16089 call!510861 call!510863))))

(declare-fun b!6146510 () Bool)

(declare-fun c!1105972 () Bool)

(assert (=> b!6146510 (= c!1105972 ((_ is Union!16089) r!7292))))

(declare-fun e!3745557 () Regex!16089)

(assert (=> b!6146510 (= e!3745557 e!3745556)))

(declare-fun d!1925804 () Bool)

(declare-fun lt!2333790 () Regex!16089)

(assert (=> d!1925804 (validRegex!7825 lt!2333790)))

(declare-fun e!3745558 () Regex!16089)

(assert (=> d!1925804 (= lt!2333790 e!3745558)))

(declare-fun c!1105970 () Bool)

(assert (=> d!1925804 (= c!1105970 (or ((_ is EmptyExpr!16089) r!7292) ((_ is EmptyLang!16089) r!7292)))))

(assert (=> d!1925804 (validRegex!7825 r!7292)))

(assert (=> d!1925804 (= (derivativeStep!4809 r!7292 (head!12699 s!2326)) lt!2333790)))

(declare-fun b!6146511 () Bool)

(declare-fun c!1105971 () Bool)

(assert (=> b!6146511 (= c!1105971 (nullable!6082 (regOne!32690 r!7292)))))

(declare-fun e!3745554 () Regex!16089)

(declare-fun e!3745555 () Regex!16089)

(assert (=> b!6146511 (= e!3745554 e!3745555)))

(declare-fun b!6146512 () Bool)

(declare-fun call!510864 () Regex!16089)

(assert (=> b!6146512 (= e!3745554 (Concat!24934 call!510864 r!7292))))

(declare-fun bm!510856 () Bool)

(declare-fun call!510862 () Regex!16089)

(assert (=> bm!510856 (= call!510862 call!510864)))

(declare-fun bm!510857 () Bool)

(assert (=> bm!510857 (= call!510861 (derivativeStep!4809 (ite c!1105972 (regOne!32691 r!7292) (regOne!32690 r!7292)) (head!12699 s!2326)))))

(declare-fun c!1105973 () Bool)

(declare-fun bm!510858 () Bool)

(assert (=> bm!510858 (= call!510863 (derivativeStep!4809 (ite c!1105972 (regTwo!32691 r!7292) (ite c!1105973 (reg!16418 r!7292) (ite c!1105971 (regTwo!32690 r!7292) (regOne!32690 r!7292)))) (head!12699 s!2326)))))

(declare-fun b!6146513 () Bool)

(assert (=> b!6146513 (= e!3745557 (ite (= (head!12699 s!2326) (c!1105579 r!7292)) EmptyExpr!16089 EmptyLang!16089))))

(declare-fun b!6146514 () Bool)

(assert (=> b!6146514 (= e!3745555 (Union!16089 (Concat!24934 call!510861 (regTwo!32690 r!7292)) call!510862))))

(declare-fun b!6146515 () Bool)

(assert (=> b!6146515 (= e!3745555 (Union!16089 (Concat!24934 call!510862 (regTwo!32690 r!7292)) EmptyLang!16089))))

(declare-fun b!6146516 () Bool)

(assert (=> b!6146516 (= e!3745558 e!3745557)))

(declare-fun c!1105969 () Bool)

(assert (=> b!6146516 (= c!1105969 ((_ is ElementMatch!16089) r!7292))))

(declare-fun b!6146517 () Bool)

(assert (=> b!6146517 (= e!3745556 e!3745554)))

(assert (=> b!6146517 (= c!1105973 ((_ is Star!16089) r!7292))))

(declare-fun bm!510859 () Bool)

(assert (=> bm!510859 (= call!510864 call!510863)))

(declare-fun b!6146518 () Bool)

(assert (=> b!6146518 (= e!3745558 EmptyLang!16089)))

(assert (= (and d!1925804 c!1105970) b!6146518))

(assert (= (and d!1925804 (not c!1105970)) b!6146516))

(assert (= (and b!6146516 c!1105969) b!6146513))

(assert (= (and b!6146516 (not c!1105969)) b!6146510))

(assert (= (and b!6146510 c!1105972) b!6146509))

(assert (= (and b!6146510 (not c!1105972)) b!6146517))

(assert (= (and b!6146517 c!1105973) b!6146512))

(assert (= (and b!6146517 (not c!1105973)) b!6146511))

(assert (= (and b!6146511 c!1105971) b!6146514))

(assert (= (and b!6146511 (not c!1105971)) b!6146515))

(assert (= (or b!6146514 b!6146515) bm!510856))

(assert (= (or b!6146512 bm!510856) bm!510859))

(assert (= (or b!6146509 bm!510859) bm!510858))

(assert (= (or b!6146509 b!6146514) bm!510857))

(declare-fun m!6986896 () Bool)

(assert (=> d!1925804 m!6986896))

(assert (=> d!1925804 m!6985738))

(assert (=> b!6146511 m!6986856))

(assert (=> bm!510857 m!6986186))

(declare-fun m!6986898 () Bool)

(assert (=> bm!510857 m!6986898))

(assert (=> bm!510858 m!6986186))

(declare-fun m!6986900 () Bool)

(assert (=> bm!510858 m!6986900))

(assert (=> b!6145689 d!1925804))

(declare-fun d!1925806 () Bool)

(assert (=> d!1925806 (= (head!12699 s!2326) (h!70891 s!2326))))

(assert (=> b!6145689 d!1925806))

(declare-fun d!1925808 () Bool)

(assert (=> d!1925808 (= (tail!11784 s!2326) (t!378050 s!2326))))

(assert (=> b!6145689 d!1925808))

(declare-fun bs!1523892 () Bool)

(declare-fun d!1925810 () Bool)

(assert (= bs!1523892 (and d!1925810 d!1925402)))

(declare-fun lambda!335133 () Int)

(assert (=> bs!1523892 (= lambda!335133 lambda!335062)))

(declare-fun bs!1523893 () Bool)

(assert (= bs!1523893 (and d!1925810 d!1925396)))

(assert (=> bs!1523893 (= lambda!335133 lambda!335053)))

(declare-fun bs!1523894 () Bool)

(assert (= bs!1523894 (and d!1925810 d!1925400)))

(assert (=> bs!1523894 (= lambda!335133 lambda!335059)))

(declare-fun bs!1523895 () Bool)

(assert (= bs!1523895 (and d!1925810 d!1925474)))

(assert (=> bs!1523895 (= lambda!335133 lambda!335079)))

(declare-fun bs!1523896 () Bool)

(assert (= bs!1523896 (and d!1925810 d!1925398)))

(assert (=> bs!1523896 (= lambda!335133 lambda!335056)))

(declare-fun bs!1523897 () Bool)

(assert (= bs!1523897 (and d!1925810 d!1925434)))

(assert (=> bs!1523897 (= lambda!335133 lambda!335072)))

(declare-fun b!6146519 () Bool)

(declare-fun e!3745559 () Bool)

(declare-fun lt!2333791 () Regex!16089)

(assert (=> b!6146519 (= e!3745559 (isEmptyExpr!1505 lt!2333791))))

(declare-fun e!3745562 () Bool)

(assert (=> d!1925810 e!3745562))

(declare-fun res!2546339 () Bool)

(assert (=> d!1925810 (=> (not res!2546339) (not e!3745562))))

(assert (=> d!1925810 (= res!2546339 (validRegex!7825 lt!2333791))))

(declare-fun e!3745560 () Regex!16089)

(assert (=> d!1925810 (= lt!2333791 e!3745560)))

(declare-fun c!1105975 () Bool)

(declare-fun e!3745563 () Bool)

(assert (=> d!1925810 (= c!1105975 e!3745563)))

(declare-fun res!2546338 () Bool)

(assert (=> d!1925810 (=> (not res!2546338) (not e!3745563))))

(assert (=> d!1925810 (= res!2546338 ((_ is Cons!64442) (t!378049 (exprs!5973 (h!70892 zl!343)))))))

(assert (=> d!1925810 (forall!15210 (t!378049 (exprs!5973 (h!70892 zl!343))) lambda!335133)))

(assert (=> d!1925810 (= (generalisedConcat!1686 (t!378049 (exprs!5973 (h!70892 zl!343)))) lt!2333791)))

(declare-fun b!6146520 () Bool)

(declare-fun e!3745561 () Bool)

(assert (=> b!6146520 (= e!3745559 e!3745561)))

(declare-fun c!1105976 () Bool)

(assert (=> b!6146520 (= c!1105976 (isEmpty!36397 (tail!11785 (t!378049 (exprs!5973 (h!70892 zl!343))))))))

(declare-fun b!6146521 () Bool)

(assert (=> b!6146521 (= e!3745560 (h!70890 (t!378049 (exprs!5973 (h!70892 zl!343)))))))

(declare-fun b!6146522 () Bool)

(assert (=> b!6146522 (= e!3745561 (isConcat!1028 lt!2333791))))

(declare-fun b!6146523 () Bool)

(assert (=> b!6146523 (= e!3745561 (= lt!2333791 (head!12700 (t!378049 (exprs!5973 (h!70892 zl!343))))))))

(declare-fun b!6146524 () Bool)

(assert (=> b!6146524 (= e!3745562 e!3745559)))

(declare-fun c!1105977 () Bool)

(assert (=> b!6146524 (= c!1105977 (isEmpty!36397 (t!378049 (exprs!5973 (h!70892 zl!343)))))))

(declare-fun b!6146525 () Bool)

(assert (=> b!6146525 (= e!3745563 (isEmpty!36397 (t!378049 (t!378049 (exprs!5973 (h!70892 zl!343))))))))

(declare-fun b!6146526 () Bool)

(declare-fun e!3745564 () Regex!16089)

(assert (=> b!6146526 (= e!3745560 e!3745564)))

(declare-fun c!1105974 () Bool)

(assert (=> b!6146526 (= c!1105974 ((_ is Cons!64442) (t!378049 (exprs!5973 (h!70892 zl!343)))))))

(declare-fun b!6146527 () Bool)

(assert (=> b!6146527 (= e!3745564 EmptyExpr!16089)))

(declare-fun b!6146528 () Bool)

(assert (=> b!6146528 (= e!3745564 (Concat!24934 (h!70890 (t!378049 (exprs!5973 (h!70892 zl!343)))) (generalisedConcat!1686 (t!378049 (t!378049 (exprs!5973 (h!70892 zl!343)))))))))

(assert (= (and d!1925810 res!2546338) b!6146525))

(assert (= (and d!1925810 c!1105975) b!6146521))

(assert (= (and d!1925810 (not c!1105975)) b!6146526))

(assert (= (and b!6146526 c!1105974) b!6146528))

(assert (= (and b!6146526 (not c!1105974)) b!6146527))

(assert (= (and d!1925810 res!2546339) b!6146524))

(assert (= (and b!6146524 c!1105977) b!6146519))

(assert (= (and b!6146524 (not c!1105977)) b!6146520))

(assert (= (and b!6146520 c!1105976) b!6146523))

(assert (= (and b!6146520 (not c!1105976)) b!6146522))

(declare-fun m!6986902 () Bool)

(assert (=> b!6146523 m!6986902))

(declare-fun m!6986904 () Bool)

(assert (=> b!6146520 m!6986904))

(assert (=> b!6146520 m!6986904))

(declare-fun m!6986906 () Bool)

(assert (=> b!6146520 m!6986906))

(declare-fun m!6986908 () Bool)

(assert (=> d!1925810 m!6986908))

(declare-fun m!6986910 () Bool)

(assert (=> d!1925810 m!6986910))

(declare-fun m!6986912 () Bool)

(assert (=> b!6146519 m!6986912))

(assert (=> b!6146524 m!6985662))

(declare-fun m!6986914 () Bool)

(assert (=> b!6146522 m!6986914))

(declare-fun m!6986916 () Bool)

(assert (=> b!6146525 m!6986916))

(declare-fun m!6986918 () Bool)

(assert (=> b!6146528 m!6986918))

(assert (=> b!6145470 d!1925810))

(declare-fun b!6146537 () Bool)

(declare-fun e!3745570 () List!64567)

(assert (=> b!6146537 (= e!3745570 (_2!36371 (get!22235 lt!2333740)))))

(declare-fun b!6146540 () Bool)

(declare-fun e!3745569 () Bool)

(declare-fun lt!2333794 () List!64567)

(assert (=> b!6146540 (= e!3745569 (or (not (= (_2!36371 (get!22235 lt!2333740)) Nil!64443)) (= lt!2333794 (_1!36371 (get!22235 lt!2333740)))))))

(declare-fun b!6146539 () Bool)

(declare-fun res!2546345 () Bool)

(assert (=> b!6146539 (=> (not res!2546345) (not e!3745569))))

(declare-fun size!40231 (List!64567) Int)

(assert (=> b!6146539 (= res!2546345 (= (size!40231 lt!2333794) (+ (size!40231 (_1!36371 (get!22235 lt!2333740))) (size!40231 (_2!36371 (get!22235 lt!2333740))))))))

(declare-fun d!1925812 () Bool)

(assert (=> d!1925812 e!3745569))

(declare-fun res!2546344 () Bool)

(assert (=> d!1925812 (=> (not res!2546344) (not e!3745569))))

(declare-fun content!12002 (List!64567) (InoxSet C!32448))

(assert (=> d!1925812 (= res!2546344 (= (content!12002 lt!2333794) ((_ map or) (content!12002 (_1!36371 (get!22235 lt!2333740))) (content!12002 (_2!36371 (get!22235 lt!2333740))))))))

(assert (=> d!1925812 (= lt!2333794 e!3745570)))

(declare-fun c!1105980 () Bool)

(assert (=> d!1925812 (= c!1105980 ((_ is Nil!64443) (_1!36371 (get!22235 lt!2333740))))))

(assert (=> d!1925812 (= (++!14175 (_1!36371 (get!22235 lt!2333740)) (_2!36371 (get!22235 lt!2333740))) lt!2333794)))

(declare-fun b!6146538 () Bool)

(assert (=> b!6146538 (= e!3745570 (Cons!64443 (h!70891 (_1!36371 (get!22235 lt!2333740))) (++!14175 (t!378050 (_1!36371 (get!22235 lt!2333740))) (_2!36371 (get!22235 lt!2333740)))))))

(assert (= (and d!1925812 c!1105980) b!6146537))

(assert (= (and d!1925812 (not c!1105980)) b!6146538))

(assert (= (and d!1925812 res!2546344) b!6146539))

(assert (= (and b!6146539 res!2546345) b!6146540))

(declare-fun m!6986920 () Bool)

(assert (=> b!6146539 m!6986920))

(declare-fun m!6986922 () Bool)

(assert (=> b!6146539 m!6986922))

(declare-fun m!6986924 () Bool)

(assert (=> b!6146539 m!6986924))

(declare-fun m!6986926 () Bool)

(assert (=> d!1925812 m!6986926))

(declare-fun m!6986928 () Bool)

(assert (=> d!1925812 m!6986928))

(declare-fun m!6986930 () Bool)

(assert (=> d!1925812 m!6986930))

(declare-fun m!6986932 () Bool)

(assert (=> b!6146538 m!6986932))

(assert (=> b!6145586 d!1925812))

(assert (=> b!6145586 d!1925792))

(declare-fun b!6146541 () Bool)

(declare-fun c!1105985 () Bool)

(assert (=> b!6146541 (= c!1105985 ((_ is Star!16089) (ite c!1105781 (regOne!32691 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105780 (regTwo!32690 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105782 (regOne!32690 (regOne!32691 (regOne!32690 r!7292))) (reg!16418 (regOne!32691 (regOne!32690 r!7292))))))))))

(declare-fun e!3745572 () (InoxSet Context!10946))

(declare-fun e!3745575 () (InoxSet Context!10946))

(assert (=> b!6146541 (= e!3745572 e!3745575)))

(declare-fun b!6146542 () Bool)

(declare-fun call!510868 () (InoxSet Context!10946))

(assert (=> b!6146542 (= e!3745575 call!510868)))

(declare-fun b!6146543 () Bool)

(declare-fun e!3745571 () (InoxSet Context!10946))

(declare-fun call!510870 () (InoxSet Context!10946))

(declare-fun call!510869 () (InoxSet Context!10946))

(assert (=> b!6146543 (= e!3745571 ((_ map or) call!510870 call!510869))))

(declare-fun b!6146544 () Bool)

(declare-fun e!3745573 () (InoxSet Context!10946))

(declare-fun call!510867 () (InoxSet Context!10946))

(assert (=> b!6146544 (= e!3745573 ((_ map or) call!510869 call!510867))))

(declare-fun e!3745576 () Bool)

(declare-fun b!6146545 () Bool)

(assert (=> b!6146545 (= e!3745576 (nullable!6082 (regOne!32690 (ite c!1105781 (regOne!32691 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105780 (regTwo!32690 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105782 (regOne!32690 (regOne!32691 (regOne!32690 r!7292))) (reg!16418 (regOne!32691 (regOne!32690 r!7292)))))))))))

(declare-fun c!1105983 () Bool)

(declare-fun c!1105981 () Bool)

(declare-fun bm!510860 () Bool)

(declare-fun call!510866 () List!64566)

(declare-fun c!1105982 () Bool)

(assert (=> bm!510860 (= call!510870 (derivationStepZipperDown!1337 (ite c!1105982 (regOne!32691 (ite c!1105781 (regOne!32691 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105780 (regTwo!32690 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105782 (regOne!32690 (regOne!32691 (regOne!32690 r!7292))) (reg!16418 (regOne!32691 (regOne!32690 r!7292))))))) (ite c!1105981 (regTwo!32690 (ite c!1105781 (regOne!32691 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105780 (regTwo!32690 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105782 (regOne!32690 (regOne!32691 (regOne!32690 r!7292))) (reg!16418 (regOne!32691 (regOne!32690 r!7292))))))) (ite c!1105983 (regOne!32690 (ite c!1105781 (regOne!32691 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105780 (regTwo!32690 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105782 (regOne!32690 (regOne!32691 (regOne!32690 r!7292))) (reg!16418 (regOne!32691 (regOne!32690 r!7292))))))) (reg!16418 (ite c!1105781 (regOne!32691 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105780 (regTwo!32690 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105782 (regOne!32690 (regOne!32691 (regOne!32690 r!7292))) (reg!16418 (regOne!32691 (regOne!32690 r!7292)))))))))) (ite (or c!1105982 c!1105981) (ite (or c!1105781 c!1105780) lt!2333656 (Context!10947 call!510717)) (Context!10947 call!510866)) (h!70891 s!2326)))))

(declare-fun bm!510861 () Bool)

(assert (=> bm!510861 (= call!510867 call!510870)))

(declare-fun b!6146546 () Bool)

(assert (=> b!6146546 (= e!3745572 call!510868)))

(declare-fun b!6146547 () Bool)

(declare-fun e!3745574 () (InoxSet Context!10946))

(assert (=> b!6146547 (= e!3745574 (store ((as const (Array Context!10946 Bool)) false) (ite (or c!1105781 c!1105780) lt!2333656 (Context!10947 call!510717)) true))))

(declare-fun b!6146549 () Bool)

(assert (=> b!6146549 (= e!3745574 e!3745571)))

(assert (=> b!6146549 (= c!1105982 ((_ is Union!16089) (ite c!1105781 (regOne!32691 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105780 (regTwo!32690 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105782 (regOne!32690 (regOne!32691 (regOne!32690 r!7292))) (reg!16418 (regOne!32691 (regOne!32690 r!7292))))))))))

(declare-fun call!510865 () List!64566)

(declare-fun bm!510862 () Bool)

(assert (=> bm!510862 (= call!510865 ($colon$colon!1966 (exprs!5973 (ite (or c!1105781 c!1105780) lt!2333656 (Context!10947 call!510717))) (ite (or c!1105981 c!1105983) (regTwo!32690 (ite c!1105781 (regOne!32691 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105780 (regTwo!32690 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105782 (regOne!32690 (regOne!32691 (regOne!32690 r!7292))) (reg!16418 (regOne!32691 (regOne!32690 r!7292))))))) (ite c!1105781 (regOne!32691 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105780 (regTwo!32690 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105782 (regOne!32690 (regOne!32691 (regOne!32690 r!7292))) (reg!16418 (regOne!32691 (regOne!32690 r!7292)))))))))))

(declare-fun bm!510863 () Bool)

(assert (=> bm!510863 (= call!510868 call!510867)))

(declare-fun bm!510864 () Bool)

(assert (=> bm!510864 (= call!510866 call!510865)))

(declare-fun bm!510865 () Bool)

(assert (=> bm!510865 (= call!510869 (derivationStepZipperDown!1337 (ite c!1105982 (regTwo!32691 (ite c!1105781 (regOne!32691 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105780 (regTwo!32690 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105782 (regOne!32690 (regOne!32691 (regOne!32690 r!7292))) (reg!16418 (regOne!32691 (regOne!32690 r!7292))))))) (regOne!32690 (ite c!1105781 (regOne!32691 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105780 (regTwo!32690 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105782 (regOne!32690 (regOne!32691 (regOne!32690 r!7292))) (reg!16418 (regOne!32691 (regOne!32690 r!7292)))))))) (ite c!1105982 (ite (or c!1105781 c!1105780) lt!2333656 (Context!10947 call!510717)) (Context!10947 call!510865)) (h!70891 s!2326)))))

(declare-fun b!6146550 () Bool)

(assert (=> b!6146550 (= e!3745573 e!3745572)))

(assert (=> b!6146550 (= c!1105983 ((_ is Concat!24934) (ite c!1105781 (regOne!32691 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105780 (regTwo!32690 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105782 (regOne!32690 (regOne!32691 (regOne!32690 r!7292))) (reg!16418 (regOne!32691 (regOne!32690 r!7292))))))))))

(declare-fun b!6146551 () Bool)

(assert (=> b!6146551 (= c!1105981 e!3745576)))

(declare-fun res!2546346 () Bool)

(assert (=> b!6146551 (=> (not res!2546346) (not e!3745576))))

(assert (=> b!6146551 (= res!2546346 ((_ is Concat!24934) (ite c!1105781 (regOne!32691 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105780 (regTwo!32690 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105782 (regOne!32690 (regOne!32691 (regOne!32690 r!7292))) (reg!16418 (regOne!32691 (regOne!32690 r!7292))))))))))

(assert (=> b!6146551 (= e!3745571 e!3745573)))

(declare-fun b!6146548 () Bool)

(assert (=> b!6146548 (= e!3745575 ((as const (Array Context!10946 Bool)) false))))

(declare-fun d!1925814 () Bool)

(declare-fun c!1105984 () Bool)

(assert (=> d!1925814 (= c!1105984 (and ((_ is ElementMatch!16089) (ite c!1105781 (regOne!32691 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105780 (regTwo!32690 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105782 (regOne!32690 (regOne!32691 (regOne!32690 r!7292))) (reg!16418 (regOne!32691 (regOne!32690 r!7292))))))) (= (c!1105579 (ite c!1105781 (regOne!32691 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105780 (regTwo!32690 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105782 (regOne!32690 (regOne!32691 (regOne!32690 r!7292))) (reg!16418 (regOne!32691 (regOne!32690 r!7292))))))) (h!70891 s!2326))))))

(assert (=> d!1925814 (= (derivationStepZipperDown!1337 (ite c!1105781 (regOne!32691 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105780 (regTwo!32690 (regOne!32691 (regOne!32690 r!7292))) (ite c!1105782 (regOne!32690 (regOne!32691 (regOne!32690 r!7292))) (reg!16418 (regOne!32691 (regOne!32690 r!7292)))))) (ite (or c!1105781 c!1105780) lt!2333656 (Context!10947 call!510717)) (h!70891 s!2326)) e!3745574)))

(assert (= (and d!1925814 c!1105984) b!6146547))

(assert (= (and d!1925814 (not c!1105984)) b!6146549))

(assert (= (and b!6146549 c!1105982) b!6146543))

(assert (= (and b!6146549 (not c!1105982)) b!6146551))

(assert (= (and b!6146551 res!2546346) b!6146545))

(assert (= (and b!6146551 c!1105981) b!6146544))

(assert (= (and b!6146551 (not c!1105981)) b!6146550))

(assert (= (and b!6146550 c!1105983) b!6146546))

(assert (= (and b!6146550 (not c!1105983)) b!6146541))

(assert (= (and b!6146541 c!1105985) b!6146542))

(assert (= (and b!6146541 (not c!1105985)) b!6146548))

(assert (= (or b!6146546 b!6146542) bm!510864))

(assert (= (or b!6146546 b!6146542) bm!510863))

(assert (= (or b!6146544 bm!510864) bm!510862))

(assert (= (or b!6146544 bm!510863) bm!510861))

(assert (= (or b!6146543 b!6146544) bm!510865))

(assert (= (or b!6146543 bm!510861) bm!510860))

(declare-fun m!6986934 () Bool)

(assert (=> b!6146547 m!6986934))

(declare-fun m!6986936 () Bool)

(assert (=> bm!510860 m!6986936))

(declare-fun m!6986938 () Bool)

(assert (=> bm!510865 m!6986938))

(declare-fun m!6986940 () Bool)

(assert (=> bm!510862 m!6986940))

(declare-fun m!6986942 () Bool)

(assert (=> b!6146545 m!6986942))

(assert (=> bm!510711 d!1925814))

(declare-fun d!1925816 () Bool)

(assert (=> d!1925816 (= (nullable!6082 (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343))))) (nullableFct!2046 (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343))))))))

(declare-fun bs!1523898 () Bool)

(assert (= bs!1523898 d!1925816))

(declare-fun m!6986944 () Bool)

(assert (=> bs!1523898 m!6986944))

(assert (=> b!6145553 d!1925816))

(assert (=> bs!1523687 d!1925410))

(declare-fun bs!1523899 () Bool)

(declare-fun d!1925818 () Bool)

(assert (= bs!1523899 (and d!1925818 d!1925744)))

(declare-fun lambda!335134 () Int)

(assert (=> bs!1523899 (= lambda!335134 lambda!335121)))

(assert (=> d!1925818 (= (nullableZipper!1870 lt!2333661) (exists!2434 lt!2333661 lambda!335134))))

(declare-fun bs!1523900 () Bool)

(assert (= bs!1523900 d!1925818))

(declare-fun m!6986946 () Bool)

(assert (=> bs!1523900 m!6986946))

(assert (=> b!6145613 d!1925818))

(assert (=> d!1925466 d!1925468))

(assert (=> d!1925466 d!1925444))

(declare-fun d!1925820 () Bool)

(declare-fun e!3745579 () Bool)

(assert (=> d!1925820 (= (matchZipper!2101 ((_ map or) lt!2333661 lt!2333650) (t!378050 s!2326)) e!3745579)))

(declare-fun res!2546349 () Bool)

(assert (=> d!1925820 (=> res!2546349 e!3745579)))

(assert (=> d!1925820 (= res!2546349 (matchZipper!2101 lt!2333661 (t!378050 s!2326)))))

(assert (=> d!1925820 true))

(declare-fun _$48!1669 () Unit!157513)

(assert (=> d!1925820 (= (choose!45674 lt!2333661 lt!2333650 (t!378050 s!2326)) _$48!1669)))

(declare-fun b!6146554 () Bool)

(assert (=> b!6146554 (= e!3745579 (matchZipper!2101 lt!2333650 (t!378050 s!2326)))))

(assert (= (and d!1925820 (not res!2546349)) b!6146554))

(assert (=> d!1925820 m!6985736))

(assert (=> d!1925820 m!6985682))

(assert (=> b!6146554 m!6985660))

(assert (=> d!1925466 d!1925820))

(assert (=> b!6145518 d!1925404))

(assert (=> d!1925456 d!1925734))

(declare-fun b!6146555 () Bool)

(declare-fun c!1105990 () Bool)

(assert (=> b!6146555 (= c!1105990 ((_ is Star!16089) (h!70890 (exprs!5973 lt!2333656))))))

(declare-fun e!3745581 () (InoxSet Context!10946))

(declare-fun e!3745584 () (InoxSet Context!10946))

(assert (=> b!6146555 (= e!3745581 e!3745584)))

(declare-fun b!6146556 () Bool)

(declare-fun call!510874 () (InoxSet Context!10946))

(assert (=> b!6146556 (= e!3745584 call!510874)))

(declare-fun b!6146557 () Bool)

(declare-fun e!3745580 () (InoxSet Context!10946))

(declare-fun call!510876 () (InoxSet Context!10946))

(declare-fun call!510875 () (InoxSet Context!10946))

(assert (=> b!6146557 (= e!3745580 ((_ map or) call!510876 call!510875))))

(declare-fun b!6146558 () Bool)

(declare-fun e!3745582 () (InoxSet Context!10946))

(declare-fun call!510873 () (InoxSet Context!10946))

(assert (=> b!6146558 (= e!3745582 ((_ map or) call!510875 call!510873))))

(declare-fun b!6146559 () Bool)

(declare-fun e!3745585 () Bool)

(assert (=> b!6146559 (= e!3745585 (nullable!6082 (regOne!32690 (h!70890 (exprs!5973 lt!2333656)))))))

(declare-fun call!510872 () List!64566)

(declare-fun c!1105987 () Bool)

(declare-fun c!1105988 () Bool)

(declare-fun c!1105986 () Bool)

(declare-fun bm!510866 () Bool)

(assert (=> bm!510866 (= call!510876 (derivationStepZipperDown!1337 (ite c!1105987 (regOne!32691 (h!70890 (exprs!5973 lt!2333656))) (ite c!1105986 (regTwo!32690 (h!70890 (exprs!5973 lt!2333656))) (ite c!1105988 (regOne!32690 (h!70890 (exprs!5973 lt!2333656))) (reg!16418 (h!70890 (exprs!5973 lt!2333656)))))) (ite (or c!1105987 c!1105986) (Context!10947 (t!378049 (exprs!5973 lt!2333656))) (Context!10947 call!510872)) (h!70891 s!2326)))))

(declare-fun bm!510867 () Bool)

(assert (=> bm!510867 (= call!510873 call!510876)))

(declare-fun b!6146560 () Bool)

(assert (=> b!6146560 (= e!3745581 call!510874)))

(declare-fun b!6146561 () Bool)

(declare-fun e!3745583 () (InoxSet Context!10946))

(assert (=> b!6146561 (= e!3745583 (store ((as const (Array Context!10946 Bool)) false) (Context!10947 (t!378049 (exprs!5973 lt!2333656))) true))))

(declare-fun b!6146563 () Bool)

(assert (=> b!6146563 (= e!3745583 e!3745580)))

(assert (=> b!6146563 (= c!1105987 ((_ is Union!16089) (h!70890 (exprs!5973 lt!2333656))))))

(declare-fun bm!510868 () Bool)

(declare-fun call!510871 () List!64566)

(assert (=> bm!510868 (= call!510871 ($colon$colon!1966 (exprs!5973 (Context!10947 (t!378049 (exprs!5973 lt!2333656)))) (ite (or c!1105986 c!1105988) (regTwo!32690 (h!70890 (exprs!5973 lt!2333656))) (h!70890 (exprs!5973 lt!2333656)))))))

(declare-fun bm!510869 () Bool)

(assert (=> bm!510869 (= call!510874 call!510873)))

(declare-fun bm!510870 () Bool)

(assert (=> bm!510870 (= call!510872 call!510871)))

(declare-fun bm!510871 () Bool)

(assert (=> bm!510871 (= call!510875 (derivationStepZipperDown!1337 (ite c!1105987 (regTwo!32691 (h!70890 (exprs!5973 lt!2333656))) (regOne!32690 (h!70890 (exprs!5973 lt!2333656)))) (ite c!1105987 (Context!10947 (t!378049 (exprs!5973 lt!2333656))) (Context!10947 call!510871)) (h!70891 s!2326)))))

(declare-fun b!6146564 () Bool)

(assert (=> b!6146564 (= e!3745582 e!3745581)))

(assert (=> b!6146564 (= c!1105988 ((_ is Concat!24934) (h!70890 (exprs!5973 lt!2333656))))))

(declare-fun b!6146565 () Bool)

(assert (=> b!6146565 (= c!1105986 e!3745585)))

(declare-fun res!2546350 () Bool)

(assert (=> b!6146565 (=> (not res!2546350) (not e!3745585))))

(assert (=> b!6146565 (= res!2546350 ((_ is Concat!24934) (h!70890 (exprs!5973 lt!2333656))))))

(assert (=> b!6146565 (= e!3745580 e!3745582)))

(declare-fun b!6146562 () Bool)

(assert (=> b!6146562 (= e!3745584 ((as const (Array Context!10946 Bool)) false))))

(declare-fun d!1925822 () Bool)

(declare-fun c!1105989 () Bool)

(assert (=> d!1925822 (= c!1105989 (and ((_ is ElementMatch!16089) (h!70890 (exprs!5973 lt!2333656))) (= (c!1105579 (h!70890 (exprs!5973 lt!2333656))) (h!70891 s!2326))))))

(assert (=> d!1925822 (= (derivationStepZipperDown!1337 (h!70890 (exprs!5973 lt!2333656)) (Context!10947 (t!378049 (exprs!5973 lt!2333656))) (h!70891 s!2326)) e!3745583)))

(assert (= (and d!1925822 c!1105989) b!6146561))

(assert (= (and d!1925822 (not c!1105989)) b!6146563))

(assert (= (and b!6146563 c!1105987) b!6146557))

(assert (= (and b!6146563 (not c!1105987)) b!6146565))

(assert (= (and b!6146565 res!2546350) b!6146559))

(assert (= (and b!6146565 c!1105986) b!6146558))

(assert (= (and b!6146565 (not c!1105986)) b!6146564))

(assert (= (and b!6146564 c!1105988) b!6146560))

(assert (= (and b!6146564 (not c!1105988)) b!6146555))

(assert (= (and b!6146555 c!1105990) b!6146556))

(assert (= (and b!6146555 (not c!1105990)) b!6146562))

(assert (= (or b!6146560 b!6146556) bm!510870))

(assert (= (or b!6146560 b!6146556) bm!510869))

(assert (= (or b!6146558 bm!510870) bm!510868))

(assert (= (or b!6146558 bm!510869) bm!510867))

(assert (= (or b!6146557 b!6146558) bm!510871))

(assert (= (or b!6146557 bm!510867) bm!510866))

(declare-fun m!6986948 () Bool)

(assert (=> b!6146561 m!6986948))

(declare-fun m!6986950 () Bool)

(assert (=> bm!510866 m!6986950))

(declare-fun m!6986952 () Bool)

(assert (=> bm!510871 m!6986952))

(declare-fun m!6986954 () Bool)

(assert (=> bm!510868 m!6986954))

(declare-fun m!6986956 () Bool)

(assert (=> b!6146559 m!6986956))

(assert (=> bm!510675 d!1925822))

(declare-fun d!1925824 () Bool)

(assert (=> d!1925824 (= (isEmpty!36397 (exprs!5973 (h!70892 zl!343))) ((_ is Nil!64442) (exprs!5973 (h!70892 zl!343))))))

(assert (=> b!6145466 d!1925824))

(declare-fun d!1925826 () Bool)

(assert (=> d!1925826 (= (nullable!6082 (regOne!32690 (regTwo!32691 (regOne!32690 r!7292)))) (nullableFct!2046 (regOne!32690 (regTwo!32691 (regOne!32690 r!7292)))))))

(declare-fun bs!1523901 () Bool)

(assert (= bs!1523901 d!1925826))

(declare-fun m!6986958 () Bool)

(assert (=> bs!1523901 m!6986958))

(assert (=> b!6145710 d!1925826))

(declare-fun d!1925828 () Bool)

(assert (=> d!1925828 true))

(declare-fun setRes!41598 () Bool)

(assert (=> d!1925828 setRes!41598))

(declare-fun condSetEmpty!41598 () Bool)

(declare-fun res!2546353 () (InoxSet Context!10946))

(assert (=> d!1925828 (= condSetEmpty!41598 (= res!2546353 ((as const (Array Context!10946 Bool)) false)))))

(assert (=> d!1925828 (= (choose!45678 lt!2333670 lambda!335021) res!2546353)))

(declare-fun setIsEmpty!41598 () Bool)

(assert (=> setIsEmpty!41598 setRes!41598))

(declare-fun tp!1717022 () Bool)

(declare-fun setNonEmpty!41598 () Bool)

(declare-fun e!3745588 () Bool)

(declare-fun setElem!41598 () Context!10946)

(assert (=> setNonEmpty!41598 (= setRes!41598 (and tp!1717022 (inv!83469 setElem!41598) e!3745588))))

(declare-fun setRest!41598 () (InoxSet Context!10946))

(assert (=> setNonEmpty!41598 (= res!2546353 ((_ map or) (store ((as const (Array Context!10946 Bool)) false) setElem!41598 true) setRest!41598))))

(declare-fun b!6146568 () Bool)

(declare-fun tp!1717021 () Bool)

(assert (=> b!6146568 (= e!3745588 tp!1717021)))

(assert (= (and d!1925828 condSetEmpty!41598) setIsEmpty!41598))

(assert (= (and d!1925828 (not condSetEmpty!41598)) setNonEmpty!41598))

(assert (= setNonEmpty!41598 b!6146568))

(declare-fun m!6986960 () Bool)

(assert (=> setNonEmpty!41598 m!6986960))

(assert (=> d!1925438 d!1925828))

(assert (=> d!1925432 d!1925438))

(declare-fun d!1925830 () Bool)

(assert (=> d!1925830 (= (flatMap!1594 lt!2333670 lambda!335021) (dynLambda!25398 lambda!335021 lt!2333672))))

(assert (=> d!1925830 true))

(declare-fun _$13!3050 () Unit!157513)

(assert (=> d!1925830 (= (choose!45677 lt!2333670 lt!2333672 lambda!335021) _$13!3050)))

(declare-fun b_lambda!233943 () Bool)

(assert (=> (not b_lambda!233943) (not d!1925830)))

(declare-fun bs!1523902 () Bool)

(assert (= bs!1523902 d!1925830))

(assert (=> bs!1523902 m!6985704))

(assert (=> bs!1523902 m!6986144))

(assert (=> d!1925432 d!1925830))

(assert (=> d!1925406 d!1925408))

(declare-fun d!1925832 () Bool)

(assert (=> d!1925832 (= (flatMap!1594 z!1189 lambda!335021) (dynLambda!25398 lambda!335021 (h!70892 zl!343)))))

(assert (=> d!1925832 true))

(declare-fun _$13!3051 () Unit!157513)

(assert (=> d!1925832 (= (choose!45677 z!1189 (h!70892 zl!343) lambda!335021) _$13!3051)))

(declare-fun b_lambda!233945 () Bool)

(assert (=> (not b_lambda!233945) (not d!1925832)))

(declare-fun bs!1523903 () Bool)

(assert (= bs!1523903 d!1925832))

(assert (=> bs!1523903 m!6985688))

(assert (=> bs!1523903 m!6986064))

(assert (=> d!1925406 d!1925832))

(declare-fun d!1925834 () Bool)

(declare-fun res!2546358 () Bool)

(declare-fun e!3745593 () Bool)

(assert (=> d!1925834 (=> res!2546358 e!3745593)))

(assert (=> d!1925834 (= res!2546358 ((_ is Nil!64444) lt!2333761))))

(assert (=> d!1925834 (= (noDuplicate!1936 lt!2333761) e!3745593)))

(declare-fun b!6146573 () Bool)

(declare-fun e!3745594 () Bool)

(assert (=> b!6146573 (= e!3745593 e!3745594)))

(declare-fun res!2546359 () Bool)

(assert (=> b!6146573 (=> (not res!2546359) (not e!3745594))))

(declare-fun contains!20048 (List!64568 Context!10946) Bool)

(assert (=> b!6146573 (= res!2546359 (not (contains!20048 (t!378051 lt!2333761) (h!70892 lt!2333761))))))

(declare-fun b!6146574 () Bool)

(assert (=> b!6146574 (= e!3745594 (noDuplicate!1936 (t!378051 lt!2333761)))))

(assert (= (and d!1925834 (not res!2546358)) b!6146573))

(assert (= (and b!6146573 res!2546359) b!6146574))

(declare-fun m!6986962 () Bool)

(assert (=> b!6146573 m!6986962))

(declare-fun m!6986964 () Bool)

(assert (=> b!6146574 m!6986964))

(assert (=> d!1925460 d!1925834))

(declare-fun d!1925836 () Bool)

(declare-fun e!3745602 () Bool)

(assert (=> d!1925836 e!3745602))

(declare-fun res!2546365 () Bool)

(assert (=> d!1925836 (=> (not res!2546365) (not e!3745602))))

(declare-fun res!2546364 () List!64568)

(assert (=> d!1925836 (= res!2546365 (noDuplicate!1936 res!2546364))))

(declare-fun e!3745601 () Bool)

(assert (=> d!1925836 e!3745601))

(assert (=> d!1925836 (= (choose!45683 z!1189) res!2546364)))

(declare-fun b!6146582 () Bool)

(declare-fun e!3745603 () Bool)

(declare-fun tp!1717028 () Bool)

(assert (=> b!6146582 (= e!3745603 tp!1717028)))

(declare-fun tp!1717027 () Bool)

(declare-fun b!6146581 () Bool)

(assert (=> b!6146581 (= e!3745601 (and (inv!83469 (h!70892 res!2546364)) e!3745603 tp!1717027))))

(declare-fun b!6146583 () Bool)

(assert (=> b!6146583 (= e!3745602 (= (content!12000 res!2546364) z!1189))))

(assert (= b!6146581 b!6146582))

(assert (= (and d!1925836 ((_ is Cons!64444) res!2546364)) b!6146581))

(assert (= (and d!1925836 res!2546365) b!6146583))

(declare-fun m!6986966 () Bool)

(assert (=> d!1925836 m!6986966))

(declare-fun m!6986968 () Bool)

(assert (=> b!6146581 m!6986968))

(declare-fun m!6986970 () Bool)

(assert (=> b!6146583 m!6986970))

(assert (=> d!1925460 d!1925836))

(declare-fun d!1925838 () Bool)

(assert (=> d!1925838 (= (isEmpty!36397 (tail!11785 (exprs!5973 (h!70892 zl!343)))) ((_ is Nil!64442) (tail!11785 (exprs!5973 (h!70892 zl!343)))))))

(assert (=> b!6145462 d!1925838))

(declare-fun d!1925840 () Bool)

(assert (=> d!1925840 (= (tail!11785 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343))))))

(assert (=> b!6145462 d!1925840))

(declare-fun bs!1523904 () Bool)

(declare-fun d!1925842 () Bool)

(assert (= bs!1523904 (and d!1925842 d!1925402)))

(declare-fun lambda!335135 () Int)

(assert (=> bs!1523904 (= lambda!335135 lambda!335062)))

(declare-fun bs!1523905 () Bool)

(assert (= bs!1523905 (and d!1925842 d!1925396)))

(assert (=> bs!1523905 (= lambda!335135 lambda!335053)))

(declare-fun bs!1523906 () Bool)

(assert (= bs!1523906 (and d!1925842 d!1925400)))

(assert (=> bs!1523906 (= lambda!335135 lambda!335059)))

(declare-fun bs!1523907 () Bool)

(assert (= bs!1523907 (and d!1925842 d!1925810)))

(assert (=> bs!1523907 (= lambda!335135 lambda!335133)))

(declare-fun bs!1523908 () Bool)

(assert (= bs!1523908 (and d!1925842 d!1925474)))

(assert (=> bs!1523908 (= lambda!335135 lambda!335079)))

(declare-fun bs!1523909 () Bool)

(assert (= bs!1523909 (and d!1925842 d!1925398)))

(assert (=> bs!1523909 (= lambda!335135 lambda!335056)))

(declare-fun bs!1523910 () Bool)

(assert (= bs!1523910 (and d!1925842 d!1925434)))

(assert (=> bs!1523910 (= lambda!335135 lambda!335072)))

(assert (=> d!1925842 (= (inv!83469 setElem!41590) (forall!15210 (exprs!5973 setElem!41590) lambda!335135))))

(declare-fun bs!1523911 () Bool)

(assert (= bs!1523911 d!1925842))

(declare-fun m!6986972 () Bool)

(assert (=> bs!1523911 m!6986972))

(assert (=> setNonEmpty!41590 d!1925842))

(assert (=> b!6145615 d!1925418))

(declare-fun bs!1523912 () Bool)

(declare-fun b!6146591 () Bool)

(assert (= bs!1523912 (and b!6146591 b!6145648)))

(declare-fun lambda!335136 () Int)

(assert (=> bs!1523912 (not (= lambda!335136 lambda!335078))))

(declare-fun bs!1523913 () Bool)

(assert (= bs!1523913 (and b!6146591 d!1925738)))

(assert (=> bs!1523913 (not (= lambda!335136 lambda!335118))))

(declare-fun bs!1523914 () Bool)

(assert (= bs!1523914 (and b!6146591 d!1925766)))

(assert (=> bs!1523914 (not (= lambda!335136 lambda!335127))))

(assert (=> bs!1523914 (not (= lambda!335136 lambda!335126))))

(declare-fun bs!1523915 () Bool)

(assert (= bs!1523915 (and b!6146591 d!1925426)))

(assert (=> bs!1523915 (not (= lambda!335136 lambda!335070))))

(declare-fun bs!1523916 () Bool)

(assert (= bs!1523916 (and b!6146591 d!1925424)))

(assert (=> bs!1523916 (not (= lambda!335136 lambda!335065))))

(declare-fun bs!1523917 () Bool)

(assert (= bs!1523917 (and b!6146591 b!6145019)))

(assert (=> bs!1523917 (not (= lambda!335136 lambda!335019))))

(declare-fun bs!1523918 () Bool)

(assert (= bs!1523918 (and b!6146591 b!6145655)))

(assert (=> bs!1523918 (= (and (= (reg!16418 (regOne!32691 r!7292)) (reg!16418 r!7292)) (= (regOne!32691 r!7292) r!7292)) (= lambda!335136 lambda!335077))))

(assert (=> bs!1523915 (not (= lambda!335136 lambda!335071))))

(assert (=> bs!1523917 (not (= lambda!335136 lambda!335020))))

(assert (=> b!6146591 true))

(assert (=> b!6146591 true))

(declare-fun bs!1523919 () Bool)

(declare-fun b!6146584 () Bool)

(assert (= bs!1523919 (and b!6146584 b!6145648)))

(declare-fun lambda!335137 () Int)

(assert (=> bs!1523919 (= (and (= (regOne!32690 (regOne!32691 r!7292)) (regOne!32690 r!7292)) (= (regTwo!32690 (regOne!32691 r!7292)) (regTwo!32690 r!7292))) (= lambda!335137 lambda!335078))))

(declare-fun bs!1523920 () Bool)

(assert (= bs!1523920 (and b!6146584 d!1925738)))

(assert (=> bs!1523920 (not (= lambda!335137 lambda!335118))))

(declare-fun bs!1523921 () Bool)

(assert (= bs!1523921 (and b!6146584 d!1925766)))

(assert (=> bs!1523921 (= (and (= (regOne!32690 (regOne!32691 r!7292)) (regOne!32690 r!7292)) (= (regTwo!32690 (regOne!32691 r!7292)) (regTwo!32690 r!7292))) (= lambda!335137 lambda!335127))))

(declare-fun bs!1523922 () Bool)

(assert (= bs!1523922 (and b!6146584 b!6146591)))

(assert (=> bs!1523922 (not (= lambda!335137 lambda!335136))))

(assert (=> bs!1523921 (not (= lambda!335137 lambda!335126))))

(declare-fun bs!1523923 () Bool)

(assert (= bs!1523923 (and b!6146584 d!1925426)))

(assert (=> bs!1523923 (not (= lambda!335137 lambda!335070))))

(declare-fun bs!1523924 () Bool)

(assert (= bs!1523924 (and b!6146584 d!1925424)))

(assert (=> bs!1523924 (not (= lambda!335137 lambda!335065))))

(declare-fun bs!1523925 () Bool)

(assert (= bs!1523925 (and b!6146584 b!6145019)))

(assert (=> bs!1523925 (not (= lambda!335137 lambda!335019))))

(declare-fun bs!1523926 () Bool)

(assert (= bs!1523926 (and b!6146584 b!6145655)))

(assert (=> bs!1523926 (not (= lambda!335137 lambda!335077))))

(assert (=> bs!1523923 (= (and (= (regOne!32690 (regOne!32691 r!7292)) (regOne!32690 r!7292)) (= (regTwo!32690 (regOne!32691 r!7292)) (regTwo!32690 r!7292))) (= lambda!335137 lambda!335071))))

(assert (=> bs!1523925 (= (and (= (regOne!32690 (regOne!32691 r!7292)) (regOne!32690 r!7292)) (= (regTwo!32690 (regOne!32691 r!7292)) (regTwo!32690 r!7292))) (= lambda!335137 lambda!335020))))

(assert (=> b!6146584 true))

(assert (=> b!6146584 true))

(declare-fun bm!510872 () Bool)

(declare-fun call!510878 () Bool)

(assert (=> bm!510872 (= call!510878 (isEmpty!36399 s!2326))))

(declare-fun e!3745608 () Bool)

(declare-fun call!510877 () Bool)

(assert (=> b!6146584 (= e!3745608 call!510877)))

(declare-fun b!6146585 () Bool)

(declare-fun c!1105994 () Bool)

(assert (=> b!6146585 (= c!1105994 ((_ is ElementMatch!16089) (regOne!32691 r!7292)))))

(declare-fun e!3745606 () Bool)

(declare-fun e!3745607 () Bool)

(assert (=> b!6146585 (= e!3745606 e!3745607)))

(declare-fun c!1105991 () Bool)

(declare-fun bm!510873 () Bool)

(assert (=> bm!510873 (= call!510877 (Exists!3159 (ite c!1105991 lambda!335136 lambda!335137)))))

(declare-fun b!6146586 () Bool)

(declare-fun e!3745604 () Bool)

(assert (=> b!6146586 (= e!3745604 e!3745608)))

(assert (=> b!6146586 (= c!1105991 ((_ is Star!16089) (regOne!32691 r!7292)))))

(declare-fun b!6146587 () Bool)

(declare-fun e!3745609 () Bool)

(assert (=> b!6146587 (= e!3745609 call!510878)))

(declare-fun d!1925844 () Bool)

(declare-fun c!1105992 () Bool)

(assert (=> d!1925844 (= c!1105992 ((_ is EmptyExpr!16089) (regOne!32691 r!7292)))))

(assert (=> d!1925844 (= (matchRSpec!3190 (regOne!32691 r!7292) s!2326) e!3745609)))

(declare-fun b!6146588 () Bool)

(assert (=> b!6146588 (= e!3745607 (= s!2326 (Cons!64443 (c!1105579 (regOne!32691 r!7292)) Nil!64443)))))

(declare-fun b!6146589 () Bool)

(assert (=> b!6146589 (= e!3745609 e!3745606)))

(declare-fun res!2546366 () Bool)

(assert (=> b!6146589 (= res!2546366 (not ((_ is EmptyLang!16089) (regOne!32691 r!7292))))))

(assert (=> b!6146589 (=> (not res!2546366) (not e!3745606))))

(declare-fun b!6146590 () Bool)

(declare-fun c!1105993 () Bool)

(assert (=> b!6146590 (= c!1105993 ((_ is Union!16089) (regOne!32691 r!7292)))))

(assert (=> b!6146590 (= e!3745607 e!3745604)))

(declare-fun e!3745605 () Bool)

(assert (=> b!6146591 (= e!3745605 call!510877)))

(declare-fun b!6146592 () Bool)

(declare-fun e!3745610 () Bool)

(assert (=> b!6146592 (= e!3745604 e!3745610)))

(declare-fun res!2546368 () Bool)

(assert (=> b!6146592 (= res!2546368 (matchRSpec!3190 (regOne!32691 (regOne!32691 r!7292)) s!2326))))

(assert (=> b!6146592 (=> res!2546368 e!3745610)))

(declare-fun b!6146593 () Bool)

(assert (=> b!6146593 (= e!3745610 (matchRSpec!3190 (regTwo!32691 (regOne!32691 r!7292)) s!2326))))

(declare-fun b!6146594 () Bool)

(declare-fun res!2546367 () Bool)

(assert (=> b!6146594 (=> res!2546367 e!3745605)))

(assert (=> b!6146594 (= res!2546367 call!510878)))

(assert (=> b!6146594 (= e!3745608 e!3745605)))

(assert (= (and d!1925844 c!1105992) b!6146587))

(assert (= (and d!1925844 (not c!1105992)) b!6146589))

(assert (= (and b!6146589 res!2546366) b!6146585))

(assert (= (and b!6146585 c!1105994) b!6146588))

(assert (= (and b!6146585 (not c!1105994)) b!6146590))

(assert (= (and b!6146590 c!1105993) b!6146592))

(assert (= (and b!6146590 (not c!1105993)) b!6146586))

(assert (= (and b!6146592 (not res!2546368)) b!6146593))

(assert (= (and b!6146586 c!1105991) b!6146594))

(assert (= (and b!6146586 (not c!1105991)) b!6146584))

(assert (= (and b!6146594 (not res!2546367)) b!6146591))

(assert (= (or b!6146591 b!6146584) bm!510873))

(assert (= (or b!6146587 b!6146594) bm!510872))

(assert (=> bm!510872 m!6986178))

(declare-fun m!6986974 () Bool)

(assert (=> bm!510873 m!6986974))

(declare-fun m!6986976 () Bool)

(assert (=> b!6146592 m!6986976))

(declare-fun m!6986978 () Bool)

(assert (=> b!6146593 m!6986978))

(assert (=> b!6145656 d!1925844))

(declare-fun bs!1523927 () Bool)

(declare-fun d!1925846 () Bool)

(assert (= bs!1523927 (and d!1925846 d!1925842)))

(declare-fun lambda!335138 () Int)

(assert (=> bs!1523927 (= lambda!335138 lambda!335135)))

(declare-fun bs!1523928 () Bool)

(assert (= bs!1523928 (and d!1925846 d!1925402)))

(assert (=> bs!1523928 (= lambda!335138 lambda!335062)))

(declare-fun bs!1523929 () Bool)

(assert (= bs!1523929 (and d!1925846 d!1925396)))

(assert (=> bs!1523929 (= lambda!335138 lambda!335053)))

(declare-fun bs!1523930 () Bool)

(assert (= bs!1523930 (and d!1925846 d!1925400)))

(assert (=> bs!1523930 (= lambda!335138 lambda!335059)))

(declare-fun bs!1523931 () Bool)

(assert (= bs!1523931 (and d!1925846 d!1925810)))

(assert (=> bs!1523931 (= lambda!335138 lambda!335133)))

(declare-fun bs!1523932 () Bool)

(assert (= bs!1523932 (and d!1925846 d!1925474)))

(assert (=> bs!1523932 (= lambda!335138 lambda!335079)))

(declare-fun bs!1523933 () Bool)

(assert (= bs!1523933 (and d!1925846 d!1925398)))

(assert (=> bs!1523933 (= lambda!335138 lambda!335056)))

(declare-fun bs!1523934 () Bool)

(assert (= bs!1523934 (and d!1925846 d!1925434)))

(assert (=> bs!1523934 (= lambda!335138 lambda!335072)))

(declare-fun b!6146595 () Bool)

(declare-fun e!3745612 () Regex!16089)

(declare-fun e!3745614 () Regex!16089)

(assert (=> b!6146595 (= e!3745612 e!3745614)))

(declare-fun c!1105998 () Bool)

(assert (=> b!6146595 (= c!1105998 ((_ is Cons!64442) (t!378049 (unfocusZipperList!1510 zl!343))))))

(declare-fun b!6146596 () Bool)

(declare-fun e!3745615 () Bool)

(declare-fun lt!2333795 () Regex!16089)

(assert (=> b!6146596 (= e!3745615 (isUnion!946 lt!2333795))))

(declare-fun b!6146597 () Bool)

(declare-fun e!3745616 () Bool)

(assert (=> b!6146597 (= e!3745616 (isEmpty!36397 (t!378049 (t!378049 (unfocusZipperList!1510 zl!343)))))))

(declare-fun b!6146598 () Bool)

(assert (=> b!6146598 (= e!3745614 (Union!16089 (h!70890 (t!378049 (unfocusZipperList!1510 zl!343))) (generalisedUnion!1933 (t!378049 (t!378049 (unfocusZipperList!1510 zl!343))))))))

(declare-fun b!6146599 () Bool)

(assert (=> b!6146599 (= e!3745612 (h!70890 (t!378049 (unfocusZipperList!1510 zl!343))))))

(declare-fun b!6146600 () Bool)

(assert (=> b!6146600 (= e!3745615 (= lt!2333795 (head!12700 (t!378049 (unfocusZipperList!1510 zl!343)))))))

(declare-fun e!3745611 () Bool)

(assert (=> d!1925846 e!3745611))

(declare-fun res!2546369 () Bool)

(assert (=> d!1925846 (=> (not res!2546369) (not e!3745611))))

(assert (=> d!1925846 (= res!2546369 (validRegex!7825 lt!2333795))))

(assert (=> d!1925846 (= lt!2333795 e!3745612)))

(declare-fun c!1105995 () Bool)

(assert (=> d!1925846 (= c!1105995 e!3745616)))

(declare-fun res!2546370 () Bool)

(assert (=> d!1925846 (=> (not res!2546370) (not e!3745616))))

(assert (=> d!1925846 (= res!2546370 ((_ is Cons!64442) (t!378049 (unfocusZipperList!1510 zl!343))))))

(assert (=> d!1925846 (forall!15210 (t!378049 (unfocusZipperList!1510 zl!343)) lambda!335138)))

(assert (=> d!1925846 (= (generalisedUnion!1933 (t!378049 (unfocusZipperList!1510 zl!343))) lt!2333795)))

(declare-fun b!6146601 () Bool)

(declare-fun e!3745613 () Bool)

(assert (=> b!6146601 (= e!3745613 (isEmptyLang!1516 lt!2333795))))

(declare-fun b!6146602 () Bool)

(assert (=> b!6146602 (= e!3745614 EmptyLang!16089)))

(declare-fun b!6146603 () Bool)

(assert (=> b!6146603 (= e!3745613 e!3745615)))

(declare-fun c!1105996 () Bool)

(assert (=> b!6146603 (= c!1105996 (isEmpty!36397 (tail!11785 (t!378049 (unfocusZipperList!1510 zl!343)))))))

(declare-fun b!6146604 () Bool)

(assert (=> b!6146604 (= e!3745611 e!3745613)))

(declare-fun c!1105997 () Bool)

(assert (=> b!6146604 (= c!1105997 (isEmpty!36397 (t!378049 (unfocusZipperList!1510 zl!343))))))

(assert (= (and d!1925846 res!2546370) b!6146597))

(assert (= (and d!1925846 c!1105995) b!6146599))

(assert (= (and d!1925846 (not c!1105995)) b!6146595))

(assert (= (and b!6146595 c!1105998) b!6146598))

(assert (= (and b!6146595 (not c!1105998)) b!6146602))

(assert (= (and d!1925846 res!2546369) b!6146604))

(assert (= (and b!6146604 c!1105997) b!6146601))

(assert (= (and b!6146604 (not c!1105997)) b!6146603))

(assert (= (and b!6146603 c!1105996) b!6146600))

(assert (= (and b!6146603 (not c!1105996)) b!6146596))

(declare-fun m!6986980 () Bool)

(assert (=> b!6146598 m!6986980))

(declare-fun m!6986982 () Bool)

(assert (=> d!1925846 m!6986982))

(declare-fun m!6986984 () Bool)

(assert (=> d!1925846 m!6986984))

(declare-fun m!6986986 () Bool)

(assert (=> b!6146603 m!6986986))

(assert (=> b!6146603 m!6986986))

(declare-fun m!6986988 () Bool)

(assert (=> b!6146603 m!6986988))

(declare-fun m!6986990 () Bool)

(assert (=> b!6146601 m!6986990))

(declare-fun m!6986992 () Bool)

(assert (=> b!6146600 m!6986992))

(assert (=> b!6146604 m!6986054))

(declare-fun m!6986994 () Bool)

(assert (=> b!6146597 m!6986994))

(declare-fun m!6986996 () Bool)

(assert (=> b!6146596 m!6986996))

(assert (=> b!6145494 d!1925846))

(declare-fun bs!1523935 () Bool)

(declare-fun d!1925848 () Bool)

(assert (= bs!1523935 (and d!1925848 d!1925744)))

(declare-fun lambda!335139 () Int)

(assert (=> bs!1523935 (= lambda!335139 lambda!335121)))

(declare-fun bs!1523936 () Bool)

(assert (= bs!1523936 (and d!1925848 d!1925818)))

(assert (=> bs!1523936 (= lambda!335139 lambda!335134)))

(assert (=> d!1925848 (= (nullableZipper!1870 lt!2333651) (exists!2434 lt!2333651 lambda!335139))))

(declare-fun bs!1523937 () Bool)

(assert (= bs!1523937 d!1925848))

(declare-fun m!6986998 () Bool)

(assert (=> bs!1523937 m!6986998))

(assert (=> b!6145437 d!1925848))

(declare-fun bs!1523938 () Bool)

(declare-fun d!1925850 () Bool)

(assert (= bs!1523938 (and d!1925850 d!1925744)))

(declare-fun lambda!335140 () Int)

(assert (=> bs!1523938 (= lambda!335140 lambda!335121)))

(declare-fun bs!1523939 () Bool)

(assert (= bs!1523939 (and d!1925850 d!1925818)))

(assert (=> bs!1523939 (= lambda!335140 lambda!335134)))

(declare-fun bs!1523940 () Bool)

(assert (= bs!1523940 (and d!1925850 d!1925848)))

(assert (=> bs!1523940 (= lambda!335140 lambda!335139)))

(assert (=> d!1925850 (= (nullableZipper!1870 lt!2333671) (exists!2434 lt!2333671 lambda!335140))))

(declare-fun bs!1523941 () Bool)

(assert (= bs!1523941 d!1925850))

(declare-fun m!6987000 () Bool)

(assert (=> bs!1523941 m!6987000))

(assert (=> b!6145611 d!1925850))

(assert (=> d!1925452 d!1925748))

(assert (=> d!1925452 d!1925472))

(declare-fun d!1925852 () Bool)

(assert (=> d!1925852 (= (isEmpty!36401 (findConcatSeparation!2394 (regOne!32690 r!7292) (regTwo!32690 r!7292) Nil!64443 s!2326 s!2326)) (not ((_ is Some!15979) (findConcatSeparation!2394 (regOne!32690 r!7292) (regTwo!32690 r!7292) Nil!64443 s!2326 s!2326))))))

(assert (=> d!1925430 d!1925852))

(declare-fun b!6146605 () Bool)

(declare-fun c!1106003 () Bool)

(assert (=> b!6146605 (= c!1106003 ((_ is Star!16089) (ite c!1105781 (regTwo!32691 (regOne!32691 (regOne!32690 r!7292))) (regOne!32690 (regOne!32691 (regOne!32690 r!7292))))))))

(declare-fun e!3745618 () (InoxSet Context!10946))

(declare-fun e!3745621 () (InoxSet Context!10946))

(assert (=> b!6146605 (= e!3745618 e!3745621)))

(declare-fun b!6146606 () Bool)

(declare-fun call!510882 () (InoxSet Context!10946))

(assert (=> b!6146606 (= e!3745621 call!510882)))

(declare-fun b!6146607 () Bool)

(declare-fun e!3745617 () (InoxSet Context!10946))

(declare-fun call!510884 () (InoxSet Context!10946))

(declare-fun call!510883 () (InoxSet Context!10946))

(assert (=> b!6146607 (= e!3745617 ((_ map or) call!510884 call!510883))))

(declare-fun b!6146608 () Bool)

(declare-fun e!3745619 () (InoxSet Context!10946))

(declare-fun call!510881 () (InoxSet Context!10946))

(assert (=> b!6146608 (= e!3745619 ((_ map or) call!510883 call!510881))))

(declare-fun b!6146609 () Bool)

(declare-fun e!3745622 () Bool)

(assert (=> b!6146609 (= e!3745622 (nullable!6082 (regOne!32690 (ite c!1105781 (regTwo!32691 (regOne!32691 (regOne!32690 r!7292))) (regOne!32690 (regOne!32691 (regOne!32690 r!7292)))))))))

(declare-fun c!1106000 () Bool)

(declare-fun call!510880 () List!64566)

(declare-fun c!1105999 () Bool)

(declare-fun c!1106001 () Bool)

(declare-fun bm!510874 () Bool)

(assert (=> bm!510874 (= call!510884 (derivationStepZipperDown!1337 (ite c!1106000 (regOne!32691 (ite c!1105781 (regTwo!32691 (regOne!32691 (regOne!32690 r!7292))) (regOne!32690 (regOne!32691 (regOne!32690 r!7292))))) (ite c!1105999 (regTwo!32690 (ite c!1105781 (regTwo!32691 (regOne!32691 (regOne!32690 r!7292))) (regOne!32690 (regOne!32691 (regOne!32690 r!7292))))) (ite c!1106001 (regOne!32690 (ite c!1105781 (regTwo!32691 (regOne!32691 (regOne!32690 r!7292))) (regOne!32690 (regOne!32691 (regOne!32690 r!7292))))) (reg!16418 (ite c!1105781 (regTwo!32691 (regOne!32691 (regOne!32690 r!7292))) (regOne!32690 (regOne!32691 (regOne!32690 r!7292)))))))) (ite (or c!1106000 c!1105999) (ite c!1105781 lt!2333656 (Context!10947 call!510716)) (Context!10947 call!510880)) (h!70891 s!2326)))))

(declare-fun bm!510875 () Bool)

(assert (=> bm!510875 (= call!510881 call!510884)))

(declare-fun b!6146610 () Bool)

(assert (=> b!6146610 (= e!3745618 call!510882)))

(declare-fun e!3745620 () (InoxSet Context!10946))

(declare-fun b!6146611 () Bool)

(assert (=> b!6146611 (= e!3745620 (store ((as const (Array Context!10946 Bool)) false) (ite c!1105781 lt!2333656 (Context!10947 call!510716)) true))))

(declare-fun b!6146613 () Bool)

(assert (=> b!6146613 (= e!3745620 e!3745617)))

(assert (=> b!6146613 (= c!1106000 ((_ is Union!16089) (ite c!1105781 (regTwo!32691 (regOne!32691 (regOne!32690 r!7292))) (regOne!32690 (regOne!32691 (regOne!32690 r!7292))))))))

(declare-fun call!510879 () List!64566)

(declare-fun bm!510876 () Bool)

(assert (=> bm!510876 (= call!510879 ($colon$colon!1966 (exprs!5973 (ite c!1105781 lt!2333656 (Context!10947 call!510716))) (ite (or c!1105999 c!1106001) (regTwo!32690 (ite c!1105781 (regTwo!32691 (regOne!32691 (regOne!32690 r!7292))) (regOne!32690 (regOne!32691 (regOne!32690 r!7292))))) (ite c!1105781 (regTwo!32691 (regOne!32691 (regOne!32690 r!7292))) (regOne!32690 (regOne!32691 (regOne!32690 r!7292)))))))))

(declare-fun bm!510877 () Bool)

(assert (=> bm!510877 (= call!510882 call!510881)))

(declare-fun bm!510878 () Bool)

(assert (=> bm!510878 (= call!510880 call!510879)))

(declare-fun bm!510879 () Bool)

(assert (=> bm!510879 (= call!510883 (derivationStepZipperDown!1337 (ite c!1106000 (regTwo!32691 (ite c!1105781 (regTwo!32691 (regOne!32691 (regOne!32690 r!7292))) (regOne!32690 (regOne!32691 (regOne!32690 r!7292))))) (regOne!32690 (ite c!1105781 (regTwo!32691 (regOne!32691 (regOne!32690 r!7292))) (regOne!32690 (regOne!32691 (regOne!32690 r!7292)))))) (ite c!1106000 (ite c!1105781 lt!2333656 (Context!10947 call!510716)) (Context!10947 call!510879)) (h!70891 s!2326)))))

(declare-fun b!6146614 () Bool)

(assert (=> b!6146614 (= e!3745619 e!3745618)))

(assert (=> b!6146614 (= c!1106001 ((_ is Concat!24934) (ite c!1105781 (regTwo!32691 (regOne!32691 (regOne!32690 r!7292))) (regOne!32690 (regOne!32691 (regOne!32690 r!7292))))))))

(declare-fun b!6146615 () Bool)

(assert (=> b!6146615 (= c!1105999 e!3745622)))

(declare-fun res!2546371 () Bool)

(assert (=> b!6146615 (=> (not res!2546371) (not e!3745622))))

(assert (=> b!6146615 (= res!2546371 ((_ is Concat!24934) (ite c!1105781 (regTwo!32691 (regOne!32691 (regOne!32690 r!7292))) (regOne!32690 (regOne!32691 (regOne!32690 r!7292))))))))

(assert (=> b!6146615 (= e!3745617 e!3745619)))

(declare-fun b!6146612 () Bool)

(assert (=> b!6146612 (= e!3745621 ((as const (Array Context!10946 Bool)) false))))

(declare-fun d!1925854 () Bool)

(declare-fun c!1106002 () Bool)

(assert (=> d!1925854 (= c!1106002 (and ((_ is ElementMatch!16089) (ite c!1105781 (regTwo!32691 (regOne!32691 (regOne!32690 r!7292))) (regOne!32690 (regOne!32691 (regOne!32690 r!7292))))) (= (c!1105579 (ite c!1105781 (regTwo!32691 (regOne!32691 (regOne!32690 r!7292))) (regOne!32690 (regOne!32691 (regOne!32690 r!7292))))) (h!70891 s!2326))))))

(assert (=> d!1925854 (= (derivationStepZipperDown!1337 (ite c!1105781 (regTwo!32691 (regOne!32691 (regOne!32690 r!7292))) (regOne!32690 (regOne!32691 (regOne!32690 r!7292)))) (ite c!1105781 lt!2333656 (Context!10947 call!510716)) (h!70891 s!2326)) e!3745620)))

(assert (= (and d!1925854 c!1106002) b!6146611))

(assert (= (and d!1925854 (not c!1106002)) b!6146613))

(assert (= (and b!6146613 c!1106000) b!6146607))

(assert (= (and b!6146613 (not c!1106000)) b!6146615))

(assert (= (and b!6146615 res!2546371) b!6146609))

(assert (= (and b!6146615 c!1105999) b!6146608))

(assert (= (and b!6146615 (not c!1105999)) b!6146614))

(assert (= (and b!6146614 c!1106001) b!6146610))

(assert (= (and b!6146614 (not c!1106001)) b!6146605))

(assert (= (and b!6146605 c!1106003) b!6146606))

(assert (= (and b!6146605 (not c!1106003)) b!6146612))

(assert (= (or b!6146610 b!6146606) bm!510878))

(assert (= (or b!6146610 b!6146606) bm!510877))

(assert (= (or b!6146608 bm!510878) bm!510876))

(assert (= (or b!6146608 bm!510877) bm!510875))

(assert (= (or b!6146607 b!6146608) bm!510879))

(assert (= (or b!6146607 bm!510875) bm!510874))

(declare-fun m!6987002 () Bool)

(assert (=> b!6146611 m!6987002))

(declare-fun m!6987004 () Bool)

(assert (=> bm!510874 m!6987004))

(declare-fun m!6987006 () Bool)

(assert (=> bm!510879 m!6987006))

(declare-fun m!6987008 () Bool)

(assert (=> bm!510876 m!6987008))

(declare-fun m!6987010 () Bool)

(assert (=> b!6146609 m!6987010))

(assert (=> bm!510716 d!1925854))

(declare-fun b!6146630 () Bool)

(declare-fun e!3745636 () Bool)

(declare-fun e!3745635 () Bool)

(assert (=> b!6146630 (= e!3745636 e!3745635)))

(declare-fun res!2546384 () Bool)

(declare-fun call!510890 () Bool)

(assert (=> b!6146630 (= res!2546384 call!510890)))

(assert (=> b!6146630 (=> (not res!2546384) (not e!3745635))))

(declare-fun d!1925856 () Bool)

(declare-fun res!2546385 () Bool)

(declare-fun e!3745639 () Bool)

(assert (=> d!1925856 (=> res!2546385 e!3745639)))

(assert (=> d!1925856 (= res!2546385 ((_ is EmptyExpr!16089) (h!70890 (exprs!5973 (h!70892 zl!343)))))))

(assert (=> d!1925856 (= (nullableFct!2046 (h!70890 (exprs!5973 (h!70892 zl!343)))) e!3745639)))

(declare-fun b!6146631 () Bool)

(declare-fun call!510889 () Bool)

(assert (=> b!6146631 (= e!3745635 call!510889)))

(declare-fun b!6146632 () Bool)

(declare-fun e!3745638 () Bool)

(assert (=> b!6146632 (= e!3745639 e!3745638)))

(declare-fun res!2546386 () Bool)

(assert (=> b!6146632 (=> (not res!2546386) (not e!3745638))))

(assert (=> b!6146632 (= res!2546386 (and (not ((_ is EmptyLang!16089) (h!70890 (exprs!5973 (h!70892 zl!343))))) (not ((_ is ElementMatch!16089) (h!70890 (exprs!5973 (h!70892 zl!343)))))))))

(declare-fun b!6146633 () Bool)

(declare-fun e!3745637 () Bool)

(assert (=> b!6146633 (= e!3745638 e!3745637)))

(declare-fun res!2546383 () Bool)

(assert (=> b!6146633 (=> res!2546383 e!3745637)))

(assert (=> b!6146633 (= res!2546383 ((_ is Star!16089) (h!70890 (exprs!5973 (h!70892 zl!343)))))))

(declare-fun bm!510884 () Bool)

(declare-fun c!1106006 () Bool)

(assert (=> bm!510884 (= call!510890 (nullable!6082 (ite c!1106006 (regOne!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))))))))

(declare-fun b!6146634 () Bool)

(declare-fun e!3745640 () Bool)

(assert (=> b!6146634 (= e!3745636 e!3745640)))

(declare-fun res!2546382 () Bool)

(assert (=> b!6146634 (= res!2546382 call!510890)))

(assert (=> b!6146634 (=> res!2546382 e!3745640)))

(declare-fun bm!510885 () Bool)

(assert (=> bm!510885 (= call!510889 (nullable!6082 (ite c!1106006 (regTwo!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (regTwo!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))))))))

(declare-fun b!6146635 () Bool)

(assert (=> b!6146635 (= e!3745640 call!510889)))

(declare-fun b!6146636 () Bool)

(assert (=> b!6146636 (= e!3745637 e!3745636)))

(assert (=> b!6146636 (= c!1106006 ((_ is Union!16089) (h!70890 (exprs!5973 (h!70892 zl!343)))))))

(assert (= (and d!1925856 (not res!2546385)) b!6146632))

(assert (= (and b!6146632 res!2546386) b!6146633))

(assert (= (and b!6146633 (not res!2546383)) b!6146636))

(assert (= (and b!6146636 c!1106006) b!6146634))

(assert (= (and b!6146636 (not c!1106006)) b!6146630))

(assert (= (and b!6146634 (not res!2546382)) b!6146635))

(assert (= (and b!6146630 res!2546384) b!6146631))

(assert (= (or b!6146635 b!6146631) bm!510885))

(assert (= (or b!6146634 b!6146630) bm!510884))

(declare-fun m!6987012 () Bool)

(assert (=> bm!510884 m!6987012))

(declare-fun m!6987014 () Bool)

(assert (=> bm!510885 m!6987014))

(assert (=> d!1925404 d!1925856))

(assert (=> d!1925454 d!1925452))

(assert (=> d!1925454 d!1925450))

(declare-fun d!1925858 () Bool)

(assert (=> d!1925858 (= (matchR!8272 r!7292 s!2326) (matchRSpec!3190 r!7292 s!2326))))

(assert (=> d!1925858 true))

(declare-fun _$88!4686 () Unit!157513)

(assert (=> d!1925858 (= (choose!45682 r!7292 s!2326) _$88!4686)))

(declare-fun bs!1523942 () Bool)

(assert (= bs!1523942 d!1925858))

(assert (=> bs!1523942 m!6985674))

(assert (=> bs!1523942 m!6985672))

(assert (=> d!1925454 d!1925858))

(assert (=> d!1925454 d!1925472))

(declare-fun d!1925860 () Bool)

(declare-fun c!1106007 () Bool)

(assert (=> d!1925860 (= c!1106007 (isEmpty!36399 (t!378050 s!2326)))))

(declare-fun e!3745641 () Bool)

(assert (=> d!1925860 (= (matchZipper!2101 ((_ map or) lt!2333661 lt!2333666) (t!378050 s!2326)) e!3745641)))

(declare-fun b!6146637 () Bool)

(assert (=> b!6146637 (= e!3745641 (nullableZipper!1870 ((_ map or) lt!2333661 lt!2333666)))))

(declare-fun b!6146638 () Bool)

(assert (=> b!6146638 (= e!3745641 (matchZipper!2101 (derivationStepZipper!2062 ((_ map or) lt!2333661 lt!2333666) (head!12699 (t!378050 s!2326))) (tail!11784 (t!378050 s!2326))))))

(assert (= (and d!1925860 c!1106007) b!6146637))

(assert (= (and d!1925860 (not c!1106007)) b!6146638))

(assert (=> d!1925860 m!6986000))

(declare-fun m!6987016 () Bool)

(assert (=> b!6146637 m!6987016))

(assert (=> b!6146638 m!6986004))

(assert (=> b!6146638 m!6986004))

(declare-fun m!6987018 () Bool)

(assert (=> b!6146638 m!6987018))

(assert (=> b!6146638 m!6986008))

(assert (=> b!6146638 m!6987018))

(assert (=> b!6146638 m!6986008))

(declare-fun m!6987020 () Bool)

(assert (=> b!6146638 m!6987020))

(assert (=> d!1925446 d!1925860))

(assert (=> d!1925446 d!1925444))

(declare-fun e!3745642 () Bool)

(declare-fun d!1925862 () Bool)

(assert (=> d!1925862 (= (matchZipper!2101 ((_ map or) lt!2333661 lt!2333666) (t!378050 s!2326)) e!3745642)))

(declare-fun res!2546387 () Bool)

(assert (=> d!1925862 (=> res!2546387 e!3745642)))

(assert (=> d!1925862 (= res!2546387 (matchZipper!2101 lt!2333661 (t!378050 s!2326)))))

(assert (=> d!1925862 true))

(declare-fun _$48!1670 () Unit!157513)

(assert (=> d!1925862 (= (choose!45674 lt!2333661 lt!2333666 (t!378050 s!2326)) _$48!1670)))

(declare-fun b!6146639 () Bool)

(assert (=> b!6146639 (= e!3745642 (matchZipper!2101 lt!2333666 (t!378050 s!2326)))))

(assert (= (and d!1925862 (not res!2546387)) b!6146639))

(assert (=> d!1925862 m!6986172))

(assert (=> d!1925862 m!6985682))

(assert (=> b!6146639 m!6985678))

(assert (=> d!1925446 d!1925862))

(declare-fun d!1925864 () Bool)

(assert (=> d!1925864 (= (nullable!6082 (h!70890 (exprs!5973 lt!2333672))) (nullableFct!2046 (h!70890 (exprs!5973 lt!2333672))))))

(declare-fun bs!1523943 () Bool)

(assert (= bs!1523943 d!1925864))

(declare-fun m!6987022 () Bool)

(assert (=> bs!1523943 m!6987022))

(assert (=> b!6145607 d!1925864))

(declare-fun d!1925866 () Bool)

(assert (=> d!1925866 (= (isDefined!12683 lt!2333740) (not (isEmpty!36401 lt!2333740)))))

(declare-fun bs!1523944 () Bool)

(assert (= bs!1523944 d!1925866))

(declare-fun m!6987024 () Bool)

(assert (=> bs!1523944 m!6987024))

(assert (=> b!6145587 d!1925866))

(declare-fun b!6146640 () Bool)

(declare-fun e!3745648 () Bool)

(declare-fun e!3745644 () Bool)

(assert (=> b!6146640 (= e!3745648 e!3745644)))

(declare-fun c!1106009 () Bool)

(assert (=> b!6146640 (= c!1106009 ((_ is Union!16089) (ite c!1105790 (reg!16418 r!7292) (ite c!1105791 (regOne!32691 r!7292) (regOne!32690 r!7292)))))))

(declare-fun d!1925868 () Bool)

(declare-fun res!2546390 () Bool)

(declare-fun e!3745647 () Bool)

(assert (=> d!1925868 (=> res!2546390 e!3745647)))

(assert (=> d!1925868 (= res!2546390 ((_ is ElementMatch!16089) (ite c!1105790 (reg!16418 r!7292) (ite c!1105791 (regOne!32691 r!7292) (regOne!32690 r!7292)))))))

(assert (=> d!1925868 (= (validRegex!7825 (ite c!1105790 (reg!16418 r!7292) (ite c!1105791 (regOne!32691 r!7292) (regOne!32690 r!7292)))) e!3745647)))

(declare-fun bm!510886 () Bool)

(declare-fun call!510891 () Bool)

(declare-fun call!510892 () Bool)

(assert (=> bm!510886 (= call!510891 call!510892)))

(declare-fun b!6146641 () Bool)

(declare-fun e!3745649 () Bool)

(assert (=> b!6146641 (= e!3745649 call!510892)))

(declare-fun b!6146642 () Bool)

(declare-fun e!3745645 () Bool)

(declare-fun call!510893 () Bool)

(assert (=> b!6146642 (= e!3745645 call!510893)))

(declare-fun bm!510887 () Bool)

(declare-fun c!1106008 () Bool)

(assert (=> bm!510887 (= call!510892 (validRegex!7825 (ite c!1106008 (reg!16418 (ite c!1105790 (reg!16418 r!7292) (ite c!1105791 (regOne!32691 r!7292) (regOne!32690 r!7292)))) (ite c!1106009 (regOne!32691 (ite c!1105790 (reg!16418 r!7292) (ite c!1105791 (regOne!32691 r!7292) (regOne!32690 r!7292)))) (regOne!32690 (ite c!1105790 (reg!16418 r!7292) (ite c!1105791 (regOne!32691 r!7292) (regOne!32690 r!7292))))))))))

(declare-fun bm!510888 () Bool)

(assert (=> bm!510888 (= call!510893 (validRegex!7825 (ite c!1106009 (regTwo!32691 (ite c!1105790 (reg!16418 r!7292) (ite c!1105791 (regOne!32691 r!7292) (regOne!32690 r!7292)))) (regTwo!32690 (ite c!1105790 (reg!16418 r!7292) (ite c!1105791 (regOne!32691 r!7292) (regOne!32690 r!7292)))))))))

(declare-fun b!6146643 () Bool)

(assert (=> b!6146643 (= e!3745647 e!3745648)))

(assert (=> b!6146643 (= c!1106008 ((_ is Star!16089) (ite c!1105790 (reg!16418 r!7292) (ite c!1105791 (regOne!32691 r!7292) (regOne!32690 r!7292)))))))

(declare-fun b!6146644 () Bool)

(declare-fun e!3745646 () Bool)

(assert (=> b!6146644 (= e!3745646 call!510893)))

(declare-fun b!6146645 () Bool)

(declare-fun e!3745643 () Bool)

(assert (=> b!6146645 (= e!3745643 e!3745646)))

(declare-fun res!2546388 () Bool)

(assert (=> b!6146645 (=> (not res!2546388) (not e!3745646))))

(assert (=> b!6146645 (= res!2546388 call!510891)))

(declare-fun b!6146646 () Bool)

(assert (=> b!6146646 (= e!3745648 e!3745649)))

(declare-fun res!2546392 () Bool)

(assert (=> b!6146646 (= res!2546392 (not (nullable!6082 (reg!16418 (ite c!1105790 (reg!16418 r!7292) (ite c!1105791 (regOne!32691 r!7292) (regOne!32690 r!7292)))))))))

(assert (=> b!6146646 (=> (not res!2546392) (not e!3745649))))

(declare-fun b!6146647 () Bool)

(declare-fun res!2546389 () Bool)

(assert (=> b!6146647 (=> res!2546389 e!3745643)))

(assert (=> b!6146647 (= res!2546389 (not ((_ is Concat!24934) (ite c!1105790 (reg!16418 r!7292) (ite c!1105791 (regOne!32691 r!7292) (regOne!32690 r!7292))))))))

(assert (=> b!6146647 (= e!3745644 e!3745643)))

(declare-fun b!6146648 () Bool)

(declare-fun res!2546391 () Bool)

(assert (=> b!6146648 (=> (not res!2546391) (not e!3745645))))

(assert (=> b!6146648 (= res!2546391 call!510891)))

(assert (=> b!6146648 (= e!3745644 e!3745645)))

(assert (= (and d!1925868 (not res!2546390)) b!6146643))

(assert (= (and b!6146643 c!1106008) b!6146646))

(assert (= (and b!6146643 (not c!1106008)) b!6146640))

(assert (= (and b!6146646 res!2546392) b!6146641))

(assert (= (and b!6146640 c!1106009) b!6146648))

(assert (= (and b!6146640 (not c!1106009)) b!6146647))

(assert (= (and b!6146648 res!2546391) b!6146642))

(assert (= (and b!6146647 (not res!2546389)) b!6146645))

(assert (= (and b!6146645 res!2546388) b!6146644))

(assert (= (or b!6146642 b!6146644) bm!510888))

(assert (= (or b!6146648 b!6146645) bm!510886))

(assert (= (or b!6146641 bm!510886) bm!510887))

(declare-fun m!6987026 () Bool)

(assert (=> bm!510887 m!6987026))

(declare-fun m!6987028 () Bool)

(assert (=> bm!510888 m!6987028))

(declare-fun m!6987030 () Bool)

(assert (=> b!6146646 m!6987030))

(assert (=> bm!510724 d!1925868))

(declare-fun d!1925870 () Bool)

(assert (=> d!1925870 (= (isEmpty!36399 (tail!11784 s!2326)) ((_ is Nil!64443) (tail!11784 s!2326)))))

(assert (=> b!6145690 d!1925870))

(assert (=> b!6145690 d!1925808))

(declare-fun b!6146649 () Bool)

(declare-fun e!3745655 () Bool)

(declare-fun e!3745651 () Bool)

(assert (=> b!6146649 (= e!3745655 e!3745651)))

(declare-fun c!1106011 () Bool)

(assert (=> b!6146649 (= c!1106011 ((_ is Union!16089) lt!2333726))))

(declare-fun d!1925872 () Bool)

(declare-fun res!2546395 () Bool)

(declare-fun e!3745654 () Bool)

(assert (=> d!1925872 (=> res!2546395 e!3745654)))

(assert (=> d!1925872 (= res!2546395 ((_ is ElementMatch!16089) lt!2333726))))

(assert (=> d!1925872 (= (validRegex!7825 lt!2333726) e!3745654)))

(declare-fun bm!510889 () Bool)

(declare-fun call!510894 () Bool)

(declare-fun call!510895 () Bool)

(assert (=> bm!510889 (= call!510894 call!510895)))

(declare-fun b!6146650 () Bool)

(declare-fun e!3745656 () Bool)

(assert (=> b!6146650 (= e!3745656 call!510895)))

(declare-fun b!6146651 () Bool)

(declare-fun e!3745652 () Bool)

(declare-fun call!510896 () Bool)

(assert (=> b!6146651 (= e!3745652 call!510896)))

(declare-fun bm!510890 () Bool)

(declare-fun c!1106010 () Bool)

(assert (=> bm!510890 (= call!510895 (validRegex!7825 (ite c!1106010 (reg!16418 lt!2333726) (ite c!1106011 (regOne!32691 lt!2333726) (regOne!32690 lt!2333726)))))))

(declare-fun bm!510891 () Bool)

(assert (=> bm!510891 (= call!510896 (validRegex!7825 (ite c!1106011 (regTwo!32691 lt!2333726) (regTwo!32690 lt!2333726))))))

(declare-fun b!6146652 () Bool)

(assert (=> b!6146652 (= e!3745654 e!3745655)))

(assert (=> b!6146652 (= c!1106010 ((_ is Star!16089) lt!2333726))))

(declare-fun b!6146653 () Bool)

(declare-fun e!3745653 () Bool)

(assert (=> b!6146653 (= e!3745653 call!510896)))

(declare-fun b!6146654 () Bool)

(declare-fun e!3745650 () Bool)

(assert (=> b!6146654 (= e!3745650 e!3745653)))

(declare-fun res!2546393 () Bool)

(assert (=> b!6146654 (=> (not res!2546393) (not e!3745653))))

(assert (=> b!6146654 (= res!2546393 call!510894)))

(declare-fun b!6146655 () Bool)

(assert (=> b!6146655 (= e!3745655 e!3745656)))

(declare-fun res!2546397 () Bool)

(assert (=> b!6146655 (= res!2546397 (not (nullable!6082 (reg!16418 lt!2333726))))))

(assert (=> b!6146655 (=> (not res!2546397) (not e!3745656))))

(declare-fun b!6146656 () Bool)

(declare-fun res!2546394 () Bool)

(assert (=> b!6146656 (=> res!2546394 e!3745650)))

(assert (=> b!6146656 (= res!2546394 (not ((_ is Concat!24934) lt!2333726)))))

(assert (=> b!6146656 (= e!3745651 e!3745650)))

(declare-fun b!6146657 () Bool)

(declare-fun res!2546396 () Bool)

(assert (=> b!6146657 (=> (not res!2546396) (not e!3745652))))

(assert (=> b!6146657 (= res!2546396 call!510894)))

(assert (=> b!6146657 (= e!3745651 e!3745652)))

(assert (= (and d!1925872 (not res!2546395)) b!6146652))

(assert (= (and b!6146652 c!1106010) b!6146655))

(assert (= (and b!6146652 (not c!1106010)) b!6146649))

(assert (= (and b!6146655 res!2546397) b!6146650))

(assert (= (and b!6146649 c!1106011) b!6146657))

(assert (= (and b!6146649 (not c!1106011)) b!6146656))

(assert (= (and b!6146657 res!2546396) b!6146651))

(assert (= (and b!6146656 (not res!2546394)) b!6146654))

(assert (= (and b!6146654 res!2546393) b!6146653))

(assert (= (or b!6146651 b!6146653) bm!510891))

(assert (= (or b!6146657 b!6146654) bm!510889))

(assert (= (or b!6146650 bm!510889) bm!510890))

(declare-fun m!6987032 () Bool)

(assert (=> bm!510890 m!6987032))

(declare-fun m!6987034 () Bool)

(assert (=> bm!510891 m!6987034))

(declare-fun m!6987036 () Bool)

(assert (=> b!6146655 m!6987036))

(assert (=> d!1925400 d!1925872))

(declare-fun d!1925874 () Bool)

(declare-fun res!2546398 () Bool)

(declare-fun e!3745657 () Bool)

(assert (=> d!1925874 (=> res!2546398 e!3745657)))

(assert (=> d!1925874 (= res!2546398 ((_ is Nil!64442) (unfocusZipperList!1510 zl!343)))))

(assert (=> d!1925874 (= (forall!15210 (unfocusZipperList!1510 zl!343) lambda!335059) e!3745657)))

(declare-fun b!6146658 () Bool)

(declare-fun e!3745658 () Bool)

(assert (=> b!6146658 (= e!3745657 e!3745658)))

(declare-fun res!2546399 () Bool)

(assert (=> b!6146658 (=> (not res!2546399) (not e!3745658))))

(assert (=> b!6146658 (= res!2546399 (dynLambda!25400 lambda!335059 (h!70890 (unfocusZipperList!1510 zl!343))))))

(declare-fun b!6146659 () Bool)

(assert (=> b!6146659 (= e!3745658 (forall!15210 (t!378049 (unfocusZipperList!1510 zl!343)) lambda!335059))))

(assert (= (and d!1925874 (not res!2546398)) b!6146658))

(assert (= (and b!6146658 res!2546399) b!6146659))

(declare-fun b_lambda!233947 () Bool)

(assert (=> (not b_lambda!233947) (not b!6146658)))

(declare-fun m!6987038 () Bool)

(assert (=> b!6146658 m!6987038))

(declare-fun m!6987040 () Bool)

(assert (=> b!6146659 m!6987040))

(assert (=> d!1925400 d!1925874))

(declare-fun b!6146660 () Bool)

(declare-fun c!1106016 () Bool)

(assert (=> b!6146660 (= c!1106016 ((_ is Star!16089) (ite c!1105736 (regOne!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105735 (regTwo!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105737 (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (reg!16418 (h!70890 (exprs!5973 (h!70892 zl!343)))))))))))

(declare-fun e!3745660 () (InoxSet Context!10946))

(declare-fun e!3745663 () (InoxSet Context!10946))

(assert (=> b!6146660 (= e!3745660 e!3745663)))

(declare-fun b!6146661 () Bool)

(declare-fun call!510900 () (InoxSet Context!10946))

(assert (=> b!6146661 (= e!3745663 call!510900)))

(declare-fun b!6146662 () Bool)

(declare-fun e!3745659 () (InoxSet Context!10946))

(declare-fun call!510902 () (InoxSet Context!10946))

(declare-fun call!510901 () (InoxSet Context!10946))

(assert (=> b!6146662 (= e!3745659 ((_ map or) call!510902 call!510901))))

(declare-fun b!6146663 () Bool)

(declare-fun e!3745661 () (InoxSet Context!10946))

(declare-fun call!510899 () (InoxSet Context!10946))

(assert (=> b!6146663 (= e!3745661 ((_ map or) call!510901 call!510899))))

(declare-fun e!3745664 () Bool)

(declare-fun b!6146664 () Bool)

(assert (=> b!6146664 (= e!3745664 (nullable!6082 (regOne!32690 (ite c!1105736 (regOne!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105735 (regTwo!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105737 (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (reg!16418 (h!70890 (exprs!5973 (h!70892 zl!343))))))))))))

(declare-fun c!1106014 () Bool)

(declare-fun c!1106013 () Bool)

(declare-fun bm!510892 () Bool)

(declare-fun c!1106012 () Bool)

(declare-fun call!510898 () List!64566)

(assert (=> bm!510892 (= call!510902 (derivationStepZipperDown!1337 (ite c!1106013 (regOne!32691 (ite c!1105736 (regOne!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105735 (regTwo!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105737 (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (reg!16418 (h!70890 (exprs!5973 (h!70892 zl!343)))))))) (ite c!1106012 (regTwo!32690 (ite c!1105736 (regOne!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105735 (regTwo!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105737 (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (reg!16418 (h!70890 (exprs!5973 (h!70892 zl!343)))))))) (ite c!1106014 (regOne!32690 (ite c!1105736 (regOne!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105735 (regTwo!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105737 (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (reg!16418 (h!70890 (exprs!5973 (h!70892 zl!343)))))))) (reg!16418 (ite c!1105736 (regOne!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105735 (regTwo!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105737 (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (reg!16418 (h!70890 (exprs!5973 (h!70892 zl!343))))))))))) (ite (or c!1106013 c!1106012) (ite (or c!1105736 c!1105735) lt!2333656 (Context!10947 call!510694)) (Context!10947 call!510898)) (h!70891 s!2326)))))

(declare-fun bm!510893 () Bool)

(assert (=> bm!510893 (= call!510899 call!510902)))

(declare-fun b!6146665 () Bool)

(assert (=> b!6146665 (= e!3745660 call!510900)))

(declare-fun b!6146666 () Bool)

(declare-fun e!3745662 () (InoxSet Context!10946))

(assert (=> b!6146666 (= e!3745662 (store ((as const (Array Context!10946 Bool)) false) (ite (or c!1105736 c!1105735) lt!2333656 (Context!10947 call!510694)) true))))

(declare-fun b!6146668 () Bool)

(assert (=> b!6146668 (= e!3745662 e!3745659)))

(assert (=> b!6146668 (= c!1106013 ((_ is Union!16089) (ite c!1105736 (regOne!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105735 (regTwo!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105737 (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (reg!16418 (h!70890 (exprs!5973 (h!70892 zl!343)))))))))))

(declare-fun bm!510894 () Bool)

(declare-fun call!510897 () List!64566)

(assert (=> bm!510894 (= call!510897 ($colon$colon!1966 (exprs!5973 (ite (or c!1105736 c!1105735) lt!2333656 (Context!10947 call!510694))) (ite (or c!1106012 c!1106014) (regTwo!32690 (ite c!1105736 (regOne!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105735 (regTwo!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105737 (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (reg!16418 (h!70890 (exprs!5973 (h!70892 zl!343)))))))) (ite c!1105736 (regOne!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105735 (regTwo!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105737 (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (reg!16418 (h!70890 (exprs!5973 (h!70892 zl!343))))))))))))

(declare-fun bm!510895 () Bool)

(assert (=> bm!510895 (= call!510900 call!510899)))

(declare-fun bm!510896 () Bool)

(assert (=> bm!510896 (= call!510898 call!510897)))

(declare-fun bm!510897 () Bool)

(assert (=> bm!510897 (= call!510901 (derivationStepZipperDown!1337 (ite c!1106013 (regTwo!32691 (ite c!1105736 (regOne!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105735 (regTwo!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105737 (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (reg!16418 (h!70890 (exprs!5973 (h!70892 zl!343)))))))) (regOne!32690 (ite c!1105736 (regOne!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105735 (regTwo!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105737 (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (reg!16418 (h!70890 (exprs!5973 (h!70892 zl!343))))))))) (ite c!1106013 (ite (or c!1105736 c!1105735) lt!2333656 (Context!10947 call!510694)) (Context!10947 call!510897)) (h!70891 s!2326)))))

(declare-fun b!6146669 () Bool)

(assert (=> b!6146669 (= e!3745661 e!3745660)))

(assert (=> b!6146669 (= c!1106014 ((_ is Concat!24934) (ite c!1105736 (regOne!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105735 (regTwo!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105737 (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (reg!16418 (h!70890 (exprs!5973 (h!70892 zl!343)))))))))))

(declare-fun b!6146670 () Bool)

(assert (=> b!6146670 (= c!1106012 e!3745664)))

(declare-fun res!2546400 () Bool)

(assert (=> b!6146670 (=> (not res!2546400) (not e!3745664))))

(assert (=> b!6146670 (= res!2546400 ((_ is Concat!24934) (ite c!1105736 (regOne!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105735 (regTwo!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105737 (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (reg!16418 (h!70890 (exprs!5973 (h!70892 zl!343)))))))))))

(assert (=> b!6146670 (= e!3745659 e!3745661)))

(declare-fun b!6146667 () Bool)

(assert (=> b!6146667 (= e!3745663 ((as const (Array Context!10946 Bool)) false))))

(declare-fun c!1106015 () Bool)

(declare-fun d!1925876 () Bool)

(assert (=> d!1925876 (= c!1106015 (and ((_ is ElementMatch!16089) (ite c!1105736 (regOne!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105735 (regTwo!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105737 (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (reg!16418 (h!70890 (exprs!5973 (h!70892 zl!343)))))))) (= (c!1105579 (ite c!1105736 (regOne!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105735 (regTwo!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105737 (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (reg!16418 (h!70890 (exprs!5973 (h!70892 zl!343)))))))) (h!70891 s!2326))))))

(assert (=> d!1925876 (= (derivationStepZipperDown!1337 (ite c!1105736 (regOne!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105735 (regTwo!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1105737 (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (reg!16418 (h!70890 (exprs!5973 (h!70892 zl!343))))))) (ite (or c!1105736 c!1105735) lt!2333656 (Context!10947 call!510694)) (h!70891 s!2326)) e!3745662)))

(assert (= (and d!1925876 c!1106015) b!6146666))

(assert (= (and d!1925876 (not c!1106015)) b!6146668))

(assert (= (and b!6146668 c!1106013) b!6146662))

(assert (= (and b!6146668 (not c!1106013)) b!6146670))

(assert (= (and b!6146670 res!2546400) b!6146664))

(assert (= (and b!6146670 c!1106012) b!6146663))

(assert (= (and b!6146670 (not c!1106012)) b!6146669))

(assert (= (and b!6146669 c!1106014) b!6146665))

(assert (= (and b!6146669 (not c!1106014)) b!6146660))

(assert (= (and b!6146660 c!1106016) b!6146661))

(assert (= (and b!6146660 (not c!1106016)) b!6146667))

(assert (= (or b!6146665 b!6146661) bm!510896))

(assert (= (or b!6146665 b!6146661) bm!510895))

(assert (= (or b!6146663 bm!510896) bm!510894))

(assert (= (or b!6146663 bm!510895) bm!510893))

(assert (= (or b!6146662 b!6146663) bm!510897))

(assert (= (or b!6146662 bm!510893) bm!510892))

(declare-fun m!6987042 () Bool)

(assert (=> b!6146666 m!6987042))

(declare-fun m!6987044 () Bool)

(assert (=> bm!510892 m!6987044))

(declare-fun m!6987046 () Bool)

(assert (=> bm!510897 m!6987046))

(declare-fun m!6987048 () Bool)

(assert (=> bm!510894 m!6987048))

(declare-fun m!6987050 () Bool)

(assert (=> b!6146664 m!6987050))

(assert (=> bm!510688 d!1925876))

(declare-fun b!6146671 () Bool)

(declare-fun e!3745666 () Bool)

(declare-fun e!3745665 () Bool)

(assert (=> b!6146671 (= e!3745666 e!3745665)))

(declare-fun res!2546403 () Bool)

(declare-fun call!510904 () Bool)

(assert (=> b!6146671 (= res!2546403 call!510904)))

(assert (=> b!6146671 (=> (not res!2546403) (not e!3745665))))

(declare-fun d!1925878 () Bool)

(declare-fun res!2546404 () Bool)

(declare-fun e!3745669 () Bool)

(assert (=> d!1925878 (=> res!2546404 e!3745669)))

(assert (=> d!1925878 (= res!2546404 ((_ is EmptyExpr!16089) (regOne!32691 (regOne!32690 r!7292))))))

(assert (=> d!1925878 (= (nullableFct!2046 (regOne!32691 (regOne!32690 r!7292))) e!3745669)))

(declare-fun b!6146672 () Bool)

(declare-fun call!510903 () Bool)

(assert (=> b!6146672 (= e!3745665 call!510903)))

(declare-fun b!6146673 () Bool)

(declare-fun e!3745668 () Bool)

(assert (=> b!6146673 (= e!3745669 e!3745668)))

(declare-fun res!2546405 () Bool)

(assert (=> b!6146673 (=> (not res!2546405) (not e!3745668))))

(assert (=> b!6146673 (= res!2546405 (and (not ((_ is EmptyLang!16089) (regOne!32691 (regOne!32690 r!7292)))) (not ((_ is ElementMatch!16089) (regOne!32691 (regOne!32690 r!7292))))))))

(declare-fun b!6146674 () Bool)

(declare-fun e!3745667 () Bool)

(assert (=> b!6146674 (= e!3745668 e!3745667)))

(declare-fun res!2546402 () Bool)

(assert (=> b!6146674 (=> res!2546402 e!3745667)))

(assert (=> b!6146674 (= res!2546402 ((_ is Star!16089) (regOne!32691 (regOne!32690 r!7292))))))

(declare-fun bm!510898 () Bool)

(declare-fun c!1106017 () Bool)

(assert (=> bm!510898 (= call!510904 (nullable!6082 (ite c!1106017 (regOne!32691 (regOne!32691 (regOne!32690 r!7292))) (regOne!32690 (regOne!32691 (regOne!32690 r!7292))))))))

(declare-fun b!6146675 () Bool)

(declare-fun e!3745670 () Bool)

(assert (=> b!6146675 (= e!3745666 e!3745670)))

(declare-fun res!2546401 () Bool)

(assert (=> b!6146675 (= res!2546401 call!510904)))

(assert (=> b!6146675 (=> res!2546401 e!3745670)))

(declare-fun bm!510899 () Bool)

(assert (=> bm!510899 (= call!510903 (nullable!6082 (ite c!1106017 (regTwo!32691 (regOne!32691 (regOne!32690 r!7292))) (regTwo!32690 (regOne!32691 (regOne!32690 r!7292))))))))

(declare-fun b!6146676 () Bool)

(assert (=> b!6146676 (= e!3745670 call!510903)))

(declare-fun b!6146677 () Bool)

(assert (=> b!6146677 (= e!3745667 e!3745666)))

(assert (=> b!6146677 (= c!1106017 ((_ is Union!16089) (regOne!32691 (regOne!32690 r!7292))))))

(assert (= (and d!1925878 (not res!2546404)) b!6146673))

(assert (= (and b!6146673 res!2546405) b!6146674))

(assert (= (and b!6146674 (not res!2546402)) b!6146677))

(assert (= (and b!6146677 c!1106017) b!6146675))

(assert (= (and b!6146677 (not c!1106017)) b!6146671))

(assert (= (and b!6146675 (not res!2546401)) b!6146676))

(assert (= (and b!6146671 res!2546403) b!6146672))

(assert (= (or b!6146676 b!6146672) bm!510899))

(assert (= (or b!6146675 b!6146671) bm!510898))

(declare-fun m!6987052 () Bool)

(assert (=> bm!510898 m!6987052))

(declare-fun m!6987054 () Bool)

(assert (=> bm!510899 m!6987054))

(assert (=> d!1925440 d!1925878))

(assert (=> b!6145467 d!1925470))

(declare-fun d!1925880 () Bool)

(declare-fun c!1106018 () Bool)

(assert (=> d!1925880 (= c!1106018 (isEmpty!36399 (tail!11784 (t!378050 s!2326))))))

(declare-fun e!3745671 () Bool)

(assert (=> d!1925880 (= (matchZipper!2101 (derivationStepZipper!2062 lt!2333661 (head!12699 (t!378050 s!2326))) (tail!11784 (t!378050 s!2326))) e!3745671)))

(declare-fun b!6146678 () Bool)

(assert (=> b!6146678 (= e!3745671 (nullableZipper!1870 (derivationStepZipper!2062 lt!2333661 (head!12699 (t!378050 s!2326)))))))

(declare-fun b!6146679 () Bool)

(assert (=> b!6146679 (= e!3745671 (matchZipper!2101 (derivationStepZipper!2062 (derivationStepZipper!2062 lt!2333661 (head!12699 (t!378050 s!2326))) (head!12699 (tail!11784 (t!378050 s!2326)))) (tail!11784 (tail!11784 (t!378050 s!2326)))))))

(assert (= (and d!1925880 c!1106018) b!6146678))

(assert (= (and d!1925880 (not c!1106018)) b!6146679))

(assert (=> d!1925880 m!6986008))

(assert (=> d!1925880 m!6986822))

(assert (=> b!6146678 m!6986168))

(declare-fun m!6987056 () Bool)

(assert (=> b!6146678 m!6987056))

(assert (=> b!6146679 m!6986008))

(assert (=> b!6146679 m!6986826))

(assert (=> b!6146679 m!6986168))

(assert (=> b!6146679 m!6986826))

(declare-fun m!6987058 () Bool)

(assert (=> b!6146679 m!6987058))

(assert (=> b!6146679 m!6986008))

(assert (=> b!6146679 m!6986830))

(assert (=> b!6146679 m!6987058))

(assert (=> b!6146679 m!6986830))

(declare-fun m!6987060 () Bool)

(assert (=> b!6146679 m!6987060))

(assert (=> b!6145614 d!1925880))

(declare-fun bs!1523945 () Bool)

(declare-fun d!1925882 () Bool)

(assert (= bs!1523945 (and d!1925882 b!6145018)))

(declare-fun lambda!335141 () Int)

(assert (=> bs!1523945 (= (= (head!12699 (t!378050 s!2326)) (h!70891 s!2326)) (= lambda!335141 lambda!335021))))

(declare-fun bs!1523946 () Bool)

(assert (= bs!1523946 (and d!1925882 d!1925774)))

(assert (=> bs!1523946 (= lambda!335141 lambda!335130)))

(declare-fun bs!1523947 () Bool)

(assert (= bs!1523947 (and d!1925882 d!1925788)))

(assert (=> bs!1523947 (= lambda!335141 lambda!335131)))

(declare-fun bs!1523948 () Bool)

(assert (= bs!1523948 (and d!1925882 d!1925800)))

(assert (=> bs!1523948 (= lambda!335141 lambda!335132)))

(assert (=> d!1925882 true))

(assert (=> d!1925882 (= (derivationStepZipper!2062 lt!2333661 (head!12699 (t!378050 s!2326))) (flatMap!1594 lt!2333661 lambda!335141))))

(declare-fun bs!1523949 () Bool)

(assert (= bs!1523949 d!1925882))

(declare-fun m!6987062 () Bool)

(assert (=> bs!1523949 m!6987062))

(assert (=> b!6145614 d!1925882))

(assert (=> b!6145614 d!1925776))

(assert (=> b!6145614 d!1925778))

(declare-fun c!1106023 () Bool)

(declare-fun b!6146680 () Bool)

(assert (=> b!6146680 (= c!1106023 ((_ is Star!16089) (ite c!1105776 (regOne!32691 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105775 (regTwo!32690 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105777 (regOne!32690 (regTwo!32691 (regOne!32690 r!7292))) (reg!16418 (regTwo!32691 (regOne!32690 r!7292))))))))))

(declare-fun e!3745673 () (InoxSet Context!10946))

(declare-fun e!3745676 () (InoxSet Context!10946))

(assert (=> b!6146680 (= e!3745673 e!3745676)))

(declare-fun b!6146681 () Bool)

(declare-fun call!510908 () (InoxSet Context!10946))

(assert (=> b!6146681 (= e!3745676 call!510908)))

(declare-fun b!6146682 () Bool)

(declare-fun e!3745672 () (InoxSet Context!10946))

(declare-fun call!510910 () (InoxSet Context!10946))

(declare-fun call!510909 () (InoxSet Context!10946))

(assert (=> b!6146682 (= e!3745672 ((_ map or) call!510910 call!510909))))

(declare-fun b!6146683 () Bool)

(declare-fun e!3745674 () (InoxSet Context!10946))

(declare-fun call!510907 () (InoxSet Context!10946))

(assert (=> b!6146683 (= e!3745674 ((_ map or) call!510909 call!510907))))

(declare-fun e!3745677 () Bool)

(declare-fun b!6146684 () Bool)

(assert (=> b!6146684 (= e!3745677 (nullable!6082 (regOne!32690 (ite c!1105776 (regOne!32691 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105775 (regTwo!32690 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105777 (regOne!32690 (regTwo!32691 (regOne!32690 r!7292))) (reg!16418 (regTwo!32691 (regOne!32690 r!7292)))))))))))

(declare-fun bm!510900 () Bool)

(declare-fun c!1106020 () Bool)

(declare-fun c!1106019 () Bool)

(declare-fun call!510906 () List!64566)

(declare-fun c!1106021 () Bool)

(assert (=> bm!510900 (= call!510910 (derivationStepZipperDown!1337 (ite c!1106020 (regOne!32691 (ite c!1105776 (regOne!32691 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105775 (regTwo!32690 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105777 (regOne!32690 (regTwo!32691 (regOne!32690 r!7292))) (reg!16418 (regTwo!32691 (regOne!32690 r!7292))))))) (ite c!1106019 (regTwo!32690 (ite c!1105776 (regOne!32691 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105775 (regTwo!32690 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105777 (regOne!32690 (regTwo!32691 (regOne!32690 r!7292))) (reg!16418 (regTwo!32691 (regOne!32690 r!7292))))))) (ite c!1106021 (regOne!32690 (ite c!1105776 (regOne!32691 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105775 (regTwo!32690 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105777 (regOne!32690 (regTwo!32691 (regOne!32690 r!7292))) (reg!16418 (regTwo!32691 (regOne!32690 r!7292))))))) (reg!16418 (ite c!1105776 (regOne!32691 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105775 (regTwo!32690 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105777 (regOne!32690 (regTwo!32691 (regOne!32690 r!7292))) (reg!16418 (regTwo!32691 (regOne!32690 r!7292)))))))))) (ite (or c!1106020 c!1106019) (ite (or c!1105776 c!1105775) lt!2333656 (Context!10947 call!510711)) (Context!10947 call!510906)) (h!70891 s!2326)))))

(declare-fun bm!510901 () Bool)

(assert (=> bm!510901 (= call!510907 call!510910)))

(declare-fun b!6146685 () Bool)

(assert (=> b!6146685 (= e!3745673 call!510908)))

(declare-fun e!3745675 () (InoxSet Context!10946))

(declare-fun b!6146686 () Bool)

(assert (=> b!6146686 (= e!3745675 (store ((as const (Array Context!10946 Bool)) false) (ite (or c!1105776 c!1105775) lt!2333656 (Context!10947 call!510711)) true))))

(declare-fun b!6146688 () Bool)

(assert (=> b!6146688 (= e!3745675 e!3745672)))

(assert (=> b!6146688 (= c!1106020 ((_ is Union!16089) (ite c!1105776 (regOne!32691 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105775 (regTwo!32690 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105777 (regOne!32690 (regTwo!32691 (regOne!32690 r!7292))) (reg!16418 (regTwo!32691 (regOne!32690 r!7292))))))))))

(declare-fun bm!510902 () Bool)

(declare-fun call!510905 () List!64566)

(assert (=> bm!510902 (= call!510905 ($colon$colon!1966 (exprs!5973 (ite (or c!1105776 c!1105775) lt!2333656 (Context!10947 call!510711))) (ite (or c!1106019 c!1106021) (regTwo!32690 (ite c!1105776 (regOne!32691 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105775 (regTwo!32690 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105777 (regOne!32690 (regTwo!32691 (regOne!32690 r!7292))) (reg!16418 (regTwo!32691 (regOne!32690 r!7292))))))) (ite c!1105776 (regOne!32691 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105775 (regTwo!32690 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105777 (regOne!32690 (regTwo!32691 (regOne!32690 r!7292))) (reg!16418 (regTwo!32691 (regOne!32690 r!7292)))))))))))

(declare-fun bm!510903 () Bool)

(assert (=> bm!510903 (= call!510908 call!510907)))

(declare-fun bm!510904 () Bool)

(assert (=> bm!510904 (= call!510906 call!510905)))

(declare-fun bm!510905 () Bool)

(assert (=> bm!510905 (= call!510909 (derivationStepZipperDown!1337 (ite c!1106020 (regTwo!32691 (ite c!1105776 (regOne!32691 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105775 (regTwo!32690 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105777 (regOne!32690 (regTwo!32691 (regOne!32690 r!7292))) (reg!16418 (regTwo!32691 (regOne!32690 r!7292))))))) (regOne!32690 (ite c!1105776 (regOne!32691 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105775 (regTwo!32690 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105777 (regOne!32690 (regTwo!32691 (regOne!32690 r!7292))) (reg!16418 (regTwo!32691 (regOne!32690 r!7292)))))))) (ite c!1106020 (ite (or c!1105776 c!1105775) lt!2333656 (Context!10947 call!510711)) (Context!10947 call!510905)) (h!70891 s!2326)))))

(declare-fun b!6146689 () Bool)

(assert (=> b!6146689 (= e!3745674 e!3745673)))

(assert (=> b!6146689 (= c!1106021 ((_ is Concat!24934) (ite c!1105776 (regOne!32691 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105775 (regTwo!32690 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105777 (regOne!32690 (regTwo!32691 (regOne!32690 r!7292))) (reg!16418 (regTwo!32691 (regOne!32690 r!7292))))))))))

(declare-fun b!6146690 () Bool)

(assert (=> b!6146690 (= c!1106019 e!3745677)))

(declare-fun res!2546406 () Bool)

(assert (=> b!6146690 (=> (not res!2546406) (not e!3745677))))

(assert (=> b!6146690 (= res!2546406 ((_ is Concat!24934) (ite c!1105776 (regOne!32691 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105775 (regTwo!32690 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105777 (regOne!32690 (regTwo!32691 (regOne!32690 r!7292))) (reg!16418 (regTwo!32691 (regOne!32690 r!7292))))))))))

(assert (=> b!6146690 (= e!3745672 e!3745674)))

(declare-fun b!6146687 () Bool)

(assert (=> b!6146687 (= e!3745676 ((as const (Array Context!10946 Bool)) false))))

(declare-fun d!1925884 () Bool)

(declare-fun c!1106022 () Bool)

(assert (=> d!1925884 (= c!1106022 (and ((_ is ElementMatch!16089) (ite c!1105776 (regOne!32691 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105775 (regTwo!32690 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105777 (regOne!32690 (regTwo!32691 (regOne!32690 r!7292))) (reg!16418 (regTwo!32691 (regOne!32690 r!7292))))))) (= (c!1105579 (ite c!1105776 (regOne!32691 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105775 (regTwo!32690 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105777 (regOne!32690 (regTwo!32691 (regOne!32690 r!7292))) (reg!16418 (regTwo!32691 (regOne!32690 r!7292))))))) (h!70891 s!2326))))))

(assert (=> d!1925884 (= (derivationStepZipperDown!1337 (ite c!1105776 (regOne!32691 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105775 (regTwo!32690 (regTwo!32691 (regOne!32690 r!7292))) (ite c!1105777 (regOne!32690 (regTwo!32691 (regOne!32690 r!7292))) (reg!16418 (regTwo!32691 (regOne!32690 r!7292)))))) (ite (or c!1105776 c!1105775) lt!2333656 (Context!10947 call!510711)) (h!70891 s!2326)) e!3745675)))

(assert (= (and d!1925884 c!1106022) b!6146686))

(assert (= (and d!1925884 (not c!1106022)) b!6146688))

(assert (= (and b!6146688 c!1106020) b!6146682))

(assert (= (and b!6146688 (not c!1106020)) b!6146690))

(assert (= (and b!6146690 res!2546406) b!6146684))

(assert (= (and b!6146690 c!1106019) b!6146683))

(assert (= (and b!6146690 (not c!1106019)) b!6146689))

(assert (= (and b!6146689 c!1106021) b!6146685))

(assert (= (and b!6146689 (not c!1106021)) b!6146680))

(assert (= (and b!6146680 c!1106023) b!6146681))

(assert (= (and b!6146680 (not c!1106023)) b!6146687))

(assert (= (or b!6146685 b!6146681) bm!510904))

(assert (= (or b!6146685 b!6146681) bm!510903))

(assert (= (or b!6146683 bm!510904) bm!510902))

(assert (= (or b!6146683 bm!510903) bm!510901))

(assert (= (or b!6146682 b!6146683) bm!510905))

(assert (= (or b!6146682 bm!510901) bm!510900))

(declare-fun m!6987064 () Bool)

(assert (=> b!6146686 m!6987064))

(declare-fun m!6987066 () Bool)

(assert (=> bm!510900 m!6987066))

(declare-fun m!6987068 () Bool)

(assert (=> bm!510905 m!6987068))

(declare-fun m!6987070 () Bool)

(assert (=> bm!510902 m!6987070))

(declare-fun m!6987072 () Bool)

(assert (=> b!6146684 m!6987072))

(assert (=> bm!510705 d!1925884))

(declare-fun call!510911 () (InoxSet Context!10946))

(declare-fun b!6146691 () Bool)

(declare-fun e!3745680 () (InoxSet Context!10946))

(assert (=> b!6146691 (= e!3745680 ((_ map or) call!510911 (derivationStepZipperUp!1263 (Context!10947 (t!378049 (exprs!5973 (Context!10947 (t!378049 (exprs!5973 lt!2333656)))))) (h!70891 s!2326))))))

(declare-fun b!6146692 () Bool)

(declare-fun e!3745678 () Bool)

(assert (=> b!6146692 (= e!3745678 (nullable!6082 (h!70890 (exprs!5973 (Context!10947 (t!378049 (exprs!5973 lt!2333656)))))))))

(declare-fun bm!510906 () Bool)

(assert (=> bm!510906 (= call!510911 (derivationStepZipperDown!1337 (h!70890 (exprs!5973 (Context!10947 (t!378049 (exprs!5973 lt!2333656))))) (Context!10947 (t!378049 (exprs!5973 (Context!10947 (t!378049 (exprs!5973 lt!2333656)))))) (h!70891 s!2326)))))

(declare-fun b!6146694 () Bool)

(declare-fun e!3745679 () (InoxSet Context!10946))

(assert (=> b!6146694 (= e!3745680 e!3745679)))

(declare-fun c!1106025 () Bool)

(assert (=> b!6146694 (= c!1106025 ((_ is Cons!64442) (exprs!5973 (Context!10947 (t!378049 (exprs!5973 lt!2333656))))))))

(declare-fun b!6146695 () Bool)

(assert (=> b!6146695 (= e!3745679 call!510911)))

(declare-fun b!6146693 () Bool)

(assert (=> b!6146693 (= e!3745679 ((as const (Array Context!10946 Bool)) false))))

(declare-fun d!1925886 () Bool)

(declare-fun c!1106024 () Bool)

(assert (=> d!1925886 (= c!1106024 e!3745678)))

(declare-fun res!2546407 () Bool)

(assert (=> d!1925886 (=> (not res!2546407) (not e!3745678))))

(assert (=> d!1925886 (= res!2546407 ((_ is Cons!64442) (exprs!5973 (Context!10947 (t!378049 (exprs!5973 lt!2333656))))))))

(assert (=> d!1925886 (= (derivationStepZipperUp!1263 (Context!10947 (t!378049 (exprs!5973 lt!2333656))) (h!70891 s!2326)) e!3745680)))

(assert (= (and d!1925886 res!2546407) b!6146692))

(assert (= (and d!1925886 c!1106024) b!6146691))

(assert (= (and d!1925886 (not c!1106024)) b!6146694))

(assert (= (and b!6146694 c!1106025) b!6146695))

(assert (= (and b!6146694 (not c!1106025)) b!6146693))

(assert (= (or b!6146691 b!6146695) bm!510906))

(declare-fun m!6987074 () Bool)

(assert (=> b!6146691 m!6987074))

(declare-fun m!6987076 () Bool)

(assert (=> b!6146692 m!6987076))

(declare-fun m!6987078 () Bool)

(assert (=> bm!510906 m!6987078))

(assert (=> b!6145522 d!1925886))

(assert (=> d!1925444 d!1925734))

(declare-fun b!6146696 () Bool)

(declare-fun c!1106030 () Bool)

(assert (=> b!6146696 (= c!1106030 ((_ is Star!16089) (h!70890 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343)))))))))))

(declare-fun e!3745682 () (InoxSet Context!10946))

(declare-fun e!3745685 () (InoxSet Context!10946))

(assert (=> b!6146696 (= e!3745682 e!3745685)))

(declare-fun b!6146697 () Bool)

(declare-fun call!510915 () (InoxSet Context!10946))

(assert (=> b!6146697 (= e!3745685 call!510915)))

(declare-fun b!6146698 () Bool)

(declare-fun e!3745681 () (InoxSet Context!10946))

(declare-fun call!510917 () (InoxSet Context!10946))

(declare-fun call!510916 () (InoxSet Context!10946))

(assert (=> b!6146698 (= e!3745681 ((_ map or) call!510917 call!510916))))

(declare-fun b!6146699 () Bool)

(declare-fun e!3745683 () (InoxSet Context!10946))

(declare-fun call!510914 () (InoxSet Context!10946))

(assert (=> b!6146699 (= e!3745683 ((_ map or) call!510916 call!510914))))

(declare-fun b!6146700 () Bool)

(declare-fun e!3745686 () Bool)

(assert (=> b!6146700 (= e!3745686 (nullable!6082 (regOne!32690 (h!70890 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343))))))))))))

(declare-fun c!1106027 () Bool)

(declare-fun c!1106026 () Bool)

(declare-fun bm!510907 () Bool)

(declare-fun c!1106028 () Bool)

(declare-fun call!510913 () List!64566)

(assert (=> bm!510907 (= call!510917 (derivationStepZipperDown!1337 (ite c!1106027 (regOne!32691 (h!70890 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343)))))))) (ite c!1106026 (regTwo!32690 (h!70890 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343)))))))) (ite c!1106028 (regOne!32690 (h!70890 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343)))))))) (reg!16418 (h!70890 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343))))))))))) (ite (or c!1106027 c!1106026) (Context!10947 (t!378049 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343)))))))) (Context!10947 call!510913)) (h!70891 s!2326)))))

(declare-fun bm!510908 () Bool)

(assert (=> bm!510908 (= call!510914 call!510917)))

(declare-fun b!6146701 () Bool)

(assert (=> b!6146701 (= e!3745682 call!510915)))

(declare-fun b!6146702 () Bool)

(declare-fun e!3745684 () (InoxSet Context!10946))

(assert (=> b!6146702 (= e!3745684 (store ((as const (Array Context!10946 Bool)) false) (Context!10947 (t!378049 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343)))))))) true))))

(declare-fun b!6146704 () Bool)

(assert (=> b!6146704 (= e!3745684 e!3745681)))

(assert (=> b!6146704 (= c!1106027 ((_ is Union!16089) (h!70890 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343)))))))))))

(declare-fun bm!510909 () Bool)

(declare-fun call!510912 () List!64566)

(assert (=> bm!510909 (= call!510912 ($colon$colon!1966 (exprs!5973 (Context!10947 (t!378049 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343))))))))) (ite (or c!1106026 c!1106028) (regTwo!32690 (h!70890 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343)))))))) (h!70890 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343))))))))))))

(declare-fun bm!510910 () Bool)

(assert (=> bm!510910 (= call!510915 call!510914)))

(declare-fun bm!510911 () Bool)

(assert (=> bm!510911 (= call!510913 call!510912)))

(declare-fun bm!510912 () Bool)

(assert (=> bm!510912 (= call!510916 (derivationStepZipperDown!1337 (ite c!1106027 (regTwo!32691 (h!70890 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343)))))))) (regOne!32690 (h!70890 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343))))))))) (ite c!1106027 (Context!10947 (t!378049 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343)))))))) (Context!10947 call!510912)) (h!70891 s!2326)))))

(declare-fun b!6146705 () Bool)

(assert (=> b!6146705 (= e!3745683 e!3745682)))

(assert (=> b!6146705 (= c!1106028 ((_ is Concat!24934) (h!70890 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343)))))))))))

(declare-fun b!6146706 () Bool)

(assert (=> b!6146706 (= c!1106026 e!3745686)))

(declare-fun res!2546408 () Bool)

(assert (=> b!6146706 (=> (not res!2546408) (not e!3745686))))

(assert (=> b!6146706 (= res!2546408 ((_ is Concat!24934) (h!70890 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343)))))))))))

(assert (=> b!6146706 (= e!3745681 e!3745683)))

(declare-fun b!6146703 () Bool)

(assert (=> b!6146703 (= e!3745685 ((as const (Array Context!10946 Bool)) false))))

(declare-fun d!1925888 () Bool)

(declare-fun c!1106029 () Bool)

(assert (=> d!1925888 (= c!1106029 (and ((_ is ElementMatch!16089) (h!70890 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343)))))))) (= (c!1105579 (h!70890 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343)))))))) (h!70891 s!2326))))))

(assert (=> d!1925888 (= (derivationStepZipperDown!1337 (h!70890 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343))))))) (Context!10947 (t!378049 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343)))))))) (h!70891 s!2326)) e!3745684)))

(assert (= (and d!1925888 c!1106029) b!6146702))

(assert (= (and d!1925888 (not c!1106029)) b!6146704))

(assert (= (and b!6146704 c!1106027) b!6146698))

(assert (= (and b!6146704 (not c!1106027)) b!6146706))

(assert (= (and b!6146706 res!2546408) b!6146700))

(assert (= (and b!6146706 c!1106026) b!6146699))

(assert (= (and b!6146706 (not c!1106026)) b!6146705))

(assert (= (and b!6146705 c!1106028) b!6146701))

(assert (= (and b!6146705 (not c!1106028)) b!6146696))

(assert (= (and b!6146696 c!1106030) b!6146697))

(assert (= (and b!6146696 (not c!1106030)) b!6146703))

(assert (= (or b!6146701 b!6146697) bm!510911))

(assert (= (or b!6146701 b!6146697) bm!510910))

(assert (= (or b!6146699 bm!510911) bm!510909))

(assert (= (or b!6146699 bm!510910) bm!510908))

(assert (= (or b!6146698 b!6146699) bm!510912))

(assert (= (or b!6146698 bm!510908) bm!510907))

(declare-fun m!6987080 () Bool)

(assert (=> b!6146702 m!6987080))

(declare-fun m!6987082 () Bool)

(assert (=> bm!510907 m!6987082))

(declare-fun m!6987084 () Bool)

(assert (=> bm!510912 m!6987084))

(declare-fun m!6987086 () Bool)

(assert (=> bm!510909 m!6987086))

(declare-fun m!6987088 () Bool)

(assert (=> b!6146700 m!6987088))

(assert (=> bm!510694 d!1925888))

(declare-fun d!1925890 () Bool)

(assert (=> d!1925890 (= (isEmpty!36397 (tail!11785 (unfocusZipperList!1510 zl!343))) ((_ is Nil!64442) (tail!11785 (unfocusZipperList!1510 zl!343))))))

(assert (=> b!6145499 d!1925890))

(declare-fun d!1925892 () Bool)

(assert (=> d!1925892 (= (tail!11785 (unfocusZipperList!1510 zl!343)) (t!378049 (unfocusZipperList!1510 zl!343)))))

(assert (=> b!6145499 d!1925892))

(assert (=> d!1925390 d!1925394))

(assert (=> d!1925390 d!1925392))

(declare-fun e!3745687 () Bool)

(declare-fun d!1925894 () Bool)

(assert (=> d!1925894 (= (matchZipper!2101 ((_ map or) lt!2333651 lt!2333650) (t!378050 s!2326)) e!3745687)))

(declare-fun res!2546409 () Bool)

(assert (=> d!1925894 (=> res!2546409 e!3745687)))

(assert (=> d!1925894 (= res!2546409 (matchZipper!2101 lt!2333651 (t!378050 s!2326)))))

(assert (=> d!1925894 true))

(declare-fun _$48!1671 () Unit!157513)

(assert (=> d!1925894 (= (choose!45674 lt!2333651 lt!2333650 (t!378050 s!2326)) _$48!1671)))

(declare-fun b!6146707 () Bool)

(assert (=> b!6146707 (= e!3745687 (matchZipper!2101 lt!2333650 (t!378050 s!2326)))))

(assert (= (and d!1925894 (not res!2546409)) b!6146707))

(assert (=> d!1925894 m!6985670))

(assert (=> d!1925894 m!6985668))

(assert (=> b!6146707 m!6985660))

(assert (=> d!1925390 d!1925894))

(assert (=> b!6145698 d!1925806))

(declare-fun bs!1523950 () Bool)

(declare-fun b!6146715 () Bool)

(assert (= bs!1523950 (and b!6146715 b!6145648)))

(declare-fun lambda!335142 () Int)

(assert (=> bs!1523950 (not (= lambda!335142 lambda!335078))))

(declare-fun bs!1523951 () Bool)

(assert (= bs!1523951 (and b!6146715 d!1925738)))

(assert (=> bs!1523951 (not (= lambda!335142 lambda!335118))))

(declare-fun bs!1523952 () Bool)

(assert (= bs!1523952 (and b!6146715 d!1925766)))

(assert (=> bs!1523952 (not (= lambda!335142 lambda!335127))))

(declare-fun bs!1523953 () Bool)

(assert (= bs!1523953 (and b!6146715 b!6146591)))

(assert (=> bs!1523953 (= (and (= (reg!16418 (regTwo!32691 r!7292)) (reg!16418 (regOne!32691 r!7292))) (= (regTwo!32691 r!7292) (regOne!32691 r!7292))) (= lambda!335142 lambda!335136))))

(assert (=> bs!1523952 (not (= lambda!335142 lambda!335126))))

(declare-fun bs!1523954 () Bool)

(assert (= bs!1523954 (and b!6146715 b!6146584)))

(assert (=> bs!1523954 (not (= lambda!335142 lambda!335137))))

(declare-fun bs!1523955 () Bool)

(assert (= bs!1523955 (and b!6146715 d!1925426)))

(assert (=> bs!1523955 (not (= lambda!335142 lambda!335070))))

(declare-fun bs!1523956 () Bool)

(assert (= bs!1523956 (and b!6146715 d!1925424)))

(assert (=> bs!1523956 (not (= lambda!335142 lambda!335065))))

(declare-fun bs!1523957 () Bool)

(assert (= bs!1523957 (and b!6146715 b!6145019)))

(assert (=> bs!1523957 (not (= lambda!335142 lambda!335019))))

(declare-fun bs!1523958 () Bool)

(assert (= bs!1523958 (and b!6146715 b!6145655)))

(assert (=> bs!1523958 (= (and (= (reg!16418 (regTwo!32691 r!7292)) (reg!16418 r!7292)) (= (regTwo!32691 r!7292) r!7292)) (= lambda!335142 lambda!335077))))

(assert (=> bs!1523955 (not (= lambda!335142 lambda!335071))))

(assert (=> bs!1523957 (not (= lambda!335142 lambda!335020))))

(assert (=> b!6146715 true))

(assert (=> b!6146715 true))

(declare-fun bs!1523959 () Bool)

(declare-fun b!6146708 () Bool)

(assert (= bs!1523959 (and b!6146708 b!6145648)))

(declare-fun lambda!335143 () Int)

(assert (=> bs!1523959 (= (and (= (regOne!32690 (regTwo!32691 r!7292)) (regOne!32690 r!7292)) (= (regTwo!32690 (regTwo!32691 r!7292)) (regTwo!32690 r!7292))) (= lambda!335143 lambda!335078))))

(declare-fun bs!1523960 () Bool)

(assert (= bs!1523960 (and b!6146708 d!1925738)))

(assert (=> bs!1523960 (not (= lambda!335143 lambda!335118))))

(declare-fun bs!1523961 () Bool)

(assert (= bs!1523961 (and b!6146708 d!1925766)))

(assert (=> bs!1523961 (= (and (= (regOne!32690 (regTwo!32691 r!7292)) (regOne!32690 r!7292)) (= (regTwo!32690 (regTwo!32691 r!7292)) (regTwo!32690 r!7292))) (= lambda!335143 lambda!335127))))

(declare-fun bs!1523962 () Bool)

(assert (= bs!1523962 (and b!6146708 b!6146591)))

(assert (=> bs!1523962 (not (= lambda!335143 lambda!335136))))

(assert (=> bs!1523961 (not (= lambda!335143 lambda!335126))))

(declare-fun bs!1523963 () Bool)

(assert (= bs!1523963 (and b!6146708 b!6146584)))

(assert (=> bs!1523963 (= (and (= (regOne!32690 (regTwo!32691 r!7292)) (regOne!32690 (regOne!32691 r!7292))) (= (regTwo!32690 (regTwo!32691 r!7292)) (regTwo!32690 (regOne!32691 r!7292)))) (= lambda!335143 lambda!335137))))

(declare-fun bs!1523964 () Bool)

(assert (= bs!1523964 (and b!6146708 d!1925426)))

(assert (=> bs!1523964 (not (= lambda!335143 lambda!335070))))

(declare-fun bs!1523965 () Bool)

(assert (= bs!1523965 (and b!6146708 d!1925424)))

(assert (=> bs!1523965 (not (= lambda!335143 lambda!335065))))

(declare-fun bs!1523966 () Bool)

(assert (= bs!1523966 (and b!6146708 b!6145019)))

(assert (=> bs!1523966 (not (= lambda!335143 lambda!335019))))

(declare-fun bs!1523967 () Bool)

(assert (= bs!1523967 (and b!6146708 b!6146715)))

(assert (=> bs!1523967 (not (= lambda!335143 lambda!335142))))

(declare-fun bs!1523968 () Bool)

(assert (= bs!1523968 (and b!6146708 b!6145655)))

(assert (=> bs!1523968 (not (= lambda!335143 lambda!335077))))

(assert (=> bs!1523964 (= (and (= (regOne!32690 (regTwo!32691 r!7292)) (regOne!32690 r!7292)) (= (regTwo!32690 (regTwo!32691 r!7292)) (regTwo!32690 r!7292))) (= lambda!335143 lambda!335071))))

(assert (=> bs!1523966 (= (and (= (regOne!32690 (regTwo!32691 r!7292)) (regOne!32690 r!7292)) (= (regTwo!32690 (regTwo!32691 r!7292)) (regTwo!32690 r!7292))) (= lambda!335143 lambda!335020))))

(assert (=> b!6146708 true))

(assert (=> b!6146708 true))

(declare-fun bm!510913 () Bool)

(declare-fun call!510919 () Bool)

(assert (=> bm!510913 (= call!510919 (isEmpty!36399 s!2326))))

(declare-fun e!3745692 () Bool)

(declare-fun call!510918 () Bool)

(assert (=> b!6146708 (= e!3745692 call!510918)))

(declare-fun b!6146709 () Bool)

(declare-fun c!1106034 () Bool)

(assert (=> b!6146709 (= c!1106034 ((_ is ElementMatch!16089) (regTwo!32691 r!7292)))))

(declare-fun e!3745690 () Bool)

(declare-fun e!3745691 () Bool)

(assert (=> b!6146709 (= e!3745690 e!3745691)))

(declare-fun bm!510914 () Bool)

(declare-fun c!1106031 () Bool)

(assert (=> bm!510914 (= call!510918 (Exists!3159 (ite c!1106031 lambda!335142 lambda!335143)))))

(declare-fun b!6146710 () Bool)

(declare-fun e!3745688 () Bool)

(assert (=> b!6146710 (= e!3745688 e!3745692)))

(assert (=> b!6146710 (= c!1106031 ((_ is Star!16089) (regTwo!32691 r!7292)))))

(declare-fun b!6146711 () Bool)

(declare-fun e!3745693 () Bool)

(assert (=> b!6146711 (= e!3745693 call!510919)))

(declare-fun d!1925896 () Bool)

(declare-fun c!1106032 () Bool)

(assert (=> d!1925896 (= c!1106032 ((_ is EmptyExpr!16089) (regTwo!32691 r!7292)))))

(assert (=> d!1925896 (= (matchRSpec!3190 (regTwo!32691 r!7292) s!2326) e!3745693)))

(declare-fun b!6146712 () Bool)

(assert (=> b!6146712 (= e!3745691 (= s!2326 (Cons!64443 (c!1105579 (regTwo!32691 r!7292)) Nil!64443)))))

(declare-fun b!6146713 () Bool)

(assert (=> b!6146713 (= e!3745693 e!3745690)))

(declare-fun res!2546410 () Bool)

(assert (=> b!6146713 (= res!2546410 (not ((_ is EmptyLang!16089) (regTwo!32691 r!7292))))))

(assert (=> b!6146713 (=> (not res!2546410) (not e!3745690))))

(declare-fun b!6146714 () Bool)

(declare-fun c!1106033 () Bool)

(assert (=> b!6146714 (= c!1106033 ((_ is Union!16089) (regTwo!32691 r!7292)))))

(assert (=> b!6146714 (= e!3745691 e!3745688)))

(declare-fun e!3745689 () Bool)

(assert (=> b!6146715 (= e!3745689 call!510918)))

(declare-fun b!6146716 () Bool)

(declare-fun e!3745694 () Bool)

(assert (=> b!6146716 (= e!3745688 e!3745694)))

(declare-fun res!2546412 () Bool)

(assert (=> b!6146716 (= res!2546412 (matchRSpec!3190 (regOne!32691 (regTwo!32691 r!7292)) s!2326))))

(assert (=> b!6146716 (=> res!2546412 e!3745694)))

(declare-fun b!6146717 () Bool)

(assert (=> b!6146717 (= e!3745694 (matchRSpec!3190 (regTwo!32691 (regTwo!32691 r!7292)) s!2326))))

(declare-fun b!6146718 () Bool)

(declare-fun res!2546411 () Bool)

(assert (=> b!6146718 (=> res!2546411 e!3745689)))

(assert (=> b!6146718 (= res!2546411 call!510919)))

(assert (=> b!6146718 (= e!3745692 e!3745689)))

(assert (= (and d!1925896 c!1106032) b!6146711))

(assert (= (and d!1925896 (not c!1106032)) b!6146713))

(assert (= (and b!6146713 res!2546410) b!6146709))

(assert (= (and b!6146709 c!1106034) b!6146712))

(assert (= (and b!6146709 (not c!1106034)) b!6146714))

(assert (= (and b!6146714 c!1106033) b!6146716))

(assert (= (and b!6146714 (not c!1106033)) b!6146710))

(assert (= (and b!6146716 (not res!2546412)) b!6146717))

(assert (= (and b!6146710 c!1106031) b!6146718))

(assert (= (and b!6146710 (not c!1106031)) b!6146708))

(assert (= (and b!6146718 (not res!2546411)) b!6146715))

(assert (= (or b!6146715 b!6146708) bm!510914))

(assert (= (or b!6146711 b!6146718) bm!510913))

(assert (=> bm!510913 m!6986178))

(declare-fun m!6987090 () Bool)

(assert (=> bm!510914 m!6987090))

(declare-fun m!6987092 () Bool)

(assert (=> b!6146716 m!6987092))

(declare-fun m!6987094 () Bool)

(assert (=> b!6146717 m!6987094))

(assert (=> b!6145657 d!1925896))

(declare-fun d!1925898 () Bool)

(declare-fun c!1106035 () Bool)

(assert (=> d!1925898 (= c!1106035 (isEmpty!36399 (tail!11784 (t!378050 s!2326))))))

(declare-fun e!3745695 () Bool)

(assert (=> d!1925898 (= (matchZipper!2101 (derivationStepZipper!2062 lt!2333651 (head!12699 (t!378050 s!2326))) (tail!11784 (t!378050 s!2326))) e!3745695)))

(declare-fun b!6146719 () Bool)

(assert (=> b!6146719 (= e!3745695 (nullableZipper!1870 (derivationStepZipper!2062 lt!2333651 (head!12699 (t!378050 s!2326)))))))

(declare-fun b!6146720 () Bool)

(assert (=> b!6146720 (= e!3745695 (matchZipper!2101 (derivationStepZipper!2062 (derivationStepZipper!2062 lt!2333651 (head!12699 (t!378050 s!2326))) (head!12699 (tail!11784 (t!378050 s!2326)))) (tail!11784 (tail!11784 (t!378050 s!2326)))))))

(assert (= (and d!1925898 c!1106035) b!6146719))

(assert (= (and d!1925898 (not c!1106035)) b!6146720))

(assert (=> d!1925898 m!6986008))

(assert (=> d!1925898 m!6986822))

(assert (=> b!6146719 m!6986006))

(declare-fun m!6987096 () Bool)

(assert (=> b!6146719 m!6987096))

(assert (=> b!6146720 m!6986008))

(assert (=> b!6146720 m!6986826))

(assert (=> b!6146720 m!6986006))

(assert (=> b!6146720 m!6986826))

(declare-fun m!6987098 () Bool)

(assert (=> b!6146720 m!6987098))

(assert (=> b!6146720 m!6986008))

(assert (=> b!6146720 m!6986830))

(assert (=> b!6146720 m!6987098))

(assert (=> b!6146720 m!6986830))

(declare-fun m!6987100 () Bool)

(assert (=> b!6146720 m!6987100))

(assert (=> b!6145438 d!1925898))

(declare-fun bs!1523969 () Bool)

(declare-fun d!1925900 () Bool)

(assert (= bs!1523969 (and d!1925900 d!1925882)))

(declare-fun lambda!335144 () Int)

(assert (=> bs!1523969 (= lambda!335144 lambda!335141)))

(declare-fun bs!1523970 () Bool)

(assert (= bs!1523970 (and d!1925900 b!6145018)))

(assert (=> bs!1523970 (= (= (head!12699 (t!378050 s!2326)) (h!70891 s!2326)) (= lambda!335144 lambda!335021))))

(declare-fun bs!1523971 () Bool)

(assert (= bs!1523971 (and d!1925900 d!1925774)))

(assert (=> bs!1523971 (= lambda!335144 lambda!335130)))

(declare-fun bs!1523972 () Bool)

(assert (= bs!1523972 (and d!1925900 d!1925788)))

(assert (=> bs!1523972 (= lambda!335144 lambda!335131)))

(declare-fun bs!1523973 () Bool)

(assert (= bs!1523973 (and d!1925900 d!1925800)))

(assert (=> bs!1523973 (= lambda!335144 lambda!335132)))

(assert (=> d!1925900 true))

(assert (=> d!1925900 (= (derivationStepZipper!2062 lt!2333651 (head!12699 (t!378050 s!2326))) (flatMap!1594 lt!2333651 lambda!335144))))

(declare-fun bs!1523974 () Bool)

(assert (= bs!1523974 d!1925900))

(declare-fun m!6987102 () Bool)

(assert (=> bs!1523974 m!6987102))

(assert (=> b!6145438 d!1925900))

(assert (=> b!6145438 d!1925776))

(assert (=> b!6145438 d!1925778))

(declare-fun b!6146721 () Bool)

(declare-fun c!1106040 () Bool)

(assert (=> b!6146721 (= c!1106040 ((_ is Star!16089) (ite c!1105736 (regTwo!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))))))))

(declare-fun e!3745697 () (InoxSet Context!10946))

(declare-fun e!3745700 () (InoxSet Context!10946))

(assert (=> b!6146721 (= e!3745697 e!3745700)))

(declare-fun b!6146722 () Bool)

(declare-fun call!510923 () (InoxSet Context!10946))

(assert (=> b!6146722 (= e!3745700 call!510923)))

(declare-fun b!6146723 () Bool)

(declare-fun e!3745696 () (InoxSet Context!10946))

(declare-fun call!510925 () (InoxSet Context!10946))

(declare-fun call!510924 () (InoxSet Context!10946))

(assert (=> b!6146723 (= e!3745696 ((_ map or) call!510925 call!510924))))

(declare-fun b!6146724 () Bool)

(declare-fun e!3745698 () (InoxSet Context!10946))

(declare-fun call!510922 () (InoxSet Context!10946))

(assert (=> b!6146724 (= e!3745698 ((_ map or) call!510924 call!510922))))

(declare-fun b!6146725 () Bool)

(declare-fun e!3745701 () Bool)

(assert (=> b!6146725 (= e!3745701 (nullable!6082 (regOne!32690 (ite c!1105736 (regTwo!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343))))))))))

(declare-fun bm!510915 () Bool)

(declare-fun call!510921 () List!64566)

(declare-fun c!1106037 () Bool)

(declare-fun c!1106038 () Bool)

(declare-fun c!1106036 () Bool)

(assert (=> bm!510915 (= call!510925 (derivationStepZipperDown!1337 (ite c!1106037 (regOne!32691 (ite c!1105736 (regTwo!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))))) (ite c!1106036 (regTwo!32690 (ite c!1105736 (regTwo!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))))) (ite c!1106038 (regOne!32690 (ite c!1105736 (regTwo!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))))) (reg!16418 (ite c!1105736 (regTwo!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343))))))))) (ite (or c!1106037 c!1106036) (ite c!1105736 lt!2333656 (Context!10947 call!510693)) (Context!10947 call!510921)) (h!70891 s!2326)))))

(declare-fun bm!510916 () Bool)

(assert (=> bm!510916 (= call!510922 call!510925)))

(declare-fun b!6146726 () Bool)

(assert (=> b!6146726 (= e!3745697 call!510923)))

(declare-fun e!3745699 () (InoxSet Context!10946))

(declare-fun b!6146727 () Bool)

(assert (=> b!6146727 (= e!3745699 (store ((as const (Array Context!10946 Bool)) false) (ite c!1105736 lt!2333656 (Context!10947 call!510693)) true))))

(declare-fun b!6146729 () Bool)

(assert (=> b!6146729 (= e!3745699 e!3745696)))

(assert (=> b!6146729 (= c!1106037 ((_ is Union!16089) (ite c!1105736 (regTwo!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))))))))

(declare-fun call!510920 () List!64566)

(declare-fun bm!510917 () Bool)

(assert (=> bm!510917 (= call!510920 ($colon$colon!1966 (exprs!5973 (ite c!1105736 lt!2333656 (Context!10947 call!510693))) (ite (or c!1106036 c!1106038) (regTwo!32690 (ite c!1105736 (regTwo!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))))) (ite c!1105736 (regTwo!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343))))))))))

(declare-fun bm!510918 () Bool)

(assert (=> bm!510918 (= call!510923 call!510922)))

(declare-fun bm!510919 () Bool)

(assert (=> bm!510919 (= call!510921 call!510920)))

(declare-fun bm!510920 () Bool)

(assert (=> bm!510920 (= call!510924 (derivationStepZipperDown!1337 (ite c!1106037 (regTwo!32691 (ite c!1105736 (regTwo!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))))) (regOne!32690 (ite c!1105736 (regTwo!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343))))))) (ite c!1106037 (ite c!1105736 lt!2333656 (Context!10947 call!510693)) (Context!10947 call!510920)) (h!70891 s!2326)))))

(declare-fun b!6146730 () Bool)

(assert (=> b!6146730 (= e!3745698 e!3745697)))

(assert (=> b!6146730 (= c!1106038 ((_ is Concat!24934) (ite c!1105736 (regTwo!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))))))))

(declare-fun b!6146731 () Bool)

(assert (=> b!6146731 (= c!1106036 e!3745701)))

(declare-fun res!2546413 () Bool)

(assert (=> b!6146731 (=> (not res!2546413) (not e!3745701))))

(assert (=> b!6146731 (= res!2546413 ((_ is Concat!24934) (ite c!1105736 (regTwo!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))))))))

(assert (=> b!6146731 (= e!3745696 e!3745698)))

(declare-fun b!6146728 () Bool)

(assert (=> b!6146728 (= e!3745700 ((as const (Array Context!10946 Bool)) false))))

(declare-fun d!1925902 () Bool)

(declare-fun c!1106039 () Bool)

(assert (=> d!1925902 (= c!1106039 (and ((_ is ElementMatch!16089) (ite c!1105736 (regTwo!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))))) (= (c!1105579 (ite c!1105736 (regTwo!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))))) (h!70891 s!2326))))))

(assert (=> d!1925902 (= (derivationStepZipperDown!1337 (ite c!1105736 (regTwo!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343))))) (ite c!1105736 lt!2333656 (Context!10947 call!510693)) (h!70891 s!2326)) e!3745699)))

(assert (= (and d!1925902 c!1106039) b!6146727))

(assert (= (and d!1925902 (not c!1106039)) b!6146729))

(assert (= (and b!6146729 c!1106037) b!6146723))

(assert (= (and b!6146729 (not c!1106037)) b!6146731))

(assert (= (and b!6146731 res!2546413) b!6146725))

(assert (= (and b!6146731 c!1106036) b!6146724))

(assert (= (and b!6146731 (not c!1106036)) b!6146730))

(assert (= (and b!6146730 c!1106038) b!6146726))

(assert (= (and b!6146730 (not c!1106038)) b!6146721))

(assert (= (and b!6146721 c!1106040) b!6146722))

(assert (= (and b!6146721 (not c!1106040)) b!6146728))

(assert (= (or b!6146726 b!6146722) bm!510919))

(assert (= (or b!6146726 b!6146722) bm!510918))

(assert (= (or b!6146724 bm!510919) bm!510917))

(assert (= (or b!6146724 bm!510918) bm!510916))

(assert (= (or b!6146723 b!6146724) bm!510920))

(assert (= (or b!6146723 bm!510916) bm!510915))

(declare-fun m!6987104 () Bool)

(assert (=> b!6146727 m!6987104))

(declare-fun m!6987106 () Bool)

(assert (=> bm!510915 m!6987106))

(declare-fun m!6987108 () Bool)

(assert (=> bm!510920 m!6987108))

(declare-fun m!6987110 () Bool)

(assert (=> bm!510917 m!6987110))

(declare-fun m!6987112 () Bool)

(assert (=> b!6146725 m!6987112))

(assert (=> bm!510693 d!1925902))

(assert (=> b!6145695 d!1925870))

(assert (=> b!6145695 d!1925808))

(declare-fun b!6146732 () Bool)

(declare-fun e!3745706 () Bool)

(declare-fun lt!2333796 () Bool)

(declare-fun call!510926 () Bool)

(assert (=> b!6146732 (= e!3745706 (= lt!2333796 call!510926))))

(declare-fun b!6146733 () Bool)

(declare-fun res!2546421 () Bool)

(declare-fun e!3745708 () Bool)

(assert (=> b!6146733 (=> res!2546421 e!3745708)))

(declare-fun e!3745704 () Bool)

(assert (=> b!6146733 (= res!2546421 e!3745704)))

(declare-fun res!2546419 () Bool)

(assert (=> b!6146733 (=> (not res!2546419) (not e!3745704))))

(assert (=> b!6146733 (= res!2546419 lt!2333796)))

(declare-fun b!6146734 () Bool)

(declare-fun e!3745707 () Bool)

(assert (=> b!6146734 (= e!3745707 (matchR!8272 (derivativeStep!4809 (regTwo!32690 r!7292) (head!12699 (_2!36371 (get!22235 lt!2333740)))) (tail!11784 (_2!36371 (get!22235 lt!2333740)))))))

(declare-fun b!6146735 () Bool)

(declare-fun res!2546416 () Bool)

(declare-fun e!3745705 () Bool)

(assert (=> b!6146735 (=> res!2546416 e!3745705)))

(assert (=> b!6146735 (= res!2546416 (not (isEmpty!36399 (tail!11784 (_2!36371 (get!22235 lt!2333740))))))))

(declare-fun b!6146736 () Bool)

(assert (=> b!6146736 (= e!3745707 (nullable!6082 (regTwo!32690 r!7292)))))

(declare-fun b!6146737 () Bool)

(declare-fun res!2546420 () Bool)

(assert (=> b!6146737 (=> (not res!2546420) (not e!3745704))))

(assert (=> b!6146737 (= res!2546420 (not call!510926))))

(declare-fun b!6146738 () Bool)

(declare-fun res!2546415 () Bool)

(assert (=> b!6146738 (=> res!2546415 e!3745708)))

(assert (=> b!6146738 (= res!2546415 (not ((_ is ElementMatch!16089) (regTwo!32690 r!7292))))))

(declare-fun e!3745702 () Bool)

(assert (=> b!6146738 (= e!3745702 e!3745708)))

(declare-fun d!1925904 () Bool)

(assert (=> d!1925904 e!3745706))

(declare-fun c!1106043 () Bool)

(assert (=> d!1925904 (= c!1106043 ((_ is EmptyExpr!16089) (regTwo!32690 r!7292)))))

(assert (=> d!1925904 (= lt!2333796 e!3745707)))

(declare-fun c!1106042 () Bool)

(assert (=> d!1925904 (= c!1106042 (isEmpty!36399 (_2!36371 (get!22235 lt!2333740))))))

(assert (=> d!1925904 (validRegex!7825 (regTwo!32690 r!7292))))

(assert (=> d!1925904 (= (matchR!8272 (regTwo!32690 r!7292) (_2!36371 (get!22235 lt!2333740))) lt!2333796)))

(declare-fun b!6146739 () Bool)

(assert (=> b!6146739 (= e!3745702 (not lt!2333796))))

(declare-fun b!6146740 () Bool)

(declare-fun res!2546414 () Bool)

(assert (=> b!6146740 (=> (not res!2546414) (not e!3745704))))

(assert (=> b!6146740 (= res!2546414 (isEmpty!36399 (tail!11784 (_2!36371 (get!22235 lt!2333740)))))))

(declare-fun b!6146741 () Bool)

(assert (=> b!6146741 (= e!3745706 e!3745702)))

(declare-fun c!1106041 () Bool)

(assert (=> b!6146741 (= c!1106041 ((_ is EmptyLang!16089) (regTwo!32690 r!7292)))))

(declare-fun bm!510921 () Bool)

(assert (=> bm!510921 (= call!510926 (isEmpty!36399 (_2!36371 (get!22235 lt!2333740))))))

(declare-fun b!6146742 () Bool)

(declare-fun e!3745703 () Bool)

(assert (=> b!6146742 (= e!3745708 e!3745703)))

(declare-fun res!2546418 () Bool)

(assert (=> b!6146742 (=> (not res!2546418) (not e!3745703))))

(assert (=> b!6146742 (= res!2546418 (not lt!2333796))))

(declare-fun b!6146743 () Bool)

(assert (=> b!6146743 (= e!3745705 (not (= (head!12699 (_2!36371 (get!22235 lt!2333740))) (c!1105579 (regTwo!32690 r!7292)))))))

(declare-fun b!6146744 () Bool)

(assert (=> b!6146744 (= e!3745704 (= (head!12699 (_2!36371 (get!22235 lt!2333740))) (c!1105579 (regTwo!32690 r!7292))))))

(declare-fun b!6146745 () Bool)

(assert (=> b!6146745 (= e!3745703 e!3745705)))

(declare-fun res!2546417 () Bool)

(assert (=> b!6146745 (=> res!2546417 e!3745705)))

(assert (=> b!6146745 (= res!2546417 call!510926)))

(assert (= (and d!1925904 c!1106042) b!6146736))

(assert (= (and d!1925904 (not c!1106042)) b!6146734))

(assert (= (and d!1925904 c!1106043) b!6146732))

(assert (= (and d!1925904 (not c!1106043)) b!6146741))

(assert (= (and b!6146741 c!1106041) b!6146739))

(assert (= (and b!6146741 (not c!1106041)) b!6146738))

(assert (= (and b!6146738 (not res!2546415)) b!6146733))

(assert (= (and b!6146733 res!2546419) b!6146737))

(assert (= (and b!6146737 res!2546420) b!6146740))

(assert (= (and b!6146740 res!2546414) b!6146744))

(assert (= (and b!6146733 (not res!2546421)) b!6146742))

(assert (= (and b!6146742 res!2546418) b!6146745))

(assert (= (and b!6146745 (not res!2546417)) b!6146735))

(assert (= (and b!6146735 (not res!2546416)) b!6146743))

(assert (= (or b!6146732 b!6146737 b!6146745) bm!510921))

(declare-fun m!6987114 () Bool)

(assert (=> b!6146744 m!6987114))

(assert (=> b!6146736 m!6986786))

(declare-fun m!6987116 () Bool)

(assert (=> d!1925904 m!6987116))

(assert (=> d!1925904 m!6986788))

(assert (=> b!6146734 m!6987114))

(assert (=> b!6146734 m!6987114))

(declare-fun m!6987118 () Bool)

(assert (=> b!6146734 m!6987118))

(declare-fun m!6987120 () Bool)

(assert (=> b!6146734 m!6987120))

(assert (=> b!6146734 m!6987118))

(assert (=> b!6146734 m!6987120))

(declare-fun m!6987122 () Bool)

(assert (=> b!6146734 m!6987122))

(assert (=> b!6146740 m!6987120))

(assert (=> b!6146740 m!6987120))

(declare-fun m!6987124 () Bool)

(assert (=> b!6146740 m!6987124))

(assert (=> bm!510921 m!6987116))

(assert (=> b!6146735 m!6987120))

(assert (=> b!6146735 m!6987120))

(assert (=> b!6146735 m!6987124))

(assert (=> b!6146743 m!6987114))

(assert (=> b!6145592 d!1925904))

(assert (=> b!6145592 d!1925792))

(declare-fun d!1925906 () Bool)

(assert (=> d!1925906 (= (nullable!6082 (reg!16418 r!7292)) (nullableFct!2046 (reg!16418 r!7292)))))

(declare-fun bs!1523975 () Bool)

(assert (= bs!1523975 d!1925906))

(declare-fun m!6987126 () Bool)

(assert (=> bs!1523975 m!6987126))

(assert (=> b!6145755 d!1925906))

(declare-fun d!1925908 () Bool)

(declare-fun c!1106044 () Bool)

(assert (=> d!1925908 (= c!1106044 (isEmpty!36399 (tail!11784 (t!378050 s!2326))))))

(declare-fun e!3745709 () Bool)

(assert (=> d!1925908 (= (matchZipper!2101 (derivationStepZipper!2062 lt!2333671 (head!12699 (t!378050 s!2326))) (tail!11784 (t!378050 s!2326))) e!3745709)))

(declare-fun b!6146746 () Bool)

(assert (=> b!6146746 (= e!3745709 (nullableZipper!1870 (derivationStepZipper!2062 lt!2333671 (head!12699 (t!378050 s!2326)))))))

(declare-fun b!6146747 () Bool)

(assert (=> b!6146747 (= e!3745709 (matchZipper!2101 (derivationStepZipper!2062 (derivationStepZipper!2062 lt!2333671 (head!12699 (t!378050 s!2326))) (head!12699 (tail!11784 (t!378050 s!2326)))) (tail!11784 (tail!11784 (t!378050 s!2326)))))))

(assert (= (and d!1925908 c!1106044) b!6146746))

(assert (= (and d!1925908 (not c!1106044)) b!6146747))

(assert (=> d!1925908 m!6986008))

(assert (=> d!1925908 m!6986822))

(assert (=> b!6146746 m!6986162))

(declare-fun m!6987128 () Bool)

(assert (=> b!6146746 m!6987128))

(assert (=> b!6146747 m!6986008))

(assert (=> b!6146747 m!6986826))

(assert (=> b!6146747 m!6986162))

(assert (=> b!6146747 m!6986826))

(declare-fun m!6987130 () Bool)

(assert (=> b!6146747 m!6987130))

(assert (=> b!6146747 m!6986008))

(assert (=> b!6146747 m!6986830))

(assert (=> b!6146747 m!6987130))

(assert (=> b!6146747 m!6986830))

(declare-fun m!6987132 () Bool)

(assert (=> b!6146747 m!6987132))

(assert (=> b!6145612 d!1925908))

(declare-fun bs!1523976 () Bool)

(declare-fun d!1925910 () Bool)

(assert (= bs!1523976 (and d!1925910 d!1925882)))

(declare-fun lambda!335145 () Int)

(assert (=> bs!1523976 (= lambda!335145 lambda!335141)))

(declare-fun bs!1523977 () Bool)

(assert (= bs!1523977 (and d!1925910 b!6145018)))

(assert (=> bs!1523977 (= (= (head!12699 (t!378050 s!2326)) (h!70891 s!2326)) (= lambda!335145 lambda!335021))))

(declare-fun bs!1523978 () Bool)

(assert (= bs!1523978 (and d!1925910 d!1925774)))

(assert (=> bs!1523978 (= lambda!335145 lambda!335130)))

(declare-fun bs!1523979 () Bool)

(assert (= bs!1523979 (and d!1925910 d!1925900)))

(assert (=> bs!1523979 (= lambda!335145 lambda!335144)))

(declare-fun bs!1523980 () Bool)

(assert (= bs!1523980 (and d!1925910 d!1925788)))

(assert (=> bs!1523980 (= lambda!335145 lambda!335131)))

(declare-fun bs!1523981 () Bool)

(assert (= bs!1523981 (and d!1925910 d!1925800)))

(assert (=> bs!1523981 (= lambda!335145 lambda!335132)))

(assert (=> d!1925910 true))

(assert (=> d!1925910 (= (derivationStepZipper!2062 lt!2333671 (head!12699 (t!378050 s!2326))) (flatMap!1594 lt!2333671 lambda!335145))))

(declare-fun bs!1523982 () Bool)

(assert (= bs!1523982 d!1925910))

(declare-fun m!6987134 () Bool)

(assert (=> bs!1523982 m!6987134))

(assert (=> b!6145612 d!1925910))

(assert (=> b!6145612 d!1925776))

(assert (=> b!6145612 d!1925778))

(declare-fun b!6146748 () Bool)

(declare-fun c!1106049 () Bool)

(assert (=> b!6146748 (= c!1106049 ((_ is Star!16089) (ite c!1105776 (regTwo!32691 (regTwo!32691 (regOne!32690 r!7292))) (regOne!32690 (regTwo!32691 (regOne!32690 r!7292))))))))

(declare-fun e!3745711 () (InoxSet Context!10946))

(declare-fun e!3745714 () (InoxSet Context!10946))

(assert (=> b!6146748 (= e!3745711 e!3745714)))

(declare-fun b!6146749 () Bool)

(declare-fun call!510930 () (InoxSet Context!10946))

(assert (=> b!6146749 (= e!3745714 call!510930)))

(declare-fun b!6146750 () Bool)

(declare-fun e!3745710 () (InoxSet Context!10946))

(declare-fun call!510932 () (InoxSet Context!10946))

(declare-fun call!510931 () (InoxSet Context!10946))

(assert (=> b!6146750 (= e!3745710 ((_ map or) call!510932 call!510931))))

(declare-fun b!6146751 () Bool)

(declare-fun e!3745712 () (InoxSet Context!10946))

(declare-fun call!510929 () (InoxSet Context!10946))

(assert (=> b!6146751 (= e!3745712 ((_ map or) call!510931 call!510929))))

(declare-fun b!6146752 () Bool)

(declare-fun e!3745715 () Bool)

(assert (=> b!6146752 (= e!3745715 (nullable!6082 (regOne!32690 (ite c!1105776 (regTwo!32691 (regTwo!32691 (regOne!32690 r!7292))) (regOne!32690 (regTwo!32691 (regOne!32690 r!7292)))))))))

(declare-fun c!1106047 () Bool)

(declare-fun c!1106046 () Bool)

(declare-fun bm!510922 () Bool)

(declare-fun c!1106045 () Bool)

(declare-fun call!510928 () List!64566)

(assert (=> bm!510922 (= call!510932 (derivationStepZipperDown!1337 (ite c!1106046 (regOne!32691 (ite c!1105776 (regTwo!32691 (regTwo!32691 (regOne!32690 r!7292))) (regOne!32690 (regTwo!32691 (regOne!32690 r!7292))))) (ite c!1106045 (regTwo!32690 (ite c!1105776 (regTwo!32691 (regTwo!32691 (regOne!32690 r!7292))) (regOne!32690 (regTwo!32691 (regOne!32690 r!7292))))) (ite c!1106047 (regOne!32690 (ite c!1105776 (regTwo!32691 (regTwo!32691 (regOne!32690 r!7292))) (regOne!32690 (regTwo!32691 (regOne!32690 r!7292))))) (reg!16418 (ite c!1105776 (regTwo!32691 (regTwo!32691 (regOne!32690 r!7292))) (regOne!32690 (regTwo!32691 (regOne!32690 r!7292)))))))) (ite (or c!1106046 c!1106045) (ite c!1105776 lt!2333656 (Context!10947 call!510710)) (Context!10947 call!510928)) (h!70891 s!2326)))))

(declare-fun bm!510923 () Bool)

(assert (=> bm!510923 (= call!510929 call!510932)))

(declare-fun b!6146753 () Bool)

(assert (=> b!6146753 (= e!3745711 call!510930)))

(declare-fun e!3745713 () (InoxSet Context!10946))

(declare-fun b!6146754 () Bool)

(assert (=> b!6146754 (= e!3745713 (store ((as const (Array Context!10946 Bool)) false) (ite c!1105776 lt!2333656 (Context!10947 call!510710)) true))))

(declare-fun b!6146756 () Bool)

(assert (=> b!6146756 (= e!3745713 e!3745710)))

(assert (=> b!6146756 (= c!1106046 ((_ is Union!16089) (ite c!1105776 (regTwo!32691 (regTwo!32691 (regOne!32690 r!7292))) (regOne!32690 (regTwo!32691 (regOne!32690 r!7292))))))))

(declare-fun call!510927 () List!64566)

(declare-fun bm!510924 () Bool)

(assert (=> bm!510924 (= call!510927 ($colon$colon!1966 (exprs!5973 (ite c!1105776 lt!2333656 (Context!10947 call!510710))) (ite (or c!1106045 c!1106047) (regTwo!32690 (ite c!1105776 (regTwo!32691 (regTwo!32691 (regOne!32690 r!7292))) (regOne!32690 (regTwo!32691 (regOne!32690 r!7292))))) (ite c!1105776 (regTwo!32691 (regTwo!32691 (regOne!32690 r!7292))) (regOne!32690 (regTwo!32691 (regOne!32690 r!7292)))))))))

(declare-fun bm!510925 () Bool)

(assert (=> bm!510925 (= call!510930 call!510929)))

(declare-fun bm!510926 () Bool)

(assert (=> bm!510926 (= call!510928 call!510927)))

(declare-fun bm!510927 () Bool)

(assert (=> bm!510927 (= call!510931 (derivationStepZipperDown!1337 (ite c!1106046 (regTwo!32691 (ite c!1105776 (regTwo!32691 (regTwo!32691 (regOne!32690 r!7292))) (regOne!32690 (regTwo!32691 (regOne!32690 r!7292))))) (regOne!32690 (ite c!1105776 (regTwo!32691 (regTwo!32691 (regOne!32690 r!7292))) (regOne!32690 (regTwo!32691 (regOne!32690 r!7292)))))) (ite c!1106046 (ite c!1105776 lt!2333656 (Context!10947 call!510710)) (Context!10947 call!510927)) (h!70891 s!2326)))))

(declare-fun b!6146757 () Bool)

(assert (=> b!6146757 (= e!3745712 e!3745711)))

(assert (=> b!6146757 (= c!1106047 ((_ is Concat!24934) (ite c!1105776 (regTwo!32691 (regTwo!32691 (regOne!32690 r!7292))) (regOne!32690 (regTwo!32691 (regOne!32690 r!7292))))))))

(declare-fun b!6146758 () Bool)

(assert (=> b!6146758 (= c!1106045 e!3745715)))

(declare-fun res!2546422 () Bool)

(assert (=> b!6146758 (=> (not res!2546422) (not e!3745715))))

(assert (=> b!6146758 (= res!2546422 ((_ is Concat!24934) (ite c!1105776 (regTwo!32691 (regTwo!32691 (regOne!32690 r!7292))) (regOne!32690 (regTwo!32691 (regOne!32690 r!7292))))))))

(assert (=> b!6146758 (= e!3745710 e!3745712)))

(declare-fun b!6146755 () Bool)

(assert (=> b!6146755 (= e!3745714 ((as const (Array Context!10946 Bool)) false))))

(declare-fun c!1106048 () Bool)

(declare-fun d!1925912 () Bool)

(assert (=> d!1925912 (= c!1106048 (and ((_ is ElementMatch!16089) (ite c!1105776 (regTwo!32691 (regTwo!32691 (regOne!32690 r!7292))) (regOne!32690 (regTwo!32691 (regOne!32690 r!7292))))) (= (c!1105579 (ite c!1105776 (regTwo!32691 (regTwo!32691 (regOne!32690 r!7292))) (regOne!32690 (regTwo!32691 (regOne!32690 r!7292))))) (h!70891 s!2326))))))

(assert (=> d!1925912 (= (derivationStepZipperDown!1337 (ite c!1105776 (regTwo!32691 (regTwo!32691 (regOne!32690 r!7292))) (regOne!32690 (regTwo!32691 (regOne!32690 r!7292)))) (ite c!1105776 lt!2333656 (Context!10947 call!510710)) (h!70891 s!2326)) e!3745713)))

(assert (= (and d!1925912 c!1106048) b!6146754))

(assert (= (and d!1925912 (not c!1106048)) b!6146756))

(assert (= (and b!6146756 c!1106046) b!6146750))

(assert (= (and b!6146756 (not c!1106046)) b!6146758))

(assert (= (and b!6146758 res!2546422) b!6146752))

(assert (= (and b!6146758 c!1106045) b!6146751))

(assert (= (and b!6146758 (not c!1106045)) b!6146757))

(assert (= (and b!6146757 c!1106047) b!6146753))

(assert (= (and b!6146757 (not c!1106047)) b!6146748))

(assert (= (and b!6146748 c!1106049) b!6146749))

(assert (= (and b!6146748 (not c!1106049)) b!6146755))

(assert (= (or b!6146753 b!6146749) bm!510926))

(assert (= (or b!6146753 b!6146749) bm!510925))

(assert (= (or b!6146751 bm!510926) bm!510924))

(assert (= (or b!6146751 bm!510925) bm!510923))

(assert (= (or b!6146750 b!6146751) bm!510927))

(assert (= (or b!6146750 bm!510923) bm!510922))

(declare-fun m!6987136 () Bool)

(assert (=> b!6146754 m!6987136))

(declare-fun m!6987138 () Bool)

(assert (=> bm!510922 m!6987138))

(declare-fun m!6987140 () Bool)

(assert (=> bm!510927 m!6987140))

(declare-fun m!6987142 () Bool)

(assert (=> bm!510924 m!6987142))

(declare-fun m!6987144 () Bool)

(assert (=> b!6146752 m!6987144))

(assert (=> bm!510710 d!1925912))

(declare-fun d!1925914 () Bool)

(declare-fun res!2546423 () Bool)

(declare-fun e!3745716 () Bool)

(assert (=> d!1925914 (=> res!2546423 e!3745716)))

(assert (=> d!1925914 (= res!2546423 ((_ is Nil!64442) (exprs!5973 (Context!10947 (Cons!64442 (regTwo!32691 (regOne!32690 r!7292)) (t!378049 (exprs!5973 (h!70892 zl!343))))))))))

(assert (=> d!1925914 (= (forall!15210 (exprs!5973 (Context!10947 (Cons!64442 (regTwo!32691 (regOne!32690 r!7292)) (t!378049 (exprs!5973 (h!70892 zl!343)))))) lambda!335072) e!3745716)))

(declare-fun b!6146759 () Bool)

(declare-fun e!3745717 () Bool)

(assert (=> b!6146759 (= e!3745716 e!3745717)))

(declare-fun res!2546424 () Bool)

(assert (=> b!6146759 (=> (not res!2546424) (not e!3745717))))

(assert (=> b!6146759 (= res!2546424 (dynLambda!25400 lambda!335072 (h!70890 (exprs!5973 (Context!10947 (Cons!64442 (regTwo!32691 (regOne!32690 r!7292)) (t!378049 (exprs!5973 (h!70892 zl!343)))))))))))

(declare-fun b!6146760 () Bool)

(assert (=> b!6146760 (= e!3745717 (forall!15210 (t!378049 (exprs!5973 (Context!10947 (Cons!64442 (regTwo!32691 (regOne!32690 r!7292)) (t!378049 (exprs!5973 (h!70892 zl!343))))))) lambda!335072))))

(assert (= (and d!1925914 (not res!2546423)) b!6146759))

(assert (= (and b!6146759 res!2546424) b!6146760))

(declare-fun b_lambda!233949 () Bool)

(assert (=> (not b_lambda!233949) (not b!6146759)))

(declare-fun m!6987146 () Bool)

(assert (=> b!6146759 m!6987146))

(declare-fun m!6987148 () Bool)

(assert (=> b!6146760 m!6987148))

(assert (=> d!1925434 d!1925914))

(declare-fun bs!1523983 () Bool)

(declare-fun d!1925916 () Bool)

(assert (= bs!1523983 (and d!1925916 d!1925744)))

(declare-fun lambda!335146 () Int)

(assert (=> bs!1523983 (= lambda!335146 lambda!335121)))

(declare-fun bs!1523984 () Bool)

(assert (= bs!1523984 (and d!1925916 d!1925818)))

(assert (=> bs!1523984 (= lambda!335146 lambda!335134)))

(declare-fun bs!1523985 () Bool)

(assert (= bs!1523985 (and d!1925916 d!1925848)))

(assert (=> bs!1523985 (= lambda!335146 lambda!335139)))

(declare-fun bs!1523986 () Bool)

(assert (= bs!1523986 (and d!1925916 d!1925850)))

(assert (=> bs!1523986 (= lambda!335146 lambda!335140)))

(assert (=> d!1925916 (= (nullableZipper!1870 lt!2333666) (exists!2434 lt!2333666 lambda!335146))))

(declare-fun bs!1523987 () Bool)

(assert (= bs!1523987 d!1925916))

(declare-fun m!6987150 () Bool)

(assert (=> bs!1523987 m!6987150))

(assert (=> b!6145565 d!1925916))

(declare-fun d!1925918 () Bool)

(assert (=> d!1925918 (= ($colon$colon!1966 (exprs!5973 lt!2333656) (ite (or c!1105780 c!1105782) (regTwo!32690 (regOne!32691 (regOne!32690 r!7292))) (regOne!32691 (regOne!32690 r!7292)))) (Cons!64442 (ite (or c!1105780 c!1105782) (regTwo!32690 (regOne!32691 (regOne!32690 r!7292))) (regOne!32691 (regOne!32690 r!7292))) (exprs!5973 lt!2333656)))))

(assert (=> bm!510713 d!1925918))

(declare-fun d!1925920 () Bool)

(assert (=> d!1925920 (= (nullable!6082 r!7292) (nullableFct!2046 r!7292))))

(declare-fun bs!1523988 () Bool)

(assert (= bs!1523988 d!1925920))

(declare-fun m!6987152 () Bool)

(assert (=> bs!1523988 m!6987152))

(assert (=> b!6145691 d!1925920))

(declare-fun b!6146761 () Bool)

(declare-fun e!3745723 () Bool)

(declare-fun e!3745719 () Bool)

(assert (=> b!6146761 (= e!3745723 e!3745719)))

(declare-fun c!1106051 () Bool)

(assert (=> b!6146761 (= c!1106051 ((_ is Union!16089) (ite c!1105791 (regTwo!32691 r!7292) (regTwo!32690 r!7292))))))

(declare-fun d!1925922 () Bool)

(declare-fun res!2546427 () Bool)

(declare-fun e!3745722 () Bool)

(assert (=> d!1925922 (=> res!2546427 e!3745722)))

(assert (=> d!1925922 (= res!2546427 ((_ is ElementMatch!16089) (ite c!1105791 (regTwo!32691 r!7292) (regTwo!32690 r!7292))))))

(assert (=> d!1925922 (= (validRegex!7825 (ite c!1105791 (regTwo!32691 r!7292) (regTwo!32690 r!7292))) e!3745722)))

(declare-fun bm!510928 () Bool)

(declare-fun call!510933 () Bool)

(declare-fun call!510934 () Bool)

(assert (=> bm!510928 (= call!510933 call!510934)))

(declare-fun b!6146762 () Bool)

(declare-fun e!3745724 () Bool)

(assert (=> b!6146762 (= e!3745724 call!510934)))

(declare-fun b!6146763 () Bool)

(declare-fun e!3745720 () Bool)

(declare-fun call!510935 () Bool)

(assert (=> b!6146763 (= e!3745720 call!510935)))

(declare-fun c!1106050 () Bool)

(declare-fun bm!510929 () Bool)

(assert (=> bm!510929 (= call!510934 (validRegex!7825 (ite c!1106050 (reg!16418 (ite c!1105791 (regTwo!32691 r!7292) (regTwo!32690 r!7292))) (ite c!1106051 (regOne!32691 (ite c!1105791 (regTwo!32691 r!7292) (regTwo!32690 r!7292))) (regOne!32690 (ite c!1105791 (regTwo!32691 r!7292) (regTwo!32690 r!7292)))))))))

(declare-fun bm!510930 () Bool)

(assert (=> bm!510930 (= call!510935 (validRegex!7825 (ite c!1106051 (regTwo!32691 (ite c!1105791 (regTwo!32691 r!7292) (regTwo!32690 r!7292))) (regTwo!32690 (ite c!1105791 (regTwo!32691 r!7292) (regTwo!32690 r!7292))))))))

(declare-fun b!6146764 () Bool)

(assert (=> b!6146764 (= e!3745722 e!3745723)))

(assert (=> b!6146764 (= c!1106050 ((_ is Star!16089) (ite c!1105791 (regTwo!32691 r!7292) (regTwo!32690 r!7292))))))

(declare-fun b!6146765 () Bool)

(declare-fun e!3745721 () Bool)

(assert (=> b!6146765 (= e!3745721 call!510935)))

(declare-fun b!6146766 () Bool)

(declare-fun e!3745718 () Bool)

(assert (=> b!6146766 (= e!3745718 e!3745721)))

(declare-fun res!2546425 () Bool)

(assert (=> b!6146766 (=> (not res!2546425) (not e!3745721))))

(assert (=> b!6146766 (= res!2546425 call!510933)))

(declare-fun b!6146767 () Bool)

(assert (=> b!6146767 (= e!3745723 e!3745724)))

(declare-fun res!2546429 () Bool)

(assert (=> b!6146767 (= res!2546429 (not (nullable!6082 (reg!16418 (ite c!1105791 (regTwo!32691 r!7292) (regTwo!32690 r!7292))))))))

(assert (=> b!6146767 (=> (not res!2546429) (not e!3745724))))

(declare-fun b!6146768 () Bool)

(declare-fun res!2546426 () Bool)

(assert (=> b!6146768 (=> res!2546426 e!3745718)))

(assert (=> b!6146768 (= res!2546426 (not ((_ is Concat!24934) (ite c!1105791 (regTwo!32691 r!7292) (regTwo!32690 r!7292)))))))

(assert (=> b!6146768 (= e!3745719 e!3745718)))

(declare-fun b!6146769 () Bool)

(declare-fun res!2546428 () Bool)

(assert (=> b!6146769 (=> (not res!2546428) (not e!3745720))))

(assert (=> b!6146769 (= res!2546428 call!510933)))

(assert (=> b!6146769 (= e!3745719 e!3745720)))

(assert (= (and d!1925922 (not res!2546427)) b!6146764))

(assert (= (and b!6146764 c!1106050) b!6146767))

(assert (= (and b!6146764 (not c!1106050)) b!6146761))

(assert (= (and b!6146767 res!2546429) b!6146762))

(assert (= (and b!6146761 c!1106051) b!6146769))

(assert (= (and b!6146761 (not c!1106051)) b!6146768))

(assert (= (and b!6146769 res!2546428) b!6146763))

(assert (= (and b!6146768 (not res!2546426)) b!6146766))

(assert (= (and b!6146766 res!2546425) b!6146765))

(assert (= (or b!6146763 b!6146765) bm!510930))

(assert (= (or b!6146769 b!6146766) bm!510928))

(assert (= (or b!6146762 bm!510928) bm!510929))

(declare-fun m!6987154 () Bool)

(assert (=> bm!510929 m!6987154))

(declare-fun m!6987156 () Bool)

(assert (=> bm!510930 m!6987156))

(declare-fun m!6987158 () Bool)

(assert (=> b!6146767 m!6987158))

(assert (=> bm!510725 d!1925922))

(assert (=> d!1925442 d!1925734))

(declare-fun d!1925924 () Bool)

(assert (=> d!1925924 (= (Exists!3159 (ite c!1105761 lambda!335077 lambda!335078)) (choose!45679 (ite c!1105761 lambda!335077 lambda!335078)))))

(declare-fun bs!1523989 () Bool)

(assert (= bs!1523989 d!1925924))

(declare-fun m!6987160 () Bool)

(assert (=> bs!1523989 m!6987160))

(assert (=> bm!510701 d!1925924))

(declare-fun b!6146770 () Bool)

(declare-fun c!1106056 () Bool)

(assert (=> b!6146770 (= c!1106056 ((_ is Star!16089) (h!70890 (exprs!5973 (h!70892 zl!343)))))))

(declare-fun e!3745726 () (InoxSet Context!10946))

(declare-fun e!3745729 () (InoxSet Context!10946))

(assert (=> b!6146770 (= e!3745726 e!3745729)))

(declare-fun b!6146771 () Bool)

(declare-fun call!510939 () (InoxSet Context!10946))

(assert (=> b!6146771 (= e!3745729 call!510939)))

(declare-fun b!6146772 () Bool)

(declare-fun e!3745725 () (InoxSet Context!10946))

(declare-fun call!510941 () (InoxSet Context!10946))

(declare-fun call!510940 () (InoxSet Context!10946))

(assert (=> b!6146772 (= e!3745725 ((_ map or) call!510941 call!510940))))

(declare-fun b!6146773 () Bool)

(declare-fun e!3745727 () (InoxSet Context!10946))

(declare-fun call!510938 () (InoxSet Context!10946))

(assert (=> b!6146773 (= e!3745727 ((_ map or) call!510940 call!510938))))

(declare-fun b!6146774 () Bool)

(declare-fun e!3745730 () Bool)

(assert (=> b!6146774 (= e!3745730 (nullable!6082 (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343))))))))

(declare-fun bm!510931 () Bool)

(declare-fun c!1106053 () Bool)

(declare-fun call!510937 () List!64566)

(declare-fun c!1106054 () Bool)

(declare-fun c!1106052 () Bool)

(assert (=> bm!510931 (= call!510941 (derivationStepZipperDown!1337 (ite c!1106053 (regOne!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1106052 (regTwo!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (ite c!1106054 (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (reg!16418 (h!70890 (exprs!5973 (h!70892 zl!343))))))) (ite (or c!1106053 c!1106052) (Context!10947 (t!378049 (exprs!5973 (h!70892 zl!343)))) (Context!10947 call!510937)) (h!70891 s!2326)))))

(declare-fun bm!510932 () Bool)

(assert (=> bm!510932 (= call!510938 call!510941)))

(declare-fun b!6146775 () Bool)

(assert (=> b!6146775 (= e!3745726 call!510939)))

(declare-fun b!6146776 () Bool)

(declare-fun e!3745728 () (InoxSet Context!10946))

(assert (=> b!6146776 (= e!3745728 (store ((as const (Array Context!10946 Bool)) false) (Context!10947 (t!378049 (exprs!5973 (h!70892 zl!343)))) true))))

(declare-fun b!6146778 () Bool)

(assert (=> b!6146778 (= e!3745728 e!3745725)))

(assert (=> b!6146778 (= c!1106053 ((_ is Union!16089) (h!70890 (exprs!5973 (h!70892 zl!343)))))))

(declare-fun call!510936 () List!64566)

(declare-fun bm!510933 () Bool)

(assert (=> bm!510933 (= call!510936 ($colon$colon!1966 (exprs!5973 (Context!10947 (t!378049 (exprs!5973 (h!70892 zl!343))))) (ite (or c!1106052 c!1106054) (regTwo!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (h!70890 (exprs!5973 (h!70892 zl!343))))))))

(declare-fun bm!510934 () Bool)

(assert (=> bm!510934 (= call!510939 call!510938)))

(declare-fun bm!510935 () Bool)

(assert (=> bm!510935 (= call!510937 call!510936)))

(declare-fun bm!510936 () Bool)

(assert (=> bm!510936 (= call!510940 (derivationStepZipperDown!1337 (ite c!1106053 (regTwo!32691 (h!70890 (exprs!5973 (h!70892 zl!343)))) (regOne!32690 (h!70890 (exprs!5973 (h!70892 zl!343))))) (ite c!1106053 (Context!10947 (t!378049 (exprs!5973 (h!70892 zl!343)))) (Context!10947 call!510936)) (h!70891 s!2326)))))

(declare-fun b!6146779 () Bool)

(assert (=> b!6146779 (= e!3745727 e!3745726)))

(assert (=> b!6146779 (= c!1106054 ((_ is Concat!24934) (h!70890 (exprs!5973 (h!70892 zl!343)))))))

(declare-fun b!6146780 () Bool)

(assert (=> b!6146780 (= c!1106052 e!3745730)))

(declare-fun res!2546430 () Bool)

(assert (=> b!6146780 (=> (not res!2546430) (not e!3745730))))

(assert (=> b!6146780 (= res!2546430 ((_ is Concat!24934) (h!70890 (exprs!5973 (h!70892 zl!343)))))))

(assert (=> b!6146780 (= e!3745725 e!3745727)))

(declare-fun b!6146777 () Bool)

(assert (=> b!6146777 (= e!3745729 ((as const (Array Context!10946 Bool)) false))))

(declare-fun d!1925926 () Bool)

(declare-fun c!1106055 () Bool)

(assert (=> d!1925926 (= c!1106055 (and ((_ is ElementMatch!16089) (h!70890 (exprs!5973 (h!70892 zl!343)))) (= (c!1105579 (h!70890 (exprs!5973 (h!70892 zl!343)))) (h!70891 s!2326))))))

(assert (=> d!1925926 (= (derivationStepZipperDown!1337 (h!70890 (exprs!5973 (h!70892 zl!343))) (Context!10947 (t!378049 (exprs!5973 (h!70892 zl!343)))) (h!70891 s!2326)) e!3745728)))

(assert (= (and d!1925926 c!1106055) b!6146776))

(assert (= (and d!1925926 (not c!1106055)) b!6146778))

(assert (= (and b!6146778 c!1106053) b!6146772))

(assert (= (and b!6146778 (not c!1106053)) b!6146780))

(assert (= (and b!6146780 res!2546430) b!6146774))

(assert (= (and b!6146780 c!1106052) b!6146773))

(assert (= (and b!6146780 (not c!1106052)) b!6146779))

(assert (= (and b!6146779 c!1106054) b!6146775))

(assert (= (and b!6146779 (not c!1106054)) b!6146770))

(assert (= (and b!6146770 c!1106056) b!6146771))

(assert (= (and b!6146770 (not c!1106056)) b!6146777))

(assert (= (or b!6146775 b!6146771) bm!510935))

(assert (= (or b!6146775 b!6146771) bm!510934))

(assert (= (or b!6146773 bm!510935) bm!510933))

(assert (= (or b!6146773 bm!510934) bm!510932))

(assert (= (or b!6146772 b!6146773) bm!510936))

(assert (= (or b!6146772 bm!510932) bm!510931))

(declare-fun m!6987162 () Bool)

(assert (=> b!6146776 m!6987162))

(declare-fun m!6987164 () Bool)

(assert (=> bm!510931 m!6987164))

(declare-fun m!6987166 () Bool)

(assert (=> bm!510936 m!6987166))

(declare-fun m!6987168 () Bool)

(assert (=> bm!510933 m!6987168))

(assert (=> b!6146774 m!6986090))

(assert (=> bm!510674 d!1925926))

(assert (=> b!6145505 d!1925398))

(declare-fun bs!1523990 () Bool)

(declare-fun d!1925928 () Bool)

(assert (= bs!1523990 (and d!1925928 d!1925842)))

(declare-fun lambda!335147 () Int)

(assert (=> bs!1523990 (= lambda!335147 lambda!335135)))

(declare-fun bs!1523991 () Bool)

(assert (= bs!1523991 (and d!1925928 d!1925402)))

(assert (=> bs!1523991 (= lambda!335147 lambda!335062)))

(declare-fun bs!1523992 () Bool)

(assert (= bs!1523992 (and d!1925928 d!1925396)))

(assert (=> bs!1523992 (= lambda!335147 lambda!335053)))

(declare-fun bs!1523993 () Bool)

(assert (= bs!1523993 (and d!1925928 d!1925400)))

(assert (=> bs!1523993 (= lambda!335147 lambda!335059)))

(declare-fun bs!1523994 () Bool)

(assert (= bs!1523994 (and d!1925928 d!1925810)))

(assert (=> bs!1523994 (= lambda!335147 lambda!335133)))

(declare-fun bs!1523995 () Bool)

(assert (= bs!1523995 (and d!1925928 d!1925474)))

(assert (=> bs!1523995 (= lambda!335147 lambda!335079)))

(declare-fun bs!1523996 () Bool)

(assert (= bs!1523996 (and d!1925928 d!1925846)))

(assert (=> bs!1523996 (= lambda!335147 lambda!335138)))

(declare-fun bs!1523997 () Bool)

(assert (= bs!1523997 (and d!1925928 d!1925398)))

(assert (=> bs!1523997 (= lambda!335147 lambda!335056)))

(declare-fun bs!1523998 () Bool)

(assert (= bs!1523998 (and d!1925928 d!1925434)))

(assert (=> bs!1523998 (= lambda!335147 lambda!335072)))

(declare-fun lt!2333797 () List!64566)

(assert (=> d!1925928 (forall!15210 lt!2333797 lambda!335147)))

(declare-fun e!3745731 () List!64566)

(assert (=> d!1925928 (= lt!2333797 e!3745731)))

(declare-fun c!1106057 () Bool)

(assert (=> d!1925928 (= c!1106057 ((_ is Cons!64444) (t!378051 zl!343)))))

(assert (=> d!1925928 (= (unfocusZipperList!1510 (t!378051 zl!343)) lt!2333797)))

(declare-fun b!6146781 () Bool)

(assert (=> b!6146781 (= e!3745731 (Cons!64442 (generalisedConcat!1686 (exprs!5973 (h!70892 (t!378051 zl!343)))) (unfocusZipperList!1510 (t!378051 (t!378051 zl!343)))))))

(declare-fun b!6146782 () Bool)

(assert (=> b!6146782 (= e!3745731 Nil!64442)))

(assert (= (and d!1925928 c!1106057) b!6146781))

(assert (= (and d!1925928 (not c!1106057)) b!6146782))

(declare-fun m!6987170 () Bool)

(assert (=> d!1925928 m!6987170))

(declare-fun m!6987172 () Bool)

(assert (=> b!6146781 m!6987172))

(declare-fun m!6987174 () Bool)

(assert (=> b!6146781 m!6987174))

(assert (=> b!6145505 d!1925928))

(declare-fun d!1925930 () Bool)

(declare-fun res!2546431 () Bool)

(declare-fun e!3745732 () Bool)

(assert (=> d!1925930 (=> res!2546431 e!3745732)))

(assert (=> d!1925930 (= res!2546431 ((_ is Nil!64442) lt!2333729))))

(assert (=> d!1925930 (= (forall!15210 lt!2333729 lambda!335062) e!3745732)))

(declare-fun b!6146783 () Bool)

(declare-fun e!3745733 () Bool)

(assert (=> b!6146783 (= e!3745732 e!3745733)))

(declare-fun res!2546432 () Bool)

(assert (=> b!6146783 (=> (not res!2546432) (not e!3745733))))

(assert (=> b!6146783 (= res!2546432 (dynLambda!25400 lambda!335062 (h!70890 lt!2333729)))))

(declare-fun b!6146784 () Bool)

(assert (=> b!6146784 (= e!3745733 (forall!15210 (t!378049 lt!2333729) lambda!335062))))

(assert (= (and d!1925930 (not res!2546431)) b!6146783))

(assert (= (and b!6146783 res!2546432) b!6146784))

(declare-fun b_lambda!233951 () Bool)

(assert (=> (not b_lambda!233951) (not b!6146783)))

(declare-fun m!6987176 () Bool)

(assert (=> b!6146783 m!6987176))

(declare-fun m!6987178 () Bool)

(assert (=> b!6146784 m!6987178))

(assert (=> d!1925402 d!1925930))

(declare-fun b!6146785 () Bool)

(declare-fun e!3745739 () Bool)

(declare-fun e!3745735 () Bool)

(assert (=> b!6146785 (= e!3745739 e!3745735)))

(declare-fun c!1106059 () Bool)

(assert (=> b!6146785 (= c!1106059 ((_ is Union!16089) lt!2333752))))

(declare-fun d!1925932 () Bool)

(declare-fun res!2546435 () Bool)

(declare-fun e!3745738 () Bool)

(assert (=> d!1925932 (=> res!2546435 e!3745738)))

(assert (=> d!1925932 (= res!2546435 ((_ is ElementMatch!16089) lt!2333752))))

(assert (=> d!1925932 (= (validRegex!7825 lt!2333752) e!3745738)))

(declare-fun bm!510937 () Bool)

(declare-fun call!510942 () Bool)

(declare-fun call!510943 () Bool)

(assert (=> bm!510937 (= call!510942 call!510943)))

(declare-fun b!6146786 () Bool)

(declare-fun e!3745740 () Bool)

(assert (=> b!6146786 (= e!3745740 call!510943)))

(declare-fun b!6146787 () Bool)

(declare-fun e!3745736 () Bool)

(declare-fun call!510944 () Bool)

(assert (=> b!6146787 (= e!3745736 call!510944)))

(declare-fun c!1106058 () Bool)

(declare-fun bm!510938 () Bool)

(assert (=> bm!510938 (= call!510943 (validRegex!7825 (ite c!1106058 (reg!16418 lt!2333752) (ite c!1106059 (regOne!32691 lt!2333752) (regOne!32690 lt!2333752)))))))

(declare-fun bm!510939 () Bool)

(assert (=> bm!510939 (= call!510944 (validRegex!7825 (ite c!1106059 (regTwo!32691 lt!2333752) (regTwo!32690 lt!2333752))))))

(declare-fun b!6146788 () Bool)

(assert (=> b!6146788 (= e!3745738 e!3745739)))

(assert (=> b!6146788 (= c!1106058 ((_ is Star!16089) lt!2333752))))

(declare-fun b!6146789 () Bool)

(declare-fun e!3745737 () Bool)

(assert (=> b!6146789 (= e!3745737 call!510944)))

(declare-fun b!6146790 () Bool)

(declare-fun e!3745734 () Bool)

(assert (=> b!6146790 (= e!3745734 e!3745737)))

(declare-fun res!2546433 () Bool)

(assert (=> b!6146790 (=> (not res!2546433) (not e!3745737))))

(assert (=> b!6146790 (= res!2546433 call!510942)))

(declare-fun b!6146791 () Bool)

(assert (=> b!6146791 (= e!3745739 e!3745740)))

(declare-fun res!2546437 () Bool)

(assert (=> b!6146791 (= res!2546437 (not (nullable!6082 (reg!16418 lt!2333752))))))

(assert (=> b!6146791 (=> (not res!2546437) (not e!3745740))))

(declare-fun b!6146792 () Bool)

(declare-fun res!2546434 () Bool)

(assert (=> b!6146792 (=> res!2546434 e!3745734)))

(assert (=> b!6146792 (= res!2546434 (not ((_ is Concat!24934) lt!2333752)))))

(assert (=> b!6146792 (= e!3745735 e!3745734)))

(declare-fun b!6146793 () Bool)

(declare-fun res!2546436 () Bool)

(assert (=> b!6146793 (=> (not res!2546436) (not e!3745736))))

(assert (=> b!6146793 (= res!2546436 call!510942)))

(assert (=> b!6146793 (= e!3745735 e!3745736)))

(assert (= (and d!1925932 (not res!2546435)) b!6146788))

(assert (= (and b!6146788 c!1106058) b!6146791))

(assert (= (and b!6146788 (not c!1106058)) b!6146785))

(assert (= (and b!6146791 res!2546437) b!6146786))

(assert (= (and b!6146785 c!1106059) b!6146793))

(assert (= (and b!6146785 (not c!1106059)) b!6146792))

(assert (= (and b!6146793 res!2546436) b!6146787))

(assert (= (and b!6146792 (not res!2546434)) b!6146790))

(assert (= (and b!6146790 res!2546433) b!6146789))

(assert (= (or b!6146787 b!6146789) bm!510939))

(assert (= (or b!6146793 b!6146790) bm!510937))

(assert (= (or b!6146786 bm!510937) bm!510938))

(declare-fun m!6987180 () Bool)

(assert (=> bm!510938 m!6987180))

(declare-fun m!6987182 () Bool)

(assert (=> bm!510939 m!6987182))

(declare-fun m!6987184 () Bool)

(assert (=> b!6146791 m!6987184))

(assert (=> d!1925448 d!1925932))

(assert (=> d!1925448 d!1925400))

(assert (=> d!1925448 d!1925402))

(declare-fun d!1925934 () Bool)

(assert (=> d!1925934 (= (nullable!6082 (h!70890 (exprs!5973 lt!2333656))) (nullableFct!2046 (h!70890 (exprs!5973 lt!2333656))))))

(declare-fun bs!1523999 () Bool)

(assert (= bs!1523999 d!1925934))

(declare-fun m!6987186 () Bool)

(assert (=> bs!1523999 m!6987186))

(assert (=> b!6145523 d!1925934))

(declare-fun d!1925936 () Bool)

(assert (=> d!1925936 (= (isConcat!1028 lt!2333723) ((_ is Concat!24934) lt!2333723))))

(assert (=> b!6145464 d!1925936))

(declare-fun d!1925938 () Bool)

(assert (=> d!1925938 (= (isEmpty!36397 (unfocusZipperList!1510 zl!343)) ((_ is Nil!64442) (unfocusZipperList!1510 zl!343)))))

(assert (=> b!6145500 d!1925938))

(assert (=> d!1925392 d!1925734))

(declare-fun d!1925940 () Bool)

(assert (=> d!1925940 true))

(declare-fun setRes!41599 () Bool)

(assert (=> d!1925940 setRes!41599))

(declare-fun condSetEmpty!41599 () Bool)

(declare-fun res!2546438 () (InoxSet Context!10946))

(assert (=> d!1925940 (= condSetEmpty!41599 (= res!2546438 ((as const (Array Context!10946 Bool)) false)))))

(assert (=> d!1925940 (= (choose!45678 z!1189 lambda!335021) res!2546438)))

(declare-fun setIsEmpty!41599 () Bool)

(assert (=> setIsEmpty!41599 setRes!41599))

(declare-fun e!3745741 () Bool)

(declare-fun tp!1717030 () Bool)

(declare-fun setNonEmpty!41599 () Bool)

(declare-fun setElem!41599 () Context!10946)

(assert (=> setNonEmpty!41599 (= setRes!41599 (and tp!1717030 (inv!83469 setElem!41599) e!3745741))))

(declare-fun setRest!41599 () (InoxSet Context!10946))

(assert (=> setNonEmpty!41599 (= res!2546438 ((_ map or) (store ((as const (Array Context!10946 Bool)) false) setElem!41599 true) setRest!41599))))

(declare-fun b!6146794 () Bool)

(declare-fun tp!1717029 () Bool)

(assert (=> b!6146794 (= e!3745741 tp!1717029)))

(assert (= (and d!1925940 condSetEmpty!41599) setIsEmpty!41599))

(assert (= (and d!1925940 (not condSetEmpty!41599)) setNonEmpty!41599))

(assert (= setNonEmpty!41599 b!6146794))

(declare-fun m!6987188 () Bool)

(assert (=> setNonEmpty!41599 m!6987188))

(assert (=> d!1925408 d!1925940))

(assert (=> b!6145699 d!1925806))

(assert (=> d!1925420 d!1925866))

(declare-fun b!6146795 () Bool)

(declare-fun e!3745746 () Bool)

(declare-fun lt!2333798 () Bool)

(declare-fun call!510945 () Bool)

(assert (=> b!6146795 (= e!3745746 (= lt!2333798 call!510945))))

(declare-fun b!6146796 () Bool)

(declare-fun res!2546446 () Bool)

(declare-fun e!3745748 () Bool)

(assert (=> b!6146796 (=> res!2546446 e!3745748)))

(declare-fun e!3745744 () Bool)

(assert (=> b!6146796 (= res!2546446 e!3745744)))

(declare-fun res!2546444 () Bool)

(assert (=> b!6146796 (=> (not res!2546444) (not e!3745744))))

(assert (=> b!6146796 (= res!2546444 lt!2333798)))

(declare-fun b!6146797 () Bool)

(declare-fun e!3745747 () Bool)

(assert (=> b!6146797 (= e!3745747 (matchR!8272 (derivativeStep!4809 (regOne!32690 r!7292) (head!12699 Nil!64443)) (tail!11784 Nil!64443)))))

(declare-fun b!6146798 () Bool)

(declare-fun res!2546441 () Bool)

(declare-fun e!3745745 () Bool)

(assert (=> b!6146798 (=> res!2546441 e!3745745)))

(assert (=> b!6146798 (= res!2546441 (not (isEmpty!36399 (tail!11784 Nil!64443))))))

(declare-fun b!6146799 () Bool)

(assert (=> b!6146799 (= e!3745747 (nullable!6082 (regOne!32690 r!7292)))))

(declare-fun b!6146800 () Bool)

(declare-fun res!2546445 () Bool)

(assert (=> b!6146800 (=> (not res!2546445) (not e!3745744))))

(assert (=> b!6146800 (= res!2546445 (not call!510945))))

(declare-fun b!6146801 () Bool)

(declare-fun res!2546440 () Bool)

(assert (=> b!6146801 (=> res!2546440 e!3745748)))

(assert (=> b!6146801 (= res!2546440 (not ((_ is ElementMatch!16089) (regOne!32690 r!7292))))))

(declare-fun e!3745742 () Bool)

(assert (=> b!6146801 (= e!3745742 e!3745748)))

(declare-fun d!1925942 () Bool)

(assert (=> d!1925942 e!3745746))

(declare-fun c!1106062 () Bool)

(assert (=> d!1925942 (= c!1106062 ((_ is EmptyExpr!16089) (regOne!32690 r!7292)))))

(assert (=> d!1925942 (= lt!2333798 e!3745747)))

(declare-fun c!1106061 () Bool)

(assert (=> d!1925942 (= c!1106061 (isEmpty!36399 Nil!64443))))

(assert (=> d!1925942 (validRegex!7825 (regOne!32690 r!7292))))

(assert (=> d!1925942 (= (matchR!8272 (regOne!32690 r!7292) Nil!64443) lt!2333798)))

(declare-fun b!6146802 () Bool)

(assert (=> b!6146802 (= e!3745742 (not lt!2333798))))

(declare-fun b!6146803 () Bool)

(declare-fun res!2546439 () Bool)

(assert (=> b!6146803 (=> (not res!2546439) (not e!3745744))))

(assert (=> b!6146803 (= res!2546439 (isEmpty!36399 (tail!11784 Nil!64443)))))

(declare-fun b!6146804 () Bool)

(assert (=> b!6146804 (= e!3745746 e!3745742)))

(declare-fun c!1106060 () Bool)

(assert (=> b!6146804 (= c!1106060 ((_ is EmptyLang!16089) (regOne!32690 r!7292)))))

(declare-fun bm!510940 () Bool)

(assert (=> bm!510940 (= call!510945 (isEmpty!36399 Nil!64443))))

(declare-fun b!6146805 () Bool)

(declare-fun e!3745743 () Bool)

(assert (=> b!6146805 (= e!3745748 e!3745743)))

(declare-fun res!2546443 () Bool)

(assert (=> b!6146805 (=> (not res!2546443) (not e!3745743))))

(assert (=> b!6146805 (= res!2546443 (not lt!2333798))))

(declare-fun b!6146806 () Bool)

(assert (=> b!6146806 (= e!3745745 (not (= (head!12699 Nil!64443) (c!1105579 (regOne!32690 r!7292)))))))

(declare-fun b!6146807 () Bool)

(assert (=> b!6146807 (= e!3745744 (= (head!12699 Nil!64443) (c!1105579 (regOne!32690 r!7292))))))

(declare-fun b!6146808 () Bool)

(assert (=> b!6146808 (= e!3745743 e!3745745)))

(declare-fun res!2546442 () Bool)

(assert (=> b!6146808 (=> res!2546442 e!3745745)))

(assert (=> b!6146808 (= res!2546442 call!510945)))

(assert (= (and d!1925942 c!1106061) b!6146799))

(assert (= (and d!1925942 (not c!1106061)) b!6146797))

(assert (= (and d!1925942 c!1106062) b!6146795))

(assert (= (and d!1925942 (not c!1106062)) b!6146804))

(assert (= (and b!6146804 c!1106060) b!6146802))

(assert (= (and b!6146804 (not c!1106060)) b!6146801))

(assert (= (and b!6146801 (not res!2546440)) b!6146796))

(assert (= (and b!6146796 res!2546444) b!6146800))

(assert (= (and b!6146800 res!2546445) b!6146803))

(assert (= (and b!6146803 res!2546439) b!6146807))

(assert (= (and b!6146796 (not res!2546446)) b!6146805))

(assert (= (and b!6146805 res!2546443) b!6146808))

(assert (= (and b!6146808 (not res!2546442)) b!6146798))

(assert (= (and b!6146798 (not res!2546441)) b!6146806))

(assert (= (or b!6146795 b!6146800 b!6146808) bm!510940))

(declare-fun m!6987190 () Bool)

(assert (=> b!6146807 m!6987190))

(assert (=> b!6146799 m!6986856))

(declare-fun m!6987192 () Bool)

(assert (=> d!1925942 m!6987192))

(assert (=> d!1925942 m!6986126))

(assert (=> b!6146797 m!6987190))

(assert (=> b!6146797 m!6987190))

(declare-fun m!6987194 () Bool)

(assert (=> b!6146797 m!6987194))

(declare-fun m!6987196 () Bool)

(assert (=> b!6146797 m!6987196))

(assert (=> b!6146797 m!6987194))

(assert (=> b!6146797 m!6987196))

(declare-fun m!6987198 () Bool)

(assert (=> b!6146797 m!6987198))

(assert (=> b!6146803 m!6987196))

(assert (=> b!6146803 m!6987196))

(declare-fun m!6987200 () Bool)

(assert (=> b!6146803 m!6987200))

(assert (=> bm!510940 m!6987192))

(assert (=> b!6146798 m!6987196))

(assert (=> b!6146798 m!6987196))

(assert (=> b!6146798 m!6987200))

(assert (=> b!6146806 m!6987190))

(assert (=> d!1925420 d!1925942))

(assert (=> d!1925420 d!1925736))

(declare-fun d!1925944 () Bool)

(assert (=> d!1925944 (= (head!12700 (unfocusZipperList!1510 zl!343)) (h!70890 (unfocusZipperList!1510 zl!343)))))

(assert (=> b!6145496 d!1925944))

(declare-fun call!510946 () (InoxSet Context!10946))

(declare-fun e!3745751 () (InoxSet Context!10946))

(declare-fun b!6146809 () Bool)

(assert (=> b!6146809 (= e!3745751 ((_ map or) call!510946 (derivationStepZipperUp!1263 (Context!10947 (t!378049 (exprs!5973 (Context!10947 (t!378049 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343))))))))))) (h!70891 s!2326))))))

(declare-fun b!6146810 () Bool)

(declare-fun e!3745749 () Bool)

(assert (=> b!6146810 (= e!3745749 (nullable!6082 (h!70890 (exprs!5973 (Context!10947 (t!378049 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343))))))))))))))

(declare-fun bm!510941 () Bool)

(assert (=> bm!510941 (= call!510946 (derivationStepZipperDown!1337 (h!70890 (exprs!5973 (Context!10947 (t!378049 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343)))))))))) (Context!10947 (t!378049 (exprs!5973 (Context!10947 (t!378049 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343))))))))))) (h!70891 s!2326)))))

(declare-fun b!6146812 () Bool)

(declare-fun e!3745750 () (InoxSet Context!10946))

(assert (=> b!6146812 (= e!3745751 e!3745750)))

(declare-fun c!1106064 () Bool)

(assert (=> b!6146812 (= c!1106064 ((_ is Cons!64442) (exprs!5973 (Context!10947 (t!378049 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343)))))))))))))

(declare-fun b!6146813 () Bool)

(assert (=> b!6146813 (= e!3745750 call!510946)))

(declare-fun b!6146811 () Bool)

(assert (=> b!6146811 (= e!3745750 ((as const (Array Context!10946 Bool)) false))))

(declare-fun d!1925946 () Bool)

(declare-fun c!1106063 () Bool)

(assert (=> d!1925946 (= c!1106063 e!3745749)))

(declare-fun res!2546447 () Bool)

(assert (=> d!1925946 (=> (not res!2546447) (not e!3745749))))

(assert (=> d!1925946 (= res!2546447 ((_ is Cons!64442) (exprs!5973 (Context!10947 (t!378049 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343)))))))))))))

(assert (=> d!1925946 (= (derivationStepZipperUp!1263 (Context!10947 (t!378049 (exprs!5973 (Context!10947 (Cons!64442 (h!70890 (exprs!5973 (h!70892 zl!343))) (t!378049 (exprs!5973 (h!70892 zl!343)))))))) (h!70891 s!2326)) e!3745751)))

(assert (= (and d!1925946 res!2546447) b!6146810))

(assert (= (and d!1925946 c!1106063) b!6146809))

(assert (= (and d!1925946 (not c!1106063)) b!6146812))

(assert (= (and b!6146812 c!1106064) b!6146813))

(assert (= (and b!6146812 (not c!1106064)) b!6146811))

(assert (= (or b!6146809 b!6146813) bm!510941))

(declare-fun m!6987202 () Bool)

(assert (=> b!6146809 m!6987202))

(declare-fun m!6987204 () Bool)

(assert (=> b!6146810 m!6987204))

(declare-fun m!6987206 () Bool)

(assert (=> bm!510941 m!6987206))

(assert (=> b!6145560 d!1925946))

(declare-fun bs!1524000 () Bool)

(declare-fun d!1925948 () Bool)

(assert (= bs!1524000 (and d!1925948 d!1925818)))

(declare-fun lambda!335148 () Int)

(assert (=> bs!1524000 (= lambda!335148 lambda!335134)))

(declare-fun bs!1524001 () Bool)

(assert (= bs!1524001 (and d!1925948 d!1925848)))

(assert (=> bs!1524001 (= lambda!335148 lambda!335139)))

(declare-fun bs!1524002 () Bool)

(assert (= bs!1524002 (and d!1925948 d!1925916)))

(assert (=> bs!1524002 (= lambda!335148 lambda!335146)))

(declare-fun bs!1524003 () Bool)

(assert (= bs!1524003 (and d!1925948 d!1925850)))

(assert (=> bs!1524003 (= lambda!335148 lambda!335140)))

(declare-fun bs!1524004 () Bool)

(assert (= bs!1524004 (and d!1925948 d!1925744)))

(assert (=> bs!1524004 (= lambda!335148 lambda!335121)))

(assert (=> d!1925948 (= (nullableZipper!1870 ((_ map or) lt!2333661 lt!2333650)) (exists!2434 ((_ map or) lt!2333661 lt!2333650) lambda!335148))))

(declare-fun bs!1524005 () Bool)

(assert (= bs!1524005 d!1925948))

(declare-fun m!6987208 () Bool)

(assert (=> bs!1524005 m!6987208))

(assert (=> b!6145729 d!1925948))

(assert (=> b!6145432 d!1925456))

(declare-fun bs!1524006 () Bool)

(declare-fun d!1925950 () Bool)

(assert (= bs!1524006 (and d!1925950 d!1925842)))

(declare-fun lambda!335149 () Int)

(assert (=> bs!1524006 (= lambda!335149 lambda!335135)))

(declare-fun bs!1524007 () Bool)

(assert (= bs!1524007 (and d!1925950 d!1925402)))

(assert (=> bs!1524007 (= lambda!335149 lambda!335062)))

(declare-fun bs!1524008 () Bool)

(assert (= bs!1524008 (and d!1925950 d!1925928)))

(assert (=> bs!1524008 (= lambda!335149 lambda!335147)))

(declare-fun bs!1524009 () Bool)

(assert (= bs!1524009 (and d!1925950 d!1925396)))

(assert (=> bs!1524009 (= lambda!335149 lambda!335053)))

(declare-fun bs!1524010 () Bool)

(assert (= bs!1524010 (and d!1925950 d!1925400)))

(assert (=> bs!1524010 (= lambda!335149 lambda!335059)))

(declare-fun bs!1524011 () Bool)

(assert (= bs!1524011 (and d!1925950 d!1925810)))

(assert (=> bs!1524011 (= lambda!335149 lambda!335133)))

(declare-fun bs!1524012 () Bool)

(assert (= bs!1524012 (and d!1925950 d!1925474)))

(assert (=> bs!1524012 (= lambda!335149 lambda!335079)))

(declare-fun bs!1524013 () Bool)

(assert (= bs!1524013 (and d!1925950 d!1925846)))

(assert (=> bs!1524013 (= lambda!335149 lambda!335138)))

(declare-fun bs!1524014 () Bool)

(assert (= bs!1524014 (and d!1925950 d!1925398)))

(assert (=> bs!1524014 (= lambda!335149 lambda!335056)))

(declare-fun bs!1524015 () Bool)

(assert (= bs!1524015 (and d!1925950 d!1925434)))

(assert (=> bs!1524015 (= lambda!335149 lambda!335072)))

(assert (=> d!1925950 (= (inv!83469 (h!70892 (t!378051 zl!343))) (forall!15210 (exprs!5973 (h!70892 (t!378051 zl!343))) lambda!335149))))

(declare-fun bs!1524016 () Bool)

(assert (= bs!1524016 d!1925950))

(declare-fun m!6987210 () Bool)

(assert (=> bs!1524016 m!6987210))

(assert (=> b!6145810 d!1925950))

(declare-fun d!1925952 () Bool)

(declare-fun c!1106067 () Bool)

(assert (=> d!1925952 (= c!1106067 ((_ is Nil!64444) lt!2333761))))

(declare-fun e!3745754 () (InoxSet Context!10946))

(assert (=> d!1925952 (= (content!12000 lt!2333761) e!3745754)))

(declare-fun b!6146818 () Bool)

(assert (=> b!6146818 (= e!3745754 ((as const (Array Context!10946 Bool)) false))))

(declare-fun b!6146819 () Bool)

(assert (=> b!6146819 (= e!3745754 ((_ map or) (store ((as const (Array Context!10946 Bool)) false) (h!70892 lt!2333761) true) (content!12000 (t!378051 lt!2333761))))))

(assert (= (and d!1925952 c!1106067) b!6146818))

(assert (= (and d!1925952 (not c!1106067)) b!6146819))

(declare-fun m!6987212 () Bool)

(assert (=> b!6146819 m!6987212))

(declare-fun m!6987214 () Bool)

(assert (=> b!6146819 m!6987214))

(assert (=> b!6145705 d!1925952))

(declare-fun d!1925954 () Bool)

(assert (=> d!1925954 (= (isUnion!946 lt!2333726) ((_ is Union!16089) lt!2333726))))

(assert (=> b!6145492 d!1925954))

(declare-fun d!1925956 () Bool)

(assert (=> d!1925956 (= ($colon$colon!1966 (exprs!5973 lt!2333656) (ite (or c!1105735 c!1105737) (regTwo!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (h!70890 (exprs!5973 (h!70892 zl!343))))) (Cons!64442 (ite (or c!1105735 c!1105737) (regTwo!32690 (h!70890 (exprs!5973 (h!70892 zl!343)))) (h!70890 (exprs!5973 (h!70892 zl!343)))) (exprs!5973 lt!2333656)))))

(assert (=> bm!510690 d!1925956))

(declare-fun bs!1524017 () Bool)

(declare-fun d!1925958 () Bool)

(assert (= bs!1524017 (and d!1925958 d!1925848)))

(declare-fun lambda!335150 () Int)

(assert (=> bs!1524017 (= lambda!335150 lambda!335139)))

(declare-fun bs!1524018 () Bool)

(assert (= bs!1524018 (and d!1925958 d!1925916)))

(assert (=> bs!1524018 (= lambda!335150 lambda!335146)))

(declare-fun bs!1524019 () Bool)

(assert (= bs!1524019 (and d!1925958 d!1925850)))

(assert (=> bs!1524019 (= lambda!335150 lambda!335140)))

(declare-fun bs!1524020 () Bool)

(assert (= bs!1524020 (and d!1925958 d!1925744)))

(assert (=> bs!1524020 (= lambda!335150 lambda!335121)))

(declare-fun bs!1524021 () Bool)

(assert (= bs!1524021 (and d!1925958 d!1925818)))

(assert (=> bs!1524021 (= lambda!335150 lambda!335134)))

(declare-fun bs!1524022 () Bool)

(assert (= bs!1524022 (and d!1925958 d!1925948)))

(assert (=> bs!1524022 (= lambda!335150 lambda!335148)))

(assert (=> d!1925958 (= (nullableZipper!1870 ((_ map or) lt!2333651 lt!2333650)) (exists!2434 ((_ map or) lt!2333651 lt!2333650) lambda!335150))))

(declare-fun bs!1524023 () Bool)

(assert (= bs!1524023 d!1925958))

(declare-fun m!6987216 () Bool)

(assert (=> bs!1524023 m!6987216))

(assert (=> b!6145439 d!1925958))

(declare-fun b!6146820 () Bool)

(declare-fun c!1106072 () Bool)

(assert (=> b!6146820 (= c!1106072 ((_ is Star!16089) (h!70890 (exprs!5973 lt!2333672))))))

(declare-fun e!3745756 () (InoxSet Context!10946))

(declare-fun e!3745759 () (InoxSet Context!10946))

(assert (=> b!6146820 (= e!3745756 e!3745759)))

(declare-fun b!6146821 () Bool)

(declare-fun call!510950 () (InoxSet Context!10946))

(assert (=> b!6146821 (= e!3745759 call!510950)))

(declare-fun b!6146822 () Bool)

(declare-fun e!3745755 () (InoxSet Context!10946))

(declare-fun call!510952 () (InoxSet Context!10946))

(declare-fun call!510951 () (InoxSet Context!10946))

(assert (=> b!6146822 (= e!3745755 ((_ map or) call!510952 call!510951))))

(declare-fun b!6146823 () Bool)

(declare-fun e!3745757 () (InoxSet Context!10946))

(declare-fun call!510949 () (InoxSet Context!10946))

(assert (=> b!6146823 (= e!3745757 ((_ map or) call!510951 call!510949))))

(declare-fun b!6146824 () Bool)

(declare-fun e!3745760 () Bool)

(assert (=> b!6146824 (= e!3745760 (nullable!6082 (regOne!32690 (h!70890 (exprs!5973 lt!2333672)))))))

(declare-fun bm!510942 () Bool)

(declare-fun c!1106070 () Bool)

(declare-fun call!510948 () List!64566)

(declare-fun c!1106068 () Bool)

(declare-fun c!1106069 () Bool)

(assert (=> bm!510942 (= call!510952 (derivationStepZipperDown!1337 (ite c!1106069 (regOne!32691 (h!70890 (exprs!5973 lt!2333672))) (ite c!1106068 (regTwo!32690 (h!70890 (exprs!5973 lt!2333672))) (ite c!1106070 (regOne!32690 (h!70890 (exprs!5973 lt!2333672))) (reg!16418 (h!70890 (exprs!5973 lt!2333672)))))) (ite (or c!1106069 c!1106068) (Context!10947 (t!378049 (exprs!5973 lt!2333672))) (Context!10947 call!510948)) (h!70891 s!2326)))))

(declare-fun bm!510943 () Bool)

(assert (=> bm!510943 (= call!510949 call!510952)))

(declare-fun b!6146825 () Bool)

(assert (=> b!6146825 (= e!3745756 call!510950)))

(declare-fun b!6146826 () Bool)

(declare-fun e!3745758 () (InoxSet Context!10946))

(assert (=> b!6146826 (= e!3745758 (store ((as const (Array Context!10946 Bool)) false) (Context!10947 (t!378049 (exprs!5973 lt!2333672))) true))))

(declare-fun b!6146828 () Bool)

(assert (=> b!6146828 (= e!3745758 e!3745755)))

(assert (=> b!6146828 (= c!1106069 ((_ is Union!16089) (h!70890 (exprs!5973 lt!2333672))))))

(declare-fun call!510947 () List!64566)

(declare-fun bm!510944 () Bool)

(assert (=> bm!510944 (= call!510947 ($colon$colon!1966 (exprs!5973 (Context!10947 (t!378049 (exprs!5973 lt!2333672)))) (ite (or c!1106068 c!1106070) (regTwo!32690 (h!70890 (exprs!5973 lt!2333672))) (h!70890 (exprs!5973 lt!2333672)))))))

(declare-fun bm!510945 () Bool)

(assert (=> bm!510945 (= call!510950 call!510949)))

(declare-fun bm!510946 () Bool)

(assert (=> bm!510946 (= call!510948 call!510947)))

(declare-fun bm!510947 () Bool)

(assert (=> bm!510947 (= call!510951 (derivationStepZipperDown!1337 (ite c!1106069 (regTwo!32691 (h!70890 (exprs!5973 lt!2333672))) (regOne!32690 (h!70890 (exprs!5973 lt!2333672)))) (ite c!1106069 (Context!10947 (t!378049 (exprs!5973 lt!2333672))) (Context!10947 call!510947)) (h!70891 s!2326)))))

(declare-fun b!6146829 () Bool)

(assert (=> b!6146829 (= e!3745757 e!3745756)))

(assert (=> b!6146829 (= c!1106070 ((_ is Concat!24934) (h!70890 (exprs!5973 lt!2333672))))))

(declare-fun b!6146830 () Bool)

(assert (=> b!6146830 (= c!1106068 e!3745760)))

(declare-fun res!2546448 () Bool)

(assert (=> b!6146830 (=> (not res!2546448) (not e!3745760))))

(assert (=> b!6146830 (= res!2546448 ((_ is Concat!24934) (h!70890 (exprs!5973 lt!2333672))))))

(assert (=> b!6146830 (= e!3745755 e!3745757)))

(declare-fun b!6146827 () Bool)

(assert (=> b!6146827 (= e!3745759 ((as const (Array Context!10946 Bool)) false))))

(declare-fun d!1925960 () Bool)

(declare-fun c!1106071 () Bool)

(assert (=> d!1925960 (= c!1106071 (and ((_ is ElementMatch!16089) (h!70890 (exprs!5973 lt!2333672))) (= (c!1105579 (h!70890 (exprs!5973 lt!2333672))) (h!70891 s!2326))))))

(assert (=> d!1925960 (= (derivationStepZipperDown!1337 (h!70890 (exprs!5973 lt!2333672)) (Context!10947 (t!378049 (exprs!5973 lt!2333672))) (h!70891 s!2326)) e!3745758)))

(assert (= (and d!1925960 c!1106071) b!6146826))

(assert (= (and d!1925960 (not c!1106071)) b!6146828))

(assert (= (and b!6146828 c!1106069) b!6146822))

(assert (= (and b!6146828 (not c!1106069)) b!6146830))

(assert (= (and b!6146830 res!2546448) b!6146824))

(assert (= (and b!6146830 c!1106068) b!6146823))

(assert (= (and b!6146830 (not c!1106068)) b!6146829))

(assert (= (and b!6146829 c!1106070) b!6146825))

(assert (= (and b!6146829 (not c!1106070)) b!6146820))

(assert (= (and b!6146820 c!1106072) b!6146821))

(assert (= (and b!6146820 (not c!1106072)) b!6146827))

(assert (= (or b!6146825 b!6146821) bm!510946))

(assert (= (or b!6146825 b!6146821) bm!510945))

(assert (= (or b!6146823 bm!510946) bm!510944))

(assert (= (or b!6146823 bm!510945) bm!510943))

(assert (= (or b!6146822 b!6146823) bm!510947))

(assert (= (or b!6146822 bm!510943) bm!510942))

(declare-fun m!6987218 () Bool)

(assert (=> b!6146826 m!6987218))

(declare-fun m!6987220 () Bool)

(assert (=> bm!510942 m!6987220))

(declare-fun m!6987222 () Bool)

(assert (=> bm!510947 m!6987222))

(declare-fun m!6987224 () Bool)

(assert (=> bm!510944 m!6987224))

(declare-fun m!6987226 () Bool)

(assert (=> b!6146824 m!6987226))

(assert (=> bm!510695 d!1925960))

(declare-fun d!1925962 () Bool)

(declare-fun c!1106073 () Bool)

(assert (=> d!1925962 (= c!1106073 (isEmpty!36399 (tail!11784 (t!378050 s!2326))))))

(declare-fun e!3745761 () Bool)

(assert (=> d!1925962 (= (matchZipper!2101 (derivationStepZipper!2062 lt!2333666 (head!12699 (t!378050 s!2326))) (tail!11784 (t!378050 s!2326))) e!3745761)))

(declare-fun b!6146831 () Bool)

(assert (=> b!6146831 (= e!3745761 (nullableZipper!1870 (derivationStepZipper!2062 lt!2333666 (head!12699 (t!378050 s!2326)))))))

(declare-fun b!6146832 () Bool)

(assert (=> b!6146832 (= e!3745761 (matchZipper!2101 (derivationStepZipper!2062 (derivationStepZipper!2062 lt!2333666 (head!12699 (t!378050 s!2326))) (head!12699 (tail!11784 (t!378050 s!2326)))) (tail!11784 (tail!11784 (t!378050 s!2326)))))))

(assert (= (and d!1925962 c!1106073) b!6146831))

(assert (= (and d!1925962 (not c!1106073)) b!6146832))

(assert (=> d!1925962 m!6986008))

(assert (=> d!1925962 m!6986822))

(assert (=> b!6146831 m!6986100))

(declare-fun m!6987228 () Bool)

(assert (=> b!6146831 m!6987228))

(assert (=> b!6146832 m!6986008))

(assert (=> b!6146832 m!6986826))

(assert (=> b!6146832 m!6986100))

(assert (=> b!6146832 m!6986826))

(declare-fun m!6987230 () Bool)

(assert (=> b!6146832 m!6987230))

(assert (=> b!6146832 m!6986008))

(assert (=> b!6146832 m!6986830))

(assert (=> b!6146832 m!6987230))

(assert (=> b!6146832 m!6986830))

(declare-fun m!6987232 () Bool)

(assert (=> b!6146832 m!6987232))

(assert (=> b!6145566 d!1925962))

(declare-fun bs!1524024 () Bool)

(declare-fun d!1925964 () Bool)

(assert (= bs!1524024 (and d!1925964 d!1925882)))

(declare-fun lambda!335151 () Int)

(assert (=> bs!1524024 (= lambda!335151 lambda!335141)))

(declare-fun bs!1524025 () Bool)

(assert (= bs!1524025 (and d!1925964 d!1925910)))

(assert (=> bs!1524025 (= lambda!335151 lambda!335145)))

(declare-fun bs!1524026 () Bool)

(assert (= bs!1524026 (and d!1925964 b!6145018)))

(assert (=> bs!1524026 (= (= (head!12699 (t!378050 s!2326)) (h!70891 s!2326)) (= lambda!335151 lambda!335021))))

(declare-fun bs!1524027 () Bool)

(assert (= bs!1524027 (and d!1925964 d!1925774)))

(assert (=> bs!1524027 (= lambda!335151 lambda!335130)))

(declare-fun bs!1524028 () Bool)

(assert (= bs!1524028 (and d!1925964 d!1925900)))

(assert (=> bs!1524028 (= lambda!335151 lambda!335144)))

(declare-fun bs!1524029 () Bool)

(assert (= bs!1524029 (and d!1925964 d!1925788)))

(assert (=> bs!1524029 (= lambda!335151 lambda!335131)))

(declare-fun bs!1524030 () Bool)

(assert (= bs!1524030 (and d!1925964 d!1925800)))

(assert (=> bs!1524030 (= lambda!335151 lambda!335132)))

(assert (=> d!1925964 true))

(assert (=> d!1925964 (= (derivationStepZipper!2062 lt!2333666 (head!12699 (t!378050 s!2326))) (flatMap!1594 lt!2333666 lambda!335151))))

(declare-fun bs!1524031 () Bool)

(assert (= bs!1524031 d!1925964))

(declare-fun m!6987234 () Bool)

(assert (=> bs!1524031 m!6987234))

(assert (=> b!6145566 d!1925964))

(assert (=> b!6145566 d!1925776))

(assert (=> b!6145566 d!1925778))

(declare-fun b!6146833 () Bool)

(declare-fun e!3745763 () List!64567)

(assert (=> b!6146833 (= e!3745763 (t!378050 s!2326))))

(declare-fun b!6146836 () Bool)

(declare-fun e!3745762 () Bool)

(declare-fun lt!2333799 () List!64567)

(assert (=> b!6146836 (= e!3745762 (or (not (= (t!378050 s!2326) Nil!64443)) (= lt!2333799 (++!14175 Nil!64443 (Cons!64443 (h!70891 s!2326) Nil!64443)))))))

(declare-fun b!6146835 () Bool)

(declare-fun res!2546450 () Bool)

(assert (=> b!6146835 (=> (not res!2546450) (not e!3745762))))

(assert (=> b!6146835 (= res!2546450 (= (size!40231 lt!2333799) (+ (size!40231 (++!14175 Nil!64443 (Cons!64443 (h!70891 s!2326) Nil!64443))) (size!40231 (t!378050 s!2326)))))))

(declare-fun d!1925966 () Bool)

(assert (=> d!1925966 e!3745762))

(declare-fun res!2546449 () Bool)

(assert (=> d!1925966 (=> (not res!2546449) (not e!3745762))))

(assert (=> d!1925966 (= res!2546449 (= (content!12002 lt!2333799) ((_ map or) (content!12002 (++!14175 Nil!64443 (Cons!64443 (h!70891 s!2326) Nil!64443))) (content!12002 (t!378050 s!2326)))))))

(assert (=> d!1925966 (= lt!2333799 e!3745763)))

(declare-fun c!1106074 () Bool)

(assert (=> d!1925966 (= c!1106074 ((_ is Nil!64443) (++!14175 Nil!64443 (Cons!64443 (h!70891 s!2326) Nil!64443))))))

(assert (=> d!1925966 (= (++!14175 (++!14175 Nil!64443 (Cons!64443 (h!70891 s!2326) Nil!64443)) (t!378050 s!2326)) lt!2333799)))

(declare-fun b!6146834 () Bool)

(assert (=> b!6146834 (= e!3745763 (Cons!64443 (h!70891 (++!14175 Nil!64443 (Cons!64443 (h!70891 s!2326) Nil!64443))) (++!14175 (t!378050 (++!14175 Nil!64443 (Cons!64443 (h!70891 s!2326) Nil!64443))) (t!378050 s!2326))))))

(assert (= (and d!1925966 c!1106074) b!6146833))

(assert (= (and d!1925966 (not c!1106074)) b!6146834))

(assert (= (and d!1925966 res!2546449) b!6146835))

(assert (= (and b!6146835 res!2546450) b!6146836))

(declare-fun m!6987236 () Bool)

(assert (=> b!6146835 m!6987236))

(assert (=> b!6146835 m!6986106))

(declare-fun m!6987238 () Bool)

(assert (=> b!6146835 m!6987238))

(declare-fun m!6987240 () Bool)

(assert (=> b!6146835 m!6987240))

(declare-fun m!6987242 () Bool)

(assert (=> d!1925966 m!6987242))

(assert (=> d!1925966 m!6986106))

(declare-fun m!6987244 () Bool)

(assert (=> d!1925966 m!6987244))

(declare-fun m!6987246 () Bool)

(assert (=> d!1925966 m!6987246))

(declare-fun m!6987248 () Bool)

(assert (=> b!6146834 m!6987248))

(assert (=> b!6145589 d!1925966))

(declare-fun b!6146837 () Bool)

(declare-fun e!3745765 () List!64567)

(assert (=> b!6146837 (= e!3745765 (Cons!64443 (h!70891 s!2326) Nil!64443))))

(declare-fun b!6146840 () Bool)

(declare-fun e!3745764 () Bool)

(declare-fun lt!2333800 () List!64567)

(assert (=> b!6146840 (= e!3745764 (or (not (= (Cons!64443 (h!70891 s!2326) Nil!64443) Nil!64443)) (= lt!2333800 Nil!64443)))))

(declare-fun b!6146839 () Bool)

(declare-fun res!2546452 () Bool)

(assert (=> b!6146839 (=> (not res!2546452) (not e!3745764))))

(assert (=> b!6146839 (= res!2546452 (= (size!40231 lt!2333800) (+ (size!40231 Nil!64443) (size!40231 (Cons!64443 (h!70891 s!2326) Nil!64443)))))))

(declare-fun d!1925968 () Bool)

(assert (=> d!1925968 e!3745764))

(declare-fun res!2546451 () Bool)

(assert (=> d!1925968 (=> (not res!2546451) (not e!3745764))))

(assert (=> d!1925968 (= res!2546451 (= (content!12002 lt!2333800) ((_ map or) (content!12002 Nil!64443) (content!12002 (Cons!64443 (h!70891 s!2326) Nil!64443)))))))

(assert (=> d!1925968 (= lt!2333800 e!3745765)))

(declare-fun c!1106075 () Bool)

(assert (=> d!1925968 (= c!1106075 ((_ is Nil!64443) Nil!64443))))

(assert (=> d!1925968 (= (++!14175 Nil!64443 (Cons!64443 (h!70891 s!2326) Nil!64443)) lt!2333800)))

(declare-fun b!6146838 () Bool)

(assert (=> b!6146838 (= e!3745765 (Cons!64443 (h!70891 Nil!64443) (++!14175 (t!378050 Nil!64443) (Cons!64443 (h!70891 s!2326) Nil!64443))))))

(assert (= (and d!1925968 c!1106075) b!6146837))

(assert (= (and d!1925968 (not c!1106075)) b!6146838))

(assert (= (and d!1925968 res!2546451) b!6146839))

(assert (= (and b!6146839 res!2546452) b!6146840))

(declare-fun m!6987250 () Bool)

(assert (=> b!6146839 m!6987250))

(declare-fun m!6987252 () Bool)

(assert (=> b!6146839 m!6987252))

(declare-fun m!6987254 () Bool)

(assert (=> b!6146839 m!6987254))

(declare-fun m!6987256 () Bool)

(assert (=> d!1925968 m!6987256))

(declare-fun m!6987258 () Bool)

(assert (=> d!1925968 m!6987258))

(declare-fun m!6987260 () Bool)

(assert (=> d!1925968 m!6987260))

(declare-fun m!6987262 () Bool)

(assert (=> b!6146838 m!6987262))

(assert (=> b!6145589 d!1925968))

(declare-fun d!1925970 () Bool)

(assert (=> d!1925970 (= (++!14175 (++!14175 Nil!64443 (Cons!64443 (h!70891 s!2326) Nil!64443)) (t!378050 s!2326)) s!2326)))

(declare-fun lt!2333803 () Unit!157513)

(declare-fun choose!45685 (List!64567 C!32448 List!64567 List!64567) Unit!157513)

(assert (=> d!1925970 (= lt!2333803 (choose!45685 Nil!64443 (h!70891 s!2326) (t!378050 s!2326) s!2326))))

(assert (=> d!1925970 (= (++!14175 Nil!64443 (Cons!64443 (h!70891 s!2326) (t!378050 s!2326))) s!2326)))

(assert (=> d!1925970 (= (lemmaMoveElementToOtherListKeepsConcatEq!2270 Nil!64443 (h!70891 s!2326) (t!378050 s!2326) s!2326) lt!2333803)))

(declare-fun bs!1524032 () Bool)

(assert (= bs!1524032 d!1925970))

(assert (=> bs!1524032 m!6986106))

(assert (=> bs!1524032 m!6986106))

(assert (=> bs!1524032 m!6986108))

(declare-fun m!6987264 () Bool)

(assert (=> bs!1524032 m!6987264))

(declare-fun m!6987266 () Bool)

(assert (=> bs!1524032 m!6987266))

(assert (=> b!6145589 d!1925970))

(declare-fun b!6146841 () Bool)

(declare-fun e!3745766 () Bool)

(assert (=> b!6146841 (= e!3745766 (matchR!8272 (regTwo!32690 r!7292) (t!378050 s!2326)))))

(declare-fun b!6146842 () Bool)

(declare-fun e!3745769 () Bool)

(declare-fun lt!2333805 () Option!15980)

(assert (=> b!6146842 (= e!3745769 (= (++!14175 (_1!36371 (get!22235 lt!2333805)) (_2!36371 (get!22235 lt!2333805))) s!2326))))

(declare-fun b!6146843 () Bool)

(declare-fun e!3745767 () Bool)

(assert (=> b!6146843 (= e!3745767 (not (isDefined!12683 lt!2333805)))))

(declare-fun b!6146844 () Bool)

(declare-fun e!3745770 () Option!15980)

(declare-fun e!3745768 () Option!15980)

(assert (=> b!6146844 (= e!3745770 e!3745768)))

(declare-fun c!1106077 () Bool)

(assert (=> b!6146844 (= c!1106077 ((_ is Nil!64443) (t!378050 s!2326)))))

(declare-fun b!6146845 () Bool)

(declare-fun lt!2333804 () Unit!157513)

(declare-fun lt!2333806 () Unit!157513)

(assert (=> b!6146845 (= lt!2333804 lt!2333806)))

(assert (=> b!6146845 (= (++!14175 (++!14175 (++!14175 Nil!64443 (Cons!64443 (h!70891 s!2326) Nil!64443)) (Cons!64443 (h!70891 (t!378050 s!2326)) Nil!64443)) (t!378050 (t!378050 s!2326))) s!2326)))

(assert (=> b!6146845 (= lt!2333806 (lemmaMoveElementToOtherListKeepsConcatEq!2270 (++!14175 Nil!64443 (Cons!64443 (h!70891 s!2326) Nil!64443)) (h!70891 (t!378050 s!2326)) (t!378050 (t!378050 s!2326)) s!2326))))

(assert (=> b!6146845 (= e!3745768 (findConcatSeparation!2394 (regOne!32690 r!7292) (regTwo!32690 r!7292) (++!14175 (++!14175 Nil!64443 (Cons!64443 (h!70891 s!2326) Nil!64443)) (Cons!64443 (h!70891 (t!378050 s!2326)) Nil!64443)) (t!378050 (t!378050 s!2326)) s!2326))))

(declare-fun b!6146846 () Bool)

(declare-fun res!2546454 () Bool)

(assert (=> b!6146846 (=> (not res!2546454) (not e!3745769))))

(assert (=> b!6146846 (= res!2546454 (matchR!8272 (regOne!32690 r!7292) (_1!36371 (get!22235 lt!2333805))))))

(declare-fun b!6146847 () Bool)

(assert (=> b!6146847 (= e!3745768 None!15979)))

(declare-fun b!6146848 () Bool)

(declare-fun res!2546455 () Bool)

(assert (=> b!6146848 (=> (not res!2546455) (not e!3745769))))

(assert (=> b!6146848 (= res!2546455 (matchR!8272 (regTwo!32690 r!7292) (_2!36371 (get!22235 lt!2333805))))))

(declare-fun d!1925972 () Bool)

(assert (=> d!1925972 e!3745767))

(declare-fun res!2546457 () Bool)

(assert (=> d!1925972 (=> res!2546457 e!3745767)))

(assert (=> d!1925972 (= res!2546457 e!3745769)))

(declare-fun res!2546453 () Bool)

(assert (=> d!1925972 (=> (not res!2546453) (not e!3745769))))

(assert (=> d!1925972 (= res!2546453 (isDefined!12683 lt!2333805))))

(assert (=> d!1925972 (= lt!2333805 e!3745770)))

(declare-fun c!1106076 () Bool)

(assert (=> d!1925972 (= c!1106076 e!3745766)))

(declare-fun res!2546456 () Bool)

(assert (=> d!1925972 (=> (not res!2546456) (not e!3745766))))

(assert (=> d!1925972 (= res!2546456 (matchR!8272 (regOne!32690 r!7292) (++!14175 Nil!64443 (Cons!64443 (h!70891 s!2326) Nil!64443))))))

(assert (=> d!1925972 (validRegex!7825 (regOne!32690 r!7292))))

(assert (=> d!1925972 (= (findConcatSeparation!2394 (regOne!32690 r!7292) (regTwo!32690 r!7292) (++!14175 Nil!64443 (Cons!64443 (h!70891 s!2326) Nil!64443)) (t!378050 s!2326) s!2326) lt!2333805)))

(declare-fun b!6146849 () Bool)

(assert (=> b!6146849 (= e!3745770 (Some!15979 (tuple2!66137 (++!14175 Nil!64443 (Cons!64443 (h!70891 s!2326) Nil!64443)) (t!378050 s!2326))))))

(assert (= (and d!1925972 res!2546456) b!6146841))

(assert (= (and d!1925972 c!1106076) b!6146849))

(assert (= (and d!1925972 (not c!1106076)) b!6146844))

(assert (= (and b!6146844 c!1106077) b!6146847))

(assert (= (and b!6146844 (not c!1106077)) b!6146845))

(assert (= (and d!1925972 res!2546453) b!6146846))

(assert (= (and b!6146846 res!2546454) b!6146848))

(assert (= (and b!6146848 res!2546455) b!6146842))

(assert (= (and d!1925972 (not res!2546457)) b!6146843))

(declare-fun m!6987268 () Bool)

(assert (=> b!6146841 m!6987268))

(assert (=> b!6146845 m!6986106))

(declare-fun m!6987270 () Bool)

(assert (=> b!6146845 m!6987270))

(assert (=> b!6146845 m!6987270))

(declare-fun m!6987272 () Bool)

(assert (=> b!6146845 m!6987272))

(assert (=> b!6146845 m!6986106))

(declare-fun m!6987274 () Bool)

(assert (=> b!6146845 m!6987274))

(assert (=> b!6146845 m!6987270))

(declare-fun m!6987276 () Bool)

(assert (=> b!6146845 m!6987276))

(declare-fun m!6987278 () Bool)

(assert (=> b!6146848 m!6987278))

(declare-fun m!6987280 () Bool)

(assert (=> b!6146848 m!6987280))

(assert (=> b!6146842 m!6987278))

(declare-fun m!6987282 () Bool)

(assert (=> b!6146842 m!6987282))

(declare-fun m!6987284 () Bool)

(assert (=> b!6146843 m!6987284))

(assert (=> b!6146846 m!6987278))

(declare-fun m!6987286 () Bool)

(assert (=> b!6146846 m!6987286))

(assert (=> d!1925972 m!6987284))

(assert (=> d!1925972 m!6986106))

(declare-fun m!6987288 () Bool)

(assert (=> d!1925972 m!6987288))

(assert (=> d!1925972 m!6986126))

(assert (=> b!6145589 d!1925972))

(declare-fun d!1925974 () Bool)

(assert (=> d!1925974 (= ($colon$colon!1966 (exprs!5973 lt!2333656) (ite (or c!1105775 c!1105777) (regTwo!32690 (regTwo!32691 (regOne!32690 r!7292))) (regTwo!32691 (regOne!32690 r!7292)))) (Cons!64442 (ite (or c!1105775 c!1105777) (regTwo!32690 (regTwo!32691 (regOne!32690 r!7292))) (regTwo!32691 (regOne!32690 r!7292))) (exprs!5973 lt!2333656)))))

(assert (=> bm!510707 d!1925974))

(declare-fun e!3745771 () Bool)

(assert (=> b!6145771 (= tp!1716810 e!3745771)))

(declare-fun b!6146852 () Bool)

(declare-fun tp!1717035 () Bool)

(assert (=> b!6146852 (= e!3745771 tp!1717035)))

(declare-fun b!6146850 () Bool)

(assert (=> b!6146850 (= e!3745771 tp_is_empty!41431)))

(declare-fun b!6146853 () Bool)

(declare-fun tp!1717034 () Bool)

(declare-fun tp!1717032 () Bool)

(assert (=> b!6146853 (= e!3745771 (and tp!1717034 tp!1717032))))

(declare-fun b!6146851 () Bool)

(declare-fun tp!1717031 () Bool)

(declare-fun tp!1717033 () Bool)

(assert (=> b!6146851 (= e!3745771 (and tp!1717031 tp!1717033))))

(assert (= (and b!6145771 ((_ is ElementMatch!16089) (regOne!32691 (reg!16418 r!7292)))) b!6146850))

(assert (= (and b!6145771 ((_ is Concat!24934) (regOne!32691 (reg!16418 r!7292)))) b!6146851))

(assert (= (and b!6145771 ((_ is Star!16089) (regOne!32691 (reg!16418 r!7292)))) b!6146852))

(assert (= (and b!6145771 ((_ is Union!16089) (regOne!32691 (reg!16418 r!7292)))) b!6146853))

(declare-fun e!3745772 () Bool)

(assert (=> b!6145771 (= tp!1716808 e!3745772)))

(declare-fun b!6146856 () Bool)

(declare-fun tp!1717040 () Bool)

(assert (=> b!6146856 (= e!3745772 tp!1717040)))

(declare-fun b!6146854 () Bool)

(assert (=> b!6146854 (= e!3745772 tp_is_empty!41431)))

(declare-fun b!6146857 () Bool)

(declare-fun tp!1717039 () Bool)

(declare-fun tp!1717037 () Bool)

(assert (=> b!6146857 (= e!3745772 (and tp!1717039 tp!1717037))))

(declare-fun b!6146855 () Bool)

(declare-fun tp!1717036 () Bool)

(declare-fun tp!1717038 () Bool)

(assert (=> b!6146855 (= e!3745772 (and tp!1717036 tp!1717038))))

(assert (= (and b!6145771 ((_ is ElementMatch!16089) (regTwo!32691 (reg!16418 r!7292)))) b!6146854))

(assert (= (and b!6145771 ((_ is Concat!24934) (regTwo!32691 (reg!16418 r!7292)))) b!6146855))

(assert (= (and b!6145771 ((_ is Star!16089) (regTwo!32691 (reg!16418 r!7292)))) b!6146856))

(assert (= (and b!6145771 ((_ is Union!16089) (regTwo!32691 (reg!16418 r!7292)))) b!6146857))

(declare-fun e!3745773 () Bool)

(assert (=> b!6145770 (= tp!1716811 e!3745773)))

(declare-fun b!6146860 () Bool)

(declare-fun tp!1717045 () Bool)

(assert (=> b!6146860 (= e!3745773 tp!1717045)))

(declare-fun b!6146858 () Bool)

(assert (=> b!6146858 (= e!3745773 tp_is_empty!41431)))

(declare-fun b!6146861 () Bool)

(declare-fun tp!1717044 () Bool)

(declare-fun tp!1717042 () Bool)

(assert (=> b!6146861 (= e!3745773 (and tp!1717044 tp!1717042))))

(declare-fun b!6146859 () Bool)

(declare-fun tp!1717041 () Bool)

(declare-fun tp!1717043 () Bool)

(assert (=> b!6146859 (= e!3745773 (and tp!1717041 tp!1717043))))

(assert (= (and b!6145770 ((_ is ElementMatch!16089) (reg!16418 (reg!16418 r!7292)))) b!6146858))

(assert (= (and b!6145770 ((_ is Concat!24934) (reg!16418 (reg!16418 r!7292)))) b!6146859))

(assert (= (and b!6145770 ((_ is Star!16089) (reg!16418 (reg!16418 r!7292)))) b!6146860))

(assert (= (and b!6145770 ((_ is Union!16089) (reg!16418 (reg!16418 r!7292)))) b!6146861))

(declare-fun e!3745774 () Bool)

(assert (=> b!6145769 (= tp!1716807 e!3745774)))

(declare-fun b!6146864 () Bool)

(declare-fun tp!1717050 () Bool)

(assert (=> b!6146864 (= e!3745774 tp!1717050)))

(declare-fun b!6146862 () Bool)

(assert (=> b!6146862 (= e!3745774 tp_is_empty!41431)))

(declare-fun b!6146865 () Bool)

(declare-fun tp!1717049 () Bool)

(declare-fun tp!1717047 () Bool)

(assert (=> b!6146865 (= e!3745774 (and tp!1717049 tp!1717047))))

(declare-fun b!6146863 () Bool)

(declare-fun tp!1717046 () Bool)

(declare-fun tp!1717048 () Bool)

(assert (=> b!6146863 (= e!3745774 (and tp!1717046 tp!1717048))))

(assert (= (and b!6145769 ((_ is ElementMatch!16089) (regOne!32690 (reg!16418 r!7292)))) b!6146862))

(assert (= (and b!6145769 ((_ is Concat!24934) (regOne!32690 (reg!16418 r!7292)))) b!6146863))

(assert (= (and b!6145769 ((_ is Star!16089) (regOne!32690 (reg!16418 r!7292)))) b!6146864))

(assert (= (and b!6145769 ((_ is Union!16089) (regOne!32690 (reg!16418 r!7292)))) b!6146865))

(declare-fun e!3745775 () Bool)

(assert (=> b!6145769 (= tp!1716809 e!3745775)))

(declare-fun b!6146868 () Bool)

(declare-fun tp!1717055 () Bool)

(assert (=> b!6146868 (= e!3745775 tp!1717055)))

(declare-fun b!6146866 () Bool)

(assert (=> b!6146866 (= e!3745775 tp_is_empty!41431)))

(declare-fun b!6146869 () Bool)

(declare-fun tp!1717054 () Bool)

(declare-fun tp!1717052 () Bool)

(assert (=> b!6146869 (= e!3745775 (and tp!1717054 tp!1717052))))

(declare-fun b!6146867 () Bool)

(declare-fun tp!1717051 () Bool)

(declare-fun tp!1717053 () Bool)

(assert (=> b!6146867 (= e!3745775 (and tp!1717051 tp!1717053))))

(assert (= (and b!6145769 ((_ is ElementMatch!16089) (regTwo!32690 (reg!16418 r!7292)))) b!6146866))

(assert (= (and b!6145769 ((_ is Concat!24934) (regTwo!32690 (reg!16418 r!7292)))) b!6146867))

(assert (= (and b!6145769 ((_ is Star!16089) (regTwo!32690 (reg!16418 r!7292)))) b!6146868))

(assert (= (and b!6145769 ((_ is Union!16089) (regTwo!32690 (reg!16418 r!7292)))) b!6146869))

(declare-fun e!3745776 () Bool)

(assert (=> b!6145782 (= tp!1716824 e!3745776)))

(declare-fun b!6146872 () Bool)

(declare-fun tp!1717060 () Bool)

(assert (=> b!6146872 (= e!3745776 tp!1717060)))

(declare-fun b!6146870 () Bool)

(assert (=> b!6146870 (= e!3745776 tp_is_empty!41431)))

(declare-fun b!6146873 () Bool)

(declare-fun tp!1717059 () Bool)

(declare-fun tp!1717057 () Bool)

(assert (=> b!6146873 (= e!3745776 (and tp!1717059 tp!1717057))))

(declare-fun b!6146871 () Bool)

(declare-fun tp!1717056 () Bool)

(declare-fun tp!1717058 () Bool)

(assert (=> b!6146871 (= e!3745776 (and tp!1717056 tp!1717058))))

(assert (= (and b!6145782 ((_ is ElementMatch!16089) (h!70890 (exprs!5973 (h!70892 zl!343))))) b!6146870))

(assert (= (and b!6145782 ((_ is Concat!24934) (h!70890 (exprs!5973 (h!70892 zl!343))))) b!6146871))

(assert (= (and b!6145782 ((_ is Star!16089) (h!70890 (exprs!5973 (h!70892 zl!343))))) b!6146872))

(assert (= (and b!6145782 ((_ is Union!16089) (h!70890 (exprs!5973 (h!70892 zl!343))))) b!6146873))

(declare-fun b!6146874 () Bool)

(declare-fun e!3745777 () Bool)

(declare-fun tp!1717061 () Bool)

(declare-fun tp!1717062 () Bool)

(assert (=> b!6146874 (= e!3745777 (and tp!1717061 tp!1717062))))

(assert (=> b!6145782 (= tp!1716825 e!3745777)))

(assert (= (and b!6145782 ((_ is Cons!64442) (t!378049 (exprs!5973 (h!70892 zl!343))))) b!6146874))

(declare-fun e!3745778 () Bool)

(assert (=> b!6145790 (= tp!1716834 e!3745778)))

(declare-fun b!6146877 () Bool)

(declare-fun tp!1717067 () Bool)

(assert (=> b!6146877 (= e!3745778 tp!1717067)))

(declare-fun b!6146875 () Bool)

(assert (=> b!6146875 (= e!3745778 tp_is_empty!41431)))

(declare-fun b!6146878 () Bool)

(declare-fun tp!1717066 () Bool)

(declare-fun tp!1717064 () Bool)

(assert (=> b!6146878 (= e!3745778 (and tp!1717066 tp!1717064))))

(declare-fun b!6146876 () Bool)

(declare-fun tp!1717063 () Bool)

(declare-fun tp!1717065 () Bool)

(assert (=> b!6146876 (= e!3745778 (and tp!1717063 tp!1717065))))

(assert (= (and b!6145790 ((_ is ElementMatch!16089) (regOne!32691 (regTwo!32691 r!7292)))) b!6146875))

(assert (= (and b!6145790 ((_ is Concat!24934) (regOne!32691 (regTwo!32691 r!7292)))) b!6146876))

(assert (= (and b!6145790 ((_ is Star!16089) (regOne!32691 (regTwo!32691 r!7292)))) b!6146877))

(assert (= (and b!6145790 ((_ is Union!16089) (regOne!32691 (regTwo!32691 r!7292)))) b!6146878))

(declare-fun e!3745779 () Bool)

(assert (=> b!6145790 (= tp!1716832 e!3745779)))

(declare-fun b!6146881 () Bool)

(declare-fun tp!1717072 () Bool)

(assert (=> b!6146881 (= e!3745779 tp!1717072)))

(declare-fun b!6146879 () Bool)

(assert (=> b!6146879 (= e!3745779 tp_is_empty!41431)))

(declare-fun b!6146882 () Bool)

(declare-fun tp!1717071 () Bool)

(declare-fun tp!1717069 () Bool)

(assert (=> b!6146882 (= e!3745779 (and tp!1717071 tp!1717069))))

(declare-fun b!6146880 () Bool)

(declare-fun tp!1717068 () Bool)

(declare-fun tp!1717070 () Bool)

(assert (=> b!6146880 (= e!3745779 (and tp!1717068 tp!1717070))))

(assert (= (and b!6145790 ((_ is ElementMatch!16089) (regTwo!32691 (regTwo!32691 r!7292)))) b!6146879))

(assert (= (and b!6145790 ((_ is Concat!24934) (regTwo!32691 (regTwo!32691 r!7292)))) b!6146880))

(assert (= (and b!6145790 ((_ is Star!16089) (regTwo!32691 (regTwo!32691 r!7292)))) b!6146881))

(assert (= (and b!6145790 ((_ is Union!16089) (regTwo!32691 (regTwo!32691 r!7292)))) b!6146882))

(declare-fun e!3745780 () Bool)

(assert (=> b!6145789 (= tp!1716835 e!3745780)))

(declare-fun b!6146885 () Bool)

(declare-fun tp!1717077 () Bool)

(assert (=> b!6146885 (= e!3745780 tp!1717077)))

(declare-fun b!6146883 () Bool)

(assert (=> b!6146883 (= e!3745780 tp_is_empty!41431)))

(declare-fun b!6146886 () Bool)

(declare-fun tp!1717076 () Bool)

(declare-fun tp!1717074 () Bool)

(assert (=> b!6146886 (= e!3745780 (and tp!1717076 tp!1717074))))

(declare-fun b!6146884 () Bool)

(declare-fun tp!1717073 () Bool)

(declare-fun tp!1717075 () Bool)

(assert (=> b!6146884 (= e!3745780 (and tp!1717073 tp!1717075))))

(assert (= (and b!6145789 ((_ is ElementMatch!16089) (reg!16418 (regTwo!32691 r!7292)))) b!6146883))

(assert (= (and b!6145789 ((_ is Concat!24934) (reg!16418 (regTwo!32691 r!7292)))) b!6146884))

(assert (= (and b!6145789 ((_ is Star!16089) (reg!16418 (regTwo!32691 r!7292)))) b!6146885))

(assert (= (and b!6145789 ((_ is Union!16089) (reg!16418 (regTwo!32691 r!7292)))) b!6146886))

(declare-fun e!3745781 () Bool)

(assert (=> b!6145798 (= tp!1716844 e!3745781)))

(declare-fun b!6146889 () Bool)

(declare-fun tp!1717082 () Bool)

(assert (=> b!6146889 (= e!3745781 tp!1717082)))

(declare-fun b!6146887 () Bool)

(assert (=> b!6146887 (= e!3745781 tp_is_empty!41431)))

(declare-fun b!6146890 () Bool)

(declare-fun tp!1717081 () Bool)

(declare-fun tp!1717079 () Bool)

(assert (=> b!6146890 (= e!3745781 (and tp!1717081 tp!1717079))))

(declare-fun b!6146888 () Bool)

(declare-fun tp!1717078 () Bool)

(declare-fun tp!1717080 () Bool)

(assert (=> b!6146888 (= e!3745781 (and tp!1717078 tp!1717080))))

(assert (= (and b!6145798 ((_ is ElementMatch!16089) (regOne!32691 (regTwo!32690 r!7292)))) b!6146887))

(assert (= (and b!6145798 ((_ is Concat!24934) (regOne!32691 (regTwo!32690 r!7292)))) b!6146888))

(assert (= (and b!6145798 ((_ is Star!16089) (regOne!32691 (regTwo!32690 r!7292)))) b!6146889))

(assert (= (and b!6145798 ((_ is Union!16089) (regOne!32691 (regTwo!32690 r!7292)))) b!6146890))

(declare-fun e!3745782 () Bool)

(assert (=> b!6145798 (= tp!1716842 e!3745782)))

(declare-fun b!6146893 () Bool)

(declare-fun tp!1717087 () Bool)

(assert (=> b!6146893 (= e!3745782 tp!1717087)))

(declare-fun b!6146891 () Bool)

(assert (=> b!6146891 (= e!3745782 tp_is_empty!41431)))

(declare-fun b!6146894 () Bool)

(declare-fun tp!1717086 () Bool)

(declare-fun tp!1717084 () Bool)

(assert (=> b!6146894 (= e!3745782 (and tp!1717086 tp!1717084))))

(declare-fun b!6146892 () Bool)

(declare-fun tp!1717083 () Bool)

(declare-fun tp!1717085 () Bool)

(assert (=> b!6146892 (= e!3745782 (and tp!1717083 tp!1717085))))

(assert (= (and b!6145798 ((_ is ElementMatch!16089) (regTwo!32691 (regTwo!32690 r!7292)))) b!6146891))

(assert (= (and b!6145798 ((_ is Concat!24934) (regTwo!32691 (regTwo!32690 r!7292)))) b!6146892))

(assert (= (and b!6145798 ((_ is Star!16089) (regTwo!32691 (regTwo!32690 r!7292)))) b!6146893))

(assert (= (and b!6145798 ((_ is Union!16089) (regTwo!32691 (regTwo!32690 r!7292)))) b!6146894))

(declare-fun b!6146895 () Bool)

(declare-fun e!3745783 () Bool)

(declare-fun tp!1717088 () Bool)

(declare-fun tp!1717089 () Bool)

(assert (=> b!6146895 (= e!3745783 (and tp!1717088 tp!1717089))))

(assert (=> b!6145776 (= tp!1716817 e!3745783)))

(assert (= (and b!6145776 ((_ is Cons!64442) (exprs!5973 setElem!41590))) b!6146895))

(declare-fun e!3745784 () Bool)

(assert (=> b!6145797 (= tp!1716845 e!3745784)))

(declare-fun b!6146898 () Bool)

(declare-fun tp!1717094 () Bool)

(assert (=> b!6146898 (= e!3745784 tp!1717094)))

(declare-fun b!6146896 () Bool)

(assert (=> b!6146896 (= e!3745784 tp_is_empty!41431)))

(declare-fun b!6146899 () Bool)

(declare-fun tp!1717093 () Bool)

(declare-fun tp!1717091 () Bool)

(assert (=> b!6146899 (= e!3745784 (and tp!1717093 tp!1717091))))

(declare-fun b!6146897 () Bool)

(declare-fun tp!1717090 () Bool)

(declare-fun tp!1717092 () Bool)

(assert (=> b!6146897 (= e!3745784 (and tp!1717090 tp!1717092))))

(assert (= (and b!6145797 ((_ is ElementMatch!16089) (reg!16418 (regTwo!32690 r!7292)))) b!6146896))

(assert (= (and b!6145797 ((_ is Concat!24934) (reg!16418 (regTwo!32690 r!7292)))) b!6146897))

(assert (= (and b!6145797 ((_ is Star!16089) (reg!16418 (regTwo!32690 r!7292)))) b!6146898))

(assert (= (and b!6145797 ((_ is Union!16089) (reg!16418 (regTwo!32690 r!7292)))) b!6146899))

(declare-fun condSetEmpty!41600 () Bool)

(assert (=> setNonEmpty!41590 (= condSetEmpty!41600 (= setRest!41590 ((as const (Array Context!10946 Bool)) false)))))

(declare-fun setRes!41600 () Bool)

(assert (=> setNonEmpty!41590 (= tp!1716816 setRes!41600)))

(declare-fun setIsEmpty!41600 () Bool)

(assert (=> setIsEmpty!41600 setRes!41600))

(declare-fun setNonEmpty!41600 () Bool)

(declare-fun e!3745785 () Bool)

(declare-fun tp!1717095 () Bool)

(declare-fun setElem!41600 () Context!10946)

(assert (=> setNonEmpty!41600 (= setRes!41600 (and tp!1717095 (inv!83469 setElem!41600) e!3745785))))

(declare-fun setRest!41600 () (InoxSet Context!10946))

(assert (=> setNonEmpty!41600 (= setRest!41590 ((_ map or) (store ((as const (Array Context!10946 Bool)) false) setElem!41600 true) setRest!41600))))

(declare-fun b!6146900 () Bool)

(declare-fun tp!1717096 () Bool)

(assert (=> b!6146900 (= e!3745785 tp!1717096)))

(assert (= (and setNonEmpty!41590 condSetEmpty!41600) setIsEmpty!41600))

(assert (= (and setNonEmpty!41590 (not condSetEmpty!41600)) setNonEmpty!41600))

(assert (= setNonEmpty!41600 b!6146900))

(declare-fun m!6987290 () Bool)

(assert (=> setNonEmpty!41600 m!6987290))

(declare-fun e!3745786 () Bool)

(assert (=> b!6145781 (= tp!1716822 e!3745786)))

(declare-fun b!6146903 () Bool)

(declare-fun tp!1717101 () Bool)

(assert (=> b!6146903 (= e!3745786 tp!1717101)))

(declare-fun b!6146901 () Bool)

(assert (=> b!6146901 (= e!3745786 tp_is_empty!41431)))

(declare-fun b!6146904 () Bool)

(declare-fun tp!1717100 () Bool)

(declare-fun tp!1717098 () Bool)

(assert (=> b!6146904 (= e!3745786 (and tp!1717100 tp!1717098))))

(declare-fun b!6146902 () Bool)

(declare-fun tp!1717097 () Bool)

(declare-fun tp!1717099 () Bool)

(assert (=> b!6146902 (= e!3745786 (and tp!1717097 tp!1717099))))

(assert (= (and b!6145781 ((_ is ElementMatch!16089) (h!70890 (exprs!5973 setElem!41584)))) b!6146901))

(assert (= (and b!6145781 ((_ is Concat!24934) (h!70890 (exprs!5973 setElem!41584)))) b!6146902))

(assert (= (and b!6145781 ((_ is Star!16089) (h!70890 (exprs!5973 setElem!41584)))) b!6146903))

(assert (= (and b!6145781 ((_ is Union!16089) (h!70890 (exprs!5973 setElem!41584)))) b!6146904))

(declare-fun b!6146905 () Bool)

(declare-fun e!3745787 () Bool)

(declare-fun tp!1717102 () Bool)

(declare-fun tp!1717103 () Bool)

(assert (=> b!6146905 (= e!3745787 (and tp!1717102 tp!1717103))))

(assert (=> b!6145781 (= tp!1716823 e!3745787)))

(assert (= (and b!6145781 ((_ is Cons!64442) (t!378049 (exprs!5973 setElem!41584)))) b!6146905))

(declare-fun e!3745788 () Bool)

(assert (=> b!6145788 (= tp!1716831 e!3745788)))

(declare-fun b!6146908 () Bool)

(declare-fun tp!1717108 () Bool)

(assert (=> b!6146908 (= e!3745788 tp!1717108)))

(declare-fun b!6146906 () Bool)

(assert (=> b!6146906 (= e!3745788 tp_is_empty!41431)))

(declare-fun b!6146909 () Bool)

(declare-fun tp!1717107 () Bool)

(declare-fun tp!1717105 () Bool)

(assert (=> b!6146909 (= e!3745788 (and tp!1717107 tp!1717105))))

(declare-fun b!6146907 () Bool)

(declare-fun tp!1717104 () Bool)

(declare-fun tp!1717106 () Bool)

(assert (=> b!6146907 (= e!3745788 (and tp!1717104 tp!1717106))))

(assert (= (and b!6145788 ((_ is ElementMatch!16089) (regOne!32690 (regTwo!32691 r!7292)))) b!6146906))

(assert (= (and b!6145788 ((_ is Concat!24934) (regOne!32690 (regTwo!32691 r!7292)))) b!6146907))

(assert (= (and b!6145788 ((_ is Star!16089) (regOne!32690 (regTwo!32691 r!7292)))) b!6146908))

(assert (= (and b!6145788 ((_ is Union!16089) (regOne!32690 (regTwo!32691 r!7292)))) b!6146909))

(declare-fun e!3745789 () Bool)

(assert (=> b!6145788 (= tp!1716833 e!3745789)))

(declare-fun b!6146912 () Bool)

(declare-fun tp!1717113 () Bool)

(assert (=> b!6146912 (= e!3745789 tp!1717113)))

(declare-fun b!6146910 () Bool)

(assert (=> b!6146910 (= e!3745789 tp_is_empty!41431)))

(declare-fun b!6146913 () Bool)

(declare-fun tp!1717112 () Bool)

(declare-fun tp!1717110 () Bool)

(assert (=> b!6146913 (= e!3745789 (and tp!1717112 tp!1717110))))

(declare-fun b!6146911 () Bool)

(declare-fun tp!1717109 () Bool)

(declare-fun tp!1717111 () Bool)

(assert (=> b!6146911 (= e!3745789 (and tp!1717109 tp!1717111))))

(assert (= (and b!6145788 ((_ is ElementMatch!16089) (regTwo!32690 (regTwo!32691 r!7292)))) b!6146910))

(assert (= (and b!6145788 ((_ is Concat!24934) (regTwo!32690 (regTwo!32691 r!7292)))) b!6146911))

(assert (= (and b!6145788 ((_ is Star!16089) (regTwo!32690 (regTwo!32691 r!7292)))) b!6146912))

(assert (= (and b!6145788 ((_ is Union!16089) (regTwo!32690 (regTwo!32691 r!7292)))) b!6146913))

(declare-fun e!3745790 () Bool)

(assert (=> b!6145796 (= tp!1716841 e!3745790)))

(declare-fun b!6146916 () Bool)

(declare-fun tp!1717118 () Bool)

(assert (=> b!6146916 (= e!3745790 tp!1717118)))

(declare-fun b!6146914 () Bool)

(assert (=> b!6146914 (= e!3745790 tp_is_empty!41431)))

(declare-fun b!6146917 () Bool)

(declare-fun tp!1717117 () Bool)

(declare-fun tp!1717115 () Bool)

(assert (=> b!6146917 (= e!3745790 (and tp!1717117 tp!1717115))))

(declare-fun b!6146915 () Bool)

(declare-fun tp!1717114 () Bool)

(declare-fun tp!1717116 () Bool)

(assert (=> b!6146915 (= e!3745790 (and tp!1717114 tp!1717116))))

(assert (= (and b!6145796 ((_ is ElementMatch!16089) (regOne!32690 (regTwo!32690 r!7292)))) b!6146914))

(assert (= (and b!6145796 ((_ is Concat!24934) (regOne!32690 (regTwo!32690 r!7292)))) b!6146915))

(assert (= (and b!6145796 ((_ is Star!16089) (regOne!32690 (regTwo!32690 r!7292)))) b!6146916))

(assert (= (and b!6145796 ((_ is Union!16089) (regOne!32690 (regTwo!32690 r!7292)))) b!6146917))

(declare-fun e!3745791 () Bool)

(assert (=> b!6145796 (= tp!1716843 e!3745791)))

(declare-fun b!6146920 () Bool)

(declare-fun tp!1717123 () Bool)

(assert (=> b!6146920 (= e!3745791 tp!1717123)))

(declare-fun b!6146918 () Bool)

(assert (=> b!6146918 (= e!3745791 tp_is_empty!41431)))

(declare-fun b!6146921 () Bool)

(declare-fun tp!1717122 () Bool)

(declare-fun tp!1717120 () Bool)

(assert (=> b!6146921 (= e!3745791 (and tp!1717122 tp!1717120))))

(declare-fun b!6146919 () Bool)

(declare-fun tp!1717119 () Bool)

(declare-fun tp!1717121 () Bool)

(assert (=> b!6146919 (= e!3745791 (and tp!1717119 tp!1717121))))

(assert (= (and b!6145796 ((_ is ElementMatch!16089) (regTwo!32690 (regTwo!32690 r!7292)))) b!6146918))

(assert (= (and b!6145796 ((_ is Concat!24934) (regTwo!32690 (regTwo!32690 r!7292)))) b!6146919))

(assert (= (and b!6145796 ((_ is Star!16089) (regTwo!32690 (regTwo!32690 r!7292)))) b!6146920))

(assert (= (and b!6145796 ((_ is Union!16089) (regTwo!32690 (regTwo!32690 r!7292)))) b!6146921))

(declare-fun b!6146922 () Bool)

(declare-fun e!3745792 () Bool)

(declare-fun tp!1717124 () Bool)

(declare-fun tp!1717125 () Bool)

(assert (=> b!6146922 (= e!3745792 (and tp!1717124 tp!1717125))))

(assert (=> b!6145811 (= tp!1716853 e!3745792)))

(assert (= (and b!6145811 ((_ is Cons!64442) (exprs!5973 (h!70892 (t!378051 zl!343))))) b!6146922))

(declare-fun b!6146924 () Bool)

(declare-fun e!3745794 () Bool)

(declare-fun tp!1717126 () Bool)

(assert (=> b!6146924 (= e!3745794 tp!1717126)))

(declare-fun e!3745793 () Bool)

(declare-fun b!6146923 () Bool)

(declare-fun tp!1717127 () Bool)

(assert (=> b!6146923 (= e!3745793 (and (inv!83469 (h!70892 (t!378051 (t!378051 zl!343)))) e!3745794 tp!1717127))))

(assert (=> b!6145810 (= tp!1716854 e!3745793)))

(assert (= b!6146923 b!6146924))

(assert (= (and b!6145810 ((_ is Cons!64444) (t!378051 (t!378051 zl!343)))) b!6146923))

(declare-fun m!6987292 () Bool)

(assert (=> b!6146923 m!6987292))

(declare-fun b!6146925 () Bool)

(declare-fun e!3745795 () Bool)

(declare-fun tp!1717128 () Bool)

(assert (=> b!6146925 (= e!3745795 (and tp_is_empty!41431 tp!1717128))))

(assert (=> b!6145803 (= tp!1716848 e!3745795)))

(assert (= (and b!6145803 ((_ is Cons!64443) (t!378050 (t!378050 s!2326)))) b!6146925))

(declare-fun e!3745796 () Bool)

(assert (=> b!6145786 (= tp!1716829 e!3745796)))

(declare-fun b!6146928 () Bool)

(declare-fun tp!1717133 () Bool)

(assert (=> b!6146928 (= e!3745796 tp!1717133)))

(declare-fun b!6146926 () Bool)

(assert (=> b!6146926 (= e!3745796 tp_is_empty!41431)))

(declare-fun b!6146929 () Bool)

(declare-fun tp!1717132 () Bool)

(declare-fun tp!1717130 () Bool)

(assert (=> b!6146929 (= e!3745796 (and tp!1717132 tp!1717130))))

(declare-fun b!6146927 () Bool)

(declare-fun tp!1717129 () Bool)

(declare-fun tp!1717131 () Bool)

(assert (=> b!6146927 (= e!3745796 (and tp!1717129 tp!1717131))))

(assert (= (and b!6145786 ((_ is ElementMatch!16089) (regOne!32691 (regOne!32691 r!7292)))) b!6146926))

(assert (= (and b!6145786 ((_ is Concat!24934) (regOne!32691 (regOne!32691 r!7292)))) b!6146927))

(assert (= (and b!6145786 ((_ is Star!16089) (regOne!32691 (regOne!32691 r!7292)))) b!6146928))

(assert (= (and b!6145786 ((_ is Union!16089) (regOne!32691 (regOne!32691 r!7292)))) b!6146929))

(declare-fun e!3745797 () Bool)

(assert (=> b!6145786 (= tp!1716827 e!3745797)))

(declare-fun b!6146932 () Bool)

(declare-fun tp!1717138 () Bool)

(assert (=> b!6146932 (= e!3745797 tp!1717138)))

(declare-fun b!6146930 () Bool)

(assert (=> b!6146930 (= e!3745797 tp_is_empty!41431)))

(declare-fun b!6146933 () Bool)

(declare-fun tp!1717137 () Bool)

(declare-fun tp!1717135 () Bool)

(assert (=> b!6146933 (= e!3745797 (and tp!1717137 tp!1717135))))

(declare-fun b!6146931 () Bool)

(declare-fun tp!1717134 () Bool)

(declare-fun tp!1717136 () Bool)

(assert (=> b!6146931 (= e!3745797 (and tp!1717134 tp!1717136))))

(assert (= (and b!6145786 ((_ is ElementMatch!16089) (regTwo!32691 (regOne!32691 r!7292)))) b!6146930))

(assert (= (and b!6145786 ((_ is Concat!24934) (regTwo!32691 (regOne!32691 r!7292)))) b!6146931))

(assert (= (and b!6145786 ((_ is Star!16089) (regTwo!32691 (regOne!32691 r!7292)))) b!6146932))

(assert (= (and b!6145786 ((_ is Union!16089) (regTwo!32691 (regOne!32691 r!7292)))) b!6146933))

(declare-fun e!3745798 () Bool)

(assert (=> b!6145784 (= tp!1716826 e!3745798)))

(declare-fun b!6146936 () Bool)

(declare-fun tp!1717143 () Bool)

(assert (=> b!6146936 (= e!3745798 tp!1717143)))

(declare-fun b!6146934 () Bool)

(assert (=> b!6146934 (= e!3745798 tp_is_empty!41431)))

(declare-fun b!6146937 () Bool)

(declare-fun tp!1717142 () Bool)

(declare-fun tp!1717140 () Bool)

(assert (=> b!6146937 (= e!3745798 (and tp!1717142 tp!1717140))))

(declare-fun b!6146935 () Bool)

(declare-fun tp!1717139 () Bool)

(declare-fun tp!1717141 () Bool)

(assert (=> b!6146935 (= e!3745798 (and tp!1717139 tp!1717141))))

(assert (= (and b!6145784 ((_ is ElementMatch!16089) (regOne!32690 (regOne!32691 r!7292)))) b!6146934))

(assert (= (and b!6145784 ((_ is Concat!24934) (regOne!32690 (regOne!32691 r!7292)))) b!6146935))

(assert (= (and b!6145784 ((_ is Star!16089) (regOne!32690 (regOne!32691 r!7292)))) b!6146936))

(assert (= (and b!6145784 ((_ is Union!16089) (regOne!32690 (regOne!32691 r!7292)))) b!6146937))

(declare-fun e!3745799 () Bool)

(assert (=> b!6145784 (= tp!1716828 e!3745799)))

(declare-fun b!6146940 () Bool)

(declare-fun tp!1717148 () Bool)

(assert (=> b!6146940 (= e!3745799 tp!1717148)))

(declare-fun b!6146938 () Bool)

(assert (=> b!6146938 (= e!3745799 tp_is_empty!41431)))

(declare-fun b!6146941 () Bool)

(declare-fun tp!1717147 () Bool)

(declare-fun tp!1717145 () Bool)

(assert (=> b!6146941 (= e!3745799 (and tp!1717147 tp!1717145))))

(declare-fun b!6146939 () Bool)

(declare-fun tp!1717144 () Bool)

(declare-fun tp!1717146 () Bool)

(assert (=> b!6146939 (= e!3745799 (and tp!1717144 tp!1717146))))

(assert (= (and b!6145784 ((_ is ElementMatch!16089) (regTwo!32690 (regOne!32691 r!7292)))) b!6146938))

(assert (= (and b!6145784 ((_ is Concat!24934) (regTwo!32690 (regOne!32691 r!7292)))) b!6146939))

(assert (= (and b!6145784 ((_ is Star!16089) (regTwo!32690 (regOne!32691 r!7292)))) b!6146940))

(assert (= (and b!6145784 ((_ is Union!16089) (regTwo!32690 (regOne!32691 r!7292)))) b!6146941))

(declare-fun e!3745800 () Bool)

(assert (=> b!6145785 (= tp!1716830 e!3745800)))

(declare-fun b!6146944 () Bool)

(declare-fun tp!1717153 () Bool)

(assert (=> b!6146944 (= e!3745800 tp!1717153)))

(declare-fun b!6146942 () Bool)

(assert (=> b!6146942 (= e!3745800 tp_is_empty!41431)))

(declare-fun b!6146945 () Bool)

(declare-fun tp!1717152 () Bool)

(declare-fun tp!1717150 () Bool)

(assert (=> b!6146945 (= e!3745800 (and tp!1717152 tp!1717150))))

(declare-fun b!6146943 () Bool)

(declare-fun tp!1717149 () Bool)

(declare-fun tp!1717151 () Bool)

(assert (=> b!6146943 (= e!3745800 (and tp!1717149 tp!1717151))))

(assert (= (and b!6145785 ((_ is ElementMatch!16089) (reg!16418 (regOne!32691 r!7292)))) b!6146942))

(assert (= (and b!6145785 ((_ is Concat!24934) (reg!16418 (regOne!32691 r!7292)))) b!6146943))

(assert (= (and b!6145785 ((_ is Star!16089) (reg!16418 (regOne!32691 r!7292)))) b!6146944))

(assert (= (and b!6145785 ((_ is Union!16089) (reg!16418 (regOne!32691 r!7292)))) b!6146945))

(declare-fun e!3745801 () Bool)

(assert (=> b!6145794 (= tp!1716839 e!3745801)))

(declare-fun b!6146948 () Bool)

(declare-fun tp!1717158 () Bool)

(assert (=> b!6146948 (= e!3745801 tp!1717158)))

(declare-fun b!6146946 () Bool)

(assert (=> b!6146946 (= e!3745801 tp_is_empty!41431)))

(declare-fun b!6146949 () Bool)

(declare-fun tp!1717157 () Bool)

(declare-fun tp!1717155 () Bool)

(assert (=> b!6146949 (= e!3745801 (and tp!1717157 tp!1717155))))

(declare-fun b!6146947 () Bool)

(declare-fun tp!1717154 () Bool)

(declare-fun tp!1717156 () Bool)

(assert (=> b!6146947 (= e!3745801 (and tp!1717154 tp!1717156))))

(assert (= (and b!6145794 ((_ is ElementMatch!16089) (regOne!32691 (regOne!32690 r!7292)))) b!6146946))

(assert (= (and b!6145794 ((_ is Concat!24934) (regOne!32691 (regOne!32690 r!7292)))) b!6146947))

(assert (= (and b!6145794 ((_ is Star!16089) (regOne!32691 (regOne!32690 r!7292)))) b!6146948))

(assert (= (and b!6145794 ((_ is Union!16089) (regOne!32691 (regOne!32690 r!7292)))) b!6146949))

(declare-fun e!3745802 () Bool)

(assert (=> b!6145794 (= tp!1716837 e!3745802)))

(declare-fun b!6146952 () Bool)

(declare-fun tp!1717163 () Bool)

(assert (=> b!6146952 (= e!3745802 tp!1717163)))

(declare-fun b!6146950 () Bool)

(assert (=> b!6146950 (= e!3745802 tp_is_empty!41431)))

(declare-fun b!6146953 () Bool)

(declare-fun tp!1717162 () Bool)

(declare-fun tp!1717160 () Bool)

(assert (=> b!6146953 (= e!3745802 (and tp!1717162 tp!1717160))))

(declare-fun b!6146951 () Bool)

(declare-fun tp!1717159 () Bool)

(declare-fun tp!1717161 () Bool)

(assert (=> b!6146951 (= e!3745802 (and tp!1717159 tp!1717161))))

(assert (= (and b!6145794 ((_ is ElementMatch!16089) (regTwo!32691 (regOne!32690 r!7292)))) b!6146950))

(assert (= (and b!6145794 ((_ is Concat!24934) (regTwo!32691 (regOne!32690 r!7292)))) b!6146951))

(assert (= (and b!6145794 ((_ is Star!16089) (regTwo!32691 (regOne!32690 r!7292)))) b!6146952))

(assert (= (and b!6145794 ((_ is Union!16089) (regTwo!32691 (regOne!32690 r!7292)))) b!6146953))

(declare-fun e!3745803 () Bool)

(assert (=> b!6145792 (= tp!1716836 e!3745803)))

(declare-fun b!6146956 () Bool)

(declare-fun tp!1717168 () Bool)

(assert (=> b!6146956 (= e!3745803 tp!1717168)))

(declare-fun b!6146954 () Bool)

(assert (=> b!6146954 (= e!3745803 tp_is_empty!41431)))

(declare-fun b!6146957 () Bool)

(declare-fun tp!1717167 () Bool)

(declare-fun tp!1717165 () Bool)

(assert (=> b!6146957 (= e!3745803 (and tp!1717167 tp!1717165))))

(declare-fun b!6146955 () Bool)

(declare-fun tp!1717164 () Bool)

(declare-fun tp!1717166 () Bool)

(assert (=> b!6146955 (= e!3745803 (and tp!1717164 tp!1717166))))

(assert (= (and b!6145792 ((_ is ElementMatch!16089) (regOne!32690 (regOne!32690 r!7292)))) b!6146954))

(assert (= (and b!6145792 ((_ is Concat!24934) (regOne!32690 (regOne!32690 r!7292)))) b!6146955))

(assert (= (and b!6145792 ((_ is Star!16089) (regOne!32690 (regOne!32690 r!7292)))) b!6146956))

(assert (= (and b!6145792 ((_ is Union!16089) (regOne!32690 (regOne!32690 r!7292)))) b!6146957))

(declare-fun e!3745804 () Bool)

(assert (=> b!6145792 (= tp!1716838 e!3745804)))

(declare-fun b!6146960 () Bool)

(declare-fun tp!1717173 () Bool)

(assert (=> b!6146960 (= e!3745804 tp!1717173)))

(declare-fun b!6146958 () Bool)

(assert (=> b!6146958 (= e!3745804 tp_is_empty!41431)))

(declare-fun b!6146961 () Bool)

(declare-fun tp!1717172 () Bool)

(declare-fun tp!1717170 () Bool)

(assert (=> b!6146961 (= e!3745804 (and tp!1717172 tp!1717170))))

(declare-fun b!6146959 () Bool)

(declare-fun tp!1717169 () Bool)

(declare-fun tp!1717171 () Bool)

(assert (=> b!6146959 (= e!3745804 (and tp!1717169 tp!1717171))))

(assert (= (and b!6145792 ((_ is ElementMatch!16089) (regTwo!32690 (regOne!32690 r!7292)))) b!6146958))

(assert (= (and b!6145792 ((_ is Concat!24934) (regTwo!32690 (regOne!32690 r!7292)))) b!6146959))

(assert (= (and b!6145792 ((_ is Star!16089) (regTwo!32690 (regOne!32690 r!7292)))) b!6146960))

(assert (= (and b!6145792 ((_ is Union!16089) (regTwo!32690 (regOne!32690 r!7292)))) b!6146961))

(declare-fun e!3745805 () Bool)

(assert (=> b!6145793 (= tp!1716840 e!3745805)))

(declare-fun b!6146964 () Bool)

(declare-fun tp!1717178 () Bool)

(assert (=> b!6146964 (= e!3745805 tp!1717178)))

(declare-fun b!6146962 () Bool)

(assert (=> b!6146962 (= e!3745805 tp_is_empty!41431)))

(declare-fun b!6146965 () Bool)

(declare-fun tp!1717177 () Bool)

(declare-fun tp!1717175 () Bool)

(assert (=> b!6146965 (= e!3745805 (and tp!1717177 tp!1717175))))

(declare-fun b!6146963 () Bool)

(declare-fun tp!1717174 () Bool)

(declare-fun tp!1717176 () Bool)

(assert (=> b!6146963 (= e!3745805 (and tp!1717174 tp!1717176))))

(assert (= (and b!6145793 ((_ is ElementMatch!16089) (reg!16418 (regOne!32690 r!7292)))) b!6146962))

(assert (= (and b!6145793 ((_ is Concat!24934) (reg!16418 (regOne!32690 r!7292)))) b!6146963))

(assert (= (and b!6145793 ((_ is Star!16089) (reg!16418 (regOne!32690 r!7292)))) b!6146964))

(assert (= (and b!6145793 ((_ is Union!16089) (reg!16418 (regOne!32690 r!7292)))) b!6146965))

(declare-fun b_lambda!233953 () Bool)

(assert (= b_lambda!233939 (or d!1925396 b_lambda!233953)))

(declare-fun bs!1524033 () Bool)

(declare-fun d!1925976 () Bool)

(assert (= bs!1524033 (and d!1925976 d!1925396)))

(assert (=> bs!1524033 (= (dynLambda!25400 lambda!335053 (h!70890 (exprs!5973 setElem!41584))) (validRegex!7825 (h!70890 (exprs!5973 setElem!41584))))))

(declare-fun m!6987294 () Bool)

(assert (=> bs!1524033 m!6987294))

(assert (=> b!6146427 d!1925976))

(declare-fun b_lambda!233955 () Bool)

(assert (= b_lambda!233951 (or d!1925402 b_lambda!233955)))

(declare-fun bs!1524034 () Bool)

(declare-fun d!1925978 () Bool)

(assert (= bs!1524034 (and d!1925978 d!1925402)))

(assert (=> bs!1524034 (= (dynLambda!25400 lambda!335062 (h!70890 lt!2333729)) (validRegex!7825 (h!70890 lt!2333729)))))

(declare-fun m!6987296 () Bool)

(assert (=> bs!1524034 m!6987296))

(assert (=> b!6146783 d!1925978))

(declare-fun b_lambda!233957 () Bool)

(assert (= b_lambda!233937 (or d!1925474 b_lambda!233957)))

(declare-fun bs!1524035 () Bool)

(declare-fun d!1925980 () Bool)

(assert (= bs!1524035 (and d!1925980 d!1925474)))

(assert (=> bs!1524035 (= (dynLambda!25400 lambda!335079 (h!70890 (exprs!5973 (h!70892 zl!343)))) (validRegex!7825 (h!70890 (exprs!5973 (h!70892 zl!343)))))))

(declare-fun m!6987298 () Bool)

(assert (=> bs!1524035 m!6987298))

(assert (=> b!6146425 d!1925980))

(declare-fun b_lambda!233959 () Bool)

(assert (= b_lambda!233943 (or b!6145018 b_lambda!233959)))

(assert (=> d!1925830 d!1925478))

(declare-fun b_lambda!233961 () Bool)

(assert (= b_lambda!233941 (or d!1925398 b_lambda!233961)))

(declare-fun bs!1524036 () Bool)

(declare-fun d!1925982 () Bool)

(assert (= bs!1524036 (and d!1925982 d!1925398)))

(assert (=> bs!1524036 (= (dynLambda!25400 lambda!335056 (h!70890 (exprs!5973 (h!70892 zl!343)))) (validRegex!7825 (h!70890 (exprs!5973 (h!70892 zl!343)))))))

(assert (=> bs!1524036 m!6987298))

(assert (=> b!6146450 d!1925982))

(declare-fun b_lambda!233963 () Bool)

(assert (= b_lambda!233947 (or d!1925400 b_lambda!233963)))

(declare-fun bs!1524037 () Bool)

(declare-fun d!1925984 () Bool)

(assert (= bs!1524037 (and d!1925984 d!1925400)))

(assert (=> bs!1524037 (= (dynLambda!25400 lambda!335059 (h!70890 (unfocusZipperList!1510 zl!343))) (validRegex!7825 (h!70890 (unfocusZipperList!1510 zl!343))))))

(declare-fun m!6987300 () Bool)

(assert (=> bs!1524037 m!6987300))

(assert (=> b!6146658 d!1925984))

(declare-fun b_lambda!233965 () Bool)

(assert (= b_lambda!233949 (or d!1925434 b_lambda!233965)))

(declare-fun bs!1524038 () Bool)

(declare-fun d!1925986 () Bool)

(assert (= bs!1524038 (and d!1925986 d!1925434)))

(assert (=> bs!1524038 (= (dynLambda!25400 lambda!335072 (h!70890 (exprs!5973 (Context!10947 (Cons!64442 (regTwo!32691 (regOne!32690 r!7292)) (t!378049 (exprs!5973 (h!70892 zl!343)))))))) (validRegex!7825 (h!70890 (exprs!5973 (Context!10947 (Cons!64442 (regTwo!32691 (regOne!32690 r!7292)) (t!378049 (exprs!5973 (h!70892 zl!343)))))))))))

(declare-fun m!6987302 () Bool)

(assert (=> bs!1524038 m!6987302))

(assert (=> b!6146759 d!1925986))

(declare-fun b_lambda!233967 () Bool)

(assert (= b_lambda!233945 (or b!6145018 b_lambda!233967)))

(assert (=> d!1925832 d!1925476))

(check-sat (not b!6146908) (not b!6146437) (not b!6146932) (not b!6146638) (not bm!510847) (not b!6146843) (not d!1925830) (not b!6146949) (not b!6146798) (not b!6146797) (not b!6146655) (not b!6146874) (not b!6146956) (not b!6146809) (not bm!510891) (not bm!510912) (not b!6146965) (not bm!510888) (not b!6146867) (not d!1925962) (not b!6146960) (not b!6146803) (not b_lambda!233959) (not b!6146807) (not d!1925772) (not b!6146886) (not bm!510858) (not b!6146917) (not b!6146468) (not bm!510947) (not bm!510884) (not b!6146898) (not b_lambda!233965) (not d!1925812) (not b!6146747) (not b!6146410) (not b!6146522) (not b!6146740) (not b!6146784) (not d!1925882) (not b!6146664) (not b!6146794) (not b!6146734) (not bm!510915) (not b!6146846) (not b!6146700) (not d!1925798) (not b!6146964) (not b!6146881) (not bm!510933) (not d!1925802) (not b!6146957) (not b!6146877) (not b!6146637) (not bm!510846) (not bm!510868) (not bm!510922) (not bs!1524037) (not b!6146922) (not b!6146477) (not b!6146853) (not b_lambda!233953) tp_is_empty!41431 (not bm!510857) (not d!1925810) (not d!1925904) (not b!6146839) (not b!6146581) (not b!6146720) (not d!1925970) (not d!1925894) (not d!1925850) (not b!6146692) (not b!6146900) (not bm!510865) (not b!6146416) (not b!6146902) (not bm!510936) (not b!6146945) (not b!6146871) (not b!6146523) (not b!6146457) (not bm!510840) (not b_lambda!233955) (not d!1925836) (not bm!510897) (not b!6146691) (not b!6146919) (not d!1925786) (not bm!510899) (not bm!510873) (not bm!510902) (not bm!510843) (not d!1925862) (not b!6146912) (not b!6146600) (not b!6146524) (not bm!510898) (not d!1925774) (not b!6146725) (not b!6146593) (not b_lambda!233967) (not b!6146869) (not d!1925832) (not b!6146911) (not b!6146903) (not b!6146888) (not d!1925860) (not bm!510872) (not bs!1524035) (not bm!510838) (not bs!1524038) (not bm!510845) (not b!6146882) (not b!6146936) (not d!1925826) (not b!6146895) (not bs!1524036) (not d!1925908) (not bm!510879) (not b!6146767) (not b!6146743) (not b!6146466) (not b!6146952) (not b!6146955) (not b!6146525) (not b!6146944) (not b!6146609) (not b!6146923) (not b!6146452) (not d!1925906) (not setNonEmpty!41600) (not d!1925816) (not d!1925934) (not b!6146925) (not b!6146453) (not b!6146915) (not d!1925910) (not d!1925846) (not bm!510887) (not b!6146438) (not b!6146451) (not b!6146716) (not b!6146857) (not d!1925766) (not bm!510939) (not d!1925858) (not b!6146842) (not b!6146559) (not b!6146880) (not b!6146413) (not d!1925746) (not d!1925762) (not b!6146831) (not bm!510940) (not setNonEmpty!41598) (not b!6146582) (not b!6146479) (not b!6146913) (not b!6146774) (not b!6146806) (not d!1925764) (not b!6146417) (not b!6146861) (not b!6146598) (not b!6146951) (not b!6146465) (not b!6146486) (not d!1925800) (not b!6146604) (not b!6146863) (not bm!510839) (not b!6146719) (not d!1925848) (not bm!510844) (not b!6146405) (not b!6146520) (not b!6146473) (not b!6146678) (not bm!510929) (not b!6146927) (not d!1925880) (not b!6146921) (not b!6146941) (not bm!510885) (not d!1925916) (not d!1925742) (not b!6146890) (not b!6146511) (not b!6146639) (not b!6146573) (not b!6146928) (not b!6146478) (not b!6146848) (not b!6146469) (not b!6146841) (not b!6146474) (not b!6146487) (not b!6146897) (not b!6146744) (not b!6146601) (not b!6146799) (not b!6146414) (not b!6146735) (not b!6146924) (not b!6146916) (not bm!510876) (not d!1925866) (not b_lambda!233963) (not d!1925738) (not b!6146899) (not bm!510894) (not b!6146554) (not b!6146961) (not b!6146855) (not d!1925900) (not b!6146592) (not b!6146519) (not b!6146889) (not b!6146947) (not b_lambda!233961) (not bm!510862) (not bm!510871) (not setNonEmpty!41599) (not b!6146404) (not bm!510944) (not bm!510930) (not b!6146824) (not b!6146905) (not b!6146940) (not d!1925864) (not b!6146937) (not b!6146539) (not b_lambda!233901) (not b!6146885) (not b!6146920) (not b_lambda!233903) (not b!6146851) (not b!6146717) (not bm!510906) (not b!6146428) (not b!6146864) (not b!6146834) (not bm!510890) (not bm!510913) (not b!6146953) (not bm!510874) (not d!1925740) (not b!6146943) (not b!6146852) (not b!6146933) (not bm!510914) (not b!6146939) (not d!1925788) (not d!1925924) (not b!6146868) (not b!6146894) (not b!6146929) (not b!6146876) (not bm!510921) (not d!1925948) (not b!6146878) (not b!6146948) (not bm!510860) (not b!6146395) (not b!6146873) (not b!6146597) (not b!6146935) (not d!1925950) (not bm!510892) (not b!6146596) (not b!6146872) (not bm!510841) (not b!6146447) (not d!1925804) (not b!6146736) (not d!1925818) (not bm!510917) (not b!6146646) (not b!6146746) (not b!6146838) (not b!6146819) (not b_lambda!233957) (not d!1925820) (not b!6146810) (not b!6146909) (not d!1925898) (not b!6146456) (not bm!510920) (not bm!510905) (not b!6146845) (not b!6146859) (not d!1925968) (not b!6146583) (not b!6146406) (not b!6146574) (not bm!510927) (not bm!510907) (not b!6146568) (not b!6146426) (not bs!1524033) (not b!6146545) (not d!1925790) (not b!6146659) (not d!1925958) (not d!1925942) (not bm!510941) (not bm!510938) (not b!6146931) (not b!6146860) (not b!6146884) (not b!6146907) (not bm!510931) (not d!1925842) (not b!6146603) (not b!6146892) (not b!6146679) (not d!1925920) (not bm!510924) (not b!6146538) (not bm!510866) (not b!6146865) (not b!6146832) (not d!1925928) (not b!6146959) (not b!6146760) (not b!6146781) (not b!6146752) (not d!1925972) (not d!1925966) (not d!1925770) (not b!6146684) (not d!1925744) (not b!6146904) (not b!6146893) (not b!6146835) (not bm!510942) (not bs!1524034) (not b!6146963) (not d!1925964) (not b!6146458) (not b!6146462) (not b!6146483) (not b!6146528) (not bm!510909) (not b!6146791) (not b!6146707) (not bm!510900) (not b!6146856))
(check-sat)
