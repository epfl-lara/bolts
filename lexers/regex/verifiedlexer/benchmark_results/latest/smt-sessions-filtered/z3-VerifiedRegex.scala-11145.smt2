; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!578182 () Bool)

(assert start!578182)

(declare-fun b!5554069 () Bool)

(assert (=> b!5554069 true))

(assert (=> b!5554069 true))

(declare-fun lambda!297956 () Int)

(declare-fun lambda!297955 () Int)

(assert (=> b!5554069 (not (= lambda!297956 lambda!297955))))

(assert (=> b!5554069 true))

(assert (=> b!5554069 true))

(declare-fun b!5554076 () Bool)

(assert (=> b!5554076 true))

(declare-fun b!5554059 () Bool)

(declare-fun e!3430303 () Bool)

(declare-fun tp_is_empty!40327 () Bool)

(assert (=> b!5554059 (= e!3430303 tp_is_empty!40327)))

(declare-fun b!5554060 () Bool)

(declare-fun tp!1532433 () Bool)

(assert (=> b!5554060 (= e!3430303 tp!1532433)))

(declare-fun e!3430301 () Bool)

(declare-fun lt!2250747 () Bool)

(declare-fun lt!2250753 () Bool)

(declare-fun lt!2250740 () Bool)

(declare-fun b!5554061 () Bool)

(assert (=> b!5554061 (= e!3430301 (or (not (= lt!2250753 lt!2250747)) (= lt!2250747 lt!2250740)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31344 0))(
  ( (C!31345 (val!25374 Int)) )
))
(declare-datatypes ((Regex!15537 0))(
  ( (ElementMatch!15537 (c!972259 C!31344)) (Concat!24382 (regOne!31586 Regex!15537) (regTwo!31586 Regex!15537)) (EmptyExpr!15537) (Star!15537 (reg!15866 Regex!15537)) (EmptyLang!15537) (Union!15537 (regOne!31587 Regex!15537) (regTwo!31587 Regex!15537)) )
))
(declare-datatypes ((List!62910 0))(
  ( (Nil!62786) (Cons!62786 (h!69234 Regex!15537) (t!376175 List!62910)) )
))
(declare-datatypes ((Context!9842 0))(
  ( (Context!9843 (exprs!5421 List!62910)) )
))
(declare-fun z!1189 () (InoxSet Context!9842))

(declare-datatypes ((List!62911 0))(
  ( (Nil!62787) (Cons!62787 (h!69235 C!31344) (t!376176 List!62911)) )
))
(declare-fun s!2326 () List!62911)

(declare-fun matchZipper!1679 ((InoxSet Context!9842) List!62911) Bool)

(assert (=> b!5554061 (= lt!2250747 (matchZipper!1679 z!1189 s!2326))))

(declare-fun lt!2250749 () (InoxSet Context!9842))

(assert (=> b!5554061 (= lt!2250753 (matchZipper!1679 lt!2250749 (t!376176 s!2326)))))

(declare-fun lt!2250741 () Bool)

(assert (=> b!5554061 (= lt!2250741 lt!2250740)))

(declare-fun e!3430306 () Bool)

(assert (=> b!5554061 (= lt!2250740 e!3430306)))

(declare-fun res!2360882 () Bool)

(assert (=> b!5554061 (=> res!2360882 e!3430306)))

(declare-fun lt!2250751 () Bool)

(assert (=> b!5554061 (= res!2360882 lt!2250751)))

(declare-fun lt!2250745 () (InoxSet Context!9842))

(assert (=> b!5554061 (= lt!2250741 (matchZipper!1679 lt!2250745 (t!376176 s!2326)))))

(declare-fun lt!2250757 () (InoxSet Context!9842))

(assert (=> b!5554061 (= lt!2250751 (matchZipper!1679 lt!2250757 (t!376176 s!2326)))))

(declare-datatypes ((Unit!155534 0))(
  ( (Unit!155535) )
))
(declare-fun lt!2250748 () Unit!155534)

(declare-fun lt!2250754 () (InoxSet Context!9842))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!568 ((InoxSet Context!9842) (InoxSet Context!9842) List!62911) Unit!155534)

(assert (=> b!5554061 (= lt!2250748 (lemmaZipperConcatMatchesSameAsBothZippers!568 lt!2250757 lt!2250754 (t!376176 s!2326)))))

(declare-fun b!5554062 () Bool)

(declare-fun res!2360880 () Bool)

(declare-fun e!3430297 () Bool)

(assert (=> b!5554062 (=> res!2360880 e!3430297)))

