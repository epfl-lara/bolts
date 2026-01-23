; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739356 () Bool)

(assert start!739356)

(declare-fun b!7760284 () Bool)

(assert (=> b!7760284 true))

(assert (=> b!7760284 true))

(assert (=> b!7760284 true))

(declare-fun b!7760278 () Bool)

(declare-fun e!4599237 () Bool)

(declare-fun tp_is_empty!51737 () Bool)

(declare-fun tp!2278734 () Bool)

(assert (=> b!7760278 (= e!4599237 (and tp_is_empty!51737 tp!2278734))))

(declare-fun b!7760279 () Bool)

(declare-fun e!4599239 () Bool)

(declare-fun tp!2278730 () Bool)

(declare-fun tp!2278728 () Bool)

(assert (=> b!7760279 (= e!4599239 (and tp!2278730 tp!2278728))))

(declare-fun b!7760280 () Bool)

(declare-fun e!4599238 () Bool)

(declare-fun tp!2278731 () Bool)

(assert (=> b!7760280 (= e!4599238 tp!2278731)))

(declare-fun b!7760281 () Bool)

(declare-fun e!4599235 () Bool)

(declare-fun e!4599236 () Bool)

(assert (=> b!7760281 (= e!4599235 e!4599236)))

(declare-fun res!3093799 () Bool)

(assert (=> b!7760281 (=> (not res!3093799) (not e!4599236))))

(declare-datatypes ((C!41708 0))(
  ( (C!41709 (val!31294 Int)) )
))
(declare-datatypes ((List!73534 0))(
  ( (Nil!73410) (Cons!73410 (h!79858 C!41708) (t!388269 List!73534)) )
))
(declare-datatypes ((tuple2!69768 0))(
  ( (tuple2!69769 (_1!38187 List!73534) (_2!38187 List!73534)) )
))
(declare-datatypes ((Option!17678 0))(
  ( (None!17677) (Some!17677 (v!54812 tuple2!69768)) )
))
(declare-fun lt!2670274 () Option!17678)

(declare-fun isDefined!14290 (Option!17678) Bool)

(assert (=> b!7760281 (= res!3093799 (not (isDefined!14290 lt!2670274)))))

(declare-datatypes ((Regex!20691 0))(
  ( (ElementMatch!20691 (c!1430680 C!41708)) (Concat!29536 (regOne!41894 Regex!20691) (regTwo!41894 Regex!20691)) (EmptyExpr!20691) (Star!20691 (reg!21020 Regex!20691)) (EmptyLang!20691) (Union!20691 (regOne!41895 Regex!20691) (regTwo!41895 Regex!20691)) )
))
(declare-fun r1!3330 () Regex!20691)

(declare-fun r2!3230 () Regex!20691)

(declare-fun s!10216 () List!73534)

(declare-fun findConcatSeparation!3708 (Regex!20691 Regex!20691 List!73534 List!73534 List!73534) Option!17678)

(assert (=> b!7760281 (= lt!2670274 (findConcatSeparation!3708 r1!3330 r2!3230 Nil!73410 s!10216 s!10216))))

(declare-fun b!7760282 () Bool)

(declare-fun tp!2278735 () Bool)

(declare-fun tp!2278733 () Bool)

(assert (=> b!7760282 (= e!4599238 (and tp!2278735 tp!2278733))))

(declare-fun b!7760283 () Bool)

(assert (=> b!7760283 (= e!4599238 tp_is_empty!51737)))

(declare-fun res!3093798 () Bool)

(assert (=> b!7760284 (=> (not res!3093798) (not e!4599236))))

(declare-fun lambda!472025 () Int)

(declare-fun Exists!4737 (Int) Bool)

(assert (=> b!7760284 (= res!3093798 (not (Exists!4737 lambda!472025)))))

(declare-fun b!7760285 () Bool)

(assert (=> b!7760285 (= e!4599239 tp_is_empty!51737)))

(declare-fun res!3093796 () Bool)

(assert (=> start!739356 (=> (not res!3093796) (not e!4599235))))

(declare-fun validRegex!11107 (Regex!20691) Bool)

(assert (=> start!739356 (= res!3093796 (validRegex!11107 r1!3330))))

(assert (=> start!739356 e!4599235))

(assert (=> start!739356 e!4599239))

(assert (=> start!739356 e!4599238))

(assert (=> start!739356 e!4599237))

(declare-fun b!7760286 () Bool)

(declare-fun res!3093800 () Bool)

(assert (=> b!7760286 (=> (not res!3093800) (not e!4599236))))

(declare-fun isEmpty!42074 (Option!17678) Bool)

(assert (=> b!7760286 (= res!3093800 (isEmpty!42074 lt!2670274))))

(declare-fun b!7760287 () Bool)

(declare-fun tp!2278732 () Bool)

(declare-fun tp!2278727 () Bool)

(assert (=> b!7760287 (= e!4599239 (and tp!2278732 tp!2278727))))

(declare-fun b!7760288 () Bool)

(declare-fun ++!17866 (List!73534 List!73534) List!73534)

(assert (=> b!7760288 (= e!4599236 (not (= (++!17866 Nil!73410 s!10216) s!10216)))))

(declare-fun b!7760289 () Bool)

(declare-fun tp!2278737 () Bool)

(declare-fun tp!2278729 () Bool)

