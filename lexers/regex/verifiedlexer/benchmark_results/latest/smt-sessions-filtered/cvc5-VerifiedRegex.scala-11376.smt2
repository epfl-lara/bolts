; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!604764 () Bool)

(assert start!604764)

(declare-fun b!5955500 () Bool)

(assert (=> b!5955500 true))

(assert (=> b!5955500 true))

(declare-fun lambda!325248 () Int)

(declare-fun lambda!325247 () Int)

(assert (=> b!5955500 (not (= lambda!325248 lambda!325247))))

(assert (=> b!5955500 true))

(assert (=> b!5955500 true))

(declare-fun b!5955526 () Bool)

(assert (=> b!5955526 true))

(declare-fun b!5955496 () Bool)

(declare-fun e!3643048 () Bool)

(declare-fun e!3643044 () Bool)

(assert (=> b!5955496 (= e!3643048 (not e!3643044))))

(declare-fun res!2492750 () Bool)

(assert (=> b!5955496 (=> res!2492750 e!3643044)))

(declare-datatypes ((C!32266 0))(
  ( (C!32267 (val!25835 Int)) )
))
(declare-datatypes ((Regex!15998 0))(
  ( (ElementMatch!15998 (c!1060066 C!32266)) (Concat!24843 (regOne!32508 Regex!15998) (regTwo!32508 Regex!15998)) (EmptyExpr!15998) (Star!15998 (reg!16327 Regex!15998)) (EmptyLang!15998) (Union!15998 (regOne!32509 Regex!15998) (regTwo!32509 Regex!15998)) )
))
(declare-datatypes ((List!64293 0))(
  ( (Nil!64169) (Cons!64169 (h!70617 Regex!15998) (t!377706 List!64293)) )
))
(declare-datatypes ((Context!10764 0))(
  ( (Context!10765 (exprs!5882 List!64293)) )
))
(declare-datatypes ((List!64294 0))(
  ( (Nil!64170) (Cons!64170 (h!70618 Context!10764) (t!377707 List!64294)) )
))
(declare-fun zl!343 () List!64294)

(assert (=> b!5955496 (= res!2492750 (not (is-Cons!64170 zl!343)))))

(declare-fun lt!2314116 () Bool)

(declare-fun r!7292 () Regex!15998)

(declare-datatypes ((List!64295 0))(
  ( (Nil!64171) (Cons!64171 (h!70619 C!32266) (t!377708 List!64295)) )
))
(declare-fun s!2326 () List!64295)

(declare-fun matchRSpec!3099 (Regex!15998 List!64295) Bool)

(assert (=> b!5955496 (= lt!2314116 (matchRSpec!3099 r!7292 s!2326))))

(declare-fun matchR!8181 (Regex!15998 List!64295) Bool)

(assert (=> b!5955496 (= lt!2314116 (matchR!8181 r!7292 s!2326))))

(declare-datatypes ((Unit!157267 0))(
  ( (Unit!157268) )
))
(declare-fun lt!2314134 () Unit!157267)

(declare-fun mainMatchTheorem!3099 (Regex!15998 List!64295) Unit!157267)

(assert (=> b!5955496 (= lt!2314134 (mainMatchTheorem!3099 r!7292 s!2326))))

(declare-fun b!5955497 () Bool)

(declare-fun res!2492748 () Bool)

(declare-fun e!3643053 () Bool)

(assert (=> b!5955497 (=> res!2492748 e!3643053)))

(declare-fun isEmpty!36055 (List!64293) Bool)

(assert (=> b!5955497 (= res!2492748 (not (isEmpty!36055 (t!377706 (exprs!5882 (h!70618 zl!343))))))))

(declare-fun b!5955498 () Bool)

(declare-fun e!3643052 () Bool)

(declare-fun tp!1656878 () Bool)

(assert (=> b!5955498 (= e!3643052 tp!1656878)))

(declare-fun b!5955499 () Bool)

(declare-fun res!2492729 () Bool)

(declare-fun e!3643041 () Bool)

(assert (=> b!5955499 (=> res!2492729 e!3643041)))

(declare-fun lt!2314120 () (Set Context!10764))

(declare-fun matchZipper!2034 ((Set Context!10764) List!64295) Bool)

(declare-fun derivationStepZipper!1979 ((Set Context!10764) C!32266) (Set Context!10764))

(assert (=> b!5955499 (= res!2492729 (not (= (matchZipper!2034 lt!2314120 s!2326) (matchZipper!2034 (derivationStepZipper!1979 lt!2314120 (h!70619 s!2326)) (t!377708 s!2326)))))))

(declare-fun e!3643040 () Bool)

(declare-fun setNonEmpty!40488 () Bool)

(declare-fun setRes!40488 () Bool)

(declare-fun setElem!40488 () Context!10764)

(declare-fun tp!1656877 () Bool)

(declare-fun inv!83243 (Context!10764) Bool)

(assert (=> setNonEmpty!40488 (= setRes!40488 (and tp!1656877 (inv!83243 setElem!40488) e!3643040))))

(declare-fun z!1189 () (Set Context!10764))

(declare-fun setRest!40488 () (Set Context!10764))

(assert (=> setNonEmpty!40488 (= z!1189 (set.union (set.insert setElem!40488 (as set.empty (Set Context!10764))) setRest!40488))))

(assert (=> b!5955500 (= e!3643044 e!3643053)))

(declare-fun res!2492751 () Bool)

(assert (=> b!5955500 (=> res!2492751 e!3643053)))

(declare-fun lt!2314114 () Bool)

(assert (=> b!5955500 (= res!2492751 (or (not (= lt!2314116 lt!2314114)) (is-Nil!64171 s!2326)))))

(declare-fun Exists!3068 (Int) Bool)

(assert (=> b!5955500 (= (Exists!3068 lambda!325247) (Exists!3068 lambda!325248))))

(declare-fun lt!2314117 () Unit!157267)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1605 (Regex!15998 Regex!15998 List!64295) Unit!157267)

(assert (=> b!5955500 (= lt!2314117 (lemmaExistCutMatchRandMatchRSpecEquivalent!1605 (regOne!32508 r!7292) (regTwo!32508 r!7292) s!2326))))

(assert (=> b!5955500 (= lt!2314114 (Exists!3068 lambda!325247))))

(declare-datatypes ((tuple2!65954 0))(
  ( (tuple2!65955 (_1!36280 List!64295) (_2!36280 List!64295)) )
))
(declare-datatypes ((Option!15889 0))(
  ( (None!15888) (Some!15888 (v!51991 tuple2!65954)) )
))
(declare-fun isDefined!12592 (Option!15889) Bool)

(declare-fun findConcatSeparation!2303 (Regex!15998 Regex!15998 List!64295 List!64295 List!64295) Option!15889)

(assert (=> b!5955500 (= lt!2314114 (isDefined!12592 (findConcatSeparation!2303 (regOne!32508 r!7292) (regTwo!32508 r!7292) Nil!64171 s!2326 s!2326)))))

(declare-fun lt!2314132 () Unit!157267)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2067 (Regex!15998 Regex!15998 List!64295) Unit!157267)

(assert (=> b!5955500 (= lt!2314132 (lemmaFindConcatSeparationEquivalentToExists!2067 (regOne!32508 r!7292) (regTwo!32508 r!7292) s!2326))))

(declare-fun b!5955501 () Bool)

(declare-fun res!2492740 () Bool)

(assert (=> b!5955501 (=> res!2492740 e!3643044)))

(assert (=> b!5955501 (= res!2492740 (or (is-EmptyExpr!15998 r!7292) (is-EmptyLang!15998 r!7292) (is-ElementMatch!15998 r!7292) (is-Union!15998 r!7292) (not (is-Concat!24843 r!7292))))))

(declare-fun b!5955502 () Bool)

(declare-fun res!2492742 () Bool)

(assert (=> b!5955502 (=> (not res!2492742) (not e!3643048))))

(declare-fun toList!9782 ((Set Context!10764)) List!64294)

(assert (=> b!5955502 (= res!2492742 (= (toList!9782 z!1189) zl!343))))

(declare-fun b!5955504 () Bool)

(declare-fun e!3643051 () Bool)

(declare-fun tp!1656873 () Bool)

(assert (=> b!5955504 (= e!3643051 tp!1656873)))

(declare-fun b!5955505 () Bool)

(declare-fun res!2492730 () Bool)

(assert (=> b!5955505 (=> res!2492730 e!3643044)))

(declare-fun generalisedConcat!1595 (List!64293) Regex!15998)

(assert (=> b!5955505 (= res!2492730 (not (= r!7292 (generalisedConcat!1595 (exprs!5882 (h!70618 zl!343))))))))

(declare-fun b!5955506 () Bool)

(declare-fun tp!1656871 () Bool)

(declare-fun tp!1656875 () Bool)

(assert (=> b!5955506 (= e!3643052 (and tp!1656871 tp!1656875))))

(declare-fun b!5955507 () Bool)

(declare-fun res!2492744 () Bool)

(assert (=> b!5955507 (=> res!2492744 e!3643041)))

(declare-fun lt!2314123 () (Set Context!10764))

(assert (=> b!5955507 (= res!2492744 (not (= (matchZipper!2034 lt!2314123 s!2326) (matchZipper!2034 (derivationStepZipper!1979 lt!2314123 (h!70619 s!2326)) (t!377708 s!2326)))))))

(declare-fun b!5955508 () Bool)

(declare-fun e!3643042 () Bool)

(declare-fun e!3643046 () Bool)

(assert (=> b!5955508 (= e!3643042 e!3643046)))

(declare-fun res!2492737 () Bool)

(assert (=> b!5955508 (=> res!2492737 e!3643046)))

(declare-fun nullable!5993 (Regex!15998) Bool)

(assert (=> b!5955508 (= res!2492737 (not (nullable!5993 (regOne!32508 r!7292))))))

(declare-fun lt!2314128 () (Set Context!10764))

(declare-fun lt!2314113 () Context!10764)

(declare-fun derivationStepZipperDown!1248 (Regex!15998 Context!10764 C!32266) (Set Context!10764))

(assert (=> b!5955508 (= lt!2314128 (derivationStepZipperDown!1248 (regTwo!32508 r!7292) lt!2314113 (h!70619 s!2326)))))

(declare-fun lt!2314130 () Context!10764)

(declare-fun lt!2314119 () (Set Context!10764))

(assert (=> b!5955508 (= lt!2314119 (derivationStepZipperDown!1248 (regOne!32508 r!7292) lt!2314130 (h!70619 s!2326)))))

(declare-fun lambda!325249 () Int)

(declare-fun flatMap!1511 ((Set Context!10764) Int) (Set Context!10764))

(declare-fun derivationStepZipperUp!1174 (Context!10764 C!32266) (Set Context!10764))

(assert (=> b!5955508 (= (flatMap!1511 lt!2314120 lambda!325249) (derivationStepZipperUp!1174 lt!2314130 (h!70619 s!2326)))))

(declare-fun lt!2314118 () Unit!157267)

(declare-fun lemmaFlatMapOnSingletonSet!1037 ((Set Context!10764) Context!10764 Int) Unit!157267)

(assert (=> b!5955508 (= lt!2314118 (lemmaFlatMapOnSingletonSet!1037 lt!2314120 lt!2314130 lambda!325249))))

(declare-fun lt!2314126 () Context!10764)

(assert (=> b!5955508 (= (flatMap!1511 lt!2314123 lambda!325249) (derivationStepZipperUp!1174 lt!2314126 (h!70619 s!2326)))))

(declare-fun lt!2314125 () Unit!157267)

(assert (=> b!5955508 (= lt!2314125 (lemmaFlatMapOnSingletonSet!1037 lt!2314123 lt!2314126 lambda!325249))))

(declare-fun lt!2314131 () (Set Context!10764))

(assert (=> b!5955508 (= lt!2314131 (derivationStepZipperUp!1174 lt!2314130 (h!70619 s!2326)))))

(declare-fun lt!2314133 () (Set Context!10764))

(assert (=> b!5955508 (= lt!2314133 (derivationStepZipperUp!1174 lt!2314126 (h!70619 s!2326)))))

(assert (=> b!5955508 (= lt!2314120 (set.insert lt!2314130 (as set.empty (Set Context!10764))))))

(declare-fun lt!2314121 () List!64293)

(assert (=> b!5955508 (= lt!2314130 (Context!10765 lt!2314121))))

(assert (=> b!5955508 (= lt!2314123 (set.insert lt!2314126 (as set.empty (Set Context!10764))))))

(assert (=> b!5955508 (= lt!2314126 (Context!10765 (Cons!64169 (regOne!32508 r!7292) lt!2314121)))))

(assert (=> b!5955508 (= lt!2314121 (Cons!64169 (regTwo!32508 r!7292) Nil!64169))))

(declare-fun b!5955509 () Bool)

(declare-fun res!2492736 () Bool)

(declare-fun e!3643049 () Bool)

(assert (=> b!5955509 (=> res!2492736 e!3643049)))

(declare-fun lt!2314110 () Context!10764)

(declare-fun zipperDepth!247 (List!64294) Int)

(assert (=> b!5955509 (= res!2492736 (>= (zipperDepth!247 (Cons!64170 lt!2314126 Nil!64170)) (zipperDepth!247 (Cons!64170 lt!2314110 Nil!64170))))))

(declare-fun b!5955510 () Bool)

(assert (=> b!5955510 (= e!3643041 e!3643049)))

(declare-fun res!2492743 () Bool)

(assert (=> b!5955510 (=> res!2492743 e!3643049)))

(declare-fun lt!2314108 () Int)

(declare-fun lt!2314109 () Int)

(assert (=> b!5955510 (= res!2492743 (>= lt!2314108 lt!2314109))))

(declare-fun contextDepth!146 (Context!10764) Int)

(assert (=> b!5955510 (= lt!2314109 (contextDepth!146 lt!2314110))))

(assert (=> b!5955510 (= lt!2314108 (contextDepth!146 lt!2314126))))

(declare-fun b!5955511 () Bool)

(declare-fun e!3643043 () Bool)

(declare-fun tp_is_empty!41249 () Bool)

(declare-fun tp!1656874 () Bool)

(assert (=> b!5955511 (= e!3643043 (and tp_is_empty!41249 tp!1656874))))

(declare-fun b!5955512 () Bool)

(declare-fun res!2492739 () Bool)

(assert (=> b!5955512 (=> res!2492739 e!3643049)))

(assert (=> b!5955512 (= res!2492739 (>= (contextDepth!146 lt!2314130) lt!2314109))))

(declare-fun b!5955513 () Bool)

(declare-fun e!3643047 () Bool)

(assert (=> b!5955513 (= e!3643047 (matchZipper!2034 lt!2314128 (t!377708 s!2326)))))

(declare-fun b!5955514 () Bool)

(declare-fun e!3643039 () Bool)

(assert (=> b!5955514 (= e!3643039 e!3643041)))

(declare-fun res!2492749 () Bool)

(assert (=> b!5955514 (=> res!2492749 e!3643041)))

(declare-fun lt!2314107 () (Set Context!10764))

(declare-fun lt!2314124 () Bool)

(assert (=> b!5955514 (= res!2492749 (not (= lt!2314124 (matchZipper!2034 lt!2314107 (t!377708 s!2326)))))))

(declare-fun lt!2314111 () Bool)

(assert (=> b!5955514 (= lt!2314111 lt!2314124)))

(assert (=> b!5955514 (= lt!2314124 e!3643047)))

(declare-fun res!2492747 () Bool)

(assert (=> b!5955514 (=> res!2492747 e!3643047)))

(declare-fun lt!2314127 () Bool)

(assert (=> b!5955514 (= res!2492747 lt!2314127)))

(declare-fun lt!2314115 () (Set Context!10764))

(assert (=> b!5955514 (= lt!2314111 (matchZipper!2034 lt!2314115 (t!377708 s!2326)))))

(assert (=> b!5955514 (= lt!2314127 (matchZipper!2034 lt!2314119 (t!377708 s!2326)))))

(declare-fun lt!2314112 () Unit!157267)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!865 ((Set Context!10764) (Set Context!10764) List!64295) Unit!157267)

(assert (=> b!5955514 (= lt!2314112 (lemmaZipperConcatMatchesSameAsBothZippers!865 lt!2314119 lt!2314128 (t!377708 s!2326)))))

(declare-fun b!5955515 () Bool)

(declare-fun res!2492745 () Bool)

(assert (=> b!5955515 (=> res!2492745 e!3643044)))

(assert (=> b!5955515 (= res!2492745 (not (is-Cons!64169 (exprs!5882 (h!70618 zl!343)))))))

(declare-fun b!5955503 () Bool)

(declare-fun e!3643045 () Bool)

(assert (=> b!5955503 (= e!3643053 e!3643045)))

(declare-fun res!2492734 () Bool)

(assert (=> b!5955503 (=> res!2492734 e!3643045)))

(declare-fun lt!2314122 () (Set Context!10764))

(declare-fun lt!2314135 () (Set Context!10764))

(assert (=> b!5955503 (= res!2492734 (not (= lt!2314122 lt!2314135)))))

(assert (=> b!5955503 (= lt!2314135 (derivationStepZipperDown!1248 r!7292 lt!2314113 (h!70619 s!2326)))))

(assert (=> b!5955503 (= lt!2314113 (Context!10765 Nil!64169))))

(assert (=> b!5955503 (= lt!2314122 (derivationStepZipperUp!1174 lt!2314110 (h!70619 s!2326)))))

(assert (=> b!5955503 (= lt!2314110 (Context!10765 (Cons!64169 r!7292 Nil!64169)))))

(assert (=> b!5955503 (= lt!2314107 (derivationStepZipper!1979 z!1189 (h!70619 s!2326)))))

(declare-fun res!2492746 () Bool)

(assert (=> start!604764 (=> (not res!2492746) (not e!3643048))))

(declare-fun validRegex!7734 (Regex!15998) Bool)

(assert (=> start!604764 (= res!2492746 (validRegex!7734 r!7292))))

(assert (=> start!604764 e!3643048))

(assert (=> start!604764 e!3643052))

(declare-fun condSetEmpty!40488 () Bool)

(assert (=> start!604764 (= condSetEmpty!40488 (= z!1189 (as set.empty (Set Context!10764))))))

(assert (=> start!604764 setRes!40488))

(declare-fun e!3643050 () Bool)

(assert (=> start!604764 e!3643050))

(assert (=> start!604764 e!3643043))

(declare-fun setIsEmpty!40488 () Bool)

(assert (=> setIsEmpty!40488 setRes!40488))

(declare-fun b!5955516 () Bool)

(declare-fun res!2492741 () Bool)

(assert (=> b!5955516 (=> res!2492741 e!3643044)))

(declare-fun generalisedUnion!1842 (List!64293) Regex!15998)

(declare-fun unfocusZipperList!1419 (List!64294) List!64293)

(assert (=> b!5955516 (= res!2492741 (not (= r!7292 (generalisedUnion!1842 (unfocusZipperList!1419 zl!343)))))))

(declare-fun b!5955517 () Bool)

(assert (=> b!5955517 (= e!3643046 e!3643039)))

(declare-fun res!2492731 () Bool)

(assert (=> b!5955517 (=> res!2492731 e!3643039)))

(assert (=> b!5955517 (= res!2492731 (not (= lt!2314107 lt!2314115)))))

(assert (=> b!5955517 (= lt!2314115 (set.union lt!2314119 lt!2314128))))

(declare-fun b!5955518 () Bool)

(declare-fun res!2492735 () Bool)

(assert (=> b!5955518 (=> (not res!2492735) (not e!3643048))))

(declare-fun unfocusZipper!1740 (List!64294) Regex!15998)

(assert (=> b!5955518 (= res!2492735 (= r!7292 (unfocusZipper!1740 zl!343)))))

(declare-fun b!5955519 () Bool)

(declare-fun tp!1656876 () Bool)

(assert (=> b!5955519 (= e!3643050 (and (inv!83243 (h!70618 zl!343)) e!3643051 tp!1656876))))

(declare-fun b!5955520 () Bool)

(declare-fun tp!1656869 () Bool)

(declare-fun tp!1656872 () Bool)

(assert (=> b!5955520 (= e!3643052 (and tp!1656869 tp!1656872))))

(declare-fun b!5955521 () Bool)

(declare-fun res!2492738 () Bool)

(assert (=> b!5955521 (=> res!2492738 e!3643041)))

(assert (=> b!5955521 (= res!2492738 (or (not (= lt!2314133 (set.union lt!2314119 lt!2314131))) (not (= lt!2314133 lt!2314115)) (not (= lt!2314133 lt!2314107))))))

(declare-fun b!5955522 () Bool)

(declare-fun res!2492733 () Bool)

(assert (=> b!5955522 (=> res!2492733 e!3643044)))

(declare-fun isEmpty!36056 (List!64294) Bool)

(assert (=> b!5955522 (= res!2492733 (not (isEmpty!36056 (t!377707 zl!343))))))

(declare-fun b!5955523 () Bool)

(assert (=> b!5955523 (= e!3643049 (inv!83243 lt!2314110))))

(declare-fun b!5955524 () Bool)

(assert (=> b!5955524 (= e!3643052 tp_is_empty!41249)))

(declare-fun b!5955525 () Bool)

(declare-fun tp!1656870 () Bool)

(assert (=> b!5955525 (= e!3643040 tp!1656870)))

(assert (=> b!5955526 (= e!3643045 e!3643042)))

(declare-fun res!2492732 () Bool)

(assert (=> b!5955526 (=> res!2492732 e!3643042)))

(assert (=> b!5955526 (= res!2492732 (not (= lt!2314107 lt!2314135)))))

(assert (=> b!5955526 (= (flatMap!1511 z!1189 lambda!325249) (derivationStepZipperUp!1174 (h!70618 zl!343) (h!70619 s!2326)))))

(declare-fun lt!2314129 () Unit!157267)

(assert (=> b!5955526 (= lt!2314129 (lemmaFlatMapOnSingletonSet!1037 z!1189 (h!70618 zl!343) lambda!325249))))

(assert (= (and start!604764 res!2492746) b!5955502))

(assert (= (and b!5955502 res!2492742) b!5955518))

