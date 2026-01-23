; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!569444 () Bool)

(assert start!569444)

(declare-fun b!5425041 () Bool)

(assert (=> b!5425041 true))

(assert (=> b!5425041 true))

(declare-fun lambda!284457 () Int)

(declare-fun lambda!284456 () Int)

(assert (=> b!5425041 (not (= lambda!284457 lambda!284456))))

(assert (=> b!5425041 true))

(assert (=> b!5425041 true))

(declare-fun b!5425023 () Bool)

(assert (=> b!5425023 true))

(declare-fun b!5425006 () Bool)

(declare-fun e!3361903 () Bool)

(declare-fun e!3361889 () Bool)

(assert (=> b!5425006 (= e!3361903 e!3361889)))

(declare-fun res!2308710 () Bool)

(assert (=> b!5425006 (=> res!2308710 e!3361889)))

(declare-datatypes ((C!30698 0))(
  ( (C!30699 (val!25051 Int)) )
))
(declare-datatypes ((List!61941 0))(
  ( (Nil!61817) (Cons!61817 (h!68265 C!30698) (t!375164 List!61941)) )
))
(declare-fun s!2326 () List!61941)

(declare-datatypes ((Regex!15214 0))(
  ( (ElementMatch!15214 (c!946160 C!30698)) (Concat!24059 (regOne!30940 Regex!15214) (regTwo!30940 Regex!15214)) (EmptyExpr!15214) (Star!15214 (reg!15543 Regex!15214)) (EmptyLang!15214) (Union!15214 (regOne!30941 Regex!15214) (regTwo!30941 Regex!15214)) )
))
(declare-datatypes ((List!61942 0))(
  ( (Nil!61818) (Cons!61818 (h!68266 Regex!15214) (t!375165 List!61942)) )
))
(declare-datatypes ((Context!9196 0))(
  ( (Context!9197 (exprs!5098 List!61942)) )
))
(declare-fun lt!2212915 () (Set Context!9196))

(declare-fun lt!2212903 () (Set Context!9196))

(declare-fun derivationStepZipper!1453 ((Set Context!9196) C!30698) (Set Context!9196))

(assert (=> b!5425006 (= res!2308710 (not (= lt!2212903 (derivationStepZipper!1453 lt!2212915 (h!68265 s!2326)))))))

(declare-fun lambda!284458 () Int)

(declare-fun lt!2212902 () Context!9196)

(declare-fun flatMap!941 ((Set Context!9196) Int) (Set Context!9196))

(declare-fun derivationStepZipperUp!586 (Context!9196 C!30698) (Set Context!9196))

(assert (=> b!5425006 (= (flatMap!941 lt!2212915 lambda!284458) (derivationStepZipperUp!586 lt!2212902 (h!68265 s!2326)))))

(declare-datatypes ((Unit!154378 0))(
  ( (Unit!154379) )
))
(declare-fun lt!2212900 () Unit!154378)

(declare-fun lemmaFlatMapOnSingletonSet!473 ((Set Context!9196) Context!9196 Int) Unit!154378)

(assert (=> b!5425006 (= lt!2212900 (lemmaFlatMapOnSingletonSet!473 lt!2212915 lt!2212902 lambda!284458))))

(assert (=> b!5425006 (= lt!2212915 (set.insert lt!2212902 (as set.empty (Set Context!9196))))))

(declare-fun b!5425007 () Bool)

(declare-fun e!3361900 () Bool)

(declare-fun e!3361887 () Bool)

(assert (=> b!5425007 (= e!3361900 e!3361887)))

(declare-fun res!2308716 () Bool)

(assert (=> b!5425007 (=> res!2308716 e!3361887)))

(declare-fun lt!2212922 () (Set Context!9196))

(declare-fun lt!2212911 () (Set Context!9196))

(assert (=> b!5425007 (= res!2308716 (not (= lt!2212922 lt!2212911)))))

(declare-fun r!7292 () Regex!15214)

(declare-fun lt!2212906 () Context!9196)

(declare-fun derivationStepZipperDown!662 (Regex!15214 Context!9196 C!30698) (Set Context!9196))

(assert (=> b!5425007 (= lt!2212911 (derivationStepZipperDown!662 (reg!15543 (regOne!30940 r!7292)) lt!2212906 (h!68265 s!2326)))))

(declare-fun lt!2212894 () List!61942)

(assert (=> b!5425007 (= lt!2212906 (Context!9197 lt!2212894))))

(declare-fun lt!2212926 () Regex!15214)

(declare-datatypes ((List!61943 0))(
  ( (Nil!61819) (Cons!61819 (h!68267 Context!9196) (t!375166 List!61943)) )
))
(declare-fun zl!343 () List!61943)

(assert (=> b!5425007 (= lt!2212894 (Cons!61818 lt!2212926 (t!375165 (exprs!5098 (h!68267 zl!343)))))))

(assert (=> b!5425007 (= lt!2212926 (Star!15214 (reg!15543 (regOne!30940 r!7292))))))

(declare-fun b!5425008 () Bool)

(declare-fun e!3361892 () Unit!154378)

(declare-fun Unit!154380 () Unit!154378)

(assert (=> b!5425008 (= e!3361892 Unit!154380)))

(declare-fun b!5425009 () Bool)

(declare-fun e!3361902 () Bool)

(declare-fun tp!1497286 () Bool)

(declare-fun tp!1497285 () Bool)

(assert (=> b!5425009 (= e!3361902 (and tp!1497286 tp!1497285))))

(declare-fun setIsEmpty!35366 () Bool)

(declare-fun setRes!35366 () Bool)

(assert (=> setIsEmpty!35366 setRes!35366))

(declare-fun b!5425010 () Bool)

(declare-fun res!2308705 () Bool)

(declare-fun e!3361904 () Bool)

(assert (=> b!5425010 (=> res!2308705 e!3361904)))

(assert (=> b!5425010 (= res!2308705 (not (is-Cons!61818 (exprs!5098 (h!68267 zl!343)))))))

(declare-fun tp!1497287 () Bool)

(declare-fun setNonEmpty!35366 () Bool)

(declare-fun setElem!35366 () Context!9196)

(declare-fun e!3361891 () Bool)

(declare-fun inv!81283 (Context!9196) Bool)

(assert (=> setNonEmpty!35366 (= setRes!35366 (and tp!1497287 (inv!81283 setElem!35366) e!3361891))))

(declare-fun z!1189 () (Set Context!9196))

(declare-fun setRest!35366 () (Set Context!9196))

(assert (=> setNonEmpty!35366 (= z!1189 (set.union (set.insert setElem!35366 (as set.empty (Set Context!9196))) setRest!35366))))

(declare-fun res!2308703 () Bool)

(declare-fun e!3361894 () Bool)

(assert (=> start!569444 (=> (not res!2308703) (not e!3361894))))

(declare-fun validRegex!6950 (Regex!15214) Bool)

(assert (=> start!569444 (= res!2308703 (validRegex!6950 r!7292))))

(assert (=> start!569444 e!3361894))

(assert (=> start!569444 e!3361902))

(declare-fun condSetEmpty!35366 () Bool)

(assert (=> start!569444 (= condSetEmpty!35366 (= z!1189 (as set.empty (Set Context!9196))))))

(assert (=> start!569444 setRes!35366))

(declare-fun e!3361899 () Bool)

(assert (=> start!569444 e!3361899))

(declare-fun e!3361908 () Bool)

(assert (=> start!569444 e!3361908))

(declare-fun b!5425011 () Bool)

(declare-fun e!3361897 () Bool)

(declare-fun e!3361895 () Bool)

(assert (=> b!5425011 (= e!3361897 e!3361895)))

(declare-fun res!2308700 () Bool)

(assert (=> b!5425011 (=> res!2308700 e!3361895)))

(declare-fun lt!2212913 () Context!9196)

(declare-fun lt!2212910 () Regex!15214)

(declare-fun unfocusZipper!956 (List!61943) Regex!15214)

(assert (=> b!5425011 (= res!2308700 (not (= (unfocusZipper!956 (Cons!61819 lt!2212913 Nil!61819)) lt!2212910)))))

(declare-fun lt!2212921 () Regex!15214)

(assert (=> b!5425011 (= lt!2212910 (Concat!24059 (reg!15543 (regOne!30940 r!7292)) lt!2212921))))

(declare-fun b!5425012 () Bool)

(declare-fun res!2308712 () Bool)

(declare-fun e!3361898 () Bool)

(assert (=> b!5425012 (=> res!2308712 e!3361898)))

(assert (=> b!5425012 (= res!2308712 (not (= (unfocusZipper!956 (Cons!61819 lt!2212906 Nil!61819)) lt!2212921)))))

(declare-fun b!5425013 () Bool)

(declare-fun tp_is_empty!39681 () Bool)

(declare-fun tp!1497283 () Bool)

(assert (=> b!5425013 (= e!3361908 (and tp_is_empty!39681 tp!1497283))))

(declare-fun b!5425014 () Bool)

(declare-fun res!2308715 () Bool)

(assert (=> b!5425014 (=> (not res!2308715) (not e!3361894))))

(declare-fun toList!8998 ((Set Context!9196)) List!61943)

(assert (=> b!5425014 (= res!2308715 (= (toList!8998 z!1189) zl!343))))

(declare-fun b!5425015 () Bool)

(declare-fun e!3361901 () Bool)

(declare-fun matchZipper!1458 ((Set Context!9196) List!61941) Bool)

(assert (=> b!5425015 (= e!3361901 (matchZipper!1458 lt!2212903 (t!375164 s!2326)))))

(declare-fun b!5425016 () Bool)

(declare-fun res!2308720 () Bool)

(assert (=> b!5425016 (=> res!2308720 e!3361904)))

(declare-fun generalisedConcat!883 (List!61942) Regex!15214)

(assert (=> b!5425016 (= res!2308720 (not (= r!7292 (generalisedConcat!883 (exprs!5098 (h!68267 zl!343))))))))

(declare-fun tp!1497291 () Bool)

(declare-fun b!5425017 () Bool)

(declare-fun e!3361893 () Bool)

(assert (=> b!5425017 (= e!3361899 (and (inv!81283 (h!68267 zl!343)) e!3361893 tp!1497291))))

(declare-fun b!5425018 () Bool)

(declare-fun e!3361907 () Bool)

(assert (=> b!5425018 (= e!3361907 (not e!3361904))))

(declare-fun res!2308719 () Bool)

(assert (=> b!5425018 (=> res!2308719 e!3361904)))

(assert (=> b!5425018 (= res!2308719 (not (is-Cons!61819 zl!343)))))

(declare-fun lt!2212905 () Bool)

(declare-fun matchRSpec!2317 (Regex!15214 List!61941) Bool)

(assert (=> b!5425018 (= lt!2212905 (matchRSpec!2317 r!7292 s!2326))))

(declare-fun matchR!7399 (Regex!15214 List!61941) Bool)

(assert (=> b!5425018 (= lt!2212905 (matchR!7399 r!7292 s!2326))))

(declare-fun lt!2212909 () Unit!154378)

(declare-fun mainMatchTheorem!2317 (Regex!15214 List!61941) Unit!154378)

(assert (=> b!5425018 (= lt!2212909 (mainMatchTheorem!2317 r!7292 s!2326))))

(declare-fun b!5425019 () Bool)

(declare-fun e!3361888 () Bool)

(assert (=> b!5425019 (= e!3361888 e!3361897)))

(declare-fun res!2308698 () Bool)

(assert (=> b!5425019 (=> res!2308698 e!3361897)))

(assert (=> b!5425019 (= res!2308698 (not (= r!7292 lt!2212921)))))

(assert (=> b!5425019 (= lt!2212921 (Concat!24059 lt!2212926 (regTwo!30940 r!7292)))))

(declare-fun b!5425020 () Bool)

(declare-fun tp!1497284 () Bool)

(assert (=> b!5425020 (= e!3361902 tp!1497284)))

(declare-fun b!5425021 () Bool)

(declare-fun e!3361896 () Bool)

(assert (=> b!5425021 (= e!3361896 (not (matchZipper!1458 lt!2212903 (t!375164 s!2326))))))

(declare-fun b!5425022 () Bool)

(declare-fun res!2308723 () Bool)

(assert (=> b!5425022 (=> res!2308723 e!3361888)))

(declare-fun lt!2212925 () (Set Context!9196))

(declare-fun lt!2212923 () (Set Context!9196))

(assert (=> b!5425022 (= res!2308723 (not (= (matchZipper!1458 lt!2212923 s!2326) (matchZipper!1458 lt!2212925 (t!375164 s!2326)))))))

(declare-fun e!3361890 () Bool)

(assert (=> b!5425023 (= e!3361890 e!3361900)))

(declare-fun res!2308707 () Bool)

(assert (=> b!5425023 (=> res!2308707 e!3361900)))

(assert (=> b!5425023 (= res!2308707 (or (and (is-ElementMatch!15214 (regOne!30940 r!7292)) (= (c!946160 (regOne!30940 r!7292)) (h!68265 s!2326))) (is-Union!15214 (regOne!30940 r!7292))))))

(declare-fun lt!2212908 () Unit!154378)

(assert (=> b!5425023 (= lt!2212908 e!3361892)))

(declare-fun c!946159 () Bool)

(declare-fun lt!2212893 () Bool)

(assert (=> b!5425023 (= c!946159 lt!2212893)))

(declare-fun nullable!5383 (Regex!15214) Bool)

(assert (=> b!5425023 (= lt!2212893 (nullable!5383 (h!68266 (exprs!5098 (h!68267 zl!343)))))))

(assert (=> b!5425023 (= (flatMap!941 z!1189 lambda!284458) (derivationStepZipperUp!586 (h!68267 zl!343) (h!68265 s!2326)))))

(declare-fun lt!2212897 () Unit!154378)

(assert (=> b!5425023 (= lt!2212897 (lemmaFlatMapOnSingletonSet!473 z!1189 (h!68267 zl!343) lambda!284458))))

(assert (=> b!5425023 (= lt!2212903 (derivationStepZipperUp!586 lt!2212902 (h!68265 s!2326)))))

(assert (=> b!5425023 (= lt!2212922 (derivationStepZipperDown!662 (h!68266 (exprs!5098 (h!68267 zl!343))) lt!2212902 (h!68265 s!2326)))))

(assert (=> b!5425023 (= lt!2212902 (Context!9197 (t!375165 (exprs!5098 (h!68267 zl!343)))))))

(declare-fun lt!2212898 () (Set Context!9196))

(assert (=> b!5425023 (= lt!2212898 (derivationStepZipperUp!586 (Context!9197 (Cons!61818 (h!68266 (exprs!5098 (h!68267 zl!343))) (t!375165 (exprs!5098 (h!68267 zl!343))))) (h!68265 s!2326)))))

(declare-fun b!5425024 () Bool)

(declare-fun res!2308725 () Bool)

(assert (=> b!5425024 (=> res!2308725 e!3361888)))

(declare-fun lt!2212919 () Regex!15214)

(assert (=> b!5425024 (= res!2308725 (not (= lt!2212919 r!7292)))))

(declare-fun b!5425025 () Bool)

(assert (=> b!5425025 (= e!3361895 e!3361898)))

(declare-fun res!2308708 () Bool)

(assert (=> b!5425025 (=> res!2308708 e!3361898)))

(declare-fun lt!2212904 () Context!9196)

(assert (=> b!5425025 (= res!2308708 (not (= (unfocusZipper!956 (Cons!61819 lt!2212904 Nil!61819)) (reg!15543 (regOne!30940 r!7292)))))))

(declare-fun lt!2212912 () (Set Context!9196))

(assert (=> b!5425025 (= (flatMap!941 lt!2212912 lambda!284458) (derivationStepZipperUp!586 lt!2212906 (h!68265 s!2326)))))

(declare-fun lt!2212899 () Unit!154378)

(assert (=> b!5425025 (= lt!2212899 (lemmaFlatMapOnSingletonSet!473 lt!2212912 lt!2212906 lambda!284458))))

(declare-fun lt!2212907 () (Set Context!9196))

(assert (=> b!5425025 (= (flatMap!941 lt!2212907 lambda!284458) (derivationStepZipperUp!586 lt!2212904 (h!68265 s!2326)))))

(declare-fun lt!2212901 () Unit!154378)

(assert (=> b!5425025 (= lt!2212901 (lemmaFlatMapOnSingletonSet!473 lt!2212907 lt!2212904 lambda!284458))))

(declare-fun lt!2212924 () (Set Context!9196))

(assert (=> b!5425025 (= lt!2212924 (derivationStepZipperUp!586 lt!2212906 (h!68265 s!2326)))))

(declare-fun lt!2212920 () (Set Context!9196))

(assert (=> b!5425025 (= lt!2212920 (derivationStepZipperUp!586 lt!2212904 (h!68265 s!2326)))))

(assert (=> b!5425025 (= lt!2212912 (set.insert lt!2212906 (as set.empty (Set Context!9196))))))

(assert (=> b!5425025 (= lt!2212907 (set.insert lt!2212904 (as set.empty (Set Context!9196))))))

(assert (=> b!5425025 (= lt!2212904 (Context!9197 (Cons!61818 (reg!15543 (regOne!30940 r!7292)) Nil!61818)))))

(declare-fun b!5425026 () Bool)

(declare-fun res!2308713 () Bool)

(assert (=> b!5425026 (=> res!2308713 e!3361904)))

(declare-fun generalisedUnion!1143 (List!61942) Regex!15214)

(declare-fun unfocusZipperList!656 (List!61943) List!61942)

(assert (=> b!5425026 (= res!2308713 (not (= r!7292 (generalisedUnion!1143 (unfocusZipperList!656 zl!343)))))))

(declare-fun b!5425027 () Bool)

(declare-fun res!2308726 () Bool)

(assert (=> b!5425027 (=> res!2308726 e!3361900)))

(declare-fun e!3361906 () Bool)

(assert (=> b!5425027 (= res!2308726 e!3361906)))

(declare-fun res!2308722 () Bool)

(assert (=> b!5425027 (=> (not res!2308722) (not e!3361906))))

(assert (=> b!5425027 (= res!2308722 (is-Concat!24059 (regOne!30940 r!7292)))))

(declare-fun b!5425028 () Bool)

(declare-fun tp!1497290 () Bool)

(assert (=> b!5425028 (= e!3361893 tp!1497290)))

(declare-fun b!5425029 () Bool)

(assert (=> b!5425029 (= e!3361902 tp_is_empty!39681)))

(declare-fun b!5425030 () Bool)

(assert (=> b!5425030 (= e!3361894 e!3361907)))

(declare-fun res!2308704 () Bool)

(assert (=> b!5425030 (=> (not res!2308704) (not e!3361907))))

(assert (=> b!5425030 (= res!2308704 (= r!7292 lt!2212919))))

(assert (=> b!5425030 (= lt!2212919 (unfocusZipper!956 zl!343))))

(declare-fun b!5425031 () Bool)

(declare-fun res!2308701 () Bool)

(assert (=> b!5425031 (=> res!2308701 e!3361904)))

(assert (=> b!5425031 (= res!2308701 (or (is-EmptyExpr!15214 r!7292) (is-EmptyLang!15214 r!7292) (is-ElementMatch!15214 r!7292) (is-Union!15214 r!7292) (not (is-Concat!24059 r!7292))))))

(declare-fun b!5425032 () Bool)

(declare-fun Unit!154381 () Unit!154378)

(assert (=> b!5425032 (= e!3361892 Unit!154381)))

(declare-fun lt!2212892 () Unit!154378)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!451 ((Set Context!9196) (Set Context!9196) List!61941) Unit!154378)

(assert (=> b!5425032 (= lt!2212892 (lemmaZipperConcatMatchesSameAsBothZippers!451 lt!2212922 lt!2212903 (t!375164 s!2326)))))

(declare-fun res!2308729 () Bool)

(assert (=> b!5425032 (= res!2308729 (matchZipper!1458 lt!2212922 (t!375164 s!2326)))))

(assert (=> b!5425032 (=> res!2308729 e!3361901)))

(assert (=> b!5425032 (= (matchZipper!1458 (set.union lt!2212922 lt!2212903) (t!375164 s!2326)) e!3361901)))

(declare-fun b!5425033 () Bool)

(declare-fun res!2308714 () Bool)

(assert (=> b!5425033 (=> res!2308714 e!3361903)))

(declare-fun lt!2212916 () Bool)

(assert (=> b!5425033 (= res!2308714 lt!2212916)))

(declare-fun b!5425034 () Bool)

(declare-fun e!3361905 () Bool)

(assert (=> b!5425034 (= e!3361898 e!3361905)))

(declare-fun res!2308721 () Bool)

(assert (=> b!5425034 (=> res!2308721 e!3361905)))

(assert (=> b!5425034 (= res!2308721 lt!2212905)))

(assert (=> b!5425034 (= (matchR!7399 lt!2212910 s!2326) (matchRSpec!2317 lt!2212910 s!2326))))

(declare-fun lt!2212895 () Unit!154378)

(assert (=> b!5425034 (= lt!2212895 (mainMatchTheorem!2317 lt!2212910 s!2326))))

(declare-fun b!5425035 () Bool)

(declare-fun tp!1497282 () Bool)

(assert (=> b!5425035 (= e!3361891 tp!1497282)))

(declare-fun b!5425036 () Bool)

(declare-fun res!2308709 () Bool)

(assert (=> b!5425036 (=> res!2308709 e!3361905)))

(assert (=> b!5425036 (= res!2308709 (not (matchZipper!1458 z!1189 s!2326)))))

(declare-fun b!5425037 () Bool)

(declare-fun res!2308717 () Bool)

(assert (=> b!5425037 (=> res!2308717 e!3361900)))

(assert (=> b!5425037 (= res!2308717 (or (is-Concat!24059 (regOne!30940 r!7292)) (not (is-Star!15214 (regOne!30940 r!7292)))))))

(declare-fun b!5425038 () Bool)

(declare-fun res!2308711 () Bool)

(assert (=> b!5425038 (=> res!2308711 e!3361905)))

(assert (=> b!5425038 (= res!2308711 (not lt!2212893))))

(declare-fun b!5425039 () Bool)

(declare-fun lambda!284459 () Int)

(declare-fun forall!14552 (List!61942 Int) Bool)

