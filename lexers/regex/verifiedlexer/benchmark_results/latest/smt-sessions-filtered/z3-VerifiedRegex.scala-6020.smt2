; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!294688 () Bool)

(assert start!294688)

(declare-fun b!3110240 () Bool)

(declare-fun e!1942934 () Bool)

(declare-datatypes ((C!19368 0))(
  ( (C!19369 (val!11720 Int)) )
))
(declare-datatypes ((Regex!9591 0))(
  ( (ElementMatch!9591 (c!520499 C!19368)) (Concat!14912 (regOne!19694 Regex!9591) (regTwo!19694 Regex!9591)) (EmptyExpr!9591) (Star!9591 (reg!9920 Regex!9591)) (EmptyLang!9591) (Union!9591 (regOne!19695 Regex!9591) (regTwo!19695 Regex!9591)) )
))
(declare-fun lt!1057319 () Regex!9591)

(declare-datatypes ((List!35456 0))(
  ( (Nil!35332) (Cons!35332 (h!40752 C!19368) (t!234521 List!35456)) )
))
(declare-fun s!11993 () List!35456)

(declare-fun matchR!4473 (Regex!9591 List!35456) Bool)

(assert (=> b!3110240 (= e!1942934 (matchR!4473 lt!1057319 s!11993))))

(declare-fun b!3110241 () Bool)

(declare-fun e!1942931 () Bool)

(declare-fun e!1942935 () Bool)

(assert (=> b!3110241 (= e!1942931 (not e!1942935))))

(declare-fun res!1273383 () Bool)

(assert (=> b!3110241 (=> res!1273383 e!1942935)))

(declare-fun lt!1057317 () Bool)

(declare-fun r!17423 () Regex!9591)

(get-info :version)

(assert (=> b!3110241 (= res!1273383 (or lt!1057317 ((_ is Concat!14912) r!17423) (not ((_ is Union!9591) r!17423))))))

(declare-fun matchRSpec!1728 (Regex!9591 List!35456) Bool)

(assert (=> b!3110241 (= lt!1057317 (matchRSpec!1728 r!17423 s!11993))))

(assert (=> b!3110241 (= lt!1057317 (matchR!4473 r!17423 s!11993))))

(declare-datatypes ((Unit!49621 0))(
  ( (Unit!49622) )
))
(declare-fun lt!1057322 () Unit!49621)

(declare-fun mainMatchTheorem!1728 (Regex!9591 List!35456) Unit!49621)

(assert (=> b!3110241 (= lt!1057322 (mainMatchTheorem!1728 r!17423 s!11993))))

(declare-fun b!3110242 () Bool)

(declare-fun e!1942933 () Bool)

(declare-fun validRegex!4324 (Regex!9591) Bool)

(assert (=> b!3110242 (= e!1942933 (validRegex!4324 (regTwo!19695 r!17423)))))

(declare-fun b!3110243 () Bool)

(declare-fun e!1942937 () Bool)

(declare-fun tp!976261 () Bool)

(declare-fun tp!976259 () Bool)

(assert (=> b!3110243 (= e!1942937 (and tp!976261 tp!976259))))

(declare-fun b!3110244 () Bool)

(declare-fun res!1273378 () Bool)

(declare-fun e!1942936 () Bool)

(assert (=> b!3110244 (=> res!1273378 e!1942936)))

(declare-fun lt!1057318 () Regex!9591)

(assert (=> b!3110244 (= res!1273378 (not (matchR!4473 (Union!9591 lt!1057318 lt!1057319) s!11993)))))

(declare-fun b!3110246 () Bool)

(declare-fun e!1942932 () Bool)

(declare-fun tp_is_empty!16745 () Bool)

(declare-fun tp!976257 () Bool)

(assert (=> b!3110246 (= e!1942932 (and tp_is_empty!16745 tp!976257))))

(declare-fun b!3110247 () Bool)

(declare-fun tp!976258 () Bool)

(assert (=> b!3110247 (= e!1942937 tp!976258)))

(declare-fun b!3110248 () Bool)

(declare-fun res!1273384 () Bool)

(assert (=> b!3110248 (=> res!1273384 e!1942936)))

(declare-fun isEmptyLang!642 (Regex!9591) Bool)

(assert (=> b!3110248 (= res!1273384 (isEmptyLang!642 lt!1057319))))

(declare-fun b!3110249 () Bool)

(assert (=> b!3110249 (= e!1942935 e!1942936)))

(declare-fun res!1273379 () Bool)

(assert (=> b!3110249 (=> res!1273379 e!1942936)))

(assert (=> b!3110249 (= res!1273379 (isEmptyLang!642 lt!1057318))))

(declare-fun simplify!546 (Regex!9591) Regex!9591)

(assert (=> b!3110249 (= lt!1057319 (simplify!546 (regTwo!19695 r!17423)))))

(assert (=> b!3110249 (= lt!1057318 (simplify!546 (regOne!19695 r!17423)))))

(declare-fun b!3110250 () Bool)

(assert (=> b!3110250 (= e!1942936 e!1942933)))

(declare-fun res!1273381 () Bool)

(assert (=> b!3110250 (=> res!1273381 e!1942933)))

(declare-fun lt!1057321 () Bool)

(assert (=> b!3110250 (= res!1273381 lt!1057321)))

(assert (=> b!3110250 e!1942934))

(declare-fun res!1273380 () Bool)

(assert (=> b!3110250 (=> res!1273380 e!1942934)))

(assert (=> b!3110250 (= res!1273380 lt!1057321)))

(assert (=> b!3110250 (= lt!1057321 (matchR!4473 lt!1057318 s!11993))))

(declare-fun lt!1057320 () Unit!49621)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!322 (Regex!9591 Regex!9591 List!35456) Unit!49621)

(assert (=> b!3110250 (= lt!1057320 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!322 lt!1057318 lt!1057319 s!11993))))

(declare-fun b!3110251 () Bool)

(assert (=> b!3110251 (= e!1942937 tp_is_empty!16745)))

(declare-fun b!3110245 () Bool)

(declare-fun tp!976260 () Bool)

(declare-fun tp!976256 () Bool)

(assert (=> b!3110245 (= e!1942937 (and tp!976260 tp!976256))))

(declare-fun res!1273382 () Bool)

(assert (=> start!294688 (=> (not res!1273382) (not e!1942931))))

(assert (=> start!294688 (= res!1273382 (validRegex!4324 r!17423))))

(assert (=> start!294688 e!1942931))

(assert (=> start!294688 e!1942937))

(assert (=> start!294688 e!1942932))

(assert (= (and start!294688 res!1273382) b!3110241))

(assert (= (and b!3110241 (not res!1273383)) b!3110249))

(assert (= (and b!3110249 (not res!1273379)) b!3110248))

(assert (= (and b!3110248 (not res!1273384)) b!3110244))

(assert (= (and b!3110244 (not res!1273378)) b!3110250))

(assert (= (and b!3110250 (not res!1273380)) b!3110240))

(assert (= (and b!3110250 (not res!1273381)) b!3110242))

(assert (= (and start!294688 ((_ is ElementMatch!9591) r!17423)) b!3110251))

(assert (= (and start!294688 ((_ is Concat!14912) r!17423)) b!3110243))

(assert (= (and start!294688 ((_ is Star!9591) r!17423)) b!3110247))

(assert (= (and start!294688 ((_ is Union!9591) r!17423)) b!3110245))

(assert (= (and start!294688 ((_ is Cons!35332) s!11993)) b!3110246))

(declare-fun m!3404419 () Bool)

(assert (=> b!3110241 m!3404419))

(declare-fun m!3404421 () Bool)

(assert (=> b!3110241 m!3404421))

(declare-fun m!3404423 () Bool)

(assert (=> b!3110241 m!3404423))

(declare-fun m!3404425 () Bool)

(assert (=> start!294688 m!3404425))

(declare-fun m!3404427 () Bool)

(assert (=> b!3110240 m!3404427))

(declare-fun m!3404429 () Bool)

(assert (=> b!3110248 m!3404429))

(declare-fun m!3404431 () Bool)

(assert (=> b!3110250 m!3404431))

(declare-fun m!3404433 () Bool)

(assert (=> b!3110250 m!3404433))

(declare-fun m!3404435 () Bool)

(assert (=> b!3110249 m!3404435))

(declare-fun m!3404437 () Bool)

(assert (=> b!3110249 m!3404437))

(declare-fun m!3404439 () Bool)

(assert (=> b!3110249 m!3404439))

(declare-fun m!3404441 () Bool)

(assert (=> b!3110244 m!3404441))

(declare-fun m!3404443 () Bool)

(assert (=> b!3110242 m!3404443))

(check-sat (not b!3110244) (not b!3110247) (not b!3110248) (not b!3110243) (not b!3110246) (not b!3110250) (not b!3110240) (not b!3110249) (not b!3110241) (not b!3110245) (not b!3110242) tp_is_empty!16745 (not start!294688))
(check-sat)
(get-model)

(declare-fun b!3110280 () Bool)

(declare-fun res!1273401 () Bool)

(declare-fun e!1942957 () Bool)

(assert (=> b!3110280 (=> (not res!1273401) (not e!1942957))))

(declare-fun call!220137 () Bool)

(assert (=> b!3110280 (= res!1273401 (not call!220137))))

(declare-fun b!3110281 () Bool)

(declare-fun e!1942956 () Bool)

(declare-fun lt!1057325 () Bool)

(assert (=> b!3110281 (= e!1942956 (not lt!1057325))))

(declare-fun b!3110282 () Bool)

(declare-fun e!1942955 () Bool)

(declare-fun derivativeStep!2827 (Regex!9591 C!19368) Regex!9591)

(declare-fun head!6886 (List!35456) C!19368)

(declare-fun tail!5112 (List!35456) List!35456)

(assert (=> b!3110282 (= e!1942955 (matchR!4473 (derivativeStep!2827 (Union!9591 lt!1057318 lt!1057319) (head!6886 s!11993)) (tail!5112 s!11993)))))

(declare-fun b!3110283 () Bool)

(declare-fun nullable!3233 (Regex!9591) Bool)

(assert (=> b!3110283 (= e!1942955 (nullable!3233 (Union!9591 lt!1057318 lt!1057319)))))

(declare-fun b!3110285 () Bool)

(declare-fun e!1942952 () Bool)

(assert (=> b!3110285 (= e!1942952 e!1942956)))

(declare-fun c!520506 () Bool)

(assert (=> b!3110285 (= c!520506 ((_ is EmptyLang!9591) (Union!9591 lt!1057318 lt!1057319)))))

(declare-fun b!3110286 () Bool)

(assert (=> b!3110286 (= e!1942952 (= lt!1057325 call!220137))))

(declare-fun e!1942958 () Bool)