(assert (= (and b!5955518 res!2492735) b!5955496))

(assert (= (and b!5955496 (not res!2492750)) b!5955522))

(assert (= (and b!5955522 (not res!2492733)) b!5955505))

(assert (= (and b!5955505 (not res!2492730)) b!5955515))

(assert (= (and b!5955515 (not res!2492745)) b!5955516))

(assert (= (and b!5955516 (not res!2492741)) b!5955501))

(assert (= (and b!5955501 (not res!2492740)) b!5955500))

(assert (= (and b!5955500 (not res!2492751)) b!5955497))

(assert (= (and b!5955497 (not res!2492748)) b!5955503))

(assert (= (and b!5955503 (not res!2492734)) b!5955526))

(assert (= (and b!5955526 (not res!2492732)) b!5955508))

(assert (= (and b!5955508 (not res!2492737)) b!5955517))

(assert (= (and b!5955517 (not res!2492731)) b!5955514))

(assert (= (and b!5955514 (not res!2492747)) b!5955513))

(assert (= (and b!5955514 (not res!2492749)) b!5955521))

(assert (= (and b!5955521 (not res!2492738)) b!5955507))

(assert (= (and b!5955507 (not res!2492744)) b!5955499))

(assert (= (and b!5955499 (not res!2492729)) b!5955510))

(assert (= (and b!5955510 (not res!2492743)) b!5955509))

(assert (= (and b!5955509 (not res!2492736)) b!5955512))

(assert (= (and b!5955512 (not res!2492739)) b!5955523))

(assert (= (and start!604764 (is-ElementMatch!15998 r!7292)) b!5955524))

(assert (= (and start!604764 (is-Concat!24843 r!7292)) b!5955520))

(assert (= (and start!604764 (is-Star!15998 r!7292)) b!5955498))

(assert (= (and start!604764 (is-Union!15998 r!7292)) b!5955506))

(assert (= (and start!604764 condSetEmpty!40488) setIsEmpty!40488))

(assert (= (and start!604764 (not condSetEmpty!40488)) setNonEmpty!40488))

(assert (= setNonEmpty!40488 b!5955525))

(assert (= b!5955519 b!5955504))

(assert (= (and start!604764 (is-Cons!64170 zl!343)) b!5955519))

(assert (= (and start!604764 (is-Cons!64171 s!2326)) b!5955511))

(declare-fun m!6842792 () Bool)

(assert (=> b!5955514 m!6842792))

(declare-fun m!6842794 () Bool)

(assert (=> b!5955514 m!6842794))

(declare-fun m!6842796 () Bool)

(assert (=> b!5955514 m!6842796))

(declare-fun m!6842798 () Bool)

(assert (=> b!5955514 m!6842798))

(declare-fun m!6842800 () Bool)

(assert (=> setNonEmpty!40488 m!6842800))

(declare-fun m!6842802 () Bool)

(assert (=> b!5955512 m!6842802))

(declare-fun m!6842804 () Bool)

(assert (=> b!5955496 m!6842804))

(declare-fun m!6842806 () Bool)

(assert (=> b!5955496 m!6842806))

(declare-fun m!6842808 () Bool)

(assert (=> b!5955496 m!6842808))

(declare-fun m!6842810 () Bool)

(assert (=> b!5955502 m!6842810))

(declare-fun m!6842812 () Bool)

(assert (=> b!5955523 m!6842812))

(declare-fun m!6842814 () Bool)

(assert (=> b!5955508 m!6842814))

(declare-fun m!6842816 () Bool)

(assert (=> b!5955508 m!6842816))

(declare-fun m!6842818 () Bool)

(assert (=> b!5955508 m!6842818))

(declare-fun m!6842820 () Bool)

(assert (=> b!5955508 m!6842820))

(declare-fun m!6842822 () Bool)

(assert (=> b!5955508 m!6842822))

(declare-fun m!6842824 () Bool)

(assert (=> b!5955508 m!6842824))

(declare-fun m!6842826 () Bool)

(assert (=> b!5955508 m!6842826))

(declare-fun m!6842828 () Bool)

(assert (=> b!5955508 m!6842828))

(declare-fun m!6842830 () Bool)

(assert (=> b!5955508 m!6842830))

(declare-fun m!6842832 () Bool)

(assert (=> b!5955508 m!6842832))

(declare-fun m!6842834 () Bool)

(assert (=> b!5955508 m!6842834))

(declare-fun m!6842836 () Bool)

(assert (=> b!5955518 m!6842836))

(declare-fun m!6842838 () Bool)

(assert (=> b!5955510 m!6842838))

(declare-fun m!6842840 () Bool)

(assert (=> b!5955510 m!6842840))

(declare-fun m!6842842 () Bool)

(assert (=> b!5955507 m!6842842))

(declare-fun m!6842844 () Bool)

(assert (=> b!5955507 m!6842844))

(assert (=> b!5955507 m!6842844))

(declare-fun m!6842846 () Bool)

(assert (=> b!5955507 m!6842846))

(declare-fun m!6842848 () Bool)

(assert (=> b!5955509 m!6842848))

(declare-fun m!6842850 () Bool)

(assert (=> b!5955509 m!6842850))

(declare-fun m!6842852 () Bool)

(assert (=> b!5955513 m!6842852))

(declare-fun m!6842854 () Bool)

(assert (=> b!5955505 m!6842854))

(declare-fun m!6842856 () Bool)

(assert (=> b!5955516 m!6842856))

(assert (=> b!5955516 m!6842856))

(declare-fun m!6842858 () Bool)

(assert (=> b!5955516 m!6842858))

(declare-fun m!6842860 () Bool)

(assert (=> b!5955519 m!6842860))

(declare-fun m!6842862 () Bool)

(assert (=> b!5955497 m!6842862))

(declare-fun m!6842864 () Bool)

(assert (=> b!5955526 m!6842864))

(declare-fun m!6842866 () Bool)

(assert (=> b!5955526 m!6842866))

(declare-fun m!6842868 () Bool)

(assert (=> b!5955526 m!6842868))

(declare-fun m!6842870 () Bool)

(assert (=> b!5955500 m!6842870))

(declare-fun m!6842872 () Bool)

(assert (=> b!5955500 m!6842872))

(declare-fun m!6842874 () Bool)

(assert (=> b!5955500 m!6842874))

(declare-fun m!6842876 () Bool)

(assert (=> b!5955500 m!6842876))

(assert (=> b!5955500 m!6842876))

(declare-fun m!6842878 () Bool)

(assert (=> b!5955500 m!6842878))

(assert (=> b!5955500 m!6842872))

(declare-fun m!6842880 () Bool)

(assert (=> b!5955500 m!6842880))

(declare-fun m!6842882 () Bool)

(assert (=> b!5955499 m!6842882))

(declare-fun m!6842884 () Bool)

(assert (=> b!5955499 m!6842884))

(assert (=> b!5955499 m!6842884))

(declare-fun m!6842886 () Bool)

(assert (=> b!5955499 m!6842886))

(declare-fun m!6842888 () Bool)

(assert (=> start!604764 m!6842888))

(declare-fun m!6842890 () Bool)

(assert (=> b!5955522 m!6842890))

(declare-fun m!6842892 () Bool)

(assert (=> b!5955503 m!6842892))

(declare-fun m!6842894 () Bool)

(assert (=> b!5955503 m!6842894))

(declare-fun m!6842896 () Bool)

(assert (=> b!5955503 m!6842896))

(push 1)

(assert (not b!5955507))

(assert (not b!5955505))

(assert tp_is_empty!41249)

(assert (not b!5955500))

(assert (not b!5955513))

(assert (not b!5955523))

(assert (not setNonEmpty!40488))

(assert (not b!5955519))

(assert (not b!5955525))

(assert (not b!5955511))

(assert (not b!5955496))

(assert (not b!5955522))

(assert (not b!5955509))

(assert (not b!5955512))

(assert (not b!5955499))

(assert (not b!5955506))

(assert (not b!5955498))

(assert (not b!5955502))

(assert (not b!5955526))

(assert (not b!5955504))

(assert (not b!5955508))

(assert (not b!5955514))

(assert (not b!5955510))

(assert (not b!5955497))

(assert (not b!5955516))

(assert (not b!5955503))

(assert (not b!5955518))

(assert (not b!5955520))

(assert (not start!604764))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5955664 () Bool)

(declare-fun e!3643118 () Regex!15998)

(assert (=> b!5955664 (= e!3643118 (Union!15998 (h!70617 (unfocusZipperList!1419 zl!343)) (generalisedUnion!1842 (t!377706 (unfocusZipperList!1419 zl!343)))))))

(declare-fun d!1867157 () Bool)

(declare-fun e!3643120 () Bool)

(assert (=> d!1867157 e!3643120))

(declare-fun res!2492838 () Bool)

(assert (=> d!1867157 (=> (not res!2492838) (not e!3643120))))

(declare-fun lt!2314225 () Regex!15998)

(assert (=> d!1867157 (= res!2492838 (validRegex!7734 lt!2314225))))

(declare-fun e!3643117 () Regex!15998)

(assert (=> d!1867157 (= lt!2314225 e!3643117)))

(declare-fun c!1060086 () Bool)

(declare-fun e!3643119 () Bool)

(assert (=> d!1867157 (= c!1060086 e!3643119)))

(declare-fun res!2492837 () Bool)

(assert (=> d!1867157 (=> (not res!2492837) (not e!3643119))))

(assert (=> d!1867157 (= res!2492837 (is-Cons!64169 (unfocusZipperList!1419 zl!343)))))

(declare-fun lambda!325267 () Int)

(declare-fun forall!15087 (List!64293 Int) Bool)

(assert (=> d!1867157 (forall!15087 (unfocusZipperList!1419 zl!343) lambda!325267)))

(assert (=> d!1867157 (= (generalisedUnion!1842 (unfocusZipperList!1419 zl!343)) lt!2314225)))

(declare-fun b!5955665 () Bool)

(declare-fun e!3643121 () Bool)

(declare-fun e!3643122 () Bool)

(assert (=> b!5955665 (= e!3643121 e!3643122)))

(declare-fun c!1060083 () Bool)

(declare-fun tail!11622 (List!64293) List!64293)

(assert (=> b!5955665 (= c!1060083 (isEmpty!36055 (tail!11622 (unfocusZipperList!1419 zl!343))))))

(declare-fun b!5955666 () Bool)

(assert (=> b!5955666 (= e!3643120 e!3643121)))

(declare-fun c!1060085 () Bool)

(assert (=> b!5955666 (= c!1060085 (isEmpty!36055 (unfocusZipperList!1419 zl!343)))))

(declare-fun b!5955667 () Bool)

(assert (=> b!5955667 (= e!3643117 e!3643118)))

(declare-fun c!1060084 () Bool)

(assert (=> b!5955667 (= c!1060084 (is-Cons!64169 (unfocusZipperList!1419 zl!343)))))

(declare-fun b!5955668 () Bool)

(declare-fun isEmptyLang!1435 (Regex!15998) Bool)

(assert (=> b!5955668 (= e!3643121 (isEmptyLang!1435 lt!2314225))))

(declare-fun b!5955669 () Bool)

(declare-fun head!12537 (List!64293) Regex!15998)

(assert (=> b!5955669 (= e!3643122 (= lt!2314225 (head!12537 (unfocusZipperList!1419 zl!343))))))

(declare-fun b!5955670 () Bool)

(assert (=> b!5955670 (= e!3643118 EmptyLang!15998)))

(declare-fun b!5955671 () Bool)

(assert (=> b!5955671 (= e!3643117 (h!70617 (unfocusZipperList!1419 zl!343)))))

(declare-fun b!5955672 () Bool)

(assert (=> b!5955672 (= e!3643119 (isEmpty!36055 (t!377706 (unfocusZipperList!1419 zl!343))))))

(declare-fun b!5955673 () Bool)

(declare-fun isUnion!865 (Regex!15998) Bool)

(assert (=> b!5955673 (= e!3643122 (isUnion!865 lt!2314225))))

(assert (= (and d!1867157 res!2492837) b!5955672))

(assert (= (and d!1867157 c!1060086) b!5955671))

(assert (= (and d!1867157 (not c!1060086)) b!5955667))

(assert (= (and b!5955667 c!1060084) b!5955664))

(assert (= (and b!5955667 (not c!1060084)) b!5955670))

(assert (= (and d!1867157 res!2492838) b!5955666))

(assert (= (and b!5955666 c!1060085) b!5955668))

(assert (= (and b!5955666 (not c!1060085)) b!5955665))

(assert (= (and b!5955665 c!1060083) b!5955669))

(assert (= (and b!5955665 (not c!1060083)) b!5955673))

(declare-fun m!6843004 () Bool)

(assert (=> b!5955673 m!6843004))

(assert (=> b!5955665 m!6842856))

(declare-fun m!6843006 () Bool)

(assert (=> b!5955665 m!6843006))

(assert (=> b!5955665 m!6843006))

(declare-fun m!6843008 () Bool)

(assert (=> b!5955665 m!6843008))

(declare-fun m!6843010 () Bool)

(assert (=> d!1867157 m!6843010))

(assert (=> d!1867157 m!6842856))

(declare-fun m!6843012 () Bool)

(assert (=> d!1867157 m!6843012))

(assert (=> b!5955666 m!6842856))

(declare-fun m!6843014 () Bool)

(assert (=> b!5955666 m!6843014))

(declare-fun m!6843016 () Bool)

(assert (=> b!5955672 m!6843016))

(declare-fun m!6843018 () Bool)

(assert (=> b!5955668 m!6843018))

(declare-fun m!6843020 () Bool)

(assert (=> b!5955664 m!6843020))

(assert (=> b!5955669 m!6842856))

(declare-fun m!6843022 () Bool)

(assert (=> b!5955669 m!6843022))

(assert (=> b!5955516 d!1867157))

(declare-fun bs!1411994 () Bool)

(declare-fun d!1867159 () Bool)

(assert (= bs!1411994 (and d!1867159 d!1867157)))

(declare-fun lambda!325270 () Int)

(assert (=> bs!1411994 (= lambda!325270 lambda!325267)))

(declare-fun lt!2314228 () List!64293)

(assert (=> d!1867159 (forall!15087 lt!2314228 lambda!325270)))

(declare-fun e!3643125 () List!64293)

(assert (=> d!1867159 (= lt!2314228 e!3643125)))

(declare-fun c!1060089 () Bool)

(assert (=> d!1867159 (= c!1060089 (is-Cons!64170 zl!343))))

(assert (=> d!1867159 (= (unfocusZipperList!1419 zl!343) lt!2314228)))

(declare-fun b!5955678 () Bool)

(assert (=> b!5955678 (= e!3643125 (Cons!64169 (generalisedConcat!1595 (exprs!5882 (h!70618 zl!343))) (unfocusZipperList!1419 (t!377707 zl!343))))))

(declare-fun b!5955679 () Bool)

(assert (=> b!5955679 (= e!3643125 Nil!64169)))

(assert (= (and d!1867159 c!1060089) b!5955678))

(assert (= (and d!1867159 (not c!1060089)) b!5955679))

(declare-fun m!6843024 () Bool)

(assert (=> d!1867159 m!6843024))

(assert (=> b!5955678 m!6842854))

(declare-fun m!6843026 () Bool)

(assert (=> b!5955678 m!6843026))

(assert (=> b!5955516 d!1867159))

(declare-fun d!1867161 () Bool)

(assert (=> d!1867161 (= (isEmpty!36055 (t!377706 (exprs!5882 (h!70618 zl!343)))) (is-Nil!64169 (t!377706 (exprs!5882 (h!70618 zl!343)))))))

(assert (=> b!5955497 d!1867161))

(declare-fun bs!1411995 () Bool)

(declare-fun b!5955717 () Bool)

(assert (= bs!1411995 (and b!5955717 b!5955500)))

(declare-fun lambda!325275 () Int)

(assert (=> bs!1411995 (not (= lambda!325275 lambda!325247))))

(assert (=> bs!1411995 (not (= lambda!325275 lambda!325248))))

(assert (=> b!5955717 true))

(assert (=> b!5955717 true))

(declare-fun bs!1411996 () Bool)

(declare-fun b!5955722 () Bool)

(assert (= bs!1411996 (and b!5955722 b!5955500)))

(declare-fun lambda!325276 () Int)

(assert (=> bs!1411996 (not (= lambda!325276 lambda!325247))))

(assert (=> bs!1411996 (= lambda!325276 lambda!325248)))

(declare-fun bs!1411997 () Bool)

(assert (= bs!1411997 (and b!5955722 b!5955717)))

(assert (=> bs!1411997 (not (= lambda!325276 lambda!325275))))

(assert (=> b!5955722 true))

(assert (=> b!5955722 true))

(declare-fun b!5955712 () Bool)

(declare-fun e!3643145 () Bool)

(assert (=> b!5955712 (= e!3643145 (= s!2326 (Cons!64171 (c!1060066 r!7292) Nil!64171)))))

(declare-fun b!5955713 () Bool)

(declare-fun c!1060100 () Bool)

(assert (=> b!5955713 (= c!1060100 (is-ElementMatch!15998 r!7292))))

(declare-fun e!3643149 () Bool)

(assert (=> b!5955713 (= e!3643149 e!3643145)))

(declare-fun b!5955714 () Bool)

(declare-fun e!3643148 () Bool)

(declare-fun e!3643150 () Bool)

(assert (=> b!5955714 (= e!3643148 e!3643150)))

(declare-fun c!1060098 () Bool)

(assert (=> b!5955714 (= c!1060098 (is-Star!15998 r!7292))))

(declare-fun bm!474644 () Bool)

(declare-fun call!474649 () Bool)

(declare-fun isEmpty!36059 (List!64295) Bool)

(assert (=> bm!474644 (= call!474649 (isEmpty!36059 s!2326))))

(declare-fun b!5955715 () Bool)

(declare-fun e!3643147 () Bool)

(assert (=> b!5955715 (= e!3643147 (matchRSpec!3099 (regTwo!32509 r!7292) s!2326))))

(declare-fun b!5955716 () Bool)

(declare-fun c!1060101 () Bool)

(assert (=> b!5955716 (= c!1060101 (is-Union!15998 r!7292))))

(assert (=> b!5955716 (= e!3643145 e!3643148)))

(declare-fun d!1867163 () Bool)

(declare-fun c!1060099 () Bool)

(assert (=> d!1867163 (= c!1060099 (is-EmptyExpr!15998 r!7292))))

(declare-fun e!3643146 () Bool)

(assert (=> d!1867163 (= (matchRSpec!3099 r!7292 s!2326) e!3643146)))

(declare-fun e!3643144 () Bool)

(declare-fun call!474650 () Bool)

(assert (=> b!5955717 (= e!3643144 call!474650)))

(declare-fun b!5955718 () Bool)

(declare-fun res!2492855 () Bool)

(assert (=> b!5955718 (=> res!2492855 e!3643144)))

(assert (=> b!5955718 (= res!2492855 call!474649)))

(assert (=> b!5955718 (= e!3643150 e!3643144)))

(declare-fun b!5955719 () Bool)

(assert (=> b!5955719 (= e!3643146 e!3643149)))

(declare-fun res!2492856 () Bool)

(assert (=> b!5955719 (= res!2492856 (not (is-EmptyLang!15998 r!7292)))))

(assert (=> b!5955719 (=> (not res!2492856) (not e!3643149))))

(declare-fun bm!474645 () Bool)

(assert (=> bm!474645 (= call!474650 (Exists!3068 (ite c!1060098 lambda!325275 lambda!325276)))))

(declare-fun b!5955720 () Bool)

(assert (=> b!5955720 (= e!3643148 e!3643147)))

(declare-fun res!2492857 () Bool)

(assert (=> b!5955720 (= res!2492857 (matchRSpec!3099 (regOne!32509 r!7292) s!2326))))

(assert (=> b!5955720 (=> res!2492857 e!3643147)))

(declare-fun b!5955721 () Bool)

(assert (=> b!5955721 (= e!3643146 call!474649)))

(assert (=> b!5955722 (= e!3643150 call!474650)))

(assert (= (and d!1867163 c!1060099) b!5955721))

(assert (= (and d!1867163 (not c!1060099)) b!5955719))

(assert (= (and b!5955719 res!2492856) b!5955713))

(assert (= (and b!5955713 c!1060100) b!5955712))

(assert (= (and b!5955713 (not c!1060100)) b!5955716))

(assert (= (and b!5955716 c!1060101) b!5955720))

(assert (= (and b!5955716 (not c!1060101)) b!5955714))

(assert (= (and b!5955720 (not res!2492857)) b!5955715))

(assert (= (and b!5955714 c!1060098) b!5955718))

(assert (= (and b!5955714 (not c!1060098)) b!5955722))

(assert (= (and b!5955718 (not res!2492855)) b!5955717))

(assert (= (or b!5955717 b!5955722) bm!474645))

(assert (= (or b!5955721 b!5955718) bm!474644))

(declare-fun m!6843028 () Bool)

(assert (=> bm!474644 m!6843028))

(declare-fun m!6843030 () Bool)

(assert (=> b!5955715 m!6843030))

(declare-fun m!6843032 () Bool)

(assert (=> bm!474645 m!6843032))

(declare-fun m!6843034 () Bool)

(assert (=> b!5955720 m!6843034))

(assert (=> b!5955496 d!1867163))

(declare-fun b!5955751 () Bool)

(declare-fun res!2492876 () Bool)

(declare-fun e!3643165 () Bool)

(assert (=> b!5955751 (=> (not res!2492876) (not e!3643165))))

(declare-fun tail!11623 (List!64295) List!64295)

(assert (=> b!5955751 (= res!2492876 (isEmpty!36059 (tail!11623 s!2326)))))

(declare-fun b!5955752 () Bool)

(declare-fun e!3643168 () Bool)

(declare-fun head!12538 (List!64295) C!32266)

(assert (=> b!5955752 (= e!3643168 (not (= (head!12538 s!2326) (c!1060066 r!7292))))))

(declare-fun b!5955754 () Bool)

(declare-fun res!2492880 () Bool)

(declare-fun e!3643167 () Bool)

(assert (=> b!5955754 (=> res!2492880 e!3643167)))

