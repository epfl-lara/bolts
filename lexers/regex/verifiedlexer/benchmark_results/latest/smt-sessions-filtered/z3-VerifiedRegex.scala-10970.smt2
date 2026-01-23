; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!568118 () Bool)

(assert start!568118)

(declare-fun b!5409916 () Bool)

(assert (=> b!5409916 true))

(assert (=> b!5409916 true))

(declare-fun lambda!282343 () Int)

(declare-fun lambda!282342 () Int)

(assert (=> b!5409916 (not (= lambda!282343 lambda!282342))))

(assert (=> b!5409916 true))

(assert (=> b!5409916 true))

(declare-fun b!5409905 () Bool)

(assert (=> b!5409905 true))

(declare-fun b!5409912 () Bool)

(assert (=> b!5409912 true))

(declare-fun bs!1249540 () Bool)

(declare-fun b!5409913 () Bool)

(assert (= bs!1249540 (and b!5409913 b!5409916)))

(declare-fun lambda!282347 () Int)

(declare-datatypes ((C!30644 0))(
  ( (C!30645 (val!25024 Int)) )
))
(declare-datatypes ((Regex!15187 0))(
  ( (ElementMatch!15187 (c!943151 C!30644)) (Concat!24032 (regOne!30886 Regex!15187) (regTwo!30886 Regex!15187)) (EmptyExpr!15187) (Star!15187 (reg!15516 Regex!15187)) (EmptyLang!15187) (Union!15187 (regOne!30887 Regex!15187) (regTwo!30887 Regex!15187)) )
))
(declare-fun lt!2205997 () Regex!15187)

(declare-fun r!7292 () Regex!15187)

(assert (=> bs!1249540 (= (= lt!2205997 (regOne!30886 r!7292)) (= lambda!282347 lambda!282342))))

(assert (=> bs!1249540 (not (= lambda!282347 lambda!282343))))

(assert (=> b!5409913 true))

(assert (=> b!5409913 true))

(assert (=> b!5409913 true))

(declare-fun lambda!282348 () Int)

(assert (=> bs!1249540 (not (= lambda!282348 lambda!282342))))

(assert (=> bs!1249540 (= (= lt!2205997 (regOne!30886 r!7292)) (= lambda!282348 lambda!282343))))

(assert (=> b!5409913 (not (= lambda!282348 lambda!282347))))

(assert (=> b!5409913 true))

(assert (=> b!5409913 true))

(assert (=> b!5409913 true))

(declare-fun bs!1249541 () Bool)

(declare-fun b!5409885 () Bool)

(assert (= bs!1249541 (and b!5409885 b!5409916)))

(declare-datatypes ((List!61860 0))(
  ( (Nil!61736) (Cons!61736 (h!68184 C!30644) (t!375083 List!61860)) )
))
(declare-fun s!2326 () List!61860)

(declare-datatypes ((tuple2!64772 0))(
  ( (tuple2!64773 (_1!35689 List!61860) (_2!35689 List!61860)) )
))
(declare-fun lt!2205987 () tuple2!64772)

(declare-fun lt!2205972 () Regex!15187)

(declare-fun lambda!282349 () Int)

(assert (=> bs!1249541 (= (and (= (_1!35689 lt!2205987) s!2326) (= (reg!15516 (regOne!30886 r!7292)) (regOne!30886 r!7292)) (= lt!2205972 (regTwo!30886 r!7292))) (= lambda!282349 lambda!282342))))

(assert (=> bs!1249541 (not (= lambda!282349 lambda!282343))))

(declare-fun bs!1249542 () Bool)

(assert (= bs!1249542 (and b!5409885 b!5409913)))

(assert (=> bs!1249542 (= (and (= (_1!35689 lt!2205987) s!2326) (= (reg!15516 (regOne!30886 r!7292)) lt!2205997) (= lt!2205972 (regTwo!30886 r!7292))) (= lambda!282349 lambda!282347))))

(assert (=> bs!1249542 (not (= lambda!282349 lambda!282348))))

(assert (=> b!5409885 true))

(assert (=> b!5409885 true))

(assert (=> b!5409885 true))

(declare-fun b!5409880 () Bool)

(declare-fun e!3353659 () Bool)

(declare-fun tp!1495545 () Bool)

(assert (=> b!5409880 (= e!3353659 tp!1495545)))

(declare-fun b!5409881 () Bool)

(declare-fun res!2300709 () Bool)

(declare-fun e!3353680 () Bool)

(assert (=> b!5409881 (=> res!2300709 e!3353680)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61861 0))(
  ( (Nil!61737) (Cons!61737 (h!68185 Regex!15187) (t!375084 List!61861)) )
))
(declare-datatypes ((Context!9142 0))(
  ( (Context!9143 (exprs!5071 List!61861)) )
))
(declare-fun lt!2205968 () (InoxSet Context!9142))

(declare-fun lt!2205956 () tuple2!64772)

(declare-fun matchZipper!1431 ((InoxSet Context!9142) List!61860) Bool)

(assert (=> b!5409881 (= res!2300709 (not (matchZipper!1431 lt!2205968 (_1!35689 lt!2205956))))))

(declare-fun b!5409882 () Bool)

(declare-fun e!3353674 () Bool)

(declare-fun e!3353665 () Bool)

(assert (=> b!5409882 (= e!3353674 e!3353665)))

(declare-fun res!2300701 () Bool)

(assert (=> b!5409882 (=> res!2300701 e!3353665)))

(declare-fun lt!2205988 () Bool)

(declare-fun lt!2206001 () (InoxSet Context!9142))

(assert (=> b!5409882 (= res!2300701 (not (= lt!2205988 (matchZipper!1431 lt!2206001 (t!375083 s!2326)))))))

(declare-fun lt!2205986 () (InoxSet Context!9142))

(assert (=> b!5409882 (= lt!2205988 (matchZipper!1431 lt!2205986 s!2326))))

(declare-fun e!3353658 () Bool)

(declare-fun e!3353672 () Bool)

(declare-fun tp!1495548 () Bool)

(declare-fun b!5409883 () Bool)

(declare-datatypes ((List!61862 0))(
  ( (Nil!61738) (Cons!61738 (h!68186 Context!9142) (t!375085 List!61862)) )
))
(declare-fun zl!343 () List!61862)

(declare-fun inv!81214 (Context!9142) Bool)

(assert (=> b!5409883 (= e!3353658 (and (inv!81214 (h!68186 zl!343)) e!3353672 tp!1495548))))

(declare-fun b!5409884 () Bool)

(declare-fun res!2300689 () Bool)

(assert (=> b!5409884 (=> res!2300689 e!3353680)))

(declare-fun lt!2205996 () (InoxSet Context!9142))

