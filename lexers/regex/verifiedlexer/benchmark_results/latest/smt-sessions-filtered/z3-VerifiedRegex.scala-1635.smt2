; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83342 () Bool)

(assert start!83342)

(declare-fun b!931336 () Bool)

(declare-fun e!605280 () Bool)

(declare-fun e!605282 () Bool)

(assert (=> b!931336 (= e!605280 e!605282)))

(declare-fun res!423047 () Bool)

(assert (=> b!931336 (=> res!423047 e!605282)))

(declare-fun lt!340311 () Bool)

(assert (=> b!931336 (= res!423047 (not lt!340311))))

(declare-fun e!605285 () Bool)

(assert (=> b!931336 e!605285))

(declare-fun res!423046 () Bool)

(assert (=> b!931336 (=> res!423046 e!605285)))

(assert (=> b!931336 (= res!423046 lt!340311)))

(declare-datatypes ((C!5628 0))(
  ( (C!5629 (val!3062 Int)) )
))
(declare-datatypes ((Regex!2529 0))(
  ( (ElementMatch!2529 (c!151398 C!5628)) (Concat!4362 (regOne!5570 Regex!2529) (regTwo!5570 Regex!2529)) (EmptyExpr!2529) (Star!2529 (reg!2858 Regex!2529)) (EmptyLang!2529) (Union!2529 (regOne!5571 Regex!2529) (regTwo!5571 Regex!2529)) )
))
(declare-fun lt!340312 () Regex!2529)

(declare-datatypes ((List!9759 0))(
  ( (Nil!9743) (Cons!9743 (h!15144 C!5628) (t!100805 List!9759)) )
))
(declare-fun s!10566 () List!9759)

(declare-fun matchR!1067 (Regex!2529 List!9759) Bool)

(assert (=> b!931336 (= lt!340311 (matchR!1067 lt!340312 s!10566))))

(declare-fun lt!340315 () Regex!2529)

(declare-datatypes ((Unit!14677 0))(
  ( (Unit!14678) )
))
(declare-fun lt!340314 () Unit!14677)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!46 (Regex!2529 Regex!2529 List!9759) Unit!14677)

(assert (=> b!931336 (= lt!340314 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!46 lt!340312 lt!340315 s!10566))))

(declare-fun lt!340317 () Regex!2529)

(declare-fun matchRSpec!330 (Regex!2529 List!9759) Bool)

(assert (=> b!931336 (matchRSpec!330 lt!340317 s!10566)))

(declare-fun lt!340316 () Unit!14677)

(declare-fun mainMatchTheorem!330 (Regex!2529 List!9759) Unit!14677)

(assert (=> b!931336 (= lt!340316 (mainMatchTheorem!330 lt!340317 s!10566))))

(declare-fun b!931337 () Bool)

(declare-fun e!605281 () Bool)

(declare-fun e!605283 () Bool)

(assert (=> b!931337 (= e!605281 (not e!605283))))

(declare-fun res!423045 () Bool)

(assert (=> b!931337 (=> res!423045 e!605283)))

(declare-fun lt!340319 () Bool)

(declare-fun r!15766 () Regex!2529)

(get-info :version)

(assert (=> b!931337 (= res!423045 (or lt!340319 (and ((_ is Concat!4362) r!15766) ((_ is EmptyExpr!2529) (regOne!5570 r!15766))) (and ((_ is Concat!4362) r!15766) ((_ is EmptyExpr!2529) (regTwo!5570 r!15766))) ((_ is Concat!4362) r!15766) (not ((_ is Union!2529) r!15766))))))

(assert (=> b!931337 (= lt!340319 (matchRSpec!330 r!15766 s!10566))))

(assert (=> b!931337 (= lt!340319 (matchR!1067 r!15766 s!10566))))

(declare-fun lt!340313 () Unit!14677)

(assert (=> b!931337 (= lt!340313 (mainMatchTheorem!330 r!15766 s!10566))))

(declare-fun b!931338 () Bool)

(declare-fun e!605284 () Bool)

(declare-fun tp!289125 () Bool)

(declare-fun tp!289123 () Bool)

(assert (=> b!931338 (= e!605284 (and tp!289125 tp!289123))))

(declare-fun res!423044 () Bool)

(assert (=> start!83342 (=> (not res!423044) (not e!605281))))

(declare-fun validRegex!998 (Regex!2529) Bool)

(assert (=> start!83342 (= res!423044 (validRegex!998 r!15766))))

(assert (=> start!83342 e!605281))

(assert (=> start!83342 e!605284))

(declare-fun e!605279 () Bool)

(assert (=> start!83342 e!605279))

(declare-fun b!931339 () Bool)

(declare-fun tp!289126 () Bool)

(assert (=> b!931339 (= e!605284 tp!289126)))

(declare-fun b!931340 () Bool)

(declare-fun tp_is_empty!4701 () Bool)

(declare-fun tp!289124 () Bool)

(assert (=> b!931340 (= e!605279 (and tp_is_empty!4701 tp!289124))))

(declare-fun b!931341 () Bool)

(assert (=> b!931341 (= e!605285 (matchR!1067 lt!340315 s!10566))))

(declare-fun b!931342 () Bool)

(assert (=> b!931342 (= e!605282 (validRegex!998 (regOne!5571 r!15766)))))

(assert (=> b!931342 (matchR!1067 (regOne!5571 r!15766) s!10566)))

(declare-fun lt!340318 () Unit!14677)

(declare-fun lemmaRemoveUselessConcatSound!116 (Regex!2529 List!9759) Unit!14677)

(assert (=> b!931342 (= lt!340318 (lemmaRemoveUselessConcatSound!116 (regOne!5571 r!15766) s!10566))))

(declare-fun b!931343 () Bool)

(assert (=> b!931343 (= e!605283 e!605280)))

(declare-fun res!423048 () Bool)

(assert (=> b!931343 (=> res!423048 e!605280)))

(assert (=> b!931343 (= res!423048 (not (matchR!1067 lt!340317 s!10566)))))

(assert (=> b!931343 (= lt!340317 (Union!2529 lt!340312 lt!340315))))

(declare-fun removeUselessConcat!204 (Regex!2529) Regex!2529)

(assert (=> b!931343 (= lt!340315 (removeUselessConcat!204 (regTwo!5571 r!15766)))))

(assert (=> b!931343 (= lt!340312 (removeUselessConcat!204 (regOne!5571 r!15766)))))

(declare-fun b!931344 () Bool)

(assert (=> b!931344 (= e!605284 tp_is_empty!4701)))

(declare-fun b!931345 () Bool)

(declare-fun tp!289128 () Bool)

(declare-fun tp!289127 () Bool)

(assert (=> b!931345 (= e!605284 (and tp!289128 tp!289127))))

(assert (= (and start!83342 res!423044) b!931337))

(assert (= (and b!931337 (not res!423045)) b!931343))

(assert (= (and b!931343 (not res!423048)) b!931336))

(assert (= (and b!931336 (not res!423046)) b!931341))

(assert (= (and b!931336 (not res!423047)) b!931342))

(assert (= (and start!83342 ((_ is ElementMatch!2529) r!15766)) b!931344))

(assert (= (and start!83342 ((_ is Concat!4362) r!15766)) b!931345))

(assert (= (and start!83342 ((_ is Star!2529) r!15766)) b!931339))

(assert (= (and start!83342 ((_ is Union!2529) r!15766)) b!931338))

(assert (= (and start!83342 ((_ is Cons!9743) s!10566)) b!931340))

(declare-fun m!1153347 () Bool)

(assert (=> b!931343 m!1153347))

(declare-fun m!1153349 () Bool)

(assert (=> b!931343 m!1153349))

(declare-fun m!1153351 () Bool)

(assert (=> b!931343 m!1153351))

(declare-fun m!1153353 () Bool)

(assert (=> b!931341 m!1153353))

(declare-fun m!1153355 () Bool)

(assert (=> b!931337 m!1153355))

(declare-fun m!1153357 () Bool)

(assert (=> b!931337 m!1153357))

(declare-fun m!1153359 () Bool)

(assert (=> b!931337 m!1153359))

(declare-fun m!1153361 () Bool)

(assert (=> b!931336 m!1153361))

(declare-fun m!1153363 () Bool)

(assert (=> b!931336 m!1153363))

(declare-fun m!1153365 () Bool)

(assert (=> b!931336 m!1153365))

(declare-fun m!1153367 () Bool)

(assert (=> b!931336 m!1153367))

(declare-fun m!1153369 () Bool)

(assert (=> start!83342 m!1153369))

(declare-fun m!1153371 () Bool)

(assert (=> b!931342 m!1153371))

(declare-fun m!1153373 () Bool)

(assert (=> b!931342 m!1153373))

(declare-fun m!1153375 () Bool)

(assert (=> b!931342 m!1153375))

(check-sat tp_is_empty!4701 (not b!931337) (not b!931342) (not b!931339) (not b!931341) (not b!931340) (not b!931343) (not start!83342) (not b!931345) (not b!931336) (not b!931338))
(check-sat)
(get-model)

(declare-fun b!931396 () Bool)

(declare-fun e!605317 () Bool)

(declare-fun derivativeStep!533 (Regex!2529 C!5628) Regex!2529)

(declare-fun head!1686 (List!9759) C!5628)

(declare-fun tail!1248 (List!9759) List!9759)

(assert (=> b!931396 (= e!605317 (matchR!1067 (derivativeStep!533 lt!340317 (head!1686 s!10566)) (tail!1248 s!10566)))))

(declare-fun b!931397 () Bool)

(declare-fun res!423071 () Bool)

(declare-fun e!605316 () Bool)

(assert (=> b!931397 (=> (not res!423071) (not e!605316))))

(declare-fun call!57438 () Bool)

(assert (=> b!931397 (= res!423071 (not call!57438))))

(declare-fun b!931399 () Bool)

(declare-fun e!605315 () Bool)

(declare-fun lt!340322 () Bool)

(assert (=> b!931399 (= e!605315 (= lt!340322 call!57438))))

(declare-fun b!931400 () Bool)

(declare-fun res!423078 () Bool)

(declare-fun e!605314 () Bool)

(assert (=> b!931400 (=> res!423078 e!605314)))

(declare-fun isEmpty!5996 (List!9759) Bool)

(assert (=> b!931400 (= res!423078 (not (isEmpty!5996 (tail!1248 s!10566))))))

(declare-fun b!931401 () Bool)

(declare-fun e!605320 () Bool)

(assert (=> b!931401 (= e!605320 e!605314)))

(declare-fun res!423072 () Bool)

(assert (=> b!931401 (=> res!423072 e!605314)))

