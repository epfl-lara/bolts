; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!247004 () Bool)

(assert start!247004)

(declare-fun b!2544390 () Bool)

(declare-fun e!1608598 () Bool)

(declare-fun tp!812406 () Bool)

(declare-fun tp!812402 () Bool)

(assert (=> b!2544390 (= e!1608598 (and tp!812406 tp!812402))))

(declare-fun res!1072085 () Bool)

(declare-fun e!1608597 () Bool)

(assert (=> start!247004 (=> (not res!1072085) (not e!1608597))))

(declare-datatypes ((C!15316 0))(
  ( (C!15317 (val!9310 Int)) )
))
(declare-datatypes ((Regex!7579 0))(
  ( (ElementMatch!7579 (c!407517 C!15316)) (Concat!12275 (regOne!15670 Regex!7579) (regTwo!15670 Regex!7579)) (EmptyExpr!7579) (Star!7579 (reg!7908 Regex!7579)) (EmptyLang!7579) (Union!7579 (regOne!15671 Regex!7579) (regTwo!15671 Regex!7579)) )
))
(declare-fun r!27340 () Regex!7579)

(declare-fun validRegex!3205 (Regex!7579) Bool)

(assert (=> start!247004 (= res!1072085 (validRegex!3205 r!27340))))

(assert (=> start!247004 e!1608597))

(assert (=> start!247004 e!1608598))

(declare-fun tp_is_empty!13013 () Bool)

(assert (=> start!247004 tp_is_empty!13013))

(declare-fun e!1608593 () Bool)

(assert (=> start!247004 e!1608593))

(declare-fun b!2544391 () Bool)

(declare-fun res!1072087 () Bool)

(declare-fun e!1608594 () Bool)

(assert (=> b!2544391 (=> (not res!1072087) (not e!1608594))))

(get-info :version)

(assert (=> b!2544391 (= res!1072087 (and (not ((_ is EmptyExpr!7579) r!27340)) (not ((_ is EmptyLang!7579) r!27340)) (not ((_ is ElementMatch!7579) r!27340)) (not ((_ is Union!7579) r!27340)) ((_ is Star!7579) r!27340)))))

(declare-fun b!2544392 () Bool)

(declare-fun res!1072084 () Bool)

(declare-fun e!1608596 () Bool)

(assert (=> b!2544392 (=> (not res!1072084) (not e!1608596))))

(declare-fun lt!902334 () Regex!7579)

(declare-datatypes ((List!29644 0))(
  ( (Nil!29544) (Cons!29544 (h!34964 C!15316) (t!211343 List!29644)) )
))
(declare-fun tl!4068 () List!29644)

(declare-fun nullable!2496 (Regex!7579) Bool)

(declare-fun derivative!274 (Regex!7579 List!29644) Regex!7579)

(assert (=> b!2544392 (= res!1072084 (not (nullable!2496 (derivative!274 lt!902334 tl!4068))))))

(declare-fun b!2544393 () Bool)

(assert (=> b!2544393 (= e!1608597 e!1608594)))

(declare-fun res!1072088 () Bool)

(assert (=> b!2544393 (=> (not res!1072088) (not e!1608594))))

(declare-fun lt!902336 () Regex!7579)

(assert (=> b!2544393 (= res!1072088 (nullable!2496 lt!902336))))

(declare-fun lt!902337 () Regex!7579)

(assert (=> b!2544393 (= lt!902336 (derivative!274 lt!902337 tl!4068))))

(declare-fun c!14016 () C!15316)

(declare-fun derivativeStep!2148 (Regex!7579 C!15316) Regex!7579)

(assert (=> b!2544393 (= lt!902337 (derivativeStep!2148 r!27340 c!14016))))

(declare-fun b!2544394 () Bool)

(assert (=> b!2544394 (= e!1608594 e!1608596)))

(declare-fun res!1072086 () Bool)

(assert (=> b!2544394 (=> (not res!1072086) (not e!1608596))))

(assert (=> b!2544394 (= res!1072086 (= lt!902337 (Concat!12275 lt!902334 (Star!7579 (reg!7908 r!27340)))))))

(assert (=> b!2544394 (= lt!902334 (derivativeStep!2148 (reg!7908 r!27340) c!14016))))

(declare-fun b!2544395 () Bool)

(assert (=> b!2544395 (= e!1608598 tp_is_empty!13013)))

(declare-fun b!2544396 () Bool)

(declare-fun tp!812404 () Bool)

(assert (=> b!2544396 (= e!1608593 (and tp_is_empty!13013 tp!812404))))

(declare-fun b!2544397 () Bool)

(declare-fun e!1608595 () Bool)

(assert (=> b!2544397 (= e!1608596 (not e!1608595))))

(declare-fun res!1072083 () Bool)

(assert (=> b!2544397 (=> res!1072083 e!1608595)))

(declare-fun lt!902335 () Bool)

(assert (=> b!2544397 (= res!1072083 (not lt!902335))))

(declare-fun matchR!3526 (Regex!7579 List!29644) Bool)

(assert (=> b!2544397 (= lt!902335 (matchR!3526 lt!902336 Nil!29544))))

(assert (=> b!2544397 (= lt!902335 (matchR!3526 lt!902337 tl!4068))))

(declare-datatypes ((Unit!43347 0))(
  ( (Unit!43348) )
))
(declare-fun lt!902338 () Unit!43347)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!172 (Regex!7579 List!29644) Unit!43347)

(assert (=> b!2544397 (= lt!902338 (lemmaMatchRIsSameAsWholeDerivativeAndNil!172 lt!902337 tl!4068))))

(declare-fun b!2544398 () Bool)

(declare-fun tp!812401 () Bool)

(declare-fun tp!812403 () Bool)

(assert (=> b!2544398 (= e!1608598 (and tp!812401 tp!812403))))

(declare-fun b!2544399 () Bool)

(declare-fun tp!812405 () Bool)

(assert (=> b!2544399 (= e!1608598 tp!812405)))

(declare-fun b!2544400 () Bool)

(assert (=> b!2544400 (= e!1608595 (validRegex!3205 lt!902334))))

(assert (= (and start!247004 res!1072085) b!2544393))

(assert (= (and b!2544393 res!1072088) b!2544391))

(assert (= (and b!2544391 res!1072087) b!2544394))

(assert (= (and b!2544394 res!1072086) b!2544392))

(assert (= (and b!2544392 res!1072084) b!2544397))

(assert (= (and b!2544397 (not res!1072083)) b!2544400))

(assert (= (and start!247004 ((_ is ElementMatch!7579) r!27340)) b!2544395))

(assert (= (and start!247004 ((_ is Concat!12275) r!27340)) b!2544390))

(assert (= (and start!247004 ((_ is Star!7579) r!27340)) b!2544399))

(assert (= (and start!247004 ((_ is Union!7579) r!27340)) b!2544398))

(assert (= (and start!247004 ((_ is Cons!29544) tl!4068)) b!2544396))