(assert (=> b!5955754 (= res!2492880 e!3643165)))

(declare-fun res!2492875 () Bool)

(assert (=> b!5955754 (=> (not res!2492875) (not e!3643165))))

(declare-fun lt!2314231 () Bool)

(assert (=> b!5955754 (= res!2492875 lt!2314231)))

(declare-fun b!5955755 () Bool)

(declare-fun res!2492877 () Bool)

(assert (=> b!5955755 (=> (not res!2492877) (not e!3643165))))

(declare-fun call!474653 () Bool)

(assert (=> b!5955755 (= res!2492877 (not call!474653))))

(declare-fun b!5955756 () Bool)

(declare-fun e!3643171 () Bool)

(declare-fun e!3643166 () Bool)

(assert (=> b!5955756 (= e!3643171 e!3643166)))

(declare-fun c!1060108 () Bool)

(assert (=> b!5955756 (= c!1060108 (is-EmptyLang!15998 r!7292))))

(declare-fun b!5955757 () Bool)

(assert (=> b!5955757 (= e!3643171 (= lt!2314231 call!474653))))

(declare-fun b!5955758 () Bool)

(declare-fun res!2492878 () Bool)

(assert (=> b!5955758 (=> res!2492878 e!3643167)))

(assert (=> b!5955758 (= res!2492878 (not (is-ElementMatch!15998 r!7292)))))

(assert (=> b!5955758 (= e!3643166 e!3643167)))

(declare-fun b!5955759 () Bool)

(assert (=> b!5955759 (= e!3643165 (= (head!12538 s!2326) (c!1060066 r!7292)))))

(declare-fun b!5955760 () Bool)

(declare-fun res!2492874 () Bool)

(assert (=> b!5955760 (=> res!2492874 e!3643168)))

(assert (=> b!5955760 (= res!2492874 (not (isEmpty!36059 (tail!11623 s!2326))))))

(declare-fun b!5955761 () Bool)

(assert (=> b!5955761 (= e!3643166 (not lt!2314231))))

(declare-fun b!5955762 () Bool)

(declare-fun e!3643169 () Bool)

(assert (=> b!5955762 (= e!3643167 e!3643169)))

(declare-fun res!2492879 () Bool)

(assert (=> b!5955762 (=> (not res!2492879) (not e!3643169))))

(assert (=> b!5955762 (= res!2492879 (not lt!2314231))))

(declare-fun b!5955763 () Bool)

(declare-fun e!3643170 () Bool)

(declare-fun derivativeStep!4729 (Regex!15998 C!32266) Regex!15998)

(assert (=> b!5955763 (= e!3643170 (matchR!8181 (derivativeStep!4729 r!7292 (head!12538 s!2326)) (tail!11623 s!2326)))))

(declare-fun bm!474648 () Bool)

(assert (=> bm!474648 (= call!474653 (isEmpty!36059 s!2326))))

(declare-fun b!5955764 () Bool)

(assert (=> b!5955764 (= e!3643170 (nullable!5993 r!7292))))

(declare-fun b!5955753 () Bool)

(assert (=> b!5955753 (= e!3643169 e!3643168)))

(declare-fun res!2492881 () Bool)

(assert (=> b!5955753 (=> res!2492881 e!3643168)))

(assert (=> b!5955753 (= res!2492881 call!474653)))

(declare-fun d!1867165 () Bool)

(assert (=> d!1867165 e!3643171))

(declare-fun c!1060109 () Bool)

(assert (=> d!1867165 (= c!1060109 (is-EmptyExpr!15998 r!7292))))

(assert (=> d!1867165 (= lt!2314231 e!3643170)))

(declare-fun c!1060110 () Bool)

(assert (=> d!1867165 (= c!1060110 (isEmpty!36059 s!2326))))

(assert (=> d!1867165 (validRegex!7734 r!7292)))

(assert (=> d!1867165 (= (matchR!8181 r!7292 s!2326) lt!2314231)))

(assert (= (and d!1867165 c!1060110) b!5955764))

(assert (= (and d!1867165 (not c!1060110)) b!5955763))

(assert (= (and d!1867165 c!1060109) b!5955757))

(assert (= (and d!1867165 (not c!1060109)) b!5955756))

(assert (= (and b!5955756 c!1060108) b!5955761))

(assert (= (and b!5955756 (not c!1060108)) b!5955758))

(assert (= (and b!5955758 (not res!2492878)) b!5955754))

(assert (= (and b!5955754 res!2492875) b!5955755))

(assert (= (and b!5955755 res!2492877) b!5955751))

(assert (= (and b!5955751 res!2492876) b!5955759))

(assert (= (and b!5955754 (not res!2492880)) b!5955762))

(assert (= (and b!5955762 res!2492879) b!5955753))

(assert (= (and b!5955753 (not res!2492881)) b!5955760))

(assert (= (and b!5955760 (not res!2492874)) b!5955752))

(assert (= (or b!5955757 b!5955753 b!5955755) bm!474648))

(declare-fun m!6843036 () Bool)

(assert (=> b!5955759 m!6843036))

(declare-fun m!6843038 () Bool)

(assert (=> b!5955760 m!6843038))

(assert (=> b!5955760 m!6843038))

(declare-fun m!6843040 () Bool)

(assert (=> b!5955760 m!6843040))

(declare-fun m!6843042 () Bool)

(assert (=> b!5955764 m!6843042))

(assert (=> b!5955751 m!6843038))

(assert (=> b!5955751 m!6843038))

(assert (=> b!5955751 m!6843040))

(assert (=> b!5955763 m!6843036))

(assert (=> b!5955763 m!6843036))

(declare-fun m!6843044 () Bool)

(assert (=> b!5955763 m!6843044))

(assert (=> b!5955763 m!6843038))

(assert (=> b!5955763 m!6843044))

(assert (=> b!5955763 m!6843038))

(declare-fun m!6843046 () Bool)

(assert (=> b!5955763 m!6843046))

(assert (=> b!5955752 m!6843036))

(assert (=> bm!474648 m!6843028))

(assert (=> d!1867165 m!6843028))

(assert (=> d!1867165 m!6842888))

(assert (=> b!5955496 d!1867165))

(declare-fun d!1867167 () Bool)

(assert (=> d!1867167 (= (matchR!8181 r!7292 s!2326) (matchRSpec!3099 r!7292 s!2326))))

(declare-fun lt!2314234 () Unit!157267)

(declare-fun choose!44887 (Regex!15998 List!64295) Unit!157267)

(assert (=> d!1867167 (= lt!2314234 (choose!44887 r!7292 s!2326))))

(assert (=> d!1867167 (validRegex!7734 r!7292)))

(assert (=> d!1867167 (= (mainMatchTheorem!3099 r!7292 s!2326) lt!2314234)))

(declare-fun bs!1411998 () Bool)

(assert (= bs!1411998 d!1867167))

(assert (=> bs!1411998 m!6842806))

(assert (=> bs!1411998 m!6842804))

(declare-fun m!6843048 () Bool)

(assert (=> bs!1411998 m!6843048))

(assert (=> bs!1411998 m!6842888))

(assert (=> b!5955496 d!1867167))

(declare-fun d!1867169 () Bool)

(declare-fun choose!44888 ((Set Context!10764) Int) (Set Context!10764))

(assert (=> d!1867169 (= (flatMap!1511 z!1189 lambda!325249) (choose!44888 z!1189 lambda!325249))))

(declare-fun bs!1411999 () Bool)

(assert (= bs!1411999 d!1867169))

(declare-fun m!6843050 () Bool)

(assert (=> bs!1411999 m!6843050))

(assert (=> b!5955526 d!1867169))

(declare-fun d!1867171 () Bool)

(declare-fun c!1060115 () Bool)

(declare-fun e!3643179 () Bool)

(assert (=> d!1867171 (= c!1060115 e!3643179)))

(declare-fun res!2492884 () Bool)

(assert (=> d!1867171 (=> (not res!2492884) (not e!3643179))))

(assert (=> d!1867171 (= res!2492884 (is-Cons!64169 (exprs!5882 (h!70618 zl!343))))))

(declare-fun e!3643178 () (Set Context!10764))

(assert (=> d!1867171 (= (derivationStepZipperUp!1174 (h!70618 zl!343) (h!70619 s!2326)) e!3643178)))

(declare-fun bm!474651 () Bool)

(declare-fun call!474656 () (Set Context!10764))

(assert (=> bm!474651 (= call!474656 (derivationStepZipperDown!1248 (h!70617 (exprs!5882 (h!70618 zl!343))) (Context!10765 (t!377706 (exprs!5882 (h!70618 zl!343)))) (h!70619 s!2326)))))

(declare-fun b!5955775 () Bool)

(assert (=> b!5955775 (= e!3643179 (nullable!5993 (h!70617 (exprs!5882 (h!70618 zl!343)))))))

(declare-fun b!5955776 () Bool)

(declare-fun e!3643180 () (Set Context!10764))

(assert (=> b!5955776 (= e!3643180 (as set.empty (Set Context!10764)))))

(declare-fun b!5955777 () Bool)

(assert (=> b!5955777 (= e!3643178 (set.union call!474656 (derivationStepZipperUp!1174 (Context!10765 (t!377706 (exprs!5882 (h!70618 zl!343)))) (h!70619 s!2326))))))

(declare-fun b!5955778 () Bool)

(assert (=> b!5955778 (= e!3643178 e!3643180)))

(declare-fun c!1060116 () Bool)

(assert (=> b!5955778 (= c!1060116 (is-Cons!64169 (exprs!5882 (h!70618 zl!343))))))

(declare-fun b!5955779 () Bool)

(assert (=> b!5955779 (= e!3643180 call!474656)))

(assert (= (and d!1867171 res!2492884) b!5955775))

(assert (= (and d!1867171 c!1060115) b!5955777))

(assert (= (and d!1867171 (not c!1060115)) b!5955778))

(assert (= (and b!5955778 c!1060116) b!5955779))

(assert (= (and b!5955778 (not c!1060116)) b!5955776))

(assert (= (or b!5955777 b!5955779) bm!474651))

(declare-fun m!6843052 () Bool)

(assert (=> bm!474651 m!6843052))

(declare-fun m!6843054 () Bool)

(assert (=> b!5955775 m!6843054))

(declare-fun m!6843056 () Bool)

(assert (=> b!5955777 m!6843056))

(assert (=> b!5955526 d!1867171))

(declare-fun d!1867173 () Bool)

(declare-fun dynLambda!25117 (Int Context!10764) (Set Context!10764))

(assert (=> d!1867173 (= (flatMap!1511 z!1189 lambda!325249) (dynLambda!25117 lambda!325249 (h!70618 zl!343)))))

(declare-fun lt!2314237 () Unit!157267)

(declare-fun choose!44889 ((Set Context!10764) Context!10764 Int) Unit!157267)

(assert (=> d!1867173 (= lt!2314237 (choose!44889 z!1189 (h!70618 zl!343) lambda!325249))))

(assert (=> d!1867173 (= z!1189 (set.insert (h!70618 zl!343) (as set.empty (Set Context!10764))))))

(assert (=> d!1867173 (= (lemmaFlatMapOnSingletonSet!1037 z!1189 (h!70618 zl!343) lambda!325249) lt!2314237)))

(declare-fun b_lambda!223929 () Bool)

(assert (=> (not b_lambda!223929) (not d!1867173)))

(declare-fun bs!1412000 () Bool)

(assert (= bs!1412000 d!1867173))

(assert (=> bs!1412000 m!6842864))

(declare-fun m!6843058 () Bool)

(assert (=> bs!1412000 m!6843058))

(declare-fun m!6843060 () Bool)

(assert (=> bs!1412000 m!6843060))

(declare-fun m!6843062 () Bool)

(assert (=> bs!1412000 m!6843062))

(assert (=> b!5955526 d!1867173))

(declare-fun d!1867175 () Bool)

(declare-fun c!1060117 () Bool)

(declare-fun e!3643182 () Bool)

(assert (=> d!1867175 (= c!1060117 e!3643182)))

(declare-fun res!2492885 () Bool)

(assert (=> d!1867175 (=> (not res!2492885) (not e!3643182))))

(assert (=> d!1867175 (= res!2492885 (is-Cons!64169 (exprs!5882 lt!2314130)))))

(declare-fun e!3643181 () (Set Context!10764))

(assert (=> d!1867175 (= (derivationStepZipperUp!1174 lt!2314130 (h!70619 s!2326)) e!3643181)))

(declare-fun bm!474652 () Bool)

(declare-fun call!474657 () (Set Context!10764))

(assert (=> bm!474652 (= call!474657 (derivationStepZipperDown!1248 (h!70617 (exprs!5882 lt!2314130)) (Context!10765 (t!377706 (exprs!5882 lt!2314130))) (h!70619 s!2326)))))

(declare-fun b!5955780 () Bool)

(assert (=> b!5955780 (= e!3643182 (nullable!5993 (h!70617 (exprs!5882 lt!2314130))))))

(declare-fun b!5955781 () Bool)

(declare-fun e!3643183 () (Set Context!10764))

(assert (=> b!5955781 (= e!3643183 (as set.empty (Set Context!10764)))))

(declare-fun b!5955782 () Bool)

(assert (=> b!5955782 (= e!3643181 (set.union call!474657 (derivationStepZipperUp!1174 (Context!10765 (t!377706 (exprs!5882 lt!2314130))) (h!70619 s!2326))))))

(declare-fun b!5955783 () Bool)

(assert (=> b!5955783 (= e!3643181 e!3643183)))

(declare-fun c!1060118 () Bool)

(assert (=> b!5955783 (= c!1060118 (is-Cons!64169 (exprs!5882 lt!2314130)))))

(declare-fun b!5955784 () Bool)

(assert (=> b!5955784 (= e!3643183 call!474657)))

(assert (= (and d!1867175 res!2492885) b!5955780))

(assert (= (and d!1867175 c!1060117) b!5955782))

(assert (= (and d!1867175 (not c!1060117)) b!5955783))

(assert (= (and b!5955783 c!1060118) b!5955784))

(assert (= (and b!5955783 (not c!1060118)) b!5955781))

(assert (= (or b!5955782 b!5955784) bm!474652))

(declare-fun m!6843064 () Bool)

(assert (=> bm!474652 m!6843064))

(declare-fun m!6843066 () Bool)

(assert (=> b!5955780 m!6843066))

(declare-fun m!6843068 () Bool)

(assert (=> b!5955782 m!6843068))

(assert (=> b!5955508 d!1867175))

(declare-fun d!1867177 () Bool)

(assert (=> d!1867177 (= (flatMap!1511 lt!2314120 lambda!325249) (choose!44888 lt!2314120 lambda!325249))))

(declare-fun bs!1412001 () Bool)

(assert (= bs!1412001 d!1867177))

(declare-fun m!6843070 () Bool)

(assert (=> bs!1412001 m!6843070))

(assert (=> b!5955508 d!1867177))

(declare-fun b!5955807 () Bool)

(declare-fun e!3643201 () (Set Context!10764))

(assert (=> b!5955807 (= e!3643201 (as set.empty (Set Context!10764)))))

(declare-fun b!5955808 () Bool)

(declare-fun c!1060131 () Bool)

(declare-fun e!3643197 () Bool)

(assert (=> b!5955808 (= c!1060131 e!3643197)))

(declare-fun res!2492888 () Bool)

(assert (=> b!5955808 (=> (not res!2492888) (not e!3643197))))

(assert (=> b!5955808 (= res!2492888 (is-Concat!24843 (regOne!32508 r!7292)))))

(declare-fun e!3643198 () (Set Context!10764))

(declare-fun e!3643199 () (Set Context!10764))

(assert (=> b!5955808 (= e!3643198 e!3643199)))

(declare-fun bm!474665 () Bool)

(declare-fun call!474674 () (Set Context!10764))

(declare-fun call!474673 () (Set Context!10764))

(assert (=> bm!474665 (= call!474674 call!474673)))

(declare-fun b!5955809 () Bool)

(declare-fun call!474671 () (Set Context!10764))

(assert (=> b!5955809 (= e!3643201 call!474671)))

(declare-fun b!5955810 () Bool)

(declare-fun call!474675 () (Set Context!10764))

(assert (=> b!5955810 (= e!3643199 (set.union call!474675 call!474674))))

(declare-fun b!5955811 () Bool)

(assert (=> b!5955811 (= e!3643197 (nullable!5993 (regOne!32508 (regOne!32508 r!7292))))))

(declare-fun bm!474666 () Bool)

(declare-fun c!1060132 () Bool)

(declare-fun call!474672 () List!64293)

(declare-fun $colon$colon!1885 (List!64293 Regex!15998) List!64293)

(assert (=> bm!474666 (= call!474672 ($colon$colon!1885 (exprs!5882 lt!2314130) (ite (or c!1060131 c!1060132) (regTwo!32508 (regOne!32508 r!7292)) (regOne!32508 r!7292))))))

(declare-fun b!5955812 () Bool)

(declare-fun e!3643196 () (Set Context!10764))

(assert (=> b!5955812 (= e!3643196 call!474671)))

(declare-fun bm!474667 () Bool)

(declare-fun call!474670 () List!64293)

(assert (=> bm!474667 (= call!474670 call!474672)))

(declare-fun bm!474668 () Bool)

(assert (=> bm!474668 (= call!474671 call!474674)))

(declare-fun c!1060133 () Bool)

(declare-fun bm!474669 () Bool)

(assert (=> bm!474669 (= call!474675 (derivationStepZipperDown!1248 (ite c!1060133 (regOne!32509 (regOne!32508 r!7292)) (regOne!32508 (regOne!32508 r!7292))) (ite c!1060133 lt!2314130 (Context!10765 call!474672)) (h!70619 s!2326)))))

(declare-fun bm!474670 () Bool)

(assert (=> bm!474670 (= call!474673 (derivationStepZipperDown!1248 (ite c!1060133 (regTwo!32509 (regOne!32508 r!7292)) (ite c!1060131 (regTwo!32508 (regOne!32508 r!7292)) (ite c!1060132 (regOne!32508 (regOne!32508 r!7292)) (reg!16327 (regOne!32508 r!7292))))) (ite (or c!1060133 c!1060131) lt!2314130 (Context!10765 call!474670)) (h!70619 s!2326)))))

(declare-fun b!5955814 () Bool)

(assert (=> b!5955814 (= e!3643199 e!3643196)))

(assert (=> b!5955814 (= c!1060132 (is-Concat!24843 (regOne!32508 r!7292)))))

(declare-fun b!5955815 () Bool)

(declare-fun e!3643200 () (Set Context!10764))

(assert (=> b!5955815 (= e!3643200 (set.insert lt!2314130 (as set.empty (Set Context!10764))))))

(declare-fun b!5955816 () Bool)

(declare-fun c!1060129 () Bool)

(assert (=> b!5955816 (= c!1060129 (is-Star!15998 (regOne!32508 r!7292)))))

(assert (=> b!5955816 (= e!3643196 e!3643201)))

(declare-fun b!5955817 () Bool)

(assert (=> b!5955817 (= e!3643200 e!3643198)))

(assert (=> b!5955817 (= c!1060133 (is-Union!15998 (regOne!32508 r!7292)))))

(declare-fun d!1867179 () Bool)

(declare-fun c!1060130 () Bool)

(assert (=> d!1867179 (= c!1060130 (and (is-ElementMatch!15998 (regOne!32508 r!7292)) (= (c!1060066 (regOne!32508 r!7292)) (h!70619 s!2326))))))

(assert (=> d!1867179 (= (derivationStepZipperDown!1248 (regOne!32508 r!7292) lt!2314130 (h!70619 s!2326)) e!3643200)))

(declare-fun b!5955813 () Bool)

(assert (=> b!5955813 (= e!3643198 (set.union call!474675 call!474673))))

(assert (= (and d!1867179 c!1060130) b!5955815))

(assert (= (and d!1867179 (not c!1060130)) b!5955817))

(assert (= (and b!5955817 c!1060133) b!5955813))

(assert (= (and b!5955817 (not c!1060133)) b!5955808))

(assert (= (and b!5955808 res!2492888) b!5955811))

(assert (= (and b!5955808 c!1060131) b!5955810))

(assert (= (and b!5955808 (not c!1060131)) b!5955814))

(assert (= (and b!5955814 c!1060132) b!5955812))

(assert (= (and b!5955814 (not c!1060132)) b!5955816))

(assert (= (and b!5955816 c!1060129) b!5955809))

(assert (= (and b!5955816 (not c!1060129)) b!5955807))

(assert (= (or b!5955812 b!5955809) bm!474667))

(assert (= (or b!5955812 b!5955809) bm!474668))

(assert (= (or b!5955810 bm!474667) bm!474666))

(assert (= (or b!5955810 bm!474668) bm!474665))

(assert (= (or b!5955813 bm!474665) bm!474670))

(assert (= (or b!5955813 b!5955810) bm!474669))

(assert (=> b!5955815 m!6842820))

(declare-fun m!6843072 () Bool)

(assert (=> b!5955811 m!6843072))

(declare-fun m!6843074 () Bool)

(assert (=> bm!474670 m!6843074))

(declare-fun m!6843076 () Bool)

(assert (=> bm!474666 m!6843076))

(declare-fun m!6843078 () Bool)

(assert (=> bm!474669 m!6843078))

(assert (=> b!5955508 d!1867179))

(declare-fun d!1867181 () Bool)

(declare-fun nullableFct!1965 (Regex!15998) Bool)

(assert (=> d!1867181 (= (nullable!5993 (regOne!32508 r!7292)) (nullableFct!1965 (regOne!32508 r!7292)))))

(declare-fun bs!1412002 () Bool)

(assert (= bs!1412002 d!1867181))

(declare-fun m!6843080 () Bool)

(assert (=> bs!1412002 m!6843080))

(assert (=> b!5955508 d!1867181))

(declare-fun b!5955818 () Bool)

(declare-fun e!3643207 () (Set Context!10764))

(assert (=> b!5955818 (= e!3643207 (as set.empty (Set Context!10764)))))

(declare-fun b!5955819 () Bool)

(declare-fun c!1060136 () Bool)

(declare-fun e!3643203 () Bool)

