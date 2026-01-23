; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!235974 () Bool)

(assert start!235974)

(declare-fun b!2407293 () Bool)

(declare-fun e!1532930 () Bool)

(declare-fun tp_is_empty!11537 () Bool)

(declare-fun tp!766010 () Bool)

(assert (=> b!2407293 (= e!1532930 (and tp_is_empty!11537 tp!766010))))

(declare-fun b!2407294 () Bool)

(declare-fun e!1532932 () Bool)

(declare-fun tp!766009 () Bool)

(declare-fun tp!766012 () Bool)

(assert (=> b!2407294 (= e!1532932 (and tp!766009 tp!766012))))

(declare-fun b!2407295 () Bool)

(declare-fun e!1532928 () Bool)

(declare-fun e!1532931 () Bool)

(assert (=> b!2407295 (= e!1532928 e!1532931)))

(declare-fun res!1022401 () Bool)

(assert (=> b!2407295 (=> res!1022401 e!1532931)))

(declare-datatypes ((C!14282 0))(
  ( (C!14283 (val!8383 Int)) )
))
(declare-datatypes ((Regex!7062 0))(
  ( (ElementMatch!7062 (c!383452 C!14282)) (Concat!11698 (regOne!14636 Regex!7062) (regTwo!14636 Regex!7062)) (EmptyExpr!7062) (Star!7062 (reg!7391 Regex!7062)) (EmptyLang!7062) (Union!7062 (regOne!14637 Regex!7062) (regTwo!14637 Regex!7062)) )
))
(declare-datatypes ((List!28362 0))(
  ( (Nil!28264) (Cons!28264 (h!33665 Regex!7062) (t!208339 List!28362)) )
))
(declare-fun lt!873073 () List!28362)

(declare-fun isEmpty!16269 (List!28362) Bool)

(assert (=> b!2407295 (= res!1022401 (not (isEmpty!16269 lt!873073)))))

(declare-fun l!9164 () List!28362)

(declare-fun tail!3619 (List!28362) List!28362)

(assert (=> b!2407295 (= lt!873073 (tail!3619 l!9164))))

(declare-fun b!2407296 () Bool)

(declare-fun res!1022400 () Bool)

(assert (=> b!2407296 (=> res!1022400 e!1532931)))

(declare-datatypes ((List!28363 0))(
  ( (Nil!28265) (Cons!28265 (h!33666 C!14282) (t!208340 List!28363)) )
))
(declare-fun s!9460 () List!28363)

(declare-fun matchR!3179 (Regex!7062 List!28363) Bool)

(declare-fun head!5347 (List!28362) Regex!7062)

(assert (=> b!2407296 (= res!1022400 (not (matchR!3179 (head!5347 l!9164) s!9460)))))

(declare-fun b!2407297 () Bool)

(declare-fun res!1022396 () Bool)

(declare-fun e!1532927 () Bool)

(assert (=> b!2407297 (=> (not res!1022396) (not e!1532927))))

(declare-fun r!13927 () Regex!7062)

(declare-fun generalisedConcat!163 (List!28362) Regex!7062)

(assert (=> b!2407297 (= res!1022396 (= r!13927 (generalisedConcat!163 l!9164)))))

(declare-fun b!2407298 () Bool)

(declare-fun tp!766007 () Bool)

(assert (=> b!2407298 (= e!1532932 tp!766007)))

(declare-fun b!2407299 () Bool)

(declare-fun e!1532929 () Bool)

(declare-fun tp!766006 () Bool)

(declare-fun tp!766008 () Bool)

(assert (=> b!2407299 (= e!1532929 (and tp!766006 tp!766008))))

(declare-fun b!2407300 () Bool)

(assert (=> b!2407300 (= e!1532931 (not (= l!9164 Nil!28264)))))

(declare-fun b!2407301 () Bool)

(assert (=> b!2407301 (= e!1532927 (not e!1532928))))

(declare-fun res!1022397 () Bool)

(assert (=> b!2407301 (=> res!1022397 e!1532928)))

(assert (=> b!2407301 (= res!1022397 (or (is-Concat!11698 r!13927) (is-EmptyExpr!7062 r!13927)))))

(declare-fun matchRSpec!911 (Regex!7062 List!28363) Bool)

(assert (=> b!2407301 (= (matchR!3179 r!13927 s!9460) (matchRSpec!911 r!13927 s!9460))))

(declare-datatypes ((Unit!41395 0))(
  ( (Unit!41396) )
))
(declare-fun lt!873074 () Unit!41395)

(declare-fun mainMatchTheorem!911 (Regex!7062 List!28363) Unit!41395)

(assert (=> b!2407301 (= lt!873074 (mainMatchTheorem!911 r!13927 s!9460))))

(declare-fun b!2407302 () Bool)

(assert (=> b!2407302 (= e!1532932 tp_is_empty!11537)))

(declare-fun b!2407303 () Bool)

(declare-fun res!1022399 () Bool)

(assert (=> b!2407303 (=> res!1022399 e!1532931)))

(assert (=> b!2407303 (= res!1022399 (not (= (generalisedConcat!163 lt!873073) EmptyExpr!7062)))))

(declare-fun res!1022395 () Bool)

(assert (=> start!235974 (=> (not res!1022395) (not e!1532927))))

(declare-fun lambda!90578 () Int)

(declare-fun forall!5696 (List!28362 Int) Bool)

(assert (=> start!235974 (= res!1022395 (forall!5696 l!9164 lambda!90578))))

(assert (=> start!235974 e!1532927))

(assert (=> start!235974 e!1532929))

(assert (=> start!235974 e!1532932))

(assert (=> start!235974 e!1532930))

(declare-fun b!2407304 () Bool)

(declare-fun res!1022398 () Bool)

(assert (=> b!2407304 (=> res!1022398 e!1532928)))

(assert (=> b!2407304 (= res!1022398 (isEmpty!16269 l!9164))))

(declare-fun b!2407305 () Bool)

(declare-fun tp!766011 () Bool)

(declare-fun tp!766013 () Bool)

(assert (=> b!2407305 (= e!1532932 (and tp!766011 tp!766013))))

(assert (= (and start!235974 res!1022395) b!2407297))

(assert (= (and b!2407297 res!1022396) b!2407301))

(assert (= (and b!2407301 (not res!1022397)) b!2407304))

(assert (= (and b!2407304 (not res!1022398)) b!2407295))

(assert (= (and b!2407295 (not res!1022401)) b!2407303))

(assert (= (and b!2407303 (not res!1022399)) b!2407296))

