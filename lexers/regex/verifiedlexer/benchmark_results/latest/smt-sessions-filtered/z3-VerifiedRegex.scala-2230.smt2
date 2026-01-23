; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110266 () Bool)

(assert start!110266)

(declare-fun b!1233346 () Bool)

(declare-fun e!790017 () Bool)

(declare-datatypes ((C!7188 0))(
  ( (C!7189 (val!4124 Int)) )
))
(declare-datatypes ((Regex!3435 0))(
  ( (ElementMatch!3435 (c!206288 C!7188)) (Concat!5665 (regOne!7382 Regex!3435) (regTwo!7382 Regex!3435)) (EmptyExpr!3435) (Star!3435 (reg!3764 Regex!3435)) (EmptyLang!3435) (Union!3435 (regOne!7383 Regex!3435) (regTwo!7383 Regex!3435)) )
))
(declare-fun r!15719 () Regex!3435)

(declare-fun validRegex!1471 (Regex!3435) Bool)

(assert (=> b!1233346 (= e!790017 (not (validRegex!1471 (regOne!7382 r!15719))))))

(declare-fun b!1233347 () Bool)

(declare-fun e!790018 () Bool)

(declare-fun tp!352078 () Bool)

(assert (=> b!1233347 (= e!790018 tp!352078)))

(declare-fun b!1233348 () Bool)

(declare-fun tp_is_empty!6391 () Bool)

(assert (=> b!1233348 (= e!790018 tp_is_empty!6391)))

(declare-fun b!1233349 () Bool)

(declare-fun tp!352076 () Bool)

(declare-fun tp!352075 () Bool)

(assert (=> b!1233349 (= e!790018 (and tp!352076 tp!352075))))

(declare-fun b!1233351 () Bool)

(declare-fun res!552679 () Bool)

(assert (=> b!1233351 (=> (not res!552679) (not e!790017))))

(get-info :version)

(assert (=> b!1233351 (= res!552679 (and (or (not ((_ is Concat!5665) r!15719)) (not ((_ is EmptyExpr!3435) (regOne!7382 r!15719)))) ((_ is Concat!5665) r!15719) ((_ is EmptyExpr!3435) (regTwo!7382 r!15719))))))

(declare-fun res!552680 () Bool)

(assert (=> start!110266 (=> (not res!552680) (not e!790017))))

(assert (=> start!110266 (= res!552680 (validRegex!1471 r!15719))))

(assert (=> start!110266 e!790017))

(assert (=> start!110266 e!790018))

(declare-fun b!1233350 () Bool)

(declare-fun tp!352077 () Bool)

(declare-fun tp!352079 () Bool)

(assert (=> b!1233350 (= e!790018 (and tp!352077 tp!352079))))

(assert (= (and start!110266 res!552680) b!1233351))

(assert (= (and b!1233351 res!552679) b!1233346))

(assert (= (and start!110266 ((_ is ElementMatch!3435) r!15719)) b!1233348))

(assert (= (and start!110266 ((_ is Concat!5665) r!15719)) b!1233349))

(assert (= (and start!110266 ((_ is Star!3435) r!15719)) b!1233347))

(assert (= (and start!110266 ((_ is Union!3435) r!15719)) b!1233350))

(declare-fun m!1408943 () Bool)

(assert (=> b!1233346 m!1408943))

(declare-fun m!1408945 () Bool)

(assert (=> start!110266 m!1408945))

(check-sat (not b!1233347) (not b!1233346) (not b!1233350) tp_is_empty!6391 (not b!1233349) (not start!110266))
(check-sat)
(get-model)

(declare-fun b!1233388 () Bool)

(declare-fun e!790054 () Bool)

(declare-fun e!790052 () Bool)

(assert (=> b!1233388 (= e!790054 e!790052)))

(declare-fun res!552701 () Bool)

(declare-fun nullable!1074 (Regex!3435) Bool)

(assert (=> b!1233388 (= res!552701 (not (nullable!1074 (reg!3764 r!15719))))))