(declare-fun b!3110287 () Bool)

(assert (=> b!3110287 (= e!1942958 (not (= (head!6886 s!11993) (c!520499 (Union!9591 lt!1057318 lt!1057319)))))))

(declare-fun b!3110288 () Bool)

(declare-fun e!1942954 () Bool)

(declare-fun e!1942953 () Bool)

(assert (=> b!3110288 (= e!1942954 e!1942953)))

(declare-fun res!1273404 () Bool)

(assert (=> b!3110288 (=> (not res!1273404) (not e!1942953))))

(assert (=> b!3110288 (= res!1273404 (not lt!1057325))))

(declare-fun bm!220132 () Bool)

(declare-fun isEmpty!19678 (List!35456) Bool)

(assert (=> bm!220132 (= call!220137 (isEmpty!19678 s!11993))))

(declare-fun b!3110289 () Bool)

(assert (=> b!3110289 (= e!1942957 (= (head!6886 s!11993) (c!520499 (Union!9591 lt!1057318 lt!1057319))))))

(declare-fun b!3110284 () Bool)

(declare-fun res!1273405 () Bool)

(assert (=> b!3110284 (=> res!1273405 e!1942954)))

(assert (=> b!3110284 (= res!1273405 e!1942957)))

(declare-fun res!1273406 () Bool)

(assert (=> b!3110284 (=> (not res!1273406) (not e!1942957))))

(assert (=> b!3110284 (= res!1273406 lt!1057325)))

(declare-fun d!861707 () Bool)

(assert (=> d!861707 e!1942952))

(declare-fun c!520508 () Bool)

(assert (=> d!861707 (= c!520508 ((_ is EmptyExpr!9591) (Union!9591 lt!1057318 lt!1057319)))))

(assert (=> d!861707 (= lt!1057325 e!1942955)))

(declare-fun c!520507 () Bool)

(assert (=> d!861707 (= c!520507 (isEmpty!19678 s!11993))))

(assert (=> d!861707 (validRegex!4324 (Union!9591 lt!1057318 lt!1057319))))

(assert (=> d!861707 (= (matchR!4473 (Union!9591 lt!1057318 lt!1057319) s!11993) lt!1057325)))

(declare-fun b!3110290 () Bool)

(declare-fun res!1273402 () Bool)

(assert (=> b!3110290 (=> res!1273402 e!1942954)))

(assert (=> b!3110290 (= res!1273402 (not ((_ is ElementMatch!9591) (Union!9591 lt!1057318 lt!1057319))))))

(assert (=> b!3110290 (= e!1942956 e!1942954)))

(declare-fun b!3110291 () Bool)

(declare-fun res!1273403 () Bool)

(assert (=> b!3110291 (=> res!1273403 e!1942958)))

(assert (=> b!3110291 (= res!1273403 (not (isEmpty!19678 (tail!5112 s!11993))))))

(declare-fun b!3110292 () Bool)

(assert (=> b!3110292 (= e!1942953 e!1942958)))

(declare-fun res!1273408 () Bool)

(assert (=> b!3110292 (=> res!1273408 e!1942958)))

(assert (=> b!3110292 (= res!1273408 call!220137)))

(declare-fun b!3110293 () Bool)

(declare-fun res!1273407 () Bool)

(assert (=> b!3110293 (=> (not res!1273407) (not e!1942957))))

(assert (=> b!3110293 (= res!1273407 (isEmpty!19678 (tail!5112 s!11993)))))

(assert (= (and d!861707 c!520507) b!3110283))

(assert (= (and d!861707 (not c!520507)) b!3110282))

(assert (= (and d!861707 c!520508) b!3110286))

(assert (= (and d!861707 (not c!520508)) b!3110285))

(assert (= (and b!3110285 c!520506) b!3110281))

(assert (= (and b!3110285 (not c!520506)) b!3110290))

(assert (= (and b!3110290 (not res!1273402)) b!3110284))

(assert (= (and b!3110284 res!1273406) b!3110280))

(assert (= (and b!3110280 res!1273401) b!3110293))

(assert (= (and b!3110293 res!1273407) b!3110289))

(assert (= (and b!3110284 (not res!1273405)) b!3110288))

(assert (= (and b!3110288 res!1273404) b!3110292))

(assert (= (and b!3110292 (not res!1273408)) b!3110291))

(assert (= (and b!3110291 (not res!1273403)) b!3110287))

(assert (= (or b!3110286 b!3110280 b!3110292) bm!220132))

(declare-fun m!3404445 () Bool)

(assert (=> b!3110293 m!3404445))

(assert (=> b!3110293 m!3404445))

(declare-fun m!3404447 () Bool)

(assert (=> b!3110293 m!3404447))

(declare-fun m!3404449 () Bool)

(assert (=> b!3110287 m!3404449))

(declare-fun m!3404451 () Bool)

(assert (=> bm!220132 m!3404451))

(declare-fun m!3404453 () Bool)

(assert (=> b!3110283 m!3404453))

(assert (=> d!861707 m!3404451))

(declare-fun m!3404455 () Bool)

(assert (=> d!861707 m!3404455))

(assert (=> b!3110291 m!3404445))

(assert (=> b!3110291 m!3404445))

(assert (=> b!3110291 m!3404447))

(assert (=> b!3110289 m!3404449))

(assert (=> b!3110282 m!3404449))

(assert (=> b!3110282 m!3404449))

(declare-fun m!3404457 () Bool)

(assert (=> b!3110282 m!3404457))

(assert (=> b!3110282 m!3404445))

(assert (=> b!3110282 m!3404457))

(assert (=> b!3110282 m!3404445))

(declare-fun m!3404459 () Bool)

(assert (=> b!3110282 m!3404459))

(assert (=> b!3110244 d!861707))

(declare-fun b!3110294 () Bool)

(declare-fun res!1273409 () Bool)

(declare-fun e!1942964 () Bool)

(assert (=> b!3110294 (=> (not res!1273409) (not e!1942964))))

(declare-fun call!220138 () Bool)

(assert (=> b!3110294 (= res!1273409 (not call!220138))))

(declare-fun b!3110295 () Bool)

(declare-fun e!1942963 () Bool)

(declare-fun lt!1057326 () Bool)

(assert (=> b!3110295 (= e!1942963 (not lt!1057326))))

(declare-fun b!3110296 () Bool)

(declare-fun e!1942962 () Bool)

(assert (=> b!3110296 (= e!1942962 (matchR!4473 (derivativeStep!2827 lt!1057318 (head!6886 s!11993)) (tail!5112 s!11993)))))

(declare-fun b!3110297 () Bool)

(assert (=> b!3110297 (= e!1942962 (nullable!3233 lt!1057318))))

(declare-fun b!3110299 () Bool)

(declare-fun e!1942959 () Bool)

(assert (=> b!3110299 (= e!1942959 e!1942963)))

(declare-fun c!520509 () Bool)

(assert (=> b!3110299 (= c!520509 ((_ is EmptyLang!9591) lt!1057318))))

(declare-fun b!3110300 () Bool)

(assert (=> b!3110300 (= e!1942959 (= lt!1057326 call!220138))))

(declare-fun b!3110301 () Bool)

(declare-fun e!1942965 () Bool)

(assert (=> b!3110301 (= e!1942965 (not (= (head!6886 s!11993) (c!520499 lt!1057318))))))

(declare-fun b!3110302 () Bool)

(declare-fun e!1942961 () Bool)

(declare-fun e!1942960 () Bool)

(assert (=> b!3110302 (= e!1942961 e!1942960)))

(declare-fun res!1273412 () Bool)

(assert (=> b!3110302 (=> (not res!1273412) (not e!1942960))))

(assert (=> b!3110302 (= res!1273412 (not lt!1057326))))

(declare-fun bm!220133 () Bool)

(assert (=> bm!220133 (= call!220138 (isEmpty!19678 s!11993))))

(declare-fun b!3110303 () Bool)

(assert (=> b!3110303 (= e!1942964 (= (head!6886 s!11993) (c!520499 lt!1057318)))))

(declare-fun b!3110298 () Bool)

(declare-fun res!1273413 () Bool)

(assert (=> b!3110298 (=> res!1273413 e!1942961)))

(assert (=> b!3110298 (= res!1273413 e!1942964)))

(declare-fun res!1273414 () Bool)

(assert (=> b!3110298 (=> (not res!1273414) (not e!1942964))))

(assert (=> b!3110298 (= res!1273414 lt!1057326)))

(declare-fun d!861713 () Bool)

(assert (=> d!861713 e!1942959))

(declare-fun c!520511 () Bool)

(assert (=> d!861713 (= c!520511 ((_ is EmptyExpr!9591) lt!1057318))))

(assert (=> d!861713 (= lt!1057326 e!1942962)))

(declare-fun c!520510 () Bool)

(assert (=> d!861713 (= c!520510 (isEmpty!19678 s!11993))))

(assert (=> d!861713 (validRegex!4324 lt!1057318)))

(assert (=> d!861713 (= (matchR!4473 lt!1057318 s!11993) lt!1057326)))

(declare-fun b!3110304 () Bool)

(declare-fun res!1273410 () Bool)

(assert (=> b!3110304 (=> res!1273410 e!1942961)))

(assert (=> b!3110304 (= res!1273410 (not ((_ is ElementMatch!9591) lt!1057318)))))

(assert (=> b!3110304 (= e!1942963 e!1942961)))

(declare-fun b!3110305 () Bool)

(declare-fun res!1273411 () Bool)

(assert (=> b!3110305 (=> res!1273411 e!1942965)))

(assert (=> b!3110305 (= res!1273411 (not (isEmpty!19678 (tail!5112 s!11993))))))

(declare-fun b!3110306 () Bool)

(assert (=> b!3110306 (= e!1942960 e!1942965)))

(declare-fun res!1273416 () Bool)

(assert (=> b!3110306 (=> res!1273416 e!1942965)))

(assert (=> b!3110306 (= res!1273416 call!220138)))

(declare-fun b!3110307 () Bool)

(declare-fun res!1273415 () Bool)

(assert (=> b!3110307 (=> (not res!1273415) (not e!1942964))))

(assert (=> b!3110307 (= res!1273415 (isEmpty!19678 (tail!5112 s!11993)))))

(assert (= (and d!861713 c!520510) b!3110297))

(assert (= (and d!861713 (not c!520510)) b!3110296))

(assert (= (and d!861713 c!520511) b!3110300))

(assert (= (and d!861713 (not c!520511)) b!3110299))

(assert (= (and b!3110299 c!520509) b!3110295))

(assert (= (and b!3110299 (not c!520509)) b!3110304))

(assert (= (and b!3110304 (not res!1273410)) b!3110298))