(assert (=> b!5409884 (= res!2300689 (not (matchZipper!1431 lt!2205996 (_2!35689 lt!2205956))))))

(declare-fun b!5409886 () Bool)

(declare-fun res!2300677 () Bool)

(declare-fun e!3353667 () Bool)

(assert (=> b!5409886 (=> res!2300677 e!3353667)))

(get-info :version)

(assert (=> b!5409886 (= res!2300677 (not ((_ is Cons!61737) (exprs!5071 (h!68186 zl!343)))))))

(declare-fun b!5409887 () Bool)

(declare-fun e!3353679 () Bool)

(declare-fun e!3353663 () Bool)

(assert (=> b!5409887 (= e!3353679 e!3353663)))

(declare-fun res!2300706 () Bool)

(assert (=> b!5409887 (=> res!2300706 e!3353663)))

(declare-fun lt!2205999 () (InoxSet Context!9142))

(declare-fun lt!2205974 () (InoxSet Context!9142))

(assert (=> b!5409887 (= res!2300706 (not (= lt!2205999 lt!2205974)))))

(declare-fun lt!2206010 () Context!9142)

(declare-fun derivationStepZipperDown!635 (Regex!15187 Context!9142 C!30644) (InoxSet Context!9142))

(assert (=> b!5409887 (= lt!2205974 (derivationStepZipperDown!635 (reg!15516 (regOne!30886 r!7292)) lt!2206010 (h!68184 s!2326)))))

(declare-fun lt!2205964 () List!61861)

(assert (=> b!5409887 (= lt!2206010 (Context!9143 lt!2205964))))

(assert (=> b!5409887 (= lt!2205964 (Cons!61737 lt!2205972 (t!375084 (exprs!5071 (h!68186 zl!343)))))))

(assert (=> b!5409887 (= lt!2205972 (Star!15187 (reg!15516 (regOne!30886 r!7292))))))

(declare-fun b!5409888 () Bool)

(declare-fun e!3353669 () Bool)

(declare-fun nullable!5356 (Regex!15187) Bool)

(assert (=> b!5409888 (= e!3353669 (nullable!5356 (regOne!30886 (regOne!30886 r!7292))))))

(declare-fun b!5409889 () Bool)

(declare-fun res!2300708 () Bool)

(declare-fun e!3353668 () Bool)

(assert (=> b!5409889 (=> res!2300708 e!3353668)))

(declare-fun lt!2205980 () Bool)

(assert (=> b!5409889 (= res!2300708 (not lt!2205980))))

(declare-fun b!5409890 () Bool)

(declare-fun e!3353681 () Bool)

(assert (=> b!5409890 (= e!3353681 e!3353668)))

(declare-fun res!2300696 () Bool)

(assert (=> b!5409890 (=> res!2300696 e!3353668)))

(declare-fun lt!2205994 () Bool)

(assert (=> b!5409890 (= res!2300696 lt!2205994)))

(declare-fun lt!2205954 () Bool)

(declare-fun lt!2206012 () Regex!15187)

(declare-fun matchRSpec!2290 (Regex!15187 List!61860) Bool)

(assert (=> b!5409890 (= lt!2205954 (matchRSpec!2290 lt!2206012 s!2326))))

(declare-fun matchR!7372 (Regex!15187 List!61860) Bool)

(assert (=> b!5409890 (= lt!2205954 (matchR!7372 lt!2206012 s!2326))))

(declare-datatypes ((Unit!154270 0))(
  ( (Unit!154271) )
))
(declare-fun lt!2205957 () Unit!154270)

(declare-fun mainMatchTheorem!2290 (Regex!15187 List!61860) Unit!154270)

(assert (=> b!5409890 (= lt!2205957 (mainMatchTheorem!2290 lt!2206012 s!2326))))

(declare-fun b!5409891 () Bool)

(declare-fun res!2300688 () Bool)

(assert (=> b!5409891 (=> res!2300688 e!3353667)))

(declare-fun generalisedUnion!1116 (List!61861) Regex!15187)

(declare-fun unfocusZipperList!629 (List!61862) List!61861)

(assert (=> b!5409891 (= res!2300688 (not (= r!7292 (generalisedUnion!1116 (unfocusZipperList!629 zl!343)))))))

(declare-fun b!5409892 () Bool)

(declare-fun e!3353661 () Unit!154270)

(declare-fun Unit!154272 () Unit!154270)

(assert (=> b!5409892 (= e!3353661 Unit!154272)))

(declare-fun lt!2205985 () Unit!154270)

(declare-fun lt!2205966 () (InoxSet Context!9142))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!424 ((InoxSet Context!9142) (InoxSet Context!9142) List!61860) Unit!154270)

(assert (=> b!5409892 (= lt!2205985 (lemmaZipperConcatMatchesSameAsBothZippers!424 lt!2205999 lt!2205966 (t!375083 s!2326)))))

(declare-fun res!2300684 () Bool)

(assert (=> b!5409892 (= res!2300684 (matchZipper!1431 lt!2205999 (t!375083 s!2326)))))

(declare-fun e!3353682 () Bool)

(assert (=> b!5409892 (=> res!2300684 e!3353682)))

(assert (=> b!5409892 (= (matchZipper!1431 ((_ map or) lt!2205999 lt!2205966) (t!375083 s!2326)) e!3353682)))

(declare-fun b!5409893 () Bool)

(declare-fun e!3353673 () Bool)

(declare-fun e!3353676 () Bool)

(assert (=> b!5409893 (= e!3353673 e!3353676)))

(declare-fun res!2300691 () Bool)

(assert (=> b!5409893 (=> res!2300691 e!3353676)))

(declare-fun lt!2205991 () Context!9142)

(declare-fun unfocusZipper!929 (List!61862) Regex!15187)

(assert (=> b!5409893 (= res!2300691 (not (= (unfocusZipper!929 (Cons!61738 lt!2205991 Nil!61738)) lt!2206012)))))

(declare-fun lt!2205970 () Regex!15187)

(assert (=> b!5409893 (= lt!2206012 (Concat!24032 (reg!15516 (regOne!30886 r!7292)) lt!2205970))))

(declare-fun b!5409894 () Bool)

(declare-fun res!2300697 () Bool)

(assert (=> b!5409894 (=> res!2300697 e!3353668)))

(declare-fun z!1189 () (InoxSet Context!9142))

(assert (=> b!5409894 (= res!2300697 (not (matchZipper!1431 z!1189 s!2326)))))

(declare-fun b!5409895 () Bool)

(declare-fun res!2300700 () Bool)

(assert (=> b!5409895 (=> res!2300700 e!3353679)))

(assert (=> b!5409895 (= res!2300700 (or ((_ is Concat!24032) (regOne!30886 r!7292)) (not ((_ is Star!15187) (regOne!30886 r!7292)))))))