(declare-fun r!7292 () Regex!15537)

(declare-datatypes ((List!62912 0))(
  ( (Nil!62788) (Cons!62788 (h!69236 Context!9842) (t!376177 List!62912)) )
))
(declare-fun zl!343 () List!62912)

(declare-fun generalisedConcat!1152 (List!62910) Regex!15537)

(assert (=> b!5554062 (= res!2360880 (not (= r!7292 (generalisedConcat!1152 (exprs!5421 (h!69236 zl!343))))))))

(declare-fun b!5554063 () Bool)

(declare-fun e!3430298 () Bool)

(declare-fun tp!1532438 () Bool)

(assert (=> b!5554063 (= e!3430298 tp!1532438)))

(declare-fun res!2360885 () Bool)

(declare-fun e!3430305 () Bool)

(assert (=> start!578182 (=> (not res!2360885) (not e!3430305))))

(declare-fun validRegex!7273 (Regex!15537) Bool)

(assert (=> start!578182 (= res!2360885 (validRegex!7273 r!7292))))

(assert (=> start!578182 e!3430305))

(assert (=> start!578182 e!3430303))

(declare-fun condSetEmpty!36951 () Bool)

(assert (=> start!578182 (= condSetEmpty!36951 (= z!1189 ((as const (Array Context!9842 Bool)) false)))))

(declare-fun setRes!36951 () Bool)

(assert (=> start!578182 setRes!36951))

(declare-fun e!3430304 () Bool)

(assert (=> start!578182 e!3430304))

(declare-fun e!3430296 () Bool)

(assert (=> start!578182 e!3430296))

(declare-fun b!5554064 () Bool)

(declare-fun res!2360883 () Bool)

(assert (=> b!5554064 (=> (not res!2360883) (not e!3430305))))

(declare-fun unfocusZipper!1279 (List!62912) Regex!15537)

(assert (=> b!5554064 (= res!2360883 (= r!7292 (unfocusZipper!1279 zl!343)))))

(declare-fun b!5554065 () Bool)

(declare-fun res!2360875 () Bool)

(assert (=> b!5554065 (=> (not res!2360875) (not e!3430305))))

(declare-fun toList!9321 ((InoxSet Context!9842)) List!62912)

(assert (=> b!5554065 (= res!2360875 (= (toList!9321 z!1189) zl!343))))

(declare-fun b!5554066 () Bool)

(declare-fun tp!1532431 () Bool)

(declare-fun tp!1532430 () Bool)

(assert (=> b!5554066 (= e!3430303 (and tp!1532431 tp!1532430))))

(declare-fun b!5554067 () Bool)

(declare-fun e!3430302 () Bool)

(assert (=> b!5554067 (= e!3430302 e!3430301)))

(declare-fun res!2360877 () Bool)

(assert (=> b!5554067 (=> res!2360877 e!3430301)))

(declare-fun lt!2250752 () (InoxSet Context!9842))

(assert (=> b!5554067 (= res!2360877 (or (not (= lt!2250752 lt!2250745)) (not (= lt!2250749 lt!2250752))))))

(assert (=> b!5554067 (= lt!2250745 ((_ map or) lt!2250757 lt!2250754))))

(declare-fun b!5554068 () Bool)

(declare-fun res!2360884 () Bool)

(declare-fun e!3430299 () Bool)

(assert (=> b!5554068 (=> res!2360884 e!3430299)))

(declare-fun isEmpty!34580 (List!62910) Bool)

(assert (=> b!5554068 (= res!2360884 (isEmpty!34580 (t!376175 (exprs!5421 (h!69236 zl!343)))))))

(declare-fun setIsEmpty!36951 () Bool)

(assert (=> setIsEmpty!36951 setRes!36951))

(assert (=> b!5554069 (= e!3430297 e!3430299)))

(declare-fun res!2360873 () Bool)

(assert (=> b!5554069 (=> res!2360873 e!3430299)))

(declare-fun lt!2250744 () Bool)

(declare-fun lt!2250756 () Bool)

(get-info :version)

(assert (=> b!5554069 (= res!2360873 (or (not (= lt!2250744 lt!2250756)) ((_ is Nil!62787) s!2326)))))

(declare-fun Exists!2637 (Int) Bool)

(assert (=> b!5554069 (= (Exists!2637 lambda!297955) (Exists!2637 lambda!297956))))

(declare-fun lt!2250755 () Unit!155534)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1266 (Regex!15537 Regex!15537 List!62911) Unit!155534)

