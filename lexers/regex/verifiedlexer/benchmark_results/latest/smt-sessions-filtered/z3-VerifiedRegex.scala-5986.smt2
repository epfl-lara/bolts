; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!293084 () Bool)

(assert start!293084)

(declare-fun b!3075301 () Bool)

(declare-fun res!1261938 () Bool)

(declare-fun e!1924225 () Bool)

(assert (=> b!3075301 (=> res!1261938 e!1924225)))

(declare-datatypes ((C!19232 0))(
  ( (C!19233 (val!11652 Int)) )
))
(declare-datatypes ((Regex!9523 0))(
  ( (ElementMatch!9523 (c!511631 C!19232)) (Concat!14844 (regOne!19558 Regex!9523) (regTwo!19558 Regex!9523)) (EmptyExpr!9523) (Star!9523 (reg!9852 Regex!9523)) (EmptyLang!9523) (Union!9523 (regOne!19559 Regex!9523) (regTwo!19559 Regex!9523)) )
))
(declare-fun lt!1052208 () Regex!9523)

(declare-fun isEmptyLang!574 (Regex!9523) Bool)

(assert (=> b!3075301 (= res!1261938 (isEmptyLang!574 lt!1052208))))

(declare-fun b!3075302 () Bool)

(declare-fun res!1261937 () Bool)

(assert (=> b!3075302 (=> res!1261937 e!1924225)))

(declare-fun isEmptyExpr!580 (Regex!9523) Bool)

(assert (=> b!3075302 (= res!1261937 (not (isEmptyExpr!580 lt!1052208)))))

(declare-fun b!3075303 () Bool)

(declare-fun res!1261936 () Bool)

(declare-fun e!1924229 () Bool)

(assert (=> b!3075303 (=> res!1261936 e!1924229)))

(declare-datatypes ((List!35388 0))(
  ( (Nil!35264) (Cons!35264 (h!40684 C!19232) (t!234453 List!35388)) )
))
(declare-fun s!11993 () List!35388)

(declare-fun isEmpty!19589 (List!35388) Bool)

(assert (=> b!3075303 (= res!1261936 (isEmpty!19589 s!11993))))

(declare-fun b!3075304 () Bool)

(declare-fun e!1924228 () Bool)

(declare-fun tp_is_empty!16609 () Bool)

(declare-fun tp!969597 () Bool)

(assert (=> b!3075304 (= e!1924228 (and tp_is_empty!16609 tp!969597))))

(declare-fun res!1261934 () Bool)

(declare-fun e!1924227 () Bool)

(assert (=> start!293084 (=> (not res!1261934) (not e!1924227))))

(declare-fun r!17423 () Regex!9523)

(declare-fun validRegex!4256 (Regex!9523) Bool)

(assert (=> start!293084 (= res!1261934 (validRegex!4256 r!17423))))

(assert (=> start!293084 e!1924227))

(declare-fun e!1924224 () Bool)

(assert (=> start!293084 e!1924224))

(assert (=> start!293084 e!1924228))

(declare-fun b!3075305 () Bool)

(declare-fun tp!969595 () Bool)

(declare-fun tp!969592 () Bool)

(assert (=> b!3075305 (= e!1924224 (and tp!969595 tp!969592))))

(declare-fun b!3075306 () Bool)

(assert (=> b!3075306 (= e!1924227 (not e!1924229))))

(declare-fun res!1261933 () Bool)

(assert (=> b!3075306 (=> res!1261933 e!1924229)))

(declare-fun lt!1052206 () Bool)

(get-info :version)

(assert (=> b!3075306 (= res!1261933 (or lt!1052206 (not ((_ is Concat!14844) r!17423))))))

(declare-fun matchRSpec!1660 (Regex!9523 List!35388) Bool)

(assert (=> b!3075306 (= lt!1052206 (matchRSpec!1660 r!17423 s!11993))))

(declare-fun matchR!4405 (Regex!9523 List!35388) Bool)

(assert (=> b!3075306 (= lt!1052206 (matchR!4405 r!17423 s!11993))))

(declare-datatypes ((Unit!49485 0))(
  ( (Unit!49486) )
))
(declare-fun lt!1052212 () Unit!49485)

(declare-fun mainMatchTheorem!1660 (Regex!9523 List!35388) Unit!49485)

(assert (=> b!3075306 (= lt!1052212 (mainMatchTheorem!1660 r!17423 s!11993))))

(declare-fun b!3075307 () Bool)

(assert (=> b!3075307 (= e!1924229 e!1924225)))

(declare-fun res!1261935 () Bool)

(assert (=> b!3075307 (=> res!1261935 e!1924225)))

(declare-fun lt!1052210 () Regex!9523)

(assert (=> b!3075307 (= res!1261935 (isEmptyLang!574 lt!1052210))))

(declare-fun simplify!478 (Regex!9523) Regex!9523)

(assert (=> b!3075307 (= lt!1052208 (simplify!478 (regTwo!19558 r!17423)))))

(assert (=> b!3075307 (= lt!1052210 (simplify!478 (regOne!19558 r!17423)))))

(declare-fun b!3075308 () Bool)

(declare-fun e!1924226 () Bool)

(assert (=> b!3075308 (= e!1924226 (validRegex!4256 (regOne!19558 r!17423)))))

(declare-datatypes ((tuple2!34172 0))(
  ( (tuple2!34173 (_1!20218 List!35388) (_2!20218 List!35388)) )
))
(declare-datatypes ((Option!6818 0))(
  ( (None!6817) (Some!6817 (v!34951 tuple2!34172)) )
))
(declare-fun isDefined!5369 (Option!6818) Bool)

(declare-fun findConcatSeparation!1212 (Regex!9523 Regex!9523 List!35388 List!35388 List!35388) Option!6818)

(assert (=> b!3075308 (isDefined!5369 (findConcatSeparation!1212 (regOne!19558 r!17423) (regTwo!19558 r!17423) Nil!35264 s!11993 s!11993))))

(declare-fun lt!1052211 () Unit!49485)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!32 (Regex!9523 Regex!9523 List!35388 List!35388 List!35388 List!35388 List!35388) Unit!49485)

(assert (=> b!3075308 (= lt!1052211 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!32 (regOne!19558 r!17423) (regTwo!19558 r!17423) s!11993 Nil!35264 s!11993 Nil!35264 s!11993))))

(declare-fun b!3075309 () Bool)

(assert (=> b!3075309 (= e!1924224 tp_is_empty!16609)))

(declare-fun b!3075310 () Bool)

(declare-fun tp!969596 () Bool)

(assert (=> b!3075310 (= e!1924224 tp!969596)))

(declare-fun b!3075311 () Bool)

(assert (=> b!3075311 (= e!1924225 e!1924226)))

(declare-fun res!1261931 () Bool)

(assert (=> b!3075311 (=> res!1261931 e!1924226)))

(declare-fun lt!1052205 () Bool)

(assert (=> b!3075311 (= res!1261931 (not lt!1052205))))

(assert (=> b!3075311 (= (matchR!4405 (regTwo!19558 r!17423) Nil!35264) (matchR!4405 lt!1052208 Nil!35264))))

(declare-fun lt!1052209 () Unit!49485)

(declare-fun lemmaSimplifySound!304 (Regex!9523 List!35388) Unit!49485)

(assert (=> b!3075311 (= lt!1052209 (lemmaSimplifySound!304 (regTwo!19558 r!17423) Nil!35264))))

(assert (=> b!3075311 (= lt!1052205 (matchR!4405 lt!1052210 s!11993))))

(assert (=> b!3075311 (= lt!1052205 (matchR!4405 (regOne!19558 r!17423) s!11993))))

(declare-fun lt!1052207 () Unit!49485)

(assert (=> b!3075311 (= lt!1052207 (lemmaSimplifySound!304 (regOne!19558 r!17423) s!11993))))

(declare-fun b!3075312 () Bool)

(declare-fun res!1261932 () Bool)

(assert (=> b!3075312 (=> res!1261932 e!1924225)))

(assert (=> b!3075312 (= res!1261932 (isEmptyExpr!580 lt!1052210))))

(declare-fun b!3075313 () Bool)

(declare-fun tp!969593 () Bool)

(declare-fun tp!969594 () Bool)

(assert (=> b!3075313 (= e!1924224 (and tp!969593 tp!969594))))

(assert (= (and start!293084 res!1261934) b!3075306))

(assert (= (and b!3075306 (not res!1261933)) b!3075303))

(assert (= (and b!3075303 (not res!1261936)) b!3075307))

(assert (= (and b!3075307 (not res!1261935)) b!3075301))

(assert (= (and b!3075301 (not res!1261938)) b!3075312))

(assert (= (and b!3075312 (not res!1261932)) b!3075302))

(assert (= (and b!3075302 (not res!1261937)) b!3075311))

(assert (= (and b!3075311 (not res!1261931)) b!3075308))

(assert (= (and start!293084 ((_ is ElementMatch!9523) r!17423)) b!3075309))

(assert (= (and start!293084 ((_ is Concat!14844) r!17423)) b!3075313))

(assert (= (and start!293084 ((_ is Star!9523) r!17423)) b!3075310))

(assert (= (and start!293084 ((_ is Union!9523) r!17423)) b!3075305))

(assert (= (and start!293084 ((_ is Cons!35264) s!11993)) b!3075304))

(declare-fun m!3387615 () Bool)

(assert (=> b!3075307 m!3387615))

(declare-fun m!3387617 () Bool)

(assert (=> b!3075307 m!3387617))

(declare-fun m!3387619 () Bool)

(assert (=> b!3075307 m!3387619))

(declare-fun m!3387621 () Bool)

(assert (=> b!3075302 m!3387621))

(declare-fun m!3387623 () Bool)

(assert (=> start!293084 m!3387623))

(declare-fun m!3387625 () Bool)

(assert (=> b!3075311 m!3387625))

(declare-fun m!3387627 () Bool)

(assert (=> b!3075311 m!3387627))

(declare-fun m!3387629 () Bool)

(assert (=> b!3075311 m!3387629))

(declare-fun m!3387631 () Bool)

(assert (=> b!3075311 m!3387631))

(declare-fun m!3387633 () Bool)

(assert (=> b!3075311 m!3387633))

(declare-fun m!3387635 () Bool)

(assert (=> b!3075311 m!3387635))

(declare-fun m!3387637 () Bool)

(assert (=> b!3075312 m!3387637))

(declare-fun m!3387639 () Bool)

(assert (=> b!3075308 m!3387639))

(declare-fun m!3387641 () Bool)

(assert (=> b!3075308 m!3387641))

(assert (=> b!3075308 m!3387641))

(declare-fun m!3387643 () Bool)

(assert (=> b!3075308 m!3387643))

(declare-fun m!3387645 () Bool)

(assert (=> b!3075308 m!3387645))

(declare-fun m!3387647 () Bool)

(assert (=> b!3075303 m!3387647))

(declare-fun m!3387649 () Bool)

(assert (=> b!3075306 m!3387649))

(declare-fun m!3387651 () Bool)

(assert (=> b!3075306 m!3387651))

(declare-fun m!3387653 () Bool)

(assert (=> b!3075306 m!3387653))

(declare-fun m!3387655 () Bool)

(assert (=> b!3075301 m!3387655))

(check-sat (not start!293084) (not b!3075302) (not b!3075304) (not b!3075303) (not b!3075310) (not b!3075311) (not b!3075307) (not b!3075306) (not b!3075313) (not b!3075308) tp_is_empty!16609 (not b!3075305) (not b!3075301) (not b!3075312))
(check-sat)
(get-model)

(declare-fun d!856879 () Bool)

(assert (=> d!856879 (= (isEmpty!19589 s!11993) ((_ is Nil!35264) s!11993))))

(assert (=> b!3075303 d!856879))

(declare-fun b!3075355 () Bool)

(declare-fun e!1924261 () Bool)

(declare-fun call!213923 () Bool)

(assert (=> b!3075355 (= e!1924261 call!213923)))

(declare-fun b!3075356 () Bool)

(declare-fun e!1924263 () Bool)

(declare-fun e!1924259 () Bool)

(assert (=> b!3075356 (= e!1924263 e!1924259)))

(declare-fun c!511644 () Bool)

(assert (=> b!3075356 (= c!511644 ((_ is Union!9523) (regOne!19558 r!17423)))))

(declare-fun b!3075357 () Bool)

(declare-fun res!1261957 () Bool)

(declare-fun e!1924262 () Bool)

(assert (=> b!3075357 (=> res!1261957 e!1924262)))

(assert (=> b!3075357 (= res!1261957 (not ((_ is Concat!14844) (regOne!19558 r!17423))))))

(assert (=> b!3075357 (= e!1924259 e!1924262)))

(declare-fun bm!213918 () Bool)

(assert (=> bm!213918 (= call!213923 (validRegex!4256 (ite c!511644 (regOne!19559 (regOne!19558 r!17423)) (regTwo!19558 (regOne!19558 r!17423)))))))

(declare-fun bm!213919 () Bool)

(declare-fun call!213924 () Bool)