(declare-fun b!5409896 () Bool)

(assert (=> b!5409896 (= e!3353663 e!3353674)))

(declare-fun res!2300692 () Bool)

(assert (=> b!5409896 (=> res!2300692 e!3353674)))

(assert (=> b!5409896 (= res!2300692 (not (= lt!2206001 lt!2205974)))))

(declare-fun lambda!282344 () Int)

(declare-fun flatMap!914 ((InoxSet Context!9142) Int) (InoxSet Context!9142))

(declare-fun derivationStepZipperUp!559 (Context!9142 C!30644) (InoxSet Context!9142))

(assert (=> b!5409896 (= (flatMap!914 lt!2205986 lambda!282344) (derivationStepZipperUp!559 lt!2205991 (h!68184 s!2326)))))

(declare-fun lt!2205975 () Unit!154270)

(declare-fun lemmaFlatMapOnSingletonSet!446 ((InoxSet Context!9142) Context!9142 Int) Unit!154270)

(assert (=> b!5409896 (= lt!2205975 (lemmaFlatMapOnSingletonSet!446 lt!2205986 lt!2205991 lambda!282344))))

(declare-fun lt!2206005 () (InoxSet Context!9142))

(assert (=> b!5409896 (= lt!2206005 (derivationStepZipperUp!559 lt!2205991 (h!68184 s!2326)))))

(declare-fun derivationStepZipper!1426 ((InoxSet Context!9142) C!30644) (InoxSet Context!9142))

(assert (=> b!5409896 (= lt!2206001 (derivationStepZipper!1426 lt!2205986 (h!68184 s!2326)))))

(assert (=> b!5409896 (= lt!2205986 (store ((as const (Array Context!9142 Bool)) false) lt!2205991 true))))

(assert (=> b!5409896 (= lt!2205991 (Context!9143 (Cons!61737 (reg!15516 (regOne!30886 r!7292)) lt!2205964)))))

(declare-fun b!5409897 () Bool)

(declare-fun e!3353662 () Bool)

(assert (=> b!5409897 (= e!3353662 (not (matchZipper!1431 lt!2205966 (t!375083 s!2326))))))

(declare-fun b!5409898 () Bool)

(declare-fun e!3353671 () Bool)

(assert (=> b!5409898 (= e!3353671 e!3353680)))

(declare-fun res!2300686 () Bool)

(assert (=> b!5409898 (=> res!2300686 e!3353680)))

(declare-fun lt!2205989 () List!61860)

(assert (=> b!5409898 (= res!2300686 (not (= s!2326 lt!2205989)))))

(declare-fun ++!13547 (List!61860 List!61860) List!61860)

(assert (=> b!5409898 (= lt!2205989 (++!13547 (_1!35689 lt!2205956) (_2!35689 lt!2205956)))))

(declare-datatypes ((Option!15298 0))(
  ( (None!15297) (Some!15297 (v!51326 tuple2!64772)) )
))
(declare-fun lt!2205982 () Option!15298)

(declare-fun get!21283 (Option!15298) tuple2!64772)

(assert (=> b!5409898 (= lt!2205956 (get!21283 lt!2205982))))

(declare-fun isDefined!12001 (Option!15298) Bool)

(assert (=> b!5409898 (isDefined!12001 lt!2205982)))

(declare-fun findConcatSeparationZippers!44 ((InoxSet Context!9142) (InoxSet Context!9142) List!61860 List!61860 List!61860) Option!15298)

(assert (=> b!5409898 (= lt!2205982 (findConcatSeparationZippers!44 lt!2205968 lt!2205996 Nil!61736 s!2326 s!2326))))

(declare-fun lt!2205959 () Unit!154270)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!44 ((InoxSet Context!9142) Context!9142 List!61860) Unit!154270)

(assert (=> b!5409898 (= lt!2205959 (lemmaConcatZipperMatchesStringThenFindConcatDefined!44 lt!2205968 lt!2206010 s!2326))))

(declare-fun b!5409899 () Bool)

(declare-fun tp!1495546 () Bool)

(assert (=> b!5409899 (= e!3353672 tp!1495546)))

(declare-fun b!5409900 () Bool)

(declare-fun res!2300693 () Bool)

(declare-fun e!3353678 () Bool)

(assert (=> b!5409900 (=> res!2300693 e!3353678)))

(declare-fun lt!2205983 () Bool)

(assert (=> b!5409900 (= res!2300693 (or (not lt!2205983) (not lt!2205988)))))

(declare-fun b!5409901 () Bool)

(declare-fun e!3353660 () Bool)

(declare-fun e!3353664 () Bool)

(assert (=> b!5409901 (= e!3353660 e!3353664)))

(declare-fun res!2300682 () Bool)

(assert (=> b!5409901 (=> (not res!2300682) (not e!3353664))))

(declare-fun lt!2205963 () Regex!15187)

(assert (=> b!5409901 (= res!2300682 (= r!7292 lt!2205963))))

(assert (=> b!5409901 (= lt!2205963 (unfocusZipper!929 zl!343))))

(declare-fun b!5409902 () Bool)

(declare-fun e!3353656 () Bool)

(declare-fun tp!1495553 () Bool)

(assert (=> b!5409902 (= e!3353656 tp!1495553)))

(declare-fun b!5409903 () Bool)

(assert (=> b!5409903 (= e!3353665 e!3353673)))

(declare-fun res!2300698 () Bool)

(assert (=> b!5409903 (=> res!2300698 e!3353673)))

(assert (=> b!5409903 (= res!2300698 (not (= r!7292 lt!2205970)))))

(assert (=> b!5409903 (= lt!2205970 (Concat!24032 lt!2205972 (regTwo!30886 r!7292)))))

(declare-fun b!5409904 () Bool)

(declare-fun tp!1495551 () Bool)

(declare-fun tp!1495544 () Bool)

(assert (=> b!5409904 (= e!3353656 (and tp!1495551 tp!1495544))))

(declare-fun setRes!35237 () Bool)

(declare-fun tp!1495552 () Bool)

(declare-fun setNonEmpty!35237 () Bool)

(declare-fun setElem!35237 () Context!9142)

(assert (=> setNonEmpty!35237 (= setRes!35237 (and tp!1495552 (inv!81214 setElem!35237) e!3353659))))

(declare-fun setRest!35237 () (InoxSet Context!9142))

(assert (=> setNonEmpty!35237 (= z!1189 ((_ map or) (store ((as const (Array Context!9142 Bool)) false) setElem!35237 true) setRest!35237))))

(declare-fun e!3353670 () Bool)

(assert (=> b!5409905 (= e!3353670 e!3353679)))

(declare-fun res!2300679 () Bool)

