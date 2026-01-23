; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243556 () Bool)

(assert start!243556)

(declare-fun b!2493274 () Bool)

(declare-fun e!1582348 () Bool)

(declare-fun e!1582350 () Bool)

(assert (=> b!2493274 (= e!1582348 e!1582350)))

(declare-fun res!1054654 () Bool)

(assert (=> b!2493274 (=> (not res!1054654) (not e!1582350))))

(declare-datatypes ((C!14868 0))(
  ( (C!14869 (val!9086 Int)) )
))
(declare-datatypes ((Regex!7355 0))(
  ( (ElementMatch!7355 (c!396405 C!14868)) (Concat!12051 (regOne!15222 Regex!7355) (regTwo!15222 Regex!7355)) (EmptyExpr!7355) (Star!7355 (reg!7684 Regex!7355)) (EmptyLang!7355) (Union!7355 (regOne!15223 Regex!7355) (regTwo!15223 Regex!7355)) )
))
(declare-fun r!27340 () Regex!7355)

(declare-fun lt!894123 () Regex!7355)

(declare-fun lt!894124 () Regex!7355)

(assert (=> b!2493274 (= res!1054654 (= lt!894124 (Concat!12051 lt!894123 (Star!7355 (reg!7684 r!27340)))))))

(declare-fun c!14016 () C!14868)

(declare-fun derivativeStep!1924 (Regex!7355 C!14868) Regex!7355)

(assert (=> b!2493274 (= lt!894123 (derivativeStep!1924 (reg!7684 r!27340) c!14016))))

(declare-fun b!2493276 () Bool)

(declare-fun validRegex!2981 (Regex!7355) Bool)

(assert (=> b!2493276 (= e!1582350 (not (validRegex!2981 lt!894123)))))

(declare-fun b!2493277 () Bool)

(declare-fun e!1582351 () Bool)

(declare-fun tp_is_empty!12565 () Bool)

(declare-fun tp!798610 () Bool)

(assert (=> b!2493277 (= e!1582351 (and tp_is_empty!12565 tp!798610))))

(declare-fun b!2493278 () Bool)

(declare-fun e!1582352 () Bool)

(assert (=> b!2493278 (= e!1582352 e!1582348)))

(declare-fun res!1054652 () Bool)

(assert (=> b!2493278 (=> (not res!1054652) (not e!1582348))))

(declare-datatypes ((List!29420 0))(
  ( (Nil!29320) (Cons!29320 (h!34740 C!14868) (t!211119 List!29420)) )
))
(declare-fun tl!4068 () List!29420)

(declare-fun nullable!2272 (Regex!7355) Bool)

(declare-fun derivative!50 (Regex!7355 List!29420) Regex!7355)

(assert (=> b!2493278 (= res!1054652 (nullable!2272 (derivative!50 lt!894124 tl!4068)))))

(assert (=> b!2493278 (= lt!894124 (derivativeStep!1924 r!27340 c!14016))))

(declare-fun b!2493279 () Bool)

(declare-fun e!1582349 () Bool)

(declare-fun tp!798614 () Bool)

(assert (=> b!2493279 (= e!1582349 tp!798614)))

(declare-fun b!2493280 () Bool)

(declare-fun tp!798609 () Bool)

(declare-fun tp!798611 () Bool)

(assert (=> b!2493280 (= e!1582349 (and tp!798609 tp!798611))))

(declare-fun b!2493281 () Bool)

(declare-fun res!1054651 () Bool)

(assert (=> b!2493281 (=> (not res!1054651) (not e!1582348))))

(get-info :version)

(assert (=> b!2493281 (= res!1054651 (and (not ((_ is EmptyExpr!7355) r!27340)) (not ((_ is EmptyLang!7355) r!27340)) (not ((_ is ElementMatch!7355) r!27340)) (not ((_ is Union!7355) r!27340)) ((_ is Star!7355) r!27340)))))

(declare-fun b!2493282 () Bool)

(assert (=> b!2493282 (= e!1582349 tp_is_empty!12565)))

(declare-fun b!2493275 () Bool)

(declare-fun tp!798613 () Bool)

(declare-fun tp!798612 () Bool)

(assert (=> b!2493275 (= e!1582349 (and tp!798613 tp!798612))))

(declare-fun res!1054653 () Bool)

(assert (=> start!243556 (=> (not res!1054653) (not e!1582352))))

(assert (=> start!243556 (= res!1054653 (validRegex!2981 r!27340))))

(assert (=> start!243556 e!1582352))

(assert (=> start!243556 e!1582349))

