; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!245364 () Bool)

(assert start!245364)

(declare-fun b!2516364 () Bool)

(declare-fun e!1594131 () Bool)

(declare-fun tp!804214 () Bool)

(declare-fun tp!804216 () Bool)

(assert (=> b!2516364 (= e!1594131 (and tp!804214 tp!804216))))

(declare-fun b!2516365 () Bool)

(declare-fun e!1594129 () Bool)

(declare-datatypes ((C!15136 0))(
  ( (C!15137 (val!9220 Int)) )
))
(declare-datatypes ((Regex!7489 0))(
  ( (ElementMatch!7489 (c!401087 C!15136)) (Concat!12185 (regOne!15490 Regex!7489) (regTwo!15490 Regex!7489)) (EmptyExpr!7489) (Star!7489 (reg!7818 Regex!7489)) (EmptyLang!7489) (Union!7489 (regOne!15491 Regex!7489) (regTwo!15491 Regex!7489)) )
))
(declare-fun r!27340 () Regex!7489)

(declare-fun lt!898984 () Regex!7489)

(get-info :version)

(assert (=> b!2516365 (= e!1594129 (and (not ((_ is EmptyExpr!7489) r!27340)) ((_ is EmptyLang!7489) r!27340) (not (= lt!898984 EmptyLang!7489))))))

(declare-fun b!2516366 () Bool)

(declare-fun e!1594130 () Bool)

(declare-fun tp_is_empty!12833 () Bool)

(declare-fun tp!804215 () Bool)

(assert (=> b!2516366 (= e!1594130 (and tp_is_empty!12833 tp!804215))))

(declare-fun res!1063695 () Bool)

(declare-fun e!1594132 () Bool)

(assert (=> start!245364 (=> (not res!1063695) (not e!1594132))))

(declare-fun validRegex!3115 (Regex!7489) Bool)

(assert (=> start!245364 (= res!1063695 (validRegex!3115 r!27340))))

(assert (=> start!245364 e!1594132))

(assert (=> start!245364 e!1594131))

(assert (=> start!245364 tp_is_empty!12833))

(assert (=> start!245364 e!1594130))

(declare-fun b!2516367 () Bool)

(assert (=> b!2516367 (= e!1594132 e!1594129)))

(declare-fun res!1063696 () Bool)

(assert (=> b!2516367 (=> (not res!1063696) (not e!1594129))))

(declare-datatypes ((List!29554 0))(
  ( (Nil!29454) (Cons!29454 (h!34874 C!15136) (t!211253 List!29554)) )
))
(declare-fun tl!4068 () List!29554)

(declare-fun nullable!2406 (Regex!7489) Bool)

(declare-fun derivative!184 (Regex!7489 List!29554) Regex!7489)

(assert (=> b!2516367 (= res!1063696 (nullable!2406 (derivative!184 lt!898984 tl!4068)))))

(declare-fun c!14016 () C!15136)

(declare-fun derivativeStep!2058 (Regex!7489 C!15136) Regex!7489)

(assert (=> b!2516367 (= lt!898984 (derivativeStep!2058 r!27340 c!14016))))

(declare-fun b!2516368 () Bool)

(assert (=> b!2516368 (= e!1594131 tp_is_empty!12833)))

(declare-fun b!2516369 () Bool)

(declare-fun tp!804217 () Bool)

(assert (=> b!2516369 (= e!1594131 tp!804217)))

(declare-fun b!2516370 () Bool)

(declare-fun tp!804218 () Bool)

(declare-fun tp!804213 () Bool)

(assert (=> b!2516370 (= e!1594131 (and tp!804218 tp!804213))))

(assert (= (and start!245364 res!1063695) b!2516367))

(assert (= (and b!2516367 res!1063696) b!2516365))

(assert (= (and start!245364 ((_ is ElementMatch!7489) r!27340)) b!2516368))

(assert (= (and start!245364 ((_ is Concat!12185) r!27340)) b!2516364))

(assert (= (and start!245364 ((_ is Star!7489) r!27340)) b!2516369))

(assert (= (and start!245364 ((_ is Union!7489) r!27340)) b!2516370))