(assert (= (and b!3110298 res!1273414) b!3110294))

(assert (= (and b!3110294 res!1273409) b!3110307))

(assert (= (and b!3110307 res!1273415) b!3110303))

(assert (= (and b!3110298 (not res!1273413)) b!3110302))

(assert (= (and b!3110302 res!1273412) b!3110306))

(assert (= (and b!3110306 (not res!1273416)) b!3110305))

(assert (= (and b!3110305 (not res!1273411)) b!3110301))

(assert (= (or b!3110300 b!3110294 b!3110306) bm!220133))

(assert (=> b!3110307 m!3404445))

(assert (=> b!3110307 m!3404445))

(assert (=> b!3110307 m!3404447))

(assert (=> b!3110301 m!3404449))

(assert (=> bm!220133 m!3404451))

(declare-fun m!3404461 () Bool)

(assert (=> b!3110297 m!3404461))

(assert (=> d!861713 m!3404451))

(declare-fun m!3404463 () Bool)

(assert (=> d!861713 m!3404463))

(assert (=> b!3110305 m!3404445))

(assert (=> b!3110305 m!3404445))

(assert (=> b!3110305 m!3404447))

(assert (=> b!3110303 m!3404449))

(assert (=> b!3110296 m!3404449))

(assert (=> b!3110296 m!3404449))

(declare-fun m!3404465 () Bool)

(assert (=> b!3110296 m!3404465))

(assert (=> b!3110296 m!3404445))

(assert (=> b!3110296 m!3404465))

(assert (=> b!3110296 m!3404445))

(declare-fun m!3404467 () Bool)

(assert (=> b!3110296 m!3404467))

(assert (=> b!3110250 d!861713))

(declare-fun d!861715 () Bool)

(declare-fun e!1942996 () Bool)

(assert (=> d!861715 e!1942996))

(declare-fun res!1273425 () Bool)

(assert (=> d!861715 (=> res!1273425 e!1942996)))

(assert (=> d!861715 (= res!1273425 (matchR!4473 lt!1057318 s!11993))))

(declare-fun lt!1057341 () Unit!49621)

(declare-fun choose!18395 (Regex!9591 Regex!9591 List!35456) Unit!49621)

(assert (=> d!861715 (= lt!1057341 (choose!18395 lt!1057318 lt!1057319 s!11993))))

(declare-fun e!1942997 () Bool)

(assert (=> d!861715 e!1942997))

(declare-fun res!1273426 () Bool)

(assert (=> d!861715 (=> (not res!1273426) (not e!1942997))))

(assert (=> d!861715 (= res!1273426 (validRegex!4324 lt!1057318))))

(assert (=> d!861715 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!322 lt!1057318 lt!1057319 s!11993) lt!1057341)))

(declare-fun b!3110360 () Bool)

(assert (=> b!3110360 (= e!1942997 (validRegex!4324 lt!1057319))))

(declare-fun b!3110361 () Bool)

(assert (=> b!3110361 (= e!1942996 (matchR!4473 lt!1057319 s!11993))))

(assert (= (and d!861715 res!1273426) b!3110360))

(assert (= (and d!861715 (not res!1273425)) b!3110361))

(assert (=> d!861715 m!3404431))

(declare-fun m!3404469 () Bool)

(assert (=> d!861715 m!3404469))

(assert (=> d!861715 m!3404463))

(declare-fun m!3404471 () Bool)

(assert (=> b!3110360 m!3404471))

(assert (=> b!3110361 m!3404427))

(assert (=> b!3110250 d!861715))

(declare-fun d!861717 () Bool)

(assert (=> d!861717 (= (isEmptyLang!642 lt!1057319) ((_ is EmptyLang!9591) lt!1057319))))

(assert (=> b!3110248 d!861717))

(declare-fun d!861719 () Bool)

(assert (=> d!861719 (= (isEmptyLang!642 lt!1057318) ((_ is EmptyLang!9591) lt!1057318))))

(assert (=> b!3110249 d!861719))

(declare-fun b!3110506 () Bool)

(declare-fun e!1943084 () Regex!9591)

(declare-fun e!1943079 () Regex!9591)

(assert (=> b!3110506 (= e!1943084 e!1943079)))

(declare-fun lt!1057370 () Regex!9591)

(declare-fun call!220190 () Regex!9591)

(assert (=> b!3110506 (= lt!1057370 call!220190)))

(declare-fun lt!1057372 () Regex!9591)

(declare-fun call!220188 () Regex!9591)

(assert (=> b!3110506 (= lt!1057372 call!220188)))

(declare-fun c!520592 () Bool)

(declare-fun call!220186 () Bool)

(assert (=> b!3110506 (= c!520592 call!220186)))

(declare-fun d!861721 () Bool)

(declare-fun e!1943089 () Bool)

(assert (=> d!861721 e!1943089))

(declare-fun res!1273465 () Bool)

(assert (=> d!861721 (=> (not res!1273465) (not e!1943089))))

(declare-fun lt!1057369 () Regex!9591)

(assert (=> d!861721 (= res!1273465 (validRegex!4324 lt!1057369))))

(declare-fun e!1943085 () Regex!9591)

(assert (=> d!861721 (= lt!1057369 e!1943085)))

(declare-fun c!520590 () Bool)

(assert (=> d!861721 (= c!520590 ((_ is EmptyLang!9591) (regTwo!19695 r!17423)))))

(assert (=> d!861721 (validRegex!4324 (regTwo!19695 r!17423))))

(assert (=> d!861721 (= (simplify!546 (regTwo!19695 r!17423)) lt!1057369)))

(declare-fun c!520596 () Bool)

(declare-fun bm!220179 () Bool)

(declare-fun lt!1057371 () Regex!9591)

(declare-fun call!220185 () Bool)

(declare-fun lt!1057374 () Regex!9591)

(declare-fun c!520589 () Bool)

(assert (=> bm!220179 (= call!220185 (isEmptyLang!642 (ite c!520596 lt!1057371 (ite c!520589 lt!1057370 lt!1057374))))))

(declare-fun b!3110507 () Bool)

(declare-fun e!1943088 () Regex!9591)

(assert (=> b!3110507 (= e!1943088 lt!1057374)))

(declare-fun bm!220180 () Bool)

(assert (=> bm!220180 (= call!220186 call!220185)))

(declare-fun b!3110508 () Bool)

(declare-fun e!1943087 () Bool)

(declare-fun call!220187 () Bool)

(assert (=> b!3110508 (= e!1943087 call!220187)))

(declare-fun b!3110509 () Bool)

(declare-fun e!1943081 () Regex!9591)

(assert (=> b!3110509 (= e!1943081 lt!1057370)))

(declare-fun bm!220181 () Bool)

(declare-fun call!220189 () Regex!9591)

(assert (=> bm!220181 (= call!220190 call!220189)))

(declare-fun b!3110510 () Bool)

(assert (=> b!3110510 (= e!1943081 (Union!9591 lt!1057370 lt!1057372))))

(declare-fun b!3110511 () Bool)

(declare-fun e!1943082 () Regex!9591)

(assert (=> b!3110511 (= e!1943085 e!1943082)))

(declare-fun c!520594 () Bool)

(assert (=> b!3110511 (= c!520594 ((_ is ElementMatch!9591) (regTwo!19695 r!17423)))))

(declare-fun b!3110512 () Bool)

(declare-fun e!1943077 () Regex!9591)

(declare-fun e!1943090 () Regex!9591)

(assert (=> b!3110512 (= e!1943077 e!1943090)))

(assert (=> b!3110512 (= c!520596 ((_ is Star!9591) (regTwo!19695 r!17423)))))

(declare-fun b!3110513 () Bool)

(declare-fun c!520591 () Bool)

(assert (=> b!3110513 (= c!520591 ((_ is EmptyExpr!9591) (regTwo!19695 r!17423)))))

(assert (=> b!3110513 (= e!1943082 e!1943077)))

(declare-fun bm!220182 () Bool)

(assert (=> bm!220182 (= call!220188 (simplify!546 (ite c!520589 (regTwo!19695 (regTwo!19695 r!17423)) (regOne!19694 (regTwo!19695 r!17423)))))))

(declare-fun bm!220183 () Bool)

(declare-fun lt!1057373 () Regex!9591)

(declare-fun call!220184 () Bool)

(assert (=> bm!220183 (= call!220184 (isEmptyLang!642 (ite c!520589 lt!1057372 lt!1057373)))))

(declare-fun b!3110514 () Bool)

(declare-fun c!520587 () Bool)

(assert (=> b!3110514 (= c!520587 call!220187)))

(declare-fun e!1943086 () Regex!9591)

(declare-fun e!1943080 () Regex!9591)

(assert (=> b!3110514 (= e!1943086 e!1943080)))

(declare-fun b!3110515 () Bool)

(assert (=> b!3110515 (= e!1943080 e!1943088)))

(declare-fun c!520588 () Bool)

(declare-fun isEmptyExpr!644 (Regex!9591) Bool)

(assert (=> b!3110515 (= c!520588 (isEmptyExpr!644 lt!1057373))))

(declare-fun b!3110516 () Bool)

(assert (=> b!3110516 (= e!1943084 e!1943086)))

(assert (=> b!3110516 (= lt!1057374 call!220188)))

(assert (=> b!3110516 (= lt!1057373 call!220190)))

(declare-fun res!1273467 () Bool)

(assert (=> b!3110516 (= res!1273467 call!220186)))

(declare-fun e!1943083 () Bool)

(assert (=> b!3110516 (=> res!1273467 e!1943083)))

(declare-fun c!520593 () Bool)

(assert (=> b!3110516 (= c!520593 e!1943083)))

(declare-fun b!3110517 () Bool)

(declare-fun c!520597 () Bool)

(assert (=> b!3110517 (= c!520597 call!220184)))

(assert (=> b!3110517 (= e!1943079 e!1943081)))

(declare-fun b!3110518 () Bool)

(assert (=> b!3110518 (= c!520589 ((_ is Union!9591) (regTwo!19695 r!17423)))))

(assert (=> b!3110518 (= e!1943090 e!1943084)))

(declare-fun bm!220184 () Bool)

(assert (=> bm!220184 (= call!220189 (simplify!546 (ite c!520596 (reg!9920 (regTwo!19695 r!17423)) (ite c!520589 (regOne!19695 (regTwo!19695 r!17423)) (regTwo!19694 (regTwo!19695 r!17423))))))))

(declare-fun b!3110519 () Bool)

(assert (=> b!3110519 (= e!1943089 (= (nullable!3233 lt!1057369) (nullable!3233 (regTwo!19695 r!17423))))))

(declare-fun b!3110520 () Bool)

(assert (=> b!3110520 (= e!1943085 EmptyLang!9591)))

(declare-fun b!3110521 () Bool)