(assert (=> b!7760289 (= e!4599238 (and tp!2278737 tp!2278729))))

(declare-fun b!7760290 () Bool)

(declare-fun res!3093797 () Bool)

(assert (=> b!7760290 (=> (not res!3093797) (not e!4599235))))

(assert (=> b!7760290 (= res!3093797 (validRegex!11107 r2!3230))))

(declare-fun b!7760291 () Bool)

(declare-fun tp!2278736 () Bool)

(assert (=> b!7760291 (= e!4599239 tp!2278736)))

(assert (= (and start!739356 res!3093796) b!7760290))

(assert (= (and b!7760290 res!3093797) b!7760281))

(assert (= (and b!7760281 res!3093799) b!7760286))

(assert (= (and b!7760286 res!3093800) b!7760284))

(assert (= (and b!7760284 res!3093798) b!7760288))

(get-info :version)

(assert (= (and start!739356 ((_ is ElementMatch!20691) r1!3330)) b!7760285))

(assert (= (and start!739356 ((_ is Concat!29536) r1!3330)) b!7760287))

(assert (= (and start!739356 ((_ is Star!20691) r1!3330)) b!7760291))

(assert (= (and start!739356 ((_ is Union!20691) r1!3330)) b!7760279))

(assert (= (and start!739356 ((_ is ElementMatch!20691) r2!3230)) b!7760283))

(assert (= (and start!739356 ((_ is Concat!29536) r2!3230)) b!7760282))

(assert (= (and start!739356 ((_ is Star!20691) r2!3230)) b!7760280))

(assert (= (and start!739356 ((_ is Union!20691) r2!3230)) b!7760289))

(assert (= (and start!739356 ((_ is Cons!73410) s!10216)) b!7760278))

(declare-fun m!8220448 () Bool)

(assert (=> b!7760286 m!8220448))

(declare-fun m!8220450 () Bool)

(assert (=> start!739356 m!8220450))

(declare-fun m!8220452 () Bool)

(assert (=> b!7760284 m!8220452))

(declare-fun m!8220454 () Bool)

(assert (=> b!7760281 m!8220454))

(declare-fun m!8220456 () Bool)

(assert (=> b!7760281 m!8220456))

(declare-fun m!8220458 () Bool)

(assert (=> b!7760290 m!8220458))

(declare-fun m!8220460 () Bool)

(assert (=> b!7760288 m!8220460))

(check-sat (not b!7760291) (not b!7760289) (not b!7760280) (not b!7760290) (not b!7760282) (not start!739356) (not b!7760281) (not b!7760278) (not b!7760287) tp_is_empty!51737 (not b!7760279) (not b!7760284) (not b!7760286) (not b!7760288))
(check-sat)
(get-model)

(declare-fun d!2343505 () Bool)

(assert (=> d!2343505 (= (isDefined!14290 lt!2670274) (not (isEmpty!42074 lt!2670274)))))

(declare-fun bs!1965941 () Bool)

(assert (= bs!1965941 d!2343505))

(assert (=> bs!1965941 m!8220448))

(assert (=> b!7760281 d!2343505))

(declare-fun b!7760341 () Bool)

(declare-fun e!4599272 () Option!17678)

(declare-fun e!4599273 () Option!17678)

(assert (=> b!7760341 (= e!4599272 e!4599273)))

(declare-fun c!1430691 () Bool)

(assert (=> b!7760341 (= c!1430691 ((_ is Nil!73410) s!10216))))

(declare-fun d!2343507 () Bool)

(declare-fun e!4599275 () Bool)

(assert (=> d!2343507 e!4599275))

(declare-fun res!3093830 () Bool)

(assert (=> d!2343507 (=> res!3093830 e!4599275)))

(declare-fun e!4599271 () Bool)

(assert (=> d!2343507 (= res!3093830 e!4599271)))

(declare-fun res!3093829 () Bool)

(assert (=> d!2343507 (=> (not res!3093829) (not e!4599271))))

(declare-fun lt!2670281 () Option!17678)

(assert (=> d!2343507 (= res!3093829 (isDefined!14290 lt!2670281))))

(assert (=> d!2343507 (= lt!2670281 e!4599272)))

(declare-fun c!1430692 () Bool)

(declare-fun e!4599274 () Bool)

(assert (=> d!2343507 (= c!1430692 e!4599274)))

(declare-fun res!3093826 () Bool)

(assert (=> d!2343507 (=> (not res!3093826) (not e!4599274))))

(declare-fun matchR!10158 (Regex!20691 List!73534) Bool)

(assert (=> d!2343507 (= res!3093826 (matchR!10158 r1!3330 Nil!73410))))

(assert (=> d!2343507 (validRegex!11107 r1!3330)))

(assert (=> d!2343507 (= (findConcatSeparation!3708 r1!3330 r2!3230 Nil!73410 s!10216 s!10216) lt!2670281)))

(declare-fun b!7760342 () Bool)

(declare-fun res!3093827 () Bool)

(assert (=> b!7760342 (=> (not res!3093827) (not e!4599271))))

(declare-fun get!26170 (Option!17678) tuple2!69768)

(assert (=> b!7760342 (= res!3093827 (matchR!10158 r2!3230 (_2!38187 (get!26170 lt!2670281))))))

(declare-fun b!7760343 () Bool)

(assert (=> b!7760343 (= e!4599272 (Some!17677 (tuple2!69769 Nil!73410 s!10216)))))

