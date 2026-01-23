; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87858 () Bool)

(assert start!87858)

(declare-fun b!1000279 () Bool)

(declare-fun e!641276 () Bool)

(declare-fun tp!304849 () Bool)

(declare-fun tp!304848 () Bool)

(assert (=> b!1000279 (= e!641276 (and tp!304849 tp!304848))))

(declare-fun b!1000280 () Bool)

(declare-fun tp_is_empty!5189 () Bool)

(assert (=> b!1000280 (= e!641276 tp_is_empty!5189)))

(declare-fun b!1000281 () Bool)

(declare-fun e!641275 () Bool)

(declare-fun e!641278 () Bool)

(assert (=> b!1000281 (= e!641275 (not e!641278))))

(declare-fun res!451648 () Bool)

(assert (=> b!1000281 (=> res!451648 e!641278)))

(declare-fun lt!351903 () Bool)

(declare-datatypes ((C!6116 0))(
  ( (C!6117 (val!3306 Int)) )
))
(declare-datatypes ((Regex!2773 0))(
  ( (ElementMatch!2773 (c!164684 C!6116)) (Concat!4606 (regOne!6058 Regex!2773) (regTwo!6058 Regex!2773)) (EmptyExpr!2773) (Star!2773 (reg!3102 Regex!2773)) (EmptyLang!2773) (Union!2773 (regOne!6059 Regex!2773) (regTwo!6059 Regex!2773)) )
))
(declare-fun r!15766 () Regex!2773)

(get-info :version)

(assert (=> b!1000281 (= res!451648 (or (not lt!351903) (and ((_ is Concat!4606) r!15766) ((_ is EmptyExpr!2773) (regOne!6058 r!15766))) (and ((_ is Concat!4606) r!15766) ((_ is EmptyExpr!2773) (regTwo!6058 r!15766))) ((_ is Concat!4606) r!15766) (not ((_ is Union!2773) r!15766))))))

(declare-datatypes ((List!10003 0))(
  ( (Nil!9987) (Cons!9987 (h!15388 C!6116) (t!101049 List!10003)) )
))
(declare-fun s!10566 () List!10003)

(declare-fun matchRSpec!572 (Regex!2773 List!10003) Bool)

(assert (=> b!1000281 (= lt!351903 (matchRSpec!572 r!15766 s!10566))))

(declare-fun matchR!1309 (Regex!2773 List!10003) Bool)

(assert (=> b!1000281 (= lt!351903 (matchR!1309 r!15766 s!10566))))

(declare-datatypes ((Unit!15205 0))(
  ( (Unit!15206) )
))
(declare-fun lt!351907 () Unit!15205)

(declare-fun mainMatchTheorem!572 (Regex!2773 List!10003) Unit!15205)

(assert (=> b!1000281 (= lt!351907 (mainMatchTheorem!572 r!15766 s!10566))))

(declare-fun b!1000282 () Bool)

(declare-fun e!641279 () Bool)

(declare-fun lt!351909 () Regex!2773)

(declare-fun validRegex!1242 (Regex!2773) Bool)

(assert (=> b!1000282 (= e!641279 (validRegex!1242 lt!351909))))

(declare-fun b!1000284 () Bool)

(declare-fun e!641274 () Bool)

(assert (=> b!1000284 (= e!641278 e!641274)))

(declare-fun res!451646 () Bool)

(assert (=> b!1000284 (=> res!451646 e!641274)))

(declare-fun lt!351911 () Bool)

(assert (=> b!1000284 (= res!451646 lt!351911)))

(declare-fun e!641272 () Bool)

(assert (=> b!1000284 e!641272))

(declare-fun res!451649 () Bool)

(assert (=> b!1000284 (=> res!451649 e!641272)))

(assert (=> b!1000284 (= res!451649 lt!351911)))

(assert (=> b!1000284 (= lt!351911 (matchR!1309 (regOne!6059 r!15766) s!10566))))

(declare-fun lt!351905 () Unit!15205)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!80 (Regex!2773 Regex!2773 List!10003) Unit!15205)

(assert (=> b!1000284 (= lt!351905 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!80 (regOne!6059 r!15766) (regTwo!6059 r!15766) s!10566))))

(declare-fun b!1000285 () Bool)

(declare-fun tp!304847 () Bool)

(assert (=> b!1000285 (= e!641276 tp!304847)))

(declare-fun b!1000286 () Bool)

(assert (=> b!1000286 (= e!641272 (matchR!1309 (regTwo!6059 r!15766) s!10566))))

(declare-fun b!1000287 () Bool)

(declare-fun tp!304850 () Bool)

(declare-fun tp!304851 () Bool)

(assert (=> b!1000287 (= e!641276 (and tp!304850 tp!304851))))

(declare-fun b!1000288 () Bool)

(declare-fun e!641273 () Bool)

(declare-fun tp!304852 () Bool)

(assert (=> b!1000288 (= e!641273 (and tp_is_empty!5189 tp!304852))))

(declare-fun b!1000289 () Bool)

(declare-fun e!641277 () Bool)

(assert (=> b!1000289 (= e!641274 e!641277)))

(declare-fun res!451645 () Bool)

(assert (=> b!1000289 (=> res!451645 e!641277)))

(declare-fun lt!351908 () Bool)

(assert (=> b!1000289 (= res!451645 (not lt!351908))))

(declare-fun lt!351904 () Bool)

(assert (=> b!1000289 (= lt!351904 lt!351908)))

(declare-fun lt!351910 () Regex!2773)

(assert (=> b!1000289 (= lt!351908 (matchR!1309 lt!351910 s!10566))))

(assert (=> b!1000289 (= lt!351904 (matchR!1309 (regTwo!6059 r!15766) s!10566))))

(declare-fun removeUselessConcat!366 (Regex!2773) Regex!2773)

(assert (=> b!1000289 (= lt!351910 (removeUselessConcat!366 (regTwo!6059 r!15766)))))

(declare-fun lt!351906 () Unit!15205)

(declare-fun lemmaRemoveUselessConcatSound!212 (Regex!2773 List!10003) Unit!15205)

(assert (=> b!1000289 (= lt!351906 (lemmaRemoveUselessConcatSound!212 (regTwo!6059 r!15766) s!10566))))

(declare-fun res!451650 () Bool)

(assert (=> start!87858 (=> (not res!451650) (not e!641275))))

(assert (=> start!87858 (= res!451650 (validRegex!1242 r!15766))))

(assert (=> start!87858 e!641275))

(assert (=> start!87858 e!641276))

(assert (=> start!87858 e!641273))

(declare-fun b!1000283 () Bool)

(assert (=> b!1000283 (= e!641277 e!641279)))

(declare-fun res!451647 () Bool)

(assert (=> b!1000283 (=> (not res!451647) (not e!641279))))

(assert (=> b!1000283 (= res!451647 (validRegex!1242 lt!351910))))

(assert (=> b!1000283 (= lt!351909 (removeUselessConcat!366 (regOne!6059 r!15766)))))

(assert (= (and start!87858 res!451650) b!1000281))

(assert (= (and b!1000281 (not res!451648)) b!1000284))

(assert (= (and b!1000284 (not res!451649)) b!1000286))

(assert (= (and b!1000284 (not res!451646)) b!1000289))

(assert (= (and b!1000289 (not res!451645)) b!1000283))

(assert (= (and b!1000283 res!451647) b!1000282))

(assert (= (and start!87858 ((_ is ElementMatch!2773) r!15766)) b!1000280))

(assert (= (and start!87858 ((_ is Concat!4606) r!15766)) b!1000287))

(assert (= (and start!87858 ((_ is Star!2773) r!15766)) b!1000285))

(assert (= (and start!87858 ((_ is Union!2773) r!15766)) b!1000279))

(assert (= (and start!87858 ((_ is Cons!9987) s!10566)) b!1000288))

(declare-fun m!1189723 () Bool)

(assert (=> b!1000284 m!1189723))

(declare-fun m!1189725 () Bool)

(assert (=> b!1000284 m!1189725))

(declare-fun m!1189727 () Bool)

(assert (=> start!87858 m!1189727))

(declare-fun m!1189729 () Bool)

(assert (=> b!1000286 m!1189729))

(declare-fun m!1189731 () Bool)

(assert (=> b!1000281 m!1189731))

(declare-fun m!1189733 () Bool)

(assert (=> b!1000281 m!1189733))

(declare-fun m!1189735 () Bool)

(assert (=> b!1000281 m!1189735))

(declare-fun m!1189737 () Bool)

(assert (=> b!1000283 m!1189737))

(declare-fun m!1189739 () Bool)

(assert (=> b!1000283 m!1189739))

(declare-fun m!1189741 () Bool)

(assert (=> b!1000282 m!1189741))

(declare-fun m!1189743 () Bool)

(assert (=> b!1000289 m!1189743))

(assert (=> b!1000289 m!1189729))

(declare-fun m!1189745 () Bool)

(assert (=> b!1000289 m!1189745))

(declare-fun m!1189747 () Bool)

(assert (=> b!1000289 m!1189747))

(check-sat (not b!1000288) (not start!87858) (not b!1000285) (not b!1000286) tp_is_empty!5189 (not b!1000279) (not b!1000281) (not b!1000283) (not b!1000289) (not b!1000282) (not b!1000287) (not b!1000284))
(check-sat)
(get-model)

(declare-fun b!1000308 () Bool)

(declare-fun e!641298 () Bool)

(declare-fun call!66443 () Bool)

(assert (=> b!1000308 (= e!641298 call!66443)))

(declare-fun b!1000309 () Bool)

(declare-fun e!641297 () Bool)

(declare-fun e!641300 () Bool)

(assert (=> b!1000309 (= e!641297 e!641300)))

(declare-fun res!451664 () Bool)

(assert (=> b!1000309 (=> (not res!451664) (not e!641300))))

(declare-fun call!66442 () Bool)