(assert (=> b!3110521 (= e!1943088 (Concat!14912 lt!1057374 lt!1057373))))

(declare-fun b!3110522 () Bool)

(assert (=> b!3110522 (= e!1943080 lt!1057373)))

(declare-fun b!3110523 () Bool)

(assert (=> b!3110523 (= e!1943079 lt!1057372)))

(declare-fun b!3110524 () Bool)

(assert (=> b!3110524 (= e!1943086 EmptyLang!9591)))

(declare-fun b!3110525 () Bool)

(declare-fun e!1943078 () Regex!9591)

(assert (=> b!3110525 (= e!1943078 (Star!9591 lt!1057371))))

(declare-fun bm!220185 () Bool)

(assert (=> bm!220185 (= call!220187 (isEmptyExpr!644 (ite c!520596 lt!1057371 lt!1057374)))))

(declare-fun b!3110526 () Bool)

(assert (=> b!3110526 (= e!1943078 EmptyExpr!9591)))

(declare-fun b!3110527 () Bool)

(assert (=> b!3110527 (= e!1943077 EmptyExpr!9591)))

(declare-fun b!3110528 () Bool)

(assert (=> b!3110528 (= e!1943082 (regTwo!19695 r!17423))))

(declare-fun b!3110529 () Bool)

(assert (=> b!3110529 (= e!1943083 call!220184)))

(declare-fun b!3110530 () Bool)

(declare-fun c!520595 () Bool)

(assert (=> b!3110530 (= c!520595 e!1943087)))

(declare-fun res!1273466 () Bool)

(assert (=> b!3110530 (=> res!1273466 e!1943087)))

(assert (=> b!3110530 (= res!1273466 call!220185)))

(assert (=> b!3110530 (= lt!1057371 call!220189)))

(assert (=> b!3110530 (= e!1943090 e!1943078)))

(assert (= (and d!861721 c!520590) b!3110520))

(assert (= (and d!861721 (not c!520590)) b!3110511))

(assert (= (and b!3110511 c!520594) b!3110528))

(assert (= (and b!3110511 (not c!520594)) b!3110513))

(assert (= (and b!3110513 c!520591) b!3110527))

(assert (= (and b!3110513 (not c!520591)) b!3110512))

(assert (= (and b!3110512 c!520596) b!3110530))

(assert (= (and b!3110512 (not c!520596)) b!3110518))

(assert (= (and b!3110530 (not res!1273466)) b!3110508))

(assert (= (and b!3110530 c!520595) b!3110526))

(assert (= (and b!3110530 (not c!520595)) b!3110525))

(assert (= (and b!3110518 c!520589) b!3110506))

(assert (= (and b!3110518 (not c!520589)) b!3110516))

(assert (= (and b!3110506 c!520592) b!3110523))

(assert (= (and b!3110506 (not c!520592)) b!3110517))

(assert (= (and b!3110517 c!520597) b!3110509))

(assert (= (and b!3110517 (not c!520597)) b!3110510))

(assert (= (and b!3110516 (not res!1273467)) b!3110529))

(assert (= (and b!3110516 c!520593) b!3110524))

(assert (= (and b!3110516 (not c!520593)) b!3110514))

(assert (= (and b!3110514 c!520587) b!3110522))

(assert (= (and b!3110514 (not c!520587)) b!3110515))

(assert (= (and b!3110515 c!520588) b!3110507))

(assert (= (and b!3110515 (not c!520588)) b!3110521))

(assert (= (or b!3110506 b!3110516) bm!220181))

(assert (= (or b!3110506 b!3110516) bm!220182))

(assert (= (or b!3110506 b!3110516) bm!220180))

(assert (= (or b!3110517 b!3110529) bm!220183))

(assert (= (or b!3110508 b!3110514) bm!220185))

(assert (= (or b!3110530 bm!220181) bm!220184))

(assert (= (or b!3110530 bm!220180) bm!220179))

(assert (= (and d!861721 res!1273465) b!3110519))

(declare-fun m!3404527 () Bool)

(assert (=> bm!220184 m!3404527))

(declare-fun m!3404529 () Bool)

(assert (=> bm!220183 m!3404529))

(declare-fun m!3404531 () Bool)

(assert (=> bm!220179 m!3404531))

(declare-fun m!3404533 () Bool)

(assert (=> b!3110519 m!3404533))

(declare-fun m!3404535 () Bool)

(assert (=> b!3110519 m!3404535))

(declare-fun m!3404537 () Bool)

(assert (=> d!861721 m!3404537))

(assert (=> d!861721 m!3404443))

(declare-fun m!3404539 () Bool)

(assert (=> bm!220185 m!3404539))

(declare-fun m!3404541 () Bool)

(assert (=> bm!220182 m!3404541))

(declare-fun m!3404543 () Bool)

(assert (=> b!3110515 m!3404543))

(assert (=> b!3110249 d!861721))

(declare-fun b!3110549 () Bool)

(declare-fun e!1943112 () Regex!9591)

(declare-fun e!1943107 () Regex!9591)

(assert (=> b!3110549 (= e!1943112 e!1943107)))

(declare-fun lt!1057376 () Regex!9591)

(declare-fun call!220201 () Regex!9591)

(assert (=> b!3110549 (= lt!1057376 call!220201)))

(declare-fun lt!1057378 () Regex!9591)

(declare-fun call!220199 () Regex!9591)

(assert (=> b!3110549 (= lt!1057378 call!220199)))

(declare-fun c!520607 () Bool)

(declare-fun call!220197 () Bool)

(assert (=> b!3110549 (= c!520607 call!220197)))

(declare-fun d!861731 () Bool)

(declare-fun e!1943117 () Bool)

(assert (=> d!861731 e!1943117))

(declare-fun res!1273478 () Bool)

(assert (=> d!861731 (=> (not res!1273478) (not e!1943117))))

(declare-fun lt!1057375 () Regex!9591)

(assert (=> d!861731 (= res!1273478 (validRegex!4324 lt!1057375))))

(declare-fun e!1943113 () Regex!9591)

(assert (=> d!861731 (= lt!1057375 e!1943113)))

(declare-fun c!520605 () Bool)

(assert (=> d!861731 (= c!520605 ((_ is EmptyLang!9591) (regOne!19695 r!17423)))))

(assert (=> d!861731 (validRegex!4324 (regOne!19695 r!17423))))

(assert (=> d!861731 (= (simplify!546 (regOne!19695 r!17423)) lt!1057375)))

(declare-fun c!520611 () Bool)

(declare-fun call!220196 () Bool)

(declare-fun c!520604 () Bool)

(declare-fun lt!1057377 () Regex!9591)

(declare-fun lt!1057380 () Regex!9591)

(declare-fun bm!220190 () Bool)

(assert (=> bm!220190 (= call!220196 (isEmptyLang!642 (ite c!520611 lt!1057377 (ite c!520604 lt!1057376 lt!1057380))))))

(declare-fun b!3110550 () Bool)

(declare-fun e!1943116 () Regex!9591)

(assert (=> b!3110550 (= e!1943116 lt!1057380)))

(declare-fun bm!220191 () Bool)

(assert (=> bm!220191 (= call!220197 call!220196)))

(declare-fun b!3110551 () Bool)

(declare-fun e!1943115 () Bool)

(declare-fun call!220198 () Bool)

(assert (=> b!3110551 (= e!1943115 call!220198)))

(declare-fun b!3110552 () Bool)

(declare-fun e!1943109 () Regex!9591)

(assert (=> b!3110552 (= e!1943109 lt!1057376)))

(declare-fun bm!220192 () Bool)

(declare-fun call!220200 () Regex!9591)

(assert (=> bm!220192 (= call!220201 call!220200)))

(declare-fun b!3110553 () Bool)

(assert (=> b!3110553 (= e!1943109 (Union!9591 lt!1057376 lt!1057378))))

(declare-fun b!3110554 () Bool)

(declare-fun e!1943110 () Regex!9591)

(assert (=> b!3110554 (= e!1943113 e!1943110)))

(declare-fun c!520609 () Bool)

(assert (=> b!3110554 (= c!520609 ((_ is ElementMatch!9591) (regOne!19695 r!17423)))))

(declare-fun b!3110555 () Bool)

(declare-fun e!1943105 () Regex!9591)

(declare-fun e!1943118 () Regex!9591)

(assert (=> b!3110555 (= e!1943105 e!1943118)))

(assert (=> b!3110555 (= c!520611 ((_ is Star!9591) (regOne!19695 r!17423)))))

(declare-fun b!3110556 () Bool)

(declare-fun c!520606 () Bool)

(assert (=> b!3110556 (= c!520606 ((_ is EmptyExpr!9591) (regOne!19695 r!17423)))))

(assert (=> b!3110556 (= e!1943110 e!1943105)))

(declare-fun bm!220193 () Bool)

(assert (=> bm!220193 (= call!220199 (simplify!546 (ite c!520604 (regTwo!19695 (regOne!19695 r!17423)) (regOne!19694 (regOne!19695 r!17423)))))))

(declare-fun call!220195 () Bool)

(declare-fun lt!1057379 () Regex!9591)

(declare-fun bm!220194 () Bool)

(assert (=> bm!220194 (= call!220195 (isEmptyLang!642 (ite c!520604 lt!1057378 lt!1057379)))))

(declare-fun b!3110557 () Bool)

(declare-fun c!520602 () Bool)

(assert (=> b!3110557 (= c!520602 call!220198)))

(declare-fun e!1943114 () Regex!9591)

(declare-fun e!1943108 () Regex!9591)

(assert (=> b!3110557 (= e!1943114 e!1943108)))

(declare-fun b!3110558 () Bool)

(assert (=> b!3110558 (= e!1943108 e!1943116)))

(declare-fun c!520603 () Bool)

(assert (=> b!3110558 (= c!520603 (isEmptyExpr!644 lt!1057379))))

(declare-fun b!3110559 () Bool)

(assert (=> b!3110559 (= e!1943112 e!1943114)))

(assert (=> b!3110559 (= lt!1057380 call!220199)))

(assert (=> b!3110559 (= lt!1057379 call!220201)))

(declare-fun res!1273480 () Bool)

(assert (=> b!3110559 (= res!1273480 call!220197)))

(declare-fun e!1943111 () Bool)

(assert (=> b!3110559 (=> res!1273480 e!1943111)))

(declare-fun c!520608 () Bool)

(assert (=> b!3110559 (= c!520608 e!1943111)))

(declare-fun b!3110560 () Bool)

(declare-fun c!520612 () Bool)

(assert (=> b!3110560 (= c!520612 call!220195)))

(assert (=> b!3110560 (= e!1943107 e!1943109)))

(declare-fun b!3110561 () Bool)