(assert (=> b!5425039 (= e!3361889 (forall!14552 (exprs!5098 (h!68267 zl!343)) lambda!284459))))

(declare-fun b!5425040 () Bool)

(declare-fun res!2308699 () Bool)

(assert (=> b!5425040 (=> res!2308699 e!3361904)))

(declare-fun isEmpty!33814 (List!61943) Bool)

(assert (=> b!5425040 (= res!2308699 (not (isEmpty!33814 (t!375166 zl!343))))))

(assert (=> b!5425041 (= e!3361904 e!3361890)))

(declare-fun res!2308706 () Bool)

(assert (=> b!5425041 (=> res!2308706 e!3361890)))

(declare-fun lt!2212914 () Bool)

(assert (=> b!5425041 (= res!2308706 (or (not (= lt!2212905 lt!2212914)) (is-Nil!61817 s!2326)))))

(declare-fun Exists!2395 (Int) Bool)

(assert (=> b!5425041 (= (Exists!2395 lambda!284456) (Exists!2395 lambda!284457))))

(declare-fun lt!2212891 () Unit!154378)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1049 (Regex!15214 Regex!15214 List!61941) Unit!154378)

(assert (=> b!5425041 (= lt!2212891 (lemmaExistCutMatchRandMatchRSpecEquivalent!1049 (regOne!30940 r!7292) (regTwo!30940 r!7292) s!2326))))

(assert (=> b!5425041 (= lt!2212914 (Exists!2395 lambda!284456))))

(declare-datatypes ((tuple2!64826 0))(
  ( (tuple2!64827 (_1!35716 List!61941) (_2!35716 List!61941)) )
))
(declare-datatypes ((Option!15325 0))(
  ( (None!15324) (Some!15324 (v!51353 tuple2!64826)) )
))
(declare-fun isDefined!12028 (Option!15325) Bool)

(declare-fun findConcatSeparation!1739 (Regex!15214 Regex!15214 List!61941 List!61941 List!61941) Option!15325)

(assert (=> b!5425041 (= lt!2212914 (isDefined!12028 (findConcatSeparation!1739 (regOne!30940 r!7292) (regTwo!30940 r!7292) Nil!61817 s!2326 s!2326)))))

(declare-fun lt!2212918 () Unit!154378)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1503 (Regex!15214 Regex!15214 List!61941) Unit!154378)

(assert (=> b!5425041 (= lt!2212918 (lemmaFindConcatSeparationEquivalentToExists!1503 (regOne!30940 r!7292) (regTwo!30940 r!7292) s!2326))))

(declare-fun b!5425042 () Bool)

(declare-fun tp!1497288 () Bool)

(declare-fun tp!1497289 () Bool)

(assert (=> b!5425042 (= e!3361902 (and tp!1497288 tp!1497289))))

(declare-fun b!5425043 () Bool)

(assert (=> b!5425043 (= e!3361906 (nullable!5383 (regOne!30940 (regOne!30940 r!7292))))))

(declare-fun b!5425044 () Bool)

(assert (=> b!5425044 (= e!3361905 e!3361903)))

(declare-fun res!2308727 () Bool)

(assert (=> b!5425044 (=> res!2308727 e!3361903)))

(assert (=> b!5425044 (= res!2308727 e!3361896)))

(declare-fun res!2308702 () Bool)

(assert (=> b!5425044 (=> (not res!2308702) (not e!3361896))))

(assert (=> b!5425044 (= res!2308702 (not lt!2212916))))

(assert (=> b!5425044 (= lt!2212916 (matchZipper!1458 lt!2212922 (t!375164 s!2326)))))

(declare-fun b!5425045 () Bool)

(assert (=> b!5425045 (= e!3361887 e!3361888)))

(declare-fun res!2308724 () Bool)

(assert (=> b!5425045 (=> res!2308724 e!3361888)))

(assert (=> b!5425045 (= res!2308724 (not (= lt!2212925 lt!2212911)))))

(assert (=> b!5425045 (= (flatMap!941 lt!2212923 lambda!284458) (derivationStepZipperUp!586 lt!2212913 (h!68265 s!2326)))))

(declare-fun lt!2212896 () Unit!154378)

(assert (=> b!5425045 (= lt!2212896 (lemmaFlatMapOnSingletonSet!473 lt!2212923 lt!2212913 lambda!284458))))

(declare-fun lt!2212917 () (Set Context!9196))

(assert (=> b!5425045 (= lt!2212917 (derivationStepZipperUp!586 lt!2212913 (h!68265 s!2326)))))

(assert (=> b!5425045 (= lt!2212925 (derivationStepZipper!1453 lt!2212923 (h!68265 s!2326)))))

(assert (=> b!5425045 (= lt!2212923 (set.insert lt!2212913 (as set.empty (Set Context!9196))))))

(assert (=> b!5425045 (= lt!2212913 (Context!9197 (Cons!61818 (reg!15543 (regOne!30940 r!7292)) lt!2212894)))))

(declare-fun b!5425046 () Bool)

(declare-fun res!2308728 () Bool)

(assert (=> b!5425046 (=> res!2308728 e!3361903)))

(assert (=> b!5425046 (= res!2308728 (not (matchZipper!1458 lt!2212903 (t!375164 s!2326))))))

(declare-fun b!5425047 () Bool)

(declare-fun res!2308718 () Bool)

(assert (=> b!5425047 (=> res!2308718 e!3361890)))

(declare-fun isEmpty!33815 (List!61942) Bool)

(assert (=> b!5425047 (= res!2308718 (isEmpty!33815 (t!375165 (exprs!5098 (h!68267 zl!343)))))))

(assert (= (and start!569444 res!2308703) b!5425014))

(assert (= (and b!5425014 res!2308715) b!5425030))

(assert (= (and b!5425030 res!2308704) b!5425018))

(assert (= (and b!5425018 (not res!2308719)) b!5425040))

(assert (= (and b!5425040 (not res!2308699)) b!5425016))

(assert (= (and b!5425016 (not res!2308720)) b!5425010))

(assert (= (and b!5425010 (not res!2308705)) b!5425026))

(assert (= (and b!5425026 (not res!2308713)) b!5425031))

(assert (= (and b!5425031 (not res!2308701)) b!5425041))

(assert (= (and b!5425041 (not res!2308706)) b!5425047))

(assert (= (and b!5425047 (not res!2308718)) b!5425023))

(assert (= (and b!5425023 c!946159) b!5425032))

(assert (= (and b!5425023 (not c!946159)) b!5425008))

(assert (= (and b!5425032 (not res!2308729)) b!5425015))

(assert (= (and b!5425023 (not res!2308707)) b!5425027))

(assert (= (and b!5425027 res!2308722) b!5425043))

(assert (= (and b!5425027 (not res!2308726)) b!5425037))

(assert (= (and b!5425037 (not res!2308717)) b!5425007))

(assert (= (and b!5425007 (not res!2308716)) b!5425045))

(assert (= (and b!5425045 (not res!2308724)) b!5425022))

(assert (= (and b!5425022 (not res!2308723)) b!5425024))

(assert (= (and b!5425024 (not res!2308725)) b!5425019))

(assert (= (and b!5425019 (not res!2308698)) b!5425011))

(assert (= (and b!5425011 (not res!2308700)) b!5425025))

(assert (= (and b!5425025 (not res!2308708)) b!5425012))

(assert (= (and b!5425012 (not res!2308712)) b!5425034))

(assert (= (and b!5425034 (not res!2308721)) b!5425036))

(assert (= (and b!5425036 (not res!2308709)) b!5425038))

(assert (= (and b!5425038 (not res!2308711)) b!5425044))

(assert (= (and b!5425044 res!2308702) b!5425021))

(assert (= (and b!5425044 (not res!2308727)) b!5425033))

(assert (= (and b!5425033 (not res!2308714)) b!5425046))

(assert (= (and b!5425046 (not res!2308728)) b!5425006))

(assert (= (and b!5425006 (not res!2308710)) b!5425039))

(assert (= (and start!569444 (is-ElementMatch!15214 r!7292)) b!5425029))

(assert (= (and start!569444 (is-Concat!24059 r!7292)) b!5425042))

(assert (= (and start!569444 (is-Star!15214 r!7292)) b!5425020))

(assert (= (and start!569444 (is-Union!15214 r!7292)) b!5425009))

(assert (= (and start!569444 condSetEmpty!35366) setIsEmpty!35366))

(assert (= (and start!569444 (not condSetEmpty!35366)) setNonEmpty!35366))

(assert (= setNonEmpty!35366 b!5425035))

(assert (= b!5425017 b!5425028))

(assert (= (and start!569444 (is-Cons!61819 zl!343)) b!5425017))

(assert (= (and start!569444 (is-Cons!61817 s!2326)) b!5425013))

(declare-fun m!6449128 () Bool)

(assert (=> b!5425018 m!6449128))

(declare-fun m!6449130 () Bool)

(assert (=> b!5425018 m!6449130))

(declare-fun m!6449132 () Bool)

(assert (=> b!5425018 m!6449132))

(declare-fun m!6449134 () Bool)

(assert (=> b!5425022 m!6449134))

(declare-fun m!6449136 () Bool)

(assert (=> b!5425022 m!6449136))

(declare-fun m!6449138 () Bool)

(assert (=> b!5425030 m!6449138))

(declare-fun m!6449140 () Bool)

(assert (=> b!5425025 m!6449140))

(declare-fun m!6449142 () Bool)

(assert (=> b!5425025 m!6449142))

(declare-fun m!6449144 () Bool)

(assert (=> b!5425025 m!6449144))

(declare-fun m!6449146 () Bool)

(assert (=> b!5425025 m!6449146))

(declare-fun m!6449148 () Bool)

(assert (=> b!5425025 m!6449148))

(declare-fun m!6449150 () Bool)

(assert (=> b!5425025 m!6449150))

(declare-fun m!6449152 () Bool)

(assert (=> b!5425025 m!6449152))

(declare-fun m!6449154 () Bool)

(assert (=> b!5425025 m!6449154))

(declare-fun m!6449156 () Bool)

(assert (=> b!5425025 m!6449156))

(declare-fun m!6449158 () Bool)

(assert (=> b!5425007 m!6449158))

(declare-fun m!6449160 () Bool)

(assert (=> b!5425014 m!6449160))

(declare-fun m!6449162 () Bool)

(assert (=> b!5425044 m!6449162))

(declare-fun m!6449164 () Bool)

(assert (=> b!5425040 m!6449164))

(declare-fun m!6449166 () Bool)

(assert (=> b!5425016 m!6449166))

(declare-fun m!6449168 () Bool)

(assert (=> b!5425046 m!6449168))

(declare-fun m!6449170 () Bool)

(assert (=> b!5425043 m!6449170))

(declare-fun m!6449172 () Bool)

(assert (=> start!569444 m!6449172))

(declare-fun m!6449174 () Bool)

(assert (=> b!5425039 m!6449174))

(declare-fun m!6449176 () Bool)

(assert (=> b!5425036 m!6449176))

(declare-fun m!6449178 () Bool)

(assert (=> b!5425045 m!6449178))

(declare-fun m!6449180 () Bool)

(assert (=> b!5425045 m!6449180))

(declare-fun m!6449182 () Bool)

(assert (=> b!5425045 m!6449182))

(declare-fun m!6449184 () Bool)

(assert (=> b!5425045 m!6449184))

(declare-fun m!6449186 () Bool)

(assert (=> b!5425045 m!6449186))

(declare-fun m!6449188 () Bool)

(assert (=> b!5425032 m!6449188))

(assert (=> b!5425032 m!6449162))

(declare-fun m!6449190 () Bool)

(assert (=> b!5425032 m!6449190))

(assert (=> b!5425015 m!6449168))

(declare-fun m!6449192 () Bool)

(assert (=> b!5425011 m!6449192))

(declare-fun m!6449194 () Bool)

(assert (=> b!5425047 m!6449194))

(declare-fun m!6449196 () Bool)

(assert (=> b!5425006 m!6449196))

(declare-fun m!6449198 () Bool)

(assert (=> b!5425006 m!6449198))

(declare-fun m!6449200 () Bool)

(assert (=> b!5425006 m!6449200))

(declare-fun m!6449202 () Bool)

(assert (=> b!5425006 m!6449202))

(declare-fun m!6449204 () Bool)

(assert (=> b!5425006 m!6449204))

(declare-fun m!6449206 () Bool)

(assert (=> b!5425026 m!6449206))

(assert (=> b!5425026 m!6449206))

(declare-fun m!6449208 () Bool)

(assert (=> b!5425026 m!6449208))

(declare-fun m!6449210 () Bool)

(assert (=> b!5425023 m!6449210))

(declare-fun m!6449212 () Bool)

(assert (=> b!5425023 m!6449212))

(declare-fun m!6449214 () Bool)

(assert (=> b!5425023 m!6449214))

(declare-fun m!6449216 () Bool)

(assert (=> b!5425023 m!6449216))

(assert (=> b!5425023 m!6449200))

(declare-fun m!6449218 () Bool)

(assert (=> b!5425023 m!6449218))

(declare-fun m!6449220 () Bool)

(assert (=> b!5425023 m!6449220))

(declare-fun m!6449222 () Bool)

(assert (=> b!5425034 m!6449222))

(declare-fun m!6449224 () Bool)

(assert (=> b!5425034 m!6449224))

(declare-fun m!6449226 () Bool)

(assert (=> b!5425034 m!6449226))

(declare-fun m!6449228 () Bool)

(assert (=> b!5425041 m!6449228))

(declare-fun m!6449230 () Bool)

(assert (=> b!5425041 m!6449230))

(declare-fun m!6449232 () Bool)

(assert (=> b!5425041 m!6449232))

(declare-fun m!6449234 () Bool)

(assert (=> b!5425041 m!6449234))

(assert (=> b!5425041 m!6449232))

(declare-fun m!6449236 () Bool)

(assert (=> b!5425041 m!6449236))

(assert (=> b!5425041 m!6449228))

(declare-fun m!6449238 () Bool)

(assert (=> b!5425041 m!6449238))

(declare-fun m!6449240 () Bool)

(assert (=> b!5425012 m!6449240))

(declare-fun m!6449242 () Bool)

(assert (=> setNonEmpty!35366 m!6449242))

(assert (=> b!5425021 m!6449168))

(declare-fun m!6449244 () Bool)

(assert (=> b!5425017 m!6449244))

(push 1)

(assert (not b!5425018))

(assert (not b!5425015))

(assert (not b!5425046))

(assert (not b!5425044))

(assert (not b!5425007))

(assert (not b!5425030))

(assert (not b!5425022))

(assert (not b!5425017))

(assert (not b!5425043))

(assert (not b!5425023))

(assert (not b!5425012))

(assert (not b!5425009))

(assert (not b!5425013))

(assert (not b!5425032))

(assert (not b!5425039))

(assert (not b!5425025))

(assert (not b!5425041))

(assert (not b!5425011))

(assert (not b!5425014))

(assert (not b!5425016))

(assert (not b!5425034))

(assert (not b!5425020))

(assert (not b!5425026))

(assert tp_is_empty!39681)

(assert (not b!5425042))

(assert (not b!5425006))

(assert (not b!5425040))

(assert (not start!569444))

(assert (not b!5425028))

(assert (not b!5425045))

(assert (not b!5425021))

(assert (not b!5425035))

(assert (not setNonEmpty!35366))

(assert (not b!5425036))

(assert (not b!5425047))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5425208 () Bool)

(declare-fun e!3361988 () (Set Context!9196))

(declare-fun e!3361987 () (Set Context!9196))

(assert (=> b!5425208 (= e!3361988 e!3361987)))

(declare-fun c!946181 () Bool)

(assert (=> b!5425208 (= c!946181 (is-Cons!61818 (exprs!5098 lt!2212902)))))

(declare-fun d!1730151 () Bool)

(declare-fun c!946180 () Bool)

(declare-fun e!3361989 () Bool)

(assert (=> d!1730151 (= c!946180 e!3361989)))

(declare-fun res!2308840 () Bool)

(assert (=> d!1730151 (=> (not res!2308840) (not e!3361989))))

(assert (=> d!1730151 (= res!2308840 (is-Cons!61818 (exprs!5098 lt!2212902)))))

(assert (=> d!1730151 (= (derivationStepZipperUp!586 lt!2212902 (h!68265 s!2326)) e!3361988)))

(declare-fun b!5425209 () Bool)

(declare-fun call!388201 () (Set Context!9196))

(assert (=> b!5425209 (= e!3361987 call!388201)))

(declare-fun b!5425210 () Bool)

(assert (=> b!5425210 (= e!3361987 (as set.empty (Set Context!9196)))))

(declare-fun b!5425211 () Bool)

(assert (=> b!5425211 (= e!3361988 (set.union call!388201 (derivationStepZipperUp!586 (Context!9197 (t!375165 (exprs!5098 lt!2212902))) (h!68265 s!2326))))))

(declare-fun bm!388196 () Bool)

(assert (=> bm!388196 (= call!388201 (derivationStepZipperDown!662 (h!68266 (exprs!5098 lt!2212902)) (Context!9197 (t!375165 (exprs!5098 lt!2212902))) (h!68265 s!2326)))))

(declare-fun b!5425212 () Bool)

(assert (=> b!5425212 (= e!3361989 (nullable!5383 (h!68266 (exprs!5098 lt!2212902))))))

(assert (= (and d!1730151 res!2308840) b!5425212))

(assert (= (and d!1730151 c!946180) b!5425211))

(assert (= (and d!1730151 (not c!946180)) b!5425208))

(assert (= (and b!5425208 c!946181) b!5425209))

(assert (= (and b!5425208 (not c!946181)) b!5425210))

(assert (= (or b!5425211 b!5425209) bm!388196))

(declare-fun m!6449364 () Bool)

(assert (=> b!5425211 m!6449364))

(declare-fun m!6449366 () Bool)

(assert (=> bm!388196 m!6449366))

(declare-fun m!6449368 () Bool)

(assert (=> b!5425212 m!6449368))

(assert (=> b!5425023 d!1730151))

(declare-fun d!1730153 () Bool)

(declare-fun nullableFct!1610 (Regex!15214) Bool)

(assert (=> d!1730153 (= (nullable!5383 (h!68266 (exprs!5098 (h!68267 zl!343)))) (nullableFct!1610 (h!68266 (exprs!5098 (h!68267 zl!343)))))))

(declare-fun bs!1253255 () Bool)

(assert (= bs!1253255 d!1730153))

(declare-fun m!6449370 () Bool)

(assert (=> bs!1253255 m!6449370))

(assert (=> b!5425023 d!1730153))

(declare-fun b!5425213 () Bool)

(declare-fun e!3361991 () (Set Context!9196))

(declare-fun e!3361990 () (Set Context!9196))

(assert (=> b!5425213 (= e!3361991 e!3361990)))

(declare-fun c!946183 () Bool)

(assert (=> b!5425213 (= c!946183 (is-Cons!61818 (exprs!5098 (Context!9197 (Cons!61818 (h!68266 (exprs!5098 (h!68267 zl!343))) (t!375165 (exprs!5098 (h!68267 zl!343))))))))))

(declare-fun d!1730155 () Bool)

(declare-fun c!946182 () Bool)

(declare-fun e!3361992 () Bool)

(assert (=> d!1730155 (= c!946182 e!3361992)))

(declare-fun res!2308841 () Bool)

(assert (=> d!1730155 (=> (not res!2308841) (not e!3361992))))

(assert (=> d!1730155 (= res!2308841 (is-Cons!61818 (exprs!5098 (Context!9197 (Cons!61818 (h!68266 (exprs!5098 (h!68267 zl!343))) (t!375165 (exprs!5098 (h!68267 zl!343))))))))))

(assert (=> d!1730155 (= (derivationStepZipperUp!586 (Context!9197 (Cons!61818 (h!68266 (exprs!5098 (h!68267 zl!343))) (t!375165 (exprs!5098 (h!68267 zl!343))))) (h!68265 s!2326)) e!3361991)))

(declare-fun b!5425214 () Bool)

(declare-fun call!388202 () (Set Context!9196))

(assert (=> b!5425214 (= e!3361990 call!388202)))

(declare-fun b!5425215 () Bool)

(assert (=> b!5425215 (= e!3361990 (as set.empty (Set Context!9196)))))

(declare-fun b!5425216 () Bool)

(assert (=> b!5425216 (= e!3361991 (set.union call!388202 (derivationStepZipperUp!586 (Context!9197 (t!375165 (exprs!5098 (Context!9197 (Cons!61818 (h!68266 (exprs!5098 (h!68267 zl!343))) (t!375165 (exprs!5098 (h!68267 zl!343)))))))) (h!68265 s!2326))))))

(declare-fun bm!388197 () Bool)

(assert (=> bm!388197 (= call!388202 (derivationStepZipperDown!662 (h!68266 (exprs!5098 (Context!9197 (Cons!61818 (h!68266 (exprs!5098 (h!68267 zl!343))) (t!375165 (exprs!5098 (h!68267 zl!343))))))) (Context!9197 (t!375165 (exprs!5098 (Context!9197 (Cons!61818 (h!68266 (exprs!5098 (h!68267 zl!343))) (t!375165 (exprs!5098 (h!68267 zl!343)))))))) (h!68265 s!2326)))))

(declare-fun b!5425217 () Bool)

(assert (=> b!5425217 (= e!3361992 (nullable!5383 (h!68266 (exprs!5098 (Context!9197 (Cons!61818 (h!68266 (exprs!5098 (h!68267 zl!343))) (t!375165 (exprs!5098 (h!68267 zl!343)))))))))))

(assert (= (and d!1730155 res!2308841) b!5425217))

(assert (= (and d!1730155 c!946182) b!5425216))

(assert (= (and d!1730155 (not c!946182)) b!5425213))

(assert (= (and b!5425213 c!946183) b!5425214))

(assert (= (and b!5425213 (not c!946183)) b!5425215))

(assert (= (or b!5425216 b!5425214) bm!388197))

(declare-fun m!6449372 () Bool)

(assert (=> b!5425216 m!6449372))

(declare-fun m!6449374 () Bool)

(assert (=> bm!388197 m!6449374))

(declare-fun m!6449376 () Bool)

