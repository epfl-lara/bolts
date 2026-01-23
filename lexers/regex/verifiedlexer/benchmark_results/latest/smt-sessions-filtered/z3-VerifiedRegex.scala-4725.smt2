; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!244376 () Bool)

(assert start!244376)

(declare-fun b!2504289 () Bool)

(declare-fun e!1587988 () Bool)

(declare-datatypes ((C!15008 0))(
  ( (C!15009 (val!9156 Int)) )
))
(declare-datatypes ((Regex!7425 0))(
  ( (ElementMatch!7425 (c!398637 C!15008)) (Concat!12121 (regOne!15362 Regex!7425) (regTwo!15362 Regex!7425)) (EmptyExpr!7425) (Star!7425 (reg!7754 Regex!7425)) (EmptyLang!7425) (Union!7425 (regOne!15363 Regex!7425) (regTwo!15363 Regex!7425)) )
))
(declare-fun lt!896337 () Regex!7425)

(declare-datatypes ((List!29490 0))(
  ( (Nil!29390) (Cons!29390 (h!34810 C!15008) (t!211189 List!29490)) )
))
(declare-fun tl!4068 () List!29490)

(declare-fun matchR!3428 (Regex!7425 List!29490) Bool)

(assert (=> b!2504289 (= e!1587988 (matchR!3428 lt!896337 tl!4068))))

(declare-fun b!2504290 () Bool)

(declare-fun e!1587989 () Bool)

(declare-fun e!1587985 () Bool)

(assert (=> b!2504290 (= e!1587989 (not e!1587985))))

(declare-fun res!1058823 () Bool)

(assert (=> b!2504290 (=> res!1058823 e!1587985)))

(declare-fun lt!896339 () Bool)

(assert (=> b!2504290 (= res!1058823 (not lt!896339))))

(assert (=> b!2504290 e!1587988))

(declare-fun res!1058825 () Bool)

(assert (=> b!2504290 (=> res!1058825 e!1587988)))

(assert (=> b!2504290 (= res!1058825 lt!896339)))

(declare-fun lt!896343 () Regex!7425)

(assert (=> b!2504290 (= lt!896339 (matchR!3428 lt!896343 tl!4068))))

(declare-datatypes ((Unit!43107 0))(
  ( (Unit!43108) )
))
(declare-fun lt!896336 () Unit!43107)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!120 (Regex!7425 Regex!7425 List!29490) Unit!43107)

(assert (=> b!2504290 (= lt!896336 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!120 lt!896343 lt!896337 tl!4068))))

(declare-fun lt!896335 () Regex!7425)

(declare-fun derivative!120 (Regex!7425 List!29490) Regex!7425)

(assert (=> b!2504290 (= (matchR!3428 lt!896335 tl!4068) (matchR!3428 (derivative!120 lt!896335 tl!4068) Nil!29390))))

(declare-fun lt!896342 () Unit!43107)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!74 (Regex!7425 List!29490) Unit!43107)

(assert (=> b!2504290 (= lt!896342 (lemmaMatchRIsSameAsWholeDerivativeAndNil!74 lt!896335 tl!4068))))

(assert (=> b!2504290 (= lt!896335 (Union!7425 lt!896343 lt!896337))))

(declare-fun r!27340 () Regex!7425)

(declare-fun c!14016 () C!15008)

(declare-fun derivativeStep!1994 (Regex!7425 C!15008) Regex!7425)

(assert (=> b!2504290 (= lt!896337 (derivativeStep!1994 (regTwo!15362 r!27340) c!14016))))

(declare-fun lt!896340 () Regex!7425)

(assert (=> b!2504290 (= lt!896343 (Concat!12121 lt!896340 (regTwo!15362 r!27340)))))

(assert (=> b!2504290 (= lt!896340 (derivativeStep!1994 (regOne!15362 r!27340) c!14016))))

(declare-fun b!2504291 () Bool)

(declare-fun res!1058822 () Bool)

(assert (=> b!2504291 (=> (not res!1058822) (not e!1587989))))

(declare-fun nullable!2342 (Regex!7425) Bool)

(assert (=> b!2504291 (= res!1058822 (nullable!2342 (regOne!15362 r!27340)))))

(declare-fun b!2504292 () Bool)

(declare-fun e!1587986 () Bool)

(declare-fun tp!801470 () Bool)

(declare-fun tp!801465 () Bool)

(assert (=> b!2504292 (= e!1587986 (and tp!801470 tp!801465))))

(declare-fun b!2504293 () Bool)

(declare-fun res!1058828 () Bool)

(assert (=> b!2504293 (=> (not res!1058828) (not e!1587989))))

(get-info :version)

(assert (=> b!2504293 (= res!1058828 (and (not ((_ is EmptyExpr!7425) r!27340)) (not ((_ is EmptyLang!7425) r!27340)) (not ((_ is ElementMatch!7425) r!27340)) (not ((_ is Union!7425) r!27340)) (not ((_ is Star!7425) r!27340))))))

(declare-fun b!2504294 () Bool)

(declare-fun tp_is_empty!12705 () Bool)

(assert (=> b!2504294 (= e!1587986 tp_is_empty!12705)))

(declare-fun b!2504295 () Bool)

(declare-fun tp!801466 () Bool)

(assert (=> b!2504295 (= e!1587986 tp!801466)))

(declare-fun b!2504296 () Bool)

(declare-fun e!1587990 () Bool)

(declare-fun tp!801469 () Bool)

(assert (=> b!2504296 (= e!1587990 (and tp_is_empty!12705 tp!801469))))

(declare-fun b!2504297 () Bool)

(declare-fun e!1587987 () Bool)

(declare-fun validRegex!3051 (Regex!7425) Bool)

(assert (=> b!2504297 (= e!1587987 (validRegex!3051 (regOne!15362 r!27340)))))

(declare-fun b!2504299 () Bool)

(assert (=> b!2504299 (= e!1587985 e!1587987)))

(declare-fun res!1058824 () Bool)

(assert (=> b!2504299 (=> res!1058824 e!1587987)))

(declare-datatypes ((tuple2!29428 0))(
  ( (tuple2!29429 (_1!17256 List!29490) (_2!17256 List!29490)) )
))
(declare-fun lt!896338 () tuple2!29428)

(declare-fun ++!7185 (List!29490 List!29490) List!29490)

(assert (=> b!2504299 (= res!1058824 (not (= (++!7185 (_1!17256 lt!896338) (_2!17256 lt!896338)) tl!4068)))))

(declare-datatypes ((Option!5834 0))(
  ( (None!5833) (Some!5833 (v!31764 tuple2!29428)) )
))
(declare-fun lt!896341 () Option!5834)

(declare-fun get!9127 (Option!5834) tuple2!29428)

(assert (=> b!2504299 (= lt!896338 (get!9127 lt!896341))))

(declare-fun isDefined!4656 (Option!5834) Bool)

(assert (=> b!2504299 (isDefined!4656 lt!896341)))

(declare-fun findConcatSeparation!856 (Regex!7425 Regex!7425 List!29490 List!29490 List!29490) Option!5834)

(assert (=> b!2504299 (= lt!896341 (findConcatSeparation!856 lt!896340 (regTwo!15362 r!27340) Nil!29390 tl!4068 tl!4068))))

(declare-fun lt!896344 () Unit!43107)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!138 (Regex!7425 Regex!7425 List!29490) Unit!43107)

(assert (=> b!2504299 (= lt!896344 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!138 lt!896340 (regTwo!15362 r!27340) tl!4068))))

(declare-fun b!2504300 () Bool)

(declare-fun tp!801467 () Bool)

(declare-fun tp!801468 () Bool)

(assert (=> b!2504300 (= e!1587986 (and tp!801467 tp!801468))))

(declare-fun res!1058827 () Bool)

(assert (=> start!244376 (=> (not res!1058827) (not e!1587989))))

(assert (=> start!244376 (= res!1058827 (validRegex!3051 r!27340))))

(assert (=> start!244376 e!1587989))

(assert (=> start!244376 e!1587986))

(assert (=> start!244376 tp_is_empty!12705))

(assert (=> start!244376 e!1587990))

(declare-fun b!2504298 () Bool)

(declare-fun res!1058826 () Bool)

(assert (=> b!2504298 (=> (not res!1058826) (not e!1587989))))

(assert (=> b!2504298 (= res!1058826 (nullable!2342 (derivative!120 (derivativeStep!1994 r!27340 c!14016) tl!4068)))))

(assert (= (and start!244376 res!1058827) b!2504298))

(assert (= (and b!2504298 res!1058826) b!2504293))

(assert (= (and b!2504293 res!1058828) b!2504291))

(assert (= (and b!2504291 res!1058822) b!2504290))

(assert (= (and b!2504290 (not res!1058825)) b!2504289))

(assert (= (and b!2504290 (not res!1058823)) b!2504299))

(assert (= (and b!2504299 (not res!1058824)) b!2504297))

(assert (= (and start!244376 ((_ is ElementMatch!7425) r!27340)) b!2504294))

(assert (= (and start!244376 ((_ is Concat!12121) r!27340)) b!2504300))

(assert (= (and start!244376 ((_ is Star!7425) r!27340)) b!2504295))

(assert (= (and start!244376 ((_ is Union!7425) r!27340)) b!2504292))

(assert (= (and start!244376 ((_ is Cons!29390) tl!4068)) b!2504296))

(declare-fun m!2865497 () Bool)

(assert (=> b!2504299 m!2865497))

(declare-fun m!2865499 () Bool)

(assert (=> b!2504299 m!2865499))

(declare-fun m!2865501 () Bool)

(assert (=> b!2504299 m!2865501))

(declare-fun m!2865503 () Bool)

(assert (=> b!2504299 m!2865503))

(declare-fun m!2865505 () Bool)

(assert (=> b!2504299 m!2865505))

(declare-fun m!2865507 () Bool)

(assert (=> start!244376 m!2865507))

(declare-fun m!2865509 () Bool)

(assert (=> b!2504291 m!2865509))

(declare-fun m!2865511 () Bool)

(assert (=> b!2504290 m!2865511))

(declare-fun m!2865513 () Bool)

(assert (=> b!2504290 m!2865513))

(declare-fun m!2865515 () Bool)

(assert (=> b!2504290 m!2865515))

(assert (=> b!2504290 m!2865513))

(declare-fun m!2865517 () Bool)

(assert (=> b!2504290 m!2865517))

(declare-fun m!2865519 () Bool)

(assert (=> b!2504290 m!2865519))

(declare-fun m!2865521 () Bool)

(assert (=> b!2504290 m!2865521))

(declare-fun m!2865523 () Bool)

(assert (=> b!2504290 m!2865523))

(declare-fun m!2865525 () Bool)

(assert (=> b!2504290 m!2865525))

(declare-fun m!2865527 () Bool)

(assert (=> b!2504298 m!2865527))

(assert (=> b!2504298 m!2865527))

(declare-fun m!2865529 () Bool)

(assert (=> b!2504298 m!2865529))

(assert (=> b!2504298 m!2865529))

(declare-fun m!2865531 () Bool)

(assert (=> b!2504298 m!2865531))

(declare-fun m!2865533 () Bool)

(assert (=> b!2504289 m!2865533))

(declare-fun m!2865535 () Bool)

(assert (=> b!2504297 m!2865535))

