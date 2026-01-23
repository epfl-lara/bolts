; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!245056 () Bool)

(assert start!245056)

(declare-fun b!2512907 () Bool)

(declare-fun res!1062266 () Bool)

(declare-fun e!1592366 () Bool)

(assert (=> b!2512907 (=> (not res!1062266) (not e!1592366))))

(declare-datatypes ((C!15104 0))(
  ( (C!15105 (val!9204 Int)) )
))
(declare-datatypes ((Regex!7473 0))(
  ( (ElementMatch!7473 (c!400387 C!15104)) (Concat!12169 (regOne!15458 Regex!7473) (regTwo!15458 Regex!7473)) (EmptyExpr!7473) (Star!7473 (reg!7802 Regex!7473)) (EmptyLang!7473) (Union!7473 (regOne!15459 Regex!7473) (regTwo!15459 Regex!7473)) )
))
(declare-fun r!27340 () Regex!7473)

(get-info :version)

(assert (=> b!2512907 (= res!1062266 (and (not ((_ is EmptyExpr!7473) r!27340)) (not ((_ is EmptyLang!7473) r!27340)) (not ((_ is ElementMatch!7473) r!27340)) (not ((_ is Union!7473) r!27340)) (not ((_ is Star!7473) r!27340))))))

(declare-fun b!2512908 () Bool)

(declare-fun e!1592364 () Bool)

(declare-fun e!1592365 () Bool)

(assert (=> b!2512908 (= e!1592364 e!1592365)))

(declare-fun res!1062268 () Bool)

(assert (=> b!2512908 (=> res!1062268 e!1592365)))

(declare-datatypes ((List!29538 0))(
  ( (Nil!29438) (Cons!29438 (h!34858 C!15104) (t!211237 List!29538)) )
))
(declare-datatypes ((tuple2!29476 0))(
  ( (tuple2!29477 (_1!17280 List!29538) (_2!17280 List!29538)) )
))
(declare-fun lt!898188 () tuple2!29476)

(declare-fun tl!4068 () List!29538)

(declare-fun ++!7207 (List!29538 List!29538) List!29538)

(assert (=> b!2512908 (= res!1062268 (not (= (++!7207 (_1!17280 lt!898188) (_2!17280 lt!898188)) tl!4068)))))

(declare-datatypes ((Option!5858 0))(
  ( (None!5857) (Some!5857 (v!31788 tuple2!29476)) )
))
(declare-fun lt!898190 () Option!5858)

(declare-fun get!9173 (Option!5858) tuple2!29476)

(assert (=> b!2512908 (= lt!898188 (get!9173 lt!898190))))

(declare-fun isDefined!4680 (Option!5858) Bool)

(assert (=> b!2512908 (isDefined!4680 lt!898190)))

(declare-fun lt!898189 () Regex!7473)

(declare-fun findConcatSeparation!880 (Regex!7473 Regex!7473 List!29538 List!29538 List!29538) Option!5858)

(assert (=> b!2512908 (= lt!898190 (findConcatSeparation!880 lt!898189 (regTwo!15458 r!27340) Nil!29438 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43195 0))(
  ( (Unit!43196) )
))
(declare-fun lt!898191 () Unit!43195)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!162 (Regex!7473 Regex!7473 List!29538) Unit!43195)

(assert (=> b!2512908 (= lt!898191 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!162 lt!898189 (regTwo!15458 r!27340) tl!4068))))

(declare-fun res!1062272 () Bool)

(assert (=> start!245056 (=> (not res!1062272) (not e!1592366))))

(declare-fun validRegex!3099 (Regex!7473) Bool)

(assert (=> start!245056 (= res!1062272 (validRegex!3099 r!27340))))

(assert (=> start!245056 e!1592366))

(declare-fun e!1592361 () Bool)

(assert (=> start!245056 e!1592361))

(declare-fun tp_is_empty!12801 () Bool)

(assert (=> start!245056 tp_is_empty!12801))

(declare-fun e!1592362 () Bool)

(assert (=> start!245056 e!1592362))

(declare-fun b!2512909 () Bool)

(assert (=> b!2512909 (= e!1592365 (validRegex!3099 (regOne!15458 r!27340)))))

(declare-fun b!2512910 () Bool)

(declare-fun tp!803470 () Bool)

(assert (=> b!2512910 (= e!1592361 tp!803470)))

(declare-fun b!2512911 () Bool)

(assert (=> b!2512911 (= e!1592366 (not e!1592364))))

(declare-fun res!1062267 () Bool)

(assert (=> b!2512911 (=> res!1062267 e!1592364)))

(declare-fun lt!898185 () Bool)

(assert (=> b!2512911 (= res!1062267 (not lt!898185))))

(declare-fun derivative!168 (Regex!7473 List!29538) Regex!7473)

(assert (=> b!2512911 (= (derivative!168 EmptyLang!7473 tl!4068) EmptyLang!7473)))

(declare-fun lt!898187 () Unit!43195)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!20 (Regex!7473 List!29538) Unit!43195)

(assert (=> b!2512911 (= lt!898187 (lemmaEmptyLangDerivativeIsAFixPoint!20 EmptyLang!7473 tl!4068))))

(declare-fun e!1592363 () Bool)

(assert (=> b!2512911 e!1592363))

(declare-fun res!1062271 () Bool)

(assert (=> b!2512911 (=> res!1062271 e!1592363)))

(assert (=> b!2512911 (= res!1062271 lt!898185)))

(declare-fun lt!898192 () Regex!7473)

(declare-fun matchR!3472 (Regex!7473 List!29538) Bool)

(assert (=> b!2512911 (= lt!898185 (matchR!3472 lt!898192 tl!4068))))

(declare-fun lt!898183 () Unit!43195)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!160 (Regex!7473 Regex!7473 List!29538) Unit!43195)

(assert (=> b!2512911 (= lt!898183 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!160 lt!898192 EmptyLang!7473 tl!4068))))

(declare-fun lt!898186 () Regex!7473)

(assert (=> b!2512911 (= (matchR!3472 lt!898186 tl!4068) (matchR!3472 (derivative!168 lt!898186 tl!4068) Nil!29438))))

(declare-fun lt!898184 () Unit!43195)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!118 (Regex!7473 List!29538) Unit!43195)

(assert (=> b!2512911 (= lt!898184 (lemmaMatchRIsSameAsWholeDerivativeAndNil!118 lt!898186 tl!4068))))

(assert (=> b!2512911 (= lt!898186 (Union!7473 lt!898192 EmptyLang!7473))))

(assert (=> b!2512911 (= lt!898192 (Concat!12169 lt!898189 (regTwo!15458 r!27340)))))

(declare-fun c!14016 () C!15104)

(declare-fun derivativeStep!2042 (Regex!7473 C!15104) Regex!7473)

(assert (=> b!2512911 (= lt!898189 (derivativeStep!2042 (regOne!15458 r!27340) c!14016))))

(declare-fun b!2512912 () Bool)

(assert (=> b!2512912 (= e!1592361 tp_is_empty!12801)))

(declare-fun b!2512913 () Bool)

(declare-fun tp!803474 () Bool)

(declare-fun tp!803473 () Bool)

(assert (=> b!2512913 (= e!1592361 (and tp!803474 tp!803473))))

(declare-fun b!2512914 () Bool)

(declare-fun res!1062269 () Bool)

(assert (=> b!2512914 (=> (not res!1062269) (not e!1592366))))

(declare-fun nullable!2390 (Regex!7473) Bool)

(assert (=> b!2512914 (= res!1062269 (nullable!2390 (derivative!168 (derivativeStep!2042 r!27340 c!14016) tl!4068)))))

(declare-fun b!2512915 () Bool)

(declare-fun res!1062270 () Bool)

(assert (=> b!2512915 (=> (not res!1062270) (not e!1592366))))

(assert (=> b!2512915 (= res!1062270 (not (nullable!2390 (regOne!15458 r!27340))))))

(declare-fun b!2512916 () Bool)

(declare-fun tp!803472 () Bool)

(assert (=> b!2512916 (= e!1592362 (and tp_is_empty!12801 tp!803472))))

(declare-fun b!2512917 () Bool)

(assert (=> b!2512917 (= e!1592363 (matchR!3472 EmptyLang!7473 tl!4068))))

(declare-fun b!2512918 () Bool)

(declare-fun tp!803469 () Bool)

(declare-fun tp!803471 () Bool)

(assert (=> b!2512918 (= e!1592361 (and tp!803469 tp!803471))))

(assert (= (and start!245056 res!1062272) b!2512914))

(assert (= (and b!2512914 res!1062269) b!2512907))

(assert (= (and b!2512907 res!1062266) b!2512915))

(assert (= (and b!2512915 res!1062270) b!2512911))

(assert (= (and b!2512911 (not res!1062271)) b!2512917))

(assert (= (and b!2512911 (not res!1062267)) b!2512908))

(assert (= (and b!2512908 (not res!1062268)) b!2512909))

(assert (= (and start!245056 ((_ is ElementMatch!7473) r!27340)) b!2512912))

(assert (= (and start!245056 ((_ is Concat!12169) r!27340)) b!2512913))

(assert (= (and start!245056 ((_ is Star!7473) r!27340)) b!2512910))

(assert (= (and start!245056 ((_ is Union!7473) r!27340)) b!2512918))

(assert (= (and start!245056 ((_ is Cons!29438) tl!4068)) b!2512916))

(declare-fun m!2870947 () Bool)

(assert (=> b!2512909 m!2870947))

(declare-fun m!2870949 () Bool)

(assert (=> b!2512908 m!2870949))

(declare-fun m!2870951 () Bool)

(assert (=> b!2512908 m!2870951))

(declare-fun m!2870953 () Bool)

(assert (=> b!2512908 m!2870953))

(declare-fun m!2870955 () Bool)

(assert (=> b!2512908 m!2870955))

(declare-fun m!2870957 () Bool)

(assert (=> b!2512908 m!2870957))

(declare-fun m!2870959 () Bool)

(assert (=> b!2512915 m!2870959))

(declare-fun m!2870961 () Bool)

(assert (=> b!2512911 m!2870961))

(declare-fun m!2870963 () Bool)

(assert (=> b!2512911 m!2870963))

(declare-fun m!2870965 () Bool)

(assert (=> b!2512911 m!2870965))

(assert (=> b!2512911 m!2870965))

(declare-fun m!2870967 () Bool)

(assert (=> b!2512911 m!2870967))

(declare-fun m!2870969 () Bool)

(assert (=> b!2512911 m!2870969))

(declare-fun m!2870971 () Bool)

(assert (=> b!2512911 m!2870971))

(declare-fun m!2870973 () Bool)

(assert (=> b!2512911 m!2870973))

(declare-fun m!2870975 () Bool)

(assert (=> b!2512911 m!2870975))

(declare-fun m!2870977 () Bool)

(assert (=> b!2512911 m!2870977))

(declare-fun m!2870979 () Bool)

(assert (=> b!2512914 m!2870979))

(assert (=> b!2512914 m!2870979))