(assert (=> b!931401 (= res!423072 call!57438)))

(declare-fun b!931402 () Bool)

(declare-fun nullable!723 (Regex!2529) Bool)

(assert (=> b!931402 (= e!605317 (nullable!723 lt!340317))))

(declare-fun b!931403 () Bool)

(declare-fun e!605319 () Bool)

(assert (=> b!931403 (= e!605315 e!605319)))

(declare-fun c!151414 () Bool)

(assert (=> b!931403 (= c!151414 ((_ is EmptyLang!2529) lt!340317))))

(declare-fun b!931404 () Bool)

(declare-fun e!605318 () Bool)

(assert (=> b!931404 (= e!605318 e!605320)))

(declare-fun res!423073 () Bool)

(assert (=> b!931404 (=> (not res!423073) (not e!605320))))

(assert (=> b!931404 (= res!423073 (not lt!340322))))

(declare-fun d!281470 () Bool)

(assert (=> d!281470 e!605315))

(declare-fun c!151415 () Bool)

(assert (=> d!281470 (= c!151415 ((_ is EmptyExpr!2529) lt!340317))))

(assert (=> d!281470 (= lt!340322 e!605317)))

(declare-fun c!151413 () Bool)

(assert (=> d!281470 (= c!151413 (isEmpty!5996 s!10566))))

(assert (=> d!281470 (validRegex!998 lt!340317)))

(assert (=> d!281470 (= (matchR!1067 lt!340317 s!10566) lt!340322)))

(declare-fun b!931398 () Bool)

(declare-fun res!423075 () Bool)

(assert (=> b!931398 (=> res!423075 e!605318)))

(assert (=> b!931398 (= res!423075 (not ((_ is ElementMatch!2529) lt!340317)))))

(assert (=> b!931398 (= e!605319 e!605318)))

(declare-fun b!931405 () Bool)

(assert (=> b!931405 (= e!605316 (= (head!1686 s!10566) (c!151398 lt!340317)))))

(declare-fun b!931406 () Bool)

(declare-fun res!423077 () Bool)

(assert (=> b!931406 (=> (not res!423077) (not e!605316))))

(assert (=> b!931406 (= res!423077 (isEmpty!5996 (tail!1248 s!10566)))))

(declare-fun b!931407 () Bool)

(assert (=> b!931407 (= e!605319 (not lt!340322))))

(declare-fun b!931408 () Bool)

(assert (=> b!931408 (= e!605314 (not (= (head!1686 s!10566) (c!151398 lt!340317))))))

(declare-fun bm!57433 () Bool)

(assert (=> bm!57433 (= call!57438 (isEmpty!5996 s!10566))))

(declare-fun b!931409 () Bool)

(declare-fun res!423076 () Bool)

(assert (=> b!931409 (=> res!423076 e!605318)))

(assert (=> b!931409 (= res!423076 e!605316)))

(declare-fun res!423074 () Bool)

(assert (=> b!931409 (=> (not res!423074) (not e!605316))))

(assert (=> b!931409 (= res!423074 lt!340322)))

(assert (= (and d!281470 c!151413) b!931402))

(assert (= (and d!281470 (not c!151413)) b!931396))

(assert (= (and d!281470 c!151415) b!931399))

(assert (= (and d!281470 (not c!151415)) b!931403))

(assert (= (and b!931403 c!151414) b!931407))

(assert (= (and b!931403 (not c!151414)) b!931398))

(assert (= (and b!931398 (not res!423075)) b!931409))

(assert (= (and b!931409 res!423074) b!931397))

(assert (= (and b!931397 res!423071) b!931406))

(assert (= (and b!931406 res!423077) b!931405))

(assert (= (and b!931409 (not res!423076)) b!931404))

(assert (= (and b!931404 res!423073) b!931401))

(assert (= (and b!931401 (not res!423072)) b!931400))

(assert (= (and b!931400 (not res!423078)) b!931408))

(assert (= (or b!931399 b!931397 b!931401) bm!57433))

(declare-fun m!1153377 () Bool)

(assert (=> b!931408 m!1153377))

(declare-fun m!1153379 () Bool)

(assert (=> b!931406 m!1153379))

(assert (=> b!931406 m!1153379))

(declare-fun m!1153381 () Bool)

(assert (=> b!931406 m!1153381))

(assert (=> b!931405 m!1153377))

(declare-fun m!1153383 () Bool)

(assert (=> d!281470 m!1153383))

(declare-fun m!1153385 () Bool)

(assert (=> d!281470 m!1153385))

(assert (=> bm!57433 m!1153383))

(assert (=> b!931396 m!1153377))

(assert (=> b!931396 m!1153377))

(declare-fun m!1153387 () Bool)

(assert (=> b!931396 m!1153387))

(assert (=> b!931396 m!1153379))

(assert (=> b!931396 m!1153387))

(assert (=> b!931396 m!1153379))

(declare-fun m!1153389 () Bool)

(assert (=> b!931396 m!1153389))

(declare-fun m!1153391 () Bool)

(assert (=> b!931402 m!1153391))

(assert (=> b!931400 m!1153379))

(assert (=> b!931400 m!1153379))

(assert (=> b!931400 m!1153381))

(assert (=> b!931343 d!281470))

(declare-fun b!931432 () Bool)

(declare-fun e!605335 () Regex!2529)

(declare-fun call!57452 () Regex!2529)

(assert (=> b!931432 (= e!605335 (Star!2529 call!57452))))

(declare-fun c!151428 () Bool)

(declare-fun c!151427 () Bool)

(declare-fun call!57451 () Regex!2529)

(declare-fun bm!57444 () Bool)

(assert (=> bm!57444 (= call!57451 (removeUselessConcat!204 (ite c!151427 (regTwo!5570 (regTwo!5571 r!15766)) (ite c!151428 (regTwo!5571 (regTwo!5571 r!15766)) (reg!2858 (regTwo!5571 r!15766))))))))

(declare-fun b!931433 () Bool)

(declare-fun e!605338 () Regex!2529)

(declare-fun call!57449 () Regex!2529)

(assert (=> b!931433 (= e!605338 call!57449)))

(declare-fun bm!57445 () Bool)

(declare-fun call!57453 () Regex!2529)

(assert (=> bm!57445 (= call!57449 call!57453)))

(declare-fun d!281472 () Bool)

(declare-fun e!605333 () Bool)

(assert (=> d!281472 e!605333))

(declare-fun res!423081 () Bool)

(assert (=> d!281472 (=> (not res!423081) (not e!605333))))

(declare-fun lt!340325 () Regex!2529)

(assert (=> d!281472 (= res!423081 (validRegex!998 lt!340325))))

(declare-fun e!605336 () Regex!2529)

(assert (=> d!281472 (= lt!340325 e!605336)))

(declare-fun c!151430 () Bool)

(assert (=> d!281472 (= c!151430 (and ((_ is Concat!4362) (regTwo!5571 r!15766)) ((_ is EmptyExpr!2529) (regOne!5570 (regTwo!5571 r!15766)))))))

(assert (=> d!281472 (validRegex!998 (regTwo!5571 r!15766))))

(assert (=> d!281472 (= (removeUselessConcat!204 (regTwo!5571 r!15766)) lt!340325)))

(declare-fun bm!57446 () Bool)

(assert (=> bm!57446 (= call!57452 call!57451)))

(declare-fun b!931434 () Bool)

(assert (=> b!931434 (= e!605333 (= (nullable!723 lt!340325) (nullable!723 (regTwo!5571 r!15766))))))

(declare-fun b!931435 () Bool)

(assert (=> b!931435 (= e!605336 e!605338)))

(declare-fun c!151429 () Bool)

(assert (=> b!931435 (= c!151429 (and ((_ is Concat!4362) (regTwo!5571 r!15766)) ((_ is EmptyExpr!2529) (regTwo!5570 (regTwo!5571 r!15766)))))))

(declare-fun b!931436 () Bool)

(declare-fun e!605337 () Regex!2529)

(declare-fun call!57450 () Regex!2529)

(assert (=> b!931436 (= e!605337 (Concat!4362 call!57450 call!57451))))

(declare-fun b!931437 () Bool)

(assert (=> b!931437 (= e!605335 (regTwo!5571 r!15766))))

(declare-fun bm!57447 () Bool)

(assert (=> bm!57447 (= call!57450 call!57449)))

(declare-fun b!931438 () Bool)

(assert (=> b!931438 (= e!605336 call!57453)))

(declare-fun b!931439 () Bool)

(declare-fun e!605334 () Regex!2529)

(assert (=> b!931439 (= e!605337 e!605334)))

(assert (=> b!931439 (= c!151428 ((_ is Union!2529) (regTwo!5571 r!15766)))))

(declare-fun b!931440 () Bool)

(assert (=> b!931440 (= c!151427 ((_ is Concat!4362) (regTwo!5571 r!15766)))))

(assert (=> b!931440 (= e!605338 e!605337)))

(declare-fun b!931441 () Bool)

(declare-fun c!151426 () Bool)

(assert (=> b!931441 (= c!151426 ((_ is Star!2529) (regTwo!5571 r!15766)))))

(assert (=> b!931441 (= e!605334 e!605335)))

(declare-fun bm!57448 () Bool)

(assert (=> bm!57448 (= call!57453 (removeUselessConcat!204 (ite c!151430 (regTwo!5570 (regTwo!5571 r!15766)) (ite (or c!151429 c!151427) (regOne!5570 (regTwo!5571 r!15766)) (regOne!5571 (regTwo!5571 r!15766))))))))

(declare-fun b!931442 () Bool)

(assert (=> b!931442 (= e!605334 (Union!2529 call!57450 call!57452))))

(assert (= (and d!281472 c!151430) b!931438))

(assert (= (and d!281472 (not c!151430)) b!931435))

(assert (= (and b!931435 c!151429) b!931433))

(assert (= (and b!931435 (not c!151429)) b!931440))

(assert (= (and b!931440 c!151427) b!931436))

(assert (= (and b!931440 (not c!151427)) b!931439))

(assert (= (and b!931439 c!151428) b!931442))

(assert (= (and b!931439 (not c!151428)) b!931441))

(assert (= (and b!931441 c!151426) b!931432))

(assert (= (and b!931441 (not c!151426)) b!931437))

(assert (= (or b!931442 b!931432) bm!57446))

(assert (= (or b!931436 bm!57446) bm!57444))

(assert (= (or b!931436 b!931442) bm!57447))

(assert (= (or b!931433 bm!57447) bm!57445))

(assert (= (or b!931438 bm!57445) bm!57448))

(assert (= (and d!281472 res!423081) b!931434))

(declare-fun m!1153393 () Bool)

(assert (=> bm!57444 m!1153393))