(declare-fun m!2889851 () Bool)

(assert (=> b!2544394 m!2889851))

(declare-fun m!2889853 () Bool)

(assert (=> b!2544393 m!2889853))

(declare-fun m!2889855 () Bool)

(assert (=> b!2544393 m!2889855))

(declare-fun m!2889857 () Bool)

(assert (=> b!2544393 m!2889857))

(declare-fun m!2889859 () Bool)

(assert (=> b!2544392 m!2889859))

(assert (=> b!2544392 m!2889859))

(declare-fun m!2889861 () Bool)

(assert (=> b!2544392 m!2889861))

(declare-fun m!2889863 () Bool)

(assert (=> b!2544397 m!2889863))

(declare-fun m!2889865 () Bool)

(assert (=> b!2544397 m!2889865))

(declare-fun m!2889867 () Bool)

(assert (=> b!2544397 m!2889867))

(declare-fun m!2889869 () Bool)

(assert (=> b!2544400 m!2889869))

(declare-fun m!2889871 () Bool)

(assert (=> start!247004 m!2889871))

(check-sat tp_is_empty!13013 (not start!247004) (not b!2544390) (not b!2544399) (not b!2544394) (not b!2544396) (not b!2544393) (not b!2544397) (not b!2544400) (not b!2544392) (not b!2544398))
(check-sat)
(get-model)

(declare-fun d!722199 () Bool)

(declare-fun nullableFct!724 (Regex!7579) Bool)

(assert (=> d!722199 (= (nullable!2496 (derivative!274 lt!902334 tl!4068)) (nullableFct!724 (derivative!274 lt!902334 tl!4068)))))

(declare-fun bs!469474 () Bool)

(assert (= bs!469474 d!722199))

(assert (=> bs!469474 m!2889859))

(declare-fun m!2889873 () Bool)

(assert (=> bs!469474 m!2889873))

(assert (=> b!2544392 d!722199))

(declare-fun d!722203 () Bool)

(declare-fun lt!902341 () Regex!7579)

(assert (=> d!722203 (validRegex!3205 lt!902341)))

(declare-fun e!1608615 () Regex!7579)

(assert (=> d!722203 (= lt!902341 e!1608615)))

(declare-fun c!407524 () Bool)

(assert (=> d!722203 (= c!407524 ((_ is Cons!29544) tl!4068))))

(assert (=> d!722203 (validRegex!3205 lt!902334)))

(assert (=> d!722203 (= (derivative!274 lt!902334 tl!4068) lt!902341)))

(declare-fun b!2544423 () Bool)

(assert (=> b!2544423 (= e!1608615 (derivative!274 (derivativeStep!2148 lt!902334 (h!34964 tl!4068)) (t!211343 tl!4068)))))

(declare-fun b!2544424 () Bool)

(assert (=> b!2544424 (= e!1608615 lt!902334)))

(assert (= (and d!722203 c!407524) b!2544423))

(assert (= (and d!722203 (not c!407524)) b!2544424))

(declare-fun m!2889875 () Bool)

(assert (=> d!722203 m!2889875))

(assert (=> d!722203 m!2889869))

(declare-fun m!2889877 () Bool)

(assert (=> b!2544423 m!2889877))

(assert (=> b!2544423 m!2889877))

(declare-fun m!2889879 () Bool)

(assert (=> b!2544423 m!2889879))

(assert (=> b!2544392 d!722203))

(declare-fun b!2544461 () Bool)

(declare-fun e!1608649 () Bool)

(declare-fun e!1608647 () Bool)

(assert (=> b!2544461 (= e!1608649 e!1608647)))

(declare-fun c!407534 () Bool)

(assert (=> b!2544461 (= c!407534 ((_ is Star!7579) r!27340))))

(declare-fun bm!161353 () Bool)

(declare-fun call!161358 () Bool)

(declare-fun call!161359 () Bool)

(assert (=> bm!161353 (= call!161358 call!161359)))

(declare-fun b!2544462 () Bool)

(declare-fun e!1608644 () Bool)

(declare-fun e!1608648 () Bool)

(assert (=> b!2544462 (= e!1608644 e!1608648)))

(declare-fun res!1072120 () Bool)

(assert (=> b!2544462 (=> (not res!1072120) (not e!1608648))))

(assert (=> b!2544462 (= res!1072120 call!161358)))

(declare-fun b!2544463 () Bool)

(declare-fun e!1608645 () Bool)

(assert (=> b!2544463 (= e!1608647 e!1608645)))

(declare-fun res!1072121 () Bool)

(assert (=> b!2544463 (= res!1072121 (not (nullable!2496 (reg!7908 r!27340))))))

(assert (=> b!2544463 (=> (not res!1072121) (not e!1608645))))

(declare-fun b!2544464 () Bool)

(declare-fun e!1608650 () Bool)

(assert (=> b!2544464 (= e!1608647 e!1608650)))

(declare-fun c!407533 () Bool)

(assert (=> b!2544464 (= c!407533 ((_ is Union!7579) r!27340))))

(declare-fun b!2544465 () Bool)

(declare-fun call!161360 () Bool)

(assert (=> b!2544465 (= e!1608648 call!161360)))

(declare-fun b!2544467 () Bool)

(assert (=> b!2544467 (= e!1608645 call!161359)))

(declare-fun bm!161354 () Bool)

(assert (=> bm!161354 (= call!161359 (validRegex!3205 (ite c!407534 (reg!7908 r!27340) (ite c!407533 (regTwo!15671 r!27340) (regOne!15670 r!27340)))))))

(declare-fun bm!161355 () Bool)

(assert (=> bm!161355 (= call!161360 (validRegex!3205 (ite c!407533 (regOne!15671 r!27340) (regTwo!15670 r!27340))))))

(declare-fun b!2544468 () Bool)

(declare-fun res!1072123 () Bool)

(declare-fun e!1608646 () Bool)

(assert (=> b!2544468 (=> (not res!1072123) (not e!1608646))))

(assert (=> b!2544468 (= res!1072123 call!161360)))

(assert (=> b!2544468 (= e!1608650 e!1608646)))

(declare-fun b!2544469 () Bool)

(assert (=> b!2544469 (= e!1608646 call!161358)))

(declare-fun b!2544466 () Bool)

(declare-fun res!1072119 () Bool)

(assert (=> b!2544466 (=> res!1072119 e!1608644)))

(assert (=> b!2544466 (= res!1072119 (not ((_ is Concat!12275) r!27340)))))

(assert (=> b!2544466 (= e!1608650 e!1608644)))

(declare-fun d!722205 () Bool)

(declare-fun res!1072122 () Bool)

(assert (=> d!722205 (=> res!1072122 e!1608649)))

(assert (=> d!722205 (= res!1072122 ((_ is ElementMatch!7579) r!27340))))

(assert (=> d!722205 (= (validRegex!3205 r!27340) e!1608649)))