(check-sat (not b!2504295) (not b!2504298) tp_is_empty!12705 (not b!2504296) (not b!2504297) (not b!2504300) (not b!2504292) (not b!2504299) (not b!2504290) (not b!2504291) (not start!244376) (not b!2504289))
(check-sat)
(get-model)

(declare-fun d!715838 () Bool)

(declare-fun nullableFct!605 (Regex!7425) Bool)

(assert (=> d!715838 (= (nullable!2342 (regOne!15362 r!27340)) (nullableFct!605 (regOne!15362 r!27340)))))

(declare-fun bs!468636 () Bool)

(assert (= bs!468636 d!715838))

(declare-fun m!2865537 () Bool)

(assert (=> bs!468636 m!2865537))

(assert (=> b!2504291 d!715838))

(declare-fun b!2504320 () Bool)

(declare-fun e!1588007 () Bool)

(declare-fun e!1588010 () Bool)

(assert (=> b!2504320 (= e!1588007 e!1588010)))

(declare-fun res!1058839 () Bool)

(assert (=> b!2504320 (=> (not res!1058839) (not e!1588010))))

(declare-fun call!154926 () Bool)

(assert (=> b!2504320 (= res!1058839 call!154926)))

(declare-fun b!2504321 () Bool)

(declare-fun res!1058842 () Bool)

(assert (=> b!2504321 (=> res!1058842 e!1588007)))

(assert (=> b!2504321 (= res!1058842 (not ((_ is Concat!12121) r!27340)))))

(declare-fun e!1588011 () Bool)

(assert (=> b!2504321 (= e!1588011 e!1588007)))

(declare-fun bm!154921 () Bool)

(declare-fun call!154927 () Bool)

(declare-fun c!398642 () Bool)

(assert (=> bm!154921 (= call!154927 (validRegex!3051 (ite c!398642 (regOne!15363 r!27340) (regTwo!15362 r!27340))))))

(declare-fun b!2504322 () Bool)

(declare-fun e!1588005 () Bool)

(declare-fun e!1588006 () Bool)

(assert (=> b!2504322 (= e!1588005 e!1588006)))

(declare-fun res!1058841 () Bool)

(assert (=> b!2504322 (= res!1058841 (not (nullable!2342 (reg!7754 r!27340))))))

(assert (=> b!2504322 (=> (not res!1058841) (not e!1588006))))

(declare-fun b!2504323 () Bool)

(declare-fun e!1588008 () Bool)

(assert (=> b!2504323 (= e!1588008 e!1588005)))

(declare-fun c!398643 () Bool)

(assert (=> b!2504323 (= c!398643 ((_ is Star!7425) r!27340))))

(declare-fun call!154928 () Bool)

(declare-fun bm!154922 () Bool)

(assert (=> bm!154922 (= call!154928 (validRegex!3051 (ite c!398643 (reg!7754 r!27340) (ite c!398642 (regTwo!15363 r!27340) (regOne!15362 r!27340)))))))

(declare-fun b!2504324 () Bool)

(assert (=> b!2504324 (= e!1588010 call!154927)))

(declare-fun b!2504319 () Bool)

(assert (=> b!2504319 (= e!1588005 e!1588011)))

(assert (=> b!2504319 (= c!398642 ((_ is Union!7425) r!27340))))

(declare-fun d!715840 () Bool)

(declare-fun res!1058840 () Bool)

(assert (=> d!715840 (=> res!1058840 e!1588008)))

(assert (=> d!715840 (= res!1058840 ((_ is ElementMatch!7425) r!27340))))

(assert (=> d!715840 (= (validRegex!3051 r!27340) e!1588008)))

(declare-fun b!2504325 () Bool)

(declare-fun res!1058843 () Bool)

(declare-fun e!1588009 () Bool)

(assert (=> b!2504325 (=> (not res!1058843) (not e!1588009))))

(assert (=> b!2504325 (= res!1058843 call!154927)))

(assert (=> b!2504325 (= e!1588011 e!1588009)))

(declare-fun bm!154923 () Bool)

(assert (=> bm!154923 (= call!154926 call!154928)))

(declare-fun b!2504326 () Bool)

(assert (=> b!2504326 (= e!1588006 call!154928)))

(declare-fun b!2504327 () Bool)

(assert (=> b!2504327 (= e!1588009 call!154926)))

(assert (= (and d!715840 (not res!1058840)) b!2504323))

(assert (= (and b!2504323 c!398643) b!2504322))

(assert (= (and b!2504323 (not c!398643)) b!2504319))

(assert (= (and b!2504322 res!1058841) b!2504326))

(assert (= (and b!2504319 c!398642) b!2504325))

(assert (= (and b!2504319 (not c!398642)) b!2504321))

(assert (= (and b!2504325 res!1058843) b!2504327))

(assert (= (and b!2504321 (not res!1058842)) b!2504320))

(assert (= (and b!2504320 res!1058839) b!2504324))

(assert (= (or b!2504325 b!2504324) bm!154921))

(assert (= (or b!2504327 b!2504320) bm!154923))

(assert (= (or b!2504326 bm!154923) bm!154922))

(declare-fun m!2865539 () Bool)

(assert (=> bm!154921 m!2865539))

(declare-fun m!2865541 () Bool)

(assert (=> b!2504322 m!2865541))

(declare-fun m!2865543 () Bool)

(assert (=> bm!154922 m!2865543))

(assert (=> start!244376 d!715840))

(declare-fun d!715842 () Bool)

(declare-fun isEmpty!16853 (Option!5834) Bool)

(assert (=> d!715842 (= (isDefined!4656 lt!896341) (not (isEmpty!16853 lt!896341)))))

(declare-fun bs!468637 () Bool)

(assert (= bs!468637 d!715842))

(declare-fun m!2865545 () Bool)

(assert (=> bs!468637 m!2865545))

(assert (=> b!2504299 d!715842))

(declare-fun d!715844 () Bool)

(assert (=> d!715844 (isDefined!4656 (findConcatSeparation!856 lt!896340 (regTwo!15362 r!27340) Nil!29390 tl!4068 tl!4068))))

(declare-fun lt!896347 () Unit!43107)

(declare-fun choose!14797 (Regex!7425 Regex!7425 List!29490) Unit!43107)

(assert (=> d!715844 (= lt!896347 (choose!14797 lt!896340 (regTwo!15362 r!27340) tl!4068))))

(assert (=> d!715844 (validRegex!3051 lt!896340)))

(assert (=> d!715844 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!138 lt!896340 (regTwo!15362 r!27340) tl!4068) lt!896347)))

(declare-fun bs!468638 () Bool)

(assert (= bs!468638 d!715844))

(assert (=> bs!468638 m!2865501))

(assert (=> bs!468638 m!2865501))

(declare-fun m!2865547 () Bool)

(assert (=> bs!468638 m!2865547))

(declare-fun m!2865549 () Bool)

(assert (=> bs!468638 m!2865549))

(declare-fun m!2865551 () Bool)

(assert (=> bs!468638 m!2865551))

(assert (=> b!2504299 d!715844))

(declare-fun b!2504373 () Bool)

(declare-fun e!1588046 () Option!5834)

(declare-fun e!1588047 () Option!5834)

(assert (=> b!2504373 (= e!1588046 e!1588047)))

(declare-fun c!398654 () Bool)

(assert (=> b!2504373 (= c!398654 ((_ is Nil!29390) tl!4068))))

(declare-fun b!2504374 () Bool)

(assert (=> b!2504374 (= e!1588046 (Some!5833 (tuple2!29429 Nil!29390 tl!4068)))))

(declare-fun b!2504375 () Bool)

(declare-fun res!1058870 () Bool)

(declare-fun e!1588045 () Bool)

(assert (=> b!2504375 (=> (not res!1058870) (not e!1588045))))

(declare-fun lt!896356 () Option!5834)

(assert (=> b!2504375 (= res!1058870 (matchR!3428 (regTwo!15362 r!27340) (_2!17256 (get!9127 lt!896356))))))

(declare-fun d!715848 () Bool)

(declare-fun e!1588043 () Bool)

(assert (=> d!715848 e!1588043))

(declare-fun res!1058872 () Bool)

(assert (=> d!715848 (=> res!1058872 e!1588043)))

(assert (=> d!715848 (= res!1058872 e!1588045)))

(declare-fun res!1058873 () Bool)

(assert (=> d!715848 (=> (not res!1058873) (not e!1588045))))

(assert (=> d!715848 (= res!1058873 (isDefined!4656 lt!896356))))

(assert (=> d!715848 (= lt!896356 e!1588046)))

(declare-fun c!398655 () Bool)

(declare-fun e!1588044 () Bool)

(assert (=> d!715848 (= c!398655 e!1588044)))

(declare-fun res!1058871 () Bool)

(assert (=> d!715848 (=> (not res!1058871) (not e!1588044))))

(assert (=> d!715848 (= res!1058871 (matchR!3428 lt!896340 Nil!29390))))

(assert (=> d!715848 (validRegex!3051 lt!896340)))

(assert (=> d!715848 (= (findConcatSeparation!856 lt!896340 (regTwo!15362 r!27340) Nil!29390 tl!4068 tl!4068) lt!896356)))

(declare-fun b!2504376 () Bool)

(assert (=> b!2504376 (= e!1588045 (= (++!7185 (_1!17256 (get!9127 lt!896356)) (_2!17256 (get!9127 lt!896356))) tl!4068))))

(declare-fun b!2504377 () Bool)

(declare-fun res!1058869 () Bool)

(assert (=> b!2504377 (=> (not res!1058869) (not e!1588045))))

(assert (=> b!2504377 (= res!1058869 (matchR!3428 lt!896340 (_1!17256 (get!9127 lt!896356))))))

(declare-fun b!2504378 () Bool)

(assert (=> b!2504378 (= e!1588043 (not (isDefined!4656 lt!896356)))))

(declare-fun b!2504379 () Bool)

(declare-fun lt!896355 () Unit!43107)

(declare-fun lt!896354 () Unit!43107)

(assert (=> b!2504379 (= lt!896355 lt!896354)))