(assert (=> b!5955819 (= c!1060136 e!3643203)))

(declare-fun res!2492889 () Bool)

(assert (=> b!5955819 (=> (not res!2492889) (not e!3643203))))

(assert (=> b!5955819 (= res!2492889 (is-Concat!24843 (regTwo!32508 r!7292)))))

(declare-fun e!3643204 () (Set Context!10764))

(declare-fun e!3643205 () (Set Context!10764))

(assert (=> b!5955819 (= e!3643204 e!3643205)))

(declare-fun bm!474671 () Bool)

(declare-fun call!474680 () (Set Context!10764))

(declare-fun call!474679 () (Set Context!10764))

(assert (=> bm!474671 (= call!474680 call!474679)))

(declare-fun b!5955820 () Bool)

(declare-fun call!474677 () (Set Context!10764))

(assert (=> b!5955820 (= e!3643207 call!474677)))

(declare-fun b!5955821 () Bool)

(declare-fun call!474681 () (Set Context!10764))

(assert (=> b!5955821 (= e!3643205 (set.union call!474681 call!474680))))

(declare-fun b!5955822 () Bool)

(assert (=> b!5955822 (= e!3643203 (nullable!5993 (regOne!32508 (regTwo!32508 r!7292))))))

(declare-fun bm!474672 () Bool)

(declare-fun call!474678 () List!64293)

(declare-fun c!1060137 () Bool)

(assert (=> bm!474672 (= call!474678 ($colon$colon!1885 (exprs!5882 lt!2314113) (ite (or c!1060136 c!1060137) (regTwo!32508 (regTwo!32508 r!7292)) (regTwo!32508 r!7292))))))

(declare-fun b!5955823 () Bool)

(declare-fun e!3643202 () (Set Context!10764))

(assert (=> b!5955823 (= e!3643202 call!474677)))

(declare-fun bm!474673 () Bool)

(declare-fun call!474676 () List!64293)

(assert (=> bm!474673 (= call!474676 call!474678)))

(declare-fun bm!474674 () Bool)

(assert (=> bm!474674 (= call!474677 call!474680)))

(declare-fun c!1060138 () Bool)

(declare-fun bm!474675 () Bool)

(assert (=> bm!474675 (= call!474681 (derivationStepZipperDown!1248 (ite c!1060138 (regOne!32509 (regTwo!32508 r!7292)) (regOne!32508 (regTwo!32508 r!7292))) (ite c!1060138 lt!2314113 (Context!10765 call!474678)) (h!70619 s!2326)))))

(declare-fun bm!474676 () Bool)

(assert (=> bm!474676 (= call!474679 (derivationStepZipperDown!1248 (ite c!1060138 (regTwo!32509 (regTwo!32508 r!7292)) (ite c!1060136 (regTwo!32508 (regTwo!32508 r!7292)) (ite c!1060137 (regOne!32508 (regTwo!32508 r!7292)) (reg!16327 (regTwo!32508 r!7292))))) (ite (or c!1060138 c!1060136) lt!2314113 (Context!10765 call!474676)) (h!70619 s!2326)))))

(declare-fun b!5955825 () Bool)

(assert (=> b!5955825 (= e!3643205 e!3643202)))

(assert (=> b!5955825 (= c!1060137 (is-Concat!24843 (regTwo!32508 r!7292)))))

(declare-fun b!5955826 () Bool)

(declare-fun e!3643206 () (Set Context!10764))

(assert (=> b!5955826 (= e!3643206 (set.insert lt!2314113 (as set.empty (Set Context!10764))))))

(declare-fun b!5955827 () Bool)

(declare-fun c!1060134 () Bool)

(assert (=> b!5955827 (= c!1060134 (is-Star!15998 (regTwo!32508 r!7292)))))

(assert (=> b!5955827 (= e!3643202 e!3643207)))

(declare-fun b!5955828 () Bool)

(assert (=> b!5955828 (= e!3643206 e!3643204)))

(assert (=> b!5955828 (= c!1060138 (is-Union!15998 (regTwo!32508 r!7292)))))

(declare-fun d!1867183 () Bool)

(declare-fun c!1060135 () Bool)

(assert (=> d!1867183 (= c!1060135 (and (is-ElementMatch!15998 (regTwo!32508 r!7292)) (= (c!1060066 (regTwo!32508 r!7292)) (h!70619 s!2326))))))

(assert (=> d!1867183 (= (derivationStepZipperDown!1248 (regTwo!32508 r!7292) lt!2314113 (h!70619 s!2326)) e!3643206)))

(declare-fun b!5955824 () Bool)

(assert (=> b!5955824 (= e!3643204 (set.union call!474681 call!474679))))

(assert (= (and d!1867183 c!1060135) b!5955826))

(assert (= (and d!1867183 (not c!1060135)) b!5955828))

(assert (= (and b!5955828 c!1060138) b!5955824))

(assert (= (and b!5955828 (not c!1060138)) b!5955819))

(assert (= (and b!5955819 res!2492889) b!5955822))

(assert (= (and b!5955819 c!1060136) b!5955821))

(assert (= (and b!5955819 (not c!1060136)) b!5955825))

(assert (= (and b!5955825 c!1060137) b!5955823))

(assert (= (and b!5955825 (not c!1060137)) b!5955827))

(assert (= (and b!5955827 c!1060134) b!5955820))

(assert (= (and b!5955827 (not c!1060134)) b!5955818))

(assert (= (or b!5955823 b!5955820) bm!474673))

(assert (= (or b!5955823 b!5955820) bm!474674))

(assert (= (or b!5955821 bm!474673) bm!474672))

(assert (= (or b!5955821 bm!474674) bm!474671))

(assert (= (or b!5955824 bm!474671) bm!474676))

(assert (= (or b!5955824 b!5955821) bm!474675))

(declare-fun m!6843082 () Bool)

(assert (=> b!5955826 m!6843082))

(declare-fun m!6843084 () Bool)

(assert (=> b!5955822 m!6843084))

(declare-fun m!6843086 () Bool)

(assert (=> bm!474676 m!6843086))

(declare-fun m!6843088 () Bool)

(assert (=> bm!474672 m!6843088))

(declare-fun m!6843090 () Bool)

(assert (=> bm!474675 m!6843090))

(assert (=> b!5955508 d!1867183))

(declare-fun d!1867185 () Bool)

(assert (=> d!1867185 (= (flatMap!1511 lt!2314120 lambda!325249) (dynLambda!25117 lambda!325249 lt!2314130))))

(declare-fun lt!2314238 () Unit!157267)

(assert (=> d!1867185 (= lt!2314238 (choose!44889 lt!2314120 lt!2314130 lambda!325249))))

(assert (=> d!1867185 (= lt!2314120 (set.insert lt!2314130 (as set.empty (Set Context!10764))))))

(assert (=> d!1867185 (= (lemmaFlatMapOnSingletonSet!1037 lt!2314120 lt!2314130 lambda!325249) lt!2314238)))

(declare-fun b_lambda!223931 () Bool)

(assert (=> (not b_lambda!223931) (not d!1867185)))

(declare-fun bs!1412003 () Bool)

(assert (= bs!1412003 d!1867185))

(assert (=> bs!1412003 m!6842828))

(declare-fun m!6843092 () Bool)

(assert (=> bs!1412003 m!6843092))

(declare-fun m!6843094 () Bool)

(assert (=> bs!1412003 m!6843094))

(assert (=> bs!1412003 m!6842820))

(assert (=> b!5955508 d!1867185))

(declare-fun d!1867187 () Bool)

(assert (=> d!1867187 (= (flatMap!1511 lt!2314123 lambda!325249) (choose!44888 lt!2314123 lambda!325249))))

(declare-fun bs!1412004 () Bool)

(assert (= bs!1412004 d!1867187))

(declare-fun m!6843096 () Bool)

(assert (=> bs!1412004 m!6843096))

(assert (=> b!5955508 d!1867187))

(declare-fun d!1867189 () Bool)

(declare-fun c!1060139 () Bool)

(declare-fun e!3643209 () Bool)

(assert (=> d!1867189 (= c!1060139 e!3643209)))

(declare-fun res!2492890 () Bool)

(assert (=> d!1867189 (=> (not res!2492890) (not e!3643209))))

(assert (=> d!1867189 (= res!2492890 (is-Cons!64169 (exprs!5882 lt!2314126)))))

(declare-fun e!3643208 () (Set Context!10764))

(assert (=> d!1867189 (= (derivationStepZipperUp!1174 lt!2314126 (h!70619 s!2326)) e!3643208)))

(declare-fun bm!474677 () Bool)

(declare-fun call!474682 () (Set Context!10764))

(assert (=> bm!474677 (= call!474682 (derivationStepZipperDown!1248 (h!70617 (exprs!5882 lt!2314126)) (Context!10765 (t!377706 (exprs!5882 lt!2314126))) (h!70619 s!2326)))))

(declare-fun b!5955829 () Bool)

(assert (=> b!5955829 (= e!3643209 (nullable!5993 (h!70617 (exprs!5882 lt!2314126))))))

(declare-fun b!5955830 () Bool)

(declare-fun e!3643210 () (Set Context!10764))

(assert (=> b!5955830 (= e!3643210 (as set.empty (Set Context!10764)))))

(declare-fun b!5955831 () Bool)

(assert (=> b!5955831 (= e!3643208 (set.union call!474682 (derivationStepZipperUp!1174 (Context!10765 (t!377706 (exprs!5882 lt!2314126))) (h!70619 s!2326))))))

(declare-fun b!5955832 () Bool)

(assert (=> b!5955832 (= e!3643208 e!3643210)))

(declare-fun c!1060140 () Bool)

(assert (=> b!5955832 (= c!1060140 (is-Cons!64169 (exprs!5882 lt!2314126)))))

(declare-fun b!5955833 () Bool)

(assert (=> b!5955833 (= e!3643210 call!474682)))

(assert (= (and d!1867189 res!2492890) b!5955829))

(assert (= (and d!1867189 c!1060139) b!5955831))

(assert (= (and d!1867189 (not c!1060139)) b!5955832))

(assert (= (and b!5955832 c!1060140) b!5955833))

(assert (= (and b!5955832 (not c!1060140)) b!5955830))

(assert (= (or b!5955831 b!5955833) bm!474677))

(declare-fun m!6843098 () Bool)

(assert (=> bm!474677 m!6843098))

(declare-fun m!6843100 () Bool)

(assert (=> b!5955829 m!6843100))

(declare-fun m!6843102 () Bool)

(assert (=> b!5955831 m!6843102))

(assert (=> b!5955508 d!1867189))

(declare-fun d!1867191 () Bool)

(assert (=> d!1867191 (= (flatMap!1511 lt!2314123 lambda!325249) (dynLambda!25117 lambda!325249 lt!2314126))))

(declare-fun lt!2314239 () Unit!157267)

(assert (=> d!1867191 (= lt!2314239 (choose!44889 lt!2314123 lt!2314126 lambda!325249))))

(assert (=> d!1867191 (= lt!2314123 (set.insert lt!2314126 (as set.empty (Set Context!10764))))))

(assert (=> d!1867191 (= (lemmaFlatMapOnSingletonSet!1037 lt!2314123 lt!2314126 lambda!325249) lt!2314239)))

(declare-fun b_lambda!223933 () Bool)

(assert (=> (not b_lambda!223933) (not d!1867191)))

(declare-fun bs!1412005 () Bool)

(assert (= bs!1412005 d!1867191))

(assert (=> bs!1412005 m!6842830))

(declare-fun m!6843104 () Bool)

(assert (=> bs!1412005 m!6843104))

(declare-fun m!6843106 () Bool)

(assert (=> bs!1412005 m!6843106))

(assert (=> bs!1412005 m!6842822))

(assert (=> b!5955508 d!1867191))

(declare-fun d!1867193 () Bool)

(declare-fun c!1060143 () Bool)

(assert (=> d!1867193 (= c!1060143 (isEmpty!36059 s!2326))))

(declare-fun e!3643213 () Bool)

(assert (=> d!1867193 (= (matchZipper!2034 lt!2314123 s!2326) e!3643213)))

(declare-fun b!5955838 () Bool)

(declare-fun nullableZipper!1805 ((Set Context!10764)) Bool)

(assert (=> b!5955838 (= e!3643213 (nullableZipper!1805 lt!2314123))))

(declare-fun b!5955839 () Bool)

(assert (=> b!5955839 (= e!3643213 (matchZipper!2034 (derivationStepZipper!1979 lt!2314123 (head!12538 s!2326)) (tail!11623 s!2326)))))

(assert (= (and d!1867193 c!1060143) b!5955838))

(assert (= (and d!1867193 (not c!1060143)) b!5955839))

(assert (=> d!1867193 m!6843028))

(declare-fun m!6843108 () Bool)

(assert (=> b!5955838 m!6843108))

(assert (=> b!5955839 m!6843036))

(assert (=> b!5955839 m!6843036))

(declare-fun m!6843110 () Bool)

(assert (=> b!5955839 m!6843110))

(assert (=> b!5955839 m!6843038))

(assert (=> b!5955839 m!6843110))

(assert (=> b!5955839 m!6843038))

(declare-fun m!6843112 () Bool)

(assert (=> b!5955839 m!6843112))

(assert (=> b!5955507 d!1867193))

(declare-fun d!1867195 () Bool)

(declare-fun c!1060144 () Bool)

(assert (=> d!1867195 (= c!1060144 (isEmpty!36059 (t!377708 s!2326)))))

(declare-fun e!3643214 () Bool)

(assert (=> d!1867195 (= (matchZipper!2034 (derivationStepZipper!1979 lt!2314123 (h!70619 s!2326)) (t!377708 s!2326)) e!3643214)))

(declare-fun b!5955840 () Bool)

(assert (=> b!5955840 (= e!3643214 (nullableZipper!1805 (derivationStepZipper!1979 lt!2314123 (h!70619 s!2326))))))

(declare-fun b!5955841 () Bool)

(assert (=> b!5955841 (= e!3643214 (matchZipper!2034 (derivationStepZipper!1979 (derivationStepZipper!1979 lt!2314123 (h!70619 s!2326)) (head!12538 (t!377708 s!2326))) (tail!11623 (t!377708 s!2326))))))

(assert (= (and d!1867195 c!1060144) b!5955840))

(assert (= (and d!1867195 (not c!1060144)) b!5955841))

(declare-fun m!6843114 () Bool)

(assert (=> d!1867195 m!6843114))

(assert (=> b!5955840 m!6842844))

(declare-fun m!6843116 () Bool)

(assert (=> b!5955840 m!6843116))

(declare-fun m!6843118 () Bool)

(assert (=> b!5955841 m!6843118))

(assert (=> b!5955841 m!6842844))

(assert (=> b!5955841 m!6843118))

(declare-fun m!6843120 () Bool)

(assert (=> b!5955841 m!6843120))

(declare-fun m!6843122 () Bool)

(assert (=> b!5955841 m!6843122))

(assert (=> b!5955841 m!6843120))

(assert (=> b!5955841 m!6843122))

(declare-fun m!6843124 () Bool)

(assert (=> b!5955841 m!6843124))

(assert (=> b!5955507 d!1867195))

(declare-fun bs!1412006 () Bool)

(declare-fun d!1867197 () Bool)

(assert (= bs!1412006 (and d!1867197 b!5955526)))

(declare-fun lambda!325279 () Int)

(assert (=> bs!1412006 (= lambda!325279 lambda!325249)))

(assert (=> d!1867197 true))

(assert (=> d!1867197 (= (derivationStepZipper!1979 lt!2314123 (h!70619 s!2326)) (flatMap!1511 lt!2314123 lambda!325279))))

(declare-fun bs!1412007 () Bool)

(assert (= bs!1412007 d!1867197))

(declare-fun m!6843126 () Bool)

(assert (=> bs!1412007 m!6843126))

(assert (=> b!5955507 d!1867197))

(declare-fun b!5955844 () Bool)

(declare-fun e!3643220 () (Set Context!10764))

(assert (=> b!5955844 (= e!3643220 (as set.empty (Set Context!10764)))))

(declare-fun b!5955845 () Bool)

(declare-fun c!1060149 () Bool)

(declare-fun e!3643216 () Bool)

(assert (=> b!5955845 (= c!1060149 e!3643216)))

(declare-fun res!2492891 () Bool)

(assert (=> b!5955845 (=> (not res!2492891) (not e!3643216))))

(assert (=> b!5955845 (= res!2492891 (is-Concat!24843 r!7292))))

(declare-fun e!3643217 () (Set Context!10764))

(declare-fun e!3643218 () (Set Context!10764))

(assert (=> b!5955845 (= e!3643217 e!3643218)))

(declare-fun bm!474678 () Bool)

(declare-fun call!474687 () (Set Context!10764))

(declare-fun call!474686 () (Set Context!10764))

(assert (=> bm!474678 (= call!474687 call!474686)))

(declare-fun b!5955846 () Bool)

(declare-fun call!474684 () (Set Context!10764))

(assert (=> b!5955846 (= e!3643220 call!474684)))

(declare-fun b!5955847 () Bool)

(declare-fun call!474688 () (Set Context!10764))

(assert (=> b!5955847 (= e!3643218 (set.union call!474688 call!474687))))

(declare-fun b!5955848 () Bool)

(assert (=> b!5955848 (= e!3643216 (nullable!5993 (regOne!32508 r!7292)))))

(declare-fun call!474685 () List!64293)

(declare-fun bm!474679 () Bool)

(declare-fun c!1060150 () Bool)

(assert (=> bm!474679 (= call!474685 ($colon$colon!1885 (exprs!5882 lt!2314113) (ite (or c!1060149 c!1060150) (regTwo!32508 r!7292) r!7292)))))

(declare-fun b!5955849 () Bool)

(declare-fun e!3643215 () (Set Context!10764))

(assert (=> b!5955849 (= e!3643215 call!474684)))

(declare-fun bm!474680 () Bool)

(declare-fun call!474683 () List!64293)

(assert (=> bm!474680 (= call!474683 call!474685)))

(declare-fun bm!474681 () Bool)

(assert (=> bm!474681 (= call!474684 call!474687)))

(declare-fun bm!474682 () Bool)

(declare-fun c!1060151 () Bool)

(assert (=> bm!474682 (= call!474688 (derivationStepZipperDown!1248 (ite c!1060151 (regOne!32509 r!7292) (regOne!32508 r!7292)) (ite c!1060151 lt!2314113 (Context!10765 call!474685)) (h!70619 s!2326)))))

(declare-fun bm!474683 () Bool)

(assert (=> bm!474683 (= call!474686 (derivationStepZipperDown!1248 (ite c!1060151 (regTwo!32509 r!7292) (ite c!1060149 (regTwo!32508 r!7292) (ite c!1060150 (regOne!32508 r!7292) (reg!16327 r!7292)))) (ite (or c!1060151 c!1060149) lt!2314113 (Context!10765 call!474683)) (h!70619 s!2326)))))

(declare-fun b!5955851 () Bool)

(assert (=> b!5955851 (= e!3643218 e!3643215)))

(assert (=> b!5955851 (= c!1060150 (is-Concat!24843 r!7292))))

(declare-fun b!5955852 () Bool)

(declare-fun e!3643219 () (Set Context!10764))

(assert (=> b!5955852 (= e!3643219 (set.insert lt!2314113 (as set.empty (Set Context!10764))))))

(declare-fun b!5955853 () Bool)

(declare-fun c!1060147 () Bool)

(assert (=> b!5955853 (= c!1060147 (is-Star!15998 r!7292))))

(assert (=> b!5955853 (= e!3643215 e!3643220)))

(declare-fun b!5955854 () Bool)

(assert (=> b!5955854 (= e!3643219 e!3643217)))

(assert (=> b!5955854 (= c!1060151 (is-Union!15998 r!7292))))

(declare-fun d!1867199 () Bool)

(declare-fun c!1060148 () Bool)

(assert (=> d!1867199 (= c!1060148 (and (is-ElementMatch!15998 r!7292) (= (c!1060066 r!7292) (h!70619 s!2326))))))

(assert (=> d!1867199 (= (derivationStepZipperDown!1248 r!7292 lt!2314113 (h!70619 s!2326)) e!3643219)))

(declare-fun b!5955850 () Bool)

(assert (=> b!5955850 (= e!3643217 (set.union call!474688 call!474686))))

(assert (= (and d!1867199 c!1060148) b!5955852))

(assert (= (and d!1867199 (not c!1060148)) b!5955854))

(assert (= (and b!5955854 c!1060151) b!5955850))

(assert (= (and b!5955854 (not c!1060151)) b!5955845))

(assert (= (and b!5955845 res!2492891) b!5955848))

(assert (= (and b!5955845 c!1060149) b!5955847))

(assert (= (and b!5955845 (not c!1060149)) b!5955851))

(assert (= (and b!5955851 c!1060150) b!5955849))

(assert (= (and b!5955851 (not c!1060150)) b!5955853))

(assert (= (and b!5955853 c!1060147) b!5955846))

(assert (= (and b!5955853 (not c!1060147)) b!5955844))

(assert (= (or b!5955849 b!5955846) bm!474680))

(assert (= (or b!5955849 b!5955846) bm!474681))

(assert (= (or b!5955847 bm!474680) bm!474679))

(assert (= (or b!5955847 bm!474681) bm!474678))

(assert (= (or b!5955850 bm!474678) bm!474683))

(assert (= (or b!5955850 b!5955847) bm!474682))

(assert (=> b!5955852 m!6843082))

(assert (=> b!5955848 m!6842826))

(declare-fun m!6843128 () Bool)

(assert (=> bm!474683 m!6843128))

(declare-fun m!6843130 () Bool)

(assert (=> bm!474679 m!6843130))

(declare-fun m!6843132 () Bool)

(assert (=> bm!474682 m!6843132))

(assert (=> b!5955503 d!1867199))

(declare-fun d!1867201 () Bool)

(declare-fun c!1060152 () Bool)

(declare-fun e!3643222 () Bool)

(assert (=> d!1867201 (= c!1060152 e!3643222)))

(declare-fun res!2492892 () Bool)

(assert (=> d!1867201 (=> (not res!2492892) (not e!3643222))))