(assert (= (and b!2407296 (not res!1022400)) b!2407300))

(assert (= (and start!235974 (is-Cons!28264 l!9164)) b!2407299))

(assert (= (and start!235974 (is-ElementMatch!7062 r!13927)) b!2407302))

(assert (= (and start!235974 (is-Concat!11698 r!13927)) b!2407294))

(assert (= (and start!235974 (is-Star!7062 r!13927)) b!2407298))

(assert (= (and start!235974 (is-Union!7062 r!13927)) b!2407305))

(assert (= (and start!235974 (is-Cons!28265 s!9460)) b!2407293))

(declare-fun m!2800367 () Bool)

(assert (=> b!2407295 m!2800367))

(declare-fun m!2800369 () Bool)

(assert (=> b!2407295 m!2800369))

(declare-fun m!2800371 () Bool)

(assert (=> b!2407303 m!2800371))

(declare-fun m!2800373 () Bool)

(assert (=> b!2407304 m!2800373))

(declare-fun m!2800375 () Bool)

(assert (=> b!2407301 m!2800375))

(declare-fun m!2800377 () Bool)

(assert (=> b!2407301 m!2800377))

(declare-fun m!2800379 () Bool)

(assert (=> b!2407301 m!2800379))

(declare-fun m!2800381 () Bool)

(assert (=> start!235974 m!2800381))

(declare-fun m!2800383 () Bool)

(assert (=> b!2407296 m!2800383))

(assert (=> b!2407296 m!2800383))

(declare-fun m!2800385 () Bool)

(assert (=> b!2407296 m!2800385))

(declare-fun m!2800387 () Bool)

(assert (=> b!2407297 m!2800387))

(push 1)

(assert (not b!2407303))

(assert (not b!2407296))

(assert (not b!2407299))

(assert (not start!235974))

(assert (not b!2407293))

(assert (not b!2407305))

(assert (not b!2407301))

(assert (not b!2407304))

(assert tp_is_empty!11537)

(assert (not b!2407297))

(assert (not b!2407298))

(assert (not b!2407294))

(assert (not b!2407295))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2407379 () Bool)

(declare-fun e!1532972 () Bool)

(declare-fun lt!873083 () Bool)

(assert (=> b!2407379 (= e!1532972 (not lt!873083))))

(declare-fun b!2407380 () Bool)

(declare-fun res!1022447 () Bool)

(declare-fun e!1532976 () Bool)

(assert (=> b!2407380 (=> (not res!1022447) (not e!1532976))))

(declare-fun isEmpty!16271 (List!28363) Bool)

(declare-fun tail!3621 (List!28363) List!28363)

(assert (=> b!2407380 (= res!1022447 (isEmpty!16271 (tail!3621 s!9460)))))

(declare-fun b!2407381 () Bool)

(declare-fun e!1532975 () Bool)

(assert (=> b!2407381 (= e!1532975 e!1532972)))

(declare-fun c!383461 () Bool)

(assert (=> b!2407381 (= c!383461 (is-EmptyLang!7062 r!13927))))

(declare-fun b!2407382 () Bool)

(declare-fun e!1532973 () Bool)

(declare-fun nullable!2108 (Regex!7062) Bool)

(assert (=> b!2407382 (= e!1532973 (nullable!2108 r!13927))))

(declare-fun d!700208 () Bool)

(assert (=> d!700208 e!1532975))

(declare-fun c!383462 () Bool)

(assert (=> d!700208 (= c!383462 (is-EmptyExpr!7062 r!13927))))

(assert (=> d!700208 (= lt!873083 e!1532973)))

(declare-fun c!383460 () Bool)

(assert (=> d!700208 (= c!383460 (isEmpty!16271 s!9460))))

(declare-fun validRegex!2786 (Regex!7062) Bool)

(assert (=> d!700208 (validRegex!2786 r!13927)))

(assert (=> d!700208 (= (matchR!3179 r!13927 s!9460) lt!873083)))

(declare-fun b!2407383 () Bool)

(declare-fun call!147065 () Bool)

(assert (=> b!2407383 (= e!1532975 (= lt!873083 call!147065))))

(declare-fun b!2407384 () Bool)

(declare-fun res!1022449 () Bool)

(declare-fun e!1532974 () Bool)

(assert (=> b!2407384 (=> res!1022449 e!1532974)))

(assert (=> b!2407384 (= res!1022449 (not (isEmpty!16271 (tail!3621 s!9460))))))

(declare-fun b!2407385 () Bool)

(declare-fun head!5349 (List!28363) C!14282)

(assert (=> b!2407385 (= e!1532974 (not (= (head!5349 s!9460) (c!383452 r!13927))))))

(declare-fun b!2407386 () Bool)

(assert (=> b!2407386 (= e!1532976 (= (head!5349 s!9460) (c!383452 r!13927)))))

(declare-fun b!2407387 () Bool)

(declare-fun res!1022446 () Bool)

(declare-fun e!1532971 () Bool)

(assert (=> b!2407387 (=> res!1022446 e!1532971)))

(assert (=> b!2407387 (= res!1022446 e!1532976)))

(declare-fun res!1022450 () Bool)

(assert (=> b!2407387 (=> (not res!1022450) (not e!1532976))))

(assert (=> b!2407387 (= res!1022450 lt!873083)))

(declare-fun b!2407388 () Bool)

(declare-fun e!1532977 () Bool)

(assert (=> b!2407388 (= e!1532971 e!1532977)))

(declare-fun res!1022452 () Bool)

(assert (=> b!2407388 (=> (not res!1022452) (not e!1532977))))

(assert (=> b!2407388 (= res!1022452 (not lt!873083))))

(declare-fun b!2407389 () Bool)

(declare-fun res!1022451 () Bool)

(assert (=> b!2407389 (=> res!1022451 e!1532971)))

(assert (=> b!2407389 (= res!1022451 (not (is-ElementMatch!7062 r!13927)))))

(assert (=> b!2407389 (= e!1532972 e!1532971)))

(declare-fun b!2407390 () Bool)

(declare-fun derivativeStep!1765 (Regex!7062 C!14282) Regex!7062)

(assert (=> b!2407390 (= e!1532973 (matchR!3179 (derivativeStep!1765 r!13927 (head!5349 s!9460)) (tail!3621 s!9460)))))

(declare-fun bm!147060 () Bool)

(assert (=> bm!147060 (= call!147065 (isEmpty!16271 s!9460))))

(declare-fun b!2407391 () Bool)

(declare-fun res!1022445 () Bool)