(declare-fun b!7760344 () Bool)

(assert (=> b!7760344 (= e!4599274 (matchR!10158 r2!3230 s!10216))))

(declare-fun b!7760345 () Bool)

(assert (=> b!7760345 (= e!4599275 (not (isDefined!14290 lt!2670281)))))

(declare-fun b!7760346 () Bool)

(declare-datatypes ((Unit!168378 0))(
  ( (Unit!168379) )
))
(declare-fun lt!2670283 () Unit!168378)

(declare-fun lt!2670282 () Unit!168378)

(assert (=> b!7760346 (= lt!2670283 lt!2670282)))

(assert (=> b!7760346 (= (++!17866 (++!17866 Nil!73410 (Cons!73410 (h!79858 s!10216) Nil!73410)) (t!388269 s!10216)) s!10216)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3355 (List!73534 C!41708 List!73534 List!73534) Unit!168378)

(assert (=> b!7760346 (= lt!2670282 (lemmaMoveElementToOtherListKeepsConcatEq!3355 Nil!73410 (h!79858 s!10216) (t!388269 s!10216) s!10216))))

(assert (=> b!7760346 (= e!4599273 (findConcatSeparation!3708 r1!3330 r2!3230 (++!17866 Nil!73410 (Cons!73410 (h!79858 s!10216) Nil!73410)) (t!388269 s!10216) s!10216))))

(declare-fun b!7760347 () Bool)

(assert (=> b!7760347 (= e!4599271 (= (++!17866 (_1!38187 (get!26170 lt!2670281)) (_2!38187 (get!26170 lt!2670281))) s!10216))))

(declare-fun b!7760348 () Bool)

(declare-fun res!3093828 () Bool)

(assert (=> b!7760348 (=> (not res!3093828) (not e!4599271))))

(assert (=> b!7760348 (= res!3093828 (matchR!10158 r1!3330 (_1!38187 (get!26170 lt!2670281))))))

(declare-fun b!7760349 () Bool)

(assert (=> b!7760349 (= e!4599273 None!17677)))

(assert (= (and d!2343507 res!3093826) b!7760344))

(assert (= (and d!2343507 c!1430692) b!7760343))

(assert (= (and d!2343507 (not c!1430692)) b!7760341))

(assert (= (and b!7760341 c!1430691) b!7760349))

(assert (= (and b!7760341 (not c!1430691)) b!7760346))

(assert (= (and d!2343507 res!3093829) b!7760348))

(assert (= (and b!7760348 res!3093828) b!7760342))

(assert (= (and b!7760342 res!3093827) b!7760347))

(assert (= (and d!2343507 (not res!3093830)) b!7760345))

(declare-fun m!8220470 () Bool)

(assert (=> b!7760347 m!8220470))

(declare-fun m!8220472 () Bool)

(assert (=> b!7760347 m!8220472))

(declare-fun m!8220474 () Bool)

(assert (=> b!7760346 m!8220474))

(assert (=> b!7760346 m!8220474))

(declare-fun m!8220476 () Bool)

(assert (=> b!7760346 m!8220476))

(declare-fun m!8220478 () Bool)

(assert (=> b!7760346 m!8220478))

(assert (=> b!7760346 m!8220474))

(declare-fun m!8220480 () Bool)

(assert (=> b!7760346 m!8220480))

(declare-fun m!8220482 () Bool)

(assert (=> b!7760345 m!8220482))

(assert (=> b!7760348 m!8220470))

(declare-fun m!8220484 () Bool)

(assert (=> b!7760348 m!8220484))

(assert (=> b!7760342 m!8220470))

(declare-fun m!8220486 () Bool)

(assert (=> b!7760342 m!8220486))

(assert (=> d!2343507 m!8220482))

(declare-fun m!8220488 () Bool)

(assert (=> d!2343507 m!8220488))

(assert (=> d!2343507 m!8220450))

(declare-fun m!8220490 () Bool)

(assert (=> b!7760344 m!8220490))

(assert (=> b!7760281 d!2343507))

(declare-fun d!2343515 () Bool)

(assert (=> d!2343515 (= (isEmpty!42074 lt!2670274) (not ((_ is Some!17677) lt!2670274)))))

(assert (=> b!7760286 d!2343515))

(declare-fun d!2343517 () Bool)

(declare-fun choose!59437 (Int) Bool)

(assert (=> d!2343517 (= (Exists!4737 lambda!472025) (choose!59437 lambda!472025))))

(declare-fun bs!1965943 () Bool)

(assert (= bs!1965943 d!2343517))

(declare-fun m!8220492 () Bool)

(assert (=> bs!1965943 m!8220492))

(assert (=> b!7760284 d!2343517))

(declare-fun b!7760389 () Bool)

(declare-fun e!4599308 () Bool)

(declare-fun e!4599307 () Bool)

(assert (=> b!7760389 (= e!4599308 e!4599307)))

(declare-fun c!1430703 () Bool)

(assert (=> b!7760389 (= c!1430703 ((_ is Star!20691) r2!3230))))

(declare-fun b!7760390 () Bool)

(declare-fun e!4599304 () Bool)

(declare-fun call!719124 () Bool)

(assert (=> b!7760390 (= e!4599304 call!719124)))

(declare-fun d!2343519 () Bool)

(declare-fun res!3093856 () Bool)

(assert (=> d!2343519 (=> res!3093856 e!4599308)))

(assert (=> d!2343519 (= res!3093856 ((_ is ElementMatch!20691) r2!3230))))

(assert (=> d!2343519 (= (validRegex!11107 r2!3230) e!4599308)))

(declare-fun b!7760391 () Bool)

(declare-fun res!3093852 () Bool)

(assert (=> b!7760391 (=> (not res!3093852) (not e!4599304))))

(declare-fun call!719123 () Bool)

(assert (=> b!7760391 (= res!3093852 call!719123)))

(declare-fun e!4599306 () Bool)

(assert (=> b!7760391 (= e!4599306 e!4599304)))

(declare-fun b!7760392 () Bool)

(declare-fun e!4599305 () Bool)

(assert (=> b!7760392 (= e!4599307 e!4599305)))

(declare-fun res!3093854 () Bool)

(declare-fun nullable!9104 (Regex!20691) Bool)

(assert (=> b!7760392 (= res!3093854 (not (nullable!9104 (reg!21020 r2!3230))))))

(assert (=> b!7760392 (=> (not res!3093854) (not e!4599305))))

(declare-fun b!7760393 () Bool)

(declare-fun e!4599309 () Bool)

(assert (=> b!7760393 (= e!4599309 call!719124)))

(declare-fun bm!719118 () Bool)

(declare-fun c!1430702 () Bool)

(assert (=> bm!719118 (= call!719124 (validRegex!11107 (ite c!1430702 (regTwo!41895 r2!3230) (regTwo!41894 r2!3230))))))

(declare-fun b!7760394 () Bool)

(declare-fun call!719125 () Bool)

(assert (=> b!7760394 (= e!4599305 call!719125)))

(declare-fun bm!719119 () Bool)

(assert (=> bm!719119 (= call!719125 (validRegex!11107 (ite c!1430703 (reg!21020 r2!3230) (ite c!1430702 (regOne!41895 r2!3230) (regOne!41894 r2!3230)))))))

(declare-fun b!7760395 () Bool)

(declare-fun res!3093855 () Bool)

(declare-fun e!4599303 () Bool)

(assert (=> b!7760395 (=> res!3093855 e!4599303)))

(assert (=> b!7760395 (= res!3093855 (not ((_ is Concat!29536) r2!3230)))))

(assert (=> b!7760395 (= e!4599306 e!4599303)))

(declare-fun b!7760396 () Bool)

(assert (=> b!7760396 (= e!4599303 e!4599309)))

(declare-fun res!3093853 () Bool)

(assert (=> b!7760396 (=> (not res!3093853) (not e!4599309))))

(assert (=> b!7760396 (= res!3093853 call!719123)))

(declare-fun bm!719120 () Bool)

(assert (=> bm!719120 (= call!719123 call!719125)))

(declare-fun b!7760397 () Bool)

(assert (=> b!7760397 (= e!4599307 e!4599306)))

(assert (=> b!7760397 (= c!1430702 ((_ is Union!20691) r2!3230))))

(assert (= (and d!2343519 (not res!3093856)) b!7760389))

(assert (= (and b!7760389 c!1430703) b!7760392))

(assert (= (and b!7760389 (not c!1430703)) b!7760397))

(assert (= (and b!7760392 res!3093854) b!7760394))

(assert (= (and b!7760397 c!1430702) b!7760391))

(assert (= (and b!7760397 (not c!1430702)) b!7760395))

(assert (= (and b!7760391 res!3093852) b!7760390))

(assert (= (and b!7760395 (not res!3093855)) b!7760396))

(assert (= (and b!7760396 res!3093853) b!7760393))

(assert (= (or b!7760391 b!7760396) bm!719120))

(assert (= (or b!7760390 b!7760393) bm!719118))

(assert (= (or b!7760394 bm!719120) bm!719119))

(declare-fun m!8220514 () Bool)

(assert (=> b!7760392 m!8220514))

(declare-fun m!8220516 () Bool)

(assert (=> bm!719118 m!8220516))

(declare-fun m!8220518 () Bool)

(assert (=> bm!719119 m!8220518))

(assert (=> b!7760290 d!2343519))

(declare-fun b!7760398 () Bool)

(declare-fun e!4599315 () Bool)

(declare-fun e!4599314 () Bool)

(assert (=> b!7760398 (= e!4599315 e!4599314)))

(declare-fun c!1430705 () Bool)

(assert (=> b!7760398 (= c!1430705 ((_ is Star!20691) r1!3330))))

(declare-fun b!7760399 () Bool)

(declare-fun e!4599311 () Bool)

(declare-fun call!719127 () Bool)

(assert (=> b!7760399 (= e!4599311 call!719127)))

(declare-fun d!2343527 () Bool)

(declare-fun res!3093861 () Bool)

(assert (=> d!2343527 (=> res!3093861 e!4599315)))

(assert (=> d!2343527 (= res!3093861 ((_ is ElementMatch!20691) r1!3330))))

(assert (=> d!2343527 (= (validRegex!11107 r1!3330) e!4599315)))

(declare-fun b!7760400 () Bool)

(declare-fun res!3093857 () Bool)

(assert (=> b!7760400 (=> (not res!3093857) (not e!4599311))))

(declare-fun call!719126 () Bool)

(assert (=> b!7760400 (= res!3093857 call!719126)))

(declare-fun e!4599313 () Bool)

(assert (=> b!7760400 (= e!4599313 e!4599311)))

(declare-fun b!7760401 () Bool)

(declare-fun e!4599312 () Bool)

(assert (=> b!7760401 (= e!4599314 e!4599312)))

(declare-fun res!3093859 () Bool)

(assert (=> b!7760401 (= res!3093859 (not (nullable!9104 (reg!21020 r1!3330))))))

(assert (=> b!7760401 (=> (not res!3093859) (not e!4599312))))

(declare-fun b!7760402 () Bool)

(declare-fun e!4599316 () Bool)

(assert (=> b!7760402 (= e!4599316 call!719127)))

(declare-fun bm!719121 () Bool)

(declare-fun c!1430704 () Bool)

(assert (=> bm!719121 (= call!719127 (validRegex!11107 (ite c!1430704 (regTwo!41895 r1!3330) (regTwo!41894 r1!3330))))))

(declare-fun b!7760403 () Bool)

(declare-fun call!719128 () Bool)

(assert (=> b!7760403 (= e!4599312 call!719128)))

(declare-fun bm!719122 () Bool)

(assert (=> bm!719122 (= call!719128 (validRegex!11107 (ite c!1430705 (reg!21020 r1!3330) (ite c!1430704 (regOne!41895 r1!3330) (regOne!41894 r1!3330)))))))

(declare-fun b!7760404 () Bool)

(declare-fun res!3093860 () Bool)

(declare-fun e!4599310 () Bool)

(assert (=> b!7760404 (=> res!3093860 e!4599310)))

(assert (=> b!7760404 (= res!3093860 (not ((_ is Concat!29536) r1!3330)))))

(assert (=> b!7760404 (= e!4599313 e!4599310)))

(declare-fun b!7760405 () Bool)

(assert (=> b!7760405 (= e!4599310 e!4599316)))

(declare-fun res!3093858 () Bool)

(assert (=> b!7760405 (=> (not res!3093858) (not e!4599316))))

(assert (=> b!7760405 (= res!3093858 call!719126)))

(declare-fun bm!719123 () Bool)

(assert (=> bm!719123 (= call!719126 call!719128)))

(declare-fun b!7760406 () Bool)

(assert (=> b!7760406 (= e!4599314 e!4599313)))

(assert (=> b!7760406 (= c!1430704 ((_ is Union!20691) r1!3330))))

(assert (= (and d!2343527 (not res!3093861)) b!7760398))

(assert (= (and b!7760398 c!1430705) b!7760401))

(assert (= (and b!7760398 (not c!1430705)) b!7760406))

(assert (= (and b!7760401 res!3093859) b!7760403))

(assert (= (and b!7760406 c!1430704) b!7760400))

(assert (= (and b!7760406 (not c!1430704)) b!7760404))

(assert (= (and b!7760400 res!3093857) b!7760399))

(assert (= (and b!7760404 (not res!3093860)) b!7760405))

(assert (= (and b!7760405 res!3093858) b!7760402))

(assert (= (or b!7760400 b!7760405) bm!719123))

(assert (= (or b!7760399 b!7760402) bm!719121))

(assert (= (or b!7760403 bm!719123) bm!719122))

(declare-fun m!8220520 () Bool)

(assert (=> b!7760401 m!8220520))

(declare-fun m!8220522 () Bool)

(assert (=> bm!719121 m!8220522))

(declare-fun m!8220524 () Bool)

(assert (=> bm!719122 m!8220524))

(assert (=> start!739356 d!2343527))

(declare-fun d!2343529 () Bool)

(declare-fun e!4599322 () Bool)

(assert (=> d!2343529 e!4599322))

(declare-fun res!3093867 () Bool)

(assert (=> d!2343529 (=> (not res!3093867) (not e!4599322))))

(declare-fun lt!2670289 () List!73534)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15573 (List!73534) (InoxSet C!41708))