(assert (= (and start!245364 ((_ is Cons!29454) tl!4068)) b!2516366))

(declare-fun m!2873273 () Bool)

(assert (=> start!245364 m!2873273))

(declare-fun m!2873275 () Bool)

(assert (=> b!2516367 m!2873275))

(assert (=> b!2516367 m!2873275))

(declare-fun m!2873277 () Bool)

(assert (=> b!2516367 m!2873277))

(declare-fun m!2873279 () Bool)

(assert (=> b!2516367 m!2873279))

(check-sat (not b!2516369) (not b!2516370) (not b!2516366) (not start!245364) (not b!2516367) (not b!2516364) tp_is_empty!12833)
(check-sat)
(get-model)

(declare-fun b!2516393 () Bool)

(declare-fun e!1594154 () Bool)

(declare-fun call!156389 () Bool)

(assert (=> b!2516393 (= e!1594154 call!156389)))

(declare-fun b!2516394 () Bool)

(declare-fun e!1594155 () Bool)

(assert (=> b!2516394 (= e!1594155 e!1594154)))

(declare-fun res!1063708 () Bool)

(assert (=> b!2516394 (= res!1063708 (not (nullable!2406 (reg!7818 r!27340))))))

(assert (=> b!2516394 (=> (not res!1063708) (not e!1594154))))

(declare-fun b!2516395 () Bool)

(declare-fun e!1594152 () Bool)

(assert (=> b!2516395 (= e!1594152 e!1594155)))

(declare-fun c!401094 () Bool)

(assert (=> b!2516395 (= c!401094 ((_ is Star!7489) r!27340))))

(declare-fun d!717390 () Bool)

(declare-fun res!1063710 () Bool)

(assert (=> d!717390 (=> res!1063710 e!1594152)))

(assert (=> d!717390 (= res!1063710 ((_ is ElementMatch!7489) r!27340))))

(assert (=> d!717390 (= (validRegex!3115 r!27340) e!1594152)))

(declare-fun b!2516396 () Bool)

(declare-fun e!1594153 () Bool)

(assert (=> b!2516396 (= e!1594155 e!1594153)))

(declare-fun c!401095 () Bool)

(assert (=> b!2516396 (= c!401095 ((_ is Union!7489) r!27340))))

(declare-fun b!2516397 () Bool)

(declare-fun res!1063711 () Bool)

(declare-fun e!1594151 () Bool)

(assert (=> b!2516397 (=> (not res!1063711) (not e!1594151))))

(declare-fun call!156390 () Bool)

(assert (=> b!2516397 (= res!1063711 call!156390)))

(assert (=> b!2516397 (= e!1594153 e!1594151)))

(declare-fun b!2516398 () Bool)

(declare-fun call!156388 () Bool)

(assert (=> b!2516398 (= e!1594151 call!156388)))

(declare-fun b!2516399 () Bool)

(declare-fun e!1594150 () Bool)

(assert (=> b!2516399 (= e!1594150 call!156390)))

(declare-fun b!2516400 () Bool)

(declare-fun res!1063707 () Bool)

(declare-fun e!1594149 () Bool)

(assert (=> b!2516400 (=> res!1063707 e!1594149)))

(assert (=> b!2516400 (= res!1063707 (not ((_ is Concat!12185) r!27340)))))

(assert (=> b!2516400 (= e!1594153 e!1594149)))

(declare-fun bm!156383 () Bool)

(assert (=> bm!156383 (= call!156388 (validRegex!3115 (ite c!401095 (regTwo!15491 r!27340) (regOne!15490 r!27340))))))

(declare-fun b!2516401 () Bool)

(assert (=> b!2516401 (= e!1594149 e!1594150)))

(declare-fun res!1063709 () Bool)

(assert (=> b!2516401 (=> (not res!1063709) (not e!1594150))))

(assert (=> b!2516401 (= res!1063709 call!156388)))

(declare-fun bm!156384 () Bool)

(assert (=> bm!156384 (= call!156389 (validRegex!3115 (ite c!401094 (reg!7818 r!27340) (ite c!401095 (regOne!15491 r!27340) (regTwo!15490 r!27340)))))))