(assert (= (and d!722205 (not res!1072122)) b!2544461))

(assert (= (and b!2544461 c!407534) b!2544463))

(assert (= (and b!2544461 (not c!407534)) b!2544464))

(assert (= (and b!2544463 res!1072121) b!2544467))

(assert (= (and b!2544464 c!407533) b!2544468))

(assert (= (and b!2544464 (not c!407533)) b!2544466))

(assert (= (and b!2544468 res!1072123) b!2544469))

(assert (= (and b!2544466 (not res!1072119)) b!2544462))

(assert (= (and b!2544462 res!1072120) b!2544465))

(assert (= (or b!2544468 b!2544465) bm!161355))

(assert (= (or b!2544469 b!2544462) bm!161353))

(assert (= (or b!2544467 bm!161353) bm!161354))

(declare-fun m!2889893 () Bool)

(assert (=> b!2544463 m!2889893))

(declare-fun m!2889895 () Bool)

(assert (=> bm!161354 m!2889895))

(declare-fun m!2889897 () Bool)

(assert (=> bm!161355 m!2889897))

(assert (=> start!247004 d!722205))

(declare-fun d!722211 () Bool)

(assert (=> d!722211 (= (nullable!2496 lt!902336) (nullableFct!724 lt!902336))))

(declare-fun bs!469475 () Bool)

(assert (= bs!469475 d!722211))

(declare-fun m!2889899 () Bool)

(assert (=> bs!469475 m!2889899))

(assert (=> b!2544393 d!722211))

(declare-fun d!722213 () Bool)

(declare-fun lt!902344 () Regex!7579)

(assert (=> d!722213 (validRegex!3205 lt!902344)))

(declare-fun e!1608661 () Regex!7579)

(assert (=> d!722213 (= lt!902344 e!1608661)))

(declare-fun c!407545 () Bool)

(assert (=> d!722213 (= c!407545 ((_ is Cons!29544) tl!4068))))

(assert (=> d!722213 (validRegex!3205 lt!902337)))

(assert (=> d!722213 (= (derivative!274 lt!902337 tl!4068) lt!902344)))

(declare-fun b!2544490 () Bool)

(assert (=> b!2544490 (= e!1608661 (derivative!274 (derivativeStep!2148 lt!902337 (h!34964 tl!4068)) (t!211343 tl!4068)))))

(declare-fun b!2544491 () Bool)

(assert (=> b!2544491 (= e!1608661 lt!902337)))

(assert (= (and d!722213 c!407545) b!2544490))

(assert (= (and d!722213 (not c!407545)) b!2544491))

(declare-fun m!2889901 () Bool)

(assert (=> d!722213 m!2889901))

(declare-fun m!2889903 () Bool)

(assert (=> d!722213 m!2889903))

(declare-fun m!2889905 () Bool)

(assert (=> b!2544490 m!2889905))

(assert (=> b!2544490 m!2889905))

(declare-fun m!2889907 () Bool)

(assert (=> b!2544490 m!2889907))

(assert (=> b!2544393 d!722213))

(declare-fun bm!161380 () Bool)

(declare-fun call!161386 () Regex!7579)

(declare-fun call!161385 () Regex!7579)

(assert (=> bm!161380 (= call!161386 call!161385)))

(declare-fun b!2544540 () Bool)

(declare-fun e!1608689 () Regex!7579)

(declare-fun e!1608687 () Regex!7579)

(assert (=> b!2544540 (= e!1608689 e!1608687)))

(declare-fun c!407574 () Bool)

(assert (=> b!2544540 (= c!407574 ((_ is Star!7579) r!27340))))

(declare-fun b!2544541 () Bool)

(declare-fun c!407572 () Bool)

(assert (=> b!2544541 (= c!407572 ((_ is Union!7579) r!27340))))

(declare-fun e!1608688 () Regex!7579)

(assert (=> b!2544541 (= e!1608688 e!1608689)))

(declare-fun call!161388 () Regex!7579)

(declare-fun bm!161381 () Bool)

(assert (=> bm!161381 (= call!161388 (derivativeStep!2148 (ite c!407572 (regOne!15671 r!27340) (ite c!407574 (reg!7908 r!27340) (regOne!15670 r!27340))) c!14016))))

(declare-fun call!161387 () Regex!7579)

(declare-fun bm!161382 () Bool)

(assert (=> bm!161382 (= call!161387 (derivativeStep!2148 (ite c!407572 (regTwo!15671 r!27340) (regTwo!15670 r!27340)) c!14016))))

(declare-fun b!2544542 () Bool)

(declare-fun e!1608690 () Regex!7579)

(assert (=> b!2544542 (= e!1608690 e!1608688)))

(declare-fun c!407571 () Bool)

(assert (=> b!2544542 (= c!407571 ((_ is ElementMatch!7579) r!27340))))

(declare-fun b!2544543 () Bool)

(declare-fun e!1608686 () Regex!7579)

(assert (=> b!2544543 (= e!1608686 (Union!7579 (Concat!12275 call!161386 (regTwo!15670 r!27340)) EmptyLang!7579))))

(declare-fun b!2544544 () Bool)

(assert (=> b!2544544 (= e!1608687 (Concat!12275 call!161385 r!27340))))

(declare-fun b!2544545 () Bool)

(assert (=> b!2544545 (= e!1608690 EmptyLang!7579)))

(declare-fun b!2544546 () Bool)

(assert (=> b!2544546 (= e!1608686 (Union!7579 (Concat!12275 call!161386 (regTwo!15670 r!27340)) call!161387))))

(declare-fun b!2544547 () Bool)

(assert (=> b!2544547 (= e!1608688 (ite (= c!14016 (c!407517 r!27340)) EmptyExpr!7579 EmptyLang!7579))))

(declare-fun b!2544548 () Bool)

(declare-fun c!407573 () Bool)

(assert (=> b!2544548 (= c!407573 (nullable!2496 (regOne!15670 r!27340)))))

(assert (=> b!2544548 (= e!1608687 e!1608686)))

(declare-fun d!722215 () Bool)

(declare-fun lt!902353 () Regex!7579)

(assert (=> d!722215 (validRegex!3205 lt!902353)))

(assert (=> d!722215 (= lt!902353 e!1608690)))

(declare-fun c!407570 () Bool)

(assert (=> d!722215 (= c!407570 (or ((_ is EmptyExpr!7579) r!27340) ((_ is EmptyLang!7579) r!27340)))))

(assert (=> d!722215 (validRegex!3205 r!27340)))

(assert (=> d!722215 (= (derivativeStep!2148 r!27340 c!14016) lt!902353)))

(declare-fun bm!161383 () Bool)

(assert (=> bm!161383 (= call!161385 call!161388)))

(declare-fun b!2544549 () Bool)

(assert (=> b!2544549 (= e!1608689 (Union!7579 call!161388 call!161387))))

(assert (= (and d!722215 c!407570) b!2544545))