(assert (=> start!243556 tp_is_empty!12565))

(assert (=> start!243556 e!1582351))

(assert (= (and start!243556 res!1054653) b!2493278))

(assert (= (and b!2493278 res!1054652) b!2493281))

(assert (= (and b!2493281 res!1054651) b!2493274))

(assert (= (and b!2493274 res!1054654) b!2493276))

(assert (= (and start!243556 ((_ is ElementMatch!7355) r!27340)) b!2493282))

(assert (= (and start!243556 ((_ is Concat!12051) r!27340)) b!2493280))

(assert (= (and start!243556 ((_ is Star!7355) r!27340)) b!2493279))

(assert (= (and start!243556 ((_ is Union!7355) r!27340)) b!2493275))

(assert (= (and start!243556 ((_ is Cons!29320) tl!4068)) b!2493277))

(declare-fun m!2859033 () Bool)

(assert (=> b!2493274 m!2859033))

(declare-fun m!2859035 () Bool)

(assert (=> b!2493276 m!2859035))

(declare-fun m!2859037 () Bool)

(assert (=> b!2493278 m!2859037))

(assert (=> b!2493278 m!2859037))

(declare-fun m!2859039 () Bool)

(assert (=> b!2493278 m!2859039))

(declare-fun m!2859041 () Bool)

(assert (=> b!2493278 m!2859041))

(declare-fun m!2859043 () Bool)

(assert (=> start!243556 m!2859043))

(check-sat (not b!2493277) (not b!2493279) (not start!243556) tp_is_empty!12565 (not b!2493274) (not b!2493275) (not b!2493278) (not b!2493280) (not b!2493276))
(check-sat)
(get-model)

(declare-fun d!714599 () Bool)

(declare-fun res!1054665 () Bool)

(declare-fun e!1582376 () Bool)

(assert (=> d!714599 (=> res!1054665 e!1582376)))

(assert (=> d!714599 (= res!1054665 ((_ is ElementMatch!7355) r!27340))))

(assert (=> d!714599 (= (validRegex!2981 r!27340) e!1582376)))

(declare-fun b!2493307 () Bool)

(declare-fun e!1582373 () Bool)

(declare-fun call!153481 () Bool)

(assert (=> b!2493307 (= e!1582373 call!153481)))

(declare-fun b!2493308 () Bool)

(declare-fun e!1582372 () Bool)

(assert (=> b!2493308 (= e!1582372 e!1582373)))

(declare-fun res!1054669 () Bool)

(assert (=> b!2493308 (=> (not res!1054669) (not e!1582373))))

(declare-fun call!153480 () Bool)

(assert (=> b!2493308 (= res!1054669 call!153480)))

(declare-fun b!2493309 () Bool)

(declare-fun e!1582370 () Bool)

(declare-fun call!153482 () Bool)

(assert (=> b!2493309 (= e!1582370 call!153482)))

(declare-fun bm!153475 () Bool)

(assert (=> bm!153475 (= call!153480 call!153482)))

(declare-fun b!2493310 () Bool)

(declare-fun e!1582374 () Bool)

(assert (=> b!2493310 (= e!1582374 call!153480)))

(declare-fun bm!153476 () Bool)

(declare-fun c!396413 () Bool)

(assert (=> bm!153476 (= call!153481 (validRegex!2981 (ite c!396413 (regOne!15223 r!27340) (regTwo!15222 r!27340))))))

(declare-fun b!2493311 () Bool)

(declare-fun e!1582375 () Bool)

(assert (=> b!2493311 (= e!1582376 e!1582375)))

(declare-fun c!396414 () Bool)

(assert (=> b!2493311 (= c!396414 ((_ is Star!7355) r!27340))))

(declare-fun b!2493312 () Bool)

(declare-fun e!1582371 () Bool)

(assert (=> b!2493312 (= e!1582375 e!1582371)))

(assert (=> b!2493312 (= c!396413 ((_ is Union!7355) r!27340))))

(declare-fun b!2493313 () Bool)

(declare-fun res!1054667 () Bool)

(assert (=> b!2493313 (=> res!1054667 e!1582372)))

(assert (=> b!2493313 (= res!1054667 (not ((_ is Concat!12051) r!27340)))))

(assert (=> b!2493313 (= e!1582371 e!1582372)))

(declare-fun bm!153477 () Bool)

(assert (=> bm!153477 (= call!153482 (validRegex!2981 (ite c!396414 (reg!7684 r!27340) (ite c!396413 (regTwo!15223 r!27340) (regOne!15222 r!27340)))))))