(assert (=> b!5409905 (=> res!2300679 e!3353679)))

(assert (=> b!5409905 (= res!2300679 (or (and ((_ is ElementMatch!15187) (regOne!30886 r!7292)) (= (c!943151 (regOne!30886 r!7292)) (h!68184 s!2326))) ((_ is Union!15187) (regOne!30886 r!7292))))))

(declare-fun lt!2205995 () Unit!154270)

(assert (=> b!5409905 (= lt!2205995 e!3353661)))

(declare-fun c!943150 () Bool)

(assert (=> b!5409905 (= c!943150 lt!2205980)))

(assert (=> b!5409905 (= lt!2205980 (nullable!5356 (h!68185 (exprs!5071 (h!68186 zl!343)))))))

(assert (=> b!5409905 (= (flatMap!914 z!1189 lambda!282344) (derivationStepZipperUp!559 (h!68186 zl!343) (h!68184 s!2326)))))

(declare-fun lt!2205962 () Unit!154270)

(assert (=> b!5409905 (= lt!2205962 (lemmaFlatMapOnSingletonSet!446 z!1189 (h!68186 zl!343) lambda!282344))))

(declare-fun lt!2205971 () Context!9142)

(assert (=> b!5409905 (= lt!2205966 (derivationStepZipperUp!559 lt!2205971 (h!68184 s!2326)))))

(assert (=> b!5409905 (= lt!2205999 (derivationStepZipperDown!635 (h!68185 (exprs!5071 (h!68186 zl!343))) lt!2205971 (h!68184 s!2326)))))

(assert (=> b!5409905 (= lt!2205971 (Context!9143 (t!375084 (exprs!5071 (h!68186 zl!343)))))))

(declare-fun lt!2206002 () (InoxSet Context!9142))

(assert (=> b!5409905 (= lt!2206002 (derivationStepZipperUp!559 (Context!9143 (Cons!61737 (h!68185 (exprs!5071 (h!68186 zl!343))) (t!375084 (exprs!5071 (h!68186 zl!343))))) (h!68184 s!2326)))))

(declare-fun b!5409906 () Bool)

(declare-fun e!3353677 () Bool)

(assert (=> b!5409906 (= e!3353677 lt!2205954)))

(declare-fun b!5409907 () Bool)

(assert (=> b!5409907 (= e!3353668 e!3353678)))

(declare-fun res!2300702 () Bool)

(assert (=> b!5409907 (=> res!2300702 e!3353678)))

(assert (=> b!5409907 (= res!2300702 e!3353662)))

(declare-fun res!2300710 () Bool)

(assert (=> b!5409907 (=> (not res!2300710) (not e!3353662))))

(assert (=> b!5409907 (= res!2300710 (not lt!2205983))))

(assert (=> b!5409907 (= lt!2205983 (matchZipper!1431 lt!2205999 (t!375083 s!2326)))))

(declare-fun b!5409908 () Bool)

(declare-fun e!3353666 () Bool)

(assert (=> b!5409908 (= e!3353676 e!3353666)))

(declare-fun res!2300699 () Bool)

(assert (=> b!5409908 (=> res!2300699 e!3353666)))

(declare-fun lt!2205967 () List!61862)

(assert (=> b!5409908 (= res!2300699 (not (= (unfocusZipper!929 lt!2205967) (reg!15516 (regOne!30886 r!7292)))))))

(declare-fun lt!2206003 () Context!9142)

(assert (=> b!5409908 (= lt!2205967 (Cons!61738 lt!2206003 Nil!61738))))

(assert (=> b!5409908 (= (flatMap!914 lt!2205996 lambda!282344) (derivationStepZipperUp!559 lt!2206010 (h!68184 s!2326)))))

(declare-fun lt!2206000 () Unit!154270)

(assert (=> b!5409908 (= lt!2206000 (lemmaFlatMapOnSingletonSet!446 lt!2205996 lt!2206010 lambda!282344))))

(assert (=> b!5409908 (= (flatMap!914 lt!2205968 lambda!282344) (derivationStepZipperUp!559 lt!2206003 (h!68184 s!2326)))))

(declare-fun lt!2206008 () Unit!154270)

(assert (=> b!5409908 (= lt!2206008 (lemmaFlatMapOnSingletonSet!446 lt!2205968 lt!2206003 lambda!282344))))

(declare-fun lt!2206004 () (InoxSet Context!9142))

(assert (=> b!5409908 (= lt!2206004 (derivationStepZipperUp!559 lt!2206010 (h!68184 s!2326)))))

(declare-fun lt!2205955 () (InoxSet Context!9142))

(assert (=> b!5409908 (= lt!2205955 (derivationStepZipperUp!559 lt!2206003 (h!68184 s!2326)))))

(assert (=> b!5409908 (= lt!2205996 (store ((as const (Array Context!9142 Bool)) false) lt!2206010 true))))

(assert (=> b!5409908 (= lt!2205968 (store ((as const (Array Context!9142 Bool)) false) lt!2206003 true))))

(declare-fun lt!2205992 () List!61861)

(assert (=> b!5409908 (= lt!2206003 (Context!9143 lt!2205992))))

(assert (=> b!5409908 (= lt!2205992 (Cons!61737 (reg!15516 (regOne!30886 r!7292)) Nil!61737))))

(declare-fun b!5409909 () Bool)

(declare-fun res!2300690 () Bool)

(assert (=> b!5409909 (=> res!2300690 e!3353667)))

(declare-fun isEmpty!33728 (List!61862) Bool)

(assert (=> b!5409909 (= res!2300690 (not (isEmpty!33728 (t!375085 zl!343))))))

(declare-fun b!5409910 () Bool)

(declare-fun res!2300687 () Bool)

(assert (=> b!5409910 (=> res!2300687 e!3353670)))

(declare-fun isEmpty!33729 (List!61861) Bool)

(assert (=> b!5409910 (= res!2300687 (isEmpty!33729 (t!375084 (exprs!5071 (h!68186 zl!343)))))))

(declare-fun b!5409911 () Bool)

(declare-fun e!3353657 () Bool)

(declare-fun tp_is_empty!39627 () Bool)

(declare-fun tp!1495550 () Bool)

(assert (=> b!5409911 (= e!3353657 (and tp_is_empty!39627 tp!1495550))))

(assert (=> b!5409912 (= e!3353678 e!3353671)))

(declare-fun res!2300711 () Bool)

(assert (=> b!5409912 (=> res!2300711 e!3353671)))

(declare-fun appendTo!46 ((InoxSet Context!9142) Context!9142) (InoxSet Context!9142))

(assert (=> b!5409912 (= res!2300711 (not (= (appendTo!46 lt!2205968 lt!2206010) lt!2205986)))))