(assert (= (and d!722215 (not c!407570)) b!2544542))

(assert (= (and b!2544542 c!407571) b!2544547))

(assert (= (and b!2544542 (not c!407571)) b!2544541))

(assert (= (and b!2544541 c!407572) b!2544549))

(assert (= (and b!2544541 (not c!407572)) b!2544540))

(assert (= (and b!2544540 c!407574) b!2544544))

(assert (= (and b!2544540 (not c!407574)) b!2544548))

(assert (= (and b!2544548 c!407573) b!2544546))

(assert (= (and b!2544548 (not c!407573)) b!2544543))

(assert (= (or b!2544546 b!2544543) bm!161380))

(assert (= (or b!2544544 bm!161380) bm!161383))

(assert (= (or b!2544549 b!2544546) bm!161382))

(assert (= (or b!2544549 bm!161383) bm!161381))

(declare-fun m!2889945 () Bool)

(assert (=> bm!161381 m!2889945))

(declare-fun m!2889947 () Bool)

(assert (=> bm!161382 m!2889947))

(declare-fun m!2889949 () Bool)

(assert (=> b!2544548 m!2889949))

(declare-fun m!2889951 () Bool)

(assert (=> d!722215 m!2889951))

(assert (=> d!722215 m!2889871))

(assert (=> b!2544393 d!722215))

(declare-fun bm!161384 () Bool)

(declare-fun call!161390 () Regex!7579)

(declare-fun call!161389 () Regex!7579)

(assert (=> bm!161384 (= call!161390 call!161389)))

(declare-fun b!2544550 () Bool)

(declare-fun e!1608694 () Regex!7579)

(declare-fun e!1608692 () Regex!7579)

(assert (=> b!2544550 (= e!1608694 e!1608692)))

(declare-fun c!407579 () Bool)

(assert (=> b!2544550 (= c!407579 ((_ is Star!7579) (reg!7908 r!27340)))))

(declare-fun b!2544551 () Bool)

(declare-fun c!407577 () Bool)

(assert (=> b!2544551 (= c!407577 ((_ is Union!7579) (reg!7908 r!27340)))))

(declare-fun e!1608693 () Regex!7579)

(assert (=> b!2544551 (= e!1608693 e!1608694)))

(declare-fun bm!161385 () Bool)

(declare-fun call!161392 () Regex!7579)

(assert (=> bm!161385 (= call!161392 (derivativeStep!2148 (ite c!407577 (regOne!15671 (reg!7908 r!27340)) (ite c!407579 (reg!7908 (reg!7908 r!27340)) (regOne!15670 (reg!7908 r!27340)))) c!14016))))

(declare-fun call!161391 () Regex!7579)

(declare-fun bm!161386 () Bool)

(assert (=> bm!161386 (= call!161391 (derivativeStep!2148 (ite c!407577 (regTwo!15671 (reg!7908 r!27340)) (regTwo!15670 (reg!7908 r!27340))) c!14016))))

(declare-fun b!2544552 () Bool)

(declare-fun e!1608695 () Regex!7579)

(assert (=> b!2544552 (= e!1608695 e!1608693)))

(declare-fun c!407576 () Bool)

(assert (=> b!2544552 (= c!407576 ((_ is ElementMatch!7579) (reg!7908 r!27340)))))

(declare-fun b!2544553 () Bool)

(declare-fun e!1608691 () Regex!7579)

(assert (=> b!2544553 (= e!1608691 (Union!7579 (Concat!12275 call!161390 (regTwo!15670 (reg!7908 r!27340))) EmptyLang!7579))))

(declare-fun b!2544554 () Bool)

(assert (=> b!2544554 (= e!1608692 (Concat!12275 call!161389 (reg!7908 r!27340)))))

(declare-fun b!2544555 () Bool)

(assert (=> b!2544555 (= e!1608695 EmptyLang!7579)))

(declare-fun b!2544556 () Bool)

(assert (=> b!2544556 (= e!1608691 (Union!7579 (Concat!12275 call!161390 (regTwo!15670 (reg!7908 r!27340))) call!161391))))

(declare-fun b!2544557 () Bool)

(assert (=> b!2544557 (= e!1608693 (ite (= c!14016 (c!407517 (reg!7908 r!27340))) EmptyExpr!7579 EmptyLang!7579))))

(declare-fun b!2544558 () Bool)

(declare-fun c!407578 () Bool)

(assert (=> b!2544558 (= c!407578 (nullable!2496 (regOne!15670 (reg!7908 r!27340))))))

(assert (=> b!2544558 (= e!1608692 e!1608691)))

(declare-fun d!722229 () Bool)

(declare-fun lt!902354 () Regex!7579)

(assert (=> d!722229 (validRegex!3205 lt!902354)))

(assert (=> d!722229 (= lt!902354 e!1608695)))

(declare-fun c!407575 () Bool)

(assert (=> d!722229 (= c!407575 (or ((_ is EmptyExpr!7579) (reg!7908 r!27340)) ((_ is EmptyLang!7579) (reg!7908 r!27340))))))

(assert (=> d!722229 (validRegex!3205 (reg!7908 r!27340))))

(assert (=> d!722229 (= (derivativeStep!2148 (reg!7908 r!27340) c!14016) lt!902354)))

(declare-fun bm!161387 () Bool)

(assert (=> bm!161387 (= call!161389 call!161392)))

(declare-fun b!2544559 () Bool)

(assert (=> b!2544559 (= e!1608694 (Union!7579 call!161392 call!161391))))

(assert (= (and d!722229 c!407575) b!2544555))

(assert (= (and d!722229 (not c!407575)) b!2544552))

(assert (= (and b!2544552 c!407576) b!2544557))

(assert (= (and b!2544552 (not c!407576)) b!2544551))

(assert (= (and b!2544551 c!407577) b!2544559))

(assert (= (and b!2544551 (not c!407577)) b!2544550))

(assert (= (and b!2544550 c!407579) b!2544554))

(assert (= (and b!2544550 (not c!407579)) b!2544558))

(assert (= (and b!2544558 c!407578) b!2544556))

(assert (= (and b!2544558 (not c!407578)) b!2544553))

(assert (= (or b!2544556 b!2544553) bm!161384))

(assert (= (or b!2544554 bm!161384) bm!161387))

(assert (= (or b!2544559 b!2544556) bm!161386))

(assert (= (or b!2544559 bm!161387) bm!161385))

(declare-fun m!2889953 () Bool)

(assert (=> bm!161385 m!2889953))

(declare-fun m!2889955 () Bool)

(assert (=> bm!161386 m!2889955))

(declare-fun m!2889957 () Bool)

(assert (=> b!2544558 m!2889957))

(declare-fun m!2889959 () Bool)

(assert (=> d!722229 m!2889959))

(declare-fun m!2889961 () Bool)

(assert (=> d!722229 m!2889961))

(assert (=> b!2544394 d!722229))

(declare-fun b!2544560 () Bool)