(declare-fun call!213925 () Bool)

(assert (=> bm!213919 (= call!213924 call!213925)))

(declare-fun b!3075358 () Bool)

(declare-fun res!1261958 () Bool)

(declare-fun e!1924260 () Bool)

(assert (=> b!3075358 (=> (not res!1261958) (not e!1924260))))

(assert (=> b!3075358 (= res!1261958 call!213923)))

(assert (=> b!3075358 (= e!1924259 e!1924260)))

(declare-fun b!3075359 () Bool)

(declare-fun e!1924258 () Bool)

(assert (=> b!3075359 (= e!1924258 e!1924263)))

(declare-fun c!511645 () Bool)

(assert (=> b!3075359 (= c!511645 ((_ is Star!9523) (regOne!19558 r!17423)))))

(declare-fun b!3075360 () Bool)

(declare-fun e!1924264 () Bool)

(assert (=> b!3075360 (= e!1924263 e!1924264)))

(declare-fun res!1261956 () Bool)

(declare-fun nullable!3169 (Regex!9523) Bool)

(assert (=> b!3075360 (= res!1261956 (not (nullable!3169 (reg!9852 (regOne!19558 r!17423)))))))

(assert (=> b!3075360 (=> (not res!1261956) (not e!1924264))))

(declare-fun b!3075361 () Bool)

(assert (=> b!3075361 (= e!1924260 call!213924)))

(declare-fun d!856881 () Bool)

(declare-fun res!1261955 () Bool)

(assert (=> d!856881 (=> res!1261955 e!1924258)))

(assert (=> d!856881 (= res!1261955 ((_ is ElementMatch!9523) (regOne!19558 r!17423)))))

(assert (=> d!856881 (= (validRegex!4256 (regOne!19558 r!17423)) e!1924258)))

(declare-fun b!3075354 () Bool)

(assert (=> b!3075354 (= e!1924262 e!1924261)))

(declare-fun res!1261959 () Bool)

(assert (=> b!3075354 (=> (not res!1261959) (not e!1924261))))

(assert (=> b!3075354 (= res!1261959 call!213924)))

(declare-fun bm!213920 () Bool)

(assert (=> bm!213920 (= call!213925 (validRegex!4256 (ite c!511645 (reg!9852 (regOne!19558 r!17423)) (ite c!511644 (regTwo!19559 (regOne!19558 r!17423)) (regOne!19558 (regOne!19558 r!17423))))))))

(declare-fun b!3075362 () Bool)

(assert (=> b!3075362 (= e!1924264 call!213925)))

(assert (= (and d!856881 (not res!1261955)) b!3075359))

(assert (= (and b!3075359 c!511645) b!3075360))

(assert (= (and b!3075359 (not c!511645)) b!3075356))

(assert (= (and b!3075360 res!1261956) b!3075362))

(assert (= (and b!3075356 c!511644) b!3075358))

(assert (= (and b!3075356 (not c!511644)) b!3075357))

(assert (= (and b!3075358 res!1261958) b!3075361))

(assert (= (and b!3075357 (not res!1261957)) b!3075354))

(assert (= (and b!3075354 res!1261959) b!3075355))

(assert (= (or b!3075358 b!3075355) bm!213918))

(assert (= (or b!3075361 b!3075354) bm!213919))

(assert (= (or b!3075362 bm!213919) bm!213920))

(declare-fun m!3387657 () Bool)

(assert (=> bm!213918 m!3387657))

(declare-fun m!3387659 () Bool)

(assert (=> b!3075360 m!3387659))

(declare-fun m!3387661 () Bool)

(assert (=> bm!213920 m!3387661))

(assert (=> b!3075308 d!856881))

(declare-fun d!856883 () Bool)

(declare-fun isEmpty!19590 (Option!6818) Bool)

(assert (=> d!856883 (= (isDefined!5369 (findConcatSeparation!1212 (regOne!19558 r!17423) (regTwo!19558 r!17423) Nil!35264 s!11993 s!11993)) (not (isEmpty!19590 (findConcatSeparation!1212 (regOne!19558 r!17423) (regTwo!19558 r!17423) Nil!35264 s!11993 s!11993))))))

(declare-fun bs!532750 () Bool)

(assert (= bs!532750 d!856883))

(assert (=> bs!532750 m!3387641))

(declare-fun m!3387663 () Bool)

(assert (=> bs!532750 m!3387663))

(assert (=> b!3075308 d!856883))

(declare-fun b!3075381 () Bool)

(declare-fun e!1924277 () Option!6818)

(assert (=> b!3075381 (= e!1924277 (Some!6817 (tuple2!34173 Nil!35264 s!11993)))))

(declare-fun b!3075382 () Bool)

(declare-fun e!1924275 () Option!6818)

(assert (=> b!3075382 (= e!1924275 None!6817)))

(declare-fun b!3075383 () Bool)

(declare-fun res!1261973 () Bool)

(declare-fun e!1924279 () Bool)

(assert (=> b!3075383 (=> (not res!1261973) (not e!1924279))))

(declare-fun lt!1052219 () Option!6818)

(declare-fun get!11045 (Option!6818) tuple2!34172)

(assert (=> b!3075383 (= res!1261973 (matchR!4405 (regTwo!19558 r!17423) (_2!20218 (get!11045 lt!1052219))))))

(declare-fun b!3075384 () Bool)

(assert (=> b!3075384 (= e!1924277 e!1924275)))

(declare-fun c!511651 () Bool)

(assert (=> b!3075384 (= c!511651 ((_ is Nil!35264) s!11993))))

(declare-fun b!3075385 () Bool)

(declare-fun ++!8473 (List!35388 List!35388) List!35388)

(assert (=> b!3075385 (= e!1924279 (= (++!8473 (_1!20218 (get!11045 lt!1052219)) (_2!20218 (get!11045 lt!1052219))) s!11993))))

(declare-fun b!3075386 () Bool)

(declare-fun e!1924278 () Bool)

(assert (=> b!3075386 (= e!1924278 (matchR!4405 (regTwo!19558 r!17423) s!11993))))

(declare-fun b!3075387 () Bool)

(declare-fun res!1261972 () Bool)

(assert (=> b!3075387 (=> (not res!1261972) (not e!1924279))))

(assert (=> b!3075387 (= res!1261972 (matchR!4405 (regOne!19558 r!17423) (_1!20218 (get!11045 lt!1052219))))))

(declare-fun d!856885 () Bool)

(declare-fun e!1924276 () Bool)

(assert (=> d!856885 e!1924276))

(declare-fun res!1261974 () Bool)

(assert (=> d!856885 (=> res!1261974 e!1924276)))

(assert (=> d!856885 (= res!1261974 e!1924279)))

(declare-fun res!1261970 () Bool)

(assert (=> d!856885 (=> (not res!1261970) (not e!1924279))))

(assert (=> d!856885 (= res!1261970 (isDefined!5369 lt!1052219))))

(assert (=> d!856885 (= lt!1052219 e!1924277)))

(declare-fun c!511650 () Bool)

(assert (=> d!856885 (= c!511650 e!1924278)))

(declare-fun res!1261971 () Bool)

(assert (=> d!856885 (=> (not res!1261971) (not e!1924278))))

(assert (=> d!856885 (= res!1261971 (matchR!4405 (regOne!19558 r!17423) Nil!35264))))

(assert (=> d!856885 (validRegex!4256 (regOne!19558 r!17423))))

(assert (=> d!856885 (= (findConcatSeparation!1212 (regOne!19558 r!17423) (regTwo!19558 r!17423) Nil!35264 s!11993 s!11993) lt!1052219)))

(declare-fun b!3075388 () Bool)

(declare-fun lt!1052221 () Unit!49485)

(declare-fun lt!1052220 () Unit!49485)

(assert (=> b!3075388 (= lt!1052221 lt!1052220)))