(assert (=> b!1000309 (= res!451664 call!66442)))

(declare-fun b!1000310 () Bool)

(declare-fun e!641296 () Bool)

(declare-fun e!641295 () Bool)

(assert (=> b!1000310 (= e!641296 e!641295)))

(declare-fun res!451663 () Bool)

(declare-fun nullable!887 (Regex!2773) Bool)

(assert (=> b!1000310 (= res!451663 (not (nullable!887 (reg!3102 lt!351910))))))

(assert (=> b!1000310 (=> (not res!451663) (not e!641295))))

(declare-fun b!1000311 () Bool)

(declare-fun e!641294 () Bool)

(assert (=> b!1000311 (= e!641294 e!641296)))

(declare-fun c!164690 () Bool)

(assert (=> b!1000311 (= c!164690 ((_ is Star!2773) lt!351910))))

(declare-fun bm!66437 () Bool)

(declare-fun call!66444 () Bool)

(declare-fun c!164689 () Bool)

(assert (=> bm!66437 (= call!66444 (validRegex!1242 (ite c!164690 (reg!3102 lt!351910) (ite c!164689 (regTwo!6059 lt!351910) (regTwo!6058 lt!351910)))))))

(declare-fun bm!66438 () Bool)

(assert (=> bm!66438 (= call!66442 (validRegex!1242 (ite c!164689 (regOne!6059 lt!351910) (regOne!6058 lt!351910))))))

(declare-fun b!1000312 () Bool)

(assert (=> b!1000312 (= e!641295 call!66444)))

(declare-fun b!1000313 () Bool)

(declare-fun res!451665 () Bool)

(assert (=> b!1000313 (=> res!451665 e!641297)))

(assert (=> b!1000313 (= res!451665 (not ((_ is Concat!4606) lt!351910)))))

(declare-fun e!641299 () Bool)

(assert (=> b!1000313 (= e!641299 e!641297)))

(declare-fun d!291234 () Bool)

(declare-fun res!451661 () Bool)

(assert (=> d!291234 (=> res!451661 e!641294)))

(assert (=> d!291234 (= res!451661 ((_ is ElementMatch!2773) lt!351910))))

(assert (=> d!291234 (= (validRegex!1242 lt!351910) e!641294)))

(declare-fun bm!66439 () Bool)

(assert (=> bm!66439 (= call!66443 call!66444)))

(declare-fun b!1000314 () Bool)

(declare-fun res!451662 () Bool)

(assert (=> b!1000314 (=> (not res!451662) (not e!641298))))

(assert (=> b!1000314 (= res!451662 call!66442)))

(assert (=> b!1000314 (= e!641299 e!641298)))

(declare-fun b!1000315 () Bool)

(assert (=> b!1000315 (= e!641300 call!66443)))

(declare-fun b!1000316 () Bool)

(assert (=> b!1000316 (= e!641296 e!641299)))

(assert (=> b!1000316 (= c!164689 ((_ is Union!2773) lt!351910))))

(assert (= (and d!291234 (not res!451661)) b!1000311))

(assert (= (and b!1000311 c!164690) b!1000310))

(assert (= (and b!1000311 (not c!164690)) b!1000316))

(assert (= (and b!1000310 res!451663) b!1000312))

(assert (= (and b!1000316 c!164689) b!1000314))

(assert (= (and b!1000316 (not c!164689)) b!1000313))

(assert (= (and b!1000314 res!451662) b!1000308))

(assert (= (and b!1000313 (not res!451665)) b!1000309))

(assert (= (and b!1000309 res!451664) b!1000315))

(assert (= (or b!1000308 b!1000315) bm!66439))

(assert (= (or b!1000314 b!1000309) bm!66438))

(assert (= (or b!1000312 bm!66439) bm!66437))

(declare-fun m!1189749 () Bool)

(assert (=> b!1000310 m!1189749))

(declare-fun m!1189751 () Bool)

(assert (=> bm!66437 m!1189751))

(declare-fun m!1189753 () Bool)

(assert (=> bm!66438 m!1189753))

(assert (=> b!1000283 d!291234))

(declare-fun b!1000399 () Bool)

(declare-fun e!641350 () Regex!2773)

(declare-fun e!641353 () Regex!2773)

(assert (=> b!1000399 (= e!641350 e!641353)))

(declare-fun c!164716 () Bool)

(assert (=> b!1000399 (= c!164716 ((_ is Union!2773) (regOne!6059 r!15766)))))

(declare-fun b!1000400 () Bool)

(declare-fun e!641352 () Regex!2773)

(declare-fun call!66460 () Regex!2773)

(assert (=> b!1000400 (= e!641352 call!66460)))

(declare-fun d!291238 () Bool)

(declare-fun e!641351 () Bool)

(assert (=> d!291238 e!641351))

(declare-fun res!451702 () Bool)

(assert (=> d!291238 (=> (not res!451702) (not e!641351))))

(declare-fun lt!351917 () Regex!2773)

(assert (=> d!291238 (= res!451702 (validRegex!1242 lt!351917))))

(declare-fun e!641348 () Regex!2773)

(assert (=> d!291238 (= lt!351917 e!641348)))

(declare-fun c!164718 () Bool)

(assert (=> d!291238 (= c!164718 (and ((_ is Concat!4606) (regOne!6059 r!15766)) ((_ is EmptyExpr!2773) (regOne!6058 (regOne!6059 r!15766)))))))

(assert (=> d!291238 (validRegex!1242 (regOne!6059 r!15766))))

(assert (=> d!291238 (= (removeUselessConcat!366 (regOne!6059 r!15766)) lt!351917)))

(declare-fun b!1000401 () Bool)

(assert (=> b!1000401 (= e!641351 (= (nullable!887 lt!351917) (nullable!887 (regOne!6059 r!15766))))))

(declare-fun b!1000402 () Bool)

(assert (=> b!1000402 (= e!641348 e!641352)))

(declare-fun c!164717 () Bool)

(assert (=> b!1000402 (= c!164717 (and ((_ is Concat!4606) (regOne!6059 r!15766)) ((_ is EmptyExpr!2773) (regTwo!6058 (regOne!6059 r!15766)))))))

(declare-fun b!1000403 () Bool)

(declare-fun c!164715 () Bool)

(assert (=> b!1000403 (= c!164715 ((_ is Concat!4606) (regOne!6059 r!15766)))))

(assert (=> b!1000403 (= e!641352 e!641350)))

(declare-fun bm!66453 () Bool)

(declare-fun call!66459 () Regex!2773)

(assert (=> bm!66453 (= call!66459 (removeUselessConcat!366 (ite c!164715 (regTwo!6058 (regOne!6059 r!15766)) (ite c!164716 (regTwo!6059 (regOne!6059 r!15766)) (reg!3102 (regOne!6059 r!15766))))))))

(declare-fun b!1000404 () Bool)

(declare-fun call!66462 () Regex!2773)

(declare-fun call!66458 () Regex!2773)

(assert (=> b!1000404 (= e!641353 (Union!2773 call!66462 call!66458))))

(declare-fun bm!66454 () Bool)

(assert (=> bm!66454 (= call!66462 call!66460)))

(declare-fun b!1000405 () Bool)

(declare-fun e!641349 () Regex!2773)

(assert (=> b!1000405 (= e!641349 (Star!2773 call!66458))))

(declare-fun b!1000406 () Bool)

(assert (=> b!1000406 (= e!641349 (regOne!6059 r!15766))))

(declare-fun bm!66455 () Bool)

(declare-fun call!66461 () Regex!2773)

(assert (=> bm!66455 (= call!66460 call!66461)))

(declare-fun bm!66456 () Bool)

(assert (=> bm!66456 (= call!66461 (removeUselessConcat!366 (ite c!164718 (regTwo!6058 (regOne!6059 r!15766)) (ite (or c!164717 c!164715) (regOne!6058 (regOne!6059 r!15766)) (regOne!6059 (regOne!6059 r!15766))))))))

(declare-fun bm!66457 () Bool)

(assert (=> bm!66457 (= call!66458 call!66459)))

(declare-fun b!1000407 () Bool)

(assert (=> b!1000407 (= e!641350 (Concat!4606 call!66462 call!66459))))

(declare-fun b!1000408 () Bool)

(declare-fun c!164714 () Bool)

(assert (=> b!1000408 (= c!164714 ((_ is Star!2773) (regOne!6059 r!15766)))))

(assert (=> b!1000408 (= e!641353 e!641349)))

(declare-fun b!1000409 () Bool)

(assert (=> b!1000409 (= e!641348 call!66461)))

(assert (= (and d!291238 c!164718) b!1000409))

(assert (= (and d!291238 (not c!164718)) b!1000402))

(assert (= (and b!1000402 c!164717) b!1000400))

(assert (= (and b!1000402 (not c!164717)) b!1000403))

(assert (= (and b!1000403 c!164715) b!1000407))

(assert (= (and b!1000403 (not c!164715)) b!1000399))

(assert (= (and b!1000399 c!164716) b!1000404))

(assert (= (and b!1000399 (not c!164716)) b!1000408))

(assert (= (and b!1000408 c!164714) b!1000405))

(assert (= (and b!1000408 (not c!164714)) b!1000406))

(assert (= (or b!1000404 b!1000405) bm!66457))

(assert (= (or b!1000407 bm!66457) bm!66453))

(assert (= (or b!1000407 b!1000404) bm!66454))

(assert (= (or b!1000400 bm!66454) bm!66455))

(assert (= (or b!1000409 bm!66455) bm!66456))

(assert (= (and d!291238 res!451702) b!1000401))

(declare-fun m!1189771 () Bool)

(assert (=> d!291238 m!1189771))

(declare-fun m!1189773 () Bool)

(assert (=> d!291238 m!1189773))

(declare-fun m!1189775 () Bool)

(assert (=> b!1000401 m!1189775))

(declare-fun m!1189777 () Bool)