(declare-fun b!2493314 () Bool)

(declare-fun res!1054666 () Bool)

(assert (=> b!2493314 (=> (not res!1054666) (not e!1582374))))

(assert (=> b!2493314 (= res!1054666 call!153481)))

(assert (=> b!2493314 (= e!1582371 e!1582374)))

(declare-fun b!2493315 () Bool)

(assert (=> b!2493315 (= e!1582375 e!1582370)))

(declare-fun res!1054668 () Bool)

(assert (=> b!2493315 (= res!1054668 (not (nullable!2272 (reg!7684 r!27340))))))

(assert (=> b!2493315 (=> (not res!1054668) (not e!1582370))))

(assert (= (and d!714599 (not res!1054665)) b!2493311))

(assert (= (and b!2493311 c!396414) b!2493315))

(assert (= (and b!2493311 (not c!396414)) b!2493312))

(assert (= (and b!2493315 res!1054668) b!2493309))

(assert (= (and b!2493312 c!396413) b!2493314))

(assert (= (and b!2493312 (not c!396413)) b!2493313))

(assert (= (and b!2493314 res!1054666) b!2493310))

(assert (= (and b!2493313 (not res!1054667)) b!2493308))

(assert (= (and b!2493308 res!1054669) b!2493307))

(assert (= (or b!2493314 b!2493307) bm!153476))

(assert (= (or b!2493310 b!2493308) bm!153475))

(assert (= (or b!2493309 bm!153475) bm!153477))

(declare-fun m!2859055 () Bool)

(assert (=> bm!153476 m!2859055))

(declare-fun m!2859057 () Bool)

(assert (=> bm!153477 m!2859057))

(declare-fun m!2859059 () Bool)

(assert (=> b!2493315 m!2859059))

(assert (=> start!243556 d!714599))

(declare-fun d!714607 () Bool)

(declare-fun res!1054670 () Bool)

(declare-fun e!1582383 () Bool)

(assert (=> d!714607 (=> res!1054670 e!1582383)))

(assert (=> d!714607 (= res!1054670 ((_ is ElementMatch!7355) lt!894123))))

(assert (=> d!714607 (= (validRegex!2981 lt!894123) e!1582383)))

(declare-fun b!2493316 () Bool)

(declare-fun e!1582380 () Bool)

(declare-fun call!153484 () Bool)

(assert (=> b!2493316 (= e!1582380 call!153484)))

(declare-fun b!2493317 () Bool)

(declare-fun e!1582379 () Bool)

(assert (=> b!2493317 (= e!1582379 e!1582380)))

(declare-fun res!1054674 () Bool)

(assert (=> b!2493317 (=> (not res!1054674) (not e!1582380))))

(declare-fun call!153483 () Bool)

(assert (=> b!2493317 (= res!1054674 call!153483)))

(declare-fun b!2493318 () Bool)

(declare-fun e!1582377 () Bool)

(declare-fun call!153485 () Bool)

(assert (=> b!2493318 (= e!1582377 call!153485)))

(declare-fun bm!153478 () Bool)

(assert (=> bm!153478 (= call!153483 call!153485)))

(declare-fun b!2493319 () Bool)

(declare-fun e!1582381 () Bool)

(assert (=> b!2493319 (= e!1582381 call!153483)))

(declare-fun bm!153479 () Bool)

(declare-fun c!396415 () Bool)

(assert (=> bm!153479 (= call!153484 (validRegex!2981 (ite c!396415 (regOne!15223 lt!894123) (regTwo!15222 lt!894123))))))

(declare-fun b!2493320 () Bool)

(declare-fun e!1582382 () Bool)

(assert (=> b!2493320 (= e!1582383 e!1582382)))

(declare-fun c!396416 () Bool)

(assert (=> b!2493320 (= c!396416 ((_ is Star!7355) lt!894123))))

(declare-fun b!2493321 () Bool)

(declare-fun e!1582378 () Bool)

(assert (=> b!2493321 (= e!1582382 e!1582378)))

(assert (=> b!2493321 (= c!396415 ((_ is Union!7355) lt!894123))))

(declare-fun b!2493322 () Bool)

(declare-fun res!1054672 () Bool)

(assert (=> b!2493322 (=> res!1054672 e!1582379)))

(assert (=> b!2493322 (= res!1054672 (not ((_ is Concat!12051) lt!894123)))))

(assert (=> b!2493322 (= e!1582378 e!1582379)))

(declare-fun bm!153480 () Bool)

