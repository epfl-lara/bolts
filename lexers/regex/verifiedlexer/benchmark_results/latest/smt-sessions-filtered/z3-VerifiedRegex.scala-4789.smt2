; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!246620 () Bool)

(assert start!246620)

(declare-fun b!2535343 () Bool)

(declare-fun e!1603838 () Bool)

(declare-fun tp_is_empty!12961 () Bool)

(assert (=> b!2535343 (= e!1603838 tp_is_empty!12961)))

(declare-fun b!2535344 () Bool)

(declare-fun tp!810015 () Bool)

(declare-fun tp!810017 () Bool)

(assert (=> b!2535344 (= e!1603838 (and tp!810015 tp!810017))))

(declare-fun b!2535345 () Bool)

(declare-fun res!1069531 () Bool)

(declare-fun e!1603837 () Bool)

(assert (=> b!2535345 (=> (not res!1069531) (not e!1603837))))

(declare-datatypes ((C!15264 0))(
  ( (C!15265 (val!9284 Int)) )
))
(declare-datatypes ((List!29618 0))(
  ( (Nil!29518) (Cons!29518 (h!34938 C!15264) (t!211317 List!29618)) )
))
(declare-fun tl!4068 () List!29618)

(declare-fun c!14016 () C!15264)

(declare-datatypes ((Regex!7553 0))(
  ( (ElementMatch!7553 (c!405257 C!15264)) (Concat!12249 (regOne!15618 Regex!7553) (regTwo!15618 Regex!7553)) (EmptyExpr!7553) (Star!7553 (reg!7882 Regex!7553)) (EmptyLang!7553) (Union!7553 (regOne!15619 Regex!7553) (regTwo!15619 Regex!7553)) )
))
(declare-fun r!27340 () Regex!7553)

(declare-fun nullable!2470 (Regex!7553) Bool)

(declare-fun derivative!248 (Regex!7553 List!29618) Regex!7553)

(declare-fun derivativeStep!2122 (Regex!7553 C!15264) Regex!7553)

(assert (=> b!2535345 (= res!1069531 (not (nullable!2470 (derivative!248 (derivativeStep!2122 (regOne!15619 r!27340) c!14016) tl!4068))))))

(declare-fun res!1069532 () Bool)

(assert (=> start!246620 (=> (not res!1069532) (not e!1603837))))

(declare-fun validRegex!3179 (Regex!7553) Bool)

(assert (=> start!246620 (= res!1069532 (validRegex!3179 r!27340))))

(assert (=> start!246620 e!1603837))

(assert (=> start!246620 e!1603838))

(assert (=> start!246620 tp_is_empty!12961))

(declare-fun e!1603836 () Bool)

(assert (=> start!246620 e!1603836))

(declare-fun b!2535346 () Bool)

(declare-fun tp!810016 () Bool)

(assert (=> b!2535346 (= e!1603836 (and tp_is_empty!12961 tp!810016))))

(declare-fun b!2535347 () Bool)

(declare-fun tp!810014 () Bool)

(assert (=> b!2535347 (= e!1603838 tp!810014)))

(declare-fun b!2535348 () Bool)

(assert (=> b!2535348 (= e!1603837 (not (validRegex!3179 (regTwo!15619 r!27340))))))

(declare-fun b!2535349 () Bool)

(declare-fun res!1069533 () Bool)

(assert (=> b!2535349 (=> (not res!1069533) (not e!1603837))))

(get-info :version)

(assert (=> b!2535349 (= res!1069533 (and (not ((_ is EmptyExpr!7553) r!27340)) (not ((_ is EmptyLang!7553) r!27340)) (not ((_ is ElementMatch!7553) r!27340)) ((_ is Union!7553) r!27340)))))

(declare-fun b!2535350 () Bool)

(declare-fun res!1069530 () Bool)

(assert (=> b!2535350 (=> (not res!1069530) (not e!1603837))))

(assert (=> b!2535350 (= res!1069530 (nullable!2470 (derivative!248 (derivativeStep!2122 (regTwo!15619 r!27340) c!14016) tl!4068)))))

(declare-fun b!2535351 () Bool)

(declare-fun res!1069534 () Bool)

(assert (=> b!2535351 (=> (not res!1069534) (not e!1603837))))

(assert (=> b!2535351 (= res!1069534 (nullable!2470 (derivative!248 (derivativeStep!2122 r!27340 c!14016) tl!4068)))))

(declare-fun b!2535352 () Bool)

(declare-fun tp!810018 () Bool)

(declare-fun tp!810013 () Bool)

(assert (=> b!2535352 (= e!1603838 (and tp!810018 tp!810013))))

(assert (= (and start!246620 res!1069532) b!2535351))

(assert (= (and b!2535351 res!1069534) b!2535349))

(assert (= (and b!2535349 res!1069533) b!2535345))

(assert (= (and b!2535345 res!1069531) b!2535350))

(assert (= (and b!2535350 res!1069530) b!2535348))

(assert (= (and start!246620 ((_ is ElementMatch!7553) r!27340)) b!2535343))

(assert (= (and start!246620 ((_ is Concat!12249) r!27340)) b!2535352))

(assert (= (and start!246620 ((_ is Star!7553) r!27340)) b!2535347))

(assert (= (and start!246620 ((_ is Union!7553) r!27340)) b!2535344))

(assert (= (and start!246620 ((_ is Cons!29518) tl!4068)) b!2535346))

(declare-fun m!2884227 () Bool)

(assert (=> b!2535350 m!2884227))

(assert (=> b!2535350 m!2884227))

(declare-fun m!2884229 () Bool)

(assert (=> b!2535350 m!2884229))

(assert (=> b!2535350 m!2884229))

(declare-fun m!2884231 () Bool)

(assert (=> b!2535350 m!2884231))

(declare-fun m!2884233 () Bool)

(assert (=> b!2535348 m!2884233))

(declare-fun m!2884235 () Bool)

(assert (=> b!2535351 m!2884235))

(assert (=> b!2535351 m!2884235))

