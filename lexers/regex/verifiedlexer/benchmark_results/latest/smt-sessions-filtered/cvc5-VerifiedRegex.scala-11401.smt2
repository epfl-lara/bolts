; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!609864 () Bool)

(assert start!609864)

(declare-fun b!6099858 () Bool)

(assert (=> b!6099858 true))

(assert (=> b!6099858 true))

(declare-fun lambda!332227 () Int)

(declare-fun lambda!332226 () Int)

(assert (=> b!6099858 (not (= lambda!332227 lambda!332226))))

(assert (=> b!6099858 true))

(assert (=> b!6099858 true))

(declare-fun b!6099866 () Bool)

(assert (=> b!6099866 true))

(declare-fun b!6099852 () Bool)

(declare-fun res!2530911 () Bool)

(declare-fun e!3720360 () Bool)

(assert (=> b!6099852 (=> res!2530911 e!3720360)))

(declare-datatypes ((C!32366 0))(
  ( (C!32367 (val!25885 Int)) )
))
(declare-datatypes ((Regex!16048 0))(
  ( (ElementMatch!16048 (c!1095611 C!32366)) (Concat!24893 (regOne!32608 Regex!16048) (regTwo!32608 Regex!16048)) (EmptyExpr!16048) (Star!16048 (reg!16377 Regex!16048)) (EmptyLang!16048) (Union!16048 (regOne!32609 Regex!16048) (regTwo!32609 Regex!16048)) )
))
(declare-datatypes ((List!64443 0))(
  ( (Nil!64319) (Cons!64319 (h!70767 Regex!16048) (t!377892 List!64443)) )
))
(declare-datatypes ((Context!10864 0))(
  ( (Context!10865 (exprs!5932 List!64443)) )
))
(declare-fun lt!2328942 () (Set Context!10864))

(declare-fun lt!2328951 () (Set Context!10864))

(declare-fun r!7292 () Regex!16048)

(declare-fun lt!2328957 () Regex!16048)

(declare-datatypes ((List!64444 0))(
  ( (Nil!64320) (Cons!64320 (h!70768 Context!10864) (t!377893 List!64444)) )
))
(declare-fun zl!343 () List!64444)

(declare-fun lt!2328961 () List!64443)

(assert (=> b!6099852 (= res!2530911 (or (not (= lt!2328942 lt!2328951)) (not (= lt!2328957 r!7292)) (not (= (exprs!5932 (h!70768 zl!343)) lt!2328961))))))

(declare-fun b!6099853 () Bool)

(declare-datatypes ((List!64445 0))(
  ( (Nil!64321) (Cons!64321 (h!70769 C!32366) (t!377894 List!64445)) )
))
(declare-fun s!2326 () List!64445)

(declare-fun lt!2328958 () Bool)

(declare-fun z!1189 () (Set Context!10864))

(declare-fun e!3720364 () Bool)

(declare-fun matchZipper!2068 ((Set Context!10864) List!64445) Bool)

(assert (=> b!6099853 (= e!3720364 (= lt!2328958 (matchZipper!2068 z!1189 s!2326)))))

(declare-fun lt!2328953 () (Set Context!10864))

(declare-fun matchR!8231 (Regex!16048 List!64445) Bool)

(assert (=> b!6099853 (= (matchR!8231 (regTwo!32608 r!7292) s!2326) (matchZipper!2068 lt!2328953 s!2326))))

(declare-fun lt!2328940 () List!64444)

(declare-datatypes ((Unit!157367 0))(
  ( (Unit!157368) )
))
(declare-fun lt!2328936 () Unit!157367)

(declare-fun theoremZipperRegexEquiv!724 ((Set Context!10864) List!64444 Regex!16048 List!64445) Unit!157367)

(assert (=> b!6099853 (= lt!2328936 (theoremZipperRegexEquiv!724 lt!2328953 lt!2328940 (regTwo!32608 r!7292) s!2326))))

(declare-fun res!2530922 () Bool)

(declare-fun e!3720373 () Bool)

(assert (=> start!609864 (=> (not res!2530922) (not e!3720373))))

(declare-fun validRegex!7784 (Regex!16048) Bool)

(assert (=> start!609864 (= res!2530922 (validRegex!7784 r!7292))))

(assert (=> start!609864 e!3720373))

(declare-fun e!3720366 () Bool)

(assert (=> start!609864 e!3720366))

(declare-fun condSetEmpty!41199 () Bool)

(assert (=> start!609864 (= condSetEmpty!41199 (= z!1189 (as set.empty (Set Context!10864))))))

(declare-fun setRes!41199 () Bool)

(assert (=> start!609864 setRes!41199))

(declare-fun e!3720362 () Bool)

(assert (=> start!609864 e!3720362))

(declare-fun e!3720372 () Bool)

(assert (=> start!609864 e!3720372))

(declare-fun b!6099854 () Bool)

(declare-fun res!2530916 () Bool)

(declare-fun e!3720361 () Bool)

(assert (=> b!6099854 (=> res!2530916 e!3720361)))

(declare-fun isEmpty!36239 (List!64443) Bool)

(assert (=> b!6099854 (= res!2530916 (not (isEmpty!36239 (t!377892 (exprs!5932 (h!70768 zl!343))))))))

(declare-fun b!6099855 () Bool)

(declare-fun tp_is_empty!41349 () Bool)

(declare-fun tp!1703203 () Bool)

(assert (=> b!6099855 (= e!3720372 (and tp_is_empty!41349 tp!1703203))))

(declare-fun b!6099856 () Bool)

(declare-fun e!3720367 () Bool)

(declare-fun tp!1703211 () Bool)

(assert (=> b!6099856 (= e!3720367 tp!1703211)))

(declare-fun b!6099857 () Bool)

(declare-fun res!2530918 () Bool)

(declare-fun e!3720371 () Bool)

(assert (=> b!6099857 (=> res!2530918 e!3720371)))

(declare-fun isEmpty!36240 (List!64444) Bool)

(assert (=> b!6099857 (= res!2530918 (not (isEmpty!36240 (t!377893 zl!343))))))

(assert (=> b!6099858 (= e!3720371 e!3720361)))

(declare-fun res!2530910 () Bool)

(assert (=> b!6099858 (=> res!2530910 e!3720361)))

(declare-fun lt!2328959 () Bool)

(assert (=> b!6099858 (= res!2530910 (or (not (= lt!2328958 lt!2328959)) (is-Nil!64321 s!2326)))))

(declare-fun Exists!3118 (Int) Bool)

(assert (=> b!6099858 (= (Exists!3118 lambda!332226) (Exists!3118 lambda!332227))))

(declare-fun lt!2328938 () Unit!157367)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1655 (Regex!16048 Regex!16048 List!64445) Unit!157367)

(assert (=> b!6099858 (= lt!2328938 (lemmaExistCutMatchRandMatchRSpecEquivalent!1655 (regOne!32608 r!7292) (regTwo!32608 r!7292) s!2326))))

(assert (=> b!6099858 (= lt!2328959 (Exists!3118 lambda!332226))))

(declare-datatypes ((tuple2!66054 0))(
  ( (tuple2!66055 (_1!36330 List!64445) (_2!36330 List!64445)) )
))
(declare-datatypes ((Option!15939 0))(
  ( (None!15938) (Some!15938 (v!52071 tuple2!66054)) )
))
(declare-fun isDefined!12642 (Option!15939) Bool)

(declare-fun findConcatSeparation!2353 (Regex!16048 Regex!16048 List!64445 List!64445 List!64445) Option!15939)

(assert (=> b!6099858 (= lt!2328959 (isDefined!12642 (findConcatSeparation!2353 (regOne!32608 r!7292) (regTwo!32608 r!7292) Nil!64321 s!2326 s!2326)))))

(declare-fun lt!2328939 () Unit!157367)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2117 (Regex!16048 Regex!16048 List!64445) Unit!157367)

(assert (=> b!6099858 (= lt!2328939 (lemmaFindConcatSeparationEquivalentToExists!2117 (regOne!32608 r!7292) (regTwo!32608 r!7292) s!2326))))

(declare-fun b!6099859 () Bool)

(declare-fun res!2530925 () Bool)

(assert (=> b!6099859 (=> res!2530925 e!3720371)))

(assert (=> b!6099859 (= res!2530925 (or (is-EmptyExpr!16048 r!7292) (is-EmptyLang!16048 r!7292) (is-ElementMatch!16048 r!7292) (is-Union!16048 r!7292) (not (is-Concat!24893 r!7292))))))

(declare-fun b!6099860 () Bool)

(declare-fun tp!1703204 () Bool)

(declare-fun tp!1703207 () Bool)

(assert (=> b!6099860 (= e!3720366 (and tp!1703204 tp!1703207))))

(declare-fun setIsEmpty!41199 () Bool)

(assert (=> setIsEmpty!41199 setRes!41199))

(declare-fun b!6099861 () Bool)

(declare-fun tp!1703206 () Bool)

(assert (=> b!6099861 (= e!3720366 tp!1703206)))

(declare-fun b!6099862 () Bool)

(declare-fun e!3720370 () Bool)

(assert (=> b!6099862 (= e!3720373 e!3720370)))

(declare-fun res!2530917 () Bool)

(assert (=> b!6099862 (=> (not res!2530917) (not e!3720370))))

(assert (=> b!6099862 (= res!2530917 (= r!7292 lt!2328957))))

(declare-fun unfocusZipper!1790 (List!64444) Regex!16048)

(assert (=> b!6099862 (= lt!2328957 (unfocusZipper!1790 zl!343))))

(declare-fun b!6099863 () Bool)

(declare-fun res!2530909 () Bool)

(assert (=> b!6099863 (=> res!2530909 e!3720364)))

(assert (=> b!6099863 (= res!2530909 (not (= (regTwo!32608 r!7292) (unfocusZipper!1790 lt!2328940))))))

(declare-fun b!6099864 () Bool)

(declare-fun e!3720365 () Bool)

(assert (=> b!6099864 (= e!3720365 e!3720364)))

(declare-fun res!2530914 () Bool)

(assert (=> b!6099864 (=> res!2530914 e!3720364)))

(assert (=> b!6099864 (= res!2530914 (not (validRegex!7784 (regTwo!32608 r!7292))))))

(declare-fun lt!2328944 () Context!10864)

(assert (=> b!6099864 (= lt!2328940 (Cons!64320 lt!2328944 Nil!64320))))

(declare-fun lt!2328943 () Regex!16048)

(declare-fun lt!2328945 () (Set Context!10864))

(assert (=> b!6099864 (= (matchR!8231 lt!2328943 s!2326) (matchZipper!2068 lt!2328945 s!2326))))

(declare-fun lt!2328955 () Unit!157367)

(declare-fun lt!2328937 () List!64444)

(assert (=> b!6099864 (= lt!2328955 (theoremZipperRegexEquiv!724 lt!2328945 lt!2328937 lt!2328943 s!2326))))

(assert (=> b!6099864 (= lt!2328943 (Concat!24893 (regOne!32608 r!7292) (regTwo!32608 r!7292)))))

(declare-fun setElem!41199 () Context!10864)

(declare-fun setNonEmpty!41199 () Bool)

(declare-fun e!3720369 () Bool)

(declare-fun tp!1703209 () Bool)

(declare-fun inv!83368 (Context!10864) Bool)

(assert (=> setNonEmpty!41199 (= setRes!41199 (and tp!1703209 (inv!83368 setElem!41199) e!3720369))))

(declare-fun setRest!41199 () (Set Context!10864))

(assert (=> setNonEmpty!41199 (= z!1189 (set.union (set.insert setElem!41199 (as set.empty (Set Context!10864))) setRest!41199))))

(declare-fun b!6099865 () Bool)

(assert (=> b!6099865 (= e!3720360 e!3720365)))

(declare-fun res!2530921 () Bool)

(assert (=> b!6099865 (=> res!2530921 e!3720365)))

(declare-fun lt!2328947 () Context!10864)

(declare-fun zipperDepth!293 (List!64444) Int)

(assert (=> b!6099865 (= res!2530921 (>= (zipperDepth!293 lt!2328937) (zipperDepth!293 (Cons!64320 lt!2328947 Nil!64320))))))

(declare-fun lt!2328952 () Context!10864)

(assert (=> b!6099865 (= lt!2328937 (Cons!64320 lt!2328952 Nil!64320))))

(declare-fun e!3720368 () Bool)

(declare-fun e!3720363 () Bool)

(assert (=> b!6099866 (= e!3720368 e!3720363)))

(declare-fun res!2530908 () Bool)

(assert (=> b!6099866 (=> res!2530908 e!3720363)))

(declare-fun lt!2328962 () (Set Context!10864))

(assert (=> b!6099866 (= res!2530908 (not (= lt!2328942 lt!2328962)))))

(declare-fun lambda!332228 () Int)

(declare-fun flatMap!1561 ((Set Context!10864) Int) (Set Context!10864))

(declare-fun derivationStepZipperUp!1224 (Context!10864 C!32366) (Set Context!10864))

(assert (=> b!6099866 (= (flatMap!1561 z!1189 lambda!332228) (derivationStepZipperUp!1224 (h!70768 zl!343) (h!70769 s!2326)))))

(declare-fun lt!2328954 () Unit!157367)

(declare-fun lemmaFlatMapOnSingletonSet!1087 ((Set Context!10864) Context!10864 Int) Unit!157367)

(assert (=> b!6099866 (= lt!2328954 (lemmaFlatMapOnSingletonSet!1087 z!1189 (h!70768 zl!343) lambda!332228))))

(declare-fun b!6099867 () Bool)

(declare-fun res!2530919 () Bool)

(assert (=> b!6099867 (=> res!2530919 e!3720371)))

(declare-fun generalisedConcat!1645 (List!64443) Regex!16048)

(assert (=> b!6099867 (= res!2530919 (not (= r!7292 (generalisedConcat!1645 (exprs!5932 (h!70768 zl!343))))))))

(declare-fun b!6099868 () Bool)

(assert (=> b!6099868 (= e!3720361 e!3720368)))

(declare-fun res!2530912 () Bool)

(assert (=> b!6099868 (=> res!2530912 e!3720368)))

(declare-fun lt!2328950 () (Set Context!10864))

(assert (=> b!6099868 (= res!2530912 (not (= lt!2328950 lt!2328962)))))

(declare-fun lt!2328949 () Context!10864)

(declare-fun derivationStepZipperDown!1298 (Regex!16048 Context!10864 C!32366) (Set Context!10864))

(assert (=> b!6099868 (= lt!2328962 (derivationStepZipperDown!1298 r!7292 lt!2328949 (h!70769 s!2326)))))

(assert (=> b!6099868 (= lt!2328949 (Context!10865 Nil!64319))))

(assert (=> b!6099868 (= lt!2328950 (derivationStepZipperUp!1224 lt!2328947 (h!70769 s!2326)))))

(assert (=> b!6099868 (= lt!2328947 (Context!10865 lt!2328961))))

(assert (=> b!6099868 (= lt!2328961 (Cons!64319 r!7292 Nil!64319))))

(declare-fun derivationStepZipper!2029 ((Set Context!10864) C!32366) (Set Context!10864))

(assert (=> b!6099868 (= lt!2328942 (derivationStepZipper!2029 z!1189 (h!70769 s!2326)))))

(declare-fun b!6099869 () Bool)

(declare-fun res!2530923 () Bool)

(assert (=> b!6099869 (=> (not res!2530923) (not e!3720373))))

(declare-fun toList!9832 ((Set Context!10864)) List!64444)

(assert (=> b!6099869 (= res!2530923 (= (toList!9832 z!1189) zl!343))))

(declare-fun b!6099870 () Bool)

(declare-fun tp!1703205 () Bool)

(assert (=> b!6099870 (= e!3720369 tp!1703205)))

(declare-fun b!6099871 () Bool)

(declare-fun tp!1703210 () Bool)

(declare-fun tp!1703212 () Bool)

(assert (=> b!6099871 (= e!3720366 (and tp!1703210 tp!1703212))))

(declare-fun b!6099872 () Bool)

(declare-fun res!2530913 () Bool)

(assert (=> b!6099872 (=> res!2530913 e!3720371)))

(assert (=> b!6099872 (= res!2530913 (not (is-Cons!64319 (exprs!5932 (h!70768 zl!343)))))))

(declare-fun b!6099873 () Bool)

(assert (=> b!6099873 (= e!3720363 e!3720360)))

(declare-fun res!2530926 () Bool)

(assert (=> b!6099873 (=> res!2530926 e!3720360)))

(declare-fun nullable!6043 (Regex!16048) Bool)

(assert (=> b!6099873 (= res!2530926 (nullable!6043 (regOne!32608 r!7292)))))

(declare-fun lt!2328946 () (Set Context!10864))

(assert (=> b!6099873 (= lt!2328946 (derivationStepZipperDown!1298 (regTwo!32608 r!7292) lt!2328949 (h!70769 s!2326)))))

(assert (=> b!6099873 (= lt!2328951 (derivationStepZipperDown!1298 (regOne!32608 r!7292) lt!2328944 (h!70769 s!2326)))))

(assert (=> b!6099873 (= (flatMap!1561 lt!2328953 lambda!332228) (derivationStepZipperUp!1224 lt!2328944 (h!70769 s!2326)))))

(declare-fun lt!2328935 () Unit!157367)

(assert (=> b!6099873 (= lt!2328935 (lemmaFlatMapOnSingletonSet!1087 lt!2328953 lt!2328944 lambda!332228))))

(assert (=> b!6099873 (= (flatMap!1561 lt!2328945 lambda!332228) (derivationStepZipperUp!1224 lt!2328952 (h!70769 s!2326)))))

(declare-fun lt!2328941 () Unit!157367)

(assert (=> b!6099873 (= lt!2328941 (lemmaFlatMapOnSingletonSet!1087 lt!2328945 lt!2328952 lambda!332228))))

(declare-fun lt!2328960 () (Set Context!10864))

(assert (=> b!6099873 (= lt!2328960 (derivationStepZipperUp!1224 lt!2328944 (h!70769 s!2326)))))

(declare-fun lt!2328963 () (Set Context!10864))

(assert (=> b!6099873 (= lt!2328963 (derivationStepZipperUp!1224 lt!2328952 (h!70769 s!2326)))))

(assert (=> b!6099873 (= lt!2328953 (set.insert lt!2328944 (as set.empty (Set Context!10864))))))

(declare-fun lt!2328948 () List!64443)

(assert (=> b!6099873 (= lt!2328944 (Context!10865 lt!2328948))))

(assert (=> b!6099873 (= lt!2328945 (set.insert lt!2328952 (as set.empty (Set Context!10864))))))

(assert (=> b!6099873 (= lt!2328952 (Context!10865 (Cons!64319 (regOne!32608 r!7292) lt!2328948)))))

(assert (=> b!6099873 (= lt!2328948 (Cons!64319 (regTwo!32608 r!7292) Nil!64319))))

(declare-fun b!6099874 () Bool)

(declare-fun res!2530924 () Bool)

(assert (=> b!6099874 (=> res!2530924 e!3720364)))

(assert (=> b!6099874 (= res!2530924 (not (= (toList!9832 lt!2328953) lt!2328940)))))

(declare-fun tp!1703208 () Bool)

(declare-fun b!6099875 () Bool)

(assert (=> b!6099875 (= e!3720362 (and (inv!83368 (h!70768 zl!343)) e!3720367 tp!1703208))))

(declare-fun b!6099876 () Bool)

(declare-fun res!2530915 () Bool)

(assert (=> b!6099876 (=> res!2530915 e!3720371)))

(declare-fun generalisedUnion!1892 (List!64443) Regex!16048)

(declare-fun unfocusZipperList!1469 (List!64444) List!64443)

(assert (=> b!6099876 (= res!2530915 (not (= r!7292 (generalisedUnion!1892 (unfocusZipperList!1469 zl!343)))))))

(declare-fun b!6099877 () Bool)

(assert (=> b!6099877 (= e!3720366 tp_is_empty!41349)))

(declare-fun b!6099878 () Bool)

(assert (=> b!6099878 (= e!3720370 (not e!3720371))))

(declare-fun res!2530920 () Bool)

(assert (=> b!6099878 (=> res!2530920 e!3720371)))

(assert (=> b!6099878 (= res!2530920 (not (is-Cons!64320 zl!343)))))

(declare-fun matchRSpec!3149 (Regex!16048 List!64445) Bool)

(assert (=> b!6099878 (= lt!2328958 (matchRSpec!3149 r!7292 s!2326))))

(assert (=> b!6099878 (= lt!2328958 (matchR!8231 r!7292 s!2326))))

(declare-fun lt!2328956 () Unit!157367)

(declare-fun mainMatchTheorem!3149 (Regex!16048 List!64445) Unit!157367)

(assert (=> b!6099878 (= lt!2328956 (mainMatchTheorem!3149 r!7292 s!2326))))

(assert (= (and start!609864 res!2530922) b!6099869))

(assert (= (and b!6099869 res!2530923) b!6099862))

(assert (= (and b!6099862 res!2530917) b!6099878))

(assert (= (and b!6099878 (not res!2530920)) b!6099857))

(assert (= (and b!6099857 (not res!2530918)) b!6099867))

(assert (= (and b!6099867 (not res!2530919)) b!6099872))

(assert (= (and b!6099872 (not res!2530913)) b!6099876))

(assert (= (and b!6099876 (not res!2530915)) b!6099859))

(assert (= (and b!6099859 (not res!2530925)) b!6099858))

(assert (= (and b!6099858 (not res!2530910)) b!6099854))

(assert (= (and b!6099854 (not res!2530916)) b!6099868))

(assert (= (and b!6099868 (not res!2530912)) b!6099866))

(assert (= (and b!6099866 (not res!2530908)) b!6099873))

(assert (= (and b!6099873 (not res!2530926)) b!6099852))

(assert (= (and b!6099852 (not res!2530911)) b!6099865))

(assert (= (and b!6099865 (not res!2530921)) b!6099864))

(assert (= (and b!6099864 (not res!2530914)) b!6099874))

(assert (= (and b!6099874 (not res!2530924)) b!6099863))

(assert (= (and b!6099863 (not res!2530909)) b!6099853))

(assert (= (and start!609864 (is-ElementMatch!16048 r!7292)) b!6099877))

(assert (= (and start!609864 (is-Concat!24893 r!7292)) b!6099860))

(assert (= (and start!609864 (is-Star!16048 r!7292)) b!6099861))

(assert (= (and start!609864 (is-Union!16048 r!7292)) b!6099871))

(assert (= (and start!609864 condSetEmpty!41199) setIsEmpty!41199))

(assert (= (and start!609864 (not condSetEmpty!41199)) setNonEmpty!41199))

(assert (= setNonEmpty!41199 b!6099870))

(assert (= b!6099875 b!6099856))

(assert (= (and start!609864 (is-Cons!64320 zl!343)) b!6099875))

(assert (= (and start!609864 (is-Cons!64321 s!2326)) b!6099855))

(declare-fun m!6952632 () Bool)

(assert (=> b!6099854 m!6952632))

(declare-fun m!6952634 () Bool)

(assert (=> b!6099862 m!6952634))

(declare-fun m!6952636 () Bool)

(assert (=> b!6099876 m!6952636))

(assert (=> b!6099876 m!6952636))

(declare-fun m!6952638 () Bool)

(assert (=> b!6099876 m!6952638))

(declare-fun m!6952640 () Bool)

(assert (=> b!6099875 m!6952640))

(declare-fun m!6952642 () Bool)

(assert (=> b!6099869 m!6952642))

(declare-fun m!6952644 () Bool)

(assert (=> b!6099867 m!6952644))

(declare-fun m!6952646 () Bool)

(assert (=> b!6099873 m!6952646))

(declare-fun m!6952648 () Bool)

(assert (=> b!6099873 m!6952648))

(declare-fun m!6952650 () Bool)

(assert (=> b!6099873 m!6952650))

(declare-fun m!6952652 () Bool)

(assert (=> b!6099873 m!6952652))

(declare-fun m!6952654 () Bool)

(assert (=> b!6099873 m!6952654))

(declare-fun m!6952656 () Bool)

(assert (=> b!6099873 m!6952656))

(declare-fun m!6952658 () Bool)

(assert (=> b!6099873 m!6952658))

(declare-fun m!6952660 () Bool)

(assert (=> b!6099873 m!6952660))

(declare-fun m!6952662 () Bool)

(assert (=> b!6099873 m!6952662))

(declare-fun m!6952664 () Bool)

(assert (=> b!6099873 m!6952664))

(declare-fun m!6952666 () Bool)

(assert (=> b!6099873 m!6952666))

(declare-fun m!6952668 () Bool)

(assert (=> start!609864 m!6952668))

(declare-fun m!6952670 () Bool)

(assert (=> b!6099878 m!6952670))

(declare-fun m!6952672 () Bool)

(assert (=> b!6099878 m!6952672))

(declare-fun m!6952674 () Bool)

(assert (=> b!6099878 m!6952674))

(declare-fun m!6952676 () Bool)

(assert (=> b!6099858 m!6952676))

(declare-fun m!6952678 () Bool)

(assert (=> b!6099858 m!6952678))

(declare-fun m!6952680 () Bool)

(assert (=> b!6099858 m!6952680))

(declare-fun m!6952682 () Bool)

(assert (=> b!6099858 m!6952682))

(assert (=> b!6099858 m!6952676))

(declare-fun m!6952684 () Bool)

(assert (=> b!6099858 m!6952684))

(declare-fun m!6952686 () Bool)

(assert (=> b!6099858 m!6952686))

(assert (=> b!6099858 m!6952680))

(declare-fun m!6952688 () Bool)

(assert (=> b!6099866 m!6952688))

(declare-fun m!6952690 () Bool)

(assert (=> b!6099866 m!6952690))

(declare-fun m!6952692 () Bool)

(assert (=> b!6099866 m!6952692))

(declare-fun m!6952694 () Bool)

(assert (=> b!6099868 m!6952694))

(declare-fun m!6952696 () Bool)

(assert (=> b!6099868 m!6952696))

(declare-fun m!6952698 () Bool)

(assert (=> b!6099868 m!6952698))

(declare-fun m!6952700 () Bool)

(assert (=> b!6099863 m!6952700))

(declare-fun m!6952702 () Bool)

(assert (=> b!6099874 m!6952702))

(declare-fun m!6952704 () Bool)

(assert (=> b!6099864 m!6952704))

(declare-fun m!6952706 () Bool)

(assert (=> b!6099864 m!6952706))

(declare-fun m!6952708 () Bool)

(assert (=> b!6099864 m!6952708))

(declare-fun m!6952710 () Bool)

(assert (=> b!6099864 m!6952710))

(declare-fun m!6952712 () Bool)

(assert (=> b!6099865 m!6952712))

(declare-fun m!6952714 () Bool)

(assert (=> b!6099865 m!6952714))

(declare-fun m!6952716 () Bool)

(assert (=> b!6099853 m!6952716))

(declare-fun m!6952718 () Bool)

(assert (=> b!6099853 m!6952718))

(declare-fun m!6952720 () Bool)

(assert (=> b!6099853 m!6952720))

(declare-fun m!6952722 () Bool)

(assert (=> b!6099853 m!6952722))

(declare-fun m!6952724 () Bool)

(assert (=> b!6099857 m!6952724))

(declare-fun m!6952726 () Bool)

(assert (=> setNonEmpty!41199 m!6952726))

(push 1)

(assert (not b!6099856))

(assert (not setNonEmpty!41199))

(assert (not b!6099858))

(assert (not b!6099861))

(assert (not b!6099875))

(assert (not b!6099869))

(assert (not b!6099854))

(assert tp_is_empty!41349)

(assert (not b!6099857))

(assert (not b!6099863))

(assert (not b!6099873))

(assert (not b!6099864))

(assert (not b!6099860))

(assert (not start!609864))

(assert (not b!6099855))

(assert (not b!6099865))

(assert (not b!6099866))

(assert (not b!6099867))

(assert (not b!6099876))

(assert (not b!6099870))

(assert (not b!6099862))

(assert (not b!6099868))

(assert (not b!6099874))

(assert (not b!6099853))

(assert (not b!6099871))

(assert (not b!6099878))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6100006 () Bool)

(declare-fun e!3720435 () (Set Context!10864))

(declare-fun call!504251 () (Set Context!10864))

(declare-fun call!504255 () (Set Context!10864))

(assert (=> b!6100006 (= e!3720435 (set.union call!504251 call!504255))))

(declare-fun call!504256 () List!64443)

(declare-fun bm!504246 () Bool)

(declare-fun c!1095631 () Bool)

(assert (=> bm!504246 (= call!504251 (derivationStepZipperDown!1298 (ite c!1095631 (regOne!32609 r!7292) (regOne!32608 r!7292)) (ite c!1095631 lt!2328949 (Context!10865 call!504256)) (h!70769 s!2326)))))

(declare-fun b!6100007 () Bool)

(declare-fun c!1095630 () Bool)

(assert (=> b!6100007 (= c!1095630 (is-Star!16048 r!7292))))

(declare-fun e!3720437 () (Set Context!10864))

(declare-fun e!3720439 () (Set Context!10864))

(assert (=> b!6100007 (= e!3720437 e!3720439)))

(declare-fun b!6100008 () Bool)

(declare-fun e!3720436 () Bool)

(assert (=> b!6100008 (= e!3720436 (nullable!6043 (regOne!32608 r!7292)))))

(declare-fun d!1912132 () Bool)

(declare-fun c!1095633 () Bool)

(assert (=> d!1912132 (= c!1095633 (and (is-ElementMatch!16048 r!7292) (= (c!1095611 r!7292) (h!70769 s!2326))))))

(declare-fun e!3720434 () (Set Context!10864))

(assert (=> d!1912132 (= (derivationStepZipperDown!1298 r!7292 lt!2328949 (h!70769 s!2326)) e!3720434)))

(declare-fun b!6100009 () Bool)

(declare-fun e!3720438 () (Set Context!10864))

(declare-fun call!504252 () (Set Context!10864))

(assert (=> b!6100009 (= e!3720438 (set.union call!504251 call!504252))))

(declare-fun b!6100010 () Bool)

(assert (=> b!6100010 (= e!3720434 e!3720435)))

(assert (=> b!6100010 (= c!1095631 (is-Union!16048 r!7292))))

(declare-fun b!6100011 () Bool)

(assert (=> b!6100011 (= e!3720434 (set.insert lt!2328949 (as set.empty (Set Context!10864))))))

(declare-fun b!6100012 () Bool)

(declare-fun c!1095632 () Bool)

(assert (=> b!6100012 (= c!1095632 e!3720436)))

(declare-fun res!2530998 () Bool)

(assert (=> b!6100012 (=> (not res!2530998) (not e!3720436))))

(assert (=> b!6100012 (= res!2530998 (is-Concat!24893 r!7292))))

(assert (=> b!6100012 (= e!3720435 e!3720438)))

(declare-fun bm!504247 () Bool)

(declare-fun call!504253 () List!64443)

(assert (=> bm!504247 (= call!504253 call!504256)))

(declare-fun b!6100013 () Bool)

(assert (=> b!6100013 (= e!3720438 e!3720437)))

(declare-fun c!1095634 () Bool)

(assert (=> b!6100013 (= c!1095634 (is-Concat!24893 r!7292))))

(declare-fun b!6100014 () Bool)

(declare-fun call!504254 () (Set Context!10864))

(assert (=> b!6100014 (= e!3720439 call!504254)))

(declare-fun b!6100015 () Bool)

(assert (=> b!6100015 (= e!3720437 call!504254)))

(declare-fun bm!504248 () Bool)

(assert (=> bm!504248 (= call!504254 call!504252)))

(declare-fun bm!504249 () Bool)

(assert (=> bm!504249 (= call!504255 (derivationStepZipperDown!1298 (ite c!1095631 (regTwo!32609 r!7292) (ite c!1095632 (regTwo!32608 r!7292) (ite c!1095634 (regOne!32608 r!7292) (reg!16377 r!7292)))) (ite (or c!1095631 c!1095632) lt!2328949 (Context!10865 call!504253)) (h!70769 s!2326)))))

(declare-fun bm!504250 () Bool)

(assert (=> bm!504250 (= call!504252 call!504255)))

(declare-fun bm!504251 () Bool)

(declare-fun $colon$colon!1927 (List!64443 Regex!16048) List!64443)

(assert (=> bm!504251 (= call!504256 ($colon$colon!1927 (exprs!5932 lt!2328949) (ite (or c!1095632 c!1095634) (regTwo!32608 r!7292) r!7292)))))

(declare-fun b!6100016 () Bool)

(assert (=> b!6100016 (= e!3720439 (as set.empty (Set Context!10864)))))

(assert (= (and d!1912132 c!1095633) b!6100011))

(assert (= (and d!1912132 (not c!1095633)) b!6100010))

(assert (= (and b!6100010 c!1095631) b!6100006))

(assert (= (and b!6100010 (not c!1095631)) b!6100012))

(assert (= (and b!6100012 res!2530998) b!6100008))

(assert (= (and b!6100012 c!1095632) b!6100009))

(assert (= (and b!6100012 (not c!1095632)) b!6100013))

(assert (= (and b!6100013 c!1095634) b!6100015))

(assert (= (and b!6100013 (not c!1095634)) b!6100007))

(assert (= (and b!6100007 c!1095630) b!6100014))

(assert (= (and b!6100007 (not c!1095630)) b!6100016))

(assert (= (or b!6100015 b!6100014) bm!504247))

(assert (= (or b!6100015 b!6100014) bm!504248))

(assert (= (or b!6100009 bm!504247) bm!504251))

(assert (= (or b!6100009 bm!504248) bm!504250))

(assert (= (or b!6100006 bm!504250) bm!504249))

(assert (= (or b!6100006 b!6100009) bm!504246))

(assert (=> b!6100008 m!6952666))

(declare-fun m!6952824 () Bool)

(assert (=> bm!504246 m!6952824))

(declare-fun m!6952826 () Bool)

(assert (=> bm!504249 m!6952826))

(declare-fun m!6952828 () Bool)

(assert (=> b!6100011 m!6952828))

(declare-fun m!6952830 () Bool)

(assert (=> bm!504251 m!6952830))

(assert (=> b!6099868 d!1912132))

(declare-fun d!1912134 () Bool)

(declare-fun c!1095640 () Bool)

(declare-fun e!3720447 () Bool)

(assert (=> d!1912134 (= c!1095640 e!3720447)))

(declare-fun res!2531001 () Bool)

(assert (=> d!1912134 (=> (not res!2531001) (not e!3720447))))

(assert (=> d!1912134 (= res!2531001 (is-Cons!64319 (exprs!5932 lt!2328947)))))

(declare-fun e!3720448 () (Set Context!10864))

(assert (=> d!1912134 (= (derivationStepZipperUp!1224 lt!2328947 (h!70769 s!2326)) e!3720448)))

(declare-fun b!6100027 () Bool)

(declare-fun e!3720446 () (Set Context!10864))

(assert (=> b!6100027 (= e!3720446 (as set.empty (Set Context!10864)))))

(declare-fun b!6100028 () Bool)

(assert (=> b!6100028 (= e!3720447 (nullable!6043 (h!70767 (exprs!5932 lt!2328947))))))

(declare-fun b!6100029 () Bool)

(declare-fun call!504259 () (Set Context!10864))

(assert (=> b!6100029 (= e!3720446 call!504259)))

(declare-fun b!6100030 () Bool)

(assert (=> b!6100030 (= e!3720448 e!3720446)))

(declare-fun c!1095639 () Bool)

(assert (=> b!6100030 (= c!1095639 (is-Cons!64319 (exprs!5932 lt!2328947)))))

(declare-fun bm!504254 () Bool)

(assert (=> bm!504254 (= call!504259 (derivationStepZipperDown!1298 (h!70767 (exprs!5932 lt!2328947)) (Context!10865 (t!377892 (exprs!5932 lt!2328947))) (h!70769 s!2326)))))

(declare-fun b!6100031 () Bool)

(assert (=> b!6100031 (= e!3720448 (set.union call!504259 (derivationStepZipperUp!1224 (Context!10865 (t!377892 (exprs!5932 lt!2328947))) (h!70769 s!2326))))))

(assert (= (and d!1912134 res!2531001) b!6100028))

(assert (= (and d!1912134 c!1095640) b!6100031))

(assert (= (and d!1912134 (not c!1095640)) b!6100030))

(assert (= (and b!6100030 c!1095639) b!6100029))

(assert (= (and b!6100030 (not c!1095639)) b!6100027))

(assert (= (or b!6100031 b!6100029) bm!504254))

(declare-fun m!6952832 () Bool)

(assert (=> b!6100028 m!6952832))

(declare-fun m!6952834 () Bool)

(assert (=> bm!504254 m!6952834))

(declare-fun m!6952836 () Bool)

(assert (=> b!6100031 m!6952836))

(assert (=> b!6099868 d!1912134))

(declare-fun bs!1514735 () Bool)

(declare-fun d!1912136 () Bool)

(assert (= bs!1514735 (and d!1912136 b!6099866)))

(declare-fun lambda!332246 () Int)

(assert (=> bs!1514735 (= lambda!332246 lambda!332228)))

(assert (=> d!1912136 true))

(assert (=> d!1912136 (= (derivationStepZipper!2029 z!1189 (h!70769 s!2326)) (flatMap!1561 z!1189 lambda!332246))))

(declare-fun bs!1514736 () Bool)

(assert (= bs!1514736 d!1912136))

(declare-fun m!6952838 () Bool)

(assert (=> bs!1514736 m!6952838))

(assert (=> b!6099868 d!1912136))

(declare-fun bs!1514737 () Bool)

(declare-fun b!6100074 () Bool)

(assert (= bs!1514737 (and b!6100074 b!6099858)))

(declare-fun lambda!332251 () Int)

(assert (=> bs!1514737 (not (= lambda!332251 lambda!332226))))

(assert (=> bs!1514737 (not (= lambda!332251 lambda!332227))))

(assert (=> b!6100074 true))

(assert (=> b!6100074 true))

(declare-fun bs!1514738 () Bool)

(declare-fun b!6100066 () Bool)

(assert (= bs!1514738 (and b!6100066 b!6099858)))

(declare-fun lambda!332252 () Int)

(assert (=> bs!1514738 (not (= lambda!332252 lambda!332226))))

(assert (=> bs!1514738 (= lambda!332252 lambda!332227)))

(declare-fun bs!1514739 () Bool)

(assert (= bs!1514739 (and b!6100066 b!6100074)))

(assert (=> bs!1514739 (not (= lambda!332252 lambda!332251))))

(assert (=> b!6100066 true))

(assert (=> b!6100066 true))

(declare-fun e!3720468 () Bool)

(declare-fun call!504264 () Bool)

(assert (=> b!6100066 (= e!3720468 call!504264)))

(declare-fun bm!504259 () Bool)

(declare-fun call!504265 () Bool)

(declare-fun isEmpty!36243 (List!64445) Bool)

(assert (=> bm!504259 (= call!504265 (isEmpty!36243 s!2326))))

(declare-fun b!6100067 () Bool)

(declare-fun e!3720467 () Bool)

(assert (=> b!6100067 (= e!3720467 (= s!2326 (Cons!64321 (c!1095611 r!7292) Nil!64321)))))

(declare-fun b!6100068 () Bool)

(declare-fun e!3720472 () Bool)

(assert (=> b!6100068 (= e!3720472 call!504265)))

(declare-fun b!6100070 () Bool)

(declare-fun c!1095652 () Bool)

(assert (=> b!6100070 (= c!1095652 (is-ElementMatch!16048 r!7292))))

(declare-fun e!3720471 () Bool)

(assert (=> b!6100070 (= e!3720471 e!3720467)))

(declare-fun b!6100071 () Bool)

(assert (=> b!6100071 (= e!3720472 e!3720471)))

(declare-fun res!2531018 () Bool)

(assert (=> b!6100071 (= res!2531018 (not (is-EmptyLang!16048 r!7292)))))

(assert (=> b!6100071 (=> (not res!2531018) (not e!3720471))))

(declare-fun b!6100072 () Bool)

(declare-fun e!3720469 () Bool)

(assert (=> b!6100072 (= e!3720469 e!3720468)))

(declare-fun c!1095651 () Bool)

(assert (=> b!6100072 (= c!1095651 (is-Star!16048 r!7292))))

(declare-fun b!6100073 () Bool)

(declare-fun res!2531020 () Bool)

(declare-fun e!3720470 () Bool)

(assert (=> b!6100073 (=> res!2531020 e!3720470)))

(assert (=> b!6100073 (= res!2531020 call!504265)))

(assert (=> b!6100073 (= e!3720468 e!3720470)))

(assert (=> b!6100074 (= e!3720470 call!504264)))

(declare-fun b!6100075 () Bool)

(declare-fun e!3720473 () Bool)

(assert (=> b!6100075 (= e!3720469 e!3720473)))

(declare-fun res!2531019 () Bool)

(assert (=> b!6100075 (= res!2531019 (matchRSpec!3149 (regOne!32609 r!7292) s!2326))))

(assert (=> b!6100075 (=> res!2531019 e!3720473)))

(declare-fun d!1912138 () Bool)

(declare-fun c!1095654 () Bool)

(assert (=> d!1912138 (= c!1095654 (is-EmptyExpr!16048 r!7292))))

(assert (=> d!1912138 (= (matchRSpec!3149 r!7292 s!2326) e!3720472)))

(declare-fun b!6100069 () Bool)

(declare-fun c!1095653 () Bool)

(assert (=> b!6100069 (= c!1095653 (is-Union!16048 r!7292))))

(assert (=> b!6100069 (= e!3720467 e!3720469)))

(declare-fun b!6100076 () Bool)

(assert (=> b!6100076 (= e!3720473 (matchRSpec!3149 (regTwo!32609 r!7292) s!2326))))

(declare-fun bm!504260 () Bool)

(assert (=> bm!504260 (= call!504264 (Exists!3118 (ite c!1095651 lambda!332251 lambda!332252)))))

(assert (= (and d!1912138 c!1095654) b!6100068))

(assert (= (and d!1912138 (not c!1095654)) b!6100071))

(assert (= (and b!6100071 res!2531018) b!6100070))

(assert (= (and b!6100070 c!1095652) b!6100067))

(assert (= (and b!6100070 (not c!1095652)) b!6100069))

(assert (= (and b!6100069 c!1095653) b!6100075))

(assert (= (and b!6100069 (not c!1095653)) b!6100072))

(assert (= (and b!6100075 (not res!2531019)) b!6100076))

(assert (= (and b!6100072 c!1095651) b!6100073))

(assert (= (and b!6100072 (not c!1095651)) b!6100066))

(assert (= (and b!6100073 (not res!2531020)) b!6100074))

(assert (= (or b!6100074 b!6100066) bm!504260))

(assert (= (or b!6100068 b!6100073) bm!504259))

(declare-fun m!6952840 () Bool)

(assert (=> bm!504259 m!6952840))

(declare-fun m!6952842 () Bool)

(assert (=> b!6100075 m!6952842))

(declare-fun m!6952844 () Bool)

(assert (=> b!6100076 m!6952844))

(declare-fun m!6952846 () Bool)

(assert (=> bm!504260 m!6952846))

(assert (=> b!6099878 d!1912138))

(declare-fun b!6100132 () Bool)

(declare-fun e!3720509 () Bool)

(declare-fun e!3720512 () Bool)

(assert (=> b!6100132 (= e!3720509 e!3720512)))

(declare-fun c!1095667 () Bool)

(assert (=> b!6100132 (= c!1095667 (is-EmptyLang!16048 r!7292))))

(declare-fun b!6100133 () Bool)

(declare-fun res!2531055 () Bool)

(declare-fun e!3720514 () Bool)

(assert (=> b!6100133 (=> res!2531055 e!3720514)))

(assert (=> b!6100133 (= res!2531055 (not (is-ElementMatch!16048 r!7292)))))

(assert (=> b!6100133 (= e!3720512 e!3720514)))

(declare-fun b!6100134 () Bool)

(declare-fun res!2531053 () Bool)

(declare-fun e!3720510 () Bool)

(assert (=> b!6100134 (=> res!2531053 e!3720510)))

(declare-fun tail!11706 (List!64445) List!64445)

(assert (=> b!6100134 (= res!2531053 (not (isEmpty!36243 (tail!11706 s!2326))))))

(declare-fun bm!504272 () Bool)

(declare-fun call!504277 () Bool)

(assert (=> bm!504272 (= call!504277 (isEmpty!36243 s!2326))))

(declare-fun b!6100135 () Bool)

(declare-fun e!3720515 () Bool)

(assert (=> b!6100135 (= e!3720514 e!3720515)))

(declare-fun res!2531059 () Bool)

(assert (=> b!6100135 (=> (not res!2531059) (not e!3720515))))

(declare-fun lt!2329053 () Bool)

(assert (=> b!6100135 (= res!2531059 (not lt!2329053))))

(declare-fun d!1912142 () Bool)

(assert (=> d!1912142 e!3720509))

(declare-fun c!1095669 () Bool)

(assert (=> d!1912142 (= c!1095669 (is-EmptyExpr!16048 r!7292))))

(declare-fun e!3720513 () Bool)

(assert (=> d!1912142 (= lt!2329053 e!3720513)))

(declare-fun c!1095668 () Bool)

(assert (=> d!1912142 (= c!1095668 (isEmpty!36243 s!2326))))

(assert (=> d!1912142 (validRegex!7784 r!7292)))

(assert (=> d!1912142 (= (matchR!8231 r!7292 s!2326) lt!2329053)))

(declare-fun b!6100136 () Bool)

(assert (=> b!6100136 (= e!3720512 (not lt!2329053))))

(declare-fun b!6100137 () Bool)

(declare-fun res!2531057 () Bool)

(assert (=> b!6100137 (=> res!2531057 e!3720514)))

(declare-fun e!3720511 () Bool)

(assert (=> b!6100137 (= res!2531057 e!3720511)))

(declare-fun res!2531052 () Bool)

(assert (=> b!6100137 (=> (not res!2531052) (not e!3720511))))

(assert (=> b!6100137 (= res!2531052 lt!2329053)))

(declare-fun b!6100138 () Bool)

(assert (=> b!6100138 (= e!3720513 (nullable!6043 r!7292))))

(declare-fun b!6100139 () Bool)

(assert (=> b!6100139 (= e!3720515 e!3720510)))

(declare-fun res!2531054 () Bool)

(assert (=> b!6100139 (=> res!2531054 e!3720510)))

(assert (=> b!6100139 (= res!2531054 call!504277)))

(declare-fun b!6100140 () Bool)

(declare-fun derivativeStep!4771 (Regex!16048 C!32366) Regex!16048)

(declare-fun head!12621 (List!64445) C!32366)

(assert (=> b!6100140 (= e!3720513 (matchR!8231 (derivativeStep!4771 r!7292 (head!12621 s!2326)) (tail!11706 s!2326)))))

(declare-fun b!6100141 () Bool)

(assert (=> b!6100141 (= e!3720511 (= (head!12621 s!2326) (c!1095611 r!7292)))))

(declare-fun b!6100142 () Bool)

(assert (=> b!6100142 (= e!3720509 (= lt!2329053 call!504277))))

(declare-fun b!6100143 () Bool)

(declare-fun res!2531058 () Bool)

(assert (=> b!6100143 (=> (not res!2531058) (not e!3720511))))

(assert (=> b!6100143 (= res!2531058 (isEmpty!36243 (tail!11706 s!2326)))))

(declare-fun b!6100144 () Bool)

(assert (=> b!6100144 (= e!3720510 (not (= (head!12621 s!2326) (c!1095611 r!7292))))))

(declare-fun b!6100145 () Bool)

(declare-fun res!2531056 () Bool)

(assert (=> b!6100145 (=> (not res!2531056) (not e!3720511))))

(assert (=> b!6100145 (= res!2531056 (not call!504277))))

(assert (= (and d!1912142 c!1095668) b!6100138))

(assert (= (and d!1912142 (not c!1095668)) b!6100140))

(assert (= (and d!1912142 c!1095669) b!6100142))

(assert (= (and d!1912142 (not c!1095669)) b!6100132))

(assert (= (and b!6100132 c!1095667) b!6100136))

(assert (= (and b!6100132 (not c!1095667)) b!6100133))

(assert (= (and b!6100133 (not res!2531055)) b!6100137))

(assert (= (and b!6100137 res!2531052) b!6100145))

(assert (= (and b!6100145 res!2531056) b!6100143))

(assert (= (and b!6100143 res!2531058) b!6100141))

(assert (= (and b!6100137 (not res!2531057)) b!6100135))

(assert (= (and b!6100135 res!2531059) b!6100139))

(assert (= (and b!6100139 (not res!2531054)) b!6100134))

(assert (= (and b!6100134 (not res!2531053)) b!6100144))

(assert (= (or b!6100142 b!6100139 b!6100145) bm!504272))

(declare-fun m!6952854 () Bool)

(assert (=> b!6100143 m!6952854))

(assert (=> b!6100143 m!6952854))

(declare-fun m!6952856 () Bool)

(assert (=> b!6100143 m!6952856))

(declare-fun m!6952858 () Bool)

(assert (=> b!6100141 m!6952858))

(assert (=> bm!504272 m!6952840))

(declare-fun m!6952860 () Bool)

(assert (=> b!6100138 m!6952860))

(assert (=> b!6100140 m!6952858))

(assert (=> b!6100140 m!6952858))

(declare-fun m!6952862 () Bool)

(assert (=> b!6100140 m!6952862))

(assert (=> b!6100140 m!6952854))

(assert (=> b!6100140 m!6952862))

(assert (=> b!6100140 m!6952854))

(declare-fun m!6952864 () Bool)

(assert (=> b!6100140 m!6952864))

(assert (=> b!6100134 m!6952854))

(assert (=> b!6100134 m!6952854))

(assert (=> b!6100134 m!6952856))

(assert (=> d!1912142 m!6952840))

(assert (=> d!1912142 m!6952668))

(assert (=> b!6100144 m!6952858))

(assert (=> b!6099878 d!1912142))

(declare-fun d!1912146 () Bool)

(assert (=> d!1912146 (= (matchR!8231 r!7292 s!2326) (matchRSpec!3149 r!7292 s!2326))))

(declare-fun lt!2329059 () Unit!157367)

(declare-fun choose!45346 (Regex!16048 List!64445) Unit!157367)

(assert (=> d!1912146 (= lt!2329059 (choose!45346 r!7292 s!2326))))

(assert (=> d!1912146 (validRegex!7784 r!7292)))

(assert (=> d!1912146 (= (mainMatchTheorem!3149 r!7292 s!2326) lt!2329059)))

(declare-fun bs!1514742 () Bool)

(assert (= bs!1514742 d!1912146))

(assert (=> bs!1514742 m!6952672))

(assert (=> bs!1514742 m!6952670))

(declare-fun m!6952870 () Bool)

(assert (=> bs!1514742 m!6952870))

(assert (=> bs!1514742 m!6952668))

(assert (=> b!6099878 d!1912146))

(declare-fun d!1912154 () Bool)

(declare-fun e!3720518 () Bool)

(assert (=> d!1912154 e!3720518))

(declare-fun res!2531062 () Bool)

(assert (=> d!1912154 (=> (not res!2531062) (not e!3720518))))

(declare-fun lt!2329062 () List!64444)

(declare-fun noDuplicate!1897 (List!64444) Bool)

(assert (=> d!1912154 (= res!2531062 (noDuplicate!1897 lt!2329062))))

(declare-fun choose!45347 ((Set Context!10864)) List!64444)

(assert (=> d!1912154 (= lt!2329062 (choose!45347 z!1189))))

(assert (=> d!1912154 (= (toList!9832 z!1189) lt!2329062)))

(declare-fun b!6100148 () Bool)

(declare-fun content!11926 (List!64444) (Set Context!10864))

(assert (=> b!6100148 (= e!3720518 (= (content!11926 lt!2329062) z!1189))))

(assert (= (and d!1912154 res!2531062) b!6100148))

(declare-fun m!6952872 () Bool)

(assert (=> d!1912154 m!6952872))

(declare-fun m!6952874 () Bool)

(assert (=> d!1912154 m!6952874))

(declare-fun m!6952876 () Bool)

(assert (=> b!6100148 m!6952876))

(assert (=> b!6099869 d!1912154))

(declare-fun b!6100177 () Bool)

(declare-fun e!3720544 () Bool)

(declare-fun e!3720540 () Bool)

(assert (=> b!6100177 (= e!3720544 e!3720540)))

(declare-fun res!2531076 () Bool)

(assert (=> b!6100177 (= res!2531076 (not (nullable!6043 (reg!16377 r!7292))))))

(assert (=> b!6100177 (=> (not res!2531076) (not e!3720540))))

(declare-fun b!6100178 () Bool)

(declare-fun call!504287 () Bool)

(assert (=> b!6100178 (= e!3720540 call!504287)))

(declare-fun bm!504281 () Bool)

(declare-fun c!1095679 () Bool)

(declare-fun c!1095678 () Bool)

(assert (=> bm!504281 (= call!504287 (validRegex!7784 (ite c!1095679 (reg!16377 r!7292) (ite c!1095678 (regTwo!32609 r!7292) (regTwo!32608 r!7292)))))))

(declare-fun b!6100179 () Bool)

(declare-fun e!3720542 () Bool)

(assert (=> b!6100179 (= e!3720544 e!3720542)))

(assert (=> b!6100179 (= c!1095678 (is-Union!16048 r!7292))))

(declare-fun d!1912156 () Bool)

(declare-fun res!2531077 () Bool)

(declare-fun e!3720541 () Bool)

(assert (=> d!1912156 (=> res!2531077 e!3720541)))

(assert (=> d!1912156 (= res!2531077 (is-ElementMatch!16048 r!7292))))

(assert (=> d!1912156 (= (validRegex!7784 r!7292) e!3720541)))

(declare-fun bm!504282 () Bool)

(declare-fun call!504286 () Bool)

(assert (=> bm!504282 (= call!504286 call!504287)))

(declare-fun bm!504283 () Bool)

(declare-fun call!504288 () Bool)

(assert (=> bm!504283 (= call!504288 (validRegex!7784 (ite c!1095678 (regOne!32609 r!7292) (regOne!32608 r!7292))))))

(declare-fun b!6100180 () Bool)

(declare-fun e!3720543 () Bool)

(assert (=> b!6100180 (= e!3720543 call!504286)))

(declare-fun b!6100181 () Bool)

(declare-fun res!2531075 () Bool)

(declare-fun e!3720539 () Bool)

(assert (=> b!6100181 (=> res!2531075 e!3720539)))

(assert (=> b!6100181 (= res!2531075 (not (is-Concat!24893 r!7292)))))

(assert (=> b!6100181 (= e!3720542 e!3720539)))

(declare-fun b!6100182 () Bool)

(declare-fun e!3720545 () Bool)

(assert (=> b!6100182 (= e!3720545 call!504286)))

(declare-fun b!6100183 () Bool)

(declare-fun res!2531078 () Bool)

(assert (=> b!6100183 (=> (not res!2531078) (not e!3720545))))

(assert (=> b!6100183 (= res!2531078 call!504288)))

(assert (=> b!6100183 (= e!3720542 e!3720545)))

(declare-fun b!6100184 () Bool)

(assert (=> b!6100184 (= e!3720541 e!3720544)))

(assert (=> b!6100184 (= c!1095679 (is-Star!16048 r!7292))))

(declare-fun b!6100185 () Bool)

(assert (=> b!6100185 (= e!3720539 e!3720543)))

(declare-fun res!2531079 () Bool)

(assert (=> b!6100185 (=> (not res!2531079) (not e!3720543))))

(assert (=> b!6100185 (= res!2531079 call!504288)))

(assert (= (and d!1912156 (not res!2531077)) b!6100184))

(assert (= (and b!6100184 c!1095679) b!6100177))

(assert (= (and b!6100184 (not c!1095679)) b!6100179))

(assert (= (and b!6100177 res!2531076) b!6100178))

(assert (= (and b!6100179 c!1095678) b!6100183))

(assert (= (and b!6100179 (not c!1095678)) b!6100181))

(assert (= (and b!6100183 res!2531078) b!6100182))

(assert (= (and b!6100181 (not res!2531075)) b!6100185))

(assert (= (and b!6100185 res!2531079) b!6100180))

(assert (= (or b!6100182 b!6100180) bm!504282))

(assert (= (or b!6100183 b!6100185) bm!504283))

(assert (= (or b!6100178 bm!504282) bm!504281))

(declare-fun m!6952878 () Bool)

(assert (=> b!6100177 m!6952878))

(declare-fun m!6952880 () Bool)

(assert (=> bm!504281 m!6952880))

(declare-fun m!6952882 () Bool)

(assert (=> bm!504283 m!6952882))

(assert (=> start!609864 d!1912156))

(declare-fun d!1912158 () Bool)

(declare-fun c!1095684 () Bool)

(assert (=> d!1912158 (= c!1095684 (isEmpty!36243 s!2326))))

(declare-fun e!3720551 () Bool)

(assert (=> d!1912158 (= (matchZipper!2068 z!1189 s!2326) e!3720551)))

(declare-fun b!6100195 () Bool)

(declare-fun nullableZipper!1837 ((Set Context!10864)) Bool)

(assert (=> b!6100195 (= e!3720551 (nullableZipper!1837 z!1189))))

(declare-fun b!6100196 () Bool)

(assert (=> b!6100196 (= e!3720551 (matchZipper!2068 (derivationStepZipper!2029 z!1189 (head!12621 s!2326)) (tail!11706 s!2326)))))

(assert (= (and d!1912158 c!1095684) b!6100195))

(assert (= (and d!1912158 (not c!1095684)) b!6100196))

(assert (=> d!1912158 m!6952840))

(declare-fun m!6952890 () Bool)

(assert (=> b!6100195 m!6952890))

(assert (=> b!6100196 m!6952858))

(assert (=> b!6100196 m!6952858))

(declare-fun m!6952892 () Bool)

(assert (=> b!6100196 m!6952892))

(assert (=> b!6100196 m!6952854))

(assert (=> b!6100196 m!6952892))

(assert (=> b!6100196 m!6952854))

(declare-fun m!6952894 () Bool)

(assert (=> b!6100196 m!6952894))

(assert (=> b!6099853 d!1912158))

(declare-fun b!6100197 () Bool)

(declare-fun e!3720552 () Bool)

(declare-fun e!3720555 () Bool)

(assert (=> b!6100197 (= e!3720552 e!3720555)))

(declare-fun c!1095685 () Bool)

(assert (=> b!6100197 (= c!1095685 (is-EmptyLang!16048 (regTwo!32608 r!7292)))))

(declare-fun b!6100198 () Bool)

(declare-fun res!2531084 () Bool)

(declare-fun e!3720557 () Bool)

(assert (=> b!6100198 (=> res!2531084 e!3720557)))

(assert (=> b!6100198 (= res!2531084 (not (is-ElementMatch!16048 (regTwo!32608 r!7292))))))

(assert (=> b!6100198 (= e!3720555 e!3720557)))

(declare-fun b!6100199 () Bool)

(declare-fun res!2531082 () Bool)

(declare-fun e!3720553 () Bool)

(assert (=> b!6100199 (=> res!2531082 e!3720553)))

(assert (=> b!6100199 (= res!2531082 (not (isEmpty!36243 (tail!11706 s!2326))))))

(declare-fun bm!504285 () Bool)

(declare-fun call!504290 () Bool)

(assert (=> bm!504285 (= call!504290 (isEmpty!36243 s!2326))))

(declare-fun b!6100200 () Bool)

(declare-fun e!3720558 () Bool)

(assert (=> b!6100200 (= e!3720557 e!3720558)))

(declare-fun res!2531088 () Bool)

(assert (=> b!6100200 (=> (not res!2531088) (not e!3720558))))

(declare-fun lt!2329063 () Bool)

(assert (=> b!6100200 (= res!2531088 (not lt!2329063))))

(declare-fun d!1912162 () Bool)

(assert (=> d!1912162 e!3720552))

(declare-fun c!1095687 () Bool)

(assert (=> d!1912162 (= c!1095687 (is-EmptyExpr!16048 (regTwo!32608 r!7292)))))

(declare-fun e!3720556 () Bool)

(assert (=> d!1912162 (= lt!2329063 e!3720556)))

(declare-fun c!1095686 () Bool)

(assert (=> d!1912162 (= c!1095686 (isEmpty!36243 s!2326))))

(assert (=> d!1912162 (validRegex!7784 (regTwo!32608 r!7292))))

(assert (=> d!1912162 (= (matchR!8231 (regTwo!32608 r!7292) s!2326) lt!2329063)))

(declare-fun b!6100201 () Bool)

(assert (=> b!6100201 (= e!3720555 (not lt!2329063))))

(declare-fun b!6100202 () Bool)

(declare-fun res!2531086 () Bool)

(assert (=> b!6100202 (=> res!2531086 e!3720557)))

(declare-fun e!3720554 () Bool)

(assert (=> b!6100202 (= res!2531086 e!3720554)))

(declare-fun res!2531081 () Bool)

(assert (=> b!6100202 (=> (not res!2531081) (not e!3720554))))

(assert (=> b!6100202 (= res!2531081 lt!2329063)))

(declare-fun b!6100203 () Bool)

(assert (=> b!6100203 (= e!3720556 (nullable!6043 (regTwo!32608 r!7292)))))

(declare-fun b!6100204 () Bool)

(assert (=> b!6100204 (= e!3720558 e!3720553)))

(declare-fun res!2531083 () Bool)

(assert (=> b!6100204 (=> res!2531083 e!3720553)))

(assert (=> b!6100204 (= res!2531083 call!504290)))

(declare-fun b!6100205 () Bool)

(assert (=> b!6100205 (= e!3720556 (matchR!8231 (derivativeStep!4771 (regTwo!32608 r!7292) (head!12621 s!2326)) (tail!11706 s!2326)))))

(declare-fun b!6100206 () Bool)

(assert (=> b!6100206 (= e!3720554 (= (head!12621 s!2326) (c!1095611 (regTwo!32608 r!7292))))))

(declare-fun b!6100207 () Bool)

(assert (=> b!6100207 (= e!3720552 (= lt!2329063 call!504290))))

(declare-fun b!6100208 () Bool)

(declare-fun res!2531087 () Bool)

(assert (=> b!6100208 (=> (not res!2531087) (not e!3720554))))

(assert (=> b!6100208 (= res!2531087 (isEmpty!36243 (tail!11706 s!2326)))))

(declare-fun b!6100209 () Bool)

(assert (=> b!6100209 (= e!3720553 (not (= (head!12621 s!2326) (c!1095611 (regTwo!32608 r!7292)))))))

(declare-fun b!6100210 () Bool)

(declare-fun res!2531085 () Bool)

(assert (=> b!6100210 (=> (not res!2531085) (not e!3720554))))

(assert (=> b!6100210 (= res!2531085 (not call!504290))))

(assert (= (and d!1912162 c!1095686) b!6100203))

(assert (= (and d!1912162 (not c!1095686)) b!6100205))

(assert (= (and d!1912162 c!1095687) b!6100207))

(assert (= (and d!1912162 (not c!1095687)) b!6100197))

(assert (= (and b!6100197 c!1095685) b!6100201))

(assert (= (and b!6100197 (not c!1095685)) b!6100198))

(assert (= (and b!6100198 (not res!2531084)) b!6100202))

(assert (= (and b!6100202 res!2531081) b!6100210))

(assert (= (and b!6100210 res!2531085) b!6100208))

(assert (= (and b!6100208 res!2531087) b!6100206))

(assert (= (and b!6100202 (not res!2531086)) b!6100200))

(assert (= (and b!6100200 res!2531088) b!6100204))

(assert (= (and b!6100204 (not res!2531083)) b!6100199))

(assert (= (and b!6100199 (not res!2531082)) b!6100209))

(assert (= (or b!6100207 b!6100204 b!6100210) bm!504285))

(assert (=> b!6100208 m!6952854))

(assert (=> b!6100208 m!6952854))

(assert (=> b!6100208 m!6952856))

(assert (=> b!6100206 m!6952858))

(assert (=> bm!504285 m!6952840))

(declare-fun m!6952896 () Bool)

(assert (=> b!6100203 m!6952896))

(assert (=> b!6100205 m!6952858))

(assert (=> b!6100205 m!6952858))

(declare-fun m!6952898 () Bool)

(assert (=> b!6100205 m!6952898))

(assert (=> b!6100205 m!6952854))

(assert (=> b!6100205 m!6952898))

(assert (=> b!6100205 m!6952854))

(declare-fun m!6952900 () Bool)

(assert (=> b!6100205 m!6952900))

(assert (=> b!6100199 m!6952854))

(assert (=> b!6100199 m!6952854))

(assert (=> b!6100199 m!6952856))

(assert (=> d!1912162 m!6952840))

(assert (=> d!1912162 m!6952704))

(assert (=> b!6100209 m!6952858))

(assert (=> b!6099853 d!1912162))

(declare-fun d!1912164 () Bool)

(declare-fun c!1095688 () Bool)

(assert (=> d!1912164 (= c!1095688 (isEmpty!36243 s!2326))))

(declare-fun e!3720559 () Bool)

(assert (=> d!1912164 (= (matchZipper!2068 lt!2328953 s!2326) e!3720559)))

(declare-fun b!6100211 () Bool)

(assert (=> b!6100211 (= e!3720559 (nullableZipper!1837 lt!2328953))))

(declare-fun b!6100212 () Bool)

(assert (=> b!6100212 (= e!3720559 (matchZipper!2068 (derivationStepZipper!2029 lt!2328953 (head!12621 s!2326)) (tail!11706 s!2326)))))

(assert (= (and d!1912164 c!1095688) b!6100211))

(assert (= (and d!1912164 (not c!1095688)) b!6100212))

(assert (=> d!1912164 m!6952840))

(declare-fun m!6952902 () Bool)

(assert (=> b!6100211 m!6952902))

(assert (=> b!6100212 m!6952858))

(assert (=> b!6100212 m!6952858))

(declare-fun m!6952904 () Bool)

(assert (=> b!6100212 m!6952904))

(assert (=> b!6100212 m!6952854))

(assert (=> b!6100212 m!6952904))

(assert (=> b!6100212 m!6952854))

(declare-fun m!6952906 () Bool)

(assert (=> b!6100212 m!6952906))

(assert (=> b!6099853 d!1912164))

(declare-fun d!1912166 () Bool)

(assert (=> d!1912166 (= (matchR!8231 (regTwo!32608 r!7292) s!2326) (matchZipper!2068 lt!2328953 s!2326))))

(declare-fun lt!2329069 () Unit!157367)

(declare-fun choose!45348 ((Set Context!10864) List!64444 Regex!16048 List!64445) Unit!157367)

(assert (=> d!1912166 (= lt!2329069 (choose!45348 lt!2328953 lt!2328940 (regTwo!32608 r!7292) s!2326))))

(assert (=> d!1912166 (validRegex!7784 (regTwo!32608 r!7292))))

(assert (=> d!1912166 (= (theoremZipperRegexEquiv!724 lt!2328953 lt!2328940 (regTwo!32608 r!7292) s!2326) lt!2329069)))

(declare-fun bs!1514744 () Bool)

(assert (= bs!1514744 d!1912166))

(assert (=> bs!1514744 m!6952718))

(assert (=> bs!1514744 m!6952720))

(declare-fun m!6952914 () Bool)

(assert (=> bs!1514744 m!6952914))

(assert (=> bs!1514744 m!6952704))

(assert (=> b!6099853 d!1912166))

(declare-fun d!1912170 () Bool)

(declare-fun lt!2329072 () Regex!16048)

(assert (=> d!1912170 (validRegex!7784 lt!2329072)))

(assert (=> d!1912170 (= lt!2329072 (generalisedUnion!1892 (unfocusZipperList!1469 zl!343)))))

(assert (=> d!1912170 (= (unfocusZipper!1790 zl!343) lt!2329072)))

(declare-fun bs!1514745 () Bool)

(assert (= bs!1514745 d!1912170))

(declare-fun m!6952916 () Bool)

(assert (=> bs!1514745 m!6952916))

(assert (=> bs!1514745 m!6952636))

(assert (=> bs!1514745 m!6952636))

(assert (=> bs!1514745 m!6952638))

(assert (=> b!6099862 d!1912170))

(declare-fun d!1912172 () Bool)

(assert (=> d!1912172 (= (isEmpty!36239 (t!377892 (exprs!5932 (h!70768 zl!343)))) (is-Nil!64319 (t!377892 (exprs!5932 (h!70768 zl!343)))))))

(assert (=> b!6099854 d!1912172))

(declare-fun b!6100213 () Bool)

(declare-fun e!3720565 () Bool)

(declare-fun e!3720561 () Bool)

(assert (=> b!6100213 (= e!3720565 e!3720561)))

(declare-fun res!2531090 () Bool)

(assert (=> b!6100213 (= res!2531090 (not (nullable!6043 (reg!16377 (regTwo!32608 r!7292)))))))

(assert (=> b!6100213 (=> (not res!2531090) (not e!3720561))))

(declare-fun b!6100214 () Bool)

(declare-fun call!504292 () Bool)

(assert (=> b!6100214 (= e!3720561 call!504292)))

(declare-fun c!1095690 () Bool)

(declare-fun c!1095689 () Bool)

(declare-fun bm!504286 () Bool)

(assert (=> bm!504286 (= call!504292 (validRegex!7784 (ite c!1095690 (reg!16377 (regTwo!32608 r!7292)) (ite c!1095689 (regTwo!32609 (regTwo!32608 r!7292)) (regTwo!32608 (regTwo!32608 r!7292))))))))

(declare-fun b!6100215 () Bool)

(declare-fun e!3720563 () Bool)

(assert (=> b!6100215 (= e!3720565 e!3720563)))

(assert (=> b!6100215 (= c!1095689 (is-Union!16048 (regTwo!32608 r!7292)))))

(declare-fun d!1912174 () Bool)

(declare-fun res!2531091 () Bool)

(declare-fun e!3720562 () Bool)

(assert (=> d!1912174 (=> res!2531091 e!3720562)))

(assert (=> d!1912174 (= res!2531091 (is-ElementMatch!16048 (regTwo!32608 r!7292)))))

(assert (=> d!1912174 (= (validRegex!7784 (regTwo!32608 r!7292)) e!3720562)))

(declare-fun bm!504287 () Bool)

(declare-fun call!504291 () Bool)

(assert (=> bm!504287 (= call!504291 call!504292)))

(declare-fun bm!504288 () Bool)

(declare-fun call!504293 () Bool)

(assert (=> bm!504288 (= call!504293 (validRegex!7784 (ite c!1095689 (regOne!32609 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292)))))))

(declare-fun b!6100216 () Bool)

(declare-fun e!3720564 () Bool)

(assert (=> b!6100216 (= e!3720564 call!504291)))

(declare-fun b!6100217 () Bool)

(declare-fun res!2531089 () Bool)

(declare-fun e!3720560 () Bool)

(assert (=> b!6100217 (=> res!2531089 e!3720560)))

(assert (=> b!6100217 (= res!2531089 (not (is-Concat!24893 (regTwo!32608 r!7292))))))

(assert (=> b!6100217 (= e!3720563 e!3720560)))

(declare-fun b!6100218 () Bool)

(declare-fun e!3720566 () Bool)

(assert (=> b!6100218 (= e!3720566 call!504291)))

(declare-fun b!6100219 () Bool)

(declare-fun res!2531092 () Bool)

(assert (=> b!6100219 (=> (not res!2531092) (not e!3720566))))

(assert (=> b!6100219 (= res!2531092 call!504293)))

(assert (=> b!6100219 (= e!3720563 e!3720566)))

(declare-fun b!6100220 () Bool)

(assert (=> b!6100220 (= e!3720562 e!3720565)))

(assert (=> b!6100220 (= c!1095690 (is-Star!16048 (regTwo!32608 r!7292)))))

(declare-fun b!6100221 () Bool)

(assert (=> b!6100221 (= e!3720560 e!3720564)))

(declare-fun res!2531093 () Bool)

(assert (=> b!6100221 (=> (not res!2531093) (not e!3720564))))

(assert (=> b!6100221 (= res!2531093 call!504293)))

(assert (= (and d!1912174 (not res!2531091)) b!6100220))

(assert (= (and b!6100220 c!1095690) b!6100213))

(assert (= (and b!6100220 (not c!1095690)) b!6100215))

(assert (= (and b!6100213 res!2531090) b!6100214))

(assert (= (and b!6100215 c!1095689) b!6100219))

(assert (= (and b!6100215 (not c!1095689)) b!6100217))

(assert (= (and b!6100219 res!2531092) b!6100218))

(assert (= (and b!6100217 (not res!2531089)) b!6100221))

(assert (= (and b!6100221 res!2531093) b!6100216))

(assert (= (or b!6100218 b!6100216) bm!504287))

(assert (= (or b!6100219 b!6100221) bm!504288))

(assert (= (or b!6100214 bm!504287) bm!504286))

(declare-fun m!6952918 () Bool)

(assert (=> b!6100213 m!6952918))

(declare-fun m!6952920 () Bool)

(assert (=> bm!504286 m!6952920))

(declare-fun m!6952922 () Bool)

(assert (=> bm!504288 m!6952922))

(assert (=> b!6099864 d!1912174))

(declare-fun b!6100222 () Bool)

(declare-fun e!3720567 () Bool)

(declare-fun e!3720570 () Bool)

(assert (=> b!6100222 (= e!3720567 e!3720570)))

(declare-fun c!1095691 () Bool)

(assert (=> b!6100222 (= c!1095691 (is-EmptyLang!16048 lt!2328943))))

(declare-fun b!6100223 () Bool)

(declare-fun res!2531097 () Bool)

(declare-fun e!3720572 () Bool)

(assert (=> b!6100223 (=> res!2531097 e!3720572)))

(assert (=> b!6100223 (= res!2531097 (not (is-ElementMatch!16048 lt!2328943)))))

(assert (=> b!6100223 (= e!3720570 e!3720572)))

(declare-fun b!6100224 () Bool)

(declare-fun res!2531095 () Bool)

(declare-fun e!3720568 () Bool)

(assert (=> b!6100224 (=> res!2531095 e!3720568)))

(assert (=> b!6100224 (= res!2531095 (not (isEmpty!36243 (tail!11706 s!2326))))))

(declare-fun bm!504289 () Bool)

(declare-fun call!504294 () Bool)

(assert (=> bm!504289 (= call!504294 (isEmpty!36243 s!2326))))

(declare-fun b!6100225 () Bool)

(declare-fun e!3720573 () Bool)

(assert (=> b!6100225 (= e!3720572 e!3720573)))

(declare-fun res!2531101 () Bool)

(assert (=> b!6100225 (=> (not res!2531101) (not e!3720573))))

(declare-fun lt!2329073 () Bool)

(assert (=> b!6100225 (= res!2531101 (not lt!2329073))))

(declare-fun d!1912176 () Bool)

(assert (=> d!1912176 e!3720567))

(declare-fun c!1095693 () Bool)

(assert (=> d!1912176 (= c!1095693 (is-EmptyExpr!16048 lt!2328943))))

(declare-fun e!3720571 () Bool)

(assert (=> d!1912176 (= lt!2329073 e!3720571)))

(declare-fun c!1095692 () Bool)

(assert (=> d!1912176 (= c!1095692 (isEmpty!36243 s!2326))))

(assert (=> d!1912176 (validRegex!7784 lt!2328943)))

(assert (=> d!1912176 (= (matchR!8231 lt!2328943 s!2326) lt!2329073)))

(declare-fun b!6100226 () Bool)

(assert (=> b!6100226 (= e!3720570 (not lt!2329073))))

(declare-fun b!6100227 () Bool)

(declare-fun res!2531099 () Bool)

(assert (=> b!6100227 (=> res!2531099 e!3720572)))

(declare-fun e!3720569 () Bool)

(assert (=> b!6100227 (= res!2531099 e!3720569)))

(declare-fun res!2531094 () Bool)

(assert (=> b!6100227 (=> (not res!2531094) (not e!3720569))))

(assert (=> b!6100227 (= res!2531094 lt!2329073)))

(declare-fun b!6100228 () Bool)

(assert (=> b!6100228 (= e!3720571 (nullable!6043 lt!2328943))))

(declare-fun b!6100229 () Bool)

(assert (=> b!6100229 (= e!3720573 e!3720568)))

(declare-fun res!2531096 () Bool)

(assert (=> b!6100229 (=> res!2531096 e!3720568)))

(assert (=> b!6100229 (= res!2531096 call!504294)))

(declare-fun b!6100230 () Bool)

(assert (=> b!6100230 (= e!3720571 (matchR!8231 (derivativeStep!4771 lt!2328943 (head!12621 s!2326)) (tail!11706 s!2326)))))

(declare-fun b!6100231 () Bool)

(assert (=> b!6100231 (= e!3720569 (= (head!12621 s!2326) (c!1095611 lt!2328943)))))

(declare-fun b!6100232 () Bool)

(assert (=> b!6100232 (= e!3720567 (= lt!2329073 call!504294))))

(declare-fun b!6100233 () Bool)

(declare-fun res!2531100 () Bool)

(assert (=> b!6100233 (=> (not res!2531100) (not e!3720569))))

(assert (=> b!6100233 (= res!2531100 (isEmpty!36243 (tail!11706 s!2326)))))

(declare-fun b!6100234 () Bool)

(assert (=> b!6100234 (= e!3720568 (not (= (head!12621 s!2326) (c!1095611 lt!2328943))))))

(declare-fun b!6100235 () Bool)

(declare-fun res!2531098 () Bool)

(assert (=> b!6100235 (=> (not res!2531098) (not e!3720569))))

(assert (=> b!6100235 (= res!2531098 (not call!504294))))

(assert (= (and d!1912176 c!1095692) b!6100228))

(assert (= (and d!1912176 (not c!1095692)) b!6100230))

(assert (= (and d!1912176 c!1095693) b!6100232))

(assert (= (and d!1912176 (not c!1095693)) b!6100222))

(assert (= (and b!6100222 c!1095691) b!6100226))

(assert (= (and b!6100222 (not c!1095691)) b!6100223))

(assert (= (and b!6100223 (not res!2531097)) b!6100227))

(assert (= (and b!6100227 res!2531094) b!6100235))

(assert (= (and b!6100235 res!2531098) b!6100233))

(assert (= (and b!6100233 res!2531100) b!6100231))

(assert (= (and b!6100227 (not res!2531099)) b!6100225))

(assert (= (and b!6100225 res!2531101) b!6100229))

(assert (= (and b!6100229 (not res!2531096)) b!6100224))

(assert (= (and b!6100224 (not res!2531095)) b!6100234))

(assert (= (or b!6100232 b!6100229 b!6100235) bm!504289))

(assert (=> b!6100233 m!6952854))

(assert (=> b!6100233 m!6952854))

(assert (=> b!6100233 m!6952856))

(assert (=> b!6100231 m!6952858))

(assert (=> bm!504289 m!6952840))

(declare-fun m!6952924 () Bool)

(assert (=> b!6100228 m!6952924))

(assert (=> b!6100230 m!6952858))

(assert (=> b!6100230 m!6952858))

(declare-fun m!6952926 () Bool)

(assert (=> b!6100230 m!6952926))

(assert (=> b!6100230 m!6952854))

(assert (=> b!6100230 m!6952926))

(assert (=> b!6100230 m!6952854))

(declare-fun m!6952928 () Bool)

(assert (=> b!6100230 m!6952928))

(assert (=> b!6100224 m!6952854))

(assert (=> b!6100224 m!6952854))

(assert (=> b!6100224 m!6952856))

(assert (=> d!1912176 m!6952840))

(declare-fun m!6952930 () Bool)

(assert (=> d!1912176 m!6952930))

(assert (=> b!6100234 m!6952858))

(assert (=> b!6099864 d!1912176))

(declare-fun d!1912178 () Bool)

(declare-fun c!1095696 () Bool)

(assert (=> d!1912178 (= c!1095696 (isEmpty!36243 s!2326))))

(declare-fun e!3720576 () Bool)

(assert (=> d!1912178 (= (matchZipper!2068 lt!2328945 s!2326) e!3720576)))

(declare-fun b!6100240 () Bool)

(assert (=> b!6100240 (= e!3720576 (nullableZipper!1837 lt!2328945))))

(declare-fun b!6100241 () Bool)

(assert (=> b!6100241 (= e!3720576 (matchZipper!2068 (derivationStepZipper!2029 lt!2328945 (head!12621 s!2326)) (tail!11706 s!2326)))))

(assert (= (and d!1912178 c!1095696) b!6100240))

(assert (= (and d!1912178 (not c!1095696)) b!6100241))

(assert (=> d!1912178 m!6952840))

(declare-fun m!6952932 () Bool)

(assert (=> b!6100240 m!6952932))

(assert (=> b!6100241 m!6952858))

(assert (=> b!6100241 m!6952858))

(declare-fun m!6952934 () Bool)

(assert (=> b!6100241 m!6952934))

(assert (=> b!6100241 m!6952854))

(assert (=> b!6100241 m!6952934))

(assert (=> b!6100241 m!6952854))

(declare-fun m!6952936 () Bool)

(assert (=> b!6100241 m!6952936))

(assert (=> b!6099864 d!1912178))

(declare-fun d!1912180 () Bool)

(assert (=> d!1912180 (= (matchR!8231 lt!2328943 s!2326) (matchZipper!2068 lt!2328945 s!2326))))

(declare-fun lt!2329074 () Unit!157367)

(assert (=> d!1912180 (= lt!2329074 (choose!45348 lt!2328945 lt!2328937 lt!2328943 s!2326))))

(assert (=> d!1912180 (validRegex!7784 lt!2328943)))

(assert (=> d!1912180 (= (theoremZipperRegexEquiv!724 lt!2328945 lt!2328937 lt!2328943 s!2326) lt!2329074)))

(declare-fun bs!1514746 () Bool)

(assert (= bs!1514746 d!1912180))

(assert (=> bs!1514746 m!6952706))

(assert (=> bs!1514746 m!6952708))

(declare-fun m!6952938 () Bool)

(assert (=> bs!1514746 m!6952938))

(assert (=> bs!1514746 m!6952930))

(assert (=> b!6099864 d!1912180))

(declare-fun d!1912182 () Bool)

(declare-fun lt!2329075 () Regex!16048)

(assert (=> d!1912182 (validRegex!7784 lt!2329075)))

(assert (=> d!1912182 (= lt!2329075 (generalisedUnion!1892 (unfocusZipperList!1469 lt!2328940)))))

(assert (=> d!1912182 (= (unfocusZipper!1790 lt!2328940) lt!2329075)))

(declare-fun bs!1514747 () Bool)

(assert (= bs!1514747 d!1912182))

(declare-fun m!6952940 () Bool)

(assert (=> bs!1514747 m!6952940))

(declare-fun m!6952942 () Bool)

(assert (=> bs!1514747 m!6952942))

(assert (=> bs!1514747 m!6952942))

(declare-fun m!6952944 () Bool)

(assert (=> bs!1514747 m!6952944))

(assert (=> b!6099863 d!1912182))

(declare-fun d!1912184 () Bool)

(declare-fun c!1095698 () Bool)

(declare-fun e!3720578 () Bool)

(assert (=> d!1912184 (= c!1095698 e!3720578)))

(declare-fun res!2531102 () Bool)

(assert (=> d!1912184 (=> (not res!2531102) (not e!3720578))))

(assert (=> d!1912184 (= res!2531102 (is-Cons!64319 (exprs!5932 lt!2328952)))))

(declare-fun e!3720579 () (Set Context!10864))

(assert (=> d!1912184 (= (derivationStepZipperUp!1224 lt!2328952 (h!70769 s!2326)) e!3720579)))

(declare-fun b!6100242 () Bool)

(declare-fun e!3720577 () (Set Context!10864))

(assert (=> b!6100242 (= e!3720577 (as set.empty (Set Context!10864)))))

(declare-fun b!6100243 () Bool)

(assert (=> b!6100243 (= e!3720578 (nullable!6043 (h!70767 (exprs!5932 lt!2328952))))))

(declare-fun b!6100244 () Bool)

(declare-fun call!504295 () (Set Context!10864))

(assert (=> b!6100244 (= e!3720577 call!504295)))

(declare-fun b!6100245 () Bool)

(assert (=> b!6100245 (= e!3720579 e!3720577)))

(declare-fun c!1095697 () Bool)

(assert (=> b!6100245 (= c!1095697 (is-Cons!64319 (exprs!5932 lt!2328952)))))

(declare-fun bm!504290 () Bool)

(assert (=> bm!504290 (= call!504295 (derivationStepZipperDown!1298 (h!70767 (exprs!5932 lt!2328952)) (Context!10865 (t!377892 (exprs!5932 lt!2328952))) (h!70769 s!2326)))))

(declare-fun b!6100246 () Bool)

(assert (=> b!6100246 (= e!3720579 (set.union call!504295 (derivationStepZipperUp!1224 (Context!10865 (t!377892 (exprs!5932 lt!2328952))) (h!70769 s!2326))))))

(assert (= (and d!1912184 res!2531102) b!6100243))

(assert (= (and d!1912184 c!1095698) b!6100246))

(assert (= (and d!1912184 (not c!1095698)) b!6100245))

(assert (= (and b!6100245 c!1095697) b!6100244))

(assert (= (and b!6100245 (not c!1095697)) b!6100242))

(assert (= (or b!6100246 b!6100244) bm!504290))

(declare-fun m!6952946 () Bool)

(assert (=> b!6100243 m!6952946))

(declare-fun m!6952948 () Bool)

(assert (=> bm!504290 m!6952948))

(declare-fun m!6952950 () Bool)

(assert (=> b!6100246 m!6952950))

(assert (=> b!6099873 d!1912184))

(declare-fun d!1912186 () Bool)

(declare-fun c!1095700 () Bool)

(declare-fun e!3720581 () Bool)

(assert (=> d!1912186 (= c!1095700 e!3720581)))

(declare-fun res!2531103 () Bool)

(assert (=> d!1912186 (=> (not res!2531103) (not e!3720581))))

(assert (=> d!1912186 (= res!2531103 (is-Cons!64319 (exprs!5932 lt!2328944)))))

(declare-fun e!3720582 () (Set Context!10864))

(assert (=> d!1912186 (= (derivationStepZipperUp!1224 lt!2328944 (h!70769 s!2326)) e!3720582)))

(declare-fun b!6100247 () Bool)

(declare-fun e!3720580 () (Set Context!10864))

(assert (=> b!6100247 (= e!3720580 (as set.empty (Set Context!10864)))))

(declare-fun b!6100248 () Bool)

(assert (=> b!6100248 (= e!3720581 (nullable!6043 (h!70767 (exprs!5932 lt!2328944))))))

(declare-fun b!6100249 () Bool)

(declare-fun call!504296 () (Set Context!10864))

(assert (=> b!6100249 (= e!3720580 call!504296)))

(declare-fun b!6100250 () Bool)

(assert (=> b!6100250 (= e!3720582 e!3720580)))

(declare-fun c!1095699 () Bool)

(assert (=> b!6100250 (= c!1095699 (is-Cons!64319 (exprs!5932 lt!2328944)))))

(declare-fun bm!504291 () Bool)

(assert (=> bm!504291 (= call!504296 (derivationStepZipperDown!1298 (h!70767 (exprs!5932 lt!2328944)) (Context!10865 (t!377892 (exprs!5932 lt!2328944))) (h!70769 s!2326)))))

(declare-fun b!6100251 () Bool)

(assert (=> b!6100251 (= e!3720582 (set.union call!504296 (derivationStepZipperUp!1224 (Context!10865 (t!377892 (exprs!5932 lt!2328944))) (h!70769 s!2326))))))

(assert (= (and d!1912186 res!2531103) b!6100248))

(assert (= (and d!1912186 c!1095700) b!6100251))

(assert (= (and d!1912186 (not c!1095700)) b!6100250))

(assert (= (and b!6100250 c!1095699) b!6100249))

(assert (= (and b!6100250 (not c!1095699)) b!6100247))

(assert (= (or b!6100251 b!6100249) bm!504291))

(declare-fun m!6952952 () Bool)

(assert (=> b!6100248 m!6952952))

(declare-fun m!6952954 () Bool)

(assert (=> bm!504291 m!6952954))

(declare-fun m!6952956 () Bool)

(assert (=> b!6100251 m!6952956))

(assert (=> b!6099873 d!1912186))

(declare-fun d!1912188 () Bool)

(declare-fun nullableFct!2007 (Regex!16048) Bool)

(assert (=> d!1912188 (= (nullable!6043 (regOne!32608 r!7292)) (nullableFct!2007 (regOne!32608 r!7292)))))

(declare-fun bs!1514748 () Bool)

(assert (= bs!1514748 d!1912188))

(declare-fun m!6952966 () Bool)

(assert (=> bs!1514748 m!6952966))

(assert (=> b!6099873 d!1912188))

(declare-fun d!1912190 () Bool)

(declare-fun choose!45349 ((Set Context!10864) Int) (Set Context!10864))

(assert (=> d!1912190 (= (flatMap!1561 lt!2328945 lambda!332228) (choose!45349 lt!2328945 lambda!332228))))

(declare-fun bs!1514749 () Bool)

(assert (= bs!1514749 d!1912190))

(declare-fun m!6952972 () Bool)

(assert (=> bs!1514749 m!6952972))

(assert (=> b!6099873 d!1912190))

(declare-fun d!1912194 () Bool)

(assert (=> d!1912194 (= (flatMap!1561 lt!2328953 lambda!332228) (choose!45349 lt!2328953 lambda!332228))))

(declare-fun bs!1514750 () Bool)

(assert (= bs!1514750 d!1912194))

(declare-fun m!6952974 () Bool)

(assert (=> bs!1514750 m!6952974))

(assert (=> b!6099873 d!1912194))

(declare-fun d!1912196 () Bool)

(declare-fun dynLambda!25323 (Int Context!10864) (Set Context!10864))

(assert (=> d!1912196 (= (flatMap!1561 lt!2328953 lambda!332228) (dynLambda!25323 lambda!332228 lt!2328944))))

(declare-fun lt!2329078 () Unit!157367)

(declare-fun choose!45350 ((Set Context!10864) Context!10864 Int) Unit!157367)

(assert (=> d!1912196 (= lt!2329078 (choose!45350 lt!2328953 lt!2328944 lambda!332228))))

(assert (=> d!1912196 (= lt!2328953 (set.insert lt!2328944 (as set.empty (Set Context!10864))))))

(assert (=> d!1912196 (= (lemmaFlatMapOnSingletonSet!1087 lt!2328953 lt!2328944 lambda!332228) lt!2329078)))

(declare-fun b_lambda!232395 () Bool)

(assert (=> (not b_lambda!232395) (not d!1912196)))

(declare-fun bs!1514751 () Bool)

(assert (= bs!1514751 d!1912196))

(assert (=> bs!1514751 m!6952650))

(declare-fun m!6952976 () Bool)

(assert (=> bs!1514751 m!6952976))

(declare-fun m!6952978 () Bool)

(assert (=> bs!1514751 m!6952978))

(assert (=> bs!1514751 m!6952652))

(assert (=> b!6099873 d!1912196))

(declare-fun b!6100254 () Bool)

(declare-fun e!3720585 () (Set Context!10864))

(declare-fun call!504297 () (Set Context!10864))

(declare-fun call!504301 () (Set Context!10864))

(assert (=> b!6100254 (= e!3720585 (set.union call!504297 call!504301))))

(declare-fun call!504302 () List!64443)

(declare-fun bm!504292 () Bool)

(declare-fun c!1095703 () Bool)

(assert (=> bm!504292 (= call!504297 (derivationStepZipperDown!1298 (ite c!1095703 (regOne!32609 (regOne!32608 r!7292)) (regOne!32608 (regOne!32608 r!7292))) (ite c!1095703 lt!2328944 (Context!10865 call!504302)) (h!70769 s!2326)))))

(declare-fun b!6100255 () Bool)

(declare-fun c!1095702 () Bool)

(assert (=> b!6100255 (= c!1095702 (is-Star!16048 (regOne!32608 r!7292)))))

(declare-fun e!3720587 () (Set Context!10864))

(declare-fun e!3720589 () (Set Context!10864))

(assert (=> b!6100255 (= e!3720587 e!3720589)))

(declare-fun b!6100256 () Bool)

(declare-fun e!3720586 () Bool)

(assert (=> b!6100256 (= e!3720586 (nullable!6043 (regOne!32608 (regOne!32608 r!7292))))))

(declare-fun d!1912198 () Bool)

(declare-fun c!1095705 () Bool)

(assert (=> d!1912198 (= c!1095705 (and (is-ElementMatch!16048 (regOne!32608 r!7292)) (= (c!1095611 (regOne!32608 r!7292)) (h!70769 s!2326))))))

(declare-fun e!3720584 () (Set Context!10864))

(assert (=> d!1912198 (= (derivationStepZipperDown!1298 (regOne!32608 r!7292) lt!2328944 (h!70769 s!2326)) e!3720584)))

(declare-fun b!6100257 () Bool)

(declare-fun e!3720588 () (Set Context!10864))

(declare-fun call!504298 () (Set Context!10864))

(assert (=> b!6100257 (= e!3720588 (set.union call!504297 call!504298))))

(declare-fun b!6100258 () Bool)

(assert (=> b!6100258 (= e!3720584 e!3720585)))

(assert (=> b!6100258 (= c!1095703 (is-Union!16048 (regOne!32608 r!7292)))))

(declare-fun b!6100259 () Bool)

(assert (=> b!6100259 (= e!3720584 (set.insert lt!2328944 (as set.empty (Set Context!10864))))))

(declare-fun b!6100260 () Bool)

(declare-fun c!1095704 () Bool)

(assert (=> b!6100260 (= c!1095704 e!3720586)))

(declare-fun res!2531104 () Bool)

(assert (=> b!6100260 (=> (not res!2531104) (not e!3720586))))

(assert (=> b!6100260 (= res!2531104 (is-Concat!24893 (regOne!32608 r!7292)))))

(assert (=> b!6100260 (= e!3720585 e!3720588)))

(declare-fun bm!504293 () Bool)

(declare-fun call!504299 () List!64443)

(assert (=> bm!504293 (= call!504299 call!504302)))

(declare-fun b!6100261 () Bool)

(assert (=> b!6100261 (= e!3720588 e!3720587)))

(declare-fun c!1095706 () Bool)

(assert (=> b!6100261 (= c!1095706 (is-Concat!24893 (regOne!32608 r!7292)))))

(declare-fun b!6100262 () Bool)

(declare-fun call!504300 () (Set Context!10864))

(assert (=> b!6100262 (= e!3720589 call!504300)))

(declare-fun b!6100263 () Bool)

(assert (=> b!6100263 (= e!3720587 call!504300)))

(declare-fun bm!504294 () Bool)

(assert (=> bm!504294 (= call!504300 call!504298)))

(declare-fun bm!504295 () Bool)

(assert (=> bm!504295 (= call!504301 (derivationStepZipperDown!1298 (ite c!1095703 (regTwo!32609 (regOne!32608 r!7292)) (ite c!1095704 (regTwo!32608 (regOne!32608 r!7292)) (ite c!1095706 (regOne!32608 (regOne!32608 r!7292)) (reg!16377 (regOne!32608 r!7292))))) (ite (or c!1095703 c!1095704) lt!2328944 (Context!10865 call!504299)) (h!70769 s!2326)))))

(declare-fun bm!504296 () Bool)

(assert (=> bm!504296 (= call!504298 call!504301)))

(declare-fun bm!504297 () Bool)

(assert (=> bm!504297 (= call!504302 ($colon$colon!1927 (exprs!5932 lt!2328944) (ite (or c!1095704 c!1095706) (regTwo!32608 (regOne!32608 r!7292)) (regOne!32608 r!7292))))))

(declare-fun b!6100264 () Bool)

(assert (=> b!6100264 (= e!3720589 (as set.empty (Set Context!10864)))))

(assert (= (and d!1912198 c!1095705) b!6100259))

(assert (= (and d!1912198 (not c!1095705)) b!6100258))

(assert (= (and b!6100258 c!1095703) b!6100254))

(assert (= (and b!6100258 (not c!1095703)) b!6100260))

(assert (= (and b!6100260 res!2531104) b!6100256))

(assert (= (and b!6100260 c!1095704) b!6100257))

(assert (= (and b!6100260 (not c!1095704)) b!6100261))

(assert (= (and b!6100261 c!1095706) b!6100263))

(assert (= (and b!6100261 (not c!1095706)) b!6100255))

(assert (= (and b!6100255 c!1095702) b!6100262))

(assert (= (and b!6100255 (not c!1095702)) b!6100264))

(assert (= (or b!6100263 b!6100262) bm!504293))

(assert (= (or b!6100263 b!6100262) bm!504294))

(assert (= (or b!6100257 bm!504293) bm!504297))

(assert (= (or b!6100257 bm!504294) bm!504296))

(assert (= (or b!6100254 bm!504296) bm!504295))

(assert (= (or b!6100254 b!6100257) bm!504292))

(declare-fun m!6952980 () Bool)

(assert (=> b!6100256 m!6952980))

(declare-fun m!6952982 () Bool)

(assert (=> bm!504292 m!6952982))

(declare-fun m!6952984 () Bool)

(assert (=> bm!504295 m!6952984))

(assert (=> b!6100259 m!6952652))

(declare-fun m!6952986 () Bool)

(assert (=> bm!504297 m!6952986))

(assert (=> b!6099873 d!1912198))

(declare-fun d!1912200 () Bool)

(assert (=> d!1912200 (= (flatMap!1561 lt!2328945 lambda!332228) (dynLambda!25323 lambda!332228 lt!2328952))))

(declare-fun lt!2329079 () Unit!157367)

(assert (=> d!1912200 (= lt!2329079 (choose!45350 lt!2328945 lt!2328952 lambda!332228))))

(assert (=> d!1912200 (= lt!2328945 (set.insert lt!2328952 (as set.empty (Set Context!10864))))))

(assert (=> d!1912200 (= (lemmaFlatMapOnSingletonSet!1087 lt!2328945 lt!2328952 lambda!332228) lt!2329079)))

(declare-fun b_lambda!232397 () Bool)

(assert (=> (not b_lambda!232397) (not d!1912200)))

(declare-fun bs!1514752 () Bool)

(assert (= bs!1514752 d!1912200))

(assert (=> bs!1514752 m!6952662))

(declare-fun m!6952988 () Bool)

(assert (=> bs!1514752 m!6952988))

(declare-fun m!6952990 () Bool)

(assert (=> bs!1514752 m!6952990))

(assert (=> bs!1514752 m!6952664))

(assert (=> b!6099873 d!1912200))

(declare-fun b!6100265 () Bool)

(declare-fun e!3720591 () (Set Context!10864))

(declare-fun call!504303 () (Set Context!10864))

(declare-fun call!504307 () (Set Context!10864))

(assert (=> b!6100265 (= e!3720591 (set.union call!504303 call!504307))))

(declare-fun call!504308 () List!64443)

(declare-fun c!1095708 () Bool)

(declare-fun bm!504298 () Bool)

(assert (=> bm!504298 (= call!504303 (derivationStepZipperDown!1298 (ite c!1095708 (regOne!32609 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292))) (ite c!1095708 lt!2328949 (Context!10865 call!504308)) (h!70769 s!2326)))))

(declare-fun b!6100266 () Bool)

(declare-fun c!1095707 () Bool)

(assert (=> b!6100266 (= c!1095707 (is-Star!16048 (regTwo!32608 r!7292)))))

(declare-fun e!3720593 () (Set Context!10864))

(declare-fun e!3720595 () (Set Context!10864))

(assert (=> b!6100266 (= e!3720593 e!3720595)))

(declare-fun b!6100267 () Bool)

(declare-fun e!3720592 () Bool)

(assert (=> b!6100267 (= e!3720592 (nullable!6043 (regOne!32608 (regTwo!32608 r!7292))))))

(declare-fun d!1912202 () Bool)

(declare-fun c!1095710 () Bool)

(assert (=> d!1912202 (= c!1095710 (and (is-ElementMatch!16048 (regTwo!32608 r!7292)) (= (c!1095611 (regTwo!32608 r!7292)) (h!70769 s!2326))))))

(declare-fun e!3720590 () (Set Context!10864))

(assert (=> d!1912202 (= (derivationStepZipperDown!1298 (regTwo!32608 r!7292) lt!2328949 (h!70769 s!2326)) e!3720590)))

(declare-fun b!6100268 () Bool)

(declare-fun e!3720594 () (Set Context!10864))

(declare-fun call!504304 () (Set Context!10864))

(assert (=> b!6100268 (= e!3720594 (set.union call!504303 call!504304))))

(declare-fun b!6100269 () Bool)

(assert (=> b!6100269 (= e!3720590 e!3720591)))

(assert (=> b!6100269 (= c!1095708 (is-Union!16048 (regTwo!32608 r!7292)))))

(declare-fun b!6100270 () Bool)

(assert (=> b!6100270 (= e!3720590 (set.insert lt!2328949 (as set.empty (Set Context!10864))))))

(declare-fun b!6100271 () Bool)

(declare-fun c!1095709 () Bool)

(assert (=> b!6100271 (= c!1095709 e!3720592)))

(declare-fun res!2531105 () Bool)

(assert (=> b!6100271 (=> (not res!2531105) (not e!3720592))))

(assert (=> b!6100271 (= res!2531105 (is-Concat!24893 (regTwo!32608 r!7292)))))

(assert (=> b!6100271 (= e!3720591 e!3720594)))

(declare-fun bm!504299 () Bool)

(declare-fun call!504305 () List!64443)

(assert (=> bm!504299 (= call!504305 call!504308)))

(declare-fun b!6100272 () Bool)

(assert (=> b!6100272 (= e!3720594 e!3720593)))

(declare-fun c!1095711 () Bool)

(assert (=> b!6100272 (= c!1095711 (is-Concat!24893 (regTwo!32608 r!7292)))))

(declare-fun b!6100273 () Bool)

(declare-fun call!504306 () (Set Context!10864))

(assert (=> b!6100273 (= e!3720595 call!504306)))

(declare-fun b!6100274 () Bool)

(assert (=> b!6100274 (= e!3720593 call!504306)))

(declare-fun bm!504300 () Bool)

(assert (=> bm!504300 (= call!504306 call!504304)))

(declare-fun bm!504301 () Bool)

(assert (=> bm!504301 (= call!504307 (derivationStepZipperDown!1298 (ite c!1095708 (regTwo!32609 (regTwo!32608 r!7292)) (ite c!1095709 (regTwo!32608 (regTwo!32608 r!7292)) (ite c!1095711 (regOne!32608 (regTwo!32608 r!7292)) (reg!16377 (regTwo!32608 r!7292))))) (ite (or c!1095708 c!1095709) lt!2328949 (Context!10865 call!504305)) (h!70769 s!2326)))))

(declare-fun bm!504302 () Bool)

(assert (=> bm!504302 (= call!504304 call!504307)))

(declare-fun bm!504303 () Bool)

(assert (=> bm!504303 (= call!504308 ($colon$colon!1927 (exprs!5932 lt!2328949) (ite (or c!1095709 c!1095711) (regTwo!32608 (regTwo!32608 r!7292)) (regTwo!32608 r!7292))))))

(declare-fun b!6100275 () Bool)

(assert (=> b!6100275 (= e!3720595 (as set.empty (Set Context!10864)))))

(assert (= (and d!1912202 c!1095710) b!6100270))

(assert (= (and d!1912202 (not c!1095710)) b!6100269))

(assert (= (and b!6100269 c!1095708) b!6100265))

(assert (= (and b!6100269 (not c!1095708)) b!6100271))

(assert (= (and b!6100271 res!2531105) b!6100267))

(assert (= (and b!6100271 c!1095709) b!6100268))

(assert (= (and b!6100271 (not c!1095709)) b!6100272))

(assert (= (and b!6100272 c!1095711) b!6100274))

(assert (= (and b!6100272 (not c!1095711)) b!6100266))

(assert (= (and b!6100266 c!1095707) b!6100273))

(assert (= (and b!6100266 (not c!1095707)) b!6100275))

(assert (= (or b!6100274 b!6100273) bm!504299))

(assert (= (or b!6100274 b!6100273) bm!504300))

(assert (= (or b!6100268 bm!504299) bm!504303))

(assert (= (or b!6100268 bm!504300) bm!504302))

(assert (= (or b!6100265 bm!504302) bm!504301))

(assert (= (or b!6100265 b!6100268) bm!504298))

(declare-fun m!6952992 () Bool)

(assert (=> b!6100267 m!6952992))

(declare-fun m!6952994 () Bool)

(assert (=> bm!504298 m!6952994))

(declare-fun m!6952996 () Bool)

(assert (=> bm!504301 m!6952996))

(assert (=> b!6100270 m!6952828))

(declare-fun m!6952998 () Bool)

(assert (=> bm!504303 m!6952998))

(assert (=> b!6099873 d!1912202))

(declare-fun d!1912204 () Bool)

(declare-fun lambda!332255 () Int)

(declare-fun forall!15169 (List!64443 Int) Bool)

(assert (=> d!1912204 (= (inv!83368 setElem!41199) (forall!15169 (exprs!5932 setElem!41199) lambda!332255))))

(declare-fun bs!1514753 () Bool)

(assert (= bs!1514753 d!1912204))

(declare-fun m!6953000 () Bool)

(assert (=> bs!1514753 m!6953000))

(assert (=> setNonEmpty!41199 d!1912204))

(declare-fun bs!1514754 () Bool)

(declare-fun d!1912206 () Bool)

(assert (= bs!1514754 (and d!1912206 d!1912204)))

(declare-fun lambda!332256 () Int)

(assert (=> bs!1514754 (= lambda!332256 lambda!332255)))

(assert (=> d!1912206 (= (inv!83368 (h!70768 zl!343)) (forall!15169 (exprs!5932 (h!70768 zl!343)) lambda!332256))))

(declare-fun bs!1514755 () Bool)

(assert (= bs!1514755 d!1912206))

(declare-fun m!6953002 () Bool)

(assert (=> bs!1514755 m!6953002))

(assert (=> b!6099875 d!1912206))

(declare-fun d!1912208 () Bool)

(declare-fun e!3720596 () Bool)

(assert (=> d!1912208 e!3720596))

(declare-fun res!2531106 () Bool)

(assert (=> d!1912208 (=> (not res!2531106) (not e!3720596))))

(declare-fun lt!2329080 () List!64444)

(assert (=> d!1912208 (= res!2531106 (noDuplicate!1897 lt!2329080))))

(assert (=> d!1912208 (= lt!2329080 (choose!45347 lt!2328953))))

(assert (=> d!1912208 (= (toList!9832 lt!2328953) lt!2329080)))

(declare-fun b!6100276 () Bool)

(assert (=> b!6100276 (= e!3720596 (= (content!11926 lt!2329080) lt!2328953))))

(assert (= (and d!1912208 res!2531106) b!6100276))

(declare-fun m!6953004 () Bool)

(assert (=> d!1912208 m!6953004))

(declare-fun m!6953006 () Bool)

(assert (=> d!1912208 m!6953006))

(declare-fun m!6953008 () Bool)

(assert (=> b!6100276 m!6953008))

(assert (=> b!6099874 d!1912208))

(declare-fun bs!1514756 () Bool)

(declare-fun d!1912210 () Bool)

(assert (= bs!1514756 (and d!1912210 d!1912204)))

(declare-fun lambda!332259 () Int)

(assert (=> bs!1514756 (= lambda!332259 lambda!332255)))

(declare-fun bs!1514757 () Bool)

(assert (= bs!1514757 (and d!1912210 d!1912206)))

(assert (=> bs!1514757 (= lambda!332259 lambda!332256)))

(declare-fun b!6100325 () Bool)

(declare-fun e!3720626 () Bool)

(declare-fun lt!2329085 () Regex!16048)

(declare-fun head!12622 (List!64443) Regex!16048)

(assert (=> b!6100325 (= e!3720626 (= lt!2329085 (head!12622 (unfocusZipperList!1469 zl!343))))))

(declare-fun b!6100326 () Bool)

(declare-fun e!3720627 () Regex!16048)

(assert (=> b!6100326 (= e!3720627 EmptyLang!16048)))

(declare-fun b!6100327 () Bool)

(declare-fun e!3720628 () Bool)

(declare-fun isEmptyLang!1477 (Regex!16048) Bool)

(assert (=> b!6100327 (= e!3720628 (isEmptyLang!1477 lt!2329085))))

(declare-fun b!6100328 () Bool)

(assert (=> b!6100328 (= e!3720628 e!3720626)))

(declare-fun c!1095727 () Bool)

(declare-fun tail!11707 (List!64443) List!64443)

(assert (=> b!6100328 (= c!1095727 (isEmpty!36239 (tail!11707 (unfocusZipperList!1469 zl!343))))))

(declare-fun b!6100329 () Bool)

(assert (=> b!6100329 (= e!3720627 (Union!16048 (h!70767 (unfocusZipperList!1469 zl!343)) (generalisedUnion!1892 (t!377892 (unfocusZipperList!1469 zl!343)))))))

(declare-fun b!6100330 () Bool)

(declare-fun isUnion!907 (Regex!16048) Bool)

(assert (=> b!6100330 (= e!3720626 (isUnion!907 lt!2329085))))

(declare-fun b!6100332 () Bool)

(declare-fun e!3720623 () Bool)

(assert (=> b!6100332 (= e!3720623 (isEmpty!36239 (t!377892 (unfocusZipperList!1469 zl!343))))))

(declare-fun e!3720625 () Bool)

(assert (=> d!1912210 e!3720625))

(declare-fun res!2531127 () Bool)

(assert (=> d!1912210 (=> (not res!2531127) (not e!3720625))))

(assert (=> d!1912210 (= res!2531127 (validRegex!7784 lt!2329085))))

(declare-fun e!3720624 () Regex!16048)

(assert (=> d!1912210 (= lt!2329085 e!3720624)))

(declare-fun c!1095728 () Bool)

(assert (=> d!1912210 (= c!1095728 e!3720623)))

(declare-fun res!2531128 () Bool)

(assert (=> d!1912210 (=> (not res!2531128) (not e!3720623))))

(assert (=> d!1912210 (= res!2531128 (is-Cons!64319 (unfocusZipperList!1469 zl!343)))))

(assert (=> d!1912210 (forall!15169 (unfocusZipperList!1469 zl!343) lambda!332259)))

(assert (=> d!1912210 (= (generalisedUnion!1892 (unfocusZipperList!1469 zl!343)) lt!2329085)))

(declare-fun b!6100331 () Bool)

(assert (=> b!6100331 (= e!3720625 e!3720628)))

(declare-fun c!1095726 () Bool)

(assert (=> b!6100331 (= c!1095726 (isEmpty!36239 (unfocusZipperList!1469 zl!343)))))

(declare-fun b!6100333 () Bool)

(assert (=> b!6100333 (= e!3720624 (h!70767 (unfocusZipperList!1469 zl!343)))))

(declare-fun b!6100334 () Bool)

(assert (=> b!6100334 (= e!3720624 e!3720627)))

(declare-fun c!1095729 () Bool)

(assert (=> b!6100334 (= c!1095729 (is-Cons!64319 (unfocusZipperList!1469 zl!343)))))

(assert (= (and d!1912210 res!2531128) b!6100332))

(assert (= (and d!1912210 c!1095728) b!6100333))

(assert (= (and d!1912210 (not c!1095728)) b!6100334))

(assert (= (and b!6100334 c!1095729) b!6100329))

(assert (= (and b!6100334 (not c!1095729)) b!6100326))

(assert (= (and d!1912210 res!2531127) b!6100331))

(assert (= (and b!6100331 c!1095726) b!6100327))

(assert (= (and b!6100331 (not c!1095726)) b!6100328))

(assert (= (and b!6100328 c!1095727) b!6100325))

(assert (= (and b!6100328 (not c!1095727)) b!6100330))

(declare-fun m!6953010 () Bool)

(assert (=> b!6100332 m!6953010))

(declare-fun m!6953012 () Bool)

(assert (=> b!6100330 m!6953012))

(declare-fun m!6953014 () Bool)

(assert (=> b!6100327 m!6953014))

(assert (=> b!6100325 m!6952636))

(declare-fun m!6953016 () Bool)

(assert (=> b!6100325 m!6953016))

(assert (=> b!6100331 m!6952636))

(declare-fun m!6953018 () Bool)

(assert (=> b!6100331 m!6953018))

(declare-fun m!6953020 () Bool)

(assert (=> d!1912210 m!6953020))

(assert (=> d!1912210 m!6952636))

(declare-fun m!6953022 () Bool)

(assert (=> d!1912210 m!6953022))

(assert (=> b!6100328 m!6952636))

(declare-fun m!6953024 () Bool)

(assert (=> b!6100328 m!6953024))

(assert (=> b!6100328 m!6953024))

(declare-fun m!6953026 () Bool)

(assert (=> b!6100328 m!6953026))

(declare-fun m!6953028 () Bool)

(assert (=> b!6100329 m!6953028))

(assert (=> b!6099876 d!1912210))

(declare-fun bs!1514758 () Bool)

(declare-fun d!1912212 () Bool)

(assert (= bs!1514758 (and d!1912212 d!1912204)))

(declare-fun lambda!332262 () Int)

(assert (=> bs!1514758 (= lambda!332262 lambda!332255)))

(declare-fun bs!1514759 () Bool)

(assert (= bs!1514759 (and d!1912212 d!1912206)))

(assert (=> bs!1514759 (= lambda!332262 lambda!332256)))

(declare-fun bs!1514760 () Bool)

(assert (= bs!1514760 (and d!1912212 d!1912210)))

(assert (=> bs!1514760 (= lambda!332262 lambda!332259)))

(declare-fun lt!2329088 () List!64443)

(assert (=> d!1912212 (forall!15169 lt!2329088 lambda!332262)))

(declare-fun e!3720631 () List!64443)

(assert (=> d!1912212 (= lt!2329088 e!3720631)))

(declare-fun c!1095732 () Bool)

(assert (=> d!1912212 (= c!1095732 (is-Cons!64320 zl!343))))

(assert (=> d!1912212 (= (unfocusZipperList!1469 zl!343) lt!2329088)))

(declare-fun b!6100339 () Bool)

(assert (=> b!6100339 (= e!3720631 (Cons!64319 (generalisedConcat!1645 (exprs!5932 (h!70768 zl!343))) (unfocusZipperList!1469 (t!377893 zl!343))))))

(declare-fun b!6100340 () Bool)

(assert (=> b!6100340 (= e!3720631 Nil!64319)))

(assert (= (and d!1912212 c!1095732) b!6100339))

(assert (= (and d!1912212 (not c!1095732)) b!6100340))

(declare-fun m!6953030 () Bool)

(assert (=> d!1912212 m!6953030))

(assert (=> b!6100339 m!6952644))

(declare-fun m!6953032 () Bool)

(assert (=> b!6100339 m!6953032))

(assert (=> b!6099876 d!1912212))

(declare-fun d!1912214 () Bool)

(assert (=> d!1912214 (= (isEmpty!36240 (t!377893 zl!343)) (is-Nil!64320 (t!377893 zl!343)))))

(assert (=> b!6099857 d!1912214))

(declare-fun b!6100363 () Bool)

(assert (=> b!6100363 true))

(declare-fun bs!1514761 () Bool)

(declare-fun b!6100365 () Bool)

(assert (= bs!1514761 (and b!6100365 b!6100363)))

(declare-fun lt!2329101 () Int)

(declare-fun lt!2329098 () Int)

(declare-fun lambda!332271 () Int)

(declare-fun lambda!332270 () Int)

(assert (=> bs!1514761 (= (= lt!2329098 lt!2329101) (= lambda!332271 lambda!332270))))

(assert (=> b!6100365 true))

(declare-fun d!1912216 () Bool)

(declare-fun e!3720645 () Bool)

(assert (=> d!1912216 e!3720645))

(declare-fun res!2531139 () Bool)

(assert (=> d!1912216 (=> (not res!2531139) (not e!3720645))))

(assert (=> d!1912216 (= res!2531139 (>= lt!2329098 0))))

(declare-fun e!3720644 () Int)

(assert (=> d!1912216 (= lt!2329098 e!3720644)))

(declare-fun c!1095745 () Bool)

(assert (=> d!1912216 (= c!1095745 (is-Cons!64320 lt!2328937))))

(assert (=> d!1912216 (= (zipperDepth!293 lt!2328937) lt!2329098)))

(assert (=> b!6100363 (= e!3720644 lt!2329101)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!188 (Context!10864) Int)

(assert (=> b!6100363 (= lt!2329101 (maxBigInt!0 (contextDepth!188 (h!70768 lt!2328937)) (zipperDepth!293 (t!377893 lt!2328937))))))

(declare-fun lambda!332269 () Int)

(declare-fun lt!2329100 () Unit!157367)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!172 (List!64444 Int Int Int) Unit!157367)

(assert (=> b!6100363 (= lt!2329100 (lemmaForallContextDepthBiggerThanTransitive!172 (t!377893 lt!2328937) lt!2329101 (zipperDepth!293 (t!377893 lt!2328937)) lambda!332269))))

(declare-fun forall!15170 (List!64444 Int) Bool)

(assert (=> b!6100363 (forall!15170 (t!377893 lt!2328937) lambda!332270)))

(declare-fun lt!2329099 () Unit!157367)

(assert (=> b!6100363 (= lt!2329099 lt!2329100)))

(declare-fun b!6100364 () Bool)

(assert (=> b!6100364 (= e!3720644 0)))

(assert (=> b!6100365 (= e!3720645 (forall!15170 lt!2328937 lambda!332271))))

(assert (= (and d!1912216 c!1095745) b!6100363))

(assert (= (and d!1912216 (not c!1095745)) b!6100364))

(assert (= (and d!1912216 res!2531139) b!6100365))

(declare-fun m!6953048 () Bool)

(assert (=> b!6100363 m!6953048))

(declare-fun m!6953050 () Bool)

(assert (=> b!6100363 m!6953050))

(declare-fun m!6953052 () Bool)

(assert (=> b!6100363 m!6953052))

(declare-fun m!6953054 () Bool)

(assert (=> b!6100363 m!6953054))

(assert (=> b!6100363 m!6953050))

(declare-fun m!6953056 () Bool)

(assert (=> b!6100363 m!6953056))

(assert (=> b!6100363 m!6953054))

(assert (=> b!6100363 m!6953050))

(declare-fun m!6953058 () Bool)

(assert (=> b!6100365 m!6953058))

(assert (=> b!6099865 d!1912216))

(declare-fun bs!1514762 () Bool)

(declare-fun b!6100368 () Bool)

(assert (= bs!1514762 (and b!6100368 b!6100363)))

(declare-fun lambda!332272 () Int)

(assert (=> bs!1514762 (= lambda!332272 lambda!332269)))

(declare-fun lt!2329105 () Int)

(declare-fun lambda!332273 () Int)

(assert (=> bs!1514762 (= (= lt!2329105 lt!2329101) (= lambda!332273 lambda!332270))))

(declare-fun bs!1514763 () Bool)

(assert (= bs!1514763 (and b!6100368 b!6100365)))

(assert (=> bs!1514763 (= (= lt!2329105 lt!2329098) (= lambda!332273 lambda!332271))))

(assert (=> b!6100368 true))

(declare-fun bs!1514764 () Bool)

(declare-fun b!6100370 () Bool)

(assert (= bs!1514764 (and b!6100370 b!6100363)))

(declare-fun lambda!332274 () Int)

(declare-fun lt!2329102 () Int)

(assert (=> bs!1514764 (= (= lt!2329102 lt!2329101) (= lambda!332274 lambda!332270))))

(declare-fun bs!1514765 () Bool)

(assert (= bs!1514765 (and b!6100370 b!6100365)))

(assert (=> bs!1514765 (= (= lt!2329102 lt!2329098) (= lambda!332274 lambda!332271))))

(declare-fun bs!1514766 () Bool)

(assert (= bs!1514766 (and b!6100370 b!6100368)))

(assert (=> bs!1514766 (= (= lt!2329102 lt!2329105) (= lambda!332274 lambda!332273))))

(assert (=> b!6100370 true))

(declare-fun d!1912222 () Bool)

(declare-fun e!3720647 () Bool)

(assert (=> d!1912222 e!3720647))

(declare-fun res!2531140 () Bool)

(assert (=> d!1912222 (=> (not res!2531140) (not e!3720647))))

(assert (=> d!1912222 (= res!2531140 (>= lt!2329102 0))))

(declare-fun e!3720646 () Int)

(assert (=> d!1912222 (= lt!2329102 e!3720646)))

(declare-fun c!1095746 () Bool)

(assert (=> d!1912222 (= c!1095746 (is-Cons!64320 (Cons!64320 lt!2328947 Nil!64320)))))

(assert (=> d!1912222 (= (zipperDepth!293 (Cons!64320 lt!2328947 Nil!64320)) lt!2329102)))

(assert (=> b!6100368 (= e!3720646 lt!2329105)))

(assert (=> b!6100368 (= lt!2329105 (maxBigInt!0 (contextDepth!188 (h!70768 (Cons!64320 lt!2328947 Nil!64320))) (zipperDepth!293 (t!377893 (Cons!64320 lt!2328947 Nil!64320)))))))

(declare-fun lt!2329104 () Unit!157367)

(assert (=> b!6100368 (= lt!2329104 (lemmaForallContextDepthBiggerThanTransitive!172 (t!377893 (Cons!64320 lt!2328947 Nil!64320)) lt!2329105 (zipperDepth!293 (t!377893 (Cons!64320 lt!2328947 Nil!64320))) lambda!332272))))

(assert (=> b!6100368 (forall!15170 (t!377893 (Cons!64320 lt!2328947 Nil!64320)) lambda!332273)))

(declare-fun lt!2329103 () Unit!157367)

(assert (=> b!6100368 (= lt!2329103 lt!2329104)))

(declare-fun b!6100369 () Bool)

(assert (=> b!6100369 (= e!3720646 0)))

(assert (=> b!6100370 (= e!3720647 (forall!15170 (Cons!64320 lt!2328947 Nil!64320) lambda!332274))))

(assert (= (and d!1912222 c!1095746) b!6100368))

(assert (= (and d!1912222 (not c!1095746)) b!6100369))

(assert (= (and d!1912222 res!2531140) b!6100370))

(declare-fun m!6953060 () Bool)

(assert (=> b!6100368 m!6953060))

(declare-fun m!6953062 () Bool)

(assert (=> b!6100368 m!6953062))

(declare-fun m!6953064 () Bool)

(assert (=> b!6100368 m!6953064))

(declare-fun m!6953066 () Bool)

(assert (=> b!6100368 m!6953066))

(assert (=> b!6100368 m!6953062))

(declare-fun m!6953068 () Bool)

(assert (=> b!6100368 m!6953068))

(assert (=> b!6100368 m!6953066))

(assert (=> b!6100368 m!6953062))

(declare-fun m!6953070 () Bool)

(assert (=> b!6100370 m!6953070))

(assert (=> b!6099865 d!1912222))

(declare-fun b!6100389 () Bool)

(declare-fun res!2531155 () Bool)

(declare-fun e!3720658 () Bool)

(assert (=> b!6100389 (=> (not res!2531155) (not e!3720658))))

(declare-fun lt!2329116 () Option!15939)

(declare-fun get!22177 (Option!15939) tuple2!66054)

(assert (=> b!6100389 (= res!2531155 (matchR!8231 (regTwo!32608 r!7292) (_2!36330 (get!22177 lt!2329116))))))

(declare-fun b!6100390 () Bool)

(declare-fun lt!2329115 () Unit!157367)

(declare-fun lt!2329117 () Unit!157367)

(assert (=> b!6100390 (= lt!2329115 lt!2329117)))

(declare-fun ++!14137 (List!64445 List!64445) List!64445)

(assert (=> b!6100390 (= (++!14137 (++!14137 Nil!64321 (Cons!64321 (h!70769 s!2326) Nil!64321)) (t!377894 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2232 (List!64445 C!32366 List!64445 List!64445) Unit!157367)

(assert (=> b!6100390 (= lt!2329117 (lemmaMoveElementToOtherListKeepsConcatEq!2232 Nil!64321 (h!70769 s!2326) (t!377894 s!2326) s!2326))))

(declare-fun e!3720659 () Option!15939)

(assert (=> b!6100390 (= e!3720659 (findConcatSeparation!2353 (regOne!32608 r!7292) (regTwo!32608 r!7292) (++!14137 Nil!64321 (Cons!64321 (h!70769 s!2326) Nil!64321)) (t!377894 s!2326) s!2326))))

(declare-fun b!6100391 () Bool)

(declare-fun res!2531151 () Bool)

(assert (=> b!6100391 (=> (not res!2531151) (not e!3720658))))

(assert (=> b!6100391 (= res!2531151 (matchR!8231 (regOne!32608 r!7292) (_1!36330 (get!22177 lt!2329116))))))

(declare-fun b!6100392 () Bool)

(declare-fun e!3720660 () Bool)

(assert (=> b!6100392 (= e!3720660 (not (isDefined!12642 lt!2329116)))))

(declare-fun b!6100394 () Bool)

(declare-fun e!3720662 () Option!15939)

(assert (=> b!6100394 (= e!3720662 e!3720659)))

(declare-fun c!1095752 () Bool)

(assert (=> b!6100394 (= c!1095752 (is-Nil!64321 s!2326))))

(declare-fun b!6100395 () Bool)

(assert (=> b!6100395 (= e!3720658 (= (++!14137 (_1!36330 (get!22177 lt!2329116)) (_2!36330 (get!22177 lt!2329116))) s!2326))))

(declare-fun d!1912224 () Bool)

(assert (=> d!1912224 e!3720660))

(declare-fun res!2531152 () Bool)

(assert (=> d!1912224 (=> res!2531152 e!3720660)))

(assert (=> d!1912224 (= res!2531152 e!3720658)))

(declare-fun res!2531153 () Bool)

(assert (=> d!1912224 (=> (not res!2531153) (not e!3720658))))

(assert (=> d!1912224 (= res!2531153 (isDefined!12642 lt!2329116))))

(assert (=> d!1912224 (= lt!2329116 e!3720662)))

(declare-fun c!1095751 () Bool)

(declare-fun e!3720661 () Bool)

(assert (=> d!1912224 (= c!1095751 e!3720661)))

(declare-fun res!2531154 () Bool)

(assert (=> d!1912224 (=> (not res!2531154) (not e!3720661))))

(assert (=> d!1912224 (= res!2531154 (matchR!8231 (regOne!32608 r!7292) Nil!64321))))

(assert (=> d!1912224 (validRegex!7784 (regOne!32608 r!7292))))

(assert (=> d!1912224 (= (findConcatSeparation!2353 (regOne!32608 r!7292) (regTwo!32608 r!7292) Nil!64321 s!2326 s!2326) lt!2329116)))

(declare-fun b!6100393 () Bool)

(assert (=> b!6100393 (= e!3720661 (matchR!8231 (regTwo!32608 r!7292) s!2326))))

(declare-fun b!6100396 () Bool)

(assert (=> b!6100396 (= e!3720659 None!15938)))

(declare-fun b!6100397 () Bool)

(assert (=> b!6100397 (= e!3720662 (Some!15938 (tuple2!66055 Nil!64321 s!2326)))))

(assert (= (and d!1912224 res!2531154) b!6100393))

(assert (= (and d!1912224 c!1095751) b!6100397))

(assert (= (and d!1912224 (not c!1095751)) b!6100394))

(assert (= (and b!6100394 c!1095752) b!6100396))

(assert (= (and b!6100394 (not c!1095752)) b!6100390))

(assert (= (and d!1912224 res!2531153) b!6100391))

(assert (= (and b!6100391 res!2531151) b!6100389))

(assert (= (and b!6100389 res!2531155) b!6100395))

(assert (= (and d!1912224 (not res!2531152)) b!6100392))

(declare-fun m!6953074 () Bool)

(assert (=> b!6100391 m!6953074))

(declare-fun m!6953076 () Bool)

(assert (=> b!6100391 m!6953076))

(declare-fun m!6953078 () Bool)

(assert (=> b!6100392 m!6953078))

(assert (=> b!6100389 m!6953074))

(declare-fun m!6953080 () Bool)

(assert (=> b!6100389 m!6953080))

(declare-fun m!6953082 () Bool)

(assert (=> b!6100390 m!6953082))

(assert (=> b!6100390 m!6953082))

(declare-fun m!6953084 () Bool)

(assert (=> b!6100390 m!6953084))

(declare-fun m!6953086 () Bool)

(assert (=> b!6100390 m!6953086))

(assert (=> b!6100390 m!6953082))

(declare-fun m!6953088 () Bool)

(assert (=> b!6100390 m!6953088))

(assert (=> d!1912224 m!6953078))

(declare-fun m!6953090 () Bool)

(assert (=> d!1912224 m!6953090))

(declare-fun m!6953092 () Bool)

(assert (=> d!1912224 m!6953092))

(assert (=> b!6100393 m!6952718))

(assert (=> b!6100395 m!6953074))

(declare-fun m!6953094 () Bool)

(assert (=> b!6100395 m!6953094))

(assert (=> b!6099858 d!1912224))

(declare-fun d!1912228 () Bool)

(declare-fun choose!45353 (Int) Bool)

(assert (=> d!1912228 (= (Exists!3118 lambda!332226) (choose!45353 lambda!332226))))

(declare-fun bs!1514768 () Bool)

(assert (= bs!1514768 d!1912228))

(declare-fun m!6953096 () Bool)

(assert (=> bs!1514768 m!6953096))

(assert (=> b!6099858 d!1912228))

(declare-fun d!1912230 () Bool)

(assert (=> d!1912230 (= (Exists!3118 lambda!332227) (choose!45353 lambda!332227))))

(declare-fun bs!1514769 () Bool)

(assert (= bs!1514769 d!1912230))

(declare-fun m!6953098 () Bool)

(assert (=> bs!1514769 m!6953098))

(assert (=> b!6099858 d!1912230))

(declare-fun bs!1514771 () Bool)

(declare-fun d!1912232 () Bool)

(assert (= bs!1514771 (and d!1912232 b!6099858)))

(declare-fun lambda!332286 () Int)

(assert (=> bs!1514771 (= lambda!332286 lambda!332226)))

(assert (=> bs!1514771 (not (= lambda!332286 lambda!332227))))

(declare-fun bs!1514772 () Bool)

(assert (= bs!1514772 (and d!1912232 b!6100074)))

(assert (=> bs!1514772 (not (= lambda!332286 lambda!332251))))

(declare-fun bs!1514773 () Bool)

(assert (= bs!1514773 (and d!1912232 b!6100066)))

(assert (=> bs!1514773 (not (= lambda!332286 lambda!332252))))

(assert (=> d!1912232 true))

(assert (=> d!1912232 true))

(assert (=> d!1912232 true))

(assert (=> d!1912232 (= (isDefined!12642 (findConcatSeparation!2353 (regOne!32608 r!7292) (regTwo!32608 r!7292) Nil!64321 s!2326 s!2326)) (Exists!3118 lambda!332286))))

(declare-fun lt!2329132 () Unit!157367)

(declare-fun choose!45355 (Regex!16048 Regex!16048 List!64445) Unit!157367)

(assert (=> d!1912232 (= lt!2329132 (choose!45355 (regOne!32608 r!7292) (regTwo!32608 r!7292) s!2326))))

(assert (=> d!1912232 (validRegex!7784 (regOne!32608 r!7292))))

(assert (=> d!1912232 (= (lemmaFindConcatSeparationEquivalentToExists!2117 (regOne!32608 r!7292) (regTwo!32608 r!7292) s!2326) lt!2329132)))

(declare-fun bs!1514774 () Bool)

(assert (= bs!1514774 d!1912232))

(declare-fun m!6953112 () Bool)

(assert (=> bs!1514774 m!6953112))

(assert (=> bs!1514774 m!6952676))

(assert (=> bs!1514774 m!6952678))

(declare-fun m!6953114 () Bool)

(assert (=> bs!1514774 m!6953114))

(assert (=> bs!1514774 m!6952676))

(assert (=> bs!1514774 m!6953092))

(assert (=> b!6099858 d!1912232))

(declare-fun bs!1514780 () Bool)

(declare-fun d!1912236 () Bool)

(assert (= bs!1514780 (and d!1912236 d!1912232)))

(declare-fun lambda!332294 () Int)

(assert (=> bs!1514780 (= lambda!332294 lambda!332286)))

(declare-fun bs!1514781 () Bool)

(assert (= bs!1514781 (and d!1912236 b!6099858)))

(assert (=> bs!1514781 (= lambda!332294 lambda!332226)))

(declare-fun bs!1514782 () Bool)

(assert (= bs!1514782 (and d!1912236 b!6100066)))

(assert (=> bs!1514782 (not (= lambda!332294 lambda!332252))))

(declare-fun bs!1514783 () Bool)

(assert (= bs!1514783 (and d!1912236 b!6100074)))

(assert (=> bs!1514783 (not (= lambda!332294 lambda!332251))))

(assert (=> bs!1514781 (not (= lambda!332294 lambda!332227))))

(assert (=> d!1912236 true))

(assert (=> d!1912236 true))

(assert (=> d!1912236 true))

(declare-fun lambda!332297 () Int)

(assert (=> bs!1514780 (not (= lambda!332297 lambda!332286))))

(declare-fun bs!1514784 () Bool)

(assert (= bs!1514784 d!1912236))

(assert (=> bs!1514784 (not (= lambda!332297 lambda!332294))))

(assert (=> bs!1514781 (not (= lambda!332297 lambda!332226))))

(assert (=> bs!1514782 (= lambda!332297 lambda!332252)))

(assert (=> bs!1514783 (not (= lambda!332297 lambda!332251))))

(assert (=> bs!1514781 (= lambda!332297 lambda!332227)))

(assert (=> d!1912236 true))

(assert (=> d!1912236 true))

(assert (=> d!1912236 true))

(assert (=> d!1912236 (= (Exists!3118 lambda!332294) (Exists!3118 lambda!332297))))

(declare-fun lt!2329139 () Unit!157367)

(declare-fun choose!45356 (Regex!16048 Regex!16048 List!64445) Unit!157367)

(assert (=> d!1912236 (= lt!2329139 (choose!45356 (regOne!32608 r!7292) (regTwo!32608 r!7292) s!2326))))

(assert (=> d!1912236 (validRegex!7784 (regOne!32608 r!7292))))

(assert (=> d!1912236 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1655 (regOne!32608 r!7292) (regTwo!32608 r!7292) s!2326) lt!2329139)))

(declare-fun m!6953128 () Bool)

(assert (=> bs!1514784 m!6953128))

(declare-fun m!6953130 () Bool)

(assert (=> bs!1514784 m!6953130))

(declare-fun m!6953132 () Bool)

(assert (=> bs!1514784 m!6953132))

(assert (=> bs!1514784 m!6953092))

(assert (=> b!6099858 d!1912236))

(declare-fun d!1912240 () Bool)

(declare-fun isEmpty!36245 (Option!15939) Bool)

(assert (=> d!1912240 (= (isDefined!12642 (findConcatSeparation!2353 (regOne!32608 r!7292) (regTwo!32608 r!7292) Nil!64321 s!2326 s!2326)) (not (isEmpty!36245 (findConcatSeparation!2353 (regOne!32608 r!7292) (regTwo!32608 r!7292) Nil!64321 s!2326 s!2326))))))

(declare-fun bs!1514785 () Bool)

(assert (= bs!1514785 d!1912240))

(assert (=> bs!1514785 m!6952676))

(declare-fun m!6953134 () Bool)

(assert (=> bs!1514785 m!6953134))

(assert (=> b!6099858 d!1912240))

(declare-fun bs!1514786 () Bool)

(declare-fun d!1912242 () Bool)

(assert (= bs!1514786 (and d!1912242 d!1912204)))

(declare-fun lambda!332301 () Int)

(assert (=> bs!1514786 (= lambda!332301 lambda!332255)))

(declare-fun bs!1514787 () Bool)

(assert (= bs!1514787 (and d!1912242 d!1912206)))

(assert (=> bs!1514787 (= lambda!332301 lambda!332256)))

(declare-fun bs!1514788 () Bool)

(assert (= bs!1514788 (and d!1912242 d!1912210)))

(assert (=> bs!1514788 (= lambda!332301 lambda!332259)))

(declare-fun bs!1514789 () Bool)

(assert (= bs!1514789 (and d!1912242 d!1912212)))

(assert (=> bs!1514789 (= lambda!332301 lambda!332262)))

(declare-fun b!6100474 () Bool)

(declare-fun e!3720707 () Bool)

(declare-fun lt!2329145 () Regex!16048)

(declare-fun isConcat!990 (Regex!16048) Bool)

(assert (=> b!6100474 (= e!3720707 (isConcat!990 lt!2329145))))

(declare-fun e!3720712 () Bool)

(assert (=> d!1912242 e!3720712))

(declare-fun res!2531183 () Bool)

(assert (=> d!1912242 (=> (not res!2531183) (not e!3720712))))

(assert (=> d!1912242 (= res!2531183 (validRegex!7784 lt!2329145))))

(declare-fun e!3720711 () Regex!16048)

(assert (=> d!1912242 (= lt!2329145 e!3720711)))

(declare-fun c!1095783 () Bool)

(declare-fun e!3720709 () Bool)

(assert (=> d!1912242 (= c!1095783 e!3720709)))

(declare-fun res!2531182 () Bool)

(assert (=> d!1912242 (=> (not res!2531182) (not e!3720709))))

(assert (=> d!1912242 (= res!2531182 (is-Cons!64319 (exprs!5932 (h!70768 zl!343))))))

(assert (=> d!1912242 (forall!15169 (exprs!5932 (h!70768 zl!343)) lambda!332301)))

(assert (=> d!1912242 (= (generalisedConcat!1645 (exprs!5932 (h!70768 zl!343))) lt!2329145)))

(declare-fun b!6100475 () Bool)

(declare-fun e!3720708 () Bool)

(assert (=> b!6100475 (= e!3720708 e!3720707)))

(declare-fun c!1095784 () Bool)

(assert (=> b!6100475 (= c!1095784 (isEmpty!36239 (tail!11707 (exprs!5932 (h!70768 zl!343)))))))

(declare-fun b!6100476 () Bool)

(declare-fun e!3720710 () Regex!16048)

(assert (=> b!6100476 (= e!3720711 e!3720710)))

(declare-fun c!1095785 () Bool)

(assert (=> b!6100476 (= c!1095785 (is-Cons!64319 (exprs!5932 (h!70768 zl!343))))))

(declare-fun b!6100477 () Bool)

(assert (=> b!6100477 (= e!3720710 (Concat!24893 (h!70767 (exprs!5932 (h!70768 zl!343))) (generalisedConcat!1645 (t!377892 (exprs!5932 (h!70768 zl!343))))))))

(declare-fun b!6100478 () Bool)

(declare-fun isEmptyExpr!1467 (Regex!16048) Bool)

(assert (=> b!6100478 (= e!3720708 (isEmptyExpr!1467 lt!2329145))))

(declare-fun b!6100479 () Bool)

(assert (=> b!6100479 (= e!3720707 (= lt!2329145 (head!12622 (exprs!5932 (h!70768 zl!343)))))))

(declare-fun b!6100480 () Bool)

(assert (=> b!6100480 (= e!3720709 (isEmpty!36239 (t!377892 (exprs!5932 (h!70768 zl!343)))))))

(declare-fun b!6100481 () Bool)

(assert (=> b!6100481 (= e!3720711 (h!70767 (exprs!5932 (h!70768 zl!343))))))

(declare-fun b!6100482 () Bool)

(assert (=> b!6100482 (= e!3720710 EmptyExpr!16048)))

(declare-fun b!6100483 () Bool)

(assert (=> b!6100483 (= e!3720712 e!3720708)))

(declare-fun c!1095786 () Bool)

(assert (=> b!6100483 (= c!1095786 (isEmpty!36239 (exprs!5932 (h!70768 zl!343))))))

(assert (= (and d!1912242 res!2531182) b!6100480))

(assert (= (and d!1912242 c!1095783) b!6100481))

(assert (= (and d!1912242 (not c!1095783)) b!6100476))

(assert (= (and b!6100476 c!1095785) b!6100477))

(assert (= (and b!6100476 (not c!1095785)) b!6100482))

(assert (= (and d!1912242 res!2531183) b!6100483))

(assert (= (and b!6100483 c!1095786) b!6100478))

(assert (= (and b!6100483 (not c!1095786)) b!6100475))

(assert (= (and b!6100475 c!1095784) b!6100479))

(assert (= (and b!6100475 (not c!1095784)) b!6100474))

(declare-fun m!6953156 () Bool)

(assert (=> b!6100483 m!6953156))

(declare-fun m!6953158 () Bool)

(assert (=> b!6100477 m!6953158))

(declare-fun m!6953160 () Bool)

(assert (=> b!6100474 m!6953160))

(assert (=> b!6100480 m!6952632))

(declare-fun m!6953162 () Bool)

(assert (=> b!6100479 m!6953162))

(declare-fun m!6953164 () Bool)

(assert (=> b!6100475 m!6953164))

(assert (=> b!6100475 m!6953164))

(declare-fun m!6953166 () Bool)

(assert (=> b!6100475 m!6953166))

(declare-fun m!6953168 () Bool)

(assert (=> b!6100478 m!6953168))

(declare-fun m!6953170 () Bool)

(assert (=> d!1912242 m!6953170))

(declare-fun m!6953172 () Bool)

(assert (=> d!1912242 m!6953172))

(assert (=> b!6099867 d!1912242))

(declare-fun d!1912246 () Bool)

(assert (=> d!1912246 (= (flatMap!1561 z!1189 lambda!332228) (choose!45349 z!1189 lambda!332228))))

(declare-fun bs!1514790 () Bool)

(assert (= bs!1514790 d!1912246))

(declare-fun m!6953174 () Bool)

(assert (=> bs!1514790 m!6953174))

(assert (=> b!6099866 d!1912246))

(declare-fun d!1912248 () Bool)

(declare-fun c!1095788 () Bool)

(declare-fun e!3720714 () Bool)

(assert (=> d!1912248 (= c!1095788 e!3720714)))

(declare-fun res!2531184 () Bool)

(assert (=> d!1912248 (=> (not res!2531184) (not e!3720714))))

(assert (=> d!1912248 (= res!2531184 (is-Cons!64319 (exprs!5932 (h!70768 zl!343))))))

(declare-fun e!3720715 () (Set Context!10864))

(assert (=> d!1912248 (= (derivationStepZipperUp!1224 (h!70768 zl!343) (h!70769 s!2326)) e!3720715)))

(declare-fun b!6100484 () Bool)

(declare-fun e!3720713 () (Set Context!10864))

(assert (=> b!6100484 (= e!3720713 (as set.empty (Set Context!10864)))))

(declare-fun b!6100485 () Bool)

(assert (=> b!6100485 (= e!3720714 (nullable!6043 (h!70767 (exprs!5932 (h!70768 zl!343)))))))

(declare-fun b!6100486 () Bool)

(declare-fun call!504312 () (Set Context!10864))

(assert (=> b!6100486 (= e!3720713 call!504312)))

(declare-fun b!6100487 () Bool)

(assert (=> b!6100487 (= e!3720715 e!3720713)))

(declare-fun c!1095787 () Bool)

(assert (=> b!6100487 (= c!1095787 (is-Cons!64319 (exprs!5932 (h!70768 zl!343))))))

(declare-fun bm!504307 () Bool)

(assert (=> bm!504307 (= call!504312 (derivationStepZipperDown!1298 (h!70767 (exprs!5932 (h!70768 zl!343))) (Context!10865 (t!377892 (exprs!5932 (h!70768 zl!343)))) (h!70769 s!2326)))))

(declare-fun b!6100488 () Bool)

(assert (=> b!6100488 (= e!3720715 (set.union call!504312 (derivationStepZipperUp!1224 (Context!10865 (t!377892 (exprs!5932 (h!70768 zl!343)))) (h!70769 s!2326))))))

(assert (= (and d!1912248 res!2531184) b!6100485))

(assert (= (and d!1912248 c!1095788) b!6100488))

(assert (= (and d!1912248 (not c!1095788)) b!6100487))

(assert (= (and b!6100487 c!1095787) b!6100486))

(assert (= (and b!6100487 (not c!1095787)) b!6100484))

(assert (= (or b!6100488 b!6100486) bm!504307))

(declare-fun m!6953176 () Bool)

(assert (=> b!6100485 m!6953176))

(declare-fun m!6953178 () Bool)

(assert (=> bm!504307 m!6953178))

(declare-fun m!6953180 () Bool)

(assert (=> b!6100488 m!6953180))

(assert (=> b!6099866 d!1912248))

(declare-fun d!1912250 () Bool)

(assert (=> d!1912250 (= (flatMap!1561 z!1189 lambda!332228) (dynLambda!25323 lambda!332228 (h!70768 zl!343)))))

(declare-fun lt!2329146 () Unit!157367)

(assert (=> d!1912250 (= lt!2329146 (choose!45350 z!1189 (h!70768 zl!343) lambda!332228))))

(assert (=> d!1912250 (= z!1189 (set.insert (h!70768 zl!343) (as set.empty (Set Context!10864))))))

(assert (=> d!1912250 (= (lemmaFlatMapOnSingletonSet!1087 z!1189 (h!70768 zl!343) lambda!332228) lt!2329146)))

(declare-fun b_lambda!232399 () Bool)

(assert (=> (not b_lambda!232399) (not d!1912250)))

(declare-fun bs!1514791 () Bool)

(assert (= bs!1514791 d!1912250))

(assert (=> bs!1514791 m!6952688))

(declare-fun m!6953182 () Bool)

(assert (=> bs!1514791 m!6953182))

(declare-fun m!6953184 () Bool)

(assert (=> bs!1514791 m!6953184))

(declare-fun m!6953186 () Bool)

(assert (=> bs!1514791 m!6953186))

(assert (=> b!6099866 d!1912250))

(declare-fun condSetEmpty!41205 () Bool)

(assert (=> setNonEmpty!41199 (= condSetEmpty!41205 (= setRest!41199 (as set.empty (Set Context!10864))))))

(declare-fun setRes!41205 () Bool)

(assert (=> setNonEmpty!41199 (= tp!1703209 setRes!41205)))

(declare-fun setIsEmpty!41205 () Bool)

(assert (=> setIsEmpty!41205 setRes!41205))

(declare-fun setElem!41205 () Context!10864)

(declare-fun tp!1703247 () Bool)

(declare-fun e!3720720 () Bool)

(declare-fun setNonEmpty!41205 () Bool)

(assert (=> setNonEmpty!41205 (= setRes!41205 (and tp!1703247 (inv!83368 setElem!41205) e!3720720))))

(declare-fun setRest!41205 () (Set Context!10864))

(assert (=> setNonEmpty!41205 (= setRest!41199 (set.union (set.insert setElem!41205 (as set.empty (Set Context!10864))) setRest!41205))))

(declare-fun b!6100497 () Bool)

(declare-fun tp!1703248 () Bool)

(assert (=> b!6100497 (= e!3720720 tp!1703248)))

(assert (= (and setNonEmpty!41199 condSetEmpty!41205) setIsEmpty!41205))

(assert (= (and setNonEmpty!41199 (not condSetEmpty!41205)) setNonEmpty!41205))

(assert (= setNonEmpty!41205 b!6100497))

(declare-fun m!6953188 () Bool)

(assert (=> setNonEmpty!41205 m!6953188))

(declare-fun b!6100505 () Bool)

(declare-fun e!3720726 () Bool)

(declare-fun tp!1703253 () Bool)

(assert (=> b!6100505 (= e!3720726 tp!1703253)))

(declare-fun e!3720725 () Bool)

(declare-fun tp!1703254 () Bool)

(declare-fun b!6100504 () Bool)

(assert (=> b!6100504 (= e!3720725 (and (inv!83368 (h!70768 (t!377893 zl!343))) e!3720726 tp!1703254))))

(assert (=> b!6099875 (= tp!1703208 e!3720725)))

(assert (= b!6100504 b!6100505))

(assert (= (and b!6099875 (is-Cons!64320 (t!377893 zl!343))) b!6100504))

(declare-fun m!6953190 () Bool)

(assert (=> b!6100504 m!6953190))

(declare-fun b!6100519 () Bool)

(declare-fun e!3720730 () Bool)

(declare-fun tp!1703265 () Bool)

(declare-fun tp!1703268 () Bool)

(assert (=> b!6100519 (= e!3720730 (and tp!1703265 tp!1703268))))

(declare-fun b!6100521 () Bool)

(declare-fun tp!1703266 () Bool)

(declare-fun tp!1703267 () Bool)

(assert (=> b!6100521 (= e!3720730 (and tp!1703266 tp!1703267))))

(declare-fun b!6100520 () Bool)

(declare-fun tp!1703269 () Bool)

(assert (=> b!6100520 (= e!3720730 tp!1703269)))

(declare-fun b!6100518 () Bool)

(assert (=> b!6100518 (= e!3720730 tp_is_empty!41349)))

(assert (=> b!6099860 (= tp!1703204 e!3720730)))

(assert (= (and b!6099860 (is-ElementMatch!16048 (regOne!32608 r!7292))) b!6100518))

(assert (= (and b!6099860 (is-Concat!24893 (regOne!32608 r!7292))) b!6100519))

(assert (= (and b!6099860 (is-Star!16048 (regOne!32608 r!7292))) b!6100520))

(assert (= (and b!6099860 (is-Union!16048 (regOne!32608 r!7292))) b!6100521))

(declare-fun b!6100523 () Bool)

(declare-fun e!3720731 () Bool)

(declare-fun tp!1703270 () Bool)

(declare-fun tp!1703273 () Bool)

(assert (=> b!6100523 (= e!3720731 (and tp!1703270 tp!1703273))))

(declare-fun b!6100525 () Bool)

(declare-fun tp!1703271 () Bool)

(declare-fun tp!1703272 () Bool)

(assert (=> b!6100525 (= e!3720731 (and tp!1703271 tp!1703272))))

(declare-fun b!6100524 () Bool)

(declare-fun tp!1703274 () Bool)

(assert (=> b!6100524 (= e!3720731 tp!1703274)))

(declare-fun b!6100522 () Bool)

(assert (=> b!6100522 (= e!3720731 tp_is_empty!41349)))

(assert (=> b!6099860 (= tp!1703207 e!3720731)))

(assert (= (and b!6099860 (is-ElementMatch!16048 (regTwo!32608 r!7292))) b!6100522))

(assert (= (and b!6099860 (is-Concat!24893 (regTwo!32608 r!7292))) b!6100523))

(assert (= (and b!6099860 (is-Star!16048 (regTwo!32608 r!7292))) b!6100524))

(assert (= (and b!6099860 (is-Union!16048 (regTwo!32608 r!7292))) b!6100525))

(declare-fun b!6100530 () Bool)

(declare-fun e!3720734 () Bool)

(declare-fun tp!1703277 () Bool)

(assert (=> b!6100530 (= e!3720734 (and tp_is_empty!41349 tp!1703277))))

(assert (=> b!6099855 (= tp!1703203 e!3720734)))

(assert (= (and b!6099855 (is-Cons!64321 (t!377894 s!2326))) b!6100530))

(declare-fun b!6100532 () Bool)

(declare-fun e!3720735 () Bool)

(declare-fun tp!1703278 () Bool)

(declare-fun tp!1703281 () Bool)

(assert (=> b!6100532 (= e!3720735 (and tp!1703278 tp!1703281))))

(declare-fun b!6100534 () Bool)

(declare-fun tp!1703279 () Bool)

(declare-fun tp!1703280 () Bool)

(assert (=> b!6100534 (= e!3720735 (and tp!1703279 tp!1703280))))

(declare-fun b!6100533 () Bool)

(declare-fun tp!1703282 () Bool)

(assert (=> b!6100533 (= e!3720735 tp!1703282)))

(declare-fun b!6100531 () Bool)

(assert (=> b!6100531 (= e!3720735 tp_is_empty!41349)))

(assert (=> b!6099861 (= tp!1703206 e!3720735)))

(assert (= (and b!6099861 (is-ElementMatch!16048 (reg!16377 r!7292))) b!6100531))

(assert (= (and b!6099861 (is-Concat!24893 (reg!16377 r!7292))) b!6100532))

(assert (= (and b!6099861 (is-Star!16048 (reg!16377 r!7292))) b!6100533))

(assert (= (and b!6099861 (is-Union!16048 (reg!16377 r!7292))) b!6100534))

(declare-fun b!6100536 () Bool)

(declare-fun e!3720736 () Bool)

(declare-fun tp!1703283 () Bool)

(declare-fun tp!1703286 () Bool)

(assert (=> b!6100536 (= e!3720736 (and tp!1703283 tp!1703286))))

(declare-fun b!6100538 () Bool)

(declare-fun tp!1703284 () Bool)

(declare-fun tp!1703285 () Bool)

(assert (=> b!6100538 (= e!3720736 (and tp!1703284 tp!1703285))))

(declare-fun b!6100537 () Bool)

(declare-fun tp!1703287 () Bool)

(assert (=> b!6100537 (= e!3720736 tp!1703287)))

(declare-fun b!6100535 () Bool)

(assert (=> b!6100535 (= e!3720736 tp_is_empty!41349)))

(assert (=> b!6099871 (= tp!1703210 e!3720736)))

(assert (= (and b!6099871 (is-ElementMatch!16048 (regOne!32609 r!7292))) b!6100535))

(assert (= (and b!6099871 (is-Concat!24893 (regOne!32609 r!7292))) b!6100536))

(assert (= (and b!6099871 (is-Star!16048 (regOne!32609 r!7292))) b!6100537))

(assert (= (and b!6099871 (is-Union!16048 (regOne!32609 r!7292))) b!6100538))

(declare-fun b!6100540 () Bool)

(declare-fun e!3720737 () Bool)

(declare-fun tp!1703288 () Bool)

(declare-fun tp!1703291 () Bool)

(assert (=> b!6100540 (= e!3720737 (and tp!1703288 tp!1703291))))

(declare-fun b!6100542 () Bool)

(declare-fun tp!1703289 () Bool)

(declare-fun tp!1703290 () Bool)

(assert (=> b!6100542 (= e!3720737 (and tp!1703289 tp!1703290))))

(declare-fun b!6100541 () Bool)

(declare-fun tp!1703292 () Bool)

(assert (=> b!6100541 (= e!3720737 tp!1703292)))

(declare-fun b!6100539 () Bool)

(assert (=> b!6100539 (= e!3720737 tp_is_empty!41349)))

(assert (=> b!6099871 (= tp!1703212 e!3720737)))

(assert (= (and b!6099871 (is-ElementMatch!16048 (regTwo!32609 r!7292))) b!6100539))

(assert (= (and b!6099871 (is-Concat!24893 (regTwo!32609 r!7292))) b!6100540))

(assert (= (and b!6099871 (is-Star!16048 (regTwo!32609 r!7292))) b!6100541))

(assert (= (and b!6099871 (is-Union!16048 (regTwo!32609 r!7292))) b!6100542))

(declare-fun b!6100547 () Bool)

(declare-fun e!3720740 () Bool)

(declare-fun tp!1703297 () Bool)

(declare-fun tp!1703298 () Bool)

(assert (=> b!6100547 (= e!3720740 (and tp!1703297 tp!1703298))))

(assert (=> b!6099856 (= tp!1703211 e!3720740)))

(assert (= (and b!6099856 (is-Cons!64319 (exprs!5932 (h!70768 zl!343)))) b!6100547))

(declare-fun b!6100548 () Bool)

(declare-fun e!3720741 () Bool)

(declare-fun tp!1703299 () Bool)

(declare-fun tp!1703300 () Bool)

(assert (=> b!6100548 (= e!3720741 (and tp!1703299 tp!1703300))))

(assert (=> b!6099870 (= tp!1703205 e!3720741)))

(assert (= (and b!6099870 (is-Cons!64319 (exprs!5932 setElem!41199))) b!6100548))

(declare-fun b_lambda!232401 () Bool)

(assert (= b_lambda!232395 (or b!6099866 b_lambda!232401)))

(declare-fun bs!1514793 () Bool)

(declare-fun d!1912254 () Bool)

(assert (= bs!1514793 (and d!1912254 b!6099866)))

(assert (=> bs!1514793 (= (dynLambda!25323 lambda!332228 lt!2328944) (derivationStepZipperUp!1224 lt!2328944 (h!70769 s!2326)))))

(assert (=> bs!1514793 m!6952656))

(assert (=> d!1912196 d!1912254))

(declare-fun b_lambda!232403 () Bool)

(assert (= b_lambda!232397 (or b!6099866 b_lambda!232403)))

(declare-fun bs!1514794 () Bool)

(declare-fun d!1912256 () Bool)

(assert (= bs!1514794 (and d!1912256 b!6099866)))

(assert (=> bs!1514794 (= (dynLambda!25323 lambda!332228 lt!2328952) (derivationStepZipperUp!1224 lt!2328952 (h!70769 s!2326)))))

(assert (=> bs!1514794 m!6952648))

(assert (=> d!1912200 d!1912256))

(declare-fun b_lambda!232405 () Bool)

(assert (= b_lambda!232399 (or b!6099866 b_lambda!232405)))

(declare-fun bs!1514795 () Bool)

(declare-fun d!1912258 () Bool)

(assert (= bs!1514795 (and d!1912258 b!6099866)))

(assert (=> bs!1514795 (= (dynLambda!25323 lambda!332228 (h!70768 zl!343)) (derivationStepZipperUp!1224 (h!70768 zl!343) (h!70769 s!2326)))))

(assert (=> bs!1514795 m!6952690))

(assert (=> d!1912250 d!1912258))

(push 1)

(assert (not b!6100339))

(assert (not d!1912154))

(assert (not bm!504283))

(assert (not b!6100332))

(assert (not bm!504254))

(assert (not b!6100209))

(assert (not d!1912206))

(assert (not b!6100208))

(assert (not b!6100325))

(assert (not b!6100368))

(assert (not d!1912204))

(assert (not bm!504288))

(assert (not d!1912166))

(assert (not b!6100370))

(assert (not bm!504291))

(assert (not d!1912224))

(assert (not b!6100363))

(assert (not b!6100330))

(assert (not b!6100475))

(assert (not bm!504289))

(assert (not d!1912178))

(assert (not b!6100390))

(assert (not b!6100196))

(assert (not b!6100533))

(assert (not b!6100143))

(assert (not d!1912196))

(assert (not b!6100525))

(assert (not b!6100391))

(assert (not d!1912190))

(assert (not b!6100523))

(assert (not b!6100148))

(assert (not d!1912180))

(assert (not d!1912164))

(assert (not bm!504295))

(assert (not b!6100331))

(assert (not b!6100140))

(assert (not b!6100075))

(assert (not b!6100031))

(assert (not bm!504290))

(assert (not b!6100519))

(assert (not d!1912146))

(assert (not d!1912250))

(assert (not b!6100536))

(assert (not b!6100240))

(assert (not b!6100538))

(assert (not b!6100521))

(assert (not b!6100532))

(assert (not d!1912194))

(assert (not b!6100488))

(assert (not b!6100524))

(assert (not bm!504281))

(assert (not b!6100138))

(assert (not d!1912142))

(assert (not b!6100203))

(assert (not d!1912246))

(assert (not b_lambda!232403))

(assert (not b!6100195))

(assert (not setNonEmpty!41205))

(assert (not d!1912230))

(assert (not bm!504249))

(assert (not b!6100480))

(assert (not b!6100076))

(assert (not b!6100505))

(assert (not b!6100477))

(assert (not b!6100483))

(assert (not b!6100233))

(assert (not d!1912240))

(assert (not b!6100541))

(assert (not b!6100246))

(assert (not d!1912182))

(assert (not b!6100504))

(assert (not b!6100547))

(assert tp_is_empty!41349)

(assert (not b!6100479))

(assert (not d!1912158))

(assert (not b!6100365))

(assert (not b!6100213))

(assert (not b!6100224))

(assert (not bm!504298))

(assert (not bm!504272))

(assert (not b!6100497))

(assert (not b!6100212))

(assert (not b!6100243))

(assert (not b_lambda!232401))

(assert (not b!6100199))

(assert (not b!6100234))

(assert (not b!6100251))

(assert (not b!6100248))

(assert (not bm!504307))

(assert (not bm!504301))

(assert (not b!6100276))

(assert (not d!1912162))

(assert (not bm!504246))

(assert (not d!1912200))

(assert (not b!6100241))

(assert (not b!6100530))

(assert (not b!6100534))

(assert (not b!6100256))

(assert (not b!6100329))

(assert (not b!6100144))

(assert (not b_lambda!232405))

(assert (not b!6100485))

(assert (not bs!1514794))

(assert (not bs!1514793))

(assert (not b!6100177))

(assert (not b!6100228))

(assert (not b!6100231))

(assert (not d!1912228))

(assert (not b!6100230))

(assert (not b!6100205))

(assert (not bm!504260))

(assert (not b!6100548))

(assert (not b!6100537))

(assert (not b!6100028))

(assert (not d!1912188))

(assert (not d!1912210))

(assert (not b!6100328))

(assert (not d!1912170))

(assert (not b!6100141))

(assert (not b!6100540))

(assert (not bm!504285))

(assert (not b!6100327))

(assert (not b!6100267))

(assert (not d!1912242))

(assert (not bm!504286))

(assert (not b!6100542))

(assert (not d!1912136))

(assert (not bm!504259))

(assert (not b!6100393))

(assert (not b!6100395))

(assert (not d!1912176))

(assert (not bm!504292))

(assert (not b!6100392))

(assert (not b!6100211))

(assert (not b!6100134))

(assert (not bs!1514795))

(assert (not bm!504251))

(assert (not d!1912236))

(assert (not b!6100008))

(assert (not b!6100206))

(assert (not d!1912232))

(assert (not d!1912212))

(assert (not bm!504303))

(assert (not b!6100474))

(assert (not d!1912208))

(assert (not b!6100389))

(assert (not bm!504297))

(assert (not b!6100478))

(assert (not b!6100520))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1912328 () Bool)

(assert (=> d!1912328 (= (isEmpty!36243 (tail!11706 s!2326)) (is-Nil!64321 (tail!11706 s!2326)))))

(assert (=> b!6100224 d!1912328))

(declare-fun d!1912330 () Bool)

(assert (=> d!1912330 (= (tail!11706 s!2326) (t!377894 s!2326))))

(assert (=> b!6100224 d!1912330))

(declare-fun d!1912332 () Bool)

(assert (=> d!1912332 (= (nullable!6043 (reg!16377 (regTwo!32608 r!7292))) (nullableFct!2007 (reg!16377 (regTwo!32608 r!7292))))))

(declare-fun bs!1514835 () Bool)

(assert (= bs!1514835 d!1912332))

(declare-fun m!6953372 () Bool)

(assert (=> bs!1514835 m!6953372))

(assert (=> b!6100213 d!1912332))

(declare-fun b!6100830 () Bool)

(declare-fun e!3720895 () (Set Context!10864))

(declare-fun call!504357 () (Set Context!10864))

(declare-fun call!504361 () (Set Context!10864))

(assert (=> b!6100830 (= e!3720895 (set.union call!504357 call!504361))))

(declare-fun call!504362 () List!64443)

(declare-fun c!1095865 () Bool)

(declare-fun bm!504352 () Bool)

(assert (=> bm!504352 (= call!504357 (derivationStepZipperDown!1298 (ite c!1095865 (regOne!32609 (ite c!1095703 (regTwo!32609 (regOne!32608 r!7292)) (ite c!1095704 (regTwo!32608 (regOne!32608 r!7292)) (ite c!1095706 (regOne!32608 (regOne!32608 r!7292)) (reg!16377 (regOne!32608 r!7292)))))) (regOne!32608 (ite c!1095703 (regTwo!32609 (regOne!32608 r!7292)) (ite c!1095704 (regTwo!32608 (regOne!32608 r!7292)) (ite c!1095706 (regOne!32608 (regOne!32608 r!7292)) (reg!16377 (regOne!32608 r!7292))))))) (ite c!1095865 (ite (or c!1095703 c!1095704) lt!2328944 (Context!10865 call!504299)) (Context!10865 call!504362)) (h!70769 s!2326)))))

(declare-fun c!1095864 () Bool)

(declare-fun b!6100831 () Bool)

(assert (=> b!6100831 (= c!1095864 (is-Star!16048 (ite c!1095703 (regTwo!32609 (regOne!32608 r!7292)) (ite c!1095704 (regTwo!32608 (regOne!32608 r!7292)) (ite c!1095706 (regOne!32608 (regOne!32608 r!7292)) (reg!16377 (regOne!32608 r!7292)))))))))

(declare-fun e!3720897 () (Set Context!10864))

(declare-fun e!3720899 () (Set Context!10864))

(assert (=> b!6100831 (= e!3720897 e!3720899)))

(declare-fun b!6100832 () Bool)

(declare-fun e!3720896 () Bool)

(assert (=> b!6100832 (= e!3720896 (nullable!6043 (regOne!32608 (ite c!1095703 (regTwo!32609 (regOne!32608 r!7292)) (ite c!1095704 (regTwo!32608 (regOne!32608 r!7292)) (ite c!1095706 (regOne!32608 (regOne!32608 r!7292)) (reg!16377 (regOne!32608 r!7292))))))))))

(declare-fun d!1912334 () Bool)

(declare-fun c!1095867 () Bool)

(assert (=> d!1912334 (= c!1095867 (and (is-ElementMatch!16048 (ite c!1095703 (regTwo!32609 (regOne!32608 r!7292)) (ite c!1095704 (regTwo!32608 (regOne!32608 r!7292)) (ite c!1095706 (regOne!32608 (regOne!32608 r!7292)) (reg!16377 (regOne!32608 r!7292)))))) (= (c!1095611 (ite c!1095703 (regTwo!32609 (regOne!32608 r!7292)) (ite c!1095704 (regTwo!32608 (regOne!32608 r!7292)) (ite c!1095706 (regOne!32608 (regOne!32608 r!7292)) (reg!16377 (regOne!32608 r!7292)))))) (h!70769 s!2326))))))

(declare-fun e!3720894 () (Set Context!10864))

(assert (=> d!1912334 (= (derivationStepZipperDown!1298 (ite c!1095703 (regTwo!32609 (regOne!32608 r!7292)) (ite c!1095704 (regTwo!32608 (regOne!32608 r!7292)) (ite c!1095706 (regOne!32608 (regOne!32608 r!7292)) (reg!16377 (regOne!32608 r!7292))))) (ite (or c!1095703 c!1095704) lt!2328944 (Context!10865 call!504299)) (h!70769 s!2326)) e!3720894)))

(declare-fun b!6100833 () Bool)

(declare-fun e!3720898 () (Set Context!10864))

(declare-fun call!504358 () (Set Context!10864))

(assert (=> b!6100833 (= e!3720898 (set.union call!504357 call!504358))))

(declare-fun b!6100834 () Bool)

(assert (=> b!6100834 (= e!3720894 e!3720895)))

(assert (=> b!6100834 (= c!1095865 (is-Union!16048 (ite c!1095703 (regTwo!32609 (regOne!32608 r!7292)) (ite c!1095704 (regTwo!32608 (regOne!32608 r!7292)) (ite c!1095706 (regOne!32608 (regOne!32608 r!7292)) (reg!16377 (regOne!32608 r!7292)))))))))

(declare-fun b!6100835 () Bool)

(assert (=> b!6100835 (= e!3720894 (set.insert (ite (or c!1095703 c!1095704) lt!2328944 (Context!10865 call!504299)) (as set.empty (Set Context!10864))))))

(declare-fun b!6100836 () Bool)

(declare-fun c!1095866 () Bool)

(assert (=> b!6100836 (= c!1095866 e!3720896)))

(declare-fun res!2531270 () Bool)

(assert (=> b!6100836 (=> (not res!2531270) (not e!3720896))))

(assert (=> b!6100836 (= res!2531270 (is-Concat!24893 (ite c!1095703 (regTwo!32609 (regOne!32608 r!7292)) (ite c!1095704 (regTwo!32608 (regOne!32608 r!7292)) (ite c!1095706 (regOne!32608 (regOne!32608 r!7292)) (reg!16377 (regOne!32608 r!7292)))))))))

(assert (=> b!6100836 (= e!3720895 e!3720898)))

(declare-fun bm!504353 () Bool)

(declare-fun call!504359 () List!64443)

(assert (=> bm!504353 (= call!504359 call!504362)))

(declare-fun b!6100837 () Bool)

(assert (=> b!6100837 (= e!3720898 e!3720897)))

(declare-fun c!1095868 () Bool)

(assert (=> b!6100837 (= c!1095868 (is-Concat!24893 (ite c!1095703 (regTwo!32609 (regOne!32608 r!7292)) (ite c!1095704 (regTwo!32608 (regOne!32608 r!7292)) (ite c!1095706 (regOne!32608 (regOne!32608 r!7292)) (reg!16377 (regOne!32608 r!7292)))))))))

(declare-fun b!6100838 () Bool)

(declare-fun call!504360 () (Set Context!10864))

(assert (=> b!6100838 (= e!3720899 call!504360)))

(declare-fun b!6100839 () Bool)

(assert (=> b!6100839 (= e!3720897 call!504360)))

(declare-fun bm!504354 () Bool)

(assert (=> bm!504354 (= call!504360 call!504358)))

(declare-fun bm!504355 () Bool)

(assert (=> bm!504355 (= call!504361 (derivationStepZipperDown!1298 (ite c!1095865 (regTwo!32609 (ite c!1095703 (regTwo!32609 (regOne!32608 r!7292)) (ite c!1095704 (regTwo!32608 (regOne!32608 r!7292)) (ite c!1095706 (regOne!32608 (regOne!32608 r!7292)) (reg!16377 (regOne!32608 r!7292)))))) (ite c!1095866 (regTwo!32608 (ite c!1095703 (regTwo!32609 (regOne!32608 r!7292)) (ite c!1095704 (regTwo!32608 (regOne!32608 r!7292)) (ite c!1095706 (regOne!32608 (regOne!32608 r!7292)) (reg!16377 (regOne!32608 r!7292)))))) (ite c!1095868 (regOne!32608 (ite c!1095703 (regTwo!32609 (regOne!32608 r!7292)) (ite c!1095704 (regTwo!32608 (regOne!32608 r!7292)) (ite c!1095706 (regOne!32608 (regOne!32608 r!7292)) (reg!16377 (regOne!32608 r!7292)))))) (reg!16377 (ite c!1095703 (regTwo!32609 (regOne!32608 r!7292)) (ite c!1095704 (regTwo!32608 (regOne!32608 r!7292)) (ite c!1095706 (regOne!32608 (regOne!32608 r!7292)) (reg!16377 (regOne!32608 r!7292))))))))) (ite (or c!1095865 c!1095866) (ite (or c!1095703 c!1095704) lt!2328944 (Context!10865 call!504299)) (Context!10865 call!504359)) (h!70769 s!2326)))))

(declare-fun bm!504356 () Bool)

(assert (=> bm!504356 (= call!504358 call!504361)))

(declare-fun bm!504357 () Bool)

(assert (=> bm!504357 (= call!504362 ($colon$colon!1927 (exprs!5932 (ite (or c!1095703 c!1095704) lt!2328944 (Context!10865 call!504299))) (ite (or c!1095866 c!1095868) (regTwo!32608 (ite c!1095703 (regTwo!32609 (regOne!32608 r!7292)) (ite c!1095704 (regTwo!32608 (regOne!32608 r!7292)) (ite c!1095706 (regOne!32608 (regOne!32608 r!7292)) (reg!16377 (regOne!32608 r!7292)))))) (ite c!1095703 (regTwo!32609 (regOne!32608 r!7292)) (ite c!1095704 (regTwo!32608 (regOne!32608 r!7292)) (ite c!1095706 (regOne!32608 (regOne!32608 r!7292)) (reg!16377 (regOne!32608 r!7292))))))))))

(declare-fun b!6100840 () Bool)

(assert (=> b!6100840 (= e!3720899 (as set.empty (Set Context!10864)))))

(assert (= (and d!1912334 c!1095867) b!6100835))

(assert (= (and d!1912334 (not c!1095867)) b!6100834))

(assert (= (and b!6100834 c!1095865) b!6100830))

(assert (= (and b!6100834 (not c!1095865)) b!6100836))

(assert (= (and b!6100836 res!2531270) b!6100832))

(assert (= (and b!6100836 c!1095866) b!6100833))

(assert (= (and b!6100836 (not c!1095866)) b!6100837))

(assert (= (and b!6100837 c!1095868) b!6100839))

(assert (= (and b!6100837 (not c!1095868)) b!6100831))

(assert (= (and b!6100831 c!1095864) b!6100838))

(assert (= (and b!6100831 (not c!1095864)) b!6100840))

(assert (= (or b!6100839 b!6100838) bm!504353))

(assert (= (or b!6100839 b!6100838) bm!504354))

(assert (= (or b!6100833 bm!504353) bm!504357))

(assert (= (or b!6100833 bm!504354) bm!504356))

(assert (= (or b!6100830 bm!504356) bm!504355))

(assert (= (or b!6100830 b!6100833) bm!504352))

(declare-fun m!6953374 () Bool)

(assert (=> b!6100832 m!6953374))

(declare-fun m!6953376 () Bool)

(assert (=> bm!504352 m!6953376))

(declare-fun m!6953378 () Bool)

(assert (=> bm!504355 m!6953378))

(declare-fun m!6953380 () Bool)

(assert (=> b!6100835 m!6953380))

(declare-fun m!6953382 () Bool)

(assert (=> bm!504357 m!6953382))

(assert (=> bm!504295 d!1912334))

(assert (=> d!1912180 d!1912176))

(assert (=> d!1912180 d!1912178))

(declare-fun d!1912336 () Bool)

(assert (=> d!1912336 (= (matchR!8231 lt!2328943 s!2326) (matchZipper!2068 lt!2328945 s!2326))))

(assert (=> d!1912336 true))

(declare-fun _$44!1537 () Unit!157367)

(assert (=> d!1912336 (= (choose!45348 lt!2328945 lt!2328937 lt!2328943 s!2326) _$44!1537)))

(declare-fun bs!1514836 () Bool)

(assert (= bs!1514836 d!1912336))

(assert (=> bs!1514836 m!6952706))

(assert (=> bs!1514836 m!6952708))

(assert (=> d!1912180 d!1912336))

(declare-fun b!6100841 () Bool)

(declare-fun e!3720905 () Bool)

(declare-fun e!3720901 () Bool)

(assert (=> b!6100841 (= e!3720905 e!3720901)))

(declare-fun res!2531272 () Bool)

(assert (=> b!6100841 (= res!2531272 (not (nullable!6043 (reg!16377 lt!2328943))))))

(assert (=> b!6100841 (=> (not res!2531272) (not e!3720901))))

(declare-fun b!6100842 () Bool)

(declare-fun call!504364 () Bool)

(assert (=> b!6100842 (= e!3720901 call!504364)))

(declare-fun c!1095869 () Bool)

(declare-fun bm!504358 () Bool)

(declare-fun c!1095870 () Bool)

(assert (=> bm!504358 (= call!504364 (validRegex!7784 (ite c!1095870 (reg!16377 lt!2328943) (ite c!1095869 (regTwo!32609 lt!2328943) (regTwo!32608 lt!2328943)))))))

(declare-fun b!6100843 () Bool)

(declare-fun e!3720903 () Bool)

(assert (=> b!6100843 (= e!3720905 e!3720903)))

(assert (=> b!6100843 (= c!1095869 (is-Union!16048 lt!2328943))))

(declare-fun d!1912338 () Bool)

(declare-fun res!2531273 () Bool)

(declare-fun e!3720902 () Bool)

(assert (=> d!1912338 (=> res!2531273 e!3720902)))

(assert (=> d!1912338 (= res!2531273 (is-ElementMatch!16048 lt!2328943))))

(assert (=> d!1912338 (= (validRegex!7784 lt!2328943) e!3720902)))

(declare-fun bm!504359 () Bool)

(declare-fun call!504363 () Bool)

(assert (=> bm!504359 (= call!504363 call!504364)))

(declare-fun bm!504360 () Bool)

(declare-fun call!504365 () Bool)

(assert (=> bm!504360 (= call!504365 (validRegex!7784 (ite c!1095869 (regOne!32609 lt!2328943) (regOne!32608 lt!2328943))))))

(declare-fun b!6100844 () Bool)

(declare-fun e!3720904 () Bool)

(assert (=> b!6100844 (= e!3720904 call!504363)))

(declare-fun b!6100845 () Bool)

(declare-fun res!2531271 () Bool)

(declare-fun e!3720900 () Bool)

(assert (=> b!6100845 (=> res!2531271 e!3720900)))

(assert (=> b!6100845 (= res!2531271 (not (is-Concat!24893 lt!2328943)))))

(assert (=> b!6100845 (= e!3720903 e!3720900)))

(declare-fun b!6100846 () Bool)

(declare-fun e!3720906 () Bool)

(assert (=> b!6100846 (= e!3720906 call!504363)))

(declare-fun b!6100847 () Bool)

(declare-fun res!2531274 () Bool)

(assert (=> b!6100847 (=> (not res!2531274) (not e!3720906))))

(assert (=> b!6100847 (= res!2531274 call!504365)))

(assert (=> b!6100847 (= e!3720903 e!3720906)))

(declare-fun b!6100848 () Bool)

(assert (=> b!6100848 (= e!3720902 e!3720905)))

(assert (=> b!6100848 (= c!1095870 (is-Star!16048 lt!2328943))))

(declare-fun b!6100849 () Bool)

(assert (=> b!6100849 (= e!3720900 e!3720904)))

(declare-fun res!2531275 () Bool)

(assert (=> b!6100849 (=> (not res!2531275) (not e!3720904))))

(assert (=> b!6100849 (= res!2531275 call!504365)))

(assert (= (and d!1912338 (not res!2531273)) b!6100848))

(assert (= (and b!6100848 c!1095870) b!6100841))

(assert (= (and b!6100848 (not c!1095870)) b!6100843))

(assert (= (and b!6100841 res!2531272) b!6100842))

(assert (= (and b!6100843 c!1095869) b!6100847))

(assert (= (and b!6100843 (not c!1095869)) b!6100845))

(assert (= (and b!6100847 res!2531274) b!6100846))

(assert (= (and b!6100845 (not res!2531271)) b!6100849))

(assert (= (and b!6100849 res!2531275) b!6100844))

(assert (= (or b!6100846 b!6100844) bm!504359))

(assert (= (or b!6100847 b!6100849) bm!504360))

(assert (= (or b!6100842 bm!504359) bm!504358))

(declare-fun m!6953384 () Bool)

(assert (=> b!6100841 m!6953384))

(declare-fun m!6953386 () Bool)

(assert (=> bm!504358 m!6953386))

(declare-fun m!6953388 () Bool)

(assert (=> bm!504360 m!6953388))

(assert (=> d!1912180 d!1912338))

(declare-fun d!1912340 () Bool)

(assert (=> d!1912340 (= (flatMap!1561 z!1189 lambda!332246) (choose!45349 z!1189 lambda!332246))))

(declare-fun bs!1514837 () Bool)

(assert (= bs!1514837 d!1912340))

(declare-fun m!6953390 () Bool)

(assert (=> bs!1514837 m!6953390))

(assert (=> d!1912136 d!1912340))

(declare-fun bs!1514838 () Bool)

(declare-fun b!6100858 () Bool)

(assert (= bs!1514838 (and b!6100858 d!1912236)))

(declare-fun lambda!332330 () Int)

(assert (=> bs!1514838 (not (= lambda!332330 lambda!332297))))

(declare-fun bs!1514839 () Bool)

(assert (= bs!1514839 (and b!6100858 d!1912232)))

(assert (=> bs!1514839 (not (= lambda!332330 lambda!332286))))

(assert (=> bs!1514838 (not (= lambda!332330 lambda!332294))))

(declare-fun bs!1514840 () Bool)

(assert (= bs!1514840 (and b!6100858 b!6099858)))

(assert (=> bs!1514840 (not (= lambda!332330 lambda!332226))))

(declare-fun bs!1514841 () Bool)

(assert (= bs!1514841 (and b!6100858 b!6100066)))

(assert (=> bs!1514841 (not (= lambda!332330 lambda!332252))))

(declare-fun bs!1514842 () Bool)

(assert (= bs!1514842 (and b!6100858 b!6100074)))

(assert (=> bs!1514842 (= (and (= (reg!16377 (regTwo!32609 r!7292)) (reg!16377 r!7292)) (= (regTwo!32609 r!7292) r!7292)) (= lambda!332330 lambda!332251))))

(assert (=> bs!1514840 (not (= lambda!332330 lambda!332227))))

(assert (=> b!6100858 true))

(assert (=> b!6100858 true))

(declare-fun bs!1514843 () Bool)

(declare-fun b!6100850 () Bool)

(assert (= bs!1514843 (and b!6100850 d!1912236)))

(declare-fun lambda!332331 () Int)

(assert (=> bs!1514843 (= (and (= (regOne!32608 (regTwo!32609 r!7292)) (regOne!32608 r!7292)) (= (regTwo!32608 (regTwo!32609 r!7292)) (regTwo!32608 r!7292))) (= lambda!332331 lambda!332297))))

(declare-fun bs!1514844 () Bool)

(assert (= bs!1514844 (and b!6100850 d!1912232)))

(assert (=> bs!1514844 (not (= lambda!332331 lambda!332286))))

(assert (=> bs!1514843 (not (= lambda!332331 lambda!332294))))

(declare-fun bs!1514845 () Bool)

(assert (= bs!1514845 (and b!6100850 b!6100858)))

(assert (=> bs!1514845 (not (= lambda!332331 lambda!332330))))

(declare-fun bs!1514846 () Bool)

(assert (= bs!1514846 (and b!6100850 b!6099858)))

(assert (=> bs!1514846 (not (= lambda!332331 lambda!332226))))

(declare-fun bs!1514847 () Bool)

(assert (= bs!1514847 (and b!6100850 b!6100066)))

(assert (=> bs!1514847 (= (and (= (regOne!32608 (regTwo!32609 r!7292)) (regOne!32608 r!7292)) (= (regTwo!32608 (regTwo!32609 r!7292)) (regTwo!32608 r!7292))) (= lambda!332331 lambda!332252))))

(declare-fun bs!1514848 () Bool)

(assert (= bs!1514848 (and b!6100850 b!6100074)))

(assert (=> bs!1514848 (not (= lambda!332331 lambda!332251))))

(assert (=> bs!1514846 (= (and (= (regOne!32608 (regTwo!32609 r!7292)) (regOne!32608 r!7292)) (= (regTwo!32608 (regTwo!32609 r!7292)) (regTwo!32608 r!7292))) (= lambda!332331 lambda!332227))))

(assert (=> b!6100850 true))

(assert (=> b!6100850 true))

(declare-fun e!3720908 () Bool)

(declare-fun call!504366 () Bool)

(assert (=> b!6100850 (= e!3720908 call!504366)))

(declare-fun bm!504361 () Bool)

(declare-fun call!504367 () Bool)

(assert (=> bm!504361 (= call!504367 (isEmpty!36243 s!2326))))

(declare-fun b!6100851 () Bool)

(declare-fun e!3720907 () Bool)

(assert (=> b!6100851 (= e!3720907 (= s!2326 (Cons!64321 (c!1095611 (regTwo!32609 r!7292)) Nil!64321)))))

(declare-fun b!6100852 () Bool)

(declare-fun e!3720912 () Bool)

(assert (=> b!6100852 (= e!3720912 call!504367)))

(declare-fun b!6100854 () Bool)

(declare-fun c!1095872 () Bool)

(assert (=> b!6100854 (= c!1095872 (is-ElementMatch!16048 (regTwo!32609 r!7292)))))

(declare-fun e!3720911 () Bool)

(assert (=> b!6100854 (= e!3720911 e!3720907)))

(declare-fun b!6100855 () Bool)

(assert (=> b!6100855 (= e!3720912 e!3720911)))

(declare-fun res!2531276 () Bool)

(assert (=> b!6100855 (= res!2531276 (not (is-EmptyLang!16048 (regTwo!32609 r!7292))))))

(assert (=> b!6100855 (=> (not res!2531276) (not e!3720911))))

(declare-fun b!6100856 () Bool)

(declare-fun e!3720909 () Bool)

(assert (=> b!6100856 (= e!3720909 e!3720908)))

(declare-fun c!1095871 () Bool)

(assert (=> b!6100856 (= c!1095871 (is-Star!16048 (regTwo!32609 r!7292)))))

(declare-fun b!6100857 () Bool)

(declare-fun res!2531278 () Bool)

(declare-fun e!3720910 () Bool)

(assert (=> b!6100857 (=> res!2531278 e!3720910)))

(assert (=> b!6100857 (= res!2531278 call!504367)))

(assert (=> b!6100857 (= e!3720908 e!3720910)))

(assert (=> b!6100858 (= e!3720910 call!504366)))

(declare-fun b!6100859 () Bool)

(declare-fun e!3720913 () Bool)

(assert (=> b!6100859 (= e!3720909 e!3720913)))

(declare-fun res!2531277 () Bool)

(assert (=> b!6100859 (= res!2531277 (matchRSpec!3149 (regOne!32609 (regTwo!32609 r!7292)) s!2326))))

(assert (=> b!6100859 (=> res!2531277 e!3720913)))

(declare-fun d!1912342 () Bool)

(declare-fun c!1095874 () Bool)

(assert (=> d!1912342 (= c!1095874 (is-EmptyExpr!16048 (regTwo!32609 r!7292)))))

(assert (=> d!1912342 (= (matchRSpec!3149 (regTwo!32609 r!7292) s!2326) e!3720912)))

(declare-fun b!6100853 () Bool)

(declare-fun c!1095873 () Bool)

(assert (=> b!6100853 (= c!1095873 (is-Union!16048 (regTwo!32609 r!7292)))))

(assert (=> b!6100853 (= e!3720907 e!3720909)))

(declare-fun b!6100860 () Bool)

(assert (=> b!6100860 (= e!3720913 (matchRSpec!3149 (regTwo!32609 (regTwo!32609 r!7292)) s!2326))))

(declare-fun bm!504362 () Bool)

(assert (=> bm!504362 (= call!504366 (Exists!3118 (ite c!1095871 lambda!332330 lambda!332331)))))

(assert (= (and d!1912342 c!1095874) b!6100852))

(assert (= (and d!1912342 (not c!1095874)) b!6100855))

(assert (= (and b!6100855 res!2531276) b!6100854))

(assert (= (and b!6100854 c!1095872) b!6100851))

(assert (= (and b!6100854 (not c!1095872)) b!6100853))

(assert (= (and b!6100853 c!1095873) b!6100859))

(assert (= (and b!6100853 (not c!1095873)) b!6100856))

(assert (= (and b!6100859 (not res!2531277)) b!6100860))

(assert (= (and b!6100856 c!1095871) b!6100857))

(assert (= (and b!6100856 (not c!1095871)) b!6100850))

(assert (= (and b!6100857 (not res!2531278)) b!6100858))

(assert (= (or b!6100858 b!6100850) bm!504362))

(assert (= (or b!6100852 b!6100857) bm!504361))

(assert (=> bm!504361 m!6952840))

(declare-fun m!6953392 () Bool)

(assert (=> b!6100859 m!6953392))

(declare-fun m!6953394 () Bool)

(assert (=> b!6100860 m!6953394))

(declare-fun m!6953396 () Bool)

(assert (=> bm!504362 m!6953396))

(assert (=> b!6100076 d!1912342))

(assert (=> bs!1514794 d!1912184))

(declare-fun d!1912344 () Bool)

(assert (=> d!1912344 (= (nullable!6043 (h!70767 (exprs!5932 lt!2328944))) (nullableFct!2007 (h!70767 (exprs!5932 lt!2328944))))))

(declare-fun bs!1514849 () Bool)

(assert (= bs!1514849 d!1912344))

(declare-fun m!6953398 () Bool)

(assert (=> bs!1514849 m!6953398))

(assert (=> b!6100248 d!1912344))

(declare-fun d!1912346 () Bool)

(assert (=> d!1912346 (= (isEmpty!36243 s!2326) (is-Nil!64321 s!2326))))

(assert (=> d!1912162 d!1912346))

(assert (=> d!1912162 d!1912174))

(declare-fun d!1912348 () Bool)

(assert (=> d!1912348 (= (nullable!6043 (h!70767 (exprs!5932 lt!2328952))) (nullableFct!2007 (h!70767 (exprs!5932 lt!2328952))))))

(declare-fun bs!1514850 () Bool)

(assert (= bs!1514850 d!1912348))

(declare-fun m!6953400 () Bool)

(assert (=> bs!1514850 m!6953400))

(assert (=> b!6100243 d!1912348))

(declare-fun d!1912350 () Bool)

(declare-fun res!2531283 () Bool)

(declare-fun e!3720918 () Bool)

(assert (=> d!1912350 (=> res!2531283 e!3720918)))

(assert (=> d!1912350 (= res!2531283 (is-Nil!64320 lt!2329080))))

(assert (=> d!1912350 (= (noDuplicate!1897 lt!2329080) e!3720918)))

(declare-fun b!6100865 () Bool)

(declare-fun e!3720919 () Bool)

(assert (=> b!6100865 (= e!3720918 e!3720919)))

(declare-fun res!2531284 () Bool)

(assert (=> b!6100865 (=> (not res!2531284) (not e!3720919))))

(declare-fun contains!20013 (List!64444 Context!10864) Bool)

(assert (=> b!6100865 (= res!2531284 (not (contains!20013 (t!377893 lt!2329080) (h!70768 lt!2329080))))))

(declare-fun b!6100866 () Bool)

(assert (=> b!6100866 (= e!3720919 (noDuplicate!1897 (t!377893 lt!2329080)))))

(assert (= (and d!1912350 (not res!2531283)) b!6100865))

(assert (= (and b!6100865 res!2531284) b!6100866))

(declare-fun m!6953402 () Bool)

(assert (=> b!6100865 m!6953402))

(declare-fun m!6953404 () Bool)

(assert (=> b!6100866 m!6953404))

(assert (=> d!1912208 d!1912350))

(declare-fun d!1912352 () Bool)

(declare-fun e!3720927 () Bool)

(assert (=> d!1912352 e!3720927))

(declare-fun res!2531289 () Bool)

(assert (=> d!1912352 (=> (not res!2531289) (not e!3720927))))

(declare-fun res!2531290 () List!64444)

(assert (=> d!1912352 (= res!2531289 (noDuplicate!1897 res!2531290))))

(declare-fun e!3720926 () Bool)

(assert (=> d!1912352 e!3720926))

(assert (=> d!1912352 (= (choose!45347 lt!2328953) res!2531290)))

(declare-fun b!6100874 () Bool)

(declare-fun e!3720928 () Bool)

(declare-fun tp!1703363 () Bool)

(assert (=> b!6100874 (= e!3720928 tp!1703363)))

(declare-fun b!6100873 () Bool)

(declare-fun tp!1703364 () Bool)

(assert (=> b!6100873 (= e!3720926 (and (inv!83368 (h!70768 res!2531290)) e!3720928 tp!1703364))))

(declare-fun b!6100875 () Bool)

(assert (=> b!6100875 (= e!3720927 (= (content!11926 res!2531290) lt!2328953))))

(assert (= b!6100873 b!6100874))

(assert (= (and d!1912352 (is-Cons!64320 res!2531290)) b!6100873))

(assert (= (and d!1912352 res!2531289) b!6100875))

(declare-fun m!6953406 () Bool)

(assert (=> d!1912352 m!6953406))

(declare-fun m!6953408 () Bool)

(assert (=> b!6100873 m!6953408))

(declare-fun m!6953410 () Bool)

(assert (=> b!6100875 m!6953410))

(assert (=> d!1912208 d!1912352))

(declare-fun d!1912354 () Bool)

(assert (=> d!1912354 (= (head!12621 s!2326) (h!70769 s!2326))))

(assert (=> b!6100231 d!1912354))

(declare-fun b!6100876 () Bool)

(declare-fun e!3720934 () Bool)

(declare-fun e!3720930 () Bool)

(assert (=> b!6100876 (= e!3720934 e!3720930)))

(declare-fun res!2531292 () Bool)

(assert (=> b!6100876 (= res!2531292 (not (nullable!6043 (reg!16377 lt!2329072))))))

(assert (=> b!6100876 (=> (not res!2531292) (not e!3720930))))

(declare-fun b!6100877 () Bool)

(declare-fun call!504369 () Bool)

(assert (=> b!6100877 (= e!3720930 call!504369)))

(declare-fun c!1095876 () Bool)

(declare-fun bm!504363 () Bool)

(declare-fun c!1095875 () Bool)

(assert (=> bm!504363 (= call!504369 (validRegex!7784 (ite c!1095876 (reg!16377 lt!2329072) (ite c!1095875 (regTwo!32609 lt!2329072) (regTwo!32608 lt!2329072)))))))

(declare-fun b!6100878 () Bool)

(declare-fun e!3720932 () Bool)

(assert (=> b!6100878 (= e!3720934 e!3720932)))

(assert (=> b!6100878 (= c!1095875 (is-Union!16048 lt!2329072))))

(declare-fun d!1912356 () Bool)

(declare-fun res!2531293 () Bool)

(declare-fun e!3720931 () Bool)

(assert (=> d!1912356 (=> res!2531293 e!3720931)))

(assert (=> d!1912356 (= res!2531293 (is-ElementMatch!16048 lt!2329072))))

(assert (=> d!1912356 (= (validRegex!7784 lt!2329072) e!3720931)))

(declare-fun bm!504364 () Bool)

(declare-fun call!504368 () Bool)

(assert (=> bm!504364 (= call!504368 call!504369)))

(declare-fun bm!504365 () Bool)

(declare-fun call!504370 () Bool)

(assert (=> bm!504365 (= call!504370 (validRegex!7784 (ite c!1095875 (regOne!32609 lt!2329072) (regOne!32608 lt!2329072))))))

(declare-fun b!6100879 () Bool)

(declare-fun e!3720933 () Bool)

(assert (=> b!6100879 (= e!3720933 call!504368)))

(declare-fun b!6100880 () Bool)

(declare-fun res!2531291 () Bool)

(declare-fun e!3720929 () Bool)

(assert (=> b!6100880 (=> res!2531291 e!3720929)))

(assert (=> b!6100880 (= res!2531291 (not (is-Concat!24893 lt!2329072)))))

(assert (=> b!6100880 (= e!3720932 e!3720929)))

(declare-fun b!6100881 () Bool)

(declare-fun e!3720935 () Bool)

(assert (=> b!6100881 (= e!3720935 call!504368)))

(declare-fun b!6100882 () Bool)

(declare-fun res!2531294 () Bool)

(assert (=> b!6100882 (=> (not res!2531294) (not e!3720935))))

(assert (=> b!6100882 (= res!2531294 call!504370)))

(assert (=> b!6100882 (= e!3720932 e!3720935)))

(declare-fun b!6100883 () Bool)

(assert (=> b!6100883 (= e!3720931 e!3720934)))

(assert (=> b!6100883 (= c!1095876 (is-Star!16048 lt!2329072))))

(declare-fun b!6100884 () Bool)

(assert (=> b!6100884 (= e!3720929 e!3720933)))

(declare-fun res!2531295 () Bool)

(assert (=> b!6100884 (=> (not res!2531295) (not e!3720933))))

(assert (=> b!6100884 (= res!2531295 call!504370)))

(assert (= (and d!1912356 (not res!2531293)) b!6100883))

(assert (= (and b!6100883 c!1095876) b!6100876))

(assert (= (and b!6100883 (not c!1095876)) b!6100878))

(assert (= (and b!6100876 res!2531292) b!6100877))

(assert (= (and b!6100878 c!1095875) b!6100882))

(assert (= (and b!6100878 (not c!1095875)) b!6100880))

(assert (= (and b!6100882 res!2531294) b!6100881))

(assert (= (and b!6100880 (not res!2531291)) b!6100884))

(assert (= (and b!6100884 res!2531295) b!6100879))

(assert (= (or b!6100881 b!6100879) bm!504364))

(assert (= (or b!6100882 b!6100884) bm!504365))

(assert (= (or b!6100877 bm!504364) bm!504363))

(declare-fun m!6953412 () Bool)

(assert (=> b!6100876 m!6953412))

(declare-fun m!6953414 () Bool)

(assert (=> bm!504363 m!6953414))

(declare-fun m!6953416 () Bool)

(assert (=> bm!504365 m!6953416))

(assert (=> d!1912170 d!1912356))

(assert (=> d!1912170 d!1912210))

(assert (=> d!1912170 d!1912212))

(declare-fun b!6100885 () Bool)

(declare-fun e!3720937 () (Set Context!10864))

(declare-fun call!504371 () (Set Context!10864))

(declare-fun call!504375 () (Set Context!10864))

(assert (=> b!6100885 (= e!3720937 (set.union call!504371 call!504375))))

(declare-fun call!504376 () List!64443)

(declare-fun bm!504366 () Bool)

(declare-fun c!1095878 () Bool)

(assert (=> bm!504366 (= call!504371 (derivationStepZipperDown!1298 (ite c!1095878 (regOne!32609 (ite c!1095631 (regOne!32609 r!7292) (regOne!32608 r!7292))) (regOne!32608 (ite c!1095631 (regOne!32609 r!7292) (regOne!32608 r!7292)))) (ite c!1095878 (ite c!1095631 lt!2328949 (Context!10865 call!504256)) (Context!10865 call!504376)) (h!70769 s!2326)))))

(declare-fun b!6100886 () Bool)

(declare-fun c!1095877 () Bool)

(assert (=> b!6100886 (= c!1095877 (is-Star!16048 (ite c!1095631 (regOne!32609 r!7292) (regOne!32608 r!7292))))))

(declare-fun e!3720939 () (Set Context!10864))

(declare-fun e!3720941 () (Set Context!10864))

(assert (=> b!6100886 (= e!3720939 e!3720941)))

(declare-fun b!6100887 () Bool)

(declare-fun e!3720938 () Bool)

(assert (=> b!6100887 (= e!3720938 (nullable!6043 (regOne!32608 (ite c!1095631 (regOne!32609 r!7292) (regOne!32608 r!7292)))))))

(declare-fun c!1095880 () Bool)

(declare-fun d!1912358 () Bool)

(assert (=> d!1912358 (= c!1095880 (and (is-ElementMatch!16048 (ite c!1095631 (regOne!32609 r!7292) (regOne!32608 r!7292))) (= (c!1095611 (ite c!1095631 (regOne!32609 r!7292) (regOne!32608 r!7292))) (h!70769 s!2326))))))

(declare-fun e!3720936 () (Set Context!10864))

(assert (=> d!1912358 (= (derivationStepZipperDown!1298 (ite c!1095631 (regOne!32609 r!7292) (regOne!32608 r!7292)) (ite c!1095631 lt!2328949 (Context!10865 call!504256)) (h!70769 s!2326)) e!3720936)))

(declare-fun b!6100888 () Bool)

(declare-fun e!3720940 () (Set Context!10864))

(declare-fun call!504372 () (Set Context!10864))

(assert (=> b!6100888 (= e!3720940 (set.union call!504371 call!504372))))

(declare-fun b!6100889 () Bool)

(assert (=> b!6100889 (= e!3720936 e!3720937)))

(assert (=> b!6100889 (= c!1095878 (is-Union!16048 (ite c!1095631 (regOne!32609 r!7292) (regOne!32608 r!7292))))))

(declare-fun b!6100890 () Bool)

(assert (=> b!6100890 (= e!3720936 (set.insert (ite c!1095631 lt!2328949 (Context!10865 call!504256)) (as set.empty (Set Context!10864))))))

(declare-fun b!6100891 () Bool)

(declare-fun c!1095879 () Bool)

(assert (=> b!6100891 (= c!1095879 e!3720938)))

(declare-fun res!2531296 () Bool)

(assert (=> b!6100891 (=> (not res!2531296) (not e!3720938))))

(assert (=> b!6100891 (= res!2531296 (is-Concat!24893 (ite c!1095631 (regOne!32609 r!7292) (regOne!32608 r!7292))))))

(assert (=> b!6100891 (= e!3720937 e!3720940)))

(declare-fun bm!504367 () Bool)

(declare-fun call!504373 () List!64443)

(assert (=> bm!504367 (= call!504373 call!504376)))

(declare-fun b!6100892 () Bool)

(assert (=> b!6100892 (= e!3720940 e!3720939)))

(declare-fun c!1095881 () Bool)

(assert (=> b!6100892 (= c!1095881 (is-Concat!24893 (ite c!1095631 (regOne!32609 r!7292) (regOne!32608 r!7292))))))

(declare-fun b!6100893 () Bool)

(declare-fun call!504374 () (Set Context!10864))

(assert (=> b!6100893 (= e!3720941 call!504374)))

(declare-fun b!6100894 () Bool)

(assert (=> b!6100894 (= e!3720939 call!504374)))

(declare-fun bm!504368 () Bool)

(assert (=> bm!504368 (= call!504374 call!504372)))

(declare-fun bm!504369 () Bool)

(assert (=> bm!504369 (= call!504375 (derivationStepZipperDown!1298 (ite c!1095878 (regTwo!32609 (ite c!1095631 (regOne!32609 r!7292) (regOne!32608 r!7292))) (ite c!1095879 (regTwo!32608 (ite c!1095631 (regOne!32609 r!7292) (regOne!32608 r!7292))) (ite c!1095881 (regOne!32608 (ite c!1095631 (regOne!32609 r!7292) (regOne!32608 r!7292))) (reg!16377 (ite c!1095631 (regOne!32609 r!7292) (regOne!32608 r!7292)))))) (ite (or c!1095878 c!1095879) (ite c!1095631 lt!2328949 (Context!10865 call!504256)) (Context!10865 call!504373)) (h!70769 s!2326)))))

(declare-fun bm!504370 () Bool)

(assert (=> bm!504370 (= call!504372 call!504375)))

(declare-fun bm!504371 () Bool)

(assert (=> bm!504371 (= call!504376 ($colon$colon!1927 (exprs!5932 (ite c!1095631 lt!2328949 (Context!10865 call!504256))) (ite (or c!1095879 c!1095881) (regTwo!32608 (ite c!1095631 (regOne!32609 r!7292) (regOne!32608 r!7292))) (ite c!1095631 (regOne!32609 r!7292) (regOne!32608 r!7292)))))))

(declare-fun b!6100895 () Bool)

(assert (=> b!6100895 (= e!3720941 (as set.empty (Set Context!10864)))))

(assert (= (and d!1912358 c!1095880) b!6100890))

(assert (= (and d!1912358 (not c!1095880)) b!6100889))

(assert (= (and b!6100889 c!1095878) b!6100885))

(assert (= (and b!6100889 (not c!1095878)) b!6100891))

(assert (= (and b!6100891 res!2531296) b!6100887))

(assert (= (and b!6100891 c!1095879) b!6100888))

(assert (= (and b!6100891 (not c!1095879)) b!6100892))

(assert (= (and b!6100892 c!1095881) b!6100894))

(assert (= (and b!6100892 (not c!1095881)) b!6100886))

(assert (= (and b!6100886 c!1095877) b!6100893))

(assert (= (and b!6100886 (not c!1095877)) b!6100895))

(assert (= (or b!6100894 b!6100893) bm!504367))

(assert (= (or b!6100894 b!6100893) bm!504368))

(assert (= (or b!6100888 bm!504367) bm!504371))

(assert (= (or b!6100888 bm!504368) bm!504370))

(assert (= (or b!6100885 bm!504370) bm!504369))

(assert (= (or b!6100885 b!6100888) bm!504366))

(declare-fun m!6953418 () Bool)

(assert (=> b!6100887 m!6953418))

(declare-fun m!6953420 () Bool)

(assert (=> bm!504366 m!6953420))

(declare-fun m!6953422 () Bool)

(assert (=> bm!504369 m!6953422))

(declare-fun m!6953424 () Bool)

(assert (=> b!6100890 m!6953424))

(declare-fun m!6953426 () Bool)

(assert (=> bm!504371 m!6953426))

(assert (=> bm!504246 d!1912358))

(declare-fun bs!1514851 () Bool)

(declare-fun d!1912360 () Bool)

(assert (= bs!1514851 (and d!1912360 b!6100363)))

(declare-fun lambda!332334 () Int)

(assert (=> bs!1514851 (not (= lambda!332334 lambda!332270))))

(declare-fun bs!1514852 () Bool)

(assert (= bs!1514852 (and d!1912360 b!6100365)))

(assert (=> bs!1514852 (not (= lambda!332334 lambda!332271))))

(declare-fun bs!1514853 () Bool)

(assert (= bs!1514853 (and d!1912360 b!6100368)))

(assert (=> bs!1514853 (not (= lambda!332334 lambda!332273))))

(declare-fun bs!1514854 () Bool)

(assert (= bs!1514854 (and d!1912360 b!6100370)))

(assert (=> bs!1514854 (not (= lambda!332334 lambda!332274))))

(declare-fun exists!2401 ((Set Context!10864) Int) Bool)

(assert (=> d!1912360 (= (nullableZipper!1837 lt!2328953) (exists!2401 lt!2328953 lambda!332334))))

(declare-fun bs!1514855 () Bool)

(assert (= bs!1514855 d!1912360))

(declare-fun m!6953428 () Bool)

(assert (=> bs!1514855 m!6953428))

(assert (=> b!6100211 d!1912360))

(declare-fun b!6100896 () Bool)

(declare-fun e!3720942 () Bool)

(declare-fun e!3720945 () Bool)

(assert (=> b!6100896 (= e!3720942 e!3720945)))

(declare-fun c!1095884 () Bool)

(assert (=> b!6100896 (= c!1095884 (is-EmptyLang!16048 (derivativeStep!4771 r!7292 (head!12621 s!2326))))))

(declare-fun b!6100897 () Bool)

(declare-fun res!2531300 () Bool)

(declare-fun e!3720947 () Bool)

(assert (=> b!6100897 (=> res!2531300 e!3720947)))

(assert (=> b!6100897 (= res!2531300 (not (is-ElementMatch!16048 (derivativeStep!4771 r!7292 (head!12621 s!2326)))))))

(assert (=> b!6100897 (= e!3720945 e!3720947)))

(declare-fun b!6100898 () Bool)

(declare-fun res!2531298 () Bool)

(declare-fun e!3720943 () Bool)

(assert (=> b!6100898 (=> res!2531298 e!3720943)))

(assert (=> b!6100898 (= res!2531298 (not (isEmpty!36243 (tail!11706 (tail!11706 s!2326)))))))

(declare-fun bm!504372 () Bool)

(declare-fun call!504377 () Bool)

(assert (=> bm!504372 (= call!504377 (isEmpty!36243 (tail!11706 s!2326)))))

(declare-fun b!6100899 () Bool)

(declare-fun e!3720948 () Bool)

(assert (=> b!6100899 (= e!3720947 e!3720948)))

(declare-fun res!2531304 () Bool)

(assert (=> b!6100899 (=> (not res!2531304) (not e!3720948))))

(declare-fun lt!2329181 () Bool)

(assert (=> b!6100899 (= res!2531304 (not lt!2329181))))

(declare-fun d!1912362 () Bool)

(assert (=> d!1912362 e!3720942))

(declare-fun c!1095886 () Bool)

(assert (=> d!1912362 (= c!1095886 (is-EmptyExpr!16048 (derivativeStep!4771 r!7292 (head!12621 s!2326))))))

(declare-fun e!3720946 () Bool)

(assert (=> d!1912362 (= lt!2329181 e!3720946)))

(declare-fun c!1095885 () Bool)

(assert (=> d!1912362 (= c!1095885 (isEmpty!36243 (tail!11706 s!2326)))))

(assert (=> d!1912362 (validRegex!7784 (derivativeStep!4771 r!7292 (head!12621 s!2326)))))

(assert (=> d!1912362 (= (matchR!8231 (derivativeStep!4771 r!7292 (head!12621 s!2326)) (tail!11706 s!2326)) lt!2329181)))

(declare-fun b!6100900 () Bool)

(assert (=> b!6100900 (= e!3720945 (not lt!2329181))))

(declare-fun b!6100901 () Bool)

(declare-fun res!2531302 () Bool)

(assert (=> b!6100901 (=> res!2531302 e!3720947)))

(declare-fun e!3720944 () Bool)

(assert (=> b!6100901 (= res!2531302 e!3720944)))

(declare-fun res!2531297 () Bool)

(assert (=> b!6100901 (=> (not res!2531297) (not e!3720944))))

(assert (=> b!6100901 (= res!2531297 lt!2329181)))

(declare-fun b!6100902 () Bool)

(assert (=> b!6100902 (= e!3720946 (nullable!6043 (derivativeStep!4771 r!7292 (head!12621 s!2326))))))

(declare-fun b!6100903 () Bool)

(assert (=> b!6100903 (= e!3720948 e!3720943)))

(declare-fun res!2531299 () Bool)

(assert (=> b!6100903 (=> res!2531299 e!3720943)))

(assert (=> b!6100903 (= res!2531299 call!504377)))

(declare-fun b!6100904 () Bool)

(assert (=> b!6100904 (= e!3720946 (matchR!8231 (derivativeStep!4771 (derivativeStep!4771 r!7292 (head!12621 s!2326)) (head!12621 (tail!11706 s!2326))) (tail!11706 (tail!11706 s!2326))))))

(declare-fun b!6100905 () Bool)

(assert (=> b!6100905 (= e!3720944 (= (head!12621 (tail!11706 s!2326)) (c!1095611 (derivativeStep!4771 r!7292 (head!12621 s!2326)))))))

(declare-fun b!6100906 () Bool)

(assert (=> b!6100906 (= e!3720942 (= lt!2329181 call!504377))))

(declare-fun b!6100907 () Bool)

(declare-fun res!2531303 () Bool)

(assert (=> b!6100907 (=> (not res!2531303) (not e!3720944))))

(assert (=> b!6100907 (= res!2531303 (isEmpty!36243 (tail!11706 (tail!11706 s!2326))))))

(declare-fun b!6100908 () Bool)

(assert (=> b!6100908 (= e!3720943 (not (= (head!12621 (tail!11706 s!2326)) (c!1095611 (derivativeStep!4771 r!7292 (head!12621 s!2326))))))))

(declare-fun b!6100909 () Bool)

(declare-fun res!2531301 () Bool)

(assert (=> b!6100909 (=> (not res!2531301) (not e!3720944))))

(assert (=> b!6100909 (= res!2531301 (not call!504377))))

(assert (= (and d!1912362 c!1095885) b!6100902))

(assert (= (and d!1912362 (not c!1095885)) b!6100904))

(assert (= (and d!1912362 c!1095886) b!6100906))

(assert (= (and d!1912362 (not c!1095886)) b!6100896))

(assert (= (and b!6100896 c!1095884) b!6100900))

(assert (= (and b!6100896 (not c!1095884)) b!6100897))

(assert (= (and b!6100897 (not res!2531300)) b!6100901))

(assert (= (and b!6100901 res!2531297) b!6100909))

(assert (= (and b!6100909 res!2531301) b!6100907))

(assert (= (and b!6100907 res!2531303) b!6100905))

(assert (= (and b!6100901 (not res!2531302)) b!6100899))

(assert (= (and b!6100899 res!2531304) b!6100903))

(assert (= (and b!6100903 (not res!2531299)) b!6100898))

(assert (= (and b!6100898 (not res!2531298)) b!6100908))

(assert (= (or b!6100906 b!6100903 b!6100909) bm!504372))

(assert (=> b!6100907 m!6952854))

(declare-fun m!6953430 () Bool)

(assert (=> b!6100907 m!6953430))

(assert (=> b!6100907 m!6953430))

(declare-fun m!6953432 () Bool)

(assert (=> b!6100907 m!6953432))

(assert (=> b!6100905 m!6952854))

(declare-fun m!6953434 () Bool)

(assert (=> b!6100905 m!6953434))

(assert (=> bm!504372 m!6952854))

(assert (=> bm!504372 m!6952856))

(assert (=> b!6100902 m!6952862))

(declare-fun m!6953436 () Bool)

(assert (=> b!6100902 m!6953436))

(assert (=> b!6100904 m!6952854))

(assert (=> b!6100904 m!6953434))

(assert (=> b!6100904 m!6952862))

(assert (=> b!6100904 m!6953434))

(declare-fun m!6953438 () Bool)

(assert (=> b!6100904 m!6953438))

(assert (=> b!6100904 m!6952854))

(assert (=> b!6100904 m!6953430))

(assert (=> b!6100904 m!6953438))

(assert (=> b!6100904 m!6953430))

(declare-fun m!6953440 () Bool)

(assert (=> b!6100904 m!6953440))

(assert (=> b!6100898 m!6952854))

(assert (=> b!6100898 m!6953430))

(assert (=> b!6100898 m!6953430))

(assert (=> b!6100898 m!6953432))

(assert (=> d!1912362 m!6952854))

(assert (=> d!1912362 m!6952856))

(assert (=> d!1912362 m!6952862))

(declare-fun m!6953442 () Bool)

(assert (=> d!1912362 m!6953442))

(assert (=> b!6100908 m!6952854))

(assert (=> b!6100908 m!6953434))

(assert (=> b!6100140 d!1912362))

(declare-fun b!6100930 () Bool)

(declare-fun c!1095897 () Bool)

(assert (=> b!6100930 (= c!1095897 (is-Union!16048 r!7292))))

(declare-fun e!3720961 () Regex!16048)

(declare-fun e!3720959 () Regex!16048)

(assert (=> b!6100930 (= e!3720961 e!3720959)))

(declare-fun bm!504381 () Bool)

(declare-fun call!504386 () Regex!16048)

(declare-fun call!504389 () Regex!16048)

(assert (=> bm!504381 (= call!504386 call!504389)))

(declare-fun b!6100931 () Bool)

(declare-fun e!3720963 () Regex!16048)

(declare-fun call!504387 () Regex!16048)

(assert (=> b!6100931 (= e!3720963 (Union!16048 (Concat!24893 call!504387 (regTwo!32608 r!7292)) EmptyLang!16048))))

(declare-fun b!6100933 () Bool)

(declare-fun call!504388 () Regex!16048)

(assert (=> b!6100933 (= e!3720959 (Union!16048 call!504388 call!504389))))

(declare-fun bm!504382 () Bool)

(assert (=> bm!504382 (= call!504387 call!504388)))

(declare-fun b!6100934 () Bool)

(declare-fun e!3720962 () Regex!16048)

(assert (=> b!6100934 (= e!3720959 e!3720962)))

(declare-fun c!1095900 () Bool)

(assert (=> b!6100934 (= c!1095900 (is-Star!16048 r!7292))))

(declare-fun b!6100935 () Bool)

(declare-fun e!3720960 () Regex!16048)

(assert (=> b!6100935 (= e!3720960 EmptyLang!16048)))

(declare-fun bm!504383 () Bool)

(assert (=> bm!504383 (= call!504389 (derivativeStep!4771 (ite c!1095897 (regTwo!32609 r!7292) (ite c!1095900 (reg!16377 r!7292) (regOne!32608 r!7292))) (head!12621 s!2326)))))

(declare-fun c!1095898 () Bool)

(declare-fun bm!504384 () Bool)

(assert (=> bm!504384 (= call!504388 (derivativeStep!4771 (ite c!1095897 (regOne!32609 r!7292) (ite c!1095898 (regTwo!32608 r!7292) (regOne!32608 r!7292))) (head!12621 s!2326)))))

(declare-fun b!6100936 () Bool)

(assert (=> b!6100936 (= e!3720963 (Union!16048 (Concat!24893 call!504386 (regTwo!32608 r!7292)) call!504387))))

(declare-fun b!6100937 () Bool)

(assert (=> b!6100937 (= e!3720961 (ite (= (head!12621 s!2326) (c!1095611 r!7292)) EmptyExpr!16048 EmptyLang!16048))))

(declare-fun b!6100938 () Bool)

(assert (=> b!6100938 (= e!3720962 (Concat!24893 call!504386 r!7292))))

(declare-fun b!6100939 () Bool)

(assert (=> b!6100939 (= e!3720960 e!3720961)))

(declare-fun c!1095901 () Bool)

(assert (=> b!6100939 (= c!1095901 (is-ElementMatch!16048 r!7292))))

(declare-fun d!1912364 () Bool)

(declare-fun lt!2329184 () Regex!16048)

(assert (=> d!1912364 (validRegex!7784 lt!2329184)))

(assert (=> d!1912364 (= lt!2329184 e!3720960)))

(declare-fun c!1095899 () Bool)

(assert (=> d!1912364 (= c!1095899 (or (is-EmptyExpr!16048 r!7292) (is-EmptyLang!16048 r!7292)))))

(assert (=> d!1912364 (validRegex!7784 r!7292)))

(assert (=> d!1912364 (= (derivativeStep!4771 r!7292 (head!12621 s!2326)) lt!2329184)))

(declare-fun b!6100932 () Bool)

(assert (=> b!6100932 (= c!1095898 (nullable!6043 (regOne!32608 r!7292)))))

(assert (=> b!6100932 (= e!3720962 e!3720963)))

(assert (= (and d!1912364 c!1095899) b!6100935))

(assert (= (and d!1912364 (not c!1095899)) b!6100939))

(assert (= (and b!6100939 c!1095901) b!6100937))

(assert (= (and b!6100939 (not c!1095901)) b!6100930))

(assert (= (and b!6100930 c!1095897) b!6100933))

(assert (= (and b!6100930 (not c!1095897)) b!6100934))

(assert (= (and b!6100934 c!1095900) b!6100938))

(assert (= (and b!6100934 (not c!1095900)) b!6100932))

(assert (= (and b!6100932 c!1095898) b!6100936))

(assert (= (and b!6100932 (not c!1095898)) b!6100931))

(assert (= (or b!6100936 b!6100931) bm!504382))

(assert (= (or b!6100938 b!6100936) bm!504381))

(assert (= (or b!6100933 bm!504381) bm!504383))

(assert (= (or b!6100933 bm!504382) bm!504384))

(assert (=> bm!504383 m!6952858))

(declare-fun m!6953444 () Bool)

(assert (=> bm!504383 m!6953444))

(assert (=> bm!504384 m!6952858))

(declare-fun m!6953446 () Bool)

(assert (=> bm!504384 m!6953446))

(declare-fun m!6953448 () Bool)

(assert (=> d!1912364 m!6953448))

(assert (=> d!1912364 m!6952668))

(assert (=> b!6100932 m!6952666))

(assert (=> b!6100140 d!1912364))

(assert (=> b!6100140 d!1912354))

(assert (=> b!6100140 d!1912330))

(declare-fun d!1912366 () Bool)

(declare-fun c!1095903 () Bool)

(declare-fun e!3720965 () Bool)

(assert (=> d!1912366 (= c!1095903 e!3720965)))

(declare-fun res!2531305 () Bool)

(assert (=> d!1912366 (=> (not res!2531305) (not e!3720965))))

(assert (=> d!1912366 (= res!2531305 (is-Cons!64319 (exprs!5932 (Context!10865 (t!377892 (exprs!5932 lt!2328944))))))))

(declare-fun e!3720966 () (Set Context!10864))

(assert (=> d!1912366 (= (derivationStepZipperUp!1224 (Context!10865 (t!377892 (exprs!5932 lt!2328944))) (h!70769 s!2326)) e!3720966)))

(declare-fun b!6100940 () Bool)

(declare-fun e!3720964 () (Set Context!10864))

(assert (=> b!6100940 (= e!3720964 (as set.empty (Set Context!10864)))))

(declare-fun b!6100941 () Bool)

(assert (=> b!6100941 (= e!3720965 (nullable!6043 (h!70767 (exprs!5932 (Context!10865 (t!377892 (exprs!5932 lt!2328944)))))))))

(declare-fun b!6100942 () Bool)

(declare-fun call!504390 () (Set Context!10864))

(assert (=> b!6100942 (= e!3720964 call!504390)))

(declare-fun b!6100943 () Bool)

(assert (=> b!6100943 (= e!3720966 e!3720964)))

(declare-fun c!1095902 () Bool)

(assert (=> b!6100943 (= c!1095902 (is-Cons!64319 (exprs!5932 (Context!10865 (t!377892 (exprs!5932 lt!2328944))))))))

(declare-fun bm!504385 () Bool)

(assert (=> bm!504385 (= call!504390 (derivationStepZipperDown!1298 (h!70767 (exprs!5932 (Context!10865 (t!377892 (exprs!5932 lt!2328944))))) (Context!10865 (t!377892 (exprs!5932 (Context!10865 (t!377892 (exprs!5932 lt!2328944)))))) (h!70769 s!2326)))))

(declare-fun b!6100944 () Bool)

(assert (=> b!6100944 (= e!3720966 (set.union call!504390 (derivationStepZipperUp!1224 (Context!10865 (t!377892 (exprs!5932 (Context!10865 (t!377892 (exprs!5932 lt!2328944)))))) (h!70769 s!2326))))))

(assert (= (and d!1912366 res!2531305) b!6100941))

(assert (= (and d!1912366 c!1095903) b!6100944))

(assert (= (and d!1912366 (not c!1095903)) b!6100943))

(assert (= (and b!6100943 c!1095902) b!6100942))

(assert (= (and b!6100943 (not c!1095902)) b!6100940))

(assert (= (or b!6100944 b!6100942) bm!504385))

(declare-fun m!6953450 () Bool)

(assert (=> b!6100941 m!6953450))

(declare-fun m!6953452 () Bool)

(assert (=> bm!504385 m!6953452))

(declare-fun m!6953454 () Bool)

(assert (=> b!6100944 m!6953454))

(assert (=> b!6100251 d!1912366))

(declare-fun d!1912368 () Bool)

(declare-fun c!1095905 () Bool)

(declare-fun e!3720968 () Bool)

(assert (=> d!1912368 (= c!1095905 e!3720968)))

(declare-fun res!2531306 () Bool)

(assert (=> d!1912368 (=> (not res!2531306) (not e!3720968))))

(assert (=> d!1912368 (= res!2531306 (is-Cons!64319 (exprs!5932 (Context!10865 (t!377892 (exprs!5932 lt!2328952))))))))

(declare-fun e!3720969 () (Set Context!10864))

(assert (=> d!1912368 (= (derivationStepZipperUp!1224 (Context!10865 (t!377892 (exprs!5932 lt!2328952))) (h!70769 s!2326)) e!3720969)))

(declare-fun b!6100945 () Bool)

(declare-fun e!3720967 () (Set Context!10864))

(assert (=> b!6100945 (= e!3720967 (as set.empty (Set Context!10864)))))

(declare-fun b!6100946 () Bool)

(assert (=> b!6100946 (= e!3720968 (nullable!6043 (h!70767 (exprs!5932 (Context!10865 (t!377892 (exprs!5932 lt!2328952)))))))))

(declare-fun b!6100947 () Bool)

(declare-fun call!504391 () (Set Context!10864))

(assert (=> b!6100947 (= e!3720967 call!504391)))

(declare-fun b!6100948 () Bool)

(assert (=> b!6100948 (= e!3720969 e!3720967)))

(declare-fun c!1095904 () Bool)

(assert (=> b!6100948 (= c!1095904 (is-Cons!64319 (exprs!5932 (Context!10865 (t!377892 (exprs!5932 lt!2328952))))))))

(declare-fun bm!504386 () Bool)

(assert (=> bm!504386 (= call!504391 (derivationStepZipperDown!1298 (h!70767 (exprs!5932 (Context!10865 (t!377892 (exprs!5932 lt!2328952))))) (Context!10865 (t!377892 (exprs!5932 (Context!10865 (t!377892 (exprs!5932 lt!2328952)))))) (h!70769 s!2326)))))

(declare-fun b!6100949 () Bool)

(assert (=> b!6100949 (= e!3720969 (set.union call!504391 (derivationStepZipperUp!1224 (Context!10865 (t!377892 (exprs!5932 (Context!10865 (t!377892 (exprs!5932 lt!2328952)))))) (h!70769 s!2326))))))

(assert (= (and d!1912368 res!2531306) b!6100946))

(assert (= (and d!1912368 c!1095905) b!6100949))

(assert (= (and d!1912368 (not c!1095905)) b!6100948))

(assert (= (and b!6100948 c!1095904) b!6100947))

(assert (= (and b!6100948 (not c!1095904)) b!6100945))

(assert (= (or b!6100949 b!6100947) bm!504386))

(declare-fun m!6953456 () Bool)

(assert (=> b!6100946 m!6953456))

(declare-fun m!6953458 () Bool)

(assert (=> bm!504386 m!6953458))

(declare-fun m!6953460 () Bool)

(assert (=> b!6100949 m!6953460))

(assert (=> b!6100246 d!1912368))

(declare-fun b!6100950 () Bool)

(declare-fun e!3720975 () Bool)

(declare-fun e!3720971 () Bool)

(assert (=> b!6100950 (= e!3720975 e!3720971)))

(declare-fun res!2531308 () Bool)

(assert (=> b!6100950 (= res!2531308 (not (nullable!6043 (reg!16377 (ite c!1095678 (regOne!32609 r!7292) (regOne!32608 r!7292))))))))

(assert (=> b!6100950 (=> (not res!2531308) (not e!3720971))))

(declare-fun b!6100951 () Bool)

(declare-fun call!504393 () Bool)

(assert (=> b!6100951 (= e!3720971 call!504393)))

(declare-fun c!1095906 () Bool)

(declare-fun bm!504387 () Bool)

(declare-fun c!1095907 () Bool)

(assert (=> bm!504387 (= call!504393 (validRegex!7784 (ite c!1095907 (reg!16377 (ite c!1095678 (regOne!32609 r!7292) (regOne!32608 r!7292))) (ite c!1095906 (regTwo!32609 (ite c!1095678 (regOne!32609 r!7292) (regOne!32608 r!7292))) (regTwo!32608 (ite c!1095678 (regOne!32609 r!7292) (regOne!32608 r!7292)))))))))

(declare-fun b!6100952 () Bool)

(declare-fun e!3720973 () Bool)

(assert (=> b!6100952 (= e!3720975 e!3720973)))

(assert (=> b!6100952 (= c!1095906 (is-Union!16048 (ite c!1095678 (regOne!32609 r!7292) (regOne!32608 r!7292))))))

(declare-fun d!1912370 () Bool)

(declare-fun res!2531309 () Bool)

(declare-fun e!3720972 () Bool)

(assert (=> d!1912370 (=> res!2531309 e!3720972)))

(assert (=> d!1912370 (= res!2531309 (is-ElementMatch!16048 (ite c!1095678 (regOne!32609 r!7292) (regOne!32608 r!7292))))))

(assert (=> d!1912370 (= (validRegex!7784 (ite c!1095678 (regOne!32609 r!7292) (regOne!32608 r!7292))) e!3720972)))

(declare-fun bm!504388 () Bool)

(declare-fun call!504392 () Bool)

(assert (=> bm!504388 (= call!504392 call!504393)))

(declare-fun call!504394 () Bool)

(declare-fun bm!504389 () Bool)

(assert (=> bm!504389 (= call!504394 (validRegex!7784 (ite c!1095906 (regOne!32609 (ite c!1095678 (regOne!32609 r!7292) (regOne!32608 r!7292))) (regOne!32608 (ite c!1095678 (regOne!32609 r!7292) (regOne!32608 r!7292))))))))

(declare-fun b!6100953 () Bool)

(declare-fun e!3720974 () Bool)

(assert (=> b!6100953 (= e!3720974 call!504392)))

(declare-fun b!6100954 () Bool)

(declare-fun res!2531307 () Bool)

(declare-fun e!3720970 () Bool)

(assert (=> b!6100954 (=> res!2531307 e!3720970)))

(assert (=> b!6100954 (= res!2531307 (not (is-Concat!24893 (ite c!1095678 (regOne!32609 r!7292) (regOne!32608 r!7292)))))))

(assert (=> b!6100954 (= e!3720973 e!3720970)))

(declare-fun b!6100955 () Bool)

(declare-fun e!3720976 () Bool)

(assert (=> b!6100955 (= e!3720976 call!504392)))

(declare-fun b!6100956 () Bool)

(declare-fun res!2531310 () Bool)

(assert (=> b!6100956 (=> (not res!2531310) (not e!3720976))))

(assert (=> b!6100956 (= res!2531310 call!504394)))

(assert (=> b!6100956 (= e!3720973 e!3720976)))

(declare-fun b!6100957 () Bool)

(assert (=> b!6100957 (= e!3720972 e!3720975)))

(assert (=> b!6100957 (= c!1095907 (is-Star!16048 (ite c!1095678 (regOne!32609 r!7292) (regOne!32608 r!7292))))))

(declare-fun b!6100958 () Bool)

(assert (=> b!6100958 (= e!3720970 e!3720974)))

(declare-fun res!2531311 () Bool)

(assert (=> b!6100958 (=> (not res!2531311) (not e!3720974))))

(assert (=> b!6100958 (= res!2531311 call!504394)))

(assert (= (and d!1912370 (not res!2531309)) b!6100957))

(assert (= (and b!6100957 c!1095907) b!6100950))

(assert (= (and b!6100957 (not c!1095907)) b!6100952))

(assert (= (and b!6100950 res!2531308) b!6100951))

(assert (= (and b!6100952 c!1095906) b!6100956))

(assert (= (and b!6100952 (not c!1095906)) b!6100954))

(assert (= (and b!6100956 res!2531310) b!6100955))

(assert (= (and b!6100954 (not res!2531307)) b!6100958))

(assert (= (and b!6100958 res!2531311) b!6100953))

(assert (= (or b!6100955 b!6100953) bm!504388))

(assert (= (or b!6100956 b!6100958) bm!504389))

(assert (= (or b!6100951 bm!504388) bm!504387))

(declare-fun m!6953462 () Bool)

(assert (=> b!6100950 m!6953462))

(declare-fun m!6953464 () Bool)

(assert (=> bm!504387 m!6953464))

(declare-fun m!6953466 () Bool)

(assert (=> bm!504389 m!6953466))

(assert (=> bm!504283 d!1912370))

(declare-fun d!1912372 () Bool)

(declare-fun c!1095910 () Bool)

(assert (=> d!1912372 (= c!1095910 (is-Nil!64320 lt!2329080))))

(declare-fun e!3720979 () (Set Context!10864))

(assert (=> d!1912372 (= (content!11926 lt!2329080) e!3720979)))

(declare-fun b!6100963 () Bool)

(assert (=> b!6100963 (= e!3720979 (as set.empty (Set Context!10864)))))

(declare-fun b!6100964 () Bool)

(assert (=> b!6100964 (= e!3720979 (set.union (set.insert (h!70768 lt!2329080) (as set.empty (Set Context!10864))) (content!11926 (t!377893 lt!2329080))))))

(assert (= (and d!1912372 c!1095910) b!6100963))

(assert (= (and d!1912372 (not c!1095910)) b!6100964))

(declare-fun m!6953468 () Bool)

(assert (=> b!6100964 m!6953468))

(declare-fun m!6953470 () Bool)

(assert (=> b!6100964 m!6953470))

(assert (=> b!6100276 d!1912372))

(declare-fun d!1912374 () Bool)

(assert (=> d!1912374 (= (isEmpty!36245 (findConcatSeparation!2353 (regOne!32608 r!7292) (regTwo!32608 r!7292) Nil!64321 s!2326 s!2326)) (not (is-Some!15938 (findConcatSeparation!2353 (regOne!32608 r!7292) (regTwo!32608 r!7292) Nil!64321 s!2326 s!2326))))))

(assert (=> d!1912240 d!1912374))

(assert (=> d!1912232 d!1912224))

(declare-fun b!6100965 () Bool)

(declare-fun e!3720985 () Bool)

(declare-fun e!3720981 () Bool)

(assert (=> b!6100965 (= e!3720985 e!3720981)))

(declare-fun res!2531313 () Bool)

(assert (=> b!6100965 (= res!2531313 (not (nullable!6043 (reg!16377 (regOne!32608 r!7292)))))))

(assert (=> b!6100965 (=> (not res!2531313) (not e!3720981))))

(declare-fun b!6100966 () Bool)

(declare-fun call!504396 () Bool)

(assert (=> b!6100966 (= e!3720981 call!504396)))

(declare-fun bm!504390 () Bool)

(declare-fun c!1095912 () Bool)

(declare-fun c!1095911 () Bool)

(assert (=> bm!504390 (= call!504396 (validRegex!7784 (ite c!1095912 (reg!16377 (regOne!32608 r!7292)) (ite c!1095911 (regTwo!32609 (regOne!32608 r!7292)) (regTwo!32608 (regOne!32608 r!7292))))))))

(declare-fun b!6100967 () Bool)

(declare-fun e!3720983 () Bool)

(assert (=> b!6100967 (= e!3720985 e!3720983)))

(assert (=> b!6100967 (= c!1095911 (is-Union!16048 (regOne!32608 r!7292)))))

(declare-fun d!1912376 () Bool)

(declare-fun res!2531314 () Bool)

(declare-fun e!3720982 () Bool)

(assert (=> d!1912376 (=> res!2531314 e!3720982)))

(assert (=> d!1912376 (= res!2531314 (is-ElementMatch!16048 (regOne!32608 r!7292)))))

(assert (=> d!1912376 (= (validRegex!7784 (regOne!32608 r!7292)) e!3720982)))

(declare-fun bm!504391 () Bool)

(declare-fun call!504395 () Bool)

(assert (=> bm!504391 (= call!504395 call!504396)))

(declare-fun bm!504392 () Bool)

(declare-fun call!504397 () Bool)

(assert (=> bm!504392 (= call!504397 (validRegex!7784 (ite c!1095911 (regOne!32609 (regOne!32608 r!7292)) (regOne!32608 (regOne!32608 r!7292)))))))

(declare-fun b!6100968 () Bool)

(declare-fun e!3720984 () Bool)

(assert (=> b!6100968 (= e!3720984 call!504395)))

(declare-fun b!6100969 () Bool)

(declare-fun res!2531312 () Bool)

(declare-fun e!3720980 () Bool)

(assert (=> b!6100969 (=> res!2531312 e!3720980)))

(assert (=> b!6100969 (= res!2531312 (not (is-Concat!24893 (regOne!32608 r!7292))))))

(assert (=> b!6100969 (= e!3720983 e!3720980)))

(declare-fun b!6100970 () Bool)

(declare-fun e!3720986 () Bool)

(assert (=> b!6100970 (= e!3720986 call!504395)))

(declare-fun b!6100971 () Bool)

(declare-fun res!2531315 () Bool)

(assert (=> b!6100971 (=> (not res!2531315) (not e!3720986))))

(assert (=> b!6100971 (= res!2531315 call!504397)))

(assert (=> b!6100971 (= e!3720983 e!3720986)))

(declare-fun b!6100972 () Bool)

(assert (=> b!6100972 (= e!3720982 e!3720985)))

(assert (=> b!6100972 (= c!1095912 (is-Star!16048 (regOne!32608 r!7292)))))

(declare-fun b!6100973 () Bool)

(assert (=> b!6100973 (= e!3720980 e!3720984)))

(declare-fun res!2531316 () Bool)

(assert (=> b!6100973 (=> (not res!2531316) (not e!3720984))))

(assert (=> b!6100973 (= res!2531316 call!504397)))

(assert (= (and d!1912376 (not res!2531314)) b!6100972))

(assert (= (and b!6100972 c!1095912) b!6100965))

(assert (= (and b!6100972 (not c!1095912)) b!6100967))

(assert (= (and b!6100965 res!2531313) b!6100966))

(assert (= (and b!6100967 c!1095911) b!6100971))

(assert (= (and b!6100967 (not c!1095911)) b!6100969))

(assert (= (and b!6100971 res!2531315) b!6100970))

(assert (= (and b!6100969 (not res!2531312)) b!6100973))

(assert (= (and b!6100973 res!2531316) b!6100968))

(assert (= (or b!6100970 b!6100968) bm!504391))

(assert (= (or b!6100971 b!6100973) bm!504392))

(assert (= (or b!6100966 bm!504391) bm!504390))

(declare-fun m!6953472 () Bool)

(assert (=> b!6100965 m!6953472))

(declare-fun m!6953474 () Bool)

(assert (=> bm!504390 m!6953474))

(declare-fun m!6953476 () Bool)

(assert (=> bm!504392 m!6953476))

(assert (=> d!1912232 d!1912376))

(assert (=> d!1912232 d!1912240))

(declare-fun d!1912378 () Bool)

(assert (=> d!1912378 (= (Exists!3118 lambda!332286) (choose!45353 lambda!332286))))

(declare-fun bs!1514856 () Bool)

(assert (= bs!1514856 d!1912378))

(declare-fun m!6953478 () Bool)

(assert (=> bs!1514856 m!6953478))

(assert (=> d!1912232 d!1912378))

(declare-fun bs!1514857 () Bool)

(declare-fun d!1912380 () Bool)

(assert (= bs!1514857 (and d!1912380 d!1912232)))

(declare-fun lambda!332337 () Int)

(assert (=> bs!1514857 (= lambda!332337 lambda!332286)))

(declare-fun bs!1514858 () Bool)

(assert (= bs!1514858 (and d!1912380 d!1912236)))

(assert (=> bs!1514858 (= lambda!332337 lambda!332294)))

(declare-fun bs!1514859 () Bool)

(assert (= bs!1514859 (and d!1912380 b!6100858)))

(assert (=> bs!1514859 (not (= lambda!332337 lambda!332330))))

(declare-fun bs!1514860 () Bool)

(assert (= bs!1514860 (and d!1912380 b!6099858)))

(assert (=> bs!1514860 (= lambda!332337 lambda!332226)))

(declare-fun bs!1514861 () Bool)

(assert (= bs!1514861 (and d!1912380 b!6100066)))

(assert (=> bs!1514861 (not (= lambda!332337 lambda!332252))))

(declare-fun bs!1514862 () Bool)

(assert (= bs!1514862 (and d!1912380 b!6100074)))

(assert (=> bs!1514862 (not (= lambda!332337 lambda!332251))))

(assert (=> bs!1514860 (not (= lambda!332337 lambda!332227))))

(assert (=> bs!1514858 (not (= lambda!332337 lambda!332297))))

(declare-fun bs!1514863 () Bool)

(assert (= bs!1514863 (and d!1912380 b!6100850)))

(assert (=> bs!1514863 (not (= lambda!332337 lambda!332331))))

(assert (=> d!1912380 true))

(assert (=> d!1912380 true))

(assert (=> d!1912380 true))

(assert (=> d!1912380 (= (isDefined!12642 (findConcatSeparation!2353 (regOne!32608 r!7292) (regTwo!32608 r!7292) Nil!64321 s!2326 s!2326)) (Exists!3118 lambda!332337))))

(assert (=> d!1912380 true))

(declare-fun _$89!2137 () Unit!157367)

(assert (=> d!1912380 (= (choose!45355 (regOne!32608 r!7292) (regTwo!32608 r!7292) s!2326) _$89!2137)))

(declare-fun bs!1514864 () Bool)

(assert (= bs!1514864 d!1912380))

(assert (=> bs!1514864 m!6952676))

(assert (=> bs!1514864 m!6952676))

(assert (=> bs!1514864 m!6952678))

(declare-fun m!6953480 () Bool)

(assert (=> bs!1514864 m!6953480))

(assert (=> d!1912232 d!1912380))

(declare-fun d!1912382 () Bool)

(assert (=> d!1912382 (= (isEmptyLang!1477 lt!2329085) (is-EmptyLang!16048 lt!2329085))))

(assert (=> b!6100327 d!1912382))

(declare-fun d!1912384 () Bool)

(assert (=> d!1912384 (= (isEmptyExpr!1467 lt!2329145) (is-EmptyExpr!16048 lt!2329145))))

(assert (=> b!6100478 d!1912384))

(assert (=> b!6100144 d!1912354))

(declare-fun bs!1514865 () Bool)

(declare-fun d!1912386 () Bool)

(assert (= bs!1514865 (and d!1912386 b!6100363)))

(declare-fun lambda!332338 () Int)

(assert (=> bs!1514865 (not (= lambda!332338 lambda!332270))))

(declare-fun bs!1514866 () Bool)

(assert (= bs!1514866 (and d!1912386 b!6100365)))

(assert (=> bs!1514866 (not (= lambda!332338 lambda!332271))))

(declare-fun bs!1514867 () Bool)

(assert (= bs!1514867 (and d!1912386 b!6100368)))

(assert (=> bs!1514867 (not (= lambda!332338 lambda!332273))))

(declare-fun bs!1514868 () Bool)

(assert (= bs!1514868 (and d!1912386 b!6100370)))

(assert (=> bs!1514868 (not (= lambda!332338 lambda!332274))))

(declare-fun bs!1514869 () Bool)

(assert (= bs!1514869 (and d!1912386 d!1912360)))

(assert (=> bs!1514869 (= lambda!332338 lambda!332334)))

(assert (=> d!1912386 (= (nullableZipper!1837 lt!2328945) (exists!2401 lt!2328945 lambda!332338))))

(declare-fun bs!1514870 () Bool)

(assert (= bs!1514870 d!1912386))

(declare-fun m!6953482 () Bool)

(assert (=> bs!1514870 m!6953482))

(assert (=> b!6100240 d!1912386))

(declare-fun b!6100978 () Bool)

(declare-fun e!3720990 () (Set Context!10864))

(declare-fun call!504398 () (Set Context!10864))

(declare-fun call!504402 () (Set Context!10864))

(assert (=> b!6100978 (= e!3720990 (set.union call!504398 call!504402))))

(declare-fun c!1095914 () Bool)

(declare-fun call!504403 () List!64443)

(declare-fun bm!504393 () Bool)

(assert (=> bm!504393 (= call!504398 (derivationStepZipperDown!1298 (ite c!1095914 (regOne!32609 (h!70767 (exprs!5932 lt!2328947))) (regOne!32608 (h!70767 (exprs!5932 lt!2328947)))) (ite c!1095914 (Context!10865 (t!377892 (exprs!5932 lt!2328947))) (Context!10865 call!504403)) (h!70769 s!2326)))))

(declare-fun b!6100979 () Bool)

(declare-fun c!1095913 () Bool)

(assert (=> b!6100979 (= c!1095913 (is-Star!16048 (h!70767 (exprs!5932 lt!2328947))))))

(declare-fun e!3720992 () (Set Context!10864))

(declare-fun e!3720994 () (Set Context!10864))

(assert (=> b!6100979 (= e!3720992 e!3720994)))

(declare-fun b!6100980 () Bool)

(declare-fun e!3720991 () Bool)

(assert (=> b!6100980 (= e!3720991 (nullable!6043 (regOne!32608 (h!70767 (exprs!5932 lt!2328947)))))))

(declare-fun d!1912388 () Bool)

(declare-fun c!1095916 () Bool)

(assert (=> d!1912388 (= c!1095916 (and (is-ElementMatch!16048 (h!70767 (exprs!5932 lt!2328947))) (= (c!1095611 (h!70767 (exprs!5932 lt!2328947))) (h!70769 s!2326))))))

(declare-fun e!3720989 () (Set Context!10864))

(assert (=> d!1912388 (= (derivationStepZipperDown!1298 (h!70767 (exprs!5932 lt!2328947)) (Context!10865 (t!377892 (exprs!5932 lt!2328947))) (h!70769 s!2326)) e!3720989)))

(declare-fun b!6100981 () Bool)

(declare-fun e!3720993 () (Set Context!10864))

(declare-fun call!504399 () (Set Context!10864))

(assert (=> b!6100981 (= e!3720993 (set.union call!504398 call!504399))))

(declare-fun b!6100982 () Bool)

(assert (=> b!6100982 (= e!3720989 e!3720990)))

(assert (=> b!6100982 (= c!1095914 (is-Union!16048 (h!70767 (exprs!5932 lt!2328947))))))

(declare-fun b!6100983 () Bool)

(assert (=> b!6100983 (= e!3720989 (set.insert (Context!10865 (t!377892 (exprs!5932 lt!2328947))) (as set.empty (Set Context!10864))))))

(declare-fun b!6100984 () Bool)

(declare-fun c!1095915 () Bool)

(assert (=> b!6100984 (= c!1095915 e!3720991)))

(declare-fun res!2531321 () Bool)

(assert (=> b!6100984 (=> (not res!2531321) (not e!3720991))))

(assert (=> b!6100984 (= res!2531321 (is-Concat!24893 (h!70767 (exprs!5932 lt!2328947))))))

(assert (=> b!6100984 (= e!3720990 e!3720993)))

(declare-fun bm!504394 () Bool)

(declare-fun call!504400 () List!64443)

(assert (=> bm!504394 (= call!504400 call!504403)))

(declare-fun b!6100985 () Bool)

(assert (=> b!6100985 (= e!3720993 e!3720992)))

(declare-fun c!1095917 () Bool)

(assert (=> b!6100985 (= c!1095917 (is-Concat!24893 (h!70767 (exprs!5932 lt!2328947))))))

(declare-fun b!6100986 () Bool)

(declare-fun call!504401 () (Set Context!10864))

(assert (=> b!6100986 (= e!3720994 call!504401)))

(declare-fun b!6100987 () Bool)

(assert (=> b!6100987 (= e!3720992 call!504401)))

(declare-fun bm!504395 () Bool)

(assert (=> bm!504395 (= call!504401 call!504399)))

(declare-fun bm!504396 () Bool)

(assert (=> bm!504396 (= call!504402 (derivationStepZipperDown!1298 (ite c!1095914 (regTwo!32609 (h!70767 (exprs!5932 lt!2328947))) (ite c!1095915 (regTwo!32608 (h!70767 (exprs!5932 lt!2328947))) (ite c!1095917 (regOne!32608 (h!70767 (exprs!5932 lt!2328947))) (reg!16377 (h!70767 (exprs!5932 lt!2328947)))))) (ite (or c!1095914 c!1095915) (Context!10865 (t!377892 (exprs!5932 lt!2328947))) (Context!10865 call!504400)) (h!70769 s!2326)))))

(declare-fun bm!504397 () Bool)

(assert (=> bm!504397 (= call!504399 call!504402)))

(declare-fun bm!504398 () Bool)

(assert (=> bm!504398 (= call!504403 ($colon$colon!1927 (exprs!5932 (Context!10865 (t!377892 (exprs!5932 lt!2328947)))) (ite (or c!1095915 c!1095917) (regTwo!32608 (h!70767 (exprs!5932 lt!2328947))) (h!70767 (exprs!5932 lt!2328947)))))))

(declare-fun b!6100988 () Bool)

(assert (=> b!6100988 (= e!3720994 (as set.empty (Set Context!10864)))))

(assert (= (and d!1912388 c!1095916) b!6100983))

(assert (= (and d!1912388 (not c!1095916)) b!6100982))

(assert (= (and b!6100982 c!1095914) b!6100978))

(assert (= (and b!6100982 (not c!1095914)) b!6100984))

(assert (= (and b!6100984 res!2531321) b!6100980))

(assert (= (and b!6100984 c!1095915) b!6100981))

(assert (= (and b!6100984 (not c!1095915)) b!6100985))

(assert (= (and b!6100985 c!1095917) b!6100987))

(assert (= (and b!6100985 (not c!1095917)) b!6100979))

(assert (= (and b!6100979 c!1095913) b!6100986))

(assert (= (and b!6100979 (not c!1095913)) b!6100988))

(assert (= (or b!6100987 b!6100986) bm!504394))

(assert (= (or b!6100987 b!6100986) bm!504395))

(assert (= (or b!6100981 bm!504394) bm!504398))

(assert (= (or b!6100981 bm!504395) bm!504397))

(assert (= (or b!6100978 bm!504397) bm!504396))

(assert (= (or b!6100978 b!6100981) bm!504393))

(declare-fun m!6953484 () Bool)

(assert (=> b!6100980 m!6953484))

(declare-fun m!6953486 () Bool)

(assert (=> bm!504393 m!6953486))

(declare-fun m!6953488 () Bool)

(assert (=> bm!504396 m!6953488))

(declare-fun m!6953490 () Bool)

(assert (=> b!6100983 m!6953490))

(declare-fun m!6953492 () Bool)

(assert (=> bm!504398 m!6953492))

(assert (=> bm!504254 d!1912388))

(declare-fun d!1912390 () Bool)

(assert (=> d!1912390 (= (isEmpty!36239 (unfocusZipperList!1469 zl!343)) (is-Nil!64319 (unfocusZipperList!1469 zl!343)))))

(assert (=> b!6100331 d!1912390))

(declare-fun d!1912392 () Bool)

(declare-fun c!1095918 () Bool)

(assert (=> d!1912392 (= c!1095918 (is-Nil!64320 lt!2329062))))

(declare-fun e!3720995 () (Set Context!10864))

(assert (=> d!1912392 (= (content!11926 lt!2329062) e!3720995)))

(declare-fun b!6100989 () Bool)

(assert (=> b!6100989 (= e!3720995 (as set.empty (Set Context!10864)))))

(declare-fun b!6100990 () Bool)

(assert (=> b!6100990 (= e!3720995 (set.union (set.insert (h!70768 lt!2329062) (as set.empty (Set Context!10864))) (content!11926 (t!377893 lt!2329062))))))

(assert (= (and d!1912392 c!1095918) b!6100989))

(assert (= (and d!1912392 (not c!1095918)) b!6100990))

(declare-fun m!6953494 () Bool)

(assert (=> b!6100990 m!6953494))

(declare-fun m!6953496 () Bool)

(assert (=> b!6100990 m!6953496))

(assert (=> b!6100148 d!1912392))

(declare-fun d!1912394 () Bool)

(assert (=> d!1912394 (= (isConcat!990 lt!2329145) (is-Concat!24893 lt!2329145))))

(assert (=> b!6100474 d!1912394))

(declare-fun d!1912396 () Bool)

(assert (=> d!1912396 (= (Exists!3118 lambda!332294) (choose!45353 lambda!332294))))

(declare-fun bs!1514871 () Bool)

(assert (= bs!1514871 d!1912396))

(declare-fun m!6953498 () Bool)

(assert (=> bs!1514871 m!6953498))

(assert (=> d!1912236 d!1912396))

(declare-fun d!1912398 () Bool)

(assert (=> d!1912398 (= (Exists!3118 lambda!332297) (choose!45353 lambda!332297))))

(declare-fun bs!1514872 () Bool)

(assert (= bs!1514872 d!1912398))

(declare-fun m!6953500 () Bool)

(assert (=> bs!1514872 m!6953500))

(assert (=> d!1912236 d!1912398))

(declare-fun bs!1514873 () Bool)

(declare-fun d!1912400 () Bool)

(assert (= bs!1514873 (and d!1912400 d!1912232)))

(declare-fun lambda!332343 () Int)

(assert (=> bs!1514873 (= lambda!332343 lambda!332286)))

(declare-fun bs!1514874 () Bool)

(assert (= bs!1514874 (and d!1912400 d!1912236)))

(assert (=> bs!1514874 (= lambda!332343 lambda!332294)))

(declare-fun bs!1514875 () Bool)

(assert (= bs!1514875 (and d!1912400 b!6100858)))

(assert (=> bs!1514875 (not (= lambda!332343 lambda!332330))))

(declare-fun bs!1514876 () Bool)

(assert (= bs!1514876 (and d!1912400 b!6100066)))

(assert (=> bs!1514876 (not (= lambda!332343 lambda!332252))))

(declare-fun bs!1514877 () Bool)

(assert (= bs!1514877 (and d!1912400 b!6100074)))

(assert (=> bs!1514877 (not (= lambda!332343 lambda!332251))))

(declare-fun bs!1514878 () Bool)

(assert (= bs!1514878 (and d!1912400 b!6099858)))

(assert (=> bs!1514878 (not (= lambda!332343 lambda!332227))))

(assert (=> bs!1514874 (not (= lambda!332343 lambda!332297))))

(declare-fun bs!1514879 () Bool)

(assert (= bs!1514879 (and d!1912400 b!6100850)))

(assert (=> bs!1514879 (not (= lambda!332343 lambda!332331))))

(assert (=> bs!1514878 (= lambda!332343 lambda!332226)))

(declare-fun bs!1514880 () Bool)

(assert (= bs!1514880 (and d!1912400 d!1912380)))

(assert (=> bs!1514880 (= lambda!332343 lambda!332337)))

(assert (=> d!1912400 true))

(assert (=> d!1912400 true))

(assert (=> d!1912400 true))

(declare-fun lambda!332344 () Int)

(assert (=> bs!1514873 (not (= lambda!332344 lambda!332286))))

(declare-fun bs!1514881 () Bool)

(assert (= bs!1514881 d!1912400))

(assert (=> bs!1514881 (not (= lambda!332344 lambda!332343))))

(assert (=> bs!1514874 (not (= lambda!332344 lambda!332294))))

(assert (=> bs!1514875 (not (= lambda!332344 lambda!332330))))

(assert (=> bs!1514876 (= lambda!332344 lambda!332252)))

(assert (=> bs!1514877 (not (= lambda!332344 lambda!332251))))

(assert (=> bs!1514878 (= lambda!332344 lambda!332227)))

(assert (=> bs!1514874 (= lambda!332344 lambda!332297)))

(assert (=> bs!1514879 (= (and (= (regOne!32608 r!7292) (regOne!32608 (regTwo!32609 r!7292))) (= (regTwo!32608 r!7292) (regTwo!32608 (regTwo!32609 r!7292)))) (= lambda!332344 lambda!332331))))

(assert (=> bs!1514878 (not (= lambda!332344 lambda!332226))))

(assert (=> bs!1514880 (not (= lambda!332344 lambda!332337))))

(assert (=> d!1912400 true))

(assert (=> d!1912400 true))

(assert (=> d!1912400 true))

(assert (=> d!1912400 (= (Exists!3118 lambda!332343) (Exists!3118 lambda!332344))))

(assert (=> d!1912400 true))

(declare-fun _$90!1761 () Unit!157367)

(assert (=> d!1912400 (= (choose!45356 (regOne!32608 r!7292) (regTwo!32608 r!7292) s!2326) _$90!1761)))

(declare-fun m!6953502 () Bool)

(assert (=> bs!1514881 m!6953502))

(declare-fun m!6953504 () Bool)

(assert (=> bs!1514881 m!6953504))

(assert (=> d!1912236 d!1912400))

(assert (=> d!1912236 d!1912376))

(assert (=> b!6100208 d!1912328))

(assert (=> b!6100208 d!1912330))

(declare-fun bs!1514882 () Bool)

(declare-fun d!1912402 () Bool)

(assert (= bs!1514882 (and d!1912402 d!1912386)))

(declare-fun lambda!332345 () Int)

(assert (=> bs!1514882 (= lambda!332345 lambda!332338)))

(declare-fun bs!1514883 () Bool)

(assert (= bs!1514883 (and d!1912402 b!6100363)))

(assert (=> bs!1514883 (not (= lambda!332345 lambda!332270))))

(declare-fun bs!1514884 () Bool)

(assert (= bs!1514884 (and d!1912402 b!6100365)))

(assert (=> bs!1514884 (not (= lambda!332345 lambda!332271))))

(declare-fun bs!1514885 () Bool)

(assert (= bs!1514885 (and d!1912402 b!6100368)))

(assert (=> bs!1514885 (not (= lambda!332345 lambda!332273))))

(declare-fun bs!1514886 () Bool)

(assert (= bs!1514886 (and d!1912402 b!6100370)))

(assert (=> bs!1514886 (not (= lambda!332345 lambda!332274))))

(declare-fun bs!1514887 () Bool)

(assert (= bs!1514887 (and d!1912402 d!1912360)))

(assert (=> bs!1514887 (= lambda!332345 lambda!332334)))

(assert (=> d!1912402 (= (nullableZipper!1837 z!1189) (exists!2401 z!1189 lambda!332345))))

(declare-fun bs!1514888 () Bool)

(assert (= bs!1514888 d!1912402))

(declare-fun m!6953506 () Bool)

(assert (=> bs!1514888 m!6953506))

(assert (=> b!6100195 d!1912402))

(declare-fun d!1912404 () Bool)

(assert (=> d!1912404 (= (isDefined!12642 lt!2329116) (not (isEmpty!36245 lt!2329116)))))

(declare-fun bs!1514889 () Bool)

(assert (= bs!1514889 d!1912404))

(declare-fun m!6953508 () Bool)

(assert (=> bs!1514889 m!6953508))

(assert (=> b!6100392 d!1912404))

(declare-fun b!6100999 () Bool)

(declare-fun e!3721005 () Bool)

(declare-fun e!3721001 () Bool)

(assert (=> b!6100999 (= e!3721005 e!3721001)))

(declare-fun res!2531331 () Bool)

(assert (=> b!6100999 (= res!2531331 (not (nullable!6043 (reg!16377 lt!2329085))))))

(assert (=> b!6100999 (=> (not res!2531331) (not e!3721001))))

(declare-fun b!6101000 () Bool)

(declare-fun call!504405 () Bool)

(assert (=> b!6101000 (= e!3721001 call!504405)))

(declare-fun c!1095919 () Bool)

(declare-fun bm!504399 () Bool)

(declare-fun c!1095920 () Bool)

(assert (=> bm!504399 (= call!504405 (validRegex!7784 (ite c!1095920 (reg!16377 lt!2329085) (ite c!1095919 (regTwo!32609 lt!2329085) (regTwo!32608 lt!2329085)))))))

(declare-fun b!6101001 () Bool)

(declare-fun e!3721003 () Bool)

(assert (=> b!6101001 (= e!3721005 e!3721003)))

(assert (=> b!6101001 (= c!1095919 (is-Union!16048 lt!2329085))))

(declare-fun d!1912406 () Bool)

(declare-fun res!2531332 () Bool)

(declare-fun e!3721002 () Bool)

(assert (=> d!1912406 (=> res!2531332 e!3721002)))

(assert (=> d!1912406 (= res!2531332 (is-ElementMatch!16048 lt!2329085))))

(assert (=> d!1912406 (= (validRegex!7784 lt!2329085) e!3721002)))

(declare-fun bm!504400 () Bool)

(declare-fun call!504404 () Bool)

(assert (=> bm!504400 (= call!504404 call!504405)))

(declare-fun bm!504401 () Bool)

(declare-fun call!504406 () Bool)

(assert (=> bm!504401 (= call!504406 (validRegex!7784 (ite c!1095919 (regOne!32609 lt!2329085) (regOne!32608 lt!2329085))))))

(declare-fun b!6101002 () Bool)

(declare-fun e!3721004 () Bool)

(assert (=> b!6101002 (= e!3721004 call!504404)))

(declare-fun b!6101003 () Bool)

(declare-fun res!2531330 () Bool)

(declare-fun e!3721000 () Bool)

(assert (=> b!6101003 (=> res!2531330 e!3721000)))

(assert (=> b!6101003 (= res!2531330 (not (is-Concat!24893 lt!2329085)))))

(assert (=> b!6101003 (= e!3721003 e!3721000)))

(declare-fun b!6101004 () Bool)

(declare-fun e!3721006 () Bool)

(assert (=> b!6101004 (= e!3721006 call!504404)))

(declare-fun b!6101005 () Bool)

(declare-fun res!2531333 () Bool)

(assert (=> b!6101005 (=> (not res!2531333) (not e!3721006))))

(assert (=> b!6101005 (= res!2531333 call!504406)))

(assert (=> b!6101005 (= e!3721003 e!3721006)))

(declare-fun b!6101006 () Bool)

(assert (=> b!6101006 (= e!3721002 e!3721005)))

(assert (=> b!6101006 (= c!1095920 (is-Star!16048 lt!2329085))))

(declare-fun b!6101007 () Bool)

(assert (=> b!6101007 (= e!3721000 e!3721004)))

(declare-fun res!2531334 () Bool)

(assert (=> b!6101007 (=> (not res!2531334) (not e!3721004))))

(assert (=> b!6101007 (= res!2531334 call!504406)))

(assert (= (and d!1912406 (not res!2531332)) b!6101006))

(assert (= (and b!6101006 c!1095920) b!6100999))

(assert (= (and b!6101006 (not c!1095920)) b!6101001))

(assert (= (and b!6100999 res!2531331) b!6101000))

(assert (= (and b!6101001 c!1095919) b!6101005))

(assert (= (and b!6101001 (not c!1095919)) b!6101003))

(assert (= (and b!6101005 res!2531333) b!6101004))

(assert (= (and b!6101003 (not res!2531330)) b!6101007))

(assert (= (and b!6101007 res!2531334) b!6101002))

(assert (= (or b!6101004 b!6101002) bm!504400))

(assert (= (or b!6101005 b!6101007) bm!504401))

(assert (= (or b!6101000 bm!504400) bm!504399))

(declare-fun m!6953510 () Bool)

(assert (=> b!6100999 m!6953510))

(declare-fun m!6953512 () Bool)

(assert (=> bm!504399 m!6953512))

(declare-fun m!6953514 () Bool)

(assert (=> bm!504401 m!6953514))

(assert (=> d!1912210 d!1912406))

(declare-fun d!1912408 () Bool)

(declare-fun res!2531339 () Bool)

(declare-fun e!3721011 () Bool)

(assert (=> d!1912408 (=> res!2531339 e!3721011)))

(assert (=> d!1912408 (= res!2531339 (is-Nil!64319 (unfocusZipperList!1469 zl!343)))))

(assert (=> d!1912408 (= (forall!15169 (unfocusZipperList!1469 zl!343) lambda!332259) e!3721011)))

(declare-fun b!6101012 () Bool)

(declare-fun e!3721012 () Bool)

(assert (=> b!6101012 (= e!3721011 e!3721012)))

(declare-fun res!2531340 () Bool)

(assert (=> b!6101012 (=> (not res!2531340) (not e!3721012))))

(declare-fun dynLambda!25325 (Int Regex!16048) Bool)

(assert (=> b!6101012 (= res!2531340 (dynLambda!25325 lambda!332259 (h!70767 (unfocusZipperList!1469 zl!343))))))

(declare-fun b!6101013 () Bool)

(assert (=> b!6101013 (= e!3721012 (forall!15169 (t!377892 (unfocusZipperList!1469 zl!343)) lambda!332259))))

(assert (= (and d!1912408 (not res!2531339)) b!6101012))

(assert (= (and b!6101012 res!2531340) b!6101013))

(declare-fun b_lambda!232417 () Bool)

(assert (=> (not b_lambda!232417) (not b!6101012)))

(declare-fun m!6953516 () Bool)

(assert (=> b!6101012 m!6953516))

(declare-fun m!6953518 () Bool)

(assert (=> b!6101013 m!6953518))

(assert (=> d!1912210 d!1912408))

(declare-fun b!6101022 () Bool)

(declare-fun e!3721018 () List!64445)

(assert (=> b!6101022 (= e!3721018 (t!377894 s!2326))))

(declare-fun d!1912410 () Bool)

(declare-fun e!3721017 () Bool)

(assert (=> d!1912410 e!3721017))

(declare-fun res!2531346 () Bool)

(assert (=> d!1912410 (=> (not res!2531346) (not e!3721017))))

(declare-fun lt!2329187 () List!64445)

(declare-fun content!11928 (List!64445) (Set C!32366))

(assert (=> d!1912410 (= res!2531346 (= (content!11928 lt!2329187) (set.union (content!11928 (++!14137 Nil!64321 (Cons!64321 (h!70769 s!2326) Nil!64321))) (content!11928 (t!377894 s!2326)))))))

(assert (=> d!1912410 (= lt!2329187 e!3721018)))

(declare-fun c!1095923 () Bool)

(assert (=> d!1912410 (= c!1095923 (is-Nil!64321 (++!14137 Nil!64321 (Cons!64321 (h!70769 s!2326) Nil!64321))))))

(assert (=> d!1912410 (= (++!14137 (++!14137 Nil!64321 (Cons!64321 (h!70769 s!2326) Nil!64321)) (t!377894 s!2326)) lt!2329187)))

(declare-fun b!6101025 () Bool)

(assert (=> b!6101025 (= e!3721017 (or (not (= (t!377894 s!2326) Nil!64321)) (= lt!2329187 (++!14137 Nil!64321 (Cons!64321 (h!70769 s!2326) Nil!64321)))))))

(declare-fun b!6101024 () Bool)

(declare-fun res!2531345 () Bool)

(assert (=> b!6101024 (=> (not res!2531345) (not e!3721017))))

(declare-fun size!40195 (List!64445) Int)

(assert (=> b!6101024 (= res!2531345 (= (size!40195 lt!2329187) (+ (size!40195 (++!14137 Nil!64321 (Cons!64321 (h!70769 s!2326) Nil!64321))) (size!40195 (t!377894 s!2326)))))))

(declare-fun b!6101023 () Bool)

(assert (=> b!6101023 (= e!3721018 (Cons!64321 (h!70769 (++!14137 Nil!64321 (Cons!64321 (h!70769 s!2326) Nil!64321))) (++!14137 (t!377894 (++!14137 Nil!64321 (Cons!64321 (h!70769 s!2326) Nil!64321))) (t!377894 s!2326))))))

(assert (= (and d!1912410 c!1095923) b!6101022))

(assert (= (and d!1912410 (not c!1095923)) b!6101023))

(assert (= (and d!1912410 res!2531346) b!6101024))

(assert (= (and b!6101024 res!2531345) b!6101025))

(declare-fun m!6953520 () Bool)

(assert (=> d!1912410 m!6953520))

(assert (=> d!1912410 m!6953082))

(declare-fun m!6953522 () Bool)

(assert (=> d!1912410 m!6953522))

(declare-fun m!6953524 () Bool)

(assert (=> d!1912410 m!6953524))

(declare-fun m!6953526 () Bool)

(assert (=> b!6101024 m!6953526))

(assert (=> b!6101024 m!6953082))

(declare-fun m!6953528 () Bool)

(assert (=> b!6101024 m!6953528))

(declare-fun m!6953530 () Bool)

(assert (=> b!6101024 m!6953530))

(declare-fun m!6953532 () Bool)

(assert (=> b!6101023 m!6953532))

(assert (=> b!6100390 d!1912410))

(declare-fun b!6101026 () Bool)

(declare-fun e!3721020 () List!64445)

(assert (=> b!6101026 (= e!3721020 (Cons!64321 (h!70769 s!2326) Nil!64321))))

(declare-fun d!1912412 () Bool)

(declare-fun e!3721019 () Bool)

(assert (=> d!1912412 e!3721019))

(declare-fun res!2531348 () Bool)

(assert (=> d!1912412 (=> (not res!2531348) (not e!3721019))))

(declare-fun lt!2329188 () List!64445)

(assert (=> d!1912412 (= res!2531348 (= (content!11928 lt!2329188) (set.union (content!11928 Nil!64321) (content!11928 (Cons!64321 (h!70769 s!2326) Nil!64321)))))))

(assert (=> d!1912412 (= lt!2329188 e!3721020)))

(declare-fun c!1095924 () Bool)

(assert (=> d!1912412 (= c!1095924 (is-Nil!64321 Nil!64321))))

(assert (=> d!1912412 (= (++!14137 Nil!64321 (Cons!64321 (h!70769 s!2326) Nil!64321)) lt!2329188)))

(declare-fun b!6101029 () Bool)

(assert (=> b!6101029 (= e!3721019 (or (not (= (Cons!64321 (h!70769 s!2326) Nil!64321) Nil!64321)) (= lt!2329188 Nil!64321)))))

(declare-fun b!6101028 () Bool)

(declare-fun res!2531347 () Bool)

(assert (=> b!6101028 (=> (not res!2531347) (not e!3721019))))

(assert (=> b!6101028 (= res!2531347 (= (size!40195 lt!2329188) (+ (size!40195 Nil!64321) (size!40195 (Cons!64321 (h!70769 s!2326) Nil!64321)))))))

(declare-fun b!6101027 () Bool)

(assert (=> b!6101027 (= e!3721020 (Cons!64321 (h!70769 Nil!64321) (++!14137 (t!377894 Nil!64321) (Cons!64321 (h!70769 s!2326) Nil!64321))))))

(assert (= (and d!1912412 c!1095924) b!6101026))

(assert (= (and d!1912412 (not c!1095924)) b!6101027))

(assert (= (and d!1912412 res!2531348) b!6101028))

(assert (= (and b!6101028 res!2531347) b!6101029))

(declare-fun m!6953534 () Bool)

(assert (=> d!1912412 m!6953534))

(declare-fun m!6953536 () Bool)

(assert (=> d!1912412 m!6953536))

(declare-fun m!6953538 () Bool)

(assert (=> d!1912412 m!6953538))

(declare-fun m!6953540 () Bool)

(assert (=> b!6101028 m!6953540))

(declare-fun m!6953542 () Bool)

(assert (=> b!6101028 m!6953542))

(declare-fun m!6953544 () Bool)

(assert (=> b!6101028 m!6953544))

(declare-fun m!6953546 () Bool)

(assert (=> b!6101027 m!6953546))

(assert (=> b!6100390 d!1912412))

(declare-fun d!1912414 () Bool)

(assert (=> d!1912414 (= (++!14137 (++!14137 Nil!64321 (Cons!64321 (h!70769 s!2326) Nil!64321)) (t!377894 s!2326)) s!2326)))

(declare-fun lt!2329191 () Unit!157367)

(declare-fun choose!45362 (List!64445 C!32366 List!64445 List!64445) Unit!157367)

(assert (=> d!1912414 (= lt!2329191 (choose!45362 Nil!64321 (h!70769 s!2326) (t!377894 s!2326) s!2326))))

(assert (=> d!1912414 (= (++!14137 Nil!64321 (Cons!64321 (h!70769 s!2326) (t!377894 s!2326))) s!2326)))

(assert (=> d!1912414 (= (lemmaMoveElementToOtherListKeepsConcatEq!2232 Nil!64321 (h!70769 s!2326) (t!377894 s!2326) s!2326) lt!2329191)))

(declare-fun bs!1514890 () Bool)

(assert (= bs!1514890 d!1912414))

(assert (=> bs!1514890 m!6953082))

(assert (=> bs!1514890 m!6953082))

(assert (=> bs!1514890 m!6953084))

(declare-fun m!6953548 () Bool)

(assert (=> bs!1514890 m!6953548))

(declare-fun m!6953550 () Bool)

(assert (=> bs!1514890 m!6953550))

(assert (=> b!6100390 d!1912414))

(declare-fun b!6101030 () Bool)

(declare-fun res!2531353 () Bool)

(declare-fun e!3721021 () Bool)

(assert (=> b!6101030 (=> (not res!2531353) (not e!3721021))))

(declare-fun lt!2329193 () Option!15939)

(assert (=> b!6101030 (= res!2531353 (matchR!8231 (regTwo!32608 r!7292) (_2!36330 (get!22177 lt!2329193))))))

(declare-fun b!6101031 () Bool)

(declare-fun lt!2329192 () Unit!157367)

(declare-fun lt!2329194 () Unit!157367)

(assert (=> b!6101031 (= lt!2329192 lt!2329194)))

(assert (=> b!6101031 (= (++!14137 (++!14137 (++!14137 Nil!64321 (Cons!64321 (h!70769 s!2326) Nil!64321)) (Cons!64321 (h!70769 (t!377894 s!2326)) Nil!64321)) (t!377894 (t!377894 s!2326))) s!2326)))

(assert (=> b!6101031 (= lt!2329194 (lemmaMoveElementToOtherListKeepsConcatEq!2232 (++!14137 Nil!64321 (Cons!64321 (h!70769 s!2326) Nil!64321)) (h!70769 (t!377894 s!2326)) (t!377894 (t!377894 s!2326)) s!2326))))

(declare-fun e!3721022 () Option!15939)

(assert (=> b!6101031 (= e!3721022 (findConcatSeparation!2353 (regOne!32608 r!7292) (regTwo!32608 r!7292) (++!14137 (++!14137 Nil!64321 (Cons!64321 (h!70769 s!2326) Nil!64321)) (Cons!64321 (h!70769 (t!377894 s!2326)) Nil!64321)) (t!377894 (t!377894 s!2326)) s!2326))))

(declare-fun b!6101032 () Bool)

(declare-fun res!2531349 () Bool)

(assert (=> b!6101032 (=> (not res!2531349) (not e!3721021))))

(assert (=> b!6101032 (= res!2531349 (matchR!8231 (regOne!32608 r!7292) (_1!36330 (get!22177 lt!2329193))))))

(declare-fun b!6101033 () Bool)

(declare-fun e!3721023 () Bool)

(assert (=> b!6101033 (= e!3721023 (not (isDefined!12642 lt!2329193)))))

(declare-fun b!6101035 () Bool)

(declare-fun e!3721025 () Option!15939)

(assert (=> b!6101035 (= e!3721025 e!3721022)))

(declare-fun c!1095926 () Bool)

(assert (=> b!6101035 (= c!1095926 (is-Nil!64321 (t!377894 s!2326)))))

(declare-fun b!6101036 () Bool)

(assert (=> b!6101036 (= e!3721021 (= (++!14137 (_1!36330 (get!22177 lt!2329193)) (_2!36330 (get!22177 lt!2329193))) s!2326))))

(declare-fun d!1912416 () Bool)

(assert (=> d!1912416 e!3721023))

(declare-fun res!2531350 () Bool)

(assert (=> d!1912416 (=> res!2531350 e!3721023)))

(assert (=> d!1912416 (= res!2531350 e!3721021)))

(declare-fun res!2531351 () Bool)

(assert (=> d!1912416 (=> (not res!2531351) (not e!3721021))))

(assert (=> d!1912416 (= res!2531351 (isDefined!12642 lt!2329193))))

(assert (=> d!1912416 (= lt!2329193 e!3721025)))

(declare-fun c!1095925 () Bool)

(declare-fun e!3721024 () Bool)

(assert (=> d!1912416 (= c!1095925 e!3721024)))

(declare-fun res!2531352 () Bool)

(assert (=> d!1912416 (=> (not res!2531352) (not e!3721024))))

(assert (=> d!1912416 (= res!2531352 (matchR!8231 (regOne!32608 r!7292) (++!14137 Nil!64321 (Cons!64321 (h!70769 s!2326) Nil!64321))))))

(assert (=> d!1912416 (validRegex!7784 (regOne!32608 r!7292))))

(assert (=> d!1912416 (= (findConcatSeparation!2353 (regOne!32608 r!7292) (regTwo!32608 r!7292) (++!14137 Nil!64321 (Cons!64321 (h!70769 s!2326) Nil!64321)) (t!377894 s!2326) s!2326) lt!2329193)))

(declare-fun b!6101034 () Bool)

(assert (=> b!6101034 (= e!3721024 (matchR!8231 (regTwo!32608 r!7292) (t!377894 s!2326)))))

(declare-fun b!6101037 () Bool)

(assert (=> b!6101037 (= e!3721022 None!15938)))

(declare-fun b!6101038 () Bool)

(assert (=> b!6101038 (= e!3721025 (Some!15938 (tuple2!66055 (++!14137 Nil!64321 (Cons!64321 (h!70769 s!2326) Nil!64321)) (t!377894 s!2326))))))

(assert (= (and d!1912416 res!2531352) b!6101034))

(assert (= (and d!1912416 c!1095925) b!6101038))

(assert (= (and d!1912416 (not c!1095925)) b!6101035))

(assert (= (and b!6101035 c!1095926) b!6101037))

(assert (= (and b!6101035 (not c!1095926)) b!6101031))

(assert (= (and d!1912416 res!2531351) b!6101032))

(assert (= (and b!6101032 res!2531349) b!6101030))

(assert (= (and b!6101030 res!2531353) b!6101036))

(assert (= (and d!1912416 (not res!2531350)) b!6101033))

(declare-fun m!6953552 () Bool)

(assert (=> b!6101032 m!6953552))

(declare-fun m!6953554 () Bool)

(assert (=> b!6101032 m!6953554))

(declare-fun m!6953556 () Bool)

(assert (=> b!6101033 m!6953556))

(assert (=> b!6101030 m!6953552))

(declare-fun m!6953558 () Bool)

(assert (=> b!6101030 m!6953558))

(assert (=> b!6101031 m!6953082))

(declare-fun m!6953560 () Bool)

(assert (=> b!6101031 m!6953560))

(assert (=> b!6101031 m!6953560))

(declare-fun m!6953562 () Bool)

(assert (=> b!6101031 m!6953562))

(assert (=> b!6101031 m!6953082))

(declare-fun m!6953564 () Bool)

(assert (=> b!6101031 m!6953564))

(assert (=> b!6101031 m!6953560))

(declare-fun m!6953566 () Bool)

(assert (=> b!6101031 m!6953566))

(assert (=> d!1912416 m!6953556))

(assert (=> d!1912416 m!6953082))

(declare-fun m!6953568 () Bool)

(assert (=> d!1912416 m!6953568))

(assert (=> d!1912416 m!6953092))

(declare-fun m!6953570 () Bool)

(assert (=> b!6101034 m!6953570))

(assert (=> b!6101036 m!6953552))

(declare-fun m!6953572 () Bool)

(assert (=> b!6101036 m!6953572))

(assert (=> b!6100390 d!1912416))

(declare-fun d!1912418 () Bool)

(declare-fun res!2531354 () Bool)

(declare-fun e!3721026 () Bool)

(assert (=> d!1912418 (=> res!2531354 e!3721026)))

(assert (=> d!1912418 (= res!2531354 (is-Nil!64319 (exprs!5932 (h!70768 zl!343))))))

(assert (=> d!1912418 (= (forall!15169 (exprs!5932 (h!70768 zl!343)) lambda!332256) e!3721026)))

(declare-fun b!6101039 () Bool)

(declare-fun e!3721027 () Bool)

(assert (=> b!6101039 (= e!3721026 e!3721027)))

(declare-fun res!2531355 () Bool)

(assert (=> b!6101039 (=> (not res!2531355) (not e!3721027))))

(assert (=> b!6101039 (= res!2531355 (dynLambda!25325 lambda!332256 (h!70767 (exprs!5932 (h!70768 zl!343)))))))

(declare-fun b!6101040 () Bool)

(assert (=> b!6101040 (= e!3721027 (forall!15169 (t!377892 (exprs!5932 (h!70768 zl!343))) lambda!332256))))

(assert (= (and d!1912418 (not res!2531354)) b!6101039))

(assert (= (and b!6101039 res!2531355) b!6101040))

(declare-fun b_lambda!232419 () Bool)

(assert (=> (not b_lambda!232419) (not b!6101039)))

(declare-fun m!6953574 () Bool)

(assert (=> b!6101039 m!6953574))

(declare-fun m!6953576 () Bool)

(assert (=> b!6101040 m!6953576))

(assert (=> d!1912206 d!1912418))

(assert (=> bm!504289 d!1912346))

(declare-fun b!6101041 () Bool)

(declare-fun e!3721029 () (Set Context!10864))

(declare-fun call!504407 () (Set Context!10864))

(declare-fun call!504411 () (Set Context!10864))

(assert (=> b!6101041 (= e!3721029 (set.union call!504407 call!504411))))

(declare-fun call!504412 () List!64443)

(declare-fun bm!504402 () Bool)

(declare-fun c!1095928 () Bool)

(assert (=> bm!504402 (= call!504407 (derivationStepZipperDown!1298 (ite c!1095928 (regOne!32609 (ite c!1095708 (regOne!32609 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292)))) (regOne!32608 (ite c!1095708 (regOne!32609 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292))))) (ite c!1095928 (ite c!1095708 lt!2328949 (Context!10865 call!504308)) (Context!10865 call!504412)) (h!70769 s!2326)))))

(declare-fun b!6101042 () Bool)

(declare-fun c!1095927 () Bool)

(assert (=> b!6101042 (= c!1095927 (is-Star!16048 (ite c!1095708 (regOne!32609 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292)))))))

(declare-fun e!3721031 () (Set Context!10864))

(declare-fun e!3721033 () (Set Context!10864))

(assert (=> b!6101042 (= e!3721031 e!3721033)))

(declare-fun b!6101043 () Bool)

(declare-fun e!3721030 () Bool)

(assert (=> b!6101043 (= e!3721030 (nullable!6043 (regOne!32608 (ite c!1095708 (regOne!32609 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292))))))))

(declare-fun d!1912420 () Bool)

(declare-fun c!1095930 () Bool)

(assert (=> d!1912420 (= c!1095930 (and (is-ElementMatch!16048 (ite c!1095708 (regOne!32609 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292)))) (= (c!1095611 (ite c!1095708 (regOne!32609 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292)))) (h!70769 s!2326))))))

(declare-fun e!3721028 () (Set Context!10864))

(assert (=> d!1912420 (= (derivationStepZipperDown!1298 (ite c!1095708 (regOne!32609 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292))) (ite c!1095708 lt!2328949 (Context!10865 call!504308)) (h!70769 s!2326)) e!3721028)))

(declare-fun b!6101044 () Bool)

(declare-fun e!3721032 () (Set Context!10864))

(declare-fun call!504408 () (Set Context!10864))

(assert (=> b!6101044 (= e!3721032 (set.union call!504407 call!504408))))

(declare-fun b!6101045 () Bool)

(assert (=> b!6101045 (= e!3721028 e!3721029)))

(assert (=> b!6101045 (= c!1095928 (is-Union!16048 (ite c!1095708 (regOne!32609 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292)))))))

(declare-fun b!6101046 () Bool)

(assert (=> b!6101046 (= e!3721028 (set.insert (ite c!1095708 lt!2328949 (Context!10865 call!504308)) (as set.empty (Set Context!10864))))))

(declare-fun b!6101047 () Bool)

(declare-fun c!1095929 () Bool)

(assert (=> b!6101047 (= c!1095929 e!3721030)))

(declare-fun res!2531356 () Bool)

(assert (=> b!6101047 (=> (not res!2531356) (not e!3721030))))

(assert (=> b!6101047 (= res!2531356 (is-Concat!24893 (ite c!1095708 (regOne!32609 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292)))))))

(assert (=> b!6101047 (= e!3721029 e!3721032)))

(declare-fun bm!504403 () Bool)

(declare-fun call!504409 () List!64443)

(assert (=> bm!504403 (= call!504409 call!504412)))

(declare-fun b!6101048 () Bool)

(assert (=> b!6101048 (= e!3721032 e!3721031)))

(declare-fun c!1095931 () Bool)

(assert (=> b!6101048 (= c!1095931 (is-Concat!24893 (ite c!1095708 (regOne!32609 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292)))))))

(declare-fun b!6101049 () Bool)

(declare-fun call!504410 () (Set Context!10864))

(assert (=> b!6101049 (= e!3721033 call!504410)))

(declare-fun b!6101050 () Bool)

(assert (=> b!6101050 (= e!3721031 call!504410)))

(declare-fun bm!504404 () Bool)

(assert (=> bm!504404 (= call!504410 call!504408)))

(declare-fun bm!504405 () Bool)

(assert (=> bm!504405 (= call!504411 (derivationStepZipperDown!1298 (ite c!1095928 (regTwo!32609 (ite c!1095708 (regOne!32609 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292)))) (ite c!1095929 (regTwo!32608 (ite c!1095708 (regOne!32609 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292)))) (ite c!1095931 (regOne!32608 (ite c!1095708 (regOne!32609 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292)))) (reg!16377 (ite c!1095708 (regOne!32609 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292))))))) (ite (or c!1095928 c!1095929) (ite c!1095708 lt!2328949 (Context!10865 call!504308)) (Context!10865 call!504409)) (h!70769 s!2326)))))

(declare-fun bm!504406 () Bool)

(assert (=> bm!504406 (= call!504408 call!504411)))

(declare-fun bm!504407 () Bool)

(assert (=> bm!504407 (= call!504412 ($colon$colon!1927 (exprs!5932 (ite c!1095708 lt!2328949 (Context!10865 call!504308))) (ite (or c!1095929 c!1095931) (regTwo!32608 (ite c!1095708 (regOne!32609 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292)))) (ite c!1095708 (regOne!32609 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292))))))))

(declare-fun b!6101051 () Bool)

(assert (=> b!6101051 (= e!3721033 (as set.empty (Set Context!10864)))))

(assert (= (and d!1912420 c!1095930) b!6101046))

(assert (= (and d!1912420 (not c!1095930)) b!6101045))

(assert (= (and b!6101045 c!1095928) b!6101041))

(assert (= (and b!6101045 (not c!1095928)) b!6101047))

(assert (= (and b!6101047 res!2531356) b!6101043))

(assert (= (and b!6101047 c!1095929) b!6101044))

(assert (= (and b!6101047 (not c!1095929)) b!6101048))

(assert (= (and b!6101048 c!1095931) b!6101050))

(assert (= (and b!6101048 (not c!1095931)) b!6101042))

(assert (= (and b!6101042 c!1095927) b!6101049))

(assert (= (and b!6101042 (not c!1095927)) b!6101051))

(assert (= (or b!6101050 b!6101049) bm!504403))

(assert (= (or b!6101050 b!6101049) bm!504404))

(assert (= (or b!6101044 bm!504403) bm!504407))

(assert (= (or b!6101044 bm!504404) bm!504406))

(assert (= (or b!6101041 bm!504406) bm!504405))

(assert (= (or b!6101041 b!6101044) bm!504402))

(declare-fun m!6953578 () Bool)

(assert (=> b!6101043 m!6953578))

(declare-fun m!6953580 () Bool)

(assert (=> bm!504402 m!6953580))

(declare-fun m!6953582 () Bool)

(assert (=> bm!504405 m!6953582))

(declare-fun m!6953584 () Bool)

(assert (=> b!6101046 m!6953584))

(declare-fun m!6953586 () Bool)

(assert (=> bm!504407 m!6953586))

(assert (=> bm!504298 d!1912420))

(declare-fun d!1912422 () Bool)

(assert (=> d!1912422 (= ($colon$colon!1927 (exprs!5932 lt!2328949) (ite (or c!1095632 c!1095634) (regTwo!32608 r!7292) r!7292)) (Cons!64319 (ite (or c!1095632 c!1095634) (regTwo!32608 r!7292) r!7292) (exprs!5932 lt!2328949)))))

(assert (=> bm!504251 d!1912422))

(declare-fun d!1912424 () Bool)

(declare-fun res!2531357 () Bool)

(declare-fun e!3721034 () Bool)

(assert (=> d!1912424 (=> res!2531357 e!3721034)))

(assert (=> d!1912424 (= res!2531357 (is-Nil!64320 lt!2329062))))

(assert (=> d!1912424 (= (noDuplicate!1897 lt!2329062) e!3721034)))

(declare-fun b!6101052 () Bool)

(declare-fun e!3721035 () Bool)

(assert (=> b!6101052 (= e!3721034 e!3721035)))

(declare-fun res!2531358 () Bool)

(assert (=> b!6101052 (=> (not res!2531358) (not e!3721035))))

(assert (=> b!6101052 (= res!2531358 (not (contains!20013 (t!377893 lt!2329062) (h!70768 lt!2329062))))))

(declare-fun b!6101053 () Bool)

(assert (=> b!6101053 (= e!3721035 (noDuplicate!1897 (t!377893 lt!2329062)))))

(assert (= (and d!1912424 (not res!2531357)) b!6101052))

(assert (= (and b!6101052 res!2531358) b!6101053))

(declare-fun m!6953588 () Bool)

(assert (=> b!6101052 m!6953588))

(declare-fun m!6953590 () Bool)

(assert (=> b!6101053 m!6953590))

(assert (=> d!1912154 d!1912424))

(declare-fun d!1912426 () Bool)

(declare-fun e!3721037 () Bool)

(assert (=> d!1912426 e!3721037))

(declare-fun res!2531359 () Bool)

(assert (=> d!1912426 (=> (not res!2531359) (not e!3721037))))

(declare-fun res!2531360 () List!64444)

(assert (=> d!1912426 (= res!2531359 (noDuplicate!1897 res!2531360))))

(declare-fun e!3721036 () Bool)

(assert (=> d!1912426 e!3721036))

(assert (=> d!1912426 (= (choose!45347 z!1189) res!2531360)))

(declare-fun b!6101055 () Bool)

(declare-fun e!3721038 () Bool)

(declare-fun tp!1703365 () Bool)

(assert (=> b!6101055 (= e!3721038 tp!1703365)))

(declare-fun tp!1703366 () Bool)

(declare-fun b!6101054 () Bool)

(assert (=> b!6101054 (= e!3721036 (and (inv!83368 (h!70768 res!2531360)) e!3721038 tp!1703366))))

(declare-fun b!6101056 () Bool)

(assert (=> b!6101056 (= e!3721037 (= (content!11926 res!2531360) z!1189))))

(assert (= b!6101054 b!6101055))

(assert (= (and d!1912426 (is-Cons!64320 res!2531360)) b!6101054))

(assert (= (and d!1912426 res!2531359) b!6101056))

(declare-fun m!6953592 () Bool)

(assert (=> d!1912426 m!6953592))

(declare-fun m!6953594 () Bool)

(assert (=> b!6101054 m!6953594))

(declare-fun m!6953596 () Bool)

(assert (=> b!6101056 m!6953596))

(assert (=> d!1912154 d!1912426))

(declare-fun bs!1514891 () Bool)

(declare-fun d!1912428 () Bool)

(assert (= bs!1514891 (and d!1912428 d!1912386)))

(declare-fun lambda!332348 () Int)

(assert (=> bs!1514891 (not (= lambda!332348 lambda!332338))))

(declare-fun bs!1514892 () Bool)

(assert (= bs!1514892 (and d!1912428 b!6100363)))

(assert (=> bs!1514892 (not (= lambda!332348 lambda!332270))))

(declare-fun bs!1514893 () Bool)

(assert (= bs!1514893 (and d!1912428 b!6100365)))

(assert (=> bs!1514893 (not (= lambda!332348 lambda!332271))))

(declare-fun bs!1514894 () Bool)

(assert (= bs!1514894 (and d!1912428 d!1912402)))

(assert (=> bs!1514894 (not (= lambda!332348 lambda!332345))))

(declare-fun bs!1514895 () Bool)

(assert (= bs!1514895 (and d!1912428 b!6100368)))

(assert (=> bs!1514895 (not (= lambda!332348 lambda!332273))))

(declare-fun bs!1514896 () Bool)

(assert (= bs!1514896 (and d!1912428 b!6100370)))

(assert (=> bs!1514896 (not (= lambda!332348 lambda!332274))))

(declare-fun bs!1514897 () Bool)

(assert (= bs!1514897 (and d!1912428 d!1912360)))

(assert (=> bs!1514897 (not (= lambda!332348 lambda!332334))))

(assert (=> d!1912428 true))

(assert (=> d!1912428 true))

(declare-fun order!27399 () Int)

(declare-fun order!27397 () Int)

(declare-fun dynLambda!25326 (Int Int) Int)

(declare-fun dynLambda!25327 (Int Int) Int)

(assert (=> d!1912428 (< (dynLambda!25326 order!27397 lambda!332269) (dynLambda!25327 order!27399 lambda!332348))))

(assert (=> d!1912428 (forall!15170 (t!377893 lt!2328937) lambda!332348)))

(declare-fun lt!2329197 () Unit!157367)

(declare-fun choose!45363 (List!64444 Int Int Int) Unit!157367)

(assert (=> d!1912428 (= lt!2329197 (choose!45363 (t!377893 lt!2328937) lt!2329101 (zipperDepth!293 (t!377893 lt!2328937)) lambda!332269))))

(assert (=> d!1912428 (>= lt!2329101 (zipperDepth!293 (t!377893 lt!2328937)))))

(assert (=> d!1912428 (= (lemmaForallContextDepthBiggerThanTransitive!172 (t!377893 lt!2328937) lt!2329101 (zipperDepth!293 (t!377893 lt!2328937)) lambda!332269) lt!2329197)))

(declare-fun bs!1514898 () Bool)

(assert (= bs!1514898 d!1912428))

(declare-fun m!6953598 () Bool)

(assert (=> bs!1514898 m!6953598))

(assert (=> bs!1514898 m!6953050))

(declare-fun m!6953600 () Bool)

(assert (=> bs!1514898 m!6953600))

(assert (=> b!6100363 d!1912428))

(declare-fun d!1912430 () Bool)

(assert (=> d!1912430 (= (maxBigInt!0 (contextDepth!188 (h!70768 lt!2328937)) (zipperDepth!293 (t!377893 lt!2328937))) (ite (>= (contextDepth!188 (h!70768 lt!2328937)) (zipperDepth!293 (t!377893 lt!2328937))) (contextDepth!188 (h!70768 lt!2328937)) (zipperDepth!293 (t!377893 lt!2328937))))))

(assert (=> b!6100363 d!1912430))

(declare-fun bs!1514899 () Bool)

(declare-fun b!6101061 () Bool)

(assert (= bs!1514899 (and b!6101061 b!6100363)))

(declare-fun lambda!332349 () Int)

(assert (=> bs!1514899 (= lambda!332349 lambda!332269)))

(declare-fun bs!1514900 () Bool)

(assert (= bs!1514900 (and b!6101061 b!6100368)))

(assert (=> bs!1514900 (= lambda!332349 lambda!332272)))

(declare-fun lt!2329201 () Int)

(declare-fun lambda!332350 () Int)

(assert (=> bs!1514899 (= (= lt!2329201 lt!2329101) (= lambda!332350 lambda!332270))))

(declare-fun bs!1514901 () Bool)

(assert (= bs!1514901 (and b!6101061 b!6100365)))

(assert (=> bs!1514901 (= (= lt!2329201 lt!2329098) (= lambda!332350 lambda!332271))))

(declare-fun bs!1514902 () Bool)

(assert (= bs!1514902 (and b!6101061 d!1912402)))

(assert (=> bs!1514902 (not (= lambda!332350 lambda!332345))))

(assert (=> bs!1514900 (= (= lt!2329201 lt!2329105) (= lambda!332350 lambda!332273))))

(declare-fun bs!1514903 () Bool)

(assert (= bs!1514903 (and b!6101061 d!1912386)))

(assert (=> bs!1514903 (not (= lambda!332350 lambda!332338))))

(declare-fun bs!1514904 () Bool)

(assert (= bs!1514904 (and b!6101061 d!1912428)))

(assert (=> bs!1514904 (not (= lambda!332350 lambda!332348))))

(declare-fun bs!1514905 () Bool)

(assert (= bs!1514905 (and b!6101061 b!6100370)))

(assert (=> bs!1514905 (= (= lt!2329201 lt!2329102) (= lambda!332350 lambda!332274))))

(declare-fun bs!1514906 () Bool)

(assert (= bs!1514906 (and b!6101061 d!1912360)))

(assert (=> bs!1514906 (not (= lambda!332350 lambda!332334))))

(assert (=> b!6101061 true))

(declare-fun bs!1514907 () Bool)

(declare-fun b!6101063 () Bool)

(assert (= bs!1514907 (and b!6101063 b!6100363)))

(declare-fun lambda!332351 () Int)

(declare-fun lt!2329198 () Int)

(assert (=> bs!1514907 (= (= lt!2329198 lt!2329101) (= lambda!332351 lambda!332270))))

(declare-fun bs!1514908 () Bool)

(assert (= bs!1514908 (and b!6101063 b!6101061)))

(assert (=> bs!1514908 (= (= lt!2329198 lt!2329201) (= lambda!332351 lambda!332350))))

(declare-fun bs!1514909 () Bool)

(assert (= bs!1514909 (and b!6101063 b!6100365)))

(assert (=> bs!1514909 (= (= lt!2329198 lt!2329098) (= lambda!332351 lambda!332271))))

(declare-fun bs!1514910 () Bool)

(assert (= bs!1514910 (and b!6101063 d!1912402)))

(assert (=> bs!1514910 (not (= lambda!332351 lambda!332345))))

(declare-fun bs!1514911 () Bool)

(assert (= bs!1514911 (and b!6101063 b!6100368)))

(assert (=> bs!1514911 (= (= lt!2329198 lt!2329105) (= lambda!332351 lambda!332273))))

(declare-fun bs!1514912 () Bool)

(assert (= bs!1514912 (and b!6101063 d!1912386)))

(assert (=> bs!1514912 (not (= lambda!332351 lambda!332338))))

(declare-fun bs!1514913 () Bool)

(assert (= bs!1514913 (and b!6101063 d!1912428)))

(assert (=> bs!1514913 (not (= lambda!332351 lambda!332348))))

(declare-fun bs!1514914 () Bool)

(assert (= bs!1514914 (and b!6101063 b!6100370)))

(assert (=> bs!1514914 (= (= lt!2329198 lt!2329102) (= lambda!332351 lambda!332274))))

(declare-fun bs!1514915 () Bool)

(assert (= bs!1514915 (and b!6101063 d!1912360)))

(assert (=> bs!1514915 (not (= lambda!332351 lambda!332334))))

(assert (=> b!6101063 true))

(declare-fun d!1912432 () Bool)

(declare-fun e!3721040 () Bool)

(assert (=> d!1912432 e!3721040))

(declare-fun res!2531361 () Bool)

(assert (=> d!1912432 (=> (not res!2531361) (not e!3721040))))

(assert (=> d!1912432 (= res!2531361 (>= lt!2329198 0))))

(declare-fun e!3721039 () Int)

(assert (=> d!1912432 (= lt!2329198 e!3721039)))

(declare-fun c!1095934 () Bool)

(assert (=> d!1912432 (= c!1095934 (is-Cons!64320 (t!377893 lt!2328937)))))

(assert (=> d!1912432 (= (zipperDepth!293 (t!377893 lt!2328937)) lt!2329198)))

(assert (=> b!6101061 (= e!3721039 lt!2329201)))

(assert (=> b!6101061 (= lt!2329201 (maxBigInt!0 (contextDepth!188 (h!70768 (t!377893 lt!2328937))) (zipperDepth!293 (t!377893 (t!377893 lt!2328937)))))))

(declare-fun lt!2329200 () Unit!157367)

(assert (=> b!6101061 (= lt!2329200 (lemmaForallContextDepthBiggerThanTransitive!172 (t!377893 (t!377893 lt!2328937)) lt!2329201 (zipperDepth!293 (t!377893 (t!377893 lt!2328937))) lambda!332349))))

(assert (=> b!6101061 (forall!15170 (t!377893 (t!377893 lt!2328937)) lambda!332350)))

(declare-fun lt!2329199 () Unit!157367)

(assert (=> b!6101061 (= lt!2329199 lt!2329200)))

(declare-fun b!6101062 () Bool)

(assert (=> b!6101062 (= e!3721039 0)))

(assert (=> b!6101063 (= e!3721040 (forall!15170 (t!377893 lt!2328937) lambda!332351))))

(assert (= (and d!1912432 c!1095934) b!6101061))

(assert (= (and d!1912432 (not c!1095934)) b!6101062))

(assert (= (and d!1912432 res!2531361) b!6101063))

(declare-fun m!6953602 () Bool)

(assert (=> b!6101061 m!6953602))

(declare-fun m!6953604 () Bool)

(assert (=> b!6101061 m!6953604))

(declare-fun m!6953606 () Bool)

(assert (=> b!6101061 m!6953606))

(declare-fun m!6953608 () Bool)

(assert (=> b!6101061 m!6953608))

(assert (=> b!6101061 m!6953604))

(declare-fun m!6953610 () Bool)

(assert (=> b!6101061 m!6953610))

(assert (=> b!6101061 m!6953608))

(assert (=> b!6101061 m!6953604))

(declare-fun m!6953612 () Bool)

(assert (=> b!6101063 m!6953612))

(assert (=> b!6100363 d!1912432))

(declare-fun d!1912434 () Bool)

(declare-fun res!2531366 () Bool)

(declare-fun e!3721045 () Bool)

(assert (=> d!1912434 (=> res!2531366 e!3721045)))

(assert (=> d!1912434 (= res!2531366 (is-Nil!64320 (t!377893 lt!2328937)))))

(assert (=> d!1912434 (= (forall!15170 (t!377893 lt!2328937) lambda!332270) e!3721045)))

(declare-fun b!6101068 () Bool)

(declare-fun e!3721046 () Bool)

(assert (=> b!6101068 (= e!3721045 e!3721046)))

(declare-fun res!2531367 () Bool)

(assert (=> b!6101068 (=> (not res!2531367) (not e!3721046))))

(declare-fun dynLambda!25328 (Int Context!10864) Bool)

(assert (=> b!6101068 (= res!2531367 (dynLambda!25328 lambda!332270 (h!70768 (t!377893 lt!2328937))))))

(declare-fun b!6101069 () Bool)

(assert (=> b!6101069 (= e!3721046 (forall!15170 (t!377893 (t!377893 lt!2328937)) lambda!332270))))

(assert (= (and d!1912434 (not res!2531366)) b!6101068))

(assert (= (and b!6101068 res!2531367) b!6101069))

(declare-fun b_lambda!232421 () Bool)

(assert (=> (not b_lambda!232421) (not b!6101068)))

(declare-fun m!6953614 () Bool)

(assert (=> b!6101068 m!6953614))

(declare-fun m!6953616 () Bool)

(assert (=> b!6101069 m!6953616))

(assert (=> b!6100363 d!1912434))

(declare-fun bs!1514916 () Bool)

(declare-fun b!6101076 () Bool)

(assert (= bs!1514916 (and b!6101076 d!1912212)))

(declare-fun lambda!332356 () Int)

(assert (=> bs!1514916 (not (= lambda!332356 lambda!332262))))

(declare-fun bs!1514917 () Bool)

(assert (= bs!1514917 (and b!6101076 d!1912242)))

(assert (=> bs!1514917 (not (= lambda!332356 lambda!332301))))

(declare-fun bs!1514918 () Bool)

(assert (= bs!1514918 (and b!6101076 d!1912204)))

(assert (=> bs!1514918 (not (= lambda!332356 lambda!332255))))

(declare-fun bs!1514919 () Bool)

(assert (= bs!1514919 (and b!6101076 d!1912210)))

(assert (=> bs!1514919 (not (= lambda!332356 lambda!332259))))

(declare-fun bs!1514920 () Bool)

(assert (= bs!1514920 (and b!6101076 d!1912206)))

(assert (=> bs!1514920 (not (= lambda!332356 lambda!332256))))

(assert (=> b!6101076 true))

(declare-fun bs!1514921 () Bool)

(declare-fun b!6101078 () Bool)

(assert (= bs!1514921 (and b!6101078 d!1912212)))

(declare-fun lambda!332357 () Int)

(assert (=> bs!1514921 (not (= lambda!332357 lambda!332262))))

(declare-fun bs!1514922 () Bool)

(assert (= bs!1514922 (and b!6101078 d!1912242)))

(assert (=> bs!1514922 (not (= lambda!332357 lambda!332301))))

(declare-fun bs!1514923 () Bool)

(assert (= bs!1514923 (and b!6101078 d!1912204)))

(assert (=> bs!1514923 (not (= lambda!332357 lambda!332255))))

(declare-fun bs!1514924 () Bool)

(assert (= bs!1514924 (and b!6101078 b!6101076)))

(declare-fun lt!2329210 () Int)

(declare-fun lt!2329211 () Int)

(assert (=> bs!1514924 (= (= lt!2329211 lt!2329210) (= lambda!332357 lambda!332356))))

(declare-fun bs!1514925 () Bool)

(assert (= bs!1514925 (and b!6101078 d!1912210)))

(assert (=> bs!1514925 (not (= lambda!332357 lambda!332259))))

(declare-fun bs!1514926 () Bool)

(assert (= bs!1514926 (and b!6101078 d!1912206)))

(assert (=> bs!1514926 (not (= lambda!332357 lambda!332256))))

(assert (=> b!6101078 true))

(declare-fun d!1912436 () Bool)

(declare-fun e!3721052 () Bool)

(assert (=> d!1912436 e!3721052))

(declare-fun res!2531370 () Bool)

(assert (=> d!1912436 (=> (not res!2531370) (not e!3721052))))

(assert (=> d!1912436 (= res!2531370 (>= lt!2329211 0))))

(declare-fun e!3721051 () Int)

(assert (=> d!1912436 (= lt!2329211 e!3721051)))

(declare-fun c!1095938 () Bool)

(assert (=> d!1912436 (= c!1095938 (is-Cons!64319 (exprs!5932 (h!70768 lt!2328937))))))

(assert (=> d!1912436 (= (contextDepth!188 (h!70768 lt!2328937)) lt!2329211)))

(assert (=> b!6101076 (= e!3721051 lt!2329210)))

(declare-fun regexDepth!295 (Regex!16048) Int)

(assert (=> b!6101076 (= lt!2329210 (maxBigInt!0 (regexDepth!295 (h!70767 (exprs!5932 (h!70768 lt!2328937)))) (contextDepth!188 (Context!10865 (t!377892 (exprs!5932 (h!70768 lt!2328937)))))))))

(declare-fun lt!2329212 () Unit!157367)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!85 (List!64443 Int Int) Unit!157367)

(assert (=> b!6101076 (= lt!2329212 (lemmaForallRegexDepthBiggerThanTransitive!85 (t!377892 (exprs!5932 (h!70768 lt!2328937))) lt!2329210 (contextDepth!188 (Context!10865 (t!377892 (exprs!5932 (h!70768 lt!2328937)))))))))

(assert (=> b!6101076 (forall!15169 (t!377892 (exprs!5932 (h!70768 lt!2328937))) lambda!332356)))

(declare-fun lt!2329213 () Unit!157367)

(assert (=> b!6101076 (= lt!2329213 lt!2329212)))

(declare-fun b!6101077 () Bool)

(assert (=> b!6101077 (= e!3721051 0)))

(assert (=> b!6101078 (= e!3721052 (forall!15169 (exprs!5932 (h!70768 lt!2328937)) lambda!332357))))

(assert (= (and d!1912436 c!1095938) b!6101076))

(assert (= (and d!1912436 (not c!1095938)) b!6101077))

(assert (= (and d!1912436 res!2531370) b!6101078))

(declare-fun m!6953618 () Bool)

(assert (=> b!6101076 m!6953618))

(declare-fun m!6953620 () Bool)

(assert (=> b!6101076 m!6953620))

(declare-fun m!6953622 () Bool)

(assert (=> b!6101076 m!6953622))

(assert (=> b!6101076 m!6953618))

(assert (=> b!6101076 m!6953622))

(declare-fun m!6953624 () Bool)

(assert (=> b!6101076 m!6953624))

(assert (=> b!6101076 m!6953622))

(declare-fun m!6953626 () Bool)

(assert (=> b!6101076 m!6953626))

(declare-fun m!6953628 () Bool)

(assert (=> b!6101078 m!6953628))

(assert (=> b!6100363 d!1912436))

(assert (=> bs!1514795 d!1912248))

(assert (=> b!6100134 d!1912328))

(assert (=> b!6100134 d!1912330))

(assert (=> d!1912158 d!1912346))

(declare-fun d!1912438 () Bool)

(assert (=> d!1912438 (= (nullable!6043 lt!2328943) (nullableFct!2007 lt!2328943))))

(declare-fun bs!1514927 () Bool)

(assert (= bs!1514927 d!1912438))

(declare-fun m!6953630 () Bool)

(assert (=> bs!1514927 m!6953630))

(assert (=> b!6100228 d!1912438))

(declare-fun d!1912440 () Bool)

(declare-fun res!2531371 () Bool)

(declare-fun e!3721053 () Bool)

(assert (=> d!1912440 (=> res!2531371 e!3721053)))

(assert (=> d!1912440 (= res!2531371 (is-Nil!64319 (exprs!5932 setElem!41199)))))

(assert (=> d!1912440 (= (forall!15169 (exprs!5932 setElem!41199) lambda!332255) e!3721053)))

(declare-fun b!6101081 () Bool)

(declare-fun e!3721054 () Bool)

(assert (=> b!6101081 (= e!3721053 e!3721054)))

(declare-fun res!2531372 () Bool)

(assert (=> b!6101081 (=> (not res!2531372) (not e!3721054))))

(assert (=> b!6101081 (= res!2531372 (dynLambda!25325 lambda!332255 (h!70767 (exprs!5932 setElem!41199))))))

(declare-fun b!6101082 () Bool)

(assert (=> b!6101082 (= e!3721054 (forall!15169 (t!377892 (exprs!5932 setElem!41199)) lambda!332255))))

(assert (= (and d!1912440 (not res!2531371)) b!6101081))

(assert (= (and b!6101081 res!2531372) b!6101082))

(declare-fun b_lambda!232423 () Bool)

(assert (=> (not b_lambda!232423) (not b!6101081)))

(declare-fun m!6953632 () Bool)

(assert (=> b!6101081 m!6953632))

(declare-fun m!6953634 () Bool)

(assert (=> b!6101082 m!6953634))

(assert (=> d!1912204 d!1912440))

(declare-fun b!6101083 () Bool)

(declare-fun e!3721060 () Bool)

(declare-fun e!3721056 () Bool)

(assert (=> b!6101083 (= e!3721060 e!3721056)))

(declare-fun res!2531374 () Bool)

(assert (=> b!6101083 (= res!2531374 (not (nullable!6043 (reg!16377 (ite c!1095689 (regOne!32609 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292)))))))))

(assert (=> b!6101083 (=> (not res!2531374) (not e!3721056))))

(declare-fun b!6101084 () Bool)

(declare-fun call!504414 () Bool)

(assert (=> b!6101084 (= e!3721056 call!504414)))

(declare-fun c!1095940 () Bool)

(declare-fun bm!504408 () Bool)

(declare-fun c!1095939 () Bool)

(assert (=> bm!504408 (= call!504414 (validRegex!7784 (ite c!1095940 (reg!16377 (ite c!1095689 (regOne!32609 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292)))) (ite c!1095939 (regTwo!32609 (ite c!1095689 (regOne!32609 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292)))) (regTwo!32608 (ite c!1095689 (regOne!32609 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292))))))))))

(declare-fun b!6101085 () Bool)

(declare-fun e!3721058 () Bool)

(assert (=> b!6101085 (= e!3721060 e!3721058)))

(assert (=> b!6101085 (= c!1095939 (is-Union!16048 (ite c!1095689 (regOne!32609 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292)))))))

(declare-fun d!1912442 () Bool)

(declare-fun res!2531375 () Bool)

(declare-fun e!3721057 () Bool)

(assert (=> d!1912442 (=> res!2531375 e!3721057)))

(assert (=> d!1912442 (= res!2531375 (is-ElementMatch!16048 (ite c!1095689 (regOne!32609 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292)))))))

(assert (=> d!1912442 (= (validRegex!7784 (ite c!1095689 (regOne!32609 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292)))) e!3721057)))

(declare-fun bm!504409 () Bool)

(declare-fun call!504413 () Bool)

(assert (=> bm!504409 (= call!504413 call!504414)))

(declare-fun bm!504410 () Bool)

(declare-fun call!504415 () Bool)

(assert (=> bm!504410 (= call!504415 (validRegex!7784 (ite c!1095939 (regOne!32609 (ite c!1095689 (regOne!32609 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292)))) (regOne!32608 (ite c!1095689 (regOne!32609 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292)))))))))

(declare-fun b!6101086 () Bool)

(declare-fun e!3721059 () Bool)

(assert (=> b!6101086 (= e!3721059 call!504413)))

(declare-fun b!6101087 () Bool)

(declare-fun res!2531373 () Bool)

(declare-fun e!3721055 () Bool)

(assert (=> b!6101087 (=> res!2531373 e!3721055)))

(assert (=> b!6101087 (= res!2531373 (not (is-Concat!24893 (ite c!1095689 (regOne!32609 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292))))))))

(assert (=> b!6101087 (= e!3721058 e!3721055)))

(declare-fun b!6101088 () Bool)

(declare-fun e!3721061 () Bool)

(assert (=> b!6101088 (= e!3721061 call!504413)))

(declare-fun b!6101089 () Bool)

(declare-fun res!2531376 () Bool)

(assert (=> b!6101089 (=> (not res!2531376) (not e!3721061))))

(assert (=> b!6101089 (= res!2531376 call!504415)))

(assert (=> b!6101089 (= e!3721058 e!3721061)))

(declare-fun b!6101090 () Bool)

(assert (=> b!6101090 (= e!3721057 e!3721060)))

(assert (=> b!6101090 (= c!1095940 (is-Star!16048 (ite c!1095689 (regOne!32609 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292)))))))

(declare-fun b!6101091 () Bool)

(assert (=> b!6101091 (= e!3721055 e!3721059)))

(declare-fun res!2531377 () Bool)

(assert (=> b!6101091 (=> (not res!2531377) (not e!3721059))))

(assert (=> b!6101091 (= res!2531377 call!504415)))

(assert (= (and d!1912442 (not res!2531375)) b!6101090))

(assert (= (and b!6101090 c!1095940) b!6101083))

(assert (= (and b!6101090 (not c!1095940)) b!6101085))

(assert (= (and b!6101083 res!2531374) b!6101084))

(assert (= (and b!6101085 c!1095939) b!6101089))

(assert (= (and b!6101085 (not c!1095939)) b!6101087))

(assert (= (and b!6101089 res!2531376) b!6101088))

(assert (= (and b!6101087 (not res!2531373)) b!6101091))

(assert (= (and b!6101091 res!2531377) b!6101086))

(assert (= (or b!6101088 b!6101086) bm!504409))

(assert (= (or b!6101089 b!6101091) bm!504410))

(assert (= (or b!6101084 bm!504409) bm!504408))

(declare-fun m!6953636 () Bool)

(assert (=> b!6101083 m!6953636))

(declare-fun m!6953638 () Bool)

(assert (=> bm!504408 m!6953638))

(declare-fun m!6953640 () Bool)

(assert (=> bm!504410 m!6953640))

(assert (=> bm!504288 d!1912442))

(assert (=> d!1912164 d!1912346))

(declare-fun d!1912444 () Bool)

(assert (=> d!1912444 (= (Exists!3118 (ite c!1095651 lambda!332251 lambda!332252)) (choose!45353 (ite c!1095651 lambda!332251 lambda!332252)))))

(declare-fun bs!1514928 () Bool)

(assert (= bs!1514928 d!1912444))

(declare-fun m!6953642 () Bool)

(assert (=> bs!1514928 m!6953642))

(assert (=> bm!504260 d!1912444))

(declare-fun b!6101092 () Bool)

(declare-fun e!3721067 () Bool)

(declare-fun e!3721063 () Bool)

(assert (=> b!6101092 (= e!3721067 e!3721063)))

(declare-fun res!2531379 () Bool)

(assert (=> b!6101092 (= res!2531379 (not (nullable!6043 (reg!16377 (ite c!1095679 (reg!16377 r!7292) (ite c!1095678 (regTwo!32609 r!7292) (regTwo!32608 r!7292)))))))))

(assert (=> b!6101092 (=> (not res!2531379) (not e!3721063))))

(declare-fun b!6101093 () Bool)

(declare-fun call!504417 () Bool)

(assert (=> b!6101093 (= e!3721063 call!504417)))

(declare-fun bm!504411 () Bool)

(declare-fun c!1095941 () Bool)

(declare-fun c!1095942 () Bool)

(assert (=> bm!504411 (= call!504417 (validRegex!7784 (ite c!1095942 (reg!16377 (ite c!1095679 (reg!16377 r!7292) (ite c!1095678 (regTwo!32609 r!7292) (regTwo!32608 r!7292)))) (ite c!1095941 (regTwo!32609 (ite c!1095679 (reg!16377 r!7292) (ite c!1095678 (regTwo!32609 r!7292) (regTwo!32608 r!7292)))) (regTwo!32608 (ite c!1095679 (reg!16377 r!7292) (ite c!1095678 (regTwo!32609 r!7292) (regTwo!32608 r!7292))))))))))

(declare-fun b!6101094 () Bool)

(declare-fun e!3721065 () Bool)

(assert (=> b!6101094 (= e!3721067 e!3721065)))

(assert (=> b!6101094 (= c!1095941 (is-Union!16048 (ite c!1095679 (reg!16377 r!7292) (ite c!1095678 (regTwo!32609 r!7292) (regTwo!32608 r!7292)))))))

(declare-fun d!1912446 () Bool)

(declare-fun res!2531380 () Bool)

(declare-fun e!3721064 () Bool)

(assert (=> d!1912446 (=> res!2531380 e!3721064)))

(assert (=> d!1912446 (= res!2531380 (is-ElementMatch!16048 (ite c!1095679 (reg!16377 r!7292) (ite c!1095678 (regTwo!32609 r!7292) (regTwo!32608 r!7292)))))))

(assert (=> d!1912446 (= (validRegex!7784 (ite c!1095679 (reg!16377 r!7292) (ite c!1095678 (regTwo!32609 r!7292) (regTwo!32608 r!7292)))) e!3721064)))

(declare-fun bm!504412 () Bool)

(declare-fun call!504416 () Bool)

(assert (=> bm!504412 (= call!504416 call!504417)))

(declare-fun call!504418 () Bool)

(declare-fun bm!504413 () Bool)

(assert (=> bm!504413 (= call!504418 (validRegex!7784 (ite c!1095941 (regOne!32609 (ite c!1095679 (reg!16377 r!7292) (ite c!1095678 (regTwo!32609 r!7292) (regTwo!32608 r!7292)))) (regOne!32608 (ite c!1095679 (reg!16377 r!7292) (ite c!1095678 (regTwo!32609 r!7292) (regTwo!32608 r!7292)))))))))

(declare-fun b!6101095 () Bool)

(declare-fun e!3721066 () Bool)

(assert (=> b!6101095 (= e!3721066 call!504416)))

(declare-fun b!6101096 () Bool)

(declare-fun res!2531378 () Bool)

(declare-fun e!3721062 () Bool)

(assert (=> b!6101096 (=> res!2531378 e!3721062)))

(assert (=> b!6101096 (= res!2531378 (not (is-Concat!24893 (ite c!1095679 (reg!16377 r!7292) (ite c!1095678 (regTwo!32609 r!7292) (regTwo!32608 r!7292))))))))

(assert (=> b!6101096 (= e!3721065 e!3721062)))

(declare-fun b!6101097 () Bool)

(declare-fun e!3721068 () Bool)

(assert (=> b!6101097 (= e!3721068 call!504416)))

(declare-fun b!6101098 () Bool)

(declare-fun res!2531381 () Bool)

(assert (=> b!6101098 (=> (not res!2531381) (not e!3721068))))

(assert (=> b!6101098 (= res!2531381 call!504418)))

(assert (=> b!6101098 (= e!3721065 e!3721068)))

(declare-fun b!6101099 () Bool)

(assert (=> b!6101099 (= e!3721064 e!3721067)))

(assert (=> b!6101099 (= c!1095942 (is-Star!16048 (ite c!1095679 (reg!16377 r!7292) (ite c!1095678 (regTwo!32609 r!7292) (regTwo!32608 r!7292)))))))

(declare-fun b!6101100 () Bool)

(assert (=> b!6101100 (= e!3721062 e!3721066)))

(declare-fun res!2531382 () Bool)

(assert (=> b!6101100 (=> (not res!2531382) (not e!3721066))))

(assert (=> b!6101100 (= res!2531382 call!504418)))

(assert (= (and d!1912446 (not res!2531380)) b!6101099))

(assert (= (and b!6101099 c!1095942) b!6101092))

(assert (= (and b!6101099 (not c!1095942)) b!6101094))

(assert (= (and b!6101092 res!2531379) b!6101093))

(assert (= (and b!6101094 c!1095941) b!6101098))

(assert (= (and b!6101094 (not c!1095941)) b!6101096))

(assert (= (and b!6101098 res!2531381) b!6101097))

(assert (= (and b!6101096 (not res!2531378)) b!6101100))

(assert (= (and b!6101100 res!2531382) b!6101095))

(assert (= (or b!6101097 b!6101095) bm!504412))

(assert (= (or b!6101098 b!6101100) bm!504413))

(assert (= (or b!6101093 bm!504412) bm!504411))

(declare-fun m!6953644 () Bool)

(assert (=> b!6101092 m!6953644))

(declare-fun m!6953646 () Bool)

(assert (=> bm!504411 m!6953646))

(declare-fun m!6953648 () Bool)

(assert (=> bm!504413 m!6953648))

(assert (=> bm!504281 d!1912446))

(declare-fun b!6101101 () Bool)

(declare-fun e!3721070 () (Set Context!10864))

(declare-fun call!504419 () (Set Context!10864))

(declare-fun call!504423 () (Set Context!10864))

(assert (=> b!6101101 (= e!3721070 (set.union call!504419 call!504423))))

(declare-fun c!1095944 () Bool)

(declare-fun bm!504414 () Bool)

(declare-fun call!504424 () List!64443)

(assert (=> bm!504414 (= call!504419 (derivationStepZipperDown!1298 (ite c!1095944 (regOne!32609 (ite c!1095703 (regOne!32609 (regOne!32608 r!7292)) (regOne!32608 (regOne!32608 r!7292)))) (regOne!32608 (ite c!1095703 (regOne!32609 (regOne!32608 r!7292)) (regOne!32608 (regOne!32608 r!7292))))) (ite c!1095944 (ite c!1095703 lt!2328944 (Context!10865 call!504302)) (Context!10865 call!504424)) (h!70769 s!2326)))))

(declare-fun b!6101102 () Bool)

(declare-fun c!1095943 () Bool)

(assert (=> b!6101102 (= c!1095943 (is-Star!16048 (ite c!1095703 (regOne!32609 (regOne!32608 r!7292)) (regOne!32608 (regOne!32608 r!7292)))))))

(declare-fun e!3721072 () (Set Context!10864))

(declare-fun e!3721074 () (Set Context!10864))

(assert (=> b!6101102 (= e!3721072 e!3721074)))

(declare-fun b!6101103 () Bool)

(declare-fun e!3721071 () Bool)

(assert (=> b!6101103 (= e!3721071 (nullable!6043 (regOne!32608 (ite c!1095703 (regOne!32609 (regOne!32608 r!7292)) (regOne!32608 (regOne!32608 r!7292))))))))

(declare-fun c!1095946 () Bool)

(declare-fun d!1912448 () Bool)

(assert (=> d!1912448 (= c!1095946 (and (is-ElementMatch!16048 (ite c!1095703 (regOne!32609 (regOne!32608 r!7292)) (regOne!32608 (regOne!32608 r!7292)))) (= (c!1095611 (ite c!1095703 (regOne!32609 (regOne!32608 r!7292)) (regOne!32608 (regOne!32608 r!7292)))) (h!70769 s!2326))))))

(declare-fun e!3721069 () (Set Context!10864))

(assert (=> d!1912448 (= (derivationStepZipperDown!1298 (ite c!1095703 (regOne!32609 (regOne!32608 r!7292)) (regOne!32608 (regOne!32608 r!7292))) (ite c!1095703 lt!2328944 (Context!10865 call!504302)) (h!70769 s!2326)) e!3721069)))

(declare-fun b!6101104 () Bool)

(declare-fun e!3721073 () (Set Context!10864))

(declare-fun call!504420 () (Set Context!10864))

(assert (=> b!6101104 (= e!3721073 (set.union call!504419 call!504420))))

(declare-fun b!6101105 () Bool)

(assert (=> b!6101105 (= e!3721069 e!3721070)))

(assert (=> b!6101105 (= c!1095944 (is-Union!16048 (ite c!1095703 (regOne!32609 (regOne!32608 r!7292)) (regOne!32608 (regOne!32608 r!7292)))))))

(declare-fun b!6101106 () Bool)

(assert (=> b!6101106 (= e!3721069 (set.insert (ite c!1095703 lt!2328944 (Context!10865 call!504302)) (as set.empty (Set Context!10864))))))

(declare-fun b!6101107 () Bool)

(declare-fun c!1095945 () Bool)

(assert (=> b!6101107 (= c!1095945 e!3721071)))

(declare-fun res!2531383 () Bool)

(assert (=> b!6101107 (=> (not res!2531383) (not e!3721071))))

(assert (=> b!6101107 (= res!2531383 (is-Concat!24893 (ite c!1095703 (regOne!32609 (regOne!32608 r!7292)) (regOne!32608 (regOne!32608 r!7292)))))))

(assert (=> b!6101107 (= e!3721070 e!3721073)))

(declare-fun bm!504415 () Bool)

(declare-fun call!504421 () List!64443)

(assert (=> bm!504415 (= call!504421 call!504424)))

(declare-fun b!6101108 () Bool)

(assert (=> b!6101108 (= e!3721073 e!3721072)))

(declare-fun c!1095947 () Bool)

(assert (=> b!6101108 (= c!1095947 (is-Concat!24893 (ite c!1095703 (regOne!32609 (regOne!32608 r!7292)) (regOne!32608 (regOne!32608 r!7292)))))))

(declare-fun b!6101109 () Bool)

(declare-fun call!504422 () (Set Context!10864))

(assert (=> b!6101109 (= e!3721074 call!504422)))

(declare-fun b!6101110 () Bool)

(assert (=> b!6101110 (= e!3721072 call!504422)))

(declare-fun bm!504416 () Bool)

(assert (=> bm!504416 (= call!504422 call!504420)))

(declare-fun bm!504417 () Bool)

(assert (=> bm!504417 (= call!504423 (derivationStepZipperDown!1298 (ite c!1095944 (regTwo!32609 (ite c!1095703 (regOne!32609 (regOne!32608 r!7292)) (regOne!32608 (regOne!32608 r!7292)))) (ite c!1095945 (regTwo!32608 (ite c!1095703 (regOne!32609 (regOne!32608 r!7292)) (regOne!32608 (regOne!32608 r!7292)))) (ite c!1095947 (regOne!32608 (ite c!1095703 (regOne!32609 (regOne!32608 r!7292)) (regOne!32608 (regOne!32608 r!7292)))) (reg!16377 (ite c!1095703 (regOne!32609 (regOne!32608 r!7292)) (regOne!32608 (regOne!32608 r!7292))))))) (ite (or c!1095944 c!1095945) (ite c!1095703 lt!2328944 (Context!10865 call!504302)) (Context!10865 call!504421)) (h!70769 s!2326)))))

(declare-fun bm!504418 () Bool)

(assert (=> bm!504418 (= call!504420 call!504423)))

(declare-fun bm!504419 () Bool)

(assert (=> bm!504419 (= call!504424 ($colon$colon!1927 (exprs!5932 (ite c!1095703 lt!2328944 (Context!10865 call!504302))) (ite (or c!1095945 c!1095947) (regTwo!32608 (ite c!1095703 (regOne!32609 (regOne!32608 r!7292)) (regOne!32608 (regOne!32608 r!7292)))) (ite c!1095703 (regOne!32609 (regOne!32608 r!7292)) (regOne!32608 (regOne!32608 r!7292))))))))

(declare-fun b!6101111 () Bool)

(assert (=> b!6101111 (= e!3721074 (as set.empty (Set Context!10864)))))

(assert (= (and d!1912448 c!1095946) b!6101106))

(assert (= (and d!1912448 (not c!1095946)) b!6101105))

(assert (= (and b!6101105 c!1095944) b!6101101))

(assert (= (and b!6101105 (not c!1095944)) b!6101107))

(assert (= (and b!6101107 res!2531383) b!6101103))

(assert (= (and b!6101107 c!1095945) b!6101104))

(assert (= (and b!6101107 (not c!1095945)) b!6101108))

(assert (= (and b!6101108 c!1095947) b!6101110))

(assert (= (and b!6101108 (not c!1095947)) b!6101102))

(assert (= (and b!6101102 c!1095943) b!6101109))

(assert (= (and b!6101102 (not c!1095943)) b!6101111))

(assert (= (or b!6101110 b!6101109) bm!504415))

(assert (= (or b!6101110 b!6101109) bm!504416))

(assert (= (or b!6101104 bm!504415) bm!504419))

(assert (= (or b!6101104 bm!504416) bm!504418))

(assert (= (or b!6101101 bm!504418) bm!504417))

(assert (= (or b!6101101 b!6101104) bm!504414))

(declare-fun m!6953650 () Bool)

(assert (=> b!6101103 m!6953650))

(declare-fun m!6953652 () Bool)

(assert (=> bm!504414 m!6953652))

(declare-fun m!6953654 () Bool)

(assert (=> bm!504417 m!6953654))

(declare-fun m!6953656 () Bool)

(assert (=> b!6101106 m!6953656))

(declare-fun m!6953658 () Bool)

(assert (=> bm!504419 m!6953658))

(assert (=> bm!504292 d!1912448))

(declare-fun d!1912450 () Bool)

(declare-fun c!1095948 () Bool)

(assert (=> d!1912450 (= c!1095948 (isEmpty!36243 (tail!11706 s!2326)))))

(declare-fun e!3721075 () Bool)

(assert (=> d!1912450 (= (matchZipper!2068 (derivationStepZipper!2029 lt!2328953 (head!12621 s!2326)) (tail!11706 s!2326)) e!3721075)))

(declare-fun b!6101112 () Bool)

(assert (=> b!6101112 (= e!3721075 (nullableZipper!1837 (derivationStepZipper!2029 lt!2328953 (head!12621 s!2326))))))

(declare-fun b!6101113 () Bool)

(assert (=> b!6101113 (= e!3721075 (matchZipper!2068 (derivationStepZipper!2029 (derivationStepZipper!2029 lt!2328953 (head!12621 s!2326)) (head!12621 (tail!11706 s!2326))) (tail!11706 (tail!11706 s!2326))))))

(assert (= (and d!1912450 c!1095948) b!6101112))

(assert (= (and d!1912450 (not c!1095948)) b!6101113))

(assert (=> d!1912450 m!6952854))

(assert (=> d!1912450 m!6952856))

(assert (=> b!6101112 m!6952904))

(declare-fun m!6953660 () Bool)

(assert (=> b!6101112 m!6953660))

(assert (=> b!6101113 m!6952854))

(assert (=> b!6101113 m!6953434))

(assert (=> b!6101113 m!6952904))

(assert (=> b!6101113 m!6953434))

(declare-fun m!6953662 () Bool)

(assert (=> b!6101113 m!6953662))

(assert (=> b!6101113 m!6952854))

(assert (=> b!6101113 m!6953430))

(assert (=> b!6101113 m!6953662))

(assert (=> b!6101113 m!6953430))

(declare-fun m!6953664 () Bool)

(assert (=> b!6101113 m!6953664))

(assert (=> b!6100212 d!1912450))

(declare-fun bs!1514929 () Bool)

(declare-fun d!1912452 () Bool)

(assert (= bs!1514929 (and d!1912452 b!6099866)))

(declare-fun lambda!332358 () Int)

(assert (=> bs!1514929 (= (= (head!12621 s!2326) (h!70769 s!2326)) (= lambda!332358 lambda!332228))))

(declare-fun bs!1514930 () Bool)

(assert (= bs!1514930 (and d!1912452 d!1912136)))

(assert (=> bs!1514930 (= (= (head!12621 s!2326) (h!70769 s!2326)) (= lambda!332358 lambda!332246))))

(assert (=> d!1912452 true))

(assert (=> d!1912452 (= (derivationStepZipper!2029 lt!2328953 (head!12621 s!2326)) (flatMap!1561 lt!2328953 lambda!332358))))

(declare-fun bs!1514931 () Bool)

(assert (= bs!1514931 d!1912452))

(declare-fun m!6953666 () Bool)

(assert (=> bs!1514931 m!6953666))

(assert (=> b!6100212 d!1912452))

(assert (=> b!6100212 d!1912354))

(assert (=> b!6100212 d!1912330))

(declare-fun d!1912454 () Bool)

(assert (=> d!1912454 true))

(declare-fun setRes!41211 () Bool)

(assert (=> d!1912454 setRes!41211))

(declare-fun condSetEmpty!41211 () Bool)

(declare-fun res!2531386 () (Set Context!10864))

(assert (=> d!1912454 (= condSetEmpty!41211 (= res!2531386 (as set.empty (Set Context!10864))))))

(assert (=> d!1912454 (= (choose!45349 lt!2328953 lambda!332228) res!2531386)))

(declare-fun setIsEmpty!41211 () Bool)

(assert (=> setIsEmpty!41211 setRes!41211))

(declare-fun tp!1703372 () Bool)

(declare-fun e!3721078 () Bool)

(declare-fun setElem!41211 () Context!10864)

(declare-fun setNonEmpty!41211 () Bool)

(assert (=> setNonEmpty!41211 (= setRes!41211 (and tp!1703372 (inv!83368 setElem!41211) e!3721078))))

(declare-fun setRest!41211 () (Set Context!10864))

(assert (=> setNonEmpty!41211 (= res!2531386 (set.union (set.insert setElem!41211 (as set.empty (Set Context!10864))) setRest!41211))))

(declare-fun b!6101116 () Bool)

(declare-fun tp!1703371 () Bool)

(assert (=> b!6101116 (= e!3721078 tp!1703371)))

(assert (= (and d!1912454 condSetEmpty!41211) setIsEmpty!41211))

(assert (= (and d!1912454 (not condSetEmpty!41211)) setNonEmpty!41211))

(assert (= setNonEmpty!41211 b!6101116))

(declare-fun m!6953668 () Bool)

(assert (=> setNonEmpty!41211 m!6953668))

(assert (=> d!1912194 d!1912454))

(assert (=> b!6100141 d!1912354))

(assert (=> d!1912178 d!1912346))

(declare-fun b!6101117 () Bool)

(declare-fun e!3721080 () (Set Context!10864))

(declare-fun call!504425 () (Set Context!10864))

(declare-fun call!504429 () (Set Context!10864))

(assert (=> b!6101117 (= e!3721080 (set.union call!504425 call!504429))))

(declare-fun c!1095950 () Bool)

(declare-fun call!504430 () List!64443)

(declare-fun bm!504420 () Bool)

(assert (=> bm!504420 (= call!504425 (derivationStepZipperDown!1298 (ite c!1095950 (regOne!32609 (ite c!1095708 (regTwo!32609 (regTwo!32608 r!7292)) (ite c!1095709 (regTwo!32608 (regTwo!32608 r!7292)) (ite c!1095711 (regOne!32608 (regTwo!32608 r!7292)) (reg!16377 (regTwo!32608 r!7292)))))) (regOne!32608 (ite c!1095708 (regTwo!32609 (regTwo!32608 r!7292)) (ite c!1095709 (regTwo!32608 (regTwo!32608 r!7292)) (ite c!1095711 (regOne!32608 (regTwo!32608 r!7292)) (reg!16377 (regTwo!32608 r!7292))))))) (ite c!1095950 (ite (or c!1095708 c!1095709) lt!2328949 (Context!10865 call!504305)) (Context!10865 call!504430)) (h!70769 s!2326)))))

(declare-fun c!1095949 () Bool)

(declare-fun b!6101118 () Bool)

(assert (=> b!6101118 (= c!1095949 (is-Star!16048 (ite c!1095708 (regTwo!32609 (regTwo!32608 r!7292)) (ite c!1095709 (regTwo!32608 (regTwo!32608 r!7292)) (ite c!1095711 (regOne!32608 (regTwo!32608 r!7292)) (reg!16377 (regTwo!32608 r!7292)))))))))

(declare-fun e!3721082 () (Set Context!10864))

(declare-fun e!3721084 () (Set Context!10864))

(assert (=> b!6101118 (= e!3721082 e!3721084)))

(declare-fun b!6101119 () Bool)

(declare-fun e!3721081 () Bool)

(assert (=> b!6101119 (= e!3721081 (nullable!6043 (regOne!32608 (ite c!1095708 (regTwo!32609 (regTwo!32608 r!7292)) (ite c!1095709 (regTwo!32608 (regTwo!32608 r!7292)) (ite c!1095711 (regOne!32608 (regTwo!32608 r!7292)) (reg!16377 (regTwo!32608 r!7292))))))))))

(declare-fun c!1095952 () Bool)

(declare-fun d!1912456 () Bool)

(assert (=> d!1912456 (= c!1095952 (and (is-ElementMatch!16048 (ite c!1095708 (regTwo!32609 (regTwo!32608 r!7292)) (ite c!1095709 (regTwo!32608 (regTwo!32608 r!7292)) (ite c!1095711 (regOne!32608 (regTwo!32608 r!7292)) (reg!16377 (regTwo!32608 r!7292)))))) (= (c!1095611 (ite c!1095708 (regTwo!32609 (regTwo!32608 r!7292)) (ite c!1095709 (regTwo!32608 (regTwo!32608 r!7292)) (ite c!1095711 (regOne!32608 (regTwo!32608 r!7292)) (reg!16377 (regTwo!32608 r!7292)))))) (h!70769 s!2326))))))

(declare-fun e!3721079 () (Set Context!10864))

(assert (=> d!1912456 (= (derivationStepZipperDown!1298 (ite c!1095708 (regTwo!32609 (regTwo!32608 r!7292)) (ite c!1095709 (regTwo!32608 (regTwo!32608 r!7292)) (ite c!1095711 (regOne!32608 (regTwo!32608 r!7292)) (reg!16377 (regTwo!32608 r!7292))))) (ite (or c!1095708 c!1095709) lt!2328949 (Context!10865 call!504305)) (h!70769 s!2326)) e!3721079)))

(declare-fun b!6101120 () Bool)

(declare-fun e!3721083 () (Set Context!10864))

(declare-fun call!504426 () (Set Context!10864))

(assert (=> b!6101120 (= e!3721083 (set.union call!504425 call!504426))))

(declare-fun b!6101121 () Bool)

(assert (=> b!6101121 (= e!3721079 e!3721080)))

(assert (=> b!6101121 (= c!1095950 (is-Union!16048 (ite c!1095708 (regTwo!32609 (regTwo!32608 r!7292)) (ite c!1095709 (regTwo!32608 (regTwo!32608 r!7292)) (ite c!1095711 (regOne!32608 (regTwo!32608 r!7292)) (reg!16377 (regTwo!32608 r!7292)))))))))

(declare-fun b!6101122 () Bool)

(assert (=> b!6101122 (= e!3721079 (set.insert (ite (or c!1095708 c!1095709) lt!2328949 (Context!10865 call!504305)) (as set.empty (Set Context!10864))))))

(declare-fun b!6101123 () Bool)

(declare-fun c!1095951 () Bool)

(assert (=> b!6101123 (= c!1095951 e!3721081)))

(declare-fun res!2531387 () Bool)

(assert (=> b!6101123 (=> (not res!2531387) (not e!3721081))))

(assert (=> b!6101123 (= res!2531387 (is-Concat!24893 (ite c!1095708 (regTwo!32609 (regTwo!32608 r!7292)) (ite c!1095709 (regTwo!32608 (regTwo!32608 r!7292)) (ite c!1095711 (regOne!32608 (regTwo!32608 r!7292)) (reg!16377 (regTwo!32608 r!7292)))))))))

(assert (=> b!6101123 (= e!3721080 e!3721083)))

(declare-fun bm!504421 () Bool)

(declare-fun call!504427 () List!64443)

(assert (=> bm!504421 (= call!504427 call!504430)))

(declare-fun b!6101124 () Bool)

(assert (=> b!6101124 (= e!3721083 e!3721082)))

(declare-fun c!1095953 () Bool)

(assert (=> b!6101124 (= c!1095953 (is-Concat!24893 (ite c!1095708 (regTwo!32609 (regTwo!32608 r!7292)) (ite c!1095709 (regTwo!32608 (regTwo!32608 r!7292)) (ite c!1095711 (regOne!32608 (regTwo!32608 r!7292)) (reg!16377 (regTwo!32608 r!7292)))))))))

(declare-fun b!6101125 () Bool)

(declare-fun call!504428 () (Set Context!10864))

(assert (=> b!6101125 (= e!3721084 call!504428)))

(declare-fun b!6101126 () Bool)

(assert (=> b!6101126 (= e!3721082 call!504428)))

(declare-fun bm!504422 () Bool)

(assert (=> bm!504422 (= call!504428 call!504426)))

(declare-fun bm!504423 () Bool)

(assert (=> bm!504423 (= call!504429 (derivationStepZipperDown!1298 (ite c!1095950 (regTwo!32609 (ite c!1095708 (regTwo!32609 (regTwo!32608 r!7292)) (ite c!1095709 (regTwo!32608 (regTwo!32608 r!7292)) (ite c!1095711 (regOne!32608 (regTwo!32608 r!7292)) (reg!16377 (regTwo!32608 r!7292)))))) (ite c!1095951 (regTwo!32608 (ite c!1095708 (regTwo!32609 (regTwo!32608 r!7292)) (ite c!1095709 (regTwo!32608 (regTwo!32608 r!7292)) (ite c!1095711 (regOne!32608 (regTwo!32608 r!7292)) (reg!16377 (regTwo!32608 r!7292)))))) (ite c!1095953 (regOne!32608 (ite c!1095708 (regTwo!32609 (regTwo!32608 r!7292)) (ite c!1095709 (regTwo!32608 (regTwo!32608 r!7292)) (ite c!1095711 (regOne!32608 (regTwo!32608 r!7292)) (reg!16377 (regTwo!32608 r!7292)))))) (reg!16377 (ite c!1095708 (regTwo!32609 (regTwo!32608 r!7292)) (ite c!1095709 (regTwo!32608 (regTwo!32608 r!7292)) (ite c!1095711 (regOne!32608 (regTwo!32608 r!7292)) (reg!16377 (regTwo!32608 r!7292))))))))) (ite (or c!1095950 c!1095951) (ite (or c!1095708 c!1095709) lt!2328949 (Context!10865 call!504305)) (Context!10865 call!504427)) (h!70769 s!2326)))))

(declare-fun bm!504424 () Bool)

(assert (=> bm!504424 (= call!504426 call!504429)))

(declare-fun bm!504425 () Bool)

(assert (=> bm!504425 (= call!504430 ($colon$colon!1927 (exprs!5932 (ite (or c!1095708 c!1095709) lt!2328949 (Context!10865 call!504305))) (ite (or c!1095951 c!1095953) (regTwo!32608 (ite c!1095708 (regTwo!32609 (regTwo!32608 r!7292)) (ite c!1095709 (regTwo!32608 (regTwo!32608 r!7292)) (ite c!1095711 (regOne!32608 (regTwo!32608 r!7292)) (reg!16377 (regTwo!32608 r!7292)))))) (ite c!1095708 (regTwo!32609 (regTwo!32608 r!7292)) (ite c!1095709 (regTwo!32608 (regTwo!32608 r!7292)) (ite c!1095711 (regOne!32608 (regTwo!32608 r!7292)) (reg!16377 (regTwo!32608 r!7292))))))))))

(declare-fun b!6101127 () Bool)

(assert (=> b!6101127 (= e!3721084 (as set.empty (Set Context!10864)))))

(assert (= (and d!1912456 c!1095952) b!6101122))

(assert (= (and d!1912456 (not c!1095952)) b!6101121))

(assert (= (and b!6101121 c!1095950) b!6101117))

(assert (= (and b!6101121 (not c!1095950)) b!6101123))

(assert (= (and b!6101123 res!2531387) b!6101119))

(assert (= (and b!6101123 c!1095951) b!6101120))

(assert (= (and b!6101123 (not c!1095951)) b!6101124))

(assert (= (and b!6101124 c!1095953) b!6101126))

(assert (= (and b!6101124 (not c!1095953)) b!6101118))

(assert (= (and b!6101118 c!1095949) b!6101125))

(assert (= (and b!6101118 (not c!1095949)) b!6101127))

(assert (= (or b!6101126 b!6101125) bm!504421))

(assert (= (or b!6101126 b!6101125) bm!504422))

(assert (= (or b!6101120 bm!504421) bm!504425))

(assert (= (or b!6101120 bm!504422) bm!504424))

(assert (= (or b!6101117 bm!504424) bm!504423))

(assert (= (or b!6101117 b!6101120) bm!504420))

(declare-fun m!6953670 () Bool)

(assert (=> b!6101119 m!6953670))

(declare-fun m!6953672 () Bool)

(assert (=> bm!504420 m!6953672))

(declare-fun m!6953674 () Bool)

(assert (=> bm!504423 m!6953674))

(declare-fun m!6953676 () Bool)

(assert (=> b!6101122 m!6953676))

(declare-fun m!6953678 () Bool)

(assert (=> bm!504425 m!6953678))

(assert (=> bm!504301 d!1912456))

(declare-fun d!1912458 () Bool)

(assert (=> d!1912458 (= (nullable!6043 (h!70767 (exprs!5932 lt!2328947))) (nullableFct!2007 (h!70767 (exprs!5932 lt!2328947))))))

(declare-fun bs!1514932 () Bool)

(assert (= bs!1514932 d!1912458))

(declare-fun m!6953680 () Bool)

(assert (=> bs!1514932 m!6953680))

(assert (=> b!6100028 d!1912458))

(assert (=> d!1912200 d!1912190))

(declare-fun d!1912460 () Bool)

(assert (=> d!1912460 (= (flatMap!1561 lt!2328945 lambda!332228) (dynLambda!25323 lambda!332228 lt!2328952))))

(assert (=> d!1912460 true))

(declare-fun _$13!2944 () Unit!157367)

(assert (=> d!1912460 (= (choose!45350 lt!2328945 lt!2328952 lambda!332228) _$13!2944)))

(declare-fun b_lambda!232425 () Bool)

(assert (=> (not b_lambda!232425) (not d!1912460)))

(declare-fun bs!1514933 () Bool)

(assert (= bs!1514933 d!1912460))

(assert (=> bs!1514933 m!6952662))

(assert (=> bs!1514933 m!6952988))

(assert (=> d!1912200 d!1912460))

(declare-fun d!1912462 () Bool)

(assert (=> d!1912462 (= (isEmpty!36239 (tail!11707 (unfocusZipperList!1469 zl!343))) (is-Nil!64319 (tail!11707 (unfocusZipperList!1469 zl!343))))))

(assert (=> b!6100328 d!1912462))

(declare-fun d!1912464 () Bool)

(assert (=> d!1912464 (= (tail!11707 (unfocusZipperList!1469 zl!343)) (t!377892 (unfocusZipperList!1469 zl!343)))))

(assert (=> b!6100328 d!1912464))

(declare-fun bs!1514934 () Bool)

(declare-fun d!1912466 () Bool)

(assert (= bs!1514934 (and d!1912466 d!1912212)))

(declare-fun lambda!332359 () Int)

(assert (=> bs!1514934 (= lambda!332359 lambda!332262)))

(declare-fun bs!1514935 () Bool)

(assert (= bs!1514935 (and d!1912466 d!1912242)))

(assert (=> bs!1514935 (= lambda!332359 lambda!332301)))

(declare-fun bs!1514936 () Bool)

(assert (= bs!1514936 (and d!1912466 d!1912204)))

(assert (=> bs!1514936 (= lambda!332359 lambda!332255)))

(declare-fun bs!1514937 () Bool)

(assert (= bs!1514937 (and d!1912466 b!6101076)))

(assert (=> bs!1514937 (not (= lambda!332359 lambda!332356))))

(declare-fun bs!1514938 () Bool)

(assert (= bs!1514938 (and d!1912466 b!6101078)))

(assert (=> bs!1514938 (not (= lambda!332359 lambda!332357))))

(declare-fun bs!1514939 () Bool)

(assert (= bs!1514939 (and d!1912466 d!1912210)))

(assert (=> bs!1514939 (= lambda!332359 lambda!332259)))

(declare-fun bs!1514940 () Bool)

(assert (= bs!1514940 (and d!1912466 d!1912206)))

(assert (=> bs!1514940 (= lambda!332359 lambda!332256)))

(declare-fun b!6101128 () Bool)

(declare-fun e!3721085 () Bool)

(declare-fun lt!2329214 () Regex!16048)

(assert (=> b!6101128 (= e!3721085 (isConcat!990 lt!2329214))))

(declare-fun e!3721090 () Bool)

(assert (=> d!1912466 e!3721090))

(declare-fun res!2531389 () Bool)

(assert (=> d!1912466 (=> (not res!2531389) (not e!3721090))))

(assert (=> d!1912466 (= res!2531389 (validRegex!7784 lt!2329214))))

(declare-fun e!3721089 () Regex!16048)

(assert (=> d!1912466 (= lt!2329214 e!3721089)))

(declare-fun c!1095954 () Bool)

(declare-fun e!3721087 () Bool)

(assert (=> d!1912466 (= c!1095954 e!3721087)))

(declare-fun res!2531388 () Bool)

(assert (=> d!1912466 (=> (not res!2531388) (not e!3721087))))

(assert (=> d!1912466 (= res!2531388 (is-Cons!64319 (t!377892 (exprs!5932 (h!70768 zl!343)))))))

(assert (=> d!1912466 (forall!15169 (t!377892 (exprs!5932 (h!70768 zl!343))) lambda!332359)))

(assert (=> d!1912466 (= (generalisedConcat!1645 (t!377892 (exprs!5932 (h!70768 zl!343)))) lt!2329214)))

(declare-fun b!6101129 () Bool)

(declare-fun e!3721086 () Bool)

(assert (=> b!6101129 (= e!3721086 e!3721085)))

(declare-fun c!1095955 () Bool)

(assert (=> b!6101129 (= c!1095955 (isEmpty!36239 (tail!11707 (t!377892 (exprs!5932 (h!70768 zl!343))))))))

(declare-fun b!6101130 () Bool)

(declare-fun e!3721088 () Regex!16048)

(assert (=> b!6101130 (= e!3721089 e!3721088)))

(declare-fun c!1095956 () Bool)

(assert (=> b!6101130 (= c!1095956 (is-Cons!64319 (t!377892 (exprs!5932 (h!70768 zl!343)))))))

(declare-fun b!6101131 () Bool)

(assert (=> b!6101131 (= e!3721088 (Concat!24893 (h!70767 (t!377892 (exprs!5932 (h!70768 zl!343)))) (generalisedConcat!1645 (t!377892 (t!377892 (exprs!5932 (h!70768 zl!343)))))))))

(declare-fun b!6101132 () Bool)

(assert (=> b!6101132 (= e!3721086 (isEmptyExpr!1467 lt!2329214))))

(declare-fun b!6101133 () Bool)

(assert (=> b!6101133 (= e!3721085 (= lt!2329214 (head!12622 (t!377892 (exprs!5932 (h!70768 zl!343))))))))

(declare-fun b!6101134 () Bool)

(assert (=> b!6101134 (= e!3721087 (isEmpty!36239 (t!377892 (t!377892 (exprs!5932 (h!70768 zl!343))))))))

(declare-fun b!6101135 () Bool)

(assert (=> b!6101135 (= e!3721089 (h!70767 (t!377892 (exprs!5932 (h!70768 zl!343)))))))

(declare-fun b!6101136 () Bool)

(assert (=> b!6101136 (= e!3721088 EmptyExpr!16048)))

(declare-fun b!6101137 () Bool)

(assert (=> b!6101137 (= e!3721090 e!3721086)))

(declare-fun c!1095957 () Bool)

(assert (=> b!6101137 (= c!1095957 (isEmpty!36239 (t!377892 (exprs!5932 (h!70768 zl!343)))))))

(assert (= (and d!1912466 res!2531388) b!6101134))

(assert (= (and d!1912466 c!1095954) b!6101135))

(assert (= (and d!1912466 (not c!1095954)) b!6101130))

(assert (= (and b!6101130 c!1095956) b!6101131))

(assert (= (and b!6101130 (not c!1095956)) b!6101136))

(assert (= (and d!1912466 res!2531389) b!6101137))

(assert (= (and b!6101137 c!1095957) b!6101132))

(assert (= (and b!6101137 (not c!1095957)) b!6101129))

(assert (= (and b!6101129 c!1095955) b!6101133))

(assert (= (and b!6101129 (not c!1095955)) b!6101128))

(assert (=> b!6101137 m!6952632))

(declare-fun m!6953682 () Bool)

(assert (=> b!6101131 m!6953682))

(declare-fun m!6953684 () Bool)

(assert (=> b!6101128 m!6953684))

(declare-fun m!6953686 () Bool)

(assert (=> b!6101134 m!6953686))

(declare-fun m!6953688 () Bool)

(assert (=> b!6101133 m!6953688))

(declare-fun m!6953690 () Bool)

(assert (=> b!6101129 m!6953690))

(assert (=> b!6101129 m!6953690))

(declare-fun m!6953692 () Bool)

(assert (=> b!6101129 m!6953692))

(declare-fun m!6953694 () Bool)

(assert (=> b!6101132 m!6953694))

(declare-fun m!6953696 () Bool)

(assert (=> d!1912466 m!6953696))

(declare-fun m!6953698 () Bool)

(assert (=> d!1912466 m!6953698))

(assert (=> b!6100477 d!1912466))

(declare-fun b!6101138 () Bool)

(declare-fun e!3721091 () Bool)

(declare-fun e!3721094 () Bool)

(assert (=> b!6101138 (= e!3721091 e!3721094)))

(declare-fun c!1095958 () Bool)

(assert (=> b!6101138 (= c!1095958 (is-EmptyLang!16048 (derivativeStep!4771 (regTwo!32608 r!7292) (head!12621 s!2326))))))

(declare-fun b!6101139 () Bool)

(declare-fun res!2531393 () Bool)

(declare-fun e!3721096 () Bool)

(assert (=> b!6101139 (=> res!2531393 e!3721096)))

(assert (=> b!6101139 (= res!2531393 (not (is-ElementMatch!16048 (derivativeStep!4771 (regTwo!32608 r!7292) (head!12621 s!2326)))))))

(assert (=> b!6101139 (= e!3721094 e!3721096)))

(declare-fun b!6101140 () Bool)

(declare-fun res!2531391 () Bool)

(declare-fun e!3721092 () Bool)

(assert (=> b!6101140 (=> res!2531391 e!3721092)))

(assert (=> b!6101140 (= res!2531391 (not (isEmpty!36243 (tail!11706 (tail!11706 s!2326)))))))

(declare-fun bm!504426 () Bool)

(declare-fun call!504431 () Bool)

(assert (=> bm!504426 (= call!504431 (isEmpty!36243 (tail!11706 s!2326)))))

(declare-fun b!6101141 () Bool)

(declare-fun e!3721097 () Bool)

(assert (=> b!6101141 (= e!3721096 e!3721097)))

(declare-fun res!2531397 () Bool)

(assert (=> b!6101141 (=> (not res!2531397) (not e!3721097))))

(declare-fun lt!2329215 () Bool)

(assert (=> b!6101141 (= res!2531397 (not lt!2329215))))

(declare-fun d!1912468 () Bool)

(assert (=> d!1912468 e!3721091))

(declare-fun c!1095960 () Bool)

(assert (=> d!1912468 (= c!1095960 (is-EmptyExpr!16048 (derivativeStep!4771 (regTwo!32608 r!7292) (head!12621 s!2326))))))

(declare-fun e!3721095 () Bool)

(assert (=> d!1912468 (= lt!2329215 e!3721095)))

(declare-fun c!1095959 () Bool)

(assert (=> d!1912468 (= c!1095959 (isEmpty!36243 (tail!11706 s!2326)))))

(assert (=> d!1912468 (validRegex!7784 (derivativeStep!4771 (regTwo!32608 r!7292) (head!12621 s!2326)))))

(assert (=> d!1912468 (= (matchR!8231 (derivativeStep!4771 (regTwo!32608 r!7292) (head!12621 s!2326)) (tail!11706 s!2326)) lt!2329215)))

(declare-fun b!6101142 () Bool)

(assert (=> b!6101142 (= e!3721094 (not lt!2329215))))

(declare-fun b!6101143 () Bool)

(declare-fun res!2531395 () Bool)

(assert (=> b!6101143 (=> res!2531395 e!3721096)))

(declare-fun e!3721093 () Bool)

(assert (=> b!6101143 (= res!2531395 e!3721093)))

(declare-fun res!2531390 () Bool)

(assert (=> b!6101143 (=> (not res!2531390) (not e!3721093))))

(assert (=> b!6101143 (= res!2531390 lt!2329215)))

(declare-fun b!6101144 () Bool)

(assert (=> b!6101144 (= e!3721095 (nullable!6043 (derivativeStep!4771 (regTwo!32608 r!7292) (head!12621 s!2326))))))

(declare-fun b!6101145 () Bool)

(assert (=> b!6101145 (= e!3721097 e!3721092)))

(declare-fun res!2531392 () Bool)

(assert (=> b!6101145 (=> res!2531392 e!3721092)))

(assert (=> b!6101145 (= res!2531392 call!504431)))

(declare-fun b!6101146 () Bool)

(assert (=> b!6101146 (= e!3721095 (matchR!8231 (derivativeStep!4771 (derivativeStep!4771 (regTwo!32608 r!7292) (head!12621 s!2326)) (head!12621 (tail!11706 s!2326))) (tail!11706 (tail!11706 s!2326))))))

(declare-fun b!6101147 () Bool)

(assert (=> b!6101147 (= e!3721093 (= (head!12621 (tail!11706 s!2326)) (c!1095611 (derivativeStep!4771 (regTwo!32608 r!7292) (head!12621 s!2326)))))))

(declare-fun b!6101148 () Bool)

(assert (=> b!6101148 (= e!3721091 (= lt!2329215 call!504431))))

(declare-fun b!6101149 () Bool)

(declare-fun res!2531396 () Bool)

(assert (=> b!6101149 (=> (not res!2531396) (not e!3721093))))

(assert (=> b!6101149 (= res!2531396 (isEmpty!36243 (tail!11706 (tail!11706 s!2326))))))

(declare-fun b!6101150 () Bool)

(assert (=> b!6101150 (= e!3721092 (not (= (head!12621 (tail!11706 s!2326)) (c!1095611 (derivativeStep!4771 (regTwo!32608 r!7292) (head!12621 s!2326))))))))

(declare-fun b!6101151 () Bool)

(declare-fun res!2531394 () Bool)

(assert (=> b!6101151 (=> (not res!2531394) (not e!3721093))))

(assert (=> b!6101151 (= res!2531394 (not call!504431))))

(assert (= (and d!1912468 c!1095959) b!6101144))

(assert (= (and d!1912468 (not c!1095959)) b!6101146))

(assert (= (and d!1912468 c!1095960) b!6101148))

(assert (= (and d!1912468 (not c!1095960)) b!6101138))

(assert (= (and b!6101138 c!1095958) b!6101142))

(assert (= (and b!6101138 (not c!1095958)) b!6101139))

(assert (= (and b!6101139 (not res!2531393)) b!6101143))

(assert (= (and b!6101143 res!2531390) b!6101151))

(assert (= (and b!6101151 res!2531394) b!6101149))

(assert (= (and b!6101149 res!2531396) b!6101147))

(assert (= (and b!6101143 (not res!2531395)) b!6101141))

(assert (= (and b!6101141 res!2531397) b!6101145))

(assert (= (and b!6101145 (not res!2531392)) b!6101140))

(assert (= (and b!6101140 (not res!2531391)) b!6101150))

(assert (= (or b!6101148 b!6101145 b!6101151) bm!504426))

(assert (=> b!6101149 m!6952854))

(assert (=> b!6101149 m!6953430))

(assert (=> b!6101149 m!6953430))

(assert (=> b!6101149 m!6953432))

(assert (=> b!6101147 m!6952854))

(assert (=> b!6101147 m!6953434))

(assert (=> bm!504426 m!6952854))

(assert (=> bm!504426 m!6952856))

(assert (=> b!6101144 m!6952898))

(declare-fun m!6953700 () Bool)

(assert (=> b!6101144 m!6953700))

(assert (=> b!6101146 m!6952854))

(assert (=> b!6101146 m!6953434))

(assert (=> b!6101146 m!6952898))

(assert (=> b!6101146 m!6953434))

(declare-fun m!6953702 () Bool)

(assert (=> b!6101146 m!6953702))

(assert (=> b!6101146 m!6952854))

(assert (=> b!6101146 m!6953430))

(assert (=> b!6101146 m!6953702))

(assert (=> b!6101146 m!6953430))

(declare-fun m!6953704 () Bool)

(assert (=> b!6101146 m!6953704))

(assert (=> b!6101140 m!6952854))

(assert (=> b!6101140 m!6953430))

(assert (=> b!6101140 m!6953430))

(assert (=> b!6101140 m!6953432))

(assert (=> d!1912468 m!6952854))

(assert (=> d!1912468 m!6952856))

(assert (=> d!1912468 m!6952898))

(declare-fun m!6953706 () Bool)

(assert (=> d!1912468 m!6953706))

(assert (=> b!6101150 m!6952854))

(assert (=> b!6101150 m!6953434))

(assert (=> b!6100205 d!1912468))

(declare-fun b!6101152 () Bool)

(declare-fun c!1095961 () Bool)

(assert (=> b!6101152 (= c!1095961 (is-Union!16048 (regTwo!32608 r!7292)))))

(declare-fun e!3721100 () Regex!16048)

(declare-fun e!3721098 () Regex!16048)

(assert (=> b!6101152 (= e!3721100 e!3721098)))

(declare-fun bm!504427 () Bool)

(declare-fun call!504432 () Regex!16048)

(declare-fun call!504435 () Regex!16048)

(assert (=> bm!504427 (= call!504432 call!504435)))

(declare-fun b!6101153 () Bool)

(declare-fun e!3721102 () Regex!16048)

(declare-fun call!504433 () Regex!16048)

(assert (=> b!6101153 (= e!3721102 (Union!16048 (Concat!24893 call!504433 (regTwo!32608 (regTwo!32608 r!7292))) EmptyLang!16048))))

(declare-fun b!6101155 () Bool)

(declare-fun call!504434 () Regex!16048)

(assert (=> b!6101155 (= e!3721098 (Union!16048 call!504434 call!504435))))

(declare-fun bm!504428 () Bool)

(assert (=> bm!504428 (= call!504433 call!504434)))

(declare-fun b!6101156 () Bool)

(declare-fun e!3721101 () Regex!16048)

(assert (=> b!6101156 (= e!3721098 e!3721101)))

(declare-fun c!1095964 () Bool)

(assert (=> b!6101156 (= c!1095964 (is-Star!16048 (regTwo!32608 r!7292)))))

(declare-fun b!6101157 () Bool)

(declare-fun e!3721099 () Regex!16048)

(assert (=> b!6101157 (= e!3721099 EmptyLang!16048)))

(declare-fun bm!504429 () Bool)

(assert (=> bm!504429 (= call!504435 (derivativeStep!4771 (ite c!1095961 (regTwo!32609 (regTwo!32608 r!7292)) (ite c!1095964 (reg!16377 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292)))) (head!12621 s!2326)))))

(declare-fun c!1095962 () Bool)

(declare-fun bm!504430 () Bool)

(assert (=> bm!504430 (= call!504434 (derivativeStep!4771 (ite c!1095961 (regOne!32609 (regTwo!32608 r!7292)) (ite c!1095962 (regTwo!32608 (regTwo!32608 r!7292)) (regOne!32608 (regTwo!32608 r!7292)))) (head!12621 s!2326)))))

(declare-fun b!6101158 () Bool)

(assert (=> b!6101158 (= e!3721102 (Union!16048 (Concat!24893 call!504432 (regTwo!32608 (regTwo!32608 r!7292))) call!504433))))

(declare-fun b!6101159 () Bool)

(assert (=> b!6101159 (= e!3721100 (ite (= (head!12621 s!2326) (c!1095611 (regTwo!32608 r!7292))) EmptyExpr!16048 EmptyLang!16048))))

(declare-fun b!6101160 () Bool)

(assert (=> b!6101160 (= e!3721101 (Concat!24893 call!504432 (regTwo!32608 r!7292)))))

(declare-fun b!6101161 () Bool)

(assert (=> b!6101161 (= e!3721099 e!3721100)))

(declare-fun c!1095965 () Bool)

(assert (=> b!6101161 (= c!1095965 (is-ElementMatch!16048 (regTwo!32608 r!7292)))))

(declare-fun d!1912470 () Bool)

(declare-fun lt!2329216 () Regex!16048)

(assert (=> d!1912470 (validRegex!7784 lt!2329216)))

(assert (=> d!1912470 (= lt!2329216 e!3721099)))

(declare-fun c!1095963 () Bool)

(assert (=> d!1912470 (= c!1095963 (or (is-EmptyExpr!16048 (regTwo!32608 r!7292)) (is-EmptyLang!16048 (regTwo!32608 r!7292))))))

(assert (=> d!1912470 (validRegex!7784 (regTwo!32608 r!7292))))

(assert (=> d!1912470 (= (derivativeStep!4771 (regTwo!32608 r!7292) (head!12621 s!2326)) lt!2329216)))

(declare-fun b!6101154 () Bool)

(assert (=> b!6101154 (= c!1095962 (nullable!6043 (regOne!32608 (regTwo!32608 r!7292))))))

(assert (=> b!6101154 (= e!3721101 e!3721102)))

(assert (= (and d!1912470 c!1095963) b!6101157))

(assert (= (and d!1912470 (not c!1095963)) b!6101161))

(assert (= (and b!6101161 c!1095965) b!6101159))

(assert (= (and b!6101161 (not c!1095965)) b!6101152))

(assert (= (and b!6101152 c!1095961) b!6101155))

(assert (= (and b!6101152 (not c!1095961)) b!6101156))

(assert (= (and b!6101156 c!1095964) b!6101160))

(assert (= (and b!6101156 (not c!1095964)) b!6101154))

(assert (= (and b!6101154 c!1095962) b!6101158))

(assert (= (and b!6101154 (not c!1095962)) b!6101153))

(assert (= (or b!6101158 b!6101153) bm!504428))

(assert (= (or b!6101160 b!6101158) bm!504427))

(assert (= (or b!6101155 bm!504427) bm!504429))

(assert (= (or b!6101155 bm!504428) bm!504430))

(assert (=> bm!504429 m!6952858))

(declare-fun m!6953708 () Bool)

(assert (=> bm!504429 m!6953708))

(assert (=> bm!504430 m!6952858))

(declare-fun m!6953710 () Bool)

(assert (=> bm!504430 m!6953710))

(declare-fun m!6953712 () Bool)

(assert (=> d!1912470 m!6953712))

(assert (=> d!1912470 m!6952704))

(assert (=> b!6101154 m!6952992))

(assert (=> b!6100205 d!1912470))

(assert (=> b!6100205 d!1912354))

(assert (=> b!6100205 d!1912330))

(declare-fun b!6101162 () Bool)

(declare-fun e!3721104 () List!64445)

(assert (=> b!6101162 (= e!3721104 (_2!36330 (get!22177 lt!2329116)))))

(declare-fun d!1912472 () Bool)

(declare-fun e!3721103 () Bool)

(assert (=> d!1912472 e!3721103))

(declare-fun res!2531399 () Bool)

(assert (=> d!1912472 (=> (not res!2531399) (not e!3721103))))

(declare-fun lt!2329217 () List!64445)

(assert (=> d!1912472 (= res!2531399 (= (content!11928 lt!2329217) (set.union (content!11928 (_1!36330 (get!22177 lt!2329116))) (content!11928 (_2!36330 (get!22177 lt!2329116))))))))

(assert (=> d!1912472 (= lt!2329217 e!3721104)))

(declare-fun c!1095966 () Bool)

(assert (=> d!1912472 (= c!1095966 (is-Nil!64321 (_1!36330 (get!22177 lt!2329116))))))

(assert (=> d!1912472 (= (++!14137 (_1!36330 (get!22177 lt!2329116)) (_2!36330 (get!22177 lt!2329116))) lt!2329217)))

(declare-fun b!6101165 () Bool)

(assert (=> b!6101165 (= e!3721103 (or (not (= (_2!36330 (get!22177 lt!2329116)) Nil!64321)) (= lt!2329217 (_1!36330 (get!22177 lt!2329116)))))))

(declare-fun b!6101164 () Bool)

(declare-fun res!2531398 () Bool)

(assert (=> b!6101164 (=> (not res!2531398) (not e!3721103))))

(assert (=> b!6101164 (= res!2531398 (= (size!40195 lt!2329217) (+ (size!40195 (_1!36330 (get!22177 lt!2329116))) (size!40195 (_2!36330 (get!22177 lt!2329116))))))))

(declare-fun b!6101163 () Bool)

(assert (=> b!6101163 (= e!3721104 (Cons!64321 (h!70769 (_1!36330 (get!22177 lt!2329116))) (++!14137 (t!377894 (_1!36330 (get!22177 lt!2329116))) (_2!36330 (get!22177 lt!2329116)))))))

(assert (= (and d!1912472 c!1095966) b!6101162))

(assert (= (and d!1912472 (not c!1095966)) b!6101163))

(assert (= (and d!1912472 res!2531399) b!6101164))

(assert (= (and b!6101164 res!2531398) b!6101165))

(declare-fun m!6953714 () Bool)

(assert (=> d!1912472 m!6953714))

(declare-fun m!6953716 () Bool)

(assert (=> d!1912472 m!6953716))

(declare-fun m!6953718 () Bool)

(assert (=> d!1912472 m!6953718))

(declare-fun m!6953720 () Bool)

(assert (=> b!6101164 m!6953720))

(declare-fun m!6953722 () Bool)

(assert (=> b!6101164 m!6953722))

(declare-fun m!6953724 () Bool)

(assert (=> b!6101164 m!6953724))

(declare-fun m!6953726 () Bool)

(assert (=> b!6101163 m!6953726))

(assert (=> b!6100395 d!1912472))

(declare-fun d!1912474 () Bool)

(assert (=> d!1912474 (= (get!22177 lt!2329116) (v!52071 lt!2329116))))

(assert (=> b!6100395 d!1912474))

(declare-fun d!1912476 () Bool)

(declare-fun c!1095967 () Bool)

(assert (=> d!1912476 (= c!1095967 (isEmpty!36243 (tail!11706 s!2326)))))

(declare-fun e!3721105 () Bool)

(assert (=> d!1912476 (= (matchZipper!2068 (derivationStepZipper!2029 lt!2328945 (head!12621 s!2326)) (tail!11706 s!2326)) e!3721105)))

(declare-fun b!6101166 () Bool)

(assert (=> b!6101166 (= e!3721105 (nullableZipper!1837 (derivationStepZipper!2029 lt!2328945 (head!12621 s!2326))))))

(declare-fun b!6101167 () Bool)

(assert (=> b!6101167 (= e!3721105 (matchZipper!2068 (derivationStepZipper!2029 (derivationStepZipper!2029 lt!2328945 (head!12621 s!2326)) (head!12621 (tail!11706 s!2326))) (tail!11706 (tail!11706 s!2326))))))

(assert (= (and d!1912476 c!1095967) b!6101166))

(assert (= (and d!1912476 (not c!1095967)) b!6101167))

(assert (=> d!1912476 m!6952854))

(assert (=> d!1912476 m!6952856))

(assert (=> b!6101166 m!6952934))

(declare-fun m!6953728 () Bool)

(assert (=> b!6101166 m!6953728))

(assert (=> b!6101167 m!6952854))

(assert (=> b!6101167 m!6953434))

(assert (=> b!6101167 m!6952934))

(assert (=> b!6101167 m!6953434))

(declare-fun m!6953730 () Bool)

(assert (=> b!6101167 m!6953730))

(assert (=> b!6101167 m!6952854))

(assert (=> b!6101167 m!6953430))

(assert (=> b!6101167 m!6953730))

(assert (=> b!6101167 m!6953430))

(declare-fun m!6953732 () Bool)

(assert (=> b!6101167 m!6953732))

(assert (=> b!6100241 d!1912476))

(declare-fun bs!1514941 () Bool)

(declare-fun d!1912478 () Bool)

(assert (= bs!1514941 (and d!1912478 b!6099866)))

(declare-fun lambda!332360 () Int)

(assert (=> bs!1514941 (= (= (head!12621 s!2326) (h!70769 s!2326)) (= lambda!332360 lambda!332228))))

(declare-fun bs!1514942 () Bool)

(assert (= bs!1514942 (and d!1912478 d!1912136)))

(assert (=> bs!1514942 (= (= (head!12621 s!2326) (h!70769 s!2326)) (= lambda!332360 lambda!332246))))

(declare-fun bs!1514943 () Bool)

(assert (= bs!1514943 (and d!1912478 d!1912452)))

(assert (=> bs!1514943 (= lambda!332360 lambda!332358)))

(assert (=> d!1912478 true))

(assert (=> d!1912478 (= (derivationStepZipper!2029 lt!2328945 (head!12621 s!2326)) (flatMap!1561 lt!2328945 lambda!332360))))

(declare-fun bs!1514944 () Bool)

(assert (= bs!1514944 d!1912478))

(declare-fun m!6953734 () Bool)

(assert (=> bs!1514944 m!6953734))

(assert (=> b!6100241 d!1912478))

(assert (=> b!6100241 d!1912354))

(assert (=> b!6100241 d!1912330))

(declare-fun d!1912480 () Bool)

(declare-fun c!1095969 () Bool)

(declare-fun e!3721107 () Bool)

(assert (=> d!1912480 (= c!1095969 e!3721107)))

(declare-fun res!2531400 () Bool)

(assert (=> d!1912480 (=> (not res!2531400) (not e!3721107))))

(assert (=> d!1912480 (= res!2531400 (is-Cons!64319 (exprs!5932 (Context!10865 (t!377892 (exprs!5932 lt!2328947))))))))

(declare-fun e!3721108 () (Set Context!10864))

(assert (=> d!1912480 (= (derivationStepZipperUp!1224 (Context!10865 (t!377892 (exprs!5932 lt!2328947))) (h!70769 s!2326)) e!3721108)))

(declare-fun b!6101168 () Bool)

(declare-fun e!3721106 () (Set Context!10864))

(assert (=> b!6101168 (= e!3721106 (as set.empty (Set Context!10864)))))

(declare-fun b!6101169 () Bool)

(assert (=> b!6101169 (= e!3721107 (nullable!6043 (h!70767 (exprs!5932 (Context!10865 (t!377892 (exprs!5932 lt!2328947)))))))))

(declare-fun b!6101170 () Bool)

(declare-fun call!504436 () (Set Context!10864))

(assert (=> b!6101170 (= e!3721106 call!504436)))

(declare-fun b!6101171 () Bool)

(assert (=> b!6101171 (= e!3721108 e!3721106)))

(declare-fun c!1095968 () Bool)

(assert (=> b!6101171 (= c!1095968 (is-Cons!64319 (exprs!5932 (Context!10865 (t!377892 (exprs!5932 lt!2328947))))))))

(declare-fun bm!504431 () Bool)

(assert (=> bm!504431 (= call!504436 (derivationStepZipperDown!1298 (h!70767 (exprs!5932 (Context!10865 (t!377892 (exprs!5932 lt!2328947))))) (Context!10865 (t!377892 (exprs!5932 (Context!10865 (t!377892 (exprs!5932 lt!2328947)))))) (h!70769 s!2326)))))

(declare-fun b!6101172 () Bool)

(assert (=> b!6101172 (= e!3721108 (set.union call!504436 (derivationStepZipperUp!1224 (Context!10865 (t!377892 (exprs!5932 (Context!10865 (t!377892 (exprs!5932 lt!2328947)))))) (h!70769 s!2326))))))

(assert (= (and d!1912480 res!2531400) b!6101169))

(assert (= (and d!1912480 c!1095969) b!6101172))

(assert (= (and d!1912480 (not c!1095969)) b!6101171))

(assert (= (and b!6101171 c!1095968) b!6101170))

(assert (= (and b!6101171 (not c!1095968)) b!6101168))

(assert (= (or b!6101172 b!6101170) bm!504431))

(declare-fun m!6953736 () Bool)

(assert (=> b!6101169 m!6953736))

(declare-fun m!6953738 () Bool)

(assert (=> bm!504431 m!6953738))

(declare-fun m!6953740 () Bool)

(assert (=> b!6101172 m!6953740))

(assert (=> b!6100031 d!1912480))

(declare-fun d!1912482 () Bool)

(assert (=> d!1912482 (= (isEmpty!36239 (t!377892 (unfocusZipperList!1469 zl!343))) (is-Nil!64319 (t!377892 (unfocusZipperList!1469 zl!343))))))

(assert (=> b!6100332 d!1912482))

(assert (=> d!1912166 d!1912162))

(assert (=> d!1912166 d!1912164))

(declare-fun d!1912484 () Bool)

(assert (=> d!1912484 (= (matchR!8231 (regTwo!32608 r!7292) s!2326) (matchZipper!2068 lt!2328953 s!2326))))

(assert (=> d!1912484 true))

(declare-fun _$44!1538 () Unit!157367)

(assert (=> d!1912484 (= (choose!45348 lt!2328953 lt!2328940 (regTwo!32608 r!7292) s!2326) _$44!1538)))

(declare-fun bs!1514945 () Bool)

(assert (= bs!1514945 d!1912484))

(assert (=> bs!1514945 m!6952718))

(assert (=> bs!1514945 m!6952720))

(assert (=> d!1912166 d!1912484))

(assert (=> d!1912166 d!1912174))

(declare-fun d!1912486 () Bool)

(declare-fun res!2531401 () Bool)

(declare-fun e!3721109 () Bool)

(assert (=> d!1912486 (=> res!2531401 e!3721109)))

(assert (=> d!1912486 (= res!2531401 (is-Nil!64320 (Cons!64320 lt!2328947 Nil!64320)))))

(assert (=> d!1912486 (= (forall!15170 (Cons!64320 lt!2328947 Nil!64320) lambda!332274) e!3721109)))

(declare-fun b!6101173 () Bool)

(declare-fun e!3721110 () Bool)

(assert (=> b!6101173 (= e!3721109 e!3721110)))

(declare-fun res!2531402 () Bool)

(assert (=> b!6101173 (=> (not res!2531402) (not e!3721110))))

(assert (=> b!6101173 (= res!2531402 (dynLambda!25328 lambda!332274 (h!70768 (Cons!64320 lt!2328947 Nil!64320))))))

(declare-fun b!6101174 () Bool)

(assert (=> b!6101174 (= e!3721110 (forall!15170 (t!377893 (Cons!64320 lt!2328947 Nil!64320)) lambda!332274))))

(assert (= (and d!1912486 (not res!2531401)) b!6101173))

(assert (= (and b!6101173 res!2531402) b!6101174))

(declare-fun b_lambda!232427 () Bool)

(assert (=> (not b_lambda!232427) (not b!6101173)))

(declare-fun m!6953742 () Bool)

(assert (=> b!6101173 m!6953742))

(declare-fun m!6953744 () Bool)

(assert (=> b!6101174 m!6953744))

(assert (=> b!6100370 d!1912486))

(declare-fun d!1912488 () Bool)

(assert (=> d!1912488 true))

(declare-fun setRes!41212 () Bool)

(assert (=> d!1912488 setRes!41212))

(declare-fun condSetEmpty!41212 () Bool)

(declare-fun res!2531403 () (Set Context!10864))

(assert (=> d!1912488 (= condSetEmpty!41212 (= res!2531403 (as set.empty (Set Context!10864))))))

(assert (=> d!1912488 (= (choose!45349 lt!2328945 lambda!332228) res!2531403)))

(declare-fun setIsEmpty!41212 () Bool)

(assert (=> setIsEmpty!41212 setRes!41212))

(declare-fun e!3721111 () Bool)

(declare-fun tp!1703374 () Bool)

(declare-fun setNonEmpty!41212 () Bool)

(declare-fun setElem!41212 () Context!10864)

(assert (=> setNonEmpty!41212 (= setRes!41212 (and tp!1703374 (inv!83368 setElem!41212) e!3721111))))

(declare-fun setRest!41212 () (Set Context!10864))

(assert (=> setNonEmpty!41212 (= res!2531403 (set.union (set.insert setElem!41212 (as set.empty (Set Context!10864))) setRest!41212))))

(declare-fun b!6101175 () Bool)

(declare-fun tp!1703373 () Bool)

(assert (=> b!6101175 (= e!3721111 tp!1703373)))

(assert (= (and d!1912488 condSetEmpty!41212) setIsEmpty!41212))

(assert (= (and d!1912488 (not condSetEmpty!41212)) setNonEmpty!41212))

(assert (= setNonEmpty!41212 b!6101175))

(declare-fun m!6953746 () Bool)

(assert (=> setNonEmpty!41212 m!6953746))

(assert (=> d!1912190 d!1912488))

(assert (=> b!6100209 d!1912354))

(declare-fun d!1912490 () Bool)

(declare-fun c!1095970 () Bool)

(assert (=> d!1912490 (= c!1095970 (isEmpty!36243 (tail!11706 s!2326)))))

(declare-fun e!3721112 () Bool)

(assert (=> d!1912490 (= (matchZipper!2068 (derivationStepZipper!2029 z!1189 (head!12621 s!2326)) (tail!11706 s!2326)) e!3721112)))

(declare-fun b!6101176 () Bool)

(assert (=> b!6101176 (= e!3721112 (nullableZipper!1837 (derivationStepZipper!2029 z!1189 (head!12621 s!2326))))))

(declare-fun b!6101177 () Bool)

(assert (=> b!6101177 (= e!3721112 (matchZipper!2068 (derivationStepZipper!2029 (derivationStepZipper!2029 z!1189 (head!12621 s!2326)) (head!12621 (tail!11706 s!2326))) (tail!11706 (tail!11706 s!2326))))))

(assert (= (and d!1912490 c!1095970) b!6101176))

(assert (= (and d!1912490 (not c!1095970)) b!6101177))

(assert (=> d!1912490 m!6952854))

(assert (=> d!1912490 m!6952856))

(assert (=> b!6101176 m!6952892))

(declare-fun m!6953748 () Bool)

(assert (=> b!6101176 m!6953748))

(assert (=> b!6101177 m!6952854))

(assert (=> b!6101177 m!6953434))

(assert (=> b!6101177 m!6952892))

(assert (=> b!6101177 m!6953434))

(declare-fun m!6953750 () Bool)

(assert (=> b!6101177 m!6953750))

(assert (=> b!6101177 m!6952854))

(assert (=> b!6101177 m!6953430))

(assert (=> b!6101177 m!6953750))

(assert (=> b!6101177 m!6953430))

(declare-fun m!6953752 () Bool)

(assert (=> b!6101177 m!6953752))

(assert (=> b!6100196 d!1912490))

(declare-fun bs!1514946 () Bool)

(declare-fun d!1912492 () Bool)

(assert (= bs!1514946 (and d!1912492 b!6099866)))

(declare-fun lambda!332361 () Int)

(assert (=> bs!1514946 (= (= (head!12621 s!2326) (h!70769 s!2326)) (= lambda!332361 lambda!332228))))

(declare-fun bs!1514947 () Bool)

(assert (= bs!1514947 (and d!1912492 d!1912136)))

(assert (=> bs!1514947 (= (= (head!12621 s!2326) (h!70769 s!2326)) (= lambda!332361 lambda!332246))))

(declare-fun bs!1514948 () Bool)

(assert (= bs!1514948 (and d!1912492 d!1912452)))

(assert (=> bs!1514948 (= lambda!332361 lambda!332358)))

(declare-fun bs!1514949 () Bool)

(assert (= bs!1514949 (and d!1912492 d!1912478)))

(assert (=> bs!1514949 (= lambda!332361 lambda!332360)))

(assert (=> d!1912492 true))

(assert (=> d!1912492 (= (derivationStepZipper!2029 z!1189 (head!12621 s!2326)) (flatMap!1561 z!1189 lambda!332361))))

(declare-fun bs!1514950 () Bool)

(assert (= bs!1514950 d!1912492))

(declare-fun m!6953754 () Bool)

(assert (=> bs!1514950 m!6953754))

(assert (=> b!6100196 d!1912492))

(assert (=> b!6100196 d!1912354))

(assert (=> b!6100196 d!1912330))

(declare-fun b!6101178 () Bool)

(declare-fun e!3721113 () Bool)

(declare-fun e!3721116 () Bool)

(assert (=> b!6101178 (= e!3721113 e!3721116)))

(declare-fun c!1095971 () Bool)

(assert (=> b!6101178 (= c!1095971 (is-EmptyLang!16048 (regOne!32608 r!7292)))))

(declare-fun b!6101179 () Bool)

(declare-fun res!2531407 () Bool)

(declare-fun e!3721118 () Bool)

(assert (=> b!6101179 (=> res!2531407 e!3721118)))

(assert (=> b!6101179 (= res!2531407 (not (is-ElementMatch!16048 (regOne!32608 r!7292))))))

(assert (=> b!6101179 (= e!3721116 e!3721118)))

(declare-fun b!6101180 () Bool)

(declare-fun res!2531405 () Bool)

(declare-fun e!3721114 () Bool)

(assert (=> b!6101180 (=> res!2531405 e!3721114)))

(assert (=> b!6101180 (= res!2531405 (not (isEmpty!36243 (tail!11706 (_1!36330 (get!22177 lt!2329116))))))))

(declare-fun bm!504432 () Bool)

(declare-fun call!504437 () Bool)

(assert (=> bm!504432 (= call!504437 (isEmpty!36243 (_1!36330 (get!22177 lt!2329116))))))

(declare-fun b!6101181 () Bool)

(declare-fun e!3721119 () Bool)

(assert (=> b!6101181 (= e!3721118 e!3721119)))

(declare-fun res!2531411 () Bool)

(assert (=> b!6101181 (=> (not res!2531411) (not e!3721119))))

(declare-fun lt!2329218 () Bool)

(assert (=> b!6101181 (= res!2531411 (not lt!2329218))))

(declare-fun d!1912494 () Bool)

(assert (=> d!1912494 e!3721113))

(declare-fun c!1095973 () Bool)

(assert (=> d!1912494 (= c!1095973 (is-EmptyExpr!16048 (regOne!32608 r!7292)))))

(declare-fun e!3721117 () Bool)

(assert (=> d!1912494 (= lt!2329218 e!3721117)))

(declare-fun c!1095972 () Bool)

(assert (=> d!1912494 (= c!1095972 (isEmpty!36243 (_1!36330 (get!22177 lt!2329116))))))

(assert (=> d!1912494 (validRegex!7784 (regOne!32608 r!7292))))

(assert (=> d!1912494 (= (matchR!8231 (regOne!32608 r!7292) (_1!36330 (get!22177 lt!2329116))) lt!2329218)))

(declare-fun b!6101182 () Bool)

(assert (=> b!6101182 (= e!3721116 (not lt!2329218))))

(declare-fun b!6101183 () Bool)

(declare-fun res!2531409 () Bool)

(assert (=> b!6101183 (=> res!2531409 e!3721118)))

(declare-fun e!3721115 () Bool)

(assert (=> b!6101183 (= res!2531409 e!3721115)))

(declare-fun res!2531404 () Bool)

(assert (=> b!6101183 (=> (not res!2531404) (not e!3721115))))

(assert (=> b!6101183 (= res!2531404 lt!2329218)))

(declare-fun b!6101184 () Bool)

(assert (=> b!6101184 (= e!3721117 (nullable!6043 (regOne!32608 r!7292)))))

(declare-fun b!6101185 () Bool)

(assert (=> b!6101185 (= e!3721119 e!3721114)))

(declare-fun res!2531406 () Bool)

(assert (=> b!6101185 (=> res!2531406 e!3721114)))

(assert (=> b!6101185 (= res!2531406 call!504437)))

(declare-fun b!6101186 () Bool)

(assert (=> b!6101186 (= e!3721117 (matchR!8231 (derivativeStep!4771 (regOne!32608 r!7292) (head!12621 (_1!36330 (get!22177 lt!2329116)))) (tail!11706 (_1!36330 (get!22177 lt!2329116)))))))

(declare-fun b!6101187 () Bool)

(assert (=> b!6101187 (= e!3721115 (= (head!12621 (_1!36330 (get!22177 lt!2329116))) (c!1095611 (regOne!32608 r!7292))))))

(declare-fun b!6101188 () Bool)

(assert (=> b!6101188 (= e!3721113 (= lt!2329218 call!504437))))

(declare-fun b!6101189 () Bool)

(declare-fun res!2531410 () Bool)

(assert (=> b!6101189 (=> (not res!2531410) (not e!3721115))))

(assert (=> b!6101189 (= res!2531410 (isEmpty!36243 (tail!11706 (_1!36330 (get!22177 lt!2329116)))))))

(declare-fun b!6101190 () Bool)

(assert (=> b!6101190 (= e!3721114 (not (= (head!12621 (_1!36330 (get!22177 lt!2329116))) (c!1095611 (regOne!32608 r!7292)))))))

(declare-fun b!6101191 () Bool)

(declare-fun res!2531408 () Bool)

(assert (=> b!6101191 (=> (not res!2531408) (not e!3721115))))

(assert (=> b!6101191 (= res!2531408 (not call!504437))))

(assert (= (and d!1912494 c!1095972) b!6101184))

(assert (= (and d!1912494 (not c!1095972)) b!6101186))

(assert (= (and d!1912494 c!1095973) b!6101188))

(assert (= (and d!1912494 (not c!1095973)) b!6101178))

(assert (= (and b!6101178 c!1095971) b!6101182))

(assert (= (and b!6101178 (not c!1095971)) b!6101179))

(assert (= (and b!6101179 (not res!2531407)) b!6101183))

(assert (= (and b!6101183 res!2531404) b!6101191))

(assert (= (and b!6101191 res!2531408) b!6101189))

(assert (= (and b!6101189 res!2531410) b!6101187))

(assert (= (and b!6101183 (not res!2531409)) b!6101181))

(assert (= (and b!6101181 res!2531411) b!6101185))

(assert (= (and b!6101185 (not res!2531406)) b!6101180))

(assert (= (and b!6101180 (not res!2531405)) b!6101190))

(assert (= (or b!6101188 b!6101185 b!6101191) bm!504432))

(declare-fun m!6953756 () Bool)

(assert (=> b!6101189 m!6953756))

(assert (=> b!6101189 m!6953756))

(declare-fun m!6953758 () Bool)

(assert (=> b!6101189 m!6953758))

(declare-fun m!6953760 () Bool)

(assert (=> b!6101187 m!6953760))

(declare-fun m!6953762 () Bool)

(assert (=> bm!504432 m!6953762))

(assert (=> b!6101184 m!6952666))

(assert (=> b!6101186 m!6953760))

(assert (=> b!6101186 m!6953760))

(declare-fun m!6953764 () Bool)

(assert (=> b!6101186 m!6953764))

(assert (=> b!6101186 m!6953756))

(assert (=> b!6101186 m!6953764))

(assert (=> b!6101186 m!6953756))

(declare-fun m!6953766 () Bool)

(assert (=> b!6101186 m!6953766))

(assert (=> b!6101180 m!6953756))

(assert (=> b!6101180 m!6953756))

(assert (=> b!6101180 m!6953758))

(assert (=> d!1912494 m!6953762))

(assert (=> d!1912494 m!6953092))

(assert (=> b!6101190 m!6953760))

(assert (=> b!6100391 d!1912494))

(assert (=> b!6100391 d!1912474))

(assert (=> d!1912250 d!1912246))

(declare-fun d!1912496 () Bool)

(assert (=> d!1912496 (= (flatMap!1561 z!1189 lambda!332228) (dynLambda!25323 lambda!332228 (h!70768 zl!343)))))

(assert (=> d!1912496 true))

(declare-fun _$13!2945 () Unit!157367)

(assert (=> d!1912496 (= (choose!45350 z!1189 (h!70768 zl!343) lambda!332228) _$13!2945)))

(declare-fun b_lambda!232429 () Bool)

(assert (=> (not b_lambda!232429) (not d!1912496)))

(declare-fun bs!1514951 () Bool)

(assert (= bs!1514951 d!1912496))

(assert (=> bs!1514951 m!6952688))

(assert (=> bs!1514951 m!6953182))

(assert (=> d!1912250 d!1912496))

(declare-fun b!6101192 () Bool)

(declare-fun e!3721120 () Bool)

(declare-fun e!3721123 () Bool)

(assert (=> b!6101192 (= e!3721120 e!3721123)))

(declare-fun c!1095974 () Bool)

(assert (=> b!6101192 (= c!1095974 (is-EmptyLang!16048 (regTwo!32608 r!7292)))))

(declare-fun b!6101193 () Bool)

(declare-fun res!2531415 () Bool)

(declare-fun e!3721125 () Bool)

(assert (=> b!6101193 (=> res!2531415 e!3721125)))

(assert (=> b!6101193 (= res!2531415 (not (is-ElementMatch!16048 (regTwo!32608 r!7292))))))

(assert (=> b!6101193 (= e!3721123 e!3721125)))

(declare-fun b!6101194 () Bool)

(declare-fun res!2531413 () Bool)

(declare-fun e!3721121 () Bool)

(assert (=> b!6101194 (=> res!2531413 e!3721121)))

(assert (=> b!6101194 (= res!2531413 (not (isEmpty!36243 (tail!11706 (_2!36330 (get!22177 lt!2329116))))))))

(declare-fun bm!504433 () Bool)

(declare-fun call!504438 () Bool)

(assert (=> bm!504433 (= call!504438 (isEmpty!36243 (_2!36330 (get!22177 lt!2329116))))))

(declare-fun b!6101195 () Bool)

(declare-fun e!3721126 () Bool)

(assert (=> b!6101195 (= e!3721125 e!3721126)))

(declare-fun res!2531419 () Bool)

(assert (=> b!6101195 (=> (not res!2531419) (not e!3721126))))

(declare-fun lt!2329219 () Bool)

(assert (=> b!6101195 (= res!2531419 (not lt!2329219))))

(declare-fun d!1912498 () Bool)

(assert (=> d!1912498 e!3721120))

(declare-fun c!1095976 () Bool)

(assert (=> d!1912498 (= c!1095976 (is-EmptyExpr!16048 (regTwo!32608 r!7292)))))

(declare-fun e!3721124 () Bool)

(assert (=> d!1912498 (= lt!2329219 e!3721124)))

(declare-fun c!1095975 () Bool)

(assert (=> d!1912498 (= c!1095975 (isEmpty!36243 (_2!36330 (get!22177 lt!2329116))))))

(assert (=> d!1912498 (validRegex!7784 (regTwo!32608 r!7292))))

(assert (=> d!1912498 (= (matchR!8231 (regTwo!32608 r!7292) (_2!36330 (get!22177 lt!2329116))) lt!2329219)))

(declare-fun b!6101196 () Bool)

(assert (=> b!6101196 (= e!3721123 (not lt!2329219))))

(declare-fun b!6101197 () Bool)

(declare-fun res!2531417 () Bool)

(assert (=> b!6101197 (=> res!2531417 e!3721125)))

(declare-fun e!3721122 () Bool)

(assert (=> b!6101197 (= res!2531417 e!3721122)))

(declare-fun res!2531412 () Bool)

(assert (=> b!6101197 (=> (not res!2531412) (not e!3721122))))

(assert (=> b!6101197 (= res!2531412 lt!2329219)))

(declare-fun b!6101198 () Bool)

(assert (=> b!6101198 (= e!3721124 (nullable!6043 (regTwo!32608 r!7292)))))

(declare-fun b!6101199 () Bool)

(assert (=> b!6101199 (= e!3721126 e!3721121)))

(declare-fun res!2531414 () Bool)

(assert (=> b!6101199 (=> res!2531414 e!3721121)))

(assert (=> b!6101199 (= res!2531414 call!504438)))

(declare-fun b!6101200 () Bool)

(assert (=> b!6101200 (= e!3721124 (matchR!8231 (derivativeStep!4771 (regTwo!32608 r!7292) (head!12621 (_2!36330 (get!22177 lt!2329116)))) (tail!11706 (_2!36330 (get!22177 lt!2329116)))))))

(declare-fun b!6101201 () Bool)

(assert (=> b!6101201 (= e!3721122 (= (head!12621 (_2!36330 (get!22177 lt!2329116))) (c!1095611 (regTwo!32608 r!7292))))))

(declare-fun b!6101202 () Bool)

(assert (=> b!6101202 (= e!3721120 (= lt!2329219 call!504438))))

(declare-fun b!6101203 () Bool)

(declare-fun res!2531418 () Bool)

(assert (=> b!6101203 (=> (not res!2531418) (not e!3721122))))

(assert (=> b!6101203 (= res!2531418 (isEmpty!36243 (tail!11706 (_2!36330 (get!22177 lt!2329116)))))))

(declare-fun b!6101204 () Bool)

(assert (=> b!6101204 (= e!3721121 (not (= (head!12621 (_2!36330 (get!22177 lt!2329116))) (c!1095611 (regTwo!32608 r!7292)))))))

(declare-fun b!6101205 () Bool)

(declare-fun res!2531416 () Bool)

(assert (=> b!6101205 (=> (not res!2531416) (not e!3721122))))

(assert (=> b!6101205 (= res!2531416 (not call!504438))))

(assert (= (and d!1912498 c!1095975) b!6101198))

(assert (= (and d!1912498 (not c!1095975)) b!6101200))

(assert (= (and d!1912498 c!1095976) b!6101202))

(assert (= (and d!1912498 (not c!1095976)) b!6101192))

(assert (= (and b!6101192 c!1095974) b!6101196))

(assert (= (and b!6101192 (not c!1095974)) b!6101193))

(assert (= (and b!6101193 (not res!2531415)) b!6101197))

(assert (= (and b!6101197 res!2531412) b!6101205))

(assert (= (and b!6101205 res!2531416) b!6101203))

(assert (= (and b!6101203 res!2531418) b!6101201))

(assert (= (and b!6101197 (not res!2531417)) b!6101195))

(assert (= (and b!6101195 res!2531419) b!6101199))

(assert (= (and b!6101199 (not res!2531414)) b!6101194))

(assert (= (and b!6101194 (not res!2531413)) b!6101204))

(assert (= (or b!6101202 b!6101199 b!6101205) bm!504433))

(declare-fun m!6953768 () Bool)

(assert (=> b!6101203 m!6953768))

(assert (=> b!6101203 m!6953768))

(declare-fun m!6953770 () Bool)

(assert (=> b!6101203 m!6953770))

(declare-fun m!6953772 () Bool)

(assert (=> b!6101201 m!6953772))

(declare-fun m!6953774 () Bool)

(assert (=> bm!504433 m!6953774))

(assert (=> b!6101198 m!6952896))

(assert (=> b!6101200 m!6953772))

(assert (=> b!6101200 m!6953772))

(declare-fun m!6953776 () Bool)

(assert (=> b!6101200 m!6953776))

(assert (=> b!6101200 m!6953768))

(assert (=> b!6101200 m!6953776))

(assert (=> b!6101200 m!6953768))

(declare-fun m!6953778 () Bool)

(assert (=> b!6101200 m!6953778))

(assert (=> b!6101194 m!6953768))

(assert (=> b!6101194 m!6953768))

(assert (=> b!6101194 m!6953770))

(assert (=> d!1912498 m!6953774))

(assert (=> d!1912498 m!6952704))

(assert (=> b!6101204 m!6953772))

(assert (=> b!6100389 d!1912498))

(assert (=> b!6100389 d!1912474))

(assert (=> b!6100339 d!1912242))

(declare-fun bs!1514952 () Bool)

(declare-fun d!1912500 () Bool)

(assert (= bs!1514952 (and d!1912500 d!1912466)))

(declare-fun lambda!332362 () Int)

(assert (=> bs!1514952 (= lambda!332362 lambda!332359)))

(declare-fun bs!1514953 () Bool)

(assert (= bs!1514953 (and d!1912500 d!1912212)))

(assert (=> bs!1514953 (= lambda!332362 lambda!332262)))

(declare-fun bs!1514954 () Bool)

(assert (= bs!1514954 (and d!1912500 d!1912242)))

(assert (=> bs!1514954 (= lambda!332362 lambda!332301)))

(declare-fun bs!1514955 () Bool)

(assert (= bs!1514955 (and d!1912500 d!1912204)))

(assert (=> bs!1514955 (= lambda!332362 lambda!332255)))

(declare-fun bs!1514956 () Bool)

(assert (= bs!1514956 (and d!1912500 b!6101076)))

(assert (=> bs!1514956 (not (= lambda!332362 lambda!332356))))

(declare-fun bs!1514957 () Bool)

(assert (= bs!1514957 (and d!1912500 b!6101078)))

(assert (=> bs!1514957 (not (= lambda!332362 lambda!332357))))

(declare-fun bs!1514958 () Bool)

(assert (= bs!1514958 (and d!1912500 d!1912210)))

(assert (=> bs!1514958 (= lambda!332362 lambda!332259)))

(declare-fun bs!1514959 () Bool)

(assert (= bs!1514959 (and d!1912500 d!1912206)))

(assert (=> bs!1514959 (= lambda!332362 lambda!332256)))

(declare-fun lt!2329220 () List!64443)

(assert (=> d!1912500 (forall!15169 lt!2329220 lambda!332362)))

(declare-fun e!3721127 () List!64443)

(assert (=> d!1912500 (= lt!2329220 e!3721127)))

(declare-fun c!1095977 () Bool)

(assert (=> d!1912500 (= c!1095977 (is-Cons!64320 (t!377893 zl!343)))))

(assert (=> d!1912500 (= (unfocusZipperList!1469 (t!377893 zl!343)) lt!2329220)))

(declare-fun b!6101206 () Bool)

(assert (=> b!6101206 (= e!3721127 (Cons!64319 (generalisedConcat!1645 (exprs!5932 (h!70768 (t!377893 zl!343)))) (unfocusZipperList!1469 (t!377893 (t!377893 zl!343)))))))

(declare-fun b!6101207 () Bool)

(assert (=> b!6101207 (= e!3721127 Nil!64319)))

(assert (= (and d!1912500 c!1095977) b!6101206))

(assert (= (and d!1912500 (not c!1095977)) b!6101207))

(declare-fun m!6953780 () Bool)

(assert (=> d!1912500 m!6953780))

(declare-fun m!6953782 () Bool)

(assert (=> b!6101206 m!6953782))

(declare-fun m!6953784 () Bool)

(assert (=> b!6101206 m!6953784))

(assert (=> b!6100339 d!1912500))

(declare-fun b!6101208 () Bool)

(declare-fun e!3721133 () Bool)

(declare-fun e!3721129 () Bool)

(assert (=> b!6101208 (= e!3721133 e!3721129)))

(declare-fun res!2531421 () Bool)

(assert (=> b!6101208 (= res!2531421 (not (nullable!6043 (reg!16377 (ite c!1095690 (reg!16377 (regTwo!32608 r!7292)) (ite c!1095689 (regTwo!32609 (regTwo!32608 r!7292)) (regTwo!32608 (regTwo!32608 r!7292))))))))))

(assert (=> b!6101208 (=> (not res!2531421) (not e!3721129))))

(declare-fun b!6101209 () Bool)

(declare-fun call!504440 () Bool)

(assert (=> b!6101209 (= e!3721129 call!504440)))

(declare-fun c!1095978 () Bool)

(declare-fun c!1095979 () Bool)

(declare-fun bm!504434 () Bool)

(assert (=> bm!504434 (= call!504440 (validRegex!7784 (ite c!1095979 (reg!16377 (ite c!1095690 (reg!16377 (regTwo!32608 r!7292)) (ite c!1095689 (regTwo!32609 (regTwo!32608 r!7292)) (regTwo!32608 (regTwo!32608 r!7292))))) (ite c!1095978 (regTwo!32609 (ite c!1095690 (reg!16377 (regTwo!32608 r!7292)) (ite c!1095689 (regTwo!32609 (regTwo!32608 r!7292)) (regTwo!32608 (regTwo!32608 r!7292))))) (regTwo!32608 (ite c!1095690 (reg!16377 (regTwo!32608 r!7292)) (ite c!1095689 (regTwo!32609 (regTwo!32608 r!7292)) (regTwo!32608 (regTwo!32608 r!7292)))))))))))

(declare-fun b!6101210 () Bool)

(declare-fun e!3721131 () Bool)

(assert (=> b!6101210 (= e!3721133 e!3721131)))

(assert (=> b!6101210 (= c!1095978 (is-Union!16048 (ite c!1095690 (reg!16377 (regTwo!32608 r!7292)) (ite c!1095689 (regTwo!32609 (regTwo!32608 r!7292)) (regTwo!32608 (regTwo!32608 r!7292))))))))

(declare-fun d!1912502 () Bool)

(declare-fun res!2531422 () Bool)

(declare-fun e!3721130 () Bool)

(assert (=> d!1912502 (=> res!2531422 e!3721130)))

(assert (=> d!1912502 (= res!2531422 (is-ElementMatch!16048 (ite c!1095690 (reg!16377 (regTwo!32608 r!7292)) (ite c!1095689 (regTwo!32609 (regTwo!32608 r!7292)) (regTwo!32608 (regTwo!32608 r!7292))))))))

(assert (=> d!1912502 (= (validRegex!7784 (ite c!1095690 (reg!16377 (regTwo!32608 r!7292)) (ite c!1095689 (regTwo!32609 (regTwo!32608 r!7292)) (regTwo!32608 (regTwo!32608 r!7292))))) e!3721130)))

(declare-fun bm!504435 () Bool)

(declare-fun call!504439 () Bool)

(assert (=> bm!504435 (= call!504439 call!504440)))

(declare-fun bm!504436 () Bool)

(declare-fun call!504441 () Bool)

(assert (=> bm!504436 (= call!504441 (validRegex!7784 (ite c!1095978 (regOne!32609 (ite c!1095690 (reg!16377 (regTwo!32608 r!7292)) (ite c!1095689 (regTwo!32609 (regTwo!32608 r!7292)) (regTwo!32608 (regTwo!32608 r!7292))))) (regOne!32608 (ite c!1095690 (reg!16377 (regTwo!32608 r!7292)) (ite c!1095689 (regTwo!32609 (regTwo!32608 r!7292)) (regTwo!32608 (regTwo!32608 r!7292))))))))))

(declare-fun b!6101211 () Bool)

(declare-fun e!3721132 () Bool)

(assert (=> b!6101211 (= e!3721132 call!504439)))

(declare-fun b!6101212 () Bool)

(declare-fun res!2531420 () Bool)

(declare-fun e!3721128 () Bool)

(assert (=> b!6101212 (=> res!2531420 e!3721128)))

(assert (=> b!6101212 (= res!2531420 (not (is-Concat!24893 (ite c!1095690 (reg!16377 (regTwo!32608 r!7292)) (ite c!1095689 (regTwo!32609 (regTwo!32608 r!7292)) (regTwo!32608 (regTwo!32608 r!7292)))))))))

(assert (=> b!6101212 (= e!3721131 e!3721128)))

(declare-fun b!6101213 () Bool)

(declare-fun e!3721134 () Bool)

(assert (=> b!6101213 (= e!3721134 call!504439)))

(declare-fun b!6101214 () Bool)

(declare-fun res!2531423 () Bool)

(assert (=> b!6101214 (=> (not res!2531423) (not e!3721134))))

(assert (=> b!6101214 (= res!2531423 call!504441)))

(assert (=> b!6101214 (= e!3721131 e!3721134)))

(declare-fun b!6101215 () Bool)

(assert (=> b!6101215 (= e!3721130 e!3721133)))

(assert (=> b!6101215 (= c!1095979 (is-Star!16048 (ite c!1095690 (reg!16377 (regTwo!32608 r!7292)) (ite c!1095689 (regTwo!32609 (regTwo!32608 r!7292)) (regTwo!32608 (regTwo!32608 r!7292))))))))

(declare-fun b!6101216 () Bool)

(assert (=> b!6101216 (= e!3721128 e!3721132)))

(declare-fun res!2531424 () Bool)

(assert (=> b!6101216 (=> (not res!2531424) (not e!3721132))))

(assert (=> b!6101216 (= res!2531424 call!504441)))

(assert (= (and d!1912502 (not res!2531422)) b!6101215))

(assert (= (and b!6101215 c!1095979) b!6101208))

(assert (= (and b!6101215 (not c!1095979)) b!6101210))

(assert (= (and b!6101208 res!2531421) b!6101209))

(assert (= (and b!6101210 c!1095978) b!6101214))

(assert (= (and b!6101210 (not c!1095978)) b!6101212))

(assert (= (and b!6101214 res!2531423) b!6101213))

(assert (= (and b!6101212 (not res!2531420)) b!6101216))

(assert (= (and b!6101216 res!2531424) b!6101211))

(assert (= (or b!6101213 b!6101211) bm!504435))

(assert (= (or b!6101214 b!6101216) bm!504436))

(assert (= (or b!6101209 bm!504435) bm!504434))

(declare-fun m!6953786 () Bool)

(assert (=> b!6101208 m!6953786))

(declare-fun m!6953788 () Bool)

(assert (=> bm!504434 m!6953788))

(declare-fun m!6953790 () Bool)

(assert (=> bm!504436 m!6953790))

(assert (=> bm!504286 d!1912502))

(declare-fun d!1912504 () Bool)

(declare-fun res!2531425 () Bool)

(declare-fun e!3721135 () Bool)

(assert (=> d!1912504 (=> res!2531425 e!3721135)))

(assert (=> d!1912504 (= res!2531425 (is-Nil!64319 lt!2329088))))

(assert (=> d!1912504 (= (forall!15169 lt!2329088 lambda!332262) e!3721135)))

(declare-fun b!6101217 () Bool)

(declare-fun e!3721136 () Bool)

(assert (=> b!6101217 (= e!3721135 e!3721136)))

(declare-fun res!2531426 () Bool)

(assert (=> b!6101217 (=> (not res!2531426) (not e!3721136))))

(assert (=> b!6101217 (= res!2531426 (dynLambda!25325 lambda!332262 (h!70767 lt!2329088)))))

(declare-fun b!6101218 () Bool)

(assert (=> b!6101218 (= e!3721136 (forall!15169 (t!377892 lt!2329088) lambda!332262))))

(assert (= (and d!1912504 (not res!2531425)) b!6101217))

(assert (= (and b!6101217 res!2531426) b!6101218))

(declare-fun b_lambda!232431 () Bool)

(assert (=> (not b_lambda!232431) (not b!6101217)))

(declare-fun m!6953792 () Bool)

(assert (=> b!6101217 m!6953792))

(declare-fun m!6953794 () Bool)

(assert (=> b!6101218 m!6953794))

(assert (=> d!1912212 d!1912504))

(declare-fun d!1912506 () Bool)

(assert (=> d!1912506 (= ($colon$colon!1927 (exprs!5932 lt!2328944) (ite (or c!1095704 c!1095706) (regTwo!32608 (regOne!32608 r!7292)) (regOne!32608 r!7292))) (Cons!64319 (ite (or c!1095704 c!1095706) (regTwo!32608 (regOne!32608 r!7292)) (regOne!32608 r!7292)) (exprs!5932 lt!2328944)))))

(assert (=> bm!504297 d!1912506))

(assert (=> bm!504272 d!1912346))

(declare-fun d!1912508 () Bool)

(assert (=> d!1912508 (= (nullable!6043 r!7292) (nullableFct!2007 r!7292))))

(declare-fun bs!1514960 () Bool)

(assert (= bs!1514960 d!1912508))

(declare-fun m!6953796 () Bool)

(assert (=> bs!1514960 m!6953796))

(assert (=> b!6100138 d!1912508))

(assert (=> b!6100199 d!1912328))

(assert (=> b!6100199 d!1912330))

(declare-fun d!1912510 () Bool)

(declare-fun c!1095981 () Bool)

(declare-fun e!3721138 () Bool)

(assert (=> d!1912510 (= c!1095981 e!3721138)))

(declare-fun res!2531427 () Bool)

(assert (=> d!1912510 (=> (not res!2531427) (not e!3721138))))

(assert (=> d!1912510 (= res!2531427 (is-Cons!64319 (exprs!5932 (Context!10865 (t!377892 (exprs!5932 (h!70768 zl!343)))))))))

(declare-fun e!3721139 () (Set Context!10864))

(assert (=> d!1912510 (= (derivationStepZipperUp!1224 (Context!10865 (t!377892 (exprs!5932 (h!70768 zl!343)))) (h!70769 s!2326)) e!3721139)))

(declare-fun b!6101219 () Bool)

(declare-fun e!3721137 () (Set Context!10864))

(assert (=> b!6101219 (= e!3721137 (as set.empty (Set Context!10864)))))

(declare-fun b!6101220 () Bool)

(assert (=> b!6101220 (= e!3721138 (nullable!6043 (h!70767 (exprs!5932 (Context!10865 (t!377892 (exprs!5932 (h!70768 zl!343))))))))))

(declare-fun b!6101221 () Bool)

(declare-fun call!504442 () (Set Context!10864))

(assert (=> b!6101221 (= e!3721137 call!504442)))

(declare-fun b!6101222 () Bool)

(assert (=> b!6101222 (= e!3721139 e!3721137)))

(declare-fun c!1095980 () Bool)

(assert (=> b!6101222 (= c!1095980 (is-Cons!64319 (exprs!5932 (Context!10865 (t!377892 (exprs!5932 (h!70768 zl!343)))))))))

(declare-fun bm!504437 () Bool)

(assert (=> bm!504437 (= call!504442 (derivationStepZipperDown!1298 (h!70767 (exprs!5932 (Context!10865 (t!377892 (exprs!5932 (h!70768 zl!343)))))) (Context!10865 (t!377892 (exprs!5932 (Context!10865 (t!377892 (exprs!5932 (h!70768 zl!343))))))) (h!70769 s!2326)))))

(declare-fun b!6101223 () Bool)

(assert (=> b!6101223 (= e!3721139 (set.union call!504442 (derivationStepZipperUp!1224 (Context!10865 (t!377892 (exprs!5932 (Context!10865 (t!377892 (exprs!5932 (h!70768 zl!343))))))) (h!70769 s!2326))))))

(assert (= (and d!1912510 res!2531427) b!6101220))

(assert (= (and d!1912510 c!1095981) b!6101223))

(assert (= (and d!1912510 (not c!1095981)) b!6101222))

(assert (= (and b!6101222 c!1095980) b!6101221))

(assert (= (and b!6101222 (not c!1095980)) b!6101219))

(assert (= (or b!6101223 b!6101221) bm!504437))

(declare-fun m!6953798 () Bool)

(assert (=> b!6101220 m!6953798))

(declare-fun m!6953800 () Bool)

(assert (=> bm!504437 m!6953800))

(declare-fun m!6953802 () Bool)

(assert (=> b!6101223 m!6953802))

(assert (=> b!6100488 d!1912510))

(declare-fun b!6101224 () Bool)

(declare-fun e!3721145 () Bool)

(declare-fun e!3721141 () Bool)

(assert (=> b!6101224 (= e!3721145 e!3721141)))

(declare-fun res!2531429 () Bool)

(assert (=> b!6101224 (= res!2531429 (not (nullable!6043 (reg!16377 lt!2329075))))))

(assert (=> b!6101224 (=> (not res!2531429) (not e!3721141))))

(declare-fun b!6101225 () Bool)

(declare-fun call!504444 () Bool)

(assert (=> b!6101225 (= e!3721141 call!504444)))

(declare-fun bm!504438 () Bool)

(declare-fun c!1095983 () Bool)

(declare-fun c!1095982 () Bool)

(assert (=> bm!504438 (= call!504444 (validRegex!7784 (ite c!1095983 (reg!16377 lt!2329075) (ite c!1095982 (regTwo!32609 lt!2329075) (regTwo!32608 lt!2329075)))))))

(declare-fun b!6101226 () Bool)

(declare-fun e!3721143 () Bool)

(assert (=> b!6101226 (= e!3721145 e!3721143)))

(assert (=> b!6101226 (= c!1095982 (is-Union!16048 lt!2329075))))

(declare-fun d!1912512 () Bool)

(declare-fun res!2531430 () Bool)

(declare-fun e!3721142 () Bool)

(assert (=> d!1912512 (=> res!2531430 e!3721142)))

(assert (=> d!1912512 (= res!2531430 (is-ElementMatch!16048 lt!2329075))))

(assert (=> d!1912512 (= (validRegex!7784 lt!2329075) e!3721142)))

(declare-fun bm!504439 () Bool)

(declare-fun call!504443 () Bool)

(assert (=> bm!504439 (= call!504443 call!504444)))

(declare-fun bm!504440 () Bool)

(declare-fun call!504445 () Bool)

(assert (=> bm!504440 (= call!504445 (validRegex!7784 (ite c!1095982 (regOne!32609 lt!2329075) (regOne!32608 lt!2329075))))))

(declare-fun b!6101227 () Bool)

(declare-fun e!3721144 () Bool)

(assert (=> b!6101227 (= e!3721144 call!504443)))

(declare-fun b!6101228 () Bool)

(declare-fun res!2531428 () Bool)

(declare-fun e!3721140 () Bool)

(assert (=> b!6101228 (=> res!2531428 e!3721140)))

(assert (=> b!6101228 (= res!2531428 (not (is-Concat!24893 lt!2329075)))))

(assert (=> b!6101228 (= e!3721143 e!3721140)))

(declare-fun b!6101229 () Bool)

(declare-fun e!3721146 () Bool)

(assert (=> b!6101229 (= e!3721146 call!504443)))

(declare-fun b!6101230 () Bool)

(declare-fun res!2531431 () Bool)

(assert (=> b!6101230 (=> (not res!2531431) (not e!3721146))))

(assert (=> b!6101230 (= res!2531431 call!504445)))

(assert (=> b!6101230 (= e!3721143 e!3721146)))

(declare-fun b!6101231 () Bool)

(assert (=> b!6101231 (= e!3721142 e!3721145)))

(assert (=> b!6101231 (= c!1095983 (is-Star!16048 lt!2329075))))

(declare-fun b!6101232 () Bool)

(assert (=> b!6101232 (= e!3721140 e!3721144)))

(declare-fun res!2531432 () Bool)

(assert (=> b!6101232 (=> (not res!2531432) (not e!3721144))))

(assert (=> b!6101232 (= res!2531432 call!504445)))

(assert (= (and d!1912512 (not res!2531430)) b!6101231))

(assert (= (and b!6101231 c!1095983) b!6101224))

(assert (= (and b!6101231 (not c!1095983)) b!6101226))

(assert (= (and b!6101224 res!2531429) b!6101225))

(assert (= (and b!6101226 c!1095982) b!6101230))

(assert (= (and b!6101226 (not c!1095982)) b!6101228))

(assert (= (and b!6101230 res!2531431) b!6101229))

(assert (= (and b!6101228 (not res!2531428)) b!6101232))

(assert (= (and b!6101232 res!2531432) b!6101227))

(assert (= (or b!6101229 b!6101227) bm!504439))

(assert (= (or b!6101230 b!6101232) bm!504440))

(assert (= (or b!6101225 bm!504439) bm!504438))

(declare-fun m!6953804 () Bool)

(assert (=> b!6101224 m!6953804))

(declare-fun m!6953806 () Bool)

(assert (=> bm!504438 m!6953806))

(declare-fun m!6953808 () Bool)

(assert (=> bm!504440 m!6953808))

(assert (=> d!1912182 d!1912512))

(declare-fun bs!1514961 () Bool)

(declare-fun d!1912514 () Bool)

(assert (= bs!1514961 (and d!1912514 d!1912466)))

(declare-fun lambda!332363 () Int)

(assert (=> bs!1514961 (= lambda!332363 lambda!332359)))

(declare-fun bs!1514962 () Bool)

(assert (= bs!1514962 (and d!1912514 d!1912212)))

(assert (=> bs!1514962 (= lambda!332363 lambda!332262)))

(declare-fun bs!1514963 () Bool)

(assert (= bs!1514963 (and d!1912514 d!1912242)))

(assert (=> bs!1514963 (= lambda!332363 lambda!332301)))

(declare-fun bs!1514964 () Bool)

(assert (= bs!1514964 (and d!1912514 d!1912204)))

(assert (=> bs!1514964 (= lambda!332363 lambda!332255)))

(declare-fun bs!1514965 () Bool)

(assert (= bs!1514965 (and d!1912514 b!6101076)))

(assert (=> bs!1514965 (not (= lambda!332363 lambda!332356))))

(declare-fun bs!1514966 () Bool)

(assert (= bs!1514966 (and d!1912514 d!1912500)))

(assert (=> bs!1514966 (= lambda!332363 lambda!332362)))

(declare-fun bs!1514967 () Bool)

(assert (= bs!1514967 (and d!1912514 b!6101078)))

(assert (=> bs!1514967 (not (= lambda!332363 lambda!332357))))

(declare-fun bs!1514968 () Bool)

(assert (= bs!1514968 (and d!1912514 d!1912210)))

(assert (=> bs!1514968 (= lambda!332363 lambda!332259)))

(declare-fun bs!1514969 () Bool)

(assert (= bs!1514969 (and d!1912514 d!1912206)))

(assert (=> bs!1514969 (= lambda!332363 lambda!332256)))

(declare-fun b!6101233 () Bool)

(declare-fun e!3721150 () Bool)

(declare-fun lt!2329221 () Regex!16048)

(assert (=> b!6101233 (= e!3721150 (= lt!2329221 (head!12622 (unfocusZipperList!1469 lt!2328940))))))

(declare-fun b!6101234 () Bool)

(declare-fun e!3721151 () Regex!16048)

(assert (=> b!6101234 (= e!3721151 EmptyLang!16048)))

(declare-fun b!6101235 () Bool)

(declare-fun e!3721152 () Bool)

(assert (=> b!6101235 (= e!3721152 (isEmptyLang!1477 lt!2329221))))

(declare-fun b!6101236 () Bool)

(assert (=> b!6101236 (= e!3721152 e!3721150)))

(declare-fun c!1095985 () Bool)

(assert (=> b!6101236 (= c!1095985 (isEmpty!36239 (tail!11707 (unfocusZipperList!1469 lt!2328940))))))

(declare-fun b!6101237 () Bool)

(assert (=> b!6101237 (= e!3721151 (Union!16048 (h!70767 (unfocusZipperList!1469 lt!2328940)) (generalisedUnion!1892 (t!377892 (unfocusZipperList!1469 lt!2328940)))))))

(declare-fun b!6101238 () Bool)

(assert (=> b!6101238 (= e!3721150 (isUnion!907 lt!2329221))))

(declare-fun b!6101240 () Bool)

(declare-fun e!3721147 () Bool)

(assert (=> b!6101240 (= e!3721147 (isEmpty!36239 (t!377892 (unfocusZipperList!1469 lt!2328940))))))

(declare-fun e!3721149 () Bool)

(assert (=> d!1912514 e!3721149))

(declare-fun res!2531433 () Bool)

(assert (=> d!1912514 (=> (not res!2531433) (not e!3721149))))

(assert (=> d!1912514 (= res!2531433 (validRegex!7784 lt!2329221))))

(declare-fun e!3721148 () Regex!16048)

(assert (=> d!1912514 (= lt!2329221 e!3721148)))

(declare-fun c!1095986 () Bool)

(assert (=> d!1912514 (= c!1095986 e!3721147)))

(declare-fun res!2531434 () Bool)

(assert (=> d!1912514 (=> (not res!2531434) (not e!3721147))))

(assert (=> d!1912514 (= res!2531434 (is-Cons!64319 (unfocusZipperList!1469 lt!2328940)))))

(assert (=> d!1912514 (forall!15169 (unfocusZipperList!1469 lt!2328940) lambda!332363)))

(assert (=> d!1912514 (= (generalisedUnion!1892 (unfocusZipperList!1469 lt!2328940)) lt!2329221)))

(declare-fun b!6101239 () Bool)

(assert (=> b!6101239 (= e!3721149 e!3721152)))

(declare-fun c!1095984 () Bool)

(assert (=> b!6101239 (= c!1095984 (isEmpty!36239 (unfocusZipperList!1469 lt!2328940)))))

(declare-fun b!6101241 () Bool)

(assert (=> b!6101241 (= e!3721148 (h!70767 (unfocusZipperList!1469 lt!2328940)))))

(declare-fun b!6101242 () Bool)

(assert (=> b!6101242 (= e!3721148 e!3721151)))

(declare-fun c!1095987 () Bool)

(assert (=> b!6101242 (= c!1095987 (is-Cons!64319 (unfocusZipperList!1469 lt!2328940)))))

(assert (= (and d!1912514 res!2531434) b!6101240))

(assert (= (and d!1912514 c!1095986) b!6101241))

(assert (= (and d!1912514 (not c!1095986)) b!6101242))

(assert (= (and b!6101242 c!1095987) b!6101237))

(assert (= (and b!6101242 (not c!1095987)) b!6101234))

(assert (= (and d!1912514 res!2531433) b!6101239))

(assert (= (and b!6101239 c!1095984) b!6101235))

(assert (= (and b!6101239 (not c!1095984)) b!6101236))

(assert (= (and b!6101236 c!1095985) b!6101233))

(assert (= (and b!6101236 (not c!1095985)) b!6101238))

(declare-fun m!6953810 () Bool)

(assert (=> b!6101240 m!6953810))

(declare-fun m!6953812 () Bool)

(assert (=> b!6101238 m!6953812))

(declare-fun m!6953814 () Bool)

(assert (=> b!6101235 m!6953814))

(assert (=> b!6101233 m!6952942))

(declare-fun m!6953816 () Bool)

(assert (=> b!6101233 m!6953816))

(assert (=> b!6101239 m!6952942))

(declare-fun m!6953818 () Bool)

(assert (=> b!6101239 m!6953818))

(declare-fun m!6953820 () Bool)

(assert (=> d!1912514 m!6953820))

(assert (=> d!1912514 m!6952942))

(declare-fun m!6953822 () Bool)

(assert (=> d!1912514 m!6953822))

(assert (=> b!6101236 m!6952942))

(declare-fun m!6953824 () Bool)

(assert (=> b!6101236 m!6953824))

(assert (=> b!6101236 m!6953824))

(declare-fun m!6953826 () Bool)

(assert (=> b!6101236 m!6953826))

(declare-fun m!6953828 () Bool)

(assert (=> b!6101237 m!6953828))

(assert (=> d!1912182 d!1912514))

(declare-fun bs!1514970 () Bool)

(declare-fun d!1912516 () Bool)

(assert (= bs!1514970 (and d!1912516 d!1912466)))

(declare-fun lambda!332364 () Int)

(assert (=> bs!1514970 (= lambda!332364 lambda!332359)))

(declare-fun bs!1514971 () Bool)

(assert (= bs!1514971 (and d!1912516 d!1912212)))

(assert (=> bs!1514971 (= lambda!332364 lambda!332262)))

(declare-fun bs!1514972 () Bool)

(assert (= bs!1514972 (and d!1912516 d!1912242)))

(assert (=> bs!1514972 (= lambda!332364 lambda!332301)))

(declare-fun bs!1514973 () Bool)

(assert (= bs!1514973 (and d!1912516 d!1912204)))

(assert (=> bs!1514973 (= lambda!332364 lambda!332255)))

(declare-fun bs!1514974 () Bool)

(assert (= bs!1514974 (and d!1912516 b!6101076)))

(assert (=> bs!1514974 (not (= lambda!332364 lambda!332356))))

(declare-fun bs!1514975 () Bool)

(assert (= bs!1514975 (and d!1912516 d!1912500)))

(assert (=> bs!1514975 (= lambda!332364 lambda!332362)))

(declare-fun bs!1514976 () Bool)

(assert (= bs!1514976 (and d!1912516 d!1912514)))

(assert (=> bs!1514976 (= lambda!332364 lambda!332363)))

(declare-fun bs!1514977 () Bool)

(assert (= bs!1514977 (and d!1912516 b!6101078)))

(assert (=> bs!1514977 (not (= lambda!332364 lambda!332357))))

(declare-fun bs!1514978 () Bool)

(assert (= bs!1514978 (and d!1912516 d!1912210)))

(assert (=> bs!1514978 (= lambda!332364 lambda!332259)))

(declare-fun bs!1514979 () Bool)

(assert (= bs!1514979 (and d!1912516 d!1912206)))

(assert (=> bs!1514979 (= lambda!332364 lambda!332256)))

(declare-fun lt!2329222 () List!64443)

(assert (=> d!1912516 (forall!15169 lt!2329222 lambda!332364)))

(declare-fun e!3721153 () List!64443)

(assert (=> d!1912516 (= lt!2329222 e!3721153)))

(declare-fun c!1095988 () Bool)

(assert (=> d!1912516 (= c!1095988 (is-Cons!64320 lt!2328940))))

(assert (=> d!1912516 (= (unfocusZipperList!1469 lt!2328940) lt!2329222)))

(declare-fun b!6101243 () Bool)

(assert (=> b!6101243 (= e!3721153 (Cons!64319 (generalisedConcat!1645 (exprs!5932 (h!70768 lt!2328940))) (unfocusZipperList!1469 (t!377893 lt!2328940))))))

(declare-fun b!6101244 () Bool)

(assert (=> b!6101244 (= e!3721153 Nil!64319)))

(assert (= (and d!1912516 c!1095988) b!6101243))

(assert (= (and d!1912516 (not c!1095988)) b!6101244))

(declare-fun m!6953830 () Bool)

(assert (=> d!1912516 m!6953830))

(declare-fun m!6953832 () Bool)

(assert (=> b!6101243 m!6953832))

(declare-fun m!6953834 () Bool)

(assert (=> b!6101243 m!6953834))

(assert (=> d!1912182 d!1912516))

(assert (=> b!6100233 d!1912328))

(assert (=> b!6100233 d!1912330))

(declare-fun d!1912518 () Bool)

(assert (=> d!1912518 true))

(assert (=> d!1912518 true))

(declare-fun res!2531437 () Bool)

(assert (=> d!1912518 (= (choose!45353 lambda!332226) res!2531437)))

(assert (=> d!1912228 d!1912518))

(declare-fun d!1912520 () Bool)

(assert (=> d!1912520 (= (head!12622 (unfocusZipperList!1469 zl!343)) (h!70767 (unfocusZipperList!1469 zl!343)))))

(assert (=> b!6100325 d!1912520))

(assert (=> b!6100008 d!1912188))

(assert (=> b!6100480 d!1912172))

(declare-fun d!1912522 () Bool)

(assert (=> d!1912522 (= (nullable!6043 (h!70767 (exprs!5932 (h!70768 zl!343)))) (nullableFct!2007 (h!70767 (exprs!5932 (h!70768 zl!343)))))))

(declare-fun bs!1514980 () Bool)

(assert (= bs!1514980 d!1912522))

(declare-fun m!6953836 () Bool)

(assert (=> bs!1514980 m!6953836))

(assert (=> b!6100485 d!1912522))

(declare-fun bs!1514981 () Bool)

(declare-fun d!1912524 () Bool)

(assert (= bs!1514981 (and d!1912524 d!1912466)))

(declare-fun lambda!332365 () Int)

(assert (=> bs!1514981 (= lambda!332365 lambda!332359)))

(declare-fun bs!1514982 () Bool)

(assert (= bs!1514982 (and d!1912524 d!1912212)))

(assert (=> bs!1514982 (= lambda!332365 lambda!332262)))

(declare-fun bs!1514983 () Bool)

(assert (= bs!1514983 (and d!1912524 d!1912242)))

(assert (=> bs!1514983 (= lambda!332365 lambda!332301)))

(declare-fun bs!1514984 () Bool)

(assert (= bs!1514984 (and d!1912524 d!1912204)))

(assert (=> bs!1514984 (= lambda!332365 lambda!332255)))

(declare-fun bs!1514985 () Bool)

(assert (= bs!1514985 (and d!1912524 b!6101076)))

(assert (=> bs!1514985 (not (= lambda!332365 lambda!332356))))

(declare-fun bs!1514986 () Bool)

(assert (= bs!1514986 (and d!1912524 d!1912516)))

(assert (=> bs!1514986 (= lambda!332365 lambda!332364)))

(declare-fun bs!1514987 () Bool)

(assert (= bs!1514987 (and d!1912524 d!1912500)))

(assert (=> bs!1514987 (= lambda!332365 lambda!332362)))

(declare-fun bs!1514988 () Bool)

(assert (= bs!1514988 (and d!1912524 d!1912514)))

(assert (=> bs!1514988 (= lambda!332365 lambda!332363)))

(declare-fun bs!1514989 () Bool)

(assert (= bs!1514989 (and d!1912524 b!6101078)))

(assert (=> bs!1514989 (not (= lambda!332365 lambda!332357))))

(declare-fun bs!1514990 () Bool)

(assert (= bs!1514990 (and d!1912524 d!1912210)))

(assert (=> bs!1514990 (= lambda!332365 lambda!332259)))

(declare-fun bs!1514991 () Bool)

(assert (= bs!1514991 (and d!1912524 d!1912206)))

(assert (=> bs!1514991 (= lambda!332365 lambda!332256)))

(declare-fun b!6101245 () Bool)

(declare-fun e!3721157 () Bool)

(declare-fun lt!2329223 () Regex!16048)

(assert (=> b!6101245 (= e!3721157 (= lt!2329223 (head!12622 (t!377892 (unfocusZipperList!1469 zl!343)))))))

(declare-fun b!6101246 () Bool)

(declare-fun e!3721158 () Regex!16048)

(assert (=> b!6101246 (= e!3721158 EmptyLang!16048)))

(declare-fun b!6101247 () Bool)

(declare-fun e!3721159 () Bool)

(assert (=> b!6101247 (= e!3721159 (isEmptyLang!1477 lt!2329223))))

(declare-fun b!6101248 () Bool)

(assert (=> b!6101248 (= e!3721159 e!3721157)))

(declare-fun c!1095990 () Bool)

(assert (=> b!6101248 (= c!1095990 (isEmpty!36239 (tail!11707 (t!377892 (unfocusZipperList!1469 zl!343)))))))

(declare-fun b!6101249 () Bool)

(assert (=> b!6101249 (= e!3721158 (Union!16048 (h!70767 (t!377892 (unfocusZipperList!1469 zl!343))) (generalisedUnion!1892 (t!377892 (t!377892 (unfocusZipperList!1469 zl!343))))))))

(declare-fun b!6101250 () Bool)

(assert (=> b!6101250 (= e!3721157 (isUnion!907 lt!2329223))))

(declare-fun b!6101252 () Bool)

(declare-fun e!3721154 () Bool)

(assert (=> b!6101252 (= e!3721154 (isEmpty!36239 (t!377892 (t!377892 (unfocusZipperList!1469 zl!343)))))))

(declare-fun e!3721156 () Bool)

(assert (=> d!1912524 e!3721156))

(declare-fun res!2531438 () Bool)

(assert (=> d!1912524 (=> (not res!2531438) (not e!3721156))))

(assert (=> d!1912524 (= res!2531438 (validRegex!7784 lt!2329223))))

(declare-fun e!3721155 () Regex!16048)

(assert (=> d!1912524 (= lt!2329223 e!3721155)))

(declare-fun c!1095991 () Bool)

(assert (=> d!1912524 (= c!1095991 e!3721154)))

(declare-fun res!2531439 () Bool)

(assert (=> d!1912524 (=> (not res!2531439) (not e!3721154))))

(assert (=> d!1912524 (= res!2531439 (is-Cons!64319 (t!377892 (unfocusZipperList!1469 zl!343))))))

(assert (=> d!1912524 (forall!15169 (t!377892 (unfocusZipperList!1469 zl!343)) lambda!332365)))

(assert (=> d!1912524 (= (generalisedUnion!1892 (t!377892 (unfocusZipperList!1469 zl!343))) lt!2329223)))

(declare-fun b!6101251 () Bool)

(assert (=> b!6101251 (= e!3721156 e!3721159)))

(declare-fun c!1095989 () Bool)

(assert (=> b!6101251 (= c!1095989 (isEmpty!36239 (t!377892 (unfocusZipperList!1469 zl!343))))))

(declare-fun b!6101253 () Bool)

(assert (=> b!6101253 (= e!3721155 (h!70767 (t!377892 (unfocusZipperList!1469 zl!343))))))

(declare-fun b!6101254 () Bool)

(assert (=> b!6101254 (= e!3721155 e!3721158)))

(declare-fun c!1095992 () Bool)

(assert (=> b!6101254 (= c!1095992 (is-Cons!64319 (t!377892 (unfocusZipperList!1469 zl!343))))))

(assert (= (and d!1912524 res!2531439) b!6101252))

(assert (= (and d!1912524 c!1095991) b!6101253))

(assert (= (and d!1912524 (not c!1095991)) b!6101254))

(assert (= (and b!6101254 c!1095992) b!6101249))

(assert (= (and b!6101254 (not c!1095992)) b!6101246))

(assert (= (and d!1912524 res!2531438) b!6101251))

(assert (= (and b!6101251 c!1095989) b!6101247))

(assert (= (and b!6101251 (not c!1095989)) b!6101248))

(assert (= (and b!6101248 c!1095990) b!6101245))

(assert (= (and b!6101248 (not c!1095990)) b!6101250))

(declare-fun m!6953838 () Bool)

(assert (=> b!6101252 m!6953838))

(declare-fun m!6953840 () Bool)

(assert (=> b!6101250 m!6953840))

(declare-fun m!6953842 () Bool)

(assert (=> b!6101247 m!6953842))

(declare-fun m!6953844 () Bool)

(assert (=> b!6101245 m!6953844))

(assert (=> b!6101251 m!6953010))

(declare-fun m!6953846 () Bool)

(assert (=> d!1912524 m!6953846))

(declare-fun m!6953848 () Bool)

(assert (=> d!1912524 m!6953848))

(declare-fun m!6953850 () Bool)

(assert (=> b!6101248 m!6953850))

(assert (=> b!6101248 m!6953850))

(declare-fun m!6953852 () Bool)

(assert (=> b!6101248 m!6953852))

(declare-fun m!6953854 () Bool)

(assert (=> b!6101249 m!6953854))

(assert (=> b!6100329 d!1912524))

(assert (=> d!1912196 d!1912194))

(declare-fun d!1912526 () Bool)

(assert (=> d!1912526 (= (flatMap!1561 lt!2328953 lambda!332228) (dynLambda!25323 lambda!332228 lt!2328944))))

(assert (=> d!1912526 true))

(declare-fun _$13!2946 () Unit!157367)

(assert (=> d!1912526 (= (choose!45350 lt!2328953 lt!2328944 lambda!332228) _$13!2946)))

(declare-fun b_lambda!232433 () Bool)

(assert (=> (not b_lambda!232433) (not d!1912526)))

(declare-fun bs!1514992 () Bool)

(assert (= bs!1514992 d!1912526))

(assert (=> bs!1514992 m!6952650))

(assert (=> bs!1514992 m!6952976))

(assert (=> d!1912196 d!1912526))

(assert (=> b!6100206 d!1912354))

(declare-fun d!1912528 () Bool)

(assert (=> d!1912528 true))

(assert (=> d!1912528 true))

(declare-fun res!2531440 () Bool)

(assert (=> d!1912528 (= (choose!45353 lambda!332227) res!2531440)))

(assert (=> d!1912230 d!1912528))

(assert (=> d!1912142 d!1912346))

(assert (=> d!1912142 d!1912156))

(declare-fun b!6101255 () Bool)

(declare-fun e!3721161 () (Set Context!10864))

(declare-fun call!504446 () (Set Context!10864))

(declare-fun call!504450 () (Set Context!10864))

(assert (=> b!6101255 (= e!3721161 (set.union call!504446 call!504450))))

(declare-fun call!504451 () List!64443)

(declare-fun bm!504441 () Bool)

(declare-fun c!1095994 () Bool)

(assert (=> bm!504441 (= call!504446 (derivationStepZipperDown!1298 (ite c!1095994 (regOne!32609 (ite c!1095631 (regTwo!32609 r!7292) (ite c!1095632 (regTwo!32608 r!7292) (ite c!1095634 (regOne!32608 r!7292) (reg!16377 r!7292))))) (regOne!32608 (ite c!1095631 (regTwo!32609 r!7292) (ite c!1095632 (regTwo!32608 r!7292) (ite c!1095634 (regOne!32608 r!7292) (reg!16377 r!7292)))))) (ite c!1095994 (ite (or c!1095631 c!1095632) lt!2328949 (Context!10865 call!504253)) (Context!10865 call!504451)) (h!70769 s!2326)))))

(declare-fun b!6101256 () Bool)

(declare-fun c!1095993 () Bool)

(assert (=> b!6101256 (= c!1095993 (is-Star!16048 (ite c!1095631 (regTwo!32609 r!7292) (ite c!1095632 (regTwo!32608 r!7292) (ite c!1095634 (regOne!32608 r!7292) (reg!16377 r!7292))))))))

(declare-fun e!3721163 () (Set Context!10864))

(declare-fun e!3721165 () (Set Context!10864))

(assert (=> b!6101256 (= e!3721163 e!3721165)))

(declare-fun e!3721162 () Bool)

(declare-fun b!6101257 () Bool)

(assert (=> b!6101257 (= e!3721162 (nullable!6043 (regOne!32608 (ite c!1095631 (regTwo!32609 r!7292) (ite c!1095632 (regTwo!32608 r!7292) (ite c!1095634 (regOne!32608 r!7292) (reg!16377 r!7292)))))))))

(declare-fun c!1095996 () Bool)

(declare-fun d!1912530 () Bool)

(assert (=> d!1912530 (= c!1095996 (and (is-ElementMatch!16048 (ite c!1095631 (regTwo!32609 r!7292) (ite c!1095632 (regTwo!32608 r!7292) (ite c!1095634 (regOne!32608 r!7292) (reg!16377 r!7292))))) (= (c!1095611 (ite c!1095631 (regTwo!32609 r!7292) (ite c!1095632 (regTwo!32608 r!7292) (ite c!1095634 (regOne!32608 r!7292) (reg!16377 r!7292))))) (h!70769 s!2326))))))

(declare-fun e!3721160 () (Set Context!10864))

(assert (=> d!1912530 (= (derivationStepZipperDown!1298 (ite c!1095631 (regTwo!32609 r!7292) (ite c!1095632 (regTwo!32608 r!7292) (ite c!1095634 (regOne!32608 r!7292) (reg!16377 r!7292)))) (ite (or c!1095631 c!1095632) lt!2328949 (Context!10865 call!504253)) (h!70769 s!2326)) e!3721160)))

(declare-fun b!6101258 () Bool)

(declare-fun e!3721164 () (Set Context!10864))

(declare-fun call!504447 () (Set Context!10864))

(assert (=> b!6101258 (= e!3721164 (set.union call!504446 call!504447))))

(declare-fun b!6101259 () Bool)

(assert (=> b!6101259 (= e!3721160 e!3721161)))

(assert (=> b!6101259 (= c!1095994 (is-Union!16048 (ite c!1095631 (regTwo!32609 r!7292) (ite c!1095632 (regTwo!32608 r!7292) (ite c!1095634 (regOne!32608 r!7292) (reg!16377 r!7292))))))))

(declare-fun b!6101260 () Bool)

(assert (=> b!6101260 (= e!3721160 (set.insert (ite (or c!1095631 c!1095632) lt!2328949 (Context!10865 call!504253)) (as set.empty (Set Context!10864))))))

(declare-fun b!6101261 () Bool)

(declare-fun c!1095995 () Bool)

(assert (=> b!6101261 (= c!1095995 e!3721162)))

(declare-fun res!2531441 () Bool)

(assert (=> b!6101261 (=> (not res!2531441) (not e!3721162))))

(assert (=> b!6101261 (= res!2531441 (is-Concat!24893 (ite c!1095631 (regTwo!32609 r!7292) (ite c!1095632 (regTwo!32608 r!7292) (ite c!1095634 (regOne!32608 r!7292) (reg!16377 r!7292))))))))

(assert (=> b!6101261 (= e!3721161 e!3721164)))

(declare-fun bm!504442 () Bool)

(declare-fun call!504448 () List!64443)

(assert (=> bm!504442 (= call!504448 call!504451)))

(declare-fun b!6101262 () Bool)

(assert (=> b!6101262 (= e!3721164 e!3721163)))

(declare-fun c!1095997 () Bool)

(assert (=> b!6101262 (= c!1095997 (is-Concat!24893 (ite c!1095631 (regTwo!32609 r!7292) (ite c!1095632 (regTwo!32608 r!7292) (ite c!1095634 (regOne!32608 r!7292) (reg!16377 r!7292))))))))

(declare-fun b!6101263 () Bool)

(declare-fun call!504449 () (Set Context!10864))

(assert (=> b!6101263 (= e!3721165 call!504449)))

(declare-fun b!6101264 () Bool)

(assert (=> b!6101264 (= e!3721163 call!504449)))

(declare-fun bm!504443 () Bool)

(assert (=> bm!504443 (= call!504449 call!504447)))

(declare-fun bm!504444 () Bool)

(assert (=> bm!504444 (= call!504450 (derivationStepZipperDown!1298 (ite c!1095994 (regTwo!32609 (ite c!1095631 (regTwo!32609 r!7292) (ite c!1095632 (regTwo!32608 r!7292) (ite c!1095634 (regOne!32608 r!7292) (reg!16377 r!7292))))) (ite c!1095995 (regTwo!32608 (ite c!1095631 (regTwo!32609 r!7292) (ite c!1095632 (regTwo!32608 r!7292) (ite c!1095634 (regOne!32608 r!7292) (reg!16377 r!7292))))) (ite c!1095997 (regOne!32608 (ite c!1095631 (regTwo!32609 r!7292) (ite c!1095632 (regTwo!32608 r!7292) (ite c!1095634 (regOne!32608 r!7292) (reg!16377 r!7292))))) (reg!16377 (ite c!1095631 (regTwo!32609 r!7292) (ite c!1095632 (regTwo!32608 r!7292) (ite c!1095634 (regOne!32608 r!7292) (reg!16377 r!7292)))))))) (ite (or c!1095994 c!1095995) (ite (or c!1095631 c!1095632) lt!2328949 (Context!10865 call!504253)) (Context!10865 call!504448)) (h!70769 s!2326)))))

(declare-fun bm!504445 () Bool)

(assert (=> bm!504445 (= call!504447 call!504450)))

(declare-fun bm!504446 () Bool)

(assert (=> bm!504446 (= call!504451 ($colon$colon!1927 (exprs!5932 (ite (or c!1095631 c!1095632) lt!2328949 (Context!10865 call!504253))) (ite (or c!1095995 c!1095997) (regTwo!32608 (ite c!1095631 (regTwo!32609 r!7292) (ite c!1095632 (regTwo!32608 r!7292) (ite c!1095634 (regOne!32608 r!7292) (reg!16377 r!7292))))) (ite c!1095631 (regTwo!32609 r!7292) (ite c!1095632 (regTwo!32608 r!7292) (ite c!1095634 (regOne!32608 r!7292) (reg!16377 r!7292)))))))))

(declare-fun b!6101265 () Bool)

(assert (=> b!6101265 (= e!3721165 (as set.empty (Set Context!10864)))))

(assert (= (and d!1912530 c!1095996) b!6101260))

(assert (= (and d!1912530 (not c!1095996)) b!6101259))

(assert (= (and b!6101259 c!1095994) b!6101255))

(assert (= (and b!6101259 (not c!1095994)) b!6101261))

(assert (= (and b!6101261 res!2531441) b!6101257))

(assert (= (and b!6101261 c!1095995) b!6101258))

(assert (= (and b!6101261 (not c!1095995)) b!6101262))

(assert (= (and b!6101262 c!1095997) b!6101264))

(assert (= (and b!6101262 (not c!1095997)) b!6101256))

(assert (= (and b!6101256 c!1095993) b!6101263))

(assert (= (and b!6101256 (not c!1095993)) b!6101265))

(assert (= (or b!6101264 b!6101263) bm!504442))

(assert (= (or b!6101264 b!6101263) bm!504443))

(assert (= (or b!6101258 bm!504442) bm!504446))

(assert (= (or b!6101258 bm!504443) bm!504445))

(assert (= (or b!6101255 bm!504445) bm!504444))

(assert (= (or b!6101255 b!6101258) bm!504441))

(declare-fun m!6953856 () Bool)

(assert (=> b!6101257 m!6953856))

(declare-fun m!6953858 () Bool)

(assert (=> bm!504441 m!6953858))

(declare-fun m!6953860 () Bool)

(assert (=> bm!504444 m!6953860))

(declare-fun m!6953862 () Bool)

(assert (=> b!6101260 m!6953862))

(declare-fun m!6953864 () Bool)

(assert (=> bm!504446 m!6953864))

(assert (=> bm!504249 d!1912530))

(assert (=> d!1912224 d!1912404))

(declare-fun b!6101266 () Bool)

(declare-fun e!3721166 () Bool)

(declare-fun e!3721169 () Bool)

(assert (=> b!6101266 (= e!3721166 e!3721169)))

(declare-fun c!1095998 () Bool)

(assert (=> b!6101266 (= c!1095998 (is-EmptyLang!16048 (regOne!32608 r!7292)))))

(declare-fun b!6101267 () Bool)

(declare-fun res!2531445 () Bool)

(declare-fun e!3721171 () Bool)

(assert (=> b!6101267 (=> res!2531445 e!3721171)))

(assert (=> b!6101267 (= res!2531445 (not (is-ElementMatch!16048 (regOne!32608 r!7292))))))

(assert (=> b!6101267 (= e!3721169 e!3721171)))

(declare-fun b!6101268 () Bool)

(declare-fun res!2531443 () Bool)

(declare-fun e!3721167 () Bool)

(assert (=> b!6101268 (=> res!2531443 e!3721167)))

(assert (=> b!6101268 (= res!2531443 (not (isEmpty!36243 (tail!11706 Nil!64321))))))

(declare-fun bm!504447 () Bool)

(declare-fun call!504452 () Bool)

(assert (=> bm!504447 (= call!504452 (isEmpty!36243 Nil!64321))))

(declare-fun b!6101269 () Bool)

(declare-fun e!3721172 () Bool)

(assert (=> b!6101269 (= e!3721171 e!3721172)))

(declare-fun res!2531449 () Bool)

(assert (=> b!6101269 (=> (not res!2531449) (not e!3721172))))

(declare-fun lt!2329224 () Bool)

(assert (=> b!6101269 (= res!2531449 (not lt!2329224))))

(declare-fun d!1912532 () Bool)

(assert (=> d!1912532 e!3721166))

(declare-fun c!1096000 () Bool)

(assert (=> d!1912532 (= c!1096000 (is-EmptyExpr!16048 (regOne!32608 r!7292)))))

(declare-fun e!3721170 () Bool)

(assert (=> d!1912532 (= lt!2329224 e!3721170)))

(declare-fun c!1095999 () Bool)

(assert (=> d!1912532 (= c!1095999 (isEmpty!36243 Nil!64321))))

(assert (=> d!1912532 (validRegex!7784 (regOne!32608 r!7292))))

(assert (=> d!1912532 (= (matchR!8231 (regOne!32608 r!7292) Nil!64321) lt!2329224)))

(declare-fun b!6101270 () Bool)

(assert (=> b!6101270 (= e!3721169 (not lt!2329224))))

(declare-fun b!6101271 () Bool)

(declare-fun res!2531447 () Bool)

(assert (=> b!6101271 (=> res!2531447 e!3721171)))

(declare-fun e!3721168 () Bool)

(assert (=> b!6101271 (= res!2531447 e!3721168)))

(declare-fun res!2531442 () Bool)

(assert (=> b!6101271 (=> (not res!2531442) (not e!3721168))))

(assert (=> b!6101271 (= res!2531442 lt!2329224)))

(declare-fun b!6101272 () Bool)

(assert (=> b!6101272 (= e!3721170 (nullable!6043 (regOne!32608 r!7292)))))

(declare-fun b!6101273 () Bool)

(assert (=> b!6101273 (= e!3721172 e!3721167)))

(declare-fun res!2531444 () Bool)

(assert (=> b!6101273 (=> res!2531444 e!3721167)))

(assert (=> b!6101273 (= res!2531444 call!504452)))

(declare-fun b!6101274 () Bool)

(assert (=> b!6101274 (= e!3721170 (matchR!8231 (derivativeStep!4771 (regOne!32608 r!7292) (head!12621 Nil!64321)) (tail!11706 Nil!64321)))))

(declare-fun b!6101275 () Bool)

(assert (=> b!6101275 (= e!3721168 (= (head!12621 Nil!64321) (c!1095611 (regOne!32608 r!7292))))))

(declare-fun b!6101276 () Bool)

(assert (=> b!6101276 (= e!3721166 (= lt!2329224 call!504452))))

(declare-fun b!6101277 () Bool)

(declare-fun res!2531448 () Bool)

(assert (=> b!6101277 (=> (not res!2531448) (not e!3721168))))

(assert (=> b!6101277 (= res!2531448 (isEmpty!36243 (tail!11706 Nil!64321)))))

(declare-fun b!6101278 () Bool)

(assert (=> b!6101278 (= e!3721167 (not (= (head!12621 Nil!64321) (c!1095611 (regOne!32608 r!7292)))))))

(declare-fun b!6101279 () Bool)

(declare-fun res!2531446 () Bool)

(assert (=> b!6101279 (=> (not res!2531446) (not e!3721168))))

(assert (=> b!6101279 (= res!2531446 (not call!504452))))

(assert (= (and d!1912532 c!1095999) b!6101272))

(assert (= (and d!1912532 (not c!1095999)) b!6101274))

(assert (= (and d!1912532 c!1096000) b!6101276))

(assert (= (and d!1912532 (not c!1096000)) b!6101266))

(assert (= (and b!6101266 c!1095998) b!6101270))

(assert (= (and b!6101266 (not c!1095998)) b!6101267))

(assert (= (and b!6101267 (not res!2531445)) b!6101271))

(assert (= (and b!6101271 res!2531442) b!6101279))

(assert (= (and b!6101279 res!2531446) b!6101277))

(assert (= (and b!6101277 res!2531448) b!6101275))

(assert (= (and b!6101271 (not res!2531447)) b!6101269))

(assert (= (and b!6101269 res!2531449) b!6101273))

(assert (= (and b!6101273 (not res!2531444)) b!6101268))

(assert (= (and b!6101268 (not res!2531443)) b!6101278))

(assert (= (or b!6101276 b!6101273 b!6101279) bm!504447))

(declare-fun m!6953866 () Bool)

(assert (=> b!6101277 m!6953866))

(assert (=> b!6101277 m!6953866))

(declare-fun m!6953868 () Bool)

(assert (=> b!6101277 m!6953868))

(declare-fun m!6953870 () Bool)

(assert (=> b!6101275 m!6953870))

(declare-fun m!6953872 () Bool)

(assert (=> bm!504447 m!6953872))

(assert (=> b!6101272 m!6952666))

(assert (=> b!6101274 m!6953870))

(assert (=> b!6101274 m!6953870))

(declare-fun m!6953874 () Bool)

(assert (=> b!6101274 m!6953874))

(assert (=> b!6101274 m!6953866))

(assert (=> b!6101274 m!6953874))

(assert (=> b!6101274 m!6953866))

(declare-fun m!6953876 () Bool)

(assert (=> b!6101274 m!6953876))

(assert (=> b!6101268 m!6953866))

(assert (=> b!6101268 m!6953866))

(assert (=> b!6101268 m!6953868))

(assert (=> d!1912532 m!6953872))

(assert (=> d!1912532 m!6953092))

(assert (=> b!6101278 m!6953870))

(assert (=> d!1912224 d!1912532))

(assert (=> d!1912224 d!1912376))

(declare-fun b!6101294 () Bool)

(declare-fun e!3721190 () Bool)

(declare-fun e!3721187 () Bool)

(assert (=> b!6101294 (= e!3721190 e!3721187)))

(declare-fun res!2531461 () Bool)

(assert (=> b!6101294 (=> res!2531461 e!3721187)))

(assert (=> b!6101294 (= res!2531461 (is-Star!16048 (regOne!32608 r!7292)))))

(declare-fun bm!504452 () Bool)

(declare-fun call!504457 () Bool)

(declare-fun c!1096003 () Bool)

(assert (=> bm!504452 (= call!504457 (nullable!6043 (ite c!1096003 (regTwo!32609 (regOne!32608 r!7292)) (regTwo!32608 (regOne!32608 r!7292)))))))

(declare-fun b!6101295 () Bool)

(declare-fun e!3721186 () Bool)

(assert (=> b!6101295 (= e!3721187 e!3721186)))

(assert (=> b!6101295 (= c!1096003 (is-Union!16048 (regOne!32608 r!7292)))))

(declare-fun b!6101296 () Bool)

(declare-fun e!3721188 () Bool)

(assert (=> b!6101296 (= e!3721186 e!3721188)))

(declare-fun res!2531463 () Bool)

(declare-fun call!504458 () Bool)

(assert (=> b!6101296 (= res!2531463 call!504458)))

(assert (=> b!6101296 (=> res!2531463 e!3721188)))

(declare-fun b!6101297 () Bool)

(assert (=> b!6101297 (= e!3721188 call!504457)))

(declare-fun d!1912534 () Bool)

(declare-fun res!2531462 () Bool)

(declare-fun e!3721185 () Bool)

(assert (=> d!1912534 (=> res!2531462 e!3721185)))

(assert (=> d!1912534 (= res!2531462 (is-EmptyExpr!16048 (regOne!32608 r!7292)))))

(assert (=> d!1912534 (= (nullableFct!2007 (regOne!32608 r!7292)) e!3721185)))

(declare-fun b!6101298 () Bool)

(assert (=> b!6101298 (= e!3721185 e!3721190)))

(declare-fun res!2531460 () Bool)

(assert (=> b!6101298 (=> (not res!2531460) (not e!3721190))))

(assert (=> b!6101298 (= res!2531460 (and (not (is-EmptyLang!16048 (regOne!32608 r!7292))) (not (is-ElementMatch!16048 (regOne!32608 r!7292)))))))

(declare-fun b!6101299 () Bool)

(declare-fun e!3721189 () Bool)

(assert (=> b!6101299 (= e!3721189 call!504457)))

(declare-fun bm!504453 () Bool)

(assert (=> bm!504453 (= call!504458 (nullable!6043 (ite c!1096003 (regOne!32609 (regOne!32608 r!7292)) (regOne!32608 (regOne!32608 r!7292)))))))

(declare-fun b!6101300 () Bool)

(assert (=> b!6101300 (= e!3721186 e!3721189)))

(declare-fun res!2531464 () Bool)

(assert (=> b!6101300 (= res!2531464 call!504458)))

(assert (=> b!6101300 (=> (not res!2531464) (not e!3721189))))

(assert (= (and d!1912534 (not res!2531462)) b!6101298))

(assert (= (and b!6101298 res!2531460) b!6101294))

(assert (= (and b!6101294 (not res!2531461)) b!6101295))

(assert (= (and b!6101295 c!1096003) b!6101296))

(assert (= (and b!6101295 (not c!1096003)) b!6101300))

(assert (= (and b!6101296 (not res!2531463)) b!6101297))

(assert (= (and b!6101300 res!2531464) b!6101299))

(assert (= (or b!6101297 b!6101299) bm!504452))

(assert (= (or b!6101296 b!6101300) bm!504453))

(declare-fun m!6953878 () Bool)

(assert (=> bm!504452 m!6953878))

(declare-fun m!6953880 () Bool)

(assert (=> bm!504453 m!6953880))

(assert (=> d!1912188 d!1912534))

(declare-fun bs!1514993 () Bool)

(declare-fun d!1912536 () Bool)

(assert (= bs!1514993 (and d!1912536 d!1912466)))

(declare-fun lambda!332366 () Int)

(assert (=> bs!1514993 (= lambda!332366 lambda!332359)))

(declare-fun bs!1514994 () Bool)

(assert (= bs!1514994 (and d!1912536 d!1912212)))

(assert (=> bs!1514994 (= lambda!332366 lambda!332262)))

(declare-fun bs!1514995 () Bool)

(assert (= bs!1514995 (and d!1912536 d!1912242)))

(assert (=> bs!1514995 (= lambda!332366 lambda!332301)))

(declare-fun bs!1514996 () Bool)

(assert (= bs!1514996 (and d!1912536 d!1912204)))

(assert (=> bs!1514996 (= lambda!332366 lambda!332255)))

(declare-fun bs!1514997 () Bool)

(assert (= bs!1514997 (and d!1912536 d!1912524)))

(assert (=> bs!1514997 (= lambda!332366 lambda!332365)))

(declare-fun bs!1514998 () Bool)

(assert (= bs!1514998 (and d!1912536 b!6101076)))

(assert (=> bs!1514998 (not (= lambda!332366 lambda!332356))))

(declare-fun bs!1514999 () Bool)

(assert (= bs!1514999 (and d!1912536 d!1912516)))

(assert (=> bs!1514999 (= lambda!332366 lambda!332364)))

(declare-fun bs!1515000 () Bool)

(assert (= bs!1515000 (and d!1912536 d!1912500)))

(assert (=> bs!1515000 (= lambda!332366 lambda!332362)))

(declare-fun bs!1515001 () Bool)

(assert (= bs!1515001 (and d!1912536 d!1912514)))

(assert (=> bs!1515001 (= lambda!332366 lambda!332363)))

(declare-fun bs!1515002 () Bool)

(assert (= bs!1515002 (and d!1912536 b!6101078)))

(assert (=> bs!1515002 (not (= lambda!332366 lambda!332357))))

(declare-fun bs!1515003 () Bool)

(assert (= bs!1515003 (and d!1912536 d!1912210)))

(assert (=> bs!1515003 (= lambda!332366 lambda!332259)))

(declare-fun bs!1515004 () Bool)

(assert (= bs!1515004 (and d!1912536 d!1912206)))

(assert (=> bs!1515004 (= lambda!332366 lambda!332256)))

(assert (=> d!1912536 (= (inv!83368 setElem!41205) (forall!15169 (exprs!5932 setElem!41205) lambda!332366))))

(declare-fun bs!1515005 () Bool)

(assert (= bs!1515005 d!1912536))

(declare-fun m!6953882 () Bool)

(assert (=> bs!1515005 m!6953882))

(assert (=> setNonEmpty!41205 d!1912536))

(declare-fun d!1912538 () Bool)

(assert (=> d!1912538 (= (nullable!6043 (regOne!32608 (regTwo!32608 r!7292))) (nullableFct!2007 (regOne!32608 (regTwo!32608 r!7292))))))

(declare-fun bs!1515006 () Bool)

(assert (= bs!1515006 d!1912538))

(declare-fun m!6953884 () Bool)

(assert (=> bs!1515006 m!6953884))

(assert (=> b!6100267 d!1912538))

(declare-fun bs!1515007 () Bool)

(declare-fun b!6101309 () Bool)

(assert (= bs!1515007 (and b!6101309 d!1912232)))

(declare-fun lambda!332367 () Int)

(assert (=> bs!1515007 (not (= lambda!332367 lambda!332286))))

(declare-fun bs!1515008 () Bool)

(assert (= bs!1515008 (and b!6101309 d!1912400)))

(assert (=> bs!1515008 (not (= lambda!332367 lambda!332343))))

(declare-fun bs!1515009 () Bool)

(assert (= bs!1515009 (and b!6101309 d!1912236)))

(assert (=> bs!1515009 (not (= lambda!332367 lambda!332294))))

(declare-fun bs!1515010 () Bool)

(assert (= bs!1515010 (and b!6101309 b!6100858)))

(assert (=> bs!1515010 (= (and (= (reg!16377 (regOne!32609 r!7292)) (reg!16377 (regTwo!32609 r!7292))) (= (regOne!32609 r!7292) (regTwo!32609 r!7292))) (= lambda!332367 lambda!332330))))

(assert (=> bs!1515008 (not (= lambda!332367 lambda!332344))))

(declare-fun bs!1515011 () Bool)

(assert (= bs!1515011 (and b!6101309 b!6100066)))

(assert (=> bs!1515011 (not (= lambda!332367 lambda!332252))))

(declare-fun bs!1515012 () Bool)

(assert (= bs!1515012 (and b!6101309 b!6100074)))

(assert (=> bs!1515012 (= (and (= (reg!16377 (regOne!32609 r!7292)) (reg!16377 r!7292)) (= (regOne!32609 r!7292) r!7292)) (= lambda!332367 lambda!332251))))

(declare-fun bs!1515013 () Bool)

(assert (= bs!1515013 (and b!6101309 b!6099858)))

(assert (=> bs!1515013 (not (= lambda!332367 lambda!332227))))

(assert (=> bs!1515009 (not (= lambda!332367 lambda!332297))))

(declare-fun bs!1515014 () Bool)

(assert (= bs!1515014 (and b!6101309 b!6100850)))

(assert (=> bs!1515014 (not (= lambda!332367 lambda!332331))))

(assert (=> bs!1515013 (not (= lambda!332367 lambda!332226))))

(declare-fun bs!1515015 () Bool)

(assert (= bs!1515015 (and b!6101309 d!1912380)))

(assert (=> bs!1515015 (not (= lambda!332367 lambda!332337))))

(assert (=> b!6101309 true))

(assert (=> b!6101309 true))

(declare-fun bs!1515016 () Bool)

(declare-fun b!6101301 () Bool)

(assert (= bs!1515016 (and b!6101301 d!1912232)))

(declare-fun lambda!332368 () Int)

(assert (=> bs!1515016 (not (= lambda!332368 lambda!332286))))

(declare-fun bs!1515017 () Bool)

(assert (= bs!1515017 (and b!6101301 b!6101309)))

(assert (=> bs!1515017 (not (= lambda!332368 lambda!332367))))

(declare-fun bs!1515018 () Bool)

(assert (= bs!1515018 (and b!6101301 d!1912400)))

(assert (=> bs!1515018 (not (= lambda!332368 lambda!332343))))

(declare-fun bs!1515019 () Bool)

(assert (= bs!1515019 (and b!6101301 d!1912236)))

(assert (=> bs!1515019 (not (= lambda!332368 lambda!332294))))

(declare-fun bs!1515020 () Bool)

(assert (= bs!1515020 (and b!6101301 b!6100858)))

(assert (=> bs!1515020 (not (= lambda!332368 lambda!332330))))

(assert (=> bs!1515018 (= (and (= (regOne!32608 (regOne!32609 r!7292)) (regOne!32608 r!7292)) (= (regTwo!32608 (regOne!32609 r!7292)) (regTwo!32608 r!7292))) (= lambda!332368 lambda!332344))))

(declare-fun bs!1515021 () Bool)

(assert (= bs!1515021 (and b!6101301 b!6100066)))

(assert (=> bs!1515021 (= (and (= (regOne!32608 (regOne!32609 r!7292)) (regOne!32608 r!7292)) (= (regTwo!32608 (regOne!32609 r!7292)) (regTwo!32608 r!7292))) (= lambda!332368 lambda!332252))))

(declare-fun bs!1515022 () Bool)

(assert (= bs!1515022 (and b!6101301 b!6100074)))

(assert (=> bs!1515022 (not (= lambda!332368 lambda!332251))))

(declare-fun bs!1515023 () Bool)

(assert (= bs!1515023 (and b!6101301 b!6099858)))

(assert (=> bs!1515023 (= (and (= (regOne!32608 (regOne!32609 r!7292)) (regOne!32608 r!7292)) (= (regTwo!32608 (regOne!32609 r!7292)) (regTwo!32608 r!7292))) (= lambda!332368 lambda!332227))))

(assert (=> bs!1515019 (= (and (= (regOne!32608 (regOne!32609 r!7292)) (regOne!32608 r!7292)) (= (regTwo!32608 (regOne!32609 r!7292)) (regTwo!32608 r!7292))) (= lambda!332368 lambda!332297))))

(declare-fun bs!1515024 () Bool)

(assert (= bs!1515024 (and b!6101301 b!6100850)))

(assert (=> bs!1515024 (= (and (= (regOne!32608 (regOne!32609 r!7292)) (regOne!32608 (regTwo!32609 r!7292))) (= (regTwo!32608 (regOne!32609 r!7292)) (regTwo!32608 (regTwo!32609 r!7292)))) (= lambda!332368 lambda!332331))))

(assert (=> bs!1515023 (not (= lambda!332368 lambda!332226))))

(declare-fun bs!1515025 () Bool)

(assert (= bs!1515025 (and b!6101301 d!1912380)))

(assert (=> bs!1515025 (not (= lambda!332368 lambda!332337))))

(assert (=> b!6101301 true))

(assert (=> b!6101301 true))

(declare-fun e!3721192 () Bool)

(declare-fun call!504459 () Bool)

(assert (=> b!6101301 (= e!3721192 call!504459)))

(declare-fun bm!504454 () Bool)

(declare-fun call!504460 () Bool)

(assert (=> bm!504454 (= call!504460 (isEmpty!36243 s!2326))))

(declare-fun b!6101302 () Bool)

(declare-fun e!3721191 () Bool)

(assert (=> b!6101302 (= e!3721191 (= s!2326 (Cons!64321 (c!1095611 (regOne!32609 r!7292)) Nil!64321)))))

(declare-fun b!6101303 () Bool)

(declare-fun e!3721196 () Bool)

(assert (=> b!6101303 (= e!3721196 call!504460)))

(declare-fun b!6101305 () Bool)

(declare-fun c!1096005 () Bool)

(assert (=> b!6101305 (= c!1096005 (is-ElementMatch!16048 (regOne!32609 r!7292)))))

(declare-fun e!3721195 () Bool)

(assert (=> b!6101305 (= e!3721195 e!3721191)))

(declare-fun b!6101306 () Bool)

(assert (=> b!6101306 (= e!3721196 e!3721195)))

(declare-fun res!2531465 () Bool)

(assert (=> b!6101306 (= res!2531465 (not (is-EmptyLang!16048 (regOne!32609 r!7292))))))

(assert (=> b!6101306 (=> (not res!2531465) (not e!3721195))))

(declare-fun b!6101307 () Bool)

(declare-fun e!3721193 () Bool)

(assert (=> b!6101307 (= e!3721193 e!3721192)))

(declare-fun c!1096004 () Bool)

(assert (=> b!6101307 (= c!1096004 (is-Star!16048 (regOne!32609 r!7292)))))

(declare-fun b!6101308 () Bool)

(declare-fun res!2531467 () Bool)

(declare-fun e!3721194 () Bool)

(assert (=> b!6101308 (=> res!2531467 e!3721194)))

(assert (=> b!6101308 (= res!2531467 call!504460)))

(assert (=> b!6101308 (= e!3721192 e!3721194)))

(assert (=> b!6101309 (= e!3721194 call!504459)))

(declare-fun b!6101310 () Bool)

(declare-fun e!3721197 () Bool)

(assert (=> b!6101310 (= e!3721193 e!3721197)))

(declare-fun res!2531466 () Bool)

(assert (=> b!6101310 (= res!2531466 (matchRSpec!3149 (regOne!32609 (regOne!32609 r!7292)) s!2326))))

(assert (=> b!6101310 (=> res!2531466 e!3721197)))

(declare-fun d!1912540 () Bool)

(declare-fun c!1096007 () Bool)

(assert (=> d!1912540 (= c!1096007 (is-EmptyExpr!16048 (regOne!32609 r!7292)))))

(assert (=> d!1912540 (= (matchRSpec!3149 (regOne!32609 r!7292) s!2326) e!3721196)))

(declare-fun b!6101304 () Bool)

(declare-fun c!1096006 () Bool)

(assert (=> b!6101304 (= c!1096006 (is-Union!16048 (regOne!32609 r!7292)))))

(assert (=> b!6101304 (= e!3721191 e!3721193)))

(declare-fun b!6101311 () Bool)

(assert (=> b!6101311 (= e!3721197 (matchRSpec!3149 (regTwo!32609 (regOne!32609 r!7292)) s!2326))))

(declare-fun bm!504455 () Bool)

(assert (=> bm!504455 (= call!504459 (Exists!3118 (ite c!1096004 lambda!332367 lambda!332368)))))

(assert (= (and d!1912540 c!1096007) b!6101303))

(assert (= (and d!1912540 (not c!1096007)) b!6101306))

(assert (= (and b!6101306 res!2531465) b!6101305))

(assert (= (and b!6101305 c!1096005) b!6101302))

(assert (= (and b!6101305 (not c!1096005)) b!6101304))

(assert (= (and b!6101304 c!1096006) b!6101310))

(assert (= (and b!6101304 (not c!1096006)) b!6101307))

(assert (= (and b!6101310 (not res!2531466)) b!6101311))

(assert (= (and b!6101307 c!1096004) b!6101308))

(assert (= (and b!6101307 (not c!1096004)) b!6101301))

(assert (= (and b!6101308 (not res!2531467)) b!6101309))

(assert (= (or b!6101309 b!6101301) bm!504455))

(assert (= (or b!6101303 b!6101308) bm!504454))

(assert (=> bm!504454 m!6952840))

(declare-fun m!6953886 () Bool)

(assert (=> b!6101310 m!6953886))

(declare-fun m!6953888 () Bool)

(assert (=> b!6101311 m!6953888))

(declare-fun m!6953890 () Bool)

(assert (=> bm!504455 m!6953890))

(assert (=> b!6100075 d!1912540))

(declare-fun d!1912542 () Bool)

(declare-fun res!2531468 () Bool)

(declare-fun e!3721198 () Bool)

(assert (=> d!1912542 (=> res!2531468 e!3721198)))

(assert (=> d!1912542 (= res!2531468 (is-Nil!64320 lt!2328937))))

(assert (=> d!1912542 (= (forall!15170 lt!2328937 lambda!332271) e!3721198)))

(declare-fun b!6101312 () Bool)

(declare-fun e!3721199 () Bool)

(assert (=> b!6101312 (= e!3721198 e!3721199)))

(declare-fun res!2531469 () Bool)

(assert (=> b!6101312 (=> (not res!2531469) (not e!3721199))))

(assert (=> b!6101312 (= res!2531469 (dynLambda!25328 lambda!332271 (h!70768 lt!2328937)))))

(declare-fun b!6101313 () Bool)

(assert (=> b!6101313 (= e!3721199 (forall!15170 (t!377893 lt!2328937) lambda!332271))))

(assert (= (and d!1912542 (not res!2531468)) b!6101312))

(assert (= (and b!6101312 res!2531469) b!6101313))

(declare-fun b_lambda!232435 () Bool)

(assert (=> (not b_lambda!232435) (not b!6101312)))

(declare-fun m!6953892 () Bool)

(assert (=> b!6101312 m!6953892))

(declare-fun m!6953894 () Bool)

(assert (=> b!6101313 m!6953894))

(assert (=> b!6100365 d!1912542))

(declare-fun d!1912544 () Bool)

(assert (=> d!1912544 true))

(declare-fun setRes!41213 () Bool)

(assert (=> d!1912544 setRes!41213))

(declare-fun condSetEmpty!41213 () Bool)

(declare-fun res!2531470 () (Set Context!10864))

(assert (=> d!1912544 (= condSetEmpty!41213 (= res!2531470 (as set.empty (Set Context!10864))))))

(assert (=> d!1912544 (= (choose!45349 z!1189 lambda!332228) res!2531470)))

(declare-fun setIsEmpty!41213 () Bool)

(assert (=> setIsEmpty!41213 setRes!41213))

(declare-fun setNonEmpty!41213 () Bool)

(declare-fun e!3721200 () Bool)

(declare-fun tp!1703376 () Bool)

(declare-fun setElem!41213 () Context!10864)

(assert (=> setNonEmpty!41213 (= setRes!41213 (and tp!1703376 (inv!83368 setElem!41213) e!3721200))))

(declare-fun setRest!41213 () (Set Context!10864))

(assert (=> setNonEmpty!41213 (= res!2531470 (set.union (set.insert setElem!41213 (as set.empty (Set Context!10864))) setRest!41213))))

(declare-fun b!6101314 () Bool)

(declare-fun tp!1703375 () Bool)

(assert (=> b!6101314 (= e!3721200 tp!1703375)))

(assert (= (and d!1912544 condSetEmpty!41213) setIsEmpty!41213))

(assert (= (and d!1912544 (not condSetEmpty!41213)) setNonEmpty!41213))

(assert (= setNonEmpty!41213 b!6101314))

(declare-fun m!6953896 () Bool)

(assert (=> setNonEmpty!41213 m!6953896))

(assert (=> d!1912246 d!1912544))

(declare-fun d!1912546 () Bool)

(assert (=> d!1912546 (= (nullable!6043 (reg!16377 r!7292)) (nullableFct!2007 (reg!16377 r!7292)))))

(declare-fun bs!1515026 () Bool)

(assert (= bs!1515026 d!1912546))

(declare-fun m!6953898 () Bool)

(assert (=> bs!1515026 m!6953898))

(assert (=> b!6100177 d!1912546))

(declare-fun b!6101315 () Bool)

(declare-fun e!3721201 () Bool)

(declare-fun e!3721204 () Bool)

(assert (=> b!6101315 (= e!3721201 e!3721204)))

(declare-fun c!1096008 () Bool)

(assert (=> b!6101315 (= c!1096008 (is-EmptyLang!16048 (derivativeStep!4771 lt!2328943 (head!12621 s!2326))))))

(declare-fun b!6101316 () Bool)

(declare-fun res!2531474 () Bool)

(declare-fun e!3721206 () Bool)

(assert (=> b!6101316 (=> res!2531474 e!3721206)))

(assert (=> b!6101316 (= res!2531474 (not (is-ElementMatch!16048 (derivativeStep!4771 lt!2328943 (head!12621 s!2326)))))))

(assert (=> b!6101316 (= e!3721204 e!3721206)))

(declare-fun b!6101317 () Bool)

(declare-fun res!2531472 () Bool)

(declare-fun e!3721202 () Bool)

(assert (=> b!6101317 (=> res!2531472 e!3721202)))

(assert (=> b!6101317 (= res!2531472 (not (isEmpty!36243 (tail!11706 (tail!11706 s!2326)))))))

(declare-fun bm!504456 () Bool)

(declare-fun call!504461 () Bool)

(assert (=> bm!504456 (= call!504461 (isEmpty!36243 (tail!11706 s!2326)))))

(declare-fun b!6101318 () Bool)

(declare-fun e!3721207 () Bool)

(assert (=> b!6101318 (= e!3721206 e!3721207)))

(declare-fun res!2531478 () Bool)

(assert (=> b!6101318 (=> (not res!2531478) (not e!3721207))))

(declare-fun lt!2329225 () Bool)

(assert (=> b!6101318 (= res!2531478 (not lt!2329225))))

(declare-fun d!1912548 () Bool)

(assert (=> d!1912548 e!3721201))

(declare-fun c!1096010 () Bool)

(assert (=> d!1912548 (= c!1096010 (is-EmptyExpr!16048 (derivativeStep!4771 lt!2328943 (head!12621 s!2326))))))

(declare-fun e!3721205 () Bool)

(assert (=> d!1912548 (= lt!2329225 e!3721205)))

(declare-fun c!1096009 () Bool)

(assert (=> d!1912548 (= c!1096009 (isEmpty!36243 (tail!11706 s!2326)))))

(assert (=> d!1912548 (validRegex!7784 (derivativeStep!4771 lt!2328943 (head!12621 s!2326)))))

(assert (=> d!1912548 (= (matchR!8231 (derivativeStep!4771 lt!2328943 (head!12621 s!2326)) (tail!11706 s!2326)) lt!2329225)))

(declare-fun b!6101319 () Bool)

(assert (=> b!6101319 (= e!3721204 (not lt!2329225))))

(declare-fun b!6101320 () Bool)

(declare-fun res!2531476 () Bool)

(assert (=> b!6101320 (=> res!2531476 e!3721206)))

(declare-fun e!3721203 () Bool)

(assert (=> b!6101320 (= res!2531476 e!3721203)))

(declare-fun res!2531471 () Bool)

(assert (=> b!6101320 (=> (not res!2531471) (not e!3721203))))

(assert (=> b!6101320 (= res!2531471 lt!2329225)))

(declare-fun b!6101321 () Bool)

(assert (=> b!6101321 (= e!3721205 (nullable!6043 (derivativeStep!4771 lt!2328943 (head!12621 s!2326))))))

(declare-fun b!6101322 () Bool)

(assert (=> b!6101322 (= e!3721207 e!3721202)))

(declare-fun res!2531473 () Bool)

(assert (=> b!6101322 (=> res!2531473 e!3721202)))

(assert (=> b!6101322 (= res!2531473 call!504461)))

(declare-fun b!6101323 () Bool)

(assert (=> b!6101323 (= e!3721205 (matchR!8231 (derivativeStep!4771 (derivativeStep!4771 lt!2328943 (head!12621 s!2326)) (head!12621 (tail!11706 s!2326))) (tail!11706 (tail!11706 s!2326))))))

(declare-fun b!6101324 () Bool)

(assert (=> b!6101324 (= e!3721203 (= (head!12621 (tail!11706 s!2326)) (c!1095611 (derivativeStep!4771 lt!2328943 (head!12621 s!2326)))))))

(declare-fun b!6101325 () Bool)

(assert (=> b!6101325 (= e!3721201 (= lt!2329225 call!504461))))

(declare-fun b!6101326 () Bool)

(declare-fun res!2531477 () Bool)

(assert (=> b!6101326 (=> (not res!2531477) (not e!3721203))))

(assert (=> b!6101326 (= res!2531477 (isEmpty!36243 (tail!11706 (tail!11706 s!2326))))))

(declare-fun b!6101327 () Bool)

(assert (=> b!6101327 (= e!3721202 (not (= (head!12621 (tail!11706 s!2326)) (c!1095611 (derivativeStep!4771 lt!2328943 (head!12621 s!2326))))))))

(declare-fun b!6101328 () Bool)

(declare-fun res!2531475 () Bool)

(assert (=> b!6101328 (=> (not res!2531475) (not e!3721203))))

(assert (=> b!6101328 (= res!2531475 (not call!504461))))

(assert (= (and d!1912548 c!1096009) b!6101321))

(assert (= (and d!1912548 (not c!1096009)) b!6101323))

(assert (= (and d!1912548 c!1096010) b!6101325))

(assert (= (and d!1912548 (not c!1096010)) b!6101315))

(assert (= (and b!6101315 c!1096008) b!6101319))

(assert (= (and b!6101315 (not c!1096008)) b!6101316))

(assert (= (and b!6101316 (not res!2531474)) b!6101320))

(assert (= (and b!6101320 res!2531471) b!6101328))

(assert (= (and b!6101328 res!2531475) b!6101326))

(assert (= (and b!6101326 res!2531477) b!6101324))

(assert (= (and b!6101320 (not res!2531476)) b!6101318))

(assert (= (and b!6101318 res!2531478) b!6101322))

(assert (= (and b!6101322 (not res!2531473)) b!6101317))

(assert (= (and b!6101317 (not res!2531472)) b!6101327))

(assert (= (or b!6101325 b!6101322 b!6101328) bm!504456))

(assert (=> b!6101326 m!6952854))

(assert (=> b!6101326 m!6953430))

(assert (=> b!6101326 m!6953430))

(assert (=> b!6101326 m!6953432))

(assert (=> b!6101324 m!6952854))

(assert (=> b!6101324 m!6953434))

(assert (=> bm!504456 m!6952854))

(assert (=> bm!504456 m!6952856))

(assert (=> b!6101321 m!6952926))

(declare-fun m!6953900 () Bool)

(assert (=> b!6101321 m!6953900))

(assert (=> b!6101323 m!6952854))

(assert (=> b!6101323 m!6953434))

(assert (=> b!6101323 m!6952926))

(assert (=> b!6101323 m!6953434))

(declare-fun m!6953902 () Bool)

(assert (=> b!6101323 m!6953902))

(assert (=> b!6101323 m!6952854))

(assert (=> b!6101323 m!6953430))

(assert (=> b!6101323 m!6953902))

(assert (=> b!6101323 m!6953430))

(declare-fun m!6953904 () Bool)

(assert (=> b!6101323 m!6953904))

(assert (=> b!6101317 m!6952854))

(assert (=> b!6101317 m!6953430))

(assert (=> b!6101317 m!6953430))

(assert (=> b!6101317 m!6953432))

(assert (=> d!1912548 m!6952854))

(assert (=> d!1912548 m!6952856))

(assert (=> d!1912548 m!6952926))

(declare-fun m!6953906 () Bool)

(assert (=> d!1912548 m!6953906))

(assert (=> b!6101327 m!6952854))

(assert (=> b!6101327 m!6953434))

(assert (=> b!6100230 d!1912548))

(declare-fun b!6101329 () Bool)

(declare-fun c!1096011 () Bool)

(assert (=> b!6101329 (= c!1096011 (is-Union!16048 lt!2328943))))

(declare-fun e!3721210 () Regex!16048)

(declare-fun e!3721208 () Regex!16048)

(assert (=> b!6101329 (= e!3721210 e!3721208)))

(declare-fun bm!504457 () Bool)

(declare-fun call!504462 () Regex!16048)

(declare-fun call!504465 () Regex!16048)

(assert (=> bm!504457 (= call!504462 call!504465)))

(declare-fun b!6101330 () Bool)

(declare-fun e!3721212 () Regex!16048)

(declare-fun call!504463 () Regex!16048)

(assert (=> b!6101330 (= e!3721212 (Union!16048 (Concat!24893 call!504463 (regTwo!32608 lt!2328943)) EmptyLang!16048))))

(declare-fun b!6101332 () Bool)

(declare-fun call!504464 () Regex!16048)

(assert (=> b!6101332 (= e!3721208 (Union!16048 call!504464 call!504465))))

(declare-fun bm!504458 () Bool)

(assert (=> bm!504458 (= call!504463 call!504464)))

(declare-fun b!6101333 () Bool)

(declare-fun e!3721211 () Regex!16048)

(assert (=> b!6101333 (= e!3721208 e!3721211)))

(declare-fun c!1096014 () Bool)

(assert (=> b!6101333 (= c!1096014 (is-Star!16048 lt!2328943))))

(declare-fun b!6101334 () Bool)

(declare-fun e!3721209 () Regex!16048)

(assert (=> b!6101334 (= e!3721209 EmptyLang!16048)))

(declare-fun bm!504459 () Bool)

(assert (=> bm!504459 (= call!504465 (derivativeStep!4771 (ite c!1096011 (regTwo!32609 lt!2328943) (ite c!1096014 (reg!16377 lt!2328943) (regOne!32608 lt!2328943))) (head!12621 s!2326)))))

(declare-fun bm!504460 () Bool)

(declare-fun c!1096012 () Bool)

(assert (=> bm!504460 (= call!504464 (derivativeStep!4771 (ite c!1096011 (regOne!32609 lt!2328943) (ite c!1096012 (regTwo!32608 lt!2328943) (regOne!32608 lt!2328943))) (head!12621 s!2326)))))

(declare-fun b!6101335 () Bool)

(assert (=> b!6101335 (= e!3721212 (Union!16048 (Concat!24893 call!504462 (regTwo!32608 lt!2328943)) call!504463))))

(declare-fun b!6101336 () Bool)

(assert (=> b!6101336 (= e!3721210 (ite (= (head!12621 s!2326) (c!1095611 lt!2328943)) EmptyExpr!16048 EmptyLang!16048))))

(declare-fun b!6101337 () Bool)

(assert (=> b!6101337 (= e!3721211 (Concat!24893 call!504462 lt!2328943))))

(declare-fun b!6101338 () Bool)

(assert (=> b!6101338 (= e!3721209 e!3721210)))

(declare-fun c!1096015 () Bool)

(assert (=> b!6101338 (= c!1096015 (is-ElementMatch!16048 lt!2328943))))

(declare-fun d!1912550 () Bool)

(declare-fun lt!2329226 () Regex!16048)

(assert (=> d!1912550 (validRegex!7784 lt!2329226)))

(assert (=> d!1912550 (= lt!2329226 e!3721209)))

(declare-fun c!1096013 () Bool)

(assert (=> d!1912550 (= c!1096013 (or (is-EmptyExpr!16048 lt!2328943) (is-EmptyLang!16048 lt!2328943)))))

(assert (=> d!1912550 (validRegex!7784 lt!2328943)))

(assert (=> d!1912550 (= (derivativeStep!4771 lt!2328943 (head!12621 s!2326)) lt!2329226)))

(declare-fun b!6101331 () Bool)

(assert (=> b!6101331 (= c!1096012 (nullable!6043 (regOne!32608 lt!2328943)))))

(assert (=> b!6101331 (= e!3721211 e!3721212)))

(assert (= (and d!1912550 c!1096013) b!6101334))

(assert (= (and d!1912550 (not c!1096013)) b!6101338))

(assert (= (and b!6101338 c!1096015) b!6101336))

(assert (= (and b!6101338 (not c!1096015)) b!6101329))

(assert (= (and b!6101329 c!1096011) b!6101332))

(assert (= (and b!6101329 (not c!1096011)) b!6101333))

(assert (= (and b!6101333 c!1096014) b!6101337))

(assert (= (and b!6101333 (not c!1096014)) b!6101331))

(assert (= (and b!6101331 c!1096012) b!6101335))

(assert (= (and b!6101331 (not c!1096012)) b!6101330))

(assert (= (or b!6101335 b!6101330) bm!504458))

(assert (= (or b!6101337 b!6101335) bm!504457))

(assert (= (or b!6101332 bm!504457) bm!504459))

(assert (= (or b!6101332 bm!504458) bm!504460))

(assert (=> bm!504459 m!6952858))

(declare-fun m!6953908 () Bool)

(assert (=> bm!504459 m!6953908))

(assert (=> bm!504460 m!6952858))

(declare-fun m!6953910 () Bool)

(assert (=> bm!504460 m!6953910))

(declare-fun m!6953912 () Bool)

(assert (=> d!1912550 m!6953912))

(assert (=> d!1912550 m!6952930))

(declare-fun m!6953914 () Bool)

(assert (=> b!6101331 m!6953914))

(assert (=> b!6100230 d!1912550))

(assert (=> b!6100230 d!1912354))

(assert (=> b!6100230 d!1912330))

(declare-fun d!1912552 () Bool)

(assert (=> d!1912552 (= (isEmpty!36239 (exprs!5932 (h!70768 zl!343))) (is-Nil!64319 (exprs!5932 (h!70768 zl!343))))))

(assert (=> b!6100483 d!1912552))

(assert (=> bm!504285 d!1912346))

(assert (=> bs!1514793 d!1912186))

(declare-fun b!6101339 () Bool)

(declare-fun e!3721214 () (Set Context!10864))

(declare-fun call!504466 () (Set Context!10864))

(declare-fun call!504470 () (Set Context!10864))

(assert (=> b!6101339 (= e!3721214 (set.union call!504466 call!504470))))

(declare-fun call!504471 () List!64443)

(declare-fun c!1096017 () Bool)

(declare-fun bm!504461 () Bool)

(assert (=> bm!504461 (= call!504466 (derivationStepZipperDown!1298 (ite c!1096017 (regOne!32609 (h!70767 (exprs!5932 lt!2328944))) (regOne!32608 (h!70767 (exprs!5932 lt!2328944)))) (ite c!1096017 (Context!10865 (t!377892 (exprs!5932 lt!2328944))) (Context!10865 call!504471)) (h!70769 s!2326)))))

(declare-fun b!6101340 () Bool)

(declare-fun c!1096016 () Bool)

(assert (=> b!6101340 (= c!1096016 (is-Star!16048 (h!70767 (exprs!5932 lt!2328944))))))

(declare-fun e!3721216 () (Set Context!10864))

(declare-fun e!3721218 () (Set Context!10864))

(assert (=> b!6101340 (= e!3721216 e!3721218)))

(declare-fun b!6101341 () Bool)

(declare-fun e!3721215 () Bool)

(assert (=> b!6101341 (= e!3721215 (nullable!6043 (regOne!32608 (h!70767 (exprs!5932 lt!2328944)))))))

(declare-fun d!1912554 () Bool)

(declare-fun c!1096019 () Bool)

(assert (=> d!1912554 (= c!1096019 (and (is-ElementMatch!16048 (h!70767 (exprs!5932 lt!2328944))) (= (c!1095611 (h!70767 (exprs!5932 lt!2328944))) (h!70769 s!2326))))))

(declare-fun e!3721213 () (Set Context!10864))

(assert (=> d!1912554 (= (derivationStepZipperDown!1298 (h!70767 (exprs!5932 lt!2328944)) (Context!10865 (t!377892 (exprs!5932 lt!2328944))) (h!70769 s!2326)) e!3721213)))

(declare-fun b!6101342 () Bool)

(declare-fun e!3721217 () (Set Context!10864))

(declare-fun call!504467 () (Set Context!10864))

(assert (=> b!6101342 (= e!3721217 (set.union call!504466 call!504467))))

(declare-fun b!6101343 () Bool)

(assert (=> b!6101343 (= e!3721213 e!3721214)))

(assert (=> b!6101343 (= c!1096017 (is-Union!16048 (h!70767 (exprs!5932 lt!2328944))))))

(declare-fun b!6101344 () Bool)

(assert (=> b!6101344 (= e!3721213 (set.insert (Context!10865 (t!377892 (exprs!5932 lt!2328944))) (as set.empty (Set Context!10864))))))

(declare-fun b!6101345 () Bool)

(declare-fun c!1096018 () Bool)

(assert (=> b!6101345 (= c!1096018 e!3721215)))

(declare-fun res!2531479 () Bool)

(assert (=> b!6101345 (=> (not res!2531479) (not e!3721215))))

(assert (=> b!6101345 (= res!2531479 (is-Concat!24893 (h!70767 (exprs!5932 lt!2328944))))))

(assert (=> b!6101345 (= e!3721214 e!3721217)))

(declare-fun bm!504462 () Bool)

(declare-fun call!504468 () List!64443)

(assert (=> bm!504462 (= call!504468 call!504471)))

(declare-fun b!6101346 () Bool)

(assert (=> b!6101346 (= e!3721217 e!3721216)))

(declare-fun c!1096020 () Bool)

(assert (=> b!6101346 (= c!1096020 (is-Concat!24893 (h!70767 (exprs!5932 lt!2328944))))))

(declare-fun b!6101347 () Bool)

(declare-fun call!504469 () (Set Context!10864))

(assert (=> b!6101347 (= e!3721218 call!504469)))

(declare-fun b!6101348 () Bool)

(assert (=> b!6101348 (= e!3721216 call!504469)))

(declare-fun bm!504463 () Bool)

(assert (=> bm!504463 (= call!504469 call!504467)))

(declare-fun bm!504464 () Bool)

(assert (=> bm!504464 (= call!504470 (derivationStepZipperDown!1298 (ite c!1096017 (regTwo!32609 (h!70767 (exprs!5932 lt!2328944))) (ite c!1096018 (regTwo!32608 (h!70767 (exprs!5932 lt!2328944))) (ite c!1096020 (regOne!32608 (h!70767 (exprs!5932 lt!2328944))) (reg!16377 (h!70767 (exprs!5932 lt!2328944)))))) (ite (or c!1096017 c!1096018) (Context!10865 (t!377892 (exprs!5932 lt!2328944))) (Context!10865 call!504468)) (h!70769 s!2326)))))

(declare-fun bm!504465 () Bool)

(assert (=> bm!504465 (= call!504467 call!504470)))

(declare-fun bm!504466 () Bool)

(assert (=> bm!504466 (= call!504471 ($colon$colon!1927 (exprs!5932 (Context!10865 (t!377892 (exprs!5932 lt!2328944)))) (ite (or c!1096018 c!1096020) (regTwo!32608 (h!70767 (exprs!5932 lt!2328944))) (h!70767 (exprs!5932 lt!2328944)))))))

(declare-fun b!6101349 () Bool)

(assert (=> b!6101349 (= e!3721218 (as set.empty (Set Context!10864)))))

(assert (= (and d!1912554 c!1096019) b!6101344))

(assert (= (and d!1912554 (not c!1096019)) b!6101343))

(assert (= (and b!6101343 c!1096017) b!6101339))

(assert (= (and b!6101343 (not c!1096017)) b!6101345))

(assert (= (and b!6101345 res!2531479) b!6101341))

(assert (= (and b!6101345 c!1096018) b!6101342))

(assert (= (and b!6101345 (not c!1096018)) b!6101346))

(assert (= (and b!6101346 c!1096020) b!6101348))

(assert (= (and b!6101346 (not c!1096020)) b!6101340))

(assert (= (and b!6101340 c!1096016) b!6101347))

(assert (= (and b!6101340 (not c!1096016)) b!6101349))

(assert (= (or b!6101348 b!6101347) bm!504462))

(assert (= (or b!6101348 b!6101347) bm!504463))

(assert (= (or b!6101342 bm!504462) bm!504466))

(assert (= (or b!6101342 bm!504463) bm!504465))

(assert (= (or b!6101339 bm!504465) bm!504464))

(assert (= (or b!6101339 b!6101342) bm!504461))

(declare-fun m!6953916 () Bool)

(assert (=> b!6101341 m!6953916))

(declare-fun m!6953918 () Bool)

(assert (=> bm!504461 m!6953918))

(declare-fun m!6953920 () Bool)

(assert (=> bm!504464 m!6953920))

(declare-fun m!6953922 () Bool)

(assert (=> b!6101344 m!6953922))

(declare-fun m!6953924 () Bool)

(assert (=> bm!504466 m!6953924))

(assert (=> bm!504291 d!1912554))

(declare-fun b!6101350 () Bool)

(declare-fun e!3721220 () (Set Context!10864))

(declare-fun call!504472 () (Set Context!10864))

(declare-fun call!504476 () (Set Context!10864))

(assert (=> b!6101350 (= e!3721220 (set.union call!504472 call!504476))))

(declare-fun bm!504467 () Bool)

(declare-fun c!1096022 () Bool)

(declare-fun call!504477 () List!64443)

(assert (=> bm!504467 (= call!504472 (derivationStepZipperDown!1298 (ite c!1096022 (regOne!32609 (h!70767 (exprs!5932 (h!70768 zl!343)))) (regOne!32608 (h!70767 (exprs!5932 (h!70768 zl!343))))) (ite c!1096022 (Context!10865 (t!377892 (exprs!5932 (h!70768 zl!343)))) (Context!10865 call!504477)) (h!70769 s!2326)))))

(declare-fun b!6101351 () Bool)

(declare-fun c!1096021 () Bool)

(assert (=> b!6101351 (= c!1096021 (is-Star!16048 (h!70767 (exprs!5932 (h!70768 zl!343)))))))

(declare-fun e!3721222 () (Set Context!10864))

(declare-fun e!3721224 () (Set Context!10864))

(assert (=> b!6101351 (= e!3721222 e!3721224)))

(declare-fun b!6101352 () Bool)

(declare-fun e!3721221 () Bool)

(assert (=> b!6101352 (= e!3721221 (nullable!6043 (regOne!32608 (h!70767 (exprs!5932 (h!70768 zl!343))))))))

(declare-fun d!1912556 () Bool)

(declare-fun c!1096024 () Bool)

(assert (=> d!1912556 (= c!1096024 (and (is-ElementMatch!16048 (h!70767 (exprs!5932 (h!70768 zl!343)))) (= (c!1095611 (h!70767 (exprs!5932 (h!70768 zl!343)))) (h!70769 s!2326))))))

(declare-fun e!3721219 () (Set Context!10864))

(assert (=> d!1912556 (= (derivationStepZipperDown!1298 (h!70767 (exprs!5932 (h!70768 zl!343))) (Context!10865 (t!377892 (exprs!5932 (h!70768 zl!343)))) (h!70769 s!2326)) e!3721219)))

(declare-fun b!6101353 () Bool)

(declare-fun e!3721223 () (Set Context!10864))

(declare-fun call!504473 () (Set Context!10864))

(assert (=> b!6101353 (= e!3721223 (set.union call!504472 call!504473))))

(declare-fun b!6101354 () Bool)

(assert (=> b!6101354 (= e!3721219 e!3721220)))

(assert (=> b!6101354 (= c!1096022 (is-Union!16048 (h!70767 (exprs!5932 (h!70768 zl!343)))))))

(declare-fun b!6101355 () Bool)

(assert (=> b!6101355 (= e!3721219 (set.insert (Context!10865 (t!377892 (exprs!5932 (h!70768 zl!343)))) (as set.empty (Set Context!10864))))))

(declare-fun b!6101356 () Bool)

(declare-fun c!1096023 () Bool)

(assert (=> b!6101356 (= c!1096023 e!3721221)))

(declare-fun res!2531480 () Bool)

(assert (=> b!6101356 (=> (not res!2531480) (not e!3721221))))

(assert (=> b!6101356 (= res!2531480 (is-Concat!24893 (h!70767 (exprs!5932 (h!70768 zl!343)))))))

(assert (=> b!6101356 (= e!3721220 e!3721223)))

(declare-fun bm!504468 () Bool)

(declare-fun call!504474 () List!64443)

(assert (=> bm!504468 (= call!504474 call!504477)))

(declare-fun b!6101357 () Bool)

(assert (=> b!6101357 (= e!3721223 e!3721222)))

(declare-fun c!1096025 () Bool)

(assert (=> b!6101357 (= c!1096025 (is-Concat!24893 (h!70767 (exprs!5932 (h!70768 zl!343)))))))

(declare-fun b!6101358 () Bool)

(declare-fun call!504475 () (Set Context!10864))

(assert (=> b!6101358 (= e!3721224 call!504475)))

(declare-fun b!6101359 () Bool)

(assert (=> b!6101359 (= e!3721222 call!504475)))

(declare-fun bm!504469 () Bool)

(assert (=> bm!504469 (= call!504475 call!504473)))

(declare-fun bm!504470 () Bool)

(assert (=> bm!504470 (= call!504476 (derivationStepZipperDown!1298 (ite c!1096022 (regTwo!32609 (h!70767 (exprs!5932 (h!70768 zl!343)))) (ite c!1096023 (regTwo!32608 (h!70767 (exprs!5932 (h!70768 zl!343)))) (ite c!1096025 (regOne!32608 (h!70767 (exprs!5932 (h!70768 zl!343)))) (reg!16377 (h!70767 (exprs!5932 (h!70768 zl!343))))))) (ite (or c!1096022 c!1096023) (Context!10865 (t!377892 (exprs!5932 (h!70768 zl!343)))) (Context!10865 call!504474)) (h!70769 s!2326)))))

(declare-fun bm!504471 () Bool)

(assert (=> bm!504471 (= call!504473 call!504476)))

(declare-fun bm!504472 () Bool)

(assert (=> bm!504472 (= call!504477 ($colon$colon!1927 (exprs!5932 (Context!10865 (t!377892 (exprs!5932 (h!70768 zl!343))))) (ite (or c!1096023 c!1096025) (regTwo!32608 (h!70767 (exprs!5932 (h!70768 zl!343)))) (h!70767 (exprs!5932 (h!70768 zl!343))))))))

(declare-fun b!6101360 () Bool)

(assert (=> b!6101360 (= e!3721224 (as set.empty (Set Context!10864)))))

(assert (= (and d!1912556 c!1096024) b!6101355))

(assert (= (and d!1912556 (not c!1096024)) b!6101354))

(assert (= (and b!6101354 c!1096022) b!6101350))

(assert (= (and b!6101354 (not c!1096022)) b!6101356))

(assert (= (and b!6101356 res!2531480) b!6101352))

(assert (= (and b!6101356 c!1096023) b!6101353))

(assert (= (and b!6101356 (not c!1096023)) b!6101357))

(assert (= (and b!6101357 c!1096025) b!6101359))

(assert (= (and b!6101357 (not c!1096025)) b!6101351))

(assert (= (and b!6101351 c!1096021) b!6101358))

(assert (= (and b!6101351 (not c!1096021)) b!6101360))

(assert (= (or b!6101359 b!6101358) bm!504468))

(assert (= (or b!6101359 b!6101358) bm!504469))

(assert (= (or b!6101353 bm!504468) bm!504472))

(assert (= (or b!6101353 bm!504469) bm!504471))

(assert (= (or b!6101350 bm!504471) bm!504470))

(assert (= (or b!6101350 b!6101353) bm!504467))

(declare-fun m!6953926 () Bool)

(assert (=> b!6101352 m!6953926))

(declare-fun m!6953928 () Bool)

(assert (=> bm!504467 m!6953928))

(declare-fun m!6953930 () Bool)

(assert (=> bm!504470 m!6953930))

(declare-fun m!6953932 () Bool)

(assert (=> b!6101355 m!6953932))

(declare-fun m!6953934 () Bool)

(assert (=> bm!504472 m!6953934))

(assert (=> bm!504307 d!1912556))

(declare-fun b!6101361 () Bool)

(declare-fun e!3721226 () (Set Context!10864))

(declare-fun call!504478 () (Set Context!10864))

(declare-fun call!504482 () (Set Context!10864))

(assert (=> b!6101361 (= e!3721226 (set.union call!504478 call!504482))))

(declare-fun bm!504473 () Bool)

(declare-fun call!504483 () List!64443)

(declare-fun c!1096027 () Bool)

(assert (=> bm!504473 (= call!504478 (derivationStepZipperDown!1298 (ite c!1096027 (regOne!32609 (h!70767 (exprs!5932 lt!2328952))) (regOne!32608 (h!70767 (exprs!5932 lt!2328952)))) (ite c!1096027 (Context!10865 (t!377892 (exprs!5932 lt!2328952))) (Context!10865 call!504483)) (h!70769 s!2326)))))

(declare-fun b!6101362 () Bool)

(declare-fun c!1096026 () Bool)

(assert (=> b!6101362 (= c!1096026 (is-Star!16048 (h!70767 (exprs!5932 lt!2328952))))))

(declare-fun e!3721228 () (Set Context!10864))

(declare-fun e!3721230 () (Set Context!10864))

(assert (=> b!6101362 (= e!3721228 e!3721230)))

(declare-fun b!6101363 () Bool)

(declare-fun e!3721227 () Bool)

(assert (=> b!6101363 (= e!3721227 (nullable!6043 (regOne!32608 (h!70767 (exprs!5932 lt!2328952)))))))

(declare-fun d!1912558 () Bool)

(declare-fun c!1096029 () Bool)

(assert (=> d!1912558 (= c!1096029 (and (is-ElementMatch!16048 (h!70767 (exprs!5932 lt!2328952))) (= (c!1095611 (h!70767 (exprs!5932 lt!2328952))) (h!70769 s!2326))))))

(declare-fun e!3721225 () (Set Context!10864))

(assert (=> d!1912558 (= (derivationStepZipperDown!1298 (h!70767 (exprs!5932 lt!2328952)) (Context!10865 (t!377892 (exprs!5932 lt!2328952))) (h!70769 s!2326)) e!3721225)))

(declare-fun b!6101364 () Bool)

(declare-fun e!3721229 () (Set Context!10864))

(declare-fun call!504479 () (Set Context!10864))

(assert (=> b!6101364 (= e!3721229 (set.union call!504478 call!504479))))

(declare-fun b!6101365 () Bool)

(assert (=> b!6101365 (= e!3721225 e!3721226)))

(assert (=> b!6101365 (= c!1096027 (is-Union!16048 (h!70767 (exprs!5932 lt!2328952))))))

(declare-fun b!6101366 () Bool)

(assert (=> b!6101366 (= e!3721225 (set.insert (Context!10865 (t!377892 (exprs!5932 lt!2328952))) (as set.empty (Set Context!10864))))))

(declare-fun b!6101367 () Bool)

(declare-fun c!1096028 () Bool)

(assert (=> b!6101367 (= c!1096028 e!3721227)))

(declare-fun res!2531481 () Bool)

(assert (=> b!6101367 (=> (not res!2531481) (not e!3721227))))

(assert (=> b!6101367 (= res!2531481 (is-Concat!24893 (h!70767 (exprs!5932 lt!2328952))))))

(assert (=> b!6101367 (= e!3721226 e!3721229)))

(declare-fun bm!504474 () Bool)

(declare-fun call!504480 () List!64443)

(assert (=> bm!504474 (= call!504480 call!504483)))

(declare-fun b!6101368 () Bool)

(assert (=> b!6101368 (= e!3721229 e!3721228)))

(declare-fun c!1096030 () Bool)

(assert (=> b!6101368 (= c!1096030 (is-Concat!24893 (h!70767 (exprs!5932 lt!2328952))))))

(declare-fun b!6101369 () Bool)

(declare-fun call!504481 () (Set Context!10864))

(assert (=> b!6101369 (= e!3721230 call!504481)))

(declare-fun b!6101370 () Bool)

(assert (=> b!6101370 (= e!3721228 call!504481)))

(declare-fun bm!504475 () Bool)

(assert (=> bm!504475 (= call!504481 call!504479)))

(declare-fun bm!504476 () Bool)

(assert (=> bm!504476 (= call!504482 (derivationStepZipperDown!1298 (ite c!1096027 (regTwo!32609 (h!70767 (exprs!5932 lt!2328952))) (ite c!1096028 (regTwo!32608 (h!70767 (exprs!5932 lt!2328952))) (ite c!1096030 (regOne!32608 (h!70767 (exprs!5932 lt!2328952))) (reg!16377 (h!70767 (exprs!5932 lt!2328952)))))) (ite (or c!1096027 c!1096028) (Context!10865 (t!377892 (exprs!5932 lt!2328952))) (Context!10865 call!504480)) (h!70769 s!2326)))))

(declare-fun bm!504477 () Bool)

(assert (=> bm!504477 (= call!504479 call!504482)))

(declare-fun bm!504478 () Bool)

(assert (=> bm!504478 (= call!504483 ($colon$colon!1927 (exprs!5932 (Context!10865 (t!377892 (exprs!5932 lt!2328952)))) (ite (or c!1096028 c!1096030) (regTwo!32608 (h!70767 (exprs!5932 lt!2328952))) (h!70767 (exprs!5932 lt!2328952)))))))

(declare-fun b!6101371 () Bool)

(assert (=> b!6101371 (= e!3721230 (as set.empty (Set Context!10864)))))

(assert (= (and d!1912558 c!1096029) b!6101366))

(assert (= (and d!1912558 (not c!1096029)) b!6101365))

(assert (= (and b!6101365 c!1096027) b!6101361))

(assert (= (and b!6101365 (not c!1096027)) b!6101367))

(assert (= (and b!6101367 res!2531481) b!6101363))

(assert (= (and b!6101367 c!1096028) b!6101364))

(assert (= (and b!6101367 (not c!1096028)) b!6101368))

(assert (= (and b!6101368 c!1096030) b!6101370))

(assert (= (and b!6101368 (not c!1096030)) b!6101362))

(assert (= (and b!6101362 c!1096026) b!6101369))

(assert (= (and b!6101362 (not c!1096026)) b!6101371))

(assert (= (or b!6101370 b!6101369) bm!504474))

(assert (= (or b!6101370 b!6101369) bm!504475))

(assert (= (or b!6101364 bm!504474) bm!504478))

(assert (= (or b!6101364 bm!504475) bm!504477))

(assert (= (or b!6101361 bm!504477) bm!504476))

(assert (= (or b!6101361 b!6101364) bm!504473))

(declare-fun m!6953936 () Bool)

(assert (=> b!6101363 m!6953936))

(declare-fun m!6953938 () Bool)

(assert (=> bm!504473 m!6953938))

(declare-fun m!6953940 () Bool)

(assert (=> bm!504476 m!6953940))

(declare-fun m!6953942 () Bool)

(assert (=> b!6101366 m!6953942))

(declare-fun m!6953944 () Bool)

(assert (=> bm!504478 m!6953944))

(assert (=> bm!504290 d!1912558))

(assert (=> b!6100234 d!1912354))

(declare-fun b!6101372 () Bool)

(declare-fun e!3721236 () Bool)

(declare-fun e!3721232 () Bool)

(assert (=> b!6101372 (= e!3721236 e!3721232)))

(declare-fun res!2531483 () Bool)

(assert (=> b!6101372 (= res!2531483 (not (nullable!6043 (reg!16377 lt!2329145))))))

(assert (=> b!6101372 (=> (not res!2531483) (not e!3721232))))

(declare-fun b!6101373 () Bool)

(declare-fun call!504485 () Bool)

(assert (=> b!6101373 (= e!3721232 call!504485)))

(declare-fun c!1096031 () Bool)

(declare-fun bm!504479 () Bool)

(declare-fun c!1096032 () Bool)

(assert (=> bm!504479 (= call!504485 (validRegex!7784 (ite c!1096032 (reg!16377 lt!2329145) (ite c!1096031 (regTwo!32609 lt!2329145) (regTwo!32608 lt!2329145)))))))

(declare-fun b!6101374 () Bool)

(declare-fun e!3721234 () Bool)

(assert (=> b!6101374 (= e!3721236 e!3721234)))

(assert (=> b!6101374 (= c!1096031 (is-Union!16048 lt!2329145))))

(declare-fun d!1912560 () Bool)

(declare-fun res!2531484 () Bool)

(declare-fun e!3721233 () Bool)

(assert (=> d!1912560 (=> res!2531484 e!3721233)))

(assert (=> d!1912560 (= res!2531484 (is-ElementMatch!16048 lt!2329145))))

(assert (=> d!1912560 (= (validRegex!7784 lt!2329145) e!3721233)))

(declare-fun bm!504480 () Bool)

(declare-fun call!504484 () Bool)

(assert (=> bm!504480 (= call!504484 call!504485)))

(declare-fun bm!504481 () Bool)

(declare-fun call!504486 () Bool)

(assert (=> bm!504481 (= call!504486 (validRegex!7784 (ite c!1096031 (regOne!32609 lt!2329145) (regOne!32608 lt!2329145))))))

(declare-fun b!6101375 () Bool)

(declare-fun e!3721235 () Bool)

(assert (=> b!6101375 (= e!3721235 call!504484)))

(declare-fun b!6101376 () Bool)

(declare-fun res!2531482 () Bool)

(declare-fun e!3721231 () Bool)

(assert (=> b!6101376 (=> res!2531482 e!3721231)))

(assert (=> b!6101376 (= res!2531482 (not (is-Concat!24893 lt!2329145)))))

(assert (=> b!6101376 (= e!3721234 e!3721231)))

(declare-fun b!6101377 () Bool)

(declare-fun e!3721237 () Bool)

(assert (=> b!6101377 (= e!3721237 call!504484)))

(declare-fun b!6101378 () Bool)

(declare-fun res!2531485 () Bool)

(assert (=> b!6101378 (=> (not res!2531485) (not e!3721237))))

(assert (=> b!6101378 (= res!2531485 call!504486)))

(assert (=> b!6101378 (= e!3721234 e!3721237)))

(declare-fun b!6101379 () Bool)

(assert (=> b!6101379 (= e!3721233 e!3721236)))

(assert (=> b!6101379 (= c!1096032 (is-Star!16048 lt!2329145))))

(declare-fun b!6101380 () Bool)

(assert (=> b!6101380 (= e!3721231 e!3721235)))

(declare-fun res!2531486 () Bool)

(assert (=> b!6101380 (=> (not res!2531486) (not e!3721235))))

(assert (=> b!6101380 (= res!2531486 call!504486)))

(assert (= (and d!1912560 (not res!2531484)) b!6101379))

(assert (= (and b!6101379 c!1096032) b!6101372))

(assert (= (and b!6101379 (not c!1096032)) b!6101374))

(assert (= (and b!6101372 res!2531483) b!6101373))

(assert (= (and b!6101374 c!1096031) b!6101378))

(assert (= (and b!6101374 (not c!1096031)) b!6101376))

(assert (= (and b!6101378 res!2531485) b!6101377))

(assert (= (and b!6101376 (not res!2531482)) b!6101380))

(assert (= (and b!6101380 res!2531486) b!6101375))

(assert (= (or b!6101377 b!6101375) bm!504480))

(assert (= (or b!6101378 b!6101380) bm!504481))

(assert (= (or b!6101373 bm!504480) bm!504479))

(declare-fun m!6953946 () Bool)

(assert (=> b!6101372 m!6953946))

(declare-fun m!6953948 () Bool)

(assert (=> bm!504479 m!6953948))

(declare-fun m!6953950 () Bool)

(assert (=> bm!504481 m!6953950))

(assert (=> d!1912242 d!1912560))

(declare-fun d!1912562 () Bool)

(declare-fun res!2531487 () Bool)

(declare-fun e!3721238 () Bool)

(assert (=> d!1912562 (=> res!2531487 e!3721238)))

(assert (=> d!1912562 (= res!2531487 (is-Nil!64319 (exprs!5932 (h!70768 zl!343))))))

(assert (=> d!1912562 (= (forall!15169 (exprs!5932 (h!70768 zl!343)) lambda!332301) e!3721238)))

(declare-fun b!6101381 () Bool)

(declare-fun e!3721239 () Bool)

(assert (=> b!6101381 (= e!3721238 e!3721239)))

(declare-fun res!2531488 () Bool)

(assert (=> b!6101381 (=> (not res!2531488) (not e!3721239))))

(assert (=> b!6101381 (= res!2531488 (dynLambda!25325 lambda!332301 (h!70767 (exprs!5932 (h!70768 zl!343)))))))

(declare-fun b!6101382 () Bool)

(assert (=> b!6101382 (= e!3721239 (forall!15169 (t!377892 (exprs!5932 (h!70768 zl!343))) lambda!332301))))

(assert (= (and d!1912562 (not res!2531487)) b!6101381))

(assert (= (and b!6101381 res!2531488) b!6101382))

(declare-fun b_lambda!232437 () Bool)

(assert (=> (not b_lambda!232437) (not b!6101381)))

(declare-fun m!6953952 () Bool)

(assert (=> b!6101381 m!6953952))

(declare-fun m!6953954 () Bool)

(assert (=> b!6101382 m!6953954))

(assert (=> d!1912242 d!1912562))

(declare-fun d!1912564 () Bool)

(assert (=> d!1912564 (= (nullable!6043 (regOne!32608 (regOne!32608 r!7292))) (nullableFct!2007 (regOne!32608 (regOne!32608 r!7292))))))

(declare-fun bs!1515027 () Bool)

(assert (= bs!1515027 d!1912564))

(declare-fun m!6953956 () Bool)

(assert (=> bs!1515027 m!6953956))

(assert (=> b!6100256 d!1912564))

(declare-fun d!1912566 () Bool)

(assert (=> d!1912566 (= (head!12622 (exprs!5932 (h!70768 zl!343))) (h!70767 (exprs!5932 (h!70768 zl!343))))))

(assert (=> b!6100479 d!1912566))

(declare-fun d!1912568 () Bool)

(assert (=> d!1912568 (= (nullable!6043 (regTwo!32608 r!7292)) (nullableFct!2007 (regTwo!32608 r!7292)))))

(declare-fun bs!1515028 () Bool)

(assert (= bs!1515028 d!1912568))

(declare-fun m!6953958 () Bool)

(assert (=> bs!1515028 m!6953958))

(assert (=> b!6100203 d!1912568))

(assert (=> d!1912146 d!1912142))

(assert (=> d!1912146 d!1912138))

(declare-fun d!1912570 () Bool)

(assert (=> d!1912570 (= (matchR!8231 r!7292 s!2326) (matchRSpec!3149 r!7292 s!2326))))

(assert (=> d!1912570 true))

(declare-fun _$88!4575 () Unit!157367)

(assert (=> d!1912570 (= (choose!45346 r!7292 s!2326) _$88!4575)))

(declare-fun bs!1515029 () Bool)

(assert (= bs!1515029 d!1912570))

(assert (=> bs!1515029 m!6952672))

(assert (=> bs!1515029 m!6952670))

(assert (=> d!1912146 d!1912570))

(assert (=> d!1912146 d!1912156))

(assert (=> b!6100143 d!1912328))

(assert (=> b!6100143 d!1912330))

(declare-fun d!1912572 () Bool)

(assert (=> d!1912572 (= ($colon$colon!1927 (exprs!5932 lt!2328949) (ite (or c!1095709 c!1095711) (regTwo!32608 (regTwo!32608 r!7292)) (regTwo!32608 r!7292))) (Cons!64319 (ite (or c!1095709 c!1095711) (regTwo!32608 (regTwo!32608 r!7292)) (regTwo!32608 r!7292)) (exprs!5932 lt!2328949)))))

(assert (=> bm!504303 d!1912572))

(declare-fun d!1912574 () Bool)

(assert (=> d!1912574 (= (isUnion!907 lt!2329085) (is-Union!16048 lt!2329085))))

(assert (=> b!6100330 d!1912574))

(assert (=> bm!504259 d!1912346))

(declare-fun bs!1515030 () Bool)

(declare-fun b!6101383 () Bool)

(assert (= bs!1515030 (and b!6101383 b!6100363)))

(declare-fun lambda!332369 () Int)

(assert (=> bs!1515030 (= lambda!332369 lambda!332269)))

(declare-fun bs!1515031 () Bool)

(assert (= bs!1515031 (and b!6101383 b!6100368)))

(assert (=> bs!1515031 (= lambda!332369 lambda!332272)))

(declare-fun bs!1515032 () Bool)

(assert (= bs!1515032 (and b!6101383 b!6101061)))

(assert (=> bs!1515032 (= lambda!332369 lambda!332349)))

(declare-fun lt!2329230 () Int)

(declare-fun lambda!332370 () Int)

(assert (=> bs!1515030 (= (= lt!2329230 lt!2329101) (= lambda!332370 lambda!332270))))

(declare-fun bs!1515033 () Bool)

(assert (= bs!1515033 (and b!6101383 b!6101063)))

(assert (=> bs!1515033 (= (= lt!2329230 lt!2329198) (= lambda!332370 lambda!332351))))

(assert (=> bs!1515032 (= (= lt!2329230 lt!2329201) (= lambda!332370 lambda!332350))))

(declare-fun bs!1515034 () Bool)

(assert (= bs!1515034 (and b!6101383 b!6100365)))

(assert (=> bs!1515034 (= (= lt!2329230 lt!2329098) (= lambda!332370 lambda!332271))))

(declare-fun bs!1515035 () Bool)

(assert (= bs!1515035 (and b!6101383 d!1912402)))

(assert (=> bs!1515035 (not (= lambda!332370 lambda!332345))))

(assert (=> bs!1515031 (= (= lt!2329230 lt!2329105) (= lambda!332370 lambda!332273))))

(declare-fun bs!1515036 () Bool)

(assert (= bs!1515036 (and b!6101383 d!1912386)))

(assert (=> bs!1515036 (not (= lambda!332370 lambda!332338))))

(declare-fun bs!1515037 () Bool)

(assert (= bs!1515037 (and b!6101383 d!1912428)))

(assert (=> bs!1515037 (not (= lambda!332370 lambda!332348))))

(declare-fun bs!1515038 () Bool)

(assert (= bs!1515038 (and b!6101383 b!6100370)))

(assert (=> bs!1515038 (= (= lt!2329230 lt!2329102) (= lambda!332370 lambda!332274))))

(declare-fun bs!1515039 () Bool)

(assert (= bs!1515039 (and b!6101383 d!1912360)))

(assert (=> bs!1515039 (not (= lambda!332370 lambda!332334))))

(assert (=> b!6101383 true))

(declare-fun bs!1515040 () Bool)

(declare-fun b!6101385 () Bool)

(assert (= bs!1515040 (and b!6101385 b!6101383)))

(declare-fun lambda!332371 () Int)

(declare-fun lt!2329227 () Int)

(assert (=> bs!1515040 (= (= lt!2329227 lt!2329230) (= lambda!332371 lambda!332370))))

(declare-fun bs!1515041 () Bool)

(assert (= bs!1515041 (and b!6101385 b!6100363)))

(assert (=> bs!1515041 (= (= lt!2329227 lt!2329101) (= lambda!332371 lambda!332270))))

(declare-fun bs!1515042 () Bool)

(assert (= bs!1515042 (and b!6101385 b!6101063)))

(assert (=> bs!1515042 (= (= lt!2329227 lt!2329198) (= lambda!332371 lambda!332351))))

(declare-fun bs!1515043 () Bool)

(assert (= bs!1515043 (and b!6101385 b!6101061)))

(assert (=> bs!1515043 (= (= lt!2329227 lt!2329201) (= lambda!332371 lambda!332350))))

(declare-fun bs!1515044 () Bool)

(assert (= bs!1515044 (and b!6101385 b!6100365)))

(assert (=> bs!1515044 (= (= lt!2329227 lt!2329098) (= lambda!332371 lambda!332271))))

(declare-fun bs!1515045 () Bool)

(assert (= bs!1515045 (and b!6101385 d!1912402)))

(assert (=> bs!1515045 (not (= lambda!332371 lambda!332345))))

(declare-fun bs!1515046 () Bool)

(assert (= bs!1515046 (and b!6101385 b!6100368)))

(assert (=> bs!1515046 (= (= lt!2329227 lt!2329105) (= lambda!332371 lambda!332273))))

(declare-fun bs!1515047 () Bool)

(assert (= bs!1515047 (and b!6101385 d!1912386)))

(assert (=> bs!1515047 (not (= lambda!332371 lambda!332338))))

(declare-fun bs!1515048 () Bool)

(assert (= bs!1515048 (and b!6101385 d!1912428)))

(assert (=> bs!1515048 (not (= lambda!332371 lambda!332348))))

(declare-fun bs!1515049 () Bool)

(assert (= bs!1515049 (and b!6101385 b!6100370)))

(assert (=> bs!1515049 (= (= lt!2329227 lt!2329102) (= lambda!332371 lambda!332274))))

(declare-fun bs!1515050 () Bool)

(assert (= bs!1515050 (and b!6101385 d!1912360)))

(assert (=> bs!1515050 (not (= lambda!332371 lambda!332334))))

(assert (=> b!6101385 true))

(declare-fun d!1912576 () Bool)

(declare-fun e!3721241 () Bool)

(assert (=> d!1912576 e!3721241))

(declare-fun res!2531489 () Bool)

(assert (=> d!1912576 (=> (not res!2531489) (not e!3721241))))

(assert (=> d!1912576 (= res!2531489 (>= lt!2329227 0))))

(declare-fun e!3721240 () Int)

(assert (=> d!1912576 (= lt!2329227 e!3721240)))

(declare-fun c!1096033 () Bool)

(assert (=> d!1912576 (= c!1096033 (is-Cons!64320 (t!377893 (Cons!64320 lt!2328947 Nil!64320))))))

(assert (=> d!1912576 (= (zipperDepth!293 (t!377893 (Cons!64320 lt!2328947 Nil!64320))) lt!2329227)))

(assert (=> b!6101383 (= e!3721240 lt!2329230)))

(assert (=> b!6101383 (= lt!2329230 (maxBigInt!0 (contextDepth!188 (h!70768 (t!377893 (Cons!64320 lt!2328947 Nil!64320)))) (zipperDepth!293 (t!377893 (t!377893 (Cons!64320 lt!2328947 Nil!64320))))))))

(declare-fun lt!2329229 () Unit!157367)

(assert (=> b!6101383 (= lt!2329229 (lemmaForallContextDepthBiggerThanTransitive!172 (t!377893 (t!377893 (Cons!64320 lt!2328947 Nil!64320))) lt!2329230 (zipperDepth!293 (t!377893 (t!377893 (Cons!64320 lt!2328947 Nil!64320)))) lambda!332369))))

(assert (=> b!6101383 (forall!15170 (t!377893 (t!377893 (Cons!64320 lt!2328947 Nil!64320))) lambda!332370)))

(declare-fun lt!2329228 () Unit!157367)

(assert (=> b!6101383 (= lt!2329228 lt!2329229)))

(declare-fun b!6101384 () Bool)

(assert (=> b!6101384 (= e!3721240 0)))

(assert (=> b!6101385 (= e!3721241 (forall!15170 (t!377893 (Cons!64320 lt!2328947 Nil!64320)) lambda!332371))))

(assert (= (and d!1912576 c!1096033) b!6101383))

(assert (= (and d!1912576 (not c!1096033)) b!6101384))

(assert (= (and d!1912576 res!2531489) b!6101385))

(declare-fun m!6953960 () Bool)

(assert (=> b!6101383 m!6953960))

(declare-fun m!6953962 () Bool)

(assert (=> b!6101383 m!6953962))

(declare-fun m!6953964 () Bool)

(assert (=> b!6101383 m!6953964))

(declare-fun m!6953966 () Bool)

(assert (=> b!6101383 m!6953966))

(assert (=> b!6101383 m!6953962))

(declare-fun m!6953968 () Bool)

(assert (=> b!6101383 m!6953968))

(assert (=> b!6101383 m!6953966))

(assert (=> b!6101383 m!6953962))

(declare-fun m!6953970 () Bool)

(assert (=> b!6101385 m!6953970))

(assert (=> b!6100368 d!1912576))

(declare-fun bs!1515051 () Bool)

(declare-fun d!1912578 () Bool)

(assert (= bs!1515051 (and d!1912578 b!6101383)))

(declare-fun lambda!332372 () Int)

(assert (=> bs!1515051 (not (= lambda!332372 lambda!332370))))

(declare-fun bs!1515052 () Bool)

(assert (= bs!1515052 (and d!1912578 b!6100363)))

(assert (=> bs!1515052 (not (= lambda!332372 lambda!332270))))

(declare-fun bs!1515053 () Bool)

(assert (= bs!1515053 (and d!1912578 b!6101385)))

(assert (=> bs!1515053 (not (= lambda!332372 lambda!332371))))

(declare-fun bs!1515054 () Bool)

(assert (= bs!1515054 (and d!1912578 b!6101063)))

(assert (=> bs!1515054 (not (= lambda!332372 lambda!332351))))

(declare-fun bs!1515055 () Bool)

(assert (= bs!1515055 (and d!1912578 b!6101061)))

(assert (=> bs!1515055 (not (= lambda!332372 lambda!332350))))

(declare-fun bs!1515056 () Bool)

(assert (= bs!1515056 (and d!1912578 b!6100365)))

(assert (=> bs!1515056 (not (= lambda!332372 lambda!332271))))

(declare-fun bs!1515057 () Bool)

(assert (= bs!1515057 (and d!1912578 d!1912402)))

(assert (=> bs!1515057 (not (= lambda!332372 lambda!332345))))

(declare-fun bs!1515058 () Bool)

(assert (= bs!1515058 (and d!1912578 b!6100368)))

(assert (=> bs!1515058 (not (= lambda!332372 lambda!332273))))

(declare-fun bs!1515059 () Bool)

(assert (= bs!1515059 (and d!1912578 d!1912386)))

(assert (=> bs!1515059 (not (= lambda!332372 lambda!332338))))

(declare-fun bs!1515060 () Bool)

(assert (= bs!1515060 (and d!1912578 d!1912428)))

(assert (=> bs!1515060 (= (and (= lt!2329105 lt!2329101) (= lambda!332272 lambda!332269)) (= lambda!332372 lambda!332348))))

(declare-fun bs!1515061 () Bool)

(assert (= bs!1515061 (and d!1912578 b!6100370)))

(assert (=> bs!1515061 (not (= lambda!332372 lambda!332274))))

(declare-fun bs!1515062 () Bool)

(assert (= bs!1515062 (and d!1912578 d!1912360)))

(assert (=> bs!1515062 (not (= lambda!332372 lambda!332334))))

(assert (=> d!1912578 true))

(assert (=> d!1912578 true))

(assert (=> d!1912578 (< (dynLambda!25326 order!27397 lambda!332272) (dynLambda!25327 order!27399 lambda!332372))))

(assert (=> d!1912578 (forall!15170 (t!377893 (Cons!64320 lt!2328947 Nil!64320)) lambda!332372)))

(declare-fun lt!2329231 () Unit!157367)

(assert (=> d!1912578 (= lt!2329231 (choose!45363 (t!377893 (Cons!64320 lt!2328947 Nil!64320)) lt!2329105 (zipperDepth!293 (t!377893 (Cons!64320 lt!2328947 Nil!64320))) lambda!332272))))

(assert (=> d!1912578 (>= lt!2329105 (zipperDepth!293 (t!377893 (Cons!64320 lt!2328947 Nil!64320))))))

(assert (=> d!1912578 (= (lemmaForallContextDepthBiggerThanTransitive!172 (t!377893 (Cons!64320 lt!2328947 Nil!64320)) lt!2329105 (zipperDepth!293 (t!377893 (Cons!64320 lt!2328947 Nil!64320))) lambda!332272) lt!2329231)))

(declare-fun bs!1515063 () Bool)

(assert (= bs!1515063 d!1912578))

(declare-fun m!6953972 () Bool)

(assert (=> bs!1515063 m!6953972))

(assert (=> bs!1515063 m!6953062))

(declare-fun m!6953974 () Bool)

(assert (=> bs!1515063 m!6953974))

(assert (=> b!6100368 d!1912578))

(declare-fun d!1912580 () Bool)

(assert (=> d!1912580 (= (maxBigInt!0 (contextDepth!188 (h!70768 (Cons!64320 lt!2328947 Nil!64320))) (zipperDepth!293 (t!377893 (Cons!64320 lt!2328947 Nil!64320)))) (ite (>= (contextDepth!188 (h!70768 (Cons!64320 lt!2328947 Nil!64320))) (zipperDepth!293 (t!377893 (Cons!64320 lt!2328947 Nil!64320)))) (contextDepth!188 (h!70768 (Cons!64320 lt!2328947 Nil!64320))) (zipperDepth!293 (t!377893 (Cons!64320 lt!2328947 Nil!64320)))))))

(assert (=> b!6100368 d!1912580))

(declare-fun bs!1515064 () Bool)

(declare-fun b!6101386 () Bool)

(assert (= bs!1515064 (and b!6101386 d!1912466)))

(declare-fun lambda!332373 () Int)

(assert (=> bs!1515064 (not (= lambda!332373 lambda!332359))))

(declare-fun bs!1515065 () Bool)

(assert (= bs!1515065 (and b!6101386 d!1912212)))

(assert (=> bs!1515065 (not (= lambda!332373 lambda!332262))))

(declare-fun bs!1515066 () Bool)

(assert (= bs!1515066 (and b!6101386 d!1912242)))

(assert (=> bs!1515066 (not (= lambda!332373 lambda!332301))))

(declare-fun bs!1515067 () Bool)

(assert (= bs!1515067 (and b!6101386 d!1912204)))

(assert (=> bs!1515067 (not (= lambda!332373 lambda!332255))))

(declare-fun bs!1515068 () Bool)

(assert (= bs!1515068 (and b!6101386 d!1912524)))

(assert (=> bs!1515068 (not (= lambda!332373 lambda!332365))))

(declare-fun bs!1515069 () Bool)

(assert (= bs!1515069 (and b!6101386 b!6101076)))

(declare-fun lt!2329232 () Int)

(assert (=> bs!1515069 (= (= lt!2329232 lt!2329210) (= lambda!332373 lambda!332356))))

(declare-fun bs!1515070 () Bool)

(assert (= bs!1515070 (and b!6101386 d!1912516)))

(assert (=> bs!1515070 (not (= lambda!332373 lambda!332364))))

(declare-fun bs!1515071 () Bool)

(assert (= bs!1515071 (and b!6101386 d!1912500)))

(assert (=> bs!1515071 (not (= lambda!332373 lambda!332362))))

(declare-fun bs!1515072 () Bool)

(assert (= bs!1515072 (and b!6101386 d!1912514)))

(assert (=> bs!1515072 (not (= lambda!332373 lambda!332363))))

(declare-fun bs!1515073 () Bool)

(assert (= bs!1515073 (and b!6101386 b!6101078)))

(assert (=> bs!1515073 (= (= lt!2329232 lt!2329211) (= lambda!332373 lambda!332357))))

(declare-fun bs!1515074 () Bool)

(assert (= bs!1515074 (and b!6101386 d!1912210)))

(assert (=> bs!1515074 (not (= lambda!332373 lambda!332259))))

(declare-fun bs!1515075 () Bool)

(assert (= bs!1515075 (and b!6101386 d!1912206)))

(assert (=> bs!1515075 (not (= lambda!332373 lambda!332256))))

(declare-fun bs!1515076 () Bool)

(assert (= bs!1515076 (and b!6101386 d!1912536)))

(assert (=> bs!1515076 (not (= lambda!332373 lambda!332366))))

(assert (=> b!6101386 true))

(declare-fun bs!1515077 () Bool)

(declare-fun b!6101388 () Bool)

(assert (= bs!1515077 (and b!6101388 d!1912466)))

(declare-fun lambda!332374 () Int)

(assert (=> bs!1515077 (not (= lambda!332374 lambda!332359))))

(declare-fun bs!1515078 () Bool)

(assert (= bs!1515078 (and b!6101388 d!1912212)))

(assert (=> bs!1515078 (not (= lambda!332374 lambda!332262))))

(declare-fun bs!1515079 () Bool)

(assert (= bs!1515079 (and b!6101388 d!1912242)))

(assert (=> bs!1515079 (not (= lambda!332374 lambda!332301))))

(declare-fun bs!1515080 () Bool)

(assert (= bs!1515080 (and b!6101388 b!6101386)))

(declare-fun lt!2329233 () Int)

(assert (=> bs!1515080 (= (= lt!2329233 lt!2329232) (= lambda!332374 lambda!332373))))

(declare-fun bs!1515081 () Bool)

(assert (= bs!1515081 (and b!6101388 d!1912204)))

(assert (=> bs!1515081 (not (= lambda!332374 lambda!332255))))

(declare-fun bs!1515082 () Bool)

(assert (= bs!1515082 (and b!6101388 d!1912524)))

(assert (=> bs!1515082 (not (= lambda!332374 lambda!332365))))

(declare-fun bs!1515083 () Bool)

(assert (= bs!1515083 (and b!6101388 b!6101076)))

(assert (=> bs!1515083 (= (= lt!2329233 lt!2329210) (= lambda!332374 lambda!332356))))

(declare-fun bs!1515084 () Bool)

(assert (= bs!1515084 (and b!6101388 d!1912516)))

(assert (=> bs!1515084 (not (= lambda!332374 lambda!332364))))

(declare-fun bs!1515085 () Bool)

(assert (= bs!1515085 (and b!6101388 d!1912500)))

(assert (=> bs!1515085 (not (= lambda!332374 lambda!332362))))

(declare-fun bs!1515086 () Bool)

(assert (= bs!1515086 (and b!6101388 d!1912514)))

(assert (=> bs!1515086 (not (= lambda!332374 lambda!332363))))

(declare-fun bs!1515087 () Bool)

(assert (= bs!1515087 (and b!6101388 b!6101078)))

(assert (=> bs!1515087 (= (= lt!2329233 lt!2329211) (= lambda!332374 lambda!332357))))

(declare-fun bs!1515088 () Bool)

(assert (= bs!1515088 (and b!6101388 d!1912210)))

(assert (=> bs!1515088 (not (= lambda!332374 lambda!332259))))

(declare-fun bs!1515089 () Bool)

(assert (= bs!1515089 (and b!6101388 d!1912206)))

(assert (=> bs!1515089 (not (= lambda!332374 lambda!332256))))

(declare-fun bs!1515090 () Bool)

(assert (= bs!1515090 (and b!6101388 d!1912536)))

(assert (=> bs!1515090 (not (= lambda!332374 lambda!332366))))

(assert (=> b!6101388 true))

(declare-fun d!1912582 () Bool)

(declare-fun e!3721243 () Bool)

(assert (=> d!1912582 e!3721243))

(declare-fun res!2531490 () Bool)

(assert (=> d!1912582 (=> (not res!2531490) (not e!3721243))))

(assert (=> d!1912582 (= res!2531490 (>= lt!2329233 0))))

(declare-fun e!3721242 () Int)

(assert (=> d!1912582 (= lt!2329233 e!3721242)))

(declare-fun c!1096034 () Bool)

(assert (=> d!1912582 (= c!1096034 (is-Cons!64319 (exprs!5932 (h!70768 (Cons!64320 lt!2328947 Nil!64320)))))))

(assert (=> d!1912582 (= (contextDepth!188 (h!70768 (Cons!64320 lt!2328947 Nil!64320))) lt!2329233)))

(assert (=> b!6101386 (= e!3721242 lt!2329232)))

(assert (=> b!6101386 (= lt!2329232 (maxBigInt!0 (regexDepth!295 (h!70767 (exprs!5932 (h!70768 (Cons!64320 lt!2328947 Nil!64320))))) (contextDepth!188 (Context!10865 (t!377892 (exprs!5932 (h!70768 (Cons!64320 lt!2328947 Nil!64320))))))))))

(declare-fun lt!2329234 () Unit!157367)

(assert (=> b!6101386 (= lt!2329234 (lemmaForallRegexDepthBiggerThanTransitive!85 (t!377892 (exprs!5932 (h!70768 (Cons!64320 lt!2328947 Nil!64320)))) lt!2329232 (contextDepth!188 (Context!10865 (t!377892 (exprs!5932 (h!70768 (Cons!64320 lt!2328947 Nil!64320))))))))))

(assert (=> b!6101386 (forall!15169 (t!377892 (exprs!5932 (h!70768 (Cons!64320 lt!2328947 Nil!64320)))) lambda!332373)))

(declare-fun lt!2329235 () Unit!157367)

(assert (=> b!6101386 (= lt!2329235 lt!2329234)))

(declare-fun b!6101387 () Bool)

(assert (=> b!6101387 (= e!3721242 0)))

(assert (=> b!6101388 (= e!3721243 (forall!15169 (exprs!5932 (h!70768 (Cons!64320 lt!2328947 Nil!64320))) lambda!332374))))

(assert (= (and d!1912582 c!1096034) b!6101386))

(assert (= (and d!1912582 (not c!1096034)) b!6101387))

(assert (= (and d!1912582 res!2531490) b!6101388))

(declare-fun m!6953976 () Bool)

(assert (=> b!6101386 m!6953976))

(declare-fun m!6953978 () Bool)

(assert (=> b!6101386 m!6953978))

(declare-fun m!6953980 () Bool)

(assert (=> b!6101386 m!6953980))

(assert (=> b!6101386 m!6953976))

(assert (=> b!6101386 m!6953980))

(declare-fun m!6953982 () Bool)

(assert (=> b!6101386 m!6953982))

(assert (=> b!6101386 m!6953980))

(declare-fun m!6953984 () Bool)

(assert (=> b!6101386 m!6953984))

(declare-fun m!6953986 () Bool)

(assert (=> b!6101388 m!6953986))

(assert (=> b!6100368 d!1912582))

(declare-fun d!1912584 () Bool)

(declare-fun res!2531491 () Bool)

(declare-fun e!3721244 () Bool)

(assert (=> d!1912584 (=> res!2531491 e!3721244)))

(assert (=> d!1912584 (= res!2531491 (is-Nil!64320 (t!377893 (Cons!64320 lt!2328947 Nil!64320))))))

(assert (=> d!1912584 (= (forall!15170 (t!377893 (Cons!64320 lt!2328947 Nil!64320)) lambda!332273) e!3721244)))

(declare-fun b!6101389 () Bool)

(declare-fun e!3721245 () Bool)

(assert (=> b!6101389 (= e!3721244 e!3721245)))

(declare-fun res!2531492 () Bool)

(assert (=> b!6101389 (=> (not res!2531492) (not e!3721245))))

(assert (=> b!6101389 (= res!2531492 (dynLambda!25328 lambda!332273 (h!70768 (t!377893 (Cons!64320 lt!2328947 Nil!64320)))))))

(declare-fun b!6101390 () Bool)

(assert (=> b!6101390 (= e!3721245 (forall!15170 (t!377893 (t!377893 (Cons!64320 lt!2328947 Nil!64320))) lambda!332273))))

(assert (= (and d!1912584 (not res!2531491)) b!6101389))

(assert (= (and b!6101389 res!2531492) b!6101390))

(declare-fun b_lambda!232439 () Bool)

(assert (=> (not b_lambda!232439) (not b!6101389)))

(declare-fun m!6953988 () Bool)

(assert (=> b!6101389 m!6953988))

(declare-fun m!6953990 () Bool)

(assert (=> b!6101390 m!6953990))

(assert (=> b!6100368 d!1912584))

(declare-fun d!1912586 () Bool)

(assert (=> d!1912586 (= (isEmpty!36239 (tail!11707 (exprs!5932 (h!70768 zl!343)))) (is-Nil!64319 (tail!11707 (exprs!5932 (h!70768 zl!343)))))))

(assert (=> b!6100475 d!1912586))

(declare-fun d!1912588 () Bool)

(assert (=> d!1912588 (= (tail!11707 (exprs!5932 (h!70768 zl!343))) (t!377892 (exprs!5932 (h!70768 zl!343))))))

(assert (=> b!6100475 d!1912588))

(assert (=> b!6100393 d!1912162))

(declare-fun bs!1515091 () Bool)

(declare-fun d!1912590 () Bool)

(assert (= bs!1515091 (and d!1912590 d!1912466)))

(declare-fun lambda!332375 () Int)

(assert (=> bs!1515091 (= lambda!332375 lambda!332359)))

(declare-fun bs!1515092 () Bool)

(assert (= bs!1515092 (and d!1912590 d!1912212)))

(assert (=> bs!1515092 (= lambda!332375 lambda!332262)))

(declare-fun bs!1515093 () Bool)

(assert (= bs!1515093 (and d!1912590 d!1912242)))

(assert (=> bs!1515093 (= lambda!332375 lambda!332301)))

(declare-fun bs!1515094 () Bool)

(assert (= bs!1515094 (and d!1912590 b!6101386)))

(assert (=> bs!1515094 (not (= lambda!332375 lambda!332373))))

(declare-fun bs!1515095 () Bool)

(assert (= bs!1515095 (and d!1912590 d!1912204)))

(assert (=> bs!1515095 (= lambda!332375 lambda!332255)))

(declare-fun bs!1515096 () Bool)

(assert (= bs!1515096 (and d!1912590 d!1912524)))

(assert (=> bs!1515096 (= lambda!332375 lambda!332365)))

(declare-fun bs!1515097 () Bool)

(assert (= bs!1515097 (and d!1912590 b!6101076)))

(assert (=> bs!1515097 (not (= lambda!332375 lambda!332356))))

(declare-fun bs!1515098 () Bool)

(assert (= bs!1515098 (and d!1912590 d!1912516)))

(assert (=> bs!1515098 (= lambda!332375 lambda!332364)))

(declare-fun bs!1515099 () Bool)

(assert (= bs!1515099 (and d!1912590 d!1912500)))

(assert (=> bs!1515099 (= lambda!332375 lambda!332362)))

(declare-fun bs!1515100 () Bool)

(assert (= bs!1515100 (and d!1912590 d!1912514)))

(assert (=> bs!1515100 (= lambda!332375 lambda!332363)))

(declare-fun bs!1515101 () Bool)

(assert (= bs!1515101 (and d!1912590 b!6101388)))

(assert (=> bs!1515101 (not (= lambda!332375 lambda!332374))))

(declare-fun bs!1515102 () Bool)

(assert (= bs!1515102 (and d!1912590 b!6101078)))

(assert (=> bs!1515102 (not (= lambda!332375 lambda!332357))))

(declare-fun bs!1515103 () Bool)

(assert (= bs!1515103 (and d!1912590 d!1912210)))

(assert (=> bs!1515103 (= lambda!332375 lambda!332259)))

(declare-fun bs!1515104 () Bool)

(assert (= bs!1515104 (and d!1912590 d!1912206)))

(assert (=> bs!1515104 (= lambda!332375 lambda!332256)))

(declare-fun bs!1515105 () Bool)

(assert (= bs!1515105 (and d!1912590 d!1912536)))

(assert (=> bs!1515105 (= lambda!332375 lambda!332366)))

(assert (=> d!1912590 (= (inv!83368 (h!70768 (t!377893 zl!343))) (forall!15169 (exprs!5932 (h!70768 (t!377893 zl!343))) lambda!332375))))

(declare-fun bs!1515106 () Bool)

(assert (= bs!1515106 d!1912590))

(declare-fun m!6953992 () Bool)

(assert (=> bs!1515106 m!6953992))

(assert (=> b!6100504 d!1912590))

(assert (=> d!1912176 d!1912346))

(assert (=> d!1912176 d!1912338))

(declare-fun b!6101392 () Bool)

(declare-fun e!3721246 () Bool)

(declare-fun tp!1703377 () Bool)

(declare-fun tp!1703380 () Bool)

(assert (=> b!6101392 (= e!3721246 (and tp!1703377 tp!1703380))))

(declare-fun b!6101394 () Bool)

(declare-fun tp!1703378 () Bool)

(declare-fun tp!1703379 () Bool)

(assert (=> b!6101394 (= e!3721246 (and tp!1703378 tp!1703379))))

(declare-fun b!6101393 () Bool)

(declare-fun tp!1703381 () Bool)

(assert (=> b!6101393 (= e!3721246 tp!1703381)))

(declare-fun b!6101391 () Bool)

(assert (=> b!6101391 (= e!3721246 tp_is_empty!41349)))

(assert (=> b!6100540 (= tp!1703288 e!3721246)))

(assert (= (and b!6100540 (is-ElementMatch!16048 (regOne!32608 (regTwo!32609 r!7292)))) b!6101391))

(assert (= (and b!6100540 (is-Concat!24893 (regOne!32608 (regTwo!32609 r!7292)))) b!6101392))

(assert (= (and b!6100540 (is-Star!16048 (regOne!32608 (regTwo!32609 r!7292)))) b!6101393))

(assert (= (and b!6100540 (is-Union!16048 (regOne!32608 (regTwo!32609 r!7292)))) b!6101394))

(declare-fun b!6101396 () Bool)

(declare-fun e!3721247 () Bool)

(declare-fun tp!1703382 () Bool)

(declare-fun tp!1703385 () Bool)

(assert (=> b!6101396 (= e!3721247 (and tp!1703382 tp!1703385))))

(declare-fun b!6101398 () Bool)

(declare-fun tp!1703383 () Bool)

(declare-fun tp!1703384 () Bool)

(assert (=> b!6101398 (= e!3721247 (and tp!1703383 tp!1703384))))

(declare-fun b!6101397 () Bool)

(declare-fun tp!1703386 () Bool)

(assert (=> b!6101397 (= e!3721247 tp!1703386)))

(declare-fun b!6101395 () Bool)

(assert (=> b!6101395 (= e!3721247 tp_is_empty!41349)))

(assert (=> b!6100540 (= tp!1703291 e!3721247)))

(assert (= (and b!6100540 (is-ElementMatch!16048 (regTwo!32608 (regTwo!32609 r!7292)))) b!6101395))

(assert (= (and b!6100540 (is-Concat!24893 (regTwo!32608 (regTwo!32609 r!7292)))) b!6101396))

(assert (= (and b!6100540 (is-Star!16048 (regTwo!32608 (regTwo!32609 r!7292)))) b!6101397))

(assert (= (and b!6100540 (is-Union!16048 (regTwo!32608 (regTwo!32609 r!7292)))) b!6101398))

(declare-fun b!6101400 () Bool)

(declare-fun e!3721248 () Bool)

(declare-fun tp!1703387 () Bool)

(declare-fun tp!1703390 () Bool)

(assert (=> b!6101400 (= e!3721248 (and tp!1703387 tp!1703390))))

(declare-fun b!6101402 () Bool)

(declare-fun tp!1703388 () Bool)

(declare-fun tp!1703389 () Bool)

(assert (=> b!6101402 (= e!3721248 (and tp!1703388 tp!1703389))))

(declare-fun b!6101401 () Bool)

(declare-fun tp!1703391 () Bool)

(assert (=> b!6101401 (= e!3721248 tp!1703391)))

(declare-fun b!6101399 () Bool)

(assert (=> b!6101399 (= e!3721248 tp_is_empty!41349)))

(assert (=> b!6100547 (= tp!1703297 e!3721248)))

(assert (= (and b!6100547 (is-ElementMatch!16048 (h!70767 (exprs!5932 (h!70768 zl!343))))) b!6101399))

(assert (= (and b!6100547 (is-Concat!24893 (h!70767 (exprs!5932 (h!70768 zl!343))))) b!6101400))

(assert (= (and b!6100547 (is-Star!16048 (h!70767 (exprs!5932 (h!70768 zl!343))))) b!6101401))

(assert (= (and b!6100547 (is-Union!16048 (h!70767 (exprs!5932 (h!70768 zl!343))))) b!6101402))

(declare-fun b!6101403 () Bool)

(declare-fun e!3721249 () Bool)

(declare-fun tp!1703392 () Bool)

(declare-fun tp!1703393 () Bool)

(assert (=> b!6101403 (= e!3721249 (and tp!1703392 tp!1703393))))

(assert (=> b!6100547 (= tp!1703298 e!3721249)))

(assert (= (and b!6100547 (is-Cons!64319 (t!377892 (exprs!5932 (h!70768 zl!343))))) b!6101403))

(declare-fun b!6101404 () Bool)

(declare-fun e!3721250 () Bool)

(declare-fun tp!1703394 () Bool)

(declare-fun tp!1703395 () Bool)

(assert (=> b!6101404 (= e!3721250 (and tp!1703394 tp!1703395))))

(assert (=> b!6100497 (= tp!1703248 e!3721250)))

(assert (= (and b!6100497 (is-Cons!64319 (exprs!5932 setElem!41205))) b!6101404))

(declare-fun b!6101406 () Bool)

(declare-fun e!3721251 () Bool)

(declare-fun tp!1703396 () Bool)

(declare-fun tp!1703399 () Bool)

(assert (=> b!6101406 (= e!3721251 (and tp!1703396 tp!1703399))))

(declare-fun b!6101408 () Bool)

(declare-fun tp!1703397 () Bool)

(declare-fun tp!1703398 () Bool)

(assert (=> b!6101408 (= e!3721251 (and tp!1703397 tp!1703398))))

(declare-fun b!6101407 () Bool)

(declare-fun tp!1703400 () Bool)

(assert (=> b!6101407 (= e!3721251 tp!1703400)))

(declare-fun b!6101405 () Bool)

(assert (=> b!6101405 (= e!3721251 tp_is_empty!41349)))

(assert (=> b!6100534 (= tp!1703279 e!3721251)))

(assert (= (and b!6100534 (is-ElementMatch!16048 (regOne!32609 (reg!16377 r!7292)))) b!6101405))

(assert (= (and b!6100534 (is-Concat!24893 (regOne!32609 (reg!16377 r!7292)))) b!6101406))

(assert (= (and b!6100534 (is-Star!16048 (regOne!32609 (reg!16377 r!7292)))) b!6101407))

(assert (= (and b!6100534 (is-Union!16048 (regOne!32609 (reg!16377 r!7292)))) b!6101408))

(declare-fun b!6101410 () Bool)

(declare-fun e!3721252 () Bool)

(declare-fun tp!1703401 () Bool)

(declare-fun tp!1703404 () Bool)

(assert (=> b!6101410 (= e!3721252 (and tp!1703401 tp!1703404))))

(declare-fun b!6101412 () Bool)

(declare-fun tp!1703402 () Bool)

(declare-fun tp!1703403 () Bool)

(assert (=> b!6101412 (= e!3721252 (and tp!1703402 tp!1703403))))

(declare-fun b!6101411 () Bool)

(declare-fun tp!1703405 () Bool)

(assert (=> b!6101411 (= e!3721252 tp!1703405)))

(declare-fun b!6101409 () Bool)

(assert (=> b!6101409 (= e!3721252 tp_is_empty!41349)))

(assert (=> b!6100534 (= tp!1703280 e!3721252)))

(assert (= (and b!6100534 (is-ElementMatch!16048 (regTwo!32609 (reg!16377 r!7292)))) b!6101409))

(assert (= (and b!6100534 (is-Concat!24893 (regTwo!32609 (reg!16377 r!7292)))) b!6101410))

(assert (= (and b!6100534 (is-Star!16048 (regTwo!32609 (reg!16377 r!7292)))) b!6101411))

(assert (= (and b!6100534 (is-Union!16048 (regTwo!32609 (reg!16377 r!7292)))) b!6101412))

(declare-fun condSetEmpty!41214 () Bool)

(assert (=> setNonEmpty!41205 (= condSetEmpty!41214 (= setRest!41205 (as set.empty (Set Context!10864))))))

(declare-fun setRes!41214 () Bool)

(assert (=> setNonEmpty!41205 (= tp!1703247 setRes!41214)))

(declare-fun setIsEmpty!41214 () Bool)

(assert (=> setIsEmpty!41214 setRes!41214))

(declare-fun setNonEmpty!41214 () Bool)

(declare-fun e!3721253 () Bool)

(declare-fun tp!1703406 () Bool)

(declare-fun setElem!41214 () Context!10864)

(assert (=> setNonEmpty!41214 (= setRes!41214 (and tp!1703406 (inv!83368 setElem!41214) e!3721253))))

(declare-fun setRest!41214 () (Set Context!10864))

(assert (=> setNonEmpty!41214 (= setRest!41205 (set.union (set.insert setElem!41214 (as set.empty (Set Context!10864))) setRest!41214))))

(declare-fun b!6101413 () Bool)

(declare-fun tp!1703407 () Bool)

(assert (=> b!6101413 (= e!3721253 tp!1703407)))

(assert (= (and setNonEmpty!41205 condSetEmpty!41214) setIsEmpty!41214))

(assert (= (and setNonEmpty!41205 (not condSetEmpty!41214)) setNonEmpty!41214))

(assert (= setNonEmpty!41214 b!6101413))

(declare-fun m!6953994 () Bool)

(assert (=> setNonEmpty!41214 m!6953994))

(declare-fun b!6101415 () Bool)

(declare-fun e!3721254 () Bool)

(declare-fun tp!1703408 () Bool)

(declare-fun tp!1703411 () Bool)

(assert (=> b!6101415 (= e!3721254 (and tp!1703408 tp!1703411))))

(declare-fun b!6101417 () Bool)

(declare-fun tp!1703409 () Bool)

(declare-fun tp!1703410 () Bool)

(assert (=> b!6101417 (= e!3721254 (and tp!1703409 tp!1703410))))

(declare-fun b!6101416 () Bool)

(declare-fun tp!1703412 () Bool)

(assert (=> b!6101416 (= e!3721254 tp!1703412)))

(declare-fun b!6101414 () Bool)

(assert (=> b!6101414 (= e!3721254 tp_is_empty!41349)))

(assert (=> b!6100533 (= tp!1703282 e!3721254)))

(assert (= (and b!6100533 (is-ElementMatch!16048 (reg!16377 (reg!16377 r!7292)))) b!6101414))

(assert (= (and b!6100533 (is-Concat!24893 (reg!16377 (reg!16377 r!7292)))) b!6101415))

(assert (= (and b!6100533 (is-Star!16048 (reg!16377 (reg!16377 r!7292)))) b!6101416))

(assert (= (and b!6100533 (is-Union!16048 (reg!16377 (reg!16377 r!7292)))) b!6101417))

(declare-fun b!6101419 () Bool)

(declare-fun e!3721255 () Bool)

(declare-fun tp!1703413 () Bool)

(declare-fun tp!1703416 () Bool)

(assert (=> b!6101419 (= e!3721255 (and tp!1703413 tp!1703416))))

(declare-fun b!6101421 () Bool)

(declare-fun tp!1703414 () Bool)

(declare-fun tp!1703415 () Bool)

(assert (=> b!6101421 (= e!3721255 (and tp!1703414 tp!1703415))))

(declare-fun b!6101420 () Bool)

(declare-fun tp!1703417 () Bool)

(assert (=> b!6101420 (= e!3721255 tp!1703417)))

(declare-fun b!6101418 () Bool)

(assert (=> b!6101418 (= e!3721255 tp_is_empty!41349)))

(assert (=> b!6100532 (= tp!1703278 e!3721255)))

(assert (= (and b!6100532 (is-ElementMatch!16048 (regOne!32608 (reg!16377 r!7292)))) b!6101418))

(assert (= (and b!6100532 (is-Concat!24893 (regOne!32608 (reg!16377 r!7292)))) b!6101419))

(assert (= (and b!6100532 (is-Star!16048 (regOne!32608 (reg!16377 r!7292)))) b!6101420))

(assert (= (and b!6100532 (is-Union!16048 (regOne!32608 (reg!16377 r!7292)))) b!6101421))

(declare-fun b!6101423 () Bool)

(declare-fun e!3721256 () Bool)

(declare-fun tp!1703418 () Bool)

(declare-fun tp!1703421 () Bool)

(assert (=> b!6101423 (= e!3721256 (and tp!1703418 tp!1703421))))

(declare-fun b!6101425 () Bool)

(declare-fun tp!1703419 () Bool)

(declare-fun tp!1703420 () Bool)

(assert (=> b!6101425 (= e!3721256 (and tp!1703419 tp!1703420))))

(declare-fun b!6101424 () Bool)

(declare-fun tp!1703422 () Bool)

(assert (=> b!6101424 (= e!3721256 tp!1703422)))

(declare-fun b!6101422 () Bool)

(assert (=> b!6101422 (= e!3721256 tp_is_empty!41349)))

(assert (=> b!6100532 (= tp!1703281 e!3721256)))

(assert (= (and b!6100532 (is-ElementMatch!16048 (regTwo!32608 (reg!16377 r!7292)))) b!6101422))

(assert (= (and b!6100532 (is-Concat!24893 (regTwo!32608 (reg!16377 r!7292)))) b!6101423))

(assert (= (and b!6100532 (is-Star!16048 (regTwo!32608 (reg!16377 r!7292)))) b!6101424))

(assert (= (and b!6100532 (is-Union!16048 (regTwo!32608 (reg!16377 r!7292)))) b!6101425))

(declare-fun b!6101427 () Bool)

(declare-fun e!3721257 () Bool)

(declare-fun tp!1703423 () Bool)

(declare-fun tp!1703426 () Bool)

(assert (=> b!6101427 (= e!3721257 (and tp!1703423 tp!1703426))))

(declare-fun b!6101429 () Bool)

(declare-fun tp!1703424 () Bool)

(declare-fun tp!1703425 () Bool)

(assert (=> b!6101429 (= e!3721257 (and tp!1703424 tp!1703425))))

(declare-fun b!6101428 () Bool)

(declare-fun tp!1703427 () Bool)

(assert (=> b!6101428 (= e!3721257 tp!1703427)))

(declare-fun b!6101426 () Bool)

(assert (=> b!6101426 (= e!3721257 tp_is_empty!41349)))

(assert (=> b!6100525 (= tp!1703271 e!3721257)))

(assert (= (and b!6100525 (is-ElementMatch!16048 (regOne!32609 (regTwo!32608 r!7292)))) b!6101426))

(assert (= (and b!6100525 (is-Concat!24893 (regOne!32609 (regTwo!32608 r!7292)))) b!6101427))

(assert (= (and b!6100525 (is-Star!16048 (regOne!32609 (regTwo!32608 r!7292)))) b!6101428))

(assert (= (and b!6100525 (is-Union!16048 (regOne!32609 (regTwo!32608 r!7292)))) b!6101429))

(declare-fun b!6101431 () Bool)

(declare-fun e!3721258 () Bool)

(declare-fun tp!1703428 () Bool)

(declare-fun tp!1703431 () Bool)

(assert (=> b!6101431 (= e!3721258 (and tp!1703428 tp!1703431))))

(declare-fun b!6101433 () Bool)

(declare-fun tp!1703429 () Bool)

(declare-fun tp!1703430 () Bool)

(assert (=> b!6101433 (= e!3721258 (and tp!1703429 tp!1703430))))

(declare-fun b!6101432 () Bool)

(declare-fun tp!1703432 () Bool)

(assert (=> b!6101432 (= e!3721258 tp!1703432)))

(declare-fun b!6101430 () Bool)

(assert (=> b!6101430 (= e!3721258 tp_is_empty!41349)))

(assert (=> b!6100525 (= tp!1703272 e!3721258)))

(assert (= (and b!6100525 (is-ElementMatch!16048 (regTwo!32609 (regTwo!32608 r!7292)))) b!6101430))

(assert (= (and b!6100525 (is-Concat!24893 (regTwo!32609 (regTwo!32608 r!7292)))) b!6101431))

(assert (= (and b!6100525 (is-Star!16048 (regTwo!32609 (regTwo!32608 r!7292)))) b!6101432))

(assert (= (and b!6100525 (is-Union!16048 (regTwo!32609 (regTwo!32608 r!7292)))) b!6101433))

(declare-fun b!6101435 () Bool)

(declare-fun e!3721259 () Bool)

(declare-fun tp!1703433 () Bool)

(declare-fun tp!1703436 () Bool)

(assert (=> b!6101435 (= e!3721259 (and tp!1703433 tp!1703436))))

(declare-fun b!6101437 () Bool)

(declare-fun tp!1703434 () Bool)

(declare-fun tp!1703435 () Bool)

(assert (=> b!6101437 (= e!3721259 (and tp!1703434 tp!1703435))))

(declare-fun b!6101436 () Bool)

(declare-fun tp!1703437 () Bool)

(assert (=> b!6101436 (= e!3721259 tp!1703437)))

(declare-fun b!6101434 () Bool)

(assert (=> b!6101434 (= e!3721259 tp_is_empty!41349)))

(assert (=> b!6100524 (= tp!1703274 e!3721259)))

(assert (= (and b!6100524 (is-ElementMatch!16048 (reg!16377 (regTwo!32608 r!7292)))) b!6101434))

(assert (= (and b!6100524 (is-Concat!24893 (reg!16377 (regTwo!32608 r!7292)))) b!6101435))

(assert (= (and b!6100524 (is-Star!16048 (reg!16377 (regTwo!32608 r!7292)))) b!6101436))

(assert (= (and b!6100524 (is-Union!16048 (reg!16377 (regTwo!32608 r!7292)))) b!6101437))

(declare-fun b!6101439 () Bool)

(declare-fun e!3721260 () Bool)

(declare-fun tp!1703438 () Bool)

(declare-fun tp!1703441 () Bool)

(assert (=> b!6101439 (= e!3721260 (and tp!1703438 tp!1703441))))

(declare-fun b!6101441 () Bool)

(declare-fun tp!1703439 () Bool)

(declare-fun tp!1703440 () Bool)

(assert (=> b!6101441 (= e!3721260 (and tp!1703439 tp!1703440))))

(declare-fun b!6101440 () Bool)

(declare-fun tp!1703442 () Bool)

(assert (=> b!6101440 (= e!3721260 tp!1703442)))

(declare-fun b!6101438 () Bool)

(assert (=> b!6101438 (= e!3721260 tp_is_empty!41349)))

(assert (=> b!6100538 (= tp!1703284 e!3721260)))

(assert (= (and b!6100538 (is-ElementMatch!16048 (regOne!32609 (regOne!32609 r!7292)))) b!6101438))

(assert (= (and b!6100538 (is-Concat!24893 (regOne!32609 (regOne!32609 r!7292)))) b!6101439))

(assert (= (and b!6100538 (is-Star!16048 (regOne!32609 (regOne!32609 r!7292)))) b!6101440))

(assert (= (and b!6100538 (is-Union!16048 (regOne!32609 (regOne!32609 r!7292)))) b!6101441))

(declare-fun b!6101443 () Bool)

(declare-fun e!3721261 () Bool)

(declare-fun tp!1703443 () Bool)

(declare-fun tp!1703446 () Bool)

(assert (=> b!6101443 (= e!3721261 (and tp!1703443 tp!1703446))))

(declare-fun b!6101445 () Bool)

(declare-fun tp!1703444 () Bool)

(declare-fun tp!1703445 () Bool)

(assert (=> b!6101445 (= e!3721261 (and tp!1703444 tp!1703445))))

(declare-fun b!6101444 () Bool)

(declare-fun tp!1703447 () Bool)

(assert (=> b!6101444 (= e!3721261 tp!1703447)))

(declare-fun b!6101442 () Bool)

(assert (=> b!6101442 (= e!3721261 tp_is_empty!41349)))

(assert (=> b!6100538 (= tp!1703285 e!3721261)))

(assert (= (and b!6100538 (is-ElementMatch!16048 (regTwo!32609 (regOne!32609 r!7292)))) b!6101442))

(assert (= (and b!6100538 (is-Concat!24893 (regTwo!32609 (regOne!32609 r!7292)))) b!6101443))

(assert (= (and b!6100538 (is-Star!16048 (regTwo!32609 (regOne!32609 r!7292)))) b!6101444))

(assert (= (and b!6100538 (is-Union!16048 (regTwo!32609 (regOne!32609 r!7292)))) b!6101445))

(declare-fun b!6101447 () Bool)

(declare-fun e!3721262 () Bool)

(declare-fun tp!1703448 () Bool)

(declare-fun tp!1703451 () Bool)

(assert (=> b!6101447 (= e!3721262 (and tp!1703448 tp!1703451))))

(declare-fun b!6101449 () Bool)

(declare-fun tp!1703449 () Bool)

(declare-fun tp!1703450 () Bool)

(assert (=> b!6101449 (= e!3721262 (and tp!1703449 tp!1703450))))

(declare-fun b!6101448 () Bool)

(declare-fun tp!1703452 () Bool)

(assert (=> b!6101448 (= e!3721262 tp!1703452)))

(declare-fun b!6101446 () Bool)

(assert (=> b!6101446 (= e!3721262 tp_is_empty!41349)))

(assert (=> b!6100523 (= tp!1703270 e!3721262)))

(assert (= (and b!6100523 (is-ElementMatch!16048 (regOne!32608 (regTwo!32608 r!7292)))) b!6101446))

(assert (= (and b!6100523 (is-Concat!24893 (regOne!32608 (regTwo!32608 r!7292)))) b!6101447))

(assert (= (and b!6100523 (is-Star!16048 (regOne!32608 (regTwo!32608 r!7292)))) b!6101448))

(assert (= (and b!6100523 (is-Union!16048 (regOne!32608 (regTwo!32608 r!7292)))) b!6101449))

(declare-fun b!6101451 () Bool)

(declare-fun e!3721263 () Bool)

(declare-fun tp!1703453 () Bool)

(declare-fun tp!1703456 () Bool)

(assert (=> b!6101451 (= e!3721263 (and tp!1703453 tp!1703456))))

(declare-fun b!6101453 () Bool)

(declare-fun tp!1703454 () Bool)

(declare-fun tp!1703455 () Bool)

(assert (=> b!6101453 (= e!3721263 (and tp!1703454 tp!1703455))))

(declare-fun b!6101452 () Bool)

(declare-fun tp!1703457 () Bool)

(assert (=> b!6101452 (= e!3721263 tp!1703457)))

(declare-fun b!6101450 () Bool)

(assert (=> b!6101450 (= e!3721263 tp_is_empty!41349)))

(assert (=> b!6100523 (= tp!1703273 e!3721263)))

(assert (= (and b!6100523 (is-ElementMatch!16048 (regTwo!32608 (regTwo!32608 r!7292)))) b!6101450))

(assert (= (and b!6100523 (is-Concat!24893 (regTwo!32608 (regTwo!32608 r!7292)))) b!6101451))

(assert (= (and b!6100523 (is-Star!16048 (regTwo!32608 (regTwo!32608 r!7292)))) b!6101452))

(assert (= (and b!6100523 (is-Union!16048 (regTwo!32608 (regTwo!32608 r!7292)))) b!6101453))

(declare-fun b!6101455 () Bool)

(declare-fun e!3721264 () Bool)

(declare-fun tp!1703458 () Bool)

(declare-fun tp!1703461 () Bool)

(assert (=> b!6101455 (= e!3721264 (and tp!1703458 tp!1703461))))

(declare-fun b!6101457 () Bool)

(declare-fun tp!1703459 () Bool)

(declare-fun tp!1703460 () Bool)

(assert (=> b!6101457 (= e!3721264 (and tp!1703459 tp!1703460))))

(declare-fun b!6101456 () Bool)

(declare-fun tp!1703462 () Bool)

(assert (=> b!6101456 (= e!3721264 tp!1703462)))

(declare-fun b!6101454 () Bool)

(assert (=> b!6101454 (= e!3721264 tp_is_empty!41349)))

(assert (=> b!6100537 (= tp!1703287 e!3721264)))

(assert (= (and b!6100537 (is-ElementMatch!16048 (reg!16377 (regOne!32609 r!7292)))) b!6101454))

(assert (= (and b!6100537 (is-Concat!24893 (reg!16377 (regOne!32609 r!7292)))) b!6101455))

(assert (= (and b!6100537 (is-Star!16048 (reg!16377 (regOne!32609 r!7292)))) b!6101456))

(assert (= (and b!6100537 (is-Union!16048 (reg!16377 (regOne!32609 r!7292)))) b!6101457))

(declare-fun b!6101459 () Bool)

(declare-fun e!3721265 () Bool)

(declare-fun tp!1703463 () Bool)

(declare-fun tp!1703466 () Bool)

(assert (=> b!6101459 (= e!3721265 (and tp!1703463 tp!1703466))))

(declare-fun b!6101461 () Bool)

(declare-fun tp!1703464 () Bool)

(declare-fun tp!1703465 () Bool)

(assert (=> b!6101461 (= e!3721265 (and tp!1703464 tp!1703465))))

(declare-fun b!6101460 () Bool)

(declare-fun tp!1703467 () Bool)

(assert (=> b!6101460 (= e!3721265 tp!1703467)))

(declare-fun b!6101458 () Bool)

(assert (=> b!6101458 (= e!3721265 tp_is_empty!41349)))

(assert (=> b!6100536 (= tp!1703283 e!3721265)))

(assert (= (and b!6100536 (is-ElementMatch!16048 (regOne!32608 (regOne!32609 r!7292)))) b!6101458))

(assert (= (and b!6100536 (is-Concat!24893 (regOne!32608 (regOne!32609 r!7292)))) b!6101459))

(assert (= (and b!6100536 (is-Star!16048 (regOne!32608 (regOne!32609 r!7292)))) b!6101460))

(assert (= (and b!6100536 (is-Union!16048 (regOne!32608 (regOne!32609 r!7292)))) b!6101461))

(declare-fun b!6101463 () Bool)

(declare-fun e!3721266 () Bool)

(declare-fun tp!1703468 () Bool)

(declare-fun tp!1703471 () Bool)

(assert (=> b!6101463 (= e!3721266 (and tp!1703468 tp!1703471))))

(declare-fun b!6101465 () Bool)

(declare-fun tp!1703469 () Bool)

(declare-fun tp!1703470 () Bool)

(assert (=> b!6101465 (= e!3721266 (and tp!1703469 tp!1703470))))

(declare-fun b!6101464 () Bool)

(declare-fun tp!1703472 () Bool)

(assert (=> b!6101464 (= e!3721266 tp!1703472)))

(declare-fun b!6101462 () Bool)

(assert (=> b!6101462 (= e!3721266 tp_is_empty!41349)))

(assert (=> b!6100536 (= tp!1703286 e!3721266)))

(assert (= (and b!6100536 (is-ElementMatch!16048 (regTwo!32608 (regOne!32609 r!7292)))) b!6101462))

(assert (= (and b!6100536 (is-Concat!24893 (regTwo!32608 (regOne!32609 r!7292)))) b!6101463))

(assert (= (and b!6100536 (is-Star!16048 (regTwo!32608 (regOne!32609 r!7292)))) b!6101464))

(assert (= (and b!6100536 (is-Union!16048 (regTwo!32608 (regOne!32609 r!7292)))) b!6101465))

(declare-fun b!6101466 () Bool)

(declare-fun e!3721267 () Bool)

(declare-fun tp!1703473 () Bool)

(assert (=> b!6101466 (= e!3721267 (and tp_is_empty!41349 tp!1703473))))

(assert (=> b!6100530 (= tp!1703277 e!3721267)))

(assert (= (and b!6100530 (is-Cons!64321 (t!377894 (t!377894 s!2326)))) b!6101466))

(declare-fun b!6101468 () Bool)

(declare-fun e!3721268 () Bool)

(declare-fun tp!1703474 () Bool)

(declare-fun tp!1703477 () Bool)

(assert (=> b!6101468 (= e!3721268 (and tp!1703474 tp!1703477))))

(declare-fun b!6101470 () Bool)

(declare-fun tp!1703475 () Bool)

(declare-fun tp!1703476 () Bool)

(assert (=> b!6101470 (= e!3721268 (and tp!1703475 tp!1703476))))

(declare-fun b!6101469 () Bool)

(declare-fun tp!1703478 () Bool)

(assert (=> b!6101469 (= e!3721268 tp!1703478)))

(declare-fun b!6101467 () Bool)

(assert (=> b!6101467 (= e!3721268 tp_is_empty!41349)))

(assert (=> b!6100521 (= tp!1703266 e!3721268)))

(assert (= (and b!6100521 (is-ElementMatch!16048 (regOne!32609 (regOne!32608 r!7292)))) b!6101467))

(assert (= (and b!6100521 (is-Concat!24893 (regOne!32609 (regOne!32608 r!7292)))) b!6101468))

(assert (= (and b!6100521 (is-Star!16048 (regOne!32609 (regOne!32608 r!7292)))) b!6101469))

(assert (= (and b!6100521 (is-Union!16048 (regOne!32609 (regOne!32608 r!7292)))) b!6101470))

(declare-fun b!6101472 () Bool)

(declare-fun e!3721269 () Bool)

(declare-fun tp!1703479 () Bool)

(declare-fun tp!1703482 () Bool)

(assert (=> b!6101472 (= e!3721269 (and tp!1703479 tp!1703482))))

(declare-fun b!6101474 () Bool)

(declare-fun tp!1703480 () Bool)

(declare-fun tp!1703481 () Bool)

(assert (=> b!6101474 (= e!3721269 (and tp!1703480 tp!1703481))))

(declare-fun b!6101473 () Bool)

(declare-fun tp!1703483 () Bool)

(assert (=> b!6101473 (= e!3721269 tp!1703483)))

(declare-fun b!6101471 () Bool)

(assert (=> b!6101471 (= e!3721269 tp_is_empty!41349)))

(assert (=> b!6100521 (= tp!1703267 e!3721269)))

(assert (= (and b!6100521 (is-ElementMatch!16048 (regTwo!32609 (regOne!32608 r!7292)))) b!6101471))

(assert (= (and b!6100521 (is-Concat!24893 (regTwo!32609 (regOne!32608 r!7292)))) b!6101472))

(assert (= (and b!6100521 (is-Star!16048 (regTwo!32609 (regOne!32608 r!7292)))) b!6101473))

(assert (= (and b!6100521 (is-Union!16048 (regTwo!32609 (regOne!32608 r!7292)))) b!6101474))

(declare-fun b!6101476 () Bool)

(declare-fun e!3721270 () Bool)

(declare-fun tp!1703484 () Bool)

(declare-fun tp!1703487 () Bool)

(assert (=> b!6101476 (= e!3721270 (and tp!1703484 tp!1703487))))

(declare-fun b!6101478 () Bool)

(declare-fun tp!1703485 () Bool)

(declare-fun tp!1703486 () Bool)

(assert (=> b!6101478 (= e!3721270 (and tp!1703485 tp!1703486))))

(declare-fun b!6101477 () Bool)

(declare-fun tp!1703488 () Bool)

(assert (=> b!6101477 (= e!3721270 tp!1703488)))

(declare-fun b!6101475 () Bool)

(assert (=> b!6101475 (= e!3721270 tp_is_empty!41349)))

(assert (=> b!6100548 (= tp!1703299 e!3721270)))

(assert (= (and b!6100548 (is-ElementMatch!16048 (h!70767 (exprs!5932 setElem!41199)))) b!6101475))

(assert (= (and b!6100548 (is-Concat!24893 (h!70767 (exprs!5932 setElem!41199)))) b!6101476))

(assert (= (and b!6100548 (is-Star!16048 (h!70767 (exprs!5932 setElem!41199)))) b!6101477))

(assert (= (and b!6100548 (is-Union!16048 (h!70767 (exprs!5932 setElem!41199)))) b!6101478))

(declare-fun b!6101479 () Bool)

(declare-fun e!3721271 () Bool)

(declare-fun tp!1703489 () Bool)

(declare-fun tp!1703490 () Bool)

(assert (=> b!6101479 (= e!3721271 (and tp!1703489 tp!1703490))))

(assert (=> b!6100548 (= tp!1703300 e!3721271)))

(assert (= (and b!6100548 (is-Cons!64319 (t!377892 (exprs!5932 setElem!41199)))) b!6101479))

(declare-fun b!6101480 () Bool)

(declare-fun e!3721272 () Bool)

(declare-fun tp!1703491 () Bool)

(declare-fun tp!1703492 () Bool)

(assert (=> b!6101480 (= e!3721272 (and tp!1703491 tp!1703492))))

(assert (=> b!6100505 (= tp!1703253 e!3721272)))

(assert (= (and b!6100505 (is-Cons!64319 (exprs!5932 (h!70768 (t!377893 zl!343))))) b!6101480))

(declare-fun b!6101482 () Bool)

(declare-fun e!3721273 () Bool)

(declare-fun tp!1703493 () Bool)

(declare-fun tp!1703496 () Bool)

(assert (=> b!6101482 (= e!3721273 (and tp!1703493 tp!1703496))))

(declare-fun b!6101484 () Bool)

(declare-fun tp!1703494 () Bool)

(declare-fun tp!1703495 () Bool)

(assert (=> b!6101484 (= e!3721273 (and tp!1703494 tp!1703495))))

(declare-fun b!6101483 () Bool)

(declare-fun tp!1703497 () Bool)

(assert (=> b!6101483 (= e!3721273 tp!1703497)))

(declare-fun b!6101481 () Bool)

(assert (=> b!6101481 (= e!3721273 tp_is_empty!41349)))

(assert (=> b!6100542 (= tp!1703289 e!3721273)))

(assert (= (and b!6100542 (is-ElementMatch!16048 (regOne!32609 (regTwo!32609 r!7292)))) b!6101481))

(assert (= (and b!6100542 (is-Concat!24893 (regOne!32609 (regTwo!32609 r!7292)))) b!6101482))

(assert (= (and b!6100542 (is-Star!16048 (regOne!32609 (regTwo!32609 r!7292)))) b!6101483))

(assert (= (and b!6100542 (is-Union!16048 (regOne!32609 (regTwo!32609 r!7292)))) b!6101484))

(declare-fun b!6101486 () Bool)

(declare-fun e!3721274 () Bool)

(declare-fun tp!1703498 () Bool)

(declare-fun tp!1703501 () Bool)

(assert (=> b!6101486 (= e!3721274 (and tp!1703498 tp!1703501))))

(declare-fun b!6101488 () Bool)

(declare-fun tp!1703499 () Bool)

(declare-fun tp!1703500 () Bool)

(assert (=> b!6101488 (= e!3721274 (and tp!1703499 tp!1703500))))

(declare-fun b!6101487 () Bool)

(declare-fun tp!1703502 () Bool)

(assert (=> b!6101487 (= e!3721274 tp!1703502)))

(declare-fun b!6101485 () Bool)

(assert (=> b!6101485 (= e!3721274 tp_is_empty!41349)))

(assert (=> b!6100542 (= tp!1703290 e!3721274)))

(assert (= (and b!6100542 (is-ElementMatch!16048 (regTwo!32609 (regTwo!32609 r!7292)))) b!6101485))

(assert (= (and b!6100542 (is-Concat!24893 (regTwo!32609 (regTwo!32609 r!7292)))) b!6101486))

(assert (= (and b!6100542 (is-Star!16048 (regTwo!32609 (regTwo!32609 r!7292)))) b!6101487))

(assert (= (and b!6100542 (is-Union!16048 (regTwo!32609 (regTwo!32609 r!7292)))) b!6101488))

(declare-fun b!6101490 () Bool)

(declare-fun e!3721275 () Bool)

(declare-fun tp!1703503 () Bool)

(declare-fun tp!1703506 () Bool)

(assert (=> b!6101490 (= e!3721275 (and tp!1703503 tp!1703506))))

(declare-fun b!6101492 () Bool)

(declare-fun tp!1703504 () Bool)

(declare-fun tp!1703505 () Bool)

(assert (=> b!6101492 (= e!3721275 (and tp!1703504 tp!1703505))))

(declare-fun b!6101491 () Bool)

(declare-fun tp!1703507 () Bool)

(assert (=> b!6101491 (= e!3721275 tp!1703507)))

(declare-fun b!6101489 () Bool)

(assert (=> b!6101489 (= e!3721275 tp_is_empty!41349)))

(assert (=> b!6100520 (= tp!1703269 e!3721275)))

(assert (= (and b!6100520 (is-ElementMatch!16048 (reg!16377 (regOne!32608 r!7292)))) b!6101489))

(assert (= (and b!6100520 (is-Concat!24893 (reg!16377 (regOne!32608 r!7292)))) b!6101490))

(assert (= (and b!6100520 (is-Star!16048 (reg!16377 (regOne!32608 r!7292)))) b!6101491))

(assert (= (and b!6100520 (is-Union!16048 (reg!16377 (regOne!32608 r!7292)))) b!6101492))

(declare-fun b!6101494 () Bool)

(declare-fun e!3721277 () Bool)

(declare-fun tp!1703508 () Bool)

(assert (=> b!6101494 (= e!3721277 tp!1703508)))

(declare-fun b!6101493 () Bool)

(declare-fun tp!1703509 () Bool)

(declare-fun e!3721276 () Bool)

(assert (=> b!6101493 (= e!3721276 (and (inv!83368 (h!70768 (t!377893 (t!377893 zl!343)))) e!3721277 tp!1703509))))

(assert (=> b!6100504 (= tp!1703254 e!3721276)))

(assert (= b!6101493 b!6101494))

(assert (= (and b!6100504 (is-Cons!64320 (t!377893 (t!377893 zl!343)))) b!6101493))

(declare-fun m!6953996 () Bool)

(assert (=> b!6101493 m!6953996))

(declare-fun b!6101496 () Bool)

(declare-fun e!3721278 () Bool)

(declare-fun tp!1703510 () Bool)

(declare-fun tp!1703513 () Bool)

(assert (=> b!6101496 (= e!3721278 (and tp!1703510 tp!1703513))))

(declare-fun b!6101498 () Bool)

(declare-fun tp!1703511 () Bool)

(declare-fun tp!1703512 () Bool)

(assert (=> b!6101498 (= e!3721278 (and tp!1703511 tp!1703512))))

(declare-fun b!6101497 () Bool)

(declare-fun tp!1703514 () Bool)

(assert (=> b!6101497 (= e!3721278 tp!1703514)))

(declare-fun b!6101495 () Bool)

(assert (=> b!6101495 (= e!3721278 tp_is_empty!41349)))

(assert (=> b!6100541 (= tp!1703292 e!3721278)))

(assert (= (and b!6100541 (is-ElementMatch!16048 (reg!16377 (regTwo!32609 r!7292)))) b!6101495))

(assert (= (and b!6100541 (is-Concat!24893 (reg!16377 (regTwo!32609 r!7292)))) b!6101496))

(assert (= (and b!6100541 (is-Star!16048 (reg!16377 (regTwo!32609 r!7292)))) b!6101497))

(assert (= (and b!6100541 (is-Union!16048 (reg!16377 (regTwo!32609 r!7292)))) b!6101498))

(declare-fun b!6101500 () Bool)

(declare-fun e!3721279 () Bool)

(declare-fun tp!1703515 () Bool)

(declare-fun tp!1703518 () Bool)

(assert (=> b!6101500 (= e!3721279 (and tp!1703515 tp!1703518))))

(declare-fun b!6101502 () Bool)

(declare-fun tp!1703516 () Bool)

(declare-fun tp!1703517 () Bool)

(assert (=> b!6101502 (= e!3721279 (and tp!1703516 tp!1703517))))

(declare-fun b!6101501 () Bool)

(declare-fun tp!1703519 () Bool)

(assert (=> b!6101501 (= e!3721279 tp!1703519)))

(declare-fun b!6101499 () Bool)

(assert (=> b!6101499 (= e!3721279 tp_is_empty!41349)))

(assert (=> b!6100519 (= tp!1703265 e!3721279)))

(assert (= (and b!6100519 (is-ElementMatch!16048 (regOne!32608 (regOne!32608 r!7292)))) b!6101499))

(assert (= (and b!6100519 (is-Concat!24893 (regOne!32608 (regOne!32608 r!7292)))) b!6101500))

(assert (= (and b!6100519 (is-Star!16048 (regOne!32608 (regOne!32608 r!7292)))) b!6101501))

(assert (= (and b!6100519 (is-Union!16048 (regOne!32608 (regOne!32608 r!7292)))) b!6101502))

(declare-fun b!6101504 () Bool)

(declare-fun e!3721280 () Bool)

(declare-fun tp!1703520 () Bool)

(declare-fun tp!1703523 () Bool)

(assert (=> b!6101504 (= e!3721280 (and tp!1703520 tp!1703523))))

(declare-fun b!6101506 () Bool)

(declare-fun tp!1703521 () Bool)

(declare-fun tp!1703522 () Bool)

(assert (=> b!6101506 (= e!3721280 (and tp!1703521 tp!1703522))))

(declare-fun b!6101505 () Bool)

(declare-fun tp!1703524 () Bool)

(assert (=> b!6101505 (= e!3721280 tp!1703524)))

(declare-fun b!6101503 () Bool)

(assert (=> b!6101503 (= e!3721280 tp_is_empty!41349)))

(assert (=> b!6100519 (= tp!1703268 e!3721280)))

(assert (= (and b!6100519 (is-ElementMatch!16048 (regTwo!32608 (regOne!32608 r!7292)))) b!6101503))

(assert (= (and b!6100519 (is-Concat!24893 (regTwo!32608 (regOne!32608 r!7292)))) b!6101504))

(assert (= (and b!6100519 (is-Star!16048 (regTwo!32608 (regOne!32608 r!7292)))) b!6101505))

(assert (= (and b!6100519 (is-Union!16048 (regTwo!32608 (regOne!32608 r!7292)))) b!6101506))

(declare-fun b_lambda!232441 () Bool)

(assert (= b_lambda!232423 (or d!1912204 b_lambda!232441)))

(declare-fun bs!1515107 () Bool)

(declare-fun d!1912592 () Bool)

(assert (= bs!1515107 (and d!1912592 d!1912204)))

(assert (=> bs!1515107 (= (dynLambda!25325 lambda!332255 (h!70767 (exprs!5932 setElem!41199))) (validRegex!7784 (h!70767 (exprs!5932 setElem!41199))))))

(declare-fun m!6953998 () Bool)

(assert (=> bs!1515107 m!6953998))

(assert (=> b!6101081 d!1912592))

(declare-fun b_lambda!232443 () Bool)

(assert (= b_lambda!232419 (or d!1912206 b_lambda!232443)))

(declare-fun bs!1515108 () Bool)

(declare-fun d!1912594 () Bool)

(assert (= bs!1515108 (and d!1912594 d!1912206)))

(assert (=> bs!1515108 (= (dynLambda!25325 lambda!332256 (h!70767 (exprs!5932 (h!70768 zl!343)))) (validRegex!7784 (h!70767 (exprs!5932 (h!70768 zl!343)))))))

(declare-fun m!6954000 () Bool)

(assert (=> bs!1515108 m!6954000))

(assert (=> b!6101039 d!1912594))

(declare-fun b_lambda!232445 () Bool)

(assert (= b_lambda!232427 (or b!6100370 b_lambda!232445)))

(declare-fun bs!1515109 () Bool)

(declare-fun d!1912596 () Bool)

(assert (= bs!1515109 (and d!1912596 b!6100370)))

(assert (=> bs!1515109 (= (dynLambda!25328 lambda!332274 (h!70768 (Cons!64320 lt!2328947 Nil!64320))) (>= lt!2329102 (contextDepth!188 (h!70768 (Cons!64320 lt!2328947 Nil!64320)))))))

(assert (=> bs!1515109 m!6953066))

(assert (=> b!6101173 d!1912596))

(declare-fun b_lambda!232447 () Bool)

(assert (= b_lambda!232425 (or b!6099866 b_lambda!232447)))

(assert (=> d!1912460 d!1912256))

(declare-fun b_lambda!232449 () Bool)

(assert (= b_lambda!232437 (or d!1912242 b_lambda!232449)))

(declare-fun bs!1515110 () Bool)

(declare-fun d!1912598 () Bool)

(assert (= bs!1515110 (and d!1912598 d!1912242)))

(assert (=> bs!1515110 (= (dynLambda!25325 lambda!332301 (h!70767 (exprs!5932 (h!70768 zl!343)))) (validRegex!7784 (h!70767 (exprs!5932 (h!70768 zl!343)))))))

(assert (=> bs!1515110 m!6954000))

(assert (=> b!6101381 d!1912598))

(declare-fun b_lambda!232451 () Bool)

(assert (= b_lambda!232417 (or d!1912210 b_lambda!232451)))

(declare-fun bs!1515111 () Bool)

(declare-fun d!1912600 () Bool)

(assert (= bs!1515111 (and d!1912600 d!1912210)))

(assert (=> bs!1515111 (= (dynLambda!25325 lambda!332259 (h!70767 (unfocusZipperList!1469 zl!343))) (validRegex!7784 (h!70767 (unfocusZipperList!1469 zl!343))))))

(declare-fun m!6954002 () Bool)

(assert (=> bs!1515111 m!6954002))

(assert (=> b!6101012 d!1912600))

(declare-fun b_lambda!232453 () Bool)

(assert (= b_lambda!232421 (or b!6100363 b_lambda!232453)))

(declare-fun bs!1515112 () Bool)

(declare-fun d!1912602 () Bool)

(assert (= bs!1515112 (and d!1912602 b!6100363)))

(assert (=> bs!1515112 (= (dynLambda!25328 lambda!332270 (h!70768 (t!377893 lt!2328937))) (>= lt!2329101 (contextDepth!188 (h!70768 (t!377893 lt!2328937)))))))

(assert (=> bs!1515112 m!6953608))

(assert (=> b!6101068 d!1912602))

(declare-fun b_lambda!232455 () Bool)

(assert (= b_lambda!232431 (or d!1912212 b_lambda!232455)))

(declare-fun bs!1515113 () Bool)

(declare-fun d!1912604 () Bool)

(assert (= bs!1515113 (and d!1912604 d!1912212)))

(assert (=> bs!1515113 (= (dynLambda!25325 lambda!332262 (h!70767 lt!2329088)) (validRegex!7784 (h!70767 lt!2329088)))))

(declare-fun m!6954004 () Bool)

(assert (=> bs!1515113 m!6954004))

(assert (=> b!6101217 d!1912604))

(declare-fun b_lambda!232457 () Bool)

(assert (= b_lambda!232433 (or b!6099866 b_lambda!232457)))

(assert (=> d!1912526 d!1912254))

(declare-fun b_lambda!232459 () Bool)

(assert (= b_lambda!232439 (or b!6100368 b_lambda!232459)))

(declare-fun bs!1515114 () Bool)

(declare-fun d!1912606 () Bool)

(assert (= bs!1515114 (and d!1912606 b!6100368)))

(assert (=> bs!1515114 (= (dynLambda!25328 lambda!332273 (h!70768 (t!377893 (Cons!64320 lt!2328947 Nil!64320)))) (>= lt!2329105 (contextDepth!188 (h!70768 (t!377893 (Cons!64320 lt!2328947 Nil!64320))))))))

(assert (=> bs!1515114 m!6953966))

(assert (=> b!6101389 d!1912606))

(declare-fun b_lambda!232461 () Bool)

(assert (= b_lambda!232435 (or b!6100365 b_lambda!232461)))

(declare-fun bs!1515115 () Bool)

(declare-fun d!1912608 () Bool)

(assert (= bs!1515115 (and d!1912608 b!6100365)))

(assert (=> bs!1515115 (= (dynLambda!25328 lambda!332271 (h!70768 lt!2328937)) (>= lt!2329098 (contextDepth!188 (h!70768 lt!2328937))))))

(assert (=> bs!1515115 m!6953054))

(assert (=> b!6101312 d!1912608))

(declare-fun b_lambda!232463 () Bool)

(assert (= b_lambda!232429 (or b!6099866 b_lambda!232463)))

(assert (=> d!1912496 d!1912258))

(push 1)

(assert (not b!6100832))

(assert (not b!6101473))

(assert (not b!6101133))

(assert (not b!6101417))

(assert (not bm!504479))

(assert (not bm!504369))

(assert (not bm!504413))

(assert (not d!1912412))

(assert (not bm!504408))

(assert (not b!6101061))

(assert (not b!6101423))

(assert (not b!6101233))

(assert (not b!6101425))

(assert (not bm!504357))

(assert (not bm!504401))

(assert (not b!6101479))

(assert (not b!6101437))

(assert (not b!6101119))

(assert (not bm!504461))

(assert (not b!6101164))

(assert (not bm!504464))

(assert (not d!1912450))

(assert (not b!6101172))

(assert (not bm!504423))

(assert (not b!6101103))

(assert (not bm!504467))

(assert (not b!6101154))

(assert (not d!1912332))

(assert (not d!1912492))

(assert (not d!1912396))

(assert (not b!6101478))

(assert (not setNonEmpty!41211))

(assert (not d!1912568))

(assert (not d!1912578))

(assert (not bm!504366))

(assert (not d!1912468))

(assert (not b!6101469))

(assert (not b!6101223))

(assert (not b!6101194))

(assert (not b!6101069))

(assert (not b!6101444))

(assert (not bm!504398))

(assert (not d!1912444))

(assert (not b!6101268))

(assert (not bm!504455))

(assert (not b!6101186))

(assert (not d!1912470))

(assert (not bm!504383))

(assert (not b!6101224))

(assert (not b!6101311))

(assert (not d!1912426))

(assert (not b!6101149))

(assert (not b!6101137))

(assert (not b!6101396))

(assert (not b_lambda!232463))

(assert (not b!6101237))

(assert (not d!1912460))

(assert (not bm!504459))

(assert (not b!6101461))

(assert (not b!6101451))

(assert (not b!6101455))

(assert (not b!6101398))

(assert (not bm!504429))

(assert (not b!6101383))

(assert (not bm!504365))

(assert (not d!1912564))

(assert (not b!6100980))

(assert (not bs!1515108))

(assert (not b!6101386))

(assert (not d!1912380))

(assert (not d!1912508))

(assert (not b!6101486))

(assert (not b_lambda!232453))

(assert (not d!1912494))

(assert (not b!6101278))

(assert (not d!1912526))

(assert (not b!6101251))

(assert (not b!6101331))

(assert (not b!6101477))

(assert (not d!1912378))

(assert (not d!1912548))

(assert (not bm!504432))

(assert (not b!6101421))

(assert (not b!6100876))

(assert (not d!1912352))

(assert (not b!6101147))

(assert (not b_lambda!232459))

(assert (not b!6101140))

(assert (not bm!504384))

(assert (not b!6100950))

(assert (not b!6101243))

(assert (not bm!504390))

(assert (not b!6101443))

(assert (not bm!504355))

(assert (not b!6101504))

(assert (not b!6101053))

(assert (not bm!504392))

(assert (not b!6101406))

(assert (not b!6101250))

(assert (not bm!504438))

(assert (not d!1912364))

(assert (not d!1912452))

(assert (not b!6101385))

(assert (not b!6101245))

(assert (not b!6101482))

(assert (not b!6101024))

(assert (not bm!504352))

(assert (not bs!1515112))

(assert (not b_lambda!232457))

(assert (not d!1912496))

(assert (not b!6100898))

(assert (not bm!504425))

(assert (not b!6101435))

(assert (not b!6101483))

(assert (not b!6100990))

(assert (not b!6101363))

(assert (not b!6100908))

(assert (not b_lambda!232461))

(assert (not b!6101460))

(assert (not b!6101083))

(assert (not b!6101239))

(assert (not b!6101180))

(assert (not bm!504358))

(assert (not d!1912514))

(assert (not bm!504478))

(assert (not b!6101092))

(assert (not d!1912490))

(assert (not bm!504466))

(assert (not bm!504481))

(assert (not b!6101428))

(assert (not bm!504440))

(assert (not setNonEmpty!41213))

(assert (not b!6101218))

(assert (not d!1912410))

(assert (not b!6100907))

(assert (not d!1912498))

(assert (not b!6100941))

(assert (not b!6101392))

(assert (not b!6100944))

(assert (not d!1912484))

(assert (not b!6101498))

(assert (not b!6101175))

(assert (not bs!1515114))

(assert (not b!6101445))

(assert (not b_lambda!232455))

(assert (not bm!504470))

(assert (not b!6101352))

(assert (not b!6101150))

(assert (not b!6101043))

(assert (not b_lambda!232403))

(assert (not d!1912516))

(assert (not d!1912398))

(assert (not b!6101327))

(assert (not d!1912416))

(assert (not bm!504405))

(assert (not b!6101238))

(assert (not b!6100875))

(assert (not b!6101457))

(assert (not b!6101453))

(assert (not b!6101076))

(assert (not b!6101177))

(assert (not b!6101131))

(assert (not b!6101146))

(assert (not b!6101401))

(assert (not b!6101052))

(assert (not b!6101275))

(assert (not d!1912546))

(assert (not b!6101490))

(assert (not d!1912340))

(assert (not b!6101468))

(assert (not b!6101034))

(assert (not b!6101402))

(assert (not b!6101033))

(assert (not d!1912428))

(assert (not b!6101459))

(assert (not bs!1515107))

(assert (not bs!1515111))

(assert (not b!6101411))

(assert (not bm!504363))

(assert (not b!6101063))

(assert (not d!1912472))

(assert (not b!6100887))

(assert (not b!6101464))

(assert (not b!6101480))

(assert (not b!6101163))

(assert (not b!6101429))

(assert (not bm!504386))

(assert (not b!6101144))

(assert (not b!6101129))

(assert (not b!6101113))

(assert (not b!6101272))

(assert (not b!6101441))

(assert (not b!6101169))

(assert (not b!6100865))

(assert (not b!6101198))

(assert (not b!6101436))

(assert (not b!6101382))

(assert (not b!6100949))

(assert (not b!6101190))

(assert (not d!1912570))

(assert (not d!1912404))

(assert (not b!6101167))

(assert (not b!6100965))

(assert (not b!6101505))

(assert (not bm!504410))

(assert tp_is_empty!41349)

(assert (not b!6101413))

(assert (not bm!504437))

(assert (not b!6100932))

(assert (not bm!504473))

(assert (not b!6101206))

(assert (not b!6100873))

(assert (not b!6101456))

(assert (not b!6101408))

(assert (not b!6101249))

(assert (not d!1912360))

(assert (not b!6101030))

(assert (not b!6101027))

(assert (not d!1912438))

(assert (not b!6101415))

(assert (not bs!1515115))

(assert (not b!6101248))

(assert (not b!6101465))

(assert (not b!6101056))

(assert (not b!6101412))

(assert (not b!6101491))

(assert (not d!1912414))

(assert (not bm!504419))

(assert (not b!6101013))

(assert (not b!6101472))

(assert (not b!6100902))

(assert (not bm!504385))

(assert (not b!6101274))

(assert (not b!6101493))

(assert (not b!6100866))

(assert (not b!6101166))

(assert (not d!1912476))

(assert (not b!6101494))

(assert (not bm!504446))

(assert (not bm!504434))

(assert (not d!1912458))

(assert (not bm!504396))

(assert (not b!6101187))

(assert (not b!6101116))

(assert (not b!6101500))

(assert (not b!6101220))

(assert (not b!6101393))

(assert (not b_lambda!232401))

(assert (not b!6101372))

(assert (not d!1912524))

(assert (not b!6101176))

(assert (not bm!504371))

(assert (not b!6101257))

(assert (not b!6101031))

(assert (not b!6101023))

(assert (not b!6101474))

(assert (not b!6101427))

(assert (not d!1912522))

(assert (not b!6101277))

(assert (not b!6100841))

(assert (not b!6101439))

(assert (not b!6101463))

(assert (not d!1912532))

(assert (not b_lambda!232445))

(assert (not b!6101235))

(assert (not bm!504453))

(assert (not b!6101204))

(assert (not b!6101236))

(assert (not b!6101496))

(assert (not b!6101132))

(assert (not d!1912348))

(assert (not bm!504411))

(assert (not setNonEmpty!41212))

(assert (not setNonEmpty!41214))

(assert (not b!6101497))

(assert (not b_lambda!232405))

(assert (not bm!504430))

(assert (not bs!1515109))

(assert (not b!6101321))

(assert (not b!6101323))

(assert (not b!6101112))

(assert (not bm!504402))

(assert (not bm!504452))

(assert (not b_lambda!232451))

(assert (not d!1912336))

(assert (not b!6101452))

(assert (not d!1912400))

(assert (not b!6101247))

(assert (not b!6101410))

(assert (not b!6101424))

(assert (not b!6101447))

(assert (not b!6101407))

(assert (not bm!504431))

(assert (not b!6101419))

(assert (not b!6101252))

(assert (not b!6101484))

(assert (not b!6101403))

(assert (not b!6101416))

(assert (not b!6101394))

(assert (not bm!504407))

(assert (not b!6101502))

(assert (not d!1912536))

(assert (not b!6101404))

(assert (not b!6100946))

(assert (not bm!504414))

(assert (not b!6101314))

(assert (not d!1912466))

(assert (not b!6101487))

(assert (not b!6101449))

(assert (not b!6101397))

(assert (not b!6101324))

(assert (not d!1912538))

(assert (not b!6100999))

(assert (not bm!504361))

(assert (not b!6101054))

(assert (not bm!504393))

(assert (not b!6101492))

(assert (not b!6100964))

(assert (not d!1912402))

(assert (not bm!504372))

(assert (not bm!504420))

(assert (not b!6101390))

(assert (not b!6101317))

(assert (not bs!1515110))

(assert (not b!6101055))

(assert (not b!6101440))

(assert (not b!6101470))

(assert (not b!6101189))

(assert (not b!6100859))

(assert (not b!6101310))

(assert (not b!6101400))

(assert (not bm!504436))

(assert (not b_lambda!232441))

(assert (not b!6101200))

(assert (not b!6101201))

(assert (not b!6101240))

(assert (not bm!504426))

(assert (not b!6101432))

(assert (not b!6101431))

(assert (not bm!504472))

(assert (not bm!504441))

(assert (not b!6101184))

(assert (not b!6100860))

(assert (not b!6101501))

(assert (not bm!504476))

(assert (not b!6100874))

(assert (not bm!504454))

(assert (not b!6100904))

(assert (not b!6101078))

(assert (not b!6101208))

(assert (not b!6101174))

(assert (not bm!504389))

(assert (not b_lambda!232447))

(assert (not d!1912344))

(assert (not bm!504460))

(assert (not d!1912590))

(assert (not bm!504360))

(assert (not b!6101476))

(assert (not bm!504387))

(assert (not b!6101032))

(assert (not b!6101448))

(assert (not bm!504362))

(assert (not bm!504417))

(assert (not b!6101488))

(assert (not bm!504399))

(assert (not b!6101040))

(assert (not d!1912386))

(assert (not d!1912362))

(assert (not d!1912550))

(assert (not d!1912478))

(assert (not bm!504433))

(assert (not b!6101203))

(assert (not b!6101082))

(assert (not b!6101128))

(assert (not b!6101134))

(assert (not b_lambda!232449))

(assert (not d!1912500))

(assert (not b!6101433))

(assert (not b!6101388))

(assert (not b_lambda!232443))

(assert (not b!6101341))

(assert (not bm!504444))

(assert (not b!6101036))

(assert (not b!6101506))

(assert (not bs!1515113))

(assert (not bm!504456))

(assert (not bm!504447))

(assert (not b!6101313))

(assert (not b!6101326))

(assert (not b!6101028))

(assert (not b!6101420))

(assert (not b!6100905))

(assert (not b!6101466))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

