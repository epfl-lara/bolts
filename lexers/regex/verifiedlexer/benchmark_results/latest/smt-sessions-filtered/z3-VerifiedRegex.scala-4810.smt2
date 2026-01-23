; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!247336 () Bool)

(assert start!247336)

(declare-fun b!2549416 () Bool)

(declare-fun res!1074060 () Bool)

(declare-fun e!1611185 () Bool)

(assert (=> b!2549416 (=> (not res!1074060) (not e!1611185))))

(declare-datatypes ((C!15348 0))(
  ( (C!15349 (val!9326 Int)) )
))
(declare-datatypes ((List!29660 0))(
  ( (Nil!29560) (Cons!29560 (h!34980 C!15348) (t!211359 List!29660)) )
))
(declare-fun tl!4068 () List!29660)

(declare-datatypes ((Regex!7595 0))(
  ( (ElementMatch!7595 (c!408629 C!15348)) (Concat!12291 (regOne!15702 Regex!7595) (regTwo!15702 Regex!7595)) (EmptyExpr!7595) (Star!7595 (reg!7924 Regex!7595)) (EmptyLang!7595) (Union!7595 (regOne!15703 Regex!7595) (regTwo!15703 Regex!7595)) )
))
(declare-fun r!27340 () Regex!7595)

(declare-fun c!14016 () C!15348)

(declare-fun nullable!2512 (Regex!7595) Bool)

(declare-fun derivative!290 (Regex!7595 List!29660) Regex!7595)

(declare-fun derivativeStep!2164 (Regex!7595 C!15348) Regex!7595)

(assert (=> b!2549416 (= res!1074060 (nullable!2512 (derivative!290 (derivativeStep!2164 r!27340 c!14016) tl!4068)))))

(declare-fun b!2549417 () Bool)

(declare-fun e!1611186 () Bool)

(declare-fun tp!813400 () Bool)

(assert (=> b!2549417 (= e!1611186 tp!813400)))

(declare-fun b!2549418 () Bool)

(declare-fun tp_is_empty!13045 () Bool)

(assert (=> b!2549418 (= e!1611186 tp_is_empty!13045)))

(declare-fun b!2549419 () Bool)

(declare-fun validRegex!3221 (Regex!7595) Bool)

(assert (=> b!2549419 (= e!1611185 (not (validRegex!3221 (Union!7595 (Concat!12291 (derivativeStep!2164 (regOne!15702 r!27340) c!14016) (regTwo!15702 r!27340)) (derivativeStep!2164 (regTwo!15702 r!27340) c!14016)))))))

(declare-fun b!2549420 () Bool)

(declare-fun tp!813398 () Bool)

(declare-fun tp!813401 () Bool)

(assert (=> b!2549420 (= e!1611186 (and tp!813398 tp!813401))))

(declare-fun b!2549421 () Bool)

(declare-fun tp!813402 () Bool)

(declare-fun tp!813397 () Bool)

(assert (=> b!2549421 (= e!1611186 (and tp!813402 tp!813397))))

(declare-fun b!2549422 () Bool)

(declare-fun e!1611184 () Bool)

(declare-fun tp!813399 () Bool)

(assert (=> b!2549422 (= e!1611184 (and tp_is_empty!13045 tp!813399))))

(declare-fun res!1074062 () Bool)

(assert (=> start!247336 (=> (not res!1074062) (not e!1611185))))

(assert (=> start!247336 (= res!1074062 (validRegex!3221 r!27340))))

(assert (=> start!247336 e!1611185))

(assert (=> start!247336 e!1611186))

(assert (=> start!247336 tp_is_empty!13045))

(assert (=> start!247336 e!1611184))

(declare-fun b!2549423 () Bool)

(declare-fun res!1074061 () Bool)

(assert (=> b!2549423 (=> (not res!1074061) (not e!1611185))))

(get-info :version)

(assert (=> b!2549423 (= res!1074061 (and (not ((_ is EmptyExpr!7595) r!27340)) (not ((_ is EmptyLang!7595) r!27340)) (not ((_ is ElementMatch!7595) r!27340)) (not ((_ is Union!7595) r!27340)) (not ((_ is Star!7595) r!27340))))))

(declare-fun b!2549424 () Bool)

(declare-fun res!1074059 () Bool)

(assert (=> b!2549424 (=> (not res!1074059) (not e!1611185))))

(assert (=> b!2549424 (= res!1074059 (nullable!2512 (regOne!15702 r!27340)))))

(assert (= (and start!247336 res!1074062) b!2549416))

(assert (= (and b!2549416 res!1074060) b!2549423))

(assert (= (and b!2549423 res!1074061) b!2549424))

(assert (= (and b!2549424 res!1074059) b!2549419))

(assert (= (and start!247336 ((_ is ElementMatch!7595) r!27340)) b!2549418))

(assert (= (and start!247336 ((_ is Concat!12291) r!27340)) b!2549421))

(assert (= (and start!247336 ((_ is Star!7595) r!27340)) b!2549417))

(assert (= (and start!247336 ((_ is Union!7595) r!27340)) b!2549420))

(assert (= (and start!247336 ((_ is Cons!29560) tl!4068)) b!2549422))

(declare-fun m!2893309 () Bool)

(assert (=> b!2549416 m!2893309))

(assert (=> b!2549416 m!2893309))

(declare-fun m!2893311 () Bool)

(assert (=> b!2549416 m!2893311))

(assert (=> b!2549416 m!2893311))

(declare-fun m!2893313 () Bool)

(assert (=> b!2549416 m!2893313))

(declare-fun m!2893315 () Bool)

(assert (=> b!2549419 m!2893315))