(declare-fun m!1153395 () Bool)

(assert (=> d!281472 m!1153395))

(declare-fun m!1153397 () Bool)

(assert (=> d!281472 m!1153397))

(declare-fun m!1153399 () Bool)

(assert (=> b!931434 m!1153399))

(declare-fun m!1153401 () Bool)

(assert (=> b!931434 m!1153401))

(declare-fun m!1153403 () Bool)

(assert (=> bm!57448 m!1153403))

(assert (=> b!931343 d!281472))

(declare-fun b!931443 () Bool)

(declare-fun e!605341 () Regex!2529)

(declare-fun call!57457 () Regex!2529)

(assert (=> b!931443 (= e!605341 (Star!2529 call!57457))))

(declare-fun c!151433 () Bool)

(declare-fun call!57456 () Regex!2529)

(declare-fun c!151432 () Bool)

(declare-fun bm!57449 () Bool)

(assert (=> bm!57449 (= call!57456 (removeUselessConcat!204 (ite c!151432 (regTwo!5570 (regOne!5571 r!15766)) (ite c!151433 (regTwo!5571 (regOne!5571 r!15766)) (reg!2858 (regOne!5571 r!15766))))))))

(declare-fun b!931444 () Bool)

(declare-fun e!605344 () Regex!2529)

(declare-fun call!57454 () Regex!2529)

(assert (=> b!931444 (= e!605344 call!57454)))

(declare-fun bm!57450 () Bool)

(declare-fun call!57458 () Regex!2529)

(assert (=> bm!57450 (= call!57454 call!57458)))

(declare-fun d!281474 () Bool)

(declare-fun e!605339 () Bool)

(assert (=> d!281474 e!605339))

(declare-fun res!423082 () Bool)

(assert (=> d!281474 (=> (not res!423082) (not e!605339))))

(declare-fun lt!340326 () Regex!2529)

(assert (=> d!281474 (= res!423082 (validRegex!998 lt!340326))))

(declare-fun e!605342 () Regex!2529)

(assert (=> d!281474 (= lt!340326 e!605342)))

(declare-fun c!151435 () Bool)

(assert (=> d!281474 (= c!151435 (and ((_ is Concat!4362) (regOne!5571 r!15766)) ((_ is EmptyExpr!2529) (regOne!5570 (regOne!5571 r!15766)))))))

(assert (=> d!281474 (validRegex!998 (regOne!5571 r!15766))))

(assert (=> d!281474 (= (removeUselessConcat!204 (regOne!5571 r!15766)) lt!340326)))

(declare-fun bm!57451 () Bool)

(assert (=> bm!57451 (= call!57457 call!57456)))

(declare-fun b!931445 () Bool)

(assert (=> b!931445 (= e!605339 (= (nullable!723 lt!340326) (nullable!723 (regOne!5571 r!15766))))))

(declare-fun b!931446 () Bool)

(assert (=> b!931446 (= e!605342 e!605344)))

(declare-fun c!151434 () Bool)

(assert (=> b!931446 (= c!151434 (and ((_ is Concat!4362) (regOne!5571 r!15766)) ((_ is EmptyExpr!2529) (regTwo!5570 (regOne!5571 r!15766)))))))

(declare-fun b!931447 () Bool)

(declare-fun e!605343 () Regex!2529)

(declare-fun call!57455 () Regex!2529)

(assert (=> b!931447 (= e!605343 (Concat!4362 call!57455 call!57456))))

(declare-fun b!931448 () Bool)

(assert (=> b!931448 (= e!605341 (regOne!5571 r!15766))))

(declare-fun bm!57452 () Bool)

(assert (=> bm!57452 (= call!57455 call!57454)))

(declare-fun b!931449 () Bool)

(assert (=> b!931449 (= e!605342 call!57458)))

(declare-fun b!931450 () Bool)

(declare-fun e!605340 () Regex!2529)

(assert (=> b!931450 (= e!605343 e!605340)))

(assert (=> b!931450 (= c!151433 ((_ is Union!2529) (regOne!5571 r!15766)))))

(declare-fun b!931451 () Bool)

(assert (=> b!931451 (= c!151432 ((_ is Concat!4362) (regOne!5571 r!15766)))))

(assert (=> b!931451 (= e!605344 e!605343)))

(declare-fun b!931452 () Bool)

(declare-fun c!151431 () Bool)

(assert (=> b!931452 (= c!151431 ((_ is Star!2529) (regOne!5571 r!15766)))))

(assert (=> b!931452 (= e!605340 e!605341)))

(declare-fun bm!57453 () Bool)

(assert (=> bm!57453 (= call!57458 (removeUselessConcat!204 (ite c!151435 (regTwo!5570 (regOne!5571 r!15766)) (ite (or c!151434 c!151432) (regOne!5570 (regOne!5571 r!15766)) (regOne!5571 (regOne!5571 r!15766))))))))

(declare-fun b!931453 () Bool)

(assert (=> b!931453 (= e!605340 (Union!2529 call!57455 call!57457))))

(assert (= (and d!281474 c!151435) b!931449))

(assert (= (and d!281474 (not c!151435)) b!931446))

(assert (= (and b!931446 c!151434) b!931444))

(assert (= (and b!931446 (not c!151434)) b!931451))

(assert (= (and b!931451 c!151432) b!931447))

(assert (= (and b!931451 (not c!151432)) b!931450))

(assert (= (and b!931450 c!151433) b!931453))

(assert (= (and b!931450 (not c!151433)) b!931452))

(assert (= (and b!931452 c!151431) b!931443))

(assert (= (and b!931452 (not c!151431)) b!931448))

(assert (= (or b!931453 b!931443) bm!57451))

(assert (= (or b!931447 bm!57451) bm!57449))

(assert (= (or b!931447 b!931453) bm!57452))

(assert (= (or b!931444 bm!57452) bm!57450))

(assert (= (or b!931449 bm!57450) bm!57453))

(assert (= (and d!281474 res!423082) b!931445))

(declare-fun m!1153405 () Bool)

(assert (=> bm!57449 m!1153405))

(declare-fun m!1153407 () Bool)

(assert (=> d!281474 m!1153407))

(assert (=> d!281474 m!1153371))

(declare-fun m!1153409 () Bool)

(assert (=> b!931445 m!1153409))

(declare-fun m!1153411 () Bool)

(assert (=> b!931445 m!1153411))

(declare-fun m!1153413 () Bool)

(assert (=> bm!57453 m!1153413))

(assert (=> b!931343 d!281474))

(declare-fun b!931472 () Bool)

(declare-fun e!605360 () Bool)

(declare-fun call!57466 () Bool)

(assert (=> b!931472 (= e!605360 call!57466)))

(declare-fun d!281476 () Bool)

(declare-fun res!423093 () Bool)

(declare-fun e!605362 () Bool)

(assert (=> d!281476 (=> res!423093 e!605362)))

(assert (=> d!281476 (= res!423093 ((_ is ElementMatch!2529) r!15766))))

(assert (=> d!281476 (= (validRegex!998 r!15766) e!605362)))

(declare-fun b!931473 () Bool)

(declare-fun e!605364 () Bool)

(assert (=> b!931473 (= e!605362 e!605364)))

(declare-fun c!151440 () Bool)

(assert (=> b!931473 (= c!151440 ((_ is Star!2529) r!15766))))

(declare-fun b!931474 () Bool)

(declare-fun e!605365 () Bool)

(assert (=> b!931474 (= e!605364 e!605365)))

(declare-fun res!423095 () Bool)

(assert (=> b!931474 (= res!423095 (not (nullable!723 (reg!2858 r!15766))))))

(assert (=> b!931474 (=> (not res!423095) (not e!605365))))

(declare-fun b!931475 () Bool)

(declare-fun e!605363 () Bool)

(assert (=> b!931475 (= e!605364 e!605363)))

(declare-fun c!151441 () Bool)

(assert (=> b!931475 (= c!151441 ((_ is Union!2529) r!15766))))

(declare-fun b!931476 () Bool)

(declare-fun e!605361 () Bool)

(assert (=> b!931476 (= e!605361 e!605360)))

(declare-fun res!423094 () Bool)

(assert (=> b!931476 (=> (not res!423094) (not e!605360))))

(declare-fun call!57467 () Bool)

(assert (=> b!931476 (= res!423094 call!57467)))

(declare-fun bm!57460 () Bool)

(assert (=> bm!57460 (= call!57467 (validRegex!998 (ite c!151441 (regOne!5571 r!15766) (regOne!5570 r!15766))))))

(declare-fun b!931477 () Bool)

(declare-fun call!57465 () Bool)

(assert (=> b!931477 (= e!605365 call!57465)))

(declare-fun bm!57461 () Bool)

(assert (=> bm!57461 (= call!57465 (validRegex!998 (ite c!151440 (reg!2858 r!15766) (ite c!151441 (regTwo!5571 r!15766) (regTwo!5570 r!15766)))))))

(declare-fun b!931478 () Bool)

(declare-fun res!423096 () Bool)

(assert (=> b!931478 (=> res!423096 e!605361)))

(assert (=> b!931478 (= res!423096 (not ((_ is Concat!4362) r!15766)))))

(assert (=> b!931478 (= e!605363 e!605361)))

(declare-fun b!931479 () Bool)

(declare-fun e!605359 () Bool)

(assert (=> b!931479 (= e!605359 call!57466)))

(declare-fun b!931480 () Bool)

(declare-fun res!423097 () Bool)

(assert (=> b!931480 (=> (not res!423097) (not e!605359))))

(assert (=> b!931480 (= res!423097 call!57467)))

(assert (=> b!931480 (= e!605363 e!605359)))

(declare-fun bm!57462 () Bool)

(assert (=> bm!57462 (= call!57466 call!57465)))

(assert (= (and d!281476 (not res!423093)) b!931473))

(assert (= (and b!931473 c!151440) b!931474))

(assert (= (and b!931473 (not c!151440)) b!931475))

(assert (= (and b!931474 res!423095) b!931477))

(assert (= (and b!931475 c!151441) b!931480))

(assert (= (and b!931475 (not c!151441)) b!931478))

(assert (= (and b!931480 res!423097) b!931479))

(assert (= (and b!931478 (not res!423096)) b!931476))

(assert (= (and b!931476 res!423094) b!931472))

(assert (= (or b!931479 b!931472) bm!57462))

(assert (= (or b!931480 b!931476) bm!57460))

(assert (= (or b!931477 bm!57462) bm!57461))

(declare-fun m!1153415 () Bool)

(assert (=> b!931474 m!1153415))

(declare-fun m!1153417 () Bool)

(assert (=> bm!57460 m!1153417))