(assert (=> bm!153480 (= call!153485 (validRegex!2981 (ite c!396416 (reg!7684 lt!894123) (ite c!396415 (regTwo!15223 lt!894123) (regOne!15222 lt!894123)))))))

(declare-fun b!2493323 () Bool)

(declare-fun res!1054671 () Bool)

(assert (=> b!2493323 (=> (not res!1054671) (not e!1582381))))

(assert (=> b!2493323 (= res!1054671 call!153484)))

(assert (=> b!2493323 (= e!1582378 e!1582381)))

(declare-fun b!2493324 () Bool)

(assert (=> b!2493324 (= e!1582382 e!1582377)))

(declare-fun res!1054673 () Bool)

(assert (=> b!2493324 (= res!1054673 (not (nullable!2272 (reg!7684 lt!894123))))))

(assert (=> b!2493324 (=> (not res!1054673) (not e!1582377))))

(assert (= (and d!714607 (not res!1054670)) b!2493320))

(assert (= (and b!2493320 c!396416) b!2493324))

(assert (= (and b!2493320 (not c!396416)) b!2493321))

(assert (= (and b!2493324 res!1054673) b!2493318))

(assert (= (and b!2493321 c!396415) b!2493323))

(assert (= (and b!2493321 (not c!396415)) b!2493322))

(assert (= (and b!2493323 res!1054671) b!2493319))

(assert (= (and b!2493322 (not res!1054672)) b!2493317))

(assert (= (and b!2493317 res!1054674) b!2493316))

(assert (= (or b!2493323 b!2493316) bm!153479))

(assert (= (or b!2493319 b!2493317) bm!153478))

(assert (= (or b!2493318 bm!153478) bm!153480))

(declare-fun m!2859061 () Bool)

(assert (=> bm!153479 m!2859061))

(declare-fun m!2859063 () Bool)

(assert (=> bm!153480 m!2859063))

(declare-fun m!2859065 () Bool)

(assert (=> b!2493324 m!2859065))

(assert (=> b!2493276 d!714607))

(declare-fun d!714609 () Bool)

(declare-fun nullableFct!565 (Regex!7355) Bool)

(assert (=> d!714609 (= (nullable!2272 (derivative!50 lt!894124 tl!4068)) (nullableFct!565 (derivative!50 lt!894124 tl!4068)))))

(declare-fun bs!468405 () Bool)

(assert (= bs!468405 d!714609))

(assert (=> bs!468405 m!2859037))

(declare-fun m!2859067 () Bool)

(assert (=> bs!468405 m!2859067))

(assert (=> b!2493278 d!714609))

(declare-fun d!714611 () Bool)

(declare-fun lt!894132 () Regex!7355)

(assert (=> d!714611 (validRegex!2981 lt!894132)))

(declare-fun e!1582396 () Regex!7355)

(assert (=> d!714611 (= lt!894132 e!1582396)))

(declare-fun c!396429 () Bool)

(assert (=> d!714611 (= c!396429 ((_ is Cons!29320) tl!4068))))

(assert (=> d!714611 (validRegex!2981 lt!894124)))

(assert (=> d!714611 (= (derivative!50 lt!894124 tl!4068) lt!894132)))

(declare-fun b!2493349 () Bool)

(assert (=> b!2493349 (= e!1582396 (derivative!50 (derivativeStep!1924 lt!894124 (h!34740 tl!4068)) (t!211119 tl!4068)))))

(declare-fun b!2493350 () Bool)

(assert (=> b!2493350 (= e!1582396 lt!894124)))

(assert (= (and d!714611 c!396429) b!2493349))

(assert (= (and d!714611 (not c!396429)) b!2493350))

(declare-fun m!2859069 () Bool)

(assert (=> d!714611 m!2859069))

(declare-fun m!2859071 () Bool)

(assert (=> d!714611 m!2859071))

(declare-fun m!2859073 () Bool)

(assert (=> b!2493349 m!2859073))

(assert (=> b!2493349 m!2859073))

(declare-fun m!2859075 () Bool)

(assert (=> b!2493349 m!2859075))

(assert (=> b!2493278 d!714611))

(declare-fun c!396457 () Bool)

(declare-fun call!153519 () Regex!7355)

(declare-fun bm!153514 () Bool)

(declare-fun c!396459 () Bool)

(assert (=> bm!153514 (= call!153519 (derivativeStep!1924 (ite c!396457 (regTwo!15223 r!27340) (ite c!396459 (reg!7684 r!27340) (regOne!15222 r!27340))) c!14016))))

(declare-fun bm!153515 () Bool)

(declare-fun call!153520 () Regex!7355)