(assert (=> b!1233388 (=> (not res!552701) (not e!790052))))

(declare-fun b!1233389 () Bool)

(declare-fun e!790049 () Bool)

(declare-fun e!790050 () Bool)

(assert (=> b!1233389 (= e!790049 e!790050)))

(declare-fun res!552703 () Bool)

(assert (=> b!1233389 (=> (not res!552703) (not e!790050))))

(declare-fun call!85470 () Bool)

(assert (=> b!1233389 (= res!552703 call!85470)))

(declare-fun d!353131 () Bool)

(declare-fun res!552706 () Bool)

(declare-fun e!790056 () Bool)

(assert (=> d!353131 (=> res!552706 e!790056)))

(assert (=> d!353131 (= res!552706 ((_ is ElementMatch!3435) r!15719))))

(assert (=> d!353131 (= (validRegex!1471 r!15719) e!790056)))

(declare-fun b!1233390 () Bool)

(declare-fun e!790048 () Bool)

(declare-fun call!85469 () Bool)

(assert (=> b!1233390 (= e!790048 call!85469)))

(declare-fun bm!85463 () Bool)

(declare-fun call!85468 () Bool)

(assert (=> bm!85463 (= call!85470 call!85468)))

(declare-fun b!1233391 () Bool)

(assert (=> b!1233391 (= e!790050 call!85469)))

(declare-fun b!1233392 () Bool)

(declare-fun res!552705 () Bool)

(assert (=> b!1233392 (=> res!552705 e!790049)))

(assert (=> b!1233392 (= res!552705 (not ((_ is Concat!5665) r!15719)))))

(declare-fun e!790047 () Bool)

(assert (=> b!1233392 (= e!790047 e!790049)))

(declare-fun b!1233393 () Bool)

(assert (=> b!1233393 (= e!790054 e!790047)))

(declare-fun c!206298 () Bool)

(assert (=> b!1233393 (= c!206298 ((_ is Union!3435) r!15719))))

(declare-fun b!1233394 () Bool)

(declare-fun res!552702 () Bool)

(assert (=> b!1233394 (=> (not res!552702) (not e!790048))))

(assert (=> b!1233394 (= res!552702 call!85470)))

(assert (=> b!1233394 (= e!790047 e!790048)))

(declare-fun b!1233395 () Bool)

(assert (=> b!1233395 (= e!790052 call!85468)))

(declare-fun b!1233396 () Bool)

(assert (=> b!1233396 (= e!790056 e!790054)))

(declare-fun c!206297 () Bool)

(assert (=> b!1233396 (= c!206297 ((_ is Star!3435) r!15719))))

(declare-fun bm!85464 () Bool)

(assert (=> bm!85464 (= call!85469 (validRegex!1471 (ite c!206298 (regTwo!7383 r!15719) (regTwo!7382 r!15719))))))

(declare-fun bm!85465 () Bool)

(assert (=> bm!85465 (= call!85468 (validRegex!1471 (ite c!206297 (reg!3764 r!15719) (ite c!206298 (regOne!7383 r!15719) (regOne!7382 r!15719)))))))

(assert (= (and d!353131 (not res!552706)) b!1233396))

(assert (= (and b!1233396 c!206297) b!1233388))

(assert (= (and b!1233396 (not c!206297)) b!1233393))

(assert (= (and b!1233388 res!552701) b!1233395))

(assert (= (and b!1233393 c!206298) b!1233394))

(assert (= (and b!1233393 (not c!206298)) b!1233392))

(assert (= (and b!1233394 res!552702) b!1233390))

(assert (= (and b!1233392 (not res!552705)) b!1233389))

(assert (= (and b!1233389 res!552703) b!1233391))

(assert (= (or b!1233390 b!1233391) bm!85464))

(assert (= (or b!1233394 b!1233389) bm!85463))

(assert (= (or b!1233395 bm!85463) bm!85465))

(declare-fun m!1408947 () Bool)

(assert (=> b!1233388 m!1408947))

(declare-fun m!1408951 () Bool)