(declare-fun m!2893317 () Bool)

(assert (=> b!2549419 m!2893317))

(declare-fun m!2893319 () Bool)

(assert (=> b!2549419 m!2893319))

(declare-fun m!2893321 () Bool)

(assert (=> start!247336 m!2893321))

(declare-fun m!2893323 () Bool)

(assert (=> b!2549424 m!2893323))

(check-sat (not b!2549419) (not b!2549417) (not b!2549422) (not b!2549416) tp_is_empty!13045 (not b!2549424) (not start!247336) (not b!2549421) (not b!2549420))
(check-sat)
(get-model)

(declare-fun d!723085 () Bool)

(declare-fun nullableFct!736 (Regex!7595) Bool)

(assert (=> d!723085 (= (nullable!2512 (derivative!290 (derivativeStep!2164 r!27340 c!14016) tl!4068)) (nullableFct!736 (derivative!290 (derivativeStep!2164 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469588 () Bool)

(assert (= bs!469588 d!723085))

(assert (=> bs!469588 m!2893311))

(declare-fun m!2893325 () Bool)

(assert (=> bs!469588 m!2893325))

(assert (=> b!2549416 d!723085))

(declare-fun d!723087 () Bool)

(declare-fun lt!903221 () Regex!7595)

(assert (=> d!723087 (validRegex!3221 lt!903221)))

(declare-fun e!1611203 () Regex!7595)

(assert (=> d!723087 (= lt!903221 e!1611203)))

(declare-fun c!408636 () Bool)

(assert (=> d!723087 (= c!408636 ((_ is Cons!29560) tl!4068))))

(assert (=> d!723087 (validRegex!3221 (derivativeStep!2164 r!27340 c!14016))))

(assert (=> d!723087 (= (derivative!290 (derivativeStep!2164 r!27340 c!14016) tl!4068) lt!903221)))

(declare-fun b!2549447 () Bool)

(assert (=> b!2549447 (= e!1611203 (derivative!290 (derivativeStep!2164 (derivativeStep!2164 r!27340 c!14016) (h!34980 tl!4068)) (t!211359 tl!4068)))))

(declare-fun b!2549448 () Bool)

(assert (=> b!2549448 (= e!1611203 (derivativeStep!2164 r!27340 c!14016))))

(assert (= (and d!723087 c!408636) b!2549447))

(assert (= (and d!723087 (not c!408636)) b!2549448))

(declare-fun m!2893327 () Bool)

(assert (=> d!723087 m!2893327))

(assert (=> d!723087 m!2893309))

(declare-fun m!2893329 () Bool)

(assert (=> d!723087 m!2893329))

(assert (=> b!2549447 m!2893309))

(declare-fun m!2893331 () Bool)

(assert (=> b!2549447 m!2893331))

(assert (=> b!2549447 m!2893331))

(declare-fun m!2893333 () Bool)

(assert (=> b!2549447 m!2893333))

(assert (=> b!2549416 d!723087))

(declare-fun call!162058 () Regex!7595)

(declare-fun bm!162052 () Bool)

(declare-fun c!408664 () Bool)

(declare-fun c!408662 () Bool)

(assert (=> bm!162052 (= call!162058 (derivativeStep!2164 (ite c!408662 (regTwo!15703 r!27340) (ite c!408664 (reg!7924 r!27340) (regOne!15702 r!27340))) c!14016))))

(declare-fun b!2549504 () Bool)

(declare-fun e!1611236 () Regex!7595)

(declare-fun call!162059 () Regex!7595)

(assert (=> b!2549504 (= e!1611236 (Union!7595 (Concat!12291 call!162059 (regTwo!15702 r!27340)) EmptyLang!7595))))

(declare-fun bm!162053 () Bool)

(declare-fun call!162060 () Regex!7595)

(assert (=> bm!162053 (= call!162059 call!162060)))

(declare-fun b!2549505 () Bool)

(declare-fun e!1611234 () Regex!7595)

(declare-fun e!1611238 () Regex!7595)

(assert (=> b!2549505 (= e!1611234 e!1611238)))

(assert (=> b!2549505 (= c!408664 ((_ is Star!7595) r!27340))))

(declare-fun bm!162054 () Bool)

(declare-fun call!162057 () Regex!7595)

(assert (=> bm!162054 (= call!162057 (derivativeStep!2164 (ite c!408662 (regOne!15703 r!27340) (regTwo!15702 r!27340)) c!14016))))

(declare-fun d!723089 () Bool)

(declare-fun lt!903229 () Regex!7595)

(assert (=> d!723089 (validRegex!3221 lt!903229)))

(declare-fun e!1611235 () Regex!7595)

(assert (=> d!723089 (= lt!903229 e!1611235)))

(declare-fun c!408665 () Bool)

(assert (=> d!723089 (= c!408665 (or ((_ is EmptyExpr!7595) r!27340) ((_ is EmptyLang!7595) r!27340)))))

(assert (=> d!723089 (validRegex!3221 r!27340)))

(assert (=> d!723089 (= (derivativeStep!2164 r!27340 c!14016) lt!903229)))

(declare-fun bm!162055 () Bool)

(assert (=> bm!162055 (= call!162060 call!162058)))

(declare-fun b!2549506 () Bool)

(assert (=> b!2549506 (= e!1611235 EmptyLang!7595)))

(declare-fun b!2549507 () Bool)

(declare-fun e!1611237 () Regex!7595)

(assert (=> b!2549507 (= e!1611237 (ite (= c!14016 (c!408629 r!27340)) EmptyExpr!7595 EmptyLang!7595))))

(declare-fun b!2549508 () Bool)

(assert (=> b!2549508 (= c!408662 ((_ is Union!7595) r!27340))))

(assert (=> b!2549508 (= e!1611237 e!1611234)))

(declare-fun b!2549509 () Bool)

(assert (=> b!2549509 (= e!1611234 (Union!7595 call!162057 call!162058))))

(declare-fun b!2549510 () Bool)

(declare-fun c!408666 () Bool)

(assert (=> b!2549510 (= c!408666 (nullable!2512 (regOne!15702 r!27340)))))

(assert (=> b!2549510 (= e!1611238 e!1611236)))

(declare-fun b!2549511 () Bool)

(assert (=> b!2549511 (= e!1611235 e!1611237)))

(declare-fun c!408663 () Bool)

(assert (=> b!2549511 (= c!408663 ((_ is ElementMatch!7595) r!27340))))

(declare-fun b!2549512 () Bool)

(assert (=> b!2549512 (= e!1611238 (Concat!12291 call!162060 r!27340))))

(declare-fun b!2549513 () Bool)

(assert (=> b!2549513 (= e!1611236 (Union!7595 (Concat!12291 call!162059 (regTwo!15702 r!27340)) call!162057))))

(assert (= (and d!723089 c!408665) b!2549506))

(assert (= (and d!723089 (not c!408665)) b!2549511))

(assert (= (and b!2549511 c!408663) b!2549507))

(assert (= (and b!2549511 (not c!408663)) b!2549508))

(assert (= (and b!2549508 c!408662) b!2549509))

(assert (= (and b!2549508 (not c!408662)) b!2549505))

(assert (= (and b!2549505 c!408664) b!2549512))

(assert (= (and b!2549505 (not c!408664)) b!2549510))

(assert (= (and b!2549510 c!408666) b!2549513))

(assert (= (and b!2549510 (not c!408666)) b!2549504))

(assert (= (or b!2549513 b!2549504) bm!162053))

(assert (= (or b!2549512 bm!162053) bm!162055))

(assert (= (or b!2549509 bm!162055) bm!162052))

(assert (= (or b!2549509 b!2549513) bm!162054))

(declare-fun m!2893351 () Bool)

(assert (=> bm!162052 m!2893351))

(declare-fun m!2893353 () Bool)

(assert (=> bm!162054 m!2893353))

(declare-fun m!2893355 () Bool)

(assert (=> d!723089 m!2893355))

(assert (=> d!723089 m!2893321))

(assert (=> b!2549510 m!2893323))

(assert (=> b!2549416 d!723089))

(declare-fun b!2549551 () Bool)

(declare-fun res!1074094 () Bool)

(declare-fun e!1611271 () Bool)

(assert (=> b!2549551 (=> res!1074094 e!1611271)))

(assert (=> b!2549551 (= res!1074094 (not ((_ is Concat!12291) r!27340)))))

(declare-fun e!1611269 () Bool)

(assert (=> b!2549551 (= e!1611269 e!1611271)))

(declare-fun bm!162075 () Bool)

(declare-fun call!162081 () Bool)

(declare-fun call!162080 () Bool)

(assert (=> bm!162075 (= call!162081 call!162080)))

(declare-fun b!2549552 () Bool)

(declare-fun e!1611267 () Bool)

(assert (=> b!2549552 (= e!1611267 e!1611269)))

(declare-fun c!408679 () Bool)

(assert (=> b!2549552 (= c!408679 ((_ is Union!7595) r!27340))))

(declare-fun b!2549554 () Bool)

(declare-fun e!1611268 () Bool)

(assert (=> b!2549554 (= e!1611268 e!1611267)))

(declare-fun c!408678 () Bool)

(assert (=> b!2549554 (= c!408678 ((_ is Star!7595) r!27340))))

(declare-fun bm!162076 () Bool)

(declare-fun call!162082 () Bool)

(assert (=> bm!162076 (= call!162082 (validRegex!3221 (ite c!408679 (regTwo!15703 r!27340) (regOne!15702 r!27340))))))

(declare-fun b!2549555 () Bool)

(declare-fun e!1611270 () Bool)

(assert (=> b!2549555 (= e!1611270 call!162080)))

(declare-fun b!2549556 () Bool)

(declare-fun e!1611266 () Bool)

(assert (=> b!2549556 (= e!1611266 call!162082)))

(declare-fun b!2549553 () Bool)

(assert (=> b!2549553 (= e!1611267 e!1611270)))

(declare-fun res!1074095 () Bool)

(assert (=> b!2549553 (= res!1074095 (not (nullable!2512 (reg!7924 r!27340))))))

(assert (=> b!2549553 (=> (not res!1074095) (not e!1611270))))

(declare-fun d!723097 () Bool)

(declare-fun res!1074097 () Bool)

(assert (=> d!723097 (=> res!1074097 e!1611268)))

(assert (=> d!723097 (= res!1074097 ((_ is ElementMatch!7595) r!27340))))

(assert (=> d!723097 (= (validRegex!3221 r!27340) e!1611268)))

(declare-fun b!2549557 () Bool)

(declare-fun res!1074093 () Bool)

(assert (=> b!2549557 (=> (not res!1074093) (not e!1611266))))

(assert (=> b!2549557 (= res!1074093 call!162081)))

(assert (=> b!2549557 (= e!1611269 e!1611266)))

(declare-fun bm!162077 () Bool)

(assert (=> bm!162077 (= call!162080 (validRegex!3221 (ite c!408678 (reg!7924 r!27340) (ite c!408679 (regOne!15703 r!27340) (regTwo!15702 r!27340)))))))

(declare-fun b!2549558 () Bool)

(declare-fun e!1611265 () Bool)

(assert (=> b!2549558 (= e!1611265 call!162081)))

(declare-fun b!2549559 () Bool)

(assert (=> b!2549559 (= e!1611271 e!1611265)))

(declare-fun res!1074096 () Bool)

(assert (=> b!2549559 (=> (not res!1074096) (not e!1611265))))

(assert (=> b!2549559 (= res!1074096 call!162082)))

(assert (= (and d!723097 (not res!1074097)) b!2549554))

(assert (= (and b!2549554 c!408678) b!2549553))

(assert (= (and b!2549554 (not c!408678)) b!2549552))

(assert (= (and b!2549553 res!1074095) b!2549555))

(assert (= (and b!2549552 c!408679) b!2549557))

(assert (= (and b!2549552 (not c!408679)) b!2549551))

(assert (= (and b!2549557 res!1074093) b!2549556))

(assert (= (and b!2549551 (not res!1074094)) b!2549559))

(assert (= (and b!2549559 res!1074096) b!2549558))

(assert (= (or b!2549557 b!2549558) bm!162075))

(assert (= (or b!2549556 b!2549559) bm!162076))

(assert (= (or b!2549555 bm!162075) bm!162077))

(declare-fun m!2893371 () Bool)

(assert (=> bm!162076 m!2893371))

(declare-fun m!2893373 () Bool)

(assert (=> b!2549553 m!2893373))

(declare-fun m!2893375 () Bool)

(assert (=> bm!162077 m!2893375))

(assert (=> start!247336 d!723097))

(declare-fun b!2549570 () Bool)

(declare-fun res!1074099 () Bool)

(declare-fun e!1611283 () Bool)

(assert (=> b!2549570 (=> res!1074099 e!1611283)))

(assert (=> b!2549570 (= res!1074099 (not ((_ is Concat!12291) (Union!7595 (Concat!12291 (derivativeStep!2164 (regOne!15702 r!27340) c!14016) (regTwo!15702 r!27340)) (derivativeStep!2164 (regTwo!15702 r!27340) c!14016)))))))

(declare-fun e!1611281 () Bool)

(assert (=> b!2549570 (= e!1611281 e!1611283)))

(declare-fun bm!162082 () Bool)

(declare-fun call!162088 () Bool)

(declare-fun call!162087 () Bool)

(assert (=> bm!162082 (= call!162088 call!162087)))

(declare-fun b!2549571 () Bool)

(declare-fun e!1611279 () Bool)

(assert (=> b!2549571 (= e!1611279 e!1611281)))

(declare-fun c!408686 () Bool)

(assert (=> b!2549571 (= c!408686 ((_ is Union!7595) (Union!7595 (Concat!12291 (derivativeStep!2164 (regOne!15702 r!27340) c!14016) (regTwo!15702 r!27340)) (derivativeStep!2164 (regTwo!15702 r!27340) c!14016))))))

(declare-fun b!2549573 () Bool)

(declare-fun e!1611280 () Bool)

(assert (=> b!2549573 (= e!1611280 e!1611279)))

(declare-fun c!408685 () Bool)

(assert (=> b!2549573 (= c!408685 ((_ is Star!7595) (Union!7595 (Concat!12291 (derivativeStep!2164 (regOne!15702 r!27340) c!14016) (regTwo!15702 r!27340)) (derivativeStep!2164 (regTwo!15702 r!27340) c!14016))))))

(declare-fun bm!162083 () Bool)

(declare-fun call!162089 () Bool)

(assert (=> bm!162083 (= call!162089 (validRegex!3221 (ite c!408686 (regTwo!15703 (Union!7595 (Concat!12291 (derivativeStep!2164 (regOne!15702 r!27340) c!14016) (regTwo!15702 r!27340)) (derivativeStep!2164 (regTwo!15702 r!27340) c!14016))) (regOne!15702 (Union!7595 (Concat!12291 (derivativeStep!2164 (regOne!15702 r!27340) c!14016) (regTwo!15702 r!27340)) (derivativeStep!2164 (regTwo!15702 r!27340) c!14016))))))))

(declare-fun b!2549574 () Bool)

(declare-fun e!1611282 () Bool)

(assert (=> b!2549574 (= e!1611282 call!162087)))

(declare-fun b!2549575 () Bool)

(declare-fun e!1611278 () Bool)

(assert (=> b!2549575 (= e!1611278 call!162089)))

(declare-fun b!2549572 () Bool)

(assert (=> b!2549572 (= e!1611279 e!1611282)))

(declare-fun res!1074100 () Bool)

(assert (=> b!2549572 (= res!1074100 (not (nullable!2512 (reg!7924 (Union!7595 (Concat!12291 (derivativeStep!2164 (regOne!15702 r!27340) c!14016) (regTwo!15702 r!27340)) (derivativeStep!2164 (regTwo!15702 r!27340) c!14016))))))))

(assert (=> b!2549572 (=> (not res!1074100) (not e!1611282))))

(declare-fun d!723105 () Bool)

(declare-fun res!1074102 () Bool)

(assert (=> d!723105 (=> res!1074102 e!1611280)))

(assert (=> d!723105 (= res!1074102 ((_ is ElementMatch!7595) (Union!7595 (Concat!12291 (derivativeStep!2164 (regOne!15702 r!27340) c!14016) (regTwo!15702 r!27340)) (derivativeStep!2164 (regTwo!15702 r!27340) c!14016))))))

(assert (=> d!723105 (= (validRegex!3221 (Union!7595 (Concat!12291 (derivativeStep!2164 (regOne!15702 r!27340) c!14016) (regTwo!15702 r!27340)) (derivativeStep!2164 (regTwo!15702 r!27340) c!14016))) e!1611280)))

(declare-fun b!2549576 () Bool)

(declare-fun res!1074098 () Bool)

(assert (=> b!2549576 (=> (not res!1074098) (not e!1611278))))

(assert (=> b!2549576 (= res!1074098 call!162088)))

(assert (=> b!2549576 (= e!1611281 e!1611278)))

(declare-fun bm!162084 () Bool)

(assert (=> bm!162084 (= call!162087 (validRegex!3221 (ite c!408685 (reg!7924 (Union!7595 (Concat!12291 (derivativeStep!2164 (regOne!15702 r!27340) c!14016) (regTwo!15702 r!27340)) (derivativeStep!2164 (regTwo!15702 r!27340) c!14016))) (ite c!408686 (regOne!15703 (Union!7595 (Concat!12291 (derivativeStep!2164 (regOne!15702 r!27340) c!14016) (regTwo!15702 r!27340)) (derivativeStep!2164 (regTwo!15702 r!27340) c!14016))) (regTwo!15702 (Union!7595 (Concat!12291 (derivativeStep!2164 (regOne!15702 r!27340) c!14016) (regTwo!15702 r!27340)) (derivativeStep!2164 (regTwo!15702 r!27340) c!14016)))))))))

(declare-fun b!2549577 () Bool)

(declare-fun e!1611277 () Bool)

(assert (=> b!2549577 (= e!1611277 call!162088)))

(declare-fun b!2549578 () Bool)

(assert (=> b!2549578 (= e!1611283 e!1611277)))

(declare-fun res!1074101 () Bool)

(assert (=> b!2549578 (=> (not res!1074101) (not e!1611277))))

(assert (=> b!2549578 (= res!1074101 call!162089)))

(assert (= (and d!723105 (not res!1074102)) b!2549573))

(assert (= (and b!2549573 c!408685) b!2549572))

(assert (= (and b!2549573 (not c!408685)) b!2549571))

(assert (= (and b!2549572 res!1074100) b!2549574))

(assert (= (and b!2549571 c!408686) b!2549576))

(assert (= (and b!2549571 (not c!408686)) b!2549570))

(assert (= (and b!2549576 res!1074098) b!2549575))

(assert (= (and b!2549570 (not res!1074099)) b!2549578))

(assert (= (and b!2549578 res!1074101) b!2549577))

(assert (= (or b!2549576 b!2549577) bm!162082))

(assert (= (or b!2549575 b!2549578) bm!162083))

(assert (= (or b!2549574 bm!162082) bm!162084))

(declare-fun m!2893389 () Bool)

(assert (=> bm!162083 m!2893389))

(declare-fun m!2893395 () Bool)

(assert (=> b!2549572 m!2893395))

(declare-fun m!2893401 () Bool)

(assert (=> bm!162084 m!2893401))

(assert (=> b!2549419 d!723105))

(declare-fun call!162095 () Regex!7595)

(declare-fun c!408694 () Bool)

(declare-fun bm!162089 () Bool)

(declare-fun c!408692 () Bool)

(assert (=> bm!162089 (= call!162095 (derivativeStep!2164 (ite c!408692 (regTwo!15703 (regOne!15702 r!27340)) (ite c!408694 (reg!7924 (regOne!15702 r!27340)) (regOne!15702 (regOne!15702 r!27340)))) c!14016))))

(declare-fun b!2549593 () Bool)

(declare-fun e!1611293 () Regex!7595)

(declare-fun call!162096 () Regex!7595)

(assert (=> b!2549593 (= e!1611293 (Union!7595 (Concat!12291 call!162096 (regTwo!15702 (regOne!15702 r!27340))) EmptyLang!7595))))

(declare-fun bm!162090 () Bool)

(declare-fun call!162097 () Regex!7595)

(assert (=> bm!162090 (= call!162096 call!162097)))

(declare-fun b!2549594 () Bool)

(declare-fun e!1611291 () Regex!7595)

(declare-fun e!1611295 () Regex!7595)

(assert (=> b!2549594 (= e!1611291 e!1611295)))

(assert (=> b!2549594 (= c!408694 ((_ is Star!7595) (regOne!15702 r!27340)))))

(declare-fun call!162094 () Regex!7595)

(declare-fun bm!162091 () Bool)

(assert (=> bm!162091 (= call!162094 (derivativeStep!2164 (ite c!408692 (regOne!15703 (regOne!15702 r!27340)) (regTwo!15702 (regOne!15702 r!27340))) c!14016))))

(declare-fun d!723109 () Bool)

(declare-fun lt!903233 () Regex!7595)

(assert (=> d!723109 (validRegex!3221 lt!903233)))

(declare-fun e!1611292 () Regex!7595)

(assert (=> d!723109 (= lt!903233 e!1611292)))

(declare-fun c!408695 () Bool)

(assert (=> d!723109 (= c!408695 (or ((_ is EmptyExpr!7595) (regOne!15702 r!27340)) ((_ is EmptyLang!7595) (regOne!15702 r!27340))))))

(assert (=> d!723109 (validRegex!3221 (regOne!15702 r!27340))))

(assert (=> d!723109 (= (derivativeStep!2164 (regOne!15702 r!27340) c!14016) lt!903233)))

(declare-fun bm!162092 () Bool)

(assert (=> bm!162092 (= call!162097 call!162095)))

(declare-fun b!2549595 () Bool)

(assert (=> b!2549595 (= e!1611292 EmptyLang!7595)))

(declare-fun b!2549596 () Bool)

(declare-fun e!1611294 () Regex!7595)

(assert (=> b!2549596 (= e!1611294 (ite (= c!14016 (c!408629 (regOne!15702 r!27340))) EmptyExpr!7595 EmptyLang!7595))))

(declare-fun b!2549597 () Bool)

(assert (=> b!2549597 (= c!408692 ((_ is Union!7595) (regOne!15702 r!27340)))))

(assert (=> b!2549597 (= e!1611294 e!1611291)))

(declare-fun b!2549598 () Bool)

(assert (=> b!2549598 (= e!1611291 (Union!7595 call!162094 call!162095))))

(declare-fun b!2549599 () Bool)

(declare-fun c!408696 () Bool)

(assert (=> b!2549599 (= c!408696 (nullable!2512 (regOne!15702 (regOne!15702 r!27340))))))

(assert (=> b!2549599 (= e!1611295 e!1611293)))

(declare-fun b!2549600 () Bool)

(assert (=> b!2549600 (= e!1611292 e!1611294)))

(declare-fun c!408693 () Bool)

(assert (=> b!2549600 (= c!408693 ((_ is ElementMatch!7595) (regOne!15702 r!27340)))))

(declare-fun b!2549601 () Bool)

(assert (=> b!2549601 (= e!1611295 (Concat!12291 call!162097 (regOne!15702 r!27340)))))

(declare-fun b!2549602 () Bool)

(assert (=> b!2549602 (= e!1611293 (Union!7595 (Concat!12291 call!162096 (regTwo!15702 (regOne!15702 r!27340))) call!162094))))

(assert (= (and d!723109 c!408695) b!2549595))

(assert (= (and d!723109 (not c!408695)) b!2549600))

(assert (= (and b!2549600 c!408693) b!2549596))

(assert (= (and b!2549600 (not c!408693)) b!2549597))

(assert (= (and b!2549597 c!408692) b!2549598))

(assert (= (and b!2549597 (not c!408692)) b!2549594))

(assert (= (and b!2549594 c!408694) b!2549601))

(assert (= (and b!2549594 (not c!408694)) b!2549599))

(assert (= (and b!2549599 c!408696) b!2549602))

(assert (= (and b!2549599 (not c!408696)) b!2549593))

(assert (= (or b!2549602 b!2549593) bm!162090))

(assert (= (or b!2549601 bm!162090) bm!162092))

(assert (= (or b!2549598 bm!162092) bm!162089))

(assert (= (or b!2549598 b!2549602) bm!162091))

(declare-fun m!2893403 () Bool)

(assert (=> bm!162089 m!2893403))

(declare-fun m!2893405 () Bool)

(assert (=> bm!162091 m!2893405))

(declare-fun m!2893407 () Bool)

(assert (=> d!723109 m!2893407))

(declare-fun m!2893409 () Bool)

(assert (=> d!723109 m!2893409))

(declare-fun m!2893411 () Bool)

(assert (=> b!2549599 m!2893411))

(assert (=> b!2549419 d!723109))

(declare-fun call!162099 () Regex!7595)

(declare-fun c!408697 () Bool)

(declare-fun bm!162093 () Bool)

(declare-fun c!408699 () Bool)

(assert (=> bm!162093 (= call!162099 (derivativeStep!2164 (ite c!408697 (regTwo!15703 (regTwo!15702 r!27340)) (ite c!408699 (reg!7924 (regTwo!15702 r!27340)) (regOne!15702 (regTwo!15702 r!27340)))) c!14016))))

(declare-fun b!2549614 () Bool)

(declare-fun e!1611301 () Regex!7595)

(declare-fun call!162100 () Regex!7595)

(assert (=> b!2549614 (= e!1611301 (Union!7595 (Concat!12291 call!162100 (regTwo!15702 (regTwo!15702 r!27340))) EmptyLang!7595))))

(declare-fun bm!162094 () Bool)

(declare-fun call!162101 () Regex!7595)

(assert (=> bm!162094 (= call!162100 call!162101)))

(declare-fun b!2549615 () Bool)

(declare-fun e!1611299 () Regex!7595)

(declare-fun e!1611303 () Regex!7595)

(assert (=> b!2549615 (= e!1611299 e!1611303)))

(assert (=> b!2549615 (= c!408699 ((_ is Star!7595) (regTwo!15702 r!27340)))))

(declare-fun bm!162095 () Bool)

(declare-fun call!162098 () Regex!7595)

(assert (=> bm!162095 (= call!162098 (derivativeStep!2164 (ite c!408697 (regOne!15703 (regTwo!15702 r!27340)) (regTwo!15702 (regTwo!15702 r!27340))) c!14016))))

(declare-fun d!723111 () Bool)

(declare-fun lt!903234 () Regex!7595)

(assert (=> d!723111 (validRegex!3221 lt!903234)))

(declare-fun e!1611300 () Regex!7595)

(assert (=> d!723111 (= lt!903234 e!1611300)))

(declare-fun c!408700 () Bool)

(assert (=> d!723111 (= c!408700 (or ((_ is EmptyExpr!7595) (regTwo!15702 r!27340)) ((_ is EmptyLang!7595) (regTwo!15702 r!27340))))))

(assert (=> d!723111 (validRegex!3221 (regTwo!15702 r!27340))))

(assert (=> d!723111 (= (derivativeStep!2164 (regTwo!15702 r!27340) c!14016) lt!903234)))

(declare-fun bm!162096 () Bool)

(assert (=> bm!162096 (= call!162101 call!162099)))

(declare-fun b!2549616 () Bool)

(assert (=> b!2549616 (= e!1611300 EmptyLang!7595)))

(declare-fun b!2549617 () Bool)

(declare-fun e!1611302 () Regex!7595)

(assert (=> b!2549617 (= e!1611302 (ite (= c!14016 (c!408629 (regTwo!15702 r!27340))) EmptyExpr!7595 EmptyLang!7595))))

(declare-fun b!2549618 () Bool)

(assert (=> b!2549618 (= c!408697 ((_ is Union!7595) (regTwo!15702 r!27340)))))

(assert (=> b!2549618 (= e!1611302 e!1611299)))

(declare-fun b!2549619 () Bool)

(assert (=> b!2549619 (= e!1611299 (Union!7595 call!162098 call!162099))))

(declare-fun b!2549620 () Bool)

(declare-fun c!408701 () Bool)

(assert (=> b!2549620 (= c!408701 (nullable!2512 (regOne!15702 (regTwo!15702 r!27340))))))

(assert (=> b!2549620 (= e!1611303 e!1611301)))

(declare-fun b!2549621 () Bool)

(assert (=> b!2549621 (= e!1611300 e!1611302)))

(declare-fun c!408698 () Bool)

(assert (=> b!2549621 (= c!408698 ((_ is ElementMatch!7595) (regTwo!15702 r!27340)))))

(declare-fun b!2549622 () Bool)

(assert (=> b!2549622 (= e!1611303 (Concat!12291 call!162101 (regTwo!15702 r!27340)))))

(declare-fun b!2549623 () Bool)

(assert (=> b!2549623 (= e!1611301 (Union!7595 (Concat!12291 call!162100 (regTwo!15702 (regTwo!15702 r!27340))) call!162098))))

(assert (= (and d!723111 c!408700) b!2549616))

(assert (= (and d!723111 (not c!408700)) b!2549621))

(assert (= (and b!2549621 c!408698) b!2549617))

(assert (= (and b!2549621 (not c!408698)) b!2549618))

(assert (= (and b!2549618 c!408697) b!2549619))

(assert (= (and b!2549618 (not c!408697)) b!2549615))

(assert (= (and b!2549615 c!408699) b!2549622))

(assert (= (and b!2549615 (not c!408699)) b!2549620))

(assert (= (and b!2549620 c!408701) b!2549623))

(assert (= (and b!2549620 (not c!408701)) b!2549614))

(assert (= (or b!2549623 b!2549614) bm!162094))

(assert (= (or b!2549622 bm!162094) bm!162096))

(assert (= (or b!2549619 bm!162096) bm!162093))

(assert (= (or b!2549619 b!2549623) bm!162095))

(declare-fun m!2893413 () Bool)

(assert (=> bm!162093 m!2893413))

(declare-fun m!2893415 () Bool)

(assert (=> bm!162095 m!2893415))

(declare-fun m!2893417 () Bool)

(assert (=> d!723111 m!2893417))

(declare-fun m!2893419 () Bool)

(assert (=> d!723111 m!2893419))

(declare-fun m!2893421 () Bool)

(assert (=> b!2549620 m!2893421))

(assert (=> b!2549419 d!723111))

(declare-fun d!723113 () Bool)

(assert (=> d!723113 (= (nullable!2512 (regOne!15702 r!27340)) (nullableFct!736 (regOne!15702 r!27340)))))

(declare-fun bs!469591 () Bool)

(assert (= bs!469591 d!723113))

(declare-fun m!2893423 () Bool)

(assert (=> bs!469591 m!2893423))

(assert (=> b!2549424 d!723113))

(declare-fun b!2549657 () Bool)

(declare-fun e!1611311 () Bool)

(declare-fun tp!813451 () Bool)

(declare-fun tp!813454 () Bool)

(assert (=> b!2549657 (= e!1611311 (and tp!813451 tp!813454))))

(declare-fun b!2549655 () Bool)

(declare-fun tp!813453 () Bool)

(declare-fun tp!813455 () Bool)

(assert (=> b!2549655 (= e!1611311 (and tp!813453 tp!813455))))

(assert (=> b!2549417 (= tp!813400 e!1611311)))

(declare-fun b!2549654 () Bool)

(assert (=> b!2549654 (= e!1611311 tp_is_empty!13045)))

(declare-fun b!2549656 () Bool)

(declare-fun tp!813452 () Bool)

(assert (=> b!2549656 (= e!1611311 tp!813452)))

(assert (= (and b!2549417 ((_ is ElementMatch!7595) (reg!7924 r!27340))) b!2549654))

(assert (= (and b!2549417 ((_ is Concat!12291) (reg!7924 r!27340))) b!2549655))

(assert (= (and b!2549417 ((_ is Star!7595) (reg!7924 r!27340))) b!2549656))

(assert (= (and b!2549417 ((_ is Union!7595) (reg!7924 r!27340))) b!2549657))

(declare-fun b!2549662 () Bool)

(declare-fun e!1611314 () Bool)

(declare-fun tp!813458 () Bool)

(assert (=> b!2549662 (= e!1611314 (and tp_is_empty!13045 tp!813458))))

(assert (=> b!2549422 (= tp!813399 e!1611314)))

(assert (= (and b!2549422 ((_ is Cons!29560) (t!211359 tl!4068))) b!2549662))

(declare-fun b!2549666 () Bool)

(declare-fun e!1611315 () Bool)

(declare-fun tp!813459 () Bool)

(declare-fun tp!813462 () Bool)

(assert (=> b!2549666 (= e!1611315 (and tp!813459 tp!813462))))

(declare-fun b!2549664 () Bool)

(declare-fun tp!813461 () Bool)

(declare-fun tp!813463 () Bool)

(assert (=> b!2549664 (= e!1611315 (and tp!813461 tp!813463))))

(assert (=> b!2549421 (= tp!813402 e!1611315)))

(declare-fun b!2549663 () Bool)

(assert (=> b!2549663 (= e!1611315 tp_is_empty!13045)))

(declare-fun b!2549665 () Bool)

(declare-fun tp!813460 () Bool)

(assert (=> b!2549665 (= e!1611315 tp!813460)))

(assert (= (and b!2549421 ((_ is ElementMatch!7595) (regOne!15702 r!27340))) b!2549663))

(assert (= (and b!2549421 ((_ is Concat!12291) (regOne!15702 r!27340))) b!2549664))

(assert (= (and b!2549421 ((_ is Star!7595) (regOne!15702 r!27340))) b!2549665))

(assert (= (and b!2549421 ((_ is Union!7595) (regOne!15702 r!27340))) b!2549666))

(declare-fun b!2549670 () Bool)

(declare-fun e!1611316 () Bool)

(declare-fun tp!813464 () Bool)

(declare-fun tp!813467 () Bool)

(assert (=> b!2549670 (= e!1611316 (and tp!813464 tp!813467))))

(declare-fun b!2549668 () Bool)

(declare-fun tp!813466 () Bool)

(declare-fun tp!813468 () Bool)

(assert (=> b!2549668 (= e!1611316 (and tp!813466 tp!813468))))

(assert (=> b!2549421 (= tp!813397 e!1611316)))

(declare-fun b!2549667 () Bool)

(assert (=> b!2549667 (= e!1611316 tp_is_empty!13045)))

(declare-fun b!2549669 () Bool)

(declare-fun tp!813465 () Bool)

(assert (=> b!2549669 (= e!1611316 tp!813465)))

(assert (= (and b!2549421 ((_ is ElementMatch!7595) (regTwo!15702 r!27340))) b!2549667))

(assert (= (and b!2549421 ((_ is Concat!12291) (regTwo!15702 r!27340))) b!2549668))

(assert (= (and b!2549421 ((_ is Star!7595) (regTwo!15702 r!27340))) b!2549669))

(assert (= (and b!2549421 ((_ is Union!7595) (regTwo!15702 r!27340))) b!2549670))

(declare-fun b!2549674 () Bool)

(declare-fun e!1611317 () Bool)

(declare-fun tp!813469 () Bool)

(declare-fun tp!813472 () Bool)

(assert (=> b!2549674 (= e!1611317 (and tp!813469 tp!813472))))

(declare-fun b!2549672 () Bool)

(declare-fun tp!813471 () Bool)

(declare-fun tp!813473 () Bool)

(assert (=> b!2549672 (= e!1611317 (and tp!813471 tp!813473))))

(assert (=> b!2549420 (= tp!813398 e!1611317)))

(declare-fun b!2549671 () Bool)

(assert (=> b!2549671 (= e!1611317 tp_is_empty!13045)))

(declare-fun b!2549673 () Bool)

(declare-fun tp!813470 () Bool)

(assert (=> b!2549673 (= e!1611317 tp!813470)))

(assert (= (and b!2549420 ((_ is ElementMatch!7595) (regOne!15703 r!27340))) b!2549671))

(assert (= (and b!2549420 ((_ is Concat!12291) (regOne!15703 r!27340))) b!2549672))

(assert (= (and b!2549420 ((_ is Star!7595) (regOne!15703 r!27340))) b!2549673))

(assert (= (and b!2549420 ((_ is Union!7595) (regOne!15703 r!27340))) b!2549674))

(declare-fun b!2549678 () Bool)

(declare-fun e!1611318 () Bool)

(declare-fun tp!813474 () Bool)

(declare-fun tp!813477 () Bool)

(assert (=> b!2549678 (= e!1611318 (and tp!813474 tp!813477))))

(declare-fun b!2549676 () Bool)

(declare-fun tp!813476 () Bool)

(declare-fun tp!813478 () Bool)

(assert (=> b!2549676 (= e!1611318 (and tp!813476 tp!813478))))

(assert (=> b!2549420 (= tp!813401 e!1611318)))

(declare-fun b!2549675 () Bool)

(assert (=> b!2549675 (= e!1611318 tp_is_empty!13045)))

(declare-fun b!2549677 () Bool)

(declare-fun tp!813475 () Bool)

(assert (=> b!2549677 (= e!1611318 tp!813475)))

(assert (= (and b!2549420 ((_ is ElementMatch!7595) (regTwo!15703 r!27340))) b!2549675))

(assert (= (and b!2549420 ((_ is Concat!12291) (regTwo!15703 r!27340))) b!2549676))

(assert (= (and b!2549420 ((_ is Star!7595) (regTwo!15703 r!27340))) b!2549677))

(assert (= (and b!2549420 ((_ is Union!7595) (regTwo!15703 r!27340))) b!2549678))

(check-sat (not bm!162084) (not d!723087) (not b!2549572) (not b!2549665) (not b!2549670) (not b!2549669) (not bm!162052) (not b!2549656) (not b!2549677) (not d!723089) (not d!723109) tp_is_empty!13045 (not bm!162089) (not b!2549666) (not b!2549553) (not b!2549657) (not bm!162077) (not d!723113) (not bm!162091) (not b!2549620) (not b!2549672) (not b!2549662) (not d!723111) (not b!2549599) (not b!2549668) (not b!2549655) (not b!2549664) (not b!2549678) (not b!2549673) (not bm!162076) (not bm!162095) (not b!2549510) (not b!2549676) (not bm!162054) (not bm!162093) (not bm!162083) (not d!723085) (not b!2549447) (not b!2549674))
(check-sat)