(declare-fun call!153522 () Regex!7355)

(assert (=> bm!153515 (= call!153520 call!153522)))

(declare-fun d!714613 () Bool)

(declare-fun lt!894137 () Regex!7355)

(assert (=> d!714613 (validRegex!2981 lt!894137)))

(declare-fun e!1582442 () Regex!7355)

(assert (=> d!714613 (= lt!894137 e!1582442)))

(declare-fun c!396456 () Bool)

(assert (=> d!714613 (= c!396456 (or ((_ is EmptyExpr!7355) r!27340) ((_ is EmptyLang!7355) r!27340)))))

(assert (=> d!714613 (validRegex!2981 r!27340)))

(assert (=> d!714613 (= (derivativeStep!1924 r!27340 c!14016) lt!894137)))

(declare-fun b!2493418 () Bool)

(declare-fun e!1582441 () Regex!7355)

(assert (=> b!2493418 (= e!1582442 e!1582441)))

(declare-fun c!396458 () Bool)

(assert (=> b!2493418 (= c!396458 ((_ is ElementMatch!7355) r!27340))))

(declare-fun bm!153516 () Bool)

(declare-fun call!153521 () Regex!7355)

(assert (=> bm!153516 (= call!153521 (derivativeStep!1924 (ite c!396457 (regOne!15223 r!27340) (regTwo!15222 r!27340)) c!14016))))

(declare-fun b!2493419 () Bool)

(declare-fun e!1582438 () Regex!7355)

(assert (=> b!2493419 (= e!1582438 (Union!7355 (Concat!12051 call!153520 (regTwo!15222 r!27340)) EmptyLang!7355))))

(declare-fun b!2493420 () Bool)

(assert (=> b!2493420 (= e!1582441 (ite (= c!14016 (c!396405 r!27340)) EmptyExpr!7355 EmptyLang!7355))))

(declare-fun bm!153517 () Bool)

(assert (=> bm!153517 (= call!153522 call!153519)))

(declare-fun b!2493421 () Bool)

(assert (=> b!2493421 (= c!396457 ((_ is Union!7355) r!27340))))

(declare-fun e!1582440 () Regex!7355)

(assert (=> b!2493421 (= e!1582441 e!1582440)))

(declare-fun b!2493422 () Bool)

(declare-fun c!396460 () Bool)

(assert (=> b!2493422 (= c!396460 (nullable!2272 (regOne!15222 r!27340)))))

(declare-fun e!1582439 () Regex!7355)

(assert (=> b!2493422 (= e!1582439 e!1582438)))

(declare-fun b!2493423 () Bool)

(assert (=> b!2493423 (= e!1582440 (Union!7355 call!153521 call!153519))))

(declare-fun b!2493424 () Bool)

(assert (=> b!2493424 (= e!1582439 (Concat!12051 call!153522 r!27340))))

(declare-fun b!2493425 () Bool)

(assert (=> b!2493425 (= e!1582438 (Union!7355 (Concat!12051 call!153520 (regTwo!15222 r!27340)) call!153521))))

(declare-fun b!2493426 () Bool)

(assert (=> b!2493426 (= e!1582440 e!1582439)))

(assert (=> b!2493426 (= c!396459 ((_ is Star!7355) r!27340))))

(declare-fun b!2493427 () Bool)

(assert (=> b!2493427 (= e!1582442 EmptyLang!7355)))

(assert (= (and d!714613 c!396456) b!2493427))

(assert (= (and d!714613 (not c!396456)) b!2493418))

(assert (= (and b!2493418 c!396458) b!2493420))

(assert (= (and b!2493418 (not c!396458)) b!2493421))

(assert (= (and b!2493421 c!396457) b!2493423))

(assert (= (and b!2493421 (not c!396457)) b!2493426))

(assert (= (and b!2493426 c!396459) b!2493424))

(assert (= (and b!2493426 (not c!396459)) b!2493422))

(assert (= (and b!2493422 c!396460) b!2493425))

(assert (= (and b!2493422 (not c!396460)) b!2493419))

(assert (= (or b!2493425 b!2493419) bm!153515))

(assert (= (or b!2493424 bm!153515) bm!153517))

(assert (= (or b!2493423 bm!153517) bm!153514))

(assert (= (or b!2493423 b!2493425) bm!153516))

(declare-fun m!2859101 () Bool)

(assert (=> bm!153514 m!2859101))

(declare-fun m!2859103 () Bool)

(assert (=> d!714613 m!2859103))

(assert (=> d!714613 m!2859043))