(assert (=> b!3110561 (= c!520604 ((_ is Union!9591) (regOne!19695 r!17423)))))

(assert (=> b!3110561 (= e!1943118 e!1943112)))

(declare-fun bm!220195 () Bool)

(assert (=> bm!220195 (= call!220200 (simplify!546 (ite c!520611 (reg!9920 (regOne!19695 r!17423)) (ite c!520604 (regOne!19695 (regOne!19695 r!17423)) (regTwo!19694 (regOne!19695 r!17423))))))))

(declare-fun b!3110562 () Bool)

(assert (=> b!3110562 (= e!1943117 (= (nullable!3233 lt!1057375) (nullable!3233 (regOne!19695 r!17423))))))

(declare-fun b!3110563 () Bool)

(assert (=> b!3110563 (= e!1943113 EmptyLang!9591)))

(declare-fun b!3110564 () Bool)

(assert (=> b!3110564 (= e!1943116 (Concat!14912 lt!1057380 lt!1057379))))

(declare-fun b!3110565 () Bool)

(assert (=> b!3110565 (= e!1943108 lt!1057379)))

(declare-fun b!3110566 () Bool)

(assert (=> b!3110566 (= e!1943107 lt!1057378)))

(declare-fun b!3110567 () Bool)

(assert (=> b!3110567 (= e!1943114 EmptyLang!9591)))

(declare-fun b!3110568 () Bool)

(declare-fun e!1943106 () Regex!9591)

(assert (=> b!3110568 (= e!1943106 (Star!9591 lt!1057377))))

(declare-fun bm!220196 () Bool)

(assert (=> bm!220196 (= call!220198 (isEmptyExpr!644 (ite c!520611 lt!1057377 lt!1057380)))))

(declare-fun b!3110569 () Bool)

(assert (=> b!3110569 (= e!1943106 EmptyExpr!9591)))

(declare-fun b!3110570 () Bool)

(assert (=> b!3110570 (= e!1943105 EmptyExpr!9591)))

(declare-fun b!3110571 () Bool)

(assert (=> b!3110571 (= e!1943110 (regOne!19695 r!17423))))

(declare-fun b!3110572 () Bool)

(assert (=> b!3110572 (= e!1943111 call!220195)))

(declare-fun b!3110573 () Bool)

(declare-fun c!520610 () Bool)

(assert (=> b!3110573 (= c!520610 e!1943115)))

(declare-fun res!1273479 () Bool)

(assert (=> b!3110573 (=> res!1273479 e!1943115)))

(assert (=> b!3110573 (= res!1273479 call!220196)))

(assert (=> b!3110573 (= lt!1057377 call!220200)))

(assert (=> b!3110573 (= e!1943118 e!1943106)))

(assert (= (and d!861731 c!520605) b!3110563))

(assert (= (and d!861731 (not c!520605)) b!3110554))

(assert (= (and b!3110554 c!520609) b!3110571))

(assert (= (and b!3110554 (not c!520609)) b!3110556))

(assert (= (and b!3110556 c!520606) b!3110570))

(assert (= (and b!3110556 (not c!520606)) b!3110555))

(assert (= (and b!3110555 c!520611) b!3110573))

(assert (= (and b!3110555 (not c!520611)) b!3110561))

(assert (= (and b!3110573 (not res!1273479)) b!3110551))

(assert (= (and b!3110573 c!520610) b!3110569))

(assert (= (and b!3110573 (not c!520610)) b!3110568))

(assert (= (and b!3110561 c!520604) b!3110549))

(assert (= (and b!3110561 (not c!520604)) b!3110559))

(assert (= (and b!3110549 c!520607) b!3110566))

(assert (= (and b!3110549 (not c!520607)) b!3110560))

(assert (= (and b!3110560 c!520612) b!3110552))

(assert (= (and b!3110560 (not c!520612)) b!3110553))

(assert (= (and b!3110559 (not res!1273480)) b!3110572))

(assert (= (and b!3110559 c!520608) b!3110567))

(assert (= (and b!3110559 (not c!520608)) b!3110557))

(assert (= (and b!3110557 c!520602) b!3110565))

(assert (= (and b!3110557 (not c!520602)) b!3110558))

(assert (= (and b!3110558 c!520603) b!3110550))

(assert (= (and b!3110558 (not c!520603)) b!3110564))

(assert (= (or b!3110549 b!3110559) bm!220192))

(assert (= (or b!3110549 b!3110559) bm!220193))

(assert (= (or b!3110549 b!3110559) bm!220191))

(assert (= (or b!3110560 b!3110572) bm!220194))

(assert (= (or b!3110551 b!3110557) bm!220196))

(assert (= (or b!3110573 bm!220192) bm!220195))

(assert (= (or b!3110573 bm!220191) bm!220190))

(assert (= (and d!861731 res!1273478) b!3110562))

(declare-fun m!3404545 () Bool)

(assert (=> bm!220195 m!3404545))

(declare-fun m!3404547 () Bool)

(assert (=> bm!220194 m!3404547))

(declare-fun m!3404549 () Bool)

(assert (=> bm!220190 m!3404549))

(declare-fun m!3404551 () Bool)

(assert (=> b!3110562 m!3404551))

(declare-fun m!3404553 () Bool)

(assert (=> b!3110562 m!3404553))

(declare-fun m!3404555 () Bool)

(assert (=> d!861731 m!3404555))

(declare-fun m!3404557 () Bool)

(assert (=> d!861731 m!3404557))

(declare-fun m!3404559 () Bool)

(assert (=> bm!220196 m!3404559))

(declare-fun m!3404561 () Bool)

(assert (=> bm!220193 m!3404561))

(declare-fun m!3404563 () Bool)

(assert (=> b!3110558 m!3404563))

(assert (=> b!3110249 d!861731))

(declare-fun b!3110635 () Bool)

(declare-fun res!1273522 () Bool)

(declare-fun e!1943160 () Bool)

(assert (=> b!3110635 (=> res!1273522 e!1943160)))

(assert (=> b!3110635 (= res!1273522 (not ((_ is Concat!14912) r!17423)))))

(declare-fun e!1943164 () Bool)

(assert (=> b!3110635 (= e!1943164 e!1943160)))

(declare-fun b!3110636 () Bool)

(declare-fun e!1943163 () Bool)

(declare-fun e!1943166 () Bool)

(assert (=> b!3110636 (= e!1943163 e!1943166)))

(declare-fun c!520626 () Bool)

(assert (=> b!3110636 (= c!520626 ((_ is Star!9591) r!17423))))

(declare-fun b!3110637 () Bool)

(declare-fun e!1943165 () Bool)

(assert (=> b!3110637 (= e!1943160 e!1943165)))

(declare-fun res!1273520 () Bool)

(assert (=> b!3110637 (=> (not res!1273520) (not e!1943165))))

(declare-fun call!220217 () Bool)

(assert (=> b!3110637 (= res!1273520 call!220217)))

(declare-fun b!3110638 () Bool)

(declare-fun e!1943162 () Bool)

(assert (=> b!3110638 (= e!1943162 call!220217)))

(declare-fun bm!220210 () Bool)

(declare-fun call!220215 () Bool)

(declare-fun call!220216 () Bool)

(assert (=> bm!220210 (= call!220215 call!220216)))

(declare-fun b!3110639 () Bool)

(declare-fun e!1943161 () Bool)

(assert (=> b!3110639 (= e!1943166 e!1943161)))

(declare-fun res!1273521 () Bool)

(assert (=> b!3110639 (= res!1273521 (not (nullable!3233 (reg!9920 r!17423))))))

(assert (=> b!3110639 (=> (not res!1273521) (not e!1943161))))

(declare-fun b!3110640 () Bool)

(assert (=> b!3110640 (= e!1943165 call!220215)))

(declare-fun b!3110641 () Bool)

(assert (=> b!3110641 (= e!1943161 call!220216)))

(declare-fun b!3110642 () Bool)

(assert (=> b!3110642 (= e!1943166 e!1943164)))

(declare-fun c!520625 () Bool)

(assert (=> b!3110642 (= c!520625 ((_ is Union!9591) r!17423))))

(declare-fun bm!220212 () Bool)

(assert (=> bm!220212 (= call!220217 (validRegex!4324 (ite c!520625 (regTwo!19695 r!17423) (regOne!19694 r!17423))))))

(declare-fun b!3110643 () Bool)

(declare-fun res!1273519 () Bool)

(assert (=> b!3110643 (=> (not res!1273519) (not e!1943162))))

(assert (=> b!3110643 (= res!1273519 call!220215)))

(assert (=> b!3110643 (= e!1943164 e!1943162)))

(declare-fun bm!220211 () Bool)

(assert (=> bm!220211 (= call!220216 (validRegex!4324 (ite c!520626 (reg!9920 r!17423) (ite c!520625 (regOne!19695 r!17423) (regTwo!19694 r!17423)))))))

(declare-fun d!861733 () Bool)

(declare-fun res!1273518 () Bool)

(assert (=> d!861733 (=> res!1273518 e!1943163)))

(assert (=> d!861733 (= res!1273518 ((_ is ElementMatch!9591) r!17423))))

(assert (=> d!861733 (= (validRegex!4324 r!17423) e!1943163)))

(assert (= (and d!861733 (not res!1273518)) b!3110636))

(assert (= (and b!3110636 c!520626) b!3110639))

(assert (= (and b!3110636 (not c!520626)) b!3110642))

(assert (= (and b!3110639 res!1273521) b!3110641))

(assert (= (and b!3110642 c!520625) b!3110643))

(assert (= (and b!3110642 (not c!520625)) b!3110635))

(assert (= (and b!3110643 res!1273519) b!3110638))

(assert (= (and b!3110635 (not res!1273522)) b!3110637))

(assert (= (and b!3110637 res!1273520) b!3110640))

(assert (= (or b!3110643 b!3110640) bm!220210))

(assert (= (or b!3110638 b!3110637) bm!220212))

(assert (= (or b!3110641 bm!220210) bm!220211))

(declare-fun m!3404589 () Bool)

(assert (=> b!3110639 m!3404589))

(declare-fun m!3404591 () Bool)

(assert (=> bm!220212 m!3404591))

(declare-fun m!3404593 () Bool)

(assert (=> bm!220211 m!3404593))

(assert (=> start!294688 d!861733))

(declare-fun b!3110644 () Bool)

(declare-fun res!1273527 () Bool)

(declare-fun e!1943167 () Bool)

(assert (=> b!3110644 (=> res!1273527 e!1943167)))

(assert (=> b!3110644 (= res!1273527 (not ((_ is Concat!14912) (regTwo!19695 r!17423))))))

(declare-fun e!1943171 () Bool)

(assert (=> b!3110644 (= e!1943171 e!1943167)))