(assert (=> bm!85464 m!1408951))

(declare-fun m!1408955 () Bool)

(assert (=> bm!85465 m!1408955))

(assert (=> start!110266 d!353131))

(declare-fun b!1233406 () Bool)

(declare-fun e!790072 () Bool)

(declare-fun e!790071 () Bool)

(assert (=> b!1233406 (= e!790072 e!790071)))

(declare-fun res!552712 () Bool)

(assert (=> b!1233406 (= res!552712 (not (nullable!1074 (reg!3764 (regOne!7382 r!15719)))))))

(assert (=> b!1233406 (=> (not res!552712) (not e!790071))))

(declare-fun b!1233408 () Bool)

(declare-fun e!790067 () Bool)

(declare-fun e!790068 () Bool)

(assert (=> b!1233408 (= e!790067 e!790068)))

(declare-fun res!552716 () Bool)

(assert (=> b!1233408 (=> (not res!552716) (not e!790068))))

(declare-fun call!85477 () Bool)

(assert (=> b!1233408 (= res!552716 call!85477)))

(declare-fun d!353133 () Bool)

(declare-fun res!552719 () Bool)

(declare-fun e!790074 () Bool)

(assert (=> d!353133 (=> res!552719 e!790074)))

(assert (=> d!353133 (= res!552719 ((_ is ElementMatch!3435) (regOne!7382 r!15719)))))

(assert (=> d!353133 (= (validRegex!1471 (regOne!7382 r!15719)) e!790074)))

(declare-fun b!1233410 () Bool)

(declare-fun e!790065 () Bool)

(declare-fun call!85476 () Bool)

(assert (=> b!1233410 (= e!790065 call!85476)))

(declare-fun bm!85469 () Bool)

(declare-fun call!85474 () Bool)

(assert (=> bm!85469 (= call!85477 call!85474)))

(declare-fun b!1233413 () Bool)

(assert (=> b!1233413 (= e!790068 call!85476)))

(declare-fun b!1233415 () Bool)

(declare-fun res!552718 () Bool)

(assert (=> b!1233415 (=> res!552718 e!790067)))

(assert (=> b!1233415 (= res!552718 (not ((_ is Concat!5665) (regOne!7382 r!15719))))))

(declare-fun e!790061 () Bool)

(assert (=> b!1233415 (= e!790061 e!790067)))

(declare-fun b!1233417 () Bool)

(assert (=> b!1233417 (= e!790072 e!790061)))

(declare-fun c!206302 () Bool)

(assert (=> b!1233417 (= c!206302 ((_ is Union!3435) (regOne!7382 r!15719)))))

(declare-fun b!1233419 () Bool)

(declare-fun res!552713 () Bool)

(assert (=> b!1233419 (=> (not res!552713) (not e!790065))))

(assert (=> b!1233419 (= res!552713 call!85477)))

(assert (=> b!1233419 (= e!790061 e!790065)))

(declare-fun b!1233421 () Bool)

(assert (=> b!1233421 (= e!790071 call!85474)))

(declare-fun b!1233423 () Bool)

(assert (=> b!1233423 (= e!790074 e!790072)))

(declare-fun c!206301 () Bool)

(assert (=> b!1233423 (= c!206301 ((_ is Star!3435) (regOne!7382 r!15719)))))

(declare-fun bm!85471 () Bool)

(assert (=> bm!85471 (= call!85476 (validRegex!1471 (ite c!206302 (regTwo!7383 (regOne!7382 r!15719)) (regTwo!7382 (regOne!7382 r!15719)))))))

(declare-fun bm!85473 () Bool)

(assert (=> bm!85473 (= call!85474 (validRegex!1471 (ite c!206301 (reg!3764 (regOne!7382 r!15719)) (ite c!206302 (regOne!7383 (regOne!7382 r!15719)) (regOne!7382 (regOne!7382 r!15719))))))))

(assert (= (and d!353133 (not res!552719)) b!1233423))

(assert (= (and b!1233423 c!206301) b!1233406))