(assert (=> b!3075388 (= (++!8473 (++!8473 Nil!35264 (Cons!35264 (h!40684 s!11993) Nil!35264)) (t!234453 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1068 (List!35388 C!19232 List!35388 List!35388) Unit!49485)

(assert (=> b!3075388 (= lt!1052220 (lemmaMoveElementToOtherListKeepsConcatEq!1068 Nil!35264 (h!40684 s!11993) (t!234453 s!11993) s!11993))))

(assert (=> b!3075388 (= e!1924275 (findConcatSeparation!1212 (regOne!19558 r!17423) (regTwo!19558 r!17423) (++!8473 Nil!35264 (Cons!35264 (h!40684 s!11993) Nil!35264)) (t!234453 s!11993) s!11993))))

(declare-fun b!3075389 () Bool)

(assert (=> b!3075389 (= e!1924276 (not (isDefined!5369 lt!1052219)))))

(assert (= (and d!856885 res!1261971) b!3075386))

(assert (= (and d!856885 c!511650) b!3075381))

(assert (= (and d!856885 (not c!511650)) b!3075384))

(assert (= (and b!3075384 c!511651) b!3075382))

(assert (= (and b!3075384 (not c!511651)) b!3075388))

(assert (= (and d!856885 res!1261970) b!3075387))

(assert (= (and b!3075387 res!1261972) b!3075383))

(assert (= (and b!3075383 res!1261973) b!3075385))

(assert (= (and d!856885 (not res!1261974)) b!3075389))

(declare-fun m!3387665 () Bool)

(assert (=> b!3075387 m!3387665))

(declare-fun m!3387667 () Bool)

(assert (=> b!3075387 m!3387667))

(assert (=> b!3075385 m!3387665))

(declare-fun m!3387669 () Bool)

(assert (=> b!3075385 m!3387669))

(declare-fun m!3387671 () Bool)

(assert (=> d!856885 m!3387671))

(declare-fun m!3387673 () Bool)

(assert (=> d!856885 m!3387673))

(assert (=> d!856885 m!3387639))

(assert (=> b!3075383 m!3387665))

(declare-fun m!3387675 () Bool)

(assert (=> b!3075383 m!3387675))

(declare-fun m!3387677 () Bool)

(assert (=> b!3075386 m!3387677))

(declare-fun m!3387679 () Bool)

(assert (=> b!3075388 m!3387679))

(assert (=> b!3075388 m!3387679))

(declare-fun m!3387681 () Bool)

(assert (=> b!3075388 m!3387681))

(declare-fun m!3387683 () Bool)

(assert (=> b!3075388 m!3387683))

(assert (=> b!3075388 m!3387679))

(declare-fun m!3387685 () Bool)

(assert (=> b!3075388 m!3387685))

(assert (=> b!3075389 m!3387671))

(assert (=> b!3075308 d!856885))

(declare-fun d!856887 () Bool)

(assert (=> d!856887 (isDefined!5369 (findConcatSeparation!1212 (regOne!19558 r!17423) (regTwo!19558 r!17423) Nil!35264 s!11993 s!11993))))

(declare-fun lt!1052224 () Unit!49485)

(declare-fun choose!18217 (Regex!9523 Regex!9523 List!35388 List!35388 List!35388 List!35388 List!35388) Unit!49485)

(assert (=> d!856887 (= lt!1052224 (choose!18217 (regOne!19558 r!17423) (regTwo!19558 r!17423) s!11993 Nil!35264 s!11993 Nil!35264 s!11993))))

(assert (=> d!856887 (validRegex!4256 (regOne!19558 r!17423))))

(assert (=> d!856887 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!32 (regOne!19558 r!17423) (regTwo!19558 r!17423) s!11993 Nil!35264 s!11993 Nil!35264 s!11993) lt!1052224)))

(declare-fun bs!532751 () Bool)

(assert (= bs!532751 d!856887))

(assert (=> bs!532751 m!3387641))

(assert (=> bs!532751 m!3387641))

(assert (=> bs!532751 m!3387643))

(declare-fun m!3387687 () Bool)

(assert (=> bs!532751 m!3387687))

(assert (=> bs!532751 m!3387639))

(assert (=> b!3075308 d!856887))

(declare-fun b!3075743 () Bool)

(assert (=> b!3075743 true))

(assert (=> b!3075743 true))

(declare-fun bs!532758 () Bool)

(declare-fun b!3075753 () Bool)

(assert (= bs!532758 (and b!3075753 b!3075743)))

(declare-fun lambda!114168 () Int)

(declare-fun lambda!114167 () Int)

(assert (=> bs!532758 (not (= lambda!114168 lambda!114167))))

(assert (=> b!3075753 true))

(assert (=> b!3075753 true))

(declare-fun b!3075744 () Bool)

(declare-fun e!1924471 () Bool)

(declare-fun call!213983 () Bool)

(assert (=> b!3075744 (= e!1924471 call!213983)))

(declare-fun b!3075745 () Bool)

(declare-fun c!511746 () Bool)

(assert (=> b!3075745 (= c!511746 ((_ is Union!9523) r!17423))))

(declare-fun e!1924473 () Bool)

(declare-fun e!1924467 () Bool)

(assert (=> b!3075745 (= e!1924473 e!1924467)))

(declare-fun b!3075746 () Bool)

(declare-fun e!1924468 () Bool)

(assert (=> b!3075746 (= e!1924467 e!1924468)))

(declare-fun res!1262108 () Bool)

(assert (=> b!3075746 (= res!1262108 (matchRSpec!1660 (regOne!19559 r!17423) s!11993))))

(assert (=> b!3075746 (=> res!1262108 e!1924468)))

(declare-fun b!3075747 () Bool)

(declare-fun res!1262109 () Bool)

(declare-fun e!1924470 () Bool)

(assert (=> b!3075747 (=> res!1262109 e!1924470)))

(assert (=> b!3075747 (= res!1262109 call!213983)))

(declare-fun e!1924469 () Bool)

(assert (=> b!3075747 (= e!1924469 e!1924470)))

(declare-fun b!3075748 () Bool)

(assert (=> b!3075748 (= e!1924473 (= s!11993 (Cons!35264 (c!511631 r!17423) Nil!35264)))))

(declare-fun bm!213978 () Bool)

(declare-fun c!511745 () Bool)

(declare-fun call!213984 () Bool)

(declare-fun Exists!1786 (Int) Bool)

(assert (=> bm!213978 (= call!213984 (Exists!1786 (ite c!511745 lambda!114167 lambda!114168)))))

(declare-fun bm!213979 () Bool)

(assert (=> bm!213979 (= call!213983 (isEmpty!19589 s!11993))))

(declare-fun b!3075749 () Bool)

(assert (=> b!3075749 (= e!1924468 (matchRSpec!1660 (regTwo!19559 r!17423) s!11993))))

(declare-fun b!3075750 () Bool)

(assert (=> b!3075750 (= e!1924467 e!1924469)))

(assert (=> b!3075750 (= c!511745 ((_ is Star!9523) r!17423))))

(declare-fun b!3075751 () Bool)

(declare-fun e!1924472 () Bool)

(assert (=> b!3075751 (= e!1924471 e!1924472)))

(declare-fun res!1262107 () Bool)

(assert (=> b!3075751 (= res!1262107 (not ((_ is EmptyLang!9523) r!17423)))))

(assert (=> b!3075751 (=> (not res!1262107) (not e!1924472))))

(declare-fun b!3075752 () Bool)

(declare-fun c!511744 () Bool)

(assert (=> b!3075752 (= c!511744 ((_ is ElementMatch!9523) r!17423))))

(assert (=> b!3075752 (= e!1924472 e!1924473)))

(assert (=> b!3075753 (= e!1924469 call!213984)))

(assert (=> b!3075743 (= e!1924470 call!213984)))

(declare-fun d!856889 () Bool)

(declare-fun c!511743 () Bool)

(assert (=> d!856889 (= c!511743 ((_ is EmptyExpr!9523) r!17423))))

(assert (=> d!856889 (= (matchRSpec!1660 r!17423 s!11993) e!1924471)))

(assert (= (and d!856889 c!511743) b!3075744))

(assert (= (and d!856889 (not c!511743)) b!3075751))

(assert (= (and b!3075751 res!1262107) b!3075752))

(assert (= (and b!3075752 c!511744) b!3075748))

(assert (= (and b!3075752 (not c!511744)) b!3075745))

(assert (= (and b!3075745 c!511746) b!3075746))

(assert (= (and b!3075745 (not c!511746)) b!3075750))

(assert (= (and b!3075746 (not res!1262108)) b!3075749))

(assert (= (and b!3075750 c!511745) b!3075747))

(assert (= (and b!3075750 (not c!511745)) b!3075753))

(assert (= (and b!3075747 (not res!1262109)) b!3075743))

(assert (= (or b!3075743 b!3075753) bm!213978))

(assert (= (or b!3075744 b!3075747) bm!213979))

(declare-fun m!3387825 () Bool)

(assert (=> b!3075746 m!3387825))

(declare-fun m!3387827 () Bool)

(assert (=> bm!213978 m!3387827))

(assert (=> bm!213979 m!3387647))

(declare-fun m!3387829 () Bool)

(assert (=> b!3075749 m!3387829))

(assert (=> b!3075306 d!856889))

(declare-fun b!3075786 () Bool)

(declare-fun e!1924492 () Bool)

(declare-fun lt!1052277 () Bool)

(assert (=> b!3075786 (= e!1924492 (not lt!1052277))))

(declare-fun b!3075787 () Bool)

(declare-fun e!1924488 () Bool)

(assert (=> b!3075787 (= e!1924488 e!1924492)))

(declare-fun c!511753 () Bool)

(assert (=> b!3075787 (= c!511753 ((_ is EmptyLang!9523) r!17423))))

(declare-fun b!3075788 () Bool)

(declare-fun e!1924490 () Bool)

(declare-fun head!6824 (List!35388) C!19232)

(assert (=> b!3075788 (= e!1924490 (= (head!6824 s!11993) (c!511631 r!17423)))))

(declare-fun b!3075789 () Bool)

(declare-fun res!1262128 () Bool)

(assert (=> b!3075789 (=> (not res!1262128) (not e!1924490))))

(declare-fun call!213987 () Bool)

(assert (=> b!3075789 (= res!1262128 (not call!213987))))

(declare-fun b!3075790 () Bool)

(declare-fun res!1262130 () Bool)

(declare-fun e!1924491 () Bool)

(assert (=> b!3075790 (=> res!1262130 e!1924491)))

(declare-fun tail!5050 (List!35388) List!35388)

(assert (=> b!3075790 (= res!1262130 (not (isEmpty!19589 (tail!5050 s!11993))))))

(declare-fun b!3075791 () Bool)

(declare-fun e!1924493 () Bool)

(declare-fun e!1924494 () Bool)

(assert (=> b!3075791 (= e!1924493 e!1924494)))

(declare-fun res!1262126 () Bool)

(assert (=> b!3075791 (=> (not res!1262126) (not e!1924494))))

(assert (=> b!3075791 (= res!1262126 (not lt!1052277))))

(declare-fun b!3075792 () Bool)

(assert (=> b!3075792 (= e!1924488 (= lt!1052277 call!213987))))

(declare-fun b!3075793 () Bool)

(assert (=> b!3075793 (= e!1924491 (not (= (head!6824 s!11993) (c!511631 r!17423))))))

(declare-fun b!3075794 () Bool)

(declare-fun res!1262131 () Bool)

(assert (=> b!3075794 (=> res!1262131 e!1924493)))

(assert (=> b!3075794 (= res!1262131 (not ((_ is ElementMatch!9523) r!17423)))))

(assert (=> b!3075794 (= e!1924492 e!1924493)))

(declare-fun b!3075795 () Bool)

(declare-fun e!1924489 () Bool)

(declare-fun derivativeStep!2765 (Regex!9523 C!19232) Regex!9523)

(assert (=> b!3075795 (= e!1924489 (matchR!4405 (derivativeStep!2765 r!17423 (head!6824 s!11993)) (tail!5050 s!11993)))))

(declare-fun b!3075796 () Bool)

(assert (=> b!3075796 (= e!1924489 (nullable!3169 r!17423))))

(declare-fun d!856931 () Bool)

(assert (=> d!856931 e!1924488))

(declare-fun c!511755 () Bool)

(assert (=> d!856931 (= c!511755 ((_ is EmptyExpr!9523) r!17423))))

(assert (=> d!856931 (= lt!1052277 e!1924489)))

(declare-fun c!511754 () Bool)

(assert (=> d!856931 (= c!511754 (isEmpty!19589 s!11993))))

(assert (=> d!856931 (validRegex!4256 r!17423)))

(assert (=> d!856931 (= (matchR!4405 r!17423 s!11993) lt!1052277)))

(declare-fun b!3075797 () Bool)

(assert (=> b!3075797 (= e!1924494 e!1924491)))

(declare-fun res!1262133 () Bool)

(assert (=> b!3075797 (=> res!1262133 e!1924491)))

(assert (=> b!3075797 (= res!1262133 call!213987)))

(declare-fun b!3075798 () Bool)

(declare-fun res!1262129 () Bool)

(assert (=> b!3075798 (=> (not res!1262129) (not e!1924490))))

(assert (=> b!3075798 (= res!1262129 (isEmpty!19589 (tail!5050 s!11993)))))

(declare-fun bm!213982 () Bool)

(assert (=> bm!213982 (= call!213987 (isEmpty!19589 s!11993))))

(declare-fun b!3075799 () Bool)

(declare-fun res!1262127 () Bool)

(assert (=> b!3075799 (=> res!1262127 e!1924493)))

(assert (=> b!3075799 (= res!1262127 e!1924490)))

(declare-fun res!1262132 () Bool)

(assert (=> b!3075799 (=> (not res!1262132) (not e!1924490))))

(assert (=> b!3075799 (= res!1262132 lt!1052277)))

(assert (= (and d!856931 c!511754) b!3075796))

(assert (= (and d!856931 (not c!511754)) b!3075795))

(assert (= (and d!856931 c!511755) b!3075792))

(assert (= (and d!856931 (not c!511755)) b!3075787))

(assert (= (and b!3075787 c!511753) b!3075786))

(assert (= (and b!3075787 (not c!511753)) b!3075794))

(assert (= (and b!3075794 (not res!1262131)) b!3075799))

(assert (= (and b!3075799 res!1262132) b!3075789))

(assert (= (and b!3075789 res!1262128) b!3075798))

(assert (= (and b!3075798 res!1262129) b!3075788))

(assert (= (and b!3075799 (not res!1262127)) b!3075791))

(assert (= (and b!3075791 res!1262126) b!3075797))

(assert (= (and b!3075797 (not res!1262133)) b!3075790))

(assert (= (and b!3075790 (not res!1262130)) b!3075793))

(assert (= (or b!3075792 b!3075789 b!3075797) bm!213982))

(assert (=> d!856931 m!3387647))

(assert (=> d!856931 m!3387623))

(declare-fun m!3387831 () Bool)

(assert (=> b!3075793 m!3387831))

(declare-fun m!3387833 () Bool)

(assert (=> b!3075798 m!3387833))

(assert (=> b!3075798 m!3387833))

(declare-fun m!3387835 () Bool)

(assert (=> b!3075798 m!3387835))

(assert (=> bm!213982 m!3387647))

(assert (=> b!3075788 m!3387831))

(declare-fun m!3387837 () Bool)

(assert (=> b!3075796 m!3387837))

(assert (=> b!3075795 m!3387831))

(assert (=> b!3075795 m!3387831))

(declare-fun m!3387839 () Bool)

(assert (=> b!3075795 m!3387839))

(assert (=> b!3075795 m!3387833))

(assert (=> b!3075795 m!3387839))

(assert (=> b!3075795 m!3387833))

(declare-fun m!3387841 () Bool)

(assert (=> b!3075795 m!3387841))

(assert (=> b!3075790 m!3387833))

(assert (=> b!3075790 m!3387833))

(assert (=> b!3075790 m!3387835))

(assert (=> b!3075306 d!856931))

(declare-fun d!856933 () Bool)

(assert (=> d!856933 (= (matchR!4405 r!17423 s!11993) (matchRSpec!1660 r!17423 s!11993))))

(declare-fun lt!1052280 () Unit!49485)

(declare-fun choose!18218 (Regex!9523 List!35388) Unit!49485)

(assert (=> d!856933 (= lt!1052280 (choose!18218 r!17423 s!11993))))

(assert (=> d!856933 (validRegex!4256 r!17423)))

(assert (=> d!856933 (= (mainMatchTheorem!1660 r!17423 s!11993) lt!1052280)))

(declare-fun bs!532759 () Bool)

(assert (= bs!532759 d!856933))

(assert (=> bs!532759 m!3387651))

(assert (=> bs!532759 m!3387649))

(declare-fun m!3387843 () Bool)

(assert (=> bs!532759 m!3387843))

(assert (=> bs!532759 m!3387623))

(assert (=> b!3075306 d!856933))

(declare-fun b!3075800 () Bool)

(declare-fun e!1924499 () Bool)

(declare-fun lt!1052281 () Bool)

(assert (=> b!3075800 (= e!1924499 (not lt!1052281))))

(declare-fun b!3075801 () Bool)

(declare-fun e!1924495 () Bool)

(assert (=> b!3075801 (= e!1924495 e!1924499)))

(declare-fun c!511756 () Bool)

(assert (=> b!3075801 (= c!511756 ((_ is EmptyLang!9523) lt!1052208))))

(declare-fun b!3075802 () Bool)

(declare-fun e!1924497 () Bool)

(assert (=> b!3075802 (= e!1924497 (= (head!6824 Nil!35264) (c!511631 lt!1052208)))))

(declare-fun b!3075803 () Bool)

(declare-fun res!1262136 () Bool)

(assert (=> b!3075803 (=> (not res!1262136) (not e!1924497))))

(declare-fun call!213988 () Bool)

(assert (=> b!3075803 (= res!1262136 (not call!213988))))

(declare-fun b!3075804 () Bool)

(declare-fun res!1262138 () Bool)

(declare-fun e!1924498 () Bool)

(assert (=> b!3075804 (=> res!1262138 e!1924498)))

(assert (=> b!3075804 (= res!1262138 (not (isEmpty!19589 (tail!5050 Nil!35264))))))

(declare-fun b!3075805 () Bool)

(declare-fun e!1924500 () Bool)

(declare-fun e!1924501 () Bool)

(assert (=> b!3075805 (= e!1924500 e!1924501)))

(declare-fun res!1262134 () Bool)

(assert (=> b!3075805 (=> (not res!1262134) (not e!1924501))))

(assert (=> b!3075805 (= res!1262134 (not lt!1052281))))

(declare-fun b!3075806 () Bool)

(assert (=> b!3075806 (= e!1924495 (= lt!1052281 call!213988))))

(declare-fun b!3075807 () Bool)

(assert (=> b!3075807 (= e!1924498 (not (= (head!6824 Nil!35264) (c!511631 lt!1052208))))))

(declare-fun b!3075808 () Bool)

(declare-fun res!1262139 () Bool)

(assert (=> b!3075808 (=> res!1262139 e!1924500)))

(assert (=> b!3075808 (= res!1262139 (not ((_ is ElementMatch!9523) lt!1052208)))))

(assert (=> b!3075808 (= e!1924499 e!1924500)))

(declare-fun b!3075809 () Bool)

(declare-fun e!1924496 () Bool)

(assert (=> b!3075809 (= e!1924496 (matchR!4405 (derivativeStep!2765 lt!1052208 (head!6824 Nil!35264)) (tail!5050 Nil!35264)))))

(declare-fun b!3075810 () Bool)

(assert (=> b!3075810 (= e!1924496 (nullable!3169 lt!1052208))))

(declare-fun d!856935 () Bool)

(assert (=> d!856935 e!1924495))

(declare-fun c!511758 () Bool)

(assert (=> d!856935 (= c!511758 ((_ is EmptyExpr!9523) lt!1052208))))

(assert (=> d!856935 (= lt!1052281 e!1924496)))

(declare-fun c!511757 () Bool)

(assert (=> d!856935 (= c!511757 (isEmpty!19589 Nil!35264))))

(assert (=> d!856935 (validRegex!4256 lt!1052208)))

(assert (=> d!856935 (= (matchR!4405 lt!1052208 Nil!35264) lt!1052281)))

(declare-fun b!3075811 () Bool)

(assert (=> b!3075811 (= e!1924501 e!1924498)))

(declare-fun res!1262141 () Bool)

(assert (=> b!3075811 (=> res!1262141 e!1924498)))

(assert (=> b!3075811 (= res!1262141 call!213988)))

(declare-fun b!3075812 () Bool)

(declare-fun res!1262137 () Bool)

(assert (=> b!3075812 (=> (not res!1262137) (not e!1924497))))

(assert (=> b!3075812 (= res!1262137 (isEmpty!19589 (tail!5050 Nil!35264)))))

(declare-fun bm!213983 () Bool)

(assert (=> bm!213983 (= call!213988 (isEmpty!19589 Nil!35264))))

(declare-fun b!3075813 () Bool)

(declare-fun res!1262135 () Bool)

(assert (=> b!3075813 (=> res!1262135 e!1924500)))

(assert (=> b!3075813 (= res!1262135 e!1924497)))

(declare-fun res!1262140 () Bool)

(assert (=> b!3075813 (=> (not res!1262140) (not e!1924497))))

(assert (=> b!3075813 (= res!1262140 lt!1052281)))

(assert (= (and d!856935 c!511757) b!3075810))

(assert (= (and d!856935 (not c!511757)) b!3075809))

(assert (= (and d!856935 c!511758) b!3075806))

(assert (= (and d!856935 (not c!511758)) b!3075801))

(assert (= (and b!3075801 c!511756) b!3075800))

(assert (= (and b!3075801 (not c!511756)) b!3075808))

(assert (= (and b!3075808 (not res!1262139)) b!3075813))

(assert (= (and b!3075813 res!1262140) b!3075803))

(assert (= (and b!3075803 res!1262136) b!3075812))

(assert (= (and b!3075812 res!1262137) b!3075802))

(assert (= (and b!3075813 (not res!1262135)) b!3075805))

(assert (= (and b!3075805 res!1262134) b!3075811))

(assert (= (and b!3075811 (not res!1262141)) b!3075804))

(assert (= (and b!3075804 (not res!1262138)) b!3075807))

(assert (= (or b!3075806 b!3075803 b!3075811) bm!213983))

(declare-fun m!3387845 () Bool)

(assert (=> d!856935 m!3387845))

(declare-fun m!3387847 () Bool)

(assert (=> d!856935 m!3387847))

(declare-fun m!3387849 () Bool)

(assert (=> b!3075807 m!3387849))

(declare-fun m!3387851 () Bool)

(assert (=> b!3075812 m!3387851))

(assert (=> b!3075812 m!3387851))

(declare-fun m!3387853 () Bool)

(assert (=> b!3075812 m!3387853))

(assert (=> bm!213983 m!3387845))

(assert (=> b!3075802 m!3387849))

(declare-fun m!3387855 () Bool)

(assert (=> b!3075810 m!3387855))

(assert (=> b!3075809 m!3387849))

(assert (=> b!3075809 m!3387849))

(declare-fun m!3387857 () Bool)

(assert (=> b!3075809 m!3387857))

(assert (=> b!3075809 m!3387851))

(assert (=> b!3075809 m!3387857))

(assert (=> b!3075809 m!3387851))

(declare-fun m!3387859 () Bool)

(assert (=> b!3075809 m!3387859))

(assert (=> b!3075804 m!3387851))

(assert (=> b!3075804 m!3387851))

(assert (=> b!3075804 m!3387853))

(assert (=> b!3075311 d!856935))

(declare-fun d!856937 () Bool)

(assert (=> d!856937 (= (matchR!4405 (regTwo!19558 r!17423) Nil!35264) (matchR!4405 (simplify!478 (regTwo!19558 r!17423)) Nil!35264))))

(declare-fun lt!1052284 () Unit!49485)

(declare-fun choose!18220 (Regex!9523 List!35388) Unit!49485)

(assert (=> d!856937 (= lt!1052284 (choose!18220 (regTwo!19558 r!17423) Nil!35264))))

(assert (=> d!856937 (validRegex!4256 (regTwo!19558 r!17423))))

(assert (=> d!856937 (= (lemmaSimplifySound!304 (regTwo!19558 r!17423) Nil!35264) lt!1052284)))

(declare-fun bs!532760 () Bool)

(assert (= bs!532760 d!856937))

(assert (=> bs!532760 m!3387617))

(declare-fun m!3387861 () Bool)

(assert (=> bs!532760 m!3387861))

(assert (=> bs!532760 m!3387631))

(declare-fun m!3387863 () Bool)

(assert (=> bs!532760 m!3387863))

(declare-fun m!3387865 () Bool)

(assert (=> bs!532760 m!3387865))

(assert (=> bs!532760 m!3387617))

(assert (=> b!3075311 d!856937))

(declare-fun b!3075814 () Bool)

(declare-fun e!1924506 () Bool)

(declare-fun lt!1052285 () Bool)

(assert (=> b!3075814 (= e!1924506 (not lt!1052285))))

(declare-fun b!3075815 () Bool)

(declare-fun e!1924502 () Bool)

(assert (=> b!3075815 (= e!1924502 e!1924506)))

(declare-fun c!511759 () Bool)

(assert (=> b!3075815 (= c!511759 ((_ is EmptyLang!9523) lt!1052210))))

(declare-fun b!3075816 () Bool)

(declare-fun e!1924504 () Bool)

(assert (=> b!3075816 (= e!1924504 (= (head!6824 s!11993) (c!511631 lt!1052210)))))

(declare-fun b!3075817 () Bool)

(declare-fun res!1262144 () Bool)

(assert (=> b!3075817 (=> (not res!1262144) (not e!1924504))))

(declare-fun call!213989 () Bool)

(assert (=> b!3075817 (= res!1262144 (not call!213989))))

(declare-fun b!3075818 () Bool)

(declare-fun res!1262146 () Bool)

(declare-fun e!1924505 () Bool)

(assert (=> b!3075818 (=> res!1262146 e!1924505)))

(assert (=> b!3075818 (= res!1262146 (not (isEmpty!19589 (tail!5050 s!11993))))))

(declare-fun b!3075819 () Bool)

(declare-fun e!1924507 () Bool)

(declare-fun e!1924508 () Bool)

(assert (=> b!3075819 (= e!1924507 e!1924508)))

(declare-fun res!1262142 () Bool)

(assert (=> b!3075819 (=> (not res!1262142) (not e!1924508))))

(assert (=> b!3075819 (= res!1262142 (not lt!1052285))))

(declare-fun b!3075820 () Bool)

(assert (=> b!3075820 (= e!1924502 (= lt!1052285 call!213989))))

(declare-fun b!3075821 () Bool)

(assert (=> b!3075821 (= e!1924505 (not (= (head!6824 s!11993) (c!511631 lt!1052210))))))

(declare-fun b!3075822 () Bool)

(declare-fun res!1262147 () Bool)

(assert (=> b!3075822 (=> res!1262147 e!1924507)))

(assert (=> b!3075822 (= res!1262147 (not ((_ is ElementMatch!9523) lt!1052210)))))

(assert (=> b!3075822 (= e!1924506 e!1924507)))

(declare-fun b!3075823 () Bool)

(declare-fun e!1924503 () Bool)

(assert (=> b!3075823 (= e!1924503 (matchR!4405 (derivativeStep!2765 lt!1052210 (head!6824 s!11993)) (tail!5050 s!11993)))))

(declare-fun b!3075824 () Bool)

(assert (=> b!3075824 (= e!1924503 (nullable!3169 lt!1052210))))

(declare-fun d!856939 () Bool)

(assert (=> d!856939 e!1924502))

(declare-fun c!511761 () Bool)

(assert (=> d!856939 (= c!511761 ((_ is EmptyExpr!9523) lt!1052210))))

(assert (=> d!856939 (= lt!1052285 e!1924503)))

(declare-fun c!511760 () Bool)

(assert (=> d!856939 (= c!511760 (isEmpty!19589 s!11993))))

(assert (=> d!856939 (validRegex!4256 lt!1052210)))

(assert (=> d!856939 (= (matchR!4405 lt!1052210 s!11993) lt!1052285)))

(declare-fun b!3075825 () Bool)

(assert (=> b!3075825 (= e!1924508 e!1924505)))

(declare-fun res!1262149 () Bool)

(assert (=> b!3075825 (=> res!1262149 e!1924505)))

(assert (=> b!3075825 (= res!1262149 call!213989)))

(declare-fun b!3075826 () Bool)

(declare-fun res!1262145 () Bool)

(assert (=> b!3075826 (=> (not res!1262145) (not e!1924504))))

(assert (=> b!3075826 (= res!1262145 (isEmpty!19589 (tail!5050 s!11993)))))

(declare-fun bm!213984 () Bool)

(assert (=> bm!213984 (= call!213989 (isEmpty!19589 s!11993))))

(declare-fun b!3075827 () Bool)

(declare-fun res!1262143 () Bool)

(assert (=> b!3075827 (=> res!1262143 e!1924507)))

(assert (=> b!3075827 (= res!1262143 e!1924504)))

(declare-fun res!1262148 () Bool)

(assert (=> b!3075827 (=> (not res!1262148) (not e!1924504))))

(assert (=> b!3075827 (= res!1262148 lt!1052285)))

(assert (= (and d!856939 c!511760) b!3075824))

(assert (= (and d!856939 (not c!511760)) b!3075823))

(assert (= (and d!856939 c!511761) b!3075820))

(assert (= (and d!856939 (not c!511761)) b!3075815))

(assert (= (and b!3075815 c!511759) b!3075814))

(assert (= (and b!3075815 (not c!511759)) b!3075822))

(assert (= (and b!3075822 (not res!1262147)) b!3075827))

(assert (= (and b!3075827 res!1262148) b!3075817))

(assert (= (and b!3075817 res!1262144) b!3075826))

(assert (= (and b!3075826 res!1262145) b!3075816))

(assert (= (and b!3075827 (not res!1262143)) b!3075819))

(assert (= (and b!3075819 res!1262142) b!3075825))

(assert (= (and b!3075825 (not res!1262149)) b!3075818))

(assert (= (and b!3075818 (not res!1262146)) b!3075821))

(assert (= (or b!3075820 b!3075817 b!3075825) bm!213984))

(assert (=> d!856939 m!3387647))

(declare-fun m!3387867 () Bool)

(assert (=> d!856939 m!3387867))

(assert (=> b!3075821 m!3387831))

(assert (=> b!3075826 m!3387833))

(assert (=> b!3075826 m!3387833))

(assert (=> b!3075826 m!3387835))

(assert (=> bm!213984 m!3387647))

(assert (=> b!3075816 m!3387831))

(declare-fun m!3387869 () Bool)

(assert (=> b!3075824 m!3387869))

(assert (=> b!3075823 m!3387831))

(assert (=> b!3075823 m!3387831))

(declare-fun m!3387871 () Bool)

(assert (=> b!3075823 m!3387871))

(assert (=> b!3075823 m!3387833))

(assert (=> b!3075823 m!3387871))

(assert (=> b!3075823 m!3387833))

(declare-fun m!3387873 () Bool)

(assert (=> b!3075823 m!3387873))

(assert (=> b!3075818 m!3387833))

(assert (=> b!3075818 m!3387833))

(assert (=> b!3075818 m!3387835))

(assert (=> b!3075311 d!856939))

(declare-fun d!856941 () Bool)

(assert (=> d!856941 (= (matchR!4405 (regOne!19558 r!17423) s!11993) (matchR!4405 (simplify!478 (regOne!19558 r!17423)) s!11993))))

(declare-fun lt!1052286 () Unit!49485)

(assert (=> d!856941 (= lt!1052286 (choose!18220 (regOne!19558 r!17423) s!11993))))

(assert (=> d!856941 (validRegex!4256 (regOne!19558 r!17423))))

(assert (=> d!856941 (= (lemmaSimplifySound!304 (regOne!19558 r!17423) s!11993) lt!1052286)))

(declare-fun bs!532761 () Bool)

(assert (= bs!532761 d!856941))

(assert (=> bs!532761 m!3387619))

(declare-fun m!3387875 () Bool)

(assert (=> bs!532761 m!3387875))

(assert (=> bs!532761 m!3387627))

(assert (=> bs!532761 m!3387639))

(declare-fun m!3387877 () Bool)

(assert (=> bs!532761 m!3387877))

(assert (=> bs!532761 m!3387619))

(assert (=> b!3075311 d!856941))

(declare-fun b!3075828 () Bool)

(declare-fun e!1924513 () Bool)

(declare-fun lt!1052287 () Bool)

(assert (=> b!3075828 (= e!1924513 (not lt!1052287))))

(declare-fun b!3075829 () Bool)

(declare-fun e!1924509 () Bool)

(assert (=> b!3075829 (= e!1924509 e!1924513)))

(declare-fun c!511762 () Bool)

(assert (=> b!3075829 (= c!511762 ((_ is EmptyLang!9523) (regOne!19558 r!17423)))))

(declare-fun b!3075830 () Bool)

(declare-fun e!1924511 () Bool)

(assert (=> b!3075830 (= e!1924511 (= (head!6824 s!11993) (c!511631 (regOne!19558 r!17423))))))

(declare-fun b!3075831 () Bool)

(declare-fun res!1262152 () Bool)

(assert (=> b!3075831 (=> (not res!1262152) (not e!1924511))))

(declare-fun call!213990 () Bool)

(assert (=> b!3075831 (= res!1262152 (not call!213990))))

(declare-fun b!3075832 () Bool)

(declare-fun res!1262154 () Bool)

(declare-fun e!1924512 () Bool)

(assert (=> b!3075832 (=> res!1262154 e!1924512)))

(assert (=> b!3075832 (= res!1262154 (not (isEmpty!19589 (tail!5050 s!11993))))))

(declare-fun b!3075833 () Bool)

(declare-fun e!1924514 () Bool)

(declare-fun e!1924515 () Bool)

(assert (=> b!3075833 (= e!1924514 e!1924515)))

(declare-fun res!1262150 () Bool)

(assert (=> b!3075833 (=> (not res!1262150) (not e!1924515))))

(assert (=> b!3075833 (= res!1262150 (not lt!1052287))))

(declare-fun b!3075834 () Bool)

(assert (=> b!3075834 (= e!1924509 (= lt!1052287 call!213990))))

(declare-fun b!3075835 () Bool)

(assert (=> b!3075835 (= e!1924512 (not (= (head!6824 s!11993) (c!511631 (regOne!19558 r!17423)))))))

(declare-fun b!3075836 () Bool)

(declare-fun res!1262155 () Bool)

(assert (=> b!3075836 (=> res!1262155 e!1924514)))

(assert (=> b!3075836 (= res!1262155 (not ((_ is ElementMatch!9523) (regOne!19558 r!17423))))))

(assert (=> b!3075836 (= e!1924513 e!1924514)))

(declare-fun b!3075837 () Bool)

(declare-fun e!1924510 () Bool)

(assert (=> b!3075837 (= e!1924510 (matchR!4405 (derivativeStep!2765 (regOne!19558 r!17423) (head!6824 s!11993)) (tail!5050 s!11993)))))

(declare-fun b!3075838 () Bool)

(assert (=> b!3075838 (= e!1924510 (nullable!3169 (regOne!19558 r!17423)))))

(declare-fun d!856943 () Bool)

(assert (=> d!856943 e!1924509))

(declare-fun c!511764 () Bool)

(assert (=> d!856943 (= c!511764 ((_ is EmptyExpr!9523) (regOne!19558 r!17423)))))

(assert (=> d!856943 (= lt!1052287 e!1924510)))

(declare-fun c!511763 () Bool)

(assert (=> d!856943 (= c!511763 (isEmpty!19589 s!11993))))

(assert (=> d!856943 (validRegex!4256 (regOne!19558 r!17423))))

(assert (=> d!856943 (= (matchR!4405 (regOne!19558 r!17423) s!11993) lt!1052287)))

(declare-fun b!3075839 () Bool)

(assert (=> b!3075839 (= e!1924515 e!1924512)))

(declare-fun res!1262157 () Bool)

(assert (=> b!3075839 (=> res!1262157 e!1924512)))

(assert (=> b!3075839 (= res!1262157 call!213990)))

(declare-fun b!3075840 () Bool)

(declare-fun res!1262153 () Bool)

(assert (=> b!3075840 (=> (not res!1262153) (not e!1924511))))

(assert (=> b!3075840 (= res!1262153 (isEmpty!19589 (tail!5050 s!11993)))))

(declare-fun bm!213985 () Bool)

(assert (=> bm!213985 (= call!213990 (isEmpty!19589 s!11993))))

(declare-fun b!3075841 () Bool)

(declare-fun res!1262151 () Bool)

(assert (=> b!3075841 (=> res!1262151 e!1924514)))

(assert (=> b!3075841 (= res!1262151 e!1924511)))

(declare-fun res!1262156 () Bool)

(assert (=> b!3075841 (=> (not res!1262156) (not e!1924511))))

(assert (=> b!3075841 (= res!1262156 lt!1052287)))

(assert (= (and d!856943 c!511763) b!3075838))

(assert (= (and d!856943 (not c!511763)) b!3075837))

(assert (= (and d!856943 c!511764) b!3075834))

(assert (= (and d!856943 (not c!511764)) b!3075829))

(assert (= (and b!3075829 c!511762) b!3075828))

(assert (= (and b!3075829 (not c!511762)) b!3075836))

(assert (= (and b!3075836 (not res!1262155)) b!3075841))

(assert (= (and b!3075841 res!1262156) b!3075831))

(assert (= (and b!3075831 res!1262152) b!3075840))

(assert (= (and b!3075840 res!1262153) b!3075830))

(assert (= (and b!3075841 (not res!1262151)) b!3075833))

(assert (= (and b!3075833 res!1262150) b!3075839))

(assert (= (and b!3075839 (not res!1262157)) b!3075832))

(assert (= (and b!3075832 (not res!1262154)) b!3075835))

(assert (= (or b!3075834 b!3075831 b!3075839) bm!213985))

(assert (=> d!856943 m!3387647))

(assert (=> d!856943 m!3387639))

(assert (=> b!3075835 m!3387831))

(assert (=> b!3075840 m!3387833))

(assert (=> b!3075840 m!3387833))

(assert (=> b!3075840 m!3387835))

(assert (=> bm!213985 m!3387647))

(assert (=> b!3075830 m!3387831))

(declare-fun m!3387879 () Bool)

(assert (=> b!3075838 m!3387879))

(assert (=> b!3075837 m!3387831))

(assert (=> b!3075837 m!3387831))

(declare-fun m!3387881 () Bool)

(assert (=> b!3075837 m!3387881))

(assert (=> b!3075837 m!3387833))

(assert (=> b!3075837 m!3387881))

(assert (=> b!3075837 m!3387833))

(declare-fun m!3387883 () Bool)

(assert (=> b!3075837 m!3387883))

(assert (=> b!3075832 m!3387833))

(assert (=> b!3075832 m!3387833))

(assert (=> b!3075832 m!3387835))

(assert (=> b!3075311 d!856943))

(declare-fun b!3075842 () Bool)

(declare-fun e!1924520 () Bool)

(declare-fun lt!1052288 () Bool)

(assert (=> b!3075842 (= e!1924520 (not lt!1052288))))

(declare-fun b!3075843 () Bool)

(declare-fun e!1924516 () Bool)

(assert (=> b!3075843 (= e!1924516 e!1924520)))

(declare-fun c!511765 () Bool)

(assert (=> b!3075843 (= c!511765 ((_ is EmptyLang!9523) (regTwo!19558 r!17423)))))

(declare-fun b!3075844 () Bool)

(declare-fun e!1924518 () Bool)

(assert (=> b!3075844 (= e!1924518 (= (head!6824 Nil!35264) (c!511631 (regTwo!19558 r!17423))))))

(declare-fun b!3075845 () Bool)

(declare-fun res!1262160 () Bool)

(assert (=> b!3075845 (=> (not res!1262160) (not e!1924518))))

(declare-fun call!213991 () Bool)

(assert (=> b!3075845 (= res!1262160 (not call!213991))))

(declare-fun b!3075846 () Bool)

(declare-fun res!1262162 () Bool)

(declare-fun e!1924519 () Bool)

(assert (=> b!3075846 (=> res!1262162 e!1924519)))

(assert (=> b!3075846 (= res!1262162 (not (isEmpty!19589 (tail!5050 Nil!35264))))))

(declare-fun b!3075847 () Bool)

(declare-fun e!1924521 () Bool)

(declare-fun e!1924522 () Bool)

(assert (=> b!3075847 (= e!1924521 e!1924522)))

(declare-fun res!1262158 () Bool)

(assert (=> b!3075847 (=> (not res!1262158) (not e!1924522))))

(assert (=> b!3075847 (= res!1262158 (not lt!1052288))))

(declare-fun b!3075848 () Bool)

(assert (=> b!3075848 (= e!1924516 (= lt!1052288 call!213991))))

(declare-fun b!3075849 () Bool)

(assert (=> b!3075849 (= e!1924519 (not (= (head!6824 Nil!35264) (c!511631 (regTwo!19558 r!17423)))))))

(declare-fun b!3075850 () Bool)

(declare-fun res!1262163 () Bool)

(assert (=> b!3075850 (=> res!1262163 e!1924521)))

(assert (=> b!3075850 (= res!1262163 (not ((_ is ElementMatch!9523) (regTwo!19558 r!17423))))))

(assert (=> b!3075850 (= e!1924520 e!1924521)))

(declare-fun b!3075851 () Bool)

(declare-fun e!1924517 () Bool)

(assert (=> b!3075851 (= e!1924517 (matchR!4405 (derivativeStep!2765 (regTwo!19558 r!17423) (head!6824 Nil!35264)) (tail!5050 Nil!35264)))))

(declare-fun b!3075852 () Bool)

(assert (=> b!3075852 (= e!1924517 (nullable!3169 (regTwo!19558 r!17423)))))

(declare-fun d!856945 () Bool)

(assert (=> d!856945 e!1924516))

(declare-fun c!511767 () Bool)

(assert (=> d!856945 (= c!511767 ((_ is EmptyExpr!9523) (regTwo!19558 r!17423)))))

(assert (=> d!856945 (= lt!1052288 e!1924517)))

(declare-fun c!511766 () Bool)

(assert (=> d!856945 (= c!511766 (isEmpty!19589 Nil!35264))))

(assert (=> d!856945 (validRegex!4256 (regTwo!19558 r!17423))))

(assert (=> d!856945 (= (matchR!4405 (regTwo!19558 r!17423) Nil!35264) lt!1052288)))

(declare-fun b!3075853 () Bool)

(assert (=> b!3075853 (= e!1924522 e!1924519)))

(declare-fun res!1262165 () Bool)

(assert (=> b!3075853 (=> res!1262165 e!1924519)))

(assert (=> b!3075853 (= res!1262165 call!213991)))

(declare-fun b!3075854 () Bool)

(declare-fun res!1262161 () Bool)

(assert (=> b!3075854 (=> (not res!1262161) (not e!1924518))))

(assert (=> b!3075854 (= res!1262161 (isEmpty!19589 (tail!5050 Nil!35264)))))

(declare-fun bm!213986 () Bool)

(assert (=> bm!213986 (= call!213991 (isEmpty!19589 Nil!35264))))

(declare-fun b!3075855 () Bool)

(declare-fun res!1262159 () Bool)

(assert (=> b!3075855 (=> res!1262159 e!1924521)))

(assert (=> b!3075855 (= res!1262159 e!1924518)))

(declare-fun res!1262164 () Bool)

(assert (=> b!3075855 (=> (not res!1262164) (not e!1924518))))

(assert (=> b!3075855 (= res!1262164 lt!1052288)))

(assert (= (and d!856945 c!511766) b!3075852))

(assert (= (and d!856945 (not c!511766)) b!3075851))

(assert (= (and d!856945 c!511767) b!3075848))

(assert (= (and d!856945 (not c!511767)) b!3075843))

(assert (= (and b!3075843 c!511765) b!3075842))

(assert (= (and b!3075843 (not c!511765)) b!3075850))

(assert (= (and b!3075850 (not res!1262163)) b!3075855))

(assert (= (and b!3075855 res!1262164) b!3075845))

(assert (= (and b!3075845 res!1262160) b!3075854))

(assert (= (and b!3075854 res!1262161) b!3075844))

(assert (= (and b!3075855 (not res!1262159)) b!3075847))

(assert (= (and b!3075847 res!1262158) b!3075853))

(assert (= (and b!3075853 (not res!1262165)) b!3075846))

(assert (= (and b!3075846 (not res!1262162)) b!3075849))

(assert (= (or b!3075848 b!3075845 b!3075853) bm!213986))

(assert (=> d!856945 m!3387845))

(assert (=> d!856945 m!3387863))

(assert (=> b!3075849 m!3387849))

(assert (=> b!3075854 m!3387851))

(assert (=> b!3075854 m!3387851))

(assert (=> b!3075854 m!3387853))

(assert (=> bm!213986 m!3387845))

(assert (=> b!3075844 m!3387849))

(declare-fun m!3387885 () Bool)

(assert (=> b!3075852 m!3387885))

(assert (=> b!3075851 m!3387849))

(assert (=> b!3075851 m!3387849))

(declare-fun m!3387887 () Bool)

(assert (=> b!3075851 m!3387887))

(assert (=> b!3075851 m!3387851))

(assert (=> b!3075851 m!3387887))

(assert (=> b!3075851 m!3387851))

(declare-fun m!3387889 () Bool)

(assert (=> b!3075851 m!3387889))

(assert (=> b!3075846 m!3387851))

(assert (=> b!3075846 m!3387851))

(assert (=> b!3075846 m!3387853))

(assert (=> b!3075311 d!856945))

(declare-fun b!3075857 () Bool)

(declare-fun e!1924526 () Bool)

(declare-fun call!213992 () Bool)

(assert (=> b!3075857 (= e!1924526 call!213992)))

(declare-fun b!3075858 () Bool)

(declare-fun e!1924528 () Bool)

(declare-fun e!1924524 () Bool)

(assert (=> b!3075858 (= e!1924528 e!1924524)))

(declare-fun c!511768 () Bool)

(assert (=> b!3075858 (= c!511768 ((_ is Union!9523) r!17423))))

(declare-fun b!3075859 () Bool)

(declare-fun res!1262168 () Bool)

(declare-fun e!1924527 () Bool)

(assert (=> b!3075859 (=> res!1262168 e!1924527)))

(assert (=> b!3075859 (= res!1262168 (not ((_ is Concat!14844) r!17423)))))

(assert (=> b!3075859 (= e!1924524 e!1924527)))

(declare-fun bm!213987 () Bool)

(assert (=> bm!213987 (= call!213992 (validRegex!4256 (ite c!511768 (regOne!19559 r!17423) (regTwo!19558 r!17423))))))

(declare-fun bm!213988 () Bool)

(declare-fun call!213993 () Bool)

(declare-fun call!213994 () Bool)

(assert (=> bm!213988 (= call!213993 call!213994)))

(declare-fun b!3075860 () Bool)

(declare-fun res!1262169 () Bool)

(declare-fun e!1924525 () Bool)

(assert (=> b!3075860 (=> (not res!1262169) (not e!1924525))))

(assert (=> b!3075860 (= res!1262169 call!213992)))

(assert (=> b!3075860 (= e!1924524 e!1924525)))

(declare-fun b!3075861 () Bool)

(declare-fun e!1924523 () Bool)

(assert (=> b!3075861 (= e!1924523 e!1924528)))

(declare-fun c!511769 () Bool)

(assert (=> b!3075861 (= c!511769 ((_ is Star!9523) r!17423))))

(declare-fun b!3075862 () Bool)

(declare-fun e!1924529 () Bool)

(assert (=> b!3075862 (= e!1924528 e!1924529)))

(declare-fun res!1262167 () Bool)

(assert (=> b!3075862 (= res!1262167 (not (nullable!3169 (reg!9852 r!17423))))))

(assert (=> b!3075862 (=> (not res!1262167) (not e!1924529))))

(declare-fun b!3075863 () Bool)

(assert (=> b!3075863 (= e!1924525 call!213993)))

(declare-fun d!856947 () Bool)

(declare-fun res!1262166 () Bool)

(assert (=> d!856947 (=> res!1262166 e!1924523)))

(assert (=> d!856947 (= res!1262166 ((_ is ElementMatch!9523) r!17423))))

(assert (=> d!856947 (= (validRegex!4256 r!17423) e!1924523)))

(declare-fun b!3075856 () Bool)

(assert (=> b!3075856 (= e!1924527 e!1924526)))

(declare-fun res!1262170 () Bool)

(assert (=> b!3075856 (=> (not res!1262170) (not e!1924526))))

(assert (=> b!3075856 (= res!1262170 call!213993)))

(declare-fun bm!213989 () Bool)

(assert (=> bm!213989 (= call!213994 (validRegex!4256 (ite c!511769 (reg!9852 r!17423) (ite c!511768 (regTwo!19559 r!17423) (regOne!19558 r!17423)))))))

(declare-fun b!3075864 () Bool)

(assert (=> b!3075864 (= e!1924529 call!213994)))

(assert (= (and d!856947 (not res!1262166)) b!3075861))

(assert (= (and b!3075861 c!511769) b!3075862))

(assert (= (and b!3075861 (not c!511769)) b!3075858))

(assert (= (and b!3075862 res!1262167) b!3075864))

(assert (= (and b!3075858 c!511768) b!3075860))

(assert (= (and b!3075858 (not c!511768)) b!3075859))

(assert (= (and b!3075860 res!1262169) b!3075863))

(assert (= (and b!3075859 (not res!1262168)) b!3075856))

(assert (= (and b!3075856 res!1262170) b!3075857))

(assert (= (or b!3075860 b!3075857) bm!213987))

(assert (= (or b!3075863 b!3075856) bm!213988))

(assert (= (or b!3075864 bm!213988) bm!213989))

(declare-fun m!3387891 () Bool)

(assert (=> bm!213987 m!3387891))

(declare-fun m!3387893 () Bool)

(assert (=> b!3075862 m!3387893))

(declare-fun m!3387895 () Bool)

(assert (=> bm!213989 m!3387895))

(assert (=> start!293084 d!856947))

(declare-fun d!856949 () Bool)

(assert (=> d!856949 (= (isEmptyExpr!580 lt!1052208) ((_ is EmptyExpr!9523) lt!1052208))))

(assert (=> b!3075302 d!856949))

(declare-fun d!856951 () Bool)

(assert (=> d!856951 (= (isEmptyLang!574 lt!1052210) ((_ is EmptyLang!9523) lt!1052210))))

(assert (=> b!3075307 d!856951))

(declare-fun b!3075915 () Bool)

(declare-fun e!1924564 () Regex!9523)

(declare-fun lt!1052302 () Regex!9523)

(declare-fun lt!1052305 () Regex!9523)

(assert (=> b!3075915 (= e!1924564 (Union!9523 lt!1052302 lt!1052305))))

(declare-fun b!3075916 () Bool)

(declare-fun c!511801 () Bool)

(declare-fun call!214014 () Bool)

(assert (=> b!3075916 (= c!511801 call!214014)))

(declare-fun e!1924562 () Regex!9523)

(declare-fun e!1924558 () Regex!9523)

(assert (=> b!3075916 (= e!1924562 e!1924558)))

(declare-fun b!3075917 () Bool)

(declare-fun e!1924565 () Bool)

(assert (=> b!3075917 (= e!1924565 call!214014)))

(declare-fun b!3075918 () Bool)

(declare-fun c!511796 () Bool)

(declare-fun call!214011 () Bool)

(assert (=> b!3075918 (= c!511796 call!214011)))

(declare-fun e!1924560 () Regex!9523)

(assert (=> b!3075918 (= e!1924560 e!1924564)))

(declare-fun c!511797 () Bool)

(declare-fun lt!1052303 () Regex!9523)

(declare-fun call!214013 () Bool)

(declare-fun bm!214004 () Bool)

(assert (=> bm!214004 (= call!214013 (isEmptyLang!574 (ite c!511797 lt!1052302 lt!1052303)))))

(declare-fun b!3075919 () Bool)

(declare-fun e!1924569 () Regex!9523)

(declare-fun lt!1052304 () Regex!9523)

(assert (=> b!3075919 (= e!1924569 (Star!9523 lt!1052304))))

(declare-fun b!3075920 () Bool)

(assert (=> b!3075920 (= e!1924562 EmptyLang!9523)))

(declare-fun b!3075921 () Bool)

(declare-fun e!1924568 () Regex!9523)

(assert (=> b!3075921 (= e!1924558 e!1924568)))

(declare-fun c!511793 () Bool)

(assert (=> b!3075921 (= c!511793 (isEmptyExpr!580 lt!1052303))))

(declare-fun b!3075922 () Bool)

(declare-fun e!1924559 () Bool)

(assert (=> b!3075922 (= e!1924559 call!214013)))

(declare-fun bm!214005 () Bool)

(declare-fun call!214015 () Regex!9523)

(assert (=> bm!214005 (= call!214015 (simplify!478 (ite c!511797 (regTwo!19559 (regTwo!19558 r!17423)) (regOne!19558 (regTwo!19558 r!17423)))))))

(declare-fun c!511794 () Bool)

(declare-fun call!214010 () Bool)

(declare-fun lt!1052306 () Regex!9523)

(declare-fun bm!214006 () Bool)

(assert (=> bm!214006 (= call!214010 (isEmptyLang!574 (ite c!511794 lt!1052304 (ite c!511797 lt!1052305 lt!1052306))))))

(declare-fun b!3075923 () Bool)

(assert (=> b!3075923 (= e!1924558 lt!1052303)))

(declare-fun bm!214007 () Bool)

(assert (=> bm!214007 (= call!214011 call!214010)))

(declare-fun b!3075924 () Bool)

(assert (=> b!3075924 (= e!1924560 lt!1052305)))

(declare-fun d!856953 () Bool)

(declare-fun e!1924570 () Bool)

(assert (=> d!856953 e!1924570))

(declare-fun res!1262177 () Bool)

(assert (=> d!856953 (=> (not res!1262177) (not e!1924570))))

(declare-fun lt!1052301 () Regex!9523)

(assert (=> d!856953 (= res!1262177 (validRegex!4256 lt!1052301))))

(declare-fun e!1924566 () Regex!9523)

(assert (=> d!856953 (= lt!1052301 e!1924566)))

(declare-fun c!511800 () Bool)

(assert (=> d!856953 (= c!511800 ((_ is EmptyLang!9523) (regTwo!19558 r!17423)))))

(assert (=> d!856953 (validRegex!4256 (regTwo!19558 r!17423))))

(assert (=> d!856953 (= (simplify!478 (regTwo!19558 r!17423)) lt!1052301)))

(declare-fun b!3075925 () Bool)

(assert (=> b!3075925 (= e!1924566 EmptyLang!9523)))

(declare-fun b!3075926 () Bool)

(declare-fun e!1924561 () Regex!9523)

(assert (=> b!3075926 (= e!1924561 e!1924562)))

(assert (=> b!3075926 (= lt!1052306 call!214015)))

(declare-fun call!214009 () Regex!9523)

(assert (=> b!3075926 (= lt!1052303 call!214009)))

(declare-fun res!1262179 () Bool)

(assert (=> b!3075926 (= res!1262179 call!214011)))

(assert (=> b!3075926 (=> res!1262179 e!1924559)))

(declare-fun c!511802 () Bool)

(assert (=> b!3075926 (= c!511802 e!1924559)))

(declare-fun b!3075927 () Bool)

(declare-fun e!1924563 () Regex!9523)

(assert (=> b!3075927 (= e!1924566 e!1924563)))

(declare-fun c!511799 () Bool)

(assert (=> b!3075927 (= c!511799 ((_ is ElementMatch!9523) (regTwo!19558 r!17423)))))

(declare-fun b!3075928 () Bool)

(assert (=> b!3075928 (= e!1924568 lt!1052306)))

(declare-fun b!3075929 () Bool)

(assert (=> b!3075929 (= e!1924570 (= (nullable!3169 lt!1052301) (nullable!3169 (regTwo!19558 r!17423))))))

(declare-fun b!3075930 () Bool)

(declare-fun e!1924567 () Regex!9523)

(assert (=> b!3075930 (= e!1924567 EmptyExpr!9523)))

(declare-fun b!3075931 () Bool)

(assert (=> b!3075931 (= c!511797 ((_ is Union!9523) (regTwo!19558 r!17423)))))

(declare-fun e!1924571 () Regex!9523)

(assert (=> b!3075931 (= e!1924571 e!1924561)))

(declare-fun b!3075932 () Bool)

(assert (=> b!3075932 (= e!1924568 (Concat!14844 lt!1052306 lt!1052303))))

(declare-fun b!3075933 () Bool)

(assert (=> b!3075933 (= e!1924561 e!1924560)))

(assert (=> b!3075933 (= lt!1052302 call!214009)))

(assert (=> b!3075933 (= lt!1052305 call!214015)))

(declare-fun c!511792 () Bool)

(assert (=> b!3075933 (= c!511792 call!214013)))

(declare-fun b!3075934 () Bool)

(assert (=> b!3075934 (= e!1924569 EmptyExpr!9523)))

(declare-fun b!3075935 () Bool)

(declare-fun c!511795 () Bool)

(assert (=> b!3075935 (= c!511795 ((_ is EmptyExpr!9523) (regTwo!19558 r!17423)))))

(assert (=> b!3075935 (= e!1924563 e!1924567)))

(declare-fun bm!214008 () Bool)

(declare-fun call!214012 () Regex!9523)

(assert (=> bm!214008 (= call!214012 (simplify!478 (ite c!511794 (reg!9852 (regTwo!19558 r!17423)) (ite c!511797 (regOne!19559 (regTwo!19558 r!17423)) (regTwo!19558 (regTwo!19558 r!17423))))))))

(declare-fun b!3075936 () Bool)

(declare-fun c!511798 () Bool)

(assert (=> b!3075936 (= c!511798 e!1924565)))

(declare-fun res!1262178 () Bool)

(assert (=> b!3075936 (=> res!1262178 e!1924565)))

(assert (=> b!3075936 (= res!1262178 call!214010)))

(assert (=> b!3075936 (= lt!1052304 call!214012)))

(assert (=> b!3075936 (= e!1924571 e!1924569)))

(declare-fun b!3075937 () Bool)

(assert (=> b!3075937 (= e!1924563 (regTwo!19558 r!17423))))

(declare-fun bm!214009 () Bool)

(assert (=> bm!214009 (= call!214014 (isEmptyExpr!580 (ite c!511794 lt!1052304 lt!1052306)))))

(declare-fun b!3075938 () Bool)

(assert (=> b!3075938 (= e!1924567 e!1924571)))

(assert (=> b!3075938 (= c!511794 ((_ is Star!9523) (regTwo!19558 r!17423)))))

(declare-fun b!3075939 () Bool)

(assert (=> b!3075939 (= e!1924564 lt!1052302)))

(declare-fun bm!214010 () Bool)

(assert (=> bm!214010 (= call!214009 call!214012)))

(assert (= (and d!856953 c!511800) b!3075925))

(assert (= (and d!856953 (not c!511800)) b!3075927))

(assert (= (and b!3075927 c!511799) b!3075937))

(assert (= (and b!3075927 (not c!511799)) b!3075935))

(assert (= (and b!3075935 c!511795) b!3075930))

(assert (= (and b!3075935 (not c!511795)) b!3075938))

(assert (= (and b!3075938 c!511794) b!3075936))

(assert (= (and b!3075938 (not c!511794)) b!3075931))

(assert (= (and b!3075936 (not res!1262178)) b!3075917))

(assert (= (and b!3075936 c!511798) b!3075934))

(assert (= (and b!3075936 (not c!511798)) b!3075919))

(assert (= (and b!3075931 c!511797) b!3075933))

(assert (= (and b!3075931 (not c!511797)) b!3075926))

(assert (= (and b!3075933 c!511792) b!3075924))

(assert (= (and b!3075933 (not c!511792)) b!3075918))

(assert (= (and b!3075918 c!511796) b!3075939))

(assert (= (and b!3075918 (not c!511796)) b!3075915))

(assert (= (and b!3075926 (not res!1262179)) b!3075922))

(assert (= (and b!3075926 c!511802) b!3075920))

(assert (= (and b!3075926 (not c!511802)) b!3075916))

(assert (= (and b!3075916 c!511801) b!3075923))

(assert (= (and b!3075916 (not c!511801)) b!3075921))

(assert (= (and b!3075921 c!511793) b!3075928))

(assert (= (and b!3075921 (not c!511793)) b!3075932))

(assert (= (or b!3075933 b!3075926) bm!214010))

(assert (= (or b!3075933 b!3075926) bm!214005))

(assert (= (or b!3075933 b!3075922) bm!214004))

(assert (= (or b!3075918 b!3075926) bm!214007))

(assert (= (or b!3075917 b!3075916) bm!214009))

(assert (= (or b!3075936 bm!214010) bm!214008))

(assert (= (or b!3075936 bm!214007) bm!214006))

(assert (= (and d!856953 res!1262177) b!3075929))

(declare-fun m!3387897 () Bool)

(assert (=> b!3075921 m!3387897))

(declare-fun m!3387899 () Bool)

(assert (=> b!3075929 m!3387899))

(assert (=> b!3075929 m!3387885))

(declare-fun m!3387901 () Bool)

(assert (=> bm!214005 m!3387901))

(declare-fun m!3387903 () Bool)

(assert (=> d!856953 m!3387903))

(assert (=> d!856953 m!3387863))

(declare-fun m!3387905 () Bool)

(assert (=> bm!214009 m!3387905))

(declare-fun m!3387907 () Bool)

(assert (=> bm!214006 m!3387907))

(declare-fun m!3387909 () Bool)

(assert (=> bm!214004 m!3387909))

(declare-fun m!3387911 () Bool)

(assert (=> bm!214008 m!3387911))

(assert (=> b!3075307 d!856953))

(declare-fun b!3075940 () Bool)

(declare-fun e!1924578 () Regex!9523)

(declare-fun lt!1052308 () Regex!9523)

(declare-fun lt!1052311 () Regex!9523)

(assert (=> b!3075940 (= e!1924578 (Union!9523 lt!1052308 lt!1052311))))

(declare-fun b!3075941 () Bool)

(declare-fun c!511812 () Bool)

(declare-fun call!214021 () Bool)

(assert (=> b!3075941 (= c!511812 call!214021)))

(declare-fun e!1924576 () Regex!9523)

(declare-fun e!1924572 () Regex!9523)

(assert (=> b!3075941 (= e!1924576 e!1924572)))

(declare-fun b!3075942 () Bool)

(declare-fun e!1924579 () Bool)

(assert (=> b!3075942 (= e!1924579 call!214021)))

(declare-fun b!3075943 () Bool)

(declare-fun c!511807 () Bool)

(declare-fun call!214018 () Bool)

(assert (=> b!3075943 (= c!511807 call!214018)))

(declare-fun e!1924574 () Regex!9523)

(assert (=> b!3075943 (= e!1924574 e!1924578)))

(declare-fun lt!1052309 () Regex!9523)

(declare-fun call!214020 () Bool)

(declare-fun c!511808 () Bool)

(declare-fun bm!214011 () Bool)

(assert (=> bm!214011 (= call!214020 (isEmptyLang!574 (ite c!511808 lt!1052308 lt!1052309)))))

(declare-fun b!3075944 () Bool)

(declare-fun e!1924583 () Regex!9523)

(declare-fun lt!1052310 () Regex!9523)

(assert (=> b!3075944 (= e!1924583 (Star!9523 lt!1052310))))

(declare-fun b!3075945 () Bool)

(assert (=> b!3075945 (= e!1924576 EmptyLang!9523)))

(declare-fun b!3075946 () Bool)

(declare-fun e!1924582 () Regex!9523)

(assert (=> b!3075946 (= e!1924572 e!1924582)))

(declare-fun c!511804 () Bool)

(assert (=> b!3075946 (= c!511804 (isEmptyExpr!580 lt!1052309))))

(declare-fun b!3075947 () Bool)

(declare-fun e!1924573 () Bool)

(assert (=> b!3075947 (= e!1924573 call!214020)))

(declare-fun bm!214012 () Bool)

(declare-fun call!214022 () Regex!9523)

(assert (=> bm!214012 (= call!214022 (simplify!478 (ite c!511808 (regTwo!19559 (regOne!19558 r!17423)) (regOne!19558 (regOne!19558 r!17423)))))))

(declare-fun call!214017 () Bool)

(declare-fun c!511805 () Bool)

(declare-fun bm!214013 () Bool)

(declare-fun lt!1052312 () Regex!9523)

(assert (=> bm!214013 (= call!214017 (isEmptyLang!574 (ite c!511805 lt!1052310 (ite c!511808 lt!1052311 lt!1052312))))))

(declare-fun b!3075948 () Bool)

(assert (=> b!3075948 (= e!1924572 lt!1052309)))

(declare-fun bm!214014 () Bool)

(assert (=> bm!214014 (= call!214018 call!214017)))

(declare-fun b!3075949 () Bool)

(assert (=> b!3075949 (= e!1924574 lt!1052311)))

(declare-fun d!856955 () Bool)

(declare-fun e!1924584 () Bool)

(assert (=> d!856955 e!1924584))

(declare-fun res!1262180 () Bool)

(assert (=> d!856955 (=> (not res!1262180) (not e!1924584))))

(declare-fun lt!1052307 () Regex!9523)

(assert (=> d!856955 (= res!1262180 (validRegex!4256 lt!1052307))))

(declare-fun e!1924580 () Regex!9523)

(assert (=> d!856955 (= lt!1052307 e!1924580)))

(declare-fun c!511811 () Bool)

(assert (=> d!856955 (= c!511811 ((_ is EmptyLang!9523) (regOne!19558 r!17423)))))

(assert (=> d!856955 (validRegex!4256 (regOne!19558 r!17423))))

(assert (=> d!856955 (= (simplify!478 (regOne!19558 r!17423)) lt!1052307)))

(declare-fun b!3075950 () Bool)

(assert (=> b!3075950 (= e!1924580 EmptyLang!9523)))

(declare-fun b!3075951 () Bool)

(declare-fun e!1924575 () Regex!9523)

(assert (=> b!3075951 (= e!1924575 e!1924576)))

(assert (=> b!3075951 (= lt!1052312 call!214022)))

(declare-fun call!214016 () Regex!9523)

(assert (=> b!3075951 (= lt!1052309 call!214016)))

(declare-fun res!1262182 () Bool)

(assert (=> b!3075951 (= res!1262182 call!214018)))

(assert (=> b!3075951 (=> res!1262182 e!1924573)))

(declare-fun c!511813 () Bool)

(assert (=> b!3075951 (= c!511813 e!1924573)))

(declare-fun b!3075952 () Bool)

(declare-fun e!1924577 () Regex!9523)

(assert (=> b!3075952 (= e!1924580 e!1924577)))

(declare-fun c!511810 () Bool)

(assert (=> b!3075952 (= c!511810 ((_ is ElementMatch!9523) (regOne!19558 r!17423)))))

(declare-fun b!3075953 () Bool)

(assert (=> b!3075953 (= e!1924582 lt!1052312)))

(declare-fun b!3075954 () Bool)

(assert (=> b!3075954 (= e!1924584 (= (nullable!3169 lt!1052307) (nullable!3169 (regOne!19558 r!17423))))))

(declare-fun b!3075955 () Bool)

(declare-fun e!1924581 () Regex!9523)

(assert (=> b!3075955 (= e!1924581 EmptyExpr!9523)))

(declare-fun b!3075956 () Bool)

(assert (=> b!3075956 (= c!511808 ((_ is Union!9523) (regOne!19558 r!17423)))))

(declare-fun e!1924585 () Regex!9523)

(assert (=> b!3075956 (= e!1924585 e!1924575)))

(declare-fun b!3075957 () Bool)

(assert (=> b!3075957 (= e!1924582 (Concat!14844 lt!1052312 lt!1052309))))

(declare-fun b!3075958 () Bool)

(assert (=> b!3075958 (= e!1924575 e!1924574)))

(assert (=> b!3075958 (= lt!1052308 call!214016)))

(assert (=> b!3075958 (= lt!1052311 call!214022)))

(declare-fun c!511803 () Bool)

(assert (=> b!3075958 (= c!511803 call!214020)))

(declare-fun b!3075959 () Bool)

(assert (=> b!3075959 (= e!1924583 EmptyExpr!9523)))

(declare-fun b!3075960 () Bool)

(declare-fun c!511806 () Bool)

(assert (=> b!3075960 (= c!511806 ((_ is EmptyExpr!9523) (regOne!19558 r!17423)))))

(assert (=> b!3075960 (= e!1924577 e!1924581)))

(declare-fun bm!214015 () Bool)

(declare-fun call!214019 () Regex!9523)

(assert (=> bm!214015 (= call!214019 (simplify!478 (ite c!511805 (reg!9852 (regOne!19558 r!17423)) (ite c!511808 (regOne!19559 (regOne!19558 r!17423)) (regTwo!19558 (regOne!19558 r!17423))))))))

(declare-fun b!3075961 () Bool)

(declare-fun c!511809 () Bool)

(assert (=> b!3075961 (= c!511809 e!1924579)))

(declare-fun res!1262181 () Bool)

(assert (=> b!3075961 (=> res!1262181 e!1924579)))

(assert (=> b!3075961 (= res!1262181 call!214017)))

(assert (=> b!3075961 (= lt!1052310 call!214019)))

(assert (=> b!3075961 (= e!1924585 e!1924583)))

(declare-fun b!3075962 () Bool)

(assert (=> b!3075962 (= e!1924577 (regOne!19558 r!17423))))

(declare-fun bm!214016 () Bool)

(assert (=> bm!214016 (= call!214021 (isEmptyExpr!580 (ite c!511805 lt!1052310 lt!1052312)))))

(declare-fun b!3075963 () Bool)

(assert (=> b!3075963 (= e!1924581 e!1924585)))

(assert (=> b!3075963 (= c!511805 ((_ is Star!9523) (regOne!19558 r!17423)))))

(declare-fun b!3075964 () Bool)

(assert (=> b!3075964 (= e!1924578 lt!1052308)))

(declare-fun bm!214017 () Bool)

(assert (=> bm!214017 (= call!214016 call!214019)))

(assert (= (and d!856955 c!511811) b!3075950))

(assert (= (and d!856955 (not c!511811)) b!3075952))

(assert (= (and b!3075952 c!511810) b!3075962))

(assert (= (and b!3075952 (not c!511810)) b!3075960))

(assert (= (and b!3075960 c!511806) b!3075955))

(assert (= (and b!3075960 (not c!511806)) b!3075963))

(assert (= (and b!3075963 c!511805) b!3075961))

(assert (= (and b!3075963 (not c!511805)) b!3075956))

(assert (= (and b!3075961 (not res!1262181)) b!3075942))

(assert (= (and b!3075961 c!511809) b!3075959))

(assert (= (and b!3075961 (not c!511809)) b!3075944))

(assert (= (and b!3075956 c!511808) b!3075958))

(assert (= (and b!3075956 (not c!511808)) b!3075951))

(assert (= (and b!3075958 c!511803) b!3075949))

(assert (= (and b!3075958 (not c!511803)) b!3075943))

(assert (= (and b!3075943 c!511807) b!3075964))

(assert (= (and b!3075943 (not c!511807)) b!3075940))

(assert (= (and b!3075951 (not res!1262182)) b!3075947))

(assert (= (and b!3075951 c!511813) b!3075945))

(assert (= (and b!3075951 (not c!511813)) b!3075941))

(assert (= (and b!3075941 c!511812) b!3075948))

(assert (= (and b!3075941 (not c!511812)) b!3075946))

(assert (= (and b!3075946 c!511804) b!3075953))

(assert (= (and b!3075946 (not c!511804)) b!3075957))

(assert (= (or b!3075958 b!3075951) bm!214017))

(assert (= (or b!3075958 b!3075951) bm!214012))

(assert (= (or b!3075958 b!3075947) bm!214011))

(assert (= (or b!3075943 b!3075951) bm!214014))

(assert (= (or b!3075942 b!3075941) bm!214016))

(assert (= (or b!3075961 bm!214017) bm!214015))

(assert (= (or b!3075961 bm!214014) bm!214013))

(assert (= (and d!856955 res!1262180) b!3075954))

(declare-fun m!3387913 () Bool)

(assert (=> b!3075946 m!3387913))

(declare-fun m!3387915 () Bool)

(assert (=> b!3075954 m!3387915))

(assert (=> b!3075954 m!3387879))

(declare-fun m!3387917 () Bool)

(assert (=> bm!214012 m!3387917))

(declare-fun m!3387919 () Bool)

(assert (=> d!856955 m!3387919))

(assert (=> d!856955 m!3387639))

(declare-fun m!3387921 () Bool)

(assert (=> bm!214016 m!3387921))

(declare-fun m!3387923 () Bool)

(assert (=> bm!214013 m!3387923))

(declare-fun m!3387925 () Bool)

(assert (=> bm!214011 m!3387925))

(declare-fun m!3387927 () Bool)

(assert (=> bm!214015 m!3387927))

(assert (=> b!3075307 d!856955))

(declare-fun d!856957 () Bool)

(assert (=> d!856957 (= (isEmptyExpr!580 lt!1052210) ((_ is EmptyExpr!9523) lt!1052210))))

(assert (=> b!3075312 d!856957))

(declare-fun d!856959 () Bool)

(assert (=> d!856959 (= (isEmptyLang!574 lt!1052208) ((_ is EmptyLang!9523) lt!1052208))))

(assert (=> b!3075301 d!856959))

(declare-fun b!3075977 () Bool)

(declare-fun e!1924588 () Bool)

(declare-fun tp!969647 () Bool)

(assert (=> b!3075977 (= e!1924588 tp!969647)))

(declare-fun b!3075975 () Bool)

(assert (=> b!3075975 (= e!1924588 tp_is_empty!16609)))

(declare-fun b!3075976 () Bool)

(declare-fun tp!969650 () Bool)

(declare-fun tp!969646 () Bool)

(assert (=> b!3075976 (= e!1924588 (and tp!969650 tp!969646))))

(declare-fun b!3075978 () Bool)

(declare-fun tp!969649 () Bool)

(declare-fun tp!969648 () Bool)

(assert (=> b!3075978 (= e!1924588 (and tp!969649 tp!969648))))

(assert (=> b!3075313 (= tp!969593 e!1924588)))

(assert (= (and b!3075313 ((_ is ElementMatch!9523) (regOne!19558 r!17423))) b!3075975))

(assert (= (and b!3075313 ((_ is Concat!14844) (regOne!19558 r!17423))) b!3075976))

(assert (= (and b!3075313 ((_ is Star!9523) (regOne!19558 r!17423))) b!3075977))

(assert (= (and b!3075313 ((_ is Union!9523) (regOne!19558 r!17423))) b!3075978))

(declare-fun b!3075981 () Bool)

(declare-fun e!1924589 () Bool)

(declare-fun tp!969652 () Bool)

(assert (=> b!3075981 (= e!1924589 tp!969652)))

(declare-fun b!3075979 () Bool)

(assert (=> b!3075979 (= e!1924589 tp_is_empty!16609)))

(declare-fun b!3075980 () Bool)

(declare-fun tp!969655 () Bool)

(declare-fun tp!969651 () Bool)

(assert (=> b!3075980 (= e!1924589 (and tp!969655 tp!969651))))

(declare-fun b!3075982 () Bool)

(declare-fun tp!969654 () Bool)

(declare-fun tp!969653 () Bool)

(assert (=> b!3075982 (= e!1924589 (and tp!969654 tp!969653))))

(assert (=> b!3075313 (= tp!969594 e!1924589)))

(assert (= (and b!3075313 ((_ is ElementMatch!9523) (regTwo!19558 r!17423))) b!3075979))

(assert (= (and b!3075313 ((_ is Concat!14844) (regTwo!19558 r!17423))) b!3075980))

(assert (= (and b!3075313 ((_ is Star!9523) (regTwo!19558 r!17423))) b!3075981))

(assert (= (and b!3075313 ((_ is Union!9523) (regTwo!19558 r!17423))) b!3075982))

(declare-fun b!3075985 () Bool)

(declare-fun e!1924590 () Bool)

(declare-fun tp!969657 () Bool)

(assert (=> b!3075985 (= e!1924590 tp!969657)))

(declare-fun b!3075983 () Bool)

(assert (=> b!3075983 (= e!1924590 tp_is_empty!16609)))

(declare-fun b!3075984 () Bool)

(declare-fun tp!969660 () Bool)

(declare-fun tp!969656 () Bool)

(assert (=> b!3075984 (= e!1924590 (and tp!969660 tp!969656))))

(declare-fun b!3075986 () Bool)

(declare-fun tp!969659 () Bool)

(declare-fun tp!969658 () Bool)

(assert (=> b!3075986 (= e!1924590 (and tp!969659 tp!969658))))

(assert (=> b!3075310 (= tp!969596 e!1924590)))

(assert (= (and b!3075310 ((_ is ElementMatch!9523) (reg!9852 r!17423))) b!3075983))

(assert (= (and b!3075310 ((_ is Concat!14844) (reg!9852 r!17423))) b!3075984))

(assert (= (and b!3075310 ((_ is Star!9523) (reg!9852 r!17423))) b!3075985))

(assert (= (and b!3075310 ((_ is Union!9523) (reg!9852 r!17423))) b!3075986))

(declare-fun b!3075991 () Bool)

(declare-fun e!1924593 () Bool)

(declare-fun tp!969663 () Bool)

(assert (=> b!3075991 (= e!1924593 (and tp_is_empty!16609 tp!969663))))

(assert (=> b!3075304 (= tp!969597 e!1924593)))

(assert (= (and b!3075304 ((_ is Cons!35264) (t!234453 s!11993))) b!3075991))

(declare-fun b!3075994 () Bool)

(declare-fun e!1924594 () Bool)

(declare-fun tp!969665 () Bool)

(assert (=> b!3075994 (= e!1924594 tp!969665)))

(declare-fun b!3075992 () Bool)

(assert (=> b!3075992 (= e!1924594 tp_is_empty!16609)))

(declare-fun b!3075993 () Bool)

(declare-fun tp!969668 () Bool)

(declare-fun tp!969664 () Bool)

(assert (=> b!3075993 (= e!1924594 (and tp!969668 tp!969664))))

(declare-fun b!3075995 () Bool)

(declare-fun tp!969667 () Bool)

(declare-fun tp!969666 () Bool)

(assert (=> b!3075995 (= e!1924594 (and tp!969667 tp!969666))))

(assert (=> b!3075305 (= tp!969595 e!1924594)))

(assert (= (and b!3075305 ((_ is ElementMatch!9523) (regOne!19559 r!17423))) b!3075992))

(assert (= (and b!3075305 ((_ is Concat!14844) (regOne!19559 r!17423))) b!3075993))

(assert (= (and b!3075305 ((_ is Star!9523) (regOne!19559 r!17423))) b!3075994))

(assert (= (and b!3075305 ((_ is Union!9523) (regOne!19559 r!17423))) b!3075995))

(declare-fun b!3075998 () Bool)

(declare-fun e!1924595 () Bool)

(declare-fun tp!969670 () Bool)

(assert (=> b!3075998 (= e!1924595 tp!969670)))

(declare-fun b!3075996 () Bool)

(assert (=> b!3075996 (= e!1924595 tp_is_empty!16609)))

(declare-fun b!3075997 () Bool)

(declare-fun tp!969673 () Bool)

(declare-fun tp!969669 () Bool)

(assert (=> b!3075997 (= e!1924595 (and tp!969673 tp!969669))))

(declare-fun b!3075999 () Bool)

(declare-fun tp!969672 () Bool)

(declare-fun tp!969671 () Bool)

(assert (=> b!3075999 (= e!1924595 (and tp!969672 tp!969671))))

(assert (=> b!3075305 (= tp!969592 e!1924595)))

(assert (= (and b!3075305 ((_ is ElementMatch!9523) (regTwo!19559 r!17423))) b!3075996))

(assert (= (and b!3075305 ((_ is Concat!14844) (regTwo!19559 r!17423))) b!3075997))

(assert (= (and b!3075305 ((_ is Star!9523) (regTwo!19559 r!17423))) b!3075998))

(assert (= (and b!3075305 ((_ is Union!9523) (regTwo!19559 r!17423))) b!3075999))

(check-sat (not b!3075849) (not b!3075854) (not b!3075826) (not bm!214015) (not b!3075844) (not bm!213985) (not d!856943) (not b!3075749) (not b!3075835) (not b!3075383) (not b!3075796) (not b!3075946) (not bm!213989) (not b!3075387) (not b!3075837) (not d!856939) (not b!3075830) (not bm!214016) (not b!3075977) (not b!3075385) (not b!3075798) (not b!3075788) (not d!856933) (not b!3075985) (not b!3075790) (not d!856941) (not b!3075982) (not b!3075997) (not d!856937) (not bm!213986) (not b!3075999) (not b!3075846) (not d!856931) (not b!3075816) (not b!3075807) (not b!3075389) (not bm!214013) (not b!3075824) (not bm!213987) (not b!3075818) (not bm!214012) (not bm!214006) (not bm!213978) (not b!3075984) (not b!3075852) (not b!3075795) (not b!3075840) (not b!3075991) (not b!3075862) (not b!3075823) (not b!3075809) (not b!3075812) (not b!3075986) (not b!3075386) (not b!3075360) (not b!3075976) (not bm!213918) (not b!3075980) (not b!3075832) (not d!856953) (not b!3075998) (not d!856945) (not b!3075804) (not b!3075388) (not bm!213984) tp_is_empty!16609 (not b!3075929) (not b!3075821) (not d!856885) (not d!856955) (not b!3075994) (not b!3075851) (not b!3075793) (not bm!213920) (not b!3075810) (not b!3075838) (not bm!213983) (not b!3075995) (not d!856887) (not bm!214008) (not b!3075993) (not d!856935) (not b!3075921) (not bm!214005) (not bm!213982) (not b!3075978) (not b!3075746) (not bm!214009) (not b!3075981) (not b!3075802) (not b!3075954) (not bm!214004) (not bm!214011) (not bm!213979) (not d!856883))
(check-sat)