(assert (=> d!2343529 (= res!3093867 (= (content!15573 lt!2670289) ((_ map or) (content!15573 Nil!73410) (content!15573 s!10216))))))

(declare-fun e!4599321 () List!73534)

(assert (=> d!2343529 (= lt!2670289 e!4599321)))

(declare-fun c!1430708 () Bool)

(assert (=> d!2343529 (= c!1430708 ((_ is Nil!73410) Nil!73410))))

(assert (=> d!2343529 (= (++!17866 Nil!73410 s!10216) lt!2670289)))

(declare-fun b!7760416 () Bool)

(assert (=> b!7760416 (= e!4599321 (Cons!73410 (h!79858 Nil!73410) (++!17866 (t!388269 Nil!73410) s!10216)))))

(declare-fun b!7760415 () Bool)

(assert (=> b!7760415 (= e!4599321 s!10216)))

(declare-fun b!7760418 () Bool)

(assert (=> b!7760418 (= e!4599322 (or (not (= s!10216 Nil!73410)) (= lt!2670289 Nil!73410)))))

(declare-fun b!7760417 () Bool)

(declare-fun res!3093866 () Bool)

(assert (=> b!7760417 (=> (not res!3093866) (not e!4599322))))

(declare-fun size!42676 (List!73534) Int)