(declare-fun m!1153419 () Bool)

(assert (=> bm!57461 m!1153419))

(assert (=> start!83342 d!281476))

(declare-fun b!931481 () Bool)

(declare-fun e!605367 () Bool)

(declare-fun call!57469 () Bool)

(assert (=> b!931481 (= e!605367 call!57469)))

(declare-fun d!281478 () Bool)

(declare-fun res!423098 () Bool)

(declare-fun e!605369 () Bool)

(assert (=> d!281478 (=> res!423098 e!605369)))

(assert (=> d!281478 (= res!423098 ((_ is ElementMatch!2529) (regOne!5571 r!15766)))))

(assert (=> d!281478 (= (validRegex!998 (regOne!5571 r!15766)) e!605369)))

(declare-fun b!931482 () Bool)

(declare-fun e!605371 () Bool)

(assert (=> b!931482 (= e!605369 e!605371)))

(declare-fun c!151442 () Bool)

(assert (=> b!931482 (= c!151442 ((_ is Star!2529) (regOne!5571 r!15766)))))

(declare-fun b!931483 () Bool)

(declare-fun e!605372 () Bool)

(assert (=> b!931483 (= e!605371 e!605372)))

(declare-fun res!423100 () Bool)

(assert (=> b!931483 (= res!423100 (not (nullable!723 (reg!2858 (regOne!5571 r!15766)))))))

(assert (=> b!931483 (=> (not res!423100) (not e!605372))))

(declare-fun b!931484 () Bool)

(declare-fun e!605370 () Bool)

(assert (=> b!931484 (= e!605371 e!605370)))

(declare-fun c!151443 () Bool)

(assert (=> b!931484 (= c!151443 ((_ is Union!2529) (regOne!5571 r!15766)))))

(declare-fun b!931485 () Bool)

(declare-fun e!605368 () Bool)

(assert (=> b!931485 (= e!605368 e!605367)))

(declare-fun res!423099 () Bool)

(assert (=> b!931485 (=> (not res!423099) (not e!605367))))

(declare-fun call!57470 () Bool)

(assert (=> b!931485 (= res!423099 call!57470)))

(declare-fun bm!57463 () Bool)

(assert (=> bm!57463 (= call!57470 (validRegex!998 (ite c!151443 (regOne!5571 (regOne!5571 r!15766)) (regOne!5570 (regOne!5571 r!15766)))))))

(declare-fun b!931486 () Bool)

(declare-fun call!57468 () Bool)

(assert (=> b!931486 (= e!605372 call!57468)))

(declare-fun bm!57464 () Bool)

(assert (=> bm!57464 (= call!57468 (validRegex!998 (ite c!151442 (reg!2858 (regOne!5571 r!15766)) (ite c!151443 (regTwo!5571 (regOne!5571 r!15766)) (regTwo!5570 (regOne!5571 r!15766))))))))

(declare-fun b!931487 () Bool)

(declare-fun res!423101 () Bool)

(assert (=> b!931487 (=> res!423101 e!605368)))

(assert (=> b!931487 (= res!423101 (not ((_ is Concat!4362) (regOne!5571 r!15766))))))

(assert (=> b!931487 (= e!605370 e!605368)))

(declare-fun b!931488 () Bool)

(declare-fun e!605366 () Bool)

(assert (=> b!931488 (= e!605366 call!57469)))

(declare-fun b!931489 () Bool)

(declare-fun res!423102 () Bool)

(assert (=> b!931489 (=> (not res!423102) (not e!605366))))

(assert (=> b!931489 (= res!423102 call!57470)))

(assert (=> b!931489 (= e!605370 e!605366)))

(declare-fun bm!57465 () Bool)

(assert (=> bm!57465 (= call!57469 call!57468)))

(assert (= (and d!281478 (not res!423098)) b!931482))

(assert (= (and b!931482 c!151442) b!931483))

(assert (= (and b!931482 (not c!151442)) b!931484))

(assert (= (and b!931483 res!423100) b!931486))

(assert (= (and b!931484 c!151443) b!931489))

(assert (= (and b!931484 (not c!151443)) b!931487))

(assert (= (and b!931489 res!423102) b!931488))

(assert (= (and b!931487 (not res!423101)) b!931485))

(assert (= (and b!931485 res!423099) b!931481))

(assert (= (or b!931488 b!931481) bm!57465))

(assert (= (or b!931489 b!931485) bm!57463))

(assert (= (or b!931486 bm!57465) bm!57464))

(declare-fun m!1153421 () Bool)

(assert (=> b!931483 m!1153421))

(declare-fun m!1153423 () Bool)

(assert (=> bm!57463 m!1153423))

(declare-fun m!1153425 () Bool)

(assert (=> bm!57464 m!1153425))

(assert (=> b!931342 d!281478))

(declare-fun b!931490 () Bool)

(declare-fun e!605376 () Bool)

(assert (=> b!931490 (= e!605376 (matchR!1067 (derivativeStep!533 (regOne!5571 r!15766) (head!1686 s!10566)) (tail!1248 s!10566)))))

(declare-fun b!931491 () Bool)

(declare-fun res!423103 () Bool)

(declare-fun e!605375 () Bool)

(assert (=> b!931491 (=> (not res!423103) (not e!605375))))

(declare-fun call!57471 () Bool)

(assert (=> b!931491 (= res!423103 (not call!57471))))

(declare-fun b!931493 () Bool)

(declare-fun e!605374 () Bool)

(declare-fun lt!340327 () Bool)

(assert (=> b!931493 (= e!605374 (= lt!340327 call!57471))))

(declare-fun b!931494 () Bool)

(declare-fun res!423110 () Bool)

(declare-fun e!605373 () Bool)

(assert (=> b!931494 (=> res!423110 e!605373)))

(assert (=> b!931494 (= res!423110 (not (isEmpty!5996 (tail!1248 s!10566))))))

(declare-fun b!931495 () Bool)

(declare-fun e!605379 () Bool)

(assert (=> b!931495 (= e!605379 e!605373)))

(declare-fun res!423104 () Bool)

(assert (=> b!931495 (=> res!423104 e!605373)))

(assert (=> b!931495 (= res!423104 call!57471)))

(declare-fun b!931496 () Bool)

(assert (=> b!931496 (= e!605376 (nullable!723 (regOne!5571 r!15766)))))

(declare-fun b!931497 () Bool)

(declare-fun e!605378 () Bool)

(assert (=> b!931497 (= e!605374 e!605378)))

(declare-fun c!151445 () Bool)

(assert (=> b!931497 (= c!151445 ((_ is EmptyLang!2529) (regOne!5571 r!15766)))))

(declare-fun b!931498 () Bool)

(declare-fun e!605377 () Bool)

(assert (=> b!931498 (= e!605377 e!605379)))

(declare-fun res!423105 () Bool)

(assert (=> b!931498 (=> (not res!423105) (not e!605379))))

(assert (=> b!931498 (= res!423105 (not lt!340327))))

(declare-fun d!281480 () Bool)

(assert (=> d!281480 e!605374))

(declare-fun c!151446 () Bool)

(assert (=> d!281480 (= c!151446 ((_ is EmptyExpr!2529) (regOne!5571 r!15766)))))

(assert (=> d!281480 (= lt!340327 e!605376)))

(declare-fun c!151444 () Bool)

(assert (=> d!281480 (= c!151444 (isEmpty!5996 s!10566))))

(assert (=> d!281480 (validRegex!998 (regOne!5571 r!15766))))

(assert (=> d!281480 (= (matchR!1067 (regOne!5571 r!15766) s!10566) lt!340327)))

(declare-fun b!931492 () Bool)

(declare-fun res!423107 () Bool)

(assert (=> b!931492 (=> res!423107 e!605377)))

(assert (=> b!931492 (= res!423107 (not ((_ is ElementMatch!2529) (regOne!5571 r!15766))))))

(assert (=> b!931492 (= e!605378 e!605377)))

(declare-fun b!931499 () Bool)

(assert (=> b!931499 (= e!605375 (= (head!1686 s!10566) (c!151398 (regOne!5571 r!15766))))))

(declare-fun b!931500 () Bool)

(declare-fun res!423109 () Bool)

(assert (=> b!931500 (=> (not res!423109) (not e!605375))))

(assert (=> b!931500 (= res!423109 (isEmpty!5996 (tail!1248 s!10566)))))

(declare-fun b!931501 () Bool)

(assert (=> b!931501 (= e!605378 (not lt!340327))))

(declare-fun b!931502 () Bool)

(assert (=> b!931502 (= e!605373 (not (= (head!1686 s!10566) (c!151398 (regOne!5571 r!15766)))))))

(declare-fun bm!57466 () Bool)

(assert (=> bm!57466 (= call!57471 (isEmpty!5996 s!10566))))

(declare-fun b!931503 () Bool)

(declare-fun res!423108 () Bool)

(assert (=> b!931503 (=> res!423108 e!605377)))

(assert (=> b!931503 (= res!423108 e!605375)))

(declare-fun res!423106 () Bool)

(assert (=> b!931503 (=> (not res!423106) (not e!605375))))

(assert (=> b!931503 (= res!423106 lt!340327)))

(assert (= (and d!281480 c!151444) b!931496))

(assert (= (and d!281480 (not c!151444)) b!931490))

(assert (= (and d!281480 c!151446) b!931493))

(assert (= (and d!281480 (not c!151446)) b!931497))

(assert (= (and b!931497 c!151445) b!931501))

(assert (= (and b!931497 (not c!151445)) b!931492))

(assert (= (and b!931492 (not res!423107)) b!931503))

(assert (= (and b!931503 res!423106) b!931491))

(assert (= (and b!931491 res!423103) b!931500))

(assert (= (and b!931500 res!423109) b!931499))

(assert (= (and b!931503 (not res!423108)) b!931498))

(assert (= (and b!931498 res!423105) b!931495))

(assert (= (and b!931495 (not res!423104)) b!931494))

(assert (= (and b!931494 (not res!423110)) b!931502))

(assert (= (or b!931493 b!931491 b!931495) bm!57466))

(assert (=> b!931502 m!1153377))

(assert (=> b!931500 m!1153379))

(assert (=> b!931500 m!1153379))

(assert (=> b!931500 m!1153381))

(assert (=> b!931499 m!1153377))

(assert (=> d!281480 m!1153383))

(assert (=> d!281480 m!1153371))

(assert (=> bm!57466 m!1153383))

(assert (=> b!931490 m!1153377))

(assert (=> b!931490 m!1153377))

(declare-fun m!1153427 () Bool)

(assert (=> b!931490 m!1153427))

(assert (=> b!931490 m!1153379))