(declare-fun bm!156385 () Bool)

(assert (=> bm!156385 (= call!156390 call!156389)))

(assert (= (and d!717390 (not res!1063710)) b!2516395))

(assert (= (and b!2516395 c!401094) b!2516394))

(assert (= (and b!2516395 (not c!401094)) b!2516396))

(assert (= (and b!2516394 res!1063708) b!2516393))

(assert (= (and b!2516396 c!401095) b!2516397))

(assert (= (and b!2516396 (not c!401095)) b!2516400))

(assert (= (and b!2516397 res!1063711) b!2516398))

(assert (= (and b!2516400 (not res!1063707)) b!2516401))

(assert (= (and b!2516401 res!1063709) b!2516399))

(assert (= (or b!2516397 b!2516399) bm!156385))

(assert (= (or b!2516398 b!2516401) bm!156383))

(assert (= (or b!2516393 bm!156385) bm!156384))

(declare-fun m!2873283 () Bool)

(assert (=> b!2516394 m!2873283))

(declare-fun m!2873285 () Bool)

(assert (=> bm!156383 m!2873285))

(declare-fun m!2873287 () Bool)

(assert (=> bm!156384 m!2873287))

(assert (=> start!245364 d!717390))

(declare-fun d!717396 () Bool)

(declare-fun nullableFct!647 (Regex!7489) Bool)

(assert (=> d!717396 (= (nullable!2406 (derivative!184 lt!898984 tl!4068)) (nullableFct!647 (derivative!184 lt!898984 tl!4068)))))

(declare-fun bs!468901 () Bool)

(assert (= bs!468901 d!717396))

(assert (=> bs!468901 m!2873275))

(declare-fun m!2873289 () Bool)

(assert (=> bs!468901 m!2873289))

(assert (=> b!2516367 d!717396))

(declare-fun d!717398 () Bool)

(declare-fun lt!898990 () Regex!7489)

(assert (=> d!717398 (validRegex!3115 lt!898990)))

(declare-fun e!1594159 () Regex!7489)

(assert (=> d!717398 (= lt!898990 e!1594159)))

(declare-fun c!401099 () Bool)

(assert (=> d!717398 (= c!401099 ((_ is Cons!29454) tl!4068))))

(assert (=> d!717398 (validRegex!3115 lt!898984)))

(assert (=> d!717398 (= (derivative!184 lt!898984 tl!4068) lt!898990)))

(declare-fun b!2516408 () Bool)

(assert (=> b!2516408 (= e!1594159 (derivative!184 (derivativeStep!2058 lt!898984 (h!34874 tl!4068)) (t!211253 tl!4068)))))

(declare-fun b!2516409 () Bool)

(assert (=> b!2516409 (= e!1594159 lt!898984)))

(assert (= (and d!717398 c!401099) b!2516408))

(assert (= (and d!717398 (not c!401099)) b!2516409))

(declare-fun m!2873299 () Bool)

(assert (=> d!717398 m!2873299))

(declare-fun m!2873301 () Bool)

(assert (=> d!717398 m!2873301))

(declare-fun m!2873303 () Bool)

(assert (=> b!2516408 m!2873303))

(assert (=> b!2516408 m!2873303))

(declare-fun m!2873305 () Bool)

(assert (=> b!2516408 m!2873305))

(assert (=> b!2516367 d!717398))

(declare-fun b!2516450 () Bool)

(declare-fun c!401121 () Bool)

(assert (=> b!2516450 (= c!401121 ((_ is Union!7489) r!27340))))

(declare-fun e!1594181 () Regex!7489)

(declare-fun e!1594180 () Regex!7489)

(assert (=> b!2516450 (= e!1594181 e!1594180)))

(declare-fun b!2516451 () Bool)

(declare-fun e!1594184 () Regex!7489)

(assert (=> b!2516451 (= e!1594180 e!1594184)))

(declare-fun c!401123 () Bool)

(assert (=> b!2516451 (= c!401123 ((_ is Star!7489) r!27340))))