(assert (=> b!7760417 (= res!3093866 (= (size!42676 lt!2670289) (+ (size!42676 Nil!73410) (size!42676 s!10216))))))

(assert (= (and d!2343529 c!1430708) b!7760415))

(assert (= (and d!2343529 (not c!1430708)) b!7760416))

(assert (= (and d!2343529 res!3093867) b!7760417))

(assert (= (and b!7760417 res!3093866) b!7760418))

(declare-fun m!8220526 () Bool)

(assert (=> d!2343529 m!8220526))

(declare-fun m!8220528 () Bool)

(assert (=> d!2343529 m!8220528))

(declare-fun m!8220530 () Bool)

(assert (=> d!2343529 m!8220530))

(declare-fun m!8220532 () Bool)

(assert (=> b!7760416 m!8220532))

(declare-fun m!8220534 () Bool)

(assert (=> b!7760417 m!8220534))

(declare-fun m!8220536 () Bool)

(assert (=> b!7760417 m!8220536))

(declare-fun m!8220538 () Bool)

(assert (=> b!7760417 m!8220538))

(assert (=> b!7760288 d!2343529))

(declare-fun e!4599325 () Bool)

(assert (=> b!7760287 (= tp!2278732 e!4599325)))

(declare-fun b!7760429 () Bool)