(assert (=> b!931490 m!1153427))

(assert (=> b!931490 m!1153379))

(declare-fun m!1153429 () Bool)

(assert (=> b!931490 m!1153429))

(assert (=> b!931496 m!1153411))

(assert (=> b!931494 m!1153379))

(assert (=> b!931494 m!1153379))

(assert (=> b!931494 m!1153381))

(assert (=> b!931342 d!281480))

(declare-fun d!281482 () Bool)

(assert (=> d!281482 (= (matchR!1067 (regOne!5571 r!15766) s!10566) (matchR!1067 (removeUselessConcat!204 (regOne!5571 r!15766)) s!10566))))

(declare-fun lt!340330 () Unit!14677)

(declare-fun choose!5729 (Regex!2529 List!9759) Unit!14677)

(assert (=> d!281482 (= lt!340330 (choose!5729 (regOne!5571 r!15766) s!10566))))

(assert (=> d!281482 (validRegex!998 (regOne!5571 r!15766))))

(assert (=> d!281482 (= (lemmaRemoveUselessConcatSound!116 (regOne!5571 r!15766) s!10566) lt!340330)))

(declare-fun bs!237696 () Bool)

(assert (= bs!237696 d!281482))

(assert (=> bs!237696 m!1153351))

(declare-fun m!1153431 () Bool)

(assert (=> bs!237696 m!1153431))

(assert (=> bs!237696 m!1153351))

(declare-fun m!1153433 () Bool)

(assert (=> bs!237696 m!1153433))

(assert (=> bs!237696 m!1153373))

(assert (=> bs!237696 m!1153371))

(assert (=> b!931342 d!281482))

(declare-fun b!931796 () Bool)

(assert (=> b!931796 true))

(assert (=> b!931796 true))

(declare-fun bs!237706 () Bool)

(declare-fun b!931797 () Bool)

(assert (= bs!237706 (and b!931797 b!931796)))

(declare-fun lambda!30818 () Int)

(declare-fun lambda!30817 () Int)

(assert (=> bs!237706 (not (= lambda!30818 lambda!30817))))

(assert (=> b!931797 true))

(assert (=> b!931797 true))

(declare-fun b!931791 () Bool)

(declare-fun e!605536 () Bool)

(declare-fun call!57523 () Bool)

(assert (=> b!931791 (= e!605536 call!57523)))

(declare-fun b!931792 () Bool)

(declare-fun e!605538 () Bool)

(assert (=> b!931792 (= e!605538 (matchRSpec!330 (regTwo!5571 r!15766) s!10566))))

(declare-fun b!931793 () Bool)

(declare-fun c!151514 () Bool)

(assert (=> b!931793 (= c!151514 ((_ is Union!2529) r!15766))))

(declare-fun e!605535 () Bool)

(declare-fun e!605537 () Bool)

(assert (=> b!931793 (= e!605535 e!605537)))

(declare-fun bm!57518 () Bool)

(declare-fun call!57524 () Bool)

(declare-fun c!151515 () Bool)

(declare-fun Exists!294 (Int) Bool)

(assert (=> bm!57518 (= call!57524 (Exists!294 (ite c!151515 lambda!30817 lambda!30818)))))

(declare-fun b!931794 () Bool)

(assert (=> b!931794 (= e!605535 (= s!10566 (Cons!9743 (c!151398 r!15766) Nil!9743)))))

(declare-fun b!931795 () Bool)

(assert (=> b!931795 (= e!605537 e!605538)))

(declare-fun res!423229 () Bool)

(assert (=> b!931795 (= res!423229 (matchRSpec!330 (regOne!5571 r!15766) s!10566))))

(assert (=> b!931795 (=> res!423229 e!605538)))

(declare-fun e!605534 () Bool)

(assert (=> b!931796 (= e!605534 call!57524)))

(declare-fun e!605533 () Bool)

(assert (=> b!931797 (= e!605533 call!57524)))

(declare-fun bm!57519 () Bool)

(assert (=> bm!57519 (= call!57523 (isEmpty!5996 s!10566))))

(declare-fun d!281484 () Bool)

(declare-fun c!151512 () Bool)

(assert (=> d!281484 (= c!151512 ((_ is EmptyExpr!2529) r!15766))))

(assert (=> d!281484 (= (matchRSpec!330 r!15766 s!10566) e!605536)))

(declare-fun b!931798 () Bool)

(declare-fun c!151513 () Bool)

(assert (=> b!931798 (= c!151513 ((_ is ElementMatch!2529) r!15766))))

(declare-fun e!605539 () Bool)

(assert (=> b!931798 (= e!605539 e!605535)))

(declare-fun b!931799 () Bool)

(assert (=> b!931799 (= e!605536 e!605539)))

(declare-fun res!423230 () Bool)

(assert (=> b!931799 (= res!423230 (not ((_ is EmptyLang!2529) r!15766)))))

(assert (=> b!931799 (=> (not res!423230) (not e!605539))))

(declare-fun b!931800 () Bool)

(assert (=> b!931800 (= e!605537 e!605533)))

(assert (=> b!931800 (= c!151515 ((_ is Star!2529) r!15766))))

(declare-fun b!931801 () Bool)

(declare-fun res!423231 () Bool)

(assert (=> b!931801 (=> res!423231 e!605534)))

(assert (=> b!931801 (= res!423231 call!57523)))

(assert (=> b!931801 (= e!605533 e!605534)))

(assert (= (and d!281484 c!151512) b!931791))

(assert (= (and d!281484 (not c!151512)) b!931799))

(assert (= (and b!931799 res!423230) b!931798))

(assert (= (and b!931798 c!151513) b!931794))

(assert (= (and b!931798 (not c!151513)) b!931793))

(assert (= (and b!931793 c!151514) b!931795))

(assert (= (and b!931793 (not c!151514)) b!931800))

(assert (= (and b!931795 (not res!423229)) b!931792))

(assert (= (and b!931800 c!151515) b!931801))

(assert (= (and b!931800 (not c!151515)) b!931797))

(assert (= (and b!931801 (not res!423231)) b!931796))

(assert (= (or b!931796 b!931797) bm!57518))

(assert (= (or b!931791 b!931801) bm!57519))

(declare-fun m!1153533 () Bool)

(assert (=> b!931792 m!1153533))

(declare-fun m!1153535 () Bool)

(assert (=> bm!57518 m!1153535))

(declare-fun m!1153537 () Bool)

(assert (=> b!931795 m!1153537))

(assert (=> bm!57519 m!1153383))

(assert (=> b!931337 d!281484))

(declare-fun b!931806 () Bool)

(declare-fun e!605543 () Bool)

(assert (=> b!931806 (= e!605543 (matchR!1067 (derivativeStep!533 r!15766 (head!1686 s!10566)) (tail!1248 s!10566)))))

(declare-fun b!931807 () Bool)

(declare-fun res!423232 () Bool)

(declare-fun e!605542 () Bool)

(assert (=> b!931807 (=> (not res!423232) (not e!605542))))

(declare-fun call!57525 () Bool)

(assert (=> b!931807 (= res!423232 (not call!57525))))

(declare-fun b!931809 () Bool)

(declare-fun e!605541 () Bool)

(declare-fun lt!340352 () Bool)

(assert (=> b!931809 (= e!605541 (= lt!340352 call!57525))))

(declare-fun b!931810 () Bool)

(declare-fun res!423239 () Bool)

(declare-fun e!605540 () Bool)

(assert (=> b!931810 (=> res!423239 e!605540)))

(assert (=> b!931810 (= res!423239 (not (isEmpty!5996 (tail!1248 s!10566))))))

(declare-fun b!931811 () Bool)

(declare-fun e!605546 () Bool)

(assert (=> b!931811 (= e!605546 e!605540)))

(declare-fun res!423233 () Bool)

(assert (=> b!931811 (=> res!423233 e!605540)))

(assert (=> b!931811 (= res!423233 call!57525)))

(declare-fun b!931812 () Bool)

(assert (=> b!931812 (= e!605543 (nullable!723 r!15766))))

(declare-fun b!931813 () Bool)

(declare-fun e!605545 () Bool)

(assert (=> b!931813 (= e!605541 e!605545)))

(declare-fun c!151517 () Bool)

(assert (=> b!931813 (= c!151517 ((_ is EmptyLang!2529) r!15766))))

(declare-fun b!931814 () Bool)

(declare-fun e!605544 () Bool)

(assert (=> b!931814 (= e!605544 e!605546)))

(declare-fun res!423234 () Bool)

(assert (=> b!931814 (=> (not res!423234) (not e!605546))))

(assert (=> b!931814 (= res!423234 (not lt!340352))))

(declare-fun d!281514 () Bool)

(assert (=> d!281514 e!605541))

(declare-fun c!151518 () Bool)

(assert (=> d!281514 (= c!151518 ((_ is EmptyExpr!2529) r!15766))))

(assert (=> d!281514 (= lt!340352 e!605543)))

(declare-fun c!151516 () Bool)

(assert (=> d!281514 (= c!151516 (isEmpty!5996 s!10566))))

(assert (=> d!281514 (validRegex!998 r!15766)))

(assert (=> d!281514 (= (matchR!1067 r!15766 s!10566) lt!340352)))

(declare-fun b!931808 () Bool)

(declare-fun res!423236 () Bool)

(assert (=> b!931808 (=> res!423236 e!605544)))

(assert (=> b!931808 (= res!423236 (not ((_ is ElementMatch!2529) r!15766)))))

(assert (=> b!931808 (= e!605545 e!605544)))

(declare-fun b!931815 () Bool)

(assert (=> b!931815 (= e!605542 (= (head!1686 s!10566) (c!151398 r!15766)))))

(declare-fun b!931816 () Bool)

(declare-fun res!423238 () Bool)

(assert (=> b!931816 (=> (not res!423238) (not e!605542))))

(assert (=> b!931816 (= res!423238 (isEmpty!5996 (tail!1248 s!10566)))))

(declare-fun b!931817 () Bool)

(assert (=> b!931817 (= e!605545 (not lt!340352))))

(declare-fun b!931818 () Bool)

(assert (=> b!931818 (= e!605540 (not (= (head!1686 s!10566) (c!151398 r!15766))))))

(declare-fun bm!57520 () Bool)

(assert (=> bm!57520 (= call!57525 (isEmpty!5996 s!10566))))

(declare-fun b!931819 () Bool)

(declare-fun res!423237 () Bool)

(assert (=> b!931819 (=> res!423237 e!605544)))

(assert (=> b!931819 (= res!423237 e!605542)))

(declare-fun res!423235 () Bool)

(assert (=> b!931819 (=> (not res!423235) (not e!605542))))