(declare-fun m!2870981 () Bool)

(assert (=> b!2512914 m!2870981))

(assert (=> b!2512914 m!2870981))

(declare-fun m!2870983 () Bool)

(assert (=> b!2512914 m!2870983))

(declare-fun m!2870985 () Bool)

(assert (=> start!245056 m!2870985))

(declare-fun m!2870987 () Bool)

(assert (=> b!2512917 m!2870987))

(check-sat tp_is_empty!12801 (not b!2512914) (not b!2512915) (not start!245056) (not b!2512913) (not b!2512917) (not b!2512918) (not b!2512908) (not b!2512911) (not b!2512910) (not b!2512909) (not b!2512916))
(check-sat)
(get-model)

(declare-fun d!716922 () Bool)

(declare-fun nullableFct!635 (Regex!7473) Bool)

(assert (=> d!716922 (= (nullable!2390 (regOne!15458 r!27340)) (nullableFct!635 (regOne!15458 r!27340)))))

(declare-fun bs!468822 () Bool)

(assert (= bs!468822 d!716922))

(declare-fun m!2870989 () Bool)

(assert (=> bs!468822 m!2870989))

(assert (=> b!2512915 d!716922))

(declare-fun d!716924 () Bool)

(assert (=> d!716924 (= (nullable!2390 (derivative!168 (derivativeStep!2042 r!27340 c!14016) tl!4068)) (nullableFct!635 (derivative!168 (derivativeStep!2042 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468823 () Bool)

(assert (= bs!468823 d!716924))

(assert (=> bs!468823 m!2870981))

(declare-fun m!2870991 () Bool)

(assert (=> bs!468823 m!2870991))

(assert (=> b!2512914 d!716924))

(declare-fun d!716926 () Bool)

(declare-fun lt!898195 () Regex!7473)

(assert (=> d!716926 (validRegex!3099 lt!898195)))

(declare-fun e!1592369 () Regex!7473)

(assert (=> d!716926 (= lt!898195 e!1592369)))

(declare-fun c!400390 () Bool)

(assert (=> d!716926 (= c!400390 ((_ is Cons!29438) tl!4068))))

(assert (=> d!716926 (validRegex!3099 (derivativeStep!2042 r!27340 c!14016))))

(assert (=> d!716926 (= (derivative!168 (derivativeStep!2042 r!27340 c!14016) tl!4068) lt!898195)))

(declare-fun b!2512923 () Bool)

(assert (=> b!2512923 (= e!1592369 (derivative!168 (derivativeStep!2042 (derivativeStep!2042 r!27340 c!14016) (h!34858 tl!4068)) (t!211237 tl!4068)))))

(declare-fun b!2512924 () Bool)

(assert (=> b!2512924 (= e!1592369 (derivativeStep!2042 r!27340 c!14016))))

(assert (= (and d!716926 c!400390) b!2512923))

(assert (= (and d!716926 (not c!400390)) b!2512924))

(declare-fun m!2870993 () Bool)

(assert (=> d!716926 m!2870993))

(assert (=> d!716926 m!2870979))

(declare-fun m!2870995 () Bool)

(assert (=> d!716926 m!2870995))

(assert (=> b!2512923 m!2870979))

(declare-fun m!2870997 () Bool)

(assert (=> b!2512923 m!2870997))

(assert (=> b!2512923 m!2870997))

(declare-fun m!2870999 () Bool)

(assert (=> b!2512923 m!2870999))

(assert (=> b!2512914 d!716926))

(declare-fun b!2512957 () Bool)

(declare-fun e!1592389 () Regex!7473)

(assert (=> b!2512957 (= e!1592389 (ite (= c!14016 (c!400387 r!27340)) EmptyExpr!7473 EmptyLang!7473))))

(declare-fun d!716930 () Bool)

(declare-fun lt!898201 () Regex!7473)

(assert (=> d!716930 (validRegex!3099 lt!898201)))

(declare-fun e!1592387 () Regex!7473)

(assert (=> d!716930 (= lt!898201 e!1592387)))

(declare-fun c!400408 () Bool)

(assert (=> d!716930 (= c!400408 (or ((_ is EmptyExpr!7473) r!27340) ((_ is EmptyLang!7473) r!27340)))))

(assert (=> d!716930 (validRegex!3099 r!27340)))

(assert (=> d!716930 (= (derivativeStep!2042 r!27340 c!14016) lt!898201)))

(declare-fun b!2512958 () Bool)

(declare-fun e!1592388 () Regex!7473)

(declare-fun call!155997 () Regex!7473)

(assert (=> b!2512958 (= e!1592388 (Union!7473 (Concat!12169 call!155997 (regTwo!15458 r!27340)) EmptyLang!7473))))

(declare-fun b!2512959 () Bool)

(declare-fun e!1592386 () Regex!7473)

(declare-fun call!155998 () Regex!7473)

(declare-fun call!155999 () Regex!7473)

(assert (=> b!2512959 (= e!1592386 (Union!7473 call!155998 call!155999))))

(declare-fun b!2512960 () Bool)

(declare-fun e!1592390 () Regex!7473)

(declare-fun call!155996 () Regex!7473)

(assert (=> b!2512960 (= e!1592390 (Concat!12169 call!155996 r!27340))))

(declare-fun c!400407 () Bool)

(declare-fun bm!155991 () Bool)

(assert (=> bm!155991 (= call!155999 (derivativeStep!2042 (ite c!400407 (regTwo!15459 r!27340) (regTwo!15458 r!27340)) c!14016))))

(declare-fun b!2512961 () Bool)

(assert (=> b!2512961 (= e!1592387 EmptyLang!7473)))

(declare-fun b!2512962 () Bool)

(assert (=> b!2512962 (= e!1592388 (Union!7473 (Concat!12169 call!155997 (regTwo!15458 r!27340)) call!155999))))

(declare-fun b!2512963 () Bool)

(assert (=> b!2512963 (= e!1592387 e!1592389)))

(declare-fun c!400406 () Bool)

(assert (=> b!2512963 (= c!400406 ((_ is ElementMatch!7473) r!27340))))

(declare-fun b!2512964 () Bool)

(assert (=> b!2512964 (= c!400407 ((_ is Union!7473) r!27340))))

(assert (=> b!2512964 (= e!1592389 e!1592386)))

(declare-fun b!2512965 () Bool)

(declare-fun c!400404 () Bool)

(assert (=> b!2512965 (= c!400404 (nullable!2390 (regOne!15458 r!27340)))))

(assert (=> b!2512965 (= e!1592390 e!1592388)))

(declare-fun bm!155992 () Bool)

(declare-fun c!400405 () Bool)

(assert (=> bm!155992 (= call!155998 (derivativeStep!2042 (ite c!400407 (regOne!15459 r!27340) (ite c!400405 (reg!7802 r!27340) (regOne!15458 r!27340))) c!14016))))

(declare-fun bm!155993 () Bool)

(assert (=> bm!155993 (= call!155997 call!155996)))

(declare-fun b!2512966 () Bool)

(assert (=> b!2512966 (= e!1592386 e!1592390)))

(assert (=> b!2512966 (= c!400405 ((_ is Star!7473) r!27340))))

(declare-fun bm!155994 () Bool)

(assert (=> bm!155994 (= call!155996 call!155998)))

(assert (= (and d!716930 c!400408) b!2512961))

(assert (= (and d!716930 (not c!400408)) b!2512963))

(assert (= (and b!2512963 c!400406) b!2512957))

(assert (= (and b!2512963 (not c!400406)) b!2512964))

(assert (= (and b!2512964 c!400407) b!2512959))

(assert (= (and b!2512964 (not c!400407)) b!2512966))

(assert (= (and b!2512966 c!400405) b!2512960))

(assert (= (and b!2512966 (not c!400405)) b!2512965))

(assert (= (and b!2512965 c!400404) b!2512962))

(assert (= (and b!2512965 (not c!400404)) b!2512958))

(assert (= (or b!2512962 b!2512958) bm!155993))

(assert (= (or b!2512960 bm!155993) bm!155994))

(assert (= (or b!2512959 b!2512962) bm!155991))

(assert (= (or b!2512959 bm!155994) bm!155992))

(declare-fun m!2871017 () Bool)

(assert (=> d!716930 m!2871017))

(assert (=> d!716930 m!2870985))

(declare-fun m!2871019 () Bool)

(assert (=> bm!155991 m!2871019))

(assert (=> b!2512965 m!2870959))

(declare-fun m!2871021 () Bool)

(assert (=> bm!155992 m!2871021))

(assert (=> b!2512914 d!716930))

(declare-fun b!2513003 () Bool)

(declare-fun res!1062300 () Bool)

(declare-fun e!1592415 () Bool)

(assert (=> b!2513003 (=> res!1062300 e!1592415)))

(assert (=> b!2513003 (= res!1062300 (not ((_ is Concat!12169) (regOne!15458 r!27340))))))

(declare-fun e!1592417 () Bool)

(assert (=> b!2513003 (= e!1592417 e!1592415)))

(declare-fun b!2513004 () Bool)

(declare-fun e!1592418 () Bool)

(declare-fun call!156007 () Bool)

(assert (=> b!2513004 (= e!1592418 call!156007)))

(declare-fun b!2513005 () Bool)

(declare-fun res!1062302 () Bool)

(assert (=> b!2513005 (=> (not res!1062302) (not e!1592418))))

(declare-fun call!156006 () Bool)

(assert (=> b!2513005 (= res!1062302 call!156006)))

(assert (=> b!2513005 (= e!1592417 e!1592418)))

(declare-fun d!716938 () Bool)

(declare-fun res!1062299 () Bool)

(declare-fun e!1592421 () Bool)

(assert (=> d!716938 (=> res!1062299 e!1592421)))

(assert (=> d!716938 (= res!1062299 ((_ is ElementMatch!7473) (regOne!15458 r!27340)))))

(assert (=> d!716938 (= (validRegex!3099 (regOne!15458 r!27340)) e!1592421)))

(declare-fun bm!156001 () Bool)

(declare-fun call!156008 () Bool)

(assert (=> bm!156001 (= call!156006 call!156008)))

(declare-fun c!400418 () Bool)

(declare-fun bm!156002 () Bool)

(declare-fun c!400417 () Bool)

(assert (=> bm!156002 (= call!156008 (validRegex!3099 (ite c!400417 (reg!7802 (regOne!15458 r!27340)) (ite c!400418 (regOne!15459 (regOne!15458 r!27340)) (regTwo!15458 (regOne!15458 r!27340))))))))

(declare-fun b!2513006 () Bool)

(declare-fun e!1592420 () Bool)

(assert (=> b!2513006 (= e!1592421 e!1592420)))

(assert (=> b!2513006 (= c!400417 ((_ is Star!7473) (regOne!15458 r!27340)))))

(declare-fun b!2513007 () Bool)

(assert (=> b!2513007 (= e!1592420 e!1592417)))

(assert (=> b!2513007 (= c!400418 ((_ is Union!7473) (regOne!15458 r!27340)))))

(declare-fun bm!156003 () Bool)

(assert (=> bm!156003 (= call!156007 (validRegex!3099 (ite c!400418 (regTwo!15459 (regOne!15458 r!27340)) (regOne!15458 (regOne!15458 r!27340)))))))

(declare-fun b!2513008 () Bool)

(declare-fun e!1592416 () Bool)

(assert (=> b!2513008 (= e!1592420 e!1592416)))

(declare-fun res!1062303 () Bool)

(assert (=> b!2513008 (= res!1062303 (not (nullable!2390 (reg!7802 (regOne!15458 r!27340)))))))

(assert (=> b!2513008 (=> (not res!1062303) (not e!1592416))))

(declare-fun b!2513009 () Bool)

(assert (=> b!2513009 (= e!1592416 call!156008)))

(declare-fun b!2513010 () Bool)

(declare-fun e!1592419 () Bool)

(assert (=> b!2513010 (= e!1592415 e!1592419)))

(declare-fun res!1062301 () Bool)

(assert (=> b!2513010 (=> (not res!1062301) (not e!1592419))))

(assert (=> b!2513010 (= res!1062301 call!156007)))

(declare-fun b!2513011 () Bool)

(assert (=> b!2513011 (= e!1592419 call!156006)))

(assert (= (and d!716938 (not res!1062299)) b!2513006))

(assert (= (and b!2513006 c!400417) b!2513008))

(assert (= (and b!2513006 (not c!400417)) b!2513007))

(assert (= (and b!2513008 res!1062303) b!2513009))

(assert (= (and b!2513007 c!400418) b!2513005))

(assert (= (and b!2513007 (not c!400418)) b!2513003))

(assert (= (and b!2513005 res!1062302) b!2513004))

(assert (= (and b!2513003 (not res!1062300)) b!2513010))

(assert (= (and b!2513010 res!1062301) b!2513011))

(assert (= (or b!2513005 b!2513011) bm!156001))

(assert (= (or b!2513004 b!2513010) bm!156003))

(assert (= (or b!2513009 bm!156001) bm!156002))

(declare-fun m!2871023 () Bool)

(assert (=> bm!156002 m!2871023))

(declare-fun m!2871025 () Bool)

(assert (=> bm!156003 m!2871025))

(declare-fun m!2871027 () Bool)

(assert (=> b!2513008 m!2871027))

(assert (=> b!2512909 d!716938))

(declare-fun d!716940 () Bool)

(declare-fun isEmpty!16900 (Option!5858) Bool)

(assert (=> d!716940 (= (isDefined!4680 lt!898190) (not (isEmpty!16900 lt!898190)))))

(declare-fun bs!468825 () Bool)

(assert (= bs!468825 d!716940))

(declare-fun m!2871029 () Bool)

(assert (=> bs!468825 m!2871029))

(assert (=> b!2512908 d!716940))

(declare-fun d!716942 () Bool)

(assert (=> d!716942 (isDefined!4680 (findConcatSeparation!880 lt!898189 (regTwo!15458 r!27340) Nil!29438 tl!4068 tl!4068))))

(declare-fun lt!898213 () Unit!43195)

(declare-fun choose!14884 (Regex!7473 Regex!7473 List!29538) Unit!43195)

(assert (=> d!716942 (= lt!898213 (choose!14884 lt!898189 (regTwo!15458 r!27340) tl!4068))))

(assert (=> d!716942 (validRegex!3099 lt!898189)))

(assert (=> d!716942 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!162 lt!898189 (regTwo!15458 r!27340) tl!4068) lt!898213)))

(declare-fun bs!468826 () Bool)

(assert (= bs!468826 d!716942))

(assert (=> bs!468826 m!2870949))

(assert (=> bs!468826 m!2870949))

(declare-fun m!2871055 () Bool)

(assert (=> bs!468826 m!2871055))

(declare-fun m!2871057 () Bool)

(assert (=> bs!468826 m!2871057))

(declare-fun m!2871059 () Bool)

(assert (=> bs!468826 m!2871059))

(assert (=> b!2512908 d!716942))

(declare-fun b!2513075 () Bool)

(declare-fun e!1592458 () Option!5858)

(assert (=> b!2513075 (= e!1592458 (Some!5857 (tuple2!29477 Nil!29438 tl!4068)))))

(declare-fun b!2513076 () Bool)

(declare-fun res!1062321 () Bool)

(declare-fun e!1592456 () Bool)

(assert (=> b!2513076 (=> (not res!1062321) (not e!1592456))))

(declare-fun lt!898230 () Option!5858)

(assert (=> b!2513076 (= res!1062321 (matchR!3472 lt!898189 (_1!17280 (get!9173 lt!898230))))))

(declare-fun b!2513077 () Bool)

(declare-fun e!1592459 () Option!5858)

(assert (=> b!2513077 (= e!1592459 None!5857)))

(declare-fun b!2513078 () Bool)

(declare-fun e!1592455 () Bool)

(assert (=> b!2513078 (= e!1592455 (not (isDefined!4680 lt!898230)))))

(declare-fun b!2513079 () Bool)

(assert (=> b!2513079 (= e!1592458 e!1592459)))

(declare-fun c!400444 () Bool)

(assert (=> b!2513079 (= c!400444 ((_ is Nil!29438) tl!4068))))

(declare-fun b!2513080 () Bool)

(declare-fun res!1062320 () Bool)

(assert (=> b!2513080 (=> (not res!1062320) (not e!1592456))))

(assert (=> b!2513080 (= res!1062320 (matchR!3472 (regTwo!15458 r!27340) (_2!17280 (get!9173 lt!898230))))))

(declare-fun b!2513081 () Bool)

(declare-fun e!1592457 () Bool)

(assert (=> b!2513081 (= e!1592457 (matchR!3472 (regTwo!15458 r!27340) tl!4068))))

(declare-fun d!716946 () Bool)

(assert (=> d!716946 e!1592455))

(declare-fun res!1062323 () Bool)

(assert (=> d!716946 (=> res!1062323 e!1592455)))

(assert (=> d!716946 (= res!1062323 e!1592456)))

(declare-fun res!1062319 () Bool)

(assert (=> d!716946 (=> (not res!1062319) (not e!1592456))))

(assert (=> d!716946 (= res!1062319 (isDefined!4680 lt!898230))))

(assert (=> d!716946 (= lt!898230 e!1592458)))

(declare-fun c!400443 () Bool)

(assert (=> d!716946 (= c!400443 e!1592457)))

(declare-fun res!1062322 () Bool)

(assert (=> d!716946 (=> (not res!1062322) (not e!1592457))))

(assert (=> d!716946 (= res!1062322 (matchR!3472 lt!898189 Nil!29438))))

(assert (=> d!716946 (validRegex!3099 lt!898189)))

(assert (=> d!716946 (= (findConcatSeparation!880 lt!898189 (regTwo!15458 r!27340) Nil!29438 tl!4068 tl!4068) lt!898230)))

(declare-fun b!2513082 () Bool)

(declare-fun lt!898229 () Unit!43195)

(declare-fun lt!898231 () Unit!43195)

(assert (=> b!2513082 (= lt!898229 lt!898231)))

(assert (=> b!2513082 (= (++!7207 (++!7207 Nil!29438 (Cons!29438 (h!34858 tl!4068) Nil!29438)) (t!211237 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!753 (List!29538 C!15104 List!29538 List!29538) Unit!43195)

(assert (=> b!2513082 (= lt!898231 (lemmaMoveElementToOtherListKeepsConcatEq!753 Nil!29438 (h!34858 tl!4068) (t!211237 tl!4068) tl!4068))))

(assert (=> b!2513082 (= e!1592459 (findConcatSeparation!880 lt!898189 (regTwo!15458 r!27340) (++!7207 Nil!29438 (Cons!29438 (h!34858 tl!4068) Nil!29438)) (t!211237 tl!4068) tl!4068))))

(declare-fun b!2513083 () Bool)

(assert (=> b!2513083 (= e!1592456 (= (++!7207 (_1!17280 (get!9173 lt!898230)) (_2!17280 (get!9173 lt!898230))) tl!4068))))

(assert (= (and d!716946 res!1062322) b!2513081))

(assert (= (and d!716946 c!400443) b!2513075))

(assert (= (and d!716946 (not c!400443)) b!2513079))

(assert (= (and b!2513079 c!400444) b!2513077))

(assert (= (and b!2513079 (not c!400444)) b!2513082))

(assert (= (and d!716946 res!1062319) b!2513076))

(assert (= (and b!2513076 res!1062321) b!2513080))

(assert (= (and b!2513080 res!1062320) b!2513083))

(assert (= (and d!716946 (not res!1062323)) b!2513078))

(declare-fun m!2871083 () Bool)

(assert (=> b!2513082 m!2871083))

(assert (=> b!2513082 m!2871083))

(declare-fun m!2871085 () Bool)

(assert (=> b!2513082 m!2871085))

(declare-fun m!2871087 () Bool)

(assert (=> b!2513082 m!2871087))

(assert (=> b!2513082 m!2871083))

(declare-fun m!2871089 () Bool)

(assert (=> b!2513082 m!2871089))

(declare-fun m!2871091 () Bool)

(assert (=> b!2513078 m!2871091))

(assert (=> d!716946 m!2871091))

(declare-fun m!2871093 () Bool)

(assert (=> d!716946 m!2871093))

(assert (=> d!716946 m!2871059))

(declare-fun m!2871095 () Bool)

(assert (=> b!2513080 m!2871095))

(declare-fun m!2871097 () Bool)

(assert (=> b!2513080 m!2871097))

(declare-fun m!2871099 () Bool)

(assert (=> b!2513081 m!2871099))

(assert (=> b!2513083 m!2871095))

(declare-fun m!2871101 () Bool)

(assert (=> b!2513083 m!2871101))

(assert (=> b!2513076 m!2871095))

(declare-fun m!2871103 () Bool)

(assert (=> b!2513076 m!2871103))

(assert (=> b!2512908 d!716946))

(declare-fun b!2513130 () Bool)

(declare-fun e!1592490 () List!29538)

(assert (=> b!2513130 (= e!1592490 (Cons!29438 (h!34858 (_1!17280 lt!898188)) (++!7207 (t!211237 (_1!17280 lt!898188)) (_2!17280 lt!898188))))))

(declare-fun d!716958 () Bool)

(declare-fun e!1592491 () Bool)

(assert (=> d!716958 e!1592491))

(declare-fun res!1062343 () Bool)

(assert (=> d!716958 (=> (not res!1062343) (not e!1592491))))

(declare-fun lt!898235 () List!29538)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4018 (List!29538) (InoxSet C!15104))

(assert (=> d!716958 (= res!1062343 (= (content!4018 lt!898235) ((_ map or) (content!4018 (_1!17280 lt!898188)) (content!4018 (_2!17280 lt!898188)))))))

(assert (=> d!716958 (= lt!898235 e!1592490)))

(declare-fun c!400458 () Bool)

(assert (=> d!716958 (= c!400458 ((_ is Nil!29438) (_1!17280 lt!898188)))))

(assert (=> d!716958 (= (++!7207 (_1!17280 lt!898188) (_2!17280 lt!898188)) lt!898235)))

(declare-fun b!2513129 () Bool)

(assert (=> b!2513129 (= e!1592490 (_2!17280 lt!898188))))

(declare-fun b!2513132 () Bool)

(assert (=> b!2513132 (= e!1592491 (or (not (= (_2!17280 lt!898188) Nil!29438)) (= lt!898235 (_1!17280 lt!898188))))))

(declare-fun b!2513131 () Bool)

(declare-fun res!1062344 () Bool)

(assert (=> b!2513131 (=> (not res!1062344) (not e!1592491))))

(declare-fun size!22902 (List!29538) Int)

(assert (=> b!2513131 (= res!1062344 (= (size!22902 lt!898235) (+ (size!22902 (_1!17280 lt!898188)) (size!22902 (_2!17280 lt!898188)))))))

(assert (= (and d!716958 c!400458) b!2513129))

(assert (= (and d!716958 (not c!400458)) b!2513130))

(assert (= (and d!716958 res!1062343) b!2513131))

(assert (= (and b!2513131 res!1062344) b!2513132))

(declare-fun m!2871111 () Bool)

(assert (=> b!2513130 m!2871111))

(declare-fun m!2871115 () Bool)

(assert (=> d!716958 m!2871115))

(declare-fun m!2871119 () Bool)

(assert (=> d!716958 m!2871119))

(declare-fun m!2871123 () Bool)

(assert (=> d!716958 m!2871123))

(declare-fun m!2871125 () Bool)

(assert (=> b!2513131 m!2871125))

(declare-fun m!2871127 () Bool)

(assert (=> b!2513131 m!2871127))

(declare-fun m!2871131 () Bool)

(assert (=> b!2513131 m!2871131))

(assert (=> b!2512908 d!716958))

(declare-fun d!716964 () Bool)

(assert (=> d!716964 (= (get!9173 lt!898190) (v!31788 lt!898190))))

(assert (=> b!2512908 d!716964))

(declare-fun b!2513225 () Bool)

(declare-fun res!1062400 () Bool)

(declare-fun e!1592546 () Bool)

(assert (=> b!2513225 (=> res!1062400 e!1592546)))

(declare-fun isEmpty!16902 (List!29538) Bool)

(declare-fun tail!4015 (List!29538) List!29538)

(assert (=> b!2513225 (= res!1062400 (not (isEmpty!16902 (tail!4015 tl!4068))))))

(declare-fun b!2513226 () Bool)

(declare-fun e!1592544 () Bool)

(declare-fun e!1592543 () Bool)

(assert (=> b!2513226 (= e!1592544 e!1592543)))

(declare-fun res!1062403 () Bool)

(assert (=> b!2513226 (=> (not res!1062403) (not e!1592543))))

(declare-fun lt!898246 () Bool)

(assert (=> b!2513226 (= res!1062403 (not lt!898246))))

(declare-fun b!2513227 () Bool)

(declare-fun e!1592547 () Bool)

(declare-fun e!1592542 () Bool)

(assert (=> b!2513227 (= e!1592547 e!1592542)))

(declare-fun c!400480 () Bool)

(assert (=> b!2513227 (= c!400480 ((_ is EmptyLang!7473) EmptyLang!7473))))

(declare-fun d!716968 () Bool)

(assert (=> d!716968 e!1592547))

(declare-fun c!400479 () Bool)

(assert (=> d!716968 (= c!400479 ((_ is EmptyExpr!7473) EmptyLang!7473))))

(declare-fun e!1592541 () Bool)

(assert (=> d!716968 (= lt!898246 e!1592541)))

(declare-fun c!400478 () Bool)

(assert (=> d!716968 (= c!400478 (isEmpty!16902 tl!4068))))

(assert (=> d!716968 (validRegex!3099 EmptyLang!7473)))

(assert (=> d!716968 (= (matchR!3472 EmptyLang!7473 tl!4068) lt!898246)))

(declare-fun b!2513228 () Bool)

(declare-fun res!1062404 () Bool)

(assert (=> b!2513228 (=> res!1062404 e!1592544)))

(declare-fun e!1592545 () Bool)

(assert (=> b!2513228 (= res!1062404 e!1592545)))

(declare-fun res!1062406 () Bool)

(assert (=> b!2513228 (=> (not res!1062406) (not e!1592545))))

(assert (=> b!2513228 (= res!1062406 lt!898246)))

(declare-fun b!2513229 () Bool)

(declare-fun head!5738 (List!29538) C!15104)

(assert (=> b!2513229 (= e!1592545 (= (head!5738 tl!4068) (c!400387 EmptyLang!7473)))))

(declare-fun b!2513230 () Bool)

(declare-fun res!1062402 () Bool)

(assert (=> b!2513230 (=> (not res!1062402) (not e!1592545))))

(assert (=> b!2513230 (= res!1062402 (isEmpty!16902 (tail!4015 tl!4068)))))

(declare-fun b!2513231 () Bool)

(declare-fun res!1062401 () Bool)

(assert (=> b!2513231 (=> (not res!1062401) (not e!1592545))))

(declare-fun call!156040 () Bool)

(assert (=> b!2513231 (= res!1062401 (not call!156040))))

(declare-fun b!2513232 () Bool)

(assert (=> b!2513232 (= e!1592542 (not lt!898246))))

(declare-fun b!2513233 () Bool)

(assert (=> b!2513233 (= e!1592543 e!1592546)))

(declare-fun res!1062405 () Bool)

(assert (=> b!2513233 (=> res!1062405 e!1592546)))

(assert (=> b!2513233 (= res!1062405 call!156040)))

(declare-fun b!2513234 () Bool)

(assert (=> b!2513234 (= e!1592541 (nullable!2390 EmptyLang!7473))))

(declare-fun b!2513235 () Bool)

(declare-fun res!1062399 () Bool)

(assert (=> b!2513235 (=> res!1062399 e!1592544)))

(assert (=> b!2513235 (= res!1062399 (not ((_ is ElementMatch!7473) EmptyLang!7473)))))

(assert (=> b!2513235 (= e!1592542 e!1592544)))

(declare-fun b!2513236 () Bool)

(assert (=> b!2513236 (= e!1592541 (matchR!3472 (derivativeStep!2042 EmptyLang!7473 (head!5738 tl!4068)) (tail!4015 tl!4068)))))

(declare-fun b!2513237 () Bool)

(assert (=> b!2513237 (= e!1592546 (not (= (head!5738 tl!4068) (c!400387 EmptyLang!7473))))))

(declare-fun b!2513238 () Bool)

(assert (=> b!2513238 (= e!1592547 (= lt!898246 call!156040))))

(declare-fun bm!156035 () Bool)

(assert (=> bm!156035 (= call!156040 (isEmpty!16902 tl!4068))))

(assert (= (and d!716968 c!400478) b!2513234))

(assert (= (and d!716968 (not c!400478)) b!2513236))

(assert (= (and d!716968 c!400479) b!2513238))

(assert (= (and d!716968 (not c!400479)) b!2513227))

(assert (= (and b!2513227 c!400480) b!2513232))

(assert (= (and b!2513227 (not c!400480)) b!2513235))

(assert (= (and b!2513235 (not res!1062399)) b!2513228))

(assert (= (and b!2513228 res!1062406) b!2513231))

(assert (= (and b!2513231 res!1062401) b!2513230))

(assert (= (and b!2513230 res!1062402) b!2513229))

(assert (= (and b!2513228 (not res!1062404)) b!2513226))

(assert (= (and b!2513226 res!1062403) b!2513233))

(assert (= (and b!2513233 (not res!1062405)) b!2513225))

(assert (= (and b!2513225 (not res!1062400)) b!2513237))

(assert (= (or b!2513238 b!2513231 b!2513233) bm!156035))

(declare-fun m!2871177 () Bool)

(assert (=> d!716968 m!2871177))

(declare-fun m!2871181 () Bool)

(assert (=> d!716968 m!2871181))

(declare-fun m!2871183 () Bool)

(assert (=> b!2513230 m!2871183))

(assert (=> b!2513230 m!2871183))

(declare-fun m!2871185 () Bool)

(assert (=> b!2513230 m!2871185))

(assert (=> b!2513225 m!2871183))

(assert (=> b!2513225 m!2871183))

(assert (=> b!2513225 m!2871185))

(declare-fun m!2871187 () Bool)

(assert (=> b!2513229 m!2871187))

(declare-fun m!2871189 () Bool)

(assert (=> b!2513234 m!2871189))

(assert (=> bm!156035 m!2871177))

(assert (=> b!2513236 m!2871187))

(assert (=> b!2513236 m!2871187))

(declare-fun m!2871195 () Bool)

(assert (=> b!2513236 m!2871195))

(assert (=> b!2513236 m!2871183))

(assert (=> b!2513236 m!2871195))

(assert (=> b!2513236 m!2871183))

(declare-fun m!2871199 () Bool)

(assert (=> b!2513236 m!2871199))

(assert (=> b!2513237 m!2871187))

(assert (=> b!2512917 d!716968))

(declare-fun b!2513241 () Bool)

(declare-fun res!1062408 () Bool)

(declare-fun e!1592554 () Bool)

(assert (=> b!2513241 (=> res!1062408 e!1592554)))

(assert (=> b!2513241 (= res!1062408 (not (isEmpty!16902 (tail!4015 Nil!29438))))))

(declare-fun b!2513242 () Bool)

(declare-fun e!1592552 () Bool)

(declare-fun e!1592551 () Bool)

(assert (=> b!2513242 (= e!1592552 e!1592551)))

(declare-fun res!1062411 () Bool)

(assert (=> b!2513242 (=> (not res!1062411) (not e!1592551))))

(declare-fun lt!898251 () Bool)

(assert (=> b!2513242 (= res!1062411 (not lt!898251))))

(declare-fun b!2513243 () Bool)

(declare-fun e!1592555 () Bool)

(declare-fun e!1592550 () Bool)

(assert (=> b!2513243 (= e!1592555 e!1592550)))

(declare-fun c!400484 () Bool)

(assert (=> b!2513243 (= c!400484 ((_ is EmptyLang!7473) (derivative!168 lt!898186 tl!4068)))))

(declare-fun d!716980 () Bool)

(assert (=> d!716980 e!1592555))

(declare-fun c!400483 () Bool)

(assert (=> d!716980 (= c!400483 ((_ is EmptyExpr!7473) (derivative!168 lt!898186 tl!4068)))))

(declare-fun e!1592549 () Bool)

(assert (=> d!716980 (= lt!898251 e!1592549)))

(declare-fun c!400482 () Bool)

(assert (=> d!716980 (= c!400482 (isEmpty!16902 Nil!29438))))

(assert (=> d!716980 (validRegex!3099 (derivative!168 lt!898186 tl!4068))))

(assert (=> d!716980 (= (matchR!3472 (derivative!168 lt!898186 tl!4068) Nil!29438) lt!898251)))

(declare-fun b!2513244 () Bool)

(declare-fun res!1062412 () Bool)

(assert (=> b!2513244 (=> res!1062412 e!1592552)))

(declare-fun e!1592553 () Bool)

(assert (=> b!2513244 (= res!1062412 e!1592553)))

(declare-fun res!1062414 () Bool)

(assert (=> b!2513244 (=> (not res!1062414) (not e!1592553))))

(assert (=> b!2513244 (= res!1062414 lt!898251)))

(declare-fun b!2513245 () Bool)

(assert (=> b!2513245 (= e!1592553 (= (head!5738 Nil!29438) (c!400387 (derivative!168 lt!898186 tl!4068))))))

(declare-fun b!2513246 () Bool)

(declare-fun res!1062410 () Bool)

(assert (=> b!2513246 (=> (not res!1062410) (not e!1592553))))

(assert (=> b!2513246 (= res!1062410 (isEmpty!16902 (tail!4015 Nil!29438)))))

(declare-fun b!2513247 () Bool)

(declare-fun res!1062409 () Bool)

(assert (=> b!2513247 (=> (not res!1062409) (not e!1592553))))

(declare-fun call!156041 () Bool)

(assert (=> b!2513247 (= res!1062409 (not call!156041))))

(declare-fun b!2513248 () Bool)

(assert (=> b!2513248 (= e!1592550 (not lt!898251))))

(declare-fun b!2513249 () Bool)

(assert (=> b!2513249 (= e!1592551 e!1592554)))

(declare-fun res!1062413 () Bool)

(assert (=> b!2513249 (=> res!1062413 e!1592554)))

(assert (=> b!2513249 (= res!1062413 call!156041)))

(declare-fun b!2513250 () Bool)

(assert (=> b!2513250 (= e!1592549 (nullable!2390 (derivative!168 lt!898186 tl!4068)))))

(declare-fun b!2513251 () Bool)

(declare-fun res!1062407 () Bool)

(assert (=> b!2513251 (=> res!1062407 e!1592552)))

(assert (=> b!2513251 (= res!1062407 (not ((_ is ElementMatch!7473) (derivative!168 lt!898186 tl!4068))))))

(assert (=> b!2513251 (= e!1592550 e!1592552)))

(declare-fun b!2513252 () Bool)

(assert (=> b!2513252 (= e!1592549 (matchR!3472 (derivativeStep!2042 (derivative!168 lt!898186 tl!4068) (head!5738 Nil!29438)) (tail!4015 Nil!29438)))))

(declare-fun b!2513253 () Bool)

(assert (=> b!2513253 (= e!1592554 (not (= (head!5738 Nil!29438) (c!400387 (derivative!168 lt!898186 tl!4068)))))))

(declare-fun b!2513254 () Bool)

(assert (=> b!2513254 (= e!1592555 (= lt!898251 call!156041))))

(declare-fun bm!156036 () Bool)

(assert (=> bm!156036 (= call!156041 (isEmpty!16902 Nil!29438))))

(assert (= (and d!716980 c!400482) b!2513250))

(assert (= (and d!716980 (not c!400482)) b!2513252))

(assert (= (and d!716980 c!400483) b!2513254))

(assert (= (and d!716980 (not c!400483)) b!2513243))

(assert (= (and b!2513243 c!400484) b!2513248))

(assert (= (and b!2513243 (not c!400484)) b!2513251))

(assert (= (and b!2513251 (not res!1062407)) b!2513244))

(assert (= (and b!2513244 res!1062414) b!2513247))

(assert (= (and b!2513247 res!1062409) b!2513246))

(assert (= (and b!2513246 res!1062410) b!2513245))

(assert (= (and b!2513244 (not res!1062412)) b!2513242))

(assert (= (and b!2513242 res!1062411) b!2513249))

(assert (= (and b!2513249 (not res!1062413)) b!2513241))

(assert (= (and b!2513241 (not res!1062408)) b!2513253))

(assert (= (or b!2513254 b!2513247 b!2513249) bm!156036))

(declare-fun m!2871201 () Bool)

(assert (=> d!716980 m!2871201))

(assert (=> d!716980 m!2870965))

(declare-fun m!2871203 () Bool)

(assert (=> d!716980 m!2871203))

(declare-fun m!2871205 () Bool)

(assert (=> b!2513246 m!2871205))

(assert (=> b!2513246 m!2871205))

(declare-fun m!2871207 () Bool)

(assert (=> b!2513246 m!2871207))

(assert (=> b!2513241 m!2871205))

(assert (=> b!2513241 m!2871205))

(assert (=> b!2513241 m!2871207))

(declare-fun m!2871209 () Bool)

(assert (=> b!2513245 m!2871209))

(assert (=> b!2513250 m!2870965))

(declare-fun m!2871211 () Bool)

(assert (=> b!2513250 m!2871211))

(assert (=> bm!156036 m!2871201))

(assert (=> b!2513252 m!2871209))

(assert (=> b!2513252 m!2870965))

(assert (=> b!2513252 m!2871209))

(declare-fun m!2871213 () Bool)

(assert (=> b!2513252 m!2871213))

(assert (=> b!2513252 m!2871205))

(assert (=> b!2513252 m!2871213))

(assert (=> b!2513252 m!2871205))

(declare-fun m!2871215 () Bool)

(assert (=> b!2513252 m!2871215))

(assert (=> b!2513253 m!2871209))

(assert (=> b!2512911 d!716980))

(declare-fun b!2513255 () Bool)

(declare-fun e!1592559 () Regex!7473)

(assert (=> b!2513255 (= e!1592559 (ite (= c!14016 (c!400387 (regOne!15458 r!27340))) EmptyExpr!7473 EmptyLang!7473))))

(declare-fun d!716982 () Bool)

(declare-fun lt!898254 () Regex!7473)

(assert (=> d!716982 (validRegex!3099 lt!898254)))

(declare-fun e!1592557 () Regex!7473)

(assert (=> d!716982 (= lt!898254 e!1592557)))

(declare-fun c!400489 () Bool)

(assert (=> d!716982 (= c!400489 (or ((_ is EmptyExpr!7473) (regOne!15458 r!27340)) ((_ is EmptyLang!7473) (regOne!15458 r!27340))))))

(assert (=> d!716982 (validRegex!3099 (regOne!15458 r!27340))))

(assert (=> d!716982 (= (derivativeStep!2042 (regOne!15458 r!27340) c!14016) lt!898254)))

(declare-fun b!2513256 () Bool)

(declare-fun e!1592558 () Regex!7473)

(declare-fun call!156043 () Regex!7473)

(assert (=> b!2513256 (= e!1592558 (Union!7473 (Concat!12169 call!156043 (regTwo!15458 (regOne!15458 r!27340))) EmptyLang!7473))))

(declare-fun b!2513257 () Bool)

(declare-fun e!1592556 () Regex!7473)

(declare-fun call!156044 () Regex!7473)

(declare-fun call!156045 () Regex!7473)

(assert (=> b!2513257 (= e!1592556 (Union!7473 call!156044 call!156045))))

(declare-fun b!2513258 () Bool)

(declare-fun e!1592560 () Regex!7473)

(declare-fun call!156042 () Regex!7473)

(assert (=> b!2513258 (= e!1592560 (Concat!12169 call!156042 (regOne!15458 r!27340)))))

(declare-fun c!400488 () Bool)

(declare-fun bm!156037 () Bool)

(assert (=> bm!156037 (= call!156045 (derivativeStep!2042 (ite c!400488 (regTwo!15459 (regOne!15458 r!27340)) (regTwo!15458 (regOne!15458 r!27340))) c!14016))))

(declare-fun b!2513259 () Bool)

(assert (=> b!2513259 (= e!1592557 EmptyLang!7473)))

(declare-fun b!2513260 () Bool)

(assert (=> b!2513260 (= e!1592558 (Union!7473 (Concat!12169 call!156043 (regTwo!15458 (regOne!15458 r!27340))) call!156045))))

(declare-fun b!2513261 () Bool)

(assert (=> b!2513261 (= e!1592557 e!1592559)))

(declare-fun c!400487 () Bool)

(assert (=> b!2513261 (= c!400487 ((_ is ElementMatch!7473) (regOne!15458 r!27340)))))

(declare-fun b!2513262 () Bool)

(assert (=> b!2513262 (= c!400488 ((_ is Union!7473) (regOne!15458 r!27340)))))

(assert (=> b!2513262 (= e!1592559 e!1592556)))

(declare-fun b!2513263 () Bool)

(declare-fun c!400485 () Bool)

(assert (=> b!2513263 (= c!400485 (nullable!2390 (regOne!15458 (regOne!15458 r!27340))))))

(assert (=> b!2513263 (= e!1592560 e!1592558)))

(declare-fun c!400486 () Bool)

(declare-fun bm!156038 () Bool)

(assert (=> bm!156038 (= call!156044 (derivativeStep!2042 (ite c!400488 (regOne!15459 (regOne!15458 r!27340)) (ite c!400486 (reg!7802 (regOne!15458 r!27340)) (regOne!15458 (regOne!15458 r!27340)))) c!14016))))

(declare-fun bm!156039 () Bool)

(assert (=> bm!156039 (= call!156043 call!156042)))

(declare-fun b!2513264 () Bool)

(assert (=> b!2513264 (= e!1592556 e!1592560)))

(assert (=> b!2513264 (= c!400486 ((_ is Star!7473) (regOne!15458 r!27340)))))

(declare-fun bm!156040 () Bool)

(assert (=> bm!156040 (= call!156042 call!156044)))

(assert (= (and d!716982 c!400489) b!2513259))

(assert (= (and d!716982 (not c!400489)) b!2513261))

(assert (= (and b!2513261 c!400487) b!2513255))

(assert (= (and b!2513261 (not c!400487)) b!2513262))

(assert (= (and b!2513262 c!400488) b!2513257))

(assert (= (and b!2513262 (not c!400488)) b!2513264))

(assert (= (and b!2513264 c!400486) b!2513258))

(assert (= (and b!2513264 (not c!400486)) b!2513263))

(assert (= (and b!2513263 c!400485) b!2513260))

(assert (= (and b!2513263 (not c!400485)) b!2513256))

(assert (= (or b!2513260 b!2513256) bm!156039))

(assert (= (or b!2513258 bm!156039) bm!156040))

(assert (= (or b!2513257 b!2513260) bm!156037))

(assert (= (or b!2513257 bm!156040) bm!156038))

(declare-fun m!2871219 () Bool)

(assert (=> d!716982 m!2871219))

(assert (=> d!716982 m!2870947))

(declare-fun m!2871223 () Bool)

(assert (=> bm!156037 m!2871223))

(declare-fun m!2871227 () Bool)

(assert (=> b!2513263 m!2871227))

(declare-fun m!2871229 () Bool)

(assert (=> bm!156038 m!2871229))

(assert (=> b!2512911 d!716982))

(declare-fun d!716986 () Bool)

(declare-fun lt!898257 () Regex!7473)

(assert (=> d!716986 (validRegex!3099 lt!898257)))

(declare-fun e!1592575 () Regex!7473)

(assert (=> d!716986 (= lt!898257 e!1592575)))

(declare-fun c!400495 () Bool)

(assert (=> d!716986 (= c!400495 ((_ is Cons!29438) tl!4068))))

(assert (=> d!716986 (validRegex!3099 EmptyLang!7473)))

(assert (=> d!716986 (= (derivative!168 EmptyLang!7473 tl!4068) lt!898257)))

(declare-fun b!2513281 () Bool)

(assert (=> b!2513281 (= e!1592575 (derivative!168 (derivativeStep!2042 EmptyLang!7473 (h!34858 tl!4068)) (t!211237 tl!4068)))))

(declare-fun b!2513283 () Bool)

(assert (=> b!2513283 (= e!1592575 EmptyLang!7473)))

(assert (= (and d!716986 c!400495) b!2513281))

(assert (= (and d!716986 (not c!400495)) b!2513283))

(declare-fun m!2871233 () Bool)

(assert (=> d!716986 m!2871233))

(assert (=> d!716986 m!2871181))

(declare-fun m!2871235 () Bool)

(assert (=> b!2513281 m!2871235))

(assert (=> b!2513281 m!2871235))

(declare-fun m!2871237 () Bool)

(assert (=> b!2513281 m!2871237))

(assert (=> b!2512911 d!716986))

(declare-fun d!716990 () Bool)

(assert (=> d!716990 (= (matchR!3472 lt!898186 tl!4068) (matchR!3472 (derivative!168 lt!898186 tl!4068) Nil!29438))))

(declare-fun lt!898261 () Unit!43195)

(declare-fun choose!14888 (Regex!7473 List!29538) Unit!43195)

(assert (=> d!716990 (= lt!898261 (choose!14888 lt!898186 tl!4068))))

(assert (=> d!716990 (validRegex!3099 lt!898186)))

(assert (=> d!716990 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!118 lt!898186 tl!4068) lt!898261)))

(declare-fun bs!468832 () Bool)

(assert (= bs!468832 d!716990))

(assert (=> bs!468832 m!2870965))

(assert (=> bs!468832 m!2870967))

(assert (=> bs!468832 m!2870971))

(assert (=> bs!468832 m!2870965))

(declare-fun m!2871251 () Bool)

(assert (=> bs!468832 m!2871251))

(declare-fun m!2871253 () Bool)

(assert (=> bs!468832 m!2871253))

(assert (=> b!2512911 d!716990))

(declare-fun d!716994 () Bool)

(declare-fun e!1592598 () Bool)

(assert (=> d!716994 e!1592598))

(declare-fun res!1062441 () Bool)

(assert (=> d!716994 (=> res!1062441 e!1592598)))

(assert (=> d!716994 (= res!1062441 (matchR!3472 lt!898192 tl!4068))))

(declare-fun lt!898264 () Unit!43195)

(declare-fun choose!14889 (Regex!7473 Regex!7473 List!29538) Unit!43195)

(assert (=> d!716994 (= lt!898264 (choose!14889 lt!898192 EmptyLang!7473 tl!4068))))

(declare-fun e!1592597 () Bool)

(assert (=> d!716994 e!1592597))

(declare-fun res!1062440 () Bool)

(assert (=> d!716994 (=> (not res!1062440) (not e!1592597))))

(assert (=> d!716994 (= res!1062440 (validRegex!3099 lt!898192))))

(assert (=> d!716994 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!160 lt!898192 EmptyLang!7473 tl!4068) lt!898264)))

(declare-fun b!2513343 () Bool)

(assert (=> b!2513343 (= e!1592597 (validRegex!3099 EmptyLang!7473))))

(declare-fun b!2513344 () Bool)

(assert (=> b!2513344 (= e!1592598 (matchR!3472 EmptyLang!7473 tl!4068))))

(assert (= (and d!716994 res!1062440) b!2513343))

(assert (= (and d!716994 (not res!1062441)) b!2513344))

(assert (=> d!716994 m!2870961))

(declare-fun m!2871255 () Bool)

(assert (=> d!716994 m!2871255))

(declare-fun m!2871257 () Bool)

(assert (=> d!716994 m!2871257))

(assert (=> b!2513343 m!2871181))

(assert (=> b!2513344 m!2870987))

(assert (=> b!2512911 d!716994))

(declare-fun d!716996 () Bool)

(declare-fun lt!898265 () Regex!7473)

(assert (=> d!716996 (validRegex!3099 lt!898265)))

(declare-fun e!1592599 () Regex!7473)

(assert (=> d!716996 (= lt!898265 e!1592599)))

(declare-fun c!400499 () Bool)

(assert (=> d!716996 (= c!400499 ((_ is Cons!29438) tl!4068))))

(assert (=> d!716996 (validRegex!3099 lt!898186)))

(assert (=> d!716996 (= (derivative!168 lt!898186 tl!4068) lt!898265)))

(declare-fun b!2513345 () Bool)

(assert (=> b!2513345 (= e!1592599 (derivative!168 (derivativeStep!2042 lt!898186 (h!34858 tl!4068)) (t!211237 tl!4068)))))

(declare-fun b!2513346 () Bool)

(assert (=> b!2513346 (= e!1592599 lt!898186)))

(assert (= (and d!716996 c!400499) b!2513345))

(assert (= (and d!716996 (not c!400499)) b!2513346))

(declare-fun m!2871259 () Bool)

(assert (=> d!716996 m!2871259))

(assert (=> d!716996 m!2871251))

(declare-fun m!2871261 () Bool)

(assert (=> b!2513345 m!2871261))

(assert (=> b!2513345 m!2871261))

(declare-fun m!2871263 () Bool)

(assert (=> b!2513345 m!2871263))

(assert (=> b!2512911 d!716996))

(declare-fun d!716998 () Bool)

(assert (=> d!716998 (= (derivative!168 EmptyLang!7473 tl!4068) EmptyLang!7473)))

(declare-fun lt!898268 () Unit!43195)

(declare-fun choose!14890 (Regex!7473 List!29538) Unit!43195)

(assert (=> d!716998 (= lt!898268 (choose!14890 EmptyLang!7473 tl!4068))))

(assert (=> d!716998 (= EmptyLang!7473 EmptyLang!7473)))

(assert (=> d!716998 (= (lemmaEmptyLangDerivativeIsAFixPoint!20 EmptyLang!7473 tl!4068) lt!898268)))

(declare-fun bs!468833 () Bool)

(assert (= bs!468833 d!716998))

(assert (=> bs!468833 m!2870975))

(declare-fun m!2871265 () Bool)

(assert (=> bs!468833 m!2871265))

(assert (=> b!2512911 d!716998))

(declare-fun b!2513347 () Bool)

(declare-fun res!1062443 () Bool)

(declare-fun e!1592605 () Bool)

(assert (=> b!2513347 (=> res!1062443 e!1592605)))

(assert (=> b!2513347 (= res!1062443 (not (isEmpty!16902 (tail!4015 tl!4068))))))

(declare-fun b!2513348 () Bool)

(declare-fun e!1592603 () Bool)

(declare-fun e!1592602 () Bool)

(assert (=> b!2513348 (= e!1592603 e!1592602)))

(declare-fun res!1062446 () Bool)

(assert (=> b!2513348 (=> (not res!1062446) (not e!1592602))))

(declare-fun lt!898269 () Bool)

(assert (=> b!2513348 (= res!1062446 (not lt!898269))))

(declare-fun b!2513349 () Bool)

(declare-fun e!1592606 () Bool)

(declare-fun e!1592601 () Bool)

(assert (=> b!2513349 (= e!1592606 e!1592601)))

(declare-fun c!400502 () Bool)

(assert (=> b!2513349 (= c!400502 ((_ is EmptyLang!7473) lt!898186))))

(declare-fun d!717000 () Bool)

(assert (=> d!717000 e!1592606))

(declare-fun c!400501 () Bool)

(assert (=> d!717000 (= c!400501 ((_ is EmptyExpr!7473) lt!898186))))

(declare-fun e!1592600 () Bool)

(assert (=> d!717000 (= lt!898269 e!1592600)))

(declare-fun c!400500 () Bool)

(assert (=> d!717000 (= c!400500 (isEmpty!16902 tl!4068))))

(assert (=> d!717000 (validRegex!3099 lt!898186)))

(assert (=> d!717000 (= (matchR!3472 lt!898186 tl!4068) lt!898269)))

(declare-fun b!2513350 () Bool)

(declare-fun res!1062447 () Bool)

(assert (=> b!2513350 (=> res!1062447 e!1592603)))

(declare-fun e!1592604 () Bool)

(assert (=> b!2513350 (= res!1062447 e!1592604)))

(declare-fun res!1062449 () Bool)

(assert (=> b!2513350 (=> (not res!1062449) (not e!1592604))))

(assert (=> b!2513350 (= res!1062449 lt!898269)))

(declare-fun b!2513351 () Bool)

(assert (=> b!2513351 (= e!1592604 (= (head!5738 tl!4068) (c!400387 lt!898186)))))

(declare-fun b!2513352 () Bool)

(declare-fun res!1062445 () Bool)

(assert (=> b!2513352 (=> (not res!1062445) (not e!1592604))))

(assert (=> b!2513352 (= res!1062445 (isEmpty!16902 (tail!4015 tl!4068)))))

(declare-fun b!2513353 () Bool)

(declare-fun res!1062444 () Bool)

(assert (=> b!2513353 (=> (not res!1062444) (not e!1592604))))

(declare-fun call!156051 () Bool)

(assert (=> b!2513353 (= res!1062444 (not call!156051))))

(declare-fun b!2513354 () Bool)

(assert (=> b!2513354 (= e!1592601 (not lt!898269))))

(declare-fun b!2513355 () Bool)

(assert (=> b!2513355 (= e!1592602 e!1592605)))

(declare-fun res!1062448 () Bool)

(assert (=> b!2513355 (=> res!1062448 e!1592605)))

(assert (=> b!2513355 (= res!1062448 call!156051)))

(declare-fun b!2513356 () Bool)

(assert (=> b!2513356 (= e!1592600 (nullable!2390 lt!898186))))

(declare-fun b!2513357 () Bool)

(declare-fun res!1062442 () Bool)

(assert (=> b!2513357 (=> res!1062442 e!1592603)))

(assert (=> b!2513357 (= res!1062442 (not ((_ is ElementMatch!7473) lt!898186)))))

(assert (=> b!2513357 (= e!1592601 e!1592603)))

(declare-fun b!2513358 () Bool)

(assert (=> b!2513358 (= e!1592600 (matchR!3472 (derivativeStep!2042 lt!898186 (head!5738 tl!4068)) (tail!4015 tl!4068)))))

(declare-fun b!2513359 () Bool)

(assert (=> b!2513359 (= e!1592605 (not (= (head!5738 tl!4068) (c!400387 lt!898186))))))

(declare-fun b!2513360 () Bool)

(assert (=> b!2513360 (= e!1592606 (= lt!898269 call!156051))))

(declare-fun bm!156046 () Bool)

(assert (=> bm!156046 (= call!156051 (isEmpty!16902 tl!4068))))

(assert (= (and d!717000 c!400500) b!2513356))

(assert (= (and d!717000 (not c!400500)) b!2513358))

(assert (= (and d!717000 c!400501) b!2513360))

(assert (= (and d!717000 (not c!400501)) b!2513349))

(assert (= (and b!2513349 c!400502) b!2513354))

(assert (= (and b!2513349 (not c!400502)) b!2513357))

(assert (= (and b!2513357 (not res!1062442)) b!2513350))

(assert (= (and b!2513350 res!1062449) b!2513353))

(assert (= (and b!2513353 res!1062444) b!2513352))

(assert (= (and b!2513352 res!1062445) b!2513351))

(assert (= (and b!2513350 (not res!1062447)) b!2513348))

(assert (= (and b!2513348 res!1062446) b!2513355))

(assert (= (and b!2513355 (not res!1062448)) b!2513347))

(assert (= (and b!2513347 (not res!1062443)) b!2513359))

(assert (= (or b!2513360 b!2513353 b!2513355) bm!156046))

(assert (=> d!717000 m!2871177))

(assert (=> d!717000 m!2871251))

(assert (=> b!2513352 m!2871183))

(assert (=> b!2513352 m!2871183))

(assert (=> b!2513352 m!2871185))

(assert (=> b!2513347 m!2871183))

(assert (=> b!2513347 m!2871183))

(assert (=> b!2513347 m!2871185))

(assert (=> b!2513351 m!2871187))

(declare-fun m!2871267 () Bool)

(assert (=> b!2513356 m!2871267))

(assert (=> bm!156046 m!2871177))

(assert (=> b!2513358 m!2871187))

(assert (=> b!2513358 m!2871187))

(declare-fun m!2871269 () Bool)

(assert (=> b!2513358 m!2871269))

(assert (=> b!2513358 m!2871183))

(assert (=> b!2513358 m!2871269))

(assert (=> b!2513358 m!2871183))

(declare-fun m!2871271 () Bool)

(assert (=> b!2513358 m!2871271))

(assert (=> b!2513359 m!2871187))

(assert (=> b!2512911 d!717000))

(declare-fun b!2513361 () Bool)

(declare-fun res!1062451 () Bool)

(declare-fun e!1592612 () Bool)

(assert (=> b!2513361 (=> res!1062451 e!1592612)))

(assert (=> b!2513361 (= res!1062451 (not (isEmpty!16902 (tail!4015 tl!4068))))))

(declare-fun b!2513362 () Bool)

(declare-fun e!1592610 () Bool)

(declare-fun e!1592609 () Bool)

(assert (=> b!2513362 (= e!1592610 e!1592609)))

(declare-fun res!1062454 () Bool)

(assert (=> b!2513362 (=> (not res!1062454) (not e!1592609))))

(declare-fun lt!898270 () Bool)

(assert (=> b!2513362 (= res!1062454 (not lt!898270))))

(declare-fun b!2513363 () Bool)

(declare-fun e!1592613 () Bool)

(declare-fun e!1592608 () Bool)

(assert (=> b!2513363 (= e!1592613 e!1592608)))

(declare-fun c!400505 () Bool)

(assert (=> b!2513363 (= c!400505 ((_ is EmptyLang!7473) lt!898192))))

(declare-fun d!717002 () Bool)

(assert (=> d!717002 e!1592613))

(declare-fun c!400504 () Bool)

(assert (=> d!717002 (= c!400504 ((_ is EmptyExpr!7473) lt!898192))))

(declare-fun e!1592607 () Bool)

(assert (=> d!717002 (= lt!898270 e!1592607)))

(declare-fun c!400503 () Bool)

(assert (=> d!717002 (= c!400503 (isEmpty!16902 tl!4068))))

(assert (=> d!717002 (validRegex!3099 lt!898192)))

(assert (=> d!717002 (= (matchR!3472 lt!898192 tl!4068) lt!898270)))

(declare-fun b!2513364 () Bool)

(declare-fun res!1062455 () Bool)

(assert (=> b!2513364 (=> res!1062455 e!1592610)))

(declare-fun e!1592611 () Bool)

(assert (=> b!2513364 (= res!1062455 e!1592611)))

(declare-fun res!1062457 () Bool)

(assert (=> b!2513364 (=> (not res!1062457) (not e!1592611))))

(assert (=> b!2513364 (= res!1062457 lt!898270)))

(declare-fun b!2513365 () Bool)

(assert (=> b!2513365 (= e!1592611 (= (head!5738 tl!4068) (c!400387 lt!898192)))))

(declare-fun b!2513366 () Bool)

(declare-fun res!1062453 () Bool)

(assert (=> b!2513366 (=> (not res!1062453) (not e!1592611))))

(assert (=> b!2513366 (= res!1062453 (isEmpty!16902 (tail!4015 tl!4068)))))

(declare-fun b!2513367 () Bool)

(declare-fun res!1062452 () Bool)

(assert (=> b!2513367 (=> (not res!1062452) (not e!1592611))))

(declare-fun call!156052 () Bool)

(assert (=> b!2513367 (= res!1062452 (not call!156052))))

(declare-fun b!2513368 () Bool)

(assert (=> b!2513368 (= e!1592608 (not lt!898270))))

(declare-fun b!2513369 () Bool)

(assert (=> b!2513369 (= e!1592609 e!1592612)))

(declare-fun res!1062456 () Bool)

(assert (=> b!2513369 (=> res!1062456 e!1592612)))

(assert (=> b!2513369 (= res!1062456 call!156052)))

(declare-fun b!2513370 () Bool)

(assert (=> b!2513370 (= e!1592607 (nullable!2390 lt!898192))))

(declare-fun b!2513371 () Bool)

(declare-fun res!1062450 () Bool)

(assert (=> b!2513371 (=> res!1062450 e!1592610)))

(assert (=> b!2513371 (= res!1062450 (not ((_ is ElementMatch!7473) lt!898192)))))

(assert (=> b!2513371 (= e!1592608 e!1592610)))

(declare-fun b!2513372 () Bool)

(assert (=> b!2513372 (= e!1592607 (matchR!3472 (derivativeStep!2042 lt!898192 (head!5738 tl!4068)) (tail!4015 tl!4068)))))

(declare-fun b!2513373 () Bool)

(assert (=> b!2513373 (= e!1592612 (not (= (head!5738 tl!4068) (c!400387 lt!898192))))))

(declare-fun b!2513374 () Bool)

(assert (=> b!2513374 (= e!1592613 (= lt!898270 call!156052))))

(declare-fun bm!156047 () Bool)

(assert (=> bm!156047 (= call!156052 (isEmpty!16902 tl!4068))))

(assert (= (and d!717002 c!400503) b!2513370))

(assert (= (and d!717002 (not c!400503)) b!2513372))

(assert (= (and d!717002 c!400504) b!2513374))

(assert (= (and d!717002 (not c!400504)) b!2513363))

(assert (= (and b!2513363 c!400505) b!2513368))

(assert (= (and b!2513363 (not c!400505)) b!2513371))

(assert (= (and b!2513371 (not res!1062450)) b!2513364))

(assert (= (and b!2513364 res!1062457) b!2513367))

(assert (= (and b!2513367 res!1062452) b!2513366))

(assert (= (and b!2513366 res!1062453) b!2513365))

(assert (= (and b!2513364 (not res!1062455)) b!2513362))

(assert (= (and b!2513362 res!1062454) b!2513369))

(assert (= (and b!2513369 (not res!1062456)) b!2513361))

(assert (= (and b!2513361 (not res!1062451)) b!2513373))

(assert (= (or b!2513374 b!2513367 b!2513369) bm!156047))

(assert (=> d!717002 m!2871177))

(assert (=> d!717002 m!2871257))

(assert (=> b!2513366 m!2871183))

(assert (=> b!2513366 m!2871183))

(assert (=> b!2513366 m!2871185))

(assert (=> b!2513361 m!2871183))

(assert (=> b!2513361 m!2871183))

(assert (=> b!2513361 m!2871185))

(assert (=> b!2513365 m!2871187))

(declare-fun m!2871273 () Bool)

(assert (=> b!2513370 m!2871273))

(assert (=> bm!156047 m!2871177))

(assert (=> b!2513372 m!2871187))

(assert (=> b!2513372 m!2871187))

(declare-fun m!2871275 () Bool)

(assert (=> b!2513372 m!2871275))

(assert (=> b!2513372 m!2871183))

(assert (=> b!2513372 m!2871275))

(assert (=> b!2513372 m!2871183))

(declare-fun m!2871277 () Bool)

(assert (=> b!2513372 m!2871277))

(assert (=> b!2513373 m!2871187))

(assert (=> b!2512911 d!717002))

(declare-fun b!2513375 () Bool)

(declare-fun res!1062459 () Bool)

(declare-fun e!1592614 () Bool)

(assert (=> b!2513375 (=> res!1062459 e!1592614)))

(assert (=> b!2513375 (= res!1062459 (not ((_ is Concat!12169) r!27340)))))

(declare-fun e!1592616 () Bool)

(assert (=> b!2513375 (= e!1592616 e!1592614)))

(declare-fun b!2513376 () Bool)

(declare-fun e!1592617 () Bool)

(declare-fun call!156054 () Bool)

(assert (=> b!2513376 (= e!1592617 call!156054)))

(declare-fun b!2513377 () Bool)

(declare-fun res!1062461 () Bool)

(assert (=> b!2513377 (=> (not res!1062461) (not e!1592617))))

(declare-fun call!156053 () Bool)

(assert (=> b!2513377 (= res!1062461 call!156053)))

(assert (=> b!2513377 (= e!1592616 e!1592617)))

(declare-fun d!717004 () Bool)

(declare-fun res!1062458 () Bool)

(declare-fun e!1592620 () Bool)

(assert (=> d!717004 (=> res!1062458 e!1592620)))

(assert (=> d!717004 (= res!1062458 ((_ is ElementMatch!7473) r!27340))))

(assert (=> d!717004 (= (validRegex!3099 r!27340) e!1592620)))

(declare-fun bm!156048 () Bool)

(declare-fun call!156055 () Bool)

(assert (=> bm!156048 (= call!156053 call!156055)))

(declare-fun bm!156049 () Bool)

(declare-fun c!400506 () Bool)

(declare-fun c!400507 () Bool)

(assert (=> bm!156049 (= call!156055 (validRegex!3099 (ite c!400506 (reg!7802 r!27340) (ite c!400507 (regOne!15459 r!27340) (regTwo!15458 r!27340)))))))

(declare-fun b!2513378 () Bool)

(declare-fun e!1592619 () Bool)

(assert (=> b!2513378 (= e!1592620 e!1592619)))

(assert (=> b!2513378 (= c!400506 ((_ is Star!7473) r!27340))))

(declare-fun b!2513379 () Bool)

(assert (=> b!2513379 (= e!1592619 e!1592616)))

(assert (=> b!2513379 (= c!400507 ((_ is Union!7473) r!27340))))

(declare-fun bm!156050 () Bool)

(assert (=> bm!156050 (= call!156054 (validRegex!3099 (ite c!400507 (regTwo!15459 r!27340) (regOne!15458 r!27340))))))

(declare-fun b!2513380 () Bool)

(declare-fun e!1592615 () Bool)

(assert (=> b!2513380 (= e!1592619 e!1592615)))

(declare-fun res!1062462 () Bool)

(assert (=> b!2513380 (= res!1062462 (not (nullable!2390 (reg!7802 r!27340))))))

(assert (=> b!2513380 (=> (not res!1062462) (not e!1592615))))

(declare-fun b!2513381 () Bool)

(assert (=> b!2513381 (= e!1592615 call!156055)))

(declare-fun b!2513382 () Bool)

(declare-fun e!1592618 () Bool)

(assert (=> b!2513382 (= e!1592614 e!1592618)))

(declare-fun res!1062460 () Bool)

(assert (=> b!2513382 (=> (not res!1062460) (not e!1592618))))

(assert (=> b!2513382 (= res!1062460 call!156054)))

(declare-fun b!2513383 () Bool)

(assert (=> b!2513383 (= e!1592618 call!156053)))

(assert (= (and d!717004 (not res!1062458)) b!2513378))

(assert (= (and b!2513378 c!400506) b!2513380))

(assert (= (and b!2513378 (not c!400506)) b!2513379))

(assert (= (and b!2513380 res!1062462) b!2513381))

(assert (= (and b!2513379 c!400507) b!2513377))

(assert (= (and b!2513379 (not c!400507)) b!2513375))

(assert (= (and b!2513377 res!1062461) b!2513376))

(assert (= (and b!2513375 (not res!1062459)) b!2513382))

(assert (= (and b!2513382 res!1062460) b!2513383))

(assert (= (or b!2513377 b!2513383) bm!156048))

(assert (= (or b!2513376 b!2513382) bm!156050))

(assert (= (or b!2513381 bm!156048) bm!156049))

(declare-fun m!2871279 () Bool)

(assert (=> bm!156049 m!2871279))

(declare-fun m!2871281 () Bool)

(assert (=> bm!156050 m!2871281))

(declare-fun m!2871283 () Bool)

(assert (=> b!2513380 m!2871283))

(assert (=> start!245056 d!717004))

(declare-fun b!2513394 () Bool)

(declare-fun e!1592623 () Bool)

(assert (=> b!2513394 (= e!1592623 tp_is_empty!12801)))

(declare-fun b!2513395 () Bool)

(declare-fun tp!803524 () Bool)

(declare-fun tp!803526 () Bool)

(assert (=> b!2513395 (= e!1592623 (and tp!803524 tp!803526))))

(declare-fun b!2513396 () Bool)

(declare-fun tp!803527 () Bool)

(assert (=> b!2513396 (= e!1592623 tp!803527)))

(assert (=> b!2512918 (= tp!803469 e!1592623)))

(declare-fun b!2513397 () Bool)

(declare-fun tp!803525 () Bool)

(declare-fun tp!803523 () Bool)

(assert (=> b!2513397 (= e!1592623 (and tp!803525 tp!803523))))

(assert (= (and b!2512918 ((_ is ElementMatch!7473) (regOne!15459 r!27340))) b!2513394))

(assert (= (and b!2512918 ((_ is Concat!12169) (regOne!15459 r!27340))) b!2513395))

(assert (= (and b!2512918 ((_ is Star!7473) (regOne!15459 r!27340))) b!2513396))

(assert (= (and b!2512918 ((_ is Union!7473) (regOne!15459 r!27340))) b!2513397))

(declare-fun b!2513398 () Bool)

(declare-fun e!1592624 () Bool)

(assert (=> b!2513398 (= e!1592624 tp_is_empty!12801)))

(declare-fun b!2513399 () Bool)

(declare-fun tp!803529 () Bool)

(declare-fun tp!803531 () Bool)

(assert (=> b!2513399 (= e!1592624 (and tp!803529 tp!803531))))

(declare-fun b!2513400 () Bool)

(declare-fun tp!803532 () Bool)

(assert (=> b!2513400 (= e!1592624 tp!803532)))

(assert (=> b!2512918 (= tp!803471 e!1592624)))

(declare-fun b!2513401 () Bool)

(declare-fun tp!803530 () Bool)

(declare-fun tp!803528 () Bool)

(assert (=> b!2513401 (= e!1592624 (and tp!803530 tp!803528))))

(assert (= (and b!2512918 ((_ is ElementMatch!7473) (regTwo!15459 r!27340))) b!2513398))

(assert (= (and b!2512918 ((_ is Concat!12169) (regTwo!15459 r!27340))) b!2513399))

(assert (= (and b!2512918 ((_ is Star!7473) (regTwo!15459 r!27340))) b!2513400))

(assert (= (and b!2512918 ((_ is Union!7473) (regTwo!15459 r!27340))) b!2513401))

(declare-fun b!2513402 () Bool)

(declare-fun e!1592625 () Bool)

(assert (=> b!2513402 (= e!1592625 tp_is_empty!12801)))

(declare-fun b!2513403 () Bool)

(declare-fun tp!803534 () Bool)

(declare-fun tp!803536 () Bool)

(assert (=> b!2513403 (= e!1592625 (and tp!803534 tp!803536))))

(declare-fun b!2513404 () Bool)

(declare-fun tp!803537 () Bool)

(assert (=> b!2513404 (= e!1592625 tp!803537)))

(assert (=> b!2512913 (= tp!803474 e!1592625)))

(declare-fun b!2513405 () Bool)

(declare-fun tp!803535 () Bool)

(declare-fun tp!803533 () Bool)

(assert (=> b!2513405 (= e!1592625 (and tp!803535 tp!803533))))

(assert (= (and b!2512913 ((_ is ElementMatch!7473) (regOne!15458 r!27340))) b!2513402))

(assert (= (and b!2512913 ((_ is Concat!12169) (regOne!15458 r!27340))) b!2513403))

(assert (= (and b!2512913 ((_ is Star!7473) (regOne!15458 r!27340))) b!2513404))

(assert (= (and b!2512913 ((_ is Union!7473) (regOne!15458 r!27340))) b!2513405))

(declare-fun b!2513406 () Bool)

(declare-fun e!1592626 () Bool)

(assert (=> b!2513406 (= e!1592626 tp_is_empty!12801)))

(declare-fun b!2513407 () Bool)

(declare-fun tp!803539 () Bool)

(declare-fun tp!803541 () Bool)

(assert (=> b!2513407 (= e!1592626 (and tp!803539 tp!803541))))

(declare-fun b!2513408 () Bool)

(declare-fun tp!803542 () Bool)

(assert (=> b!2513408 (= e!1592626 tp!803542)))

(assert (=> b!2512913 (= tp!803473 e!1592626)))

(declare-fun b!2513409 () Bool)

(declare-fun tp!803540 () Bool)

(declare-fun tp!803538 () Bool)

(assert (=> b!2513409 (= e!1592626 (and tp!803540 tp!803538))))

(assert (= (and b!2512913 ((_ is ElementMatch!7473) (regTwo!15458 r!27340))) b!2513406))

(assert (= (and b!2512913 ((_ is Concat!12169) (regTwo!15458 r!27340))) b!2513407))

(assert (= (and b!2512913 ((_ is Star!7473) (regTwo!15458 r!27340))) b!2513408))

(assert (= (and b!2512913 ((_ is Union!7473) (regTwo!15458 r!27340))) b!2513409))

(declare-fun b!2513414 () Bool)

(declare-fun e!1592629 () Bool)

(declare-fun tp!803545 () Bool)

(assert (=> b!2513414 (= e!1592629 (and tp_is_empty!12801 tp!803545))))

(assert (=> b!2512916 (= tp!803472 e!1592629)))

(assert (= (and b!2512916 ((_ is Cons!29438) (t!211237 tl!4068))) b!2513414))

(declare-fun b!2513415 () Bool)

(declare-fun e!1592630 () Bool)

(assert (=> b!2513415 (= e!1592630 tp_is_empty!12801)))

(declare-fun b!2513416 () Bool)

(declare-fun tp!803547 () Bool)

(declare-fun tp!803549 () Bool)

(assert (=> b!2513416 (= e!1592630 (and tp!803547 tp!803549))))

(declare-fun b!2513417 () Bool)

(declare-fun tp!803550 () Bool)

(assert (=> b!2513417 (= e!1592630 tp!803550)))

(assert (=> b!2512910 (= tp!803470 e!1592630)))

(declare-fun b!2513418 () Bool)

(declare-fun tp!803548 () Bool)

(declare-fun tp!803546 () Bool)

(assert (=> b!2513418 (= e!1592630 (and tp!803548 tp!803546))))

(assert (= (and b!2512910 ((_ is ElementMatch!7473) (reg!7802 r!27340))) b!2513415))

(assert (= (and b!2512910 ((_ is Concat!12169) (reg!7802 r!27340))) b!2513416))

(assert (= (and b!2512910 ((_ is Star!7473) (reg!7802 r!27340))) b!2513417))

(assert (= (and b!2512910 ((_ is Union!7473) (reg!7802 r!27340))) b!2513418))

(check-sat (not b!2513404) (not b!2513345) (not b!2513008) (not d!716946) (not b!2513361) (not d!717002) (not b!2513408) (not d!716980) (not b!2513234) (not b!2513397) (not b!2513399) tp_is_empty!12801 (not d!716942) (not b!2513366) (not d!716990) (not d!716926) (not d!716930) (not b!2513076) (not d!716986) (not b!2513263) (not b!2513356) (not bm!156038) (not bm!156046) (not b!2513078) (not b!2513418) (not bm!156036) (not b!2513372) (not b!2513352) (not d!717000) (not b!2513365) (not d!716998) (not b!2513395) (not b!2513252) (not d!716982) (not d!716922) (not b!2513225) (not b!2513405) (not b!2513343) (not bm!155992) (not b!2513380) (not b!2513237) (not b!2513358) (not d!716996) (not b!2513082) (not b!2513400) (not d!716924) (not b!2513281) (not b!2513414) (not b!2513253) (not b!2513131) (not b!2513246) (not bm!156035) (not b!2513081) (not b!2512923) (not bm!156049) (not b!2513083) (not b!2513229) (not bm!156050) (not bm!156037) (not bm!155991) (not b!2513409) (not bm!156003) (not b!2513230) (not b!2513373) (not b!2513080) (not b!2513417) (not b!2513250) (not b!2513344) (not b!2513403) (not b!2512965) (not b!2513407) (not b!2513359) (not b!2513236) (not d!716940) (not b!2513347) (not b!2513130) (not b!2513241) (not bm!156047) (not d!716968) (not d!716994) (not b!2513416) (not b!2513396) (not bm!156002) (not b!2513401) (not b!2513370) (not b!2513245) (not b!2513351) (not d!716958))
(check-sat)