(assert (=> d!1867201 (= res!2492892 (is-Cons!64169 (exprs!5882 lt!2314110)))))

(declare-fun e!3643221 () (Set Context!10764))

(assert (=> d!1867201 (= (derivationStepZipperUp!1174 lt!2314110 (h!70619 s!2326)) e!3643221)))

(declare-fun bm!474684 () Bool)

(declare-fun call!474689 () (Set Context!10764))

(assert (=> bm!474684 (= call!474689 (derivationStepZipperDown!1248 (h!70617 (exprs!5882 lt!2314110)) (Context!10765 (t!377706 (exprs!5882 lt!2314110))) (h!70619 s!2326)))))

(declare-fun b!5955855 () Bool)

(assert (=> b!5955855 (= e!3643222 (nullable!5993 (h!70617 (exprs!5882 lt!2314110))))))

(declare-fun b!5955856 () Bool)

(declare-fun e!3643223 () (Set Context!10764))

(assert (=> b!5955856 (= e!3643223 (as set.empty (Set Context!10764)))))

(declare-fun b!5955857 () Bool)

(assert (=> b!5955857 (= e!3643221 (set.union call!474689 (derivationStepZipperUp!1174 (Context!10765 (t!377706 (exprs!5882 lt!2314110))) (h!70619 s!2326))))))

(declare-fun b!5955858 () Bool)

(assert (=> b!5955858 (= e!3643221 e!3643223)))

(declare-fun c!1060153 () Bool)

(assert (=> b!5955858 (= c!1060153 (is-Cons!64169 (exprs!5882 lt!2314110)))))

(declare-fun b!5955859 () Bool)

(assert (=> b!5955859 (= e!3643223 call!474689)))

(assert (= (and d!1867201 res!2492892) b!5955855))

(assert (= (and d!1867201 c!1060152) b!5955857))

(assert (= (and d!1867201 (not c!1060152)) b!5955858))

(assert (= (and b!5955858 c!1060153) b!5955859))

(assert (= (and b!5955858 (not c!1060153)) b!5955856))

(assert (= (or b!5955857 b!5955859) bm!474684))

(declare-fun m!6843134 () Bool)

(assert (=> bm!474684 m!6843134))

(declare-fun m!6843136 () Bool)

(assert (=> b!5955855 m!6843136))

(declare-fun m!6843138 () Bool)

(assert (=> b!5955857 m!6843138))

(assert (=> b!5955503 d!1867201))

(declare-fun bs!1412008 () Bool)

(declare-fun d!1867203 () Bool)

(assert (= bs!1412008 (and d!1867203 b!5955526)))

(declare-fun lambda!325280 () Int)

(assert (=> bs!1412008 (= lambda!325280 lambda!325249)))

(declare-fun bs!1412009 () Bool)

(assert (= bs!1412009 (and d!1867203 d!1867197)))

(assert (=> bs!1412009 (= lambda!325280 lambda!325279)))

(assert (=> d!1867203 true))

(assert (=> d!1867203 (= (derivationStepZipper!1979 z!1189 (h!70619 s!2326)) (flatMap!1511 z!1189 lambda!325280))))

(declare-fun bs!1412010 () Bool)

(assert (= bs!1412010 d!1867203))

(declare-fun m!6843140 () Bool)

(assert (=> bs!1412010 m!6843140))

(assert (=> b!5955503 d!1867203))

(declare-fun d!1867205 () Bool)

(declare-fun c!1060154 () Bool)

(assert (=> d!1867205 (= c!1060154 (isEmpty!36059 (t!377708 s!2326)))))

(declare-fun e!3643224 () Bool)

(assert (=> d!1867205 (= (matchZipper!2034 lt!2314107 (t!377708 s!2326)) e!3643224)))

(declare-fun b!5955860 () Bool)

(assert (=> b!5955860 (= e!3643224 (nullableZipper!1805 lt!2314107))))

(declare-fun b!5955861 () Bool)

(assert (=> b!5955861 (= e!3643224 (matchZipper!2034 (derivationStepZipper!1979 lt!2314107 (head!12538 (t!377708 s!2326))) (tail!11623 (t!377708 s!2326))))))

(assert (= (and d!1867205 c!1060154) b!5955860))

(assert (= (and d!1867205 (not c!1060154)) b!5955861))

(assert (=> d!1867205 m!6843114))

(declare-fun m!6843142 () Bool)

(assert (=> b!5955860 m!6843142))

(assert (=> b!5955861 m!6843118))

(assert (=> b!5955861 m!6843118))

(declare-fun m!6843144 () Bool)

(assert (=> b!5955861 m!6843144))

(assert (=> b!5955861 m!6843122))

(assert (=> b!5955861 m!6843144))

(assert (=> b!5955861 m!6843122))

(declare-fun m!6843146 () Bool)

(assert (=> b!5955861 m!6843146))

(assert (=> b!5955514 d!1867205))

(declare-fun d!1867207 () Bool)

(declare-fun c!1060155 () Bool)

(assert (=> d!1867207 (= c!1060155 (isEmpty!36059 (t!377708 s!2326)))))

(declare-fun e!3643225 () Bool)

(assert (=> d!1867207 (= (matchZipper!2034 lt!2314115 (t!377708 s!2326)) e!3643225)))

(declare-fun b!5955862 () Bool)

(assert (=> b!5955862 (= e!3643225 (nullableZipper!1805 lt!2314115))))

(declare-fun b!5955863 () Bool)

(assert (=> b!5955863 (= e!3643225 (matchZipper!2034 (derivationStepZipper!1979 lt!2314115 (head!12538 (t!377708 s!2326))) (tail!11623 (t!377708 s!2326))))))

(assert (= (and d!1867207 c!1060155) b!5955862))

(assert (= (and d!1867207 (not c!1060155)) b!5955863))

(assert (=> d!1867207 m!6843114))

(declare-fun m!6843148 () Bool)

(assert (=> b!5955862 m!6843148))

(assert (=> b!5955863 m!6843118))

(assert (=> b!5955863 m!6843118))

(declare-fun m!6843150 () Bool)

(assert (=> b!5955863 m!6843150))

(assert (=> b!5955863 m!6843122))

(assert (=> b!5955863 m!6843150))

(assert (=> b!5955863 m!6843122))

(declare-fun m!6843152 () Bool)

(assert (=> b!5955863 m!6843152))

(assert (=> b!5955514 d!1867207))

(declare-fun d!1867209 () Bool)

(declare-fun c!1060156 () Bool)

(assert (=> d!1867209 (= c!1060156 (isEmpty!36059 (t!377708 s!2326)))))

(declare-fun e!3643226 () Bool)

(assert (=> d!1867209 (= (matchZipper!2034 lt!2314119 (t!377708 s!2326)) e!3643226)))

(declare-fun b!5955864 () Bool)

(assert (=> b!5955864 (= e!3643226 (nullableZipper!1805 lt!2314119))))

(declare-fun b!5955865 () Bool)

(assert (=> b!5955865 (= e!3643226 (matchZipper!2034 (derivationStepZipper!1979 lt!2314119 (head!12538 (t!377708 s!2326))) (tail!11623 (t!377708 s!2326))))))

(assert (= (and d!1867209 c!1060156) b!5955864))

(assert (= (and d!1867209 (not c!1060156)) b!5955865))

(assert (=> d!1867209 m!6843114))

(declare-fun m!6843154 () Bool)

(assert (=> b!5955864 m!6843154))

(assert (=> b!5955865 m!6843118))

(assert (=> b!5955865 m!6843118))

(declare-fun m!6843156 () Bool)

(assert (=> b!5955865 m!6843156))

(assert (=> b!5955865 m!6843122))

(assert (=> b!5955865 m!6843156))

(assert (=> b!5955865 m!6843122))

(declare-fun m!6843158 () Bool)

(assert (=> b!5955865 m!6843158))

(assert (=> b!5955514 d!1867209))

(declare-fun e!3643229 () Bool)

(declare-fun d!1867211 () Bool)

(assert (=> d!1867211 (= (matchZipper!2034 (set.union lt!2314119 lt!2314128) (t!377708 s!2326)) e!3643229)))

(declare-fun res!2492895 () Bool)

(assert (=> d!1867211 (=> res!2492895 e!3643229)))

(assert (=> d!1867211 (= res!2492895 (matchZipper!2034 lt!2314119 (t!377708 s!2326)))))

(declare-fun lt!2314242 () Unit!157267)

(declare-fun choose!44890 ((Set Context!10764) (Set Context!10764) List!64295) Unit!157267)

(assert (=> d!1867211 (= lt!2314242 (choose!44890 lt!2314119 lt!2314128 (t!377708 s!2326)))))

(assert (=> d!1867211 (= (lemmaZipperConcatMatchesSameAsBothZippers!865 lt!2314119 lt!2314128 (t!377708 s!2326)) lt!2314242)))

(declare-fun b!5955868 () Bool)

(assert (=> b!5955868 (= e!3643229 (matchZipper!2034 lt!2314128 (t!377708 s!2326)))))

(assert (= (and d!1867211 (not res!2492895)) b!5955868))

(declare-fun m!6843160 () Bool)

(assert (=> d!1867211 m!6843160))

(assert (=> d!1867211 m!6842796))

(declare-fun m!6843162 () Bool)

(assert (=> d!1867211 m!6843162))

(assert (=> b!5955868 m!6842852))

(assert (=> b!5955514 d!1867211))

(declare-fun bs!1412011 () Bool)

(declare-fun d!1867213 () Bool)

(assert (= bs!1412011 (and d!1867213 d!1867157)))

(declare-fun lambda!325283 () Int)

(assert (=> bs!1412011 (= lambda!325283 lambda!325267)))

(declare-fun bs!1412012 () Bool)

(assert (= bs!1412012 (and d!1867213 d!1867159)))

(assert (=> bs!1412012 (= lambda!325283 lambda!325270)))

(declare-fun b!5955889 () Bool)

(declare-fun e!3643247 () Regex!15998)

(assert (=> b!5955889 (= e!3643247 EmptyExpr!15998)))

(declare-fun b!5955890 () Bool)

(declare-fun e!3643242 () Bool)

(declare-fun e!3643245 () Bool)

(assert (=> b!5955890 (= e!3643242 e!3643245)))

(declare-fun c!1060166 () Bool)

(assert (=> b!5955890 (= c!1060166 (isEmpty!36055 (exprs!5882 (h!70618 zl!343))))))

(declare-fun b!5955891 () Bool)

(declare-fun e!3643246 () Regex!15998)

(assert (=> b!5955891 (= e!3643246 e!3643247)))

(declare-fun c!1060168 () Bool)

(assert (=> b!5955891 (= c!1060168 (is-Cons!64169 (exprs!5882 (h!70618 zl!343))))))

(declare-fun b!5955892 () Bool)

(declare-fun e!3643243 () Bool)

(assert (=> b!5955892 (= e!3643243 (isEmpty!36055 (t!377706 (exprs!5882 (h!70618 zl!343)))))))

(assert (=> d!1867213 e!3643242))

(declare-fun res!2492900 () Bool)

(assert (=> d!1867213 (=> (not res!2492900) (not e!3643242))))

(declare-fun lt!2314245 () Regex!15998)

(assert (=> d!1867213 (= res!2492900 (validRegex!7734 lt!2314245))))

(assert (=> d!1867213 (= lt!2314245 e!3643246)))

(declare-fun c!1060167 () Bool)

(assert (=> d!1867213 (= c!1060167 e!3643243)))

(declare-fun res!2492901 () Bool)

(assert (=> d!1867213 (=> (not res!2492901) (not e!3643243))))

(assert (=> d!1867213 (= res!2492901 (is-Cons!64169 (exprs!5882 (h!70618 zl!343))))))

(assert (=> d!1867213 (forall!15087 (exprs!5882 (h!70618 zl!343)) lambda!325283)))

(assert (=> d!1867213 (= (generalisedConcat!1595 (exprs!5882 (h!70618 zl!343))) lt!2314245)))

(declare-fun b!5955893 () Bool)

(declare-fun e!3643244 () Bool)

(assert (=> b!5955893 (= e!3643244 (= lt!2314245 (head!12537 (exprs!5882 (h!70618 zl!343)))))))

(declare-fun b!5955894 () Bool)

(declare-fun isConcat!949 (Regex!15998) Bool)

(assert (=> b!5955894 (= e!3643244 (isConcat!949 lt!2314245))))

(declare-fun b!5955895 () Bool)

(assert (=> b!5955895 (= e!3643245 e!3643244)))

(declare-fun c!1060165 () Bool)

(assert (=> b!5955895 (= c!1060165 (isEmpty!36055 (tail!11622 (exprs!5882 (h!70618 zl!343)))))))

(declare-fun b!5955896 () Bool)

(assert (=> b!5955896 (= e!3643247 (Concat!24843 (h!70617 (exprs!5882 (h!70618 zl!343))) (generalisedConcat!1595 (t!377706 (exprs!5882 (h!70618 zl!343))))))))

(declare-fun b!5955897 () Bool)

(declare-fun isEmptyExpr!1426 (Regex!15998) Bool)

(assert (=> b!5955897 (= e!3643245 (isEmptyExpr!1426 lt!2314245))))

(declare-fun b!5955898 () Bool)

(assert (=> b!5955898 (= e!3643246 (h!70617 (exprs!5882 (h!70618 zl!343))))))

(assert (= (and d!1867213 res!2492901) b!5955892))

(assert (= (and d!1867213 c!1060167) b!5955898))

(assert (= (and d!1867213 (not c!1060167)) b!5955891))

(assert (= (and b!5955891 c!1060168) b!5955896))

(assert (= (and b!5955891 (not c!1060168)) b!5955889))

(assert (= (and d!1867213 res!2492900) b!5955890))

(assert (= (and b!5955890 c!1060166) b!5955897))

(assert (= (and b!5955890 (not c!1060166)) b!5955895))

(assert (= (and b!5955895 c!1060165) b!5955893))

(assert (= (and b!5955895 (not c!1060165)) b!5955894))

(declare-fun m!6843164 () Bool)

(assert (=> b!5955893 m!6843164))

(declare-fun m!6843166 () Bool)

(assert (=> b!5955896 m!6843166))

(declare-fun m!6843168 () Bool)

(assert (=> b!5955895 m!6843168))

(assert (=> b!5955895 m!6843168))

(declare-fun m!6843170 () Bool)

(assert (=> b!5955895 m!6843170))

(declare-fun m!6843172 () Bool)

(assert (=> d!1867213 m!6843172))

(declare-fun m!6843174 () Bool)

(assert (=> d!1867213 m!6843174))

(declare-fun m!6843176 () Bool)

(assert (=> b!5955894 m!6843176))

(declare-fun m!6843178 () Bool)

(assert (=> b!5955890 m!6843178))

(declare-fun m!6843180 () Bool)

(assert (=> b!5955897 m!6843180))

(assert (=> b!5955892 m!6842862))

(assert (=> b!5955505 d!1867213))

(declare-fun bs!1412013 () Bool)

(declare-fun b!5955905 () Bool)

(assert (= bs!1412013 (and b!5955905 d!1867157)))

(declare-fun lambda!325288 () Int)

(assert (=> bs!1412013 (not (= lambda!325288 lambda!325267))))

(declare-fun bs!1412014 () Bool)

(assert (= bs!1412014 (and b!5955905 d!1867159)))

(assert (=> bs!1412014 (not (= lambda!325288 lambda!325270))))

(declare-fun bs!1412015 () Bool)

(assert (= bs!1412015 (and b!5955905 d!1867213)))

(assert (=> bs!1412015 (not (= lambda!325288 lambda!325283))))

(assert (=> b!5955905 true))

(declare-fun bs!1412016 () Bool)

(declare-fun b!5955907 () Bool)

(assert (= bs!1412016 (and b!5955907 d!1867157)))

(declare-fun lambda!325289 () Int)

(assert (=> bs!1412016 (not (= lambda!325289 lambda!325267))))

(declare-fun bs!1412017 () Bool)

(assert (= bs!1412017 (and b!5955907 d!1867159)))

(assert (=> bs!1412017 (not (= lambda!325289 lambda!325270))))

(declare-fun bs!1412018 () Bool)

(assert (= bs!1412018 (and b!5955907 d!1867213)))

(assert (=> bs!1412018 (not (= lambda!325289 lambda!325283))))

(declare-fun bs!1412019 () Bool)

(assert (= bs!1412019 (and b!5955907 b!5955905)))

(declare-fun lt!2314256 () Int)

(declare-fun lt!2314255 () Int)

(assert (=> bs!1412019 (= (= lt!2314256 lt!2314255) (= lambda!325289 lambda!325288))))

(assert (=> b!5955907 true))

(declare-fun d!1867215 () Bool)

(declare-fun e!3643252 () Bool)

(assert (=> d!1867215 e!3643252))

(declare-fun res!2492904 () Bool)

(assert (=> d!1867215 (=> (not res!2492904) (not e!3643252))))

(assert (=> d!1867215 (= res!2492904 (>= lt!2314256 0))))

(declare-fun e!3643253 () Int)

(assert (=> d!1867215 (= lt!2314256 e!3643253)))

(declare-fun c!1060172 () Bool)

(assert (=> d!1867215 (= c!1060172 (is-Cons!64169 (exprs!5882 lt!2314130)))))

(assert (=> d!1867215 (= (contextDepth!146 lt!2314130) lt!2314256)))

(assert (=> b!5955905 (= e!3643253 lt!2314255)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun regexDepth!255 (Regex!15998) Int)

(assert (=> b!5955905 (= lt!2314255 (maxBigInt!0 (regexDepth!255 (h!70617 (exprs!5882 lt!2314130))) (contextDepth!146 (Context!10765 (t!377706 (exprs!5882 lt!2314130))))))))

(declare-fun lt!2314257 () Unit!157267)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!47 (List!64293 Int Int) Unit!157267)

(assert (=> b!5955905 (= lt!2314257 (lemmaForallRegexDepthBiggerThanTransitive!47 (t!377706 (exprs!5882 lt!2314130)) lt!2314255 (contextDepth!146 (Context!10765 (t!377706 (exprs!5882 lt!2314130))))))))

(assert (=> b!5955905 (forall!15087 (t!377706 (exprs!5882 lt!2314130)) lambda!325288)))

(declare-fun lt!2314254 () Unit!157267)

(assert (=> b!5955905 (= lt!2314254 lt!2314257)))

(declare-fun b!5955906 () Bool)

(assert (=> b!5955906 (= e!3643253 0)))

(assert (=> b!5955907 (= e!3643252 (forall!15087 (exprs!5882 lt!2314130) lambda!325289))))

(assert (= (and d!1867215 c!1060172) b!5955905))

(assert (= (and d!1867215 (not c!1060172)) b!5955906))

(assert (= (and d!1867215 res!2492904) b!5955907))

(declare-fun m!6843182 () Bool)

(assert (=> b!5955905 m!6843182))

(declare-fun m!6843184 () Bool)

(assert (=> b!5955905 m!6843184))

(declare-fun m!6843186 () Bool)

(assert (=> b!5955905 m!6843186))

(assert (=> b!5955905 m!6843184))

(assert (=> b!5955905 m!6843186))

(declare-fun m!6843188 () Bool)

(assert (=> b!5955905 m!6843188))

(assert (=> b!5955905 m!6843186))

(declare-fun m!6843190 () Bool)

(assert (=> b!5955905 m!6843190))

(declare-fun m!6843192 () Bool)

(assert (=> b!5955907 m!6843192))

(assert (=> b!5955512 d!1867215))

(declare-fun d!1867217 () Bool)

(declare-fun c!1060173 () Bool)

(assert (=> d!1867217 (= c!1060173 (isEmpty!36059 (t!377708 s!2326)))))

(declare-fun e!3643254 () Bool)

(assert (=> d!1867217 (= (matchZipper!2034 lt!2314128 (t!377708 s!2326)) e!3643254)))

(declare-fun b!5955910 () Bool)

(assert (=> b!5955910 (= e!3643254 (nullableZipper!1805 lt!2314128))))

(declare-fun b!5955911 () Bool)

(assert (=> b!5955911 (= e!3643254 (matchZipper!2034 (derivationStepZipper!1979 lt!2314128 (head!12538 (t!377708 s!2326))) (tail!11623 (t!377708 s!2326))))))

(assert (= (and d!1867217 c!1060173) b!5955910))

(assert (= (and d!1867217 (not c!1060173)) b!5955911))

(assert (=> d!1867217 m!6843114))

(declare-fun m!6843194 () Bool)

(assert (=> b!5955910 m!6843194))

(assert (=> b!5955911 m!6843118))

(assert (=> b!5955911 m!6843118))

(declare-fun m!6843196 () Bool)

(assert (=> b!5955911 m!6843196))

(assert (=> b!5955911 m!6843122))

(assert (=> b!5955911 m!6843196))

(assert (=> b!5955911 m!6843122))

(declare-fun m!6843198 () Bool)

(assert (=> b!5955911 m!6843198))

(assert (=> b!5955513 d!1867217))

(declare-fun bs!1412020 () Bool)

(declare-fun d!1867219 () Bool)

(assert (= bs!1412020 (and d!1867219 d!1867157)))

(declare-fun lambda!325292 () Int)

(assert (=> bs!1412020 (= lambda!325292 lambda!325267)))

(declare-fun bs!1412021 () Bool)

(assert (= bs!1412021 (and d!1867219 b!5955905)))

(assert (=> bs!1412021 (not (= lambda!325292 lambda!325288))))

(declare-fun bs!1412022 () Bool)

(assert (= bs!1412022 (and d!1867219 d!1867213)))

(assert (=> bs!1412022 (= lambda!325292 lambda!325283)))

(declare-fun bs!1412023 () Bool)

(assert (= bs!1412023 (and d!1867219 b!5955907)))

(assert (=> bs!1412023 (not (= lambda!325292 lambda!325289))))

(declare-fun bs!1412024 () Bool)

(assert (= bs!1412024 (and d!1867219 d!1867159)))

(assert (=> bs!1412024 (= lambda!325292 lambda!325270)))

(assert (=> d!1867219 (= (inv!83243 lt!2314110) (forall!15087 (exprs!5882 lt!2314110) lambda!325292))))