(declare-fun m!2884237 () Bool)

(assert (=> b!2535351 m!2884237))

(assert (=> b!2535351 m!2884237))

(declare-fun m!2884239 () Bool)

(assert (=> b!2535351 m!2884239))

(declare-fun m!2884241 () Bool)

(assert (=> b!2535345 m!2884241))

(assert (=> b!2535345 m!2884241))

(declare-fun m!2884243 () Bool)

(assert (=> b!2535345 m!2884243))

(assert (=> b!2535345 m!2884243))

(declare-fun m!2884245 () Bool)

(assert (=> b!2535345 m!2884245))

(declare-fun m!2884247 () Bool)

(assert (=> start!246620 m!2884247))

(check-sat (not b!2535346) (not b!2535348) (not b!2535351) (not b!2535347) (not b!2535352) (not start!246620) tp_is_empty!12961 (not b!2535344) (not b!2535345) (not b!2535350))
(check-sat)
(get-model)

(declare-fun b!2535389 () Bool)

(declare-fun e!1603868 () Bool)

(declare-fun call!159461 () Bool)

(assert (=> b!2535389 (= e!1603868 call!159461)))

(declare-fun d!720506 () Bool)

(declare-fun res!1069555 () Bool)

(declare-fun e!1603867 () Bool)

(assert (=> d!720506 (=> res!1069555 e!1603867)))

(assert (=> d!720506 (= res!1069555 ((_ is ElementMatch!7553) (regTwo!15619 r!27340)))))

(assert (=> d!720506 (= (validRegex!3179 (regTwo!15619 r!27340)) e!1603867)))

(declare-fun bm!159455 () Bool)

(declare-fun call!159462 () Bool)

(assert (=> bm!159455 (= call!159462 call!159461)))

(declare-fun b!2535390 () Bool)

(declare-fun e!1603872 () Bool)

(declare-fun e!1603873 () Bool)

(assert (=> b!2535390 (= e!1603872 e!1603873)))

(declare-fun c!405267 () Bool)

(assert (=> b!2535390 (= c!405267 ((_ is Union!7553) (regTwo!15619 r!27340)))))

(declare-fun bm!159456 () Bool)

(declare-fun c!405266 () Bool)

(assert (=> bm!159456 (= call!159461 (validRegex!3179 (ite c!405266 (reg!7882 (regTwo!15619 r!27340)) (ite c!405267 (regTwo!15619 (regTwo!15619 r!27340)) (regOne!15618 (regTwo!15619 r!27340))))))))

(declare-fun b!2535391 () Bool)

(assert (=> b!2535391 (= e!1603872 e!1603868)))

(declare-fun res!1069559 () Bool)

(assert (=> b!2535391 (= res!1069559 (not (nullable!2470 (reg!7882 (regTwo!15619 r!27340)))))))

(assert (=> b!2535391 (=> (not res!1069559) (not e!1603868))))

(declare-fun b!2535392 () Bool)

(assert (=> b!2535392 (= e!1603867 e!1603872)))

(assert (=> b!2535392 (= c!405266 ((_ is Star!7553) (regTwo!15619 r!27340)))))

(declare-fun b!2535393 () Bool)

(declare-fun e!1603870 () Bool)

(declare-fun e!1603869 () Bool)

(assert (=> b!2535393 (= e!1603870 e!1603869)))

(declare-fun res!1069556 () Bool)

(assert (=> b!2535393 (=> (not res!1069556) (not e!1603869))))

(assert (=> b!2535393 (= res!1069556 call!159462)))

(declare-fun bm!159457 () Bool)

(declare-fun call!159460 () Bool)

(assert (=> bm!159457 (= call!159460 (validRegex!3179 (ite c!405267 (regOne!15619 (regTwo!15619 r!27340)) (regTwo!15618 (regTwo!15619 r!27340)))))))

(declare-fun b!2535394 () Bool)

(declare-fun res!1069557 () Bool)

(assert (=> b!2535394 (=> res!1069557 e!1603870)))

(assert (=> b!2535394 (= res!1069557 (not ((_ is Concat!12249) (regTwo!15619 r!27340))))))

(assert (=> b!2535394 (= e!1603873 e!1603870)))

(declare-fun b!2535395 () Bool)

(assert (=> b!2535395 (= e!1603869 call!159460)))

(declare-fun b!2535396 () Bool)

(declare-fun e!1603871 () Bool)

(assert (=> b!2535396 (= e!1603871 call!159462)))

(declare-fun b!2535397 () Bool)

(declare-fun res!1069558 () Bool)

(assert (=> b!2535397 (=> (not res!1069558) (not e!1603871))))

(assert (=> b!2535397 (= res!1069558 call!159460)))

(assert (=> b!2535397 (= e!1603873 e!1603871)))

(assert (= (and d!720506 (not res!1069555)) b!2535392))

(assert (= (and b!2535392 c!405266) b!2535391))

(assert (= (and b!2535392 (not c!405266)) b!2535390))

(assert (= (and b!2535391 res!1069559) b!2535389))

(assert (= (and b!2535390 c!405267) b!2535397))

(assert (= (and b!2535390 (not c!405267)) b!2535394))

(assert (= (and b!2535397 res!1069558) b!2535396))

(assert (= (and b!2535394 (not res!1069557)) b!2535393))

(assert (= (and b!2535393 res!1069556) b!2535395))

(assert (= (or b!2535397 b!2535395) bm!159457))

(assert (= (or b!2535396 b!2535393) bm!159455))

(assert (= (or b!2535389 bm!159455) bm!159456))

(declare-fun m!2884249 () Bool)

(assert (=> bm!159456 m!2884249))

(declare-fun m!2884251 () Bool)

(assert (=> b!2535391 m!2884251))

(declare-fun m!2884253 () Bool)

(assert (=> bm!159457 m!2884253))

(assert (=> b!2535348 d!720506))

(declare-fun b!2535398 () Bool)

(declare-fun e!1603875 () Bool)

(declare-fun call!159466 () Bool)

(assert (=> b!2535398 (= e!1603875 call!159466)))