(declare-fun call!156404 () Regex!7489)

(declare-fun call!156402 () Regex!7489)

(declare-fun e!1594182 () Regex!7489)

(declare-fun b!2516452 () Bool)

(assert (=> b!2516452 (= e!1594182 (Union!7489 (Concat!12185 call!156402 (regTwo!15490 r!27340)) call!156404))))

(declare-fun b!2516453 () Bool)

(assert (=> b!2516453 (= e!1594181 (ite (= c!14016 (c!401087 r!27340)) EmptyExpr!7489 EmptyLang!7489))))

(declare-fun b!2516454 () Bool)

(assert (=> b!2516454 (= e!1594182 (Union!7489 (Concat!12185 call!156402 (regTwo!15490 r!27340)) EmptyLang!7489))))

(declare-fun b!2516455 () Bool)

(declare-fun c!401120 () Bool)

(assert (=> b!2516455 (= c!401120 (nullable!2406 (regOne!15490 r!27340)))))

(assert (=> b!2516455 (= e!1594184 e!1594182)))

(declare-fun b!2516456 () Bool)

(declare-fun e!1594183 () Regex!7489)

(assert (=> b!2516456 (= e!1594183 EmptyLang!7489)))

(declare-fun bm!156396 () Bool)

(declare-fun call!156403 () Regex!7489)

(assert (=> bm!156396 (= call!156402 call!156403)))

(declare-fun d!717402 () Bool)

(declare-fun lt!898995 () Regex!7489)

(assert (=> d!717402 (validRegex!3115 lt!898995)))

(assert (=> d!717402 (= lt!898995 e!1594183)))

(declare-fun c!401124 () Bool)

(assert (=> d!717402 (= c!401124 (or ((_ is EmptyExpr!7489) r!27340) ((_ is EmptyLang!7489) r!27340)))))

(assert (=> d!717402 (validRegex!3115 r!27340)))

(assert (=> d!717402 (= (derivativeStep!2058 r!27340 c!14016) lt!898995)))

(declare-fun bm!156397 () Bool)

(assert (=> bm!156397 (= call!156404 (derivativeStep!2058 (ite c!401121 (regOne!15491 r!27340) (regTwo!15490 r!27340)) c!14016))))

(declare-fun b!2516457 () Bool)

(assert (=> b!2516457 (= e!1594183 e!1594181)))

(declare-fun c!401122 () Bool)

(assert (=> b!2516457 (= c!401122 ((_ is ElementMatch!7489) r!27340))))

(declare-fun call!156401 () Regex!7489)

(declare-fun bm!156398 () Bool)

(assert (=> bm!156398 (= call!156401 (derivativeStep!2058 (ite c!401121 (regTwo!15491 r!27340) (ite c!401123 (reg!7818 r!27340) (regOne!15490 r!27340))) c!14016))))

(declare-fun b!2516458 () Bool)

(assert (=> b!2516458 (= e!1594184 (Concat!12185 call!156403 r!27340))))

(declare-fun b!2516459 () Bool)

(assert (=> b!2516459 (= e!1594180 (Union!7489 call!156404 call!156401))))

(declare-fun bm!156399 () Bool)

(assert (=> bm!156399 (= call!156403 call!156401)))

(assert (= (and d!717402 c!401124) b!2516456))

(assert (= (and d!717402 (not c!401124)) b!2516457))

(assert (= (and b!2516457 c!401122) b!2516453))

(assert (= (and b!2516457 (not c!401122)) b!2516450))

(assert (= (and b!2516450 c!401121) b!2516459))

(assert (= (and b!2516450 (not c!401121)) b!2516451))

(assert (= (and b!2516451 c!401123) b!2516458))

(assert (= (and b!2516451 (not c!401123)) b!2516455))

(assert (= (and b!2516455 c!401120) b!2516452))

(assert (= (and b!2516455 (not c!401120)) b!2516454))

(assert (= (or b!2516452 b!2516454) bm!156396))

(assert (= (or b!2516458 bm!156396) bm!156399))

(assert (= (or b!2516459 bm!156399) bm!156398))