(declare-fun bs!1412025 () Bool)

(assert (= bs!1412025 d!1867219))

(declare-fun m!6843200 () Bool)

(assert (=> bs!1412025 m!6843200))

(assert (=> b!5955523 d!1867219))

(declare-fun bm!474691 () Bool)

(declare-fun call!474698 () Bool)

(declare-fun c!1060178 () Bool)

(assert (=> bm!474691 (= call!474698 (validRegex!7734 (ite c!1060178 (regOne!32509 r!7292) (regOne!32508 r!7292))))))

(declare-fun b!5955930 () Bool)

(declare-fun e!3643269 () Bool)

(declare-fun e!3643272 () Bool)

(assert (=> b!5955930 (= e!3643269 e!3643272)))

(declare-fun c!1060179 () Bool)

(assert (=> b!5955930 (= c!1060179 (is-Star!15998 r!7292))))

(declare-fun b!5955931 () Bool)

(declare-fun e!3643271 () Bool)

(assert (=> b!5955931 (= e!3643272 e!3643271)))

(assert (=> b!5955931 (= c!1060178 (is-Union!15998 r!7292))))

(declare-fun b!5955932 () Bool)

(declare-fun e!3643273 () Bool)

(declare-fun e!3643275 () Bool)

(assert (=> b!5955932 (= e!3643273 e!3643275)))

(declare-fun res!2492917 () Bool)

(assert (=> b!5955932 (=> (not res!2492917) (not e!3643275))))

(assert (=> b!5955932 (= res!2492917 call!474698)))

(declare-fun bm!474692 () Bool)

(declare-fun call!474697 () Bool)

(declare-fun call!474696 () Bool)

(assert (=> bm!474692 (= call!474697 call!474696)))

(declare-fun d!1867221 () Bool)

(declare-fun res!2492915 () Bool)

(assert (=> d!1867221 (=> res!2492915 e!3643269)))

(assert (=> d!1867221 (= res!2492915 (is-ElementMatch!15998 r!7292))))

(assert (=> d!1867221 (= (validRegex!7734 r!7292) e!3643269)))

(declare-fun bm!474693 () Bool)

(assert (=> bm!474693 (= call!474696 (validRegex!7734 (ite c!1060179 (reg!16327 r!7292) (ite c!1060178 (regTwo!32509 r!7292) (regTwo!32508 r!7292)))))))

(declare-fun b!5955933 () Bool)

(declare-fun e!3643274 () Bool)

(assert (=> b!5955933 (= e!3643274 call!474697)))

(declare-fun b!5955934 () Bool)

(assert (=> b!5955934 (= e!3643275 call!474697)))

(declare-fun b!5955935 () Bool)

(declare-fun e!3643270 () Bool)

(assert (=> b!5955935 (= e!3643270 call!474696)))

(declare-fun b!5955936 () Bool)

(declare-fun res!2492919 () Bool)

(assert (=> b!5955936 (=> res!2492919 e!3643273)))

(assert (=> b!5955936 (= res!2492919 (not (is-Concat!24843 r!7292)))))

(assert (=> b!5955936 (= e!3643271 e!3643273)))

(declare-fun b!5955937 () Bool)

(declare-fun res!2492918 () Bool)

(assert (=> b!5955937 (=> (not res!2492918) (not e!3643274))))

(assert (=> b!5955937 (= res!2492918 call!474698)))

(assert (=> b!5955937 (= e!3643271 e!3643274)))

(declare-fun b!5955938 () Bool)

(assert (=> b!5955938 (= e!3643272 e!3643270)))

(declare-fun res!2492916 () Bool)

(assert (=> b!5955938 (= res!2492916 (not (nullable!5993 (reg!16327 r!7292))))))

(assert (=> b!5955938 (=> (not res!2492916) (not e!3643270))))

(assert (= (and d!1867221 (not res!2492915)) b!5955930))

(assert (= (and b!5955930 c!1060179) b!5955938))

(assert (= (and b!5955930 (not c!1060179)) b!5955931))

(assert (= (and b!5955938 res!2492916) b!5955935))

(assert (= (and b!5955931 c!1060178) b!5955937))

(assert (= (and b!5955931 (not c!1060178)) b!5955936))

(assert (= (and b!5955937 res!2492918) b!5955933))

(assert (= (and b!5955936 (not res!2492919)) b!5955932))

(assert (= (and b!5955932 res!2492917) b!5955934))

(assert (= (or b!5955933 b!5955934) bm!474692))

(assert (= (or b!5955937 b!5955932) bm!474691))

(assert (= (or b!5955935 bm!474692) bm!474693))

(declare-fun m!6843202 () Bool)

(assert (=> bm!474691 m!6843202))

(declare-fun m!6843204 () Bool)

(assert (=> bm!474693 m!6843204))

(declare-fun m!6843206 () Bool)

(assert (=> b!5955938 m!6843206))

(assert (=> start!604764 d!1867221))

(declare-fun d!1867223 () Bool)

(assert (=> d!1867223 (= (isEmpty!36056 (t!377707 zl!343)) (is-Nil!64170 (t!377707 zl!343)))))

(assert (=> b!5955522 d!1867223))

(declare-fun d!1867225 () Bool)

(declare-fun e!3643278 () Bool)

(assert (=> d!1867225 e!3643278))

(declare-fun res!2492922 () Bool)

(assert (=> d!1867225 (=> (not res!2492922) (not e!3643278))))

(declare-fun lt!2314260 () List!64294)

(declare-fun noDuplicate!1855 (List!64294) Bool)

(assert (=> d!1867225 (= res!2492922 (noDuplicate!1855 lt!2314260))))

(declare-fun choose!44891 ((Set Context!10764)) List!64294)

(assert (=> d!1867225 (= lt!2314260 (choose!44891 z!1189))))

(assert (=> d!1867225 (= (toList!9782 z!1189) lt!2314260)))

(declare-fun b!5955941 () Bool)

(declare-fun content!11848 (List!64294) (Set Context!10764))

(assert (=> b!5955941 (= e!3643278 (= (content!11848 lt!2314260) z!1189))))

(assert (= (and d!1867225 res!2492922) b!5955941))

(declare-fun m!6843208 () Bool)

(assert (=> d!1867225 m!6843208))

(declare-fun m!6843210 () Bool)

(assert (=> d!1867225 m!6843210))

(declare-fun m!6843212 () Bool)

(assert (=> b!5955941 m!6843212))

(assert (=> b!5955502 d!1867225))

(declare-fun b!5955948 () Bool)

(assert (=> b!5955948 true))

(declare-fun bs!1412026 () Bool)

(declare-fun b!5955950 () Bool)

(assert (= bs!1412026 (and b!5955950 b!5955948)))

(declare-fun lambda!325301 () Int)

(declare-fun lt!2314270 () Int)

(declare-fun lt!2314271 () Int)

(declare-fun lambda!325300 () Int)

(assert (=> bs!1412026 (= (= lt!2314271 lt!2314270) (= lambda!325301 lambda!325300))))

(assert (=> b!5955950 true))

(declare-fun d!1867227 () Bool)

(declare-fun e!3643284 () Bool)

(assert (=> d!1867227 e!3643284))

(declare-fun res!2492925 () Bool)

(assert (=> d!1867227 (=> (not res!2492925) (not e!3643284))))

(assert (=> d!1867227 (= res!2492925 (>= lt!2314271 0))))

(declare-fun e!3643283 () Int)

(assert (=> d!1867227 (= lt!2314271 e!3643283)))

(declare-fun c!1060188 () Bool)

(assert (=> d!1867227 (= c!1060188 (is-Cons!64170 (Cons!64170 lt!2314126 Nil!64170)))))

(assert (=> d!1867227 (= (zipperDepth!247 (Cons!64170 lt!2314126 Nil!64170)) lt!2314271)))

(assert (=> b!5955948 (= e!3643283 lt!2314270)))

(assert (=> b!5955948 (= lt!2314270 (maxBigInt!0 (contextDepth!146 (h!70618 (Cons!64170 lt!2314126 Nil!64170))) (zipperDepth!247 (t!377707 (Cons!64170 lt!2314126 Nil!64170)))))))

(declare-fun lambda!325299 () Int)

(declare-fun lt!2314269 () Unit!157267)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!132 (List!64294 Int Int Int) Unit!157267)

(assert (=> b!5955948 (= lt!2314269 (lemmaForallContextDepthBiggerThanTransitive!132 (t!377707 (Cons!64170 lt!2314126 Nil!64170)) lt!2314270 (zipperDepth!247 (t!377707 (Cons!64170 lt!2314126 Nil!64170))) lambda!325299))))

(declare-fun forall!15088 (List!64294 Int) Bool)

(assert (=> b!5955948 (forall!15088 (t!377707 (Cons!64170 lt!2314126 Nil!64170)) lambda!325300)))

(declare-fun lt!2314272 () Unit!157267)

(assert (=> b!5955948 (= lt!2314272 lt!2314269)))

(declare-fun b!5955949 () Bool)

(assert (=> b!5955949 (= e!3643283 0)))

(assert (=> b!5955950 (= e!3643284 (forall!15088 (Cons!64170 lt!2314126 Nil!64170) lambda!325301))))

(assert (= (and d!1867227 c!1060188) b!5955948))

(assert (= (and d!1867227 (not c!1060188)) b!5955949))

(assert (= (and d!1867227 res!2492925) b!5955950))

(declare-fun m!6843214 () Bool)

(assert (=> b!5955948 m!6843214))

(declare-fun m!6843216 () Bool)

(assert (=> b!5955948 m!6843216))

(declare-fun m!6843218 () Bool)

(assert (=> b!5955948 m!6843218))

(assert (=> b!5955948 m!6843216))

(assert (=> b!5955948 m!6843216))

(declare-fun m!6843220 () Bool)

(assert (=> b!5955948 m!6843220))

(declare-fun m!6843222 () Bool)

(assert (=> b!5955948 m!6843222))

(assert (=> b!5955948 m!6843214))

(declare-fun m!6843224 () Bool)

(assert (=> b!5955950 m!6843224))

(assert (=> b!5955509 d!1867227))

(declare-fun bs!1412027 () Bool)

(declare-fun b!5955953 () Bool)

(assert (= bs!1412027 (and b!5955953 b!5955948)))

(declare-fun lambda!325302 () Int)

(assert (=> bs!1412027 (= lambda!325302 lambda!325299)))

(declare-fun lt!2314274 () Int)

(declare-fun lambda!325303 () Int)

(assert (=> bs!1412027 (= (= lt!2314274 lt!2314270) (= lambda!325303 lambda!325300))))

(declare-fun bs!1412028 () Bool)

(assert (= bs!1412028 (and b!5955953 b!5955950)))

(assert (=> bs!1412028 (= (= lt!2314274 lt!2314271) (= lambda!325303 lambda!325301))))

(assert (=> b!5955953 true))

(declare-fun bs!1412029 () Bool)

(declare-fun b!5955955 () Bool)

(assert (= bs!1412029 (and b!5955955 b!5955948)))

(declare-fun lt!2314275 () Int)

(declare-fun lambda!325304 () Int)

(assert (=> bs!1412029 (= (= lt!2314275 lt!2314270) (= lambda!325304 lambda!325300))))

(declare-fun bs!1412030 () Bool)

(assert (= bs!1412030 (and b!5955955 b!5955950)))

(assert (=> bs!1412030 (= (= lt!2314275 lt!2314271) (= lambda!325304 lambda!325301))))

(declare-fun bs!1412031 () Bool)

(assert (= bs!1412031 (and b!5955955 b!5955953)))

(assert (=> bs!1412031 (= (= lt!2314275 lt!2314274) (= lambda!325304 lambda!325303))))

(assert (=> b!5955955 true))

(declare-fun d!1867229 () Bool)

(declare-fun e!3643286 () Bool)

(assert (=> d!1867229 e!3643286))

(declare-fun res!2492926 () Bool)

(assert (=> d!1867229 (=> (not res!2492926) (not e!3643286))))

(assert (=> d!1867229 (= res!2492926 (>= lt!2314275 0))))

(declare-fun e!3643285 () Int)

(assert (=> d!1867229 (= lt!2314275 e!3643285)))

(declare-fun c!1060189 () Bool)

(assert (=> d!1867229 (= c!1060189 (is-Cons!64170 (Cons!64170 lt!2314110 Nil!64170)))))

(assert (=> d!1867229 (= (zipperDepth!247 (Cons!64170 lt!2314110 Nil!64170)) lt!2314275)))

(assert (=> b!5955953 (= e!3643285 lt!2314274)))

(assert (=> b!5955953 (= lt!2314274 (maxBigInt!0 (contextDepth!146 (h!70618 (Cons!64170 lt!2314110 Nil!64170))) (zipperDepth!247 (t!377707 (Cons!64170 lt!2314110 Nil!64170)))))))

(declare-fun lt!2314273 () Unit!157267)

(assert (=> b!5955953 (= lt!2314273 (lemmaForallContextDepthBiggerThanTransitive!132 (t!377707 (Cons!64170 lt!2314110 Nil!64170)) lt!2314274 (zipperDepth!247 (t!377707 (Cons!64170 lt!2314110 Nil!64170))) lambda!325302))))

(assert (=> b!5955953 (forall!15088 (t!377707 (Cons!64170 lt!2314110 Nil!64170)) lambda!325303)))

(declare-fun lt!2314276 () Unit!157267)

(assert (=> b!5955953 (= lt!2314276 lt!2314273)))

(declare-fun b!5955954 () Bool)

(assert (=> b!5955954 (= e!3643285 0)))

(assert (=> b!5955955 (= e!3643286 (forall!15088 (Cons!64170 lt!2314110 Nil!64170) lambda!325304))))

(assert (= (and d!1867229 c!1060189) b!5955953))

(assert (= (and d!1867229 (not c!1060189)) b!5955954))

(assert (= (and d!1867229 res!2492926) b!5955955))

(declare-fun m!6843226 () Bool)

(assert (=> b!5955953 m!6843226))

(declare-fun m!6843228 () Bool)

(assert (=> b!5955953 m!6843228))

(declare-fun m!6843230 () Bool)

(assert (=> b!5955953 m!6843230))

(assert (=> b!5955953 m!6843228))

(assert (=> b!5955953 m!6843228))

(declare-fun m!6843232 () Bool)

(assert (=> b!5955953 m!6843232))

(declare-fun m!6843234 () Bool)

(assert (=> b!5955953 m!6843234))

(assert (=> b!5955953 m!6843226))

(declare-fun m!6843236 () Bool)

(assert (=> b!5955955 m!6843236))

(assert (=> b!5955509 d!1867229))

(declare-fun bs!1412032 () Bool)

(declare-fun d!1867231 () Bool)

(assert (= bs!1412032 (and d!1867231 b!5955905)))

(declare-fun lambda!325305 () Int)

(assert (=> bs!1412032 (not (= lambda!325305 lambda!325288))))

(declare-fun bs!1412033 () Bool)

(assert (= bs!1412033 (and d!1867231 d!1867213)))

(assert (=> bs!1412033 (= lambda!325305 lambda!325283)))

(declare-fun bs!1412034 () Bool)

(assert (= bs!1412034 (and d!1867231 b!5955907)))

(assert (=> bs!1412034 (not (= lambda!325305 lambda!325289))))

(declare-fun bs!1412035 () Bool)

(assert (= bs!1412035 (and d!1867231 d!1867159)))

(assert (=> bs!1412035 (= lambda!325305 lambda!325270)))

(declare-fun bs!1412036 () Bool)

(assert (= bs!1412036 (and d!1867231 d!1867157)))

(assert (=> bs!1412036 (= lambda!325305 lambda!325267)))

(declare-fun bs!1412037 () Bool)

(assert (= bs!1412037 (and d!1867231 d!1867219)))

(assert (=> bs!1412037 (= lambda!325305 lambda!325292)))

(assert (=> d!1867231 (= (inv!83243 (h!70618 zl!343)) (forall!15087 (exprs!5882 (h!70618 zl!343)) lambda!325305))))

(declare-fun bs!1412038 () Bool)

(assert (= bs!1412038 d!1867231))

(declare-fun m!6843238 () Bool)

(assert (=> bs!1412038 m!6843238))

(assert (=> b!5955519 d!1867231))

(declare-fun d!1867233 () Bool)

(declare-fun lt!2314279 () Regex!15998)

(assert (=> d!1867233 (validRegex!7734 lt!2314279)))

(assert (=> d!1867233 (= lt!2314279 (generalisedUnion!1842 (unfocusZipperList!1419 zl!343)))))

(assert (=> d!1867233 (= (unfocusZipper!1740 zl!343) lt!2314279)))

(declare-fun bs!1412039 () Bool)

(assert (= bs!1412039 d!1867233))

(declare-fun m!6843240 () Bool)

(assert (=> bs!1412039 m!6843240))

(assert (=> bs!1412039 m!6842856))

(assert (=> bs!1412039 m!6842856))

(assert (=> bs!1412039 m!6842858))

(assert (=> b!5955518 d!1867233))

(declare-fun d!1867235 () Bool)

(declare-fun c!1060190 () Bool)

(assert (=> d!1867235 (= c!1060190 (isEmpty!36059 s!2326))))

(declare-fun e!3643287 () Bool)

(assert (=> d!1867235 (= (matchZipper!2034 lt!2314120 s!2326) e!3643287)))

(declare-fun b!5955956 () Bool)

(assert (=> b!5955956 (= e!3643287 (nullableZipper!1805 lt!2314120))))

(declare-fun b!5955957 () Bool)

(assert (=> b!5955957 (= e!3643287 (matchZipper!2034 (derivationStepZipper!1979 lt!2314120 (head!12538 s!2326)) (tail!11623 s!2326)))))

(assert (= (and d!1867235 c!1060190) b!5955956))

(assert (= (and d!1867235 (not c!1060190)) b!5955957))

(assert (=> d!1867235 m!6843028))

(declare-fun m!6843242 () Bool)

(assert (=> b!5955956 m!6843242))

(assert (=> b!5955957 m!6843036))

(assert (=> b!5955957 m!6843036))

(declare-fun m!6843244 () Bool)

(assert (=> b!5955957 m!6843244))

(assert (=> b!5955957 m!6843038))

(assert (=> b!5955957 m!6843244))

(assert (=> b!5955957 m!6843038))

(declare-fun m!6843246 () Bool)

(assert (=> b!5955957 m!6843246))

(assert (=> b!5955499 d!1867235))

(declare-fun d!1867237 () Bool)

(declare-fun c!1060191 () Bool)

(assert (=> d!1867237 (= c!1060191 (isEmpty!36059 (t!377708 s!2326)))))

(declare-fun e!3643288 () Bool)

(assert (=> d!1867237 (= (matchZipper!2034 (derivationStepZipper!1979 lt!2314120 (h!70619 s!2326)) (t!377708 s!2326)) e!3643288)))

(declare-fun b!5955958 () Bool)

(assert (=> b!5955958 (= e!3643288 (nullableZipper!1805 (derivationStepZipper!1979 lt!2314120 (h!70619 s!2326))))))

(declare-fun b!5955959 () Bool)

(assert (=> b!5955959 (= e!3643288 (matchZipper!2034 (derivationStepZipper!1979 (derivationStepZipper!1979 lt!2314120 (h!70619 s!2326)) (head!12538 (t!377708 s!2326))) (tail!11623 (t!377708 s!2326))))))

(assert (= (and d!1867237 c!1060191) b!5955958))

(assert (= (and d!1867237 (not c!1060191)) b!5955959))

(assert (=> d!1867237 m!6843114))

(assert (=> b!5955958 m!6842884))

(declare-fun m!6843248 () Bool)

(assert (=> b!5955958 m!6843248))

(assert (=> b!5955959 m!6843118))

(assert (=> b!5955959 m!6842884))

(assert (=> b!5955959 m!6843118))

(declare-fun m!6843250 () Bool)

(assert (=> b!5955959 m!6843250))

(assert (=> b!5955959 m!6843122))

(assert (=> b!5955959 m!6843250))

(assert (=> b!5955959 m!6843122))

(declare-fun m!6843252 () Bool)

(assert (=> b!5955959 m!6843252))

(assert (=> b!5955499 d!1867237))

(declare-fun bs!1412040 () Bool)

(declare-fun d!1867239 () Bool)

(assert (= bs!1412040 (and d!1867239 b!5955526)))

(declare-fun lambda!325306 () Int)

(assert (=> bs!1412040 (= lambda!325306 lambda!325249)))

(declare-fun bs!1412041 () Bool)

(assert (= bs!1412041 (and d!1867239 d!1867197)))

(assert (=> bs!1412041 (= lambda!325306 lambda!325279)))

(declare-fun bs!1412042 () Bool)

(assert (= bs!1412042 (and d!1867239 d!1867203)))

(assert (=> bs!1412042 (= lambda!325306 lambda!325280)))

(assert (=> d!1867239 true))

(assert (=> d!1867239 (= (derivationStepZipper!1979 lt!2314120 (h!70619 s!2326)) (flatMap!1511 lt!2314120 lambda!325306))))

(declare-fun bs!1412043 () Bool)

(assert (= bs!1412043 d!1867239))

(declare-fun m!6843254 () Bool)

(assert (=> bs!1412043 m!6843254))

(assert (=> b!5955499 d!1867239))

(declare-fun b!5955978 () Bool)

(declare-fun res!2492938 () Bool)

(declare-fun e!3643300 () Bool)

(assert (=> b!5955978 (=> (not res!2492938) (not e!3643300))))

(declare-fun lt!2314286 () Option!15889)

(declare-fun get!22110 (Option!15889) tuple2!65954)

(assert (=> b!5955978 (= res!2492938 (matchR!8181 (regOne!32508 r!7292) (_1!36280 (get!22110 lt!2314286))))))

(declare-fun b!5955979 () Bool)

(declare-fun e!3643303 () Bool)

(assert (=> b!5955979 (= e!3643303 (matchR!8181 (regTwo!32508 r!7292) s!2326))))

(declare-fun b!5955980 () Bool)

(declare-fun ++!14095 (List!64295 List!64295) List!64295)