(declare-fun e!1608701 () Bool)

(declare-fun e!1608699 () Bool)

(assert (=> b!2544560 (= e!1608701 e!1608699)))

(declare-fun c!407581 () Bool)

(assert (=> b!2544560 (= c!407581 ((_ is Star!7579) lt!902334))))

(declare-fun bm!161388 () Bool)

(declare-fun call!161393 () Bool)

(declare-fun call!161394 () Bool)

(assert (=> bm!161388 (= call!161393 call!161394)))

(declare-fun b!2544561 () Bool)

(declare-fun e!1608696 () Bool)

(declare-fun e!1608700 () Bool)

(assert (=> b!2544561 (= e!1608696 e!1608700)))

(declare-fun res!1072125 () Bool)

(assert (=> b!2544561 (=> (not res!1072125) (not e!1608700))))

(assert (=> b!2544561 (= res!1072125 call!161393)))

(declare-fun b!2544562 () Bool)

(declare-fun e!1608697 () Bool)

(assert (=> b!2544562 (= e!1608699 e!1608697)))

(declare-fun res!1072126 () Bool)

(assert (=> b!2544562 (= res!1072126 (not (nullable!2496 (reg!7908 lt!902334))))))

(assert (=> b!2544562 (=> (not res!1072126) (not e!1608697))))

(declare-fun b!2544563 () Bool)

(declare-fun e!1608702 () Bool)

(assert (=> b!2544563 (= e!1608699 e!1608702)))

(declare-fun c!407580 () Bool)

(assert (=> b!2544563 (= c!407580 ((_ is Union!7579) lt!902334))))

(declare-fun b!2544564 () Bool)

(declare-fun call!161395 () Bool)

(assert (=> b!2544564 (= e!1608700 call!161395)))

(declare-fun b!2544566 () Bool)

(assert (=> b!2544566 (= e!1608697 call!161394)))

(declare-fun bm!161389 () Bool)

(assert (=> bm!161389 (= call!161394 (validRegex!3205 (ite c!407581 (reg!7908 lt!902334) (ite c!407580 (regTwo!15671 lt!902334) (regOne!15670 lt!902334)))))))

(declare-fun bm!161390 () Bool)

(assert (=> bm!161390 (= call!161395 (validRegex!3205 (ite c!407580 (regOne!15671 lt!902334) (regTwo!15670 lt!902334))))))

(declare-fun b!2544567 () Bool)

(declare-fun res!1072128 () Bool)

(declare-fun e!1608698 () Bool)

(assert (=> b!2544567 (=> (not res!1072128) (not e!1608698))))

(assert (=> b!2544567 (= res!1072128 call!161395)))

(assert (=> b!2544567 (= e!1608702 e!1608698)))

(declare-fun b!2544568 () Bool)

(assert (=> b!2544568 (= e!1608698 call!161393)))

(declare-fun b!2544565 () Bool)

(declare-fun res!1072124 () Bool)

(assert (=> b!2544565 (=> res!1072124 e!1608696)))

(assert (=> b!2544565 (= res!1072124 (not ((_ is Concat!12275) lt!902334)))))

(assert (=> b!2544565 (= e!1608702 e!1608696)))

(declare-fun d!722231 () Bool)

(declare-fun res!1072127 () Bool)

(assert (=> d!722231 (=> res!1072127 e!1608701)))

(assert (=> d!722231 (= res!1072127 ((_ is ElementMatch!7579) lt!902334))))

(assert (=> d!722231 (= (validRegex!3205 lt!902334) e!1608701)))

(assert (= (and d!722231 (not res!1072127)) b!2544560))

(assert (= (and b!2544560 c!407581) b!2544562))

(assert (= (and b!2544560 (not c!407581)) b!2544563))

(assert (= (and b!2544562 res!1072126) b!2544566))

(assert (= (and b!2544563 c!407580) b!2544567))

(assert (= (and b!2544563 (not c!407580)) b!2544565))

(assert (= (and b!2544567 res!1072128) b!2544568))

(assert (= (and b!2544565 (not res!1072124)) b!2544561))

(assert (= (and b!2544561 res!1072125) b!2544564))

(assert (= (or b!2544567 b!2544564) bm!161390))

(assert (= (or b!2544568 b!2544561) bm!161388))

(assert (= (or b!2544566 bm!161388) bm!161389))

(declare-fun m!2889963 () Bool)

(assert (=> b!2544562 m!2889963))

(declare-fun m!2889965 () Bool)

(assert (=> bm!161389 m!2889965))

(declare-fun m!2889967 () Bool)

(assert (=> bm!161390 m!2889967))

(assert (=> b!2544400 d!722231))

(declare-fun b!2544688 () Bool)

(declare-fun e!1608757 () Bool)

(declare-fun head!5792 (List!29644) C!15316)

(assert (=> b!2544688 (= e!1608757 (= (head!5792 Nil!29544) (c!407517 lt!902336)))))

(declare-fun b!2544689 () Bool)

(declare-fun res!1072184 () Bool)

(declare-fun e!1608756 () Bool)

(assert (=> b!2544689 (=> res!1072184 e!1608756)))

(assert (=> b!2544689 (= res!1072184 (not ((_ is ElementMatch!7579) lt!902336)))))

(declare-fun e!1608759 () Bool)

(assert (=> b!2544689 (= e!1608759 e!1608756)))

(declare-fun d!722233 () Bool)

(declare-fun e!1608755 () Bool)

(assert (=> d!722233 e!1608755))

(declare-fun c!407601 () Bool)

(assert (=> d!722233 (= c!407601 ((_ is EmptyExpr!7579) lt!902336))))

(declare-fun lt!902364 () Bool)

(declare-fun e!1608758 () Bool)

(assert (=> d!722233 (= lt!902364 e!1608758)))

(declare-fun c!407600 () Bool)

(declare-fun isEmpty!16988 (List!29644) Bool)

(assert (=> d!722233 (= c!407600 (isEmpty!16988 Nil!29544))))

(assert (=> d!722233 (validRegex!3205 lt!902336)))

(assert (=> d!722233 (= (matchR!3526 lt!902336 Nil!29544) lt!902364)))

(declare-fun b!2544690 () Bool)

(declare-fun res!1072183 () Bool)

(assert (=> b!2544690 (=> (not res!1072183) (not e!1608757))))

(declare-fun tail!4067 (List!29644) List!29644)

(assert (=> b!2544690 (= res!1072183 (isEmpty!16988 (tail!4067 Nil!29544)))))

(declare-fun b!2544691 () Bool)

(declare-fun e!1608760 () Bool)

(assert (=> b!2544691 (= e!1608756 e!1608760)))

(declare-fun res!1072181 () Bool)

(assert (=> b!2544691 (=> (not res!1072181) (not e!1608760))))

(assert (=> b!2544691 (= res!1072181 (not lt!902364))))

(declare-fun b!2544692 () Bool)