(assert (=> b!2407391 (=> (not res!1022445) (not e!1532976))))

(assert (=> b!2407391 (= res!1022445 (not call!147065))))

(declare-fun b!2407392 () Bool)

(assert (=> b!2407392 (= e!1532977 e!1532974)))

(declare-fun res!1022448 () Bool)

(assert (=> b!2407392 (=> res!1022448 e!1532974)))

(assert (=> b!2407392 (= res!1022448 call!147065)))

(assert (= (and d!700208 c!383460) b!2407382))

(assert (= (and d!700208 (not c!383460)) b!2407390))

(assert (= (and d!700208 c!383462) b!2407383))

(assert (= (and d!700208 (not c!383462)) b!2407381))

(assert (= (and b!2407381 c!383461) b!2407379))

(assert (= (and b!2407381 (not c!383461)) b!2407389))

(assert (= (and b!2407389 (not res!1022451)) b!2407387))

(assert (= (and b!2407387 res!1022450) b!2407391))

(assert (= (and b!2407391 res!1022445) b!2407380))

(assert (= (and b!2407380 res!1022447) b!2407386))

(assert (= (and b!2407387 (not res!1022446)) b!2407388))

(assert (= (and b!2407388 res!1022452) b!2407392))

(assert (= (and b!2407392 (not res!1022448)) b!2407384))

(assert (= (and b!2407384 (not res!1022449)) b!2407385))

(assert (= (or b!2407383 b!2407391 b!2407392) bm!147060))

(declare-fun m!2800415 () Bool)

(assert (=> bm!147060 m!2800415))

(declare-fun m!2800417 () Bool)

(assert (=> b!2407390 m!2800417))

(assert (=> b!2407390 m!2800417))

(declare-fun m!2800419 () Bool)

(assert (=> b!2407390 m!2800419))

(declare-fun m!2800421 () Bool)

(assert (=> b!2407390 m!2800421))

(assert (=> b!2407390 m!2800419))

(assert (=> b!2407390 m!2800421))

(declare-fun m!2800423 () Bool)

(assert (=> b!2407390 m!2800423))

(assert (=> b!2407385 m!2800417))

(assert (=> b!2407384 m!2800421))

(assert (=> b!2407384 m!2800421))

(declare-fun m!2800425 () Bool)

(assert (=> b!2407384 m!2800425))

(assert (=> b!2407380 m!2800421))

(assert (=> b!2407380 m!2800421))

(assert (=> b!2407380 m!2800425))

(declare-fun m!2800427 () Bool)

(assert (=> b!2407382 m!2800427))

(assert (=> b!2407386 m!2800417))

(assert (=> d!700208 m!2800415))

(declare-fun m!2800429 () Bool)

(assert (=> d!700208 m!2800429))

(assert (=> b!2407301 d!700208))

(declare-fun b!2407449 () Bool)

(assert (=> b!2407449 true))

(assert (=> b!2407449 true))

(declare-fun bs!463331 () Bool)

(declare-fun b!2407453 () Bool)

(assert (= bs!463331 (and b!2407453 b!2407449)))

(declare-fun lambda!90589 () Int)

(declare-fun lambda!90588 () Int)

(assert (=> bs!463331 (not (= lambda!90589 lambda!90588))))

(assert (=> b!2407453 true))

(assert (=> b!2407453 true))

(declare-fun b!2407445 () Bool)

(declare-fun e!1533014 () Bool)

(declare-fun e!1533010 () Bool)

(assert (=> b!2407445 (= e!1533014 e!1533010)))

(declare-fun res!1022473 () Bool)

(assert (=> b!2407445 (= res!1022473 (not (is-EmptyLang!7062 r!13927)))))

(assert (=> b!2407445 (=> (not res!1022473) (not e!1533010))))

(declare-fun call!147070 () Bool)

(declare-fun bm!147065 () Bool)

(declare-fun c!383482 () Bool)

(declare-fun Exists!1117 (Int) Bool)

(assert (=> bm!147065 (= call!147070 (Exists!1117 (ite c!383482 lambda!90588 lambda!90589)))))

(declare-fun b!2407446 () Bool)

(declare-fun call!147071 () Bool)

(assert (=> b!2407446 (= e!1533014 call!147071)))

(declare-fun b!2407447 () Bool)

(declare-fun e!1533009 () Bool)

(assert (=> b!2407447 (= e!1533009 (matchRSpec!911 (regTwo!14637 r!13927) s!9460))))

(declare-fun b!2407448 () Bool)

(declare-fun c!383481 () Bool)

(assert (=> b!2407448 (= c!383481 (is-ElementMatch!7062 r!13927))))

(declare-fun e!1533013 () Bool)

(assert (=> b!2407448 (= e!1533010 e!1533013)))

(declare-fun d!700218 () Bool)

(declare-fun c!383479 () Bool)

(assert (=> d!700218 (= c!383479 (is-EmptyExpr!7062 r!13927))))

(assert (=> d!700218 (= (matchRSpec!911 r!13927 s!9460) e!1533014)))

(declare-fun e!1533012 () Bool)

(assert (=> b!2407449 (= e!1533012 call!147070)))

(declare-fun b!2407450 () Bool)

(assert (=> b!2407450 (= e!1533013 (= s!9460 (Cons!28265 (c!383452 r!13927) Nil!28265)))))

(declare-fun b!2407451 () Bool)

(declare-fun res!1022475 () Bool)

(assert (=> b!2407451 (=> res!1022475 e!1533012)))

(assert (=> b!2407451 (= res!1022475 call!147071)))

(declare-fun e!1533011 () Bool)

(assert (=> b!2407451 (= e!1533011 e!1533012)))

(declare-fun b!2407452 () Bool)

(declare-fun e!1533008 () Bool)

(assert (=> b!2407452 (= e!1533008 e!1533009)))

(declare-fun res!1022474 () Bool)

(assert (=> b!2407452 (= res!1022474 (matchRSpec!911 (regOne!14637 r!13927) s!9460))))

(assert (=> b!2407452 (=> res!1022474 e!1533009)))

(assert (=> b!2407453 (= e!1533011 call!147070)))

(declare-fun bm!147066 () Bool)

(assert (=> bm!147066 (= call!147071 (isEmpty!16271 s!9460))))

(declare-fun b!2407454 () Bool)

(assert (=> b!2407454 (= e!1533008 e!1533011)))

(assert (=> b!2407454 (= c!383482 (is-Star!7062 r!13927))))

(declare-fun b!2407455 () Bool)