(assert (=> b!1000401 m!1189777))

(declare-fun m!1189779 () Bool)

(assert (=> bm!66453 m!1189779))

(declare-fun m!1189781 () Bool)

(assert (=> bm!66456 m!1189781))

(assert (=> b!1000283 d!291238))

(declare-fun b!1000410 () Bool)

(declare-fun e!641358 () Bool)

(declare-fun call!66470 () Bool)

(assert (=> b!1000410 (= e!641358 call!66470)))

(declare-fun b!1000411 () Bool)

(declare-fun e!641357 () Bool)

(declare-fun e!641360 () Bool)

(assert (=> b!1000411 (= e!641357 e!641360)))

(declare-fun res!451706 () Bool)

(assert (=> b!1000411 (=> (not res!451706) (not e!641360))))

(declare-fun call!66469 () Bool)

(assert (=> b!1000411 (= res!451706 call!66469)))

(declare-fun b!1000412 () Bool)

(declare-fun e!641356 () Bool)

(declare-fun e!641355 () Bool)

(assert (=> b!1000412 (= e!641356 e!641355)))

(declare-fun res!451705 () Bool)

(assert (=> b!1000412 (= res!451705 (not (nullable!887 (reg!3102 r!15766))))))

(assert (=> b!1000412 (=> (not res!451705) (not e!641355))))

(declare-fun b!1000413 () Bool)

(declare-fun e!641354 () Bool)

(assert (=> b!1000413 (= e!641354 e!641356)))

(declare-fun c!164720 () Bool)

(assert (=> b!1000413 (= c!164720 ((_ is Star!2773) r!15766))))

(declare-fun c!164719 () Bool)

(declare-fun call!66471 () Bool)

(declare-fun bm!66464 () Bool)

(assert (=> bm!66464 (= call!66471 (validRegex!1242 (ite c!164720 (reg!3102 r!15766) (ite c!164719 (regTwo!6059 r!15766) (regTwo!6058 r!15766)))))))

(declare-fun bm!66465 () Bool)

(assert (=> bm!66465 (= call!66469 (validRegex!1242 (ite c!164719 (regOne!6059 r!15766) (regOne!6058 r!15766))))))

(declare-fun b!1000414 () Bool)

(assert (=> b!1000414 (= e!641355 call!66471)))

(declare-fun b!1000415 () Bool)

(declare-fun res!451707 () Bool)

(assert (=> b!1000415 (=> res!451707 e!641357)))

(assert (=> b!1000415 (= res!451707 (not ((_ is Concat!4606) r!15766)))))

(declare-fun e!641359 () Bool)

(assert (=> b!1000415 (= e!641359 e!641357)))

(declare-fun d!291242 () Bool)

(declare-fun res!451703 () Bool)

(assert (=> d!291242 (=> res!451703 e!641354)))

(assert (=> d!291242 (= res!451703 ((_ is ElementMatch!2773) r!15766))))

(assert (=> d!291242 (= (validRegex!1242 r!15766) e!641354)))

(declare-fun bm!66466 () Bool)

(assert (=> bm!66466 (= call!66470 call!66471)))

(declare-fun b!1000416 () Bool)

(declare-fun res!451704 () Bool)

(assert (=> b!1000416 (=> (not res!451704) (not e!641358))))

(assert (=> b!1000416 (= res!451704 call!66469)))

(assert (=> b!1000416 (= e!641359 e!641358)))

(declare-fun b!1000417 () Bool)

(assert (=> b!1000417 (= e!641360 call!66470)))

(declare-fun b!1000418 () Bool)

(assert (=> b!1000418 (= e!641356 e!641359)))

(assert (=> b!1000418 (= c!164719 ((_ is Union!2773) r!15766))))

(assert (= (and d!291242 (not res!451703)) b!1000413))

(assert (= (and b!1000413 c!164720) b!1000412))

(assert (= (and b!1000413 (not c!164720)) b!1000418))

(assert (= (and b!1000412 res!451705) b!1000414))

(assert (= (and b!1000418 c!164719) b!1000416))

(assert (= (and b!1000418 (not c!164719)) b!1000415))

(assert (= (and b!1000416 res!451704) b!1000410))

(assert (= (and b!1000415 (not res!451707)) b!1000411))

(assert (= (and b!1000411 res!451706) b!1000417))

(assert (= (or b!1000410 b!1000417) bm!66466))

(assert (= (or b!1000416 b!1000411) bm!66465))

(assert (= (or b!1000414 bm!66466) bm!66464))

(declare-fun m!1189783 () Bool)

(assert (=> b!1000412 m!1189783))

(declare-fun m!1189785 () Bool)

(assert (=> bm!66464 m!1189785))

(declare-fun m!1189787 () Bool)

(assert (=> bm!66465 m!1189787))

(assert (=> start!87858 d!291242))

(declare-fun b!1000489 () Bool)

(declare-fun res!451738 () Bool)

(declare-fun e!641400 () Bool)

(assert (=> b!1000489 (=> res!451738 e!641400)))

(declare-fun isEmpty!6325 (List!10003) Bool)

(declare-fun tail!1408 (List!10003) List!10003)

(assert (=> b!1000489 (= res!451738 (not (isEmpty!6325 (tail!1408 s!10566))))))

(declare-fun d!291244 () Bool)

(declare-fun e!641405 () Bool)

(assert (=> d!291244 e!641405))

(declare-fun c!164744 () Bool)

(assert (=> d!291244 (= c!164744 ((_ is EmptyExpr!2773) lt!351910))))

(declare-fun lt!351923 () Bool)

(declare-fun e!641401 () Bool)

(assert (=> d!291244 (= lt!351923 e!641401)))

(declare-fun c!164746 () Bool)

(assert (=> d!291244 (= c!164746 (isEmpty!6325 s!10566))))

(assert (=> d!291244 (validRegex!1242 lt!351910)))

(assert (=> d!291244 (= (matchR!1309 lt!351910 s!10566) lt!351923)))

(declare-fun b!1000490 () Bool)

(declare-fun res!451736 () Bool)

(declare-fun e!641404 () Bool)

(assert (=> b!1000490 (=> res!451736 e!641404)))

(declare-fun e!641406 () Bool)

(assert (=> b!1000490 (= res!451736 e!641406)))

(declare-fun res!451734 () Bool)

(assert (=> b!1000490 (=> (not res!451734) (not e!641406))))

(assert (=> b!1000490 (= res!451734 lt!351923)))

(declare-fun b!1000491 () Bool)

(declare-fun e!641402 () Bool)

(assert (=> b!1000491 (= e!641402 e!641400)))

(declare-fun res!451733 () Bool)

(assert (=> b!1000491 (=> res!451733 e!641400)))

(declare-fun call!66492 () Bool)

(assert (=> b!1000491 (= res!451733 call!66492)))

(declare-fun b!1000492 () Bool)

(assert (=> b!1000492 (= e!641405 (= lt!351923 call!66492))))

(declare-fun b!1000493 () Bool)

(declare-fun res!451735 () Bool)

(assert (=> b!1000493 (=> (not res!451735) (not e!641406))))

(assert (=> b!1000493 (= res!451735 (not call!66492))))

(declare-fun bm!66487 () Bool)

(assert (=> bm!66487 (= call!66492 (isEmpty!6325 s!10566))))

(declare-fun b!1000494 () Bool)

(declare-fun res!451732 () Bool)

(assert (=> b!1000494 (=> (not res!451732) (not e!641406))))

(assert (=> b!1000494 (= res!451732 (isEmpty!6325 (tail!1408 s!10566)))))

(declare-fun b!1000495 () Bool)

(declare-fun res!451737 () Bool)

(assert (=> b!1000495 (=> res!451737 e!641404)))

(assert (=> b!1000495 (= res!451737 (not ((_ is ElementMatch!2773) lt!351910)))))

(declare-fun e!641403 () Bool)

(assert (=> b!1000495 (= e!641403 e!641404)))

(declare-fun b!1000496 () Bool)

(assert (=> b!1000496 (= e!641401 (nullable!887 lt!351910))))

(declare-fun b!1000497 () Bool)

(assert (=> b!1000497 (= e!641405 e!641403)))

(declare-fun c!164745 () Bool)

(assert (=> b!1000497 (= c!164745 ((_ is EmptyLang!2773) lt!351910))))

(declare-fun b!1000498 () Bool)

(declare-fun derivativeStep!693 (Regex!2773 C!6116) Regex!2773)

(declare-fun head!1846 (List!10003) C!6116)

(assert (=> b!1000498 (= e!641401 (matchR!1309 (derivativeStep!693 lt!351910 (head!1846 s!10566)) (tail!1408 s!10566)))))

(declare-fun b!1000499 () Bool)

(assert (=> b!1000499 (= e!641406 (= (head!1846 s!10566) (c!164684 lt!351910)))))

(declare-fun b!1000500 () Bool)

(assert (=> b!1000500 (= e!641403 (not lt!351923))))

(declare-fun b!1000501 () Bool)

(assert (=> b!1000501 (= e!641400 (not (= (head!1846 s!10566) (c!164684 lt!351910))))))

(declare-fun b!1000502 () Bool)

(assert (=> b!1000502 (= e!641404 e!641402)))

(declare-fun res!451739 () Bool)

(assert (=> b!1000502 (=> (not res!451739) (not e!641402))))

(assert (=> b!1000502 (= res!451739 (not lt!351923))))

(assert (= (and d!291244 c!164746) b!1000496))

(assert (= (and d!291244 (not c!164746)) b!1000498))

(assert (= (and d!291244 c!164744) b!1000492))

(assert (= (and d!291244 (not c!164744)) b!1000497))

(assert (= (and b!1000497 c!164745) b!1000500))

(assert (= (and b!1000497 (not c!164745)) b!1000495))

(assert (= (and b!1000495 (not res!451737)) b!1000490))

(assert (= (and b!1000490 res!451734) b!1000493))