(assert (=> b!2544692 (= e!1608758 (matchR!3526 (derivativeStep!2148 lt!902336 (head!5792 Nil!29544)) (tail!4067 Nil!29544)))))

(declare-fun b!2544693 () Bool)

(declare-fun res!1072180 () Bool)

(assert (=> b!2544693 (=> res!1072180 e!1608756)))

(assert (=> b!2544693 (= res!1072180 e!1608757)))

(declare-fun res!1072179 () Bool)

(assert (=> b!2544693 (=> (not res!1072179) (not e!1608757))))

(assert (=> b!2544693 (= res!1072179 lt!902364)))

(declare-fun b!2544694 () Bool)

(declare-fun res!1072182 () Bool)

(assert (=> b!2544694 (=> (not res!1072182) (not e!1608757))))

(declare-fun call!161402 () Bool)

(assert (=> b!2544694 (= res!1072182 (not call!161402))))

(declare-fun b!2544695 () Bool)

(assert (=> b!2544695 (= e!1608755 (= lt!902364 call!161402))))

(declare-fun b!2544696 () Bool)

(assert (=> b!2544696 (= e!1608758 (nullable!2496 lt!902336))))

(declare-fun b!2544697 () Bool)

(declare-fun e!1608761 () Bool)

(assert (=> b!2544697 (= e!1608760 e!1608761)))

(declare-fun res!1072178 () Bool)

(assert (=> b!2544697 (=> res!1072178 e!1608761)))

(assert (=> b!2544697 (= res!1072178 call!161402)))

(declare-fun b!2544698 () Bool)

(assert (=> b!2544698 (= e!1608755 e!1608759)))

(declare-fun c!407602 () Bool)

(assert (=> b!2544698 (= c!407602 ((_ is EmptyLang!7579) lt!902336))))

(declare-fun b!2544699 () Bool)

(assert (=> b!2544699 (= e!1608761 (not (= (head!5792 Nil!29544) (c!407517 lt!902336))))))

(declare-fun b!2544700 () Bool)

(assert (=> b!2544700 (= e!1608759 (not lt!902364))))

(declare-fun bm!161397 () Bool)

(assert (=> bm!161397 (= call!161402 (isEmpty!16988 Nil!29544))))

(declare-fun b!2544701 () Bool)

(declare-fun res!1072177 () Bool)

(assert (=> b!2544701 (=> res!1072177 e!1608761)))

(assert (=> b!2544701 (= res!1072177 (not (isEmpty!16988 (tail!4067 Nil!29544))))))

(assert (= (and d!722233 c!407600) b!2544696))

(assert (= (and d!722233 (not c!407600)) b!2544692))

(assert (= (and d!722233 c!407601) b!2544695))

(assert (= (and d!722233 (not c!407601)) b!2544698))

(assert (= (and b!2544698 c!407602) b!2544700))

(assert (= (and b!2544698 (not c!407602)) b!2544689))

(assert (= (and b!2544689 (not res!1072184)) b!2544693))

(assert (= (and b!2544693 res!1072179) b!2544694))

(assert (= (and b!2544694 res!1072182) b!2544690))

(assert (= (and b!2544690 res!1072183) b!2544688))

(assert (= (and b!2544693 (not res!1072180)) b!2544691))

(assert (= (and b!2544691 res!1072181) b!2544697))

(assert (= (and b!2544697 (not res!1072178)) b!2544701))

(assert (= (and b!2544701 (not res!1072177)) b!2544699))

(assert (= (or b!2544695 b!2544694 b!2544697) bm!161397))

(declare-fun m!2890001 () Bool)

(assert (=> d!722233 m!2890001))

(declare-fun m!2890003 () Bool)

(assert (=> d!722233 m!2890003))

(declare-fun m!2890005 () Bool)

(assert (=> b!2544690 m!2890005))

(assert (=> b!2544690 m!2890005))

(declare-fun m!2890007 () Bool)

(assert (=> b!2544690 m!2890007))

(assert (=> bm!161397 m!2890001))

(declare-fun m!2890009 () Bool)

(assert (=> b!2544692 m!2890009))

(assert (=> b!2544692 m!2890009))

(declare-fun m!2890011 () Bool)

(assert (=> b!2544692 m!2890011))

(assert (=> b!2544692 m!2890005))

(assert (=> b!2544692 m!2890011))

(assert (=> b!2544692 m!2890005))

(declare-fun m!2890013 () Bool)

(assert (=> b!2544692 m!2890013))

(assert (=> b!2544699 m!2890009))

(assert (=> b!2544688 m!2890009))

(assert (=> b!2544701 m!2890005))

(assert (=> b!2544701 m!2890005))

(assert (=> b!2544701 m!2890007))

(assert (=> b!2544696 m!2889853))

(assert (=> b!2544397 d!722233))

(declare-fun b!2544702 () Bool)

(declare-fun e!1608764 () Bool)

(assert (=> b!2544702 (= e!1608764 (= (head!5792 tl!4068) (c!407517 lt!902337)))))

(declare-fun b!2544703 () Bool)

(declare-fun res!1072192 () Bool)

(declare-fun e!1608763 () Bool)

(assert (=> b!2544703 (=> res!1072192 e!1608763)))

(assert (=> b!2544703 (= res!1072192 (not ((_ is ElementMatch!7579) lt!902337)))))

(declare-fun e!1608766 () Bool)

(assert (=> b!2544703 (= e!1608766 e!1608763)))

(declare-fun d!722239 () Bool)

(declare-fun e!1608762 () Bool)

(assert (=> d!722239 e!1608762))

(declare-fun c!407604 () Bool)

(assert (=> d!722239 (= c!407604 ((_ is EmptyExpr!7579) lt!902337))))

(declare-fun lt!902365 () Bool)

(declare-fun e!1608765 () Bool)

(assert (=> d!722239 (= lt!902365 e!1608765)))

(declare-fun c!407603 () Bool)

(assert (=> d!722239 (= c!407603 (isEmpty!16988 tl!4068))))

(assert (=> d!722239 (validRegex!3205 lt!902337)))

(assert (=> d!722239 (= (matchR!3526 lt!902337 tl!4068) lt!902365)))

(declare-fun b!2544704 () Bool)

(declare-fun res!1072191 () Bool)

(assert (=> b!2544704 (=> (not res!1072191) (not e!1608764))))

(assert (=> b!2544704 (= res!1072191 (isEmpty!16988 (tail!4067 tl!4068)))))

(declare-fun b!2544705 () Bool)

(declare-fun e!1608767 () Bool)

(assert (=> b!2544705 (= e!1608763 e!1608767)))

(declare-fun res!1072189 () Bool)

(assert (=> b!2544705 (=> (not res!1072189) (not e!1608767))))

(assert (=> b!2544705 (= res!1072189 (not lt!902365))))

(declare-fun b!2544706 () Bool)

(assert (=> b!2544706 (= e!1608765 (matchR!3526 (derivativeStep!2148 lt!902337 (head!5792 tl!4068)) (tail!4067 tl!4068)))))