(declare-fun c!383480 () Bool)

(assert (=> b!2407455 (= c!383480 (is-Union!7062 r!13927))))

(assert (=> b!2407455 (= e!1533013 e!1533008)))

(assert (= (and d!700218 c!383479) b!2407446))

(assert (= (and d!700218 (not c!383479)) b!2407445))

(assert (= (and b!2407445 res!1022473) b!2407448))

(assert (= (and b!2407448 c!383481) b!2407450))

(assert (= (and b!2407448 (not c!383481)) b!2407455))

(assert (= (and b!2407455 c!383480) b!2407452))

(assert (= (and b!2407455 (not c!383480)) b!2407454))

(assert (= (and b!2407452 (not res!1022474)) b!2407447))

(assert (= (and b!2407454 c!383482) b!2407451))

(assert (= (and b!2407454 (not c!383482)) b!2407453))

(assert (= (and b!2407451 (not res!1022475)) b!2407449))

(assert (= (or b!2407449 b!2407453) bm!147065))

(assert (= (or b!2407446 b!2407451) bm!147066))

(declare-fun m!2800431 () Bool)

(assert (=> bm!147065 m!2800431))

(declare-fun m!2800433 () Bool)

(assert (=> b!2407447 m!2800433))

(declare-fun m!2800435 () Bool)

(assert (=> b!2407452 m!2800435))

(assert (=> bm!147066 m!2800415))

(assert (=> b!2407301 d!700218))

(declare-fun d!700220 () Bool)

(assert (=> d!700220 (= (matchR!3179 r!13927 s!9460) (matchRSpec!911 r!13927 s!9460))))

(declare-fun lt!873089 () Unit!41395)

(declare-fun choose!14233 (Regex!7062 List!28363) Unit!41395)

(assert (=> d!700220 (= lt!873089 (choose!14233 r!13927 s!9460))))

(assert (=> d!700220 (validRegex!2786 r!13927)))

(assert (=> d!700220 (= (mainMatchTheorem!911 r!13927 s!9460) lt!873089)))

(declare-fun bs!463333 () Bool)

(assert (= bs!463333 d!700220))

(assert (=> bs!463333 m!2800375))

(assert (=> bs!463333 m!2800377))

(declare-fun m!2800455 () Bool)

(assert (=> bs!463333 m!2800455))

(assert (=> bs!463333 m!2800429))

(assert (=> b!2407301 d!700220))

(declare-fun b!2407470 () Bool)

(declare-fun e!1533022 () Bool)

(declare-fun lt!873090 () Bool)

(assert (=> b!2407470 (= e!1533022 (not lt!873090))))

(declare-fun b!2407471 () Bool)

(declare-fun res!1022480 () Bool)

(declare-fun e!1533026 () Bool)

(assert (=> b!2407471 (=> (not res!1022480) (not e!1533026))))

(assert (=> b!2407471 (= res!1022480 (isEmpty!16271 (tail!3621 s!9460)))))

(declare-fun b!2407472 () Bool)

(declare-fun e!1533025 () Bool)

(assert (=> b!2407472 (= e!1533025 e!1533022)))

(declare-fun c!383488 () Bool)

(assert (=> b!2407472 (= c!383488 (is-EmptyLang!7062 (head!5347 l!9164)))))

(declare-fun b!2407473 () Bool)

(declare-fun e!1533023 () Bool)

(assert (=> b!2407473 (= e!1533023 (nullable!2108 (head!5347 l!9164)))))

(declare-fun d!700224 () Bool)

(assert (=> d!700224 e!1533025))

(declare-fun c!383489 () Bool)

(assert (=> d!700224 (= c!383489 (is-EmptyExpr!7062 (head!5347 l!9164)))))

(assert (=> d!700224 (= lt!873090 e!1533023)))

(declare-fun c!383487 () Bool)

(assert (=> d!700224 (= c!383487 (isEmpty!16271 s!9460))))

(assert (=> d!700224 (validRegex!2786 (head!5347 l!9164))))

(assert (=> d!700224 (= (matchR!3179 (head!5347 l!9164) s!9460) lt!873090)))

(declare-fun b!2407474 () Bool)

(declare-fun call!147072 () Bool)

(assert (=> b!2407474 (= e!1533025 (= lt!873090 call!147072))))

(declare-fun b!2407475 () Bool)

(declare-fun res!1022482 () Bool)

(declare-fun e!1533024 () Bool)

(assert (=> b!2407475 (=> res!1022482 e!1533024)))

(assert (=> b!2407475 (= res!1022482 (not (isEmpty!16271 (tail!3621 s!9460))))))

(declare-fun b!2407476 () Bool)

(assert (=> b!2407476 (= e!1533024 (not (= (head!5349 s!9460) (c!383452 (head!5347 l!9164)))))))

(declare-fun b!2407477 () Bool)

(assert (=> b!2407477 (= e!1533026 (= (head!5349 s!9460) (c!383452 (head!5347 l!9164))))))

(declare-fun b!2407478 () Bool)

(declare-fun res!1022479 () Bool)

(declare-fun e!1533021 () Bool)

(assert (=> b!2407478 (=> res!1022479 e!1533021)))

(assert (=> b!2407478 (= res!1022479 e!1533026)))

(declare-fun res!1022483 () Bool)

(assert (=> b!2407478 (=> (not res!1022483) (not e!1533026))))

(assert (=> b!2407478 (= res!1022483 lt!873090)))

(declare-fun b!2407479 () Bool)

(declare-fun e!1533027 () Bool)

(assert (=> b!2407479 (= e!1533021 e!1533027)))

(declare-fun res!1022485 () Bool)

(assert (=> b!2407479 (=> (not res!1022485) (not e!1533027))))

(assert (=> b!2407479 (= res!1022485 (not lt!873090))))

(declare-fun b!2407480 () Bool)

(declare-fun res!1022484 () Bool)

(assert (=> b!2407480 (=> res!1022484 e!1533021)))

(assert (=> b!2407480 (= res!1022484 (not (is-ElementMatch!7062 (head!5347 l!9164))))))

(assert (=> b!2407480 (= e!1533022 e!1533021)))

(declare-fun b!2407481 () Bool)

(assert (=> b!2407481 (= e!1533023 (matchR!3179 (derivativeStep!1765 (head!5347 l!9164) (head!5349 s!9460)) (tail!3621 s!9460)))))

(declare-fun bm!147067 () Bool)

(assert (=> bm!147067 (= call!147072 (isEmpty!16271 s!9460))))

(declare-fun b!2407482 () Bool)

