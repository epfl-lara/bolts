; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!736276 () Bool)

(assert start!736276)

(declare-fun b!7667860 () Bool)

(assert (=> b!7667860 true))

(assert (=> b!7667860 true))

(declare-fun b!7667858 () Bool)

(declare-fun res!3066947 () Bool)

(declare-fun e!4554160 () Bool)

(assert (=> b!7667858 (=> (not res!3066947) (not e!4554160))))

(declare-datatypes ((C!41316 0))(
  ( (C!41317 (val!31098 Int)) )
))
(declare-datatypes ((Regex!20495 0))(
  ( (ElementMatch!20495 (c!1412196 C!41316)) (Concat!29340 (regOne!41502 Regex!20495) (regTwo!41502 Regex!20495)) (EmptyExpr!20495) (Star!20495 (reg!20824 Regex!20495)) (EmptyLang!20495) (Union!20495 (regOne!41503 Regex!20495) (regTwo!41503 Regex!20495)) )
))
(declare-fun r!14126 () Regex!20495)

(get-info :version)

(assert (=> b!7667858 (= res!3066947 (and (not ((_ is EmptyExpr!20495) r!14126)) (not ((_ is EmptyLang!20495) r!14126)) (not ((_ is ElementMatch!20495) r!14126)) (not ((_ is Union!20495) r!14126)) ((_ is Star!20495) r!14126)))))

(declare-fun e!4554163 () Bool)

(assert (=> b!7667860 (= e!4554160 (not e!4554163))))

(declare-fun res!3066949 () Bool)

(assert (=> b!7667860 (=> res!3066949 e!4554163)))

(declare-fun lt!2662304 () Bool)

(assert (=> b!7667860 (= res!3066949 (not lt!2662304))))

(declare-fun lambda!469967 () Int)

(declare-fun Exists!4620 (Int) Bool)

(assert (=> b!7667860 (= lt!2662304 (Exists!4620 lambda!469967))))

(declare-datatypes ((List!73346 0))(
  ( (Nil!73222) (Cons!73222 (h!79670 C!41316) (t!388081 List!73346)) )
))
(declare-datatypes ((tuple2!69452 0))(
  ( (tuple2!69453 (_1!38029 List!73346) (_2!38029 List!73346)) )
))
(declare-datatypes ((Option!17520 0))(
  ( (None!17519) (Some!17519 (v!54654 tuple2!69452)) )
))
(declare-fun lt!2662307 () Option!17520)

(declare-fun isDefined!14136 (Option!17520) Bool)

(assert (=> b!7667860 (= lt!2662304 (isDefined!14136 lt!2662307))))

(declare-fun s!9605 () List!73346)

(declare-fun findConcatSeparation!3550 (Regex!20495 Regex!20495 List!73346 List!73346 List!73346) Option!17520)

(assert (=> b!7667860 (= lt!2662307 (findConcatSeparation!3550 (reg!20824 r!14126) r!14126 Nil!73222 s!9605 s!9605))))

(declare-datatypes ((Unit!168002 0))(
  ( (Unit!168003) )
))
(declare-fun lt!2662302 () Unit!168002)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3308 (Regex!20495 Regex!20495 List!73346) Unit!168002)

(assert (=> b!7667860 (= lt!2662302 (lemmaFindConcatSeparationEquivalentToExists!3308 (reg!20824 r!14126) r!14126 s!9605))))

(declare-fun b!7667861 () Bool)

(declare-fun e!4554162 () Bool)

(declare-fun tp!2243848 () Bool)

(declare-fun tp!2243844 () Bool)

(assert (=> b!7667861 (= e!4554162 (and tp!2243848 tp!2243844))))

(declare-fun b!7667862 () Bool)

(declare-fun tp!2243847 () Bool)

(declare-fun tp!2243845 () Bool)

(assert (=> b!7667862 (= e!4554162 (and tp!2243847 tp!2243845))))

(declare-fun b!7667863 () Bool)

(declare-fun e!4554161 () Bool)

(declare-fun tp_is_empty!51345 () Bool)

(declare-fun tp!2243849 () Bool)

(assert (=> b!7667863 (= e!4554161 (and tp_is_empty!51345 tp!2243849))))

(declare-fun b!7667864 () Bool)

(declare-fun tp!2243846 () Bool)

(assert (=> b!7667864 (= e!4554162 tp!2243846)))

(declare-fun b!7667865 () Bool)

(declare-fun e!4554159 () Bool)

(assert (=> b!7667865 (= e!4554163 e!4554159)))

(declare-fun res!3066946 () Bool)

(assert (=> b!7667865 (=> res!3066946 e!4554159)))

(declare-fun matchR!9991 (Regex!20495 List!73346) Bool)

(assert (=> b!7667865 (= res!3066946 (matchR!9991 r!14126 s!9605))))

(declare-fun lt!2662303 () tuple2!69452)

(declare-fun matchRSpec!4596 (Regex!20495 List!73346) Bool)

(assert (=> b!7667865 (= (matchR!9991 r!14126 (_2!38029 lt!2662303)) (matchRSpec!4596 r!14126 (_2!38029 lt!2662303)))))

(declare-fun lt!2662306 () Unit!168002)