(declare-fun lambda!282345 () Int)

(declare-fun map!14165 ((InoxSet Context!9142) Int) (InoxSet Context!9142))

(declare-fun ++!13548 (List!61861 List!61861) List!61861)

(assert (=> b!5409912 (= (map!14165 lt!2205968 lambda!282345) (store ((as const (Array Context!9142 Bool)) false) (Context!9143 (++!13548 lt!2205992 lt!2205964)) true))))

(declare-fun lambda!282346 () Int)

(declare-fun lt!2206006 () Unit!154270)

(declare-fun lemmaConcatPreservesForall!212 (List!61861 List!61861 Int) Unit!154270)

(assert (=> b!5409912 (= lt!2206006 (lemmaConcatPreservesForall!212 lt!2205992 lt!2205964 lambda!282346))))

(declare-fun lt!2205969 () Unit!154270)

(declare-fun lemmaMapOnSingletonSet!46 ((InoxSet Context!9142) Context!9142 Int) Unit!154270)

(assert (=> b!5409912 (= lt!2205969 (lemmaMapOnSingletonSet!46 lt!2205968 lt!2206003 lambda!282345))))

(declare-fun setIsEmpty!35237 () Bool)

(assert (=> setIsEmpty!35237 setRes!35237))

(declare-fun e!3353675 () Bool)

(assert (=> b!5409913 (= e!3353680 e!3353675)))

(declare-fun res!2300678 () Bool)

(assert (=> b!5409913 (=> res!2300678 e!3353675)))

(assert (=> b!5409913 (= res!2300678 (not (matchR!7372 lt!2205997 (_1!35689 lt!2205987))))))

(declare-fun lt!2205976 () Option!15298)

(assert (=> b!5409913 (= lt!2205987 (get!21283 lt!2205976))))

(declare-fun Exists!2368 (Int) Bool)

(assert (=> b!5409913 (= (Exists!2368 lambda!282347) (Exists!2368 lambda!282348))))

(declare-fun lt!2206007 () Unit!154270)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1022 (Regex!15187 Regex!15187 List!61860) Unit!154270)

(assert (=> b!5409913 (= lt!2206007 (lemmaExistCutMatchRandMatchRSpecEquivalent!1022 lt!2205997 (regTwo!30886 r!7292) s!2326))))

(assert (=> b!5409913 (= (isDefined!12001 lt!2205976) (Exists!2368 lambda!282347))))

(declare-fun findConcatSeparation!1712 (Regex!15187 Regex!15187 List!61860 List!61860 List!61860) Option!15298)

(assert (=> b!5409913 (= lt!2205976 (findConcatSeparation!1712 lt!2205997 (regTwo!30886 r!7292) Nil!61736 s!2326 s!2326))))

(declare-fun lt!2205960 () Unit!154270)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1476 (Regex!15187 Regex!15187 List!61860) Unit!154270)

(assert (=> b!5409913 (= lt!2205960 (lemmaFindConcatSeparationEquivalentToExists!1476 lt!2205997 (regTwo!30886 r!7292) s!2326))))

(declare-fun lt!2205965 () Regex!15187)

(assert (=> b!5409913 (matchRSpec!2290 lt!2205965 s!2326)))

(declare-fun lt!2205961 () Unit!154270)

(assert (=> b!5409913 (= lt!2205961 (mainMatchTheorem!2290 lt!2205965 s!2326))))

(assert (=> b!5409913 (matchR!7372 lt!2205965 s!2326)))

(assert (=> b!5409913 (= lt!2205965 (Concat!24032 lt!2205997 (regTwo!30886 r!7292)))))

(assert (=> b!5409913 (= lt!2205997 (Concat!24032 (reg!15516 (regOne!30886 r!7292)) lt!2205972))))

(declare-fun lt!2205993 () Unit!154270)

(declare-fun lemmaConcatAssociative!40 (Regex!15187 Regex!15187 Regex!15187 List!61860) Unit!154270)

(assert (=> b!5409913 (= lt!2205993 (lemmaConcatAssociative!40 (reg!15516 (regOne!30886 r!7292)) lt!2205972 (regTwo!30886 r!7292) s!2326))))

(assert (=> b!5409913 e!3353677))

(declare-fun res!2300676 () Bool)

(assert (=> b!5409913 (=> (not res!2300676) (not e!3353677))))

(assert (=> b!5409913 (= res!2300676 (matchR!7372 lt!2206012 lt!2205989))))

(declare-fun lt!2205981 () Unit!154270)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!210 (Regex!15187 Regex!15187 List!61860 List!61860) Unit!154270)

(assert (=> b!5409913 (= lt!2205981 (lemmaTwoRegexMatchThenConcatMatchesConcatString!210 (reg!15516 (regOne!30886 r!7292)) lt!2205970 (_1!35689 lt!2205956) (_2!35689 lt!2205956)))))

(assert (=> b!5409913 (matchR!7372 lt!2205970 (_2!35689 lt!2205956))))

(declare-fun lt!2205984 () Unit!154270)

(declare-fun lt!2205977 () List!61862)

(declare-fun theoremZipperRegexEquiv!501 ((InoxSet Context!9142) List!61862 Regex!15187 List!61860) Unit!154270)

(assert (=> b!5409913 (= lt!2205984 (theoremZipperRegexEquiv!501 lt!2205996 lt!2205977 lt!2205970 (_2!35689 lt!2205956)))))

(assert (=> b!5409913 (matchR!7372 (reg!15516 (regOne!30886 r!7292)) (_1!35689 lt!2205956))))

(declare-fun lt!2205973 () Unit!154270)

(assert (=> b!5409913 (= lt!2205973 (theoremZipperRegexEquiv!501 lt!2205968 lt!2205967 (reg!15516 (regOne!30886 r!7292)) (_1!35689 lt!2205956)))))

(assert (=> b!5409913 (matchZipper!1431 (store ((as const (Array Context!9142 Bool)) false) (Context!9143 (++!13548 lt!2205992 lt!2205964)) true) lt!2205989)))

(declare-fun lt!2205998 () Unit!154270)

(assert (=> b!5409913 (= lt!2205998 (lemmaConcatPreservesForall!212 lt!2205992 lt!2205964 lambda!282346))))

(declare-fun lt!2205958 () Unit!154270)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!60 (Context!9142 Context!9142 List!61860 List!61860) Unit!154270)

(assert (=> b!5409913 (= lt!2205958 (lemmaConcatenateContextMatchesConcatOfStrings!60 lt!2206003 lt!2206010 (_1!35689 lt!2205956) (_2!35689 lt!2205956)))))

(declare-fun b!5409914 () Bool)

(declare-fun res!2300681 () Bool)

(assert (=> b!5409914 (=> res!2300681 e!3353665)))