(assert (= (and b!1000493 res!451735) b!1000494))

(assert (= (and b!1000494 res!451732) b!1000499))

(assert (= (and b!1000490 (not res!451736)) b!1000502))

(assert (= (and b!1000502 res!451739) b!1000491))

(assert (= (and b!1000491 (not res!451733)) b!1000489))

(assert (= (and b!1000489 (not res!451738)) b!1000501))

(assert (= (or b!1000492 b!1000491 b!1000493) bm!66487))

(declare-fun m!1189807 () Bool)

(assert (=> b!1000494 m!1189807))

(assert (=> b!1000494 m!1189807))

(declare-fun m!1189809 () Bool)

(assert (=> b!1000494 m!1189809))

(assert (=> b!1000489 m!1189807))

(assert (=> b!1000489 m!1189807))

(assert (=> b!1000489 m!1189809))

(declare-fun m!1189811 () Bool)

(assert (=> d!291244 m!1189811))

(assert (=> d!291244 m!1189737))

(declare-fun m!1189813 () Bool)

(assert (=> b!1000499 m!1189813))

(assert (=> bm!66487 m!1189811))

(assert (=> b!1000501 m!1189813))

(assert (=> b!1000498 m!1189813))

(assert (=> b!1000498 m!1189813))

(declare-fun m!1189815 () Bool)

(assert (=> b!1000498 m!1189815))

(assert (=> b!1000498 m!1189807))

(assert (=> b!1000498 m!1189815))

(assert (=> b!1000498 m!1189807))

(declare-fun m!1189817 () Bool)

(assert (=> b!1000498 m!1189817))

(declare-fun m!1189819 () Bool)

(assert (=> b!1000496 m!1189819))

(assert (=> b!1000289 d!291244))

(declare-fun b!1000512 () Bool)

(declare-fun res!451751 () Bool)

(declare-fun e!641414 () Bool)

(assert (=> b!1000512 (=> res!451751 e!641414)))

(assert (=> b!1000512 (= res!451751 (not (isEmpty!6325 (tail!1408 s!10566))))))

(declare-fun d!291250 () Bool)

(declare-fun e!641419 () Bool)

(assert (=> d!291250 e!641419))

(declare-fun c!164749 () Bool)

(assert (=> d!291250 (= c!164749 ((_ is EmptyExpr!2773) (regTwo!6059 r!15766)))))

(declare-fun lt!351924 () Bool)

(declare-fun e!641415 () Bool)

(assert (=> d!291250 (= lt!351924 e!641415)))

(declare-fun c!164751 () Bool)

(assert (=> d!291250 (= c!164751 (isEmpty!6325 s!10566))))

(assert (=> d!291250 (validRegex!1242 (regTwo!6059 r!15766))))

(assert (=> d!291250 (= (matchR!1309 (regTwo!6059 r!15766) s!10566) lt!351924)))

(declare-fun b!1000513 () Bool)

(declare-fun res!451749 () Bool)

(declare-fun e!641418 () Bool)

(assert (=> b!1000513 (=> res!451749 e!641418)))

(declare-fun e!641420 () Bool)

(assert (=> b!1000513 (= res!451749 e!641420)))

(declare-fun res!451747 () Bool)

(assert (=> b!1000513 (=> (not res!451747) (not e!641420))))

(assert (=> b!1000513 (= res!451747 lt!351924)))

(declare-fun b!1000514 () Bool)

(declare-fun e!641416 () Bool)

(assert (=> b!1000514 (= e!641416 e!641414)))

(declare-fun res!451746 () Bool)

(assert (=> b!1000514 (=> res!451746 e!641414)))

(declare-fun call!66496 () Bool)

(assert (=> b!1000514 (= res!451746 call!66496)))

(declare-fun b!1000515 () Bool)

(assert (=> b!1000515 (= e!641419 (= lt!351924 call!66496))))

(declare-fun b!1000516 () Bool)

(declare-fun res!451748 () Bool)

(assert (=> b!1000516 (=> (not res!451748) (not e!641420))))

(assert (=> b!1000516 (= res!451748 (not call!66496))))

(declare-fun bm!66491 () Bool)

(assert (=> bm!66491 (= call!66496 (isEmpty!6325 s!10566))))

(declare-fun b!1000517 () Bool)

(declare-fun res!451745 () Bool)

(assert (=> b!1000517 (=> (not res!451745) (not e!641420))))

(assert (=> b!1000517 (= res!451745 (isEmpty!6325 (tail!1408 s!10566)))))

(declare-fun b!1000518 () Bool)

(declare-fun res!451750 () Bool)

(assert (=> b!1000518 (=> res!451750 e!641418)))

(assert (=> b!1000518 (= res!451750 (not ((_ is ElementMatch!2773) (regTwo!6059 r!15766))))))

(declare-fun e!641417 () Bool)

(assert (=> b!1000518 (= e!641417 e!641418)))

(declare-fun b!1000519 () Bool)

(assert (=> b!1000519 (= e!641415 (nullable!887 (regTwo!6059 r!15766)))))

(declare-fun b!1000520 () Bool)

(assert (=> b!1000520 (= e!641419 e!641417)))

(declare-fun c!164750 () Bool)

(assert (=> b!1000520 (= c!164750 ((_ is EmptyLang!2773) (regTwo!6059 r!15766)))))

(declare-fun b!1000521 () Bool)

(assert (=> b!1000521 (= e!641415 (matchR!1309 (derivativeStep!693 (regTwo!6059 r!15766) (head!1846 s!10566)) (tail!1408 s!10566)))))

(declare-fun b!1000522 () Bool)

(assert (=> b!1000522 (= e!641420 (= (head!1846 s!10566) (c!164684 (regTwo!6059 r!15766))))))

(declare-fun b!1000523 () Bool)

(assert (=> b!1000523 (= e!641417 (not lt!351924))))

(declare-fun b!1000524 () Bool)

(assert (=> b!1000524 (= e!641414 (not (= (head!1846 s!10566) (c!164684 (regTwo!6059 r!15766)))))))

(declare-fun b!1000525 () Bool)

(assert (=> b!1000525 (= e!641418 e!641416)))

(declare-fun res!451752 () Bool)

(assert (=> b!1000525 (=> (not res!451752) (not e!641416))))

(assert (=> b!1000525 (= res!451752 (not lt!351924))))

(assert (= (and d!291250 c!164751) b!1000519))

(assert (= (and d!291250 (not c!164751)) b!1000521))

(assert (= (and d!291250 c!164749) b!1000515))

(assert (= (and d!291250 (not c!164749)) b!1000520))

(assert (= (and b!1000520 c!164750) b!1000523))

(assert (= (and b!1000520 (not c!164750)) b!1000518))

(assert (= (and b!1000518 (not res!451750)) b!1000513))

(assert (= (and b!1000513 res!451747) b!1000516))

(assert (= (and b!1000516 res!451748) b!1000517))

(assert (= (and b!1000517 res!451745) b!1000522))

(assert (= (and b!1000513 (not res!451749)) b!1000525))

(assert (= (and b!1000525 res!451752) b!1000514))

(assert (= (and b!1000514 (not res!451746)) b!1000512))

(assert (= (and b!1000512 (not res!451751)) b!1000524))

(assert (= (or b!1000515 b!1000514 b!1000516) bm!66491))

(assert (=> b!1000517 m!1189807))

(assert (=> b!1000517 m!1189807))

(assert (=> b!1000517 m!1189809))

(assert (=> b!1000512 m!1189807))

(assert (=> b!1000512 m!1189807))

(assert (=> b!1000512 m!1189809))

(assert (=> d!291250 m!1189811))

(declare-fun m!1189831 () Bool)

(assert (=> d!291250 m!1189831))

(assert (=> b!1000522 m!1189813))

(assert (=> bm!66491 m!1189811))

(assert (=> b!1000524 m!1189813))

(assert (=> b!1000521 m!1189813))

(assert (=> b!1000521 m!1189813))

(declare-fun m!1189835 () Bool)

(assert (=> b!1000521 m!1189835))

(assert (=> b!1000521 m!1189807))

(assert (=> b!1000521 m!1189835))

(assert (=> b!1000521 m!1189807))

(declare-fun m!1189837 () Bool)

(assert (=> b!1000521 m!1189837))

(declare-fun m!1189839 () Bool)

(assert (=> b!1000519 m!1189839))

(assert (=> b!1000289 d!291250))

(declare-fun b!1000551 () Bool)

(declare-fun e!641436 () Regex!2773)

(declare-fun e!641439 () Regex!2773)

(assert (=> b!1000551 (= e!641436 e!641439)))

(declare-fun c!164762 () Bool)

(assert (=> b!1000551 (= c!164762 ((_ is Union!2773) (regTwo!6059 r!15766)))))

(declare-fun b!1000552 () Bool)

(declare-fun e!641438 () Regex!2773)

(declare-fun call!66505 () Regex!2773)

(assert (=> b!1000552 (= e!641438 call!66505)))

(declare-fun d!291256 () Bool)

(declare-fun e!641437 () Bool)

(assert (=> d!291256 e!641437))

(declare-fun res!451762 () Bool)

(assert (=> d!291256 (=> (not res!451762) (not e!641437))))

(declare-fun lt!351927 () Regex!2773)

(assert (=> d!291256 (= res!451762 (validRegex!1242 lt!351927))))

(declare-fun e!641434 () Regex!2773)

(assert (=> d!291256 (= lt!351927 e!641434)))

(declare-fun c!164764 () Bool)

(assert (=> d!291256 (= c!164764 (and ((_ is Concat!4606) (regTwo!6059 r!15766)) ((_ is EmptyExpr!2773) (regOne!6058 (regTwo!6059 r!15766)))))))

(assert (=> d!291256 (validRegex!1242 (regTwo!6059 r!15766))))

(assert (=> d!291256 (= (removeUselessConcat!366 (regTwo!6059 r!15766)) lt!351927)))