(declare-fun b!3110645 () Bool)

(declare-fun e!1943170 () Bool)

(declare-fun e!1943173 () Bool)

(assert (=> b!3110645 (= e!1943170 e!1943173)))

(declare-fun c!520628 () Bool)

(assert (=> b!3110645 (= c!520628 ((_ is Star!9591) (regTwo!19695 r!17423)))))

(declare-fun b!3110646 () Bool)

(declare-fun e!1943172 () Bool)

(assert (=> b!3110646 (= e!1943167 e!1943172)))

(declare-fun res!1273525 () Bool)

(assert (=> b!3110646 (=> (not res!1273525) (not e!1943172))))

(declare-fun call!220220 () Bool)

(assert (=> b!3110646 (= res!1273525 call!220220)))

(declare-fun b!3110647 () Bool)

(declare-fun e!1943169 () Bool)

(assert (=> b!3110647 (= e!1943169 call!220220)))

(declare-fun bm!220213 () Bool)

(declare-fun call!220218 () Bool)

(declare-fun call!220219 () Bool)

(assert (=> bm!220213 (= call!220218 call!220219)))

(declare-fun b!3110648 () Bool)

(declare-fun e!1943168 () Bool)

(assert (=> b!3110648 (= e!1943173 e!1943168)))

(declare-fun res!1273526 () Bool)

(assert (=> b!3110648 (= res!1273526 (not (nullable!3233 (reg!9920 (regTwo!19695 r!17423)))))))

(assert (=> b!3110648 (=> (not res!1273526) (not e!1943168))))

(declare-fun b!3110649 () Bool)

(assert (=> b!3110649 (= e!1943172 call!220218)))

(declare-fun b!3110650 () Bool)

(assert (=> b!3110650 (= e!1943168 call!220219)))

(declare-fun b!3110651 () Bool)

(assert (=> b!3110651 (= e!1943173 e!1943171)))

(declare-fun c!520627 () Bool)

(assert (=> b!3110651 (= c!520627 ((_ is Union!9591) (regTwo!19695 r!17423)))))

(declare-fun bm!220215 () Bool)

(assert (=> bm!220215 (= call!220220 (validRegex!4324 (ite c!520627 (regTwo!19695 (regTwo!19695 r!17423)) (regOne!19694 (regTwo!19695 r!17423)))))))

(declare-fun b!3110652 () Bool)

(declare-fun res!1273524 () Bool)

(assert (=> b!3110652 (=> (not res!1273524) (not e!1943169))))

(assert (=> b!3110652 (= res!1273524 call!220218)))

(assert (=> b!3110652 (= e!1943171 e!1943169)))

(declare-fun bm!220214 () Bool)

(assert (=> bm!220214 (= call!220219 (validRegex!4324 (ite c!520628 (reg!9920 (regTwo!19695 r!17423)) (ite c!520627 (regOne!19695 (regTwo!19695 r!17423)) (regTwo!19694 (regTwo!19695 r!17423))))))))

(declare-fun d!861743 () Bool)

(declare-fun res!1273523 () Bool)

(assert (=> d!861743 (=> res!1273523 e!1943170)))

(assert (=> d!861743 (= res!1273523 ((_ is ElementMatch!9591) (regTwo!19695 r!17423)))))

(assert (=> d!861743 (= (validRegex!4324 (regTwo!19695 r!17423)) e!1943170)))

(assert (= (and d!861743 (not res!1273523)) b!3110645))

(assert (= (and b!3110645 c!520628) b!3110648))

(assert (= (and b!3110645 (not c!520628)) b!3110651))

(assert (= (and b!3110648 res!1273526) b!3110650))

(assert (= (and b!3110651 c!520627) b!3110652))

(assert (= (and b!3110651 (not c!520627)) b!3110644))

(assert (= (and b!3110652 res!1273524) b!3110647))

(assert (= (and b!3110644 (not res!1273527)) b!3110646))

(assert (= (and b!3110646 res!1273525) b!3110649))

(assert (= (or b!3110652 b!3110649) bm!220213))

(assert (= (or b!3110647 b!3110646) bm!220215))

(assert (= (or b!3110650 bm!220213) bm!220214))

(declare-fun m!3404595 () Bool)

(assert (=> b!3110648 m!3404595))

(declare-fun m!3404597 () Bool)

(assert (=> bm!220215 m!3404597))

(declare-fun m!3404599 () Bool)

(assert (=> bm!220214 m!3404599))

(assert (=> b!3110242 d!861743))

(declare-fun b!3110653 () Bool)

(declare-fun res!1273528 () Bool)

(declare-fun e!1943179 () Bool)

(assert (=> b!3110653 (=> (not res!1273528) (not e!1943179))))

(declare-fun call!220221 () Bool)

(assert (=> b!3110653 (= res!1273528 (not call!220221))))

(declare-fun b!3110654 () Bool)

(declare-fun e!1943178 () Bool)

(declare-fun lt!1057386 () Bool)

(assert (=> b!3110654 (= e!1943178 (not lt!1057386))))

(declare-fun b!3110655 () Bool)

(declare-fun e!1943177 () Bool)

(assert (=> b!3110655 (= e!1943177 (matchR!4473 (derivativeStep!2827 lt!1057319 (head!6886 s!11993)) (tail!5112 s!11993)))))

(declare-fun b!3110656 () Bool)

(assert (=> b!3110656 (= e!1943177 (nullable!3233 lt!1057319))))

(declare-fun b!3110658 () Bool)

(declare-fun e!1943174 () Bool)

(assert (=> b!3110658 (= e!1943174 e!1943178)))

(declare-fun c!520629 () Bool)

(assert (=> b!3110658 (= c!520629 ((_ is EmptyLang!9591) lt!1057319))))

(declare-fun b!3110659 () Bool)

(assert (=> b!3110659 (= e!1943174 (= lt!1057386 call!220221))))

(declare-fun b!3110660 () Bool)

(declare-fun e!1943180 () Bool)

(assert (=> b!3110660 (= e!1943180 (not (= (head!6886 s!11993) (c!520499 lt!1057319))))))

(declare-fun b!3110661 () Bool)

(declare-fun e!1943176 () Bool)

(declare-fun e!1943175 () Bool)

(assert (=> b!3110661 (= e!1943176 e!1943175)))

(declare-fun res!1273531 () Bool)

(assert (=> b!3110661 (=> (not res!1273531) (not e!1943175))))

(assert (=> b!3110661 (= res!1273531 (not lt!1057386))))

(declare-fun bm!220216 () Bool)

(assert (=> bm!220216 (= call!220221 (isEmpty!19678 s!11993))))

(declare-fun b!3110662 () Bool)

(assert (=> b!3110662 (= e!1943179 (= (head!6886 s!11993) (c!520499 lt!1057319)))))

(declare-fun b!3110657 () Bool)

(declare-fun res!1273532 () Bool)

(assert (=> b!3110657 (=> res!1273532 e!1943176)))

(assert (=> b!3110657 (= res!1273532 e!1943179)))

(declare-fun res!1273533 () Bool)

(assert (=> b!3110657 (=> (not res!1273533) (not e!1943179))))

(assert (=> b!3110657 (= res!1273533 lt!1057386)))

(declare-fun d!861745 () Bool)

(assert (=> d!861745 e!1943174))

(declare-fun c!520631 () Bool)

(assert (=> d!861745 (= c!520631 ((_ is EmptyExpr!9591) lt!1057319))))

(assert (=> d!861745 (= lt!1057386 e!1943177)))

(declare-fun c!520630 () Bool)

(assert (=> d!861745 (= c!520630 (isEmpty!19678 s!11993))))

(assert (=> d!861745 (validRegex!4324 lt!1057319)))

(assert (=> d!861745 (= (matchR!4473 lt!1057319 s!11993) lt!1057386)))

(declare-fun b!3110663 () Bool)

(declare-fun res!1273529 () Bool)

(assert (=> b!3110663 (=> res!1273529 e!1943176)))

(assert (=> b!3110663 (= res!1273529 (not ((_ is ElementMatch!9591) lt!1057319)))))

(assert (=> b!3110663 (= e!1943178 e!1943176)))

(declare-fun b!3110664 () Bool)

(declare-fun res!1273530 () Bool)

(assert (=> b!3110664 (=> res!1273530 e!1943180)))

(assert (=> b!3110664 (= res!1273530 (not (isEmpty!19678 (tail!5112 s!11993))))))

(declare-fun b!3110665 () Bool)

(assert (=> b!3110665 (= e!1943175 e!1943180)))

(declare-fun res!1273535 () Bool)

(assert (=> b!3110665 (=> res!1273535 e!1943180)))

(assert (=> b!3110665 (= res!1273535 call!220221)))

(declare-fun b!3110666 () Bool)

(declare-fun res!1273534 () Bool)

(assert (=> b!3110666 (=> (not res!1273534) (not e!1943179))))

(assert (=> b!3110666 (= res!1273534 (isEmpty!19678 (tail!5112 s!11993)))))

(assert (= (and d!861745 c!520630) b!3110656))

(assert (= (and d!861745 (not c!520630)) b!3110655))

(assert (= (and d!861745 c!520631) b!3110659))

(assert (= (and d!861745 (not c!520631)) b!3110658))

(assert (= (and b!3110658 c!520629) b!3110654))

(assert (= (and b!3110658 (not c!520629)) b!3110663))

(assert (= (and b!3110663 (not res!1273529)) b!3110657))

(assert (= (and b!3110657 res!1273533) b!3110653))

(assert (= (and b!3110653 res!1273528) b!3110666))

(assert (= (and b!3110666 res!1273534) b!3110662))

(assert (= (and b!3110657 (not res!1273532)) b!3110661))

(assert (= (and b!3110661 res!1273531) b!3110665))

(assert (= (and b!3110665 (not res!1273535)) b!3110664))

(assert (= (and b!3110664 (not res!1273530)) b!3110660))

(assert (= (or b!3110659 b!3110653 b!3110665) bm!220216))

(assert (=> b!3110666 m!3404445))

(assert (=> b!3110666 m!3404445))

(assert (=> b!3110666 m!3404447))

(assert (=> b!3110660 m!3404449))

(assert (=> bm!220216 m!3404451))

(declare-fun m!3404601 () Bool)

(assert (=> b!3110656 m!3404601))

(assert (=> d!861745 m!3404451))

(assert (=> d!861745 m!3404471))

(assert (=> b!3110664 m!3404445))

(assert (=> b!3110664 m!3404445))

(assert (=> b!3110664 m!3404447))

(assert (=> b!3110662 m!3404449))

(assert (=> b!3110655 m!3404449))

(assert (=> b!3110655 m!3404449))

(declare-fun m!3404603 () Bool)

(assert (=> b!3110655 m!3404603))