(declare-fun b!2544707 () Bool)

(declare-fun res!1072188 () Bool)

(assert (=> b!2544707 (=> res!1072188 e!1608763)))

(assert (=> b!2544707 (= res!1072188 e!1608764)))

(declare-fun res!1072187 () Bool)

(assert (=> b!2544707 (=> (not res!1072187) (not e!1608764))))

(assert (=> b!2544707 (= res!1072187 lt!902365)))

(declare-fun b!2544708 () Bool)

(declare-fun res!1072190 () Bool)

(assert (=> b!2544708 (=> (not res!1072190) (not e!1608764))))

(declare-fun call!161403 () Bool)

(assert (=> b!2544708 (= res!1072190 (not call!161403))))

(declare-fun b!2544709 () Bool)

(assert (=> b!2544709 (= e!1608762 (= lt!902365 call!161403))))

(declare-fun b!2544710 () Bool)

(assert (=> b!2544710 (= e!1608765 (nullable!2496 lt!902337))))

(declare-fun b!2544711 () Bool)

(declare-fun e!1608768 () Bool)

(assert (=> b!2544711 (= e!1608767 e!1608768)))

(declare-fun res!1072186 () Bool)

(assert (=> b!2544711 (=> res!1072186 e!1608768)))

(assert (=> b!2544711 (= res!1072186 call!161403)))

(declare-fun b!2544712 () Bool)

(assert (=> b!2544712 (= e!1608762 e!1608766)))

(declare-fun c!407605 () Bool)

(assert (=> b!2544712 (= c!407605 ((_ is EmptyLang!7579) lt!902337))))

(declare-fun b!2544713 () Bool)

(assert (=> b!2544713 (= e!1608768 (not (= (head!5792 tl!4068) (c!407517 lt!902337))))))

(declare-fun b!2544714 () Bool)

(assert (=> b!2544714 (= e!1608766 (not lt!902365))))

(declare-fun bm!161398 () Bool)

(assert (=> bm!161398 (= call!161403 (isEmpty!16988 tl!4068))))

(declare-fun b!2544715 () Bool)

(declare-fun res!1072185 () Bool)

(assert (=> b!2544715 (=> res!1072185 e!1608768)))

(assert (=> b!2544715 (= res!1072185 (not (isEmpty!16988 (tail!4067 tl!4068))))))

(assert (= (and d!722239 c!407603) b!2544710))

(assert (= (and d!722239 (not c!407603)) b!2544706))

(assert (= (and d!722239 c!407604) b!2544709))

(assert (= (and d!722239 (not c!407604)) b!2544712))

(assert (= (and b!2544712 c!407605) b!2544714))

(assert (= (and b!2544712 (not c!407605)) b!2544703))

(assert (= (and b!2544703 (not res!1072192)) b!2544707))

(assert (= (and b!2544707 res!1072187) b!2544708))

(assert (= (and b!2544708 res!1072190) b!2544704))

(assert (= (and b!2544704 res!1072191) b!2544702))

(assert (= (and b!2544707 (not res!1072188)) b!2544705))

(assert (= (and b!2544705 res!1072189) b!2544711))

(assert (= (and b!2544711 (not res!1072186)) b!2544715))

(assert (= (and b!2544715 (not res!1072185)) b!2544713))

(assert (= (or b!2544709 b!2544708 b!2544711) bm!161398))

(declare-fun m!2890015 () Bool)

(assert (=> d!722239 m!2890015))

(assert (=> d!722239 m!2889903))

(declare-fun m!2890017 () Bool)

(assert (=> b!2544704 m!2890017))

(assert (=> b!2544704 m!2890017))

(declare-fun m!2890019 () Bool)

(assert (=> b!2544704 m!2890019))

(assert (=> bm!161398 m!2890015))

(declare-fun m!2890021 () Bool)

(assert (=> b!2544706 m!2890021))

(assert (=> b!2544706 m!2890021))

(declare-fun m!2890023 () Bool)

(assert (=> b!2544706 m!2890023))

(assert (=> b!2544706 m!2890017))

(assert (=> b!2544706 m!2890023))

(assert (=> b!2544706 m!2890017))

(declare-fun m!2890025 () Bool)

(assert (=> b!2544706 m!2890025))

(assert (=> b!2544713 m!2890021))

(assert (=> b!2544702 m!2890021))

(assert (=> b!2544715 m!2890017))

(assert (=> b!2544715 m!2890017))

(assert (=> b!2544715 m!2890019))

(declare-fun m!2890027 () Bool)

(assert (=> b!2544710 m!2890027))

(assert (=> b!2544397 d!722239))

(declare-fun d!722241 () Bool)

(assert (=> d!722241 (= (matchR!3526 lt!902337 tl!4068) (matchR!3526 (derivative!274 lt!902337 tl!4068) Nil!29544))))

(declare-fun lt!902368 () Unit!43347)

(declare-fun choose!15031 (Regex!7579 List!29644) Unit!43347)

(assert (=> d!722241 (= lt!902368 (choose!15031 lt!902337 tl!4068))))

(assert (=> d!722241 (validRegex!3205 lt!902337)))

(assert (=> d!722241 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!172 lt!902337 tl!4068) lt!902368)))

(declare-fun bs!469479 () Bool)

(assert (= bs!469479 d!722241))

(assert (=> bs!469479 m!2889903))

(declare-fun m!2890029 () Bool)

(assert (=> bs!469479 m!2890029))

(assert (=> bs!469479 m!2889865))

(assert (=> bs!469479 m!2889855))

(declare-fun m!2890031 () Bool)

(assert (=> bs!469479 m!2890031))

(assert (=> bs!469479 m!2889855))

(assert (=> b!2544397 d!722241))

(declare-fun b!2544727 () Bool)

(declare-fun e!1608771 () Bool)

(declare-fun tp!812457 () Bool)

(declare-fun tp!812459 () Bool)

(assert (=> b!2544727 (= e!1608771 (and tp!812457 tp!812459))))

(assert (=> b!2544398 (= tp!812401 e!1608771)))

(declare-fun b!2544728 () Bool)

(declare-fun tp!812456 () Bool)

(assert (=> b!2544728 (= e!1608771 tp!812456)))

(declare-fun b!2544726 () Bool)

(assert (=> b!2544726 (= e!1608771 tp_is_empty!13013)))

(declare-fun b!2544729 () Bool)

(declare-fun tp!812458 () Bool)

(declare-fun tp!812455 () Bool)

(assert (=> b!2544729 (= e!1608771 (and tp!812458 tp!812455))))

(assert (= (and b!2544398 ((_ is ElementMatch!7579) (regOne!15671 r!27340))) b!2544726))

(assert (= (and b!2544398 ((_ is Concat!12275) (regOne!15671 r!27340))) b!2544727))

(assert (= (and b!2544398 ((_ is Star!7579) (regOne!15671 r!27340))) b!2544728))