(declare-fun b!1000553 () Bool)

(assert (=> b!1000553 (= e!641437 (= (nullable!887 lt!351927) (nullable!887 (regTwo!6059 r!15766))))))

(declare-fun b!1000554 () Bool)

(assert (=> b!1000554 (= e!641434 e!641438)))

(declare-fun c!164763 () Bool)

(assert (=> b!1000554 (= c!164763 (and ((_ is Concat!4606) (regTwo!6059 r!15766)) ((_ is EmptyExpr!2773) (regTwo!6058 (regTwo!6059 r!15766)))))))

(declare-fun b!1000555 () Bool)

(declare-fun c!164761 () Bool)

(assert (=> b!1000555 (= c!164761 ((_ is Concat!4606) (regTwo!6059 r!15766)))))

(assert (=> b!1000555 (= e!641438 e!641436)))

(declare-fun bm!66498 () Bool)

(declare-fun call!66504 () Regex!2773)

(assert (=> bm!66498 (= call!66504 (removeUselessConcat!366 (ite c!164761 (regTwo!6058 (regTwo!6059 r!15766)) (ite c!164762 (regTwo!6059 (regTwo!6059 r!15766)) (reg!3102 (regTwo!6059 r!15766))))))))

(declare-fun b!1000556 () Bool)

(declare-fun call!66507 () Regex!2773)

(declare-fun call!66503 () Regex!2773)

(assert (=> b!1000556 (= e!641439 (Union!2773 call!66507 call!66503))))

(declare-fun bm!66499 () Bool)

(assert (=> bm!66499 (= call!66507 call!66505)))

(declare-fun b!1000557 () Bool)

(declare-fun e!641435 () Regex!2773)

(assert (=> b!1000557 (= e!641435 (Star!2773 call!66503))))

(declare-fun b!1000558 () Bool)

(assert (=> b!1000558 (= e!641435 (regTwo!6059 r!15766))))

(declare-fun bm!66500 () Bool)

(declare-fun call!66506 () Regex!2773)

(assert (=> bm!66500 (= call!66505 call!66506)))

(declare-fun bm!66501 () Bool)

(assert (=> bm!66501 (= call!66506 (removeUselessConcat!366 (ite c!164764 (regTwo!6058 (regTwo!6059 r!15766)) (ite (or c!164763 c!164761) (regOne!6058 (regTwo!6059 r!15766)) (regOne!6059 (regTwo!6059 r!15766))))))))

(declare-fun bm!66502 () Bool)

(assert (=> bm!66502 (= call!66503 call!66504)))

(declare-fun b!1000559 () Bool)

(assert (=> b!1000559 (= e!641436 (Concat!4606 call!66507 call!66504))))

(declare-fun b!1000560 () Bool)

(declare-fun c!164760 () Bool)

(assert (=> b!1000560 (= c!164760 ((_ is Star!2773) (regTwo!6059 r!15766)))))

(assert (=> b!1000560 (= e!641439 e!641435)))

(declare-fun b!1000561 () Bool)

(assert (=> b!1000561 (= e!641434 call!66506)))

(assert (= (and d!291256 c!164764) b!1000561))

(assert (= (and d!291256 (not c!164764)) b!1000554))

(assert (= (and b!1000554 c!164763) b!1000552))

(assert (= (and b!1000554 (not c!164763)) b!1000555))

(assert (= (and b!1000555 c!164761) b!1000559))

(assert (= (and b!1000555 (not c!164761)) b!1000551))

(assert (= (and b!1000551 c!164762) b!1000556))

(assert (= (and b!1000551 (not c!164762)) b!1000560))

(assert (= (and b!1000560 c!164760) b!1000557))

(assert (= (and b!1000560 (not c!164760)) b!1000558))

(assert (= (or b!1000556 b!1000557) bm!66502))

(assert (= (or b!1000559 bm!66502) bm!66498))

(assert (= (or b!1000559 b!1000556) bm!66499))

(assert (= (or b!1000552 bm!66499) bm!66500))

(assert (= (or b!1000561 bm!66500) bm!66501))

(assert (= (and d!291256 res!451762) b!1000553))

(declare-fun m!1189849 () Bool)

(assert (=> d!291256 m!1189849))

(assert (=> d!291256 m!1189831))

(declare-fun m!1189851 () Bool)

(assert (=> b!1000553 m!1189851))

(assert (=> b!1000553 m!1189839))

(declare-fun m!1189853 () Bool)

(assert (=> bm!66498 m!1189853))

(declare-fun m!1189855 () Bool)

(assert (=> bm!66501 m!1189855))

(assert (=> b!1000289 d!291256))

(declare-fun d!291260 () Bool)

(assert (=> d!291260 (= (matchR!1309 (regTwo!6059 r!15766) s!10566) (matchR!1309 (removeUselessConcat!366 (regTwo!6059 r!15766)) s!10566))))

(declare-fun lt!351934 () Unit!15205)

(declare-fun choose!6333 (Regex!2773 List!10003) Unit!15205)

(assert (=> d!291260 (= lt!351934 (choose!6333 (regTwo!6059 r!15766) s!10566))))

(assert (=> d!291260 (validRegex!1242 (regTwo!6059 r!15766))))

(assert (=> d!291260 (= (lemmaRemoveUselessConcatSound!212 (regTwo!6059 r!15766) s!10566) lt!351934)))

(declare-fun bs!245091 () Bool)

(assert (= bs!245091 d!291260))

(assert (=> bs!245091 m!1189831))

(assert (=> bs!245091 m!1189729))

(assert (=> bs!245091 m!1189745))

(declare-fun m!1189867 () Bool)

(assert (=> bs!245091 m!1189867))

(declare-fun m!1189869 () Bool)

(assert (=> bs!245091 m!1189869))

(assert (=> bs!245091 m!1189745))

(assert (=> b!1000289 d!291260))

(declare-fun b!1000585 () Bool)

(declare-fun res!451782 () Bool)

(declare-fun e!641454 () Bool)

(assert (=> b!1000585 (=> res!451782 e!641454)))

(assert (=> b!1000585 (= res!451782 (not (isEmpty!6325 (tail!1408 s!10566))))))

(declare-fun d!291266 () Bool)

(declare-fun e!641459 () Bool)

(assert (=> d!291266 e!641459))

(declare-fun c!164770 () Bool)

(assert (=> d!291266 (= c!164770 ((_ is EmptyExpr!2773) (regOne!6059 r!15766)))))

(declare-fun lt!351935 () Bool)

(declare-fun e!641455 () Bool)

(assert (=> d!291266 (= lt!351935 e!641455)))

(declare-fun c!164772 () Bool)

(assert (=> d!291266 (= c!164772 (isEmpty!6325 s!10566))))

(assert (=> d!291266 (validRegex!1242 (regOne!6059 r!15766))))

(assert (=> d!291266 (= (matchR!1309 (regOne!6059 r!15766) s!10566) lt!351935)))

(declare-fun b!1000586 () Bool)

(declare-fun res!451780 () Bool)

(declare-fun e!641458 () Bool)

(assert (=> b!1000586 (=> res!451780 e!641458)))

(declare-fun e!641460 () Bool)

(assert (=> b!1000586 (= res!451780 e!641460)))

(declare-fun res!451778 () Bool)

(assert (=> b!1000586 (=> (not res!451778) (not e!641460))))

(assert (=> b!1000586 (= res!451778 lt!351935)))

(declare-fun b!1000587 () Bool)

(declare-fun e!641456 () Bool)

(assert (=> b!1000587 (= e!641456 e!641454)))

(declare-fun res!451777 () Bool)

(assert (=> b!1000587 (=> res!451777 e!641454)))

(declare-fun call!66512 () Bool)

(assert (=> b!1000587 (= res!451777 call!66512)))

(declare-fun b!1000588 () Bool)

(assert (=> b!1000588 (= e!641459 (= lt!351935 call!66512))))

(declare-fun b!1000589 () Bool)

(declare-fun res!451779 () Bool)

(assert (=> b!1000589 (=> (not res!451779) (not e!641460))))

(assert (=> b!1000589 (= res!451779 (not call!66512))))

(declare-fun bm!66507 () Bool)

(assert (=> bm!66507 (= call!66512 (isEmpty!6325 s!10566))))

(declare-fun b!1000590 () Bool)

(declare-fun res!451776 () Bool)

(assert (=> b!1000590 (=> (not res!451776) (not e!641460))))

(assert (=> b!1000590 (= res!451776 (isEmpty!6325 (tail!1408 s!10566)))))

(declare-fun b!1000591 () Bool)

(declare-fun res!451781 () Bool)

(assert (=> b!1000591 (=> res!451781 e!641458)))

(assert (=> b!1000591 (= res!451781 (not ((_ is ElementMatch!2773) (regOne!6059 r!15766))))))

(declare-fun e!641457 () Bool)

(assert (=> b!1000591 (= e!641457 e!641458)))

(declare-fun b!1000592 () Bool)

(assert (=> b!1000592 (= e!641455 (nullable!887 (regOne!6059 r!15766)))))

(declare-fun b!1000593 () Bool)

(assert (=> b!1000593 (= e!641459 e!641457)))

(declare-fun c!164771 () Bool)

(assert (=> b!1000593 (= c!164771 ((_ is EmptyLang!2773) (regOne!6059 r!15766)))))

(declare-fun b!1000594 () Bool)

(assert (=> b!1000594 (= e!641455 (matchR!1309 (derivativeStep!693 (regOne!6059 r!15766) (head!1846 s!10566)) (tail!1408 s!10566)))))

(declare-fun b!1000595 () Bool)

(assert (=> b!1000595 (= e!641460 (= (head!1846 s!10566) (c!164684 (regOne!6059 r!15766))))))

(declare-fun b!1000596 () Bool)

(assert (=> b!1000596 (= e!641457 (not lt!351935))))