(declare-fun m!2859105 () Bool)

(assert (=> bm!153516 m!2859105))

(declare-fun m!2859107 () Bool)

(assert (=> b!2493422 m!2859107))

(assert (=> b!2493278 d!714613))

(declare-fun c!396464 () Bool)

(declare-fun bm!153521 () Bool)

(declare-fun c!396466 () Bool)

(declare-fun call!153526 () Regex!7355)

(assert (=> bm!153521 (= call!153526 (derivativeStep!1924 (ite c!396464 (regTwo!15223 (reg!7684 r!27340)) (ite c!396466 (reg!7684 (reg!7684 r!27340)) (regOne!15222 (reg!7684 r!27340)))) c!14016))))

(declare-fun bm!153522 () Bool)

(declare-fun call!153527 () Regex!7355)

(declare-fun call!153529 () Regex!7355)

(assert (=> bm!153522 (= call!153527 call!153529)))

(declare-fun d!714621 () Bool)

(declare-fun lt!894138 () Regex!7355)

(assert (=> d!714621 (validRegex!2981 lt!894138)))

(declare-fun e!1582454 () Regex!7355)

(assert (=> d!714621 (= lt!894138 e!1582454)))

(declare-fun c!396463 () Bool)

(assert (=> d!714621 (= c!396463 (or ((_ is EmptyExpr!7355) (reg!7684 r!27340)) ((_ is EmptyLang!7355) (reg!7684 r!27340))))))

(assert (=> d!714621 (validRegex!2981 (reg!7684 r!27340))))

(assert (=> d!714621 (= (derivativeStep!1924 (reg!7684 r!27340) c!14016) lt!894138)))

(declare-fun b!2493437 () Bool)

(declare-fun e!1582453 () Regex!7355)

(assert (=> b!2493437 (= e!1582454 e!1582453)))

(declare-fun c!396465 () Bool)

(assert (=> b!2493437 (= c!396465 ((_ is ElementMatch!7355) (reg!7684 r!27340)))))

(declare-fun bm!153523 () Bool)

(declare-fun call!153528 () Regex!7355)

(assert (=> bm!153523 (= call!153528 (derivativeStep!1924 (ite c!396464 (regOne!15223 (reg!7684 r!27340)) (regTwo!15222 (reg!7684 r!27340))) c!14016))))

(declare-fun b!2493438 () Bool)

(declare-fun e!1582450 () Regex!7355)

(assert (=> b!2493438 (= e!1582450 (Union!7355 (Concat!12051 call!153527 (regTwo!15222 (reg!7684 r!27340))) EmptyLang!7355))))

(declare-fun b!2493439 () Bool)

(assert (=> b!2493439 (= e!1582453 (ite (= c!14016 (c!396405 (reg!7684 r!27340))) EmptyExpr!7355 EmptyLang!7355))))

(declare-fun bm!153524 () Bool)

(assert (=> bm!153524 (= call!153529 call!153526)))

(declare-fun b!2493440 () Bool)

(assert (=> b!2493440 (= c!396464 ((_ is Union!7355) (reg!7684 r!27340)))))

(declare-fun e!1582452 () Regex!7355)

(assert (=> b!2493440 (= e!1582453 e!1582452)))

(declare-fun b!2493441 () Bool)

(declare-fun c!396467 () Bool)

(assert (=> b!2493441 (= c!396467 (nullable!2272 (regOne!15222 (reg!7684 r!27340))))))

(declare-fun e!1582451 () Regex!7355)

(assert (=> b!2493441 (= e!1582451 e!1582450)))

(declare-fun b!2493442 () Bool)

(assert (=> b!2493442 (= e!1582452 (Union!7355 call!153528 call!153526))))

(declare-fun b!2493443 () Bool)

(assert (=> b!2493443 (= e!1582451 (Concat!12051 call!153529 (reg!7684 r!27340)))))

(declare-fun b!2493444 () Bool)

(assert (=> b!2493444 (= e!1582450 (Union!7355 (Concat!12051 call!153527 (regTwo!15222 (reg!7684 r!27340))) call!153528))))

(declare-fun b!2493445 () Bool)

(assert (=> b!2493445 (= e!1582452 e!1582451)))

(assert (=> b!2493445 (= c!396466 ((_ is Star!7355) (reg!7684 r!27340)))))

(declare-fun b!2493446 () Bool)

(assert (=> b!2493446 (= e!1582454 EmptyLang!7355)))

(assert (= (and d!714621 c!396463) b!2493446))

(assert (= (and d!714621 (not c!396463)) b!2493437))