(assert (=> b!5425217 m!6449376))

(assert (=> b!5425023 d!1730155))

(declare-fun b!5425240 () Bool)

(declare-fun c!946198 () Bool)

(declare-fun e!3362006 () Bool)

(assert (=> b!5425240 (= c!946198 e!3362006)))

(declare-fun res!2308844 () Bool)

(assert (=> b!5425240 (=> (not res!2308844) (not e!3362006))))

(assert (=> b!5425240 (= res!2308844 (is-Concat!24059 (h!68266 (exprs!5098 (h!68267 zl!343)))))))

(declare-fun e!3362009 () (Set Context!9196))

(declare-fun e!3362008 () (Set Context!9196))

(assert (=> b!5425240 (= e!3362009 e!3362008)))

(declare-fun b!5425241 () Bool)

(declare-fun call!388219 () (Set Context!9196))

(declare-fun call!388220 () (Set Context!9196))

(assert (=> b!5425241 (= e!3362008 (set.union call!388219 call!388220))))

(declare-fun bm!388210 () Bool)

(declare-fun call!388217 () (Set Context!9196))

(assert (=> bm!388210 (= call!388217 call!388220)))

(declare-fun bm!388211 () Bool)

(declare-fun call!388215 () List!61942)

(declare-fun c!946195 () Bool)

(assert (=> bm!388211 (= call!388219 (derivationStepZipperDown!662 (ite c!946195 (regOne!30941 (h!68266 (exprs!5098 (h!68267 zl!343)))) (regOne!30940 (h!68266 (exprs!5098 (h!68267 zl!343))))) (ite c!946195 lt!2212902 (Context!9197 call!388215)) (h!68265 s!2326)))))

(declare-fun b!5425242 () Bool)

(declare-fun e!3362005 () (Set Context!9196))

(assert (=> b!5425242 (= e!3362005 call!388217)))

(declare-fun d!1730157 () Bool)

(declare-fun c!946196 () Bool)

(assert (=> d!1730157 (= c!946196 (and (is-ElementMatch!15214 (h!68266 (exprs!5098 (h!68267 zl!343)))) (= (c!946160 (h!68266 (exprs!5098 (h!68267 zl!343)))) (h!68265 s!2326))))))

(declare-fun e!3362007 () (Set Context!9196))

(assert (=> d!1730157 (= (derivationStepZipperDown!662 (h!68266 (exprs!5098 (h!68267 zl!343))) lt!2212902 (h!68265 s!2326)) e!3362007)))

(declare-fun b!5425243 () Bool)

(assert (=> b!5425243 (= e!3362007 e!3362009)))

(assert (=> b!5425243 (= c!946195 (is-Union!15214 (h!68266 (exprs!5098 (h!68267 zl!343)))))))

(declare-fun b!5425244 () Bool)

(declare-fun e!3362010 () (Set Context!9196))

(assert (=> b!5425244 (= e!3362008 e!3362010)))

(declare-fun c!946194 () Bool)

(assert (=> b!5425244 (= c!946194 (is-Concat!24059 (h!68266 (exprs!5098 (h!68267 zl!343)))))))

(declare-fun b!5425245 () Bool)

(declare-fun c!946197 () Bool)

(assert (=> b!5425245 (= c!946197 (is-Star!15214 (h!68266 (exprs!5098 (h!68267 zl!343)))))))

(assert (=> b!5425245 (= e!3362010 e!3362005)))

(declare-fun bm!388212 () Bool)

(declare-fun $colon$colon!1509 (List!61942 Regex!15214) List!61942)

(assert (=> bm!388212 (= call!388215 ($colon$colon!1509 (exprs!5098 lt!2212902) (ite (or c!946198 c!946194) (regTwo!30940 (h!68266 (exprs!5098 (h!68267 zl!343)))) (h!68266 (exprs!5098 (h!68267 zl!343))))))))

(declare-fun b!5425246 () Bool)

(assert (=> b!5425246 (= e!3362006 (nullable!5383 (regOne!30940 (h!68266 (exprs!5098 (h!68267 zl!343))))))))

(declare-fun bm!388213 () Bool)

(declare-fun call!388218 () List!61942)

(assert (=> bm!388213 (= call!388218 call!388215)))

(declare-fun bm!388214 () Bool)

(declare-fun call!388216 () (Set Context!9196))

(assert (=> bm!388214 (= call!388220 call!388216)))

(declare-fun b!5425247 () Bool)

(assert (=> b!5425247 (= e!3362010 call!388217)))

(declare-fun b!5425248 () Bool)

(assert (=> b!5425248 (= e!3362005 (as set.empty (Set Context!9196)))))

(declare-fun b!5425249 () Bool)

(assert (=> b!5425249 (= e!3362009 (set.union call!388219 call!388216))))

(declare-fun b!5425250 () Bool)

(assert (=> b!5425250 (= e!3362007 (set.insert lt!2212902 (as set.empty (Set Context!9196))))))

(declare-fun bm!388215 () Bool)

(assert (=> bm!388215 (= call!388216 (derivationStepZipperDown!662 (ite c!946195 (regTwo!30941 (h!68266 (exprs!5098 (h!68267 zl!343)))) (ite c!946198 (regTwo!30940 (h!68266 (exprs!5098 (h!68267 zl!343)))) (ite c!946194 (regOne!30940 (h!68266 (exprs!5098 (h!68267 zl!343)))) (reg!15543 (h!68266 (exprs!5098 (h!68267 zl!343))))))) (ite (or c!946195 c!946198) lt!2212902 (Context!9197 call!388218)) (h!68265 s!2326)))))

(assert (= (and d!1730157 c!946196) b!5425250))

(assert (= (and d!1730157 (not c!946196)) b!5425243))

(assert (= (and b!5425243 c!946195) b!5425249))

(assert (= (and b!5425243 (not c!946195)) b!5425240))

(assert (= (and b!5425240 res!2308844) b!5425246))

(assert (= (and b!5425240 c!946198) b!5425241))

(assert (= (and b!5425240 (not c!946198)) b!5425244))

(assert (= (and b!5425244 c!946194) b!5425247))

(assert (= (and b!5425244 (not c!946194)) b!5425245))

(assert (= (and b!5425245 c!946197) b!5425242))

(assert (= (and b!5425245 (not c!946197)) b!5425248))

(assert (= (or b!5425247 b!5425242) bm!388213))

(assert (= (or b!5425247 b!5425242) bm!388210))

(assert (= (or b!5425241 bm!388213) bm!388212))

(assert (= (or b!5425241 bm!388210) bm!388214))

(assert (= (or b!5425249 bm!388214) bm!388215))

(assert (= (or b!5425249 b!5425241) bm!388211))

(declare-fun m!6449378 () Bool)

(assert (=> bm!388212 m!6449378))

(assert (=> b!5425250 m!6449202))

(declare-fun m!6449380 () Bool)

(assert (=> bm!388215 m!6449380))

(declare-fun m!6449382 () Bool)

(assert (=> bm!388211 m!6449382))

(declare-fun m!6449384 () Bool)

(assert (=> b!5425246 m!6449384))

(assert (=> b!5425023 d!1730157))

(declare-fun d!1730159 () Bool)

(declare-fun choose!41131 ((Set Context!9196) Int) (Set Context!9196))

(assert (=> d!1730159 (= (flatMap!941 z!1189 lambda!284458) (choose!41131 z!1189 lambda!284458))))

(declare-fun bs!1253256 () Bool)

(assert (= bs!1253256 d!1730159))

(declare-fun m!6449386 () Bool)

(assert (=> bs!1253256 m!6449386))

(assert (=> b!5425023 d!1730159))

(declare-fun d!1730161 () Bool)

(declare-fun dynLambda!24357 (Int Context!9196) (Set Context!9196))

(assert (=> d!1730161 (= (flatMap!941 z!1189 lambda!284458) (dynLambda!24357 lambda!284458 (h!68267 zl!343)))))

(declare-fun lt!2213037 () Unit!154378)

(declare-fun choose!41132 ((Set Context!9196) Context!9196 Int) Unit!154378)

(assert (=> d!1730161 (= lt!2213037 (choose!41132 z!1189 (h!68267 zl!343) lambda!284458))))

(assert (=> d!1730161 (= z!1189 (set.insert (h!68267 zl!343) (as set.empty (Set Context!9196))))))

(assert (=> d!1730161 (= (lemmaFlatMapOnSingletonSet!473 z!1189 (h!68267 zl!343) lambda!284458) lt!2213037)))

(declare-fun b_lambda!206989 () Bool)

(assert (=> (not b_lambda!206989) (not d!1730161)))

(declare-fun bs!1253257 () Bool)

(assert (= bs!1253257 d!1730161))

(assert (=> bs!1253257 m!6449220))

(declare-fun m!6449388 () Bool)

(assert (=> bs!1253257 m!6449388))

(declare-fun m!6449390 () Bool)

(assert (=> bs!1253257 m!6449390))

(declare-fun m!6449392 () Bool)

(assert (=> bs!1253257 m!6449392))

(assert (=> b!5425023 d!1730161))

(declare-fun b!5425251 () Bool)

(declare-fun e!3362012 () (Set Context!9196))

(declare-fun e!3362011 () (Set Context!9196))

(assert (=> b!5425251 (= e!3362012 e!3362011)))

(declare-fun c!946200 () Bool)

(assert (=> b!5425251 (= c!946200 (is-Cons!61818 (exprs!5098 (h!68267 zl!343))))))

(declare-fun d!1730163 () Bool)

(declare-fun c!946199 () Bool)

(declare-fun e!3362013 () Bool)

(assert (=> d!1730163 (= c!946199 e!3362013)))

(declare-fun res!2308845 () Bool)

(assert (=> d!1730163 (=> (not res!2308845) (not e!3362013))))

(assert (=> d!1730163 (= res!2308845 (is-Cons!61818 (exprs!5098 (h!68267 zl!343))))))

(assert (=> d!1730163 (= (derivationStepZipperUp!586 (h!68267 zl!343) (h!68265 s!2326)) e!3362012)))

(declare-fun b!5425252 () Bool)

(declare-fun call!388221 () (Set Context!9196))

(assert (=> b!5425252 (= e!3362011 call!388221)))

(declare-fun b!5425253 () Bool)

(assert (=> b!5425253 (= e!3362011 (as set.empty (Set Context!9196)))))

(declare-fun b!5425254 () Bool)

(assert (=> b!5425254 (= e!3362012 (set.union call!388221 (derivationStepZipperUp!586 (Context!9197 (t!375165 (exprs!5098 (h!68267 zl!343)))) (h!68265 s!2326))))))

(declare-fun bm!388216 () Bool)

(assert (=> bm!388216 (= call!388221 (derivationStepZipperDown!662 (h!68266 (exprs!5098 (h!68267 zl!343))) (Context!9197 (t!375165 (exprs!5098 (h!68267 zl!343)))) (h!68265 s!2326)))))

(declare-fun b!5425255 () Bool)

(assert (=> b!5425255 (= e!3362013 (nullable!5383 (h!68266 (exprs!5098 (h!68267 zl!343)))))))

(assert (= (and d!1730163 res!2308845) b!5425255))

(assert (= (and d!1730163 c!946199) b!5425254))

(assert (= (and d!1730163 (not c!946199)) b!5425251))

(assert (= (and b!5425251 c!946200) b!5425252))

(assert (= (and b!5425251 (not c!946200)) b!5425253))

(assert (= (or b!5425254 b!5425252) bm!388216))

(declare-fun m!6449394 () Bool)

(assert (=> b!5425254 m!6449394))

(declare-fun m!6449396 () Bool)

(assert (=> bm!388216 m!6449396))

(assert (=> b!5425255 m!6449218))

(assert (=> b!5425023 d!1730163))

(declare-fun d!1730165 () Bool)

(declare-fun c!946203 () Bool)

(declare-fun isEmpty!33818 (List!61941) Bool)

(assert (=> d!1730165 (= c!946203 (isEmpty!33818 (t!375164 s!2326)))))

(declare-fun e!3362016 () Bool)

(assert (=> d!1730165 (= (matchZipper!1458 lt!2212922 (t!375164 s!2326)) e!3362016)))

(declare-fun b!5425260 () Bool)

(declare-fun nullableZipper!1459 ((Set Context!9196)) Bool)

(assert (=> b!5425260 (= e!3362016 (nullableZipper!1459 lt!2212922))))

(declare-fun b!5425261 () Bool)

(declare-fun head!11635 (List!61941) C!30698)

(declare-fun tail!10732 (List!61941) List!61941)

(assert (=> b!5425261 (= e!3362016 (matchZipper!1458 (derivationStepZipper!1453 lt!2212922 (head!11635 (t!375164 s!2326))) (tail!10732 (t!375164 s!2326))))))

(assert (= (and d!1730165 c!946203) b!5425260))

(assert (= (and d!1730165 (not c!946203)) b!5425261))

(declare-fun m!6449398 () Bool)

(assert (=> d!1730165 m!6449398))

(declare-fun m!6449400 () Bool)

(assert (=> b!5425260 m!6449400))

(declare-fun m!6449402 () Bool)

(assert (=> b!5425261 m!6449402))

(assert (=> b!5425261 m!6449402))

(declare-fun m!6449404 () Bool)

(assert (=> b!5425261 m!6449404))

(declare-fun m!6449406 () Bool)

(assert (=> b!5425261 m!6449406))

(assert (=> b!5425261 m!6449404))

(assert (=> b!5425261 m!6449406))

(declare-fun m!6449408 () Bool)

(assert (=> b!5425261 m!6449408))

(assert (=> b!5425044 d!1730165))

(declare-fun d!1730167 () Bool)

(assert (=> d!1730167 (= (nullable!5383 (regOne!30940 (regOne!30940 r!7292))) (nullableFct!1610 (regOne!30940 (regOne!30940 r!7292))))))

(declare-fun bs!1253258 () Bool)

(assert (= bs!1253258 d!1730167))

(declare-fun m!6449410 () Bool)

(assert (=> bs!1253258 m!6449410))

(assert (=> b!5425043 d!1730167))

(declare-fun d!1730169 () Bool)

(declare-fun c!946204 () Bool)

(assert (=> d!1730169 (= c!946204 (isEmpty!33818 s!2326))))

(declare-fun e!3362017 () Bool)

(assert (=> d!1730169 (= (matchZipper!1458 lt!2212923 s!2326) e!3362017)))

(declare-fun b!5425262 () Bool)

(assert (=> b!5425262 (= e!3362017 (nullableZipper!1459 lt!2212923))))

(declare-fun b!5425263 () Bool)

(assert (=> b!5425263 (= e!3362017 (matchZipper!1458 (derivationStepZipper!1453 lt!2212923 (head!11635 s!2326)) (tail!10732 s!2326)))))

(assert (= (and d!1730169 c!946204) b!5425262))

(assert (= (and d!1730169 (not c!946204)) b!5425263))

(declare-fun m!6449412 () Bool)

(assert (=> d!1730169 m!6449412))

(declare-fun m!6449414 () Bool)

(assert (=> b!5425262 m!6449414))

(declare-fun m!6449416 () Bool)

(assert (=> b!5425263 m!6449416))

(assert (=> b!5425263 m!6449416))

(declare-fun m!6449418 () Bool)

(assert (=> b!5425263 m!6449418))

(declare-fun m!6449420 () Bool)

(assert (=> b!5425263 m!6449420))

(assert (=> b!5425263 m!6449418))

(assert (=> b!5425263 m!6449420))

(declare-fun m!6449422 () Bool)

(assert (=> b!5425263 m!6449422))

(assert (=> b!5425022 d!1730169))

(declare-fun d!1730171 () Bool)

(declare-fun c!946205 () Bool)

(assert (=> d!1730171 (= c!946205 (isEmpty!33818 (t!375164 s!2326)))))

(declare-fun e!3362018 () Bool)

(assert (=> d!1730171 (= (matchZipper!1458 lt!2212925 (t!375164 s!2326)) e!3362018)))

(declare-fun b!5425264 () Bool)

(assert (=> b!5425264 (= e!3362018 (nullableZipper!1459 lt!2212925))))

(declare-fun b!5425265 () Bool)

(assert (=> b!5425265 (= e!3362018 (matchZipper!1458 (derivationStepZipper!1453 lt!2212925 (head!11635 (t!375164 s!2326))) (tail!10732 (t!375164 s!2326))))))

(assert (= (and d!1730171 c!946205) b!5425264))

(assert (= (and d!1730171 (not c!946205)) b!5425265))

(assert (=> d!1730171 m!6449398))

(declare-fun m!6449424 () Bool)

(assert (=> b!5425264 m!6449424))

(assert (=> b!5425265 m!6449402))

(assert (=> b!5425265 m!6449402))

(declare-fun m!6449426 () Bool)

(assert (=> b!5425265 m!6449426))

(assert (=> b!5425265 m!6449406))

(assert (=> b!5425265 m!6449426))

(assert (=> b!5425265 m!6449406))

(declare-fun m!6449428 () Bool)

(assert (=> b!5425265 m!6449428))

(assert (=> b!5425022 d!1730171))

(declare-fun d!1730173 () Bool)

(declare-fun c!946206 () Bool)

(assert (=> d!1730173 (= c!946206 (isEmpty!33818 (t!375164 s!2326)))))

(declare-fun e!3362019 () Bool)

(assert (=> d!1730173 (= (matchZipper!1458 lt!2212903 (t!375164 s!2326)) e!3362019)))

(declare-fun b!5425266 () Bool)

(assert (=> b!5425266 (= e!3362019 (nullableZipper!1459 lt!2212903))))

(declare-fun b!5425267 () Bool)

(assert (=> b!5425267 (= e!3362019 (matchZipper!1458 (derivationStepZipper!1453 lt!2212903 (head!11635 (t!375164 s!2326))) (tail!10732 (t!375164 s!2326))))))

(assert (= (and d!1730173 c!946206) b!5425266))

(assert (= (and d!1730173 (not c!946206)) b!5425267))

(assert (=> d!1730173 m!6449398))

(declare-fun m!6449430 () Bool)

(assert (=> b!5425266 m!6449430))

(assert (=> b!5425267 m!6449402))

(assert (=> b!5425267 m!6449402))

(declare-fun m!6449432 () Bool)

(assert (=> b!5425267 m!6449432))

(assert (=> b!5425267 m!6449406))

(assert (=> b!5425267 m!6449432))

(assert (=> b!5425267 m!6449406))

(declare-fun m!6449434 () Bool)

(assert (=> b!5425267 m!6449434))

(assert (=> b!5425021 d!1730173))

(declare-fun b!5425286 () Bool)

(declare-fun e!3362033 () Option!15325)

(declare-fun e!3362031 () Option!15325)

(assert (=> b!5425286 (= e!3362033 e!3362031)))

(declare-fun c!946211 () Bool)

(assert (=> b!5425286 (= c!946211 (is-Nil!61817 s!2326))))

(declare-fun b!5425287 () Bool)

(assert (=> b!5425287 (= e!3362031 None!15324)))

(declare-fun b!5425288 () Bool)

(declare-fun res!2308860 () Bool)

(declare-fun e!3362030 () Bool)

(assert (=> b!5425288 (=> (not res!2308860) (not e!3362030))))

(declare-fun lt!2213045 () Option!15325)

(declare-fun get!21322 (Option!15325) tuple2!64826)

(assert (=> b!5425288 (= res!2308860 (matchR!7399 (regTwo!30940 r!7292) (_2!35716 (get!21322 lt!2213045))))))

(declare-fun b!5425289 () Bool)

(declare-fun res!2308856 () Bool)

(assert (=> b!5425289 (=> (not res!2308856) (not e!3362030))))

(assert (=> b!5425289 (= res!2308856 (matchR!7399 (regOne!30940 r!7292) (_1!35716 (get!21322 lt!2213045))))))

(declare-fun b!5425290 () Bool)

(declare-fun e!3362032 () Bool)

(assert (=> b!5425290 (= e!3362032 (not (isDefined!12028 lt!2213045)))))

(declare-fun b!5425291 () Bool)

(declare-fun lt!2213046 () Unit!154378)

(declare-fun lt!2213044 () Unit!154378)

(assert (=> b!5425291 (= lt!2213046 lt!2213044)))

(declare-fun ++!13597 (List!61941 List!61941) List!61941)