(declare-fun res!1022478 () Bool)

(assert (=> b!2407482 (=> (not res!1022478) (not e!1533026))))

(assert (=> b!2407482 (= res!1022478 (not call!147072))))

(declare-fun b!2407483 () Bool)

(assert (=> b!2407483 (= e!1533027 e!1533024)))

(declare-fun res!1022481 () Bool)

(assert (=> b!2407483 (=> res!1022481 e!1533024)))

(assert (=> b!2407483 (= res!1022481 call!147072)))

(assert (= (and d!700224 c!383487) b!2407473))

(assert (= (and d!700224 (not c!383487)) b!2407481))

(assert (= (and d!700224 c!383489) b!2407474))

(assert (= (and d!700224 (not c!383489)) b!2407472))

(assert (= (and b!2407472 c!383488) b!2407470))

(assert (= (and b!2407472 (not c!383488)) b!2407480))

(assert (= (and b!2407480 (not res!1022484)) b!2407478))

(assert (= (and b!2407478 res!1022483) b!2407482))

(assert (= (and b!2407482 res!1022478) b!2407471))

(assert (= (and b!2407471 res!1022480) b!2407477))

(assert (= (and b!2407478 (not res!1022479)) b!2407479))

(assert (= (and b!2407479 res!1022485) b!2407483))

(assert (= (and b!2407483 (not res!1022481)) b!2407475))

(assert (= (and b!2407475 (not res!1022482)) b!2407476))

(assert (= (or b!2407474 b!2407482 b!2407483) bm!147067))

(assert (=> bm!147067 m!2800415))

(assert (=> b!2407481 m!2800417))

(assert (=> b!2407481 m!2800383))

(assert (=> b!2407481 m!2800417))

(declare-fun m!2800457 () Bool)

(assert (=> b!2407481 m!2800457))

(assert (=> b!2407481 m!2800421))

(assert (=> b!2407481 m!2800457))

(assert (=> b!2407481 m!2800421))

(declare-fun m!2800459 () Bool)

(assert (=> b!2407481 m!2800459))

(assert (=> b!2407476 m!2800417))

(assert (=> b!2407475 m!2800421))

(assert (=> b!2407475 m!2800421))

(assert (=> b!2407475 m!2800425))

(assert (=> b!2407471 m!2800421))

(assert (=> b!2407471 m!2800421))

(assert (=> b!2407471 m!2800425))

(assert (=> b!2407473 m!2800383))

(declare-fun m!2800461 () Bool)

(assert (=> b!2407473 m!2800461))

(assert (=> b!2407477 m!2800417))

(assert (=> d!700224 m!2800415))

(assert (=> d!700224 m!2800383))

(declare-fun m!2800463 () Bool)

(assert (=> d!700224 m!2800463))

(assert (=> b!2407296 d!700224))

(declare-fun d!700226 () Bool)

(assert (=> d!700226 (= (head!5347 l!9164) (h!33665 l!9164))))

(assert (=> b!2407296 d!700226))

(declare-fun bs!463334 () Bool)

(declare-fun d!700228 () Bool)

(assert (= bs!463334 (and d!700228 start!235974)))

(declare-fun lambda!90593 () Int)

(assert (=> bs!463334 (= lambda!90593 lambda!90578)))

(declare-fun b!2407504 () Bool)

(declare-fun e!1533043 () Regex!7062)

(declare-fun e!1533044 () Regex!7062)

(assert (=> b!2407504 (= e!1533043 e!1533044)))

(declare-fun c!383498 () Bool)

(assert (=> b!2407504 (= c!383498 (is-Cons!28264 l!9164))))

(declare-fun b!2407505 () Bool)

(declare-fun e!1533045 () Bool)

(declare-fun e!1533042 () Bool)

(assert (=> b!2407505 (= e!1533045 e!1533042)))

(declare-fun c!383501 () Bool)

(assert (=> b!2407505 (= c!383501 (isEmpty!16269 l!9164))))

(declare-fun b!2407506 () Bool)

(assert (=> b!2407506 (= e!1533044 EmptyExpr!7062)))

(declare-fun b!2407507 () Bool)

(assert (=> b!2407507 (= e!1533043 (h!33665 l!9164))))

(declare-fun b!2407508 () Bool)

(assert (=> b!2407508 (= e!1533044 (Concat!11698 (h!33665 l!9164) (generalisedConcat!163 (t!208339 l!9164))))))

(declare-fun b!2407509 () Bool)

(declare-fun e!1533040 () Bool)

(declare-fun lt!873093 () Regex!7062)

(declare-fun isConcat!127 (Regex!7062) Bool)

(assert (=> b!2407509 (= e!1533040 (isConcat!127 lt!873093))))

(declare-fun b!2407510 () Bool)

(assert (=> b!2407510 (= e!1533042 e!1533040)))

(declare-fun c!383500 () Bool)

(assert (=> b!2407510 (= c!383500 (isEmpty!16269 (tail!3619 l!9164)))))

(declare-fun b!2407511 () Bool)

(assert (=> b!2407511 (= e!1533040 (= lt!873093 (head!5347 l!9164)))))

(assert (=> d!700228 e!1533045))

(declare-fun res!1022491 () Bool)

(assert (=> d!700228 (=> (not res!1022491) (not e!1533045))))

(assert (=> d!700228 (= res!1022491 (validRegex!2786 lt!873093))))

(assert (=> d!700228 (= lt!873093 e!1533043)))

(declare-fun c!383499 () Bool)

(declare-fun e!1533041 () Bool)

(assert (=> d!700228 (= c!383499 e!1533041)))

(declare-fun res!1022490 () Bool)

(assert (=> d!700228 (=> (not res!1022490) (not e!1533041))))

(assert (=> d!700228 (= res!1022490 (is-Cons!28264 l!9164))))

(assert (=> d!700228 (forall!5696 l!9164 lambda!90593)))

(assert (=> d!700228 (= (generalisedConcat!163 l!9164) lt!873093)))

(declare-fun b!2407512 () Bool)

(assert (=> b!2407512 (= e!1533041 (isEmpty!16269 (t!208339 l!9164)))))

(declare-fun b!2407513 () Bool)

(declare-fun isEmptyExpr!127 (Regex!7062) Bool)

(assert (=> b!2407513 (= e!1533042 (isEmptyExpr!127 lt!873093))))

(assert (= (and d!700228 res!1022490) b!2407512))

(assert (= (and d!700228 c!383499) b!2407507))

(assert (= (and d!700228 (not c!383499)) b!2407504))