(assert (= (and b!2493437 c!396465) b!2493439))

(assert (= (and b!2493437 (not c!396465)) b!2493440))

(assert (= (and b!2493440 c!396464) b!2493442))

(assert (= (and b!2493440 (not c!396464)) b!2493445))

(assert (= (and b!2493445 c!396466) b!2493443))

(assert (= (and b!2493445 (not c!396466)) b!2493441))

(assert (= (and b!2493441 c!396467) b!2493444))

(assert (= (and b!2493441 (not c!396467)) b!2493438))

(assert (= (or b!2493444 b!2493438) bm!153522))

(assert (= (or b!2493443 bm!153522) bm!153524))

(assert (= (or b!2493442 bm!153524) bm!153521))

(assert (= (or b!2493442 b!2493444) bm!153523))

(declare-fun m!2859115 () Bool)

(assert (=> bm!153521 m!2859115))

(declare-fun m!2859117 () Bool)

(assert (=> d!714621 m!2859117))

(declare-fun m!2859119 () Bool)

(assert (=> d!714621 m!2859119))

(declare-fun m!2859121 () Bool)

(assert (=> bm!153523 m!2859121))

(declare-fun m!2859123 () Bool)

(assert (=> b!2493441 m!2859123))

(assert (=> b!2493274 d!714621))

(declare-fun b!2493475 () Bool)

(declare-fun e!1582462 () Bool)

(assert (=> b!2493475 (= e!1582462 tp_is_empty!12565)))

(assert (=> b!2493275 (= tp!798613 e!1582462)))

(declare-fun b!2493476 () Bool)

(declare-fun tp!798645 () Bool)

(declare-fun tp!798646 () Bool)

(assert (=> b!2493476 (= e!1582462 (and tp!798645 tp!798646))))

(declare-fun b!2493477 () Bool)

(declare-fun tp!798644 () Bool)

(assert (=> b!2493477 (= e!1582462 tp!798644)))

(declare-fun b!2493478 () Bool)

(declare-fun tp!798642 () Bool)

(declare-fun tp!798643 () Bool)

(assert (=> b!2493478 (= e!1582462 (and tp!798642 tp!798643))))

(assert (= (and b!2493275 ((_ is ElementMatch!7355) (regOne!15223 r!27340))) b!2493475))

(assert (= (and b!2493275 ((_ is Concat!12051) (regOne!15223 r!27340))) b!2493476))

(assert (= (and b!2493275 ((_ is Star!7355) (regOne!15223 r!27340))) b!2493477))

(assert (= (and b!2493275 ((_ is Union!7355) (regOne!15223 r!27340))) b!2493478))

(declare-fun b!2493484 () Bool)

(declare-fun e!1582465 () Bool)

(assert (=> b!2493484 (= e!1582465 tp_is_empty!12565)))

(assert (=> b!2493275 (= tp!798612 e!1582465)))

(declare-fun b!2493485 () Bool)

(declare-fun tp!798656 () Bool)

(declare-fun tp!798657 () Bool)

(assert (=> b!2493485 (= e!1582465 (and tp!798656 tp!798657))))

(declare-fun b!2493486 () Bool)

(declare-fun tp!798655 () Bool)

(assert (=> b!2493486 (= e!1582465 tp!798655)))

(declare-fun b!2493487 () Bool)

(declare-fun tp!798653 () Bool)

(declare-fun tp!798654 () Bool)

(assert (=> b!2493487 (= e!1582465 (and tp!798653 tp!798654))))

(assert (= (and b!2493275 ((_ is ElementMatch!7355) (regTwo!15223 r!27340))) b!2493484))

(assert (= (and b!2493275 ((_ is Concat!12051) (regTwo!15223 r!27340))) b!2493485))

(assert (= (and b!2493275 ((_ is Star!7355) (regTwo!15223 r!27340))) b!2493486))

(assert (= (and b!2493275 ((_ is Union!7355) (regTwo!15223 r!27340))) b!2493487))

(declare-fun b!2493492 () Bool)

(declare-fun e!1582467 () Bool)

(assert (=> b!2493492 (= e!1582467 tp_is_empty!12565)))

(assert (=> b!2493280 (= tp!798609 e!1582467)))

(declare-fun b!2493493 () Bool)

(declare-fun tp!798666 () Bool)

(declare-fun tp!798667 () Bool)

(assert (=> b!2493493 (= e!1582467 (and tp!798666 tp!798667))))

(declare-fun b!2493494 () Bool)

(declare-fun tp!798665 () Bool)