(assert (=> b!5409914 (= res!2300681 (not (= lt!2205963 r!7292)))))

(declare-fun b!5409915 () Bool)

(assert (=> b!5409915 (= e!3353666 e!3353681)))

(declare-fun res!2300683 () Bool)

(assert (=> b!5409915 (=> res!2300683 e!3353681)))

(assert (=> b!5409915 (= res!2300683 (not (= (unfocusZipper!929 lt!2205977) lt!2205970)))))

(assert (=> b!5409915 (= lt!2205977 (Cons!61738 lt!2206010 Nil!61738))))

(declare-fun res!2300694 () Bool)

(assert (=> start!568118 (=> (not res!2300694) (not e!3353660))))

(declare-fun validRegex!6923 (Regex!15187) Bool)

(assert (=> start!568118 (= res!2300694 (validRegex!6923 r!7292))))

(assert (=> start!568118 e!3353660))

(assert (=> start!568118 e!3353656))

(declare-fun condSetEmpty!35237 () Bool)

(assert (=> start!568118 (= condSetEmpty!35237 (= z!1189 ((as const (Array Context!9142 Bool)) false)))))

(assert (=> start!568118 setRes!35237))

(assert (=> start!568118 e!3353658))

(assert (=> start!568118 e!3353657))

(assert (=> b!5409885 (= e!3353675 true)))

(assert (=> b!5409885 (= (isDefined!12001 (findConcatSeparation!1712 (reg!15516 (regOne!30886 r!7292)) lt!2205972 Nil!61736 (_1!35689 lt!2205987) (_1!35689 lt!2205987))) (Exists!2368 lambda!282349))))

(declare-fun lt!2206009 () Unit!154270)

(assert (=> b!5409885 (= lt!2206009 (lemmaFindConcatSeparationEquivalentToExists!1476 (reg!15516 (regOne!30886 r!7292)) lt!2205972 (_1!35689 lt!2205987)))))

(assert (=> b!5409885 (matchRSpec!2290 lt!2205997 (_1!35689 lt!2205987))))

(declare-fun lt!2205953 () Unit!154270)

(assert (=> b!5409885 (= lt!2205953 (mainMatchTheorem!2290 lt!2205997 (_1!35689 lt!2205987)))))

(assert (=> b!5409916 (= e!3353667 e!3353670)))

(declare-fun res!2300680 () Bool)

(assert (=> b!5409916 (=> res!2300680 e!3353670)))

(declare-fun lt!2206011 () Bool)

(assert (=> b!5409916 (= res!2300680 (or (not (= lt!2205994 lt!2206011)) ((_ is Nil!61736) s!2326)))))

(assert (=> b!5409916 (= (Exists!2368 lambda!282342) (Exists!2368 lambda!282343))))

(declare-fun lt!2205990 () Unit!154270)

(assert (=> b!5409916 (= lt!2205990 (lemmaExistCutMatchRandMatchRSpecEquivalent!1022 (regOne!30886 r!7292) (regTwo!30886 r!7292) s!2326))))

(assert (=> b!5409916 (= lt!2206011 (Exists!2368 lambda!282342))))

(assert (=> b!5409916 (= lt!2206011 (isDefined!12001 (findConcatSeparation!1712 (regOne!30886 r!7292) (regTwo!30886 r!7292) Nil!61736 s!2326 s!2326)))))

(declare-fun lt!2205979 () Unit!154270)

(assert (=> b!5409916 (= lt!2205979 (lemmaFindConcatSeparationEquivalentToExists!1476 (regOne!30886 r!7292) (regTwo!30886 r!7292) s!2326))))

(declare-fun b!5409917 () Bool)

(declare-fun tp!1495547 () Bool)

(declare-fun tp!1495549 () Bool)

(assert (=> b!5409917 (= e!3353656 (and tp!1495547 tp!1495549))))

(declare-fun b!5409918 () Bool)

(declare-fun res!2300707 () Bool)

(assert (=> b!5409918 (=> res!2300707 e!3353679)))

(assert (=> b!5409918 (= res!2300707 e!3353669)))

(declare-fun res!2300695 () Bool)

(assert (=> b!5409918 (=> (not res!2300695) (not e!3353669))))

(assert (=> b!5409918 (= res!2300695 ((_ is Concat!24032) (regOne!30886 r!7292)))))

(declare-fun b!5409919 () Bool)

(declare-fun res!2300685 () Bool)

(assert (=> b!5409919 (=> res!2300685 e!3353667)))

(assert (=> b!5409919 (= res!2300685 (or ((_ is EmptyExpr!15187) r!7292) ((_ is EmptyLang!15187) r!7292) ((_ is ElementMatch!15187) r!7292) ((_ is Union!15187) r!7292) (not ((_ is Concat!24032) r!7292))))))

(declare-fun b!5409920 () Bool)

(declare-fun Unit!154273 () Unit!154270)

(assert (=> b!5409920 (= e!3353661 Unit!154273)))

(declare-fun b!5409921 () Bool)

(declare-fun res!2300703 () Bool)

(assert (=> b!5409921 (=> (not res!2300703) (not e!3353660))))

(declare-fun toList!8971 ((InoxSet Context!9142)) List!61862)

(assert (=> b!5409921 (= res!2300703 (= (toList!8971 z!1189) zl!343))))

(declare-fun b!5409922 () Bool)

(assert (=> b!5409922 (= e!3353656 tp_is_empty!39627)))

(declare-fun b!5409923 () Bool)

(assert (=> b!5409923 (= e!3353682 (matchZipper!1431 lt!2205966 (t!375083 s!2326)))))

(declare-fun b!5409924 () Bool)

(declare-fun res!2300704 () Bool)

(assert (=> b!5409924 (=> res!2300704 e!3353667)))

(declare-fun generalisedConcat!856 (List!61861) Regex!15187)

(assert (=> b!5409924 (= res!2300704 (not (= r!7292 (generalisedConcat!856 (exprs!5071 (h!68186 zl!343))))))))

(declare-fun b!5409925 () Bool)

(assert (=> b!5409925 (= e!3353664 (not e!3353667))))

(declare-fun res!2300705 () Bool)

(assert (=> b!5409925 (=> res!2300705 e!3353667)))

(assert (=> b!5409925 (= res!2300705 (not ((_ is Cons!61738) zl!343)))))

(assert (=> b!5409925 (= lt!2205994 (matchRSpec!2290 r!7292 s!2326))))

(assert (=> b!5409925 (= lt!2205994 (matchR!7372 r!7292 s!2326))))

(declare-fun lt!2205978 () Unit!154270)

(assert (=> b!5409925 (= lt!2205978 (mainMatchTheorem!2290 r!7292 s!2326))))