(assert (=> b!5554069 (= lt!2250755 (lemmaExistCutMatchRandMatchRSpecEquivalent!1266 (regOne!31586 r!7292) (regTwo!31586 r!7292) s!2326))))

(assert (=> b!5554069 (= lt!2250756 (Exists!2637 lambda!297955))))

(declare-datatypes ((tuple2!65268 0))(
  ( (tuple2!65269 (_1!35937 List!62911) (_2!35937 List!62911)) )
))
(declare-datatypes ((Option!15546 0))(
  ( (None!15545) (Some!15545 (v!51584 tuple2!65268)) )
))
(declare-fun isDefined!12249 (Option!15546) Bool)

(declare-fun findConcatSeparation!1960 (Regex!15537 Regex!15537 List!62911 List!62911 List!62911) Option!15546)

(assert (=> b!5554069 (= lt!2250756 (isDefined!12249 (findConcatSeparation!1960 (regOne!31586 r!7292) (regTwo!31586 r!7292) Nil!62787 s!2326 s!2326)))))

(declare-fun lt!2250742 () Unit!155534)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1724 (Regex!15537 Regex!15537 List!62911) Unit!155534)

(assert (=> b!5554069 (= lt!2250742 (lemmaFindConcatSeparationEquivalentToExists!1724 (regOne!31586 r!7292) (regTwo!31586 r!7292) s!2326))))

(declare-fun b!5554070 () Bool)

(declare-fun res!2360881 () Bool)

(assert (=> b!5554070 (=> res!2360881 e!3430297)))

(assert (=> b!5554070 (= res!2360881 (or ((_ is EmptyExpr!15537) r!7292) ((_ is EmptyLang!15537) r!7292) ((_ is ElementMatch!15537) r!7292) ((_ is Union!15537) r!7292) (not ((_ is Concat!24382) r!7292))))))

(declare-fun b!5554071 () Bool)

(declare-fun res!2360878 () Bool)

(assert (=> b!5554071 (=> res!2360878 e!3430297)))

(declare-fun isEmpty!34581 (List!62912) Bool)

(assert (=> b!5554071 (= res!2360878 (not (isEmpty!34581 (t!376177 zl!343))))))

(declare-fun b!5554072 () Bool)

(declare-fun res!2360874 () Bool)

(assert (=> b!5554072 (=> res!2360874 e!3430297)))

(assert (=> b!5554072 (= res!2360874 (not ((_ is Cons!62786) (exprs!5421 (h!69236 zl!343)))))))

(declare-fun b!5554073 () Bool)

(declare-fun res!2360886 () Bool)

(assert (=> b!5554073 (=> res!2360886 e!3430297)))

(declare-fun generalisedUnion!1400 (List!62910) Regex!15537)

(declare-fun unfocusZipperList!965 (List!62912) List!62910)

(assert (=> b!5554073 (= res!2360886 (not (= r!7292 (generalisedUnion!1400 (unfocusZipperList!965 zl!343)))))))

(declare-fun b!5554074 () Bool)

(declare-fun e!3430300 () Bool)

(declare-fun tp!1532432 () Bool)

(assert (=> b!5554074 (= e!3430300 tp!1532432)))

(declare-fun b!5554075 () Bool)

(assert (=> b!5554075 (= e!3430306 (matchZipper!1679 lt!2250754 (t!376176 s!2326)))))

(assert (=> b!5554076 (= e!3430299 e!3430302)))

(declare-fun res!2360879 () Bool)

(assert (=> b!5554076 (=> res!2360879 e!3430302)))

(declare-fun nullable!5569 (Regex!15537) Bool)

(assert (=> b!5554076 (= res!2360879 (not (nullable!5569 (h!69234 (exprs!5421 (h!69236 zl!343))))))))

(declare-fun lambda!297957 () Int)

(declare-fun flatMap!1150 ((InoxSet Context!9842) Int) (InoxSet Context!9842))

(declare-fun derivationStepZipperUp!805 (Context!9842 C!31344) (InoxSet Context!9842))

(assert (=> b!5554076 (= (flatMap!1150 z!1189 lambda!297957) (derivationStepZipperUp!805 (h!69236 zl!343) (h!69235 s!2326)))))

(declare-fun lt!2250750 () Unit!155534)

(declare-fun lemmaFlatMapOnSingletonSet!682 ((InoxSet Context!9842) Context!9842 Int) Unit!155534)

(assert (=> b!5554076 (= lt!2250750 (lemmaFlatMapOnSingletonSet!682 z!1189 (h!69236 zl!343) lambda!297957))))