(assert (=> b!3110655 m!3404445))

(assert (=> b!3110655 m!3404603))

(assert (=> b!3110655 m!3404445))

(declare-fun m!3404605 () Bool)

(assert (=> b!3110655 m!3404605))

(assert (=> b!3110240 d!861745))

(declare-fun b!3110812 () Bool)

(assert (=> b!3110812 true))

(assert (=> b!3110812 true))

(declare-fun bs!535786 () Bool)

(declare-fun b!3110806 () Bool)

(assert (= bs!535786 (and b!3110806 b!3110812)))

(declare-fun lambda!115048 () Int)

(declare-fun lambda!115047 () Int)

(assert (=> bs!535786 (not (= lambda!115048 lambda!115047))))

(assert (=> b!3110806 true))

(assert (=> b!3110806 true))

(declare-fun b!3110804 () Bool)

(declare-fun e!1943249 () Bool)

(assert (=> b!3110804 (= e!1943249 (matchRSpec!1728 (regTwo!19695 r!17423) s!11993))))

(declare-fun b!3110805 () Bool)

(declare-fun c!520659 () Bool)

(assert (=> b!3110805 (= c!520659 ((_ is Union!9591) r!17423))))

(declare-fun e!1943253 () Bool)

(declare-fun e!1943254 () Bool)

(assert (=> b!3110805 (= e!1943253 e!1943254)))

(declare-fun e!1943248 () Bool)

(declare-fun call!220236 () Bool)

(assert (=> b!3110806 (= e!1943248 call!220236)))

(declare-fun b!3110807 () Bool)

(assert (=> b!3110807 (= e!1943254 e!1943249)))

(declare-fun res!1273585 () Bool)

(assert (=> b!3110807 (= res!1273585 (matchRSpec!1728 (regOne!19695 r!17423) s!11993))))

(assert (=> b!3110807 (=> res!1273585 e!1943249)))

(declare-fun d!861747 () Bool)

(declare-fun c!520658 () Bool)

(assert (=> d!861747 (= c!520658 ((_ is EmptyExpr!9591) r!17423))))

(declare-fun e!1943252 () Bool)

(assert (=> d!861747 (= (matchRSpec!1728 r!17423 s!11993) e!1943252)))

(declare-fun b!3110808 () Bool)

(declare-fun call!220237 () Bool)

(assert (=> b!3110808 (= e!1943252 call!220237)))

(declare-fun b!3110809 () Bool)

(declare-fun res!1273584 () Bool)

(declare-fun e!1943250 () Bool)

(assert (=> b!3110809 (=> res!1273584 e!1943250)))

(assert (=> b!3110809 (= res!1273584 call!220237)))

(assert (=> b!3110809 (= e!1943248 e!1943250)))

(declare-fun b!3110810 () Bool)

(declare-fun c!520657 () Bool)

(assert (=> b!3110810 (= c!520657 ((_ is ElementMatch!9591) r!17423))))

(declare-fun e!1943251 () Bool)

(assert (=> b!3110810 (= e!1943251 e!1943253)))

(declare-fun b!3110811 () Bool)

(assert (=> b!3110811 (= e!1943252 e!1943251)))

(declare-fun res!1273586 () Bool)

(assert (=> b!3110811 (= res!1273586 (not ((_ is EmptyLang!9591) r!17423)))))

(assert (=> b!3110811 (=> (not res!1273586) (not e!1943251))))

(declare-fun bm!220231 () Bool)

(assert (=> bm!220231 (= call!220237 (isEmpty!19678 s!11993))))

(assert (=> b!3110812 (= e!1943250 call!220236)))

(declare-fun b!3110813 () Bool)

(assert (=> b!3110813 (= e!1943253 (= s!11993 (Cons!35332 (c!520499 r!17423) Nil!35332)))))

(declare-fun b!3110814 () Bool)

(assert (=> b!3110814 (= e!1943254 e!1943248)))

(declare-fun c!520660 () Bool)

(assert (=> b!3110814 (= c!520660 ((_ is Star!9591) r!17423))))

(declare-fun bm!220232 () Bool)

(declare-fun Exists!1849 (Int) Bool)

(assert (=> bm!220232 (= call!220236 (Exists!1849 (ite c!520660 lambda!115047 lambda!115048)))))

(assert (= (and d!861747 c!520658) b!3110808))

(assert (= (and d!861747 (not c!520658)) b!3110811))

(assert (= (and b!3110811 res!1273586) b!3110810))

(assert (= (and b!3110810 c!520657) b!3110813))

(assert (= (and b!3110810 (not c!520657)) b!3110805))

(assert (= (and b!3110805 c!520659) b!3110807))

(assert (= (and b!3110805 (not c!520659)) b!3110814))

(assert (= (and b!3110807 (not res!1273585)) b!3110804))

(assert (= (and b!3110814 c!520660) b!3110809))

(assert (= (and b!3110814 (not c!520660)) b!3110806))

(assert (= (and b!3110809 (not res!1273584)) b!3110812))

(assert (= (or b!3110812 b!3110806) bm!220232))

(assert (= (or b!3110808 b!3110809) bm!220231))

(declare-fun m!3404627 () Bool)

(assert (=> b!3110804 m!3404627))

(declare-fun m!3404629 () Bool)

(assert (=> b!3110807 m!3404629))

(assert (=> bm!220231 m!3404451))

(declare-fun m!3404631 () Bool)

(assert (=> bm!220232 m!3404631))

(assert (=> b!3110241 d!861747))

(declare-fun b!3110819 () Bool)

(declare-fun res!1273587 () Bool)

(declare-fun e!1943260 () Bool)

(assert (=> b!3110819 (=> (not res!1273587) (not e!1943260))))

(declare-fun call!220238 () Bool)

(assert (=> b!3110819 (= res!1273587 (not call!220238))))

(declare-fun b!3110820 () Bool)

(declare-fun e!1943259 () Bool)

(declare-fun lt!1057391 () Bool)

(assert (=> b!3110820 (= e!1943259 (not lt!1057391))))

(declare-fun b!3110821 () Bool)

(declare-fun e!1943258 () Bool)

(assert (=> b!3110821 (= e!1943258 (matchR!4473 (derivativeStep!2827 r!17423 (head!6886 s!11993)) (tail!5112 s!11993)))))

(declare-fun b!3110822 () Bool)

(assert (=> b!3110822 (= e!1943258 (nullable!3233 r!17423))))

(declare-fun b!3110824 () Bool)

(declare-fun e!1943255 () Bool)

(assert (=> b!3110824 (= e!1943255 e!1943259)))

(declare-fun c!520661 () Bool)

(assert (=> b!3110824 (= c!520661 ((_ is EmptyLang!9591) r!17423))))

(declare-fun b!3110825 () Bool)

(assert (=> b!3110825 (= e!1943255 (= lt!1057391 call!220238))))

(declare-fun b!3110826 () Bool)

(declare-fun e!1943261 () Bool)

(assert (=> b!3110826 (= e!1943261 (not (= (head!6886 s!11993) (c!520499 r!17423))))))

(declare-fun b!3110827 () Bool)

(declare-fun e!1943257 () Bool)

(declare-fun e!1943256 () Bool)

(assert (=> b!3110827 (= e!1943257 e!1943256)))

(declare-fun res!1273590 () Bool)

(assert (=> b!3110827 (=> (not res!1273590) (not e!1943256))))

(assert (=> b!3110827 (= res!1273590 (not lt!1057391))))

(declare-fun bm!220233 () Bool)

(assert (=> bm!220233 (= call!220238 (isEmpty!19678 s!11993))))

(declare-fun b!3110828 () Bool)

(assert (=> b!3110828 (= e!1943260 (= (head!6886 s!11993) (c!520499 r!17423)))))

(declare-fun b!3110823 () Bool)

(declare-fun res!1273591 () Bool)

(assert (=> b!3110823 (=> res!1273591 e!1943257)))

(assert (=> b!3110823 (= res!1273591 e!1943260)))

(declare-fun res!1273592 () Bool)

(assert (=> b!3110823 (=> (not res!1273592) (not e!1943260))))

(assert (=> b!3110823 (= res!1273592 lt!1057391)))

(declare-fun d!861755 () Bool)

(assert (=> d!861755 e!1943255))

(declare-fun c!520663 () Bool)

(assert (=> d!861755 (= c!520663 ((_ is EmptyExpr!9591) r!17423))))

(assert (=> d!861755 (= lt!1057391 e!1943258)))

(declare-fun c!520662 () Bool)

(assert (=> d!861755 (= c!520662 (isEmpty!19678 s!11993))))

(assert (=> d!861755 (validRegex!4324 r!17423)))

(assert (=> d!861755 (= (matchR!4473 r!17423 s!11993) lt!1057391)))

(declare-fun b!3110829 () Bool)

(declare-fun res!1273588 () Bool)

(assert (=> b!3110829 (=> res!1273588 e!1943257)))

(assert (=> b!3110829 (= res!1273588 (not ((_ is ElementMatch!9591) r!17423)))))

(assert (=> b!3110829 (= e!1943259 e!1943257)))

(declare-fun b!3110830 () Bool)

(declare-fun res!1273589 () Bool)

(assert (=> b!3110830 (=> res!1273589 e!1943261)))

(assert (=> b!3110830 (= res!1273589 (not (isEmpty!19678 (tail!5112 s!11993))))))

(declare-fun b!3110831 () Bool)

(assert (=> b!3110831 (= e!1943256 e!1943261)))

(declare-fun res!1273594 () Bool)

(assert (=> b!3110831 (=> res!1273594 e!1943261)))

(assert (=> b!3110831 (= res!1273594 call!220238)))

(declare-fun b!3110832 () Bool)

(declare-fun res!1273593 () Bool)

(assert (=> b!3110832 (=> (not res!1273593) (not e!1943260))))

(assert (=> b!3110832 (= res!1273593 (isEmpty!19678 (tail!5112 s!11993)))))

(assert (= (and d!861755 c!520662) b!3110822))

(assert (= (and d!861755 (not c!520662)) b!3110821))

(assert (= (and d!861755 c!520663) b!3110825))

(assert (= (and d!861755 (not c!520663)) b!3110824))

(assert (= (and b!3110824 c!520661) b!3110820))

(assert (= (and b!3110824 (not c!520661)) b!3110829))

(assert (= (and b!3110829 (not res!1273588)) b!3110823))

(assert (= (and b!3110823 res!1273592) b!3110819))

(assert (= (and b!3110819 res!1273587) b!3110832))

(assert (= (and b!3110832 res!1273593) b!3110828))

(assert (= (and b!3110823 (not res!1273591)) b!3110827))

(assert (= (and b!3110827 res!1273590) b!3110831))