(declare-fun d!720510 () Bool)

(declare-fun res!1069560 () Bool)

(declare-fun e!1603874 () Bool)

(assert (=> d!720510 (=> res!1069560 e!1603874)))

(assert (=> d!720510 (= res!1069560 ((_ is ElementMatch!7553) r!27340))))

(assert (=> d!720510 (= (validRegex!3179 r!27340) e!1603874)))

(declare-fun bm!159460 () Bool)

(declare-fun call!159467 () Bool)

(assert (=> bm!159460 (= call!159467 call!159466)))

(declare-fun b!2535399 () Bool)

(declare-fun e!1603879 () Bool)

(declare-fun e!1603880 () Bool)

(assert (=> b!2535399 (= e!1603879 e!1603880)))

(declare-fun c!405269 () Bool)

(assert (=> b!2535399 (= c!405269 ((_ is Union!7553) r!27340))))

(declare-fun c!405268 () Bool)

(declare-fun bm!159461 () Bool)

(assert (=> bm!159461 (= call!159466 (validRegex!3179 (ite c!405268 (reg!7882 r!27340) (ite c!405269 (regTwo!15619 r!27340) (regOne!15618 r!27340)))))))

(declare-fun b!2535400 () Bool)

(assert (=> b!2535400 (= e!1603879 e!1603875)))

(declare-fun res!1069564 () Bool)

(assert (=> b!2535400 (= res!1069564 (not (nullable!2470 (reg!7882 r!27340))))))

(assert (=> b!2535400 (=> (not res!1069564) (not e!1603875))))

(declare-fun b!2535401 () Bool)

(assert (=> b!2535401 (= e!1603874 e!1603879)))

(assert (=> b!2535401 (= c!405268 ((_ is Star!7553) r!27340))))

(declare-fun b!2535402 () Bool)

(declare-fun e!1603877 () Bool)

(declare-fun e!1603876 () Bool)

(assert (=> b!2535402 (= e!1603877 e!1603876)))

(declare-fun res!1069561 () Bool)

(assert (=> b!2535402 (=> (not res!1069561) (not e!1603876))))

(assert (=> b!2535402 (= res!1069561 call!159467)))

(declare-fun bm!159462 () Bool)

(declare-fun call!159465 () Bool)

(assert (=> bm!159462 (= call!159465 (validRegex!3179 (ite c!405269 (regOne!15619 r!27340) (regTwo!15618 r!27340))))))

(declare-fun b!2535403 () Bool)

(declare-fun res!1069562 () Bool)

(assert (=> b!2535403 (=> res!1069562 e!1603877)))

(assert (=> b!2535403 (= res!1069562 (not ((_ is Concat!12249) r!27340)))))

(assert (=> b!2535403 (= e!1603880 e!1603877)))

(declare-fun b!2535404 () Bool)

(assert (=> b!2535404 (= e!1603876 call!159465)))

(declare-fun b!2535405 () Bool)

(declare-fun e!1603878 () Bool)

(assert (=> b!2535405 (= e!1603878 call!159467)))

(declare-fun b!2535406 () Bool)

(declare-fun res!1069563 () Bool)

(assert (=> b!2535406 (=> (not res!1069563) (not e!1603878))))

(assert (=> b!2535406 (= res!1069563 call!159465)))

(assert (=> b!2535406 (= e!1603880 e!1603878)))

(assert (= (and d!720510 (not res!1069560)) b!2535401))

(assert (= (and b!2535401 c!405268) b!2535400))

(assert (= (and b!2535401 (not c!405268)) b!2535399))

(assert (= (and b!2535400 res!1069564) b!2535398))

(assert (= (and b!2535399 c!405269) b!2535406))

(assert (= (and b!2535399 (not c!405269)) b!2535403))

(assert (= (and b!2535406 res!1069563) b!2535405))

(assert (= (and b!2535403 (not res!1069562)) b!2535402))

(assert (= (and b!2535402 res!1069561) b!2535404))

(assert (= (or b!2535406 b!2535404) bm!159462))

(assert (= (or b!2535405 b!2535402) bm!159460))

(assert (= (or b!2535398 bm!159460) bm!159461))

(declare-fun m!2884255 () Bool)

(assert (=> bm!159461 m!2884255))

(declare-fun m!2884257 () Bool)

(assert (=> b!2535400 m!2884257))

(declare-fun m!2884259 () Bool)

(assert (=> bm!159462 m!2884259))

(assert (=> start!246620 d!720510))

(declare-fun d!720512 () Bool)

(declare-fun nullableFct!701 (Regex!7553) Bool)