(declare-fun lt!2250743 () Context!9842)

(assert (=> b!5554076 (= lt!2250754 (derivationStepZipperUp!805 lt!2250743 (h!69235 s!2326)))))

(declare-fun derivationStepZipperDown!879 (Regex!15537 Context!9842 C!31344) (InoxSet Context!9842))

(assert (=> b!5554076 (= lt!2250757 (derivationStepZipperDown!879 (h!69234 (exprs!5421 (h!69236 zl!343))) lt!2250743 (h!69235 s!2326)))))

(assert (=> b!5554076 (= lt!2250743 (Context!9843 (t!376175 (exprs!5421 (h!69236 zl!343)))))))

(assert (=> b!5554076 (= lt!2250752 (derivationStepZipperUp!805 (Context!9843 (Cons!62786 (h!69234 (exprs!5421 (h!69236 zl!343))) (t!376175 (exprs!5421 (h!69236 zl!343))))) (h!69235 s!2326)))))

(declare-fun derivationStepZipper!1640 ((InoxSet Context!9842) C!31344) (InoxSet Context!9842))

(assert (=> b!5554076 (= lt!2250749 (derivationStepZipper!1640 z!1189 (h!69235 s!2326)))))

(declare-fun b!5554077 () Bool)

(assert (=> b!5554077 (= e!3430305 (not e!3430297))))

(declare-fun res!2360876 () Bool)

(assert (=> b!5554077 (=> res!2360876 e!3430297)))

(assert (=> b!5554077 (= res!2360876 (not ((_ is Cons!62788) zl!343)))))

(declare-fun matchRSpec!2640 (Regex!15537 List!62911) Bool)

(assert (=> b!5554077 (= lt!2250744 (matchRSpec!2640 r!7292 s!2326))))

(declare-fun matchR!7722 (Regex!15537 List!62911) Bool)

(assert (=> b!5554077 (= lt!2250744 (matchR!7722 r!7292 s!2326))))

(declare-fun lt!2250746 () Unit!155534)

(declare-fun mainMatchTheorem!2640 (Regex!15537 List!62911) Unit!155534)

(assert (=> b!5554077 (= lt!2250746 (mainMatchTheorem!2640 r!7292 s!2326))))

(declare-fun tp!1532434 () Bool)

(declare-fun setElem!36951 () Context!9842)

(declare-fun setNonEmpty!36951 () Bool)

(declare-fun inv!82089 (Context!9842) Bool)

(assert (=> setNonEmpty!36951 (= setRes!36951 (and tp!1532434 (inv!82089 setElem!36951) e!3430300))))

(declare-fun setRest!36951 () (InoxSet Context!9842))

(assert (=> setNonEmpty!36951 (= z!1189 ((_ map or) (store ((as const (Array Context!9842 Bool)) false) setElem!36951 true) setRest!36951))))

(declare-fun tp!1532436 () Bool)

(declare-fun b!5554078 () Bool)

(assert (=> b!5554078 (= e!3430304 (and (inv!82089 (h!69236 zl!343)) e!3430298 tp!1532436))))

(declare-fun b!5554079 () Bool)

(declare-fun tp!1532437 () Bool)

(assert (=> b!5554079 (= e!3430296 (and tp_is_empty!40327 tp!1532437))))

(declare-fun b!5554080 () Bool)

(declare-fun tp!1532439 () Bool)

(declare-fun tp!1532435 () Bool)

(assert (=> b!5554080 (= e!3430303 (and tp!1532439 tp!1532435))))

(assert (= (and start!578182 res!2360885) b!5554065))

(assert (= (and b!5554065 res!2360875) b!5554064))

(assert (= (and b!5554064 res!2360883) b!5554077))

(assert (= (and b!5554077 (not res!2360876)) b!5554071))

(assert (= (and b!5554071 (not res!2360878)) b!5554062))

(assert (= (and b!5554062 (not res!2360880)) b!5554072))

(assert (= (and b!5554072 (not res!2360874)) b!5554073))

(assert (= (and b!5554073 (not res!2360886)) b!5554070))

(assert (= (and b!5554070 (not res!2360881)) b!5554069))

(assert (= (and b!5554069 (not res!2360873)) b!5554068))

(assert (= (and b!5554068 (not res!2360884)) b!5554076))

(assert (= (and b!5554076 (not res!2360879)) b!5554067))

(assert (= (and b!5554067 (not res!2360877)) b!5554061))

(assert (= (and b!5554061 (not res!2360882)) b!5554075))