(assert (= (and b!2407504 c!383498) b!2407508))

(assert (= (and b!2407504 (not c!383498)) b!2407506))

(assert (= (and d!700228 res!1022491) b!2407505))

(assert (= (and b!2407505 c!383501) b!2407513))

(assert (= (and b!2407505 (not c!383501)) b!2407510))

(assert (= (and b!2407510 c!383500) b!2407511))

(assert (= (and b!2407510 (not c!383500)) b!2407509))

(declare-fun m!2800465 () Bool)

(assert (=> b!2407509 m!2800465))

(assert (=> b!2407510 m!2800369))

(assert (=> b!2407510 m!2800369))

(declare-fun m!2800467 () Bool)

(assert (=> b!2407510 m!2800467))

(assert (=> b!2407511 m!2800383))

(assert (=> b!2407505 m!2800373))

(declare-fun m!2800469 () Bool)

(assert (=> b!2407513 m!2800469))

(declare-fun m!2800471 () Bool)

(assert (=> b!2407508 m!2800471))

(declare-fun m!2800473 () Bool)

(assert (=> d!700228 m!2800473))

(declare-fun m!2800475 () Bool)

(assert (=> d!700228 m!2800475))

(declare-fun m!2800477 () Bool)

(assert (=> b!2407512 m!2800477))

(assert (=> b!2407297 d!700228))

(declare-fun bs!463335 () Bool)

(declare-fun d!700230 () Bool)

(assert (= bs!463335 (and d!700230 start!235974)))

(declare-fun lambda!90594 () Int)

(assert (=> bs!463335 (= lambda!90594 lambda!90578)))

(declare-fun bs!463336 () Bool)

(assert (= bs!463336 (and d!700230 d!700228)))

(assert (=> bs!463336 (= lambda!90594 lambda!90593)))

(declare-fun b!2407518 () Bool)

(declare-fun e!1533051 () Regex!7062)

(declare-fun e!1533052 () Regex!7062)

(assert (=> b!2407518 (= e!1533051 e!1533052)))

(declare-fun c!383504 () Bool)

(assert (=> b!2407518 (= c!383504 (is-Cons!28264 lt!873073))))

(declare-fun b!2407519 () Bool)

(declare-fun e!1533053 () Bool)

(declare-fun e!1533050 () Bool)

(assert (=> b!2407519 (= e!1533053 e!1533050)))

(declare-fun c!383507 () Bool)

(assert (=> b!2407519 (= c!383507 (isEmpty!16269 lt!873073))))

(declare-fun b!2407520 () Bool)

(assert (=> b!2407520 (= e!1533052 EmptyExpr!7062)))

(declare-fun b!2407521 () Bool)

(assert (=> b!2407521 (= e!1533051 (h!33665 lt!873073))))

(declare-fun b!2407522 () Bool)

(assert (=> b!2407522 (= e!1533052 (Concat!11698 (h!33665 lt!873073) (generalisedConcat!163 (t!208339 lt!873073))))))

(declare-fun b!2407523 () Bool)

(declare-fun e!1533048 () Bool)

(declare-fun lt!873096 () Regex!7062)

(assert (=> b!2407523 (= e!1533048 (isConcat!127 lt!873096))))

(declare-fun b!2407524 () Bool)

(assert (=> b!2407524 (= e!1533050 e!1533048)))

(declare-fun c!383506 () Bool)

(assert (=> b!2407524 (= c!383506 (isEmpty!16269 (tail!3619 lt!873073)))))

(declare-fun b!2407525 () Bool)

(assert (=> b!2407525 (= e!1533048 (= lt!873096 (head!5347 lt!873073)))))

(assert (=> d!700230 e!1533053))

(declare-fun res!1022493 () Bool)

(assert (=> d!700230 (=> (not res!1022493) (not e!1533053))))

(assert (=> d!700230 (= res!1022493 (validRegex!2786 lt!873096))))

(assert (=> d!700230 (= lt!873096 e!1533051)))

(declare-fun c!383505 () Bool)

(declare-fun e!1533049 () Bool)

(assert (=> d!700230 (= c!383505 e!1533049)))

(declare-fun res!1022492 () Bool)

(assert (=> d!700230 (=> (not res!1022492) (not e!1533049))))

(assert (=> d!700230 (= res!1022492 (is-Cons!28264 lt!873073))))

(assert (=> d!700230 (forall!5696 lt!873073 lambda!90594)))

(assert (=> d!700230 (= (generalisedConcat!163 lt!873073) lt!873096)))

(declare-fun b!2407526 () Bool)

(assert (=> b!2407526 (= e!1533049 (isEmpty!16269 (t!208339 lt!873073)))))

(declare-fun b!2407527 () Bool)

(assert (=> b!2407527 (= e!1533050 (isEmptyExpr!127 lt!873096))))

(assert (= (and d!700230 res!1022492) b!2407526))

(assert (= (and d!700230 c!383505) b!2407521))

(assert (= (and d!700230 (not c!383505)) b!2407518))

(assert (= (and b!2407518 c!383504) b!2407522))

(assert (= (and b!2407518 (not c!383504)) b!2407520))

(assert (= (and d!700230 res!1022493) b!2407519))

(assert (= (and b!2407519 c!383507) b!2407527))

(assert (= (and b!2407519 (not c!383507)) b!2407524))

(assert (= (and b!2407524 c!383506) b!2407525))

(assert (= (and b!2407524 (not c!383506)) b!2407523))

(declare-fun m!2800479 () Bool)

(assert (=> b!2407523 m!2800479))

(declare-fun m!2800481 () Bool)

(assert (=> b!2407524 m!2800481))

(assert (=> b!2407524 m!2800481))

(declare-fun m!2800483 () Bool)

(assert (=> b!2407524 m!2800483))

(declare-fun m!2800485 () Bool)

(assert (=> b!2407525 m!2800485))

(assert (=> b!2407519 m!2800367))

(declare-fun m!2800487 () Bool)

(assert (=> b!2407527 m!2800487))

(declare-fun m!2800489 () Bool)

(assert (=> b!2407522 m!2800489))

(declare-fun m!2800491 () Bool)

(assert (=> d!700230 m!2800491))

(declare-fun m!2800493 () Bool)

(assert (=> d!700230 m!2800493))

(declare-fun m!2800495 () Bool)

(assert (=> b!2407526 m!2800495))

(assert (=> b!2407303 d!700230))

(declare-fun d!700232 () Bool)

(declare-fun res!1022514 () Bool)

(declare-fun e!1533070 () Bool)