(declare-fun b!1000597 () Bool)

(assert (=> b!1000597 (= e!641454 (not (= (head!1846 s!10566) (c!164684 (regOne!6059 r!15766)))))))

(declare-fun b!1000598 () Bool)

(assert (=> b!1000598 (= e!641458 e!641456)))

(declare-fun res!451783 () Bool)

(assert (=> b!1000598 (=> (not res!451783) (not e!641456))))

(assert (=> b!1000598 (= res!451783 (not lt!351935))))

(assert (= (and d!291266 c!164772) b!1000592))

(assert (= (and d!291266 (not c!164772)) b!1000594))

(assert (= (and d!291266 c!164770) b!1000588))

(assert (= (and d!291266 (not c!164770)) b!1000593))

(assert (= (and b!1000593 c!164771) b!1000596))

(assert (= (and b!1000593 (not c!164771)) b!1000591))

(assert (= (and b!1000591 (not res!451781)) b!1000586))

(assert (= (and b!1000586 res!451778) b!1000589))

(assert (= (and b!1000589 res!451779) b!1000590))

(assert (= (and b!1000590 res!451776) b!1000595))

(assert (= (and b!1000586 (not res!451780)) b!1000598))

(assert (= (and b!1000598 res!451783) b!1000587))

(assert (= (and b!1000587 (not res!451777)) b!1000585))

(assert (= (and b!1000585 (not res!451782)) b!1000597))

(assert (= (or b!1000588 b!1000587 b!1000589) bm!66507))

(assert (=> b!1000590 m!1189807))

(assert (=> b!1000590 m!1189807))

(assert (=> b!1000590 m!1189809))

(assert (=> b!1000585 m!1189807))

(assert (=> b!1000585 m!1189807))

(assert (=> b!1000585 m!1189809))

(assert (=> d!291266 m!1189811))

(assert (=> d!291266 m!1189773))

(assert (=> b!1000595 m!1189813))

(assert (=> bm!66507 m!1189811))

(assert (=> b!1000597 m!1189813))

(assert (=> b!1000594 m!1189813))

(assert (=> b!1000594 m!1189813))

(declare-fun m!1189875 () Bool)

(assert (=> b!1000594 m!1189875))

(assert (=> b!1000594 m!1189807))

(assert (=> b!1000594 m!1189875))

(assert (=> b!1000594 m!1189807))

(declare-fun m!1189877 () Bool)

(assert (=> b!1000594 m!1189877))

(assert (=> b!1000592 m!1189777))

(assert (=> b!1000284 d!291266))

(declare-fun d!291270 () Bool)

(declare-fun e!641472 () Bool)

(assert (=> d!291270 e!641472))

(declare-fun res!451795 () Bool)

(assert (=> d!291270 (=> res!451795 e!641472)))

(assert (=> d!291270 (= res!451795 (matchR!1309 (regOne!6059 r!15766) s!10566))))

(declare-fun lt!351941 () Unit!15205)

(declare-fun choose!6334 (Regex!2773 Regex!2773 List!10003) Unit!15205)

(assert (=> d!291270 (= lt!351941 (choose!6334 (regOne!6059 r!15766) (regTwo!6059 r!15766) s!10566))))

(declare-fun e!641471 () Bool)

(assert (=> d!291270 e!641471))

(declare-fun res!451794 () Bool)

(assert (=> d!291270 (=> (not res!451794) (not e!641471))))

(assert (=> d!291270 (= res!451794 (validRegex!1242 (regOne!6059 r!15766)))))

(assert (=> d!291270 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!80 (regOne!6059 r!15766) (regTwo!6059 r!15766) s!10566) lt!351941)))

(declare-fun b!1000609 () Bool)

(assert (=> b!1000609 (= e!641471 (validRegex!1242 (regTwo!6059 r!15766)))))

(declare-fun b!1000610 () Bool)

(assert (=> b!1000610 (= e!641472 (matchR!1309 (regTwo!6059 r!15766) s!10566))))

(assert (= (and d!291270 res!451794) b!1000609))

(assert (= (and d!291270 (not res!451795)) b!1000610))

(assert (=> d!291270 m!1189723))

(declare-fun m!1189881 () Bool)

(assert (=> d!291270 m!1189881))

(assert (=> d!291270 m!1189773))

(assert (=> b!1000609 m!1189831))

(assert (=> b!1000610 m!1189729))

(assert (=> b!1000284 d!291270))

(assert (=> b!1000286 d!291250))

(declare-fun b!1000611 () Bool)

(declare-fun e!641477 () Bool)

(declare-fun call!66514 () Bool)

(assert (=> b!1000611 (= e!641477 call!66514)))

(declare-fun b!1000612 () Bool)

(declare-fun e!641476 () Bool)

(declare-fun e!641479 () Bool)

(assert (=> b!1000612 (= e!641476 e!641479)))

(declare-fun res!451799 () Bool)

(assert (=> b!1000612 (=> (not res!451799) (not e!641479))))

(declare-fun call!66513 () Bool)

(assert (=> b!1000612 (= res!451799 call!66513)))

(declare-fun b!1000613 () Bool)

(declare-fun e!641475 () Bool)

(declare-fun e!641474 () Bool)

(assert (=> b!1000613 (= e!641475 e!641474)))

(declare-fun res!451798 () Bool)

(assert (=> b!1000613 (= res!451798 (not (nullable!887 (reg!3102 lt!351909))))))

(assert (=> b!1000613 (=> (not res!451798) (not e!641474))))

(declare-fun b!1000614 () Bool)

(declare-fun e!641473 () Bool)

(assert (=> b!1000614 (= e!641473 e!641475)))

(declare-fun c!164774 () Bool)

(assert (=> b!1000614 (= c!164774 ((_ is Star!2773) lt!351909))))

(declare-fun c!164773 () Bool)

(declare-fun bm!66508 () Bool)

(declare-fun call!66515 () Bool)

(assert (=> bm!66508 (= call!66515 (validRegex!1242 (ite c!164774 (reg!3102 lt!351909) (ite c!164773 (regTwo!6059 lt!351909) (regTwo!6058 lt!351909)))))))

(declare-fun bm!66509 () Bool)

(assert (=> bm!66509 (= call!66513 (validRegex!1242 (ite c!164773 (regOne!6059 lt!351909) (regOne!6058 lt!351909))))))

(declare-fun b!1000615 () Bool)

(assert (=> b!1000615 (= e!641474 call!66515)))

(declare-fun b!1000616 () Bool)

(declare-fun res!451800 () Bool)

(assert (=> b!1000616 (=> res!451800 e!641476)))

(assert (=> b!1000616 (= res!451800 (not ((_ is Concat!4606) lt!351909)))))

(declare-fun e!641478 () Bool)

(assert (=> b!1000616 (= e!641478 e!641476)))

(declare-fun d!291274 () Bool)

(declare-fun res!451796 () Bool)

(assert (=> d!291274 (=> res!451796 e!641473)))

(assert (=> d!291274 (= res!451796 ((_ is ElementMatch!2773) lt!351909))))

(assert (=> d!291274 (= (validRegex!1242 lt!351909) e!641473)))

(declare-fun bm!66510 () Bool)

(assert (=> bm!66510 (= call!66514 call!66515)))

(declare-fun b!1000617 () Bool)

(declare-fun res!451797 () Bool)

(assert (=> b!1000617 (=> (not res!451797) (not e!641477))))

(assert (=> b!1000617 (= res!451797 call!66513)))

(assert (=> b!1000617 (= e!641478 e!641477)))

(declare-fun b!1000618 () Bool)

(assert (=> b!1000618 (= e!641479 call!66514)))

(declare-fun b!1000619 () Bool)

(assert (=> b!1000619 (= e!641475 e!641478)))

(assert (=> b!1000619 (= c!164773 ((_ is Union!2773) lt!351909))))

(assert (= (and d!291274 (not res!451796)) b!1000614))

(assert (= (and b!1000614 c!164774) b!1000613))

(assert (= (and b!1000614 (not c!164774)) b!1000619))

(assert (= (and b!1000613 res!451798) b!1000615))

(assert (= (and b!1000619 c!164773) b!1000617))

(assert (= (and b!1000619 (not c!164773)) b!1000616))

(assert (= (and b!1000617 res!451797) b!1000611))

(assert (= (and b!1000616 (not res!451800)) b!1000612))

(assert (= (and b!1000612 res!451799) b!1000618))

(assert (= (or b!1000611 b!1000618) bm!66510))

(assert (= (or b!1000617 b!1000612) bm!66509))

(assert (= (or b!1000615 bm!66510) bm!66508))

(declare-fun m!1189883 () Bool)

(assert (=> b!1000613 m!1189883))

(declare-fun m!1189885 () Bool)

(assert (=> bm!66508 m!1189885))

(declare-fun m!1189887 () Bool)

(assert (=> bm!66509 m!1189887))

(assert (=> b!1000282 d!291274))

(declare-fun b!1000749 () Bool)

(assert (=> b!1000749 true))

(assert (=> b!1000749 true))

(declare-fun bs!245094 () Bool)

(declare-fun b!1000756 () Bool)

(assert (= bs!245094 (and b!1000756 b!1000749)))

(declare-fun lambda!35526 () Int)

(declare-fun lambda!35525 () Int)

(assert (=> bs!245094 (not (= lambda!35526 lambda!35525))))

(assert (=> b!1000756 true))

(assert (=> b!1000756 true))

(declare-fun d!291276 () Bool)

(declare-fun c!164800 () Bool)

(assert (=> d!291276 (= c!164800 ((_ is EmptyExpr!2773) r!15766))))

(declare-fun e!641544 () Bool)

(assert (=> d!291276 (= (matchRSpec!572 r!15766 s!10566) e!641544)))

(declare-fun b!1000748 () Bool)

(declare-fun c!164801 () Bool)