(assert (=> b!931819 (= res!423235 lt!340352)))

(assert (= (and d!281514 c!151516) b!931812))

(assert (= (and d!281514 (not c!151516)) b!931806))

(assert (= (and d!281514 c!151518) b!931809))

(assert (= (and d!281514 (not c!151518)) b!931813))

(assert (= (and b!931813 c!151517) b!931817))

(assert (= (and b!931813 (not c!151517)) b!931808))

(assert (= (and b!931808 (not res!423236)) b!931819))

(assert (= (and b!931819 res!423235) b!931807))

(assert (= (and b!931807 res!423232) b!931816))

(assert (= (and b!931816 res!423238) b!931815))

(assert (= (and b!931819 (not res!423237)) b!931814))

(assert (= (and b!931814 res!423234) b!931811))

(assert (= (and b!931811 (not res!423233)) b!931810))

(assert (= (and b!931810 (not res!423239)) b!931818))

(assert (= (or b!931809 b!931807 b!931811) bm!57520))

(assert (=> b!931818 m!1153377))

(assert (=> b!931816 m!1153379))

(assert (=> b!931816 m!1153379))

(assert (=> b!931816 m!1153381))

(assert (=> b!931815 m!1153377))

(assert (=> d!281514 m!1153383))

(assert (=> d!281514 m!1153369))

(assert (=> bm!57520 m!1153383))

(assert (=> b!931806 m!1153377))

(assert (=> b!931806 m!1153377))

(declare-fun m!1153539 () Bool)

(assert (=> b!931806 m!1153539))

(assert (=> b!931806 m!1153379))

(assert (=> b!931806 m!1153539))

(assert (=> b!931806 m!1153379))

(declare-fun m!1153541 () Bool)

(assert (=> b!931806 m!1153541))

(declare-fun m!1153543 () Bool)

(assert (=> b!931812 m!1153543))

(assert (=> b!931810 m!1153379))

(assert (=> b!931810 m!1153379))

(assert (=> b!931810 m!1153381))

(assert (=> b!931337 d!281514))

(declare-fun d!281516 () Bool)

(assert (=> d!281516 (= (matchR!1067 r!15766 s!10566) (matchRSpec!330 r!15766 s!10566))))

(declare-fun lt!340355 () Unit!14677)

(declare-fun choose!5730 (Regex!2529 List!9759) Unit!14677)

(assert (=> d!281516 (= lt!340355 (choose!5730 r!15766 s!10566))))

(assert (=> d!281516 (validRegex!998 r!15766)))

(assert (=> d!281516 (= (mainMatchTheorem!330 r!15766 s!10566) lt!340355)))

(declare-fun bs!237707 () Bool)

(assert (= bs!237707 d!281516))

(assert (=> bs!237707 m!1153357))

(assert (=> bs!237707 m!1153355))

(declare-fun m!1153545 () Bool)

(assert (=> bs!237707 m!1153545))

(assert (=> bs!237707 m!1153369))

(assert (=> b!931337 d!281516))

(declare-fun b!931820 () Bool)

(declare-fun e!605550 () Bool)

(assert (=> b!931820 (= e!605550 (matchR!1067 (derivativeStep!533 lt!340312 (head!1686 s!10566)) (tail!1248 s!10566)))))

(declare-fun b!931821 () Bool)

(declare-fun res!423240 () Bool)

(declare-fun e!605549 () Bool)

(assert (=> b!931821 (=> (not res!423240) (not e!605549))))

(declare-fun call!57526 () Bool)

(assert (=> b!931821 (= res!423240 (not call!57526))))

(declare-fun b!931823 () Bool)

(declare-fun e!605548 () Bool)

(declare-fun lt!340356 () Bool)

(assert (=> b!931823 (= e!605548 (= lt!340356 call!57526))))

(declare-fun b!931824 () Bool)

(declare-fun res!423247 () Bool)

(declare-fun e!605547 () Bool)

(assert (=> b!931824 (=> res!423247 e!605547)))

(assert (=> b!931824 (= res!423247 (not (isEmpty!5996 (tail!1248 s!10566))))))

(declare-fun b!931825 () Bool)

(declare-fun e!605553 () Bool)

(assert (=> b!931825 (= e!605553 e!605547)))

(declare-fun res!423241 () Bool)

(assert (=> b!931825 (=> res!423241 e!605547)))

(assert (=> b!931825 (= res!423241 call!57526)))

(declare-fun b!931826 () Bool)

(assert (=> b!931826 (= e!605550 (nullable!723 lt!340312))))

(declare-fun b!931827 () Bool)

(declare-fun e!605552 () Bool)

(assert (=> b!931827 (= e!605548 e!605552)))

(declare-fun c!151520 () Bool)

(assert (=> b!931827 (= c!151520 ((_ is EmptyLang!2529) lt!340312))))

(declare-fun b!931828 () Bool)

(declare-fun e!605551 () Bool)

(assert (=> b!931828 (= e!605551 e!605553)))

(declare-fun res!423242 () Bool)

(assert (=> b!931828 (=> (not res!423242) (not e!605553))))

(assert (=> b!931828 (= res!423242 (not lt!340356))))

(declare-fun d!281518 () Bool)

(assert (=> d!281518 e!605548))

(declare-fun c!151521 () Bool)

(assert (=> d!281518 (= c!151521 ((_ is EmptyExpr!2529) lt!340312))))

(assert (=> d!281518 (= lt!340356 e!605550)))

(declare-fun c!151519 () Bool)

(assert (=> d!281518 (= c!151519 (isEmpty!5996 s!10566))))

(assert (=> d!281518 (validRegex!998 lt!340312)))

(assert (=> d!281518 (= (matchR!1067 lt!340312 s!10566) lt!340356)))

(declare-fun b!931822 () Bool)

(declare-fun res!423244 () Bool)

(assert (=> b!931822 (=> res!423244 e!605551)))

(assert (=> b!931822 (= res!423244 (not ((_ is ElementMatch!2529) lt!340312)))))

(assert (=> b!931822 (= e!605552 e!605551)))

(declare-fun b!931829 () Bool)

(assert (=> b!931829 (= e!605549 (= (head!1686 s!10566) (c!151398 lt!340312)))))

(declare-fun b!931830 () Bool)

(declare-fun res!423246 () Bool)

(assert (=> b!931830 (=> (not res!423246) (not e!605549))))

(assert (=> b!931830 (= res!423246 (isEmpty!5996 (tail!1248 s!10566)))))

(declare-fun b!931831 () Bool)

(assert (=> b!931831 (= e!605552 (not lt!340356))))

(declare-fun b!931832 () Bool)

(assert (=> b!931832 (= e!605547 (not (= (head!1686 s!10566) (c!151398 lt!340312))))))

(declare-fun bm!57521 () Bool)

(assert (=> bm!57521 (= call!57526 (isEmpty!5996 s!10566))))

(declare-fun b!931833 () Bool)

(declare-fun res!423245 () Bool)

(assert (=> b!931833 (=> res!423245 e!605551)))

(assert (=> b!931833 (= res!423245 e!605549)))

(declare-fun res!423243 () Bool)

(assert (=> b!931833 (=> (not res!423243) (not e!605549))))

(assert (=> b!931833 (= res!423243 lt!340356)))

(assert (= (and d!281518 c!151519) b!931826))

(assert (= (and d!281518 (not c!151519)) b!931820))

(assert (= (and d!281518 c!151521) b!931823))

(assert (= (and d!281518 (not c!151521)) b!931827))

(assert (= (and b!931827 c!151520) b!931831))

(assert (= (and b!931827 (not c!151520)) b!931822))

(assert (= (and b!931822 (not res!423244)) b!931833))

(assert (= (and b!931833 res!423243) b!931821))

(assert (= (and b!931821 res!423240) b!931830))

(assert (= (and b!931830 res!423246) b!931829))

(assert (= (and b!931833 (not res!423245)) b!931828))

(assert (= (and b!931828 res!423242) b!931825))

(assert (= (and b!931825 (not res!423241)) b!931824))

(assert (= (and b!931824 (not res!423247)) b!931832))

(assert (= (or b!931823 b!931821 b!931825) bm!57521))

(assert (=> b!931832 m!1153377))

(assert (=> b!931830 m!1153379))

(assert (=> b!931830 m!1153379))

(assert (=> b!931830 m!1153381))

(assert (=> b!931829 m!1153377))

(assert (=> d!281518 m!1153383))

(declare-fun m!1153547 () Bool)

(assert (=> d!281518 m!1153547))

(assert (=> bm!57521 m!1153383))

(assert (=> b!931820 m!1153377))

(assert (=> b!931820 m!1153377))

(declare-fun m!1153549 () Bool)

(assert (=> b!931820 m!1153549))

(assert (=> b!931820 m!1153379))

(assert (=> b!931820 m!1153549))

(assert (=> b!931820 m!1153379))

(declare-fun m!1153551 () Bool)

(assert (=> b!931820 m!1153551))

(declare-fun m!1153553 () Bool)

(assert (=> b!931826 m!1153553))

(assert (=> b!931824 m!1153379))

(assert (=> b!931824 m!1153379))

(assert (=> b!931824 m!1153381))

(assert (=> b!931336 d!281518))

(declare-fun d!281520 () Bool)

(declare-fun e!605558 () Bool)

(assert (=> d!281520 e!605558))

(declare-fun res!423252 () Bool)

(assert (=> d!281520 (=> res!423252 e!605558)))

(assert (=> d!281520 (= res!423252 (matchR!1067 lt!340312 s!10566))))

(declare-fun lt!340359 () Unit!14677)

(declare-fun choose!5731 (Regex!2529 Regex!2529 List!9759) Unit!14677)

(assert (=> d!281520 (= lt!340359 (choose!5731 lt!340312 lt!340315 s!10566))))

(declare-fun e!605559 () Bool)

(assert (=> d!281520 e!605559))

(declare-fun res!423253 () Bool)

(assert (=> d!281520 (=> (not res!423253) (not e!605559))))

(assert (=> d!281520 (= res!423253 (validRegex!998 lt!340312))))

(assert (=> d!281520 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!46 lt!340312 lt!340315 s!10566) lt!340359)))

(declare-fun b!931838 () Bool)

(assert (=> b!931838 (= e!605559 (validRegex!998 lt!340315))))

(declare-fun b!931839 () Bool)

(assert (=> b!931839 (= e!605558 (matchR!1067 lt!340315 s!10566))))

(assert (= (and d!281520 res!423253) b!931838))

(assert (= (and d!281520 (not res!423252)) b!931839))

(assert (=> d!281520 m!1153361))

(declare-fun m!1153555 () Bool)

(assert (=> d!281520 m!1153555))