(assert (=> b!7760429 (= e!4599325 tp_is_empty!51737)))

(declare-fun b!7760430 () Bool)

(declare-fun tp!2278751 () Bool)

(declare-fun tp!2278750 () Bool)

(assert (=> b!7760430 (= e!4599325 (and tp!2278751 tp!2278750))))

(declare-fun b!7760431 () Bool)

(declare-fun tp!2278752 () Bool)

(assert (=> b!7760431 (= e!4599325 tp!2278752)))

(declare-fun b!7760432 () Bool)

(declare-fun tp!2278749 () Bool)

(declare-fun tp!2278748 () Bool)

(assert (=> b!7760432 (= e!4599325 (and tp!2278749 tp!2278748))))

(assert (= (and b!7760287 ((_ is ElementMatch!20691) (regOne!41894 r1!3330))) b!7760429))

(assert (= (and b!7760287 ((_ is Concat!29536) (regOne!41894 r1!3330))) b!7760430))

(assert (= (and b!7760287 ((_ is Star!20691) (regOne!41894 r1!3330))) b!7760431))

(assert (= (and b!7760287 ((_ is Union!20691) (regOne!41894 r1!3330))) b!7760432))

(declare-fun e!4599326 () Bool)

(assert (=> b!7760287 (= tp!2278727 e!4599326)))

(declare-fun b!7760433 () Bool)

(assert (=> b!7760433 (= e!4599326 tp_is_empty!51737)))

(declare-fun b!7760434 () Bool)

(declare-fun tp!2278756 () Bool)

(declare-fun tp!2278755 () Bool)

(assert (=> b!7760434 (= e!4599326 (and tp!2278756 tp!2278755))))

(declare-fun b!7760435 () Bool)

(declare-fun tp!2278757 () Bool)

(assert (=> b!7760435 (= e!4599326 tp!2278757)))

(declare-fun b!7760436 () Bool)

(declare-fun tp!2278754 () Bool)

(declare-fun tp!2278753 () Bool)

(assert (=> b!7760436 (= e!4599326 (and tp!2278754 tp!2278753))))

(assert (= (and b!7760287 ((_ is ElementMatch!20691) (regTwo!41894 r1!3330))) b!7760433))

(assert (= (and b!7760287 ((_ is Concat!29536) (regTwo!41894 r1!3330))) b!7760434))

(assert (= (and b!7760287 ((_ is Star!20691) (regTwo!41894 r1!3330))) b!7760435))

(assert (= (and b!7760287 ((_ is Union!20691) (regTwo!41894 r1!3330))) b!7760436))

(declare-fun e!4599331 () Bool)

(assert (=> b!7760282 (= tp!2278735 e!4599331)))

(declare-fun b!7760441 () Bool)

(assert (=> b!7760441 (= e!4599331 tp_is_empty!51737)))

(declare-fun b!7760442 () Bool)

(declare-fun tp!2278761 () Bool)

(declare-fun tp!2278760 () Bool)

(assert (=> b!7760442 (= e!4599331 (and tp!2278761 tp!2278760))))

(declare-fun b!7760443 () Bool)

(declare-fun tp!2278762 () Bool)

(assert (=> b!7760443 (= e!4599331 tp!2278762)))

(declare-fun b!7760444 () Bool)

(declare-fun tp!2278759 () Bool)

(declare-fun tp!2278758 () Bool)

(assert (=> b!7760444 (= e!4599331 (and tp!2278759 tp!2278758))))

(assert (= (and b!7760282 ((_ is ElementMatch!20691) (regOne!41894 r2!3230))) b!7760441))

(assert (= (and b!7760282 ((_ is Concat!29536) (regOne!41894 r2!3230))) b!7760442))

(assert (= (and b!7760282 ((_ is Star!20691) (regOne!41894 r2!3230))) b!7760443))

(assert (= (and b!7760282 ((_ is Union!20691) (regOne!41894 r2!3230))) b!7760444))

(declare-fun e!4599334 () Bool)

(assert (=> b!7760282 (= tp!2278733 e!4599334)))

(declare-fun b!7760451 () Bool)

(assert (=> b!7760451 (= e!4599334 tp_is_empty!51737)))

(declare-fun b!7760452 () Bool)