(assert (= (and b!1233423 (not c!206301)) b!1233417))

(assert (= (and b!1233406 res!552712) b!1233421))

(assert (= (and b!1233417 c!206302) b!1233419))

(assert (= (and b!1233417 (not c!206302)) b!1233415))

(assert (= (and b!1233419 res!552713) b!1233410))

(assert (= (and b!1233415 (not res!552718)) b!1233408))

(assert (= (and b!1233408 res!552716) b!1233413))

(assert (= (or b!1233410 b!1233413) bm!85471))

(assert (= (or b!1233419 b!1233408) bm!85469))

(assert (= (or b!1233421 bm!85469) bm!85473))

(declare-fun m!1408959 () Bool)

(assert (=> b!1233406 m!1408959))

(declare-fun m!1408963 () Bool)

(assert (=> bm!85471 m!1408963))

(declare-fun m!1408967 () Bool)

(assert (=> bm!85473 m!1408967))

(assert (=> b!1233346 d!353133))

(declare-fun b!1233446 () Bool)

(declare-fun e!790079 () Bool)

(declare-fun tp!352103 () Bool)

(assert (=> b!1233446 (= e!790079 tp!352103)))

(declare-fun b!1233445 () Bool)

(declare-fun tp!352102 () Bool)

(declare-fun tp!352100 () Bool)

(assert (=> b!1233445 (= e!790079 (and tp!352102 tp!352100))))

(declare-fun b!1233444 () Bool)

(assert (=> b!1233444 (= e!790079 tp_is_empty!6391)))

(assert (=> b!1233349 (= tp!352076 e!790079)))

(declare-fun b!1233447 () Bool)

(declare-fun tp!352104 () Bool)

(declare-fun tp!352101 () Bool)

(assert (=> b!1233447 (= e!790079 (and tp!352104 tp!352101))))

(assert (= (and b!1233349 ((_ is ElementMatch!3435) (regOne!7382 r!15719))) b!1233444))

(assert (= (and b!1233349 ((_ is Concat!5665) (regOne!7382 r!15719))) b!1233445))

(assert (= (and b!1233349 ((_ is Star!3435) (regOne!7382 r!15719))) b!1233446))

(assert (= (and b!1233349 ((_ is Union!3435) (regOne!7382 r!15719))) b!1233447))

(declare-fun b!1233454 () Bool)

(declare-fun e!790081 () Bool)

(declare-fun tp!352113 () Bool)

(assert (=> b!1233454 (= e!790081 tp!352113)))

(declare-fun b!1233453 () Bool)

(declare-fun tp!352112 () Bool)

(declare-fun tp!352110 () Bool)

(assert (=> b!1233453 (= e!790081 (and tp!352112 tp!352110))))

(declare-fun b!1233452 () Bool)

(assert (=> b!1233452 (= e!790081 tp_is_empty!6391)))

(assert (=> b!1233349 (= tp!352075 e!790081)))

(declare-fun b!1233455 () Bool)

(declare-fun tp!352114 () Bool)

(declare-fun tp!352111 () Bool)

(assert (=> b!1233455 (= e!790081 (and tp!352114 tp!352111))))

(assert (= (and b!1233349 ((_ is ElementMatch!3435) (regTwo!7382 r!15719))) b!1233452))

(assert (= (and b!1233349 ((_ is Concat!5665) (regTwo!7382 r!15719))) b!1233453))

(assert (= (and b!1233349 ((_ is Star!3435) (regTwo!7382 r!15719))) b!1233454))

(assert (= (and b!1233349 ((_ is Union!3435) (regTwo!7382 r!15719))) b!1233455))

(declare-fun b!1233462 () Bool)

(declare-fun e!790083 () Bool)

(declare-fun tp!352123 () Bool)

(assert (=> b!1233462 (= e!790083 tp!352123)))

(declare-fun b!1233461 () Bool)

(declare-fun tp!352122 () Bool)

(declare-fun tp!352120 () Bool)

(assert (=> b!1233461 (= e!790083 (and tp!352122 tp!352120))))