(assert (= (and start!568118 res!2300694) b!5409921))

(assert (= (and b!5409921 res!2300703) b!5409901))

(assert (= (and b!5409901 res!2300682) b!5409925))

(assert (= (and b!5409925 (not res!2300705)) b!5409909))

(assert (= (and b!5409909 (not res!2300690)) b!5409924))

(assert (= (and b!5409924 (not res!2300704)) b!5409886))

(assert (= (and b!5409886 (not res!2300677)) b!5409891))

(assert (= (and b!5409891 (not res!2300688)) b!5409919))

(assert (= (and b!5409919 (not res!2300685)) b!5409916))

(assert (= (and b!5409916 (not res!2300680)) b!5409910))

(assert (= (and b!5409910 (not res!2300687)) b!5409905))

(assert (= (and b!5409905 c!943150) b!5409892))

(assert (= (and b!5409905 (not c!943150)) b!5409920))

(assert (= (and b!5409892 (not res!2300684)) b!5409923))

(assert (= (and b!5409905 (not res!2300679)) b!5409918))

(assert (= (and b!5409918 res!2300695) b!5409888))

(assert (= (and b!5409918 (not res!2300707)) b!5409895))

(assert (= (and b!5409895 (not res!2300700)) b!5409887))

(assert (= (and b!5409887 (not res!2300706)) b!5409896))

(assert (= (and b!5409896 (not res!2300692)) b!5409882))

(assert (= (and b!5409882 (not res!2300701)) b!5409914))

(assert (= (and b!5409914 (not res!2300681)) b!5409903))

(assert (= (and b!5409903 (not res!2300698)) b!5409893))

(assert (= (and b!5409893 (not res!2300691)) b!5409908))

(assert (= (and b!5409908 (not res!2300699)) b!5409915))

(assert (= (and b!5409915 (not res!2300683)) b!5409890))

(assert (= (and b!5409890 (not res!2300696)) b!5409894))

(assert (= (and b!5409894 (not res!2300697)) b!5409889))

(assert (= (and b!5409889 (not res!2300708)) b!5409907))

(assert (= (and b!5409907 res!2300710) b!5409897))

(assert (= (and b!5409907 (not res!2300702)) b!5409900))

(assert (= (and b!5409900 (not res!2300693)) b!5409912))

(assert (= (and b!5409912 (not res!2300711)) b!5409898))

(assert (= (and b!5409898 (not res!2300686)) b!5409881))

(assert (= (and b!5409881 (not res!2300709)) b!5409884))

(assert (= (and b!5409884 (not res!2300689)) b!5409913))

(assert (= (and b!5409913 res!2300676) b!5409906))

(assert (= (and b!5409913 (not res!2300678)) b!5409885))

(assert (= (and start!568118 ((_ is ElementMatch!15187) r!7292)) b!5409922))

(assert (= (and start!568118 ((_ is Concat!24032) r!7292)) b!5409917))

(assert (= (and start!568118 ((_ is Star!15187) r!7292)) b!5409902))

(assert (= (and start!568118 ((_ is Union!15187) r!7292)) b!5409904))

(assert (= (and start!568118 condSetEmpty!35237) setIsEmpty!35237))

(assert (= (and start!568118 (not condSetEmpty!35237)) setNonEmpty!35237))

(assert (= setNonEmpty!35237 b!5409880))

(assert (= b!5409883 b!5409899))

(assert (= (and start!568118 ((_ is Cons!61738) zl!343)) b!5409883))

(assert (= (and start!568118 ((_ is Cons!61736) s!2326)) b!5409911))

(declare-fun m!6433902 () Bool)

(assert (=> b!5409890 m!6433902))

(declare-fun m!6433904 () Bool)

(assert (=> b!5409890 m!6433904))

(declare-fun m!6433906 () Bool)

(assert (=> b!5409890 m!6433906))

(declare-fun m!6433908 () Bool)

(assert (=> b!5409916 m!6433908))

(declare-fun m!6433910 () Bool)

(assert (=> b!5409916 m!6433910))

(declare-fun m!6433912 () Bool)

(assert (=> b!5409916 m!6433912))

(assert (=> b!5409916 m!6433912))

(declare-fun m!6433914 () Bool)

(assert (=> b!5409916 m!6433914))

(declare-fun m!6433916 () Bool)

(assert (=> b!5409916 m!6433916))

(assert (=> b!5409916 m!6433908))

(declare-fun m!6433918 () Bool)

(assert (=> b!5409916 m!6433918))

(declare-fun m!6433920 () Bool)

(assert (=> b!5409907 m!6433920))

(declare-fun m!6433922 () Bool)

(assert (=> b!5409923 m!6433922))

(declare-fun m!6433924 () Bool)

(assert (=> b!5409924 m!6433924))

(declare-fun m!6433926 () Bool)

(assert (=> b!5409894 m!6433926))

(declare-fun m!6433928 () Bool)

(assert (=> b!5409925 m!6433928))

(declare-fun m!6433930 () Bool)

(assert (=> b!5409925 m!6433930))

(declare-fun m!6433932 () Bool)

(assert (=> b!5409925 m!6433932))

(declare-fun m!6433934 () Bool)

(assert (=> b!5409908 m!6433934))

(declare-fun m!6433936 () Bool)

(assert (=> b!5409908 m!6433936))

(declare-fun m!6433938 () Bool)

(assert (=> b!5409908 m!6433938))

(declare-fun m!6433940 () Bool)

(assert (=> b!5409908 m!6433940))

(declare-fun m!6433942 () Bool)

(assert (=> b!5409908 m!6433942))

(declare-fun m!6433944 () Bool)

(assert (=> b!5409908 m!6433944))

(declare-fun m!6433946 () Bool)

(assert (=> b!5409908 m!6433946))

(declare-fun m!6433948 () Bool)

(assert (=> b!5409908 m!6433948))

(declare-fun m!6433950 () Bool)

(assert (=> b!5409908 m!6433950))

(declare-fun m!6433952 () Bool)

(assert (=> b!5409882 m!6433952))

(declare-fun m!6433954 () Bool)

(assert (=> b!5409882 m!6433954))

(declare-fun m!6433956 () Bool)

(assert (=> b!5409893 m!6433956))

(declare-fun m!6433958 () Bool)

(assert (=> b!5409887 m!6433958))

(declare-fun m!6433960 () Bool)

(assert (=> b!5409921 m!6433960))

(assert (=> b!5409897 m!6433922))

(declare-fun m!6433962 () Bool)

(assert (=> setNonEmpty!35237 m!6433962))

(declare-fun m!6433964 () Bool)

(assert (=> b!5409891 m!6433964))

(assert (=> b!5409891 m!6433964))

(declare-fun m!6433966 () Bool)