(declare-fun tp!2278766 () Bool)

(declare-fun tp!2278765 () Bool)

(assert (=> b!7760452 (= e!4599334 (and tp!2278766 tp!2278765))))

(declare-fun b!7760453 () Bool)

(declare-fun tp!2278767 () Bool)

(assert (=> b!7760453 (= e!4599334 tp!2278767)))

(declare-fun b!7760454 () Bool)

(declare-fun tp!2278764 () Bool)

(declare-fun tp!2278763 () Bool)

(assert (=> b!7760454 (= e!4599334 (and tp!2278764 tp!2278763))))

(assert (= (and b!7760282 ((_ is ElementMatch!20691) (regTwo!41894 r2!3230))) b!7760451))

(assert (= (and b!7760282 ((_ is Concat!29536) (regTwo!41894 r2!3230))) b!7760452))

(assert (= (and b!7760282 ((_ is Star!20691) (regTwo!41894 r2!3230))) b!7760453))

(assert (= (and b!7760282 ((_ is Union!20691) (regTwo!41894 r2!3230))) b!7760454))

(declare-fun e!4599335 () Bool)

(assert (=> b!7760291 (= tp!2278736 e!4599335)))

(declare-fun b!7760455 () Bool)

(assert (=> b!7760455 (= e!4599335 tp_is_empty!51737)))

(declare-fun b!7760456 () Bool)

(declare-fun tp!2278771 () Bool)

(declare-fun tp!2278770 () Bool)

(assert (=> b!7760456 (= e!4599335 (and tp!2278771 tp!2278770))))

(declare-fun b!7760457 () Bool)

(declare-fun tp!2278772 () Bool)

(assert (=> b!7760457 (= e!4599335 tp!2278772)))

(declare-fun b!7760458 () Bool)

(declare-fun tp!2278769 () Bool)

(declare-fun tp!2278768 () Bool)

(assert (=> b!7760458 (= e!4599335 (and tp!2278769 tp!2278768))))

(assert (= (and b!7760291 ((_ is ElementMatch!20691) (reg!21020 r1!3330))) b!7760455))

(assert (= (and b!7760291 ((_ is Concat!29536) (reg!21020 r1!3330))) b!7760456))

(assert (= (and b!7760291 ((_ is Star!20691) (reg!21020 r1!3330))) b!7760457))

(assert (= (and b!7760291 ((_ is Union!20691) (reg!21020 r1!3330))) b!7760458))

(declare-fun e!4599336 () Bool)

(assert (=> b!7760280 (= tp!2278731 e!4599336)))

(declare-fun b!7760459 () Bool)

(assert (=> b!7760459 (= e!4599336 tp_is_empty!51737)))

(declare-fun b!7760460 () Bool)

(declare-fun tp!2278776 () Bool)

(declare-fun tp!2278775 () Bool)

(assert (=> b!7760460 (= e!4599336 (and tp!2278776 tp!2278775))))

(declare-fun b!7760461 () Bool)

(declare-fun tp!2278777 () Bool)

(assert (=> b!7760461 (= e!4599336 tp!2278777)))

(declare-fun b!7760462 () Bool)

(declare-fun tp!2278774 () Bool)

(declare-fun tp!2278773 () Bool)

(assert (=> b!7760462 (= e!4599336 (and tp!2278774 tp!2278773))))

(assert (= (and b!7760280 ((_ is ElementMatch!20691) (reg!21020 r2!3230))) b!7760459))

(assert (= (and b!7760280 ((_ is Concat!29536) (reg!21020 r2!3230))) b!7760460))

(assert (= (and b!7760280 ((_ is Star!20691) (reg!21020 r2!3230))) b!7760461))

(assert (= (and b!7760280 ((_ is Union!20691) (reg!21020 r2!3230))) b!7760462))

(declare-fun e!4599337 () Bool)

(assert (=> b!7760279 (= tp!2278730 e!4599337)))

(declare-fun b!7760463 () Bool)

(assert (=> b!7760463 (= e!4599337 tp_is_empty!51737)))

(declare-fun b!7760464 () Bool)

(declare-fun tp!2278781 () Bool)

(declare-fun tp!2278780 () Bool)

(assert (=> b!7760464 (= e!4599337 (and tp!2278781 tp!2278780))))

(declare-fun b!7760465 () Bool)

(declare-fun tp!2278782 () Bool)

(assert (=> b!7760465 (= e!4599337 tp!2278782)))

(declare-fun b!7760466 () Bool)

(declare-fun tp!2278779 () Bool)

(declare-fun tp!2278778 () Bool)

(assert (=> b!7760466 (= e!4599337 (and tp!2278779 tp!2278778))))

(assert (= (and b!7760279 ((_ is ElementMatch!20691) (regOne!41895 r1!3330))) b!7760463))

(assert (= (and b!7760279 ((_ is Concat!29536) (regOne!41895 r1!3330))) b!7760464))

(assert (= (and b!7760279 ((_ is Star!20691) (regOne!41895 r1!3330))) b!7760465))

(assert (= (and b!7760279 ((_ is Union!20691) (regOne!41895 r1!3330))) b!7760466))

(declare-fun e!4599342 () Bool)

(assert (=> b!7760279 (= tp!2278728 e!4599342)))

(declare-fun b!7760469 () Bool)

(assert (=> b!7760469 (= e!4599342 tp_is_empty!51737)))