(assert (=> d!281520 m!1153547))

(declare-fun m!1153557 () Bool)

(assert (=> b!931838 m!1153557))

(assert (=> b!931839 m!1153353))

(assert (=> b!931336 d!281520))

(declare-fun bs!237708 () Bool)

(declare-fun b!931845 () Bool)

(assert (= bs!237708 (and b!931845 b!931796)))

(declare-fun lambda!30819 () Int)

(assert (=> bs!237708 (= (and (= (reg!2858 lt!340317) (reg!2858 r!15766)) (= lt!340317 r!15766)) (= lambda!30819 lambda!30817))))

(declare-fun bs!237709 () Bool)

(assert (= bs!237709 (and b!931845 b!931797)))

(assert (=> bs!237709 (not (= lambda!30819 lambda!30818))))

(assert (=> b!931845 true))

(assert (=> b!931845 true))

(declare-fun bs!237710 () Bool)

(declare-fun b!931846 () Bool)

(assert (= bs!237710 (and b!931846 b!931796)))

(declare-fun lambda!30820 () Int)

(assert (=> bs!237710 (not (= lambda!30820 lambda!30817))))

(declare-fun bs!237711 () Bool)

(assert (= bs!237711 (and b!931846 b!931797)))

(assert (=> bs!237711 (= (and (= (regOne!5570 lt!340317) (regOne!5570 r!15766)) (= (regTwo!5570 lt!340317) (regTwo!5570 r!15766))) (= lambda!30820 lambda!30818))))

(declare-fun bs!237712 () Bool)

(assert (= bs!237712 (and b!931846 b!931845)))

(assert (=> bs!237712 (not (= lambda!30820 lambda!30819))))

(assert (=> b!931846 true))

(assert (=> b!931846 true))

(declare-fun b!931840 () Bool)

(declare-fun e!605563 () Bool)

(declare-fun call!57527 () Bool)

(assert (=> b!931840 (= e!605563 call!57527)))

(declare-fun b!931841 () Bool)

(declare-fun e!605565 () Bool)

(assert (=> b!931841 (= e!605565 (matchRSpec!330 (regTwo!5571 lt!340317) s!10566))))

(declare-fun b!931842 () Bool)

(declare-fun c!151524 () Bool)

(assert (=> b!931842 (= c!151524 ((_ is Union!2529) lt!340317))))

(declare-fun e!605562 () Bool)

(declare-fun e!605564 () Bool)

(assert (=> b!931842 (= e!605562 e!605564)))

(declare-fun c!151525 () Bool)

(declare-fun bm!57522 () Bool)

(declare-fun call!57528 () Bool)

(assert (=> bm!57522 (= call!57528 (Exists!294 (ite c!151525 lambda!30819 lambda!30820)))))

(declare-fun b!931843 () Bool)

(assert (=> b!931843 (= e!605562 (= s!10566 (Cons!9743 (c!151398 lt!340317) Nil!9743)))))

(declare-fun b!931844 () Bool)

(assert (=> b!931844 (= e!605564 e!605565)))

(declare-fun res!423254 () Bool)

(assert (=> b!931844 (= res!423254 (matchRSpec!330 (regOne!5571 lt!340317) s!10566))))

(assert (=> b!931844 (=> res!423254 e!605565)))

(declare-fun e!605561 () Bool)

(assert (=> b!931845 (= e!605561 call!57528)))

(declare-fun e!605560 () Bool)

(assert (=> b!931846 (= e!605560 call!57528)))

(declare-fun bm!57523 () Bool)

(assert (=> bm!57523 (= call!57527 (isEmpty!5996 s!10566))))

(declare-fun d!281522 () Bool)

(declare-fun c!151522 () Bool)

(assert (=> d!281522 (= c!151522 ((_ is EmptyExpr!2529) lt!340317))))

(assert (=> d!281522 (= (matchRSpec!330 lt!340317 s!10566) e!605563)))

(declare-fun b!931847 () Bool)

(declare-fun c!151523 () Bool)

(assert (=> b!931847 (= c!151523 ((_ is ElementMatch!2529) lt!340317))))

(declare-fun e!605566 () Bool)

(assert (=> b!931847 (= e!605566 e!605562)))

(declare-fun b!931848 () Bool)

(assert (=> b!931848 (= e!605563 e!605566)))

(declare-fun res!423255 () Bool)

(assert (=> b!931848 (= res!423255 (not ((_ is EmptyLang!2529) lt!340317)))))

(assert (=> b!931848 (=> (not res!423255) (not e!605566))))

(declare-fun b!931849 () Bool)

(assert (=> b!931849 (= e!605564 e!605560)))

(assert (=> b!931849 (= c!151525 ((_ is Star!2529) lt!340317))))

(declare-fun b!931850 () Bool)

(declare-fun res!423256 () Bool)

(assert (=> b!931850 (=> res!423256 e!605561)))

(assert (=> b!931850 (= res!423256 call!57527)))

(assert (=> b!931850 (= e!605560 e!605561)))

(assert (= (and d!281522 c!151522) b!931840))

(assert (= (and d!281522 (not c!151522)) b!931848))

(assert (= (and b!931848 res!423255) b!931847))

(assert (= (and b!931847 c!151523) b!931843))

(assert (= (and b!931847 (not c!151523)) b!931842))

(assert (= (and b!931842 c!151524) b!931844))

(assert (= (and b!931842 (not c!151524)) b!931849))

(assert (= (and b!931844 (not res!423254)) b!931841))

(assert (= (and b!931849 c!151525) b!931850))

(assert (= (and b!931849 (not c!151525)) b!931846))

(assert (= (and b!931850 (not res!423256)) b!931845))

(assert (= (or b!931845 b!931846) bm!57522))

(assert (= (or b!931840 b!931850) bm!57523))

(declare-fun m!1153559 () Bool)

(assert (=> b!931841 m!1153559))

(declare-fun m!1153561 () Bool)

(assert (=> bm!57522 m!1153561))

(declare-fun m!1153563 () Bool)

(assert (=> b!931844 m!1153563))

(assert (=> bm!57523 m!1153383))

(assert (=> b!931336 d!281522))

(declare-fun d!281524 () Bool)

(assert (=> d!281524 (= (matchR!1067 lt!340317 s!10566) (matchRSpec!330 lt!340317 s!10566))))

(declare-fun lt!340360 () Unit!14677)

(assert (=> d!281524 (= lt!340360 (choose!5730 lt!340317 s!10566))))

(assert (=> d!281524 (validRegex!998 lt!340317)))

(assert (=> d!281524 (= (mainMatchTheorem!330 lt!340317 s!10566) lt!340360)))

(declare-fun bs!237713 () Bool)

(assert (= bs!237713 d!281524))

(assert (=> bs!237713 m!1153347))

(assert (=> bs!237713 m!1153365))

(declare-fun m!1153565 () Bool)

(assert (=> bs!237713 m!1153565))

(assert (=> bs!237713 m!1153385))

(assert (=> b!931336 d!281524))

(declare-fun b!931851 () Bool)

(declare-fun e!605570 () Bool)

(assert (=> b!931851 (= e!605570 (matchR!1067 (derivativeStep!533 lt!340315 (head!1686 s!10566)) (tail!1248 s!10566)))))

(declare-fun b!931852 () Bool)

(declare-fun res!423257 () Bool)

(declare-fun e!605569 () Bool)

(assert (=> b!931852 (=> (not res!423257) (not e!605569))))

(declare-fun call!57529 () Bool)

(assert (=> b!931852 (= res!423257 (not call!57529))))

(declare-fun b!931854 () Bool)

(declare-fun e!605568 () Bool)

(declare-fun lt!340361 () Bool)

(assert (=> b!931854 (= e!605568 (= lt!340361 call!57529))))

(declare-fun b!931855 () Bool)

(declare-fun res!423264 () Bool)

(declare-fun e!605567 () Bool)

(assert (=> b!931855 (=> res!423264 e!605567)))

(assert (=> b!931855 (= res!423264 (not (isEmpty!5996 (tail!1248 s!10566))))))

(declare-fun b!931856 () Bool)

(declare-fun e!605573 () Bool)

(assert (=> b!931856 (= e!605573 e!605567)))

(declare-fun res!423258 () Bool)

(assert (=> b!931856 (=> res!423258 e!605567)))

(assert (=> b!931856 (= res!423258 call!57529)))

(declare-fun b!931857 () Bool)

(assert (=> b!931857 (= e!605570 (nullable!723 lt!340315))))

(declare-fun b!931858 () Bool)

(declare-fun e!605572 () Bool)

(assert (=> b!931858 (= e!605568 e!605572)))

(declare-fun c!151527 () Bool)

(assert (=> b!931858 (= c!151527 ((_ is EmptyLang!2529) lt!340315))))

(declare-fun b!931859 () Bool)

(declare-fun e!605571 () Bool)

(assert (=> b!931859 (= e!605571 e!605573)))

(declare-fun res!423259 () Bool)

(assert (=> b!931859 (=> (not res!423259) (not e!605573))))

(assert (=> b!931859 (= res!423259 (not lt!340361))))

(declare-fun d!281526 () Bool)

(assert (=> d!281526 e!605568))

(declare-fun c!151528 () Bool)

(assert (=> d!281526 (= c!151528 ((_ is EmptyExpr!2529) lt!340315))))

(assert (=> d!281526 (= lt!340361 e!605570)))

(declare-fun c!151526 () Bool)

(assert (=> d!281526 (= c!151526 (isEmpty!5996 s!10566))))

(assert (=> d!281526 (validRegex!998 lt!340315)))

(assert (=> d!281526 (= (matchR!1067 lt!340315 s!10566) lt!340361)))

(declare-fun b!931853 () Bool)

(declare-fun res!423261 () Bool)

(assert (=> b!931853 (=> res!423261 e!605571)))

(assert (=> b!931853 (= res!423261 (not ((_ is ElementMatch!2529) lt!340315)))))

(assert (=> b!931853 (= e!605572 e!605571)))

(declare-fun b!931860 () Bool)

(assert (=> b!931860 (= e!605569 (= (head!1686 s!10566) (c!151398 lt!340315)))))

(declare-fun b!931861 () Bool)

(declare-fun res!423263 () Bool)

(assert (=> b!931861 (=> (not res!423263) (not e!605569))))

(assert (=> b!931861 (= res!423263 (isEmpty!5996 (tail!1248 s!10566)))))

(declare-fun b!931862 () Bool)

(assert (=> b!931862 (= e!605572 (not lt!340361))))

(declare-fun b!931863 () Bool)

(assert (=> b!931863 (= e!605567 (not (= (head!1686 s!10566) (c!151398 lt!340315))))))