(declare-fun mainMatchTheorem!4574 (Regex!20495 List!73346) Unit!168002)

(assert (=> b!7667865 (= lt!2662306 (mainMatchTheorem!4574 r!14126 (_2!38029 lt!2662303)))))

(assert (=> b!7667865 (= (matchR!9991 (reg!20824 r!14126) (_1!38029 lt!2662303)) (matchRSpec!4596 (reg!20824 r!14126) (_1!38029 lt!2662303)))))

(declare-fun lt!2662308 () Unit!168002)

(assert (=> b!7667865 (= lt!2662308 (mainMatchTheorem!4574 (reg!20824 r!14126) (_1!38029 lt!2662303)))))

(declare-fun get!25954 (Option!17520) tuple2!69452)

(assert (=> b!7667865 (= lt!2662303 (get!25954 lt!2662307))))

(declare-fun b!7667866 () Bool)

(assert (=> b!7667866 (= e!4554162 tp_is_empty!51345)))

(declare-fun b!7667867 () Bool)

(declare-fun validRegex!10913 (Regex!20495) Bool)

(assert (=> b!7667867 (= e!4554159 (validRegex!10913 r!14126))))

(declare-fun ++!17717 (List!73346 List!73346) List!73346)

(assert (=> b!7667867 (matchR!9991 (Concat!29340 (reg!20824 r!14126) r!14126) (++!17717 (_1!38029 lt!2662303) (_2!38029 lt!2662303)))))

(declare-fun lt!2662305 () Unit!168002)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!182 (Regex!20495 Regex!20495 List!73346 List!73346 List!73346) Unit!168002)

(assert (=> b!7667867 (= lt!2662305 (lemmaFindSeparationIsDefinedThenConcatMatches!182 (reg!20824 r!14126) r!14126 (_1!38029 lt!2662303) (_2!38029 lt!2662303) s!9605))))

(declare-fun res!3066948 () Bool)

(assert (=> start!736276 (=> (not res!3066948) (not e!4554160))))

(assert (=> start!736276 (= res!3066948 (validRegex!10913 r!14126))))

(assert (=> start!736276 e!4554160))

(assert (=> start!736276 e!4554162))

(assert (=> start!736276 e!4554161))

(declare-fun b!7667859 () Bool)

(declare-fun res!3066950 () Bool)

(assert (=> b!7667859 (=> (not res!3066950) (not e!4554160))))

(declare-fun isEmpty!41856 (List!73346) Bool)

(assert (=> b!7667859 (= res!3066950 (not (isEmpty!41856 s!9605)))))

(assert (= (and start!736276 res!3066948) b!7667858))

(assert (= (and b!7667858 res!3066947) b!7667859))

(assert (= (and b!7667859 res!3066950) b!7667860))

(assert (= (and b!7667860 (not res!3066949)) b!7667865))

(assert (= (and b!7667865 (not res!3066946)) b!7667867))

(assert (= (and start!736276 ((_ is ElementMatch!20495) r!14126)) b!7667866))

(assert (= (and start!736276 ((_ is Concat!29340) r!14126)) b!7667862))

(assert (= (and start!736276 ((_ is Star!20495) r!14126)) b!7667864))

(assert (= (and start!736276 ((_ is Union!20495) r!14126)) b!7667861))

(assert (= (and start!736276 ((_ is Cons!73222) s!9605)) b!7667863))

(declare-fun m!8173024 () Bool)

(assert (=> start!736276 m!8173024))

(assert (=> b!7667867 m!8173024))

(declare-fun m!8173026 () Bool)

(assert (=> b!7667867 m!8173026))

(assert (=> b!7667867 m!8173026))

(declare-fun m!8173028 () Bool)

(assert (=> b!7667867 m!8173028))

(declare-fun m!8173030 () Bool)

(assert (=> b!7667867 m!8173030))

(declare-fun m!8173032 () Bool)

(assert (=> b!7667860 m!8173032))

(declare-fun m!8173034 () Bool)

(assert (=> b!7667860 m!8173034))

(declare-fun m!8173036 () Bool)

(assert (=> b!7667860 m!8173036))

(declare-fun m!8173038 () Bool)

(assert (=> b!7667860 m!8173038))

(declare-fun m!8173040 () Bool)

(assert (=> b!7667865 m!8173040))

(declare-fun m!8173042 () Bool)

(assert (=> b!7667865 m!8173042))

(declare-fun m!8173044 () Bool)

(assert (=> b!7667865 m!8173044))

(declare-fun m!8173046 () Bool)

(assert (=> b!7667865 m!8173046))

(declare-fun m!8173048 () Bool)

(assert (=> b!7667865 m!8173048))

(declare-fun m!8173050 () Bool)

(assert (=> b!7667865 m!8173050))

(declare-fun m!8173052 () Bool)

(assert (=> b!7667865 m!8173052))

(declare-fun m!8173054 () Bool)

(assert (=> b!7667865 m!8173054))

(declare-fun m!8173056 () Bool)

(assert (=> b!7667859 m!8173056))

(check-sat (not b!7667862) tp_is_empty!51345 (not b!7667860) (not b!7667865) (not start!736276) (not b!7667867) (not b!7667863) (not b!7667864) (not b!7667859) (not b!7667861))
(check-sat)