(assert (=> b!5409891 m!6433966))

(declare-fun m!6433968 () Bool)

(assert (=> b!5409884 m!6433968))

(declare-fun m!6433970 () Bool)

(assert (=> b!5409901 m!6433970))

(declare-fun m!6433972 () Bool)

(assert (=> b!5409909 m!6433972))

(declare-fun m!6433974 () Bool)

(assert (=> start!568118 m!6433974))

(declare-fun m!6433976 () Bool)

(assert (=> b!5409883 m!6433976))

(declare-fun m!6433978 () Bool)

(assert (=> b!5409913 m!6433978))

(declare-fun m!6433980 () Bool)

(assert (=> b!5409913 m!6433980))

(declare-fun m!6433982 () Bool)

(assert (=> b!5409913 m!6433982))

(declare-fun m!6433984 () Bool)

(assert (=> b!5409913 m!6433984))

(declare-fun m!6433986 () Bool)

(assert (=> b!5409913 m!6433986))

(declare-fun m!6433988 () Bool)

(assert (=> b!5409913 m!6433988))

(declare-fun m!6433990 () Bool)

(assert (=> b!5409913 m!6433990))

(assert (=> b!5409913 m!6433980))

(declare-fun m!6433992 () Bool)

(assert (=> b!5409913 m!6433992))

(declare-fun m!6433994 () Bool)

(assert (=> b!5409913 m!6433994))

(assert (=> b!5409913 m!6433984))

(declare-fun m!6433996 () Bool)

(assert (=> b!5409913 m!6433996))

(declare-fun m!6433998 () Bool)

(assert (=> b!5409913 m!6433998))

(declare-fun m!6434000 () Bool)

(assert (=> b!5409913 m!6434000))

(declare-fun m!6434002 () Bool)

(assert (=> b!5409913 m!6434002))

(declare-fun m!6434004 () Bool)

(assert (=> b!5409913 m!6434004))

(declare-fun m!6434006 () Bool)

(assert (=> b!5409913 m!6434006))

(declare-fun m!6434008 () Bool)

(assert (=> b!5409913 m!6434008))

(declare-fun m!6434010 () Bool)

(assert (=> b!5409913 m!6434010))

(declare-fun m!6434012 () Bool)

(assert (=> b!5409913 m!6434012))

(declare-fun m!6434014 () Bool)

(assert (=> b!5409913 m!6434014))

(declare-fun m!6434016 () Bool)

(assert (=> b!5409913 m!6434016))

(declare-fun m!6434018 () Bool)

(assert (=> b!5409913 m!6434018))

(declare-fun m!6434020 () Bool)

(assert (=> b!5409913 m!6434020))

(declare-fun m!6434022 () Bool)

(assert (=> b!5409913 m!6434022))

(declare-fun m!6434024 () Bool)

(assert (=> b!5409910 m!6434024))

(declare-fun m!6434026 () Bool)

(assert (=> b!5409892 m!6434026))

(assert (=> b!5409892 m!6433920))

(declare-fun m!6434028 () Bool)

(assert (=> b!5409892 m!6434028))

(declare-fun m!6434030 () Bool)

(assert (=> b!5409898 m!6434030))

(declare-fun m!6434032 () Bool)

(assert (=> b!5409898 m!6434032))

(declare-fun m!6434034 () Bool)

(assert (=> b!5409898 m!6434034))

(declare-fun m!6434036 () Bool)

(assert (=> b!5409898 m!6434036))

(declare-fun m!6434038 () Bool)

(assert (=> b!5409898 m!6434038))

(declare-fun m!6434040 () Bool)

(assert (=> b!5409905 m!6434040))

(declare-fun m!6434042 () Bool)

(assert (=> b!5409905 m!6434042))

(declare-fun m!6434044 () Bool)

(assert (=> b!5409905 m!6434044))

(declare-fun m!6434046 () Bool)

(assert (=> b!5409905 m!6434046))

(declare-fun m!6434048 () Bool)

(assert (=> b!5409905 m!6434048))

(declare-fun m!6434050 () Bool)

(assert (=> b!5409905 m!6434050))

(declare-fun m!6434052 () Bool)

(assert (=> b!5409905 m!6434052))

(declare-fun m!6434054 () Bool)

(assert (=> b!5409885 m!6434054))

(declare-fun m!6434056 () Bool)

(assert (=> b!5409885 m!6434056))

(declare-fun m!6434058 () Bool)

(assert (=> b!5409885 m!6434058))

(declare-fun m!6434060 () Bool)

(assert (=> b!5409885 m!6434060))

(declare-fun m!6434062 () Bool)

(assert (=> b!5409885 m!6434062))

(declare-fun m!6434064 () Bool)

(assert (=> b!5409885 m!6434064))

(assert (=> b!5409885 m!6434058))

(declare-fun m!6434066 () Bool)

(assert (=> b!5409896 m!6434066))

(declare-fun m!6434068 () Bool)

(assert (=> b!5409896 m!6434068))

(declare-fun m!6434070 () Bool)

(assert (=> b!5409896 m!6434070))

(declare-fun m!6434072 () Bool)

(assert (=> b!5409896 m!6434072))

(declare-fun m!6434074 () Bool)

(assert (=> b!5409896 m!6434074))

(declare-fun m!6434076 () Bool)

(assert (=> b!5409881 m!6434076))

(declare-fun m!6434078 () Bool)

(assert (=> b!5409888 m!6434078))

(declare-fun m!6434080 () Bool)

(assert (=> b!5409912 m!6434080))

(assert (=> b!5409912 m!6433994))

(declare-fun m!6434082 () Bool)

(assert (=> b!5409912 m!6434082))

(assert (=> b!5409912 m!6434000))

(declare-fun m!6434084 () Bool)

(assert (=> b!5409912 m!6434084))

(assert (=> b!5409912 m!6433984))

(declare-fun m!6434086 () Bool)

(assert (=> b!5409915 m!6434086))

(check-sat (not b!5409884) (not b!5409905) (not start!568118) (not b!5409908) (not b!5409913) (not b!5409885) (not b!5409893) (not b!5409916) (not b!5409910) (not b!5409921) (not b!5409892) (not b!5409915) (not b!5409887) (not b!5409894) (not b!5409904) (not b!5409907) (not b!5409925) (not b!5409901) (not b!5409890) (not b!5409924) (not b!5409898) (not b!5409896) (not b!5409911) (not b!5409923) (not b!5409917) (not b!5409902) (not setNonEmpty!35237) (not b!5409891) tp_is_empty!39627 (not b!5409888) (not b!5409880) (not b!5409881) (not b!5409883) (not b!5409899) (not b!5409882) (not b!5409912) (not b!5409897) (not b!5409909))
(check-sat)