(assert (=> b!2493494 (= e!1582467 tp!798665)))

(declare-fun b!2493495 () Bool)

(declare-fun tp!798663 () Bool)

(declare-fun tp!798664 () Bool)

(assert (=> b!2493495 (= e!1582467 (and tp!798663 tp!798664))))

(assert (= (and b!2493280 ((_ is ElementMatch!7355) (regOne!15222 r!27340))) b!2493492))

(assert (= (and b!2493280 ((_ is Concat!12051) (regOne!15222 r!27340))) b!2493493))

(assert (= (and b!2493280 ((_ is Star!7355) (regOne!15222 r!27340))) b!2493494))

(assert (= (and b!2493280 ((_ is Union!7355) (regOne!15222 r!27340))) b!2493495))

(declare-fun b!2493500 () Bool)

(declare-fun e!1582469 () Bool)

(assert (=> b!2493500 (= e!1582469 tp_is_empty!12565)))

(assert (=> b!2493280 (= tp!798611 e!1582469)))

(declare-fun b!2493501 () Bool)

(declare-fun tp!798676 () Bool)

(declare-fun tp!798677 () Bool)

(assert (=> b!2493501 (= e!1582469 (and tp!798676 tp!798677))))

(declare-fun b!2493502 () Bool)

(declare-fun tp!798675 () Bool)

(assert (=> b!2493502 (= e!1582469 tp!798675)))

(declare-fun b!2493503 () Bool)

(declare-fun tp!798673 () Bool)

(declare-fun tp!798674 () Bool)

(assert (=> b!2493503 (= e!1582469 (and tp!798673 tp!798674))))

(assert (= (and b!2493280 ((_ is ElementMatch!7355) (regTwo!15222 r!27340))) b!2493500))

(assert (= (and b!2493280 ((_ is Concat!12051) (regTwo!15222 r!27340))) b!2493501))

(assert (= (and b!2493280 ((_ is Star!7355) (regTwo!15222 r!27340))) b!2493502))

(assert (= (and b!2493280 ((_ is Union!7355) (regTwo!15222 r!27340))) b!2493503))

(declare-fun b!2493512 () Bool)

(declare-fun e!1582473 () Bool)

(declare-fun tp!798685 () Bool)

(assert (=> b!2493512 (= e!1582473 (and tp_is_empty!12565 tp!798685))))

(assert (=> b!2493277 (= tp!798610 e!1582473)))

(assert (= (and b!2493277 ((_ is Cons!29320) (t!211119 tl!4068))) b!2493512))

(declare-fun b!2493513 () Bool)

(declare-fun e!1582474 () Bool)

(assert (=> b!2493513 (= e!1582474 tp_is_empty!12565)))

(assert (=> b!2493279 (= tp!798614 e!1582474)))

(declare-fun b!2493514 () Bool)

(declare-fun tp!798689 () Bool)

(declare-fun tp!798690 () Bool)

(assert (=> b!2493514 (= e!1582474 (and tp!798689 tp!798690))))

(declare-fun b!2493515 () Bool)

(declare-fun tp!798688 () Bool)

(assert (=> b!2493515 (= e!1582474 tp!798688)))

(declare-fun b!2493516 () Bool)

(declare-fun tp!798686 () Bool)

(declare-fun tp!798687 () Bool)

(assert (=> b!2493516 (= e!1582474 (and tp!798686 tp!798687))))

(assert (= (and b!2493279 ((_ is ElementMatch!7355) (reg!7684 r!27340))) b!2493513))

(assert (= (and b!2493279 ((_ is Concat!12051) (reg!7684 r!27340))) b!2493514))

(assert (= (and b!2493279 ((_ is Star!7355) (reg!7684 r!27340))) b!2493515))

(assert (= (and b!2493279 ((_ is Union!7355) (reg!7684 r!27340))) b!2493516))

(check-sat (not b!2493512) (not b!2493503) (not d!714609) (not b!2493487) (not b!2493494) (not b!2493477) (not d!714613) (not b!2493315) (not b!2493485) (not b!2493441) tp_is_empty!12565 (not b!2493324) (not b!2493514) (not b!2493349) (not b!2493493) (not bm!153516) (not b!2493515) (not bm!153514) (not b!2493478) (not bm!153480) (not b!2493486) (not b!2493516) (not bm!153477) (not b!2493501) (not bm!153523) (not b!2493422) (not b!2493476) (not d!714621) (not b!2493495) (not b!2493502) (not bm!153476) (not bm!153521) (not d!714611) (not bm!153479))
(check-sat)