(assert (= (or b!2516459 b!2516452) bm!156397))

(declare-fun m!2873307 () Bool)

(assert (=> b!2516455 m!2873307))

(declare-fun m!2873309 () Bool)

(assert (=> d!717402 m!2873309))

(assert (=> d!717402 m!2873273))

(declare-fun m!2873311 () Bool)

(assert (=> bm!156397 m!2873311))

(declare-fun m!2873313 () Bool)

(assert (=> bm!156398 m!2873313))

(assert (=> b!2516367 d!717402))

(declare-fun b!2516471 () Bool)

(declare-fun e!1594187 () Bool)

(declare-fun tp!804229 () Bool)

(declare-fun tp!804232 () Bool)

(assert (=> b!2516471 (= e!1594187 (and tp!804229 tp!804232))))

(declare-fun b!2516472 () Bool)

(declare-fun tp!804233 () Bool)

(assert (=> b!2516472 (= e!1594187 tp!804233)))

(declare-fun b!2516470 () Bool)

(assert (=> b!2516470 (= e!1594187 tp_is_empty!12833)))

(declare-fun b!2516473 () Bool)

(declare-fun tp!804231 () Bool)

(declare-fun tp!804230 () Bool)

(assert (=> b!2516473 (= e!1594187 (and tp!804231 tp!804230))))

(assert (=> b!2516369 (= tp!804217 e!1594187)))

(assert (= (and b!2516369 ((_ is ElementMatch!7489) (reg!7818 r!27340))) b!2516470))

(assert (= (and b!2516369 ((_ is Concat!12185) (reg!7818 r!27340))) b!2516471))

(assert (= (and b!2516369 ((_ is Star!7489) (reg!7818 r!27340))) b!2516472))

(assert (= (and b!2516369 ((_ is Union!7489) (reg!7818 r!27340))) b!2516473))

(declare-fun b!2516475 () Bool)

(declare-fun e!1594188 () Bool)

(declare-fun tp!804234 () Bool)

(declare-fun tp!804237 () Bool)

(assert (=> b!2516475 (= e!1594188 (and tp!804234 tp!804237))))

(declare-fun b!2516476 () Bool)

(declare-fun tp!804238 () Bool)

(assert (=> b!2516476 (= e!1594188 tp!804238)))

(declare-fun b!2516474 () Bool)

(assert (=> b!2516474 (= e!1594188 tp_is_empty!12833)))

(declare-fun b!2516477 () Bool)

(declare-fun tp!804236 () Bool)

(declare-fun tp!804235 () Bool)

(assert (=> b!2516477 (= e!1594188 (and tp!804236 tp!804235))))

(assert (=> b!2516364 (= tp!804214 e!1594188)))

(assert (= (and b!2516364 ((_ is ElementMatch!7489) (regOne!15490 r!27340))) b!2516474))

(assert (= (and b!2516364 ((_ is Concat!12185) (regOne!15490 r!27340))) b!2516475))

(assert (= (and b!2516364 ((_ is Star!7489) (regOne!15490 r!27340))) b!2516476))

(assert (= (and b!2516364 ((_ is Union!7489) (regOne!15490 r!27340))) b!2516477))

(declare-fun b!2516479 () Bool)

(declare-fun e!1594189 () Bool)

(declare-fun tp!804239 () Bool)

(declare-fun tp!804242 () Bool)

(assert (=> b!2516479 (= e!1594189 (and tp!804239 tp!804242))))

(declare-fun b!2516480 () Bool)

(declare-fun tp!804243 () Bool)

(assert (=> b!2516480 (= e!1594189 tp!804243)))

(declare-fun b!2516478 () Bool)

(assert (=> b!2516478 (= e!1594189 tp_is_empty!12833)))

(declare-fun b!2516481 () Bool)

(declare-fun tp!804241 () Bool)

(declare-fun tp!804240 () Bool)

(assert (=> b!2516481 (= e!1594189 (and tp!804241 tp!804240))))

(assert (=> b!2516364 (= tp!804216 e!1594189)))