(assert (= (and b!3110831 (not res!1273594)) b!3110830))

(assert (= (and b!3110830 (not res!1273589)) b!3110826))

(assert (= (or b!3110825 b!3110819 b!3110831) bm!220233))

(assert (=> b!3110832 m!3404445))

(assert (=> b!3110832 m!3404445))

(assert (=> b!3110832 m!3404447))

(assert (=> b!3110826 m!3404449))

(assert (=> bm!220233 m!3404451))

(declare-fun m!3404633 () Bool)

(assert (=> b!3110822 m!3404633))

(assert (=> d!861755 m!3404451))

(assert (=> d!861755 m!3404425))

(assert (=> b!3110830 m!3404445))

(assert (=> b!3110830 m!3404445))

(assert (=> b!3110830 m!3404447))

(assert (=> b!3110828 m!3404449))

(assert (=> b!3110821 m!3404449))

(assert (=> b!3110821 m!3404449))

(declare-fun m!3404635 () Bool)

(assert (=> b!3110821 m!3404635))

(assert (=> b!3110821 m!3404445))

(assert (=> b!3110821 m!3404635))

(assert (=> b!3110821 m!3404445))

(declare-fun m!3404637 () Bool)

(assert (=> b!3110821 m!3404637))

(assert (=> b!3110241 d!861755))

(declare-fun d!861757 () Bool)

(assert (=> d!861757 (= (matchR!4473 r!17423 s!11993) (matchRSpec!1728 r!17423 s!11993))))

(declare-fun lt!1057394 () Unit!49621)

(declare-fun choose!18398 (Regex!9591 List!35456) Unit!49621)

(assert (=> d!861757 (= lt!1057394 (choose!18398 r!17423 s!11993))))

(assert (=> d!861757 (validRegex!4324 r!17423)))

(assert (=> d!861757 (= (mainMatchTheorem!1728 r!17423 s!11993) lt!1057394)))

(declare-fun bs!535787 () Bool)

(assert (= bs!535787 d!861757))

(assert (=> bs!535787 m!3404421))

(assert (=> bs!535787 m!3404419))

(declare-fun m!3404639 () Bool)

(assert (=> bs!535787 m!3404639))

(assert (=> bs!535787 m!3404425))

(assert (=> b!3110241 d!861757))

(declare-fun b!3110843 () Bool)

(declare-fun e!1943264 () Bool)

(assert (=> b!3110843 (= e!1943264 tp_is_empty!16745)))

(assert (=> b!3110245 (= tp!976260 e!1943264)))

(declare-fun b!3110845 () Bool)

(declare-fun tp!976313 () Bool)

(assert (=> b!3110845 (= e!1943264 tp!976313)))

(declare-fun b!3110846 () Bool)

(declare-fun tp!976311 () Bool)

(declare-fun tp!976310 () Bool)

(assert (=> b!3110846 (= e!1943264 (and tp!976311 tp!976310))))

(declare-fun b!3110844 () Bool)

(declare-fun tp!976312 () Bool)

(declare-fun tp!976314 () Bool)

(assert (=> b!3110844 (= e!1943264 (and tp!976312 tp!976314))))

(assert (= (and b!3110245 ((_ is ElementMatch!9591) (regOne!19695 r!17423))) b!3110843))

(assert (= (and b!3110245 ((_ is Concat!14912) (regOne!19695 r!17423))) b!3110844))

(assert (= (and b!3110245 ((_ is Star!9591) (regOne!19695 r!17423))) b!3110845))

(assert (= (and b!3110245 ((_ is Union!9591) (regOne!19695 r!17423))) b!3110846))

(declare-fun b!3110847 () Bool)

(declare-fun e!1943265 () Bool)

(assert (=> b!3110847 (= e!1943265 tp_is_empty!16745)))

(assert (=> b!3110245 (= tp!976256 e!1943265)))

(declare-fun b!3110849 () Bool)

(declare-fun tp!976318 () Bool)

(assert (=> b!3110849 (= e!1943265 tp!976318)))

(declare-fun b!3110850 () Bool)

(declare-fun tp!976316 () Bool)

(declare-fun tp!976315 () Bool)

(assert (=> b!3110850 (= e!1943265 (and tp!976316 tp!976315))))

(declare-fun b!3110848 () Bool)

(declare-fun tp!976317 () Bool)

(declare-fun tp!976319 () Bool)

(assert (=> b!3110848 (= e!1943265 (and tp!976317 tp!976319))))

(assert (= (and b!3110245 ((_ is ElementMatch!9591) (regTwo!19695 r!17423))) b!3110847))

(assert (= (and b!3110245 ((_ is Concat!14912) (regTwo!19695 r!17423))) b!3110848))

(assert (= (and b!3110245 ((_ is Star!9591) (regTwo!19695 r!17423))) b!3110849))

(assert (= (and b!3110245 ((_ is Union!9591) (regTwo!19695 r!17423))) b!3110850))

(declare-fun b!3110851 () Bool)

(declare-fun e!1943266 () Bool)

(assert (=> b!3110851 (= e!1943266 tp_is_empty!16745)))

(assert (=> b!3110243 (= tp!976261 e!1943266)))

(declare-fun b!3110853 () Bool)

(declare-fun tp!976323 () Bool)

(assert (=> b!3110853 (= e!1943266 tp!976323)))

(declare-fun b!3110854 () Bool)

(declare-fun tp!976321 () Bool)

(declare-fun tp!976320 () Bool)

(assert (=> b!3110854 (= e!1943266 (and tp!976321 tp!976320))))

(declare-fun b!3110852 () Bool)

(declare-fun tp!976322 () Bool)

(declare-fun tp!976324 () Bool)

(assert (=> b!3110852 (= e!1943266 (and tp!976322 tp!976324))))

(assert (= (and b!3110243 ((_ is ElementMatch!9591) (regOne!19694 r!17423))) b!3110851))

(assert (= (and b!3110243 ((_ is Concat!14912) (regOne!19694 r!17423))) b!3110852))

(assert (= (and b!3110243 ((_ is Star!9591) (regOne!19694 r!17423))) b!3110853))

(assert (= (and b!3110243 ((_ is Union!9591) (regOne!19694 r!17423))) b!3110854))

(declare-fun b!3110855 () Bool)

(declare-fun e!1943267 () Bool)

(assert (=> b!3110855 (= e!1943267 tp_is_empty!16745)))

(assert (=> b!3110243 (= tp!976259 e!1943267)))

(declare-fun b!3110857 () Bool)

(declare-fun tp!976328 () Bool)

(assert (=> b!3110857 (= e!1943267 tp!976328)))

(declare-fun b!3110858 () Bool)

(declare-fun tp!976326 () Bool)

(declare-fun tp!976325 () Bool)

(assert (=> b!3110858 (= e!1943267 (and tp!976326 tp!976325))))

(declare-fun b!3110856 () Bool)

(declare-fun tp!976327 () Bool)

(declare-fun tp!976329 () Bool)

(assert (=> b!3110856 (= e!1943267 (and tp!976327 tp!976329))))

(assert (= (and b!3110243 ((_ is ElementMatch!9591) (regTwo!19694 r!17423))) b!3110855))

(assert (= (and b!3110243 ((_ is Concat!14912) (regTwo!19694 r!17423))) b!3110856))

(assert (= (and b!3110243 ((_ is Star!9591) (regTwo!19694 r!17423))) b!3110857))

(assert (= (and b!3110243 ((_ is Union!9591) (regTwo!19694 r!17423))) b!3110858))

(declare-fun b!3110859 () Bool)

(declare-fun e!1943268 () Bool)

(assert (=> b!3110859 (= e!1943268 tp_is_empty!16745)))

(assert (=> b!3110247 (= tp!976258 e!1943268)))

(declare-fun b!3110861 () Bool)

(declare-fun tp!976333 () Bool)

(assert (=> b!3110861 (= e!1943268 tp!976333)))

(declare-fun b!3110862 () Bool)

(declare-fun tp!976331 () Bool)

(declare-fun tp!976330 () Bool)

(assert (=> b!3110862 (= e!1943268 (and tp!976331 tp!976330))))

(declare-fun b!3110860 () Bool)

(declare-fun tp!976332 () Bool)

(declare-fun tp!976334 () Bool)

(assert (=> b!3110860 (= e!1943268 (and tp!976332 tp!976334))))

(assert (= (and b!3110247 ((_ is ElementMatch!9591) (reg!9920 r!17423))) b!3110859))

(assert (= (and b!3110247 ((_ is Concat!14912) (reg!9920 r!17423))) b!3110860))

(assert (= (and b!3110247 ((_ is Star!9591) (reg!9920 r!17423))) b!3110861))

(assert (= (and b!3110247 ((_ is Union!9591) (reg!9920 r!17423))) b!3110862))

(declare-fun b!3110867 () Bool)

(declare-fun e!1943271 () Bool)

(declare-fun tp!976337 () Bool)

(assert (=> b!3110867 (= e!1943271 (and tp_is_empty!16745 tp!976337))))

(assert (=> b!3110246 (= tp!976257 e!1943271)))

(assert (= (and b!3110246 ((_ is Cons!35332) (t!234521 s!11993))) b!3110867))

(check-sat (not b!3110293) (not b!3110664) (not b!3110850) (not b!3110822) (not b!3110867) (not b!3110360) tp_is_empty!16745 (not b!3110845) (not b!3110287) (not b!3110283) (not b!3110297) (not bm!220231) (not bm!220233) (not b!3110826) (not b!3110844) (not b!3110854) (not b!3110558) (not bm!220182) (not bm!220184) (not b!3110832) (not bm!220232) (not b!3110291) (not b!3110519) (not b!3110849) (not b!3110662) (not b!3110307) (not bm!220193) (not b!3110853) (not bm!220195) (not b!3110848) (not bm!220215) (not b!3110856) (not b!3110289) (not d!861721) (not d!861707) (not b!3110821) (not bm!220212) (not bm!220132) (not bm!220190) (not d!861745) (not b!3110648) (not d!861731) (not b!3110296) (not d!861755) (not b!3110860) (not bm!220196) (not b!3110562) (not b!3110858) (not b!3110301) (not b!3110846) (not b!3110639) (not bm!220185) (not d!861713) (not b!3110656) (not bm!220216) (not b!3110804) (not b!3110828) (not b!3110660) (not b!3110862) (not bm!220194) (not bm!220179) (not bm!220133) (not b!3110666) (not b!3110830) (not b!3110807) (not b!3110861) (not b!3110361) (not b!3110303) (not bm!220211) (not b!3110282) (not b!3110857) (not b!3110852) (not b!3110305) (not bm!220183) (not b!3110655) (not d!861757) (not d!861715) (not b!3110515) (not bm!220214))
(check-sat)