(assert (=> b!5955980 (= e!3643300 (= (++!14095 (_1!36280 (get!22110 lt!2314286)) (_2!36280 (get!22110 lt!2314286))) s!2326))))

(declare-fun b!5955981 () Bool)

(declare-fun res!2492937 () Bool)

(assert (=> b!5955981 (=> (not res!2492937) (not e!3643300))))

(assert (=> b!5955981 (= res!2492937 (matchR!8181 (regTwo!32508 r!7292) (_2!36280 (get!22110 lt!2314286))))))

(declare-fun b!5955982 () Bool)

(declare-fun e!3643299 () Option!15889)

(assert (=> b!5955982 (= e!3643299 None!15888)))

(declare-fun b!5955983 () Bool)

(declare-fun e!3643301 () Option!15889)

(assert (=> b!5955983 (= e!3643301 e!3643299)))

(declare-fun c!1060197 () Bool)

(assert (=> b!5955983 (= c!1060197 (is-Nil!64171 s!2326))))

(declare-fun d!1867241 () Bool)

(declare-fun e!3643302 () Bool)

(assert (=> d!1867241 e!3643302))

(declare-fun res!2492941 () Bool)

(assert (=> d!1867241 (=> res!2492941 e!3643302)))

(assert (=> d!1867241 (= res!2492941 e!3643300)))

(declare-fun res!2492940 () Bool)

(assert (=> d!1867241 (=> (not res!2492940) (not e!3643300))))

(assert (=> d!1867241 (= res!2492940 (isDefined!12592 lt!2314286))))

(assert (=> d!1867241 (= lt!2314286 e!3643301)))

(declare-fun c!1060196 () Bool)

(assert (=> d!1867241 (= c!1060196 e!3643303)))

(declare-fun res!2492939 () Bool)

(assert (=> d!1867241 (=> (not res!2492939) (not e!3643303))))

(assert (=> d!1867241 (= res!2492939 (matchR!8181 (regOne!32508 r!7292) Nil!64171))))

(assert (=> d!1867241 (validRegex!7734 (regOne!32508 r!7292))))

(assert (=> d!1867241 (= (findConcatSeparation!2303 (regOne!32508 r!7292) (regTwo!32508 r!7292) Nil!64171 s!2326 s!2326) lt!2314286)))

(declare-fun b!5955984 () Bool)

(assert (=> b!5955984 (= e!3643301 (Some!15888 (tuple2!65955 Nil!64171 s!2326)))))

(declare-fun b!5955985 () Bool)

(assert (=> b!5955985 (= e!3643302 (not (isDefined!12592 lt!2314286)))))

(declare-fun b!5955986 () Bool)

(declare-fun lt!2314288 () Unit!157267)

(declare-fun lt!2314287 () Unit!157267)

(assert (=> b!5955986 (= lt!2314288 lt!2314287)))

