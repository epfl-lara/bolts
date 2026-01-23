; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!615282 () Bool)

(assert start!615282)

(declare-fun b!6159849 () Bool)

(assert (=> b!6159849 true))

(assert (=> b!6159849 true))

(declare-fun lambda!336124 () Int)

(declare-fun lambda!336123 () Int)

(assert (=> b!6159849 (not (= lambda!336124 lambda!336123))))

(assert (=> b!6159849 true))

(assert (=> b!6159849 true))

(declare-fun b!6159868 () Bool)

(assert (=> b!6159868 true))

(declare-fun b!6159844 () Bool)

(declare-fun e!3753029 () Bool)

(declare-fun e!3753034 () Bool)

(assert (=> b!6159844 (= e!3753029 (not e!3753034))))

(declare-fun res!2550946 () Bool)

(assert (=> b!6159844 (=> res!2550946 e!3753034)))

(declare-datatypes ((C!32476 0))(
  ( (C!32477 (val!25940 Int)) )
))
(declare-datatypes ((Regex!16103 0))(
  ( (ElementMatch!16103 (c!1109260 C!32476)) (Concat!24948 (regOne!32718 Regex!16103) (regTwo!32718 Regex!16103)) (EmptyExpr!16103) (Star!16103 (reg!16432 Regex!16103)) (EmptyLang!16103) (Union!16103 (regOne!32719 Regex!16103) (regTwo!32719 Regex!16103)) )
))
(declare-datatypes ((List!64608 0))(
  ( (Nil!64484) (Cons!64484 (h!70932 Regex!16103) (t!378104 List!64608)) )
))
(declare-datatypes ((Context!10974 0))(
  ( (Context!10975 (exprs!5987 List!64608)) )
))
(declare-datatypes ((List!64609 0))(
  ( (Nil!64485) (Cons!64485 (h!70933 Context!10974) (t!378105 List!64609)) )
))
(declare-fun zl!343 () List!64609)

(get-info :version)

(assert (=> b!6159844 (= res!2550946 (not ((_ is Cons!64485) zl!343)))))

(declare-fun lt!2335756 () Bool)

(declare-fun r!7292 () Regex!16103)

(declare-datatypes ((List!64610 0))(
  ( (Nil!64486) (Cons!64486 (h!70934 C!32476) (t!378106 List!64610)) )
))
(declare-fun s!2326 () List!64610)

(declare-fun matchRSpec!3204 (Regex!16103 List!64610) Bool)

(assert (=> b!6159844 (= lt!2335756 (matchRSpec!3204 r!7292 s!2326))))

(declare-fun matchR!8286 (Regex!16103 List!64610) Bool)

(assert (=> b!6159844 (= lt!2335756 (matchR!8286 r!7292 s!2326))))

(declare-datatypes ((Unit!157603 0))(
  ( (Unit!157604) )
))
(declare-fun lt!2335752 () Unit!157603)

(declare-fun mainMatchTheorem!3204 (Regex!16103 List!64610) Unit!157603)

(assert (=> b!6159844 (= lt!2335752 (mainMatchTheorem!3204 r!7292 s!2326))))

(declare-fun b!6159845 () Bool)

(declare-fun e!3753019 () Unit!157603)

(declare-fun Unit!157605 () Unit!157603)

(assert (=> b!6159845 (= e!3753019 Unit!157605)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2335767 () (InoxSet Context!10974))

(declare-fun lt!2335744 () (InoxSet Context!10974))

(declare-fun lt!2335765 () Unit!157603)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!934 ((InoxSet Context!10974) (InoxSet Context!10974) List!64610) Unit!157603)

(assert (=> b!6159845 (= lt!2335765 (lemmaZipperConcatMatchesSameAsBothZippers!934 lt!2335767 lt!2335744 (t!378106 s!2326)))))

(declare-fun res!2550954 () Bool)

(declare-fun matchZipper!2115 ((InoxSet Context!10974) List!64610) Bool)

(assert (=> b!6159845 (= res!2550954 (matchZipper!2115 lt!2335767 (t!378106 s!2326)))))

(declare-fun e!3753026 () Bool)

(assert (=> b!6159845 (=> res!2550954 e!3753026)))

(assert (=> b!6159845 (= (matchZipper!2115 ((_ map or) lt!2335767 lt!2335744) (t!378106 s!2326)) e!3753026)))

(declare-fun b!6159846 () Bool)

(declare-fun e!3753022 () Bool)

(declare-fun tp_is_empty!41459 () Bool)

(declare-fun tp!1720092 () Bool)

(assert (=> b!6159846 (= e!3753022 (and tp_is_empty!41459 tp!1720092))))

(declare-fun b!6159847 () Bool)

(declare-fun tp!1720091 () Bool)

(declare-fun e!3753039 () Bool)

(declare-fun e!3753033 () Bool)

(declare-fun inv!83504 (Context!10974) Bool)

(assert (=> b!6159847 (= e!3753033 (and (inv!83504 (h!70933 zl!343)) e!3753039 tp!1720091))))

(declare-fun b!6159848 () Bool)

(declare-fun res!2550959 () Bool)

(declare-fun e!3753023 () Bool)

(assert (=> b!6159848 (=> (not res!2550959) (not e!3753023))))

(declare-fun z!1189 () (InoxSet Context!10974))

(declare-fun toList!9887 ((InoxSet Context!10974)) List!64609)

(assert (=> b!6159848 (= res!2550959 (= (toList!9887 z!1189) zl!343))))

(declare-fun e!3753028 () Bool)

(assert (=> b!6159849 (= e!3753034 e!3753028)))

(declare-fun res!2550949 () Bool)

(assert (=> b!6159849 (=> res!2550949 e!3753028)))

(declare-fun lt!2335760 () Bool)

(assert (=> b!6159849 (= res!2550949 (or (not (= lt!2335756 lt!2335760)) ((_ is Nil!64486) s!2326)))))

(declare-fun Exists!3173 (Int) Bool)

(assert (=> b!6159849 (= (Exists!3173 lambda!336123) (Exists!3173 lambda!336124))))

(declare-fun lt!2335750 () Unit!157603)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1710 (Regex!16103 Regex!16103 List!64610) Unit!157603)

(assert (=> b!6159849 (= lt!2335750 (lemmaExistCutMatchRandMatchRSpecEquivalent!1710 (regOne!32718 r!7292) (regTwo!32718 r!7292) s!2326))))

(assert (=> b!6159849 (= lt!2335760 (Exists!3173 lambda!336123))))

(declare-datatypes ((tuple2!66164 0))(
  ( (tuple2!66165 (_1!36385 List!64610) (_2!36385 List!64610)) )
))
(declare-datatypes ((Option!15994 0))(
  ( (None!15993) (Some!15993 (v!52132 tuple2!66164)) )
))
(declare-fun isDefined!12697 (Option!15994) Bool)

(declare-fun findConcatSeparation!2408 (Regex!16103 Regex!16103 List!64610 List!64610 List!64610) Option!15994)

(assert (=> b!6159849 (= lt!2335760 (isDefined!12697 (findConcatSeparation!2408 (regOne!32718 r!7292) (regTwo!32718 r!7292) Nil!64486 s!2326 s!2326)))))

(declare-fun lt!2335747 () Unit!157603)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2172 (Regex!16103 Regex!16103 List!64610) Unit!157603)

(assert (=> b!6159849 (= lt!2335747 (lemmaFindConcatSeparationEquivalentToExists!2172 (regOne!32718 r!7292) (regTwo!32718 r!7292) s!2326))))

(declare-fun b!6159850 () Bool)

(declare-fun e!3753030 () Unit!157603)

(declare-fun Unit!157606 () Unit!157603)

(assert (=> b!6159850 (= e!3753030 Unit!157606)))

(declare-fun b!6159851 () Bool)

(declare-fun e!3753035 () Bool)

(declare-fun tp!1720087 () Bool)

(declare-fun tp!1720089 () Bool)

(assert (=> b!6159851 (= e!3753035 (and tp!1720087 tp!1720089))))

(declare-fun b!6159852 () Bool)

(assert (=> b!6159852 (= e!3753023 e!3753029)))

(declare-fun res!2550942 () Bool)

(assert (=> b!6159852 (=> (not res!2550942) (not e!3753029))))

(declare-fun lt!2335769 () Regex!16103)

(assert (=> b!6159852 (= res!2550942 (= r!7292 lt!2335769))))

(declare-fun unfocusZipper!1845 (List!64609) Regex!16103)

(assert (=> b!6159852 (= lt!2335769 (unfocusZipper!1845 zl!343))))

(declare-fun b!6159853 () Bool)

(declare-fun res!2550943 () Bool)

(declare-fun e!3753038 () Bool)

(assert (=> b!6159853 (=> res!2550943 e!3753038)))

(assert (=> b!6159853 (= res!2550943 (or (not (= lt!2335769 r!7292)) (not (= (exprs!5987 (h!70933 zl!343)) (Cons!64484 (regOne!32718 r!7292) (t!378104 (exprs!5987 (h!70933 zl!343))))))))))

(declare-fun b!6159854 () Bool)

(declare-fun res!2550960 () Bool)

(assert (=> b!6159854 (=> res!2550960 e!3753034)))

(declare-fun isEmpty!36452 (List!64609) Bool)

(assert (=> b!6159854 (= res!2550960 (not (isEmpty!36452 (t!378105 zl!343))))))

(declare-fun b!6159855 () Bool)

(declare-fun e!3753024 () Bool)

(assert (=> b!6159855 (= e!3753024 (matchZipper!2115 lt!2335767 (t!378106 s!2326)))))

(declare-fun b!6159857 () Bool)

(declare-fun e!3753020 () Bool)

(assert (=> b!6159857 (= e!3753020 (matchZipper!2115 lt!2335744 (t!378106 s!2326)))))

(declare-fun b!6159858 () Bool)

(declare-fun lt!2335742 () Context!10974)

(assert (=> b!6159858 (= e!3753038 (inv!83504 lt!2335742))))

(declare-fun b!6159859 () Bool)

(declare-fun res!2550941 () Bool)

(assert (=> b!6159859 (=> res!2550941 e!3753034)))

(assert (=> b!6159859 (= res!2550941 (not ((_ is Cons!64484) (exprs!5987 (h!70933 zl!343)))))))

(declare-fun b!6159860 () Bool)

(declare-fun res!2550953 () Bool)

(assert (=> b!6159860 (=> res!2550953 e!3753034)))

(assert (=> b!6159860 (= res!2550953 (or ((_ is EmptyExpr!16103) r!7292) ((_ is EmptyLang!16103) r!7292) ((_ is ElementMatch!16103) r!7292) ((_ is Union!16103) r!7292) (not ((_ is Concat!24948) r!7292))))))

(declare-fun setIsEmpty!41742 () Bool)

(declare-fun setRes!41742 () Bool)

(assert (=> setIsEmpty!41742 setRes!41742))

(declare-fun b!6159861 () Bool)

(declare-fun e!3753021 () Bool)

(assert (=> b!6159861 (= e!3753021 e!3753038)))

(declare-fun res!2550961 () Bool)

(assert (=> b!6159861 (=> res!2550961 e!3753038)))

(declare-fun e!3753031 () Bool)

(assert (=> b!6159861 (= res!2550961 (not (= (matchZipper!2115 z!1189 s!2326) e!3753031)))))

(declare-fun res!2550952 () Bool)

(assert (=> b!6159861 (=> res!2550952 e!3753031)))

(declare-fun lt!2335743 () (InoxSet Context!10974))

(assert (=> b!6159861 (= res!2550952 (matchZipper!2115 lt!2335743 s!2326))))

(declare-fun lt!2335754 () Unit!157603)

(assert (=> b!6159861 (= lt!2335754 e!3753019)))

(declare-fun c!1109258 () Bool)

(declare-fun nullable!6096 (Regex!16103) Bool)

(assert (=> b!6159861 (= c!1109258 (nullable!6096 (regTwo!32719 (regOne!32718 r!7292))))))

(declare-fun lt!2335749 () (InoxSet Context!10974))

(declare-fun lambda!336125 () Int)

(declare-fun flatMap!1608 ((InoxSet Context!10974) Int) (InoxSet Context!10974))

(declare-fun derivationStepZipperUp!1277 (Context!10974 C!32476) (InoxSet Context!10974))

(assert (=> b!6159861 (= (flatMap!1608 lt!2335749 lambda!336125) (derivationStepZipperUp!1277 lt!2335742 (h!70934 s!2326)))))

(declare-fun lt!2335751 () Unit!157603)

(declare-fun lemmaFlatMapOnSingletonSet!1134 ((InoxSet Context!10974) Context!10974 Int) Unit!157603)

(assert (=> b!6159861 (= lt!2335751 (lemmaFlatMapOnSingletonSet!1134 lt!2335749 lt!2335742 lambda!336125))))

(declare-fun lt!2335766 () (InoxSet Context!10974))

(assert (=> b!6159861 (= lt!2335766 (derivationStepZipperUp!1277 lt!2335742 (h!70934 s!2326)))))

(declare-fun lt!2335759 () Unit!157603)

(assert (=> b!6159861 (= lt!2335759 e!3753030)))

(declare-fun c!1109257 () Bool)

(assert (=> b!6159861 (= c!1109257 (nullable!6096 (regOne!32719 (regOne!32718 r!7292))))))

(declare-fun lt!2335770 () Context!10974)

(assert (=> b!6159861 (= (flatMap!1608 lt!2335743 lambda!336125) (derivationStepZipperUp!1277 lt!2335770 (h!70934 s!2326)))))

(declare-fun lt!2335762 () Unit!157603)

(assert (=> b!6159861 (= lt!2335762 (lemmaFlatMapOnSingletonSet!1134 lt!2335743 lt!2335770 lambda!336125))))

(declare-fun lt!2335745 () (InoxSet Context!10974))

(assert (=> b!6159861 (= lt!2335745 (derivationStepZipperUp!1277 lt!2335770 (h!70934 s!2326)))))

(assert (=> b!6159861 (= lt!2335749 (store ((as const (Array Context!10974 Bool)) false) lt!2335742 true))))

(assert (=> b!6159861 (= lt!2335742 (Context!10975 (Cons!64484 (regTwo!32719 (regOne!32718 r!7292)) (t!378104 (exprs!5987 (h!70933 zl!343))))))))

(assert (=> b!6159861 (= lt!2335743 (store ((as const (Array Context!10974 Bool)) false) lt!2335770 true))))

(assert (=> b!6159861 (= lt!2335770 (Context!10975 (Cons!64484 (regOne!32719 (regOne!32718 r!7292)) (t!378104 (exprs!5987 (h!70933 zl!343))))))))

(declare-fun b!6159862 () Bool)

(declare-fun e!3753025 () Bool)

(declare-fun e!3753027 () Bool)

(assert (=> b!6159862 (= e!3753025 e!3753027)))

(declare-fun res!2550947 () Bool)

(assert (=> b!6159862 (=> res!2550947 e!3753027)))

(declare-fun lt!2335764 () (InoxSet Context!10974))

(declare-fun lt!2335748 () (InoxSet Context!10974))

(assert (=> b!6159862 (= res!2550947 (not (= lt!2335764 lt!2335748)))))

(declare-fun lt!2335761 () (InoxSet Context!10974))

(assert (=> b!6159862 (= lt!2335748 ((_ map or) lt!2335761 lt!2335767))))

(declare-fun lt!2335757 () Context!10974)

(declare-fun derivationStepZipperDown!1351 (Regex!16103 Context!10974 C!32476) (InoxSet Context!10974))

(assert (=> b!6159862 (= lt!2335767 (derivationStepZipperDown!1351 (regTwo!32719 (regOne!32718 r!7292)) lt!2335757 (h!70934 s!2326)))))

(assert (=> b!6159862 (= lt!2335761 (derivationStepZipperDown!1351 (regOne!32719 (regOne!32718 r!7292)) lt!2335757 (h!70934 s!2326)))))

(declare-fun b!6159863 () Bool)

(declare-fun e!3753032 () Unit!157603)

(declare-fun Unit!157607 () Unit!157603)

(assert (=> b!6159863 (= e!3753032 Unit!157607)))

(declare-fun lt!2335741 () Unit!157603)

(assert (=> b!6159863 (= lt!2335741 (lemmaZipperConcatMatchesSameAsBothZippers!934 lt!2335764 lt!2335744 (t!378106 s!2326)))))

(declare-fun res!2550950 () Bool)

(assert (=> b!6159863 (= res!2550950 (matchZipper!2115 lt!2335764 (t!378106 s!2326)))))

(declare-fun e!3753037 () Bool)

(assert (=> b!6159863 (=> res!2550950 e!3753037)))

(assert (=> b!6159863 (= (matchZipper!2115 ((_ map or) lt!2335764 lt!2335744) (t!378106 s!2326)) e!3753037)))

(declare-fun b!6159864 () Bool)

(declare-fun Unit!157608 () Unit!157603)

(assert (=> b!6159864 (= e!3753030 Unit!157608)))

(declare-fun lt!2335746 () Unit!157603)

(assert (=> b!6159864 (= lt!2335746 (lemmaZipperConcatMatchesSameAsBothZippers!934 lt!2335761 lt!2335744 (t!378106 s!2326)))))

(declare-fun res!2550948 () Bool)

(declare-fun lt!2335755 () Bool)

(assert (=> b!6159864 (= res!2550948 lt!2335755)))

(assert (=> b!6159864 (=> res!2550948 e!3753020)))

(assert (=> b!6159864 (= (matchZipper!2115 ((_ map or) lt!2335761 lt!2335744) (t!378106 s!2326)) e!3753020)))

(declare-fun b!6159865 () Bool)

(declare-fun tp!1720093 () Bool)

(assert (=> b!6159865 (= e!3753035 tp!1720093)))

(declare-fun b!6159866 () Bool)

(declare-fun res!2550944 () Bool)

(assert (=> b!6159866 (=> res!2550944 e!3753028)))

(declare-fun isEmpty!36453 (List!64608) Bool)

(assert (=> b!6159866 (= res!2550944 (isEmpty!36453 (t!378104 (exprs!5987 (h!70933 zl!343)))))))

(declare-fun b!6159867 () Bool)

(declare-fun res!2550962 () Bool)

(assert (=> b!6159867 (=> res!2550962 e!3753034)))

(declare-fun generalisedConcat!1700 (List!64608) Regex!16103)

(assert (=> b!6159867 (= res!2550962 (not (= r!7292 (generalisedConcat!1700 (exprs!5987 (h!70933 zl!343))))))))

(assert (=> b!6159868 (= e!3753028 e!3753025)))

(declare-fun res!2550955 () Bool)

(assert (=> b!6159868 (=> res!2550955 e!3753025)))

(assert (=> b!6159868 (= res!2550955 (or (and ((_ is ElementMatch!16103) (regOne!32718 r!7292)) (= (c!1109260 (regOne!32718 r!7292)) (h!70934 s!2326))) (not ((_ is Union!16103) (regOne!32718 r!7292)))))))

(declare-fun lt!2335768 () Unit!157603)

(assert (=> b!6159868 (= lt!2335768 e!3753032)))

(declare-fun c!1109259 () Bool)

(assert (=> b!6159868 (= c!1109259 (nullable!6096 (h!70932 (exprs!5987 (h!70933 zl!343)))))))

(assert (=> b!6159868 (= (flatMap!1608 z!1189 lambda!336125) (derivationStepZipperUp!1277 (h!70933 zl!343) (h!70934 s!2326)))))

(declare-fun lt!2335753 () Unit!157603)

(assert (=> b!6159868 (= lt!2335753 (lemmaFlatMapOnSingletonSet!1134 z!1189 (h!70933 zl!343) lambda!336125))))

(assert (=> b!6159868 (= lt!2335744 (derivationStepZipperUp!1277 lt!2335757 (h!70934 s!2326)))))

(assert (=> b!6159868 (= lt!2335764 (derivationStepZipperDown!1351 (h!70932 (exprs!5987 (h!70933 zl!343))) lt!2335757 (h!70934 s!2326)))))

(assert (=> b!6159868 (= lt!2335757 (Context!10975 (t!378104 (exprs!5987 (h!70933 zl!343)))))))

(declare-fun lt!2335758 () (InoxSet Context!10974))

(assert (=> b!6159868 (= lt!2335758 (derivationStepZipperUp!1277 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343))))) (h!70934 s!2326)))))

(declare-fun b!6159869 () Bool)

(declare-fun tp!1720086 () Bool)

(assert (=> b!6159869 (= e!3753039 tp!1720086)))

(declare-fun b!6159870 () Bool)

(declare-fun res!2550945 () Bool)

(assert (=> b!6159870 (=> res!2550945 e!3753038)))

(declare-fun zipperDepthTotal!286 (List!64609) Int)

(assert (=> b!6159870 (= res!2550945 (>= (zipperDepthTotal!286 (Cons!64485 lt!2335770 Nil!64485)) (zipperDepthTotal!286 zl!343)))))

(declare-fun b!6159871 () Bool)

(assert (=> b!6159871 (= e!3753035 tp_is_empty!41459)))

(declare-fun b!6159872 () Bool)

(declare-fun Unit!157609 () Unit!157603)

(assert (=> b!6159872 (= e!3753032 Unit!157609)))

(declare-fun b!6159873 () Bool)

(declare-fun e!3753018 () Bool)

(assert (=> b!6159873 (= e!3753018 (not (matchZipper!2115 lt!2335767 (t!378106 s!2326))))))

(declare-fun b!6159874 () Bool)

(declare-fun Unit!157610 () Unit!157603)

(assert (=> b!6159874 (= e!3753019 Unit!157610)))

(declare-fun b!6159875 () Bool)

(assert (=> b!6159875 (= e!3753026 (matchZipper!2115 lt!2335744 (t!378106 s!2326)))))

(declare-fun b!6159876 () Bool)

(declare-fun e!3753036 () Bool)

(declare-fun tp!1720085 () Bool)

(assert (=> b!6159876 (= e!3753036 tp!1720085)))

(declare-fun b!6159877 () Bool)

(assert (=> b!6159877 (= e!3753037 (matchZipper!2115 lt!2335744 (t!378106 s!2326)))))

(declare-fun res!2550958 () Bool)

(assert (=> start!615282 (=> (not res!2550958) (not e!3753023))))

(declare-fun validRegex!7839 (Regex!16103) Bool)

(assert (=> start!615282 (= res!2550958 (validRegex!7839 r!7292))))

(assert (=> start!615282 e!3753023))

(assert (=> start!615282 e!3753035))

(declare-fun condSetEmpty!41742 () Bool)

(assert (=> start!615282 (= condSetEmpty!41742 (= z!1189 ((as const (Array Context!10974 Bool)) false)))))

(assert (=> start!615282 setRes!41742))

(assert (=> start!615282 e!3753033))

(assert (=> start!615282 e!3753022))

(declare-fun b!6159856 () Bool)

(declare-fun tp!1720088 () Bool)

(declare-fun tp!1720094 () Bool)

(assert (=> b!6159856 (= e!3753035 (and tp!1720088 tp!1720094))))

(declare-fun b!6159878 () Bool)

(assert (=> b!6159878 (= e!3753027 e!3753021)))

(declare-fun res!2550963 () Bool)

(assert (=> b!6159878 (=> res!2550963 e!3753021)))

(assert (=> b!6159878 (= res!2550963 e!3753018)))

(declare-fun res!2550956 () Bool)

(assert (=> b!6159878 (=> (not res!2550956) (not e!3753018))))

(assert (=> b!6159878 (= res!2550956 (not (= (matchZipper!2115 lt!2335764 (t!378106 s!2326)) lt!2335755)))))

(assert (=> b!6159878 (= (matchZipper!2115 lt!2335748 (t!378106 s!2326)) e!3753024)))

(declare-fun res!2550957 () Bool)

(assert (=> b!6159878 (=> res!2550957 e!3753024)))

(assert (=> b!6159878 (= res!2550957 lt!2335755)))

(assert (=> b!6159878 (= lt!2335755 (matchZipper!2115 lt!2335761 (t!378106 s!2326)))))

(declare-fun lt!2335763 () Unit!157603)

(assert (=> b!6159878 (= lt!2335763 (lemmaZipperConcatMatchesSameAsBothZippers!934 lt!2335761 lt!2335767 (t!378106 s!2326)))))

(declare-fun b!6159879 () Bool)

(assert (=> b!6159879 (= e!3753031 (matchZipper!2115 lt!2335749 s!2326))))

(declare-fun tp!1720090 () Bool)

(declare-fun setElem!41742 () Context!10974)

(declare-fun setNonEmpty!41742 () Bool)

(assert (=> setNonEmpty!41742 (= setRes!41742 (and tp!1720090 (inv!83504 setElem!41742) e!3753036))))

(declare-fun setRest!41742 () (InoxSet Context!10974))

(assert (=> setNonEmpty!41742 (= z!1189 ((_ map or) (store ((as const (Array Context!10974 Bool)) false) setElem!41742 true) setRest!41742))))

(declare-fun b!6159880 () Bool)

(declare-fun res!2550951 () Bool)

(assert (=> b!6159880 (=> res!2550951 e!3753034)))

(declare-fun generalisedUnion!1947 (List!64608) Regex!16103)

(declare-fun unfocusZipperList!1524 (List!64609) List!64608)

(assert (=> b!6159880 (= res!2550951 (not (= r!7292 (generalisedUnion!1947 (unfocusZipperList!1524 zl!343)))))))

(assert (= (and start!615282 res!2550958) b!6159848))

(assert (= (and b!6159848 res!2550959) b!6159852))

(assert (= (and b!6159852 res!2550942) b!6159844))

(assert (= (and b!6159844 (not res!2550946)) b!6159854))

(assert (= (and b!6159854 (not res!2550960)) b!6159867))

(assert (= (and b!6159867 (not res!2550962)) b!6159859))

(assert (= (and b!6159859 (not res!2550941)) b!6159880))

(assert (= (and b!6159880 (not res!2550951)) b!6159860))

(assert (= (and b!6159860 (not res!2550953)) b!6159849))

(assert (= (and b!6159849 (not res!2550949)) b!6159866))

(assert (= (and b!6159866 (not res!2550944)) b!6159868))

(assert (= (and b!6159868 c!1109259) b!6159863))

(assert (= (and b!6159868 (not c!1109259)) b!6159872))

(assert (= (and b!6159863 (not res!2550950)) b!6159877))

(assert (= (and b!6159868 (not res!2550955)) b!6159862))

(assert (= (and b!6159862 (not res!2550947)) b!6159878))

(assert (= (and b!6159878 (not res!2550957)) b!6159855))

(assert (= (and b!6159878 res!2550956) b!6159873))

(assert (= (and b!6159878 (not res!2550963)) b!6159861))

(assert (= (and b!6159861 c!1109257) b!6159864))

(assert (= (and b!6159861 (not c!1109257)) b!6159850))

(assert (= (and b!6159864 (not res!2550948)) b!6159857))

(assert (= (and b!6159861 c!1109258) b!6159845))

(assert (= (and b!6159861 (not c!1109258)) b!6159874))

(assert (= (and b!6159845 (not res!2550954)) b!6159875))

(assert (= (and b!6159861 (not res!2550952)) b!6159879))

(assert (= (and b!6159861 (not res!2550961)) b!6159853))

(assert (= (and b!6159853 (not res!2550943)) b!6159870))

(assert (= (and b!6159870 (not res!2550945)) b!6159858))

(assert (= (and start!615282 ((_ is ElementMatch!16103) r!7292)) b!6159871))

(assert (= (and start!615282 ((_ is Concat!24948) r!7292)) b!6159856))

(assert (= (and start!615282 ((_ is Star!16103) r!7292)) b!6159865))

(assert (= (and start!615282 ((_ is Union!16103) r!7292)) b!6159851))

(assert (= (and start!615282 condSetEmpty!41742) setIsEmpty!41742))

(assert (= (and start!615282 (not condSetEmpty!41742)) setNonEmpty!41742))

(assert (= setNonEmpty!41742 b!6159876))

(assert (= b!6159847 b!6159869))

(assert (= (and start!615282 ((_ is Cons!64485) zl!343)) b!6159847))

(assert (= (and start!615282 ((_ is Cons!64486) s!2326)) b!6159846))

(declare-fun m!6998002 () Bool)

(assert (=> b!6159854 m!6998002))

(declare-fun m!6998004 () Bool)

(assert (=> b!6159863 m!6998004))

(declare-fun m!6998006 () Bool)

(assert (=> b!6159863 m!6998006))

(declare-fun m!6998008 () Bool)

(assert (=> b!6159863 m!6998008))

(declare-fun m!6998010 () Bool)

(assert (=> b!6159861 m!6998010))

(declare-fun m!6998012 () Bool)

(assert (=> b!6159861 m!6998012))

(declare-fun m!6998014 () Bool)

(assert (=> b!6159861 m!6998014))

(declare-fun m!6998016 () Bool)

(assert (=> b!6159861 m!6998016))

(declare-fun m!6998018 () Bool)

(assert (=> b!6159861 m!6998018))

(declare-fun m!6998020 () Bool)

(assert (=> b!6159861 m!6998020))

(declare-fun m!6998022 () Bool)

(assert (=> b!6159861 m!6998022))

(declare-fun m!6998024 () Bool)

(assert (=> b!6159861 m!6998024))

(declare-fun m!6998026 () Bool)

(assert (=> b!6159861 m!6998026))

(declare-fun m!6998028 () Bool)

(assert (=> b!6159861 m!6998028))

(declare-fun m!6998030 () Bool)

(assert (=> b!6159861 m!6998030))

(declare-fun m!6998032 () Bool)

(assert (=> b!6159861 m!6998032))

(assert (=> b!6159878 m!6998006))

(declare-fun m!6998034 () Bool)

(assert (=> b!6159878 m!6998034))

(declare-fun m!6998036 () Bool)

(assert (=> b!6159878 m!6998036))

(declare-fun m!6998038 () Bool)

(assert (=> b!6159878 m!6998038))

(declare-fun m!6998040 () Bool)

(assert (=> start!615282 m!6998040))

(declare-fun m!6998042 () Bool)

(assert (=> b!6159845 m!6998042))

(declare-fun m!6998044 () Bool)

(assert (=> b!6159845 m!6998044))

(declare-fun m!6998046 () Bool)

(assert (=> b!6159845 m!6998046))

(declare-fun m!6998048 () Bool)

(assert (=> b!6159868 m!6998048))

(declare-fun m!6998050 () Bool)

(assert (=> b!6159868 m!6998050))

(declare-fun m!6998052 () Bool)

(assert (=> b!6159868 m!6998052))

(declare-fun m!6998054 () Bool)

(assert (=> b!6159868 m!6998054))

(declare-fun m!6998056 () Bool)

(assert (=> b!6159868 m!6998056))

(declare-fun m!6998058 () Bool)

(assert (=> b!6159868 m!6998058))

(declare-fun m!6998060 () Bool)

(assert (=> b!6159868 m!6998060))

(declare-fun m!6998062 () Bool)

(assert (=> b!6159877 m!6998062))

(assert (=> b!6159857 m!6998062))

(assert (=> b!6159873 m!6998044))

(declare-fun m!6998064 () Bool)

(assert (=> b!6159864 m!6998064))

(declare-fun m!6998066 () Bool)

(assert (=> b!6159864 m!6998066))

(declare-fun m!6998068 () Bool)

(assert (=> b!6159862 m!6998068))

(declare-fun m!6998070 () Bool)

(assert (=> b!6159862 m!6998070))

(declare-fun m!6998072 () Bool)

(assert (=> b!6159858 m!6998072))

(declare-fun m!6998074 () Bool)

(assert (=> b!6159870 m!6998074))

(declare-fun m!6998076 () Bool)

(assert (=> b!6159870 m!6998076))

(declare-fun m!6998078 () Bool)

(assert (=> b!6159848 m!6998078))

(declare-fun m!6998080 () Bool)

(assert (=> b!6159879 m!6998080))

(assert (=> b!6159875 m!6998062))

(declare-fun m!6998082 () Bool)

(assert (=> b!6159867 m!6998082))

(declare-fun m!6998084 () Bool)

(assert (=> b!6159852 m!6998084))

(declare-fun m!6998086 () Bool)

(assert (=> setNonEmpty!41742 m!6998086))

(declare-fun m!6998088 () Bool)

(assert (=> b!6159849 m!6998088))

(declare-fun m!6998090 () Bool)

(assert (=> b!6159849 m!6998090))

(declare-fun m!6998092 () Bool)

(assert (=> b!6159849 m!6998092))

(declare-fun m!6998094 () Bool)

(assert (=> b!6159849 m!6998094))

(assert (=> b!6159849 m!6998088))

(declare-fun m!6998096 () Bool)

(assert (=> b!6159849 m!6998096))

(assert (=> b!6159849 m!6998092))

(declare-fun m!6998098 () Bool)

(assert (=> b!6159849 m!6998098))

(declare-fun m!6998100 () Bool)

(assert (=> b!6159880 m!6998100))

(assert (=> b!6159880 m!6998100))

(declare-fun m!6998102 () Bool)

(assert (=> b!6159880 m!6998102))

(assert (=> b!6159855 m!6998044))

(declare-fun m!6998104 () Bool)

(assert (=> b!6159844 m!6998104))

(declare-fun m!6998106 () Bool)

(assert (=> b!6159844 m!6998106))

(declare-fun m!6998108 () Bool)

(assert (=> b!6159844 m!6998108))

(declare-fun m!6998110 () Bool)

(assert (=> b!6159866 m!6998110))

(declare-fun m!6998112 () Bool)

(assert (=> b!6159847 m!6998112))

(check-sat (not b!6159861) (not b!6159875) (not b!6159865) (not setNonEmpty!41742) (not b!6159869) (not b!6159846) (not b!6159877) (not b!6159862) (not b!6159857) (not b!6159866) (not b!6159878) (not b!6159864) (not b!6159868) (not b!6159854) (not b!6159847) tp_is_empty!41459 (not start!615282) (not b!6159851) (not b!6159856) (not b!6159880) (not b!6159863) (not b!6159879) (not b!6159858) (not b!6159844) (not b!6159849) (not b!6159845) (not b!6159867) (not b!6159855) (not b!6159852) (not b!6159876) (not b!6159873) (not b!6159848) (not b!6159870))
(check-sat)
(get-model)

(declare-fun e!3753225 () Bool)

(declare-fun d!1930293 () Bool)

(assert (=> d!1930293 (= (matchZipper!2115 ((_ map or) lt!2335767 lt!2335744) (t!378106 s!2326)) e!3753225)))

(declare-fun res!2551078 () Bool)

(assert (=> d!1930293 (=> res!2551078 e!3753225)))

(assert (=> d!1930293 (= res!2551078 (matchZipper!2115 lt!2335767 (t!378106 s!2326)))))

(declare-fun lt!2335818 () Unit!157603)

(declare-fun choose!45800 ((InoxSet Context!10974) (InoxSet Context!10974) List!64610) Unit!157603)

(assert (=> d!1930293 (= lt!2335818 (choose!45800 lt!2335767 lt!2335744 (t!378106 s!2326)))))

(assert (=> d!1930293 (= (lemmaZipperConcatMatchesSameAsBothZippers!934 lt!2335767 lt!2335744 (t!378106 s!2326)) lt!2335818)))

(declare-fun b!6160203 () Bool)

(assert (=> b!6160203 (= e!3753225 (matchZipper!2115 lt!2335744 (t!378106 s!2326)))))

(assert (= (and d!1930293 (not res!2551078)) b!6160203))

(assert (=> d!1930293 m!6998046))

(assert (=> d!1930293 m!6998044))

(declare-fun m!6998380 () Bool)

(assert (=> d!1930293 m!6998380))

(assert (=> b!6160203 m!6998062))

(assert (=> b!6159845 d!1930293))

(declare-fun d!1930297 () Bool)

(declare-fun c!1109367 () Bool)

(declare-fun isEmpty!36455 (List!64610) Bool)

(assert (=> d!1930297 (= c!1109367 (isEmpty!36455 (t!378106 s!2326)))))

(declare-fun e!3753231 () Bool)

(assert (=> d!1930297 (= (matchZipper!2115 lt!2335767 (t!378106 s!2326)) e!3753231)))

(declare-fun b!6160214 () Bool)

(declare-fun nullableZipper!1884 ((InoxSet Context!10974)) Bool)

(assert (=> b!6160214 (= e!3753231 (nullableZipper!1884 lt!2335767))))

(declare-fun b!6160215 () Bool)

(declare-fun derivationStepZipper!2076 ((InoxSet Context!10974) C!32476) (InoxSet Context!10974))

(declare-fun head!12726 (List!64610) C!32476)

(declare-fun tail!11811 (List!64610) List!64610)

(assert (=> b!6160215 (= e!3753231 (matchZipper!2115 (derivationStepZipper!2076 lt!2335767 (head!12726 (t!378106 s!2326))) (tail!11811 (t!378106 s!2326))))))

(assert (= (and d!1930297 c!1109367) b!6160214))

(assert (= (and d!1930297 (not c!1109367)) b!6160215))

(declare-fun m!6998386 () Bool)

(assert (=> d!1930297 m!6998386))

(declare-fun m!6998388 () Bool)

(assert (=> b!6160214 m!6998388))

(declare-fun m!6998390 () Bool)

(assert (=> b!6160215 m!6998390))

(assert (=> b!6160215 m!6998390))

(declare-fun m!6998392 () Bool)

(assert (=> b!6160215 m!6998392))

(declare-fun m!6998394 () Bool)

(assert (=> b!6160215 m!6998394))

(assert (=> b!6160215 m!6998392))

(assert (=> b!6160215 m!6998394))

(declare-fun m!6998396 () Bool)

(assert (=> b!6160215 m!6998396))

(assert (=> b!6159845 d!1930297))

(declare-fun d!1930299 () Bool)

(declare-fun c!1109368 () Bool)

(assert (=> d!1930299 (= c!1109368 (isEmpty!36455 (t!378106 s!2326)))))

(declare-fun e!3753232 () Bool)

(assert (=> d!1930299 (= (matchZipper!2115 ((_ map or) lt!2335767 lt!2335744) (t!378106 s!2326)) e!3753232)))

(declare-fun b!6160216 () Bool)

(assert (=> b!6160216 (= e!3753232 (nullableZipper!1884 ((_ map or) lt!2335767 lt!2335744)))))

(declare-fun b!6160217 () Bool)

(assert (=> b!6160217 (= e!3753232 (matchZipper!2115 (derivationStepZipper!2076 ((_ map or) lt!2335767 lt!2335744) (head!12726 (t!378106 s!2326))) (tail!11811 (t!378106 s!2326))))))

(assert (= (and d!1930299 c!1109368) b!6160216))

(assert (= (and d!1930299 (not c!1109368)) b!6160217))

(assert (=> d!1930299 m!6998386))

(declare-fun m!6998402 () Bool)

(assert (=> b!6160216 m!6998402))

(assert (=> b!6160217 m!6998390))

(assert (=> b!6160217 m!6998390))

(declare-fun m!6998404 () Bool)

(assert (=> b!6160217 m!6998404))

(assert (=> b!6160217 m!6998394))

(assert (=> b!6160217 m!6998404))

(assert (=> b!6160217 m!6998394))

(declare-fun m!6998406 () Bool)

(assert (=> b!6160217 m!6998406))

(assert (=> b!6159845 d!1930299))

(declare-fun d!1930303 () Bool)

(assert (=> d!1930303 (= (isEmpty!36453 (t!378104 (exprs!5987 (h!70933 zl!343)))) ((_ is Nil!64484) (t!378104 (exprs!5987 (h!70933 zl!343)))))))

(assert (=> b!6159866 d!1930303))

(declare-fun d!1930307 () Bool)

(declare-fun e!3753233 () Bool)

(assert (=> d!1930307 (= (matchZipper!2115 ((_ map or) lt!2335761 lt!2335744) (t!378106 s!2326)) e!3753233)))

(declare-fun res!2551079 () Bool)

(assert (=> d!1930307 (=> res!2551079 e!3753233)))

(assert (=> d!1930307 (= res!2551079 (matchZipper!2115 lt!2335761 (t!378106 s!2326)))))

(declare-fun lt!2335822 () Unit!157603)

(assert (=> d!1930307 (= lt!2335822 (choose!45800 lt!2335761 lt!2335744 (t!378106 s!2326)))))

(assert (=> d!1930307 (= (lemmaZipperConcatMatchesSameAsBothZippers!934 lt!2335761 lt!2335744 (t!378106 s!2326)) lt!2335822)))

(declare-fun b!6160218 () Bool)

(assert (=> b!6160218 (= e!3753233 (matchZipper!2115 lt!2335744 (t!378106 s!2326)))))

(assert (= (and d!1930307 (not res!2551079)) b!6160218))

(assert (=> d!1930307 m!6998066))

(assert (=> d!1930307 m!6998036))

(declare-fun m!6998410 () Bool)

(assert (=> d!1930307 m!6998410))

(assert (=> b!6160218 m!6998062))

(assert (=> b!6159864 d!1930307))

(declare-fun d!1930309 () Bool)

(declare-fun c!1109369 () Bool)

(assert (=> d!1930309 (= c!1109369 (isEmpty!36455 (t!378106 s!2326)))))

(declare-fun e!3753234 () Bool)

(assert (=> d!1930309 (= (matchZipper!2115 ((_ map or) lt!2335761 lt!2335744) (t!378106 s!2326)) e!3753234)))

(declare-fun b!6160219 () Bool)

(assert (=> b!6160219 (= e!3753234 (nullableZipper!1884 ((_ map or) lt!2335761 lt!2335744)))))

(declare-fun b!6160220 () Bool)

(assert (=> b!6160220 (= e!3753234 (matchZipper!2115 (derivationStepZipper!2076 ((_ map or) lt!2335761 lt!2335744) (head!12726 (t!378106 s!2326))) (tail!11811 (t!378106 s!2326))))))

(assert (= (and d!1930309 c!1109369) b!6160219))

(assert (= (and d!1930309 (not c!1109369)) b!6160220))

(assert (=> d!1930309 m!6998386))

(declare-fun m!6998412 () Bool)

(assert (=> b!6160219 m!6998412))

(assert (=> b!6160220 m!6998390))

(assert (=> b!6160220 m!6998390))

(declare-fun m!6998414 () Bool)

(assert (=> b!6160220 m!6998414))

(assert (=> b!6160220 m!6998394))

(assert (=> b!6160220 m!6998414))

(assert (=> b!6160220 m!6998394))

(declare-fun m!6998416 () Bool)

(assert (=> b!6160220 m!6998416))

(assert (=> b!6159864 d!1930309))

(declare-fun bs!1526811 () Bool)

(declare-fun b!6160339 () Bool)

(assert (= bs!1526811 (and b!6160339 b!6159849)))

(declare-fun lambda!336159 () Int)

(assert (=> bs!1526811 (not (= lambda!336159 lambda!336123))))

(assert (=> bs!1526811 (not (= lambda!336159 lambda!336124))))

(assert (=> b!6160339 true))

(assert (=> b!6160339 true))

(declare-fun bs!1526812 () Bool)

(declare-fun b!6160346 () Bool)

(assert (= bs!1526812 (and b!6160346 b!6159849)))

(declare-fun lambda!336160 () Int)

(assert (=> bs!1526812 (not (= lambda!336160 lambda!336123))))

(assert (=> bs!1526812 (= lambda!336160 lambda!336124)))

(declare-fun bs!1526813 () Bool)

(assert (= bs!1526813 (and b!6160346 b!6160339)))

(assert (=> bs!1526813 (not (= lambda!336160 lambda!336159))))

(assert (=> b!6160346 true))

(assert (=> b!6160346 true))

(declare-fun b!6160337 () Bool)

(declare-fun e!3753294 () Bool)

(declare-fun e!3753300 () Bool)

(assert (=> b!6160337 (= e!3753294 e!3753300)))

(declare-fun c!1109390 () Bool)

(assert (=> b!6160337 (= c!1109390 ((_ is Star!16103) r!7292))))

(declare-fun b!6160338 () Bool)

(declare-fun e!3753297 () Bool)

(assert (=> b!6160338 (= e!3753297 (= s!2326 (Cons!64486 (c!1109260 r!7292) Nil!64486)))))

(declare-fun b!6160340 () Bool)

(declare-fun e!3753298 () Bool)

(declare-fun e!3753295 () Bool)

(assert (=> b!6160340 (= e!3753298 e!3753295)))

(declare-fun res!2551104 () Bool)

(assert (=> b!6160340 (= res!2551104 (not ((_ is EmptyLang!16103) r!7292)))))

(assert (=> b!6160340 (=> (not res!2551104) (not e!3753295))))

(declare-fun bm!512983 () Bool)

(declare-fun call!512989 () Bool)

(assert (=> bm!512983 (= call!512989 (isEmpty!36455 s!2326))))

(declare-fun b!6160341 () Bool)

(declare-fun e!3753299 () Bool)

(assert (=> b!6160341 (= e!3753294 e!3753299)))

(declare-fun res!2551103 () Bool)

(assert (=> b!6160341 (= res!2551103 (matchRSpec!3204 (regOne!32719 r!7292) s!2326))))

(assert (=> b!6160341 (=> res!2551103 e!3753299)))

(declare-fun b!6160342 () Bool)

(declare-fun c!1109392 () Bool)

(assert (=> b!6160342 (= c!1109392 ((_ is ElementMatch!16103) r!7292))))

(assert (=> b!6160342 (= e!3753295 e!3753297)))

(declare-fun b!6160343 () Bool)

(assert (=> b!6160343 (= e!3753299 (matchRSpec!3204 (regTwo!32719 r!7292) s!2326))))

(declare-fun call!512988 () Bool)

(declare-fun bm!512984 () Bool)

(assert (=> bm!512984 (= call!512988 (Exists!3173 (ite c!1109390 lambda!336159 lambda!336160)))))

(declare-fun b!6160344 () Bool)

(declare-fun c!1109391 () Bool)

(assert (=> b!6160344 (= c!1109391 ((_ is Union!16103) r!7292))))

(assert (=> b!6160344 (= e!3753297 e!3753294)))

(declare-fun b!6160345 () Bool)

(declare-fun res!2551102 () Bool)

(declare-fun e!3753296 () Bool)

(assert (=> b!6160345 (=> res!2551102 e!3753296)))

(assert (=> b!6160345 (= res!2551102 call!512989)))

(assert (=> b!6160345 (= e!3753300 e!3753296)))

(assert (=> b!6160339 (= e!3753296 call!512988)))

(declare-fun d!1930311 () Bool)

(declare-fun c!1109393 () Bool)

(assert (=> d!1930311 (= c!1109393 ((_ is EmptyExpr!16103) r!7292))))

(assert (=> d!1930311 (= (matchRSpec!3204 r!7292 s!2326) e!3753298)))

(assert (=> b!6160346 (= e!3753300 call!512988)))

(declare-fun b!6160347 () Bool)

(assert (=> b!6160347 (= e!3753298 call!512989)))

(assert (= (and d!1930311 c!1109393) b!6160347))

(assert (= (and d!1930311 (not c!1109393)) b!6160340))

(assert (= (and b!6160340 res!2551104) b!6160342))

(assert (= (and b!6160342 c!1109392) b!6160338))

(assert (= (and b!6160342 (not c!1109392)) b!6160344))

(assert (= (and b!6160344 c!1109391) b!6160341))

(assert (= (and b!6160344 (not c!1109391)) b!6160337))

(assert (= (and b!6160341 (not res!2551103)) b!6160343))

(assert (= (and b!6160337 c!1109390) b!6160345))

(assert (= (and b!6160337 (not c!1109390)) b!6160346))

(assert (= (and b!6160345 (not res!2551102)) b!6160339))

(assert (= (or b!6160339 b!6160346) bm!512984))

(assert (= (or b!6160347 b!6160345) bm!512983))

(declare-fun m!6998440 () Bool)

(assert (=> bm!512983 m!6998440))

(declare-fun m!6998442 () Bool)

(assert (=> b!6160341 m!6998442))

(declare-fun m!6998444 () Bool)

(assert (=> b!6160343 m!6998444))

(declare-fun m!6998446 () Bool)

(assert (=> bm!512984 m!6998446))

(assert (=> b!6159844 d!1930311))

(declare-fun bm!512987 () Bool)

(declare-fun call!512992 () Bool)

(assert (=> bm!512987 (= call!512992 (isEmpty!36455 s!2326))))

(declare-fun b!6160376 () Bool)

(declare-fun e!3753316 () Bool)

(declare-fun e!3753318 () Bool)

(assert (=> b!6160376 (= e!3753316 e!3753318)))

(declare-fun res!2551126 () Bool)

(assert (=> b!6160376 (=> (not res!2551126) (not e!3753318))))

(declare-fun lt!2335828 () Bool)

(assert (=> b!6160376 (= res!2551126 (not lt!2335828))))

(declare-fun b!6160377 () Bool)

(declare-fun res!2551128 () Bool)

(declare-fun e!3753317 () Bool)

(assert (=> b!6160377 (=> res!2551128 e!3753317)))

(assert (=> b!6160377 (= res!2551128 (not (isEmpty!36455 (tail!11811 s!2326))))))

(declare-fun b!6160379 () Bool)

(declare-fun e!3753315 () Bool)

(assert (=> b!6160379 (= e!3753315 (not lt!2335828))))

(declare-fun b!6160380 () Bool)

(declare-fun res!2551121 () Bool)

(declare-fun e!3753321 () Bool)

(assert (=> b!6160380 (=> (not res!2551121) (not e!3753321))))

(assert (=> b!6160380 (= res!2551121 (isEmpty!36455 (tail!11811 s!2326)))))

(declare-fun b!6160381 () Bool)

(declare-fun e!3753319 () Bool)

(assert (=> b!6160381 (= e!3753319 (nullable!6096 r!7292))))

(declare-fun b!6160382 () Bool)

(declare-fun res!2551124 () Bool)

(assert (=> b!6160382 (=> res!2551124 e!3753316)))

(assert (=> b!6160382 (= res!2551124 e!3753321)))

(declare-fun res!2551127 () Bool)

(assert (=> b!6160382 (=> (not res!2551127) (not e!3753321))))

(assert (=> b!6160382 (= res!2551127 lt!2335828)))

(declare-fun b!6160383 () Bool)

(declare-fun res!2551122 () Bool)

(assert (=> b!6160383 (=> (not res!2551122) (not e!3753321))))

(assert (=> b!6160383 (= res!2551122 (not call!512992))))

(declare-fun b!6160384 () Bool)

(assert (=> b!6160384 (= e!3753317 (not (= (head!12726 s!2326) (c!1109260 r!7292))))))

(declare-fun b!6160385 () Bool)

(assert (=> b!6160385 (= e!3753318 e!3753317)))

(declare-fun res!2551125 () Bool)

(assert (=> b!6160385 (=> res!2551125 e!3753317)))

(assert (=> b!6160385 (= res!2551125 call!512992)))

(declare-fun b!6160386 () Bool)

(declare-fun res!2551123 () Bool)

(assert (=> b!6160386 (=> res!2551123 e!3753316)))

(assert (=> b!6160386 (= res!2551123 (not ((_ is ElementMatch!16103) r!7292)))))

(assert (=> b!6160386 (= e!3753315 e!3753316)))

(declare-fun b!6160387 () Bool)

(declare-fun e!3753320 () Bool)

(assert (=> b!6160387 (= e!3753320 (= lt!2335828 call!512992))))

(declare-fun d!1930319 () Bool)

(assert (=> d!1930319 e!3753320))

(declare-fun c!1109402 () Bool)

(assert (=> d!1930319 (= c!1109402 ((_ is EmptyExpr!16103) r!7292))))

(assert (=> d!1930319 (= lt!2335828 e!3753319)))

(declare-fun c!1109400 () Bool)

(assert (=> d!1930319 (= c!1109400 (isEmpty!36455 s!2326))))

(assert (=> d!1930319 (validRegex!7839 r!7292)))

(assert (=> d!1930319 (= (matchR!8286 r!7292 s!2326) lt!2335828)))

(declare-fun b!6160378 () Bool)

(assert (=> b!6160378 (= e!3753320 e!3753315)))

(declare-fun c!1109401 () Bool)

(assert (=> b!6160378 (= c!1109401 ((_ is EmptyLang!16103) r!7292))))

(declare-fun b!6160388 () Bool)

(declare-fun derivativeStep!4823 (Regex!16103 C!32476) Regex!16103)

(assert (=> b!6160388 (= e!3753319 (matchR!8286 (derivativeStep!4823 r!7292 (head!12726 s!2326)) (tail!11811 s!2326)))))

(declare-fun b!6160389 () Bool)

(assert (=> b!6160389 (= e!3753321 (= (head!12726 s!2326) (c!1109260 r!7292)))))

(assert (= (and d!1930319 c!1109400) b!6160381))

(assert (= (and d!1930319 (not c!1109400)) b!6160388))

(assert (= (and d!1930319 c!1109402) b!6160387))

(assert (= (and d!1930319 (not c!1109402)) b!6160378))

(assert (= (and b!6160378 c!1109401) b!6160379))

(assert (= (and b!6160378 (not c!1109401)) b!6160386))

(assert (= (and b!6160386 (not res!2551123)) b!6160382))

(assert (= (and b!6160382 res!2551127) b!6160383))

(assert (= (and b!6160383 res!2551122) b!6160380))

(assert (= (and b!6160380 res!2551121) b!6160389))

(assert (= (and b!6160382 (not res!2551124)) b!6160376))

(assert (= (and b!6160376 res!2551126) b!6160385))

(assert (= (and b!6160385 (not res!2551125)) b!6160377))

(assert (= (and b!6160377 (not res!2551128)) b!6160384))

(assert (= (or b!6160387 b!6160383 b!6160385) bm!512987))

(declare-fun m!6998448 () Bool)

(assert (=> b!6160380 m!6998448))

(assert (=> b!6160380 m!6998448))

(declare-fun m!6998450 () Bool)

(assert (=> b!6160380 m!6998450))

(declare-fun m!6998452 () Bool)

(assert (=> b!6160389 m!6998452))

(assert (=> b!6160388 m!6998452))

(assert (=> b!6160388 m!6998452))

(declare-fun m!6998454 () Bool)

(assert (=> b!6160388 m!6998454))

(assert (=> b!6160388 m!6998448))

(assert (=> b!6160388 m!6998454))

(assert (=> b!6160388 m!6998448))

(declare-fun m!6998456 () Bool)

(assert (=> b!6160388 m!6998456))

(assert (=> b!6160384 m!6998452))

(assert (=> b!6160377 m!6998448))

(assert (=> b!6160377 m!6998448))

(assert (=> b!6160377 m!6998450))

(assert (=> d!1930319 m!6998440))

(assert (=> d!1930319 m!6998040))

(declare-fun m!6998458 () Bool)

(assert (=> b!6160381 m!6998458))

(assert (=> bm!512987 m!6998440))

(assert (=> b!6159844 d!1930319))

(declare-fun d!1930321 () Bool)

(assert (=> d!1930321 (= (matchR!8286 r!7292 s!2326) (matchRSpec!3204 r!7292 s!2326))))

(declare-fun lt!2335831 () Unit!157603)

(declare-fun choose!45802 (Regex!16103 List!64610) Unit!157603)

(assert (=> d!1930321 (= lt!2335831 (choose!45802 r!7292 s!2326))))

(assert (=> d!1930321 (validRegex!7839 r!7292)))

(assert (=> d!1930321 (= (mainMatchTheorem!3204 r!7292 s!2326) lt!2335831)))

(declare-fun bs!1526814 () Bool)

(assert (= bs!1526814 d!1930321))

(assert (=> bs!1526814 m!6998106))

(assert (=> bs!1526814 m!6998104))

(declare-fun m!6998460 () Bool)

(assert (=> bs!1526814 m!6998460))

(assert (=> bs!1526814 m!6998040))

(assert (=> b!6159844 d!1930321))

(declare-fun d!1930323 () Bool)

(declare-fun e!3753322 () Bool)

(assert (=> d!1930323 (= (matchZipper!2115 ((_ map or) lt!2335764 lt!2335744) (t!378106 s!2326)) e!3753322)))

(declare-fun res!2551129 () Bool)

(assert (=> d!1930323 (=> res!2551129 e!3753322)))

(assert (=> d!1930323 (= res!2551129 (matchZipper!2115 lt!2335764 (t!378106 s!2326)))))

(declare-fun lt!2335832 () Unit!157603)

(assert (=> d!1930323 (= lt!2335832 (choose!45800 lt!2335764 lt!2335744 (t!378106 s!2326)))))

(assert (=> d!1930323 (= (lemmaZipperConcatMatchesSameAsBothZippers!934 lt!2335764 lt!2335744 (t!378106 s!2326)) lt!2335832)))

(declare-fun b!6160390 () Bool)

(assert (=> b!6160390 (= e!3753322 (matchZipper!2115 lt!2335744 (t!378106 s!2326)))))

(assert (= (and d!1930323 (not res!2551129)) b!6160390))

(assert (=> d!1930323 m!6998008))

(assert (=> d!1930323 m!6998006))

(declare-fun m!6998462 () Bool)

(assert (=> d!1930323 m!6998462))

(assert (=> b!6160390 m!6998062))

(assert (=> b!6159863 d!1930323))

(declare-fun d!1930325 () Bool)

(declare-fun c!1109403 () Bool)

(assert (=> d!1930325 (= c!1109403 (isEmpty!36455 (t!378106 s!2326)))))

(declare-fun e!3753323 () Bool)

(assert (=> d!1930325 (= (matchZipper!2115 lt!2335764 (t!378106 s!2326)) e!3753323)))

(declare-fun b!6160391 () Bool)

(assert (=> b!6160391 (= e!3753323 (nullableZipper!1884 lt!2335764))))

(declare-fun b!6160392 () Bool)

(assert (=> b!6160392 (= e!3753323 (matchZipper!2115 (derivationStepZipper!2076 lt!2335764 (head!12726 (t!378106 s!2326))) (tail!11811 (t!378106 s!2326))))))

(assert (= (and d!1930325 c!1109403) b!6160391))

(assert (= (and d!1930325 (not c!1109403)) b!6160392))

(assert (=> d!1930325 m!6998386))

(declare-fun m!6998464 () Bool)

(assert (=> b!6160391 m!6998464))

(assert (=> b!6160392 m!6998390))

(assert (=> b!6160392 m!6998390))

(declare-fun m!6998466 () Bool)

(assert (=> b!6160392 m!6998466))

(assert (=> b!6160392 m!6998394))

(assert (=> b!6160392 m!6998466))

(assert (=> b!6160392 m!6998394))

(declare-fun m!6998468 () Bool)

(assert (=> b!6160392 m!6998468))

(assert (=> b!6159863 d!1930325))

(declare-fun d!1930327 () Bool)

(declare-fun c!1109404 () Bool)

(assert (=> d!1930327 (= c!1109404 (isEmpty!36455 (t!378106 s!2326)))))

(declare-fun e!3753324 () Bool)

(assert (=> d!1930327 (= (matchZipper!2115 ((_ map or) lt!2335764 lt!2335744) (t!378106 s!2326)) e!3753324)))

(declare-fun b!6160393 () Bool)

(assert (=> b!6160393 (= e!3753324 (nullableZipper!1884 ((_ map or) lt!2335764 lt!2335744)))))

(declare-fun b!6160394 () Bool)

(assert (=> b!6160394 (= e!3753324 (matchZipper!2115 (derivationStepZipper!2076 ((_ map or) lt!2335764 lt!2335744) (head!12726 (t!378106 s!2326))) (tail!11811 (t!378106 s!2326))))))

(assert (= (and d!1930327 c!1109404) b!6160393))

(assert (= (and d!1930327 (not c!1109404)) b!6160394))

(assert (=> d!1930327 m!6998386))

(declare-fun m!6998470 () Bool)

(assert (=> b!6160393 m!6998470))

(assert (=> b!6160394 m!6998390))

(assert (=> b!6160394 m!6998390))

(declare-fun m!6998472 () Bool)

(assert (=> b!6160394 m!6998472))

(assert (=> b!6160394 m!6998394))

(assert (=> b!6160394 m!6998472))

(assert (=> b!6160394 m!6998394))

(declare-fun m!6998474 () Bool)

(assert (=> b!6160394 m!6998474))

(assert (=> b!6159863 d!1930327))

(declare-fun d!1930329 () Bool)

(declare-fun nullableFct!2060 (Regex!16103) Bool)

(assert (=> d!1930329 (= (nullable!6096 (regTwo!32719 (regOne!32718 r!7292))) (nullableFct!2060 (regTwo!32719 (regOne!32718 r!7292))))))

(declare-fun bs!1526815 () Bool)

(assert (= bs!1526815 d!1930329))

(declare-fun m!6998476 () Bool)

(assert (=> bs!1526815 m!6998476))

(assert (=> b!6159861 d!1930329))

(declare-fun d!1930331 () Bool)

(declare-fun choose!45803 ((InoxSet Context!10974) Int) (InoxSet Context!10974))

(assert (=> d!1930331 (= (flatMap!1608 lt!2335749 lambda!336125) (choose!45803 lt!2335749 lambda!336125))))

(declare-fun bs!1526816 () Bool)

(assert (= bs!1526816 d!1930331))

(declare-fun m!6998478 () Bool)

(assert (=> bs!1526816 m!6998478))

(assert (=> b!6159861 d!1930331))

(declare-fun b!6160405 () Bool)

(declare-fun e!3753333 () (InoxSet Context!10974))

(assert (=> b!6160405 (= e!3753333 ((as const (Array Context!10974 Bool)) false))))

(declare-fun b!6160406 () Bool)

(declare-fun call!512995 () (InoxSet Context!10974))

(assert (=> b!6160406 (= e!3753333 call!512995)))

(declare-fun bm!512990 () Bool)

(assert (=> bm!512990 (= call!512995 (derivationStepZipperDown!1351 (h!70932 (exprs!5987 lt!2335742)) (Context!10975 (t!378104 (exprs!5987 lt!2335742))) (h!70934 s!2326)))))

(declare-fun b!6160407 () Bool)

(declare-fun e!3753332 () (InoxSet Context!10974))

(assert (=> b!6160407 (= e!3753332 e!3753333)))

(declare-fun c!1109410 () Bool)

(assert (=> b!6160407 (= c!1109410 ((_ is Cons!64484) (exprs!5987 lt!2335742)))))

(declare-fun d!1930333 () Bool)

(declare-fun c!1109409 () Bool)

(declare-fun e!3753331 () Bool)

(assert (=> d!1930333 (= c!1109409 e!3753331)))

(declare-fun res!2551132 () Bool)

(assert (=> d!1930333 (=> (not res!2551132) (not e!3753331))))

(assert (=> d!1930333 (= res!2551132 ((_ is Cons!64484) (exprs!5987 lt!2335742)))))

(assert (=> d!1930333 (= (derivationStepZipperUp!1277 lt!2335742 (h!70934 s!2326)) e!3753332)))

(declare-fun b!6160408 () Bool)

(assert (=> b!6160408 (= e!3753332 ((_ map or) call!512995 (derivationStepZipperUp!1277 (Context!10975 (t!378104 (exprs!5987 lt!2335742))) (h!70934 s!2326))))))

(declare-fun b!6160409 () Bool)

(assert (=> b!6160409 (= e!3753331 (nullable!6096 (h!70932 (exprs!5987 lt!2335742))))))

(assert (= (and d!1930333 res!2551132) b!6160409))

(assert (= (and d!1930333 c!1109409) b!6160408))

(assert (= (and d!1930333 (not c!1109409)) b!6160407))

(assert (= (and b!6160407 c!1109410) b!6160406))

(assert (= (and b!6160407 (not c!1109410)) b!6160405))

(assert (= (or b!6160408 b!6160406) bm!512990))

(declare-fun m!6998480 () Bool)

(assert (=> bm!512990 m!6998480))

(declare-fun m!6998482 () Bool)

(assert (=> b!6160408 m!6998482))

(declare-fun m!6998484 () Bool)

(assert (=> b!6160409 m!6998484))

(assert (=> b!6159861 d!1930333))

(declare-fun d!1930335 () Bool)

(declare-fun c!1109411 () Bool)

(assert (=> d!1930335 (= c!1109411 (isEmpty!36455 s!2326))))

(declare-fun e!3753334 () Bool)

(assert (=> d!1930335 (= (matchZipper!2115 lt!2335743 s!2326) e!3753334)))

(declare-fun b!6160410 () Bool)

(assert (=> b!6160410 (= e!3753334 (nullableZipper!1884 lt!2335743))))

(declare-fun b!6160411 () Bool)

(assert (=> b!6160411 (= e!3753334 (matchZipper!2115 (derivationStepZipper!2076 lt!2335743 (head!12726 s!2326)) (tail!11811 s!2326)))))

(assert (= (and d!1930335 c!1109411) b!6160410))

(assert (= (and d!1930335 (not c!1109411)) b!6160411))

(assert (=> d!1930335 m!6998440))

(declare-fun m!6998486 () Bool)

(assert (=> b!6160410 m!6998486))

(assert (=> b!6160411 m!6998452))

(assert (=> b!6160411 m!6998452))

(declare-fun m!6998488 () Bool)

(assert (=> b!6160411 m!6998488))

(assert (=> b!6160411 m!6998448))

(assert (=> b!6160411 m!6998488))

(assert (=> b!6160411 m!6998448))

(declare-fun m!6998490 () Bool)

(assert (=> b!6160411 m!6998490))

(assert (=> b!6159861 d!1930335))

(declare-fun d!1930337 () Bool)

(declare-fun dynLambda!25425 (Int Context!10974) (InoxSet Context!10974))

(assert (=> d!1930337 (= (flatMap!1608 lt!2335743 lambda!336125) (dynLambda!25425 lambda!336125 lt!2335770))))

(declare-fun lt!2335835 () Unit!157603)

(declare-fun choose!45804 ((InoxSet Context!10974) Context!10974 Int) Unit!157603)

(assert (=> d!1930337 (= lt!2335835 (choose!45804 lt!2335743 lt!2335770 lambda!336125))))

(assert (=> d!1930337 (= lt!2335743 (store ((as const (Array Context!10974 Bool)) false) lt!2335770 true))))

(assert (=> d!1930337 (= (lemmaFlatMapOnSingletonSet!1134 lt!2335743 lt!2335770 lambda!336125) lt!2335835)))

(declare-fun b_lambda!234505 () Bool)

(assert (=> (not b_lambda!234505) (not d!1930337)))

(declare-fun bs!1526817 () Bool)

(assert (= bs!1526817 d!1930337))

(assert (=> bs!1526817 m!6998030))

(declare-fun m!6998492 () Bool)

(assert (=> bs!1526817 m!6998492))

(declare-fun m!6998494 () Bool)

(assert (=> bs!1526817 m!6998494))

(assert (=> bs!1526817 m!6998012))

(assert (=> b!6159861 d!1930337))

(declare-fun d!1930339 () Bool)

(assert (=> d!1930339 (= (flatMap!1608 lt!2335743 lambda!336125) (choose!45803 lt!2335743 lambda!336125))))

(declare-fun bs!1526818 () Bool)

(assert (= bs!1526818 d!1930339))

(declare-fun m!6998496 () Bool)

(assert (=> bs!1526818 m!6998496))

(assert (=> b!6159861 d!1930339))

(declare-fun b!6160412 () Bool)

(declare-fun e!3753337 () (InoxSet Context!10974))

(assert (=> b!6160412 (= e!3753337 ((as const (Array Context!10974 Bool)) false))))

(declare-fun b!6160413 () Bool)

(declare-fun call!512996 () (InoxSet Context!10974))

(assert (=> b!6160413 (= e!3753337 call!512996)))

(declare-fun bm!512991 () Bool)

(assert (=> bm!512991 (= call!512996 (derivationStepZipperDown!1351 (h!70932 (exprs!5987 lt!2335770)) (Context!10975 (t!378104 (exprs!5987 lt!2335770))) (h!70934 s!2326)))))

(declare-fun b!6160414 () Bool)

(declare-fun e!3753336 () (InoxSet Context!10974))

(assert (=> b!6160414 (= e!3753336 e!3753337)))

(declare-fun c!1109413 () Bool)

(assert (=> b!6160414 (= c!1109413 ((_ is Cons!64484) (exprs!5987 lt!2335770)))))

(declare-fun d!1930341 () Bool)

(declare-fun c!1109412 () Bool)

(declare-fun e!3753335 () Bool)

(assert (=> d!1930341 (= c!1109412 e!3753335)))

(declare-fun res!2551133 () Bool)

(assert (=> d!1930341 (=> (not res!2551133) (not e!3753335))))

(assert (=> d!1930341 (= res!2551133 ((_ is Cons!64484) (exprs!5987 lt!2335770)))))

(assert (=> d!1930341 (= (derivationStepZipperUp!1277 lt!2335770 (h!70934 s!2326)) e!3753336)))

(declare-fun b!6160415 () Bool)

(assert (=> b!6160415 (= e!3753336 ((_ map or) call!512996 (derivationStepZipperUp!1277 (Context!10975 (t!378104 (exprs!5987 lt!2335770))) (h!70934 s!2326))))))

(declare-fun b!6160416 () Bool)

(assert (=> b!6160416 (= e!3753335 (nullable!6096 (h!70932 (exprs!5987 lt!2335770))))))

(assert (= (and d!1930341 res!2551133) b!6160416))

(assert (= (and d!1930341 c!1109412) b!6160415))

(assert (= (and d!1930341 (not c!1109412)) b!6160414))

(assert (= (and b!6160414 c!1109413) b!6160413))

(assert (= (and b!6160414 (not c!1109413)) b!6160412))

(assert (= (or b!6160415 b!6160413) bm!512991))

(declare-fun m!6998498 () Bool)

(assert (=> bm!512991 m!6998498))

(declare-fun m!6998500 () Bool)

(assert (=> b!6160415 m!6998500))

(declare-fun m!6998502 () Bool)

(assert (=> b!6160416 m!6998502))

(assert (=> b!6159861 d!1930341))

(declare-fun d!1930343 () Bool)

(assert (=> d!1930343 (= (nullable!6096 (regOne!32719 (regOne!32718 r!7292))) (nullableFct!2060 (regOne!32719 (regOne!32718 r!7292))))))

(declare-fun bs!1526819 () Bool)

(assert (= bs!1526819 d!1930343))

(declare-fun m!6998504 () Bool)

(assert (=> bs!1526819 m!6998504))

(assert (=> b!6159861 d!1930343))

(declare-fun d!1930345 () Bool)

(assert (=> d!1930345 (= (flatMap!1608 lt!2335749 lambda!336125) (dynLambda!25425 lambda!336125 lt!2335742))))

(declare-fun lt!2335836 () Unit!157603)

(assert (=> d!1930345 (= lt!2335836 (choose!45804 lt!2335749 lt!2335742 lambda!336125))))

(assert (=> d!1930345 (= lt!2335749 (store ((as const (Array Context!10974 Bool)) false) lt!2335742 true))))

(assert (=> d!1930345 (= (lemmaFlatMapOnSingletonSet!1134 lt!2335749 lt!2335742 lambda!336125) lt!2335836)))

(declare-fun b_lambda!234507 () Bool)

(assert (=> (not b_lambda!234507) (not d!1930345)))

(declare-fun bs!1526820 () Bool)

(assert (= bs!1526820 d!1930345))

(assert (=> bs!1526820 m!6998016))

(declare-fun m!6998506 () Bool)

(assert (=> bs!1526820 m!6998506))

(declare-fun m!6998508 () Bool)

(assert (=> bs!1526820 m!6998508))

(assert (=> bs!1526820 m!6998010))

(assert (=> b!6159861 d!1930345))

(declare-fun d!1930347 () Bool)

(declare-fun c!1109414 () Bool)

(assert (=> d!1930347 (= c!1109414 (isEmpty!36455 s!2326))))

(declare-fun e!3753338 () Bool)

(assert (=> d!1930347 (= (matchZipper!2115 z!1189 s!2326) e!3753338)))

(declare-fun b!6160417 () Bool)

(assert (=> b!6160417 (= e!3753338 (nullableZipper!1884 z!1189))))

(declare-fun b!6160418 () Bool)

(assert (=> b!6160418 (= e!3753338 (matchZipper!2115 (derivationStepZipper!2076 z!1189 (head!12726 s!2326)) (tail!11811 s!2326)))))

(assert (= (and d!1930347 c!1109414) b!6160417))

(assert (= (and d!1930347 (not c!1109414)) b!6160418))

(assert (=> d!1930347 m!6998440))

(declare-fun m!6998510 () Bool)

(assert (=> b!6160417 m!6998510))

(assert (=> b!6160418 m!6998452))

(assert (=> b!6160418 m!6998452))

(declare-fun m!6998512 () Bool)

(assert (=> b!6160418 m!6998512))

(assert (=> b!6160418 m!6998448))

(assert (=> b!6160418 m!6998512))

(assert (=> b!6160418 m!6998448))

(declare-fun m!6998514 () Bool)

(assert (=> b!6160418 m!6998514))

(assert (=> b!6159861 d!1930347))

(declare-fun bm!513004 () Bool)

(declare-fun call!513014 () List!64608)

(declare-fun call!513011 () List!64608)

(assert (=> bm!513004 (= call!513014 call!513011)))

(declare-fun bm!513005 () Bool)

(declare-fun call!513010 () (InoxSet Context!10974))

(declare-fun call!513013 () (InoxSet Context!10974))

(assert (=> bm!513005 (= call!513010 call!513013)))

(declare-fun bm!513006 () Bool)

(declare-fun call!513012 () (InoxSet Context!10974))

(declare-fun c!1109427 () Bool)

(assert (=> bm!513006 (= call!513012 (derivationStepZipperDown!1351 (ite c!1109427 (regOne!32719 (regTwo!32719 (regOne!32718 r!7292))) (regOne!32718 (regTwo!32719 (regOne!32718 r!7292)))) (ite c!1109427 lt!2335757 (Context!10975 call!513011)) (h!70934 s!2326)))))

(declare-fun b!6160442 () Bool)

(declare-fun e!3753352 () (InoxSet Context!10974))

(assert (=> b!6160442 (= e!3753352 call!513010)))

(declare-fun bm!513007 () Bool)

(declare-fun call!513009 () (InoxSet Context!10974))

(assert (=> bm!513007 (= call!513013 call!513009)))

(declare-fun b!6160443 () Bool)

(declare-fun c!1109429 () Bool)

(assert (=> b!6160443 (= c!1109429 ((_ is Star!16103) (regTwo!32719 (regOne!32718 r!7292))))))

(declare-fun e!3753351 () (InoxSet Context!10974))

(assert (=> b!6160443 (= e!3753352 e!3753351)))

(declare-fun b!6160444 () Bool)

(declare-fun e!3753356 () (InoxSet Context!10974))

(declare-fun e!3753355 () (InoxSet Context!10974))

(assert (=> b!6160444 (= e!3753356 e!3753355)))

(assert (=> b!6160444 (= c!1109427 ((_ is Union!16103) (regTwo!32719 (regOne!32718 r!7292))))))

(declare-fun b!6160445 () Bool)

(declare-fun e!3753354 () (InoxSet Context!10974))

(assert (=> b!6160445 (= e!3753354 e!3753352)))

(declare-fun c!1109425 () Bool)

(assert (=> b!6160445 (= c!1109425 ((_ is Concat!24948) (regTwo!32719 (regOne!32718 r!7292))))))

(declare-fun b!6160446 () Bool)

(assert (=> b!6160446 (= e!3753351 call!513010)))

(declare-fun bm!513008 () Bool)

(declare-fun c!1109428 () Bool)

(declare-fun $colon$colon!1980 (List!64608 Regex!16103) List!64608)

(assert (=> bm!513008 (= call!513011 ($colon$colon!1980 (exprs!5987 lt!2335757) (ite (or c!1109428 c!1109425) (regTwo!32718 (regTwo!32719 (regOne!32718 r!7292))) (regTwo!32719 (regOne!32718 r!7292)))))))

(declare-fun b!6160447 () Bool)

(declare-fun e!3753353 () Bool)

(assert (=> b!6160447 (= c!1109428 e!3753353)))

(declare-fun res!2551136 () Bool)

(assert (=> b!6160447 (=> (not res!2551136) (not e!3753353))))

(assert (=> b!6160447 (= res!2551136 ((_ is Concat!24948) (regTwo!32719 (regOne!32718 r!7292))))))

(assert (=> b!6160447 (= e!3753355 e!3753354)))

(declare-fun b!6160448 () Bool)

(assert (=> b!6160448 (= e!3753355 ((_ map or) call!513012 call!513009))))

(declare-fun b!6160441 () Bool)

(assert (=> b!6160441 (= e!3753356 (store ((as const (Array Context!10974 Bool)) false) lt!2335757 true))))

(declare-fun d!1930349 () Bool)

(declare-fun c!1109426 () Bool)

(assert (=> d!1930349 (= c!1109426 (and ((_ is ElementMatch!16103) (regTwo!32719 (regOne!32718 r!7292))) (= (c!1109260 (regTwo!32719 (regOne!32718 r!7292))) (h!70934 s!2326))))))

(assert (=> d!1930349 (= (derivationStepZipperDown!1351 (regTwo!32719 (regOne!32718 r!7292)) lt!2335757 (h!70934 s!2326)) e!3753356)))

(declare-fun b!6160449 () Bool)

(assert (=> b!6160449 (= e!3753354 ((_ map or) call!513012 call!513013))))

(declare-fun b!6160450 () Bool)

(assert (=> b!6160450 (= e!3753353 (nullable!6096 (regOne!32718 (regTwo!32719 (regOne!32718 r!7292)))))))

(declare-fun b!6160451 () Bool)

(assert (=> b!6160451 (= e!3753351 ((as const (Array Context!10974 Bool)) false))))

(declare-fun bm!513009 () Bool)

(assert (=> bm!513009 (= call!513009 (derivationStepZipperDown!1351 (ite c!1109427 (regTwo!32719 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109428 (regTwo!32718 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109425 (regOne!32718 (regTwo!32719 (regOne!32718 r!7292))) (reg!16432 (regTwo!32719 (regOne!32718 r!7292)))))) (ite (or c!1109427 c!1109428) lt!2335757 (Context!10975 call!513014)) (h!70934 s!2326)))))

(assert (= (and d!1930349 c!1109426) b!6160441))

(assert (= (and d!1930349 (not c!1109426)) b!6160444))

(assert (= (and b!6160444 c!1109427) b!6160448))

(assert (= (and b!6160444 (not c!1109427)) b!6160447))

(assert (= (and b!6160447 res!2551136) b!6160450))

(assert (= (and b!6160447 c!1109428) b!6160449))

(assert (= (and b!6160447 (not c!1109428)) b!6160445))

(assert (= (and b!6160445 c!1109425) b!6160442))

(assert (= (and b!6160445 (not c!1109425)) b!6160443))

(assert (= (and b!6160443 c!1109429) b!6160446))

(assert (= (and b!6160443 (not c!1109429)) b!6160451))

(assert (= (or b!6160442 b!6160446) bm!513004))

(assert (= (or b!6160442 b!6160446) bm!513005))

(assert (= (or b!6160449 bm!513004) bm!513008))

(assert (= (or b!6160449 bm!513005) bm!513007))

(assert (= (or b!6160448 bm!513007) bm!513009))

(assert (= (or b!6160448 b!6160449) bm!513006))

(declare-fun m!6998516 () Bool)

(assert (=> bm!513008 m!6998516))

(declare-fun m!6998518 () Bool)

(assert (=> bm!513009 m!6998518))

(declare-fun m!6998520 () Bool)

(assert (=> bm!513006 m!6998520))

(declare-fun m!6998522 () Bool)

(assert (=> b!6160441 m!6998522))

(declare-fun m!6998524 () Bool)

(assert (=> b!6160450 m!6998524))

(assert (=> b!6159862 d!1930349))

(declare-fun bm!513010 () Bool)

(declare-fun call!513020 () List!64608)

(declare-fun call!513017 () List!64608)

(assert (=> bm!513010 (= call!513020 call!513017)))

(declare-fun bm!513011 () Bool)

(declare-fun call!513016 () (InoxSet Context!10974))

(declare-fun call!513019 () (InoxSet Context!10974))

(assert (=> bm!513011 (= call!513016 call!513019)))

(declare-fun c!1109432 () Bool)

(declare-fun call!513018 () (InoxSet Context!10974))

(declare-fun bm!513012 () Bool)

(assert (=> bm!513012 (= call!513018 (derivationStepZipperDown!1351 (ite c!1109432 (regOne!32719 (regOne!32719 (regOne!32718 r!7292))) (regOne!32718 (regOne!32719 (regOne!32718 r!7292)))) (ite c!1109432 lt!2335757 (Context!10975 call!513017)) (h!70934 s!2326)))))

(declare-fun b!6160453 () Bool)

(declare-fun e!3753358 () (InoxSet Context!10974))

(assert (=> b!6160453 (= e!3753358 call!513016)))

(declare-fun bm!513013 () Bool)

(declare-fun call!513015 () (InoxSet Context!10974))

(assert (=> bm!513013 (= call!513019 call!513015)))

(declare-fun b!6160454 () Bool)

(declare-fun c!1109434 () Bool)

(assert (=> b!6160454 (= c!1109434 ((_ is Star!16103) (regOne!32719 (regOne!32718 r!7292))))))

(declare-fun e!3753357 () (InoxSet Context!10974))

(assert (=> b!6160454 (= e!3753358 e!3753357)))

(declare-fun b!6160455 () Bool)

(declare-fun e!3753362 () (InoxSet Context!10974))

(declare-fun e!3753361 () (InoxSet Context!10974))

(assert (=> b!6160455 (= e!3753362 e!3753361)))

(assert (=> b!6160455 (= c!1109432 ((_ is Union!16103) (regOne!32719 (regOne!32718 r!7292))))))

(declare-fun b!6160456 () Bool)

(declare-fun e!3753360 () (InoxSet Context!10974))

(assert (=> b!6160456 (= e!3753360 e!3753358)))

(declare-fun c!1109430 () Bool)

(assert (=> b!6160456 (= c!1109430 ((_ is Concat!24948) (regOne!32719 (regOne!32718 r!7292))))))

(declare-fun b!6160457 () Bool)

(assert (=> b!6160457 (= e!3753357 call!513016)))

(declare-fun bm!513014 () Bool)

(declare-fun c!1109433 () Bool)

(assert (=> bm!513014 (= call!513017 ($colon$colon!1980 (exprs!5987 lt!2335757) (ite (or c!1109433 c!1109430) (regTwo!32718 (regOne!32719 (regOne!32718 r!7292))) (regOne!32719 (regOne!32718 r!7292)))))))

(declare-fun b!6160458 () Bool)

(declare-fun e!3753359 () Bool)

(assert (=> b!6160458 (= c!1109433 e!3753359)))

(declare-fun res!2551137 () Bool)

(assert (=> b!6160458 (=> (not res!2551137) (not e!3753359))))

(assert (=> b!6160458 (= res!2551137 ((_ is Concat!24948) (regOne!32719 (regOne!32718 r!7292))))))

(assert (=> b!6160458 (= e!3753361 e!3753360)))

(declare-fun b!6160459 () Bool)

(assert (=> b!6160459 (= e!3753361 ((_ map or) call!513018 call!513015))))

(declare-fun b!6160452 () Bool)

(assert (=> b!6160452 (= e!3753362 (store ((as const (Array Context!10974 Bool)) false) lt!2335757 true))))

(declare-fun d!1930351 () Bool)

(declare-fun c!1109431 () Bool)

(assert (=> d!1930351 (= c!1109431 (and ((_ is ElementMatch!16103) (regOne!32719 (regOne!32718 r!7292))) (= (c!1109260 (regOne!32719 (regOne!32718 r!7292))) (h!70934 s!2326))))))

(assert (=> d!1930351 (= (derivationStepZipperDown!1351 (regOne!32719 (regOne!32718 r!7292)) lt!2335757 (h!70934 s!2326)) e!3753362)))

(declare-fun b!6160460 () Bool)

(assert (=> b!6160460 (= e!3753360 ((_ map or) call!513018 call!513019))))

(declare-fun b!6160461 () Bool)

(assert (=> b!6160461 (= e!3753359 (nullable!6096 (regOne!32718 (regOne!32719 (regOne!32718 r!7292)))))))

(declare-fun b!6160462 () Bool)

(assert (=> b!6160462 (= e!3753357 ((as const (Array Context!10974 Bool)) false))))

(declare-fun bm!513015 () Bool)

(assert (=> bm!513015 (= call!513015 (derivationStepZipperDown!1351 (ite c!1109432 (regTwo!32719 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109433 (regTwo!32718 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109430 (regOne!32718 (regOne!32719 (regOne!32718 r!7292))) (reg!16432 (regOne!32719 (regOne!32718 r!7292)))))) (ite (or c!1109432 c!1109433) lt!2335757 (Context!10975 call!513020)) (h!70934 s!2326)))))

(assert (= (and d!1930351 c!1109431) b!6160452))

(assert (= (and d!1930351 (not c!1109431)) b!6160455))

(assert (= (and b!6160455 c!1109432) b!6160459))

(assert (= (and b!6160455 (not c!1109432)) b!6160458))

(assert (= (and b!6160458 res!2551137) b!6160461))

(assert (= (and b!6160458 c!1109433) b!6160460))

(assert (= (and b!6160458 (not c!1109433)) b!6160456))

(assert (= (and b!6160456 c!1109430) b!6160453))

(assert (= (and b!6160456 (not c!1109430)) b!6160454))

(assert (= (and b!6160454 c!1109434) b!6160457))

(assert (= (and b!6160454 (not c!1109434)) b!6160462))

(assert (= (or b!6160453 b!6160457) bm!513010))

(assert (= (or b!6160453 b!6160457) bm!513011))

(assert (= (or b!6160460 bm!513010) bm!513014))

(assert (= (or b!6160460 bm!513011) bm!513013))

(assert (= (or b!6160459 bm!513013) bm!513015))

(assert (= (or b!6160459 b!6160460) bm!513012))

(declare-fun m!6998526 () Bool)

(assert (=> bm!513014 m!6998526))

(declare-fun m!6998528 () Bool)

(assert (=> bm!513015 m!6998528))

(declare-fun m!6998530 () Bool)

(assert (=> bm!513012 m!6998530))

(assert (=> b!6160452 m!6998522))

(declare-fun m!6998532 () Bool)

(assert (=> b!6160461 m!6998532))

(assert (=> b!6159862 d!1930351))

(declare-fun b!6160483 () Bool)

(declare-fun e!3753376 () Regex!16103)

(assert (=> b!6160483 (= e!3753376 (Union!16103 (h!70932 (unfocusZipperList!1524 zl!343)) (generalisedUnion!1947 (t!378104 (unfocusZipperList!1524 zl!343)))))))

(declare-fun b!6160484 () Bool)

(declare-fun e!3753377 () Regex!16103)

(assert (=> b!6160484 (= e!3753377 e!3753376)))

(declare-fun c!1109444 () Bool)

(assert (=> b!6160484 (= c!1109444 ((_ is Cons!64484) (unfocusZipperList!1524 zl!343)))))

(declare-fun b!6160485 () Bool)

(declare-fun e!3753375 () Bool)

(declare-fun e!3753378 () Bool)

(assert (=> b!6160485 (= e!3753375 e!3753378)))

(declare-fun c!1109446 () Bool)

(assert (=> b!6160485 (= c!1109446 (isEmpty!36453 (unfocusZipperList!1524 zl!343)))))

(declare-fun d!1930353 () Bool)

(assert (=> d!1930353 e!3753375))

(declare-fun res!2551142 () Bool)

(assert (=> d!1930353 (=> (not res!2551142) (not e!3753375))))

(declare-fun lt!2335839 () Regex!16103)

(assert (=> d!1930353 (= res!2551142 (validRegex!7839 lt!2335839))))

(assert (=> d!1930353 (= lt!2335839 e!3753377)))

(declare-fun c!1109443 () Bool)

(declare-fun e!3753379 () Bool)

(assert (=> d!1930353 (= c!1109443 e!3753379)))

(declare-fun res!2551143 () Bool)

(assert (=> d!1930353 (=> (not res!2551143) (not e!3753379))))

(assert (=> d!1930353 (= res!2551143 ((_ is Cons!64484) (unfocusZipperList!1524 zl!343)))))

(declare-fun lambda!336163 () Int)

(declare-fun forall!15224 (List!64608 Int) Bool)

(assert (=> d!1930353 (forall!15224 (unfocusZipperList!1524 zl!343) lambda!336163)))

(assert (=> d!1930353 (= (generalisedUnion!1947 (unfocusZipperList!1524 zl!343)) lt!2335839)))

(declare-fun b!6160486 () Bool)

(declare-fun e!3753380 () Bool)

(assert (=> b!6160486 (= e!3753378 e!3753380)))

(declare-fun c!1109445 () Bool)

(declare-fun tail!11813 (List!64608) List!64608)

(assert (=> b!6160486 (= c!1109445 (isEmpty!36453 (tail!11813 (unfocusZipperList!1524 zl!343))))))

(declare-fun b!6160487 () Bool)

(declare-fun head!12728 (List!64608) Regex!16103)

(assert (=> b!6160487 (= e!3753380 (= lt!2335839 (head!12728 (unfocusZipperList!1524 zl!343))))))

(declare-fun b!6160488 () Bool)

(declare-fun isUnion!960 (Regex!16103) Bool)

(assert (=> b!6160488 (= e!3753380 (isUnion!960 lt!2335839))))

(declare-fun b!6160489 () Bool)

(assert (=> b!6160489 (= e!3753379 (isEmpty!36453 (t!378104 (unfocusZipperList!1524 zl!343))))))

(declare-fun b!6160490 () Bool)

(declare-fun isEmptyLang!1530 (Regex!16103) Bool)

(assert (=> b!6160490 (= e!3753378 (isEmptyLang!1530 lt!2335839))))

(declare-fun b!6160491 () Bool)

(assert (=> b!6160491 (= e!3753377 (h!70932 (unfocusZipperList!1524 zl!343)))))

(declare-fun b!6160492 () Bool)

(assert (=> b!6160492 (= e!3753376 EmptyLang!16103)))

(assert (= (and d!1930353 res!2551143) b!6160489))

(assert (= (and d!1930353 c!1109443) b!6160491))

(assert (= (and d!1930353 (not c!1109443)) b!6160484))

(assert (= (and b!6160484 c!1109444) b!6160483))

(assert (= (and b!6160484 (not c!1109444)) b!6160492))

(assert (= (and d!1930353 res!2551142) b!6160485))

(assert (= (and b!6160485 c!1109446) b!6160490))

(assert (= (and b!6160485 (not c!1109446)) b!6160486))

(assert (= (and b!6160486 c!1109445) b!6160487))

(assert (= (and b!6160486 (not c!1109445)) b!6160488))

(declare-fun m!6998534 () Bool)

(assert (=> d!1930353 m!6998534))

(assert (=> d!1930353 m!6998100))

(declare-fun m!6998536 () Bool)

(assert (=> d!1930353 m!6998536))

(declare-fun m!6998538 () Bool)

(assert (=> b!6160489 m!6998538))

(declare-fun m!6998540 () Bool)

(assert (=> b!6160490 m!6998540))

(declare-fun m!6998542 () Bool)

(assert (=> b!6160488 m!6998542))

(declare-fun m!6998544 () Bool)

(assert (=> b!6160483 m!6998544))

(assert (=> b!6160486 m!6998100))

(declare-fun m!6998546 () Bool)

(assert (=> b!6160486 m!6998546))

(assert (=> b!6160486 m!6998546))

(declare-fun m!6998548 () Bool)

(assert (=> b!6160486 m!6998548))

(assert (=> b!6160487 m!6998100))

(declare-fun m!6998550 () Bool)

(assert (=> b!6160487 m!6998550))

(assert (=> b!6160485 m!6998100))

(declare-fun m!6998552 () Bool)

(assert (=> b!6160485 m!6998552))

(assert (=> b!6159880 d!1930353))

(declare-fun bs!1526821 () Bool)

(declare-fun d!1930355 () Bool)

(assert (= bs!1526821 (and d!1930355 d!1930353)))

(declare-fun lambda!336166 () Int)

(assert (=> bs!1526821 (= lambda!336166 lambda!336163)))

(declare-fun lt!2335842 () List!64608)

(assert (=> d!1930355 (forall!15224 lt!2335842 lambda!336166)))

(declare-fun e!3753383 () List!64608)

(assert (=> d!1930355 (= lt!2335842 e!3753383)))

(declare-fun c!1109449 () Bool)

(assert (=> d!1930355 (= c!1109449 ((_ is Cons!64485) zl!343))))

(assert (=> d!1930355 (= (unfocusZipperList!1524 zl!343) lt!2335842)))

(declare-fun b!6160497 () Bool)

(assert (=> b!6160497 (= e!3753383 (Cons!64484 (generalisedConcat!1700 (exprs!5987 (h!70933 zl!343))) (unfocusZipperList!1524 (t!378105 zl!343))))))

(declare-fun b!6160498 () Bool)

(assert (=> b!6160498 (= e!3753383 Nil!64484)))

(assert (= (and d!1930355 c!1109449) b!6160497))

(assert (= (and d!1930355 (not c!1109449)) b!6160498))

(declare-fun m!6998554 () Bool)

(assert (=> d!1930355 m!6998554))

(assert (=> b!6160497 m!6998082))

(declare-fun m!6998556 () Bool)

(assert (=> b!6160497 m!6998556))

(assert (=> b!6159880 d!1930355))

(declare-fun bs!1526822 () Bool)

(declare-fun d!1930357 () Bool)

(assert (= bs!1526822 (and d!1930357 d!1930353)))

(declare-fun lambda!336169 () Int)

(assert (=> bs!1526822 (= lambda!336169 lambda!336163)))

(declare-fun bs!1526823 () Bool)

(assert (= bs!1526823 (and d!1930357 d!1930355)))

(assert (=> bs!1526823 (= lambda!336169 lambda!336166)))

(assert (=> d!1930357 (= (inv!83504 setElem!41742) (forall!15224 (exprs!5987 setElem!41742) lambda!336169))))

(declare-fun bs!1526824 () Bool)

(assert (= bs!1526824 d!1930357))

(declare-fun m!6998558 () Bool)

(assert (=> bs!1526824 m!6998558))

(assert (=> setNonEmpty!41742 d!1930357))

(declare-fun b!6160517 () Bool)

(declare-fun e!3753404 () Bool)

(declare-fun call!513027 () Bool)

(assert (=> b!6160517 (= e!3753404 call!513027)))

(declare-fun bm!513022 () Bool)

(declare-fun c!1109455 () Bool)

(assert (=> bm!513022 (= call!513027 (validRegex!7839 (ite c!1109455 (regTwo!32719 r!7292) (regTwo!32718 r!7292))))))

(declare-fun b!6160518 () Bool)

(declare-fun e!3753403 () Bool)

(declare-fun call!513029 () Bool)

(assert (=> b!6160518 (= e!3753403 call!513029)))

(declare-fun c!1109454 () Bool)

(declare-fun bm!513023 () Bool)

(assert (=> bm!513023 (= call!513029 (validRegex!7839 (ite c!1109454 (reg!16432 r!7292) (ite c!1109455 (regOne!32719 r!7292) (regOne!32718 r!7292)))))))

(declare-fun b!6160519 () Bool)

(declare-fun res!2551154 () Bool)

(assert (=> b!6160519 (=> (not res!2551154) (not e!3753404))))

(declare-fun call!513028 () Bool)

(assert (=> b!6160519 (= res!2551154 call!513028)))

(declare-fun e!3753398 () Bool)

(assert (=> b!6160519 (= e!3753398 e!3753404)))

(declare-fun b!6160520 () Bool)

(declare-fun e!3753400 () Bool)

(assert (=> b!6160520 (= e!3753400 e!3753398)))

(assert (=> b!6160520 (= c!1109455 ((_ is Union!16103) r!7292))))

(declare-fun b!6160521 () Bool)

(declare-fun e!3753399 () Bool)

(declare-fun e!3753401 () Bool)

(assert (=> b!6160521 (= e!3753399 e!3753401)))

(declare-fun res!2551155 () Bool)

(assert (=> b!6160521 (=> (not res!2551155) (not e!3753401))))

(assert (=> b!6160521 (= res!2551155 call!513028)))

(declare-fun bm!513024 () Bool)

(assert (=> bm!513024 (= call!513028 call!513029)))

(declare-fun b!6160523 () Bool)

(declare-fun e!3753402 () Bool)

(assert (=> b!6160523 (= e!3753402 e!3753400)))

(assert (=> b!6160523 (= c!1109454 ((_ is Star!16103) r!7292))))

(declare-fun b!6160522 () Bool)

(declare-fun res!2551157 () Bool)

(assert (=> b!6160522 (=> res!2551157 e!3753399)))

(assert (=> b!6160522 (= res!2551157 (not ((_ is Concat!24948) r!7292)))))

(assert (=> b!6160522 (= e!3753398 e!3753399)))

(declare-fun d!1930359 () Bool)

(declare-fun res!2551158 () Bool)

(assert (=> d!1930359 (=> res!2551158 e!3753402)))

(assert (=> d!1930359 (= res!2551158 ((_ is ElementMatch!16103) r!7292))))

(assert (=> d!1930359 (= (validRegex!7839 r!7292) e!3753402)))

(declare-fun b!6160524 () Bool)

(assert (=> b!6160524 (= e!3753400 e!3753403)))

(declare-fun res!2551156 () Bool)

(assert (=> b!6160524 (= res!2551156 (not (nullable!6096 (reg!16432 r!7292))))))

(assert (=> b!6160524 (=> (not res!2551156) (not e!3753403))))

(declare-fun b!6160525 () Bool)

(assert (=> b!6160525 (= e!3753401 call!513027)))

(assert (= (and d!1930359 (not res!2551158)) b!6160523))

(assert (= (and b!6160523 c!1109454) b!6160524))

(assert (= (and b!6160523 (not c!1109454)) b!6160520))

(assert (= (and b!6160524 res!2551156) b!6160518))

(assert (= (and b!6160520 c!1109455) b!6160519))

(assert (= (and b!6160520 (not c!1109455)) b!6160522))

(assert (= (and b!6160519 res!2551154) b!6160517))

(assert (= (and b!6160522 (not res!2551157)) b!6160521))

(assert (= (and b!6160521 res!2551155) b!6160525))

(assert (= (or b!6160517 b!6160525) bm!513022))

(assert (= (or b!6160519 b!6160521) bm!513024))

(assert (= (or b!6160518 bm!513024) bm!513023))

(declare-fun m!6998560 () Bool)

(assert (=> bm!513022 m!6998560))

(declare-fun m!6998562 () Bool)

(assert (=> bm!513023 m!6998562))

(declare-fun m!6998564 () Bool)

(assert (=> b!6160524 m!6998564))

(assert (=> start!615282 d!1930359))

(declare-fun bs!1526825 () Bool)

(declare-fun d!1930361 () Bool)

(assert (= bs!1526825 (and d!1930361 d!1930353)))

(declare-fun lambda!336170 () Int)

(assert (=> bs!1526825 (= lambda!336170 lambda!336163)))

(declare-fun bs!1526826 () Bool)

(assert (= bs!1526826 (and d!1930361 d!1930355)))

(assert (=> bs!1526826 (= lambda!336170 lambda!336166)))

(declare-fun bs!1526827 () Bool)

(assert (= bs!1526827 (and d!1930361 d!1930357)))

(assert (=> bs!1526827 (= lambda!336170 lambda!336169)))

(assert (=> d!1930361 (= (inv!83504 lt!2335742) (forall!15224 (exprs!5987 lt!2335742) lambda!336170))))

(declare-fun bs!1526828 () Bool)

(assert (= bs!1526828 d!1930361))

(declare-fun m!6998566 () Bool)

(assert (=> bs!1526828 m!6998566))

(assert (=> b!6159858 d!1930361))

(declare-fun d!1930363 () Bool)

(declare-fun c!1109456 () Bool)

(assert (=> d!1930363 (= c!1109456 (isEmpty!36455 s!2326))))

(declare-fun e!3753405 () Bool)

(assert (=> d!1930363 (= (matchZipper!2115 lt!2335749 s!2326) e!3753405)))

(declare-fun b!6160526 () Bool)

(assert (=> b!6160526 (= e!3753405 (nullableZipper!1884 lt!2335749))))

(declare-fun b!6160527 () Bool)

(assert (=> b!6160527 (= e!3753405 (matchZipper!2115 (derivationStepZipper!2076 lt!2335749 (head!12726 s!2326)) (tail!11811 s!2326)))))

(assert (= (and d!1930363 c!1109456) b!6160526))

(assert (= (and d!1930363 (not c!1109456)) b!6160527))

(assert (=> d!1930363 m!6998440))

(declare-fun m!6998568 () Bool)

(assert (=> b!6160526 m!6998568))

(assert (=> b!6160527 m!6998452))

(assert (=> b!6160527 m!6998452))

(declare-fun m!6998570 () Bool)

(assert (=> b!6160527 m!6998570))

(assert (=> b!6160527 m!6998448))

(assert (=> b!6160527 m!6998570))

(assert (=> b!6160527 m!6998448))

(declare-fun m!6998572 () Bool)

(assert (=> b!6160527 m!6998572))

(assert (=> b!6159879 d!1930363))

(declare-fun d!1930365 () Bool)

(declare-fun c!1109457 () Bool)

(assert (=> d!1930365 (= c!1109457 (isEmpty!36455 (t!378106 s!2326)))))

(declare-fun e!3753406 () Bool)

(assert (=> d!1930365 (= (matchZipper!2115 lt!2335744 (t!378106 s!2326)) e!3753406)))

(declare-fun b!6160528 () Bool)

(assert (=> b!6160528 (= e!3753406 (nullableZipper!1884 lt!2335744))))

(declare-fun b!6160529 () Bool)

(assert (=> b!6160529 (= e!3753406 (matchZipper!2115 (derivationStepZipper!2076 lt!2335744 (head!12726 (t!378106 s!2326))) (tail!11811 (t!378106 s!2326))))))

(assert (= (and d!1930365 c!1109457) b!6160528))

(assert (= (and d!1930365 (not c!1109457)) b!6160529))

(assert (=> d!1930365 m!6998386))

(declare-fun m!6998574 () Bool)

(assert (=> b!6160528 m!6998574))

(assert (=> b!6160529 m!6998390))

(assert (=> b!6160529 m!6998390))

(declare-fun m!6998576 () Bool)

(assert (=> b!6160529 m!6998576))

(assert (=> b!6160529 m!6998394))

(assert (=> b!6160529 m!6998576))

(assert (=> b!6160529 m!6998394))

(declare-fun m!6998578 () Bool)

(assert (=> b!6160529 m!6998578))

(assert (=> b!6159877 d!1930365))

(assert (=> b!6159857 d!1930365))

(assert (=> b!6159878 d!1930325))

(declare-fun d!1930367 () Bool)

(declare-fun c!1109458 () Bool)

(assert (=> d!1930367 (= c!1109458 (isEmpty!36455 (t!378106 s!2326)))))

(declare-fun e!3753407 () Bool)

(assert (=> d!1930367 (= (matchZipper!2115 lt!2335748 (t!378106 s!2326)) e!3753407)))

(declare-fun b!6160530 () Bool)

(assert (=> b!6160530 (= e!3753407 (nullableZipper!1884 lt!2335748))))

(declare-fun b!6160531 () Bool)

(assert (=> b!6160531 (= e!3753407 (matchZipper!2115 (derivationStepZipper!2076 lt!2335748 (head!12726 (t!378106 s!2326))) (tail!11811 (t!378106 s!2326))))))

(assert (= (and d!1930367 c!1109458) b!6160530))

(assert (= (and d!1930367 (not c!1109458)) b!6160531))

(assert (=> d!1930367 m!6998386))

(declare-fun m!6998580 () Bool)

(assert (=> b!6160530 m!6998580))

(assert (=> b!6160531 m!6998390))

(assert (=> b!6160531 m!6998390))

(declare-fun m!6998582 () Bool)

(assert (=> b!6160531 m!6998582))

(assert (=> b!6160531 m!6998394))

(assert (=> b!6160531 m!6998582))

(assert (=> b!6160531 m!6998394))

(declare-fun m!6998584 () Bool)

(assert (=> b!6160531 m!6998584))

(assert (=> b!6159878 d!1930367))

(declare-fun d!1930369 () Bool)

(declare-fun c!1109459 () Bool)

(assert (=> d!1930369 (= c!1109459 (isEmpty!36455 (t!378106 s!2326)))))

(declare-fun e!3753408 () Bool)

(assert (=> d!1930369 (= (matchZipper!2115 lt!2335761 (t!378106 s!2326)) e!3753408)))

(declare-fun b!6160532 () Bool)

(assert (=> b!6160532 (= e!3753408 (nullableZipper!1884 lt!2335761))))

(declare-fun b!6160533 () Bool)

(assert (=> b!6160533 (= e!3753408 (matchZipper!2115 (derivationStepZipper!2076 lt!2335761 (head!12726 (t!378106 s!2326))) (tail!11811 (t!378106 s!2326))))))

(assert (= (and d!1930369 c!1109459) b!6160532))

(assert (= (and d!1930369 (not c!1109459)) b!6160533))

(assert (=> d!1930369 m!6998386))

(declare-fun m!6998586 () Bool)

(assert (=> b!6160532 m!6998586))

(assert (=> b!6160533 m!6998390))

(assert (=> b!6160533 m!6998390))

(declare-fun m!6998588 () Bool)

(assert (=> b!6160533 m!6998588))

(assert (=> b!6160533 m!6998394))

(assert (=> b!6160533 m!6998588))

(assert (=> b!6160533 m!6998394))

(declare-fun m!6998590 () Bool)

(assert (=> b!6160533 m!6998590))

(assert (=> b!6159878 d!1930369))

(declare-fun d!1930371 () Bool)

(declare-fun e!3753409 () Bool)

(assert (=> d!1930371 (= (matchZipper!2115 ((_ map or) lt!2335761 lt!2335767) (t!378106 s!2326)) e!3753409)))

(declare-fun res!2551159 () Bool)

(assert (=> d!1930371 (=> res!2551159 e!3753409)))

(assert (=> d!1930371 (= res!2551159 (matchZipper!2115 lt!2335761 (t!378106 s!2326)))))

(declare-fun lt!2335843 () Unit!157603)

(assert (=> d!1930371 (= lt!2335843 (choose!45800 lt!2335761 lt!2335767 (t!378106 s!2326)))))

(assert (=> d!1930371 (= (lemmaZipperConcatMatchesSameAsBothZippers!934 lt!2335761 lt!2335767 (t!378106 s!2326)) lt!2335843)))

(declare-fun b!6160534 () Bool)

(assert (=> b!6160534 (= e!3753409 (matchZipper!2115 lt!2335767 (t!378106 s!2326)))))

(assert (= (and d!1930371 (not res!2551159)) b!6160534))

(declare-fun m!6998592 () Bool)

(assert (=> d!1930371 m!6998592))

(assert (=> d!1930371 m!6998036))

(declare-fun m!6998594 () Bool)

(assert (=> d!1930371 m!6998594))

(assert (=> b!6160534 m!6998044))

(assert (=> b!6159878 d!1930371))

(declare-fun d!1930373 () Bool)

(assert (=> d!1930373 (= (isEmpty!36452 (t!378105 zl!343)) ((_ is Nil!64485) (t!378105 zl!343)))))

(assert (=> b!6159854 d!1930373))

(assert (=> b!6159875 d!1930365))

(assert (=> b!6159855 d!1930297))

(assert (=> b!6159873 d!1930297))

(declare-fun d!1930375 () Bool)

(declare-fun lt!2335846 () Regex!16103)

(assert (=> d!1930375 (validRegex!7839 lt!2335846)))

(assert (=> d!1930375 (= lt!2335846 (generalisedUnion!1947 (unfocusZipperList!1524 zl!343)))))

(assert (=> d!1930375 (= (unfocusZipper!1845 zl!343) lt!2335846)))

(declare-fun bs!1526829 () Bool)

(assert (= bs!1526829 d!1930375))

(declare-fun m!6998596 () Bool)

(assert (=> bs!1526829 m!6998596))

(assert (=> bs!1526829 m!6998100))

(assert (=> bs!1526829 m!6998100))

(assert (=> bs!1526829 m!6998102))

(assert (=> b!6159852 d!1930375))

(declare-fun d!1930377 () Bool)

(declare-fun choose!45805 (Int) Bool)

(assert (=> d!1930377 (= (Exists!3173 lambda!336123) (choose!45805 lambda!336123))))

(declare-fun bs!1526830 () Bool)

(assert (= bs!1526830 d!1930377))

(declare-fun m!6998598 () Bool)

(assert (=> bs!1526830 m!6998598))

(assert (=> b!6159849 d!1930377))

(declare-fun d!1930379 () Bool)

(declare-fun e!3753424 () Bool)

(assert (=> d!1930379 e!3753424))

(declare-fun res!2551174 () Bool)

(assert (=> d!1930379 (=> res!2551174 e!3753424)))

(declare-fun e!3753421 () Bool)

(assert (=> d!1930379 (= res!2551174 e!3753421)))

(declare-fun res!2551171 () Bool)

(assert (=> d!1930379 (=> (not res!2551171) (not e!3753421))))

(declare-fun lt!2335853 () Option!15994)

(assert (=> d!1930379 (= res!2551171 (isDefined!12697 lt!2335853))))

(declare-fun e!3753423 () Option!15994)

(assert (=> d!1930379 (= lt!2335853 e!3753423)))

(declare-fun c!1109465 () Bool)

(declare-fun e!3753422 () Bool)

(assert (=> d!1930379 (= c!1109465 e!3753422)))

(declare-fun res!2551172 () Bool)

(assert (=> d!1930379 (=> (not res!2551172) (not e!3753422))))

(assert (=> d!1930379 (= res!2551172 (matchR!8286 (regOne!32718 r!7292) Nil!64486))))

(assert (=> d!1930379 (validRegex!7839 (regOne!32718 r!7292))))

(assert (=> d!1930379 (= (findConcatSeparation!2408 (regOne!32718 r!7292) (regTwo!32718 r!7292) Nil!64486 s!2326 s!2326) lt!2335853)))

(declare-fun b!6160553 () Bool)

(declare-fun res!2551173 () Bool)

(assert (=> b!6160553 (=> (not res!2551173) (not e!3753421))))

(declare-fun get!22256 (Option!15994) tuple2!66164)

(assert (=> b!6160553 (= res!2551173 (matchR!8286 (regTwo!32718 r!7292) (_2!36385 (get!22256 lt!2335853))))))

(declare-fun b!6160554 () Bool)

(declare-fun e!3753420 () Option!15994)

(assert (=> b!6160554 (= e!3753423 e!3753420)))

(declare-fun c!1109464 () Bool)

(assert (=> b!6160554 (= c!1109464 ((_ is Nil!64486) s!2326))))

(declare-fun b!6160555 () Bool)

(assert (=> b!6160555 (= e!3753424 (not (isDefined!12697 lt!2335853)))))

(declare-fun b!6160556 () Bool)

(assert (=> b!6160556 (= e!3753423 (Some!15993 (tuple2!66165 Nil!64486 s!2326)))))

(declare-fun b!6160557 () Bool)

(declare-fun res!2551170 () Bool)

(assert (=> b!6160557 (=> (not res!2551170) (not e!3753421))))

(assert (=> b!6160557 (= res!2551170 (matchR!8286 (regOne!32718 r!7292) (_1!36385 (get!22256 lt!2335853))))))

(declare-fun b!6160558 () Bool)

(assert (=> b!6160558 (= e!3753422 (matchR!8286 (regTwo!32718 r!7292) s!2326))))

(declare-fun b!6160559 () Bool)

(declare-fun lt!2335855 () Unit!157603)

(declare-fun lt!2335854 () Unit!157603)

(assert (=> b!6160559 (= lt!2335855 lt!2335854)))

(declare-fun ++!14189 (List!64610 List!64610) List!64610)

(assert (=> b!6160559 (= (++!14189 (++!14189 Nil!64486 (Cons!64486 (h!70934 s!2326) Nil!64486)) (t!378106 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2284 (List!64610 C!32476 List!64610 List!64610) Unit!157603)

(assert (=> b!6160559 (= lt!2335854 (lemmaMoveElementToOtherListKeepsConcatEq!2284 Nil!64486 (h!70934 s!2326) (t!378106 s!2326) s!2326))))

(assert (=> b!6160559 (= e!3753420 (findConcatSeparation!2408 (regOne!32718 r!7292) (regTwo!32718 r!7292) (++!14189 Nil!64486 (Cons!64486 (h!70934 s!2326) Nil!64486)) (t!378106 s!2326) s!2326))))

(declare-fun b!6160560 () Bool)

(assert (=> b!6160560 (= e!3753420 None!15993)))

(declare-fun b!6160561 () Bool)

(assert (=> b!6160561 (= e!3753421 (= (++!14189 (_1!36385 (get!22256 lt!2335853)) (_2!36385 (get!22256 lt!2335853))) s!2326))))

(assert (= (and d!1930379 res!2551172) b!6160558))

(assert (= (and d!1930379 c!1109465) b!6160556))

(assert (= (and d!1930379 (not c!1109465)) b!6160554))

(assert (= (and b!6160554 c!1109464) b!6160560))

(assert (= (and b!6160554 (not c!1109464)) b!6160559))

(assert (= (and d!1930379 res!2551171) b!6160557))

(assert (= (and b!6160557 res!2551170) b!6160553))

(assert (= (and b!6160553 res!2551173) b!6160561))

(assert (= (and d!1930379 (not res!2551174)) b!6160555))

(declare-fun m!6998600 () Bool)

(assert (=> b!6160559 m!6998600))

(assert (=> b!6160559 m!6998600))

(declare-fun m!6998602 () Bool)

(assert (=> b!6160559 m!6998602))

(declare-fun m!6998604 () Bool)

(assert (=> b!6160559 m!6998604))

(assert (=> b!6160559 m!6998600))

(declare-fun m!6998606 () Bool)

(assert (=> b!6160559 m!6998606))

(declare-fun m!6998608 () Bool)

(assert (=> b!6160557 m!6998608))

(declare-fun m!6998610 () Bool)

(assert (=> b!6160557 m!6998610))

(assert (=> b!6160553 m!6998608))

(declare-fun m!6998612 () Bool)

(assert (=> b!6160553 m!6998612))

(declare-fun m!6998614 () Bool)

(assert (=> b!6160555 m!6998614))

(assert (=> d!1930379 m!6998614))

(declare-fun m!6998616 () Bool)

(assert (=> d!1930379 m!6998616))

(declare-fun m!6998618 () Bool)

(assert (=> d!1930379 m!6998618))

(declare-fun m!6998620 () Bool)

(assert (=> b!6160558 m!6998620))

(assert (=> b!6160561 m!6998608))

(declare-fun m!6998622 () Bool)

(assert (=> b!6160561 m!6998622))

(assert (=> b!6159849 d!1930379))

(declare-fun bs!1526831 () Bool)

(declare-fun d!1930381 () Bool)

(assert (= bs!1526831 (and d!1930381 b!6159849)))

(declare-fun lambda!336173 () Int)

(assert (=> bs!1526831 (= lambda!336173 lambda!336123)))

(assert (=> bs!1526831 (not (= lambda!336173 lambda!336124))))

(declare-fun bs!1526832 () Bool)

(assert (= bs!1526832 (and d!1930381 b!6160339)))

(assert (=> bs!1526832 (not (= lambda!336173 lambda!336159))))

(declare-fun bs!1526833 () Bool)

(assert (= bs!1526833 (and d!1930381 b!6160346)))

(assert (=> bs!1526833 (not (= lambda!336173 lambda!336160))))

(assert (=> d!1930381 true))

(assert (=> d!1930381 true))

(assert (=> d!1930381 true))

(assert (=> d!1930381 (= (isDefined!12697 (findConcatSeparation!2408 (regOne!32718 r!7292) (regTwo!32718 r!7292) Nil!64486 s!2326 s!2326)) (Exists!3173 lambda!336173))))

(declare-fun lt!2335858 () Unit!157603)

(declare-fun choose!45806 (Regex!16103 Regex!16103 List!64610) Unit!157603)

(assert (=> d!1930381 (= lt!2335858 (choose!45806 (regOne!32718 r!7292) (regTwo!32718 r!7292) s!2326))))

(assert (=> d!1930381 (validRegex!7839 (regOne!32718 r!7292))))

(assert (=> d!1930381 (= (lemmaFindConcatSeparationEquivalentToExists!2172 (regOne!32718 r!7292) (regTwo!32718 r!7292) s!2326) lt!2335858)))

(declare-fun bs!1526834 () Bool)

(assert (= bs!1526834 d!1930381))

(assert (=> bs!1526834 m!6998088))

(assert (=> bs!1526834 m!6998090))

(declare-fun m!6998624 () Bool)

(assert (=> bs!1526834 m!6998624))

(declare-fun m!6998626 () Bool)

(assert (=> bs!1526834 m!6998626))

(assert (=> bs!1526834 m!6998618))

(assert (=> bs!1526834 m!6998088))

(assert (=> b!6159849 d!1930381))

(declare-fun d!1930383 () Bool)

(assert (=> d!1930383 (= (Exists!3173 lambda!336124) (choose!45805 lambda!336124))))

(declare-fun bs!1526835 () Bool)

(assert (= bs!1526835 d!1930383))

(declare-fun m!6998628 () Bool)

(assert (=> bs!1526835 m!6998628))

(assert (=> b!6159849 d!1930383))

(declare-fun bs!1526836 () Bool)

(declare-fun d!1930385 () Bool)

(assert (= bs!1526836 (and d!1930385 b!6160346)))

(declare-fun lambda!336178 () Int)

(assert (=> bs!1526836 (not (= lambda!336178 lambda!336160))))

(declare-fun bs!1526837 () Bool)

(assert (= bs!1526837 (and d!1930385 b!6159849)))

(assert (=> bs!1526837 (not (= lambda!336178 lambda!336124))))

(declare-fun bs!1526838 () Bool)

(assert (= bs!1526838 (and d!1930385 d!1930381)))

(assert (=> bs!1526838 (= lambda!336178 lambda!336173)))

(declare-fun bs!1526839 () Bool)

(assert (= bs!1526839 (and d!1930385 b!6160339)))

(assert (=> bs!1526839 (not (= lambda!336178 lambda!336159))))

(assert (=> bs!1526837 (= lambda!336178 lambda!336123)))

(assert (=> d!1930385 true))

(assert (=> d!1930385 true))

(assert (=> d!1930385 true))

(declare-fun lambda!336179 () Int)

(assert (=> bs!1526836 (= lambda!336179 lambda!336160)))

(declare-fun bs!1526840 () Bool)

(assert (= bs!1526840 d!1930385))

(assert (=> bs!1526840 (not (= lambda!336179 lambda!336178))))

(assert (=> bs!1526837 (= lambda!336179 lambda!336124)))

(assert (=> bs!1526838 (not (= lambda!336179 lambda!336173))))

(assert (=> bs!1526839 (not (= lambda!336179 lambda!336159))))

(assert (=> bs!1526837 (not (= lambda!336179 lambda!336123))))

(assert (=> d!1930385 true))

(assert (=> d!1930385 true))

(assert (=> d!1930385 true))

(assert (=> d!1930385 (= (Exists!3173 lambda!336178) (Exists!3173 lambda!336179))))

(declare-fun lt!2335861 () Unit!157603)

(declare-fun choose!45807 (Regex!16103 Regex!16103 List!64610) Unit!157603)

(assert (=> d!1930385 (= lt!2335861 (choose!45807 (regOne!32718 r!7292) (regTwo!32718 r!7292) s!2326))))

(assert (=> d!1930385 (validRegex!7839 (regOne!32718 r!7292))))

(assert (=> d!1930385 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1710 (regOne!32718 r!7292) (regTwo!32718 r!7292) s!2326) lt!2335861)))

(declare-fun m!6998630 () Bool)

(assert (=> bs!1526840 m!6998630))

(declare-fun m!6998632 () Bool)

(assert (=> bs!1526840 m!6998632))

(declare-fun m!6998634 () Bool)

(assert (=> bs!1526840 m!6998634))

(assert (=> bs!1526840 m!6998618))

(assert (=> b!6159849 d!1930385))

(declare-fun d!1930387 () Bool)

(declare-fun isEmpty!36457 (Option!15994) Bool)

(assert (=> d!1930387 (= (isDefined!12697 (findConcatSeparation!2408 (regOne!32718 r!7292) (regTwo!32718 r!7292) Nil!64486 s!2326 s!2326)) (not (isEmpty!36457 (findConcatSeparation!2408 (regOne!32718 r!7292) (regTwo!32718 r!7292) Nil!64486 s!2326 s!2326))))))

(declare-fun bs!1526841 () Bool)

(assert (= bs!1526841 d!1930387))

(assert (=> bs!1526841 m!6998088))

(declare-fun m!6998636 () Bool)

(assert (=> bs!1526841 m!6998636))

(assert (=> b!6159849 d!1930387))

(declare-fun d!1930389 () Bool)

(declare-fun lt!2335864 () Int)

(assert (=> d!1930389 (>= lt!2335864 0)))

(declare-fun e!3753433 () Int)

(assert (=> d!1930389 (= lt!2335864 e!3753433)))

(declare-fun c!1109468 () Bool)

(assert (=> d!1930389 (= c!1109468 ((_ is Cons!64485) (Cons!64485 lt!2335770 Nil!64485)))))

(assert (=> d!1930389 (= (zipperDepthTotal!286 (Cons!64485 lt!2335770 Nil!64485)) lt!2335864)))

(declare-fun b!6160578 () Bool)

(declare-fun contextDepthTotal!263 (Context!10974) Int)

(assert (=> b!6160578 (= e!3753433 (+ (contextDepthTotal!263 (h!70933 (Cons!64485 lt!2335770 Nil!64485))) (zipperDepthTotal!286 (t!378105 (Cons!64485 lt!2335770 Nil!64485)))))))

(declare-fun b!6160579 () Bool)

(assert (=> b!6160579 (= e!3753433 0)))

(assert (= (and d!1930389 c!1109468) b!6160578))

(assert (= (and d!1930389 (not c!1109468)) b!6160579))

(declare-fun m!6998638 () Bool)

(assert (=> b!6160578 m!6998638))

(declare-fun m!6998640 () Bool)

(assert (=> b!6160578 m!6998640))

(assert (=> b!6159870 d!1930389))

(declare-fun d!1930391 () Bool)

(declare-fun lt!2335865 () Int)

(assert (=> d!1930391 (>= lt!2335865 0)))

(declare-fun e!3753434 () Int)

(assert (=> d!1930391 (= lt!2335865 e!3753434)))

(declare-fun c!1109469 () Bool)

(assert (=> d!1930391 (= c!1109469 ((_ is Cons!64485) zl!343))))

(assert (=> d!1930391 (= (zipperDepthTotal!286 zl!343) lt!2335865)))

(declare-fun b!6160580 () Bool)

(assert (=> b!6160580 (= e!3753434 (+ (contextDepthTotal!263 (h!70933 zl!343)) (zipperDepthTotal!286 (t!378105 zl!343))))))

(declare-fun b!6160581 () Bool)

(assert (=> b!6160581 (= e!3753434 0)))

(assert (= (and d!1930391 c!1109469) b!6160580))

(assert (= (and d!1930391 (not c!1109469)) b!6160581))

(declare-fun m!6998642 () Bool)

(assert (=> b!6160580 m!6998642))

(declare-fun m!6998644 () Bool)

(assert (=> b!6160580 m!6998644))

(assert (=> b!6159870 d!1930391))

(declare-fun d!1930393 () Bool)

(assert (=> d!1930393 (= (flatMap!1608 z!1189 lambda!336125) (dynLambda!25425 lambda!336125 (h!70933 zl!343)))))

(declare-fun lt!2335866 () Unit!157603)

(assert (=> d!1930393 (= lt!2335866 (choose!45804 z!1189 (h!70933 zl!343) lambda!336125))))

(assert (=> d!1930393 (= z!1189 (store ((as const (Array Context!10974 Bool)) false) (h!70933 zl!343) true))))

(assert (=> d!1930393 (= (lemmaFlatMapOnSingletonSet!1134 z!1189 (h!70933 zl!343) lambda!336125) lt!2335866)))

(declare-fun b_lambda!234509 () Bool)

(assert (=> (not b_lambda!234509) (not d!1930393)))

(declare-fun bs!1526842 () Bool)

(assert (= bs!1526842 d!1930393))

(assert (=> bs!1526842 m!6998054))

(declare-fun m!6998646 () Bool)

(assert (=> bs!1526842 m!6998646))

(declare-fun m!6998648 () Bool)

(assert (=> bs!1526842 m!6998648))

(declare-fun m!6998650 () Bool)

(assert (=> bs!1526842 m!6998650))

(assert (=> b!6159868 d!1930393))

(declare-fun d!1930395 () Bool)

(assert (=> d!1930395 (= (nullable!6096 (h!70932 (exprs!5987 (h!70933 zl!343)))) (nullableFct!2060 (h!70932 (exprs!5987 (h!70933 zl!343)))))))

(declare-fun bs!1526843 () Bool)

(assert (= bs!1526843 d!1930395))

(declare-fun m!6998652 () Bool)

(assert (=> bs!1526843 m!6998652))

(assert (=> b!6159868 d!1930395))

(declare-fun b!6160582 () Bool)

(declare-fun e!3753437 () (InoxSet Context!10974))

(assert (=> b!6160582 (= e!3753437 ((as const (Array Context!10974 Bool)) false))))

(declare-fun b!6160583 () Bool)

(declare-fun call!513030 () (InoxSet Context!10974))

(assert (=> b!6160583 (= e!3753437 call!513030)))

(declare-fun bm!513025 () Bool)

(assert (=> bm!513025 (= call!513030 (derivationStepZipperDown!1351 (h!70932 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343))))))) (Context!10975 (t!378104 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343)))))))) (h!70934 s!2326)))))

(declare-fun b!6160584 () Bool)

(declare-fun e!3753436 () (InoxSet Context!10974))

(assert (=> b!6160584 (= e!3753436 e!3753437)))

(declare-fun c!1109471 () Bool)

(assert (=> b!6160584 (= c!1109471 ((_ is Cons!64484) (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343))))))))))

(declare-fun d!1930397 () Bool)

(declare-fun c!1109470 () Bool)

(declare-fun e!3753435 () Bool)

(assert (=> d!1930397 (= c!1109470 e!3753435)))

(declare-fun res!2551187 () Bool)

(assert (=> d!1930397 (=> (not res!2551187) (not e!3753435))))

(assert (=> d!1930397 (= res!2551187 ((_ is Cons!64484) (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343))))))))))

(assert (=> d!1930397 (= (derivationStepZipperUp!1277 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343))))) (h!70934 s!2326)) e!3753436)))

(declare-fun b!6160585 () Bool)

(assert (=> b!6160585 (= e!3753436 ((_ map or) call!513030 (derivationStepZipperUp!1277 (Context!10975 (t!378104 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343)))))))) (h!70934 s!2326))))))

(declare-fun b!6160586 () Bool)

(assert (=> b!6160586 (= e!3753435 (nullable!6096 (h!70932 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343)))))))))))

(assert (= (and d!1930397 res!2551187) b!6160586))

(assert (= (and d!1930397 c!1109470) b!6160585))

(assert (= (and d!1930397 (not c!1109470)) b!6160584))

(assert (= (and b!6160584 c!1109471) b!6160583))

(assert (= (and b!6160584 (not c!1109471)) b!6160582))

(assert (= (or b!6160585 b!6160583) bm!513025))

(declare-fun m!6998654 () Bool)

(assert (=> bm!513025 m!6998654))

(declare-fun m!6998656 () Bool)

(assert (=> b!6160585 m!6998656))

(declare-fun m!6998658 () Bool)

(assert (=> b!6160586 m!6998658))

(assert (=> b!6159868 d!1930397))

(declare-fun bm!513026 () Bool)

(declare-fun call!513036 () List!64608)

(declare-fun call!513033 () List!64608)

(assert (=> bm!513026 (= call!513036 call!513033)))

(declare-fun bm!513027 () Bool)

(declare-fun call!513032 () (InoxSet Context!10974))

(declare-fun call!513035 () (InoxSet Context!10974))

(assert (=> bm!513027 (= call!513032 call!513035)))

(declare-fun call!513034 () (InoxSet Context!10974))

(declare-fun c!1109474 () Bool)

(declare-fun bm!513028 () Bool)

(assert (=> bm!513028 (= call!513034 (derivationStepZipperDown!1351 (ite c!1109474 (regOne!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343))))) (ite c!1109474 lt!2335757 (Context!10975 call!513033)) (h!70934 s!2326)))))

(declare-fun b!6160588 () Bool)

(declare-fun e!3753439 () (InoxSet Context!10974))

(assert (=> b!6160588 (= e!3753439 call!513032)))

(declare-fun bm!513029 () Bool)

(declare-fun call!513031 () (InoxSet Context!10974))

(assert (=> bm!513029 (= call!513035 call!513031)))

(declare-fun b!6160589 () Bool)

(declare-fun c!1109476 () Bool)

(assert (=> b!6160589 (= c!1109476 ((_ is Star!16103) (h!70932 (exprs!5987 (h!70933 zl!343)))))))

(declare-fun e!3753438 () (InoxSet Context!10974))

(assert (=> b!6160589 (= e!3753439 e!3753438)))

(declare-fun b!6160590 () Bool)

(declare-fun e!3753443 () (InoxSet Context!10974))

(declare-fun e!3753442 () (InoxSet Context!10974))

(assert (=> b!6160590 (= e!3753443 e!3753442)))

(assert (=> b!6160590 (= c!1109474 ((_ is Union!16103) (h!70932 (exprs!5987 (h!70933 zl!343)))))))

(declare-fun b!6160591 () Bool)

(declare-fun e!3753441 () (InoxSet Context!10974))

(assert (=> b!6160591 (= e!3753441 e!3753439)))

(declare-fun c!1109472 () Bool)

(assert (=> b!6160591 (= c!1109472 ((_ is Concat!24948) (h!70932 (exprs!5987 (h!70933 zl!343)))))))

(declare-fun b!6160592 () Bool)

(assert (=> b!6160592 (= e!3753438 call!513032)))

(declare-fun bm!513030 () Bool)

(declare-fun c!1109475 () Bool)

(assert (=> bm!513030 (= call!513033 ($colon$colon!1980 (exprs!5987 lt!2335757) (ite (or c!1109475 c!1109472) (regTwo!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (h!70932 (exprs!5987 (h!70933 zl!343))))))))

(declare-fun b!6160593 () Bool)

(declare-fun e!3753440 () Bool)

(assert (=> b!6160593 (= c!1109475 e!3753440)))

(declare-fun res!2551188 () Bool)

(assert (=> b!6160593 (=> (not res!2551188) (not e!3753440))))

(assert (=> b!6160593 (= res!2551188 ((_ is Concat!24948) (h!70932 (exprs!5987 (h!70933 zl!343)))))))

(assert (=> b!6160593 (= e!3753442 e!3753441)))

(declare-fun b!6160594 () Bool)

(assert (=> b!6160594 (= e!3753442 ((_ map or) call!513034 call!513031))))

(declare-fun b!6160587 () Bool)

(assert (=> b!6160587 (= e!3753443 (store ((as const (Array Context!10974 Bool)) false) lt!2335757 true))))

(declare-fun d!1930399 () Bool)

(declare-fun c!1109473 () Bool)

(assert (=> d!1930399 (= c!1109473 (and ((_ is ElementMatch!16103) (h!70932 (exprs!5987 (h!70933 zl!343)))) (= (c!1109260 (h!70932 (exprs!5987 (h!70933 zl!343)))) (h!70934 s!2326))))))

(assert (=> d!1930399 (= (derivationStepZipperDown!1351 (h!70932 (exprs!5987 (h!70933 zl!343))) lt!2335757 (h!70934 s!2326)) e!3753443)))

(declare-fun b!6160595 () Bool)

(assert (=> b!6160595 (= e!3753441 ((_ map or) call!513034 call!513035))))

(declare-fun b!6160596 () Bool)

(assert (=> b!6160596 (= e!3753440 (nullable!6096 (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343))))))))

(declare-fun b!6160597 () Bool)

(assert (=> b!6160597 (= e!3753438 ((as const (Array Context!10974 Bool)) false))))

(declare-fun bm!513031 () Bool)

(assert (=> bm!513031 (= call!513031 (derivationStepZipperDown!1351 (ite c!1109474 (regTwo!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109475 (regTwo!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109472 (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (reg!16432 (h!70932 (exprs!5987 (h!70933 zl!343))))))) (ite (or c!1109474 c!1109475) lt!2335757 (Context!10975 call!513036)) (h!70934 s!2326)))))

(assert (= (and d!1930399 c!1109473) b!6160587))

(assert (= (and d!1930399 (not c!1109473)) b!6160590))

(assert (= (and b!6160590 c!1109474) b!6160594))

(assert (= (and b!6160590 (not c!1109474)) b!6160593))

(assert (= (and b!6160593 res!2551188) b!6160596))

(assert (= (and b!6160593 c!1109475) b!6160595))

(assert (= (and b!6160593 (not c!1109475)) b!6160591))

(assert (= (and b!6160591 c!1109472) b!6160588))

(assert (= (and b!6160591 (not c!1109472)) b!6160589))

(assert (= (and b!6160589 c!1109476) b!6160592))

(assert (= (and b!6160589 (not c!1109476)) b!6160597))

(assert (= (or b!6160588 b!6160592) bm!513026))

(assert (= (or b!6160588 b!6160592) bm!513027))

(assert (= (or b!6160595 bm!513026) bm!513030))

(assert (= (or b!6160595 bm!513027) bm!513029))

(assert (= (or b!6160594 bm!513029) bm!513031))

(assert (= (or b!6160594 b!6160595) bm!513028))

(declare-fun m!6998660 () Bool)

(assert (=> bm!513030 m!6998660))

(declare-fun m!6998662 () Bool)

(assert (=> bm!513031 m!6998662))

(declare-fun m!6998664 () Bool)

(assert (=> bm!513028 m!6998664))

(assert (=> b!6160587 m!6998522))

(declare-fun m!6998666 () Bool)

(assert (=> b!6160596 m!6998666))

(assert (=> b!6159868 d!1930399))

(declare-fun d!1930401 () Bool)

(assert (=> d!1930401 (= (flatMap!1608 z!1189 lambda!336125) (choose!45803 z!1189 lambda!336125))))

(declare-fun bs!1526844 () Bool)

(assert (= bs!1526844 d!1930401))

(declare-fun m!6998668 () Bool)

(assert (=> bs!1526844 m!6998668))

(assert (=> b!6159868 d!1930401))

(declare-fun b!6160598 () Bool)

(declare-fun e!3753446 () (InoxSet Context!10974))

(assert (=> b!6160598 (= e!3753446 ((as const (Array Context!10974 Bool)) false))))

(declare-fun b!6160599 () Bool)

(declare-fun call!513037 () (InoxSet Context!10974))

(assert (=> b!6160599 (= e!3753446 call!513037)))

(declare-fun bm!513032 () Bool)

(assert (=> bm!513032 (= call!513037 (derivationStepZipperDown!1351 (h!70932 (exprs!5987 (h!70933 zl!343))) (Context!10975 (t!378104 (exprs!5987 (h!70933 zl!343)))) (h!70934 s!2326)))))

(declare-fun b!6160600 () Bool)

(declare-fun e!3753445 () (InoxSet Context!10974))

(assert (=> b!6160600 (= e!3753445 e!3753446)))

(declare-fun c!1109478 () Bool)

(assert (=> b!6160600 (= c!1109478 ((_ is Cons!64484) (exprs!5987 (h!70933 zl!343))))))

(declare-fun d!1930403 () Bool)

(declare-fun c!1109477 () Bool)

(declare-fun e!3753444 () Bool)

(assert (=> d!1930403 (= c!1109477 e!3753444)))

(declare-fun res!2551189 () Bool)

(assert (=> d!1930403 (=> (not res!2551189) (not e!3753444))))

(assert (=> d!1930403 (= res!2551189 ((_ is Cons!64484) (exprs!5987 (h!70933 zl!343))))))

(assert (=> d!1930403 (= (derivationStepZipperUp!1277 (h!70933 zl!343) (h!70934 s!2326)) e!3753445)))

(declare-fun b!6160601 () Bool)

(assert (=> b!6160601 (= e!3753445 ((_ map or) call!513037 (derivationStepZipperUp!1277 (Context!10975 (t!378104 (exprs!5987 (h!70933 zl!343)))) (h!70934 s!2326))))))

(declare-fun b!6160602 () Bool)

(assert (=> b!6160602 (= e!3753444 (nullable!6096 (h!70932 (exprs!5987 (h!70933 zl!343)))))))

(assert (= (and d!1930403 res!2551189) b!6160602))

(assert (= (and d!1930403 c!1109477) b!6160601))

(assert (= (and d!1930403 (not c!1109477)) b!6160600))

(assert (= (and b!6160600 c!1109478) b!6160599))

(assert (= (and b!6160600 (not c!1109478)) b!6160598))

(assert (= (or b!6160601 b!6160599) bm!513032))

(declare-fun m!6998670 () Bool)

(assert (=> bm!513032 m!6998670))

(declare-fun m!6998672 () Bool)

(assert (=> b!6160601 m!6998672))

(assert (=> b!6160602 m!6998056))

(assert (=> b!6159868 d!1930403))

(declare-fun b!6160603 () Bool)

(declare-fun e!3753449 () (InoxSet Context!10974))

(assert (=> b!6160603 (= e!3753449 ((as const (Array Context!10974 Bool)) false))))

(declare-fun b!6160604 () Bool)

(declare-fun call!513038 () (InoxSet Context!10974))

(assert (=> b!6160604 (= e!3753449 call!513038)))

(declare-fun bm!513033 () Bool)

(assert (=> bm!513033 (= call!513038 (derivationStepZipperDown!1351 (h!70932 (exprs!5987 lt!2335757)) (Context!10975 (t!378104 (exprs!5987 lt!2335757))) (h!70934 s!2326)))))

(declare-fun b!6160605 () Bool)

(declare-fun e!3753448 () (InoxSet Context!10974))

(assert (=> b!6160605 (= e!3753448 e!3753449)))

(declare-fun c!1109480 () Bool)

(assert (=> b!6160605 (= c!1109480 ((_ is Cons!64484) (exprs!5987 lt!2335757)))))

(declare-fun d!1930405 () Bool)

(declare-fun c!1109479 () Bool)

(declare-fun e!3753447 () Bool)

(assert (=> d!1930405 (= c!1109479 e!3753447)))

(declare-fun res!2551190 () Bool)

(assert (=> d!1930405 (=> (not res!2551190) (not e!3753447))))

(assert (=> d!1930405 (= res!2551190 ((_ is Cons!64484) (exprs!5987 lt!2335757)))))

(assert (=> d!1930405 (= (derivationStepZipperUp!1277 lt!2335757 (h!70934 s!2326)) e!3753448)))

(declare-fun b!6160606 () Bool)

(assert (=> b!6160606 (= e!3753448 ((_ map or) call!513038 (derivationStepZipperUp!1277 (Context!10975 (t!378104 (exprs!5987 lt!2335757))) (h!70934 s!2326))))))

(declare-fun b!6160607 () Bool)

(assert (=> b!6160607 (= e!3753447 (nullable!6096 (h!70932 (exprs!5987 lt!2335757))))))

(assert (= (and d!1930405 res!2551190) b!6160607))

(assert (= (and d!1930405 c!1109479) b!6160606))

(assert (= (and d!1930405 (not c!1109479)) b!6160605))

(assert (= (and b!6160605 c!1109480) b!6160604))

(assert (= (and b!6160605 (not c!1109480)) b!6160603))

(assert (= (or b!6160606 b!6160604) bm!513033))

(declare-fun m!6998674 () Bool)

(assert (=> bm!513033 m!6998674))

(declare-fun m!6998676 () Bool)

(assert (=> b!6160606 m!6998676))

(declare-fun m!6998678 () Bool)

(assert (=> b!6160607 m!6998678))

(assert (=> b!6159868 d!1930405))

(declare-fun d!1930407 () Bool)

(declare-fun e!3753452 () Bool)

(assert (=> d!1930407 e!3753452))

(declare-fun res!2551193 () Bool)

(assert (=> d!1930407 (=> (not res!2551193) (not e!3753452))))

(declare-fun lt!2335869 () List!64609)

(declare-fun noDuplicate!1950 (List!64609) Bool)

(assert (=> d!1930407 (= res!2551193 (noDuplicate!1950 lt!2335869))))

(declare-fun choose!45808 ((InoxSet Context!10974)) List!64609)

(assert (=> d!1930407 (= lt!2335869 (choose!45808 z!1189))))

(assert (=> d!1930407 (= (toList!9887 z!1189) lt!2335869)))

(declare-fun b!6160610 () Bool)

(declare-fun content!12027 (List!64609) (InoxSet Context!10974))

(assert (=> b!6160610 (= e!3753452 (= (content!12027 lt!2335869) z!1189))))

(assert (= (and d!1930407 res!2551193) b!6160610))

(declare-fun m!6998680 () Bool)

(assert (=> d!1930407 m!6998680))

(declare-fun m!6998682 () Bool)

(assert (=> d!1930407 m!6998682))

(declare-fun m!6998684 () Bool)

(assert (=> b!6160610 m!6998684))

(assert (=> b!6159848 d!1930407))

(declare-fun bs!1526845 () Bool)

(declare-fun d!1930409 () Bool)

(assert (= bs!1526845 (and d!1930409 d!1930353)))

(declare-fun lambda!336182 () Int)

(assert (=> bs!1526845 (= lambda!336182 lambda!336163)))

(declare-fun bs!1526846 () Bool)

(assert (= bs!1526846 (and d!1930409 d!1930355)))

(assert (=> bs!1526846 (= lambda!336182 lambda!336166)))

(declare-fun bs!1526847 () Bool)

(assert (= bs!1526847 (and d!1930409 d!1930357)))

(assert (=> bs!1526847 (= lambda!336182 lambda!336169)))

(declare-fun bs!1526848 () Bool)

(assert (= bs!1526848 (and d!1930409 d!1930361)))

(assert (=> bs!1526848 (= lambda!336182 lambda!336170)))

(declare-fun b!6160631 () Bool)

(declare-fun e!3753468 () Bool)

(declare-fun lt!2335872 () Regex!16103)

(assert (=> b!6160631 (= e!3753468 (= lt!2335872 (head!12728 (exprs!5987 (h!70933 zl!343)))))))

(declare-fun b!6160632 () Bool)

(declare-fun e!3753470 () Bool)

(assert (=> b!6160632 (= e!3753470 (isEmpty!36453 (t!378104 (exprs!5987 (h!70933 zl!343)))))))

(declare-fun b!6160633 () Bool)

(declare-fun e!3753469 () Bool)

(assert (=> b!6160633 (= e!3753469 e!3753468)))

(declare-fun c!1109492 () Bool)

(assert (=> b!6160633 (= c!1109492 (isEmpty!36453 (tail!11813 (exprs!5987 (h!70933 zl!343)))))))

(declare-fun b!6160634 () Bool)

(declare-fun e!3753465 () Bool)

(assert (=> b!6160634 (= e!3753465 e!3753469)))

(declare-fun c!1109490 () Bool)

(assert (=> b!6160634 (= c!1109490 (isEmpty!36453 (exprs!5987 (h!70933 zl!343))))))

(declare-fun b!6160635 () Bool)

(declare-fun e!3753467 () Regex!16103)

(assert (=> b!6160635 (= e!3753467 EmptyExpr!16103)))

(assert (=> d!1930409 e!3753465))

(declare-fun res!2551198 () Bool)

(assert (=> d!1930409 (=> (not res!2551198) (not e!3753465))))

(assert (=> d!1930409 (= res!2551198 (validRegex!7839 lt!2335872))))

(declare-fun e!3753466 () Regex!16103)

(assert (=> d!1930409 (= lt!2335872 e!3753466)))

(declare-fun c!1109489 () Bool)

(assert (=> d!1930409 (= c!1109489 e!3753470)))

(declare-fun res!2551199 () Bool)

(assert (=> d!1930409 (=> (not res!2551199) (not e!3753470))))

(assert (=> d!1930409 (= res!2551199 ((_ is Cons!64484) (exprs!5987 (h!70933 zl!343))))))

(assert (=> d!1930409 (forall!15224 (exprs!5987 (h!70933 zl!343)) lambda!336182)))

(assert (=> d!1930409 (= (generalisedConcat!1700 (exprs!5987 (h!70933 zl!343))) lt!2335872)))

(declare-fun b!6160636 () Bool)

(declare-fun isEmptyExpr!1520 (Regex!16103) Bool)

(assert (=> b!6160636 (= e!3753469 (isEmptyExpr!1520 lt!2335872))))

(declare-fun b!6160637 () Bool)

(assert (=> b!6160637 (= e!3753466 (h!70932 (exprs!5987 (h!70933 zl!343))))))

(declare-fun b!6160638 () Bool)

(declare-fun isConcat!1043 (Regex!16103) Bool)

(assert (=> b!6160638 (= e!3753468 (isConcat!1043 lt!2335872))))

(declare-fun b!6160639 () Bool)

(assert (=> b!6160639 (= e!3753467 (Concat!24948 (h!70932 (exprs!5987 (h!70933 zl!343))) (generalisedConcat!1700 (t!378104 (exprs!5987 (h!70933 zl!343))))))))

(declare-fun b!6160640 () Bool)

(assert (=> b!6160640 (= e!3753466 e!3753467)))

(declare-fun c!1109491 () Bool)

(assert (=> b!6160640 (= c!1109491 ((_ is Cons!64484) (exprs!5987 (h!70933 zl!343))))))

(assert (= (and d!1930409 res!2551199) b!6160632))

(assert (= (and d!1930409 c!1109489) b!6160637))

(assert (= (and d!1930409 (not c!1109489)) b!6160640))

(assert (= (and b!6160640 c!1109491) b!6160639))

(assert (= (and b!6160640 (not c!1109491)) b!6160635))

(assert (= (and d!1930409 res!2551198) b!6160634))

(assert (= (and b!6160634 c!1109490) b!6160636))

(assert (= (and b!6160634 (not c!1109490)) b!6160633))

(assert (= (and b!6160633 c!1109492) b!6160631))

(assert (= (and b!6160633 (not c!1109492)) b!6160638))

(assert (=> b!6160632 m!6998110))

(declare-fun m!6998686 () Bool)

(assert (=> b!6160639 m!6998686))

(declare-fun m!6998688 () Bool)

(assert (=> b!6160634 m!6998688))

(declare-fun m!6998690 () Bool)

(assert (=> d!1930409 m!6998690))

(declare-fun m!6998692 () Bool)

(assert (=> d!1930409 m!6998692))

(declare-fun m!6998694 () Bool)

(assert (=> b!6160636 m!6998694))

(declare-fun m!6998696 () Bool)

(assert (=> b!6160633 m!6998696))

(assert (=> b!6160633 m!6998696))

(declare-fun m!6998698 () Bool)

(assert (=> b!6160633 m!6998698))

(declare-fun m!6998700 () Bool)

(assert (=> b!6160631 m!6998700))

(declare-fun m!6998702 () Bool)

(assert (=> b!6160638 m!6998702))

(assert (=> b!6159867 d!1930409))

(declare-fun bs!1526849 () Bool)

(declare-fun d!1930411 () Bool)

(assert (= bs!1526849 (and d!1930411 d!1930355)))

(declare-fun lambda!336183 () Int)

(assert (=> bs!1526849 (= lambda!336183 lambda!336166)))

(declare-fun bs!1526850 () Bool)

(assert (= bs!1526850 (and d!1930411 d!1930357)))

(assert (=> bs!1526850 (= lambda!336183 lambda!336169)))

(declare-fun bs!1526851 () Bool)

(assert (= bs!1526851 (and d!1930411 d!1930409)))

(assert (=> bs!1526851 (= lambda!336183 lambda!336182)))

(declare-fun bs!1526852 () Bool)

(assert (= bs!1526852 (and d!1930411 d!1930361)))

(assert (=> bs!1526852 (= lambda!336183 lambda!336170)))

(declare-fun bs!1526853 () Bool)

(assert (= bs!1526853 (and d!1930411 d!1930353)))

(assert (=> bs!1526853 (= lambda!336183 lambda!336163)))

(assert (=> d!1930411 (= (inv!83504 (h!70933 zl!343)) (forall!15224 (exprs!5987 (h!70933 zl!343)) lambda!336183))))

(declare-fun bs!1526854 () Bool)

(assert (= bs!1526854 d!1930411))

(declare-fun m!6998704 () Bool)

(assert (=> bs!1526854 m!6998704))

(assert (=> b!6159847 d!1930411))

(declare-fun b!6160652 () Bool)

(declare-fun e!3753473 () Bool)

(declare-fun tp!1720163 () Bool)

(declare-fun tp!1720166 () Bool)

(assert (=> b!6160652 (= e!3753473 (and tp!1720163 tp!1720166))))

(declare-fun b!6160651 () Bool)

(assert (=> b!6160651 (= e!3753473 tp_is_empty!41459)))

(declare-fun b!6160654 () Bool)

(declare-fun tp!1720165 () Bool)

(declare-fun tp!1720167 () Bool)

(assert (=> b!6160654 (= e!3753473 (and tp!1720165 tp!1720167))))

(declare-fun b!6160653 () Bool)

(declare-fun tp!1720164 () Bool)

(assert (=> b!6160653 (= e!3753473 tp!1720164)))

(assert (=> b!6159865 (= tp!1720093 e!3753473)))

(assert (= (and b!6159865 ((_ is ElementMatch!16103) (reg!16432 r!7292))) b!6160651))

(assert (= (and b!6159865 ((_ is Concat!24948) (reg!16432 r!7292))) b!6160652))

(assert (= (and b!6159865 ((_ is Star!16103) (reg!16432 r!7292))) b!6160653))

(assert (= (and b!6159865 ((_ is Union!16103) (reg!16432 r!7292))) b!6160654))

(declare-fun b!6160659 () Bool)

(declare-fun e!3753476 () Bool)

(declare-fun tp!1720172 () Bool)

(declare-fun tp!1720173 () Bool)

(assert (=> b!6160659 (= e!3753476 (and tp!1720172 tp!1720173))))

(assert (=> b!6159876 (= tp!1720085 e!3753476)))

(assert (= (and b!6159876 ((_ is Cons!64484) (exprs!5987 setElem!41742))) b!6160659))

(declare-fun b!6160661 () Bool)

(declare-fun e!3753477 () Bool)

(declare-fun tp!1720174 () Bool)

(declare-fun tp!1720177 () Bool)

(assert (=> b!6160661 (= e!3753477 (and tp!1720174 tp!1720177))))

(declare-fun b!6160660 () Bool)

(assert (=> b!6160660 (= e!3753477 tp_is_empty!41459)))

(declare-fun b!6160663 () Bool)

(declare-fun tp!1720176 () Bool)

(declare-fun tp!1720178 () Bool)

(assert (=> b!6160663 (= e!3753477 (and tp!1720176 tp!1720178))))

(declare-fun b!6160662 () Bool)

(declare-fun tp!1720175 () Bool)

(assert (=> b!6160662 (= e!3753477 tp!1720175)))

(assert (=> b!6159856 (= tp!1720088 e!3753477)))

(assert (= (and b!6159856 ((_ is ElementMatch!16103) (regOne!32718 r!7292))) b!6160660))

(assert (= (and b!6159856 ((_ is Concat!24948) (regOne!32718 r!7292))) b!6160661))

(assert (= (and b!6159856 ((_ is Star!16103) (regOne!32718 r!7292))) b!6160662))

(assert (= (and b!6159856 ((_ is Union!16103) (regOne!32718 r!7292))) b!6160663))

(declare-fun b!6160665 () Bool)

(declare-fun e!3753478 () Bool)

(declare-fun tp!1720179 () Bool)

(declare-fun tp!1720182 () Bool)

(assert (=> b!6160665 (= e!3753478 (and tp!1720179 tp!1720182))))

(declare-fun b!6160664 () Bool)

(assert (=> b!6160664 (= e!3753478 tp_is_empty!41459)))

(declare-fun b!6160667 () Bool)

(declare-fun tp!1720181 () Bool)

(declare-fun tp!1720183 () Bool)

(assert (=> b!6160667 (= e!3753478 (and tp!1720181 tp!1720183))))

(declare-fun b!6160666 () Bool)

(declare-fun tp!1720180 () Bool)

(assert (=> b!6160666 (= e!3753478 tp!1720180)))

(assert (=> b!6159856 (= tp!1720094 e!3753478)))

(assert (= (and b!6159856 ((_ is ElementMatch!16103) (regTwo!32718 r!7292))) b!6160664))

(assert (= (and b!6159856 ((_ is Concat!24948) (regTwo!32718 r!7292))) b!6160665))

(assert (= (and b!6159856 ((_ is Star!16103) (regTwo!32718 r!7292))) b!6160666))

(assert (= (and b!6159856 ((_ is Union!16103) (regTwo!32718 r!7292))) b!6160667))

(declare-fun b!6160669 () Bool)

(declare-fun e!3753479 () Bool)

(declare-fun tp!1720184 () Bool)

(declare-fun tp!1720187 () Bool)

(assert (=> b!6160669 (= e!3753479 (and tp!1720184 tp!1720187))))

(declare-fun b!6160668 () Bool)

(assert (=> b!6160668 (= e!3753479 tp_is_empty!41459)))

(declare-fun b!6160671 () Bool)

(declare-fun tp!1720186 () Bool)

(declare-fun tp!1720188 () Bool)

(assert (=> b!6160671 (= e!3753479 (and tp!1720186 tp!1720188))))

(declare-fun b!6160670 () Bool)

(declare-fun tp!1720185 () Bool)

(assert (=> b!6160670 (= e!3753479 tp!1720185)))

(assert (=> b!6159851 (= tp!1720087 e!3753479)))

(assert (= (and b!6159851 ((_ is ElementMatch!16103) (regOne!32719 r!7292))) b!6160668))

(assert (= (and b!6159851 ((_ is Concat!24948) (regOne!32719 r!7292))) b!6160669))

(assert (= (and b!6159851 ((_ is Star!16103) (regOne!32719 r!7292))) b!6160670))

(assert (= (and b!6159851 ((_ is Union!16103) (regOne!32719 r!7292))) b!6160671))

(declare-fun b!6160673 () Bool)

(declare-fun e!3753480 () Bool)

(declare-fun tp!1720189 () Bool)

(declare-fun tp!1720192 () Bool)

(assert (=> b!6160673 (= e!3753480 (and tp!1720189 tp!1720192))))

(declare-fun b!6160672 () Bool)

(assert (=> b!6160672 (= e!3753480 tp_is_empty!41459)))

(declare-fun b!6160675 () Bool)

(declare-fun tp!1720191 () Bool)

(declare-fun tp!1720193 () Bool)

(assert (=> b!6160675 (= e!3753480 (and tp!1720191 tp!1720193))))

(declare-fun b!6160674 () Bool)

(declare-fun tp!1720190 () Bool)

(assert (=> b!6160674 (= e!3753480 tp!1720190)))

(assert (=> b!6159851 (= tp!1720089 e!3753480)))

(assert (= (and b!6159851 ((_ is ElementMatch!16103) (regTwo!32719 r!7292))) b!6160672))

(assert (= (and b!6159851 ((_ is Concat!24948) (regTwo!32719 r!7292))) b!6160673))

(assert (= (and b!6159851 ((_ is Star!16103) (regTwo!32719 r!7292))) b!6160674))

(assert (= (and b!6159851 ((_ is Union!16103) (regTwo!32719 r!7292))) b!6160675))

(declare-fun b!6160676 () Bool)

(declare-fun e!3753481 () Bool)

(declare-fun tp!1720194 () Bool)

(declare-fun tp!1720195 () Bool)

(assert (=> b!6160676 (= e!3753481 (and tp!1720194 tp!1720195))))

(assert (=> b!6159869 (= tp!1720086 e!3753481)))

(assert (= (and b!6159869 ((_ is Cons!64484) (exprs!5987 (h!70933 zl!343)))) b!6160676))

(declare-fun condSetEmpty!41748 () Bool)

(assert (=> setNonEmpty!41742 (= condSetEmpty!41748 (= setRest!41742 ((as const (Array Context!10974 Bool)) false)))))

(declare-fun setRes!41748 () Bool)

(assert (=> setNonEmpty!41742 (= tp!1720090 setRes!41748)))

(declare-fun setIsEmpty!41748 () Bool)

(assert (=> setIsEmpty!41748 setRes!41748))

(declare-fun tp!1720200 () Bool)

(declare-fun setElem!41748 () Context!10974)

(declare-fun e!3753484 () Bool)

(declare-fun setNonEmpty!41748 () Bool)

(assert (=> setNonEmpty!41748 (= setRes!41748 (and tp!1720200 (inv!83504 setElem!41748) e!3753484))))

(declare-fun setRest!41748 () (InoxSet Context!10974))

(assert (=> setNonEmpty!41748 (= setRest!41742 ((_ map or) (store ((as const (Array Context!10974 Bool)) false) setElem!41748 true) setRest!41748))))

(declare-fun b!6160681 () Bool)

(declare-fun tp!1720201 () Bool)

(assert (=> b!6160681 (= e!3753484 tp!1720201)))

(assert (= (and setNonEmpty!41742 condSetEmpty!41748) setIsEmpty!41748))

(assert (= (and setNonEmpty!41742 (not condSetEmpty!41748)) setNonEmpty!41748))

(assert (= setNonEmpty!41748 b!6160681))

(declare-fun m!6998706 () Bool)

(assert (=> setNonEmpty!41748 m!6998706))

(declare-fun b!6160686 () Bool)

(declare-fun e!3753487 () Bool)

(declare-fun tp!1720204 () Bool)

(assert (=> b!6160686 (= e!3753487 (and tp_is_empty!41459 tp!1720204))))

(assert (=> b!6159846 (= tp!1720092 e!3753487)))

(assert (= (and b!6159846 ((_ is Cons!64486) (t!378106 s!2326))) b!6160686))

(declare-fun b!6160694 () Bool)

(declare-fun e!3753493 () Bool)

(declare-fun tp!1720209 () Bool)

(assert (=> b!6160694 (= e!3753493 tp!1720209)))

(declare-fun e!3753492 () Bool)

(declare-fun b!6160693 () Bool)

(declare-fun tp!1720210 () Bool)

(assert (=> b!6160693 (= e!3753492 (and (inv!83504 (h!70933 (t!378105 zl!343))) e!3753493 tp!1720210))))

(assert (=> b!6159847 (= tp!1720091 e!3753492)))

(assert (= b!6160693 b!6160694))

(assert (= (and b!6159847 ((_ is Cons!64485) (t!378105 zl!343))) b!6160693))

(declare-fun m!6998708 () Bool)

(assert (=> b!6160693 m!6998708))

(declare-fun b_lambda!234511 () Bool)

(assert (= b_lambda!234509 (or b!6159868 b_lambda!234511)))

(declare-fun bs!1526855 () Bool)

(declare-fun d!1930413 () Bool)

(assert (= bs!1526855 (and d!1930413 b!6159868)))

(assert (=> bs!1526855 (= (dynLambda!25425 lambda!336125 (h!70933 zl!343)) (derivationStepZipperUp!1277 (h!70933 zl!343) (h!70934 s!2326)))))

(assert (=> bs!1526855 m!6998050))

(assert (=> d!1930393 d!1930413))

(declare-fun b_lambda!234513 () Bool)

(assert (= b_lambda!234507 (or b!6159868 b_lambda!234513)))

(declare-fun bs!1526856 () Bool)

(declare-fun d!1930415 () Bool)

(assert (= bs!1526856 (and d!1930415 b!6159868)))

(assert (=> bs!1526856 (= (dynLambda!25425 lambda!336125 lt!2335742) (derivationStepZipperUp!1277 lt!2335742 (h!70934 s!2326)))))

(assert (=> bs!1526856 m!6998020))

(assert (=> d!1930345 d!1930415))

(declare-fun b_lambda!234515 () Bool)

(assert (= b_lambda!234505 (or b!6159868 b_lambda!234515)))

(declare-fun bs!1526857 () Bool)

(declare-fun d!1930417 () Bool)

(assert (= bs!1526857 (and d!1930417 b!6159868)))

(assert (=> bs!1526857 (= (dynLambda!25425 lambda!336125 lt!2335770) (derivationStepZipperUp!1277 lt!2335770 (h!70934 s!2326)))))

(assert (=> bs!1526857 m!6998026))

(assert (=> d!1930337 d!1930417))

(check-sat (not b!6160531) (not b!6160390) (not b!6160671) (not b!6160557) (not b!6160534) (not b!6160638) (not d!1930393) (not bm!513025) (not bm!513012) (not b!6160527) (not bm!512991) (not b!6160411) (not b!6160417) (not d!1930409) (not b!6160665) (not b!6160450) (not b!6160555) (not b!6160490) (not b!6160203) (not b!6160341) (not b!6160636) (not b!6160667) (not d!1930331) (not d!1930293) (not d!1930309) (not b!6160669) (not b!6160486) (not b!6160389) (not b!6160674) (not b!6160380) (not d!1930383) tp_is_empty!41459 (not b!6160663) (not b!6160654) (not bm!513028) (not d!1930371) (not b!6160602) (not b!6160528) (not b!6160497) (not b!6160553) (not b!6160632) (not bm!513009) (not d!1930385) (not b!6160578) (not bm!512987) (not b!6160394) (not b!6160384) (not bm!513023) (not b!6160693) (not bm!512984) (not d!1930375) (not b!6160681) (not b!6160601) (not bm!513006) (not b!6160218) (not b!6160694) (not b!6160343) (not b!6160214) (not b!6160558) (not b!6160392) (not b!6160580) (not bm!513030) (not b!6160215) (not bm!513031) (not b!6160533) (not b!6160561) (not b!6160532) (not d!1930367) (not b!6160676) (not bm!513008) (not b!6160653) (not d!1930327) (not b!6160488) (not d!1930395) (not bm!512983) (not b!6160416) (not b!6160461) (not d!1930353) (not b!6160415) (not b!6160666) (not b!6160585) (not bm!513032) (not b!6160631) (not b!6160596) (not bm!513015) (not d!1930363) (not d!1930361) (not b!6160607) (not b!6160639) (not b!6160530) (not b!6160393) (not b!6160661) (not b!6160483) (not d!1930299) (not d!1930337) (not b!6160673) (not d!1930319) (not bs!1526856) (not d!1930329) (not d!1930369) (not d!1930357) (not b!6160391) (not b!6160487) (not b!6160559) (not b!6160633) (not d!1930323) (not d!1930339) (not b!6160586) (not bm!513014) (not b!6160662) (not d!1930379) (not b_lambda!234513) (not b!6160606) (not bm!512990) (not d!1930387) (not b!6160670) (not bm!513022) (not b!6160409) (not b!6160686) (not b!6160675) (not b!6160219) (not b!6160659) (not setNonEmpty!41748) (not b!6160377) (not d!1930381) (not b!6160489) (not d!1930335) (not d!1930343) (not d!1930345) (not d!1930365) (not b!6160526) (not b_lambda!234511) (not b!6160634) (not d!1930377) (not d!1930347) (not bs!1526857) (not b!6160652) (not d!1930401) (not b!6160485) (not d!1930297) (not bm!513033) (not b!6160217) (not b!6160408) (not b!6160524) (not bs!1526855) (not b_lambda!234515) (not b!6160529) (not b!6160410) (not d!1930307) (not d!1930325) (not d!1930407) (not b!6160418) (not d!1930411) (not b!6160388) (not b!6160220) (not d!1930355) (not b!6160381) (not b!6160216) (not b!6160610) (not d!1930321))
(check-sat)
(get-model)

(declare-fun d!1930565 () Bool)

(declare-fun c!1109558 () Bool)

(assert (=> d!1930565 (= c!1109558 (isEmpty!36455 (tail!11811 (t!378106 s!2326))))))

(declare-fun e!3753647 () Bool)

(assert (=> d!1930565 (= (matchZipper!2115 (derivationStepZipper!2076 ((_ map or) lt!2335767 lt!2335744) (head!12726 (t!378106 s!2326))) (tail!11811 (t!378106 s!2326))) e!3753647)))

(declare-fun b!6160922 () Bool)

(assert (=> b!6160922 (= e!3753647 (nullableZipper!1884 (derivationStepZipper!2076 ((_ map or) lt!2335767 lt!2335744) (head!12726 (t!378106 s!2326)))))))

(declare-fun b!6160923 () Bool)

(assert (=> b!6160923 (= e!3753647 (matchZipper!2115 (derivationStepZipper!2076 (derivationStepZipper!2076 ((_ map or) lt!2335767 lt!2335744) (head!12726 (t!378106 s!2326))) (head!12726 (tail!11811 (t!378106 s!2326)))) (tail!11811 (tail!11811 (t!378106 s!2326)))))))

(assert (= (and d!1930565 c!1109558) b!6160922))

(assert (= (and d!1930565 (not c!1109558)) b!6160923))

(assert (=> d!1930565 m!6998394))

(declare-fun m!6998964 () Bool)

(assert (=> d!1930565 m!6998964))

(assert (=> b!6160922 m!6998404))

(declare-fun m!6998966 () Bool)

(assert (=> b!6160922 m!6998966))

(assert (=> b!6160923 m!6998394))

(declare-fun m!6998968 () Bool)

(assert (=> b!6160923 m!6998968))

(assert (=> b!6160923 m!6998404))

(assert (=> b!6160923 m!6998968))

(declare-fun m!6998970 () Bool)

(assert (=> b!6160923 m!6998970))

(assert (=> b!6160923 m!6998394))

(declare-fun m!6998972 () Bool)

(assert (=> b!6160923 m!6998972))

(assert (=> b!6160923 m!6998970))

(assert (=> b!6160923 m!6998972))

(declare-fun m!6998974 () Bool)

(assert (=> b!6160923 m!6998974))

(assert (=> b!6160217 d!1930565))

(declare-fun bs!1526943 () Bool)

(declare-fun d!1930567 () Bool)

(assert (= bs!1526943 (and d!1930567 b!6159868)))

(declare-fun lambda!336206 () Int)

(assert (=> bs!1526943 (= (= (head!12726 (t!378106 s!2326)) (h!70934 s!2326)) (= lambda!336206 lambda!336125))))

(assert (=> d!1930567 true))

(assert (=> d!1930567 (= (derivationStepZipper!2076 ((_ map or) lt!2335767 lt!2335744) (head!12726 (t!378106 s!2326))) (flatMap!1608 ((_ map or) lt!2335767 lt!2335744) lambda!336206))))

(declare-fun bs!1526944 () Bool)

(assert (= bs!1526944 d!1930567))

(declare-fun m!6998996 () Bool)

(assert (=> bs!1526944 m!6998996))

(assert (=> b!6160217 d!1930567))

(declare-fun d!1930575 () Bool)

(assert (=> d!1930575 (= (head!12726 (t!378106 s!2326)) (h!70934 (t!378106 s!2326)))))

(assert (=> b!6160217 d!1930575))

(declare-fun d!1930579 () Bool)

(assert (=> d!1930579 (= (tail!11811 (t!378106 s!2326)) (t!378106 (t!378106 s!2326)))))

(assert (=> b!6160217 d!1930579))

(declare-fun d!1930581 () Bool)

(assert (=> d!1930581 (= (isEmpty!36453 (tail!11813 (exprs!5987 (h!70933 zl!343)))) ((_ is Nil!64484) (tail!11813 (exprs!5987 (h!70933 zl!343)))))))

(assert (=> b!6160633 d!1930581))

(declare-fun d!1930585 () Bool)

(assert (=> d!1930585 (= (tail!11813 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343))))))

(assert (=> b!6160633 d!1930585))

(assert (=> bs!1526857 d!1930341))

(declare-fun d!1930587 () Bool)

(assert (=> d!1930587 (= (nullable!6096 (reg!16432 r!7292)) (nullableFct!2060 (reg!16432 r!7292)))))

(declare-fun bs!1526954 () Bool)

(assert (= bs!1526954 d!1930587))

(declare-fun m!6999004 () Bool)

(assert (=> bs!1526954 m!6999004))

(assert (=> b!6160524 d!1930587))

(declare-fun d!1930589 () Bool)

(declare-fun lambda!336210 () Int)

(declare-fun exists!2448 ((InoxSet Context!10974) Int) Bool)

(assert (=> d!1930589 (= (nullableZipper!1884 lt!2335749) (exists!2448 lt!2335749 lambda!336210))))

(declare-fun bs!1526955 () Bool)

(assert (= bs!1526955 d!1930589))

(declare-fun m!6999010 () Bool)

(assert (=> bs!1526955 m!6999010))

(assert (=> b!6160526 d!1930589))

(declare-fun bm!513088 () Bool)

(declare-fun call!513098 () List!64608)

(declare-fun call!513095 () List!64608)

(assert (=> bm!513088 (= call!513098 call!513095)))

(declare-fun bm!513089 () Bool)

(declare-fun call!513094 () (InoxSet Context!10974))

(declare-fun call!513097 () (InoxSet Context!10974))

(assert (=> bm!513089 (= call!513094 call!513097)))

(declare-fun c!1109579 () Bool)

(declare-fun bm!513090 () Bool)

(declare-fun call!513096 () (InoxSet Context!10974))

(assert (=> bm!513090 (= call!513096 (derivationStepZipperDown!1351 (ite c!1109579 (regOne!32719 (h!70932 (exprs!5987 lt!2335757))) (regOne!32718 (h!70932 (exprs!5987 lt!2335757)))) (ite c!1109579 (Context!10975 (t!378104 (exprs!5987 lt!2335757))) (Context!10975 call!513095)) (h!70934 s!2326)))))

(declare-fun b!6160964 () Bool)

(declare-fun e!3753672 () (InoxSet Context!10974))

(assert (=> b!6160964 (= e!3753672 call!513094)))

(declare-fun bm!513091 () Bool)

(declare-fun call!513093 () (InoxSet Context!10974))

(assert (=> bm!513091 (= call!513097 call!513093)))

(declare-fun b!6160965 () Bool)

(declare-fun c!1109581 () Bool)

(assert (=> b!6160965 (= c!1109581 ((_ is Star!16103) (h!70932 (exprs!5987 lt!2335757))))))

(declare-fun e!3753671 () (InoxSet Context!10974))

(assert (=> b!6160965 (= e!3753672 e!3753671)))

(declare-fun b!6160966 () Bool)

(declare-fun e!3753676 () (InoxSet Context!10974))

(declare-fun e!3753675 () (InoxSet Context!10974))

(assert (=> b!6160966 (= e!3753676 e!3753675)))

(assert (=> b!6160966 (= c!1109579 ((_ is Union!16103) (h!70932 (exprs!5987 lt!2335757))))))

(declare-fun b!6160967 () Bool)

(declare-fun e!3753674 () (InoxSet Context!10974))

(assert (=> b!6160967 (= e!3753674 e!3753672)))

(declare-fun c!1109577 () Bool)

(assert (=> b!6160967 (= c!1109577 ((_ is Concat!24948) (h!70932 (exprs!5987 lt!2335757))))))

(declare-fun b!6160968 () Bool)

(assert (=> b!6160968 (= e!3753671 call!513094)))

(declare-fun bm!513092 () Bool)

(declare-fun c!1109580 () Bool)

(assert (=> bm!513092 (= call!513095 ($colon$colon!1980 (exprs!5987 (Context!10975 (t!378104 (exprs!5987 lt!2335757)))) (ite (or c!1109580 c!1109577) (regTwo!32718 (h!70932 (exprs!5987 lt!2335757))) (h!70932 (exprs!5987 lt!2335757)))))))

(declare-fun b!6160969 () Bool)

(declare-fun e!3753673 () Bool)

(assert (=> b!6160969 (= c!1109580 e!3753673)))

(declare-fun res!2551315 () Bool)

(assert (=> b!6160969 (=> (not res!2551315) (not e!3753673))))

(assert (=> b!6160969 (= res!2551315 ((_ is Concat!24948) (h!70932 (exprs!5987 lt!2335757))))))

(assert (=> b!6160969 (= e!3753675 e!3753674)))

(declare-fun b!6160970 () Bool)

(assert (=> b!6160970 (= e!3753675 ((_ map or) call!513096 call!513093))))

(declare-fun b!6160963 () Bool)

(assert (=> b!6160963 (= e!3753676 (store ((as const (Array Context!10974 Bool)) false) (Context!10975 (t!378104 (exprs!5987 lt!2335757))) true))))

(declare-fun d!1930593 () Bool)

(declare-fun c!1109578 () Bool)

(assert (=> d!1930593 (= c!1109578 (and ((_ is ElementMatch!16103) (h!70932 (exprs!5987 lt!2335757))) (= (c!1109260 (h!70932 (exprs!5987 lt!2335757))) (h!70934 s!2326))))))

(assert (=> d!1930593 (= (derivationStepZipperDown!1351 (h!70932 (exprs!5987 lt!2335757)) (Context!10975 (t!378104 (exprs!5987 lt!2335757))) (h!70934 s!2326)) e!3753676)))

(declare-fun b!6160971 () Bool)

(assert (=> b!6160971 (= e!3753674 ((_ map or) call!513096 call!513097))))

(declare-fun b!6160972 () Bool)

(assert (=> b!6160972 (= e!3753673 (nullable!6096 (regOne!32718 (h!70932 (exprs!5987 lt!2335757)))))))

(declare-fun b!6160973 () Bool)

(assert (=> b!6160973 (= e!3753671 ((as const (Array Context!10974 Bool)) false))))

(declare-fun bm!513093 () Bool)

(assert (=> bm!513093 (= call!513093 (derivationStepZipperDown!1351 (ite c!1109579 (regTwo!32719 (h!70932 (exprs!5987 lt!2335757))) (ite c!1109580 (regTwo!32718 (h!70932 (exprs!5987 lt!2335757))) (ite c!1109577 (regOne!32718 (h!70932 (exprs!5987 lt!2335757))) (reg!16432 (h!70932 (exprs!5987 lt!2335757)))))) (ite (or c!1109579 c!1109580) (Context!10975 (t!378104 (exprs!5987 lt!2335757))) (Context!10975 call!513098)) (h!70934 s!2326)))))

(assert (= (and d!1930593 c!1109578) b!6160963))

(assert (= (and d!1930593 (not c!1109578)) b!6160966))

(assert (= (and b!6160966 c!1109579) b!6160970))

(assert (= (and b!6160966 (not c!1109579)) b!6160969))

(assert (= (and b!6160969 res!2551315) b!6160972))

(assert (= (and b!6160969 c!1109580) b!6160971))

(assert (= (and b!6160969 (not c!1109580)) b!6160967))

(assert (= (and b!6160967 c!1109577) b!6160964))

(assert (= (and b!6160967 (not c!1109577)) b!6160965))

(assert (= (and b!6160965 c!1109581) b!6160968))

(assert (= (and b!6160965 (not c!1109581)) b!6160973))

(assert (= (or b!6160964 b!6160968) bm!513088))

(assert (= (or b!6160964 b!6160968) bm!513089))

(assert (= (or b!6160971 bm!513088) bm!513092))

(assert (= (or b!6160971 bm!513089) bm!513091))

(assert (= (or b!6160970 bm!513091) bm!513093))

(assert (= (or b!6160970 b!6160971) bm!513090))

(declare-fun m!6999022 () Bool)

(assert (=> bm!513092 m!6999022))

(declare-fun m!6999024 () Bool)

(assert (=> bm!513093 m!6999024))

(declare-fun m!6999026 () Bool)

(assert (=> bm!513090 m!6999026))

(declare-fun m!6999028 () Bool)

(assert (=> b!6160963 m!6999028))

(declare-fun m!6999032 () Bool)

(assert (=> b!6160972 m!6999032))

(assert (=> bm!513033 d!1930593))

(declare-fun d!1930597 () Bool)

(assert (=> d!1930597 (= (nullable!6096 (h!70932 (exprs!5987 lt!2335742))) (nullableFct!2060 (h!70932 (exprs!5987 lt!2335742))))))

(declare-fun bs!1526956 () Bool)

(assert (= bs!1526956 d!1930597))

(declare-fun m!6999036 () Bool)

(assert (=> bs!1526956 m!6999036))

(assert (=> b!6160409 d!1930597))

(declare-fun d!1930599 () Bool)

(assert (=> d!1930599 (= (Exists!3173 (ite c!1109390 lambda!336159 lambda!336160)) (choose!45805 (ite c!1109390 lambda!336159 lambda!336160)))))

(declare-fun bs!1526957 () Bool)

(assert (= bs!1526957 d!1930599))

(declare-fun m!6999040 () Bool)

(assert (=> bs!1526957 m!6999040))

(assert (=> bm!512984 d!1930599))

(declare-fun d!1930601 () Bool)

(assert (=> d!1930601 (= (head!12726 s!2326) (h!70934 s!2326))))

(assert (=> b!6160384 d!1930601))

(declare-fun d!1930603 () Bool)

(assert (=> d!1930603 (= (nullable!6096 (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343))))) (nullableFct!2060 (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343))))))))

(declare-fun bs!1526958 () Bool)

(assert (= bs!1526958 d!1930603))

(declare-fun m!6999046 () Bool)

(assert (=> bs!1526958 m!6999046))

(assert (=> b!6160596 d!1930603))

(declare-fun d!1930607 () Bool)

(assert (=> d!1930607 (= (isEmpty!36455 (t!378106 s!2326)) ((_ is Nil!64486) (t!378106 s!2326)))))

(assert (=> d!1930325 d!1930607))

(declare-fun b!6160999 () Bool)

(declare-fun e!3753692 () (InoxSet Context!10974))

(assert (=> b!6160999 (= e!3753692 ((as const (Array Context!10974 Bool)) false))))

(declare-fun b!6161000 () Bool)

(declare-fun call!513106 () (InoxSet Context!10974))

(assert (=> b!6161000 (= e!3753692 call!513106)))

(declare-fun bm!513101 () Bool)

(assert (=> bm!513101 (= call!513106 (derivationStepZipperDown!1351 (h!70932 (exprs!5987 (Context!10975 (t!378104 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343)))))))))) (Context!10975 (t!378104 (exprs!5987 (Context!10975 (t!378104 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343))))))))))) (h!70934 s!2326)))))

(declare-fun b!6161001 () Bool)

(declare-fun e!3753691 () (InoxSet Context!10974))

(assert (=> b!6161001 (= e!3753691 e!3753692)))

(declare-fun c!1109591 () Bool)

(assert (=> b!6161001 (= c!1109591 ((_ is Cons!64484) (exprs!5987 (Context!10975 (t!378104 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343)))))))))))))

(declare-fun d!1930615 () Bool)

(declare-fun c!1109590 () Bool)

(declare-fun e!3753690 () Bool)

(assert (=> d!1930615 (= c!1109590 e!3753690)))

(declare-fun res!2551325 () Bool)

(assert (=> d!1930615 (=> (not res!2551325) (not e!3753690))))

(assert (=> d!1930615 (= res!2551325 ((_ is Cons!64484) (exprs!5987 (Context!10975 (t!378104 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343)))))))))))))

(assert (=> d!1930615 (= (derivationStepZipperUp!1277 (Context!10975 (t!378104 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343)))))))) (h!70934 s!2326)) e!3753691)))

(declare-fun b!6161002 () Bool)

(assert (=> b!6161002 (= e!3753691 ((_ map or) call!513106 (derivationStepZipperUp!1277 (Context!10975 (t!378104 (exprs!5987 (Context!10975 (t!378104 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343))))))))))) (h!70934 s!2326))))))

(declare-fun b!6161003 () Bool)

(assert (=> b!6161003 (= e!3753690 (nullable!6096 (h!70932 (exprs!5987 (Context!10975 (t!378104 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343))))))))))))))

(assert (= (and d!1930615 res!2551325) b!6161003))

(assert (= (and d!1930615 c!1109590) b!6161002))

(assert (= (and d!1930615 (not c!1109590)) b!6161001))

(assert (= (and b!6161001 c!1109591) b!6161000))

(assert (= (and b!6161001 (not c!1109591)) b!6160999))

(assert (= (or b!6161002 b!6161000) bm!513101))

(declare-fun m!6999050 () Bool)

(assert (=> bm!513101 m!6999050))

(declare-fun m!6999056 () Bool)

(assert (=> b!6161002 m!6999056))

(declare-fun m!6999058 () Bool)

(assert (=> b!6161003 m!6999058))

(assert (=> b!6160585 d!1930615))

(assert (=> d!1930321 d!1930319))

(assert (=> d!1930321 d!1930311))

(declare-fun d!1930617 () Bool)

(assert (=> d!1930617 (= (matchR!8286 r!7292 s!2326) (matchRSpec!3204 r!7292 s!2326))))

(assert (=> d!1930617 true))

(declare-fun _$88!4725 () Unit!157603)

(assert (=> d!1930617 (= (choose!45802 r!7292 s!2326) _$88!4725)))

(declare-fun bs!1526960 () Bool)

(assert (= bs!1526960 d!1930617))

(assert (=> bs!1526960 m!6998106))

(assert (=> bs!1526960 m!6998104))

(assert (=> d!1930321 d!1930617))

(assert (=> d!1930321 d!1930359))

(declare-fun d!1930627 () Bool)

(assert (=> d!1930627 (= (isEmpty!36455 (tail!11811 s!2326)) ((_ is Nil!64486) (tail!11811 s!2326)))))

(assert (=> b!6160380 d!1930627))

(declare-fun d!1930629 () Bool)

(assert (=> d!1930629 (= (tail!11811 s!2326) (t!378106 s!2326))))

(assert (=> b!6160380 d!1930629))

(declare-fun d!1930631 () Bool)

(assert (=> d!1930631 (= ($colon$colon!1980 (exprs!5987 lt!2335757) (ite (or c!1109475 c!1109472) (regTwo!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (h!70932 (exprs!5987 (h!70933 zl!343))))) (Cons!64484 (ite (or c!1109475 c!1109472) (regTwo!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (h!70932 (exprs!5987 (h!70933 zl!343)))) (exprs!5987 lt!2335757)))))

(assert (=> bm!513030 d!1930631))

(assert (=> b!6160390 d!1930365))

(declare-fun d!1930633 () Bool)

(declare-fun res!2551333 () Bool)

(declare-fun e!3753711 () Bool)

(assert (=> d!1930633 (=> res!2551333 e!3753711)))

(assert (=> d!1930633 (= res!2551333 ((_ is Nil!64484) lt!2335842))))

(assert (=> d!1930633 (= (forall!15224 lt!2335842 lambda!336166) e!3753711)))

(declare-fun b!6161033 () Bool)

(declare-fun e!3753712 () Bool)

(assert (=> b!6161033 (= e!3753711 e!3753712)))

(declare-fun res!2551334 () Bool)

(assert (=> b!6161033 (=> (not res!2551334) (not e!3753712))))

(declare-fun dynLambda!25426 (Int Regex!16103) Bool)

(assert (=> b!6161033 (= res!2551334 (dynLambda!25426 lambda!336166 (h!70932 lt!2335842)))))

(declare-fun b!6161034 () Bool)

(assert (=> b!6161034 (= e!3753712 (forall!15224 (t!378104 lt!2335842) lambda!336166))))

(assert (= (and d!1930633 (not res!2551333)) b!6161033))

(assert (= (and b!6161033 res!2551334) b!6161034))

(declare-fun b_lambda!234529 () Bool)

(assert (=> (not b_lambda!234529) (not b!6161033)))

(declare-fun m!6999084 () Bool)

(assert (=> b!6161033 m!6999084))

(declare-fun m!6999086 () Bool)

(assert (=> b!6161034 m!6999086))

(assert (=> d!1930355 d!1930633))

(assert (=> b!6160497 d!1930409))

(declare-fun bs!1526969 () Bool)

(declare-fun d!1930641 () Bool)

(assert (= bs!1526969 (and d!1930641 d!1930411)))

(declare-fun lambda!336212 () Int)

(assert (=> bs!1526969 (= lambda!336212 lambda!336183)))

(declare-fun bs!1526970 () Bool)

(assert (= bs!1526970 (and d!1930641 d!1930355)))

(assert (=> bs!1526970 (= lambda!336212 lambda!336166)))

(declare-fun bs!1526971 () Bool)

(assert (= bs!1526971 (and d!1930641 d!1930357)))

(assert (=> bs!1526971 (= lambda!336212 lambda!336169)))

(declare-fun bs!1526972 () Bool)

(assert (= bs!1526972 (and d!1930641 d!1930409)))

(assert (=> bs!1526972 (= lambda!336212 lambda!336182)))

(declare-fun bs!1526973 () Bool)

(assert (= bs!1526973 (and d!1930641 d!1930361)))

(assert (=> bs!1526973 (= lambda!336212 lambda!336170)))

(declare-fun bs!1526974 () Bool)

(assert (= bs!1526974 (and d!1930641 d!1930353)))

(assert (=> bs!1526974 (= lambda!336212 lambda!336163)))

(declare-fun lt!2335884 () List!64608)

(assert (=> d!1930641 (forall!15224 lt!2335884 lambda!336212)))

(declare-fun e!3753713 () List!64608)

(assert (=> d!1930641 (= lt!2335884 e!3753713)))

(declare-fun c!1109603 () Bool)

(assert (=> d!1930641 (= c!1109603 ((_ is Cons!64485) (t!378105 zl!343)))))

(assert (=> d!1930641 (= (unfocusZipperList!1524 (t!378105 zl!343)) lt!2335884)))

(declare-fun b!6161035 () Bool)

(assert (=> b!6161035 (= e!3753713 (Cons!64484 (generalisedConcat!1700 (exprs!5987 (h!70933 (t!378105 zl!343)))) (unfocusZipperList!1524 (t!378105 (t!378105 zl!343)))))))

(declare-fun b!6161036 () Bool)

(assert (=> b!6161036 (= e!3753713 Nil!64484)))

(assert (= (and d!1930641 c!1109603) b!6161035))

(assert (= (and d!1930641 (not c!1109603)) b!6161036))

(declare-fun m!6999098 () Bool)

(assert (=> d!1930641 m!6999098))

(declare-fun m!6999100 () Bool)

(assert (=> b!6161035 m!6999100))

(declare-fun m!6999102 () Bool)

(assert (=> b!6161035 m!6999102))

(assert (=> b!6160497 d!1930641))

(assert (=> d!1930299 d!1930607))

(declare-fun bm!513126 () Bool)

(declare-fun call!513132 () Bool)

(declare-fun c!1109615 () Bool)

(assert (=> bm!513126 (= call!513132 (nullable!6096 (ite c!1109615 (regOne!32719 (regOne!32719 (regOne!32718 r!7292))) (regOne!32718 (regOne!32719 (regOne!32718 r!7292))))))))

(declare-fun b!6161073 () Bool)

(declare-fun e!3753739 () Bool)

(declare-fun e!3753741 () Bool)

(assert (=> b!6161073 (= e!3753739 e!3753741)))

(assert (=> b!6161073 (= c!1109615 ((_ is Union!16103) (regOne!32719 (regOne!32718 r!7292))))))

(declare-fun b!6161074 () Bool)

(declare-fun e!3753740 () Bool)

(declare-fun e!3753743 () Bool)

(assert (=> b!6161074 (= e!3753740 e!3753743)))

(declare-fun res!2551349 () Bool)

(assert (=> b!6161074 (=> (not res!2551349) (not e!3753743))))

(assert (=> b!6161074 (= res!2551349 (and (not ((_ is EmptyLang!16103) (regOne!32719 (regOne!32718 r!7292)))) (not ((_ is ElementMatch!16103) (regOne!32719 (regOne!32718 r!7292))))))))

(declare-fun b!6161075 () Bool)

(declare-fun e!3753742 () Bool)

(declare-fun call!513131 () Bool)

(assert (=> b!6161075 (= e!3753742 call!513131)))

(declare-fun b!6161076 () Bool)

(assert (=> b!6161076 (= e!3753741 e!3753742)))

(declare-fun res!2551353 () Bool)

(assert (=> b!6161076 (= res!2551353 call!513132)))

(assert (=> b!6161076 (=> (not res!2551353) (not e!3753742))))

(declare-fun b!6161077 () Bool)

(assert (=> b!6161077 (= e!3753743 e!3753739)))

(declare-fun res!2551352 () Bool)

(assert (=> b!6161077 (=> res!2551352 e!3753739)))

(assert (=> b!6161077 (= res!2551352 ((_ is Star!16103) (regOne!32719 (regOne!32718 r!7292))))))

(declare-fun b!6161078 () Bool)

(declare-fun e!3753744 () Bool)

(assert (=> b!6161078 (= e!3753744 call!513131)))

(declare-fun d!1930645 () Bool)

(declare-fun res!2551350 () Bool)

(assert (=> d!1930645 (=> res!2551350 e!3753740)))

(assert (=> d!1930645 (= res!2551350 ((_ is EmptyExpr!16103) (regOne!32719 (regOne!32718 r!7292))))))

(assert (=> d!1930645 (= (nullableFct!2060 (regOne!32719 (regOne!32718 r!7292))) e!3753740)))

(declare-fun b!6161079 () Bool)

(assert (=> b!6161079 (= e!3753741 e!3753744)))

(declare-fun res!2551351 () Bool)

(assert (=> b!6161079 (= res!2551351 call!513132)))

(assert (=> b!6161079 (=> res!2551351 e!3753744)))

(declare-fun bm!513127 () Bool)

(assert (=> bm!513127 (= call!513131 (nullable!6096 (ite c!1109615 (regTwo!32719 (regOne!32719 (regOne!32718 r!7292))) (regTwo!32718 (regOne!32719 (regOne!32718 r!7292))))))))

(assert (= (and d!1930645 (not res!2551350)) b!6161074))

(assert (= (and b!6161074 res!2551349) b!6161077))

(assert (= (and b!6161077 (not res!2551352)) b!6161073))

(assert (= (and b!6161073 c!1109615) b!6161079))

(assert (= (and b!6161073 (not c!1109615)) b!6161076))

(assert (= (and b!6161079 (not res!2551351)) b!6161078))

(assert (= (and b!6161076 res!2551353) b!6161075))

(assert (= (or b!6161078 b!6161075) bm!513127))

(assert (= (or b!6161079 b!6161076) bm!513126))

(declare-fun m!6999114 () Bool)

(assert (=> bm!513126 m!6999114))

(declare-fun m!6999116 () Bool)

(assert (=> bm!513127 m!6999116))

(assert (=> d!1930343 d!1930645))

(declare-fun d!1930651 () Bool)

(declare-fun c!1109616 () Bool)

(assert (=> d!1930651 (= c!1109616 (isEmpty!36455 (tail!11811 (t!378106 s!2326))))))

(declare-fun e!3753745 () Bool)

(assert (=> d!1930651 (= (matchZipper!2115 (derivationStepZipper!2076 lt!2335761 (head!12726 (t!378106 s!2326))) (tail!11811 (t!378106 s!2326))) e!3753745)))

(declare-fun b!6161080 () Bool)

(assert (=> b!6161080 (= e!3753745 (nullableZipper!1884 (derivationStepZipper!2076 lt!2335761 (head!12726 (t!378106 s!2326)))))))

(declare-fun b!6161081 () Bool)

(assert (=> b!6161081 (= e!3753745 (matchZipper!2115 (derivationStepZipper!2076 (derivationStepZipper!2076 lt!2335761 (head!12726 (t!378106 s!2326))) (head!12726 (tail!11811 (t!378106 s!2326)))) (tail!11811 (tail!11811 (t!378106 s!2326)))))))

(assert (= (and d!1930651 c!1109616) b!6161080))

(assert (= (and d!1930651 (not c!1109616)) b!6161081))

(assert (=> d!1930651 m!6998394))

(assert (=> d!1930651 m!6998964))

(assert (=> b!6161080 m!6998588))

(declare-fun m!6999124 () Bool)

(assert (=> b!6161080 m!6999124))

(assert (=> b!6161081 m!6998394))

(assert (=> b!6161081 m!6998968))

(assert (=> b!6161081 m!6998588))

(assert (=> b!6161081 m!6998968))

(declare-fun m!6999126 () Bool)

(assert (=> b!6161081 m!6999126))

(assert (=> b!6161081 m!6998394))

(assert (=> b!6161081 m!6998972))

(assert (=> b!6161081 m!6999126))

(assert (=> b!6161081 m!6998972))

(declare-fun m!6999128 () Bool)

(assert (=> b!6161081 m!6999128))

(assert (=> b!6160533 d!1930651))

(declare-fun bs!1526991 () Bool)

(declare-fun d!1930655 () Bool)

(assert (= bs!1526991 (and d!1930655 b!6159868)))

(declare-fun lambda!336215 () Int)

(assert (=> bs!1526991 (= (= (head!12726 (t!378106 s!2326)) (h!70934 s!2326)) (= lambda!336215 lambda!336125))))

(declare-fun bs!1526992 () Bool)

(assert (= bs!1526992 (and d!1930655 d!1930567)))

(assert (=> bs!1526992 (= lambda!336215 lambda!336206)))

(assert (=> d!1930655 true))

(assert (=> d!1930655 (= (derivationStepZipper!2076 lt!2335761 (head!12726 (t!378106 s!2326))) (flatMap!1608 lt!2335761 lambda!336215))))

(declare-fun bs!1526994 () Bool)

(assert (= bs!1526994 d!1930655))

(declare-fun m!6999136 () Bool)

(assert (=> bs!1526994 m!6999136))

(assert (=> b!6160533 d!1930655))

(assert (=> b!6160533 d!1930575))

(assert (=> b!6160533 d!1930579))

(assert (=> d!1930393 d!1930401))

(declare-fun d!1930659 () Bool)

(assert (=> d!1930659 (= (flatMap!1608 z!1189 lambda!336125) (dynLambda!25425 lambda!336125 (h!70933 zl!343)))))

(assert (=> d!1930659 true))

(declare-fun _$13!3112 () Unit!157603)

(assert (=> d!1930659 (= (choose!45804 z!1189 (h!70933 zl!343) lambda!336125) _$13!3112)))

(declare-fun b_lambda!234533 () Bool)

(assert (=> (not b_lambda!234533) (not d!1930659)))

(declare-fun bs!1527000 () Bool)

(assert (= bs!1527000 d!1930659))

(assert (=> bs!1527000 m!6998054))

(assert (=> bs!1527000 m!6998646))

(assert (=> d!1930393 d!1930659))

(declare-fun d!1930665 () Bool)

(declare-fun c!1109620 () Bool)

(assert (=> d!1930665 (= c!1109620 (isEmpty!36455 (tail!11811 (t!378106 s!2326))))))

(declare-fun e!3753754 () Bool)

(assert (=> d!1930665 (= (matchZipper!2115 (derivationStepZipper!2076 lt!2335744 (head!12726 (t!378106 s!2326))) (tail!11811 (t!378106 s!2326))) e!3753754)))

(declare-fun b!6161093 () Bool)

(assert (=> b!6161093 (= e!3753754 (nullableZipper!1884 (derivationStepZipper!2076 lt!2335744 (head!12726 (t!378106 s!2326)))))))

(declare-fun b!6161094 () Bool)

(assert (=> b!6161094 (= e!3753754 (matchZipper!2115 (derivationStepZipper!2076 (derivationStepZipper!2076 lt!2335744 (head!12726 (t!378106 s!2326))) (head!12726 (tail!11811 (t!378106 s!2326)))) (tail!11811 (tail!11811 (t!378106 s!2326)))))))

(assert (= (and d!1930665 c!1109620) b!6161093))

(assert (= (and d!1930665 (not c!1109620)) b!6161094))

(assert (=> d!1930665 m!6998394))

(assert (=> d!1930665 m!6998964))

(assert (=> b!6161093 m!6998576))

(declare-fun m!6999148 () Bool)

(assert (=> b!6161093 m!6999148))

(assert (=> b!6161094 m!6998394))

(assert (=> b!6161094 m!6998968))

(assert (=> b!6161094 m!6998576))

(assert (=> b!6161094 m!6998968))

(declare-fun m!6999150 () Bool)

(assert (=> b!6161094 m!6999150))

(assert (=> b!6161094 m!6998394))

(assert (=> b!6161094 m!6998972))

(assert (=> b!6161094 m!6999150))

(assert (=> b!6161094 m!6998972))

(declare-fun m!6999152 () Bool)

(assert (=> b!6161094 m!6999152))

(assert (=> b!6160529 d!1930665))

(declare-fun bs!1527002 () Bool)

(declare-fun d!1930671 () Bool)

(assert (= bs!1527002 (and d!1930671 b!6159868)))

(declare-fun lambda!336217 () Int)

(assert (=> bs!1527002 (= (= (head!12726 (t!378106 s!2326)) (h!70934 s!2326)) (= lambda!336217 lambda!336125))))

(declare-fun bs!1527003 () Bool)

(assert (= bs!1527003 (and d!1930671 d!1930567)))

(assert (=> bs!1527003 (= lambda!336217 lambda!336206)))

(declare-fun bs!1527004 () Bool)

(assert (= bs!1527004 (and d!1930671 d!1930655)))

(assert (=> bs!1527004 (= lambda!336217 lambda!336215)))

(assert (=> d!1930671 true))

(assert (=> d!1930671 (= (derivationStepZipper!2076 lt!2335744 (head!12726 (t!378106 s!2326))) (flatMap!1608 lt!2335744 lambda!336217))))

(declare-fun bs!1527005 () Bool)

(assert (= bs!1527005 d!1930671))

(declare-fun m!6999154 () Bool)

(assert (=> bs!1527005 m!6999154))

(assert (=> b!6160529 d!1930671))

(assert (=> b!6160529 d!1930575))

(assert (=> b!6160529 d!1930579))

(assert (=> d!1930369 d!1930607))

(declare-fun b!6161095 () Bool)

(declare-fun e!3753761 () Bool)

(declare-fun call!513136 () Bool)

(assert (=> b!6161095 (= e!3753761 call!513136)))

(declare-fun bm!513131 () Bool)

(declare-fun c!1109622 () Bool)

(assert (=> bm!513131 (= call!513136 (validRegex!7839 (ite c!1109622 (regTwo!32719 lt!2335872) (regTwo!32718 lt!2335872))))))

(declare-fun b!6161096 () Bool)

(declare-fun e!3753760 () Bool)

(declare-fun call!513138 () Bool)

(assert (=> b!6161096 (= e!3753760 call!513138)))

(declare-fun c!1109621 () Bool)

(declare-fun bm!513132 () Bool)

(assert (=> bm!513132 (= call!513138 (validRegex!7839 (ite c!1109621 (reg!16432 lt!2335872) (ite c!1109622 (regOne!32719 lt!2335872) (regOne!32718 lt!2335872)))))))

(declare-fun b!6161097 () Bool)

(declare-fun res!2551359 () Bool)

(assert (=> b!6161097 (=> (not res!2551359) (not e!3753761))))

(declare-fun call!513137 () Bool)

(assert (=> b!6161097 (= res!2551359 call!513137)))

(declare-fun e!3753755 () Bool)

(assert (=> b!6161097 (= e!3753755 e!3753761)))

(declare-fun b!6161098 () Bool)

(declare-fun e!3753757 () Bool)

(assert (=> b!6161098 (= e!3753757 e!3753755)))

(assert (=> b!6161098 (= c!1109622 ((_ is Union!16103) lt!2335872))))

(declare-fun b!6161099 () Bool)

(declare-fun e!3753756 () Bool)

(declare-fun e!3753758 () Bool)

(assert (=> b!6161099 (= e!3753756 e!3753758)))

(declare-fun res!2551360 () Bool)

(assert (=> b!6161099 (=> (not res!2551360) (not e!3753758))))

(assert (=> b!6161099 (= res!2551360 call!513137)))

(declare-fun bm!513133 () Bool)

(assert (=> bm!513133 (= call!513137 call!513138)))

(declare-fun b!6161101 () Bool)

(declare-fun e!3753759 () Bool)

(assert (=> b!6161101 (= e!3753759 e!3753757)))

(assert (=> b!6161101 (= c!1109621 ((_ is Star!16103) lt!2335872))))

(declare-fun b!6161100 () Bool)

(declare-fun res!2551362 () Bool)

(assert (=> b!6161100 (=> res!2551362 e!3753756)))

(assert (=> b!6161100 (= res!2551362 (not ((_ is Concat!24948) lt!2335872)))))

(assert (=> b!6161100 (= e!3753755 e!3753756)))

(declare-fun d!1930673 () Bool)

(declare-fun res!2551363 () Bool)

(assert (=> d!1930673 (=> res!2551363 e!3753759)))

(assert (=> d!1930673 (= res!2551363 ((_ is ElementMatch!16103) lt!2335872))))

(assert (=> d!1930673 (= (validRegex!7839 lt!2335872) e!3753759)))

(declare-fun b!6161102 () Bool)

(assert (=> b!6161102 (= e!3753757 e!3753760)))

(declare-fun res!2551361 () Bool)

(assert (=> b!6161102 (= res!2551361 (not (nullable!6096 (reg!16432 lt!2335872))))))

(assert (=> b!6161102 (=> (not res!2551361) (not e!3753760))))

(declare-fun b!6161103 () Bool)

(assert (=> b!6161103 (= e!3753758 call!513136)))

(assert (= (and d!1930673 (not res!2551363)) b!6161101))

(assert (= (and b!6161101 c!1109621) b!6161102))

(assert (= (and b!6161101 (not c!1109621)) b!6161098))

(assert (= (and b!6161102 res!2551361) b!6161096))

(assert (= (and b!6161098 c!1109622) b!6161097))

(assert (= (and b!6161098 (not c!1109622)) b!6161100))

(assert (= (and b!6161097 res!2551359) b!6161095))

(assert (= (and b!6161100 (not res!2551362)) b!6161099))

(assert (= (and b!6161099 res!2551360) b!6161103))

(assert (= (or b!6161095 b!6161103) bm!513131))

(assert (= (or b!6161097 b!6161099) bm!513133))

(assert (= (or b!6161096 bm!513133) bm!513132))

(declare-fun m!6999156 () Bool)

(assert (=> bm!513131 m!6999156))

(declare-fun m!6999158 () Bool)

(assert (=> bm!513132 m!6999158))

(declare-fun m!6999160 () Bool)

(assert (=> b!6161102 m!6999160))

(assert (=> d!1930409 d!1930673))

(declare-fun d!1930675 () Bool)

(declare-fun res!2551364 () Bool)

(declare-fun e!3753762 () Bool)

(assert (=> d!1930675 (=> res!2551364 e!3753762)))

(assert (=> d!1930675 (= res!2551364 ((_ is Nil!64484) (exprs!5987 (h!70933 zl!343))))))

(assert (=> d!1930675 (= (forall!15224 (exprs!5987 (h!70933 zl!343)) lambda!336182) e!3753762)))

(declare-fun b!6161104 () Bool)

(declare-fun e!3753763 () Bool)

(assert (=> b!6161104 (= e!3753762 e!3753763)))

(declare-fun res!2551365 () Bool)

(assert (=> b!6161104 (=> (not res!2551365) (not e!3753763))))

(assert (=> b!6161104 (= res!2551365 (dynLambda!25426 lambda!336182 (h!70932 (exprs!5987 (h!70933 zl!343)))))))

(declare-fun b!6161105 () Bool)

(assert (=> b!6161105 (= e!3753763 (forall!15224 (t!378104 (exprs!5987 (h!70933 zl!343))) lambda!336182))))

(assert (= (and d!1930675 (not res!2551364)) b!6161104))

(assert (= (and b!6161104 res!2551365) b!6161105))

(declare-fun b_lambda!234535 () Bool)

(assert (=> (not b_lambda!234535) (not b!6161104)))

(declare-fun m!6999162 () Bool)

(assert (=> b!6161104 m!6999162))

(declare-fun m!6999164 () Bool)

(assert (=> b!6161105 m!6999164))

(assert (=> d!1930409 d!1930675))

(declare-fun d!1930677 () Bool)

(assert (=> d!1930677 (= (isEmpty!36455 s!2326) ((_ is Nil!64486) s!2326))))

(assert (=> bm!512983 d!1930677))

(declare-fun d!1930679 () Bool)

(assert (=> d!1930679 true))

(assert (=> d!1930679 true))

(declare-fun res!2551368 () Bool)

(assert (=> d!1930679 (= (choose!45805 lambda!336124) res!2551368)))

(assert (=> d!1930383 d!1930679))

(declare-fun d!1930681 () Bool)

(declare-fun res!2551369 () Bool)

(declare-fun e!3753764 () Bool)

(assert (=> d!1930681 (=> res!2551369 e!3753764)))

(assert (=> d!1930681 (= res!2551369 ((_ is Nil!64484) (exprs!5987 lt!2335742)))))

(assert (=> d!1930681 (= (forall!15224 (exprs!5987 lt!2335742) lambda!336170) e!3753764)))

(declare-fun b!6161106 () Bool)

(declare-fun e!3753765 () Bool)

(assert (=> b!6161106 (= e!3753764 e!3753765)))

(declare-fun res!2551370 () Bool)

(assert (=> b!6161106 (=> (not res!2551370) (not e!3753765))))

(assert (=> b!6161106 (= res!2551370 (dynLambda!25426 lambda!336170 (h!70932 (exprs!5987 lt!2335742))))))

(declare-fun b!6161107 () Bool)

(assert (=> b!6161107 (= e!3753765 (forall!15224 (t!378104 (exprs!5987 lt!2335742)) lambda!336170))))

(assert (= (and d!1930681 (not res!2551369)) b!6161106))

(assert (= (and b!6161106 res!2551370) b!6161107))

(declare-fun b_lambda!234537 () Bool)

(assert (=> (not b_lambda!234537) (not b!6161106)))

(declare-fun m!6999166 () Bool)

(assert (=> b!6161106 m!6999166))

(declare-fun m!6999168 () Bool)

(assert (=> b!6161107 m!6999168))

(assert (=> d!1930361 d!1930681))

(declare-fun b!6161121 () Bool)

(declare-fun e!3753772 () List!64610)

(assert (=> b!6161121 (= e!3753772 (Cons!64486 (h!70934 (_1!36385 (get!22256 lt!2335853))) (++!14189 (t!378106 (_1!36385 (get!22256 lt!2335853))) (_2!36385 (get!22256 lt!2335853)))))))

(declare-fun d!1930683 () Bool)

(declare-fun e!3753773 () Bool)

(assert (=> d!1930683 e!3753773))

(declare-fun res!2551379 () Bool)

(assert (=> d!1930683 (=> (not res!2551379) (not e!3753773))))

(declare-fun lt!2335887 () List!64610)

(declare-fun content!12028 (List!64610) (InoxSet C!32476))

(assert (=> d!1930683 (= res!2551379 (= (content!12028 lt!2335887) ((_ map or) (content!12028 (_1!36385 (get!22256 lt!2335853))) (content!12028 (_2!36385 (get!22256 lt!2335853))))))))

(assert (=> d!1930683 (= lt!2335887 e!3753772)))

(declare-fun c!1109625 () Bool)

(assert (=> d!1930683 (= c!1109625 ((_ is Nil!64486) (_1!36385 (get!22256 lt!2335853))))))

(assert (=> d!1930683 (= (++!14189 (_1!36385 (get!22256 lt!2335853)) (_2!36385 (get!22256 lt!2335853))) lt!2335887)))

(declare-fun b!6161123 () Bool)

(assert (=> b!6161123 (= e!3753773 (or (not (= (_2!36385 (get!22256 lt!2335853)) Nil!64486)) (= lt!2335887 (_1!36385 (get!22256 lt!2335853)))))))

(declare-fun b!6161120 () Bool)

(assert (=> b!6161120 (= e!3753772 (_2!36385 (get!22256 lt!2335853)))))

(declare-fun b!6161122 () Bool)

(declare-fun res!2551380 () Bool)

(assert (=> b!6161122 (=> (not res!2551380) (not e!3753773))))

(declare-fun size!40243 (List!64610) Int)

(assert (=> b!6161122 (= res!2551380 (= (size!40243 lt!2335887) (+ (size!40243 (_1!36385 (get!22256 lt!2335853))) (size!40243 (_2!36385 (get!22256 lt!2335853))))))))

(assert (= (and d!1930683 c!1109625) b!6161120))

(assert (= (and d!1930683 (not c!1109625)) b!6161121))

(assert (= (and d!1930683 res!2551379) b!6161122))

(assert (= (and b!6161122 res!2551380) b!6161123))

(declare-fun m!6999172 () Bool)

(assert (=> b!6161121 m!6999172))

(declare-fun m!6999174 () Bool)

(assert (=> d!1930683 m!6999174))

(declare-fun m!6999176 () Bool)

(assert (=> d!1930683 m!6999176))

(declare-fun m!6999178 () Bool)

(assert (=> d!1930683 m!6999178))

(declare-fun m!6999180 () Bool)

(assert (=> b!6161122 m!6999180))

(declare-fun m!6999184 () Bool)

(assert (=> b!6161122 m!6999184))

(declare-fun m!6999186 () Bool)

(assert (=> b!6161122 m!6999186))

(assert (=> b!6160561 d!1930683))

(declare-fun d!1930687 () Bool)

(assert (=> d!1930687 (= (get!22256 lt!2335853) (v!52132 lt!2335853))))

(assert (=> b!6160561 d!1930687))

(assert (=> d!1930323 d!1930327))

(assert (=> d!1930323 d!1930325))

(declare-fun e!3753778 () Bool)

(declare-fun d!1930691 () Bool)

(assert (=> d!1930691 (= (matchZipper!2115 ((_ map or) lt!2335764 lt!2335744) (t!378106 s!2326)) e!3753778)))

(declare-fun res!2551383 () Bool)

(assert (=> d!1930691 (=> res!2551383 e!3753778)))

(assert (=> d!1930691 (= res!2551383 (matchZipper!2115 lt!2335764 (t!378106 s!2326)))))

(assert (=> d!1930691 true))

(declare-fun _$48!1736 () Unit!157603)

(assert (=> d!1930691 (= (choose!45800 lt!2335764 lt!2335744 (t!378106 s!2326)) _$48!1736)))

(declare-fun b!6161130 () Bool)

(assert (=> b!6161130 (= e!3753778 (matchZipper!2115 lt!2335744 (t!378106 s!2326)))))

(assert (= (and d!1930691 (not res!2551383)) b!6161130))

(assert (=> d!1930691 m!6998008))

(assert (=> d!1930691 m!6998006))

(assert (=> b!6161130 m!6998062))

(assert (=> d!1930323 d!1930691))

(declare-fun bm!513134 () Bool)

(declare-fun call!513139 () Bool)

(assert (=> bm!513134 (= call!513139 (isEmpty!36455 (_1!36385 (get!22256 lt!2335853))))))

(declare-fun b!6161131 () Bool)

(declare-fun e!3753780 () Bool)

(declare-fun e!3753782 () Bool)

(assert (=> b!6161131 (= e!3753780 e!3753782)))

(declare-fun res!2551389 () Bool)

(assert (=> b!6161131 (=> (not res!2551389) (not e!3753782))))

(declare-fun lt!2335888 () Bool)

(assert (=> b!6161131 (= res!2551389 (not lt!2335888))))

(declare-fun b!6161132 () Bool)

(declare-fun res!2551391 () Bool)

(declare-fun e!3753781 () Bool)

(assert (=> b!6161132 (=> res!2551391 e!3753781)))

(assert (=> b!6161132 (= res!2551391 (not (isEmpty!36455 (tail!11811 (_1!36385 (get!22256 lt!2335853))))))))

(declare-fun b!6161134 () Bool)

(declare-fun e!3753779 () Bool)

(assert (=> b!6161134 (= e!3753779 (not lt!2335888))))

(declare-fun b!6161135 () Bool)

(declare-fun res!2551384 () Bool)

(declare-fun e!3753785 () Bool)

(assert (=> b!6161135 (=> (not res!2551384) (not e!3753785))))

(assert (=> b!6161135 (= res!2551384 (isEmpty!36455 (tail!11811 (_1!36385 (get!22256 lt!2335853)))))))

(declare-fun b!6161136 () Bool)

(declare-fun e!3753783 () Bool)

(assert (=> b!6161136 (= e!3753783 (nullable!6096 (regOne!32718 r!7292)))))

(declare-fun b!6161137 () Bool)

(declare-fun res!2551387 () Bool)

(assert (=> b!6161137 (=> res!2551387 e!3753780)))

(assert (=> b!6161137 (= res!2551387 e!3753785)))

(declare-fun res!2551390 () Bool)

(assert (=> b!6161137 (=> (not res!2551390) (not e!3753785))))

(assert (=> b!6161137 (= res!2551390 lt!2335888)))

(declare-fun b!6161138 () Bool)

(declare-fun res!2551385 () Bool)

(assert (=> b!6161138 (=> (not res!2551385) (not e!3753785))))

(assert (=> b!6161138 (= res!2551385 (not call!513139))))

(declare-fun b!6161139 () Bool)

(assert (=> b!6161139 (= e!3753781 (not (= (head!12726 (_1!36385 (get!22256 lt!2335853))) (c!1109260 (regOne!32718 r!7292)))))))

(declare-fun b!6161140 () Bool)

(assert (=> b!6161140 (= e!3753782 e!3753781)))

(declare-fun res!2551388 () Bool)

(assert (=> b!6161140 (=> res!2551388 e!3753781)))

(assert (=> b!6161140 (= res!2551388 call!513139)))

(declare-fun b!6161141 () Bool)

(declare-fun res!2551386 () Bool)

(assert (=> b!6161141 (=> res!2551386 e!3753780)))

(assert (=> b!6161141 (= res!2551386 (not ((_ is ElementMatch!16103) (regOne!32718 r!7292))))))

(assert (=> b!6161141 (= e!3753779 e!3753780)))

(declare-fun b!6161142 () Bool)

(declare-fun e!3753784 () Bool)

(assert (=> b!6161142 (= e!3753784 (= lt!2335888 call!513139))))

(declare-fun d!1930701 () Bool)

(assert (=> d!1930701 e!3753784))

(declare-fun c!1109630 () Bool)

(assert (=> d!1930701 (= c!1109630 ((_ is EmptyExpr!16103) (regOne!32718 r!7292)))))

(assert (=> d!1930701 (= lt!2335888 e!3753783)))

(declare-fun c!1109628 () Bool)

(assert (=> d!1930701 (= c!1109628 (isEmpty!36455 (_1!36385 (get!22256 lt!2335853))))))

(assert (=> d!1930701 (validRegex!7839 (regOne!32718 r!7292))))

(assert (=> d!1930701 (= (matchR!8286 (regOne!32718 r!7292) (_1!36385 (get!22256 lt!2335853))) lt!2335888)))

(declare-fun b!6161133 () Bool)

(assert (=> b!6161133 (= e!3753784 e!3753779)))

(declare-fun c!1109629 () Bool)

(assert (=> b!6161133 (= c!1109629 ((_ is EmptyLang!16103) (regOne!32718 r!7292)))))

(declare-fun b!6161143 () Bool)

(assert (=> b!6161143 (= e!3753783 (matchR!8286 (derivativeStep!4823 (regOne!32718 r!7292) (head!12726 (_1!36385 (get!22256 lt!2335853)))) (tail!11811 (_1!36385 (get!22256 lt!2335853)))))))

(declare-fun b!6161144 () Bool)

(assert (=> b!6161144 (= e!3753785 (= (head!12726 (_1!36385 (get!22256 lt!2335853))) (c!1109260 (regOne!32718 r!7292))))))

(assert (= (and d!1930701 c!1109628) b!6161136))

(assert (= (and d!1930701 (not c!1109628)) b!6161143))

(assert (= (and d!1930701 c!1109630) b!6161142))

(assert (= (and d!1930701 (not c!1109630)) b!6161133))

(assert (= (and b!6161133 c!1109629) b!6161134))

(assert (= (and b!6161133 (not c!1109629)) b!6161141))

(assert (= (and b!6161141 (not res!2551386)) b!6161137))

(assert (= (and b!6161137 res!2551390) b!6161138))

(assert (= (and b!6161138 res!2551385) b!6161135))

(assert (= (and b!6161135 res!2551384) b!6161144))

(assert (= (and b!6161137 (not res!2551387)) b!6161131))

(assert (= (and b!6161131 res!2551389) b!6161140))

(assert (= (and b!6161140 (not res!2551388)) b!6161132))

(assert (= (and b!6161132 (not res!2551391)) b!6161139))

(assert (= (or b!6161142 b!6161138 b!6161140) bm!513134))

(declare-fun m!6999204 () Bool)

(assert (=> b!6161135 m!6999204))

(assert (=> b!6161135 m!6999204))

(declare-fun m!6999206 () Bool)

(assert (=> b!6161135 m!6999206))

(declare-fun m!6999208 () Bool)

(assert (=> b!6161144 m!6999208))

(assert (=> b!6161143 m!6999208))

(assert (=> b!6161143 m!6999208))

(declare-fun m!6999212 () Bool)

(assert (=> b!6161143 m!6999212))

(assert (=> b!6161143 m!6999204))

(assert (=> b!6161143 m!6999212))

(assert (=> b!6161143 m!6999204))

(declare-fun m!6999216 () Bool)

(assert (=> b!6161143 m!6999216))

(assert (=> b!6161139 m!6999208))

(assert (=> b!6161132 m!6999204))

(assert (=> b!6161132 m!6999204))

(assert (=> b!6161132 m!6999206))

(declare-fun m!6999222 () Bool)

(assert (=> d!1930701 m!6999222))

(assert (=> d!1930701 m!6998618))

(declare-fun m!6999224 () Bool)

(assert (=> b!6161136 m!6999224))

(assert (=> bm!513134 m!6999222))

(assert (=> b!6160557 d!1930701))

(assert (=> b!6160557 d!1930687))

(declare-fun d!1930707 () Bool)

(assert (=> d!1930707 (= (nullable!6096 (h!70932 (exprs!5987 lt!2335770))) (nullableFct!2060 (h!70932 (exprs!5987 lt!2335770))))))

(declare-fun bs!1527042 () Bool)

(assert (= bs!1527042 d!1930707))

(declare-fun m!6999228 () Bool)

(assert (=> bs!1527042 m!6999228))

(assert (=> b!6160416 d!1930707))

(declare-fun d!1930711 () Bool)

(assert (=> d!1930711 (= (head!12728 (unfocusZipperList!1524 zl!343)) (h!70932 (unfocusZipperList!1524 zl!343)))))

(assert (=> b!6160487 d!1930711))

(assert (=> d!1930365 d!1930607))

(declare-fun bs!1527043 () Bool)

(declare-fun d!1930713 () Bool)

(assert (= bs!1527043 (and d!1930713 d!1930641)))

(declare-fun lambda!336224 () Int)

(assert (=> bs!1527043 (= lambda!336224 lambda!336212)))

(declare-fun bs!1527044 () Bool)

(assert (= bs!1527044 (and d!1930713 d!1930411)))

(assert (=> bs!1527044 (= lambda!336224 lambda!336183)))

(declare-fun bs!1527045 () Bool)

(assert (= bs!1527045 (and d!1930713 d!1930355)))

(assert (=> bs!1527045 (= lambda!336224 lambda!336166)))

(declare-fun bs!1527046 () Bool)

(assert (= bs!1527046 (and d!1930713 d!1930357)))

(assert (=> bs!1527046 (= lambda!336224 lambda!336169)))

(declare-fun bs!1527047 () Bool)

(assert (= bs!1527047 (and d!1930713 d!1930409)))

(assert (=> bs!1527047 (= lambda!336224 lambda!336182)))

(declare-fun bs!1527048 () Bool)

(assert (= bs!1527048 (and d!1930713 d!1930361)))

(assert (=> bs!1527048 (= lambda!336224 lambda!336170)))

(declare-fun bs!1527049 () Bool)

(assert (= bs!1527049 (and d!1930713 d!1930353)))

(assert (=> bs!1527049 (= lambda!336224 lambda!336163)))

(declare-fun b!6161156 () Bool)

(declare-fun e!3753793 () Regex!16103)

(assert (=> b!6161156 (= e!3753793 (Union!16103 (h!70932 (t!378104 (unfocusZipperList!1524 zl!343))) (generalisedUnion!1947 (t!378104 (t!378104 (unfocusZipperList!1524 zl!343))))))))

(declare-fun b!6161157 () Bool)

(declare-fun e!3753794 () Regex!16103)

(assert (=> b!6161157 (= e!3753794 e!3753793)))

(declare-fun c!1109637 () Bool)

(assert (=> b!6161157 (= c!1109637 ((_ is Cons!64484) (t!378104 (unfocusZipperList!1524 zl!343))))))

(declare-fun b!6161158 () Bool)

(declare-fun e!3753792 () Bool)

(declare-fun e!3753795 () Bool)

(assert (=> b!6161158 (= e!3753792 e!3753795)))

(declare-fun c!1109639 () Bool)

(assert (=> b!6161158 (= c!1109639 (isEmpty!36453 (t!378104 (unfocusZipperList!1524 zl!343))))))

(assert (=> d!1930713 e!3753792))

(declare-fun res!2551393 () Bool)

(assert (=> d!1930713 (=> (not res!2551393) (not e!3753792))))

(declare-fun lt!2335889 () Regex!16103)

(assert (=> d!1930713 (= res!2551393 (validRegex!7839 lt!2335889))))

(assert (=> d!1930713 (= lt!2335889 e!3753794)))

(declare-fun c!1109636 () Bool)

(declare-fun e!3753796 () Bool)

(assert (=> d!1930713 (= c!1109636 e!3753796)))

(declare-fun res!2551394 () Bool)

(assert (=> d!1930713 (=> (not res!2551394) (not e!3753796))))

(assert (=> d!1930713 (= res!2551394 ((_ is Cons!64484) (t!378104 (unfocusZipperList!1524 zl!343))))))

(assert (=> d!1930713 (forall!15224 (t!378104 (unfocusZipperList!1524 zl!343)) lambda!336224)))

(assert (=> d!1930713 (= (generalisedUnion!1947 (t!378104 (unfocusZipperList!1524 zl!343))) lt!2335889)))

(declare-fun b!6161159 () Bool)

(declare-fun e!3753797 () Bool)

(assert (=> b!6161159 (= e!3753795 e!3753797)))

(declare-fun c!1109638 () Bool)

(assert (=> b!6161159 (= c!1109638 (isEmpty!36453 (tail!11813 (t!378104 (unfocusZipperList!1524 zl!343)))))))

(declare-fun b!6161160 () Bool)

(assert (=> b!6161160 (= e!3753797 (= lt!2335889 (head!12728 (t!378104 (unfocusZipperList!1524 zl!343)))))))

(declare-fun b!6161161 () Bool)

(assert (=> b!6161161 (= e!3753797 (isUnion!960 lt!2335889))))

(declare-fun b!6161162 () Bool)

(assert (=> b!6161162 (= e!3753796 (isEmpty!36453 (t!378104 (t!378104 (unfocusZipperList!1524 zl!343)))))))

(declare-fun b!6161163 () Bool)

(assert (=> b!6161163 (= e!3753795 (isEmptyLang!1530 lt!2335889))))

(declare-fun b!6161164 () Bool)

(assert (=> b!6161164 (= e!3753794 (h!70932 (t!378104 (unfocusZipperList!1524 zl!343))))))

(declare-fun b!6161165 () Bool)

(assert (=> b!6161165 (= e!3753793 EmptyLang!16103)))

(assert (= (and d!1930713 res!2551394) b!6161162))

(assert (= (and d!1930713 c!1109636) b!6161164))

(assert (= (and d!1930713 (not c!1109636)) b!6161157))

(assert (= (and b!6161157 c!1109637) b!6161156))

(assert (= (and b!6161157 (not c!1109637)) b!6161165))

(assert (= (and d!1930713 res!2551393) b!6161158))

(assert (= (and b!6161158 c!1109639) b!6161163))

(assert (= (and b!6161158 (not c!1109639)) b!6161159))

(assert (= (and b!6161159 c!1109638) b!6161160))

(assert (= (and b!6161159 (not c!1109638)) b!6161161))

(declare-fun m!6999230 () Bool)

(assert (=> d!1930713 m!6999230))

(declare-fun m!6999232 () Bool)

(assert (=> d!1930713 m!6999232))

(declare-fun m!6999234 () Bool)

(assert (=> b!6161162 m!6999234))

(declare-fun m!6999236 () Bool)

(assert (=> b!6161163 m!6999236))

(declare-fun m!6999238 () Bool)

(assert (=> b!6161161 m!6999238))

(declare-fun m!6999240 () Bool)

(assert (=> b!6161156 m!6999240))

(declare-fun m!6999242 () Bool)

(assert (=> b!6161159 m!6999242))

(assert (=> b!6161159 m!6999242))

(declare-fun m!6999244 () Bool)

(assert (=> b!6161159 m!6999244))

(declare-fun m!6999246 () Bool)

(assert (=> b!6161160 m!6999246))

(assert (=> b!6161158 m!6998538))

(assert (=> b!6160483 d!1930713))

(declare-fun d!1930715 () Bool)

(assert (=> d!1930715 (= (isConcat!1043 lt!2335872) ((_ is Concat!24948) lt!2335872))))

(assert (=> b!6160638 d!1930715))

(declare-fun d!1930717 () Bool)

(declare-fun c!1109642 () Bool)

(assert (=> d!1930717 (= c!1109642 (isEmpty!36455 (tail!11811 (t!378106 s!2326))))))

(declare-fun e!3753802 () Bool)

(assert (=> d!1930717 (= (matchZipper!2115 (derivationStepZipper!2076 lt!2335748 (head!12726 (t!378106 s!2326))) (tail!11811 (t!378106 s!2326))) e!3753802)))

(declare-fun b!6161174 () Bool)

(assert (=> b!6161174 (= e!3753802 (nullableZipper!1884 (derivationStepZipper!2076 lt!2335748 (head!12726 (t!378106 s!2326)))))))

(declare-fun b!6161175 () Bool)

(assert (=> b!6161175 (= e!3753802 (matchZipper!2115 (derivationStepZipper!2076 (derivationStepZipper!2076 lt!2335748 (head!12726 (t!378106 s!2326))) (head!12726 (tail!11811 (t!378106 s!2326)))) (tail!11811 (tail!11811 (t!378106 s!2326)))))))

(assert (= (and d!1930717 c!1109642) b!6161174))

(assert (= (and d!1930717 (not c!1109642)) b!6161175))

(assert (=> d!1930717 m!6998394))

(assert (=> d!1930717 m!6998964))

(assert (=> b!6161174 m!6998582))

(declare-fun m!6999248 () Bool)

(assert (=> b!6161174 m!6999248))

(assert (=> b!6161175 m!6998394))

(assert (=> b!6161175 m!6998968))

(assert (=> b!6161175 m!6998582))

(assert (=> b!6161175 m!6998968))

(declare-fun m!6999250 () Bool)

(assert (=> b!6161175 m!6999250))

(assert (=> b!6161175 m!6998394))

(assert (=> b!6161175 m!6998972))

(assert (=> b!6161175 m!6999250))

(assert (=> b!6161175 m!6998972))

(declare-fun m!6999252 () Bool)

(assert (=> b!6161175 m!6999252))

(assert (=> b!6160531 d!1930717))

(declare-fun bs!1527050 () Bool)

(declare-fun d!1930719 () Bool)

(assert (= bs!1527050 (and d!1930719 b!6159868)))

(declare-fun lambda!336225 () Int)

(assert (=> bs!1527050 (= (= (head!12726 (t!378106 s!2326)) (h!70934 s!2326)) (= lambda!336225 lambda!336125))))

(declare-fun bs!1527051 () Bool)

(assert (= bs!1527051 (and d!1930719 d!1930567)))

(assert (=> bs!1527051 (= lambda!336225 lambda!336206)))

(declare-fun bs!1527052 () Bool)

(assert (= bs!1527052 (and d!1930719 d!1930655)))

(assert (=> bs!1527052 (= lambda!336225 lambda!336215)))

(declare-fun bs!1527053 () Bool)

(assert (= bs!1527053 (and d!1930719 d!1930671)))

(assert (=> bs!1527053 (= lambda!336225 lambda!336217)))

(assert (=> d!1930719 true))

(assert (=> d!1930719 (= (derivationStepZipper!2076 lt!2335748 (head!12726 (t!378106 s!2326))) (flatMap!1608 lt!2335748 lambda!336225))))

(declare-fun bs!1527054 () Bool)

(assert (= bs!1527054 d!1930719))

(declare-fun m!6999254 () Bool)

(assert (=> bs!1527054 m!6999254))

(assert (=> b!6160531 d!1930719))

(assert (=> b!6160531 d!1930575))

(assert (=> b!6160531 d!1930579))

(declare-fun d!1930721 () Bool)

(declare-fun c!1109647 () Bool)

(assert (=> d!1930721 (= c!1109647 ((_ is Nil!64485) lt!2335869))))

(declare-fun e!3753809 () (InoxSet Context!10974))

(assert (=> d!1930721 (= (content!12027 lt!2335869) e!3753809)))

(declare-fun b!6161188 () Bool)

(assert (=> b!6161188 (= e!3753809 ((as const (Array Context!10974 Bool)) false))))

(declare-fun b!6161189 () Bool)

(assert (=> b!6161189 (= e!3753809 ((_ map or) (store ((as const (Array Context!10974 Bool)) false) (h!70933 lt!2335869) true) (content!12027 (t!378105 lt!2335869))))))

(assert (= (and d!1930721 c!1109647) b!6161188))

(assert (= (and d!1930721 (not c!1109647)) b!6161189))

(declare-fun m!6999284 () Bool)

(assert (=> b!6161189 m!6999284))

(declare-fun m!6999286 () Bool)

(assert (=> b!6161189 m!6999286))

(assert (=> b!6160610 d!1930721))

(assert (=> b!6160602 d!1930395))

(declare-fun d!1930727 () Bool)

(assert (=> d!1930727 (= (nullable!6096 (regOne!32718 (regTwo!32719 (regOne!32718 r!7292)))) (nullableFct!2060 (regOne!32718 (regTwo!32719 (regOne!32718 r!7292)))))))

(declare-fun bs!1527055 () Bool)

(assert (= bs!1527055 d!1930727))

(declare-fun m!6999288 () Bool)

(assert (=> bs!1527055 m!6999288))

(assert (=> b!6160450 d!1930727))

(declare-fun d!1930729 () Bool)

(declare-fun res!2551403 () Bool)

(declare-fun e!3753810 () Bool)

(assert (=> d!1930729 (=> res!2551403 e!3753810)))

(assert (=> d!1930729 (= res!2551403 ((_ is Nil!64484) (exprs!5987 setElem!41742)))))

(assert (=> d!1930729 (= (forall!15224 (exprs!5987 setElem!41742) lambda!336169) e!3753810)))

(declare-fun b!6161190 () Bool)

(declare-fun e!3753811 () Bool)

(assert (=> b!6161190 (= e!3753810 e!3753811)))

(declare-fun res!2551404 () Bool)

(assert (=> b!6161190 (=> (not res!2551404) (not e!3753811))))

(assert (=> b!6161190 (= res!2551404 (dynLambda!25426 lambda!336169 (h!70932 (exprs!5987 setElem!41742))))))

(declare-fun b!6161191 () Bool)

(assert (=> b!6161191 (= e!3753811 (forall!15224 (t!378104 (exprs!5987 setElem!41742)) lambda!336169))))

(assert (= (and d!1930729 (not res!2551403)) b!6161190))

(assert (= (and b!6161190 res!2551404) b!6161191))

(declare-fun b_lambda!234539 () Bool)

(assert (=> (not b_lambda!234539) (not b!6161190)))

(declare-fun m!6999290 () Bool)

(assert (=> b!6161190 m!6999290))

(declare-fun m!6999292 () Bool)

(assert (=> b!6161191 m!6999292))

(assert (=> d!1930357 d!1930729))

(declare-fun bm!513141 () Bool)

(declare-fun call!513146 () Bool)

(assert (=> bm!513141 (= call!513146 (isEmpty!36455 (_2!36385 (get!22256 lt!2335853))))))

(declare-fun b!6161192 () Bool)

(declare-fun e!3753813 () Bool)

(declare-fun e!3753815 () Bool)

(assert (=> b!6161192 (= e!3753813 e!3753815)))

(declare-fun res!2551410 () Bool)

(assert (=> b!6161192 (=> (not res!2551410) (not e!3753815))))

(declare-fun lt!2335894 () Bool)

(assert (=> b!6161192 (= res!2551410 (not lt!2335894))))

(declare-fun b!6161193 () Bool)

(declare-fun res!2551412 () Bool)

(declare-fun e!3753814 () Bool)

(assert (=> b!6161193 (=> res!2551412 e!3753814)))

(assert (=> b!6161193 (= res!2551412 (not (isEmpty!36455 (tail!11811 (_2!36385 (get!22256 lt!2335853))))))))

(declare-fun b!6161195 () Bool)

(declare-fun e!3753812 () Bool)

(assert (=> b!6161195 (= e!3753812 (not lt!2335894))))

(declare-fun b!6161196 () Bool)

(declare-fun res!2551405 () Bool)

(declare-fun e!3753818 () Bool)

(assert (=> b!6161196 (=> (not res!2551405) (not e!3753818))))

(assert (=> b!6161196 (= res!2551405 (isEmpty!36455 (tail!11811 (_2!36385 (get!22256 lt!2335853)))))))

(declare-fun b!6161197 () Bool)

(declare-fun e!3753816 () Bool)

(assert (=> b!6161197 (= e!3753816 (nullable!6096 (regTwo!32718 r!7292)))))

(declare-fun b!6161198 () Bool)

(declare-fun res!2551408 () Bool)

(assert (=> b!6161198 (=> res!2551408 e!3753813)))

(assert (=> b!6161198 (= res!2551408 e!3753818)))

(declare-fun res!2551411 () Bool)

(assert (=> b!6161198 (=> (not res!2551411) (not e!3753818))))

(assert (=> b!6161198 (= res!2551411 lt!2335894)))

(declare-fun b!6161199 () Bool)

(declare-fun res!2551406 () Bool)

(assert (=> b!6161199 (=> (not res!2551406) (not e!3753818))))

(assert (=> b!6161199 (= res!2551406 (not call!513146))))

(declare-fun b!6161200 () Bool)

(assert (=> b!6161200 (= e!3753814 (not (= (head!12726 (_2!36385 (get!22256 lt!2335853))) (c!1109260 (regTwo!32718 r!7292)))))))

(declare-fun b!6161201 () Bool)

(assert (=> b!6161201 (= e!3753815 e!3753814)))

(declare-fun res!2551409 () Bool)

(assert (=> b!6161201 (=> res!2551409 e!3753814)))

(assert (=> b!6161201 (= res!2551409 call!513146)))

(declare-fun b!6161202 () Bool)

(declare-fun res!2551407 () Bool)

(assert (=> b!6161202 (=> res!2551407 e!3753813)))

(assert (=> b!6161202 (= res!2551407 (not ((_ is ElementMatch!16103) (regTwo!32718 r!7292))))))

(assert (=> b!6161202 (= e!3753812 e!3753813)))

(declare-fun b!6161203 () Bool)

(declare-fun e!3753817 () Bool)

(assert (=> b!6161203 (= e!3753817 (= lt!2335894 call!513146))))

(declare-fun d!1930731 () Bool)

(assert (=> d!1930731 e!3753817))

(declare-fun c!1109650 () Bool)

(assert (=> d!1930731 (= c!1109650 ((_ is EmptyExpr!16103) (regTwo!32718 r!7292)))))

(assert (=> d!1930731 (= lt!2335894 e!3753816)))

(declare-fun c!1109648 () Bool)

(assert (=> d!1930731 (= c!1109648 (isEmpty!36455 (_2!36385 (get!22256 lt!2335853))))))

(assert (=> d!1930731 (validRegex!7839 (regTwo!32718 r!7292))))

(assert (=> d!1930731 (= (matchR!8286 (regTwo!32718 r!7292) (_2!36385 (get!22256 lt!2335853))) lt!2335894)))

(declare-fun b!6161194 () Bool)

(assert (=> b!6161194 (= e!3753817 e!3753812)))

(declare-fun c!1109649 () Bool)

(assert (=> b!6161194 (= c!1109649 ((_ is EmptyLang!16103) (regTwo!32718 r!7292)))))

(declare-fun b!6161204 () Bool)

(assert (=> b!6161204 (= e!3753816 (matchR!8286 (derivativeStep!4823 (regTwo!32718 r!7292) (head!12726 (_2!36385 (get!22256 lt!2335853)))) (tail!11811 (_2!36385 (get!22256 lt!2335853)))))))

(declare-fun b!6161205 () Bool)

(assert (=> b!6161205 (= e!3753818 (= (head!12726 (_2!36385 (get!22256 lt!2335853))) (c!1109260 (regTwo!32718 r!7292))))))

(assert (= (and d!1930731 c!1109648) b!6161197))

(assert (= (and d!1930731 (not c!1109648)) b!6161204))

(assert (= (and d!1930731 c!1109650) b!6161203))

(assert (= (and d!1930731 (not c!1109650)) b!6161194))

(assert (= (and b!6161194 c!1109649) b!6161195))

(assert (= (and b!6161194 (not c!1109649)) b!6161202))

(assert (= (and b!6161202 (not res!2551407)) b!6161198))

(assert (= (and b!6161198 res!2551411) b!6161199))

(assert (= (and b!6161199 res!2551406) b!6161196))

(assert (= (and b!6161196 res!2551405) b!6161205))

(assert (= (and b!6161198 (not res!2551408)) b!6161192))

(assert (= (and b!6161192 res!2551410) b!6161201))

(assert (= (and b!6161201 (not res!2551409)) b!6161193))

(assert (= (and b!6161193 (not res!2551412)) b!6161200))

(assert (= (or b!6161203 b!6161199 b!6161201) bm!513141))

(declare-fun m!6999294 () Bool)

(assert (=> b!6161196 m!6999294))

(assert (=> b!6161196 m!6999294))

(declare-fun m!6999296 () Bool)

(assert (=> b!6161196 m!6999296))

(declare-fun m!6999298 () Bool)

(assert (=> b!6161205 m!6999298))

(assert (=> b!6161204 m!6999298))

(assert (=> b!6161204 m!6999298))

(declare-fun m!6999300 () Bool)

(assert (=> b!6161204 m!6999300))

(assert (=> b!6161204 m!6999294))

(assert (=> b!6161204 m!6999300))

(assert (=> b!6161204 m!6999294))

(declare-fun m!6999302 () Bool)

(assert (=> b!6161204 m!6999302))

(assert (=> b!6161200 m!6999298))

(assert (=> b!6161193 m!6999294))

(assert (=> b!6161193 m!6999294))

(assert (=> b!6161193 m!6999296))

(declare-fun m!6999304 () Bool)

(assert (=> d!1930731 m!6999304))

(declare-fun m!6999306 () Bool)

(assert (=> d!1930731 m!6999306))

(declare-fun m!6999308 () Bool)

(assert (=> b!6161197 m!6999308))

(assert (=> bm!513141 m!6999304))

(assert (=> b!6160553 d!1930731))

(assert (=> b!6160553 d!1930687))

(assert (=> b!6160389 d!1930601))

(declare-fun d!1930733 () Bool)

(declare-fun c!1109651 () Bool)

(assert (=> d!1930733 (= c!1109651 (isEmpty!36455 (tail!11811 (t!378106 s!2326))))))

(declare-fun e!3753819 () Bool)

(assert (=> d!1930733 (= (matchZipper!2115 (derivationStepZipper!2076 lt!2335767 (head!12726 (t!378106 s!2326))) (tail!11811 (t!378106 s!2326))) e!3753819)))

(declare-fun b!6161206 () Bool)

(assert (=> b!6161206 (= e!3753819 (nullableZipper!1884 (derivationStepZipper!2076 lt!2335767 (head!12726 (t!378106 s!2326)))))))

(declare-fun b!6161207 () Bool)

(assert (=> b!6161207 (= e!3753819 (matchZipper!2115 (derivationStepZipper!2076 (derivationStepZipper!2076 lt!2335767 (head!12726 (t!378106 s!2326))) (head!12726 (tail!11811 (t!378106 s!2326)))) (tail!11811 (tail!11811 (t!378106 s!2326)))))))

(assert (= (and d!1930733 c!1109651) b!6161206))

(assert (= (and d!1930733 (not c!1109651)) b!6161207))

(assert (=> d!1930733 m!6998394))

(assert (=> d!1930733 m!6998964))

(assert (=> b!6161206 m!6998392))

(declare-fun m!6999310 () Bool)

(assert (=> b!6161206 m!6999310))

(assert (=> b!6161207 m!6998394))

(assert (=> b!6161207 m!6998968))

(assert (=> b!6161207 m!6998392))

(assert (=> b!6161207 m!6998968))

(declare-fun m!6999312 () Bool)

(assert (=> b!6161207 m!6999312))

(assert (=> b!6161207 m!6998394))

(assert (=> b!6161207 m!6998972))

(assert (=> b!6161207 m!6999312))

(assert (=> b!6161207 m!6998972))

(declare-fun m!6999314 () Bool)

(assert (=> b!6161207 m!6999314))

(assert (=> b!6160215 d!1930733))

(declare-fun bs!1527057 () Bool)

(declare-fun d!1930735 () Bool)

(assert (= bs!1527057 (and d!1930735 d!1930719)))

(declare-fun lambda!336226 () Int)

(assert (=> bs!1527057 (= lambda!336226 lambda!336225)))

(declare-fun bs!1527058 () Bool)

(assert (= bs!1527058 (and d!1930735 b!6159868)))

(assert (=> bs!1527058 (= (= (head!12726 (t!378106 s!2326)) (h!70934 s!2326)) (= lambda!336226 lambda!336125))))

(declare-fun bs!1527059 () Bool)

(assert (= bs!1527059 (and d!1930735 d!1930655)))

(assert (=> bs!1527059 (= lambda!336226 lambda!336215)))

(declare-fun bs!1527060 () Bool)

(assert (= bs!1527060 (and d!1930735 d!1930671)))

(assert (=> bs!1527060 (= lambda!336226 lambda!336217)))

(declare-fun bs!1527061 () Bool)

(assert (= bs!1527061 (and d!1930735 d!1930567)))

(assert (=> bs!1527061 (= lambda!336226 lambda!336206)))

(assert (=> d!1930735 true))

(assert (=> d!1930735 (= (derivationStepZipper!2076 lt!2335767 (head!12726 (t!378106 s!2326))) (flatMap!1608 lt!2335767 lambda!336226))))

(declare-fun bs!1527062 () Bool)

(assert (= bs!1527062 d!1930735))

(declare-fun m!6999320 () Bool)

(assert (=> bs!1527062 m!6999320))

(assert (=> b!6160215 d!1930735))

(assert (=> b!6160215 d!1930575))

(assert (=> b!6160215 d!1930579))

(declare-fun bm!513142 () Bool)

(declare-fun call!513148 () Bool)

(declare-fun c!1109654 () Bool)

(assert (=> bm!513142 (= call!513148 (nullable!6096 (ite c!1109654 (regOne!32719 (regTwo!32719 (regOne!32718 r!7292))) (regOne!32718 (regTwo!32719 (regOne!32718 r!7292))))))))

(declare-fun b!6161217 () Bool)

(declare-fun e!3753825 () Bool)

(declare-fun e!3753827 () Bool)

(assert (=> b!6161217 (= e!3753825 e!3753827)))

(assert (=> b!6161217 (= c!1109654 ((_ is Union!16103) (regTwo!32719 (regOne!32718 r!7292))))))

(declare-fun b!6161218 () Bool)

(declare-fun e!3753826 () Bool)

(declare-fun e!3753829 () Bool)

(assert (=> b!6161218 (= e!3753826 e!3753829)))

(declare-fun res!2551418 () Bool)

(assert (=> b!6161218 (=> (not res!2551418) (not e!3753829))))

(assert (=> b!6161218 (= res!2551418 (and (not ((_ is EmptyLang!16103) (regTwo!32719 (regOne!32718 r!7292)))) (not ((_ is ElementMatch!16103) (regTwo!32719 (regOne!32718 r!7292))))))))

(declare-fun b!6161219 () Bool)

(declare-fun e!3753828 () Bool)

(declare-fun call!513147 () Bool)

(assert (=> b!6161219 (= e!3753828 call!513147)))

(declare-fun b!6161220 () Bool)

(assert (=> b!6161220 (= e!3753827 e!3753828)))

(declare-fun res!2551422 () Bool)

(assert (=> b!6161220 (= res!2551422 call!513148)))

(assert (=> b!6161220 (=> (not res!2551422) (not e!3753828))))

(declare-fun b!6161221 () Bool)

(assert (=> b!6161221 (= e!3753829 e!3753825)))

(declare-fun res!2551421 () Bool)

(assert (=> b!6161221 (=> res!2551421 e!3753825)))

(assert (=> b!6161221 (= res!2551421 ((_ is Star!16103) (regTwo!32719 (regOne!32718 r!7292))))))

(declare-fun b!6161222 () Bool)

(declare-fun e!3753830 () Bool)

(assert (=> b!6161222 (= e!3753830 call!513147)))

(declare-fun d!1930739 () Bool)

(declare-fun res!2551419 () Bool)

(assert (=> d!1930739 (=> res!2551419 e!3753826)))

(assert (=> d!1930739 (= res!2551419 ((_ is EmptyExpr!16103) (regTwo!32719 (regOne!32718 r!7292))))))

(assert (=> d!1930739 (= (nullableFct!2060 (regTwo!32719 (regOne!32718 r!7292))) e!3753826)))

(declare-fun b!6161223 () Bool)

(assert (=> b!6161223 (= e!3753827 e!3753830)))

(declare-fun res!2551420 () Bool)

(assert (=> b!6161223 (= res!2551420 call!513148)))

(assert (=> b!6161223 (=> res!2551420 e!3753830)))

(declare-fun bm!513143 () Bool)

(assert (=> bm!513143 (= call!513147 (nullable!6096 (ite c!1109654 (regTwo!32719 (regTwo!32719 (regOne!32718 r!7292))) (regTwo!32718 (regTwo!32719 (regOne!32718 r!7292))))))))

(assert (= (and d!1930739 (not res!2551419)) b!6161218))

(assert (= (and b!6161218 res!2551418) b!6161221))

(assert (= (and b!6161221 (not res!2551421)) b!6161217))

(assert (= (and b!6161217 c!1109654) b!6161223))

(assert (= (and b!6161217 (not c!1109654)) b!6161220))

(assert (= (and b!6161223 (not res!2551420)) b!6161222))

(assert (= (and b!6161220 res!2551422) b!6161219))

(assert (= (or b!6161222 b!6161219) bm!513143))

(assert (= (or b!6161223 b!6161220) bm!513142))

(declare-fun m!6999322 () Bool)

(assert (=> bm!513142 m!6999322))

(declare-fun m!6999324 () Bool)

(assert (=> bm!513143 m!6999324))

(assert (=> d!1930329 d!1930739))

(declare-fun bs!1527063 () Bool)

(declare-fun d!1930741 () Bool)

(assert (= bs!1527063 (and d!1930741 d!1930589)))

(declare-fun lambda!336227 () Int)

(assert (=> bs!1527063 (= lambda!336227 lambda!336210)))

(assert (=> d!1930741 (= (nullableZipper!1884 lt!2335764) (exists!2448 lt!2335764 lambda!336227))))

(declare-fun bs!1527064 () Bool)

(assert (= bs!1527064 d!1930741))

(declare-fun m!6999326 () Bool)

(assert (=> bs!1527064 m!6999326))

(assert (=> b!6160391 d!1930741))

(declare-fun bs!1527065 () Bool)

(declare-fun d!1930743 () Bool)

(assert (= bs!1527065 (and d!1930743 d!1930589)))

(declare-fun lambda!336228 () Int)

(assert (=> bs!1527065 (= lambda!336228 lambda!336210)))

(declare-fun bs!1527066 () Bool)

(assert (= bs!1527066 (and d!1930743 d!1930741)))

(assert (=> bs!1527066 (= lambda!336228 lambda!336227)))

(assert (=> d!1930743 (= (nullableZipper!1884 ((_ map or) lt!2335767 lt!2335744)) (exists!2448 ((_ map or) lt!2335767 lt!2335744) lambda!336228))))

(declare-fun bs!1527067 () Bool)

(assert (= bs!1527067 d!1930743))

(declare-fun m!6999334 () Bool)

(assert (=> bs!1527067 m!6999334))

(assert (=> b!6160216 d!1930743))

(declare-fun d!1930745 () Bool)

(declare-fun c!1109655 () Bool)

(assert (=> d!1930745 (= c!1109655 (isEmpty!36455 (tail!11811 (t!378106 s!2326))))))

(declare-fun e!3753831 () Bool)

(assert (=> d!1930745 (= (matchZipper!2115 (derivationStepZipper!2076 ((_ map or) lt!2335761 lt!2335744) (head!12726 (t!378106 s!2326))) (tail!11811 (t!378106 s!2326))) e!3753831)))

(declare-fun b!6161224 () Bool)

(assert (=> b!6161224 (= e!3753831 (nullableZipper!1884 (derivationStepZipper!2076 ((_ map or) lt!2335761 lt!2335744) (head!12726 (t!378106 s!2326)))))))

(declare-fun b!6161225 () Bool)

(assert (=> b!6161225 (= e!3753831 (matchZipper!2115 (derivationStepZipper!2076 (derivationStepZipper!2076 ((_ map or) lt!2335761 lt!2335744) (head!12726 (t!378106 s!2326))) (head!12726 (tail!11811 (t!378106 s!2326)))) (tail!11811 (tail!11811 (t!378106 s!2326)))))))

(assert (= (and d!1930745 c!1109655) b!6161224))

(assert (= (and d!1930745 (not c!1109655)) b!6161225))

(assert (=> d!1930745 m!6998394))

(assert (=> d!1930745 m!6998964))

(assert (=> b!6161224 m!6998414))

(declare-fun m!6999352 () Bool)

(assert (=> b!6161224 m!6999352))

(assert (=> b!6161225 m!6998394))

(assert (=> b!6161225 m!6998968))

(assert (=> b!6161225 m!6998414))

(assert (=> b!6161225 m!6998968))

(declare-fun m!6999354 () Bool)

(assert (=> b!6161225 m!6999354))

(assert (=> b!6161225 m!6998394))

(assert (=> b!6161225 m!6998972))

(assert (=> b!6161225 m!6999354))

(assert (=> b!6161225 m!6998972))

(declare-fun m!6999356 () Bool)

(assert (=> b!6161225 m!6999356))

(assert (=> b!6160220 d!1930745))

(declare-fun bs!1527068 () Bool)

(declare-fun d!1930749 () Bool)

(assert (= bs!1527068 (and d!1930749 d!1930719)))

(declare-fun lambda!336229 () Int)

(assert (=> bs!1527068 (= lambda!336229 lambda!336225)))

(declare-fun bs!1527069 () Bool)

(assert (= bs!1527069 (and d!1930749 b!6159868)))

(assert (=> bs!1527069 (= (= (head!12726 (t!378106 s!2326)) (h!70934 s!2326)) (= lambda!336229 lambda!336125))))

(declare-fun bs!1527070 () Bool)

(assert (= bs!1527070 (and d!1930749 d!1930655)))

(assert (=> bs!1527070 (= lambda!336229 lambda!336215)))

(declare-fun bs!1527071 () Bool)

(assert (= bs!1527071 (and d!1930749 d!1930671)))

(assert (=> bs!1527071 (= lambda!336229 lambda!336217)))

(declare-fun bs!1527072 () Bool)

(assert (= bs!1527072 (and d!1930749 d!1930735)))

(assert (=> bs!1527072 (= lambda!336229 lambda!336226)))

(declare-fun bs!1527073 () Bool)

(assert (= bs!1527073 (and d!1930749 d!1930567)))

(assert (=> bs!1527073 (= lambda!336229 lambda!336206)))

(assert (=> d!1930749 true))

(assert (=> d!1930749 (= (derivationStepZipper!2076 ((_ map or) lt!2335761 lt!2335744) (head!12726 (t!378106 s!2326))) (flatMap!1608 ((_ map or) lt!2335761 lt!2335744) lambda!336229))))

(declare-fun bs!1527074 () Bool)

(assert (= bs!1527074 d!1930749))

(declare-fun m!6999360 () Bool)

(assert (=> bs!1527074 m!6999360))

(assert (=> b!6160220 d!1930749))

(assert (=> b!6160220 d!1930575))

(assert (=> b!6160220 d!1930579))

(assert (=> b!6160632 d!1930303))

(declare-fun bs!1527075 () Bool)

(declare-fun d!1930753 () Bool)

(assert (= bs!1527075 (and d!1930753 d!1930589)))

(declare-fun lambda!336230 () Int)

(assert (=> bs!1527075 (= lambda!336230 lambda!336210)))

(declare-fun bs!1527076 () Bool)

(assert (= bs!1527076 (and d!1930753 d!1930741)))

(assert (=> bs!1527076 (= lambda!336230 lambda!336227)))

(declare-fun bs!1527077 () Bool)

(assert (= bs!1527077 (and d!1930753 d!1930743)))

(assert (=> bs!1527077 (= lambda!336230 lambda!336228)))

(assert (=> d!1930753 (= (nullableZipper!1884 lt!2335761) (exists!2448 lt!2335761 lambda!336230))))

(declare-fun bs!1527078 () Bool)

(assert (= bs!1527078 d!1930753))

(declare-fun m!6999362 () Bool)

(assert (=> bs!1527078 m!6999362))

(assert (=> b!6160532 d!1930753))

(assert (=> d!1930309 d!1930607))

(declare-fun d!1930755 () Bool)

(declare-fun lt!2335903 () Int)

(assert (=> d!1930755 (>= lt!2335903 0)))

(declare-fun e!3753848 () Int)

(assert (=> d!1930755 (= lt!2335903 e!3753848)))

(declare-fun c!1109670 () Bool)

(assert (=> d!1930755 (= c!1109670 ((_ is Cons!64484) (exprs!5987 (h!70933 (Cons!64485 lt!2335770 Nil!64485)))))))

(assert (=> d!1930755 (= (contextDepthTotal!263 (h!70933 (Cons!64485 lt!2335770 Nil!64485))) lt!2335903)))

(declare-fun b!6161255 () Bool)

(declare-fun regexDepthTotal!127 (Regex!16103) Int)

(assert (=> b!6161255 (= e!3753848 (+ (regexDepthTotal!127 (h!70932 (exprs!5987 (h!70933 (Cons!64485 lt!2335770 Nil!64485))))) (contextDepthTotal!263 (Context!10975 (t!378104 (exprs!5987 (h!70933 (Cons!64485 lt!2335770 Nil!64485))))))))))

(declare-fun b!6161256 () Bool)

(assert (=> b!6161256 (= e!3753848 1)))

(assert (= (and d!1930755 c!1109670) b!6161255))

(assert (= (and d!1930755 (not c!1109670)) b!6161256))

(declare-fun m!6999386 () Bool)

(assert (=> b!6161255 m!6999386))

(declare-fun m!6999390 () Bool)

(assert (=> b!6161255 m!6999390))

(assert (=> b!6160578 d!1930755))

(declare-fun d!1930763 () Bool)

(declare-fun lt!2335904 () Int)

(assert (=> d!1930763 (>= lt!2335904 0)))

(declare-fun e!3753849 () Int)

(assert (=> d!1930763 (= lt!2335904 e!3753849)))

(declare-fun c!1109671 () Bool)

(assert (=> d!1930763 (= c!1109671 ((_ is Cons!64485) (t!378105 (Cons!64485 lt!2335770 Nil!64485))))))

(assert (=> d!1930763 (= (zipperDepthTotal!286 (t!378105 (Cons!64485 lt!2335770 Nil!64485))) lt!2335904)))

(declare-fun b!6161257 () Bool)

(assert (=> b!6161257 (= e!3753849 (+ (contextDepthTotal!263 (h!70933 (t!378105 (Cons!64485 lt!2335770 Nil!64485)))) (zipperDepthTotal!286 (t!378105 (t!378105 (Cons!64485 lt!2335770 Nil!64485))))))))

(declare-fun b!6161258 () Bool)

(assert (=> b!6161258 (= e!3753849 0)))

(assert (= (and d!1930763 c!1109671) b!6161257))

(assert (= (and d!1930763 (not c!1109671)) b!6161258))

(declare-fun m!6999396 () Bool)

(assert (=> b!6161257 m!6999396))

(declare-fun m!6999398 () Bool)

(assert (=> b!6161257 m!6999398))

(assert (=> b!6160578 d!1930763))

(declare-fun b!6161261 () Bool)

(declare-fun e!3753853 () (InoxSet Context!10974))

(assert (=> b!6161261 (= e!3753853 ((as const (Array Context!10974 Bool)) false))))

(declare-fun b!6161262 () Bool)

(declare-fun call!513161 () (InoxSet Context!10974))

(assert (=> b!6161262 (= e!3753853 call!513161)))

(declare-fun bm!513156 () Bool)

(assert (=> bm!513156 (= call!513161 (derivationStepZipperDown!1351 (h!70932 (exprs!5987 (Context!10975 (t!378104 (exprs!5987 lt!2335742))))) (Context!10975 (t!378104 (exprs!5987 (Context!10975 (t!378104 (exprs!5987 lt!2335742)))))) (h!70934 s!2326)))))

(declare-fun b!6161263 () Bool)

(declare-fun e!3753852 () (InoxSet Context!10974))

(assert (=> b!6161263 (= e!3753852 e!3753853)))

(declare-fun c!1109674 () Bool)

(assert (=> b!6161263 (= c!1109674 ((_ is Cons!64484) (exprs!5987 (Context!10975 (t!378104 (exprs!5987 lt!2335742))))))))

(declare-fun d!1930769 () Bool)

(declare-fun c!1109673 () Bool)

(declare-fun e!3753851 () Bool)

(assert (=> d!1930769 (= c!1109673 e!3753851)))

(declare-fun res!2551426 () Bool)

(assert (=> d!1930769 (=> (not res!2551426) (not e!3753851))))

(assert (=> d!1930769 (= res!2551426 ((_ is Cons!64484) (exprs!5987 (Context!10975 (t!378104 (exprs!5987 lt!2335742))))))))

(assert (=> d!1930769 (= (derivationStepZipperUp!1277 (Context!10975 (t!378104 (exprs!5987 lt!2335742))) (h!70934 s!2326)) e!3753852)))

(declare-fun b!6161264 () Bool)

(assert (=> b!6161264 (= e!3753852 ((_ map or) call!513161 (derivationStepZipperUp!1277 (Context!10975 (t!378104 (exprs!5987 (Context!10975 (t!378104 (exprs!5987 lt!2335742)))))) (h!70934 s!2326))))))

(declare-fun b!6161265 () Bool)

(assert (=> b!6161265 (= e!3753851 (nullable!6096 (h!70932 (exprs!5987 (Context!10975 (t!378104 (exprs!5987 lt!2335742)))))))))

(assert (= (and d!1930769 res!2551426) b!6161265))

(assert (= (and d!1930769 c!1109673) b!6161264))

(assert (= (and d!1930769 (not c!1109673)) b!6161263))

(assert (= (and b!6161263 c!1109674) b!6161262))

(assert (= (and b!6161263 (not c!1109674)) b!6161261))

(assert (= (or b!6161264 b!6161262) bm!513156))

(declare-fun m!6999406 () Bool)

(assert (=> bm!513156 m!6999406))

(declare-fun m!6999408 () Bool)

(assert (=> b!6161264 m!6999408))

(declare-fun m!6999410 () Bool)

(assert (=> b!6161265 m!6999410))

(assert (=> b!6160408 d!1930769))

(assert (=> d!1930337 d!1930339))

(declare-fun d!1930773 () Bool)

(assert (=> d!1930773 (= (flatMap!1608 lt!2335743 lambda!336125) (dynLambda!25425 lambda!336125 lt!2335770))))

(assert (=> d!1930773 true))

(declare-fun _$13!3113 () Unit!157603)

(assert (=> d!1930773 (= (choose!45804 lt!2335743 lt!2335770 lambda!336125) _$13!3113)))

(declare-fun b_lambda!234541 () Bool)

(assert (=> (not b_lambda!234541) (not d!1930773)))

(declare-fun bs!1527090 () Bool)

(assert (= bs!1527090 d!1930773))

(assert (=> bs!1527090 m!6998030))

(assert (=> bs!1527090 m!6998492))

(assert (=> d!1930337 d!1930773))

(assert (=> d!1930319 d!1930677))

(assert (=> d!1930319 d!1930359))

(declare-fun bs!1527106 () Bool)

(declare-fun b!6161268 () Bool)

(assert (= bs!1527106 (and b!6161268 b!6160346)))

(declare-fun lambda!336234 () Int)

(assert (=> bs!1527106 (not (= lambda!336234 lambda!336160))))

(declare-fun bs!1527109 () Bool)

(assert (= bs!1527109 (and b!6161268 d!1930385)))

(assert (=> bs!1527109 (not (= lambda!336234 lambda!336178))))

(declare-fun bs!1527111 () Bool)

(assert (= bs!1527111 (and b!6161268 b!6159849)))

(assert (=> bs!1527111 (not (= lambda!336234 lambda!336124))))

(declare-fun bs!1527112 () Bool)

(assert (= bs!1527112 (and b!6161268 d!1930381)))

(assert (=> bs!1527112 (not (= lambda!336234 lambda!336173))))

(declare-fun bs!1527113 () Bool)

(assert (= bs!1527113 (and b!6161268 b!6160339)))

(assert (=> bs!1527113 (= (and (= (reg!16432 (regTwo!32719 r!7292)) (reg!16432 r!7292)) (= (regTwo!32719 r!7292) r!7292)) (= lambda!336234 lambda!336159))))

(assert (=> bs!1527109 (not (= lambda!336234 lambda!336179))))

(assert (=> bs!1527111 (not (= lambda!336234 lambda!336123))))

(assert (=> b!6161268 true))

(assert (=> b!6161268 true))

(declare-fun bs!1527114 () Bool)

(declare-fun b!6161275 () Bool)

(assert (= bs!1527114 (and b!6161275 b!6160346)))

(declare-fun lambda!336235 () Int)

(assert (=> bs!1527114 (= (and (= (regOne!32718 (regTwo!32719 r!7292)) (regOne!32718 r!7292)) (= (regTwo!32718 (regTwo!32719 r!7292)) (regTwo!32718 r!7292))) (= lambda!336235 lambda!336160))))

(declare-fun bs!1527115 () Bool)

(assert (= bs!1527115 (and b!6161275 d!1930385)))

(assert (=> bs!1527115 (not (= lambda!336235 lambda!336178))))

(declare-fun bs!1527116 () Bool)

(assert (= bs!1527116 (and b!6161275 b!6159849)))

(assert (=> bs!1527116 (= (and (= (regOne!32718 (regTwo!32719 r!7292)) (regOne!32718 r!7292)) (= (regTwo!32718 (regTwo!32719 r!7292)) (regTwo!32718 r!7292))) (= lambda!336235 lambda!336124))))

(declare-fun bs!1527117 () Bool)

(assert (= bs!1527117 (and b!6161275 d!1930381)))

(assert (=> bs!1527117 (not (= lambda!336235 lambda!336173))))

(declare-fun bs!1527118 () Bool)

(assert (= bs!1527118 (and b!6161275 b!6160339)))

(assert (=> bs!1527118 (not (= lambda!336235 lambda!336159))))

(assert (=> bs!1527115 (= (and (= (regOne!32718 (regTwo!32719 r!7292)) (regOne!32718 r!7292)) (= (regTwo!32718 (regTwo!32719 r!7292)) (regTwo!32718 r!7292))) (= lambda!336235 lambda!336179))))

(assert (=> bs!1527116 (not (= lambda!336235 lambda!336123))))

(declare-fun bs!1527119 () Bool)

(assert (= bs!1527119 (and b!6161275 b!6161268)))

(assert (=> bs!1527119 (not (= lambda!336235 lambda!336234))))

(assert (=> b!6161275 true))

(assert (=> b!6161275 true))

(declare-fun b!6161266 () Bool)

(declare-fun e!3753854 () Bool)

(declare-fun e!3753860 () Bool)

(assert (=> b!6161266 (= e!3753854 e!3753860)))

(declare-fun c!1109675 () Bool)

(assert (=> b!6161266 (= c!1109675 ((_ is Star!16103) (regTwo!32719 r!7292)))))

(declare-fun b!6161267 () Bool)

(declare-fun e!3753857 () Bool)

(assert (=> b!6161267 (= e!3753857 (= s!2326 (Cons!64486 (c!1109260 (regTwo!32719 r!7292)) Nil!64486)))))

(declare-fun b!6161269 () Bool)

(declare-fun e!3753858 () Bool)

(declare-fun e!3753855 () Bool)

(assert (=> b!6161269 (= e!3753858 e!3753855)))

(declare-fun res!2551429 () Bool)

(assert (=> b!6161269 (= res!2551429 (not ((_ is EmptyLang!16103) (regTwo!32719 r!7292))))))

(assert (=> b!6161269 (=> (not res!2551429) (not e!3753855))))

(declare-fun bm!513157 () Bool)

(declare-fun call!513163 () Bool)

(assert (=> bm!513157 (= call!513163 (isEmpty!36455 s!2326))))

(declare-fun b!6161270 () Bool)

(declare-fun e!3753859 () Bool)

(assert (=> b!6161270 (= e!3753854 e!3753859)))

(declare-fun res!2551428 () Bool)

(assert (=> b!6161270 (= res!2551428 (matchRSpec!3204 (regOne!32719 (regTwo!32719 r!7292)) s!2326))))

(assert (=> b!6161270 (=> res!2551428 e!3753859)))

(declare-fun b!6161271 () Bool)

(declare-fun c!1109677 () Bool)

(assert (=> b!6161271 (= c!1109677 ((_ is ElementMatch!16103) (regTwo!32719 r!7292)))))

(assert (=> b!6161271 (= e!3753855 e!3753857)))

(declare-fun b!6161272 () Bool)

(assert (=> b!6161272 (= e!3753859 (matchRSpec!3204 (regTwo!32719 (regTwo!32719 r!7292)) s!2326))))

(declare-fun call!513162 () Bool)

(declare-fun bm!513158 () Bool)

(assert (=> bm!513158 (= call!513162 (Exists!3173 (ite c!1109675 lambda!336234 lambda!336235)))))

(declare-fun b!6161273 () Bool)

(declare-fun c!1109676 () Bool)

(assert (=> b!6161273 (= c!1109676 ((_ is Union!16103) (regTwo!32719 r!7292)))))

(assert (=> b!6161273 (= e!3753857 e!3753854)))

(declare-fun b!6161274 () Bool)

(declare-fun res!2551427 () Bool)

(declare-fun e!3753856 () Bool)

(assert (=> b!6161274 (=> res!2551427 e!3753856)))

(assert (=> b!6161274 (= res!2551427 call!513163)))

(assert (=> b!6161274 (= e!3753860 e!3753856)))

(assert (=> b!6161268 (= e!3753856 call!513162)))

(declare-fun d!1930775 () Bool)

(declare-fun c!1109678 () Bool)

(assert (=> d!1930775 (= c!1109678 ((_ is EmptyExpr!16103) (regTwo!32719 r!7292)))))

(assert (=> d!1930775 (= (matchRSpec!3204 (regTwo!32719 r!7292) s!2326) e!3753858)))

(assert (=> b!6161275 (= e!3753860 call!513162)))

(declare-fun b!6161276 () Bool)

(assert (=> b!6161276 (= e!3753858 call!513163)))

(assert (= (and d!1930775 c!1109678) b!6161276))

(assert (= (and d!1930775 (not c!1109678)) b!6161269))

(assert (= (and b!6161269 res!2551429) b!6161271))

(assert (= (and b!6161271 c!1109677) b!6161267))

(assert (= (and b!6161271 (not c!1109677)) b!6161273))

(assert (= (and b!6161273 c!1109676) b!6161270))

(assert (= (and b!6161273 (not c!1109676)) b!6161266))

(assert (= (and b!6161270 (not res!2551428)) b!6161272))

(assert (= (and b!6161266 c!1109675) b!6161274))

(assert (= (and b!6161266 (not c!1109675)) b!6161275))

(assert (= (and b!6161274 (not res!2551427)) b!6161268))

(assert (= (or b!6161268 b!6161275) bm!513158))

(assert (= (or b!6161276 b!6161274) bm!513157))

(assert (=> bm!513157 m!6998440))

(declare-fun m!6999442 () Bool)

(assert (=> b!6161270 m!6999442))

(declare-fun m!6999444 () Bool)

(assert (=> b!6161272 m!6999444))

(declare-fun m!6999446 () Bool)

(assert (=> bm!513158 m!6999446))

(assert (=> b!6160343 d!1930775))

(declare-fun bm!513162 () Bool)

(declare-fun call!513172 () List!64608)

(declare-fun call!513169 () List!64608)

(assert (=> bm!513162 (= call!513172 call!513169)))

(declare-fun bm!513163 () Bool)

(declare-fun call!513168 () (InoxSet Context!10974))

(declare-fun call!513171 () (InoxSet Context!10974))

(assert (=> bm!513163 (= call!513168 call!513171)))

(declare-fun c!1109687 () Bool)

(declare-fun call!513170 () (InoxSet Context!10974))

(declare-fun bm!513164 () Bool)

(assert (=> bm!513164 (= call!513170 (derivationStepZipperDown!1351 (ite c!1109687 (regOne!32719 (ite c!1109432 (regOne!32719 (regOne!32719 (regOne!32718 r!7292))) (regOne!32718 (regOne!32719 (regOne!32718 r!7292))))) (regOne!32718 (ite c!1109432 (regOne!32719 (regOne!32719 (regOne!32718 r!7292))) (regOne!32718 (regOne!32719 (regOne!32718 r!7292)))))) (ite c!1109687 (ite c!1109432 lt!2335757 (Context!10975 call!513017)) (Context!10975 call!513169)) (h!70934 s!2326)))))

(declare-fun b!6161307 () Bool)

(declare-fun e!3753880 () (InoxSet Context!10974))

(assert (=> b!6161307 (= e!3753880 call!513168)))

(declare-fun bm!513165 () Bool)

(declare-fun call!513167 () (InoxSet Context!10974))

(assert (=> bm!513165 (= call!513171 call!513167)))

(declare-fun b!6161308 () Bool)

(declare-fun c!1109689 () Bool)

(assert (=> b!6161308 (= c!1109689 ((_ is Star!16103) (ite c!1109432 (regOne!32719 (regOne!32719 (regOne!32718 r!7292))) (regOne!32718 (regOne!32719 (regOne!32718 r!7292))))))))

(declare-fun e!3753879 () (InoxSet Context!10974))

(assert (=> b!6161308 (= e!3753880 e!3753879)))

(declare-fun b!6161309 () Bool)

(declare-fun e!3753884 () (InoxSet Context!10974))

(declare-fun e!3753883 () (InoxSet Context!10974))

(assert (=> b!6161309 (= e!3753884 e!3753883)))

(assert (=> b!6161309 (= c!1109687 ((_ is Union!16103) (ite c!1109432 (regOne!32719 (regOne!32719 (regOne!32718 r!7292))) (regOne!32718 (regOne!32719 (regOne!32718 r!7292))))))))

(declare-fun b!6161310 () Bool)

(declare-fun e!3753882 () (InoxSet Context!10974))

(assert (=> b!6161310 (= e!3753882 e!3753880)))

(declare-fun c!1109685 () Bool)

(assert (=> b!6161310 (= c!1109685 ((_ is Concat!24948) (ite c!1109432 (regOne!32719 (regOne!32719 (regOne!32718 r!7292))) (regOne!32718 (regOne!32719 (regOne!32718 r!7292))))))))

(declare-fun b!6161311 () Bool)

(assert (=> b!6161311 (= e!3753879 call!513168)))

(declare-fun c!1109688 () Bool)

(declare-fun bm!513166 () Bool)

(assert (=> bm!513166 (= call!513169 ($colon$colon!1980 (exprs!5987 (ite c!1109432 lt!2335757 (Context!10975 call!513017))) (ite (or c!1109688 c!1109685) (regTwo!32718 (ite c!1109432 (regOne!32719 (regOne!32719 (regOne!32718 r!7292))) (regOne!32718 (regOne!32719 (regOne!32718 r!7292))))) (ite c!1109432 (regOne!32719 (regOne!32719 (regOne!32718 r!7292))) (regOne!32718 (regOne!32719 (regOne!32718 r!7292)))))))))

(declare-fun b!6161312 () Bool)

(declare-fun e!3753881 () Bool)

(assert (=> b!6161312 (= c!1109688 e!3753881)))

(declare-fun res!2551447 () Bool)

(assert (=> b!6161312 (=> (not res!2551447) (not e!3753881))))

(assert (=> b!6161312 (= res!2551447 ((_ is Concat!24948) (ite c!1109432 (regOne!32719 (regOne!32719 (regOne!32718 r!7292))) (regOne!32718 (regOne!32719 (regOne!32718 r!7292))))))))

(assert (=> b!6161312 (= e!3753883 e!3753882)))

(declare-fun b!6161313 () Bool)

(assert (=> b!6161313 (= e!3753883 ((_ map or) call!513170 call!513167))))

(declare-fun b!6161306 () Bool)

(assert (=> b!6161306 (= e!3753884 (store ((as const (Array Context!10974 Bool)) false) (ite c!1109432 lt!2335757 (Context!10975 call!513017)) true))))

(declare-fun d!1930793 () Bool)

(declare-fun c!1109686 () Bool)

(assert (=> d!1930793 (= c!1109686 (and ((_ is ElementMatch!16103) (ite c!1109432 (regOne!32719 (regOne!32719 (regOne!32718 r!7292))) (regOne!32718 (regOne!32719 (regOne!32718 r!7292))))) (= (c!1109260 (ite c!1109432 (regOne!32719 (regOne!32719 (regOne!32718 r!7292))) (regOne!32718 (regOne!32719 (regOne!32718 r!7292))))) (h!70934 s!2326))))))

(assert (=> d!1930793 (= (derivationStepZipperDown!1351 (ite c!1109432 (regOne!32719 (regOne!32719 (regOne!32718 r!7292))) (regOne!32718 (regOne!32719 (regOne!32718 r!7292)))) (ite c!1109432 lt!2335757 (Context!10975 call!513017)) (h!70934 s!2326)) e!3753884)))

(declare-fun b!6161314 () Bool)

(assert (=> b!6161314 (= e!3753882 ((_ map or) call!513170 call!513171))))

(declare-fun b!6161315 () Bool)

(assert (=> b!6161315 (= e!3753881 (nullable!6096 (regOne!32718 (ite c!1109432 (regOne!32719 (regOne!32719 (regOne!32718 r!7292))) (regOne!32718 (regOne!32719 (regOne!32718 r!7292)))))))))

(declare-fun b!6161316 () Bool)

(assert (=> b!6161316 (= e!3753879 ((as const (Array Context!10974 Bool)) false))))

(declare-fun bm!513167 () Bool)

(assert (=> bm!513167 (= call!513167 (derivationStepZipperDown!1351 (ite c!1109687 (regTwo!32719 (ite c!1109432 (regOne!32719 (regOne!32719 (regOne!32718 r!7292))) (regOne!32718 (regOne!32719 (regOne!32718 r!7292))))) (ite c!1109688 (regTwo!32718 (ite c!1109432 (regOne!32719 (regOne!32719 (regOne!32718 r!7292))) (regOne!32718 (regOne!32719 (regOne!32718 r!7292))))) (ite c!1109685 (regOne!32718 (ite c!1109432 (regOne!32719 (regOne!32719 (regOne!32718 r!7292))) (regOne!32718 (regOne!32719 (regOne!32718 r!7292))))) (reg!16432 (ite c!1109432 (regOne!32719 (regOne!32719 (regOne!32718 r!7292))) (regOne!32718 (regOne!32719 (regOne!32718 r!7292)))))))) (ite (or c!1109687 c!1109688) (ite c!1109432 lt!2335757 (Context!10975 call!513017)) (Context!10975 call!513172)) (h!70934 s!2326)))))

(assert (= (and d!1930793 c!1109686) b!6161306))

(assert (= (and d!1930793 (not c!1109686)) b!6161309))

(assert (= (and b!6161309 c!1109687) b!6161313))

(assert (= (and b!6161309 (not c!1109687)) b!6161312))

(assert (= (and b!6161312 res!2551447) b!6161315))

(assert (= (and b!6161312 c!1109688) b!6161314))

(assert (= (and b!6161312 (not c!1109688)) b!6161310))

(assert (= (and b!6161310 c!1109685) b!6161307))

(assert (= (and b!6161310 (not c!1109685)) b!6161308))

(assert (= (and b!6161308 c!1109689) b!6161311))

(assert (= (and b!6161308 (not c!1109689)) b!6161316))

(assert (= (or b!6161307 b!6161311) bm!513162))

(assert (= (or b!6161307 b!6161311) bm!513163))

(assert (= (or b!6161314 bm!513162) bm!513166))

(assert (= (or b!6161314 bm!513163) bm!513165))

(assert (= (or b!6161313 bm!513165) bm!513167))

(assert (= (or b!6161313 b!6161314) bm!513164))

(declare-fun m!6999458 () Bool)

(assert (=> bm!513166 m!6999458))

(declare-fun m!6999460 () Bool)

(assert (=> bm!513167 m!6999460))

(declare-fun m!6999462 () Bool)

(assert (=> bm!513164 m!6999462))

(declare-fun m!6999464 () Bool)

(assert (=> b!6161306 m!6999464))

(declare-fun m!6999466 () Bool)

(assert (=> b!6161315 m!6999466))

(assert (=> bm!513012 d!1930793))

(declare-fun bs!1527120 () Bool)

(declare-fun d!1930797 () Bool)

(assert (= bs!1527120 (and d!1930797 d!1930589)))

(declare-fun lambda!336236 () Int)

(assert (=> bs!1527120 (= lambda!336236 lambda!336210)))

(declare-fun bs!1527121 () Bool)

(assert (= bs!1527121 (and d!1930797 d!1930741)))

(assert (=> bs!1527121 (= lambda!336236 lambda!336227)))

(declare-fun bs!1527122 () Bool)

(assert (= bs!1527122 (and d!1930797 d!1930743)))

(assert (=> bs!1527122 (= lambda!336236 lambda!336228)))

(declare-fun bs!1527123 () Bool)

(assert (= bs!1527123 (and d!1930797 d!1930753)))

(assert (=> bs!1527123 (= lambda!336236 lambda!336230)))

(assert (=> d!1930797 (= (nullableZipper!1884 lt!2335744) (exists!2448 lt!2335744 lambda!336236))))

(declare-fun bs!1527124 () Bool)

(assert (= bs!1527124 d!1930797))

(declare-fun m!6999468 () Bool)

(assert (=> bs!1527124 m!6999468))

(assert (=> b!6160528 d!1930797))

(declare-fun b!6161317 () Bool)

(declare-fun e!3753891 () Bool)

(declare-fun call!513173 () Bool)

(assert (=> b!6161317 (= e!3753891 call!513173)))

(declare-fun c!1109691 () Bool)

(declare-fun bm!513168 () Bool)

(assert (=> bm!513168 (= call!513173 (validRegex!7839 (ite c!1109691 (regTwo!32719 (ite c!1109455 (regTwo!32719 r!7292) (regTwo!32718 r!7292))) (regTwo!32718 (ite c!1109455 (regTwo!32719 r!7292) (regTwo!32718 r!7292))))))))

(declare-fun b!6161318 () Bool)

(declare-fun e!3753890 () Bool)

(declare-fun call!513175 () Bool)

(assert (=> b!6161318 (= e!3753890 call!513175)))

(declare-fun c!1109690 () Bool)

(declare-fun bm!513169 () Bool)

(assert (=> bm!513169 (= call!513175 (validRegex!7839 (ite c!1109690 (reg!16432 (ite c!1109455 (regTwo!32719 r!7292) (regTwo!32718 r!7292))) (ite c!1109691 (regOne!32719 (ite c!1109455 (regTwo!32719 r!7292) (regTwo!32718 r!7292))) (regOne!32718 (ite c!1109455 (regTwo!32719 r!7292) (regTwo!32718 r!7292)))))))))

(declare-fun b!6161319 () Bool)

(declare-fun res!2551448 () Bool)

(assert (=> b!6161319 (=> (not res!2551448) (not e!3753891))))

(declare-fun call!513174 () Bool)

(assert (=> b!6161319 (= res!2551448 call!513174)))

(declare-fun e!3753885 () Bool)

(assert (=> b!6161319 (= e!3753885 e!3753891)))

(declare-fun b!6161320 () Bool)

(declare-fun e!3753887 () Bool)

(assert (=> b!6161320 (= e!3753887 e!3753885)))

(assert (=> b!6161320 (= c!1109691 ((_ is Union!16103) (ite c!1109455 (regTwo!32719 r!7292) (regTwo!32718 r!7292))))))

(declare-fun b!6161321 () Bool)

(declare-fun e!3753886 () Bool)

(declare-fun e!3753888 () Bool)

(assert (=> b!6161321 (= e!3753886 e!3753888)))

(declare-fun res!2551449 () Bool)

(assert (=> b!6161321 (=> (not res!2551449) (not e!3753888))))

(assert (=> b!6161321 (= res!2551449 call!513174)))

(declare-fun bm!513170 () Bool)

(assert (=> bm!513170 (= call!513174 call!513175)))

(declare-fun b!6161323 () Bool)

(declare-fun e!3753889 () Bool)

(assert (=> b!6161323 (= e!3753889 e!3753887)))

(assert (=> b!6161323 (= c!1109690 ((_ is Star!16103) (ite c!1109455 (regTwo!32719 r!7292) (regTwo!32718 r!7292))))))

(declare-fun b!6161322 () Bool)

(declare-fun res!2551451 () Bool)

(assert (=> b!6161322 (=> res!2551451 e!3753886)))

(assert (=> b!6161322 (= res!2551451 (not ((_ is Concat!24948) (ite c!1109455 (regTwo!32719 r!7292) (regTwo!32718 r!7292)))))))

(assert (=> b!6161322 (= e!3753885 e!3753886)))

(declare-fun d!1930799 () Bool)

(declare-fun res!2551452 () Bool)

(assert (=> d!1930799 (=> res!2551452 e!3753889)))

(assert (=> d!1930799 (= res!2551452 ((_ is ElementMatch!16103) (ite c!1109455 (regTwo!32719 r!7292) (regTwo!32718 r!7292))))))

(assert (=> d!1930799 (= (validRegex!7839 (ite c!1109455 (regTwo!32719 r!7292) (regTwo!32718 r!7292))) e!3753889)))

(declare-fun b!6161324 () Bool)

(assert (=> b!6161324 (= e!3753887 e!3753890)))

(declare-fun res!2551450 () Bool)

(assert (=> b!6161324 (= res!2551450 (not (nullable!6096 (reg!16432 (ite c!1109455 (regTwo!32719 r!7292) (regTwo!32718 r!7292))))))))

(assert (=> b!6161324 (=> (not res!2551450) (not e!3753890))))

(declare-fun b!6161325 () Bool)

(assert (=> b!6161325 (= e!3753888 call!513173)))

(assert (= (and d!1930799 (not res!2551452)) b!6161323))

(assert (= (and b!6161323 c!1109690) b!6161324))

(assert (= (and b!6161323 (not c!1109690)) b!6161320))

(assert (= (and b!6161324 res!2551450) b!6161318))

(assert (= (and b!6161320 c!1109691) b!6161319))

(assert (= (and b!6161320 (not c!1109691)) b!6161322))

(assert (= (and b!6161319 res!2551448) b!6161317))

(assert (= (and b!6161322 (not res!2551451)) b!6161321))

(assert (= (and b!6161321 res!2551449) b!6161325))

(assert (= (or b!6161317 b!6161325) bm!513168))

(assert (= (or b!6161319 b!6161321) bm!513170))

(assert (= (or b!6161318 bm!513170) bm!513169))

(declare-fun m!6999470 () Bool)

(assert (=> bm!513168 m!6999470))

(declare-fun m!6999472 () Bool)

(assert (=> bm!513169 m!6999472))

(declare-fun m!6999474 () Bool)

(assert (=> b!6161324 m!6999474))

(assert (=> bm!513022 d!1930799))

(declare-fun d!1930801 () Bool)

(declare-fun c!1109692 () Bool)

(assert (=> d!1930801 (= c!1109692 (isEmpty!36455 (tail!11811 (t!378106 s!2326))))))

(declare-fun e!3753892 () Bool)

(assert (=> d!1930801 (= (matchZipper!2115 (derivationStepZipper!2076 ((_ map or) lt!2335764 lt!2335744) (head!12726 (t!378106 s!2326))) (tail!11811 (t!378106 s!2326))) e!3753892)))

(declare-fun b!6161326 () Bool)

(assert (=> b!6161326 (= e!3753892 (nullableZipper!1884 (derivationStepZipper!2076 ((_ map or) lt!2335764 lt!2335744) (head!12726 (t!378106 s!2326)))))))

(declare-fun b!6161327 () Bool)

(assert (=> b!6161327 (= e!3753892 (matchZipper!2115 (derivationStepZipper!2076 (derivationStepZipper!2076 ((_ map or) lt!2335764 lt!2335744) (head!12726 (t!378106 s!2326))) (head!12726 (tail!11811 (t!378106 s!2326)))) (tail!11811 (tail!11811 (t!378106 s!2326)))))))

(assert (= (and d!1930801 c!1109692) b!6161326))

(assert (= (and d!1930801 (not c!1109692)) b!6161327))

(assert (=> d!1930801 m!6998394))

(assert (=> d!1930801 m!6998964))

(assert (=> b!6161326 m!6998472))

(declare-fun m!6999476 () Bool)

(assert (=> b!6161326 m!6999476))

(assert (=> b!6161327 m!6998394))

(assert (=> b!6161327 m!6998968))

(assert (=> b!6161327 m!6998472))

(assert (=> b!6161327 m!6998968))

(declare-fun m!6999478 () Bool)

(assert (=> b!6161327 m!6999478))

(assert (=> b!6161327 m!6998394))

(assert (=> b!6161327 m!6998972))

(assert (=> b!6161327 m!6999478))

(assert (=> b!6161327 m!6998972))

(declare-fun m!6999480 () Bool)

(assert (=> b!6161327 m!6999480))

(assert (=> b!6160394 d!1930801))

(declare-fun bs!1527125 () Bool)

(declare-fun d!1930803 () Bool)

(assert (= bs!1527125 (and d!1930803 b!6159868)))

(declare-fun lambda!336237 () Int)

(assert (=> bs!1527125 (= (= (head!12726 (t!378106 s!2326)) (h!70934 s!2326)) (= lambda!336237 lambda!336125))))

(declare-fun bs!1527126 () Bool)

(assert (= bs!1527126 (and d!1930803 d!1930655)))

(assert (=> bs!1527126 (= lambda!336237 lambda!336215)))

(declare-fun bs!1527127 () Bool)

(assert (= bs!1527127 (and d!1930803 d!1930671)))

(assert (=> bs!1527127 (= lambda!336237 lambda!336217)))

(declare-fun bs!1527128 () Bool)

(assert (= bs!1527128 (and d!1930803 d!1930735)))

(assert (=> bs!1527128 (= lambda!336237 lambda!336226)))

(declare-fun bs!1527129 () Bool)

(assert (= bs!1527129 (and d!1930803 d!1930567)))

(assert (=> bs!1527129 (= lambda!336237 lambda!336206)))

(declare-fun bs!1527130 () Bool)

(assert (= bs!1527130 (and d!1930803 d!1930719)))

(assert (=> bs!1527130 (= lambda!336237 lambda!336225)))

(declare-fun bs!1527131 () Bool)

(assert (= bs!1527131 (and d!1930803 d!1930749)))

(assert (=> bs!1527131 (= lambda!336237 lambda!336229)))

(assert (=> d!1930803 true))

(assert (=> d!1930803 (= (derivationStepZipper!2076 ((_ map or) lt!2335764 lt!2335744) (head!12726 (t!378106 s!2326))) (flatMap!1608 ((_ map or) lt!2335764 lt!2335744) lambda!336237))))

(declare-fun bs!1527132 () Bool)

(assert (= bs!1527132 d!1930803))

(declare-fun m!6999482 () Bool)

(assert (=> bs!1527132 m!6999482))

(assert (=> b!6160394 d!1930803))

(assert (=> b!6160394 d!1930575))

(assert (=> b!6160394 d!1930579))

(declare-fun d!1930805 () Bool)

(assert (=> d!1930805 true))

(declare-fun setRes!41756 () Bool)

(assert (=> d!1930805 setRes!41756))

(declare-fun condSetEmpty!41756 () Bool)

(declare-fun res!2551455 () (InoxSet Context!10974))

(assert (=> d!1930805 (= condSetEmpty!41756 (= res!2551455 ((as const (Array Context!10974 Bool)) false)))))

(assert (=> d!1930805 (= (choose!45803 z!1189 lambda!336125) res!2551455)))

(declare-fun setIsEmpty!41756 () Bool)

(assert (=> setIsEmpty!41756 setRes!41756))

(declare-fun e!3753900 () Bool)

(declare-fun setNonEmpty!41756 () Bool)

(declare-fun setElem!41756 () Context!10974)

(declare-fun tp!1720232 () Bool)

(assert (=> setNonEmpty!41756 (= setRes!41756 (and tp!1720232 (inv!83504 setElem!41756) e!3753900))))

(declare-fun setRest!41756 () (InoxSet Context!10974))

(assert (=> setNonEmpty!41756 (= res!2551455 ((_ map or) (store ((as const (Array Context!10974 Bool)) false) setElem!41756 true) setRest!41756))))

(declare-fun b!6161342 () Bool)

(declare-fun tp!1720231 () Bool)

(assert (=> b!6161342 (= e!3753900 tp!1720231)))

(assert (= (and d!1930805 condSetEmpty!41756) setIsEmpty!41756))

(assert (= (and d!1930805 (not condSetEmpty!41756)) setNonEmpty!41756))

(assert (= setNonEmpty!41756 b!6161342))

(declare-fun m!6999484 () Bool)

(assert (=> setNonEmpty!41756 m!6999484))

(assert (=> d!1930401 d!1930805))

(assert (=> bm!512987 d!1930677))

(assert (=> d!1930327 d!1930607))

(declare-fun d!1930807 () Bool)

(assert (=> d!1930807 (= (isEmptyLang!1530 lt!2335839) ((_ is EmptyLang!16103) lt!2335839))))

(assert (=> b!6160490 d!1930807))

(declare-fun d!1930809 () Bool)

(assert (=> d!1930809 true))

(declare-fun setRes!41757 () Bool)

(assert (=> d!1930809 setRes!41757))

(declare-fun condSetEmpty!41757 () Bool)

(declare-fun res!2551456 () (InoxSet Context!10974))

(assert (=> d!1930809 (= condSetEmpty!41757 (= res!2551456 ((as const (Array Context!10974 Bool)) false)))))

(assert (=> d!1930809 (= (choose!45803 lt!2335743 lambda!336125) res!2551456)))

(declare-fun setIsEmpty!41757 () Bool)

(assert (=> setIsEmpty!41757 setRes!41757))

(declare-fun setElem!41757 () Context!10974)

(declare-fun tp!1720234 () Bool)

(declare-fun e!3753906 () Bool)

(declare-fun setNonEmpty!41757 () Bool)

(assert (=> setNonEmpty!41757 (= setRes!41757 (and tp!1720234 (inv!83504 setElem!41757) e!3753906))))

(declare-fun setRest!41757 () (InoxSet Context!10974))

(assert (=> setNonEmpty!41757 (= res!2551456 ((_ map or) (store ((as const (Array Context!10974 Bool)) false) setElem!41757 true) setRest!41757))))

(declare-fun b!6161351 () Bool)

(declare-fun tp!1720233 () Bool)

(assert (=> b!6161351 (= e!3753906 tp!1720233)))

(assert (= (and d!1930809 condSetEmpty!41757) setIsEmpty!41757))

(assert (= (and d!1930809 (not condSetEmpty!41757)) setNonEmpty!41757))

(assert (= setNonEmpty!41757 b!6161351))

(declare-fun m!6999486 () Bool)

(assert (=> setNonEmpty!41757 m!6999486))

(assert (=> d!1930339 d!1930809))

(assert (=> b!6160218 d!1930365))

(declare-fun d!1930811 () Bool)

(assert (=> d!1930811 (= (isEmpty!36453 (tail!11813 (unfocusZipperList!1524 zl!343))) ((_ is Nil!64484) (tail!11813 (unfocusZipperList!1524 zl!343))))))

(assert (=> b!6160486 d!1930811))

(declare-fun d!1930813 () Bool)

(assert (=> d!1930813 (= (tail!11813 (unfocusZipperList!1524 zl!343)) (t!378104 (unfocusZipperList!1524 zl!343)))))

(assert (=> b!6160486 d!1930813))

(assert (=> d!1930307 d!1930309))

(assert (=> d!1930307 d!1930369))

(declare-fun d!1930815 () Bool)

(declare-fun e!3753907 () Bool)

(assert (=> d!1930815 (= (matchZipper!2115 ((_ map or) lt!2335761 lt!2335744) (t!378106 s!2326)) e!3753907)))

(declare-fun res!2551457 () Bool)

(assert (=> d!1930815 (=> res!2551457 e!3753907)))

(assert (=> d!1930815 (= res!2551457 (matchZipper!2115 lt!2335761 (t!378106 s!2326)))))

(assert (=> d!1930815 true))

(declare-fun _$48!1738 () Unit!157603)

(assert (=> d!1930815 (= (choose!45800 lt!2335761 lt!2335744 (t!378106 s!2326)) _$48!1738)))

(declare-fun b!6161352 () Bool)

(assert (=> b!6161352 (= e!3753907 (matchZipper!2115 lt!2335744 (t!378106 s!2326)))))

(assert (= (and d!1930815 (not res!2551457)) b!6161352))

(assert (=> d!1930815 m!6998066))

(assert (=> d!1930815 m!6998036))

(assert (=> b!6161352 m!6998062))

(assert (=> d!1930307 d!1930815))

(declare-fun b!6161353 () Bool)

(declare-fun e!3753910 () (InoxSet Context!10974))

(assert (=> b!6161353 (= e!3753910 ((as const (Array Context!10974 Bool)) false))))

(declare-fun b!6161354 () Bool)

(declare-fun call!513184 () (InoxSet Context!10974))

(assert (=> b!6161354 (= e!3753910 call!513184)))

(declare-fun bm!513179 () Bool)

(assert (=> bm!513179 (= call!513184 (derivationStepZipperDown!1351 (h!70932 (exprs!5987 (Context!10975 (t!378104 (exprs!5987 lt!2335770))))) (Context!10975 (t!378104 (exprs!5987 (Context!10975 (t!378104 (exprs!5987 lt!2335770)))))) (h!70934 s!2326)))))

(declare-fun b!6161355 () Bool)

(declare-fun e!3753909 () (InoxSet Context!10974))

(assert (=> b!6161355 (= e!3753909 e!3753910)))

(declare-fun c!1109704 () Bool)

(assert (=> b!6161355 (= c!1109704 ((_ is Cons!64484) (exprs!5987 (Context!10975 (t!378104 (exprs!5987 lt!2335770))))))))

(declare-fun d!1930817 () Bool)

(declare-fun c!1109703 () Bool)

(declare-fun e!3753908 () Bool)

(assert (=> d!1930817 (= c!1109703 e!3753908)))

(declare-fun res!2551458 () Bool)

(assert (=> d!1930817 (=> (not res!2551458) (not e!3753908))))

(assert (=> d!1930817 (= res!2551458 ((_ is Cons!64484) (exprs!5987 (Context!10975 (t!378104 (exprs!5987 lt!2335770))))))))

(assert (=> d!1930817 (= (derivationStepZipperUp!1277 (Context!10975 (t!378104 (exprs!5987 lt!2335770))) (h!70934 s!2326)) e!3753909)))

(declare-fun b!6161356 () Bool)

(assert (=> b!6161356 (= e!3753909 ((_ map or) call!513184 (derivationStepZipperUp!1277 (Context!10975 (t!378104 (exprs!5987 (Context!10975 (t!378104 (exprs!5987 lt!2335770)))))) (h!70934 s!2326))))))

(declare-fun b!6161357 () Bool)

(assert (=> b!6161357 (= e!3753908 (nullable!6096 (h!70932 (exprs!5987 (Context!10975 (t!378104 (exprs!5987 lt!2335770)))))))))

(assert (= (and d!1930817 res!2551458) b!6161357))

(assert (= (and d!1930817 c!1109703) b!6161356))

(assert (= (and d!1930817 (not c!1109703)) b!6161355))

(assert (= (and b!6161355 c!1109704) b!6161354))

(assert (= (and b!6161355 (not c!1109704)) b!6161353))

(assert (= (or b!6161356 b!6161354) bm!513179))

(declare-fun m!6999488 () Bool)

(assert (=> bm!513179 m!6999488))

(declare-fun m!6999490 () Bool)

(assert (=> b!6161356 m!6999490))

(declare-fun m!6999492 () Bool)

(assert (=> b!6161357 m!6999492))

(assert (=> b!6160415 d!1930817))

(assert (=> b!6160534 d!1930297))

(declare-fun bm!513180 () Bool)

(declare-fun call!513190 () List!64608)

(declare-fun call!513187 () List!64608)

(assert (=> bm!513180 (= call!513190 call!513187)))

(declare-fun bm!513181 () Bool)

(declare-fun call!513186 () (InoxSet Context!10974))

(declare-fun call!513189 () (InoxSet Context!10974))

(assert (=> bm!513181 (= call!513186 call!513189)))

(declare-fun bm!513182 () Bool)

(declare-fun call!513188 () (InoxSet Context!10974))

(declare-fun c!1109707 () Bool)

(assert (=> bm!513182 (= call!513188 (derivationStepZipperDown!1351 (ite c!1109707 (regOne!32719 (ite c!1109432 (regTwo!32719 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109433 (regTwo!32718 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109430 (regOne!32718 (regOne!32719 (regOne!32718 r!7292))) (reg!16432 (regOne!32719 (regOne!32718 r!7292))))))) (regOne!32718 (ite c!1109432 (regTwo!32719 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109433 (regTwo!32718 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109430 (regOne!32718 (regOne!32719 (regOne!32718 r!7292))) (reg!16432 (regOne!32719 (regOne!32718 r!7292)))))))) (ite c!1109707 (ite (or c!1109432 c!1109433) lt!2335757 (Context!10975 call!513020)) (Context!10975 call!513187)) (h!70934 s!2326)))))

(declare-fun b!6161359 () Bool)

(declare-fun e!3753912 () (InoxSet Context!10974))

(assert (=> b!6161359 (= e!3753912 call!513186)))

(declare-fun bm!513183 () Bool)

(declare-fun call!513185 () (InoxSet Context!10974))

(assert (=> bm!513183 (= call!513189 call!513185)))

(declare-fun c!1109709 () Bool)

(declare-fun b!6161360 () Bool)

(assert (=> b!6161360 (= c!1109709 ((_ is Star!16103) (ite c!1109432 (regTwo!32719 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109433 (regTwo!32718 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109430 (regOne!32718 (regOne!32719 (regOne!32718 r!7292))) (reg!16432 (regOne!32719 (regOne!32718 r!7292))))))))))

(declare-fun e!3753911 () (InoxSet Context!10974))

(assert (=> b!6161360 (= e!3753912 e!3753911)))

(declare-fun b!6161361 () Bool)

(declare-fun e!3753916 () (InoxSet Context!10974))

(declare-fun e!3753915 () (InoxSet Context!10974))

(assert (=> b!6161361 (= e!3753916 e!3753915)))

(assert (=> b!6161361 (= c!1109707 ((_ is Union!16103) (ite c!1109432 (regTwo!32719 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109433 (regTwo!32718 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109430 (regOne!32718 (regOne!32719 (regOne!32718 r!7292))) (reg!16432 (regOne!32719 (regOne!32718 r!7292))))))))))

(declare-fun b!6161362 () Bool)

(declare-fun e!3753914 () (InoxSet Context!10974))

(assert (=> b!6161362 (= e!3753914 e!3753912)))

(declare-fun c!1109705 () Bool)

(assert (=> b!6161362 (= c!1109705 ((_ is Concat!24948) (ite c!1109432 (regTwo!32719 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109433 (regTwo!32718 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109430 (regOne!32718 (regOne!32719 (regOne!32718 r!7292))) (reg!16432 (regOne!32719 (regOne!32718 r!7292))))))))))

(declare-fun b!6161363 () Bool)

(assert (=> b!6161363 (= e!3753911 call!513186)))

(declare-fun bm!513184 () Bool)

(declare-fun c!1109708 () Bool)

(assert (=> bm!513184 (= call!513187 ($colon$colon!1980 (exprs!5987 (ite (or c!1109432 c!1109433) lt!2335757 (Context!10975 call!513020))) (ite (or c!1109708 c!1109705) (regTwo!32718 (ite c!1109432 (regTwo!32719 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109433 (regTwo!32718 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109430 (regOne!32718 (regOne!32719 (regOne!32718 r!7292))) (reg!16432 (regOne!32719 (regOne!32718 r!7292))))))) (ite c!1109432 (regTwo!32719 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109433 (regTwo!32718 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109430 (regOne!32718 (regOne!32719 (regOne!32718 r!7292))) (reg!16432 (regOne!32719 (regOne!32718 r!7292)))))))))))

(declare-fun b!6161364 () Bool)

(declare-fun e!3753913 () Bool)

(assert (=> b!6161364 (= c!1109708 e!3753913)))

(declare-fun res!2551459 () Bool)

(assert (=> b!6161364 (=> (not res!2551459) (not e!3753913))))

(assert (=> b!6161364 (= res!2551459 ((_ is Concat!24948) (ite c!1109432 (regTwo!32719 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109433 (regTwo!32718 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109430 (regOne!32718 (regOne!32719 (regOne!32718 r!7292))) (reg!16432 (regOne!32719 (regOne!32718 r!7292))))))))))

(assert (=> b!6161364 (= e!3753915 e!3753914)))

(declare-fun b!6161365 () Bool)

(assert (=> b!6161365 (= e!3753915 ((_ map or) call!513188 call!513185))))

(declare-fun b!6161358 () Bool)

(assert (=> b!6161358 (= e!3753916 (store ((as const (Array Context!10974 Bool)) false) (ite (or c!1109432 c!1109433) lt!2335757 (Context!10975 call!513020)) true))))

(declare-fun c!1109706 () Bool)

(declare-fun d!1930819 () Bool)

(assert (=> d!1930819 (= c!1109706 (and ((_ is ElementMatch!16103) (ite c!1109432 (regTwo!32719 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109433 (regTwo!32718 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109430 (regOne!32718 (regOne!32719 (regOne!32718 r!7292))) (reg!16432 (regOne!32719 (regOne!32718 r!7292))))))) (= (c!1109260 (ite c!1109432 (regTwo!32719 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109433 (regTwo!32718 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109430 (regOne!32718 (regOne!32719 (regOne!32718 r!7292))) (reg!16432 (regOne!32719 (regOne!32718 r!7292))))))) (h!70934 s!2326))))))

(assert (=> d!1930819 (= (derivationStepZipperDown!1351 (ite c!1109432 (regTwo!32719 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109433 (regTwo!32718 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109430 (regOne!32718 (regOne!32719 (regOne!32718 r!7292))) (reg!16432 (regOne!32719 (regOne!32718 r!7292)))))) (ite (or c!1109432 c!1109433) lt!2335757 (Context!10975 call!513020)) (h!70934 s!2326)) e!3753916)))

(declare-fun b!6161366 () Bool)

(assert (=> b!6161366 (= e!3753914 ((_ map or) call!513188 call!513189))))

(declare-fun b!6161367 () Bool)

(assert (=> b!6161367 (= e!3753913 (nullable!6096 (regOne!32718 (ite c!1109432 (regTwo!32719 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109433 (regTwo!32718 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109430 (regOne!32718 (regOne!32719 (regOne!32718 r!7292))) (reg!16432 (regOne!32719 (regOne!32718 r!7292)))))))))))

(declare-fun b!6161368 () Bool)

(assert (=> b!6161368 (= e!3753911 ((as const (Array Context!10974 Bool)) false))))

(declare-fun bm!513185 () Bool)

(assert (=> bm!513185 (= call!513185 (derivationStepZipperDown!1351 (ite c!1109707 (regTwo!32719 (ite c!1109432 (regTwo!32719 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109433 (regTwo!32718 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109430 (regOne!32718 (regOne!32719 (regOne!32718 r!7292))) (reg!16432 (regOne!32719 (regOne!32718 r!7292))))))) (ite c!1109708 (regTwo!32718 (ite c!1109432 (regTwo!32719 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109433 (regTwo!32718 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109430 (regOne!32718 (regOne!32719 (regOne!32718 r!7292))) (reg!16432 (regOne!32719 (regOne!32718 r!7292))))))) (ite c!1109705 (regOne!32718 (ite c!1109432 (regTwo!32719 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109433 (regTwo!32718 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109430 (regOne!32718 (regOne!32719 (regOne!32718 r!7292))) (reg!16432 (regOne!32719 (regOne!32718 r!7292))))))) (reg!16432 (ite c!1109432 (regTwo!32719 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109433 (regTwo!32718 (regOne!32719 (regOne!32718 r!7292))) (ite c!1109430 (regOne!32718 (regOne!32719 (regOne!32718 r!7292))) (reg!16432 (regOne!32719 (regOne!32718 r!7292)))))))))) (ite (or c!1109707 c!1109708) (ite (or c!1109432 c!1109433) lt!2335757 (Context!10975 call!513020)) (Context!10975 call!513190)) (h!70934 s!2326)))))

(assert (= (and d!1930819 c!1109706) b!6161358))

(assert (= (and d!1930819 (not c!1109706)) b!6161361))

(assert (= (and b!6161361 c!1109707) b!6161365))

(assert (= (and b!6161361 (not c!1109707)) b!6161364))

(assert (= (and b!6161364 res!2551459) b!6161367))

(assert (= (and b!6161364 c!1109708) b!6161366))

(assert (= (and b!6161364 (not c!1109708)) b!6161362))

(assert (= (and b!6161362 c!1109705) b!6161359))

(assert (= (and b!6161362 (not c!1109705)) b!6161360))

(assert (= (and b!6161360 c!1109709) b!6161363))

(assert (= (and b!6161360 (not c!1109709)) b!6161368))

(assert (= (or b!6161359 b!6161363) bm!513180))

(assert (= (or b!6161359 b!6161363) bm!513181))

(assert (= (or b!6161366 bm!513180) bm!513184))

(assert (= (or b!6161366 bm!513181) bm!513183))

(assert (= (or b!6161365 bm!513183) bm!513185))

(assert (= (or b!6161365 b!6161366) bm!513182))

(declare-fun m!6999494 () Bool)

(assert (=> bm!513184 m!6999494))

(declare-fun m!6999496 () Bool)

(assert (=> bm!513185 m!6999496))

(declare-fun m!6999498 () Bool)

(assert (=> bm!513182 m!6999498))

(declare-fun m!6999500 () Bool)

(assert (=> b!6161358 m!6999500))

(declare-fun m!6999502 () Bool)

(assert (=> b!6161367 m!6999502))

(assert (=> bm!513015 d!1930819))

(declare-fun d!1930821 () Bool)

(declare-fun c!1109710 () Bool)

(assert (=> d!1930821 (= c!1109710 (isEmpty!36455 (tail!11811 s!2326)))))

(declare-fun e!3753917 () Bool)

(assert (=> d!1930821 (= (matchZipper!2115 (derivationStepZipper!2076 lt!2335743 (head!12726 s!2326)) (tail!11811 s!2326)) e!3753917)))

(declare-fun b!6161369 () Bool)

(assert (=> b!6161369 (= e!3753917 (nullableZipper!1884 (derivationStepZipper!2076 lt!2335743 (head!12726 s!2326))))))

(declare-fun b!6161370 () Bool)

(assert (=> b!6161370 (= e!3753917 (matchZipper!2115 (derivationStepZipper!2076 (derivationStepZipper!2076 lt!2335743 (head!12726 s!2326)) (head!12726 (tail!11811 s!2326))) (tail!11811 (tail!11811 s!2326))))))

(assert (= (and d!1930821 c!1109710) b!6161369))

(assert (= (and d!1930821 (not c!1109710)) b!6161370))

(assert (=> d!1930821 m!6998448))

(assert (=> d!1930821 m!6998450))

(assert (=> b!6161369 m!6998488))

(declare-fun m!6999504 () Bool)

(assert (=> b!6161369 m!6999504))

(assert (=> b!6161370 m!6998448))

(declare-fun m!6999506 () Bool)

(assert (=> b!6161370 m!6999506))

(assert (=> b!6161370 m!6998488))

(assert (=> b!6161370 m!6999506))

(declare-fun m!6999508 () Bool)

(assert (=> b!6161370 m!6999508))

(assert (=> b!6161370 m!6998448))

(declare-fun m!6999510 () Bool)

(assert (=> b!6161370 m!6999510))

(assert (=> b!6161370 m!6999508))

(assert (=> b!6161370 m!6999510))

(declare-fun m!6999512 () Bool)

(assert (=> b!6161370 m!6999512))

(assert (=> b!6160411 d!1930821))

(declare-fun bs!1527133 () Bool)

(declare-fun d!1930823 () Bool)

(assert (= bs!1527133 (and d!1930823 d!1930803)))

(declare-fun lambda!336238 () Int)

(assert (=> bs!1527133 (= (= (head!12726 s!2326) (head!12726 (t!378106 s!2326))) (= lambda!336238 lambda!336237))))

(declare-fun bs!1527134 () Bool)

(assert (= bs!1527134 (and d!1930823 b!6159868)))

(assert (=> bs!1527134 (= (= (head!12726 s!2326) (h!70934 s!2326)) (= lambda!336238 lambda!336125))))

(declare-fun bs!1527135 () Bool)

(assert (= bs!1527135 (and d!1930823 d!1930655)))

(assert (=> bs!1527135 (= (= (head!12726 s!2326) (head!12726 (t!378106 s!2326))) (= lambda!336238 lambda!336215))))

(declare-fun bs!1527136 () Bool)

(assert (= bs!1527136 (and d!1930823 d!1930671)))

(assert (=> bs!1527136 (= (= (head!12726 s!2326) (head!12726 (t!378106 s!2326))) (= lambda!336238 lambda!336217))))

(declare-fun bs!1527137 () Bool)

(assert (= bs!1527137 (and d!1930823 d!1930735)))

(assert (=> bs!1527137 (= (= (head!12726 s!2326) (head!12726 (t!378106 s!2326))) (= lambda!336238 lambda!336226))))

(declare-fun bs!1527138 () Bool)

(assert (= bs!1527138 (and d!1930823 d!1930567)))

(assert (=> bs!1527138 (= (= (head!12726 s!2326) (head!12726 (t!378106 s!2326))) (= lambda!336238 lambda!336206))))

(declare-fun bs!1527139 () Bool)

(assert (= bs!1527139 (and d!1930823 d!1930719)))

(assert (=> bs!1527139 (= (= (head!12726 s!2326) (head!12726 (t!378106 s!2326))) (= lambda!336238 lambda!336225))))

(declare-fun bs!1527140 () Bool)

(assert (= bs!1527140 (and d!1930823 d!1930749)))

(assert (=> bs!1527140 (= (= (head!12726 s!2326) (head!12726 (t!378106 s!2326))) (= lambda!336238 lambda!336229))))

(assert (=> d!1930823 true))

(assert (=> d!1930823 (= (derivationStepZipper!2076 lt!2335743 (head!12726 s!2326)) (flatMap!1608 lt!2335743 lambda!336238))))

(declare-fun bs!1527141 () Bool)

(assert (= bs!1527141 d!1930823))

(declare-fun m!6999514 () Bool)

(assert (=> bs!1527141 m!6999514))

(assert (=> b!6160411 d!1930823))

(assert (=> b!6160411 d!1930601))

(assert (=> b!6160411 d!1930629))

(assert (=> d!1930335 d!1930677))

(declare-fun bs!1527142 () Bool)

(declare-fun d!1930825 () Bool)

(assert (= bs!1527142 (and d!1930825 d!1930713)))

(declare-fun lambda!336239 () Int)

(assert (=> bs!1527142 (= lambda!336239 lambda!336224)))

(declare-fun bs!1527143 () Bool)

(assert (= bs!1527143 (and d!1930825 d!1930641)))

(assert (=> bs!1527143 (= lambda!336239 lambda!336212)))

(declare-fun bs!1527144 () Bool)

(assert (= bs!1527144 (and d!1930825 d!1930411)))

(assert (=> bs!1527144 (= lambda!336239 lambda!336183)))

(declare-fun bs!1527145 () Bool)

(assert (= bs!1527145 (and d!1930825 d!1930355)))

(assert (=> bs!1527145 (= lambda!336239 lambda!336166)))

(declare-fun bs!1527146 () Bool)

(assert (= bs!1527146 (and d!1930825 d!1930357)))

(assert (=> bs!1527146 (= lambda!336239 lambda!336169)))

(declare-fun bs!1527147 () Bool)

(assert (= bs!1527147 (and d!1930825 d!1930409)))

(assert (=> bs!1527147 (= lambda!336239 lambda!336182)))

(declare-fun bs!1527148 () Bool)

(assert (= bs!1527148 (and d!1930825 d!1930361)))

(assert (=> bs!1527148 (= lambda!336239 lambda!336170)))

(declare-fun bs!1527149 () Bool)

(assert (= bs!1527149 (and d!1930825 d!1930353)))

(assert (=> bs!1527149 (= lambda!336239 lambda!336163)))

(assert (=> d!1930825 (= (inv!83504 setElem!41748) (forall!15224 (exprs!5987 setElem!41748) lambda!336239))))

(declare-fun bs!1527150 () Bool)

(assert (= bs!1527150 d!1930825))

(declare-fun m!6999516 () Bool)

(assert (=> bs!1527150 m!6999516))

(assert (=> setNonEmpty!41748 d!1930825))

(declare-fun b!6161381 () Bool)

(declare-fun e!3753925 () (InoxSet Context!10974))

(assert (=> b!6161381 (= e!3753925 ((as const (Array Context!10974 Bool)) false))))

(declare-fun b!6161382 () Bool)

(declare-fun call!513195 () (InoxSet Context!10974))

(assert (=> b!6161382 (= e!3753925 call!513195)))

(declare-fun bm!513190 () Bool)

(assert (=> bm!513190 (= call!513195 (derivationStepZipperDown!1351 (h!70932 (exprs!5987 (Context!10975 (t!378104 (exprs!5987 (h!70933 zl!343)))))) (Context!10975 (t!378104 (exprs!5987 (Context!10975 (t!378104 (exprs!5987 (h!70933 zl!343))))))) (h!70934 s!2326)))))

(declare-fun b!6161383 () Bool)

(declare-fun e!3753924 () (InoxSet Context!10974))

(assert (=> b!6161383 (= e!3753924 e!3753925)))

(declare-fun c!1109717 () Bool)

(assert (=> b!6161383 (= c!1109717 ((_ is Cons!64484) (exprs!5987 (Context!10975 (t!378104 (exprs!5987 (h!70933 zl!343)))))))))

(declare-fun d!1930827 () Bool)

(declare-fun c!1109716 () Bool)

(declare-fun e!3753923 () Bool)

(assert (=> d!1930827 (= c!1109716 e!3753923)))

(declare-fun res!2551460 () Bool)

(assert (=> d!1930827 (=> (not res!2551460) (not e!3753923))))

(assert (=> d!1930827 (= res!2551460 ((_ is Cons!64484) (exprs!5987 (Context!10975 (t!378104 (exprs!5987 (h!70933 zl!343)))))))))

(assert (=> d!1930827 (= (derivationStepZipperUp!1277 (Context!10975 (t!378104 (exprs!5987 (h!70933 zl!343)))) (h!70934 s!2326)) e!3753924)))

(declare-fun b!6161384 () Bool)

(assert (=> b!6161384 (= e!3753924 ((_ map or) call!513195 (derivationStepZipperUp!1277 (Context!10975 (t!378104 (exprs!5987 (Context!10975 (t!378104 (exprs!5987 (h!70933 zl!343))))))) (h!70934 s!2326))))))

(declare-fun b!6161385 () Bool)

(assert (=> b!6161385 (= e!3753923 (nullable!6096 (h!70932 (exprs!5987 (Context!10975 (t!378104 (exprs!5987 (h!70933 zl!343))))))))))

(assert (= (and d!1930827 res!2551460) b!6161385))

(assert (= (and d!1930827 c!1109716) b!6161384))

(assert (= (and d!1930827 (not c!1109716)) b!6161383))

(assert (= (and b!6161383 c!1109717) b!6161382))

(assert (= (and b!6161383 (not c!1109717)) b!6161381))

(assert (= (or b!6161384 b!6161382) bm!513190))

(declare-fun m!6999524 () Bool)

(assert (=> bm!513190 m!6999524))

(declare-fun m!6999526 () Bool)

(assert (=> b!6161384 m!6999526))

(declare-fun m!6999528 () Bool)

(assert (=> b!6161385 m!6999528))

(assert (=> b!6160601 d!1930827))

(declare-fun bm!513191 () Bool)

(declare-fun call!513196 () Bool)

(assert (=> bm!513191 (= call!513196 (isEmpty!36455 (tail!11811 s!2326)))))

(declare-fun b!6161386 () Bool)

(declare-fun e!3753927 () Bool)

(declare-fun e!3753929 () Bool)

(assert (=> b!6161386 (= e!3753927 e!3753929)))

(declare-fun res!2551466 () Bool)

(assert (=> b!6161386 (=> (not res!2551466) (not e!3753929))))

(declare-fun lt!2335910 () Bool)

(assert (=> b!6161386 (= res!2551466 (not lt!2335910))))

(declare-fun b!6161387 () Bool)

(declare-fun res!2551468 () Bool)

(declare-fun e!3753928 () Bool)

(assert (=> b!6161387 (=> res!2551468 e!3753928)))

(assert (=> b!6161387 (= res!2551468 (not (isEmpty!36455 (tail!11811 (tail!11811 s!2326)))))))

(declare-fun b!6161389 () Bool)

(declare-fun e!3753926 () Bool)

(assert (=> b!6161389 (= e!3753926 (not lt!2335910))))

(declare-fun b!6161390 () Bool)

(declare-fun res!2551461 () Bool)

(declare-fun e!3753932 () Bool)

(assert (=> b!6161390 (=> (not res!2551461) (not e!3753932))))

(assert (=> b!6161390 (= res!2551461 (isEmpty!36455 (tail!11811 (tail!11811 s!2326))))))

(declare-fun b!6161391 () Bool)

(declare-fun e!3753930 () Bool)

(assert (=> b!6161391 (= e!3753930 (nullable!6096 (derivativeStep!4823 r!7292 (head!12726 s!2326))))))

(declare-fun b!6161392 () Bool)

(declare-fun res!2551464 () Bool)

(assert (=> b!6161392 (=> res!2551464 e!3753927)))

(assert (=> b!6161392 (= res!2551464 e!3753932)))

(declare-fun res!2551467 () Bool)

(assert (=> b!6161392 (=> (not res!2551467) (not e!3753932))))

(assert (=> b!6161392 (= res!2551467 lt!2335910)))

(declare-fun b!6161393 () Bool)

(declare-fun res!2551462 () Bool)

(assert (=> b!6161393 (=> (not res!2551462) (not e!3753932))))

(assert (=> b!6161393 (= res!2551462 (not call!513196))))

(declare-fun b!6161394 () Bool)

(assert (=> b!6161394 (= e!3753928 (not (= (head!12726 (tail!11811 s!2326)) (c!1109260 (derivativeStep!4823 r!7292 (head!12726 s!2326))))))))

(declare-fun b!6161395 () Bool)

(assert (=> b!6161395 (= e!3753929 e!3753928)))

(declare-fun res!2551465 () Bool)

(assert (=> b!6161395 (=> res!2551465 e!3753928)))

(assert (=> b!6161395 (= res!2551465 call!513196)))

(declare-fun b!6161396 () Bool)

(declare-fun res!2551463 () Bool)

(assert (=> b!6161396 (=> res!2551463 e!3753927)))

(assert (=> b!6161396 (= res!2551463 (not ((_ is ElementMatch!16103) (derivativeStep!4823 r!7292 (head!12726 s!2326)))))))

(assert (=> b!6161396 (= e!3753926 e!3753927)))

(declare-fun b!6161397 () Bool)

(declare-fun e!3753931 () Bool)

(assert (=> b!6161397 (= e!3753931 (= lt!2335910 call!513196))))

(declare-fun d!1930831 () Bool)

(assert (=> d!1930831 e!3753931))

(declare-fun c!1109720 () Bool)

(assert (=> d!1930831 (= c!1109720 ((_ is EmptyExpr!16103) (derivativeStep!4823 r!7292 (head!12726 s!2326))))))

(assert (=> d!1930831 (= lt!2335910 e!3753930)))

(declare-fun c!1109718 () Bool)

(assert (=> d!1930831 (= c!1109718 (isEmpty!36455 (tail!11811 s!2326)))))

(assert (=> d!1930831 (validRegex!7839 (derivativeStep!4823 r!7292 (head!12726 s!2326)))))

(assert (=> d!1930831 (= (matchR!8286 (derivativeStep!4823 r!7292 (head!12726 s!2326)) (tail!11811 s!2326)) lt!2335910)))

(declare-fun b!6161388 () Bool)

(assert (=> b!6161388 (= e!3753931 e!3753926)))

(declare-fun c!1109719 () Bool)

(assert (=> b!6161388 (= c!1109719 ((_ is EmptyLang!16103) (derivativeStep!4823 r!7292 (head!12726 s!2326))))))

(declare-fun b!6161398 () Bool)

(assert (=> b!6161398 (= e!3753930 (matchR!8286 (derivativeStep!4823 (derivativeStep!4823 r!7292 (head!12726 s!2326)) (head!12726 (tail!11811 s!2326))) (tail!11811 (tail!11811 s!2326))))))

(declare-fun b!6161399 () Bool)

(assert (=> b!6161399 (= e!3753932 (= (head!12726 (tail!11811 s!2326)) (c!1109260 (derivativeStep!4823 r!7292 (head!12726 s!2326)))))))

(assert (= (and d!1930831 c!1109718) b!6161391))

(assert (= (and d!1930831 (not c!1109718)) b!6161398))

(assert (= (and d!1930831 c!1109720) b!6161397))

(assert (= (and d!1930831 (not c!1109720)) b!6161388))

(assert (= (and b!6161388 c!1109719) b!6161389))

(assert (= (and b!6161388 (not c!1109719)) b!6161396))

(assert (= (and b!6161396 (not res!2551463)) b!6161392))

(assert (= (and b!6161392 res!2551467) b!6161393))

(assert (= (and b!6161393 res!2551462) b!6161390))

(assert (= (and b!6161390 res!2551461) b!6161399))

(assert (= (and b!6161392 (not res!2551464)) b!6161386))

(assert (= (and b!6161386 res!2551466) b!6161395))

(assert (= (and b!6161395 (not res!2551465)) b!6161387))

(assert (= (and b!6161387 (not res!2551468)) b!6161394))

(assert (= (or b!6161397 b!6161393 b!6161395) bm!513191))

(assert (=> b!6161390 m!6998448))

(assert (=> b!6161390 m!6999510))

(assert (=> b!6161390 m!6999510))

(declare-fun m!6999532 () Bool)

(assert (=> b!6161390 m!6999532))

(assert (=> b!6161399 m!6998448))

(assert (=> b!6161399 m!6999506))

(assert (=> b!6161398 m!6998448))

(assert (=> b!6161398 m!6999506))

(assert (=> b!6161398 m!6998454))

(assert (=> b!6161398 m!6999506))

(declare-fun m!6999534 () Bool)

(assert (=> b!6161398 m!6999534))

(assert (=> b!6161398 m!6998448))

(assert (=> b!6161398 m!6999510))

(assert (=> b!6161398 m!6999534))

(assert (=> b!6161398 m!6999510))

(declare-fun m!6999536 () Bool)

(assert (=> b!6161398 m!6999536))

(assert (=> b!6161394 m!6998448))

(assert (=> b!6161394 m!6999506))

(assert (=> b!6161387 m!6998448))

(assert (=> b!6161387 m!6999510))

(assert (=> b!6161387 m!6999510))

(assert (=> b!6161387 m!6999532))

(assert (=> d!1930831 m!6998448))

(assert (=> d!1930831 m!6998450))

(assert (=> d!1930831 m!6998454))

(declare-fun m!6999538 () Bool)

(assert (=> d!1930831 m!6999538))

(assert (=> b!6161391 m!6998454))

(declare-fun m!6999540 () Bool)

(assert (=> b!6161391 m!6999540))

(assert (=> bm!513191 m!6998448))

(assert (=> bm!513191 m!6998450))

(assert (=> b!6160388 d!1930831))

(declare-fun bm!513203 () Bool)

(declare-fun call!513209 () Regex!16103)

(declare-fun call!513208 () Regex!16103)

(assert (=> bm!513203 (= call!513209 call!513208)))

(declare-fun b!6161443 () Bool)

(declare-fun e!3753963 () Regex!16103)

(assert (=> b!6161443 (= e!3753963 (Union!16103 (Concat!24948 call!513209 (regTwo!32718 r!7292)) EmptyLang!16103))))

(declare-fun b!6161444 () Bool)

(declare-fun e!3753960 () Regex!16103)

(declare-fun e!3753962 () Regex!16103)

(assert (=> b!6161444 (= e!3753960 e!3753962)))

(declare-fun c!1109736 () Bool)

(assert (=> b!6161444 (= c!1109736 ((_ is Star!16103) r!7292))))

(declare-fun c!1109737 () Bool)

(declare-fun bm!513204 () Bool)

(declare-fun call!513211 () Regex!16103)

(declare-fun c!1109738 () Bool)

(assert (=> bm!513204 (= call!513211 (derivativeStep!4823 (ite c!1109737 (regOne!32719 r!7292) (ite c!1109736 (reg!16432 r!7292) (ite c!1109738 (regTwo!32718 r!7292) (regOne!32718 r!7292)))) (head!12726 s!2326)))))

(declare-fun b!6161445 () Bool)

(declare-fun e!3753959 () Regex!16103)

(declare-fun e!3753961 () Regex!16103)

(assert (=> b!6161445 (= e!3753959 e!3753961)))

(declare-fun c!1109735 () Bool)

(assert (=> b!6161445 (= c!1109735 ((_ is ElementMatch!16103) r!7292))))

(declare-fun b!6161446 () Bool)

(assert (=> b!6161446 (= e!3753961 (ite (= (head!12726 s!2326) (c!1109260 r!7292)) EmptyExpr!16103 EmptyLang!16103))))

(declare-fun bm!513205 () Bool)

(assert (=> bm!513205 (= call!513208 call!513211)))

(declare-fun b!6161447 () Bool)

(assert (=> b!6161447 (= c!1109738 (nullable!6096 (regOne!32718 r!7292)))))

(assert (=> b!6161447 (= e!3753962 e!3753963)))

(declare-fun call!513210 () Regex!16103)

(declare-fun bm!513206 () Bool)

(assert (=> bm!513206 (= call!513210 (derivativeStep!4823 (ite c!1109737 (regTwo!32719 r!7292) (regOne!32718 r!7292)) (head!12726 s!2326)))))

(declare-fun d!1930835 () Bool)

(declare-fun lt!2335913 () Regex!16103)

(assert (=> d!1930835 (validRegex!7839 lt!2335913)))

(assert (=> d!1930835 (= lt!2335913 e!3753959)))

(declare-fun c!1109734 () Bool)

(assert (=> d!1930835 (= c!1109734 (or ((_ is EmptyExpr!16103) r!7292) ((_ is EmptyLang!16103) r!7292)))))

(assert (=> d!1930835 (validRegex!7839 r!7292)))

(assert (=> d!1930835 (= (derivativeStep!4823 r!7292 (head!12726 s!2326)) lt!2335913)))

(declare-fun b!6161448 () Bool)

(assert (=> b!6161448 (= e!3753962 (Concat!24948 call!513208 r!7292))))

(declare-fun b!6161449 () Bool)

(assert (=> b!6161449 (= e!3753960 (Union!16103 call!513211 call!513210))))

(declare-fun b!6161450 () Bool)

(assert (=> b!6161450 (= e!3753959 EmptyLang!16103)))

(declare-fun b!6161451 () Bool)

(assert (=> b!6161451 (= c!1109737 ((_ is Union!16103) r!7292))))

(assert (=> b!6161451 (= e!3753961 e!3753960)))

(declare-fun b!6161452 () Bool)

(assert (=> b!6161452 (= e!3753963 (Union!16103 (Concat!24948 call!513210 (regTwo!32718 r!7292)) call!513209))))

(assert (= (and d!1930835 c!1109734) b!6161450))

(assert (= (and d!1930835 (not c!1109734)) b!6161445))

(assert (= (and b!6161445 c!1109735) b!6161446))

(assert (= (and b!6161445 (not c!1109735)) b!6161451))

(assert (= (and b!6161451 c!1109737) b!6161449))

(assert (= (and b!6161451 (not c!1109737)) b!6161444))

(assert (= (and b!6161444 c!1109736) b!6161448))

(assert (= (and b!6161444 (not c!1109736)) b!6161447))

(assert (= (and b!6161447 c!1109738) b!6161452))

(assert (= (and b!6161447 (not c!1109738)) b!6161443))

(assert (= (or b!6161452 b!6161443) bm!513203))

(assert (= (or b!6161448 bm!513203) bm!513205))

(assert (= (or b!6161449 b!6161452) bm!513206))

(assert (= (or b!6161449 bm!513205) bm!513204))

(assert (=> bm!513204 m!6998452))

(declare-fun m!6999570 () Bool)

(assert (=> bm!513204 m!6999570))

(assert (=> b!6161447 m!6999224))

(assert (=> bm!513206 m!6998452))

(declare-fun m!6999572 () Bool)

(assert (=> bm!513206 m!6999572))

(declare-fun m!6999574 () Bool)

(assert (=> d!1930835 m!6999574))

(assert (=> d!1930835 m!6998040))

(assert (=> b!6160388 d!1930835))

(assert (=> b!6160388 d!1930601))

(assert (=> b!6160388 d!1930629))

(declare-fun d!1930853 () Bool)

(declare-fun c!1109739 () Bool)

(assert (=> d!1930853 (= c!1109739 (isEmpty!36455 (tail!11811 (t!378106 s!2326))))))

(declare-fun e!3753964 () Bool)

(assert (=> d!1930853 (= (matchZipper!2115 (derivationStepZipper!2076 lt!2335764 (head!12726 (t!378106 s!2326))) (tail!11811 (t!378106 s!2326))) e!3753964)))

(declare-fun b!6161453 () Bool)

(assert (=> b!6161453 (= e!3753964 (nullableZipper!1884 (derivationStepZipper!2076 lt!2335764 (head!12726 (t!378106 s!2326)))))))

(declare-fun b!6161454 () Bool)

(assert (=> b!6161454 (= e!3753964 (matchZipper!2115 (derivationStepZipper!2076 (derivationStepZipper!2076 lt!2335764 (head!12726 (t!378106 s!2326))) (head!12726 (tail!11811 (t!378106 s!2326)))) (tail!11811 (tail!11811 (t!378106 s!2326)))))))

(assert (= (and d!1930853 c!1109739) b!6161453))

(assert (= (and d!1930853 (not c!1109739)) b!6161454))

(assert (=> d!1930853 m!6998394))

(assert (=> d!1930853 m!6998964))

(assert (=> b!6161453 m!6998466))

(declare-fun m!6999576 () Bool)

(assert (=> b!6161453 m!6999576))

(assert (=> b!6161454 m!6998394))

(assert (=> b!6161454 m!6998968))

(assert (=> b!6161454 m!6998466))

(assert (=> b!6161454 m!6998968))

(declare-fun m!6999578 () Bool)

(assert (=> b!6161454 m!6999578))

(assert (=> b!6161454 m!6998394))

(assert (=> b!6161454 m!6998972))

(assert (=> b!6161454 m!6999578))

(assert (=> b!6161454 m!6998972))

(declare-fun m!6999580 () Bool)

(assert (=> b!6161454 m!6999580))

(assert (=> b!6160392 d!1930853))

(declare-fun bs!1527182 () Bool)

(declare-fun d!1930855 () Bool)

(assert (= bs!1527182 (and d!1930855 d!1930803)))

(declare-fun lambda!336247 () Int)

(assert (=> bs!1527182 (= lambda!336247 lambda!336237)))

(declare-fun bs!1527184 () Bool)

(assert (= bs!1527184 (and d!1930855 b!6159868)))

(assert (=> bs!1527184 (= (= (head!12726 (t!378106 s!2326)) (h!70934 s!2326)) (= lambda!336247 lambda!336125))))

(declare-fun bs!1527186 () Bool)

(assert (= bs!1527186 (and d!1930855 d!1930655)))

(assert (=> bs!1527186 (= lambda!336247 lambda!336215)))

(declare-fun bs!1527187 () Bool)

(assert (= bs!1527187 (and d!1930855 d!1930823)))

(assert (=> bs!1527187 (= (= (head!12726 (t!378106 s!2326)) (head!12726 s!2326)) (= lambda!336247 lambda!336238))))

(declare-fun bs!1527189 () Bool)

(assert (= bs!1527189 (and d!1930855 d!1930671)))

(assert (=> bs!1527189 (= lambda!336247 lambda!336217)))

(declare-fun bs!1527191 () Bool)

(assert (= bs!1527191 (and d!1930855 d!1930735)))

(assert (=> bs!1527191 (= lambda!336247 lambda!336226)))

(declare-fun bs!1527192 () Bool)

(assert (= bs!1527192 (and d!1930855 d!1930567)))

(assert (=> bs!1527192 (= lambda!336247 lambda!336206)))

(declare-fun bs!1527193 () Bool)

(assert (= bs!1527193 (and d!1930855 d!1930719)))

(assert (=> bs!1527193 (= lambda!336247 lambda!336225)))

(declare-fun bs!1527194 () Bool)

(assert (= bs!1527194 (and d!1930855 d!1930749)))

(assert (=> bs!1527194 (= lambda!336247 lambda!336229)))

(assert (=> d!1930855 true))

(assert (=> d!1930855 (= (derivationStepZipper!2076 lt!2335764 (head!12726 (t!378106 s!2326))) (flatMap!1608 lt!2335764 lambda!336247))))

(declare-fun bs!1527195 () Bool)

(assert (= bs!1527195 d!1930855))

(declare-fun m!6999582 () Bool)

(assert (=> bs!1527195 m!6999582))

(assert (=> b!6160392 d!1930855))

(assert (=> b!6160392 d!1930575))

(assert (=> b!6160392 d!1930579))

(declare-fun bm!513207 () Bool)

(declare-fun call!513213 () Bool)

(declare-fun c!1109740 () Bool)

(assert (=> bm!513207 (= call!513213 (nullable!6096 (ite c!1109740 (regOne!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))))))))

(declare-fun b!6161455 () Bool)

(declare-fun e!3753965 () Bool)

(declare-fun e!3753967 () Bool)

(assert (=> b!6161455 (= e!3753965 e!3753967)))

(assert (=> b!6161455 (= c!1109740 ((_ is Union!16103) (h!70932 (exprs!5987 (h!70933 zl!343)))))))

(declare-fun b!6161456 () Bool)

(declare-fun e!3753966 () Bool)

(declare-fun e!3753969 () Bool)

(assert (=> b!6161456 (= e!3753966 e!3753969)))

(declare-fun res!2551486 () Bool)

(assert (=> b!6161456 (=> (not res!2551486) (not e!3753969))))

(assert (=> b!6161456 (= res!2551486 (and (not ((_ is EmptyLang!16103) (h!70932 (exprs!5987 (h!70933 zl!343))))) (not ((_ is ElementMatch!16103) (h!70932 (exprs!5987 (h!70933 zl!343)))))))))

(declare-fun b!6161457 () Bool)

(declare-fun e!3753968 () Bool)

(declare-fun call!513212 () Bool)

(assert (=> b!6161457 (= e!3753968 call!513212)))

(declare-fun b!6161458 () Bool)

(assert (=> b!6161458 (= e!3753967 e!3753968)))

(declare-fun res!2551490 () Bool)

(assert (=> b!6161458 (= res!2551490 call!513213)))

(assert (=> b!6161458 (=> (not res!2551490) (not e!3753968))))

(declare-fun b!6161459 () Bool)

(assert (=> b!6161459 (= e!3753969 e!3753965)))

(declare-fun res!2551489 () Bool)

(assert (=> b!6161459 (=> res!2551489 e!3753965)))

(assert (=> b!6161459 (= res!2551489 ((_ is Star!16103) (h!70932 (exprs!5987 (h!70933 zl!343)))))))

(declare-fun b!6161460 () Bool)

(declare-fun e!3753970 () Bool)

(assert (=> b!6161460 (= e!3753970 call!513212)))

(declare-fun d!1930857 () Bool)

(declare-fun res!2551487 () Bool)

(assert (=> d!1930857 (=> res!2551487 e!3753966)))

(assert (=> d!1930857 (= res!2551487 ((_ is EmptyExpr!16103) (h!70932 (exprs!5987 (h!70933 zl!343)))))))

(assert (=> d!1930857 (= (nullableFct!2060 (h!70932 (exprs!5987 (h!70933 zl!343)))) e!3753966)))

(declare-fun b!6161461 () Bool)

(assert (=> b!6161461 (= e!3753967 e!3753970)))

(declare-fun res!2551488 () Bool)

(assert (=> b!6161461 (= res!2551488 call!513213)))

(assert (=> b!6161461 (=> res!2551488 e!3753970)))

(declare-fun bm!513208 () Bool)

(assert (=> bm!513208 (= call!513212 (nullable!6096 (ite c!1109740 (regTwo!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (regTwo!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))))))))

(assert (= (and d!1930857 (not res!2551487)) b!6161456))

(assert (= (and b!6161456 res!2551486) b!6161459))

(assert (= (and b!6161459 (not res!2551489)) b!6161455))

(assert (= (and b!6161455 c!1109740) b!6161461))

(assert (= (and b!6161455 (not c!1109740)) b!6161458))

(assert (= (and b!6161461 (not res!2551488)) b!6161460))

(assert (= (and b!6161458 res!2551490) b!6161457))

(assert (= (or b!6161460 b!6161457) bm!513208))

(assert (= (or b!6161461 b!6161458) bm!513207))

(declare-fun m!6999584 () Bool)

(assert (=> bm!513207 m!6999584))

(declare-fun m!6999586 () Bool)

(assert (=> bm!513208 m!6999586))

(assert (=> d!1930395 d!1930857))

(declare-fun bs!1527197 () Bool)

(declare-fun d!1930859 () Bool)

(assert (= bs!1527197 (and d!1930859 d!1930753)))

(declare-fun lambda!336249 () Int)

(assert (=> bs!1527197 (= lambda!336249 lambda!336230)))

(declare-fun bs!1527198 () Bool)

(assert (= bs!1527198 (and d!1930859 d!1930743)))

(assert (=> bs!1527198 (= lambda!336249 lambda!336228)))

(declare-fun bs!1527199 () Bool)

(assert (= bs!1527199 (and d!1930859 d!1930589)))

(assert (=> bs!1527199 (= lambda!336249 lambda!336210)))

(declare-fun bs!1527200 () Bool)

(assert (= bs!1527200 (and d!1930859 d!1930797)))

(assert (=> bs!1527200 (= lambda!336249 lambda!336236)))

(declare-fun bs!1527201 () Bool)

(assert (= bs!1527201 (and d!1930859 d!1930741)))

(assert (=> bs!1527201 (= lambda!336249 lambda!336227)))

(assert (=> d!1930859 (= (nullableZipper!1884 lt!2335748) (exists!2448 lt!2335748 lambda!336249))))

(declare-fun bs!1527202 () Bool)

(assert (= bs!1527202 d!1930859))

(declare-fun m!6999588 () Bool)

(assert (=> bs!1527202 m!6999588))

(assert (=> b!6160530 d!1930859))

(declare-fun d!1930861 () Bool)

(declare-fun c!1109741 () Bool)

(assert (=> d!1930861 (= c!1109741 (isEmpty!36455 (t!378106 s!2326)))))

(declare-fun e!3753971 () Bool)

(assert (=> d!1930861 (= (matchZipper!2115 ((_ map or) lt!2335761 lt!2335767) (t!378106 s!2326)) e!3753971)))

(declare-fun b!6161462 () Bool)

(assert (=> b!6161462 (= e!3753971 (nullableZipper!1884 ((_ map or) lt!2335761 lt!2335767)))))

(declare-fun b!6161463 () Bool)

(assert (=> b!6161463 (= e!3753971 (matchZipper!2115 (derivationStepZipper!2076 ((_ map or) lt!2335761 lt!2335767) (head!12726 (t!378106 s!2326))) (tail!11811 (t!378106 s!2326))))))

(assert (= (and d!1930861 c!1109741) b!6161462))

(assert (= (and d!1930861 (not c!1109741)) b!6161463))

(assert (=> d!1930861 m!6998386))

(declare-fun m!6999590 () Bool)

(assert (=> b!6161462 m!6999590))

(assert (=> b!6161463 m!6998390))

(assert (=> b!6161463 m!6998390))

(declare-fun m!6999592 () Bool)

(assert (=> b!6161463 m!6999592))

(assert (=> b!6161463 m!6998394))

(assert (=> b!6161463 m!6999592))

(assert (=> b!6161463 m!6998394))

(declare-fun m!6999594 () Bool)

(assert (=> b!6161463 m!6999594))

(assert (=> d!1930371 d!1930861))

(assert (=> d!1930371 d!1930369))

(declare-fun e!3753972 () Bool)

(declare-fun d!1930863 () Bool)

(assert (=> d!1930863 (= (matchZipper!2115 ((_ map or) lt!2335761 lt!2335767) (t!378106 s!2326)) e!3753972)))

(declare-fun res!2551491 () Bool)

(assert (=> d!1930863 (=> res!2551491 e!3753972)))

(assert (=> d!1930863 (= res!2551491 (matchZipper!2115 lt!2335761 (t!378106 s!2326)))))

(assert (=> d!1930863 true))

(declare-fun _$48!1739 () Unit!157603)

(assert (=> d!1930863 (= (choose!45800 lt!2335761 lt!2335767 (t!378106 s!2326)) _$48!1739)))

(declare-fun b!6161464 () Bool)

(assert (=> b!6161464 (= e!3753972 (matchZipper!2115 lt!2335767 (t!378106 s!2326)))))

(assert (= (and d!1930863 (not res!2551491)) b!6161464))

(assert (=> d!1930863 m!6998592))

(assert (=> d!1930863 m!6998036))

(assert (=> b!6161464 m!6998044))

(assert (=> d!1930371 d!1930863))

(assert (=> b!6160203 d!1930365))

(declare-fun bm!513209 () Bool)

(declare-fun call!513219 () List!64608)

(declare-fun call!513216 () List!64608)

(assert (=> bm!513209 (= call!513219 call!513216)))

(declare-fun bm!513210 () Bool)

(declare-fun call!513215 () (InoxSet Context!10974))

(declare-fun call!513218 () (InoxSet Context!10974))

(assert (=> bm!513210 (= call!513215 call!513218)))

(declare-fun c!1109745 () Bool)

(declare-fun call!513217 () (InoxSet Context!10974))

(declare-fun bm!513211 () Bool)

(assert (=> bm!513211 (= call!513217 (derivationStepZipperDown!1351 (ite c!1109745 (regOne!32719 (ite c!1109474 (regTwo!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109475 (regTwo!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109472 (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (reg!16432 (h!70932 (exprs!5987 (h!70933 zl!343)))))))) (regOne!32718 (ite c!1109474 (regTwo!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109475 (regTwo!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109472 (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (reg!16432 (h!70932 (exprs!5987 (h!70933 zl!343))))))))) (ite c!1109745 (ite (or c!1109474 c!1109475) lt!2335757 (Context!10975 call!513036)) (Context!10975 call!513216)) (h!70934 s!2326)))))

(declare-fun b!6161468 () Bool)

(declare-fun e!3753975 () (InoxSet Context!10974))

(assert (=> b!6161468 (= e!3753975 call!513215)))

(declare-fun bm!513212 () Bool)

(declare-fun call!513214 () (InoxSet Context!10974))

(assert (=> bm!513212 (= call!513218 call!513214)))

(declare-fun b!6161469 () Bool)

(declare-fun c!1109747 () Bool)

(assert (=> b!6161469 (= c!1109747 ((_ is Star!16103) (ite c!1109474 (regTwo!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109475 (regTwo!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109472 (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (reg!16432 (h!70932 (exprs!5987 (h!70933 zl!343)))))))))))

(declare-fun e!3753974 () (InoxSet Context!10974))

(assert (=> b!6161469 (= e!3753975 e!3753974)))

(declare-fun b!6161470 () Bool)

(declare-fun e!3753979 () (InoxSet Context!10974))

(declare-fun e!3753978 () (InoxSet Context!10974))

(assert (=> b!6161470 (= e!3753979 e!3753978)))

(assert (=> b!6161470 (= c!1109745 ((_ is Union!16103) (ite c!1109474 (regTwo!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109475 (regTwo!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109472 (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (reg!16432 (h!70932 (exprs!5987 (h!70933 zl!343)))))))))))

(declare-fun b!6161471 () Bool)

(declare-fun e!3753977 () (InoxSet Context!10974))

(assert (=> b!6161471 (= e!3753977 e!3753975)))

(declare-fun c!1109743 () Bool)

(assert (=> b!6161471 (= c!1109743 ((_ is Concat!24948) (ite c!1109474 (regTwo!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109475 (regTwo!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109472 (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (reg!16432 (h!70932 (exprs!5987 (h!70933 zl!343)))))))))))

(declare-fun b!6161472 () Bool)

(assert (=> b!6161472 (= e!3753974 call!513215)))

(declare-fun bm!513213 () Bool)

(declare-fun c!1109746 () Bool)

(assert (=> bm!513213 (= call!513216 ($colon$colon!1980 (exprs!5987 (ite (or c!1109474 c!1109475) lt!2335757 (Context!10975 call!513036))) (ite (or c!1109746 c!1109743) (regTwo!32718 (ite c!1109474 (regTwo!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109475 (regTwo!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109472 (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (reg!16432 (h!70932 (exprs!5987 (h!70933 zl!343)))))))) (ite c!1109474 (regTwo!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109475 (regTwo!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109472 (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (reg!16432 (h!70932 (exprs!5987 (h!70933 zl!343))))))))))))

(declare-fun b!6161473 () Bool)

(declare-fun e!3753976 () Bool)

(assert (=> b!6161473 (= c!1109746 e!3753976)))

(declare-fun res!2551492 () Bool)

(assert (=> b!6161473 (=> (not res!2551492) (not e!3753976))))

(assert (=> b!6161473 (= res!2551492 ((_ is Concat!24948) (ite c!1109474 (regTwo!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109475 (regTwo!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109472 (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (reg!16432 (h!70932 (exprs!5987 (h!70933 zl!343)))))))))))

(assert (=> b!6161473 (= e!3753978 e!3753977)))

(declare-fun b!6161474 () Bool)

(assert (=> b!6161474 (= e!3753978 ((_ map or) call!513217 call!513214))))

(declare-fun b!6161467 () Bool)

(assert (=> b!6161467 (= e!3753979 (store ((as const (Array Context!10974 Bool)) false) (ite (or c!1109474 c!1109475) lt!2335757 (Context!10975 call!513036)) true))))

(declare-fun c!1109744 () Bool)

(declare-fun d!1930867 () Bool)

(assert (=> d!1930867 (= c!1109744 (and ((_ is ElementMatch!16103) (ite c!1109474 (regTwo!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109475 (regTwo!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109472 (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (reg!16432 (h!70932 (exprs!5987 (h!70933 zl!343)))))))) (= (c!1109260 (ite c!1109474 (regTwo!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109475 (regTwo!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109472 (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (reg!16432 (h!70932 (exprs!5987 (h!70933 zl!343)))))))) (h!70934 s!2326))))))

(assert (=> d!1930867 (= (derivationStepZipperDown!1351 (ite c!1109474 (regTwo!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109475 (regTwo!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109472 (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (reg!16432 (h!70932 (exprs!5987 (h!70933 zl!343))))))) (ite (or c!1109474 c!1109475) lt!2335757 (Context!10975 call!513036)) (h!70934 s!2326)) e!3753979)))

(declare-fun b!6161475 () Bool)

(assert (=> b!6161475 (= e!3753977 ((_ map or) call!513217 call!513218))))

(declare-fun b!6161476 () Bool)

(assert (=> b!6161476 (= e!3753976 (nullable!6096 (regOne!32718 (ite c!1109474 (regTwo!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109475 (regTwo!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109472 (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (reg!16432 (h!70932 (exprs!5987 (h!70933 zl!343))))))))))))

(declare-fun b!6161477 () Bool)

(assert (=> b!6161477 (= e!3753974 ((as const (Array Context!10974 Bool)) false))))

(declare-fun bm!513214 () Bool)

(assert (=> bm!513214 (= call!513214 (derivationStepZipperDown!1351 (ite c!1109745 (regTwo!32719 (ite c!1109474 (regTwo!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109475 (regTwo!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109472 (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (reg!16432 (h!70932 (exprs!5987 (h!70933 zl!343)))))))) (ite c!1109746 (regTwo!32718 (ite c!1109474 (regTwo!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109475 (regTwo!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109472 (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (reg!16432 (h!70932 (exprs!5987 (h!70933 zl!343)))))))) (ite c!1109743 (regOne!32718 (ite c!1109474 (regTwo!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109475 (regTwo!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109472 (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (reg!16432 (h!70932 (exprs!5987 (h!70933 zl!343)))))))) (reg!16432 (ite c!1109474 (regTwo!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109475 (regTwo!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109472 (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (reg!16432 (h!70932 (exprs!5987 (h!70933 zl!343))))))))))) (ite (or c!1109745 c!1109746) (ite (or c!1109474 c!1109475) lt!2335757 (Context!10975 call!513036)) (Context!10975 call!513219)) (h!70934 s!2326)))))

(assert (= (and d!1930867 c!1109744) b!6161467))

(assert (= (and d!1930867 (not c!1109744)) b!6161470))

(assert (= (and b!6161470 c!1109745) b!6161474))

(assert (= (and b!6161470 (not c!1109745)) b!6161473))

(assert (= (and b!6161473 res!2551492) b!6161476))

(assert (= (and b!6161473 c!1109746) b!6161475))

(assert (= (and b!6161473 (not c!1109746)) b!6161471))

(assert (= (and b!6161471 c!1109743) b!6161468))

(assert (= (and b!6161471 (not c!1109743)) b!6161469))

(assert (= (and b!6161469 c!1109747) b!6161472))

(assert (= (and b!6161469 (not c!1109747)) b!6161477))

(assert (= (or b!6161468 b!6161472) bm!513209))

(assert (= (or b!6161468 b!6161472) bm!513210))

(assert (= (or b!6161475 bm!513209) bm!513213))

(assert (= (or b!6161475 bm!513210) bm!513212))

(assert (= (or b!6161474 bm!513212) bm!513214))

(assert (= (or b!6161474 b!6161475) bm!513211))

(declare-fun m!6999608 () Bool)

(assert (=> bm!513213 m!6999608))

(declare-fun m!6999610 () Bool)

(assert (=> bm!513214 m!6999610))

(declare-fun m!6999614 () Bool)

(assert (=> bm!513211 m!6999614))

(declare-fun m!6999616 () Bool)

(assert (=> b!6161467 m!6999616))

(declare-fun m!6999618 () Bool)

(assert (=> b!6161476 m!6999618))

(assert (=> bm!513031 d!1930867))

(declare-fun bs!1527214 () Bool)

(declare-fun d!1930875 () Bool)

(assert (= bs!1527214 (and d!1930875 d!1930753)))

(declare-fun lambda!336251 () Int)

(assert (=> bs!1527214 (= lambda!336251 lambda!336230)))

(declare-fun bs!1527215 () Bool)

(assert (= bs!1527215 (and d!1930875 d!1930743)))

(assert (=> bs!1527215 (= lambda!336251 lambda!336228)))

(declare-fun bs!1527216 () Bool)

(assert (= bs!1527216 (and d!1930875 d!1930589)))

(assert (=> bs!1527216 (= lambda!336251 lambda!336210)))

(declare-fun bs!1527217 () Bool)

(assert (= bs!1527217 (and d!1930875 d!1930797)))

(assert (=> bs!1527217 (= lambda!336251 lambda!336236)))

(declare-fun bs!1527218 () Bool)

(assert (= bs!1527218 (and d!1930875 d!1930741)))

(assert (=> bs!1527218 (= lambda!336251 lambda!336227)))

(declare-fun bs!1527219 () Bool)

(assert (= bs!1527219 (and d!1930875 d!1930859)))

(assert (=> bs!1527219 (= lambda!336251 lambda!336249)))

(assert (=> d!1930875 (= (nullableZipper!1884 ((_ map or) lt!2335761 lt!2335744)) (exists!2448 ((_ map or) lt!2335761 lt!2335744) lambda!336251))))

(declare-fun bs!1527220 () Bool)

(assert (= bs!1527220 d!1930875))

(declare-fun m!6999626 () Bool)

(assert (=> bs!1527220 m!6999626))

(assert (=> b!6160219 d!1930875))

(declare-fun bm!513215 () Bool)

(declare-fun call!513225 () List!64608)

(declare-fun call!513222 () List!64608)

(assert (=> bm!513215 (= call!513225 call!513222)))

(declare-fun bm!513216 () Bool)

(declare-fun call!513221 () (InoxSet Context!10974))

(declare-fun call!513224 () (InoxSet Context!10974))

(assert (=> bm!513216 (= call!513221 call!513224)))

(declare-fun bm!513217 () Bool)

(declare-fun call!513223 () (InoxSet Context!10974))

(declare-fun c!1109752 () Bool)

(assert (=> bm!513217 (= call!513223 (derivationStepZipperDown!1351 (ite c!1109752 (regOne!32719 (h!70932 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343)))))))) (regOne!32718 (h!70932 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343))))))))) (ite c!1109752 (Context!10975 (t!378104 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343)))))))) (Context!10975 call!513222)) (h!70934 s!2326)))))

(declare-fun b!6161483 () Bool)

(declare-fun e!3753983 () (InoxSet Context!10974))

(assert (=> b!6161483 (= e!3753983 call!513221)))

(declare-fun bm!513218 () Bool)

(declare-fun call!513220 () (InoxSet Context!10974))

(assert (=> bm!513218 (= call!513224 call!513220)))

(declare-fun b!6161484 () Bool)

(declare-fun c!1109754 () Bool)

(assert (=> b!6161484 (= c!1109754 ((_ is Star!16103) (h!70932 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343)))))))))))

(declare-fun e!3753982 () (InoxSet Context!10974))

(assert (=> b!6161484 (= e!3753983 e!3753982)))

(declare-fun b!6161485 () Bool)

(declare-fun e!3753987 () (InoxSet Context!10974))

(declare-fun e!3753986 () (InoxSet Context!10974))

(assert (=> b!6161485 (= e!3753987 e!3753986)))

(assert (=> b!6161485 (= c!1109752 ((_ is Union!16103) (h!70932 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343)))))))))))

(declare-fun b!6161486 () Bool)

(declare-fun e!3753985 () (InoxSet Context!10974))

(assert (=> b!6161486 (= e!3753985 e!3753983)))

(declare-fun c!1109750 () Bool)

(assert (=> b!6161486 (= c!1109750 ((_ is Concat!24948) (h!70932 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343)))))))))))

(declare-fun b!6161487 () Bool)

(assert (=> b!6161487 (= e!3753982 call!513221)))

(declare-fun bm!513219 () Bool)

(declare-fun c!1109753 () Bool)

(assert (=> bm!513219 (= call!513222 ($colon$colon!1980 (exprs!5987 (Context!10975 (t!378104 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343))))))))) (ite (or c!1109753 c!1109750) (regTwo!32718 (h!70932 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343)))))))) (h!70932 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343))))))))))))

(declare-fun b!6161488 () Bool)

(declare-fun e!3753984 () Bool)

(assert (=> b!6161488 (= c!1109753 e!3753984)))

(declare-fun res!2551493 () Bool)

(assert (=> b!6161488 (=> (not res!2551493) (not e!3753984))))

(assert (=> b!6161488 (= res!2551493 ((_ is Concat!24948) (h!70932 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343)))))))))))

(assert (=> b!6161488 (= e!3753986 e!3753985)))

(declare-fun b!6161489 () Bool)

(assert (=> b!6161489 (= e!3753986 ((_ map or) call!513223 call!513220))))

(declare-fun b!6161482 () Bool)

(assert (=> b!6161482 (= e!3753987 (store ((as const (Array Context!10974 Bool)) false) (Context!10975 (t!378104 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343)))))))) true))))

(declare-fun d!1930879 () Bool)

(declare-fun c!1109751 () Bool)

(assert (=> d!1930879 (= c!1109751 (and ((_ is ElementMatch!16103) (h!70932 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343)))))))) (= (c!1109260 (h!70932 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343)))))))) (h!70934 s!2326))))))

(assert (=> d!1930879 (= (derivationStepZipperDown!1351 (h!70932 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343))))))) (Context!10975 (t!378104 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343)))))))) (h!70934 s!2326)) e!3753987)))

(declare-fun b!6161490 () Bool)

(assert (=> b!6161490 (= e!3753985 ((_ map or) call!513223 call!513224))))

(declare-fun b!6161491 () Bool)

(assert (=> b!6161491 (= e!3753984 (nullable!6096 (regOne!32718 (h!70932 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343))))))))))))

(declare-fun b!6161492 () Bool)

(assert (=> b!6161492 (= e!3753982 ((as const (Array Context!10974 Bool)) false))))

(declare-fun bm!513220 () Bool)

(assert (=> bm!513220 (= call!513220 (derivationStepZipperDown!1351 (ite c!1109752 (regTwo!32719 (h!70932 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343)))))))) (ite c!1109753 (regTwo!32718 (h!70932 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343)))))))) (ite c!1109750 (regOne!32718 (h!70932 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343)))))))) (reg!16432 (h!70932 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343))))))))))) (ite (or c!1109752 c!1109753) (Context!10975 (t!378104 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343)))))))) (Context!10975 call!513225)) (h!70934 s!2326)))))

(assert (= (and d!1930879 c!1109751) b!6161482))

(assert (= (and d!1930879 (not c!1109751)) b!6161485))

(assert (= (and b!6161485 c!1109752) b!6161489))

(assert (= (and b!6161485 (not c!1109752)) b!6161488))

(assert (= (and b!6161488 res!2551493) b!6161491))

(assert (= (and b!6161488 c!1109753) b!6161490))

(assert (= (and b!6161488 (not c!1109753)) b!6161486))

(assert (= (and b!6161486 c!1109750) b!6161483))

(assert (= (and b!6161486 (not c!1109750)) b!6161484))

(assert (= (and b!6161484 c!1109754) b!6161487))

(assert (= (and b!6161484 (not c!1109754)) b!6161492))

(assert (= (or b!6161483 b!6161487) bm!513215))

(assert (= (or b!6161483 b!6161487) bm!513216))

(assert (= (or b!6161490 bm!513215) bm!513219))

(assert (= (or b!6161490 bm!513216) bm!513218))

(assert (= (or b!6161489 bm!513218) bm!513220))

(assert (= (or b!6161489 b!6161490) bm!513217))

(declare-fun m!6999630 () Bool)

(assert (=> bm!513219 m!6999630))

(declare-fun m!6999632 () Bool)

(assert (=> bm!513220 m!6999632))

(declare-fun m!6999634 () Bool)

(assert (=> bm!513217 m!6999634))

(declare-fun m!6999636 () Bool)

(assert (=> b!6161482 m!6999636))

(declare-fun m!6999638 () Bool)

(assert (=> b!6161491 m!6999638))

(assert (=> bm!513025 d!1930879))

(declare-fun b!6161497 () Bool)

(declare-fun e!3753995 () Bool)

(declare-fun call!513226 () Bool)

(assert (=> b!6161497 (= e!3753995 call!513226)))

(declare-fun bm!513221 () Bool)

(declare-fun c!1109756 () Bool)

(assert (=> bm!513221 (= call!513226 (validRegex!7839 (ite c!1109756 (regTwo!32719 lt!2335846) (regTwo!32718 lt!2335846))))))

(declare-fun b!6161498 () Bool)

(declare-fun e!3753994 () Bool)

(declare-fun call!513228 () Bool)

(assert (=> b!6161498 (= e!3753994 call!513228)))

(declare-fun c!1109755 () Bool)

(declare-fun bm!513222 () Bool)

(assert (=> bm!513222 (= call!513228 (validRegex!7839 (ite c!1109755 (reg!16432 lt!2335846) (ite c!1109756 (regOne!32719 lt!2335846) (regOne!32718 lt!2335846)))))))

(declare-fun b!6161499 () Bool)

(declare-fun res!2551494 () Bool)

(assert (=> b!6161499 (=> (not res!2551494) (not e!3753995))))

(declare-fun call!513227 () Bool)

(assert (=> b!6161499 (= res!2551494 call!513227)))

(declare-fun e!3753989 () Bool)

(assert (=> b!6161499 (= e!3753989 e!3753995)))

(declare-fun b!6161500 () Bool)

(declare-fun e!3753991 () Bool)

(assert (=> b!6161500 (= e!3753991 e!3753989)))

(assert (=> b!6161500 (= c!1109756 ((_ is Union!16103) lt!2335846))))

(declare-fun b!6161502 () Bool)

(declare-fun e!3753990 () Bool)

(declare-fun e!3753992 () Bool)

(assert (=> b!6161502 (= e!3753990 e!3753992)))

(declare-fun res!2551495 () Bool)

(assert (=> b!6161502 (=> (not res!2551495) (not e!3753992))))

(assert (=> b!6161502 (= res!2551495 call!513227)))

(declare-fun bm!513223 () Bool)

(assert (=> bm!513223 (= call!513227 call!513228)))

(declare-fun b!6161507 () Bool)

(declare-fun e!3753993 () Bool)

(assert (=> b!6161507 (= e!3753993 e!3753991)))

(assert (=> b!6161507 (= c!1109755 ((_ is Star!16103) lt!2335846))))

(declare-fun b!6161503 () Bool)

(declare-fun res!2551497 () Bool)

(assert (=> b!6161503 (=> res!2551497 e!3753990)))

(assert (=> b!6161503 (= res!2551497 (not ((_ is Concat!24948) lt!2335846)))))

(assert (=> b!6161503 (= e!3753989 e!3753990)))

(declare-fun d!1930881 () Bool)

(declare-fun res!2551498 () Bool)

(assert (=> d!1930881 (=> res!2551498 e!3753993)))

(assert (=> d!1930881 (= res!2551498 ((_ is ElementMatch!16103) lt!2335846))))

(assert (=> d!1930881 (= (validRegex!7839 lt!2335846) e!3753993)))

(declare-fun b!6161508 () Bool)

(assert (=> b!6161508 (= e!3753991 e!3753994)))

(declare-fun res!2551496 () Bool)

(assert (=> b!6161508 (= res!2551496 (not (nullable!6096 (reg!16432 lt!2335846))))))

(assert (=> b!6161508 (=> (not res!2551496) (not e!3753994))))

(declare-fun b!6161509 () Bool)

(assert (=> b!6161509 (= e!3753992 call!513226)))

(assert (= (and d!1930881 (not res!2551498)) b!6161507))

(assert (= (and b!6161507 c!1109755) b!6161508))

(assert (= (and b!6161507 (not c!1109755)) b!6161500))

(assert (= (and b!6161508 res!2551496) b!6161498))

(assert (= (and b!6161500 c!1109756) b!6161499))

(assert (= (and b!6161500 (not c!1109756)) b!6161503))

(assert (= (and b!6161499 res!2551494) b!6161497))

(assert (= (and b!6161503 (not res!2551497)) b!6161502))

(assert (= (and b!6161502 res!2551495) b!6161509))

(assert (= (or b!6161497 b!6161509) bm!513221))

(assert (= (or b!6161499 b!6161502) bm!513223))

(assert (= (or b!6161498 bm!513223) bm!513222))

(declare-fun m!6999640 () Bool)

(assert (=> bm!513221 m!6999640))

(declare-fun m!6999642 () Bool)

(assert (=> bm!513222 m!6999642))

(declare-fun m!6999644 () Bool)

(assert (=> b!6161508 m!6999644))

(assert (=> d!1930375 d!1930881))

(assert (=> d!1930375 d!1930353))

(assert (=> d!1930375 d!1930355))

(declare-fun d!1930883 () Bool)

(assert (=> d!1930883 (= (head!12728 (exprs!5987 (h!70933 zl!343))) (h!70932 (exprs!5987 (h!70933 zl!343))))))

(assert (=> b!6160631 d!1930883))

(declare-fun bs!1527233 () Bool)

(declare-fun d!1930885 () Bool)

(assert (= bs!1527233 (and d!1930885 d!1930753)))

(declare-fun lambda!336253 () Int)

(assert (=> bs!1527233 (= lambda!336253 lambda!336230)))

(declare-fun bs!1527234 () Bool)

(assert (= bs!1527234 (and d!1930885 d!1930875)))

(assert (=> bs!1527234 (= lambda!336253 lambda!336251)))

(declare-fun bs!1527235 () Bool)

(assert (= bs!1527235 (and d!1930885 d!1930743)))

(assert (=> bs!1527235 (= lambda!336253 lambda!336228)))

(declare-fun bs!1527236 () Bool)

(assert (= bs!1527236 (and d!1930885 d!1930589)))

(assert (=> bs!1527236 (= lambda!336253 lambda!336210)))

(declare-fun bs!1527237 () Bool)

(assert (= bs!1527237 (and d!1930885 d!1930797)))

(assert (=> bs!1527237 (= lambda!336253 lambda!336236)))

(declare-fun bs!1527238 () Bool)

(assert (= bs!1527238 (and d!1930885 d!1930741)))

(assert (=> bs!1527238 (= lambda!336253 lambda!336227)))

(declare-fun bs!1527239 () Bool)

(assert (= bs!1527239 (and d!1930885 d!1930859)))

(assert (=> bs!1527239 (= lambda!336253 lambda!336249)))

(assert (=> d!1930885 (= (nullableZipper!1884 lt!2335767) (exists!2448 lt!2335767 lambda!336253))))

(declare-fun bs!1527240 () Bool)

(assert (= bs!1527240 d!1930885))

(declare-fun m!6999646 () Bool)

(assert (=> bs!1527240 m!6999646))

(assert (=> b!6160214 d!1930885))

(assert (=> bs!1526855 d!1930403))

(declare-fun bm!513224 () Bool)

(declare-fun call!513234 () List!64608)

(declare-fun call!513231 () List!64608)

(assert (=> bm!513224 (= call!513234 call!513231)))

(declare-fun bm!513225 () Bool)

(declare-fun call!513230 () (InoxSet Context!10974))

(declare-fun call!513233 () (InoxSet Context!10974))

(assert (=> bm!513225 (= call!513230 call!513233)))

(declare-fun call!513232 () (InoxSet Context!10974))

(declare-fun bm!513226 () Bool)

(declare-fun c!1109759 () Bool)

(assert (=> bm!513226 (= call!513232 (derivationStepZipperDown!1351 (ite c!1109759 (regOne!32719 (ite c!1109427 (regOne!32719 (regTwo!32719 (regOne!32718 r!7292))) (regOne!32718 (regTwo!32719 (regOne!32718 r!7292))))) (regOne!32718 (ite c!1109427 (regOne!32719 (regTwo!32719 (regOne!32718 r!7292))) (regOne!32718 (regTwo!32719 (regOne!32718 r!7292)))))) (ite c!1109759 (ite c!1109427 lt!2335757 (Context!10975 call!513011)) (Context!10975 call!513231)) (h!70934 s!2326)))))

(declare-fun b!6161541 () Bool)

(declare-fun e!3754007 () (InoxSet Context!10974))

(assert (=> b!6161541 (= e!3754007 call!513230)))

(declare-fun bm!513227 () Bool)

(declare-fun call!513229 () (InoxSet Context!10974))

(assert (=> bm!513227 (= call!513233 call!513229)))

(declare-fun b!6161542 () Bool)

(declare-fun c!1109761 () Bool)

(assert (=> b!6161542 (= c!1109761 ((_ is Star!16103) (ite c!1109427 (regOne!32719 (regTwo!32719 (regOne!32718 r!7292))) (regOne!32718 (regTwo!32719 (regOne!32718 r!7292))))))))

(declare-fun e!3754006 () (InoxSet Context!10974))

(assert (=> b!6161542 (= e!3754007 e!3754006)))

(declare-fun b!6161543 () Bool)

(declare-fun e!3754011 () (InoxSet Context!10974))

(declare-fun e!3754010 () (InoxSet Context!10974))

(assert (=> b!6161543 (= e!3754011 e!3754010)))

(assert (=> b!6161543 (= c!1109759 ((_ is Union!16103) (ite c!1109427 (regOne!32719 (regTwo!32719 (regOne!32718 r!7292))) (regOne!32718 (regTwo!32719 (regOne!32718 r!7292))))))))

(declare-fun b!6161544 () Bool)

(declare-fun e!3754009 () (InoxSet Context!10974))

(assert (=> b!6161544 (= e!3754009 e!3754007)))

(declare-fun c!1109757 () Bool)

(assert (=> b!6161544 (= c!1109757 ((_ is Concat!24948) (ite c!1109427 (regOne!32719 (regTwo!32719 (regOne!32718 r!7292))) (regOne!32718 (regTwo!32719 (regOne!32718 r!7292))))))))

(declare-fun b!6161545 () Bool)

(assert (=> b!6161545 (= e!3754006 call!513230)))

(declare-fun bm!513228 () Bool)

(declare-fun c!1109760 () Bool)

(assert (=> bm!513228 (= call!513231 ($colon$colon!1980 (exprs!5987 (ite c!1109427 lt!2335757 (Context!10975 call!513011))) (ite (or c!1109760 c!1109757) (regTwo!32718 (ite c!1109427 (regOne!32719 (regTwo!32719 (regOne!32718 r!7292))) (regOne!32718 (regTwo!32719 (regOne!32718 r!7292))))) (ite c!1109427 (regOne!32719 (regTwo!32719 (regOne!32718 r!7292))) (regOne!32718 (regTwo!32719 (regOne!32718 r!7292)))))))))

(declare-fun b!6161546 () Bool)

(declare-fun e!3754008 () Bool)

(assert (=> b!6161546 (= c!1109760 e!3754008)))

(declare-fun res!2551499 () Bool)

(assert (=> b!6161546 (=> (not res!2551499) (not e!3754008))))

(assert (=> b!6161546 (= res!2551499 ((_ is Concat!24948) (ite c!1109427 (regOne!32719 (regTwo!32719 (regOne!32718 r!7292))) (regOne!32718 (regTwo!32719 (regOne!32718 r!7292))))))))

(assert (=> b!6161546 (= e!3754010 e!3754009)))

(declare-fun b!6161547 () Bool)

(assert (=> b!6161547 (= e!3754010 ((_ map or) call!513232 call!513229))))

(declare-fun b!6161540 () Bool)

(assert (=> b!6161540 (= e!3754011 (store ((as const (Array Context!10974 Bool)) false) (ite c!1109427 lt!2335757 (Context!10975 call!513011)) true))))

(declare-fun c!1109758 () Bool)

(declare-fun d!1930887 () Bool)

(assert (=> d!1930887 (= c!1109758 (and ((_ is ElementMatch!16103) (ite c!1109427 (regOne!32719 (regTwo!32719 (regOne!32718 r!7292))) (regOne!32718 (regTwo!32719 (regOne!32718 r!7292))))) (= (c!1109260 (ite c!1109427 (regOne!32719 (regTwo!32719 (regOne!32718 r!7292))) (regOne!32718 (regTwo!32719 (regOne!32718 r!7292))))) (h!70934 s!2326))))))

(assert (=> d!1930887 (= (derivationStepZipperDown!1351 (ite c!1109427 (regOne!32719 (regTwo!32719 (regOne!32718 r!7292))) (regOne!32718 (regTwo!32719 (regOne!32718 r!7292)))) (ite c!1109427 lt!2335757 (Context!10975 call!513011)) (h!70934 s!2326)) e!3754011)))

(declare-fun b!6161548 () Bool)

(assert (=> b!6161548 (= e!3754009 ((_ map or) call!513232 call!513233))))

(declare-fun b!6161549 () Bool)

(assert (=> b!6161549 (= e!3754008 (nullable!6096 (regOne!32718 (ite c!1109427 (regOne!32719 (regTwo!32719 (regOne!32718 r!7292))) (regOne!32718 (regTwo!32719 (regOne!32718 r!7292)))))))))

(declare-fun b!6161550 () Bool)

(assert (=> b!6161550 (= e!3754006 ((as const (Array Context!10974 Bool)) false))))

(declare-fun bm!513229 () Bool)

(assert (=> bm!513229 (= call!513229 (derivationStepZipperDown!1351 (ite c!1109759 (regTwo!32719 (ite c!1109427 (regOne!32719 (regTwo!32719 (regOne!32718 r!7292))) (regOne!32718 (regTwo!32719 (regOne!32718 r!7292))))) (ite c!1109760 (regTwo!32718 (ite c!1109427 (regOne!32719 (regTwo!32719 (regOne!32718 r!7292))) (regOne!32718 (regTwo!32719 (regOne!32718 r!7292))))) (ite c!1109757 (regOne!32718 (ite c!1109427 (regOne!32719 (regTwo!32719 (regOne!32718 r!7292))) (regOne!32718 (regTwo!32719 (regOne!32718 r!7292))))) (reg!16432 (ite c!1109427 (regOne!32719 (regTwo!32719 (regOne!32718 r!7292))) (regOne!32718 (regTwo!32719 (regOne!32718 r!7292)))))))) (ite (or c!1109759 c!1109760) (ite c!1109427 lt!2335757 (Context!10975 call!513011)) (Context!10975 call!513234)) (h!70934 s!2326)))))

(assert (= (and d!1930887 c!1109758) b!6161540))

(assert (= (and d!1930887 (not c!1109758)) b!6161543))

(assert (= (and b!6161543 c!1109759) b!6161547))

(assert (= (and b!6161543 (not c!1109759)) b!6161546))

(assert (= (and b!6161546 res!2551499) b!6161549))

(assert (= (and b!6161546 c!1109760) b!6161548))

(assert (= (and b!6161546 (not c!1109760)) b!6161544))

(assert (= (and b!6161544 c!1109757) b!6161541))

(assert (= (and b!6161544 (not c!1109757)) b!6161542))

(assert (= (and b!6161542 c!1109761) b!6161545))

(assert (= (and b!6161542 (not c!1109761)) b!6161550))

(assert (= (or b!6161541 b!6161545) bm!513224))

(assert (= (or b!6161541 b!6161545) bm!513225))

(assert (= (or b!6161548 bm!513224) bm!513228))

(assert (= (or b!6161548 bm!513225) bm!513227))

(assert (= (or b!6161547 bm!513227) bm!513229))

(assert (= (or b!6161547 b!6161548) bm!513226))

(declare-fun m!6999648 () Bool)

(assert (=> bm!513228 m!6999648))

(declare-fun m!6999650 () Bool)

(assert (=> bm!513229 m!6999650))

(declare-fun m!6999652 () Bool)

(assert (=> bm!513226 m!6999652))

(declare-fun m!6999654 () Bool)

(assert (=> b!6161540 m!6999654))

(declare-fun m!6999656 () Bool)

(assert (=> b!6161549 m!6999656))

(assert (=> bm!513006 d!1930887))

(declare-fun d!1930889 () Bool)

(declare-fun res!2551504 () Bool)

(declare-fun e!3754036 () Bool)

(assert (=> d!1930889 (=> res!2551504 e!3754036)))

(assert (=> d!1930889 (= res!2551504 ((_ is Nil!64485) lt!2335869))))

(assert (=> d!1930889 (= (noDuplicate!1950 lt!2335869) e!3754036)))

(declare-fun b!6161617 () Bool)

(declare-fun e!3754037 () Bool)

(assert (=> b!6161617 (= e!3754036 e!3754037)))

(declare-fun res!2551505 () Bool)

(assert (=> b!6161617 (=> (not res!2551505) (not e!3754037))))

(declare-fun contains!20062 (List!64609 Context!10974) Bool)

(assert (=> b!6161617 (= res!2551505 (not (contains!20062 (t!378105 lt!2335869) (h!70933 lt!2335869))))))

(declare-fun b!6161618 () Bool)

(assert (=> b!6161618 (= e!3754037 (noDuplicate!1950 (t!378105 lt!2335869)))))

(assert (= (and d!1930889 (not res!2551504)) b!6161617))

(assert (= (and b!6161617 res!2551505) b!6161618))

(declare-fun m!6999662 () Bool)

(assert (=> b!6161617 m!6999662))

(declare-fun m!6999664 () Bool)

(assert (=> b!6161618 m!6999664))

(assert (=> d!1930407 d!1930889))

(declare-fun d!1930891 () Bool)

(declare-fun e!3754049 () Bool)

(assert (=> d!1930891 e!3754049))

(declare-fun res!2551510 () Bool)

(assert (=> d!1930891 (=> (not res!2551510) (not e!3754049))))

(declare-fun res!2551511 () List!64609)

(assert (=> d!1930891 (= res!2551510 (noDuplicate!1950 res!2551511))))

(declare-fun e!3754048 () Bool)

(assert (=> d!1930891 e!3754048))

(assert (=> d!1930891 (= (choose!45808 z!1189) res!2551511)))

(declare-fun b!6161642 () Bool)

(declare-fun e!3754050 () Bool)

(declare-fun tp!1720388 () Bool)

(assert (=> b!6161642 (= e!3754050 tp!1720388)))

(declare-fun tp!1720387 () Bool)

(declare-fun b!6161641 () Bool)

(assert (=> b!6161641 (= e!3754048 (and (inv!83504 (h!70933 res!2551511)) e!3754050 tp!1720387))))

(declare-fun b!6161643 () Bool)

(assert (=> b!6161643 (= e!3754049 (= (content!12027 res!2551511) z!1189))))

(assert (= b!6161641 b!6161642))

(assert (= (and d!1930891 ((_ is Cons!64485) res!2551511)) b!6161641))

(assert (= (and d!1930891 res!2551510) b!6161643))

(declare-fun m!6999676 () Bool)

(assert (=> d!1930891 m!6999676))

(declare-fun m!6999678 () Bool)

(assert (=> b!6161641 m!6999678))

(declare-fun m!6999680 () Bool)

(assert (=> b!6161643 m!6999680))

(assert (=> d!1930407 d!1930891))

(declare-fun bs!1527247 () Bool)

(declare-fun d!1930905 () Bool)

(assert (= bs!1527247 (and d!1930905 d!1930753)))

(declare-fun lambda!336254 () Int)

(assert (=> bs!1527247 (= lambda!336254 lambda!336230)))

(declare-fun bs!1527248 () Bool)

(assert (= bs!1527248 (and d!1930905 d!1930875)))

(assert (=> bs!1527248 (= lambda!336254 lambda!336251)))

(declare-fun bs!1527249 () Bool)

(assert (= bs!1527249 (and d!1930905 d!1930743)))

(assert (=> bs!1527249 (= lambda!336254 lambda!336228)))

(declare-fun bs!1527250 () Bool)

(assert (= bs!1527250 (and d!1930905 d!1930589)))

(assert (=> bs!1527250 (= lambda!336254 lambda!336210)))

(declare-fun bs!1527251 () Bool)

(assert (= bs!1527251 (and d!1930905 d!1930885)))

(assert (=> bs!1527251 (= lambda!336254 lambda!336253)))

(declare-fun bs!1527252 () Bool)

(assert (= bs!1527252 (and d!1930905 d!1930797)))

(assert (=> bs!1527252 (= lambda!336254 lambda!336236)))

(declare-fun bs!1527253 () Bool)

(assert (= bs!1527253 (and d!1930905 d!1930741)))

(assert (=> bs!1527253 (= lambda!336254 lambda!336227)))

(declare-fun bs!1527254 () Bool)

(assert (= bs!1527254 (and d!1930905 d!1930859)))

(assert (=> bs!1527254 (= lambda!336254 lambda!336249)))

(assert (=> d!1930905 (= (nullableZipper!1884 ((_ map or) lt!2335764 lt!2335744)) (exists!2448 ((_ map or) lt!2335764 lt!2335744) lambda!336254))))

(declare-fun bs!1527255 () Bool)

(assert (= bs!1527255 d!1930905))

(declare-fun m!6999682 () Bool)

(assert (=> bs!1527255 m!6999682))

(assert (=> b!6160393 d!1930905))

(declare-fun d!1930907 () Bool)

(declare-fun c!1109762 () Bool)

(assert (=> d!1930907 (= c!1109762 (isEmpty!36455 (tail!11811 s!2326)))))

(declare-fun e!3754051 () Bool)

(assert (=> d!1930907 (= (matchZipper!2115 (derivationStepZipper!2076 z!1189 (head!12726 s!2326)) (tail!11811 s!2326)) e!3754051)))

(declare-fun b!6161644 () Bool)

(assert (=> b!6161644 (= e!3754051 (nullableZipper!1884 (derivationStepZipper!2076 z!1189 (head!12726 s!2326))))))

(declare-fun b!6161645 () Bool)

(assert (=> b!6161645 (= e!3754051 (matchZipper!2115 (derivationStepZipper!2076 (derivationStepZipper!2076 z!1189 (head!12726 s!2326)) (head!12726 (tail!11811 s!2326))) (tail!11811 (tail!11811 s!2326))))))

(assert (= (and d!1930907 c!1109762) b!6161644))

(assert (= (and d!1930907 (not c!1109762)) b!6161645))

(assert (=> d!1930907 m!6998448))

(assert (=> d!1930907 m!6998450))

(assert (=> b!6161644 m!6998512))

(declare-fun m!6999684 () Bool)

(assert (=> b!6161644 m!6999684))

(assert (=> b!6161645 m!6998448))

(assert (=> b!6161645 m!6999506))

(assert (=> b!6161645 m!6998512))

(assert (=> b!6161645 m!6999506))

(declare-fun m!6999686 () Bool)

(assert (=> b!6161645 m!6999686))

(assert (=> b!6161645 m!6998448))

(assert (=> b!6161645 m!6999510))

(assert (=> b!6161645 m!6999686))

(assert (=> b!6161645 m!6999510))

(declare-fun m!6999688 () Bool)

(assert (=> b!6161645 m!6999688))

(assert (=> b!6160418 d!1930907))

(declare-fun bs!1527256 () Bool)

(declare-fun d!1930909 () Bool)

(assert (= bs!1527256 (and d!1930909 d!1930855)))

(declare-fun lambda!336255 () Int)

(assert (=> bs!1527256 (= (= (head!12726 s!2326) (head!12726 (t!378106 s!2326))) (= lambda!336255 lambda!336247))))

(declare-fun bs!1527257 () Bool)

(assert (= bs!1527257 (and d!1930909 d!1930803)))

(assert (=> bs!1527257 (= (= (head!12726 s!2326) (head!12726 (t!378106 s!2326))) (= lambda!336255 lambda!336237))))

(declare-fun bs!1527258 () Bool)

(assert (= bs!1527258 (and d!1930909 b!6159868)))

(assert (=> bs!1527258 (= (= (head!12726 s!2326) (h!70934 s!2326)) (= lambda!336255 lambda!336125))))

(declare-fun bs!1527259 () Bool)

(assert (= bs!1527259 (and d!1930909 d!1930655)))

(assert (=> bs!1527259 (= (= (head!12726 s!2326) (head!12726 (t!378106 s!2326))) (= lambda!336255 lambda!336215))))

(declare-fun bs!1527260 () Bool)

(assert (= bs!1527260 (and d!1930909 d!1930823)))

(assert (=> bs!1527260 (= lambda!336255 lambda!336238)))

(declare-fun bs!1527261 () Bool)

(assert (= bs!1527261 (and d!1930909 d!1930671)))

(assert (=> bs!1527261 (= (= (head!12726 s!2326) (head!12726 (t!378106 s!2326))) (= lambda!336255 lambda!336217))))

(declare-fun bs!1527262 () Bool)

(assert (= bs!1527262 (and d!1930909 d!1930735)))

(assert (=> bs!1527262 (= (= (head!12726 s!2326) (head!12726 (t!378106 s!2326))) (= lambda!336255 lambda!336226))))

(declare-fun bs!1527263 () Bool)

(assert (= bs!1527263 (and d!1930909 d!1930567)))

(assert (=> bs!1527263 (= (= (head!12726 s!2326) (head!12726 (t!378106 s!2326))) (= lambda!336255 lambda!336206))))

(declare-fun bs!1527264 () Bool)

(assert (= bs!1527264 (and d!1930909 d!1930719)))

(assert (=> bs!1527264 (= (= (head!12726 s!2326) (head!12726 (t!378106 s!2326))) (= lambda!336255 lambda!336225))))

(declare-fun bs!1527265 () Bool)

(assert (= bs!1527265 (and d!1930909 d!1930749)))

(assert (=> bs!1527265 (= (= (head!12726 s!2326) (head!12726 (t!378106 s!2326))) (= lambda!336255 lambda!336229))))

(assert (=> d!1930909 true))

(assert (=> d!1930909 (= (derivationStepZipper!2076 z!1189 (head!12726 s!2326)) (flatMap!1608 z!1189 lambda!336255))))

(declare-fun bs!1527266 () Bool)

(assert (= bs!1527266 d!1930909))

(declare-fun m!6999690 () Bool)

(assert (=> bs!1527266 m!6999690))

(assert (=> b!6160418 d!1930909))

(assert (=> b!6160418 d!1930601))

(assert (=> b!6160418 d!1930629))

(assert (=> d!1930293 d!1930299))

(assert (=> d!1930293 d!1930297))

(declare-fun e!3754052 () Bool)

(declare-fun d!1930911 () Bool)

(assert (=> d!1930911 (= (matchZipper!2115 ((_ map or) lt!2335767 lt!2335744) (t!378106 s!2326)) e!3754052)))

(declare-fun res!2551512 () Bool)

(assert (=> d!1930911 (=> res!2551512 e!3754052)))

(assert (=> d!1930911 (= res!2551512 (matchZipper!2115 lt!2335767 (t!378106 s!2326)))))

(assert (=> d!1930911 true))

(declare-fun _$48!1740 () Unit!157603)

(assert (=> d!1930911 (= (choose!45800 lt!2335767 lt!2335744 (t!378106 s!2326)) _$48!1740)))

(declare-fun b!6161646 () Bool)

(assert (=> b!6161646 (= e!3754052 (matchZipper!2115 lt!2335744 (t!378106 s!2326)))))

(assert (= (and d!1930911 (not res!2551512)) b!6161646))

(assert (=> d!1930911 m!6998046))

(assert (=> d!1930911 m!6998044))

(assert (=> b!6161646 m!6998062))

(assert (=> d!1930293 d!1930911))

(declare-fun d!1930913 () Bool)

(declare-fun res!2551513 () Bool)

(declare-fun e!3754053 () Bool)

(assert (=> d!1930913 (=> res!2551513 e!3754053)))

(assert (=> d!1930913 (= res!2551513 ((_ is Nil!64484) (exprs!5987 (h!70933 zl!343))))))

(assert (=> d!1930913 (= (forall!15224 (exprs!5987 (h!70933 zl!343)) lambda!336183) e!3754053)))

(declare-fun b!6161647 () Bool)

(declare-fun e!3754054 () Bool)

(assert (=> b!6161647 (= e!3754053 e!3754054)))

(declare-fun res!2551514 () Bool)

(assert (=> b!6161647 (=> (not res!2551514) (not e!3754054))))

(assert (=> b!6161647 (= res!2551514 (dynLambda!25426 lambda!336183 (h!70932 (exprs!5987 (h!70933 zl!343)))))))

(declare-fun b!6161648 () Bool)

(assert (=> b!6161648 (= e!3754054 (forall!15224 (t!378104 (exprs!5987 (h!70933 zl!343))) lambda!336183))))

(assert (= (and d!1930913 (not res!2551513)) b!6161647))

(assert (= (and b!6161647 res!2551514) b!6161648))

(declare-fun b_lambda!234565 () Bool)

(assert (=> (not b_lambda!234565) (not b!6161647)))

(declare-fun m!6999692 () Bool)

(assert (=> b!6161647 m!6999692))

(declare-fun m!6999694 () Bool)

(assert (=> b!6161648 m!6999694))

(assert (=> d!1930411 d!1930913))

(declare-fun d!1930915 () Bool)

(assert (=> d!1930915 (= (isEmpty!36453 (t!378104 (unfocusZipperList!1524 zl!343))) ((_ is Nil!64484) (t!378104 (unfocusZipperList!1524 zl!343))))))

(assert (=> b!6160489 d!1930915))

(assert (=> d!1930347 d!1930677))

(declare-fun d!1930917 () Bool)

(assert (=> d!1930917 (= (isEmpty!36457 (findConcatSeparation!2408 (regOne!32718 r!7292) (regTwo!32718 r!7292) Nil!64486 s!2326 s!2326)) (not ((_ is Some!15993) (findConcatSeparation!2408 (regOne!32718 r!7292) (regTwo!32718 r!7292) Nil!64486 s!2326 s!2326))))))

(assert (=> d!1930387 d!1930917))

(declare-fun bs!1527267 () Bool)

(declare-fun d!1930919 () Bool)

(assert (= bs!1527267 (and d!1930919 d!1930753)))

(declare-fun lambda!336256 () Int)

(assert (=> bs!1527267 (= lambda!336256 lambda!336230)))

(declare-fun bs!1527268 () Bool)

(assert (= bs!1527268 (and d!1930919 d!1930875)))

(assert (=> bs!1527268 (= lambda!336256 lambda!336251)))

(declare-fun bs!1527269 () Bool)

(assert (= bs!1527269 (and d!1930919 d!1930905)))

(assert (=> bs!1527269 (= lambda!336256 lambda!336254)))

(declare-fun bs!1527270 () Bool)

(assert (= bs!1527270 (and d!1930919 d!1930743)))

(assert (=> bs!1527270 (= lambda!336256 lambda!336228)))

(declare-fun bs!1527271 () Bool)

(assert (= bs!1527271 (and d!1930919 d!1930589)))

(assert (=> bs!1527271 (= lambda!336256 lambda!336210)))

(declare-fun bs!1527272 () Bool)

(assert (= bs!1527272 (and d!1930919 d!1930885)))

(assert (=> bs!1527272 (= lambda!336256 lambda!336253)))

(declare-fun bs!1527273 () Bool)

(assert (= bs!1527273 (and d!1930919 d!1930797)))

(assert (=> bs!1527273 (= lambda!336256 lambda!336236)))

(declare-fun bs!1527274 () Bool)

(assert (= bs!1527274 (and d!1930919 d!1930741)))

(assert (=> bs!1527274 (= lambda!336256 lambda!336227)))

(declare-fun bs!1527275 () Bool)

(assert (= bs!1527275 (and d!1930919 d!1930859)))

(assert (=> bs!1527275 (= lambda!336256 lambda!336249)))

(assert (=> d!1930919 (= (nullableZipper!1884 lt!2335743) (exists!2448 lt!2335743 lambda!336256))))

(declare-fun bs!1527276 () Bool)

(assert (= bs!1527276 d!1930919))

(declare-fun m!6999696 () Bool)

(assert (=> bs!1527276 m!6999696))

(assert (=> b!6160410 d!1930919))

(declare-fun d!1930921 () Bool)

(assert (=> d!1930921 true))

(declare-fun setRes!41759 () Bool)

(assert (=> d!1930921 setRes!41759))

(declare-fun condSetEmpty!41759 () Bool)

(declare-fun res!2551515 () (InoxSet Context!10974))

(assert (=> d!1930921 (= condSetEmpty!41759 (= res!2551515 ((as const (Array Context!10974 Bool)) false)))))

(assert (=> d!1930921 (= (choose!45803 lt!2335749 lambda!336125) res!2551515)))

(declare-fun setIsEmpty!41759 () Bool)

(assert (=> setIsEmpty!41759 setRes!41759))

(declare-fun setNonEmpty!41759 () Bool)

(declare-fun e!3754055 () Bool)

(declare-fun tp!1720390 () Bool)

(declare-fun setElem!41759 () Context!10974)

(assert (=> setNonEmpty!41759 (= setRes!41759 (and tp!1720390 (inv!83504 setElem!41759) e!3754055))))

(declare-fun setRest!41759 () (InoxSet Context!10974))

(assert (=> setNonEmpty!41759 (= res!2551515 ((_ map or) (store ((as const (Array Context!10974 Bool)) false) setElem!41759 true) setRest!41759))))

(declare-fun b!6161649 () Bool)

(declare-fun tp!1720389 () Bool)

(assert (=> b!6161649 (= e!3754055 tp!1720389)))

(assert (= (and d!1930921 condSetEmpty!41759) setIsEmpty!41759))

(assert (= (and d!1930921 (not condSetEmpty!41759)) setNonEmpty!41759))

(assert (= setNonEmpty!41759 b!6161649))

(declare-fun m!6999698 () Bool)

(assert (=> setNonEmpty!41759 m!6999698))

(assert (=> d!1930331 d!1930921))

(declare-fun b!6161651 () Bool)

(declare-fun e!3754056 () List!64610)

(assert (=> b!6161651 (= e!3754056 (Cons!64486 (h!70934 (++!14189 Nil!64486 (Cons!64486 (h!70934 s!2326) Nil!64486))) (++!14189 (t!378106 (++!14189 Nil!64486 (Cons!64486 (h!70934 s!2326) Nil!64486))) (t!378106 s!2326))))))

(declare-fun d!1930923 () Bool)

(declare-fun e!3754057 () Bool)

(assert (=> d!1930923 e!3754057))

(declare-fun res!2551516 () Bool)

(assert (=> d!1930923 (=> (not res!2551516) (not e!3754057))))

(declare-fun lt!2335916 () List!64610)

(assert (=> d!1930923 (= res!2551516 (= (content!12028 lt!2335916) ((_ map or) (content!12028 (++!14189 Nil!64486 (Cons!64486 (h!70934 s!2326) Nil!64486))) (content!12028 (t!378106 s!2326)))))))

(assert (=> d!1930923 (= lt!2335916 e!3754056)))

(declare-fun c!1109763 () Bool)

(assert (=> d!1930923 (= c!1109763 ((_ is Nil!64486) (++!14189 Nil!64486 (Cons!64486 (h!70934 s!2326) Nil!64486))))))

(assert (=> d!1930923 (= (++!14189 (++!14189 Nil!64486 (Cons!64486 (h!70934 s!2326) Nil!64486)) (t!378106 s!2326)) lt!2335916)))

(declare-fun b!6161653 () Bool)

(assert (=> b!6161653 (= e!3754057 (or (not (= (t!378106 s!2326) Nil!64486)) (= lt!2335916 (++!14189 Nil!64486 (Cons!64486 (h!70934 s!2326) Nil!64486)))))))

(declare-fun b!6161650 () Bool)

(assert (=> b!6161650 (= e!3754056 (t!378106 s!2326))))

(declare-fun b!6161652 () Bool)

(declare-fun res!2551517 () Bool)

(assert (=> b!6161652 (=> (not res!2551517) (not e!3754057))))

(assert (=> b!6161652 (= res!2551517 (= (size!40243 lt!2335916) (+ (size!40243 (++!14189 Nil!64486 (Cons!64486 (h!70934 s!2326) Nil!64486))) (size!40243 (t!378106 s!2326)))))))

(assert (= (and d!1930923 c!1109763) b!6161650))

(assert (= (and d!1930923 (not c!1109763)) b!6161651))

(assert (= (and d!1930923 res!2551516) b!6161652))

(assert (= (and b!6161652 res!2551517) b!6161653))

(declare-fun m!6999700 () Bool)

(assert (=> b!6161651 m!6999700))

(declare-fun m!6999702 () Bool)

(assert (=> d!1930923 m!6999702))

(assert (=> d!1930923 m!6998600))

(declare-fun m!6999704 () Bool)

(assert (=> d!1930923 m!6999704))

(declare-fun m!6999706 () Bool)

(assert (=> d!1930923 m!6999706))

(declare-fun m!6999708 () Bool)

(assert (=> b!6161652 m!6999708))

(assert (=> b!6161652 m!6998600))

(declare-fun m!6999710 () Bool)

(assert (=> b!6161652 m!6999710))

(declare-fun m!6999712 () Bool)

(assert (=> b!6161652 m!6999712))

(assert (=> b!6160559 d!1930923))

(declare-fun b!6161655 () Bool)

(declare-fun e!3754058 () List!64610)

(assert (=> b!6161655 (= e!3754058 (Cons!64486 (h!70934 Nil!64486) (++!14189 (t!378106 Nil!64486) (Cons!64486 (h!70934 s!2326) Nil!64486))))))

(declare-fun d!1930925 () Bool)

(declare-fun e!3754059 () Bool)

(assert (=> d!1930925 e!3754059))

(declare-fun res!2551518 () Bool)

(assert (=> d!1930925 (=> (not res!2551518) (not e!3754059))))

(declare-fun lt!2335917 () List!64610)

(assert (=> d!1930925 (= res!2551518 (= (content!12028 lt!2335917) ((_ map or) (content!12028 Nil!64486) (content!12028 (Cons!64486 (h!70934 s!2326) Nil!64486)))))))

(assert (=> d!1930925 (= lt!2335917 e!3754058)))

(declare-fun c!1109764 () Bool)

(assert (=> d!1930925 (= c!1109764 ((_ is Nil!64486) Nil!64486))))

(assert (=> d!1930925 (= (++!14189 Nil!64486 (Cons!64486 (h!70934 s!2326) Nil!64486)) lt!2335917)))

(declare-fun b!6161657 () Bool)

(assert (=> b!6161657 (= e!3754059 (or (not (= (Cons!64486 (h!70934 s!2326) Nil!64486) Nil!64486)) (= lt!2335917 Nil!64486)))))

(declare-fun b!6161654 () Bool)

(assert (=> b!6161654 (= e!3754058 (Cons!64486 (h!70934 s!2326) Nil!64486))))

(declare-fun b!6161656 () Bool)

(declare-fun res!2551519 () Bool)

(assert (=> b!6161656 (=> (not res!2551519) (not e!3754059))))

(assert (=> b!6161656 (= res!2551519 (= (size!40243 lt!2335917) (+ (size!40243 Nil!64486) (size!40243 (Cons!64486 (h!70934 s!2326) Nil!64486)))))))

(assert (= (and d!1930925 c!1109764) b!6161654))

(assert (= (and d!1930925 (not c!1109764)) b!6161655))

(assert (= (and d!1930925 res!2551518) b!6161656))

(assert (= (and b!6161656 res!2551519) b!6161657))

(declare-fun m!6999714 () Bool)

(assert (=> b!6161655 m!6999714))

(declare-fun m!6999716 () Bool)

(assert (=> d!1930925 m!6999716))

(declare-fun m!6999718 () Bool)

(assert (=> d!1930925 m!6999718))

(declare-fun m!6999720 () Bool)

(assert (=> d!1930925 m!6999720))

(declare-fun m!6999722 () Bool)

(assert (=> b!6161656 m!6999722))

(declare-fun m!6999724 () Bool)

(assert (=> b!6161656 m!6999724))

(declare-fun m!6999726 () Bool)

(assert (=> b!6161656 m!6999726))

(assert (=> b!6160559 d!1930925))

(declare-fun d!1930927 () Bool)

(assert (=> d!1930927 (= (++!14189 (++!14189 Nil!64486 (Cons!64486 (h!70934 s!2326) Nil!64486)) (t!378106 s!2326)) s!2326)))

(declare-fun lt!2335920 () Unit!157603)

(declare-fun choose!45809 (List!64610 C!32476 List!64610 List!64610) Unit!157603)

(assert (=> d!1930927 (= lt!2335920 (choose!45809 Nil!64486 (h!70934 s!2326) (t!378106 s!2326) s!2326))))

(assert (=> d!1930927 (= (++!14189 Nil!64486 (Cons!64486 (h!70934 s!2326) (t!378106 s!2326))) s!2326)))

(assert (=> d!1930927 (= (lemmaMoveElementToOtherListKeepsConcatEq!2284 Nil!64486 (h!70934 s!2326) (t!378106 s!2326) s!2326) lt!2335920)))

(declare-fun bs!1527277 () Bool)

(assert (= bs!1527277 d!1930927))

(assert (=> bs!1527277 m!6998600))

(assert (=> bs!1527277 m!6998600))

(assert (=> bs!1527277 m!6998602))

(declare-fun m!6999728 () Bool)

(assert (=> bs!1527277 m!6999728))

(declare-fun m!6999730 () Bool)

(assert (=> bs!1527277 m!6999730))

(assert (=> b!6160559 d!1930927))

(declare-fun d!1930929 () Bool)

(declare-fun e!3754064 () Bool)

(assert (=> d!1930929 e!3754064))

(declare-fun res!2551524 () Bool)

(assert (=> d!1930929 (=> res!2551524 e!3754064)))

(declare-fun e!3754061 () Bool)

(assert (=> d!1930929 (= res!2551524 e!3754061)))

(declare-fun res!2551521 () Bool)

(assert (=> d!1930929 (=> (not res!2551521) (not e!3754061))))

(declare-fun lt!2335921 () Option!15994)

(assert (=> d!1930929 (= res!2551521 (isDefined!12697 lt!2335921))))

(declare-fun e!3754063 () Option!15994)

(assert (=> d!1930929 (= lt!2335921 e!3754063)))

(declare-fun c!1109766 () Bool)

(declare-fun e!3754062 () Bool)

(assert (=> d!1930929 (= c!1109766 e!3754062)))

(declare-fun res!2551522 () Bool)

(assert (=> d!1930929 (=> (not res!2551522) (not e!3754062))))

(assert (=> d!1930929 (= res!2551522 (matchR!8286 (regOne!32718 r!7292) (++!14189 Nil!64486 (Cons!64486 (h!70934 s!2326) Nil!64486))))))

(assert (=> d!1930929 (validRegex!7839 (regOne!32718 r!7292))))

(assert (=> d!1930929 (= (findConcatSeparation!2408 (regOne!32718 r!7292) (regTwo!32718 r!7292) (++!14189 Nil!64486 (Cons!64486 (h!70934 s!2326) Nil!64486)) (t!378106 s!2326) s!2326) lt!2335921)))

(declare-fun b!6161658 () Bool)

(declare-fun res!2551523 () Bool)

(assert (=> b!6161658 (=> (not res!2551523) (not e!3754061))))

(assert (=> b!6161658 (= res!2551523 (matchR!8286 (regTwo!32718 r!7292) (_2!36385 (get!22256 lt!2335921))))))

(declare-fun b!6161659 () Bool)

(declare-fun e!3754060 () Option!15994)

(assert (=> b!6161659 (= e!3754063 e!3754060)))

(declare-fun c!1109765 () Bool)

(assert (=> b!6161659 (= c!1109765 ((_ is Nil!64486) (t!378106 s!2326)))))

(declare-fun b!6161660 () Bool)

(assert (=> b!6161660 (= e!3754064 (not (isDefined!12697 lt!2335921)))))

(declare-fun b!6161661 () Bool)

(assert (=> b!6161661 (= e!3754063 (Some!15993 (tuple2!66165 (++!14189 Nil!64486 (Cons!64486 (h!70934 s!2326) Nil!64486)) (t!378106 s!2326))))))

(declare-fun b!6161662 () Bool)

(declare-fun res!2551520 () Bool)

(assert (=> b!6161662 (=> (not res!2551520) (not e!3754061))))

(assert (=> b!6161662 (= res!2551520 (matchR!8286 (regOne!32718 r!7292) (_1!36385 (get!22256 lt!2335921))))))

(declare-fun b!6161663 () Bool)

(assert (=> b!6161663 (= e!3754062 (matchR!8286 (regTwo!32718 r!7292) (t!378106 s!2326)))))

(declare-fun b!6161664 () Bool)

(declare-fun lt!2335923 () Unit!157603)

(declare-fun lt!2335922 () Unit!157603)

(assert (=> b!6161664 (= lt!2335923 lt!2335922)))

(assert (=> b!6161664 (= (++!14189 (++!14189 (++!14189 Nil!64486 (Cons!64486 (h!70934 s!2326) Nil!64486)) (Cons!64486 (h!70934 (t!378106 s!2326)) Nil!64486)) (t!378106 (t!378106 s!2326))) s!2326)))

(assert (=> b!6161664 (= lt!2335922 (lemmaMoveElementToOtherListKeepsConcatEq!2284 (++!14189 Nil!64486 (Cons!64486 (h!70934 s!2326) Nil!64486)) (h!70934 (t!378106 s!2326)) (t!378106 (t!378106 s!2326)) s!2326))))

(assert (=> b!6161664 (= e!3754060 (findConcatSeparation!2408 (regOne!32718 r!7292) (regTwo!32718 r!7292) (++!14189 (++!14189 Nil!64486 (Cons!64486 (h!70934 s!2326) Nil!64486)) (Cons!64486 (h!70934 (t!378106 s!2326)) Nil!64486)) (t!378106 (t!378106 s!2326)) s!2326))))

(declare-fun b!6161665 () Bool)

(assert (=> b!6161665 (= e!3754060 None!15993)))

(declare-fun b!6161666 () Bool)

(assert (=> b!6161666 (= e!3754061 (= (++!14189 (_1!36385 (get!22256 lt!2335921)) (_2!36385 (get!22256 lt!2335921))) s!2326))))

(assert (= (and d!1930929 res!2551522) b!6161663))

(assert (= (and d!1930929 c!1109766) b!6161661))

(assert (= (and d!1930929 (not c!1109766)) b!6161659))

(assert (= (and b!6161659 c!1109765) b!6161665))

(assert (= (and b!6161659 (not c!1109765)) b!6161664))

(assert (= (and d!1930929 res!2551521) b!6161662))

(assert (= (and b!6161662 res!2551520) b!6161658))

(assert (= (and b!6161658 res!2551523) b!6161666))

(assert (= (and d!1930929 (not res!2551524)) b!6161660))

(assert (=> b!6161664 m!6998600))

(declare-fun m!6999732 () Bool)

(assert (=> b!6161664 m!6999732))

(assert (=> b!6161664 m!6999732))

(declare-fun m!6999734 () Bool)

(assert (=> b!6161664 m!6999734))

(assert (=> b!6161664 m!6998600))

(declare-fun m!6999736 () Bool)

(assert (=> b!6161664 m!6999736))

(assert (=> b!6161664 m!6999732))

(declare-fun m!6999738 () Bool)

(assert (=> b!6161664 m!6999738))

(declare-fun m!6999740 () Bool)

(assert (=> b!6161662 m!6999740))

(declare-fun m!6999742 () Bool)

(assert (=> b!6161662 m!6999742))

(assert (=> b!6161658 m!6999740))

(declare-fun m!6999744 () Bool)

(assert (=> b!6161658 m!6999744))

(declare-fun m!6999746 () Bool)

(assert (=> b!6161660 m!6999746))

(assert (=> d!1930929 m!6999746))

(assert (=> d!1930929 m!6998600))

(declare-fun m!6999748 () Bool)

(assert (=> d!1930929 m!6999748))

(assert (=> d!1930929 m!6998618))

(declare-fun m!6999750 () Bool)

(assert (=> b!6161663 m!6999750))

(assert (=> b!6161666 m!6999740))

(declare-fun m!6999752 () Bool)

(assert (=> b!6161666 m!6999752))

(assert (=> b!6160559 d!1930929))

(declare-fun bm!513230 () Bool)

(declare-fun call!513240 () List!64608)

(declare-fun call!513237 () List!64608)

(assert (=> bm!513230 (= call!513240 call!513237)))

(declare-fun bm!513231 () Bool)

(declare-fun call!513236 () (InoxSet Context!10974))

(declare-fun call!513239 () (InoxSet Context!10974))

(assert (=> bm!513231 (= call!513236 call!513239)))

(declare-fun c!1109769 () Bool)

(declare-fun call!513238 () (InoxSet Context!10974))

(declare-fun bm!513232 () Bool)

(assert (=> bm!513232 (= call!513238 (derivationStepZipperDown!1351 (ite c!1109769 (regOne!32719 (ite c!1109427 (regTwo!32719 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109428 (regTwo!32718 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109425 (regOne!32718 (regTwo!32719 (regOne!32718 r!7292))) (reg!16432 (regTwo!32719 (regOne!32718 r!7292))))))) (regOne!32718 (ite c!1109427 (regTwo!32719 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109428 (regTwo!32718 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109425 (regOne!32718 (regTwo!32719 (regOne!32718 r!7292))) (reg!16432 (regTwo!32719 (regOne!32718 r!7292)))))))) (ite c!1109769 (ite (or c!1109427 c!1109428) lt!2335757 (Context!10975 call!513014)) (Context!10975 call!513237)) (h!70934 s!2326)))))

(declare-fun b!6161668 () Bool)

(declare-fun e!3754066 () (InoxSet Context!10974))

(assert (=> b!6161668 (= e!3754066 call!513236)))

(declare-fun bm!513233 () Bool)

(declare-fun call!513235 () (InoxSet Context!10974))

(assert (=> bm!513233 (= call!513239 call!513235)))

(declare-fun c!1109771 () Bool)

(declare-fun b!6161669 () Bool)

(assert (=> b!6161669 (= c!1109771 ((_ is Star!16103) (ite c!1109427 (regTwo!32719 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109428 (regTwo!32718 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109425 (regOne!32718 (regTwo!32719 (regOne!32718 r!7292))) (reg!16432 (regTwo!32719 (regOne!32718 r!7292))))))))))

(declare-fun e!3754065 () (InoxSet Context!10974))

(assert (=> b!6161669 (= e!3754066 e!3754065)))

(declare-fun b!6161670 () Bool)

(declare-fun e!3754070 () (InoxSet Context!10974))

(declare-fun e!3754069 () (InoxSet Context!10974))

(assert (=> b!6161670 (= e!3754070 e!3754069)))

(assert (=> b!6161670 (= c!1109769 ((_ is Union!16103) (ite c!1109427 (regTwo!32719 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109428 (regTwo!32718 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109425 (regOne!32718 (regTwo!32719 (regOne!32718 r!7292))) (reg!16432 (regTwo!32719 (regOne!32718 r!7292))))))))))

(declare-fun b!6161671 () Bool)

(declare-fun e!3754068 () (InoxSet Context!10974))

(assert (=> b!6161671 (= e!3754068 e!3754066)))

(declare-fun c!1109767 () Bool)

(assert (=> b!6161671 (= c!1109767 ((_ is Concat!24948) (ite c!1109427 (regTwo!32719 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109428 (regTwo!32718 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109425 (regOne!32718 (regTwo!32719 (regOne!32718 r!7292))) (reg!16432 (regTwo!32719 (regOne!32718 r!7292))))))))))

(declare-fun b!6161672 () Bool)

(assert (=> b!6161672 (= e!3754065 call!513236)))

(declare-fun bm!513234 () Bool)

(declare-fun c!1109770 () Bool)

(assert (=> bm!513234 (= call!513237 ($colon$colon!1980 (exprs!5987 (ite (or c!1109427 c!1109428) lt!2335757 (Context!10975 call!513014))) (ite (or c!1109770 c!1109767) (regTwo!32718 (ite c!1109427 (regTwo!32719 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109428 (regTwo!32718 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109425 (regOne!32718 (regTwo!32719 (regOne!32718 r!7292))) (reg!16432 (regTwo!32719 (regOne!32718 r!7292))))))) (ite c!1109427 (regTwo!32719 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109428 (regTwo!32718 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109425 (regOne!32718 (regTwo!32719 (regOne!32718 r!7292))) (reg!16432 (regTwo!32719 (regOne!32718 r!7292)))))))))))

(declare-fun b!6161673 () Bool)

(declare-fun e!3754067 () Bool)

(assert (=> b!6161673 (= c!1109770 e!3754067)))

(declare-fun res!2551525 () Bool)

(assert (=> b!6161673 (=> (not res!2551525) (not e!3754067))))

(assert (=> b!6161673 (= res!2551525 ((_ is Concat!24948) (ite c!1109427 (regTwo!32719 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109428 (regTwo!32718 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109425 (regOne!32718 (regTwo!32719 (regOne!32718 r!7292))) (reg!16432 (regTwo!32719 (regOne!32718 r!7292))))))))))

(assert (=> b!6161673 (= e!3754069 e!3754068)))

(declare-fun b!6161674 () Bool)

(assert (=> b!6161674 (= e!3754069 ((_ map or) call!513238 call!513235))))

(declare-fun b!6161667 () Bool)

(assert (=> b!6161667 (= e!3754070 (store ((as const (Array Context!10974 Bool)) false) (ite (or c!1109427 c!1109428) lt!2335757 (Context!10975 call!513014)) true))))

(declare-fun c!1109768 () Bool)

(declare-fun d!1930931 () Bool)

(assert (=> d!1930931 (= c!1109768 (and ((_ is ElementMatch!16103) (ite c!1109427 (regTwo!32719 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109428 (regTwo!32718 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109425 (regOne!32718 (regTwo!32719 (regOne!32718 r!7292))) (reg!16432 (regTwo!32719 (regOne!32718 r!7292))))))) (= (c!1109260 (ite c!1109427 (regTwo!32719 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109428 (regTwo!32718 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109425 (regOne!32718 (regTwo!32719 (regOne!32718 r!7292))) (reg!16432 (regTwo!32719 (regOne!32718 r!7292))))))) (h!70934 s!2326))))))

(assert (=> d!1930931 (= (derivationStepZipperDown!1351 (ite c!1109427 (regTwo!32719 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109428 (regTwo!32718 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109425 (regOne!32718 (regTwo!32719 (regOne!32718 r!7292))) (reg!16432 (regTwo!32719 (regOne!32718 r!7292)))))) (ite (or c!1109427 c!1109428) lt!2335757 (Context!10975 call!513014)) (h!70934 s!2326)) e!3754070)))

(declare-fun b!6161675 () Bool)

(assert (=> b!6161675 (= e!3754068 ((_ map or) call!513238 call!513239))))

(declare-fun b!6161676 () Bool)

(assert (=> b!6161676 (= e!3754067 (nullable!6096 (regOne!32718 (ite c!1109427 (regTwo!32719 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109428 (regTwo!32718 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109425 (regOne!32718 (regTwo!32719 (regOne!32718 r!7292))) (reg!16432 (regTwo!32719 (regOne!32718 r!7292)))))))))))

(declare-fun b!6161677 () Bool)

(assert (=> b!6161677 (= e!3754065 ((as const (Array Context!10974 Bool)) false))))

(declare-fun bm!513235 () Bool)

(assert (=> bm!513235 (= call!513235 (derivationStepZipperDown!1351 (ite c!1109769 (regTwo!32719 (ite c!1109427 (regTwo!32719 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109428 (regTwo!32718 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109425 (regOne!32718 (regTwo!32719 (regOne!32718 r!7292))) (reg!16432 (regTwo!32719 (regOne!32718 r!7292))))))) (ite c!1109770 (regTwo!32718 (ite c!1109427 (regTwo!32719 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109428 (regTwo!32718 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109425 (regOne!32718 (regTwo!32719 (regOne!32718 r!7292))) (reg!16432 (regTwo!32719 (regOne!32718 r!7292))))))) (ite c!1109767 (regOne!32718 (ite c!1109427 (regTwo!32719 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109428 (regTwo!32718 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109425 (regOne!32718 (regTwo!32719 (regOne!32718 r!7292))) (reg!16432 (regTwo!32719 (regOne!32718 r!7292))))))) (reg!16432 (ite c!1109427 (regTwo!32719 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109428 (regTwo!32718 (regTwo!32719 (regOne!32718 r!7292))) (ite c!1109425 (regOne!32718 (regTwo!32719 (regOne!32718 r!7292))) (reg!16432 (regTwo!32719 (regOne!32718 r!7292)))))))))) (ite (or c!1109769 c!1109770) (ite (or c!1109427 c!1109428) lt!2335757 (Context!10975 call!513014)) (Context!10975 call!513240)) (h!70934 s!2326)))))

(assert (= (and d!1930931 c!1109768) b!6161667))

(assert (= (and d!1930931 (not c!1109768)) b!6161670))

(assert (= (and b!6161670 c!1109769) b!6161674))

(assert (= (and b!6161670 (not c!1109769)) b!6161673))

(assert (= (and b!6161673 res!2551525) b!6161676))

(assert (= (and b!6161673 c!1109770) b!6161675))

(assert (= (and b!6161673 (not c!1109770)) b!6161671))

(assert (= (and b!6161671 c!1109767) b!6161668))

(assert (= (and b!6161671 (not c!1109767)) b!6161669))

(assert (= (and b!6161669 c!1109771) b!6161672))

(assert (= (and b!6161669 (not c!1109771)) b!6161677))

(assert (= (or b!6161668 b!6161672) bm!513230))

(assert (= (or b!6161668 b!6161672) bm!513231))

(assert (= (or b!6161675 bm!513230) bm!513234))

(assert (= (or b!6161675 bm!513231) bm!513233))

(assert (= (or b!6161674 bm!513233) bm!513235))

(assert (= (or b!6161674 b!6161675) bm!513232))

(declare-fun m!6999754 () Bool)

(assert (=> bm!513234 m!6999754))

(declare-fun m!6999756 () Bool)

(assert (=> bm!513235 m!6999756))

(declare-fun m!6999758 () Bool)

(assert (=> bm!513232 m!6999758))

(declare-fun m!6999760 () Bool)

(assert (=> b!6161667 m!6999760))

(declare-fun m!6999762 () Bool)

(assert (=> b!6161676 m!6999762))

(assert (=> bm!513009 d!1930931))

(declare-fun d!1930933 () Bool)

(assert (=> d!1930933 (= (nullable!6096 (h!70932 (exprs!5987 lt!2335757))) (nullableFct!2060 (h!70932 (exprs!5987 lt!2335757))))))

(declare-fun bs!1527278 () Bool)

(assert (= bs!1527278 d!1930933))

(declare-fun m!6999764 () Bool)

(assert (=> bs!1527278 m!6999764))

(assert (=> b!6160607 d!1930933))

(declare-fun d!1930935 () Bool)

(assert (=> d!1930935 (= (isDefined!12697 lt!2335853) (not (isEmpty!36457 lt!2335853)))))

(declare-fun bs!1527279 () Bool)

(assert (= bs!1527279 d!1930935))

(declare-fun m!6999766 () Bool)

(assert (=> bs!1527279 m!6999766))

(assert (=> b!6160555 d!1930935))

(declare-fun d!1930937 () Bool)

(assert (=> d!1930937 (= (isEmpty!36453 (unfocusZipperList!1524 zl!343)) ((_ is Nil!64484) (unfocusZipperList!1524 zl!343)))))

(assert (=> b!6160485 d!1930937))

(declare-fun d!1930939 () Bool)

(assert (=> d!1930939 (= (isEmptyExpr!1520 lt!2335872) ((_ is EmptyExpr!16103) lt!2335872))))

(assert (=> b!6160636 d!1930939))

(assert (=> d!1930297 d!1930607))

(declare-fun bs!1527280 () Bool)

(declare-fun d!1930941 () Bool)

(assert (= bs!1527280 (and d!1930941 d!1930713)))

(declare-fun lambda!336257 () Int)

(assert (=> bs!1527280 (= lambda!336257 lambda!336224)))

(declare-fun bs!1527281 () Bool)

(assert (= bs!1527281 (and d!1930941 d!1930641)))

(assert (=> bs!1527281 (= lambda!336257 lambda!336212)))

(declare-fun bs!1527282 () Bool)

(assert (= bs!1527282 (and d!1930941 d!1930825)))

(assert (=> bs!1527282 (= lambda!336257 lambda!336239)))

(declare-fun bs!1527283 () Bool)

(assert (= bs!1527283 (and d!1930941 d!1930411)))

(assert (=> bs!1527283 (= lambda!336257 lambda!336183)))

(declare-fun bs!1527284 () Bool)

(assert (= bs!1527284 (and d!1930941 d!1930355)))

(assert (=> bs!1527284 (= lambda!336257 lambda!336166)))

(declare-fun bs!1527285 () Bool)

(assert (= bs!1527285 (and d!1930941 d!1930357)))

(assert (=> bs!1527285 (= lambda!336257 lambda!336169)))

(declare-fun bs!1527286 () Bool)

(assert (= bs!1527286 (and d!1930941 d!1930409)))

(assert (=> bs!1527286 (= lambda!336257 lambda!336182)))

(declare-fun bs!1527287 () Bool)

(assert (= bs!1527287 (and d!1930941 d!1930361)))

(assert (=> bs!1527287 (= lambda!336257 lambda!336170)))

(declare-fun bs!1527288 () Bool)

(assert (= bs!1527288 (and d!1930941 d!1930353)))

(assert (=> bs!1527288 (= lambda!336257 lambda!336163)))

(assert (=> d!1930941 (= (inv!83504 (h!70933 (t!378105 zl!343))) (forall!15224 (exprs!5987 (h!70933 (t!378105 zl!343))) lambda!336257))))

(declare-fun bs!1527289 () Bool)

(assert (= bs!1527289 d!1930941))

(declare-fun m!6999768 () Bool)

(assert (=> bs!1527289 m!6999768))

(assert (=> b!6160693 d!1930941))

(declare-fun d!1930943 () Bool)

(assert (=> d!1930943 (= (nullable!6096 (h!70932 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343)))))))) (nullableFct!2060 (h!70932 (exprs!5987 (Context!10975 (Cons!64484 (h!70932 (exprs!5987 (h!70933 zl!343))) (t!378104 (exprs!5987 (h!70933 zl!343)))))))))))

(declare-fun bs!1527290 () Bool)

(assert (= bs!1527290 d!1930943))

(declare-fun m!6999770 () Bool)

(assert (=> bs!1527290 m!6999770))

(assert (=> b!6160586 d!1930943))

(assert (=> d!1930345 d!1930331))

(declare-fun d!1930945 () Bool)

(assert (=> d!1930945 (= (flatMap!1608 lt!2335749 lambda!336125) (dynLambda!25425 lambda!336125 lt!2335742))))

(assert (=> d!1930945 true))

(declare-fun _$13!3114 () Unit!157603)

(assert (=> d!1930945 (= (choose!45804 lt!2335749 lt!2335742 lambda!336125) _$13!3114)))

(declare-fun b_lambda!234567 () Bool)

(assert (=> (not b_lambda!234567) (not d!1930945)))

(declare-fun bs!1527291 () Bool)

(assert (= bs!1527291 d!1930945))

(assert (=> bs!1527291 m!6998016))

(assert (=> bs!1527291 m!6998506))

(assert (=> d!1930345 d!1930945))

(declare-fun d!1930947 () Bool)

(assert (=> d!1930947 (= (isEmpty!36453 (exprs!5987 (h!70933 zl!343))) ((_ is Nil!64484) (exprs!5987 (h!70933 zl!343))))))

(assert (=> b!6160634 d!1930947))

(declare-fun d!1930949 () Bool)

(declare-fun c!1109772 () Bool)

(assert (=> d!1930949 (= c!1109772 (isEmpty!36455 (tail!11811 s!2326)))))

(declare-fun e!3754071 () Bool)

(assert (=> d!1930949 (= (matchZipper!2115 (derivationStepZipper!2076 lt!2335749 (head!12726 s!2326)) (tail!11811 s!2326)) e!3754071)))

(declare-fun b!6161678 () Bool)

(assert (=> b!6161678 (= e!3754071 (nullableZipper!1884 (derivationStepZipper!2076 lt!2335749 (head!12726 s!2326))))))

(declare-fun b!6161679 () Bool)

(assert (=> b!6161679 (= e!3754071 (matchZipper!2115 (derivationStepZipper!2076 (derivationStepZipper!2076 lt!2335749 (head!12726 s!2326)) (head!12726 (tail!11811 s!2326))) (tail!11811 (tail!11811 s!2326))))))

(assert (= (and d!1930949 c!1109772) b!6161678))

(assert (= (and d!1930949 (not c!1109772)) b!6161679))

(assert (=> d!1930949 m!6998448))

(assert (=> d!1930949 m!6998450))

(assert (=> b!6161678 m!6998570))

(declare-fun m!6999772 () Bool)

(assert (=> b!6161678 m!6999772))

(assert (=> b!6161679 m!6998448))

(assert (=> b!6161679 m!6999506))

(assert (=> b!6161679 m!6998570))

(assert (=> b!6161679 m!6999506))

(declare-fun m!6999774 () Bool)

(assert (=> b!6161679 m!6999774))

(assert (=> b!6161679 m!6998448))

(assert (=> b!6161679 m!6999510))

(assert (=> b!6161679 m!6999774))

(assert (=> b!6161679 m!6999510))

(declare-fun m!6999776 () Bool)

(assert (=> b!6161679 m!6999776))

(assert (=> b!6160527 d!1930949))

(declare-fun bs!1527292 () Bool)

(declare-fun d!1930951 () Bool)

(assert (= bs!1527292 (and d!1930951 d!1930855)))

(declare-fun lambda!336258 () Int)

(assert (=> bs!1527292 (= (= (head!12726 s!2326) (head!12726 (t!378106 s!2326))) (= lambda!336258 lambda!336247))))

(declare-fun bs!1527293 () Bool)

(assert (= bs!1527293 (and d!1930951 d!1930803)))

(assert (=> bs!1527293 (= (= (head!12726 s!2326) (head!12726 (t!378106 s!2326))) (= lambda!336258 lambda!336237))))

(declare-fun bs!1527294 () Bool)

(assert (= bs!1527294 (and d!1930951 b!6159868)))

(assert (=> bs!1527294 (= (= (head!12726 s!2326) (h!70934 s!2326)) (= lambda!336258 lambda!336125))))

(declare-fun bs!1527295 () Bool)

(assert (= bs!1527295 (and d!1930951 d!1930655)))

(assert (=> bs!1527295 (= (= (head!12726 s!2326) (head!12726 (t!378106 s!2326))) (= lambda!336258 lambda!336215))))

(declare-fun bs!1527296 () Bool)

(assert (= bs!1527296 (and d!1930951 d!1930823)))

(assert (=> bs!1527296 (= lambda!336258 lambda!336238)))

(declare-fun bs!1527297 () Bool)

(assert (= bs!1527297 (and d!1930951 d!1930671)))

(assert (=> bs!1527297 (= (= (head!12726 s!2326) (head!12726 (t!378106 s!2326))) (= lambda!336258 lambda!336217))))

(declare-fun bs!1527298 () Bool)

(assert (= bs!1527298 (and d!1930951 d!1930735)))

(assert (=> bs!1527298 (= (= (head!12726 s!2326) (head!12726 (t!378106 s!2326))) (= lambda!336258 lambda!336226))))

(declare-fun bs!1527299 () Bool)

(assert (= bs!1527299 (and d!1930951 d!1930567)))

(assert (=> bs!1527299 (= (= (head!12726 s!2326) (head!12726 (t!378106 s!2326))) (= lambda!336258 lambda!336206))))

(declare-fun bs!1527300 () Bool)

(assert (= bs!1527300 (and d!1930951 d!1930909)))

(assert (=> bs!1527300 (= lambda!336258 lambda!336255)))

(declare-fun bs!1527301 () Bool)

(assert (= bs!1527301 (and d!1930951 d!1930719)))

(assert (=> bs!1527301 (= (= (head!12726 s!2326) (head!12726 (t!378106 s!2326))) (= lambda!336258 lambda!336225))))

(declare-fun bs!1527302 () Bool)

(assert (= bs!1527302 (and d!1930951 d!1930749)))

(assert (=> bs!1527302 (= (= (head!12726 s!2326) (head!12726 (t!378106 s!2326))) (= lambda!336258 lambda!336229))))

(assert (=> d!1930951 true))

(assert (=> d!1930951 (= (derivationStepZipper!2076 lt!2335749 (head!12726 s!2326)) (flatMap!1608 lt!2335749 lambda!336258))))

(declare-fun bs!1527303 () Bool)

(assert (= bs!1527303 d!1930951))

(declare-fun m!6999778 () Bool)

(assert (=> bs!1527303 m!6999778))

(assert (=> b!6160527 d!1930951))

(assert (=> b!6160527 d!1930601))

(assert (=> b!6160527 d!1930629))

(assert (=> d!1930367 d!1930607))

(declare-fun b!6161680 () Bool)

(declare-fun e!3754078 () Bool)

(declare-fun call!513241 () Bool)

(assert (=> b!6161680 (= e!3754078 call!513241)))

(declare-fun bm!513236 () Bool)

(declare-fun c!1109774 () Bool)

(assert (=> bm!513236 (= call!513241 (validRegex!7839 (ite c!1109774 (regTwo!32719 lt!2335839) (regTwo!32718 lt!2335839))))))

(declare-fun b!6161681 () Bool)

(declare-fun e!3754077 () Bool)

(declare-fun call!513243 () Bool)

(assert (=> b!6161681 (= e!3754077 call!513243)))

(declare-fun c!1109773 () Bool)

(declare-fun bm!513237 () Bool)

(assert (=> bm!513237 (= call!513243 (validRegex!7839 (ite c!1109773 (reg!16432 lt!2335839) (ite c!1109774 (regOne!32719 lt!2335839) (regOne!32718 lt!2335839)))))))

(declare-fun b!6161682 () Bool)

(declare-fun res!2551526 () Bool)

(assert (=> b!6161682 (=> (not res!2551526) (not e!3754078))))

(declare-fun call!513242 () Bool)

(assert (=> b!6161682 (= res!2551526 call!513242)))

(declare-fun e!3754072 () Bool)

(assert (=> b!6161682 (= e!3754072 e!3754078)))

(declare-fun b!6161683 () Bool)

(declare-fun e!3754074 () Bool)

(assert (=> b!6161683 (= e!3754074 e!3754072)))

(assert (=> b!6161683 (= c!1109774 ((_ is Union!16103) lt!2335839))))

(declare-fun b!6161684 () Bool)

(declare-fun e!3754073 () Bool)

(declare-fun e!3754075 () Bool)

(assert (=> b!6161684 (= e!3754073 e!3754075)))

(declare-fun res!2551527 () Bool)

(assert (=> b!6161684 (=> (not res!2551527) (not e!3754075))))

(assert (=> b!6161684 (= res!2551527 call!513242)))

(declare-fun bm!513238 () Bool)

(assert (=> bm!513238 (= call!513242 call!513243)))

(declare-fun b!6161686 () Bool)

(declare-fun e!3754076 () Bool)

(assert (=> b!6161686 (= e!3754076 e!3754074)))

(assert (=> b!6161686 (= c!1109773 ((_ is Star!16103) lt!2335839))))

(declare-fun b!6161685 () Bool)

(declare-fun res!2551529 () Bool)

(assert (=> b!6161685 (=> res!2551529 e!3754073)))

(assert (=> b!6161685 (= res!2551529 (not ((_ is Concat!24948) lt!2335839)))))

(assert (=> b!6161685 (= e!3754072 e!3754073)))

(declare-fun d!1930953 () Bool)

(declare-fun res!2551530 () Bool)

(assert (=> d!1930953 (=> res!2551530 e!3754076)))

(assert (=> d!1930953 (= res!2551530 ((_ is ElementMatch!16103) lt!2335839))))

(assert (=> d!1930953 (= (validRegex!7839 lt!2335839) e!3754076)))

(declare-fun b!6161687 () Bool)

(assert (=> b!6161687 (= e!3754074 e!3754077)))

(declare-fun res!2551528 () Bool)

(assert (=> b!6161687 (= res!2551528 (not (nullable!6096 (reg!16432 lt!2335839))))))

(assert (=> b!6161687 (=> (not res!2551528) (not e!3754077))))

(declare-fun b!6161688 () Bool)

(assert (=> b!6161688 (= e!3754075 call!513241)))

(assert (= (and d!1930953 (not res!2551530)) b!6161686))

(assert (= (and b!6161686 c!1109773) b!6161687))

(assert (= (and b!6161686 (not c!1109773)) b!6161683))

(assert (= (and b!6161687 res!2551528) b!6161681))

(assert (= (and b!6161683 c!1109774) b!6161682))

(assert (= (and b!6161683 (not c!1109774)) b!6161685))

(assert (= (and b!6161682 res!2551526) b!6161680))

(assert (= (and b!6161685 (not res!2551529)) b!6161684))

(assert (= (and b!6161684 res!2551527) b!6161688))

(assert (= (or b!6161680 b!6161688) bm!513236))

(assert (= (or b!6161682 b!6161684) bm!513238))

(assert (= (or b!6161681 bm!513238) bm!513237))

(declare-fun m!6999780 () Bool)

(assert (=> bm!513236 m!6999780))

(declare-fun m!6999782 () Bool)

(assert (=> bm!513237 m!6999782))

(declare-fun m!6999784 () Bool)

(assert (=> b!6161687 m!6999784))

(assert (=> d!1930353 d!1930953))

(declare-fun d!1930955 () Bool)

(declare-fun res!2551531 () Bool)

(declare-fun e!3754079 () Bool)

(assert (=> d!1930955 (=> res!2551531 e!3754079)))

(assert (=> d!1930955 (= res!2551531 ((_ is Nil!64484) (unfocusZipperList!1524 zl!343)))))

(assert (=> d!1930955 (= (forall!15224 (unfocusZipperList!1524 zl!343) lambda!336163) e!3754079)))

(declare-fun b!6161689 () Bool)

(declare-fun e!3754080 () Bool)

(assert (=> b!6161689 (= e!3754079 e!3754080)))

(declare-fun res!2551532 () Bool)

(assert (=> b!6161689 (=> (not res!2551532) (not e!3754080))))

(assert (=> b!6161689 (= res!2551532 (dynLambda!25426 lambda!336163 (h!70932 (unfocusZipperList!1524 zl!343))))))

(declare-fun b!6161690 () Bool)

(assert (=> b!6161690 (= e!3754080 (forall!15224 (t!378104 (unfocusZipperList!1524 zl!343)) lambda!336163))))

(assert (= (and d!1930955 (not res!2551531)) b!6161689))

(assert (= (and b!6161689 res!2551532) b!6161690))

(declare-fun b_lambda!234569 () Bool)

(assert (=> (not b_lambda!234569) (not b!6161689)))

(declare-fun m!6999786 () Bool)

(assert (=> b!6161689 m!6999786))

(declare-fun m!6999788 () Bool)

(assert (=> b!6161690 m!6999788))

(assert (=> d!1930353 d!1930955))

(assert (=> d!1930363 d!1930677))

(assert (=> bs!1526856 d!1930333))

(declare-fun d!1930957 () Bool)

(assert (=> d!1930957 (= ($colon$colon!1980 (exprs!5987 lt!2335757) (ite (or c!1109428 c!1109425) (regTwo!32718 (regTwo!32719 (regOne!32718 r!7292))) (regTwo!32719 (regOne!32718 r!7292)))) (Cons!64484 (ite (or c!1109428 c!1109425) (regTwo!32718 (regTwo!32719 (regOne!32718 r!7292))) (regTwo!32719 (regOne!32718 r!7292))) (exprs!5987 lt!2335757)))))

(assert (=> bm!513008 d!1930957))

(declare-fun d!1930959 () Bool)

(assert (=> d!1930959 (= (Exists!3173 lambda!336178) (choose!45805 lambda!336178))))

(declare-fun bs!1527304 () Bool)

(assert (= bs!1527304 d!1930959))

(declare-fun m!6999790 () Bool)

(assert (=> bs!1527304 m!6999790))

(assert (=> d!1930385 d!1930959))

(declare-fun d!1930961 () Bool)

(assert (=> d!1930961 (= (Exists!3173 lambda!336179) (choose!45805 lambda!336179))))

(declare-fun bs!1527305 () Bool)

(assert (= bs!1527305 d!1930961))

(declare-fun m!6999792 () Bool)

(assert (=> bs!1527305 m!6999792))

(assert (=> d!1930385 d!1930961))

(declare-fun bs!1527306 () Bool)

(declare-fun d!1930963 () Bool)

(assert (= bs!1527306 (and d!1930963 b!6160346)))

(declare-fun lambda!336263 () Int)

(assert (=> bs!1527306 (not (= lambda!336263 lambda!336160))))

(declare-fun bs!1527307 () Bool)

(assert (= bs!1527307 (and d!1930963 d!1930385)))

(assert (=> bs!1527307 (= lambda!336263 lambda!336178)))

(declare-fun bs!1527308 () Bool)

(assert (= bs!1527308 (and d!1930963 b!6159849)))

(assert (=> bs!1527308 (not (= lambda!336263 lambda!336124))))

(declare-fun bs!1527309 () Bool)

(assert (= bs!1527309 (and d!1930963 d!1930381)))

(assert (=> bs!1527309 (= lambda!336263 lambda!336173)))

(declare-fun bs!1527310 () Bool)

(assert (= bs!1527310 (and d!1930963 b!6160339)))

(assert (=> bs!1527310 (not (= lambda!336263 lambda!336159))))

(assert (=> bs!1527307 (not (= lambda!336263 lambda!336179))))

(assert (=> bs!1527308 (= lambda!336263 lambda!336123)))

(declare-fun bs!1527311 () Bool)

(assert (= bs!1527311 (and d!1930963 b!6161268)))

(assert (=> bs!1527311 (not (= lambda!336263 lambda!336234))))

(declare-fun bs!1527312 () Bool)

(assert (= bs!1527312 (and d!1930963 b!6161275)))

(assert (=> bs!1527312 (not (= lambda!336263 lambda!336235))))

(assert (=> d!1930963 true))

(assert (=> d!1930963 true))

(assert (=> d!1930963 true))

(declare-fun lambda!336264 () Int)

(assert (=> bs!1527306 (= lambda!336264 lambda!336160)))

(assert (=> bs!1527307 (not (= lambda!336264 lambda!336178))))

(assert (=> bs!1527308 (= lambda!336264 lambda!336124)))

(assert (=> bs!1527309 (not (= lambda!336264 lambda!336173))))

(assert (=> bs!1527310 (not (= lambda!336264 lambda!336159))))

(assert (=> bs!1527307 (= lambda!336264 lambda!336179)))

(assert (=> bs!1527308 (not (= lambda!336264 lambda!336123))))

(declare-fun bs!1527313 () Bool)

(assert (= bs!1527313 d!1930963))

(assert (=> bs!1527313 (not (= lambda!336264 lambda!336263))))

(assert (=> bs!1527311 (not (= lambda!336264 lambda!336234))))

(assert (=> bs!1527312 (= (and (= (regOne!32718 r!7292) (regOne!32718 (regTwo!32719 r!7292))) (= (regTwo!32718 r!7292) (regTwo!32718 (regTwo!32719 r!7292)))) (= lambda!336264 lambda!336235))))

(assert (=> d!1930963 true))

(assert (=> d!1930963 true))

(assert (=> d!1930963 true))

(assert (=> d!1930963 (= (Exists!3173 lambda!336263) (Exists!3173 lambda!336264))))

(assert (=> d!1930963 true))

(declare-fun _$90!1911 () Unit!157603)

(assert (=> d!1930963 (= (choose!45807 (regOne!32718 r!7292) (regTwo!32718 r!7292) s!2326) _$90!1911)))

(declare-fun m!6999794 () Bool)

(assert (=> bs!1527313 m!6999794))

(declare-fun m!6999796 () Bool)

(assert (=> bs!1527313 m!6999796))

(assert (=> d!1930385 d!1930963))

(declare-fun b!6161699 () Bool)

(declare-fun e!3754091 () Bool)

(declare-fun call!513244 () Bool)

(assert (=> b!6161699 (= e!3754091 call!513244)))

(declare-fun bm!513239 () Bool)

(declare-fun c!1109776 () Bool)

(assert (=> bm!513239 (= call!513244 (validRegex!7839 (ite c!1109776 (regTwo!32719 (regOne!32718 r!7292)) (regTwo!32718 (regOne!32718 r!7292)))))))

(declare-fun b!6161700 () Bool)

(declare-fun e!3754090 () Bool)

(declare-fun call!513246 () Bool)

(assert (=> b!6161700 (= e!3754090 call!513246)))

(declare-fun bm!513240 () Bool)

(declare-fun c!1109775 () Bool)

(assert (=> bm!513240 (= call!513246 (validRegex!7839 (ite c!1109775 (reg!16432 (regOne!32718 r!7292)) (ite c!1109776 (regOne!32719 (regOne!32718 r!7292)) (regOne!32718 (regOne!32718 r!7292))))))))

(declare-fun b!6161701 () Bool)

(declare-fun res!2551541 () Bool)

(assert (=> b!6161701 (=> (not res!2551541) (not e!3754091))))

(declare-fun call!513245 () Bool)

(assert (=> b!6161701 (= res!2551541 call!513245)))

(declare-fun e!3754085 () Bool)

(assert (=> b!6161701 (= e!3754085 e!3754091)))

(declare-fun b!6161702 () Bool)

(declare-fun e!3754087 () Bool)

(assert (=> b!6161702 (= e!3754087 e!3754085)))

(assert (=> b!6161702 (= c!1109776 ((_ is Union!16103) (regOne!32718 r!7292)))))

(declare-fun b!6161703 () Bool)

(declare-fun e!3754086 () Bool)

(declare-fun e!3754088 () Bool)

(assert (=> b!6161703 (= e!3754086 e!3754088)))

(declare-fun res!2551542 () Bool)

(assert (=> b!6161703 (=> (not res!2551542) (not e!3754088))))

(assert (=> b!6161703 (= res!2551542 call!513245)))

(declare-fun bm!513241 () Bool)

(assert (=> bm!513241 (= call!513245 call!513246)))

(declare-fun b!6161705 () Bool)

(declare-fun e!3754089 () Bool)

(assert (=> b!6161705 (= e!3754089 e!3754087)))

(assert (=> b!6161705 (= c!1109775 ((_ is Star!16103) (regOne!32718 r!7292)))))

(declare-fun b!6161704 () Bool)

(declare-fun res!2551544 () Bool)

(assert (=> b!6161704 (=> res!2551544 e!3754086)))

(assert (=> b!6161704 (= res!2551544 (not ((_ is Concat!24948) (regOne!32718 r!7292))))))

(assert (=> b!6161704 (= e!3754085 e!3754086)))

(declare-fun d!1930965 () Bool)

(declare-fun res!2551545 () Bool)

(assert (=> d!1930965 (=> res!2551545 e!3754089)))

(assert (=> d!1930965 (= res!2551545 ((_ is ElementMatch!16103) (regOne!32718 r!7292)))))

(assert (=> d!1930965 (= (validRegex!7839 (regOne!32718 r!7292)) e!3754089)))

(declare-fun b!6161706 () Bool)

(assert (=> b!6161706 (= e!3754087 e!3754090)))

(declare-fun res!2551543 () Bool)

(assert (=> b!6161706 (= res!2551543 (not (nullable!6096 (reg!16432 (regOne!32718 r!7292)))))))

(assert (=> b!6161706 (=> (not res!2551543) (not e!3754090))))

(declare-fun b!6161707 () Bool)

(assert (=> b!6161707 (= e!3754088 call!513244)))

(assert (= (and d!1930965 (not res!2551545)) b!6161705))

(assert (= (and b!6161705 c!1109775) b!6161706))

(assert (= (and b!6161705 (not c!1109775)) b!6161702))

(assert (= (and b!6161706 res!2551543) b!6161700))

(assert (= (and b!6161702 c!1109776) b!6161701))

(assert (= (and b!6161702 (not c!1109776)) b!6161704))

(assert (= (and b!6161701 res!2551541) b!6161699))

(assert (= (and b!6161704 (not res!2551544)) b!6161703))

(assert (= (and b!6161703 res!2551542) b!6161707))

(assert (= (or b!6161699 b!6161707) bm!513239))

(assert (= (or b!6161701 b!6161703) bm!513241))

(assert (= (or b!6161700 bm!513241) bm!513240))

(declare-fun m!6999798 () Bool)

(assert (=> bm!513239 m!6999798))

(declare-fun m!6999800 () Bool)

(assert (=> bm!513240 m!6999800))

(declare-fun m!6999802 () Bool)

(assert (=> b!6161706 m!6999802))

(assert (=> d!1930385 d!1930965))

(declare-fun b!6161708 () Bool)

(declare-fun e!3754098 () Bool)

(declare-fun call!513247 () Bool)

(assert (=> b!6161708 (= e!3754098 call!513247)))

(declare-fun c!1109778 () Bool)

(declare-fun bm!513242 () Bool)

(assert (=> bm!513242 (= call!513247 (validRegex!7839 (ite c!1109778 (regTwo!32719 (ite c!1109454 (reg!16432 r!7292) (ite c!1109455 (regOne!32719 r!7292) (regOne!32718 r!7292)))) (regTwo!32718 (ite c!1109454 (reg!16432 r!7292) (ite c!1109455 (regOne!32719 r!7292) (regOne!32718 r!7292)))))))))

(declare-fun b!6161709 () Bool)

(declare-fun e!3754097 () Bool)

(declare-fun call!513249 () Bool)

(assert (=> b!6161709 (= e!3754097 call!513249)))

(declare-fun c!1109777 () Bool)

(declare-fun bm!513243 () Bool)

(assert (=> bm!513243 (= call!513249 (validRegex!7839 (ite c!1109777 (reg!16432 (ite c!1109454 (reg!16432 r!7292) (ite c!1109455 (regOne!32719 r!7292) (regOne!32718 r!7292)))) (ite c!1109778 (regOne!32719 (ite c!1109454 (reg!16432 r!7292) (ite c!1109455 (regOne!32719 r!7292) (regOne!32718 r!7292)))) (regOne!32718 (ite c!1109454 (reg!16432 r!7292) (ite c!1109455 (regOne!32719 r!7292) (regOne!32718 r!7292))))))))))

(declare-fun b!6161710 () Bool)

(declare-fun res!2551546 () Bool)

(assert (=> b!6161710 (=> (not res!2551546) (not e!3754098))))

(declare-fun call!513248 () Bool)

(assert (=> b!6161710 (= res!2551546 call!513248)))

(declare-fun e!3754092 () Bool)

(assert (=> b!6161710 (= e!3754092 e!3754098)))

(declare-fun b!6161711 () Bool)

(declare-fun e!3754094 () Bool)

(assert (=> b!6161711 (= e!3754094 e!3754092)))

(assert (=> b!6161711 (= c!1109778 ((_ is Union!16103) (ite c!1109454 (reg!16432 r!7292) (ite c!1109455 (regOne!32719 r!7292) (regOne!32718 r!7292)))))))

(declare-fun b!6161712 () Bool)

(declare-fun e!3754093 () Bool)

(declare-fun e!3754095 () Bool)

(assert (=> b!6161712 (= e!3754093 e!3754095)))

(declare-fun res!2551547 () Bool)

(assert (=> b!6161712 (=> (not res!2551547) (not e!3754095))))

(assert (=> b!6161712 (= res!2551547 call!513248)))

(declare-fun bm!513244 () Bool)

(assert (=> bm!513244 (= call!513248 call!513249)))

(declare-fun b!6161714 () Bool)

(declare-fun e!3754096 () Bool)

(assert (=> b!6161714 (= e!3754096 e!3754094)))

(assert (=> b!6161714 (= c!1109777 ((_ is Star!16103) (ite c!1109454 (reg!16432 r!7292) (ite c!1109455 (regOne!32719 r!7292) (regOne!32718 r!7292)))))))

(declare-fun b!6161713 () Bool)

(declare-fun res!2551549 () Bool)

(assert (=> b!6161713 (=> res!2551549 e!3754093)))

(assert (=> b!6161713 (= res!2551549 (not ((_ is Concat!24948) (ite c!1109454 (reg!16432 r!7292) (ite c!1109455 (regOne!32719 r!7292) (regOne!32718 r!7292))))))))

(assert (=> b!6161713 (= e!3754092 e!3754093)))

(declare-fun d!1930967 () Bool)

(declare-fun res!2551550 () Bool)

(assert (=> d!1930967 (=> res!2551550 e!3754096)))

(assert (=> d!1930967 (= res!2551550 ((_ is ElementMatch!16103) (ite c!1109454 (reg!16432 r!7292) (ite c!1109455 (regOne!32719 r!7292) (regOne!32718 r!7292)))))))

(assert (=> d!1930967 (= (validRegex!7839 (ite c!1109454 (reg!16432 r!7292) (ite c!1109455 (regOne!32719 r!7292) (regOne!32718 r!7292)))) e!3754096)))

(declare-fun b!6161715 () Bool)

(assert (=> b!6161715 (= e!3754094 e!3754097)))

(declare-fun res!2551548 () Bool)

(assert (=> b!6161715 (= res!2551548 (not (nullable!6096 (reg!16432 (ite c!1109454 (reg!16432 r!7292) (ite c!1109455 (regOne!32719 r!7292) (regOne!32718 r!7292)))))))))

(assert (=> b!6161715 (=> (not res!2551548) (not e!3754097))))

(declare-fun b!6161716 () Bool)

(assert (=> b!6161716 (= e!3754095 call!513247)))

(assert (= (and d!1930967 (not res!2551550)) b!6161714))

(assert (= (and b!6161714 c!1109777) b!6161715))

(assert (= (and b!6161714 (not c!1109777)) b!6161711))

(assert (= (and b!6161715 res!2551548) b!6161709))

(assert (= (and b!6161711 c!1109778) b!6161710))

(assert (= (and b!6161711 (not c!1109778)) b!6161713))

(assert (= (and b!6161710 res!2551546) b!6161708))

(assert (= (and b!6161713 (not res!2551549)) b!6161712))

(assert (= (and b!6161712 res!2551547) b!6161716))

(assert (= (or b!6161708 b!6161716) bm!513242))

(assert (= (or b!6161710 b!6161712) bm!513244))

(assert (= (or b!6161709 bm!513244) bm!513243))

(declare-fun m!6999804 () Bool)

(assert (=> bm!513242 m!6999804))

(declare-fun m!6999806 () Bool)

(assert (=> bm!513243 m!6999806))

(declare-fun m!6999808 () Bool)

(assert (=> b!6161715 m!6999808))

(assert (=> bm!513023 d!1930967))

(assert (=> d!1930381 d!1930379))

(assert (=> d!1930381 d!1930965))

(assert (=> d!1930381 d!1930387))

(declare-fun d!1930969 () Bool)

(assert (=> d!1930969 (= (Exists!3173 lambda!336173) (choose!45805 lambda!336173))))

(declare-fun bs!1527314 () Bool)

(assert (= bs!1527314 d!1930969))

(declare-fun m!6999810 () Bool)

(assert (=> bs!1527314 m!6999810))

(assert (=> d!1930381 d!1930969))

(declare-fun bs!1527315 () Bool)

(declare-fun d!1930971 () Bool)

(assert (= bs!1527315 (and d!1930971 b!6160346)))

(declare-fun lambda!336267 () Int)

(assert (=> bs!1527315 (not (= lambda!336267 lambda!336160))))

(declare-fun bs!1527316 () Bool)

(assert (= bs!1527316 (and d!1930971 d!1930385)))

(assert (=> bs!1527316 (= lambda!336267 lambda!336178)))

(declare-fun bs!1527317 () Bool)

(assert (= bs!1527317 (and d!1930971 b!6159849)))

(assert (=> bs!1527317 (not (= lambda!336267 lambda!336124))))

(declare-fun bs!1527318 () Bool)

(assert (= bs!1527318 (and d!1930971 d!1930381)))

(assert (=> bs!1527318 (= lambda!336267 lambda!336173)))

(declare-fun bs!1527319 () Bool)

(assert (= bs!1527319 (and d!1930971 b!6160339)))

(assert (=> bs!1527319 (not (= lambda!336267 lambda!336159))))

(assert (=> bs!1527316 (not (= lambda!336267 lambda!336179))))

(assert (=> bs!1527317 (= lambda!336267 lambda!336123)))

(declare-fun bs!1527320 () Bool)

(assert (= bs!1527320 (and d!1930971 d!1930963)))

(assert (=> bs!1527320 (= lambda!336267 lambda!336263)))

(declare-fun bs!1527321 () Bool)

(assert (= bs!1527321 (and d!1930971 b!6161268)))

(assert (=> bs!1527321 (not (= lambda!336267 lambda!336234))))

(assert (=> bs!1527320 (not (= lambda!336267 lambda!336264))))

(declare-fun bs!1527322 () Bool)

(assert (= bs!1527322 (and d!1930971 b!6161275)))

(assert (=> bs!1527322 (not (= lambda!336267 lambda!336235))))

(assert (=> d!1930971 true))

(assert (=> d!1930971 true))

(assert (=> d!1930971 true))

(assert (=> d!1930971 (= (isDefined!12697 (findConcatSeparation!2408 (regOne!32718 r!7292) (regTwo!32718 r!7292) Nil!64486 s!2326 s!2326)) (Exists!3173 lambda!336267))))

(assert (=> d!1930971 true))

(declare-fun _$89!2287 () Unit!157603)

(assert (=> d!1930971 (= (choose!45806 (regOne!32718 r!7292) (regTwo!32718 r!7292) s!2326) _$89!2287)))

(declare-fun bs!1527323 () Bool)

(assert (= bs!1527323 d!1930971))

(assert (=> bs!1527323 m!6998088))

(assert (=> bs!1527323 m!6998088))

(assert (=> bs!1527323 m!6998090))

(declare-fun m!6999812 () Bool)

(assert (=> bs!1527323 m!6999812))

(assert (=> d!1930381 d!1930971))

(assert (=> d!1930379 d!1930935))

(declare-fun bm!513245 () Bool)

(declare-fun call!513250 () Bool)

(assert (=> bm!513245 (= call!513250 (isEmpty!36455 Nil!64486))))

(declare-fun b!6161721 () Bool)

(declare-fun e!3754102 () Bool)

(declare-fun e!3754104 () Bool)

(assert (=> b!6161721 (= e!3754102 e!3754104)))

(declare-fun res!2551560 () Bool)

(assert (=> b!6161721 (=> (not res!2551560) (not e!3754104))))

(declare-fun lt!2335924 () Bool)

(assert (=> b!6161721 (= res!2551560 (not lt!2335924))))

(declare-fun b!6161722 () Bool)

(declare-fun res!2551562 () Bool)

(declare-fun e!3754103 () Bool)

(assert (=> b!6161722 (=> res!2551562 e!3754103)))

(assert (=> b!6161722 (= res!2551562 (not (isEmpty!36455 (tail!11811 Nil!64486))))))

(declare-fun b!6161724 () Bool)

(declare-fun e!3754101 () Bool)

(assert (=> b!6161724 (= e!3754101 (not lt!2335924))))

(declare-fun b!6161725 () Bool)

(declare-fun res!2551555 () Bool)

(declare-fun e!3754107 () Bool)

(assert (=> b!6161725 (=> (not res!2551555) (not e!3754107))))

(assert (=> b!6161725 (= res!2551555 (isEmpty!36455 (tail!11811 Nil!64486)))))

(declare-fun b!6161726 () Bool)

(declare-fun e!3754105 () Bool)

(assert (=> b!6161726 (= e!3754105 (nullable!6096 (regOne!32718 r!7292)))))

(declare-fun b!6161727 () Bool)

(declare-fun res!2551558 () Bool)

(assert (=> b!6161727 (=> res!2551558 e!3754102)))

(assert (=> b!6161727 (= res!2551558 e!3754107)))

(declare-fun res!2551561 () Bool)

(assert (=> b!6161727 (=> (not res!2551561) (not e!3754107))))

(assert (=> b!6161727 (= res!2551561 lt!2335924)))

(declare-fun b!6161728 () Bool)

(declare-fun res!2551556 () Bool)

(assert (=> b!6161728 (=> (not res!2551556) (not e!3754107))))

(assert (=> b!6161728 (= res!2551556 (not call!513250))))

(declare-fun b!6161729 () Bool)

(assert (=> b!6161729 (= e!3754103 (not (= (head!12726 Nil!64486) (c!1109260 (regOne!32718 r!7292)))))))

(declare-fun b!6161730 () Bool)

(assert (=> b!6161730 (= e!3754104 e!3754103)))

(declare-fun res!2551559 () Bool)

(assert (=> b!6161730 (=> res!2551559 e!3754103)))

(assert (=> b!6161730 (= res!2551559 call!513250)))

(declare-fun b!6161731 () Bool)

(declare-fun res!2551557 () Bool)

(assert (=> b!6161731 (=> res!2551557 e!3754102)))

(assert (=> b!6161731 (= res!2551557 (not ((_ is ElementMatch!16103) (regOne!32718 r!7292))))))

(assert (=> b!6161731 (= e!3754101 e!3754102)))

(declare-fun b!6161732 () Bool)

(declare-fun e!3754106 () Bool)

(assert (=> b!6161732 (= e!3754106 (= lt!2335924 call!513250))))

(declare-fun d!1930973 () Bool)

(assert (=> d!1930973 e!3754106))

(declare-fun c!1109781 () Bool)

(assert (=> d!1930973 (= c!1109781 ((_ is EmptyExpr!16103) (regOne!32718 r!7292)))))

(assert (=> d!1930973 (= lt!2335924 e!3754105)))

(declare-fun c!1109779 () Bool)

(assert (=> d!1930973 (= c!1109779 (isEmpty!36455 Nil!64486))))

(assert (=> d!1930973 (validRegex!7839 (regOne!32718 r!7292))))

(assert (=> d!1930973 (= (matchR!8286 (regOne!32718 r!7292) Nil!64486) lt!2335924)))

(declare-fun b!6161723 () Bool)

(assert (=> b!6161723 (= e!3754106 e!3754101)))

(declare-fun c!1109780 () Bool)

(assert (=> b!6161723 (= c!1109780 ((_ is EmptyLang!16103) (regOne!32718 r!7292)))))

(declare-fun b!6161733 () Bool)

(assert (=> b!6161733 (= e!3754105 (matchR!8286 (derivativeStep!4823 (regOne!32718 r!7292) (head!12726 Nil!64486)) (tail!11811 Nil!64486)))))

(declare-fun b!6161734 () Bool)

(assert (=> b!6161734 (= e!3754107 (= (head!12726 Nil!64486) (c!1109260 (regOne!32718 r!7292))))))

(assert (= (and d!1930973 c!1109779) b!6161726))

(assert (= (and d!1930973 (not c!1109779)) b!6161733))

(assert (= (and d!1930973 c!1109781) b!6161732))

(assert (= (and d!1930973 (not c!1109781)) b!6161723))

(assert (= (and b!6161723 c!1109780) b!6161724))

(assert (= (and b!6161723 (not c!1109780)) b!6161731))

(assert (= (and b!6161731 (not res!2551557)) b!6161727))

(assert (= (and b!6161727 res!2551561) b!6161728))

(assert (= (and b!6161728 res!2551556) b!6161725))

(assert (= (and b!6161725 res!2551555) b!6161734))

(assert (= (and b!6161727 (not res!2551558)) b!6161721))

(assert (= (and b!6161721 res!2551560) b!6161730))

(assert (= (and b!6161730 (not res!2551559)) b!6161722))

(assert (= (and b!6161722 (not res!2551562)) b!6161729))

(assert (= (or b!6161732 b!6161728 b!6161730) bm!513245))

(declare-fun m!6999814 () Bool)

(assert (=> b!6161725 m!6999814))

(assert (=> b!6161725 m!6999814))

(declare-fun m!6999816 () Bool)

(assert (=> b!6161725 m!6999816))

(declare-fun m!6999818 () Bool)

(assert (=> b!6161734 m!6999818))

(assert (=> b!6161733 m!6999818))

(assert (=> b!6161733 m!6999818))

(declare-fun m!6999820 () Bool)

(assert (=> b!6161733 m!6999820))

(assert (=> b!6161733 m!6999814))

(assert (=> b!6161733 m!6999820))

(assert (=> b!6161733 m!6999814))

(declare-fun m!6999822 () Bool)

(assert (=> b!6161733 m!6999822))

(assert (=> b!6161729 m!6999818))

(assert (=> b!6161722 m!6999814))

(assert (=> b!6161722 m!6999814))

(assert (=> b!6161722 m!6999816))

(declare-fun m!6999824 () Bool)

(assert (=> d!1930973 m!6999824))

(assert (=> d!1930973 m!6998618))

(assert (=> b!6161726 m!6999224))

(assert (=> bm!513245 m!6999824))

(assert (=> d!1930379 d!1930973))

(assert (=> d!1930379 d!1930965))

(declare-fun d!1930975 () Bool)

(assert (=> d!1930975 (= (nullable!6096 r!7292) (nullableFct!2060 r!7292))))

(declare-fun bs!1527324 () Bool)

(assert (= bs!1527324 d!1930975))

(declare-fun m!6999826 () Bool)

(assert (=> bs!1527324 m!6999826))

(assert (=> b!6160381 d!1930975))

(declare-fun bs!1527325 () Bool)

(declare-fun d!1930977 () Bool)

(assert (= bs!1527325 (and d!1930977 d!1930753)))

(declare-fun lambda!336268 () Int)

(assert (=> bs!1527325 (= lambda!336268 lambda!336230)))

(declare-fun bs!1527326 () Bool)

(assert (= bs!1527326 (and d!1930977 d!1930875)))

(assert (=> bs!1527326 (= lambda!336268 lambda!336251)))

(declare-fun bs!1527327 () Bool)

(assert (= bs!1527327 (and d!1930977 d!1930905)))

(assert (=> bs!1527327 (= lambda!336268 lambda!336254)))

(declare-fun bs!1527328 () Bool)

(assert (= bs!1527328 (and d!1930977 d!1930743)))

(assert (=> bs!1527328 (= lambda!336268 lambda!336228)))

(declare-fun bs!1527329 () Bool)

(assert (= bs!1527329 (and d!1930977 d!1930919)))

(assert (=> bs!1527329 (= lambda!336268 lambda!336256)))

(declare-fun bs!1527330 () Bool)

(assert (= bs!1527330 (and d!1930977 d!1930589)))

(assert (=> bs!1527330 (= lambda!336268 lambda!336210)))

(declare-fun bs!1527331 () Bool)

(assert (= bs!1527331 (and d!1930977 d!1930885)))

(assert (=> bs!1527331 (= lambda!336268 lambda!336253)))

(declare-fun bs!1527332 () Bool)

(assert (= bs!1527332 (and d!1930977 d!1930797)))

(assert (=> bs!1527332 (= lambda!336268 lambda!336236)))

(declare-fun bs!1527333 () Bool)

(assert (= bs!1527333 (and d!1930977 d!1930741)))

(assert (=> bs!1527333 (= lambda!336268 lambda!336227)))

(declare-fun bs!1527334 () Bool)

(assert (= bs!1527334 (and d!1930977 d!1930859)))

(assert (=> bs!1527334 (= lambda!336268 lambda!336249)))

(assert (=> d!1930977 (= (nullableZipper!1884 z!1189) (exists!2448 z!1189 lambda!336268))))

(declare-fun bs!1527335 () Bool)

(assert (= bs!1527335 d!1930977))

(declare-fun m!6999828 () Bool)

(assert (=> bs!1527335 m!6999828))

(assert (=> b!6160417 d!1930977))

(assert (=> b!6160377 d!1930627))

(assert (=> b!6160377 d!1930629))

(declare-fun bs!1527336 () Bool)

(declare-fun b!6161737 () Bool)

(assert (= bs!1527336 (and b!6161737 b!6160346)))

(declare-fun lambda!336269 () Int)

(assert (=> bs!1527336 (not (= lambda!336269 lambda!336160))))

(declare-fun bs!1527337 () Bool)

(assert (= bs!1527337 (and b!6161737 d!1930385)))

(assert (=> bs!1527337 (not (= lambda!336269 lambda!336178))))

(declare-fun bs!1527338 () Bool)

(assert (= bs!1527338 (and b!6161737 b!6159849)))

(assert (=> bs!1527338 (not (= lambda!336269 lambda!336124))))

(declare-fun bs!1527339 () Bool)

(assert (= bs!1527339 (and b!6161737 b!6160339)))

(assert (=> bs!1527339 (= (and (= (reg!16432 (regOne!32719 r!7292)) (reg!16432 r!7292)) (= (regOne!32719 r!7292) r!7292)) (= lambda!336269 lambda!336159))))

(assert (=> bs!1527337 (not (= lambda!336269 lambda!336179))))

(assert (=> bs!1527338 (not (= lambda!336269 lambda!336123))))

(declare-fun bs!1527340 () Bool)

(assert (= bs!1527340 (and b!6161737 d!1930963)))

(assert (=> bs!1527340 (not (= lambda!336269 lambda!336263))))

(declare-fun bs!1527341 () Bool)

(assert (= bs!1527341 (and b!6161737 b!6161268)))

(assert (=> bs!1527341 (= (and (= (reg!16432 (regOne!32719 r!7292)) (reg!16432 (regTwo!32719 r!7292))) (= (regOne!32719 r!7292) (regTwo!32719 r!7292))) (= lambda!336269 lambda!336234))))

(assert (=> bs!1527340 (not (= lambda!336269 lambda!336264))))

(declare-fun bs!1527342 () Bool)

(assert (= bs!1527342 (and b!6161737 b!6161275)))

(assert (=> bs!1527342 (not (= lambda!336269 lambda!336235))))

(declare-fun bs!1527343 () Bool)

(assert (= bs!1527343 (and b!6161737 d!1930971)))

(assert (=> bs!1527343 (not (= lambda!336269 lambda!336267))))

(declare-fun bs!1527344 () Bool)

(assert (= bs!1527344 (and b!6161737 d!1930381)))

(assert (=> bs!1527344 (not (= lambda!336269 lambda!336173))))

(assert (=> b!6161737 true))

(assert (=> b!6161737 true))

(declare-fun bs!1527345 () Bool)

(declare-fun b!6161744 () Bool)

(assert (= bs!1527345 (and b!6161744 b!6160346)))

(declare-fun lambda!336270 () Int)

(assert (=> bs!1527345 (= (and (= (regOne!32718 (regOne!32719 r!7292)) (regOne!32718 r!7292)) (= (regTwo!32718 (regOne!32719 r!7292)) (regTwo!32718 r!7292))) (= lambda!336270 lambda!336160))))

(declare-fun bs!1527346 () Bool)

(assert (= bs!1527346 (and b!6161744 d!1930385)))

(assert (=> bs!1527346 (not (= lambda!336270 lambda!336178))))

(declare-fun bs!1527347 () Bool)

(assert (= bs!1527347 (and b!6161744 b!6161737)))

(assert (=> bs!1527347 (not (= lambda!336270 lambda!336269))))

(declare-fun bs!1527348 () Bool)

(assert (= bs!1527348 (and b!6161744 b!6159849)))

(assert (=> bs!1527348 (= (and (= (regOne!32718 (regOne!32719 r!7292)) (regOne!32718 r!7292)) (= (regTwo!32718 (regOne!32719 r!7292)) (regTwo!32718 r!7292))) (= lambda!336270 lambda!336124))))

(declare-fun bs!1527349 () Bool)

(assert (= bs!1527349 (and b!6161744 b!6160339)))

(assert (=> bs!1527349 (not (= lambda!336270 lambda!336159))))

(assert (=> bs!1527346 (= (and (= (regOne!32718 (regOne!32719 r!7292)) (regOne!32718 r!7292)) (= (regTwo!32718 (regOne!32719 r!7292)) (regTwo!32718 r!7292))) (= lambda!336270 lambda!336179))))

(assert (=> bs!1527348 (not (= lambda!336270 lambda!336123))))

(declare-fun bs!1527350 () Bool)

(assert (= bs!1527350 (and b!6161744 d!1930963)))

(assert (=> bs!1527350 (not (= lambda!336270 lambda!336263))))

(declare-fun bs!1527351 () Bool)

(assert (= bs!1527351 (and b!6161744 b!6161268)))

(assert (=> bs!1527351 (not (= lambda!336270 lambda!336234))))

(assert (=> bs!1527350 (= (and (= (regOne!32718 (regOne!32719 r!7292)) (regOne!32718 r!7292)) (= (regTwo!32718 (regOne!32719 r!7292)) (regTwo!32718 r!7292))) (= lambda!336270 lambda!336264))))

(declare-fun bs!1527352 () Bool)

(assert (= bs!1527352 (and b!6161744 b!6161275)))

(assert (=> bs!1527352 (= (and (= (regOne!32718 (regOne!32719 r!7292)) (regOne!32718 (regTwo!32719 r!7292))) (= (regTwo!32718 (regOne!32719 r!7292)) (regTwo!32718 (regTwo!32719 r!7292)))) (= lambda!336270 lambda!336235))))

(declare-fun bs!1527353 () Bool)

(assert (= bs!1527353 (and b!6161744 d!1930971)))

(assert (=> bs!1527353 (not (= lambda!336270 lambda!336267))))

(declare-fun bs!1527354 () Bool)

(assert (= bs!1527354 (and b!6161744 d!1930381)))

(assert (=> bs!1527354 (not (= lambda!336270 lambda!336173))))

(assert (=> b!6161744 true))

(assert (=> b!6161744 true))

(declare-fun b!6161735 () Bool)

(declare-fun e!3754108 () Bool)

(declare-fun e!3754114 () Bool)

(assert (=> b!6161735 (= e!3754108 e!3754114)))

(declare-fun c!1109782 () Bool)

(assert (=> b!6161735 (= c!1109782 ((_ is Star!16103) (regOne!32719 r!7292)))))

(declare-fun b!6161736 () Bool)

(declare-fun e!3754111 () Bool)

(assert (=> b!6161736 (= e!3754111 (= s!2326 (Cons!64486 (c!1109260 (regOne!32719 r!7292)) Nil!64486)))))

(declare-fun b!6161738 () Bool)

(declare-fun e!3754112 () Bool)

(declare-fun e!3754109 () Bool)

(assert (=> b!6161738 (= e!3754112 e!3754109)))

(declare-fun res!2551565 () Bool)

(assert (=> b!6161738 (= res!2551565 (not ((_ is EmptyLang!16103) (regOne!32719 r!7292))))))

(assert (=> b!6161738 (=> (not res!2551565) (not e!3754109))))

(declare-fun bm!513246 () Bool)

(declare-fun call!513252 () Bool)

(assert (=> bm!513246 (= call!513252 (isEmpty!36455 s!2326))))

(declare-fun b!6161739 () Bool)

(declare-fun e!3754113 () Bool)

(assert (=> b!6161739 (= e!3754108 e!3754113)))

(declare-fun res!2551564 () Bool)

(assert (=> b!6161739 (= res!2551564 (matchRSpec!3204 (regOne!32719 (regOne!32719 r!7292)) s!2326))))

(assert (=> b!6161739 (=> res!2551564 e!3754113)))

(declare-fun b!6161740 () Bool)

(declare-fun c!1109784 () Bool)

(assert (=> b!6161740 (= c!1109784 ((_ is ElementMatch!16103) (regOne!32719 r!7292)))))

(assert (=> b!6161740 (= e!3754109 e!3754111)))

(declare-fun b!6161741 () Bool)

(assert (=> b!6161741 (= e!3754113 (matchRSpec!3204 (regTwo!32719 (regOne!32719 r!7292)) s!2326))))

(declare-fun call!513251 () Bool)

(declare-fun bm!513247 () Bool)

(assert (=> bm!513247 (= call!513251 (Exists!3173 (ite c!1109782 lambda!336269 lambda!336270)))))

(declare-fun b!6161742 () Bool)

(declare-fun c!1109783 () Bool)

(assert (=> b!6161742 (= c!1109783 ((_ is Union!16103) (regOne!32719 r!7292)))))

(assert (=> b!6161742 (= e!3754111 e!3754108)))

(declare-fun b!6161743 () Bool)

(declare-fun res!2551563 () Bool)

(declare-fun e!3754110 () Bool)

(assert (=> b!6161743 (=> res!2551563 e!3754110)))

(assert (=> b!6161743 (= res!2551563 call!513252)))

(assert (=> b!6161743 (= e!3754114 e!3754110)))

(assert (=> b!6161737 (= e!3754110 call!513251)))

(declare-fun d!1930979 () Bool)

(declare-fun c!1109785 () Bool)

(assert (=> d!1930979 (= c!1109785 ((_ is EmptyExpr!16103) (regOne!32719 r!7292)))))

(assert (=> d!1930979 (= (matchRSpec!3204 (regOne!32719 r!7292) s!2326) e!3754112)))

(assert (=> b!6161744 (= e!3754114 call!513251)))

(declare-fun b!6161745 () Bool)

(assert (=> b!6161745 (= e!3754112 call!513252)))

(assert (= (and d!1930979 c!1109785) b!6161745))

(assert (= (and d!1930979 (not c!1109785)) b!6161738))

(assert (= (and b!6161738 res!2551565) b!6161740))

(assert (= (and b!6161740 c!1109784) b!6161736))

(assert (= (and b!6161740 (not c!1109784)) b!6161742))

(assert (= (and b!6161742 c!1109783) b!6161739))

(assert (= (and b!6161742 (not c!1109783)) b!6161735))

(assert (= (and b!6161739 (not res!2551564)) b!6161741))

(assert (= (and b!6161735 c!1109782) b!6161743))

(assert (= (and b!6161735 (not c!1109782)) b!6161744))

(assert (= (and b!6161743 (not res!2551563)) b!6161737))

(assert (= (or b!6161737 b!6161744) bm!513247))

(assert (= (or b!6161745 b!6161743) bm!513246))

(assert (=> bm!513246 m!6998440))

(declare-fun m!6999830 () Bool)

(assert (=> b!6161739 m!6999830))

(declare-fun m!6999832 () Bool)

(assert (=> b!6161741 m!6999832))

(declare-fun m!6999834 () Bool)

(assert (=> bm!513247 m!6999834))

(assert (=> b!6160341 d!1930979))

(declare-fun bm!513248 () Bool)

(declare-fun call!513258 () List!64608)

(declare-fun call!513255 () List!64608)

(assert (=> bm!513248 (= call!513258 call!513255)))

(declare-fun bm!513249 () Bool)

(declare-fun call!513254 () (InoxSet Context!10974))

(declare-fun call!513257 () (InoxSet Context!10974))

(assert (=> bm!513249 (= call!513254 call!513257)))

(declare-fun c!1109788 () Bool)

(declare-fun call!513256 () (InoxSet Context!10974))

(declare-fun bm!513250 () Bool)

(assert (=> bm!513250 (= call!513256 (derivationStepZipperDown!1351 (ite c!1109788 (regOne!32719 (h!70932 (exprs!5987 lt!2335742))) (regOne!32718 (h!70932 (exprs!5987 lt!2335742)))) (ite c!1109788 (Context!10975 (t!378104 (exprs!5987 lt!2335742))) (Context!10975 call!513255)) (h!70934 s!2326)))))

(declare-fun b!6161747 () Bool)

(declare-fun e!3754116 () (InoxSet Context!10974))

(assert (=> b!6161747 (= e!3754116 call!513254)))

(declare-fun bm!513251 () Bool)

(declare-fun call!513253 () (InoxSet Context!10974))

(assert (=> bm!513251 (= call!513257 call!513253)))

(declare-fun b!6161748 () Bool)

(declare-fun c!1109790 () Bool)

(assert (=> b!6161748 (= c!1109790 ((_ is Star!16103) (h!70932 (exprs!5987 lt!2335742))))))

(declare-fun e!3754115 () (InoxSet Context!10974))

(assert (=> b!6161748 (= e!3754116 e!3754115)))

(declare-fun b!6161749 () Bool)

(declare-fun e!3754120 () (InoxSet Context!10974))

(declare-fun e!3754119 () (InoxSet Context!10974))

(assert (=> b!6161749 (= e!3754120 e!3754119)))

(assert (=> b!6161749 (= c!1109788 ((_ is Union!16103) (h!70932 (exprs!5987 lt!2335742))))))

(declare-fun b!6161750 () Bool)

(declare-fun e!3754118 () (InoxSet Context!10974))

(assert (=> b!6161750 (= e!3754118 e!3754116)))

(declare-fun c!1109786 () Bool)

(assert (=> b!6161750 (= c!1109786 ((_ is Concat!24948) (h!70932 (exprs!5987 lt!2335742))))))

(declare-fun b!6161751 () Bool)

(assert (=> b!6161751 (= e!3754115 call!513254)))

(declare-fun bm!513252 () Bool)

(declare-fun c!1109789 () Bool)

(assert (=> bm!513252 (= call!513255 ($colon$colon!1980 (exprs!5987 (Context!10975 (t!378104 (exprs!5987 lt!2335742)))) (ite (or c!1109789 c!1109786) (regTwo!32718 (h!70932 (exprs!5987 lt!2335742))) (h!70932 (exprs!5987 lt!2335742)))))))

(declare-fun b!6161752 () Bool)

(declare-fun e!3754117 () Bool)

(assert (=> b!6161752 (= c!1109789 e!3754117)))

(declare-fun res!2551566 () Bool)

(assert (=> b!6161752 (=> (not res!2551566) (not e!3754117))))

(assert (=> b!6161752 (= res!2551566 ((_ is Concat!24948) (h!70932 (exprs!5987 lt!2335742))))))

(assert (=> b!6161752 (= e!3754119 e!3754118)))

(declare-fun b!6161753 () Bool)

(assert (=> b!6161753 (= e!3754119 ((_ map or) call!513256 call!513253))))

(declare-fun b!6161746 () Bool)

(assert (=> b!6161746 (= e!3754120 (store ((as const (Array Context!10974 Bool)) false) (Context!10975 (t!378104 (exprs!5987 lt!2335742))) true))))

(declare-fun d!1930981 () Bool)

(declare-fun c!1109787 () Bool)

(assert (=> d!1930981 (= c!1109787 (and ((_ is ElementMatch!16103) (h!70932 (exprs!5987 lt!2335742))) (= (c!1109260 (h!70932 (exprs!5987 lt!2335742))) (h!70934 s!2326))))))

(assert (=> d!1930981 (= (derivationStepZipperDown!1351 (h!70932 (exprs!5987 lt!2335742)) (Context!10975 (t!378104 (exprs!5987 lt!2335742))) (h!70934 s!2326)) e!3754120)))

(declare-fun b!6161754 () Bool)

(assert (=> b!6161754 (= e!3754118 ((_ map or) call!513256 call!513257))))

(declare-fun b!6161755 () Bool)

(assert (=> b!6161755 (= e!3754117 (nullable!6096 (regOne!32718 (h!70932 (exprs!5987 lt!2335742)))))))

(declare-fun b!6161756 () Bool)

(assert (=> b!6161756 (= e!3754115 ((as const (Array Context!10974 Bool)) false))))

(declare-fun bm!513253 () Bool)

(assert (=> bm!513253 (= call!513253 (derivationStepZipperDown!1351 (ite c!1109788 (regTwo!32719 (h!70932 (exprs!5987 lt!2335742))) (ite c!1109789 (regTwo!32718 (h!70932 (exprs!5987 lt!2335742))) (ite c!1109786 (regOne!32718 (h!70932 (exprs!5987 lt!2335742))) (reg!16432 (h!70932 (exprs!5987 lt!2335742)))))) (ite (or c!1109788 c!1109789) (Context!10975 (t!378104 (exprs!5987 lt!2335742))) (Context!10975 call!513258)) (h!70934 s!2326)))))

(assert (= (and d!1930981 c!1109787) b!6161746))

(assert (= (and d!1930981 (not c!1109787)) b!6161749))

(assert (= (and b!6161749 c!1109788) b!6161753))

(assert (= (and b!6161749 (not c!1109788)) b!6161752))

(assert (= (and b!6161752 res!2551566) b!6161755))

(assert (= (and b!6161752 c!1109789) b!6161754))

(assert (= (and b!6161752 (not c!1109789)) b!6161750))

(assert (= (and b!6161750 c!1109786) b!6161747))

(assert (= (and b!6161750 (not c!1109786)) b!6161748))

(assert (= (and b!6161748 c!1109790) b!6161751))

(assert (= (and b!6161748 (not c!1109790)) b!6161756))

(assert (= (or b!6161747 b!6161751) bm!513248))

(assert (= (or b!6161747 b!6161751) bm!513249))

(assert (= (or b!6161754 bm!513248) bm!513252))

(assert (= (or b!6161754 bm!513249) bm!513251))

(assert (= (or b!6161753 bm!513251) bm!513253))

(assert (= (or b!6161753 b!6161754) bm!513250))

(declare-fun m!6999836 () Bool)

(assert (=> bm!513252 m!6999836))

(declare-fun m!6999838 () Bool)

(assert (=> bm!513253 m!6999838))

(declare-fun m!6999840 () Bool)

(assert (=> bm!513250 m!6999840))

(declare-fun m!6999842 () Bool)

(assert (=> b!6161746 m!6999842))

(declare-fun m!6999844 () Bool)

(assert (=> b!6161755 m!6999844))

(assert (=> bm!512990 d!1930981))

(declare-fun bm!513254 () Bool)

(declare-fun call!513259 () Bool)

(assert (=> bm!513254 (= call!513259 (isEmpty!36455 s!2326))))

(declare-fun b!6161757 () Bool)

(declare-fun e!3754122 () Bool)

(declare-fun e!3754124 () Bool)

(assert (=> b!6161757 (= e!3754122 e!3754124)))

(declare-fun res!2551572 () Bool)

(assert (=> b!6161757 (=> (not res!2551572) (not e!3754124))))

(declare-fun lt!2335925 () Bool)

(assert (=> b!6161757 (= res!2551572 (not lt!2335925))))

(declare-fun b!6161758 () Bool)

(declare-fun res!2551574 () Bool)

(declare-fun e!3754123 () Bool)

(assert (=> b!6161758 (=> res!2551574 e!3754123)))

(assert (=> b!6161758 (= res!2551574 (not (isEmpty!36455 (tail!11811 s!2326))))))

(declare-fun b!6161760 () Bool)

(declare-fun e!3754121 () Bool)

(assert (=> b!6161760 (= e!3754121 (not lt!2335925))))

(declare-fun b!6161761 () Bool)

(declare-fun res!2551567 () Bool)

(declare-fun e!3754127 () Bool)

(assert (=> b!6161761 (=> (not res!2551567) (not e!3754127))))

(assert (=> b!6161761 (= res!2551567 (isEmpty!36455 (tail!11811 s!2326)))))

(declare-fun b!6161762 () Bool)

(declare-fun e!3754125 () Bool)

(assert (=> b!6161762 (= e!3754125 (nullable!6096 (regTwo!32718 r!7292)))))

(declare-fun b!6161763 () Bool)

(declare-fun res!2551570 () Bool)

(assert (=> b!6161763 (=> res!2551570 e!3754122)))

(assert (=> b!6161763 (= res!2551570 e!3754127)))

(declare-fun res!2551573 () Bool)

(assert (=> b!6161763 (=> (not res!2551573) (not e!3754127))))

(assert (=> b!6161763 (= res!2551573 lt!2335925)))

(declare-fun b!6161764 () Bool)

(declare-fun res!2551568 () Bool)

(assert (=> b!6161764 (=> (not res!2551568) (not e!3754127))))

(assert (=> b!6161764 (= res!2551568 (not call!513259))))

(declare-fun b!6161765 () Bool)

(assert (=> b!6161765 (= e!3754123 (not (= (head!12726 s!2326) (c!1109260 (regTwo!32718 r!7292)))))))

(declare-fun b!6161766 () Bool)

(assert (=> b!6161766 (= e!3754124 e!3754123)))

(declare-fun res!2551571 () Bool)

(assert (=> b!6161766 (=> res!2551571 e!3754123)))

(assert (=> b!6161766 (= res!2551571 call!513259)))

(declare-fun b!6161767 () Bool)

(declare-fun res!2551569 () Bool)

(assert (=> b!6161767 (=> res!2551569 e!3754122)))

(assert (=> b!6161767 (= res!2551569 (not ((_ is ElementMatch!16103) (regTwo!32718 r!7292))))))

(assert (=> b!6161767 (= e!3754121 e!3754122)))

(declare-fun b!6161768 () Bool)

(declare-fun e!3754126 () Bool)

(assert (=> b!6161768 (= e!3754126 (= lt!2335925 call!513259))))

(declare-fun d!1930983 () Bool)

(assert (=> d!1930983 e!3754126))

(declare-fun c!1109793 () Bool)

(assert (=> d!1930983 (= c!1109793 ((_ is EmptyExpr!16103) (regTwo!32718 r!7292)))))

(assert (=> d!1930983 (= lt!2335925 e!3754125)))

(declare-fun c!1109791 () Bool)

(assert (=> d!1930983 (= c!1109791 (isEmpty!36455 s!2326))))

(assert (=> d!1930983 (validRegex!7839 (regTwo!32718 r!7292))))

(assert (=> d!1930983 (= (matchR!8286 (regTwo!32718 r!7292) s!2326) lt!2335925)))

(declare-fun b!6161759 () Bool)

(assert (=> b!6161759 (= e!3754126 e!3754121)))

(declare-fun c!1109792 () Bool)

(assert (=> b!6161759 (= c!1109792 ((_ is EmptyLang!16103) (regTwo!32718 r!7292)))))

(declare-fun b!6161769 () Bool)

(assert (=> b!6161769 (= e!3754125 (matchR!8286 (derivativeStep!4823 (regTwo!32718 r!7292) (head!12726 s!2326)) (tail!11811 s!2326)))))

(declare-fun b!6161770 () Bool)

(assert (=> b!6161770 (= e!3754127 (= (head!12726 s!2326) (c!1109260 (regTwo!32718 r!7292))))))

(assert (= (and d!1930983 c!1109791) b!6161762))

(assert (= (and d!1930983 (not c!1109791)) b!6161769))

(assert (= (and d!1930983 c!1109793) b!6161768))

(assert (= (and d!1930983 (not c!1109793)) b!6161759))

(assert (= (and b!6161759 c!1109792) b!6161760))

(assert (= (and b!6161759 (not c!1109792)) b!6161767))

(assert (= (and b!6161767 (not res!2551569)) b!6161763))

(assert (= (and b!6161763 res!2551573) b!6161764))

(assert (= (and b!6161764 res!2551568) b!6161761))

(assert (= (and b!6161761 res!2551567) b!6161770))

(assert (= (and b!6161763 (not res!2551570)) b!6161757))

(assert (= (and b!6161757 res!2551572) b!6161766))

(assert (= (and b!6161766 (not res!2551571)) b!6161758))

(assert (= (and b!6161758 (not res!2551574)) b!6161765))

(assert (= (or b!6161768 b!6161764 b!6161766) bm!513254))

(assert (=> b!6161761 m!6998448))

(assert (=> b!6161761 m!6998448))

(assert (=> b!6161761 m!6998450))

(assert (=> b!6161770 m!6998452))

(assert (=> b!6161769 m!6998452))

(assert (=> b!6161769 m!6998452))

(declare-fun m!6999846 () Bool)

(assert (=> b!6161769 m!6999846))

(assert (=> b!6161769 m!6998448))

(assert (=> b!6161769 m!6999846))

(assert (=> b!6161769 m!6998448))

(declare-fun m!6999848 () Bool)

(assert (=> b!6161769 m!6999848))

(assert (=> b!6161765 m!6998452))

(assert (=> b!6161758 m!6998448))

(assert (=> b!6161758 m!6998448))

(assert (=> b!6161758 m!6998450))

(assert (=> d!1930983 m!6998440))

(assert (=> d!1930983 m!6999306))

(assert (=> b!6161762 m!6999308))

(assert (=> bm!513254 m!6998440))

(assert (=> b!6160558 d!1930983))

(declare-fun bm!513255 () Bool)

(declare-fun call!513265 () List!64608)

(declare-fun call!513262 () List!64608)

(assert (=> bm!513255 (= call!513265 call!513262)))

(declare-fun bm!513256 () Bool)

(declare-fun call!513261 () (InoxSet Context!10974))

(declare-fun call!513264 () (InoxSet Context!10974))

(assert (=> bm!513256 (= call!513261 call!513264)))

(declare-fun call!513263 () (InoxSet Context!10974))

(declare-fun bm!513257 () Bool)

(declare-fun c!1109796 () Bool)

(assert (=> bm!513257 (= call!513263 (derivationStepZipperDown!1351 (ite c!1109796 (regOne!32719 (ite c!1109474 (regOne!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))))) (regOne!32718 (ite c!1109474 (regOne!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343))))))) (ite c!1109796 (ite c!1109474 lt!2335757 (Context!10975 call!513033)) (Context!10975 call!513262)) (h!70934 s!2326)))))

(declare-fun b!6161772 () Bool)

(declare-fun e!3754129 () (InoxSet Context!10974))

(assert (=> b!6161772 (= e!3754129 call!513261)))

(declare-fun bm!513258 () Bool)

(declare-fun call!513260 () (InoxSet Context!10974))

(assert (=> bm!513258 (= call!513264 call!513260)))

(declare-fun b!6161773 () Bool)

(declare-fun c!1109798 () Bool)

(assert (=> b!6161773 (= c!1109798 ((_ is Star!16103) (ite c!1109474 (regOne!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))))))))

(declare-fun e!3754128 () (InoxSet Context!10974))

(assert (=> b!6161773 (= e!3754129 e!3754128)))

(declare-fun b!6161774 () Bool)

(declare-fun e!3754133 () (InoxSet Context!10974))

(declare-fun e!3754132 () (InoxSet Context!10974))

(assert (=> b!6161774 (= e!3754133 e!3754132)))

(assert (=> b!6161774 (= c!1109796 ((_ is Union!16103) (ite c!1109474 (regOne!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))))))))

(declare-fun b!6161775 () Bool)

(declare-fun e!3754131 () (InoxSet Context!10974))

(assert (=> b!6161775 (= e!3754131 e!3754129)))

(declare-fun c!1109794 () Bool)

(assert (=> b!6161775 (= c!1109794 ((_ is Concat!24948) (ite c!1109474 (regOne!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))))))))

(declare-fun b!6161776 () Bool)

(assert (=> b!6161776 (= e!3754128 call!513261)))

(declare-fun bm!513259 () Bool)

(declare-fun c!1109797 () Bool)

(assert (=> bm!513259 (= call!513262 ($colon$colon!1980 (exprs!5987 (ite c!1109474 lt!2335757 (Context!10975 call!513033))) (ite (or c!1109797 c!1109794) (regTwo!32718 (ite c!1109474 (regOne!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))))) (ite c!1109474 (regOne!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343))))))))))

(declare-fun b!6161777 () Bool)

(declare-fun e!3754130 () Bool)

(assert (=> b!6161777 (= c!1109797 e!3754130)))

(declare-fun res!2551575 () Bool)

(assert (=> b!6161777 (=> (not res!2551575) (not e!3754130))))

(assert (=> b!6161777 (= res!2551575 ((_ is Concat!24948) (ite c!1109474 (regOne!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))))))))

(assert (=> b!6161777 (= e!3754132 e!3754131)))

(declare-fun b!6161778 () Bool)

(assert (=> b!6161778 (= e!3754132 ((_ map or) call!513263 call!513260))))

(declare-fun b!6161771 () Bool)

(assert (=> b!6161771 (= e!3754133 (store ((as const (Array Context!10974 Bool)) false) (ite c!1109474 lt!2335757 (Context!10975 call!513033)) true))))

(declare-fun c!1109795 () Bool)

(declare-fun d!1930985 () Bool)

(assert (=> d!1930985 (= c!1109795 (and ((_ is ElementMatch!16103) (ite c!1109474 (regOne!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))))) (= (c!1109260 (ite c!1109474 (regOne!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))))) (h!70934 s!2326))))))

(assert (=> d!1930985 (= (derivationStepZipperDown!1351 (ite c!1109474 (regOne!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343))))) (ite c!1109474 lt!2335757 (Context!10975 call!513033)) (h!70934 s!2326)) e!3754133)))

(declare-fun b!6161779 () Bool)

(assert (=> b!6161779 (= e!3754131 ((_ map or) call!513263 call!513264))))

(declare-fun b!6161780 () Bool)

(assert (=> b!6161780 (= e!3754130 (nullable!6096 (regOne!32718 (ite c!1109474 (regOne!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343))))))))))

(declare-fun b!6161781 () Bool)

(assert (=> b!6161781 (= e!3754128 ((as const (Array Context!10974 Bool)) false))))

(declare-fun bm!513260 () Bool)

(assert (=> bm!513260 (= call!513260 (derivationStepZipperDown!1351 (ite c!1109796 (regTwo!32719 (ite c!1109474 (regOne!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))))) (ite c!1109797 (regTwo!32718 (ite c!1109474 (regOne!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))))) (ite c!1109794 (regOne!32718 (ite c!1109474 (regOne!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))))) (reg!16432 (ite c!1109474 (regOne!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343))))))))) (ite (or c!1109796 c!1109797) (ite c!1109474 lt!2335757 (Context!10975 call!513033)) (Context!10975 call!513265)) (h!70934 s!2326)))))

(assert (= (and d!1930985 c!1109795) b!6161771))

(assert (= (and d!1930985 (not c!1109795)) b!6161774))

(assert (= (and b!6161774 c!1109796) b!6161778))

(assert (= (and b!6161774 (not c!1109796)) b!6161777))

(assert (= (and b!6161777 res!2551575) b!6161780))

(assert (= (and b!6161777 c!1109797) b!6161779))

(assert (= (and b!6161777 (not c!1109797)) b!6161775))

(assert (= (and b!6161775 c!1109794) b!6161772))

(assert (= (and b!6161775 (not c!1109794)) b!6161773))

(assert (= (and b!6161773 c!1109798) b!6161776))

(assert (= (and b!6161773 (not c!1109798)) b!6161781))

(assert (= (or b!6161772 b!6161776) bm!513255))

(assert (= (or b!6161772 b!6161776) bm!513256))

(assert (= (or b!6161779 bm!513255) bm!513259))

(assert (= (or b!6161779 bm!513256) bm!513258))

(assert (= (or b!6161778 bm!513258) bm!513260))

(assert (= (or b!6161778 b!6161779) bm!513257))

(declare-fun m!6999850 () Bool)

(assert (=> bm!513259 m!6999850))

(declare-fun m!6999852 () Bool)

(assert (=> bm!513260 m!6999852))

(declare-fun m!6999854 () Bool)

(assert (=> bm!513257 m!6999854))

(declare-fun m!6999856 () Bool)

(assert (=> b!6161771 m!6999856))

(declare-fun m!6999858 () Bool)

(assert (=> b!6161780 m!6999858))

(assert (=> bm!513028 d!1930985))

(declare-fun d!1930987 () Bool)

(assert (=> d!1930987 (= (isUnion!960 lt!2335839) ((_ is Union!16103) lt!2335839))))

(assert (=> b!6160488 d!1930987))

(declare-fun d!1930989 () Bool)

(assert (=> d!1930989 true))

(assert (=> d!1930989 true))

(declare-fun res!2551576 () Bool)

(assert (=> d!1930989 (= (choose!45805 lambda!336123) res!2551576)))

(assert (=> d!1930377 d!1930989))

(declare-fun d!1930991 () Bool)

(declare-fun lt!2335926 () Int)

(assert (=> d!1930991 (>= lt!2335926 0)))

(declare-fun e!3754134 () Int)

(assert (=> d!1930991 (= lt!2335926 e!3754134)))

(declare-fun c!1109799 () Bool)

(assert (=> d!1930991 (= c!1109799 ((_ is Cons!64484) (exprs!5987 (h!70933 zl!343))))))

(assert (=> d!1930991 (= (contextDepthTotal!263 (h!70933 zl!343)) lt!2335926)))

(declare-fun b!6161782 () Bool)

(assert (=> b!6161782 (= e!3754134 (+ (regexDepthTotal!127 (h!70932 (exprs!5987 (h!70933 zl!343)))) (contextDepthTotal!263 (Context!10975 (t!378104 (exprs!5987 (h!70933 zl!343)))))))))

(declare-fun b!6161783 () Bool)

(assert (=> b!6161783 (= e!3754134 1)))

(assert (= (and d!1930991 c!1109799) b!6161782))

(assert (= (and d!1930991 (not c!1109799)) b!6161783))

(declare-fun m!6999860 () Bool)

(assert (=> b!6161782 m!6999860))

(declare-fun m!6999862 () Bool)

(assert (=> b!6161782 m!6999862))

(assert (=> b!6160580 d!1930991))

(declare-fun d!1930993 () Bool)

(declare-fun lt!2335927 () Int)

(assert (=> d!1930993 (>= lt!2335927 0)))

(declare-fun e!3754135 () Int)

(assert (=> d!1930993 (= lt!2335927 e!3754135)))

(declare-fun c!1109800 () Bool)

(assert (=> d!1930993 (= c!1109800 ((_ is Cons!64485) (t!378105 zl!343)))))

(assert (=> d!1930993 (= (zipperDepthTotal!286 (t!378105 zl!343)) lt!2335927)))

(declare-fun b!6161784 () Bool)

(assert (=> b!6161784 (= e!3754135 (+ (contextDepthTotal!263 (h!70933 (t!378105 zl!343))) (zipperDepthTotal!286 (t!378105 (t!378105 zl!343)))))))

(declare-fun b!6161785 () Bool)

(assert (=> b!6161785 (= e!3754135 0)))

(assert (= (and d!1930993 c!1109800) b!6161784))

(assert (= (and d!1930993 (not c!1109800)) b!6161785))

(declare-fun m!6999864 () Bool)

(assert (=> b!6161784 m!6999864))

(declare-fun m!6999866 () Bool)

(assert (=> b!6161784 m!6999866))

(assert (=> b!6160580 d!1930993))

(declare-fun bs!1527355 () Bool)

(declare-fun d!1930995 () Bool)

(assert (= bs!1527355 (and d!1930995 d!1930713)))

(declare-fun lambda!336271 () Int)

(assert (=> bs!1527355 (= lambda!336271 lambda!336224)))

(declare-fun bs!1527356 () Bool)

(assert (= bs!1527356 (and d!1930995 d!1930641)))

(assert (=> bs!1527356 (= lambda!336271 lambda!336212)))

(declare-fun bs!1527357 () Bool)

(assert (= bs!1527357 (and d!1930995 d!1930411)))

(assert (=> bs!1527357 (= lambda!336271 lambda!336183)))

(declare-fun bs!1527358 () Bool)

(assert (= bs!1527358 (and d!1930995 d!1930355)))

(assert (=> bs!1527358 (= lambda!336271 lambda!336166)))

(declare-fun bs!1527359 () Bool)

(assert (= bs!1527359 (and d!1930995 d!1930357)))

(assert (=> bs!1527359 (= lambda!336271 lambda!336169)))

(declare-fun bs!1527360 () Bool)

(assert (= bs!1527360 (and d!1930995 d!1930409)))

(assert (=> bs!1527360 (= lambda!336271 lambda!336182)))

(declare-fun bs!1527361 () Bool)

(assert (= bs!1527361 (and d!1930995 d!1930941)))

(assert (=> bs!1527361 (= lambda!336271 lambda!336257)))

(declare-fun bs!1527362 () Bool)

(assert (= bs!1527362 (and d!1930995 d!1930825)))

(assert (=> bs!1527362 (= lambda!336271 lambda!336239)))

(declare-fun bs!1527363 () Bool)

(assert (= bs!1527363 (and d!1930995 d!1930361)))

(assert (=> bs!1527363 (= lambda!336271 lambda!336170)))

(declare-fun bs!1527364 () Bool)

(assert (= bs!1527364 (and d!1930995 d!1930353)))

(assert (=> bs!1527364 (= lambda!336271 lambda!336163)))

(declare-fun b!6161786 () Bool)

(declare-fun e!3754139 () Bool)

(declare-fun lt!2335928 () Regex!16103)

(assert (=> b!6161786 (= e!3754139 (= lt!2335928 (head!12728 (t!378104 (exprs!5987 (h!70933 zl!343))))))))

(declare-fun b!6161787 () Bool)

(declare-fun e!3754141 () Bool)

(assert (=> b!6161787 (= e!3754141 (isEmpty!36453 (t!378104 (t!378104 (exprs!5987 (h!70933 zl!343))))))))

(declare-fun b!6161788 () Bool)

(declare-fun e!3754140 () Bool)

(assert (=> b!6161788 (= e!3754140 e!3754139)))

(declare-fun c!1109804 () Bool)

(assert (=> b!6161788 (= c!1109804 (isEmpty!36453 (tail!11813 (t!378104 (exprs!5987 (h!70933 zl!343))))))))

(declare-fun b!6161789 () Bool)

(declare-fun e!3754136 () Bool)

(assert (=> b!6161789 (= e!3754136 e!3754140)))

(declare-fun c!1109802 () Bool)

(assert (=> b!6161789 (= c!1109802 (isEmpty!36453 (t!378104 (exprs!5987 (h!70933 zl!343)))))))

(declare-fun b!6161790 () Bool)

(declare-fun e!3754138 () Regex!16103)

(assert (=> b!6161790 (= e!3754138 EmptyExpr!16103)))

(assert (=> d!1930995 e!3754136))

(declare-fun res!2551577 () Bool)

(assert (=> d!1930995 (=> (not res!2551577) (not e!3754136))))

(assert (=> d!1930995 (= res!2551577 (validRegex!7839 lt!2335928))))

(declare-fun e!3754137 () Regex!16103)

(assert (=> d!1930995 (= lt!2335928 e!3754137)))

(declare-fun c!1109801 () Bool)

(assert (=> d!1930995 (= c!1109801 e!3754141)))

(declare-fun res!2551578 () Bool)

(assert (=> d!1930995 (=> (not res!2551578) (not e!3754141))))

(assert (=> d!1930995 (= res!2551578 ((_ is Cons!64484) (t!378104 (exprs!5987 (h!70933 zl!343)))))))

(assert (=> d!1930995 (forall!15224 (t!378104 (exprs!5987 (h!70933 zl!343))) lambda!336271)))

(assert (=> d!1930995 (= (generalisedConcat!1700 (t!378104 (exprs!5987 (h!70933 zl!343)))) lt!2335928)))

(declare-fun b!6161791 () Bool)

(assert (=> b!6161791 (= e!3754140 (isEmptyExpr!1520 lt!2335928))))

(declare-fun b!6161792 () Bool)

(assert (=> b!6161792 (= e!3754137 (h!70932 (t!378104 (exprs!5987 (h!70933 zl!343)))))))

(declare-fun b!6161793 () Bool)

(assert (=> b!6161793 (= e!3754139 (isConcat!1043 lt!2335928))))

(declare-fun b!6161794 () Bool)

(assert (=> b!6161794 (= e!3754138 (Concat!24948 (h!70932 (t!378104 (exprs!5987 (h!70933 zl!343)))) (generalisedConcat!1700 (t!378104 (t!378104 (exprs!5987 (h!70933 zl!343)))))))))

(declare-fun b!6161795 () Bool)

(assert (=> b!6161795 (= e!3754137 e!3754138)))

(declare-fun c!1109803 () Bool)

(assert (=> b!6161795 (= c!1109803 ((_ is Cons!64484) (t!378104 (exprs!5987 (h!70933 zl!343)))))))

(assert (= (and d!1930995 res!2551578) b!6161787))

(assert (= (and d!1930995 c!1109801) b!6161792))

(assert (= (and d!1930995 (not c!1109801)) b!6161795))

(assert (= (and b!6161795 c!1109803) b!6161794))

(assert (= (and b!6161795 (not c!1109803)) b!6161790))

(assert (= (and d!1930995 res!2551577) b!6161789))

(assert (= (and b!6161789 c!1109802) b!6161791))

(assert (= (and b!6161789 (not c!1109802)) b!6161788))

(assert (= (and b!6161788 c!1109804) b!6161786))

(assert (= (and b!6161788 (not c!1109804)) b!6161793))

(declare-fun m!6999868 () Bool)

(assert (=> b!6161787 m!6999868))

(declare-fun m!6999870 () Bool)

(assert (=> b!6161794 m!6999870))

(assert (=> b!6161789 m!6998110))

(declare-fun m!6999872 () Bool)

(assert (=> d!1930995 m!6999872))

(declare-fun m!6999874 () Bool)

(assert (=> d!1930995 m!6999874))

(declare-fun m!6999876 () Bool)

(assert (=> b!6161791 m!6999876))

(declare-fun m!6999878 () Bool)

(assert (=> b!6161788 m!6999878))

(assert (=> b!6161788 m!6999878))

(declare-fun m!6999880 () Bool)

(assert (=> b!6161788 m!6999880))

(declare-fun m!6999882 () Bool)

(assert (=> b!6161786 m!6999882))

(declare-fun m!6999884 () Bool)

(assert (=> b!6161793 m!6999884))

(assert (=> b!6160639 d!1930995))

(declare-fun bm!513261 () Bool)

(declare-fun call!513271 () List!64608)

(declare-fun call!513268 () List!64608)

(assert (=> bm!513261 (= call!513271 call!513268)))

(declare-fun bm!513262 () Bool)

(declare-fun call!513267 () (InoxSet Context!10974))

(declare-fun call!513270 () (InoxSet Context!10974))

(assert (=> bm!513262 (= call!513267 call!513270)))

(declare-fun c!1109807 () Bool)

(declare-fun bm!513263 () Bool)

(declare-fun call!513269 () (InoxSet Context!10974))

(assert (=> bm!513263 (= call!513269 (derivationStepZipperDown!1351 (ite c!1109807 (regOne!32719 (h!70932 (exprs!5987 lt!2335770))) (regOne!32718 (h!70932 (exprs!5987 lt!2335770)))) (ite c!1109807 (Context!10975 (t!378104 (exprs!5987 lt!2335770))) (Context!10975 call!513268)) (h!70934 s!2326)))))

(declare-fun b!6161797 () Bool)

(declare-fun e!3754143 () (InoxSet Context!10974))

(assert (=> b!6161797 (= e!3754143 call!513267)))

(declare-fun bm!513264 () Bool)

(declare-fun call!513266 () (InoxSet Context!10974))

(assert (=> bm!513264 (= call!513270 call!513266)))

(declare-fun b!6161798 () Bool)

(declare-fun c!1109809 () Bool)

(assert (=> b!6161798 (= c!1109809 ((_ is Star!16103) (h!70932 (exprs!5987 lt!2335770))))))

(declare-fun e!3754142 () (InoxSet Context!10974))

(assert (=> b!6161798 (= e!3754143 e!3754142)))

(declare-fun b!6161799 () Bool)

(declare-fun e!3754147 () (InoxSet Context!10974))

(declare-fun e!3754146 () (InoxSet Context!10974))

(assert (=> b!6161799 (= e!3754147 e!3754146)))

(assert (=> b!6161799 (= c!1109807 ((_ is Union!16103) (h!70932 (exprs!5987 lt!2335770))))))

(declare-fun b!6161800 () Bool)

(declare-fun e!3754145 () (InoxSet Context!10974))

(assert (=> b!6161800 (= e!3754145 e!3754143)))

(declare-fun c!1109805 () Bool)

(assert (=> b!6161800 (= c!1109805 ((_ is Concat!24948) (h!70932 (exprs!5987 lt!2335770))))))

(declare-fun b!6161801 () Bool)

(assert (=> b!6161801 (= e!3754142 call!513267)))

(declare-fun bm!513265 () Bool)

(declare-fun c!1109808 () Bool)

(assert (=> bm!513265 (= call!513268 ($colon$colon!1980 (exprs!5987 (Context!10975 (t!378104 (exprs!5987 lt!2335770)))) (ite (or c!1109808 c!1109805) (regTwo!32718 (h!70932 (exprs!5987 lt!2335770))) (h!70932 (exprs!5987 lt!2335770)))))))

(declare-fun b!6161802 () Bool)

(declare-fun e!3754144 () Bool)

(assert (=> b!6161802 (= c!1109808 e!3754144)))

(declare-fun res!2551579 () Bool)

(assert (=> b!6161802 (=> (not res!2551579) (not e!3754144))))

(assert (=> b!6161802 (= res!2551579 ((_ is Concat!24948) (h!70932 (exprs!5987 lt!2335770))))))

(assert (=> b!6161802 (= e!3754146 e!3754145)))

(declare-fun b!6161803 () Bool)

(assert (=> b!6161803 (= e!3754146 ((_ map or) call!513269 call!513266))))

(declare-fun b!6161796 () Bool)

(assert (=> b!6161796 (= e!3754147 (store ((as const (Array Context!10974 Bool)) false) (Context!10975 (t!378104 (exprs!5987 lt!2335770))) true))))

(declare-fun d!1930997 () Bool)

(declare-fun c!1109806 () Bool)

(assert (=> d!1930997 (= c!1109806 (and ((_ is ElementMatch!16103) (h!70932 (exprs!5987 lt!2335770))) (= (c!1109260 (h!70932 (exprs!5987 lt!2335770))) (h!70934 s!2326))))))

(assert (=> d!1930997 (= (derivationStepZipperDown!1351 (h!70932 (exprs!5987 lt!2335770)) (Context!10975 (t!378104 (exprs!5987 lt!2335770))) (h!70934 s!2326)) e!3754147)))

(declare-fun b!6161804 () Bool)

(assert (=> b!6161804 (= e!3754145 ((_ map or) call!513269 call!513270))))

(declare-fun b!6161805 () Bool)

(assert (=> b!6161805 (= e!3754144 (nullable!6096 (regOne!32718 (h!70932 (exprs!5987 lt!2335770)))))))

(declare-fun b!6161806 () Bool)

(assert (=> b!6161806 (= e!3754142 ((as const (Array Context!10974 Bool)) false))))

(declare-fun bm!513266 () Bool)

(assert (=> bm!513266 (= call!513266 (derivationStepZipperDown!1351 (ite c!1109807 (regTwo!32719 (h!70932 (exprs!5987 lt!2335770))) (ite c!1109808 (regTwo!32718 (h!70932 (exprs!5987 lt!2335770))) (ite c!1109805 (regOne!32718 (h!70932 (exprs!5987 lt!2335770))) (reg!16432 (h!70932 (exprs!5987 lt!2335770)))))) (ite (or c!1109807 c!1109808) (Context!10975 (t!378104 (exprs!5987 lt!2335770))) (Context!10975 call!513271)) (h!70934 s!2326)))))

(assert (= (and d!1930997 c!1109806) b!6161796))

(assert (= (and d!1930997 (not c!1109806)) b!6161799))

(assert (= (and b!6161799 c!1109807) b!6161803))

(assert (= (and b!6161799 (not c!1109807)) b!6161802))

(assert (= (and b!6161802 res!2551579) b!6161805))

(assert (= (and b!6161802 c!1109808) b!6161804))

(assert (= (and b!6161802 (not c!1109808)) b!6161800))

(assert (= (and b!6161800 c!1109805) b!6161797))

(assert (= (and b!6161800 (not c!1109805)) b!6161798))

(assert (= (and b!6161798 c!1109809) b!6161801))

(assert (= (and b!6161798 (not c!1109809)) b!6161806))

(assert (= (or b!6161797 b!6161801) bm!513261))

(assert (= (or b!6161797 b!6161801) bm!513262))

(assert (= (or b!6161804 bm!513261) bm!513265))

(assert (= (or b!6161804 bm!513262) bm!513264))

(assert (= (or b!6161803 bm!513264) bm!513266))

(assert (= (or b!6161803 b!6161804) bm!513263))

(declare-fun m!6999886 () Bool)

(assert (=> bm!513265 m!6999886))

(declare-fun m!6999888 () Bool)

(assert (=> bm!513266 m!6999888))

(declare-fun m!6999890 () Bool)

(assert (=> bm!513263 m!6999890))

(declare-fun m!6999892 () Bool)

(assert (=> b!6161796 m!6999892))

(declare-fun m!6999894 () Bool)

(assert (=> b!6161805 m!6999894))

(assert (=> bm!512991 d!1930997))

(declare-fun d!1930999 () Bool)

(assert (=> d!1930999 (= (nullable!6096 (regOne!32718 (regOne!32719 (regOne!32718 r!7292)))) (nullableFct!2060 (regOne!32718 (regOne!32719 (regOne!32718 r!7292)))))))

(declare-fun bs!1527365 () Bool)

(assert (= bs!1527365 d!1930999))

(declare-fun m!6999896 () Bool)

(assert (=> bs!1527365 m!6999896))

(assert (=> b!6160461 d!1930999))

(declare-fun d!1931001 () Bool)

(assert (=> d!1931001 (= ($colon$colon!1980 (exprs!5987 lt!2335757) (ite (or c!1109433 c!1109430) (regTwo!32718 (regOne!32719 (regOne!32718 r!7292))) (regOne!32719 (regOne!32718 r!7292)))) (Cons!64484 (ite (or c!1109433 c!1109430) (regTwo!32718 (regOne!32719 (regOne!32718 r!7292))) (regOne!32719 (regOne!32718 r!7292))) (exprs!5987 lt!2335757)))))

(assert (=> bm!513014 d!1931001))

(declare-fun b!6161807 () Bool)

(declare-fun e!3754150 () (InoxSet Context!10974))

(assert (=> b!6161807 (= e!3754150 ((as const (Array Context!10974 Bool)) false))))

(declare-fun b!6161808 () Bool)

(declare-fun call!513272 () (InoxSet Context!10974))

(assert (=> b!6161808 (= e!3754150 call!513272)))

(declare-fun bm!513267 () Bool)

(assert (=> bm!513267 (= call!513272 (derivationStepZipperDown!1351 (h!70932 (exprs!5987 (Context!10975 (t!378104 (exprs!5987 lt!2335757))))) (Context!10975 (t!378104 (exprs!5987 (Context!10975 (t!378104 (exprs!5987 lt!2335757)))))) (h!70934 s!2326)))))

(declare-fun b!6161809 () Bool)

(declare-fun e!3754149 () (InoxSet Context!10974))

(assert (=> b!6161809 (= e!3754149 e!3754150)))

(declare-fun c!1109811 () Bool)

(assert (=> b!6161809 (= c!1109811 ((_ is Cons!64484) (exprs!5987 (Context!10975 (t!378104 (exprs!5987 lt!2335757))))))))

(declare-fun d!1931003 () Bool)

(declare-fun c!1109810 () Bool)

(declare-fun e!3754148 () Bool)

(assert (=> d!1931003 (= c!1109810 e!3754148)))

(declare-fun res!2551580 () Bool)

(assert (=> d!1931003 (=> (not res!2551580) (not e!3754148))))

(assert (=> d!1931003 (= res!2551580 ((_ is Cons!64484) (exprs!5987 (Context!10975 (t!378104 (exprs!5987 lt!2335757))))))))

(assert (=> d!1931003 (= (derivationStepZipperUp!1277 (Context!10975 (t!378104 (exprs!5987 lt!2335757))) (h!70934 s!2326)) e!3754149)))

(declare-fun b!6161810 () Bool)

(assert (=> b!6161810 (= e!3754149 ((_ map or) call!513272 (derivationStepZipperUp!1277 (Context!10975 (t!378104 (exprs!5987 (Context!10975 (t!378104 (exprs!5987 lt!2335757)))))) (h!70934 s!2326))))))

(declare-fun b!6161811 () Bool)

(assert (=> b!6161811 (= e!3754148 (nullable!6096 (h!70932 (exprs!5987 (Context!10975 (t!378104 (exprs!5987 lt!2335757)))))))))

(assert (= (and d!1931003 res!2551580) b!6161811))

(assert (= (and d!1931003 c!1109810) b!6161810))

(assert (= (and d!1931003 (not c!1109810)) b!6161809))

(assert (= (and b!6161809 c!1109811) b!6161808))

(assert (= (and b!6161809 (not c!1109811)) b!6161807))

(assert (= (or b!6161810 b!6161808) bm!513267))

(declare-fun m!6999898 () Bool)

(assert (=> bm!513267 m!6999898))

(declare-fun m!6999900 () Bool)

(assert (=> b!6161810 m!6999900))

(declare-fun m!6999902 () Bool)

(assert (=> b!6161811 m!6999902))

(assert (=> b!6160606 d!1931003))

(declare-fun bm!513268 () Bool)

(declare-fun call!513278 () List!64608)

(declare-fun call!513275 () List!64608)

(assert (=> bm!513268 (= call!513278 call!513275)))

(declare-fun bm!513269 () Bool)

(declare-fun call!513274 () (InoxSet Context!10974))

(declare-fun call!513277 () (InoxSet Context!10974))

(assert (=> bm!513269 (= call!513274 call!513277)))

(declare-fun bm!513270 () Bool)

(declare-fun c!1109814 () Bool)

(declare-fun call!513276 () (InoxSet Context!10974))

(assert (=> bm!513270 (= call!513276 (derivationStepZipperDown!1351 (ite c!1109814 (regOne!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343))))) (ite c!1109814 (Context!10975 (t!378104 (exprs!5987 (h!70933 zl!343)))) (Context!10975 call!513275)) (h!70934 s!2326)))))

(declare-fun b!6161813 () Bool)

(declare-fun e!3754152 () (InoxSet Context!10974))

(assert (=> b!6161813 (= e!3754152 call!513274)))

(declare-fun bm!513271 () Bool)

(declare-fun call!513273 () (InoxSet Context!10974))

(assert (=> bm!513271 (= call!513277 call!513273)))

(declare-fun b!6161814 () Bool)

(declare-fun c!1109816 () Bool)

(assert (=> b!6161814 (= c!1109816 ((_ is Star!16103) (h!70932 (exprs!5987 (h!70933 zl!343)))))))

(declare-fun e!3754151 () (InoxSet Context!10974))

(assert (=> b!6161814 (= e!3754152 e!3754151)))

(declare-fun b!6161815 () Bool)

(declare-fun e!3754156 () (InoxSet Context!10974))

(declare-fun e!3754155 () (InoxSet Context!10974))

(assert (=> b!6161815 (= e!3754156 e!3754155)))

(assert (=> b!6161815 (= c!1109814 ((_ is Union!16103) (h!70932 (exprs!5987 (h!70933 zl!343)))))))

(declare-fun b!6161816 () Bool)

(declare-fun e!3754154 () (InoxSet Context!10974))

(assert (=> b!6161816 (= e!3754154 e!3754152)))

(declare-fun c!1109812 () Bool)

(assert (=> b!6161816 (= c!1109812 ((_ is Concat!24948) (h!70932 (exprs!5987 (h!70933 zl!343)))))))

(declare-fun b!6161817 () Bool)

(assert (=> b!6161817 (= e!3754151 call!513274)))

(declare-fun bm!513272 () Bool)

(declare-fun c!1109815 () Bool)

(assert (=> bm!513272 (= call!513275 ($colon$colon!1980 (exprs!5987 (Context!10975 (t!378104 (exprs!5987 (h!70933 zl!343))))) (ite (or c!1109815 c!1109812) (regTwo!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (h!70932 (exprs!5987 (h!70933 zl!343))))))))

(declare-fun b!6161818 () Bool)

(declare-fun e!3754153 () Bool)

(assert (=> b!6161818 (= c!1109815 e!3754153)))

(declare-fun res!2551581 () Bool)

(assert (=> b!6161818 (=> (not res!2551581) (not e!3754153))))

(assert (=> b!6161818 (= res!2551581 ((_ is Concat!24948) (h!70932 (exprs!5987 (h!70933 zl!343)))))))

(assert (=> b!6161818 (= e!3754155 e!3754154)))

(declare-fun b!6161819 () Bool)

(assert (=> b!6161819 (= e!3754155 ((_ map or) call!513276 call!513273))))

(declare-fun b!6161812 () Bool)

(assert (=> b!6161812 (= e!3754156 (store ((as const (Array Context!10974 Bool)) false) (Context!10975 (t!378104 (exprs!5987 (h!70933 zl!343)))) true))))

(declare-fun d!1931005 () Bool)

(declare-fun c!1109813 () Bool)

(assert (=> d!1931005 (= c!1109813 (and ((_ is ElementMatch!16103) (h!70932 (exprs!5987 (h!70933 zl!343)))) (= (c!1109260 (h!70932 (exprs!5987 (h!70933 zl!343)))) (h!70934 s!2326))))))

(assert (=> d!1931005 (= (derivationStepZipperDown!1351 (h!70932 (exprs!5987 (h!70933 zl!343))) (Context!10975 (t!378104 (exprs!5987 (h!70933 zl!343)))) (h!70934 s!2326)) e!3754156)))

(declare-fun b!6161820 () Bool)

(assert (=> b!6161820 (= e!3754154 ((_ map or) call!513276 call!513277))))

(declare-fun b!6161821 () Bool)

(assert (=> b!6161821 (= e!3754153 (nullable!6096 (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343))))))))

(declare-fun b!6161822 () Bool)

(assert (=> b!6161822 (= e!3754151 ((as const (Array Context!10974 Bool)) false))))

(declare-fun bm!513273 () Bool)

(assert (=> bm!513273 (= call!513273 (derivationStepZipperDown!1351 (ite c!1109814 (regTwo!32719 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109815 (regTwo!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (ite c!1109812 (regOne!32718 (h!70932 (exprs!5987 (h!70933 zl!343)))) (reg!16432 (h!70932 (exprs!5987 (h!70933 zl!343))))))) (ite (or c!1109814 c!1109815) (Context!10975 (t!378104 (exprs!5987 (h!70933 zl!343)))) (Context!10975 call!513278)) (h!70934 s!2326)))))

(assert (= (and d!1931005 c!1109813) b!6161812))

(assert (= (and d!1931005 (not c!1109813)) b!6161815))

(assert (= (and b!6161815 c!1109814) b!6161819))

(assert (= (and b!6161815 (not c!1109814)) b!6161818))

(assert (= (and b!6161818 res!2551581) b!6161821))

(assert (= (and b!6161818 c!1109815) b!6161820))

(assert (= (and b!6161818 (not c!1109815)) b!6161816))

(assert (= (and b!6161816 c!1109812) b!6161813))

(assert (= (and b!6161816 (not c!1109812)) b!6161814))

(assert (= (and b!6161814 c!1109816) b!6161817))

(assert (= (and b!6161814 (not c!1109816)) b!6161822))

(assert (= (or b!6161813 b!6161817) bm!513268))

(assert (= (or b!6161813 b!6161817) bm!513269))

(assert (= (or b!6161820 bm!513268) bm!513272))

(assert (= (or b!6161820 bm!513269) bm!513271))

(assert (= (or b!6161819 bm!513271) bm!513273))

(assert (= (or b!6161819 b!6161820) bm!513270))

(declare-fun m!6999904 () Bool)

(assert (=> bm!513272 m!6999904))

(declare-fun m!6999906 () Bool)

(assert (=> bm!513273 m!6999906))

(declare-fun m!6999908 () Bool)

(assert (=> bm!513270 m!6999908))

(declare-fun m!6999910 () Bool)

(assert (=> b!6161812 m!6999910))

(assert (=> b!6161821 m!6998666))

(assert (=> bm!513032 d!1931005))

(declare-fun b!6161824 () Bool)

(declare-fun e!3754157 () Bool)

(declare-fun tp!1720391 () Bool)

(declare-fun tp!1720394 () Bool)

(assert (=> b!6161824 (= e!3754157 (and tp!1720391 tp!1720394))))

(declare-fun b!6161823 () Bool)

(assert (=> b!6161823 (= e!3754157 tp_is_empty!41459)))

(declare-fun b!6161826 () Bool)

(declare-fun tp!1720393 () Bool)

(declare-fun tp!1720395 () Bool)

(assert (=> b!6161826 (= e!3754157 (and tp!1720393 tp!1720395))))

(declare-fun b!6161825 () Bool)

(declare-fun tp!1720392 () Bool)

(assert (=> b!6161825 (= e!3754157 tp!1720392)))

(assert (=> b!6160662 (= tp!1720175 e!3754157)))

(assert (= (and b!6160662 ((_ is ElementMatch!16103) (reg!16432 (regOne!32718 r!7292)))) b!6161823))

(assert (= (and b!6160662 ((_ is Concat!24948) (reg!16432 (regOne!32718 r!7292)))) b!6161824))

(assert (= (and b!6160662 ((_ is Star!16103) (reg!16432 (regOne!32718 r!7292)))) b!6161825))

(assert (= (and b!6160662 ((_ is Union!16103) (reg!16432 (regOne!32718 r!7292)))) b!6161826))

(declare-fun b!6161828 () Bool)

(declare-fun e!3754158 () Bool)

(declare-fun tp!1720396 () Bool)

(declare-fun tp!1720399 () Bool)

(assert (=> b!6161828 (= e!3754158 (and tp!1720396 tp!1720399))))

(declare-fun b!6161827 () Bool)

(assert (=> b!6161827 (= e!3754158 tp_is_empty!41459)))

(declare-fun b!6161830 () Bool)

(declare-fun tp!1720398 () Bool)

(declare-fun tp!1720400 () Bool)

(assert (=> b!6161830 (= e!3754158 (and tp!1720398 tp!1720400))))

(declare-fun b!6161829 () Bool)

(declare-fun tp!1720397 () Bool)

(assert (=> b!6161829 (= e!3754158 tp!1720397)))

(assert (=> b!6160663 (= tp!1720176 e!3754158)))

(assert (= (and b!6160663 ((_ is ElementMatch!16103) (regOne!32719 (regOne!32718 r!7292)))) b!6161827))

(assert (= (and b!6160663 ((_ is Concat!24948) (regOne!32719 (regOne!32718 r!7292)))) b!6161828))

(assert (= (and b!6160663 ((_ is Star!16103) (regOne!32719 (regOne!32718 r!7292)))) b!6161829))

(assert (= (and b!6160663 ((_ is Union!16103) (regOne!32719 (regOne!32718 r!7292)))) b!6161830))

(declare-fun b!6161832 () Bool)

(declare-fun e!3754159 () Bool)

(declare-fun tp!1720401 () Bool)

(declare-fun tp!1720404 () Bool)

(assert (=> b!6161832 (= e!3754159 (and tp!1720401 tp!1720404))))

(declare-fun b!6161831 () Bool)

(assert (=> b!6161831 (= e!3754159 tp_is_empty!41459)))

(declare-fun b!6161834 () Bool)

(declare-fun tp!1720403 () Bool)

(declare-fun tp!1720405 () Bool)

(assert (=> b!6161834 (= e!3754159 (and tp!1720403 tp!1720405))))

(declare-fun b!6161833 () Bool)

(declare-fun tp!1720402 () Bool)

(assert (=> b!6161833 (= e!3754159 tp!1720402)))

(assert (=> b!6160663 (= tp!1720178 e!3754159)))

(assert (= (and b!6160663 ((_ is ElementMatch!16103) (regTwo!32719 (regOne!32718 r!7292)))) b!6161831))

(assert (= (and b!6160663 ((_ is Concat!24948) (regTwo!32719 (regOne!32718 r!7292)))) b!6161832))

(assert (= (and b!6160663 ((_ is Star!16103) (regTwo!32719 (regOne!32718 r!7292)))) b!6161833))

(assert (= (and b!6160663 ((_ is Union!16103) (regTwo!32719 (regOne!32718 r!7292)))) b!6161834))

(declare-fun b!6161836 () Bool)

(declare-fun e!3754160 () Bool)

(declare-fun tp!1720406 () Bool)

(declare-fun tp!1720409 () Bool)

(assert (=> b!6161836 (= e!3754160 (and tp!1720406 tp!1720409))))

(declare-fun b!6161835 () Bool)

(assert (=> b!6161835 (= e!3754160 tp_is_empty!41459)))

(declare-fun b!6161838 () Bool)

(declare-fun tp!1720408 () Bool)

(declare-fun tp!1720410 () Bool)

(assert (=> b!6161838 (= e!3754160 (and tp!1720408 tp!1720410))))

(declare-fun b!6161837 () Bool)

(declare-fun tp!1720407 () Bool)

(assert (=> b!6161837 (= e!3754160 tp!1720407)))

(assert (=> b!6160669 (= tp!1720184 e!3754160)))

(assert (= (and b!6160669 ((_ is ElementMatch!16103) (regOne!32718 (regOne!32719 r!7292)))) b!6161835))

(assert (= (and b!6160669 ((_ is Concat!24948) (regOne!32718 (regOne!32719 r!7292)))) b!6161836))

(assert (= (and b!6160669 ((_ is Star!16103) (regOne!32718 (regOne!32719 r!7292)))) b!6161837))

(assert (= (and b!6160669 ((_ is Union!16103) (regOne!32718 (regOne!32719 r!7292)))) b!6161838))

(declare-fun b!6161840 () Bool)

(declare-fun e!3754161 () Bool)

(declare-fun tp!1720411 () Bool)

(declare-fun tp!1720414 () Bool)

(assert (=> b!6161840 (= e!3754161 (and tp!1720411 tp!1720414))))

(declare-fun b!6161839 () Bool)

(assert (=> b!6161839 (= e!3754161 tp_is_empty!41459)))

(declare-fun b!6161842 () Bool)

(declare-fun tp!1720413 () Bool)

(declare-fun tp!1720415 () Bool)

(assert (=> b!6161842 (= e!3754161 (and tp!1720413 tp!1720415))))

(declare-fun b!6161841 () Bool)

(declare-fun tp!1720412 () Bool)

(assert (=> b!6161841 (= e!3754161 tp!1720412)))

(assert (=> b!6160669 (= tp!1720187 e!3754161)))

(assert (= (and b!6160669 ((_ is ElementMatch!16103) (regTwo!32718 (regOne!32719 r!7292)))) b!6161839))

(assert (= (and b!6160669 ((_ is Concat!24948) (regTwo!32718 (regOne!32719 r!7292)))) b!6161840))

(assert (= (and b!6160669 ((_ is Star!16103) (regTwo!32718 (regOne!32719 r!7292)))) b!6161841))

(assert (= (and b!6160669 ((_ is Union!16103) (regTwo!32718 (regOne!32719 r!7292)))) b!6161842))

(declare-fun b!6161844 () Bool)

(declare-fun e!3754162 () Bool)

(declare-fun tp!1720416 () Bool)

(declare-fun tp!1720419 () Bool)

(assert (=> b!6161844 (= e!3754162 (and tp!1720416 tp!1720419))))

(declare-fun b!6161843 () Bool)

(assert (=> b!6161843 (= e!3754162 tp_is_empty!41459)))

(declare-fun b!6161846 () Bool)

(declare-fun tp!1720418 () Bool)

(declare-fun tp!1720420 () Bool)

(assert (=> b!6161846 (= e!3754162 (and tp!1720418 tp!1720420))))

(declare-fun b!6161845 () Bool)

(declare-fun tp!1720417 () Bool)

(assert (=> b!6161845 (= e!3754162 tp!1720417)))

(assert (=> b!6160670 (= tp!1720185 e!3754162)))

(assert (= (and b!6160670 ((_ is ElementMatch!16103) (reg!16432 (regOne!32719 r!7292)))) b!6161843))

(assert (= (and b!6160670 ((_ is Concat!24948) (reg!16432 (regOne!32719 r!7292)))) b!6161844))

(assert (= (and b!6160670 ((_ is Star!16103) (reg!16432 (regOne!32719 r!7292)))) b!6161845))

(assert (= (and b!6160670 ((_ is Union!16103) (reg!16432 (regOne!32719 r!7292)))) b!6161846))

(declare-fun b!6161848 () Bool)

(declare-fun e!3754163 () Bool)

(declare-fun tp!1720421 () Bool)

(declare-fun tp!1720424 () Bool)

(assert (=> b!6161848 (= e!3754163 (and tp!1720421 tp!1720424))))

(declare-fun b!6161847 () Bool)

(assert (=> b!6161847 (= e!3754163 tp_is_empty!41459)))

(declare-fun b!6161850 () Bool)

(declare-fun tp!1720423 () Bool)

(declare-fun tp!1720425 () Bool)

(assert (=> b!6161850 (= e!3754163 (and tp!1720423 tp!1720425))))

(declare-fun b!6161849 () Bool)

(declare-fun tp!1720422 () Bool)

(assert (=> b!6161849 (= e!3754163 tp!1720422)))

(assert (=> b!6160661 (= tp!1720174 e!3754163)))

(assert (= (and b!6160661 ((_ is ElementMatch!16103) (regOne!32718 (regOne!32718 r!7292)))) b!6161847))

(assert (= (and b!6160661 ((_ is Concat!24948) (regOne!32718 (regOne!32718 r!7292)))) b!6161848))

(assert (= (and b!6160661 ((_ is Star!16103) (regOne!32718 (regOne!32718 r!7292)))) b!6161849))

(assert (= (and b!6160661 ((_ is Union!16103) (regOne!32718 (regOne!32718 r!7292)))) b!6161850))

(declare-fun b!6161852 () Bool)

(declare-fun e!3754164 () Bool)

(declare-fun tp!1720426 () Bool)

(declare-fun tp!1720429 () Bool)

(assert (=> b!6161852 (= e!3754164 (and tp!1720426 tp!1720429))))

(declare-fun b!6161851 () Bool)

(assert (=> b!6161851 (= e!3754164 tp_is_empty!41459)))

(declare-fun b!6161854 () Bool)

(declare-fun tp!1720428 () Bool)

(declare-fun tp!1720430 () Bool)

(assert (=> b!6161854 (= e!3754164 (and tp!1720428 tp!1720430))))

(declare-fun b!6161853 () Bool)

(declare-fun tp!1720427 () Bool)

(assert (=> b!6161853 (= e!3754164 tp!1720427)))

(assert (=> b!6160661 (= tp!1720177 e!3754164)))

(assert (= (and b!6160661 ((_ is ElementMatch!16103) (regTwo!32718 (regOne!32718 r!7292)))) b!6161851))

(assert (= (and b!6160661 ((_ is Concat!24948) (regTwo!32718 (regOne!32718 r!7292)))) b!6161852))

(assert (= (and b!6160661 ((_ is Star!16103) (regTwo!32718 (regOne!32718 r!7292)))) b!6161853))

(assert (= (and b!6160661 ((_ is Union!16103) (regTwo!32718 (regOne!32718 r!7292)))) b!6161854))

(declare-fun b!6161856 () Bool)

(declare-fun e!3754165 () Bool)

(declare-fun tp!1720431 () Bool)

(declare-fun tp!1720434 () Bool)

(assert (=> b!6161856 (= e!3754165 (and tp!1720431 tp!1720434))))

(declare-fun b!6161855 () Bool)

(assert (=> b!6161855 (= e!3754165 tp_is_empty!41459)))

(declare-fun b!6161858 () Bool)

(declare-fun tp!1720433 () Bool)

(declare-fun tp!1720435 () Bool)

(assert (=> b!6161858 (= e!3754165 (and tp!1720433 tp!1720435))))

(declare-fun b!6161857 () Bool)

(declare-fun tp!1720432 () Bool)

(assert (=> b!6161857 (= e!3754165 tp!1720432)))

(assert (=> b!6160671 (= tp!1720186 e!3754165)))

(assert (= (and b!6160671 ((_ is ElementMatch!16103) (regOne!32719 (regOne!32719 r!7292)))) b!6161855))

(assert (= (and b!6160671 ((_ is Concat!24948) (regOne!32719 (regOne!32719 r!7292)))) b!6161856))

(assert (= (and b!6160671 ((_ is Star!16103) (regOne!32719 (regOne!32719 r!7292)))) b!6161857))

(assert (= (and b!6160671 ((_ is Union!16103) (regOne!32719 (regOne!32719 r!7292)))) b!6161858))

(declare-fun b!6161860 () Bool)

(declare-fun e!3754166 () Bool)

(declare-fun tp!1720436 () Bool)

(declare-fun tp!1720439 () Bool)

(assert (=> b!6161860 (= e!3754166 (and tp!1720436 tp!1720439))))

(declare-fun b!6161859 () Bool)

(assert (=> b!6161859 (= e!3754166 tp_is_empty!41459)))

(declare-fun b!6161862 () Bool)

(declare-fun tp!1720438 () Bool)

(declare-fun tp!1720440 () Bool)

(assert (=> b!6161862 (= e!3754166 (and tp!1720438 tp!1720440))))

(declare-fun b!6161861 () Bool)

(declare-fun tp!1720437 () Bool)

(assert (=> b!6161861 (= e!3754166 tp!1720437)))

(assert (=> b!6160671 (= tp!1720188 e!3754166)))

(assert (= (and b!6160671 ((_ is ElementMatch!16103) (regTwo!32719 (regOne!32719 r!7292)))) b!6161859))

(assert (= (and b!6160671 ((_ is Concat!24948) (regTwo!32719 (regOne!32719 r!7292)))) b!6161860))

(assert (= (and b!6160671 ((_ is Star!16103) (regTwo!32719 (regOne!32719 r!7292)))) b!6161861))

(assert (= (and b!6160671 ((_ is Union!16103) (regTwo!32719 (regOne!32719 r!7292)))) b!6161862))

(declare-fun b!6161864 () Bool)

(declare-fun e!3754167 () Bool)

(declare-fun tp!1720441 () Bool)

(declare-fun tp!1720444 () Bool)

(assert (=> b!6161864 (= e!3754167 (and tp!1720441 tp!1720444))))

(declare-fun b!6161863 () Bool)

(assert (=> b!6161863 (= e!3754167 tp_is_empty!41459)))

(declare-fun b!6161866 () Bool)

(declare-fun tp!1720443 () Bool)

(declare-fun tp!1720445 () Bool)

(assert (=> b!6161866 (= e!3754167 (and tp!1720443 tp!1720445))))

(declare-fun b!6161865 () Bool)

(declare-fun tp!1720442 () Bool)

(assert (=> b!6161865 (= e!3754167 tp!1720442)))

(assert (=> b!6160676 (= tp!1720194 e!3754167)))

(assert (= (and b!6160676 ((_ is ElementMatch!16103) (h!70932 (exprs!5987 (h!70933 zl!343))))) b!6161863))

(assert (= (and b!6160676 ((_ is Concat!24948) (h!70932 (exprs!5987 (h!70933 zl!343))))) b!6161864))

(assert (= (and b!6160676 ((_ is Star!16103) (h!70932 (exprs!5987 (h!70933 zl!343))))) b!6161865))

(assert (= (and b!6160676 ((_ is Union!16103) (h!70932 (exprs!5987 (h!70933 zl!343))))) b!6161866))

(declare-fun b!6161867 () Bool)

(declare-fun e!3754168 () Bool)

(declare-fun tp!1720446 () Bool)

(declare-fun tp!1720447 () Bool)

(assert (=> b!6161867 (= e!3754168 (and tp!1720446 tp!1720447))))

(assert (=> b!6160676 (= tp!1720195 e!3754168)))

(assert (= (and b!6160676 ((_ is Cons!64484) (t!378104 (exprs!5987 (h!70933 zl!343))))) b!6161867))

(declare-fun b!6161869 () Bool)

(declare-fun e!3754169 () Bool)

(declare-fun tp!1720448 () Bool)

(declare-fun tp!1720451 () Bool)

(assert (=> b!6161869 (= e!3754169 (and tp!1720448 tp!1720451))))

(declare-fun b!6161868 () Bool)

(assert (=> b!6161868 (= e!3754169 tp_is_empty!41459)))

(declare-fun b!6161871 () Bool)

(declare-fun tp!1720450 () Bool)

(declare-fun tp!1720452 () Bool)

(assert (=> b!6161871 (= e!3754169 (and tp!1720450 tp!1720452))))

(declare-fun b!6161870 () Bool)

(declare-fun tp!1720449 () Bool)

(assert (=> b!6161870 (= e!3754169 tp!1720449)))

(assert (=> b!6160652 (= tp!1720163 e!3754169)))

(assert (= (and b!6160652 ((_ is ElementMatch!16103) (regOne!32718 (reg!16432 r!7292)))) b!6161868))

(assert (= (and b!6160652 ((_ is Concat!24948) (regOne!32718 (reg!16432 r!7292)))) b!6161869))

(assert (= (and b!6160652 ((_ is Star!16103) (regOne!32718 (reg!16432 r!7292)))) b!6161870))

(assert (= (and b!6160652 ((_ is Union!16103) (regOne!32718 (reg!16432 r!7292)))) b!6161871))

(declare-fun b!6161873 () Bool)

(declare-fun e!3754170 () Bool)

(declare-fun tp!1720453 () Bool)

(declare-fun tp!1720456 () Bool)

(assert (=> b!6161873 (= e!3754170 (and tp!1720453 tp!1720456))))

(declare-fun b!6161872 () Bool)

(assert (=> b!6161872 (= e!3754170 tp_is_empty!41459)))

(declare-fun b!6161875 () Bool)

(declare-fun tp!1720455 () Bool)

(declare-fun tp!1720457 () Bool)

(assert (=> b!6161875 (= e!3754170 (and tp!1720455 tp!1720457))))

(declare-fun b!6161874 () Bool)

(declare-fun tp!1720454 () Bool)

(assert (=> b!6161874 (= e!3754170 tp!1720454)))

(assert (=> b!6160652 (= tp!1720166 e!3754170)))

(assert (= (and b!6160652 ((_ is ElementMatch!16103) (regTwo!32718 (reg!16432 r!7292)))) b!6161872))

(assert (= (and b!6160652 ((_ is Concat!24948) (regTwo!32718 (reg!16432 r!7292)))) b!6161873))

(assert (= (and b!6160652 ((_ is Star!16103) (regTwo!32718 (reg!16432 r!7292)))) b!6161874))

(assert (= (and b!6160652 ((_ is Union!16103) (regTwo!32718 (reg!16432 r!7292)))) b!6161875))

(declare-fun b!6161877 () Bool)

(declare-fun e!3754171 () Bool)

(declare-fun tp!1720458 () Bool)

(declare-fun tp!1720461 () Bool)

(assert (=> b!6161877 (= e!3754171 (and tp!1720458 tp!1720461))))

(declare-fun b!6161876 () Bool)

(assert (=> b!6161876 (= e!3754171 tp_is_empty!41459)))

(declare-fun b!6161879 () Bool)

(declare-fun tp!1720460 () Bool)

(declare-fun tp!1720462 () Bool)

(assert (=> b!6161879 (= e!3754171 (and tp!1720460 tp!1720462))))

(declare-fun b!6161878 () Bool)

(declare-fun tp!1720459 () Bool)

(assert (=> b!6161878 (= e!3754171 tp!1720459)))

(assert (=> b!6160653 (= tp!1720164 e!3754171)))

(assert (= (and b!6160653 ((_ is ElementMatch!16103) (reg!16432 (reg!16432 r!7292)))) b!6161876))

(assert (= (and b!6160653 ((_ is Concat!24948) (reg!16432 (reg!16432 r!7292)))) b!6161877))

(assert (= (and b!6160653 ((_ is Star!16103) (reg!16432 (reg!16432 r!7292)))) b!6161878))

(assert (= (and b!6160653 ((_ is Union!16103) (reg!16432 (reg!16432 r!7292)))) b!6161879))

(declare-fun b!6161881 () Bool)

(declare-fun e!3754172 () Bool)

(declare-fun tp!1720463 () Bool)

(declare-fun tp!1720466 () Bool)

(assert (=> b!6161881 (= e!3754172 (and tp!1720463 tp!1720466))))

(declare-fun b!6161880 () Bool)

(assert (=> b!6161880 (= e!3754172 tp_is_empty!41459)))

(declare-fun b!6161883 () Bool)

(declare-fun tp!1720465 () Bool)

(declare-fun tp!1720467 () Bool)

(assert (=> b!6161883 (= e!3754172 (and tp!1720465 tp!1720467))))

(declare-fun b!6161882 () Bool)

(declare-fun tp!1720464 () Bool)

(assert (=> b!6161882 (= e!3754172 tp!1720464)))

(assert (=> b!6160654 (= tp!1720165 e!3754172)))

(assert (= (and b!6160654 ((_ is ElementMatch!16103) (regOne!32719 (reg!16432 r!7292)))) b!6161880))

(assert (= (and b!6160654 ((_ is Concat!24948) (regOne!32719 (reg!16432 r!7292)))) b!6161881))

(assert (= (and b!6160654 ((_ is Star!16103) (regOne!32719 (reg!16432 r!7292)))) b!6161882))

(assert (= (and b!6160654 ((_ is Union!16103) (regOne!32719 (reg!16432 r!7292)))) b!6161883))

(declare-fun b!6161885 () Bool)

(declare-fun e!3754173 () Bool)

(declare-fun tp!1720468 () Bool)

(declare-fun tp!1720471 () Bool)

(assert (=> b!6161885 (= e!3754173 (and tp!1720468 tp!1720471))))

(declare-fun b!6161884 () Bool)

(assert (=> b!6161884 (= e!3754173 tp_is_empty!41459)))

(declare-fun b!6161887 () Bool)

(declare-fun tp!1720470 () Bool)

(declare-fun tp!1720472 () Bool)

(assert (=> b!6161887 (= e!3754173 (and tp!1720470 tp!1720472))))

(declare-fun b!6161886 () Bool)

(declare-fun tp!1720469 () Bool)

(assert (=> b!6161886 (= e!3754173 tp!1720469)))

(assert (=> b!6160654 (= tp!1720167 e!3754173)))

(assert (= (and b!6160654 ((_ is ElementMatch!16103) (regTwo!32719 (reg!16432 r!7292)))) b!6161884))

(assert (= (and b!6160654 ((_ is Concat!24948) (regTwo!32719 (reg!16432 r!7292)))) b!6161885))

(assert (= (and b!6160654 ((_ is Star!16103) (regTwo!32719 (reg!16432 r!7292)))) b!6161886))

(assert (= (and b!6160654 ((_ is Union!16103) (regTwo!32719 (reg!16432 r!7292)))) b!6161887))

(declare-fun b!6161889 () Bool)

(declare-fun e!3754174 () Bool)

(declare-fun tp!1720473 () Bool)

(declare-fun tp!1720476 () Bool)

(assert (=> b!6161889 (= e!3754174 (and tp!1720473 tp!1720476))))

(declare-fun b!6161888 () Bool)

(assert (=> b!6161888 (= e!3754174 tp_is_empty!41459)))

(declare-fun b!6161891 () Bool)

(declare-fun tp!1720475 () Bool)

(declare-fun tp!1720477 () Bool)

(assert (=> b!6161891 (= e!3754174 (and tp!1720475 tp!1720477))))

(declare-fun b!6161890 () Bool)

(declare-fun tp!1720474 () Bool)

(assert (=> b!6161890 (= e!3754174 tp!1720474)))

(assert (=> b!6160667 (= tp!1720181 e!3754174)))

(assert (= (and b!6160667 ((_ is ElementMatch!16103) (regOne!32719 (regTwo!32718 r!7292)))) b!6161888))

(assert (= (and b!6160667 ((_ is Concat!24948) (regOne!32719 (regTwo!32718 r!7292)))) b!6161889))

(assert (= (and b!6160667 ((_ is Star!16103) (regOne!32719 (regTwo!32718 r!7292)))) b!6161890))

(assert (= (and b!6160667 ((_ is Union!16103) (regOne!32719 (regTwo!32718 r!7292)))) b!6161891))

(declare-fun b!6161893 () Bool)

(declare-fun e!3754175 () Bool)

(declare-fun tp!1720478 () Bool)

(declare-fun tp!1720481 () Bool)

(assert (=> b!6161893 (= e!3754175 (and tp!1720478 tp!1720481))))

(declare-fun b!6161892 () Bool)

(assert (=> b!6161892 (= e!3754175 tp_is_empty!41459)))

(declare-fun b!6161895 () Bool)

(declare-fun tp!1720480 () Bool)

(declare-fun tp!1720482 () Bool)

(assert (=> b!6161895 (= e!3754175 (and tp!1720480 tp!1720482))))

(declare-fun b!6161894 () Bool)

(declare-fun tp!1720479 () Bool)

(assert (=> b!6161894 (= e!3754175 tp!1720479)))

(assert (=> b!6160667 (= tp!1720183 e!3754175)))

(assert (= (and b!6160667 ((_ is ElementMatch!16103) (regTwo!32719 (regTwo!32718 r!7292)))) b!6161892))

(assert (= (and b!6160667 ((_ is Concat!24948) (regTwo!32719 (regTwo!32718 r!7292)))) b!6161893))

(assert (= (and b!6160667 ((_ is Star!16103) (regTwo!32719 (regTwo!32718 r!7292)))) b!6161894))

(assert (= (and b!6160667 ((_ is Union!16103) (regTwo!32719 (regTwo!32718 r!7292)))) b!6161895))

(declare-fun b!6161897 () Bool)

(declare-fun e!3754176 () Bool)

(declare-fun tp!1720483 () Bool)

(declare-fun tp!1720486 () Bool)

(assert (=> b!6161897 (= e!3754176 (and tp!1720483 tp!1720486))))

(declare-fun b!6161896 () Bool)

(assert (=> b!6161896 (= e!3754176 tp_is_empty!41459)))

(declare-fun b!6161899 () Bool)

(declare-fun tp!1720485 () Bool)

(declare-fun tp!1720487 () Bool)

(assert (=> b!6161899 (= e!3754176 (and tp!1720485 tp!1720487))))

(declare-fun b!6161898 () Bool)

(declare-fun tp!1720484 () Bool)

(assert (=> b!6161898 (= e!3754176 tp!1720484)))

(assert (=> b!6160659 (= tp!1720172 e!3754176)))

(assert (= (and b!6160659 ((_ is ElementMatch!16103) (h!70932 (exprs!5987 setElem!41742)))) b!6161896))

(assert (= (and b!6160659 ((_ is Concat!24948) (h!70932 (exprs!5987 setElem!41742)))) b!6161897))

(assert (= (and b!6160659 ((_ is Star!16103) (h!70932 (exprs!5987 setElem!41742)))) b!6161898))

(assert (= (and b!6160659 ((_ is Union!16103) (h!70932 (exprs!5987 setElem!41742)))) b!6161899))

(declare-fun b!6161900 () Bool)

(declare-fun e!3754177 () Bool)

(declare-fun tp!1720488 () Bool)

(declare-fun tp!1720489 () Bool)

(assert (=> b!6161900 (= e!3754177 (and tp!1720488 tp!1720489))))

(assert (=> b!6160659 (= tp!1720173 e!3754177)))

(assert (= (and b!6160659 ((_ is Cons!64484) (t!378104 (exprs!5987 setElem!41742)))) b!6161900))

(declare-fun b!6161902 () Bool)

(declare-fun e!3754178 () Bool)

(declare-fun tp!1720490 () Bool)

(declare-fun tp!1720493 () Bool)

(assert (=> b!6161902 (= e!3754178 (and tp!1720490 tp!1720493))))

(declare-fun b!6161901 () Bool)

(assert (=> b!6161901 (= e!3754178 tp_is_empty!41459)))

(declare-fun b!6161904 () Bool)

(declare-fun tp!1720492 () Bool)

(declare-fun tp!1720494 () Bool)

(assert (=> b!6161904 (= e!3754178 (and tp!1720492 tp!1720494))))

(declare-fun b!6161903 () Bool)

(declare-fun tp!1720491 () Bool)

(assert (=> b!6161903 (= e!3754178 tp!1720491)))

(assert (=> b!6160674 (= tp!1720190 e!3754178)))

(assert (= (and b!6160674 ((_ is ElementMatch!16103) (reg!16432 (regTwo!32719 r!7292)))) b!6161901))

(assert (= (and b!6160674 ((_ is Concat!24948) (reg!16432 (regTwo!32719 r!7292)))) b!6161902))

(assert (= (and b!6160674 ((_ is Star!16103) (reg!16432 (regTwo!32719 r!7292)))) b!6161903))

(assert (= (and b!6160674 ((_ is Union!16103) (reg!16432 (regTwo!32719 r!7292)))) b!6161904))

(declare-fun b!6161906 () Bool)

(declare-fun e!3754179 () Bool)

(declare-fun tp!1720495 () Bool)

(declare-fun tp!1720498 () Bool)

(assert (=> b!6161906 (= e!3754179 (and tp!1720495 tp!1720498))))

(declare-fun b!6161905 () Bool)

(assert (=> b!6161905 (= e!3754179 tp_is_empty!41459)))

(declare-fun b!6161908 () Bool)

(declare-fun tp!1720497 () Bool)

(declare-fun tp!1720499 () Bool)

(assert (=> b!6161908 (= e!3754179 (and tp!1720497 tp!1720499))))

(declare-fun b!6161907 () Bool)

(declare-fun tp!1720496 () Bool)

(assert (=> b!6161907 (= e!3754179 tp!1720496)))

(assert (=> b!6160665 (= tp!1720179 e!3754179)))

(assert (= (and b!6160665 ((_ is ElementMatch!16103) (regOne!32718 (regTwo!32718 r!7292)))) b!6161905))

(assert (= (and b!6160665 ((_ is Concat!24948) (regOne!32718 (regTwo!32718 r!7292)))) b!6161906))

(assert (= (and b!6160665 ((_ is Star!16103) (regOne!32718 (regTwo!32718 r!7292)))) b!6161907))

(assert (= (and b!6160665 ((_ is Union!16103) (regOne!32718 (regTwo!32718 r!7292)))) b!6161908))

(declare-fun b!6161910 () Bool)

(declare-fun e!3754180 () Bool)

(declare-fun tp!1720500 () Bool)

(declare-fun tp!1720503 () Bool)

(assert (=> b!6161910 (= e!3754180 (and tp!1720500 tp!1720503))))

(declare-fun b!6161909 () Bool)

(assert (=> b!6161909 (= e!3754180 tp_is_empty!41459)))

(declare-fun b!6161912 () Bool)

(declare-fun tp!1720502 () Bool)

(declare-fun tp!1720504 () Bool)

(assert (=> b!6161912 (= e!3754180 (and tp!1720502 tp!1720504))))

(declare-fun b!6161911 () Bool)

(declare-fun tp!1720501 () Bool)

(assert (=> b!6161911 (= e!3754180 tp!1720501)))

(assert (=> b!6160665 (= tp!1720182 e!3754180)))

(assert (= (and b!6160665 ((_ is ElementMatch!16103) (regTwo!32718 (regTwo!32718 r!7292)))) b!6161909))

(assert (= (and b!6160665 ((_ is Concat!24948) (regTwo!32718 (regTwo!32718 r!7292)))) b!6161910))

(assert (= (and b!6160665 ((_ is Star!16103) (regTwo!32718 (regTwo!32718 r!7292)))) b!6161911))

(assert (= (and b!6160665 ((_ is Union!16103) (regTwo!32718 (regTwo!32718 r!7292)))) b!6161912))

(declare-fun b!6161914 () Bool)

(declare-fun e!3754181 () Bool)

(declare-fun tp!1720505 () Bool)

(declare-fun tp!1720508 () Bool)

(assert (=> b!6161914 (= e!3754181 (and tp!1720505 tp!1720508))))

(declare-fun b!6161913 () Bool)

(assert (=> b!6161913 (= e!3754181 tp_is_empty!41459)))

(declare-fun b!6161916 () Bool)

(declare-fun tp!1720507 () Bool)

(declare-fun tp!1720509 () Bool)

(assert (=> b!6161916 (= e!3754181 (and tp!1720507 tp!1720509))))

(declare-fun b!6161915 () Bool)

(declare-fun tp!1720506 () Bool)

(assert (=> b!6161915 (= e!3754181 tp!1720506)))

(assert (=> b!6160675 (= tp!1720191 e!3754181)))

(assert (= (and b!6160675 ((_ is ElementMatch!16103) (regOne!32719 (regTwo!32719 r!7292)))) b!6161913))

(assert (= (and b!6160675 ((_ is Concat!24948) (regOne!32719 (regTwo!32719 r!7292)))) b!6161914))

(assert (= (and b!6160675 ((_ is Star!16103) (regOne!32719 (regTwo!32719 r!7292)))) b!6161915))

(assert (= (and b!6160675 ((_ is Union!16103) (regOne!32719 (regTwo!32719 r!7292)))) b!6161916))

(declare-fun b!6161918 () Bool)

(declare-fun e!3754182 () Bool)

(declare-fun tp!1720510 () Bool)

(declare-fun tp!1720513 () Bool)

(assert (=> b!6161918 (= e!3754182 (and tp!1720510 tp!1720513))))

(declare-fun b!6161917 () Bool)

(assert (=> b!6161917 (= e!3754182 tp_is_empty!41459)))

(declare-fun b!6161920 () Bool)

(declare-fun tp!1720512 () Bool)

(declare-fun tp!1720514 () Bool)

(assert (=> b!6161920 (= e!3754182 (and tp!1720512 tp!1720514))))

(declare-fun b!6161919 () Bool)

(declare-fun tp!1720511 () Bool)

(assert (=> b!6161919 (= e!3754182 tp!1720511)))

(assert (=> b!6160675 (= tp!1720193 e!3754182)))

(assert (= (and b!6160675 ((_ is ElementMatch!16103) (regTwo!32719 (regTwo!32719 r!7292)))) b!6161917))

(assert (= (and b!6160675 ((_ is Concat!24948) (regTwo!32719 (regTwo!32719 r!7292)))) b!6161918))

(assert (= (and b!6160675 ((_ is Star!16103) (regTwo!32719 (regTwo!32719 r!7292)))) b!6161919))

(assert (= (and b!6160675 ((_ is Union!16103) (regTwo!32719 (regTwo!32719 r!7292)))) b!6161920))

(declare-fun b!6161922 () Bool)

(declare-fun e!3754183 () Bool)

(declare-fun tp!1720515 () Bool)

(declare-fun tp!1720518 () Bool)

(assert (=> b!6161922 (= e!3754183 (and tp!1720515 tp!1720518))))

(declare-fun b!6161921 () Bool)

(assert (=> b!6161921 (= e!3754183 tp_is_empty!41459)))

(declare-fun b!6161924 () Bool)

(declare-fun tp!1720517 () Bool)

(declare-fun tp!1720519 () Bool)

(assert (=> b!6161924 (= e!3754183 (and tp!1720517 tp!1720519))))

(declare-fun b!6161923 () Bool)

(declare-fun tp!1720516 () Bool)

(assert (=> b!6161923 (= e!3754183 tp!1720516)))

(assert (=> b!6160666 (= tp!1720180 e!3754183)))

(assert (= (and b!6160666 ((_ is ElementMatch!16103) (reg!16432 (regTwo!32718 r!7292)))) b!6161921))

(assert (= (and b!6160666 ((_ is Concat!24948) (reg!16432 (regTwo!32718 r!7292)))) b!6161922))

(assert (= (and b!6160666 ((_ is Star!16103) (reg!16432 (regTwo!32718 r!7292)))) b!6161923))

(assert (= (and b!6160666 ((_ is Union!16103) (reg!16432 (regTwo!32718 r!7292)))) b!6161924))

(declare-fun b!6161925 () Bool)

(declare-fun e!3754184 () Bool)

(declare-fun tp!1720520 () Bool)

(declare-fun tp!1720521 () Bool)

(assert (=> b!6161925 (= e!3754184 (and tp!1720520 tp!1720521))))

(assert (=> b!6160694 (= tp!1720209 e!3754184)))

(assert (= (and b!6160694 ((_ is Cons!64484) (exprs!5987 (h!70933 (t!378105 zl!343))))) b!6161925))

(declare-fun condSetEmpty!41760 () Bool)

(assert (=> setNonEmpty!41748 (= condSetEmpty!41760 (= setRest!41748 ((as const (Array Context!10974 Bool)) false)))))

(declare-fun setRes!41760 () Bool)

(assert (=> setNonEmpty!41748 (= tp!1720200 setRes!41760)))

(declare-fun setIsEmpty!41760 () Bool)

(assert (=> setIsEmpty!41760 setRes!41760))

(declare-fun setElem!41760 () Context!10974)

(declare-fun e!3754185 () Bool)

(declare-fun tp!1720522 () Bool)

(declare-fun setNonEmpty!41760 () Bool)

(assert (=> setNonEmpty!41760 (= setRes!41760 (and tp!1720522 (inv!83504 setElem!41760) e!3754185))))

(declare-fun setRest!41760 () (InoxSet Context!10974))

(assert (=> setNonEmpty!41760 (= setRest!41748 ((_ map or) (store ((as const (Array Context!10974 Bool)) false) setElem!41760 true) setRest!41760))))

(declare-fun b!6161926 () Bool)

(declare-fun tp!1720523 () Bool)

(assert (=> b!6161926 (= e!3754185 tp!1720523)))

(assert (= (and setNonEmpty!41748 condSetEmpty!41760) setIsEmpty!41760))

(assert (= (and setNonEmpty!41748 (not condSetEmpty!41760)) setNonEmpty!41760))

(assert (= setNonEmpty!41760 b!6161926))

(declare-fun m!6999912 () Bool)

(assert (=> setNonEmpty!41760 m!6999912))

(declare-fun b!6161927 () Bool)

(declare-fun e!3754186 () Bool)

(declare-fun tp!1720524 () Bool)

(declare-fun tp!1720525 () Bool)

(assert (=> b!6161927 (= e!3754186 (and tp!1720524 tp!1720525))))

(assert (=> b!6160681 (= tp!1720201 e!3754186)))

(assert (= (and b!6160681 ((_ is Cons!64484) (exprs!5987 setElem!41748))) b!6161927))

(declare-fun b!6161929 () Bool)

(declare-fun e!3754187 () Bool)

(declare-fun tp!1720526 () Bool)

(declare-fun tp!1720529 () Bool)

(assert (=> b!6161929 (= e!3754187 (and tp!1720526 tp!1720529))))

(declare-fun b!6161928 () Bool)

(assert (=> b!6161928 (= e!3754187 tp_is_empty!41459)))

(declare-fun b!6161931 () Bool)

(declare-fun tp!1720528 () Bool)

(declare-fun tp!1720530 () Bool)

(assert (=> b!6161931 (= e!3754187 (and tp!1720528 tp!1720530))))

(declare-fun b!6161930 () Bool)

(declare-fun tp!1720527 () Bool)

(assert (=> b!6161930 (= e!3754187 tp!1720527)))

(assert (=> b!6160673 (= tp!1720189 e!3754187)))

(assert (= (and b!6160673 ((_ is ElementMatch!16103) (regOne!32718 (regTwo!32719 r!7292)))) b!6161928))

(assert (= (and b!6160673 ((_ is Concat!24948) (regOne!32718 (regTwo!32719 r!7292)))) b!6161929))

(assert (= (and b!6160673 ((_ is Star!16103) (regOne!32718 (regTwo!32719 r!7292)))) b!6161930))

(assert (= (and b!6160673 ((_ is Union!16103) (regOne!32718 (regTwo!32719 r!7292)))) b!6161931))

(declare-fun b!6161933 () Bool)

(declare-fun e!3754188 () Bool)

(declare-fun tp!1720531 () Bool)

(declare-fun tp!1720534 () Bool)

(assert (=> b!6161933 (= e!3754188 (and tp!1720531 tp!1720534))))

(declare-fun b!6161932 () Bool)

(assert (=> b!6161932 (= e!3754188 tp_is_empty!41459)))

(declare-fun b!6161935 () Bool)

(declare-fun tp!1720533 () Bool)

(declare-fun tp!1720535 () Bool)

(assert (=> b!6161935 (= e!3754188 (and tp!1720533 tp!1720535))))

(declare-fun b!6161934 () Bool)

(declare-fun tp!1720532 () Bool)

(assert (=> b!6161934 (= e!3754188 tp!1720532)))

(assert (=> b!6160673 (= tp!1720192 e!3754188)))

(assert (= (and b!6160673 ((_ is ElementMatch!16103) (regTwo!32718 (regTwo!32719 r!7292)))) b!6161932))

(assert (= (and b!6160673 ((_ is Concat!24948) (regTwo!32718 (regTwo!32719 r!7292)))) b!6161933))

(assert (= (and b!6160673 ((_ is Star!16103) (regTwo!32718 (regTwo!32719 r!7292)))) b!6161934))

(assert (= (and b!6160673 ((_ is Union!16103) (regTwo!32718 (regTwo!32719 r!7292)))) b!6161935))

(declare-fun b!6161936 () Bool)

(declare-fun e!3754189 () Bool)

(declare-fun tp!1720536 () Bool)

(assert (=> b!6161936 (= e!3754189 (and tp_is_empty!41459 tp!1720536))))

(assert (=> b!6160686 (= tp!1720204 e!3754189)))

(assert (= (and b!6160686 ((_ is Cons!64486) (t!378106 (t!378106 s!2326)))) b!6161936))

(declare-fun b!6161938 () Bool)

(declare-fun e!3754191 () Bool)

(declare-fun tp!1720537 () Bool)

(assert (=> b!6161938 (= e!3754191 tp!1720537)))

(declare-fun e!3754190 () Bool)

(declare-fun tp!1720538 () Bool)

(declare-fun b!6161937 () Bool)

(assert (=> b!6161937 (= e!3754190 (and (inv!83504 (h!70933 (t!378105 (t!378105 zl!343)))) e!3754191 tp!1720538))))

(assert (=> b!6160693 (= tp!1720210 e!3754190)))

(assert (= b!6161937 b!6161938))

(assert (= (and b!6160693 ((_ is Cons!64485) (t!378105 (t!378105 zl!343)))) b!6161937))

(declare-fun m!6999914 () Bool)

(assert (=> b!6161937 m!6999914))

(declare-fun b_lambda!234571 () Bool)

(assert (= b_lambda!234567 (or b!6159868 b_lambda!234571)))

(assert (=> d!1930945 d!1930415))

(declare-fun b_lambda!234573 () Bool)

(assert (= b_lambda!234541 (or b!6159868 b_lambda!234573)))

(assert (=> d!1930773 d!1930417))

(declare-fun b_lambda!234575 () Bool)

(assert (= b_lambda!234533 (or b!6159868 b_lambda!234575)))

(assert (=> d!1930659 d!1930413))

(declare-fun b_lambda!234577 () Bool)

(assert (= b_lambda!234565 (or d!1930411 b_lambda!234577)))

(declare-fun bs!1527366 () Bool)

(declare-fun d!1931007 () Bool)

(assert (= bs!1527366 (and d!1931007 d!1930411)))

(assert (=> bs!1527366 (= (dynLambda!25426 lambda!336183 (h!70932 (exprs!5987 (h!70933 zl!343)))) (validRegex!7839 (h!70932 (exprs!5987 (h!70933 zl!343)))))))

(declare-fun m!6999916 () Bool)

(assert (=> bs!1527366 m!6999916))

(assert (=> b!6161647 d!1931007))

(declare-fun b_lambda!234579 () Bool)

(assert (= b_lambda!234537 (or d!1930361 b_lambda!234579)))

(declare-fun bs!1527367 () Bool)

(declare-fun d!1931009 () Bool)

(assert (= bs!1527367 (and d!1931009 d!1930361)))

(assert (=> bs!1527367 (= (dynLambda!25426 lambda!336170 (h!70932 (exprs!5987 lt!2335742))) (validRegex!7839 (h!70932 (exprs!5987 lt!2335742))))))

(declare-fun m!6999918 () Bool)

(assert (=> bs!1527367 m!6999918))

(assert (=> b!6161106 d!1931009))

(declare-fun b_lambda!234581 () Bool)

(assert (= b_lambda!234569 (or d!1930353 b_lambda!234581)))

(declare-fun bs!1527368 () Bool)

(declare-fun d!1931011 () Bool)

(assert (= bs!1527368 (and d!1931011 d!1930353)))

(assert (=> bs!1527368 (= (dynLambda!25426 lambda!336163 (h!70932 (unfocusZipperList!1524 zl!343))) (validRegex!7839 (h!70932 (unfocusZipperList!1524 zl!343))))))

(declare-fun m!6999920 () Bool)

(assert (=> bs!1527368 m!6999920))

(assert (=> b!6161689 d!1931011))

(declare-fun b_lambda!234583 () Bool)

(assert (= b_lambda!234535 (or d!1930409 b_lambda!234583)))

(declare-fun bs!1527369 () Bool)

(declare-fun d!1931013 () Bool)

(assert (= bs!1527369 (and d!1931013 d!1930409)))

(assert (=> bs!1527369 (= (dynLambda!25426 lambda!336182 (h!70932 (exprs!5987 (h!70933 zl!343)))) (validRegex!7839 (h!70932 (exprs!5987 (h!70933 zl!343)))))))

(assert (=> bs!1527369 m!6999916))

(assert (=> b!6161104 d!1931013))

(declare-fun b_lambda!234585 () Bool)

(assert (= b_lambda!234529 (or d!1930355 b_lambda!234585)))

(declare-fun bs!1527370 () Bool)

(declare-fun d!1931015 () Bool)

(assert (= bs!1527370 (and d!1931015 d!1930355)))

(assert (=> bs!1527370 (= (dynLambda!25426 lambda!336166 (h!70932 lt!2335842)) (validRegex!7839 (h!70932 lt!2335842)))))

(declare-fun m!6999922 () Bool)

(assert (=> bs!1527370 m!6999922))

(assert (=> b!6161033 d!1931015))

(declare-fun b_lambda!234587 () Bool)

(assert (= b_lambda!234539 (or d!1930357 b_lambda!234587)))

(declare-fun bs!1527371 () Bool)

(declare-fun d!1931017 () Bool)

(assert (= bs!1527371 (and d!1931017 d!1930357)))

(assert (=> bs!1527371 (= (dynLambda!25426 lambda!336169 (h!70932 (exprs!5987 setElem!41742))) (validRegex!7839 (h!70932 (exprs!5987 setElem!41742))))))

(declare-fun m!6999924 () Bool)

(assert (=> bs!1527371 m!6999924))

(assert (=> b!6161190 d!1931017))

(check-sat (not b!6161906) (not b!6161454) (not d!1930927) (not b!6161885) (not bm!513132) (not bm!513235) (not d!1930735) (not b!6161912) (not b!6161864) (not b!6161853) (not d!1930717) (not b!6161902) (not b!6161206) (not bm!513232) (not b!6161264) (not b!6161342) (not d!1930945) (not b!6161139) (not b!6161136) (not b!6161920) (not d!1930803) (not b!6161784) (not d!1930823) (not b!6161837) (not b!6161385) (not b!6161833) (not d!1930825) (not d!1930909) (not bm!513220) (not b!6161453) (not b!6161794) (not d!1930905) (not d!1930861) (not b!6161734) (not b!6161398) (not b!6161841) (not bm!513131) (not bm!513211) (not b!6161391) (not b!6161931) (not b!6161476) (not b!6161135) (not b_lambda!234575) (not bm!513166) (not bm!513259) (not d!1930797) (not b!6161080) (not d!1930719) (not d!1930859) (not d!1930891) (not b!6161865) (not b!6161107) (not bm!513156) (not b!6161898) (not bm!513090) (not b!6161787) (not b!6160923) (not b!6161908) (not bm!513222) (not b!6161895) (not d!1930835) (not bm!513242) (not b!6161838) (not b!6161873) tp_is_empty!41459 (not b!6161265) (not b!6161189) (not b!6161934) (not d!1930935) (not bs!1527369) (not b!6161857) (not bm!513185) (not b!6161830) (not d!1930929) (not setNonEmpty!41760) (not bm!513158) (not b!6161175) (not b!6161918) (not bm!513184) (not d!1930743) (not bm!513217) (not d!1930701) (not b!6161936) (not b!6161463) (not b!6161656) (not b!6161887) (not bm!513207) (not b!6161660) (not d!1930741) (not b!6161143) (not bs!1527370) (not b!6161663) (not b!6161875) (not setNonEmpty!41759) (not b!6161093) (not bm!513243) (not d!1930999) (not d!1930961) (not b!6161850) (not b!6161324) (not b!6161903) (not bm!513157) (not bs!1527368) (not bm!513134) (not d!1930963) (not d!1930971) (not b!6161351) (not b!6161158) (not bm!513127) (not b!6161356) (not d!1930753) (not b!6161191) (not bs!1527366) (not b!6161174) (not d!1930641) (not b!6161162) (not d!1930863) (not d!1930665) (not bm!513273) (not b!6161156) (not b!6161722) (not b!6161160) (not bm!513101) (not b!6161915) (not b!6161081) (not b!6161883) (not bm!513252) (not b!6161916) (not d!1930973) (not b!6161655) (not b!6161866) (not b!6161890) (not d!1930875) (not b!6161871) (not b!6161935) (not b!6161894) (not d!1930977) (not b!6161161) (not b!6161204) (not b!6161832) (not d!1930919) (not b!6161899) (not d!1930951) (not b!6161782) (not d!1930587) (not bm!513228) (not b!6161893) (not b!6161205) (not b!6161848) (not b!6161911) (not b!6161854) (not b!6161769) (not d!1930801) (not b!6161224) (not b!6161618) (not b!6161200) (not b!6161357) (not bm!513253) (not d!1930565) (not b!6161384) (not b!6161844) (not b_lambda!234579) (not b!6161834) (not bm!513265) (not d!1930567) (not b!6161662) (not b!6161791) (not b!6161870) (not b_lambda!234577) (not b!6161879) (not b_lambda!234571) (not bm!513182) (not b!6161676) (not b!6161904) (not b_lambda!234583) (not b!6161867) (not bm!513237) (not b!6161642) (not b!6161836) (not b!6161810) (not b!6161326) (not b!6161881) (not bm!513141) (not b!6161034) (not b!6161840) (not b!6161789) (not d!1930691) (not b!6161858) (not b!6161270) (not b!6161035) (not b!6161891) (not b!6161399) (not b!6161491) (not d!1930599) (not b!6161869) (not b!6161327) (not b!6161196) (not b!6161862) (not bm!513143) (not d!1930925) (not d!1930745) (not b_lambda!234587) (not d!1930671) (not b!6161925) (not b!6161130) (not b_lambda!234573) (not b_lambda!234581) (not b!6161447) (not b!6161649) (not d!1930969) (not b!6161811) (not b!6161367) (not bm!513126) (not b!6161765) (not b!6161002) (not d!1930727) (not bm!513214) (not b!6161733) (not b!6161648) (not b!6161874) (not b!6161664) (not b!6161726) (not b!6161829) (not bm!513263) (not d!1930683) (not d!1930707) (not b!6161922) (not b!6161658) (not b!6161849) (not b!6161690) (not b!6161825) (not bm!513190) (not d!1930853) (not b!6161845) (not b!6161679) (not b!6161644) (not bm!513226) (not b!6161729) (not b!6161094) (not b!6161755) (not b!6161394) (not b!6161828) (not b!6161926) (not b!6161725) (not bm!513267) (not d!1930749) (not b!6161207) (not bm!513169) (not b_lambda!234585) (not b!6161878) (not d!1930733) (not b!6161715) (not b!6161929) (not b!6161877) (not bm!513204) (not b!6161122) (not b!6161508) (not d!1930923) (not b!6161846) (not b!6161257) (not b!6161369) (not setNonEmpty!41757) (not bm!513219) (not d!1930773) (not b!6161225) (not b!6161826) (not b!6161897) (not b!6161387) (not b!6161549) (not bm!513245) (not b!6161645) (not b!6161889) (not d!1930933) (not d!1930731) (not bm!513206) (not b!6160922) (not bm!513168) (not b_lambda!234513) (not bm!513092) (not b!6161786) (not b!6161793) (not b!6161652) (not d!1930885) (not d!1930983) (not b!6161907) (not d!1930617) (not b!6161910) (not b!6161852) (not b!6161121) (not bm!513236) (not b!6161641) (not b!6161821) (not b!6161842) (not b!6161462) (not bm!513234) (not d!1930821) (not b!6161927) (not b!6161805) (not bm!513093) (not b!6161824) (not bm!513254) (not b!6161930) (not b!6160972) (not d!1930659) (not b!6161900) (not b!6161643) (not b!6161933) (not b!6161741) (not bm!513246) (not b!6161856) (not b!6161739) (not bm!513167) (not b!6161761) (not b!6161315) (not b!6161193) (not bm!513208) (not d!1930831) (not bm!513179) (not b!6161255) (not b!6161706) (not bm!513240) (not d!1930975) (not b!6161687) (not d!1930655) (not b!6161919) (not b!6161352) (not d!1930597) (not b!6161646) (not bm!513164) (not b!6161923) (not bm!513229) (not b!6161159) (not bm!513260) (not b!6161617) (not b!6161370) (not b!6161924) (not b_lambda!234511) (not bm!513247) (not b!6161788) (not setNonEmpty!41756) (not b!6161144) (not b!6161861) (not bm!513257) (not b!6161102) (not d!1930907) (not b!6161937) (not b!6161132) (not b!6161780) (not bm!513250) (not bm!513213) (not d!1930589) (not b!6161678) (not b!6161390) (not bm!513191) (not b!6161770) (not bm!513272) (not d!1930943) (not bm!513270) (not bm!513239) (not d!1930995) (not bm!513142) (not d!1930815) (not b!6161914) (not bs!1527371) (not b!6161003) (not bm!513266) (not d!1930651) (not b_lambda!234515) (not b!6161464) (not d!1930959) (not d!1930911) (not b!6161666) (not b!6161860) (not bm!513221) (not b!6161882) (not b!6161886) (not b!6161197) (not b!6161938) (not d!1930603) (not d!1930713) (not d!1930949) (not d!1930941) (not b!6161758) (not b!6161105) (not d!1930855) (not b!6161651) (not b!6161762) (not bs!1527367) (not b!6161272) (not b!6161163))
(check-sat)