(assert (=> b!2504379 (= (++!7185 (++!7185 Nil!29390 (Cons!29390 (h!34810 tl!4068) Nil!29390)) (t!211189 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!734 (List!29490 C!15008 List!29490 List!29490) Unit!43107)

(assert (=> b!2504379 (= lt!896354 (lemmaMoveElementToOtherListKeepsConcatEq!734 Nil!29390 (h!34810 tl!4068) (t!211189 tl!4068) tl!4068))))

(assert (=> b!2504379 (= e!1588047 (findConcatSeparation!856 lt!896340 (regTwo!15362 r!27340) (++!7185 Nil!29390 (Cons!29390 (h!34810 tl!4068) Nil!29390)) (t!211189 tl!4068) tl!4068))))

(declare-fun b!2504380 () Bool)

(assert (=> b!2504380 (= e!1588047 None!5833)))

(declare-fun b!2504381 () Bool)

(assert (=> b!2504381 (= e!1588044 (matchR!3428 (regTwo!15362 r!27340) tl!4068))))

(assert (= (and d!715848 res!1058871) b!2504381))

(assert (= (and d!715848 c!398655) b!2504374))

(assert (= (and d!715848 (not c!398655)) b!2504373))

(assert (= (and b!2504373 c!398654) b!2504380))

(assert (= (and b!2504373 (not c!398654)) b!2504379))

(assert (= (and d!715848 res!1058873) b!2504377))

(assert (= (and b!2504377 res!1058869) b!2504375))

(assert (= (and b!2504375 res!1058870) b!2504376))

(assert (= (and d!715848 (not res!1058872)) b!2504378))

(declare-fun m!2865563 () Bool)

(assert (=> b!2504375 m!2865563))

(declare-fun m!2865565 () Bool)

(assert (=> b!2504375 m!2865565))

(declare-fun m!2865567 () Bool)

(assert (=> d!715848 m!2865567))

(declare-fun m!2865569 () Bool)

(assert (=> d!715848 m!2865569))

(assert (=> d!715848 m!2865551))

(assert (=> b!2504377 m!2865563))

(declare-fun m!2865571 () Bool)

(assert (=> b!2504377 m!2865571))

(assert (=> b!2504376 m!2865563))

(declare-fun m!2865573 () Bool)

(assert (=> b!2504376 m!2865573))

(declare-fun m!2865575 () Bool)

(assert (=> b!2504381 m!2865575))

(assert (=> b!2504378 m!2865567))

(declare-fun m!2865577 () Bool)

(assert (=> b!2504379 m!2865577))

(assert (=> b!2504379 m!2865577))

(declare-fun m!2865579 () Bool)

(assert (=> b!2504379 m!2865579))

(declare-fun m!2865581 () Bool)

(assert (=> b!2504379 m!2865581))

(assert (=> b!2504379 m!2865577))

(declare-fun m!2865583 () Bool)

(assert (=> b!2504379 m!2865583))

(assert (=> b!2504299 d!715848))

(declare-fun b!2504395 () Bool)

(declare-fun e!1588055 () List!29490)

(assert (=> b!2504395 (= e!1588055 (Cons!29390 (h!34810 (_1!17256 lt!896338)) (++!7185 (t!211189 (_1!17256 lt!896338)) (_2!17256 lt!896338))))))

(declare-fun b!2504397 () Bool)

(declare-fun e!1588054 () Bool)

(declare-fun lt!896361 () List!29490)

(assert (=> b!2504397 (= e!1588054 (or (not (= (_2!17256 lt!896338) Nil!29390)) (= lt!896361 (_1!17256 lt!896338))))))

(declare-fun b!2504396 () Bool)

(declare-fun res!1058879 () Bool)

(assert (=> b!2504396 (=> (not res!1058879) (not e!1588054))))

(declare-fun size!22889 (List!29490) Int)

(assert (=> b!2504396 (= res!1058879 (= (size!22889 lt!896361) (+ (size!22889 (_1!17256 lt!896338)) (size!22889 (_2!17256 lt!896338)))))))

(declare-fun b!2504394 () Bool)

(assert (=> b!2504394 (= e!1588055 (_2!17256 lt!896338))))

(declare-fun d!715856 () Bool)

(assert (=> d!715856 e!1588054))

(declare-fun res!1058878 () Bool)

(assert (=> d!715856 (=> (not res!1058878) (not e!1588054))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4005 (List!29490) (InoxSet C!15008))

(assert (=> d!715856 (= res!1058878 (= (content!4005 lt!896361) ((_ map or) (content!4005 (_1!17256 lt!896338)) (content!4005 (_2!17256 lt!896338)))))))

(assert (=> d!715856 (= lt!896361 e!1588055)))

(declare-fun c!398660 () Bool)

(assert (=> d!715856 (= c!398660 ((_ is Nil!29390) (_1!17256 lt!896338)))))

(assert (=> d!715856 (= (++!7185 (_1!17256 lt!896338) (_2!17256 lt!896338)) lt!896361)))

(assert (= (and d!715856 c!398660) b!2504394))

(assert (= (and d!715856 (not c!398660)) b!2504395))

(assert (= (and d!715856 res!1058878) b!2504396))

(assert (= (and b!2504396 res!1058879) b!2504397))

(declare-fun m!2865585 () Bool)

(assert (=> b!2504395 m!2865585))

(declare-fun m!2865587 () Bool)

(assert (=> b!2504396 m!2865587))

(declare-fun m!2865589 () Bool)

(assert (=> b!2504396 m!2865589))

(declare-fun m!2865591 () Bool)

(assert (=> b!2504396 m!2865591))

(declare-fun m!2865593 () Bool)

(assert (=> d!715856 m!2865593))

(declare-fun m!2865595 () Bool)

(assert (=> d!715856 m!2865595))

(declare-fun m!2865597 () Bool)

(assert (=> d!715856 m!2865597))

(assert (=> b!2504299 d!715856))

(declare-fun d!715858 () Bool)

(assert (=> d!715858 (= (get!9127 lt!896341) (v!31764 lt!896341))))

(assert (=> b!2504299 d!715858))

(declare-fun b!2504428 () Bool)

(declare-fun res!1058896 () Bool)

(declare-fun e!1588075 () Bool)

(assert (=> b!2504428 (=> (not res!1058896) (not e!1588075))))

(declare-fun isEmpty!16854 (List!29490) Bool)

(declare-fun tail!3986 (List!29490) List!29490)

(assert (=> b!2504428 (= res!1058896 (isEmpty!16854 (tail!3986 tl!4068)))))

(declare-fun b!2504429 () Bool)

(declare-fun e!1588074 () Bool)

(declare-fun lt!896365 () Bool)

(assert (=> b!2504429 (= e!1588074 (not lt!896365))))

(declare-fun b!2504430 () Bool)

(declare-fun e!1588071 () Bool)

(declare-fun head!5709 (List!29490) C!15008)

(assert (=> b!2504430 (= e!1588071 (matchR!3428 (derivativeStep!1994 lt!896337 (head!5709 tl!4068)) (tail!3986 tl!4068)))))

(declare-fun b!2504431 () Bool)

(assert (=> b!2504431 (= e!1588075 (= (head!5709 tl!4068) (c!398637 lt!896337)))))

(declare-fun bm!154935 () Bool)

(declare-fun call!154940 () Bool)

(assert (=> bm!154935 (= call!154940 (isEmpty!16854 tl!4068))))

(declare-fun b!2504432 () Bool)

(assert (=> b!2504432 (= e!1588071 (nullable!2342 lt!896337))))

(declare-fun b!2504433 () Bool)

(declare-fun res!1058903 () Bool)

(declare-fun e!1588076 () Bool)

(assert (=> b!2504433 (=> res!1058903 e!1588076)))

(assert (=> b!2504433 (= res!1058903 e!1588075)))

(declare-fun res!1058899 () Bool)

(assert (=> b!2504433 (=> (not res!1058899) (not e!1588075))))

(assert (=> b!2504433 (= res!1058899 lt!896365)))

(declare-fun b!2504434 () Bool)

(declare-fun e!1588077 () Bool)

(assert (=> b!2504434 (= e!1588077 e!1588074)))

(declare-fun c!398670 () Bool)

(assert (=> b!2504434 (= c!398670 ((_ is EmptyLang!7425) lt!896337))))

(declare-fun b!2504435 () Bool)

(declare-fun res!1058898 () Bool)

(assert (=> b!2504435 (=> res!1058898 e!1588076)))

(assert (=> b!2504435 (= res!1058898 (not ((_ is ElementMatch!7425) lt!896337)))))

(assert (=> b!2504435 (= e!1588074 e!1588076)))

(declare-fun b!2504436 () Bool)

(declare-fun res!1058902 () Bool)

(declare-fun e!1588073 () Bool)

(assert (=> b!2504436 (=> res!1058902 e!1588073)))

(assert (=> b!2504436 (= res!1058902 (not (isEmpty!16854 (tail!3986 tl!4068))))))

(declare-fun b!2504437 () Bool)

(declare-fun e!1588072 () Bool)

(assert (=> b!2504437 (= e!1588072 e!1588073)))

(declare-fun res!1058897 () Bool)

(assert (=> b!2504437 (=> res!1058897 e!1588073)))

(assert (=> b!2504437 (= res!1058897 call!154940)))

(declare-fun b!2504438 () Bool)

(declare-fun res!1058900 () Bool)

(assert (=> b!2504438 (=> (not res!1058900) (not e!1588075))))

(assert (=> b!2504438 (= res!1058900 (not call!154940))))

(declare-fun d!715860 () Bool)

(assert (=> d!715860 e!1588077))

(declare-fun c!398669 () Bool)

(assert (=> d!715860 (= c!398669 ((_ is EmptyExpr!7425) lt!896337))))

(assert (=> d!715860 (= lt!896365 e!1588071)))

(declare-fun c!398668 () Bool)

(assert (=> d!715860 (= c!398668 (isEmpty!16854 tl!4068))))

(assert (=> d!715860 (validRegex!3051 lt!896337)))

(assert (=> d!715860 (= (matchR!3428 lt!896337 tl!4068) lt!896365)))

(declare-fun b!2504439 () Bool)

(assert (=> b!2504439 (= e!1588073 (not (= (head!5709 tl!4068) (c!398637 lt!896337))))))

(declare-fun b!2504440 () Bool)

(assert (=> b!2504440 (= e!1588077 (= lt!896365 call!154940))))

(declare-fun b!2504441 () Bool)

(assert (=> b!2504441 (= e!1588076 e!1588072)))

(declare-fun res!1058901 () Bool)

(assert (=> b!2504441 (=> (not res!1058901) (not e!1588072))))

(assert (=> b!2504441 (= res!1058901 (not lt!896365))))

(assert (= (and d!715860 c!398668) b!2504432))

(assert (= (and d!715860 (not c!398668)) b!2504430))

(assert (= (and d!715860 c!398669) b!2504440))

(assert (= (and d!715860 (not c!398669)) b!2504434))

(assert (= (and b!2504434 c!398670) b!2504429))

(assert (= (and b!2504434 (not c!398670)) b!2504435))

(assert (= (and b!2504435 (not res!1058898)) b!2504433))

(assert (= (and b!2504433 res!1058899) b!2504438))

(assert (= (and b!2504438 res!1058900) b!2504428))

(assert (= (and b!2504428 res!1058896) b!2504431))

(assert (= (and b!2504433 (not res!1058903)) b!2504441))

(assert (= (and b!2504441 res!1058901) b!2504437))

(assert (= (and b!2504437 (not res!1058897)) b!2504436))

(assert (= (and b!2504436 (not res!1058902)) b!2504439))

(assert (= (or b!2504440 b!2504437 b!2504438) bm!154935))

(declare-fun m!2865607 () Bool)

(assert (=> b!2504428 m!2865607))

(assert (=> b!2504428 m!2865607))

(declare-fun m!2865609 () Bool)

(assert (=> b!2504428 m!2865609))

(declare-fun m!2865611 () Bool)

(assert (=> b!2504439 m!2865611))

(assert (=> b!2504431 m!2865611))

(assert (=> b!2504436 m!2865607))

(assert (=> b!2504436 m!2865607))

(assert (=> b!2504436 m!2865609))

(declare-fun m!2865613 () Bool)

(assert (=> b!2504432 m!2865613))

(declare-fun m!2865615 () Bool)

(assert (=> bm!154935 m!2865615))

(assert (=> b!2504430 m!2865611))

(assert (=> b!2504430 m!2865611))

(declare-fun m!2865617 () Bool)

(assert (=> b!2504430 m!2865617))

(assert (=> b!2504430 m!2865607))

(assert (=> b!2504430 m!2865617))

(assert (=> b!2504430 m!2865607))

(declare-fun m!2865619 () Bool)

(assert (=> b!2504430 m!2865619))

(assert (=> d!715860 m!2865615))

(declare-fun m!2865621 () Bool)

(assert (=> d!715860 m!2865621))

(assert (=> b!2504289 d!715860))

(declare-fun d!715864 () Bool)

(assert (=> d!715864 (= (nullable!2342 (derivative!120 (derivativeStep!1994 r!27340 c!14016) tl!4068)) (nullableFct!605 (derivative!120 (derivativeStep!1994 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468641 () Bool)

(assert (= bs!468641 d!715864))

(assert (=> bs!468641 m!2865529))

(declare-fun m!2865623 () Bool)

(assert (=> bs!468641 m!2865623))

(assert (=> b!2504298 d!715864))

(declare-fun d!715866 () Bool)

(declare-fun lt!896370 () Regex!7425)

(assert (=> d!715866 (validRegex!3051 lt!896370)))

(declare-fun e!1588090 () Regex!7425)

(assert (=> d!715866 (= lt!896370 e!1588090)))

(declare-fun c!398683 () Bool)

(assert (=> d!715866 (= c!398683 ((_ is Cons!29390) tl!4068))))

(assert (=> d!715866 (validRegex!3051 (derivativeStep!1994 r!27340 c!14016))))

(assert (=> d!715866 (= (derivative!120 (derivativeStep!1994 r!27340 c!14016) tl!4068) lt!896370)))

(declare-fun b!2504466 () Bool)

(assert (=> b!2504466 (= e!1588090 (derivative!120 (derivativeStep!1994 (derivativeStep!1994 r!27340 c!14016) (h!34810 tl!4068)) (t!211189 tl!4068)))))

(declare-fun b!2504467 () Bool)

(assert (=> b!2504467 (= e!1588090 (derivativeStep!1994 r!27340 c!14016))))

(assert (= (and d!715866 c!398683) b!2504466))

(assert (= (and d!715866 (not c!398683)) b!2504467))

(declare-fun m!2865625 () Bool)

(assert (=> d!715866 m!2865625))

(assert (=> d!715866 m!2865527))

(declare-fun m!2865627 () Bool)

(assert (=> d!715866 m!2865627))

(assert (=> b!2504466 m!2865527))

(declare-fun m!2865629 () Bool)

(assert (=> b!2504466 m!2865629))

(assert (=> b!2504466 m!2865629))

(declare-fun m!2865631 () Bool)

(assert (=> b!2504466 m!2865631))

(assert (=> b!2504298 d!715866))

(declare-fun bm!154956 () Bool)

(declare-fun call!154961 () Regex!7425)

(declare-fun call!154963 () Regex!7425)

(assert (=> bm!154956 (= call!154961 call!154963)))

(declare-fun c!398701 () Bool)

(declare-fun bm!154957 () Bool)

(declare-fun c!398699 () Bool)

(assert (=> bm!154957 (= call!154963 (derivativeStep!1994 (ite c!398701 (regTwo!15363 r!27340) (ite c!398699 (reg!7754 r!27340) (regOne!15362 r!27340))) c!14016))))

(declare-fun call!154962 () Regex!7425)

(declare-fun bm!154958 () Bool)

(assert (=> bm!154958 (= call!154962 (derivativeStep!1994 (ite c!398701 (regOne!15363 r!27340) (regTwo!15362 r!27340)) c!14016))))

(declare-fun d!715868 () Bool)

(declare-fun lt!896374 () Regex!7425)

(assert (=> d!715868 (validRegex!3051 lt!896374)))

(declare-fun e!1588109 () Regex!7425)

(assert (=> d!715868 (= lt!896374 e!1588109)))

(declare-fun c!398702 () Bool)

(assert (=> d!715868 (= c!398702 (or ((_ is EmptyExpr!7425) r!27340) ((_ is EmptyLang!7425) r!27340)))))

(assert (=> d!715868 (validRegex!3051 r!27340)))

(assert (=> d!715868 (= (derivativeStep!1994 r!27340 c!14016) lt!896374)))

(declare-fun b!2504498 () Bool)

(declare-fun e!1588106 () Regex!7425)

(assert (=> b!2504498 (= e!1588109 e!1588106)))

(declare-fun c!398703 () Bool)

(assert (=> b!2504498 (= c!398703 ((_ is ElementMatch!7425) r!27340))))

(declare-fun b!2504499 () Bool)

(assert (=> b!2504499 (= e!1588106 (ite (= c!14016 (c!398637 r!27340)) EmptyExpr!7425 EmptyLang!7425))))

(declare-fun b!2504500 () Bool)

(declare-fun e!1588107 () Regex!7425)

(assert (=> b!2504500 (= e!1588107 (Union!7425 call!154962 call!154963))))

(declare-fun b!2504501 () Bool)

(declare-fun e!1588108 () Regex!7425)

(assert (=> b!2504501 (= e!1588107 e!1588108)))

(assert (=> b!2504501 (= c!398699 ((_ is Star!7425) r!27340))))

(declare-fun b!2504502 () Bool)

(assert (=> b!2504502 (= e!1588109 EmptyLang!7425)))

(declare-fun b!2504503 () Bool)

(declare-fun e!1588110 () Regex!7425)

(declare-fun call!154964 () Regex!7425)

(assert (=> b!2504503 (= e!1588110 (Union!7425 (Concat!12121 call!154964 (regTwo!15362 r!27340)) call!154962))))

(declare-fun b!2504504 () Bool)

(assert (=> b!2504504 (= e!1588110 (Union!7425 (Concat!12121 call!154964 (regTwo!15362 r!27340)) EmptyLang!7425))))

(declare-fun b!2504505 () Bool)

(declare-fun c!398700 () Bool)

(assert (=> b!2504505 (= c!398700 (nullable!2342 (regOne!15362 r!27340)))))

(assert (=> b!2504505 (= e!1588108 e!1588110)))

(declare-fun bm!154959 () Bool)

(assert (=> bm!154959 (= call!154964 call!154961)))

(declare-fun b!2504506 () Bool)

(assert (=> b!2504506 (= e!1588108 (Concat!12121 call!154961 r!27340))))

(declare-fun b!2504507 () Bool)

(assert (=> b!2504507 (= c!398701 ((_ is Union!7425) r!27340))))

(assert (=> b!2504507 (= e!1588106 e!1588107)))

(assert (= (and d!715868 c!398702) b!2504502))

(assert (= (and d!715868 (not c!398702)) b!2504498))

(assert (= (and b!2504498 c!398703) b!2504499))

(assert (= (and b!2504498 (not c!398703)) b!2504507))

(assert (= (and b!2504507 c!398701) b!2504500))

(assert (= (and b!2504507 (not c!398701)) b!2504501))

(assert (= (and b!2504501 c!398699) b!2504506))

(assert (= (and b!2504501 (not c!398699)) b!2504505))

(assert (= (and b!2504505 c!398700) b!2504503))

(assert (= (and b!2504505 (not c!398700)) b!2504504))

(assert (= (or b!2504503 b!2504504) bm!154959))

(assert (= (or b!2504506 bm!154959) bm!154956))

(assert (= (or b!2504500 bm!154956) bm!154957))

(assert (= (or b!2504500 b!2504503) bm!154958))

(declare-fun m!2865633 () Bool)

(assert (=> bm!154957 m!2865633))

(declare-fun m!2865635 () Bool)

(assert (=> bm!154958 m!2865635))

(declare-fun m!2865637 () Bool)

(assert (=> d!715868 m!2865637))

(assert (=> d!715868 m!2865507))

(assert (=> b!2504505 m!2865509))

(assert (=> b!2504298 d!715868))

(declare-fun b!2504508 () Bool)

(declare-fun res!1058904 () Bool)

(declare-fun e!1588115 () Bool)

(assert (=> b!2504508 (=> (not res!1058904) (not e!1588115))))

(assert (=> b!2504508 (= res!1058904 (isEmpty!16854 (tail!3986 tl!4068)))))

(declare-fun b!2504509 () Bool)

(declare-fun e!1588114 () Bool)

(declare-fun lt!896375 () Bool)

(assert (=> b!2504509 (= e!1588114 (not lt!896375))))

(declare-fun b!2504510 () Bool)

(declare-fun e!1588111 () Bool)

(assert (=> b!2504510 (= e!1588111 (matchR!3428 (derivativeStep!1994 lt!896343 (head!5709 tl!4068)) (tail!3986 tl!4068)))))

(declare-fun b!2504511 () Bool)

(assert (=> b!2504511 (= e!1588115 (= (head!5709 tl!4068) (c!398637 lt!896343)))))

(declare-fun bm!154960 () Bool)

(declare-fun call!154965 () Bool)

(assert (=> bm!154960 (= call!154965 (isEmpty!16854 tl!4068))))

(declare-fun b!2504512 () Bool)

(assert (=> b!2504512 (= e!1588111 (nullable!2342 lt!896343))))

(declare-fun b!2504513 () Bool)

(declare-fun res!1058911 () Bool)

(declare-fun e!1588116 () Bool)

(assert (=> b!2504513 (=> res!1058911 e!1588116)))

(assert (=> b!2504513 (= res!1058911 e!1588115)))

(declare-fun res!1058907 () Bool)

(assert (=> b!2504513 (=> (not res!1058907) (not e!1588115))))

(assert (=> b!2504513 (= res!1058907 lt!896375)))

(declare-fun b!2504514 () Bool)

(declare-fun e!1588117 () Bool)

(assert (=> b!2504514 (= e!1588117 e!1588114)))

(declare-fun c!398706 () Bool)

(assert (=> b!2504514 (= c!398706 ((_ is EmptyLang!7425) lt!896343))))

(declare-fun b!2504515 () Bool)

(declare-fun res!1058906 () Bool)

(assert (=> b!2504515 (=> res!1058906 e!1588116)))

(assert (=> b!2504515 (= res!1058906 (not ((_ is ElementMatch!7425) lt!896343)))))

(assert (=> b!2504515 (= e!1588114 e!1588116)))

(declare-fun b!2504516 () Bool)

(declare-fun res!1058910 () Bool)

(declare-fun e!1588113 () Bool)

(assert (=> b!2504516 (=> res!1058910 e!1588113)))

(assert (=> b!2504516 (= res!1058910 (not (isEmpty!16854 (tail!3986 tl!4068))))))

(declare-fun b!2504517 () Bool)

(declare-fun e!1588112 () Bool)

(assert (=> b!2504517 (= e!1588112 e!1588113)))

(declare-fun res!1058905 () Bool)

(assert (=> b!2504517 (=> res!1058905 e!1588113)))

(assert (=> b!2504517 (= res!1058905 call!154965)))

(declare-fun b!2504518 () Bool)

(declare-fun res!1058908 () Bool)

(assert (=> b!2504518 (=> (not res!1058908) (not e!1588115))))

(assert (=> b!2504518 (= res!1058908 (not call!154965))))

(declare-fun d!715870 () Bool)

(assert (=> d!715870 e!1588117))

(declare-fun c!398705 () Bool)

(assert (=> d!715870 (= c!398705 ((_ is EmptyExpr!7425) lt!896343))))

(assert (=> d!715870 (= lt!896375 e!1588111)))

(declare-fun c!398704 () Bool)

(assert (=> d!715870 (= c!398704 (isEmpty!16854 tl!4068))))

(assert (=> d!715870 (validRegex!3051 lt!896343)))

(assert (=> d!715870 (= (matchR!3428 lt!896343 tl!4068) lt!896375)))

(declare-fun b!2504519 () Bool)

(assert (=> b!2504519 (= e!1588113 (not (= (head!5709 tl!4068) (c!398637 lt!896343))))))

(declare-fun b!2504520 () Bool)

(assert (=> b!2504520 (= e!1588117 (= lt!896375 call!154965))))

(declare-fun b!2504521 () Bool)

(assert (=> b!2504521 (= e!1588116 e!1588112)))

(declare-fun res!1058909 () Bool)

(assert (=> b!2504521 (=> (not res!1058909) (not e!1588112))))

(assert (=> b!2504521 (= res!1058909 (not lt!896375))))

(assert (= (and d!715870 c!398704) b!2504512))

(assert (= (and d!715870 (not c!398704)) b!2504510))

(assert (= (and d!715870 c!398705) b!2504520))

(assert (= (and d!715870 (not c!398705)) b!2504514))

(assert (= (and b!2504514 c!398706) b!2504509))

(assert (= (and b!2504514 (not c!398706)) b!2504515))

(assert (= (and b!2504515 (not res!1058906)) b!2504513))

(assert (= (and b!2504513 res!1058907) b!2504518))

(assert (= (and b!2504518 res!1058908) b!2504508))

(assert (= (and b!2504508 res!1058904) b!2504511))

(assert (= (and b!2504513 (not res!1058911)) b!2504521))

(assert (= (and b!2504521 res!1058909) b!2504517))

(assert (= (and b!2504517 (not res!1058905)) b!2504516))

(assert (= (and b!2504516 (not res!1058910)) b!2504519))

(assert (= (or b!2504520 b!2504517 b!2504518) bm!154960))

(assert (=> b!2504508 m!2865607))

(assert (=> b!2504508 m!2865607))

(assert (=> b!2504508 m!2865609))

(assert (=> b!2504519 m!2865611))

(assert (=> b!2504511 m!2865611))

(assert (=> b!2504516 m!2865607))

(assert (=> b!2504516 m!2865607))

(assert (=> b!2504516 m!2865609))

(declare-fun m!2865645 () Bool)

(assert (=> b!2504512 m!2865645))

(assert (=> bm!154960 m!2865615))

(assert (=> b!2504510 m!2865611))

(assert (=> b!2504510 m!2865611))

(declare-fun m!2865647 () Bool)

(assert (=> b!2504510 m!2865647))

(assert (=> b!2504510 m!2865607))

(assert (=> b!2504510 m!2865647))

(assert (=> b!2504510 m!2865607))

(declare-fun m!2865649 () Bool)

(assert (=> b!2504510 m!2865649))

(assert (=> d!715870 m!2865615))

(declare-fun m!2865651 () Bool)

(assert (=> d!715870 m!2865651))

(assert (=> b!2504290 d!715870))

(declare-fun b!2504522 () Bool)

(declare-fun res!1058912 () Bool)

(declare-fun e!1588122 () Bool)

(assert (=> b!2504522 (=> (not res!1058912) (not e!1588122))))

(assert (=> b!2504522 (= res!1058912 (isEmpty!16854 (tail!3986 tl!4068)))))

(declare-fun b!2504523 () Bool)

(declare-fun e!1588121 () Bool)

(declare-fun lt!896376 () Bool)

(assert (=> b!2504523 (= e!1588121 (not lt!896376))))

(declare-fun b!2504524 () Bool)

(declare-fun e!1588118 () Bool)

(assert (=> b!2504524 (= e!1588118 (matchR!3428 (derivativeStep!1994 lt!896335 (head!5709 tl!4068)) (tail!3986 tl!4068)))))

(declare-fun b!2504525 () Bool)

(assert (=> b!2504525 (= e!1588122 (= (head!5709 tl!4068) (c!398637 lt!896335)))))

(declare-fun bm!154961 () Bool)

(declare-fun call!154966 () Bool)

(assert (=> bm!154961 (= call!154966 (isEmpty!16854 tl!4068))))

(declare-fun b!2504526 () Bool)

(assert (=> b!2504526 (= e!1588118 (nullable!2342 lt!896335))))

(declare-fun b!2504527 () Bool)

(declare-fun res!1058919 () Bool)

(declare-fun e!1588123 () Bool)

(assert (=> b!2504527 (=> res!1058919 e!1588123)))

(assert (=> b!2504527 (= res!1058919 e!1588122)))

(declare-fun res!1058915 () Bool)

(assert (=> b!2504527 (=> (not res!1058915) (not e!1588122))))

(assert (=> b!2504527 (= res!1058915 lt!896376)))

(declare-fun b!2504528 () Bool)

(declare-fun e!1588124 () Bool)

(assert (=> b!2504528 (= e!1588124 e!1588121)))

(declare-fun c!398709 () Bool)

(assert (=> b!2504528 (= c!398709 ((_ is EmptyLang!7425) lt!896335))))

(declare-fun b!2504529 () Bool)

(declare-fun res!1058914 () Bool)

(assert (=> b!2504529 (=> res!1058914 e!1588123)))

(assert (=> b!2504529 (= res!1058914 (not ((_ is ElementMatch!7425) lt!896335)))))

(assert (=> b!2504529 (= e!1588121 e!1588123)))

(declare-fun b!2504530 () Bool)

(declare-fun res!1058918 () Bool)

(declare-fun e!1588120 () Bool)

(assert (=> b!2504530 (=> res!1058918 e!1588120)))

(assert (=> b!2504530 (= res!1058918 (not (isEmpty!16854 (tail!3986 tl!4068))))))

(declare-fun b!2504531 () Bool)

(declare-fun e!1588119 () Bool)

(assert (=> b!2504531 (= e!1588119 e!1588120)))

(declare-fun res!1058913 () Bool)

(assert (=> b!2504531 (=> res!1058913 e!1588120)))

(assert (=> b!2504531 (= res!1058913 call!154966)))

(declare-fun b!2504532 () Bool)

(declare-fun res!1058916 () Bool)

(assert (=> b!2504532 (=> (not res!1058916) (not e!1588122))))

(assert (=> b!2504532 (= res!1058916 (not call!154966))))

(declare-fun d!715874 () Bool)

(assert (=> d!715874 e!1588124))

(declare-fun c!398708 () Bool)

(assert (=> d!715874 (= c!398708 ((_ is EmptyExpr!7425) lt!896335))))

(assert (=> d!715874 (= lt!896376 e!1588118)))

(declare-fun c!398707 () Bool)

(assert (=> d!715874 (= c!398707 (isEmpty!16854 tl!4068))))

(assert (=> d!715874 (validRegex!3051 lt!896335)))

(assert (=> d!715874 (= (matchR!3428 lt!896335 tl!4068) lt!896376)))

(declare-fun b!2504533 () Bool)

(assert (=> b!2504533 (= e!1588120 (not (= (head!5709 tl!4068) (c!398637 lt!896335))))))

(declare-fun b!2504534 () Bool)

(assert (=> b!2504534 (= e!1588124 (= lt!896376 call!154966))))

(declare-fun b!2504535 () Bool)

(assert (=> b!2504535 (= e!1588123 e!1588119)))

(declare-fun res!1058917 () Bool)

(assert (=> b!2504535 (=> (not res!1058917) (not e!1588119))))

(assert (=> b!2504535 (= res!1058917 (not lt!896376))))

(assert (= (and d!715874 c!398707) b!2504526))

(assert (= (and d!715874 (not c!398707)) b!2504524))

(assert (= (and d!715874 c!398708) b!2504534))

(assert (= (and d!715874 (not c!398708)) b!2504528))

(assert (= (and b!2504528 c!398709) b!2504523))

(assert (= (and b!2504528 (not c!398709)) b!2504529))

(assert (= (and b!2504529 (not res!1058914)) b!2504527))

(assert (= (and b!2504527 res!1058915) b!2504532))

(assert (= (and b!2504532 res!1058916) b!2504522))

(assert (= (and b!2504522 res!1058912) b!2504525))

(assert (= (and b!2504527 (not res!1058919)) b!2504535))

(assert (= (and b!2504535 res!1058917) b!2504531))

(assert (= (and b!2504531 (not res!1058913)) b!2504530))

(assert (= (and b!2504530 (not res!1058918)) b!2504533))

(assert (= (or b!2504534 b!2504531 b!2504532) bm!154961))

(assert (=> b!2504522 m!2865607))

(assert (=> b!2504522 m!2865607))

(assert (=> b!2504522 m!2865609))

(assert (=> b!2504533 m!2865611))

(assert (=> b!2504525 m!2865611))

(assert (=> b!2504530 m!2865607))

(assert (=> b!2504530 m!2865607))

(assert (=> b!2504530 m!2865609))

(declare-fun m!2865655 () Bool)

(assert (=> b!2504526 m!2865655))

(assert (=> bm!154961 m!2865615))

(assert (=> b!2504524 m!2865611))

(assert (=> b!2504524 m!2865611))

(declare-fun m!2865657 () Bool)

(assert (=> b!2504524 m!2865657))

(assert (=> b!2504524 m!2865607))

(assert (=> b!2504524 m!2865657))

(assert (=> b!2504524 m!2865607))

(declare-fun m!2865659 () Bool)

(assert (=> b!2504524 m!2865659))

(assert (=> d!715874 m!2865615))

(declare-fun m!2865661 () Bool)

(assert (=> d!715874 m!2865661))

(assert (=> b!2504290 d!715874))

(declare-fun d!715878 () Bool)

(declare-fun lt!896377 () Regex!7425)

(assert (=> d!715878 (validRegex!3051 lt!896377)))

(declare-fun e!1588125 () Regex!7425)

(assert (=> d!715878 (= lt!896377 e!1588125)))

(declare-fun c!398710 () Bool)

(assert (=> d!715878 (= c!398710 ((_ is Cons!29390) tl!4068))))

(assert (=> d!715878 (validRegex!3051 lt!896335)))

(assert (=> d!715878 (= (derivative!120 lt!896335 tl!4068) lt!896377)))

(declare-fun b!2504536 () Bool)

(assert (=> b!2504536 (= e!1588125 (derivative!120 (derivativeStep!1994 lt!896335 (h!34810 tl!4068)) (t!211189 tl!4068)))))

(declare-fun b!2504537 () Bool)

(assert (=> b!2504537 (= e!1588125 lt!896335)))

(assert (= (and d!715878 c!398710) b!2504536))

(assert (= (and d!715878 (not c!398710)) b!2504537))

(declare-fun m!2865663 () Bool)

(assert (=> d!715878 m!2865663))

(assert (=> d!715878 m!2865661))

(declare-fun m!2865665 () Bool)

(assert (=> b!2504536 m!2865665))

(assert (=> b!2504536 m!2865665))

(declare-fun m!2865667 () Bool)

(assert (=> b!2504536 m!2865667))

(assert (=> b!2504290 d!715878))

(declare-fun b!2504538 () Bool)

(declare-fun res!1058920 () Bool)

(declare-fun e!1588130 () Bool)

(assert (=> b!2504538 (=> (not res!1058920) (not e!1588130))))

(assert (=> b!2504538 (= res!1058920 (isEmpty!16854 (tail!3986 Nil!29390)))))

(declare-fun b!2504539 () Bool)

(declare-fun e!1588129 () Bool)

(declare-fun lt!896378 () Bool)

(assert (=> b!2504539 (= e!1588129 (not lt!896378))))

(declare-fun b!2504540 () Bool)

(declare-fun e!1588126 () Bool)

(assert (=> b!2504540 (= e!1588126 (matchR!3428 (derivativeStep!1994 (derivative!120 lt!896335 tl!4068) (head!5709 Nil!29390)) (tail!3986 Nil!29390)))))

(declare-fun b!2504541 () Bool)

(assert (=> b!2504541 (= e!1588130 (= (head!5709 Nil!29390) (c!398637 (derivative!120 lt!896335 tl!4068))))))

(declare-fun bm!154962 () Bool)

(declare-fun call!154967 () Bool)

(assert (=> bm!154962 (= call!154967 (isEmpty!16854 Nil!29390))))

(declare-fun b!2504542 () Bool)

(assert (=> b!2504542 (= e!1588126 (nullable!2342 (derivative!120 lt!896335 tl!4068)))))

(declare-fun b!2504543 () Bool)

(declare-fun res!1058927 () Bool)

(declare-fun e!1588131 () Bool)

(assert (=> b!2504543 (=> res!1058927 e!1588131)))

(assert (=> b!2504543 (= res!1058927 e!1588130)))

(declare-fun res!1058923 () Bool)

(assert (=> b!2504543 (=> (not res!1058923) (not e!1588130))))

(assert (=> b!2504543 (= res!1058923 lt!896378)))

(declare-fun b!2504544 () Bool)

(declare-fun e!1588132 () Bool)

(assert (=> b!2504544 (= e!1588132 e!1588129)))

(declare-fun c!398713 () Bool)

(assert (=> b!2504544 (= c!398713 ((_ is EmptyLang!7425) (derivative!120 lt!896335 tl!4068)))))

(declare-fun b!2504545 () Bool)

(declare-fun res!1058922 () Bool)

(assert (=> b!2504545 (=> res!1058922 e!1588131)))

(assert (=> b!2504545 (= res!1058922 (not ((_ is ElementMatch!7425) (derivative!120 lt!896335 tl!4068))))))

(assert (=> b!2504545 (= e!1588129 e!1588131)))

(declare-fun b!2504546 () Bool)

(declare-fun res!1058926 () Bool)

(declare-fun e!1588128 () Bool)

(assert (=> b!2504546 (=> res!1058926 e!1588128)))

(assert (=> b!2504546 (= res!1058926 (not (isEmpty!16854 (tail!3986 Nil!29390))))))

(declare-fun b!2504547 () Bool)

(declare-fun e!1588127 () Bool)

(assert (=> b!2504547 (= e!1588127 e!1588128)))

(declare-fun res!1058921 () Bool)

(assert (=> b!2504547 (=> res!1058921 e!1588128)))

(assert (=> b!2504547 (= res!1058921 call!154967)))

(declare-fun b!2504548 () Bool)

(declare-fun res!1058924 () Bool)

(assert (=> b!2504548 (=> (not res!1058924) (not e!1588130))))

(assert (=> b!2504548 (= res!1058924 (not call!154967))))

(declare-fun d!715880 () Bool)

(assert (=> d!715880 e!1588132))

(declare-fun c!398712 () Bool)

(assert (=> d!715880 (= c!398712 ((_ is EmptyExpr!7425) (derivative!120 lt!896335 tl!4068)))))

(assert (=> d!715880 (= lt!896378 e!1588126)))

(declare-fun c!398711 () Bool)

(assert (=> d!715880 (= c!398711 (isEmpty!16854 Nil!29390))))

(assert (=> d!715880 (validRegex!3051 (derivative!120 lt!896335 tl!4068))))

(assert (=> d!715880 (= (matchR!3428 (derivative!120 lt!896335 tl!4068) Nil!29390) lt!896378)))

(declare-fun b!2504549 () Bool)

(assert (=> b!2504549 (= e!1588128 (not (= (head!5709 Nil!29390) (c!398637 (derivative!120 lt!896335 tl!4068)))))))

(declare-fun b!2504550 () Bool)

(assert (=> b!2504550 (= e!1588132 (= lt!896378 call!154967))))

(declare-fun b!2504551 () Bool)

(assert (=> b!2504551 (= e!1588131 e!1588127)))

(declare-fun res!1058925 () Bool)

(assert (=> b!2504551 (=> (not res!1058925) (not e!1588127))))

(assert (=> b!2504551 (= res!1058925 (not lt!896378))))

(assert (= (and d!715880 c!398711) b!2504542))

(assert (= (and d!715880 (not c!398711)) b!2504540))

(assert (= (and d!715880 c!398712) b!2504550))

(assert (= (and d!715880 (not c!398712)) b!2504544))

(assert (= (and b!2504544 c!398713) b!2504539))

(assert (= (and b!2504544 (not c!398713)) b!2504545))

(assert (= (and b!2504545 (not res!1058922)) b!2504543))

(assert (= (and b!2504543 res!1058923) b!2504548))

(assert (= (and b!2504548 res!1058924) b!2504538))

(assert (= (and b!2504538 res!1058920) b!2504541))

(assert (= (and b!2504543 (not res!1058927)) b!2504551))

(assert (= (and b!2504551 res!1058925) b!2504547))

(assert (= (and b!2504547 (not res!1058921)) b!2504546))

(assert (= (and b!2504546 (not res!1058926)) b!2504549))

(assert (= (or b!2504550 b!2504547 b!2504548) bm!154962))

(declare-fun m!2865669 () Bool)

(assert (=> b!2504538 m!2865669))

(assert (=> b!2504538 m!2865669))

(declare-fun m!2865671 () Bool)

(assert (=> b!2504538 m!2865671))

(declare-fun m!2865673 () Bool)

(assert (=> b!2504549 m!2865673))

(assert (=> b!2504541 m!2865673))

(assert (=> b!2504546 m!2865669))

(assert (=> b!2504546 m!2865669))

(assert (=> b!2504546 m!2865671))

(assert (=> b!2504542 m!2865513))

(declare-fun m!2865675 () Bool)

(assert (=> b!2504542 m!2865675))

(declare-fun m!2865677 () Bool)

(assert (=> bm!154962 m!2865677))

(assert (=> b!2504540 m!2865673))

(assert (=> b!2504540 m!2865513))

(assert (=> b!2504540 m!2865673))

(declare-fun m!2865679 () Bool)

(assert (=> b!2504540 m!2865679))

(assert (=> b!2504540 m!2865669))

(assert (=> b!2504540 m!2865679))

(assert (=> b!2504540 m!2865669))

(declare-fun m!2865681 () Bool)

(assert (=> b!2504540 m!2865681))

(assert (=> d!715880 m!2865677))

(assert (=> d!715880 m!2865513))

(declare-fun m!2865683 () Bool)

(assert (=> d!715880 m!2865683))

(assert (=> b!2504290 d!715880))

(declare-fun d!715882 () Bool)

(assert (=> d!715882 (= (matchR!3428 lt!896335 tl!4068) (matchR!3428 (derivative!120 lt!896335 tl!4068) Nil!29390))))

(declare-fun lt!896381 () Unit!43107)

(declare-fun choose!14800 (Regex!7425 List!29490) Unit!43107)

(assert (=> d!715882 (= lt!896381 (choose!14800 lt!896335 tl!4068))))

(assert (=> d!715882 (validRegex!3051 lt!896335)))

(assert (=> d!715882 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!74 lt!896335 tl!4068) lt!896381)))

(declare-fun bs!468643 () Bool)

(assert (= bs!468643 d!715882))

(assert (=> bs!468643 m!2865661))

(assert (=> bs!468643 m!2865513))

(declare-fun m!2865685 () Bool)

(assert (=> bs!468643 m!2865685))

(assert (=> bs!468643 m!2865511))

(assert (=> bs!468643 m!2865513))

(assert (=> bs!468643 m!2865517))

(assert (=> b!2504290 d!715882))

(declare-fun d!715884 () Bool)

(declare-fun e!1588138 () Bool)

(assert (=> d!715884 e!1588138))

(declare-fun res!1058933 () Bool)

(assert (=> d!715884 (=> res!1058933 e!1588138)))

(assert (=> d!715884 (= res!1058933 (matchR!3428 lt!896343 tl!4068))))

(declare-fun lt!896387 () Unit!43107)

(declare-fun choose!14801 (Regex!7425 Regex!7425 List!29490) Unit!43107)

(assert (=> d!715884 (= lt!896387 (choose!14801 lt!896343 lt!896337 tl!4068))))

(declare-fun e!1588137 () Bool)

(assert (=> d!715884 e!1588137))

(declare-fun res!1058932 () Bool)

(assert (=> d!715884 (=> (not res!1058932) (not e!1588137))))

(assert (=> d!715884 (= res!1058932 (validRegex!3051 lt!896343))))

(assert (=> d!715884 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!120 lt!896343 lt!896337 tl!4068) lt!896387)))

(declare-fun b!2504556 () Bool)

(assert (=> b!2504556 (= e!1588137 (validRegex!3051 lt!896337))))

(declare-fun b!2504557 () Bool)

(assert (=> b!2504557 (= e!1588138 (matchR!3428 lt!896337 tl!4068))))

(assert (= (and d!715884 res!1058932) b!2504556))

(assert (= (and d!715884 (not res!1058933)) b!2504557))

(assert (=> d!715884 m!2865515))

(declare-fun m!2865693 () Bool)

(assert (=> d!715884 m!2865693))

(assert (=> d!715884 m!2865651))

(assert (=> b!2504556 m!2865621))

(assert (=> b!2504557 m!2865533))

(assert (=> b!2504290 d!715884))

(declare-fun bm!154963 () Bool)

(declare-fun call!154968 () Regex!7425)

(declare-fun call!154970 () Regex!7425)

(assert (=> bm!154963 (= call!154968 call!154970)))

(declare-fun bm!154964 () Bool)

(declare-fun c!398714 () Bool)

(declare-fun c!398716 () Bool)

(assert (=> bm!154964 (= call!154970 (derivativeStep!1994 (ite c!398716 (regTwo!15363 (regTwo!15362 r!27340)) (ite c!398714 (reg!7754 (regTwo!15362 r!27340)) (regOne!15362 (regTwo!15362 r!27340)))) c!14016))))

(declare-fun call!154969 () Regex!7425)

(declare-fun bm!154965 () Bool)

(assert (=> bm!154965 (= call!154969 (derivativeStep!1994 (ite c!398716 (regOne!15363 (regTwo!15362 r!27340)) (regTwo!15362 (regTwo!15362 r!27340))) c!14016))))

(declare-fun d!715888 () Bool)

(declare-fun lt!896388 () Regex!7425)

(assert (=> d!715888 (validRegex!3051 lt!896388)))

(declare-fun e!1588142 () Regex!7425)

(assert (=> d!715888 (= lt!896388 e!1588142)))

(declare-fun c!398717 () Bool)

(assert (=> d!715888 (= c!398717 (or ((_ is EmptyExpr!7425) (regTwo!15362 r!27340)) ((_ is EmptyLang!7425) (regTwo!15362 r!27340))))))

(assert (=> d!715888 (validRegex!3051 (regTwo!15362 r!27340))))

(assert (=> d!715888 (= (derivativeStep!1994 (regTwo!15362 r!27340) c!14016) lt!896388)))

(declare-fun b!2504558 () Bool)

(declare-fun e!1588139 () Regex!7425)

(assert (=> b!2504558 (= e!1588142 e!1588139)))

(declare-fun c!398718 () Bool)

(assert (=> b!2504558 (= c!398718 ((_ is ElementMatch!7425) (regTwo!15362 r!27340)))))

(declare-fun b!2504559 () Bool)

(assert (=> b!2504559 (= e!1588139 (ite (= c!14016 (c!398637 (regTwo!15362 r!27340))) EmptyExpr!7425 EmptyLang!7425))))

(declare-fun b!2504560 () Bool)

(declare-fun e!1588140 () Regex!7425)

(assert (=> b!2504560 (= e!1588140 (Union!7425 call!154969 call!154970))))

(declare-fun b!2504561 () Bool)

(declare-fun e!1588141 () Regex!7425)

(assert (=> b!2504561 (= e!1588140 e!1588141)))

(assert (=> b!2504561 (= c!398714 ((_ is Star!7425) (regTwo!15362 r!27340)))))

(declare-fun b!2504562 () Bool)

(assert (=> b!2504562 (= e!1588142 EmptyLang!7425)))

(declare-fun e!1588143 () Regex!7425)

(declare-fun b!2504563 () Bool)

(declare-fun call!154971 () Regex!7425)

(assert (=> b!2504563 (= e!1588143 (Union!7425 (Concat!12121 call!154971 (regTwo!15362 (regTwo!15362 r!27340))) call!154969))))

(declare-fun b!2504564 () Bool)

(assert (=> b!2504564 (= e!1588143 (Union!7425 (Concat!12121 call!154971 (regTwo!15362 (regTwo!15362 r!27340))) EmptyLang!7425))))

(declare-fun b!2504565 () Bool)

(declare-fun c!398715 () Bool)

(assert (=> b!2504565 (= c!398715 (nullable!2342 (regOne!15362 (regTwo!15362 r!27340))))))

(assert (=> b!2504565 (= e!1588141 e!1588143)))

(declare-fun bm!154966 () Bool)

(assert (=> bm!154966 (= call!154971 call!154968)))

(declare-fun b!2504566 () Bool)

(assert (=> b!2504566 (= e!1588141 (Concat!12121 call!154968 (regTwo!15362 r!27340)))))

(declare-fun b!2504567 () Bool)

(assert (=> b!2504567 (= c!398716 ((_ is Union!7425) (regTwo!15362 r!27340)))))

(assert (=> b!2504567 (= e!1588139 e!1588140)))

(assert (= (and d!715888 c!398717) b!2504562))

(assert (= (and d!715888 (not c!398717)) b!2504558))

(assert (= (and b!2504558 c!398718) b!2504559))

(assert (= (and b!2504558 (not c!398718)) b!2504567))

(assert (= (and b!2504567 c!398716) b!2504560))

(assert (= (and b!2504567 (not c!398716)) b!2504561))

(assert (= (and b!2504561 c!398714) b!2504566))

(assert (= (and b!2504561 (not c!398714)) b!2504565))

(assert (= (and b!2504565 c!398715) b!2504563))

(assert (= (and b!2504565 (not c!398715)) b!2504564))

(assert (= (or b!2504563 b!2504564) bm!154966))

(assert (= (or b!2504566 bm!154966) bm!154963))

(assert (= (or b!2504560 bm!154963) bm!154964))

(assert (= (or b!2504560 b!2504563) bm!154965))

(declare-fun m!2865695 () Bool)

(assert (=> bm!154964 m!2865695))

(declare-fun m!2865697 () Bool)

(assert (=> bm!154965 m!2865697))

(declare-fun m!2865699 () Bool)

(assert (=> d!715888 m!2865699))

(declare-fun m!2865701 () Bool)

(assert (=> d!715888 m!2865701))

(declare-fun m!2865703 () Bool)

(assert (=> b!2504565 m!2865703))

(assert (=> b!2504290 d!715888))

(declare-fun bm!154967 () Bool)

(declare-fun call!154972 () Regex!7425)

(declare-fun call!154974 () Regex!7425)

(assert (=> bm!154967 (= call!154972 call!154974)))

(declare-fun c!398721 () Bool)

(declare-fun c!398719 () Bool)

(declare-fun bm!154968 () Bool)

(assert (=> bm!154968 (= call!154974 (derivativeStep!1994 (ite c!398721 (regTwo!15363 (regOne!15362 r!27340)) (ite c!398719 (reg!7754 (regOne!15362 r!27340)) (regOne!15362 (regOne!15362 r!27340)))) c!14016))))

(declare-fun bm!154969 () Bool)

(declare-fun call!154973 () Regex!7425)

(assert (=> bm!154969 (= call!154973 (derivativeStep!1994 (ite c!398721 (regOne!15363 (regOne!15362 r!27340)) (regTwo!15362 (regOne!15362 r!27340))) c!14016))))

(declare-fun d!715890 () Bool)

(declare-fun lt!896389 () Regex!7425)

(assert (=> d!715890 (validRegex!3051 lt!896389)))

(declare-fun e!1588147 () Regex!7425)

(assert (=> d!715890 (= lt!896389 e!1588147)))

(declare-fun c!398722 () Bool)

(assert (=> d!715890 (= c!398722 (or ((_ is EmptyExpr!7425) (regOne!15362 r!27340)) ((_ is EmptyLang!7425) (regOne!15362 r!27340))))))

(assert (=> d!715890 (validRegex!3051 (regOne!15362 r!27340))))

(assert (=> d!715890 (= (derivativeStep!1994 (regOne!15362 r!27340) c!14016) lt!896389)))

(declare-fun b!2504568 () Bool)

(declare-fun e!1588144 () Regex!7425)

(assert (=> b!2504568 (= e!1588147 e!1588144)))

(declare-fun c!398723 () Bool)

(assert (=> b!2504568 (= c!398723 ((_ is ElementMatch!7425) (regOne!15362 r!27340)))))

(declare-fun b!2504569 () Bool)

(assert (=> b!2504569 (= e!1588144 (ite (= c!14016 (c!398637 (regOne!15362 r!27340))) EmptyExpr!7425 EmptyLang!7425))))

(declare-fun b!2504570 () Bool)

(declare-fun e!1588145 () Regex!7425)

(assert (=> b!2504570 (= e!1588145 (Union!7425 call!154973 call!154974))))

(declare-fun b!2504571 () Bool)

(declare-fun e!1588146 () Regex!7425)

(assert (=> b!2504571 (= e!1588145 e!1588146)))

(assert (=> b!2504571 (= c!398719 ((_ is Star!7425) (regOne!15362 r!27340)))))

(declare-fun b!2504572 () Bool)

(assert (=> b!2504572 (= e!1588147 EmptyLang!7425)))

(declare-fun call!154975 () Regex!7425)

(declare-fun b!2504573 () Bool)

(declare-fun e!1588148 () Regex!7425)

(assert (=> b!2504573 (= e!1588148 (Union!7425 (Concat!12121 call!154975 (regTwo!15362 (regOne!15362 r!27340))) call!154973))))

(declare-fun b!2504574 () Bool)

(assert (=> b!2504574 (= e!1588148 (Union!7425 (Concat!12121 call!154975 (regTwo!15362 (regOne!15362 r!27340))) EmptyLang!7425))))

(declare-fun b!2504575 () Bool)

(declare-fun c!398720 () Bool)

(assert (=> b!2504575 (= c!398720 (nullable!2342 (regOne!15362 (regOne!15362 r!27340))))))

(assert (=> b!2504575 (= e!1588146 e!1588148)))

(declare-fun bm!154970 () Bool)

(assert (=> bm!154970 (= call!154975 call!154972)))

(declare-fun b!2504576 () Bool)

(assert (=> b!2504576 (= e!1588146 (Concat!12121 call!154972 (regOne!15362 r!27340)))))

(declare-fun b!2504577 () Bool)

(assert (=> b!2504577 (= c!398721 ((_ is Union!7425) (regOne!15362 r!27340)))))

(assert (=> b!2504577 (= e!1588144 e!1588145)))

(assert (= (and d!715890 c!398722) b!2504572))

(assert (= (and d!715890 (not c!398722)) b!2504568))

(assert (= (and b!2504568 c!398723) b!2504569))

(assert (= (and b!2504568 (not c!398723)) b!2504577))

(assert (= (and b!2504577 c!398721) b!2504570))

(assert (= (and b!2504577 (not c!398721)) b!2504571))

(assert (= (and b!2504571 c!398719) b!2504576))

(assert (= (and b!2504571 (not c!398719)) b!2504575))

(assert (= (and b!2504575 c!398720) b!2504573))

(assert (= (and b!2504575 (not c!398720)) b!2504574))

(assert (= (or b!2504573 b!2504574) bm!154970))

(assert (= (or b!2504576 bm!154970) bm!154967))

(assert (= (or b!2504570 bm!154967) bm!154968))

(assert (= (or b!2504570 b!2504573) bm!154969))

(declare-fun m!2865705 () Bool)

(assert (=> bm!154968 m!2865705))

(declare-fun m!2865707 () Bool)

(assert (=> bm!154969 m!2865707))

(declare-fun m!2865709 () Bool)

(assert (=> d!715890 m!2865709))

(assert (=> d!715890 m!2865535))

(declare-fun m!2865711 () Bool)

(assert (=> b!2504575 m!2865711))

(assert (=> b!2504290 d!715890))

(declare-fun b!2504579 () Bool)

(declare-fun e!1588151 () Bool)

(declare-fun e!1588154 () Bool)

(assert (=> b!2504579 (= e!1588151 e!1588154)))

(declare-fun res!1058934 () Bool)

(assert (=> b!2504579 (=> (not res!1058934) (not e!1588154))))

(declare-fun call!154976 () Bool)

(assert (=> b!2504579 (= res!1058934 call!154976)))

(declare-fun b!2504580 () Bool)

(declare-fun res!1058937 () Bool)

(assert (=> b!2504580 (=> res!1058937 e!1588151)))

(assert (=> b!2504580 (= res!1058937 (not ((_ is Concat!12121) (regOne!15362 r!27340))))))

(declare-fun e!1588155 () Bool)

(assert (=> b!2504580 (= e!1588155 e!1588151)))

(declare-fun bm!154971 () Bool)

(declare-fun call!154977 () Bool)

(declare-fun c!398724 () Bool)

(assert (=> bm!154971 (= call!154977 (validRegex!3051 (ite c!398724 (regOne!15363 (regOne!15362 r!27340)) (regTwo!15362 (regOne!15362 r!27340)))))))

(declare-fun b!2504581 () Bool)

(declare-fun e!1588149 () Bool)

(declare-fun e!1588150 () Bool)

(assert (=> b!2504581 (= e!1588149 e!1588150)))

(declare-fun res!1058936 () Bool)

(assert (=> b!2504581 (= res!1058936 (not (nullable!2342 (reg!7754 (regOne!15362 r!27340)))))))

(assert (=> b!2504581 (=> (not res!1058936) (not e!1588150))))

(declare-fun b!2504582 () Bool)

(declare-fun e!1588152 () Bool)

(assert (=> b!2504582 (= e!1588152 e!1588149)))

(declare-fun c!398725 () Bool)

(assert (=> b!2504582 (= c!398725 ((_ is Star!7425) (regOne!15362 r!27340)))))

(declare-fun call!154978 () Bool)

(declare-fun bm!154972 () Bool)

(assert (=> bm!154972 (= call!154978 (validRegex!3051 (ite c!398725 (reg!7754 (regOne!15362 r!27340)) (ite c!398724 (regTwo!15363 (regOne!15362 r!27340)) (regOne!15362 (regOne!15362 r!27340))))))))

(declare-fun b!2504583 () Bool)

(assert (=> b!2504583 (= e!1588154 call!154977)))

(declare-fun b!2504578 () Bool)

(assert (=> b!2504578 (= e!1588149 e!1588155)))

(assert (=> b!2504578 (= c!398724 ((_ is Union!7425) (regOne!15362 r!27340)))))

(declare-fun d!715892 () Bool)

(declare-fun res!1058935 () Bool)

(assert (=> d!715892 (=> res!1058935 e!1588152)))

(assert (=> d!715892 (= res!1058935 ((_ is ElementMatch!7425) (regOne!15362 r!27340)))))

(assert (=> d!715892 (= (validRegex!3051 (regOne!15362 r!27340)) e!1588152)))

(declare-fun b!2504584 () Bool)

(declare-fun res!1058938 () Bool)

(declare-fun e!1588153 () Bool)

(assert (=> b!2504584 (=> (not res!1058938) (not e!1588153))))

(assert (=> b!2504584 (= res!1058938 call!154977)))

(assert (=> b!2504584 (= e!1588155 e!1588153)))

(declare-fun bm!154973 () Bool)

(assert (=> bm!154973 (= call!154976 call!154978)))

(declare-fun b!2504585 () Bool)

(assert (=> b!2504585 (= e!1588150 call!154978)))

(declare-fun b!2504586 () Bool)

(assert (=> b!2504586 (= e!1588153 call!154976)))

(assert (= (and d!715892 (not res!1058935)) b!2504582))

(assert (= (and b!2504582 c!398725) b!2504581))

(assert (= (and b!2504582 (not c!398725)) b!2504578))

(assert (= (and b!2504581 res!1058936) b!2504585))

(assert (= (and b!2504578 c!398724) b!2504584))

(assert (= (and b!2504578 (not c!398724)) b!2504580))

(assert (= (and b!2504584 res!1058938) b!2504586))

(assert (= (and b!2504580 (not res!1058937)) b!2504579))

(assert (= (and b!2504579 res!1058934) b!2504583))

(assert (= (or b!2504584 b!2504583) bm!154971))

(assert (= (or b!2504586 b!2504579) bm!154973))

(assert (= (or b!2504585 bm!154973) bm!154972))

(declare-fun m!2865713 () Bool)

(assert (=> bm!154971 m!2865713))

(declare-fun m!2865715 () Bool)

(assert (=> b!2504581 m!2865715))

(declare-fun m!2865717 () Bool)

(assert (=> bm!154972 m!2865717))

(assert (=> b!2504297 d!715892))

(declare-fun b!2504595 () Bool)

(declare-fun e!1588160 () Bool)

(declare-fun tp!801473 () Bool)

(assert (=> b!2504595 (= e!1588160 (and tp_is_empty!12705 tp!801473))))

(assert (=> b!2504296 (= tp!801469 e!1588160)))

(assert (= (and b!2504296 ((_ is Cons!29390) (t!211189 tl!4068))) b!2504595))

(declare-fun b!2504613 () Bool)

(declare-fun e!1588165 () Bool)

(declare-fun tp!801488 () Bool)

(declare-fun tp!801486 () Bool)

(assert (=> b!2504613 (= e!1588165 (and tp!801488 tp!801486))))

(declare-fun b!2504610 () Bool)

(assert (=> b!2504610 (= e!1588165 tp_is_empty!12705)))

(declare-fun b!2504612 () Bool)

(declare-fun tp!801487 () Bool)

(assert (=> b!2504612 (= e!1588165 tp!801487)))

(assert (=> b!2504295 (= tp!801466 e!1588165)))

(declare-fun b!2504611 () Bool)

(declare-fun tp!801485 () Bool)

(declare-fun tp!801484 () Bool)

(assert (=> b!2504611 (= e!1588165 (and tp!801485 tp!801484))))

(assert (= (and b!2504295 ((_ is ElementMatch!7425) (reg!7754 r!27340))) b!2504610))

(assert (= (and b!2504295 ((_ is Concat!12121) (reg!7754 r!27340))) b!2504611))

(assert (= (and b!2504295 ((_ is Star!7425) (reg!7754 r!27340))) b!2504612))

(assert (= (and b!2504295 ((_ is Union!7425) (reg!7754 r!27340))) b!2504613))

(declare-fun b!2504617 () Bool)

(declare-fun e!1588166 () Bool)

(declare-fun tp!801493 () Bool)

(declare-fun tp!801491 () Bool)

(assert (=> b!2504617 (= e!1588166 (and tp!801493 tp!801491))))

(declare-fun b!2504614 () Bool)

(assert (=> b!2504614 (= e!1588166 tp_is_empty!12705)))

(declare-fun b!2504616 () Bool)

(declare-fun tp!801492 () Bool)

(assert (=> b!2504616 (= e!1588166 tp!801492)))

(assert (=> b!2504300 (= tp!801467 e!1588166)))

(declare-fun b!2504615 () Bool)

(declare-fun tp!801490 () Bool)

(declare-fun tp!801489 () Bool)

(assert (=> b!2504615 (= e!1588166 (and tp!801490 tp!801489))))

(assert (= (and b!2504300 ((_ is ElementMatch!7425) (regOne!15362 r!27340))) b!2504614))

(assert (= (and b!2504300 ((_ is Concat!12121) (regOne!15362 r!27340))) b!2504615))

(assert (= (and b!2504300 ((_ is Star!7425) (regOne!15362 r!27340))) b!2504616))

(assert (= (and b!2504300 ((_ is Union!7425) (regOne!15362 r!27340))) b!2504617))

(declare-fun b!2504621 () Bool)

(declare-fun e!1588167 () Bool)

(declare-fun tp!801498 () Bool)

(declare-fun tp!801496 () Bool)

(assert (=> b!2504621 (= e!1588167 (and tp!801498 tp!801496))))

(declare-fun b!2504618 () Bool)

(assert (=> b!2504618 (= e!1588167 tp_is_empty!12705)))

(declare-fun b!2504620 () Bool)

(declare-fun tp!801497 () Bool)

(assert (=> b!2504620 (= e!1588167 tp!801497)))

(assert (=> b!2504300 (= tp!801468 e!1588167)))

(declare-fun b!2504619 () Bool)

(declare-fun tp!801495 () Bool)

(declare-fun tp!801494 () Bool)

(assert (=> b!2504619 (= e!1588167 (and tp!801495 tp!801494))))

(assert (= (and b!2504300 ((_ is ElementMatch!7425) (regTwo!15362 r!27340))) b!2504618))

(assert (= (and b!2504300 ((_ is Concat!12121) (regTwo!15362 r!27340))) b!2504619))

(assert (= (and b!2504300 ((_ is Star!7425) (regTwo!15362 r!27340))) b!2504620))

(assert (= (and b!2504300 ((_ is Union!7425) (regTwo!15362 r!27340))) b!2504621))

(declare-fun b!2504625 () Bool)

(declare-fun e!1588168 () Bool)

(declare-fun tp!801503 () Bool)

(declare-fun tp!801501 () Bool)

(assert (=> b!2504625 (= e!1588168 (and tp!801503 tp!801501))))

(declare-fun b!2504622 () Bool)

(assert (=> b!2504622 (= e!1588168 tp_is_empty!12705)))

(declare-fun b!2504624 () Bool)

(declare-fun tp!801502 () Bool)

(assert (=> b!2504624 (= e!1588168 tp!801502)))

(assert (=> b!2504292 (= tp!801470 e!1588168)))

(declare-fun b!2504623 () Bool)

(declare-fun tp!801500 () Bool)

(declare-fun tp!801499 () Bool)

(assert (=> b!2504623 (= e!1588168 (and tp!801500 tp!801499))))

(assert (= (and b!2504292 ((_ is ElementMatch!7425) (regOne!15363 r!27340))) b!2504622))

(assert (= (and b!2504292 ((_ is Concat!12121) (regOne!15363 r!27340))) b!2504623))

(assert (= (and b!2504292 ((_ is Star!7425) (regOne!15363 r!27340))) b!2504624))

(assert (= (and b!2504292 ((_ is Union!7425) (regOne!15363 r!27340))) b!2504625))

(declare-fun b!2504629 () Bool)

(declare-fun e!1588169 () Bool)

(declare-fun tp!801508 () Bool)

(declare-fun tp!801506 () Bool)

(assert (=> b!2504629 (= e!1588169 (and tp!801508 tp!801506))))

(declare-fun b!2504626 () Bool)

(assert (=> b!2504626 (= e!1588169 tp_is_empty!12705)))

(declare-fun b!2504628 () Bool)

(declare-fun tp!801507 () Bool)

(assert (=> b!2504628 (= e!1588169 tp!801507)))

(assert (=> b!2504292 (= tp!801465 e!1588169)))

(declare-fun b!2504627 () Bool)

(declare-fun tp!801505 () Bool)

(declare-fun tp!801504 () Bool)

(assert (=> b!2504627 (= e!1588169 (and tp!801505 tp!801504))))

(assert (= (and b!2504292 ((_ is ElementMatch!7425) (regTwo!15363 r!27340))) b!2504626))

(assert (= (and b!2504292 ((_ is Concat!12121) (regTwo!15363 r!27340))) b!2504627))

(assert (= (and b!2504292 ((_ is Star!7425) (regTwo!15363 r!27340))) b!2504628))

(assert (= (and b!2504292 ((_ is Union!7425) (regTwo!15363 r!27340))) b!2504629))

(check-sat (not b!2504611) (not b!2504624) (not b!2504505) (not d!715882) (not b!2504395) (not b!2504519) (not d!715856) (not b!2504376) (not bm!154958) (not b!2504617) (not b!2504428) (not b!2504549) (not b!2504530) (not d!715860) (not b!2504628) (not b!2504526) tp_is_empty!12705 (not b!2504625) (not bm!154971) (not b!2504541) (not d!715878) (not d!715874) (not b!2504542) (not b!2504379) (not bm!154935) (not b!2504377) (not bm!154962) (not b!2504322) (not bm!154972) (not b!2504581) (not d!715888) (not b!2504613) (not bm!154921) (not d!715870) (not d!715868) (not bm!154964) (not b!2504575) (not d!715844) (not bm!154965) (not b!2504627) (not b!2504615) (not bm!154968) (not b!2504546) (not b!2504378) (not d!715890) (not b!2504556) (not b!2504431) (not b!2504557) (not d!715880) (not b!2504524) (not b!2504510) (not b!2504375) (not b!2504536) (not d!715848) (not d!715864) (not b!2504525) (not b!2504381) (not b!2504466) (not b!2504540) (not bm!154969) (not b!2504508) (not b!2504619) (not b!2504620) (not bm!154957) (not b!2504538) (not d!715842) (not b!2504612) (not d!715884) (not b!2504616) (not d!715838) (not d!715866) (not bm!154960) (not b!2504396) (not b!2504623) (not b!2504595) (not b!2504522) (not b!2504436) (not b!2504439) (not b!2504629) (not b!2504565) (not b!2504512) (not bm!154961) (not b!2504516) (not bm!154922) (not b!2504432) (not b!2504430) (not b!2504511) (not b!2504621) (not b!2504533))
(check-sat)