(declare-fun bm!57524 () Bool)

(assert (=> bm!57524 (= call!57529 (isEmpty!5996 s!10566))))

(declare-fun b!931864 () Bool)

(declare-fun res!423262 () Bool)

(assert (=> b!931864 (=> res!423262 e!605571)))

(assert (=> b!931864 (= res!423262 e!605569)))

(declare-fun res!423260 () Bool)

(assert (=> b!931864 (=> (not res!423260) (not e!605569))))

(assert (=> b!931864 (= res!423260 lt!340361)))

(assert (= (and d!281526 c!151526) b!931857))

(assert (= (and d!281526 (not c!151526)) b!931851))

(assert (= (and d!281526 c!151528) b!931854))

(assert (= (and d!281526 (not c!151528)) b!931858))

(assert (= (and b!931858 c!151527) b!931862))

(assert (= (and b!931858 (not c!151527)) b!931853))

(assert (= (and b!931853 (not res!423261)) b!931864))

(assert (= (and b!931864 res!423260) b!931852))

(assert (= (and b!931852 res!423257) b!931861))

(assert (= (and b!931861 res!423263) b!931860))

(assert (= (and b!931864 (not res!423262)) b!931859))

(assert (= (and b!931859 res!423259) b!931856))

(assert (= (and b!931856 (not res!423258)) b!931855))

(assert (= (and b!931855 (not res!423264)) b!931863))

(assert (= (or b!931854 b!931852 b!931856) bm!57524))

(assert (=> b!931863 m!1153377))

(assert (=> b!931861 m!1153379))

(assert (=> b!931861 m!1153379))

(assert (=> b!931861 m!1153381))

(assert (=> b!931860 m!1153377))

(assert (=> d!281526 m!1153383))

(assert (=> d!281526 m!1153557))

(assert (=> bm!57524 m!1153383))

(assert (=> b!931851 m!1153377))

(assert (=> b!931851 m!1153377))

(declare-fun m!1153567 () Bool)

(assert (=> b!931851 m!1153567))

(assert (=> b!931851 m!1153379))

(assert (=> b!931851 m!1153567))

(assert (=> b!931851 m!1153379))

(declare-fun m!1153569 () Bool)

(assert (=> b!931851 m!1153569))

(declare-fun m!1153571 () Bool)

(assert (=> b!931857 m!1153571))

(assert (=> b!931855 m!1153379))

(assert (=> b!931855 m!1153379))

(assert (=> b!931855 m!1153381))

(assert (=> b!931341 d!281526))

(declare-fun b!931878 () Bool)

(declare-fun e!605576 () Bool)

(declare-fun tp!289180 () Bool)

(declare-fun tp!289178 () Bool)

(assert (=> b!931878 (= e!605576 (and tp!289180 tp!289178))))

(declare-fun b!931877 () Bool)

(declare-fun tp!289179 () Bool)

(assert (=> b!931877 (= e!605576 tp!289179)))

(declare-fun b!931876 () Bool)

(declare-fun tp!289177 () Bool)

(declare-fun tp!289181 () Bool)

(assert (=> b!931876 (= e!605576 (and tp!289177 tp!289181))))

(assert (=> b!931339 (= tp!289126 e!605576)))

(declare-fun b!931875 () Bool)

(assert (=> b!931875 (= e!605576 tp_is_empty!4701)))

(assert (= (and b!931339 ((_ is ElementMatch!2529) (reg!2858 r!15766))) b!931875))

(assert (= (and b!931339 ((_ is Concat!4362) (reg!2858 r!15766))) b!931876))

(assert (= (and b!931339 ((_ is Star!2529) (reg!2858 r!15766))) b!931877))

(assert (= (and b!931339 ((_ is Union!2529) (reg!2858 r!15766))) b!931878))

(declare-fun b!931883 () Bool)

(declare-fun e!605579 () Bool)

(declare-fun tp!289184 () Bool)

(assert (=> b!931883 (= e!605579 (and tp_is_empty!4701 tp!289184))))

(assert (=> b!931340 (= tp!289124 e!605579)))

(assert (= (and b!931340 ((_ is Cons!9743) (t!100805 s!10566))) b!931883))

(declare-fun b!931887 () Bool)

(declare-fun e!605580 () Bool)

(declare-fun tp!289188 () Bool)

(declare-fun tp!289186 () Bool)

(assert (=> b!931887 (= e!605580 (and tp!289188 tp!289186))))

(declare-fun b!931886 () Bool)

(declare-fun tp!289187 () Bool)

(assert (=> b!931886 (= e!605580 tp!289187)))

(declare-fun b!931885 () Bool)

(declare-fun tp!289185 () Bool)

(declare-fun tp!289189 () Bool)

(assert (=> b!931885 (= e!605580 (and tp!289185 tp!289189))))

(assert (=> b!931345 (= tp!289128 e!605580)))

(declare-fun b!931884 () Bool)

(assert (=> b!931884 (= e!605580 tp_is_empty!4701)))

(assert (= (and b!931345 ((_ is ElementMatch!2529) (regOne!5570 r!15766))) b!931884))

(assert (= (and b!931345 ((_ is Concat!4362) (regOne!5570 r!15766))) b!931885))

(assert (= (and b!931345 ((_ is Star!2529) (regOne!5570 r!15766))) b!931886))

(assert (= (and b!931345 ((_ is Union!2529) (regOne!5570 r!15766))) b!931887))

(declare-fun b!931891 () Bool)

(declare-fun e!605581 () Bool)

(declare-fun tp!289193 () Bool)

(declare-fun tp!289191 () Bool)

(assert (=> b!931891 (= e!605581 (and tp!289193 tp!289191))))

(declare-fun b!931890 () Bool)

(declare-fun tp!289192 () Bool)

(assert (=> b!931890 (= e!605581 tp!289192)))

(declare-fun b!931889 () Bool)

(declare-fun tp!289190 () Bool)

(declare-fun tp!289194 () Bool)

(assert (=> b!931889 (= e!605581 (and tp!289190 tp!289194))))

(assert (=> b!931345 (= tp!289127 e!605581)))

(declare-fun b!931888 () Bool)

(assert (=> b!931888 (= e!605581 tp_is_empty!4701)))

(assert (= (and b!931345 ((_ is ElementMatch!2529) (regTwo!5570 r!15766))) b!931888))

(assert (= (and b!931345 ((_ is Concat!4362) (regTwo!5570 r!15766))) b!931889))

(assert (= (and b!931345 ((_ is Star!2529) (regTwo!5570 r!15766))) b!931890))

(assert (= (and b!931345 ((_ is Union!2529) (regTwo!5570 r!15766))) b!931891))

(declare-fun b!931895 () Bool)

(declare-fun e!605582 () Bool)

(declare-fun tp!289198 () Bool)

(declare-fun tp!289196 () Bool)

(assert (=> b!931895 (= e!605582 (and tp!289198 tp!289196))))

(declare-fun b!931894 () Bool)

(declare-fun tp!289197 () Bool)

(assert (=> b!931894 (= e!605582 tp!289197)))

(declare-fun b!931893 () Bool)

(declare-fun tp!289195 () Bool)

(declare-fun tp!289199 () Bool)

(assert (=> b!931893 (= e!605582 (and tp!289195 tp!289199))))

(assert (=> b!931338 (= tp!289125 e!605582)))

(declare-fun b!931892 () Bool)

(assert (=> b!931892 (= e!605582 tp_is_empty!4701)))

(assert (= (and b!931338 ((_ is ElementMatch!2529) (regOne!5571 r!15766))) b!931892))

(assert (= (and b!931338 ((_ is Concat!4362) (regOne!5571 r!15766))) b!931893))

(assert (= (and b!931338 ((_ is Star!2529) (regOne!5571 r!15766))) b!931894))

(assert (= (and b!931338 ((_ is Union!2529) (regOne!5571 r!15766))) b!931895))

(declare-fun b!931899 () Bool)

(declare-fun e!605583 () Bool)

(declare-fun tp!289203 () Bool)

(declare-fun tp!289201 () Bool)

(assert (=> b!931899 (= e!605583 (and tp!289203 tp!289201))))

(declare-fun b!931898 () Bool)

(declare-fun tp!289202 () Bool)

(assert (=> b!931898 (= e!605583 tp!289202)))

(declare-fun b!931897 () Bool)

(declare-fun tp!289200 () Bool)

(declare-fun tp!289204 () Bool)

(assert (=> b!931897 (= e!605583 (and tp!289200 tp!289204))))

(assert (=> b!931338 (= tp!289123 e!605583)))

(declare-fun b!931896 () Bool)

(assert (=> b!931896 (= e!605583 tp_is_empty!4701)))

(assert (= (and b!931338 ((_ is ElementMatch!2529) (regTwo!5571 r!15766))) b!931896))

(assert (= (and b!931338 ((_ is Concat!4362) (regTwo!5571 r!15766))) b!931897))

(assert (= (and b!931338 ((_ is Star!2529) (regTwo!5571 r!15766))) b!931898))

(assert (= (and b!931338 ((_ is Union!2529) (regTwo!5571 r!15766))) b!931899))

(check-sat (not b!931402) (not bm!57453) (not bm!57524) (not bm!57522) (not b!931829) (not b!931792) (not b!931861) (not b!931877) (not b!931812) (not b!931857) (not b!931824) (not b!931855) (not b!931841) (not d!281518) (not b!931490) (not b!931860) (not b!931500) tp_is_empty!4701 (not b!931820) (not bm!57521) (not d!281526) (not b!931474) (not d!281472) (not b!931494) (not b!931810) (not b!931898) (not bm!57466) (not b!931830) (not b!931816) (not b!931895) (not b!931897) (not bm!57444) (not d!281524) (not b!931806) (not bm!57519) (not b!931893) (not b!931887) (not b!931883) (not b!931838) (not b!931396) (not d!281516) (not bm!57518) (not b!931886) (not b!931405) (not bm!57448) (not b!931408) (not d!281520) (not b!931851) (not b!931445) (not d!281474) (not b!931434) (not b!931502) (not bm!57523) (not b!931889) (not b!931826) (not bm!57463) (not d!281514) (not bm!57464) (not bm!57460) (not b!931891) (not b!931894) (not b!931885) (not bm!57520) (not b!931795) (not d!281480) (not b!931876) (not d!281470) (not b!931483) (not bm!57449) (not bm!57461) (not bm!57433) (not b!931899) (not b!931832) (not b!931499) (not b!931815) (not b!931496) (not b!931400) (not b!931878) (not b!931844) (not d!281482) (not b!931839) (not b!931863) (not b!931890) (not b!931406) (not b!931818))
(check-sat)
