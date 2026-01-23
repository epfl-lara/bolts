; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!613610 () Bool)

(assert start!613610)

(declare-fun b!6142895 () Bool)

(assert (=> b!6142895 true))

(assert (=> b!6142895 true))

(declare-fun lambda!334868 () Int)

(declare-fun lambda!334867 () Int)

(assert (=> b!6142895 (not (= lambda!334868 lambda!334867))))

(assert (=> b!6142895 true))

(assert (=> b!6142895 true))

(declare-fun b!6142915 () Bool)

(assert (=> b!6142915 true))

(declare-fun b!6142892 () Bool)

(declare-fun res!2545127 () Bool)

(declare-fun e!3743546 () Bool)

(assert (=> b!6142892 (=> res!2545127 e!3743546)))

(declare-datatypes ((C!32444 0))(
  ( (C!32445 (val!25924 Int)) )
))
(declare-datatypes ((Regex!16087 0))(
  ( (ElementMatch!16087 (c!1105061 C!32444)) (Concat!24932 (regOne!32686 Regex!16087) (regTwo!32686 Regex!16087)) (EmptyExpr!16087) (Star!16087 (reg!16416 Regex!16087)) (EmptyLang!16087) (Union!16087 (regOne!32687 Regex!16087) (regTwo!32687 Regex!16087)) )
))
(declare-fun r!7292 () Regex!16087)

(get-info :version)

(assert (=> b!6142892 (= res!2545127 (or ((_ is EmptyExpr!16087) r!7292) ((_ is EmptyLang!16087) r!7292) ((_ is ElementMatch!16087) r!7292) ((_ is Union!16087) r!7292) (not ((_ is Concat!24932) r!7292))))))

(declare-fun b!6142893 () Bool)

(declare-fun e!3743542 () Bool)

(declare-fun e!3743543 () Bool)

(assert (=> b!6142893 (= e!3743542 e!3743543)))

(declare-fun res!2545133 () Bool)

(assert (=> b!6142893 (=> res!2545133 e!3743543)))

(declare-fun e!3743547 () Bool)

(assert (=> b!6142893 (= res!2545133 e!3743547)))

(declare-fun res!2545121 () Bool)

(assert (=> b!6142893 (=> (not res!2545121) (not e!3743547))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!64560 0))(
  ( (Nil!64436) (Cons!64436 (h!70884 Regex!16087) (t!378041 List!64560)) )
))
(declare-datatypes ((Context!10942 0))(
  ( (Context!10943 (exprs!5971 List!64560)) )
))
(declare-fun lt!2333383 () (InoxSet Context!10942))

(declare-fun lt!2333396 () Bool)

(declare-datatypes ((List!64561 0))(
  ( (Nil!64437) (Cons!64437 (h!70885 C!32444) (t!378042 List!64561)) )
))
(declare-fun s!2326 () List!64561)

(declare-fun matchZipper!2099 ((InoxSet Context!10942) List!64561) Bool)

(assert (=> b!6142893 (= res!2545121 (not (= (matchZipper!2099 lt!2333383 (t!378042 s!2326)) lt!2333396)))))

(declare-fun lt!2333399 () (InoxSet Context!10942))

(declare-fun e!3743544 () Bool)

(assert (=> b!6142893 (= (matchZipper!2099 lt!2333399 (t!378042 s!2326)) e!3743544)))

(declare-fun res!2545136 () Bool)

(assert (=> b!6142893 (=> res!2545136 e!3743544)))

(assert (=> b!6142893 (= res!2545136 lt!2333396)))

(declare-fun lt!2333387 () (InoxSet Context!10942))

(assert (=> b!6142893 (= lt!2333396 (matchZipper!2099 lt!2333387 (t!378042 s!2326)))))

(declare-fun lt!2333394 () (InoxSet Context!10942))

(declare-datatypes ((Unit!157503 0))(
  ( (Unit!157504) )
))
(declare-fun lt!2333390 () Unit!157503)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!918 ((InoxSet Context!10942) (InoxSet Context!10942) List!64561) Unit!157503)

(assert (=> b!6142893 (= lt!2333390 (lemmaZipperConcatMatchesSameAsBothZippers!918 lt!2333387 lt!2333394 (t!378042 s!2326)))))

(declare-fun b!6142894 () Bool)

(declare-fun res!2545123 () Bool)

(declare-fun e!3743541 () Bool)

(assert (=> b!6142894 (=> (not res!2545123) (not e!3743541))))

(declare-fun z!1189 () (InoxSet Context!10942))

(declare-datatypes ((List!64562 0))(
  ( (Nil!64438) (Cons!64438 (h!70886 Context!10942) (t!378043 List!64562)) )
))
(declare-fun zl!343 () List!64562)

(declare-fun toList!9871 ((InoxSet Context!10942)) List!64562)

(assert (=> b!6142894 (= res!2545123 (= (toList!9871 z!1189) zl!343))))

(declare-fun e!3743538 () Bool)

(assert (=> b!6142895 (= e!3743546 e!3743538)))

(declare-fun res!2545130 () Bool)

(assert (=> b!6142895 (=> res!2545130 e!3743538)))

(declare-fun lt!2333385 () Bool)

(declare-fun lt!2333398 () Bool)

(assert (=> b!6142895 (= res!2545130 (or (not (= lt!2333385 lt!2333398)) ((_ is Nil!64437) s!2326)))))

(declare-fun Exists!3157 (Int) Bool)

(assert (=> b!6142895 (= (Exists!3157 lambda!334867) (Exists!3157 lambda!334868))))

(declare-fun lt!2333382 () Unit!157503)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1694 (Regex!16087 Regex!16087 List!64561) Unit!157503)

(assert (=> b!6142895 (= lt!2333382 (lemmaExistCutMatchRandMatchRSpecEquivalent!1694 (regOne!32686 r!7292) (regTwo!32686 r!7292) s!2326))))

(assert (=> b!6142895 (= lt!2333398 (Exists!3157 lambda!334867))))

(declare-datatypes ((tuple2!66132 0))(
  ( (tuple2!66133 (_1!36369 List!64561) (_2!36369 List!64561)) )
))
(declare-datatypes ((Option!15978 0))(
  ( (None!15977) (Some!15977 (v!52116 tuple2!66132)) )
))
(declare-fun isDefined!12681 (Option!15978) Bool)

(declare-fun findConcatSeparation!2392 (Regex!16087 Regex!16087 List!64561 List!64561 List!64561) Option!15978)

(assert (=> b!6142895 (= lt!2333398 (isDefined!12681 (findConcatSeparation!2392 (regOne!32686 r!7292) (regTwo!32686 r!7292) Nil!64437 s!2326 s!2326)))))

(declare-fun lt!2333400 () Unit!157503)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2156 (Regex!16087 Regex!16087 List!64561) Unit!157503)

(assert (=> b!6142895 (= lt!2333400 (lemmaFindConcatSeparationEquivalentToExists!2156 (regOne!32686 r!7292) (regTwo!32686 r!7292) s!2326))))

(declare-fun b!6142896 () Bool)

(declare-fun e!3743548 () Bool)

(assert (=> b!6142896 (= e!3743548 e!3743542)))

(declare-fun res!2545128 () Bool)

(assert (=> b!6142896 (=> res!2545128 e!3743542)))

(assert (=> b!6142896 (= res!2545128 (not (= lt!2333383 lt!2333399)))))

(assert (=> b!6142896 (= lt!2333399 ((_ map or) lt!2333387 lt!2333394))))

(declare-fun lt!2333388 () Context!10942)

(declare-fun derivationStepZipperDown!1335 (Regex!16087 Context!10942 C!32444) (InoxSet Context!10942))

(assert (=> b!6142896 (= lt!2333394 (derivationStepZipperDown!1335 (regTwo!32687 (regOne!32686 r!7292)) lt!2333388 (h!70885 s!2326)))))

(assert (=> b!6142896 (= lt!2333387 (derivationStepZipperDown!1335 (regOne!32687 (regOne!32686 r!7292)) lt!2333388 (h!70885 s!2326)))))

(declare-fun b!6142897 () Bool)

(declare-fun res!2545126 () Bool)

(assert (=> b!6142897 (=> res!2545126 e!3743546)))

(declare-fun generalisedConcat!1684 (List!64560) Regex!16087)

(assert (=> b!6142897 (= res!2545126 (not (= r!7292 (generalisedConcat!1684 (exprs!5971 (h!70886 zl!343))))))))

(declare-fun setIsEmpty!41562 () Bool)

(declare-fun setRes!41562 () Bool)

(assert (=> setIsEmpty!41562 setRes!41562))

(declare-fun b!6142898 () Bool)

(assert (=> b!6142898 (= e!3743547 (not (matchZipper!2099 lt!2333394 (t!378042 s!2326))))))

(declare-fun b!6142899 () Bool)

(declare-fun res!2545131 () Bool)

(assert (=> b!6142899 (=> res!2545131 e!3743546)))

(declare-fun generalisedUnion!1931 (List!64560) Regex!16087)

(declare-fun unfocusZipperList!1508 (List!64562) List!64560)

(assert (=> b!6142899 (= res!2545131 (not (= r!7292 (generalisedUnion!1931 (unfocusZipperList!1508 zl!343)))))))

(declare-fun b!6142900 () Bool)

(declare-fun e!3743536 () Unit!157503)

(declare-fun Unit!157505 () Unit!157503)

(assert (=> b!6142900 (= e!3743536 Unit!157505)))

(declare-fun lt!2333386 () (InoxSet Context!10942))

(declare-fun lt!2333392 () Unit!157503)

(assert (=> b!6142900 (= lt!2333392 (lemmaZipperConcatMatchesSameAsBothZippers!918 lt!2333383 lt!2333386 (t!378042 s!2326)))))

(declare-fun res!2545129 () Bool)

(assert (=> b!6142900 (= res!2545129 (matchZipper!2099 lt!2333383 (t!378042 s!2326)))))

(declare-fun e!3743539 () Bool)

(assert (=> b!6142900 (=> res!2545129 e!3743539)))

(assert (=> b!6142900 (= (matchZipper!2099 ((_ map or) lt!2333383 lt!2333386) (t!378042 s!2326)) e!3743539)))

(declare-fun b!6142901 () Bool)

(declare-fun res!2545132 () Bool)

(assert (=> b!6142901 (=> res!2545132 e!3743546)))

(declare-fun isEmpty!36388 (List!64562) Bool)

(assert (=> b!6142901 (= res!2545132 (not (isEmpty!36388 (t!378043 zl!343))))))

(declare-fun b!6142902 () Bool)

(declare-fun e!3743550 () Bool)

(declare-fun tp!1716229 () Bool)

(assert (=> b!6142902 (= e!3743550 tp!1716229)))

(declare-fun b!6142903 () Bool)

(declare-fun e!3743537 () Bool)

(declare-fun tp!1716233 () Bool)

(assert (=> b!6142903 (= e!3743537 tp!1716233)))

(declare-fun b!6142904 () Bool)

(declare-fun tp!1716235 () Bool)

(declare-fun tp!1716231 () Bool)

(assert (=> b!6142904 (= e!3743537 (and tp!1716235 tp!1716231))))

(declare-fun e!3743545 () Bool)

(declare-fun b!6142905 () Bool)

(declare-fun e!3743540 () Bool)

(declare-fun tp!1716234 () Bool)

(declare-fun inv!83464 (Context!10942) Bool)

(assert (=> b!6142905 (= e!3743545 (and (inv!83464 (h!70886 zl!343)) e!3743540 tp!1716234))))

(declare-fun b!6142906 () Bool)

(declare-fun e!3743549 () Bool)

(assert (=> b!6142906 (= e!3743543 e!3743549)))

(declare-fun res!2545124 () Bool)

(assert (=> b!6142906 (=> res!2545124 e!3743549)))

(declare-fun nullable!6080 (Regex!16087) Bool)

(assert (=> b!6142906 (= res!2545124 (nullable!6080 (regOne!32687 (regOne!32686 r!7292))))))

(declare-fun lambda!334869 () Int)

(declare-fun lt!2333391 () Context!10942)

(declare-fun lt!2333393 () (InoxSet Context!10942))

(declare-fun flatMap!1592 ((InoxSet Context!10942) Int) (InoxSet Context!10942))

(declare-fun derivationStepZipperUp!1261 (Context!10942 C!32444) (InoxSet Context!10942))

(assert (=> b!6142906 (= (flatMap!1592 lt!2333393 lambda!334869) (derivationStepZipperUp!1261 lt!2333391 (h!70885 s!2326)))))

(declare-fun lt!2333401 () Unit!157503)

(declare-fun lemmaFlatMapOnSingletonSet!1118 ((InoxSet Context!10942) Context!10942 Int) Unit!157503)

(assert (=> b!6142906 (= lt!2333401 (lemmaFlatMapOnSingletonSet!1118 lt!2333393 lt!2333391 lambda!334869))))

(declare-fun lt!2333389 () (InoxSet Context!10942))

(assert (=> b!6142906 (= lt!2333389 (derivationStepZipperUp!1261 lt!2333391 (h!70885 s!2326)))))

(assert (=> b!6142906 (= lt!2333393 (store ((as const (Array Context!10942 Bool)) false) lt!2333391 true))))

(assert (=> b!6142906 (= lt!2333391 (Context!10943 (Cons!64436 (regOne!32687 (regOne!32686 r!7292)) (t!378041 (exprs!5971 (h!70886 zl!343))))))))

(declare-fun b!6142907 () Bool)

(declare-fun tp!1716237 () Bool)

(declare-fun tp!1716236 () Bool)

(assert (=> b!6142907 (= e!3743537 (and tp!1716237 tp!1716236))))

(declare-fun b!6142908 () Bool)

(declare-fun tp_is_empty!41427 () Bool)

(assert (=> b!6142908 (= e!3743537 tp_is_empty!41427)))

(declare-fun b!6142909 () Bool)

(declare-fun Unit!157506 () Unit!157503)

(assert (=> b!6142909 (= e!3743536 Unit!157506)))

(declare-fun b!6142910 () Bool)

(assert (=> b!6142910 (= e!3743539 (matchZipper!2099 lt!2333386 (t!378042 s!2326)))))

(declare-fun b!6142911 () Bool)

(declare-fun tp!1716230 () Bool)

(assert (=> b!6142911 (= e!3743540 tp!1716230)))

(declare-fun b!6142912 () Bool)

(assert (=> b!6142912 (= e!3743541 (not e!3743546))))

(declare-fun res!2545135 () Bool)

(assert (=> b!6142912 (=> res!2545135 e!3743546)))

(assert (=> b!6142912 (= res!2545135 (not ((_ is Cons!64438) zl!343)))))

(declare-fun matchRSpec!3188 (Regex!16087 List!64561) Bool)

(assert (=> b!6142912 (= lt!2333385 (matchRSpec!3188 r!7292 s!2326))))

(declare-fun matchR!8270 (Regex!16087 List!64561) Bool)

(assert (=> b!6142912 (= lt!2333385 (matchR!8270 r!7292 s!2326))))

(declare-fun lt!2333384 () Unit!157503)

(declare-fun mainMatchTheorem!3188 (Regex!16087 List!64561) Unit!157503)

(assert (=> b!6142912 (= lt!2333384 (mainMatchTheorem!3188 r!7292 s!2326))))

(declare-fun b!6142913 () Bool)

(declare-fun res!2545122 () Bool)

(assert (=> b!6142913 (=> (not res!2545122) (not e!3743541))))

(declare-fun unfocusZipper!1829 (List!64562) Regex!16087)

(assert (=> b!6142913 (= res!2545122 (= r!7292 (unfocusZipper!1829 zl!343)))))

(declare-fun setElem!41562 () Context!10942)

(declare-fun setNonEmpty!41562 () Bool)

(declare-fun tp!1716238 () Bool)

(assert (=> setNonEmpty!41562 (= setRes!41562 (and tp!1716238 (inv!83464 setElem!41562) e!3743550))))

(declare-fun setRest!41562 () (InoxSet Context!10942))

(assert (=> setNonEmpty!41562 (= z!1189 ((_ map or) (store ((as const (Array Context!10942 Bool)) false) setElem!41562 true) setRest!41562))))

(declare-fun res!2545120 () Bool)

(assert (=> start!613610 (=> (not res!2545120) (not e!3743541))))

(declare-fun validRegex!7823 (Regex!16087) Bool)

(assert (=> start!613610 (= res!2545120 (validRegex!7823 r!7292))))

(assert (=> start!613610 e!3743541))

(assert (=> start!613610 e!3743537))

(declare-fun condSetEmpty!41562 () Bool)

(assert (=> start!613610 (= condSetEmpty!41562 (= z!1189 ((as const (Array Context!10942 Bool)) false)))))

(assert (=> start!613610 setRes!41562))

(assert (=> start!613610 e!3743545))

(declare-fun e!3743551 () Bool)

(assert (=> start!613610 e!3743551))

(declare-fun b!6142914 () Bool)

(declare-fun res!2545125 () Bool)

(assert (=> b!6142914 (=> res!2545125 e!3743546)))

(assert (=> b!6142914 (= res!2545125 (not ((_ is Cons!64436) (exprs!5971 (h!70886 zl!343)))))))

(assert (=> b!6142915 (= e!3743538 e!3743548)))

(declare-fun res!2545134 () Bool)

(assert (=> b!6142915 (=> res!2545134 e!3743548)))

(assert (=> b!6142915 (= res!2545134 (or (and ((_ is ElementMatch!16087) (regOne!32686 r!7292)) (= (c!1105061 (regOne!32686 r!7292)) (h!70885 s!2326))) (not ((_ is Union!16087) (regOne!32686 r!7292)))))))

(declare-fun lt!2333395 () Unit!157503)

(assert (=> b!6142915 (= lt!2333395 e!3743536)))

(declare-fun c!1105060 () Bool)

(assert (=> b!6142915 (= c!1105060 (nullable!6080 (h!70884 (exprs!5971 (h!70886 zl!343)))))))

(assert (=> b!6142915 (= (flatMap!1592 z!1189 lambda!334869) (derivationStepZipperUp!1261 (h!70886 zl!343) (h!70885 s!2326)))))

(declare-fun lt!2333402 () Unit!157503)

(assert (=> b!6142915 (= lt!2333402 (lemmaFlatMapOnSingletonSet!1118 z!1189 (h!70886 zl!343) lambda!334869))))

(assert (=> b!6142915 (= lt!2333386 (derivationStepZipperUp!1261 lt!2333388 (h!70885 s!2326)))))

(assert (=> b!6142915 (= lt!2333383 (derivationStepZipperDown!1335 (h!70884 (exprs!5971 (h!70886 zl!343))) lt!2333388 (h!70885 s!2326)))))

(assert (=> b!6142915 (= lt!2333388 (Context!10943 (t!378041 (exprs!5971 (h!70886 zl!343)))))))

(declare-fun lt!2333397 () (InoxSet Context!10942))

(assert (=> b!6142915 (= lt!2333397 (derivationStepZipperUp!1261 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343))))) (h!70885 s!2326)))))

(declare-fun b!6142916 () Bool)

(assert (=> b!6142916 (= e!3743544 (matchZipper!2099 lt!2333394 (t!378042 s!2326)))))

(declare-fun b!6142917 () Bool)

(declare-fun res!2545137 () Bool)

(assert (=> b!6142917 (=> res!2545137 e!3743538)))

(declare-fun isEmpty!36389 (List!64560) Bool)

(assert (=> b!6142917 (= res!2545137 (isEmpty!36389 (t!378041 (exprs!5971 (h!70886 zl!343)))))))

(declare-fun b!6142918 () Bool)

(declare-fun tp!1716232 () Bool)

(assert (=> b!6142918 (= e!3743551 (and tp_is_empty!41427 tp!1716232))))

(declare-fun b!6142919 () Bool)

(assert (=> b!6142919 (= e!3743549 (inv!83464 lt!2333388))))

(assert (= (and start!613610 res!2545120) b!6142894))

(assert (= (and b!6142894 res!2545123) b!6142913))

(assert (= (and b!6142913 res!2545122) b!6142912))

(assert (= (and b!6142912 (not res!2545135)) b!6142901))

(assert (= (and b!6142901 (not res!2545132)) b!6142897))

(assert (= (and b!6142897 (not res!2545126)) b!6142914))

(assert (= (and b!6142914 (not res!2545125)) b!6142899))

(assert (= (and b!6142899 (not res!2545131)) b!6142892))

(assert (= (and b!6142892 (not res!2545127)) b!6142895))

(assert (= (and b!6142895 (not res!2545130)) b!6142917))

(assert (= (and b!6142917 (not res!2545137)) b!6142915))

(assert (= (and b!6142915 c!1105060) b!6142900))

(assert (= (and b!6142915 (not c!1105060)) b!6142909))

(assert (= (and b!6142900 (not res!2545129)) b!6142910))

(assert (= (and b!6142915 (not res!2545134)) b!6142896))

(assert (= (and b!6142896 (not res!2545128)) b!6142893))

(assert (= (and b!6142893 (not res!2545136)) b!6142916))

(assert (= (and b!6142893 res!2545121) b!6142898))

(assert (= (and b!6142893 (not res!2545133)) b!6142906))

(assert (= (and b!6142906 (not res!2545124)) b!6142919))

(assert (= (and start!613610 ((_ is ElementMatch!16087) r!7292)) b!6142908))

(assert (= (and start!613610 ((_ is Concat!24932) r!7292)) b!6142904))

(assert (= (and start!613610 ((_ is Star!16087) r!7292)) b!6142903))

(assert (= (and start!613610 ((_ is Union!16087) r!7292)) b!6142907))

(assert (= (and start!613610 condSetEmpty!41562) setIsEmpty!41562))

(assert (= (and start!613610 (not condSetEmpty!41562)) setNonEmpty!41562))

(assert (= setNonEmpty!41562 b!6142902))

(assert (= b!6142905 b!6142911))

(assert (= (and start!613610 ((_ is Cons!64438) zl!343)) b!6142905))

(assert (= (and start!613610 ((_ is Cons!64437) s!2326)) b!6142918))

(declare-fun m!6983968 () Bool)

(assert (=> setNonEmpty!41562 m!6983968))

(declare-fun m!6983970 () Bool)

(assert (=> b!6142897 m!6983970))

(declare-fun m!6983972 () Bool)

(assert (=> b!6142896 m!6983972))

(declare-fun m!6983974 () Bool)

(assert (=> b!6142896 m!6983974))

(declare-fun m!6983976 () Bool)

(assert (=> b!6142912 m!6983976))

(declare-fun m!6983978 () Bool)

(assert (=> b!6142912 m!6983978))

(declare-fun m!6983980 () Bool)

(assert (=> b!6142912 m!6983980))

(declare-fun m!6983982 () Bool)

(assert (=> b!6142894 m!6983982))

(declare-fun m!6983984 () Bool)

(assert (=> b!6142917 m!6983984))

(declare-fun m!6983986 () Bool)

(assert (=> b!6142913 m!6983986))

(declare-fun m!6983988 () Bool)

(assert (=> b!6142900 m!6983988))

(declare-fun m!6983990 () Bool)

(assert (=> b!6142900 m!6983990))

(declare-fun m!6983992 () Bool)

(assert (=> b!6142900 m!6983992))

(declare-fun m!6983994 () Bool)

(assert (=> b!6142898 m!6983994))

(declare-fun m!6983996 () Bool)

(assert (=> b!6142899 m!6983996))

(assert (=> b!6142899 m!6983996))

(declare-fun m!6983998 () Bool)

(assert (=> b!6142899 m!6983998))

(declare-fun m!6984000 () Bool)

(assert (=> b!6142919 m!6984000))

(declare-fun m!6984002 () Bool)

(assert (=> b!6142915 m!6984002))

(declare-fun m!6984004 () Bool)

(assert (=> b!6142915 m!6984004))

(declare-fun m!6984006 () Bool)

(assert (=> b!6142915 m!6984006))

(declare-fun m!6984008 () Bool)

(assert (=> b!6142915 m!6984008))

(declare-fun m!6984010 () Bool)

(assert (=> b!6142915 m!6984010))

(declare-fun m!6984012 () Bool)

(assert (=> b!6142915 m!6984012))

(declare-fun m!6984014 () Bool)

(assert (=> b!6142915 m!6984014))

(declare-fun m!6984016 () Bool)

(assert (=> b!6142901 m!6984016))

(declare-fun m!6984018 () Bool)

(assert (=> b!6142910 m!6984018))

(declare-fun m!6984020 () Bool)

(assert (=> b!6142905 m!6984020))

(declare-fun m!6984022 () Bool)

(assert (=> start!613610 m!6984022))

(declare-fun m!6984024 () Bool)

(assert (=> b!6142906 m!6984024))

(declare-fun m!6984026 () Bool)

(assert (=> b!6142906 m!6984026))

(declare-fun m!6984028 () Bool)

(assert (=> b!6142906 m!6984028))

(declare-fun m!6984030 () Bool)

(assert (=> b!6142906 m!6984030))

(declare-fun m!6984032 () Bool)

(assert (=> b!6142906 m!6984032))

(declare-fun m!6984034 () Bool)

(assert (=> b!6142895 m!6984034))

(declare-fun m!6984036 () Bool)

(assert (=> b!6142895 m!6984036))

(declare-fun m!6984038 () Bool)

(assert (=> b!6142895 m!6984038))

(declare-fun m!6984040 () Bool)

(assert (=> b!6142895 m!6984040))

(assert (=> b!6142895 m!6984038))

(declare-fun m!6984042 () Bool)

(assert (=> b!6142895 m!6984042))

(assert (=> b!6142895 m!6984034))

(declare-fun m!6984044 () Bool)

(assert (=> b!6142895 m!6984044))

(assert (=> b!6142893 m!6983990))

(declare-fun m!6984046 () Bool)

(assert (=> b!6142893 m!6984046))

(declare-fun m!6984048 () Bool)

(assert (=> b!6142893 m!6984048))

(declare-fun m!6984050 () Bool)

(assert (=> b!6142893 m!6984050))

(assert (=> b!6142916 m!6983994))

(check-sat (not b!6142896) (not b!6142897) (not setNonEmpty!41562) (not b!6142916) (not b!6142899) tp_is_empty!41427 (not b!6142911) (not b!6142906) (not b!6142902) (not b!6142898) (not b!6142904) (not b!6142893) (not b!6142894) (not b!6142901) (not b!6142918) (not b!6142910) (not start!613610) (not b!6142903) (not b!6142913) (not b!6142907) (not b!6142915) (not b!6142919) (not b!6142912) (not b!6142900) (not b!6142905) (not b!6142895) (not b!6142917))
(check-sat)
(get-model)

(declare-fun d!1924721 () Bool)

(declare-fun e!3743767 () Bool)

(assert (=> d!1924721 (= (matchZipper!2099 ((_ map or) lt!2333383 lt!2333386) (t!378042 s!2326)) e!3743767)))

(declare-fun res!2545255 () Bool)

(assert (=> d!1924721 (=> res!2545255 e!3743767)))

(assert (=> d!1924721 (= res!2545255 (matchZipper!2099 lt!2333383 (t!378042 s!2326)))))

(declare-fun lt!2333449 () Unit!157503)

(declare-fun choose!45658 ((InoxSet Context!10942) (InoxSet Context!10942) List!64561) Unit!157503)

(assert (=> d!1924721 (= lt!2333449 (choose!45658 lt!2333383 lt!2333386 (t!378042 s!2326)))))

(assert (=> d!1924721 (= (lemmaZipperConcatMatchesSameAsBothZippers!918 lt!2333383 lt!2333386 (t!378042 s!2326)) lt!2333449)))

(declare-fun b!6143307 () Bool)

(assert (=> b!6143307 (= e!3743767 (matchZipper!2099 lt!2333386 (t!378042 s!2326)))))

(assert (= (and d!1924721 (not res!2545255)) b!6143307))

(assert (=> d!1924721 m!6983992))

(assert (=> d!1924721 m!6983990))

(declare-fun m!6984294 () Bool)

(assert (=> d!1924721 m!6984294))

(assert (=> b!6143307 m!6984018))

(assert (=> b!6142900 d!1924721))

(declare-fun d!1924723 () Bool)

(declare-fun c!1105169 () Bool)

(declare-fun isEmpty!36392 (List!64561) Bool)

(assert (=> d!1924723 (= c!1105169 (isEmpty!36392 (t!378042 s!2326)))))

(declare-fun e!3743770 () Bool)

(assert (=> d!1924723 (= (matchZipper!2099 lt!2333383 (t!378042 s!2326)) e!3743770)))

(declare-fun b!6143312 () Bool)

(declare-fun nullableZipper!1868 ((InoxSet Context!10942)) Bool)

(assert (=> b!6143312 (= e!3743770 (nullableZipper!1868 lt!2333383))))

(declare-fun b!6143313 () Bool)

(declare-fun derivationStepZipper!2060 ((InoxSet Context!10942) C!32444) (InoxSet Context!10942))

(declare-fun head!12695 (List!64561) C!32444)

(declare-fun tail!11780 (List!64561) List!64561)

(assert (=> b!6143313 (= e!3743770 (matchZipper!2099 (derivationStepZipper!2060 lt!2333383 (head!12695 (t!378042 s!2326))) (tail!11780 (t!378042 s!2326))))))

(assert (= (and d!1924723 c!1105169) b!6143312))

(assert (= (and d!1924723 (not c!1105169)) b!6143313))

(declare-fun m!6984296 () Bool)

(assert (=> d!1924723 m!6984296))

(declare-fun m!6984298 () Bool)

(assert (=> b!6143312 m!6984298))

(declare-fun m!6984300 () Bool)

(assert (=> b!6143313 m!6984300))

(assert (=> b!6143313 m!6984300))

(declare-fun m!6984302 () Bool)

(assert (=> b!6143313 m!6984302))

(declare-fun m!6984304 () Bool)

(assert (=> b!6143313 m!6984304))

(assert (=> b!6143313 m!6984302))

(assert (=> b!6143313 m!6984304))

(declare-fun m!6984306 () Bool)

(assert (=> b!6143313 m!6984306))

(assert (=> b!6142900 d!1924723))

(declare-fun d!1924725 () Bool)

(declare-fun c!1105170 () Bool)

(assert (=> d!1924725 (= c!1105170 (isEmpty!36392 (t!378042 s!2326)))))

(declare-fun e!3743771 () Bool)

(assert (=> d!1924725 (= (matchZipper!2099 ((_ map or) lt!2333383 lt!2333386) (t!378042 s!2326)) e!3743771)))

(declare-fun b!6143314 () Bool)

(assert (=> b!6143314 (= e!3743771 (nullableZipper!1868 ((_ map or) lt!2333383 lt!2333386)))))

(declare-fun b!6143315 () Bool)

(assert (=> b!6143315 (= e!3743771 (matchZipper!2099 (derivationStepZipper!2060 ((_ map or) lt!2333383 lt!2333386) (head!12695 (t!378042 s!2326))) (tail!11780 (t!378042 s!2326))))))

(assert (= (and d!1924725 c!1105170) b!6143314))

(assert (= (and d!1924725 (not c!1105170)) b!6143315))

(assert (=> d!1924725 m!6984296))

(declare-fun m!6984308 () Bool)

(assert (=> b!6143314 m!6984308))

(assert (=> b!6143315 m!6984300))

(assert (=> b!6143315 m!6984300))

(declare-fun m!6984310 () Bool)

(assert (=> b!6143315 m!6984310))

(assert (=> b!6143315 m!6984304))

(assert (=> b!6143315 m!6984310))

(assert (=> b!6143315 m!6984304))

(declare-fun m!6984312 () Bool)

(assert (=> b!6143315 m!6984312))

(assert (=> b!6142900 d!1924725))

(declare-fun bm!510348 () Bool)

(declare-fun call!510353 () Bool)

(declare-fun call!510355 () Bool)

(assert (=> bm!510348 (= call!510353 call!510355)))

(declare-fun b!6143334 () Bool)

(declare-fun e!3743791 () Bool)

(declare-fun e!3743786 () Bool)

(assert (=> b!6143334 (= e!3743791 e!3743786)))

(declare-fun c!1105176 () Bool)

(assert (=> b!6143334 (= c!1105176 ((_ is Star!16087) r!7292))))

(declare-fun bm!510349 () Bool)

(declare-fun c!1105175 () Bool)

(assert (=> bm!510349 (= call!510355 (validRegex!7823 (ite c!1105176 (reg!16416 r!7292) (ite c!1105175 (regOne!32687 r!7292) (regOne!32686 r!7292)))))))

(declare-fun b!6143335 () Bool)

(declare-fun e!3743789 () Bool)

(declare-fun call!510354 () Bool)

(assert (=> b!6143335 (= e!3743789 call!510354)))

(declare-fun b!6143336 () Bool)

(declare-fun e!3743790 () Bool)

(assert (=> b!6143336 (= e!3743786 e!3743790)))

(assert (=> b!6143336 (= c!1105175 ((_ is Union!16087) r!7292))))

(declare-fun b!6143337 () Bool)

(declare-fun res!2545266 () Bool)

(declare-fun e!3743788 () Bool)

(assert (=> b!6143337 (=> (not res!2545266) (not e!3743788))))

(assert (=> b!6143337 (= res!2545266 call!510353)))

(assert (=> b!6143337 (= e!3743790 e!3743788)))

(declare-fun b!6143338 () Bool)

(assert (=> b!6143338 (= e!3743788 call!510354)))

(declare-fun b!6143339 () Bool)

(declare-fun res!2545269 () Bool)

(declare-fun e!3743792 () Bool)

(assert (=> b!6143339 (=> res!2545269 e!3743792)))

(assert (=> b!6143339 (= res!2545269 (not ((_ is Concat!24932) r!7292)))))

(assert (=> b!6143339 (= e!3743790 e!3743792)))

(declare-fun b!6143340 () Bool)

(declare-fun e!3743787 () Bool)

(assert (=> b!6143340 (= e!3743786 e!3743787)))

(declare-fun res!2545267 () Bool)

(assert (=> b!6143340 (= res!2545267 (not (nullable!6080 (reg!16416 r!7292))))))

(assert (=> b!6143340 (=> (not res!2545267) (not e!3743787))))

(declare-fun b!6143341 () Bool)

(assert (=> b!6143341 (= e!3743792 e!3743789)))

(declare-fun res!2545270 () Bool)

(assert (=> b!6143341 (=> (not res!2545270) (not e!3743789))))

(assert (=> b!6143341 (= res!2545270 call!510353)))

(declare-fun b!6143342 () Bool)

(assert (=> b!6143342 (= e!3743787 call!510355)))

(declare-fun d!1924727 () Bool)

(declare-fun res!2545268 () Bool)

(assert (=> d!1924727 (=> res!2545268 e!3743791)))

(assert (=> d!1924727 (= res!2545268 ((_ is ElementMatch!16087) r!7292))))

(assert (=> d!1924727 (= (validRegex!7823 r!7292) e!3743791)))

(declare-fun bm!510350 () Bool)

(assert (=> bm!510350 (= call!510354 (validRegex!7823 (ite c!1105175 (regTwo!32687 r!7292) (regTwo!32686 r!7292))))))

(assert (= (and d!1924727 (not res!2545268)) b!6143334))

(assert (= (and b!6143334 c!1105176) b!6143340))

(assert (= (and b!6143334 (not c!1105176)) b!6143336))

(assert (= (and b!6143340 res!2545267) b!6143342))

(assert (= (and b!6143336 c!1105175) b!6143337))

(assert (= (and b!6143336 (not c!1105175)) b!6143339))

(assert (= (and b!6143337 res!2545266) b!6143338))

(assert (= (and b!6143339 (not res!2545269)) b!6143341))

(assert (= (and b!6143341 res!2545270) b!6143335))

(assert (= (or b!6143338 b!6143335) bm!510350))

(assert (= (or b!6143337 b!6143341) bm!510348))

(assert (= (or b!6143342 bm!510348) bm!510349))

(declare-fun m!6984314 () Bool)

(assert (=> bm!510349 m!6984314))

(declare-fun m!6984316 () Bool)

(assert (=> b!6143340 m!6984316))

(declare-fun m!6984318 () Bool)

(assert (=> bm!510350 m!6984318))

(assert (=> start!613610 d!1924727))

(declare-fun bs!1523238 () Bool)

(declare-fun b!6143383 () Bool)

(assert (= bs!1523238 (and b!6143383 b!6142895)))

(declare-fun lambda!334903 () Int)

(assert (=> bs!1523238 (not (= lambda!334903 lambda!334867))))

(assert (=> bs!1523238 (not (= lambda!334903 lambda!334868))))

(assert (=> b!6143383 true))

(assert (=> b!6143383 true))

(declare-fun bs!1523239 () Bool)

(declare-fun b!6143379 () Bool)

(assert (= bs!1523239 (and b!6143379 b!6142895)))

(declare-fun lambda!334904 () Int)

(assert (=> bs!1523239 (not (= lambda!334904 lambda!334867))))

(assert (=> bs!1523239 (= lambda!334904 lambda!334868)))

(declare-fun bs!1523240 () Bool)

(assert (= bs!1523240 (and b!6143379 b!6143383)))

(assert (=> bs!1523240 (not (= lambda!334904 lambda!334903))))

(assert (=> b!6143379 true))

(assert (=> b!6143379 true))

(declare-fun b!6143375 () Bool)

(declare-fun res!2545289 () Bool)

(declare-fun e!3743813 () Bool)

(assert (=> b!6143375 (=> res!2545289 e!3743813)))

(declare-fun call!510360 () Bool)

(assert (=> b!6143375 (= res!2545289 call!510360)))

(declare-fun e!3743812 () Bool)

(assert (=> b!6143375 (= e!3743812 e!3743813)))

(declare-fun d!1924729 () Bool)

(declare-fun c!1105186 () Bool)

(assert (=> d!1924729 (= c!1105186 ((_ is EmptyExpr!16087) r!7292))))

(declare-fun e!3743816 () Bool)

(assert (=> d!1924729 (= (matchRSpec!3188 r!7292 s!2326) e!3743816)))

(declare-fun b!6143376 () Bool)

(declare-fun e!3743811 () Bool)

(assert (=> b!6143376 (= e!3743816 e!3743811)))

(declare-fun res!2545287 () Bool)

(assert (=> b!6143376 (= res!2545287 (not ((_ is EmptyLang!16087) r!7292)))))

(assert (=> b!6143376 (=> (not res!2545287) (not e!3743811))))

(declare-fun b!6143377 () Bool)

(assert (=> b!6143377 (= e!3743816 call!510360)))

(declare-fun bm!510355 () Bool)

(assert (=> bm!510355 (= call!510360 (isEmpty!36392 s!2326))))

(declare-fun b!6143378 () Bool)

(declare-fun e!3743817 () Bool)

(assert (=> b!6143378 (= e!3743817 (= s!2326 (Cons!64437 (c!1105061 r!7292) Nil!64437)))))

(declare-fun call!510361 () Bool)

(assert (=> b!6143379 (= e!3743812 call!510361)))

(declare-fun b!6143380 () Bool)

(declare-fun e!3743814 () Bool)

(assert (=> b!6143380 (= e!3743814 e!3743812)))

(declare-fun c!1105185 () Bool)

(assert (=> b!6143380 (= c!1105185 ((_ is Star!16087) r!7292))))

(declare-fun b!6143381 () Bool)

(declare-fun c!1105188 () Bool)

(assert (=> b!6143381 (= c!1105188 ((_ is Union!16087) r!7292))))

(assert (=> b!6143381 (= e!3743817 e!3743814)))

(declare-fun bm!510356 () Bool)

(assert (=> bm!510356 (= call!510361 (Exists!3157 (ite c!1105185 lambda!334903 lambda!334904)))))

(declare-fun b!6143382 () Bool)

(declare-fun e!3743815 () Bool)

(assert (=> b!6143382 (= e!3743815 (matchRSpec!3188 (regTwo!32687 r!7292) s!2326))))

(assert (=> b!6143383 (= e!3743813 call!510361)))

(declare-fun b!6143384 () Bool)

(declare-fun c!1105187 () Bool)

(assert (=> b!6143384 (= c!1105187 ((_ is ElementMatch!16087) r!7292))))

(assert (=> b!6143384 (= e!3743811 e!3743817)))

(declare-fun b!6143385 () Bool)

(assert (=> b!6143385 (= e!3743814 e!3743815)))

(declare-fun res!2545288 () Bool)

(assert (=> b!6143385 (= res!2545288 (matchRSpec!3188 (regOne!32687 r!7292) s!2326))))

(assert (=> b!6143385 (=> res!2545288 e!3743815)))

(assert (= (and d!1924729 c!1105186) b!6143377))

(assert (= (and d!1924729 (not c!1105186)) b!6143376))

(assert (= (and b!6143376 res!2545287) b!6143384))

(assert (= (and b!6143384 c!1105187) b!6143378))

(assert (= (and b!6143384 (not c!1105187)) b!6143381))

(assert (= (and b!6143381 c!1105188) b!6143385))

(assert (= (and b!6143381 (not c!1105188)) b!6143380))

(assert (= (and b!6143385 (not res!2545288)) b!6143382))

(assert (= (and b!6143380 c!1105185) b!6143375))

(assert (= (and b!6143380 (not c!1105185)) b!6143379))

(assert (= (and b!6143375 (not res!2545289)) b!6143383))

(assert (= (or b!6143383 b!6143379) bm!510356))

(assert (= (or b!6143377 b!6143375) bm!510355))

(declare-fun m!6984320 () Bool)

(assert (=> bm!510355 m!6984320))

(declare-fun m!6984322 () Bool)

(assert (=> bm!510356 m!6984322))

(declare-fun m!6984324 () Bool)

(assert (=> b!6143382 m!6984324))

(declare-fun m!6984326 () Bool)

(assert (=> b!6143385 m!6984326))

(assert (=> b!6142912 d!1924729))

(declare-fun b!6143414 () Bool)

(declare-fun res!2545306 () Bool)

(declare-fun e!3743833 () Bool)

(assert (=> b!6143414 (=> res!2545306 e!3743833)))

(declare-fun e!3743832 () Bool)

(assert (=> b!6143414 (= res!2545306 e!3743832)))

(declare-fun res!2545310 () Bool)

(assert (=> b!6143414 (=> (not res!2545310) (not e!3743832))))

(declare-fun lt!2333452 () Bool)

(assert (=> b!6143414 (= res!2545310 lt!2333452)))

(declare-fun b!6143415 () Bool)

(declare-fun res!2545307 () Bool)

(assert (=> b!6143415 (=> res!2545307 e!3743833)))

(assert (=> b!6143415 (= res!2545307 (not ((_ is ElementMatch!16087) r!7292)))))

(declare-fun e!3743838 () Bool)

(assert (=> b!6143415 (= e!3743838 e!3743833)))

(declare-fun b!6143416 () Bool)

(declare-fun e!3743835 () Bool)

(assert (=> b!6143416 (= e!3743833 e!3743835)))

(declare-fun res!2545308 () Bool)

(assert (=> b!6143416 (=> (not res!2545308) (not e!3743835))))

(assert (=> b!6143416 (= res!2545308 (not lt!2333452))))

(declare-fun b!6143417 () Bool)

(declare-fun e!3743836 () Bool)

(assert (=> b!6143417 (= e!3743835 e!3743836)))

(declare-fun res!2545309 () Bool)

(assert (=> b!6143417 (=> res!2545309 e!3743836)))

(declare-fun call!510364 () Bool)

(assert (=> b!6143417 (= res!2545309 call!510364)))

(declare-fun b!6143418 () Bool)

(declare-fun res!2545311 () Bool)

(assert (=> b!6143418 (=> (not res!2545311) (not e!3743832))))

(assert (=> b!6143418 (= res!2545311 (isEmpty!36392 (tail!11780 s!2326)))))

(declare-fun b!6143419 () Bool)

(declare-fun e!3743834 () Bool)

(assert (=> b!6143419 (= e!3743834 e!3743838)))

(declare-fun c!1105195 () Bool)

(assert (=> b!6143419 (= c!1105195 ((_ is EmptyLang!16087) r!7292))))

(declare-fun b!6143420 () Bool)

(assert (=> b!6143420 (= e!3743838 (not lt!2333452))))

(declare-fun d!1924731 () Bool)

(assert (=> d!1924731 e!3743834))

(declare-fun c!1105196 () Bool)

(assert (=> d!1924731 (= c!1105196 ((_ is EmptyExpr!16087) r!7292))))

(declare-fun e!3743837 () Bool)

(assert (=> d!1924731 (= lt!2333452 e!3743837)))

(declare-fun c!1105197 () Bool)

(assert (=> d!1924731 (= c!1105197 (isEmpty!36392 s!2326))))

(assert (=> d!1924731 (validRegex!7823 r!7292)))

(assert (=> d!1924731 (= (matchR!8270 r!7292 s!2326) lt!2333452)))

(declare-fun bm!510359 () Bool)

(assert (=> bm!510359 (= call!510364 (isEmpty!36392 s!2326))))

(declare-fun b!6143421 () Bool)

(assert (=> b!6143421 (= e!3743836 (not (= (head!12695 s!2326) (c!1105061 r!7292))))))

(declare-fun b!6143422 () Bool)

(assert (=> b!6143422 (= e!3743837 (nullable!6080 r!7292))))

(declare-fun b!6143423 () Bool)

(assert (=> b!6143423 (= e!3743834 (= lt!2333452 call!510364))))

(declare-fun b!6143424 () Bool)

(assert (=> b!6143424 (= e!3743832 (= (head!12695 s!2326) (c!1105061 r!7292)))))

(declare-fun b!6143425 () Bool)

(declare-fun res!2545313 () Bool)

(assert (=> b!6143425 (=> res!2545313 e!3743836)))

(assert (=> b!6143425 (= res!2545313 (not (isEmpty!36392 (tail!11780 s!2326))))))

(declare-fun b!6143426 () Bool)

(declare-fun derivativeStep!4807 (Regex!16087 C!32444) Regex!16087)

(assert (=> b!6143426 (= e!3743837 (matchR!8270 (derivativeStep!4807 r!7292 (head!12695 s!2326)) (tail!11780 s!2326)))))

(declare-fun b!6143427 () Bool)

(declare-fun res!2545312 () Bool)

(assert (=> b!6143427 (=> (not res!2545312) (not e!3743832))))

(assert (=> b!6143427 (= res!2545312 (not call!510364))))

(assert (= (and d!1924731 c!1105197) b!6143422))

(assert (= (and d!1924731 (not c!1105197)) b!6143426))

(assert (= (and d!1924731 c!1105196) b!6143423))

(assert (= (and d!1924731 (not c!1105196)) b!6143419))

(assert (= (and b!6143419 c!1105195) b!6143420))

(assert (= (and b!6143419 (not c!1105195)) b!6143415))

(assert (= (and b!6143415 (not res!2545307)) b!6143414))

(assert (= (and b!6143414 res!2545310) b!6143427))

(assert (= (and b!6143427 res!2545312) b!6143418))

(assert (= (and b!6143418 res!2545311) b!6143424))

(assert (= (and b!6143414 (not res!2545306)) b!6143416))

(assert (= (and b!6143416 res!2545308) b!6143417))

(assert (= (and b!6143417 (not res!2545309)) b!6143425))

(assert (= (and b!6143425 (not res!2545313)) b!6143421))

(assert (= (or b!6143423 b!6143417 b!6143427) bm!510359))

(declare-fun m!6984328 () Bool)

(assert (=> b!6143426 m!6984328))

(assert (=> b!6143426 m!6984328))

(declare-fun m!6984330 () Bool)

(assert (=> b!6143426 m!6984330))

(declare-fun m!6984332 () Bool)

(assert (=> b!6143426 m!6984332))

(assert (=> b!6143426 m!6984330))

(assert (=> b!6143426 m!6984332))

(declare-fun m!6984334 () Bool)

(assert (=> b!6143426 m!6984334))

(assert (=> d!1924731 m!6984320))

(assert (=> d!1924731 m!6984022))

(assert (=> b!6143418 m!6984332))

(assert (=> b!6143418 m!6984332))

(declare-fun m!6984336 () Bool)

(assert (=> b!6143418 m!6984336))

(assert (=> b!6143421 m!6984328))

(assert (=> bm!510359 m!6984320))

(assert (=> b!6143425 m!6984332))

(assert (=> b!6143425 m!6984332))

(assert (=> b!6143425 m!6984336))

(assert (=> b!6143424 m!6984328))

(declare-fun m!6984338 () Bool)

(assert (=> b!6143422 m!6984338))

(assert (=> b!6142912 d!1924731))

(declare-fun d!1924733 () Bool)

(assert (=> d!1924733 (= (matchR!8270 r!7292 s!2326) (matchRSpec!3188 r!7292 s!2326))))

(declare-fun lt!2333455 () Unit!157503)

(declare-fun choose!45659 (Regex!16087 List!64561) Unit!157503)

(assert (=> d!1924733 (= lt!2333455 (choose!45659 r!7292 s!2326))))

(assert (=> d!1924733 (validRegex!7823 r!7292)))

(assert (=> d!1924733 (= (mainMatchTheorem!3188 r!7292 s!2326) lt!2333455)))

(declare-fun bs!1523241 () Bool)

(assert (= bs!1523241 d!1924733))

(assert (=> bs!1523241 m!6983978))

(assert (=> bs!1523241 m!6983976))

(declare-fun m!6984340 () Bool)

(assert (=> bs!1523241 m!6984340))

(assert (=> bs!1523241 m!6984022))

(assert (=> b!6142912 d!1924733))

(declare-fun d!1924735 () Bool)

(assert (=> d!1924735 (= (isEmpty!36388 (t!378043 zl!343)) ((_ is Nil!64438) (t!378043 zl!343)))))

(assert (=> b!6142901 d!1924735))

(declare-fun d!1924737 () Bool)

(declare-fun c!1105198 () Bool)

(assert (=> d!1924737 (= c!1105198 (isEmpty!36392 (t!378042 s!2326)))))

(declare-fun e!3743839 () Bool)

(assert (=> d!1924737 (= (matchZipper!2099 lt!2333394 (t!378042 s!2326)) e!3743839)))

(declare-fun b!6143428 () Bool)

(assert (=> b!6143428 (= e!3743839 (nullableZipper!1868 lt!2333394))))

(declare-fun b!6143429 () Bool)

(assert (=> b!6143429 (= e!3743839 (matchZipper!2099 (derivationStepZipper!2060 lt!2333394 (head!12695 (t!378042 s!2326))) (tail!11780 (t!378042 s!2326))))))

(assert (= (and d!1924737 c!1105198) b!6143428))

(assert (= (and d!1924737 (not c!1105198)) b!6143429))

(assert (=> d!1924737 m!6984296))

(declare-fun m!6984342 () Bool)

(assert (=> b!6143428 m!6984342))

(assert (=> b!6143429 m!6984300))

(assert (=> b!6143429 m!6984300))

(declare-fun m!6984344 () Bool)

(assert (=> b!6143429 m!6984344))

(assert (=> b!6143429 m!6984304))

(assert (=> b!6143429 m!6984344))

(assert (=> b!6143429 m!6984304))

(declare-fun m!6984346 () Bool)

(assert (=> b!6143429 m!6984346))

(assert (=> b!6142898 d!1924737))

(declare-fun d!1924739 () Bool)

(declare-fun lambda!334907 () Int)

(declare-fun forall!15208 (List!64560 Int) Bool)

(assert (=> d!1924739 (= (inv!83464 lt!2333388) (forall!15208 (exprs!5971 lt!2333388) lambda!334907))))

(declare-fun bs!1523242 () Bool)

(assert (= bs!1523242 d!1924739))

(declare-fun m!6984348 () Bool)

(assert (=> bs!1523242 m!6984348))

(assert (=> b!6142919 d!1924739))

(declare-fun d!1924741 () Bool)

(declare-fun c!1105199 () Bool)

(assert (=> d!1924741 (= c!1105199 (isEmpty!36392 (t!378042 s!2326)))))

(declare-fun e!3743840 () Bool)

(assert (=> d!1924741 (= (matchZipper!2099 lt!2333386 (t!378042 s!2326)) e!3743840)))

(declare-fun b!6143430 () Bool)

(assert (=> b!6143430 (= e!3743840 (nullableZipper!1868 lt!2333386))))

(declare-fun b!6143431 () Bool)

(assert (=> b!6143431 (= e!3743840 (matchZipper!2099 (derivationStepZipper!2060 lt!2333386 (head!12695 (t!378042 s!2326))) (tail!11780 (t!378042 s!2326))))))

(assert (= (and d!1924741 c!1105199) b!6143430))

(assert (= (and d!1924741 (not c!1105199)) b!6143431))

(assert (=> d!1924741 m!6984296))

(declare-fun m!6984350 () Bool)

(assert (=> b!6143430 m!6984350))

(assert (=> b!6143431 m!6984300))

(assert (=> b!6143431 m!6984300))

(declare-fun m!6984352 () Bool)

(assert (=> b!6143431 m!6984352))

(assert (=> b!6143431 m!6984304))

(assert (=> b!6143431 m!6984352))

(assert (=> b!6143431 m!6984304))

(declare-fun m!6984354 () Bool)

(assert (=> b!6143431 m!6984354))

(assert (=> b!6142910 d!1924741))

(declare-fun bs!1523243 () Bool)

(declare-fun d!1924743 () Bool)

(assert (= bs!1523243 (and d!1924743 d!1924739)))

(declare-fun lambda!334910 () Int)

(assert (=> bs!1523243 (= lambda!334910 lambda!334907)))

(declare-fun b!6143452 () Bool)

(declare-fun e!3743853 () Regex!16087)

(assert (=> b!6143452 (= e!3743853 (h!70884 (unfocusZipperList!1508 zl!343)))))

(declare-fun b!6143453 () Bool)

(declare-fun e!3743855 () Bool)

(declare-fun e!3743854 () Bool)

(assert (=> b!6143453 (= e!3743855 e!3743854)))

(declare-fun c!1105211 () Bool)

(assert (=> b!6143453 (= c!1105211 (isEmpty!36389 (unfocusZipperList!1508 zl!343)))))

(declare-fun b!6143454 () Bool)

(declare-fun e!3743856 () Bool)

(assert (=> b!6143454 (= e!3743856 (isEmpty!36389 (t!378041 (unfocusZipperList!1508 zl!343))))))

(declare-fun b!6143455 () Bool)

(declare-fun e!3743857 () Regex!16087)

(assert (=> b!6143455 (= e!3743857 (Union!16087 (h!70884 (unfocusZipperList!1508 zl!343)) (generalisedUnion!1931 (t!378041 (unfocusZipperList!1508 zl!343)))))))

(declare-fun b!6143456 () Bool)

(declare-fun e!3743858 () Bool)

(declare-fun lt!2333458 () Regex!16087)

(declare-fun head!12696 (List!64560) Regex!16087)

(assert (=> b!6143456 (= e!3743858 (= lt!2333458 (head!12696 (unfocusZipperList!1508 zl!343))))))

(declare-fun b!6143457 () Bool)

(assert (=> b!6143457 (= e!3743853 e!3743857)))

(declare-fun c!1105208 () Bool)

(assert (=> b!6143457 (= c!1105208 ((_ is Cons!64436) (unfocusZipperList!1508 zl!343)))))

(declare-fun b!6143458 () Bool)

(declare-fun isEmptyLang!1514 (Regex!16087) Bool)

(assert (=> b!6143458 (= e!3743854 (isEmptyLang!1514 lt!2333458))))

(declare-fun b!6143459 () Bool)

(assert (=> b!6143459 (= e!3743857 EmptyLang!16087)))

(declare-fun b!6143460 () Bool)

(declare-fun isUnion!944 (Regex!16087) Bool)

(assert (=> b!6143460 (= e!3743858 (isUnion!944 lt!2333458))))

(declare-fun b!6143461 () Bool)

(assert (=> b!6143461 (= e!3743854 e!3743858)))

(declare-fun c!1105210 () Bool)

(declare-fun tail!11781 (List!64560) List!64560)

(assert (=> b!6143461 (= c!1105210 (isEmpty!36389 (tail!11781 (unfocusZipperList!1508 zl!343))))))

(assert (=> d!1924743 e!3743855))

(declare-fun res!2545319 () Bool)

(assert (=> d!1924743 (=> (not res!2545319) (not e!3743855))))

(assert (=> d!1924743 (= res!2545319 (validRegex!7823 lt!2333458))))

(assert (=> d!1924743 (= lt!2333458 e!3743853)))

(declare-fun c!1105209 () Bool)

(assert (=> d!1924743 (= c!1105209 e!3743856)))

(declare-fun res!2545318 () Bool)

(assert (=> d!1924743 (=> (not res!2545318) (not e!3743856))))

(assert (=> d!1924743 (= res!2545318 ((_ is Cons!64436) (unfocusZipperList!1508 zl!343)))))

(assert (=> d!1924743 (forall!15208 (unfocusZipperList!1508 zl!343) lambda!334910)))

(assert (=> d!1924743 (= (generalisedUnion!1931 (unfocusZipperList!1508 zl!343)) lt!2333458)))

(assert (= (and d!1924743 res!2545318) b!6143454))

(assert (= (and d!1924743 c!1105209) b!6143452))

(assert (= (and d!1924743 (not c!1105209)) b!6143457))

(assert (= (and b!6143457 c!1105208) b!6143455))

(assert (= (and b!6143457 (not c!1105208)) b!6143459))

(assert (= (and d!1924743 res!2545319) b!6143453))

(assert (= (and b!6143453 c!1105211) b!6143458))

(assert (= (and b!6143453 (not c!1105211)) b!6143461))

(assert (= (and b!6143461 c!1105210) b!6143456))

(assert (= (and b!6143461 (not c!1105210)) b!6143460))

(assert (=> b!6143461 m!6983996))

(declare-fun m!6984356 () Bool)

(assert (=> b!6143461 m!6984356))

(assert (=> b!6143461 m!6984356))

(declare-fun m!6984358 () Bool)

(assert (=> b!6143461 m!6984358))

(declare-fun m!6984360 () Bool)

(assert (=> b!6143455 m!6984360))

(assert (=> b!6143453 m!6983996))

(declare-fun m!6984362 () Bool)

(assert (=> b!6143453 m!6984362))

(declare-fun m!6984364 () Bool)

(assert (=> d!1924743 m!6984364))

(assert (=> d!1924743 m!6983996))

(declare-fun m!6984366 () Bool)

(assert (=> d!1924743 m!6984366))

(declare-fun m!6984368 () Bool)

(assert (=> b!6143460 m!6984368))

(declare-fun m!6984370 () Bool)

(assert (=> b!6143454 m!6984370))

(declare-fun m!6984372 () Bool)

(assert (=> b!6143458 m!6984372))

(assert (=> b!6143456 m!6983996))

(declare-fun m!6984374 () Bool)

(assert (=> b!6143456 m!6984374))

(assert (=> b!6142899 d!1924743))

(declare-fun bs!1523244 () Bool)

(declare-fun d!1924745 () Bool)

(assert (= bs!1523244 (and d!1924745 d!1924739)))

(declare-fun lambda!334913 () Int)

(assert (=> bs!1523244 (= lambda!334913 lambda!334907)))

(declare-fun bs!1523245 () Bool)

(assert (= bs!1523245 (and d!1924745 d!1924743)))

(assert (=> bs!1523245 (= lambda!334913 lambda!334910)))

(declare-fun lt!2333461 () List!64560)

(assert (=> d!1924745 (forall!15208 lt!2333461 lambda!334913)))

(declare-fun e!3743861 () List!64560)

(assert (=> d!1924745 (= lt!2333461 e!3743861)))

(declare-fun c!1105214 () Bool)

(assert (=> d!1924745 (= c!1105214 ((_ is Cons!64438) zl!343))))

(assert (=> d!1924745 (= (unfocusZipperList!1508 zl!343) lt!2333461)))

(declare-fun b!6143466 () Bool)

(assert (=> b!6143466 (= e!3743861 (Cons!64436 (generalisedConcat!1684 (exprs!5971 (h!70886 zl!343))) (unfocusZipperList!1508 (t!378043 zl!343))))))

(declare-fun b!6143467 () Bool)

(assert (=> b!6143467 (= e!3743861 Nil!64436)))

(assert (= (and d!1924745 c!1105214) b!6143466))

(assert (= (and d!1924745 (not c!1105214)) b!6143467))

(declare-fun m!6984376 () Bool)

(assert (=> d!1924745 m!6984376))

(assert (=> b!6143466 m!6983970))

(declare-fun m!6984378 () Bool)

(assert (=> b!6143466 m!6984378))

(assert (=> b!6142899 d!1924745))

(declare-fun d!1924747 () Bool)

(declare-fun nullableFct!2044 (Regex!16087) Bool)

(assert (=> d!1924747 (= (nullable!6080 (h!70884 (exprs!5971 (h!70886 zl!343)))) (nullableFct!2044 (h!70884 (exprs!5971 (h!70886 zl!343)))))))

(declare-fun bs!1523246 () Bool)

(assert (= bs!1523246 d!1924747))

(declare-fun m!6984380 () Bool)

(assert (=> bs!1523246 m!6984380))

(assert (=> b!6142915 d!1924747))

(declare-fun call!510367 () (InoxSet Context!10942))

(declare-fun b!6143478 () Bool)

(declare-fun e!3743868 () (InoxSet Context!10942))

(assert (=> b!6143478 (= e!3743868 ((_ map or) call!510367 (derivationStepZipperUp!1261 (Context!10943 (t!378041 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343)))))))) (h!70885 s!2326))))))

(declare-fun b!6143479 () Bool)

(declare-fun e!3743869 () (InoxSet Context!10942))

(assert (=> b!6143479 (= e!3743869 call!510367)))

(declare-fun b!6143480 () Bool)

(declare-fun e!3743870 () Bool)

(assert (=> b!6143480 (= e!3743870 (nullable!6080 (h!70884 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343)))))))))))

(declare-fun bm!510362 () Bool)

(assert (=> bm!510362 (= call!510367 (derivationStepZipperDown!1335 (h!70884 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343))))))) (Context!10943 (t!378041 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343)))))))) (h!70885 s!2326)))))

(declare-fun b!6143481 () Bool)

(assert (=> b!6143481 (= e!3743869 ((as const (Array Context!10942 Bool)) false))))

(declare-fun b!6143482 () Bool)

(assert (=> b!6143482 (= e!3743868 e!3743869)))

(declare-fun c!1105220 () Bool)

(assert (=> b!6143482 (= c!1105220 ((_ is Cons!64436) (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343))))))))))

(declare-fun d!1924749 () Bool)

(declare-fun c!1105219 () Bool)

(assert (=> d!1924749 (= c!1105219 e!3743870)))

(declare-fun res!2545322 () Bool)

(assert (=> d!1924749 (=> (not res!2545322) (not e!3743870))))

(assert (=> d!1924749 (= res!2545322 ((_ is Cons!64436) (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343))))))))))

(assert (=> d!1924749 (= (derivationStepZipperUp!1261 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343))))) (h!70885 s!2326)) e!3743868)))

(assert (= (and d!1924749 res!2545322) b!6143480))

(assert (= (and d!1924749 c!1105219) b!6143478))

(assert (= (and d!1924749 (not c!1105219)) b!6143482))

(assert (= (and b!6143482 c!1105220) b!6143479))

(assert (= (and b!6143482 (not c!1105220)) b!6143481))

(assert (= (or b!6143478 b!6143479) bm!510362))

(declare-fun m!6984382 () Bool)

(assert (=> b!6143478 m!6984382))

(declare-fun m!6984384 () Bool)

(assert (=> b!6143480 m!6984384))

(declare-fun m!6984386 () Bool)

(assert (=> bm!510362 m!6984386))

(assert (=> b!6142915 d!1924749))

(declare-fun bm!510375 () Bool)

(declare-fun c!1105233 () Bool)

(declare-fun call!510381 () List!64560)

(declare-fun call!510385 () (InoxSet Context!10942))

(assert (=> bm!510375 (= call!510385 (derivationStepZipperDown!1335 (ite c!1105233 (regTwo!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343))))) (ite c!1105233 lt!2333388 (Context!10943 call!510381)) (h!70885 s!2326)))))

(declare-fun b!6143505 () Bool)

(declare-fun c!1105234 () Bool)

(assert (=> b!6143505 (= c!1105234 ((_ is Star!16087) (h!70884 (exprs!5971 (h!70886 zl!343)))))))

(declare-fun e!3743888 () (InoxSet Context!10942))

(declare-fun e!3743884 () (InoxSet Context!10942))

(assert (=> b!6143505 (= e!3743888 e!3743884)))

(declare-fun b!6143506 () Bool)

(declare-fun call!510382 () (InoxSet Context!10942))

(assert (=> b!6143506 (= e!3743884 call!510382)))

(declare-fun b!6143507 () Bool)

(declare-fun e!3743886 () (InoxSet Context!10942))

(assert (=> b!6143507 (= e!3743886 e!3743888)))

(declare-fun c!1105232 () Bool)

(assert (=> b!6143507 (= c!1105232 ((_ is Concat!24932) (h!70884 (exprs!5971 (h!70886 zl!343)))))))

(declare-fun b!6143508 () Bool)

(declare-fun c!1105231 () Bool)

(declare-fun e!3743887 () Bool)

(assert (=> b!6143508 (= c!1105231 e!3743887)))

(declare-fun res!2545325 () Bool)

(assert (=> b!6143508 (=> (not res!2545325) (not e!3743887))))

(assert (=> b!6143508 (= res!2545325 ((_ is Concat!24932) (h!70884 (exprs!5971 (h!70886 zl!343)))))))

(declare-fun e!3743885 () (InoxSet Context!10942))

(assert (=> b!6143508 (= e!3743885 e!3743886)))

(declare-fun b!6143509 () Bool)

(assert (=> b!6143509 (= e!3743884 ((as const (Array Context!10942 Bool)) false))))

(declare-fun b!6143510 () Bool)

(declare-fun e!3743883 () (InoxSet Context!10942))

(assert (=> b!6143510 (= e!3743883 e!3743885)))

(assert (=> b!6143510 (= c!1105233 ((_ is Union!16087) (h!70884 (exprs!5971 (h!70886 zl!343)))))))

(declare-fun b!6143511 () Bool)

(declare-fun call!510383 () (InoxSet Context!10942))

(assert (=> b!6143511 (= e!3743886 ((_ map or) call!510385 call!510383))))

(declare-fun bm!510376 () Bool)

(declare-fun call!510380 () (InoxSet Context!10942))

(assert (=> bm!510376 (= call!510383 call!510380)))

(declare-fun b!6143512 () Bool)

(assert (=> b!6143512 (= e!3743888 call!510382)))

(declare-fun bm!510378 () Bool)

(assert (=> bm!510378 (= call!510382 call!510383)))

(declare-fun b!6143513 () Bool)

(assert (=> b!6143513 (= e!3743883 (store ((as const (Array Context!10942 Bool)) false) lt!2333388 true))))

(declare-fun bm!510379 () Bool)

(declare-fun call!510384 () List!64560)

(assert (=> bm!510379 (= call!510384 call!510381)))

(declare-fun b!6143514 () Bool)

(assert (=> b!6143514 (= e!3743887 (nullable!6080 (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343))))))))

(declare-fun b!6143515 () Bool)

(assert (=> b!6143515 (= e!3743885 ((_ map or) call!510380 call!510385))))

(declare-fun bm!510380 () Bool)

(declare-fun $colon$colon!1964 (List!64560 Regex!16087) List!64560)

(assert (=> bm!510380 (= call!510381 ($colon$colon!1964 (exprs!5971 lt!2333388) (ite (or c!1105231 c!1105232) (regTwo!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (h!70884 (exprs!5971 (h!70886 zl!343))))))))

(declare-fun d!1924751 () Bool)

(declare-fun c!1105235 () Bool)

(assert (=> d!1924751 (= c!1105235 (and ((_ is ElementMatch!16087) (h!70884 (exprs!5971 (h!70886 zl!343)))) (= (c!1105061 (h!70884 (exprs!5971 (h!70886 zl!343)))) (h!70885 s!2326))))))

(assert (=> d!1924751 (= (derivationStepZipperDown!1335 (h!70884 (exprs!5971 (h!70886 zl!343))) lt!2333388 (h!70885 s!2326)) e!3743883)))

(declare-fun bm!510377 () Bool)

(assert (=> bm!510377 (= call!510380 (derivationStepZipperDown!1335 (ite c!1105233 (regOne!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105231 (regTwo!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105232 (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (reg!16416 (h!70884 (exprs!5971 (h!70886 zl!343))))))) (ite (or c!1105233 c!1105231) lt!2333388 (Context!10943 call!510384)) (h!70885 s!2326)))))

(assert (= (and d!1924751 c!1105235) b!6143513))

(assert (= (and d!1924751 (not c!1105235)) b!6143510))

(assert (= (and b!6143510 c!1105233) b!6143515))

(assert (= (and b!6143510 (not c!1105233)) b!6143508))

(assert (= (and b!6143508 res!2545325) b!6143514))

(assert (= (and b!6143508 c!1105231) b!6143511))

(assert (= (and b!6143508 (not c!1105231)) b!6143507))

(assert (= (and b!6143507 c!1105232) b!6143512))

(assert (= (and b!6143507 (not c!1105232)) b!6143505))

(assert (= (and b!6143505 c!1105234) b!6143506))

(assert (= (and b!6143505 (not c!1105234)) b!6143509))

(assert (= (or b!6143512 b!6143506) bm!510379))

(assert (= (or b!6143512 b!6143506) bm!510378))

(assert (= (or b!6143511 bm!510379) bm!510380))

(assert (= (or b!6143511 bm!510378) bm!510376))

(assert (= (or b!6143515 b!6143511) bm!510375))

(assert (= (or b!6143515 bm!510376) bm!510377))

(declare-fun m!6984388 () Bool)

(assert (=> bm!510375 m!6984388))

(declare-fun m!6984390 () Bool)

(assert (=> bm!510377 m!6984390))

(declare-fun m!6984392 () Bool)

(assert (=> b!6143513 m!6984392))

(declare-fun m!6984394 () Bool)

(assert (=> b!6143514 m!6984394))

(declare-fun m!6984396 () Bool)

(assert (=> bm!510380 m!6984396))

(assert (=> b!6142915 d!1924751))

(declare-fun d!1924753 () Bool)

(declare-fun dynLambda!25394 (Int Context!10942) (InoxSet Context!10942))

(assert (=> d!1924753 (= (flatMap!1592 z!1189 lambda!334869) (dynLambda!25394 lambda!334869 (h!70886 zl!343)))))

(declare-fun lt!2333464 () Unit!157503)

(declare-fun choose!45660 ((InoxSet Context!10942) Context!10942 Int) Unit!157503)

(assert (=> d!1924753 (= lt!2333464 (choose!45660 z!1189 (h!70886 zl!343) lambda!334869))))

(assert (=> d!1924753 (= z!1189 (store ((as const (Array Context!10942 Bool)) false) (h!70886 zl!343) true))))

(assert (=> d!1924753 (= (lemmaFlatMapOnSingletonSet!1118 z!1189 (h!70886 zl!343) lambda!334869) lt!2333464)))

(declare-fun b_lambda!233817 () Bool)

(assert (=> (not b_lambda!233817) (not d!1924753)))

(declare-fun bs!1523247 () Bool)

(assert (= bs!1523247 d!1924753))

(assert (=> bs!1523247 m!6984004))

(declare-fun m!6984398 () Bool)

(assert (=> bs!1523247 m!6984398))

(declare-fun m!6984400 () Bool)

(assert (=> bs!1523247 m!6984400))

(declare-fun m!6984402 () Bool)

(assert (=> bs!1523247 m!6984402))

(assert (=> b!6142915 d!1924753))

(declare-fun b!6143516 () Bool)

(declare-fun call!510386 () (InoxSet Context!10942))

(declare-fun e!3743889 () (InoxSet Context!10942))

(assert (=> b!6143516 (= e!3743889 ((_ map or) call!510386 (derivationStepZipperUp!1261 (Context!10943 (t!378041 (exprs!5971 lt!2333388))) (h!70885 s!2326))))))

(declare-fun b!6143517 () Bool)

(declare-fun e!3743890 () (InoxSet Context!10942))

(assert (=> b!6143517 (= e!3743890 call!510386)))

(declare-fun b!6143518 () Bool)

(declare-fun e!3743891 () Bool)

(assert (=> b!6143518 (= e!3743891 (nullable!6080 (h!70884 (exprs!5971 lt!2333388))))))

(declare-fun bm!510381 () Bool)

(assert (=> bm!510381 (= call!510386 (derivationStepZipperDown!1335 (h!70884 (exprs!5971 lt!2333388)) (Context!10943 (t!378041 (exprs!5971 lt!2333388))) (h!70885 s!2326)))))

(declare-fun b!6143519 () Bool)

(assert (=> b!6143519 (= e!3743890 ((as const (Array Context!10942 Bool)) false))))

(declare-fun b!6143520 () Bool)

(assert (=> b!6143520 (= e!3743889 e!3743890)))

(declare-fun c!1105237 () Bool)

(assert (=> b!6143520 (= c!1105237 ((_ is Cons!64436) (exprs!5971 lt!2333388)))))

(declare-fun d!1924755 () Bool)

(declare-fun c!1105236 () Bool)

(assert (=> d!1924755 (= c!1105236 e!3743891)))

(declare-fun res!2545326 () Bool)

(assert (=> d!1924755 (=> (not res!2545326) (not e!3743891))))

(assert (=> d!1924755 (= res!2545326 ((_ is Cons!64436) (exprs!5971 lt!2333388)))))

(assert (=> d!1924755 (= (derivationStepZipperUp!1261 lt!2333388 (h!70885 s!2326)) e!3743889)))

(assert (= (and d!1924755 res!2545326) b!6143518))

(assert (= (and d!1924755 c!1105236) b!6143516))

(assert (= (and d!1924755 (not c!1105236)) b!6143520))

(assert (= (and b!6143520 c!1105237) b!6143517))

(assert (= (and b!6143520 (not c!1105237)) b!6143519))

(assert (= (or b!6143516 b!6143517) bm!510381))

(declare-fun m!6984404 () Bool)

(assert (=> b!6143516 m!6984404))

(declare-fun m!6984406 () Bool)

(assert (=> b!6143518 m!6984406))

(declare-fun m!6984408 () Bool)

(assert (=> bm!510381 m!6984408))

(assert (=> b!6142915 d!1924755))

(declare-fun d!1924757 () Bool)

(declare-fun choose!45661 ((InoxSet Context!10942) Int) (InoxSet Context!10942))

(assert (=> d!1924757 (= (flatMap!1592 z!1189 lambda!334869) (choose!45661 z!1189 lambda!334869))))

(declare-fun bs!1523248 () Bool)

(assert (= bs!1523248 d!1924757))

(declare-fun m!6984410 () Bool)

(assert (=> bs!1523248 m!6984410))

(assert (=> b!6142915 d!1924757))

(declare-fun call!510387 () (InoxSet Context!10942))

(declare-fun b!6143521 () Bool)

(declare-fun e!3743892 () (InoxSet Context!10942))

(assert (=> b!6143521 (= e!3743892 ((_ map or) call!510387 (derivationStepZipperUp!1261 (Context!10943 (t!378041 (exprs!5971 (h!70886 zl!343)))) (h!70885 s!2326))))))

(declare-fun b!6143522 () Bool)

(declare-fun e!3743893 () (InoxSet Context!10942))

(assert (=> b!6143522 (= e!3743893 call!510387)))

(declare-fun b!6143523 () Bool)

(declare-fun e!3743894 () Bool)

(assert (=> b!6143523 (= e!3743894 (nullable!6080 (h!70884 (exprs!5971 (h!70886 zl!343)))))))

(declare-fun bm!510382 () Bool)

(assert (=> bm!510382 (= call!510387 (derivationStepZipperDown!1335 (h!70884 (exprs!5971 (h!70886 zl!343))) (Context!10943 (t!378041 (exprs!5971 (h!70886 zl!343)))) (h!70885 s!2326)))))

(declare-fun b!6143524 () Bool)

(assert (=> b!6143524 (= e!3743893 ((as const (Array Context!10942 Bool)) false))))

(declare-fun b!6143525 () Bool)

(assert (=> b!6143525 (= e!3743892 e!3743893)))

(declare-fun c!1105239 () Bool)

(assert (=> b!6143525 (= c!1105239 ((_ is Cons!64436) (exprs!5971 (h!70886 zl!343))))))

(declare-fun d!1924759 () Bool)

(declare-fun c!1105238 () Bool)

(assert (=> d!1924759 (= c!1105238 e!3743894)))

(declare-fun res!2545327 () Bool)

(assert (=> d!1924759 (=> (not res!2545327) (not e!3743894))))

(assert (=> d!1924759 (= res!2545327 ((_ is Cons!64436) (exprs!5971 (h!70886 zl!343))))))

(assert (=> d!1924759 (= (derivationStepZipperUp!1261 (h!70886 zl!343) (h!70885 s!2326)) e!3743892)))

(assert (= (and d!1924759 res!2545327) b!6143523))

(assert (= (and d!1924759 c!1105238) b!6143521))

(assert (= (and d!1924759 (not c!1105238)) b!6143525))

(assert (= (and b!6143525 c!1105239) b!6143522))

(assert (= (and b!6143525 (not c!1105239)) b!6143524))

(assert (= (or b!6143521 b!6143522) bm!510382))

(declare-fun m!6984412 () Bool)

(assert (=> b!6143521 m!6984412))

(assert (=> b!6143523 m!6984012))

(declare-fun m!6984414 () Bool)

(assert (=> bm!510382 m!6984414))

(assert (=> b!6142915 d!1924759))

(declare-fun bs!1523249 () Bool)

(declare-fun d!1924761 () Bool)

(assert (= bs!1523249 (and d!1924761 d!1924739)))

(declare-fun lambda!334914 () Int)

(assert (=> bs!1523249 (= lambda!334914 lambda!334907)))

(declare-fun bs!1523250 () Bool)

(assert (= bs!1523250 (and d!1924761 d!1924743)))

(assert (=> bs!1523250 (= lambda!334914 lambda!334910)))

(declare-fun bs!1523251 () Bool)

(assert (= bs!1523251 (and d!1924761 d!1924745)))

(assert (=> bs!1523251 (= lambda!334914 lambda!334913)))

(assert (=> d!1924761 (= (inv!83464 (h!70886 zl!343)) (forall!15208 (exprs!5971 (h!70886 zl!343)) lambda!334914))))

(declare-fun bs!1523252 () Bool)

(assert (= bs!1523252 d!1924761))

(declare-fun m!6984416 () Bool)

(assert (=> bs!1523252 m!6984416))

(assert (=> b!6142905 d!1924761))

(declare-fun d!1924763 () Bool)

(assert (=> d!1924763 (= (nullable!6080 (regOne!32687 (regOne!32686 r!7292))) (nullableFct!2044 (regOne!32687 (regOne!32686 r!7292))))))

(declare-fun bs!1523253 () Bool)

(assert (= bs!1523253 d!1924763))

(declare-fun m!6984418 () Bool)

(assert (=> bs!1523253 m!6984418))

(assert (=> b!6142906 d!1924763))

(declare-fun d!1924765 () Bool)

(assert (=> d!1924765 (= (flatMap!1592 lt!2333393 lambda!334869) (choose!45661 lt!2333393 lambda!334869))))

(declare-fun bs!1523254 () Bool)

(assert (= bs!1523254 d!1924765))

(declare-fun m!6984420 () Bool)

(assert (=> bs!1523254 m!6984420))

(assert (=> b!6142906 d!1924765))

(declare-fun call!510388 () (InoxSet Context!10942))

(declare-fun b!6143526 () Bool)

(declare-fun e!3743895 () (InoxSet Context!10942))

(assert (=> b!6143526 (= e!3743895 ((_ map or) call!510388 (derivationStepZipperUp!1261 (Context!10943 (t!378041 (exprs!5971 lt!2333391))) (h!70885 s!2326))))))

(declare-fun b!6143527 () Bool)

(declare-fun e!3743896 () (InoxSet Context!10942))

(assert (=> b!6143527 (= e!3743896 call!510388)))

(declare-fun b!6143528 () Bool)

(declare-fun e!3743897 () Bool)

(assert (=> b!6143528 (= e!3743897 (nullable!6080 (h!70884 (exprs!5971 lt!2333391))))))

(declare-fun bm!510383 () Bool)

(assert (=> bm!510383 (= call!510388 (derivationStepZipperDown!1335 (h!70884 (exprs!5971 lt!2333391)) (Context!10943 (t!378041 (exprs!5971 lt!2333391))) (h!70885 s!2326)))))

(declare-fun b!6143529 () Bool)

(assert (=> b!6143529 (= e!3743896 ((as const (Array Context!10942 Bool)) false))))

(declare-fun b!6143530 () Bool)

(assert (=> b!6143530 (= e!3743895 e!3743896)))

(declare-fun c!1105241 () Bool)

(assert (=> b!6143530 (= c!1105241 ((_ is Cons!64436) (exprs!5971 lt!2333391)))))

(declare-fun d!1924767 () Bool)

(declare-fun c!1105240 () Bool)

(assert (=> d!1924767 (= c!1105240 e!3743897)))

(declare-fun res!2545328 () Bool)

(assert (=> d!1924767 (=> (not res!2545328) (not e!3743897))))

(assert (=> d!1924767 (= res!2545328 ((_ is Cons!64436) (exprs!5971 lt!2333391)))))

(assert (=> d!1924767 (= (derivationStepZipperUp!1261 lt!2333391 (h!70885 s!2326)) e!3743895)))

(assert (= (and d!1924767 res!2545328) b!6143528))

(assert (= (and d!1924767 c!1105240) b!6143526))

(assert (= (and d!1924767 (not c!1105240)) b!6143530))

(assert (= (and b!6143530 c!1105241) b!6143527))

(assert (= (and b!6143530 (not c!1105241)) b!6143529))

(assert (= (or b!6143526 b!6143527) bm!510383))

(declare-fun m!6984422 () Bool)

(assert (=> b!6143526 m!6984422))

(declare-fun m!6984424 () Bool)

(assert (=> b!6143528 m!6984424))

(declare-fun m!6984426 () Bool)

(assert (=> bm!510383 m!6984426))

(assert (=> b!6142906 d!1924767))

(declare-fun d!1924769 () Bool)

(assert (=> d!1924769 (= (flatMap!1592 lt!2333393 lambda!334869) (dynLambda!25394 lambda!334869 lt!2333391))))

(declare-fun lt!2333465 () Unit!157503)

(assert (=> d!1924769 (= lt!2333465 (choose!45660 lt!2333393 lt!2333391 lambda!334869))))

(assert (=> d!1924769 (= lt!2333393 (store ((as const (Array Context!10942 Bool)) false) lt!2333391 true))))

(assert (=> d!1924769 (= (lemmaFlatMapOnSingletonSet!1118 lt!2333393 lt!2333391 lambda!334869) lt!2333465)))

(declare-fun b_lambda!233819 () Bool)

(assert (=> (not b_lambda!233819) (not d!1924769)))

(declare-fun bs!1523255 () Bool)

(assert (= bs!1523255 d!1924769))

(assert (=> bs!1523255 m!6984032))

(declare-fun m!6984428 () Bool)

(assert (=> bs!1523255 m!6984428))

(declare-fun m!6984430 () Bool)

(assert (=> bs!1523255 m!6984430))

(assert (=> bs!1523255 m!6984028))

(assert (=> b!6142906 d!1924769))

(declare-fun call!510394 () (InoxSet Context!10942))

(declare-fun bm!510384 () Bool)

(declare-fun call!510390 () List!64560)

(declare-fun c!1105244 () Bool)

(assert (=> bm!510384 (= call!510394 (derivationStepZipperDown!1335 (ite c!1105244 (regTwo!32687 (regTwo!32687 (regOne!32686 r!7292))) (regOne!32686 (regTwo!32687 (regOne!32686 r!7292)))) (ite c!1105244 lt!2333388 (Context!10943 call!510390)) (h!70885 s!2326)))))

(declare-fun b!6143531 () Bool)

(declare-fun c!1105245 () Bool)

(assert (=> b!6143531 (= c!1105245 ((_ is Star!16087) (regTwo!32687 (regOne!32686 r!7292))))))

(declare-fun e!3743903 () (InoxSet Context!10942))

(declare-fun e!3743899 () (InoxSet Context!10942))

(assert (=> b!6143531 (= e!3743903 e!3743899)))

(declare-fun b!6143532 () Bool)

(declare-fun call!510391 () (InoxSet Context!10942))

(assert (=> b!6143532 (= e!3743899 call!510391)))

(declare-fun b!6143533 () Bool)

(declare-fun e!3743901 () (InoxSet Context!10942))

(assert (=> b!6143533 (= e!3743901 e!3743903)))

(declare-fun c!1105243 () Bool)

(assert (=> b!6143533 (= c!1105243 ((_ is Concat!24932) (regTwo!32687 (regOne!32686 r!7292))))))

(declare-fun b!6143534 () Bool)

(declare-fun c!1105242 () Bool)

(declare-fun e!3743902 () Bool)

(assert (=> b!6143534 (= c!1105242 e!3743902)))

(declare-fun res!2545329 () Bool)

(assert (=> b!6143534 (=> (not res!2545329) (not e!3743902))))

(assert (=> b!6143534 (= res!2545329 ((_ is Concat!24932) (regTwo!32687 (regOne!32686 r!7292))))))

(declare-fun e!3743900 () (InoxSet Context!10942))

(assert (=> b!6143534 (= e!3743900 e!3743901)))

(declare-fun b!6143535 () Bool)

(assert (=> b!6143535 (= e!3743899 ((as const (Array Context!10942 Bool)) false))))

(declare-fun b!6143536 () Bool)

(declare-fun e!3743898 () (InoxSet Context!10942))

(assert (=> b!6143536 (= e!3743898 e!3743900)))

(assert (=> b!6143536 (= c!1105244 ((_ is Union!16087) (regTwo!32687 (regOne!32686 r!7292))))))

(declare-fun b!6143537 () Bool)

(declare-fun call!510392 () (InoxSet Context!10942))

(assert (=> b!6143537 (= e!3743901 ((_ map or) call!510394 call!510392))))

(declare-fun bm!510385 () Bool)

(declare-fun call!510389 () (InoxSet Context!10942))

(assert (=> bm!510385 (= call!510392 call!510389)))

(declare-fun b!6143538 () Bool)

(assert (=> b!6143538 (= e!3743903 call!510391)))

(declare-fun bm!510387 () Bool)

(assert (=> bm!510387 (= call!510391 call!510392)))

(declare-fun b!6143539 () Bool)

(assert (=> b!6143539 (= e!3743898 (store ((as const (Array Context!10942 Bool)) false) lt!2333388 true))))

(declare-fun bm!510388 () Bool)

(declare-fun call!510393 () List!64560)

(assert (=> bm!510388 (= call!510393 call!510390)))

(declare-fun b!6143540 () Bool)

(assert (=> b!6143540 (= e!3743902 (nullable!6080 (regOne!32686 (regTwo!32687 (regOne!32686 r!7292)))))))

(declare-fun b!6143541 () Bool)

(assert (=> b!6143541 (= e!3743900 ((_ map or) call!510389 call!510394))))

(declare-fun bm!510389 () Bool)

(assert (=> bm!510389 (= call!510390 ($colon$colon!1964 (exprs!5971 lt!2333388) (ite (or c!1105242 c!1105243) (regTwo!32686 (regTwo!32687 (regOne!32686 r!7292))) (regTwo!32687 (regOne!32686 r!7292)))))))

(declare-fun d!1924771 () Bool)

(declare-fun c!1105246 () Bool)

(assert (=> d!1924771 (= c!1105246 (and ((_ is ElementMatch!16087) (regTwo!32687 (regOne!32686 r!7292))) (= (c!1105061 (regTwo!32687 (regOne!32686 r!7292))) (h!70885 s!2326))))))

(assert (=> d!1924771 (= (derivationStepZipperDown!1335 (regTwo!32687 (regOne!32686 r!7292)) lt!2333388 (h!70885 s!2326)) e!3743898)))

(declare-fun bm!510386 () Bool)

(assert (=> bm!510386 (= call!510389 (derivationStepZipperDown!1335 (ite c!1105244 (regOne!32687 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105242 (regTwo!32686 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105243 (regOne!32686 (regTwo!32687 (regOne!32686 r!7292))) (reg!16416 (regTwo!32687 (regOne!32686 r!7292)))))) (ite (or c!1105244 c!1105242) lt!2333388 (Context!10943 call!510393)) (h!70885 s!2326)))))

(assert (= (and d!1924771 c!1105246) b!6143539))

(assert (= (and d!1924771 (not c!1105246)) b!6143536))

(assert (= (and b!6143536 c!1105244) b!6143541))

(assert (= (and b!6143536 (not c!1105244)) b!6143534))

(assert (= (and b!6143534 res!2545329) b!6143540))

(assert (= (and b!6143534 c!1105242) b!6143537))

(assert (= (and b!6143534 (not c!1105242)) b!6143533))

(assert (= (and b!6143533 c!1105243) b!6143538))

(assert (= (and b!6143533 (not c!1105243)) b!6143531))

(assert (= (and b!6143531 c!1105245) b!6143532))

(assert (= (and b!6143531 (not c!1105245)) b!6143535))

(assert (= (or b!6143538 b!6143532) bm!510388))

(assert (= (or b!6143538 b!6143532) bm!510387))

(assert (= (or b!6143537 bm!510388) bm!510389))

(assert (= (or b!6143537 bm!510387) bm!510385))

(assert (= (or b!6143541 b!6143537) bm!510384))

(assert (= (or b!6143541 bm!510385) bm!510386))

(declare-fun m!6984432 () Bool)

(assert (=> bm!510384 m!6984432))

(declare-fun m!6984434 () Bool)

(assert (=> bm!510386 m!6984434))

(assert (=> b!6143539 m!6984392))

(declare-fun m!6984436 () Bool)

(assert (=> b!6143540 m!6984436))

(declare-fun m!6984438 () Bool)

(assert (=> bm!510389 m!6984438))

(assert (=> b!6142896 d!1924771))

(declare-fun call!510400 () (InoxSet Context!10942))

(declare-fun bm!510390 () Bool)

(declare-fun call!510396 () List!64560)

(declare-fun c!1105249 () Bool)

(assert (=> bm!510390 (= call!510400 (derivationStepZipperDown!1335 (ite c!1105249 (regTwo!32687 (regOne!32687 (regOne!32686 r!7292))) (regOne!32686 (regOne!32687 (regOne!32686 r!7292)))) (ite c!1105249 lt!2333388 (Context!10943 call!510396)) (h!70885 s!2326)))))

(declare-fun b!6143542 () Bool)

(declare-fun c!1105250 () Bool)

(assert (=> b!6143542 (= c!1105250 ((_ is Star!16087) (regOne!32687 (regOne!32686 r!7292))))))

(declare-fun e!3743909 () (InoxSet Context!10942))

(declare-fun e!3743905 () (InoxSet Context!10942))

(assert (=> b!6143542 (= e!3743909 e!3743905)))

(declare-fun b!6143543 () Bool)

(declare-fun call!510397 () (InoxSet Context!10942))

(assert (=> b!6143543 (= e!3743905 call!510397)))

(declare-fun b!6143544 () Bool)

(declare-fun e!3743907 () (InoxSet Context!10942))

(assert (=> b!6143544 (= e!3743907 e!3743909)))

(declare-fun c!1105248 () Bool)

(assert (=> b!6143544 (= c!1105248 ((_ is Concat!24932) (regOne!32687 (regOne!32686 r!7292))))))

(declare-fun b!6143545 () Bool)

(declare-fun c!1105247 () Bool)

(declare-fun e!3743908 () Bool)

(assert (=> b!6143545 (= c!1105247 e!3743908)))

(declare-fun res!2545330 () Bool)

(assert (=> b!6143545 (=> (not res!2545330) (not e!3743908))))

(assert (=> b!6143545 (= res!2545330 ((_ is Concat!24932) (regOne!32687 (regOne!32686 r!7292))))))

(declare-fun e!3743906 () (InoxSet Context!10942))

(assert (=> b!6143545 (= e!3743906 e!3743907)))

(declare-fun b!6143546 () Bool)

(assert (=> b!6143546 (= e!3743905 ((as const (Array Context!10942 Bool)) false))))

(declare-fun b!6143547 () Bool)

(declare-fun e!3743904 () (InoxSet Context!10942))

(assert (=> b!6143547 (= e!3743904 e!3743906)))

(assert (=> b!6143547 (= c!1105249 ((_ is Union!16087) (regOne!32687 (regOne!32686 r!7292))))))

(declare-fun b!6143548 () Bool)

(declare-fun call!510398 () (InoxSet Context!10942))

(assert (=> b!6143548 (= e!3743907 ((_ map or) call!510400 call!510398))))

(declare-fun bm!510391 () Bool)

(declare-fun call!510395 () (InoxSet Context!10942))

(assert (=> bm!510391 (= call!510398 call!510395)))

(declare-fun b!6143549 () Bool)

(assert (=> b!6143549 (= e!3743909 call!510397)))

(declare-fun bm!510393 () Bool)

(assert (=> bm!510393 (= call!510397 call!510398)))

(declare-fun b!6143550 () Bool)

(assert (=> b!6143550 (= e!3743904 (store ((as const (Array Context!10942 Bool)) false) lt!2333388 true))))

(declare-fun bm!510394 () Bool)

(declare-fun call!510399 () List!64560)

(assert (=> bm!510394 (= call!510399 call!510396)))

(declare-fun b!6143551 () Bool)

(assert (=> b!6143551 (= e!3743908 (nullable!6080 (regOne!32686 (regOne!32687 (regOne!32686 r!7292)))))))

(declare-fun b!6143552 () Bool)

(assert (=> b!6143552 (= e!3743906 ((_ map or) call!510395 call!510400))))

(declare-fun bm!510395 () Bool)

(assert (=> bm!510395 (= call!510396 ($colon$colon!1964 (exprs!5971 lt!2333388) (ite (or c!1105247 c!1105248) (regTwo!32686 (regOne!32687 (regOne!32686 r!7292))) (regOne!32687 (regOne!32686 r!7292)))))))

(declare-fun d!1924773 () Bool)

(declare-fun c!1105251 () Bool)

(assert (=> d!1924773 (= c!1105251 (and ((_ is ElementMatch!16087) (regOne!32687 (regOne!32686 r!7292))) (= (c!1105061 (regOne!32687 (regOne!32686 r!7292))) (h!70885 s!2326))))))

(assert (=> d!1924773 (= (derivationStepZipperDown!1335 (regOne!32687 (regOne!32686 r!7292)) lt!2333388 (h!70885 s!2326)) e!3743904)))

(declare-fun bm!510392 () Bool)

(assert (=> bm!510392 (= call!510395 (derivationStepZipperDown!1335 (ite c!1105249 (regOne!32687 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105247 (regTwo!32686 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105248 (regOne!32686 (regOne!32687 (regOne!32686 r!7292))) (reg!16416 (regOne!32687 (regOne!32686 r!7292)))))) (ite (or c!1105249 c!1105247) lt!2333388 (Context!10943 call!510399)) (h!70885 s!2326)))))

(assert (= (and d!1924773 c!1105251) b!6143550))

(assert (= (and d!1924773 (not c!1105251)) b!6143547))

(assert (= (and b!6143547 c!1105249) b!6143552))

(assert (= (and b!6143547 (not c!1105249)) b!6143545))

(assert (= (and b!6143545 res!2545330) b!6143551))

(assert (= (and b!6143545 c!1105247) b!6143548))

(assert (= (and b!6143545 (not c!1105247)) b!6143544))

(assert (= (and b!6143544 c!1105248) b!6143549))

(assert (= (and b!6143544 (not c!1105248)) b!6143542))

(assert (= (and b!6143542 c!1105250) b!6143543))

(assert (= (and b!6143542 (not c!1105250)) b!6143546))

(assert (= (or b!6143549 b!6143543) bm!510394))

(assert (= (or b!6143549 b!6143543) bm!510393))

(assert (= (or b!6143548 bm!510394) bm!510395))

(assert (= (or b!6143548 bm!510393) bm!510391))

(assert (= (or b!6143552 b!6143548) bm!510390))

(assert (= (or b!6143552 bm!510391) bm!510392))

(declare-fun m!6984440 () Bool)

(assert (=> bm!510390 m!6984440))

(declare-fun m!6984442 () Bool)

(assert (=> bm!510392 m!6984442))

(assert (=> b!6143550 m!6984392))

(declare-fun m!6984444 () Bool)

(assert (=> b!6143551 m!6984444))

(declare-fun m!6984446 () Bool)

(assert (=> bm!510395 m!6984446))

(assert (=> b!6142896 d!1924773))

(declare-fun bs!1523256 () Bool)

(declare-fun d!1924775 () Bool)

(assert (= bs!1523256 (and d!1924775 d!1924739)))

(declare-fun lambda!334917 () Int)

(assert (=> bs!1523256 (= lambda!334917 lambda!334907)))

(declare-fun bs!1523257 () Bool)

(assert (= bs!1523257 (and d!1924775 d!1924743)))

(assert (=> bs!1523257 (= lambda!334917 lambda!334910)))

(declare-fun bs!1523258 () Bool)

(assert (= bs!1523258 (and d!1924775 d!1924745)))

(assert (=> bs!1523258 (= lambda!334917 lambda!334913)))

(declare-fun bs!1523259 () Bool)

(assert (= bs!1523259 (and d!1924775 d!1924761)))

(assert (=> bs!1523259 (= lambda!334917 lambda!334914)))

(declare-fun b!6143573 () Bool)

(declare-fun e!3743923 () Bool)

(declare-fun e!3743925 () Bool)

(assert (=> b!6143573 (= e!3743923 e!3743925)))

(declare-fun c!1105261 () Bool)

(assert (=> b!6143573 (= c!1105261 (isEmpty!36389 (exprs!5971 (h!70886 zl!343))))))

(declare-fun b!6143574 () Bool)

(declare-fun e!3743927 () Regex!16087)

(assert (=> b!6143574 (= e!3743927 (Concat!24932 (h!70884 (exprs!5971 (h!70886 zl!343))) (generalisedConcat!1684 (t!378041 (exprs!5971 (h!70886 zl!343))))))))

(declare-fun b!6143575 () Bool)

(declare-fun e!3743922 () Regex!16087)

(assert (=> b!6143575 (= e!3743922 (h!70884 (exprs!5971 (h!70886 zl!343))))))

(declare-fun b!6143576 () Bool)

(declare-fun e!3743926 () Bool)

(assert (=> b!6143576 (= e!3743926 (isEmpty!36389 (t!378041 (exprs!5971 (h!70886 zl!343)))))))

(assert (=> d!1924775 e!3743923))

(declare-fun res!2545335 () Bool)

(assert (=> d!1924775 (=> (not res!2545335) (not e!3743923))))

(declare-fun lt!2333468 () Regex!16087)

(assert (=> d!1924775 (= res!2545335 (validRegex!7823 lt!2333468))))

(assert (=> d!1924775 (= lt!2333468 e!3743922)))

(declare-fun c!1105260 () Bool)

(assert (=> d!1924775 (= c!1105260 e!3743926)))

(declare-fun res!2545336 () Bool)

(assert (=> d!1924775 (=> (not res!2545336) (not e!3743926))))

(assert (=> d!1924775 (= res!2545336 ((_ is Cons!64436) (exprs!5971 (h!70886 zl!343))))))

(assert (=> d!1924775 (forall!15208 (exprs!5971 (h!70886 zl!343)) lambda!334917)))

(assert (=> d!1924775 (= (generalisedConcat!1684 (exprs!5971 (h!70886 zl!343))) lt!2333468)))

(declare-fun b!6143577 () Bool)

(declare-fun e!3743924 () Bool)

(assert (=> b!6143577 (= e!3743925 e!3743924)))

(declare-fun c!1105263 () Bool)

(assert (=> b!6143577 (= c!1105263 (isEmpty!36389 (tail!11781 (exprs!5971 (h!70886 zl!343)))))))

(declare-fun b!6143578 () Bool)

(assert (=> b!6143578 (= e!3743924 (= lt!2333468 (head!12696 (exprs!5971 (h!70886 zl!343)))))))

(declare-fun b!6143579 () Bool)

(assert (=> b!6143579 (= e!3743922 e!3743927)))

(declare-fun c!1105262 () Bool)

(assert (=> b!6143579 (= c!1105262 ((_ is Cons!64436) (exprs!5971 (h!70886 zl!343))))))

(declare-fun b!6143580 () Bool)

(declare-fun isConcat!1027 (Regex!16087) Bool)

(assert (=> b!6143580 (= e!3743924 (isConcat!1027 lt!2333468))))

(declare-fun b!6143581 () Bool)

(assert (=> b!6143581 (= e!3743927 EmptyExpr!16087)))

(declare-fun b!6143582 () Bool)

(declare-fun isEmptyExpr!1504 (Regex!16087) Bool)

(assert (=> b!6143582 (= e!3743925 (isEmptyExpr!1504 lt!2333468))))

(assert (= (and d!1924775 res!2545336) b!6143576))

(assert (= (and d!1924775 c!1105260) b!6143575))

(assert (= (and d!1924775 (not c!1105260)) b!6143579))

(assert (= (and b!6143579 c!1105262) b!6143574))

(assert (= (and b!6143579 (not c!1105262)) b!6143581))

(assert (= (and d!1924775 res!2545335) b!6143573))

(assert (= (and b!6143573 c!1105261) b!6143582))

(assert (= (and b!6143573 (not c!1105261)) b!6143577))

(assert (= (and b!6143577 c!1105263) b!6143578))

(assert (= (and b!6143577 (not c!1105263)) b!6143580))

(declare-fun m!6984448 () Bool)

(assert (=> b!6143574 m!6984448))

(assert (=> b!6143576 m!6983984))

(declare-fun m!6984450 () Bool)

(assert (=> b!6143578 m!6984450))

(declare-fun m!6984452 () Bool)

(assert (=> b!6143580 m!6984452))

(declare-fun m!6984454 () Bool)

(assert (=> b!6143582 m!6984454))

(declare-fun m!6984456 () Bool)

(assert (=> b!6143577 m!6984456))

(assert (=> b!6143577 m!6984456))

(declare-fun m!6984458 () Bool)

(assert (=> b!6143577 m!6984458))

(declare-fun m!6984460 () Bool)

(assert (=> d!1924775 m!6984460))

(declare-fun m!6984462 () Bool)

(assert (=> d!1924775 m!6984462))

(declare-fun m!6984464 () Bool)

(assert (=> b!6143573 m!6984464))

(assert (=> b!6142897 d!1924775))

(assert (=> b!6142916 d!1924737))

(declare-fun d!1924777 () Bool)

(assert (=> d!1924777 (= (isEmpty!36389 (t!378041 (exprs!5971 (h!70886 zl!343)))) ((_ is Nil!64436) (t!378041 (exprs!5971 (h!70886 zl!343)))))))

(assert (=> b!6142917 d!1924777))

(assert (=> b!6142893 d!1924723))

(declare-fun d!1924779 () Bool)

(declare-fun c!1105264 () Bool)

(assert (=> d!1924779 (= c!1105264 (isEmpty!36392 (t!378042 s!2326)))))

(declare-fun e!3743928 () Bool)

(assert (=> d!1924779 (= (matchZipper!2099 lt!2333399 (t!378042 s!2326)) e!3743928)))

(declare-fun b!6143583 () Bool)

(assert (=> b!6143583 (= e!3743928 (nullableZipper!1868 lt!2333399))))

(declare-fun b!6143584 () Bool)

(assert (=> b!6143584 (= e!3743928 (matchZipper!2099 (derivationStepZipper!2060 lt!2333399 (head!12695 (t!378042 s!2326))) (tail!11780 (t!378042 s!2326))))))

(assert (= (and d!1924779 c!1105264) b!6143583))

(assert (= (and d!1924779 (not c!1105264)) b!6143584))

(assert (=> d!1924779 m!6984296))

(declare-fun m!6984466 () Bool)

(assert (=> b!6143583 m!6984466))

(assert (=> b!6143584 m!6984300))

(assert (=> b!6143584 m!6984300))

(declare-fun m!6984468 () Bool)

(assert (=> b!6143584 m!6984468))

(assert (=> b!6143584 m!6984304))

(assert (=> b!6143584 m!6984468))

(assert (=> b!6143584 m!6984304))

(declare-fun m!6984470 () Bool)

(assert (=> b!6143584 m!6984470))

(assert (=> b!6142893 d!1924779))

(declare-fun d!1924781 () Bool)

(declare-fun c!1105265 () Bool)

(assert (=> d!1924781 (= c!1105265 (isEmpty!36392 (t!378042 s!2326)))))

(declare-fun e!3743929 () Bool)

(assert (=> d!1924781 (= (matchZipper!2099 lt!2333387 (t!378042 s!2326)) e!3743929)))

(declare-fun b!6143585 () Bool)

(assert (=> b!6143585 (= e!3743929 (nullableZipper!1868 lt!2333387))))

(declare-fun b!6143586 () Bool)

(assert (=> b!6143586 (= e!3743929 (matchZipper!2099 (derivationStepZipper!2060 lt!2333387 (head!12695 (t!378042 s!2326))) (tail!11780 (t!378042 s!2326))))))

(assert (= (and d!1924781 c!1105265) b!6143585))

(assert (= (and d!1924781 (not c!1105265)) b!6143586))

(assert (=> d!1924781 m!6984296))

(declare-fun m!6984472 () Bool)

(assert (=> b!6143585 m!6984472))

(assert (=> b!6143586 m!6984300))

(assert (=> b!6143586 m!6984300))

(declare-fun m!6984474 () Bool)

(assert (=> b!6143586 m!6984474))

(assert (=> b!6143586 m!6984304))

(assert (=> b!6143586 m!6984474))

(assert (=> b!6143586 m!6984304))

(declare-fun m!6984476 () Bool)

(assert (=> b!6143586 m!6984476))

(assert (=> b!6142893 d!1924781))

(declare-fun e!3743930 () Bool)

(declare-fun d!1924783 () Bool)

(assert (=> d!1924783 (= (matchZipper!2099 ((_ map or) lt!2333387 lt!2333394) (t!378042 s!2326)) e!3743930)))

(declare-fun res!2545337 () Bool)

(assert (=> d!1924783 (=> res!2545337 e!3743930)))

(assert (=> d!1924783 (= res!2545337 (matchZipper!2099 lt!2333387 (t!378042 s!2326)))))

(declare-fun lt!2333469 () Unit!157503)

(assert (=> d!1924783 (= lt!2333469 (choose!45658 lt!2333387 lt!2333394 (t!378042 s!2326)))))

(assert (=> d!1924783 (= (lemmaZipperConcatMatchesSameAsBothZippers!918 lt!2333387 lt!2333394 (t!378042 s!2326)) lt!2333469)))

(declare-fun b!6143587 () Bool)

(assert (=> b!6143587 (= e!3743930 (matchZipper!2099 lt!2333394 (t!378042 s!2326)))))

(assert (= (and d!1924783 (not res!2545337)) b!6143587))

(declare-fun m!6984478 () Bool)

(assert (=> d!1924783 m!6984478))

(assert (=> d!1924783 m!6984048))

(declare-fun m!6984480 () Bool)

(assert (=> d!1924783 m!6984480))

(assert (=> b!6143587 m!6983994))

(assert (=> b!6142893 d!1924783))

(declare-fun d!1924785 () Bool)

(declare-fun lt!2333472 () Regex!16087)

(assert (=> d!1924785 (validRegex!7823 lt!2333472)))

(assert (=> d!1924785 (= lt!2333472 (generalisedUnion!1931 (unfocusZipperList!1508 zl!343)))))

(assert (=> d!1924785 (= (unfocusZipper!1829 zl!343) lt!2333472)))

(declare-fun bs!1523260 () Bool)

(assert (= bs!1523260 d!1924785))

(declare-fun m!6984482 () Bool)

(assert (=> bs!1523260 m!6984482))

(assert (=> bs!1523260 m!6983996))

(assert (=> bs!1523260 m!6983996))

(assert (=> bs!1523260 m!6983998))

(assert (=> b!6142913 d!1924785))

(declare-fun bs!1523261 () Bool)

(declare-fun d!1924787 () Bool)

(assert (= bs!1523261 (and d!1924787 d!1924775)))

(declare-fun lambda!334918 () Int)

(assert (=> bs!1523261 (= lambda!334918 lambda!334917)))

(declare-fun bs!1523262 () Bool)

(assert (= bs!1523262 (and d!1924787 d!1924743)))

(assert (=> bs!1523262 (= lambda!334918 lambda!334910)))

(declare-fun bs!1523263 () Bool)

(assert (= bs!1523263 (and d!1924787 d!1924761)))

(assert (=> bs!1523263 (= lambda!334918 lambda!334914)))

(declare-fun bs!1523264 () Bool)

(assert (= bs!1523264 (and d!1924787 d!1924745)))

(assert (=> bs!1523264 (= lambda!334918 lambda!334913)))

(declare-fun bs!1523265 () Bool)

(assert (= bs!1523265 (and d!1924787 d!1924739)))

(assert (=> bs!1523265 (= lambda!334918 lambda!334907)))

(assert (=> d!1924787 (= (inv!83464 setElem!41562) (forall!15208 (exprs!5971 setElem!41562) lambda!334918))))

(declare-fun bs!1523266 () Bool)

(assert (= bs!1523266 d!1924787))

(declare-fun m!6984484 () Bool)

(assert (=> bs!1523266 m!6984484))

(assert (=> setNonEmpty!41562 d!1924787))

(declare-fun d!1924789 () Bool)

(declare-fun e!3743933 () Bool)

(assert (=> d!1924789 e!3743933))

(declare-fun res!2545340 () Bool)

(assert (=> d!1924789 (=> (not res!2545340) (not e!3743933))))

(declare-fun lt!2333475 () List!64562)

(declare-fun noDuplicate!1934 (List!64562) Bool)

(assert (=> d!1924789 (= res!2545340 (noDuplicate!1934 lt!2333475))))

(declare-fun choose!45662 ((InoxSet Context!10942)) List!64562)

(assert (=> d!1924789 (= lt!2333475 (choose!45662 z!1189))))

(assert (=> d!1924789 (= (toList!9871 z!1189) lt!2333475)))

(declare-fun b!6143590 () Bool)

(declare-fun content!11996 (List!64562) (InoxSet Context!10942))

(assert (=> b!6143590 (= e!3743933 (= (content!11996 lt!2333475) z!1189))))

(assert (= (and d!1924789 res!2545340) b!6143590))

(declare-fun m!6984486 () Bool)

(assert (=> d!1924789 m!6984486))

(declare-fun m!6984488 () Bool)

(assert (=> d!1924789 m!6984488))

(declare-fun m!6984490 () Bool)

(assert (=> b!6143590 m!6984490))

(assert (=> b!6142894 d!1924789))

(declare-fun d!1924791 () Bool)

(declare-fun e!3743948 () Bool)

(assert (=> d!1924791 e!3743948))

(declare-fun res!2545352 () Bool)

(assert (=> d!1924791 (=> res!2545352 e!3743948)))

(declare-fun e!3743944 () Bool)

(assert (=> d!1924791 (= res!2545352 e!3743944)))

(declare-fun res!2545353 () Bool)

(assert (=> d!1924791 (=> (not res!2545353) (not e!3743944))))

(declare-fun lt!2333483 () Option!15978)

(assert (=> d!1924791 (= res!2545353 (isDefined!12681 lt!2333483))))

(declare-fun e!3743947 () Option!15978)

(assert (=> d!1924791 (= lt!2333483 e!3743947)))

(declare-fun c!1105270 () Bool)

(declare-fun e!3743945 () Bool)

(assert (=> d!1924791 (= c!1105270 e!3743945)))

(declare-fun res!2545354 () Bool)

(assert (=> d!1924791 (=> (not res!2545354) (not e!3743945))))

(assert (=> d!1924791 (= res!2545354 (matchR!8270 (regOne!32686 r!7292) Nil!64437))))

(assert (=> d!1924791 (validRegex!7823 (regOne!32686 r!7292))))

(assert (=> d!1924791 (= (findConcatSeparation!2392 (regOne!32686 r!7292) (regTwo!32686 r!7292) Nil!64437 s!2326 s!2326) lt!2333483)))

(declare-fun b!6143609 () Bool)

(declare-fun res!2545351 () Bool)

(assert (=> b!6143609 (=> (not res!2545351) (not e!3743944))))

(declare-fun get!22232 (Option!15978) tuple2!66132)

(assert (=> b!6143609 (= res!2545351 (matchR!8270 (regTwo!32686 r!7292) (_2!36369 (get!22232 lt!2333483))))))

(declare-fun b!6143610 () Bool)

(declare-fun ++!14173 (List!64561 List!64561) List!64561)

(assert (=> b!6143610 (= e!3743944 (= (++!14173 (_1!36369 (get!22232 lt!2333483)) (_2!36369 (get!22232 lt!2333483))) s!2326))))

(declare-fun b!6143611 () Bool)

(assert (=> b!6143611 (= e!3743947 (Some!15977 (tuple2!66133 Nil!64437 s!2326)))))

(declare-fun b!6143612 () Bool)

(declare-fun e!3743946 () Option!15978)

(assert (=> b!6143612 (= e!3743946 None!15977)))

(declare-fun b!6143613 () Bool)

(assert (=> b!6143613 (= e!3743947 e!3743946)))

(declare-fun c!1105271 () Bool)

(assert (=> b!6143613 (= c!1105271 ((_ is Nil!64437) s!2326))))

(declare-fun b!6143614 () Bool)

(assert (=> b!6143614 (= e!3743945 (matchR!8270 (regTwo!32686 r!7292) s!2326))))

(declare-fun b!6143615 () Bool)

(assert (=> b!6143615 (= e!3743948 (not (isDefined!12681 lt!2333483)))))

(declare-fun b!6143616 () Bool)

(declare-fun res!2545355 () Bool)

(assert (=> b!6143616 (=> (not res!2545355) (not e!3743944))))

(assert (=> b!6143616 (= res!2545355 (matchR!8270 (regOne!32686 r!7292) (_1!36369 (get!22232 lt!2333483))))))

(declare-fun b!6143617 () Bool)

(declare-fun lt!2333484 () Unit!157503)

(declare-fun lt!2333482 () Unit!157503)

(assert (=> b!6143617 (= lt!2333484 lt!2333482)))

(assert (=> b!6143617 (= (++!14173 (++!14173 Nil!64437 (Cons!64437 (h!70885 s!2326) Nil!64437)) (t!378042 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2268 (List!64561 C!32444 List!64561 List!64561) Unit!157503)

(assert (=> b!6143617 (= lt!2333482 (lemmaMoveElementToOtherListKeepsConcatEq!2268 Nil!64437 (h!70885 s!2326) (t!378042 s!2326) s!2326))))

(assert (=> b!6143617 (= e!3743946 (findConcatSeparation!2392 (regOne!32686 r!7292) (regTwo!32686 r!7292) (++!14173 Nil!64437 (Cons!64437 (h!70885 s!2326) Nil!64437)) (t!378042 s!2326) s!2326))))

(assert (= (and d!1924791 res!2545354) b!6143614))

(assert (= (and d!1924791 c!1105270) b!6143611))

(assert (= (and d!1924791 (not c!1105270)) b!6143613))

(assert (= (and b!6143613 c!1105271) b!6143612))

(assert (= (and b!6143613 (not c!1105271)) b!6143617))

(assert (= (and d!1924791 res!2545353) b!6143616))

(assert (= (and b!6143616 res!2545355) b!6143609))

(assert (= (and b!6143609 res!2545351) b!6143610))

(assert (= (and d!1924791 (not res!2545352)) b!6143615))

(declare-fun m!6984492 () Bool)

(assert (=> b!6143616 m!6984492))

(declare-fun m!6984494 () Bool)

(assert (=> b!6143616 m!6984494))

(declare-fun m!6984496 () Bool)

(assert (=> b!6143615 m!6984496))

(assert (=> b!6143609 m!6984492))

(declare-fun m!6984498 () Bool)

(assert (=> b!6143609 m!6984498))

(assert (=> d!1924791 m!6984496))

(declare-fun m!6984500 () Bool)

(assert (=> d!1924791 m!6984500))

(declare-fun m!6984502 () Bool)

(assert (=> d!1924791 m!6984502))

(declare-fun m!6984504 () Bool)

(assert (=> b!6143617 m!6984504))

(assert (=> b!6143617 m!6984504))

(declare-fun m!6984506 () Bool)

(assert (=> b!6143617 m!6984506))

(declare-fun m!6984508 () Bool)

(assert (=> b!6143617 m!6984508))

(assert (=> b!6143617 m!6984504))

(declare-fun m!6984510 () Bool)

(assert (=> b!6143617 m!6984510))

(assert (=> b!6143610 m!6984492))

(declare-fun m!6984512 () Bool)

(assert (=> b!6143610 m!6984512))

(declare-fun m!6984514 () Bool)

(assert (=> b!6143614 m!6984514))

(assert (=> b!6142895 d!1924791))

(declare-fun bs!1523267 () Bool)

(declare-fun d!1924793 () Bool)

(assert (= bs!1523267 (and d!1924793 b!6142895)))

(declare-fun lambda!334923 () Int)

(assert (=> bs!1523267 (= lambda!334923 lambda!334867)))

(assert (=> bs!1523267 (not (= lambda!334923 lambda!334868))))

(declare-fun bs!1523268 () Bool)

(assert (= bs!1523268 (and d!1924793 b!6143383)))

(assert (=> bs!1523268 (not (= lambda!334923 lambda!334903))))

(declare-fun bs!1523269 () Bool)

(assert (= bs!1523269 (and d!1924793 b!6143379)))

(assert (=> bs!1523269 (not (= lambda!334923 lambda!334904))))

(assert (=> d!1924793 true))

(assert (=> d!1924793 true))

(assert (=> d!1924793 true))

(declare-fun lambda!334924 () Int)

(assert (=> bs!1523267 (= lambda!334924 lambda!334868)))

(declare-fun bs!1523270 () Bool)

(assert (= bs!1523270 d!1924793))

(assert (=> bs!1523270 (not (= lambda!334924 lambda!334923))))

(assert (=> bs!1523269 (= lambda!334924 lambda!334904)))

(assert (=> bs!1523268 (not (= lambda!334924 lambda!334903))))

(assert (=> bs!1523267 (not (= lambda!334924 lambda!334867))))

(assert (=> d!1924793 true))

(assert (=> d!1924793 true))

(assert (=> d!1924793 true))

(assert (=> d!1924793 (= (Exists!3157 lambda!334923) (Exists!3157 lambda!334924))))

(declare-fun lt!2333487 () Unit!157503)

(declare-fun choose!45663 (Regex!16087 Regex!16087 List!64561) Unit!157503)

(assert (=> d!1924793 (= lt!2333487 (choose!45663 (regOne!32686 r!7292) (regTwo!32686 r!7292) s!2326))))

(assert (=> d!1924793 (validRegex!7823 (regOne!32686 r!7292))))

(assert (=> d!1924793 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1694 (regOne!32686 r!7292) (regTwo!32686 r!7292) s!2326) lt!2333487)))

(declare-fun m!6984516 () Bool)

(assert (=> bs!1523270 m!6984516))

(declare-fun m!6984518 () Bool)

(assert (=> bs!1523270 m!6984518))

(declare-fun m!6984520 () Bool)

(assert (=> bs!1523270 m!6984520))

(assert (=> bs!1523270 m!6984502))

(assert (=> b!6142895 d!1924793))

(declare-fun d!1924795 () Bool)

(declare-fun isEmpty!36393 (Option!15978) Bool)

(assert (=> d!1924795 (= (isDefined!12681 (findConcatSeparation!2392 (regOne!32686 r!7292) (regTwo!32686 r!7292) Nil!64437 s!2326 s!2326)) (not (isEmpty!36393 (findConcatSeparation!2392 (regOne!32686 r!7292) (regTwo!32686 r!7292) Nil!64437 s!2326 s!2326))))))

(declare-fun bs!1523271 () Bool)

(assert (= bs!1523271 d!1924795))

(assert (=> bs!1523271 m!6984034))

(declare-fun m!6984522 () Bool)

(assert (=> bs!1523271 m!6984522))

(assert (=> b!6142895 d!1924795))

(declare-fun bs!1523272 () Bool)

(declare-fun d!1924797 () Bool)

(assert (= bs!1523272 (and d!1924797 b!6142895)))

(declare-fun lambda!334927 () Int)

(assert (=> bs!1523272 (not (= lambda!334927 lambda!334868))))

(declare-fun bs!1523273 () Bool)

(assert (= bs!1523273 (and d!1924797 d!1924793)))

(assert (=> bs!1523273 (= lambda!334927 lambda!334923)))

(declare-fun bs!1523274 () Bool)

(assert (= bs!1523274 (and d!1924797 b!6143379)))

(assert (=> bs!1523274 (not (= lambda!334927 lambda!334904))))

(assert (=> bs!1523273 (not (= lambda!334927 lambda!334924))))

(declare-fun bs!1523275 () Bool)

(assert (= bs!1523275 (and d!1924797 b!6143383)))

(assert (=> bs!1523275 (not (= lambda!334927 lambda!334903))))

(assert (=> bs!1523272 (= lambda!334927 lambda!334867)))

(assert (=> d!1924797 true))

(assert (=> d!1924797 true))

(assert (=> d!1924797 true))

(assert (=> d!1924797 (= (isDefined!12681 (findConcatSeparation!2392 (regOne!32686 r!7292) (regTwo!32686 r!7292) Nil!64437 s!2326 s!2326)) (Exists!3157 lambda!334927))))

(declare-fun lt!2333490 () Unit!157503)

(declare-fun choose!45664 (Regex!16087 Regex!16087 List!64561) Unit!157503)

(assert (=> d!1924797 (= lt!2333490 (choose!45664 (regOne!32686 r!7292) (regTwo!32686 r!7292) s!2326))))

(assert (=> d!1924797 (validRegex!7823 (regOne!32686 r!7292))))

(assert (=> d!1924797 (= (lemmaFindConcatSeparationEquivalentToExists!2156 (regOne!32686 r!7292) (regTwo!32686 r!7292) s!2326) lt!2333490)))

(declare-fun bs!1523276 () Bool)

(assert (= bs!1523276 d!1924797))

(assert (=> bs!1523276 m!6984034))

(assert (=> bs!1523276 m!6984036))

(declare-fun m!6984524 () Bool)

(assert (=> bs!1523276 m!6984524))

(assert (=> bs!1523276 m!6984034))

(declare-fun m!6984526 () Bool)

(assert (=> bs!1523276 m!6984526))

(assert (=> bs!1523276 m!6984502))

(assert (=> b!6142895 d!1924797))

(declare-fun d!1924799 () Bool)

(declare-fun choose!45665 (Int) Bool)

(assert (=> d!1924799 (= (Exists!3157 lambda!334868) (choose!45665 lambda!334868))))

(declare-fun bs!1523277 () Bool)

(assert (= bs!1523277 d!1924799))

(declare-fun m!6984528 () Bool)

(assert (=> bs!1523277 m!6984528))

(assert (=> b!6142895 d!1924799))

(declare-fun d!1924801 () Bool)

(assert (=> d!1924801 (= (Exists!3157 lambda!334867) (choose!45665 lambda!334867))))

(declare-fun bs!1523278 () Bool)

(assert (= bs!1523278 d!1924801))

(declare-fun m!6984530 () Bool)

(assert (=> bs!1523278 m!6984530))

(assert (=> b!6142895 d!1924801))

(declare-fun b!6143637 () Bool)

(declare-fun e!3743960 () Bool)

(declare-fun tp!1716301 () Bool)

(assert (=> b!6143637 (= e!3743960 tp!1716301)))

(declare-fun e!3743959 () Bool)

(declare-fun tp!1716302 () Bool)

(declare-fun b!6143636 () Bool)

(assert (=> b!6143636 (= e!3743959 (and (inv!83464 (h!70886 (t!378043 zl!343))) e!3743960 tp!1716302))))

(assert (=> b!6142905 (= tp!1716234 e!3743959)))

(assert (= b!6143636 b!6143637))

(assert (= (and b!6142905 ((_ is Cons!64438) (t!378043 zl!343))) b!6143636))

(declare-fun m!6984532 () Bool)

(assert (=> b!6143636 m!6984532))

(declare-fun b!6143642 () Bool)

(declare-fun e!3743963 () Bool)

(declare-fun tp!1716307 () Bool)

(declare-fun tp!1716308 () Bool)

(assert (=> b!6143642 (= e!3743963 (and tp!1716307 tp!1716308))))

(assert (=> b!6142911 (= tp!1716230 e!3743963)))

(assert (= (and b!6142911 ((_ is Cons!64436) (exprs!5971 (h!70886 zl!343)))) b!6143642))

(declare-fun b!6143643 () Bool)

(declare-fun e!3743964 () Bool)

(declare-fun tp!1716309 () Bool)

(declare-fun tp!1716310 () Bool)

(assert (=> b!6143643 (= e!3743964 (and tp!1716309 tp!1716310))))

(assert (=> b!6142902 (= tp!1716229 e!3743964)))

(assert (= (and b!6142902 ((_ is Cons!64436) (exprs!5971 setElem!41562))) b!6143643))

(declare-fun e!3743967 () Bool)

(assert (=> b!6142907 (= tp!1716237 e!3743967)))

(declare-fun b!6143657 () Bool)

(declare-fun tp!1716324 () Bool)

(declare-fun tp!1716323 () Bool)

(assert (=> b!6143657 (= e!3743967 (and tp!1716324 tp!1716323))))

(declare-fun b!6143655 () Bool)

(declare-fun tp!1716321 () Bool)

(declare-fun tp!1716325 () Bool)

(assert (=> b!6143655 (= e!3743967 (and tp!1716321 tp!1716325))))

(declare-fun b!6143656 () Bool)

(declare-fun tp!1716322 () Bool)

(assert (=> b!6143656 (= e!3743967 tp!1716322)))

(declare-fun b!6143654 () Bool)

(assert (=> b!6143654 (= e!3743967 tp_is_empty!41427)))

(assert (= (and b!6142907 ((_ is ElementMatch!16087) (regOne!32687 r!7292))) b!6143654))

(assert (= (and b!6142907 ((_ is Concat!24932) (regOne!32687 r!7292))) b!6143655))

(assert (= (and b!6142907 ((_ is Star!16087) (regOne!32687 r!7292))) b!6143656))

(assert (= (and b!6142907 ((_ is Union!16087) (regOne!32687 r!7292))) b!6143657))

(declare-fun e!3743968 () Bool)

(assert (=> b!6142907 (= tp!1716236 e!3743968)))

(declare-fun b!6143661 () Bool)

(declare-fun tp!1716329 () Bool)

(declare-fun tp!1716328 () Bool)

(assert (=> b!6143661 (= e!3743968 (and tp!1716329 tp!1716328))))

(declare-fun b!6143659 () Bool)

(declare-fun tp!1716326 () Bool)

(declare-fun tp!1716330 () Bool)

(assert (=> b!6143659 (= e!3743968 (and tp!1716326 tp!1716330))))

(declare-fun b!6143660 () Bool)

(declare-fun tp!1716327 () Bool)

(assert (=> b!6143660 (= e!3743968 tp!1716327)))

(declare-fun b!6143658 () Bool)

(assert (=> b!6143658 (= e!3743968 tp_is_empty!41427)))

(assert (= (and b!6142907 ((_ is ElementMatch!16087) (regTwo!32687 r!7292))) b!6143658))

(assert (= (and b!6142907 ((_ is Concat!24932) (regTwo!32687 r!7292))) b!6143659))

(assert (= (and b!6142907 ((_ is Star!16087) (regTwo!32687 r!7292))) b!6143660))

(assert (= (and b!6142907 ((_ is Union!16087) (regTwo!32687 r!7292))) b!6143661))

(declare-fun condSetEmpty!41568 () Bool)

(assert (=> setNonEmpty!41562 (= condSetEmpty!41568 (= setRest!41562 ((as const (Array Context!10942 Bool)) false)))))

(declare-fun setRes!41568 () Bool)

(assert (=> setNonEmpty!41562 (= tp!1716238 setRes!41568)))

(declare-fun setIsEmpty!41568 () Bool)

(assert (=> setIsEmpty!41568 setRes!41568))

(declare-fun tp!1716335 () Bool)

(declare-fun setElem!41568 () Context!10942)

(declare-fun e!3743971 () Bool)

(declare-fun setNonEmpty!41568 () Bool)

(assert (=> setNonEmpty!41568 (= setRes!41568 (and tp!1716335 (inv!83464 setElem!41568) e!3743971))))

(declare-fun setRest!41568 () (InoxSet Context!10942))

(assert (=> setNonEmpty!41568 (= setRest!41562 ((_ map or) (store ((as const (Array Context!10942 Bool)) false) setElem!41568 true) setRest!41568))))

(declare-fun b!6143666 () Bool)

(declare-fun tp!1716336 () Bool)

(assert (=> b!6143666 (= e!3743971 tp!1716336)))

(assert (= (and setNonEmpty!41562 condSetEmpty!41568) setIsEmpty!41568))

(assert (= (and setNonEmpty!41562 (not condSetEmpty!41568)) setNonEmpty!41568))

(assert (= setNonEmpty!41568 b!6143666))

(declare-fun m!6984534 () Bool)

(assert (=> setNonEmpty!41568 m!6984534))

(declare-fun b!6143671 () Bool)

(declare-fun e!3743974 () Bool)

(declare-fun tp!1716339 () Bool)

(assert (=> b!6143671 (= e!3743974 (and tp_is_empty!41427 tp!1716339))))

(assert (=> b!6142918 (= tp!1716232 e!3743974)))

(assert (= (and b!6142918 ((_ is Cons!64437) (t!378042 s!2326))) b!6143671))

(declare-fun e!3743975 () Bool)

(assert (=> b!6142903 (= tp!1716233 e!3743975)))

(declare-fun b!6143675 () Bool)

(declare-fun tp!1716343 () Bool)

(declare-fun tp!1716342 () Bool)

(assert (=> b!6143675 (= e!3743975 (and tp!1716343 tp!1716342))))

(declare-fun b!6143673 () Bool)

(declare-fun tp!1716340 () Bool)

(declare-fun tp!1716344 () Bool)

(assert (=> b!6143673 (= e!3743975 (and tp!1716340 tp!1716344))))

(declare-fun b!6143674 () Bool)

(declare-fun tp!1716341 () Bool)

(assert (=> b!6143674 (= e!3743975 tp!1716341)))

(declare-fun b!6143672 () Bool)

(assert (=> b!6143672 (= e!3743975 tp_is_empty!41427)))

(assert (= (and b!6142903 ((_ is ElementMatch!16087) (reg!16416 r!7292))) b!6143672))

(assert (= (and b!6142903 ((_ is Concat!24932) (reg!16416 r!7292))) b!6143673))

(assert (= (and b!6142903 ((_ is Star!16087) (reg!16416 r!7292))) b!6143674))

(assert (= (and b!6142903 ((_ is Union!16087) (reg!16416 r!7292))) b!6143675))

(declare-fun e!3743976 () Bool)

(assert (=> b!6142904 (= tp!1716235 e!3743976)))

(declare-fun b!6143679 () Bool)

(declare-fun tp!1716348 () Bool)

(declare-fun tp!1716347 () Bool)

(assert (=> b!6143679 (= e!3743976 (and tp!1716348 tp!1716347))))

(declare-fun b!6143677 () Bool)

(declare-fun tp!1716345 () Bool)

(declare-fun tp!1716349 () Bool)

(assert (=> b!6143677 (= e!3743976 (and tp!1716345 tp!1716349))))

(declare-fun b!6143678 () Bool)

(declare-fun tp!1716346 () Bool)

(assert (=> b!6143678 (= e!3743976 tp!1716346)))

(declare-fun b!6143676 () Bool)

(assert (=> b!6143676 (= e!3743976 tp_is_empty!41427)))

(assert (= (and b!6142904 ((_ is ElementMatch!16087) (regOne!32686 r!7292))) b!6143676))

(assert (= (and b!6142904 ((_ is Concat!24932) (regOne!32686 r!7292))) b!6143677))

(assert (= (and b!6142904 ((_ is Star!16087) (regOne!32686 r!7292))) b!6143678))

(assert (= (and b!6142904 ((_ is Union!16087) (regOne!32686 r!7292))) b!6143679))

(declare-fun e!3743977 () Bool)

(assert (=> b!6142904 (= tp!1716231 e!3743977)))

(declare-fun b!6143683 () Bool)

(declare-fun tp!1716353 () Bool)

(declare-fun tp!1716352 () Bool)

(assert (=> b!6143683 (= e!3743977 (and tp!1716353 tp!1716352))))

(declare-fun b!6143681 () Bool)

(declare-fun tp!1716350 () Bool)

(declare-fun tp!1716354 () Bool)

(assert (=> b!6143681 (= e!3743977 (and tp!1716350 tp!1716354))))

(declare-fun b!6143682 () Bool)

(declare-fun tp!1716351 () Bool)

(assert (=> b!6143682 (= e!3743977 tp!1716351)))

(declare-fun b!6143680 () Bool)

(assert (=> b!6143680 (= e!3743977 tp_is_empty!41427)))

(assert (= (and b!6142904 ((_ is ElementMatch!16087) (regTwo!32686 r!7292))) b!6143680))

(assert (= (and b!6142904 ((_ is Concat!24932) (regTwo!32686 r!7292))) b!6143681))

(assert (= (and b!6142904 ((_ is Star!16087) (regTwo!32686 r!7292))) b!6143682))

(assert (= (and b!6142904 ((_ is Union!16087) (regTwo!32686 r!7292))) b!6143683))

(declare-fun b_lambda!233821 () Bool)

(assert (= b_lambda!233817 (or b!6142915 b_lambda!233821)))

(declare-fun bs!1523279 () Bool)

(declare-fun d!1924803 () Bool)

(assert (= bs!1523279 (and d!1924803 b!6142915)))

(assert (=> bs!1523279 (= (dynLambda!25394 lambda!334869 (h!70886 zl!343)) (derivationStepZipperUp!1261 (h!70886 zl!343) (h!70885 s!2326)))))

(assert (=> bs!1523279 m!6984008))

(assert (=> d!1924753 d!1924803))

(declare-fun b_lambda!233823 () Bool)

(assert (= b_lambda!233819 (or b!6142915 b_lambda!233823)))

(declare-fun bs!1523280 () Bool)

(declare-fun d!1924805 () Bool)

(assert (= bs!1523280 (and d!1924805 b!6142915)))

(assert (=> bs!1523280 (= (dynLambda!25394 lambda!334869 lt!2333391) (derivationStepZipperUp!1261 lt!2333391 (h!70885 s!2326)))))

(assert (=> bs!1523280 m!6984026))

(assert (=> d!1924769 d!1924805))

(check-sat (not b!6143466) (not b!6143615) (not bm!510380) (not bm!510362) (not b!6143585) (not b!6143637) (not b!6143677) (not d!1924733) (not b!6143642) (not bm!510350) (not b!6143583) (not b!6143616) (not d!1924739) (not b!6143576) (not b!6143518) (not b_lambda!233823) (not bm!510377) (not b!6143578) (not d!1924797) (not b!6143673) (not bs!1523279) (not b!6143636) (not b!6143679) (not d!1924795) (not b!6143514) (not b!6143582) (not d!1924761) (not bm!510384) (not b!6143666) (not b!6143478) (not d!1924723) (not d!1924787) (not b!6143674) (not b!6143456) (not d!1924801) (not b!6143671) (not d!1924753) (not b!6143458) (not b_lambda!233821) (not b!6143418) (not b!6143455) (not d!1924793) (not b!6143614) (not b!6143461) (not b!6143643) (not b!6143655) (not b!6143421) (not b!6143385) (not b!6143678) (not b!6143573) (not b!6143617) (not b!6143682) (not bm!510356) (not b!6143656) (not d!1924781) (not b!6143453) (not bm!510390) (not b!6143429) (not b!6143521) (not bm!510375) (not d!1924721) (not d!1924783) (not bm!510383) (not d!1924785) (not b!6143659) (not d!1924763) (not b!6143428) tp_is_empty!41427 (not b!6143683) (not b!6143431) (not b!6143661) (not d!1924737) (not b!6143526) (not b!6143307) (not d!1924725) (not bm!510395) (not bm!510389) (not d!1924747) (not b!6143528) (not d!1924775) (not d!1924743) (not b!6143424) (not b!6143426) (not b!6143675) (not b!6143586) (not d!1924769) (not d!1924799) (not d!1924757) (not b!6143584) (not b!6143577) (not b!6143590) (not b!6143382) (not b!6143313) (not b!6143460) (not b!6143480) (not b!6143430) (not d!1924791) (not b!6143657) (not b!6143422) (not b!6143340) (not b!6143523) (not d!1924779) (not b!6143609) (not setNonEmpty!41568) (not b!6143425) (not b!6143681) (not b!6143610) (not bm!510381) (not d!1924731) (not b!6143540) (not bm!510355) (not d!1924745) (not b!6143312) (not b!6143660) (not b!6143516) (not b!6143454) (not b!6143315) (not bs!1523280) (not bm!510382) (not b!6143314) (not bm!510392) (not b!6143574) (not d!1924741) (not bm!510386) (not b!6143551) (not b!6143587) (not bm!510349) (not bm!510359) (not d!1924765) (not d!1924789) (not b!6143580))
(check-sat)
(get-model)

(declare-fun d!1925053 () Bool)

(assert (=> d!1925053 (= (nullable!6080 (h!70884 (exprs!5971 lt!2333391))) (nullableFct!2044 (h!70884 (exprs!5971 lt!2333391))))))

(declare-fun bs!1523441 () Bool)

(assert (= bs!1523441 d!1925053))

(declare-fun m!6985054 () Bool)

(assert (=> bs!1523441 m!6985054))

(assert (=> b!6143528 d!1925053))

(declare-fun d!1925055 () Bool)

(assert (=> d!1925055 (= (isEmpty!36392 (t!378042 s!2326)) ((_ is Nil!64437) (t!378042 s!2326)))))

(assert (=> d!1924723 d!1925055))

(declare-fun d!1925057 () Bool)

(assert (=> d!1925057 (= ($colon$colon!1964 (exprs!5971 lt!2333388) (ite (or c!1105231 c!1105232) (regTwo!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (h!70884 (exprs!5971 (h!70886 zl!343))))) (Cons!64436 (ite (or c!1105231 c!1105232) (regTwo!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (h!70884 (exprs!5971 (h!70886 zl!343)))) (exprs!5971 lt!2333388)))))

(assert (=> bm!510380 d!1925057))

(declare-fun bs!1523442 () Bool)

(declare-fun d!1925059 () Bool)

(assert (= bs!1523442 (and d!1925059 d!1924775)))

(declare-fun lambda!334962 () Int)

(assert (=> bs!1523442 (= lambda!334962 lambda!334917)))

(declare-fun bs!1523443 () Bool)

(assert (= bs!1523443 (and d!1925059 d!1924743)))

(assert (=> bs!1523443 (= lambda!334962 lambda!334910)))

(declare-fun bs!1523444 () Bool)

(assert (= bs!1523444 (and d!1925059 d!1924761)))

(assert (=> bs!1523444 (= lambda!334962 lambda!334914)))

(declare-fun bs!1523445 () Bool)

(assert (= bs!1523445 (and d!1925059 d!1924787)))

(assert (=> bs!1523445 (= lambda!334962 lambda!334918)))

(declare-fun bs!1523446 () Bool)

(assert (= bs!1523446 (and d!1925059 d!1924745)))

(assert (=> bs!1523446 (= lambda!334962 lambda!334913)))

(declare-fun bs!1523447 () Bool)

(assert (= bs!1523447 (and d!1925059 d!1924739)))

(assert (=> bs!1523447 (= lambda!334962 lambda!334907)))

(assert (=> d!1925059 (= (inv!83464 setElem!41568) (forall!15208 (exprs!5971 setElem!41568) lambda!334962))))

(declare-fun bs!1523448 () Bool)

(assert (= bs!1523448 d!1925059))

(declare-fun m!6985056 () Bool)

(assert (=> bs!1523448 m!6985056))

(assert (=> setNonEmpty!41568 d!1925059))

(declare-fun d!1925061 () Bool)

(assert (=> d!1925061 (= (isEmpty!36389 (t!378041 (unfocusZipperList!1508 zl!343))) ((_ is Nil!64436) (t!378041 (unfocusZipperList!1508 zl!343))))))

(assert (=> b!6143454 d!1925061))

(declare-fun d!1925063 () Bool)

(assert (=> d!1925063 (= (isEmpty!36392 s!2326) ((_ is Nil!64437) s!2326))))

(assert (=> d!1924731 d!1925063))

(assert (=> d!1924731 d!1924727))

(declare-fun d!1925065 () Bool)

(assert (=> d!1925065 (= (isEmptyLang!1514 lt!2333458) ((_ is EmptyLang!16087) lt!2333458))))

(assert (=> b!6143458 d!1925065))

(assert (=> b!6143523 d!1924747))

(declare-fun d!1925067 () Bool)

(assert (=> d!1925067 (= (nullable!6080 r!7292) (nullableFct!2044 r!7292))))

(declare-fun bs!1523449 () Bool)

(assert (= bs!1523449 d!1925067))

(declare-fun m!6985058 () Bool)

(assert (=> bs!1523449 m!6985058))

(assert (=> b!6143422 d!1925067))

(declare-fun b!6144258 () Bool)

(declare-fun res!2545549 () Bool)

(declare-fun e!3744299 () Bool)

(assert (=> b!6144258 (=> res!2545549 e!3744299)))

(declare-fun e!3744298 () Bool)

(assert (=> b!6144258 (= res!2545549 e!3744298)))

(declare-fun res!2545553 () Bool)

(assert (=> b!6144258 (=> (not res!2545553) (not e!3744298))))

(declare-fun lt!2333513 () Bool)

(assert (=> b!6144258 (= res!2545553 lt!2333513)))

(declare-fun b!6144259 () Bool)

(declare-fun res!2545550 () Bool)

(assert (=> b!6144259 (=> res!2545550 e!3744299)))

(assert (=> b!6144259 (= res!2545550 (not ((_ is ElementMatch!16087) (derivativeStep!4807 r!7292 (head!12695 s!2326)))))))

(declare-fun e!3744304 () Bool)

(assert (=> b!6144259 (= e!3744304 e!3744299)))

(declare-fun b!6144260 () Bool)

(declare-fun e!3744301 () Bool)

(assert (=> b!6144260 (= e!3744299 e!3744301)))

(declare-fun res!2545551 () Bool)

(assert (=> b!6144260 (=> (not res!2545551) (not e!3744301))))

(assert (=> b!6144260 (= res!2545551 (not lt!2333513))))

(declare-fun b!6144261 () Bool)

(declare-fun e!3744302 () Bool)

(assert (=> b!6144261 (= e!3744301 e!3744302)))

(declare-fun res!2545552 () Bool)

(assert (=> b!6144261 (=> res!2545552 e!3744302)))

(declare-fun call!510512 () Bool)

(assert (=> b!6144261 (= res!2545552 call!510512)))

(declare-fun b!6144262 () Bool)

(declare-fun res!2545554 () Bool)

(assert (=> b!6144262 (=> (not res!2545554) (not e!3744298))))

(assert (=> b!6144262 (= res!2545554 (isEmpty!36392 (tail!11780 (tail!11780 s!2326))))))

(declare-fun b!6144263 () Bool)

(declare-fun e!3744300 () Bool)

(assert (=> b!6144263 (= e!3744300 e!3744304)))

(declare-fun c!1105414 () Bool)

(assert (=> b!6144263 (= c!1105414 ((_ is EmptyLang!16087) (derivativeStep!4807 r!7292 (head!12695 s!2326))))))

(declare-fun b!6144264 () Bool)

(assert (=> b!6144264 (= e!3744304 (not lt!2333513))))

(declare-fun d!1925069 () Bool)

(assert (=> d!1925069 e!3744300))

(declare-fun c!1105415 () Bool)

(assert (=> d!1925069 (= c!1105415 ((_ is EmptyExpr!16087) (derivativeStep!4807 r!7292 (head!12695 s!2326))))))

(declare-fun e!3744303 () Bool)

(assert (=> d!1925069 (= lt!2333513 e!3744303)))

(declare-fun c!1105416 () Bool)

(assert (=> d!1925069 (= c!1105416 (isEmpty!36392 (tail!11780 s!2326)))))

(assert (=> d!1925069 (validRegex!7823 (derivativeStep!4807 r!7292 (head!12695 s!2326)))))

(assert (=> d!1925069 (= (matchR!8270 (derivativeStep!4807 r!7292 (head!12695 s!2326)) (tail!11780 s!2326)) lt!2333513)))

(declare-fun bm!510507 () Bool)

(assert (=> bm!510507 (= call!510512 (isEmpty!36392 (tail!11780 s!2326)))))

(declare-fun b!6144265 () Bool)

(assert (=> b!6144265 (= e!3744302 (not (= (head!12695 (tail!11780 s!2326)) (c!1105061 (derivativeStep!4807 r!7292 (head!12695 s!2326))))))))

(declare-fun b!6144266 () Bool)

(assert (=> b!6144266 (= e!3744303 (nullable!6080 (derivativeStep!4807 r!7292 (head!12695 s!2326))))))

(declare-fun b!6144267 () Bool)

(assert (=> b!6144267 (= e!3744300 (= lt!2333513 call!510512))))

(declare-fun b!6144268 () Bool)

(assert (=> b!6144268 (= e!3744298 (= (head!12695 (tail!11780 s!2326)) (c!1105061 (derivativeStep!4807 r!7292 (head!12695 s!2326)))))))

(declare-fun b!6144269 () Bool)

(declare-fun res!2545556 () Bool)

(assert (=> b!6144269 (=> res!2545556 e!3744302)))

(assert (=> b!6144269 (= res!2545556 (not (isEmpty!36392 (tail!11780 (tail!11780 s!2326)))))))

(declare-fun b!6144270 () Bool)

(assert (=> b!6144270 (= e!3744303 (matchR!8270 (derivativeStep!4807 (derivativeStep!4807 r!7292 (head!12695 s!2326)) (head!12695 (tail!11780 s!2326))) (tail!11780 (tail!11780 s!2326))))))

(declare-fun b!6144271 () Bool)

(declare-fun res!2545555 () Bool)

(assert (=> b!6144271 (=> (not res!2545555) (not e!3744298))))

(assert (=> b!6144271 (= res!2545555 (not call!510512))))

(assert (= (and d!1925069 c!1105416) b!6144266))

(assert (= (and d!1925069 (not c!1105416)) b!6144270))

(assert (= (and d!1925069 c!1105415) b!6144267))

(assert (= (and d!1925069 (not c!1105415)) b!6144263))

(assert (= (and b!6144263 c!1105414) b!6144264))

(assert (= (and b!6144263 (not c!1105414)) b!6144259))

(assert (= (and b!6144259 (not res!2545550)) b!6144258))

(assert (= (and b!6144258 res!2545553) b!6144271))

(assert (= (and b!6144271 res!2545555) b!6144262))

(assert (= (and b!6144262 res!2545554) b!6144268))

(assert (= (and b!6144258 (not res!2545549)) b!6144260))

(assert (= (and b!6144260 res!2545551) b!6144261))

(assert (= (and b!6144261 (not res!2545552)) b!6144269))

(assert (= (and b!6144269 (not res!2545556)) b!6144265))

(assert (= (or b!6144267 b!6144261 b!6144271) bm!510507))

(assert (=> b!6144270 m!6984332))

(declare-fun m!6985060 () Bool)

(assert (=> b!6144270 m!6985060))

(assert (=> b!6144270 m!6984330))

(assert (=> b!6144270 m!6985060))

(declare-fun m!6985062 () Bool)

(assert (=> b!6144270 m!6985062))

(assert (=> b!6144270 m!6984332))

(declare-fun m!6985064 () Bool)

(assert (=> b!6144270 m!6985064))

(assert (=> b!6144270 m!6985062))

(assert (=> b!6144270 m!6985064))

(declare-fun m!6985066 () Bool)

(assert (=> b!6144270 m!6985066))

(assert (=> d!1925069 m!6984332))

(assert (=> d!1925069 m!6984336))

(assert (=> d!1925069 m!6984330))

(declare-fun m!6985068 () Bool)

(assert (=> d!1925069 m!6985068))

(assert (=> b!6144262 m!6984332))

(assert (=> b!6144262 m!6985064))

(assert (=> b!6144262 m!6985064))

(declare-fun m!6985070 () Bool)

(assert (=> b!6144262 m!6985070))

(assert (=> b!6144265 m!6984332))

(assert (=> b!6144265 m!6985060))

(assert (=> bm!510507 m!6984332))

(assert (=> bm!510507 m!6984336))

(assert (=> b!6144269 m!6984332))

(assert (=> b!6144269 m!6985064))

(assert (=> b!6144269 m!6985064))

(assert (=> b!6144269 m!6985070))

(assert (=> b!6144268 m!6984332))

(assert (=> b!6144268 m!6985060))

(assert (=> b!6144266 m!6984330))

(declare-fun m!6985072 () Bool)

(assert (=> b!6144266 m!6985072))

(assert (=> b!6143426 d!1925069))

(declare-fun d!1925071 () Bool)

(declare-fun lt!2333516 () Regex!16087)

(assert (=> d!1925071 (validRegex!7823 lt!2333516)))

(declare-fun e!3744315 () Regex!16087)

(assert (=> d!1925071 (= lt!2333516 e!3744315)))

(declare-fun c!1105431 () Bool)

(assert (=> d!1925071 (= c!1105431 (or ((_ is EmptyExpr!16087) r!7292) ((_ is EmptyLang!16087) r!7292)))))

(assert (=> d!1925071 (validRegex!7823 r!7292)))

(assert (=> d!1925071 (= (derivativeStep!4807 r!7292 (head!12695 s!2326)) lt!2333516)))

(declare-fun b!6144292 () Bool)

(declare-fun e!3744316 () Regex!16087)

(declare-fun e!3744319 () Regex!16087)

(assert (=> b!6144292 (= e!3744316 e!3744319)))

(declare-fun c!1105429 () Bool)

(assert (=> b!6144292 (= c!1105429 ((_ is Star!16087) r!7292))))

(declare-fun b!6144293 () Bool)

(declare-fun call!510524 () Regex!16087)

(declare-fun call!510521 () Regex!16087)

(assert (=> b!6144293 (= e!3744316 (Union!16087 call!510524 call!510521))))

(declare-fun bm!510516 () Bool)

(declare-fun call!510522 () Regex!16087)

(assert (=> bm!510516 (= call!510522 call!510521)))

(declare-fun c!1105427 () Bool)

(declare-fun bm!510517 () Bool)

(assert (=> bm!510517 (= call!510521 (derivativeStep!4807 (ite c!1105427 (regTwo!32687 r!7292) (ite c!1105429 (reg!16416 r!7292) (regOne!32686 r!7292))) (head!12695 s!2326)))))

(declare-fun e!3744317 () Regex!16087)

(declare-fun b!6144294 () Bool)

(declare-fun call!510523 () Regex!16087)

(assert (=> b!6144294 (= e!3744317 (Union!16087 (Concat!24932 call!510522 (regTwo!32686 r!7292)) call!510523))))

(declare-fun b!6144295 () Bool)

(assert (=> b!6144295 (= e!3744315 EmptyLang!16087)))

(declare-fun b!6144296 () Bool)

(declare-fun e!3744318 () Regex!16087)

(assert (=> b!6144296 (= e!3744318 (ite (= (head!12695 s!2326) (c!1105061 r!7292)) EmptyExpr!16087 EmptyLang!16087))))

(declare-fun b!6144297 () Bool)

(assert (=> b!6144297 (= c!1105427 ((_ is Union!16087) r!7292))))

(assert (=> b!6144297 (= e!3744318 e!3744316)))

(declare-fun bm!510518 () Bool)

(assert (=> bm!510518 (= call!510523 call!510524)))

(declare-fun b!6144298 () Bool)

(assert (=> b!6144298 (= e!3744315 e!3744318)))

(declare-fun c!1105430 () Bool)

(assert (=> b!6144298 (= c!1105430 ((_ is ElementMatch!16087) r!7292))))

(declare-fun bm!510519 () Bool)

(declare-fun c!1105428 () Bool)

(assert (=> bm!510519 (= call!510524 (derivativeStep!4807 (ite c!1105427 (regOne!32687 r!7292) (ite c!1105428 (regTwo!32686 r!7292) (regOne!32686 r!7292))) (head!12695 s!2326)))))

(declare-fun b!6144299 () Bool)

(assert (=> b!6144299 (= c!1105428 (nullable!6080 (regOne!32686 r!7292)))))

(assert (=> b!6144299 (= e!3744319 e!3744317)))

(declare-fun b!6144300 () Bool)

(assert (=> b!6144300 (= e!3744317 (Union!16087 (Concat!24932 call!510523 (regTwo!32686 r!7292)) EmptyLang!16087))))

(declare-fun b!6144301 () Bool)

(assert (=> b!6144301 (= e!3744319 (Concat!24932 call!510522 r!7292))))

(assert (= (and d!1925071 c!1105431) b!6144295))

(assert (= (and d!1925071 (not c!1105431)) b!6144298))

(assert (= (and b!6144298 c!1105430) b!6144296))

(assert (= (and b!6144298 (not c!1105430)) b!6144297))

(assert (= (and b!6144297 c!1105427) b!6144293))

(assert (= (and b!6144297 (not c!1105427)) b!6144292))

(assert (= (and b!6144292 c!1105429) b!6144301))

(assert (= (and b!6144292 (not c!1105429)) b!6144299))

(assert (= (and b!6144299 c!1105428) b!6144294))

(assert (= (and b!6144299 (not c!1105428)) b!6144300))

(assert (= (or b!6144294 b!6144300) bm!510518))

(assert (= (or b!6144301 b!6144294) bm!510516))

(assert (= (or b!6144293 bm!510516) bm!510517))

(assert (= (or b!6144293 bm!510518) bm!510519))

(declare-fun m!6985074 () Bool)

(assert (=> d!1925071 m!6985074))

(assert (=> d!1925071 m!6984022))

(assert (=> bm!510517 m!6984328))

(declare-fun m!6985076 () Bool)

(assert (=> bm!510517 m!6985076))

(assert (=> bm!510519 m!6984328))

(declare-fun m!6985078 () Bool)

(assert (=> bm!510519 m!6985078))

(declare-fun m!6985080 () Bool)

(assert (=> b!6144299 m!6985080))

(assert (=> b!6143426 d!1925071))

(declare-fun d!1925073 () Bool)

(assert (=> d!1925073 (= (head!12695 s!2326) (h!70885 s!2326))))

(assert (=> b!6143426 d!1925073))

(declare-fun d!1925075 () Bool)

(assert (=> d!1925075 (= (tail!11780 s!2326) (t!378042 s!2326))))

(assert (=> b!6143426 d!1925075))

(declare-fun d!1925077 () Bool)

(assert (=> d!1925077 (= (isDefined!12681 lt!2333483) (not (isEmpty!36393 lt!2333483)))))

(declare-fun bs!1523450 () Bool)

(assert (= bs!1523450 d!1925077))

(declare-fun m!6985082 () Bool)

(assert (=> bs!1523450 m!6985082))

(assert (=> b!6143615 d!1925077))

(assert (=> d!1924753 d!1924757))

(declare-fun d!1925079 () Bool)

(assert (=> d!1925079 (= (flatMap!1592 z!1189 lambda!334869) (dynLambda!25394 lambda!334869 (h!70886 zl!343)))))

(assert (=> d!1925079 true))

(declare-fun _$13!3042 () Unit!157503)

(assert (=> d!1925079 (= (choose!45660 z!1189 (h!70886 zl!343) lambda!334869) _$13!3042)))

(declare-fun b_lambda!233857 () Bool)

(assert (=> (not b_lambda!233857) (not d!1925079)))

(declare-fun bs!1523451 () Bool)

(assert (= bs!1523451 d!1925079))

(assert (=> bs!1523451 m!6984004))

(assert (=> bs!1523451 m!6984398))

(assert (=> d!1924753 d!1925079))

(declare-fun d!1925081 () Bool)

(declare-fun lambda!334965 () Int)

(declare-fun exists!2433 ((InoxSet Context!10942) Int) Bool)

(assert (=> d!1925081 (= (nullableZipper!1868 ((_ map or) lt!2333383 lt!2333386)) (exists!2433 ((_ map or) lt!2333383 lt!2333386) lambda!334965))))

(declare-fun bs!1523452 () Bool)

(assert (= bs!1523452 d!1925081))

(declare-fun m!6985084 () Bool)

(assert (=> bs!1523452 m!6985084))

(assert (=> b!6143314 d!1925081))

(declare-fun d!1925083 () Bool)

(assert (=> d!1925083 (= (isEmpty!36393 (findConcatSeparation!2392 (regOne!32686 r!7292) (regTwo!32686 r!7292) Nil!64437 s!2326 s!2326)) (not ((_ is Some!15977) (findConcatSeparation!2392 (regOne!32686 r!7292) (regTwo!32686 r!7292) Nil!64437 s!2326 s!2326))))))

(assert (=> d!1924795 d!1925083))

(declare-fun d!1925085 () Bool)

(assert (=> d!1925085 (= (nullable!6080 (regOne!32686 (regTwo!32687 (regOne!32686 r!7292)))) (nullableFct!2044 (regOne!32686 (regTwo!32687 (regOne!32686 r!7292)))))))

(declare-fun bs!1523453 () Bool)

(assert (= bs!1523453 d!1925085))

(declare-fun m!6985086 () Bool)

(assert (=> bs!1523453 m!6985086))

(assert (=> b!6143540 d!1925085))

(declare-fun d!1925087 () Bool)

(declare-fun c!1105434 () Bool)

(assert (=> d!1925087 (= c!1105434 (isEmpty!36392 (tail!11780 (t!378042 s!2326))))))

(declare-fun e!3744320 () Bool)

(assert (=> d!1925087 (= (matchZipper!2099 (derivationStepZipper!2060 lt!2333383 (head!12695 (t!378042 s!2326))) (tail!11780 (t!378042 s!2326))) e!3744320)))

(declare-fun b!6144302 () Bool)

(assert (=> b!6144302 (= e!3744320 (nullableZipper!1868 (derivationStepZipper!2060 lt!2333383 (head!12695 (t!378042 s!2326)))))))

(declare-fun b!6144303 () Bool)

(assert (=> b!6144303 (= e!3744320 (matchZipper!2099 (derivationStepZipper!2060 (derivationStepZipper!2060 lt!2333383 (head!12695 (t!378042 s!2326))) (head!12695 (tail!11780 (t!378042 s!2326)))) (tail!11780 (tail!11780 (t!378042 s!2326)))))))

(assert (= (and d!1925087 c!1105434) b!6144302))

(assert (= (and d!1925087 (not c!1105434)) b!6144303))

(assert (=> d!1925087 m!6984304))

(declare-fun m!6985088 () Bool)

(assert (=> d!1925087 m!6985088))

(assert (=> b!6144302 m!6984302))

(declare-fun m!6985090 () Bool)

(assert (=> b!6144302 m!6985090))

(assert (=> b!6144303 m!6984304))

(declare-fun m!6985092 () Bool)

(assert (=> b!6144303 m!6985092))

(assert (=> b!6144303 m!6984302))

(assert (=> b!6144303 m!6985092))

(declare-fun m!6985094 () Bool)

(assert (=> b!6144303 m!6985094))

(assert (=> b!6144303 m!6984304))

(declare-fun m!6985096 () Bool)

(assert (=> b!6144303 m!6985096))

(assert (=> b!6144303 m!6985094))

(assert (=> b!6144303 m!6985096))

(declare-fun m!6985098 () Bool)

(assert (=> b!6144303 m!6985098))

(assert (=> b!6143313 d!1925087))

(declare-fun bs!1523454 () Bool)

(declare-fun d!1925089 () Bool)

(assert (= bs!1523454 (and d!1925089 b!6142915)))

(declare-fun lambda!334968 () Int)

(assert (=> bs!1523454 (= (= (head!12695 (t!378042 s!2326)) (h!70885 s!2326)) (= lambda!334968 lambda!334869))))

(assert (=> d!1925089 true))

(assert (=> d!1925089 (= (derivationStepZipper!2060 lt!2333383 (head!12695 (t!378042 s!2326))) (flatMap!1592 lt!2333383 lambda!334968))))

(declare-fun bs!1523455 () Bool)

(assert (= bs!1523455 d!1925089))

(declare-fun m!6985100 () Bool)

(assert (=> bs!1523455 m!6985100))

(assert (=> b!6143313 d!1925089))

(declare-fun d!1925091 () Bool)

(assert (=> d!1925091 (= (head!12695 (t!378042 s!2326)) (h!70885 (t!378042 s!2326)))))

(assert (=> b!6143313 d!1925091))

(declare-fun d!1925093 () Bool)

(assert (=> d!1925093 (= (tail!11780 (t!378042 s!2326)) (t!378042 (t!378042 s!2326)))))

(assert (=> b!6143313 d!1925093))

(assert (=> d!1924721 d!1924725))

(assert (=> d!1924721 d!1924723))

(declare-fun e!3744323 () Bool)

(declare-fun d!1925095 () Bool)

(assert (=> d!1925095 (= (matchZipper!2099 ((_ map or) lt!2333383 lt!2333386) (t!378042 s!2326)) e!3744323)))

(declare-fun res!2545559 () Bool)

(assert (=> d!1925095 (=> res!2545559 e!3744323)))

(assert (=> d!1925095 (= res!2545559 (matchZipper!2099 lt!2333383 (t!378042 s!2326)))))

(assert (=> d!1925095 true))

(declare-fun _$48!1660 () Unit!157503)

(assert (=> d!1925095 (= (choose!45658 lt!2333383 lt!2333386 (t!378042 s!2326)) _$48!1660)))

(declare-fun b!6144308 () Bool)

(assert (=> b!6144308 (= e!3744323 (matchZipper!2099 lt!2333386 (t!378042 s!2326)))))

(assert (= (and d!1925095 (not res!2545559)) b!6144308))

(assert (=> d!1925095 m!6983992))

(assert (=> d!1925095 m!6983990))

(assert (=> b!6144308 m!6984018))

(assert (=> d!1924721 d!1925095))

(declare-fun d!1925097 () Bool)

(assert (=> d!1925097 (= (nullable!6080 (h!70884 (exprs!5971 lt!2333388))) (nullableFct!2044 (h!70884 (exprs!5971 lt!2333388))))))

(declare-fun bs!1523456 () Bool)

(assert (= bs!1523456 d!1925097))

(declare-fun m!6985102 () Bool)

(assert (=> bs!1523456 m!6985102))

(assert (=> b!6143518 d!1925097))

(assert (=> d!1924797 d!1924791))

(declare-fun bm!510520 () Bool)

(declare-fun call!510525 () Bool)

(declare-fun call!510527 () Bool)

(assert (=> bm!510520 (= call!510525 call!510527)))

(declare-fun b!6144309 () Bool)

(declare-fun e!3744329 () Bool)

(declare-fun e!3744324 () Bool)

(assert (=> b!6144309 (= e!3744329 e!3744324)))

(declare-fun c!1105438 () Bool)

(assert (=> b!6144309 (= c!1105438 ((_ is Star!16087) (regOne!32686 r!7292)))))

(declare-fun c!1105437 () Bool)

(declare-fun bm!510521 () Bool)

(assert (=> bm!510521 (= call!510527 (validRegex!7823 (ite c!1105438 (reg!16416 (regOne!32686 r!7292)) (ite c!1105437 (regOne!32687 (regOne!32686 r!7292)) (regOne!32686 (regOne!32686 r!7292))))))))

(declare-fun b!6144310 () Bool)

(declare-fun e!3744327 () Bool)

(declare-fun call!510526 () Bool)

(assert (=> b!6144310 (= e!3744327 call!510526)))

(declare-fun b!6144311 () Bool)

(declare-fun e!3744328 () Bool)

(assert (=> b!6144311 (= e!3744324 e!3744328)))

(assert (=> b!6144311 (= c!1105437 ((_ is Union!16087) (regOne!32686 r!7292)))))

(declare-fun b!6144312 () Bool)

(declare-fun res!2545560 () Bool)

(declare-fun e!3744326 () Bool)

(assert (=> b!6144312 (=> (not res!2545560) (not e!3744326))))

(assert (=> b!6144312 (= res!2545560 call!510525)))

(assert (=> b!6144312 (= e!3744328 e!3744326)))

(declare-fun b!6144313 () Bool)

(assert (=> b!6144313 (= e!3744326 call!510526)))

(declare-fun b!6144314 () Bool)

(declare-fun res!2545563 () Bool)

(declare-fun e!3744330 () Bool)

(assert (=> b!6144314 (=> res!2545563 e!3744330)))

(assert (=> b!6144314 (= res!2545563 (not ((_ is Concat!24932) (regOne!32686 r!7292))))))

(assert (=> b!6144314 (= e!3744328 e!3744330)))

(declare-fun b!6144315 () Bool)

(declare-fun e!3744325 () Bool)

(assert (=> b!6144315 (= e!3744324 e!3744325)))

(declare-fun res!2545561 () Bool)

(assert (=> b!6144315 (= res!2545561 (not (nullable!6080 (reg!16416 (regOne!32686 r!7292)))))))

(assert (=> b!6144315 (=> (not res!2545561) (not e!3744325))))

(declare-fun b!6144316 () Bool)

(assert (=> b!6144316 (= e!3744330 e!3744327)))

(declare-fun res!2545564 () Bool)

(assert (=> b!6144316 (=> (not res!2545564) (not e!3744327))))

(assert (=> b!6144316 (= res!2545564 call!510525)))

(declare-fun b!6144317 () Bool)

(assert (=> b!6144317 (= e!3744325 call!510527)))

(declare-fun d!1925099 () Bool)

(declare-fun res!2545562 () Bool)

(assert (=> d!1925099 (=> res!2545562 e!3744329)))

(assert (=> d!1925099 (= res!2545562 ((_ is ElementMatch!16087) (regOne!32686 r!7292)))))

(assert (=> d!1925099 (= (validRegex!7823 (regOne!32686 r!7292)) e!3744329)))

(declare-fun bm!510522 () Bool)

(assert (=> bm!510522 (= call!510526 (validRegex!7823 (ite c!1105437 (regTwo!32687 (regOne!32686 r!7292)) (regTwo!32686 (regOne!32686 r!7292)))))))

(assert (= (and d!1925099 (not res!2545562)) b!6144309))

(assert (= (and b!6144309 c!1105438) b!6144315))

(assert (= (and b!6144309 (not c!1105438)) b!6144311))

(assert (= (and b!6144315 res!2545561) b!6144317))

(assert (= (and b!6144311 c!1105437) b!6144312))

(assert (= (and b!6144311 (not c!1105437)) b!6144314))

(assert (= (and b!6144312 res!2545560) b!6144313))

(assert (= (and b!6144314 (not res!2545563)) b!6144316))

(assert (= (and b!6144316 res!2545564) b!6144310))

(assert (= (or b!6144313 b!6144310) bm!510522))

(assert (= (or b!6144312 b!6144316) bm!510520))

(assert (= (or b!6144317 bm!510520) bm!510521))

(declare-fun m!6985104 () Bool)

(assert (=> bm!510521 m!6985104))

(declare-fun m!6985106 () Bool)

(assert (=> b!6144315 m!6985106))

(declare-fun m!6985108 () Bool)

(assert (=> bm!510522 m!6985108))

(assert (=> d!1924797 d!1925099))

(assert (=> d!1924797 d!1924795))

(declare-fun d!1925101 () Bool)

(assert (=> d!1925101 (= (Exists!3157 lambda!334927) (choose!45665 lambda!334927))))

(declare-fun bs!1523457 () Bool)

(assert (= bs!1523457 d!1925101))

(declare-fun m!6985110 () Bool)

(assert (=> bs!1523457 m!6985110))

(assert (=> d!1924797 d!1925101))

(declare-fun bs!1523458 () Bool)

(declare-fun d!1925103 () Bool)

(assert (= bs!1523458 (and d!1925103 b!6142895)))

(declare-fun lambda!334971 () Int)

(assert (=> bs!1523458 (not (= lambda!334971 lambda!334868))))

(declare-fun bs!1523459 () Bool)

(assert (= bs!1523459 (and d!1925103 d!1924793)))

(assert (=> bs!1523459 (= lambda!334971 lambda!334923)))

(declare-fun bs!1523460 () Bool)

(assert (= bs!1523460 (and d!1925103 b!6143379)))

(assert (=> bs!1523460 (not (= lambda!334971 lambda!334904))))

(assert (=> bs!1523459 (not (= lambda!334971 lambda!334924))))

(declare-fun bs!1523461 () Bool)

(assert (= bs!1523461 (and d!1925103 d!1924797)))

(assert (=> bs!1523461 (= lambda!334971 lambda!334927)))

(declare-fun bs!1523462 () Bool)

(assert (= bs!1523462 (and d!1925103 b!6143383)))

(assert (=> bs!1523462 (not (= lambda!334971 lambda!334903))))

(assert (=> bs!1523458 (= lambda!334971 lambda!334867)))

(assert (=> d!1925103 true))

(assert (=> d!1925103 true))

(assert (=> d!1925103 true))

(assert (=> d!1925103 (= (isDefined!12681 (findConcatSeparation!2392 (regOne!32686 r!7292) (regTwo!32686 r!7292) Nil!64437 s!2326 s!2326)) (Exists!3157 lambda!334971))))

(assert (=> d!1925103 true))

(declare-fun _$89!2242 () Unit!157503)

(assert (=> d!1925103 (= (choose!45664 (regOne!32686 r!7292) (regTwo!32686 r!7292) s!2326) _$89!2242)))

(declare-fun bs!1523463 () Bool)

(assert (= bs!1523463 d!1925103))

(assert (=> bs!1523463 m!6984034))

(assert (=> bs!1523463 m!6984034))

(assert (=> bs!1523463 m!6984036))

(declare-fun m!6985112 () Bool)

(assert (=> bs!1523463 m!6985112))

(assert (=> d!1924797 d!1925103))

(assert (=> bs!1523280 d!1924767))

(declare-fun bm!510523 () Bool)

(declare-fun call!510528 () Bool)

(declare-fun call!510530 () Bool)

(assert (=> bm!510523 (= call!510528 call!510530)))

(declare-fun b!6144322 () Bool)

(declare-fun e!3744338 () Bool)

(declare-fun e!3744333 () Bool)

(assert (=> b!6144322 (= e!3744338 e!3744333)))

(declare-fun c!1105440 () Bool)

(assert (=> b!6144322 (= c!1105440 ((_ is Star!16087) lt!2333472))))

(declare-fun c!1105439 () Bool)

(declare-fun bm!510524 () Bool)

(assert (=> bm!510524 (= call!510530 (validRegex!7823 (ite c!1105440 (reg!16416 lt!2333472) (ite c!1105439 (regOne!32687 lt!2333472) (regOne!32686 lt!2333472)))))))

(declare-fun b!6144323 () Bool)

(declare-fun e!3744336 () Bool)

(declare-fun call!510529 () Bool)

(assert (=> b!6144323 (= e!3744336 call!510529)))

(declare-fun b!6144324 () Bool)

(declare-fun e!3744337 () Bool)

(assert (=> b!6144324 (= e!3744333 e!3744337)))

(assert (=> b!6144324 (= c!1105439 ((_ is Union!16087) lt!2333472))))

(declare-fun b!6144325 () Bool)

(declare-fun res!2545569 () Bool)

(declare-fun e!3744335 () Bool)

(assert (=> b!6144325 (=> (not res!2545569) (not e!3744335))))

(assert (=> b!6144325 (= res!2545569 call!510528)))

(assert (=> b!6144325 (= e!3744337 e!3744335)))

(declare-fun b!6144326 () Bool)

(assert (=> b!6144326 (= e!3744335 call!510529)))

(declare-fun b!6144327 () Bool)

(declare-fun res!2545572 () Bool)

(declare-fun e!3744339 () Bool)

(assert (=> b!6144327 (=> res!2545572 e!3744339)))

(assert (=> b!6144327 (= res!2545572 (not ((_ is Concat!24932) lt!2333472)))))

(assert (=> b!6144327 (= e!3744337 e!3744339)))

(declare-fun b!6144328 () Bool)

(declare-fun e!3744334 () Bool)

(assert (=> b!6144328 (= e!3744333 e!3744334)))

(declare-fun res!2545570 () Bool)

(assert (=> b!6144328 (= res!2545570 (not (nullable!6080 (reg!16416 lt!2333472))))))

(assert (=> b!6144328 (=> (not res!2545570) (not e!3744334))))

(declare-fun b!6144329 () Bool)

(assert (=> b!6144329 (= e!3744339 e!3744336)))

(declare-fun res!2545573 () Bool)

(assert (=> b!6144329 (=> (not res!2545573) (not e!3744336))))

(assert (=> b!6144329 (= res!2545573 call!510528)))

(declare-fun b!6144330 () Bool)

(assert (=> b!6144330 (= e!3744334 call!510530)))

(declare-fun d!1925105 () Bool)

(declare-fun res!2545571 () Bool)

(assert (=> d!1925105 (=> res!2545571 e!3744338)))

(assert (=> d!1925105 (= res!2545571 ((_ is ElementMatch!16087) lt!2333472))))

(assert (=> d!1925105 (= (validRegex!7823 lt!2333472) e!3744338)))

(declare-fun bm!510525 () Bool)

(assert (=> bm!510525 (= call!510529 (validRegex!7823 (ite c!1105439 (regTwo!32687 lt!2333472) (regTwo!32686 lt!2333472))))))

(assert (= (and d!1925105 (not res!2545571)) b!6144322))

(assert (= (and b!6144322 c!1105440) b!6144328))

(assert (= (and b!6144322 (not c!1105440)) b!6144324))

(assert (= (and b!6144328 res!2545570) b!6144330))

(assert (= (and b!6144324 c!1105439) b!6144325))

(assert (= (and b!6144324 (not c!1105439)) b!6144327))

(assert (= (and b!6144325 res!2545569) b!6144326))

(assert (= (and b!6144327 (not res!2545572)) b!6144329))

(assert (= (and b!6144329 res!2545573) b!6144323))

(assert (= (or b!6144326 b!6144323) bm!510525))

(assert (= (or b!6144325 b!6144329) bm!510523))

(assert (= (or b!6144330 bm!510523) bm!510524))

(declare-fun m!6985114 () Bool)

(assert (=> bm!510524 m!6985114))

(declare-fun m!6985116 () Bool)

(assert (=> b!6144328 m!6985116))

(declare-fun m!6985118 () Bool)

(assert (=> bm!510525 m!6985118))

(assert (=> d!1924785 d!1925105))

(assert (=> d!1924785 d!1924743))

(assert (=> d!1924785 d!1924745))

(declare-fun b!6144345 () Bool)

(declare-fun e!3744352 () Bool)

(declare-fun e!3744353 () Bool)

(assert (=> b!6144345 (= e!3744352 e!3744353)))

(declare-fun res!2545586 () Bool)

(declare-fun call!510536 () Bool)

(assert (=> b!6144345 (= res!2545586 call!510536)))

(assert (=> b!6144345 (=> res!2545586 e!3744353)))

(declare-fun b!6144346 () Bool)

(declare-fun e!3744355 () Bool)

(assert (=> b!6144346 (= e!3744355 e!3744352)))

(declare-fun c!1105443 () Bool)

(assert (=> b!6144346 (= c!1105443 ((_ is Union!16087) (h!70884 (exprs!5971 (h!70886 zl!343)))))))

(declare-fun b!6144347 () Bool)

(declare-fun e!3744354 () Bool)

(declare-fun e!3744356 () Bool)

(assert (=> b!6144347 (= e!3744354 e!3744356)))

(declare-fun res!2545588 () Bool)

(assert (=> b!6144347 (=> (not res!2545588) (not e!3744356))))

(assert (=> b!6144347 (= res!2545588 (and (not ((_ is EmptyLang!16087) (h!70884 (exprs!5971 (h!70886 zl!343))))) (not ((_ is ElementMatch!16087) (h!70884 (exprs!5971 (h!70886 zl!343)))))))))

(declare-fun b!6144348 () Bool)

(assert (=> b!6144348 (= e!3744356 e!3744355)))

(declare-fun res!2545587 () Bool)

(assert (=> b!6144348 (=> res!2545587 e!3744355)))

(assert (=> b!6144348 (= res!2545587 ((_ is Star!16087) (h!70884 (exprs!5971 (h!70886 zl!343)))))))

(declare-fun b!6144349 () Bool)

(declare-fun call!510535 () Bool)

(assert (=> b!6144349 (= e!3744353 call!510535)))

(declare-fun b!6144350 () Bool)

(declare-fun e!3744357 () Bool)

(assert (=> b!6144350 (= e!3744357 call!510535)))

(declare-fun b!6144351 () Bool)

(assert (=> b!6144351 (= e!3744352 e!3744357)))

(declare-fun res!2545585 () Bool)

(assert (=> b!6144351 (= res!2545585 call!510536)))

(assert (=> b!6144351 (=> (not res!2545585) (not e!3744357))))

(declare-fun bm!510530 () Bool)

(assert (=> bm!510530 (= call!510535 (nullable!6080 (ite c!1105443 (regTwo!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (regTwo!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))))))))

(declare-fun d!1925107 () Bool)

(declare-fun res!2545584 () Bool)

(assert (=> d!1925107 (=> res!2545584 e!3744354)))

(assert (=> d!1925107 (= res!2545584 ((_ is EmptyExpr!16087) (h!70884 (exprs!5971 (h!70886 zl!343)))))))

(assert (=> d!1925107 (= (nullableFct!2044 (h!70884 (exprs!5971 (h!70886 zl!343)))) e!3744354)))

(declare-fun bm!510531 () Bool)

(assert (=> bm!510531 (= call!510536 (nullable!6080 (ite c!1105443 (regOne!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))))))))

(assert (= (and d!1925107 (not res!2545584)) b!6144347))

(assert (= (and b!6144347 res!2545588) b!6144348))

(assert (= (and b!6144348 (not res!2545587)) b!6144346))

(assert (= (and b!6144346 c!1105443) b!6144345))

(assert (= (and b!6144346 (not c!1105443)) b!6144351))

(assert (= (and b!6144345 (not res!2545586)) b!6144349))

(assert (= (and b!6144351 res!2545585) b!6144350))

(assert (= (or b!6144349 b!6144350) bm!510530))

(assert (= (or b!6144345 b!6144351) bm!510531))

(declare-fun m!6985120 () Bool)

(assert (=> bm!510530 m!6985120))

(declare-fun m!6985122 () Bool)

(assert (=> bm!510531 m!6985122))

(assert (=> d!1924747 d!1925107))

(declare-fun d!1925109 () Bool)

(assert (=> d!1925109 (= (isEmpty!36392 (tail!11780 s!2326)) ((_ is Nil!64437) (tail!11780 s!2326)))))

(assert (=> b!6143418 d!1925109))

(assert (=> b!6143418 d!1925075))

(declare-fun d!1925111 () Bool)

(assert (=> d!1925111 (= (nullable!6080 (reg!16416 r!7292)) (nullableFct!2044 (reg!16416 r!7292)))))

(declare-fun bs!1523464 () Bool)

(assert (= bs!1523464 d!1925111))

(declare-fun m!6985124 () Bool)

(assert (=> bs!1523464 m!6985124))

(assert (=> b!6143340 d!1925111))

(assert (=> d!1924737 d!1925055))

(assert (=> b!6143421 d!1925073))

(declare-fun b!6144352 () Bool)

(declare-fun e!3744358 () (InoxSet Context!10942))

(declare-fun call!510537 () (InoxSet Context!10942))

(assert (=> b!6144352 (= e!3744358 ((_ map or) call!510537 (derivationStepZipperUp!1261 (Context!10943 (t!378041 (exprs!5971 (Context!10943 (t!378041 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343))))))))))) (h!70885 s!2326))))))

(declare-fun b!6144353 () Bool)

(declare-fun e!3744359 () (InoxSet Context!10942))

(assert (=> b!6144353 (= e!3744359 call!510537)))

(declare-fun b!6144354 () Bool)

(declare-fun e!3744360 () Bool)

(assert (=> b!6144354 (= e!3744360 (nullable!6080 (h!70884 (exprs!5971 (Context!10943 (t!378041 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343))))))))))))))

(declare-fun bm!510532 () Bool)

(assert (=> bm!510532 (= call!510537 (derivationStepZipperDown!1335 (h!70884 (exprs!5971 (Context!10943 (t!378041 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343)))))))))) (Context!10943 (t!378041 (exprs!5971 (Context!10943 (t!378041 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343))))))))))) (h!70885 s!2326)))))

(declare-fun b!6144355 () Bool)

(assert (=> b!6144355 (= e!3744359 ((as const (Array Context!10942 Bool)) false))))

(declare-fun b!6144356 () Bool)

(assert (=> b!6144356 (= e!3744358 e!3744359)))

(declare-fun c!1105445 () Bool)

(assert (=> b!6144356 (= c!1105445 ((_ is Cons!64436) (exprs!5971 (Context!10943 (t!378041 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343)))))))))))))

(declare-fun d!1925113 () Bool)

(declare-fun c!1105444 () Bool)

(assert (=> d!1925113 (= c!1105444 e!3744360)))

(declare-fun res!2545589 () Bool)

(assert (=> d!1925113 (=> (not res!2545589) (not e!3744360))))

(assert (=> d!1925113 (= res!2545589 ((_ is Cons!64436) (exprs!5971 (Context!10943 (t!378041 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343)))))))))))))

(assert (=> d!1925113 (= (derivationStepZipperUp!1261 (Context!10943 (t!378041 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343)))))))) (h!70885 s!2326)) e!3744358)))

(assert (= (and d!1925113 res!2545589) b!6144354))

(assert (= (and d!1925113 c!1105444) b!6144352))

(assert (= (and d!1925113 (not c!1105444)) b!6144356))

(assert (= (and b!6144356 c!1105445) b!6144353))

(assert (= (and b!6144356 (not c!1105445)) b!6144355))

(assert (= (or b!6144352 b!6144353) bm!510532))

(declare-fun m!6985126 () Bool)

(assert (=> b!6144352 m!6985126))

(declare-fun m!6985128 () Bool)

(assert (=> b!6144354 m!6985128))

(declare-fun m!6985130 () Bool)

(assert (=> bm!510532 m!6985130))

(assert (=> b!6143478 d!1925113))

(declare-fun bs!1523465 () Bool)

(declare-fun d!1925115 () Bool)

(assert (= bs!1523465 (and d!1925115 d!1924775)))

(declare-fun lambda!334972 () Int)

(assert (=> bs!1523465 (= lambda!334972 lambda!334917)))

(declare-fun bs!1523466 () Bool)

(assert (= bs!1523466 (and d!1925115 d!1924743)))

(assert (=> bs!1523466 (= lambda!334972 lambda!334910)))

(declare-fun bs!1523467 () Bool)

(assert (= bs!1523467 (and d!1925115 d!1924761)))

(assert (=> bs!1523467 (= lambda!334972 lambda!334914)))

(declare-fun bs!1523468 () Bool)

(assert (= bs!1523468 (and d!1925115 d!1924787)))

(assert (=> bs!1523468 (= lambda!334972 lambda!334918)))

(declare-fun bs!1523469 () Bool)

(assert (= bs!1523469 (and d!1925115 d!1924745)))

(assert (=> bs!1523469 (= lambda!334972 lambda!334913)))

(declare-fun bs!1523470 () Bool)

(assert (= bs!1523470 (and d!1925115 d!1924739)))

(assert (=> bs!1523470 (= lambda!334972 lambda!334907)))

(declare-fun bs!1523471 () Bool)

(assert (= bs!1523471 (and d!1925115 d!1925059)))

(assert (=> bs!1523471 (= lambda!334972 lambda!334962)))

(assert (=> d!1925115 (= (inv!83464 (h!70886 (t!378043 zl!343))) (forall!15208 (exprs!5971 (h!70886 (t!378043 zl!343))) lambda!334972))))

(declare-fun bs!1523472 () Bool)

(assert (= bs!1523472 d!1925115))

(declare-fun m!6985132 () Bool)

(assert (=> bs!1523472 m!6985132))

(assert (=> b!6143636 d!1925115))

(declare-fun d!1925117 () Bool)

(declare-fun c!1105446 () Bool)

(assert (=> d!1925117 (= c!1105446 (isEmpty!36392 (tail!11780 (t!378042 s!2326))))))

(declare-fun e!3744361 () Bool)

(assert (=> d!1925117 (= (matchZipper!2099 (derivationStepZipper!2060 lt!2333394 (head!12695 (t!378042 s!2326))) (tail!11780 (t!378042 s!2326))) e!3744361)))

(declare-fun b!6144357 () Bool)

(assert (=> b!6144357 (= e!3744361 (nullableZipper!1868 (derivationStepZipper!2060 lt!2333394 (head!12695 (t!378042 s!2326)))))))

(declare-fun b!6144358 () Bool)

(assert (=> b!6144358 (= e!3744361 (matchZipper!2099 (derivationStepZipper!2060 (derivationStepZipper!2060 lt!2333394 (head!12695 (t!378042 s!2326))) (head!12695 (tail!11780 (t!378042 s!2326)))) (tail!11780 (tail!11780 (t!378042 s!2326)))))))

(assert (= (and d!1925117 c!1105446) b!6144357))

(assert (= (and d!1925117 (not c!1105446)) b!6144358))

(assert (=> d!1925117 m!6984304))

(assert (=> d!1925117 m!6985088))

(assert (=> b!6144357 m!6984344))

(declare-fun m!6985134 () Bool)

(assert (=> b!6144357 m!6985134))

(assert (=> b!6144358 m!6984304))

(assert (=> b!6144358 m!6985092))

(assert (=> b!6144358 m!6984344))

(assert (=> b!6144358 m!6985092))

(declare-fun m!6985136 () Bool)

(assert (=> b!6144358 m!6985136))

(assert (=> b!6144358 m!6984304))

(assert (=> b!6144358 m!6985096))

(assert (=> b!6144358 m!6985136))

(assert (=> b!6144358 m!6985096))

(declare-fun m!6985138 () Bool)

(assert (=> b!6144358 m!6985138))

(assert (=> b!6143429 d!1925117))

(declare-fun bs!1523473 () Bool)

(declare-fun d!1925119 () Bool)

(assert (= bs!1523473 (and d!1925119 b!6142915)))

(declare-fun lambda!334973 () Int)

(assert (=> bs!1523473 (= (= (head!12695 (t!378042 s!2326)) (h!70885 s!2326)) (= lambda!334973 lambda!334869))))

(declare-fun bs!1523474 () Bool)

(assert (= bs!1523474 (and d!1925119 d!1925089)))

(assert (=> bs!1523474 (= lambda!334973 lambda!334968)))

(assert (=> d!1925119 true))

(assert (=> d!1925119 (= (derivationStepZipper!2060 lt!2333394 (head!12695 (t!378042 s!2326))) (flatMap!1592 lt!2333394 lambda!334973))))

(declare-fun bs!1523475 () Bool)

(assert (= bs!1523475 d!1925119))

(declare-fun m!6985140 () Bool)

(assert (=> bs!1523475 m!6985140))

(assert (=> b!6143429 d!1925119))

(assert (=> b!6143429 d!1925091))

(assert (=> b!6143429 d!1925093))

(declare-fun d!1925121 () Bool)

(assert (=> d!1925121 (= (isEmpty!36389 (unfocusZipperList!1508 zl!343)) ((_ is Nil!64436) (unfocusZipperList!1508 zl!343)))))

(assert (=> b!6143453 d!1925121))

(declare-fun b!6144367 () Bool)

(declare-fun e!3744367 () List!64561)

(assert (=> b!6144367 (= e!3744367 (_2!36369 (get!22232 lt!2333483)))))

(declare-fun b!6144368 () Bool)

(assert (=> b!6144368 (= e!3744367 (Cons!64437 (h!70885 (_1!36369 (get!22232 lt!2333483))) (++!14173 (t!378042 (_1!36369 (get!22232 lt!2333483))) (_2!36369 (get!22232 lt!2333483)))))))

(declare-fun b!6144370 () Bool)

(declare-fun e!3744366 () Bool)

(declare-fun lt!2333519 () List!64561)

(assert (=> b!6144370 (= e!3744366 (or (not (= (_2!36369 (get!22232 lt!2333483)) Nil!64437)) (= lt!2333519 (_1!36369 (get!22232 lt!2333483)))))))

(declare-fun d!1925123 () Bool)

(assert (=> d!1925123 e!3744366))

(declare-fun res!2545595 () Bool)

(assert (=> d!1925123 (=> (not res!2545595) (not e!3744366))))

(declare-fun content!11998 (List!64561) (InoxSet C!32444))

(assert (=> d!1925123 (= res!2545595 (= (content!11998 lt!2333519) ((_ map or) (content!11998 (_1!36369 (get!22232 lt!2333483))) (content!11998 (_2!36369 (get!22232 lt!2333483))))))))

(assert (=> d!1925123 (= lt!2333519 e!3744367)))

(declare-fun c!1105449 () Bool)

(assert (=> d!1925123 (= c!1105449 ((_ is Nil!64437) (_1!36369 (get!22232 lt!2333483))))))

(assert (=> d!1925123 (= (++!14173 (_1!36369 (get!22232 lt!2333483)) (_2!36369 (get!22232 lt!2333483))) lt!2333519)))

(declare-fun b!6144369 () Bool)

(declare-fun res!2545594 () Bool)

(assert (=> b!6144369 (=> (not res!2545594) (not e!3744366))))

(declare-fun size!40229 (List!64561) Int)

(assert (=> b!6144369 (= res!2545594 (= (size!40229 lt!2333519) (+ (size!40229 (_1!36369 (get!22232 lt!2333483))) (size!40229 (_2!36369 (get!22232 lt!2333483))))))))

(assert (= (and d!1925123 c!1105449) b!6144367))

(assert (= (and d!1925123 (not c!1105449)) b!6144368))

(assert (= (and d!1925123 res!2545595) b!6144369))

(assert (= (and b!6144369 res!2545594) b!6144370))

(declare-fun m!6985142 () Bool)

(assert (=> b!6144368 m!6985142))

(declare-fun m!6985144 () Bool)

(assert (=> d!1925123 m!6985144))

(declare-fun m!6985146 () Bool)

(assert (=> d!1925123 m!6985146))

(declare-fun m!6985148 () Bool)

(assert (=> d!1925123 m!6985148))

(declare-fun m!6985150 () Bool)

(assert (=> b!6144369 m!6985150))

(declare-fun m!6985152 () Bool)

(assert (=> b!6144369 m!6985152))

(declare-fun m!6985154 () Bool)

(assert (=> b!6144369 m!6985154))

(assert (=> b!6143610 d!1925123))

(declare-fun d!1925125 () Bool)

(assert (=> d!1925125 (= (get!22232 lt!2333483) (v!52116 lt!2333483))))

(assert (=> b!6143610 d!1925125))

(assert (=> d!1924779 d!1925055))

(declare-fun d!1925127 () Bool)

(declare-fun c!1105450 () Bool)

(assert (=> d!1925127 (= c!1105450 (isEmpty!36392 (tail!11780 (t!378042 s!2326))))))

(declare-fun e!3744368 () Bool)

(assert (=> d!1925127 (= (matchZipper!2099 (derivationStepZipper!2060 lt!2333399 (head!12695 (t!378042 s!2326))) (tail!11780 (t!378042 s!2326))) e!3744368)))

(declare-fun b!6144371 () Bool)

(assert (=> b!6144371 (= e!3744368 (nullableZipper!1868 (derivationStepZipper!2060 lt!2333399 (head!12695 (t!378042 s!2326)))))))

(declare-fun b!6144372 () Bool)

(assert (=> b!6144372 (= e!3744368 (matchZipper!2099 (derivationStepZipper!2060 (derivationStepZipper!2060 lt!2333399 (head!12695 (t!378042 s!2326))) (head!12695 (tail!11780 (t!378042 s!2326)))) (tail!11780 (tail!11780 (t!378042 s!2326)))))))

(assert (= (and d!1925127 c!1105450) b!6144371))

(assert (= (and d!1925127 (not c!1105450)) b!6144372))

(assert (=> d!1925127 m!6984304))

(assert (=> d!1925127 m!6985088))

(assert (=> b!6144371 m!6984468))

(declare-fun m!6985156 () Bool)

(assert (=> b!6144371 m!6985156))

(assert (=> b!6144372 m!6984304))

(assert (=> b!6144372 m!6985092))

(assert (=> b!6144372 m!6984468))

(assert (=> b!6144372 m!6985092))

(declare-fun m!6985158 () Bool)

(assert (=> b!6144372 m!6985158))

(assert (=> b!6144372 m!6984304))

(assert (=> b!6144372 m!6985096))

(assert (=> b!6144372 m!6985158))

(assert (=> b!6144372 m!6985096))

(declare-fun m!6985160 () Bool)

(assert (=> b!6144372 m!6985160))

(assert (=> b!6143584 d!1925127))

(declare-fun bs!1523476 () Bool)

(declare-fun d!1925129 () Bool)

(assert (= bs!1523476 (and d!1925129 b!6142915)))

(declare-fun lambda!334974 () Int)

(assert (=> bs!1523476 (= (= (head!12695 (t!378042 s!2326)) (h!70885 s!2326)) (= lambda!334974 lambda!334869))))

(declare-fun bs!1523477 () Bool)

(assert (= bs!1523477 (and d!1925129 d!1925089)))

(assert (=> bs!1523477 (= lambda!334974 lambda!334968)))

(declare-fun bs!1523478 () Bool)

(assert (= bs!1523478 (and d!1925129 d!1925119)))

(assert (=> bs!1523478 (= lambda!334974 lambda!334973)))

(assert (=> d!1925129 true))

(assert (=> d!1925129 (= (derivationStepZipper!2060 lt!2333399 (head!12695 (t!378042 s!2326))) (flatMap!1592 lt!2333399 lambda!334974))))

(declare-fun bs!1523479 () Bool)

(assert (= bs!1523479 d!1925129))

(declare-fun m!6985162 () Bool)

(assert (=> bs!1523479 m!6985162))

(assert (=> b!6143584 d!1925129))

(assert (=> b!6143584 d!1925091))

(assert (=> b!6143584 d!1925093))

(assert (=> b!6143425 d!1925109))

(assert (=> b!6143425 d!1925075))

(declare-fun call!510543 () (InoxSet Context!10942))

(declare-fun call!510539 () List!64560)

(declare-fun c!1105453 () Bool)

(declare-fun bm!510533 () Bool)

(assert (=> bm!510533 (= call!510543 (derivationStepZipperDown!1335 (ite c!1105453 (regTwo!32687 (ite c!1105244 (regOne!32687 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105242 (regTwo!32686 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105243 (regOne!32686 (regTwo!32687 (regOne!32686 r!7292))) (reg!16416 (regTwo!32687 (regOne!32686 r!7292))))))) (regOne!32686 (ite c!1105244 (regOne!32687 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105242 (regTwo!32686 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105243 (regOne!32686 (regTwo!32687 (regOne!32686 r!7292))) (reg!16416 (regTwo!32687 (regOne!32686 r!7292)))))))) (ite c!1105453 (ite (or c!1105244 c!1105242) lt!2333388 (Context!10943 call!510393)) (Context!10943 call!510539)) (h!70885 s!2326)))))

(declare-fun b!6144373 () Bool)

(declare-fun c!1105454 () Bool)

(assert (=> b!6144373 (= c!1105454 ((_ is Star!16087) (ite c!1105244 (regOne!32687 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105242 (regTwo!32686 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105243 (regOne!32686 (regTwo!32687 (regOne!32686 r!7292))) (reg!16416 (regTwo!32687 (regOne!32686 r!7292))))))))))

(declare-fun e!3744374 () (InoxSet Context!10942))

(declare-fun e!3744370 () (InoxSet Context!10942))

(assert (=> b!6144373 (= e!3744374 e!3744370)))

(declare-fun b!6144374 () Bool)

(declare-fun call!510540 () (InoxSet Context!10942))

(assert (=> b!6144374 (= e!3744370 call!510540)))

(declare-fun b!6144375 () Bool)

(declare-fun e!3744372 () (InoxSet Context!10942))

(assert (=> b!6144375 (= e!3744372 e!3744374)))

(declare-fun c!1105452 () Bool)

(assert (=> b!6144375 (= c!1105452 ((_ is Concat!24932) (ite c!1105244 (regOne!32687 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105242 (regTwo!32686 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105243 (regOne!32686 (regTwo!32687 (regOne!32686 r!7292))) (reg!16416 (regTwo!32687 (regOne!32686 r!7292))))))))))

(declare-fun b!6144376 () Bool)

(declare-fun c!1105451 () Bool)

(declare-fun e!3744373 () Bool)

(assert (=> b!6144376 (= c!1105451 e!3744373)))

(declare-fun res!2545596 () Bool)

(assert (=> b!6144376 (=> (not res!2545596) (not e!3744373))))

(assert (=> b!6144376 (= res!2545596 ((_ is Concat!24932) (ite c!1105244 (regOne!32687 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105242 (regTwo!32686 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105243 (regOne!32686 (regTwo!32687 (regOne!32686 r!7292))) (reg!16416 (regTwo!32687 (regOne!32686 r!7292))))))))))

(declare-fun e!3744371 () (InoxSet Context!10942))

(assert (=> b!6144376 (= e!3744371 e!3744372)))

(declare-fun b!6144377 () Bool)

(assert (=> b!6144377 (= e!3744370 ((as const (Array Context!10942 Bool)) false))))

(declare-fun b!6144378 () Bool)

(declare-fun e!3744369 () (InoxSet Context!10942))

(assert (=> b!6144378 (= e!3744369 e!3744371)))

(assert (=> b!6144378 (= c!1105453 ((_ is Union!16087) (ite c!1105244 (regOne!32687 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105242 (regTwo!32686 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105243 (regOne!32686 (regTwo!32687 (regOne!32686 r!7292))) (reg!16416 (regTwo!32687 (regOne!32686 r!7292))))))))))

(declare-fun b!6144379 () Bool)

(declare-fun call!510541 () (InoxSet Context!10942))

(assert (=> b!6144379 (= e!3744372 ((_ map or) call!510543 call!510541))))

(declare-fun bm!510534 () Bool)

(declare-fun call!510538 () (InoxSet Context!10942))

(assert (=> bm!510534 (= call!510541 call!510538)))

(declare-fun b!6144380 () Bool)

(assert (=> b!6144380 (= e!3744374 call!510540)))

(declare-fun bm!510536 () Bool)

(assert (=> bm!510536 (= call!510540 call!510541)))

(declare-fun b!6144381 () Bool)

(assert (=> b!6144381 (= e!3744369 (store ((as const (Array Context!10942 Bool)) false) (ite (or c!1105244 c!1105242) lt!2333388 (Context!10943 call!510393)) true))))

(declare-fun bm!510537 () Bool)

(declare-fun call!510542 () List!64560)

(assert (=> bm!510537 (= call!510542 call!510539)))

(declare-fun b!6144382 () Bool)

(assert (=> b!6144382 (= e!3744373 (nullable!6080 (regOne!32686 (ite c!1105244 (regOne!32687 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105242 (regTwo!32686 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105243 (regOne!32686 (regTwo!32687 (regOne!32686 r!7292))) (reg!16416 (regTwo!32687 (regOne!32686 r!7292)))))))))))

(declare-fun b!6144383 () Bool)

(assert (=> b!6144383 (= e!3744371 ((_ map or) call!510538 call!510543))))

(declare-fun bm!510538 () Bool)

(assert (=> bm!510538 (= call!510539 ($colon$colon!1964 (exprs!5971 (ite (or c!1105244 c!1105242) lt!2333388 (Context!10943 call!510393))) (ite (or c!1105451 c!1105452) (regTwo!32686 (ite c!1105244 (regOne!32687 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105242 (regTwo!32686 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105243 (regOne!32686 (regTwo!32687 (regOne!32686 r!7292))) (reg!16416 (regTwo!32687 (regOne!32686 r!7292))))))) (ite c!1105244 (regOne!32687 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105242 (regTwo!32686 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105243 (regOne!32686 (regTwo!32687 (regOne!32686 r!7292))) (reg!16416 (regTwo!32687 (regOne!32686 r!7292)))))))))))

(declare-fun c!1105455 () Bool)

(declare-fun d!1925131 () Bool)

(assert (=> d!1925131 (= c!1105455 (and ((_ is ElementMatch!16087) (ite c!1105244 (regOne!32687 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105242 (regTwo!32686 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105243 (regOne!32686 (regTwo!32687 (regOne!32686 r!7292))) (reg!16416 (regTwo!32687 (regOne!32686 r!7292))))))) (= (c!1105061 (ite c!1105244 (regOne!32687 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105242 (regTwo!32686 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105243 (regOne!32686 (regTwo!32687 (regOne!32686 r!7292))) (reg!16416 (regTwo!32687 (regOne!32686 r!7292))))))) (h!70885 s!2326))))))

(assert (=> d!1925131 (= (derivationStepZipperDown!1335 (ite c!1105244 (regOne!32687 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105242 (regTwo!32686 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105243 (regOne!32686 (regTwo!32687 (regOne!32686 r!7292))) (reg!16416 (regTwo!32687 (regOne!32686 r!7292)))))) (ite (or c!1105244 c!1105242) lt!2333388 (Context!10943 call!510393)) (h!70885 s!2326)) e!3744369)))

(declare-fun bm!510535 () Bool)

(assert (=> bm!510535 (= call!510538 (derivationStepZipperDown!1335 (ite c!1105453 (regOne!32687 (ite c!1105244 (regOne!32687 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105242 (regTwo!32686 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105243 (regOne!32686 (regTwo!32687 (regOne!32686 r!7292))) (reg!16416 (regTwo!32687 (regOne!32686 r!7292))))))) (ite c!1105451 (regTwo!32686 (ite c!1105244 (regOne!32687 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105242 (regTwo!32686 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105243 (regOne!32686 (regTwo!32687 (regOne!32686 r!7292))) (reg!16416 (regTwo!32687 (regOne!32686 r!7292))))))) (ite c!1105452 (regOne!32686 (ite c!1105244 (regOne!32687 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105242 (regTwo!32686 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105243 (regOne!32686 (regTwo!32687 (regOne!32686 r!7292))) (reg!16416 (regTwo!32687 (regOne!32686 r!7292))))))) (reg!16416 (ite c!1105244 (regOne!32687 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105242 (regTwo!32686 (regTwo!32687 (regOne!32686 r!7292))) (ite c!1105243 (regOne!32686 (regTwo!32687 (regOne!32686 r!7292))) (reg!16416 (regTwo!32687 (regOne!32686 r!7292)))))))))) (ite (or c!1105453 c!1105451) (ite (or c!1105244 c!1105242) lt!2333388 (Context!10943 call!510393)) (Context!10943 call!510542)) (h!70885 s!2326)))))

(assert (= (and d!1925131 c!1105455) b!6144381))

(assert (= (and d!1925131 (not c!1105455)) b!6144378))

(assert (= (and b!6144378 c!1105453) b!6144383))

(assert (= (and b!6144378 (not c!1105453)) b!6144376))

(assert (= (and b!6144376 res!2545596) b!6144382))

(assert (= (and b!6144376 c!1105451) b!6144379))

(assert (= (and b!6144376 (not c!1105451)) b!6144375))

(assert (= (and b!6144375 c!1105452) b!6144380))

(assert (= (and b!6144375 (not c!1105452)) b!6144373))

(assert (= (and b!6144373 c!1105454) b!6144374))

(assert (= (and b!6144373 (not c!1105454)) b!6144377))

(assert (= (or b!6144380 b!6144374) bm!510537))

(assert (= (or b!6144380 b!6144374) bm!510536))

(assert (= (or b!6144379 bm!510537) bm!510538))

(assert (= (or b!6144379 bm!510536) bm!510534))

(assert (= (or b!6144383 b!6144379) bm!510533))

(assert (= (or b!6144383 bm!510534) bm!510535))

(declare-fun m!6985164 () Bool)

(assert (=> bm!510533 m!6985164))

(declare-fun m!6985166 () Bool)

(assert (=> bm!510535 m!6985166))

(declare-fun m!6985168 () Bool)

(assert (=> b!6144381 m!6985168))

(declare-fun m!6985170 () Bool)

(assert (=> b!6144382 m!6985170))

(declare-fun m!6985172 () Bool)

(assert (=> bm!510538 m!6985172))

(assert (=> bm!510386 d!1925131))

(assert (=> d!1924741 d!1925055))

(declare-fun d!1925133 () Bool)

(declare-fun c!1105458 () Bool)

(assert (=> d!1925133 (= c!1105458 ((_ is Nil!64438) lt!2333475))))

(declare-fun e!3744377 () (InoxSet Context!10942))

(assert (=> d!1925133 (= (content!11996 lt!2333475) e!3744377)))

(declare-fun b!6144388 () Bool)

(assert (=> b!6144388 (= e!3744377 ((as const (Array Context!10942 Bool)) false))))

(declare-fun b!6144389 () Bool)

(assert (=> b!6144389 (= e!3744377 ((_ map or) (store ((as const (Array Context!10942 Bool)) false) (h!70886 lt!2333475) true) (content!11996 (t!378043 lt!2333475))))))

(assert (= (and d!1925133 c!1105458) b!6144388))

(assert (= (and d!1925133 (not c!1105458)) b!6144389))

(declare-fun m!6985174 () Bool)

(assert (=> b!6144389 m!6985174))

(declare-fun m!6985176 () Bool)

(assert (=> b!6144389 m!6985176))

(assert (=> b!6143590 d!1925133))

(declare-fun d!1925135 () Bool)

(declare-fun res!2545601 () Bool)

(declare-fun e!3744382 () Bool)

(assert (=> d!1925135 (=> res!2545601 e!3744382)))

(assert (=> d!1925135 (= res!2545601 ((_ is Nil!64436) (exprs!5971 lt!2333388)))))

(assert (=> d!1925135 (= (forall!15208 (exprs!5971 lt!2333388) lambda!334907) e!3744382)))

(declare-fun b!6144394 () Bool)

(declare-fun e!3744383 () Bool)

(assert (=> b!6144394 (= e!3744382 e!3744383)))

(declare-fun res!2545602 () Bool)

(assert (=> b!6144394 (=> (not res!2545602) (not e!3744383))))

(declare-fun dynLambda!25396 (Int Regex!16087) Bool)

(assert (=> b!6144394 (= res!2545602 (dynLambda!25396 lambda!334907 (h!70884 (exprs!5971 lt!2333388))))))

(declare-fun b!6144395 () Bool)

(assert (=> b!6144395 (= e!3744383 (forall!15208 (t!378041 (exprs!5971 lt!2333388)) lambda!334907))))

(assert (= (and d!1925135 (not res!2545601)) b!6144394))

(assert (= (and b!6144394 res!2545602) b!6144395))

(declare-fun b_lambda!233859 () Bool)

(assert (=> (not b_lambda!233859) (not b!6144394)))

(declare-fun m!6985178 () Bool)

(assert (=> b!6144394 m!6985178))

(declare-fun m!6985180 () Bool)

(assert (=> b!6144395 m!6985180))

(assert (=> d!1924739 d!1925135))

(declare-fun d!1925137 () Bool)

(declare-fun c!1105459 () Bool)

(assert (=> d!1925137 (= c!1105459 (isEmpty!36392 (tail!11780 (t!378042 s!2326))))))

(declare-fun e!3744384 () Bool)

(assert (=> d!1925137 (= (matchZipper!2099 (derivationStepZipper!2060 lt!2333386 (head!12695 (t!378042 s!2326))) (tail!11780 (t!378042 s!2326))) e!3744384)))

(declare-fun b!6144396 () Bool)

(assert (=> b!6144396 (= e!3744384 (nullableZipper!1868 (derivationStepZipper!2060 lt!2333386 (head!12695 (t!378042 s!2326)))))))

(declare-fun b!6144397 () Bool)

(assert (=> b!6144397 (= e!3744384 (matchZipper!2099 (derivationStepZipper!2060 (derivationStepZipper!2060 lt!2333386 (head!12695 (t!378042 s!2326))) (head!12695 (tail!11780 (t!378042 s!2326)))) (tail!11780 (tail!11780 (t!378042 s!2326)))))))

(assert (= (and d!1925137 c!1105459) b!6144396))

(assert (= (and d!1925137 (not c!1105459)) b!6144397))

(assert (=> d!1925137 m!6984304))

(assert (=> d!1925137 m!6985088))

(assert (=> b!6144396 m!6984352))

(declare-fun m!6985182 () Bool)

(assert (=> b!6144396 m!6985182))

(assert (=> b!6144397 m!6984304))

(assert (=> b!6144397 m!6985092))

(assert (=> b!6144397 m!6984352))

(assert (=> b!6144397 m!6985092))

(declare-fun m!6985184 () Bool)

(assert (=> b!6144397 m!6985184))

(assert (=> b!6144397 m!6984304))

(assert (=> b!6144397 m!6985096))

(assert (=> b!6144397 m!6985184))

(assert (=> b!6144397 m!6985096))

(declare-fun m!6985186 () Bool)

(assert (=> b!6144397 m!6985186))

(assert (=> b!6143431 d!1925137))

(declare-fun bs!1523480 () Bool)

(declare-fun d!1925139 () Bool)

(assert (= bs!1523480 (and d!1925139 b!6142915)))

(declare-fun lambda!334975 () Int)

(assert (=> bs!1523480 (= (= (head!12695 (t!378042 s!2326)) (h!70885 s!2326)) (= lambda!334975 lambda!334869))))

(declare-fun bs!1523481 () Bool)

(assert (= bs!1523481 (and d!1925139 d!1925089)))

(assert (=> bs!1523481 (= lambda!334975 lambda!334968)))

(declare-fun bs!1523482 () Bool)

(assert (= bs!1523482 (and d!1925139 d!1925119)))

(assert (=> bs!1523482 (= lambda!334975 lambda!334973)))

(declare-fun bs!1523483 () Bool)

(assert (= bs!1523483 (and d!1925139 d!1925129)))

(assert (=> bs!1523483 (= lambda!334975 lambda!334974)))

(assert (=> d!1925139 true))

(assert (=> d!1925139 (= (derivationStepZipper!2060 lt!2333386 (head!12695 (t!378042 s!2326))) (flatMap!1592 lt!2333386 lambda!334975))))

(declare-fun bs!1523484 () Bool)

(assert (= bs!1523484 d!1925139))

(declare-fun m!6985188 () Bool)

(assert (=> bs!1523484 m!6985188))

(assert (=> b!6143431 d!1925139))

(assert (=> b!6143431 d!1925091))

(assert (=> b!6143431 d!1925093))

(declare-fun b!6144398 () Bool)

(declare-fun res!2545603 () Bool)

(declare-fun e!3744386 () Bool)

(assert (=> b!6144398 (=> res!2545603 e!3744386)))

(declare-fun e!3744385 () Bool)

(assert (=> b!6144398 (= res!2545603 e!3744385)))

(declare-fun res!2545607 () Bool)

(assert (=> b!6144398 (=> (not res!2545607) (not e!3744385))))

(declare-fun lt!2333520 () Bool)

(assert (=> b!6144398 (= res!2545607 lt!2333520)))

(declare-fun b!6144399 () Bool)

(declare-fun res!2545604 () Bool)

(assert (=> b!6144399 (=> res!2545604 e!3744386)))

(assert (=> b!6144399 (= res!2545604 (not ((_ is ElementMatch!16087) (regTwo!32686 r!7292))))))

(declare-fun e!3744391 () Bool)

(assert (=> b!6144399 (= e!3744391 e!3744386)))

(declare-fun b!6144400 () Bool)

(declare-fun e!3744388 () Bool)

(assert (=> b!6144400 (= e!3744386 e!3744388)))

(declare-fun res!2545605 () Bool)

(assert (=> b!6144400 (=> (not res!2545605) (not e!3744388))))

(assert (=> b!6144400 (= res!2545605 (not lt!2333520))))

(declare-fun b!6144401 () Bool)

(declare-fun e!3744389 () Bool)

(assert (=> b!6144401 (= e!3744388 e!3744389)))

(declare-fun res!2545606 () Bool)

(assert (=> b!6144401 (=> res!2545606 e!3744389)))

(declare-fun call!510544 () Bool)

(assert (=> b!6144401 (= res!2545606 call!510544)))

(declare-fun b!6144402 () Bool)

(declare-fun res!2545608 () Bool)

(assert (=> b!6144402 (=> (not res!2545608) (not e!3744385))))

(assert (=> b!6144402 (= res!2545608 (isEmpty!36392 (tail!11780 s!2326)))))

(declare-fun b!6144403 () Bool)

(declare-fun e!3744387 () Bool)

(assert (=> b!6144403 (= e!3744387 e!3744391)))

(declare-fun c!1105460 () Bool)

(assert (=> b!6144403 (= c!1105460 ((_ is EmptyLang!16087) (regTwo!32686 r!7292)))))

(declare-fun b!6144404 () Bool)

(assert (=> b!6144404 (= e!3744391 (not lt!2333520))))

(declare-fun d!1925141 () Bool)

(assert (=> d!1925141 e!3744387))

(declare-fun c!1105461 () Bool)

(assert (=> d!1925141 (= c!1105461 ((_ is EmptyExpr!16087) (regTwo!32686 r!7292)))))

(declare-fun e!3744390 () Bool)

(assert (=> d!1925141 (= lt!2333520 e!3744390)))

(declare-fun c!1105462 () Bool)

(assert (=> d!1925141 (= c!1105462 (isEmpty!36392 s!2326))))

(assert (=> d!1925141 (validRegex!7823 (regTwo!32686 r!7292))))

(assert (=> d!1925141 (= (matchR!8270 (regTwo!32686 r!7292) s!2326) lt!2333520)))

(declare-fun bm!510539 () Bool)

(assert (=> bm!510539 (= call!510544 (isEmpty!36392 s!2326))))

(declare-fun b!6144405 () Bool)

(assert (=> b!6144405 (= e!3744389 (not (= (head!12695 s!2326) (c!1105061 (regTwo!32686 r!7292)))))))

(declare-fun b!6144406 () Bool)

(assert (=> b!6144406 (= e!3744390 (nullable!6080 (regTwo!32686 r!7292)))))

(declare-fun b!6144407 () Bool)

(assert (=> b!6144407 (= e!3744387 (= lt!2333520 call!510544))))

(declare-fun b!6144408 () Bool)

(assert (=> b!6144408 (= e!3744385 (= (head!12695 s!2326) (c!1105061 (regTwo!32686 r!7292))))))

(declare-fun b!6144409 () Bool)

(declare-fun res!2545610 () Bool)

(assert (=> b!6144409 (=> res!2545610 e!3744389)))

(assert (=> b!6144409 (= res!2545610 (not (isEmpty!36392 (tail!11780 s!2326))))))

(declare-fun b!6144410 () Bool)

(assert (=> b!6144410 (= e!3744390 (matchR!8270 (derivativeStep!4807 (regTwo!32686 r!7292) (head!12695 s!2326)) (tail!11780 s!2326)))))

(declare-fun b!6144411 () Bool)

(declare-fun res!2545609 () Bool)

(assert (=> b!6144411 (=> (not res!2545609) (not e!3744385))))

(assert (=> b!6144411 (= res!2545609 (not call!510544))))

(assert (= (and d!1925141 c!1105462) b!6144406))

(assert (= (and d!1925141 (not c!1105462)) b!6144410))

(assert (= (and d!1925141 c!1105461) b!6144407))

(assert (= (and d!1925141 (not c!1105461)) b!6144403))

(assert (= (and b!6144403 c!1105460) b!6144404))

(assert (= (and b!6144403 (not c!1105460)) b!6144399))

(assert (= (and b!6144399 (not res!2545604)) b!6144398))

(assert (= (and b!6144398 res!2545607) b!6144411))

(assert (= (and b!6144411 res!2545609) b!6144402))

(assert (= (and b!6144402 res!2545608) b!6144408))

(assert (= (and b!6144398 (not res!2545603)) b!6144400))

(assert (= (and b!6144400 res!2545605) b!6144401))

(assert (= (and b!6144401 (not res!2545606)) b!6144409))

(assert (= (and b!6144409 (not res!2545610)) b!6144405))

(assert (= (or b!6144407 b!6144401 b!6144411) bm!510539))

(assert (=> b!6144410 m!6984328))

(assert (=> b!6144410 m!6984328))

(declare-fun m!6985190 () Bool)

(assert (=> b!6144410 m!6985190))

(assert (=> b!6144410 m!6984332))

(assert (=> b!6144410 m!6985190))

(assert (=> b!6144410 m!6984332))

(declare-fun m!6985192 () Bool)

(assert (=> b!6144410 m!6985192))

(assert (=> d!1925141 m!6984320))

(declare-fun m!6985194 () Bool)

(assert (=> d!1925141 m!6985194))

(assert (=> b!6144402 m!6984332))

(assert (=> b!6144402 m!6984332))

(assert (=> b!6144402 m!6984336))

(assert (=> b!6144405 m!6984328))

(assert (=> bm!510539 m!6984320))

(assert (=> b!6144409 m!6984332))

(assert (=> b!6144409 m!6984332))

(assert (=> b!6144409 m!6984336))

(assert (=> b!6144408 m!6984328))

(declare-fun m!6985196 () Bool)

(assert (=> b!6144406 m!6985196))

(assert (=> b!6143614 d!1925141))

(declare-fun bs!1523485 () Bool)

(declare-fun b!6144420 () Bool)

(assert (= bs!1523485 (and b!6144420 b!6142895)))

(declare-fun lambda!334976 () Int)

(assert (=> bs!1523485 (not (= lambda!334976 lambda!334868))))

(declare-fun bs!1523486 () Bool)

(assert (= bs!1523486 (and b!6144420 d!1924793)))

(assert (=> bs!1523486 (not (= lambda!334976 lambda!334923))))

(declare-fun bs!1523487 () Bool)

(assert (= bs!1523487 (and b!6144420 d!1925103)))

(assert (=> bs!1523487 (not (= lambda!334976 lambda!334971))))

(declare-fun bs!1523488 () Bool)

(assert (= bs!1523488 (and b!6144420 b!6143379)))

(assert (=> bs!1523488 (not (= lambda!334976 lambda!334904))))

(assert (=> bs!1523486 (not (= lambda!334976 lambda!334924))))

(declare-fun bs!1523489 () Bool)

(assert (= bs!1523489 (and b!6144420 d!1924797)))

(assert (=> bs!1523489 (not (= lambda!334976 lambda!334927))))

(declare-fun bs!1523490 () Bool)

(assert (= bs!1523490 (and b!6144420 b!6143383)))

(assert (=> bs!1523490 (= (and (= (reg!16416 (regTwo!32687 r!7292)) (reg!16416 r!7292)) (= (regTwo!32687 r!7292) r!7292)) (= lambda!334976 lambda!334903))))

(assert (=> bs!1523485 (not (= lambda!334976 lambda!334867))))

(assert (=> b!6144420 true))

(assert (=> b!6144420 true))

(declare-fun bs!1523491 () Bool)

(declare-fun b!6144416 () Bool)

(assert (= bs!1523491 (and b!6144416 b!6142895)))

(declare-fun lambda!334977 () Int)

(assert (=> bs!1523491 (= (and (= (regOne!32686 (regTwo!32687 r!7292)) (regOne!32686 r!7292)) (= (regTwo!32686 (regTwo!32687 r!7292)) (regTwo!32686 r!7292))) (= lambda!334977 lambda!334868))))

(declare-fun bs!1523492 () Bool)

(assert (= bs!1523492 (and b!6144416 d!1925103)))

(assert (=> bs!1523492 (not (= lambda!334977 lambda!334971))))

(declare-fun bs!1523493 () Bool)

(assert (= bs!1523493 (and b!6144416 b!6143379)))

(assert (=> bs!1523493 (= (and (= (regOne!32686 (regTwo!32687 r!7292)) (regOne!32686 r!7292)) (= (regTwo!32686 (regTwo!32687 r!7292)) (regTwo!32686 r!7292))) (= lambda!334977 lambda!334904))))

(declare-fun bs!1523494 () Bool)

(assert (= bs!1523494 (and b!6144416 d!1924793)))

(assert (=> bs!1523494 (= (and (= (regOne!32686 (regTwo!32687 r!7292)) (regOne!32686 r!7292)) (= (regTwo!32686 (regTwo!32687 r!7292)) (regTwo!32686 r!7292))) (= lambda!334977 lambda!334924))))

(declare-fun bs!1523495 () Bool)

(assert (= bs!1523495 (and b!6144416 d!1924797)))

(assert (=> bs!1523495 (not (= lambda!334977 lambda!334927))))

(declare-fun bs!1523496 () Bool)

(assert (= bs!1523496 (and b!6144416 b!6143383)))

(assert (=> bs!1523496 (not (= lambda!334977 lambda!334903))))

(assert (=> bs!1523491 (not (= lambda!334977 lambda!334867))))

(assert (=> bs!1523494 (not (= lambda!334977 lambda!334923))))

(declare-fun bs!1523497 () Bool)

(assert (= bs!1523497 (and b!6144416 b!6144420)))

(assert (=> bs!1523497 (not (= lambda!334977 lambda!334976))))

(assert (=> b!6144416 true))

(assert (=> b!6144416 true))

(declare-fun b!6144412 () Bool)

(declare-fun res!2545613 () Bool)

(declare-fun e!3744394 () Bool)

(assert (=> b!6144412 (=> res!2545613 e!3744394)))

(declare-fun call!510545 () Bool)

(assert (=> b!6144412 (= res!2545613 call!510545)))

(declare-fun e!3744393 () Bool)

(assert (=> b!6144412 (= e!3744393 e!3744394)))

(declare-fun d!1925143 () Bool)

(declare-fun c!1105464 () Bool)

(assert (=> d!1925143 (= c!1105464 ((_ is EmptyExpr!16087) (regTwo!32687 r!7292)))))

(declare-fun e!3744397 () Bool)

(assert (=> d!1925143 (= (matchRSpec!3188 (regTwo!32687 r!7292) s!2326) e!3744397)))

(declare-fun b!6144413 () Bool)

(declare-fun e!3744392 () Bool)

(assert (=> b!6144413 (= e!3744397 e!3744392)))

(declare-fun res!2545611 () Bool)

(assert (=> b!6144413 (= res!2545611 (not ((_ is EmptyLang!16087) (regTwo!32687 r!7292))))))

(assert (=> b!6144413 (=> (not res!2545611) (not e!3744392))))

(declare-fun b!6144414 () Bool)

(assert (=> b!6144414 (= e!3744397 call!510545)))

(declare-fun bm!510540 () Bool)

(assert (=> bm!510540 (= call!510545 (isEmpty!36392 s!2326))))

(declare-fun b!6144415 () Bool)

(declare-fun e!3744398 () Bool)

(assert (=> b!6144415 (= e!3744398 (= s!2326 (Cons!64437 (c!1105061 (regTwo!32687 r!7292)) Nil!64437)))))

(declare-fun call!510546 () Bool)

(assert (=> b!6144416 (= e!3744393 call!510546)))

(declare-fun b!6144417 () Bool)

(declare-fun e!3744395 () Bool)

(assert (=> b!6144417 (= e!3744395 e!3744393)))

(declare-fun c!1105463 () Bool)

(assert (=> b!6144417 (= c!1105463 ((_ is Star!16087) (regTwo!32687 r!7292)))))

(declare-fun b!6144418 () Bool)

(declare-fun c!1105466 () Bool)

(assert (=> b!6144418 (= c!1105466 ((_ is Union!16087) (regTwo!32687 r!7292)))))

(assert (=> b!6144418 (= e!3744398 e!3744395)))

(declare-fun bm!510541 () Bool)

(assert (=> bm!510541 (= call!510546 (Exists!3157 (ite c!1105463 lambda!334976 lambda!334977)))))

(declare-fun b!6144419 () Bool)

(declare-fun e!3744396 () Bool)

(assert (=> b!6144419 (= e!3744396 (matchRSpec!3188 (regTwo!32687 (regTwo!32687 r!7292)) s!2326))))

(assert (=> b!6144420 (= e!3744394 call!510546)))

(declare-fun b!6144421 () Bool)

(declare-fun c!1105465 () Bool)

(assert (=> b!6144421 (= c!1105465 ((_ is ElementMatch!16087) (regTwo!32687 r!7292)))))

(assert (=> b!6144421 (= e!3744392 e!3744398)))

(declare-fun b!6144422 () Bool)

(assert (=> b!6144422 (= e!3744395 e!3744396)))

(declare-fun res!2545612 () Bool)

(assert (=> b!6144422 (= res!2545612 (matchRSpec!3188 (regOne!32687 (regTwo!32687 r!7292)) s!2326))))

(assert (=> b!6144422 (=> res!2545612 e!3744396)))

(assert (= (and d!1925143 c!1105464) b!6144414))

(assert (= (and d!1925143 (not c!1105464)) b!6144413))

(assert (= (and b!6144413 res!2545611) b!6144421))

(assert (= (and b!6144421 c!1105465) b!6144415))

(assert (= (and b!6144421 (not c!1105465)) b!6144418))

(assert (= (and b!6144418 c!1105466) b!6144422))

(assert (= (and b!6144418 (not c!1105466)) b!6144417))

(assert (= (and b!6144422 (not res!2545612)) b!6144419))

(assert (= (and b!6144417 c!1105463) b!6144412))

(assert (= (and b!6144417 (not c!1105463)) b!6144416))

(assert (= (and b!6144412 (not res!2545613)) b!6144420))

(assert (= (or b!6144420 b!6144416) bm!510541))

(assert (= (or b!6144414 b!6144412) bm!510540))

(assert (=> bm!510540 m!6984320))

(declare-fun m!6985198 () Bool)

(assert (=> bm!510541 m!6985198))

(declare-fun m!6985200 () Bool)

(assert (=> b!6144419 m!6985200))

(declare-fun m!6985202 () Bool)

(assert (=> b!6144422 m!6985202))

(assert (=> b!6143382 d!1925143))

(declare-fun bs!1523498 () Bool)

(declare-fun d!1925145 () Bool)

(assert (= bs!1523498 (and d!1925145 d!1924775)))

(declare-fun lambda!334978 () Int)

(assert (=> bs!1523498 (= lambda!334978 lambda!334917)))

(declare-fun bs!1523499 () Bool)

(assert (= bs!1523499 (and d!1925145 d!1924743)))

(assert (=> bs!1523499 (= lambda!334978 lambda!334910)))

(declare-fun bs!1523500 () Bool)

(assert (= bs!1523500 (and d!1925145 d!1924761)))

(assert (=> bs!1523500 (= lambda!334978 lambda!334914)))

(declare-fun bs!1523501 () Bool)

(assert (= bs!1523501 (and d!1925145 d!1924787)))

(assert (=> bs!1523501 (= lambda!334978 lambda!334918)))

(declare-fun bs!1523502 () Bool)

(assert (= bs!1523502 (and d!1925145 d!1924739)))

(assert (=> bs!1523502 (= lambda!334978 lambda!334907)))

(declare-fun bs!1523503 () Bool)

(assert (= bs!1523503 (and d!1925145 d!1925059)))

(assert (=> bs!1523503 (= lambda!334978 lambda!334962)))

(declare-fun bs!1523504 () Bool)

(assert (= bs!1523504 (and d!1925145 d!1924745)))

(assert (=> bs!1523504 (= lambda!334978 lambda!334913)))

(declare-fun bs!1523505 () Bool)

(assert (= bs!1523505 (and d!1925145 d!1925115)))

(assert (=> bs!1523505 (= lambda!334978 lambda!334972)))

(declare-fun b!6144423 () Bool)

(declare-fun e!3744400 () Bool)

(declare-fun e!3744402 () Bool)

(assert (=> b!6144423 (= e!3744400 e!3744402)))

(declare-fun c!1105468 () Bool)

(assert (=> b!6144423 (= c!1105468 (isEmpty!36389 (t!378041 (exprs!5971 (h!70886 zl!343)))))))

(declare-fun b!6144424 () Bool)

(declare-fun e!3744404 () Regex!16087)

(assert (=> b!6144424 (= e!3744404 (Concat!24932 (h!70884 (t!378041 (exprs!5971 (h!70886 zl!343)))) (generalisedConcat!1684 (t!378041 (t!378041 (exprs!5971 (h!70886 zl!343)))))))))

(declare-fun b!6144425 () Bool)

(declare-fun e!3744399 () Regex!16087)

(assert (=> b!6144425 (= e!3744399 (h!70884 (t!378041 (exprs!5971 (h!70886 zl!343)))))))

(declare-fun b!6144426 () Bool)

(declare-fun e!3744403 () Bool)

(assert (=> b!6144426 (= e!3744403 (isEmpty!36389 (t!378041 (t!378041 (exprs!5971 (h!70886 zl!343))))))))

(assert (=> d!1925145 e!3744400))

(declare-fun res!2545614 () Bool)

(assert (=> d!1925145 (=> (not res!2545614) (not e!3744400))))

(declare-fun lt!2333521 () Regex!16087)

(assert (=> d!1925145 (= res!2545614 (validRegex!7823 lt!2333521))))

(assert (=> d!1925145 (= lt!2333521 e!3744399)))

(declare-fun c!1105467 () Bool)

(assert (=> d!1925145 (= c!1105467 e!3744403)))

(declare-fun res!2545615 () Bool)

(assert (=> d!1925145 (=> (not res!2545615) (not e!3744403))))

(assert (=> d!1925145 (= res!2545615 ((_ is Cons!64436) (t!378041 (exprs!5971 (h!70886 zl!343)))))))

(assert (=> d!1925145 (forall!15208 (t!378041 (exprs!5971 (h!70886 zl!343))) lambda!334978)))

(assert (=> d!1925145 (= (generalisedConcat!1684 (t!378041 (exprs!5971 (h!70886 zl!343)))) lt!2333521)))

(declare-fun b!6144427 () Bool)

(declare-fun e!3744401 () Bool)

(assert (=> b!6144427 (= e!3744402 e!3744401)))

(declare-fun c!1105470 () Bool)

(assert (=> b!6144427 (= c!1105470 (isEmpty!36389 (tail!11781 (t!378041 (exprs!5971 (h!70886 zl!343))))))))

(declare-fun b!6144428 () Bool)

(assert (=> b!6144428 (= e!3744401 (= lt!2333521 (head!12696 (t!378041 (exprs!5971 (h!70886 zl!343))))))))

(declare-fun b!6144429 () Bool)

(assert (=> b!6144429 (= e!3744399 e!3744404)))

(declare-fun c!1105469 () Bool)

(assert (=> b!6144429 (= c!1105469 ((_ is Cons!64436) (t!378041 (exprs!5971 (h!70886 zl!343)))))))

(declare-fun b!6144430 () Bool)

(assert (=> b!6144430 (= e!3744401 (isConcat!1027 lt!2333521))))

(declare-fun b!6144431 () Bool)

(assert (=> b!6144431 (= e!3744404 EmptyExpr!16087)))

(declare-fun b!6144432 () Bool)

(assert (=> b!6144432 (= e!3744402 (isEmptyExpr!1504 lt!2333521))))

(assert (= (and d!1925145 res!2545615) b!6144426))

(assert (= (and d!1925145 c!1105467) b!6144425))

(assert (= (and d!1925145 (not c!1105467)) b!6144429))

(assert (= (and b!6144429 c!1105469) b!6144424))

(assert (= (and b!6144429 (not c!1105469)) b!6144431))

(assert (= (and d!1925145 res!2545614) b!6144423))

(assert (= (and b!6144423 c!1105468) b!6144432))

(assert (= (and b!6144423 (not c!1105468)) b!6144427))

(assert (= (and b!6144427 c!1105470) b!6144428))

(assert (= (and b!6144427 (not c!1105470)) b!6144430))

(declare-fun m!6985204 () Bool)

(assert (=> b!6144424 m!6985204))

(declare-fun m!6985206 () Bool)

(assert (=> b!6144426 m!6985206))

(declare-fun m!6985208 () Bool)

(assert (=> b!6144428 m!6985208))

(declare-fun m!6985210 () Bool)

(assert (=> b!6144430 m!6985210))

(declare-fun m!6985212 () Bool)

(assert (=> b!6144432 m!6985212))

(declare-fun m!6985214 () Bool)

(assert (=> b!6144427 m!6985214))

(assert (=> b!6144427 m!6985214))

(declare-fun m!6985216 () Bool)

(assert (=> b!6144427 m!6985216))

(declare-fun m!6985218 () Bool)

(assert (=> d!1925145 m!6985218))

(declare-fun m!6985220 () Bool)

(assert (=> d!1925145 m!6985220))

(assert (=> b!6144423 m!6983984))

(assert (=> b!6143574 d!1925145))

(declare-fun d!1925147 () Bool)

(assert (=> d!1925147 (= (isEmpty!36389 (tail!11781 (unfocusZipperList!1508 zl!343))) ((_ is Nil!64436) (tail!11781 (unfocusZipperList!1508 zl!343))))))

(assert (=> b!6143461 d!1925147))

(declare-fun d!1925149 () Bool)

(assert (=> d!1925149 (= (tail!11781 (unfocusZipperList!1508 zl!343)) (t!378041 (unfocusZipperList!1508 zl!343)))))

(assert (=> b!6143461 d!1925149))

(declare-fun bs!1523506 () Bool)

(declare-fun d!1925151 () Bool)

(assert (= bs!1523506 (and d!1925151 d!1925081)))

(declare-fun lambda!334979 () Int)

(assert (=> bs!1523506 (= lambda!334979 lambda!334965)))

(assert (=> d!1925151 (= (nullableZipper!1868 lt!2333383) (exists!2433 lt!2333383 lambda!334979))))

(declare-fun bs!1523507 () Bool)

(assert (= bs!1523507 d!1925151))

(declare-fun m!6985222 () Bool)

(assert (=> bs!1523507 m!6985222))

(assert (=> b!6143312 d!1925151))

(declare-fun d!1925153 () Bool)

(assert (=> d!1925153 (= (head!12696 (exprs!5971 (h!70886 zl!343))) (h!70884 (exprs!5971 (h!70886 zl!343))))))

(assert (=> b!6143578 d!1925153))

(assert (=> d!1924769 d!1924765))

(declare-fun d!1925155 () Bool)

(assert (=> d!1925155 (= (flatMap!1592 lt!2333393 lambda!334869) (dynLambda!25394 lambda!334869 lt!2333391))))

(assert (=> d!1925155 true))

(declare-fun _$13!3043 () Unit!157503)

(assert (=> d!1925155 (= (choose!45660 lt!2333393 lt!2333391 lambda!334869) _$13!3043)))

(declare-fun b_lambda!233861 () Bool)

(assert (=> (not b_lambda!233861) (not d!1925155)))

(declare-fun bs!1523508 () Bool)

(assert (= bs!1523508 d!1925155))

(assert (=> bs!1523508 m!6984032))

(assert (=> bs!1523508 m!6984428))

(assert (=> d!1924769 d!1925155))

(declare-fun d!1925157 () Bool)

(assert (=> d!1925157 true))

(assert (=> d!1925157 true))

(declare-fun res!2545618 () Bool)

(assert (=> d!1925157 (= (choose!45665 lambda!334868) res!2545618)))

(assert (=> d!1924799 d!1925157))

(assert (=> d!1924781 d!1925055))

(declare-fun d!1925159 () Bool)

(assert (=> d!1925159 (= (nullable!6080 (regOne!32686 (regOne!32687 (regOne!32686 r!7292)))) (nullableFct!2044 (regOne!32686 (regOne!32687 (regOne!32686 r!7292)))))))

(declare-fun bs!1523509 () Bool)

(assert (= bs!1523509 d!1925159))

(declare-fun m!6985224 () Bool)

(assert (=> bs!1523509 m!6985224))

(assert (=> b!6143551 d!1925159))

(declare-fun call!510552 () (InoxSet Context!10942))

(declare-fun c!1105473 () Bool)

(declare-fun bm!510542 () Bool)

(declare-fun call!510548 () List!64560)

(assert (=> bm!510542 (= call!510552 (derivationStepZipperDown!1335 (ite c!1105473 (regTwo!32687 (ite c!1105244 (regTwo!32687 (regTwo!32687 (regOne!32686 r!7292))) (regOne!32686 (regTwo!32687 (regOne!32686 r!7292))))) (regOne!32686 (ite c!1105244 (regTwo!32687 (regTwo!32687 (regOne!32686 r!7292))) (regOne!32686 (regTwo!32687 (regOne!32686 r!7292)))))) (ite c!1105473 (ite c!1105244 lt!2333388 (Context!10943 call!510390)) (Context!10943 call!510548)) (h!70885 s!2326)))))

(declare-fun b!6144433 () Bool)

(declare-fun c!1105474 () Bool)

(assert (=> b!6144433 (= c!1105474 ((_ is Star!16087) (ite c!1105244 (regTwo!32687 (regTwo!32687 (regOne!32686 r!7292))) (regOne!32686 (regTwo!32687 (regOne!32686 r!7292))))))))

(declare-fun e!3744410 () (InoxSet Context!10942))

(declare-fun e!3744406 () (InoxSet Context!10942))

(assert (=> b!6144433 (= e!3744410 e!3744406)))

(declare-fun b!6144434 () Bool)

(declare-fun call!510549 () (InoxSet Context!10942))

(assert (=> b!6144434 (= e!3744406 call!510549)))

(declare-fun b!6144435 () Bool)

(declare-fun e!3744408 () (InoxSet Context!10942))

(assert (=> b!6144435 (= e!3744408 e!3744410)))

(declare-fun c!1105472 () Bool)

(assert (=> b!6144435 (= c!1105472 ((_ is Concat!24932) (ite c!1105244 (regTwo!32687 (regTwo!32687 (regOne!32686 r!7292))) (regOne!32686 (regTwo!32687 (regOne!32686 r!7292))))))))

(declare-fun b!6144436 () Bool)

(declare-fun c!1105471 () Bool)

(declare-fun e!3744409 () Bool)

(assert (=> b!6144436 (= c!1105471 e!3744409)))

(declare-fun res!2545619 () Bool)

(assert (=> b!6144436 (=> (not res!2545619) (not e!3744409))))

(assert (=> b!6144436 (= res!2545619 ((_ is Concat!24932) (ite c!1105244 (regTwo!32687 (regTwo!32687 (regOne!32686 r!7292))) (regOne!32686 (regTwo!32687 (regOne!32686 r!7292))))))))

(declare-fun e!3744407 () (InoxSet Context!10942))

(assert (=> b!6144436 (= e!3744407 e!3744408)))

(declare-fun b!6144437 () Bool)

(assert (=> b!6144437 (= e!3744406 ((as const (Array Context!10942 Bool)) false))))

(declare-fun b!6144438 () Bool)

(declare-fun e!3744405 () (InoxSet Context!10942))

(assert (=> b!6144438 (= e!3744405 e!3744407)))

(assert (=> b!6144438 (= c!1105473 ((_ is Union!16087) (ite c!1105244 (regTwo!32687 (regTwo!32687 (regOne!32686 r!7292))) (regOne!32686 (regTwo!32687 (regOne!32686 r!7292))))))))

(declare-fun b!6144439 () Bool)

(declare-fun call!510550 () (InoxSet Context!10942))

(assert (=> b!6144439 (= e!3744408 ((_ map or) call!510552 call!510550))))

(declare-fun bm!510543 () Bool)

(declare-fun call!510547 () (InoxSet Context!10942))

(assert (=> bm!510543 (= call!510550 call!510547)))

(declare-fun b!6144440 () Bool)

(assert (=> b!6144440 (= e!3744410 call!510549)))

(declare-fun bm!510545 () Bool)

(assert (=> bm!510545 (= call!510549 call!510550)))

(declare-fun b!6144441 () Bool)

(assert (=> b!6144441 (= e!3744405 (store ((as const (Array Context!10942 Bool)) false) (ite c!1105244 lt!2333388 (Context!10943 call!510390)) true))))

(declare-fun bm!510546 () Bool)

(declare-fun call!510551 () List!64560)

(assert (=> bm!510546 (= call!510551 call!510548)))

(declare-fun b!6144442 () Bool)

(assert (=> b!6144442 (= e!3744409 (nullable!6080 (regOne!32686 (ite c!1105244 (regTwo!32687 (regTwo!32687 (regOne!32686 r!7292))) (regOne!32686 (regTwo!32687 (regOne!32686 r!7292)))))))))

(declare-fun b!6144443 () Bool)

(assert (=> b!6144443 (= e!3744407 ((_ map or) call!510547 call!510552))))

(declare-fun bm!510547 () Bool)

(assert (=> bm!510547 (= call!510548 ($colon$colon!1964 (exprs!5971 (ite c!1105244 lt!2333388 (Context!10943 call!510390))) (ite (or c!1105471 c!1105472) (regTwo!32686 (ite c!1105244 (regTwo!32687 (regTwo!32687 (regOne!32686 r!7292))) (regOne!32686 (regTwo!32687 (regOne!32686 r!7292))))) (ite c!1105244 (regTwo!32687 (regTwo!32687 (regOne!32686 r!7292))) (regOne!32686 (regTwo!32687 (regOne!32686 r!7292)))))))))

(declare-fun c!1105475 () Bool)

(declare-fun d!1925161 () Bool)

(assert (=> d!1925161 (= c!1105475 (and ((_ is ElementMatch!16087) (ite c!1105244 (regTwo!32687 (regTwo!32687 (regOne!32686 r!7292))) (regOne!32686 (regTwo!32687 (regOne!32686 r!7292))))) (= (c!1105061 (ite c!1105244 (regTwo!32687 (regTwo!32687 (regOne!32686 r!7292))) (regOne!32686 (regTwo!32687 (regOne!32686 r!7292))))) (h!70885 s!2326))))))

(assert (=> d!1925161 (= (derivationStepZipperDown!1335 (ite c!1105244 (regTwo!32687 (regTwo!32687 (regOne!32686 r!7292))) (regOne!32686 (regTwo!32687 (regOne!32686 r!7292)))) (ite c!1105244 lt!2333388 (Context!10943 call!510390)) (h!70885 s!2326)) e!3744405)))

(declare-fun bm!510544 () Bool)

(assert (=> bm!510544 (= call!510547 (derivationStepZipperDown!1335 (ite c!1105473 (regOne!32687 (ite c!1105244 (regTwo!32687 (regTwo!32687 (regOne!32686 r!7292))) (regOne!32686 (regTwo!32687 (regOne!32686 r!7292))))) (ite c!1105471 (regTwo!32686 (ite c!1105244 (regTwo!32687 (regTwo!32687 (regOne!32686 r!7292))) (regOne!32686 (regTwo!32687 (regOne!32686 r!7292))))) (ite c!1105472 (regOne!32686 (ite c!1105244 (regTwo!32687 (regTwo!32687 (regOne!32686 r!7292))) (regOne!32686 (regTwo!32687 (regOne!32686 r!7292))))) (reg!16416 (ite c!1105244 (regTwo!32687 (regTwo!32687 (regOne!32686 r!7292))) (regOne!32686 (regTwo!32687 (regOne!32686 r!7292)))))))) (ite (or c!1105473 c!1105471) (ite c!1105244 lt!2333388 (Context!10943 call!510390)) (Context!10943 call!510551)) (h!70885 s!2326)))))

(assert (= (and d!1925161 c!1105475) b!6144441))

(assert (= (and d!1925161 (not c!1105475)) b!6144438))

(assert (= (and b!6144438 c!1105473) b!6144443))

(assert (= (and b!6144438 (not c!1105473)) b!6144436))

(assert (= (and b!6144436 res!2545619) b!6144442))

(assert (= (and b!6144436 c!1105471) b!6144439))

(assert (= (and b!6144436 (not c!1105471)) b!6144435))

(assert (= (and b!6144435 c!1105472) b!6144440))

(assert (= (and b!6144435 (not c!1105472)) b!6144433))

(assert (= (and b!6144433 c!1105474) b!6144434))

(assert (= (and b!6144433 (not c!1105474)) b!6144437))

(assert (= (or b!6144440 b!6144434) bm!510546))

(assert (= (or b!6144440 b!6144434) bm!510545))

(assert (= (or b!6144439 bm!510546) bm!510547))

(assert (= (or b!6144439 bm!510545) bm!510543))

(assert (= (or b!6144443 b!6144439) bm!510542))

(assert (= (or b!6144443 bm!510543) bm!510544))

(declare-fun m!6985226 () Bool)

(assert (=> bm!510542 m!6985226))

(declare-fun m!6985228 () Bool)

(assert (=> bm!510544 m!6985228))

(declare-fun m!6985230 () Bool)

(assert (=> b!6144441 m!6985230))

(declare-fun m!6985232 () Bool)

(assert (=> b!6144442 m!6985232))

(declare-fun m!6985234 () Bool)

(assert (=> bm!510547 m!6985234))

(assert (=> bm!510384 d!1925161))

(assert (=> d!1924791 d!1925077))

(declare-fun b!6144444 () Bool)

(declare-fun res!2545620 () Bool)

(declare-fun e!3744412 () Bool)

(assert (=> b!6144444 (=> res!2545620 e!3744412)))

(declare-fun e!3744411 () Bool)

(assert (=> b!6144444 (= res!2545620 e!3744411)))

(declare-fun res!2545624 () Bool)

(assert (=> b!6144444 (=> (not res!2545624) (not e!3744411))))

(declare-fun lt!2333522 () Bool)

(assert (=> b!6144444 (= res!2545624 lt!2333522)))

(declare-fun b!6144445 () Bool)

(declare-fun res!2545621 () Bool)

(assert (=> b!6144445 (=> res!2545621 e!3744412)))

(assert (=> b!6144445 (= res!2545621 (not ((_ is ElementMatch!16087) (regOne!32686 r!7292))))))

(declare-fun e!3744417 () Bool)

(assert (=> b!6144445 (= e!3744417 e!3744412)))

(declare-fun b!6144446 () Bool)

(declare-fun e!3744414 () Bool)

(assert (=> b!6144446 (= e!3744412 e!3744414)))

(declare-fun res!2545622 () Bool)

(assert (=> b!6144446 (=> (not res!2545622) (not e!3744414))))

(assert (=> b!6144446 (= res!2545622 (not lt!2333522))))

(declare-fun b!6144447 () Bool)

(declare-fun e!3744415 () Bool)

(assert (=> b!6144447 (= e!3744414 e!3744415)))

(declare-fun res!2545623 () Bool)

(assert (=> b!6144447 (=> res!2545623 e!3744415)))

(declare-fun call!510553 () Bool)

(assert (=> b!6144447 (= res!2545623 call!510553)))

(declare-fun b!6144448 () Bool)

(declare-fun res!2545625 () Bool)

(assert (=> b!6144448 (=> (not res!2545625) (not e!3744411))))

(assert (=> b!6144448 (= res!2545625 (isEmpty!36392 (tail!11780 Nil!64437)))))

(declare-fun b!6144449 () Bool)

(declare-fun e!3744413 () Bool)

(assert (=> b!6144449 (= e!3744413 e!3744417)))

(declare-fun c!1105476 () Bool)

(assert (=> b!6144449 (= c!1105476 ((_ is EmptyLang!16087) (regOne!32686 r!7292)))))

(declare-fun b!6144450 () Bool)

(assert (=> b!6144450 (= e!3744417 (not lt!2333522))))

(declare-fun d!1925163 () Bool)

(assert (=> d!1925163 e!3744413))

(declare-fun c!1105477 () Bool)

(assert (=> d!1925163 (= c!1105477 ((_ is EmptyExpr!16087) (regOne!32686 r!7292)))))

(declare-fun e!3744416 () Bool)

(assert (=> d!1925163 (= lt!2333522 e!3744416)))

(declare-fun c!1105478 () Bool)

(assert (=> d!1925163 (= c!1105478 (isEmpty!36392 Nil!64437))))

(assert (=> d!1925163 (validRegex!7823 (regOne!32686 r!7292))))

(assert (=> d!1925163 (= (matchR!8270 (regOne!32686 r!7292) Nil!64437) lt!2333522)))

(declare-fun bm!510548 () Bool)

(assert (=> bm!510548 (= call!510553 (isEmpty!36392 Nil!64437))))

(declare-fun b!6144451 () Bool)

(assert (=> b!6144451 (= e!3744415 (not (= (head!12695 Nil!64437) (c!1105061 (regOne!32686 r!7292)))))))

(declare-fun b!6144452 () Bool)

(assert (=> b!6144452 (= e!3744416 (nullable!6080 (regOne!32686 r!7292)))))

(declare-fun b!6144453 () Bool)

(assert (=> b!6144453 (= e!3744413 (= lt!2333522 call!510553))))

(declare-fun b!6144454 () Bool)

(assert (=> b!6144454 (= e!3744411 (= (head!12695 Nil!64437) (c!1105061 (regOne!32686 r!7292))))))

(declare-fun b!6144455 () Bool)

(declare-fun res!2545627 () Bool)

(assert (=> b!6144455 (=> res!2545627 e!3744415)))

(assert (=> b!6144455 (= res!2545627 (not (isEmpty!36392 (tail!11780 Nil!64437))))))

(declare-fun b!6144456 () Bool)

(assert (=> b!6144456 (= e!3744416 (matchR!8270 (derivativeStep!4807 (regOne!32686 r!7292) (head!12695 Nil!64437)) (tail!11780 Nil!64437)))))

(declare-fun b!6144457 () Bool)

(declare-fun res!2545626 () Bool)

(assert (=> b!6144457 (=> (not res!2545626) (not e!3744411))))

(assert (=> b!6144457 (= res!2545626 (not call!510553))))

(assert (= (and d!1925163 c!1105478) b!6144452))

(assert (= (and d!1925163 (not c!1105478)) b!6144456))

(assert (= (and d!1925163 c!1105477) b!6144453))

(assert (= (and d!1925163 (not c!1105477)) b!6144449))

(assert (= (and b!6144449 c!1105476) b!6144450))

(assert (= (and b!6144449 (not c!1105476)) b!6144445))

(assert (= (and b!6144445 (not res!2545621)) b!6144444))

(assert (= (and b!6144444 res!2545624) b!6144457))

(assert (= (and b!6144457 res!2545626) b!6144448))

(assert (= (and b!6144448 res!2545625) b!6144454))

(assert (= (and b!6144444 (not res!2545620)) b!6144446))

(assert (= (and b!6144446 res!2545622) b!6144447))

(assert (= (and b!6144447 (not res!2545623)) b!6144455))

(assert (= (and b!6144455 (not res!2545627)) b!6144451))

(assert (= (or b!6144453 b!6144447 b!6144457) bm!510548))

(declare-fun m!6985236 () Bool)

(assert (=> b!6144456 m!6985236))

(assert (=> b!6144456 m!6985236))

(declare-fun m!6985238 () Bool)

(assert (=> b!6144456 m!6985238))

(declare-fun m!6985240 () Bool)

(assert (=> b!6144456 m!6985240))

(assert (=> b!6144456 m!6985238))

(assert (=> b!6144456 m!6985240))

(declare-fun m!6985242 () Bool)

(assert (=> b!6144456 m!6985242))

(declare-fun m!6985244 () Bool)

(assert (=> d!1925163 m!6985244))

(assert (=> d!1925163 m!6984502))

(assert (=> b!6144448 m!6985240))

(assert (=> b!6144448 m!6985240))

(declare-fun m!6985246 () Bool)

(assert (=> b!6144448 m!6985246))

(assert (=> b!6144451 m!6985236))

(assert (=> bm!510548 m!6985244))

(assert (=> b!6144455 m!6985240))

(assert (=> b!6144455 m!6985240))

(assert (=> b!6144455 m!6985246))

(assert (=> b!6144454 m!6985236))

(assert (=> b!6144452 m!6985080))

(assert (=> d!1924791 d!1925163))

(assert (=> d!1924791 d!1925099))

(declare-fun bm!510549 () Bool)

(declare-fun call!510554 () Bool)

(declare-fun call!510556 () Bool)

(assert (=> bm!510549 (= call!510554 call!510556)))

(declare-fun b!6144458 () Bool)

(declare-fun e!3744423 () Bool)

(declare-fun e!3744418 () Bool)

(assert (=> b!6144458 (= e!3744423 e!3744418)))

(declare-fun c!1105480 () Bool)

(assert (=> b!6144458 (= c!1105480 ((_ is Star!16087) lt!2333458))))

(declare-fun bm!510550 () Bool)

(declare-fun c!1105479 () Bool)

(assert (=> bm!510550 (= call!510556 (validRegex!7823 (ite c!1105480 (reg!16416 lt!2333458) (ite c!1105479 (regOne!32687 lt!2333458) (regOne!32686 lt!2333458)))))))

(declare-fun b!6144459 () Bool)

(declare-fun e!3744421 () Bool)

(declare-fun call!510555 () Bool)

(assert (=> b!6144459 (= e!3744421 call!510555)))

(declare-fun b!6144460 () Bool)

(declare-fun e!3744422 () Bool)

(assert (=> b!6144460 (= e!3744418 e!3744422)))

(assert (=> b!6144460 (= c!1105479 ((_ is Union!16087) lt!2333458))))

(declare-fun b!6144461 () Bool)

(declare-fun res!2545628 () Bool)

(declare-fun e!3744420 () Bool)

(assert (=> b!6144461 (=> (not res!2545628) (not e!3744420))))

(assert (=> b!6144461 (= res!2545628 call!510554)))

(assert (=> b!6144461 (= e!3744422 e!3744420)))

(declare-fun b!6144462 () Bool)

(assert (=> b!6144462 (= e!3744420 call!510555)))

(declare-fun b!6144463 () Bool)

(declare-fun res!2545631 () Bool)

(declare-fun e!3744424 () Bool)

(assert (=> b!6144463 (=> res!2545631 e!3744424)))

(assert (=> b!6144463 (= res!2545631 (not ((_ is Concat!24932) lt!2333458)))))

(assert (=> b!6144463 (= e!3744422 e!3744424)))

(declare-fun b!6144464 () Bool)

(declare-fun e!3744419 () Bool)

(assert (=> b!6144464 (= e!3744418 e!3744419)))

(declare-fun res!2545629 () Bool)

(assert (=> b!6144464 (= res!2545629 (not (nullable!6080 (reg!16416 lt!2333458))))))

(assert (=> b!6144464 (=> (not res!2545629) (not e!3744419))))

(declare-fun b!6144465 () Bool)

(assert (=> b!6144465 (= e!3744424 e!3744421)))

(declare-fun res!2545632 () Bool)

(assert (=> b!6144465 (=> (not res!2545632) (not e!3744421))))

(assert (=> b!6144465 (= res!2545632 call!510554)))

(declare-fun b!6144466 () Bool)

(assert (=> b!6144466 (= e!3744419 call!510556)))

(declare-fun d!1925165 () Bool)

(declare-fun res!2545630 () Bool)

(assert (=> d!1925165 (=> res!2545630 e!3744423)))

(assert (=> d!1925165 (= res!2545630 ((_ is ElementMatch!16087) lt!2333458))))

(assert (=> d!1925165 (= (validRegex!7823 lt!2333458) e!3744423)))

(declare-fun bm!510551 () Bool)

(assert (=> bm!510551 (= call!510555 (validRegex!7823 (ite c!1105479 (regTwo!32687 lt!2333458) (regTwo!32686 lt!2333458))))))

(assert (= (and d!1925165 (not res!2545630)) b!6144458))

(assert (= (and b!6144458 c!1105480) b!6144464))

(assert (= (and b!6144458 (not c!1105480)) b!6144460))

(assert (= (and b!6144464 res!2545629) b!6144466))

(assert (= (and b!6144460 c!1105479) b!6144461))

(assert (= (and b!6144460 (not c!1105479)) b!6144463))

(assert (= (and b!6144461 res!2545628) b!6144462))

(assert (= (and b!6144463 (not res!2545631)) b!6144465))

(assert (= (and b!6144465 res!2545632) b!6144459))

(assert (= (or b!6144462 b!6144459) bm!510551))

(assert (= (or b!6144461 b!6144465) bm!510549))

(assert (= (or b!6144466 bm!510549) bm!510550))

(declare-fun m!6985248 () Bool)

(assert (=> bm!510550 m!6985248))

(declare-fun m!6985250 () Bool)

(assert (=> b!6144464 m!6985250))

(declare-fun m!6985252 () Bool)

(assert (=> bm!510551 m!6985252))

(assert (=> d!1924743 d!1925165))

(declare-fun d!1925167 () Bool)

(declare-fun res!2545633 () Bool)

(declare-fun e!3744425 () Bool)

(assert (=> d!1925167 (=> res!2545633 e!3744425)))

(assert (=> d!1925167 (= res!2545633 ((_ is Nil!64436) (unfocusZipperList!1508 zl!343)))))

(assert (=> d!1925167 (= (forall!15208 (unfocusZipperList!1508 zl!343) lambda!334910) e!3744425)))

(declare-fun b!6144467 () Bool)

(declare-fun e!3744426 () Bool)

(assert (=> b!6144467 (= e!3744425 e!3744426)))

(declare-fun res!2545634 () Bool)

(assert (=> b!6144467 (=> (not res!2545634) (not e!3744426))))

(assert (=> b!6144467 (= res!2545634 (dynLambda!25396 lambda!334910 (h!70884 (unfocusZipperList!1508 zl!343))))))

(declare-fun b!6144468 () Bool)

(assert (=> b!6144468 (= e!3744426 (forall!15208 (t!378041 (unfocusZipperList!1508 zl!343)) lambda!334910))))

(assert (= (and d!1925167 (not res!2545633)) b!6144467))

(assert (= (and b!6144467 res!2545634) b!6144468))

(declare-fun b_lambda!233863 () Bool)

(assert (=> (not b_lambda!233863) (not b!6144467)))

(declare-fun m!6985254 () Bool)

(assert (=> b!6144467 m!6985254))

(declare-fun m!6985256 () Bool)

(assert (=> b!6144468 m!6985256))

(assert (=> d!1924743 d!1925167))

(declare-fun d!1925169 () Bool)

(assert (=> d!1925169 (= (Exists!3157 lambda!334923) (choose!45665 lambda!334923))))

(declare-fun bs!1523510 () Bool)

(assert (= bs!1523510 d!1925169))

(declare-fun m!6985258 () Bool)

(assert (=> bs!1523510 m!6985258))

(assert (=> d!1924793 d!1925169))

(declare-fun d!1925171 () Bool)

(assert (=> d!1925171 (= (Exists!3157 lambda!334924) (choose!45665 lambda!334924))))

(declare-fun bs!1523511 () Bool)

(assert (= bs!1523511 d!1925171))

(declare-fun m!6985260 () Bool)

(assert (=> bs!1523511 m!6985260))

(assert (=> d!1924793 d!1925171))

(declare-fun bs!1523512 () Bool)

(declare-fun d!1925173 () Bool)

(assert (= bs!1523512 (and d!1925173 b!6144416)))

(declare-fun lambda!334984 () Int)

(assert (=> bs!1523512 (not (= lambda!334984 lambda!334977))))

(declare-fun bs!1523513 () Bool)

(assert (= bs!1523513 (and d!1925173 b!6142895)))

(assert (=> bs!1523513 (not (= lambda!334984 lambda!334868))))

(declare-fun bs!1523514 () Bool)

(assert (= bs!1523514 (and d!1925173 d!1925103)))

(assert (=> bs!1523514 (= lambda!334984 lambda!334971)))

(declare-fun bs!1523515 () Bool)

(assert (= bs!1523515 (and d!1925173 b!6143379)))

(assert (=> bs!1523515 (not (= lambda!334984 lambda!334904))))

(declare-fun bs!1523516 () Bool)

(assert (= bs!1523516 (and d!1925173 d!1924793)))

(assert (=> bs!1523516 (not (= lambda!334984 lambda!334924))))

(declare-fun bs!1523517 () Bool)

(assert (= bs!1523517 (and d!1925173 d!1924797)))

(assert (=> bs!1523517 (= lambda!334984 lambda!334927)))

(declare-fun bs!1523518 () Bool)

(assert (= bs!1523518 (and d!1925173 b!6143383)))

(assert (=> bs!1523518 (not (= lambda!334984 lambda!334903))))

(assert (=> bs!1523513 (= lambda!334984 lambda!334867)))

(assert (=> bs!1523516 (= lambda!334984 lambda!334923)))

(declare-fun bs!1523519 () Bool)

(assert (= bs!1523519 (and d!1925173 b!6144420)))

(assert (=> bs!1523519 (not (= lambda!334984 lambda!334976))))

(assert (=> d!1925173 true))

(assert (=> d!1925173 true))

(assert (=> d!1925173 true))

(declare-fun lambda!334985 () Int)

(assert (=> bs!1523512 (= (and (= (regOne!32686 r!7292) (regOne!32686 (regTwo!32687 r!7292))) (= (regTwo!32686 r!7292) (regTwo!32686 (regTwo!32687 r!7292)))) (= lambda!334985 lambda!334977))))

(assert (=> bs!1523513 (= lambda!334985 lambda!334868)))

(assert (=> bs!1523514 (not (= lambda!334985 lambda!334971))))

(assert (=> bs!1523515 (= lambda!334985 lambda!334904)))

(assert (=> bs!1523516 (= lambda!334985 lambda!334924)))

(assert (=> bs!1523518 (not (= lambda!334985 lambda!334903))))

(assert (=> bs!1523513 (not (= lambda!334985 lambda!334867))))

(assert (=> bs!1523516 (not (= lambda!334985 lambda!334923))))

(assert (=> bs!1523519 (not (= lambda!334985 lambda!334976))))

(assert (=> bs!1523517 (not (= lambda!334985 lambda!334927))))

(declare-fun bs!1523520 () Bool)

(assert (= bs!1523520 d!1925173))

(assert (=> bs!1523520 (not (= lambda!334985 lambda!334984))))

(assert (=> d!1925173 true))

(assert (=> d!1925173 true))

(assert (=> d!1925173 true))

(assert (=> d!1925173 (= (Exists!3157 lambda!334984) (Exists!3157 lambda!334985))))

(assert (=> d!1925173 true))

(declare-fun _$90!1866 () Unit!157503)

(assert (=> d!1925173 (= (choose!45663 (regOne!32686 r!7292) (regTwo!32686 r!7292) s!2326) _$90!1866)))

(declare-fun m!6985262 () Bool)

(assert (=> bs!1523520 m!6985262))

(declare-fun m!6985264 () Bool)

(assert (=> bs!1523520 m!6985264))

(assert (=> d!1924793 d!1925173))

(assert (=> d!1924793 d!1925099))

(declare-fun d!1925175 () Bool)

(assert (=> d!1925175 (= (nullable!6080 (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343))))) (nullableFct!2044 (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343))))))))

(declare-fun bs!1523521 () Bool)

(assert (= bs!1523521 d!1925175))

(declare-fun m!6985266 () Bool)

(assert (=> bs!1523521 m!6985266))

(assert (=> b!6143514 d!1925175))

(declare-fun d!1925177 () Bool)

(assert (=> d!1925177 (= (isEmptyExpr!1504 lt!2333468) ((_ is EmptyExpr!16087) lt!2333468))))

(assert (=> b!6143582 d!1925177))

(declare-fun d!1925179 () Bool)

(declare-fun c!1105481 () Bool)

(assert (=> d!1925179 (= c!1105481 (isEmpty!36392 (tail!11780 (t!378042 s!2326))))))

(declare-fun e!3744431 () Bool)

(assert (=> d!1925179 (= (matchZipper!2099 (derivationStepZipper!2060 lt!2333387 (head!12695 (t!378042 s!2326))) (tail!11780 (t!378042 s!2326))) e!3744431)))

(declare-fun b!6144477 () Bool)

(assert (=> b!6144477 (= e!3744431 (nullableZipper!1868 (derivationStepZipper!2060 lt!2333387 (head!12695 (t!378042 s!2326)))))))

(declare-fun b!6144478 () Bool)

(assert (=> b!6144478 (= e!3744431 (matchZipper!2099 (derivationStepZipper!2060 (derivationStepZipper!2060 lt!2333387 (head!12695 (t!378042 s!2326))) (head!12695 (tail!11780 (t!378042 s!2326)))) (tail!11780 (tail!11780 (t!378042 s!2326)))))))

(assert (= (and d!1925179 c!1105481) b!6144477))

(assert (= (and d!1925179 (not c!1105481)) b!6144478))

(assert (=> d!1925179 m!6984304))

(assert (=> d!1925179 m!6985088))

(assert (=> b!6144477 m!6984474))

(declare-fun m!6985268 () Bool)

(assert (=> b!6144477 m!6985268))

(assert (=> b!6144478 m!6984304))

(assert (=> b!6144478 m!6985092))

(assert (=> b!6144478 m!6984474))

(assert (=> b!6144478 m!6985092))

(declare-fun m!6985270 () Bool)

(assert (=> b!6144478 m!6985270))

(assert (=> b!6144478 m!6984304))

(assert (=> b!6144478 m!6985096))

(assert (=> b!6144478 m!6985270))

(assert (=> b!6144478 m!6985096))

(declare-fun m!6985272 () Bool)

(assert (=> b!6144478 m!6985272))

(assert (=> b!6143586 d!1925179))

(declare-fun bs!1523522 () Bool)

(declare-fun d!1925181 () Bool)

(assert (= bs!1523522 (and d!1925181 b!6142915)))

(declare-fun lambda!334986 () Int)

(assert (=> bs!1523522 (= (= (head!12695 (t!378042 s!2326)) (h!70885 s!2326)) (= lambda!334986 lambda!334869))))

(declare-fun bs!1523523 () Bool)

(assert (= bs!1523523 (and d!1925181 d!1925129)))

(assert (=> bs!1523523 (= lambda!334986 lambda!334974)))

(declare-fun bs!1523524 () Bool)

(assert (= bs!1523524 (and d!1925181 d!1925119)))

(assert (=> bs!1523524 (= lambda!334986 lambda!334973)))

(declare-fun bs!1523525 () Bool)

(assert (= bs!1523525 (and d!1925181 d!1925089)))

(assert (=> bs!1523525 (= lambda!334986 lambda!334968)))

(declare-fun bs!1523526 () Bool)

(assert (= bs!1523526 (and d!1925181 d!1925139)))

(assert (=> bs!1523526 (= lambda!334986 lambda!334975)))

(assert (=> d!1925181 true))

(assert (=> d!1925181 (= (derivationStepZipper!2060 lt!2333387 (head!12695 (t!378042 s!2326))) (flatMap!1592 lt!2333387 lambda!334986))))

(declare-fun bs!1523527 () Bool)

(assert (= bs!1523527 d!1925181))

(declare-fun m!6985274 () Bool)

(assert (=> bs!1523527 m!6985274))

(assert (=> b!6143586 d!1925181))

(assert (=> b!6143586 d!1925091))

(assert (=> b!6143586 d!1925093))

(declare-fun call!510557 () (InoxSet Context!10942))

(declare-fun b!6144479 () Bool)

(declare-fun e!3744432 () (InoxSet Context!10942))

(assert (=> b!6144479 (= e!3744432 ((_ map or) call!510557 (derivationStepZipperUp!1261 (Context!10943 (t!378041 (exprs!5971 (Context!10943 (t!378041 (exprs!5971 lt!2333391)))))) (h!70885 s!2326))))))

(declare-fun b!6144480 () Bool)

(declare-fun e!3744433 () (InoxSet Context!10942))

(assert (=> b!6144480 (= e!3744433 call!510557)))

(declare-fun b!6144481 () Bool)

(declare-fun e!3744434 () Bool)

(assert (=> b!6144481 (= e!3744434 (nullable!6080 (h!70884 (exprs!5971 (Context!10943 (t!378041 (exprs!5971 lt!2333391)))))))))

(declare-fun bm!510552 () Bool)

(assert (=> bm!510552 (= call!510557 (derivationStepZipperDown!1335 (h!70884 (exprs!5971 (Context!10943 (t!378041 (exprs!5971 lt!2333391))))) (Context!10943 (t!378041 (exprs!5971 (Context!10943 (t!378041 (exprs!5971 lt!2333391)))))) (h!70885 s!2326)))))

(declare-fun b!6144482 () Bool)

(assert (=> b!6144482 (= e!3744433 ((as const (Array Context!10942 Bool)) false))))

(declare-fun b!6144483 () Bool)

(assert (=> b!6144483 (= e!3744432 e!3744433)))

(declare-fun c!1105483 () Bool)

(assert (=> b!6144483 (= c!1105483 ((_ is Cons!64436) (exprs!5971 (Context!10943 (t!378041 (exprs!5971 lt!2333391))))))))

(declare-fun d!1925183 () Bool)

(declare-fun c!1105482 () Bool)

(assert (=> d!1925183 (= c!1105482 e!3744434)))

(declare-fun res!2545643 () Bool)

(assert (=> d!1925183 (=> (not res!2545643) (not e!3744434))))

(assert (=> d!1925183 (= res!2545643 ((_ is Cons!64436) (exprs!5971 (Context!10943 (t!378041 (exprs!5971 lt!2333391))))))))

(assert (=> d!1925183 (= (derivationStepZipperUp!1261 (Context!10943 (t!378041 (exprs!5971 lt!2333391))) (h!70885 s!2326)) e!3744432)))

(assert (= (and d!1925183 res!2545643) b!6144481))

(assert (= (and d!1925183 c!1105482) b!6144479))

(assert (= (and d!1925183 (not c!1105482)) b!6144483))

(assert (= (and b!6144483 c!1105483) b!6144480))

(assert (= (and b!6144483 (not c!1105483)) b!6144482))

(assert (= (or b!6144479 b!6144480) bm!510552))

(declare-fun m!6985276 () Bool)

(assert (=> b!6144479 m!6985276))

(declare-fun m!6985278 () Bool)

(assert (=> b!6144481 m!6985278))

(declare-fun m!6985280 () Bool)

(assert (=> bm!510552 m!6985280))

(assert (=> b!6143526 d!1925183))

(declare-fun d!1925185 () Bool)

(assert (=> d!1925185 true))

(assert (=> d!1925185 true))

(declare-fun res!2545644 () Bool)

(assert (=> d!1925185 (= (choose!45665 lambda!334867) res!2545644)))

(assert (=> d!1924801 d!1925185))

(declare-fun call!510558 () (InoxSet Context!10942))

(declare-fun e!3744435 () (InoxSet Context!10942))

(declare-fun b!6144484 () Bool)

(assert (=> b!6144484 (= e!3744435 ((_ map or) call!510558 (derivationStepZipperUp!1261 (Context!10943 (t!378041 (exprs!5971 (Context!10943 (t!378041 (exprs!5971 (h!70886 zl!343))))))) (h!70885 s!2326))))))

(declare-fun b!6144485 () Bool)

(declare-fun e!3744436 () (InoxSet Context!10942))

(assert (=> b!6144485 (= e!3744436 call!510558)))

(declare-fun b!6144486 () Bool)

(declare-fun e!3744437 () Bool)

(assert (=> b!6144486 (= e!3744437 (nullable!6080 (h!70884 (exprs!5971 (Context!10943 (t!378041 (exprs!5971 (h!70886 zl!343))))))))))

(declare-fun bm!510553 () Bool)

(assert (=> bm!510553 (= call!510558 (derivationStepZipperDown!1335 (h!70884 (exprs!5971 (Context!10943 (t!378041 (exprs!5971 (h!70886 zl!343)))))) (Context!10943 (t!378041 (exprs!5971 (Context!10943 (t!378041 (exprs!5971 (h!70886 zl!343))))))) (h!70885 s!2326)))))

(declare-fun b!6144487 () Bool)

(assert (=> b!6144487 (= e!3744436 ((as const (Array Context!10942 Bool)) false))))

(declare-fun b!6144488 () Bool)

(assert (=> b!6144488 (= e!3744435 e!3744436)))

(declare-fun c!1105485 () Bool)

(assert (=> b!6144488 (= c!1105485 ((_ is Cons!64436) (exprs!5971 (Context!10943 (t!378041 (exprs!5971 (h!70886 zl!343)))))))))

(declare-fun d!1925187 () Bool)

(declare-fun c!1105484 () Bool)

(assert (=> d!1925187 (= c!1105484 e!3744437)))

(declare-fun res!2545645 () Bool)

(assert (=> d!1925187 (=> (not res!2545645) (not e!3744437))))

(assert (=> d!1925187 (= res!2545645 ((_ is Cons!64436) (exprs!5971 (Context!10943 (t!378041 (exprs!5971 (h!70886 zl!343)))))))))

(assert (=> d!1925187 (= (derivationStepZipperUp!1261 (Context!10943 (t!378041 (exprs!5971 (h!70886 zl!343)))) (h!70885 s!2326)) e!3744435)))

(assert (= (and d!1925187 res!2545645) b!6144486))

(assert (= (and d!1925187 c!1105484) b!6144484))

(assert (= (and d!1925187 (not c!1105484)) b!6144488))

(assert (= (and b!6144488 c!1105485) b!6144485))

(assert (= (and b!6144488 (not c!1105485)) b!6144487))

(assert (= (or b!6144484 b!6144485) bm!510553))

(declare-fun m!6985282 () Bool)

(assert (=> b!6144484 m!6985282))

(declare-fun m!6985284 () Bool)

(assert (=> b!6144486 m!6985284))

(declare-fun m!6985286 () Bool)

(assert (=> bm!510553 m!6985286))

(assert (=> b!6143521 d!1925187))

(assert (=> bm!510359 d!1925063))

(assert (=> d!1924733 d!1924731))

(assert (=> d!1924733 d!1924729))

(declare-fun d!1925189 () Bool)

(assert (=> d!1925189 (= (matchR!8270 r!7292 s!2326) (matchRSpec!3188 r!7292 s!2326))))

(assert (=> d!1925189 true))

(declare-fun _$88!4680 () Unit!157503)

(assert (=> d!1925189 (= (choose!45659 r!7292 s!2326) _$88!4680)))

(declare-fun bs!1523528 () Bool)

(assert (= bs!1523528 d!1925189))

(assert (=> bs!1523528 m!6983978))

(assert (=> bs!1523528 m!6983976))

(assert (=> d!1924733 d!1925189))

(assert (=> d!1924733 d!1924727))

(declare-fun bs!1523529 () Bool)

(declare-fun d!1925191 () Bool)

(assert (= bs!1523529 (and d!1925191 d!1925081)))

(declare-fun lambda!334987 () Int)

(assert (=> bs!1523529 (= lambda!334987 lambda!334965)))

(declare-fun bs!1523530 () Bool)

(assert (= bs!1523530 (and d!1925191 d!1925151)))

(assert (=> bs!1523530 (= lambda!334987 lambda!334979)))

(assert (=> d!1925191 (= (nullableZipper!1868 lt!2333394) (exists!2433 lt!2333394 lambda!334987))))

(declare-fun bs!1523531 () Bool)

(assert (= bs!1523531 d!1925191))

(declare-fun m!6985288 () Bool)

(assert (=> bs!1523531 m!6985288))

(assert (=> b!6143428 d!1925191))

(declare-fun b!6144489 () Bool)

(declare-fun res!2545646 () Bool)

(declare-fun e!3744439 () Bool)

(assert (=> b!6144489 (=> res!2545646 e!3744439)))

(declare-fun e!3744438 () Bool)

(assert (=> b!6144489 (= res!2545646 e!3744438)))

(declare-fun res!2545650 () Bool)

(assert (=> b!6144489 (=> (not res!2545650) (not e!3744438))))

(declare-fun lt!2333523 () Bool)

(assert (=> b!6144489 (= res!2545650 lt!2333523)))

(declare-fun b!6144490 () Bool)

(declare-fun res!2545647 () Bool)

(assert (=> b!6144490 (=> res!2545647 e!3744439)))

(assert (=> b!6144490 (= res!2545647 (not ((_ is ElementMatch!16087) (regTwo!32686 r!7292))))))

(declare-fun e!3744444 () Bool)

(assert (=> b!6144490 (= e!3744444 e!3744439)))

(declare-fun b!6144491 () Bool)

(declare-fun e!3744441 () Bool)

(assert (=> b!6144491 (= e!3744439 e!3744441)))

(declare-fun res!2545648 () Bool)

(assert (=> b!6144491 (=> (not res!2545648) (not e!3744441))))

(assert (=> b!6144491 (= res!2545648 (not lt!2333523))))

(declare-fun b!6144492 () Bool)

(declare-fun e!3744442 () Bool)

(assert (=> b!6144492 (= e!3744441 e!3744442)))

(declare-fun res!2545649 () Bool)

(assert (=> b!6144492 (=> res!2545649 e!3744442)))

(declare-fun call!510559 () Bool)

(assert (=> b!6144492 (= res!2545649 call!510559)))

(declare-fun b!6144493 () Bool)

(declare-fun res!2545651 () Bool)

(assert (=> b!6144493 (=> (not res!2545651) (not e!3744438))))

(assert (=> b!6144493 (= res!2545651 (isEmpty!36392 (tail!11780 (_2!36369 (get!22232 lt!2333483)))))))

(declare-fun b!6144494 () Bool)

(declare-fun e!3744440 () Bool)

(assert (=> b!6144494 (= e!3744440 e!3744444)))

(declare-fun c!1105486 () Bool)

(assert (=> b!6144494 (= c!1105486 ((_ is EmptyLang!16087) (regTwo!32686 r!7292)))))

(declare-fun b!6144495 () Bool)

(assert (=> b!6144495 (= e!3744444 (not lt!2333523))))

(declare-fun d!1925193 () Bool)

(assert (=> d!1925193 e!3744440))

(declare-fun c!1105487 () Bool)

(assert (=> d!1925193 (= c!1105487 ((_ is EmptyExpr!16087) (regTwo!32686 r!7292)))))

(declare-fun e!3744443 () Bool)

(assert (=> d!1925193 (= lt!2333523 e!3744443)))

(declare-fun c!1105488 () Bool)

(assert (=> d!1925193 (= c!1105488 (isEmpty!36392 (_2!36369 (get!22232 lt!2333483))))))

(assert (=> d!1925193 (validRegex!7823 (regTwo!32686 r!7292))))

(assert (=> d!1925193 (= (matchR!8270 (regTwo!32686 r!7292) (_2!36369 (get!22232 lt!2333483))) lt!2333523)))

(declare-fun bm!510554 () Bool)

(assert (=> bm!510554 (= call!510559 (isEmpty!36392 (_2!36369 (get!22232 lt!2333483))))))

(declare-fun b!6144496 () Bool)

(assert (=> b!6144496 (= e!3744442 (not (= (head!12695 (_2!36369 (get!22232 lt!2333483))) (c!1105061 (regTwo!32686 r!7292)))))))

(declare-fun b!6144497 () Bool)

(assert (=> b!6144497 (= e!3744443 (nullable!6080 (regTwo!32686 r!7292)))))

(declare-fun b!6144498 () Bool)

(assert (=> b!6144498 (= e!3744440 (= lt!2333523 call!510559))))

(declare-fun b!6144499 () Bool)

(assert (=> b!6144499 (= e!3744438 (= (head!12695 (_2!36369 (get!22232 lt!2333483))) (c!1105061 (regTwo!32686 r!7292))))))

(declare-fun b!6144500 () Bool)

(declare-fun res!2545653 () Bool)

(assert (=> b!6144500 (=> res!2545653 e!3744442)))

(assert (=> b!6144500 (= res!2545653 (not (isEmpty!36392 (tail!11780 (_2!36369 (get!22232 lt!2333483))))))))

(declare-fun b!6144501 () Bool)

(assert (=> b!6144501 (= e!3744443 (matchR!8270 (derivativeStep!4807 (regTwo!32686 r!7292) (head!12695 (_2!36369 (get!22232 lt!2333483)))) (tail!11780 (_2!36369 (get!22232 lt!2333483)))))))

(declare-fun b!6144502 () Bool)

(declare-fun res!2545652 () Bool)

(assert (=> b!6144502 (=> (not res!2545652) (not e!3744438))))

(assert (=> b!6144502 (= res!2545652 (not call!510559))))

(assert (= (and d!1925193 c!1105488) b!6144497))

(assert (= (and d!1925193 (not c!1105488)) b!6144501))

(assert (= (and d!1925193 c!1105487) b!6144498))

(assert (= (and d!1925193 (not c!1105487)) b!6144494))

(assert (= (and b!6144494 c!1105486) b!6144495))

(assert (= (and b!6144494 (not c!1105486)) b!6144490))

(assert (= (and b!6144490 (not res!2545647)) b!6144489))

(assert (= (and b!6144489 res!2545650) b!6144502))

(assert (= (and b!6144502 res!2545652) b!6144493))

(assert (= (and b!6144493 res!2545651) b!6144499))

(assert (= (and b!6144489 (not res!2545646)) b!6144491))

(assert (= (and b!6144491 res!2545648) b!6144492))

(assert (= (and b!6144492 (not res!2545649)) b!6144500))

(assert (= (and b!6144500 (not res!2545653)) b!6144496))

(assert (= (or b!6144498 b!6144492 b!6144502) bm!510554))

(declare-fun m!6985290 () Bool)

(assert (=> b!6144501 m!6985290))

(assert (=> b!6144501 m!6985290))

(declare-fun m!6985292 () Bool)

(assert (=> b!6144501 m!6985292))

(declare-fun m!6985294 () Bool)

(assert (=> b!6144501 m!6985294))

(assert (=> b!6144501 m!6985292))

(assert (=> b!6144501 m!6985294))

(declare-fun m!6985296 () Bool)

(assert (=> b!6144501 m!6985296))

(declare-fun m!6985298 () Bool)

(assert (=> d!1925193 m!6985298))

(assert (=> d!1925193 m!6985194))

(assert (=> b!6144493 m!6985294))

(assert (=> b!6144493 m!6985294))

(declare-fun m!6985300 () Bool)

(assert (=> b!6144493 m!6985300))

(assert (=> b!6144496 m!6985290))

(assert (=> bm!510554 m!6985298))

(assert (=> b!6144500 m!6985294))

(assert (=> b!6144500 m!6985294))

(assert (=> b!6144500 m!6985300))

(assert (=> b!6144499 m!6985290))

(assert (=> b!6144497 m!6985196))

(assert (=> b!6143609 d!1925193))

(assert (=> b!6143609 d!1925125))

(declare-fun bm!510555 () Bool)

(declare-fun call!510560 () Bool)

(declare-fun call!510562 () Bool)

(assert (=> bm!510555 (= call!510560 call!510562)))

(declare-fun b!6144503 () Bool)

(declare-fun e!3744450 () Bool)

(declare-fun e!3744445 () Bool)

(assert (=> b!6144503 (= e!3744450 e!3744445)))

(declare-fun c!1105490 () Bool)

(assert (=> b!6144503 (= c!1105490 ((_ is Star!16087) lt!2333468))))

(declare-fun bm!510556 () Bool)

(declare-fun c!1105489 () Bool)

(assert (=> bm!510556 (= call!510562 (validRegex!7823 (ite c!1105490 (reg!16416 lt!2333468) (ite c!1105489 (regOne!32687 lt!2333468) (regOne!32686 lt!2333468)))))))

(declare-fun b!6144504 () Bool)

(declare-fun e!3744448 () Bool)

(declare-fun call!510561 () Bool)

(assert (=> b!6144504 (= e!3744448 call!510561)))

(declare-fun b!6144505 () Bool)

(declare-fun e!3744449 () Bool)

(assert (=> b!6144505 (= e!3744445 e!3744449)))

(assert (=> b!6144505 (= c!1105489 ((_ is Union!16087) lt!2333468))))

(declare-fun b!6144506 () Bool)

(declare-fun res!2545654 () Bool)

(declare-fun e!3744447 () Bool)

(assert (=> b!6144506 (=> (not res!2545654) (not e!3744447))))

(assert (=> b!6144506 (= res!2545654 call!510560)))

(assert (=> b!6144506 (= e!3744449 e!3744447)))

(declare-fun b!6144507 () Bool)

(assert (=> b!6144507 (= e!3744447 call!510561)))

(declare-fun b!6144508 () Bool)

(declare-fun res!2545657 () Bool)

(declare-fun e!3744451 () Bool)

(assert (=> b!6144508 (=> res!2545657 e!3744451)))

(assert (=> b!6144508 (= res!2545657 (not ((_ is Concat!24932) lt!2333468)))))

(assert (=> b!6144508 (= e!3744449 e!3744451)))

(declare-fun b!6144509 () Bool)

(declare-fun e!3744446 () Bool)

(assert (=> b!6144509 (= e!3744445 e!3744446)))

(declare-fun res!2545655 () Bool)

(assert (=> b!6144509 (= res!2545655 (not (nullable!6080 (reg!16416 lt!2333468))))))

(assert (=> b!6144509 (=> (not res!2545655) (not e!3744446))))

(declare-fun b!6144510 () Bool)

(assert (=> b!6144510 (= e!3744451 e!3744448)))

(declare-fun res!2545658 () Bool)

(assert (=> b!6144510 (=> (not res!2545658) (not e!3744448))))

(assert (=> b!6144510 (= res!2545658 call!510560)))

(declare-fun b!6144511 () Bool)

(assert (=> b!6144511 (= e!3744446 call!510562)))

(declare-fun d!1925195 () Bool)

(declare-fun res!2545656 () Bool)

(assert (=> d!1925195 (=> res!2545656 e!3744450)))

(assert (=> d!1925195 (= res!2545656 ((_ is ElementMatch!16087) lt!2333468))))

(assert (=> d!1925195 (= (validRegex!7823 lt!2333468) e!3744450)))

(declare-fun bm!510557 () Bool)

(assert (=> bm!510557 (= call!510561 (validRegex!7823 (ite c!1105489 (regTwo!32687 lt!2333468) (regTwo!32686 lt!2333468))))))

(assert (= (and d!1925195 (not res!2545656)) b!6144503))

(assert (= (and b!6144503 c!1105490) b!6144509))

(assert (= (and b!6144503 (not c!1105490)) b!6144505))

(assert (= (and b!6144509 res!2545655) b!6144511))

(assert (= (and b!6144505 c!1105489) b!6144506))

(assert (= (and b!6144505 (not c!1105489)) b!6144508))

(assert (= (and b!6144506 res!2545654) b!6144507))

(assert (= (and b!6144508 (not res!2545657)) b!6144510))

(assert (= (and b!6144510 res!2545658) b!6144504))

(assert (= (or b!6144507 b!6144504) bm!510557))

(assert (= (or b!6144506 b!6144510) bm!510555))

(assert (= (or b!6144511 bm!510555) bm!510556))

(declare-fun m!6985302 () Bool)

(assert (=> bm!510556 m!6985302))

(declare-fun m!6985304 () Bool)

(assert (=> b!6144509 m!6985304))

(declare-fun m!6985306 () Bool)

(assert (=> bm!510557 m!6985306))

(assert (=> d!1924775 d!1925195))

(declare-fun d!1925197 () Bool)

(declare-fun res!2545659 () Bool)

(declare-fun e!3744452 () Bool)

(assert (=> d!1925197 (=> res!2545659 e!3744452)))

(assert (=> d!1925197 (= res!2545659 ((_ is Nil!64436) (exprs!5971 (h!70886 zl!343))))))

(assert (=> d!1925197 (= (forall!15208 (exprs!5971 (h!70886 zl!343)) lambda!334917) e!3744452)))

(declare-fun b!6144512 () Bool)

(declare-fun e!3744453 () Bool)

(assert (=> b!6144512 (= e!3744452 e!3744453)))

(declare-fun res!2545660 () Bool)

(assert (=> b!6144512 (=> (not res!2545660) (not e!3744453))))

(assert (=> b!6144512 (= res!2545660 (dynLambda!25396 lambda!334917 (h!70884 (exprs!5971 (h!70886 zl!343)))))))

(declare-fun b!6144513 () Bool)

(assert (=> b!6144513 (= e!3744453 (forall!15208 (t!378041 (exprs!5971 (h!70886 zl!343))) lambda!334917))))

(assert (= (and d!1925197 (not res!2545659)) b!6144512))

(assert (= (and b!6144512 res!2545660) b!6144513))

(declare-fun b_lambda!233865 () Bool)

(assert (=> (not b_lambda!233865) (not b!6144512)))

(declare-fun m!6985308 () Bool)

(assert (=> b!6144512 m!6985308))

(declare-fun m!6985310 () Bool)

(assert (=> b!6144513 m!6985310))

(assert (=> d!1924775 d!1925197))

(declare-fun d!1925199 () Bool)

(assert (=> d!1925199 (= (head!12696 (unfocusZipperList!1508 zl!343)) (h!70884 (unfocusZipperList!1508 zl!343)))))

(assert (=> b!6143456 d!1925199))

(declare-fun d!1925201 () Bool)

(assert (=> d!1925201 (= (Exists!3157 (ite c!1105185 lambda!334903 lambda!334904)) (choose!45665 (ite c!1105185 lambda!334903 lambda!334904)))))

(declare-fun bs!1523532 () Bool)

(assert (= bs!1523532 d!1925201))

(declare-fun m!6985312 () Bool)

(assert (=> bs!1523532 m!6985312))

(assert (=> bm!510356 d!1925201))

(declare-fun d!1925203 () Bool)

(assert (=> d!1925203 (= (isEmpty!36389 (exprs!5971 (h!70886 zl!343))) ((_ is Nil!64436) (exprs!5971 (h!70886 zl!343))))))

(assert (=> b!6143573 d!1925203))

(declare-fun d!1925205 () Bool)

(assert (=> d!1925205 (= (isUnion!944 lt!2333458) ((_ is Union!16087) lt!2333458))))

(assert (=> b!6143460 d!1925205))

(declare-fun d!1925207 () Bool)

(assert (=> d!1925207 true))

(declare-fun setRes!41576 () Bool)

(assert (=> d!1925207 setRes!41576))

(declare-fun condSetEmpty!41576 () Bool)

(declare-fun res!2545663 () (InoxSet Context!10942))

(assert (=> d!1925207 (= condSetEmpty!41576 (= res!2545663 ((as const (Array Context!10942 Bool)) false)))))

(assert (=> d!1925207 (= (choose!45661 z!1189 lambda!334869) res!2545663)))

(declare-fun setIsEmpty!41576 () Bool)

(assert (=> setIsEmpty!41576 setRes!41576))

(declare-fun e!3744456 () Bool)

(declare-fun setElem!41576 () Context!10942)

(declare-fun tp!1716521 () Bool)

(declare-fun setNonEmpty!41576 () Bool)

(assert (=> setNonEmpty!41576 (= setRes!41576 (and tp!1716521 (inv!83464 setElem!41576) e!3744456))))

(declare-fun setRest!41576 () (InoxSet Context!10942))

(assert (=> setNonEmpty!41576 (= res!2545663 ((_ map or) (store ((as const (Array Context!10942 Bool)) false) setElem!41576 true) setRest!41576))))

(declare-fun b!6144516 () Bool)

(declare-fun tp!1716522 () Bool)

(assert (=> b!6144516 (= e!3744456 tp!1716522)))

(assert (= (and d!1925207 condSetEmpty!41576) setIsEmpty!41576))

(assert (= (and d!1925207 (not condSetEmpty!41576)) setNonEmpty!41576))

(assert (= setNonEmpty!41576 b!6144516))

(declare-fun m!6985314 () Bool)

(assert (=> setNonEmpty!41576 m!6985314))

(assert (=> d!1924757 d!1925207))

(declare-fun d!1925209 () Bool)

(declare-fun c!1105491 () Bool)

(assert (=> d!1925209 (= c!1105491 (isEmpty!36392 (t!378042 s!2326)))))

(declare-fun e!3744457 () Bool)

(assert (=> d!1925209 (= (matchZipper!2099 ((_ map or) lt!2333387 lt!2333394) (t!378042 s!2326)) e!3744457)))

(declare-fun b!6144517 () Bool)

(assert (=> b!6144517 (= e!3744457 (nullableZipper!1868 ((_ map or) lt!2333387 lt!2333394)))))

(declare-fun b!6144518 () Bool)

(assert (=> b!6144518 (= e!3744457 (matchZipper!2099 (derivationStepZipper!2060 ((_ map or) lt!2333387 lt!2333394) (head!12695 (t!378042 s!2326))) (tail!11780 (t!378042 s!2326))))))

(assert (= (and d!1925209 c!1105491) b!6144517))

(assert (= (and d!1925209 (not c!1105491)) b!6144518))

(assert (=> d!1925209 m!6984296))

(declare-fun m!6985316 () Bool)

(assert (=> b!6144517 m!6985316))

(assert (=> b!6144518 m!6984300))

(assert (=> b!6144518 m!6984300))

(declare-fun m!6985318 () Bool)

(assert (=> b!6144518 m!6985318))

(assert (=> b!6144518 m!6984304))

(assert (=> b!6144518 m!6985318))

(assert (=> b!6144518 m!6984304))

(declare-fun m!6985320 () Bool)

(assert (=> b!6144518 m!6985320))

(assert (=> d!1924783 d!1925209))

(assert (=> d!1924783 d!1924781))

(declare-fun e!3744458 () Bool)

(declare-fun d!1925211 () Bool)

(assert (=> d!1925211 (= (matchZipper!2099 ((_ map or) lt!2333387 lt!2333394) (t!378042 s!2326)) e!3744458)))

(declare-fun res!2545664 () Bool)

(assert (=> d!1925211 (=> res!2545664 e!3744458)))

(assert (=> d!1925211 (= res!2545664 (matchZipper!2099 lt!2333387 (t!378042 s!2326)))))

(assert (=> d!1925211 true))

(declare-fun _$48!1661 () Unit!157503)

(assert (=> d!1925211 (= (choose!45658 lt!2333387 lt!2333394 (t!378042 s!2326)) _$48!1661)))

(declare-fun b!6144519 () Bool)

(assert (=> b!6144519 (= e!3744458 (matchZipper!2099 lt!2333394 (t!378042 s!2326)))))

(assert (= (and d!1925211 (not res!2545664)) b!6144519))

(assert (=> d!1925211 m!6984478))

(assert (=> d!1925211 m!6984048))

(assert (=> b!6144519 m!6983994))

(assert (=> d!1924783 d!1925211))

(declare-fun d!1925213 () Bool)

(assert (=> d!1925213 true))

(declare-fun setRes!41577 () Bool)

(assert (=> d!1925213 setRes!41577))

(declare-fun condSetEmpty!41577 () Bool)

(declare-fun res!2545665 () (InoxSet Context!10942))

(assert (=> d!1925213 (= condSetEmpty!41577 (= res!2545665 ((as const (Array Context!10942 Bool)) false)))))

(assert (=> d!1925213 (= (choose!45661 lt!2333393 lambda!334869) res!2545665)))

(declare-fun setIsEmpty!41577 () Bool)

(assert (=> setIsEmpty!41577 setRes!41577))

(declare-fun setElem!41577 () Context!10942)

(declare-fun tp!1716523 () Bool)

(declare-fun e!3744459 () Bool)

(declare-fun setNonEmpty!41577 () Bool)

(assert (=> setNonEmpty!41577 (= setRes!41577 (and tp!1716523 (inv!83464 setElem!41577) e!3744459))))

(declare-fun setRest!41577 () (InoxSet Context!10942))

(assert (=> setNonEmpty!41577 (= res!2545665 ((_ map or) (store ((as const (Array Context!10942 Bool)) false) setElem!41577 true) setRest!41577))))

(declare-fun b!6144520 () Bool)

(declare-fun tp!1716524 () Bool)

(assert (=> b!6144520 (= e!3744459 tp!1716524)))

(assert (= (and d!1925213 condSetEmpty!41577) setIsEmpty!41577))

(assert (= (and d!1925213 (not condSetEmpty!41577)) setNonEmpty!41577))

(assert (= setNonEmpty!41577 b!6144520))

(declare-fun m!6985322 () Bool)

(assert (=> setNonEmpty!41577 m!6985322))

(assert (=> d!1924765 d!1925213))

(declare-fun bs!1523533 () Bool)

(declare-fun d!1925215 () Bool)

(assert (= bs!1523533 (and d!1925215 d!1925081)))

(declare-fun lambda!334988 () Int)

(assert (=> bs!1523533 (= lambda!334988 lambda!334965)))

(declare-fun bs!1523534 () Bool)

(assert (= bs!1523534 (and d!1925215 d!1925151)))

(assert (=> bs!1523534 (= lambda!334988 lambda!334979)))

(declare-fun bs!1523535 () Bool)

(assert (= bs!1523535 (and d!1925215 d!1925191)))

(assert (=> bs!1523535 (= lambda!334988 lambda!334987)))

(assert (=> d!1925215 (= (nullableZipper!1868 lt!2333399) (exists!2433 lt!2333399 lambda!334988))))

(declare-fun bs!1523536 () Bool)

(assert (= bs!1523536 d!1925215))

(declare-fun m!6985324 () Bool)

(assert (=> bs!1523536 m!6985324))

(assert (=> b!6143583 d!1925215))

(assert (=> b!6143424 d!1925073))

(declare-fun c!1105494 () Bool)

(declare-fun call!510568 () (InoxSet Context!10942))

(declare-fun call!510564 () List!64560)

(declare-fun bm!510558 () Bool)

(assert (=> bm!510558 (= call!510568 (derivationStepZipperDown!1335 (ite c!1105494 (regTwo!32687 (h!70884 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343)))))))) (regOne!32686 (h!70884 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343))))))))) (ite c!1105494 (Context!10943 (t!378041 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343)))))))) (Context!10943 call!510564)) (h!70885 s!2326)))))

(declare-fun b!6144521 () Bool)

(declare-fun c!1105495 () Bool)

(assert (=> b!6144521 (= c!1105495 ((_ is Star!16087) (h!70884 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343)))))))))))

(declare-fun e!3744465 () (InoxSet Context!10942))

(declare-fun e!3744461 () (InoxSet Context!10942))

(assert (=> b!6144521 (= e!3744465 e!3744461)))

(declare-fun b!6144522 () Bool)

(declare-fun call!510565 () (InoxSet Context!10942))

(assert (=> b!6144522 (= e!3744461 call!510565)))

(declare-fun b!6144523 () Bool)

(declare-fun e!3744463 () (InoxSet Context!10942))

(assert (=> b!6144523 (= e!3744463 e!3744465)))

(declare-fun c!1105493 () Bool)

(assert (=> b!6144523 (= c!1105493 ((_ is Concat!24932) (h!70884 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343)))))))))))

(declare-fun b!6144524 () Bool)

(declare-fun c!1105492 () Bool)

(declare-fun e!3744464 () Bool)

(assert (=> b!6144524 (= c!1105492 e!3744464)))

(declare-fun res!2545666 () Bool)

(assert (=> b!6144524 (=> (not res!2545666) (not e!3744464))))

(assert (=> b!6144524 (= res!2545666 ((_ is Concat!24932) (h!70884 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343)))))))))))

(declare-fun e!3744462 () (InoxSet Context!10942))

(assert (=> b!6144524 (= e!3744462 e!3744463)))

(declare-fun b!6144525 () Bool)

(assert (=> b!6144525 (= e!3744461 ((as const (Array Context!10942 Bool)) false))))

(declare-fun b!6144526 () Bool)

(declare-fun e!3744460 () (InoxSet Context!10942))

(assert (=> b!6144526 (= e!3744460 e!3744462)))

(assert (=> b!6144526 (= c!1105494 ((_ is Union!16087) (h!70884 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343)))))))))))

(declare-fun b!6144527 () Bool)

(declare-fun call!510566 () (InoxSet Context!10942))

(assert (=> b!6144527 (= e!3744463 ((_ map or) call!510568 call!510566))))

(declare-fun bm!510559 () Bool)

(declare-fun call!510563 () (InoxSet Context!10942))

(assert (=> bm!510559 (= call!510566 call!510563)))

(declare-fun b!6144528 () Bool)

(assert (=> b!6144528 (= e!3744465 call!510565)))

(declare-fun bm!510561 () Bool)

(assert (=> bm!510561 (= call!510565 call!510566)))

(declare-fun b!6144529 () Bool)

(assert (=> b!6144529 (= e!3744460 (store ((as const (Array Context!10942 Bool)) false) (Context!10943 (t!378041 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343)))))))) true))))

(declare-fun bm!510562 () Bool)

(declare-fun call!510567 () List!64560)

(assert (=> bm!510562 (= call!510567 call!510564)))

(declare-fun b!6144530 () Bool)

(assert (=> b!6144530 (= e!3744464 (nullable!6080 (regOne!32686 (h!70884 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343))))))))))))

(declare-fun b!6144531 () Bool)

(assert (=> b!6144531 (= e!3744462 ((_ map or) call!510563 call!510568))))

(declare-fun bm!510563 () Bool)

(assert (=> bm!510563 (= call!510564 ($colon$colon!1964 (exprs!5971 (Context!10943 (t!378041 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343))))))))) (ite (or c!1105492 c!1105493) (regTwo!32686 (h!70884 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343)))))))) (h!70884 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343))))))))))))

(declare-fun d!1925217 () Bool)

(declare-fun c!1105496 () Bool)

(assert (=> d!1925217 (= c!1105496 (and ((_ is ElementMatch!16087) (h!70884 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343)))))))) (= (c!1105061 (h!70884 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343)))))))) (h!70885 s!2326))))))

(assert (=> d!1925217 (= (derivationStepZipperDown!1335 (h!70884 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343))))))) (Context!10943 (t!378041 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343)))))))) (h!70885 s!2326)) e!3744460)))

(declare-fun bm!510560 () Bool)

(assert (=> bm!510560 (= call!510563 (derivationStepZipperDown!1335 (ite c!1105494 (regOne!32687 (h!70884 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343)))))))) (ite c!1105492 (regTwo!32686 (h!70884 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343)))))))) (ite c!1105493 (regOne!32686 (h!70884 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343)))))))) (reg!16416 (h!70884 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343))))))))))) (ite (or c!1105494 c!1105492) (Context!10943 (t!378041 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343)))))))) (Context!10943 call!510567)) (h!70885 s!2326)))))

(assert (= (and d!1925217 c!1105496) b!6144529))

(assert (= (and d!1925217 (not c!1105496)) b!6144526))

(assert (= (and b!6144526 c!1105494) b!6144531))

(assert (= (and b!6144526 (not c!1105494)) b!6144524))

(assert (= (and b!6144524 res!2545666) b!6144530))

(assert (= (and b!6144524 c!1105492) b!6144527))

(assert (= (and b!6144524 (not c!1105492)) b!6144523))

(assert (= (and b!6144523 c!1105493) b!6144528))

(assert (= (and b!6144523 (not c!1105493)) b!6144521))

(assert (= (and b!6144521 c!1105495) b!6144522))

(assert (= (and b!6144521 (not c!1105495)) b!6144525))

(assert (= (or b!6144528 b!6144522) bm!510562))

(assert (= (or b!6144528 b!6144522) bm!510561))

(assert (= (or b!6144527 bm!510562) bm!510563))

(assert (= (or b!6144527 bm!510561) bm!510559))

(assert (= (or b!6144531 b!6144527) bm!510558))

(assert (= (or b!6144531 bm!510559) bm!510560))

(declare-fun m!6985326 () Bool)

(assert (=> bm!510558 m!6985326))

(declare-fun m!6985328 () Bool)

(assert (=> bm!510560 m!6985328))

(declare-fun m!6985330 () Bool)

(assert (=> b!6144529 m!6985330))

(declare-fun m!6985332 () Bool)

(assert (=> b!6144530 m!6985332))

(declare-fun m!6985334 () Bool)

(assert (=> bm!510563 m!6985334))

(assert (=> bm!510362 d!1925217))

(declare-fun d!1925219 () Bool)

(declare-fun res!2545667 () Bool)

(declare-fun e!3744466 () Bool)

(assert (=> d!1925219 (=> res!2545667 e!3744466)))

(assert (=> d!1925219 (= res!2545667 ((_ is Nil!64436) (exprs!5971 setElem!41562)))))

(assert (=> d!1925219 (= (forall!15208 (exprs!5971 setElem!41562) lambda!334918) e!3744466)))

(declare-fun b!6144532 () Bool)

(declare-fun e!3744467 () Bool)

(assert (=> b!6144532 (= e!3744466 e!3744467)))

(declare-fun res!2545668 () Bool)

(assert (=> b!6144532 (=> (not res!2545668) (not e!3744467))))

(assert (=> b!6144532 (= res!2545668 (dynLambda!25396 lambda!334918 (h!70884 (exprs!5971 setElem!41562))))))

(declare-fun b!6144533 () Bool)

(assert (=> b!6144533 (= e!3744467 (forall!15208 (t!378041 (exprs!5971 setElem!41562)) lambda!334918))))

(assert (= (and d!1925219 (not res!2545667)) b!6144532))

(assert (= (and b!6144532 res!2545668) b!6144533))

(declare-fun b_lambda!233867 () Bool)

(assert (=> (not b_lambda!233867) (not b!6144532)))

(declare-fun m!6985336 () Bool)

(assert (=> b!6144532 m!6985336))

(declare-fun m!6985338 () Bool)

(assert (=> b!6144533 m!6985338))

(assert (=> d!1924787 d!1925219))

(assert (=> b!6143466 d!1924775))

(declare-fun bs!1523537 () Bool)

(declare-fun d!1925221 () Bool)

(assert (= bs!1523537 (and d!1925221 d!1924775)))

(declare-fun lambda!334989 () Int)

(assert (=> bs!1523537 (= lambda!334989 lambda!334917)))

(declare-fun bs!1523538 () Bool)

(assert (= bs!1523538 (and d!1925221 d!1924743)))

(assert (=> bs!1523538 (= lambda!334989 lambda!334910)))

(declare-fun bs!1523539 () Bool)

(assert (= bs!1523539 (and d!1925221 d!1924761)))

(assert (=> bs!1523539 (= lambda!334989 lambda!334914)))

(declare-fun bs!1523540 () Bool)

(assert (= bs!1523540 (and d!1925221 d!1924787)))

(assert (=> bs!1523540 (= lambda!334989 lambda!334918)))

(declare-fun bs!1523541 () Bool)

(assert (= bs!1523541 (and d!1925221 d!1925145)))

(assert (=> bs!1523541 (= lambda!334989 lambda!334978)))

(declare-fun bs!1523542 () Bool)

(assert (= bs!1523542 (and d!1925221 d!1924739)))

(assert (=> bs!1523542 (= lambda!334989 lambda!334907)))

(declare-fun bs!1523543 () Bool)

(assert (= bs!1523543 (and d!1925221 d!1925059)))

(assert (=> bs!1523543 (= lambda!334989 lambda!334962)))

(declare-fun bs!1523544 () Bool)

(assert (= bs!1523544 (and d!1925221 d!1924745)))

(assert (=> bs!1523544 (= lambda!334989 lambda!334913)))

(declare-fun bs!1523545 () Bool)

(assert (= bs!1523545 (and d!1925221 d!1925115)))

(assert (=> bs!1523545 (= lambda!334989 lambda!334972)))

(declare-fun lt!2333524 () List!64560)

(assert (=> d!1925221 (forall!15208 lt!2333524 lambda!334989)))

(declare-fun e!3744468 () List!64560)

(assert (=> d!1925221 (= lt!2333524 e!3744468)))

(declare-fun c!1105497 () Bool)

(assert (=> d!1925221 (= c!1105497 ((_ is Cons!64438) (t!378043 zl!343)))))

(assert (=> d!1925221 (= (unfocusZipperList!1508 (t!378043 zl!343)) lt!2333524)))

(declare-fun b!6144534 () Bool)

(assert (=> b!6144534 (= e!3744468 (Cons!64436 (generalisedConcat!1684 (exprs!5971 (h!70886 (t!378043 zl!343)))) (unfocusZipperList!1508 (t!378043 (t!378043 zl!343)))))))

(declare-fun b!6144535 () Bool)

(assert (=> b!6144535 (= e!3744468 Nil!64436)))

(assert (= (and d!1925221 c!1105497) b!6144534))

(assert (= (and d!1925221 (not c!1105497)) b!6144535))

(declare-fun m!6985340 () Bool)

(assert (=> d!1925221 m!6985340))

(declare-fun m!6985342 () Bool)

(assert (=> b!6144534 m!6985342))

(declare-fun m!6985344 () Bool)

(assert (=> b!6144534 m!6985344))

(assert (=> b!6143466 d!1925221))

(assert (=> b!6143587 d!1924737))

(declare-fun bs!1523546 () Bool)

(declare-fun d!1925223 () Bool)

(assert (= bs!1523546 (and d!1925223 d!1925081)))

(declare-fun lambda!334990 () Int)

(assert (=> bs!1523546 (= lambda!334990 lambda!334965)))

(declare-fun bs!1523547 () Bool)

(assert (= bs!1523547 (and d!1925223 d!1925151)))

(assert (=> bs!1523547 (= lambda!334990 lambda!334979)))

(declare-fun bs!1523548 () Bool)

(assert (= bs!1523548 (and d!1925223 d!1925191)))

(assert (=> bs!1523548 (= lambda!334990 lambda!334987)))

(declare-fun bs!1523549 () Bool)

(assert (= bs!1523549 (and d!1925223 d!1925215)))

(assert (=> bs!1523549 (= lambda!334990 lambda!334988)))

(assert (=> d!1925223 (= (nullableZipper!1868 lt!2333386) (exists!2433 lt!2333386 lambda!334990))))

(declare-fun bs!1523550 () Bool)

(assert (= bs!1523550 d!1925223))

(declare-fun m!6985346 () Bool)

(assert (=> bs!1523550 m!6985346))

(assert (=> b!6143430 d!1925223))

(declare-fun c!1105500 () Bool)

(declare-fun bm!510564 () Bool)

(declare-fun call!510574 () (InoxSet Context!10942))

(declare-fun call!510570 () List!64560)

(assert (=> bm!510564 (= call!510574 (derivationStepZipperDown!1335 (ite c!1105500 (regTwo!32687 (ite c!1105249 (regOne!32687 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105247 (regTwo!32686 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105248 (regOne!32686 (regOne!32687 (regOne!32686 r!7292))) (reg!16416 (regOne!32687 (regOne!32686 r!7292))))))) (regOne!32686 (ite c!1105249 (regOne!32687 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105247 (regTwo!32686 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105248 (regOne!32686 (regOne!32687 (regOne!32686 r!7292))) (reg!16416 (regOne!32687 (regOne!32686 r!7292)))))))) (ite c!1105500 (ite (or c!1105249 c!1105247) lt!2333388 (Context!10943 call!510399)) (Context!10943 call!510570)) (h!70885 s!2326)))))

(declare-fun c!1105501 () Bool)

(declare-fun b!6144536 () Bool)

(assert (=> b!6144536 (= c!1105501 ((_ is Star!16087) (ite c!1105249 (regOne!32687 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105247 (regTwo!32686 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105248 (regOne!32686 (regOne!32687 (regOne!32686 r!7292))) (reg!16416 (regOne!32687 (regOne!32686 r!7292))))))))))

(declare-fun e!3744474 () (InoxSet Context!10942))

(declare-fun e!3744470 () (InoxSet Context!10942))

(assert (=> b!6144536 (= e!3744474 e!3744470)))

(declare-fun b!6144537 () Bool)

(declare-fun call!510571 () (InoxSet Context!10942))

(assert (=> b!6144537 (= e!3744470 call!510571)))

(declare-fun b!6144538 () Bool)

(declare-fun e!3744472 () (InoxSet Context!10942))

(assert (=> b!6144538 (= e!3744472 e!3744474)))

(declare-fun c!1105499 () Bool)

(assert (=> b!6144538 (= c!1105499 ((_ is Concat!24932) (ite c!1105249 (regOne!32687 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105247 (regTwo!32686 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105248 (regOne!32686 (regOne!32687 (regOne!32686 r!7292))) (reg!16416 (regOne!32687 (regOne!32686 r!7292))))))))))

(declare-fun b!6144539 () Bool)

(declare-fun c!1105498 () Bool)

(declare-fun e!3744473 () Bool)

(assert (=> b!6144539 (= c!1105498 e!3744473)))

(declare-fun res!2545669 () Bool)

(assert (=> b!6144539 (=> (not res!2545669) (not e!3744473))))

(assert (=> b!6144539 (= res!2545669 ((_ is Concat!24932) (ite c!1105249 (regOne!32687 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105247 (regTwo!32686 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105248 (regOne!32686 (regOne!32687 (regOne!32686 r!7292))) (reg!16416 (regOne!32687 (regOne!32686 r!7292))))))))))

(declare-fun e!3744471 () (InoxSet Context!10942))

(assert (=> b!6144539 (= e!3744471 e!3744472)))

(declare-fun b!6144540 () Bool)

(assert (=> b!6144540 (= e!3744470 ((as const (Array Context!10942 Bool)) false))))

(declare-fun b!6144541 () Bool)

(declare-fun e!3744469 () (InoxSet Context!10942))

(assert (=> b!6144541 (= e!3744469 e!3744471)))

(assert (=> b!6144541 (= c!1105500 ((_ is Union!16087) (ite c!1105249 (regOne!32687 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105247 (regTwo!32686 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105248 (regOne!32686 (regOne!32687 (regOne!32686 r!7292))) (reg!16416 (regOne!32687 (regOne!32686 r!7292))))))))))

(declare-fun b!6144542 () Bool)

(declare-fun call!510572 () (InoxSet Context!10942))

(assert (=> b!6144542 (= e!3744472 ((_ map or) call!510574 call!510572))))

(declare-fun bm!510565 () Bool)

(declare-fun call!510569 () (InoxSet Context!10942))

(assert (=> bm!510565 (= call!510572 call!510569)))

(declare-fun b!6144543 () Bool)

(assert (=> b!6144543 (= e!3744474 call!510571)))

(declare-fun bm!510567 () Bool)

(assert (=> bm!510567 (= call!510571 call!510572)))

(declare-fun b!6144544 () Bool)

(assert (=> b!6144544 (= e!3744469 (store ((as const (Array Context!10942 Bool)) false) (ite (or c!1105249 c!1105247) lt!2333388 (Context!10943 call!510399)) true))))

(declare-fun bm!510568 () Bool)

(declare-fun call!510573 () List!64560)

(assert (=> bm!510568 (= call!510573 call!510570)))

(declare-fun b!6144545 () Bool)

(assert (=> b!6144545 (= e!3744473 (nullable!6080 (regOne!32686 (ite c!1105249 (regOne!32687 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105247 (regTwo!32686 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105248 (regOne!32686 (regOne!32687 (regOne!32686 r!7292))) (reg!16416 (regOne!32687 (regOne!32686 r!7292)))))))))))

(declare-fun b!6144546 () Bool)

(assert (=> b!6144546 (= e!3744471 ((_ map or) call!510569 call!510574))))

(declare-fun bm!510569 () Bool)

(assert (=> bm!510569 (= call!510570 ($colon$colon!1964 (exprs!5971 (ite (or c!1105249 c!1105247) lt!2333388 (Context!10943 call!510399))) (ite (or c!1105498 c!1105499) (regTwo!32686 (ite c!1105249 (regOne!32687 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105247 (regTwo!32686 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105248 (regOne!32686 (regOne!32687 (regOne!32686 r!7292))) (reg!16416 (regOne!32687 (regOne!32686 r!7292))))))) (ite c!1105249 (regOne!32687 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105247 (regTwo!32686 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105248 (regOne!32686 (regOne!32687 (regOne!32686 r!7292))) (reg!16416 (regOne!32687 (regOne!32686 r!7292)))))))))))

(declare-fun c!1105502 () Bool)

(declare-fun d!1925225 () Bool)

(assert (=> d!1925225 (= c!1105502 (and ((_ is ElementMatch!16087) (ite c!1105249 (regOne!32687 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105247 (regTwo!32686 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105248 (regOne!32686 (regOne!32687 (regOne!32686 r!7292))) (reg!16416 (regOne!32687 (regOne!32686 r!7292))))))) (= (c!1105061 (ite c!1105249 (regOne!32687 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105247 (regTwo!32686 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105248 (regOne!32686 (regOne!32687 (regOne!32686 r!7292))) (reg!16416 (regOne!32687 (regOne!32686 r!7292))))))) (h!70885 s!2326))))))

(assert (=> d!1925225 (= (derivationStepZipperDown!1335 (ite c!1105249 (regOne!32687 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105247 (regTwo!32686 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105248 (regOne!32686 (regOne!32687 (regOne!32686 r!7292))) (reg!16416 (regOne!32687 (regOne!32686 r!7292)))))) (ite (or c!1105249 c!1105247) lt!2333388 (Context!10943 call!510399)) (h!70885 s!2326)) e!3744469)))

(declare-fun bm!510566 () Bool)

(assert (=> bm!510566 (= call!510569 (derivationStepZipperDown!1335 (ite c!1105500 (regOne!32687 (ite c!1105249 (regOne!32687 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105247 (regTwo!32686 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105248 (regOne!32686 (regOne!32687 (regOne!32686 r!7292))) (reg!16416 (regOne!32687 (regOne!32686 r!7292))))))) (ite c!1105498 (regTwo!32686 (ite c!1105249 (regOne!32687 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105247 (regTwo!32686 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105248 (regOne!32686 (regOne!32687 (regOne!32686 r!7292))) (reg!16416 (regOne!32687 (regOne!32686 r!7292))))))) (ite c!1105499 (regOne!32686 (ite c!1105249 (regOne!32687 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105247 (regTwo!32686 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105248 (regOne!32686 (regOne!32687 (regOne!32686 r!7292))) (reg!16416 (regOne!32687 (regOne!32686 r!7292))))))) (reg!16416 (ite c!1105249 (regOne!32687 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105247 (regTwo!32686 (regOne!32687 (regOne!32686 r!7292))) (ite c!1105248 (regOne!32686 (regOne!32687 (regOne!32686 r!7292))) (reg!16416 (regOne!32687 (regOne!32686 r!7292)))))))))) (ite (or c!1105500 c!1105498) (ite (or c!1105249 c!1105247) lt!2333388 (Context!10943 call!510399)) (Context!10943 call!510573)) (h!70885 s!2326)))))

(assert (= (and d!1925225 c!1105502) b!6144544))

(assert (= (and d!1925225 (not c!1105502)) b!6144541))

(assert (= (and b!6144541 c!1105500) b!6144546))

(assert (= (and b!6144541 (not c!1105500)) b!6144539))

(assert (= (and b!6144539 res!2545669) b!6144545))

(assert (= (and b!6144539 c!1105498) b!6144542))

(assert (= (and b!6144539 (not c!1105498)) b!6144538))

(assert (= (and b!6144538 c!1105499) b!6144543))

(assert (= (and b!6144538 (not c!1105499)) b!6144536))

(assert (= (and b!6144536 c!1105501) b!6144537))

(assert (= (and b!6144536 (not c!1105501)) b!6144540))

(assert (= (or b!6144543 b!6144537) bm!510568))

(assert (= (or b!6144543 b!6144537) bm!510567))

(assert (= (or b!6144542 bm!510568) bm!510569))

(assert (= (or b!6144542 bm!510567) bm!510565))

(assert (= (or b!6144546 b!6144542) bm!510564))

(assert (= (or b!6144546 bm!510565) bm!510566))

(declare-fun m!6985348 () Bool)

(assert (=> bm!510564 m!6985348))

(declare-fun m!6985350 () Bool)

(assert (=> bm!510566 m!6985350))

(declare-fun m!6985352 () Bool)

(assert (=> b!6144544 m!6985352))

(declare-fun m!6985354 () Bool)

(assert (=> b!6144545 m!6985354))

(declare-fun m!6985356 () Bool)

(assert (=> bm!510569 m!6985356))

(assert (=> bm!510392 d!1925225))

(declare-fun d!1925227 () Bool)

(assert (=> d!1925227 (= ($colon$colon!1964 (exprs!5971 lt!2333388) (ite (or c!1105242 c!1105243) (regTwo!32686 (regTwo!32687 (regOne!32686 r!7292))) (regTwo!32687 (regOne!32686 r!7292)))) (Cons!64436 (ite (or c!1105242 c!1105243) (regTwo!32686 (regTwo!32687 (regOne!32686 r!7292))) (regTwo!32687 (regOne!32686 r!7292))) (exprs!5971 lt!2333388)))))

(assert (=> bm!510389 d!1925227))

(declare-fun b!6144547 () Bool)

(declare-fun e!3744476 () List!64561)

(assert (=> b!6144547 (= e!3744476 (t!378042 s!2326))))

(declare-fun b!6144548 () Bool)

(assert (=> b!6144548 (= e!3744476 (Cons!64437 (h!70885 (++!14173 Nil!64437 (Cons!64437 (h!70885 s!2326) Nil!64437))) (++!14173 (t!378042 (++!14173 Nil!64437 (Cons!64437 (h!70885 s!2326) Nil!64437))) (t!378042 s!2326))))))

(declare-fun b!6144550 () Bool)

(declare-fun e!3744475 () Bool)

(declare-fun lt!2333525 () List!64561)

(assert (=> b!6144550 (= e!3744475 (or (not (= (t!378042 s!2326) Nil!64437)) (= lt!2333525 (++!14173 Nil!64437 (Cons!64437 (h!70885 s!2326) Nil!64437)))))))

(declare-fun d!1925229 () Bool)

(assert (=> d!1925229 e!3744475))

(declare-fun res!2545671 () Bool)

(assert (=> d!1925229 (=> (not res!2545671) (not e!3744475))))

(assert (=> d!1925229 (= res!2545671 (= (content!11998 lt!2333525) ((_ map or) (content!11998 (++!14173 Nil!64437 (Cons!64437 (h!70885 s!2326) Nil!64437))) (content!11998 (t!378042 s!2326)))))))

(assert (=> d!1925229 (= lt!2333525 e!3744476)))

(declare-fun c!1105503 () Bool)

(assert (=> d!1925229 (= c!1105503 ((_ is Nil!64437) (++!14173 Nil!64437 (Cons!64437 (h!70885 s!2326) Nil!64437))))))

(assert (=> d!1925229 (= (++!14173 (++!14173 Nil!64437 (Cons!64437 (h!70885 s!2326) Nil!64437)) (t!378042 s!2326)) lt!2333525)))

(declare-fun b!6144549 () Bool)

(declare-fun res!2545670 () Bool)

(assert (=> b!6144549 (=> (not res!2545670) (not e!3744475))))

(assert (=> b!6144549 (= res!2545670 (= (size!40229 lt!2333525) (+ (size!40229 (++!14173 Nil!64437 (Cons!64437 (h!70885 s!2326) Nil!64437))) (size!40229 (t!378042 s!2326)))))))

(assert (= (and d!1925229 c!1105503) b!6144547))

(assert (= (and d!1925229 (not c!1105503)) b!6144548))

(assert (= (and d!1925229 res!2545671) b!6144549))

(assert (= (and b!6144549 res!2545670) b!6144550))

(declare-fun m!6985358 () Bool)

(assert (=> b!6144548 m!6985358))

(declare-fun m!6985360 () Bool)

(assert (=> d!1925229 m!6985360))

(assert (=> d!1925229 m!6984504))

(declare-fun m!6985362 () Bool)

(assert (=> d!1925229 m!6985362))

(declare-fun m!6985364 () Bool)

(assert (=> d!1925229 m!6985364))

(declare-fun m!6985366 () Bool)

(assert (=> b!6144549 m!6985366))

(assert (=> b!6144549 m!6984504))

(declare-fun m!6985368 () Bool)

(assert (=> b!6144549 m!6985368))

(declare-fun m!6985370 () Bool)

(assert (=> b!6144549 m!6985370))

(assert (=> b!6143617 d!1925229))

(declare-fun b!6144551 () Bool)

(declare-fun e!3744478 () List!64561)

(assert (=> b!6144551 (= e!3744478 (Cons!64437 (h!70885 s!2326) Nil!64437))))

(declare-fun b!6144552 () Bool)

(assert (=> b!6144552 (= e!3744478 (Cons!64437 (h!70885 Nil!64437) (++!14173 (t!378042 Nil!64437) (Cons!64437 (h!70885 s!2326) Nil!64437))))))

(declare-fun b!6144554 () Bool)

(declare-fun e!3744477 () Bool)

(declare-fun lt!2333526 () List!64561)

(assert (=> b!6144554 (= e!3744477 (or (not (= (Cons!64437 (h!70885 s!2326) Nil!64437) Nil!64437)) (= lt!2333526 Nil!64437)))))

(declare-fun d!1925231 () Bool)

(assert (=> d!1925231 e!3744477))

(declare-fun res!2545673 () Bool)

(assert (=> d!1925231 (=> (not res!2545673) (not e!3744477))))

(assert (=> d!1925231 (= res!2545673 (= (content!11998 lt!2333526) ((_ map or) (content!11998 Nil!64437) (content!11998 (Cons!64437 (h!70885 s!2326) Nil!64437)))))))

(assert (=> d!1925231 (= lt!2333526 e!3744478)))

(declare-fun c!1105504 () Bool)

(assert (=> d!1925231 (= c!1105504 ((_ is Nil!64437) Nil!64437))))

(assert (=> d!1925231 (= (++!14173 Nil!64437 (Cons!64437 (h!70885 s!2326) Nil!64437)) lt!2333526)))

(declare-fun b!6144553 () Bool)

(declare-fun res!2545672 () Bool)

(assert (=> b!6144553 (=> (not res!2545672) (not e!3744477))))

(assert (=> b!6144553 (= res!2545672 (= (size!40229 lt!2333526) (+ (size!40229 Nil!64437) (size!40229 (Cons!64437 (h!70885 s!2326) Nil!64437)))))))

(assert (= (and d!1925231 c!1105504) b!6144551))

(assert (= (and d!1925231 (not c!1105504)) b!6144552))

(assert (= (and d!1925231 res!2545673) b!6144553))

(assert (= (and b!6144553 res!2545672) b!6144554))

(declare-fun m!6985372 () Bool)

(assert (=> b!6144552 m!6985372))

(declare-fun m!6985374 () Bool)

(assert (=> d!1925231 m!6985374))

(declare-fun m!6985376 () Bool)

(assert (=> d!1925231 m!6985376))

(declare-fun m!6985378 () Bool)

(assert (=> d!1925231 m!6985378))

(declare-fun m!6985380 () Bool)

(assert (=> b!6144553 m!6985380))

(declare-fun m!6985382 () Bool)

(assert (=> b!6144553 m!6985382))

(declare-fun m!6985384 () Bool)

(assert (=> b!6144553 m!6985384))

(assert (=> b!6143617 d!1925231))

(declare-fun d!1925233 () Bool)

(assert (=> d!1925233 (= (++!14173 (++!14173 Nil!64437 (Cons!64437 (h!70885 s!2326) Nil!64437)) (t!378042 s!2326)) s!2326)))

(declare-fun lt!2333529 () Unit!157503)

(declare-fun choose!45667 (List!64561 C!32444 List!64561 List!64561) Unit!157503)

(assert (=> d!1925233 (= lt!2333529 (choose!45667 Nil!64437 (h!70885 s!2326) (t!378042 s!2326) s!2326))))

(assert (=> d!1925233 (= (++!14173 Nil!64437 (Cons!64437 (h!70885 s!2326) (t!378042 s!2326))) s!2326)))

(assert (=> d!1925233 (= (lemmaMoveElementToOtherListKeepsConcatEq!2268 Nil!64437 (h!70885 s!2326) (t!378042 s!2326) s!2326) lt!2333529)))

(declare-fun bs!1523551 () Bool)

(assert (= bs!1523551 d!1925233))

(assert (=> bs!1523551 m!6984504))

(assert (=> bs!1523551 m!6984504))

(assert (=> bs!1523551 m!6984506))

(declare-fun m!6985386 () Bool)

(assert (=> bs!1523551 m!6985386))

(declare-fun m!6985388 () Bool)

(assert (=> bs!1523551 m!6985388))

(assert (=> b!6143617 d!1925233))

(declare-fun d!1925235 () Bool)

(declare-fun e!3744483 () Bool)

(assert (=> d!1925235 e!3744483))

(declare-fun res!2545675 () Bool)

(assert (=> d!1925235 (=> res!2545675 e!3744483)))

(declare-fun e!3744479 () Bool)

(assert (=> d!1925235 (= res!2545675 e!3744479)))

(declare-fun res!2545676 () Bool)

(assert (=> d!1925235 (=> (not res!2545676) (not e!3744479))))

(declare-fun lt!2333531 () Option!15978)

(assert (=> d!1925235 (= res!2545676 (isDefined!12681 lt!2333531))))

(declare-fun e!3744482 () Option!15978)

(assert (=> d!1925235 (= lt!2333531 e!3744482)))

(declare-fun c!1105505 () Bool)

(declare-fun e!3744480 () Bool)

(assert (=> d!1925235 (= c!1105505 e!3744480)))

(declare-fun res!2545677 () Bool)

(assert (=> d!1925235 (=> (not res!2545677) (not e!3744480))))

(assert (=> d!1925235 (= res!2545677 (matchR!8270 (regOne!32686 r!7292) (++!14173 Nil!64437 (Cons!64437 (h!70885 s!2326) Nil!64437))))))

(assert (=> d!1925235 (validRegex!7823 (regOne!32686 r!7292))))

(assert (=> d!1925235 (= (findConcatSeparation!2392 (regOne!32686 r!7292) (regTwo!32686 r!7292) (++!14173 Nil!64437 (Cons!64437 (h!70885 s!2326) Nil!64437)) (t!378042 s!2326) s!2326) lt!2333531)))

(declare-fun b!6144555 () Bool)

(declare-fun res!2545674 () Bool)

(assert (=> b!6144555 (=> (not res!2545674) (not e!3744479))))

(assert (=> b!6144555 (= res!2545674 (matchR!8270 (regTwo!32686 r!7292) (_2!36369 (get!22232 lt!2333531))))))

(declare-fun b!6144556 () Bool)

(assert (=> b!6144556 (= e!3744479 (= (++!14173 (_1!36369 (get!22232 lt!2333531)) (_2!36369 (get!22232 lt!2333531))) s!2326))))

(declare-fun b!6144557 () Bool)

(assert (=> b!6144557 (= e!3744482 (Some!15977 (tuple2!66133 (++!14173 Nil!64437 (Cons!64437 (h!70885 s!2326) Nil!64437)) (t!378042 s!2326))))))

(declare-fun b!6144558 () Bool)

(declare-fun e!3744481 () Option!15978)

(assert (=> b!6144558 (= e!3744481 None!15977)))

(declare-fun b!6144559 () Bool)

(assert (=> b!6144559 (= e!3744482 e!3744481)))

(declare-fun c!1105506 () Bool)

(assert (=> b!6144559 (= c!1105506 ((_ is Nil!64437) (t!378042 s!2326)))))

(declare-fun b!6144560 () Bool)

(assert (=> b!6144560 (= e!3744480 (matchR!8270 (regTwo!32686 r!7292) (t!378042 s!2326)))))

(declare-fun b!6144561 () Bool)

(assert (=> b!6144561 (= e!3744483 (not (isDefined!12681 lt!2333531)))))

(declare-fun b!6144562 () Bool)

(declare-fun res!2545678 () Bool)

(assert (=> b!6144562 (=> (not res!2545678) (not e!3744479))))

(assert (=> b!6144562 (= res!2545678 (matchR!8270 (regOne!32686 r!7292) (_1!36369 (get!22232 lt!2333531))))))

(declare-fun b!6144563 () Bool)

(declare-fun lt!2333532 () Unit!157503)

(declare-fun lt!2333530 () Unit!157503)

(assert (=> b!6144563 (= lt!2333532 lt!2333530)))

(assert (=> b!6144563 (= (++!14173 (++!14173 (++!14173 Nil!64437 (Cons!64437 (h!70885 s!2326) Nil!64437)) (Cons!64437 (h!70885 (t!378042 s!2326)) Nil!64437)) (t!378042 (t!378042 s!2326))) s!2326)))

(assert (=> b!6144563 (= lt!2333530 (lemmaMoveElementToOtherListKeepsConcatEq!2268 (++!14173 Nil!64437 (Cons!64437 (h!70885 s!2326) Nil!64437)) (h!70885 (t!378042 s!2326)) (t!378042 (t!378042 s!2326)) s!2326))))

(assert (=> b!6144563 (= e!3744481 (findConcatSeparation!2392 (regOne!32686 r!7292) (regTwo!32686 r!7292) (++!14173 (++!14173 Nil!64437 (Cons!64437 (h!70885 s!2326) Nil!64437)) (Cons!64437 (h!70885 (t!378042 s!2326)) Nil!64437)) (t!378042 (t!378042 s!2326)) s!2326))))

(assert (= (and d!1925235 res!2545677) b!6144560))

(assert (= (and d!1925235 c!1105505) b!6144557))

(assert (= (and d!1925235 (not c!1105505)) b!6144559))

(assert (= (and b!6144559 c!1105506) b!6144558))

(assert (= (and b!6144559 (not c!1105506)) b!6144563))

(assert (= (and d!1925235 res!2545676) b!6144562))

(assert (= (and b!6144562 res!2545678) b!6144555))

(assert (= (and b!6144555 res!2545674) b!6144556))

(assert (= (and d!1925235 (not res!2545675)) b!6144561))

(declare-fun m!6985390 () Bool)

(assert (=> b!6144562 m!6985390))

(declare-fun m!6985392 () Bool)

(assert (=> b!6144562 m!6985392))

(declare-fun m!6985394 () Bool)

(assert (=> b!6144561 m!6985394))

(assert (=> b!6144555 m!6985390))

(declare-fun m!6985396 () Bool)

(assert (=> b!6144555 m!6985396))

(assert (=> d!1925235 m!6985394))

(assert (=> d!1925235 m!6984504))

(declare-fun m!6985398 () Bool)

(assert (=> d!1925235 m!6985398))

(assert (=> d!1925235 m!6984502))

(assert (=> b!6144563 m!6984504))

(declare-fun m!6985400 () Bool)

(assert (=> b!6144563 m!6985400))

(assert (=> b!6144563 m!6985400))

(declare-fun m!6985402 () Bool)

(assert (=> b!6144563 m!6985402))

(assert (=> b!6144563 m!6984504))

(declare-fun m!6985404 () Bool)

(assert (=> b!6144563 m!6985404))

(assert (=> b!6144563 m!6985400))

(declare-fun m!6985406 () Bool)

(assert (=> b!6144563 m!6985406))

(assert (=> b!6144556 m!6985390))

(declare-fun m!6985408 () Bool)

(assert (=> b!6144556 m!6985408))

(declare-fun m!6985410 () Bool)

(assert (=> b!6144560 m!6985410))

(assert (=> b!6143617 d!1925235))

(declare-fun bm!510570 () Bool)

(declare-fun call!510580 () (InoxSet Context!10942))

(declare-fun c!1105509 () Bool)

(declare-fun call!510576 () List!64560)

(assert (=> bm!510570 (= call!510580 (derivationStepZipperDown!1335 (ite c!1105509 (regTwo!32687 (ite c!1105233 (regOne!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105231 (regTwo!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105232 (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (reg!16416 (h!70884 (exprs!5971 (h!70886 zl!343)))))))) (regOne!32686 (ite c!1105233 (regOne!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105231 (regTwo!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105232 (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (reg!16416 (h!70884 (exprs!5971 (h!70886 zl!343))))))))) (ite c!1105509 (ite (or c!1105233 c!1105231) lt!2333388 (Context!10943 call!510384)) (Context!10943 call!510576)) (h!70885 s!2326)))))

(declare-fun c!1105510 () Bool)

(declare-fun b!6144564 () Bool)

(assert (=> b!6144564 (= c!1105510 ((_ is Star!16087) (ite c!1105233 (regOne!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105231 (regTwo!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105232 (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (reg!16416 (h!70884 (exprs!5971 (h!70886 zl!343)))))))))))

(declare-fun e!3744489 () (InoxSet Context!10942))

(declare-fun e!3744485 () (InoxSet Context!10942))

(assert (=> b!6144564 (= e!3744489 e!3744485)))

(declare-fun b!6144565 () Bool)

(declare-fun call!510577 () (InoxSet Context!10942))

(assert (=> b!6144565 (= e!3744485 call!510577)))

(declare-fun b!6144566 () Bool)

(declare-fun e!3744487 () (InoxSet Context!10942))

(assert (=> b!6144566 (= e!3744487 e!3744489)))

(declare-fun c!1105508 () Bool)

(assert (=> b!6144566 (= c!1105508 ((_ is Concat!24932) (ite c!1105233 (regOne!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105231 (regTwo!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105232 (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (reg!16416 (h!70884 (exprs!5971 (h!70886 zl!343)))))))))))

(declare-fun b!6144567 () Bool)

(declare-fun c!1105507 () Bool)

(declare-fun e!3744488 () Bool)

(assert (=> b!6144567 (= c!1105507 e!3744488)))

(declare-fun res!2545679 () Bool)

(assert (=> b!6144567 (=> (not res!2545679) (not e!3744488))))

(assert (=> b!6144567 (= res!2545679 ((_ is Concat!24932) (ite c!1105233 (regOne!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105231 (regTwo!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105232 (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (reg!16416 (h!70884 (exprs!5971 (h!70886 zl!343)))))))))))

(declare-fun e!3744486 () (InoxSet Context!10942))

(assert (=> b!6144567 (= e!3744486 e!3744487)))

(declare-fun b!6144568 () Bool)

(assert (=> b!6144568 (= e!3744485 ((as const (Array Context!10942 Bool)) false))))

(declare-fun b!6144569 () Bool)

(declare-fun e!3744484 () (InoxSet Context!10942))

(assert (=> b!6144569 (= e!3744484 e!3744486)))

(assert (=> b!6144569 (= c!1105509 ((_ is Union!16087) (ite c!1105233 (regOne!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105231 (regTwo!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105232 (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (reg!16416 (h!70884 (exprs!5971 (h!70886 zl!343)))))))))))

(declare-fun b!6144570 () Bool)

(declare-fun call!510578 () (InoxSet Context!10942))

(assert (=> b!6144570 (= e!3744487 ((_ map or) call!510580 call!510578))))

(declare-fun bm!510571 () Bool)

(declare-fun call!510575 () (InoxSet Context!10942))

(assert (=> bm!510571 (= call!510578 call!510575)))

(declare-fun b!6144571 () Bool)

(assert (=> b!6144571 (= e!3744489 call!510577)))

(declare-fun bm!510573 () Bool)

(assert (=> bm!510573 (= call!510577 call!510578)))

(declare-fun b!6144572 () Bool)

(assert (=> b!6144572 (= e!3744484 (store ((as const (Array Context!10942 Bool)) false) (ite (or c!1105233 c!1105231) lt!2333388 (Context!10943 call!510384)) true))))

(declare-fun bm!510574 () Bool)

(declare-fun call!510579 () List!64560)

(assert (=> bm!510574 (= call!510579 call!510576)))

(declare-fun b!6144573 () Bool)

(assert (=> b!6144573 (= e!3744488 (nullable!6080 (regOne!32686 (ite c!1105233 (regOne!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105231 (regTwo!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105232 (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (reg!16416 (h!70884 (exprs!5971 (h!70886 zl!343))))))))))))

(declare-fun b!6144574 () Bool)

(assert (=> b!6144574 (= e!3744486 ((_ map or) call!510575 call!510580))))

(declare-fun bm!510575 () Bool)

(assert (=> bm!510575 (= call!510576 ($colon$colon!1964 (exprs!5971 (ite (or c!1105233 c!1105231) lt!2333388 (Context!10943 call!510384))) (ite (or c!1105507 c!1105508) (regTwo!32686 (ite c!1105233 (regOne!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105231 (regTwo!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105232 (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (reg!16416 (h!70884 (exprs!5971 (h!70886 zl!343)))))))) (ite c!1105233 (regOne!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105231 (regTwo!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105232 (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (reg!16416 (h!70884 (exprs!5971 (h!70886 zl!343))))))))))))

(declare-fun d!1925237 () Bool)

(declare-fun c!1105511 () Bool)

(assert (=> d!1925237 (= c!1105511 (and ((_ is ElementMatch!16087) (ite c!1105233 (regOne!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105231 (regTwo!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105232 (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (reg!16416 (h!70884 (exprs!5971 (h!70886 zl!343)))))))) (= (c!1105061 (ite c!1105233 (regOne!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105231 (regTwo!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105232 (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (reg!16416 (h!70884 (exprs!5971 (h!70886 zl!343)))))))) (h!70885 s!2326))))))

(assert (=> d!1925237 (= (derivationStepZipperDown!1335 (ite c!1105233 (regOne!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105231 (regTwo!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105232 (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (reg!16416 (h!70884 (exprs!5971 (h!70886 zl!343))))))) (ite (or c!1105233 c!1105231) lt!2333388 (Context!10943 call!510384)) (h!70885 s!2326)) e!3744484)))

(declare-fun bm!510572 () Bool)

(assert (=> bm!510572 (= call!510575 (derivationStepZipperDown!1335 (ite c!1105509 (regOne!32687 (ite c!1105233 (regOne!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105231 (regTwo!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105232 (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (reg!16416 (h!70884 (exprs!5971 (h!70886 zl!343)))))))) (ite c!1105507 (regTwo!32686 (ite c!1105233 (regOne!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105231 (regTwo!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105232 (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (reg!16416 (h!70884 (exprs!5971 (h!70886 zl!343)))))))) (ite c!1105508 (regOne!32686 (ite c!1105233 (regOne!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105231 (regTwo!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105232 (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (reg!16416 (h!70884 (exprs!5971 (h!70886 zl!343)))))))) (reg!16416 (ite c!1105233 (regOne!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105231 (regTwo!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105232 (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (reg!16416 (h!70884 (exprs!5971 (h!70886 zl!343))))))))))) (ite (or c!1105509 c!1105507) (ite (or c!1105233 c!1105231) lt!2333388 (Context!10943 call!510384)) (Context!10943 call!510579)) (h!70885 s!2326)))))

(assert (= (and d!1925237 c!1105511) b!6144572))

(assert (= (and d!1925237 (not c!1105511)) b!6144569))

(assert (= (and b!6144569 c!1105509) b!6144574))

(assert (= (and b!6144569 (not c!1105509)) b!6144567))

(assert (= (and b!6144567 res!2545679) b!6144573))

(assert (= (and b!6144567 c!1105507) b!6144570))

(assert (= (and b!6144567 (not c!1105507)) b!6144566))

(assert (= (and b!6144566 c!1105508) b!6144571))

(assert (= (and b!6144566 (not c!1105508)) b!6144564))

(assert (= (and b!6144564 c!1105510) b!6144565))

(assert (= (and b!6144564 (not c!1105510)) b!6144568))

(assert (= (or b!6144571 b!6144565) bm!510574))

(assert (= (or b!6144571 b!6144565) bm!510573))

(assert (= (or b!6144570 bm!510574) bm!510575))

(assert (= (or b!6144570 bm!510573) bm!510571))

(assert (= (or b!6144574 b!6144570) bm!510570))

(assert (= (or b!6144574 bm!510571) bm!510572))

(declare-fun m!6985412 () Bool)

(assert (=> bm!510570 m!6985412))

(declare-fun m!6985414 () Bool)

(assert (=> bm!510572 m!6985414))

(declare-fun m!6985416 () Bool)

(assert (=> b!6144572 m!6985416))

(declare-fun m!6985418 () Bool)

(assert (=> b!6144573 m!6985418))

(declare-fun m!6985420 () Bool)

(assert (=> bm!510575 m!6985420))

(assert (=> bm!510377 d!1925237))

(declare-fun bs!1523552 () Bool)

(declare-fun b!6144583 () Bool)

(assert (= bs!1523552 (and b!6144583 b!6144416)))

(declare-fun lambda!334991 () Int)

(assert (=> bs!1523552 (not (= lambda!334991 lambda!334977))))

(declare-fun bs!1523553 () Bool)

(assert (= bs!1523553 (and b!6144583 b!6142895)))

(assert (=> bs!1523553 (not (= lambda!334991 lambda!334868))))

(declare-fun bs!1523554 () Bool)

(assert (= bs!1523554 (and b!6144583 d!1925103)))

(assert (=> bs!1523554 (not (= lambda!334991 lambda!334971))))

(declare-fun bs!1523555 () Bool)

(assert (= bs!1523555 (and b!6144583 b!6143379)))

(assert (=> bs!1523555 (not (= lambda!334991 lambda!334904))))

(declare-fun bs!1523556 () Bool)

(assert (= bs!1523556 (and b!6144583 d!1924793)))

(assert (=> bs!1523556 (not (= lambda!334991 lambda!334924))))

(declare-fun bs!1523557 () Bool)

(assert (= bs!1523557 (and b!6144583 b!6143383)))

(assert (=> bs!1523557 (= (and (= (reg!16416 (regOne!32687 r!7292)) (reg!16416 r!7292)) (= (regOne!32687 r!7292) r!7292)) (= lambda!334991 lambda!334903))))

(assert (=> bs!1523553 (not (= lambda!334991 lambda!334867))))

(declare-fun bs!1523558 () Bool)

(assert (= bs!1523558 (and b!6144583 d!1925173)))

(assert (=> bs!1523558 (not (= lambda!334991 lambda!334985))))

(assert (=> bs!1523556 (not (= lambda!334991 lambda!334923))))

(declare-fun bs!1523559 () Bool)

(assert (= bs!1523559 (and b!6144583 b!6144420)))

(assert (=> bs!1523559 (= (and (= (reg!16416 (regOne!32687 r!7292)) (reg!16416 (regTwo!32687 r!7292))) (= (regOne!32687 r!7292) (regTwo!32687 r!7292))) (= lambda!334991 lambda!334976))))

(declare-fun bs!1523560 () Bool)

(assert (= bs!1523560 (and b!6144583 d!1924797)))

(assert (=> bs!1523560 (not (= lambda!334991 lambda!334927))))

(assert (=> bs!1523558 (not (= lambda!334991 lambda!334984))))

(assert (=> b!6144583 true))

(assert (=> b!6144583 true))

(declare-fun bs!1523561 () Bool)

(declare-fun b!6144579 () Bool)

(assert (= bs!1523561 (and b!6144579 b!6144416)))

(declare-fun lambda!334992 () Int)

(assert (=> bs!1523561 (= (and (= (regOne!32686 (regOne!32687 r!7292)) (regOne!32686 (regTwo!32687 r!7292))) (= (regTwo!32686 (regOne!32687 r!7292)) (regTwo!32686 (regTwo!32687 r!7292)))) (= lambda!334992 lambda!334977))))

(declare-fun bs!1523562 () Bool)

(assert (= bs!1523562 (and b!6144579 b!6142895)))

(assert (=> bs!1523562 (= (and (= (regOne!32686 (regOne!32687 r!7292)) (regOne!32686 r!7292)) (= (regTwo!32686 (regOne!32687 r!7292)) (regTwo!32686 r!7292))) (= lambda!334992 lambda!334868))))

(declare-fun bs!1523563 () Bool)

(assert (= bs!1523563 (and b!6144579 d!1925103)))

(assert (=> bs!1523563 (not (= lambda!334992 lambda!334971))))

(declare-fun bs!1523564 () Bool)

(assert (= bs!1523564 (and b!6144579 b!6144583)))

(assert (=> bs!1523564 (not (= lambda!334992 lambda!334991))))

(declare-fun bs!1523565 () Bool)

(assert (= bs!1523565 (and b!6144579 b!6143379)))

(assert (=> bs!1523565 (= (and (= (regOne!32686 (regOne!32687 r!7292)) (regOne!32686 r!7292)) (= (regTwo!32686 (regOne!32687 r!7292)) (regTwo!32686 r!7292))) (= lambda!334992 lambda!334904))))

(declare-fun bs!1523566 () Bool)

(assert (= bs!1523566 (and b!6144579 d!1924793)))

(assert (=> bs!1523566 (= (and (= (regOne!32686 (regOne!32687 r!7292)) (regOne!32686 r!7292)) (= (regTwo!32686 (regOne!32687 r!7292)) (regTwo!32686 r!7292))) (= lambda!334992 lambda!334924))))

(declare-fun bs!1523567 () Bool)

(assert (= bs!1523567 (and b!6144579 b!6143383)))

(assert (=> bs!1523567 (not (= lambda!334992 lambda!334903))))

(assert (=> bs!1523562 (not (= lambda!334992 lambda!334867))))

(declare-fun bs!1523568 () Bool)

(assert (= bs!1523568 (and b!6144579 d!1925173)))

(assert (=> bs!1523568 (= (and (= (regOne!32686 (regOne!32687 r!7292)) (regOne!32686 r!7292)) (= (regTwo!32686 (regOne!32687 r!7292)) (regTwo!32686 r!7292))) (= lambda!334992 lambda!334985))))

(assert (=> bs!1523566 (not (= lambda!334992 lambda!334923))))

(declare-fun bs!1523569 () Bool)

(assert (= bs!1523569 (and b!6144579 b!6144420)))

(assert (=> bs!1523569 (not (= lambda!334992 lambda!334976))))

(declare-fun bs!1523570 () Bool)

(assert (= bs!1523570 (and b!6144579 d!1924797)))

(assert (=> bs!1523570 (not (= lambda!334992 lambda!334927))))

(assert (=> bs!1523568 (not (= lambda!334992 lambda!334984))))

(assert (=> b!6144579 true))

(assert (=> b!6144579 true))

(declare-fun b!6144575 () Bool)

(declare-fun res!2545682 () Bool)

(declare-fun e!3744492 () Bool)

(assert (=> b!6144575 (=> res!2545682 e!3744492)))

(declare-fun call!510581 () Bool)

(assert (=> b!6144575 (= res!2545682 call!510581)))

(declare-fun e!3744491 () Bool)

(assert (=> b!6144575 (= e!3744491 e!3744492)))

(declare-fun d!1925239 () Bool)

(declare-fun c!1105513 () Bool)

(assert (=> d!1925239 (= c!1105513 ((_ is EmptyExpr!16087) (regOne!32687 r!7292)))))

(declare-fun e!3744495 () Bool)

(assert (=> d!1925239 (= (matchRSpec!3188 (regOne!32687 r!7292) s!2326) e!3744495)))

(declare-fun b!6144576 () Bool)

(declare-fun e!3744490 () Bool)

(assert (=> b!6144576 (= e!3744495 e!3744490)))

(declare-fun res!2545680 () Bool)

(assert (=> b!6144576 (= res!2545680 (not ((_ is EmptyLang!16087) (regOne!32687 r!7292))))))

(assert (=> b!6144576 (=> (not res!2545680) (not e!3744490))))

(declare-fun b!6144577 () Bool)

(assert (=> b!6144577 (= e!3744495 call!510581)))

(declare-fun bm!510576 () Bool)

(assert (=> bm!510576 (= call!510581 (isEmpty!36392 s!2326))))

(declare-fun b!6144578 () Bool)

(declare-fun e!3744496 () Bool)

(assert (=> b!6144578 (= e!3744496 (= s!2326 (Cons!64437 (c!1105061 (regOne!32687 r!7292)) Nil!64437)))))

(declare-fun call!510582 () Bool)

(assert (=> b!6144579 (= e!3744491 call!510582)))

(declare-fun b!6144580 () Bool)

(declare-fun e!3744493 () Bool)

(assert (=> b!6144580 (= e!3744493 e!3744491)))

(declare-fun c!1105512 () Bool)

(assert (=> b!6144580 (= c!1105512 ((_ is Star!16087) (regOne!32687 r!7292)))))

(declare-fun b!6144581 () Bool)

(declare-fun c!1105515 () Bool)

(assert (=> b!6144581 (= c!1105515 ((_ is Union!16087) (regOne!32687 r!7292)))))

(assert (=> b!6144581 (= e!3744496 e!3744493)))

(declare-fun bm!510577 () Bool)

(assert (=> bm!510577 (= call!510582 (Exists!3157 (ite c!1105512 lambda!334991 lambda!334992)))))

(declare-fun b!6144582 () Bool)

(declare-fun e!3744494 () Bool)

(assert (=> b!6144582 (= e!3744494 (matchRSpec!3188 (regTwo!32687 (regOne!32687 r!7292)) s!2326))))

(assert (=> b!6144583 (= e!3744492 call!510582)))

(declare-fun b!6144584 () Bool)

(declare-fun c!1105514 () Bool)

(assert (=> b!6144584 (= c!1105514 ((_ is ElementMatch!16087) (regOne!32687 r!7292)))))

(assert (=> b!6144584 (= e!3744490 e!3744496)))

(declare-fun b!6144585 () Bool)

(assert (=> b!6144585 (= e!3744493 e!3744494)))

(declare-fun res!2545681 () Bool)

(assert (=> b!6144585 (= res!2545681 (matchRSpec!3188 (regOne!32687 (regOne!32687 r!7292)) s!2326))))

(assert (=> b!6144585 (=> res!2545681 e!3744494)))

(assert (= (and d!1925239 c!1105513) b!6144577))

(assert (= (and d!1925239 (not c!1105513)) b!6144576))

(assert (= (and b!6144576 res!2545680) b!6144584))

(assert (= (and b!6144584 c!1105514) b!6144578))

(assert (= (and b!6144584 (not c!1105514)) b!6144581))

(assert (= (and b!6144581 c!1105515) b!6144585))

(assert (= (and b!6144581 (not c!1105515)) b!6144580))

(assert (= (and b!6144585 (not res!2545681)) b!6144582))

(assert (= (and b!6144580 c!1105512) b!6144575))

(assert (= (and b!6144580 (not c!1105512)) b!6144579))

(assert (= (and b!6144575 (not res!2545682)) b!6144583))

(assert (= (or b!6144583 b!6144579) bm!510577))

(assert (= (or b!6144577 b!6144575) bm!510576))

(assert (=> bm!510576 m!6984320))

(declare-fun m!6985422 () Bool)

(assert (=> bm!510577 m!6985422))

(declare-fun m!6985424 () Bool)

(assert (=> b!6144582 m!6985424))

(declare-fun m!6985426 () Bool)

(assert (=> b!6144585 m!6985426))

(assert (=> b!6143385 d!1925239))

(declare-fun d!1925241 () Bool)

(assert (=> d!1925241 (= (isEmpty!36389 (tail!11781 (exprs!5971 (h!70886 zl!343)))) ((_ is Nil!64436) (tail!11781 (exprs!5971 (h!70886 zl!343)))))))

(assert (=> b!6143577 d!1925241))

(declare-fun d!1925243 () Bool)

(assert (=> d!1925243 (= (tail!11781 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343))))))

(assert (=> b!6143577 d!1925243))

(declare-fun d!1925245 () Bool)

(declare-fun res!2545683 () Bool)

(declare-fun e!3744497 () Bool)

(assert (=> d!1925245 (=> res!2545683 e!3744497)))

(assert (=> d!1925245 (= res!2545683 ((_ is Nil!64436) lt!2333461))))

(assert (=> d!1925245 (= (forall!15208 lt!2333461 lambda!334913) e!3744497)))

(declare-fun b!6144586 () Bool)

(declare-fun e!3744498 () Bool)

(assert (=> b!6144586 (= e!3744497 e!3744498)))

(declare-fun res!2545684 () Bool)

(assert (=> b!6144586 (=> (not res!2545684) (not e!3744498))))

(assert (=> b!6144586 (= res!2545684 (dynLambda!25396 lambda!334913 (h!70884 lt!2333461)))))

(declare-fun b!6144587 () Bool)

(assert (=> b!6144587 (= e!3744498 (forall!15208 (t!378041 lt!2333461) lambda!334913))))

(assert (= (and d!1925245 (not res!2545683)) b!6144586))

(assert (= (and b!6144586 res!2545684) b!6144587))

(declare-fun b_lambda!233869 () Bool)

(assert (=> (not b_lambda!233869) (not b!6144586)))

(declare-fun m!6985428 () Bool)

(assert (=> b!6144586 m!6985428))

(declare-fun m!6985430 () Bool)

(assert (=> b!6144587 m!6985430))

(assert (=> d!1924745 d!1925245))

(declare-fun b!6144588 () Bool)

(declare-fun e!3744499 () (InoxSet Context!10942))

(declare-fun call!510583 () (InoxSet Context!10942))

(assert (=> b!6144588 (= e!3744499 ((_ map or) call!510583 (derivationStepZipperUp!1261 (Context!10943 (t!378041 (exprs!5971 (Context!10943 (t!378041 (exprs!5971 lt!2333388)))))) (h!70885 s!2326))))))

(declare-fun b!6144589 () Bool)

(declare-fun e!3744500 () (InoxSet Context!10942))

(assert (=> b!6144589 (= e!3744500 call!510583)))

(declare-fun b!6144590 () Bool)

(declare-fun e!3744501 () Bool)

(assert (=> b!6144590 (= e!3744501 (nullable!6080 (h!70884 (exprs!5971 (Context!10943 (t!378041 (exprs!5971 lt!2333388)))))))))

(declare-fun bm!510578 () Bool)

(assert (=> bm!510578 (= call!510583 (derivationStepZipperDown!1335 (h!70884 (exprs!5971 (Context!10943 (t!378041 (exprs!5971 lt!2333388))))) (Context!10943 (t!378041 (exprs!5971 (Context!10943 (t!378041 (exprs!5971 lt!2333388)))))) (h!70885 s!2326)))))

(declare-fun b!6144591 () Bool)

(assert (=> b!6144591 (= e!3744500 ((as const (Array Context!10942 Bool)) false))))

(declare-fun b!6144592 () Bool)

(assert (=> b!6144592 (= e!3744499 e!3744500)))

(declare-fun c!1105517 () Bool)

(assert (=> b!6144592 (= c!1105517 ((_ is Cons!64436) (exprs!5971 (Context!10943 (t!378041 (exprs!5971 lt!2333388))))))))

(declare-fun d!1925247 () Bool)

(declare-fun c!1105516 () Bool)

(assert (=> d!1925247 (= c!1105516 e!3744501)))

(declare-fun res!2545685 () Bool)

(assert (=> d!1925247 (=> (not res!2545685) (not e!3744501))))

(assert (=> d!1925247 (= res!2545685 ((_ is Cons!64436) (exprs!5971 (Context!10943 (t!378041 (exprs!5971 lt!2333388))))))))

(assert (=> d!1925247 (= (derivationStepZipperUp!1261 (Context!10943 (t!378041 (exprs!5971 lt!2333388))) (h!70885 s!2326)) e!3744499)))

(assert (= (and d!1925247 res!2545685) b!6144590))

(assert (= (and d!1925247 c!1105516) b!6144588))

(assert (= (and d!1925247 (not c!1105516)) b!6144592))

(assert (= (and b!6144592 c!1105517) b!6144589))

(assert (= (and b!6144592 (not c!1105517)) b!6144591))

(assert (= (or b!6144588 b!6144589) bm!510578))

(declare-fun m!6985432 () Bool)

(assert (=> b!6144588 m!6985432))

(declare-fun m!6985434 () Bool)

(assert (=> b!6144590 m!6985434))

(declare-fun m!6985436 () Bool)

(assert (=> bm!510578 m!6985436))

(assert (=> b!6143516 d!1925247))

(declare-fun bm!510579 () Bool)

(declare-fun call!510584 () Bool)

(declare-fun call!510586 () Bool)

(assert (=> bm!510579 (= call!510584 call!510586)))

(declare-fun b!6144593 () Bool)

(declare-fun e!3744507 () Bool)

(declare-fun e!3744502 () Bool)

(assert (=> b!6144593 (= e!3744507 e!3744502)))

(declare-fun c!1105519 () Bool)

(assert (=> b!6144593 (= c!1105519 ((_ is Star!16087) (ite c!1105176 (reg!16416 r!7292) (ite c!1105175 (regOne!32687 r!7292) (regOne!32686 r!7292)))))))

(declare-fun c!1105518 () Bool)

(declare-fun bm!510580 () Bool)

(assert (=> bm!510580 (= call!510586 (validRegex!7823 (ite c!1105519 (reg!16416 (ite c!1105176 (reg!16416 r!7292) (ite c!1105175 (regOne!32687 r!7292) (regOne!32686 r!7292)))) (ite c!1105518 (regOne!32687 (ite c!1105176 (reg!16416 r!7292) (ite c!1105175 (regOne!32687 r!7292) (regOne!32686 r!7292)))) (regOne!32686 (ite c!1105176 (reg!16416 r!7292) (ite c!1105175 (regOne!32687 r!7292) (regOne!32686 r!7292))))))))))

(declare-fun b!6144594 () Bool)

(declare-fun e!3744505 () Bool)

(declare-fun call!510585 () Bool)

(assert (=> b!6144594 (= e!3744505 call!510585)))

(declare-fun b!6144595 () Bool)

(declare-fun e!3744506 () Bool)

(assert (=> b!6144595 (= e!3744502 e!3744506)))

(assert (=> b!6144595 (= c!1105518 ((_ is Union!16087) (ite c!1105176 (reg!16416 r!7292) (ite c!1105175 (regOne!32687 r!7292) (regOne!32686 r!7292)))))))

(declare-fun b!6144596 () Bool)

(declare-fun res!2545686 () Bool)

(declare-fun e!3744504 () Bool)

(assert (=> b!6144596 (=> (not res!2545686) (not e!3744504))))

(assert (=> b!6144596 (= res!2545686 call!510584)))

(assert (=> b!6144596 (= e!3744506 e!3744504)))

(declare-fun b!6144597 () Bool)

(assert (=> b!6144597 (= e!3744504 call!510585)))

(declare-fun b!6144598 () Bool)

(declare-fun res!2545689 () Bool)

(declare-fun e!3744508 () Bool)

(assert (=> b!6144598 (=> res!2545689 e!3744508)))

(assert (=> b!6144598 (= res!2545689 (not ((_ is Concat!24932) (ite c!1105176 (reg!16416 r!7292) (ite c!1105175 (regOne!32687 r!7292) (regOne!32686 r!7292))))))))

(assert (=> b!6144598 (= e!3744506 e!3744508)))

(declare-fun b!6144599 () Bool)

(declare-fun e!3744503 () Bool)

(assert (=> b!6144599 (= e!3744502 e!3744503)))

(declare-fun res!2545687 () Bool)

(assert (=> b!6144599 (= res!2545687 (not (nullable!6080 (reg!16416 (ite c!1105176 (reg!16416 r!7292) (ite c!1105175 (regOne!32687 r!7292) (regOne!32686 r!7292)))))))))

(assert (=> b!6144599 (=> (not res!2545687) (not e!3744503))))

(declare-fun b!6144600 () Bool)

(assert (=> b!6144600 (= e!3744508 e!3744505)))

(declare-fun res!2545690 () Bool)

(assert (=> b!6144600 (=> (not res!2545690) (not e!3744505))))

(assert (=> b!6144600 (= res!2545690 call!510584)))

(declare-fun b!6144601 () Bool)

(assert (=> b!6144601 (= e!3744503 call!510586)))

(declare-fun d!1925249 () Bool)

(declare-fun res!2545688 () Bool)

(assert (=> d!1925249 (=> res!2545688 e!3744507)))

(assert (=> d!1925249 (= res!2545688 ((_ is ElementMatch!16087) (ite c!1105176 (reg!16416 r!7292) (ite c!1105175 (regOne!32687 r!7292) (regOne!32686 r!7292)))))))

(assert (=> d!1925249 (= (validRegex!7823 (ite c!1105176 (reg!16416 r!7292) (ite c!1105175 (regOne!32687 r!7292) (regOne!32686 r!7292)))) e!3744507)))

(declare-fun bm!510581 () Bool)

(assert (=> bm!510581 (= call!510585 (validRegex!7823 (ite c!1105518 (regTwo!32687 (ite c!1105176 (reg!16416 r!7292) (ite c!1105175 (regOne!32687 r!7292) (regOne!32686 r!7292)))) (regTwo!32686 (ite c!1105176 (reg!16416 r!7292) (ite c!1105175 (regOne!32687 r!7292) (regOne!32686 r!7292)))))))))

(assert (= (and d!1925249 (not res!2545688)) b!6144593))

(assert (= (and b!6144593 c!1105519) b!6144599))

(assert (= (and b!6144593 (not c!1105519)) b!6144595))

(assert (= (and b!6144599 res!2545687) b!6144601))

(assert (= (and b!6144595 c!1105518) b!6144596))

(assert (= (and b!6144595 (not c!1105518)) b!6144598))

(assert (= (and b!6144596 res!2545686) b!6144597))

(assert (= (and b!6144598 (not res!2545689)) b!6144600))

(assert (= (and b!6144600 res!2545690) b!6144594))

(assert (= (or b!6144597 b!6144594) bm!510581))

(assert (= (or b!6144596 b!6144600) bm!510579))

(assert (= (or b!6144601 bm!510579) bm!510580))

(declare-fun m!6985438 () Bool)

(assert (=> bm!510580 m!6985438))

(declare-fun m!6985440 () Bool)

(assert (=> b!6144599 m!6985440))

(declare-fun m!6985442 () Bool)

(assert (=> bm!510581 m!6985442))

(assert (=> bm!510349 d!1925249))

(declare-fun bs!1523571 () Bool)

(declare-fun d!1925251 () Bool)

(assert (= bs!1523571 (and d!1925251 d!1925191)))

(declare-fun lambda!334993 () Int)

(assert (=> bs!1523571 (= lambda!334993 lambda!334987)))

(declare-fun bs!1523572 () Bool)

(assert (= bs!1523572 (and d!1925251 d!1925223)))

(assert (=> bs!1523572 (= lambda!334993 lambda!334990)))

(declare-fun bs!1523573 () Bool)

(assert (= bs!1523573 (and d!1925251 d!1925215)))

(assert (=> bs!1523573 (= lambda!334993 lambda!334988)))

(declare-fun bs!1523574 () Bool)

(assert (= bs!1523574 (and d!1925251 d!1925151)))

(assert (=> bs!1523574 (= lambda!334993 lambda!334979)))

(declare-fun bs!1523575 () Bool)

(assert (= bs!1523575 (and d!1925251 d!1925081)))

(assert (=> bs!1523575 (= lambda!334993 lambda!334965)))

(assert (=> d!1925251 (= (nullableZipper!1868 lt!2333387) (exists!2433 lt!2333387 lambda!334993))))

(declare-fun bs!1523576 () Bool)

(assert (= bs!1523576 d!1925251))

(declare-fun m!6985444 () Bool)

(assert (=> bs!1523576 m!6985444))

(assert (=> b!6143585 d!1925251))

(declare-fun c!1105522 () Bool)

(declare-fun call!510592 () (InoxSet Context!10942))

(declare-fun bm!510582 () Bool)

(declare-fun call!510588 () List!64560)

(assert (=> bm!510582 (= call!510592 (derivationStepZipperDown!1335 (ite c!1105522 (regTwo!32687 (ite c!1105249 (regTwo!32687 (regOne!32687 (regOne!32686 r!7292))) (regOne!32686 (regOne!32687 (regOne!32686 r!7292))))) (regOne!32686 (ite c!1105249 (regTwo!32687 (regOne!32687 (regOne!32686 r!7292))) (regOne!32686 (regOne!32687 (regOne!32686 r!7292)))))) (ite c!1105522 (ite c!1105249 lt!2333388 (Context!10943 call!510396)) (Context!10943 call!510588)) (h!70885 s!2326)))))

(declare-fun b!6144602 () Bool)

(declare-fun c!1105523 () Bool)

(assert (=> b!6144602 (= c!1105523 ((_ is Star!16087) (ite c!1105249 (regTwo!32687 (regOne!32687 (regOne!32686 r!7292))) (regOne!32686 (regOne!32687 (regOne!32686 r!7292))))))))

(declare-fun e!3744514 () (InoxSet Context!10942))

(declare-fun e!3744510 () (InoxSet Context!10942))

(assert (=> b!6144602 (= e!3744514 e!3744510)))

(declare-fun b!6144603 () Bool)

(declare-fun call!510589 () (InoxSet Context!10942))

(assert (=> b!6144603 (= e!3744510 call!510589)))

(declare-fun b!6144604 () Bool)

(declare-fun e!3744512 () (InoxSet Context!10942))

(assert (=> b!6144604 (= e!3744512 e!3744514)))

(declare-fun c!1105521 () Bool)

(assert (=> b!6144604 (= c!1105521 ((_ is Concat!24932) (ite c!1105249 (regTwo!32687 (regOne!32687 (regOne!32686 r!7292))) (regOne!32686 (regOne!32687 (regOne!32686 r!7292))))))))

(declare-fun b!6144605 () Bool)

(declare-fun c!1105520 () Bool)

(declare-fun e!3744513 () Bool)

(assert (=> b!6144605 (= c!1105520 e!3744513)))

(declare-fun res!2545691 () Bool)

(assert (=> b!6144605 (=> (not res!2545691) (not e!3744513))))

(assert (=> b!6144605 (= res!2545691 ((_ is Concat!24932) (ite c!1105249 (regTwo!32687 (regOne!32687 (regOne!32686 r!7292))) (regOne!32686 (regOne!32687 (regOne!32686 r!7292))))))))

(declare-fun e!3744511 () (InoxSet Context!10942))

(assert (=> b!6144605 (= e!3744511 e!3744512)))

(declare-fun b!6144606 () Bool)

(assert (=> b!6144606 (= e!3744510 ((as const (Array Context!10942 Bool)) false))))

(declare-fun b!6144607 () Bool)

(declare-fun e!3744509 () (InoxSet Context!10942))

(assert (=> b!6144607 (= e!3744509 e!3744511)))

(assert (=> b!6144607 (= c!1105522 ((_ is Union!16087) (ite c!1105249 (regTwo!32687 (regOne!32687 (regOne!32686 r!7292))) (regOne!32686 (regOne!32687 (regOne!32686 r!7292))))))))

(declare-fun b!6144608 () Bool)

(declare-fun call!510590 () (InoxSet Context!10942))

(assert (=> b!6144608 (= e!3744512 ((_ map or) call!510592 call!510590))))

(declare-fun bm!510583 () Bool)

(declare-fun call!510587 () (InoxSet Context!10942))

(assert (=> bm!510583 (= call!510590 call!510587)))

(declare-fun b!6144609 () Bool)

(assert (=> b!6144609 (= e!3744514 call!510589)))

(declare-fun bm!510585 () Bool)

(assert (=> bm!510585 (= call!510589 call!510590)))

(declare-fun b!6144610 () Bool)

(assert (=> b!6144610 (= e!3744509 (store ((as const (Array Context!10942 Bool)) false) (ite c!1105249 lt!2333388 (Context!10943 call!510396)) true))))

(declare-fun bm!510586 () Bool)

(declare-fun call!510591 () List!64560)

(assert (=> bm!510586 (= call!510591 call!510588)))

(declare-fun b!6144611 () Bool)

(assert (=> b!6144611 (= e!3744513 (nullable!6080 (regOne!32686 (ite c!1105249 (regTwo!32687 (regOne!32687 (regOne!32686 r!7292))) (regOne!32686 (regOne!32687 (regOne!32686 r!7292)))))))))

(declare-fun b!6144612 () Bool)

(assert (=> b!6144612 (= e!3744511 ((_ map or) call!510587 call!510592))))

(declare-fun bm!510587 () Bool)

(assert (=> bm!510587 (= call!510588 ($colon$colon!1964 (exprs!5971 (ite c!1105249 lt!2333388 (Context!10943 call!510396))) (ite (or c!1105520 c!1105521) (regTwo!32686 (ite c!1105249 (regTwo!32687 (regOne!32687 (regOne!32686 r!7292))) (regOne!32686 (regOne!32687 (regOne!32686 r!7292))))) (ite c!1105249 (regTwo!32687 (regOne!32687 (regOne!32686 r!7292))) (regOne!32686 (regOne!32687 (regOne!32686 r!7292)))))))))

(declare-fun d!1925253 () Bool)

(declare-fun c!1105524 () Bool)

(assert (=> d!1925253 (= c!1105524 (and ((_ is ElementMatch!16087) (ite c!1105249 (regTwo!32687 (regOne!32687 (regOne!32686 r!7292))) (regOne!32686 (regOne!32687 (regOne!32686 r!7292))))) (= (c!1105061 (ite c!1105249 (regTwo!32687 (regOne!32687 (regOne!32686 r!7292))) (regOne!32686 (regOne!32687 (regOne!32686 r!7292))))) (h!70885 s!2326))))))

(assert (=> d!1925253 (= (derivationStepZipperDown!1335 (ite c!1105249 (regTwo!32687 (regOne!32687 (regOne!32686 r!7292))) (regOne!32686 (regOne!32687 (regOne!32686 r!7292)))) (ite c!1105249 lt!2333388 (Context!10943 call!510396)) (h!70885 s!2326)) e!3744509)))

(declare-fun bm!510584 () Bool)

(assert (=> bm!510584 (= call!510587 (derivationStepZipperDown!1335 (ite c!1105522 (regOne!32687 (ite c!1105249 (regTwo!32687 (regOne!32687 (regOne!32686 r!7292))) (regOne!32686 (regOne!32687 (regOne!32686 r!7292))))) (ite c!1105520 (regTwo!32686 (ite c!1105249 (regTwo!32687 (regOne!32687 (regOne!32686 r!7292))) (regOne!32686 (regOne!32687 (regOne!32686 r!7292))))) (ite c!1105521 (regOne!32686 (ite c!1105249 (regTwo!32687 (regOne!32687 (regOne!32686 r!7292))) (regOne!32686 (regOne!32687 (regOne!32686 r!7292))))) (reg!16416 (ite c!1105249 (regTwo!32687 (regOne!32687 (regOne!32686 r!7292))) (regOne!32686 (regOne!32687 (regOne!32686 r!7292)))))))) (ite (or c!1105522 c!1105520) (ite c!1105249 lt!2333388 (Context!10943 call!510396)) (Context!10943 call!510591)) (h!70885 s!2326)))))

(assert (= (and d!1925253 c!1105524) b!6144610))

(assert (= (and d!1925253 (not c!1105524)) b!6144607))

(assert (= (and b!6144607 c!1105522) b!6144612))

(assert (= (and b!6144607 (not c!1105522)) b!6144605))

(assert (= (and b!6144605 res!2545691) b!6144611))

(assert (= (and b!6144605 c!1105520) b!6144608))

(assert (= (and b!6144605 (not c!1105520)) b!6144604))

(assert (= (and b!6144604 c!1105521) b!6144609))

(assert (= (and b!6144604 (not c!1105521)) b!6144602))

(assert (= (and b!6144602 c!1105523) b!6144603))

(assert (= (and b!6144602 (not c!1105523)) b!6144606))

(assert (= (or b!6144609 b!6144603) bm!510586))

(assert (= (or b!6144609 b!6144603) bm!510585))

(assert (= (or b!6144608 bm!510586) bm!510587))

(assert (= (or b!6144608 bm!510585) bm!510583))

(assert (= (or b!6144612 b!6144608) bm!510582))

(assert (= (or b!6144612 bm!510583) bm!510584))

(declare-fun m!6985446 () Bool)

(assert (=> bm!510582 m!6985446))

(declare-fun m!6985448 () Bool)

(assert (=> bm!510584 m!6985448))

(declare-fun m!6985450 () Bool)

(assert (=> b!6144610 m!6985450))

(declare-fun m!6985452 () Bool)

(assert (=> b!6144611 m!6985452))

(declare-fun m!6985454 () Bool)

(assert (=> bm!510587 m!6985454))

(assert (=> bm!510390 d!1925253))

(assert (=> bm!510355 d!1925063))

(declare-fun bs!1523577 () Bool)

(declare-fun d!1925255 () Bool)

(assert (= bs!1523577 (and d!1925255 d!1924775)))

(declare-fun lambda!334994 () Int)

(assert (=> bs!1523577 (= lambda!334994 lambda!334917)))

(declare-fun bs!1523578 () Bool)

(assert (= bs!1523578 (and d!1925255 d!1924743)))

(assert (=> bs!1523578 (= lambda!334994 lambda!334910)))

(declare-fun bs!1523579 () Bool)

(assert (= bs!1523579 (and d!1925255 d!1924761)))

(assert (=> bs!1523579 (= lambda!334994 lambda!334914)))

(declare-fun bs!1523580 () Bool)

(assert (= bs!1523580 (and d!1925255 d!1924787)))

(assert (=> bs!1523580 (= lambda!334994 lambda!334918)))

(declare-fun bs!1523581 () Bool)

(assert (= bs!1523581 (and d!1925255 d!1925145)))

(assert (=> bs!1523581 (= lambda!334994 lambda!334978)))

(declare-fun bs!1523582 () Bool)

(assert (= bs!1523582 (and d!1925255 d!1924739)))

(assert (=> bs!1523582 (= lambda!334994 lambda!334907)))

(declare-fun bs!1523583 () Bool)

(assert (= bs!1523583 (and d!1925255 d!1925221)))

(assert (=> bs!1523583 (= lambda!334994 lambda!334989)))

(declare-fun bs!1523584 () Bool)

(assert (= bs!1523584 (and d!1925255 d!1925059)))

(assert (=> bs!1523584 (= lambda!334994 lambda!334962)))

(declare-fun bs!1523585 () Bool)

(assert (= bs!1523585 (and d!1925255 d!1924745)))

(assert (=> bs!1523585 (= lambda!334994 lambda!334913)))

(declare-fun bs!1523586 () Bool)

(assert (= bs!1523586 (and d!1925255 d!1925115)))

(assert (=> bs!1523586 (= lambda!334994 lambda!334972)))

(declare-fun b!6144613 () Bool)

(declare-fun e!3744515 () Regex!16087)

(assert (=> b!6144613 (= e!3744515 (h!70884 (t!378041 (unfocusZipperList!1508 zl!343))))))

(declare-fun b!6144614 () Bool)

(declare-fun e!3744517 () Bool)

(declare-fun e!3744516 () Bool)

(assert (=> b!6144614 (= e!3744517 e!3744516)))

(declare-fun c!1105528 () Bool)

(assert (=> b!6144614 (= c!1105528 (isEmpty!36389 (t!378041 (unfocusZipperList!1508 zl!343))))))

(declare-fun b!6144615 () Bool)

(declare-fun e!3744518 () Bool)

(assert (=> b!6144615 (= e!3744518 (isEmpty!36389 (t!378041 (t!378041 (unfocusZipperList!1508 zl!343)))))))

(declare-fun b!6144616 () Bool)

(declare-fun e!3744519 () Regex!16087)

(assert (=> b!6144616 (= e!3744519 (Union!16087 (h!70884 (t!378041 (unfocusZipperList!1508 zl!343))) (generalisedUnion!1931 (t!378041 (t!378041 (unfocusZipperList!1508 zl!343))))))))

(declare-fun b!6144617 () Bool)

(declare-fun e!3744520 () Bool)

(declare-fun lt!2333533 () Regex!16087)

(assert (=> b!6144617 (= e!3744520 (= lt!2333533 (head!12696 (t!378041 (unfocusZipperList!1508 zl!343)))))))

(declare-fun b!6144618 () Bool)

(assert (=> b!6144618 (= e!3744515 e!3744519)))

(declare-fun c!1105525 () Bool)

(assert (=> b!6144618 (= c!1105525 ((_ is Cons!64436) (t!378041 (unfocusZipperList!1508 zl!343))))))

(declare-fun b!6144619 () Bool)

(assert (=> b!6144619 (= e!3744516 (isEmptyLang!1514 lt!2333533))))

(declare-fun b!6144620 () Bool)

(assert (=> b!6144620 (= e!3744519 EmptyLang!16087)))

(declare-fun b!6144621 () Bool)

(assert (=> b!6144621 (= e!3744520 (isUnion!944 lt!2333533))))

(declare-fun b!6144622 () Bool)

(assert (=> b!6144622 (= e!3744516 e!3744520)))

(declare-fun c!1105527 () Bool)

(assert (=> b!6144622 (= c!1105527 (isEmpty!36389 (tail!11781 (t!378041 (unfocusZipperList!1508 zl!343)))))))

(assert (=> d!1925255 e!3744517))

(declare-fun res!2545693 () Bool)

(assert (=> d!1925255 (=> (not res!2545693) (not e!3744517))))

(assert (=> d!1925255 (= res!2545693 (validRegex!7823 lt!2333533))))

(assert (=> d!1925255 (= lt!2333533 e!3744515)))

(declare-fun c!1105526 () Bool)

(assert (=> d!1925255 (= c!1105526 e!3744518)))

(declare-fun res!2545692 () Bool)

(assert (=> d!1925255 (=> (not res!2545692) (not e!3744518))))

(assert (=> d!1925255 (= res!2545692 ((_ is Cons!64436) (t!378041 (unfocusZipperList!1508 zl!343))))))

(assert (=> d!1925255 (forall!15208 (t!378041 (unfocusZipperList!1508 zl!343)) lambda!334994)))

(assert (=> d!1925255 (= (generalisedUnion!1931 (t!378041 (unfocusZipperList!1508 zl!343))) lt!2333533)))

(assert (= (and d!1925255 res!2545692) b!6144615))

(assert (= (and d!1925255 c!1105526) b!6144613))

(assert (= (and d!1925255 (not c!1105526)) b!6144618))

(assert (= (and b!6144618 c!1105525) b!6144616))

(assert (= (and b!6144618 (not c!1105525)) b!6144620))

(assert (= (and d!1925255 res!2545693) b!6144614))

(assert (= (and b!6144614 c!1105528) b!6144619))

(assert (= (and b!6144614 (not c!1105528)) b!6144622))

(assert (= (and b!6144622 c!1105527) b!6144617))

(assert (= (and b!6144622 (not c!1105527)) b!6144621))

(declare-fun m!6985456 () Bool)

(assert (=> b!6144622 m!6985456))

(assert (=> b!6144622 m!6985456))

(declare-fun m!6985458 () Bool)

(assert (=> b!6144622 m!6985458))

(declare-fun m!6985460 () Bool)

(assert (=> b!6144616 m!6985460))

(assert (=> b!6144614 m!6984370))

(declare-fun m!6985462 () Bool)

(assert (=> d!1925255 m!6985462))

(declare-fun m!6985464 () Bool)

(assert (=> d!1925255 m!6985464))

(declare-fun m!6985466 () Bool)

(assert (=> b!6144621 m!6985466))

(declare-fun m!6985468 () Bool)

(assert (=> b!6144615 m!6985468))

(declare-fun m!6985470 () Bool)

(assert (=> b!6144619 m!6985470))

(declare-fun m!6985472 () Bool)

(assert (=> b!6144617 m!6985472))

(assert (=> b!6143455 d!1925255))

(declare-fun b!6144623 () Bool)

(declare-fun e!3744521 () Bool)

(declare-fun e!3744522 () Bool)

(assert (=> b!6144623 (= e!3744521 e!3744522)))

(declare-fun res!2545696 () Bool)

(declare-fun call!510594 () Bool)

(assert (=> b!6144623 (= res!2545696 call!510594)))

(assert (=> b!6144623 (=> res!2545696 e!3744522)))

(declare-fun b!6144624 () Bool)

(declare-fun e!3744524 () Bool)

(assert (=> b!6144624 (= e!3744524 e!3744521)))

(declare-fun c!1105529 () Bool)

(assert (=> b!6144624 (= c!1105529 ((_ is Union!16087) (regOne!32687 (regOne!32686 r!7292))))))

(declare-fun b!6144625 () Bool)

(declare-fun e!3744523 () Bool)

(declare-fun e!3744525 () Bool)

(assert (=> b!6144625 (= e!3744523 e!3744525)))

(declare-fun res!2545698 () Bool)

(assert (=> b!6144625 (=> (not res!2545698) (not e!3744525))))

(assert (=> b!6144625 (= res!2545698 (and (not ((_ is EmptyLang!16087) (regOne!32687 (regOne!32686 r!7292)))) (not ((_ is ElementMatch!16087) (regOne!32687 (regOne!32686 r!7292))))))))

(declare-fun b!6144626 () Bool)

(assert (=> b!6144626 (= e!3744525 e!3744524)))

(declare-fun res!2545697 () Bool)

(assert (=> b!6144626 (=> res!2545697 e!3744524)))

(assert (=> b!6144626 (= res!2545697 ((_ is Star!16087) (regOne!32687 (regOne!32686 r!7292))))))

(declare-fun b!6144627 () Bool)

(declare-fun call!510593 () Bool)

(assert (=> b!6144627 (= e!3744522 call!510593)))

(declare-fun b!6144628 () Bool)

(declare-fun e!3744526 () Bool)

(assert (=> b!6144628 (= e!3744526 call!510593)))

(declare-fun b!6144629 () Bool)

(assert (=> b!6144629 (= e!3744521 e!3744526)))

(declare-fun res!2545695 () Bool)

(assert (=> b!6144629 (= res!2545695 call!510594)))

(assert (=> b!6144629 (=> (not res!2545695) (not e!3744526))))

(declare-fun bm!510588 () Bool)

(assert (=> bm!510588 (= call!510593 (nullable!6080 (ite c!1105529 (regTwo!32687 (regOne!32687 (regOne!32686 r!7292))) (regTwo!32686 (regOne!32687 (regOne!32686 r!7292))))))))

(declare-fun d!1925257 () Bool)

(declare-fun res!2545694 () Bool)

(assert (=> d!1925257 (=> res!2545694 e!3744523)))

(assert (=> d!1925257 (= res!2545694 ((_ is EmptyExpr!16087) (regOne!32687 (regOne!32686 r!7292))))))

(assert (=> d!1925257 (= (nullableFct!2044 (regOne!32687 (regOne!32686 r!7292))) e!3744523)))

(declare-fun bm!510589 () Bool)

(assert (=> bm!510589 (= call!510594 (nullable!6080 (ite c!1105529 (regOne!32687 (regOne!32687 (regOne!32686 r!7292))) (regOne!32686 (regOne!32687 (regOne!32686 r!7292))))))))

(assert (= (and d!1925257 (not res!2545694)) b!6144625))

(assert (= (and b!6144625 res!2545698) b!6144626))

(assert (= (and b!6144626 (not res!2545697)) b!6144624))

(assert (= (and b!6144624 c!1105529) b!6144623))

(assert (= (and b!6144624 (not c!1105529)) b!6144629))

(assert (= (and b!6144623 (not res!2545696)) b!6144627))

(assert (= (and b!6144629 res!2545695) b!6144628))

(assert (= (or b!6144627 b!6144628) bm!510588))

(assert (= (or b!6144623 b!6144629) bm!510589))

(declare-fun m!6985474 () Bool)

(assert (=> bm!510588 m!6985474))

(declare-fun m!6985476 () Bool)

(assert (=> bm!510589 m!6985476))

(assert (=> d!1924763 d!1925257))

(declare-fun call!510596 () List!64560)

(declare-fun call!510600 () (InoxSet Context!10942))

(declare-fun bm!510590 () Bool)

(declare-fun c!1105532 () Bool)

(assert (=> bm!510590 (= call!510600 (derivationStepZipperDown!1335 (ite c!1105532 (regTwo!32687 (h!70884 (exprs!5971 lt!2333391))) (regOne!32686 (h!70884 (exprs!5971 lt!2333391)))) (ite c!1105532 (Context!10943 (t!378041 (exprs!5971 lt!2333391))) (Context!10943 call!510596)) (h!70885 s!2326)))))

(declare-fun b!6144630 () Bool)

(declare-fun c!1105533 () Bool)

(assert (=> b!6144630 (= c!1105533 ((_ is Star!16087) (h!70884 (exprs!5971 lt!2333391))))))

(declare-fun e!3744532 () (InoxSet Context!10942))

(declare-fun e!3744528 () (InoxSet Context!10942))

(assert (=> b!6144630 (= e!3744532 e!3744528)))

(declare-fun b!6144631 () Bool)

(declare-fun call!510597 () (InoxSet Context!10942))

(assert (=> b!6144631 (= e!3744528 call!510597)))

(declare-fun b!6144632 () Bool)

(declare-fun e!3744530 () (InoxSet Context!10942))

(assert (=> b!6144632 (= e!3744530 e!3744532)))

(declare-fun c!1105531 () Bool)

(assert (=> b!6144632 (= c!1105531 ((_ is Concat!24932) (h!70884 (exprs!5971 lt!2333391))))))

(declare-fun b!6144633 () Bool)

(declare-fun c!1105530 () Bool)

(declare-fun e!3744531 () Bool)

(assert (=> b!6144633 (= c!1105530 e!3744531)))

(declare-fun res!2545699 () Bool)

(assert (=> b!6144633 (=> (not res!2545699) (not e!3744531))))

(assert (=> b!6144633 (= res!2545699 ((_ is Concat!24932) (h!70884 (exprs!5971 lt!2333391))))))

(declare-fun e!3744529 () (InoxSet Context!10942))

(assert (=> b!6144633 (= e!3744529 e!3744530)))

(declare-fun b!6144634 () Bool)

(assert (=> b!6144634 (= e!3744528 ((as const (Array Context!10942 Bool)) false))))

(declare-fun b!6144635 () Bool)

(declare-fun e!3744527 () (InoxSet Context!10942))

(assert (=> b!6144635 (= e!3744527 e!3744529)))

(assert (=> b!6144635 (= c!1105532 ((_ is Union!16087) (h!70884 (exprs!5971 lt!2333391))))))

(declare-fun b!6144636 () Bool)

(declare-fun call!510598 () (InoxSet Context!10942))

(assert (=> b!6144636 (= e!3744530 ((_ map or) call!510600 call!510598))))

(declare-fun bm!510591 () Bool)

(declare-fun call!510595 () (InoxSet Context!10942))

(assert (=> bm!510591 (= call!510598 call!510595)))

(declare-fun b!6144637 () Bool)

(assert (=> b!6144637 (= e!3744532 call!510597)))

(declare-fun bm!510593 () Bool)

(assert (=> bm!510593 (= call!510597 call!510598)))

(declare-fun b!6144638 () Bool)

(assert (=> b!6144638 (= e!3744527 (store ((as const (Array Context!10942 Bool)) false) (Context!10943 (t!378041 (exprs!5971 lt!2333391))) true))))

(declare-fun bm!510594 () Bool)

(declare-fun call!510599 () List!64560)

(assert (=> bm!510594 (= call!510599 call!510596)))

(declare-fun b!6144639 () Bool)

(assert (=> b!6144639 (= e!3744531 (nullable!6080 (regOne!32686 (h!70884 (exprs!5971 lt!2333391)))))))

(declare-fun b!6144640 () Bool)

(assert (=> b!6144640 (= e!3744529 ((_ map or) call!510595 call!510600))))

(declare-fun bm!510595 () Bool)

(assert (=> bm!510595 (= call!510596 ($colon$colon!1964 (exprs!5971 (Context!10943 (t!378041 (exprs!5971 lt!2333391)))) (ite (or c!1105530 c!1105531) (regTwo!32686 (h!70884 (exprs!5971 lt!2333391))) (h!70884 (exprs!5971 lt!2333391)))))))

(declare-fun d!1925259 () Bool)

(declare-fun c!1105534 () Bool)

(assert (=> d!1925259 (= c!1105534 (and ((_ is ElementMatch!16087) (h!70884 (exprs!5971 lt!2333391))) (= (c!1105061 (h!70884 (exprs!5971 lt!2333391))) (h!70885 s!2326))))))

(assert (=> d!1925259 (= (derivationStepZipperDown!1335 (h!70884 (exprs!5971 lt!2333391)) (Context!10943 (t!378041 (exprs!5971 lt!2333391))) (h!70885 s!2326)) e!3744527)))

(declare-fun bm!510592 () Bool)

(assert (=> bm!510592 (= call!510595 (derivationStepZipperDown!1335 (ite c!1105532 (regOne!32687 (h!70884 (exprs!5971 lt!2333391))) (ite c!1105530 (regTwo!32686 (h!70884 (exprs!5971 lt!2333391))) (ite c!1105531 (regOne!32686 (h!70884 (exprs!5971 lt!2333391))) (reg!16416 (h!70884 (exprs!5971 lt!2333391)))))) (ite (or c!1105532 c!1105530) (Context!10943 (t!378041 (exprs!5971 lt!2333391))) (Context!10943 call!510599)) (h!70885 s!2326)))))

(assert (= (and d!1925259 c!1105534) b!6144638))

(assert (= (and d!1925259 (not c!1105534)) b!6144635))

(assert (= (and b!6144635 c!1105532) b!6144640))

(assert (= (and b!6144635 (not c!1105532)) b!6144633))

(assert (= (and b!6144633 res!2545699) b!6144639))

(assert (= (and b!6144633 c!1105530) b!6144636))

(assert (= (and b!6144633 (not c!1105530)) b!6144632))

(assert (= (and b!6144632 c!1105531) b!6144637))

(assert (= (and b!6144632 (not c!1105531)) b!6144630))

(assert (= (and b!6144630 c!1105533) b!6144631))

(assert (= (and b!6144630 (not c!1105533)) b!6144634))

(assert (= (or b!6144637 b!6144631) bm!510594))

(assert (= (or b!6144637 b!6144631) bm!510593))

(assert (= (or b!6144636 bm!510594) bm!510595))

(assert (= (or b!6144636 bm!510593) bm!510591))

(assert (= (or b!6144640 b!6144636) bm!510590))

(assert (= (or b!6144640 bm!510591) bm!510592))

(declare-fun m!6985478 () Bool)

(assert (=> bm!510590 m!6985478))

(declare-fun m!6985480 () Bool)

(assert (=> bm!510592 m!6985480))

(declare-fun m!6985482 () Bool)

(assert (=> b!6144638 m!6985482))

(declare-fun m!6985484 () Bool)

(assert (=> b!6144639 m!6985484))

(declare-fun m!6985486 () Bool)

(assert (=> bm!510595 m!6985486))

(assert (=> bm!510383 d!1925259))

(declare-fun bm!510596 () Bool)

(declare-fun call!510601 () Bool)

(declare-fun call!510603 () Bool)

(assert (=> bm!510596 (= call!510601 call!510603)))

(declare-fun b!6144641 () Bool)

(declare-fun e!3744538 () Bool)

(declare-fun e!3744533 () Bool)

(assert (=> b!6144641 (= e!3744538 e!3744533)))

(declare-fun c!1105536 () Bool)

(assert (=> b!6144641 (= c!1105536 ((_ is Star!16087) (ite c!1105175 (regTwo!32687 r!7292) (regTwo!32686 r!7292))))))

(declare-fun c!1105535 () Bool)

(declare-fun bm!510597 () Bool)

(assert (=> bm!510597 (= call!510603 (validRegex!7823 (ite c!1105536 (reg!16416 (ite c!1105175 (regTwo!32687 r!7292) (regTwo!32686 r!7292))) (ite c!1105535 (regOne!32687 (ite c!1105175 (regTwo!32687 r!7292) (regTwo!32686 r!7292))) (regOne!32686 (ite c!1105175 (regTwo!32687 r!7292) (regTwo!32686 r!7292)))))))))

(declare-fun b!6144642 () Bool)

(declare-fun e!3744536 () Bool)

(declare-fun call!510602 () Bool)

(assert (=> b!6144642 (= e!3744536 call!510602)))

(declare-fun b!6144643 () Bool)

(declare-fun e!3744537 () Bool)

(assert (=> b!6144643 (= e!3744533 e!3744537)))

(assert (=> b!6144643 (= c!1105535 ((_ is Union!16087) (ite c!1105175 (regTwo!32687 r!7292) (regTwo!32686 r!7292))))))

(declare-fun b!6144644 () Bool)

(declare-fun res!2545700 () Bool)

(declare-fun e!3744535 () Bool)

(assert (=> b!6144644 (=> (not res!2545700) (not e!3744535))))

(assert (=> b!6144644 (= res!2545700 call!510601)))

(assert (=> b!6144644 (= e!3744537 e!3744535)))

(declare-fun b!6144645 () Bool)

(assert (=> b!6144645 (= e!3744535 call!510602)))

(declare-fun b!6144646 () Bool)

(declare-fun res!2545703 () Bool)

(declare-fun e!3744539 () Bool)

(assert (=> b!6144646 (=> res!2545703 e!3744539)))

(assert (=> b!6144646 (= res!2545703 (not ((_ is Concat!24932) (ite c!1105175 (regTwo!32687 r!7292) (regTwo!32686 r!7292)))))))

(assert (=> b!6144646 (= e!3744537 e!3744539)))

(declare-fun b!6144647 () Bool)

(declare-fun e!3744534 () Bool)

(assert (=> b!6144647 (= e!3744533 e!3744534)))

(declare-fun res!2545701 () Bool)

(assert (=> b!6144647 (= res!2545701 (not (nullable!6080 (reg!16416 (ite c!1105175 (regTwo!32687 r!7292) (regTwo!32686 r!7292))))))))

(assert (=> b!6144647 (=> (not res!2545701) (not e!3744534))))

(declare-fun b!6144648 () Bool)

(assert (=> b!6144648 (= e!3744539 e!3744536)))

(declare-fun res!2545704 () Bool)

(assert (=> b!6144648 (=> (not res!2545704) (not e!3744536))))

(assert (=> b!6144648 (= res!2545704 call!510601)))

(declare-fun b!6144649 () Bool)

(assert (=> b!6144649 (= e!3744534 call!510603)))

(declare-fun d!1925261 () Bool)

(declare-fun res!2545702 () Bool)

(assert (=> d!1925261 (=> res!2545702 e!3744538)))

(assert (=> d!1925261 (= res!2545702 ((_ is ElementMatch!16087) (ite c!1105175 (regTwo!32687 r!7292) (regTwo!32686 r!7292))))))

(assert (=> d!1925261 (= (validRegex!7823 (ite c!1105175 (regTwo!32687 r!7292) (regTwo!32686 r!7292))) e!3744538)))

(declare-fun bm!510598 () Bool)

(assert (=> bm!510598 (= call!510602 (validRegex!7823 (ite c!1105535 (regTwo!32687 (ite c!1105175 (regTwo!32687 r!7292) (regTwo!32686 r!7292))) (regTwo!32686 (ite c!1105175 (regTwo!32687 r!7292) (regTwo!32686 r!7292))))))))

(assert (= (and d!1925261 (not res!2545702)) b!6144641))

(assert (= (and b!6144641 c!1105536) b!6144647))

(assert (= (and b!6144641 (not c!1105536)) b!6144643))

(assert (= (and b!6144647 res!2545701) b!6144649))

(assert (= (and b!6144643 c!1105535) b!6144644))

(assert (= (and b!6144643 (not c!1105535)) b!6144646))

(assert (= (and b!6144644 res!2545700) b!6144645))

(assert (= (and b!6144646 (not res!2545703)) b!6144648))

(assert (= (and b!6144648 res!2545704) b!6144642))

(assert (= (or b!6144645 b!6144642) bm!510598))

(assert (= (or b!6144644 b!6144648) bm!510596))

(assert (= (or b!6144649 bm!510596) bm!510597))

(declare-fun m!6985488 () Bool)

(assert (=> bm!510597 m!6985488))

(declare-fun m!6985490 () Bool)

(assert (=> b!6144647 m!6985490))

(declare-fun m!6985492 () Bool)

(assert (=> bm!510598 m!6985492))

(assert (=> bm!510350 d!1925261))

(declare-fun d!1925263 () Bool)

(assert (=> d!1925263 (= (nullable!6080 (h!70884 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343)))))))) (nullableFct!2044 (h!70884 (exprs!5971 (Context!10943 (Cons!64436 (h!70884 (exprs!5971 (h!70886 zl!343))) (t!378041 (exprs!5971 (h!70886 zl!343)))))))))))

(declare-fun bs!1523587 () Bool)

(assert (= bs!1523587 d!1925263))

(declare-fun m!6985494 () Bool)

(assert (=> bs!1523587 m!6985494))

(assert (=> b!6143480 d!1925263))

(declare-fun call!510605 () List!64560)

(declare-fun call!510609 () (InoxSet Context!10942))

(declare-fun c!1105539 () Bool)

(declare-fun bm!510599 () Bool)

(assert (=> bm!510599 (= call!510609 (derivationStepZipperDown!1335 (ite c!1105539 (regTwo!32687 (ite c!1105233 (regTwo!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))))) (regOne!32686 (ite c!1105233 (regTwo!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343))))))) (ite c!1105539 (ite c!1105233 lt!2333388 (Context!10943 call!510381)) (Context!10943 call!510605)) (h!70885 s!2326)))))

(declare-fun b!6144650 () Bool)

(declare-fun c!1105540 () Bool)

(assert (=> b!6144650 (= c!1105540 ((_ is Star!16087) (ite c!1105233 (regTwo!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))))))))

(declare-fun e!3744545 () (InoxSet Context!10942))

(declare-fun e!3744541 () (InoxSet Context!10942))

(assert (=> b!6144650 (= e!3744545 e!3744541)))

(declare-fun b!6144651 () Bool)

(declare-fun call!510606 () (InoxSet Context!10942))

(assert (=> b!6144651 (= e!3744541 call!510606)))

(declare-fun b!6144652 () Bool)

(declare-fun e!3744543 () (InoxSet Context!10942))

(assert (=> b!6144652 (= e!3744543 e!3744545)))

(declare-fun c!1105538 () Bool)

(assert (=> b!6144652 (= c!1105538 ((_ is Concat!24932) (ite c!1105233 (regTwo!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))))))))

(declare-fun b!6144653 () Bool)

(declare-fun c!1105537 () Bool)

(declare-fun e!3744544 () Bool)

(assert (=> b!6144653 (= c!1105537 e!3744544)))

(declare-fun res!2545705 () Bool)

(assert (=> b!6144653 (=> (not res!2545705) (not e!3744544))))

(assert (=> b!6144653 (= res!2545705 ((_ is Concat!24932) (ite c!1105233 (regTwo!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))))))))

(declare-fun e!3744542 () (InoxSet Context!10942))

(assert (=> b!6144653 (= e!3744542 e!3744543)))

(declare-fun b!6144654 () Bool)

(assert (=> b!6144654 (= e!3744541 ((as const (Array Context!10942 Bool)) false))))

(declare-fun b!6144655 () Bool)

(declare-fun e!3744540 () (InoxSet Context!10942))

(assert (=> b!6144655 (= e!3744540 e!3744542)))

(assert (=> b!6144655 (= c!1105539 ((_ is Union!16087) (ite c!1105233 (regTwo!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))))))))

(declare-fun b!6144656 () Bool)

(declare-fun call!510607 () (InoxSet Context!10942))

(assert (=> b!6144656 (= e!3744543 ((_ map or) call!510609 call!510607))))

(declare-fun bm!510600 () Bool)

(declare-fun call!510604 () (InoxSet Context!10942))

(assert (=> bm!510600 (= call!510607 call!510604)))

(declare-fun b!6144657 () Bool)

(assert (=> b!6144657 (= e!3744545 call!510606)))

(declare-fun bm!510602 () Bool)

(assert (=> bm!510602 (= call!510606 call!510607)))

(declare-fun b!6144658 () Bool)

(assert (=> b!6144658 (= e!3744540 (store ((as const (Array Context!10942 Bool)) false) (ite c!1105233 lt!2333388 (Context!10943 call!510381)) true))))

(declare-fun bm!510603 () Bool)

(declare-fun call!510608 () List!64560)

(assert (=> bm!510603 (= call!510608 call!510605)))

(declare-fun b!6144659 () Bool)

(assert (=> b!6144659 (= e!3744544 (nullable!6080 (regOne!32686 (ite c!1105233 (regTwo!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343))))))))))

(declare-fun b!6144660 () Bool)

(assert (=> b!6144660 (= e!3744542 ((_ map or) call!510604 call!510609))))

(declare-fun bm!510604 () Bool)

(assert (=> bm!510604 (= call!510605 ($colon$colon!1964 (exprs!5971 (ite c!1105233 lt!2333388 (Context!10943 call!510381))) (ite (or c!1105537 c!1105538) (regTwo!32686 (ite c!1105233 (regTwo!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))))) (ite c!1105233 (regTwo!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343))))))))))

(declare-fun d!1925265 () Bool)

(declare-fun c!1105541 () Bool)

(assert (=> d!1925265 (= c!1105541 (and ((_ is ElementMatch!16087) (ite c!1105233 (regTwo!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))))) (= (c!1105061 (ite c!1105233 (regTwo!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))))) (h!70885 s!2326))))))

(assert (=> d!1925265 (= (derivationStepZipperDown!1335 (ite c!1105233 (regTwo!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343))))) (ite c!1105233 lt!2333388 (Context!10943 call!510381)) (h!70885 s!2326)) e!3744540)))

(declare-fun bm!510601 () Bool)

(assert (=> bm!510601 (= call!510604 (derivationStepZipperDown!1335 (ite c!1105539 (regOne!32687 (ite c!1105233 (regTwo!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))))) (ite c!1105537 (regTwo!32686 (ite c!1105233 (regTwo!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))))) (ite c!1105538 (regOne!32686 (ite c!1105233 (regTwo!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))))) (reg!16416 (ite c!1105233 (regTwo!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343))))))))) (ite (or c!1105539 c!1105537) (ite c!1105233 lt!2333388 (Context!10943 call!510381)) (Context!10943 call!510608)) (h!70885 s!2326)))))

(assert (= (and d!1925265 c!1105541) b!6144658))

(assert (= (and d!1925265 (not c!1105541)) b!6144655))

(assert (= (and b!6144655 c!1105539) b!6144660))

(assert (= (and b!6144655 (not c!1105539)) b!6144653))

(assert (= (and b!6144653 res!2545705) b!6144659))

(assert (= (and b!6144653 c!1105537) b!6144656))

(assert (= (and b!6144653 (not c!1105537)) b!6144652))

(assert (= (and b!6144652 c!1105538) b!6144657))

(assert (= (and b!6144652 (not c!1105538)) b!6144650))

(assert (= (and b!6144650 c!1105540) b!6144651))

(assert (= (and b!6144650 (not c!1105540)) b!6144654))

(assert (= (or b!6144657 b!6144651) bm!510603))

(assert (= (or b!6144657 b!6144651) bm!510602))

(assert (= (or b!6144656 bm!510603) bm!510604))

(assert (= (or b!6144656 bm!510602) bm!510600))

(assert (= (or b!6144660 b!6144656) bm!510599))

(assert (= (or b!6144660 bm!510600) bm!510601))

(declare-fun m!6985496 () Bool)

(assert (=> bm!510599 m!6985496))

(declare-fun m!6985498 () Bool)

(assert (=> bm!510601 m!6985498))

(declare-fun m!6985500 () Bool)

(assert (=> b!6144658 m!6985500))

(declare-fun m!6985502 () Bool)

(assert (=> b!6144659 m!6985502))

(declare-fun m!6985504 () Bool)

(assert (=> bm!510604 m!6985504))

(assert (=> bm!510375 d!1925265))

(assert (=> d!1924725 d!1925055))

(declare-fun c!1105544 () Bool)

(declare-fun call!510615 () (InoxSet Context!10942))

(declare-fun call!510611 () List!64560)

(declare-fun bm!510605 () Bool)

(assert (=> bm!510605 (= call!510615 (derivationStepZipperDown!1335 (ite c!1105544 (regTwo!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343))))) (ite c!1105544 (Context!10943 (t!378041 (exprs!5971 (h!70886 zl!343)))) (Context!10943 call!510611)) (h!70885 s!2326)))))

(declare-fun b!6144661 () Bool)

(declare-fun c!1105545 () Bool)

(assert (=> b!6144661 (= c!1105545 ((_ is Star!16087) (h!70884 (exprs!5971 (h!70886 zl!343)))))))

(declare-fun e!3744551 () (InoxSet Context!10942))

(declare-fun e!3744547 () (InoxSet Context!10942))

(assert (=> b!6144661 (= e!3744551 e!3744547)))

(declare-fun b!6144662 () Bool)

(declare-fun call!510612 () (InoxSet Context!10942))

(assert (=> b!6144662 (= e!3744547 call!510612)))

(declare-fun b!6144663 () Bool)

(declare-fun e!3744549 () (InoxSet Context!10942))

(assert (=> b!6144663 (= e!3744549 e!3744551)))

(declare-fun c!1105543 () Bool)

(assert (=> b!6144663 (= c!1105543 ((_ is Concat!24932) (h!70884 (exprs!5971 (h!70886 zl!343)))))))

(declare-fun b!6144664 () Bool)

(declare-fun c!1105542 () Bool)

(declare-fun e!3744550 () Bool)

(assert (=> b!6144664 (= c!1105542 e!3744550)))

(declare-fun res!2545706 () Bool)

(assert (=> b!6144664 (=> (not res!2545706) (not e!3744550))))

(assert (=> b!6144664 (= res!2545706 ((_ is Concat!24932) (h!70884 (exprs!5971 (h!70886 zl!343)))))))

(declare-fun e!3744548 () (InoxSet Context!10942))

(assert (=> b!6144664 (= e!3744548 e!3744549)))

(declare-fun b!6144665 () Bool)

(assert (=> b!6144665 (= e!3744547 ((as const (Array Context!10942 Bool)) false))))

(declare-fun b!6144666 () Bool)

(declare-fun e!3744546 () (InoxSet Context!10942))

(assert (=> b!6144666 (= e!3744546 e!3744548)))

(assert (=> b!6144666 (= c!1105544 ((_ is Union!16087) (h!70884 (exprs!5971 (h!70886 zl!343)))))))

(declare-fun b!6144667 () Bool)

(declare-fun call!510613 () (InoxSet Context!10942))

(assert (=> b!6144667 (= e!3744549 ((_ map or) call!510615 call!510613))))

(declare-fun bm!510606 () Bool)

(declare-fun call!510610 () (InoxSet Context!10942))

(assert (=> bm!510606 (= call!510613 call!510610)))

(declare-fun b!6144668 () Bool)

(assert (=> b!6144668 (= e!3744551 call!510612)))

(declare-fun bm!510608 () Bool)

(assert (=> bm!510608 (= call!510612 call!510613)))

(declare-fun b!6144669 () Bool)

(assert (=> b!6144669 (= e!3744546 (store ((as const (Array Context!10942 Bool)) false) (Context!10943 (t!378041 (exprs!5971 (h!70886 zl!343)))) true))))

(declare-fun bm!510609 () Bool)

(declare-fun call!510614 () List!64560)

(assert (=> bm!510609 (= call!510614 call!510611)))

(declare-fun b!6144670 () Bool)

(assert (=> b!6144670 (= e!3744550 (nullable!6080 (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343))))))))

(declare-fun b!6144671 () Bool)

(assert (=> b!6144671 (= e!3744548 ((_ map or) call!510610 call!510615))))

(declare-fun bm!510610 () Bool)

(assert (=> bm!510610 (= call!510611 ($colon$colon!1964 (exprs!5971 (Context!10943 (t!378041 (exprs!5971 (h!70886 zl!343))))) (ite (or c!1105542 c!1105543) (regTwo!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (h!70884 (exprs!5971 (h!70886 zl!343))))))))

(declare-fun d!1925267 () Bool)

(declare-fun c!1105546 () Bool)

(assert (=> d!1925267 (= c!1105546 (and ((_ is ElementMatch!16087) (h!70884 (exprs!5971 (h!70886 zl!343)))) (= (c!1105061 (h!70884 (exprs!5971 (h!70886 zl!343)))) (h!70885 s!2326))))))

(assert (=> d!1925267 (= (derivationStepZipperDown!1335 (h!70884 (exprs!5971 (h!70886 zl!343))) (Context!10943 (t!378041 (exprs!5971 (h!70886 zl!343)))) (h!70885 s!2326)) e!3744546)))

(declare-fun bm!510607 () Bool)

(assert (=> bm!510607 (= call!510610 (derivationStepZipperDown!1335 (ite c!1105544 (regOne!32687 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105542 (regTwo!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (ite c!1105543 (regOne!32686 (h!70884 (exprs!5971 (h!70886 zl!343)))) (reg!16416 (h!70884 (exprs!5971 (h!70886 zl!343))))))) (ite (or c!1105544 c!1105542) (Context!10943 (t!378041 (exprs!5971 (h!70886 zl!343)))) (Context!10943 call!510614)) (h!70885 s!2326)))))

(assert (= (and d!1925267 c!1105546) b!6144669))

(assert (= (and d!1925267 (not c!1105546)) b!6144666))

(assert (= (and b!6144666 c!1105544) b!6144671))

(assert (= (and b!6144666 (not c!1105544)) b!6144664))

(assert (= (and b!6144664 res!2545706) b!6144670))

(assert (= (and b!6144664 c!1105542) b!6144667))

(assert (= (and b!6144664 (not c!1105542)) b!6144663))

(assert (= (and b!6144663 c!1105543) b!6144668))

(assert (= (and b!6144663 (not c!1105543)) b!6144661))

(assert (= (and b!6144661 c!1105545) b!6144662))

(assert (= (and b!6144661 (not c!1105545)) b!6144665))

(assert (= (or b!6144668 b!6144662) bm!510609))

(assert (= (or b!6144668 b!6144662) bm!510608))

(assert (= (or b!6144667 bm!510609) bm!510610))

(assert (= (or b!6144667 bm!510608) bm!510606))

(assert (= (or b!6144671 b!6144667) bm!510605))

(assert (= (or b!6144671 bm!510606) bm!510607))

(declare-fun m!6985506 () Bool)

(assert (=> bm!510605 m!6985506))

(declare-fun m!6985508 () Bool)

(assert (=> bm!510607 m!6985508))

(declare-fun m!6985510 () Bool)

(assert (=> b!6144669 m!6985510))

(assert (=> b!6144670 m!6984394))

(declare-fun m!6985512 () Bool)

(assert (=> bm!510610 m!6985512))

(assert (=> bm!510382 d!1925267))

(declare-fun d!1925269 () Bool)

(declare-fun c!1105547 () Bool)

(assert (=> d!1925269 (= c!1105547 (isEmpty!36392 (tail!11780 (t!378042 s!2326))))))

(declare-fun e!3744552 () Bool)

(assert (=> d!1925269 (= (matchZipper!2099 (derivationStepZipper!2060 ((_ map or) lt!2333383 lt!2333386) (head!12695 (t!378042 s!2326))) (tail!11780 (t!378042 s!2326))) e!3744552)))

(declare-fun b!6144672 () Bool)

(assert (=> b!6144672 (= e!3744552 (nullableZipper!1868 (derivationStepZipper!2060 ((_ map or) lt!2333383 lt!2333386) (head!12695 (t!378042 s!2326)))))))

(declare-fun b!6144673 () Bool)

(assert (=> b!6144673 (= e!3744552 (matchZipper!2099 (derivationStepZipper!2060 (derivationStepZipper!2060 ((_ map or) lt!2333383 lt!2333386) (head!12695 (t!378042 s!2326))) (head!12695 (tail!11780 (t!378042 s!2326)))) (tail!11780 (tail!11780 (t!378042 s!2326)))))))

(assert (= (and d!1925269 c!1105547) b!6144672))

(assert (= (and d!1925269 (not c!1105547)) b!6144673))

(assert (=> d!1925269 m!6984304))

(assert (=> d!1925269 m!6985088))

(assert (=> b!6144672 m!6984310))

(declare-fun m!6985514 () Bool)

(assert (=> b!6144672 m!6985514))

(assert (=> b!6144673 m!6984304))

(assert (=> b!6144673 m!6985092))

(assert (=> b!6144673 m!6984310))

(assert (=> b!6144673 m!6985092))

(declare-fun m!6985516 () Bool)

(assert (=> b!6144673 m!6985516))

(assert (=> b!6144673 m!6984304))

(assert (=> b!6144673 m!6985096))

(assert (=> b!6144673 m!6985516))

(assert (=> b!6144673 m!6985096))

(declare-fun m!6985518 () Bool)

(assert (=> b!6144673 m!6985518))

(assert (=> b!6143315 d!1925269))

(declare-fun bs!1523588 () Bool)

(declare-fun d!1925271 () Bool)

(assert (= bs!1523588 (and d!1925271 b!6142915)))

(declare-fun lambda!334995 () Int)

(assert (=> bs!1523588 (= (= (head!12695 (t!378042 s!2326)) (h!70885 s!2326)) (= lambda!334995 lambda!334869))))

(declare-fun bs!1523589 () Bool)

(assert (= bs!1523589 (and d!1925271 d!1925181)))

(assert (=> bs!1523589 (= lambda!334995 lambda!334986)))

(declare-fun bs!1523590 () Bool)

(assert (= bs!1523590 (and d!1925271 d!1925129)))

(assert (=> bs!1523590 (= lambda!334995 lambda!334974)))

(declare-fun bs!1523591 () Bool)

(assert (= bs!1523591 (and d!1925271 d!1925119)))

(assert (=> bs!1523591 (= lambda!334995 lambda!334973)))

(declare-fun bs!1523592 () Bool)

(assert (= bs!1523592 (and d!1925271 d!1925089)))

(assert (=> bs!1523592 (= lambda!334995 lambda!334968)))

(declare-fun bs!1523593 () Bool)

(assert (= bs!1523593 (and d!1925271 d!1925139)))

(assert (=> bs!1523593 (= lambda!334995 lambda!334975)))

(assert (=> d!1925271 true))

(assert (=> d!1925271 (= (derivationStepZipper!2060 ((_ map or) lt!2333383 lt!2333386) (head!12695 (t!378042 s!2326))) (flatMap!1592 ((_ map or) lt!2333383 lt!2333386) lambda!334995))))

(declare-fun bs!1523594 () Bool)

(assert (= bs!1523594 d!1925271))

(declare-fun m!6985520 () Bool)

(assert (=> bs!1523594 m!6985520))

(assert (=> b!6143315 d!1925271))

(assert (=> b!6143315 d!1925091))

(assert (=> b!6143315 d!1925093))

(assert (=> b!6143576 d!1924777))

(declare-fun b!6144674 () Bool)

(declare-fun res!2545707 () Bool)

(declare-fun e!3744554 () Bool)

(assert (=> b!6144674 (=> res!2545707 e!3744554)))

(declare-fun e!3744553 () Bool)

(assert (=> b!6144674 (= res!2545707 e!3744553)))

(declare-fun res!2545711 () Bool)

(assert (=> b!6144674 (=> (not res!2545711) (not e!3744553))))

(declare-fun lt!2333534 () Bool)

(assert (=> b!6144674 (= res!2545711 lt!2333534)))

(declare-fun b!6144675 () Bool)

(declare-fun res!2545708 () Bool)

(assert (=> b!6144675 (=> res!2545708 e!3744554)))

(assert (=> b!6144675 (= res!2545708 (not ((_ is ElementMatch!16087) (regOne!32686 r!7292))))))

(declare-fun e!3744559 () Bool)

(assert (=> b!6144675 (= e!3744559 e!3744554)))

(declare-fun b!6144676 () Bool)

(declare-fun e!3744556 () Bool)

(assert (=> b!6144676 (= e!3744554 e!3744556)))

(declare-fun res!2545709 () Bool)

(assert (=> b!6144676 (=> (not res!2545709) (not e!3744556))))

(assert (=> b!6144676 (= res!2545709 (not lt!2333534))))

(declare-fun b!6144677 () Bool)

(declare-fun e!3744557 () Bool)

(assert (=> b!6144677 (= e!3744556 e!3744557)))

(declare-fun res!2545710 () Bool)

(assert (=> b!6144677 (=> res!2545710 e!3744557)))

(declare-fun call!510616 () Bool)

(assert (=> b!6144677 (= res!2545710 call!510616)))

(declare-fun b!6144678 () Bool)

(declare-fun res!2545712 () Bool)

(assert (=> b!6144678 (=> (not res!2545712) (not e!3744553))))

(assert (=> b!6144678 (= res!2545712 (isEmpty!36392 (tail!11780 (_1!36369 (get!22232 lt!2333483)))))))

(declare-fun b!6144679 () Bool)

(declare-fun e!3744555 () Bool)

(assert (=> b!6144679 (= e!3744555 e!3744559)))

(declare-fun c!1105548 () Bool)

(assert (=> b!6144679 (= c!1105548 ((_ is EmptyLang!16087) (regOne!32686 r!7292)))))

(declare-fun b!6144680 () Bool)

(assert (=> b!6144680 (= e!3744559 (not lt!2333534))))

(declare-fun d!1925273 () Bool)

(assert (=> d!1925273 e!3744555))

(declare-fun c!1105549 () Bool)

(assert (=> d!1925273 (= c!1105549 ((_ is EmptyExpr!16087) (regOne!32686 r!7292)))))

(declare-fun e!3744558 () Bool)

(assert (=> d!1925273 (= lt!2333534 e!3744558)))

(declare-fun c!1105550 () Bool)

(assert (=> d!1925273 (= c!1105550 (isEmpty!36392 (_1!36369 (get!22232 lt!2333483))))))

(assert (=> d!1925273 (validRegex!7823 (regOne!32686 r!7292))))

(assert (=> d!1925273 (= (matchR!8270 (regOne!32686 r!7292) (_1!36369 (get!22232 lt!2333483))) lt!2333534)))

(declare-fun bm!510611 () Bool)

(assert (=> bm!510611 (= call!510616 (isEmpty!36392 (_1!36369 (get!22232 lt!2333483))))))

(declare-fun b!6144681 () Bool)

(assert (=> b!6144681 (= e!3744557 (not (= (head!12695 (_1!36369 (get!22232 lt!2333483))) (c!1105061 (regOne!32686 r!7292)))))))

(declare-fun b!6144682 () Bool)

(assert (=> b!6144682 (= e!3744558 (nullable!6080 (regOne!32686 r!7292)))))

(declare-fun b!6144683 () Bool)

(assert (=> b!6144683 (= e!3744555 (= lt!2333534 call!510616))))

(declare-fun b!6144684 () Bool)

(assert (=> b!6144684 (= e!3744553 (= (head!12695 (_1!36369 (get!22232 lt!2333483))) (c!1105061 (regOne!32686 r!7292))))))

(declare-fun b!6144685 () Bool)

(declare-fun res!2545714 () Bool)

(assert (=> b!6144685 (=> res!2545714 e!3744557)))

(assert (=> b!6144685 (= res!2545714 (not (isEmpty!36392 (tail!11780 (_1!36369 (get!22232 lt!2333483))))))))

(declare-fun b!6144686 () Bool)

(assert (=> b!6144686 (= e!3744558 (matchR!8270 (derivativeStep!4807 (regOne!32686 r!7292) (head!12695 (_1!36369 (get!22232 lt!2333483)))) (tail!11780 (_1!36369 (get!22232 lt!2333483)))))))

(declare-fun b!6144687 () Bool)

(declare-fun res!2545713 () Bool)

(assert (=> b!6144687 (=> (not res!2545713) (not e!3744553))))

(assert (=> b!6144687 (= res!2545713 (not call!510616))))

(assert (= (and d!1925273 c!1105550) b!6144682))

(assert (= (and d!1925273 (not c!1105550)) b!6144686))

(assert (= (and d!1925273 c!1105549) b!6144683))

(assert (= (and d!1925273 (not c!1105549)) b!6144679))

(assert (= (and b!6144679 c!1105548) b!6144680))

(assert (= (and b!6144679 (not c!1105548)) b!6144675))

(assert (= (and b!6144675 (not res!2545708)) b!6144674))

(assert (= (and b!6144674 res!2545711) b!6144687))

(assert (= (and b!6144687 res!2545713) b!6144678))

(assert (= (and b!6144678 res!2545712) b!6144684))

(assert (= (and b!6144674 (not res!2545707)) b!6144676))

(assert (= (and b!6144676 res!2545709) b!6144677))

(assert (= (and b!6144677 (not res!2545710)) b!6144685))

(assert (= (and b!6144685 (not res!2545714)) b!6144681))

(assert (= (or b!6144683 b!6144677 b!6144687) bm!510611))

(declare-fun m!6985522 () Bool)

(assert (=> b!6144686 m!6985522))

(assert (=> b!6144686 m!6985522))

(declare-fun m!6985524 () Bool)

(assert (=> b!6144686 m!6985524))

(declare-fun m!6985526 () Bool)

(assert (=> b!6144686 m!6985526))

(assert (=> b!6144686 m!6985524))

(assert (=> b!6144686 m!6985526))

(declare-fun m!6985528 () Bool)

(assert (=> b!6144686 m!6985528))

(declare-fun m!6985530 () Bool)

(assert (=> d!1925273 m!6985530))

(assert (=> d!1925273 m!6984502))

(assert (=> b!6144678 m!6985526))

(assert (=> b!6144678 m!6985526))

(declare-fun m!6985532 () Bool)

(assert (=> b!6144678 m!6985532))

(assert (=> b!6144681 m!6985522))

(assert (=> bm!510611 m!6985530))

(assert (=> b!6144685 m!6985526))

(assert (=> b!6144685 m!6985526))

(assert (=> b!6144685 m!6985532))

(assert (=> b!6144684 m!6985522))

(assert (=> b!6144682 m!6985080))

(assert (=> b!6143616 d!1925273))

(assert (=> b!6143616 d!1925125))

(declare-fun d!1925275 () Bool)

(assert (=> d!1925275 (= ($colon$colon!1964 (exprs!5971 lt!2333388) (ite (or c!1105247 c!1105248) (regTwo!32686 (regOne!32687 (regOne!32686 r!7292))) (regOne!32687 (regOne!32686 r!7292)))) (Cons!64436 (ite (or c!1105247 c!1105248) (regTwo!32686 (regOne!32687 (regOne!32686 r!7292))) (regOne!32687 (regOne!32686 r!7292))) (exprs!5971 lt!2333388)))))

(assert (=> bm!510395 d!1925275))

(assert (=> b!6143307 d!1924741))

(assert (=> bs!1523279 d!1924759))

(declare-fun d!1925277 () Bool)

(assert (=> d!1925277 (= (isConcat!1027 lt!2333468) ((_ is Concat!24932) lt!2333468))))

(assert (=> b!6143580 d!1925277))

(declare-fun d!1925279 () Bool)

(declare-fun res!2545715 () Bool)

(declare-fun e!3744560 () Bool)

(assert (=> d!1925279 (=> res!2545715 e!3744560)))

(assert (=> d!1925279 (= res!2545715 ((_ is Nil!64436) (exprs!5971 (h!70886 zl!343))))))

(assert (=> d!1925279 (= (forall!15208 (exprs!5971 (h!70886 zl!343)) lambda!334914) e!3744560)))

(declare-fun b!6144688 () Bool)

(declare-fun e!3744561 () Bool)

(assert (=> b!6144688 (= e!3744560 e!3744561)))

(declare-fun res!2545716 () Bool)

(assert (=> b!6144688 (=> (not res!2545716) (not e!3744561))))

(assert (=> b!6144688 (= res!2545716 (dynLambda!25396 lambda!334914 (h!70884 (exprs!5971 (h!70886 zl!343)))))))

(declare-fun b!6144689 () Bool)

(assert (=> b!6144689 (= e!3744561 (forall!15208 (t!378041 (exprs!5971 (h!70886 zl!343))) lambda!334914))))

(assert (= (and d!1925279 (not res!2545715)) b!6144688))

(assert (= (and b!6144688 res!2545716) b!6144689))

(declare-fun b_lambda!233871 () Bool)

(assert (=> (not b_lambda!233871) (not b!6144688)))

(declare-fun m!6985534 () Bool)

(assert (=> b!6144688 m!6985534))

(declare-fun m!6985536 () Bool)

(assert (=> b!6144689 m!6985536))

(assert (=> d!1924761 d!1925279))

(declare-fun bm!510612 () Bool)

(declare-fun call!510622 () (InoxSet Context!10942))

(declare-fun c!1105553 () Bool)

(declare-fun call!510618 () List!64560)

(assert (=> bm!510612 (= call!510622 (derivationStepZipperDown!1335 (ite c!1105553 (regTwo!32687 (h!70884 (exprs!5971 lt!2333388))) (regOne!32686 (h!70884 (exprs!5971 lt!2333388)))) (ite c!1105553 (Context!10943 (t!378041 (exprs!5971 lt!2333388))) (Context!10943 call!510618)) (h!70885 s!2326)))))

(declare-fun b!6144690 () Bool)

(declare-fun c!1105554 () Bool)

(assert (=> b!6144690 (= c!1105554 ((_ is Star!16087) (h!70884 (exprs!5971 lt!2333388))))))

(declare-fun e!3744567 () (InoxSet Context!10942))

(declare-fun e!3744563 () (InoxSet Context!10942))

(assert (=> b!6144690 (= e!3744567 e!3744563)))

(declare-fun b!6144691 () Bool)

(declare-fun call!510619 () (InoxSet Context!10942))

(assert (=> b!6144691 (= e!3744563 call!510619)))

(declare-fun b!6144692 () Bool)

(declare-fun e!3744565 () (InoxSet Context!10942))

(assert (=> b!6144692 (= e!3744565 e!3744567)))

(declare-fun c!1105552 () Bool)

(assert (=> b!6144692 (= c!1105552 ((_ is Concat!24932) (h!70884 (exprs!5971 lt!2333388))))))

(declare-fun b!6144693 () Bool)

(declare-fun c!1105551 () Bool)

(declare-fun e!3744566 () Bool)

(assert (=> b!6144693 (= c!1105551 e!3744566)))

(declare-fun res!2545717 () Bool)

(assert (=> b!6144693 (=> (not res!2545717) (not e!3744566))))

(assert (=> b!6144693 (= res!2545717 ((_ is Concat!24932) (h!70884 (exprs!5971 lt!2333388))))))

(declare-fun e!3744564 () (InoxSet Context!10942))

(assert (=> b!6144693 (= e!3744564 e!3744565)))

(declare-fun b!6144694 () Bool)

(assert (=> b!6144694 (= e!3744563 ((as const (Array Context!10942 Bool)) false))))

(declare-fun b!6144695 () Bool)

(declare-fun e!3744562 () (InoxSet Context!10942))

(assert (=> b!6144695 (= e!3744562 e!3744564)))

(assert (=> b!6144695 (= c!1105553 ((_ is Union!16087) (h!70884 (exprs!5971 lt!2333388))))))

(declare-fun b!6144696 () Bool)

(declare-fun call!510620 () (InoxSet Context!10942))

(assert (=> b!6144696 (= e!3744565 ((_ map or) call!510622 call!510620))))

(declare-fun bm!510613 () Bool)

(declare-fun call!510617 () (InoxSet Context!10942))

(assert (=> bm!510613 (= call!510620 call!510617)))

(declare-fun b!6144697 () Bool)

(assert (=> b!6144697 (= e!3744567 call!510619)))

(declare-fun bm!510615 () Bool)

(assert (=> bm!510615 (= call!510619 call!510620)))

(declare-fun b!6144698 () Bool)

(assert (=> b!6144698 (= e!3744562 (store ((as const (Array Context!10942 Bool)) false) (Context!10943 (t!378041 (exprs!5971 lt!2333388))) true))))

(declare-fun bm!510616 () Bool)

(declare-fun call!510621 () List!64560)

(assert (=> bm!510616 (= call!510621 call!510618)))

(declare-fun b!6144699 () Bool)

(assert (=> b!6144699 (= e!3744566 (nullable!6080 (regOne!32686 (h!70884 (exprs!5971 lt!2333388)))))))

(declare-fun b!6144700 () Bool)

(assert (=> b!6144700 (= e!3744564 ((_ map or) call!510617 call!510622))))

(declare-fun bm!510617 () Bool)

(assert (=> bm!510617 (= call!510618 ($colon$colon!1964 (exprs!5971 (Context!10943 (t!378041 (exprs!5971 lt!2333388)))) (ite (or c!1105551 c!1105552) (regTwo!32686 (h!70884 (exprs!5971 lt!2333388))) (h!70884 (exprs!5971 lt!2333388)))))))

(declare-fun d!1925281 () Bool)

(declare-fun c!1105555 () Bool)

(assert (=> d!1925281 (= c!1105555 (and ((_ is ElementMatch!16087) (h!70884 (exprs!5971 lt!2333388))) (= (c!1105061 (h!70884 (exprs!5971 lt!2333388))) (h!70885 s!2326))))))

(assert (=> d!1925281 (= (derivationStepZipperDown!1335 (h!70884 (exprs!5971 lt!2333388)) (Context!10943 (t!378041 (exprs!5971 lt!2333388))) (h!70885 s!2326)) e!3744562)))

(declare-fun bm!510614 () Bool)

(assert (=> bm!510614 (= call!510617 (derivationStepZipperDown!1335 (ite c!1105553 (regOne!32687 (h!70884 (exprs!5971 lt!2333388))) (ite c!1105551 (regTwo!32686 (h!70884 (exprs!5971 lt!2333388))) (ite c!1105552 (regOne!32686 (h!70884 (exprs!5971 lt!2333388))) (reg!16416 (h!70884 (exprs!5971 lt!2333388)))))) (ite (or c!1105553 c!1105551) (Context!10943 (t!378041 (exprs!5971 lt!2333388))) (Context!10943 call!510621)) (h!70885 s!2326)))))

(assert (= (and d!1925281 c!1105555) b!6144698))

(assert (= (and d!1925281 (not c!1105555)) b!6144695))

(assert (= (and b!6144695 c!1105553) b!6144700))

(assert (= (and b!6144695 (not c!1105553)) b!6144693))

(assert (= (and b!6144693 res!2545717) b!6144699))

(assert (= (and b!6144693 c!1105551) b!6144696))

(assert (= (and b!6144693 (not c!1105551)) b!6144692))

(assert (= (and b!6144692 c!1105552) b!6144697))

(assert (= (and b!6144692 (not c!1105552)) b!6144690))

(assert (= (and b!6144690 c!1105554) b!6144691))

(assert (= (and b!6144690 (not c!1105554)) b!6144694))

(assert (= (or b!6144697 b!6144691) bm!510616))

(assert (= (or b!6144697 b!6144691) bm!510615))

(assert (= (or b!6144696 bm!510616) bm!510617))

(assert (= (or b!6144696 bm!510615) bm!510613))

(assert (= (or b!6144700 b!6144696) bm!510612))

(assert (= (or b!6144700 bm!510613) bm!510614))

(declare-fun m!6985538 () Bool)

(assert (=> bm!510612 m!6985538))

(declare-fun m!6985540 () Bool)

(assert (=> bm!510614 m!6985540))

(declare-fun m!6985542 () Bool)

(assert (=> b!6144698 m!6985542))

(declare-fun m!6985544 () Bool)

(assert (=> b!6144699 m!6985544))

(declare-fun m!6985546 () Bool)

(assert (=> bm!510617 m!6985546))

(assert (=> bm!510381 d!1925281))

(declare-fun d!1925283 () Bool)

(declare-fun res!2545722 () Bool)

(declare-fun e!3744572 () Bool)

(assert (=> d!1925283 (=> res!2545722 e!3744572)))

(assert (=> d!1925283 (= res!2545722 ((_ is Nil!64438) lt!2333475))))

(assert (=> d!1925283 (= (noDuplicate!1934 lt!2333475) e!3744572)))

(declare-fun b!6144705 () Bool)

(declare-fun e!3744573 () Bool)

(assert (=> b!6144705 (= e!3744572 e!3744573)))

(declare-fun res!2545723 () Bool)

(assert (=> b!6144705 (=> (not res!2545723) (not e!3744573))))

(declare-fun contains!20047 (List!64562 Context!10942) Bool)

(assert (=> b!6144705 (= res!2545723 (not (contains!20047 (t!378043 lt!2333475) (h!70886 lt!2333475))))))

(declare-fun b!6144706 () Bool)

(assert (=> b!6144706 (= e!3744573 (noDuplicate!1934 (t!378043 lt!2333475)))))

(assert (= (and d!1925283 (not res!2545722)) b!6144705))

(assert (= (and b!6144705 res!2545723) b!6144706))

(declare-fun m!6985548 () Bool)

(assert (=> b!6144705 m!6985548))

(declare-fun m!6985550 () Bool)

(assert (=> b!6144706 m!6985550))

(assert (=> d!1924789 d!1925283))

(declare-fun d!1925285 () Bool)

(declare-fun e!3744581 () Bool)

(assert (=> d!1925285 e!3744581))

(declare-fun res!2545729 () Bool)

(assert (=> d!1925285 (=> (not res!2545729) (not e!3744581))))

(declare-fun res!2545728 () List!64562)

(assert (=> d!1925285 (= res!2545729 (noDuplicate!1934 res!2545728))))

(declare-fun e!3744582 () Bool)

(assert (=> d!1925285 e!3744582))

(assert (=> d!1925285 (= (choose!45662 z!1189) res!2545728)))

(declare-fun b!6144714 () Bool)

(declare-fun e!3744580 () Bool)

(declare-fun tp!1716530 () Bool)

(assert (=> b!6144714 (= e!3744580 tp!1716530)))

(declare-fun tp!1716529 () Bool)

(declare-fun b!6144713 () Bool)

(assert (=> b!6144713 (= e!3744582 (and (inv!83464 (h!70886 res!2545728)) e!3744580 tp!1716529))))

(declare-fun b!6144715 () Bool)

(assert (=> b!6144715 (= e!3744581 (= (content!11996 res!2545728) z!1189))))

(assert (= b!6144713 b!6144714))

(assert (= (and d!1925285 ((_ is Cons!64438) res!2545728)) b!6144713))

(assert (= (and d!1925285 res!2545729) b!6144715))

(declare-fun m!6985552 () Bool)

(assert (=> d!1925285 m!6985552))

(declare-fun m!6985554 () Bool)

(assert (=> b!6144713 m!6985554))

(declare-fun m!6985556 () Bool)

(assert (=> b!6144715 m!6985556))

(assert (=> d!1924789 d!1925285))

(declare-fun e!3744583 () Bool)

(assert (=> b!6143657 (= tp!1716324 e!3744583)))

(declare-fun b!6144719 () Bool)

(declare-fun tp!1716534 () Bool)

(declare-fun tp!1716533 () Bool)

(assert (=> b!6144719 (= e!3744583 (and tp!1716534 tp!1716533))))

(declare-fun b!6144717 () Bool)

(declare-fun tp!1716531 () Bool)

(declare-fun tp!1716535 () Bool)

(assert (=> b!6144717 (= e!3744583 (and tp!1716531 tp!1716535))))

(declare-fun b!6144718 () Bool)

(declare-fun tp!1716532 () Bool)

(assert (=> b!6144718 (= e!3744583 tp!1716532)))

(declare-fun b!6144716 () Bool)

(assert (=> b!6144716 (= e!3744583 tp_is_empty!41427)))

(assert (= (and b!6143657 ((_ is ElementMatch!16087) (regOne!32687 (regOne!32687 r!7292)))) b!6144716))

(assert (= (and b!6143657 ((_ is Concat!24932) (regOne!32687 (regOne!32687 r!7292)))) b!6144717))

(assert (= (and b!6143657 ((_ is Star!16087) (regOne!32687 (regOne!32687 r!7292)))) b!6144718))

(assert (= (and b!6143657 ((_ is Union!16087) (regOne!32687 (regOne!32687 r!7292)))) b!6144719))

(declare-fun e!3744584 () Bool)

(assert (=> b!6143657 (= tp!1716323 e!3744584)))

(declare-fun b!6144723 () Bool)

(declare-fun tp!1716539 () Bool)

(declare-fun tp!1716538 () Bool)

(assert (=> b!6144723 (= e!3744584 (and tp!1716539 tp!1716538))))

(declare-fun b!6144721 () Bool)

(declare-fun tp!1716536 () Bool)

(declare-fun tp!1716540 () Bool)

(assert (=> b!6144721 (= e!3744584 (and tp!1716536 tp!1716540))))

(declare-fun b!6144722 () Bool)

(declare-fun tp!1716537 () Bool)

(assert (=> b!6144722 (= e!3744584 tp!1716537)))

(declare-fun b!6144720 () Bool)

(assert (=> b!6144720 (= e!3744584 tp_is_empty!41427)))

(assert (= (and b!6143657 ((_ is ElementMatch!16087) (regTwo!32687 (regOne!32687 r!7292)))) b!6144720))

(assert (= (and b!6143657 ((_ is Concat!24932) (regTwo!32687 (regOne!32687 r!7292)))) b!6144721))

(assert (= (and b!6143657 ((_ is Star!16087) (regTwo!32687 (regOne!32687 r!7292)))) b!6144722))

(assert (= (and b!6143657 ((_ is Union!16087) (regTwo!32687 (regOne!32687 r!7292)))) b!6144723))

(declare-fun b!6144724 () Bool)

(declare-fun e!3744585 () Bool)

(declare-fun tp!1716541 () Bool)

(assert (=> b!6144724 (= e!3744585 (and tp_is_empty!41427 tp!1716541))))

(assert (=> b!6143671 (= tp!1716339 e!3744585)))

(assert (= (and b!6143671 ((_ is Cons!64437) (t!378042 (t!378042 s!2326)))) b!6144724))

(declare-fun e!3744586 () Bool)

(assert (=> b!6143656 (= tp!1716322 e!3744586)))

(declare-fun b!6144728 () Bool)

(declare-fun tp!1716545 () Bool)

(declare-fun tp!1716544 () Bool)

(assert (=> b!6144728 (= e!3744586 (and tp!1716545 tp!1716544))))

(declare-fun b!6144726 () Bool)

(declare-fun tp!1716542 () Bool)

(declare-fun tp!1716546 () Bool)

(assert (=> b!6144726 (= e!3744586 (and tp!1716542 tp!1716546))))

(declare-fun b!6144727 () Bool)

(declare-fun tp!1716543 () Bool)

(assert (=> b!6144727 (= e!3744586 tp!1716543)))

(declare-fun b!6144725 () Bool)

(assert (=> b!6144725 (= e!3744586 tp_is_empty!41427)))

(assert (= (and b!6143656 ((_ is ElementMatch!16087) (reg!16416 (regOne!32687 r!7292)))) b!6144725))

(assert (= (and b!6143656 ((_ is Concat!24932) (reg!16416 (regOne!32687 r!7292)))) b!6144726))

(assert (= (and b!6143656 ((_ is Star!16087) (reg!16416 (regOne!32687 r!7292)))) b!6144727))

(assert (= (and b!6143656 ((_ is Union!16087) (reg!16416 (regOne!32687 r!7292)))) b!6144728))

(declare-fun e!3744587 () Bool)

(assert (=> b!6143655 (= tp!1716321 e!3744587)))

(declare-fun b!6144732 () Bool)

(declare-fun tp!1716550 () Bool)

(declare-fun tp!1716549 () Bool)

(assert (=> b!6144732 (= e!3744587 (and tp!1716550 tp!1716549))))

(declare-fun b!6144730 () Bool)

(declare-fun tp!1716547 () Bool)

(declare-fun tp!1716551 () Bool)

(assert (=> b!6144730 (= e!3744587 (and tp!1716547 tp!1716551))))

(declare-fun b!6144731 () Bool)

(declare-fun tp!1716548 () Bool)

(assert (=> b!6144731 (= e!3744587 tp!1716548)))

(declare-fun b!6144729 () Bool)

(assert (=> b!6144729 (= e!3744587 tp_is_empty!41427)))

(assert (= (and b!6143655 ((_ is ElementMatch!16087) (regOne!32686 (regOne!32687 r!7292)))) b!6144729))

(assert (= (and b!6143655 ((_ is Concat!24932) (regOne!32686 (regOne!32687 r!7292)))) b!6144730))

(assert (= (and b!6143655 ((_ is Star!16087) (regOne!32686 (regOne!32687 r!7292)))) b!6144731))

(assert (= (and b!6143655 ((_ is Union!16087) (regOne!32686 (regOne!32687 r!7292)))) b!6144732))

(declare-fun e!3744588 () Bool)

(assert (=> b!6143655 (= tp!1716325 e!3744588)))

(declare-fun b!6144736 () Bool)

(declare-fun tp!1716555 () Bool)

(declare-fun tp!1716554 () Bool)

(assert (=> b!6144736 (= e!3744588 (and tp!1716555 tp!1716554))))

(declare-fun b!6144734 () Bool)

(declare-fun tp!1716552 () Bool)

(declare-fun tp!1716556 () Bool)

(assert (=> b!6144734 (= e!3744588 (and tp!1716552 tp!1716556))))

(declare-fun b!6144735 () Bool)

(declare-fun tp!1716553 () Bool)

(assert (=> b!6144735 (= e!3744588 tp!1716553)))

(declare-fun b!6144733 () Bool)

(assert (=> b!6144733 (= e!3744588 tp_is_empty!41427)))

(assert (= (and b!6143655 ((_ is ElementMatch!16087) (regTwo!32686 (regOne!32687 r!7292)))) b!6144733))

(assert (= (and b!6143655 ((_ is Concat!24932) (regTwo!32686 (regOne!32687 r!7292)))) b!6144734))

(assert (= (and b!6143655 ((_ is Star!16087) (regTwo!32686 (regOne!32687 r!7292)))) b!6144735))

(assert (= (and b!6143655 ((_ is Union!16087) (regTwo!32686 (regOne!32687 r!7292)))) b!6144736))

(declare-fun e!3744589 () Bool)

(assert (=> b!6143642 (= tp!1716307 e!3744589)))

(declare-fun b!6144740 () Bool)

(declare-fun tp!1716560 () Bool)

(declare-fun tp!1716559 () Bool)

(assert (=> b!6144740 (= e!3744589 (and tp!1716560 tp!1716559))))

(declare-fun b!6144738 () Bool)

(declare-fun tp!1716557 () Bool)

(declare-fun tp!1716561 () Bool)

(assert (=> b!6144738 (= e!3744589 (and tp!1716557 tp!1716561))))

(declare-fun b!6144739 () Bool)

(declare-fun tp!1716558 () Bool)

(assert (=> b!6144739 (= e!3744589 tp!1716558)))

(declare-fun b!6144737 () Bool)

(assert (=> b!6144737 (= e!3744589 tp_is_empty!41427)))

(assert (= (and b!6143642 ((_ is ElementMatch!16087) (h!70884 (exprs!5971 (h!70886 zl!343))))) b!6144737))

(assert (= (and b!6143642 ((_ is Concat!24932) (h!70884 (exprs!5971 (h!70886 zl!343))))) b!6144738))

(assert (= (and b!6143642 ((_ is Star!16087) (h!70884 (exprs!5971 (h!70886 zl!343))))) b!6144739))

(assert (= (and b!6143642 ((_ is Union!16087) (h!70884 (exprs!5971 (h!70886 zl!343))))) b!6144740))

(declare-fun b!6144741 () Bool)

(declare-fun e!3744590 () Bool)

(declare-fun tp!1716562 () Bool)

(declare-fun tp!1716563 () Bool)

(assert (=> b!6144741 (= e!3744590 (and tp!1716562 tp!1716563))))

(assert (=> b!6143642 (= tp!1716308 e!3744590)))

(assert (= (and b!6143642 ((_ is Cons!64436) (t!378041 (exprs!5971 (h!70886 zl!343))))) b!6144741))

(declare-fun b!6144743 () Bool)

(declare-fun e!3744592 () Bool)

(declare-fun tp!1716564 () Bool)

(assert (=> b!6144743 (= e!3744592 tp!1716564)))

(declare-fun tp!1716565 () Bool)

(declare-fun b!6144742 () Bool)

(declare-fun e!3744591 () Bool)

(assert (=> b!6144742 (= e!3744591 (and (inv!83464 (h!70886 (t!378043 (t!378043 zl!343)))) e!3744592 tp!1716565))))

(assert (=> b!6143636 (= tp!1716302 e!3744591)))

(assert (= b!6144742 b!6144743))

(assert (= (and b!6143636 ((_ is Cons!64438) (t!378043 (t!378043 zl!343)))) b!6144742))

(declare-fun m!6985558 () Bool)

(assert (=> b!6144742 m!6985558))

(declare-fun condSetEmpty!41578 () Bool)

(assert (=> setNonEmpty!41568 (= condSetEmpty!41578 (= setRest!41568 ((as const (Array Context!10942 Bool)) false)))))

(declare-fun setRes!41578 () Bool)

(assert (=> setNonEmpty!41568 (= tp!1716335 setRes!41578)))

(declare-fun setIsEmpty!41578 () Bool)

(assert (=> setIsEmpty!41578 setRes!41578))

(declare-fun setElem!41578 () Context!10942)

(declare-fun setNonEmpty!41578 () Bool)

(declare-fun e!3744593 () Bool)

(declare-fun tp!1716566 () Bool)

(assert (=> setNonEmpty!41578 (= setRes!41578 (and tp!1716566 (inv!83464 setElem!41578) e!3744593))))

(declare-fun setRest!41578 () (InoxSet Context!10942))

(assert (=> setNonEmpty!41578 (= setRest!41568 ((_ map or) (store ((as const (Array Context!10942 Bool)) false) setElem!41578 true) setRest!41578))))

(declare-fun b!6144744 () Bool)

(declare-fun tp!1716567 () Bool)

(assert (=> b!6144744 (= e!3744593 tp!1716567)))

(assert (= (and setNonEmpty!41568 condSetEmpty!41578) setIsEmpty!41578))

(assert (= (and setNonEmpty!41568 (not condSetEmpty!41578)) setNonEmpty!41578))

(assert (= setNonEmpty!41578 b!6144744))

(declare-fun m!6985560 () Bool)

(assert (=> setNonEmpty!41578 m!6985560))

(declare-fun e!3744594 () Bool)

(assert (=> b!6143681 (= tp!1716350 e!3744594)))

(declare-fun b!6144748 () Bool)

(declare-fun tp!1716571 () Bool)

(declare-fun tp!1716570 () Bool)

(assert (=> b!6144748 (= e!3744594 (and tp!1716571 tp!1716570))))

(declare-fun b!6144746 () Bool)

(declare-fun tp!1716568 () Bool)

(declare-fun tp!1716572 () Bool)

(assert (=> b!6144746 (= e!3744594 (and tp!1716568 tp!1716572))))

(declare-fun b!6144747 () Bool)

(declare-fun tp!1716569 () Bool)

(assert (=> b!6144747 (= e!3744594 tp!1716569)))

(declare-fun b!6144745 () Bool)

(assert (=> b!6144745 (= e!3744594 tp_is_empty!41427)))

(assert (= (and b!6143681 ((_ is ElementMatch!16087) (regOne!32686 (regTwo!32686 r!7292)))) b!6144745))

(assert (= (and b!6143681 ((_ is Concat!24932) (regOne!32686 (regTwo!32686 r!7292)))) b!6144746))

(assert (= (and b!6143681 ((_ is Star!16087) (regOne!32686 (regTwo!32686 r!7292)))) b!6144747))

(assert (= (and b!6143681 ((_ is Union!16087) (regOne!32686 (regTwo!32686 r!7292)))) b!6144748))

(declare-fun e!3744595 () Bool)

(assert (=> b!6143681 (= tp!1716354 e!3744595)))

(declare-fun b!6144752 () Bool)

(declare-fun tp!1716576 () Bool)

(declare-fun tp!1716575 () Bool)

(assert (=> b!6144752 (= e!3744595 (and tp!1716576 tp!1716575))))

(declare-fun b!6144750 () Bool)

(declare-fun tp!1716573 () Bool)

(declare-fun tp!1716577 () Bool)

(assert (=> b!6144750 (= e!3744595 (and tp!1716573 tp!1716577))))

(declare-fun b!6144751 () Bool)

(declare-fun tp!1716574 () Bool)

(assert (=> b!6144751 (= e!3744595 tp!1716574)))

(declare-fun b!6144749 () Bool)

(assert (=> b!6144749 (= e!3744595 tp_is_empty!41427)))

(assert (= (and b!6143681 ((_ is ElementMatch!16087) (regTwo!32686 (regTwo!32686 r!7292)))) b!6144749))

(assert (= (and b!6143681 ((_ is Concat!24932) (regTwo!32686 (regTwo!32686 r!7292)))) b!6144750))

(assert (= (and b!6143681 ((_ is Star!16087) (regTwo!32686 (regTwo!32686 r!7292)))) b!6144751))

(assert (= (and b!6143681 ((_ is Union!16087) (regTwo!32686 (regTwo!32686 r!7292)))) b!6144752))

(declare-fun b!6144753 () Bool)

(declare-fun e!3744596 () Bool)

(declare-fun tp!1716578 () Bool)

(declare-fun tp!1716579 () Bool)

(assert (=> b!6144753 (= e!3744596 (and tp!1716578 tp!1716579))))

(assert (=> b!6143637 (= tp!1716301 e!3744596)))

(assert (= (and b!6143637 ((_ is Cons!64436) (exprs!5971 (h!70886 (t!378043 zl!343))))) b!6144753))

(declare-fun b!6144754 () Bool)

(declare-fun e!3744597 () Bool)

(declare-fun tp!1716580 () Bool)

(declare-fun tp!1716581 () Bool)

(assert (=> b!6144754 (= e!3744597 (and tp!1716580 tp!1716581))))

(assert (=> b!6143666 (= tp!1716336 e!3744597)))

(assert (= (and b!6143666 ((_ is Cons!64436) (exprs!5971 setElem!41568))) b!6144754))

(declare-fun e!3744598 () Bool)

(assert (=> b!6143674 (= tp!1716341 e!3744598)))

(declare-fun b!6144758 () Bool)

(declare-fun tp!1716585 () Bool)

(declare-fun tp!1716584 () Bool)

(assert (=> b!6144758 (= e!3744598 (and tp!1716585 tp!1716584))))

(declare-fun b!6144756 () Bool)

(declare-fun tp!1716582 () Bool)

(declare-fun tp!1716586 () Bool)

(assert (=> b!6144756 (= e!3744598 (and tp!1716582 tp!1716586))))

(declare-fun b!6144757 () Bool)

(declare-fun tp!1716583 () Bool)

(assert (=> b!6144757 (= e!3744598 tp!1716583)))

(declare-fun b!6144755 () Bool)

(assert (=> b!6144755 (= e!3744598 tp_is_empty!41427)))

(assert (= (and b!6143674 ((_ is ElementMatch!16087) (reg!16416 (reg!16416 r!7292)))) b!6144755))

(assert (= (and b!6143674 ((_ is Concat!24932) (reg!16416 (reg!16416 r!7292)))) b!6144756))

(assert (= (and b!6143674 ((_ is Star!16087) (reg!16416 (reg!16416 r!7292)))) b!6144757))

(assert (= (and b!6143674 ((_ is Union!16087) (reg!16416 (reg!16416 r!7292)))) b!6144758))

(declare-fun e!3744599 () Bool)

(assert (=> b!6143659 (= tp!1716326 e!3744599)))

(declare-fun b!6144762 () Bool)

(declare-fun tp!1716590 () Bool)

(declare-fun tp!1716589 () Bool)

(assert (=> b!6144762 (= e!3744599 (and tp!1716590 tp!1716589))))

(declare-fun b!6144760 () Bool)

(declare-fun tp!1716587 () Bool)

(declare-fun tp!1716591 () Bool)

(assert (=> b!6144760 (= e!3744599 (and tp!1716587 tp!1716591))))

(declare-fun b!6144761 () Bool)

(declare-fun tp!1716588 () Bool)

(assert (=> b!6144761 (= e!3744599 tp!1716588)))

(declare-fun b!6144759 () Bool)

(assert (=> b!6144759 (= e!3744599 tp_is_empty!41427)))

(assert (= (and b!6143659 ((_ is ElementMatch!16087) (regOne!32686 (regTwo!32687 r!7292)))) b!6144759))

(assert (= (and b!6143659 ((_ is Concat!24932) (regOne!32686 (regTwo!32687 r!7292)))) b!6144760))

(assert (= (and b!6143659 ((_ is Star!16087) (regOne!32686 (regTwo!32687 r!7292)))) b!6144761))

(assert (= (and b!6143659 ((_ is Union!16087) (regOne!32686 (regTwo!32687 r!7292)))) b!6144762))

(declare-fun e!3744600 () Bool)

(assert (=> b!6143659 (= tp!1716330 e!3744600)))

(declare-fun b!6144766 () Bool)

(declare-fun tp!1716595 () Bool)

(declare-fun tp!1716594 () Bool)

(assert (=> b!6144766 (= e!3744600 (and tp!1716595 tp!1716594))))

(declare-fun b!6144764 () Bool)

(declare-fun tp!1716592 () Bool)

(declare-fun tp!1716596 () Bool)

(assert (=> b!6144764 (= e!3744600 (and tp!1716592 tp!1716596))))

(declare-fun b!6144765 () Bool)

(declare-fun tp!1716593 () Bool)

(assert (=> b!6144765 (= e!3744600 tp!1716593)))

(declare-fun b!6144763 () Bool)

(assert (=> b!6144763 (= e!3744600 tp_is_empty!41427)))

(assert (= (and b!6143659 ((_ is ElementMatch!16087) (regTwo!32686 (regTwo!32687 r!7292)))) b!6144763))

(assert (= (and b!6143659 ((_ is Concat!24932) (regTwo!32686 (regTwo!32687 r!7292)))) b!6144764))

(assert (= (and b!6143659 ((_ is Star!16087) (regTwo!32686 (regTwo!32687 r!7292)))) b!6144765))

(assert (= (and b!6143659 ((_ is Union!16087) (regTwo!32686 (regTwo!32687 r!7292)))) b!6144766))

(declare-fun e!3744601 () Bool)

(assert (=> b!6143683 (= tp!1716353 e!3744601)))

(declare-fun b!6144770 () Bool)

(declare-fun tp!1716600 () Bool)

(declare-fun tp!1716599 () Bool)

(assert (=> b!6144770 (= e!3744601 (and tp!1716600 tp!1716599))))

(declare-fun b!6144768 () Bool)

(declare-fun tp!1716597 () Bool)

(declare-fun tp!1716601 () Bool)

(assert (=> b!6144768 (= e!3744601 (and tp!1716597 tp!1716601))))

(declare-fun b!6144769 () Bool)

(declare-fun tp!1716598 () Bool)

(assert (=> b!6144769 (= e!3744601 tp!1716598)))

(declare-fun b!6144767 () Bool)

(assert (=> b!6144767 (= e!3744601 tp_is_empty!41427)))

(assert (= (and b!6143683 ((_ is ElementMatch!16087) (regOne!32687 (regTwo!32686 r!7292)))) b!6144767))

(assert (= (and b!6143683 ((_ is Concat!24932) (regOne!32687 (regTwo!32686 r!7292)))) b!6144768))

(assert (= (and b!6143683 ((_ is Star!16087) (regOne!32687 (regTwo!32686 r!7292)))) b!6144769))

(assert (= (and b!6143683 ((_ is Union!16087) (regOne!32687 (regTwo!32686 r!7292)))) b!6144770))

(declare-fun e!3744602 () Bool)

(assert (=> b!6143683 (= tp!1716352 e!3744602)))

(declare-fun b!6144774 () Bool)

(declare-fun tp!1716605 () Bool)

(declare-fun tp!1716604 () Bool)

(assert (=> b!6144774 (= e!3744602 (and tp!1716605 tp!1716604))))

(declare-fun b!6144772 () Bool)

(declare-fun tp!1716602 () Bool)

(declare-fun tp!1716606 () Bool)

(assert (=> b!6144772 (= e!3744602 (and tp!1716602 tp!1716606))))

(declare-fun b!6144773 () Bool)

(declare-fun tp!1716603 () Bool)

(assert (=> b!6144773 (= e!3744602 tp!1716603)))

(declare-fun b!6144771 () Bool)

(assert (=> b!6144771 (= e!3744602 tp_is_empty!41427)))

(assert (= (and b!6143683 ((_ is ElementMatch!16087) (regTwo!32687 (regTwo!32686 r!7292)))) b!6144771))

(assert (= (and b!6143683 ((_ is Concat!24932) (regTwo!32687 (regTwo!32686 r!7292)))) b!6144772))

(assert (= (and b!6143683 ((_ is Star!16087) (regTwo!32687 (regTwo!32686 r!7292)))) b!6144773))

(assert (= (and b!6143683 ((_ is Union!16087) (regTwo!32687 (regTwo!32686 r!7292)))) b!6144774))

(declare-fun e!3744603 () Bool)

(assert (=> b!6143682 (= tp!1716351 e!3744603)))

(declare-fun b!6144778 () Bool)

(declare-fun tp!1716610 () Bool)

(declare-fun tp!1716609 () Bool)

(assert (=> b!6144778 (= e!3744603 (and tp!1716610 tp!1716609))))

(declare-fun b!6144776 () Bool)

(declare-fun tp!1716607 () Bool)

(declare-fun tp!1716611 () Bool)

(assert (=> b!6144776 (= e!3744603 (and tp!1716607 tp!1716611))))

(declare-fun b!6144777 () Bool)

(declare-fun tp!1716608 () Bool)

(assert (=> b!6144777 (= e!3744603 tp!1716608)))

(declare-fun b!6144775 () Bool)

(assert (=> b!6144775 (= e!3744603 tp_is_empty!41427)))

(assert (= (and b!6143682 ((_ is ElementMatch!16087) (reg!16416 (regTwo!32686 r!7292)))) b!6144775))

(assert (= (and b!6143682 ((_ is Concat!24932) (reg!16416 (regTwo!32686 r!7292)))) b!6144776))

(assert (= (and b!6143682 ((_ is Star!16087) (reg!16416 (regTwo!32686 r!7292)))) b!6144777))

(assert (= (and b!6143682 ((_ is Union!16087) (reg!16416 (regTwo!32686 r!7292)))) b!6144778))

(declare-fun e!3744604 () Bool)

(assert (=> b!6143643 (= tp!1716309 e!3744604)))

(declare-fun b!6144782 () Bool)

(declare-fun tp!1716615 () Bool)

(declare-fun tp!1716614 () Bool)

(assert (=> b!6144782 (= e!3744604 (and tp!1716615 tp!1716614))))

(declare-fun b!6144780 () Bool)

(declare-fun tp!1716612 () Bool)

(declare-fun tp!1716616 () Bool)

(assert (=> b!6144780 (= e!3744604 (and tp!1716612 tp!1716616))))

(declare-fun b!6144781 () Bool)

(declare-fun tp!1716613 () Bool)

(assert (=> b!6144781 (= e!3744604 tp!1716613)))

(declare-fun b!6144779 () Bool)

(assert (=> b!6144779 (= e!3744604 tp_is_empty!41427)))

(assert (= (and b!6143643 ((_ is ElementMatch!16087) (h!70884 (exprs!5971 setElem!41562)))) b!6144779))

(assert (= (and b!6143643 ((_ is Concat!24932) (h!70884 (exprs!5971 setElem!41562)))) b!6144780))

(assert (= (and b!6143643 ((_ is Star!16087) (h!70884 (exprs!5971 setElem!41562)))) b!6144781))

(assert (= (and b!6143643 ((_ is Union!16087) (h!70884 (exprs!5971 setElem!41562)))) b!6144782))

(declare-fun b!6144783 () Bool)

(declare-fun e!3744605 () Bool)

(declare-fun tp!1716617 () Bool)

(declare-fun tp!1716618 () Bool)

(assert (=> b!6144783 (= e!3744605 (and tp!1716617 tp!1716618))))

(assert (=> b!6143643 (= tp!1716310 e!3744605)))

(assert (= (and b!6143643 ((_ is Cons!64436) (t!378041 (exprs!5971 setElem!41562)))) b!6144783))

(declare-fun e!3744606 () Bool)

(assert (=> b!6143673 (= tp!1716340 e!3744606)))

(declare-fun b!6144787 () Bool)

(declare-fun tp!1716622 () Bool)

(declare-fun tp!1716621 () Bool)

(assert (=> b!6144787 (= e!3744606 (and tp!1716622 tp!1716621))))

(declare-fun b!6144785 () Bool)

(declare-fun tp!1716619 () Bool)

(declare-fun tp!1716623 () Bool)

(assert (=> b!6144785 (= e!3744606 (and tp!1716619 tp!1716623))))

(declare-fun b!6144786 () Bool)

(declare-fun tp!1716620 () Bool)

(assert (=> b!6144786 (= e!3744606 tp!1716620)))

(declare-fun b!6144784 () Bool)

(assert (=> b!6144784 (= e!3744606 tp_is_empty!41427)))

(assert (= (and b!6143673 ((_ is ElementMatch!16087) (regOne!32686 (reg!16416 r!7292)))) b!6144784))

(assert (= (and b!6143673 ((_ is Concat!24932) (regOne!32686 (reg!16416 r!7292)))) b!6144785))

(assert (= (and b!6143673 ((_ is Star!16087) (regOne!32686 (reg!16416 r!7292)))) b!6144786))

(assert (= (and b!6143673 ((_ is Union!16087) (regOne!32686 (reg!16416 r!7292)))) b!6144787))

(declare-fun e!3744607 () Bool)

(assert (=> b!6143673 (= tp!1716344 e!3744607)))

(declare-fun b!6144791 () Bool)

(declare-fun tp!1716627 () Bool)

(declare-fun tp!1716626 () Bool)

(assert (=> b!6144791 (= e!3744607 (and tp!1716627 tp!1716626))))

(declare-fun b!6144789 () Bool)

(declare-fun tp!1716624 () Bool)

(declare-fun tp!1716628 () Bool)

(assert (=> b!6144789 (= e!3744607 (and tp!1716624 tp!1716628))))

(declare-fun b!6144790 () Bool)

(declare-fun tp!1716625 () Bool)

(assert (=> b!6144790 (= e!3744607 tp!1716625)))

(declare-fun b!6144788 () Bool)

(assert (=> b!6144788 (= e!3744607 tp_is_empty!41427)))

(assert (= (and b!6143673 ((_ is ElementMatch!16087) (regTwo!32686 (reg!16416 r!7292)))) b!6144788))

(assert (= (and b!6143673 ((_ is Concat!24932) (regTwo!32686 (reg!16416 r!7292)))) b!6144789))

(assert (= (and b!6143673 ((_ is Star!16087) (regTwo!32686 (reg!16416 r!7292)))) b!6144790))

(assert (= (and b!6143673 ((_ is Union!16087) (regTwo!32686 (reg!16416 r!7292)))) b!6144791))

(declare-fun e!3744608 () Bool)

(assert (=> b!6143661 (= tp!1716329 e!3744608)))

(declare-fun b!6144795 () Bool)

(declare-fun tp!1716632 () Bool)

(declare-fun tp!1716631 () Bool)

(assert (=> b!6144795 (= e!3744608 (and tp!1716632 tp!1716631))))

(declare-fun b!6144793 () Bool)

(declare-fun tp!1716629 () Bool)

(declare-fun tp!1716633 () Bool)

(assert (=> b!6144793 (= e!3744608 (and tp!1716629 tp!1716633))))

(declare-fun b!6144794 () Bool)

(declare-fun tp!1716630 () Bool)

(assert (=> b!6144794 (= e!3744608 tp!1716630)))

(declare-fun b!6144792 () Bool)

(assert (=> b!6144792 (= e!3744608 tp_is_empty!41427)))

(assert (= (and b!6143661 ((_ is ElementMatch!16087) (regOne!32687 (regTwo!32687 r!7292)))) b!6144792))

(assert (= (and b!6143661 ((_ is Concat!24932) (regOne!32687 (regTwo!32687 r!7292)))) b!6144793))

(assert (= (and b!6143661 ((_ is Star!16087) (regOne!32687 (regTwo!32687 r!7292)))) b!6144794))

(assert (= (and b!6143661 ((_ is Union!16087) (regOne!32687 (regTwo!32687 r!7292)))) b!6144795))

(declare-fun e!3744609 () Bool)

(assert (=> b!6143661 (= tp!1716328 e!3744609)))

(declare-fun b!6144799 () Bool)

(declare-fun tp!1716637 () Bool)

(declare-fun tp!1716636 () Bool)

(assert (=> b!6144799 (= e!3744609 (and tp!1716637 tp!1716636))))

(declare-fun b!6144797 () Bool)

(declare-fun tp!1716634 () Bool)

(declare-fun tp!1716638 () Bool)

(assert (=> b!6144797 (= e!3744609 (and tp!1716634 tp!1716638))))

(declare-fun b!6144798 () Bool)

(declare-fun tp!1716635 () Bool)

(assert (=> b!6144798 (= e!3744609 tp!1716635)))

(declare-fun b!6144796 () Bool)

(assert (=> b!6144796 (= e!3744609 tp_is_empty!41427)))

(assert (= (and b!6143661 ((_ is ElementMatch!16087) (regTwo!32687 (regTwo!32687 r!7292)))) b!6144796))

(assert (= (and b!6143661 ((_ is Concat!24932) (regTwo!32687 (regTwo!32687 r!7292)))) b!6144797))

(assert (= (and b!6143661 ((_ is Star!16087) (regTwo!32687 (regTwo!32687 r!7292)))) b!6144798))

(assert (= (and b!6143661 ((_ is Union!16087) (regTwo!32687 (regTwo!32687 r!7292)))) b!6144799))

(declare-fun e!3744610 () Bool)

(assert (=> b!6143675 (= tp!1716343 e!3744610)))

(declare-fun b!6144803 () Bool)

(declare-fun tp!1716642 () Bool)

(declare-fun tp!1716641 () Bool)

(assert (=> b!6144803 (= e!3744610 (and tp!1716642 tp!1716641))))

(declare-fun b!6144801 () Bool)

(declare-fun tp!1716639 () Bool)

(declare-fun tp!1716643 () Bool)

(assert (=> b!6144801 (= e!3744610 (and tp!1716639 tp!1716643))))

(declare-fun b!6144802 () Bool)

(declare-fun tp!1716640 () Bool)

(assert (=> b!6144802 (= e!3744610 tp!1716640)))

(declare-fun b!6144800 () Bool)

(assert (=> b!6144800 (= e!3744610 tp_is_empty!41427)))

(assert (= (and b!6143675 ((_ is ElementMatch!16087) (regOne!32687 (reg!16416 r!7292)))) b!6144800))

(assert (= (and b!6143675 ((_ is Concat!24932) (regOne!32687 (reg!16416 r!7292)))) b!6144801))

(assert (= (and b!6143675 ((_ is Star!16087) (regOne!32687 (reg!16416 r!7292)))) b!6144802))

(assert (= (and b!6143675 ((_ is Union!16087) (regOne!32687 (reg!16416 r!7292)))) b!6144803))

(declare-fun e!3744611 () Bool)

(assert (=> b!6143675 (= tp!1716342 e!3744611)))

(declare-fun b!6144807 () Bool)

(declare-fun tp!1716647 () Bool)

(declare-fun tp!1716646 () Bool)

(assert (=> b!6144807 (= e!3744611 (and tp!1716647 tp!1716646))))

(declare-fun b!6144805 () Bool)

(declare-fun tp!1716644 () Bool)

(declare-fun tp!1716648 () Bool)

(assert (=> b!6144805 (= e!3744611 (and tp!1716644 tp!1716648))))

(declare-fun b!6144806 () Bool)

(declare-fun tp!1716645 () Bool)

(assert (=> b!6144806 (= e!3744611 tp!1716645)))

(declare-fun b!6144804 () Bool)

(assert (=> b!6144804 (= e!3744611 tp_is_empty!41427)))

(assert (= (and b!6143675 ((_ is ElementMatch!16087) (regTwo!32687 (reg!16416 r!7292)))) b!6144804))

(assert (= (and b!6143675 ((_ is Concat!24932) (regTwo!32687 (reg!16416 r!7292)))) b!6144805))

(assert (= (and b!6143675 ((_ is Star!16087) (regTwo!32687 (reg!16416 r!7292)))) b!6144806))

(assert (= (and b!6143675 ((_ is Union!16087) (regTwo!32687 (reg!16416 r!7292)))) b!6144807))

(declare-fun e!3744612 () Bool)

(assert (=> b!6143660 (= tp!1716327 e!3744612)))

(declare-fun b!6144811 () Bool)

(declare-fun tp!1716652 () Bool)

(declare-fun tp!1716651 () Bool)

(assert (=> b!6144811 (= e!3744612 (and tp!1716652 tp!1716651))))

(declare-fun b!6144809 () Bool)

(declare-fun tp!1716649 () Bool)

(declare-fun tp!1716653 () Bool)

(assert (=> b!6144809 (= e!3744612 (and tp!1716649 tp!1716653))))

(declare-fun b!6144810 () Bool)

(declare-fun tp!1716650 () Bool)

(assert (=> b!6144810 (= e!3744612 tp!1716650)))

(declare-fun b!6144808 () Bool)

(assert (=> b!6144808 (= e!3744612 tp_is_empty!41427)))

(assert (= (and b!6143660 ((_ is ElementMatch!16087) (reg!16416 (regTwo!32687 r!7292)))) b!6144808))

(assert (= (and b!6143660 ((_ is Concat!24932) (reg!16416 (regTwo!32687 r!7292)))) b!6144809))

(assert (= (and b!6143660 ((_ is Star!16087) (reg!16416 (regTwo!32687 r!7292)))) b!6144810))

(assert (= (and b!6143660 ((_ is Union!16087) (reg!16416 (regTwo!32687 r!7292)))) b!6144811))

(declare-fun e!3744613 () Bool)

(assert (=> b!6143679 (= tp!1716348 e!3744613)))

(declare-fun b!6144815 () Bool)

(declare-fun tp!1716657 () Bool)

(declare-fun tp!1716656 () Bool)

(assert (=> b!6144815 (= e!3744613 (and tp!1716657 tp!1716656))))

(declare-fun b!6144813 () Bool)

(declare-fun tp!1716654 () Bool)

(declare-fun tp!1716658 () Bool)

(assert (=> b!6144813 (= e!3744613 (and tp!1716654 tp!1716658))))

(declare-fun b!6144814 () Bool)

(declare-fun tp!1716655 () Bool)

(assert (=> b!6144814 (= e!3744613 tp!1716655)))

(declare-fun b!6144812 () Bool)

(assert (=> b!6144812 (= e!3744613 tp_is_empty!41427)))

(assert (= (and b!6143679 ((_ is ElementMatch!16087) (regOne!32687 (regOne!32686 r!7292)))) b!6144812))

(assert (= (and b!6143679 ((_ is Concat!24932) (regOne!32687 (regOne!32686 r!7292)))) b!6144813))

(assert (= (and b!6143679 ((_ is Star!16087) (regOne!32687 (regOne!32686 r!7292)))) b!6144814))

(assert (= (and b!6143679 ((_ is Union!16087) (regOne!32687 (regOne!32686 r!7292)))) b!6144815))

(declare-fun e!3744614 () Bool)

(assert (=> b!6143679 (= tp!1716347 e!3744614)))

(declare-fun b!6144819 () Bool)

(declare-fun tp!1716662 () Bool)

(declare-fun tp!1716661 () Bool)

(assert (=> b!6144819 (= e!3744614 (and tp!1716662 tp!1716661))))

(declare-fun b!6144817 () Bool)

(declare-fun tp!1716659 () Bool)

(declare-fun tp!1716663 () Bool)

(assert (=> b!6144817 (= e!3744614 (and tp!1716659 tp!1716663))))

(declare-fun b!6144818 () Bool)

(declare-fun tp!1716660 () Bool)

(assert (=> b!6144818 (= e!3744614 tp!1716660)))

(declare-fun b!6144816 () Bool)

(assert (=> b!6144816 (= e!3744614 tp_is_empty!41427)))

(assert (= (and b!6143679 ((_ is ElementMatch!16087) (regTwo!32687 (regOne!32686 r!7292)))) b!6144816))

(assert (= (and b!6143679 ((_ is Concat!24932) (regTwo!32687 (regOne!32686 r!7292)))) b!6144817))

(assert (= (and b!6143679 ((_ is Star!16087) (regTwo!32687 (regOne!32686 r!7292)))) b!6144818))

(assert (= (and b!6143679 ((_ is Union!16087) (regTwo!32687 (regOne!32686 r!7292)))) b!6144819))

(declare-fun e!3744615 () Bool)

(assert (=> b!6143678 (= tp!1716346 e!3744615)))

(declare-fun b!6144823 () Bool)

(declare-fun tp!1716667 () Bool)

(declare-fun tp!1716666 () Bool)

(assert (=> b!6144823 (= e!3744615 (and tp!1716667 tp!1716666))))

(declare-fun b!6144821 () Bool)

(declare-fun tp!1716664 () Bool)

(declare-fun tp!1716668 () Bool)

(assert (=> b!6144821 (= e!3744615 (and tp!1716664 tp!1716668))))

(declare-fun b!6144822 () Bool)

(declare-fun tp!1716665 () Bool)

(assert (=> b!6144822 (= e!3744615 tp!1716665)))

(declare-fun b!6144820 () Bool)

(assert (=> b!6144820 (= e!3744615 tp_is_empty!41427)))

(assert (= (and b!6143678 ((_ is ElementMatch!16087) (reg!16416 (regOne!32686 r!7292)))) b!6144820))

(assert (= (and b!6143678 ((_ is Concat!24932) (reg!16416 (regOne!32686 r!7292)))) b!6144821))

(assert (= (and b!6143678 ((_ is Star!16087) (reg!16416 (regOne!32686 r!7292)))) b!6144822))

(assert (= (and b!6143678 ((_ is Union!16087) (reg!16416 (regOne!32686 r!7292)))) b!6144823))

(declare-fun e!3744616 () Bool)

(assert (=> b!6143677 (= tp!1716345 e!3744616)))

(declare-fun b!6144827 () Bool)

(declare-fun tp!1716672 () Bool)

(declare-fun tp!1716671 () Bool)

(assert (=> b!6144827 (= e!3744616 (and tp!1716672 tp!1716671))))

(declare-fun b!6144825 () Bool)

(declare-fun tp!1716669 () Bool)

(declare-fun tp!1716673 () Bool)

(assert (=> b!6144825 (= e!3744616 (and tp!1716669 tp!1716673))))

(declare-fun b!6144826 () Bool)

(declare-fun tp!1716670 () Bool)

(assert (=> b!6144826 (= e!3744616 tp!1716670)))

(declare-fun b!6144824 () Bool)

(assert (=> b!6144824 (= e!3744616 tp_is_empty!41427)))

(assert (= (and b!6143677 ((_ is ElementMatch!16087) (regOne!32686 (regOne!32686 r!7292)))) b!6144824))

(assert (= (and b!6143677 ((_ is Concat!24932) (regOne!32686 (regOne!32686 r!7292)))) b!6144825))

(assert (= (and b!6143677 ((_ is Star!16087) (regOne!32686 (regOne!32686 r!7292)))) b!6144826))

(assert (= (and b!6143677 ((_ is Union!16087) (regOne!32686 (regOne!32686 r!7292)))) b!6144827))

(declare-fun e!3744617 () Bool)

(assert (=> b!6143677 (= tp!1716349 e!3744617)))

(declare-fun b!6144831 () Bool)

(declare-fun tp!1716677 () Bool)

(declare-fun tp!1716676 () Bool)

(assert (=> b!6144831 (= e!3744617 (and tp!1716677 tp!1716676))))

(declare-fun b!6144829 () Bool)

(declare-fun tp!1716674 () Bool)

(declare-fun tp!1716678 () Bool)

(assert (=> b!6144829 (= e!3744617 (and tp!1716674 tp!1716678))))

(declare-fun b!6144830 () Bool)

(declare-fun tp!1716675 () Bool)

(assert (=> b!6144830 (= e!3744617 tp!1716675)))

(declare-fun b!6144828 () Bool)

(assert (=> b!6144828 (= e!3744617 tp_is_empty!41427)))

(assert (= (and b!6143677 ((_ is ElementMatch!16087) (regTwo!32686 (regOne!32686 r!7292)))) b!6144828))

(assert (= (and b!6143677 ((_ is Concat!24932) (regTwo!32686 (regOne!32686 r!7292)))) b!6144829))

(assert (= (and b!6143677 ((_ is Star!16087) (regTwo!32686 (regOne!32686 r!7292)))) b!6144830))

(assert (= (and b!6143677 ((_ is Union!16087) (regTwo!32686 (regOne!32686 r!7292)))) b!6144831))

(declare-fun b_lambda!233873 () Bool)

(assert (= b_lambda!233867 (or d!1924787 b_lambda!233873)))

(declare-fun bs!1523595 () Bool)

(declare-fun d!1925287 () Bool)

(assert (= bs!1523595 (and d!1925287 d!1924787)))

(assert (=> bs!1523595 (= (dynLambda!25396 lambda!334918 (h!70884 (exprs!5971 setElem!41562))) (validRegex!7823 (h!70884 (exprs!5971 setElem!41562))))))

(declare-fun m!6985562 () Bool)

(assert (=> bs!1523595 m!6985562))

(assert (=> b!6144532 d!1925287))

(declare-fun b_lambda!233875 () Bool)

(assert (= b_lambda!233859 (or d!1924739 b_lambda!233875)))

(declare-fun bs!1523596 () Bool)

(declare-fun d!1925289 () Bool)

(assert (= bs!1523596 (and d!1925289 d!1924739)))

(assert (=> bs!1523596 (= (dynLambda!25396 lambda!334907 (h!70884 (exprs!5971 lt!2333388))) (validRegex!7823 (h!70884 (exprs!5971 lt!2333388))))))

(declare-fun m!6985564 () Bool)

(assert (=> bs!1523596 m!6985564))

(assert (=> b!6144394 d!1925289))

(declare-fun b_lambda!233877 () Bool)

(assert (= b_lambda!233865 (or d!1924775 b_lambda!233877)))

(declare-fun bs!1523597 () Bool)

(declare-fun d!1925291 () Bool)

(assert (= bs!1523597 (and d!1925291 d!1924775)))

(assert (=> bs!1523597 (= (dynLambda!25396 lambda!334917 (h!70884 (exprs!5971 (h!70886 zl!343)))) (validRegex!7823 (h!70884 (exprs!5971 (h!70886 zl!343)))))))

(declare-fun m!6985566 () Bool)

(assert (=> bs!1523597 m!6985566))

(assert (=> b!6144512 d!1925291))

(declare-fun b_lambda!233879 () Bool)

(assert (= b_lambda!233869 (or d!1924745 b_lambda!233879)))

(declare-fun bs!1523598 () Bool)

(declare-fun d!1925293 () Bool)

(assert (= bs!1523598 (and d!1925293 d!1924745)))

(assert (=> bs!1523598 (= (dynLambda!25396 lambda!334913 (h!70884 lt!2333461)) (validRegex!7823 (h!70884 lt!2333461)))))

(declare-fun m!6985568 () Bool)

(assert (=> bs!1523598 m!6985568))

(assert (=> b!6144586 d!1925293))

(declare-fun b_lambda!233881 () Bool)

(assert (= b_lambda!233863 (or d!1924743 b_lambda!233881)))

(declare-fun bs!1523599 () Bool)

(declare-fun d!1925295 () Bool)

(assert (= bs!1523599 (and d!1925295 d!1924743)))

(assert (=> bs!1523599 (= (dynLambda!25396 lambda!334910 (h!70884 (unfocusZipperList!1508 zl!343))) (validRegex!7823 (h!70884 (unfocusZipperList!1508 zl!343))))))

(declare-fun m!6985570 () Bool)

(assert (=> bs!1523599 m!6985570))

(assert (=> b!6144467 d!1925295))

(declare-fun b_lambda!233883 () Bool)

(assert (= b_lambda!233861 (or b!6142915 b_lambda!233883)))

(assert (=> d!1925155 d!1924805))

(declare-fun b_lambda!233885 () Bool)

(assert (= b_lambda!233857 (or b!6142915 b_lambda!233885)))

(assert (=> d!1925079 d!1924803))

(declare-fun b_lambda!233887 () Bool)

(assert (= b_lambda!233871 (or d!1924761 b_lambda!233887)))

(declare-fun bs!1523600 () Bool)

(declare-fun d!1925297 () Bool)

(assert (= bs!1523600 (and d!1925297 d!1924761)))

(assert (=> bs!1523600 (= (dynLambda!25396 lambda!334914 (h!70884 (exprs!5971 (h!70886 zl!343)))) (validRegex!7823 (h!70884 (exprs!5971 (h!70886 zl!343)))))))

(assert (=> bs!1523600 m!6985566))

(assert (=> b!6144688 d!1925297))

(check-sat (not b!6144830) (not b!6144456) (not b!6144773) (not b!6144496) (not b!6144563) (not b!6144422) (not b!6144549) (not b!6144477) (not b!6144308) (not bm!510564) (not b!6144806) (not b!6144797) (not bm!510557) (not bm!510540) (not bm!510607) (not b!6144829) (not b!6144807) (not b!6144684) (not bm!510548) (not b!6144266) (not bs!1523598) (not b!6144599) (not bm!510588) (not b!6144673) (not d!1925159) (not d!1925103) (not b!6144823) (not b!6144582) (not b!6144809) (not bm!510590) (not b!6144585) (not b!6144798) (not b!6144764) (not bm!510572) (not bm!510563) (not bm!510604) (not b!6144395) (not bm!510599) (not b!6144587) (not bm!510517) (not d!1925119) (not bm!510538) (not b!6144795) (not bm!510601) (not d!1925067) (not b!6144513) (not b!6144811) (not b_lambda!233823) (not b_lambda!233877) (not b!6144553) (not b!6144815) (not b!6144777) (not b!6144731) (not bm!510592) (not b!6144713) (not b!6144789) (not b!6144478) (not b!6144500) (not d!1925129) (not b!6144719) (not b!6144501) (not d!1925269) (not d!1925071) (not b!6144611) (not d!1925233) (not b!6144810) (not d!1925069) (not b!6144744) (not d!1925175) (not b!6144619) (not b!6144699) (not b!6144678) (not bm!510507) (not b!6144639) (not d!1925169) (not setNonEmpty!41577) (not b!6144685) (not b!6144747) (not d!1925189) (not d!1925081) (not b!6144455) (not b!6144686) (not b!6144785) (not b!6144369) (not b!6144732) (not bm!510552) (not b!6144419) (not bm!510551) (not d!1925077) (not b!6144573) (not d!1925097) (not b!6144758) (not d!1925179) (not bm!510522) (not b!6144760) (not bm!510550) (not b!6144681) (not b!6144726) (not d!1925163) (not b_lambda!233821) (not bm!510541) (not b!6144783) (not b!6144751) (not b!6144406) (not b!6144772) (not b!6144555) (not bm!510560) (not b!6144552) (not b!6144746) (not b!6144519) (not b!6144754) (not d!1925155) (not b!6144780) (not d!1925137) (not d!1925223) (not b!6144793) (not b!6144428) (not b!6144826) (not b!6144801) (not b!6144265) (not b_lambda!233875) (not b!6144423) (not b!6144717) (not bm!510542) (not b!6144517) (not b!6144682) (not d!1925117) (not b!6144328) (not b!6144357) (not bm!510524) (not d!1925273) (not b!6144556) (not b!6144768) (not b!6144819) (not d!1925095) (not b!6144590) (not bm!510587) (not bm!510614) (not b!6144748) (not b!6144432) (not d!1925127) (not d!1925085) (not b!6144757) (not d!1925285) (not b!6144735) (not b!6144718) (not b!6144721) (not b!6144486) (not b!6144303) (not bm!510566) (not b!6144424) (not b!6144723) (not bm!510544) (not d!1925209) (not b!6144410) (not d!1925229) (not b!6144752) (not bm!510612) (not d!1925173) (not b!6144302) (not b!6144268) (not b!6144426) (not b!6144493) (not b!6144389) (not b!6144728) tp_is_empty!41427 (not bm!510577) (not b!6144409) (not bm!510554) (not b!6144827) (not b!6144794) (not b!6144382) (not b!6144756) (not b!6144722) (not b!6144803) (not b!6144371) (not b!6144352) (not b!6144705) (not b!6144743) (not bm!510605) (not bm!510578) (not b!6144753) (not d!1925263) (not b!6144715) (not b!6144452) (not b!6144560) (not b!6144791) (not b!6144622) (not d!1925151) (not b!6144518) (not bm!510570) (not b!6144799) (not bm!510558) (not b!6144617) (not bm!510598) (not b!6144714) (not b!6144405) (not b!6144765) (not d!1925251) (not b_lambda!233887) (not b!6144402) (not b!6144262) (not bs!1523599) (not bm!510575) (not b!6144358) (not d!1925181) (not b!6144672) (not b!6144817) (not b!6144831) (not d!1925059) (not bm!510532) (not b!6144774) (not b!6144562) (not b!6144787) (not b!6144448) (not b!6144790) (not b!6144479) (not b!6144818) (not d!1925201) (not bm!510539) (not b!6144778) (not b!6144781) (not b!6144269) (not bm!510531) (not b!6144315) (not d!1925079) (not b!6144822) (not b!6144427) (not bm!510547) (not b!6144270) (not b!6144742) (not b!6144761) (not d!1925193) (not b!6144739) (not d!1925087) (not d!1925171) (not b!6144516) (not bm!510589) (not bm!510611) (not b!6144814) (not d!1925111) (not b!6144396) (not b!6144484) (not b!6144805) (not bm!510582) (not b!6144776) (not b!6144408) (not bs!1523597) (not b!6144548) (not bm!510553) (not b!6144825) (not b!6144659) (not d!1925235) (not b!6144561) (not b!6144615) (not b!6144762) (not b!6144786) (not b!6144499) (not b!6144430) (not b!6144740) (not bs!1523596) (not bs!1523600) (not d!1925255) (not b!6144769) (not b!6144397) (not bm!510521) (not d!1925115) (not bm!510584) (not b!6144497) (not b!6144530) (not bm!510581) (not b!6144545) (not d!1925145) (not d!1925139) (not d!1925211) (not b!6144766) (not b!6144821) (not b!6144534) (not bm!510533) (not setNonEmpty!41576) (not b!6144647) (not b!6144614) (not bs!1523595) (not bm!510530) (not b!6144706) (not d!1925089) (not b!6144520) (not b!6144481) (not bm!510525) (not b!6144730) (not d!1925191) (not b!6144533) (not b_lambda!233873) (not bm!510597) (not bm!510556) (not b!6144727) (not b_lambda!233883) (not d!1925221) (not b!6144616) (not b!6144368) (not b!6144750) (not d!1925231) (not b!6144442) (not bm!510535) (not d!1925053) (not b!6144354) (not b!6144741) (not b!6144670) (not b!6144464) (not d!1925141) (not b!6144621) (not b!6144802) (not d!1925101) (not b_lambda!233881) (not setNonEmpty!41578) (not b!6144689) (not b!6144770) (not b!6144736) (not d!1925123) (not b!6144509) (not b!6144782) (not b!6144299) (not b!6144454) (not bm!510569) (not b!6144588) (not b!6144813) (not b_lambda!233885) (not bm!510617) (not b!6144372) (not bm!510580) (not b!6144468) (not d!1925215) (not bm!510519) (not b!6144724) (not b!6144738) (not bm!510610) (not b!6144451) (not b!6144734) (not b_lambda!233879) (not bm!510576) (not bm!510595) (not d!1925271))
(check-sat)
