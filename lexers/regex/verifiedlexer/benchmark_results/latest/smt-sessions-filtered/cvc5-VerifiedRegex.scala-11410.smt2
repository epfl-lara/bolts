; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!611416 () Bool)

(assert start!611416)

(declare-fun b!6119299 () Bool)

(assert (=> b!6119299 true))

(assert (=> b!6119299 true))

(declare-fun lambda!333339 () Int)

(declare-fun lambda!333338 () Int)

(assert (=> b!6119299 (not (= lambda!333339 lambda!333338))))

(assert (=> b!6119299 true))

(assert (=> b!6119299 true))

(declare-fun b!6119302 () Bool)

(assert (=> b!6119302 true))

(declare-fun b!6119282 () Bool)

(declare-fun res!2537222 () Bool)

(declare-fun e!3730626 () Bool)

(assert (=> b!6119282 (=> res!2537222 e!3730626)))

(declare-datatypes ((C!32402 0))(
  ( (C!32403 (val!25903 Int)) )
))
(declare-datatypes ((Regex!16066 0))(
  ( (ElementMatch!16066 (c!1099622 C!32402)) (Concat!24911 (regOne!32644 Regex!16066) (regTwo!32644 Regex!16066)) (EmptyExpr!16066) (Star!16066 (reg!16395 Regex!16066)) (EmptyLang!16066) (Union!16066 (regOne!32645 Regex!16066) (regTwo!32645 Regex!16066)) )
))
(declare-fun r!7292 () Regex!16066)

(declare-datatypes ((List!64497 0))(
  ( (Nil!64373) (Cons!64373 (h!70821 Regex!16066) (t!377958 List!64497)) )
))
(declare-datatypes ((Context!10900 0))(
  ( (Context!10901 (exprs!5950 List!64497)) )
))
(declare-datatypes ((List!64498 0))(
  ( (Nil!64374) (Cons!64374 (h!70822 Context!10900) (t!377959 List!64498)) )
))
(declare-fun zl!343 () List!64498)

(declare-fun generalisedUnion!1910 (List!64497) Regex!16066)

(declare-fun unfocusZipperList!1487 (List!64498) List!64497)

(assert (=> b!6119282 (= res!2537222 (not (= r!7292 (generalisedUnion!1910 (unfocusZipperList!1487 zl!343)))))))

(declare-fun setElem!41349 () Context!10900)

(declare-fun e!3730620 () Bool)

(declare-fun setNonEmpty!41349 () Bool)

(declare-fun setRes!41349 () Bool)

(declare-fun tp!1709778 () Bool)

(declare-fun inv!83413 (Context!10900) Bool)

(assert (=> setNonEmpty!41349 (= setRes!41349 (and tp!1709778 (inv!83413 setElem!41349) e!3730620))))

(declare-fun z!1189 () (Set Context!10900))

(declare-fun setRest!41349 () (Set Context!10900))

(assert (=> setNonEmpty!41349 (= z!1189 (set.union (set.insert setElem!41349 (as set.empty (Set Context!10900))) setRest!41349))))

(declare-fun b!6119283 () Bool)

(declare-fun e!3730623 () Bool)

(declare-fun e!3730622 () Bool)

(assert (=> b!6119283 (= e!3730623 e!3730622)))

(declare-fun res!2537220 () Bool)

(assert (=> b!6119283 (=> res!2537220 e!3730622)))

(declare-fun lt!2330798 () (Set Context!10900))

(declare-fun lt!2330794 () (Set Context!10900))

(assert (=> b!6119283 (= res!2537220 (not (= lt!2330798 lt!2330794)))))

(declare-fun lt!2330795 () Context!10900)

(assert (=> b!6119283 (= lt!2330794 (set.insert lt!2330795 (as set.empty (Set Context!10900))))))

(declare-fun b!6119284 () Bool)

(declare-fun e!3730616 () Bool)

(declare-fun tp!1709776 () Bool)

(declare-fun tp!1709773 () Bool)

(assert (=> b!6119284 (= e!3730616 (and tp!1709776 tp!1709773))))

(declare-fun b!6119285 () Bool)

(declare-fun res!2537218 () Bool)

(declare-fun e!3730628 () Bool)

(assert (=> b!6119285 (=> (not res!2537218) (not e!3730628))))

(declare-fun unfocusZipper!1808 (List!64498) Regex!16066)

(assert (=> b!6119285 (= res!2537218 (= r!7292 (unfocusZipper!1808 zl!343)))))

(declare-fun b!6119286 () Bool)

(declare-fun tp!1709772 () Bool)

(assert (=> b!6119286 (= e!3730616 tp!1709772)))

(declare-fun b!6119287 () Bool)

(declare-fun tp!1709777 () Bool)

(declare-fun tp!1709771 () Bool)

(assert (=> b!6119287 (= e!3730616 (and tp!1709777 tp!1709771))))

(declare-fun b!6119288 () Bool)

(assert (=> b!6119288 (= e!3730628 (not e!3730626))))

(declare-fun res!2537226 () Bool)

(assert (=> b!6119288 (=> res!2537226 e!3730626)))

(assert (=> b!6119288 (= res!2537226 (not (is-Cons!64374 zl!343)))))

(declare-fun lt!2330790 () Bool)

(declare-datatypes ((List!64499 0))(
  ( (Nil!64375) (Cons!64375 (h!70823 C!32402) (t!377960 List!64499)) )
))
(declare-fun s!2326 () List!64499)

(declare-fun matchRSpec!3167 (Regex!16066 List!64499) Bool)

(assert (=> b!6119288 (= lt!2330790 (matchRSpec!3167 r!7292 s!2326))))

(declare-fun matchR!8249 (Regex!16066 List!64499) Bool)

(assert (=> b!6119288 (= lt!2330790 (matchR!8249 r!7292 s!2326))))

(declare-datatypes ((Unit!157419 0))(
  ( (Unit!157420) )
))
(declare-fun lt!2330785 () Unit!157419)

(declare-fun mainMatchTheorem!3167 (Regex!16066 List!64499) Unit!157419)

(assert (=> b!6119288 (= lt!2330785 (mainMatchTheorem!3167 r!7292 s!2326))))

(declare-fun b!6119290 () Bool)

(declare-fun e!3730617 () Bool)

(declare-fun tp!1709779 () Bool)

(assert (=> b!6119290 (= e!3730617 tp!1709779)))

(declare-fun b!6119291 () Bool)

(declare-fun res!2537232 () Bool)

(assert (=> b!6119291 (=> res!2537232 e!3730626)))

(declare-fun isEmpty!36306 (List!64498) Bool)

(assert (=> b!6119291 (= res!2537232 (not (isEmpty!36306 (t!377959 zl!343))))))

(declare-fun b!6119292 () Bool)

(declare-fun e!3730621 () Bool)

(declare-fun lt!2330797 () (Set Context!10900))

(declare-fun matchZipper!2078 ((Set Context!10900) List!64499) Bool)

(assert (=> b!6119292 (= e!3730621 (matchZipper!2078 lt!2330797 (t!377960 s!2326)))))

(declare-fun b!6119293 () Bool)

(declare-fun e!3730625 () Bool)

(assert (=> b!6119293 (= e!3730622 e!3730625)))

(declare-fun res!2537228 () Bool)

(assert (=> b!6119293 (=> res!2537228 e!3730625)))

(declare-fun lt!2330788 () Regex!16066)

(declare-fun validRegex!7802 (Regex!16066) Bool)

(assert (=> b!6119293 (= res!2537228 (not (validRegex!7802 lt!2330788)))))

(declare-fun generalisedConcat!1663 (List!64497) Regex!16066)

(assert (=> b!6119293 (= lt!2330788 (generalisedConcat!1663 (t!377958 (exprs!5950 (h!70822 zl!343)))))))

(declare-fun lt!2330796 () List!64498)

(assert (=> b!6119293 (= lt!2330796 (Cons!64374 lt!2330795 Nil!64374))))

(declare-fun b!6119294 () Bool)

(declare-fun res!2537233 () Bool)

(assert (=> b!6119294 (=> (not res!2537233) (not e!3730628))))

(declare-fun toList!9850 ((Set Context!10900)) List!64498)

(assert (=> b!6119294 (= res!2537233 (= (toList!9850 z!1189) zl!343))))

(declare-fun tp!1709774 () Bool)

(declare-fun e!3730627 () Bool)

(declare-fun b!6119295 () Bool)

(assert (=> b!6119295 (= e!3730627 (and (inv!83413 (h!70822 zl!343)) e!3730617 tp!1709774))))

(declare-fun b!6119296 () Bool)

(declare-fun e!3730618 () Bool)

(declare-fun tp_is_empty!41385 () Bool)

(declare-fun tp!1709780 () Bool)

(assert (=> b!6119296 (= e!3730618 (and tp_is_empty!41385 tp!1709780))))

(declare-fun b!6119297 () Bool)

(assert (=> b!6119297 (= e!3730625 (= lt!2330788 (unfocusZipper!1808 lt!2330796)))))

(declare-fun b!6119298 () Bool)

(declare-fun res!2537229 () Bool)

(declare-fun e!3730624 () Bool)

(assert (=> b!6119298 (=> res!2537229 e!3730624)))

(declare-fun isEmpty!36307 (List!64497) Bool)

(assert (=> b!6119298 (= res!2537229 (isEmpty!36307 (t!377958 (exprs!5950 (h!70822 zl!343)))))))

(assert (=> b!6119299 (= e!3730626 e!3730624)))

(declare-fun res!2537227 () Bool)

(assert (=> b!6119299 (=> res!2537227 e!3730624)))

(declare-fun lt!2330791 () Bool)

(assert (=> b!6119299 (= res!2537227 (or (not (= lt!2330790 lt!2330791)) (is-Nil!64375 s!2326)))))

(declare-fun Exists!3136 (Int) Bool)

(assert (=> b!6119299 (= (Exists!3136 lambda!333338) (Exists!3136 lambda!333339))))

(declare-fun lt!2330799 () Unit!157419)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1673 (Regex!16066 Regex!16066 List!64499) Unit!157419)

(assert (=> b!6119299 (= lt!2330799 (lemmaExistCutMatchRandMatchRSpecEquivalent!1673 (regOne!32644 r!7292) (regTwo!32644 r!7292) s!2326))))

(assert (=> b!6119299 (= lt!2330791 (Exists!3136 lambda!333338))))

(declare-datatypes ((tuple2!66090 0))(
  ( (tuple2!66091 (_1!36348 List!64499) (_2!36348 List!64499)) )
))
(declare-datatypes ((Option!15957 0))(
  ( (None!15956) (Some!15956 (v!52093 tuple2!66090)) )
))
(declare-fun isDefined!12660 (Option!15957) Bool)

(declare-fun findConcatSeparation!2371 (Regex!16066 Regex!16066 List!64499 List!64499 List!64499) Option!15957)

(assert (=> b!6119299 (= lt!2330791 (isDefined!12660 (findConcatSeparation!2371 (regOne!32644 r!7292) (regTwo!32644 r!7292) Nil!64375 s!2326 s!2326)))))

(declare-fun lt!2330792 () Unit!157419)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2135 (Regex!16066 Regex!16066 List!64499) Unit!157419)

(assert (=> b!6119299 (= lt!2330792 (lemmaFindConcatSeparationEquivalentToExists!2135 (regOne!32644 r!7292) (regTwo!32644 r!7292) s!2326))))

(declare-fun b!6119300 () Bool)

(declare-fun res!2537219 () Bool)

(assert (=> b!6119300 (=> res!2537219 e!3730626)))

(assert (=> b!6119300 (= res!2537219 (not (is-Cons!64373 (exprs!5950 (h!70822 zl!343)))))))

(declare-fun b!6119301 () Bool)

(declare-fun res!2537221 () Bool)

(assert (=> b!6119301 (=> res!2537221 e!3730625)))

(assert (=> b!6119301 (= res!2537221 (not (= (toList!9850 lt!2330794) lt!2330796)))))

(assert (=> b!6119302 (= e!3730624 e!3730623)))

(declare-fun res!2537230 () Bool)

(assert (=> b!6119302 (=> res!2537230 e!3730623)))

(assert (=> b!6119302 (= res!2537230 (or (not (is-ElementMatch!16066 (regOne!32644 r!7292))) (not (= (c!1099622 (regOne!32644 r!7292)) (h!70823 s!2326)))))))

(declare-fun lt!2330787 () Unit!157419)

(declare-fun e!3730619 () Unit!157419)

(assert (=> b!6119302 (= lt!2330787 e!3730619)))

(declare-fun c!1099621 () Bool)

(declare-fun nullable!6059 (Regex!16066) Bool)

(assert (=> b!6119302 (= c!1099621 (nullable!6059 (h!70821 (exprs!5950 (h!70822 zl!343)))))))

(declare-fun lambda!333340 () Int)

(declare-fun flatMap!1571 ((Set Context!10900) Int) (Set Context!10900))

(declare-fun derivationStepZipperUp!1240 (Context!10900 C!32402) (Set Context!10900))

(assert (=> b!6119302 (= (flatMap!1571 z!1189 lambda!333340) (derivationStepZipperUp!1240 (h!70822 zl!343) (h!70823 s!2326)))))

(declare-fun lt!2330786 () Unit!157419)

(declare-fun lemmaFlatMapOnSingletonSet!1097 ((Set Context!10900) Context!10900 Int) Unit!157419)

(assert (=> b!6119302 (= lt!2330786 (lemmaFlatMapOnSingletonSet!1097 z!1189 (h!70822 zl!343) lambda!333340))))

(assert (=> b!6119302 (= lt!2330797 (derivationStepZipperUp!1240 lt!2330795 (h!70823 s!2326)))))

(declare-fun derivationStepZipperDown!1314 (Regex!16066 Context!10900 C!32402) (Set Context!10900))

(assert (=> b!6119302 (= lt!2330798 (derivationStepZipperDown!1314 (h!70821 (exprs!5950 (h!70822 zl!343))) lt!2330795 (h!70823 s!2326)))))

(assert (=> b!6119302 (= lt!2330795 (Context!10901 (t!377958 (exprs!5950 (h!70822 zl!343)))))))

(declare-fun lt!2330789 () (Set Context!10900))

(assert (=> b!6119302 (= lt!2330789 (derivationStepZipperUp!1240 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343))))) (h!70823 s!2326)))))

(declare-fun b!6119303 () Bool)

(declare-fun res!2537223 () Bool)

(assert (=> b!6119303 (=> res!2537223 e!3730626)))

(assert (=> b!6119303 (= res!2537223 (or (is-EmptyExpr!16066 r!7292) (is-EmptyLang!16066 r!7292) (is-ElementMatch!16066 r!7292) (is-Union!16066 r!7292) (not (is-Concat!24911 r!7292))))))

(declare-fun b!6119304 () Bool)

(declare-fun tp!1709775 () Bool)

(assert (=> b!6119304 (= e!3730620 tp!1709775)))

(declare-fun setIsEmpty!41349 () Bool)

(assert (=> setIsEmpty!41349 setRes!41349))

(declare-fun b!6119305 () Bool)

(declare-fun Unit!157421 () Unit!157419)

(assert (=> b!6119305 (= e!3730619 Unit!157421)))

(declare-fun lt!2330793 () Unit!157419)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!897 ((Set Context!10900) (Set Context!10900) List!64499) Unit!157419)

(assert (=> b!6119305 (= lt!2330793 (lemmaZipperConcatMatchesSameAsBothZippers!897 lt!2330798 lt!2330797 (t!377960 s!2326)))))

(declare-fun res!2537224 () Bool)

(assert (=> b!6119305 (= res!2537224 (matchZipper!2078 lt!2330798 (t!377960 s!2326)))))

(assert (=> b!6119305 (=> res!2537224 e!3730621)))

(assert (=> b!6119305 (= (matchZipper!2078 (set.union lt!2330798 lt!2330797) (t!377960 s!2326)) e!3730621)))

(declare-fun b!6119289 () Bool)

(declare-fun Unit!157422 () Unit!157419)

(assert (=> b!6119289 (= e!3730619 Unit!157422)))

(declare-fun res!2537225 () Bool)

(assert (=> start!611416 (=> (not res!2537225) (not e!3730628))))

(assert (=> start!611416 (= res!2537225 (validRegex!7802 r!7292))))

(assert (=> start!611416 e!3730628))

(assert (=> start!611416 e!3730616))

(declare-fun condSetEmpty!41349 () Bool)

(assert (=> start!611416 (= condSetEmpty!41349 (= z!1189 (as set.empty (Set Context!10900))))))

(assert (=> start!611416 setRes!41349))

(assert (=> start!611416 e!3730627))

(assert (=> start!611416 e!3730618))

(declare-fun b!6119306 () Bool)

(declare-fun res!2537231 () Bool)

(assert (=> b!6119306 (=> res!2537231 e!3730626)))

(assert (=> b!6119306 (= res!2537231 (not (= r!7292 (generalisedConcat!1663 (exprs!5950 (h!70822 zl!343))))))))

(declare-fun b!6119307 () Bool)

(assert (=> b!6119307 (= e!3730616 tp_is_empty!41385)))

(assert (= (and start!611416 res!2537225) b!6119294))

(assert (= (and b!6119294 res!2537233) b!6119285))

(assert (= (and b!6119285 res!2537218) b!6119288))

(assert (= (and b!6119288 (not res!2537226)) b!6119291))

(assert (= (and b!6119291 (not res!2537232)) b!6119306))

(assert (= (and b!6119306 (not res!2537231)) b!6119300))

(assert (= (and b!6119300 (not res!2537219)) b!6119282))

(assert (= (and b!6119282 (not res!2537222)) b!6119303))

(assert (= (and b!6119303 (not res!2537223)) b!6119299))

(assert (= (and b!6119299 (not res!2537227)) b!6119298))

(assert (= (and b!6119298 (not res!2537229)) b!6119302))

(assert (= (and b!6119302 c!1099621) b!6119305))

(assert (= (and b!6119302 (not c!1099621)) b!6119289))

(assert (= (and b!6119305 (not res!2537224)) b!6119292))

(assert (= (and b!6119302 (not res!2537230)) b!6119283))

(assert (= (and b!6119283 (not res!2537220)) b!6119293))

(assert (= (and b!6119293 (not res!2537228)) b!6119301))

(assert (= (and b!6119301 (not res!2537221)) b!6119297))

(assert (= (and start!611416 (is-ElementMatch!16066 r!7292)) b!6119307))

(assert (= (and start!611416 (is-Concat!24911 r!7292)) b!6119284))

(assert (= (and start!611416 (is-Star!16066 r!7292)) b!6119286))

(assert (= (and start!611416 (is-Union!16066 r!7292)) b!6119287))

(assert (= (and start!611416 condSetEmpty!41349) setIsEmpty!41349))

(assert (= (and start!611416 (not condSetEmpty!41349)) setNonEmpty!41349))

(assert (= setNonEmpty!41349 b!6119304))

(assert (= b!6119295 b!6119290))

(assert (= (and start!611416 (is-Cons!64374 zl!343)) b!6119295))

(assert (= (and start!611416 (is-Cons!64375 s!2326)) b!6119296))

(declare-fun m!6965892 () Bool)

(assert (=> b!6119285 m!6965892))

(declare-fun m!6965894 () Bool)

(assert (=> b!6119292 m!6965894))

(declare-fun m!6965896 () Bool)

(assert (=> b!6119291 m!6965896))

(declare-fun m!6965898 () Bool)

(assert (=> start!611416 m!6965898))

(declare-fun m!6965900 () Bool)

(assert (=> b!6119306 m!6965900))

(declare-fun m!6965902 () Bool)

(assert (=> b!6119294 m!6965902))

(declare-fun m!6965904 () Bool)

(assert (=> b!6119282 m!6965904))

(assert (=> b!6119282 m!6965904))

(declare-fun m!6965906 () Bool)

(assert (=> b!6119282 m!6965906))

(declare-fun m!6965908 () Bool)

(assert (=> setNonEmpty!41349 m!6965908))

(declare-fun m!6965910 () Bool)

(assert (=> b!6119293 m!6965910))

(declare-fun m!6965912 () Bool)

(assert (=> b!6119293 m!6965912))

(declare-fun m!6965914 () Bool)

(assert (=> b!6119295 m!6965914))

(declare-fun m!6965916 () Bool)

(assert (=> b!6119299 m!6965916))

(declare-fun m!6965918 () Bool)

(assert (=> b!6119299 m!6965918))

(declare-fun m!6965920 () Bool)

(assert (=> b!6119299 m!6965920))

(declare-fun m!6965922 () Bool)

(assert (=> b!6119299 m!6965922))

(assert (=> b!6119299 m!6965916))

(declare-fun m!6965924 () Bool)

(assert (=> b!6119299 m!6965924))

(assert (=> b!6119299 m!6965920))

(declare-fun m!6965926 () Bool)

(assert (=> b!6119299 m!6965926))

(declare-fun m!6965928 () Bool)

(assert (=> b!6119302 m!6965928))

(declare-fun m!6965930 () Bool)

(assert (=> b!6119302 m!6965930))

(declare-fun m!6965932 () Bool)

(assert (=> b!6119302 m!6965932))

(declare-fun m!6965934 () Bool)

(assert (=> b!6119302 m!6965934))

(declare-fun m!6965936 () Bool)

(assert (=> b!6119302 m!6965936))

(declare-fun m!6965938 () Bool)

(assert (=> b!6119302 m!6965938))

(declare-fun m!6965940 () Bool)

(assert (=> b!6119302 m!6965940))

(declare-fun m!6965942 () Bool)

(assert (=> b!6119305 m!6965942))

(declare-fun m!6965944 () Bool)

(assert (=> b!6119305 m!6965944))

(declare-fun m!6965946 () Bool)

(assert (=> b!6119305 m!6965946))

(declare-fun m!6965948 () Bool)

(assert (=> b!6119298 m!6965948))

(declare-fun m!6965950 () Bool)

(assert (=> b!6119301 m!6965950))

(declare-fun m!6965952 () Bool)

(assert (=> b!6119297 m!6965952))

(declare-fun m!6965954 () Bool)

(assert (=> b!6119288 m!6965954))

(declare-fun m!6965956 () Bool)

(assert (=> b!6119288 m!6965956))

(declare-fun m!6965958 () Bool)

(assert (=> b!6119288 m!6965958))

(declare-fun m!6965960 () Bool)

(assert (=> b!6119283 m!6965960))

(push 1)

(assert (not b!6119282))

(assert (not b!6119293))

(assert (not b!6119285))

(assert tp_is_empty!41385)

(assert (not b!6119292))

(assert (not b!6119296))

(assert (not b!6119302))

(assert (not b!6119287))

(assert (not b!6119286))

(assert (not b!6119290))

(assert (not b!6119304))

(assert (not b!6119305))

(assert (not b!6119284))

(assert (not start!611416))

(assert (not setNonEmpty!41349))

(assert (not b!6119294))

(assert (not b!6119301))

(assert (not b!6119295))

(assert (not b!6119297))

(assert (not b!6119306))

(assert (not b!6119298))

(assert (not b!6119299))

(assert (not b!6119288))

(assert (not b!6119291))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1917417 () Bool)

(declare-fun e!3730676 () Bool)

(assert (=> d!1917417 e!3730676))

(declare-fun res!2537296 () Bool)

(assert (=> d!1917417 (=> (not res!2537296) (not e!3730676))))

(declare-fun lt!2330847 () List!64498)

(declare-fun noDuplicate!1913 (List!64498) Bool)

(assert (=> d!1917417 (= res!2537296 (noDuplicate!1913 lt!2330847))))

(declare-fun choose!45469 ((Set Context!10900)) List!64498)

(assert (=> d!1917417 (= lt!2330847 (choose!45469 lt!2330794))))

(assert (=> d!1917417 (= (toList!9850 lt!2330794) lt!2330847)))

(declare-fun b!6119412 () Bool)

(declare-fun content!11956 (List!64498) (Set Context!10900))

(assert (=> b!6119412 (= e!3730676 (= (content!11956 lt!2330847) lt!2330794))))

(assert (= (and d!1917417 res!2537296) b!6119412))

(declare-fun m!6966032 () Bool)

(assert (=> d!1917417 m!6966032))

(declare-fun m!6966034 () Bool)

(assert (=> d!1917417 m!6966034))

(declare-fun m!6966036 () Bool)

(assert (=> b!6119412 m!6966036))

(assert (=> b!6119301 d!1917417))

(declare-fun d!1917419 () Bool)

(assert (=> d!1917419 (= (isEmpty!36306 (t!377959 zl!343)) (is-Nil!64374 (t!377959 zl!343)))))

(assert (=> b!6119291 d!1917419))

(declare-fun b!6119433 () Bool)

(declare-fun e!3730692 () Regex!16066)

(assert (=> b!6119433 (= e!3730692 (h!70821 (unfocusZipperList!1487 zl!343)))))

(declare-fun b!6119434 () Bool)

(declare-fun e!3730694 () Bool)

(assert (=> b!6119434 (= e!3730694 (isEmpty!36307 (t!377958 (unfocusZipperList!1487 zl!343))))))

(declare-fun b!6119435 () Bool)

(declare-fun e!3730691 () Bool)

(declare-fun lt!2330850 () Regex!16066)

(declare-fun isUnion!923 (Regex!16066) Bool)

(assert (=> b!6119435 (= e!3730691 (isUnion!923 lt!2330850))))

(declare-fun b!6119436 () Bool)

(declare-fun e!3730693 () Regex!16066)

(assert (=> b!6119436 (= e!3730693 EmptyLang!16066)))

(declare-fun b!6119437 () Bool)

(declare-fun head!12653 (List!64497) Regex!16066)

(assert (=> b!6119437 (= e!3730691 (= lt!2330850 (head!12653 (unfocusZipperList!1487 zl!343))))))

(declare-fun d!1917421 () Bool)

(declare-fun e!3730690 () Bool)

(assert (=> d!1917421 e!3730690))

(declare-fun res!2537302 () Bool)

(assert (=> d!1917421 (=> (not res!2537302) (not e!3730690))))

(assert (=> d!1917421 (= res!2537302 (validRegex!7802 lt!2330850))))

(assert (=> d!1917421 (= lt!2330850 e!3730692)))

(declare-fun c!1099641 () Bool)

(assert (=> d!1917421 (= c!1099641 e!3730694)))

(declare-fun res!2537301 () Bool)

(assert (=> d!1917421 (=> (not res!2537301) (not e!3730694))))

(assert (=> d!1917421 (= res!2537301 (is-Cons!64373 (unfocusZipperList!1487 zl!343)))))

(declare-fun lambda!333354 () Int)

(declare-fun forall!15187 (List!64497 Int) Bool)

(assert (=> d!1917421 (forall!15187 (unfocusZipperList!1487 zl!343) lambda!333354)))

(assert (=> d!1917421 (= (generalisedUnion!1910 (unfocusZipperList!1487 zl!343)) lt!2330850)))

(declare-fun b!6119438 () Bool)

(declare-fun e!3730689 () Bool)

(assert (=> b!6119438 (= e!3730690 e!3730689)))

(declare-fun c!1099638 () Bool)

(assert (=> b!6119438 (= c!1099638 (isEmpty!36307 (unfocusZipperList!1487 zl!343)))))

(declare-fun b!6119439 () Bool)

(assert (=> b!6119439 (= e!3730692 e!3730693)))

(declare-fun c!1099640 () Bool)

(assert (=> b!6119439 (= c!1099640 (is-Cons!64373 (unfocusZipperList!1487 zl!343)))))

(declare-fun b!6119440 () Bool)

(assert (=> b!6119440 (= e!3730689 e!3730691)))

(declare-fun c!1099639 () Bool)

(declare-fun tail!11738 (List!64497) List!64497)

(assert (=> b!6119440 (= c!1099639 (isEmpty!36307 (tail!11738 (unfocusZipperList!1487 zl!343))))))

(declare-fun b!6119441 () Bool)

(declare-fun isEmptyLang!1493 (Regex!16066) Bool)

(assert (=> b!6119441 (= e!3730689 (isEmptyLang!1493 lt!2330850))))

(declare-fun b!6119442 () Bool)

(assert (=> b!6119442 (= e!3730693 (Union!16066 (h!70821 (unfocusZipperList!1487 zl!343)) (generalisedUnion!1910 (t!377958 (unfocusZipperList!1487 zl!343)))))))

(assert (= (and d!1917421 res!2537301) b!6119434))

(assert (= (and d!1917421 c!1099641) b!6119433))

(assert (= (and d!1917421 (not c!1099641)) b!6119439))

(assert (= (and b!6119439 c!1099640) b!6119442))

(assert (= (and b!6119439 (not c!1099640)) b!6119436))

(assert (= (and d!1917421 res!2537302) b!6119438))

(assert (= (and b!6119438 c!1099638) b!6119441))

(assert (= (and b!6119438 (not c!1099638)) b!6119440))

(assert (= (and b!6119440 c!1099639) b!6119437))

(assert (= (and b!6119440 (not c!1099639)) b!6119435))

(declare-fun m!6966038 () Bool)

(assert (=> d!1917421 m!6966038))

(assert (=> d!1917421 m!6965904))

(declare-fun m!6966040 () Bool)

(assert (=> d!1917421 m!6966040))

(declare-fun m!6966042 () Bool)

(assert (=> b!6119434 m!6966042))

(declare-fun m!6966044 () Bool)

(assert (=> b!6119442 m!6966044))

(declare-fun m!6966046 () Bool)

(assert (=> b!6119435 m!6966046))

(assert (=> b!6119437 m!6965904))

(declare-fun m!6966048 () Bool)

(assert (=> b!6119437 m!6966048))

(declare-fun m!6966050 () Bool)

(assert (=> b!6119441 m!6966050))

(assert (=> b!6119438 m!6965904))

(declare-fun m!6966052 () Bool)

(assert (=> b!6119438 m!6966052))

(assert (=> b!6119440 m!6965904))

(declare-fun m!6966054 () Bool)

(assert (=> b!6119440 m!6966054))

(assert (=> b!6119440 m!6966054))

(declare-fun m!6966056 () Bool)

(assert (=> b!6119440 m!6966056))

(assert (=> b!6119282 d!1917421))

(declare-fun bs!1518441 () Bool)

(declare-fun d!1917423 () Bool)

(assert (= bs!1518441 (and d!1917423 d!1917421)))

(declare-fun lambda!333357 () Int)

(assert (=> bs!1518441 (= lambda!333357 lambda!333354)))

(declare-fun lt!2330853 () List!64497)

(assert (=> d!1917423 (forall!15187 lt!2330853 lambda!333357)))

(declare-fun e!3730697 () List!64497)

(assert (=> d!1917423 (= lt!2330853 e!3730697)))

(declare-fun c!1099644 () Bool)

(assert (=> d!1917423 (= c!1099644 (is-Cons!64374 zl!343))))

(assert (=> d!1917423 (= (unfocusZipperList!1487 zl!343) lt!2330853)))

(declare-fun b!6119447 () Bool)

(assert (=> b!6119447 (= e!3730697 (Cons!64373 (generalisedConcat!1663 (exprs!5950 (h!70822 zl!343))) (unfocusZipperList!1487 (t!377959 zl!343))))))

(declare-fun b!6119448 () Bool)

(assert (=> b!6119448 (= e!3730697 Nil!64373)))

(assert (= (and d!1917423 c!1099644) b!6119447))

(assert (= (and d!1917423 (not c!1099644)) b!6119448))

(declare-fun m!6966058 () Bool)

(assert (=> d!1917423 m!6966058))

(assert (=> b!6119447 m!6965900))

(declare-fun m!6966060 () Bool)

(assert (=> b!6119447 m!6966060))

(assert (=> b!6119282 d!1917423))

(declare-fun d!1917425 () Bool)

(declare-fun choose!45470 ((Set Context!10900) Int) (Set Context!10900))

(assert (=> d!1917425 (= (flatMap!1571 z!1189 lambda!333340) (choose!45470 z!1189 lambda!333340))))

(declare-fun bs!1518442 () Bool)

(assert (= bs!1518442 d!1917425))

(declare-fun m!6966062 () Bool)

(assert (=> bs!1518442 m!6966062))

(assert (=> b!6119302 d!1917425))

(declare-fun b!6119463 () Bool)

(declare-fun e!3730706 () (Set Context!10900))

(assert (=> b!6119463 (= e!3730706 (as set.empty (Set Context!10900)))))

(declare-fun bm!506794 () Bool)

(declare-fun call!506799 () (Set Context!10900))

(assert (=> bm!506794 (= call!506799 (derivationStepZipperDown!1314 (h!70821 (exprs!5950 lt!2330795)) (Context!10901 (t!377958 (exprs!5950 lt!2330795))) (h!70823 s!2326)))))

(declare-fun b!6119464 () Bool)

(assert (=> b!6119464 (= e!3730706 call!506799)))

(declare-fun d!1917427 () Bool)

(declare-fun c!1099652 () Bool)

(declare-fun e!3730708 () Bool)

(assert (=> d!1917427 (= c!1099652 e!3730708)))

(declare-fun res!2537305 () Bool)

(assert (=> d!1917427 (=> (not res!2537305) (not e!3730708))))

(assert (=> d!1917427 (= res!2537305 (is-Cons!64373 (exprs!5950 lt!2330795)))))

(declare-fun e!3730707 () (Set Context!10900))

(assert (=> d!1917427 (= (derivationStepZipperUp!1240 lt!2330795 (h!70823 s!2326)) e!3730707)))

(declare-fun b!6119465 () Bool)

(assert (=> b!6119465 (= e!3730708 (nullable!6059 (h!70821 (exprs!5950 lt!2330795))))))

(declare-fun b!6119466 () Bool)

(assert (=> b!6119466 (= e!3730707 (set.union call!506799 (derivationStepZipperUp!1240 (Context!10901 (t!377958 (exprs!5950 lt!2330795))) (h!70823 s!2326))))))

(declare-fun b!6119467 () Bool)

(assert (=> b!6119467 (= e!3730707 e!3730706)))

(declare-fun c!1099651 () Bool)

(assert (=> b!6119467 (= c!1099651 (is-Cons!64373 (exprs!5950 lt!2330795)))))

(assert (= (and d!1917427 res!2537305) b!6119465))

(assert (= (and d!1917427 c!1099652) b!6119466))

(assert (= (and d!1917427 (not c!1099652)) b!6119467))

(assert (= (and b!6119467 c!1099651) b!6119464))

(assert (= (and b!6119467 (not c!1099651)) b!6119463))

(assert (= (or b!6119466 b!6119464) bm!506794))

(declare-fun m!6966064 () Bool)

(assert (=> bm!506794 m!6966064))

(declare-fun m!6966066 () Bool)

(assert (=> b!6119465 m!6966066))

(declare-fun m!6966068 () Bool)

(assert (=> b!6119466 m!6966068))

(assert (=> b!6119302 d!1917427))

(declare-fun d!1917431 () Bool)

(declare-fun nullableFct!2023 (Regex!16066) Bool)

(assert (=> d!1917431 (= (nullable!6059 (h!70821 (exprs!5950 (h!70822 zl!343)))) (nullableFct!2023 (h!70821 (exprs!5950 (h!70822 zl!343)))))))

(declare-fun bs!1518443 () Bool)

(assert (= bs!1518443 d!1917431))

(declare-fun m!6966070 () Bool)

(assert (=> bs!1518443 m!6966070))

(assert (=> b!6119302 d!1917431))

(declare-fun b!6119474 () Bool)

(declare-fun e!3730713 () (Set Context!10900))

(assert (=> b!6119474 (= e!3730713 (as set.empty (Set Context!10900)))))

(declare-fun bm!506797 () Bool)

(declare-fun call!506802 () (Set Context!10900))

(assert (=> bm!506797 (= call!506802 (derivationStepZipperDown!1314 (h!70821 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343))))))) (Context!10901 (t!377958 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343)))))))) (h!70823 s!2326)))))

(declare-fun b!6119475 () Bool)

(assert (=> b!6119475 (= e!3730713 call!506802)))

(declare-fun d!1917433 () Bool)

(declare-fun c!1099656 () Bool)

(declare-fun e!3730715 () Bool)

(assert (=> d!1917433 (= c!1099656 e!3730715)))

(declare-fun res!2537308 () Bool)

(assert (=> d!1917433 (=> (not res!2537308) (not e!3730715))))

(assert (=> d!1917433 (= res!2537308 (is-Cons!64373 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343))))))))))

(declare-fun e!3730714 () (Set Context!10900))

(assert (=> d!1917433 (= (derivationStepZipperUp!1240 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343))))) (h!70823 s!2326)) e!3730714)))

(declare-fun b!6119476 () Bool)

(assert (=> b!6119476 (= e!3730715 (nullable!6059 (h!70821 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343)))))))))))

(declare-fun b!6119477 () Bool)

(assert (=> b!6119477 (= e!3730714 (set.union call!506802 (derivationStepZipperUp!1240 (Context!10901 (t!377958 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343)))))))) (h!70823 s!2326))))))

(declare-fun b!6119478 () Bool)

(assert (=> b!6119478 (= e!3730714 e!3730713)))

(declare-fun c!1099655 () Bool)

(assert (=> b!6119478 (= c!1099655 (is-Cons!64373 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343))))))))))

(assert (= (and d!1917433 res!2537308) b!6119476))

(assert (= (and d!1917433 c!1099656) b!6119477))

(assert (= (and d!1917433 (not c!1099656)) b!6119478))

(assert (= (and b!6119478 c!1099655) b!6119475))

(assert (= (and b!6119478 (not c!1099655)) b!6119474))

(assert (= (or b!6119477 b!6119475) bm!506797))

(declare-fun m!6966072 () Bool)

(assert (=> bm!506797 m!6966072))

(declare-fun m!6966074 () Bool)

(assert (=> b!6119476 m!6966074))

(declare-fun m!6966076 () Bool)

(assert (=> b!6119477 m!6966076))

(assert (=> b!6119302 d!1917433))

(declare-fun bm!506823 () Bool)

(declare-fun call!506830 () (Set Context!10900))

(declare-fun call!506832 () (Set Context!10900))

(assert (=> bm!506823 (= call!506830 call!506832)))

(declare-fun b!6119528 () Bool)

(declare-fun e!3730744 () (Set Context!10900))

(declare-fun e!3730743 () (Set Context!10900))

(assert (=> b!6119528 (= e!3730744 e!3730743)))

(declare-fun c!1099683 () Bool)

(assert (=> b!6119528 (= c!1099683 (is-Concat!24911 (h!70821 (exprs!5950 (h!70822 zl!343)))))))

(declare-fun b!6119529 () Bool)

(assert (=> b!6119529 (= e!3730743 call!506830)))

(declare-fun d!1917435 () Bool)

(declare-fun c!1099679 () Bool)

(assert (=> d!1917435 (= c!1099679 (and (is-ElementMatch!16066 (h!70821 (exprs!5950 (h!70822 zl!343)))) (= (c!1099622 (h!70821 (exprs!5950 (h!70822 zl!343)))) (h!70823 s!2326))))))

(declare-fun e!3730746 () (Set Context!10900))

(assert (=> d!1917435 (= (derivationStepZipperDown!1314 (h!70821 (exprs!5950 (h!70822 zl!343))) lt!2330795 (h!70823 s!2326)) e!3730746)))

(declare-fun b!6119530 () Bool)

(declare-fun e!3730748 () (Set Context!10900))

(assert (=> b!6119530 (= e!3730746 e!3730748)))

(declare-fun c!1099682 () Bool)

(assert (=> b!6119530 (= c!1099682 (is-Union!16066 (h!70821 (exprs!5950 (h!70822 zl!343)))))))

(declare-fun b!6119531 () Bool)

(declare-fun c!1099681 () Bool)

(assert (=> b!6119531 (= c!1099681 (is-Star!16066 (h!70821 (exprs!5950 (h!70822 zl!343)))))))

(declare-fun e!3730747 () (Set Context!10900))

(assert (=> b!6119531 (= e!3730743 e!3730747)))

(declare-fun b!6119532 () Bool)

(declare-fun call!506833 () (Set Context!10900))

(declare-fun call!506828 () (Set Context!10900))

(assert (=> b!6119532 (= e!3730748 (set.union call!506833 call!506828))))

(declare-fun b!6119533 () Bool)

(assert (=> b!6119533 (= e!3730747 call!506830)))

(declare-fun c!1099680 () Bool)

(declare-fun call!506831 () List!64497)

(declare-fun bm!506824 () Bool)

(declare-fun $colon$colon!1943 (List!64497 Regex!16066) List!64497)

(assert (=> bm!506824 (= call!506831 ($colon$colon!1943 (exprs!5950 lt!2330795) (ite (or c!1099680 c!1099683) (regTwo!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (h!70821 (exprs!5950 (h!70822 zl!343))))))))

(declare-fun b!6119534 () Bool)

(assert (=> b!6119534 (= e!3730746 (set.insert lt!2330795 (as set.empty (Set Context!10900))))))

(declare-fun bm!506825 () Bool)

(assert (=> bm!506825 (= call!506833 (derivationStepZipperDown!1314 (ite c!1099682 (regOne!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343))))) (ite c!1099682 lt!2330795 (Context!10901 call!506831)) (h!70823 s!2326)))))

(declare-fun bm!506826 () Bool)

(declare-fun call!506829 () List!64497)

(assert (=> bm!506826 (= call!506829 call!506831)))

(declare-fun b!6119535 () Bool)

(assert (=> b!6119535 (= e!3730744 (set.union call!506833 call!506832))))

(declare-fun b!6119536 () Bool)

(assert (=> b!6119536 (= e!3730747 (as set.empty (Set Context!10900)))))

(declare-fun bm!506827 () Bool)

(assert (=> bm!506827 (= call!506832 call!506828)))

(declare-fun b!6119537 () Bool)

(declare-fun e!3730745 () Bool)

(assert (=> b!6119537 (= c!1099680 e!3730745)))

(declare-fun res!2537314 () Bool)

(assert (=> b!6119537 (=> (not res!2537314) (not e!3730745))))

(assert (=> b!6119537 (= res!2537314 (is-Concat!24911 (h!70821 (exprs!5950 (h!70822 zl!343)))))))

(assert (=> b!6119537 (= e!3730748 e!3730744)))

(declare-fun bm!506828 () Bool)

(assert (=> bm!506828 (= call!506828 (derivationStepZipperDown!1314 (ite c!1099682 (regTwo!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099680 (regTwo!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099683 (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (reg!16395 (h!70821 (exprs!5950 (h!70822 zl!343))))))) (ite (or c!1099682 c!1099680) lt!2330795 (Context!10901 call!506829)) (h!70823 s!2326)))))

(declare-fun b!6119538 () Bool)

(assert (=> b!6119538 (= e!3730745 (nullable!6059 (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343))))))))

(assert (= (and d!1917435 c!1099679) b!6119534))

(assert (= (and d!1917435 (not c!1099679)) b!6119530))

(assert (= (and b!6119530 c!1099682) b!6119532))

(assert (= (and b!6119530 (not c!1099682)) b!6119537))

(assert (= (and b!6119537 res!2537314) b!6119538))

(assert (= (and b!6119537 c!1099680) b!6119535))

(assert (= (and b!6119537 (not c!1099680)) b!6119528))

(assert (= (and b!6119528 c!1099683) b!6119529))

(assert (= (and b!6119528 (not c!1099683)) b!6119531))

(assert (= (and b!6119531 c!1099681) b!6119533))

(assert (= (and b!6119531 (not c!1099681)) b!6119536))

(assert (= (or b!6119529 b!6119533) bm!506826))

(assert (= (or b!6119529 b!6119533) bm!506823))

(assert (= (or b!6119535 bm!506826) bm!506824))

(assert (= (or b!6119535 bm!506823) bm!506827))

(assert (= (or b!6119532 bm!506827) bm!506828))

(assert (= (or b!6119532 b!6119535) bm!506825))

(declare-fun m!6966084 () Bool)

(assert (=> bm!506825 m!6966084))

(declare-fun m!6966086 () Bool)

(assert (=> bm!506824 m!6966086))

(declare-fun m!6966088 () Bool)

(assert (=> bm!506828 m!6966088))

(assert (=> b!6119534 m!6965960))

(declare-fun m!6966090 () Bool)

(assert (=> b!6119538 m!6966090))

(assert (=> b!6119302 d!1917435))

(declare-fun b!6119539 () Bool)

(declare-fun e!3730749 () (Set Context!10900))

(assert (=> b!6119539 (= e!3730749 (as set.empty (Set Context!10900)))))

(declare-fun bm!506829 () Bool)

(declare-fun call!506834 () (Set Context!10900))

(assert (=> bm!506829 (= call!506834 (derivationStepZipperDown!1314 (h!70821 (exprs!5950 (h!70822 zl!343))) (Context!10901 (t!377958 (exprs!5950 (h!70822 zl!343)))) (h!70823 s!2326)))))

(declare-fun b!6119540 () Bool)

(assert (=> b!6119540 (= e!3730749 call!506834)))

(declare-fun d!1917439 () Bool)

(declare-fun c!1099685 () Bool)

(declare-fun e!3730751 () Bool)

(assert (=> d!1917439 (= c!1099685 e!3730751)))

(declare-fun res!2537315 () Bool)

(assert (=> d!1917439 (=> (not res!2537315) (not e!3730751))))

(assert (=> d!1917439 (= res!2537315 (is-Cons!64373 (exprs!5950 (h!70822 zl!343))))))

(declare-fun e!3730750 () (Set Context!10900))

(assert (=> d!1917439 (= (derivationStepZipperUp!1240 (h!70822 zl!343) (h!70823 s!2326)) e!3730750)))

(declare-fun b!6119541 () Bool)

(assert (=> b!6119541 (= e!3730751 (nullable!6059 (h!70821 (exprs!5950 (h!70822 zl!343)))))))

(declare-fun b!6119542 () Bool)

(assert (=> b!6119542 (= e!3730750 (set.union call!506834 (derivationStepZipperUp!1240 (Context!10901 (t!377958 (exprs!5950 (h!70822 zl!343)))) (h!70823 s!2326))))))

(declare-fun b!6119543 () Bool)

(assert (=> b!6119543 (= e!3730750 e!3730749)))

(declare-fun c!1099684 () Bool)

(assert (=> b!6119543 (= c!1099684 (is-Cons!64373 (exprs!5950 (h!70822 zl!343))))))

(assert (= (and d!1917439 res!2537315) b!6119541))

(assert (= (and d!1917439 c!1099685) b!6119542))

(assert (= (and d!1917439 (not c!1099685)) b!6119543))

(assert (= (and b!6119543 c!1099684) b!6119540))

(assert (= (and b!6119543 (not c!1099684)) b!6119539))

(assert (= (or b!6119542 b!6119540) bm!506829))

(declare-fun m!6966092 () Bool)

(assert (=> bm!506829 m!6966092))

(assert (=> b!6119541 m!6965938))

(declare-fun m!6966094 () Bool)

(assert (=> b!6119542 m!6966094))

(assert (=> b!6119302 d!1917439))

(declare-fun d!1917441 () Bool)

(declare-fun dynLambda!25353 (Int Context!10900) (Set Context!10900))

(assert (=> d!1917441 (= (flatMap!1571 z!1189 lambda!333340) (dynLambda!25353 lambda!333340 (h!70822 zl!343)))))

(declare-fun lt!2330856 () Unit!157419)

(declare-fun choose!45471 ((Set Context!10900) Context!10900 Int) Unit!157419)

(assert (=> d!1917441 (= lt!2330856 (choose!45471 z!1189 (h!70822 zl!343) lambda!333340))))

(assert (=> d!1917441 (= z!1189 (set.insert (h!70822 zl!343) (as set.empty (Set Context!10900))))))

(assert (=> d!1917441 (= (lemmaFlatMapOnSingletonSet!1097 z!1189 (h!70822 zl!343) lambda!333340) lt!2330856)))

(declare-fun b_lambda!233017 () Bool)

(assert (=> (not b_lambda!233017) (not d!1917441)))

(declare-fun bs!1518445 () Bool)

(assert (= bs!1518445 d!1917441))

(assert (=> bs!1518445 m!6965940))

(declare-fun m!6966106 () Bool)

(assert (=> bs!1518445 m!6966106))

(declare-fun m!6966108 () Bool)

(assert (=> bs!1518445 m!6966108))

(declare-fun m!6966110 () Bool)

(assert (=> bs!1518445 m!6966110))

(assert (=> b!6119302 d!1917441))

(declare-fun d!1917447 () Bool)

(declare-fun c!1099695 () Bool)

(declare-fun isEmpty!36310 (List!64499) Bool)

(assert (=> d!1917447 (= c!1099695 (isEmpty!36310 (t!377960 s!2326)))))

(declare-fun e!3730763 () Bool)

(assert (=> d!1917447 (= (matchZipper!2078 lt!2330797 (t!377960 s!2326)) e!3730763)))

(declare-fun b!6119564 () Bool)

(declare-fun nullableZipper!1847 ((Set Context!10900)) Bool)

(assert (=> b!6119564 (= e!3730763 (nullableZipper!1847 lt!2330797))))

(declare-fun b!6119565 () Bool)

(declare-fun derivationStepZipper!2039 ((Set Context!10900) C!32402) (Set Context!10900))

(declare-fun head!12654 (List!64499) C!32402)

(declare-fun tail!11739 (List!64499) List!64499)

(assert (=> b!6119565 (= e!3730763 (matchZipper!2078 (derivationStepZipper!2039 lt!2330797 (head!12654 (t!377960 s!2326))) (tail!11739 (t!377960 s!2326))))))

(assert (= (and d!1917447 c!1099695) b!6119564))

(assert (= (and d!1917447 (not c!1099695)) b!6119565))

(declare-fun m!6966124 () Bool)

(assert (=> d!1917447 m!6966124))

(declare-fun m!6966126 () Bool)

(assert (=> b!6119564 m!6966126))

(declare-fun m!6966128 () Bool)

(assert (=> b!6119565 m!6966128))

(assert (=> b!6119565 m!6966128))

(declare-fun m!6966130 () Bool)

(assert (=> b!6119565 m!6966130))

(declare-fun m!6966132 () Bool)

(assert (=> b!6119565 m!6966132))

(assert (=> b!6119565 m!6966130))

(assert (=> b!6119565 m!6966132))

(declare-fun m!6966134 () Bool)

(assert (=> b!6119565 m!6966134))

(assert (=> b!6119292 d!1917447))

(declare-fun d!1917455 () Bool)

(declare-fun res!2537331 () Bool)

(declare-fun e!3730783 () Bool)

(assert (=> d!1917455 (=> res!2537331 e!3730783)))

(assert (=> d!1917455 (= res!2537331 (is-ElementMatch!16066 lt!2330788))))

(assert (=> d!1917455 (= (validRegex!7802 lt!2330788) e!3730783)))

(declare-fun call!506850 () Bool)

(declare-fun c!1099703 () Bool)

(declare-fun bm!506844 () Bool)

(declare-fun c!1099702 () Bool)

(assert (=> bm!506844 (= call!506850 (validRegex!7802 (ite c!1099703 (reg!16395 lt!2330788) (ite c!1099702 (regTwo!32645 lt!2330788) (regTwo!32644 lt!2330788)))))))

(declare-fun b!6119589 () Bool)

(declare-fun res!2537330 () Bool)

(declare-fun e!3730785 () Bool)

(assert (=> b!6119589 (=> (not res!2537330) (not e!3730785))))

(declare-fun call!506849 () Bool)

(assert (=> b!6119589 (= res!2537330 call!506849)))

(declare-fun e!3730784 () Bool)

(assert (=> b!6119589 (= e!3730784 e!3730785)))

(declare-fun bm!506845 () Bool)

(declare-fun call!506851 () Bool)

(assert (=> bm!506845 (= call!506851 call!506850)))

(declare-fun bm!506846 () Bool)

(assert (=> bm!506846 (= call!506849 (validRegex!7802 (ite c!1099702 (regOne!32645 lt!2330788) (regOne!32644 lt!2330788))))))

(declare-fun b!6119590 () Bool)

(declare-fun e!3730786 () Bool)

(assert (=> b!6119590 (= e!3730783 e!3730786)))

(assert (=> b!6119590 (= c!1099703 (is-Star!16066 lt!2330788))))

(declare-fun b!6119591 () Bool)

(declare-fun e!3730782 () Bool)

(assert (=> b!6119591 (= e!3730786 e!3730782)))

(declare-fun res!2537332 () Bool)

(assert (=> b!6119591 (= res!2537332 (not (nullable!6059 (reg!16395 lt!2330788))))))

(assert (=> b!6119591 (=> (not res!2537332) (not e!3730782))))

(declare-fun b!6119592 () Bool)

(declare-fun e!3730787 () Bool)

(declare-fun e!3730781 () Bool)

(assert (=> b!6119592 (= e!3730787 e!3730781)))

(declare-fun res!2537333 () Bool)

(assert (=> b!6119592 (=> (not res!2537333) (not e!3730781))))

(assert (=> b!6119592 (= res!2537333 call!506849)))

(declare-fun b!6119593 () Bool)

(assert (=> b!6119593 (= e!3730786 e!3730784)))

(assert (=> b!6119593 (= c!1099702 (is-Union!16066 lt!2330788))))

(declare-fun b!6119594 () Bool)

(declare-fun res!2537329 () Bool)

(assert (=> b!6119594 (=> res!2537329 e!3730787)))

(assert (=> b!6119594 (= res!2537329 (not (is-Concat!24911 lt!2330788)))))

(assert (=> b!6119594 (= e!3730784 e!3730787)))

(declare-fun b!6119595 () Bool)

(assert (=> b!6119595 (= e!3730782 call!506850)))

(declare-fun b!6119596 () Bool)

(assert (=> b!6119596 (= e!3730785 call!506851)))

(declare-fun b!6119597 () Bool)

(assert (=> b!6119597 (= e!3730781 call!506851)))

(assert (= (and d!1917455 (not res!2537331)) b!6119590))

(assert (= (and b!6119590 c!1099703) b!6119591))

(assert (= (and b!6119590 (not c!1099703)) b!6119593))

(assert (= (and b!6119591 res!2537332) b!6119595))

(assert (= (and b!6119593 c!1099702) b!6119589))

(assert (= (and b!6119593 (not c!1099702)) b!6119594))

(assert (= (and b!6119589 res!2537330) b!6119596))

(assert (= (and b!6119594 (not res!2537329)) b!6119592))

(assert (= (and b!6119592 res!2537333) b!6119597))

(assert (= (or b!6119596 b!6119597) bm!506845))

(assert (= (or b!6119589 b!6119592) bm!506846))

(assert (= (or b!6119595 bm!506845) bm!506844))

(declare-fun m!6966144 () Bool)

(assert (=> bm!506844 m!6966144))

(declare-fun m!6966146 () Bool)

(assert (=> bm!506846 m!6966146))

(declare-fun m!6966148 () Bool)

(assert (=> b!6119591 m!6966148))

(assert (=> b!6119293 d!1917455))

(declare-fun bs!1518449 () Bool)

(declare-fun d!1917461 () Bool)

(assert (= bs!1518449 (and d!1917461 d!1917421)))

(declare-fun lambda!333367 () Int)

(assert (=> bs!1518449 (= lambda!333367 lambda!333354)))

(declare-fun bs!1518450 () Bool)

(assert (= bs!1518450 (and d!1917461 d!1917423)))

(assert (=> bs!1518450 (= lambda!333367 lambda!333357)))

(declare-fun b!6119650 () Bool)

(declare-fun e!3730819 () Bool)

(assert (=> b!6119650 (= e!3730819 (isEmpty!36307 (t!377958 (t!377958 (exprs!5950 (h!70822 zl!343))))))))

(declare-fun b!6119651 () Bool)

(declare-fun e!3730823 () Bool)

(declare-fun e!3730821 () Bool)

(assert (=> b!6119651 (= e!3730823 e!3730821)))

(declare-fun c!1099723 () Bool)

(assert (=> b!6119651 (= c!1099723 (isEmpty!36307 (t!377958 (exprs!5950 (h!70822 zl!343)))))))

(declare-fun b!6119652 () Bool)

(declare-fun e!3730820 () Regex!16066)

(declare-fun e!3730822 () Regex!16066)

(assert (=> b!6119652 (= e!3730820 e!3730822)))

(declare-fun c!1099722 () Bool)

(assert (=> b!6119652 (= c!1099722 (is-Cons!64373 (t!377958 (exprs!5950 (h!70822 zl!343)))))))

(declare-fun b!6119653 () Bool)

(declare-fun e!3730818 () Bool)

(declare-fun lt!2330862 () Regex!16066)

(declare-fun isConcat!1006 (Regex!16066) Bool)

(assert (=> b!6119653 (= e!3730818 (isConcat!1006 lt!2330862))))

(declare-fun b!6119654 () Bool)

(declare-fun isEmptyExpr!1483 (Regex!16066) Bool)

(assert (=> b!6119654 (= e!3730821 (isEmptyExpr!1483 lt!2330862))))

(assert (=> d!1917461 e!3730823))

(declare-fun res!2537354 () Bool)

(assert (=> d!1917461 (=> (not res!2537354) (not e!3730823))))

(assert (=> d!1917461 (= res!2537354 (validRegex!7802 lt!2330862))))

(assert (=> d!1917461 (= lt!2330862 e!3730820)))

(declare-fun c!1099720 () Bool)

(assert (=> d!1917461 (= c!1099720 e!3730819)))

(declare-fun res!2537355 () Bool)

(assert (=> d!1917461 (=> (not res!2537355) (not e!3730819))))

(assert (=> d!1917461 (= res!2537355 (is-Cons!64373 (t!377958 (exprs!5950 (h!70822 zl!343)))))))

(assert (=> d!1917461 (forall!15187 (t!377958 (exprs!5950 (h!70822 zl!343))) lambda!333367)))

(assert (=> d!1917461 (= (generalisedConcat!1663 (t!377958 (exprs!5950 (h!70822 zl!343)))) lt!2330862)))

(declare-fun b!6119655 () Bool)

(assert (=> b!6119655 (= e!3730821 e!3730818)))

(declare-fun c!1099721 () Bool)

(assert (=> b!6119655 (= c!1099721 (isEmpty!36307 (tail!11738 (t!377958 (exprs!5950 (h!70822 zl!343))))))))

(declare-fun b!6119656 () Bool)

(assert (=> b!6119656 (= e!3730822 (Concat!24911 (h!70821 (t!377958 (exprs!5950 (h!70822 zl!343)))) (generalisedConcat!1663 (t!377958 (t!377958 (exprs!5950 (h!70822 zl!343)))))))))

(declare-fun b!6119657 () Bool)

(assert (=> b!6119657 (= e!3730818 (= lt!2330862 (head!12653 (t!377958 (exprs!5950 (h!70822 zl!343))))))))

(declare-fun b!6119658 () Bool)

(assert (=> b!6119658 (= e!3730822 EmptyExpr!16066)))

(declare-fun b!6119659 () Bool)

(assert (=> b!6119659 (= e!3730820 (h!70821 (t!377958 (exprs!5950 (h!70822 zl!343)))))))

(assert (= (and d!1917461 res!2537355) b!6119650))

(assert (= (and d!1917461 c!1099720) b!6119659))

(assert (= (and d!1917461 (not c!1099720)) b!6119652))

(assert (= (and b!6119652 c!1099722) b!6119656))

(assert (= (and b!6119652 (not c!1099722)) b!6119658))

(assert (= (and d!1917461 res!2537354) b!6119651))

(assert (= (and b!6119651 c!1099723) b!6119654))

(assert (= (and b!6119651 (not c!1099723)) b!6119655))

(assert (= (and b!6119655 c!1099721) b!6119657))

(assert (= (and b!6119655 (not c!1099721)) b!6119653))

(declare-fun m!6966150 () Bool)

(assert (=> b!6119657 m!6966150))

(declare-fun m!6966152 () Bool)

(assert (=> d!1917461 m!6966152))

(declare-fun m!6966154 () Bool)

(assert (=> d!1917461 m!6966154))

(declare-fun m!6966156 () Bool)

(assert (=> b!6119655 m!6966156))

(assert (=> b!6119655 m!6966156))

(declare-fun m!6966158 () Bool)

(assert (=> b!6119655 m!6966158))

(declare-fun m!6966160 () Bool)

(assert (=> b!6119654 m!6966160))

(declare-fun m!6966162 () Bool)

(assert (=> b!6119653 m!6966162))

(declare-fun m!6966164 () Bool)

(assert (=> b!6119650 m!6966164))

(declare-fun m!6966166 () Bool)

(assert (=> b!6119656 m!6966166))

(assert (=> b!6119651 m!6965948))

(assert (=> b!6119293 d!1917461))

(declare-fun bs!1518451 () Bool)

(declare-fun d!1917463 () Bool)

(assert (= bs!1518451 (and d!1917463 d!1917421)))

(declare-fun lambda!333370 () Int)

(assert (=> bs!1518451 (= lambda!333370 lambda!333354)))

(declare-fun bs!1518452 () Bool)

(assert (= bs!1518452 (and d!1917463 d!1917423)))

(assert (=> bs!1518452 (= lambda!333370 lambda!333357)))

(declare-fun bs!1518453 () Bool)

(assert (= bs!1518453 (and d!1917463 d!1917461)))

(assert (=> bs!1518453 (= lambda!333370 lambda!333367)))

(assert (=> d!1917463 (= (inv!83413 setElem!41349) (forall!15187 (exprs!5950 setElem!41349) lambda!333370))))

(declare-fun bs!1518454 () Bool)

(assert (= bs!1518454 d!1917463))

(declare-fun m!6966168 () Bool)

(assert (=> bs!1518454 m!6966168))

(assert (=> setNonEmpty!41349 d!1917463))

(declare-fun d!1917465 () Bool)

(declare-fun e!3730831 () Bool)

(assert (=> d!1917465 e!3730831))

(declare-fun res!2537359 () Bool)

(assert (=> d!1917465 (=> (not res!2537359) (not e!3730831))))

(declare-fun lt!2330863 () List!64498)

(assert (=> d!1917465 (= res!2537359 (noDuplicate!1913 lt!2330863))))

(assert (=> d!1917465 (= lt!2330863 (choose!45469 z!1189))))

(assert (=> d!1917465 (= (toList!9850 z!1189) lt!2330863)))

(declare-fun b!6119671 () Bool)

(assert (=> b!6119671 (= e!3730831 (= (content!11956 lt!2330863) z!1189))))

(assert (= (and d!1917465 res!2537359) b!6119671))

(declare-fun m!6966170 () Bool)

(assert (=> d!1917465 m!6966170))

(declare-fun m!6966172 () Bool)

(assert (=> d!1917465 m!6966172))

(declare-fun m!6966174 () Bool)

(assert (=> b!6119671 m!6966174))

(assert (=> b!6119294 d!1917465))

(declare-fun bs!1518456 () Bool)

(declare-fun d!1917467 () Bool)

(assert (= bs!1518456 (and d!1917467 d!1917421)))

(declare-fun lambda!333372 () Int)

(assert (=> bs!1518456 (= lambda!333372 lambda!333354)))

(declare-fun bs!1518457 () Bool)

(assert (= bs!1518457 (and d!1917467 d!1917423)))

(assert (=> bs!1518457 (= lambda!333372 lambda!333357)))

(declare-fun bs!1518458 () Bool)

(assert (= bs!1518458 (and d!1917467 d!1917461)))

(assert (=> bs!1518458 (= lambda!333372 lambda!333367)))

(declare-fun bs!1518459 () Bool)

(assert (= bs!1518459 (and d!1917467 d!1917463)))

(assert (=> bs!1518459 (= lambda!333372 lambda!333370)))

(assert (=> d!1917467 (= (inv!83413 (h!70822 zl!343)) (forall!15187 (exprs!5950 (h!70822 zl!343)) lambda!333372))))

(declare-fun bs!1518460 () Bool)

(assert (= bs!1518460 d!1917467))

(declare-fun m!6966176 () Bool)

(assert (=> bs!1518460 m!6966176))

(assert (=> b!6119295 d!1917467))

(declare-fun d!1917469 () Bool)

(declare-fun lt!2330866 () Regex!16066)

(assert (=> d!1917469 (validRegex!7802 lt!2330866)))

(assert (=> d!1917469 (= lt!2330866 (generalisedUnion!1910 (unfocusZipperList!1487 zl!343)))))

(assert (=> d!1917469 (= (unfocusZipper!1808 zl!343) lt!2330866)))

(declare-fun bs!1518463 () Bool)

(assert (= bs!1518463 d!1917469))

(declare-fun m!6966186 () Bool)

(assert (=> bs!1518463 m!6966186))

(assert (=> bs!1518463 m!6965904))

(assert (=> bs!1518463 m!6965904))

(assert (=> bs!1518463 m!6965906))

(assert (=> b!6119285 d!1917469))

(declare-fun e!3730834 () Bool)

(declare-fun d!1917473 () Bool)

(assert (=> d!1917473 (= (matchZipper!2078 (set.union lt!2330798 lt!2330797) (t!377960 s!2326)) e!3730834)))

(declare-fun res!2537362 () Bool)

(assert (=> d!1917473 (=> res!2537362 e!3730834)))

(assert (=> d!1917473 (= res!2537362 (matchZipper!2078 lt!2330798 (t!377960 s!2326)))))

(declare-fun lt!2330869 () Unit!157419)

(declare-fun choose!45474 ((Set Context!10900) (Set Context!10900) List!64499) Unit!157419)

(assert (=> d!1917473 (= lt!2330869 (choose!45474 lt!2330798 lt!2330797 (t!377960 s!2326)))))

(assert (=> d!1917473 (= (lemmaZipperConcatMatchesSameAsBothZippers!897 lt!2330798 lt!2330797 (t!377960 s!2326)) lt!2330869)))

(declare-fun b!6119674 () Bool)

(assert (=> b!6119674 (= e!3730834 (matchZipper!2078 lt!2330797 (t!377960 s!2326)))))

(assert (= (and d!1917473 (not res!2537362)) b!6119674))

(assert (=> d!1917473 m!6965946))

(assert (=> d!1917473 m!6965944))

(declare-fun m!6966188 () Bool)

(assert (=> d!1917473 m!6966188))

(assert (=> b!6119674 m!6965894))

(assert (=> b!6119305 d!1917473))

(declare-fun d!1917475 () Bool)

(declare-fun c!1099730 () Bool)

(assert (=> d!1917475 (= c!1099730 (isEmpty!36310 (t!377960 s!2326)))))

(declare-fun e!3730837 () Bool)

(assert (=> d!1917475 (= (matchZipper!2078 lt!2330798 (t!377960 s!2326)) e!3730837)))

(declare-fun b!6119679 () Bool)

(assert (=> b!6119679 (= e!3730837 (nullableZipper!1847 lt!2330798))))

(declare-fun b!6119680 () Bool)

(assert (=> b!6119680 (= e!3730837 (matchZipper!2078 (derivationStepZipper!2039 lt!2330798 (head!12654 (t!377960 s!2326))) (tail!11739 (t!377960 s!2326))))))

(assert (= (and d!1917475 c!1099730) b!6119679))

(assert (= (and d!1917475 (not c!1099730)) b!6119680))

(assert (=> d!1917475 m!6966124))

(declare-fun m!6966190 () Bool)

(assert (=> b!6119679 m!6966190))

(assert (=> b!6119680 m!6966128))

(assert (=> b!6119680 m!6966128))

(declare-fun m!6966192 () Bool)

(assert (=> b!6119680 m!6966192))

(assert (=> b!6119680 m!6966132))

(assert (=> b!6119680 m!6966192))

(assert (=> b!6119680 m!6966132))

(declare-fun m!6966194 () Bool)

(assert (=> b!6119680 m!6966194))

(assert (=> b!6119305 d!1917475))

(declare-fun d!1917477 () Bool)

(declare-fun c!1099735 () Bool)

(assert (=> d!1917477 (= c!1099735 (isEmpty!36310 (t!377960 s!2326)))))

(declare-fun e!3730844 () Bool)

(assert (=> d!1917477 (= (matchZipper!2078 (set.union lt!2330798 lt!2330797) (t!377960 s!2326)) e!3730844)))

(declare-fun b!6119691 () Bool)

(assert (=> b!6119691 (= e!3730844 (nullableZipper!1847 (set.union lt!2330798 lt!2330797)))))

(declare-fun b!6119692 () Bool)

(assert (=> b!6119692 (= e!3730844 (matchZipper!2078 (derivationStepZipper!2039 (set.union lt!2330798 lt!2330797) (head!12654 (t!377960 s!2326))) (tail!11739 (t!377960 s!2326))))))

(assert (= (and d!1917477 c!1099735) b!6119691))

(assert (= (and d!1917477 (not c!1099735)) b!6119692))

(assert (=> d!1917477 m!6966124))

(declare-fun m!6966196 () Bool)

(assert (=> b!6119691 m!6966196))

(assert (=> b!6119692 m!6966128))

(assert (=> b!6119692 m!6966128))

(declare-fun m!6966198 () Bool)

(assert (=> b!6119692 m!6966198))

(assert (=> b!6119692 m!6966132))

(assert (=> b!6119692 m!6966198))

(assert (=> b!6119692 m!6966132))

(declare-fun m!6966200 () Bool)

(assert (=> b!6119692 m!6966200))

(assert (=> b!6119305 d!1917477))

(declare-fun bs!1518464 () Bool)

(declare-fun d!1917479 () Bool)

(assert (= bs!1518464 (and d!1917479 d!1917461)))

(declare-fun lambda!333374 () Int)

(assert (=> bs!1518464 (= lambda!333374 lambda!333367)))

(declare-fun bs!1518465 () Bool)

(assert (= bs!1518465 (and d!1917479 d!1917421)))

(assert (=> bs!1518465 (= lambda!333374 lambda!333354)))

(declare-fun bs!1518466 () Bool)

(assert (= bs!1518466 (and d!1917479 d!1917467)))

(assert (=> bs!1518466 (= lambda!333374 lambda!333372)))

(declare-fun bs!1518467 () Bool)

(assert (= bs!1518467 (and d!1917479 d!1917423)))

(assert (=> bs!1518467 (= lambda!333374 lambda!333357)))

(declare-fun bs!1518468 () Bool)

(assert (= bs!1518468 (and d!1917479 d!1917463)))

(assert (=> bs!1518468 (= lambda!333374 lambda!333370)))

(declare-fun b!6119707 () Bool)

(declare-fun e!3730852 () Bool)

(assert (=> b!6119707 (= e!3730852 (isEmpty!36307 (t!377958 (exprs!5950 (h!70822 zl!343)))))))

(declare-fun b!6119708 () Bool)

(declare-fun e!3730856 () Bool)

(declare-fun e!3730854 () Bool)

(assert (=> b!6119708 (= e!3730856 e!3730854)))

(declare-fun c!1099739 () Bool)

(assert (=> b!6119708 (= c!1099739 (isEmpty!36307 (exprs!5950 (h!70822 zl!343))))))

(declare-fun b!6119709 () Bool)

(declare-fun e!3730853 () Regex!16066)

(declare-fun e!3730855 () Regex!16066)

(assert (=> b!6119709 (= e!3730853 e!3730855)))

(declare-fun c!1099738 () Bool)

(assert (=> b!6119709 (= c!1099738 (is-Cons!64373 (exprs!5950 (h!70822 zl!343))))))

(declare-fun b!6119710 () Bool)

(declare-fun e!3730851 () Bool)

(declare-fun lt!2330872 () Regex!16066)

(assert (=> b!6119710 (= e!3730851 (isConcat!1006 lt!2330872))))

(declare-fun b!6119711 () Bool)

(assert (=> b!6119711 (= e!3730854 (isEmptyExpr!1483 lt!2330872))))

(assert (=> d!1917479 e!3730856))

(declare-fun res!2537379 () Bool)

(assert (=> d!1917479 (=> (not res!2537379) (not e!3730856))))

(assert (=> d!1917479 (= res!2537379 (validRegex!7802 lt!2330872))))

(assert (=> d!1917479 (= lt!2330872 e!3730853)))

(declare-fun c!1099736 () Bool)

(assert (=> d!1917479 (= c!1099736 e!3730852)))

(declare-fun res!2537380 () Bool)

(assert (=> d!1917479 (=> (not res!2537380) (not e!3730852))))

(assert (=> d!1917479 (= res!2537380 (is-Cons!64373 (exprs!5950 (h!70822 zl!343))))))

(assert (=> d!1917479 (forall!15187 (exprs!5950 (h!70822 zl!343)) lambda!333374)))

(assert (=> d!1917479 (= (generalisedConcat!1663 (exprs!5950 (h!70822 zl!343))) lt!2330872)))

(declare-fun b!6119712 () Bool)

(assert (=> b!6119712 (= e!3730854 e!3730851)))

(declare-fun c!1099737 () Bool)

(assert (=> b!6119712 (= c!1099737 (isEmpty!36307 (tail!11738 (exprs!5950 (h!70822 zl!343)))))))

(declare-fun b!6119713 () Bool)

(assert (=> b!6119713 (= e!3730855 (Concat!24911 (h!70821 (exprs!5950 (h!70822 zl!343))) (generalisedConcat!1663 (t!377958 (exprs!5950 (h!70822 zl!343))))))))

(declare-fun b!6119714 () Bool)

(assert (=> b!6119714 (= e!3730851 (= lt!2330872 (head!12653 (exprs!5950 (h!70822 zl!343)))))))

(declare-fun b!6119715 () Bool)

(assert (=> b!6119715 (= e!3730855 EmptyExpr!16066)))

(declare-fun b!6119716 () Bool)

(assert (=> b!6119716 (= e!3730853 (h!70821 (exprs!5950 (h!70822 zl!343))))))

(assert (= (and d!1917479 res!2537380) b!6119707))

(assert (= (and d!1917479 c!1099736) b!6119716))

(assert (= (and d!1917479 (not c!1099736)) b!6119709))

(assert (= (and b!6119709 c!1099738) b!6119713))

(assert (= (and b!6119709 (not c!1099738)) b!6119715))

(assert (= (and d!1917479 res!2537379) b!6119708))

(assert (= (and b!6119708 c!1099739) b!6119711))

(assert (= (and b!6119708 (not c!1099739)) b!6119712))

(assert (= (and b!6119712 c!1099737) b!6119714))

(assert (= (and b!6119712 (not c!1099737)) b!6119710))

(declare-fun m!6966202 () Bool)

(assert (=> b!6119714 m!6966202))

(declare-fun m!6966204 () Bool)

(assert (=> d!1917479 m!6966204))

(declare-fun m!6966206 () Bool)

(assert (=> d!1917479 m!6966206))

(declare-fun m!6966208 () Bool)

(assert (=> b!6119712 m!6966208))

(assert (=> b!6119712 m!6966208))

(declare-fun m!6966210 () Bool)

(assert (=> b!6119712 m!6966210))

(declare-fun m!6966212 () Bool)

(assert (=> b!6119711 m!6966212))

(declare-fun m!6966214 () Bool)

(assert (=> b!6119710 m!6966214))

(assert (=> b!6119707 m!6965948))

(assert (=> b!6119713 m!6965912))

(declare-fun m!6966216 () Bool)

(assert (=> b!6119708 m!6966216))

(assert (=> b!6119306 d!1917479))

(declare-fun d!1917481 () Bool)

(declare-fun lt!2330873 () Regex!16066)

(assert (=> d!1917481 (validRegex!7802 lt!2330873)))

(assert (=> d!1917481 (= lt!2330873 (generalisedUnion!1910 (unfocusZipperList!1487 lt!2330796)))))

(assert (=> d!1917481 (= (unfocusZipper!1808 lt!2330796) lt!2330873)))

(declare-fun bs!1518469 () Bool)

(assert (= bs!1518469 d!1917481))

(declare-fun m!6966218 () Bool)

(assert (=> bs!1518469 m!6966218))

(declare-fun m!6966220 () Bool)

(assert (=> bs!1518469 m!6966220))

(assert (=> bs!1518469 m!6966220))

(declare-fun m!6966222 () Bool)

(assert (=> bs!1518469 m!6966222))

(assert (=> b!6119297 d!1917481))

(declare-fun d!1917483 () Bool)

(assert (=> d!1917483 (= (isEmpty!36307 (t!377958 (exprs!5950 (h!70822 zl!343)))) (is-Nil!64373 (t!377958 (exprs!5950 (h!70822 zl!343)))))))

(assert (=> b!6119298 d!1917483))

(declare-fun b!6119769 () Bool)

(declare-fun e!3730886 () Option!15957)

(declare-fun e!3730887 () Option!15957)

(assert (=> b!6119769 (= e!3730886 e!3730887)))

(declare-fun c!1099756 () Bool)

(assert (=> b!6119769 (= c!1099756 (is-Nil!64375 s!2326))))

(declare-fun b!6119770 () Bool)

(assert (=> b!6119770 (= e!3730886 (Some!15956 (tuple2!66091 Nil!64375 s!2326)))))

(declare-fun b!6119771 () Bool)

(assert (=> b!6119771 (= e!3730887 None!15956)))

(declare-fun b!6119772 () Bool)

(declare-fun lt!2330888 () Unit!157419)

(declare-fun lt!2330886 () Unit!157419)

(assert (=> b!6119772 (= lt!2330888 lt!2330886)))

(declare-fun ++!14152 (List!64499 List!64499) List!64499)

(assert (=> b!6119772 (= (++!14152 (++!14152 Nil!64375 (Cons!64375 (h!70823 s!2326) Nil!64375)) (t!377960 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2247 (List!64499 C!32402 List!64499 List!64499) Unit!157419)

(assert (=> b!6119772 (= lt!2330886 (lemmaMoveElementToOtherListKeepsConcatEq!2247 Nil!64375 (h!70823 s!2326) (t!377960 s!2326) s!2326))))

(assert (=> b!6119772 (= e!3730887 (findConcatSeparation!2371 (regOne!32644 r!7292) (regTwo!32644 r!7292) (++!14152 Nil!64375 (Cons!64375 (h!70823 s!2326) Nil!64375)) (t!377960 s!2326) s!2326))))

(declare-fun b!6119773 () Bool)

(declare-fun res!2537406 () Bool)

(declare-fun e!3730890 () Bool)

(assert (=> b!6119773 (=> (not res!2537406) (not e!3730890))))

(declare-fun lt!2330887 () Option!15957)

(declare-fun get!22201 (Option!15957) tuple2!66090)

(assert (=> b!6119773 (= res!2537406 (matchR!8249 (regTwo!32644 r!7292) (_2!36348 (get!22201 lt!2330887))))))

(declare-fun b!6119774 () Bool)

(assert (=> b!6119774 (= e!3730890 (= (++!14152 (_1!36348 (get!22201 lt!2330887)) (_2!36348 (get!22201 lt!2330887))) s!2326))))

(declare-fun b!6119775 () Bool)

(declare-fun e!3730888 () Bool)

(assert (=> b!6119775 (= e!3730888 (not (isDefined!12660 lt!2330887)))))

(declare-fun d!1917485 () Bool)

(assert (=> d!1917485 e!3730888))

(declare-fun res!2537407 () Bool)

(assert (=> d!1917485 (=> res!2537407 e!3730888)))

(assert (=> d!1917485 (= res!2537407 e!3730890)))

(declare-fun res!2537405 () Bool)

(assert (=> d!1917485 (=> (not res!2537405) (not e!3730890))))

(assert (=> d!1917485 (= res!2537405 (isDefined!12660 lt!2330887))))

(assert (=> d!1917485 (= lt!2330887 e!3730886)))

(declare-fun c!1099755 () Bool)

(declare-fun e!3730889 () Bool)

(assert (=> d!1917485 (= c!1099755 e!3730889)))

(declare-fun res!2537404 () Bool)

(assert (=> d!1917485 (=> (not res!2537404) (not e!3730889))))

(assert (=> d!1917485 (= res!2537404 (matchR!8249 (regOne!32644 r!7292) Nil!64375))))

(assert (=> d!1917485 (validRegex!7802 (regOne!32644 r!7292))))

(assert (=> d!1917485 (= (findConcatSeparation!2371 (regOne!32644 r!7292) (regTwo!32644 r!7292) Nil!64375 s!2326 s!2326) lt!2330887)))

(declare-fun b!6119776 () Bool)

(declare-fun res!2537403 () Bool)

(assert (=> b!6119776 (=> (not res!2537403) (not e!3730890))))

(assert (=> b!6119776 (= res!2537403 (matchR!8249 (regOne!32644 r!7292) (_1!36348 (get!22201 lt!2330887))))))

(declare-fun b!6119777 () Bool)

(assert (=> b!6119777 (= e!3730889 (matchR!8249 (regTwo!32644 r!7292) s!2326))))

(assert (= (and d!1917485 res!2537404) b!6119777))

(assert (= (and d!1917485 c!1099755) b!6119770))

(assert (= (and d!1917485 (not c!1099755)) b!6119769))

(assert (= (and b!6119769 c!1099756) b!6119771))

(assert (= (and b!6119769 (not c!1099756)) b!6119772))

(assert (= (and d!1917485 res!2537405) b!6119776))

(assert (= (and b!6119776 res!2537403) b!6119773))

(assert (= (and b!6119773 res!2537406) b!6119774))

(assert (= (and d!1917485 (not res!2537407)) b!6119775))

(declare-fun m!6966240 () Bool)

(assert (=> b!6119777 m!6966240))

(declare-fun m!6966242 () Bool)

(assert (=> b!6119774 m!6966242))

(declare-fun m!6966244 () Bool)

(assert (=> b!6119774 m!6966244))

(assert (=> b!6119773 m!6966242))

(declare-fun m!6966246 () Bool)

(assert (=> b!6119773 m!6966246))

(assert (=> b!6119776 m!6966242))

(declare-fun m!6966248 () Bool)

(assert (=> b!6119776 m!6966248))

(declare-fun m!6966250 () Bool)

(assert (=> b!6119775 m!6966250))

(declare-fun m!6966252 () Bool)

(assert (=> b!6119772 m!6966252))

(assert (=> b!6119772 m!6966252))

(declare-fun m!6966254 () Bool)

(assert (=> b!6119772 m!6966254))

(declare-fun m!6966256 () Bool)

(assert (=> b!6119772 m!6966256))

(assert (=> b!6119772 m!6966252))

(declare-fun m!6966258 () Bool)

(assert (=> b!6119772 m!6966258))

(assert (=> d!1917485 m!6966250))

(declare-fun m!6966260 () Bool)

(assert (=> d!1917485 m!6966260))

(declare-fun m!6966262 () Bool)

(assert (=> d!1917485 m!6966262))

(assert (=> b!6119299 d!1917485))

(declare-fun d!1917493 () Bool)

(declare-fun choose!45476 (Int) Bool)

(assert (=> d!1917493 (= (Exists!3136 lambda!333338) (choose!45476 lambda!333338))))

(declare-fun bs!1518475 () Bool)

(assert (= bs!1518475 d!1917493))

(declare-fun m!6966272 () Bool)

(assert (=> bs!1518475 m!6966272))

(assert (=> b!6119299 d!1917493))

(declare-fun bs!1518479 () Bool)

(declare-fun d!1917495 () Bool)

(assert (= bs!1518479 (and d!1917495 b!6119299)))

(declare-fun lambda!333384 () Int)

(assert (=> bs!1518479 (= lambda!333384 lambda!333338)))

(assert (=> bs!1518479 (not (= lambda!333384 lambda!333339))))

(assert (=> d!1917495 true))

(assert (=> d!1917495 true))

(assert (=> d!1917495 true))

(assert (=> d!1917495 (= (isDefined!12660 (findConcatSeparation!2371 (regOne!32644 r!7292) (regTwo!32644 r!7292) Nil!64375 s!2326 s!2326)) (Exists!3136 lambda!333384))))

(declare-fun lt!2330895 () Unit!157419)

(declare-fun choose!45477 (Regex!16066 Regex!16066 List!64499) Unit!157419)

(assert (=> d!1917495 (= lt!2330895 (choose!45477 (regOne!32644 r!7292) (regTwo!32644 r!7292) s!2326))))

(assert (=> d!1917495 (validRegex!7802 (regOne!32644 r!7292))))

(assert (=> d!1917495 (= (lemmaFindConcatSeparationEquivalentToExists!2135 (regOne!32644 r!7292) (regTwo!32644 r!7292) s!2326) lt!2330895)))

(declare-fun bs!1518480 () Bool)

(assert (= bs!1518480 d!1917495))

(assert (=> bs!1518480 m!6965920))

(assert (=> bs!1518480 m!6965922))

(assert (=> bs!1518480 m!6966262))

(declare-fun m!6966290 () Bool)

(assert (=> bs!1518480 m!6966290))

(assert (=> bs!1518480 m!6965920))

(declare-fun m!6966292 () Bool)

(assert (=> bs!1518480 m!6966292))

(assert (=> b!6119299 d!1917495))

(declare-fun bs!1518481 () Bool)

(declare-fun d!1917501 () Bool)

(assert (= bs!1518481 (and d!1917501 b!6119299)))

(declare-fun lambda!333391 () Int)

(assert (=> bs!1518481 (= lambda!333391 lambda!333338)))

(assert (=> bs!1518481 (not (= lambda!333391 lambda!333339))))

(declare-fun bs!1518483 () Bool)

(assert (= bs!1518483 (and d!1917501 d!1917495)))

(assert (=> bs!1518483 (= lambda!333391 lambda!333384)))

(assert (=> d!1917501 true))

(assert (=> d!1917501 true))

(assert (=> d!1917501 true))

(declare-fun lambda!333393 () Int)

(assert (=> bs!1518481 (not (= lambda!333393 lambda!333338))))

(assert (=> bs!1518481 (= lambda!333393 lambda!333339)))

(assert (=> bs!1518483 (not (= lambda!333393 lambda!333384))))

(declare-fun bs!1518487 () Bool)

(assert (= bs!1518487 d!1917501))

(assert (=> bs!1518487 (not (= lambda!333393 lambda!333391))))

(assert (=> d!1917501 true))

(assert (=> d!1917501 true))

(assert (=> d!1917501 true))

(assert (=> d!1917501 (= (Exists!3136 lambda!333391) (Exists!3136 lambda!333393))))

(declare-fun lt!2330900 () Unit!157419)

(declare-fun choose!45478 (Regex!16066 Regex!16066 List!64499) Unit!157419)

(assert (=> d!1917501 (= lt!2330900 (choose!45478 (regOne!32644 r!7292) (regTwo!32644 r!7292) s!2326))))

(assert (=> d!1917501 (validRegex!7802 (regOne!32644 r!7292))))

(assert (=> d!1917501 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1673 (regOne!32644 r!7292) (regTwo!32644 r!7292) s!2326) lt!2330900)))

(declare-fun m!6966316 () Bool)

(assert (=> bs!1518487 m!6966316))

(declare-fun m!6966318 () Bool)

(assert (=> bs!1518487 m!6966318))

(declare-fun m!6966320 () Bool)

(assert (=> bs!1518487 m!6966320))

(assert (=> bs!1518487 m!6966262))

(assert (=> b!6119299 d!1917501))

(declare-fun d!1917507 () Bool)

(assert (=> d!1917507 (= (Exists!3136 lambda!333339) (choose!45476 lambda!333339))))

(declare-fun bs!1518488 () Bool)

(assert (= bs!1518488 d!1917507))

(declare-fun m!6966322 () Bool)

(assert (=> bs!1518488 m!6966322))

(assert (=> b!6119299 d!1917507))

(declare-fun d!1917509 () Bool)

(declare-fun isEmpty!36312 (Option!15957) Bool)

(assert (=> d!1917509 (= (isDefined!12660 (findConcatSeparation!2371 (regOne!32644 r!7292) (regTwo!32644 r!7292) Nil!64375 s!2326 s!2326)) (not (isEmpty!36312 (findConcatSeparation!2371 (regOne!32644 r!7292) (regTwo!32644 r!7292) Nil!64375 s!2326 s!2326))))))

(declare-fun bs!1518489 () Bool)

(assert (= bs!1518489 d!1917509))

(assert (=> bs!1518489 m!6965920))

(declare-fun m!6966324 () Bool)

(assert (=> bs!1518489 m!6966324))

(assert (=> b!6119299 d!1917509))

(declare-fun bs!1518496 () Bool)

(declare-fun b!6119933 () Bool)

(assert (= bs!1518496 (and b!6119933 d!1917501)))

(declare-fun lambda!333399 () Int)

(assert (=> bs!1518496 (not (= lambda!333399 lambda!333391))))

(declare-fun bs!1518497 () Bool)

(assert (= bs!1518497 (and b!6119933 d!1917495)))

(assert (=> bs!1518497 (not (= lambda!333399 lambda!333384))))

(declare-fun bs!1518498 () Bool)

(assert (= bs!1518498 (and b!6119933 b!6119299)))

(assert (=> bs!1518498 (not (= lambda!333399 lambda!333338))))

(assert (=> bs!1518498 (not (= lambda!333399 lambda!333339))))

(assert (=> bs!1518496 (not (= lambda!333399 lambda!333393))))

(assert (=> b!6119933 true))

(assert (=> b!6119933 true))

(declare-fun bs!1518499 () Bool)

(declare-fun b!6119932 () Bool)

(assert (= bs!1518499 (and b!6119932 d!1917501)))

(declare-fun lambda!333400 () Int)

(assert (=> bs!1518499 (not (= lambda!333400 lambda!333391))))

(declare-fun bs!1518500 () Bool)

(assert (= bs!1518500 (and b!6119932 d!1917495)))

(assert (=> bs!1518500 (not (= lambda!333400 lambda!333384))))

(declare-fun bs!1518501 () Bool)

(assert (= bs!1518501 (and b!6119932 b!6119299)))

(assert (=> bs!1518501 (not (= lambda!333400 lambda!333338))))

(assert (=> bs!1518501 (= lambda!333400 lambda!333339)))

(assert (=> bs!1518499 (= lambda!333400 lambda!333393)))

(declare-fun bs!1518502 () Bool)

(assert (= bs!1518502 (and b!6119932 b!6119933)))

(assert (=> bs!1518502 (not (= lambda!333400 lambda!333399))))

(assert (=> b!6119932 true))

(assert (=> b!6119932 true))

(declare-fun b!6119928 () Bool)

(declare-fun res!2537473 () Bool)

(declare-fun e!3730987 () Bool)

(assert (=> b!6119928 (=> res!2537473 e!3730987)))

(declare-fun call!506878 () Bool)

(assert (=> b!6119928 (= res!2537473 call!506878)))

(declare-fun e!3730986 () Bool)

(assert (=> b!6119928 (= e!3730986 e!3730987)))

(declare-fun b!6119929 () Bool)

(declare-fun e!3730988 () Bool)

(assert (=> b!6119929 (= e!3730988 call!506878)))

(declare-fun b!6119930 () Bool)

(declare-fun e!3730992 () Bool)

(assert (=> b!6119930 (= e!3730988 e!3730992)))

(declare-fun res!2537472 () Bool)

(assert (=> b!6119930 (= res!2537472 (not (is-EmptyLang!16066 r!7292)))))

(assert (=> b!6119930 (=> (not res!2537472) (not e!3730992))))

(declare-fun call!506877 () Bool)

(declare-fun c!1099803 () Bool)

(declare-fun bm!506872 () Bool)

(assert (=> bm!506872 (= call!506877 (Exists!3136 (ite c!1099803 lambda!333399 lambda!333400)))))

(declare-fun b!6119931 () Bool)

(declare-fun c!1099801 () Bool)

(assert (=> b!6119931 (= c!1099801 (is-Union!16066 r!7292))))

(declare-fun e!3730991 () Bool)

(declare-fun e!3730990 () Bool)

(assert (=> b!6119931 (= e!3730991 e!3730990)))

(assert (=> b!6119932 (= e!3730986 call!506877)))

(assert (=> b!6119933 (= e!3730987 call!506877)))

(declare-fun bm!506873 () Bool)

(assert (=> bm!506873 (= call!506878 (isEmpty!36310 s!2326))))

(declare-fun d!1917511 () Bool)

(declare-fun c!1099800 () Bool)

(assert (=> d!1917511 (= c!1099800 (is-EmptyExpr!16066 r!7292))))

(assert (=> d!1917511 (= (matchRSpec!3167 r!7292 s!2326) e!3730988)))

(declare-fun b!6119934 () Bool)

(declare-fun c!1099802 () Bool)

(assert (=> b!6119934 (= c!1099802 (is-ElementMatch!16066 r!7292))))

(assert (=> b!6119934 (= e!3730992 e!3730991)))

(declare-fun b!6119935 () Bool)

(declare-fun e!3730989 () Bool)

(assert (=> b!6119935 (= e!3730989 (matchRSpec!3167 (regTwo!32645 r!7292) s!2326))))

(declare-fun b!6119936 () Bool)

(assert (=> b!6119936 (= e!3730990 e!3730989)))

(declare-fun res!2537474 () Bool)

(assert (=> b!6119936 (= res!2537474 (matchRSpec!3167 (regOne!32645 r!7292) s!2326))))

(assert (=> b!6119936 (=> res!2537474 e!3730989)))

(declare-fun b!6119937 () Bool)

(assert (=> b!6119937 (= e!3730990 e!3730986)))

(assert (=> b!6119937 (= c!1099803 (is-Star!16066 r!7292))))

(declare-fun b!6119938 () Bool)

(assert (=> b!6119938 (= e!3730991 (= s!2326 (Cons!64375 (c!1099622 r!7292) Nil!64375)))))

(assert (= (and d!1917511 c!1099800) b!6119929))

(assert (= (and d!1917511 (not c!1099800)) b!6119930))

(assert (= (and b!6119930 res!2537472) b!6119934))

(assert (= (and b!6119934 c!1099802) b!6119938))

(assert (= (and b!6119934 (not c!1099802)) b!6119931))

(assert (= (and b!6119931 c!1099801) b!6119936))

(assert (= (and b!6119931 (not c!1099801)) b!6119937))

(assert (= (and b!6119936 (not res!2537474)) b!6119935))

(assert (= (and b!6119937 c!1099803) b!6119928))

(assert (= (and b!6119937 (not c!1099803)) b!6119932))

(assert (= (and b!6119928 (not res!2537473)) b!6119933))

(assert (= (or b!6119933 b!6119932) bm!506872))

(assert (= (or b!6119929 b!6119928) bm!506873))

(declare-fun m!6966388 () Bool)

(assert (=> bm!506872 m!6966388))

(declare-fun m!6966390 () Bool)

(assert (=> bm!506873 m!6966390))

(declare-fun m!6966392 () Bool)

(assert (=> b!6119935 m!6966392))

(declare-fun m!6966394 () Bool)

(assert (=> b!6119936 m!6966394))

(assert (=> b!6119288 d!1917511))

(declare-fun b!6119988 () Bool)

(declare-fun res!2537501 () Bool)

(declare-fun e!3731021 () Bool)

(assert (=> b!6119988 (=> (not res!2537501) (not e!3731021))))

(assert (=> b!6119988 (= res!2537501 (isEmpty!36310 (tail!11739 s!2326)))))

(declare-fun b!6119989 () Bool)

(declare-fun e!3731018 () Bool)

(declare-fun lt!2330920 () Bool)

(assert (=> b!6119989 (= e!3731018 (not lt!2330920))))

(declare-fun b!6119990 () Bool)

(declare-fun e!3731019 () Bool)

(assert (=> b!6119990 (= e!3731019 (nullable!6059 r!7292))))

(declare-fun bm!506876 () Bool)

(declare-fun call!506881 () Bool)

(assert (=> bm!506876 (= call!506881 (isEmpty!36310 s!2326))))

(declare-fun b!6119991 () Bool)

(declare-fun e!3731022 () Bool)

(assert (=> b!6119991 (= e!3731022 e!3731018)))

(declare-fun c!1099815 () Bool)

(assert (=> b!6119991 (= c!1099815 (is-EmptyLang!16066 r!7292))))

(declare-fun b!6119992 () Bool)

(assert (=> b!6119992 (= e!3731021 (= (head!12654 s!2326) (c!1099622 r!7292)))))

(declare-fun b!6119993 () Bool)

(declare-fun e!3731023 () Bool)

(assert (=> b!6119993 (= e!3731023 (not (= (head!12654 s!2326) (c!1099622 r!7292))))))

(declare-fun b!6119994 () Bool)

(declare-fun e!3731020 () Bool)

(assert (=> b!6119994 (= e!3731020 e!3731023)))

(declare-fun res!2537505 () Bool)

(assert (=> b!6119994 (=> res!2537505 e!3731023)))

(assert (=> b!6119994 (= res!2537505 call!506881)))

(declare-fun b!6119995 () Bool)

(declare-fun res!2537502 () Bool)

(declare-fun e!3731024 () Bool)

(assert (=> b!6119995 (=> res!2537502 e!3731024)))

(assert (=> b!6119995 (= res!2537502 e!3731021)))

(declare-fun res!2537504 () Bool)

(assert (=> b!6119995 (=> (not res!2537504) (not e!3731021))))

(assert (=> b!6119995 (= res!2537504 lt!2330920)))

(declare-fun b!6119996 () Bool)

(declare-fun res!2537508 () Bool)

(assert (=> b!6119996 (=> (not res!2537508) (not e!3731021))))

(assert (=> b!6119996 (= res!2537508 (not call!506881))))

(declare-fun b!6119987 () Bool)

(declare-fun derivativeStep!4787 (Regex!16066 C!32402) Regex!16066)

(assert (=> b!6119987 (= e!3731019 (matchR!8249 (derivativeStep!4787 r!7292 (head!12654 s!2326)) (tail!11739 s!2326)))))

(declare-fun d!1917531 () Bool)

(assert (=> d!1917531 e!3731022))

(declare-fun c!1099817 () Bool)

(assert (=> d!1917531 (= c!1099817 (is-EmptyExpr!16066 r!7292))))

(assert (=> d!1917531 (= lt!2330920 e!3731019)))

(declare-fun c!1099816 () Bool)

(assert (=> d!1917531 (= c!1099816 (isEmpty!36310 s!2326))))

(assert (=> d!1917531 (validRegex!7802 r!7292)))

(assert (=> d!1917531 (= (matchR!8249 r!7292 s!2326) lt!2330920)))

(declare-fun b!6119997 () Bool)

(assert (=> b!6119997 (= e!3731022 (= lt!2330920 call!506881))))

(declare-fun b!6119998 () Bool)

(declare-fun res!2537503 () Bool)

(assert (=> b!6119998 (=> res!2537503 e!3731023)))

(assert (=> b!6119998 (= res!2537503 (not (isEmpty!36310 (tail!11739 s!2326))))))

(declare-fun b!6119999 () Bool)

(assert (=> b!6119999 (= e!3731024 e!3731020)))

(declare-fun res!2537507 () Bool)

(assert (=> b!6119999 (=> (not res!2537507) (not e!3731020))))

(assert (=> b!6119999 (= res!2537507 (not lt!2330920))))

(declare-fun b!6120000 () Bool)

(declare-fun res!2537506 () Bool)

(assert (=> b!6120000 (=> res!2537506 e!3731024)))

(assert (=> b!6120000 (= res!2537506 (not (is-ElementMatch!16066 r!7292)))))

(assert (=> b!6120000 (= e!3731018 e!3731024)))

(assert (= (and d!1917531 c!1099816) b!6119990))

(assert (= (and d!1917531 (not c!1099816)) b!6119987))

(assert (= (and d!1917531 c!1099817) b!6119997))

(assert (= (and d!1917531 (not c!1099817)) b!6119991))

(assert (= (and b!6119991 c!1099815) b!6119989))

(assert (= (and b!6119991 (not c!1099815)) b!6120000))

(assert (= (and b!6120000 (not res!2537506)) b!6119995))

(assert (= (and b!6119995 res!2537504) b!6119996))

(assert (= (and b!6119996 res!2537508) b!6119988))

(assert (= (and b!6119988 res!2537501) b!6119992))

(assert (= (and b!6119995 (not res!2537502)) b!6119999))

(assert (= (and b!6119999 res!2537507) b!6119994))

(assert (= (and b!6119994 (not res!2537505)) b!6119998))

(assert (= (and b!6119998 (not res!2537503)) b!6119993))

(assert (= (or b!6119997 b!6119994 b!6119996) bm!506876))

(declare-fun m!6966396 () Bool)

(assert (=> b!6119990 m!6966396))

(declare-fun m!6966398 () Bool)

(assert (=> b!6119998 m!6966398))

(assert (=> b!6119998 m!6966398))

(declare-fun m!6966400 () Bool)

(assert (=> b!6119998 m!6966400))

(declare-fun m!6966402 () Bool)

(assert (=> b!6119992 m!6966402))

(assert (=> d!1917531 m!6966390))

(assert (=> d!1917531 m!6965898))

(assert (=> b!6119993 m!6966402))

(assert (=> b!6119988 m!6966398))

(assert (=> b!6119988 m!6966398))

(assert (=> b!6119988 m!6966400))

(assert (=> bm!506876 m!6966390))

(assert (=> b!6119987 m!6966402))

(assert (=> b!6119987 m!6966402))

(declare-fun m!6966404 () Bool)

(assert (=> b!6119987 m!6966404))

(assert (=> b!6119987 m!6966398))

(assert (=> b!6119987 m!6966404))

(assert (=> b!6119987 m!6966398))

(declare-fun m!6966406 () Bool)

(assert (=> b!6119987 m!6966406))

(assert (=> b!6119288 d!1917531))

(declare-fun d!1917533 () Bool)

(assert (=> d!1917533 (= (matchR!8249 r!7292 s!2326) (matchRSpec!3167 r!7292 s!2326))))

(declare-fun lt!2330926 () Unit!157419)

(declare-fun choose!45479 (Regex!16066 List!64499) Unit!157419)

(assert (=> d!1917533 (= lt!2330926 (choose!45479 r!7292 s!2326))))

(assert (=> d!1917533 (validRegex!7802 r!7292)))

(assert (=> d!1917533 (= (mainMatchTheorem!3167 r!7292 s!2326) lt!2330926)))

(declare-fun bs!1518505 () Bool)

(assert (= bs!1518505 d!1917533))

(assert (=> bs!1518505 m!6965956))

(assert (=> bs!1518505 m!6965954))

(declare-fun m!6966436 () Bool)

(assert (=> bs!1518505 m!6966436))

(assert (=> bs!1518505 m!6965898))

(assert (=> b!6119288 d!1917533))

(declare-fun d!1917541 () Bool)

(declare-fun res!2537516 () Bool)

(declare-fun e!3731032 () Bool)

(assert (=> d!1917541 (=> res!2537516 e!3731032)))

(assert (=> d!1917541 (= res!2537516 (is-ElementMatch!16066 r!7292))))

(assert (=> d!1917541 (= (validRegex!7802 r!7292) e!3731032)))

(declare-fun c!1099820 () Bool)

(declare-fun call!506883 () Bool)

(declare-fun c!1099821 () Bool)

(declare-fun bm!506877 () Bool)

(assert (=> bm!506877 (= call!506883 (validRegex!7802 (ite c!1099821 (reg!16395 r!7292) (ite c!1099820 (regTwo!32645 r!7292) (regTwo!32644 r!7292)))))))

(declare-fun b!6120010 () Bool)

(declare-fun res!2537515 () Bool)

(declare-fun e!3731034 () Bool)

(assert (=> b!6120010 (=> (not res!2537515) (not e!3731034))))

(declare-fun call!506882 () Bool)

(assert (=> b!6120010 (= res!2537515 call!506882)))

(declare-fun e!3731033 () Bool)

(assert (=> b!6120010 (= e!3731033 e!3731034)))

(declare-fun bm!506878 () Bool)

(declare-fun call!506884 () Bool)

(assert (=> bm!506878 (= call!506884 call!506883)))

(declare-fun bm!506879 () Bool)

(assert (=> bm!506879 (= call!506882 (validRegex!7802 (ite c!1099820 (regOne!32645 r!7292) (regOne!32644 r!7292))))))

(declare-fun b!6120011 () Bool)

(declare-fun e!3731035 () Bool)

(assert (=> b!6120011 (= e!3731032 e!3731035)))

(assert (=> b!6120011 (= c!1099821 (is-Star!16066 r!7292))))

(declare-fun b!6120012 () Bool)

(declare-fun e!3731031 () Bool)

(assert (=> b!6120012 (= e!3731035 e!3731031)))

(declare-fun res!2537517 () Bool)

(assert (=> b!6120012 (= res!2537517 (not (nullable!6059 (reg!16395 r!7292))))))

(assert (=> b!6120012 (=> (not res!2537517) (not e!3731031))))

(declare-fun b!6120013 () Bool)

(declare-fun e!3731036 () Bool)

(declare-fun e!3731030 () Bool)

(assert (=> b!6120013 (= e!3731036 e!3731030)))

(declare-fun res!2537518 () Bool)

(assert (=> b!6120013 (=> (not res!2537518) (not e!3731030))))

(assert (=> b!6120013 (= res!2537518 call!506882)))

(declare-fun b!6120014 () Bool)

(assert (=> b!6120014 (= e!3731035 e!3731033)))

(assert (=> b!6120014 (= c!1099820 (is-Union!16066 r!7292))))

(declare-fun b!6120015 () Bool)

(declare-fun res!2537514 () Bool)

(assert (=> b!6120015 (=> res!2537514 e!3731036)))

(assert (=> b!6120015 (= res!2537514 (not (is-Concat!24911 r!7292)))))

(assert (=> b!6120015 (= e!3731033 e!3731036)))

(declare-fun b!6120016 () Bool)

(assert (=> b!6120016 (= e!3731031 call!506883)))

(declare-fun b!6120017 () Bool)

(assert (=> b!6120017 (= e!3731034 call!506884)))

(declare-fun b!6120018 () Bool)

(assert (=> b!6120018 (= e!3731030 call!506884)))

(assert (= (and d!1917541 (not res!2537516)) b!6120011))

(assert (= (and b!6120011 c!1099821) b!6120012))

(assert (= (and b!6120011 (not c!1099821)) b!6120014))

(assert (= (and b!6120012 res!2537517) b!6120016))

(assert (= (and b!6120014 c!1099820) b!6120010))

(assert (= (and b!6120014 (not c!1099820)) b!6120015))

(assert (= (and b!6120010 res!2537515) b!6120017))

(assert (= (and b!6120015 (not res!2537514)) b!6120013))

(assert (= (and b!6120013 res!2537518) b!6120018))

(assert (= (or b!6120017 b!6120018) bm!506878))

(assert (= (or b!6120010 b!6120013) bm!506879))

(assert (= (or b!6120016 bm!506878) bm!506877))

(declare-fun m!6966438 () Bool)

(assert (=> bm!506877 m!6966438))

(declare-fun m!6966440 () Bool)

(assert (=> bm!506879 m!6966440))

(declare-fun m!6966442 () Bool)

(assert (=> b!6120012 m!6966442))

(assert (=> start!611416 d!1917541))

(declare-fun b!6120023 () Bool)

(declare-fun e!3731039 () Bool)

(declare-fun tp!1709815 () Bool)

(declare-fun tp!1709816 () Bool)

(assert (=> b!6120023 (= e!3731039 (and tp!1709815 tp!1709816))))

(assert (=> b!6119290 (= tp!1709779 e!3731039)))

(assert (= (and b!6119290 (is-Cons!64373 (exprs!5950 (h!70822 zl!343)))) b!6120023))

(declare-fun b!6120028 () Bool)

(declare-fun e!3731042 () Bool)

(declare-fun tp!1709819 () Bool)

(assert (=> b!6120028 (= e!3731042 (and tp_is_empty!41385 tp!1709819))))

(assert (=> b!6119296 (= tp!1709780 e!3731042)))

(assert (= (and b!6119296 (is-Cons!64375 (t!377960 s!2326))) b!6120028))

(declare-fun b!6120042 () Bool)

(declare-fun e!3731045 () Bool)

(declare-fun tp!1709832 () Bool)

(declare-fun tp!1709830 () Bool)

(assert (=> b!6120042 (= e!3731045 (and tp!1709832 tp!1709830))))

(declare-fun b!6120041 () Bool)

(declare-fun tp!1709831 () Bool)

(assert (=> b!6120041 (= e!3731045 tp!1709831)))

(declare-fun b!6120039 () Bool)

(assert (=> b!6120039 (= e!3731045 tp_is_empty!41385)))

(assert (=> b!6119286 (= tp!1709772 e!3731045)))

(declare-fun b!6120040 () Bool)

(declare-fun tp!1709834 () Bool)

(declare-fun tp!1709833 () Bool)

(assert (=> b!6120040 (= e!3731045 (and tp!1709834 tp!1709833))))

(assert (= (and b!6119286 (is-ElementMatch!16066 (reg!16395 r!7292))) b!6120039))

(assert (= (and b!6119286 (is-Concat!24911 (reg!16395 r!7292))) b!6120040))

(assert (= (and b!6119286 (is-Star!16066 (reg!16395 r!7292))) b!6120041))

(assert (= (and b!6119286 (is-Union!16066 (reg!16395 r!7292))) b!6120042))

(declare-fun b!6120046 () Bool)

(declare-fun e!3731046 () Bool)

(declare-fun tp!1709837 () Bool)

(declare-fun tp!1709835 () Bool)

(assert (=> b!6120046 (= e!3731046 (and tp!1709837 tp!1709835))))

(declare-fun b!6120045 () Bool)

(declare-fun tp!1709836 () Bool)

(assert (=> b!6120045 (= e!3731046 tp!1709836)))

(declare-fun b!6120043 () Bool)

(assert (=> b!6120043 (= e!3731046 tp_is_empty!41385)))

(assert (=> b!6119287 (= tp!1709777 e!3731046)))

(declare-fun b!6120044 () Bool)

(declare-fun tp!1709839 () Bool)

(declare-fun tp!1709838 () Bool)

(assert (=> b!6120044 (= e!3731046 (and tp!1709839 tp!1709838))))

(assert (= (and b!6119287 (is-ElementMatch!16066 (regOne!32645 r!7292))) b!6120043))

(assert (= (and b!6119287 (is-Concat!24911 (regOne!32645 r!7292))) b!6120044))

(assert (= (and b!6119287 (is-Star!16066 (regOne!32645 r!7292))) b!6120045))

(assert (= (and b!6119287 (is-Union!16066 (regOne!32645 r!7292))) b!6120046))

(declare-fun b!6120050 () Bool)

(declare-fun e!3731047 () Bool)

(declare-fun tp!1709842 () Bool)

(declare-fun tp!1709840 () Bool)

(assert (=> b!6120050 (= e!3731047 (and tp!1709842 tp!1709840))))

(declare-fun b!6120049 () Bool)

(declare-fun tp!1709841 () Bool)

(assert (=> b!6120049 (= e!3731047 tp!1709841)))

(declare-fun b!6120047 () Bool)

(assert (=> b!6120047 (= e!3731047 tp_is_empty!41385)))

(assert (=> b!6119287 (= tp!1709771 e!3731047)))

(declare-fun b!6120048 () Bool)

(declare-fun tp!1709844 () Bool)

(declare-fun tp!1709843 () Bool)

(assert (=> b!6120048 (= e!3731047 (and tp!1709844 tp!1709843))))

(assert (= (and b!6119287 (is-ElementMatch!16066 (regTwo!32645 r!7292))) b!6120047))

(assert (= (and b!6119287 (is-Concat!24911 (regTwo!32645 r!7292))) b!6120048))

(assert (= (and b!6119287 (is-Star!16066 (regTwo!32645 r!7292))) b!6120049))

(assert (= (and b!6119287 (is-Union!16066 (regTwo!32645 r!7292))) b!6120050))

(declare-fun condSetEmpty!41355 () Bool)

(assert (=> setNonEmpty!41349 (= condSetEmpty!41355 (= setRest!41349 (as set.empty (Set Context!10900))))))

(declare-fun setRes!41355 () Bool)

(assert (=> setNonEmpty!41349 (= tp!1709778 setRes!41355)))

(declare-fun setIsEmpty!41355 () Bool)

(assert (=> setIsEmpty!41355 setRes!41355))

(declare-fun setElem!41355 () Context!10900)

(declare-fun tp!1709850 () Bool)

(declare-fun e!3731050 () Bool)

(declare-fun setNonEmpty!41355 () Bool)

(assert (=> setNonEmpty!41355 (= setRes!41355 (and tp!1709850 (inv!83413 setElem!41355) e!3731050))))

(declare-fun setRest!41355 () (Set Context!10900))

(assert (=> setNonEmpty!41355 (= setRest!41349 (set.union (set.insert setElem!41355 (as set.empty (Set Context!10900))) setRest!41355))))

(declare-fun b!6120055 () Bool)

(declare-fun tp!1709849 () Bool)

(assert (=> b!6120055 (= e!3731050 tp!1709849)))

(assert (= (and setNonEmpty!41349 condSetEmpty!41355) setIsEmpty!41355))

(assert (= (and setNonEmpty!41349 (not condSetEmpty!41355)) setNonEmpty!41355))

(assert (= setNonEmpty!41355 b!6120055))

(declare-fun m!6966444 () Bool)

(assert (=> setNonEmpty!41355 m!6966444))

(declare-fun b!6120058 () Bool)

(declare-fun e!3731053 () Bool)

(declare-fun tp!1709851 () Bool)

(declare-fun tp!1709852 () Bool)

(assert (=> b!6120058 (= e!3731053 (and tp!1709851 tp!1709852))))

(assert (=> b!6119304 (= tp!1709775 e!3731053)))

(assert (= (and b!6119304 (is-Cons!64373 (exprs!5950 setElem!41349))) b!6120058))

(declare-fun b!6120068 () Bool)

(declare-fun e!3731059 () Bool)

(declare-fun tp!1709857 () Bool)

(assert (=> b!6120068 (= e!3731059 tp!1709857)))

(declare-fun e!3731058 () Bool)

(declare-fun b!6120067 () Bool)

(declare-fun tp!1709858 () Bool)

(assert (=> b!6120067 (= e!3731058 (and (inv!83413 (h!70822 (t!377959 zl!343))) e!3731059 tp!1709858))))

(assert (=> b!6119295 (= tp!1709774 e!3731058)))

(assert (= b!6120067 b!6120068))

(assert (= (and b!6119295 (is-Cons!64374 (t!377959 zl!343))) b!6120067))

(declare-fun m!6966446 () Bool)

(assert (=> b!6120067 m!6966446))

(declare-fun b!6120072 () Bool)

(declare-fun e!3731060 () Bool)

(declare-fun tp!1709861 () Bool)

(declare-fun tp!1709859 () Bool)

(assert (=> b!6120072 (= e!3731060 (and tp!1709861 tp!1709859))))

(declare-fun b!6120071 () Bool)

(declare-fun tp!1709860 () Bool)

(assert (=> b!6120071 (= e!3731060 tp!1709860)))

(declare-fun b!6120069 () Bool)

(assert (=> b!6120069 (= e!3731060 tp_is_empty!41385)))

(assert (=> b!6119284 (= tp!1709776 e!3731060)))

(declare-fun b!6120070 () Bool)

(declare-fun tp!1709863 () Bool)

(declare-fun tp!1709862 () Bool)

(assert (=> b!6120070 (= e!3731060 (and tp!1709863 tp!1709862))))

(assert (= (and b!6119284 (is-ElementMatch!16066 (regOne!32644 r!7292))) b!6120069))

(assert (= (and b!6119284 (is-Concat!24911 (regOne!32644 r!7292))) b!6120070))

(assert (= (and b!6119284 (is-Star!16066 (regOne!32644 r!7292))) b!6120071))

(assert (= (and b!6119284 (is-Union!16066 (regOne!32644 r!7292))) b!6120072))

(declare-fun b!6120076 () Bool)

(declare-fun e!3731061 () Bool)

(declare-fun tp!1709866 () Bool)

(declare-fun tp!1709864 () Bool)

(assert (=> b!6120076 (= e!3731061 (and tp!1709866 tp!1709864))))

(declare-fun b!6120075 () Bool)

(declare-fun tp!1709865 () Bool)

(assert (=> b!6120075 (= e!3731061 tp!1709865)))

(declare-fun b!6120073 () Bool)

(assert (=> b!6120073 (= e!3731061 tp_is_empty!41385)))

(assert (=> b!6119284 (= tp!1709773 e!3731061)))

(declare-fun b!6120074 () Bool)

(declare-fun tp!1709868 () Bool)

(declare-fun tp!1709867 () Bool)

(assert (=> b!6120074 (= e!3731061 (and tp!1709868 tp!1709867))))

(assert (= (and b!6119284 (is-ElementMatch!16066 (regTwo!32644 r!7292))) b!6120073))

(assert (= (and b!6119284 (is-Concat!24911 (regTwo!32644 r!7292))) b!6120074))

(assert (= (and b!6119284 (is-Star!16066 (regTwo!32644 r!7292))) b!6120075))

(assert (= (and b!6119284 (is-Union!16066 (regTwo!32644 r!7292))) b!6120076))

(declare-fun b_lambda!233021 () Bool)

(assert (= b_lambda!233017 (or b!6119302 b_lambda!233021)))

(declare-fun bs!1518506 () Bool)

(declare-fun d!1917543 () Bool)

(assert (= bs!1518506 (and d!1917543 b!6119302)))

(assert (=> bs!1518506 (= (dynLambda!25353 lambda!333340 (h!70822 zl!343)) (derivationStepZipperUp!1240 (h!70822 zl!343) (h!70823 s!2326)))))

(assert (=> bs!1518506 m!6965930))

(assert (=> d!1917441 d!1917543))

(push 1)

(assert (not b!6120044))

(assert (not b!6119935))

(assert (not b!6119591))

(assert (not b!6119713))

(assert (not b!6119710))

(assert (not b!6120042))

(assert (not d!1917465))

(assert (not d!1917479))

(assert (not b!6119692))

(assert (not b!6120068))

(assert (not bm!506794))

(assert (not b!6119711))

(assert (not b!6119441))

(assert (not b!6120045))

(assert (not b!6119993))

(assert (not b!6119775))

(assert (not b!6119679))

(assert (not d!1917501))

(assert (not b!6119988))

(assert (not b!6119651))

(assert (not bs!1518506))

(assert (not b!6119466))

(assert (not b!6119435))

(assert (not d!1917441))

(assert tp_is_empty!41385)

(assert (not b!6119442))

(assert (not b!6119936))

(assert (not b!6119447))

(assert (not d!1917473))

(assert (not b!6119412))

(assert (not bm!506828))

(assert (not d!1917423))

(assert (not b!6119707))

(assert (not b!6119774))

(assert (not b!6120058))

(assert (not b!6119477))

(assert (not d!1917485))

(assert (not b!6119990))

(assert (not b!6120050))

(assert (not b!6119653))

(assert (not d!1917493))

(assert (not bm!506825))

(assert (not b!6120028))

(assert (not b!6120048))

(assert (not b!6119565))

(assert (not d!1917509))

(assert (not b!6119708))

(assert (not b!6119541))

(assert (not b!6119674))

(assert (not d!1917533))

(assert (not b!6120023))

(assert (not d!1917477))

(assert (not b!6120071))

(assert (not b!6119564))

(assert (not b!6119777))

(assert (not b!6120049))

(assert (not d!1917469))

(assert (not b!6119714))

(assert (not b!6119776))

(assert (not b!6119542))

(assert (not d!1917431))

(assert (not d!1917447))

(assert (not b!6120055))

(assert (not d!1917531))

(assert (not b_lambda!233021))

(assert (not b!6119772))

(assert (not d!1917421))

(assert (not b!6119538))

(assert (not b!6119691))

(assert (not bm!506829))

(assert (not b!6119987))

(assert (not b!6120074))

(assert (not b!6119680))

(assert (not b!6120040))

(assert (not b!6120070))

(assert (not bm!506844))

(assert (not b!6119992))

(assert (not b!6120072))

(assert (not d!1917463))

(assert (not b!6119440))

(assert (not setNonEmpty!41355))

(assert (not b!6120046))

(assert (not bm!506872))

(assert (not b!6119476))

(assert (not d!1917495))

(assert (not b!6119998))

(assert (not b!6119465))

(assert (not b!6119712))

(assert (not b!6119438))

(assert (not b!6120041))

(assert (not d!1917461))

(assert (not b!6119671))

(assert (not b!6120012))

(assert (not b!6119437))

(assert (not d!1917417))

(assert (not b!6120076))

(assert (not b!6119650))

(assert (not d!1917425))

(assert (not b!6119654))

(assert (not d!1917475))

(assert (not bm!506873))

(assert (not b!6119656))

(assert (not b!6120067))

(assert (not bm!506797))

(assert (not bm!506876))

(assert (not b!6119657))

(assert (not d!1917507))

(assert (not b!6119773))

(assert (not bm!506846))

(assert (not d!1917467))

(assert (not bm!506824))

(assert (not b!6120075))

(assert (not bm!506879))

(assert (not b!6119655))

(assert (not b!6119434))

(assert (not bm!506877))

(assert (not d!1917481))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1917557 () Bool)

(assert (=> d!1917557 (= (isEmpty!36307 (t!377958 (t!377958 (exprs!5950 (h!70822 zl!343))))) (is-Nil!64373 (t!377958 (t!377958 (exprs!5950 (h!70822 zl!343))))))))

(assert (=> b!6119650 d!1917557))

(declare-fun bs!1518519 () Bool)

(declare-fun d!1917559 () Bool)

(assert (= bs!1518519 (and d!1917559 d!1917461)))

(declare-fun lambda!333410 () Int)

(assert (=> bs!1518519 (= lambda!333410 lambda!333367)))

(declare-fun bs!1518520 () Bool)

(assert (= bs!1518520 (and d!1917559 d!1917467)))

(assert (=> bs!1518520 (= lambda!333410 lambda!333372)))

(declare-fun bs!1518521 () Bool)

(assert (= bs!1518521 (and d!1917559 d!1917423)))

(assert (=> bs!1518521 (= lambda!333410 lambda!333357)))

(declare-fun bs!1518522 () Bool)

(assert (= bs!1518522 (and d!1917559 d!1917463)))

(assert (=> bs!1518522 (= lambda!333410 lambda!333370)))

(declare-fun bs!1518523 () Bool)

(assert (= bs!1518523 (and d!1917559 d!1917421)))

(assert (=> bs!1518523 (= lambda!333410 lambda!333354)))

(declare-fun bs!1518524 () Bool)

(assert (= bs!1518524 (and d!1917559 d!1917479)))

(assert (=> bs!1518524 (= lambda!333410 lambda!333374)))

(declare-fun b!6120140 () Bool)

(declare-fun e!3731093 () Regex!16066)

(assert (=> b!6120140 (= e!3731093 (h!70821 (t!377958 (unfocusZipperList!1487 zl!343))))))

(declare-fun b!6120141 () Bool)

(declare-fun e!3731095 () Bool)

(assert (=> b!6120141 (= e!3731095 (isEmpty!36307 (t!377958 (t!377958 (unfocusZipperList!1487 zl!343)))))))

(declare-fun b!6120142 () Bool)

(declare-fun e!3731092 () Bool)

(declare-fun lt!2330935 () Regex!16066)

(assert (=> b!6120142 (= e!3731092 (isUnion!923 lt!2330935))))

(declare-fun b!6120143 () Bool)

(declare-fun e!3731094 () Regex!16066)

(assert (=> b!6120143 (= e!3731094 EmptyLang!16066)))

(declare-fun b!6120144 () Bool)

(assert (=> b!6120144 (= e!3731092 (= lt!2330935 (head!12653 (t!377958 (unfocusZipperList!1487 zl!343)))))))

(declare-fun e!3731091 () Bool)

(assert (=> d!1917559 e!3731091))

(declare-fun res!2537533 () Bool)

(assert (=> d!1917559 (=> (not res!2537533) (not e!3731091))))

(assert (=> d!1917559 (= res!2537533 (validRegex!7802 lt!2330935))))

(assert (=> d!1917559 (= lt!2330935 e!3731093)))

(declare-fun c!1099825 () Bool)

(assert (=> d!1917559 (= c!1099825 e!3731095)))

(declare-fun res!2537532 () Bool)

(assert (=> d!1917559 (=> (not res!2537532) (not e!3731095))))

(assert (=> d!1917559 (= res!2537532 (is-Cons!64373 (t!377958 (unfocusZipperList!1487 zl!343))))))

(assert (=> d!1917559 (forall!15187 (t!377958 (unfocusZipperList!1487 zl!343)) lambda!333410)))

(assert (=> d!1917559 (= (generalisedUnion!1910 (t!377958 (unfocusZipperList!1487 zl!343))) lt!2330935)))

(declare-fun b!6120145 () Bool)

(declare-fun e!3731090 () Bool)

(assert (=> b!6120145 (= e!3731091 e!3731090)))

(declare-fun c!1099822 () Bool)

(assert (=> b!6120145 (= c!1099822 (isEmpty!36307 (t!377958 (unfocusZipperList!1487 zl!343))))))

(declare-fun b!6120146 () Bool)

(assert (=> b!6120146 (= e!3731093 e!3731094)))

(declare-fun c!1099824 () Bool)

(assert (=> b!6120146 (= c!1099824 (is-Cons!64373 (t!377958 (unfocusZipperList!1487 zl!343))))))

(declare-fun b!6120147 () Bool)

(assert (=> b!6120147 (= e!3731090 e!3731092)))

(declare-fun c!1099823 () Bool)

(assert (=> b!6120147 (= c!1099823 (isEmpty!36307 (tail!11738 (t!377958 (unfocusZipperList!1487 zl!343)))))))

(declare-fun b!6120148 () Bool)

(assert (=> b!6120148 (= e!3731090 (isEmptyLang!1493 lt!2330935))))

(declare-fun b!6120149 () Bool)

(assert (=> b!6120149 (= e!3731094 (Union!16066 (h!70821 (t!377958 (unfocusZipperList!1487 zl!343))) (generalisedUnion!1910 (t!377958 (t!377958 (unfocusZipperList!1487 zl!343))))))))

(assert (= (and d!1917559 res!2537532) b!6120141))

(assert (= (and d!1917559 c!1099825) b!6120140))

(assert (= (and d!1917559 (not c!1099825)) b!6120146))

(assert (= (and b!6120146 c!1099824) b!6120149))

(assert (= (and b!6120146 (not c!1099824)) b!6120143))

(assert (= (and d!1917559 res!2537533) b!6120145))

(assert (= (and b!6120145 c!1099822) b!6120148))

(assert (= (and b!6120145 (not c!1099822)) b!6120147))

(assert (= (and b!6120147 c!1099823) b!6120144))

(assert (= (and b!6120147 (not c!1099823)) b!6120142))

(declare-fun m!6966472 () Bool)

(assert (=> d!1917559 m!6966472))

(declare-fun m!6966474 () Bool)

(assert (=> d!1917559 m!6966474))

(declare-fun m!6966476 () Bool)

(assert (=> b!6120141 m!6966476))

(declare-fun m!6966478 () Bool)

(assert (=> b!6120149 m!6966478))

(declare-fun m!6966480 () Bool)

(assert (=> b!6120142 m!6966480))

(declare-fun m!6966482 () Bool)

(assert (=> b!6120144 m!6966482))

(declare-fun m!6966484 () Bool)

(assert (=> b!6120148 m!6966484))

(assert (=> b!6120145 m!6966042))

(declare-fun m!6966486 () Bool)

(assert (=> b!6120147 m!6966486))

(assert (=> b!6120147 m!6966486))

(declare-fun m!6966488 () Bool)

(assert (=> b!6120147 m!6966488))

(assert (=> b!6119442 d!1917559))

(assert (=> b!6119707 d!1917483))

(declare-fun d!1917561 () Bool)

(assert (=> d!1917561 (= (head!12654 s!2326) (h!70823 s!2326))))

(assert (=> b!6119992 d!1917561))

(declare-fun d!1917563 () Bool)

(declare-fun c!1099828 () Bool)

(assert (=> d!1917563 (= c!1099828 (is-Nil!64374 lt!2330847))))

(declare-fun e!3731098 () (Set Context!10900))

(assert (=> d!1917563 (= (content!11956 lt!2330847) e!3731098)))

(declare-fun b!6120154 () Bool)

(assert (=> b!6120154 (= e!3731098 (as set.empty (Set Context!10900)))))

(declare-fun b!6120155 () Bool)

(assert (=> b!6120155 (= e!3731098 (set.union (set.insert (h!70822 lt!2330847) (as set.empty (Set Context!10900))) (content!11956 (t!377959 lt!2330847))))))

(assert (= (and d!1917563 c!1099828) b!6120154))

(assert (= (and d!1917563 (not c!1099828)) b!6120155))

(declare-fun m!6966490 () Bool)

(assert (=> b!6120155 m!6966490))

(declare-fun m!6966492 () Bool)

(assert (=> b!6120155 m!6966492))

(assert (=> b!6119412 d!1917563))

(declare-fun d!1917565 () Bool)

(declare-fun res!2537538 () Bool)

(declare-fun e!3731103 () Bool)

(assert (=> d!1917565 (=> res!2537538 e!3731103)))

(assert (=> d!1917565 (= res!2537538 (is-Nil!64373 lt!2330853))))

(assert (=> d!1917565 (= (forall!15187 lt!2330853 lambda!333357) e!3731103)))

(declare-fun b!6120160 () Bool)

(declare-fun e!3731104 () Bool)

(assert (=> b!6120160 (= e!3731103 e!3731104)))

(declare-fun res!2537539 () Bool)

(assert (=> b!6120160 (=> (not res!2537539) (not e!3731104))))

(declare-fun dynLambda!25355 (Int Regex!16066) Bool)

(assert (=> b!6120160 (= res!2537539 (dynLambda!25355 lambda!333357 (h!70821 lt!2330853)))))

(declare-fun b!6120161 () Bool)

(assert (=> b!6120161 (= e!3731104 (forall!15187 (t!377958 lt!2330853) lambda!333357))))

(assert (= (and d!1917565 (not res!2537538)) b!6120160))

(assert (= (and b!6120160 res!2537539) b!6120161))

(declare-fun b_lambda!233025 () Bool)

(assert (=> (not b_lambda!233025) (not b!6120160)))

(declare-fun m!6966494 () Bool)

(assert (=> b!6120160 m!6966494))

(declare-fun m!6966496 () Bool)

(assert (=> b!6120161 m!6966496))

(assert (=> d!1917423 d!1917565))

(declare-fun b!6120162 () Bool)

(declare-fun e!3731105 () (Set Context!10900))

(assert (=> b!6120162 (= e!3731105 (as set.empty (Set Context!10900)))))

(declare-fun bm!506880 () Bool)

(declare-fun call!506885 () (Set Context!10900))

(assert (=> bm!506880 (= call!506885 (derivationStepZipperDown!1314 (h!70821 (exprs!5950 (Context!10901 (t!377958 (exprs!5950 lt!2330795))))) (Context!10901 (t!377958 (exprs!5950 (Context!10901 (t!377958 (exprs!5950 lt!2330795)))))) (h!70823 s!2326)))))

(declare-fun b!6120163 () Bool)

(assert (=> b!6120163 (= e!3731105 call!506885)))

(declare-fun d!1917567 () Bool)

(declare-fun c!1099830 () Bool)

(declare-fun e!3731107 () Bool)

(assert (=> d!1917567 (= c!1099830 e!3731107)))

(declare-fun res!2537540 () Bool)

(assert (=> d!1917567 (=> (not res!2537540) (not e!3731107))))

(assert (=> d!1917567 (= res!2537540 (is-Cons!64373 (exprs!5950 (Context!10901 (t!377958 (exprs!5950 lt!2330795))))))))

(declare-fun e!3731106 () (Set Context!10900))

(assert (=> d!1917567 (= (derivationStepZipperUp!1240 (Context!10901 (t!377958 (exprs!5950 lt!2330795))) (h!70823 s!2326)) e!3731106)))

(declare-fun b!6120164 () Bool)

(assert (=> b!6120164 (= e!3731107 (nullable!6059 (h!70821 (exprs!5950 (Context!10901 (t!377958 (exprs!5950 lt!2330795)))))))))

(declare-fun b!6120165 () Bool)

(assert (=> b!6120165 (= e!3731106 (set.union call!506885 (derivationStepZipperUp!1240 (Context!10901 (t!377958 (exprs!5950 (Context!10901 (t!377958 (exprs!5950 lt!2330795)))))) (h!70823 s!2326))))))

(declare-fun b!6120166 () Bool)

(assert (=> b!6120166 (= e!3731106 e!3731105)))

(declare-fun c!1099829 () Bool)

(assert (=> b!6120166 (= c!1099829 (is-Cons!64373 (exprs!5950 (Context!10901 (t!377958 (exprs!5950 lt!2330795))))))))

(assert (= (and d!1917567 res!2537540) b!6120164))

(assert (= (and d!1917567 c!1099830) b!6120165))

(assert (= (and d!1917567 (not c!1099830)) b!6120166))

(assert (= (and b!6120166 c!1099829) b!6120163))

(assert (= (and b!6120166 (not c!1099829)) b!6120162))

(assert (= (or b!6120165 b!6120163) bm!506880))

(declare-fun m!6966498 () Bool)

(assert (=> bm!506880 m!6966498))

(declare-fun m!6966500 () Bool)

(assert (=> b!6120164 m!6966500))

(declare-fun m!6966502 () Bool)

(assert (=> b!6120165 m!6966502))

(assert (=> b!6119466 d!1917567))

(declare-fun d!1917569 () Bool)

(assert (=> d!1917569 (= (isEmpty!36310 s!2326) (is-Nil!64375 s!2326))))

(assert (=> bm!506876 d!1917569))

(declare-fun bm!506881 () Bool)

(declare-fun call!506888 () (Set Context!10900))

(declare-fun call!506890 () (Set Context!10900))

(assert (=> bm!506881 (= call!506888 call!506890)))

(declare-fun b!6120167 () Bool)

(declare-fun e!3731109 () (Set Context!10900))

(declare-fun e!3731108 () (Set Context!10900))

(assert (=> b!6120167 (= e!3731109 e!3731108)))

(declare-fun c!1099835 () Bool)

(assert (=> b!6120167 (= c!1099835 (is-Concat!24911 (h!70821 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343)))))))))))

(declare-fun b!6120168 () Bool)

(assert (=> b!6120168 (= e!3731108 call!506888)))

(declare-fun d!1917571 () Bool)

(declare-fun c!1099831 () Bool)

(assert (=> d!1917571 (= c!1099831 (and (is-ElementMatch!16066 (h!70821 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343)))))))) (= (c!1099622 (h!70821 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343)))))))) (h!70823 s!2326))))))

(declare-fun e!3731111 () (Set Context!10900))

(assert (=> d!1917571 (= (derivationStepZipperDown!1314 (h!70821 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343))))))) (Context!10901 (t!377958 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343)))))))) (h!70823 s!2326)) e!3731111)))

(declare-fun b!6120169 () Bool)

(declare-fun e!3731113 () (Set Context!10900))

(assert (=> b!6120169 (= e!3731111 e!3731113)))

(declare-fun c!1099834 () Bool)

(assert (=> b!6120169 (= c!1099834 (is-Union!16066 (h!70821 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343)))))))))))

(declare-fun b!6120170 () Bool)

(declare-fun c!1099833 () Bool)

(assert (=> b!6120170 (= c!1099833 (is-Star!16066 (h!70821 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343)))))))))))

(declare-fun e!3731112 () (Set Context!10900))

(assert (=> b!6120170 (= e!3731108 e!3731112)))

(declare-fun b!6120171 () Bool)

(declare-fun call!506891 () (Set Context!10900))

(declare-fun call!506886 () (Set Context!10900))

(assert (=> b!6120171 (= e!3731113 (set.union call!506891 call!506886))))

(declare-fun b!6120172 () Bool)

(assert (=> b!6120172 (= e!3731112 call!506888)))

(declare-fun c!1099832 () Bool)

(declare-fun call!506889 () List!64497)

(declare-fun bm!506882 () Bool)

(assert (=> bm!506882 (= call!506889 ($colon$colon!1943 (exprs!5950 (Context!10901 (t!377958 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343))))))))) (ite (or c!1099832 c!1099835) (regTwo!32644 (h!70821 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343)))))))) (h!70821 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343))))))))))))

(declare-fun b!6120173 () Bool)

(assert (=> b!6120173 (= e!3731111 (set.insert (Context!10901 (t!377958 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343)))))))) (as set.empty (Set Context!10900))))))

(declare-fun bm!506883 () Bool)

(assert (=> bm!506883 (= call!506891 (derivationStepZipperDown!1314 (ite c!1099834 (regOne!32645 (h!70821 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343)))))))) (regOne!32644 (h!70821 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343))))))))) (ite c!1099834 (Context!10901 (t!377958 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343)))))))) (Context!10901 call!506889)) (h!70823 s!2326)))))

(declare-fun bm!506884 () Bool)

(declare-fun call!506887 () List!64497)

(assert (=> bm!506884 (= call!506887 call!506889)))

(declare-fun b!6120174 () Bool)

(assert (=> b!6120174 (= e!3731109 (set.union call!506891 call!506890))))

(declare-fun b!6120175 () Bool)

(assert (=> b!6120175 (= e!3731112 (as set.empty (Set Context!10900)))))

(declare-fun bm!506885 () Bool)

(assert (=> bm!506885 (= call!506890 call!506886)))

(declare-fun b!6120176 () Bool)

(declare-fun e!3731110 () Bool)

(assert (=> b!6120176 (= c!1099832 e!3731110)))

(declare-fun res!2537541 () Bool)

(assert (=> b!6120176 (=> (not res!2537541) (not e!3731110))))

(assert (=> b!6120176 (= res!2537541 (is-Concat!24911 (h!70821 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343)))))))))))

(assert (=> b!6120176 (= e!3731113 e!3731109)))

(declare-fun bm!506886 () Bool)

(assert (=> bm!506886 (= call!506886 (derivationStepZipperDown!1314 (ite c!1099834 (regTwo!32645 (h!70821 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343)))))))) (ite c!1099832 (regTwo!32644 (h!70821 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343)))))))) (ite c!1099835 (regOne!32644 (h!70821 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343)))))))) (reg!16395 (h!70821 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343))))))))))) (ite (or c!1099834 c!1099832) (Context!10901 (t!377958 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343)))))))) (Context!10901 call!506887)) (h!70823 s!2326)))))

(declare-fun b!6120177 () Bool)

(assert (=> b!6120177 (= e!3731110 (nullable!6059 (regOne!32644 (h!70821 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343))))))))))))

(assert (= (and d!1917571 c!1099831) b!6120173))

(assert (= (and d!1917571 (not c!1099831)) b!6120169))

(assert (= (and b!6120169 c!1099834) b!6120171))

(assert (= (and b!6120169 (not c!1099834)) b!6120176))

(assert (= (and b!6120176 res!2537541) b!6120177))

(assert (= (and b!6120176 c!1099832) b!6120174))

(assert (= (and b!6120176 (not c!1099832)) b!6120167))

(assert (= (and b!6120167 c!1099835) b!6120168))

(assert (= (and b!6120167 (not c!1099835)) b!6120170))

(assert (= (and b!6120170 c!1099833) b!6120172))

(assert (= (and b!6120170 (not c!1099833)) b!6120175))

(assert (= (or b!6120168 b!6120172) bm!506884))

(assert (= (or b!6120168 b!6120172) bm!506881))

(assert (= (or b!6120174 bm!506884) bm!506882))

(assert (= (or b!6120174 bm!506881) bm!506885))

(assert (= (or b!6120171 bm!506885) bm!506886))

(assert (= (or b!6120171 b!6120174) bm!506883))

(declare-fun m!6966504 () Bool)

(assert (=> bm!506883 m!6966504))

(declare-fun m!6966506 () Bool)

(assert (=> bm!506882 m!6966506))

(declare-fun m!6966508 () Bool)

(assert (=> bm!506886 m!6966508))

(declare-fun m!6966510 () Bool)

(assert (=> b!6120173 m!6966510))

(declare-fun m!6966512 () Bool)

(assert (=> b!6120177 m!6966512))

(assert (=> bm!506797 d!1917571))

(declare-fun bm!506891 () Bool)

(declare-fun call!506896 () Bool)

(declare-fun c!1099838 () Bool)

(assert (=> bm!506891 (= call!506896 (nullable!6059 (ite c!1099838 (regOne!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))))))))

(declare-fun d!1917573 () Bool)

(declare-fun res!2537556 () Bool)

(declare-fun e!3731129 () Bool)

(assert (=> d!1917573 (=> res!2537556 e!3731129)))

(assert (=> d!1917573 (= res!2537556 (is-EmptyExpr!16066 (h!70821 (exprs!5950 (h!70822 zl!343)))))))

(assert (=> d!1917573 (= (nullableFct!2023 (h!70821 (exprs!5950 (h!70822 zl!343)))) e!3731129)))

(declare-fun bm!506892 () Bool)

(declare-fun call!506897 () Bool)

(assert (=> bm!506892 (= call!506897 (nullable!6059 (ite c!1099838 (regTwo!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (regTwo!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))))))))

(declare-fun b!6120192 () Bool)

(declare-fun e!3731126 () Bool)

(declare-fun e!3731131 () Bool)

(assert (=> b!6120192 (= e!3731126 e!3731131)))

(declare-fun res!2537554 () Bool)

(assert (=> b!6120192 (=> res!2537554 e!3731131)))

(assert (=> b!6120192 (= res!2537554 (is-Star!16066 (h!70821 (exprs!5950 (h!70822 zl!343)))))))

(declare-fun b!6120193 () Bool)

(declare-fun e!3731130 () Bool)

(declare-fun e!3731127 () Bool)

(assert (=> b!6120193 (= e!3731130 e!3731127)))

(declare-fun res!2537552 () Bool)

(assert (=> b!6120193 (= res!2537552 call!506896)))

(assert (=> b!6120193 (=> res!2537552 e!3731127)))

(declare-fun b!6120194 () Bool)

(assert (=> b!6120194 (= e!3731129 e!3731126)))

(declare-fun res!2537555 () Bool)

(assert (=> b!6120194 (=> (not res!2537555) (not e!3731126))))

(assert (=> b!6120194 (= res!2537555 (and (not (is-EmptyLang!16066 (h!70821 (exprs!5950 (h!70822 zl!343))))) (not (is-ElementMatch!16066 (h!70821 (exprs!5950 (h!70822 zl!343)))))))))

(declare-fun b!6120195 () Bool)

(assert (=> b!6120195 (= e!3731131 e!3731130)))

(assert (=> b!6120195 (= c!1099838 (is-Union!16066 (h!70821 (exprs!5950 (h!70822 zl!343)))))))

(declare-fun b!6120196 () Bool)

(declare-fun e!3731128 () Bool)

(assert (=> b!6120196 (= e!3731130 e!3731128)))

(declare-fun res!2537553 () Bool)

(assert (=> b!6120196 (= res!2537553 call!506896)))

(assert (=> b!6120196 (=> (not res!2537553) (not e!3731128))))

(declare-fun b!6120197 () Bool)

(assert (=> b!6120197 (= e!3731127 call!506897)))

(declare-fun b!6120198 () Bool)

(assert (=> b!6120198 (= e!3731128 call!506897)))

(assert (= (and d!1917573 (not res!2537556)) b!6120194))

(assert (= (and b!6120194 res!2537555) b!6120192))

(assert (= (and b!6120192 (not res!2537554)) b!6120195))

(assert (= (and b!6120195 c!1099838) b!6120193))

(assert (= (and b!6120195 (not c!1099838)) b!6120196))

(assert (= (and b!6120193 (not res!2537552)) b!6120197))

(assert (= (and b!6120196 res!2537553) b!6120198))

(assert (= (or b!6120197 b!6120198) bm!506892))

(assert (= (or b!6120193 b!6120196) bm!506891))

(declare-fun m!6966514 () Bool)

(assert (=> bm!506891 m!6966514))

(declare-fun m!6966516 () Bool)

(assert (=> bm!506892 m!6966516))

(assert (=> d!1917431 d!1917573))

(declare-fun d!1917575 () Bool)

(declare-fun res!2537559 () Bool)

(declare-fun e!3731134 () Bool)

(assert (=> d!1917575 (=> res!2537559 e!3731134)))

(assert (=> d!1917575 (= res!2537559 (is-ElementMatch!16066 lt!2330850))))

(assert (=> d!1917575 (= (validRegex!7802 lt!2330850) e!3731134)))

(declare-fun c!1099839 () Bool)

(declare-fun c!1099840 () Bool)

(declare-fun bm!506893 () Bool)

(declare-fun call!506899 () Bool)

(assert (=> bm!506893 (= call!506899 (validRegex!7802 (ite c!1099840 (reg!16395 lt!2330850) (ite c!1099839 (regTwo!32645 lt!2330850) (regTwo!32644 lt!2330850)))))))

(declare-fun b!6120199 () Bool)

(declare-fun res!2537558 () Bool)

(declare-fun e!3731136 () Bool)

(assert (=> b!6120199 (=> (not res!2537558) (not e!3731136))))

(declare-fun call!506898 () Bool)

(assert (=> b!6120199 (= res!2537558 call!506898)))

(declare-fun e!3731135 () Bool)

(assert (=> b!6120199 (= e!3731135 e!3731136)))

(declare-fun bm!506894 () Bool)

(declare-fun call!506900 () Bool)

(assert (=> bm!506894 (= call!506900 call!506899)))

(declare-fun bm!506895 () Bool)

(assert (=> bm!506895 (= call!506898 (validRegex!7802 (ite c!1099839 (regOne!32645 lt!2330850) (regOne!32644 lt!2330850))))))

(declare-fun b!6120200 () Bool)

(declare-fun e!3731137 () Bool)

(assert (=> b!6120200 (= e!3731134 e!3731137)))

(assert (=> b!6120200 (= c!1099840 (is-Star!16066 lt!2330850))))

(declare-fun b!6120201 () Bool)

(declare-fun e!3731133 () Bool)

(assert (=> b!6120201 (= e!3731137 e!3731133)))

(declare-fun res!2537560 () Bool)

(assert (=> b!6120201 (= res!2537560 (not (nullable!6059 (reg!16395 lt!2330850))))))

(assert (=> b!6120201 (=> (not res!2537560) (not e!3731133))))

(declare-fun b!6120202 () Bool)

(declare-fun e!3731138 () Bool)

(declare-fun e!3731132 () Bool)

(assert (=> b!6120202 (= e!3731138 e!3731132)))

(declare-fun res!2537561 () Bool)

(assert (=> b!6120202 (=> (not res!2537561) (not e!3731132))))

(assert (=> b!6120202 (= res!2537561 call!506898)))

(declare-fun b!6120203 () Bool)

(assert (=> b!6120203 (= e!3731137 e!3731135)))

(assert (=> b!6120203 (= c!1099839 (is-Union!16066 lt!2330850))))

(declare-fun b!6120204 () Bool)

(declare-fun res!2537557 () Bool)

(assert (=> b!6120204 (=> res!2537557 e!3731138)))

(assert (=> b!6120204 (= res!2537557 (not (is-Concat!24911 lt!2330850)))))

(assert (=> b!6120204 (= e!3731135 e!3731138)))

(declare-fun b!6120205 () Bool)

(assert (=> b!6120205 (= e!3731133 call!506899)))

(declare-fun b!6120206 () Bool)

(assert (=> b!6120206 (= e!3731136 call!506900)))

(declare-fun b!6120207 () Bool)

(assert (=> b!6120207 (= e!3731132 call!506900)))

(assert (= (and d!1917575 (not res!2537559)) b!6120200))

(assert (= (and b!6120200 c!1099840) b!6120201))

(assert (= (and b!6120200 (not c!1099840)) b!6120203))

(assert (= (and b!6120201 res!2537560) b!6120205))

(assert (= (and b!6120203 c!1099839) b!6120199))

(assert (= (and b!6120203 (not c!1099839)) b!6120204))

(assert (= (and b!6120199 res!2537558) b!6120206))

(assert (= (and b!6120204 (not res!2537557)) b!6120202))

(assert (= (and b!6120202 res!2537561) b!6120207))

(assert (= (or b!6120206 b!6120207) bm!506894))

(assert (= (or b!6120199 b!6120202) bm!506895))

(assert (= (or b!6120205 bm!506894) bm!506893))

(declare-fun m!6966518 () Bool)

(assert (=> bm!506893 m!6966518))

(declare-fun m!6966520 () Bool)

(assert (=> bm!506895 m!6966520))

(declare-fun m!6966522 () Bool)

(assert (=> b!6120201 m!6966522))

(assert (=> d!1917421 d!1917575))

(declare-fun d!1917577 () Bool)

(declare-fun res!2537562 () Bool)

(declare-fun e!3731139 () Bool)

(assert (=> d!1917577 (=> res!2537562 e!3731139)))

(assert (=> d!1917577 (= res!2537562 (is-Nil!64373 (unfocusZipperList!1487 zl!343)))))

(assert (=> d!1917577 (= (forall!15187 (unfocusZipperList!1487 zl!343) lambda!333354) e!3731139)))

(declare-fun b!6120208 () Bool)

(declare-fun e!3731140 () Bool)

(assert (=> b!6120208 (= e!3731139 e!3731140)))

(declare-fun res!2537563 () Bool)

(assert (=> b!6120208 (=> (not res!2537563) (not e!3731140))))

(assert (=> b!6120208 (= res!2537563 (dynLambda!25355 lambda!333354 (h!70821 (unfocusZipperList!1487 zl!343))))))

(declare-fun b!6120209 () Bool)

(assert (=> b!6120209 (= e!3731140 (forall!15187 (t!377958 (unfocusZipperList!1487 zl!343)) lambda!333354))))

(assert (= (and d!1917577 (not res!2537562)) b!6120208))

(assert (= (and b!6120208 res!2537563) b!6120209))

(declare-fun b_lambda!233027 () Bool)

(assert (=> (not b_lambda!233027) (not b!6120208)))

(declare-fun m!6966524 () Bool)

(assert (=> b!6120208 m!6966524))

(declare-fun m!6966526 () Bool)

(assert (=> b!6120209 m!6966526))

(assert (=> d!1917421 d!1917577))

(declare-fun d!1917579 () Bool)

(assert (=> d!1917579 (= (isEmpty!36310 (t!377960 s!2326)) (is-Nil!64375 (t!377960 s!2326)))))

(assert (=> d!1917447 d!1917579))

(declare-fun d!1917581 () Bool)

(assert (=> d!1917581 (= (isEmptyExpr!1483 lt!2330862) (is-EmptyExpr!16066 lt!2330862))))

(assert (=> b!6119654 d!1917581))

(assert (=> b!6119713 d!1917461))

(declare-fun d!1917583 () Bool)

(assert (=> d!1917583 (= (isEmpty!36310 (tail!11739 s!2326)) (is-Nil!64375 (tail!11739 s!2326)))))

(assert (=> b!6119998 d!1917583))

(declare-fun d!1917585 () Bool)

(assert (=> d!1917585 (= (tail!11739 s!2326) (t!377960 s!2326))))

(assert (=> b!6119998 d!1917585))

(declare-fun d!1917587 () Bool)

(assert (=> d!1917587 true))

(declare-fun setRes!41361 () Bool)

(assert (=> d!1917587 setRes!41361))

(declare-fun condSetEmpty!41361 () Bool)

(declare-fun res!2537566 () (Set Context!10900))

(assert (=> d!1917587 (= condSetEmpty!41361 (= res!2537566 (as set.empty (Set Context!10900))))))

(assert (=> d!1917587 (= (choose!45470 z!1189 lambda!333340) res!2537566)))

(declare-fun setIsEmpty!41361 () Bool)

(assert (=> setIsEmpty!41361 setRes!41361))

(declare-fun setElem!41361 () Context!10900)

(declare-fun e!3731143 () Bool)

(declare-fun setNonEmpty!41361 () Bool)

(declare-fun tp!1709931 () Bool)

(assert (=> setNonEmpty!41361 (= setRes!41361 (and tp!1709931 (inv!83413 setElem!41361) e!3731143))))

(declare-fun setRest!41361 () (Set Context!10900))

(assert (=> setNonEmpty!41361 (= res!2537566 (set.union (set.insert setElem!41361 (as set.empty (Set Context!10900))) setRest!41361))))

(declare-fun b!6120212 () Bool)

(declare-fun tp!1709932 () Bool)

(assert (=> b!6120212 (= e!3731143 tp!1709932)))

(assert (= (and d!1917587 condSetEmpty!41361) setIsEmpty!41361))

(assert (= (and d!1917587 (not condSetEmpty!41361)) setNonEmpty!41361))

(assert (= setNonEmpty!41361 b!6120212))

(declare-fun m!6966528 () Bool)

(assert (=> setNonEmpty!41361 m!6966528))

(assert (=> d!1917425 d!1917587))

(declare-fun d!1917589 () Bool)

(assert (=> d!1917589 true))

(assert (=> d!1917589 true))

(declare-fun res!2537569 () Bool)

(assert (=> d!1917589 (= (choose!45476 lambda!333338) res!2537569)))

(assert (=> d!1917493 d!1917589))

(declare-fun d!1917591 () Bool)

(declare-fun c!1099841 () Bool)

(assert (=> d!1917591 (= c!1099841 (isEmpty!36310 (tail!11739 (t!377960 s!2326))))))

(declare-fun e!3731144 () Bool)

(assert (=> d!1917591 (= (matchZipper!2078 (derivationStepZipper!2039 lt!2330797 (head!12654 (t!377960 s!2326))) (tail!11739 (t!377960 s!2326))) e!3731144)))

(declare-fun b!6120213 () Bool)

(assert (=> b!6120213 (= e!3731144 (nullableZipper!1847 (derivationStepZipper!2039 lt!2330797 (head!12654 (t!377960 s!2326)))))))

(declare-fun b!6120214 () Bool)

(assert (=> b!6120214 (= e!3731144 (matchZipper!2078 (derivationStepZipper!2039 (derivationStepZipper!2039 lt!2330797 (head!12654 (t!377960 s!2326))) (head!12654 (tail!11739 (t!377960 s!2326)))) (tail!11739 (tail!11739 (t!377960 s!2326)))))))

(assert (= (and d!1917591 c!1099841) b!6120213))

(assert (= (and d!1917591 (not c!1099841)) b!6120214))

(assert (=> d!1917591 m!6966132))

(declare-fun m!6966530 () Bool)

(assert (=> d!1917591 m!6966530))

(assert (=> b!6120213 m!6966130))

(declare-fun m!6966532 () Bool)

(assert (=> b!6120213 m!6966532))

(assert (=> b!6120214 m!6966132))

(declare-fun m!6966534 () Bool)

(assert (=> b!6120214 m!6966534))

(assert (=> b!6120214 m!6966130))

(assert (=> b!6120214 m!6966534))

(declare-fun m!6966536 () Bool)

(assert (=> b!6120214 m!6966536))

(assert (=> b!6120214 m!6966132))

(declare-fun m!6966538 () Bool)

(assert (=> b!6120214 m!6966538))

(assert (=> b!6120214 m!6966536))

(assert (=> b!6120214 m!6966538))

(declare-fun m!6966540 () Bool)

(assert (=> b!6120214 m!6966540))

(assert (=> b!6119565 d!1917591))

(declare-fun bs!1518525 () Bool)

(declare-fun d!1917593 () Bool)

(assert (= bs!1518525 (and d!1917593 b!6119302)))

(declare-fun lambda!333413 () Int)

(assert (=> bs!1518525 (= (= (head!12654 (t!377960 s!2326)) (h!70823 s!2326)) (= lambda!333413 lambda!333340))))

(assert (=> d!1917593 true))

(assert (=> d!1917593 (= (derivationStepZipper!2039 lt!2330797 (head!12654 (t!377960 s!2326))) (flatMap!1571 lt!2330797 lambda!333413))))

(declare-fun bs!1518526 () Bool)

(assert (= bs!1518526 d!1917593))

(declare-fun m!6966542 () Bool)

(assert (=> bs!1518526 m!6966542))

(assert (=> b!6119565 d!1917593))

(declare-fun d!1917595 () Bool)

(assert (=> d!1917595 (= (head!12654 (t!377960 s!2326)) (h!70823 (t!377960 s!2326)))))

(assert (=> b!6119565 d!1917595))

(declare-fun d!1917597 () Bool)

(assert (=> d!1917597 (= (tail!11739 (t!377960 s!2326)) (t!377960 (t!377960 s!2326)))))

(assert (=> b!6119565 d!1917597))

(declare-fun d!1917599 () Bool)

(assert (=> d!1917599 (= (isEmpty!36307 (unfocusZipperList!1487 zl!343)) (is-Nil!64373 (unfocusZipperList!1487 zl!343)))))

(assert (=> b!6119438 d!1917599))

(declare-fun d!1917601 () Bool)

(assert (=> d!1917601 (= (isEmptyExpr!1483 lt!2330872) (is-EmptyExpr!16066 lt!2330872))))

(assert (=> b!6119711 d!1917601))

(assert (=> d!1917533 d!1917531))

(assert (=> d!1917533 d!1917511))

(declare-fun d!1917603 () Bool)

(assert (=> d!1917603 (= (matchR!8249 r!7292 s!2326) (matchRSpec!3167 r!7292 s!2326))))

(assert (=> d!1917603 true))

(declare-fun _$88!4617 () Unit!157419)

(assert (=> d!1917603 (= (choose!45479 r!7292 s!2326) _$88!4617)))

(declare-fun bs!1518527 () Bool)

(assert (= bs!1518527 d!1917603))

(assert (=> bs!1518527 m!6965956))

(assert (=> bs!1518527 m!6965954))

(assert (=> d!1917533 d!1917603))

(assert (=> d!1917533 d!1917541))

(declare-fun d!1917605 () Bool)

(assert (=> d!1917605 (= (isEmpty!36307 (tail!11738 (unfocusZipperList!1487 zl!343))) (is-Nil!64373 (tail!11738 (unfocusZipperList!1487 zl!343))))))

(assert (=> b!6119440 d!1917605))

(declare-fun d!1917607 () Bool)

(assert (=> d!1917607 (= (tail!11738 (unfocusZipperList!1487 zl!343)) (t!377958 (unfocusZipperList!1487 zl!343)))))

(assert (=> b!6119440 d!1917607))

(assert (=> d!1917475 d!1917579))

(declare-fun d!1917609 () Bool)

(declare-fun res!2537570 () Bool)

(declare-fun e!3731145 () Bool)

(assert (=> d!1917609 (=> res!2537570 e!3731145)))

(assert (=> d!1917609 (= res!2537570 (is-Nil!64373 (exprs!5950 setElem!41349)))))

(assert (=> d!1917609 (= (forall!15187 (exprs!5950 setElem!41349) lambda!333370) e!3731145)))

(declare-fun b!6120217 () Bool)

(declare-fun e!3731146 () Bool)

(assert (=> b!6120217 (= e!3731145 e!3731146)))

(declare-fun res!2537571 () Bool)

(assert (=> b!6120217 (=> (not res!2537571) (not e!3731146))))

(assert (=> b!6120217 (= res!2537571 (dynLambda!25355 lambda!333370 (h!70821 (exprs!5950 setElem!41349))))))

(declare-fun b!6120218 () Bool)

(assert (=> b!6120218 (= e!3731146 (forall!15187 (t!377958 (exprs!5950 setElem!41349)) lambda!333370))))

(assert (= (and d!1917609 (not res!2537570)) b!6120217))

(assert (= (and b!6120217 res!2537571) b!6120218))

(declare-fun b_lambda!233029 () Bool)

(assert (=> (not b_lambda!233029) (not b!6120217)))

(declare-fun m!6966544 () Bool)

(assert (=> b!6120217 m!6966544))

(declare-fun m!6966546 () Bool)

(assert (=> b!6120218 m!6966546))

(assert (=> d!1917463 d!1917609))

(declare-fun d!1917611 () Bool)

(declare-fun res!2537574 () Bool)

(declare-fun e!3731149 () Bool)

(assert (=> d!1917611 (=> res!2537574 e!3731149)))

(assert (=> d!1917611 (= res!2537574 (is-ElementMatch!16066 (ite c!1099820 (regOne!32645 r!7292) (regOne!32644 r!7292))))))

(assert (=> d!1917611 (= (validRegex!7802 (ite c!1099820 (regOne!32645 r!7292) (regOne!32644 r!7292))) e!3731149)))

(declare-fun c!1099844 () Bool)

(declare-fun bm!506896 () Bool)

(declare-fun c!1099845 () Bool)

(declare-fun call!506902 () Bool)

(assert (=> bm!506896 (= call!506902 (validRegex!7802 (ite c!1099845 (reg!16395 (ite c!1099820 (regOne!32645 r!7292) (regOne!32644 r!7292))) (ite c!1099844 (regTwo!32645 (ite c!1099820 (regOne!32645 r!7292) (regOne!32644 r!7292))) (regTwo!32644 (ite c!1099820 (regOne!32645 r!7292) (regOne!32644 r!7292)))))))))

(declare-fun b!6120219 () Bool)

(declare-fun res!2537573 () Bool)

(declare-fun e!3731151 () Bool)

(assert (=> b!6120219 (=> (not res!2537573) (not e!3731151))))

(declare-fun call!506901 () Bool)

(assert (=> b!6120219 (= res!2537573 call!506901)))

(declare-fun e!3731150 () Bool)

(assert (=> b!6120219 (= e!3731150 e!3731151)))

(declare-fun bm!506897 () Bool)

(declare-fun call!506903 () Bool)

(assert (=> bm!506897 (= call!506903 call!506902)))

(declare-fun bm!506898 () Bool)

(assert (=> bm!506898 (= call!506901 (validRegex!7802 (ite c!1099844 (regOne!32645 (ite c!1099820 (regOne!32645 r!7292) (regOne!32644 r!7292))) (regOne!32644 (ite c!1099820 (regOne!32645 r!7292) (regOne!32644 r!7292))))))))

(declare-fun b!6120220 () Bool)

(declare-fun e!3731152 () Bool)

(assert (=> b!6120220 (= e!3731149 e!3731152)))

(assert (=> b!6120220 (= c!1099845 (is-Star!16066 (ite c!1099820 (regOne!32645 r!7292) (regOne!32644 r!7292))))))

(declare-fun b!6120221 () Bool)

(declare-fun e!3731148 () Bool)

(assert (=> b!6120221 (= e!3731152 e!3731148)))

(declare-fun res!2537575 () Bool)

(assert (=> b!6120221 (= res!2537575 (not (nullable!6059 (reg!16395 (ite c!1099820 (regOne!32645 r!7292) (regOne!32644 r!7292))))))))

(assert (=> b!6120221 (=> (not res!2537575) (not e!3731148))))

(declare-fun b!6120222 () Bool)

(declare-fun e!3731153 () Bool)

(declare-fun e!3731147 () Bool)

(assert (=> b!6120222 (= e!3731153 e!3731147)))

(declare-fun res!2537576 () Bool)

(assert (=> b!6120222 (=> (not res!2537576) (not e!3731147))))

(assert (=> b!6120222 (= res!2537576 call!506901)))

(declare-fun b!6120223 () Bool)

(assert (=> b!6120223 (= e!3731152 e!3731150)))

(assert (=> b!6120223 (= c!1099844 (is-Union!16066 (ite c!1099820 (regOne!32645 r!7292) (regOne!32644 r!7292))))))

(declare-fun b!6120224 () Bool)

(declare-fun res!2537572 () Bool)

(assert (=> b!6120224 (=> res!2537572 e!3731153)))

(assert (=> b!6120224 (= res!2537572 (not (is-Concat!24911 (ite c!1099820 (regOne!32645 r!7292) (regOne!32644 r!7292)))))))

(assert (=> b!6120224 (= e!3731150 e!3731153)))

(declare-fun b!6120225 () Bool)

(assert (=> b!6120225 (= e!3731148 call!506902)))

(declare-fun b!6120226 () Bool)

(assert (=> b!6120226 (= e!3731151 call!506903)))

(declare-fun b!6120227 () Bool)

(assert (=> b!6120227 (= e!3731147 call!506903)))

(assert (= (and d!1917611 (not res!2537574)) b!6120220))

(assert (= (and b!6120220 c!1099845) b!6120221))

(assert (= (and b!6120220 (not c!1099845)) b!6120223))

(assert (= (and b!6120221 res!2537575) b!6120225))

(assert (= (and b!6120223 c!1099844) b!6120219))

(assert (= (and b!6120223 (not c!1099844)) b!6120224))

(assert (= (and b!6120219 res!2537573) b!6120226))

(assert (= (and b!6120224 (not res!2537572)) b!6120222))

(assert (= (and b!6120222 res!2537576) b!6120227))

(assert (= (or b!6120226 b!6120227) bm!506897))

(assert (= (or b!6120219 b!6120222) bm!506898))

(assert (= (or b!6120225 bm!506897) bm!506896))

(declare-fun m!6966548 () Bool)

(assert (=> bm!506896 m!6966548))

(declare-fun m!6966550 () Bool)

(assert (=> bm!506898 m!6966550))

(declare-fun m!6966552 () Bool)

(assert (=> b!6120221 m!6966552))

(assert (=> bm!506879 d!1917611))

(declare-fun d!1917613 () Bool)

(declare-fun c!1099846 () Bool)

(assert (=> d!1917613 (= c!1099846 (isEmpty!36310 (tail!11739 (t!377960 s!2326))))))

(declare-fun e!3731154 () Bool)

(assert (=> d!1917613 (= (matchZipper!2078 (derivationStepZipper!2039 (set.union lt!2330798 lt!2330797) (head!12654 (t!377960 s!2326))) (tail!11739 (t!377960 s!2326))) e!3731154)))

(declare-fun b!6120228 () Bool)

(assert (=> b!6120228 (= e!3731154 (nullableZipper!1847 (derivationStepZipper!2039 (set.union lt!2330798 lt!2330797) (head!12654 (t!377960 s!2326)))))))

(declare-fun b!6120229 () Bool)

(assert (=> b!6120229 (= e!3731154 (matchZipper!2078 (derivationStepZipper!2039 (derivationStepZipper!2039 (set.union lt!2330798 lt!2330797) (head!12654 (t!377960 s!2326))) (head!12654 (tail!11739 (t!377960 s!2326)))) (tail!11739 (tail!11739 (t!377960 s!2326)))))))

(assert (= (and d!1917613 c!1099846) b!6120228))

(assert (= (and d!1917613 (not c!1099846)) b!6120229))

(assert (=> d!1917613 m!6966132))

(assert (=> d!1917613 m!6966530))

(assert (=> b!6120228 m!6966198))

(declare-fun m!6966554 () Bool)

(assert (=> b!6120228 m!6966554))

(assert (=> b!6120229 m!6966132))

(assert (=> b!6120229 m!6966534))

(assert (=> b!6120229 m!6966198))

(assert (=> b!6120229 m!6966534))

(declare-fun m!6966556 () Bool)

(assert (=> b!6120229 m!6966556))

(assert (=> b!6120229 m!6966132))

(assert (=> b!6120229 m!6966538))

(assert (=> b!6120229 m!6966556))

(assert (=> b!6120229 m!6966538))

(declare-fun m!6966558 () Bool)

(assert (=> b!6120229 m!6966558))

(assert (=> b!6119692 d!1917613))

(declare-fun bs!1518528 () Bool)

(declare-fun d!1917615 () Bool)

(assert (= bs!1518528 (and d!1917615 b!6119302)))

(declare-fun lambda!333414 () Int)

(assert (=> bs!1518528 (= (= (head!12654 (t!377960 s!2326)) (h!70823 s!2326)) (= lambda!333414 lambda!333340))))

(declare-fun bs!1518529 () Bool)

(assert (= bs!1518529 (and d!1917615 d!1917593)))

(assert (=> bs!1518529 (= lambda!333414 lambda!333413)))

(assert (=> d!1917615 true))

(assert (=> d!1917615 (= (derivationStepZipper!2039 (set.union lt!2330798 lt!2330797) (head!12654 (t!377960 s!2326))) (flatMap!1571 (set.union lt!2330798 lt!2330797) lambda!333414))))

(declare-fun bs!1518530 () Bool)

(assert (= bs!1518530 d!1917615))

(declare-fun m!6966560 () Bool)

(assert (=> bs!1518530 m!6966560))

(assert (=> b!6119692 d!1917615))

(assert (=> b!6119692 d!1917595))

(assert (=> b!6119692 d!1917597))

(declare-fun d!1917617 () Bool)

(assert (=> d!1917617 (= (head!12653 (t!377958 (exprs!5950 (h!70822 zl!343)))) (h!70821 (t!377958 (exprs!5950 (h!70822 zl!343)))))))

(assert (=> b!6119657 d!1917617))

(declare-fun d!1917619 () Bool)

(assert (=> d!1917619 (= (isEmpty!36307 (t!377958 (unfocusZipperList!1487 zl!343))) (is-Nil!64373 (t!377958 (unfocusZipperList!1487 zl!343))))))

(assert (=> b!6119434 d!1917619))

(declare-fun d!1917621 () Bool)

(declare-fun res!2537579 () Bool)

(declare-fun e!3731157 () Bool)

(assert (=> d!1917621 (=> res!2537579 e!3731157)))

(assert (=> d!1917621 (= res!2537579 (is-ElementMatch!16066 (ite c!1099703 (reg!16395 lt!2330788) (ite c!1099702 (regTwo!32645 lt!2330788) (regTwo!32644 lt!2330788)))))))

(assert (=> d!1917621 (= (validRegex!7802 (ite c!1099703 (reg!16395 lt!2330788) (ite c!1099702 (regTwo!32645 lt!2330788) (regTwo!32644 lt!2330788)))) e!3731157)))

(declare-fun c!1099848 () Bool)

(declare-fun call!506905 () Bool)

(declare-fun c!1099847 () Bool)

(declare-fun bm!506899 () Bool)

(assert (=> bm!506899 (= call!506905 (validRegex!7802 (ite c!1099848 (reg!16395 (ite c!1099703 (reg!16395 lt!2330788) (ite c!1099702 (regTwo!32645 lt!2330788) (regTwo!32644 lt!2330788)))) (ite c!1099847 (regTwo!32645 (ite c!1099703 (reg!16395 lt!2330788) (ite c!1099702 (regTwo!32645 lt!2330788) (regTwo!32644 lt!2330788)))) (regTwo!32644 (ite c!1099703 (reg!16395 lt!2330788) (ite c!1099702 (regTwo!32645 lt!2330788) (regTwo!32644 lt!2330788))))))))))

(declare-fun b!6120230 () Bool)

(declare-fun res!2537578 () Bool)

(declare-fun e!3731159 () Bool)

(assert (=> b!6120230 (=> (not res!2537578) (not e!3731159))))

(declare-fun call!506904 () Bool)

(assert (=> b!6120230 (= res!2537578 call!506904)))

(declare-fun e!3731158 () Bool)

(assert (=> b!6120230 (= e!3731158 e!3731159)))

(declare-fun bm!506900 () Bool)

(declare-fun call!506906 () Bool)

(assert (=> bm!506900 (= call!506906 call!506905)))

(declare-fun bm!506901 () Bool)

(assert (=> bm!506901 (= call!506904 (validRegex!7802 (ite c!1099847 (regOne!32645 (ite c!1099703 (reg!16395 lt!2330788) (ite c!1099702 (regTwo!32645 lt!2330788) (regTwo!32644 lt!2330788)))) (regOne!32644 (ite c!1099703 (reg!16395 lt!2330788) (ite c!1099702 (regTwo!32645 lt!2330788) (regTwo!32644 lt!2330788)))))))))

(declare-fun b!6120231 () Bool)

(declare-fun e!3731160 () Bool)

(assert (=> b!6120231 (= e!3731157 e!3731160)))

(assert (=> b!6120231 (= c!1099848 (is-Star!16066 (ite c!1099703 (reg!16395 lt!2330788) (ite c!1099702 (regTwo!32645 lt!2330788) (regTwo!32644 lt!2330788)))))))

(declare-fun b!6120232 () Bool)

(declare-fun e!3731156 () Bool)

(assert (=> b!6120232 (= e!3731160 e!3731156)))

(declare-fun res!2537580 () Bool)

(assert (=> b!6120232 (= res!2537580 (not (nullable!6059 (reg!16395 (ite c!1099703 (reg!16395 lt!2330788) (ite c!1099702 (regTwo!32645 lt!2330788) (regTwo!32644 lt!2330788)))))))))

(assert (=> b!6120232 (=> (not res!2537580) (not e!3731156))))

(declare-fun b!6120233 () Bool)

(declare-fun e!3731161 () Bool)

(declare-fun e!3731155 () Bool)

(assert (=> b!6120233 (= e!3731161 e!3731155)))

(declare-fun res!2537581 () Bool)

(assert (=> b!6120233 (=> (not res!2537581) (not e!3731155))))

(assert (=> b!6120233 (= res!2537581 call!506904)))

(declare-fun b!6120234 () Bool)

(assert (=> b!6120234 (= e!3731160 e!3731158)))

(assert (=> b!6120234 (= c!1099847 (is-Union!16066 (ite c!1099703 (reg!16395 lt!2330788) (ite c!1099702 (regTwo!32645 lt!2330788) (regTwo!32644 lt!2330788)))))))

(declare-fun b!6120235 () Bool)

(declare-fun res!2537577 () Bool)

(assert (=> b!6120235 (=> res!2537577 e!3731161)))

(assert (=> b!6120235 (= res!2537577 (not (is-Concat!24911 (ite c!1099703 (reg!16395 lt!2330788) (ite c!1099702 (regTwo!32645 lt!2330788) (regTwo!32644 lt!2330788))))))))

(assert (=> b!6120235 (= e!3731158 e!3731161)))

(declare-fun b!6120236 () Bool)

(assert (=> b!6120236 (= e!3731156 call!506905)))

(declare-fun b!6120237 () Bool)

(assert (=> b!6120237 (= e!3731159 call!506906)))

(declare-fun b!6120238 () Bool)

(assert (=> b!6120238 (= e!3731155 call!506906)))

(assert (= (and d!1917621 (not res!2537579)) b!6120231))

(assert (= (and b!6120231 c!1099848) b!6120232))

(assert (= (and b!6120231 (not c!1099848)) b!6120234))

(assert (= (and b!6120232 res!2537580) b!6120236))

(assert (= (and b!6120234 c!1099847) b!6120230))

(assert (= (and b!6120234 (not c!1099847)) b!6120235))

(assert (= (and b!6120230 res!2537578) b!6120237))

(assert (= (and b!6120235 (not res!2537577)) b!6120233))

(assert (= (and b!6120233 res!2537581) b!6120238))

(assert (= (or b!6120237 b!6120238) bm!506900))

(assert (= (or b!6120230 b!6120233) bm!506901))

(assert (= (or b!6120236 bm!506900) bm!506899))

(declare-fun m!6966562 () Bool)

(assert (=> bm!506899 m!6966562))

(declare-fun m!6966564 () Bool)

(assert (=> bm!506901 m!6966564))

(declare-fun m!6966566 () Bool)

(assert (=> b!6120232 m!6966566))

(assert (=> bm!506844 d!1917621))

(declare-fun d!1917623 () Bool)

(declare-fun res!2537582 () Bool)

(declare-fun e!3731162 () Bool)

(assert (=> d!1917623 (=> res!2537582 e!3731162)))

(assert (=> d!1917623 (= res!2537582 (is-Nil!64373 (exprs!5950 (h!70822 zl!343))))))

(assert (=> d!1917623 (= (forall!15187 (exprs!5950 (h!70822 zl!343)) lambda!333372) e!3731162)))

(declare-fun b!6120239 () Bool)

(declare-fun e!3731163 () Bool)

(assert (=> b!6120239 (= e!3731162 e!3731163)))

(declare-fun res!2537583 () Bool)

(assert (=> b!6120239 (=> (not res!2537583) (not e!3731163))))

(assert (=> b!6120239 (= res!2537583 (dynLambda!25355 lambda!333372 (h!70821 (exprs!5950 (h!70822 zl!343)))))))

(declare-fun b!6120240 () Bool)

(assert (=> b!6120240 (= e!3731163 (forall!15187 (t!377958 (exprs!5950 (h!70822 zl!343))) lambda!333372))))

(assert (= (and d!1917623 (not res!2537582)) b!6120239))

(assert (= (and b!6120239 res!2537583) b!6120240))

(declare-fun b_lambda!233031 () Bool)

(assert (=> (not b_lambda!233031) (not b!6120239)))

(declare-fun m!6966568 () Bool)

(assert (=> b!6120239 m!6966568))

(declare-fun m!6966570 () Bool)

(assert (=> b!6120240 m!6966570))

(assert (=> d!1917467 d!1917623))

(assert (=> bs!1518506 d!1917439))

(declare-fun b!6120242 () Bool)

(declare-fun res!2537584 () Bool)

(declare-fun e!3731167 () Bool)

(assert (=> b!6120242 (=> (not res!2537584) (not e!3731167))))

(assert (=> b!6120242 (= res!2537584 (isEmpty!36310 (tail!11739 s!2326)))))

(declare-fun b!6120243 () Bool)

(declare-fun e!3731164 () Bool)

(declare-fun lt!2330936 () Bool)

(assert (=> b!6120243 (= e!3731164 (not lt!2330936))))

(declare-fun b!6120244 () Bool)

(declare-fun e!3731165 () Bool)

(assert (=> b!6120244 (= e!3731165 (nullable!6059 (regTwo!32644 r!7292)))))

(declare-fun bm!506902 () Bool)

(declare-fun call!506907 () Bool)

(assert (=> bm!506902 (= call!506907 (isEmpty!36310 s!2326))))

(declare-fun b!6120245 () Bool)

(declare-fun e!3731168 () Bool)

(assert (=> b!6120245 (= e!3731168 e!3731164)))

(declare-fun c!1099849 () Bool)

(assert (=> b!6120245 (= c!1099849 (is-EmptyLang!16066 (regTwo!32644 r!7292)))))

(declare-fun b!6120246 () Bool)

(assert (=> b!6120246 (= e!3731167 (= (head!12654 s!2326) (c!1099622 (regTwo!32644 r!7292))))))

(declare-fun b!6120247 () Bool)

(declare-fun e!3731169 () Bool)

(assert (=> b!6120247 (= e!3731169 (not (= (head!12654 s!2326) (c!1099622 (regTwo!32644 r!7292)))))))

(declare-fun b!6120248 () Bool)

(declare-fun e!3731166 () Bool)

(assert (=> b!6120248 (= e!3731166 e!3731169)))

(declare-fun res!2537588 () Bool)

(assert (=> b!6120248 (=> res!2537588 e!3731169)))

(assert (=> b!6120248 (= res!2537588 call!506907)))

(declare-fun b!6120249 () Bool)

(declare-fun res!2537585 () Bool)

(declare-fun e!3731170 () Bool)

(assert (=> b!6120249 (=> res!2537585 e!3731170)))

(assert (=> b!6120249 (= res!2537585 e!3731167)))

(declare-fun res!2537587 () Bool)

(assert (=> b!6120249 (=> (not res!2537587) (not e!3731167))))

(assert (=> b!6120249 (= res!2537587 lt!2330936)))

(declare-fun b!6120250 () Bool)

(declare-fun res!2537591 () Bool)

(assert (=> b!6120250 (=> (not res!2537591) (not e!3731167))))

(assert (=> b!6120250 (= res!2537591 (not call!506907))))

(declare-fun b!6120241 () Bool)

(assert (=> b!6120241 (= e!3731165 (matchR!8249 (derivativeStep!4787 (regTwo!32644 r!7292) (head!12654 s!2326)) (tail!11739 s!2326)))))

(declare-fun d!1917625 () Bool)

(assert (=> d!1917625 e!3731168))

(declare-fun c!1099851 () Bool)

(assert (=> d!1917625 (= c!1099851 (is-EmptyExpr!16066 (regTwo!32644 r!7292)))))

(assert (=> d!1917625 (= lt!2330936 e!3731165)))

(declare-fun c!1099850 () Bool)

(assert (=> d!1917625 (= c!1099850 (isEmpty!36310 s!2326))))

(assert (=> d!1917625 (validRegex!7802 (regTwo!32644 r!7292))))

(assert (=> d!1917625 (= (matchR!8249 (regTwo!32644 r!7292) s!2326) lt!2330936)))

(declare-fun b!6120251 () Bool)

(assert (=> b!6120251 (= e!3731168 (= lt!2330936 call!506907))))

(declare-fun b!6120252 () Bool)

(declare-fun res!2537586 () Bool)

(assert (=> b!6120252 (=> res!2537586 e!3731169)))

(assert (=> b!6120252 (= res!2537586 (not (isEmpty!36310 (tail!11739 s!2326))))))

(declare-fun b!6120253 () Bool)

(assert (=> b!6120253 (= e!3731170 e!3731166)))

(declare-fun res!2537590 () Bool)

(assert (=> b!6120253 (=> (not res!2537590) (not e!3731166))))

(assert (=> b!6120253 (= res!2537590 (not lt!2330936))))

(declare-fun b!6120254 () Bool)

(declare-fun res!2537589 () Bool)

(assert (=> b!6120254 (=> res!2537589 e!3731170)))

(assert (=> b!6120254 (= res!2537589 (not (is-ElementMatch!16066 (regTwo!32644 r!7292))))))

(assert (=> b!6120254 (= e!3731164 e!3731170)))

(assert (= (and d!1917625 c!1099850) b!6120244))

(assert (= (and d!1917625 (not c!1099850)) b!6120241))

(assert (= (and d!1917625 c!1099851) b!6120251))

(assert (= (and d!1917625 (not c!1099851)) b!6120245))

(assert (= (and b!6120245 c!1099849) b!6120243))

(assert (= (and b!6120245 (not c!1099849)) b!6120254))

(assert (= (and b!6120254 (not res!2537589)) b!6120249))

(assert (= (and b!6120249 res!2537587) b!6120250))

(assert (= (and b!6120250 res!2537591) b!6120242))

(assert (= (and b!6120242 res!2537584) b!6120246))

(assert (= (and b!6120249 (not res!2537585)) b!6120253))

(assert (= (and b!6120253 res!2537590) b!6120248))

(assert (= (and b!6120248 (not res!2537588)) b!6120252))

(assert (= (and b!6120252 (not res!2537586)) b!6120247))

(assert (= (or b!6120251 b!6120248 b!6120250) bm!506902))

(declare-fun m!6966572 () Bool)

(assert (=> b!6120244 m!6966572))

(assert (=> b!6120252 m!6966398))

(assert (=> b!6120252 m!6966398))

(assert (=> b!6120252 m!6966400))

(assert (=> b!6120246 m!6966402))

(assert (=> d!1917625 m!6966390))

(declare-fun m!6966574 () Bool)

(assert (=> d!1917625 m!6966574))

(assert (=> b!6120247 m!6966402))

(assert (=> b!6120242 m!6966398))

(assert (=> b!6120242 m!6966398))

(assert (=> b!6120242 m!6966400))

(assert (=> bm!506902 m!6966390))

(assert (=> b!6120241 m!6966402))

(assert (=> b!6120241 m!6966402))

(declare-fun m!6966576 () Bool)

(assert (=> b!6120241 m!6966576))

(assert (=> b!6120241 m!6966398))

(assert (=> b!6120241 m!6966576))

(assert (=> b!6120241 m!6966398))

(declare-fun m!6966578 () Bool)

(assert (=> b!6120241 m!6966578))

(assert (=> b!6119777 d!1917625))

(declare-fun d!1917627 () Bool)

(assert (=> d!1917627 (= (isEmpty!36312 (findConcatSeparation!2371 (regOne!32644 r!7292) (regTwo!32644 r!7292) Nil!64375 s!2326 s!2326)) (not (is-Some!15956 (findConcatSeparation!2371 (regOne!32644 r!7292) (regTwo!32644 r!7292) Nil!64375 s!2326 s!2326))))))

(assert (=> d!1917509 d!1917627))

(declare-fun d!1917629 () Bool)

(declare-fun c!1099852 () Bool)

(assert (=> d!1917629 (= c!1099852 (isEmpty!36310 (tail!11739 (t!377960 s!2326))))))

(declare-fun e!3731171 () Bool)

(assert (=> d!1917629 (= (matchZipper!2078 (derivationStepZipper!2039 lt!2330798 (head!12654 (t!377960 s!2326))) (tail!11739 (t!377960 s!2326))) e!3731171)))

(declare-fun b!6120255 () Bool)

(assert (=> b!6120255 (= e!3731171 (nullableZipper!1847 (derivationStepZipper!2039 lt!2330798 (head!12654 (t!377960 s!2326)))))))

(declare-fun b!6120256 () Bool)

(assert (=> b!6120256 (= e!3731171 (matchZipper!2078 (derivationStepZipper!2039 (derivationStepZipper!2039 lt!2330798 (head!12654 (t!377960 s!2326))) (head!12654 (tail!11739 (t!377960 s!2326)))) (tail!11739 (tail!11739 (t!377960 s!2326)))))))

(assert (= (and d!1917629 c!1099852) b!6120255))

(assert (= (and d!1917629 (not c!1099852)) b!6120256))

(assert (=> d!1917629 m!6966132))

(assert (=> d!1917629 m!6966530))

(assert (=> b!6120255 m!6966192))

(declare-fun m!6966580 () Bool)

(assert (=> b!6120255 m!6966580))

(assert (=> b!6120256 m!6966132))

(assert (=> b!6120256 m!6966534))

(assert (=> b!6120256 m!6966192))

(assert (=> b!6120256 m!6966534))

(declare-fun m!6966582 () Bool)

(assert (=> b!6120256 m!6966582))

(assert (=> b!6120256 m!6966132))

(assert (=> b!6120256 m!6966538))

(assert (=> b!6120256 m!6966582))

(assert (=> b!6120256 m!6966538))

(declare-fun m!6966584 () Bool)

(assert (=> b!6120256 m!6966584))

(assert (=> b!6119680 d!1917629))

(declare-fun bs!1518531 () Bool)

(declare-fun d!1917631 () Bool)

(assert (= bs!1518531 (and d!1917631 b!6119302)))

(declare-fun lambda!333415 () Int)

(assert (=> bs!1518531 (= (= (head!12654 (t!377960 s!2326)) (h!70823 s!2326)) (= lambda!333415 lambda!333340))))

(declare-fun bs!1518532 () Bool)

(assert (= bs!1518532 (and d!1917631 d!1917593)))

(assert (=> bs!1518532 (= lambda!333415 lambda!333413)))

(declare-fun bs!1518533 () Bool)

(assert (= bs!1518533 (and d!1917631 d!1917615)))

(assert (=> bs!1518533 (= lambda!333415 lambda!333414)))

(assert (=> d!1917631 true))

(assert (=> d!1917631 (= (derivationStepZipper!2039 lt!2330798 (head!12654 (t!377960 s!2326))) (flatMap!1571 lt!2330798 lambda!333415))))

(declare-fun bs!1518534 () Bool)

(assert (= bs!1518534 d!1917631))

(declare-fun m!6966586 () Bool)

(assert (=> bs!1518534 m!6966586))

(assert (=> b!6119680 d!1917631))

(assert (=> b!6119680 d!1917595))

(assert (=> b!6119680 d!1917597))

(declare-fun b!6120257 () Bool)

(declare-fun e!3731172 () (Set Context!10900))

(assert (=> b!6120257 (= e!3731172 (as set.empty (Set Context!10900)))))

(declare-fun bm!506903 () Bool)

(declare-fun call!506908 () (Set Context!10900))

(assert (=> bm!506903 (= call!506908 (derivationStepZipperDown!1314 (h!70821 (exprs!5950 (Context!10901 (t!377958 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343)))))))))) (Context!10901 (t!377958 (exprs!5950 (Context!10901 (t!377958 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343))))))))))) (h!70823 s!2326)))))

(declare-fun b!6120258 () Bool)

(assert (=> b!6120258 (= e!3731172 call!506908)))

(declare-fun d!1917633 () Bool)

(declare-fun c!1099854 () Bool)

(declare-fun e!3731174 () Bool)

(assert (=> d!1917633 (= c!1099854 e!3731174)))

(declare-fun res!2537592 () Bool)

(assert (=> d!1917633 (=> (not res!2537592) (not e!3731174))))

(assert (=> d!1917633 (= res!2537592 (is-Cons!64373 (exprs!5950 (Context!10901 (t!377958 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343)))))))))))))

(declare-fun e!3731173 () (Set Context!10900))

(assert (=> d!1917633 (= (derivationStepZipperUp!1240 (Context!10901 (t!377958 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343)))))))) (h!70823 s!2326)) e!3731173)))

(declare-fun b!6120259 () Bool)

(assert (=> b!6120259 (= e!3731174 (nullable!6059 (h!70821 (exprs!5950 (Context!10901 (t!377958 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343))))))))))))))

(declare-fun b!6120260 () Bool)

(assert (=> b!6120260 (= e!3731173 (set.union call!506908 (derivationStepZipperUp!1240 (Context!10901 (t!377958 (exprs!5950 (Context!10901 (t!377958 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343))))))))))) (h!70823 s!2326))))))

(declare-fun b!6120261 () Bool)

(assert (=> b!6120261 (= e!3731173 e!3731172)))

(declare-fun c!1099853 () Bool)

(assert (=> b!6120261 (= c!1099853 (is-Cons!64373 (exprs!5950 (Context!10901 (t!377958 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343)))))))))))))

(assert (= (and d!1917633 res!2537592) b!6120259))

(assert (= (and d!1917633 c!1099854) b!6120260))

(assert (= (and d!1917633 (not c!1099854)) b!6120261))

(assert (= (and b!6120261 c!1099853) b!6120258))

(assert (= (and b!6120261 (not c!1099853)) b!6120257))

(assert (= (or b!6120260 b!6120258) bm!506903))

(declare-fun m!6966588 () Bool)

(assert (=> bm!506903 m!6966588))

(declare-fun m!6966590 () Bool)

(assert (=> b!6120259 m!6966590))

(declare-fun m!6966592 () Bool)

(assert (=> b!6120260 m!6966592))

(assert (=> b!6119477 d!1917633))

(declare-fun bs!1518535 () Bool)

(declare-fun b!6120267 () Bool)

(assert (= bs!1518535 (and b!6120267 b!6119932)))

(declare-fun lambda!333416 () Int)

(assert (=> bs!1518535 (not (= lambda!333416 lambda!333400))))

(declare-fun bs!1518536 () Bool)

(assert (= bs!1518536 (and b!6120267 d!1917501)))

(assert (=> bs!1518536 (not (= lambda!333416 lambda!333391))))

(declare-fun bs!1518537 () Bool)

(assert (= bs!1518537 (and b!6120267 d!1917495)))

(assert (=> bs!1518537 (not (= lambda!333416 lambda!333384))))

(declare-fun bs!1518538 () Bool)

(assert (= bs!1518538 (and b!6120267 b!6119299)))

(assert (=> bs!1518538 (not (= lambda!333416 lambda!333338))))

(assert (=> bs!1518538 (not (= lambda!333416 lambda!333339))))

(assert (=> bs!1518536 (not (= lambda!333416 lambda!333393))))

(declare-fun bs!1518539 () Bool)

(assert (= bs!1518539 (and b!6120267 b!6119933)))

(assert (=> bs!1518539 (= (and (= (reg!16395 (regOne!32645 r!7292)) (reg!16395 r!7292)) (= (regOne!32645 r!7292) r!7292)) (= lambda!333416 lambda!333399))))

(assert (=> b!6120267 true))

(assert (=> b!6120267 true))

(declare-fun bs!1518540 () Bool)

(declare-fun b!6120266 () Bool)

(assert (= bs!1518540 (and b!6120266 d!1917501)))

(declare-fun lambda!333417 () Int)

(assert (=> bs!1518540 (not (= lambda!333417 lambda!333391))))

(declare-fun bs!1518541 () Bool)

(assert (= bs!1518541 (and b!6120266 d!1917495)))

(assert (=> bs!1518541 (not (= lambda!333417 lambda!333384))))

(declare-fun bs!1518542 () Bool)

(assert (= bs!1518542 (and b!6120266 b!6119299)))

(assert (=> bs!1518542 (not (= lambda!333417 lambda!333338))))

(assert (=> bs!1518542 (= (and (= (regOne!32644 (regOne!32645 r!7292)) (regOne!32644 r!7292)) (= (regTwo!32644 (regOne!32645 r!7292)) (regTwo!32644 r!7292))) (= lambda!333417 lambda!333339))))

(assert (=> bs!1518540 (= (and (= (regOne!32644 (regOne!32645 r!7292)) (regOne!32644 r!7292)) (= (regTwo!32644 (regOne!32645 r!7292)) (regTwo!32644 r!7292))) (= lambda!333417 lambda!333393))))

(declare-fun bs!1518543 () Bool)

(assert (= bs!1518543 (and b!6120266 b!6119933)))

(assert (=> bs!1518543 (not (= lambda!333417 lambda!333399))))

(declare-fun bs!1518544 () Bool)

(assert (= bs!1518544 (and b!6120266 b!6120267)))

(assert (=> bs!1518544 (not (= lambda!333417 lambda!333416))))

(declare-fun bs!1518545 () Bool)

(assert (= bs!1518545 (and b!6120266 b!6119932)))

(assert (=> bs!1518545 (= (and (= (regOne!32644 (regOne!32645 r!7292)) (regOne!32644 r!7292)) (= (regTwo!32644 (regOne!32645 r!7292)) (regTwo!32644 r!7292))) (= lambda!333417 lambda!333400))))

(assert (=> b!6120266 true))

(assert (=> b!6120266 true))

(declare-fun b!6120262 () Bool)

(declare-fun res!2537594 () Bool)

(declare-fun e!3731176 () Bool)

(assert (=> b!6120262 (=> res!2537594 e!3731176)))

(declare-fun call!506910 () Bool)

(assert (=> b!6120262 (= res!2537594 call!506910)))

(declare-fun e!3731175 () Bool)

(assert (=> b!6120262 (= e!3731175 e!3731176)))

(declare-fun b!6120263 () Bool)

(declare-fun e!3731177 () Bool)

(assert (=> b!6120263 (= e!3731177 call!506910)))

(declare-fun b!6120264 () Bool)

(declare-fun e!3731181 () Bool)

(assert (=> b!6120264 (= e!3731177 e!3731181)))

(declare-fun res!2537593 () Bool)

(assert (=> b!6120264 (= res!2537593 (not (is-EmptyLang!16066 (regOne!32645 r!7292))))))

(assert (=> b!6120264 (=> (not res!2537593) (not e!3731181))))

(declare-fun call!506909 () Bool)

(declare-fun bm!506904 () Bool)

(declare-fun c!1099858 () Bool)

(assert (=> bm!506904 (= call!506909 (Exists!3136 (ite c!1099858 lambda!333416 lambda!333417)))))

(declare-fun b!6120265 () Bool)

(declare-fun c!1099856 () Bool)

(assert (=> b!6120265 (= c!1099856 (is-Union!16066 (regOne!32645 r!7292)))))

(declare-fun e!3731180 () Bool)

(declare-fun e!3731179 () Bool)

(assert (=> b!6120265 (= e!3731180 e!3731179)))

(assert (=> b!6120266 (= e!3731175 call!506909)))

(assert (=> b!6120267 (= e!3731176 call!506909)))

(declare-fun bm!506905 () Bool)

(assert (=> bm!506905 (= call!506910 (isEmpty!36310 s!2326))))

(declare-fun d!1917635 () Bool)

(declare-fun c!1099855 () Bool)

(assert (=> d!1917635 (= c!1099855 (is-EmptyExpr!16066 (regOne!32645 r!7292)))))

(assert (=> d!1917635 (= (matchRSpec!3167 (regOne!32645 r!7292) s!2326) e!3731177)))

(declare-fun b!6120268 () Bool)

(declare-fun c!1099857 () Bool)

(assert (=> b!6120268 (= c!1099857 (is-ElementMatch!16066 (regOne!32645 r!7292)))))

(assert (=> b!6120268 (= e!3731181 e!3731180)))

(declare-fun b!6120269 () Bool)

(declare-fun e!3731178 () Bool)

(assert (=> b!6120269 (= e!3731178 (matchRSpec!3167 (regTwo!32645 (regOne!32645 r!7292)) s!2326))))

(declare-fun b!6120270 () Bool)

(assert (=> b!6120270 (= e!3731179 e!3731178)))

(declare-fun res!2537595 () Bool)

(assert (=> b!6120270 (= res!2537595 (matchRSpec!3167 (regOne!32645 (regOne!32645 r!7292)) s!2326))))

(assert (=> b!6120270 (=> res!2537595 e!3731178)))

(declare-fun b!6120271 () Bool)

(assert (=> b!6120271 (= e!3731179 e!3731175)))

(assert (=> b!6120271 (= c!1099858 (is-Star!16066 (regOne!32645 r!7292)))))

(declare-fun b!6120272 () Bool)

(assert (=> b!6120272 (= e!3731180 (= s!2326 (Cons!64375 (c!1099622 (regOne!32645 r!7292)) Nil!64375)))))

(assert (= (and d!1917635 c!1099855) b!6120263))

(assert (= (and d!1917635 (not c!1099855)) b!6120264))

(assert (= (and b!6120264 res!2537593) b!6120268))

(assert (= (and b!6120268 c!1099857) b!6120272))

(assert (= (and b!6120268 (not c!1099857)) b!6120265))

(assert (= (and b!6120265 c!1099856) b!6120270))

(assert (= (and b!6120265 (not c!1099856)) b!6120271))

(assert (= (and b!6120270 (not res!2537595)) b!6120269))

(assert (= (and b!6120271 c!1099858) b!6120262))

(assert (= (and b!6120271 (not c!1099858)) b!6120266))

(assert (= (and b!6120262 (not res!2537594)) b!6120267))

(assert (= (or b!6120267 b!6120266) bm!506904))

(assert (= (or b!6120263 b!6120262) bm!506905))

(declare-fun m!6966594 () Bool)

(assert (=> bm!506904 m!6966594))

(assert (=> bm!506905 m!6966390))

(declare-fun m!6966596 () Bool)

(assert (=> b!6120269 m!6966596))

(declare-fun m!6966598 () Bool)

(assert (=> b!6120270 m!6966598))

(assert (=> b!6119936 d!1917635))

(declare-fun d!1917637 () Bool)

(assert (=> d!1917637 (= (isDefined!12660 lt!2330887) (not (isEmpty!36312 lt!2330887)))))

(declare-fun bs!1518546 () Bool)

(assert (= bs!1518546 d!1917637))

(declare-fun m!6966600 () Bool)

(assert (=> bs!1518546 m!6966600))

(assert (=> b!6119775 d!1917637))

(declare-fun b!6120274 () Bool)

(declare-fun res!2537596 () Bool)

(declare-fun e!3731185 () Bool)

(assert (=> b!6120274 (=> (not res!2537596) (not e!3731185))))

(assert (=> b!6120274 (= res!2537596 (isEmpty!36310 (tail!11739 (tail!11739 s!2326))))))

(declare-fun b!6120275 () Bool)

(declare-fun e!3731182 () Bool)

(declare-fun lt!2330937 () Bool)

(assert (=> b!6120275 (= e!3731182 (not lt!2330937))))

(declare-fun b!6120276 () Bool)

(declare-fun e!3731183 () Bool)

(assert (=> b!6120276 (= e!3731183 (nullable!6059 (derivativeStep!4787 r!7292 (head!12654 s!2326))))))

(declare-fun bm!506906 () Bool)

(declare-fun call!506911 () Bool)

(assert (=> bm!506906 (= call!506911 (isEmpty!36310 (tail!11739 s!2326)))))

(declare-fun b!6120277 () Bool)

(declare-fun e!3731186 () Bool)

(assert (=> b!6120277 (= e!3731186 e!3731182)))

(declare-fun c!1099859 () Bool)

(assert (=> b!6120277 (= c!1099859 (is-EmptyLang!16066 (derivativeStep!4787 r!7292 (head!12654 s!2326))))))

(declare-fun b!6120278 () Bool)

(assert (=> b!6120278 (= e!3731185 (= (head!12654 (tail!11739 s!2326)) (c!1099622 (derivativeStep!4787 r!7292 (head!12654 s!2326)))))))

(declare-fun b!6120279 () Bool)

(declare-fun e!3731187 () Bool)

(assert (=> b!6120279 (= e!3731187 (not (= (head!12654 (tail!11739 s!2326)) (c!1099622 (derivativeStep!4787 r!7292 (head!12654 s!2326))))))))

(declare-fun b!6120280 () Bool)

(declare-fun e!3731184 () Bool)

(assert (=> b!6120280 (= e!3731184 e!3731187)))

(declare-fun res!2537600 () Bool)

(assert (=> b!6120280 (=> res!2537600 e!3731187)))

(assert (=> b!6120280 (= res!2537600 call!506911)))

(declare-fun b!6120281 () Bool)

(declare-fun res!2537597 () Bool)

(declare-fun e!3731188 () Bool)

(assert (=> b!6120281 (=> res!2537597 e!3731188)))

(assert (=> b!6120281 (= res!2537597 e!3731185)))

(declare-fun res!2537599 () Bool)

(assert (=> b!6120281 (=> (not res!2537599) (not e!3731185))))

(assert (=> b!6120281 (= res!2537599 lt!2330937)))

(declare-fun b!6120282 () Bool)

(declare-fun res!2537603 () Bool)

(assert (=> b!6120282 (=> (not res!2537603) (not e!3731185))))

(assert (=> b!6120282 (= res!2537603 (not call!506911))))

(declare-fun b!6120273 () Bool)

(assert (=> b!6120273 (= e!3731183 (matchR!8249 (derivativeStep!4787 (derivativeStep!4787 r!7292 (head!12654 s!2326)) (head!12654 (tail!11739 s!2326))) (tail!11739 (tail!11739 s!2326))))))

(declare-fun d!1917639 () Bool)

(assert (=> d!1917639 e!3731186))

(declare-fun c!1099861 () Bool)

(assert (=> d!1917639 (= c!1099861 (is-EmptyExpr!16066 (derivativeStep!4787 r!7292 (head!12654 s!2326))))))

(assert (=> d!1917639 (= lt!2330937 e!3731183)))

(declare-fun c!1099860 () Bool)

(assert (=> d!1917639 (= c!1099860 (isEmpty!36310 (tail!11739 s!2326)))))

(assert (=> d!1917639 (validRegex!7802 (derivativeStep!4787 r!7292 (head!12654 s!2326)))))

(assert (=> d!1917639 (= (matchR!8249 (derivativeStep!4787 r!7292 (head!12654 s!2326)) (tail!11739 s!2326)) lt!2330937)))

(declare-fun b!6120283 () Bool)

(assert (=> b!6120283 (= e!3731186 (= lt!2330937 call!506911))))

(declare-fun b!6120284 () Bool)

(declare-fun res!2537598 () Bool)

(assert (=> b!6120284 (=> res!2537598 e!3731187)))

(assert (=> b!6120284 (= res!2537598 (not (isEmpty!36310 (tail!11739 (tail!11739 s!2326)))))))

(declare-fun b!6120285 () Bool)

(assert (=> b!6120285 (= e!3731188 e!3731184)))

(declare-fun res!2537602 () Bool)

(assert (=> b!6120285 (=> (not res!2537602) (not e!3731184))))

(assert (=> b!6120285 (= res!2537602 (not lt!2330937))))

(declare-fun b!6120286 () Bool)

(declare-fun res!2537601 () Bool)

(assert (=> b!6120286 (=> res!2537601 e!3731188)))

(assert (=> b!6120286 (= res!2537601 (not (is-ElementMatch!16066 (derivativeStep!4787 r!7292 (head!12654 s!2326)))))))

(assert (=> b!6120286 (= e!3731182 e!3731188)))

(assert (= (and d!1917639 c!1099860) b!6120276))

(assert (= (and d!1917639 (not c!1099860)) b!6120273))

(assert (= (and d!1917639 c!1099861) b!6120283))

(assert (= (and d!1917639 (not c!1099861)) b!6120277))

(assert (= (and b!6120277 c!1099859) b!6120275))

(assert (= (and b!6120277 (not c!1099859)) b!6120286))

(assert (= (and b!6120286 (not res!2537601)) b!6120281))

(assert (= (and b!6120281 res!2537599) b!6120282))

(assert (= (and b!6120282 res!2537603) b!6120274))

(assert (= (and b!6120274 res!2537596) b!6120278))

(assert (= (and b!6120281 (not res!2537597)) b!6120285))

(assert (= (and b!6120285 res!2537602) b!6120280))

(assert (= (and b!6120280 (not res!2537600)) b!6120284))

(assert (= (and b!6120284 (not res!2537598)) b!6120279))

(assert (= (or b!6120283 b!6120280 b!6120282) bm!506906))

(assert (=> b!6120276 m!6966404))

(declare-fun m!6966602 () Bool)

(assert (=> b!6120276 m!6966602))

(assert (=> b!6120284 m!6966398))

(declare-fun m!6966604 () Bool)

(assert (=> b!6120284 m!6966604))

(assert (=> b!6120284 m!6966604))

(declare-fun m!6966606 () Bool)

(assert (=> b!6120284 m!6966606))

(assert (=> b!6120278 m!6966398))

(declare-fun m!6966608 () Bool)

(assert (=> b!6120278 m!6966608))

(assert (=> d!1917639 m!6966398))

(assert (=> d!1917639 m!6966400))

(assert (=> d!1917639 m!6966404))

(declare-fun m!6966610 () Bool)

(assert (=> d!1917639 m!6966610))

(assert (=> b!6120279 m!6966398))

(assert (=> b!6120279 m!6966608))

(assert (=> b!6120274 m!6966398))

(assert (=> b!6120274 m!6966604))

(assert (=> b!6120274 m!6966604))

(assert (=> b!6120274 m!6966606))

(assert (=> bm!506906 m!6966398))

(assert (=> bm!506906 m!6966400))

(assert (=> b!6120273 m!6966398))

(assert (=> b!6120273 m!6966608))

(assert (=> b!6120273 m!6966404))

(assert (=> b!6120273 m!6966608))

(declare-fun m!6966612 () Bool)

(assert (=> b!6120273 m!6966612))

(assert (=> b!6120273 m!6966398))

(assert (=> b!6120273 m!6966604))

(assert (=> b!6120273 m!6966612))

(assert (=> b!6120273 m!6966604))

(declare-fun m!6966614 () Bool)

(assert (=> b!6120273 m!6966614))

(assert (=> b!6119987 d!1917639))

(declare-fun b!6120307 () Bool)

(declare-fun c!1099876 () Bool)

(assert (=> b!6120307 (= c!1099876 (is-Union!16066 r!7292))))

(declare-fun e!3731201 () Regex!16066)

(declare-fun e!3731203 () Regex!16066)

(assert (=> b!6120307 (= e!3731201 e!3731203)))

(declare-fun bm!506915 () Bool)

(declare-fun call!506920 () Regex!16066)

(declare-fun call!506923 () Regex!16066)

(assert (=> bm!506915 (= call!506920 call!506923)))

(declare-fun b!6120308 () Bool)

(declare-fun c!1099873 () Bool)

(assert (=> b!6120308 (= c!1099873 (nullable!6059 (regOne!32644 r!7292)))))

(declare-fun e!3731200 () Regex!16066)

(declare-fun e!3731199 () Regex!16066)

(assert (=> b!6120308 (= e!3731200 e!3731199)))

(declare-fun call!506922 () Regex!16066)

(declare-fun c!1099872 () Bool)

(declare-fun bm!506916 () Bool)

(assert (=> bm!506916 (= call!506922 (derivativeStep!4787 (ite c!1099876 (regTwo!32645 r!7292) (ite c!1099872 (reg!16395 r!7292) (ite c!1099873 (regTwo!32644 r!7292) (regOne!32644 r!7292)))) (head!12654 s!2326)))))

(declare-fun b!6120309 () Bool)

(assert (=> b!6120309 (= e!3731203 e!3731200)))

(assert (=> b!6120309 (= c!1099872 (is-Star!16066 r!7292))))

(declare-fun b!6120310 () Bool)

(assert (=> b!6120310 (= e!3731201 (ite (= (head!12654 s!2326) (c!1099622 r!7292)) EmptyExpr!16066 EmptyLang!16066))))

(declare-fun b!6120311 () Bool)

(declare-fun e!3731202 () Regex!16066)

(assert (=> b!6120311 (= e!3731202 EmptyLang!16066)))

(declare-fun b!6120312 () Bool)

(assert (=> b!6120312 (= e!3731200 (Concat!24911 call!506923 r!7292))))

(declare-fun b!6120313 () Bool)

(assert (=> b!6120313 (= e!3731202 e!3731201)))

(declare-fun c!1099875 () Bool)

(assert (=> b!6120313 (= c!1099875 (is-ElementMatch!16066 r!7292))))

(declare-fun d!1917641 () Bool)

(declare-fun lt!2330940 () Regex!16066)

(assert (=> d!1917641 (validRegex!7802 lt!2330940)))

(assert (=> d!1917641 (= lt!2330940 e!3731202)))

(declare-fun c!1099874 () Bool)

(assert (=> d!1917641 (= c!1099874 (or (is-EmptyExpr!16066 r!7292) (is-EmptyLang!16066 r!7292)))))

(assert (=> d!1917641 (validRegex!7802 r!7292)))

(assert (=> d!1917641 (= (derivativeStep!4787 r!7292 (head!12654 s!2326)) lt!2330940)))

(declare-fun call!506921 () Regex!16066)

(declare-fun b!6120314 () Bool)

(assert (=> b!6120314 (= e!3731199 (Union!16066 (Concat!24911 call!506921 (regTwo!32644 r!7292)) call!506920))))

(declare-fun b!6120315 () Bool)

(assert (=> b!6120315 (= e!3731203 (Union!16066 call!506921 call!506922))))

(declare-fun b!6120316 () Bool)

(assert (=> b!6120316 (= e!3731199 (Union!16066 (Concat!24911 call!506920 (regTwo!32644 r!7292)) EmptyLang!16066))))

(declare-fun bm!506917 () Bool)

(assert (=> bm!506917 (= call!506923 call!506922)))

(declare-fun bm!506918 () Bool)

(assert (=> bm!506918 (= call!506921 (derivativeStep!4787 (ite c!1099876 (regOne!32645 r!7292) (regOne!32644 r!7292)) (head!12654 s!2326)))))

(assert (= (and d!1917641 c!1099874) b!6120311))

(assert (= (and d!1917641 (not c!1099874)) b!6120313))

(assert (= (and b!6120313 c!1099875) b!6120310))

(assert (= (and b!6120313 (not c!1099875)) b!6120307))

(assert (= (and b!6120307 c!1099876) b!6120315))

(assert (= (and b!6120307 (not c!1099876)) b!6120309))

(assert (= (and b!6120309 c!1099872) b!6120312))

(assert (= (and b!6120309 (not c!1099872)) b!6120308))

(assert (= (and b!6120308 c!1099873) b!6120314))

(assert (= (and b!6120308 (not c!1099873)) b!6120316))

(assert (= (or b!6120314 b!6120316) bm!506915))

(assert (= (or b!6120312 bm!506915) bm!506917))

(assert (= (or b!6120315 bm!506917) bm!506916))

(assert (= (or b!6120315 b!6120314) bm!506918))

(declare-fun m!6966616 () Bool)

(assert (=> b!6120308 m!6966616))

(assert (=> bm!506916 m!6966402))

(declare-fun m!6966618 () Bool)

(assert (=> bm!506916 m!6966618))

(declare-fun m!6966620 () Bool)

(assert (=> d!1917641 m!6966620))

(assert (=> d!1917641 m!6965898))

(assert (=> bm!506918 m!6966402))

(declare-fun m!6966622 () Bool)

(assert (=> bm!506918 m!6966622))

(assert (=> b!6119987 d!1917641))

(assert (=> b!6119987 d!1917561))

(assert (=> b!6119987 d!1917585))

(declare-fun bm!506919 () Bool)

(declare-fun call!506926 () (Set Context!10900))

(declare-fun call!506928 () (Set Context!10900))

(assert (=> bm!506919 (= call!506926 call!506928)))

(declare-fun b!6120317 () Bool)

(declare-fun e!3731205 () (Set Context!10900))

(declare-fun e!3731204 () (Set Context!10900))

(assert (=> b!6120317 (= e!3731205 e!3731204)))

(declare-fun c!1099881 () Bool)

(assert (=> b!6120317 (= c!1099881 (is-Concat!24911 (ite c!1099682 (regTwo!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099680 (regTwo!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099683 (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (reg!16395 (h!70821 (exprs!5950 (h!70822 zl!343)))))))))))

(declare-fun b!6120318 () Bool)

(assert (=> b!6120318 (= e!3731204 call!506926)))

(declare-fun c!1099877 () Bool)

(declare-fun d!1917643 () Bool)

(assert (=> d!1917643 (= c!1099877 (and (is-ElementMatch!16066 (ite c!1099682 (regTwo!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099680 (regTwo!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099683 (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (reg!16395 (h!70821 (exprs!5950 (h!70822 zl!343)))))))) (= (c!1099622 (ite c!1099682 (regTwo!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099680 (regTwo!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099683 (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (reg!16395 (h!70821 (exprs!5950 (h!70822 zl!343)))))))) (h!70823 s!2326))))))

(declare-fun e!3731207 () (Set Context!10900))

(assert (=> d!1917643 (= (derivationStepZipperDown!1314 (ite c!1099682 (regTwo!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099680 (regTwo!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099683 (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (reg!16395 (h!70821 (exprs!5950 (h!70822 zl!343))))))) (ite (or c!1099682 c!1099680) lt!2330795 (Context!10901 call!506829)) (h!70823 s!2326)) e!3731207)))

(declare-fun b!6120319 () Bool)

(declare-fun e!3731209 () (Set Context!10900))

(assert (=> b!6120319 (= e!3731207 e!3731209)))

(declare-fun c!1099880 () Bool)

(assert (=> b!6120319 (= c!1099880 (is-Union!16066 (ite c!1099682 (regTwo!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099680 (regTwo!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099683 (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (reg!16395 (h!70821 (exprs!5950 (h!70822 zl!343)))))))))))

(declare-fun c!1099879 () Bool)

(declare-fun b!6120320 () Bool)

(assert (=> b!6120320 (= c!1099879 (is-Star!16066 (ite c!1099682 (regTwo!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099680 (regTwo!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099683 (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (reg!16395 (h!70821 (exprs!5950 (h!70822 zl!343)))))))))))

(declare-fun e!3731208 () (Set Context!10900))

(assert (=> b!6120320 (= e!3731204 e!3731208)))

(declare-fun b!6120321 () Bool)

(declare-fun call!506929 () (Set Context!10900))

(declare-fun call!506924 () (Set Context!10900))

(assert (=> b!6120321 (= e!3731209 (set.union call!506929 call!506924))))

(declare-fun b!6120322 () Bool)

(assert (=> b!6120322 (= e!3731208 call!506926)))

(declare-fun bm!506920 () Bool)

(declare-fun call!506927 () List!64497)

(declare-fun c!1099878 () Bool)

(assert (=> bm!506920 (= call!506927 ($colon$colon!1943 (exprs!5950 (ite (or c!1099682 c!1099680) lt!2330795 (Context!10901 call!506829))) (ite (or c!1099878 c!1099881) (regTwo!32644 (ite c!1099682 (regTwo!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099680 (regTwo!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099683 (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (reg!16395 (h!70821 (exprs!5950 (h!70822 zl!343)))))))) (ite c!1099682 (regTwo!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099680 (regTwo!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099683 (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (reg!16395 (h!70821 (exprs!5950 (h!70822 zl!343))))))))))))

(declare-fun b!6120323 () Bool)

(assert (=> b!6120323 (= e!3731207 (set.insert (ite (or c!1099682 c!1099680) lt!2330795 (Context!10901 call!506829)) (as set.empty (Set Context!10900))))))

(declare-fun bm!506921 () Bool)

(assert (=> bm!506921 (= call!506929 (derivationStepZipperDown!1314 (ite c!1099880 (regOne!32645 (ite c!1099682 (regTwo!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099680 (regTwo!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099683 (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (reg!16395 (h!70821 (exprs!5950 (h!70822 zl!343)))))))) (regOne!32644 (ite c!1099682 (regTwo!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099680 (regTwo!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099683 (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (reg!16395 (h!70821 (exprs!5950 (h!70822 zl!343))))))))) (ite c!1099880 (ite (or c!1099682 c!1099680) lt!2330795 (Context!10901 call!506829)) (Context!10901 call!506927)) (h!70823 s!2326)))))

(declare-fun bm!506922 () Bool)

(declare-fun call!506925 () List!64497)

(assert (=> bm!506922 (= call!506925 call!506927)))

(declare-fun b!6120324 () Bool)

(assert (=> b!6120324 (= e!3731205 (set.union call!506929 call!506928))))

(declare-fun b!6120325 () Bool)

(assert (=> b!6120325 (= e!3731208 (as set.empty (Set Context!10900)))))

(declare-fun bm!506923 () Bool)

(assert (=> bm!506923 (= call!506928 call!506924)))

(declare-fun b!6120326 () Bool)

(declare-fun e!3731206 () Bool)

(assert (=> b!6120326 (= c!1099878 e!3731206)))

(declare-fun res!2537604 () Bool)

(assert (=> b!6120326 (=> (not res!2537604) (not e!3731206))))

(assert (=> b!6120326 (= res!2537604 (is-Concat!24911 (ite c!1099682 (regTwo!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099680 (regTwo!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099683 (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (reg!16395 (h!70821 (exprs!5950 (h!70822 zl!343)))))))))))

(assert (=> b!6120326 (= e!3731209 e!3731205)))

(declare-fun bm!506924 () Bool)

(assert (=> bm!506924 (= call!506924 (derivationStepZipperDown!1314 (ite c!1099880 (regTwo!32645 (ite c!1099682 (regTwo!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099680 (regTwo!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099683 (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (reg!16395 (h!70821 (exprs!5950 (h!70822 zl!343)))))))) (ite c!1099878 (regTwo!32644 (ite c!1099682 (regTwo!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099680 (regTwo!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099683 (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (reg!16395 (h!70821 (exprs!5950 (h!70822 zl!343)))))))) (ite c!1099881 (regOne!32644 (ite c!1099682 (regTwo!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099680 (regTwo!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099683 (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (reg!16395 (h!70821 (exprs!5950 (h!70822 zl!343)))))))) (reg!16395 (ite c!1099682 (regTwo!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099680 (regTwo!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099683 (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (reg!16395 (h!70821 (exprs!5950 (h!70822 zl!343))))))))))) (ite (or c!1099880 c!1099878) (ite (or c!1099682 c!1099680) lt!2330795 (Context!10901 call!506829)) (Context!10901 call!506925)) (h!70823 s!2326)))))

(declare-fun b!6120327 () Bool)

(assert (=> b!6120327 (= e!3731206 (nullable!6059 (regOne!32644 (ite c!1099682 (regTwo!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099680 (regTwo!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099683 (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (reg!16395 (h!70821 (exprs!5950 (h!70822 zl!343))))))))))))

(assert (= (and d!1917643 c!1099877) b!6120323))

(assert (= (and d!1917643 (not c!1099877)) b!6120319))

(assert (= (and b!6120319 c!1099880) b!6120321))

(assert (= (and b!6120319 (not c!1099880)) b!6120326))

(assert (= (and b!6120326 res!2537604) b!6120327))

(assert (= (and b!6120326 c!1099878) b!6120324))

(assert (= (and b!6120326 (not c!1099878)) b!6120317))

(assert (= (and b!6120317 c!1099881) b!6120318))

(assert (= (and b!6120317 (not c!1099881)) b!6120320))

(assert (= (and b!6120320 c!1099879) b!6120322))

(assert (= (and b!6120320 (not c!1099879)) b!6120325))

(assert (= (or b!6120318 b!6120322) bm!506922))

(assert (= (or b!6120318 b!6120322) bm!506919))

(assert (= (or b!6120324 bm!506922) bm!506920))

(assert (= (or b!6120324 bm!506919) bm!506923))

(assert (= (or b!6120321 bm!506923) bm!506924))

(assert (= (or b!6120321 b!6120324) bm!506921))

(declare-fun m!6966624 () Bool)

(assert (=> bm!506921 m!6966624))

(declare-fun m!6966626 () Bool)

(assert (=> bm!506920 m!6966626))

(declare-fun m!6966628 () Bool)

(assert (=> bm!506924 m!6966628))

(declare-fun m!6966630 () Bool)

(assert (=> b!6120323 m!6966630))

(declare-fun m!6966632 () Bool)

(assert (=> b!6120327 m!6966632))

(assert (=> bm!506828 d!1917643))

(declare-fun b!6120328 () Bool)

(declare-fun e!3731210 () (Set Context!10900))

(assert (=> b!6120328 (= e!3731210 (as set.empty (Set Context!10900)))))

(declare-fun bm!506925 () Bool)

(declare-fun call!506930 () (Set Context!10900))

(assert (=> bm!506925 (= call!506930 (derivationStepZipperDown!1314 (h!70821 (exprs!5950 (Context!10901 (t!377958 (exprs!5950 (h!70822 zl!343)))))) (Context!10901 (t!377958 (exprs!5950 (Context!10901 (t!377958 (exprs!5950 (h!70822 zl!343))))))) (h!70823 s!2326)))))

(declare-fun b!6120329 () Bool)

(assert (=> b!6120329 (= e!3731210 call!506930)))

(declare-fun d!1917645 () Bool)

(declare-fun c!1099883 () Bool)

(declare-fun e!3731212 () Bool)

(assert (=> d!1917645 (= c!1099883 e!3731212)))

(declare-fun res!2537605 () Bool)

(assert (=> d!1917645 (=> (not res!2537605) (not e!3731212))))

(assert (=> d!1917645 (= res!2537605 (is-Cons!64373 (exprs!5950 (Context!10901 (t!377958 (exprs!5950 (h!70822 zl!343)))))))))

(declare-fun e!3731211 () (Set Context!10900))

(assert (=> d!1917645 (= (derivationStepZipperUp!1240 (Context!10901 (t!377958 (exprs!5950 (h!70822 zl!343)))) (h!70823 s!2326)) e!3731211)))

(declare-fun b!6120330 () Bool)

(assert (=> b!6120330 (= e!3731212 (nullable!6059 (h!70821 (exprs!5950 (Context!10901 (t!377958 (exprs!5950 (h!70822 zl!343))))))))))

(declare-fun b!6120331 () Bool)

(assert (=> b!6120331 (= e!3731211 (set.union call!506930 (derivationStepZipperUp!1240 (Context!10901 (t!377958 (exprs!5950 (Context!10901 (t!377958 (exprs!5950 (h!70822 zl!343))))))) (h!70823 s!2326))))))

(declare-fun b!6120332 () Bool)

(assert (=> b!6120332 (= e!3731211 e!3731210)))

(declare-fun c!1099882 () Bool)

(assert (=> b!6120332 (= c!1099882 (is-Cons!64373 (exprs!5950 (Context!10901 (t!377958 (exprs!5950 (h!70822 zl!343)))))))))

(assert (= (and d!1917645 res!2537605) b!6120330))

(assert (= (and d!1917645 c!1099883) b!6120331))

(assert (= (and d!1917645 (not c!1099883)) b!6120332))

(assert (= (and b!6120332 c!1099882) b!6120329))

(assert (= (and b!6120332 (not c!1099882)) b!6120328))

(assert (= (or b!6120331 b!6120329) bm!506925))

(declare-fun m!6966634 () Bool)

(assert (=> bm!506925 m!6966634))

(declare-fun m!6966636 () Bool)

(assert (=> b!6120330 m!6966636))

(declare-fun m!6966638 () Bool)

(assert (=> b!6120331 m!6966638))

(assert (=> b!6119542 d!1917645))

(declare-fun b!6120334 () Bool)

(declare-fun res!2537606 () Bool)

(declare-fun e!3731216 () Bool)

(assert (=> b!6120334 (=> (not res!2537606) (not e!3731216))))

(assert (=> b!6120334 (= res!2537606 (isEmpty!36310 (tail!11739 (_2!36348 (get!22201 lt!2330887)))))))

(declare-fun b!6120335 () Bool)

(declare-fun e!3731213 () Bool)

(declare-fun lt!2330941 () Bool)

(assert (=> b!6120335 (= e!3731213 (not lt!2330941))))

(declare-fun b!6120336 () Bool)

(declare-fun e!3731214 () Bool)

(assert (=> b!6120336 (= e!3731214 (nullable!6059 (regTwo!32644 r!7292)))))

(declare-fun bm!506926 () Bool)

(declare-fun call!506931 () Bool)

(assert (=> bm!506926 (= call!506931 (isEmpty!36310 (_2!36348 (get!22201 lt!2330887))))))

(declare-fun b!6120337 () Bool)

(declare-fun e!3731217 () Bool)

(assert (=> b!6120337 (= e!3731217 e!3731213)))

(declare-fun c!1099884 () Bool)

(assert (=> b!6120337 (= c!1099884 (is-EmptyLang!16066 (regTwo!32644 r!7292)))))

(declare-fun b!6120338 () Bool)

(assert (=> b!6120338 (= e!3731216 (= (head!12654 (_2!36348 (get!22201 lt!2330887))) (c!1099622 (regTwo!32644 r!7292))))))

(declare-fun b!6120339 () Bool)

(declare-fun e!3731218 () Bool)

(assert (=> b!6120339 (= e!3731218 (not (= (head!12654 (_2!36348 (get!22201 lt!2330887))) (c!1099622 (regTwo!32644 r!7292)))))))

(declare-fun b!6120340 () Bool)

(declare-fun e!3731215 () Bool)

(assert (=> b!6120340 (= e!3731215 e!3731218)))

(declare-fun res!2537610 () Bool)

(assert (=> b!6120340 (=> res!2537610 e!3731218)))

(assert (=> b!6120340 (= res!2537610 call!506931)))

(declare-fun b!6120341 () Bool)

(declare-fun res!2537607 () Bool)

(declare-fun e!3731219 () Bool)

(assert (=> b!6120341 (=> res!2537607 e!3731219)))

(assert (=> b!6120341 (= res!2537607 e!3731216)))

(declare-fun res!2537609 () Bool)

(assert (=> b!6120341 (=> (not res!2537609) (not e!3731216))))

(assert (=> b!6120341 (= res!2537609 lt!2330941)))

(declare-fun b!6120342 () Bool)

(declare-fun res!2537613 () Bool)

(assert (=> b!6120342 (=> (not res!2537613) (not e!3731216))))

(assert (=> b!6120342 (= res!2537613 (not call!506931))))

(declare-fun b!6120333 () Bool)

(assert (=> b!6120333 (= e!3731214 (matchR!8249 (derivativeStep!4787 (regTwo!32644 r!7292) (head!12654 (_2!36348 (get!22201 lt!2330887)))) (tail!11739 (_2!36348 (get!22201 lt!2330887)))))))

(declare-fun d!1917647 () Bool)

(assert (=> d!1917647 e!3731217))

(declare-fun c!1099886 () Bool)

(assert (=> d!1917647 (= c!1099886 (is-EmptyExpr!16066 (regTwo!32644 r!7292)))))

(assert (=> d!1917647 (= lt!2330941 e!3731214)))

(declare-fun c!1099885 () Bool)

(assert (=> d!1917647 (= c!1099885 (isEmpty!36310 (_2!36348 (get!22201 lt!2330887))))))

(assert (=> d!1917647 (validRegex!7802 (regTwo!32644 r!7292))))

(assert (=> d!1917647 (= (matchR!8249 (regTwo!32644 r!7292) (_2!36348 (get!22201 lt!2330887))) lt!2330941)))

(declare-fun b!6120343 () Bool)

(assert (=> b!6120343 (= e!3731217 (= lt!2330941 call!506931))))

(declare-fun b!6120344 () Bool)

(declare-fun res!2537608 () Bool)

(assert (=> b!6120344 (=> res!2537608 e!3731218)))

(assert (=> b!6120344 (= res!2537608 (not (isEmpty!36310 (tail!11739 (_2!36348 (get!22201 lt!2330887))))))))

(declare-fun b!6120345 () Bool)

(assert (=> b!6120345 (= e!3731219 e!3731215)))

(declare-fun res!2537612 () Bool)

(assert (=> b!6120345 (=> (not res!2537612) (not e!3731215))))

(assert (=> b!6120345 (= res!2537612 (not lt!2330941))))

(declare-fun b!6120346 () Bool)

(declare-fun res!2537611 () Bool)

(assert (=> b!6120346 (=> res!2537611 e!3731219)))

(assert (=> b!6120346 (= res!2537611 (not (is-ElementMatch!16066 (regTwo!32644 r!7292))))))

(assert (=> b!6120346 (= e!3731213 e!3731219)))

(assert (= (and d!1917647 c!1099885) b!6120336))

(assert (= (and d!1917647 (not c!1099885)) b!6120333))

(assert (= (and d!1917647 c!1099886) b!6120343))

(assert (= (and d!1917647 (not c!1099886)) b!6120337))

(assert (= (and b!6120337 c!1099884) b!6120335))

(assert (= (and b!6120337 (not c!1099884)) b!6120346))

(assert (= (and b!6120346 (not res!2537611)) b!6120341))

(assert (= (and b!6120341 res!2537609) b!6120342))

(assert (= (and b!6120342 res!2537613) b!6120334))

(assert (= (and b!6120334 res!2537606) b!6120338))

(assert (= (and b!6120341 (not res!2537607)) b!6120345))

(assert (= (and b!6120345 res!2537612) b!6120340))

(assert (= (and b!6120340 (not res!2537610)) b!6120344))

(assert (= (and b!6120344 (not res!2537608)) b!6120339))

(assert (= (or b!6120343 b!6120340 b!6120342) bm!506926))

(assert (=> b!6120336 m!6966572))

(declare-fun m!6966640 () Bool)

(assert (=> b!6120344 m!6966640))

(assert (=> b!6120344 m!6966640))

(declare-fun m!6966642 () Bool)

(assert (=> b!6120344 m!6966642))

(declare-fun m!6966644 () Bool)

(assert (=> b!6120338 m!6966644))

(declare-fun m!6966646 () Bool)

(assert (=> d!1917647 m!6966646))

(assert (=> d!1917647 m!6966574))

(assert (=> b!6120339 m!6966644))

(assert (=> b!6120334 m!6966640))

(assert (=> b!6120334 m!6966640))

(assert (=> b!6120334 m!6966642))

(assert (=> bm!506926 m!6966646))

(assert (=> b!6120333 m!6966644))

(assert (=> b!6120333 m!6966644))

(declare-fun m!6966648 () Bool)

(assert (=> b!6120333 m!6966648))

(assert (=> b!6120333 m!6966640))

(assert (=> b!6120333 m!6966648))

(assert (=> b!6120333 m!6966640))

(declare-fun m!6966650 () Bool)

(assert (=> b!6120333 m!6966650))

(assert (=> b!6119773 d!1917647))

(declare-fun d!1917649 () Bool)

(assert (=> d!1917649 (= (get!22201 lt!2330887) (v!52093 lt!2330887))))

(assert (=> b!6119773 d!1917649))

(declare-fun d!1917651 () Bool)

(assert (=> d!1917651 (= (nullable!6059 (reg!16395 r!7292)) (nullableFct!2023 (reg!16395 r!7292)))))

(declare-fun bs!1518547 () Bool)

(assert (= bs!1518547 d!1917651))

(declare-fun m!6966652 () Bool)

(assert (=> bs!1518547 m!6966652))

(assert (=> b!6120012 d!1917651))

(assert (=> d!1917495 d!1917485))

(declare-fun d!1917653 () Bool)

(assert (=> d!1917653 (= (Exists!3136 lambda!333384) (choose!45476 lambda!333384))))

(declare-fun bs!1518548 () Bool)

(assert (= bs!1518548 d!1917653))

(declare-fun m!6966654 () Bool)

(assert (=> bs!1518548 m!6966654))

(assert (=> d!1917495 d!1917653))

(declare-fun d!1917655 () Bool)

(declare-fun res!2537616 () Bool)

(declare-fun e!3731222 () Bool)

(assert (=> d!1917655 (=> res!2537616 e!3731222)))

(assert (=> d!1917655 (= res!2537616 (is-ElementMatch!16066 (regOne!32644 r!7292)))))

(assert (=> d!1917655 (= (validRegex!7802 (regOne!32644 r!7292)) e!3731222)))

(declare-fun c!1099887 () Bool)

(declare-fun call!506933 () Bool)

(declare-fun c!1099888 () Bool)

(declare-fun bm!506927 () Bool)

(assert (=> bm!506927 (= call!506933 (validRegex!7802 (ite c!1099888 (reg!16395 (regOne!32644 r!7292)) (ite c!1099887 (regTwo!32645 (regOne!32644 r!7292)) (regTwo!32644 (regOne!32644 r!7292))))))))

(declare-fun b!6120347 () Bool)

(declare-fun res!2537615 () Bool)

(declare-fun e!3731224 () Bool)

(assert (=> b!6120347 (=> (not res!2537615) (not e!3731224))))

(declare-fun call!506932 () Bool)

(assert (=> b!6120347 (= res!2537615 call!506932)))

(declare-fun e!3731223 () Bool)

(assert (=> b!6120347 (= e!3731223 e!3731224)))

(declare-fun bm!506928 () Bool)

(declare-fun call!506934 () Bool)

(assert (=> bm!506928 (= call!506934 call!506933)))

(declare-fun bm!506929 () Bool)

(assert (=> bm!506929 (= call!506932 (validRegex!7802 (ite c!1099887 (regOne!32645 (regOne!32644 r!7292)) (regOne!32644 (regOne!32644 r!7292)))))))

(declare-fun b!6120348 () Bool)

(declare-fun e!3731225 () Bool)

(assert (=> b!6120348 (= e!3731222 e!3731225)))

(assert (=> b!6120348 (= c!1099888 (is-Star!16066 (regOne!32644 r!7292)))))

(declare-fun b!6120349 () Bool)

(declare-fun e!3731221 () Bool)

(assert (=> b!6120349 (= e!3731225 e!3731221)))

(declare-fun res!2537617 () Bool)

(assert (=> b!6120349 (= res!2537617 (not (nullable!6059 (reg!16395 (regOne!32644 r!7292)))))))

(assert (=> b!6120349 (=> (not res!2537617) (not e!3731221))))

(declare-fun b!6120350 () Bool)

(declare-fun e!3731226 () Bool)

(declare-fun e!3731220 () Bool)

(assert (=> b!6120350 (= e!3731226 e!3731220)))

(declare-fun res!2537618 () Bool)

(assert (=> b!6120350 (=> (not res!2537618) (not e!3731220))))

(assert (=> b!6120350 (= res!2537618 call!506932)))

(declare-fun b!6120351 () Bool)

(assert (=> b!6120351 (= e!3731225 e!3731223)))

(assert (=> b!6120351 (= c!1099887 (is-Union!16066 (regOne!32644 r!7292)))))

(declare-fun b!6120352 () Bool)

(declare-fun res!2537614 () Bool)

(assert (=> b!6120352 (=> res!2537614 e!3731226)))

(assert (=> b!6120352 (= res!2537614 (not (is-Concat!24911 (regOne!32644 r!7292))))))

(assert (=> b!6120352 (= e!3731223 e!3731226)))

(declare-fun b!6120353 () Bool)

(assert (=> b!6120353 (= e!3731221 call!506933)))

(declare-fun b!6120354 () Bool)

(assert (=> b!6120354 (= e!3731224 call!506934)))

(declare-fun b!6120355 () Bool)

(assert (=> b!6120355 (= e!3731220 call!506934)))

(assert (= (and d!1917655 (not res!2537616)) b!6120348))

(assert (= (and b!6120348 c!1099888) b!6120349))

(assert (= (and b!6120348 (not c!1099888)) b!6120351))

(assert (= (and b!6120349 res!2537617) b!6120353))

(assert (= (and b!6120351 c!1099887) b!6120347))

(assert (= (and b!6120351 (not c!1099887)) b!6120352))

(assert (= (and b!6120347 res!2537615) b!6120354))

(assert (= (and b!6120352 (not res!2537614)) b!6120350))

(assert (= (and b!6120350 res!2537618) b!6120355))

(assert (= (or b!6120354 b!6120355) bm!506928))

(assert (= (or b!6120347 b!6120350) bm!506929))

(assert (= (or b!6120353 bm!506928) bm!506927))

(declare-fun m!6966656 () Bool)

(assert (=> bm!506927 m!6966656))

(declare-fun m!6966658 () Bool)

(assert (=> bm!506929 m!6966658))

(declare-fun m!6966660 () Bool)

(assert (=> b!6120349 m!6966660))

(assert (=> d!1917495 d!1917655))

(assert (=> d!1917495 d!1917509))

(declare-fun bs!1518549 () Bool)

(declare-fun d!1917657 () Bool)

(assert (= bs!1518549 (and d!1917657 d!1917501)))

(declare-fun lambda!333420 () Int)

(assert (=> bs!1518549 (= lambda!333420 lambda!333391)))

(declare-fun bs!1518550 () Bool)

(assert (= bs!1518550 (and d!1917657 d!1917495)))

(assert (=> bs!1518550 (= lambda!333420 lambda!333384)))

(declare-fun bs!1518551 () Bool)

(assert (= bs!1518551 (and d!1917657 b!6120266)))

(assert (=> bs!1518551 (not (= lambda!333420 lambda!333417))))

(declare-fun bs!1518552 () Bool)

(assert (= bs!1518552 (and d!1917657 b!6119299)))

(assert (=> bs!1518552 (= lambda!333420 lambda!333338)))

(assert (=> bs!1518552 (not (= lambda!333420 lambda!333339))))

(assert (=> bs!1518549 (not (= lambda!333420 lambda!333393))))

(declare-fun bs!1518553 () Bool)

(assert (= bs!1518553 (and d!1917657 b!6119933)))

(assert (=> bs!1518553 (not (= lambda!333420 lambda!333399))))

(declare-fun bs!1518554 () Bool)

(assert (= bs!1518554 (and d!1917657 b!6120267)))

(assert (=> bs!1518554 (not (= lambda!333420 lambda!333416))))

(declare-fun bs!1518555 () Bool)

(assert (= bs!1518555 (and d!1917657 b!6119932)))

(assert (=> bs!1518555 (not (= lambda!333420 lambda!333400))))

(assert (=> d!1917657 true))

(assert (=> d!1917657 true))

(assert (=> d!1917657 true))

(assert (=> d!1917657 (= (isDefined!12660 (findConcatSeparation!2371 (regOne!32644 r!7292) (regTwo!32644 r!7292) Nil!64375 s!2326 s!2326)) (Exists!3136 lambda!333420))))

(assert (=> d!1917657 true))

(declare-fun _$89!2179 () Unit!157419)

(assert (=> d!1917657 (= (choose!45477 (regOne!32644 r!7292) (regTwo!32644 r!7292) s!2326) _$89!2179)))

(declare-fun bs!1518556 () Bool)

(assert (= bs!1518556 d!1917657))

(assert (=> bs!1518556 m!6965920))

(assert (=> bs!1518556 m!6965920))

(assert (=> bs!1518556 m!6965922))

(declare-fun m!6966662 () Bool)

(assert (=> bs!1518556 m!6966662))

(assert (=> d!1917495 d!1917657))

(declare-fun d!1917659 () Bool)

(assert (=> d!1917659 (= ($colon$colon!1943 (exprs!5950 lt!2330795) (ite (or c!1099680 c!1099683) (regTwo!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (h!70821 (exprs!5950 (h!70822 zl!343))))) (Cons!64373 (ite (or c!1099680 c!1099683) (regTwo!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (h!70821 (exprs!5950 (h!70822 zl!343)))) (exprs!5950 lt!2330795)))))

(assert (=> bm!506824 d!1917659))

(declare-fun bm!506930 () Bool)

(declare-fun call!506937 () (Set Context!10900))

(declare-fun call!506939 () (Set Context!10900))

(assert (=> bm!506930 (= call!506937 call!506939)))

(declare-fun b!6120360 () Bool)

(declare-fun e!3731230 () (Set Context!10900))

(declare-fun e!3731229 () (Set Context!10900))

(assert (=> b!6120360 (= e!3731230 e!3731229)))

(declare-fun c!1099893 () Bool)

(assert (=> b!6120360 (= c!1099893 (is-Concat!24911 (h!70821 (exprs!5950 lt!2330795))))))

(declare-fun b!6120361 () Bool)

(assert (=> b!6120361 (= e!3731229 call!506937)))

(declare-fun d!1917661 () Bool)

(declare-fun c!1099889 () Bool)

(assert (=> d!1917661 (= c!1099889 (and (is-ElementMatch!16066 (h!70821 (exprs!5950 lt!2330795))) (= (c!1099622 (h!70821 (exprs!5950 lt!2330795))) (h!70823 s!2326))))))

(declare-fun e!3731232 () (Set Context!10900))

(assert (=> d!1917661 (= (derivationStepZipperDown!1314 (h!70821 (exprs!5950 lt!2330795)) (Context!10901 (t!377958 (exprs!5950 lt!2330795))) (h!70823 s!2326)) e!3731232)))

(declare-fun b!6120362 () Bool)

(declare-fun e!3731234 () (Set Context!10900))

(assert (=> b!6120362 (= e!3731232 e!3731234)))

(declare-fun c!1099892 () Bool)

(assert (=> b!6120362 (= c!1099892 (is-Union!16066 (h!70821 (exprs!5950 lt!2330795))))))

(declare-fun b!6120363 () Bool)

(declare-fun c!1099891 () Bool)

(assert (=> b!6120363 (= c!1099891 (is-Star!16066 (h!70821 (exprs!5950 lt!2330795))))))

(declare-fun e!3731233 () (Set Context!10900))

(assert (=> b!6120363 (= e!3731229 e!3731233)))

(declare-fun b!6120364 () Bool)

(declare-fun call!506940 () (Set Context!10900))

(declare-fun call!506935 () (Set Context!10900))

(assert (=> b!6120364 (= e!3731234 (set.union call!506940 call!506935))))

(declare-fun b!6120365 () Bool)

(assert (=> b!6120365 (= e!3731233 call!506937)))

(declare-fun c!1099890 () Bool)

(declare-fun bm!506931 () Bool)

(declare-fun call!506938 () List!64497)

(assert (=> bm!506931 (= call!506938 ($colon$colon!1943 (exprs!5950 (Context!10901 (t!377958 (exprs!5950 lt!2330795)))) (ite (or c!1099890 c!1099893) (regTwo!32644 (h!70821 (exprs!5950 lt!2330795))) (h!70821 (exprs!5950 lt!2330795)))))))

(declare-fun b!6120366 () Bool)

(assert (=> b!6120366 (= e!3731232 (set.insert (Context!10901 (t!377958 (exprs!5950 lt!2330795))) (as set.empty (Set Context!10900))))))

(declare-fun bm!506932 () Bool)

(assert (=> bm!506932 (= call!506940 (derivationStepZipperDown!1314 (ite c!1099892 (regOne!32645 (h!70821 (exprs!5950 lt!2330795))) (regOne!32644 (h!70821 (exprs!5950 lt!2330795)))) (ite c!1099892 (Context!10901 (t!377958 (exprs!5950 lt!2330795))) (Context!10901 call!506938)) (h!70823 s!2326)))))

(declare-fun bm!506933 () Bool)

(declare-fun call!506936 () List!64497)

(assert (=> bm!506933 (= call!506936 call!506938)))

(declare-fun b!6120367 () Bool)

(assert (=> b!6120367 (= e!3731230 (set.union call!506940 call!506939))))

(declare-fun b!6120368 () Bool)

(assert (=> b!6120368 (= e!3731233 (as set.empty (Set Context!10900)))))

(declare-fun bm!506934 () Bool)

(assert (=> bm!506934 (= call!506939 call!506935)))

(declare-fun b!6120369 () Bool)

(declare-fun e!3731231 () Bool)

(assert (=> b!6120369 (= c!1099890 e!3731231)))

(declare-fun res!2537623 () Bool)

(assert (=> b!6120369 (=> (not res!2537623) (not e!3731231))))

(assert (=> b!6120369 (= res!2537623 (is-Concat!24911 (h!70821 (exprs!5950 lt!2330795))))))

(assert (=> b!6120369 (= e!3731234 e!3731230)))

(declare-fun bm!506935 () Bool)

(assert (=> bm!506935 (= call!506935 (derivationStepZipperDown!1314 (ite c!1099892 (regTwo!32645 (h!70821 (exprs!5950 lt!2330795))) (ite c!1099890 (regTwo!32644 (h!70821 (exprs!5950 lt!2330795))) (ite c!1099893 (regOne!32644 (h!70821 (exprs!5950 lt!2330795))) (reg!16395 (h!70821 (exprs!5950 lt!2330795)))))) (ite (or c!1099892 c!1099890) (Context!10901 (t!377958 (exprs!5950 lt!2330795))) (Context!10901 call!506936)) (h!70823 s!2326)))))

(declare-fun b!6120370 () Bool)

(assert (=> b!6120370 (= e!3731231 (nullable!6059 (regOne!32644 (h!70821 (exprs!5950 lt!2330795)))))))

(assert (= (and d!1917661 c!1099889) b!6120366))

(assert (= (and d!1917661 (not c!1099889)) b!6120362))

(assert (= (and b!6120362 c!1099892) b!6120364))

(assert (= (and b!6120362 (not c!1099892)) b!6120369))

(assert (= (and b!6120369 res!2537623) b!6120370))

(assert (= (and b!6120369 c!1099890) b!6120367))

(assert (= (and b!6120369 (not c!1099890)) b!6120360))

(assert (= (and b!6120360 c!1099893) b!6120361))

(assert (= (and b!6120360 (not c!1099893)) b!6120363))

(assert (= (and b!6120363 c!1099891) b!6120365))

(assert (= (and b!6120363 (not c!1099891)) b!6120368))

(assert (= (or b!6120361 b!6120365) bm!506933))

(assert (= (or b!6120361 b!6120365) bm!506930))

(assert (= (or b!6120367 bm!506933) bm!506931))

(assert (= (or b!6120367 bm!506930) bm!506934))

(assert (= (or b!6120364 bm!506934) bm!506935))

(assert (= (or b!6120364 b!6120367) bm!506932))

(declare-fun m!6966664 () Bool)

(assert (=> bm!506932 m!6966664))

(declare-fun m!6966666 () Bool)

(assert (=> bm!506931 m!6966666))

(declare-fun m!6966668 () Bool)

(assert (=> bm!506935 m!6966668))

(declare-fun m!6966670 () Bool)

(assert (=> b!6120366 m!6966670))

(declare-fun m!6966672 () Bool)

(assert (=> b!6120370 m!6966672))

(assert (=> bm!506794 d!1917661))

(declare-fun d!1917663 () Bool)

(assert (=> d!1917663 (= (isEmptyLang!1493 lt!2330850) (is-EmptyLang!16066 lt!2330850))))

(assert (=> b!6119441 d!1917663))

(declare-fun d!1917665 () Bool)

(assert (=> d!1917665 (= (isEmpty!36307 (exprs!5950 (h!70822 zl!343))) (is-Nil!64373 (exprs!5950 (h!70822 zl!343))))))

(assert (=> b!6119708 d!1917665))

(assert (=> b!6119993 d!1917561))

(declare-fun bm!506936 () Bool)

(declare-fun call!506943 () (Set Context!10900))

(declare-fun call!506945 () (Set Context!10900))

(assert (=> bm!506936 (= call!506943 call!506945)))

(declare-fun b!6120371 () Bool)

(declare-fun e!3731236 () (Set Context!10900))

(declare-fun e!3731235 () (Set Context!10900))

(assert (=> b!6120371 (= e!3731236 e!3731235)))

(declare-fun c!1099898 () Bool)

(assert (=> b!6120371 (= c!1099898 (is-Concat!24911 (ite c!1099682 (regOne!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))))))))

(declare-fun b!6120372 () Bool)

(assert (=> b!6120372 (= e!3731235 call!506943)))

(declare-fun d!1917667 () Bool)

(declare-fun c!1099894 () Bool)

(assert (=> d!1917667 (= c!1099894 (and (is-ElementMatch!16066 (ite c!1099682 (regOne!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))))) (= (c!1099622 (ite c!1099682 (regOne!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))))) (h!70823 s!2326))))))

(declare-fun e!3731238 () (Set Context!10900))

(assert (=> d!1917667 (= (derivationStepZipperDown!1314 (ite c!1099682 (regOne!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343))))) (ite c!1099682 lt!2330795 (Context!10901 call!506831)) (h!70823 s!2326)) e!3731238)))

(declare-fun b!6120373 () Bool)

(declare-fun e!3731240 () (Set Context!10900))

(assert (=> b!6120373 (= e!3731238 e!3731240)))

(declare-fun c!1099897 () Bool)

(assert (=> b!6120373 (= c!1099897 (is-Union!16066 (ite c!1099682 (regOne!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))))))))

(declare-fun b!6120374 () Bool)

(declare-fun c!1099896 () Bool)

(assert (=> b!6120374 (= c!1099896 (is-Star!16066 (ite c!1099682 (regOne!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))))))))

(declare-fun e!3731239 () (Set Context!10900))

(assert (=> b!6120374 (= e!3731235 e!3731239)))

(declare-fun b!6120375 () Bool)

(declare-fun call!506946 () (Set Context!10900))

(declare-fun call!506941 () (Set Context!10900))

(assert (=> b!6120375 (= e!3731240 (set.union call!506946 call!506941))))

(declare-fun b!6120376 () Bool)

(assert (=> b!6120376 (= e!3731239 call!506943)))

(declare-fun c!1099895 () Bool)

(declare-fun call!506944 () List!64497)

(declare-fun bm!506937 () Bool)

(assert (=> bm!506937 (= call!506944 ($colon$colon!1943 (exprs!5950 (ite c!1099682 lt!2330795 (Context!10901 call!506831))) (ite (or c!1099895 c!1099898) (regTwo!32644 (ite c!1099682 (regOne!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))))) (ite c!1099682 (regOne!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343))))))))))

(declare-fun b!6120377 () Bool)

(assert (=> b!6120377 (= e!3731238 (set.insert (ite c!1099682 lt!2330795 (Context!10901 call!506831)) (as set.empty (Set Context!10900))))))

(declare-fun bm!506938 () Bool)

(assert (=> bm!506938 (= call!506946 (derivationStepZipperDown!1314 (ite c!1099897 (regOne!32645 (ite c!1099682 (regOne!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))))) (regOne!32644 (ite c!1099682 (regOne!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343))))))) (ite c!1099897 (ite c!1099682 lt!2330795 (Context!10901 call!506831)) (Context!10901 call!506944)) (h!70823 s!2326)))))

(declare-fun bm!506939 () Bool)

(declare-fun call!506942 () List!64497)

(assert (=> bm!506939 (= call!506942 call!506944)))

(declare-fun b!6120378 () Bool)

(assert (=> b!6120378 (= e!3731236 (set.union call!506946 call!506945))))

(declare-fun b!6120379 () Bool)

(assert (=> b!6120379 (= e!3731239 (as set.empty (Set Context!10900)))))

(declare-fun bm!506940 () Bool)

(assert (=> bm!506940 (= call!506945 call!506941)))

(declare-fun b!6120380 () Bool)

(declare-fun e!3731237 () Bool)

(assert (=> b!6120380 (= c!1099895 e!3731237)))

(declare-fun res!2537624 () Bool)

(assert (=> b!6120380 (=> (not res!2537624) (not e!3731237))))

(assert (=> b!6120380 (= res!2537624 (is-Concat!24911 (ite c!1099682 (regOne!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))))))))

(assert (=> b!6120380 (= e!3731240 e!3731236)))

(declare-fun bm!506941 () Bool)

(assert (=> bm!506941 (= call!506941 (derivationStepZipperDown!1314 (ite c!1099897 (regTwo!32645 (ite c!1099682 (regOne!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))))) (ite c!1099895 (regTwo!32644 (ite c!1099682 (regOne!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))))) (ite c!1099898 (regOne!32644 (ite c!1099682 (regOne!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))))) (reg!16395 (ite c!1099682 (regOne!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343))))))))) (ite (or c!1099897 c!1099895) (ite c!1099682 lt!2330795 (Context!10901 call!506831)) (Context!10901 call!506942)) (h!70823 s!2326)))))

(declare-fun b!6120381 () Bool)

(assert (=> b!6120381 (= e!3731237 (nullable!6059 (regOne!32644 (ite c!1099682 (regOne!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343))))))))))

(assert (= (and d!1917667 c!1099894) b!6120377))

(assert (= (and d!1917667 (not c!1099894)) b!6120373))

(assert (= (and b!6120373 c!1099897) b!6120375))

(assert (= (and b!6120373 (not c!1099897)) b!6120380))

(assert (= (and b!6120380 res!2537624) b!6120381))

(assert (= (and b!6120380 c!1099895) b!6120378))

(assert (= (and b!6120380 (not c!1099895)) b!6120371))

(assert (= (and b!6120371 c!1099898) b!6120372))

(assert (= (and b!6120371 (not c!1099898)) b!6120374))

(assert (= (and b!6120374 c!1099896) b!6120376))

(assert (= (and b!6120374 (not c!1099896)) b!6120379))

(assert (= (or b!6120372 b!6120376) bm!506939))

(assert (= (or b!6120372 b!6120376) bm!506936))

(assert (= (or b!6120378 bm!506939) bm!506937))

(assert (= (or b!6120378 bm!506936) bm!506940))

(assert (= (or b!6120375 bm!506940) bm!506941))

(assert (= (or b!6120375 b!6120378) bm!506938))

(declare-fun m!6966674 () Bool)

(assert (=> bm!506938 m!6966674))

(declare-fun m!6966676 () Bool)

(assert (=> bm!506937 m!6966676))

(declare-fun m!6966678 () Bool)

(assert (=> bm!506941 m!6966678))

(declare-fun m!6966680 () Bool)

(assert (=> b!6120377 m!6966680))

(declare-fun m!6966682 () Bool)

(assert (=> b!6120381 m!6966682))

(assert (=> bm!506825 d!1917667))

(declare-fun d!1917669 () Bool)

(assert (=> d!1917669 (= (nullable!6059 (h!70821 (exprs!5950 lt!2330795))) (nullableFct!2023 (h!70821 (exprs!5950 lt!2330795))))))

(declare-fun bs!1518557 () Bool)

(assert (= bs!1518557 d!1917669))

(declare-fun m!6966684 () Bool)

(assert (=> bs!1518557 m!6966684))

(assert (=> b!6119465 d!1917669))

(declare-fun d!1917671 () Bool)

(declare-fun c!1099899 () Bool)

(assert (=> d!1917671 (= c!1099899 (is-Nil!64374 lt!2330863))))

(declare-fun e!3731241 () (Set Context!10900))

(assert (=> d!1917671 (= (content!11956 lt!2330863) e!3731241)))

(declare-fun b!6120382 () Bool)

(assert (=> b!6120382 (= e!3731241 (as set.empty (Set Context!10900)))))

(declare-fun b!6120383 () Bool)

(assert (=> b!6120383 (= e!3731241 (set.union (set.insert (h!70822 lt!2330863) (as set.empty (Set Context!10900))) (content!11956 (t!377959 lt!2330863))))))

(assert (= (and d!1917671 c!1099899) b!6120382))

(assert (= (and d!1917671 (not c!1099899)) b!6120383))

(declare-fun m!6966686 () Bool)

(assert (=> b!6120383 m!6966686))

(declare-fun m!6966688 () Bool)

(assert (=> b!6120383 m!6966688))

(assert (=> b!6119671 d!1917671))

(assert (=> d!1917473 d!1917477))

(assert (=> d!1917473 d!1917475))

(declare-fun d!1917673 () Bool)

(declare-fun e!3731244 () Bool)

(assert (=> d!1917673 (= (matchZipper!2078 (set.union lt!2330798 lt!2330797) (t!377960 s!2326)) e!3731244)))

(declare-fun res!2537627 () Bool)

(assert (=> d!1917673 (=> res!2537627 e!3731244)))

(assert (=> d!1917673 (= res!2537627 (matchZipper!2078 lt!2330798 (t!377960 s!2326)))))

(assert (=> d!1917673 true))

(declare-fun _$48!1584 () Unit!157419)

(assert (=> d!1917673 (= (choose!45474 lt!2330798 lt!2330797 (t!377960 s!2326)) _$48!1584)))

(declare-fun b!6120386 () Bool)

(assert (=> b!6120386 (= e!3731244 (matchZipper!2078 lt!2330797 (t!377960 s!2326)))))

(assert (= (and d!1917673 (not res!2537627)) b!6120386))

(assert (=> d!1917673 m!6965946))

(assert (=> d!1917673 m!6965944))

(assert (=> b!6120386 m!6965894))

(assert (=> d!1917473 d!1917673))

(assert (=> d!1917477 d!1917579))

(declare-fun d!1917675 () Bool)

(declare-fun res!2537630 () Bool)

(declare-fun e!3731247 () Bool)

(assert (=> d!1917675 (=> res!2537630 e!3731247)))

(assert (=> d!1917675 (= res!2537630 (is-ElementMatch!16066 lt!2330866))))

(assert (=> d!1917675 (= (validRegex!7802 lt!2330866) e!3731247)))

(declare-fun bm!506942 () Bool)

(declare-fun c!1099900 () Bool)

(declare-fun call!506948 () Bool)

(declare-fun c!1099901 () Bool)

(assert (=> bm!506942 (= call!506948 (validRegex!7802 (ite c!1099901 (reg!16395 lt!2330866) (ite c!1099900 (regTwo!32645 lt!2330866) (regTwo!32644 lt!2330866)))))))

(declare-fun b!6120387 () Bool)

(declare-fun res!2537629 () Bool)

(declare-fun e!3731249 () Bool)

(assert (=> b!6120387 (=> (not res!2537629) (not e!3731249))))

(declare-fun call!506947 () Bool)

(assert (=> b!6120387 (= res!2537629 call!506947)))

(declare-fun e!3731248 () Bool)

(assert (=> b!6120387 (= e!3731248 e!3731249)))

(declare-fun bm!506943 () Bool)

(declare-fun call!506949 () Bool)

(assert (=> bm!506943 (= call!506949 call!506948)))

(declare-fun bm!506944 () Bool)

(assert (=> bm!506944 (= call!506947 (validRegex!7802 (ite c!1099900 (regOne!32645 lt!2330866) (regOne!32644 lt!2330866))))))

(declare-fun b!6120388 () Bool)

(declare-fun e!3731250 () Bool)

(assert (=> b!6120388 (= e!3731247 e!3731250)))

(assert (=> b!6120388 (= c!1099901 (is-Star!16066 lt!2330866))))

(declare-fun b!6120389 () Bool)

(declare-fun e!3731246 () Bool)

(assert (=> b!6120389 (= e!3731250 e!3731246)))

(declare-fun res!2537631 () Bool)

(assert (=> b!6120389 (= res!2537631 (not (nullable!6059 (reg!16395 lt!2330866))))))

(assert (=> b!6120389 (=> (not res!2537631) (not e!3731246))))

(declare-fun b!6120390 () Bool)

(declare-fun e!3731251 () Bool)

(declare-fun e!3731245 () Bool)

(assert (=> b!6120390 (= e!3731251 e!3731245)))

(declare-fun res!2537632 () Bool)

(assert (=> b!6120390 (=> (not res!2537632) (not e!3731245))))

(assert (=> b!6120390 (= res!2537632 call!506947)))

(declare-fun b!6120391 () Bool)

(assert (=> b!6120391 (= e!3731250 e!3731248)))

(assert (=> b!6120391 (= c!1099900 (is-Union!16066 lt!2330866))))

(declare-fun b!6120392 () Bool)

(declare-fun res!2537628 () Bool)

(assert (=> b!6120392 (=> res!2537628 e!3731251)))

(assert (=> b!6120392 (= res!2537628 (not (is-Concat!24911 lt!2330866)))))

(assert (=> b!6120392 (= e!3731248 e!3731251)))

(declare-fun b!6120393 () Bool)

(assert (=> b!6120393 (= e!3731246 call!506948)))

(declare-fun b!6120394 () Bool)

(assert (=> b!6120394 (= e!3731249 call!506949)))

(declare-fun b!6120395 () Bool)

(assert (=> b!6120395 (= e!3731245 call!506949)))

(assert (= (and d!1917675 (not res!2537630)) b!6120388))

(assert (= (and b!6120388 c!1099901) b!6120389))

(assert (= (and b!6120388 (not c!1099901)) b!6120391))

(assert (= (and b!6120389 res!2537631) b!6120393))

(assert (= (and b!6120391 c!1099900) b!6120387))

(assert (= (and b!6120391 (not c!1099900)) b!6120392))

(assert (= (and b!6120387 res!2537629) b!6120394))

(assert (= (and b!6120392 (not res!2537628)) b!6120390))

(assert (= (and b!6120390 res!2537632) b!6120395))

(assert (= (or b!6120394 b!6120395) bm!506943))

(assert (= (or b!6120387 b!6120390) bm!506944))

(assert (= (or b!6120393 bm!506943) bm!506942))

(declare-fun m!6966690 () Bool)

(assert (=> bm!506942 m!6966690))

(declare-fun m!6966692 () Bool)

(assert (=> bm!506944 m!6966692))

(declare-fun m!6966694 () Bool)

(assert (=> b!6120389 m!6966694))

(assert (=> d!1917469 d!1917675))

(assert (=> d!1917469 d!1917421))

(assert (=> d!1917469 d!1917423))

(declare-fun d!1917677 () Bool)

(declare-fun res!2537635 () Bool)

(declare-fun e!3731254 () Bool)

(assert (=> d!1917677 (=> res!2537635 e!3731254)))

(assert (=> d!1917677 (= res!2537635 (is-ElementMatch!16066 lt!2330872))))

(assert (=> d!1917677 (= (validRegex!7802 lt!2330872) e!3731254)))

(declare-fun call!506951 () Bool)

(declare-fun c!1099903 () Bool)

(declare-fun c!1099902 () Bool)

(declare-fun bm!506945 () Bool)

(assert (=> bm!506945 (= call!506951 (validRegex!7802 (ite c!1099903 (reg!16395 lt!2330872) (ite c!1099902 (regTwo!32645 lt!2330872) (regTwo!32644 lt!2330872)))))))

(declare-fun b!6120396 () Bool)

(declare-fun res!2537634 () Bool)

(declare-fun e!3731256 () Bool)

(assert (=> b!6120396 (=> (not res!2537634) (not e!3731256))))

(declare-fun call!506950 () Bool)

(assert (=> b!6120396 (= res!2537634 call!506950)))

(declare-fun e!3731255 () Bool)

(assert (=> b!6120396 (= e!3731255 e!3731256)))

(declare-fun bm!506946 () Bool)

(declare-fun call!506952 () Bool)

(assert (=> bm!506946 (= call!506952 call!506951)))

(declare-fun bm!506947 () Bool)

(assert (=> bm!506947 (= call!506950 (validRegex!7802 (ite c!1099902 (regOne!32645 lt!2330872) (regOne!32644 lt!2330872))))))

(declare-fun b!6120397 () Bool)

(declare-fun e!3731257 () Bool)

(assert (=> b!6120397 (= e!3731254 e!3731257)))

(assert (=> b!6120397 (= c!1099903 (is-Star!16066 lt!2330872))))

(declare-fun b!6120398 () Bool)

(declare-fun e!3731253 () Bool)

(assert (=> b!6120398 (= e!3731257 e!3731253)))

(declare-fun res!2537636 () Bool)

(assert (=> b!6120398 (= res!2537636 (not (nullable!6059 (reg!16395 lt!2330872))))))

(assert (=> b!6120398 (=> (not res!2537636) (not e!3731253))))

(declare-fun b!6120399 () Bool)

(declare-fun e!3731258 () Bool)

(declare-fun e!3731252 () Bool)

(assert (=> b!6120399 (= e!3731258 e!3731252)))

(declare-fun res!2537637 () Bool)

(assert (=> b!6120399 (=> (not res!2537637) (not e!3731252))))

(assert (=> b!6120399 (= res!2537637 call!506950)))

(declare-fun b!6120400 () Bool)

(assert (=> b!6120400 (= e!3731257 e!3731255)))

(assert (=> b!6120400 (= c!1099902 (is-Union!16066 lt!2330872))))

(declare-fun b!6120401 () Bool)

(declare-fun res!2537633 () Bool)

(assert (=> b!6120401 (=> res!2537633 e!3731258)))

(assert (=> b!6120401 (= res!2537633 (not (is-Concat!24911 lt!2330872)))))

(assert (=> b!6120401 (= e!3731255 e!3731258)))

(declare-fun b!6120402 () Bool)

(assert (=> b!6120402 (= e!3731253 call!506951)))

(declare-fun b!6120403 () Bool)

(assert (=> b!6120403 (= e!3731256 call!506952)))

(declare-fun b!6120404 () Bool)

(assert (=> b!6120404 (= e!3731252 call!506952)))

(assert (= (and d!1917677 (not res!2537635)) b!6120397))

(assert (= (and b!6120397 c!1099903) b!6120398))

(assert (= (and b!6120397 (not c!1099903)) b!6120400))

(assert (= (and b!6120398 res!2537636) b!6120402))

(assert (= (and b!6120400 c!1099902) b!6120396))

(assert (= (and b!6120400 (not c!1099902)) b!6120401))

(assert (= (and b!6120396 res!2537634) b!6120403))

(assert (= (and b!6120401 (not res!2537633)) b!6120399))

(assert (= (and b!6120399 res!2537637) b!6120404))

(assert (= (or b!6120403 b!6120404) bm!506946))

(assert (= (or b!6120396 b!6120399) bm!506947))

(assert (= (or b!6120402 bm!506946) bm!506945))

(declare-fun m!6966696 () Bool)

(assert (=> bm!506945 m!6966696))

(declare-fun m!6966698 () Bool)

(assert (=> bm!506947 m!6966698))

(declare-fun m!6966700 () Bool)

(assert (=> b!6120398 m!6966700))

(assert (=> d!1917479 d!1917677))

(declare-fun d!1917679 () Bool)

(declare-fun res!2537638 () Bool)

(declare-fun e!3731259 () Bool)

(assert (=> d!1917679 (=> res!2537638 e!3731259)))

(assert (=> d!1917679 (= res!2537638 (is-Nil!64373 (exprs!5950 (h!70822 zl!343))))))

(assert (=> d!1917679 (= (forall!15187 (exprs!5950 (h!70822 zl!343)) lambda!333374) e!3731259)))

(declare-fun b!6120405 () Bool)

(declare-fun e!3731260 () Bool)

(assert (=> b!6120405 (= e!3731259 e!3731260)))

(declare-fun res!2537639 () Bool)

(assert (=> b!6120405 (=> (not res!2537639) (not e!3731260))))

(assert (=> b!6120405 (= res!2537639 (dynLambda!25355 lambda!333374 (h!70821 (exprs!5950 (h!70822 zl!343)))))))

(declare-fun b!6120406 () Bool)

(assert (=> b!6120406 (= e!3731260 (forall!15187 (t!377958 (exprs!5950 (h!70822 zl!343))) lambda!333374))))

(assert (= (and d!1917679 (not res!2537638)) b!6120405))

(assert (= (and b!6120405 res!2537639) b!6120406))

(declare-fun b_lambda!233033 () Bool)

(assert (=> (not b_lambda!233033) (not b!6120405)))

(declare-fun m!6966702 () Bool)

(assert (=> b!6120405 m!6966702))

(declare-fun m!6966704 () Bool)

(assert (=> b!6120406 m!6966704))

(assert (=> d!1917479 d!1917679))

(declare-fun d!1917681 () Bool)

(assert (=> d!1917681 (= (isEmpty!36307 (tail!11738 (t!377958 (exprs!5950 (h!70822 zl!343))))) (is-Nil!64373 (tail!11738 (t!377958 (exprs!5950 (h!70822 zl!343))))))))

(assert (=> b!6119655 d!1917681))

(declare-fun d!1917683 () Bool)

(assert (=> d!1917683 (= (tail!11738 (t!377958 (exprs!5950 (h!70822 zl!343)))) (t!377958 (t!377958 (exprs!5950 (h!70822 zl!343)))))))

(assert (=> b!6119655 d!1917683))

(declare-fun d!1917685 () Bool)

(assert (=> d!1917685 (= (head!12653 (exprs!5950 (h!70822 zl!343))) (h!70821 (exprs!5950 (h!70822 zl!343))))))

(assert (=> b!6119714 d!1917685))

(assert (=> d!1917441 d!1917425))

(declare-fun d!1917687 () Bool)

(assert (=> d!1917687 (= (flatMap!1571 z!1189 lambda!333340) (dynLambda!25353 lambda!333340 (h!70822 zl!343)))))

(assert (=> d!1917687 true))

(declare-fun _$13!2972 () Unit!157419)

(assert (=> d!1917687 (= (choose!45471 z!1189 (h!70822 zl!343) lambda!333340) _$13!2972)))

(declare-fun b_lambda!233035 () Bool)

(assert (=> (not b_lambda!233035) (not d!1917687)))

(declare-fun bs!1518558 () Bool)

(assert (= bs!1518558 d!1917687))

(assert (=> bs!1518558 m!6965940))

(assert (=> bs!1518558 m!6966106))

(assert (=> d!1917441 d!1917687))

(declare-fun d!1917689 () Bool)

(assert (=> d!1917689 (= (head!12653 (unfocusZipperList!1487 zl!343)) (h!70821 (unfocusZipperList!1487 zl!343)))))

(assert (=> b!6119437 d!1917689))

(declare-fun d!1917691 () Bool)

(declare-fun res!2537642 () Bool)

(declare-fun e!3731263 () Bool)

(assert (=> d!1917691 (=> res!2537642 e!3731263)))

(assert (=> d!1917691 (= res!2537642 (is-ElementMatch!16066 lt!2330862))))

(assert (=> d!1917691 (= (validRegex!7802 lt!2330862) e!3731263)))

(declare-fun c!1099905 () Bool)

(declare-fun c!1099904 () Bool)

(declare-fun bm!506948 () Bool)

(declare-fun call!506954 () Bool)

(assert (=> bm!506948 (= call!506954 (validRegex!7802 (ite c!1099905 (reg!16395 lt!2330862) (ite c!1099904 (regTwo!32645 lt!2330862) (regTwo!32644 lt!2330862)))))))

(declare-fun b!6120407 () Bool)

(declare-fun res!2537641 () Bool)

(declare-fun e!3731265 () Bool)

(assert (=> b!6120407 (=> (not res!2537641) (not e!3731265))))

(declare-fun call!506953 () Bool)

(assert (=> b!6120407 (= res!2537641 call!506953)))

(declare-fun e!3731264 () Bool)

(assert (=> b!6120407 (= e!3731264 e!3731265)))

(declare-fun bm!506949 () Bool)

(declare-fun call!506955 () Bool)

(assert (=> bm!506949 (= call!506955 call!506954)))

(declare-fun bm!506950 () Bool)

(assert (=> bm!506950 (= call!506953 (validRegex!7802 (ite c!1099904 (regOne!32645 lt!2330862) (regOne!32644 lt!2330862))))))

(declare-fun b!6120408 () Bool)

(declare-fun e!3731266 () Bool)

(assert (=> b!6120408 (= e!3731263 e!3731266)))

(assert (=> b!6120408 (= c!1099905 (is-Star!16066 lt!2330862))))

(declare-fun b!6120409 () Bool)

(declare-fun e!3731262 () Bool)

(assert (=> b!6120409 (= e!3731266 e!3731262)))

(declare-fun res!2537643 () Bool)

(assert (=> b!6120409 (= res!2537643 (not (nullable!6059 (reg!16395 lt!2330862))))))

(assert (=> b!6120409 (=> (not res!2537643) (not e!3731262))))

(declare-fun b!6120410 () Bool)

(declare-fun e!3731267 () Bool)

(declare-fun e!3731261 () Bool)

(assert (=> b!6120410 (= e!3731267 e!3731261)))

(declare-fun res!2537644 () Bool)

(assert (=> b!6120410 (=> (not res!2537644) (not e!3731261))))

(assert (=> b!6120410 (= res!2537644 call!506953)))

(declare-fun b!6120411 () Bool)

(assert (=> b!6120411 (= e!3731266 e!3731264)))

(assert (=> b!6120411 (= c!1099904 (is-Union!16066 lt!2330862))))

(declare-fun b!6120412 () Bool)

(declare-fun res!2537640 () Bool)

(assert (=> b!6120412 (=> res!2537640 e!3731267)))

(assert (=> b!6120412 (= res!2537640 (not (is-Concat!24911 lt!2330862)))))

(assert (=> b!6120412 (= e!3731264 e!3731267)))

(declare-fun b!6120413 () Bool)

(assert (=> b!6120413 (= e!3731262 call!506954)))

(declare-fun b!6120414 () Bool)

(assert (=> b!6120414 (= e!3731265 call!506955)))

(declare-fun b!6120415 () Bool)

(assert (=> b!6120415 (= e!3731261 call!506955)))

(assert (= (and d!1917691 (not res!2537642)) b!6120408))

(assert (= (and b!6120408 c!1099905) b!6120409))

(assert (= (and b!6120408 (not c!1099905)) b!6120411))

(assert (= (and b!6120409 res!2537643) b!6120413))

(assert (= (and b!6120411 c!1099904) b!6120407))

(assert (= (and b!6120411 (not c!1099904)) b!6120412))

(assert (= (and b!6120407 res!2537641) b!6120414))

(assert (= (and b!6120412 (not res!2537640)) b!6120410))

(assert (= (and b!6120410 res!2537644) b!6120415))

(assert (= (or b!6120414 b!6120415) bm!506949))

(assert (= (or b!6120407 b!6120410) bm!506950))

(assert (= (or b!6120413 bm!506949) bm!506948))

(declare-fun m!6966706 () Bool)

(assert (=> bm!506948 m!6966706))

(declare-fun m!6966708 () Bool)

(assert (=> bm!506950 m!6966708))

(declare-fun m!6966710 () Bool)

(assert (=> b!6120409 m!6966710))

(assert (=> d!1917461 d!1917691))

(declare-fun d!1917693 () Bool)

(declare-fun res!2537645 () Bool)

(declare-fun e!3731268 () Bool)

(assert (=> d!1917693 (=> res!2537645 e!3731268)))

(assert (=> d!1917693 (= res!2537645 (is-Nil!64373 (t!377958 (exprs!5950 (h!70822 zl!343)))))))

(assert (=> d!1917693 (= (forall!15187 (t!377958 (exprs!5950 (h!70822 zl!343))) lambda!333367) e!3731268)))

(declare-fun b!6120416 () Bool)

(declare-fun e!3731269 () Bool)

(assert (=> b!6120416 (= e!3731268 e!3731269)))

(declare-fun res!2537646 () Bool)

(assert (=> b!6120416 (=> (not res!2537646) (not e!3731269))))

(assert (=> b!6120416 (= res!2537646 (dynLambda!25355 lambda!333367 (h!70821 (t!377958 (exprs!5950 (h!70822 zl!343))))))))

(declare-fun b!6120417 () Bool)

(assert (=> b!6120417 (= e!3731269 (forall!15187 (t!377958 (t!377958 (exprs!5950 (h!70822 zl!343)))) lambda!333367))))

(assert (= (and d!1917693 (not res!2537645)) b!6120416))

(assert (= (and b!6120416 res!2537646) b!6120417))

(declare-fun b_lambda!233037 () Bool)

(assert (=> (not b_lambda!233037) (not b!6120416)))

(declare-fun m!6966712 () Bool)

(assert (=> b!6120416 m!6966712))

(declare-fun m!6966714 () Bool)

(assert (=> b!6120417 m!6966714))

(assert (=> d!1917461 d!1917693))

(declare-fun d!1917695 () Bool)

(assert (=> d!1917695 (= (isConcat!1006 lt!2330862) (is-Concat!24911 lt!2330862))))

(assert (=> b!6119653 d!1917695))

(declare-fun d!1917697 () Bool)

(assert (=> d!1917697 (= (isEmpty!36307 (tail!11738 (exprs!5950 (h!70822 zl!343)))) (is-Nil!64373 (tail!11738 (exprs!5950 (h!70822 zl!343)))))))

(assert (=> b!6119712 d!1917697))

(declare-fun d!1917699 () Bool)

(assert (=> d!1917699 (= (tail!11738 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343))))))

(assert (=> b!6119712 d!1917699))

(declare-fun d!1917701 () Bool)

(declare-fun lambda!333423 () Int)

(declare-fun exists!2412 ((Set Context!10900) Int) Bool)

(assert (=> d!1917701 (= (nullableZipper!1847 lt!2330797) (exists!2412 lt!2330797 lambda!333423))))

(declare-fun bs!1518559 () Bool)

(assert (= bs!1518559 d!1917701))

(declare-fun m!6966716 () Bool)

(assert (=> bs!1518559 m!6966716))

(assert (=> b!6119564 d!1917701))

(assert (=> b!6119651 d!1917483))

(declare-fun d!1917703 () Bool)

(assert (=> d!1917703 (= (isConcat!1006 lt!2330872) (is-Concat!24911 lt!2330872))))

(assert (=> b!6119710 d!1917703))

(declare-fun b!6120429 () Bool)

(declare-fun e!3731275 () Bool)

(declare-fun lt!2330944 () List!64499)

(assert (=> b!6120429 (= e!3731275 (or (not (= (t!377960 s!2326) Nil!64375)) (= lt!2330944 (++!14152 Nil!64375 (Cons!64375 (h!70823 s!2326) Nil!64375)))))))

(declare-fun b!6120426 () Bool)

(declare-fun e!3731274 () List!64499)

(assert (=> b!6120426 (= e!3731274 (t!377960 s!2326))))

(declare-fun d!1917705 () Bool)

(assert (=> d!1917705 e!3731275))

(declare-fun res!2537651 () Bool)

(assert (=> d!1917705 (=> (not res!2537651) (not e!3731275))))

(declare-fun content!11959 (List!64499) (Set C!32402))

(assert (=> d!1917705 (= res!2537651 (= (content!11959 lt!2330944) (set.union (content!11959 (++!14152 Nil!64375 (Cons!64375 (h!70823 s!2326) Nil!64375))) (content!11959 (t!377960 s!2326)))))))

(assert (=> d!1917705 (= lt!2330944 e!3731274)))

(declare-fun c!1099910 () Bool)

(assert (=> d!1917705 (= c!1099910 (is-Nil!64375 (++!14152 Nil!64375 (Cons!64375 (h!70823 s!2326) Nil!64375))))))

(assert (=> d!1917705 (= (++!14152 (++!14152 Nil!64375 (Cons!64375 (h!70823 s!2326) Nil!64375)) (t!377960 s!2326)) lt!2330944)))

(declare-fun b!6120428 () Bool)

(declare-fun res!2537652 () Bool)

(assert (=> b!6120428 (=> (not res!2537652) (not e!3731275))))

(declare-fun size!40210 (List!64499) Int)

(assert (=> b!6120428 (= res!2537652 (= (size!40210 lt!2330944) (+ (size!40210 (++!14152 Nil!64375 (Cons!64375 (h!70823 s!2326) Nil!64375))) (size!40210 (t!377960 s!2326)))))))

(declare-fun b!6120427 () Bool)

(assert (=> b!6120427 (= e!3731274 (Cons!64375 (h!70823 (++!14152 Nil!64375 (Cons!64375 (h!70823 s!2326) Nil!64375))) (++!14152 (t!377960 (++!14152 Nil!64375 (Cons!64375 (h!70823 s!2326) Nil!64375))) (t!377960 s!2326))))))

(assert (= (and d!1917705 c!1099910) b!6120426))

(assert (= (and d!1917705 (not c!1099910)) b!6120427))

(assert (= (and d!1917705 res!2537651) b!6120428))

(assert (= (and b!6120428 res!2537652) b!6120429))

(declare-fun m!6966718 () Bool)

(assert (=> d!1917705 m!6966718))

(assert (=> d!1917705 m!6966252))

(declare-fun m!6966720 () Bool)

(assert (=> d!1917705 m!6966720))

(declare-fun m!6966722 () Bool)

(assert (=> d!1917705 m!6966722))

(declare-fun m!6966724 () Bool)

(assert (=> b!6120428 m!6966724))

(assert (=> b!6120428 m!6966252))

(declare-fun m!6966726 () Bool)

(assert (=> b!6120428 m!6966726))

(declare-fun m!6966728 () Bool)

(assert (=> b!6120428 m!6966728))

(declare-fun m!6966730 () Bool)

(assert (=> b!6120427 m!6966730))

(assert (=> b!6119772 d!1917705))

(declare-fun b!6120433 () Bool)

(declare-fun e!3731277 () Bool)

(declare-fun lt!2330945 () List!64499)

(assert (=> b!6120433 (= e!3731277 (or (not (= (Cons!64375 (h!70823 s!2326) Nil!64375) Nil!64375)) (= lt!2330945 Nil!64375)))))

(declare-fun b!6120430 () Bool)

(declare-fun e!3731276 () List!64499)

(assert (=> b!6120430 (= e!3731276 (Cons!64375 (h!70823 s!2326) Nil!64375))))

(declare-fun d!1917707 () Bool)

(assert (=> d!1917707 e!3731277))

(declare-fun res!2537653 () Bool)

(assert (=> d!1917707 (=> (not res!2537653) (not e!3731277))))

(assert (=> d!1917707 (= res!2537653 (= (content!11959 lt!2330945) (set.union (content!11959 Nil!64375) (content!11959 (Cons!64375 (h!70823 s!2326) Nil!64375)))))))

(assert (=> d!1917707 (= lt!2330945 e!3731276)))

(declare-fun c!1099911 () Bool)

(assert (=> d!1917707 (= c!1099911 (is-Nil!64375 Nil!64375))))

(assert (=> d!1917707 (= (++!14152 Nil!64375 (Cons!64375 (h!70823 s!2326) Nil!64375)) lt!2330945)))

(declare-fun b!6120432 () Bool)

(declare-fun res!2537654 () Bool)

(assert (=> b!6120432 (=> (not res!2537654) (not e!3731277))))

(assert (=> b!6120432 (= res!2537654 (= (size!40210 lt!2330945) (+ (size!40210 Nil!64375) (size!40210 (Cons!64375 (h!70823 s!2326) Nil!64375)))))))

(declare-fun b!6120431 () Bool)

(assert (=> b!6120431 (= e!3731276 (Cons!64375 (h!70823 Nil!64375) (++!14152 (t!377960 Nil!64375) (Cons!64375 (h!70823 s!2326) Nil!64375))))))

(assert (= (and d!1917707 c!1099911) b!6120430))

(assert (= (and d!1917707 (not c!1099911)) b!6120431))

(assert (= (and d!1917707 res!2537653) b!6120432))

(assert (= (and b!6120432 res!2537654) b!6120433))

(declare-fun m!6966732 () Bool)

(assert (=> d!1917707 m!6966732))

(declare-fun m!6966734 () Bool)

(assert (=> d!1917707 m!6966734))

(declare-fun m!6966736 () Bool)

(assert (=> d!1917707 m!6966736))

(declare-fun m!6966738 () Bool)

(assert (=> b!6120432 m!6966738))

(declare-fun m!6966740 () Bool)

(assert (=> b!6120432 m!6966740))

(declare-fun m!6966742 () Bool)

(assert (=> b!6120432 m!6966742))

(declare-fun m!6966744 () Bool)

(assert (=> b!6120431 m!6966744))

(assert (=> b!6119772 d!1917707))

(declare-fun d!1917709 () Bool)

(assert (=> d!1917709 (= (++!14152 (++!14152 Nil!64375 (Cons!64375 (h!70823 s!2326) Nil!64375)) (t!377960 s!2326)) s!2326)))

(declare-fun lt!2330948 () Unit!157419)

(declare-fun choose!45486 (List!64499 C!32402 List!64499 List!64499) Unit!157419)

(assert (=> d!1917709 (= lt!2330948 (choose!45486 Nil!64375 (h!70823 s!2326) (t!377960 s!2326) s!2326))))

(assert (=> d!1917709 (= (++!14152 Nil!64375 (Cons!64375 (h!70823 s!2326) (t!377960 s!2326))) s!2326)))

(assert (=> d!1917709 (= (lemmaMoveElementToOtherListKeepsConcatEq!2247 Nil!64375 (h!70823 s!2326) (t!377960 s!2326) s!2326) lt!2330948)))

(declare-fun bs!1518560 () Bool)

(assert (= bs!1518560 d!1917709))

(assert (=> bs!1518560 m!6966252))

(assert (=> bs!1518560 m!6966252))

(assert (=> bs!1518560 m!6966254))

(declare-fun m!6966746 () Bool)

(assert (=> bs!1518560 m!6966746))

(declare-fun m!6966748 () Bool)

(assert (=> bs!1518560 m!6966748))

(assert (=> b!6119772 d!1917709))

(declare-fun b!6120434 () Bool)

(declare-fun e!3731278 () Option!15957)

(declare-fun e!3731279 () Option!15957)

(assert (=> b!6120434 (= e!3731278 e!3731279)))

(declare-fun c!1099913 () Bool)

(assert (=> b!6120434 (= c!1099913 (is-Nil!64375 (t!377960 s!2326)))))

(declare-fun b!6120435 () Bool)

(assert (=> b!6120435 (= e!3731278 (Some!15956 (tuple2!66091 (++!14152 Nil!64375 (Cons!64375 (h!70823 s!2326) Nil!64375)) (t!377960 s!2326))))))

(declare-fun b!6120436 () Bool)

(assert (=> b!6120436 (= e!3731279 None!15956)))

(declare-fun b!6120437 () Bool)

(declare-fun lt!2330951 () Unit!157419)

(declare-fun lt!2330949 () Unit!157419)

(assert (=> b!6120437 (= lt!2330951 lt!2330949)))

(assert (=> b!6120437 (= (++!14152 (++!14152 (++!14152 Nil!64375 (Cons!64375 (h!70823 s!2326) Nil!64375)) (Cons!64375 (h!70823 (t!377960 s!2326)) Nil!64375)) (t!377960 (t!377960 s!2326))) s!2326)))

(assert (=> b!6120437 (= lt!2330949 (lemmaMoveElementToOtherListKeepsConcatEq!2247 (++!14152 Nil!64375 (Cons!64375 (h!70823 s!2326) Nil!64375)) (h!70823 (t!377960 s!2326)) (t!377960 (t!377960 s!2326)) s!2326))))

(assert (=> b!6120437 (= e!3731279 (findConcatSeparation!2371 (regOne!32644 r!7292) (regTwo!32644 r!7292) (++!14152 (++!14152 Nil!64375 (Cons!64375 (h!70823 s!2326) Nil!64375)) (Cons!64375 (h!70823 (t!377960 s!2326)) Nil!64375)) (t!377960 (t!377960 s!2326)) s!2326))))

(declare-fun b!6120438 () Bool)

(declare-fun res!2537658 () Bool)

(declare-fun e!3731282 () Bool)

(assert (=> b!6120438 (=> (not res!2537658) (not e!3731282))))

(declare-fun lt!2330950 () Option!15957)

(assert (=> b!6120438 (= res!2537658 (matchR!8249 (regTwo!32644 r!7292) (_2!36348 (get!22201 lt!2330950))))))

(declare-fun b!6120439 () Bool)

(assert (=> b!6120439 (= e!3731282 (= (++!14152 (_1!36348 (get!22201 lt!2330950)) (_2!36348 (get!22201 lt!2330950))) s!2326))))

(declare-fun b!6120440 () Bool)

(declare-fun e!3731280 () Bool)

(assert (=> b!6120440 (= e!3731280 (not (isDefined!12660 lt!2330950)))))

(declare-fun d!1917711 () Bool)

(assert (=> d!1917711 e!3731280))

(declare-fun res!2537659 () Bool)

(assert (=> d!1917711 (=> res!2537659 e!3731280)))

(assert (=> d!1917711 (= res!2537659 e!3731282)))

(declare-fun res!2537657 () Bool)

(assert (=> d!1917711 (=> (not res!2537657) (not e!3731282))))

(assert (=> d!1917711 (= res!2537657 (isDefined!12660 lt!2330950))))

(assert (=> d!1917711 (= lt!2330950 e!3731278)))

(declare-fun c!1099912 () Bool)

(declare-fun e!3731281 () Bool)

(assert (=> d!1917711 (= c!1099912 e!3731281)))

(declare-fun res!2537656 () Bool)

(assert (=> d!1917711 (=> (not res!2537656) (not e!3731281))))

(assert (=> d!1917711 (= res!2537656 (matchR!8249 (regOne!32644 r!7292) (++!14152 Nil!64375 (Cons!64375 (h!70823 s!2326) Nil!64375))))))

(assert (=> d!1917711 (validRegex!7802 (regOne!32644 r!7292))))

(assert (=> d!1917711 (= (findConcatSeparation!2371 (regOne!32644 r!7292) (regTwo!32644 r!7292) (++!14152 Nil!64375 (Cons!64375 (h!70823 s!2326) Nil!64375)) (t!377960 s!2326) s!2326) lt!2330950)))

(declare-fun b!6120441 () Bool)

(declare-fun res!2537655 () Bool)

(assert (=> b!6120441 (=> (not res!2537655) (not e!3731282))))

(assert (=> b!6120441 (= res!2537655 (matchR!8249 (regOne!32644 r!7292) (_1!36348 (get!22201 lt!2330950))))))

(declare-fun b!6120442 () Bool)

(assert (=> b!6120442 (= e!3731281 (matchR!8249 (regTwo!32644 r!7292) (t!377960 s!2326)))))

(assert (= (and d!1917711 res!2537656) b!6120442))

(assert (= (and d!1917711 c!1099912) b!6120435))

(assert (= (and d!1917711 (not c!1099912)) b!6120434))

(assert (= (and b!6120434 c!1099913) b!6120436))

(assert (= (and b!6120434 (not c!1099913)) b!6120437))

(assert (= (and d!1917711 res!2537657) b!6120441))

(assert (= (and b!6120441 res!2537655) b!6120438))

(assert (= (and b!6120438 res!2537658) b!6120439))

(assert (= (and d!1917711 (not res!2537659)) b!6120440))

(declare-fun m!6966750 () Bool)

(assert (=> b!6120442 m!6966750))

(declare-fun m!6966752 () Bool)

(assert (=> b!6120439 m!6966752))

(declare-fun m!6966754 () Bool)

(assert (=> b!6120439 m!6966754))

(assert (=> b!6120438 m!6966752))

(declare-fun m!6966756 () Bool)

(assert (=> b!6120438 m!6966756))

(assert (=> b!6120441 m!6966752))

(declare-fun m!6966758 () Bool)

(assert (=> b!6120441 m!6966758))

(declare-fun m!6966760 () Bool)

(assert (=> b!6120440 m!6966760))

(assert (=> b!6120437 m!6966252))

(declare-fun m!6966762 () Bool)

(assert (=> b!6120437 m!6966762))

(assert (=> b!6120437 m!6966762))

(declare-fun m!6966764 () Bool)

(assert (=> b!6120437 m!6966764))

(assert (=> b!6120437 m!6966252))

(declare-fun m!6966766 () Bool)

(assert (=> b!6120437 m!6966766))

(assert (=> b!6120437 m!6966762))

(declare-fun m!6966768 () Bool)

(assert (=> b!6120437 m!6966768))

(assert (=> d!1917711 m!6966760))

(assert (=> d!1917711 m!6966252))

(declare-fun m!6966770 () Bool)

(assert (=> d!1917711 m!6966770))

(assert (=> d!1917711 m!6966262))

(assert (=> b!6119772 d!1917711))

(declare-fun bs!1518561 () Bool)

(declare-fun d!1917713 () Bool)

(assert (= bs!1518561 (and d!1917713 d!1917461)))

(declare-fun lambda!333424 () Int)

(assert (=> bs!1518561 (= lambda!333424 lambda!333367)))

(declare-fun bs!1518562 () Bool)

(assert (= bs!1518562 (and d!1917713 d!1917467)))

(assert (=> bs!1518562 (= lambda!333424 lambda!333372)))

(declare-fun bs!1518563 () Bool)

(assert (= bs!1518563 (and d!1917713 d!1917559)))

(assert (=> bs!1518563 (= lambda!333424 lambda!333410)))

(declare-fun bs!1518564 () Bool)

(assert (= bs!1518564 (and d!1917713 d!1917423)))

(assert (=> bs!1518564 (= lambda!333424 lambda!333357)))

(declare-fun bs!1518565 () Bool)

(assert (= bs!1518565 (and d!1917713 d!1917463)))

(assert (=> bs!1518565 (= lambda!333424 lambda!333370)))

(declare-fun bs!1518566 () Bool)

(assert (= bs!1518566 (and d!1917713 d!1917421)))

(assert (=> bs!1518566 (= lambda!333424 lambda!333354)))

(declare-fun bs!1518567 () Bool)

(assert (= bs!1518567 (and d!1917713 d!1917479)))

(assert (=> bs!1518567 (= lambda!333424 lambda!333374)))

(assert (=> d!1917713 (= (inv!83413 setElem!41355) (forall!15187 (exprs!5950 setElem!41355) lambda!333424))))

(declare-fun bs!1518568 () Bool)

(assert (= bs!1518568 d!1917713))

(declare-fun m!6966772 () Bool)

(assert (=> bs!1518568 m!6966772))

(assert (=> setNonEmpty!41355 d!1917713))

(declare-fun d!1917715 () Bool)

(assert (=> d!1917715 true))

(assert (=> d!1917715 true))

(declare-fun res!2537660 () Bool)

(assert (=> d!1917715 (= (choose!45476 lambda!333339) res!2537660)))

(assert (=> d!1917507 d!1917715))

(declare-fun bs!1518569 () Bool)

(declare-fun d!1917717 () Bool)

(assert (= bs!1518569 (and d!1917717 d!1917461)))

(declare-fun lambda!333425 () Int)

(assert (=> bs!1518569 (= lambda!333425 lambda!333367)))

(declare-fun bs!1518570 () Bool)

(assert (= bs!1518570 (and d!1917717 d!1917467)))

(assert (=> bs!1518570 (= lambda!333425 lambda!333372)))

(declare-fun bs!1518571 () Bool)

(assert (= bs!1518571 (and d!1917717 d!1917713)))

(assert (=> bs!1518571 (= lambda!333425 lambda!333424)))

(declare-fun bs!1518572 () Bool)

(assert (= bs!1518572 (and d!1917717 d!1917559)))

(assert (=> bs!1518572 (= lambda!333425 lambda!333410)))

(declare-fun bs!1518573 () Bool)

(assert (= bs!1518573 (and d!1917717 d!1917423)))

(assert (=> bs!1518573 (= lambda!333425 lambda!333357)))

(declare-fun bs!1518574 () Bool)

(assert (= bs!1518574 (and d!1917717 d!1917463)))

(assert (=> bs!1518574 (= lambda!333425 lambda!333370)))

(declare-fun bs!1518575 () Bool)

(assert (= bs!1518575 (and d!1917717 d!1917421)))

(assert (=> bs!1518575 (= lambda!333425 lambda!333354)))

(declare-fun bs!1518576 () Bool)

(assert (= bs!1518576 (and d!1917717 d!1917479)))

(assert (=> bs!1518576 (= lambda!333425 lambda!333374)))

(assert (=> d!1917717 (= (inv!83413 (h!70822 (t!377959 zl!343))) (forall!15187 (exprs!5950 (h!70822 (t!377959 zl!343))) lambda!333425))))

(declare-fun bs!1518577 () Bool)

(assert (= bs!1518577 d!1917717))

(declare-fun m!6966774 () Bool)

(assert (=> bs!1518577 m!6966774))

(assert (=> b!6120067 d!1917717))

(declare-fun d!1917721 () Bool)

(declare-fun res!2537665 () Bool)

(declare-fun e!3731285 () Bool)

(assert (=> d!1917721 (=> res!2537665 e!3731285)))

(assert (=> d!1917721 (= res!2537665 (is-ElementMatch!16066 (ite c!1099702 (regOne!32645 lt!2330788) (regOne!32644 lt!2330788))))))

(assert (=> d!1917721 (= (validRegex!7802 (ite c!1099702 (regOne!32645 lt!2330788) (regOne!32644 lt!2330788))) e!3731285)))

(declare-fun call!506957 () Bool)

(declare-fun c!1099915 () Bool)

(declare-fun bm!506951 () Bool)

(declare-fun c!1099914 () Bool)

(assert (=> bm!506951 (= call!506957 (validRegex!7802 (ite c!1099915 (reg!16395 (ite c!1099702 (regOne!32645 lt!2330788) (regOne!32644 lt!2330788))) (ite c!1099914 (regTwo!32645 (ite c!1099702 (regOne!32645 lt!2330788) (regOne!32644 lt!2330788))) (regTwo!32644 (ite c!1099702 (regOne!32645 lt!2330788) (regOne!32644 lt!2330788)))))))))

(declare-fun b!6120443 () Bool)

(declare-fun res!2537664 () Bool)

(declare-fun e!3731287 () Bool)

(assert (=> b!6120443 (=> (not res!2537664) (not e!3731287))))

(declare-fun call!506956 () Bool)

(assert (=> b!6120443 (= res!2537664 call!506956)))

(declare-fun e!3731286 () Bool)

(assert (=> b!6120443 (= e!3731286 e!3731287)))

(declare-fun bm!506952 () Bool)

(declare-fun call!506958 () Bool)

(assert (=> bm!506952 (= call!506958 call!506957)))

(declare-fun bm!506953 () Bool)

(assert (=> bm!506953 (= call!506956 (validRegex!7802 (ite c!1099914 (regOne!32645 (ite c!1099702 (regOne!32645 lt!2330788) (regOne!32644 lt!2330788))) (regOne!32644 (ite c!1099702 (regOne!32645 lt!2330788) (regOne!32644 lt!2330788))))))))

(declare-fun b!6120444 () Bool)

(declare-fun e!3731288 () Bool)

(assert (=> b!6120444 (= e!3731285 e!3731288)))

(assert (=> b!6120444 (= c!1099915 (is-Star!16066 (ite c!1099702 (regOne!32645 lt!2330788) (regOne!32644 lt!2330788))))))

(declare-fun b!6120445 () Bool)

(declare-fun e!3731284 () Bool)

(assert (=> b!6120445 (= e!3731288 e!3731284)))

(declare-fun res!2537666 () Bool)

(assert (=> b!6120445 (= res!2537666 (not (nullable!6059 (reg!16395 (ite c!1099702 (regOne!32645 lt!2330788) (regOne!32644 lt!2330788))))))))

(assert (=> b!6120445 (=> (not res!2537666) (not e!3731284))))

(declare-fun b!6120446 () Bool)

(declare-fun e!3731289 () Bool)

(declare-fun e!3731283 () Bool)

(assert (=> b!6120446 (= e!3731289 e!3731283)))

(declare-fun res!2537667 () Bool)

(assert (=> b!6120446 (=> (not res!2537667) (not e!3731283))))

(assert (=> b!6120446 (= res!2537667 call!506956)))

(declare-fun b!6120447 () Bool)

(assert (=> b!6120447 (= e!3731288 e!3731286)))

(assert (=> b!6120447 (= c!1099914 (is-Union!16066 (ite c!1099702 (regOne!32645 lt!2330788) (regOne!32644 lt!2330788))))))

(declare-fun b!6120448 () Bool)

(declare-fun res!2537663 () Bool)

(assert (=> b!6120448 (=> res!2537663 e!3731289)))

(assert (=> b!6120448 (= res!2537663 (not (is-Concat!24911 (ite c!1099702 (regOne!32645 lt!2330788) (regOne!32644 lt!2330788)))))))

(assert (=> b!6120448 (= e!3731286 e!3731289)))

(declare-fun b!6120449 () Bool)

(assert (=> b!6120449 (= e!3731284 call!506957)))

(declare-fun b!6120450 () Bool)

(assert (=> b!6120450 (= e!3731287 call!506958)))

(declare-fun b!6120451 () Bool)

(assert (=> b!6120451 (= e!3731283 call!506958)))

(assert (= (and d!1917721 (not res!2537665)) b!6120444))

(assert (= (and b!6120444 c!1099915) b!6120445))

(assert (= (and b!6120444 (not c!1099915)) b!6120447))

(assert (= (and b!6120445 res!2537666) b!6120449))

(assert (= (and b!6120447 c!1099914) b!6120443))

(assert (= (and b!6120447 (not c!1099914)) b!6120448))

(assert (= (and b!6120443 res!2537664) b!6120450))

(assert (= (and b!6120448 (not res!2537663)) b!6120446))

(assert (= (and b!6120446 res!2537667) b!6120451))

(assert (= (or b!6120450 b!6120451) bm!506952))

(assert (= (or b!6120443 b!6120446) bm!506953))

(assert (= (or b!6120449 bm!506952) bm!506951))

(declare-fun m!6966776 () Bool)

(assert (=> bm!506951 m!6966776))

(declare-fun m!6966778 () Bool)

(assert (=> bm!506953 m!6966778))

(declare-fun m!6966780 () Bool)

(assert (=> b!6120445 m!6966780))

(assert (=> bm!506846 d!1917721))

(assert (=> d!1917485 d!1917637))

(declare-fun b!6120455 () Bool)

(declare-fun res!2537668 () Bool)

(declare-fun e!3731295 () Bool)

(assert (=> b!6120455 (=> (not res!2537668) (not e!3731295))))

(assert (=> b!6120455 (= res!2537668 (isEmpty!36310 (tail!11739 Nil!64375)))))

(declare-fun b!6120456 () Bool)

(declare-fun e!3731292 () Bool)

(declare-fun lt!2330952 () Bool)

(assert (=> b!6120456 (= e!3731292 (not lt!2330952))))

(declare-fun b!6120457 () Bool)

(declare-fun e!3731293 () Bool)

(assert (=> b!6120457 (= e!3731293 (nullable!6059 (regOne!32644 r!7292)))))

(declare-fun bm!506954 () Bool)

(declare-fun call!506959 () Bool)

(assert (=> bm!506954 (= call!506959 (isEmpty!36310 Nil!64375))))

(declare-fun b!6120458 () Bool)

(declare-fun e!3731296 () Bool)

(assert (=> b!6120458 (= e!3731296 e!3731292)))

(declare-fun c!1099916 () Bool)

(assert (=> b!6120458 (= c!1099916 (is-EmptyLang!16066 (regOne!32644 r!7292)))))

(declare-fun b!6120459 () Bool)

(assert (=> b!6120459 (= e!3731295 (= (head!12654 Nil!64375) (c!1099622 (regOne!32644 r!7292))))))

(declare-fun b!6120460 () Bool)

(declare-fun e!3731297 () Bool)

(assert (=> b!6120460 (= e!3731297 (not (= (head!12654 Nil!64375) (c!1099622 (regOne!32644 r!7292)))))))

(declare-fun b!6120461 () Bool)

(declare-fun e!3731294 () Bool)

(assert (=> b!6120461 (= e!3731294 e!3731297)))

(declare-fun res!2537672 () Bool)

(assert (=> b!6120461 (=> res!2537672 e!3731297)))

(assert (=> b!6120461 (= res!2537672 call!506959)))

(declare-fun b!6120462 () Bool)

(declare-fun res!2537669 () Bool)

(declare-fun e!3731298 () Bool)

(assert (=> b!6120462 (=> res!2537669 e!3731298)))

(assert (=> b!6120462 (= res!2537669 e!3731295)))

(declare-fun res!2537671 () Bool)

(assert (=> b!6120462 (=> (not res!2537671) (not e!3731295))))

(assert (=> b!6120462 (= res!2537671 lt!2330952)))

(declare-fun b!6120463 () Bool)

(declare-fun res!2537675 () Bool)

(assert (=> b!6120463 (=> (not res!2537675) (not e!3731295))))

(assert (=> b!6120463 (= res!2537675 (not call!506959))))

(declare-fun b!6120454 () Bool)

(assert (=> b!6120454 (= e!3731293 (matchR!8249 (derivativeStep!4787 (regOne!32644 r!7292) (head!12654 Nil!64375)) (tail!11739 Nil!64375)))))

(declare-fun d!1917723 () Bool)

(assert (=> d!1917723 e!3731296))

(declare-fun c!1099918 () Bool)

(assert (=> d!1917723 (= c!1099918 (is-EmptyExpr!16066 (regOne!32644 r!7292)))))

(assert (=> d!1917723 (= lt!2330952 e!3731293)))

(declare-fun c!1099917 () Bool)

(assert (=> d!1917723 (= c!1099917 (isEmpty!36310 Nil!64375))))

(assert (=> d!1917723 (validRegex!7802 (regOne!32644 r!7292))))

(assert (=> d!1917723 (= (matchR!8249 (regOne!32644 r!7292) Nil!64375) lt!2330952)))

(declare-fun b!6120464 () Bool)

(assert (=> b!6120464 (= e!3731296 (= lt!2330952 call!506959))))

(declare-fun b!6120465 () Bool)

(declare-fun res!2537670 () Bool)

(assert (=> b!6120465 (=> res!2537670 e!3731297)))

(assert (=> b!6120465 (= res!2537670 (not (isEmpty!36310 (tail!11739 Nil!64375))))))

(declare-fun b!6120466 () Bool)

(assert (=> b!6120466 (= e!3731298 e!3731294)))

(declare-fun res!2537674 () Bool)

(assert (=> b!6120466 (=> (not res!2537674) (not e!3731294))))

(assert (=> b!6120466 (= res!2537674 (not lt!2330952))))

(declare-fun b!6120467 () Bool)

(declare-fun res!2537673 () Bool)

(assert (=> b!6120467 (=> res!2537673 e!3731298)))

(assert (=> b!6120467 (= res!2537673 (not (is-ElementMatch!16066 (regOne!32644 r!7292))))))

(assert (=> b!6120467 (= e!3731292 e!3731298)))

(assert (= (and d!1917723 c!1099917) b!6120457))

(assert (= (and d!1917723 (not c!1099917)) b!6120454))

(assert (= (and d!1917723 c!1099918) b!6120464))

(assert (= (and d!1917723 (not c!1099918)) b!6120458))

(assert (= (and b!6120458 c!1099916) b!6120456))

(assert (= (and b!6120458 (not c!1099916)) b!6120467))

(assert (= (and b!6120467 (not res!2537673)) b!6120462))

(assert (= (and b!6120462 res!2537671) b!6120463))

(assert (= (and b!6120463 res!2537675) b!6120455))

(assert (= (and b!6120455 res!2537668) b!6120459))

(assert (= (and b!6120462 (not res!2537669)) b!6120466))

(assert (= (and b!6120466 res!2537674) b!6120461))

(assert (= (and b!6120461 (not res!2537672)) b!6120465))

(assert (= (and b!6120465 (not res!2537670)) b!6120460))

(assert (= (or b!6120464 b!6120461 b!6120463) bm!506954))

(assert (=> b!6120457 m!6966616))

(declare-fun m!6966782 () Bool)

(assert (=> b!6120465 m!6966782))

(assert (=> b!6120465 m!6966782))

(declare-fun m!6966784 () Bool)

(assert (=> b!6120465 m!6966784))

(declare-fun m!6966786 () Bool)

(assert (=> b!6120459 m!6966786))

(declare-fun m!6966788 () Bool)

(assert (=> d!1917723 m!6966788))

(assert (=> d!1917723 m!6966262))

(assert (=> b!6120460 m!6966786))

(assert (=> b!6120455 m!6966782))

(assert (=> b!6120455 m!6966782))

(assert (=> b!6120455 m!6966784))

(assert (=> bm!506954 m!6966788))

(assert (=> b!6120454 m!6966786))

(assert (=> b!6120454 m!6966786))

(declare-fun m!6966790 () Bool)

(assert (=> b!6120454 m!6966790))

(assert (=> b!6120454 m!6966782))

(assert (=> b!6120454 m!6966790))

(assert (=> b!6120454 m!6966782))

(declare-fun m!6966792 () Bool)

(assert (=> b!6120454 m!6966792))

(assert (=> d!1917485 d!1917723))

(assert (=> d!1917485 d!1917655))

(declare-fun d!1917725 () Bool)

(assert (=> d!1917725 (= (Exists!3136 (ite c!1099803 lambda!333399 lambda!333400)) (choose!45476 (ite c!1099803 lambda!333399 lambda!333400)))))

(declare-fun bs!1518578 () Bool)

(assert (= bs!1518578 d!1917725))

(declare-fun m!6966796 () Bool)

(assert (=> bs!1518578 m!6966796))

(assert (=> bm!506872 d!1917725))

(declare-fun bs!1518579 () Bool)

(declare-fun d!1917729 () Bool)

(assert (= bs!1518579 (and d!1917729 d!1917701)))

(declare-fun lambda!333426 () Int)

(assert (=> bs!1518579 (= lambda!333426 lambda!333423)))

(assert (=> d!1917729 (= (nullableZipper!1847 (set.union lt!2330798 lt!2330797)) (exists!2412 (set.union lt!2330798 lt!2330797) lambda!333426))))

(declare-fun bs!1518580 () Bool)

(assert (= bs!1518580 d!1917729))

(declare-fun m!6966798 () Bool)

(assert (=> bs!1518580 m!6966798))

(assert (=> b!6119691 d!1917729))

(declare-fun bs!1518581 () Bool)

(declare-fun d!1917731 () Bool)

(assert (= bs!1518581 (and d!1917731 d!1917461)))

(declare-fun lambda!333427 () Int)

(assert (=> bs!1518581 (= lambda!333427 lambda!333367)))

(declare-fun bs!1518582 () Bool)

(assert (= bs!1518582 (and d!1917731 d!1917467)))

(assert (=> bs!1518582 (= lambda!333427 lambda!333372)))

(declare-fun bs!1518583 () Bool)

(assert (= bs!1518583 (and d!1917731 d!1917713)))

(assert (=> bs!1518583 (= lambda!333427 lambda!333424)))

(declare-fun bs!1518584 () Bool)

(assert (= bs!1518584 (and d!1917731 d!1917559)))

(assert (=> bs!1518584 (= lambda!333427 lambda!333410)))

(declare-fun bs!1518585 () Bool)

(assert (= bs!1518585 (and d!1917731 d!1917423)))

(assert (=> bs!1518585 (= lambda!333427 lambda!333357)))

(declare-fun bs!1518586 () Bool)

(assert (= bs!1518586 (and d!1917731 d!1917717)))

(assert (=> bs!1518586 (= lambda!333427 lambda!333425)))

(declare-fun bs!1518587 () Bool)

(assert (= bs!1518587 (and d!1917731 d!1917463)))

(assert (=> bs!1518587 (= lambda!333427 lambda!333370)))

(declare-fun bs!1518588 () Bool)

(assert (= bs!1518588 (and d!1917731 d!1917421)))

(assert (=> bs!1518588 (= lambda!333427 lambda!333354)))

(declare-fun bs!1518589 () Bool)

(assert (= bs!1518589 (and d!1917731 d!1917479)))

(assert (=> bs!1518589 (= lambda!333427 lambda!333374)))

(declare-fun b!6120469 () Bool)

(declare-fun e!3731301 () Bool)

(assert (=> b!6120469 (= e!3731301 (isEmpty!36307 (t!377958 (t!377958 (t!377958 (exprs!5950 (h!70822 zl!343)))))))))

(declare-fun b!6120470 () Bool)

(declare-fun e!3731305 () Bool)

(declare-fun e!3731303 () Bool)

(assert (=> b!6120470 (= e!3731305 e!3731303)))

(declare-fun c!1099922 () Bool)

(assert (=> b!6120470 (= c!1099922 (isEmpty!36307 (t!377958 (t!377958 (exprs!5950 (h!70822 zl!343))))))))

(declare-fun b!6120471 () Bool)

(declare-fun e!3731302 () Regex!16066)

(declare-fun e!3731304 () Regex!16066)

(assert (=> b!6120471 (= e!3731302 e!3731304)))

(declare-fun c!1099921 () Bool)

(assert (=> b!6120471 (= c!1099921 (is-Cons!64373 (t!377958 (t!377958 (exprs!5950 (h!70822 zl!343))))))))

(declare-fun b!6120472 () Bool)

(declare-fun e!3731300 () Bool)

(declare-fun lt!2330953 () Regex!16066)

(assert (=> b!6120472 (= e!3731300 (isConcat!1006 lt!2330953))))

(declare-fun b!6120473 () Bool)

(assert (=> b!6120473 (= e!3731303 (isEmptyExpr!1483 lt!2330953))))

(assert (=> d!1917731 e!3731305))

(declare-fun res!2537677 () Bool)

(assert (=> d!1917731 (=> (not res!2537677) (not e!3731305))))

(assert (=> d!1917731 (= res!2537677 (validRegex!7802 lt!2330953))))

(assert (=> d!1917731 (= lt!2330953 e!3731302)))

(declare-fun c!1099919 () Bool)

(assert (=> d!1917731 (= c!1099919 e!3731301)))

(declare-fun res!2537678 () Bool)

(assert (=> d!1917731 (=> (not res!2537678) (not e!3731301))))

(assert (=> d!1917731 (= res!2537678 (is-Cons!64373 (t!377958 (t!377958 (exprs!5950 (h!70822 zl!343))))))))

(assert (=> d!1917731 (forall!15187 (t!377958 (t!377958 (exprs!5950 (h!70822 zl!343)))) lambda!333427)))

(assert (=> d!1917731 (= (generalisedConcat!1663 (t!377958 (t!377958 (exprs!5950 (h!70822 zl!343))))) lt!2330953)))

(declare-fun b!6120474 () Bool)

(assert (=> b!6120474 (= e!3731303 e!3731300)))

(declare-fun c!1099920 () Bool)

(assert (=> b!6120474 (= c!1099920 (isEmpty!36307 (tail!11738 (t!377958 (t!377958 (exprs!5950 (h!70822 zl!343)))))))))

(declare-fun b!6120475 () Bool)

(assert (=> b!6120475 (= e!3731304 (Concat!24911 (h!70821 (t!377958 (t!377958 (exprs!5950 (h!70822 zl!343))))) (generalisedConcat!1663 (t!377958 (t!377958 (t!377958 (exprs!5950 (h!70822 zl!343))))))))))

(declare-fun b!6120476 () Bool)

(assert (=> b!6120476 (= e!3731300 (= lt!2330953 (head!12653 (t!377958 (t!377958 (exprs!5950 (h!70822 zl!343)))))))))

(declare-fun b!6120477 () Bool)

(assert (=> b!6120477 (= e!3731304 EmptyExpr!16066)))

(declare-fun b!6120478 () Bool)

(assert (=> b!6120478 (= e!3731302 (h!70821 (t!377958 (t!377958 (exprs!5950 (h!70822 zl!343))))))))

(assert (= (and d!1917731 res!2537678) b!6120469))

(assert (= (and d!1917731 c!1099919) b!6120478))

(assert (= (and d!1917731 (not c!1099919)) b!6120471))

(assert (= (and b!6120471 c!1099921) b!6120475))

(assert (= (and b!6120471 (not c!1099921)) b!6120477))

(assert (= (and d!1917731 res!2537677) b!6120470))

(assert (= (and b!6120470 c!1099922) b!6120473))

(assert (= (and b!6120470 (not c!1099922)) b!6120474))

(assert (= (and b!6120474 c!1099920) b!6120476))

(assert (= (and b!6120474 (not c!1099920)) b!6120472))

(declare-fun m!6966800 () Bool)

(assert (=> b!6120476 m!6966800))

(declare-fun m!6966802 () Bool)

(assert (=> d!1917731 m!6966802))

(declare-fun m!6966804 () Bool)

(assert (=> d!1917731 m!6966804))

(declare-fun m!6966806 () Bool)

(assert (=> b!6120474 m!6966806))

(assert (=> b!6120474 m!6966806))

(declare-fun m!6966808 () Bool)

(assert (=> b!6120474 m!6966808))

(declare-fun m!6966810 () Bool)

(assert (=> b!6120473 m!6966810))

(declare-fun m!6966812 () Bool)

(assert (=> b!6120472 m!6966812))

(declare-fun m!6966814 () Bool)

(assert (=> b!6120469 m!6966814))

(declare-fun m!6966816 () Bool)

(assert (=> b!6120475 m!6966816))

(assert (=> b!6120470 m!6966164))

(assert (=> b!6119656 d!1917731))

(declare-fun d!1917737 () Bool)

(assert (=> d!1917737 (= (isUnion!923 lt!2330850) (is-Union!16066 lt!2330850))))

(assert (=> b!6119435 d!1917737))

(declare-fun d!1917739 () Bool)

(declare-fun res!2537684 () Bool)

(declare-fun e!3731315 () Bool)

(assert (=> d!1917739 (=> res!2537684 e!3731315)))

(assert (=> d!1917739 (= res!2537684 (is-ElementMatch!16066 (ite c!1099821 (reg!16395 r!7292) (ite c!1099820 (regTwo!32645 r!7292) (regTwo!32644 r!7292)))))))

(assert (=> d!1917739 (= (validRegex!7802 (ite c!1099821 (reg!16395 r!7292) (ite c!1099820 (regTwo!32645 r!7292) (regTwo!32644 r!7292)))) e!3731315)))

(declare-fun bm!506957 () Bool)

(declare-fun c!1099928 () Bool)

(declare-fun c!1099927 () Bool)

(declare-fun call!506963 () Bool)

(assert (=> bm!506957 (= call!506963 (validRegex!7802 (ite c!1099928 (reg!16395 (ite c!1099821 (reg!16395 r!7292) (ite c!1099820 (regTwo!32645 r!7292) (regTwo!32644 r!7292)))) (ite c!1099927 (regTwo!32645 (ite c!1099821 (reg!16395 r!7292) (ite c!1099820 (regTwo!32645 r!7292) (regTwo!32644 r!7292)))) (regTwo!32644 (ite c!1099821 (reg!16395 r!7292) (ite c!1099820 (regTwo!32645 r!7292) (regTwo!32644 r!7292))))))))))

(declare-fun b!6120490 () Bool)

(declare-fun res!2537683 () Bool)

(declare-fun e!3731317 () Bool)

(assert (=> b!6120490 (=> (not res!2537683) (not e!3731317))))

(declare-fun call!506962 () Bool)

(assert (=> b!6120490 (= res!2537683 call!506962)))

(declare-fun e!3731316 () Bool)

(assert (=> b!6120490 (= e!3731316 e!3731317)))

(declare-fun bm!506958 () Bool)

(declare-fun call!506964 () Bool)

(assert (=> bm!506958 (= call!506964 call!506963)))

(declare-fun bm!506959 () Bool)

(assert (=> bm!506959 (= call!506962 (validRegex!7802 (ite c!1099927 (regOne!32645 (ite c!1099821 (reg!16395 r!7292) (ite c!1099820 (regTwo!32645 r!7292) (regTwo!32644 r!7292)))) (regOne!32644 (ite c!1099821 (reg!16395 r!7292) (ite c!1099820 (regTwo!32645 r!7292) (regTwo!32644 r!7292)))))))))

(declare-fun b!6120491 () Bool)

(declare-fun e!3731318 () Bool)

(assert (=> b!6120491 (= e!3731315 e!3731318)))

(assert (=> b!6120491 (= c!1099928 (is-Star!16066 (ite c!1099821 (reg!16395 r!7292) (ite c!1099820 (regTwo!32645 r!7292) (regTwo!32644 r!7292)))))))

(declare-fun b!6120492 () Bool)

(declare-fun e!3731314 () Bool)

(assert (=> b!6120492 (= e!3731318 e!3731314)))

(declare-fun res!2537685 () Bool)

(assert (=> b!6120492 (= res!2537685 (not (nullable!6059 (reg!16395 (ite c!1099821 (reg!16395 r!7292) (ite c!1099820 (regTwo!32645 r!7292) (regTwo!32644 r!7292)))))))))

(assert (=> b!6120492 (=> (not res!2537685) (not e!3731314))))

(declare-fun b!6120493 () Bool)

(declare-fun e!3731319 () Bool)

(declare-fun e!3731313 () Bool)

(assert (=> b!6120493 (= e!3731319 e!3731313)))

(declare-fun res!2537686 () Bool)

(assert (=> b!6120493 (=> (not res!2537686) (not e!3731313))))

(assert (=> b!6120493 (= res!2537686 call!506962)))

(declare-fun b!6120494 () Bool)

(assert (=> b!6120494 (= e!3731318 e!3731316)))

(assert (=> b!6120494 (= c!1099927 (is-Union!16066 (ite c!1099821 (reg!16395 r!7292) (ite c!1099820 (regTwo!32645 r!7292) (regTwo!32644 r!7292)))))))

(declare-fun b!6120495 () Bool)

(declare-fun res!2537682 () Bool)

(assert (=> b!6120495 (=> res!2537682 e!3731319)))

(assert (=> b!6120495 (= res!2537682 (not (is-Concat!24911 (ite c!1099821 (reg!16395 r!7292) (ite c!1099820 (regTwo!32645 r!7292) (regTwo!32644 r!7292))))))))

(assert (=> b!6120495 (= e!3731316 e!3731319)))

(declare-fun b!6120496 () Bool)

(assert (=> b!6120496 (= e!3731314 call!506963)))

(declare-fun b!6120497 () Bool)

(assert (=> b!6120497 (= e!3731317 call!506964)))

(declare-fun b!6120498 () Bool)

(assert (=> b!6120498 (= e!3731313 call!506964)))

(assert (= (and d!1917739 (not res!2537684)) b!6120491))

(assert (= (and b!6120491 c!1099928) b!6120492))

(assert (= (and b!6120491 (not c!1099928)) b!6120494))

(assert (= (and b!6120492 res!2537685) b!6120496))

(assert (= (and b!6120494 c!1099927) b!6120490))

(assert (= (and b!6120494 (not c!1099927)) b!6120495))

(assert (= (and b!6120490 res!2537683) b!6120497))

(assert (= (and b!6120495 (not res!2537682)) b!6120493))

(assert (= (and b!6120493 res!2537686) b!6120498))

(assert (= (or b!6120497 b!6120498) bm!506958))

(assert (= (or b!6120490 b!6120493) bm!506959))

(assert (= (or b!6120496 bm!506958) bm!506957))

(declare-fun m!6966818 () Bool)

(assert (=> bm!506957 m!6966818))

(declare-fun m!6966820 () Bool)

(assert (=> bm!506959 m!6966820))

(declare-fun m!6966822 () Bool)

(assert (=> b!6120492 m!6966822))

(assert (=> bm!506877 d!1917739))

(declare-fun d!1917741 () Bool)

(assert (=> d!1917741 (= (nullable!6059 r!7292) (nullableFct!2023 r!7292))))

(declare-fun bs!1518598 () Bool)

(assert (= bs!1518598 d!1917741))

(declare-fun m!6966824 () Bool)

(assert (=> bs!1518598 m!6966824))

(assert (=> b!6119990 d!1917741))

(declare-fun d!1917743 () Bool)

(declare-fun res!2537692 () Bool)

(declare-fun e!3731327 () Bool)

(assert (=> d!1917743 (=> res!2537692 e!3731327)))

(assert (=> d!1917743 (= res!2537692 (is-Nil!64374 lt!2330863))))

(assert (=> d!1917743 (= (noDuplicate!1913 lt!2330863) e!3731327)))

(declare-fun b!6120508 () Bool)

(declare-fun e!3731328 () Bool)

(assert (=> b!6120508 (= e!3731327 e!3731328)))

(declare-fun res!2537693 () Bool)

(assert (=> b!6120508 (=> (not res!2537693) (not e!3731328))))

(declare-fun contains!20028 (List!64498 Context!10900) Bool)

(assert (=> b!6120508 (= res!2537693 (not (contains!20028 (t!377959 lt!2330863) (h!70822 lt!2330863))))))

(declare-fun b!6120509 () Bool)

(assert (=> b!6120509 (= e!3731328 (noDuplicate!1913 (t!377959 lt!2330863)))))

(assert (= (and d!1917743 (not res!2537692)) b!6120508))

(assert (= (and b!6120508 res!2537693) b!6120509))

(declare-fun m!6966832 () Bool)

(assert (=> b!6120508 m!6966832))

(declare-fun m!6966834 () Bool)

(assert (=> b!6120509 m!6966834))

(assert (=> d!1917465 d!1917743))

(declare-fun d!1917749 () Bool)

(declare-fun e!3731342 () Bool)

(assert (=> d!1917749 e!3731342))

(declare-fun res!2537703 () Bool)

(assert (=> d!1917749 (=> (not res!2537703) (not e!3731342))))

(declare-fun res!2537704 () List!64498)

(assert (=> d!1917749 (= res!2537703 (noDuplicate!1913 res!2537704))))

(declare-fun e!3731344 () Bool)

(assert (=> d!1917749 e!3731344))

(assert (=> d!1917749 (= (choose!45469 z!1189) res!2537704)))

(declare-fun b!6120526 () Bool)

(declare-fun e!3731343 () Bool)

(declare-fun tp!1709943 () Bool)

(assert (=> b!6120526 (= e!3731343 tp!1709943)))

(declare-fun b!6120525 () Bool)

(declare-fun tp!1709944 () Bool)

(assert (=> b!6120525 (= e!3731344 (and (inv!83413 (h!70822 res!2537704)) e!3731343 tp!1709944))))

(declare-fun b!6120527 () Bool)

(assert (=> b!6120527 (= e!3731342 (= (content!11956 res!2537704) z!1189))))

(assert (= b!6120525 b!6120526))

(assert (= (and d!1917749 (is-Cons!64374 res!2537704)) b!6120525))

(assert (= (and d!1917749 res!2537703) b!6120527))

(declare-fun m!6966850 () Bool)

(assert (=> d!1917749 m!6966850))

(declare-fun m!6966852 () Bool)

(assert (=> b!6120525 m!6966852))

(declare-fun m!6966854 () Bool)

(assert (=> b!6120527 m!6966854))

(assert (=> d!1917465 d!1917749))

(declare-fun d!1917757 () Bool)

(assert (=> d!1917757 (= (nullable!6059 (h!70821 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343)))))))) (nullableFct!2023 (h!70821 (exprs!5950 (Context!10901 (Cons!64373 (h!70821 (exprs!5950 (h!70822 zl!343))) (t!377958 (exprs!5950 (h!70822 zl!343)))))))))))

(declare-fun bs!1518603 () Bool)

(assert (= bs!1518603 d!1917757))

(declare-fun m!6966856 () Bool)

(assert (=> bs!1518603 m!6966856))

(assert (=> b!6119476 d!1917757))

(assert (=> b!6119447 d!1917479))

(declare-fun bs!1518604 () Bool)

(declare-fun d!1917759 () Bool)

(assert (= bs!1518604 (and d!1917759 d!1917461)))

(declare-fun lambda!333430 () Int)

(assert (=> bs!1518604 (= lambda!333430 lambda!333367)))

(declare-fun bs!1518605 () Bool)

(assert (= bs!1518605 (and d!1917759 d!1917467)))

(assert (=> bs!1518605 (= lambda!333430 lambda!333372)))

(declare-fun bs!1518606 () Bool)

(assert (= bs!1518606 (and d!1917759 d!1917713)))

(assert (=> bs!1518606 (= lambda!333430 lambda!333424)))

(declare-fun bs!1518607 () Bool)

(assert (= bs!1518607 (and d!1917759 d!1917559)))

(assert (=> bs!1518607 (= lambda!333430 lambda!333410)))

(declare-fun bs!1518608 () Bool)

(assert (= bs!1518608 (and d!1917759 d!1917423)))

(assert (=> bs!1518608 (= lambda!333430 lambda!333357)))

(declare-fun bs!1518609 () Bool)

(assert (= bs!1518609 (and d!1917759 d!1917717)))

(assert (=> bs!1518609 (= lambda!333430 lambda!333425)))

(declare-fun bs!1518610 () Bool)

(assert (= bs!1518610 (and d!1917759 d!1917731)))

(assert (=> bs!1518610 (= lambda!333430 lambda!333427)))

(declare-fun bs!1518611 () Bool)

(assert (= bs!1518611 (and d!1917759 d!1917463)))

(assert (=> bs!1518611 (= lambda!333430 lambda!333370)))

(declare-fun bs!1518612 () Bool)

(assert (= bs!1518612 (and d!1917759 d!1917421)))

(assert (=> bs!1518612 (= lambda!333430 lambda!333354)))

(declare-fun bs!1518613 () Bool)

(assert (= bs!1518613 (and d!1917759 d!1917479)))

(assert (=> bs!1518613 (= lambda!333430 lambda!333374)))

(declare-fun lt!2330954 () List!64497)

(assert (=> d!1917759 (forall!15187 lt!2330954 lambda!333430)))

(declare-fun e!3731345 () List!64497)

(assert (=> d!1917759 (= lt!2330954 e!3731345)))

(declare-fun c!1099933 () Bool)

(assert (=> d!1917759 (= c!1099933 (is-Cons!64374 (t!377959 zl!343)))))

(assert (=> d!1917759 (= (unfocusZipperList!1487 (t!377959 zl!343)) lt!2330954)))

(declare-fun b!6120528 () Bool)

(assert (=> b!6120528 (= e!3731345 (Cons!64373 (generalisedConcat!1663 (exprs!5950 (h!70822 (t!377959 zl!343)))) (unfocusZipperList!1487 (t!377959 (t!377959 zl!343)))))))

(declare-fun b!6120529 () Bool)

(assert (=> b!6120529 (= e!3731345 Nil!64373)))

(assert (= (and d!1917759 c!1099933) b!6120528))

(assert (= (and d!1917759 (not c!1099933)) b!6120529))

(declare-fun m!6966860 () Bool)

(assert (=> d!1917759 m!6966860))

(declare-fun m!6966862 () Bool)

(assert (=> b!6120528 m!6966862))

(declare-fun m!6966864 () Bool)

(assert (=> b!6120528 m!6966864))

(assert (=> b!6119447 d!1917759))

(declare-fun bm!506964 () Bool)

(declare-fun call!506971 () (Set Context!10900))

(declare-fun call!506973 () (Set Context!10900))

(assert (=> bm!506964 (= call!506971 call!506973)))

(declare-fun b!6120530 () Bool)

(declare-fun e!3731347 () (Set Context!10900))

(declare-fun e!3731346 () (Set Context!10900))

(assert (=> b!6120530 (= e!3731347 e!3731346)))

(declare-fun c!1099940 () Bool)

(assert (=> b!6120530 (= c!1099940 (is-Concat!24911 (h!70821 (exprs!5950 (h!70822 zl!343)))))))

(declare-fun b!6120531 () Bool)

(assert (=> b!6120531 (= e!3731346 call!506971)))

(declare-fun d!1917763 () Bool)

(declare-fun c!1099936 () Bool)

(assert (=> d!1917763 (= c!1099936 (and (is-ElementMatch!16066 (h!70821 (exprs!5950 (h!70822 zl!343)))) (= (c!1099622 (h!70821 (exprs!5950 (h!70822 zl!343)))) (h!70823 s!2326))))))

(declare-fun e!3731349 () (Set Context!10900))

(assert (=> d!1917763 (= (derivationStepZipperDown!1314 (h!70821 (exprs!5950 (h!70822 zl!343))) (Context!10901 (t!377958 (exprs!5950 (h!70822 zl!343)))) (h!70823 s!2326)) e!3731349)))

(declare-fun b!6120532 () Bool)

(declare-fun e!3731351 () (Set Context!10900))

(assert (=> b!6120532 (= e!3731349 e!3731351)))

(declare-fun c!1099939 () Bool)

(assert (=> b!6120532 (= c!1099939 (is-Union!16066 (h!70821 (exprs!5950 (h!70822 zl!343)))))))

(declare-fun b!6120533 () Bool)

(declare-fun c!1099938 () Bool)

(assert (=> b!6120533 (= c!1099938 (is-Star!16066 (h!70821 (exprs!5950 (h!70822 zl!343)))))))

(declare-fun e!3731350 () (Set Context!10900))

(assert (=> b!6120533 (= e!3731346 e!3731350)))

(declare-fun b!6120534 () Bool)

(declare-fun call!506974 () (Set Context!10900))

(declare-fun call!506969 () (Set Context!10900))

(assert (=> b!6120534 (= e!3731351 (set.union call!506974 call!506969))))

(declare-fun b!6120535 () Bool)

(assert (=> b!6120535 (= e!3731350 call!506971)))

(declare-fun call!506972 () List!64497)

(declare-fun c!1099937 () Bool)

(declare-fun bm!506965 () Bool)

(assert (=> bm!506965 (= call!506972 ($colon$colon!1943 (exprs!5950 (Context!10901 (t!377958 (exprs!5950 (h!70822 zl!343))))) (ite (or c!1099937 c!1099940) (regTwo!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (h!70821 (exprs!5950 (h!70822 zl!343))))))))

(declare-fun b!6120536 () Bool)

(assert (=> b!6120536 (= e!3731349 (set.insert (Context!10901 (t!377958 (exprs!5950 (h!70822 zl!343)))) (as set.empty (Set Context!10900))))))

(declare-fun bm!506966 () Bool)

(assert (=> bm!506966 (= call!506974 (derivationStepZipperDown!1314 (ite c!1099939 (regOne!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343))))) (ite c!1099939 (Context!10901 (t!377958 (exprs!5950 (h!70822 zl!343)))) (Context!10901 call!506972)) (h!70823 s!2326)))))

(declare-fun bm!506967 () Bool)

(declare-fun call!506970 () List!64497)

(assert (=> bm!506967 (= call!506970 call!506972)))

(declare-fun b!6120537 () Bool)

(assert (=> b!6120537 (= e!3731347 (set.union call!506974 call!506973))))

(declare-fun b!6120538 () Bool)

(assert (=> b!6120538 (= e!3731350 (as set.empty (Set Context!10900)))))

(declare-fun bm!506968 () Bool)

(assert (=> bm!506968 (= call!506973 call!506969)))

(declare-fun b!6120539 () Bool)

(declare-fun e!3731348 () Bool)

(assert (=> b!6120539 (= c!1099937 e!3731348)))

(declare-fun res!2537705 () Bool)

(assert (=> b!6120539 (=> (not res!2537705) (not e!3731348))))

(assert (=> b!6120539 (= res!2537705 (is-Concat!24911 (h!70821 (exprs!5950 (h!70822 zl!343)))))))

(assert (=> b!6120539 (= e!3731351 e!3731347)))

(declare-fun bm!506969 () Bool)

(assert (=> bm!506969 (= call!506969 (derivationStepZipperDown!1314 (ite c!1099939 (regTwo!32645 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099937 (regTwo!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (ite c!1099940 (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343)))) (reg!16395 (h!70821 (exprs!5950 (h!70822 zl!343))))))) (ite (or c!1099939 c!1099937) (Context!10901 (t!377958 (exprs!5950 (h!70822 zl!343)))) (Context!10901 call!506970)) (h!70823 s!2326)))))

(declare-fun b!6120540 () Bool)

(assert (=> b!6120540 (= e!3731348 (nullable!6059 (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343))))))))

(assert (= (and d!1917763 c!1099936) b!6120536))

(assert (= (and d!1917763 (not c!1099936)) b!6120532))

(assert (= (and b!6120532 c!1099939) b!6120534))

(assert (= (and b!6120532 (not c!1099939)) b!6120539))

(assert (= (and b!6120539 res!2537705) b!6120540))

(assert (= (and b!6120539 c!1099937) b!6120537))

(assert (= (and b!6120539 (not c!1099937)) b!6120530))

(assert (= (and b!6120530 c!1099940) b!6120531))

(assert (= (and b!6120530 (not c!1099940)) b!6120533))

(assert (= (and b!6120533 c!1099938) b!6120535))

(assert (= (and b!6120533 (not c!1099938)) b!6120538))

(assert (= (or b!6120531 b!6120535) bm!506967))

(assert (= (or b!6120531 b!6120535) bm!506964))

(assert (= (or b!6120537 bm!506967) bm!506965))

(assert (= (or b!6120537 bm!506964) bm!506968))

(assert (= (or b!6120534 bm!506968) bm!506969))

(assert (= (or b!6120534 b!6120537) bm!506966))

(declare-fun m!6966866 () Bool)

(assert (=> bm!506966 m!6966866))

(declare-fun m!6966868 () Bool)

(assert (=> bm!506965 m!6966868))

(declare-fun m!6966870 () Bool)

(assert (=> bm!506969 m!6966870))

(declare-fun m!6966872 () Bool)

(assert (=> b!6120536 m!6966872))

(assert (=> b!6120540 m!6966090))

(assert (=> bm!506829 d!1917763))

(declare-fun b!6120546 () Bool)

(declare-fun res!2537710 () Bool)

(declare-fun e!3731359 () Bool)

(assert (=> b!6120546 (=> (not res!2537710) (not e!3731359))))

(assert (=> b!6120546 (= res!2537710 (isEmpty!36310 (tail!11739 (_1!36348 (get!22201 lt!2330887)))))))

(declare-fun b!6120547 () Bool)

(declare-fun e!3731356 () Bool)

(declare-fun lt!2330955 () Bool)

(assert (=> b!6120547 (= e!3731356 (not lt!2330955))))

(declare-fun b!6120548 () Bool)

(declare-fun e!3731357 () Bool)

(assert (=> b!6120548 (= e!3731357 (nullable!6059 (regOne!32644 r!7292)))))

(declare-fun bm!506970 () Bool)

(declare-fun call!506975 () Bool)

(assert (=> bm!506970 (= call!506975 (isEmpty!36310 (_1!36348 (get!22201 lt!2330887))))))

(declare-fun b!6120549 () Bool)

(declare-fun e!3731360 () Bool)

(assert (=> b!6120549 (= e!3731360 e!3731356)))

(declare-fun c!1099941 () Bool)

(assert (=> b!6120549 (= c!1099941 (is-EmptyLang!16066 (regOne!32644 r!7292)))))

(declare-fun b!6120550 () Bool)

(assert (=> b!6120550 (= e!3731359 (= (head!12654 (_1!36348 (get!22201 lt!2330887))) (c!1099622 (regOne!32644 r!7292))))))

(declare-fun b!6120551 () Bool)

(declare-fun e!3731361 () Bool)

(assert (=> b!6120551 (= e!3731361 (not (= (head!12654 (_1!36348 (get!22201 lt!2330887))) (c!1099622 (regOne!32644 r!7292)))))))

(declare-fun b!6120552 () Bool)

(declare-fun e!3731358 () Bool)

(assert (=> b!6120552 (= e!3731358 e!3731361)))

(declare-fun res!2537714 () Bool)

(assert (=> b!6120552 (=> res!2537714 e!3731361)))

(assert (=> b!6120552 (= res!2537714 call!506975)))

(declare-fun b!6120553 () Bool)

(declare-fun res!2537711 () Bool)

(declare-fun e!3731362 () Bool)

(assert (=> b!6120553 (=> res!2537711 e!3731362)))

(assert (=> b!6120553 (= res!2537711 e!3731359)))

(declare-fun res!2537713 () Bool)

(assert (=> b!6120553 (=> (not res!2537713) (not e!3731359))))

(assert (=> b!6120553 (= res!2537713 lt!2330955)))

(declare-fun b!6120554 () Bool)

(declare-fun res!2537717 () Bool)

(assert (=> b!6120554 (=> (not res!2537717) (not e!3731359))))

(assert (=> b!6120554 (= res!2537717 (not call!506975))))

(declare-fun b!6120545 () Bool)

(assert (=> b!6120545 (= e!3731357 (matchR!8249 (derivativeStep!4787 (regOne!32644 r!7292) (head!12654 (_1!36348 (get!22201 lt!2330887)))) (tail!11739 (_1!36348 (get!22201 lt!2330887)))))))

(declare-fun d!1917767 () Bool)

(assert (=> d!1917767 e!3731360))

(declare-fun c!1099943 () Bool)

(assert (=> d!1917767 (= c!1099943 (is-EmptyExpr!16066 (regOne!32644 r!7292)))))

(assert (=> d!1917767 (= lt!2330955 e!3731357)))

(declare-fun c!1099942 () Bool)

(assert (=> d!1917767 (= c!1099942 (isEmpty!36310 (_1!36348 (get!22201 lt!2330887))))))

(assert (=> d!1917767 (validRegex!7802 (regOne!32644 r!7292))))

(assert (=> d!1917767 (= (matchR!8249 (regOne!32644 r!7292) (_1!36348 (get!22201 lt!2330887))) lt!2330955)))

(declare-fun b!6120555 () Bool)

(assert (=> b!6120555 (= e!3731360 (= lt!2330955 call!506975))))

(declare-fun b!6120556 () Bool)

(declare-fun res!2537712 () Bool)

(assert (=> b!6120556 (=> res!2537712 e!3731361)))

(assert (=> b!6120556 (= res!2537712 (not (isEmpty!36310 (tail!11739 (_1!36348 (get!22201 lt!2330887))))))))

(declare-fun b!6120557 () Bool)

(assert (=> b!6120557 (= e!3731362 e!3731358)))

(declare-fun res!2537716 () Bool)

(assert (=> b!6120557 (=> (not res!2537716) (not e!3731358))))

(assert (=> b!6120557 (= res!2537716 (not lt!2330955))))

(declare-fun b!6120558 () Bool)

(declare-fun res!2537715 () Bool)

(assert (=> b!6120558 (=> res!2537715 e!3731362)))

(assert (=> b!6120558 (= res!2537715 (not (is-ElementMatch!16066 (regOne!32644 r!7292))))))

(assert (=> b!6120558 (= e!3731356 e!3731362)))

(assert (= (and d!1917767 c!1099942) b!6120548))

(assert (= (and d!1917767 (not c!1099942)) b!6120545))

(assert (= (and d!1917767 c!1099943) b!6120555))

(assert (= (and d!1917767 (not c!1099943)) b!6120549))

(assert (= (and b!6120549 c!1099941) b!6120547))

(assert (= (and b!6120549 (not c!1099941)) b!6120558))

(assert (= (and b!6120558 (not res!2537715)) b!6120553))

(assert (= (and b!6120553 res!2537713) b!6120554))

(assert (= (and b!6120554 res!2537717) b!6120546))

(assert (= (and b!6120546 res!2537710) b!6120550))

(assert (= (and b!6120553 (not res!2537711)) b!6120557))

(assert (= (and b!6120557 res!2537716) b!6120552))

(assert (= (and b!6120552 (not res!2537714)) b!6120556))

(assert (= (and b!6120556 (not res!2537712)) b!6120551))

(assert (= (or b!6120555 b!6120552 b!6120554) bm!506970))

(assert (=> b!6120548 m!6966616))

(declare-fun m!6966874 () Bool)

(assert (=> b!6120556 m!6966874))

(assert (=> b!6120556 m!6966874))

(declare-fun m!6966876 () Bool)

(assert (=> b!6120556 m!6966876))

(declare-fun m!6966878 () Bool)

(assert (=> b!6120550 m!6966878))

(declare-fun m!6966880 () Bool)

(assert (=> d!1917767 m!6966880))

(assert (=> d!1917767 m!6966262))

(assert (=> b!6120551 m!6966878))

(assert (=> b!6120546 m!6966874))

(assert (=> b!6120546 m!6966874))

(assert (=> b!6120546 m!6966876))

(assert (=> bm!506970 m!6966880))

(assert (=> b!6120545 m!6966878))

(assert (=> b!6120545 m!6966878))

(declare-fun m!6966884 () Bool)

(assert (=> b!6120545 m!6966884))

(assert (=> b!6120545 m!6966874))

(assert (=> b!6120545 m!6966884))

(assert (=> b!6120545 m!6966874))

(declare-fun m!6966888 () Bool)

(assert (=> b!6120545 m!6966888))

(assert (=> b!6119776 d!1917767))

(assert (=> b!6119776 d!1917649))

(assert (=> b!6119674 d!1917447))

(declare-fun bs!1518615 () Bool)

(declare-fun d!1917771 () Bool)

(assert (= bs!1518615 (and d!1917771 d!1917701)))

(declare-fun lambda!333434 () Int)

(assert (=> bs!1518615 (= lambda!333434 lambda!333423)))

(declare-fun bs!1518616 () Bool)

(assert (= bs!1518616 (and d!1917771 d!1917729)))

(assert (=> bs!1518616 (= lambda!333434 lambda!333426)))

(assert (=> d!1917771 (= (nullableZipper!1847 lt!2330798) (exists!2412 lt!2330798 lambda!333434))))

(declare-fun bs!1518617 () Bool)

(assert (= bs!1518617 d!1917771))

(declare-fun m!6966890 () Bool)

(assert (=> bs!1518617 m!6966890))

(assert (=> b!6119679 d!1917771))

(declare-fun d!1917773 () Bool)

(declare-fun res!2537727 () Bool)

(declare-fun e!3731374 () Bool)

(assert (=> d!1917773 (=> res!2537727 e!3731374)))

(assert (=> d!1917773 (= res!2537727 (is-ElementMatch!16066 lt!2330873))))

(assert (=> d!1917773 (= (validRegex!7802 lt!2330873) e!3731374)))

(declare-fun call!506980 () Bool)

(declare-fun c!1099947 () Bool)

(declare-fun bm!506974 () Bool)

(declare-fun c!1099946 () Bool)

(assert (=> bm!506974 (= call!506980 (validRegex!7802 (ite c!1099947 (reg!16395 lt!2330873) (ite c!1099946 (regTwo!32645 lt!2330873) (regTwo!32644 lt!2330873)))))))

(declare-fun b!6120570 () Bool)

(declare-fun res!2537726 () Bool)

(declare-fun e!3731376 () Bool)

(assert (=> b!6120570 (=> (not res!2537726) (not e!3731376))))

(declare-fun call!506979 () Bool)

(assert (=> b!6120570 (= res!2537726 call!506979)))

(declare-fun e!3731375 () Bool)

(assert (=> b!6120570 (= e!3731375 e!3731376)))

(declare-fun bm!506975 () Bool)

(declare-fun call!506981 () Bool)

(assert (=> bm!506975 (= call!506981 call!506980)))

(declare-fun bm!506976 () Bool)

(assert (=> bm!506976 (= call!506979 (validRegex!7802 (ite c!1099946 (regOne!32645 lt!2330873) (regOne!32644 lt!2330873))))))

(declare-fun b!6120571 () Bool)

(declare-fun e!3731377 () Bool)

(assert (=> b!6120571 (= e!3731374 e!3731377)))

(assert (=> b!6120571 (= c!1099947 (is-Star!16066 lt!2330873))))

(declare-fun b!6120572 () Bool)

(declare-fun e!3731373 () Bool)

(assert (=> b!6120572 (= e!3731377 e!3731373)))

(declare-fun res!2537728 () Bool)

(assert (=> b!6120572 (= res!2537728 (not (nullable!6059 (reg!16395 lt!2330873))))))

(assert (=> b!6120572 (=> (not res!2537728) (not e!3731373))))

(declare-fun b!6120573 () Bool)

(declare-fun e!3731378 () Bool)

(declare-fun e!3731372 () Bool)

(assert (=> b!6120573 (= e!3731378 e!3731372)))

(declare-fun res!2537729 () Bool)

(assert (=> b!6120573 (=> (not res!2537729) (not e!3731372))))

(assert (=> b!6120573 (= res!2537729 call!506979)))

(declare-fun b!6120574 () Bool)

(assert (=> b!6120574 (= e!3731377 e!3731375)))

(assert (=> b!6120574 (= c!1099946 (is-Union!16066 lt!2330873))))

(declare-fun b!6120575 () Bool)

(declare-fun res!2537725 () Bool)

(assert (=> b!6120575 (=> res!2537725 e!3731378)))

(assert (=> b!6120575 (= res!2537725 (not (is-Concat!24911 lt!2330873)))))

(assert (=> b!6120575 (= e!3731375 e!3731378)))

(declare-fun b!6120576 () Bool)

(assert (=> b!6120576 (= e!3731373 call!506980)))

(declare-fun b!6120577 () Bool)

(assert (=> b!6120577 (= e!3731376 call!506981)))

(declare-fun b!6120578 () Bool)

(assert (=> b!6120578 (= e!3731372 call!506981)))

(assert (= (and d!1917773 (not res!2537727)) b!6120571))

(assert (= (and b!6120571 c!1099947) b!6120572))

(assert (= (and b!6120571 (not c!1099947)) b!6120574))

(assert (= (and b!6120572 res!2537728) b!6120576))

(assert (= (and b!6120574 c!1099946) b!6120570))

(assert (= (and b!6120574 (not c!1099946)) b!6120575))

(assert (= (and b!6120570 res!2537726) b!6120577))

(assert (= (and b!6120575 (not res!2537725)) b!6120573))

(assert (= (and b!6120573 res!2537729) b!6120578))

(assert (= (or b!6120577 b!6120578) bm!506975))

(assert (= (or b!6120570 b!6120573) bm!506976))

(assert (= (or b!6120576 bm!506975) bm!506974))

(declare-fun m!6966902 () Bool)

(assert (=> bm!506974 m!6966902))

(declare-fun m!6966904 () Bool)

(assert (=> bm!506976 m!6966904))

(declare-fun m!6966906 () Bool)

(assert (=> b!6120572 m!6966906))

(assert (=> d!1917481 d!1917773))

(declare-fun bs!1518618 () Bool)

(declare-fun d!1917781 () Bool)

(assert (= bs!1518618 (and d!1917781 d!1917461)))

(declare-fun lambda!333435 () Int)

(assert (=> bs!1518618 (= lambda!333435 lambda!333367)))

(declare-fun bs!1518619 () Bool)

(assert (= bs!1518619 (and d!1917781 d!1917467)))

(assert (=> bs!1518619 (= lambda!333435 lambda!333372)))

(declare-fun bs!1518620 () Bool)

(assert (= bs!1518620 (and d!1917781 d!1917713)))

(assert (=> bs!1518620 (= lambda!333435 lambda!333424)))

(declare-fun bs!1518621 () Bool)

(assert (= bs!1518621 (and d!1917781 d!1917559)))

(assert (=> bs!1518621 (= lambda!333435 lambda!333410)))

(declare-fun bs!1518622 () Bool)

(assert (= bs!1518622 (and d!1917781 d!1917423)))

(assert (=> bs!1518622 (= lambda!333435 lambda!333357)))

(declare-fun bs!1518623 () Bool)

(assert (= bs!1518623 (and d!1917781 d!1917717)))

(assert (=> bs!1518623 (= lambda!333435 lambda!333425)))

(declare-fun bs!1518624 () Bool)

(assert (= bs!1518624 (and d!1917781 d!1917731)))

(assert (=> bs!1518624 (= lambda!333435 lambda!333427)))

(declare-fun bs!1518625 () Bool)

(assert (= bs!1518625 (and d!1917781 d!1917463)))

(assert (=> bs!1518625 (= lambda!333435 lambda!333370)))

(declare-fun bs!1518626 () Bool)

(assert (= bs!1518626 (and d!1917781 d!1917759)))

(assert (=> bs!1518626 (= lambda!333435 lambda!333430)))

(declare-fun bs!1518627 () Bool)

(assert (= bs!1518627 (and d!1917781 d!1917421)))

(assert (=> bs!1518627 (= lambda!333435 lambda!333354)))

(declare-fun bs!1518629 () Bool)

(assert (= bs!1518629 (and d!1917781 d!1917479)))

(assert (=> bs!1518629 (= lambda!333435 lambda!333374)))

(declare-fun b!6120590 () Bool)

(declare-fun e!3731391 () Regex!16066)

(assert (=> b!6120590 (= e!3731391 (h!70821 (unfocusZipperList!1487 lt!2330796)))))

(declare-fun b!6120591 () Bool)

(declare-fun e!3731393 () Bool)

(assert (=> b!6120591 (= e!3731393 (isEmpty!36307 (t!377958 (unfocusZipperList!1487 lt!2330796))))))

(declare-fun b!6120592 () Bool)

(declare-fun e!3731390 () Bool)

(declare-fun lt!2330956 () Regex!16066)

(assert (=> b!6120592 (= e!3731390 (isUnion!923 lt!2330956))))

(declare-fun b!6120593 () Bool)

(declare-fun e!3731392 () Regex!16066)

(assert (=> b!6120593 (= e!3731392 EmptyLang!16066)))

(declare-fun b!6120594 () Bool)

(assert (=> b!6120594 (= e!3731390 (= lt!2330956 (head!12653 (unfocusZipperList!1487 lt!2330796))))))

(declare-fun e!3731389 () Bool)

(assert (=> d!1917781 e!3731389))

(declare-fun res!2537738 () Bool)

(assert (=> d!1917781 (=> (not res!2537738) (not e!3731389))))

(assert (=> d!1917781 (= res!2537738 (validRegex!7802 lt!2330956))))

(assert (=> d!1917781 (= lt!2330956 e!3731391)))

(declare-fun c!1099953 () Bool)

(assert (=> d!1917781 (= c!1099953 e!3731393)))

(declare-fun res!2537737 () Bool)

(assert (=> d!1917781 (=> (not res!2537737) (not e!3731393))))

(assert (=> d!1917781 (= res!2537737 (is-Cons!64373 (unfocusZipperList!1487 lt!2330796)))))

(assert (=> d!1917781 (forall!15187 (unfocusZipperList!1487 lt!2330796) lambda!333435)))

(assert (=> d!1917781 (= (generalisedUnion!1910 (unfocusZipperList!1487 lt!2330796)) lt!2330956)))

(declare-fun b!6120595 () Bool)

(declare-fun e!3731388 () Bool)

(assert (=> b!6120595 (= e!3731389 e!3731388)))

(declare-fun c!1099950 () Bool)

(assert (=> b!6120595 (= c!1099950 (isEmpty!36307 (unfocusZipperList!1487 lt!2330796)))))

(declare-fun b!6120596 () Bool)

(assert (=> b!6120596 (= e!3731391 e!3731392)))

(declare-fun c!1099952 () Bool)

(assert (=> b!6120596 (= c!1099952 (is-Cons!64373 (unfocusZipperList!1487 lt!2330796)))))

(declare-fun b!6120597 () Bool)

(assert (=> b!6120597 (= e!3731388 e!3731390)))

(declare-fun c!1099951 () Bool)

(assert (=> b!6120597 (= c!1099951 (isEmpty!36307 (tail!11738 (unfocusZipperList!1487 lt!2330796))))))

(declare-fun b!6120598 () Bool)

(assert (=> b!6120598 (= e!3731388 (isEmptyLang!1493 lt!2330956))))

(declare-fun b!6120599 () Bool)

(assert (=> b!6120599 (= e!3731392 (Union!16066 (h!70821 (unfocusZipperList!1487 lt!2330796)) (generalisedUnion!1910 (t!377958 (unfocusZipperList!1487 lt!2330796)))))))

(assert (= (and d!1917781 res!2537737) b!6120591))

(assert (= (and d!1917781 c!1099953) b!6120590))

(assert (= (and d!1917781 (not c!1099953)) b!6120596))

(assert (= (and b!6120596 c!1099952) b!6120599))

(assert (= (and b!6120596 (not c!1099952)) b!6120593))

(assert (= (and d!1917781 res!2537738) b!6120595))

(assert (= (and b!6120595 c!1099950) b!6120598))

(assert (= (and b!6120595 (not c!1099950)) b!6120597))

(assert (= (and b!6120597 c!1099951) b!6120594))

(assert (= (and b!6120597 (not c!1099951)) b!6120592))

(declare-fun m!6966914 () Bool)

(assert (=> d!1917781 m!6966914))

(assert (=> d!1917781 m!6966220))

(declare-fun m!6966916 () Bool)

(assert (=> d!1917781 m!6966916))

(declare-fun m!6966918 () Bool)

(assert (=> b!6120591 m!6966918))

(declare-fun m!6966920 () Bool)

(assert (=> b!6120599 m!6966920))

(declare-fun m!6966922 () Bool)

(assert (=> b!6120592 m!6966922))

(assert (=> b!6120594 m!6966220))

(declare-fun m!6966924 () Bool)

(assert (=> b!6120594 m!6966924))

(declare-fun m!6966926 () Bool)

(assert (=> b!6120598 m!6966926))

(assert (=> b!6120595 m!6966220))

(declare-fun m!6966928 () Bool)

(assert (=> b!6120595 m!6966928))

(assert (=> b!6120597 m!6966220))

(declare-fun m!6966930 () Bool)

(assert (=> b!6120597 m!6966930))

(assert (=> b!6120597 m!6966930))

(declare-fun m!6966932 () Bool)

(assert (=> b!6120597 m!6966932))

(assert (=> d!1917481 d!1917781))

(declare-fun bs!1518635 () Bool)

(declare-fun d!1917785 () Bool)

(assert (= bs!1518635 (and d!1917785 d!1917461)))

(declare-fun lambda!333437 () Int)

(assert (=> bs!1518635 (= lambda!333437 lambda!333367)))

(declare-fun bs!1518636 () Bool)

(assert (= bs!1518636 (and d!1917785 d!1917467)))

(assert (=> bs!1518636 (= lambda!333437 lambda!333372)))

(declare-fun bs!1518637 () Bool)

(assert (= bs!1518637 (and d!1917785 d!1917713)))

(assert (=> bs!1518637 (= lambda!333437 lambda!333424)))

(declare-fun bs!1518638 () Bool)

(assert (= bs!1518638 (and d!1917785 d!1917559)))

(assert (=> bs!1518638 (= lambda!333437 lambda!333410)))

(declare-fun bs!1518639 () Bool)

(assert (= bs!1518639 (and d!1917785 d!1917423)))

(assert (=> bs!1518639 (= lambda!333437 lambda!333357)))

(declare-fun bs!1518640 () Bool)

(assert (= bs!1518640 (and d!1917785 d!1917717)))

(assert (=> bs!1518640 (= lambda!333437 lambda!333425)))

(declare-fun bs!1518641 () Bool)

(assert (= bs!1518641 (and d!1917785 d!1917781)))

(assert (=> bs!1518641 (= lambda!333437 lambda!333435)))

(declare-fun bs!1518643 () Bool)

(assert (= bs!1518643 (and d!1917785 d!1917731)))

(assert (=> bs!1518643 (= lambda!333437 lambda!333427)))

(declare-fun bs!1518645 () Bool)

(assert (= bs!1518645 (and d!1917785 d!1917463)))

(assert (=> bs!1518645 (= lambda!333437 lambda!333370)))

(declare-fun bs!1518647 () Bool)

(assert (= bs!1518647 (and d!1917785 d!1917759)))

(assert (=> bs!1518647 (= lambda!333437 lambda!333430)))

(declare-fun bs!1518649 () Bool)

(assert (= bs!1518649 (and d!1917785 d!1917421)))

(assert (=> bs!1518649 (= lambda!333437 lambda!333354)))

(declare-fun bs!1518651 () Bool)

(assert (= bs!1518651 (and d!1917785 d!1917479)))

(assert (=> bs!1518651 (= lambda!333437 lambda!333374)))

(declare-fun lt!2330958 () List!64497)

(assert (=> d!1917785 (forall!15187 lt!2330958 lambda!333437)))

(declare-fun e!3731400 () List!64497)

(assert (=> d!1917785 (= lt!2330958 e!3731400)))

(declare-fun c!1099958 () Bool)

(assert (=> d!1917785 (= c!1099958 (is-Cons!64374 lt!2330796))))

(assert (=> d!1917785 (= (unfocusZipperList!1487 lt!2330796) lt!2330958)))

(declare-fun b!6120610 () Bool)

(assert (=> b!6120610 (= e!3731400 (Cons!64373 (generalisedConcat!1663 (exprs!5950 (h!70822 lt!2330796))) (unfocusZipperList!1487 (t!377959 lt!2330796))))))

(declare-fun b!6120611 () Bool)

(assert (=> b!6120611 (= e!3731400 Nil!64373)))

(assert (= (and d!1917785 c!1099958) b!6120610))

(assert (= (and d!1917785 (not c!1099958)) b!6120611))

(declare-fun m!6966954 () Bool)

(assert (=> d!1917785 m!6966954))

(declare-fun m!6966956 () Bool)

(assert (=> b!6120610 m!6966956))

(declare-fun m!6966958 () Bool)

(assert (=> b!6120610 m!6966958))

(assert (=> d!1917481 d!1917785))

(assert (=> b!6119988 d!1917583))

(assert (=> b!6119988 d!1917585))

(declare-fun bs!1518661 () Bool)

(declare-fun b!6120619 () Bool)

(assert (= bs!1518661 (and b!6120619 d!1917501)))

(declare-fun lambda!333440 () Int)

(assert (=> bs!1518661 (not (= lambda!333440 lambda!333391))))

(declare-fun bs!1518663 () Bool)

(assert (= bs!1518663 (and b!6120619 d!1917657)))

(assert (=> bs!1518663 (not (= lambda!333440 lambda!333420))))

(declare-fun bs!1518664 () Bool)

(assert (= bs!1518664 (and b!6120619 d!1917495)))

(assert (=> bs!1518664 (not (= lambda!333440 lambda!333384))))

(declare-fun bs!1518665 () Bool)

(assert (= bs!1518665 (and b!6120619 b!6120266)))

(assert (=> bs!1518665 (not (= lambda!333440 lambda!333417))))

(declare-fun bs!1518666 () Bool)

(assert (= bs!1518666 (and b!6120619 b!6119299)))

(assert (=> bs!1518666 (not (= lambda!333440 lambda!333338))))

(assert (=> bs!1518666 (not (= lambda!333440 lambda!333339))))

(assert (=> bs!1518661 (not (= lambda!333440 lambda!333393))))

(declare-fun bs!1518667 () Bool)

(assert (= bs!1518667 (and b!6120619 b!6119933)))

(assert (=> bs!1518667 (= (and (= (reg!16395 (regTwo!32645 r!7292)) (reg!16395 r!7292)) (= (regTwo!32645 r!7292) r!7292)) (= lambda!333440 lambda!333399))))

(declare-fun bs!1518668 () Bool)

(assert (= bs!1518668 (and b!6120619 b!6120267)))

(assert (=> bs!1518668 (= (and (= (reg!16395 (regTwo!32645 r!7292)) (reg!16395 (regOne!32645 r!7292))) (= (regTwo!32645 r!7292) (regOne!32645 r!7292))) (= lambda!333440 lambda!333416))))

(declare-fun bs!1518669 () Bool)

(assert (= bs!1518669 (and b!6120619 b!6119932)))

(assert (=> bs!1518669 (not (= lambda!333440 lambda!333400))))

(assert (=> b!6120619 true))

(assert (=> b!6120619 true))

(declare-fun bs!1518670 () Bool)

(declare-fun b!6120618 () Bool)

(assert (= bs!1518670 (and b!6120618 d!1917501)))

(declare-fun lambda!333441 () Int)

(assert (=> bs!1518670 (not (= lambda!333441 lambda!333391))))

(declare-fun bs!1518671 () Bool)

(assert (= bs!1518671 (and b!6120618 d!1917657)))

(assert (=> bs!1518671 (not (= lambda!333441 lambda!333420))))

(declare-fun bs!1518672 () Bool)

(assert (= bs!1518672 (and b!6120618 d!1917495)))

(assert (=> bs!1518672 (not (= lambda!333441 lambda!333384))))

(declare-fun bs!1518674 () Bool)

(assert (= bs!1518674 (and b!6120618 b!6120266)))

(assert (=> bs!1518674 (= (and (= (regOne!32644 (regTwo!32645 r!7292)) (regOne!32644 (regOne!32645 r!7292))) (= (regTwo!32644 (regTwo!32645 r!7292)) (regTwo!32644 (regOne!32645 r!7292)))) (= lambda!333441 lambda!333417))))

(declare-fun bs!1518675 () Bool)

(assert (= bs!1518675 (and b!6120618 b!6119299)))

(assert (=> bs!1518675 (not (= lambda!333441 lambda!333338))))

(declare-fun bs!1518676 () Bool)

(assert (= bs!1518676 (and b!6120618 b!6120619)))

(assert (=> bs!1518676 (not (= lambda!333441 lambda!333440))))

(assert (=> bs!1518675 (= (and (= (regOne!32644 (regTwo!32645 r!7292)) (regOne!32644 r!7292)) (= (regTwo!32644 (regTwo!32645 r!7292)) (regTwo!32644 r!7292))) (= lambda!333441 lambda!333339))))

(assert (=> bs!1518670 (= (and (= (regOne!32644 (regTwo!32645 r!7292)) (regOne!32644 r!7292)) (= (regTwo!32644 (regTwo!32645 r!7292)) (regTwo!32644 r!7292))) (= lambda!333441 lambda!333393))))

(declare-fun bs!1518677 () Bool)

(assert (= bs!1518677 (and b!6120618 b!6119933)))

(assert (=> bs!1518677 (not (= lambda!333441 lambda!333399))))

(declare-fun bs!1518678 () Bool)

(assert (= bs!1518678 (and b!6120618 b!6120267)))

(assert (=> bs!1518678 (not (= lambda!333441 lambda!333416))))

(declare-fun bs!1518679 () Bool)

(assert (= bs!1518679 (and b!6120618 b!6119932)))

(assert (=> bs!1518679 (= (and (= (regOne!32644 (regTwo!32645 r!7292)) (regOne!32644 r!7292)) (= (regTwo!32644 (regTwo!32645 r!7292)) (regTwo!32644 r!7292))) (= lambda!333441 lambda!333400))))

(assert (=> b!6120618 true))

(assert (=> b!6120618 true))

(declare-fun b!6120614 () Bool)

(declare-fun res!2537742 () Bool)

(declare-fun e!3731403 () Bool)

(assert (=> b!6120614 (=> res!2537742 e!3731403)))

(declare-fun call!506986 () Bool)

(assert (=> b!6120614 (= res!2537742 call!506986)))

(declare-fun e!3731402 () Bool)

(assert (=> b!6120614 (= e!3731402 e!3731403)))

(declare-fun b!6120615 () Bool)

(declare-fun e!3731404 () Bool)

(assert (=> b!6120615 (= e!3731404 call!506986)))

(declare-fun b!6120616 () Bool)

(declare-fun e!3731408 () Bool)

(assert (=> b!6120616 (= e!3731404 e!3731408)))

(declare-fun res!2537741 () Bool)

(assert (=> b!6120616 (= res!2537741 (not (is-EmptyLang!16066 (regTwo!32645 r!7292))))))

(assert (=> b!6120616 (=> (not res!2537741) (not e!3731408))))

(declare-fun c!1099963 () Bool)

(declare-fun bm!506980 () Bool)

(declare-fun call!506985 () Bool)

(assert (=> bm!506980 (= call!506985 (Exists!3136 (ite c!1099963 lambda!333440 lambda!333441)))))

(declare-fun b!6120617 () Bool)

(declare-fun c!1099961 () Bool)

(assert (=> b!6120617 (= c!1099961 (is-Union!16066 (regTwo!32645 r!7292)))))

(declare-fun e!3731407 () Bool)

(declare-fun e!3731406 () Bool)

(assert (=> b!6120617 (= e!3731407 e!3731406)))

(assert (=> b!6120618 (= e!3731402 call!506985)))

(assert (=> b!6120619 (= e!3731403 call!506985)))

(declare-fun bm!506981 () Bool)

(assert (=> bm!506981 (= call!506986 (isEmpty!36310 s!2326))))

(declare-fun d!1917789 () Bool)

(declare-fun c!1099960 () Bool)

(assert (=> d!1917789 (= c!1099960 (is-EmptyExpr!16066 (regTwo!32645 r!7292)))))

(assert (=> d!1917789 (= (matchRSpec!3167 (regTwo!32645 r!7292) s!2326) e!3731404)))

(declare-fun b!6120620 () Bool)

(declare-fun c!1099962 () Bool)

(assert (=> b!6120620 (= c!1099962 (is-ElementMatch!16066 (regTwo!32645 r!7292)))))

(assert (=> b!6120620 (= e!3731408 e!3731407)))

(declare-fun b!6120621 () Bool)

(declare-fun e!3731405 () Bool)

(assert (=> b!6120621 (= e!3731405 (matchRSpec!3167 (regTwo!32645 (regTwo!32645 r!7292)) s!2326))))

(declare-fun b!6120622 () Bool)

(assert (=> b!6120622 (= e!3731406 e!3731405)))

(declare-fun res!2537743 () Bool)

(assert (=> b!6120622 (= res!2537743 (matchRSpec!3167 (regOne!32645 (regTwo!32645 r!7292)) s!2326))))

(assert (=> b!6120622 (=> res!2537743 e!3731405)))

(declare-fun b!6120623 () Bool)

(assert (=> b!6120623 (= e!3731406 e!3731402)))

(assert (=> b!6120623 (= c!1099963 (is-Star!16066 (regTwo!32645 r!7292)))))

(declare-fun b!6120624 () Bool)

(assert (=> b!6120624 (= e!3731407 (= s!2326 (Cons!64375 (c!1099622 (regTwo!32645 r!7292)) Nil!64375)))))

(assert (= (and d!1917789 c!1099960) b!6120615))

(assert (= (and d!1917789 (not c!1099960)) b!6120616))

(assert (= (and b!6120616 res!2537741) b!6120620))

(assert (= (and b!6120620 c!1099962) b!6120624))

(assert (= (and b!6120620 (not c!1099962)) b!6120617))

(assert (= (and b!6120617 c!1099961) b!6120622))

(assert (= (and b!6120617 (not c!1099961)) b!6120623))

(assert (= (and b!6120622 (not res!2537743)) b!6120621))

(assert (= (and b!6120623 c!1099963) b!6120614))

(assert (= (and b!6120623 (not c!1099963)) b!6120618))

(assert (= (and b!6120614 (not res!2537742)) b!6120619))

(assert (= (or b!6120619 b!6120618) bm!506980))

(assert (= (or b!6120615 b!6120614) bm!506981))

(declare-fun m!6966994 () Bool)

(assert (=> bm!506980 m!6966994))

(assert (=> bm!506981 m!6966390))

(declare-fun m!6966998 () Bool)

(assert (=> b!6120621 m!6966998))

(declare-fun m!6967000 () Bool)

(assert (=> b!6120622 m!6967000))

(assert (=> b!6119935 d!1917789))

(assert (=> d!1917531 d!1917569))

(assert (=> d!1917531 d!1917541))

(assert (=> b!6119541 d!1917431))

(declare-fun b!6120652 () Bool)

(declare-fun e!3731423 () Bool)

(declare-fun lt!2330962 () List!64499)

(assert (=> b!6120652 (= e!3731423 (or (not (= (_2!36348 (get!22201 lt!2330887)) Nil!64375)) (= lt!2330962 (_1!36348 (get!22201 lt!2330887)))))))

(declare-fun b!6120649 () Bool)

(declare-fun e!3731422 () List!64499)

(assert (=> b!6120649 (= e!3731422 (_2!36348 (get!22201 lt!2330887)))))

(declare-fun d!1917797 () Bool)

(assert (=> d!1917797 e!3731423))

(declare-fun res!2537754 () Bool)

(assert (=> d!1917797 (=> (not res!2537754) (not e!3731423))))

(assert (=> d!1917797 (= res!2537754 (= (content!11959 lt!2330962) (set.union (content!11959 (_1!36348 (get!22201 lt!2330887))) (content!11959 (_2!36348 (get!22201 lt!2330887))))))))

(assert (=> d!1917797 (= lt!2330962 e!3731422)))

(declare-fun c!1099971 () Bool)

(assert (=> d!1917797 (= c!1099971 (is-Nil!64375 (_1!36348 (get!22201 lt!2330887))))))

(assert (=> d!1917797 (= (++!14152 (_1!36348 (get!22201 lt!2330887)) (_2!36348 (get!22201 lt!2330887))) lt!2330962)))

(declare-fun b!6120651 () Bool)

(declare-fun res!2537755 () Bool)

(assert (=> b!6120651 (=> (not res!2537755) (not e!3731423))))

(assert (=> b!6120651 (= res!2537755 (= (size!40210 lt!2330962) (+ (size!40210 (_1!36348 (get!22201 lt!2330887))) (size!40210 (_2!36348 (get!22201 lt!2330887))))))))

(declare-fun b!6120650 () Bool)

(assert (=> b!6120650 (= e!3731422 (Cons!64375 (h!70823 (_1!36348 (get!22201 lt!2330887))) (++!14152 (t!377960 (_1!36348 (get!22201 lt!2330887))) (_2!36348 (get!22201 lt!2330887)))))))

(assert (= (and d!1917797 c!1099971) b!6120649))

(assert (= (and d!1917797 (not c!1099971)) b!6120650))

(assert (= (and d!1917797 res!2537754) b!6120651))

(assert (= (and b!6120651 res!2537755) b!6120652))

(declare-fun m!6967004 () Bool)

(assert (=> d!1917797 m!6967004))

(declare-fun m!6967006 () Bool)

(assert (=> d!1917797 m!6967006))

(declare-fun m!6967008 () Bool)

(assert (=> d!1917797 m!6967008))

(declare-fun m!6967010 () Bool)

(assert (=> b!6120651 m!6967010))

(declare-fun m!6967012 () Bool)

(assert (=> b!6120651 m!6967012))

(declare-fun m!6967014 () Bool)

(assert (=> b!6120651 m!6967014))

(declare-fun m!6967016 () Bool)

(assert (=> b!6120650 m!6967016))

(assert (=> b!6119774 d!1917797))

(assert (=> b!6119774 d!1917649))

(declare-fun d!1917803 () Bool)

(declare-fun res!2537756 () Bool)

(declare-fun e!3731424 () Bool)

(assert (=> d!1917803 (=> res!2537756 e!3731424)))

(assert (=> d!1917803 (= res!2537756 (is-Nil!64374 lt!2330847))))

(assert (=> d!1917803 (= (noDuplicate!1913 lt!2330847) e!3731424)))

(declare-fun b!6120653 () Bool)

(declare-fun e!3731425 () Bool)

(assert (=> b!6120653 (= e!3731424 e!3731425)))

(declare-fun res!2537757 () Bool)

(assert (=> b!6120653 (=> (not res!2537757) (not e!3731425))))

(assert (=> b!6120653 (= res!2537757 (not (contains!20028 (t!377959 lt!2330847) (h!70822 lt!2330847))))))

(declare-fun b!6120654 () Bool)

(assert (=> b!6120654 (= e!3731425 (noDuplicate!1913 (t!377959 lt!2330847)))))

(assert (= (and d!1917803 (not res!2537756)) b!6120653))

(assert (= (and b!6120653 res!2537757) b!6120654))

(declare-fun m!6967018 () Bool)

(assert (=> b!6120653 m!6967018))

(declare-fun m!6967020 () Bool)

(assert (=> b!6120654 m!6967020))

(assert (=> d!1917417 d!1917803))

(declare-fun d!1917805 () Bool)

(declare-fun e!3731426 () Bool)

(assert (=> d!1917805 e!3731426))

(declare-fun res!2537758 () Bool)

(assert (=> d!1917805 (=> (not res!2537758) (not e!3731426))))

(declare-fun res!2537759 () List!64498)

(assert (=> d!1917805 (= res!2537758 (noDuplicate!1913 res!2537759))))

(declare-fun e!3731428 () Bool)

(assert (=> d!1917805 e!3731428))

(assert (=> d!1917805 (= (choose!45469 lt!2330794) res!2537759)))

(declare-fun b!6120656 () Bool)

(declare-fun e!3731427 () Bool)

(declare-fun tp!1709945 () Bool)

(assert (=> b!6120656 (= e!3731427 tp!1709945)))

(declare-fun tp!1709946 () Bool)

(declare-fun b!6120655 () Bool)

(assert (=> b!6120655 (= e!3731428 (and (inv!83413 (h!70822 res!2537759)) e!3731427 tp!1709946))))

(declare-fun b!6120657 () Bool)

(assert (=> b!6120657 (= e!3731426 (= (content!11956 res!2537759) lt!2330794))))

(assert (= b!6120655 b!6120656))

(assert (= (and d!1917805 (is-Cons!64374 res!2537759)) b!6120655))

(assert (= (and d!1917805 res!2537758) b!6120657))

(declare-fun m!6967022 () Bool)

(assert (=> d!1917805 m!6967022))

(declare-fun m!6967024 () Bool)

(assert (=> b!6120655 m!6967024))

(declare-fun m!6967026 () Bool)

(assert (=> b!6120657 m!6967026))

(assert (=> d!1917417 d!1917805))

(declare-fun d!1917807 () Bool)

(assert (=> d!1917807 (= (nullable!6059 (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343))))) (nullableFct!2023 (regOne!32644 (h!70821 (exprs!5950 (h!70822 zl!343))))))))

(declare-fun bs!1518680 () Bool)

(assert (= bs!1518680 d!1917807))

(declare-fun m!6967028 () Bool)

(assert (=> bs!1518680 m!6967028))

(assert (=> b!6119538 d!1917807))

(assert (=> bm!506873 d!1917569))

(declare-fun d!1917809 () Bool)

(assert (=> d!1917809 (= (nullable!6059 (reg!16395 lt!2330788)) (nullableFct!2023 (reg!16395 lt!2330788)))))

(declare-fun bs!1518681 () Bool)

(assert (= bs!1518681 d!1917809))

(declare-fun m!6967030 () Bool)

(assert (=> bs!1518681 m!6967030))

(assert (=> b!6119591 d!1917809))

(declare-fun d!1917811 () Bool)

(assert (=> d!1917811 (= (Exists!3136 lambda!333391) (choose!45476 lambda!333391))))

(declare-fun bs!1518682 () Bool)

(assert (= bs!1518682 d!1917811))

(declare-fun m!6967032 () Bool)

(assert (=> bs!1518682 m!6967032))

(assert (=> d!1917501 d!1917811))

(declare-fun d!1917813 () Bool)

(assert (=> d!1917813 (= (Exists!3136 lambda!333393) (choose!45476 lambda!333393))))

(declare-fun bs!1518683 () Bool)

(assert (= bs!1518683 d!1917813))

(declare-fun m!6967034 () Bool)

(assert (=> bs!1518683 m!6967034))

(assert (=> d!1917501 d!1917813))

(declare-fun bs!1518686 () Bool)

(declare-fun d!1917815 () Bool)

(assert (= bs!1518686 (and d!1917815 d!1917501)))

(declare-fun lambda!333449 () Int)

(assert (=> bs!1518686 (= lambda!333449 lambda!333391)))

(declare-fun bs!1518687 () Bool)

(assert (= bs!1518687 (and d!1917815 d!1917657)))

(assert (=> bs!1518687 (= lambda!333449 lambda!333420)))

(declare-fun bs!1518688 () Bool)

(assert (= bs!1518688 (and d!1917815 d!1917495)))

(assert (=> bs!1518688 (= lambda!333449 lambda!333384)))

(declare-fun bs!1518689 () Bool)

(assert (= bs!1518689 (and d!1917815 b!6120266)))

(assert (=> bs!1518689 (not (= lambda!333449 lambda!333417))))

(declare-fun bs!1518690 () Bool)

(assert (= bs!1518690 (and d!1917815 b!6119299)))

(assert (=> bs!1518690 (= lambda!333449 lambda!333338)))

(declare-fun bs!1518691 () Bool)

(assert (= bs!1518691 (and d!1917815 b!6120619)))

(assert (=> bs!1518691 (not (= lambda!333449 lambda!333440))))

(declare-fun bs!1518692 () Bool)

(assert (= bs!1518692 (and d!1917815 b!6120618)))

(assert (=> bs!1518692 (not (= lambda!333449 lambda!333441))))

(assert (=> bs!1518690 (not (= lambda!333449 lambda!333339))))

(assert (=> bs!1518686 (not (= lambda!333449 lambda!333393))))

(declare-fun bs!1518693 () Bool)

(assert (= bs!1518693 (and d!1917815 b!6119933)))

(assert (=> bs!1518693 (not (= lambda!333449 lambda!333399))))

(declare-fun bs!1518694 () Bool)

(assert (= bs!1518694 (and d!1917815 b!6120267)))

(assert (=> bs!1518694 (not (= lambda!333449 lambda!333416))))

(declare-fun bs!1518695 () Bool)

(assert (= bs!1518695 (and d!1917815 b!6119932)))

(assert (=> bs!1518695 (not (= lambda!333449 lambda!333400))))

(assert (=> d!1917815 true))

(assert (=> d!1917815 true))

(assert (=> d!1917815 true))

(declare-fun lambda!333450 () Int)

(assert (=> bs!1518686 (not (= lambda!333450 lambda!333391))))

(assert (=> bs!1518687 (not (= lambda!333450 lambda!333420))))

(declare-fun bs!1518696 () Bool)

(assert (= bs!1518696 d!1917815))

(assert (=> bs!1518696 (not (= lambda!333450 lambda!333449))))

(assert (=> bs!1518688 (not (= lambda!333450 lambda!333384))))

(assert (=> bs!1518689 (= (and (= (regOne!32644 r!7292) (regOne!32644 (regOne!32645 r!7292))) (= (regTwo!32644 r!7292) (regTwo!32644 (regOne!32645 r!7292)))) (= lambda!333450 lambda!333417))))

(assert (=> bs!1518690 (not (= lambda!333450 lambda!333338))))

(assert (=> bs!1518691 (not (= lambda!333450 lambda!333440))))

(assert (=> bs!1518692 (= (and (= (regOne!32644 r!7292) (regOne!32644 (regTwo!32645 r!7292))) (= (regTwo!32644 r!7292) (regTwo!32644 (regTwo!32645 r!7292)))) (= lambda!333450 lambda!333441))))

(assert (=> bs!1518690 (= lambda!333450 lambda!333339)))

(assert (=> bs!1518686 (= lambda!333450 lambda!333393)))

(assert (=> bs!1518693 (not (= lambda!333450 lambda!333399))))

(assert (=> bs!1518694 (not (= lambda!333450 lambda!333416))))

(assert (=> bs!1518695 (= lambda!333450 lambda!333400)))

(assert (=> d!1917815 true))

(assert (=> d!1917815 true))

(assert (=> d!1917815 true))

(assert (=> d!1917815 (= (Exists!3136 lambda!333449) (Exists!3136 lambda!333450))))

(assert (=> d!1917815 true))

(declare-fun _$90!1803 () Unit!157419)

(assert (=> d!1917815 (= (choose!45478 (regOne!32644 r!7292) (regTwo!32644 r!7292) s!2326) _$90!1803)))

(declare-fun m!6967082 () Bool)

(assert (=> bs!1518696 m!6967082))

(declare-fun m!6967084 () Bool)

(assert (=> bs!1518696 m!6967084))

(assert (=> d!1917501 d!1917815))

(assert (=> d!1917501 d!1917655))

(declare-fun b!6120695 () Bool)

(declare-fun e!3731445 () Bool)

(declare-fun tp!1709949 () Bool)

(declare-fun tp!1709947 () Bool)

(assert (=> b!6120695 (= e!3731445 (and tp!1709949 tp!1709947))))

(declare-fun b!6120694 () Bool)

(declare-fun tp!1709948 () Bool)

(assert (=> b!6120694 (= e!3731445 tp!1709948)))

(declare-fun b!6120692 () Bool)

(assert (=> b!6120692 (= e!3731445 tp_is_empty!41385)))

(assert (=> b!6120071 (= tp!1709860 e!3731445)))

(declare-fun b!6120693 () Bool)

(declare-fun tp!1709951 () Bool)

(declare-fun tp!1709950 () Bool)

(assert (=> b!6120693 (= e!3731445 (and tp!1709951 tp!1709950))))

(assert (= (and b!6120071 (is-ElementMatch!16066 (reg!16395 (regOne!32644 r!7292)))) b!6120692))

(assert (= (and b!6120071 (is-Concat!24911 (reg!16395 (regOne!32644 r!7292)))) b!6120693))

(assert (= (and b!6120071 (is-Star!16066 (reg!16395 (regOne!32644 r!7292)))) b!6120694))

(assert (= (and b!6120071 (is-Union!16066 (reg!16395 (regOne!32644 r!7292)))) b!6120695))

(declare-fun b!6120699 () Bool)

(declare-fun e!3731446 () Bool)

(declare-fun tp!1709954 () Bool)

(declare-fun tp!1709952 () Bool)

(assert (=> b!6120699 (= e!3731446 (and tp!1709954 tp!1709952))))

(declare-fun b!6120698 () Bool)

(declare-fun tp!1709953 () Bool)

(assert (=> b!6120698 (= e!3731446 tp!1709953)))

(declare-fun b!6120696 () Bool)

(assert (=> b!6120696 (= e!3731446 tp_is_empty!41385)))

(assert (=> b!6120023 (= tp!1709815 e!3731446)))

(declare-fun b!6120697 () Bool)

(declare-fun tp!1709956 () Bool)

(declare-fun tp!1709955 () Bool)

(assert (=> b!6120697 (= e!3731446 (and tp!1709956 tp!1709955))))

(assert (= (and b!6120023 (is-ElementMatch!16066 (h!70821 (exprs!5950 (h!70822 zl!343))))) b!6120696))

(assert (= (and b!6120023 (is-Concat!24911 (h!70821 (exprs!5950 (h!70822 zl!343))))) b!6120697))

(assert (= (and b!6120023 (is-Star!16066 (h!70821 (exprs!5950 (h!70822 zl!343))))) b!6120698))

(assert (= (and b!6120023 (is-Union!16066 (h!70821 (exprs!5950 (h!70822 zl!343))))) b!6120699))

(declare-fun b!6120700 () Bool)

(declare-fun e!3731447 () Bool)

(declare-fun tp!1709957 () Bool)

(declare-fun tp!1709958 () Bool)

(assert (=> b!6120700 (= e!3731447 (and tp!1709957 tp!1709958))))

(assert (=> b!6120023 (= tp!1709816 e!3731447)))

(assert (= (and b!6120023 (is-Cons!64373 (t!377958 (exprs!5950 (h!70822 zl!343))))) b!6120700))

(declare-fun b!6120704 () Bool)

(declare-fun e!3731448 () Bool)

(declare-fun tp!1709961 () Bool)

(declare-fun tp!1709959 () Bool)

(assert (=> b!6120704 (= e!3731448 (and tp!1709961 tp!1709959))))

(declare-fun b!6120703 () Bool)

(declare-fun tp!1709960 () Bool)

(assert (=> b!6120703 (= e!3731448 tp!1709960)))

(declare-fun b!6120701 () Bool)

(assert (=> b!6120701 (= e!3731448 tp_is_empty!41385)))

(assert (=> b!6120070 (= tp!1709863 e!3731448)))

(declare-fun b!6120702 () Bool)

(declare-fun tp!1709963 () Bool)

(declare-fun tp!1709962 () Bool)

(assert (=> b!6120702 (= e!3731448 (and tp!1709963 tp!1709962))))

(assert (= (and b!6120070 (is-ElementMatch!16066 (regOne!32644 (regOne!32644 r!7292)))) b!6120701))

(assert (= (and b!6120070 (is-Concat!24911 (regOne!32644 (regOne!32644 r!7292)))) b!6120702))

(assert (= (and b!6120070 (is-Star!16066 (regOne!32644 (regOne!32644 r!7292)))) b!6120703))

(assert (= (and b!6120070 (is-Union!16066 (regOne!32644 (regOne!32644 r!7292)))) b!6120704))

(declare-fun b!6120708 () Bool)

(declare-fun e!3731449 () Bool)

(declare-fun tp!1709966 () Bool)

(declare-fun tp!1709964 () Bool)

(assert (=> b!6120708 (= e!3731449 (and tp!1709966 tp!1709964))))

(declare-fun b!6120707 () Bool)

(declare-fun tp!1709965 () Bool)

(assert (=> b!6120707 (= e!3731449 tp!1709965)))

(declare-fun b!6120705 () Bool)

(assert (=> b!6120705 (= e!3731449 tp_is_empty!41385)))

(assert (=> b!6120070 (= tp!1709862 e!3731449)))

(declare-fun b!6120706 () Bool)

(declare-fun tp!1709968 () Bool)

(declare-fun tp!1709967 () Bool)

(assert (=> b!6120706 (= e!3731449 (and tp!1709968 tp!1709967))))

(assert (= (and b!6120070 (is-ElementMatch!16066 (regTwo!32644 (regOne!32644 r!7292)))) b!6120705))

(assert (= (and b!6120070 (is-Concat!24911 (regTwo!32644 (regOne!32644 r!7292)))) b!6120706))

(assert (= (and b!6120070 (is-Star!16066 (regTwo!32644 (regOne!32644 r!7292)))) b!6120707))

(assert (= (and b!6120070 (is-Union!16066 (regTwo!32644 (regOne!32644 r!7292)))) b!6120708))

(declare-fun b!6120715 () Bool)

(declare-fun e!3731455 () Bool)

(declare-fun tp!1709971 () Bool)

(declare-fun tp!1709969 () Bool)

(assert (=> b!6120715 (= e!3731455 (and tp!1709971 tp!1709969))))

(declare-fun b!6120714 () Bool)

(declare-fun tp!1709970 () Bool)

(assert (=> b!6120714 (= e!3731455 tp!1709970)))

(declare-fun b!6120710 () Bool)

(assert (=> b!6120710 (= e!3731455 tp_is_empty!41385)))

(assert (=> b!6120046 (= tp!1709837 e!3731455)))

(declare-fun b!6120712 () Bool)

(declare-fun tp!1709973 () Bool)

(declare-fun tp!1709972 () Bool)

(assert (=> b!6120712 (= e!3731455 (and tp!1709973 tp!1709972))))

(assert (= (and b!6120046 (is-ElementMatch!16066 (regOne!32645 (regOne!32645 r!7292)))) b!6120710))

(assert (= (and b!6120046 (is-Concat!24911 (regOne!32645 (regOne!32645 r!7292)))) b!6120712))

(assert (= (and b!6120046 (is-Star!16066 (regOne!32645 (regOne!32645 r!7292)))) b!6120714))

(assert (= (and b!6120046 (is-Union!16066 (regOne!32645 (regOne!32645 r!7292)))) b!6120715))

(declare-fun b!6120725 () Bool)

(declare-fun e!3731456 () Bool)

(declare-fun tp!1709976 () Bool)

(declare-fun tp!1709974 () Bool)

(assert (=> b!6120725 (= e!3731456 (and tp!1709976 tp!1709974))))

(declare-fun b!6120724 () Bool)

(declare-fun tp!1709975 () Bool)

(assert (=> b!6120724 (= e!3731456 tp!1709975)))

(declare-fun b!6120722 () Bool)

(assert (=> b!6120722 (= e!3731456 tp_is_empty!41385)))

(assert (=> b!6120046 (= tp!1709835 e!3731456)))

(declare-fun b!6120723 () Bool)

(declare-fun tp!1709978 () Bool)

(declare-fun tp!1709977 () Bool)

(assert (=> b!6120723 (= e!3731456 (and tp!1709978 tp!1709977))))

(assert (= (and b!6120046 (is-ElementMatch!16066 (regTwo!32645 (regOne!32645 r!7292)))) b!6120722))

(assert (= (and b!6120046 (is-Concat!24911 (regTwo!32645 (regOne!32645 r!7292)))) b!6120723))

(assert (= (and b!6120046 (is-Star!16066 (regTwo!32645 (regOne!32645 r!7292)))) b!6120724))

(assert (= (and b!6120046 (is-Union!16066 (regTwo!32645 (regOne!32645 r!7292)))) b!6120725))

(declare-fun b!6120729 () Bool)

(declare-fun e!3731457 () Bool)

(declare-fun tp!1709981 () Bool)

(declare-fun tp!1709979 () Bool)

(assert (=> b!6120729 (= e!3731457 (and tp!1709981 tp!1709979))))

(declare-fun b!6120728 () Bool)

(declare-fun tp!1709980 () Bool)

(assert (=> b!6120728 (= e!3731457 tp!1709980)))

(declare-fun b!6120726 () Bool)

(assert (=> b!6120726 (= e!3731457 tp_is_empty!41385)))

(assert (=> b!6120050 (= tp!1709842 e!3731457)))

(declare-fun b!6120727 () Bool)

(declare-fun tp!1709983 () Bool)

(declare-fun tp!1709982 () Bool)

(assert (=> b!6120727 (= e!3731457 (and tp!1709983 tp!1709982))))

(assert (= (and b!6120050 (is-ElementMatch!16066 (regOne!32645 (regTwo!32645 r!7292)))) b!6120726))

(assert (= (and b!6120050 (is-Concat!24911 (regOne!32645 (regTwo!32645 r!7292)))) b!6120727))

(assert (= (and b!6120050 (is-Star!16066 (regOne!32645 (regTwo!32645 r!7292)))) b!6120728))

(assert (= (and b!6120050 (is-Union!16066 (regOne!32645 (regTwo!32645 r!7292)))) b!6120729))

(declare-fun b!6120733 () Bool)

(declare-fun e!3731458 () Bool)

(declare-fun tp!1709986 () Bool)

(declare-fun tp!1709984 () Bool)

(assert (=> b!6120733 (= e!3731458 (and tp!1709986 tp!1709984))))

(declare-fun b!6120732 () Bool)

(declare-fun tp!1709985 () Bool)

(assert (=> b!6120732 (= e!3731458 tp!1709985)))

(declare-fun b!6120730 () Bool)

(assert (=> b!6120730 (= e!3731458 tp_is_empty!41385)))

(assert (=> b!6120050 (= tp!1709840 e!3731458)))

(declare-fun b!6120731 () Bool)

(declare-fun tp!1709988 () Bool)

(declare-fun tp!1709987 () Bool)

(assert (=> b!6120731 (= e!3731458 (and tp!1709988 tp!1709987))))

(assert (= (and b!6120050 (is-ElementMatch!16066 (regTwo!32645 (regTwo!32645 r!7292)))) b!6120730))

(assert (= (and b!6120050 (is-Concat!24911 (regTwo!32645 (regTwo!32645 r!7292)))) b!6120731))

(assert (= (and b!6120050 (is-Star!16066 (regTwo!32645 (regTwo!32645 r!7292)))) b!6120732))

(assert (= (and b!6120050 (is-Union!16066 (regTwo!32645 (regTwo!32645 r!7292)))) b!6120733))

(declare-fun b!6120737 () Bool)

(declare-fun e!3731459 () Bool)

(declare-fun tp!1709991 () Bool)

(declare-fun tp!1709989 () Bool)

(assert (=> b!6120737 (= e!3731459 (and tp!1709991 tp!1709989))))

(declare-fun b!6120736 () Bool)

(declare-fun tp!1709990 () Bool)

(assert (=> b!6120736 (= e!3731459 tp!1709990)))

(declare-fun b!6120734 () Bool)

(assert (=> b!6120734 (= e!3731459 tp_is_empty!41385)))

(assert (=> b!6120049 (= tp!1709841 e!3731459)))

(declare-fun b!6120735 () Bool)

(declare-fun tp!1709993 () Bool)

(declare-fun tp!1709992 () Bool)

(assert (=> b!6120735 (= e!3731459 (and tp!1709993 tp!1709992))))

(assert (= (and b!6120049 (is-ElementMatch!16066 (reg!16395 (regTwo!32645 r!7292)))) b!6120734))

(assert (= (and b!6120049 (is-Concat!24911 (reg!16395 (regTwo!32645 r!7292)))) b!6120735))

(assert (= (and b!6120049 (is-Star!16066 (reg!16395 (regTwo!32645 r!7292)))) b!6120736))

(assert (= (and b!6120049 (is-Union!16066 (reg!16395 (regTwo!32645 r!7292)))) b!6120737))

(declare-fun b!6120741 () Bool)

(declare-fun e!3731460 () Bool)

(declare-fun tp!1709996 () Bool)

(declare-fun tp!1709994 () Bool)

(assert (=> b!6120741 (= e!3731460 (and tp!1709996 tp!1709994))))

(declare-fun b!6120740 () Bool)

(declare-fun tp!1709995 () Bool)

(assert (=> b!6120740 (= e!3731460 tp!1709995)))

(declare-fun b!6120738 () Bool)

(assert (=> b!6120738 (= e!3731460 tp_is_empty!41385)))

(assert (=> b!6120040 (= tp!1709834 e!3731460)))

(declare-fun b!6120739 () Bool)

(declare-fun tp!1709998 () Bool)

(declare-fun tp!1709997 () Bool)

(assert (=> b!6120739 (= e!3731460 (and tp!1709998 tp!1709997))))

(assert (= (and b!6120040 (is-ElementMatch!16066 (regOne!32644 (reg!16395 r!7292)))) b!6120738))

(assert (= (and b!6120040 (is-Concat!24911 (regOne!32644 (reg!16395 r!7292)))) b!6120739))

(assert (= (and b!6120040 (is-Star!16066 (regOne!32644 (reg!16395 r!7292)))) b!6120740))

(assert (= (and b!6120040 (is-Union!16066 (regOne!32644 (reg!16395 r!7292)))) b!6120741))

(declare-fun b!6120745 () Bool)

(declare-fun e!3731461 () Bool)

(declare-fun tp!1710001 () Bool)

(declare-fun tp!1709999 () Bool)

(assert (=> b!6120745 (= e!3731461 (and tp!1710001 tp!1709999))))

(declare-fun b!6120744 () Bool)

(declare-fun tp!1710000 () Bool)

(assert (=> b!6120744 (= e!3731461 tp!1710000)))

(declare-fun b!6120742 () Bool)

(assert (=> b!6120742 (= e!3731461 tp_is_empty!41385)))

(assert (=> b!6120040 (= tp!1709833 e!3731461)))

(declare-fun b!6120743 () Bool)

(declare-fun tp!1710003 () Bool)

(declare-fun tp!1710002 () Bool)

(assert (=> b!6120743 (= e!3731461 (and tp!1710003 tp!1710002))))

(assert (= (and b!6120040 (is-ElementMatch!16066 (regTwo!32644 (reg!16395 r!7292)))) b!6120742))

(assert (= (and b!6120040 (is-Concat!24911 (regTwo!32644 (reg!16395 r!7292)))) b!6120743))

(assert (= (and b!6120040 (is-Star!16066 (regTwo!32644 (reg!16395 r!7292)))) b!6120744))

(assert (= (and b!6120040 (is-Union!16066 (regTwo!32644 (reg!16395 r!7292)))) b!6120745))

(declare-fun b!6120749 () Bool)

(declare-fun e!3731462 () Bool)

(declare-fun tp!1710006 () Bool)

(declare-fun tp!1710004 () Bool)

(assert (=> b!6120749 (= e!3731462 (and tp!1710006 tp!1710004))))

(declare-fun b!6120748 () Bool)

(declare-fun tp!1710005 () Bool)

(assert (=> b!6120748 (= e!3731462 tp!1710005)))

(declare-fun b!6120746 () Bool)

(assert (=> b!6120746 (= e!3731462 tp_is_empty!41385)))

(assert (=> b!6120048 (= tp!1709844 e!3731462)))

(declare-fun b!6120747 () Bool)

(declare-fun tp!1710008 () Bool)

(declare-fun tp!1710007 () Bool)

(assert (=> b!6120747 (= e!3731462 (and tp!1710008 tp!1710007))))

(assert (= (and b!6120048 (is-ElementMatch!16066 (regOne!32644 (regTwo!32645 r!7292)))) b!6120746))

(assert (= (and b!6120048 (is-Concat!24911 (regOne!32644 (regTwo!32645 r!7292)))) b!6120747))

(assert (= (and b!6120048 (is-Star!16066 (regOne!32644 (regTwo!32645 r!7292)))) b!6120748))

(assert (= (and b!6120048 (is-Union!16066 (regOne!32644 (regTwo!32645 r!7292)))) b!6120749))

(declare-fun b!6120753 () Bool)

(declare-fun e!3731463 () Bool)

(declare-fun tp!1710011 () Bool)

(declare-fun tp!1710009 () Bool)

(assert (=> b!6120753 (= e!3731463 (and tp!1710011 tp!1710009))))

(declare-fun b!6120752 () Bool)

(declare-fun tp!1710010 () Bool)

(assert (=> b!6120752 (= e!3731463 tp!1710010)))

(declare-fun b!6120750 () Bool)

(assert (=> b!6120750 (= e!3731463 tp_is_empty!41385)))

(assert (=> b!6120048 (= tp!1709843 e!3731463)))

(declare-fun b!6120751 () Bool)

(declare-fun tp!1710013 () Bool)

(declare-fun tp!1710012 () Bool)

(assert (=> b!6120751 (= e!3731463 (and tp!1710013 tp!1710012))))

(assert (= (and b!6120048 (is-ElementMatch!16066 (regTwo!32644 (regTwo!32645 r!7292)))) b!6120750))

(assert (= (and b!6120048 (is-Concat!24911 (regTwo!32644 (regTwo!32645 r!7292)))) b!6120751))

(assert (= (and b!6120048 (is-Star!16066 (regTwo!32644 (regTwo!32645 r!7292)))) b!6120752))

(assert (= (and b!6120048 (is-Union!16066 (regTwo!32644 (regTwo!32645 r!7292)))) b!6120753))

(declare-fun b!6120757 () Bool)

(declare-fun e!3731464 () Bool)

(declare-fun tp!1710016 () Bool)

(declare-fun tp!1710014 () Bool)

(assert (=> b!6120757 (= e!3731464 (and tp!1710016 tp!1710014))))

(declare-fun b!6120756 () Bool)

(declare-fun tp!1710015 () Bool)

(assert (=> b!6120756 (= e!3731464 tp!1710015)))

(declare-fun b!6120754 () Bool)

(assert (=> b!6120754 (= e!3731464 tp_is_empty!41385)))

(assert (=> b!6120058 (= tp!1709851 e!3731464)))

(declare-fun b!6120755 () Bool)

(declare-fun tp!1710018 () Bool)

(declare-fun tp!1710017 () Bool)

(assert (=> b!6120755 (= e!3731464 (and tp!1710018 tp!1710017))))

(assert (= (and b!6120058 (is-ElementMatch!16066 (h!70821 (exprs!5950 setElem!41349)))) b!6120754))

(assert (= (and b!6120058 (is-Concat!24911 (h!70821 (exprs!5950 setElem!41349)))) b!6120755))

(assert (= (and b!6120058 (is-Star!16066 (h!70821 (exprs!5950 setElem!41349)))) b!6120756))

(assert (= (and b!6120058 (is-Union!16066 (h!70821 (exprs!5950 setElem!41349)))) b!6120757))

(declare-fun b!6120758 () Bool)

(declare-fun e!3731465 () Bool)

(declare-fun tp!1710019 () Bool)

(declare-fun tp!1710020 () Bool)

(assert (=> b!6120758 (= e!3731465 (and tp!1710019 tp!1710020))))

(assert (=> b!6120058 (= tp!1709852 e!3731465)))

(assert (= (and b!6120058 (is-Cons!64373 (t!377958 (exprs!5950 setElem!41349)))) b!6120758))

(declare-fun b!6120771 () Bool)

(declare-fun e!3731473 () Bool)

(declare-fun tp!1710023 () Bool)

(declare-fun tp!1710021 () Bool)

(assert (=> b!6120771 (= e!3731473 (and tp!1710023 tp!1710021))))

(declare-fun b!6120770 () Bool)

(declare-fun tp!1710022 () Bool)

(assert (=> b!6120770 (= e!3731473 tp!1710022)))

(declare-fun b!6120766 () Bool)

(assert (=> b!6120766 (= e!3731473 tp_is_empty!41385)))

(assert (=> b!6120072 (= tp!1709861 e!3731473)))

(declare-fun b!6120767 () Bool)

(declare-fun tp!1710025 () Bool)

(declare-fun tp!1710024 () Bool)

(assert (=> b!6120767 (= e!3731473 (and tp!1710025 tp!1710024))))

(assert (= (and b!6120072 (is-ElementMatch!16066 (regOne!32645 (regOne!32644 r!7292)))) b!6120766))

(assert (= (and b!6120072 (is-Concat!24911 (regOne!32645 (regOne!32644 r!7292)))) b!6120767))

(assert (= (and b!6120072 (is-Star!16066 (regOne!32645 (regOne!32644 r!7292)))) b!6120770))

(assert (= (and b!6120072 (is-Union!16066 (regOne!32645 (regOne!32644 r!7292)))) b!6120771))

(declare-fun b!6120775 () Bool)

(declare-fun e!3731474 () Bool)

(declare-fun tp!1710028 () Bool)

(declare-fun tp!1710026 () Bool)

(assert (=> b!6120775 (= e!3731474 (and tp!1710028 tp!1710026))))

(declare-fun b!6120774 () Bool)

(declare-fun tp!1710027 () Bool)

(assert (=> b!6120774 (= e!3731474 tp!1710027)))

(declare-fun b!6120772 () Bool)

(assert (=> b!6120772 (= e!3731474 tp_is_empty!41385)))

(assert (=> b!6120072 (= tp!1709859 e!3731474)))

(declare-fun b!6120773 () Bool)

(declare-fun tp!1710030 () Bool)

(declare-fun tp!1710029 () Bool)

(assert (=> b!6120773 (= e!3731474 (and tp!1710030 tp!1710029))))

(assert (= (and b!6120072 (is-ElementMatch!16066 (regTwo!32645 (regOne!32644 r!7292)))) b!6120772))

(assert (= (and b!6120072 (is-Concat!24911 (regTwo!32645 (regOne!32644 r!7292)))) b!6120773))

(assert (= (and b!6120072 (is-Star!16066 (regTwo!32645 (regOne!32644 r!7292)))) b!6120774))

(assert (= (and b!6120072 (is-Union!16066 (regTwo!32645 (regOne!32644 r!7292)))) b!6120775))

(declare-fun b!6120779 () Bool)

(declare-fun e!3731475 () Bool)

(declare-fun tp!1710033 () Bool)

(declare-fun tp!1710031 () Bool)

(assert (=> b!6120779 (= e!3731475 (and tp!1710033 tp!1710031))))

(declare-fun b!6120778 () Bool)

(declare-fun tp!1710032 () Bool)

(assert (=> b!6120778 (= e!3731475 tp!1710032)))

(declare-fun b!6120776 () Bool)

(assert (=> b!6120776 (= e!3731475 tp_is_empty!41385)))

(assert (=> b!6120076 (= tp!1709866 e!3731475)))

(declare-fun b!6120777 () Bool)

(declare-fun tp!1710035 () Bool)

(declare-fun tp!1710034 () Bool)

(assert (=> b!6120777 (= e!3731475 (and tp!1710035 tp!1710034))))

(assert (= (and b!6120076 (is-ElementMatch!16066 (regOne!32645 (regTwo!32644 r!7292)))) b!6120776))

(assert (= (and b!6120076 (is-Concat!24911 (regOne!32645 (regTwo!32644 r!7292)))) b!6120777))

(assert (= (and b!6120076 (is-Star!16066 (regOne!32645 (regTwo!32644 r!7292)))) b!6120778))

(assert (= (and b!6120076 (is-Union!16066 (regOne!32645 (regTwo!32644 r!7292)))) b!6120779))

(declare-fun b!6120783 () Bool)

(declare-fun e!3731476 () Bool)

(declare-fun tp!1710038 () Bool)

(declare-fun tp!1710036 () Bool)

(assert (=> b!6120783 (= e!3731476 (and tp!1710038 tp!1710036))))

(declare-fun b!6120782 () Bool)

(declare-fun tp!1710037 () Bool)

(assert (=> b!6120782 (= e!3731476 tp!1710037)))

(declare-fun b!6120780 () Bool)

(assert (=> b!6120780 (= e!3731476 tp_is_empty!41385)))

(assert (=> b!6120076 (= tp!1709864 e!3731476)))

(declare-fun b!6120781 () Bool)

(declare-fun tp!1710040 () Bool)

(declare-fun tp!1710039 () Bool)

(assert (=> b!6120781 (= e!3731476 (and tp!1710040 tp!1710039))))

(assert (= (and b!6120076 (is-ElementMatch!16066 (regTwo!32645 (regTwo!32644 r!7292)))) b!6120780))

(assert (= (and b!6120076 (is-Concat!24911 (regTwo!32645 (regTwo!32644 r!7292)))) b!6120781))

(assert (= (and b!6120076 (is-Star!16066 (regTwo!32645 (regTwo!32644 r!7292)))) b!6120782))

(assert (= (and b!6120076 (is-Union!16066 (regTwo!32645 (regTwo!32644 r!7292)))) b!6120783))

(declare-fun b!6120784 () Bool)

(declare-fun e!3731477 () Bool)

(declare-fun tp!1710041 () Bool)

(declare-fun tp!1710042 () Bool)

(assert (=> b!6120784 (= e!3731477 (and tp!1710041 tp!1710042))))

(assert (=> b!6120055 (= tp!1709849 e!3731477)))

(assert (= (and b!6120055 (is-Cons!64373 (exprs!5950 setElem!41355))) b!6120784))

(declare-fun b!6120788 () Bool)

(declare-fun e!3731478 () Bool)

(declare-fun tp!1710045 () Bool)

(declare-fun tp!1710043 () Bool)

(assert (=> b!6120788 (= e!3731478 (and tp!1710045 tp!1710043))))

(declare-fun b!6120787 () Bool)

(declare-fun tp!1710044 () Bool)

(assert (=> b!6120787 (= e!3731478 tp!1710044)))

(declare-fun b!6120785 () Bool)

(assert (=> b!6120785 (= e!3731478 tp_is_empty!41385)))

(assert (=> b!6120075 (= tp!1709865 e!3731478)))

(declare-fun b!6120786 () Bool)

(declare-fun tp!1710047 () Bool)

(declare-fun tp!1710046 () Bool)

(assert (=> b!6120786 (= e!3731478 (and tp!1710047 tp!1710046))))

(assert (= (and b!6120075 (is-ElementMatch!16066 (reg!16395 (regTwo!32644 r!7292)))) b!6120785))

(assert (= (and b!6120075 (is-Concat!24911 (reg!16395 (regTwo!32644 r!7292)))) b!6120786))

(assert (= (and b!6120075 (is-Star!16066 (reg!16395 (regTwo!32644 r!7292)))) b!6120787))

(assert (= (and b!6120075 (is-Union!16066 (reg!16395 (regTwo!32644 r!7292)))) b!6120788))

(declare-fun condSetEmpty!41365 () Bool)

(assert (=> setNonEmpty!41355 (= condSetEmpty!41365 (= setRest!41355 (as set.empty (Set Context!10900))))))

(declare-fun setRes!41365 () Bool)

(assert (=> setNonEmpty!41355 (= tp!1709850 setRes!41365)))

(declare-fun setIsEmpty!41365 () Bool)

(assert (=> setIsEmpty!41365 setRes!41365))

(declare-fun e!3731479 () Bool)

(declare-fun setElem!41365 () Context!10900)

(declare-fun setNonEmpty!41365 () Bool)

(declare-fun tp!1710049 () Bool)

(assert (=> setNonEmpty!41365 (= setRes!41365 (and tp!1710049 (inv!83413 setElem!41365) e!3731479))))

(declare-fun setRest!41365 () (Set Context!10900))

(assert (=> setNonEmpty!41365 (= setRest!41355 (set.union (set.insert setElem!41365 (as set.empty (Set Context!10900))) setRest!41365))))

(declare-fun b!6120789 () Bool)

(declare-fun tp!1710048 () Bool)

(assert (=> b!6120789 (= e!3731479 tp!1710048)))

(assert (= (and setNonEmpty!41355 condSetEmpty!41365) setIsEmpty!41365))

(assert (= (and setNonEmpty!41355 (not condSetEmpty!41365)) setNonEmpty!41365))

(assert (= setNonEmpty!41365 b!6120789))

(declare-fun m!6967118 () Bool)

(assert (=> setNonEmpty!41365 m!6967118))

(declare-fun b!6120790 () Bool)

(declare-fun e!3731480 () Bool)

(declare-fun tp!1710050 () Bool)

(declare-fun tp!1710051 () Bool)

(assert (=> b!6120790 (= e!3731480 (and tp!1710050 tp!1710051))))

(assert (=> b!6120068 (= tp!1709857 e!3731480)))

(assert (= (and b!6120068 (is-Cons!64373 (exprs!5950 (h!70822 (t!377959 zl!343))))) b!6120790))

(declare-fun b!6120792 () Bool)

(declare-fun e!3731482 () Bool)

(declare-fun tp!1710052 () Bool)

(assert (=> b!6120792 (= e!3731482 tp!1710052)))

(declare-fun e!3731481 () Bool)

(declare-fun b!6120791 () Bool)

(declare-fun tp!1710053 () Bool)

(assert (=> b!6120791 (= e!3731481 (and (inv!83413 (h!70822 (t!377959 (t!377959 zl!343)))) e!3731482 tp!1710053))))

(assert (=> b!6120067 (= tp!1709858 e!3731481)))

(assert (= b!6120791 b!6120792))

(assert (= (and b!6120067 (is-Cons!64374 (t!377959 (t!377959 zl!343)))) b!6120791))

(declare-fun m!6967120 () Bool)

(assert (=> b!6120791 m!6967120))

(declare-fun b!6120796 () Bool)

(declare-fun e!3731483 () Bool)

(declare-fun tp!1710056 () Bool)

(declare-fun tp!1710054 () Bool)

(assert (=> b!6120796 (= e!3731483 (and tp!1710056 tp!1710054))))

(declare-fun b!6120795 () Bool)

(declare-fun tp!1710055 () Bool)

(assert (=> b!6120795 (= e!3731483 tp!1710055)))

(declare-fun b!6120793 () Bool)

(assert (=> b!6120793 (= e!3731483 tp_is_empty!41385)))

(assert (=> b!6120074 (= tp!1709868 e!3731483)))

(declare-fun b!6120794 () Bool)

(declare-fun tp!1710058 () Bool)

(declare-fun tp!1710057 () Bool)

(assert (=> b!6120794 (= e!3731483 (and tp!1710058 tp!1710057))))

(assert (= (and b!6120074 (is-ElementMatch!16066 (regOne!32644 (regTwo!32644 r!7292)))) b!6120793))

(assert (= (and b!6120074 (is-Concat!24911 (regOne!32644 (regTwo!32644 r!7292)))) b!6120794))

(assert (= (and b!6120074 (is-Star!16066 (regOne!32644 (regTwo!32644 r!7292)))) b!6120795))

(assert (= (and b!6120074 (is-Union!16066 (regOne!32644 (regTwo!32644 r!7292)))) b!6120796))

(declare-fun b!6120800 () Bool)

(declare-fun e!3731484 () Bool)

(declare-fun tp!1710061 () Bool)

(declare-fun tp!1710059 () Bool)

(assert (=> b!6120800 (= e!3731484 (and tp!1710061 tp!1710059))))

(declare-fun b!6120799 () Bool)

(declare-fun tp!1710060 () Bool)

(assert (=> b!6120799 (= e!3731484 tp!1710060)))

(declare-fun b!6120797 () Bool)

(assert (=> b!6120797 (= e!3731484 tp_is_empty!41385)))

(assert (=> b!6120074 (= tp!1709867 e!3731484)))

(declare-fun b!6120798 () Bool)

(declare-fun tp!1710063 () Bool)

(declare-fun tp!1710062 () Bool)

(assert (=> b!6120798 (= e!3731484 (and tp!1710063 tp!1710062))))

(assert (= (and b!6120074 (is-ElementMatch!16066 (regTwo!32644 (regTwo!32644 r!7292)))) b!6120797))

(assert (= (and b!6120074 (is-Concat!24911 (regTwo!32644 (regTwo!32644 r!7292)))) b!6120798))

(assert (= (and b!6120074 (is-Star!16066 (regTwo!32644 (regTwo!32644 r!7292)))) b!6120799))

(assert (= (and b!6120074 (is-Union!16066 (regTwo!32644 (regTwo!32644 r!7292)))) b!6120800))

(declare-fun b!6120806 () Bool)

(declare-fun e!3731487 () Bool)

(declare-fun tp!1710066 () Bool)

(declare-fun tp!1710064 () Bool)

(assert (=> b!6120806 (= e!3731487 (and tp!1710066 tp!1710064))))

(declare-fun b!6120805 () Bool)

(declare-fun tp!1710065 () Bool)

(assert (=> b!6120805 (= e!3731487 tp!1710065)))

(declare-fun b!6120803 () Bool)

(assert (=> b!6120803 (= e!3731487 tp_is_empty!41385)))

(assert (=> b!6120042 (= tp!1709832 e!3731487)))

(declare-fun b!6120804 () Bool)

(declare-fun tp!1710068 () Bool)

(declare-fun tp!1710067 () Bool)

(assert (=> b!6120804 (= e!3731487 (and tp!1710068 tp!1710067))))

(assert (= (and b!6120042 (is-ElementMatch!16066 (regOne!32645 (reg!16395 r!7292)))) b!6120803))

(assert (= (and b!6120042 (is-Concat!24911 (regOne!32645 (reg!16395 r!7292)))) b!6120804))

(assert (= (and b!6120042 (is-Star!16066 (regOne!32645 (reg!16395 r!7292)))) b!6120805))

(assert (= (and b!6120042 (is-Union!16066 (regOne!32645 (reg!16395 r!7292)))) b!6120806))

(declare-fun b!6120812 () Bool)

(declare-fun e!3731490 () Bool)

(declare-fun tp!1710071 () Bool)

(declare-fun tp!1710069 () Bool)

(assert (=> b!6120812 (= e!3731490 (and tp!1710071 tp!1710069))))

(declare-fun b!6120811 () Bool)

(declare-fun tp!1710070 () Bool)

(assert (=> b!6120811 (= e!3731490 tp!1710070)))

(declare-fun b!6120809 () Bool)

(assert (=> b!6120809 (= e!3731490 tp_is_empty!41385)))

(assert (=> b!6120042 (= tp!1709830 e!3731490)))

(declare-fun b!6120810 () Bool)

(declare-fun tp!1710073 () Bool)

(declare-fun tp!1710072 () Bool)

(assert (=> b!6120810 (= e!3731490 (and tp!1710073 tp!1710072))))

(assert (= (and b!6120042 (is-ElementMatch!16066 (regTwo!32645 (reg!16395 r!7292)))) b!6120809))

(assert (= (and b!6120042 (is-Concat!24911 (regTwo!32645 (reg!16395 r!7292)))) b!6120810))

(assert (= (and b!6120042 (is-Star!16066 (regTwo!32645 (reg!16395 r!7292)))) b!6120811))

(assert (= (and b!6120042 (is-Union!16066 (regTwo!32645 (reg!16395 r!7292)))) b!6120812))

(declare-fun b!6120816 () Bool)

(declare-fun e!3731491 () Bool)

(declare-fun tp!1710076 () Bool)

(declare-fun tp!1710074 () Bool)

(assert (=> b!6120816 (= e!3731491 (and tp!1710076 tp!1710074))))

(declare-fun b!6120815 () Bool)

(declare-fun tp!1710075 () Bool)

(assert (=> b!6120815 (= e!3731491 tp!1710075)))

(declare-fun b!6120813 () Bool)

(assert (=> b!6120813 (= e!3731491 tp_is_empty!41385)))

(assert (=> b!6120041 (= tp!1709831 e!3731491)))

(declare-fun b!6120814 () Bool)

(declare-fun tp!1710078 () Bool)

(declare-fun tp!1710077 () Bool)

(assert (=> b!6120814 (= e!3731491 (and tp!1710078 tp!1710077))))

(assert (= (and b!6120041 (is-ElementMatch!16066 (reg!16395 (reg!16395 r!7292)))) b!6120813))

(assert (= (and b!6120041 (is-Concat!24911 (reg!16395 (reg!16395 r!7292)))) b!6120814))

(assert (= (and b!6120041 (is-Star!16066 (reg!16395 (reg!16395 r!7292)))) b!6120815))

(assert (= (and b!6120041 (is-Union!16066 (reg!16395 (reg!16395 r!7292)))) b!6120816))

(declare-fun b!6120820 () Bool)

(declare-fun e!3731492 () Bool)

(declare-fun tp!1710081 () Bool)

(declare-fun tp!1710079 () Bool)

(assert (=> b!6120820 (= e!3731492 (and tp!1710081 tp!1710079))))

(declare-fun b!6120819 () Bool)

(declare-fun tp!1710080 () Bool)

(assert (=> b!6120819 (= e!3731492 tp!1710080)))

(declare-fun b!6120817 () Bool)

(assert (=> b!6120817 (= e!3731492 tp_is_empty!41385)))

(assert (=> b!6120045 (= tp!1709836 e!3731492)))

(declare-fun b!6120818 () Bool)

(declare-fun tp!1710083 () Bool)

(declare-fun tp!1710082 () Bool)

(assert (=> b!6120818 (= e!3731492 (and tp!1710083 tp!1710082))))

(assert (= (and b!6120045 (is-ElementMatch!16066 (reg!16395 (regOne!32645 r!7292)))) b!6120817))

(assert (= (and b!6120045 (is-Concat!24911 (reg!16395 (regOne!32645 r!7292)))) b!6120818))

(assert (= (and b!6120045 (is-Star!16066 (reg!16395 (regOne!32645 r!7292)))) b!6120819))

(assert (= (and b!6120045 (is-Union!16066 (reg!16395 (regOne!32645 r!7292)))) b!6120820))

(declare-fun b!6120824 () Bool)

(declare-fun e!3731493 () Bool)

(declare-fun tp!1710086 () Bool)

(declare-fun tp!1710084 () Bool)

(assert (=> b!6120824 (= e!3731493 (and tp!1710086 tp!1710084))))

(declare-fun b!6120823 () Bool)

(declare-fun tp!1710085 () Bool)

(assert (=> b!6120823 (= e!3731493 tp!1710085)))

(declare-fun b!6120821 () Bool)

(assert (=> b!6120821 (= e!3731493 tp_is_empty!41385)))

(assert (=> b!6120044 (= tp!1709839 e!3731493)))

(declare-fun b!6120822 () Bool)

(declare-fun tp!1710088 () Bool)

(declare-fun tp!1710087 () Bool)

(assert (=> b!6120822 (= e!3731493 (and tp!1710088 tp!1710087))))

(assert (= (and b!6120044 (is-ElementMatch!16066 (regOne!32644 (regOne!32645 r!7292)))) b!6120821))

(assert (= (and b!6120044 (is-Concat!24911 (regOne!32644 (regOne!32645 r!7292)))) b!6120822))

(assert (= (and b!6120044 (is-Star!16066 (regOne!32644 (regOne!32645 r!7292)))) b!6120823))

(assert (= (and b!6120044 (is-Union!16066 (regOne!32644 (regOne!32645 r!7292)))) b!6120824))

(declare-fun b!6120828 () Bool)

(declare-fun e!3731494 () Bool)

(declare-fun tp!1710091 () Bool)

(declare-fun tp!1710089 () Bool)

(assert (=> b!6120828 (= e!3731494 (and tp!1710091 tp!1710089))))

(declare-fun b!6120827 () Bool)

(declare-fun tp!1710090 () Bool)

(assert (=> b!6120827 (= e!3731494 tp!1710090)))

(declare-fun b!6120825 () Bool)

(assert (=> b!6120825 (= e!3731494 tp_is_empty!41385)))

(assert (=> b!6120044 (= tp!1709838 e!3731494)))

(declare-fun b!6120826 () Bool)

(declare-fun tp!1710093 () Bool)

(declare-fun tp!1710092 () Bool)

(assert (=> b!6120826 (= e!3731494 (and tp!1710093 tp!1710092))))

(assert (= (and b!6120044 (is-ElementMatch!16066 (regTwo!32644 (regOne!32645 r!7292)))) b!6120825))

(assert (= (and b!6120044 (is-Concat!24911 (regTwo!32644 (regOne!32645 r!7292)))) b!6120826))

(assert (= (and b!6120044 (is-Star!16066 (regTwo!32644 (regOne!32645 r!7292)))) b!6120827))

(assert (= (and b!6120044 (is-Union!16066 (regTwo!32644 (regOne!32645 r!7292)))) b!6120828))

(declare-fun b!6120831 () Bool)

(declare-fun e!3731497 () Bool)

(declare-fun tp!1710094 () Bool)

(assert (=> b!6120831 (= e!3731497 (and tp_is_empty!41385 tp!1710094))))

(assert (=> b!6120028 (= tp!1709819 e!3731497)))

(assert (= (and b!6120028 (is-Cons!64375 (t!377960 (t!377960 s!2326)))) b!6120831))

(declare-fun b_lambda!233045 () Bool)

(assert (= b_lambda!233029 (or d!1917463 b_lambda!233045)))

(declare-fun bs!1518698 () Bool)

(declare-fun d!1917841 () Bool)

(assert (= bs!1518698 (and d!1917841 d!1917463)))

(assert (=> bs!1518698 (= (dynLambda!25355 lambda!333370 (h!70821 (exprs!5950 setElem!41349))) (validRegex!7802 (h!70821 (exprs!5950 setElem!41349))))))

(declare-fun m!6967126 () Bool)

(assert (=> bs!1518698 m!6967126))

(assert (=> b!6120217 d!1917841))

(declare-fun b_lambda!233047 () Bool)

(assert (= b_lambda!233035 (or b!6119302 b_lambda!233047)))

(assert (=> d!1917687 d!1917543))

(declare-fun b_lambda!233049 () Bool)

(assert (= b_lambda!233027 (or d!1917421 b_lambda!233049)))

(declare-fun bs!1518699 () Bool)

(declare-fun d!1917843 () Bool)

(assert (= bs!1518699 (and d!1917843 d!1917421)))

(assert (=> bs!1518699 (= (dynLambda!25355 lambda!333354 (h!70821 (unfocusZipperList!1487 zl!343))) (validRegex!7802 (h!70821 (unfocusZipperList!1487 zl!343))))))

(declare-fun m!6967128 () Bool)

(assert (=> bs!1518699 m!6967128))

(assert (=> b!6120208 d!1917843))

(declare-fun b_lambda!233051 () Bool)

(assert (= b_lambda!233025 (or d!1917423 b_lambda!233051)))

(declare-fun bs!1518700 () Bool)

(declare-fun d!1917845 () Bool)

(assert (= bs!1518700 (and d!1917845 d!1917423)))

(assert (=> bs!1518700 (= (dynLambda!25355 lambda!333357 (h!70821 lt!2330853)) (validRegex!7802 (h!70821 lt!2330853)))))

(declare-fun m!6967130 () Bool)

(assert (=> bs!1518700 m!6967130))

(assert (=> b!6120160 d!1917845))

(declare-fun b_lambda!233053 () Bool)

(assert (= b_lambda!233033 (or d!1917479 b_lambda!233053)))

(declare-fun bs!1518701 () Bool)

(declare-fun d!1917847 () Bool)

(assert (= bs!1518701 (and d!1917847 d!1917479)))

(assert (=> bs!1518701 (= (dynLambda!25355 lambda!333374 (h!70821 (exprs!5950 (h!70822 zl!343)))) (validRegex!7802 (h!70821 (exprs!5950 (h!70822 zl!343)))))))

(declare-fun m!6967132 () Bool)

(assert (=> bs!1518701 m!6967132))

(assert (=> b!6120405 d!1917847))

(declare-fun b_lambda!233055 () Bool)

(assert (= b_lambda!233037 (or d!1917461 b_lambda!233055)))

(declare-fun bs!1518702 () Bool)

(declare-fun d!1917849 () Bool)

(assert (= bs!1518702 (and d!1917849 d!1917461)))

(assert (=> bs!1518702 (= (dynLambda!25355 lambda!333367 (h!70821 (t!377958 (exprs!5950 (h!70822 zl!343))))) (validRegex!7802 (h!70821 (t!377958 (exprs!5950 (h!70822 zl!343))))))))

(declare-fun m!6967134 () Bool)

(assert (=> bs!1518702 m!6967134))

(assert (=> b!6120416 d!1917849))

(declare-fun b_lambda!233057 () Bool)

(assert (= b_lambda!233031 (or d!1917467 b_lambda!233057)))

(declare-fun bs!1518703 () Bool)

(declare-fun d!1917851 () Bool)

(assert (= bs!1518703 (and d!1917851 d!1917467)))

(assert (=> bs!1518703 (= (dynLambda!25355 lambda!333372 (h!70821 (exprs!5950 (h!70822 zl!343)))) (validRegex!7802 (h!70821 (exprs!5950 (h!70822 zl!343)))))))

(assert (=> bs!1518703 m!6967132))

(assert (=> b!6120239 d!1917851))

(push 1)

(assert (not b!6120370))

(assert (not b!6120145))

(assert (not b!6120147))

(assert (not b!6120788))

(assert (not b!6120814))

(assert (not b!6120744))

(assert (not bm!506882))

(assert (not bm!506938))

(assert (not bm!506898))

(assert (not b!6120161))

(assert (not bm!506932))

(assert (not bm!506905))

(assert (not b!6120804))

(assert (not b!6120714))

(assert (not b!6120791))

(assert (not d!1917807))

(assert (not b!6120527))

(assert (not b!6120339))

(assert (not bm!506980))

(assert (not d!1917647))

(assert (not b!6120221))

(assert (not b!6120811))

(assert (not bs!1518700))

(assert (not bm!506981))

(assert (not b!6120386))

(assert (not b!6120819))

(assert (not bm!506916))

(assert (not d!1917749))

(assert (not b!6120779))

(assert (not d!1917805))

(assert (not b!6120327))

(assert (not b!6120741))

(assert (not bm!506880))

(assert (not b!6120439))

(assert (not b!6120782))

(assert (not b!6120334))

(assert (not b!6120255))

(assert (not d!1917767))

(assert (not bm!506892))

(assert (not b!6120476))

(assert (not b!6120428))

(assert (not d!1917759))

(assert (not b!6120572))

(assert (not b!6120473))

(assert (not b!6120432))

(assert (not b!6120274))

(assert (not b!6120784))

(assert (not b!6120556))

(assert (not d!1917785))

(assert (not b!6120707))

(assert (not b!6120475))

(assert (not bm!506969))

(assert (not bm!506965))

(assert (not d!1917771))

(assert tp_is_empty!41385)

(assert (not b!6120806))

(assert (not b!6120441))

(assert (not b!6120551))

(assert (not d!1917709))

(assert (not b!6120460))

(assert (not b!6120724))

(assert (not d!1917757))

(assert (not bm!506957))

(assert (not b!6120144))

(assert (not b_lambda!233049))

(assert (not b!6120700))

(assert (not bm!506941))

(assert (not b!6120398))

(assert (not bm!506906))

(assert (not d!1917641))

(assert (not b!6120246))

(assert (not bm!506920))

(assert (not b!6120653))

(assert (not d!1917687))

(assert (not d!1917625))

(assert (not b!6120241))

(assert (not d!1917669))

(assert (not b!6120708))

(assert (not b!6120787))

(assert (not b!6120218))

(assert (not b!6120260))

(assert (not b!6120469))

(assert (not b!6120308))

(assert (not b!6120650))

(assert (not b!6120344))

(assert (not b!6120598))

(assert (not b!6120213))

(assert (not d!1917593))

(assert (not bm!506974))

(assert (not b!6120712))

(assert (not b!6120409))

(assert (not bm!506901))

(assert (not b!6120727))

(assert (not b!6120508))

(assert (not b!6120770))

(assert (not b!6120751))

(assert (not b!6120831))

(assert (not b!6120546))

(assert (not b!6120749))

(assert (not b!6120827))

(assert (not b!6120591))

(assert (not b!6120594))

(assert (not b!6120389))

(assert (not b!6120773))

(assert (not b!6120775))

(assert (not bs!1518699))

(assert (not bm!506899))

(assert (not bm!506925))

(assert (not b!6120729))

(assert (not b!6120656))

(assert (not d!1917631))

(assert (not d!1917651))

(assert (not b!6120655))

(assert (not b!6120699))

(assert (not b!6120823))

(assert (not b!6120333))

(assert (not b!6120472))

(assert (not d!1917701))

(assert (not b!6120736))

(assert (not b!6120657))

(assert (not bm!506947))

(assert (not bm!506976))

(assert (not d!1917707))

(assert (not b!6120284))

(assert (not b!6120509))

(assert (not b!6120703))

(assert (not b!6120731))

(assert (not b!6120715))

(assert (not b!6120826))

(assert (not bm!506886))

(assert (not b!6120240))

(assert (not b!6120800))

(assert (not d!1917811))

(assert (not b!6120654))

(assert (not b!6120651))

(assert (not b_lambda!233051))

(assert (not b!6120777))

(assert (not b!6120790))

(assert (not b!6120753))

(assert (not b!6120815))

(assert (not b!6120794))

(assert (not b!6120545))

(assert (not b!6120810))

(assert (not b!6120214))

(assert (not bm!506953))

(assert (not bs!1518702))

(assert (not b!6120747))

(assert (not bm!506927))

(assert (not b_lambda!233053))

(assert (not b!6120406))

(assert (not b!6120818))

(assert (not d!1917729))

(assert (not b!6120155))

(assert (not setNonEmpty!41365))

(assert (not b_lambda!233045))

(assert (not b!6120816))

(assert (not b!6120528))

(assert (not b!6120740))

(assert (not b!6120739))

(assert (not b!6120331))

(assert (not b!6120697))

(assert (not b!6120610))

(assert (not b!6120269))

(assert (not b!6120454))

(assert (not b!6120381))

(assert (not b!6120783))

(assert (not d!1917717))

(assert (not b!6120232))

(assert (not b!6120795))

(assert (not b!6120828))

(assert (not bm!506918))

(assert (not b!6120247))

(assert (not d!1917781))

(assert (not b!6120142))

(assert (not bm!506903))

(assert (not b!6120725))

(assert (not b!6120732))

(assert (not b!6120459))

(assert (not b!6120820))

(assert (not bm!506929))

(assert (not d!1917639))

(assert (not b_lambda!233021))

(assert (not b!6120457))

(assert (not b!6120164))

(assert (not bm!506902))

(assert (not bm!506935))

(assert (not b!6120748))

(assert (not bm!506883))

(assert (not bm!506895))

(assert (not b!6120276))

(assert (not b!6120745))

(assert (not d!1917705))

(assert (not bs!1518698))

(assert (not b!6120270))

(assert (not b!6120149))

(assert (not b!6120256))

(assert (not d!1917813))

(assert (not b!6120165))

(assert (not bs!1518701))

(assert (not b!6120698))

(assert (not b!6120279))

(assert (not b!6120694))

(assert (not d!1917725))

(assert (not b!6120242))

(assert (not bs!1518703))

(assert (not d!1917731))

(assert (not b!6120597))

(assert (not setNonEmpty!41361))

(assert (not b!6120737))

(assert (not b!6120704))

(assert (not bm!506896))

(assert (not bm!506942))

(assert (not b!6120799))

(assert (not b!6120595))

(assert (not b!6120349))

(assert (not b!6120470))

(assert (not bm!506944))

(assert (not b!6120228))

(assert (not b!6120756))

(assert (not b!6120758))

(assert (not b!6120752))

(assert (not b!6120805))

(assert (not b!6120798))

(assert (not bm!506893))

(assert (not b!6120622))

(assert (not d!1917653))

(assert (not b!6120781))

(assert (not d!1917741))

(assert (not b!6120278))

(assert (not b!6120212))

(assert (not b!6120550))

(assert (not bm!506959))

(assert (not d!1917559))

(assert (not b!6120474))

(assert (not b!6120706))

(assert (not b!6120702))

(assert (not b!6120229))

(assert (not b!6120743))

(assert (not bm!506954))

(assert (not b!6120525))

(assert (not bm!506945))

(assert (not bm!506937))

(assert (not b!6120792))

(assert (not bm!506948))

(assert (not d!1917797))

(assert (not d!1917711))

(assert (not b!6120438))

(assert (not d!1917603))

(assert (not b!6120455))

(assert (not b!6120417))

(assert (not bm!506891))

(assert (not d!1917591))

(assert (not b!6120338))

(assert (not bm!506970))

(assert (not b!6120492))

(assert (not b!6120767))

(assert (not b!6120526))

(assert (not bm!506950))

(assert (not b!6120621))

(assert (not b!6120540))

(assert (not b!6120273))

(assert (not bm!506904))

(assert (not b!6120209))

(assert (not bm!506926))

(assert (not bm!506924))

(assert (not d!1917637))

(assert (not d!1917629))

(assert (not d!1917657))

(assert (not b!6120437))

(assert (not d!1917723))

(assert (not b!6120336))

(assert (not b!6120733))

(assert (not b!6120548))

(assert (not b!6120796))

(assert (not b!6120735))

(assert (not b!6120695))

(assert (not b!6120201))

(assert (not b!6120252))

(assert (not bm!506966))

(assert (not bm!506951))

(assert (not d!1917809))

(assert (not b!6120330))

(assert (not b!6120427))

(assert (not b!6120177))

(assert (not b!6120728))

(assert (not b!6120148))

(assert (not d!1917673))

(assert (not b!6120141))

(assert (not b!6120259))

(assert (not b!6120431))

(assert (not b!6120445))

(assert (not b!6120465))

(assert (not b!6120599))

(assert (not b!6120723))

(assert (not b!6120778))

(assert (not d!1917713))

(assert (not b!6120771))

(assert (not b!6120822))

(assert (not b!6120244))

(assert (not b!6120789))

(assert (not d!1917815))

(assert (not b!6120757))

(assert (not b!6120383))

(assert (not d!1917615))

(assert (not b!6120824))

(assert (not b_lambda!233047))

(assert (not bm!506921))

(assert (not b_lambda!233057))

(assert (not bm!506931))

(assert (not b!6120812))

(assert (not b!6120592))

(assert (not b!6120755))

(assert (not b!6120774))

(assert (not b_lambda!233055))

(assert (not d!1917613))

(assert (not b!6120442))

(assert (not b!6120786))

(assert (not b!6120440))

(assert (not b!6120693))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