(assert (=> d!720512 (= (nullable!2470 (derivative!248 (derivativeStep!2122 r!27340 c!14016) tl!4068)) (nullableFct!701 (derivative!248 (derivativeStep!2122 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469278 () Bool)

(assert (= bs!469278 d!720512))

(assert (=> bs!469278 m!2884237))

(declare-fun m!2884261 () Bool)

(assert (=> bs!469278 m!2884261))

(assert (=> b!2535351 d!720512))

(declare-fun d!720514 () Bool)

(declare-fun lt!901487 () Regex!7553)

(assert (=> d!720514 (validRegex!3179 lt!901487)))

(declare-fun e!1603897 () Regex!7553)

(assert (=> d!720514 (= lt!901487 e!1603897)))

(declare-fun c!405276 () Bool)

(assert (=> d!720514 (= c!405276 ((_ is Cons!29518) tl!4068))))

(assert (=> d!720514 (validRegex!3179 (derivativeStep!2122 r!27340 c!14016))))

(assert (=> d!720514 (= (derivative!248 (derivativeStep!2122 r!27340 c!14016) tl!4068) lt!901487)))

(declare-fun b!2535429 () Bool)

(assert (=> b!2535429 (= e!1603897 (derivative!248 (derivativeStep!2122 (derivativeStep!2122 r!27340 c!14016) (h!34938 tl!4068)) (t!211317 tl!4068)))))

(declare-fun b!2535430 () Bool)

(assert (=> b!2535430 (= e!1603897 (derivativeStep!2122 r!27340 c!14016))))

(assert (= (and d!720514 c!405276) b!2535429))

(assert (= (and d!720514 (not c!405276)) b!2535430))

(declare-fun m!2884269 () Bool)

(assert (=> d!720514 m!2884269))

(assert (=> d!720514 m!2884235))

(declare-fun m!2884271 () Bool)

(assert (=> d!720514 m!2884271))

(assert (=> b!2535429 m!2884235))

(declare-fun m!2884275 () Bool)

(assert (=> b!2535429 m!2884275))

(assert (=> b!2535429 m!2884275))

(declare-fun m!2884279 () Bool)

(assert (=> b!2535429 m!2884279))

(assert (=> b!2535351 d!720514))

(declare-fun b!2535457 () Bool)

(declare-fun e!1603914 () Regex!7553)

(declare-fun call!159482 () Regex!7553)

(assert (=> b!2535457 (= e!1603914 (Union!7553 (Concat!12249 call!159482 (regTwo!15618 r!27340)) EmptyLang!7553))))

(declare-fun b!2535458 () Bool)

(declare-fun e!1603911 () Regex!7553)

(assert (=> b!2535458 (= e!1603911 (ite (= c!14016 (c!405257 r!27340)) EmptyExpr!7553 EmptyLang!7553))))

(declare-fun b!2535459 () Bool)

(declare-fun c!405291 () Bool)

(assert (=> b!2535459 (= c!405291 (nullable!2470 (regOne!15618 r!27340)))))

(declare-fun e!1603915 () Regex!7553)

(assert (=> b!2535459 (= e!1603915 e!1603914)))

(declare-fun b!2535460 () Bool)

(declare-fun e!1603913 () Regex!7553)

(assert (=> b!2535460 (= e!1603913 EmptyLang!7553)))

(declare-fun b!2535461 () Bool)

(declare-fun e!1603912 () Regex!7553)

(declare-fun call!159484 () Regex!7553)

(declare-fun call!159483 () Regex!7553)

(assert (=> b!2535461 (= e!1603912 (Union!7553 call!159484 call!159483))))

(declare-fun b!2535462 () Bool)

(assert (=> b!2535462 (= e!1603913 e!1603911)))

(declare-fun c!405292 () Bool)

(assert (=> b!2535462 (= c!405292 ((_ is ElementMatch!7553) r!27340))))

(declare-fun b!2535463 () Bool)

(assert (=> b!2535463 (= e!1603912 e!1603915)))

(declare-fun c!405293 () Bool)

(assert (=> b!2535463 (= c!405293 ((_ is Star!7553) r!27340))))

(declare-fun bm!159478 () Bool)

(declare-fun c!405290 () Bool)

(assert (=> bm!159478 (= call!159483 (derivativeStep!2122 (ite c!405290 (regTwo!15619 r!27340) (ite c!405293 (reg!7882 r!27340) (regOne!15618 r!27340))) c!14016))))

(declare-fun bm!159479 () Bool)

(declare-fun call!159485 () Regex!7553)

(assert (=> bm!159479 (= call!159485 call!159483)))

(declare-fun b!2535464 () Bool)

(assert (=> b!2535464 (= e!1603914 (Union!7553 (Concat!12249 call!159482 (regTwo!15618 r!27340)) call!159484))))

(declare-fun b!2535465 () Bool)

(assert (=> b!2535465 (= e!1603915 (Concat!12249 call!159485 r!27340))))

(declare-fun bm!159477 () Bool)

(assert (=> bm!159477 (= call!159484 (derivativeStep!2122 (ite c!405290 (regOne!15619 r!27340) (regTwo!15618 r!27340)) c!14016))))

(declare-fun d!720518 () Bool)

(declare-fun lt!901493 () Regex!7553)

(assert (=> d!720518 (validRegex!3179 lt!901493)))

(assert (=> d!720518 (= lt!901493 e!1603913)))

(declare-fun c!405294 () Bool)

(assert (=> d!720518 (= c!405294 (or ((_ is EmptyExpr!7553) r!27340) ((_ is EmptyLang!7553) r!27340)))))

(assert (=> d!720518 (validRegex!3179 r!27340)))

(assert (=> d!720518 (= (derivativeStep!2122 r!27340 c!14016) lt!901493)))

(declare-fun bm!159480 () Bool)

(assert (=> bm!159480 (= call!159482 call!159485)))

(declare-fun b!2535466 () Bool)

(assert (=> b!2535466 (= c!405290 ((_ is Union!7553) r!27340))))

(assert (=> b!2535466 (= e!1603911 e!1603912)))

(assert (= (and d!720518 c!405294) b!2535460))

(assert (= (and d!720518 (not c!405294)) b!2535462))

(assert (= (and b!2535462 c!405292) b!2535458))

(assert (= (and b!2535462 (not c!405292)) b!2535466))

(assert (= (and b!2535466 c!405290) b!2535461))

(assert (= (and b!2535466 (not c!405290)) b!2535463))

(assert (= (and b!2535463 c!405293) b!2535465))

(assert (= (and b!2535463 (not c!405293)) b!2535459))

(assert (= (and b!2535459 c!405291) b!2535464))

(assert (= (and b!2535459 (not c!405291)) b!2535457))

(assert (= (or b!2535464 b!2535457) bm!159480))

(assert (= (or b!2535465 bm!159480) bm!159479))

(assert (= (or b!2535461 bm!159479) bm!159478))

(assert (= (or b!2535461 b!2535464) bm!159477))

(declare-fun m!2884293 () Bool)

(assert (=> b!2535459 m!2884293))

(declare-fun m!2884295 () Bool)

(assert (=> bm!159478 m!2884295))

(declare-fun m!2884297 () Bool)

(assert (=> bm!159477 m!2884297))

(declare-fun m!2884299 () Bool)

(assert (=> d!720518 m!2884299))

(assert (=> d!720518 m!2884247))

(assert (=> b!2535351 d!720518))

(declare-fun d!720526 () Bool)

(assert (=> d!720526 (= (nullable!2470 (derivative!248 (derivativeStep!2122 (regTwo!15619 r!27340) c!14016) tl!4068)) (nullableFct!701 (derivative!248 (derivativeStep!2122 (regTwo!15619 r!27340) c!14016) tl!4068)))))

(declare-fun bs!469280 () Bool)

(assert (= bs!469280 d!720526))

(assert (=> bs!469280 m!2884229))

(declare-fun m!2884301 () Bool)

(assert (=> bs!469280 m!2884301))

(assert (=> b!2535350 d!720526))

(declare-fun d!720528 () Bool)

(declare-fun lt!901496 () Regex!7553)

(assert (=> d!720528 (validRegex!3179 lt!901496)))

(declare-fun e!1603922 () Regex!7553)

(assert (=> d!720528 (= lt!901496 e!1603922)))

(declare-fun c!405301 () Bool)

(assert (=> d!720528 (= c!405301 ((_ is Cons!29518) tl!4068))))

(assert (=> d!720528 (validRegex!3179 (derivativeStep!2122 (regTwo!15619 r!27340) c!14016))))

(assert (=> d!720528 (= (derivative!248 (derivativeStep!2122 (regTwo!15619 r!27340) c!14016) tl!4068) lt!901496)))

(declare-fun b!2535479 () Bool)

(assert (=> b!2535479 (= e!1603922 (derivative!248 (derivativeStep!2122 (derivativeStep!2122 (regTwo!15619 r!27340) c!14016) (h!34938 tl!4068)) (t!211317 tl!4068)))))

(declare-fun b!2535480 () Bool)

(assert (=> b!2535480 (= e!1603922 (derivativeStep!2122 (regTwo!15619 r!27340) c!14016))))

(assert (= (and d!720528 c!405301) b!2535479))

(assert (= (and d!720528 (not c!405301)) b!2535480))

(declare-fun m!2884303 () Bool)

(assert (=> d!720528 m!2884303))

(assert (=> d!720528 m!2884227))

(declare-fun m!2884305 () Bool)

(assert (=> d!720528 m!2884305))

(assert (=> b!2535479 m!2884227))

(declare-fun m!2884307 () Bool)

(assert (=> b!2535479 m!2884307))

(assert (=> b!2535479 m!2884307))

(declare-fun m!2884309 () Bool)

(assert (=> b!2535479 m!2884309))

(assert (=> b!2535350 d!720528))

(declare-fun b!2535489 () Bool)

(declare-fun e!1603930 () Regex!7553)

(declare-fun call!159488 () Regex!7553)

(assert (=> b!2535489 (= e!1603930 (Union!7553 (Concat!12249 call!159488 (regTwo!15618 (regTwo!15619 r!27340))) EmptyLang!7553))))

(declare-fun b!2535490 () Bool)

(declare-fun e!1603927 () Regex!7553)

(assert (=> b!2535490 (= e!1603927 (ite (= c!14016 (c!405257 (regTwo!15619 r!27340))) EmptyExpr!7553 EmptyLang!7553))))

(declare-fun b!2535491 () Bool)

(declare-fun c!405307 () Bool)

(assert (=> b!2535491 (= c!405307 (nullable!2470 (regOne!15618 (regTwo!15619 r!27340))))))

(declare-fun e!1603931 () Regex!7553)

(assert (=> b!2535491 (= e!1603931 e!1603930)))

(declare-fun b!2535492 () Bool)

(declare-fun e!1603929 () Regex!7553)

(assert (=> b!2535492 (= e!1603929 EmptyLang!7553)))

(declare-fun b!2535493 () Bool)

(declare-fun e!1603928 () Regex!7553)

(declare-fun call!159490 () Regex!7553)

(declare-fun call!159489 () Regex!7553)

(assert (=> b!2535493 (= e!1603928 (Union!7553 call!159490 call!159489))))

(declare-fun b!2535494 () Bool)

(assert (=> b!2535494 (= e!1603929 e!1603927)))

(declare-fun c!405308 () Bool)

(assert (=> b!2535494 (= c!405308 ((_ is ElementMatch!7553) (regTwo!15619 r!27340)))))

(declare-fun b!2535495 () Bool)

(assert (=> b!2535495 (= e!1603928 e!1603931)))

(declare-fun c!405309 () Bool)

(assert (=> b!2535495 (= c!405309 ((_ is Star!7553) (regTwo!15619 r!27340)))))

(declare-fun c!405306 () Bool)

(declare-fun bm!159484 () Bool)

(assert (=> bm!159484 (= call!159489 (derivativeStep!2122 (ite c!405306 (regTwo!15619 (regTwo!15619 r!27340)) (ite c!405309 (reg!7882 (regTwo!15619 r!27340)) (regOne!15618 (regTwo!15619 r!27340)))) c!14016))))

(declare-fun bm!159485 () Bool)

(declare-fun call!159491 () Regex!7553)

(assert (=> bm!159485 (= call!159491 call!159489)))

(declare-fun b!2535496 () Bool)

(assert (=> b!2535496 (= e!1603930 (Union!7553 (Concat!12249 call!159488 (regTwo!15618 (regTwo!15619 r!27340))) call!159490))))

(declare-fun b!2535497 () Bool)

(assert (=> b!2535497 (= e!1603931 (Concat!12249 call!159491 (regTwo!15619 r!27340)))))

(declare-fun bm!159483 () Bool)

(assert (=> bm!159483 (= call!159490 (derivativeStep!2122 (ite c!405306 (regOne!15619 (regTwo!15619 r!27340)) (regTwo!15618 (regTwo!15619 r!27340))) c!14016))))

(declare-fun d!720530 () Bool)

(declare-fun lt!901497 () Regex!7553)

(assert (=> d!720530 (validRegex!3179 lt!901497)))

(assert (=> d!720530 (= lt!901497 e!1603929)))

(declare-fun c!405310 () Bool)

(assert (=> d!720530 (= c!405310 (or ((_ is EmptyExpr!7553) (regTwo!15619 r!27340)) ((_ is EmptyLang!7553) (regTwo!15619 r!27340))))))

(assert (=> d!720530 (validRegex!3179 (regTwo!15619 r!27340))))

(assert (=> d!720530 (= (derivativeStep!2122 (regTwo!15619 r!27340) c!14016) lt!901497)))

(declare-fun bm!159486 () Bool)

(assert (=> bm!159486 (= call!159488 call!159491)))

(declare-fun b!2535498 () Bool)

(assert (=> b!2535498 (= c!405306 ((_ is Union!7553) (regTwo!15619 r!27340)))))

(assert (=> b!2535498 (= e!1603927 e!1603928)))

(assert (= (and d!720530 c!405310) b!2535492))

(assert (= (and d!720530 (not c!405310)) b!2535494))

(assert (= (and b!2535494 c!405308) b!2535490))

(assert (= (and b!2535494 (not c!405308)) b!2535498))

(assert (= (and b!2535498 c!405306) b!2535493))

(assert (= (and b!2535498 (not c!405306)) b!2535495))

(assert (= (and b!2535495 c!405309) b!2535497))

(assert (= (and b!2535495 (not c!405309)) b!2535491))

(assert (= (and b!2535491 c!405307) b!2535496))

(assert (= (and b!2535491 (not c!405307)) b!2535489))

(assert (= (or b!2535496 b!2535489) bm!159486))

(assert (= (or b!2535497 bm!159486) bm!159485))

(assert (= (or b!2535493 bm!159485) bm!159484))

(assert (= (or b!2535493 b!2535496) bm!159483))

(declare-fun m!2884311 () Bool)

(assert (=> b!2535491 m!2884311))

(declare-fun m!2884313 () Bool)

(assert (=> bm!159484 m!2884313))

(declare-fun m!2884315 () Bool)

(assert (=> bm!159483 m!2884315))

(declare-fun m!2884317 () Bool)

(assert (=> d!720530 m!2884317))

(assert (=> d!720530 m!2884233))

(assert (=> b!2535350 d!720530))

(declare-fun d!720532 () Bool)

(assert (=> d!720532 (= (nullable!2470 (derivative!248 (derivativeStep!2122 (regOne!15619 r!27340) c!14016) tl!4068)) (nullableFct!701 (derivative!248 (derivativeStep!2122 (regOne!15619 r!27340) c!14016) tl!4068)))))

(declare-fun bs!469281 () Bool)

(assert (= bs!469281 d!720532))

(assert (=> bs!469281 m!2884243))

(declare-fun m!2884319 () Bool)

(assert (=> bs!469281 m!2884319))

(assert (=> b!2535345 d!720532))

(declare-fun d!720534 () Bool)

(declare-fun lt!901498 () Regex!7553)

(assert (=> d!720534 (validRegex!3179 lt!901498)))

(declare-fun e!1603932 () Regex!7553)

(assert (=> d!720534 (= lt!901498 e!1603932)))

(declare-fun c!405311 () Bool)

(assert (=> d!720534 (= c!405311 ((_ is Cons!29518) tl!4068))))

(assert (=> d!720534 (validRegex!3179 (derivativeStep!2122 (regOne!15619 r!27340) c!14016))))

(assert (=> d!720534 (= (derivative!248 (derivativeStep!2122 (regOne!15619 r!27340) c!14016) tl!4068) lt!901498)))

(declare-fun b!2535499 () Bool)

(assert (=> b!2535499 (= e!1603932 (derivative!248 (derivativeStep!2122 (derivativeStep!2122 (regOne!15619 r!27340) c!14016) (h!34938 tl!4068)) (t!211317 tl!4068)))))

(declare-fun b!2535500 () Bool)

(assert (=> b!2535500 (= e!1603932 (derivativeStep!2122 (regOne!15619 r!27340) c!14016))))

(assert (= (and d!720534 c!405311) b!2535499))

(assert (= (and d!720534 (not c!405311)) b!2535500))

(declare-fun m!2884321 () Bool)

(assert (=> d!720534 m!2884321))

(assert (=> d!720534 m!2884241))

(declare-fun m!2884323 () Bool)

(assert (=> d!720534 m!2884323))

(assert (=> b!2535499 m!2884241))

(declare-fun m!2884325 () Bool)

(assert (=> b!2535499 m!2884325))

(assert (=> b!2535499 m!2884325))

(declare-fun m!2884327 () Bool)

(assert (=> b!2535499 m!2884327))

(assert (=> b!2535345 d!720534))

(declare-fun b!2535501 () Bool)

(declare-fun e!1603936 () Regex!7553)

(declare-fun call!159496 () Regex!7553)

(assert (=> b!2535501 (= e!1603936 (Union!7553 (Concat!12249 call!159496 (regTwo!15618 (regOne!15619 r!27340))) EmptyLang!7553))))

(declare-fun b!2535502 () Bool)

(declare-fun e!1603933 () Regex!7553)

(assert (=> b!2535502 (= e!1603933 (ite (= c!14016 (c!405257 (regOne!15619 r!27340))) EmptyExpr!7553 EmptyLang!7553))))

(declare-fun b!2535503 () Bool)

(declare-fun c!405313 () Bool)

(assert (=> b!2535503 (= c!405313 (nullable!2470 (regOne!15618 (regOne!15619 r!27340))))))

(declare-fun e!1603937 () Regex!7553)

(assert (=> b!2535503 (= e!1603937 e!1603936)))

(declare-fun b!2535504 () Bool)

(declare-fun e!1603935 () Regex!7553)

(assert (=> b!2535504 (= e!1603935 EmptyLang!7553)))

(declare-fun b!2535505 () Bool)

(declare-fun e!1603934 () Regex!7553)

(declare-fun call!159498 () Regex!7553)

(declare-fun call!159497 () Regex!7553)

(assert (=> b!2535505 (= e!1603934 (Union!7553 call!159498 call!159497))))

(declare-fun b!2535506 () Bool)

(assert (=> b!2535506 (= e!1603935 e!1603933)))

(declare-fun c!405314 () Bool)

(assert (=> b!2535506 (= c!405314 ((_ is ElementMatch!7553) (regOne!15619 r!27340)))))

(declare-fun b!2535507 () Bool)

(assert (=> b!2535507 (= e!1603934 e!1603937)))

(declare-fun c!405315 () Bool)

(assert (=> b!2535507 (= c!405315 ((_ is Star!7553) (regOne!15619 r!27340)))))

(declare-fun bm!159492 () Bool)

(declare-fun c!405312 () Bool)

(assert (=> bm!159492 (= call!159497 (derivativeStep!2122 (ite c!405312 (regTwo!15619 (regOne!15619 r!27340)) (ite c!405315 (reg!7882 (regOne!15619 r!27340)) (regOne!15618 (regOne!15619 r!27340)))) c!14016))))

(declare-fun bm!159493 () Bool)

(declare-fun call!159499 () Regex!7553)

(assert (=> bm!159493 (= call!159499 call!159497)))

(declare-fun b!2535508 () Bool)

(assert (=> b!2535508 (= e!1603936 (Union!7553 (Concat!12249 call!159496 (regTwo!15618 (regOne!15619 r!27340))) call!159498))))

(declare-fun b!2535509 () Bool)

(assert (=> b!2535509 (= e!1603937 (Concat!12249 call!159499 (regOne!15619 r!27340)))))

(declare-fun bm!159491 () Bool)

(assert (=> bm!159491 (= call!159498 (derivativeStep!2122 (ite c!405312 (regOne!15619 (regOne!15619 r!27340)) (regTwo!15618 (regOne!15619 r!27340))) c!14016))))

(declare-fun d!720536 () Bool)

(declare-fun lt!901499 () Regex!7553)

(assert (=> d!720536 (validRegex!3179 lt!901499)))

(assert (=> d!720536 (= lt!901499 e!1603935)))

(declare-fun c!405316 () Bool)

(assert (=> d!720536 (= c!405316 (or ((_ is EmptyExpr!7553) (regOne!15619 r!27340)) ((_ is EmptyLang!7553) (regOne!15619 r!27340))))))

(assert (=> d!720536 (validRegex!3179 (regOne!15619 r!27340))))

(assert (=> d!720536 (= (derivativeStep!2122 (regOne!15619 r!27340) c!14016) lt!901499)))

(declare-fun bm!159494 () Bool)

(assert (=> bm!159494 (= call!159496 call!159499)))

(declare-fun b!2535510 () Bool)

(assert (=> b!2535510 (= c!405312 ((_ is Union!7553) (regOne!15619 r!27340)))))

(assert (=> b!2535510 (= e!1603933 e!1603934)))

(assert (= (and d!720536 c!405316) b!2535504))

(assert (= (and d!720536 (not c!405316)) b!2535506))

(assert (= (and b!2535506 c!405314) b!2535502))

(assert (= (and b!2535506 (not c!405314)) b!2535510))

(assert (= (and b!2535510 c!405312) b!2535505))

(assert (= (and b!2535510 (not c!405312)) b!2535507))

(assert (= (and b!2535507 c!405315) b!2535509))

(assert (= (and b!2535507 (not c!405315)) b!2535503))

(assert (= (and b!2535503 c!405313) b!2535508))

(assert (= (and b!2535503 (not c!405313)) b!2535501))

(assert (= (or b!2535508 b!2535501) bm!159494))

(assert (= (or b!2535509 bm!159494) bm!159493))

(assert (= (or b!2535505 bm!159493) bm!159492))

(assert (= (or b!2535505 b!2535508) bm!159491))

(declare-fun m!2884329 () Bool)

(assert (=> b!2535503 m!2884329))

(declare-fun m!2884331 () Bool)

(assert (=> bm!159492 m!2884331))

(declare-fun m!2884333 () Bool)

(assert (=> bm!159491 m!2884333))

(declare-fun m!2884335 () Bool)

(assert (=> d!720536 m!2884335))

(declare-fun m!2884337 () Bool)

(assert (=> d!720536 m!2884337))

(assert (=> b!2535345 d!720536))

(declare-fun b!2535521 () Bool)

(declare-fun e!1603940 () Bool)

(assert (=> b!2535521 (= e!1603940 tp_is_empty!12961)))

(declare-fun b!2535524 () Bool)

(declare-fun tp!810031 () Bool)

(declare-fun tp!810030 () Bool)

(assert (=> b!2535524 (= e!1603940 (and tp!810031 tp!810030))))

(declare-fun b!2535522 () Bool)

(declare-fun tp!810029 () Bool)

(declare-fun tp!810032 () Bool)

(assert (=> b!2535522 (= e!1603940 (and tp!810029 tp!810032))))

(declare-fun b!2535523 () Bool)

(declare-fun tp!810033 () Bool)

(assert (=> b!2535523 (= e!1603940 tp!810033)))

(assert (=> b!2535352 (= tp!810018 e!1603940)))

(assert (= (and b!2535352 ((_ is ElementMatch!7553) (regOne!15618 r!27340))) b!2535521))

(assert (= (and b!2535352 ((_ is Concat!12249) (regOne!15618 r!27340))) b!2535522))

(assert (= (and b!2535352 ((_ is Star!7553) (regOne!15618 r!27340))) b!2535523))

(assert (= (and b!2535352 ((_ is Union!7553) (regOne!15618 r!27340))) b!2535524))

(declare-fun b!2535525 () Bool)

(declare-fun e!1603941 () Bool)

(assert (=> b!2535525 (= e!1603941 tp_is_empty!12961)))

(declare-fun b!2535528 () Bool)

(declare-fun tp!810036 () Bool)

(declare-fun tp!810035 () Bool)

(assert (=> b!2535528 (= e!1603941 (and tp!810036 tp!810035))))

(declare-fun b!2535526 () Bool)

(declare-fun tp!810034 () Bool)

(declare-fun tp!810037 () Bool)

(assert (=> b!2535526 (= e!1603941 (and tp!810034 tp!810037))))

(declare-fun b!2535527 () Bool)

(declare-fun tp!810038 () Bool)

(assert (=> b!2535527 (= e!1603941 tp!810038)))

(assert (=> b!2535352 (= tp!810013 e!1603941)))

(assert (= (and b!2535352 ((_ is ElementMatch!7553) (regTwo!15618 r!27340))) b!2535525))

(assert (= (and b!2535352 ((_ is Concat!12249) (regTwo!15618 r!27340))) b!2535526))

(assert (= (and b!2535352 ((_ is Star!7553) (regTwo!15618 r!27340))) b!2535527))

(assert (= (and b!2535352 ((_ is Union!7553) (regTwo!15618 r!27340))) b!2535528))

(declare-fun b!2535529 () Bool)

(declare-fun e!1603942 () Bool)

(assert (=> b!2535529 (= e!1603942 tp_is_empty!12961)))

(declare-fun b!2535532 () Bool)

(declare-fun tp!810041 () Bool)

(declare-fun tp!810040 () Bool)

(assert (=> b!2535532 (= e!1603942 (and tp!810041 tp!810040))))

(declare-fun b!2535530 () Bool)

(declare-fun tp!810039 () Bool)

(declare-fun tp!810042 () Bool)

(assert (=> b!2535530 (= e!1603942 (and tp!810039 tp!810042))))

(declare-fun b!2535531 () Bool)

(declare-fun tp!810043 () Bool)

(assert (=> b!2535531 (= e!1603942 tp!810043)))

(assert (=> b!2535347 (= tp!810014 e!1603942)))

(assert (= (and b!2535347 ((_ is ElementMatch!7553) (reg!7882 r!27340))) b!2535529))

(assert (= (and b!2535347 ((_ is Concat!12249) (reg!7882 r!27340))) b!2535530))

(assert (= (and b!2535347 ((_ is Star!7553) (reg!7882 r!27340))) b!2535531))

(assert (= (and b!2535347 ((_ is Union!7553) (reg!7882 r!27340))) b!2535532))

(declare-fun b!2535537 () Bool)

(declare-fun e!1603945 () Bool)

(declare-fun tp!810046 () Bool)

(assert (=> b!2535537 (= e!1603945 (and tp_is_empty!12961 tp!810046))))

(assert (=> b!2535346 (= tp!810016 e!1603945)))

(assert (= (and b!2535346 ((_ is Cons!29518) (t!211317 tl!4068))) b!2535537))

(declare-fun b!2535538 () Bool)

(declare-fun e!1603946 () Bool)

(assert (=> b!2535538 (= e!1603946 tp_is_empty!12961)))

(declare-fun b!2535541 () Bool)

(declare-fun tp!810049 () Bool)

(declare-fun tp!810048 () Bool)

(assert (=> b!2535541 (= e!1603946 (and tp!810049 tp!810048))))

(declare-fun b!2535539 () Bool)

(declare-fun tp!810047 () Bool)

(declare-fun tp!810050 () Bool)

(assert (=> b!2535539 (= e!1603946 (and tp!810047 tp!810050))))

(declare-fun b!2535540 () Bool)

(declare-fun tp!810051 () Bool)

(assert (=> b!2535540 (= e!1603946 tp!810051)))

(assert (=> b!2535344 (= tp!810015 e!1603946)))

(assert (= (and b!2535344 ((_ is ElementMatch!7553) (regOne!15619 r!27340))) b!2535538))

(assert (= (and b!2535344 ((_ is Concat!12249) (regOne!15619 r!27340))) b!2535539))

(assert (= (and b!2535344 ((_ is Star!7553) (regOne!15619 r!27340))) b!2535540))

(assert (= (and b!2535344 ((_ is Union!7553) (regOne!15619 r!27340))) b!2535541))

(declare-fun b!2535542 () Bool)

(declare-fun e!1603947 () Bool)

(assert (=> b!2535542 (= e!1603947 tp_is_empty!12961)))

(declare-fun b!2535545 () Bool)

(declare-fun tp!810054 () Bool)

(declare-fun tp!810053 () Bool)

(assert (=> b!2535545 (= e!1603947 (and tp!810054 tp!810053))))

(declare-fun b!2535543 () Bool)

(declare-fun tp!810052 () Bool)

(declare-fun tp!810055 () Bool)

(assert (=> b!2535543 (= e!1603947 (and tp!810052 tp!810055))))

(declare-fun b!2535544 () Bool)

(declare-fun tp!810056 () Bool)

(assert (=> b!2535544 (= e!1603947 tp!810056)))

(assert (=> b!2535344 (= tp!810017 e!1603947)))

(assert (= (and b!2535344 ((_ is ElementMatch!7553) (regTwo!15619 r!27340))) b!2535542))

(assert (= (and b!2535344 ((_ is Concat!12249) (regTwo!15619 r!27340))) b!2535543))

(assert (= (and b!2535344 ((_ is Star!7553) (regTwo!15619 r!27340))) b!2535544))

(assert (= (and b!2535344 ((_ is Union!7553) (regTwo!15619 r!27340))) b!2535545))

(check-sat (not b!2535522) (not b!2535527) (not bm!159484) (not bm!159491) (not b!2535545) (not d!720530) (not bm!159457) (not b!2535543) (not b!2535503) (not d!720514) (not bm!159462) (not b!2535541) (not bm!159492) (not d!720518) tp_is_empty!12961 (not bm!159478) (not b!2535400) (not b!2535524) (not b!2535544) (not d!720526) (not b!2535499) (not b!2535479) (not b!2535528) (not d!720528) (not b!2535459) (not b!2535526) (not b!2535539) (not d!720532) (not b!2535540) (not b!2535530) (not b!2535391) (not b!2535429) (not d!720536) (not b!2535523) (not bm!159456) (not bm!159483) (not bm!159477) (not d!720512) (not b!2535491) (not b!2535532) (not bm!159461) (not b!2535537) (not d!720534) (not b!2535531))
(check-sat)