(assert (=> b!1000748 (= c!164801 ((_ is Union!2773) r!15766))))

(declare-fun e!641543 () Bool)

(declare-fun e!641540 () Bool)

(assert (=> b!1000748 (= e!641543 e!641540)))

(declare-fun e!641541 () Bool)

(declare-fun call!66527 () Bool)

(assert (=> b!1000749 (= e!641541 call!66527)))

(declare-fun b!1000750 () Bool)

(declare-fun e!641546 () Bool)

(assert (=> b!1000750 (= e!641540 e!641546)))

(declare-fun res!451846 () Bool)

(assert (=> b!1000750 (= res!451846 (matchRSpec!572 (regOne!6059 r!15766) s!10566))))

(assert (=> b!1000750 (=> res!451846 e!641546)))

(declare-fun b!1000751 () Bool)

(assert (=> b!1000751 (= e!641546 (matchRSpec!572 (regTwo!6059 r!15766) s!10566))))

(declare-fun b!1000752 () Bool)

(declare-fun e!641545 () Bool)

(assert (=> b!1000752 (= e!641544 e!641545)))

(declare-fun res!451844 () Bool)

(assert (=> b!1000752 (= res!451844 (not ((_ is EmptyLang!2773) r!15766)))))

(assert (=> b!1000752 (=> (not res!451844) (not e!641545))))

(declare-fun b!1000753 () Bool)

(declare-fun res!451845 () Bool)

(assert (=> b!1000753 (=> res!451845 e!641541)))

(declare-fun call!66528 () Bool)

(assert (=> b!1000753 (= res!451845 call!66528)))

(declare-fun e!641542 () Bool)

(assert (=> b!1000753 (= e!641542 e!641541)))

(declare-fun bm!66522 () Bool)

(assert (=> bm!66522 (= call!66528 (isEmpty!6325 s!10566))))

(declare-fun b!1000754 () Bool)

(assert (=> b!1000754 (= e!641544 call!66528)))

(declare-fun b!1000755 () Bool)

(assert (=> b!1000755 (= e!641540 e!641542)))

(declare-fun c!164798 () Bool)

(assert (=> b!1000755 (= c!164798 ((_ is Star!2773) r!15766))))

(declare-fun bm!66523 () Bool)

(declare-fun Exists!508 (Int) Bool)

(assert (=> bm!66523 (= call!66527 (Exists!508 (ite c!164798 lambda!35525 lambda!35526)))))

(assert (=> b!1000756 (= e!641542 call!66527)))

(declare-fun b!1000757 () Bool)

(declare-fun c!164799 () Bool)

(assert (=> b!1000757 (= c!164799 ((_ is ElementMatch!2773) r!15766))))

(assert (=> b!1000757 (= e!641545 e!641543)))

(declare-fun b!1000758 () Bool)

(assert (=> b!1000758 (= e!641543 (= s!10566 (Cons!9987 (c!164684 r!15766) Nil!9987)))))

(assert (= (and d!291276 c!164800) b!1000754))

(assert (= (and d!291276 (not c!164800)) b!1000752))

(assert (= (and b!1000752 res!451844) b!1000757))

(assert (= (and b!1000757 c!164799) b!1000758))

(assert (= (and b!1000757 (not c!164799)) b!1000748))

(assert (= (and b!1000748 c!164801) b!1000750))

(assert (= (and b!1000748 (not c!164801)) b!1000755))

(assert (= (and b!1000750 (not res!451846)) b!1000751))

(assert (= (and b!1000755 c!164798) b!1000753))

(assert (= (and b!1000755 (not c!164798)) b!1000756))

(assert (= (and b!1000753 (not res!451845)) b!1000749))

(assert (= (or b!1000749 b!1000756) bm!66523))

(assert (= (or b!1000754 b!1000753) bm!66522))

(declare-fun m!1189903 () Bool)

(assert (=> b!1000750 m!1189903))

(declare-fun m!1189905 () Bool)

(assert (=> b!1000751 m!1189905))

(assert (=> bm!66522 m!1189811))

(declare-fun m!1189907 () Bool)

(assert (=> bm!66523 m!1189907))

(assert (=> b!1000281 d!291276))

(declare-fun b!1000763 () Bool)

(declare-fun res!451853 () Bool)

(declare-fun e!641547 () Bool)

(assert (=> b!1000763 (=> res!451853 e!641547)))

(assert (=> b!1000763 (= res!451853 (not (isEmpty!6325 (tail!1408 s!10566))))))

(declare-fun d!291282 () Bool)

(declare-fun e!641552 () Bool)

(assert (=> d!291282 e!641552))

(declare-fun c!164802 () Bool)

(assert (=> d!291282 (= c!164802 ((_ is EmptyExpr!2773) r!15766))))

(declare-fun lt!351946 () Bool)

(declare-fun e!641548 () Bool)

(assert (=> d!291282 (= lt!351946 e!641548)))

(declare-fun c!164804 () Bool)

(assert (=> d!291282 (= c!164804 (isEmpty!6325 s!10566))))

(assert (=> d!291282 (validRegex!1242 r!15766)))

(assert (=> d!291282 (= (matchR!1309 r!15766 s!10566) lt!351946)))

(declare-fun b!1000764 () Bool)

(declare-fun res!451851 () Bool)

(declare-fun e!641551 () Bool)

(assert (=> b!1000764 (=> res!451851 e!641551)))

(declare-fun e!641553 () Bool)

(assert (=> b!1000764 (= res!451851 e!641553)))

(declare-fun res!451849 () Bool)

(assert (=> b!1000764 (=> (not res!451849) (not e!641553))))

(assert (=> b!1000764 (= res!451849 lt!351946)))

(declare-fun b!1000765 () Bool)

(declare-fun e!641549 () Bool)

(assert (=> b!1000765 (= e!641549 e!641547)))

(declare-fun res!451848 () Bool)

(assert (=> b!1000765 (=> res!451848 e!641547)))

(declare-fun call!66529 () Bool)

(assert (=> b!1000765 (= res!451848 call!66529)))

(declare-fun b!1000766 () Bool)

(assert (=> b!1000766 (= e!641552 (= lt!351946 call!66529))))

(declare-fun b!1000767 () Bool)

(declare-fun res!451850 () Bool)

(assert (=> b!1000767 (=> (not res!451850) (not e!641553))))

(assert (=> b!1000767 (= res!451850 (not call!66529))))

(declare-fun bm!66524 () Bool)

(assert (=> bm!66524 (= call!66529 (isEmpty!6325 s!10566))))

(declare-fun b!1000768 () Bool)

(declare-fun res!451847 () Bool)

(assert (=> b!1000768 (=> (not res!451847) (not e!641553))))

(assert (=> b!1000768 (= res!451847 (isEmpty!6325 (tail!1408 s!10566)))))

(declare-fun b!1000769 () Bool)

(declare-fun res!451852 () Bool)

(assert (=> b!1000769 (=> res!451852 e!641551)))

(assert (=> b!1000769 (= res!451852 (not ((_ is ElementMatch!2773) r!15766)))))

(declare-fun e!641550 () Bool)

(assert (=> b!1000769 (= e!641550 e!641551)))

(declare-fun b!1000770 () Bool)

(assert (=> b!1000770 (= e!641548 (nullable!887 r!15766))))

(declare-fun b!1000771 () Bool)

(assert (=> b!1000771 (= e!641552 e!641550)))

(declare-fun c!164803 () Bool)

(assert (=> b!1000771 (= c!164803 ((_ is EmptyLang!2773) r!15766))))

(declare-fun b!1000772 () Bool)

(assert (=> b!1000772 (= e!641548 (matchR!1309 (derivativeStep!693 r!15766 (head!1846 s!10566)) (tail!1408 s!10566)))))

(declare-fun b!1000773 () Bool)

(assert (=> b!1000773 (= e!641553 (= (head!1846 s!10566) (c!164684 r!15766)))))

(declare-fun b!1000774 () Bool)

(assert (=> b!1000774 (= e!641550 (not lt!351946))))

(declare-fun b!1000775 () Bool)

(assert (=> b!1000775 (= e!641547 (not (= (head!1846 s!10566) (c!164684 r!15766))))))

(declare-fun b!1000776 () Bool)

(assert (=> b!1000776 (= e!641551 e!641549)))

(declare-fun res!451854 () Bool)

(assert (=> b!1000776 (=> (not res!451854) (not e!641549))))

(assert (=> b!1000776 (= res!451854 (not lt!351946))))

(assert (= (and d!291282 c!164804) b!1000770))

(assert (= (and d!291282 (not c!164804)) b!1000772))

(assert (= (and d!291282 c!164802) b!1000766))

(assert (= (and d!291282 (not c!164802)) b!1000771))

(assert (= (and b!1000771 c!164803) b!1000774))

(assert (= (and b!1000771 (not c!164803)) b!1000769))

(assert (= (and b!1000769 (not res!451852)) b!1000764))

(assert (= (and b!1000764 res!451849) b!1000767))

(assert (= (and b!1000767 res!451850) b!1000768))

(assert (= (and b!1000768 res!451847) b!1000773))

(assert (= (and b!1000764 (not res!451851)) b!1000776))

(assert (= (and b!1000776 res!451854) b!1000765))

(assert (= (and b!1000765 (not res!451848)) b!1000763))

(assert (= (and b!1000763 (not res!451853)) b!1000775))

(assert (= (or b!1000766 b!1000765 b!1000767) bm!66524))

(assert (=> b!1000768 m!1189807))

(assert (=> b!1000768 m!1189807))

(assert (=> b!1000768 m!1189809))

(assert (=> b!1000763 m!1189807))

(assert (=> b!1000763 m!1189807))

(assert (=> b!1000763 m!1189809))

(assert (=> d!291282 m!1189811))

(assert (=> d!291282 m!1189727))

(assert (=> b!1000773 m!1189813))

(assert (=> bm!66524 m!1189811))