(assert (=> d!700232 (=> res!1022514 e!1533070)))

(assert (=> d!700232 (= res!1022514 (is-Nil!28264 l!9164))))

(assert (=> d!700232 (= (forall!5696 l!9164 lambda!90578) e!1533070)))

(declare-fun b!2407556 () Bool)

(declare-fun e!1533071 () Bool)

(assert (=> b!2407556 (= e!1533070 e!1533071)))

(declare-fun res!1022515 () Bool)

(assert (=> b!2407556 (=> (not res!1022515) (not e!1533071))))

(declare-fun dynLambda!12171 (Int Regex!7062) Bool)

(assert (=> b!2407556 (= res!1022515 (dynLambda!12171 lambda!90578 (h!33665 l!9164)))))

(declare-fun b!2407557 () Bool)

(assert (=> b!2407557 (= e!1533071 (forall!5696 (t!208339 l!9164) lambda!90578))))

(assert (= (and d!700232 (not res!1022514)) b!2407556))

(assert (= (and b!2407556 res!1022515) b!2407557))

(declare-fun b_lambda!74445 () Bool)

(assert (=> (not b_lambda!74445) (not b!2407556)))

(declare-fun m!2800497 () Bool)

(assert (=> b!2407556 m!2800497))

(declare-fun m!2800499 () Bool)

(assert (=> b!2407557 m!2800499))

(assert (=> start!235974 d!700232))

(declare-fun d!700234 () Bool)

(assert (=> d!700234 (= (isEmpty!16269 l!9164) (is-Nil!28264 l!9164))))

(assert (=> b!2407304 d!700234))

(declare-fun d!700236 () Bool)

(assert (=> d!700236 (= (isEmpty!16269 lt!873073) (is-Nil!28264 lt!873073))))

(assert (=> b!2407295 d!700236))

(declare-fun d!700238 () Bool)

(assert (=> d!700238 (= (tail!3619 l!9164) (t!208339 l!9164))))

(assert (=> b!2407295 d!700238))

(declare-fun b!2407562 () Bool)

(declare-fun e!1533074 () Bool)

(declare-fun tp!766040 () Bool)

(assert (=> b!2407562 (= e!1533074 (and tp_is_empty!11537 tp!766040))))

(assert (=> b!2407293 (= tp!766010 e!1533074)))

(assert (= (and b!2407293 (is-Cons!28265 (t!208340 s!9460))) b!2407562))

(declare-fun b!2407574 () Bool)

(declare-fun e!1533077 () Bool)

(declare-fun tp!766054 () Bool)

(declare-fun tp!766052 () Bool)

(assert (=> b!2407574 (= e!1533077 (and tp!766054 tp!766052))))

(declare-fun b!2407573 () Bool)

(assert (=> b!2407573 (= e!1533077 tp_is_empty!11537)))

(declare-fun b!2407576 () Bool)

(declare-fun tp!766051 () Bool)

(declare-fun tp!766053 () Bool)

(assert (=> b!2407576 (= e!1533077 (and tp!766051 tp!766053))))

(assert (=> b!2407298 (= tp!766007 e!1533077)))

(declare-fun b!2407575 () Bool)

(declare-fun tp!766055 () Bool)

(assert (=> b!2407575 (= e!1533077 tp!766055)))

(assert (= (and b!2407298 (is-ElementMatch!7062 (reg!7391 r!13927))) b!2407573))

(assert (= (and b!2407298 (is-Concat!11698 (reg!7391 r!13927))) b!2407574))

(assert (= (and b!2407298 (is-Star!7062 (reg!7391 r!13927))) b!2407575))

(assert (= (and b!2407298 (is-Union!7062 (reg!7391 r!13927))) b!2407576))

(declare-fun b!2407578 () Bool)

(declare-fun e!1533078 () Bool)

(declare-fun tp!766059 () Bool)

(declare-fun tp!766057 () Bool)

(assert (=> b!2407578 (= e!1533078 (and tp!766059 tp!766057))))

(declare-fun b!2407577 () Bool)

(assert (=> b!2407577 (= e!1533078 tp_is_empty!11537)))

(declare-fun b!2407580 () Bool)

(declare-fun tp!766056 () Bool)

(declare-fun tp!766058 () Bool)

(assert (=> b!2407580 (= e!1533078 (and tp!766056 tp!766058))))

(assert (=> b!2407299 (= tp!766006 e!1533078)))

(declare-fun b!2407579 () Bool)

(declare-fun tp!766060 () Bool)

(assert (=> b!2407579 (= e!1533078 tp!766060)))

(assert (= (and b!2407299 (is-ElementMatch!7062 (h!33665 l!9164))) b!2407577))

(assert (= (and b!2407299 (is-Concat!11698 (h!33665 l!9164))) b!2407578))

(assert (= (and b!2407299 (is-Star!7062 (h!33665 l!9164))) b!2407579))

(assert (= (and b!2407299 (is-Union!7062 (h!33665 l!9164))) b!2407580))

(declare-fun b!2407585 () Bool)

(declare-fun e!1533081 () Bool)

(declare-fun tp!766065 () Bool)

(declare-fun tp!766066 () Bool)

(assert (=> b!2407585 (= e!1533081 (and tp!766065 tp!766066))))

(assert (=> b!2407299 (= tp!766008 e!1533081)))

(assert (= (and b!2407299 (is-Cons!28264 (t!208339 l!9164))) b!2407585))

(declare-fun b!2407587 () Bool)

(declare-fun e!1533082 () Bool)

(declare-fun tp!766070 () Bool)

(declare-fun tp!766068 () Bool)

(assert (=> b!2407587 (= e!1533082 (and tp!766070 tp!766068))))

(declare-fun b!2407586 () Bool)

(assert (=> b!2407586 (= e!1533082 tp_is_empty!11537)))

(declare-fun b!2407589 () Bool)

(declare-fun tp!766067 () Bool)

(declare-fun tp!766069 () Bool)

(assert (=> b!2407589 (= e!1533082 (and tp!766067 tp!766069))))

(assert (=> b!2407305 (= tp!766011 e!1533082)))

(declare-fun b!2407588 () Bool)

(declare-fun tp!766071 () Bool)

(assert (=> b!2407588 (= e!1533082 tp!766071)))

(assert (= (and b!2407305 (is-ElementMatch!7062 (regOne!14637 r!13927))) b!2407586))

(assert (= (and b!2407305 (is-Concat!11698 (regOne!14637 r!13927))) b!2407587))