(assert (=> b!5955986 (= (++!14095 (++!14095 Nil!64171 (Cons!64171 (h!70619 s!2326) Nil!64171)) (t!377708 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2190 (List!64295 C!32266 List!64295 List!64295) Unit!157267)

(assert (=> b!5955986 (= lt!2314287 (lemmaMoveElementToOtherListKeepsConcatEq!2190 Nil!64171 (h!70619 s!2326) (t!377708 s!2326) s!2326))))

(assert (=> b!5955986 (= e!3643299 (findConcatSeparation!2303 (regOne!32508 r!7292) (regTwo!32508 r!7292) (++!14095 Nil!64171 (Cons!64171 (h!70619 s!2326) Nil!64171)) (t!377708 s!2326) s!2326))))

(assert (= (and d!1867241 res!2492939) b!5955979))

(assert (= (and d!1867241 c!1060196) b!5955984))

(assert (= (and d!1867241 (not c!1060196)) b!5955983))

(assert (= (and b!5955983 c!1060197) b!5955982))

(assert (= (and b!5955983 (not c!1060197)) b!5955986))

(assert (= (and d!1867241 res!2492940) b!5955978))

(assert (= (and b!5955978 res!2492938) b!5955981))

(assert (= (and b!5955981 res!2492937) b!5955980))

(assert (= (and d!1867241 (not res!2492941)) b!5955985))

(declare-fun m!6843256 () Bool)

(assert (=> d!1867241 m!6843256))

(declare-fun m!6843258 () Bool)

(assert (=> d!1867241 m!6843258))

(declare-fun m!6843260 () Bool)

(assert (=> d!1867241 m!6843260))

(declare-fun m!6843262 () Bool)

(assert (=> b!5955981 m!6843262))

(declare-fun m!6843264 () Bool)

(assert (=> b!5955981 m!6843264))

(assert (=> b!5955978 m!6843262))

(declare-fun m!6843266 () Bool)

(assert (=> b!5955978 m!6843266))

(declare-fun m!6843268 () Bool)

(assert (=> b!5955979 m!6843268))

(declare-fun m!6843270 () Bool)

(assert (=> b!5955986 m!6843270))

(assert (=> b!5955986 m!6843270))

(declare-fun m!6843272 () Bool)

(assert (=> b!5955986 m!6843272))

(declare-fun m!6843274 () Bool)

(assert (=> b!5955986 m!6843274))

(assert (=> b!5955986 m!6843270))

(declare-fun m!6843276 () Bool)

(assert (=> b!5955986 m!6843276))

(assert (=> b!5955985 m!6843256))

(assert (=> b!5955980 m!6843262))

(declare-fun m!6843278 () Bool)

(assert (=> b!5955980 m!6843278))

(assert (=> b!5955500 d!1867241))

(declare-fun d!1867243 () Bool)

(declare-fun choose!44892 (Int) Bool)

(assert (=> d!1867243 (= (Exists!3068 lambda!325247) (choose!44892 lambda!325247))))

(declare-fun bs!1412044 () Bool)

(assert (= bs!1412044 d!1867243))

(declare-fun m!6843280 () Bool)

(assert (=> bs!1412044 m!6843280))

(assert (=> b!5955500 d!1867243))

(declare-fun bs!1412045 () Bool)

(declare-fun d!1867245 () Bool)

(assert (= bs!1412045 (and d!1867245 b!5955500)))

(declare-fun lambda!325309 () Int)

(assert (=> bs!1412045 (= lambda!325309 lambda!325247)))

(assert (=> bs!1412045 (not (= lambda!325309 lambda!325248))))

(declare-fun bs!1412046 () Bool)

(assert (= bs!1412046 (and d!1867245 b!5955717)))

(assert (=> bs!1412046 (not (= lambda!325309 lambda!325275))))

(declare-fun bs!1412047 () Bool)

(assert (= bs!1412047 (and d!1867245 b!5955722)))

(assert (=> bs!1412047 (not (= lambda!325309 lambda!325276))))

(assert (=> d!1867245 true))

(assert (=> d!1867245 true))

(assert (=> d!1867245 true))

(assert (=> d!1867245 (= (isDefined!12592 (findConcatSeparation!2303 (regOne!32508 r!7292) (regTwo!32508 r!7292) Nil!64171 s!2326 s!2326)) (Exists!3068 lambda!325309))))

(declare-fun lt!2314291 () Unit!157267)

(declare-fun choose!44893 (Regex!15998 Regex!15998 List!64295) Unit!157267)

(assert (=> d!1867245 (= lt!2314291 (choose!44893 (regOne!32508 r!7292) (regTwo!32508 r!7292) s!2326))))

(assert (=> d!1867245 (validRegex!7734 (regOne!32508 r!7292))))

(assert (=> d!1867245 (= (lemmaFindConcatSeparationEquivalentToExists!2067 (regOne!32508 r!7292) (regTwo!32508 r!7292) s!2326) lt!2314291)))

(declare-fun bs!1412048 () Bool)

(assert (= bs!1412048 d!1867245))

(assert (=> bs!1412048 m!6842872))

(declare-fun m!6843282 () Bool)

(assert (=> bs!1412048 m!6843282))

(declare-fun m!6843284 () Bool)

(assert (=> bs!1412048 m!6843284))

(assert (=> bs!1412048 m!6843260))

(assert (=> bs!1412048 m!6842872))

(assert (=> bs!1412048 m!6842874))

(assert (=> b!5955500 d!1867245))

(declare-fun bs!1412049 () Bool)

(declare-fun d!1867247 () Bool)

(assert (= bs!1412049 (and d!1867247 b!5955500)))

(declare-fun lambda!325314 () Int)

(assert (=> bs!1412049 (not (= lambda!325314 lambda!325248))))

(assert (=> bs!1412049 (= lambda!325314 lambda!325247)))

(declare-fun bs!1412050 () Bool)

(assert (= bs!1412050 (and d!1867247 b!5955722)))

(assert (=> bs!1412050 (not (= lambda!325314 lambda!325276))))

(declare-fun bs!1412051 () Bool)

(assert (= bs!1412051 (and d!1867247 b!5955717)))

(assert (=> bs!1412051 (not (= lambda!325314 lambda!325275))))

(declare-fun bs!1412052 () Bool)

(assert (= bs!1412052 (and d!1867247 d!1867245)))

(assert (=> bs!1412052 (= lambda!325314 lambda!325309)))

(assert (=> d!1867247 true))

(assert (=> d!1867247 true))

(assert (=> d!1867247 true))

(declare-fun lambda!325315 () Int)

(assert (=> bs!1412049 (= lambda!325315 lambda!325248)))

(declare-fun bs!1412053 () Bool)

(assert (= bs!1412053 d!1867247))

(assert (=> bs!1412053 (not (= lambda!325315 lambda!325314))))

(assert (=> bs!1412049 (not (= lambda!325315 lambda!325247))))

(assert (=> bs!1412050 (= lambda!325315 lambda!325276)))

(assert (=> bs!1412051 (not (= lambda!325315 lambda!325275))))

(assert (=> bs!1412052 (not (= lambda!325315 lambda!325309))))

(assert (=> d!1867247 true))

(assert (=> d!1867247 true))

(assert (=> d!1867247 true))

(assert (=> d!1867247 (= (Exists!3068 lambda!325314) (Exists!3068 lambda!325315))))

(declare-fun lt!2314294 () Unit!157267)

(declare-fun choose!44894 (Regex!15998 Regex!15998 List!64295) Unit!157267)

(assert (=> d!1867247 (= lt!2314294 (choose!44894 (regOne!32508 r!7292) (regTwo!32508 r!7292) s!2326))))

(assert (=> d!1867247 (validRegex!7734 (regOne!32508 r!7292))))

(assert (=> d!1867247 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1605 (regOne!32508 r!7292) (regTwo!32508 r!7292) s!2326) lt!2314294)))

(declare-fun m!6843286 () Bool)

(assert (=> bs!1412053 m!6843286))

(declare-fun m!6843288 () Bool)

(assert (=> bs!1412053 m!6843288))

(declare-fun m!6843290 () Bool)

(assert (=> bs!1412053 m!6843290))

(assert (=> bs!1412053 m!6843260))

(assert (=> b!5955500 d!1867247))

(declare-fun d!1867249 () Bool)

(assert (=> d!1867249 (= (Exists!3068 lambda!325248) (choose!44892 lambda!325248))))

(declare-fun bs!1412054 () Bool)

(assert (= bs!1412054 d!1867249))

(declare-fun m!6843292 () Bool)

(assert (=> bs!1412054 m!6843292))

(assert (=> b!5955500 d!1867249))

(declare-fun d!1867251 () Bool)

(declare-fun isEmpty!36060 (Option!15889) Bool)

(assert (=> d!1867251 (= (isDefined!12592 (findConcatSeparation!2303 (regOne!32508 r!7292) (regTwo!32508 r!7292) Nil!64171 s!2326 s!2326)) (not (isEmpty!36060 (findConcatSeparation!2303 (regOne!32508 r!7292) (regTwo!32508 r!7292) Nil!64171 s!2326 s!2326))))))

(declare-fun bs!1412055 () Bool)

(assert (= bs!1412055 d!1867251))

(assert (=> bs!1412055 m!6842872))

(declare-fun m!6843294 () Bool)

(assert (=> bs!1412055 m!6843294))

(assert (=> b!5955500 d!1867251))

(declare-fun bs!1412056 () Bool)

(declare-fun d!1867253 () Bool)

(assert (= bs!1412056 (and d!1867253 b!5955905)))

(declare-fun lambda!325316 () Int)

(assert (=> bs!1412056 (not (= lambda!325316 lambda!325288))))

(declare-fun bs!1412057 () Bool)

(assert (= bs!1412057 (and d!1867253 d!1867213)))

(assert (=> bs!1412057 (= lambda!325316 lambda!325283)))

(declare-fun bs!1412058 () Bool)

(assert (= bs!1412058 (and d!1867253 b!5955907)))

(assert (=> bs!1412058 (not (= lambda!325316 lambda!325289))))

(declare-fun bs!1412059 () Bool)

(assert (= bs!1412059 (and d!1867253 d!1867231)))

(assert (=> bs!1412059 (= lambda!325316 lambda!325305)))

(declare-fun bs!1412060 () Bool)

(assert (= bs!1412060 (and d!1867253 d!1867159)))

(assert (=> bs!1412060 (= lambda!325316 lambda!325270)))

(declare-fun bs!1412061 () Bool)

(assert (= bs!1412061 (and d!1867253 d!1867157)))

(assert (=> bs!1412061 (= lambda!325316 lambda!325267)))

(declare-fun bs!1412062 () Bool)

(assert (= bs!1412062 (and d!1867253 d!1867219)))

(assert (=> bs!1412062 (= lambda!325316 lambda!325292)))

(assert (=> d!1867253 (= (inv!83243 setElem!40488) (forall!15087 (exprs!5882 setElem!40488) lambda!325316))))

(declare-fun bs!1412063 () Bool)

(assert (= bs!1412063 d!1867253))

(declare-fun m!6843296 () Bool)

(assert (=> bs!1412063 m!6843296))

(assert (=> setNonEmpty!40488 d!1867253))

(declare-fun bs!1412064 () Bool)

(declare-fun b!5955999 () Bool)

(assert (= bs!1412064 (and b!5955999 d!1867253)))

(declare-fun lambda!325317 () Int)

(assert (=> bs!1412064 (not (= lambda!325317 lambda!325316))))

(declare-fun bs!1412065 () Bool)

(assert (= bs!1412065 (and b!5955999 b!5955905)))

(declare-fun lt!2314296 () Int)

(assert (=> bs!1412065 (= (= lt!2314296 lt!2314255) (= lambda!325317 lambda!325288))))

(declare-fun bs!1412066 () Bool)

(assert (= bs!1412066 (and b!5955999 d!1867213)))

(assert (=> bs!1412066 (not (= lambda!325317 lambda!325283))))

(declare-fun bs!1412067 () Bool)

(assert (= bs!1412067 (and b!5955999 b!5955907)))

(assert (=> bs!1412067 (= (= lt!2314296 lt!2314256) (= lambda!325317 lambda!325289))))

(declare-fun bs!1412068 () Bool)

(assert (= bs!1412068 (and b!5955999 d!1867231)))

(assert (=> bs!1412068 (not (= lambda!325317 lambda!325305))))

(declare-fun bs!1412069 () Bool)

(assert (= bs!1412069 (and b!5955999 d!1867159)))

(assert (=> bs!1412069 (not (= lambda!325317 lambda!325270))))

(declare-fun bs!1412070 () Bool)

(assert (= bs!1412070 (and b!5955999 d!1867157)))

(assert (=> bs!1412070 (not (= lambda!325317 lambda!325267))))

(declare-fun bs!1412071 () Bool)

(assert (= bs!1412071 (and b!5955999 d!1867219)))

(assert (=> bs!1412071 (not (= lambda!325317 lambda!325292))))

(assert (=> b!5955999 true))

(declare-fun bs!1412072 () Bool)

(declare-fun b!5956001 () Bool)

(assert (= bs!1412072 (and b!5956001 d!1867253)))

(declare-fun lambda!325318 () Int)

(assert (=> bs!1412072 (not (= lambda!325318 lambda!325316))))

(declare-fun bs!1412073 () Bool)

(assert (= bs!1412073 (and b!5956001 b!5955999)))

(declare-fun lt!2314297 () Int)

(assert (=> bs!1412073 (= (= lt!2314297 lt!2314296) (= lambda!325318 lambda!325317))))

(declare-fun bs!1412074 () Bool)

(assert (= bs!1412074 (and b!5956001 b!5955905)))

(assert (=> bs!1412074 (= (= lt!2314297 lt!2314255) (= lambda!325318 lambda!325288))))

(declare-fun bs!1412075 () Bool)

(assert (= bs!1412075 (and b!5956001 d!1867213)))

(assert (=> bs!1412075 (not (= lambda!325318 lambda!325283))))

(declare-fun bs!1412076 () Bool)

(assert (= bs!1412076 (and b!5956001 b!5955907)))

(assert (=> bs!1412076 (= (= lt!2314297 lt!2314256) (= lambda!325318 lambda!325289))))

(declare-fun bs!1412077 () Bool)

(assert (= bs!1412077 (and b!5956001 d!1867231)))

(assert (=> bs!1412077 (not (= lambda!325318 lambda!325305))))

(declare-fun bs!1412078 () Bool)

(assert (= bs!1412078 (and b!5956001 d!1867159)))

(assert (=> bs!1412078 (not (= lambda!325318 lambda!325270))))

(declare-fun bs!1412079 () Bool)

(assert (= bs!1412079 (and b!5956001 d!1867157)))

(assert (=> bs!1412079 (not (= lambda!325318 lambda!325267))))

(declare-fun bs!1412080 () Bool)

(assert (= bs!1412080 (and b!5956001 d!1867219)))

(assert (=> bs!1412080 (not (= lambda!325318 lambda!325292))))

(assert (=> b!5956001 true))

(declare-fun d!1867255 () Bool)

(declare-fun e!3643310 () Bool)

(assert (=> d!1867255 e!3643310))

(declare-fun res!2492954 () Bool)

(assert (=> d!1867255 (=> (not res!2492954) (not e!3643310))))

(assert (=> d!1867255 (= res!2492954 (>= lt!2314297 0))))

(declare-fun e!3643311 () Int)

(assert (=> d!1867255 (= lt!2314297 e!3643311)))

(declare-fun c!1060198 () Bool)

(assert (=> d!1867255 (= c!1060198 (is-Cons!64169 (exprs!5882 lt!2314110)))))

(assert (=> d!1867255 (= (contextDepth!146 lt!2314110) lt!2314297)))

(assert (=> b!5955999 (= e!3643311 lt!2314296)))

(assert (=> b!5955999 (= lt!2314296 (maxBigInt!0 (regexDepth!255 (h!70617 (exprs!5882 lt!2314110))) (contextDepth!146 (Context!10765 (t!377706 (exprs!5882 lt!2314110))))))))

(declare-fun lt!2314298 () Unit!157267)

(assert (=> b!5955999 (= lt!2314298 (lemmaForallRegexDepthBiggerThanTransitive!47 (t!377706 (exprs!5882 lt!2314110)) lt!2314296 (contextDepth!146 (Context!10765 (t!377706 (exprs!5882 lt!2314110))))))))

(assert (=> b!5955999 (forall!15087 (t!377706 (exprs!5882 lt!2314110)) lambda!325317)))

(declare-fun lt!2314295 () Unit!157267)

(assert (=> b!5955999 (= lt!2314295 lt!2314298)))

(declare-fun b!5956000 () Bool)

(assert (=> b!5956000 (= e!3643311 0)))

(assert (=> b!5956001 (= e!3643310 (forall!15087 (exprs!5882 lt!2314110) lambda!325318))))

(assert (= (and d!1867255 c!1060198) b!5955999))

(assert (= (and d!1867255 (not c!1060198)) b!5956000))

(assert (= (and d!1867255 res!2492954) b!5956001))

(declare-fun m!6843298 () Bool)

(assert (=> b!5955999 m!6843298))

(declare-fun m!6843300 () Bool)

(assert (=> b!5955999 m!6843300))

(declare-fun m!6843302 () Bool)

(assert (=> b!5955999 m!6843302))

(assert (=> b!5955999 m!6843300))

(assert (=> b!5955999 m!6843302))

(declare-fun m!6843304 () Bool)

(assert (=> b!5955999 m!6843304))

(assert (=> b!5955999 m!6843302))

(declare-fun m!6843306 () Bool)

(assert (=> b!5955999 m!6843306))

(declare-fun m!6843308 () Bool)

(assert (=> b!5956001 m!6843308))

(assert (=> b!5955510 d!1867255))

(declare-fun bs!1412081 () Bool)

(declare-fun b!5956002 () Bool)

(assert (= bs!1412081 (and b!5956002 d!1867253)))

(declare-fun lambda!325319 () Int)

(assert (=> bs!1412081 (not (= lambda!325319 lambda!325316))))

(declare-fun bs!1412082 () Bool)

(assert (= bs!1412082 (and b!5956002 b!5955905)))

(declare-fun lt!2314300 () Int)

(assert (=> bs!1412082 (= (= lt!2314300 lt!2314255) (= lambda!325319 lambda!325288))))

(declare-fun bs!1412083 () Bool)

(assert (= bs!1412083 (and b!5956002 d!1867213)))

(assert (=> bs!1412083 (not (= lambda!325319 lambda!325283))))

(declare-fun bs!1412084 () Bool)

(assert (= bs!1412084 (and b!5956002 b!5955907)))

(assert (=> bs!1412084 (= (= lt!2314300 lt!2314256) (= lambda!325319 lambda!325289))))

(declare-fun bs!1412085 () Bool)

(assert (= bs!1412085 (and b!5956002 d!1867231)))

(assert (=> bs!1412085 (not (= lambda!325319 lambda!325305))))

(declare-fun bs!1412086 () Bool)

(assert (= bs!1412086 (and b!5956002 d!1867159)))

(assert (=> bs!1412086 (not (= lambda!325319 lambda!325270))))

(declare-fun bs!1412087 () Bool)

(assert (= bs!1412087 (and b!5956002 b!5956001)))

(assert (=> bs!1412087 (= (= lt!2314300 lt!2314297) (= lambda!325319 lambda!325318))))

(declare-fun bs!1412088 () Bool)

(assert (= bs!1412088 (and b!5956002 b!5955999)))

(assert (=> bs!1412088 (= (= lt!2314300 lt!2314296) (= lambda!325319 lambda!325317))))

(declare-fun bs!1412089 () Bool)

(assert (= bs!1412089 (and b!5956002 d!1867157)))

(assert (=> bs!1412089 (not (= lambda!325319 lambda!325267))))

(declare-fun bs!1412090 () Bool)

(assert (= bs!1412090 (and b!5956002 d!1867219)))

(assert (=> bs!1412090 (not (= lambda!325319 lambda!325292))))

(assert (=> b!5956002 true))

(declare-fun bs!1412091 () Bool)

(declare-fun b!5956004 () Bool)

(assert (= bs!1412091 (and b!5956004 d!1867253)))

(declare-fun lambda!325320 () Int)

(assert (=> bs!1412091 (not (= lambda!325320 lambda!325316))))

(declare-fun bs!1412092 () Bool)

(assert (= bs!1412092 (and b!5956004 b!5956002)))

(declare-fun lt!2314301 () Int)

(assert (=> bs!1412092 (= (= lt!2314301 lt!2314300) (= lambda!325320 lambda!325319))))

(declare-fun bs!1412093 () Bool)

(assert (= bs!1412093 (and b!5956004 b!5955905)))

(assert (=> bs!1412093 (= (= lt!2314301 lt!2314255) (= lambda!325320 lambda!325288))))

(declare-fun bs!1412094 () Bool)

(assert (= bs!1412094 (and b!5956004 d!1867213)))

(assert (=> bs!1412094 (not (= lambda!325320 lambda!325283))))

(declare-fun bs!1412095 () Bool)

(assert (= bs!1412095 (and b!5956004 b!5955907)))

(assert (=> bs!1412095 (= (= lt!2314301 lt!2314256) (= lambda!325320 lambda!325289))))

(declare-fun bs!1412096 () Bool)

(assert (= bs!1412096 (and b!5956004 d!1867231)))

(assert (=> bs!1412096 (not (= lambda!325320 lambda!325305))))

(declare-fun bs!1412097 () Bool)

(assert (= bs!1412097 (and b!5956004 d!1867159)))

(assert (=> bs!1412097 (not (= lambda!325320 lambda!325270))))

(declare-fun bs!1412098 () Bool)

(assert (= bs!1412098 (and b!5956004 b!5956001)))

(assert (=> bs!1412098 (= (= lt!2314301 lt!2314297) (= lambda!325320 lambda!325318))))

(declare-fun bs!1412099 () Bool)

(assert (= bs!1412099 (and b!5956004 b!5955999)))

(assert (=> bs!1412099 (= (= lt!2314301 lt!2314296) (= lambda!325320 lambda!325317))))

(declare-fun bs!1412100 () Bool)

(assert (= bs!1412100 (and b!5956004 d!1867157)))

(assert (=> bs!1412100 (not (= lambda!325320 lambda!325267))))

(declare-fun bs!1412101 () Bool)

(assert (= bs!1412101 (and b!5956004 d!1867219)))

(assert (=> bs!1412101 (not (= lambda!325320 lambda!325292))))

(assert (=> b!5956004 true))

(declare-fun d!1867257 () Bool)

(declare-fun e!3643312 () Bool)

(assert (=> d!1867257 e!3643312))

(declare-fun res!2492955 () Bool)

(assert (=> d!1867257 (=> (not res!2492955) (not e!3643312))))

(assert (=> d!1867257 (= res!2492955 (>= lt!2314301 0))))

(declare-fun e!3643313 () Int)

(assert (=> d!1867257 (= lt!2314301 e!3643313)))

(declare-fun c!1060199 () Bool)

(assert (=> d!1867257 (= c!1060199 (is-Cons!64169 (exprs!5882 lt!2314126)))))

(assert (=> d!1867257 (= (contextDepth!146 lt!2314126) lt!2314301)))

(assert (=> b!5956002 (= e!3643313 lt!2314300)))

(assert (=> b!5956002 (= lt!2314300 (maxBigInt!0 (regexDepth!255 (h!70617 (exprs!5882 lt!2314126))) (contextDepth!146 (Context!10765 (t!377706 (exprs!5882 lt!2314126))))))))

(declare-fun lt!2314302 () Unit!157267)

(assert (=> b!5956002 (= lt!2314302 (lemmaForallRegexDepthBiggerThanTransitive!47 (t!377706 (exprs!5882 lt!2314126)) lt!2314300 (contextDepth!146 (Context!10765 (t!377706 (exprs!5882 lt!2314126))))))))

(assert (=> b!5956002 (forall!15087 (t!377706 (exprs!5882 lt!2314126)) lambda!325319)))

(declare-fun lt!2314299 () Unit!157267)

(assert (=> b!5956002 (= lt!2314299 lt!2314302)))

(declare-fun b!5956003 () Bool)

(assert (=> b!5956003 (= e!3643313 0)))

(assert (=> b!5956004 (= e!3643312 (forall!15087 (exprs!5882 lt!2314126) lambda!325320))))

(assert (= (and d!1867257 c!1060199) b!5956002))

(assert (= (and d!1867257 (not c!1060199)) b!5956003))

(assert (= (and d!1867257 res!2492955) b!5956004))

(declare-fun m!6843310 () Bool)

(assert (=> b!5956002 m!6843310))

(declare-fun m!6843312 () Bool)

(assert (=> b!5956002 m!6843312))

(declare-fun m!6843314 () Bool)

(assert (=> b!5956002 m!6843314))

(assert (=> b!5956002 m!6843312))

(assert (=> b!5956002 m!6843314))

(declare-fun m!6843316 () Bool)

(assert (=> b!5956002 m!6843316))

(assert (=> b!5956002 m!6843314))

(declare-fun m!6843318 () Bool)

(assert (=> b!5956002 m!6843318))

(declare-fun m!6843320 () Bool)

(assert (=> b!5956004 m!6843320))

(assert (=> b!5955510 d!1867257))

(declare-fun b!5956009 () Bool)

(declare-fun e!3643316 () Bool)

(declare-fun tp!1656911 () Bool)

(assert (=> b!5956009 (= e!3643316 (and tp_is_empty!41249 tp!1656911))))

(assert (=> b!5955511 (= tp!1656874 e!3643316)))

(assert (= (and b!5955511 (is-Cons!64171 (t!377708 s!2326))) b!5956009))

(declare-fun b!5956021 () Bool)

(declare-fun e!3643319 () Bool)

(declare-fun tp!1656926 () Bool)

(declare-fun tp!1656924 () Bool)

(assert (=> b!5956021 (= e!3643319 (and tp!1656926 tp!1656924))))

(declare-fun b!5956023 () Bool)

(declare-fun tp!1656925 () Bool)

(declare-fun tp!1656923 () Bool)

(assert (=> b!5956023 (= e!3643319 (and tp!1656925 tp!1656923))))

(declare-fun b!5956020 () Bool)

(assert (=> b!5956020 (= e!3643319 tp_is_empty!41249)))

(assert (=> b!5955506 (= tp!1656871 e!3643319)))

(declare-fun b!5956022 () Bool)

(declare-fun tp!1656922 () Bool)

(assert (=> b!5956022 (= e!3643319 tp!1656922)))

(assert (= (and b!5955506 (is-ElementMatch!15998 (regOne!32509 r!7292))) b!5956020))

(assert (= (and b!5955506 (is-Concat!24843 (regOne!32509 r!7292))) b!5956021))

(assert (= (and b!5955506 (is-Star!15998 (regOne!32509 r!7292))) b!5956022))

(assert (= (and b!5955506 (is-Union!15998 (regOne!32509 r!7292))) b!5956023))

(declare-fun b!5956025 () Bool)

(declare-fun e!3643320 () Bool)

(declare-fun tp!1656931 () Bool)

(declare-fun tp!1656929 () Bool)

(assert (=> b!5956025 (= e!3643320 (and tp!1656931 tp!1656929))))

(declare-fun b!5956027 () Bool)

(declare-fun tp!1656930 () Bool)

(declare-fun tp!1656928 () Bool)

(assert (=> b!5956027 (= e!3643320 (and tp!1656930 tp!1656928))))

(declare-fun b!5956024 () Bool)

(assert (=> b!5956024 (= e!3643320 tp_is_empty!41249)))

(assert (=> b!5955506 (= tp!1656875 e!3643320)))

(declare-fun b!5956026 () Bool)

(declare-fun tp!1656927 () Bool)

(assert (=> b!5956026 (= e!3643320 tp!1656927)))

(assert (= (and b!5955506 (is-ElementMatch!15998 (regTwo!32509 r!7292))) b!5956024))

(assert (= (and b!5955506 (is-Concat!24843 (regTwo!32509 r!7292))) b!5956025))

(assert (= (and b!5955506 (is-Star!15998 (regTwo!32509 r!7292))) b!5956026))

(assert (= (and b!5955506 (is-Union!15998 (regTwo!32509 r!7292))) b!5956027))

(declare-fun b!5956029 () Bool)

(declare-fun e!3643321 () Bool)

(declare-fun tp!1656936 () Bool)

(declare-fun tp!1656934 () Bool)

(assert (=> b!5956029 (= e!3643321 (and tp!1656936 tp!1656934))))

(declare-fun b!5956031 () Bool)

(declare-fun tp!1656935 () Bool)

(declare-fun tp!1656933 () Bool)

(assert (=> b!5956031 (= e!3643321 (and tp!1656935 tp!1656933))))

(declare-fun b!5956028 () Bool)

(assert (=> b!5956028 (= e!3643321 tp_is_empty!41249)))

(assert (=> b!5955498 (= tp!1656878 e!3643321)))

(declare-fun b!5956030 () Bool)

(declare-fun tp!1656932 () Bool)

(assert (=> b!5956030 (= e!3643321 tp!1656932)))

(assert (= (and b!5955498 (is-ElementMatch!15998 (reg!16327 r!7292))) b!5956028))

(assert (= (and b!5955498 (is-Concat!24843 (reg!16327 r!7292))) b!5956029))

(assert (= (and b!5955498 (is-Star!15998 (reg!16327 r!7292))) b!5956030))

(assert (= (and b!5955498 (is-Union!15998 (reg!16327 r!7292))) b!5956031))

(declare-fun b!5956039 () Bool)

(declare-fun e!3643327 () Bool)

(declare-fun tp!1656941 () Bool)

(assert (=> b!5956039 (= e!3643327 tp!1656941)))

(declare-fun e!3643326 () Bool)

(declare-fun tp!1656942 () Bool)

(declare-fun b!5956038 () Bool)

(assert (=> b!5956038 (= e!3643326 (and (inv!83243 (h!70618 (t!377707 zl!343))) e!3643327 tp!1656942))))

(assert (=> b!5955519 (= tp!1656876 e!3643326)))

(assert (= b!5956038 b!5956039))

(assert (= (and b!5955519 (is-Cons!64170 (t!377707 zl!343))) b!5956038))

(declare-fun m!6843322 () Bool)

(assert (=> b!5956038 m!6843322))

(declare-fun b!5956044 () Bool)

(declare-fun e!3643330 () Bool)

(declare-fun tp!1656947 () Bool)

(declare-fun tp!1656948 () Bool)

(assert (=> b!5956044 (= e!3643330 (and tp!1656947 tp!1656948))))

(assert (=> b!5955504 (= tp!1656873 e!3643330)))

(assert (= (and b!5955504 (is-Cons!64169 (exprs!5882 (h!70618 zl!343)))) b!5956044))

(declare-fun b!5956046 () Bool)

(declare-fun e!3643331 () Bool)

(declare-fun tp!1656953 () Bool)

(declare-fun tp!1656951 () Bool)

(assert (=> b!5956046 (= e!3643331 (and tp!1656953 tp!1656951))))

(declare-fun b!5956048 () Bool)

(declare-fun tp!1656952 () Bool)

(declare-fun tp!1656950 () Bool)

(assert (=> b!5956048 (= e!3643331 (and tp!1656952 tp!1656950))))

(declare-fun b!5956045 () Bool)

(assert (=> b!5956045 (= e!3643331 tp_is_empty!41249)))

(assert (=> b!5955520 (= tp!1656869 e!3643331)))

(declare-fun b!5956047 () Bool)

(declare-fun tp!1656949 () Bool)

(assert (=> b!5956047 (= e!3643331 tp!1656949)))

(assert (= (and b!5955520 (is-ElementMatch!15998 (regOne!32508 r!7292))) b!5956045))

(assert (= (and b!5955520 (is-Concat!24843 (regOne!32508 r!7292))) b!5956046))

(assert (= (and b!5955520 (is-Star!15998 (regOne!32508 r!7292))) b!5956047))

(assert (= (and b!5955520 (is-Union!15998 (regOne!32508 r!7292))) b!5956048))

(declare-fun b!5956050 () Bool)

(declare-fun e!3643332 () Bool)

(declare-fun tp!1656958 () Bool)

(declare-fun tp!1656956 () Bool)

(assert (=> b!5956050 (= e!3643332 (and tp!1656958 tp!1656956))))

(declare-fun b!5956052 () Bool)

(declare-fun tp!1656957 () Bool)

(declare-fun tp!1656955 () Bool)

(assert (=> b!5956052 (= e!3643332 (and tp!1656957 tp!1656955))))

(declare-fun b!5956049 () Bool)

(assert (=> b!5956049 (= e!3643332 tp_is_empty!41249)))

(assert (=> b!5955520 (= tp!1656872 e!3643332)))

(declare-fun b!5956051 () Bool)

(declare-fun tp!1656954 () Bool)

(assert (=> b!5956051 (= e!3643332 tp!1656954)))

(assert (= (and b!5955520 (is-ElementMatch!15998 (regTwo!32508 r!7292))) b!5956049))

(assert (= (and b!5955520 (is-Concat!24843 (regTwo!32508 r!7292))) b!5956050))

(assert (= (and b!5955520 (is-Star!15998 (regTwo!32508 r!7292))) b!5956051))

(assert (= (and b!5955520 (is-Union!15998 (regTwo!32508 r!7292))) b!5956052))

(declare-fun condSetEmpty!40494 () Bool)

(assert (=> setNonEmpty!40488 (= condSetEmpty!40494 (= setRest!40488 (as set.empty (Set Context!10764))))))

(declare-fun setRes!40494 () Bool)

(assert (=> setNonEmpty!40488 (= tp!1656877 setRes!40494)))

(declare-fun setIsEmpty!40494 () Bool)

(assert (=> setIsEmpty!40494 setRes!40494))

(declare-fun e!3643335 () Bool)

(declare-fun setNonEmpty!40494 () Bool)

(declare-fun setElem!40494 () Context!10764)

(declare-fun tp!1656963 () Bool)

(assert (=> setNonEmpty!40494 (= setRes!40494 (and tp!1656963 (inv!83243 setElem!40494) e!3643335))))

(declare-fun setRest!40494 () (Set Context!10764))

(assert (=> setNonEmpty!40494 (= setRest!40488 (set.union (set.insert setElem!40494 (as set.empty (Set Context!10764))) setRest!40494))))

(declare-fun b!5956057 () Bool)

(declare-fun tp!1656964 () Bool)

(assert (=> b!5956057 (= e!3643335 tp!1656964)))

(assert (= (and setNonEmpty!40488 condSetEmpty!40494) setIsEmpty!40494))

(assert (= (and setNonEmpty!40488 (not condSetEmpty!40494)) setNonEmpty!40494))

(assert (= setNonEmpty!40494 b!5956057))

(declare-fun m!6843324 () Bool)

(assert (=> setNonEmpty!40494 m!6843324))

(declare-fun b!5956058 () Bool)

(declare-fun e!3643336 () Bool)

(declare-fun tp!1656965 () Bool)

(declare-fun tp!1656966 () Bool)

(assert (=> b!5956058 (= e!3643336 (and tp!1656965 tp!1656966))))

(assert (=> b!5955525 (= tp!1656870 e!3643336)))

(assert (= (and b!5955525 (is-Cons!64169 (exprs!5882 setElem!40488))) b!5956058))

(declare-fun b_lambda!223935 () Bool)

(assert (= b_lambda!223933 (or b!5955526 b_lambda!223935)))

(declare-fun bs!1412102 () Bool)

(declare-fun d!1867259 () Bool)

(assert (= bs!1412102 (and d!1867259 b!5955526)))

(assert (=> bs!1412102 (= (dynLambda!25117 lambda!325249 lt!2314126) (derivationStepZipperUp!1174 lt!2314126 (h!70619 s!2326)))))

(assert (=> bs!1412102 m!6842814))

(assert (=> d!1867191 d!1867259))

(declare-fun b_lambda!223937 () Bool)

(assert (= b_lambda!223929 (or b!5955526 b_lambda!223937)))

(declare-fun bs!1412103 () Bool)

(declare-fun d!1867261 () Bool)

(assert (= bs!1412103 (and d!1867261 b!5955526)))

(assert (=> bs!1412103 (= (dynLambda!25117 lambda!325249 (h!70618 zl!343)) (derivationStepZipperUp!1174 (h!70618 zl!343) (h!70619 s!2326)))))

(assert (=> bs!1412103 m!6842866))

(assert (=> d!1867173 d!1867261))

(declare-fun b_lambda!223939 () Bool)

(assert (= b_lambda!223931 (or b!5955526 b_lambda!223939)))

(declare-fun bs!1412104 () Bool)

(declare-fun d!1867263 () Bool)

(assert (= bs!1412104 (and d!1867263 b!5955526)))

(assert (=> bs!1412104 (= (dynLambda!25117 lambda!325249 lt!2314130) (derivationStepZipperUp!1174 lt!2314130 (h!70619 s!2326)))))

(assert (=> bs!1412104 m!6842816))

(assert (=> d!1867185 d!1867263))

(push 1)

(assert (not b!5955720))

(assert (not b!5955868))

(assert (not d!1867165))

(assert (not b!5955890))

(assert (not bm!474683))

(assert (not b!5955860))

(assert (not b!5956046))

(assert (not d!1867187))

(assert (not b!5956001))

(assert (not b!5955950))

(assert (not b!5955669))

(assert (not d!1867235))

(assert (not b!5956047))

(assert (not bm!474645))

(assert tp_is_empty!41249)

(assert (not b!5955953))

(assert (not b!5955892))

(assert (not bm!474676))

(assert (not b!5955678))

(assert (not d!1867231))

(assert (not d!1867169))

(assert (not b!5956021))

(assert (not bm!474670))

(assert (not b!5955763))

(assert (not d!1867233))

(assert (not b!5956038))

(assert (not b!5955986))

(assert (not b!5956029))

(assert (not bm!474648))

(assert (not b!5955955))

(assert (not d!1867253))

(assert (not b!5956004))

(assert (not b!5955855))

(assert (not d!1867197))

(assert (not d!1867219))

(assert (not b!5955668))

(assert (not b!5955905))

(assert (not b!5955863))

(assert (not b!5955907))

(assert (not d!1867239))

(assert (not d!1867203))

(assert (not d!1867245))

(assert (not b!5955857))

(assert (not b!5955666))

(assert (not b!5956002))

(assert (not b!5955760))

(assert (not bm!474682))

(assert (not d!1867225))

(assert (not b!5955831))

(assert (not b!5955861))

(assert (not d!1867249))

(assert (not b!5955848))

(assert (not b!5955764))

(assert (not b!5956025))

(assert (not d!1867237))

(assert (not b_lambda!223939))

(assert (not b!5955829))

(assert (not d!1867157))

(assert (not b!5955777))

(assert (not b!5955910))

(assert (not b!5955999))

(assert (not d!1867193))

(assert (not b!5955664))

(assert (not b!5955941))

(assert (not bm!474652))

(assert (not d!1867191))

(assert (not d!1867241))

(assert (not b!5956058))

(assert (not b!5955985))

(assert (not b!5955673))

(assert (not d!1867207))

(assert (not b!5956026))

(assert (not b!5955775))

(assert (not b_lambda!223937))

(assert (not bm!474675))

(assert (not b!5955981))

(assert (not b!5956031))

(assert (not b!5956027))

(assert (not bm!474666))

(assert (not b!5955838))

(assert (not b!5955980))

(assert (not bm!474691))

(assert (not b_lambda!223935))

(assert (not b!5955894))

(assert (not b!5955896))

(assert (not b!5955865))

(assert (not b!5955948))

(assert (not d!1867159))

(assert (not bm!474677))

(assert (not setNonEmpty!40494))

(assert (not bm!474669))

(assert (not b!5955715))

(assert (not b!5955958))

(assert (not bs!1412104))

(assert (not b!5956009))

(assert (not b!5955822))

(assert (not d!1867167))

(assert (not d!1867195))

(assert (not b!5955862))

(assert (not b!5956050))

(assert (not b!5955840))

(assert (not d!1867211))

(assert (not b!5956022))

(assert (not b!5955782))

(assert (not bm!474651))

(assert (not d!1867247))

(assert (not d!1867173))

(assert (not b!5955895))

(assert (not d!1867213))

(assert (not d!1867185))

(assert (not b!5955864))

(assert (not b!5955759))

(assert (not bs!1412103))

(assert (not b!5955752))

(assert (not b!5956052))

(assert (not b!5955978))

(assert (not d!1867209))

(assert (not b!5955672))

(assert (not bm!474672))

(assert (not b!5955780))

(assert (not b!5956051))

(assert (not d!1867205))

(assert (not b!5956030))

(assert (not b!5955979))

(assert (not d!1867243))

(assert (not bm!474693))

(assert (not b!5955665))

(assert (not b!5955839))

(assert (not bm!474679))

(assert (not b!5956057))

(assert (not b!5955911))

(assert (not b!5955938))

(assert (not b!5955811))

(assert (not b!5955957))

(assert (not b!5956039))

(assert (not bs!1412102))

(assert (not bm!474684))

(assert (not b!5956023))

(assert (not b!5955893))

(assert (not b!5955959))

(assert (not d!1867177))

(assert (not b!5955897))

(assert (not b!5955751))

(assert (not b!5955956))

(assert (not d!1867251))

(assert (not b!5956048))

(assert (not b!5955841))

(assert (not d!1867217))

(assert (not b!5956044))

(assert (not bm!474644))

(assert (not d!1867181))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