(assert (=> b!1000775 m!1189813))

(assert (=> b!1000772 m!1189813))

(assert (=> b!1000772 m!1189813))

(declare-fun m!1189909 () Bool)

(assert (=> b!1000772 m!1189909))

(assert (=> b!1000772 m!1189807))

(assert (=> b!1000772 m!1189909))

(assert (=> b!1000772 m!1189807))

(declare-fun m!1189911 () Bool)

(assert (=> b!1000772 m!1189911))

(declare-fun m!1189913 () Bool)

(assert (=> b!1000770 m!1189913))

(assert (=> b!1000281 d!291282))

(declare-fun d!291284 () Bool)

(assert (=> d!291284 (= (matchR!1309 r!15766 s!10566) (matchRSpec!572 r!15766 s!10566))))

(declare-fun lt!351949 () Unit!15205)

(declare-fun choose!6336 (Regex!2773 List!10003) Unit!15205)

(assert (=> d!291284 (= lt!351949 (choose!6336 r!15766 s!10566))))

(assert (=> d!291284 (validRegex!1242 r!15766)))

(assert (=> d!291284 (= (mainMatchTheorem!572 r!15766 s!10566) lt!351949)))

(declare-fun bs!245095 () Bool)

(assert (= bs!245095 d!291284))

(assert (=> bs!245095 m!1189733))

(assert (=> bs!245095 m!1189731))

(declare-fun m!1189915 () Bool)

(assert (=> bs!245095 m!1189915))

(assert (=> bs!245095 m!1189727))

(assert (=> b!1000281 d!291284))

(declare-fun b!1000781 () Bool)

(declare-fun e!641556 () Bool)

(declare-fun tp!304893 () Bool)

(assert (=> b!1000781 (= e!641556 (and tp_is_empty!5189 tp!304893))))

(assert (=> b!1000288 (= tp!304852 e!641556)))

(assert (= (and b!1000288 ((_ is Cons!9987) (t!101049 s!10566))) b!1000781))

(declare-fun b!1000793 () Bool)

(declare-fun e!641559 () Bool)

(declare-fun tp!304906 () Bool)

(declare-fun tp!304905 () Bool)

(assert (=> b!1000793 (= e!641559 (and tp!304906 tp!304905))))

(assert (=> b!1000279 (= tp!304849 e!641559)))

(declare-fun b!1000795 () Bool)

(declare-fun tp!304908 () Bool)

(declare-fun tp!304904 () Bool)

(assert (=> b!1000795 (= e!641559 (and tp!304908 tp!304904))))

(declare-fun b!1000792 () Bool)

(assert (=> b!1000792 (= e!641559 tp_is_empty!5189)))

(declare-fun b!1000794 () Bool)

(declare-fun tp!304907 () Bool)

(assert (=> b!1000794 (= e!641559 tp!304907)))

(assert (= (and b!1000279 ((_ is ElementMatch!2773) (regOne!6059 r!15766))) b!1000792))

(assert (= (and b!1000279 ((_ is Concat!4606) (regOne!6059 r!15766))) b!1000793))

(assert (= (and b!1000279 ((_ is Star!2773) (regOne!6059 r!15766))) b!1000794))

(assert (= (and b!1000279 ((_ is Union!2773) (regOne!6059 r!15766))) b!1000795))

(declare-fun b!1000797 () Bool)

(declare-fun e!641560 () Bool)

(declare-fun tp!304911 () Bool)

(declare-fun tp!304910 () Bool)

(assert (=> b!1000797 (= e!641560 (and tp!304911 tp!304910))))

(assert (=> b!1000279 (= tp!304848 e!641560)))

(declare-fun b!1000799 () Bool)

(declare-fun tp!304913 () Bool)

(declare-fun tp!304909 () Bool)

(assert (=> b!1000799 (= e!641560 (and tp!304913 tp!304909))))

(declare-fun b!1000796 () Bool)

(assert (=> b!1000796 (= e!641560 tp_is_empty!5189)))

(declare-fun b!1000798 () Bool)

(declare-fun tp!304912 () Bool)

(assert (=> b!1000798 (= e!641560 tp!304912)))

(assert (= (and b!1000279 ((_ is ElementMatch!2773) (regTwo!6059 r!15766))) b!1000796))

(assert (= (and b!1000279 ((_ is Concat!4606) (regTwo!6059 r!15766))) b!1000797))

(assert (= (and b!1000279 ((_ is Star!2773) (regTwo!6059 r!15766))) b!1000798))

(assert (= (and b!1000279 ((_ is Union!2773) (regTwo!6059 r!15766))) b!1000799))

(declare-fun b!1000801 () Bool)

(declare-fun e!641561 () Bool)

(declare-fun tp!304916 () Bool)

(declare-fun tp!304915 () Bool)

(assert (=> b!1000801 (= e!641561 (and tp!304916 tp!304915))))

(assert (=> b!1000285 (= tp!304847 e!641561)))

(declare-fun b!1000803 () Bool)

(declare-fun tp!304918 () Bool)

(declare-fun tp!304914 () Bool)

(assert (=> b!1000803 (= e!641561 (and tp!304918 tp!304914))))

(declare-fun b!1000800 () Bool)

(assert (=> b!1000800 (= e!641561 tp_is_empty!5189)))

(declare-fun b!1000802 () Bool)

(declare-fun tp!304917 () Bool)

(assert (=> b!1000802 (= e!641561 tp!304917)))

(assert (= (and b!1000285 ((_ is ElementMatch!2773) (reg!3102 r!15766))) b!1000800))

(assert (= (and b!1000285 ((_ is Concat!4606) (reg!3102 r!15766))) b!1000801))

(assert (= (and b!1000285 ((_ is Star!2773) (reg!3102 r!15766))) b!1000802))

(assert (= (and b!1000285 ((_ is Union!2773) (reg!3102 r!15766))) b!1000803))

(declare-fun b!1000805 () Bool)

(declare-fun e!641562 () Bool)

(declare-fun tp!304921 () Bool)

(declare-fun tp!304920 () Bool)

(assert (=> b!1000805 (= e!641562 (and tp!304921 tp!304920))))

(assert (=> b!1000287 (= tp!304850 e!641562)))

(declare-fun b!1000807 () Bool)

(declare-fun tp!304923 () Bool)

(declare-fun tp!304919 () Bool)

(assert (=> b!1000807 (= e!641562 (and tp!304923 tp!304919))))

(declare-fun b!1000804 () Bool)

(assert (=> b!1000804 (= e!641562 tp_is_empty!5189)))

(declare-fun b!1000806 () Bool)

(declare-fun tp!304922 () Bool)

(assert (=> b!1000806 (= e!641562 tp!304922)))

(assert (= (and b!1000287 ((_ is ElementMatch!2773) (regOne!6058 r!15766))) b!1000804))

(assert (= (and b!1000287 ((_ is Concat!4606) (regOne!6058 r!15766))) b!1000805))

(assert (= (and b!1000287 ((_ is Star!2773) (regOne!6058 r!15766))) b!1000806))

(assert (= (and b!1000287 ((_ is Union!2773) (regOne!6058 r!15766))) b!1000807))

(declare-fun b!1000809 () Bool)

(declare-fun e!641563 () Bool)

(declare-fun tp!304926 () Bool)

(declare-fun tp!304925 () Bool)

(assert (=> b!1000809 (= e!641563 (and tp!304926 tp!304925))))

(assert (=> b!1000287 (= tp!304851 e!641563)))

(declare-fun b!1000811 () Bool)

(declare-fun tp!304928 () Bool)

(declare-fun tp!304924 () Bool)

(assert (=> b!1000811 (= e!641563 (and tp!304928 tp!304924))))

(declare-fun b!1000808 () Bool)

(assert (=> b!1000808 (= e!641563 tp_is_empty!5189)))

(declare-fun b!1000810 () Bool)

(declare-fun tp!304927 () Bool)

(assert (=> b!1000810 (= e!641563 tp!304927)))

(assert (= (and b!1000287 ((_ is ElementMatch!2773) (regTwo!6058 r!15766))) b!1000808))

(assert (= (and b!1000287 ((_ is Concat!4606) (regTwo!6058 r!15766))) b!1000809))

(assert (= (and b!1000287 ((_ is Star!2773) (regTwo!6058 r!15766))) b!1000810))

(assert (= (and b!1000287 ((_ is Union!2773) (regTwo!6058 r!15766))) b!1000811))

(check-sat (not b!1000805) (not bm!66523) (not b!1000585) (not d!291282) (not b!1000613) (not b!1000799) (not bm!66491) tp_is_empty!5189 (not bm!66487) (not bm!66498) (not bm!66456) (not b!1000751) (not b!1000806) (not b!1000781) (not bm!66522) (not d!291244) (not bm!66507) (not bm!66438) (not b!1000609) (not b!1000498) (not b!1000775) (not b!1000594) (not bm!66524) (not b!1000809) (not b!1000772) (not b!1000811) (not b!1000807) (not bm!66501) (not b!1000802) (not d!291266) (not b!1000401) (not bm!66465) (not b!1000524) (not d!291270) (not b!1000592) (not b!1000519) (not b!1000810) (not b!1000494) (not b!1000750) (not d!291250) (not d!291284) (not b!1000412) (not b!1000797) (not bm!66464) (not b!1000773) (not bm!66437) (not b!1000610) (not b!1000803) (not b!1000499) (not b!1000512) (not b!1000793) (not b!1000553) (not b!1000310) (not bm!66453) (not d!291238) (not b!1000595) (not b!1000501) (not d!291260) (not bm!66508) (not b!1000768) (not b!1000770) (not b!1000597) (not b!1000522) (not b!1000521) (not b!1000794) (not b!1000763) (not b!1000798) (not b!1000795) (not bm!66509) (not b!1000489) (not d!291256) (not b!1000590) (not b!1000496) (not b!1000801) (not b!1000517))
(check-sat)