(assert (= (and b!2544398 ((_ is Union!7579) (regOne!15671 r!27340))) b!2544729))

(declare-fun b!2544731 () Bool)

(declare-fun e!1608772 () Bool)

(declare-fun tp!812462 () Bool)

(declare-fun tp!812464 () Bool)

(assert (=> b!2544731 (= e!1608772 (and tp!812462 tp!812464))))

(assert (=> b!2544398 (= tp!812403 e!1608772)))

(declare-fun b!2544732 () Bool)

(declare-fun tp!812461 () Bool)

(assert (=> b!2544732 (= e!1608772 tp!812461)))

(declare-fun b!2544730 () Bool)

(assert (=> b!2544730 (= e!1608772 tp_is_empty!13013)))

(declare-fun b!2544733 () Bool)

(declare-fun tp!812463 () Bool)

(declare-fun tp!812460 () Bool)

(assert (=> b!2544733 (= e!1608772 (and tp!812463 tp!812460))))

(assert (= (and b!2544398 ((_ is ElementMatch!7579) (regTwo!15671 r!27340))) b!2544730))

(assert (= (and b!2544398 ((_ is Concat!12275) (regTwo!15671 r!27340))) b!2544731))

(assert (= (and b!2544398 ((_ is Star!7579) (regTwo!15671 r!27340))) b!2544732))

(assert (= (and b!2544398 ((_ is Union!7579) (regTwo!15671 r!27340))) b!2544733))

(declare-fun b!2544735 () Bool)

(declare-fun e!1608773 () Bool)

(declare-fun tp!812467 () Bool)

(declare-fun tp!812469 () Bool)

(assert (=> b!2544735 (= e!1608773 (and tp!812467 tp!812469))))

(assert (=> b!2544399 (= tp!812405 e!1608773)))

(declare-fun b!2544736 () Bool)

(declare-fun tp!812466 () Bool)

(assert (=> b!2544736 (= e!1608773 tp!812466)))

(declare-fun b!2544734 () Bool)

(assert (=> b!2544734 (= e!1608773 tp_is_empty!13013)))

(declare-fun b!2544737 () Bool)

(declare-fun tp!812468 () Bool)

(declare-fun tp!812465 () Bool)

(assert (=> b!2544737 (= e!1608773 (and tp!812468 tp!812465))))

(assert (= (and b!2544399 ((_ is ElementMatch!7579) (reg!7908 r!27340))) b!2544734))

(assert (= (and b!2544399 ((_ is Concat!12275) (reg!7908 r!27340))) b!2544735))

(assert (= (and b!2544399 ((_ is Star!7579) (reg!7908 r!27340))) b!2544736))

(assert (= (and b!2544399 ((_ is Union!7579) (reg!7908 r!27340))) b!2544737))

(declare-fun b!2544739 () Bool)

(declare-fun e!1608774 () Bool)

(declare-fun tp!812472 () Bool)

(declare-fun tp!812474 () Bool)

(assert (=> b!2544739 (= e!1608774 (and tp!812472 tp!812474))))

(assert (=> b!2544390 (= tp!812406 e!1608774)))

(declare-fun b!2544740 () Bool)

(declare-fun tp!812471 () Bool)

(assert (=> b!2544740 (= e!1608774 tp!812471)))

(declare-fun b!2544738 () Bool)

(assert (=> b!2544738 (= e!1608774 tp_is_empty!13013)))

(declare-fun b!2544741 () Bool)

(declare-fun tp!812473 () Bool)

(declare-fun tp!812470 () Bool)

(assert (=> b!2544741 (= e!1608774 (and tp!812473 tp!812470))))

(assert (= (and b!2544390 ((_ is ElementMatch!7579) (regOne!15670 r!27340))) b!2544738))

(assert (= (and b!2544390 ((_ is Concat!12275) (regOne!15670 r!27340))) b!2544739))

(assert (= (and b!2544390 ((_ is Star!7579) (regOne!15670 r!27340))) b!2544740))

(assert (= (and b!2544390 ((_ is Union!7579) (regOne!15670 r!27340))) b!2544741))

(declare-fun b!2544743 () Bool)

(declare-fun e!1608775 () Bool)

(declare-fun tp!812477 () Bool)

(declare-fun tp!812479 () Bool)

(assert (=> b!2544743 (= e!1608775 (and tp!812477 tp!812479))))

(assert (=> b!2544390 (= tp!812402 e!1608775)))

(declare-fun b!2544744 () Bool)

(declare-fun tp!812476 () Bool)

(assert (=> b!2544744 (= e!1608775 tp!812476)))

(declare-fun b!2544742 () Bool)

(assert (=> b!2544742 (= e!1608775 tp_is_empty!13013)))

(declare-fun b!2544745 () Bool)

(declare-fun tp!812478 () Bool)

(declare-fun tp!812475 () Bool)

(assert (=> b!2544745 (= e!1608775 (and tp!812478 tp!812475))))

(assert (= (and b!2544390 ((_ is ElementMatch!7579) (regTwo!15670 r!27340))) b!2544742))

(assert (= (and b!2544390 ((_ is Concat!12275) (regTwo!15670 r!27340))) b!2544743))

(assert (= (and b!2544390 ((_ is Star!7579) (regTwo!15670 r!27340))) b!2544744))

(assert (= (and b!2544390 ((_ is Union!7579) (regTwo!15670 r!27340))) b!2544745))

(declare-fun b!2544750 () Bool)

(declare-fun e!1608778 () Bool)

(declare-fun tp!812482 () Bool)

(assert (=> b!2544750 (= e!1608778 (and tp_is_empty!13013 tp!812482))))

(assert (=> b!2544396 (= tp!812404 e!1608778)))

(assert (= (and b!2544396 ((_ is Cons!29544) (t!211343 tl!4068))) b!2544750))

(check-sat (not b!2544690) (not b!2544740) (not d!722233) (not b!2544750) (not b!2544736) (not bm!161398) (not b!2544728) (not b!2544463) (not b!2544688) (not b!2544727) (not bm!161382) (not b!2544733) (not b!2544732) (not d!722241) (not b!2544548) (not d!722229) (not b!2544735) (not b!2544737) (not bm!161355) (not b!2544741) (not b!2544706) (not b!2544739) (not b!2544729) (not b!2544745) (not bm!161385) (not bm!161354) tp_is_empty!13013 (not b!2544558) (not b!2544704) (not bm!161390) (not d!722211) (not b!2544423) (not b!2544731) (not d!722239) (not bm!161386) (not bm!161389) (not b!2544710) (not b!2544743) (not b!2544699) (not b!2544744) (not b!2544713) (not b!2544702) (not b!2544715) (not b!2544696) (not b!2544562) (not d!722213) (not d!722215) (not d!722199) (not d!722203) (not b!2544701) (not bm!161381) (not b!2544692) (not b!2544490) (not bm!161397))
(check-sat)