(declare-fun b!7760470 () Bool)

(declare-fun tp!2278786 () Bool)

(declare-fun tp!2278785 () Bool)

(assert (=> b!7760470 (= e!4599342 (and tp!2278786 tp!2278785))))

(declare-fun b!7760471 () Bool)

(declare-fun tp!2278787 () Bool)

(assert (=> b!7760471 (= e!4599342 tp!2278787)))

(declare-fun b!7760472 () Bool)

(declare-fun tp!2278784 () Bool)

(declare-fun tp!2278783 () Bool)

(assert (=> b!7760472 (= e!4599342 (and tp!2278784 tp!2278783))))

(assert (= (and b!7760279 ((_ is ElementMatch!20691) (regTwo!41895 r1!3330))) b!7760469))

(assert (= (and b!7760279 ((_ is Concat!29536) (regTwo!41895 r1!3330))) b!7760470))

(assert (= (and b!7760279 ((_ is Star!20691) (regTwo!41895 r1!3330))) b!7760471))

(assert (= (and b!7760279 ((_ is Union!20691) (regTwo!41895 r1!3330))) b!7760472))

(declare-fun e!4599343 () Bool)

(assert (=> b!7760289 (= tp!2278737 e!4599343)))

(declare-fun b!7760479 () Bool)

(assert (=> b!7760479 (= e!4599343 tp_is_empty!51737)))

(declare-fun b!7760480 () Bool)

(declare-fun tp!2278791 () Bool)

(declare-fun tp!2278790 () Bool)

(assert (=> b!7760480 (= e!4599343 (and tp!2278791 tp!2278790))))

(declare-fun b!7760481 () Bool)

(declare-fun tp!2278792 () Bool)

(assert (=> b!7760481 (= e!4599343 tp!2278792)))

(declare-fun b!7760482 () Bool)

(declare-fun tp!2278789 () Bool)

(declare-fun tp!2278788 () Bool)

(assert (=> b!7760482 (= e!4599343 (and tp!2278789 tp!2278788))))

(assert (= (and b!7760289 ((_ is ElementMatch!20691) (regOne!41895 r2!3230))) b!7760479))

(assert (= (and b!7760289 ((_ is Concat!29536) (regOne!41895 r2!3230))) b!7760480))

(assert (= (and b!7760289 ((_ is Star!20691) (regOne!41895 r2!3230))) b!7760481))

(assert (= (and b!7760289 ((_ is Union!20691) (regOne!41895 r2!3230))) b!7760482))

(declare-fun e!4599344 () Bool)

(assert (=> b!7760289 (= tp!2278729 e!4599344)))

(declare-fun b!7760483 () Bool)

(assert (=> b!7760483 (= e!4599344 tp_is_empty!51737)))

(declare-fun b!7760484 () Bool)

(declare-fun tp!2278796 () Bool)

(declare-fun tp!2278795 () Bool)

(assert (=> b!7760484 (= e!4599344 (and tp!2278796 tp!2278795))))

(declare-fun b!7760485 () Bool)

(declare-fun tp!2278797 () Bool)

(assert (=> b!7760485 (= e!4599344 tp!2278797)))

(declare-fun b!7760486 () Bool)

(declare-fun tp!2278794 () Bool)

(declare-fun tp!2278793 () Bool)

(assert (=> b!7760486 (= e!4599344 (and tp!2278794 tp!2278793))))

(assert (= (and b!7760289 ((_ is ElementMatch!20691) (regTwo!41895 r2!3230))) b!7760483))

(assert (= (and b!7760289 ((_ is Concat!29536) (regTwo!41895 r2!3230))) b!7760484))

(assert (= (and b!7760289 ((_ is Star!20691) (regTwo!41895 r2!3230))) b!7760485))

(assert (= (and b!7760289 ((_ is Union!20691) (regTwo!41895 r2!3230))) b!7760486))

(declare-fun b!7760491 () Bool)

(declare-fun e!4599347 () Bool)

(declare-fun tp!2278800 () Bool)

(assert (=> b!7760491 (= e!4599347 (and tp_is_empty!51737 tp!2278800))))

(assert (=> b!7760278 (= tp!2278734 e!4599347)))

(assert (= (and b!7760278 ((_ is Cons!73410) (t!388269 s!10216))) b!7760491))

(check-sat (not b!7760472) (not b!7760466) (not b!7760416) (not b!7760453) (not b!7760454) (not b!7760480) (not b!7760434) (not d!2343507) (not b!7760401) (not b!7760430) (not b!7760431) (not bm!719121) (not b!7760347) (not b!7760465) (not b!7760417) (not b!7760443) (not b!7760436) (not b!7760460) (not b!7760392) (not b!7760456) (not b!7760484) (not b!7760452) (not b!7760444) (not b!7760464) (not bm!719122) (not b!7760458) (not d!2343517) (not b!7760345) (not b!7760432) (not b!7760470) (not b!7760348) tp_is_empty!51737 (not b!7760471) (not b!7760457) (not b!7760344) (not b!7760346) (not b!7760486) (not b!7760342) (not b!7760435) (not d!2343505) (not b!7760442) (not b!7760462) (not d!2343529) (not b!7760482) (not b!7760491) (not b!7760481) (not b!7760461) (not b!7760485) (not bm!719119) (not bm!719118))
(check-sat)