(declare-fun b!1233460 () Bool)

(assert (=> b!1233460 (= e!790083 tp_is_empty!6391)))

(assert (=> b!1233347 (= tp!352078 e!790083)))

(declare-fun b!1233463 () Bool)

(declare-fun tp!352126 () Bool)

(declare-fun tp!352121 () Bool)

(assert (=> b!1233463 (= e!790083 (and tp!352126 tp!352121))))

(assert (= (and b!1233347 ((_ is ElementMatch!3435) (reg!3764 r!15719))) b!1233460))

(assert (= (and b!1233347 ((_ is Concat!5665) (reg!3764 r!15719))) b!1233461))

(assert (= (and b!1233347 ((_ is Star!3435) (reg!3764 r!15719))) b!1233462))

(assert (= (and b!1233347 ((_ is Union!3435) (reg!3764 r!15719))) b!1233463))

(declare-fun b!1233470 () Bool)

(declare-fun e!790085 () Bool)

(declare-fun tp!352134 () Bool)

(assert (=> b!1233470 (= e!790085 tp!352134)))

(declare-fun b!1233469 () Bool)

(declare-fun tp!352132 () Bool)

(declare-fun tp!352130 () Bool)

(assert (=> b!1233469 (= e!790085 (and tp!352132 tp!352130))))

(declare-fun b!1233468 () Bool)

(assert (=> b!1233468 (= e!790085 tp_is_empty!6391)))

(assert (=> b!1233350 (= tp!352077 e!790085)))

(declare-fun b!1233472 () Bool)

(declare-fun tp!352137 () Bool)

(declare-fun tp!352131 () Bool)

(assert (=> b!1233472 (= e!790085 (and tp!352137 tp!352131))))

(assert (= (and b!1233350 ((_ is ElementMatch!3435) (regOne!7383 r!15719))) b!1233468))

(assert (= (and b!1233350 ((_ is Concat!5665) (regOne!7383 r!15719))) b!1233469))

(assert (= (and b!1233350 ((_ is Star!3435) (regOne!7383 r!15719))) b!1233470))

(assert (= (and b!1233350 ((_ is Union!3435) (regOne!7383 r!15719))) b!1233472))

(declare-fun b!1233480 () Bool)

(declare-fun e!790087 () Bool)

(declare-fun tp!352146 () Bool)

(assert (=> b!1233480 (= e!790087 tp!352146)))

(declare-fun b!1233478 () Bool)

(declare-fun tp!352144 () Bool)

(declare-fun tp!352140 () Bool)

(assert (=> b!1233478 (= e!790087 (and tp!352144 tp!352140))))

(declare-fun b!1233476 () Bool)

(assert (=> b!1233476 (= e!790087 tp_is_empty!6391)))

(assert (=> b!1233350 (= tp!352079 e!790087)))

(declare-fun b!1233482 () Bool)

(declare-fun tp!352148 () Bool)

(declare-fun tp!352142 () Bool)

(assert (=> b!1233482 (= e!790087 (and tp!352148 tp!352142))))

(assert (= (and b!1233350 ((_ is ElementMatch!3435) (regTwo!7383 r!15719))) b!1233476))

(assert (= (and b!1233350 ((_ is Concat!5665) (regTwo!7383 r!15719))) b!1233478))

(assert (= (and b!1233350 ((_ is Star!3435) (regTwo!7383 r!15719))) b!1233480))

(assert (= (and b!1233350 ((_ is Union!3435) (regTwo!7383 r!15719))) b!1233482))

(check-sat (not b!1233482) (not b!1233388) (not b!1233462) (not b!1233478) (not b!1233453) (not bm!85464) (not b!1233472) (not b!1233480) (not b!1233463) (not b!1233446) (not b!1233445) (not bm!85473) (not bm!85471) (not b!1233461) (not b!1233454) (not b!1233470) (not b!1233469) (not b!1233455) tp_is_empty!6391 (not bm!85465) (not b!1233447) (not b!1233406))
(check-sat)