(assert (= (and b!2407305 (is-Star!7062 (regOne!14637 r!13927))) b!2407588))

(assert (= (and b!2407305 (is-Union!7062 (regOne!14637 r!13927))) b!2407589))

(declare-fun b!2407591 () Bool)

(declare-fun e!1533083 () Bool)

(declare-fun tp!766075 () Bool)

(declare-fun tp!766073 () Bool)

(assert (=> b!2407591 (= e!1533083 (and tp!766075 tp!766073))))

(declare-fun b!2407590 () Bool)

(assert (=> b!2407590 (= e!1533083 tp_is_empty!11537)))

(declare-fun b!2407593 () Bool)

(declare-fun tp!766072 () Bool)

(declare-fun tp!766074 () Bool)

(assert (=> b!2407593 (= e!1533083 (and tp!766072 tp!766074))))

(assert (=> b!2407305 (= tp!766013 e!1533083)))

(declare-fun b!2407592 () Bool)

(declare-fun tp!766076 () Bool)

(assert (=> b!2407592 (= e!1533083 tp!766076)))

(assert (= (and b!2407305 (is-ElementMatch!7062 (regTwo!14637 r!13927))) b!2407590))

(assert (= (and b!2407305 (is-Concat!11698 (regTwo!14637 r!13927))) b!2407591))

(assert (= (and b!2407305 (is-Star!7062 (regTwo!14637 r!13927))) b!2407592))

(assert (= (and b!2407305 (is-Union!7062 (regTwo!14637 r!13927))) b!2407593))

(declare-fun b!2407595 () Bool)

(declare-fun e!1533084 () Bool)

(declare-fun tp!766080 () Bool)

(declare-fun tp!766078 () Bool)

(assert (=> b!2407595 (= e!1533084 (and tp!766080 tp!766078))))

(declare-fun b!2407594 () Bool)

(assert (=> b!2407594 (= e!1533084 tp_is_empty!11537)))

(declare-fun b!2407597 () Bool)

(declare-fun tp!766077 () Bool)

(declare-fun tp!766079 () Bool)

(assert (=> b!2407597 (= e!1533084 (and tp!766077 tp!766079))))

(assert (=> b!2407294 (= tp!766009 e!1533084)))

(declare-fun b!2407596 () Bool)

(declare-fun tp!766081 () Bool)

(assert (=> b!2407596 (= e!1533084 tp!766081)))

(assert (= (and b!2407294 (is-ElementMatch!7062 (regOne!14636 r!13927))) b!2407594))

(assert (= (and b!2407294 (is-Concat!11698 (regOne!14636 r!13927))) b!2407595))

(assert (= (and b!2407294 (is-Star!7062 (regOne!14636 r!13927))) b!2407596))

(assert (= (and b!2407294 (is-Union!7062 (regOne!14636 r!13927))) b!2407597))

(declare-fun b!2407599 () Bool)

(declare-fun e!1533085 () Bool)

(declare-fun tp!766085 () Bool)

(declare-fun tp!766083 () Bool)

(assert (=> b!2407599 (= e!1533085 (and tp!766085 tp!766083))))

(declare-fun b!2407598 () Bool)

(assert (=> b!2407598 (= e!1533085 tp_is_empty!11537)))

(declare-fun b!2407601 () Bool)

(declare-fun tp!766082 () Bool)

(declare-fun tp!766084 () Bool)

(assert (=> b!2407601 (= e!1533085 (and tp!766082 tp!766084))))

(assert (=> b!2407294 (= tp!766012 e!1533085)))

(declare-fun b!2407600 () Bool)

(declare-fun tp!766086 () Bool)

(assert (=> b!2407600 (= e!1533085 tp!766086)))

(assert (= (and b!2407294 (is-ElementMatch!7062 (regTwo!14636 r!13927))) b!2407598))

(assert (= (and b!2407294 (is-Concat!11698 (regTwo!14636 r!13927))) b!2407599))

(assert (= (and b!2407294 (is-Star!7062 (regTwo!14636 r!13927))) b!2407600))

(assert (= (and b!2407294 (is-Union!7062 (regTwo!14636 r!13927))) b!2407601))

(declare-fun b_lambda!74447 () Bool)

(assert (= b_lambda!74445 (or start!235974 b_lambda!74447)))

(declare-fun bs!463337 () Bool)

(declare-fun d!700240 () Bool)

(assert (= bs!463337 (and d!700240 start!235974)))

(assert (=> bs!463337 (= (dynLambda!12171 lambda!90578 (h!33665 l!9164)) (validRegex!2786 (h!33665 l!9164)))))

(declare-fun m!2800501 () Bool)

(assert (=> bs!463337 m!2800501))

(assert (=> b!2407556 d!700240))

(push 1)

(assert (not d!700224))

(assert (not b!2407447))

(assert (not b!2407597))

(assert (not b!2407513))

(assert (not b!2407527))

(assert (not b!2407510))

(assert (not bm!147060))

(assert (not b!2407476))

(assert (not b!2407505))

(assert (not b!2407524))

(assert (not b!2407481))

(assert (not b!2407471))

(assert (not b!2407592))

(assert (not b!2407452))

(assert (not d!700228))

(assert (not b!2407599))

(assert (not bm!147066))

(assert (not b!2407522))

(assert (not b!2407595))

(assert (not b!2407386))

(assert (not b!2407519))

(assert (not b!2407578))

(assert (not b!2407574))

(assert (not b!2407580))

(assert (not b!2407526))

(assert (not b!2407477))

(assert (not b!2407575))

(assert (not b!2407382))

(assert (not b!2407593))

(assert (not b!2407562))

(assert (not b!2407585))

(assert (not b!2407475))

(assert (not b!2407390))

(assert (not b!2407579))

(assert (not bm!147065))

(assert (not b!2407591))

(assert (not b!2407588))

(assert (not b!2407587))

(assert (not b!2407385))

(assert (not b_lambda!74447))

(assert (not b!2407508))

(assert (not b!2407473))

(assert (not bs!463337))

(assert (not b!2407380))

(assert (not b!2407576))

(assert (not bm!147067))

(assert (not b!2407509))

(assert (not b!2407523))

(assert (not d!700230))

(assert (not b!2407384))

(assert (not b!2407596))

(assert (not b!2407600))

(assert (not b!2407557))

(assert (not d!700208))

(assert (not b!2407601))

(assert (not b!2407512))

(assert (not d!700220))

(assert tp_is_empty!11537)

(assert (not b!2407525))

(assert (not b!2407511))

(assert (not b!2407589))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