(assert (= (and start!578182 ((_ is ElementMatch!15537) r!7292)) b!5554059))

(assert (= (and start!578182 ((_ is Concat!24382) r!7292)) b!5554080))

(assert (= (and start!578182 ((_ is Star!15537) r!7292)) b!5554060))

(assert (= (and start!578182 ((_ is Union!15537) r!7292)) b!5554066))

(assert (= (and start!578182 condSetEmpty!36951) setIsEmpty!36951))

(assert (= (and start!578182 (not condSetEmpty!36951)) setNonEmpty!36951))

(assert (= setNonEmpty!36951 b!5554074))

(assert (= b!5554078 b!5554063))

(assert (= (and start!578182 ((_ is Cons!62788) zl!343)) b!5554078))

(assert (= (and start!578182 ((_ is Cons!62787) s!2326)) b!5554079))

(declare-fun m!6546926 () Bool)

(assert (=> b!5554077 m!6546926))

(declare-fun m!6546928 () Bool)

(assert (=> b!5554077 m!6546928))

(declare-fun m!6546930 () Bool)

(assert (=> b!5554077 m!6546930))

(declare-fun m!6546932 () Bool)

(assert (=> setNonEmpty!36951 m!6546932))

(declare-fun m!6546934 () Bool)

(assert (=> b!5554069 m!6546934))

(declare-fun m!6546936 () Bool)

(assert (=> b!5554069 m!6546936))

(declare-fun m!6546938 () Bool)

(assert (=> b!5554069 m!6546938))

(assert (=> b!5554069 m!6546934))

(declare-fun m!6546940 () Bool)

(assert (=> b!5554069 m!6546940))

(declare-fun m!6546942 () Bool)

(assert (=> b!5554069 m!6546942))

(assert (=> b!5554069 m!6546936))

(declare-fun m!6546944 () Bool)

(assert (=> b!5554069 m!6546944))

(declare-fun m!6546946 () Bool)

(assert (=> b!5554078 m!6546946))

(declare-fun m!6546948 () Bool)

(assert (=> b!5554061 m!6546948))

(declare-fun m!6546950 () Bool)

(assert (=> b!5554061 m!6546950))

(declare-fun m!6546952 () Bool)

(assert (=> b!5554061 m!6546952))

(declare-fun m!6546954 () Bool)

(assert (=> b!5554061 m!6546954))

(declare-fun m!6546956 () Bool)

(assert (=> b!5554061 m!6546956))

(declare-fun m!6546958 () Bool)

(assert (=> b!5554064 m!6546958))

(declare-fun m!6546960 () Bool)

(assert (=> b!5554075 m!6546960))

(declare-fun m!6546962 () Bool)

(assert (=> b!5554073 m!6546962))

(assert (=> b!5554073 m!6546962))

(declare-fun m!6546964 () Bool)

(assert (=> b!5554073 m!6546964))

(declare-fun m!6546966 () Bool)

(assert (=> b!5554068 m!6546966))

(declare-fun m!6546968 () Bool)

(assert (=> b!5554065 m!6546968))

(declare-fun m!6546970 () Bool)

(assert (=> b!5554076 m!6546970))

(declare-fun m!6546972 () Bool)

(assert (=> b!5554076 m!6546972))

(declare-fun m!6546974 () Bool)

(assert (=> b!5554076 m!6546974))

(declare-fun m!6546976 () Bool)

(assert (=> b!5554076 m!6546976))

(declare-fun m!6546978 () Bool)

(assert (=> b!5554076 m!6546978))

(declare-fun m!6546980 () Bool)

(assert (=> b!5554076 m!6546980))

(declare-fun m!6546982 () Bool)

(assert (=> b!5554076 m!6546982))

(declare-fun m!6546984 () Bool)

(assert (=> b!5554076 m!6546984))

(declare-fun m!6546986 () Bool)

(assert (=> start!578182 m!6546986))

(declare-fun m!6546988 () Bool)

(assert (=> b!5554071 m!6546988))

(declare-fun m!6546990 () Bool)

(assert (=> b!5554062 m!6546990))

(check-sat (not b!5554080) (not b!5554078) (not b!5554060) (not start!578182) (not b!5554075) (not b!5554063) (not b!5554062) (not b!5554066) (not b!5554065) (not b!5554074) (not b!5554076) (not setNonEmpty!36951) (not b!5554073) (not b!5554068) (not b!5554061) tp_is_empty!40327 (not b!5554069) (not b!5554064) (not b!5554077) (not b!5554071) (not b!5554079))
(check-sat)