(assert (=> b!5425291 (= (++!13597 (++!13597 Nil!61817 (Cons!61817 (h!68265 s!2326) Nil!61817)) (t!375164 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1854 (List!61941 C!30698 List!61941 List!61941) Unit!154378)

(assert (=> b!5425291 (= lt!2213044 (lemmaMoveElementToOtherListKeepsConcatEq!1854 Nil!61817 (h!68265 s!2326) (t!375164 s!2326) s!2326))))

(assert (=> b!5425291 (= e!3362031 (findConcatSeparation!1739 (regOne!30940 r!7292) (regTwo!30940 r!7292) (++!13597 Nil!61817 (Cons!61817 (h!68265 s!2326) Nil!61817)) (t!375164 s!2326) s!2326))))

(declare-fun b!5425292 () Bool)

(assert (=> b!5425292 (= e!3362033 (Some!15324 (tuple2!64827 Nil!61817 s!2326)))))

(declare-fun d!1730175 () Bool)

(assert (=> d!1730175 e!3362032))

(declare-fun res!2308857 () Bool)

(assert (=> d!1730175 (=> res!2308857 e!3362032)))

(assert (=> d!1730175 (= res!2308857 e!3362030)))

(declare-fun res!2308859 () Bool)

(assert (=> d!1730175 (=> (not res!2308859) (not e!3362030))))

(assert (=> d!1730175 (= res!2308859 (isDefined!12028 lt!2213045))))

(assert (=> d!1730175 (= lt!2213045 e!3362033)))

(declare-fun c!946212 () Bool)

(declare-fun e!3362034 () Bool)

(assert (=> d!1730175 (= c!946212 e!3362034)))

(declare-fun res!2308858 () Bool)

(assert (=> d!1730175 (=> (not res!2308858) (not e!3362034))))

(assert (=> d!1730175 (= res!2308858 (matchR!7399 (regOne!30940 r!7292) Nil!61817))))

(assert (=> d!1730175 (validRegex!6950 (regOne!30940 r!7292))))

(assert (=> d!1730175 (= (findConcatSeparation!1739 (regOne!30940 r!7292) (regTwo!30940 r!7292) Nil!61817 s!2326 s!2326) lt!2213045)))

(declare-fun b!5425293 () Bool)

(assert (=> b!5425293 (= e!3362030 (= (++!13597 (_1!35716 (get!21322 lt!2213045)) (_2!35716 (get!21322 lt!2213045))) s!2326))))

(declare-fun b!5425294 () Bool)

(assert (=> b!5425294 (= e!3362034 (matchR!7399 (regTwo!30940 r!7292) s!2326))))

(assert (= (and d!1730175 res!2308858) b!5425294))

(assert (= (and d!1730175 c!946212) b!5425292))

(assert (= (and d!1730175 (not c!946212)) b!5425286))

(assert (= (and b!5425286 c!946211) b!5425287))

(assert (= (and b!5425286 (not c!946211)) b!5425291))

(assert (= (and d!1730175 res!2308859) b!5425289))

(assert (= (and b!5425289 res!2308856) b!5425288))

(assert (= (and b!5425288 res!2308860) b!5425293))

(assert (= (and d!1730175 (not res!2308857)) b!5425290))

(declare-fun m!6449436 () Bool)

(assert (=> b!5425288 m!6449436))

(declare-fun m!6449438 () Bool)

(assert (=> b!5425288 m!6449438))

(declare-fun m!6449440 () Bool)

(assert (=> b!5425290 m!6449440))

(declare-fun m!6449442 () Bool)

(assert (=> b!5425294 m!6449442))

(assert (=> b!5425293 m!6449436))

(declare-fun m!6449444 () Bool)

(assert (=> b!5425293 m!6449444))

(declare-fun m!6449446 () Bool)

(assert (=> b!5425291 m!6449446))

(assert (=> b!5425291 m!6449446))

(declare-fun m!6449448 () Bool)

(assert (=> b!5425291 m!6449448))

(declare-fun m!6449450 () Bool)

(assert (=> b!5425291 m!6449450))

(assert (=> b!5425291 m!6449446))

(declare-fun m!6449452 () Bool)

(assert (=> b!5425291 m!6449452))

(assert (=> d!1730175 m!6449440))

(declare-fun m!6449454 () Bool)

(assert (=> d!1730175 m!6449454))

(declare-fun m!6449456 () Bool)

(assert (=> d!1730175 m!6449456))

(assert (=> b!5425289 m!6449436))

(declare-fun m!6449458 () Bool)

(assert (=> b!5425289 m!6449458))

(assert (=> b!5425041 d!1730175))

(declare-fun d!1730177 () Bool)

(declare-fun choose!41133 (Int) Bool)

(assert (=> d!1730177 (= (Exists!2395 lambda!284456) (choose!41133 lambda!284456))))

(declare-fun bs!1253259 () Bool)

(assert (= bs!1253259 d!1730177))

(declare-fun m!6449460 () Bool)

(assert (=> bs!1253259 m!6449460))

(assert (=> b!5425041 d!1730177))

(declare-fun d!1730179 () Bool)

(assert (=> d!1730179 (= (Exists!2395 lambda!284457) (choose!41133 lambda!284457))))

(declare-fun bs!1253260 () Bool)

(assert (= bs!1253260 d!1730179))

(declare-fun m!6449462 () Bool)

(assert (=> bs!1253260 m!6449462))

(assert (=> b!5425041 d!1730179))

(declare-fun bs!1253261 () Bool)

(declare-fun d!1730181 () Bool)

(assert (= bs!1253261 (and d!1730181 b!5425041)))

(declare-fun lambda!284484 () Int)

(assert (=> bs!1253261 (= lambda!284484 lambda!284456)))

(assert (=> bs!1253261 (not (= lambda!284484 lambda!284457))))

(assert (=> d!1730181 true))

(assert (=> d!1730181 true))

(assert (=> d!1730181 true))

(assert (=> d!1730181 (= (isDefined!12028 (findConcatSeparation!1739 (regOne!30940 r!7292) (regTwo!30940 r!7292) Nil!61817 s!2326 s!2326)) (Exists!2395 lambda!284484))))

(declare-fun lt!2213049 () Unit!154378)

(declare-fun choose!41134 (Regex!15214 Regex!15214 List!61941) Unit!154378)

(assert (=> d!1730181 (= lt!2213049 (choose!41134 (regOne!30940 r!7292) (regTwo!30940 r!7292) s!2326))))

(assert (=> d!1730181 (validRegex!6950 (regOne!30940 r!7292))))

(assert (=> d!1730181 (= (lemmaFindConcatSeparationEquivalentToExists!1503 (regOne!30940 r!7292) (regTwo!30940 r!7292) s!2326) lt!2213049)))

(declare-fun bs!1253262 () Bool)

(assert (= bs!1253262 d!1730181))

(assert (=> bs!1253262 m!6449228))

(assert (=> bs!1253262 m!6449456))

(declare-fun m!6449464 () Bool)

(assert (=> bs!1253262 m!6449464))

(assert (=> bs!1253262 m!6449228))

(assert (=> bs!1253262 m!6449230))

(declare-fun m!6449466 () Bool)

(assert (=> bs!1253262 m!6449466))

(assert (=> b!5425041 d!1730181))

(declare-fun bs!1253263 () Bool)

(declare-fun d!1730183 () Bool)

(assert (= bs!1253263 (and d!1730183 b!5425041)))

(declare-fun lambda!284489 () Int)

(assert (=> bs!1253263 (= lambda!284489 lambda!284456)))

(assert (=> bs!1253263 (not (= lambda!284489 lambda!284457))))

(declare-fun bs!1253264 () Bool)

(assert (= bs!1253264 (and d!1730183 d!1730181)))

(assert (=> bs!1253264 (= lambda!284489 lambda!284484)))

(assert (=> d!1730183 true))

(assert (=> d!1730183 true))

(assert (=> d!1730183 true))

(declare-fun lambda!284490 () Int)

(assert (=> bs!1253263 (not (= lambda!284490 lambda!284456))))

(assert (=> bs!1253263 (= lambda!284490 lambda!284457)))

(assert (=> bs!1253264 (not (= lambda!284490 lambda!284484))))

(declare-fun bs!1253265 () Bool)

(assert (= bs!1253265 d!1730183))

(assert (=> bs!1253265 (not (= lambda!284490 lambda!284489))))

(assert (=> d!1730183 true))

(assert (=> d!1730183 true))

(assert (=> d!1730183 true))

(assert (=> d!1730183 (= (Exists!2395 lambda!284489) (Exists!2395 lambda!284490))))

(declare-fun lt!2213052 () Unit!154378)

(declare-fun choose!41135 (Regex!15214 Regex!15214 List!61941) Unit!154378)

(assert (=> d!1730183 (= lt!2213052 (choose!41135 (regOne!30940 r!7292) (regTwo!30940 r!7292) s!2326))))

(assert (=> d!1730183 (validRegex!6950 (regOne!30940 r!7292))))

(assert (=> d!1730183 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1049 (regOne!30940 r!7292) (regTwo!30940 r!7292) s!2326) lt!2213052)))

(declare-fun m!6449468 () Bool)

(assert (=> bs!1253265 m!6449468))

(declare-fun m!6449470 () Bool)

(assert (=> bs!1253265 m!6449470))

(declare-fun m!6449472 () Bool)

(assert (=> bs!1253265 m!6449472))

(assert (=> bs!1253265 m!6449456))

(assert (=> b!5425041 d!1730183))

(declare-fun d!1730185 () Bool)

(declare-fun isEmpty!33819 (Option!15325) Bool)

(assert (=> d!1730185 (= (isDefined!12028 (findConcatSeparation!1739 (regOne!30940 r!7292) (regTwo!30940 r!7292) Nil!61817 s!2326 s!2326)) (not (isEmpty!33819 (findConcatSeparation!1739 (regOne!30940 r!7292) (regTwo!30940 r!7292) Nil!61817 s!2326 s!2326))))))

(declare-fun bs!1253266 () Bool)

(assert (= bs!1253266 d!1730185))

(assert (=> bs!1253266 m!6449228))

(declare-fun m!6449474 () Bool)

(assert (=> bs!1253266 m!6449474))

(assert (=> b!5425041 d!1730185))

(declare-fun d!1730187 () Bool)

(assert (=> d!1730187 (= (isEmpty!33814 (t!375166 zl!343)) (is-Nil!61819 (t!375166 zl!343)))))

(assert (=> b!5425040 d!1730187))

(declare-fun d!1730189 () Bool)

(declare-fun res!2308877 () Bool)

(declare-fun e!3362045 () Bool)

(assert (=> d!1730189 (=> res!2308877 e!3362045)))

(assert (=> d!1730189 (= res!2308877 (is-Nil!61818 (exprs!5098 (h!68267 zl!343))))))

(assert (=> d!1730189 (= (forall!14552 (exprs!5098 (h!68267 zl!343)) lambda!284459) e!3362045)))

(declare-fun b!5425311 () Bool)

(declare-fun e!3362046 () Bool)

(assert (=> b!5425311 (= e!3362045 e!3362046)))

(declare-fun res!2308878 () Bool)

(assert (=> b!5425311 (=> (not res!2308878) (not e!3362046))))

(declare-fun dynLambda!24358 (Int Regex!15214) Bool)

(assert (=> b!5425311 (= res!2308878 (dynLambda!24358 lambda!284459 (h!68266 (exprs!5098 (h!68267 zl!343)))))))

(declare-fun b!5425312 () Bool)

(assert (=> b!5425312 (= e!3362046 (forall!14552 (t!375165 (exprs!5098 (h!68267 zl!343))) lambda!284459))))

(assert (= (and d!1730189 (not res!2308877)) b!5425311))

(assert (= (and b!5425311 res!2308878) b!5425312))

(declare-fun b_lambda!206991 () Bool)

(assert (=> (not b_lambda!206991) (not b!5425311)))

(declare-fun m!6449476 () Bool)

(assert (=> b!5425311 m!6449476))

(declare-fun m!6449478 () Bool)

(assert (=> b!5425312 m!6449478))

(assert (=> b!5425039 d!1730189))

(declare-fun bs!1253267 () Bool)

(declare-fun b!5425352 () Bool)

(assert (= bs!1253267 (and b!5425352 d!1730183)))

(declare-fun lambda!284495 () Int)

(assert (=> bs!1253267 (not (= lambda!284495 lambda!284489))))

(assert (=> bs!1253267 (not (= lambda!284495 lambda!284490))))

(declare-fun bs!1253268 () Bool)

(assert (= bs!1253268 (and b!5425352 b!5425041)))

(assert (=> bs!1253268 (not (= lambda!284495 lambda!284456))))

(declare-fun bs!1253269 () Bool)

(assert (= bs!1253269 (and b!5425352 d!1730181)))

(assert (=> bs!1253269 (not (= lambda!284495 lambda!284484))))

(assert (=> bs!1253268 (not (= lambda!284495 lambda!284457))))

(assert (=> b!5425352 true))

(assert (=> b!5425352 true))

(declare-fun bs!1253270 () Bool)

(declare-fun b!5425347 () Bool)

(assert (= bs!1253270 (and b!5425347 d!1730183)))

(declare-fun lambda!284496 () Int)

(assert (=> bs!1253270 (not (= lambda!284496 lambda!284489))))

(assert (=> bs!1253270 (= lambda!284496 lambda!284490)))

(declare-fun bs!1253271 () Bool)

(assert (= bs!1253271 (and b!5425347 b!5425041)))

(assert (=> bs!1253271 (not (= lambda!284496 lambda!284456))))

(declare-fun bs!1253272 () Bool)

(assert (= bs!1253272 (and b!5425347 b!5425352)))

(assert (=> bs!1253272 (not (= lambda!284496 lambda!284495))))

(declare-fun bs!1253273 () Bool)

(assert (= bs!1253273 (and b!5425347 d!1730181)))

(assert (=> bs!1253273 (not (= lambda!284496 lambda!284484))))

(assert (=> bs!1253271 (= lambda!284496 lambda!284457)))

(assert (=> b!5425347 true))

(assert (=> b!5425347 true))

(declare-fun b!5425345 () Bool)

(declare-fun e!3362066 () Bool)

(declare-fun e!3362068 () Bool)

(assert (=> b!5425345 (= e!3362066 e!3362068)))

(declare-fun res!2308896 () Bool)

(assert (=> b!5425345 (= res!2308896 (matchRSpec!2317 (regOne!30941 r!7292) s!2326))))

(assert (=> b!5425345 (=> res!2308896 e!3362068)))

(declare-fun bm!388221 () Bool)

(declare-fun call!388227 () Bool)

(assert (=> bm!388221 (= call!388227 (isEmpty!33818 s!2326))))

(declare-fun bm!388222 () Bool)

(declare-fun c!946222 () Bool)

(declare-fun call!388226 () Bool)

(assert (=> bm!388222 (= call!388226 (Exists!2395 (ite c!946222 lambda!284495 lambda!284496)))))

(declare-fun b!5425346 () Bool)

(assert (=> b!5425346 (= e!3362068 (matchRSpec!2317 (regTwo!30941 r!7292) s!2326))))

(declare-fun e!3362065 () Bool)

(assert (=> b!5425347 (= e!3362065 call!388226)))

(declare-fun d!1730191 () Bool)

(declare-fun c!946221 () Bool)

(assert (=> d!1730191 (= c!946221 (is-EmptyExpr!15214 r!7292))))

(declare-fun e!3362070 () Bool)

(assert (=> d!1730191 (= (matchRSpec!2317 r!7292 s!2326) e!3362070)))

(declare-fun b!5425348 () Bool)

(declare-fun e!3362071 () Bool)

(assert (=> b!5425348 (= e!3362070 e!3362071)))

(declare-fun res!2308895 () Bool)

(assert (=> b!5425348 (= res!2308895 (not (is-EmptyLang!15214 r!7292)))))

(assert (=> b!5425348 (=> (not res!2308895) (not e!3362071))))

(declare-fun b!5425349 () Bool)

(assert (=> b!5425349 (= e!3362066 e!3362065)))

(assert (=> b!5425349 (= c!946222 (is-Star!15214 r!7292))))

(declare-fun b!5425350 () Bool)

(assert (=> b!5425350 (= e!3362070 call!388227)))

(declare-fun b!5425351 () Bool)

(declare-fun c!946224 () Bool)

(assert (=> b!5425351 (= c!946224 (is-Union!15214 r!7292))))

(declare-fun e!3362067 () Bool)

(assert (=> b!5425351 (= e!3362067 e!3362066)))

(declare-fun e!3362069 () Bool)

(assert (=> b!5425352 (= e!3362069 call!388226)))

(declare-fun b!5425353 () Bool)

(declare-fun c!946223 () Bool)

(assert (=> b!5425353 (= c!946223 (is-ElementMatch!15214 r!7292))))

(assert (=> b!5425353 (= e!3362071 e!3362067)))

(declare-fun b!5425354 () Bool)

(declare-fun res!2308897 () Bool)

(assert (=> b!5425354 (=> res!2308897 e!3362069)))

(assert (=> b!5425354 (= res!2308897 call!388227)))

(assert (=> b!5425354 (= e!3362065 e!3362069)))

(declare-fun b!5425355 () Bool)

(assert (=> b!5425355 (= e!3362067 (= s!2326 (Cons!61817 (c!946160 r!7292) Nil!61817)))))

(assert (= (and d!1730191 c!946221) b!5425350))

(assert (= (and d!1730191 (not c!946221)) b!5425348))

(assert (= (and b!5425348 res!2308895) b!5425353))

(assert (= (and b!5425353 c!946223) b!5425355))

(assert (= (and b!5425353 (not c!946223)) b!5425351))

(assert (= (and b!5425351 c!946224) b!5425345))

(assert (= (and b!5425351 (not c!946224)) b!5425349))

(assert (= (and b!5425345 (not res!2308896)) b!5425346))

(assert (= (and b!5425349 c!946222) b!5425354))

(assert (= (and b!5425349 (not c!946222)) b!5425347))

(assert (= (and b!5425354 (not res!2308897)) b!5425352))

(assert (= (or b!5425352 b!5425347) bm!388222))

(assert (= (or b!5425350 b!5425354) bm!388221))

(declare-fun m!6449480 () Bool)

(assert (=> b!5425345 m!6449480))

(assert (=> bm!388221 m!6449412))

(declare-fun m!6449482 () Bool)

(assert (=> bm!388222 m!6449482))

(declare-fun m!6449484 () Bool)

(assert (=> b!5425346 m!6449484))

(assert (=> b!5425018 d!1730191))

(declare-fun b!5425384 () Bool)

(declare-fun res!2308916 () Bool)

(declare-fun e!3362089 () Bool)

(assert (=> b!5425384 (=> res!2308916 e!3362089)))

(assert (=> b!5425384 (= res!2308916 (not (isEmpty!33818 (tail!10732 s!2326))))))

(declare-fun b!5425386 () Bool)

(declare-fun e!3362086 () Bool)

(declare-fun e!3362088 () Bool)

(assert (=> b!5425386 (= e!3362086 e!3362088)))

(declare-fun c!946232 () Bool)

(assert (=> b!5425386 (= c!946232 (is-EmptyLang!15214 r!7292))))

(declare-fun b!5425387 () Bool)

(declare-fun lt!2213055 () Bool)

(assert (=> b!5425387 (= e!3362088 (not lt!2213055))))

(declare-fun b!5425388 () Bool)

(declare-fun e!3362091 () Bool)

(assert (=> b!5425388 (= e!3362091 (= (head!11635 s!2326) (c!946160 r!7292)))))

(declare-fun b!5425389 () Bool)

(declare-fun call!388230 () Bool)

(assert (=> b!5425389 (= e!3362086 (= lt!2213055 call!388230))))

(declare-fun b!5425390 () Bool)

(declare-fun e!3362087 () Bool)

(assert (=> b!5425390 (= e!3362087 (nullable!5383 r!7292))))

(declare-fun b!5425391 () Bool)

(assert (=> b!5425391 (= e!3362089 (not (= (head!11635 s!2326) (c!946160 r!7292))))))

(declare-fun b!5425392 () Bool)

(declare-fun res!2308915 () Bool)

(assert (=> b!5425392 (=> (not res!2308915) (not e!3362091))))

(assert (=> b!5425392 (= res!2308915 (isEmpty!33818 (tail!10732 s!2326)))))

(declare-fun b!5425393 () Bool)

(declare-fun e!3362090 () Bool)

(declare-fun e!3362092 () Bool)

(assert (=> b!5425393 (= e!3362090 e!3362092)))

(declare-fun res!2308919 () Bool)

(assert (=> b!5425393 (=> (not res!2308919) (not e!3362092))))

(assert (=> b!5425393 (= res!2308919 (not lt!2213055))))

(declare-fun b!5425394 () Bool)

(assert (=> b!5425394 (= e!3362092 e!3362089)))

(declare-fun res!2308917 () Bool)

(assert (=> b!5425394 (=> res!2308917 e!3362089)))

(assert (=> b!5425394 (= res!2308917 call!388230)))

(declare-fun b!5425395 () Bool)

(declare-fun res!2308918 () Bool)

(assert (=> b!5425395 (=> (not res!2308918) (not e!3362091))))

(assert (=> b!5425395 (= res!2308918 (not call!388230))))

(declare-fun b!5425396 () Bool)

(declare-fun derivativeStep!4280 (Regex!15214 C!30698) Regex!15214)

(assert (=> b!5425396 (= e!3362087 (matchR!7399 (derivativeStep!4280 r!7292 (head!11635 s!2326)) (tail!10732 s!2326)))))

(declare-fun bm!388225 () Bool)

(assert (=> bm!388225 (= call!388230 (isEmpty!33818 s!2326))))

(declare-fun b!5425397 () Bool)

(declare-fun res!2308920 () Bool)

(assert (=> b!5425397 (=> res!2308920 e!3362090)))

(assert (=> b!5425397 (= res!2308920 e!3362091)))

(declare-fun res!2308914 () Bool)

(assert (=> b!5425397 (=> (not res!2308914) (not e!3362091))))

(assert (=> b!5425397 (= res!2308914 lt!2213055)))

(declare-fun d!1730193 () Bool)

(assert (=> d!1730193 e!3362086))

(declare-fun c!946233 () Bool)

(assert (=> d!1730193 (= c!946233 (is-EmptyExpr!15214 r!7292))))

(assert (=> d!1730193 (= lt!2213055 e!3362087)))

(declare-fun c!946231 () Bool)

(assert (=> d!1730193 (= c!946231 (isEmpty!33818 s!2326))))

(assert (=> d!1730193 (validRegex!6950 r!7292)))

(assert (=> d!1730193 (= (matchR!7399 r!7292 s!2326) lt!2213055)))

(declare-fun b!5425385 () Bool)

(declare-fun res!2308921 () Bool)

(assert (=> b!5425385 (=> res!2308921 e!3362090)))

(assert (=> b!5425385 (= res!2308921 (not (is-ElementMatch!15214 r!7292)))))

(assert (=> b!5425385 (= e!3362088 e!3362090)))

(assert (= (and d!1730193 c!946231) b!5425390))

(assert (= (and d!1730193 (not c!946231)) b!5425396))

(assert (= (and d!1730193 c!946233) b!5425389))

(assert (= (and d!1730193 (not c!946233)) b!5425386))

(assert (= (and b!5425386 c!946232) b!5425387))

(assert (= (and b!5425386 (not c!946232)) b!5425385))

(assert (= (and b!5425385 (not res!2308921)) b!5425397))

(assert (= (and b!5425397 res!2308914) b!5425395))

(assert (= (and b!5425395 res!2308918) b!5425392))

(assert (= (and b!5425392 res!2308915) b!5425388))

(assert (= (and b!5425397 (not res!2308920)) b!5425393))

(assert (= (and b!5425393 res!2308919) b!5425394))

(assert (= (and b!5425394 (not res!2308917)) b!5425384))

(assert (= (and b!5425384 (not res!2308916)) b!5425391))

(assert (= (or b!5425389 b!5425394 b!5425395) bm!388225))

(assert (=> b!5425384 m!6449420))

(assert (=> b!5425384 m!6449420))

(declare-fun m!6449486 () Bool)

(assert (=> b!5425384 m!6449486))

(assert (=> b!5425391 m!6449416))

(assert (=> b!5425392 m!6449420))

(assert (=> b!5425392 m!6449420))

(assert (=> b!5425392 m!6449486))

(assert (=> b!5425388 m!6449416))

(declare-fun m!6449488 () Bool)

(assert (=> b!5425390 m!6449488))

(assert (=> bm!388225 m!6449412))

(assert (=> d!1730193 m!6449412))

(assert (=> d!1730193 m!6449172))

(assert (=> b!5425396 m!6449416))

(assert (=> b!5425396 m!6449416))

(declare-fun m!6449490 () Bool)

(assert (=> b!5425396 m!6449490))

(assert (=> b!5425396 m!6449420))

(assert (=> b!5425396 m!6449490))

(assert (=> b!5425396 m!6449420))

(declare-fun m!6449492 () Bool)

(assert (=> b!5425396 m!6449492))

(assert (=> b!5425018 d!1730193))

(declare-fun d!1730195 () Bool)

(assert (=> d!1730195 (= (matchR!7399 r!7292 s!2326) (matchRSpec!2317 r!7292 s!2326))))

(declare-fun lt!2213058 () Unit!154378)

(declare-fun choose!41136 (Regex!15214 List!61941) Unit!154378)

(assert (=> d!1730195 (= lt!2213058 (choose!41136 r!7292 s!2326))))

(assert (=> d!1730195 (validRegex!6950 r!7292)))

(assert (=> d!1730195 (= (mainMatchTheorem!2317 r!7292 s!2326) lt!2213058)))

(declare-fun bs!1253274 () Bool)

(assert (= bs!1253274 d!1730195))

(assert (=> bs!1253274 m!6449130))

(assert (=> bs!1253274 m!6449128))

(declare-fun m!6449494 () Bool)

(assert (=> bs!1253274 m!6449494))

(assert (=> bs!1253274 m!6449172))

(assert (=> b!5425018 d!1730195))

(declare-fun bm!388232 () Bool)

(declare-fun call!388239 () Bool)

(declare-fun c!946239 () Bool)

(assert (=> bm!388232 (= call!388239 (validRegex!6950 (ite c!946239 (regTwo!30941 r!7292) (regTwo!30940 r!7292))))))

(declare-fun b!5425416 () Bool)

(declare-fun res!2308933 () Bool)

(declare-fun e!3362111 () Bool)

(assert (=> b!5425416 (=> (not res!2308933) (not e!3362111))))

(declare-fun call!388238 () Bool)

(assert (=> b!5425416 (= res!2308933 call!388238)))

(declare-fun e!3362107 () Bool)

(assert (=> b!5425416 (= e!3362107 e!3362111)))

(declare-fun b!5425417 () Bool)

(declare-fun e!3362110 () Bool)

(declare-fun e!3362112 () Bool)

(assert (=> b!5425417 (= e!3362110 e!3362112)))

(declare-fun c!946238 () Bool)

(assert (=> b!5425417 (= c!946238 (is-Star!15214 r!7292))))

(declare-fun b!5425418 () Bool)

(assert (=> b!5425418 (= e!3362112 e!3362107)))

(assert (=> b!5425418 (= c!946239 (is-Union!15214 r!7292))))

(declare-fun bm!388233 () Bool)

(declare-fun call!388237 () Bool)

(assert (=> bm!388233 (= call!388237 (validRegex!6950 (ite c!946238 (reg!15543 r!7292) (ite c!946239 (regOne!30941 r!7292) (regOne!30940 r!7292)))))))

(declare-fun b!5425419 () Bool)

(assert (=> b!5425419 (= e!3362111 call!388239)))

(declare-fun b!5425420 () Bool)

(declare-fun res!2308935 () Bool)

(declare-fun e!3362109 () Bool)

(assert (=> b!5425420 (=> res!2308935 e!3362109)))

(assert (=> b!5425420 (= res!2308935 (not (is-Concat!24059 r!7292)))))

(assert (=> b!5425420 (= e!3362107 e!3362109)))

(declare-fun b!5425422 () Bool)

(declare-fun e!3362108 () Bool)

(assert (=> b!5425422 (= e!3362109 e!3362108)))

(declare-fun res!2308932 () Bool)

(assert (=> b!5425422 (=> (not res!2308932) (not e!3362108))))

(assert (=> b!5425422 (= res!2308932 call!388238)))

(declare-fun bm!388234 () Bool)

(assert (=> bm!388234 (= call!388238 call!388237)))

(declare-fun b!5425423 () Bool)

(assert (=> b!5425423 (= e!3362108 call!388239)))

(declare-fun b!5425424 () Bool)

(declare-fun e!3362113 () Bool)

(assert (=> b!5425424 (= e!3362113 call!388237)))

(declare-fun b!5425421 () Bool)

(assert (=> b!5425421 (= e!3362112 e!3362113)))

(declare-fun res!2308936 () Bool)

(assert (=> b!5425421 (= res!2308936 (not (nullable!5383 (reg!15543 r!7292))))))

(assert (=> b!5425421 (=> (not res!2308936) (not e!3362113))))

(declare-fun d!1730197 () Bool)

(declare-fun res!2308934 () Bool)

(assert (=> d!1730197 (=> res!2308934 e!3362110)))

(assert (=> d!1730197 (= res!2308934 (is-ElementMatch!15214 r!7292))))

(assert (=> d!1730197 (= (validRegex!6950 r!7292) e!3362110)))

(assert (= (and d!1730197 (not res!2308934)) b!5425417))

(assert (= (and b!5425417 c!946238) b!5425421))

(assert (= (and b!5425417 (not c!946238)) b!5425418))

(assert (= (and b!5425421 res!2308936) b!5425424))

(assert (= (and b!5425418 c!946239) b!5425416))

(assert (= (and b!5425418 (not c!946239)) b!5425420))

(assert (= (and b!5425416 res!2308933) b!5425419))

(assert (= (and b!5425420 (not res!2308935)) b!5425422))

(assert (= (and b!5425422 res!2308932) b!5425423))

(assert (= (or b!5425419 b!5425423) bm!388232))

(assert (= (or b!5425416 b!5425422) bm!388234))

(assert (= (or b!5425424 bm!388234) bm!388233))

(declare-fun m!6449496 () Bool)

(assert (=> bm!388232 m!6449496))

(declare-fun m!6449498 () Bool)

(assert (=> bm!388233 m!6449498))

(declare-fun m!6449500 () Bool)

(assert (=> b!5425421 m!6449500))

(assert (=> start!569444 d!1730197))

(declare-fun bs!1253275 () Bool)

(declare-fun d!1730199 () Bool)

(assert (= bs!1253275 (and d!1730199 b!5425039)))

(declare-fun lambda!284499 () Int)

(assert (=> bs!1253275 (= lambda!284499 lambda!284459)))

(assert (=> d!1730199 (= (inv!81283 (h!68267 zl!343)) (forall!14552 (exprs!5098 (h!68267 zl!343)) lambda!284499))))

(declare-fun bs!1253276 () Bool)

(assert (= bs!1253276 d!1730199))

(declare-fun m!6449502 () Bool)

(assert (=> bs!1253276 m!6449502))

(assert (=> b!5425017 d!1730199))

(declare-fun bs!1253277 () Bool)

(declare-fun d!1730201 () Bool)

(assert (= bs!1253277 (and d!1730201 b!5425039)))

(declare-fun lambda!284502 () Int)

(assert (=> bs!1253277 (= lambda!284502 lambda!284459)))

(declare-fun bs!1253278 () Bool)

(assert (= bs!1253278 (and d!1730201 d!1730199)))

(assert (=> bs!1253278 (= lambda!284502 lambda!284499)))

(declare-fun b!5425445 () Bool)

(declare-fun e!3362129 () Bool)

(declare-fun e!3362126 () Bool)

(assert (=> b!5425445 (= e!3362129 e!3362126)))

(declare-fun c!946251 () Bool)

(declare-fun tail!10733 (List!61942) List!61942)

(assert (=> b!5425445 (= c!946251 (isEmpty!33815 (tail!10733 (exprs!5098 (h!68267 zl!343)))))))

(declare-fun b!5425446 () Bool)

(declare-fun lt!2213061 () Regex!15214)

(declare-fun isConcat!514 (Regex!15214) Bool)

(assert (=> b!5425446 (= e!3362126 (isConcat!514 lt!2213061))))

(declare-fun b!5425447 () Bool)

(declare-fun e!3362128 () Bool)

(assert (=> b!5425447 (= e!3362128 (isEmpty!33815 (t!375165 (exprs!5098 (h!68267 zl!343)))))))

(declare-fun b!5425448 () Bool)

(declare-fun e!3362131 () Bool)

(assert (=> b!5425448 (= e!3362131 e!3362129)))

(declare-fun c!946248 () Bool)

(assert (=> b!5425448 (= c!946248 (isEmpty!33815 (exprs!5098 (h!68267 zl!343))))))

(declare-fun b!5425449 () Bool)

(declare-fun head!11636 (List!61942) Regex!15214)

(assert (=> b!5425449 (= e!3362126 (= lt!2213061 (head!11636 (exprs!5098 (h!68267 zl!343)))))))

(declare-fun b!5425450 () Bool)

(declare-fun e!3362127 () Regex!15214)

(assert (=> b!5425450 (= e!3362127 (h!68266 (exprs!5098 (h!68267 zl!343))))))

(declare-fun b!5425452 () Bool)

(declare-fun e!3362130 () Regex!15214)

(assert (=> b!5425452 (= e!3362127 e!3362130)))

(declare-fun c!946250 () Bool)

(assert (=> b!5425452 (= c!946250 (is-Cons!61818 (exprs!5098 (h!68267 zl!343))))))

(declare-fun b!5425453 () Bool)

(assert (=> b!5425453 (= e!3362130 EmptyExpr!15214)))

(declare-fun b!5425454 () Bool)

(declare-fun isEmptyExpr!991 (Regex!15214) Bool)

(assert (=> b!5425454 (= e!3362129 (isEmptyExpr!991 lt!2213061))))

(declare-fun b!5425451 () Bool)

(assert (=> b!5425451 (= e!3362130 (Concat!24059 (h!68266 (exprs!5098 (h!68267 zl!343))) (generalisedConcat!883 (t!375165 (exprs!5098 (h!68267 zl!343))))))))

(assert (=> d!1730201 e!3362131))

(declare-fun res!2308942 () Bool)

(assert (=> d!1730201 (=> (not res!2308942) (not e!3362131))))

(assert (=> d!1730201 (= res!2308942 (validRegex!6950 lt!2213061))))

(assert (=> d!1730201 (= lt!2213061 e!3362127)))

(declare-fun c!946249 () Bool)

(assert (=> d!1730201 (= c!946249 e!3362128)))

(declare-fun res!2308941 () Bool)

(assert (=> d!1730201 (=> (not res!2308941) (not e!3362128))))

(assert (=> d!1730201 (= res!2308941 (is-Cons!61818 (exprs!5098 (h!68267 zl!343))))))

(assert (=> d!1730201 (forall!14552 (exprs!5098 (h!68267 zl!343)) lambda!284502)))

(assert (=> d!1730201 (= (generalisedConcat!883 (exprs!5098 (h!68267 zl!343))) lt!2213061)))

(assert (= (and d!1730201 res!2308941) b!5425447))

(assert (= (and d!1730201 c!946249) b!5425450))

(assert (= (and d!1730201 (not c!946249)) b!5425452))

(assert (= (and b!5425452 c!946250) b!5425451))

(assert (= (and b!5425452 (not c!946250)) b!5425453))

(assert (= (and d!1730201 res!2308942) b!5425448))

(assert (= (and b!5425448 c!946248) b!5425454))

(assert (= (and b!5425448 (not c!946248)) b!5425445))

(assert (= (and b!5425445 c!946251) b!5425449))

(assert (= (and b!5425445 (not c!946251)) b!5425446))

(declare-fun m!6449504 () Bool)

(assert (=> b!5425454 m!6449504))

(declare-fun m!6449506 () Bool)

(assert (=> d!1730201 m!6449506))

(declare-fun m!6449508 () Bool)

(assert (=> d!1730201 m!6449508))

(declare-fun m!6449510 () Bool)

(assert (=> b!5425451 m!6449510))

(declare-fun m!6449512 () Bool)

(assert (=> b!5425446 m!6449512))

(declare-fun m!6449514 () Bool)

(assert (=> b!5425445 m!6449514))

(assert (=> b!5425445 m!6449514))

(declare-fun m!6449516 () Bool)

(assert (=> b!5425445 m!6449516))

(declare-fun m!6449518 () Bool)

(assert (=> b!5425448 m!6449518))

(declare-fun m!6449520 () Bool)

(assert (=> b!5425449 m!6449520))

(assert (=> b!5425447 m!6449194))

(assert (=> b!5425016 d!1730201))

(assert (=> b!5425015 d!1730173))

(declare-fun d!1730203 () Bool)

(declare-fun c!946252 () Bool)

(assert (=> d!1730203 (= c!946252 (isEmpty!33818 s!2326))))

(declare-fun e!3362132 () Bool)

(assert (=> d!1730203 (= (matchZipper!1458 z!1189 s!2326) e!3362132)))

(declare-fun b!5425455 () Bool)

(assert (=> b!5425455 (= e!3362132 (nullableZipper!1459 z!1189))))

(declare-fun b!5425456 () Bool)

(assert (=> b!5425456 (= e!3362132 (matchZipper!1458 (derivationStepZipper!1453 z!1189 (head!11635 s!2326)) (tail!10732 s!2326)))))

(assert (= (and d!1730203 c!946252) b!5425455))

(assert (= (and d!1730203 (not c!946252)) b!5425456))

(assert (=> d!1730203 m!6449412))

(declare-fun m!6449522 () Bool)

(assert (=> b!5425455 m!6449522))

(assert (=> b!5425456 m!6449416))

(assert (=> b!5425456 m!6449416))

(declare-fun m!6449524 () Bool)

(assert (=> b!5425456 m!6449524))

(assert (=> b!5425456 m!6449420))

(assert (=> b!5425456 m!6449524))

(assert (=> b!5425456 m!6449420))

(declare-fun m!6449526 () Bool)

(assert (=> b!5425456 m!6449526))

(assert (=> b!5425036 d!1730203))

(declare-fun d!1730205 () Bool)

(declare-fun e!3362135 () Bool)

(assert (=> d!1730205 e!3362135))

(declare-fun res!2308945 () Bool)

(assert (=> d!1730205 (=> (not res!2308945) (not e!3362135))))

(declare-fun lt!2213064 () List!61943)

(declare-fun noDuplicate!1409 (List!61943) Bool)

(assert (=> d!1730205 (= res!2308945 (noDuplicate!1409 lt!2213064))))

(declare-fun choose!41137 ((Set Context!9196)) List!61943)

(assert (=> d!1730205 (= lt!2213064 (choose!41137 z!1189))))

(assert (=> d!1730205 (= (toList!8998 z!1189) lt!2213064)))

(declare-fun b!5425459 () Bool)

(declare-fun content!11124 (List!61943) (Set Context!9196))

(assert (=> b!5425459 (= e!3362135 (= (content!11124 lt!2213064) z!1189))))

(assert (= (and d!1730205 res!2308945) b!5425459))

(declare-fun m!6449528 () Bool)

(assert (=> d!1730205 m!6449528))

(declare-fun m!6449530 () Bool)

(assert (=> d!1730205 m!6449530))

(declare-fun m!6449532 () Bool)

(assert (=> b!5425459 m!6449532))

(assert (=> b!5425014 d!1730205))

(declare-fun b!5425460 () Bool)

(declare-fun res!2308948 () Bool)

(declare-fun e!3362139 () Bool)

(assert (=> b!5425460 (=> res!2308948 e!3362139)))

(assert (=> b!5425460 (= res!2308948 (not (isEmpty!33818 (tail!10732 s!2326))))))

(declare-fun b!5425462 () Bool)

(declare-fun e!3362136 () Bool)

(declare-fun e!3362138 () Bool)

(assert (=> b!5425462 (= e!3362136 e!3362138)))

(declare-fun c!946254 () Bool)

(assert (=> b!5425462 (= c!946254 (is-EmptyLang!15214 lt!2212910))))

(declare-fun b!5425463 () Bool)

(declare-fun lt!2213065 () Bool)

(assert (=> b!5425463 (= e!3362138 (not lt!2213065))))

(declare-fun b!5425464 () Bool)

(declare-fun e!3362141 () Bool)

(assert (=> b!5425464 (= e!3362141 (= (head!11635 s!2326) (c!946160 lt!2212910)))))

(declare-fun b!5425465 () Bool)

(declare-fun call!388240 () Bool)

(assert (=> b!5425465 (= e!3362136 (= lt!2213065 call!388240))))

(declare-fun b!5425466 () Bool)

(declare-fun e!3362137 () Bool)

(assert (=> b!5425466 (= e!3362137 (nullable!5383 lt!2212910))))

(declare-fun b!5425467 () Bool)

(assert (=> b!5425467 (= e!3362139 (not (= (head!11635 s!2326) (c!946160 lt!2212910))))))

(declare-fun b!5425468 () Bool)

(declare-fun res!2308947 () Bool)

(assert (=> b!5425468 (=> (not res!2308947) (not e!3362141))))

(assert (=> b!5425468 (= res!2308947 (isEmpty!33818 (tail!10732 s!2326)))))

(declare-fun b!5425469 () Bool)

(declare-fun e!3362140 () Bool)

(declare-fun e!3362142 () Bool)

(assert (=> b!5425469 (= e!3362140 e!3362142)))

(declare-fun res!2308951 () Bool)

(assert (=> b!5425469 (=> (not res!2308951) (not e!3362142))))

(assert (=> b!5425469 (= res!2308951 (not lt!2213065))))

(declare-fun b!5425470 () Bool)

(assert (=> b!5425470 (= e!3362142 e!3362139)))

(declare-fun res!2308949 () Bool)

(assert (=> b!5425470 (=> res!2308949 e!3362139)))

(assert (=> b!5425470 (= res!2308949 call!388240)))

(declare-fun b!5425471 () Bool)

(declare-fun res!2308950 () Bool)

(assert (=> b!5425471 (=> (not res!2308950) (not e!3362141))))

(assert (=> b!5425471 (= res!2308950 (not call!388240))))

(declare-fun b!5425472 () Bool)

(assert (=> b!5425472 (= e!3362137 (matchR!7399 (derivativeStep!4280 lt!2212910 (head!11635 s!2326)) (tail!10732 s!2326)))))

(declare-fun bm!388235 () Bool)

(assert (=> bm!388235 (= call!388240 (isEmpty!33818 s!2326))))

(declare-fun b!5425473 () Bool)

(declare-fun res!2308952 () Bool)

(assert (=> b!5425473 (=> res!2308952 e!3362140)))

(assert (=> b!5425473 (= res!2308952 e!3362141)))

(declare-fun res!2308946 () Bool)

(assert (=> b!5425473 (=> (not res!2308946) (not e!3362141))))

(assert (=> b!5425473 (= res!2308946 lt!2213065)))

(declare-fun d!1730207 () Bool)

(assert (=> d!1730207 e!3362136))

(declare-fun c!946255 () Bool)

(assert (=> d!1730207 (= c!946255 (is-EmptyExpr!15214 lt!2212910))))

(assert (=> d!1730207 (= lt!2213065 e!3362137)))

(declare-fun c!946253 () Bool)

(assert (=> d!1730207 (= c!946253 (isEmpty!33818 s!2326))))

(assert (=> d!1730207 (validRegex!6950 lt!2212910)))

(assert (=> d!1730207 (= (matchR!7399 lt!2212910 s!2326) lt!2213065)))

(declare-fun b!5425461 () Bool)

(declare-fun res!2308953 () Bool)

(assert (=> b!5425461 (=> res!2308953 e!3362140)))

(assert (=> b!5425461 (= res!2308953 (not (is-ElementMatch!15214 lt!2212910)))))

(assert (=> b!5425461 (= e!3362138 e!3362140)))

(assert (= (and d!1730207 c!946253) b!5425466))

(assert (= (and d!1730207 (not c!946253)) b!5425472))

(assert (= (and d!1730207 c!946255) b!5425465))

(assert (= (and d!1730207 (not c!946255)) b!5425462))

(assert (= (and b!5425462 c!946254) b!5425463))

(assert (= (and b!5425462 (not c!946254)) b!5425461))

(assert (= (and b!5425461 (not res!2308953)) b!5425473))

(assert (= (and b!5425473 res!2308946) b!5425471))

(assert (= (and b!5425471 res!2308950) b!5425468))

(assert (= (and b!5425468 res!2308947) b!5425464))

(assert (= (and b!5425473 (not res!2308952)) b!5425469))

(assert (= (and b!5425469 res!2308951) b!5425470))

(assert (= (and b!5425470 (not res!2308949)) b!5425460))

(assert (= (and b!5425460 (not res!2308948)) b!5425467))

(assert (= (or b!5425465 b!5425470 b!5425471) bm!388235))

(assert (=> b!5425460 m!6449420))

(assert (=> b!5425460 m!6449420))

(assert (=> b!5425460 m!6449486))

(assert (=> b!5425467 m!6449416))

(assert (=> b!5425468 m!6449420))

(assert (=> b!5425468 m!6449420))

(assert (=> b!5425468 m!6449486))

(assert (=> b!5425464 m!6449416))

(declare-fun m!6449534 () Bool)

(assert (=> b!5425466 m!6449534))

(assert (=> bm!388235 m!6449412))

(assert (=> d!1730207 m!6449412))

(declare-fun m!6449536 () Bool)

(assert (=> d!1730207 m!6449536))

(assert (=> b!5425472 m!6449416))

(assert (=> b!5425472 m!6449416))

(declare-fun m!6449538 () Bool)

(assert (=> b!5425472 m!6449538))

(assert (=> b!5425472 m!6449420))

(assert (=> b!5425472 m!6449538))

(assert (=> b!5425472 m!6449420))

(declare-fun m!6449540 () Bool)

(assert (=> b!5425472 m!6449540))

(assert (=> b!5425034 d!1730207))

(declare-fun bs!1253279 () Bool)

(declare-fun b!5425481 () Bool)

(assert (= bs!1253279 (and b!5425481 d!1730183)))

(declare-fun lambda!284503 () Int)

(assert (=> bs!1253279 (not (= lambda!284503 lambda!284489))))

(assert (=> bs!1253279 (not (= lambda!284503 lambda!284490))))

(declare-fun bs!1253280 () Bool)

(assert (= bs!1253280 (and b!5425481 b!5425347)))

(assert (=> bs!1253280 (not (= lambda!284503 lambda!284496))))

(declare-fun bs!1253281 () Bool)

(assert (= bs!1253281 (and b!5425481 b!5425041)))

(assert (=> bs!1253281 (not (= lambda!284503 lambda!284456))))

(declare-fun bs!1253282 () Bool)

(assert (= bs!1253282 (and b!5425481 b!5425352)))

(assert (=> bs!1253282 (= (and (= (reg!15543 lt!2212910) (reg!15543 r!7292)) (= lt!2212910 r!7292)) (= lambda!284503 lambda!284495))))

(declare-fun bs!1253283 () Bool)

(assert (= bs!1253283 (and b!5425481 d!1730181)))

(assert (=> bs!1253283 (not (= lambda!284503 lambda!284484))))

(assert (=> bs!1253281 (not (= lambda!284503 lambda!284457))))

(assert (=> b!5425481 true))

(assert (=> b!5425481 true))

(declare-fun bs!1253284 () Bool)

(declare-fun b!5425476 () Bool)

(assert (= bs!1253284 (and b!5425476 d!1730183)))

(declare-fun lambda!284504 () Int)

(assert (=> bs!1253284 (not (= lambda!284504 lambda!284489))))

(assert (=> bs!1253284 (= (and (= (regOne!30940 lt!2212910) (regOne!30940 r!7292)) (= (regTwo!30940 lt!2212910) (regTwo!30940 r!7292))) (= lambda!284504 lambda!284490))))

(declare-fun bs!1253285 () Bool)

(assert (= bs!1253285 (and b!5425476 b!5425481)))

(assert (=> bs!1253285 (not (= lambda!284504 lambda!284503))))

(declare-fun bs!1253286 () Bool)

(assert (= bs!1253286 (and b!5425476 b!5425347)))

(assert (=> bs!1253286 (= (and (= (regOne!30940 lt!2212910) (regOne!30940 r!7292)) (= (regTwo!30940 lt!2212910) (regTwo!30940 r!7292))) (= lambda!284504 lambda!284496))))

(declare-fun bs!1253287 () Bool)

(assert (= bs!1253287 (and b!5425476 b!5425041)))

(assert (=> bs!1253287 (not (= lambda!284504 lambda!284456))))

(declare-fun bs!1253288 () Bool)

(assert (= bs!1253288 (and b!5425476 b!5425352)))

(assert (=> bs!1253288 (not (= lambda!284504 lambda!284495))))

(declare-fun bs!1253289 () Bool)

(assert (= bs!1253289 (and b!5425476 d!1730181)))

(assert (=> bs!1253289 (not (= lambda!284504 lambda!284484))))

(assert (=> bs!1253287 (= (and (= (regOne!30940 lt!2212910) (regOne!30940 r!7292)) (= (regTwo!30940 lt!2212910) (regTwo!30940 r!7292))) (= lambda!284504 lambda!284457))))

(assert (=> b!5425476 true))

(assert (=> b!5425476 true))

(declare-fun b!5425474 () Bool)

(declare-fun e!3362144 () Bool)

(declare-fun e!3362146 () Bool)

(assert (=> b!5425474 (= e!3362144 e!3362146)))

(declare-fun res!2308955 () Bool)

(assert (=> b!5425474 (= res!2308955 (matchRSpec!2317 (regOne!30941 lt!2212910) s!2326))))

(assert (=> b!5425474 (=> res!2308955 e!3362146)))

(declare-fun bm!388236 () Bool)

(declare-fun call!388242 () Bool)

(assert (=> bm!388236 (= call!388242 (isEmpty!33818 s!2326))))

(declare-fun call!388241 () Bool)

(declare-fun bm!388237 () Bool)

(declare-fun c!946257 () Bool)

(assert (=> bm!388237 (= call!388241 (Exists!2395 (ite c!946257 lambda!284503 lambda!284504)))))

(declare-fun b!5425475 () Bool)

(assert (=> b!5425475 (= e!3362146 (matchRSpec!2317 (regTwo!30941 lt!2212910) s!2326))))

(declare-fun e!3362143 () Bool)

(assert (=> b!5425476 (= e!3362143 call!388241)))

(declare-fun d!1730209 () Bool)

(declare-fun c!946256 () Bool)

(assert (=> d!1730209 (= c!946256 (is-EmptyExpr!15214 lt!2212910))))

(declare-fun e!3362148 () Bool)

(assert (=> d!1730209 (= (matchRSpec!2317 lt!2212910 s!2326) e!3362148)))

(declare-fun b!5425477 () Bool)

(declare-fun e!3362149 () Bool)

(assert (=> b!5425477 (= e!3362148 e!3362149)))

(declare-fun res!2308954 () Bool)

(assert (=> b!5425477 (= res!2308954 (not (is-EmptyLang!15214 lt!2212910)))))

(assert (=> b!5425477 (=> (not res!2308954) (not e!3362149))))

(declare-fun b!5425478 () Bool)

(assert (=> b!5425478 (= e!3362144 e!3362143)))

(assert (=> b!5425478 (= c!946257 (is-Star!15214 lt!2212910))))

(declare-fun b!5425479 () Bool)

(assert (=> b!5425479 (= e!3362148 call!388242)))

(declare-fun b!5425480 () Bool)

(declare-fun c!946259 () Bool)

(assert (=> b!5425480 (= c!946259 (is-Union!15214 lt!2212910))))

(declare-fun e!3362145 () Bool)

(assert (=> b!5425480 (= e!3362145 e!3362144)))

(declare-fun e!3362147 () Bool)

(assert (=> b!5425481 (= e!3362147 call!388241)))

(declare-fun b!5425482 () Bool)

(declare-fun c!946258 () Bool)

(assert (=> b!5425482 (= c!946258 (is-ElementMatch!15214 lt!2212910))))

(assert (=> b!5425482 (= e!3362149 e!3362145)))

(declare-fun b!5425483 () Bool)

(declare-fun res!2308956 () Bool)

(assert (=> b!5425483 (=> res!2308956 e!3362147)))

(assert (=> b!5425483 (= res!2308956 call!388242)))

(assert (=> b!5425483 (= e!3362143 e!3362147)))

(declare-fun b!5425484 () Bool)

(assert (=> b!5425484 (= e!3362145 (= s!2326 (Cons!61817 (c!946160 lt!2212910) Nil!61817)))))

(assert (= (and d!1730209 c!946256) b!5425479))

(assert (= (and d!1730209 (not c!946256)) b!5425477))

(assert (= (and b!5425477 res!2308954) b!5425482))

(assert (= (and b!5425482 c!946258) b!5425484))

(assert (= (and b!5425482 (not c!946258)) b!5425480))

(assert (= (and b!5425480 c!946259) b!5425474))

(assert (= (and b!5425480 (not c!946259)) b!5425478))

(assert (= (and b!5425474 (not res!2308955)) b!5425475))

(assert (= (and b!5425478 c!946257) b!5425483))

(assert (= (and b!5425478 (not c!946257)) b!5425476))

(assert (= (and b!5425483 (not res!2308956)) b!5425481))

(assert (= (or b!5425481 b!5425476) bm!388237))

(assert (= (or b!5425479 b!5425483) bm!388236))

(declare-fun m!6449542 () Bool)

(assert (=> b!5425474 m!6449542))

(assert (=> bm!388236 m!6449412))

(declare-fun m!6449544 () Bool)

(assert (=> bm!388237 m!6449544))

(declare-fun m!6449546 () Bool)

(assert (=> b!5425475 m!6449546))

(assert (=> b!5425034 d!1730209))

(declare-fun d!1730211 () Bool)

(assert (=> d!1730211 (= (matchR!7399 lt!2212910 s!2326) (matchRSpec!2317 lt!2212910 s!2326))))

(declare-fun lt!2213066 () Unit!154378)

(assert (=> d!1730211 (= lt!2213066 (choose!41136 lt!2212910 s!2326))))

(assert (=> d!1730211 (validRegex!6950 lt!2212910)))

(assert (=> d!1730211 (= (mainMatchTheorem!2317 lt!2212910 s!2326) lt!2213066)))

(declare-fun bs!1253290 () Bool)

(assert (= bs!1253290 d!1730211))

(assert (=> bs!1253290 m!6449222))

(assert (=> bs!1253290 m!6449224))

(declare-fun m!6449548 () Bool)

(assert (=> bs!1253290 m!6449548))

(assert (=> bs!1253290 m!6449536))

(assert (=> b!5425034 d!1730211))

(declare-fun d!1730213 () Bool)

(declare-fun lt!2213069 () Regex!15214)

(assert (=> d!1730213 (validRegex!6950 lt!2213069)))

(assert (=> d!1730213 (= lt!2213069 (generalisedUnion!1143 (unfocusZipperList!656 (Cons!61819 lt!2212906 Nil!61819))))))

(assert (=> d!1730213 (= (unfocusZipper!956 (Cons!61819 lt!2212906 Nil!61819)) lt!2213069)))

(declare-fun bs!1253291 () Bool)

(assert (= bs!1253291 d!1730213))

(declare-fun m!6449550 () Bool)

(assert (=> bs!1253291 m!6449550))

(declare-fun m!6449552 () Bool)

(assert (=> bs!1253291 m!6449552))

(assert (=> bs!1253291 m!6449552))

(declare-fun m!6449554 () Bool)

(assert (=> bs!1253291 m!6449554))

(assert (=> b!5425012 d!1730213))

(declare-fun d!1730215 () Bool)

(declare-fun lt!2213070 () Regex!15214)

(assert (=> d!1730215 (validRegex!6950 lt!2213070)))

(assert (=> d!1730215 (= lt!2213070 (generalisedUnion!1143 (unfocusZipperList!656 (Cons!61819 lt!2212913 Nil!61819))))))

(assert (=> d!1730215 (= (unfocusZipper!956 (Cons!61819 lt!2212913 Nil!61819)) lt!2213070)))

(declare-fun bs!1253292 () Bool)

(assert (= bs!1253292 d!1730215))

(declare-fun m!6449556 () Bool)

(assert (=> bs!1253292 m!6449556))

(declare-fun m!6449558 () Bool)

(assert (=> bs!1253292 m!6449558))

(assert (=> bs!1253292 m!6449558))

(declare-fun m!6449560 () Bool)

(assert (=> bs!1253292 m!6449560))

(assert (=> b!5425011 d!1730215))

(declare-fun d!1730217 () Bool)

(declare-fun e!3362152 () Bool)

(assert (=> d!1730217 (= (matchZipper!1458 (set.union lt!2212922 lt!2212903) (t!375164 s!2326)) e!3362152)))

(declare-fun res!2308959 () Bool)

(assert (=> d!1730217 (=> res!2308959 e!3362152)))

(assert (=> d!1730217 (= res!2308959 (matchZipper!1458 lt!2212922 (t!375164 s!2326)))))

(declare-fun lt!2213073 () Unit!154378)

(declare-fun choose!41138 ((Set Context!9196) (Set Context!9196) List!61941) Unit!154378)

(assert (=> d!1730217 (= lt!2213073 (choose!41138 lt!2212922 lt!2212903 (t!375164 s!2326)))))

(assert (=> d!1730217 (= (lemmaZipperConcatMatchesSameAsBothZippers!451 lt!2212922 lt!2212903 (t!375164 s!2326)) lt!2213073)))

(declare-fun b!5425487 () Bool)

(assert (=> b!5425487 (= e!3362152 (matchZipper!1458 lt!2212903 (t!375164 s!2326)))))

(assert (= (and d!1730217 (not res!2308959)) b!5425487))

(assert (=> d!1730217 m!6449190))

(assert (=> d!1730217 m!6449162))

(declare-fun m!6449562 () Bool)

(assert (=> d!1730217 m!6449562))

(assert (=> b!5425487 m!6449168))

(assert (=> b!5425032 d!1730217))

(assert (=> b!5425032 d!1730165))

(declare-fun d!1730219 () Bool)

(declare-fun c!946260 () Bool)

(assert (=> d!1730219 (= c!946260 (isEmpty!33818 (t!375164 s!2326)))))

(declare-fun e!3362153 () Bool)

(assert (=> d!1730219 (= (matchZipper!1458 (set.union lt!2212922 lt!2212903) (t!375164 s!2326)) e!3362153)))

(declare-fun b!5425488 () Bool)

(assert (=> b!5425488 (= e!3362153 (nullableZipper!1459 (set.union lt!2212922 lt!2212903)))))

(declare-fun b!5425489 () Bool)

(assert (=> b!5425489 (= e!3362153 (matchZipper!1458 (derivationStepZipper!1453 (set.union lt!2212922 lt!2212903) (head!11635 (t!375164 s!2326))) (tail!10732 (t!375164 s!2326))))))

(assert (= (and d!1730219 c!946260) b!5425488))

(assert (= (and d!1730219 (not c!946260)) b!5425489))

(assert (=> d!1730219 m!6449398))

(declare-fun m!6449564 () Bool)

(assert (=> b!5425488 m!6449564))

(assert (=> b!5425489 m!6449402))

(assert (=> b!5425489 m!6449402))

(declare-fun m!6449566 () Bool)

(assert (=> b!5425489 m!6449566))

(assert (=> b!5425489 m!6449406))

(assert (=> b!5425489 m!6449566))

(assert (=> b!5425489 m!6449406))

(declare-fun m!6449568 () Bool)

(assert (=> b!5425489 m!6449568))

(assert (=> b!5425032 d!1730219))

(declare-fun bs!1253293 () Bool)

(declare-fun d!1730221 () Bool)

(assert (= bs!1253293 (and d!1730221 b!5425039)))

(declare-fun lambda!284505 () Int)

(assert (=> bs!1253293 (= lambda!284505 lambda!284459)))

(declare-fun bs!1253294 () Bool)

(assert (= bs!1253294 (and d!1730221 d!1730199)))

(assert (=> bs!1253294 (= lambda!284505 lambda!284499)))

(declare-fun bs!1253295 () Bool)

(assert (= bs!1253295 (and d!1730221 d!1730201)))

(assert (=> bs!1253295 (= lambda!284505 lambda!284502)))

(assert (=> d!1730221 (= (inv!81283 setElem!35366) (forall!14552 (exprs!5098 setElem!35366) lambda!284505))))

(declare-fun bs!1253296 () Bool)

(assert (= bs!1253296 d!1730221))

(declare-fun m!6449570 () Bool)

(assert (=> bs!1253296 m!6449570))

(assert (=> setNonEmpty!35366 d!1730221))

(declare-fun d!1730223 () Bool)

(declare-fun lt!2213074 () Regex!15214)

(assert (=> d!1730223 (validRegex!6950 lt!2213074)))

(assert (=> d!1730223 (= lt!2213074 (generalisedUnion!1143 (unfocusZipperList!656 zl!343)))))

(assert (=> d!1730223 (= (unfocusZipper!956 zl!343) lt!2213074)))

(declare-fun bs!1253297 () Bool)

(assert (= bs!1253297 d!1730223))

(declare-fun m!6449572 () Bool)

(assert (=> bs!1253297 m!6449572))

(assert (=> bs!1253297 m!6449206))

(assert (=> bs!1253297 m!6449206))

(assert (=> bs!1253297 m!6449208))

(assert (=> b!5425030 d!1730223))

(declare-fun b!5425490 () Bool)

(declare-fun c!946265 () Bool)

(declare-fun e!3362155 () Bool)

(assert (=> b!5425490 (= c!946265 e!3362155)))

(declare-fun res!2308960 () Bool)

(assert (=> b!5425490 (=> (not res!2308960) (not e!3362155))))

(assert (=> b!5425490 (= res!2308960 (is-Concat!24059 (reg!15543 (regOne!30940 r!7292))))))

(declare-fun e!3362158 () (Set Context!9196))

(declare-fun e!3362157 () (Set Context!9196))

(assert (=> b!5425490 (= e!3362158 e!3362157)))

(declare-fun b!5425491 () Bool)

(declare-fun call!388247 () (Set Context!9196))

(declare-fun call!388248 () (Set Context!9196))

(assert (=> b!5425491 (= e!3362157 (set.union call!388247 call!388248))))

(declare-fun bm!388238 () Bool)

(declare-fun call!388245 () (Set Context!9196))

(assert (=> bm!388238 (= call!388245 call!388248)))

(declare-fun bm!388239 () Bool)

(declare-fun call!388243 () List!61942)

(declare-fun c!946262 () Bool)

(assert (=> bm!388239 (= call!388247 (derivationStepZipperDown!662 (ite c!946262 (regOne!30941 (reg!15543 (regOne!30940 r!7292))) (regOne!30940 (reg!15543 (regOne!30940 r!7292)))) (ite c!946262 lt!2212906 (Context!9197 call!388243)) (h!68265 s!2326)))))

(declare-fun b!5425492 () Bool)

(declare-fun e!3362154 () (Set Context!9196))

(assert (=> b!5425492 (= e!3362154 call!388245)))

(declare-fun d!1730225 () Bool)

(declare-fun c!946263 () Bool)

(assert (=> d!1730225 (= c!946263 (and (is-ElementMatch!15214 (reg!15543 (regOne!30940 r!7292))) (= (c!946160 (reg!15543 (regOne!30940 r!7292))) (h!68265 s!2326))))))

(declare-fun e!3362156 () (Set Context!9196))

(assert (=> d!1730225 (= (derivationStepZipperDown!662 (reg!15543 (regOne!30940 r!7292)) lt!2212906 (h!68265 s!2326)) e!3362156)))

(declare-fun b!5425493 () Bool)

(assert (=> b!5425493 (= e!3362156 e!3362158)))

(assert (=> b!5425493 (= c!946262 (is-Union!15214 (reg!15543 (regOne!30940 r!7292))))))

(declare-fun b!5425494 () Bool)

(declare-fun e!3362159 () (Set Context!9196))

(assert (=> b!5425494 (= e!3362157 e!3362159)))

(declare-fun c!946261 () Bool)

(assert (=> b!5425494 (= c!946261 (is-Concat!24059 (reg!15543 (regOne!30940 r!7292))))))

(declare-fun b!5425495 () Bool)

(declare-fun c!946264 () Bool)

(assert (=> b!5425495 (= c!946264 (is-Star!15214 (reg!15543 (regOne!30940 r!7292))))))

(assert (=> b!5425495 (= e!3362159 e!3362154)))

(declare-fun bm!388240 () Bool)

(assert (=> bm!388240 (= call!388243 ($colon$colon!1509 (exprs!5098 lt!2212906) (ite (or c!946265 c!946261) (regTwo!30940 (reg!15543 (regOne!30940 r!7292))) (reg!15543 (regOne!30940 r!7292)))))))

(declare-fun b!5425496 () Bool)

(assert (=> b!5425496 (= e!3362155 (nullable!5383 (regOne!30940 (reg!15543 (regOne!30940 r!7292)))))))

(declare-fun bm!388241 () Bool)

(declare-fun call!388246 () List!61942)

(assert (=> bm!388241 (= call!388246 call!388243)))

(declare-fun bm!388242 () Bool)

(declare-fun call!388244 () (Set Context!9196))

(assert (=> bm!388242 (= call!388248 call!388244)))

(declare-fun b!5425497 () Bool)

(assert (=> b!5425497 (= e!3362159 call!388245)))

(declare-fun b!5425498 () Bool)

(assert (=> b!5425498 (= e!3362154 (as set.empty (Set Context!9196)))))

(declare-fun b!5425499 () Bool)

(assert (=> b!5425499 (= e!3362158 (set.union call!388247 call!388244))))

(declare-fun b!5425500 () Bool)

(assert (=> b!5425500 (= e!3362156 (set.insert lt!2212906 (as set.empty (Set Context!9196))))))

(declare-fun bm!388243 () Bool)

(assert (=> bm!388243 (= call!388244 (derivationStepZipperDown!662 (ite c!946262 (regTwo!30941 (reg!15543 (regOne!30940 r!7292))) (ite c!946265 (regTwo!30940 (reg!15543 (regOne!30940 r!7292))) (ite c!946261 (regOne!30940 (reg!15543 (regOne!30940 r!7292))) (reg!15543 (reg!15543 (regOne!30940 r!7292)))))) (ite (or c!946262 c!946265) lt!2212906 (Context!9197 call!388246)) (h!68265 s!2326)))))

(assert (= (and d!1730225 c!946263) b!5425500))

(assert (= (and d!1730225 (not c!946263)) b!5425493))

(assert (= (and b!5425493 c!946262) b!5425499))

(assert (= (and b!5425493 (not c!946262)) b!5425490))

(assert (= (and b!5425490 res!2308960) b!5425496))

(assert (= (and b!5425490 c!946265) b!5425491))

(assert (= (and b!5425490 (not c!946265)) b!5425494))

(assert (= (and b!5425494 c!946261) b!5425497))

(assert (= (and b!5425494 (not c!946261)) b!5425495))

(assert (= (and b!5425495 c!946264) b!5425492))

(assert (= (and b!5425495 (not c!946264)) b!5425498))

(assert (= (or b!5425497 b!5425492) bm!388241))

(assert (= (or b!5425497 b!5425492) bm!388238))

(assert (= (or b!5425491 bm!388241) bm!388240))

(assert (= (or b!5425491 bm!388238) bm!388242))

(assert (= (or b!5425499 bm!388242) bm!388243))

(assert (= (or b!5425499 b!5425491) bm!388239))

(declare-fun m!6449574 () Bool)

(assert (=> bm!388240 m!6449574))

(assert (=> b!5425500 m!6449140))

(declare-fun m!6449576 () Bool)

(assert (=> bm!388243 m!6449576))

(declare-fun m!6449578 () Bool)

(assert (=> bm!388239 m!6449578))

(declare-fun m!6449580 () Bool)

(assert (=> b!5425496 m!6449580))

(assert (=> b!5425007 d!1730225))

(declare-fun d!1730227 () Bool)

(assert (=> d!1730227 (= (isEmpty!33815 (t!375165 (exprs!5098 (h!68267 zl!343)))) (is-Nil!61818 (t!375165 (exprs!5098 (h!68267 zl!343)))))))

(assert (=> b!5425047 d!1730227))

(declare-fun bs!1253298 () Bool)

(declare-fun d!1730229 () Bool)

(assert (= bs!1253298 (and d!1730229 b!5425039)))

(declare-fun lambda!284508 () Int)

(assert (=> bs!1253298 (= lambda!284508 lambda!284459)))

(declare-fun bs!1253299 () Bool)

(assert (= bs!1253299 (and d!1730229 d!1730199)))

(assert (=> bs!1253299 (= lambda!284508 lambda!284499)))

(declare-fun bs!1253300 () Bool)

(assert (= bs!1253300 (and d!1730229 d!1730201)))

(assert (=> bs!1253300 (= lambda!284508 lambda!284502)))

(declare-fun bs!1253301 () Bool)

(assert (= bs!1253301 (and d!1730229 d!1730221)))

(assert (=> bs!1253301 (= lambda!284508 lambda!284505)))

(declare-fun b!5425521 () Bool)

(declare-fun e!3362172 () Bool)

(assert (=> b!5425521 (= e!3362172 (isEmpty!33815 (t!375165 (unfocusZipperList!656 zl!343))))))

(declare-fun b!5425522 () Bool)

(declare-fun e!3362176 () Regex!15214)

(assert (=> b!5425522 (= e!3362176 (h!68266 (unfocusZipperList!656 zl!343)))))

(declare-fun e!3362177 () Bool)

(assert (=> d!1730229 e!3362177))

(declare-fun res!2308966 () Bool)

(assert (=> d!1730229 (=> (not res!2308966) (not e!3362177))))

(declare-fun lt!2213077 () Regex!15214)

(assert (=> d!1730229 (= res!2308966 (validRegex!6950 lt!2213077))))

(assert (=> d!1730229 (= lt!2213077 e!3362176)))

(declare-fun c!946276 () Bool)

(assert (=> d!1730229 (= c!946276 e!3362172)))

(declare-fun res!2308965 () Bool)

(assert (=> d!1730229 (=> (not res!2308965) (not e!3362172))))

(assert (=> d!1730229 (= res!2308965 (is-Cons!61818 (unfocusZipperList!656 zl!343)))))

(assert (=> d!1730229 (forall!14552 (unfocusZipperList!656 zl!343) lambda!284508)))

(assert (=> d!1730229 (= (generalisedUnion!1143 (unfocusZipperList!656 zl!343)) lt!2213077)))

(declare-fun b!5425523 () Bool)

(declare-fun e!3362174 () Bool)

(declare-fun e!3362175 () Bool)

(assert (=> b!5425523 (= e!3362174 e!3362175)))

(declare-fun c!946274 () Bool)

(assert (=> b!5425523 (= c!946274 (isEmpty!33815 (tail!10733 (unfocusZipperList!656 zl!343))))))

(declare-fun b!5425524 () Bool)

(declare-fun isUnion!432 (Regex!15214) Bool)

(assert (=> b!5425524 (= e!3362175 (isUnion!432 lt!2213077))))

(declare-fun b!5425525 () Bool)

(assert (=> b!5425525 (= e!3362175 (= lt!2213077 (head!11636 (unfocusZipperList!656 zl!343))))))

(declare-fun b!5425526 () Bool)

(declare-fun isEmptyLang!1000 (Regex!15214) Bool)

(assert (=> b!5425526 (= e!3362174 (isEmptyLang!1000 lt!2213077))))

(declare-fun b!5425527 () Bool)

(declare-fun e!3362173 () Regex!15214)

(assert (=> b!5425527 (= e!3362173 EmptyLang!15214)))

(declare-fun b!5425528 () Bool)

(assert (=> b!5425528 (= e!3362173 (Union!15214 (h!68266 (unfocusZipperList!656 zl!343)) (generalisedUnion!1143 (t!375165 (unfocusZipperList!656 zl!343)))))))

(declare-fun b!5425529 () Bool)

(assert (=> b!5425529 (= e!3362176 e!3362173)))

(declare-fun c!946277 () Bool)

(assert (=> b!5425529 (= c!946277 (is-Cons!61818 (unfocusZipperList!656 zl!343)))))

(declare-fun b!5425530 () Bool)

(assert (=> b!5425530 (= e!3362177 e!3362174)))

(declare-fun c!946275 () Bool)

(assert (=> b!5425530 (= c!946275 (isEmpty!33815 (unfocusZipperList!656 zl!343)))))

(assert (= (and d!1730229 res!2308965) b!5425521))

(assert (= (and d!1730229 c!946276) b!5425522))

(assert (= (and d!1730229 (not c!946276)) b!5425529))

(assert (= (and b!5425529 c!946277) b!5425528))

(assert (= (and b!5425529 (not c!946277)) b!5425527))

(assert (= (and d!1730229 res!2308966) b!5425530))

(assert (= (and b!5425530 c!946275) b!5425526))

(assert (= (and b!5425530 (not c!946275)) b!5425523))

(assert (= (and b!5425523 c!946274) b!5425525))

(assert (= (and b!5425523 (not c!946274)) b!5425524))

(assert (=> b!5425525 m!6449206))

(declare-fun m!6449582 () Bool)

(assert (=> b!5425525 m!6449582))

(assert (=> b!5425523 m!6449206))

(declare-fun m!6449584 () Bool)

(assert (=> b!5425523 m!6449584))

(assert (=> b!5425523 m!6449584))

(declare-fun m!6449586 () Bool)

(assert (=> b!5425523 m!6449586))

(declare-fun m!6449588 () Bool)

(assert (=> b!5425524 m!6449588))

(declare-fun m!6449590 () Bool)

(assert (=> b!5425526 m!6449590))

(declare-fun m!6449592 () Bool)

(assert (=> b!5425528 m!6449592))

(assert (=> b!5425530 m!6449206))

(declare-fun m!6449594 () Bool)

(assert (=> b!5425530 m!6449594))

(declare-fun m!6449596 () Bool)

(assert (=> b!5425521 m!6449596))

(declare-fun m!6449598 () Bool)

(assert (=> d!1730229 m!6449598))

(assert (=> d!1730229 m!6449206))

(declare-fun m!6449600 () Bool)

(assert (=> d!1730229 m!6449600))

(assert (=> b!5425026 d!1730229))

(declare-fun bs!1253302 () Bool)

(declare-fun d!1730231 () Bool)

(assert (= bs!1253302 (and d!1730231 d!1730229)))

(declare-fun lambda!284511 () Int)

(assert (=> bs!1253302 (= lambda!284511 lambda!284508)))

(declare-fun bs!1253303 () Bool)

(assert (= bs!1253303 (and d!1730231 d!1730199)))

(assert (=> bs!1253303 (= lambda!284511 lambda!284499)))

(declare-fun bs!1253304 () Bool)

(assert (= bs!1253304 (and d!1730231 d!1730201)))

(assert (=> bs!1253304 (= lambda!284511 lambda!284502)))

(declare-fun bs!1253305 () Bool)

(assert (= bs!1253305 (and d!1730231 b!5425039)))

(assert (=> bs!1253305 (= lambda!284511 lambda!284459)))

(declare-fun bs!1253306 () Bool)

(assert (= bs!1253306 (and d!1730231 d!1730221)))

(assert (=> bs!1253306 (= lambda!284511 lambda!284505)))

(declare-fun lt!2213080 () List!61942)

(assert (=> d!1730231 (forall!14552 lt!2213080 lambda!284511)))

(declare-fun e!3362180 () List!61942)

(assert (=> d!1730231 (= lt!2213080 e!3362180)))

(declare-fun c!946280 () Bool)

(assert (=> d!1730231 (= c!946280 (is-Cons!61819 zl!343))))

(assert (=> d!1730231 (= (unfocusZipperList!656 zl!343) lt!2213080)))

(declare-fun b!5425535 () Bool)

(assert (=> b!5425535 (= e!3362180 (Cons!61818 (generalisedConcat!883 (exprs!5098 (h!68267 zl!343))) (unfocusZipperList!656 (t!375166 zl!343))))))

(declare-fun b!5425536 () Bool)

(assert (=> b!5425536 (= e!3362180 Nil!61818)))

(assert (= (and d!1730231 c!946280) b!5425535))

(assert (= (and d!1730231 (not c!946280)) b!5425536))

(declare-fun m!6449602 () Bool)

(assert (=> d!1730231 m!6449602))

(assert (=> b!5425535 m!6449166))

(declare-fun m!6449604 () Bool)

(assert (=> b!5425535 m!6449604))

(assert (=> b!5425026 d!1730231))

(declare-fun b!5425537 () Bool)

(declare-fun e!3362182 () (Set Context!9196))

(declare-fun e!3362181 () (Set Context!9196))

(assert (=> b!5425537 (= e!3362182 e!3362181)))

(declare-fun c!946282 () Bool)

(assert (=> b!5425537 (= c!946282 (is-Cons!61818 (exprs!5098 lt!2212904)))))

(declare-fun d!1730233 () Bool)

(declare-fun c!946281 () Bool)

(declare-fun e!3362183 () Bool)

(assert (=> d!1730233 (= c!946281 e!3362183)))

(declare-fun res!2308967 () Bool)

(assert (=> d!1730233 (=> (not res!2308967) (not e!3362183))))

(assert (=> d!1730233 (= res!2308967 (is-Cons!61818 (exprs!5098 lt!2212904)))))

(assert (=> d!1730233 (= (derivationStepZipperUp!586 lt!2212904 (h!68265 s!2326)) e!3362182)))

(declare-fun b!5425538 () Bool)

(declare-fun call!388249 () (Set Context!9196))

(assert (=> b!5425538 (= e!3362181 call!388249)))

(declare-fun b!5425539 () Bool)

(assert (=> b!5425539 (= e!3362181 (as set.empty (Set Context!9196)))))

(declare-fun b!5425540 () Bool)

(assert (=> b!5425540 (= e!3362182 (set.union call!388249 (derivationStepZipperUp!586 (Context!9197 (t!375165 (exprs!5098 lt!2212904))) (h!68265 s!2326))))))

(declare-fun bm!388244 () Bool)

(assert (=> bm!388244 (= call!388249 (derivationStepZipperDown!662 (h!68266 (exprs!5098 lt!2212904)) (Context!9197 (t!375165 (exprs!5098 lt!2212904))) (h!68265 s!2326)))))

(declare-fun b!5425541 () Bool)

(assert (=> b!5425541 (= e!3362183 (nullable!5383 (h!68266 (exprs!5098 lt!2212904))))))

(assert (= (and d!1730233 res!2308967) b!5425541))

(assert (= (and d!1730233 c!946281) b!5425540))

(assert (= (and d!1730233 (not c!946281)) b!5425537))

(assert (= (and b!5425537 c!946282) b!5425538))

(assert (= (and b!5425537 (not c!946282)) b!5425539))

(assert (= (or b!5425540 b!5425538) bm!388244))

(declare-fun m!6449606 () Bool)

(assert (=> b!5425540 m!6449606))

(declare-fun m!6449608 () Bool)

(assert (=> bm!388244 m!6449608))

(declare-fun m!6449610 () Bool)

(assert (=> b!5425541 m!6449610))

(assert (=> b!5425025 d!1730233))

(declare-fun d!1730235 () Bool)

(assert (=> d!1730235 (= (flatMap!941 lt!2212907 lambda!284458) (choose!41131 lt!2212907 lambda!284458))))

(declare-fun bs!1253307 () Bool)

(assert (= bs!1253307 d!1730235))

(declare-fun m!6449612 () Bool)

(assert (=> bs!1253307 m!6449612))

(assert (=> b!5425025 d!1730235))

(declare-fun b!5425542 () Bool)

(declare-fun e!3362185 () (Set Context!9196))

(declare-fun e!3362184 () (Set Context!9196))

(assert (=> b!5425542 (= e!3362185 e!3362184)))

(declare-fun c!946284 () Bool)

(assert (=> b!5425542 (= c!946284 (is-Cons!61818 (exprs!5098 lt!2212906)))))

(declare-fun d!1730237 () Bool)

(declare-fun c!946283 () Bool)

(declare-fun e!3362186 () Bool)

(assert (=> d!1730237 (= c!946283 e!3362186)))

(declare-fun res!2308968 () Bool)

(assert (=> d!1730237 (=> (not res!2308968) (not e!3362186))))

(assert (=> d!1730237 (= res!2308968 (is-Cons!61818 (exprs!5098 lt!2212906)))))

(assert (=> d!1730237 (= (derivationStepZipperUp!586 lt!2212906 (h!68265 s!2326)) e!3362185)))

(declare-fun b!5425543 () Bool)

(declare-fun call!388250 () (Set Context!9196))

(assert (=> b!5425543 (= e!3362184 call!388250)))

(declare-fun b!5425544 () Bool)

(assert (=> b!5425544 (= e!3362184 (as set.empty (Set Context!9196)))))

(declare-fun b!5425545 () Bool)

(assert (=> b!5425545 (= e!3362185 (set.union call!388250 (derivationStepZipperUp!586 (Context!9197 (t!375165 (exprs!5098 lt!2212906))) (h!68265 s!2326))))))

(declare-fun bm!388245 () Bool)

(assert (=> bm!388245 (= call!388250 (derivationStepZipperDown!662 (h!68266 (exprs!5098 lt!2212906)) (Context!9197 (t!375165 (exprs!5098 lt!2212906))) (h!68265 s!2326)))))

(declare-fun b!5425546 () Bool)

(assert (=> b!5425546 (= e!3362186 (nullable!5383 (h!68266 (exprs!5098 lt!2212906))))))

(assert (= (and d!1730237 res!2308968) b!5425546))

(assert (= (and d!1730237 c!946283) b!5425545))

(assert (= (and d!1730237 (not c!946283)) b!5425542))

(assert (= (and b!5425542 c!946284) b!5425543))

(assert (= (and b!5425542 (not c!946284)) b!5425544))

(assert (= (or b!5425545 b!5425543) bm!388245))

(declare-fun m!6449614 () Bool)

(assert (=> b!5425545 m!6449614))

(declare-fun m!6449616 () Bool)

(assert (=> bm!388245 m!6449616))

(declare-fun m!6449618 () Bool)

(assert (=> b!5425546 m!6449618))

(assert (=> b!5425025 d!1730237))

(declare-fun d!1730239 () Bool)

(declare-fun lt!2213081 () Regex!15214)

(assert (=> d!1730239 (validRegex!6950 lt!2213081)))

(assert (=> d!1730239 (= lt!2213081 (generalisedUnion!1143 (unfocusZipperList!656 (Cons!61819 lt!2212904 Nil!61819))))))

(assert (=> d!1730239 (= (unfocusZipper!956 (Cons!61819 lt!2212904 Nil!61819)) lt!2213081)))

(declare-fun bs!1253308 () Bool)

(assert (= bs!1253308 d!1730239))

(declare-fun m!6449620 () Bool)

(assert (=> bs!1253308 m!6449620))

(declare-fun m!6449622 () Bool)

(assert (=> bs!1253308 m!6449622))

(assert (=> bs!1253308 m!6449622))

(declare-fun m!6449624 () Bool)

(assert (=> bs!1253308 m!6449624))

(assert (=> b!5425025 d!1730239))

(declare-fun d!1730241 () Bool)

(assert (=> d!1730241 (= (flatMap!941 lt!2212912 lambda!284458) (choose!41131 lt!2212912 lambda!284458))))

(declare-fun bs!1253309 () Bool)

(assert (= bs!1253309 d!1730241))

(declare-fun m!6449626 () Bool)

(assert (=> bs!1253309 m!6449626))

(assert (=> b!5425025 d!1730241))

(declare-fun d!1730243 () Bool)

(assert (=> d!1730243 (= (flatMap!941 lt!2212907 lambda!284458) (dynLambda!24357 lambda!284458 lt!2212904))))

(declare-fun lt!2213082 () Unit!154378)

(assert (=> d!1730243 (= lt!2213082 (choose!41132 lt!2212907 lt!2212904 lambda!284458))))

(assert (=> d!1730243 (= lt!2212907 (set.insert lt!2212904 (as set.empty (Set Context!9196))))))

(assert (=> d!1730243 (= (lemmaFlatMapOnSingletonSet!473 lt!2212907 lt!2212904 lambda!284458) lt!2213082)))

(declare-fun b_lambda!206993 () Bool)

(assert (=> (not b_lambda!206993) (not d!1730243)))

(declare-fun bs!1253310 () Bool)

(assert (= bs!1253310 d!1730243))

(assert (=> bs!1253310 m!6449156))

(declare-fun m!6449628 () Bool)

(assert (=> bs!1253310 m!6449628))

(declare-fun m!6449630 () Bool)

(assert (=> bs!1253310 m!6449630))

(assert (=> bs!1253310 m!6449152))

(assert (=> b!5425025 d!1730243))

(declare-fun d!1730245 () Bool)

(assert (=> d!1730245 (= (flatMap!941 lt!2212912 lambda!284458) (dynLambda!24357 lambda!284458 lt!2212906))))

(declare-fun lt!2213083 () Unit!154378)

(assert (=> d!1730245 (= lt!2213083 (choose!41132 lt!2212912 lt!2212906 lambda!284458))))

(assert (=> d!1730245 (= lt!2212912 (set.insert lt!2212906 (as set.empty (Set Context!9196))))))

(assert (=> d!1730245 (= (lemmaFlatMapOnSingletonSet!473 lt!2212912 lt!2212906 lambda!284458) lt!2213083)))

(declare-fun b_lambda!206995 () Bool)

(assert (=> (not b_lambda!206995) (not d!1730245)))

(declare-fun bs!1253311 () Bool)

(assert (= bs!1253311 d!1730245))

(assert (=> bs!1253311 m!6449144))

(declare-fun m!6449632 () Bool)

(assert (=> bs!1253311 m!6449632))

(declare-fun m!6449634 () Bool)

(assert (=> bs!1253311 m!6449634))

(assert (=> bs!1253311 m!6449140))

(assert (=> b!5425025 d!1730245))

(declare-fun bs!1253312 () Bool)

(declare-fun d!1730247 () Bool)

(assert (= bs!1253312 (and d!1730247 b!5425023)))

(declare-fun lambda!284514 () Int)

(assert (=> bs!1253312 (= lambda!284514 lambda!284458)))

(assert (=> d!1730247 true))

(assert (=> d!1730247 (= (derivationStepZipper!1453 lt!2212915 (h!68265 s!2326)) (flatMap!941 lt!2212915 lambda!284514))))

(declare-fun bs!1253313 () Bool)

(assert (= bs!1253313 d!1730247))

(declare-fun m!6449636 () Bool)

(assert (=> bs!1253313 m!6449636))

(assert (=> b!5425006 d!1730247))

(declare-fun d!1730249 () Bool)

(assert (=> d!1730249 (= (flatMap!941 lt!2212915 lambda!284458) (choose!41131 lt!2212915 lambda!284458))))

(declare-fun bs!1253314 () Bool)

(assert (= bs!1253314 d!1730249))

(declare-fun m!6449638 () Bool)

(assert (=> bs!1253314 m!6449638))

(assert (=> b!5425006 d!1730249))

(assert (=> b!5425006 d!1730151))

(declare-fun d!1730251 () Bool)

(assert (=> d!1730251 (= (flatMap!941 lt!2212915 lambda!284458) (dynLambda!24357 lambda!284458 lt!2212902))))

(declare-fun lt!2213084 () Unit!154378)

(assert (=> d!1730251 (= lt!2213084 (choose!41132 lt!2212915 lt!2212902 lambda!284458))))

(assert (=> d!1730251 (= lt!2212915 (set.insert lt!2212902 (as set.empty (Set Context!9196))))))

(assert (=> d!1730251 (= (lemmaFlatMapOnSingletonSet!473 lt!2212915 lt!2212902 lambda!284458) lt!2213084)))

(declare-fun b_lambda!206997 () Bool)

(assert (=> (not b_lambda!206997) (not d!1730251)))

(declare-fun bs!1253315 () Bool)

(assert (= bs!1253315 d!1730251))

(assert (=> bs!1253315 m!6449198))

(declare-fun m!6449640 () Bool)

(assert (=> bs!1253315 m!6449640))

(declare-fun m!6449642 () Bool)

(assert (=> bs!1253315 m!6449642))

(assert (=> bs!1253315 m!6449202))

(assert (=> b!5425006 d!1730251))

(assert (=> b!5425046 d!1730173))

(declare-fun d!1730253 () Bool)

(assert (=> d!1730253 (= (flatMap!941 lt!2212923 lambda!284458) (choose!41131 lt!2212923 lambda!284458))))

(declare-fun bs!1253316 () Bool)

(assert (= bs!1253316 d!1730253))

(declare-fun m!6449644 () Bool)

(assert (=> bs!1253316 m!6449644))

(assert (=> b!5425045 d!1730253))

(declare-fun b!5425549 () Bool)

(declare-fun e!3362188 () (Set Context!9196))

(declare-fun e!3362187 () (Set Context!9196))

(assert (=> b!5425549 (= e!3362188 e!3362187)))

(declare-fun c!946288 () Bool)

(assert (=> b!5425549 (= c!946288 (is-Cons!61818 (exprs!5098 lt!2212913)))))

(declare-fun d!1730255 () Bool)

(declare-fun c!946287 () Bool)

(declare-fun e!3362189 () Bool)

(assert (=> d!1730255 (= c!946287 e!3362189)))

(declare-fun res!2308969 () Bool)

(assert (=> d!1730255 (=> (not res!2308969) (not e!3362189))))

(assert (=> d!1730255 (= res!2308969 (is-Cons!61818 (exprs!5098 lt!2212913)))))

(assert (=> d!1730255 (= (derivationStepZipperUp!586 lt!2212913 (h!68265 s!2326)) e!3362188)))

(declare-fun b!5425550 () Bool)

(declare-fun call!388251 () (Set Context!9196))

(assert (=> b!5425550 (= e!3362187 call!388251)))

(declare-fun b!5425551 () Bool)

(assert (=> b!5425551 (= e!3362187 (as set.empty (Set Context!9196)))))

(declare-fun b!5425552 () Bool)

(assert (=> b!5425552 (= e!3362188 (set.union call!388251 (derivationStepZipperUp!586 (Context!9197 (t!375165 (exprs!5098 lt!2212913))) (h!68265 s!2326))))))

(declare-fun bm!388246 () Bool)

(assert (=> bm!388246 (= call!388251 (derivationStepZipperDown!662 (h!68266 (exprs!5098 lt!2212913)) (Context!9197 (t!375165 (exprs!5098 lt!2212913))) (h!68265 s!2326)))))

(declare-fun b!5425553 () Bool)

(assert (=> b!5425553 (= e!3362189 (nullable!5383 (h!68266 (exprs!5098 lt!2212913))))))

(assert (= (and d!1730255 res!2308969) b!5425553))

(assert (= (and d!1730255 c!946287) b!5425552))

(assert (= (and d!1730255 (not c!946287)) b!5425549))

(assert (= (and b!5425549 c!946288) b!5425550))

(assert (= (and b!5425549 (not c!946288)) b!5425551))

(assert (= (or b!5425552 b!5425550) bm!388246))

(declare-fun m!6449646 () Bool)

(assert (=> b!5425552 m!6449646))

(declare-fun m!6449648 () Bool)

(assert (=> bm!388246 m!6449648))

(declare-fun m!6449650 () Bool)

(assert (=> b!5425553 m!6449650))

(assert (=> b!5425045 d!1730255))

(declare-fun d!1730257 () Bool)

(assert (=> d!1730257 (= (flatMap!941 lt!2212923 lambda!284458) (dynLambda!24357 lambda!284458 lt!2212913))))

(declare-fun lt!2213085 () Unit!154378)

(assert (=> d!1730257 (= lt!2213085 (choose!41132 lt!2212923 lt!2212913 lambda!284458))))

(assert (=> d!1730257 (= lt!2212923 (set.insert lt!2212913 (as set.empty (Set Context!9196))))))

(assert (=> d!1730257 (= (lemmaFlatMapOnSingletonSet!473 lt!2212923 lt!2212913 lambda!284458) lt!2213085)))

(declare-fun b_lambda!206999 () Bool)

(assert (=> (not b_lambda!206999) (not d!1730257)))

(declare-fun bs!1253317 () Bool)

(assert (= bs!1253317 d!1730257))

(assert (=> bs!1253317 m!6449184))

(declare-fun m!6449652 () Bool)

(assert (=> bs!1253317 m!6449652))

(declare-fun m!6449654 () Bool)

(assert (=> bs!1253317 m!6449654))

(assert (=> bs!1253317 m!6449178))

(assert (=> b!5425045 d!1730257))

(declare-fun bs!1253318 () Bool)

(declare-fun d!1730259 () Bool)

(assert (= bs!1253318 (and d!1730259 b!5425023)))

(declare-fun lambda!284515 () Int)

(assert (=> bs!1253318 (= lambda!284515 lambda!284458)))

(declare-fun bs!1253319 () Bool)

(assert (= bs!1253319 (and d!1730259 d!1730247)))

(assert (=> bs!1253319 (= lambda!284515 lambda!284514)))

(assert (=> d!1730259 true))

(assert (=> d!1730259 (= (derivationStepZipper!1453 lt!2212923 (h!68265 s!2326)) (flatMap!941 lt!2212923 lambda!284515))))

(declare-fun bs!1253320 () Bool)

(assert (= bs!1253320 d!1730259))

(declare-fun m!6449656 () Bool)

(assert (=> bs!1253320 m!6449656))

(assert (=> b!5425045 d!1730259))

(declare-fun b!5425566 () Bool)

(declare-fun e!3362192 () Bool)

(declare-fun tp!1497334 () Bool)

(assert (=> b!5425566 (= e!3362192 tp!1497334)))

(declare-fun b!5425565 () Bool)

(declare-fun tp!1497333 () Bool)

(declare-fun tp!1497332 () Bool)

(assert (=> b!5425565 (= e!3362192 (and tp!1497333 tp!1497332))))

(declare-fun b!5425564 () Bool)

(assert (=> b!5425564 (= e!3362192 tp_is_empty!39681)))

(declare-fun b!5425567 () Bool)

(declare-fun tp!1497335 () Bool)

(declare-fun tp!1497336 () Bool)

(assert (=> b!5425567 (= e!3362192 (and tp!1497335 tp!1497336))))

(assert (=> b!5425009 (= tp!1497286 e!3362192)))

(assert (= (and b!5425009 (is-ElementMatch!15214 (regOne!30941 r!7292))) b!5425564))

(assert (= (and b!5425009 (is-Concat!24059 (regOne!30941 r!7292))) b!5425565))

(assert (= (and b!5425009 (is-Star!15214 (regOne!30941 r!7292))) b!5425566))

(assert (= (and b!5425009 (is-Union!15214 (regOne!30941 r!7292))) b!5425567))

(declare-fun b!5425570 () Bool)

(declare-fun e!3362193 () Bool)

(declare-fun tp!1497339 () Bool)

(assert (=> b!5425570 (= e!3362193 tp!1497339)))

(declare-fun b!5425569 () Bool)

(declare-fun tp!1497338 () Bool)

(declare-fun tp!1497337 () Bool)

(assert (=> b!5425569 (= e!3362193 (and tp!1497338 tp!1497337))))

(declare-fun b!5425568 () Bool)

(assert (=> b!5425568 (= e!3362193 tp_is_empty!39681)))

(declare-fun b!5425571 () Bool)

(declare-fun tp!1497340 () Bool)

(declare-fun tp!1497341 () Bool)

(assert (=> b!5425571 (= e!3362193 (and tp!1497340 tp!1497341))))

(assert (=> b!5425009 (= tp!1497285 e!3362193)))

(assert (= (and b!5425009 (is-ElementMatch!15214 (regTwo!30941 r!7292))) b!5425568))

(assert (= (and b!5425009 (is-Concat!24059 (regTwo!30941 r!7292))) b!5425569))

(assert (= (and b!5425009 (is-Star!15214 (regTwo!30941 r!7292))) b!5425570))

(assert (= (and b!5425009 (is-Union!15214 (regTwo!30941 r!7292))) b!5425571))

(declare-fun b!5425579 () Bool)

(declare-fun e!3362199 () Bool)

(declare-fun tp!1497346 () Bool)

(assert (=> b!5425579 (= e!3362199 tp!1497346)))

(declare-fun tp!1497347 () Bool)

(declare-fun e!3362198 () Bool)

(declare-fun b!5425578 () Bool)

(assert (=> b!5425578 (= e!3362198 (and (inv!81283 (h!68267 (t!375166 zl!343))) e!3362199 tp!1497347))))

(assert (=> b!5425017 (= tp!1497291 e!3362198)))

(assert (= b!5425578 b!5425579))

(assert (= (and b!5425017 (is-Cons!61819 (t!375166 zl!343))) b!5425578))

(declare-fun m!6449658 () Bool)

(assert (=> b!5425578 m!6449658))

(declare-fun b!5425584 () Bool)

(declare-fun e!3362202 () Bool)

(declare-fun tp!1497352 () Bool)

(declare-fun tp!1497353 () Bool)

(assert (=> b!5425584 (= e!3362202 (and tp!1497352 tp!1497353))))

(assert (=> b!5425028 (= tp!1497290 e!3362202)))

(assert (= (and b!5425028 (is-Cons!61818 (exprs!5098 (h!68267 zl!343)))) b!5425584))

(declare-fun b!5425587 () Bool)

(declare-fun e!3362203 () Bool)

(declare-fun tp!1497356 () Bool)

(assert (=> b!5425587 (= e!3362203 tp!1497356)))

(declare-fun b!5425586 () Bool)

(declare-fun tp!1497355 () Bool)

(declare-fun tp!1497354 () Bool)

(assert (=> b!5425586 (= e!3362203 (and tp!1497355 tp!1497354))))

(declare-fun b!5425585 () Bool)

(assert (=> b!5425585 (= e!3362203 tp_is_empty!39681)))

(declare-fun b!5425588 () Bool)

(declare-fun tp!1497357 () Bool)

(declare-fun tp!1497358 () Bool)

(assert (=> b!5425588 (= e!3362203 (and tp!1497357 tp!1497358))))

(assert (=> b!5425042 (= tp!1497288 e!3362203)))

(assert (= (and b!5425042 (is-ElementMatch!15214 (regOne!30940 r!7292))) b!5425585))

(assert (= (and b!5425042 (is-Concat!24059 (regOne!30940 r!7292))) b!5425586))

(assert (= (and b!5425042 (is-Star!15214 (regOne!30940 r!7292))) b!5425587))

(assert (= (and b!5425042 (is-Union!15214 (regOne!30940 r!7292))) b!5425588))

(declare-fun b!5425591 () Bool)

(declare-fun e!3362204 () Bool)

(declare-fun tp!1497361 () Bool)

(assert (=> b!5425591 (= e!3362204 tp!1497361)))

(declare-fun b!5425590 () Bool)

(declare-fun tp!1497360 () Bool)

(declare-fun tp!1497359 () Bool)

(assert (=> b!5425590 (= e!3362204 (and tp!1497360 tp!1497359))))

(declare-fun b!5425589 () Bool)

(assert (=> b!5425589 (= e!3362204 tp_is_empty!39681)))

(declare-fun b!5425592 () Bool)

(declare-fun tp!1497362 () Bool)

(declare-fun tp!1497363 () Bool)

(assert (=> b!5425592 (= e!3362204 (and tp!1497362 tp!1497363))))

(assert (=> b!5425042 (= tp!1497289 e!3362204)))

(assert (= (and b!5425042 (is-ElementMatch!15214 (regTwo!30940 r!7292))) b!5425589))

(assert (= (and b!5425042 (is-Concat!24059 (regTwo!30940 r!7292))) b!5425590))

(assert (= (and b!5425042 (is-Star!15214 (regTwo!30940 r!7292))) b!5425591))

(assert (= (and b!5425042 (is-Union!15214 (regTwo!30940 r!7292))) b!5425592))

(declare-fun condSetEmpty!35372 () Bool)

(assert (=> setNonEmpty!35366 (= condSetEmpty!35372 (= setRest!35366 (as set.empty (Set Context!9196))))))

(declare-fun setRes!35372 () Bool)

(assert (=> setNonEmpty!35366 (= tp!1497287 setRes!35372)))

(declare-fun setIsEmpty!35372 () Bool)

(assert (=> setIsEmpty!35372 setRes!35372))

(declare-fun setElem!35372 () Context!9196)

(declare-fun e!3362207 () Bool)

(declare-fun tp!1497369 () Bool)

(declare-fun setNonEmpty!35372 () Bool)

(assert (=> setNonEmpty!35372 (= setRes!35372 (and tp!1497369 (inv!81283 setElem!35372) e!3362207))))

(declare-fun setRest!35372 () (Set Context!9196))

(assert (=> setNonEmpty!35372 (= setRest!35366 (set.union (set.insert setElem!35372 (as set.empty (Set Context!9196))) setRest!35372))))

(declare-fun b!5425597 () Bool)

(declare-fun tp!1497368 () Bool)

(assert (=> b!5425597 (= e!3362207 tp!1497368)))

(assert (= (and setNonEmpty!35366 condSetEmpty!35372) setIsEmpty!35372))

(assert (= (and setNonEmpty!35366 (not condSetEmpty!35372)) setNonEmpty!35372))

(assert (= setNonEmpty!35372 b!5425597))

(declare-fun m!6449660 () Bool)

(assert (=> setNonEmpty!35372 m!6449660))

(declare-fun b!5425600 () Bool)

(declare-fun e!3362208 () Bool)

(declare-fun tp!1497372 () Bool)

(assert (=> b!5425600 (= e!3362208 tp!1497372)))

(declare-fun b!5425599 () Bool)

(declare-fun tp!1497371 () Bool)

(declare-fun tp!1497370 () Bool)

(assert (=> b!5425599 (= e!3362208 (and tp!1497371 tp!1497370))))

(declare-fun b!5425598 () Bool)

(assert (=> b!5425598 (= e!3362208 tp_is_empty!39681)))

(declare-fun b!5425601 () Bool)

(declare-fun tp!1497373 () Bool)

(declare-fun tp!1497374 () Bool)

(assert (=> b!5425601 (= e!3362208 (and tp!1497373 tp!1497374))))

(assert (=> b!5425020 (= tp!1497284 e!3362208)))

(assert (= (and b!5425020 (is-ElementMatch!15214 (reg!15543 r!7292))) b!5425598))

(assert (= (and b!5425020 (is-Concat!24059 (reg!15543 r!7292))) b!5425599))

(assert (= (and b!5425020 (is-Star!15214 (reg!15543 r!7292))) b!5425600))

(assert (= (and b!5425020 (is-Union!15214 (reg!15543 r!7292))) b!5425601))

(declare-fun b!5425602 () Bool)

(declare-fun e!3362209 () Bool)

(declare-fun tp!1497375 () Bool)

(declare-fun tp!1497376 () Bool)

(assert (=> b!5425602 (= e!3362209 (and tp!1497375 tp!1497376))))

(assert (=> b!5425035 (= tp!1497282 e!3362209)))

(assert (= (and b!5425035 (is-Cons!61818 (exprs!5098 setElem!35366))) b!5425602))

(declare-fun b!5425607 () Bool)

(declare-fun e!3362212 () Bool)

(declare-fun tp!1497379 () Bool)

(assert (=> b!5425607 (= e!3362212 (and tp_is_empty!39681 tp!1497379))))

(assert (=> b!5425013 (= tp!1497283 e!3362212)))

(assert (= (and b!5425013 (is-Cons!61817 (t!375164 s!2326))) b!5425607))

(declare-fun b_lambda!207001 () Bool)

(assert (= b_lambda!206993 (or b!5425023 b_lambda!207001)))

(declare-fun bs!1253321 () Bool)

(declare-fun d!1730261 () Bool)

(assert (= bs!1253321 (and d!1730261 b!5425023)))

(assert (=> bs!1253321 (= (dynLambda!24357 lambda!284458 lt!2212904) (derivationStepZipperUp!586 lt!2212904 (h!68265 s!2326)))))

(assert (=> bs!1253321 m!6449150))

(assert (=> d!1730243 d!1730261))

(declare-fun b_lambda!207003 () Bool)

(assert (= b_lambda!206989 (or b!5425023 b_lambda!207003)))

(declare-fun bs!1253322 () Bool)

(declare-fun d!1730263 () Bool)

(assert (= bs!1253322 (and d!1730263 b!5425023)))

(assert (=> bs!1253322 (= (dynLambda!24357 lambda!284458 (h!68267 zl!343)) (derivationStepZipperUp!586 (h!68267 zl!343) (h!68265 s!2326)))))

(assert (=> bs!1253322 m!6449214))

(assert (=> d!1730161 d!1730263))

(declare-fun b_lambda!207005 () Bool)

(assert (= b_lambda!206995 (or b!5425023 b_lambda!207005)))

(declare-fun bs!1253323 () Bool)

(declare-fun d!1730265 () Bool)

(assert (= bs!1253323 (and d!1730265 b!5425023)))

(assert (=> bs!1253323 (= (dynLambda!24357 lambda!284458 lt!2212906) (derivationStepZipperUp!586 lt!2212906 (h!68265 s!2326)))))

(assert (=> bs!1253323 m!6449142))

(assert (=> d!1730245 d!1730265))

(declare-fun b_lambda!207007 () Bool)

(assert (= b_lambda!206991 (or b!5425039 b_lambda!207007)))

(declare-fun bs!1253324 () Bool)

(declare-fun d!1730267 () Bool)

(assert (= bs!1253324 (and d!1730267 b!5425039)))

(assert (=> bs!1253324 (= (dynLambda!24358 lambda!284459 (h!68266 (exprs!5098 (h!68267 zl!343)))) (validRegex!6950 (h!68266 (exprs!5098 (h!68267 zl!343)))))))

(declare-fun m!6449662 () Bool)

(assert (=> bs!1253324 m!6449662))

(assert (=> b!5425311 d!1730267))

(declare-fun b_lambda!207009 () Bool)

(assert (= b_lambda!206997 (or b!5425023 b_lambda!207009)))

(declare-fun bs!1253325 () Bool)

(declare-fun d!1730269 () Bool)

(assert (= bs!1253325 (and d!1730269 b!5425023)))

(assert (=> bs!1253325 (= (dynLambda!24357 lambda!284458 lt!2212902) (derivationStepZipperUp!586 lt!2212902 (h!68265 s!2326)))))

(assert (=> bs!1253325 m!6449200))

(assert (=> d!1730251 d!1730269))

(declare-fun b_lambda!207011 () Bool)

(assert (= b_lambda!206999 (or b!5425023 b_lambda!207011)))

(declare-fun bs!1253326 () Bool)

(declare-fun d!1730271 () Bool)

(assert (= bs!1253326 (and d!1730271 b!5425023)))

(assert (=> bs!1253326 (= (dynLambda!24357 lambda!284458 lt!2212913) (derivationStepZipperUp!586 lt!2212913 (h!68265 s!2326)))))

(assert (=> bs!1253326 m!6449182))

(assert (=> d!1730257 d!1730271))

(push 1)

(assert (not b!5425571))

(assert (not d!1730259))

(assert (not d!1730243))

(assert (not d!1730213))

(assert (not b!5425291))

(assert (not d!1730159))

(assert (not b!5425566))

(assert (not b!5425521))

(assert (not b!5425265))

(assert (not b!5425211))

(assert (not bm!388215))

(assert (not b!5425396))

(assert (not d!1730195))

(assert (not b!5425553))

(assert (not bm!388239))

(assert (not b!5425446))

(assert (not b!5425391))

(assert (not b!5425530))

(assert (not b!5425587))

(assert (not b!5425346))

(assert (not d!1730205))

(assert (not d!1730161))

(assert (not d!1730223))

(assert (not b!5425449))

(assert (not b!5425489))

(assert (not b_lambda!207009))

(assert (not d!1730169))

(assert (not b!5425602))

(assert (not b_lambda!207011))

(assert (not bs!1253321))

(assert (not bs!1253323))

(assert (not b!5425266))

(assert (not b!5425455))

(assert (not b!5425384))

(assert (not b!5425528))

(assert (not bm!388246))

(assert (not b!5425535))

(assert (not d!1730173))

(assert (not b!5425212))

(assert (not d!1730171))

(assert (not bm!388235))

(assert (not d!1730203))

(assert (not bm!388245))

(assert (not b!5425293))

(assert (not b!5425262))

(assert (not b!5425388))

(assert (not d!1730181))

(assert (not d!1730219))

(assert (not b!5425460))

(assert (not b!5425607))

(assert (not b!5425289))

(assert (not d!1730239))

(assert (not bm!388232))

(assert (not bs!1253326))

(assert (not b_lambda!207005))

(assert (not b!5425541))

(assert (not b!5425421))

(assert (not b!5425467))

(assert tp_is_empty!39681)

(assert (not d!1730201))

(assert (not b!5425488))

(assert (not d!1730249))

(assert (not b!5425487))

(assert (not b!5425459))

(assert (not b!5425246))

(assert (not b!5425290))

(assert (not b!5425578))

(assert (not b!5425496))

(assert (not b!5425447))

(assert (not b!5425597))

(assert (not d!1730231))

(assert (not b!5425451))

(assert (not b!5425475))

(assert (not b!5425263))

(assert (not b!5425579))

(assert (not b!5425599))

(assert (not d!1730177))

(assert (not b!5425312))

(assert (not b!5425260))

(assert (not bm!388243))

(assert (not bm!388216))

(assert (not d!1730211))

(assert (not b!5425590))

(assert (not b!5425261))

(assert (not d!1730245))

(assert (not b!5425524))

(assert (not b_lambda!207001))

(assert (not b!5425552))

(assert (not b!5425588))

(assert (not b!5425345))

(assert (not b!5425454))

(assert (not d!1730215))

(assert (not d!1730251))

(assert (not b!5425288))

(assert (not b!5425267))

(assert (not b!5425600))

(assert (not b!5425592))

(assert (not b!5425255))

(assert (not b!5425474))

(assert (not bm!388225))

(assert (not d!1730199))

(assert (not bm!388211))

(assert (not d!1730221))

(assert (not bm!388221))

(assert (not b!5425569))

(assert (not bm!388240))

(assert (not b!5425591))

(assert (not bm!388233))

(assert (not b!5425584))

(assert (not b!5425264))

(assert (not bm!388236))

(assert (not b!5425570))

(assert (not d!1730235))

(assert (not b!5425456))

(assert (not b!5425472))

(assert (not bs!1253322))

(assert (not d!1730153))

(assert (not d!1730185))

(assert (not b!5425567))

(assert (not b!5425217))

(assert (not b!5425525))

(assert (not d!1730241))

(assert (not d!1730207))

(assert (not d!1730165))

(assert (not d!1730253))

(assert (not b!5425254))

(assert (not b!5425526))

(assert (not b!5425601))

(assert (not d!1730257))

(assert (not b_lambda!207003))

(assert (not d!1730167))

(assert (not b!5425216))

(assert (not bm!388212))

(assert (not b!5425445))

(assert (not b!5425448))

(assert (not b!5425540))

(assert (not b!5425546))

(assert (not d!1730175))

(assert (not bm!388237))

(assert (not setNonEmpty!35372))

(assert (not b!5425565))

(assert (not d!1730179))

(assert (not b!5425523))

(assert (not bm!388196))

(assert (not d!1730247))

(assert (not d!1730217))

(assert (not b!5425390))

(assert (not d!1730183))

(assert (not d!1730229))

(assert (not bm!388244))

(assert (not b_lambda!207007))

(assert (not b!5425586))

(assert (not bm!388197))

(assert (not b!5425464))

(assert (not bm!388222))

(assert (not b!5425466))

(assert (not b!5425392))

(assert (not bs!1253325))

(assert (not b!5425468))

(assert (not b!5425545))

(assert (not b!5425294))

(assert (not d!1730193))

(assert (not bs!1253324))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