(assert (= (and b!2516364 ((_ is ElementMatch!7489) (regTwo!15490 r!27340))) b!2516478))

(assert (= (and b!2516364 ((_ is Concat!12185) (regTwo!15490 r!27340))) b!2516479))

(assert (= (and b!2516364 ((_ is Star!7489) (regTwo!15490 r!27340))) b!2516480))

(assert (= (and b!2516364 ((_ is Union!7489) (regTwo!15490 r!27340))) b!2516481))

(declare-fun b!2516483 () Bool)

(declare-fun e!1594190 () Bool)

(declare-fun tp!804244 () Bool)

(declare-fun tp!804247 () Bool)

(assert (=> b!2516483 (= e!1594190 (and tp!804244 tp!804247))))

(declare-fun b!2516484 () Bool)

(declare-fun tp!804248 () Bool)

(assert (=> b!2516484 (= e!1594190 tp!804248)))

(declare-fun b!2516482 () Bool)

(assert (=> b!2516482 (= e!1594190 tp_is_empty!12833)))

(declare-fun b!2516485 () Bool)

(declare-fun tp!804246 () Bool)

(declare-fun tp!804245 () Bool)

(assert (=> b!2516485 (= e!1594190 (and tp!804246 tp!804245))))

(assert (=> b!2516370 (= tp!804218 e!1594190)))

(assert (= (and b!2516370 ((_ is ElementMatch!7489) (regOne!15491 r!27340))) b!2516482))

(assert (= (and b!2516370 ((_ is Concat!12185) (regOne!15491 r!27340))) b!2516483))

(assert (= (and b!2516370 ((_ is Star!7489) (regOne!15491 r!27340))) b!2516484))

(assert (= (and b!2516370 ((_ is Union!7489) (regOne!15491 r!27340))) b!2516485))

(declare-fun b!2516487 () Bool)

(declare-fun e!1594191 () Bool)

(declare-fun tp!804249 () Bool)

(declare-fun tp!804252 () Bool)

(assert (=> b!2516487 (= e!1594191 (and tp!804249 tp!804252))))

(declare-fun b!2516488 () Bool)

(declare-fun tp!804253 () Bool)

(assert (=> b!2516488 (= e!1594191 tp!804253)))

(declare-fun b!2516486 () Bool)

(assert (=> b!2516486 (= e!1594191 tp_is_empty!12833)))

(declare-fun b!2516489 () Bool)

(declare-fun tp!804251 () Bool)

(declare-fun tp!804250 () Bool)

(assert (=> b!2516489 (= e!1594191 (and tp!804251 tp!804250))))

(assert (=> b!2516370 (= tp!804213 e!1594191)))

(assert (= (and b!2516370 ((_ is ElementMatch!7489) (regTwo!15491 r!27340))) b!2516486))

(assert (= (and b!2516370 ((_ is Concat!12185) (regTwo!15491 r!27340))) b!2516487))

(assert (= (and b!2516370 ((_ is Star!7489) (regTwo!15491 r!27340))) b!2516488))

(assert (= (and b!2516370 ((_ is Union!7489) (regTwo!15491 r!27340))) b!2516489))

(declare-fun b!2516494 () Bool)

(declare-fun e!1594194 () Bool)

(declare-fun tp!804256 () Bool)

(assert (=> b!2516494 (= e!1594194 (and tp_is_empty!12833 tp!804256))))

(assert (=> b!2516366 (= tp!804215 e!1594194)))

(assert (= (and b!2516366 ((_ is Cons!29454) (t!211253 tl!4068))) b!2516494))

(check-sat (not b!2516488) (not b!2516485) (not b!2516476) (not d!717402) (not b!2516408) (not bm!156383) (not b!2516394) (not d!717396) (not d!717398) (not b!2516487) tp_is_empty!12833 (not b!2516475) (not bm!156398) (not b!2516481) (not b!2516480) (not b!2516473) (not b!2516472) (not b!2516479) (not b!2516489) (not b!2516471) (not b!2516494) (not bm!156384) (not b!2516483) (not b!2516477) (not b!2516455) (not b!2516484) (not bm!156397))
(check-sat)
