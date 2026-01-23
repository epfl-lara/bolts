; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91094 () Bool)

(assert start!91094)

(declare-fun b!1059162 () Bool)

(declare-fun e!672293 () Bool)

(declare-fun tp!318452 () Bool)

(declare-fun tp!318449 () Bool)

(assert (=> b!1059162 (= e!672293 (and tp!318452 tp!318449))))

(declare-fun b!1059163 () Bool)

(declare-fun e!672287 () Bool)

(declare-datatypes ((C!6396 0))(
  ( (C!6397 (val!3446 Int)) )
))
(declare-datatypes ((Regex!2913 0))(
  ( (ElementMatch!2913 (c!177394 C!6396)) (Concat!4746 (regOne!6338 Regex!2913) (regTwo!6338 Regex!2913)) (EmptyExpr!2913) (Star!2913 (reg!3242 Regex!2913)) (EmptyLang!2913) (Union!2913 (regOne!6339 Regex!2913) (regTwo!6339 Regex!2913)) )
))
(declare-fun lt!359509 () Regex!2913)

(declare-datatypes ((List!10143 0))(
  ( (Nil!10127) (Cons!10127 (h!15528 C!6396) (t!101189 List!10143)) )
))
(declare-fun s!10566 () List!10143)

(declare-fun matchR!1449 (Regex!2913 List!10143) Bool)

(assert (=> b!1059163 (= e!672287 (matchR!1449 lt!359509 s!10566))))

(declare-fun b!1059164 () Bool)

(declare-fun tp_is_empty!5469 () Bool)

(assert (=> b!1059164 (= e!672293 tp_is_empty!5469)))

(declare-fun b!1059165 () Bool)

(declare-fun e!672289 () Bool)

(declare-fun e!672292 () Bool)

(assert (=> b!1059165 (= e!672289 e!672292)))

(declare-fun res!473431 () Bool)

(assert (=> b!1059165 (=> res!473431 e!672292)))

(declare-fun lt!359510 () Bool)

(assert (=> b!1059165 (= res!473431 lt!359510)))

(assert (=> b!1059165 e!672287))

(declare-fun res!473430 () Bool)

(assert (=> b!1059165 (=> res!473430 e!672287)))

(assert (=> b!1059165 (= res!473430 lt!359510)))

(declare-fun lt!359512 () Regex!2913)

(assert (=> b!1059165 (= lt!359510 (matchR!1449 lt!359512 s!10566))))

(declare-datatypes ((Unit!15501 0))(
  ( (Unit!15502) )
))
(declare-fun lt!359513 () Unit!15501)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!92 (Regex!2913 Regex!2913 List!10143) Unit!15501)

(assert (=> b!1059165 (= lt!359513 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!92 lt!359512 lt!359509 s!10566))))

(declare-fun lt!359511 () Regex!2913)

(declare-fun matchRSpec!712 (Regex!2913 List!10143) Bool)

(assert (=> b!1059165 (matchRSpec!712 lt!359511 s!10566)))

(declare-fun lt!359506 () Unit!15501)

(declare-fun mainMatchTheorem!712 (Regex!2913 List!10143) Unit!15501)

(assert (=> b!1059165 (= lt!359506 (mainMatchTheorem!712 lt!359511 s!10566))))

(declare-fun b!1059166 () Bool)

(declare-fun e!672291 () Bool)

(assert (=> b!1059166 (= e!672291 e!672289)))

(declare-fun res!473428 () Bool)

(assert (=> b!1059166 (=> res!473428 e!672289)))

(assert (=> b!1059166 (= res!473428 (not (matchR!1449 lt!359511 s!10566)))))

(assert (=> b!1059166 (= lt!359511 (Union!2913 lt!359512 lt!359509))))

(declare-fun r!15766 () Regex!2913)

(declare-fun removeUselessConcat!462 (Regex!2913) Regex!2913)

(assert (=> b!1059166 (= lt!359509 (removeUselessConcat!462 (regTwo!6339 r!15766)))))

(assert (=> b!1059166 (= lt!359512 (removeUselessConcat!462 (regOne!6339 r!15766)))))

(declare-fun b!1059168 () Bool)

(declare-fun tp!318447 () Bool)

(declare-fun tp!318450 () Bool)

(assert (=> b!1059168 (= e!672293 (and tp!318447 tp!318450))))

(declare-fun b!1059169 () Bool)

(declare-fun e!672288 () Bool)

(declare-fun tp!318448 () Bool)

(assert (=> b!1059169 (= e!672288 (and tp_is_empty!5469 tp!318448))))

(declare-fun b!1059170 () Bool)

(declare-fun e!672290 () Bool)

(assert (=> b!1059170 (= e!672290 (not e!672291))))

(declare-fun res!473432 () Bool)

(assert (=> b!1059170 (=> res!473432 e!672291)))

(declare-fun lt!359508 () Bool)

(get-info :version)

(assert (=> b!1059170 (= res!473432 (or lt!359508 (and ((_ is Concat!4746) r!15766) ((_ is EmptyExpr!2913) (regOne!6338 r!15766))) (and ((_ is Concat!4746) r!15766) ((_ is EmptyExpr!2913) (regTwo!6338 r!15766))) ((_ is Concat!4746) r!15766) (not ((_ is Union!2913) r!15766))))))

(assert (=> b!1059170 (= lt!359508 (matchRSpec!712 r!15766 s!10566))))

(assert (=> b!1059170 (= lt!359508 (matchR!1449 r!15766 s!10566))))

(declare-fun lt!359507 () Unit!15501)

(assert (=> b!1059170 (= lt!359507 (mainMatchTheorem!712 r!15766 s!10566))))

(declare-fun b!1059171 () Bool)

(declare-fun tp!318451 () Bool)

(assert (=> b!1059171 (= e!672293 tp!318451)))

(declare-fun b!1059167 () Bool)

(declare-fun validRegex!1382 (Regex!2913) Bool)

(assert (=> b!1059167 (= e!672292 (validRegex!1382 (regTwo!6339 r!15766)))))

(declare-fun res!473429 () Bool)

(assert (=> start!91094 (=> (not res!473429) (not e!672290))))

(assert (=> start!91094 (= res!473429 (validRegex!1382 r!15766))))

(assert (=> start!91094 e!672290))

(assert (=> start!91094 e!672293))

(assert (=> start!91094 e!672288))

(assert (= (and start!91094 res!473429) b!1059170))

(assert (= (and b!1059170 (not res!473432)) b!1059166))

(assert (= (and b!1059166 (not res!473428)) b!1059165))

(assert (= (and b!1059165 (not res!473430)) b!1059163))

(assert (= (and b!1059165 (not res!473431)) b!1059167))

(assert (= (and start!91094 ((_ is ElementMatch!2913) r!15766)) b!1059164))

(assert (= (and start!91094 ((_ is Concat!4746) r!15766)) b!1059162))

(assert (= (and start!91094 ((_ is Star!2913) r!15766)) b!1059171))

(assert (= (and start!91094 ((_ is Union!2913) r!15766)) b!1059168))

(assert (= (and start!91094 ((_ is Cons!10127) s!10566)) b!1059169))

(declare-fun m!1220287 () Bool)

(assert (=> b!1059165 m!1220287))

(declare-fun m!1220289 () Bool)

(assert (=> b!1059165 m!1220289))

(declare-fun m!1220291 () Bool)

(assert (=> b!1059165 m!1220291))

(declare-fun m!1220293 () Bool)

(assert (=> b!1059165 m!1220293))

(declare-fun m!1220295 () Bool)

(assert (=> b!1059170 m!1220295))

(declare-fun m!1220297 () Bool)

(assert (=> b!1059170 m!1220297))

(declare-fun m!1220299 () Bool)

(assert (=> b!1059170 m!1220299))

(declare-fun m!1220301 () Bool)

(assert (=> b!1059163 m!1220301))

(declare-fun m!1220303 () Bool)

(assert (=> start!91094 m!1220303))

(declare-fun m!1220305 () Bool)

(assert (=> b!1059167 m!1220305))

(declare-fun m!1220307 () Bool)

(assert (=> b!1059166 m!1220307))

(declare-fun m!1220309 () Bool)

(assert (=> b!1059166 m!1220309))

(declare-fun m!1220311 () Bool)

(assert (=> b!1059166 m!1220311))

(check-sat (not b!1059163) (not b!1059162) (not b!1059165) (not b!1059168) (not start!91094) (not b!1059171) (not b!1059170) (not b!1059166) tp_is_empty!5469 (not b!1059167) (not b!1059169))
(check-sat)
(get-model)

(declare-fun b!1059379 () Bool)

(assert (=> b!1059379 true))

(assert (=> b!1059379 true))

(declare-fun bs!251784 () Bool)

(declare-fun b!1059375 () Bool)

(assert (= bs!251784 (and b!1059375 b!1059379)))

(declare-fun lambda!38296 () Int)

(declare-fun lambda!38295 () Int)

(assert (=> bs!251784 (not (= lambda!38296 lambda!38295))))

(assert (=> b!1059375 true))

(assert (=> b!1059375 true))

(declare-fun b!1059371 () Bool)

(declare-fun e!672417 () Bool)

(declare-fun e!672415 () Bool)

(assert (=> b!1059371 (= e!672417 e!672415)))

(declare-fun res!473530 () Bool)

(assert (=> b!1059371 (= res!473530 (not ((_ is EmptyLang!2913) r!15766)))))

(assert (=> b!1059371 (=> (not res!473530) (not e!672415))))

(declare-fun call!75978 () Bool)

(declare-fun c!177448 () Bool)

(declare-fun bm!75973 () Bool)

(declare-fun Exists!640 (Int) Bool)

(assert (=> bm!75973 (= call!75978 (Exists!640 (ite c!177448 lambda!38295 lambda!38296)))))

(declare-fun bm!75974 () Bool)

(declare-fun call!75979 () Bool)

(declare-fun isEmpty!6545 (List!10143) Bool)

(assert (=> bm!75974 (= call!75979 (isEmpty!6545 s!10566))))

(declare-fun b!1059372 () Bool)

(declare-fun e!672413 () Bool)

(assert (=> b!1059372 (= e!672413 (matchRSpec!712 (regTwo!6339 r!15766) s!10566))))

(declare-fun b!1059373 () Bool)

(declare-fun res!473528 () Bool)

(declare-fun e!672414 () Bool)

(assert (=> b!1059373 (=> res!473528 e!672414)))

(assert (=> b!1059373 (= res!473528 call!75979)))

(declare-fun e!672411 () Bool)

(assert (=> b!1059373 (= e!672411 e!672414)))

(declare-fun b!1059374 () Bool)

(declare-fun c!177446 () Bool)

(assert (=> b!1059374 (= c!177446 ((_ is ElementMatch!2913) r!15766))))

(declare-fun e!672412 () Bool)

(assert (=> b!1059374 (= e!672415 e!672412)))

(assert (=> b!1059375 (= e!672411 call!75978)))

(declare-fun d!300488 () Bool)

(declare-fun c!177445 () Bool)

(assert (=> d!300488 (= c!177445 ((_ is EmptyExpr!2913) r!15766))))

(assert (=> d!300488 (= (matchRSpec!712 r!15766 s!10566) e!672417)))

(declare-fun b!1059376 () Bool)

(declare-fun e!672416 () Bool)

(assert (=> b!1059376 (= e!672416 e!672411)))

(assert (=> b!1059376 (= c!177448 ((_ is Star!2913) r!15766))))

(declare-fun b!1059377 () Bool)

(declare-fun c!177447 () Bool)

(assert (=> b!1059377 (= c!177447 ((_ is Union!2913) r!15766))))

(assert (=> b!1059377 (= e!672412 e!672416)))

(declare-fun b!1059378 () Bool)

(assert (=> b!1059378 (= e!672412 (= s!10566 (Cons!10127 (c!177394 r!15766) Nil!10127)))))

(assert (=> b!1059379 (= e!672414 call!75978)))

(declare-fun b!1059380 () Bool)

(assert (=> b!1059380 (= e!672416 e!672413)))

(declare-fun res!473529 () Bool)

(assert (=> b!1059380 (= res!473529 (matchRSpec!712 (regOne!6339 r!15766) s!10566))))

(assert (=> b!1059380 (=> res!473529 e!672413)))

(declare-fun b!1059381 () Bool)

(assert (=> b!1059381 (= e!672417 call!75979)))

(assert (= (and d!300488 c!177445) b!1059381))

(assert (= (and d!300488 (not c!177445)) b!1059371))

(assert (= (and b!1059371 res!473530) b!1059374))

(assert (= (and b!1059374 c!177446) b!1059378))

(assert (= (and b!1059374 (not c!177446)) b!1059377))

(assert (= (and b!1059377 c!177447) b!1059380))

(assert (= (and b!1059377 (not c!177447)) b!1059376))

(assert (= (and b!1059380 (not res!473529)) b!1059372))

(assert (= (and b!1059376 c!177448) b!1059373))

(assert (= (and b!1059376 (not c!177448)) b!1059375))

(assert (= (and b!1059373 (not res!473528)) b!1059379))

(assert (= (or b!1059379 b!1059375) bm!75973))

(assert (= (or b!1059381 b!1059373) bm!75974))

(declare-fun m!1220369 () Bool)

(assert (=> bm!75973 m!1220369))

(declare-fun m!1220371 () Bool)

(assert (=> bm!75974 m!1220371))

(declare-fun m!1220375 () Bool)

(assert (=> b!1059372 m!1220375))

(declare-fun m!1220377 () Bool)

(assert (=> b!1059380 m!1220377))

(assert (=> b!1059170 d!300488))

(declare-fun b!1059510 () Bool)

(declare-fun e!672477 () Bool)

(declare-fun e!672475 () Bool)

(assert (=> b!1059510 (= e!672477 e!672475)))

(declare-fun c!177475 () Bool)

(assert (=> b!1059510 (= c!177475 ((_ is EmptyLang!2913) r!15766))))

(declare-fun b!1059511 () Bool)

(declare-fun e!672478 () Bool)

(declare-fun head!1960 (List!10143) C!6396)

(assert (=> b!1059511 (= e!672478 (not (= (head!1960 s!10566) (c!177394 r!15766))))))

(declare-fun b!1059512 () Bool)

(declare-fun res!473570 () Bool)

(assert (=> b!1059512 (=> res!473570 e!672478)))

(declare-fun tail!1522 (List!10143) List!10143)

(assert (=> b!1059512 (= res!473570 (not (isEmpty!6545 (tail!1522 s!10566))))))

(declare-fun b!1059513 () Bool)

(declare-fun e!672479 () Bool)

(declare-fun e!672476 () Bool)

(assert (=> b!1059513 (= e!672479 e!672476)))

(declare-fun res!473569 () Bool)

(assert (=> b!1059513 (=> (not res!473569) (not e!672476))))

(declare-fun lt!359533 () Bool)

(assert (=> b!1059513 (= res!473569 (not lt!359533))))

(declare-fun b!1059514 () Bool)

(declare-fun res!473573 () Bool)

(assert (=> b!1059514 (=> res!473573 e!672479)))

(declare-fun e!672481 () Bool)

(assert (=> b!1059514 (= res!473573 e!672481)))

(declare-fun res!473572 () Bool)

(assert (=> b!1059514 (=> (not res!473572) (not e!672481))))

(assert (=> b!1059514 (= res!473572 lt!359533)))

(declare-fun b!1059515 () Bool)

(declare-fun e!672480 () Bool)

(declare-fun nullable!1005 (Regex!2913) Bool)

(assert (=> b!1059515 (= e!672480 (nullable!1005 r!15766))))

(declare-fun b!1059516 () Bool)

(declare-fun res!473574 () Bool)

(assert (=> b!1059516 (=> (not res!473574) (not e!672481))))

(assert (=> b!1059516 (= res!473574 (isEmpty!6545 (tail!1522 s!10566)))))

(declare-fun b!1059517 () Bool)

(declare-fun derivativeStep!805 (Regex!2913 C!6396) Regex!2913)

(assert (=> b!1059517 (= e!672480 (matchR!1449 (derivativeStep!805 r!15766 (head!1960 s!10566)) (tail!1522 s!10566)))))

(declare-fun b!1059518 () Bool)

(assert (=> b!1059518 (= e!672476 e!672478)))

(declare-fun res!473568 () Bool)

(assert (=> b!1059518 (=> res!473568 e!672478)))

(declare-fun call!75996 () Bool)

(assert (=> b!1059518 (= res!473568 call!75996)))

(declare-fun b!1059519 () Bool)

(assert (=> b!1059519 (= e!672481 (= (head!1960 s!10566) (c!177394 r!15766)))))

(declare-fun b!1059521 () Bool)

(assert (=> b!1059521 (= e!672475 (not lt!359533))))

(declare-fun b!1059522 () Bool)

(declare-fun res!473575 () Bool)

(assert (=> b!1059522 (=> res!473575 e!672479)))

(assert (=> b!1059522 (= res!473575 (not ((_ is ElementMatch!2913) r!15766)))))

(assert (=> b!1059522 (= e!672475 e!672479)))

(declare-fun bm!75991 () Bool)

(assert (=> bm!75991 (= call!75996 (isEmpty!6545 s!10566))))

(declare-fun b!1059523 () Bool)

(declare-fun res!473571 () Bool)

(assert (=> b!1059523 (=> (not res!473571) (not e!672481))))

(assert (=> b!1059523 (= res!473571 (not call!75996))))

(declare-fun d!300508 () Bool)

(assert (=> d!300508 e!672477))

(declare-fun c!177476 () Bool)

(assert (=> d!300508 (= c!177476 ((_ is EmptyExpr!2913) r!15766))))

(assert (=> d!300508 (= lt!359533 e!672480)))

(declare-fun c!177477 () Bool)

(assert (=> d!300508 (= c!177477 (isEmpty!6545 s!10566))))

(assert (=> d!300508 (validRegex!1382 r!15766)))

(assert (=> d!300508 (= (matchR!1449 r!15766 s!10566) lt!359533)))

(declare-fun b!1059520 () Bool)

(assert (=> b!1059520 (= e!672477 (= lt!359533 call!75996))))

(assert (= (and d!300508 c!177477) b!1059515))

(assert (= (and d!300508 (not c!177477)) b!1059517))

(assert (= (and d!300508 c!177476) b!1059520))

(assert (= (and d!300508 (not c!177476)) b!1059510))

(assert (= (and b!1059510 c!177475) b!1059521))

(assert (= (and b!1059510 (not c!177475)) b!1059522))

(assert (= (and b!1059522 (not res!473575)) b!1059514))

(assert (= (and b!1059514 res!473572) b!1059523))

(assert (= (and b!1059523 res!473571) b!1059516))

(assert (= (and b!1059516 res!473574) b!1059519))

(assert (= (and b!1059514 (not res!473573)) b!1059513))

(assert (= (and b!1059513 res!473569) b!1059518))

(assert (= (and b!1059518 (not res!473568)) b!1059512))

(assert (= (and b!1059512 (not res!473570)) b!1059511))

(assert (= (or b!1059520 b!1059518 b!1059523) bm!75991))

(assert (=> bm!75991 m!1220371))

(assert (=> d!300508 m!1220371))

(assert (=> d!300508 m!1220303))

(declare-fun m!1220411 () Bool)

(assert (=> b!1059512 m!1220411))

(assert (=> b!1059512 m!1220411))

(declare-fun m!1220413 () Bool)

(assert (=> b!1059512 m!1220413))

(declare-fun m!1220415 () Bool)

(assert (=> b!1059519 m!1220415))

(assert (=> b!1059511 m!1220415))

(assert (=> b!1059516 m!1220411))

(assert (=> b!1059516 m!1220411))

(assert (=> b!1059516 m!1220413))

(declare-fun m!1220417 () Bool)

(assert (=> b!1059515 m!1220417))

(assert (=> b!1059517 m!1220415))

(assert (=> b!1059517 m!1220415))

(declare-fun m!1220419 () Bool)

(assert (=> b!1059517 m!1220419))

(assert (=> b!1059517 m!1220411))

(assert (=> b!1059517 m!1220419))

(assert (=> b!1059517 m!1220411))

(declare-fun m!1220421 () Bool)

(assert (=> b!1059517 m!1220421))

(assert (=> b!1059170 d!300508))

(declare-fun d!300518 () Bool)

(assert (=> d!300518 (= (matchR!1449 r!15766 s!10566) (matchRSpec!712 r!15766 s!10566))))

(declare-fun lt!359536 () Unit!15501)

(declare-fun choose!6746 (Regex!2913 List!10143) Unit!15501)

(assert (=> d!300518 (= lt!359536 (choose!6746 r!15766 s!10566))))

(assert (=> d!300518 (validRegex!1382 r!15766)))

(assert (=> d!300518 (= (mainMatchTheorem!712 r!15766 s!10566) lt!359536)))

(declare-fun bs!251791 () Bool)

(assert (= bs!251791 d!300518))

(assert (=> bs!251791 m!1220297))

(assert (=> bs!251791 m!1220295))

(declare-fun m!1220423 () Bool)

(assert (=> bs!251791 m!1220423))

(assert (=> bs!251791 m!1220303))

(assert (=> b!1059170 d!300518))

(declare-fun b!1059524 () Bool)

(declare-fun e!672484 () Bool)

(declare-fun e!672482 () Bool)

(assert (=> b!1059524 (= e!672484 e!672482)))

(declare-fun c!177478 () Bool)

(assert (=> b!1059524 (= c!177478 ((_ is EmptyLang!2913) lt!359512))))

(declare-fun b!1059525 () Bool)

(declare-fun e!672485 () Bool)

(assert (=> b!1059525 (= e!672485 (not (= (head!1960 s!10566) (c!177394 lt!359512))))))

(declare-fun b!1059526 () Bool)

(declare-fun res!473578 () Bool)

(assert (=> b!1059526 (=> res!473578 e!672485)))

(assert (=> b!1059526 (= res!473578 (not (isEmpty!6545 (tail!1522 s!10566))))))

(declare-fun b!1059527 () Bool)

(declare-fun e!672486 () Bool)

(declare-fun e!672483 () Bool)

(assert (=> b!1059527 (= e!672486 e!672483)))

(declare-fun res!473577 () Bool)

(assert (=> b!1059527 (=> (not res!473577) (not e!672483))))

(declare-fun lt!359537 () Bool)

(assert (=> b!1059527 (= res!473577 (not lt!359537))))

(declare-fun b!1059528 () Bool)

(declare-fun res!473581 () Bool)

(assert (=> b!1059528 (=> res!473581 e!672486)))

(declare-fun e!672488 () Bool)

(assert (=> b!1059528 (= res!473581 e!672488)))

(declare-fun res!473580 () Bool)

(assert (=> b!1059528 (=> (not res!473580) (not e!672488))))

(assert (=> b!1059528 (= res!473580 lt!359537)))

(declare-fun b!1059529 () Bool)

(declare-fun e!672487 () Bool)

(assert (=> b!1059529 (= e!672487 (nullable!1005 lt!359512))))

(declare-fun b!1059530 () Bool)

(declare-fun res!473582 () Bool)

(assert (=> b!1059530 (=> (not res!473582) (not e!672488))))

(assert (=> b!1059530 (= res!473582 (isEmpty!6545 (tail!1522 s!10566)))))

(declare-fun b!1059531 () Bool)

(assert (=> b!1059531 (= e!672487 (matchR!1449 (derivativeStep!805 lt!359512 (head!1960 s!10566)) (tail!1522 s!10566)))))

(declare-fun b!1059532 () Bool)

(assert (=> b!1059532 (= e!672483 e!672485)))

(declare-fun res!473576 () Bool)

(assert (=> b!1059532 (=> res!473576 e!672485)))

(declare-fun call!75997 () Bool)

(assert (=> b!1059532 (= res!473576 call!75997)))

(declare-fun b!1059533 () Bool)

(assert (=> b!1059533 (= e!672488 (= (head!1960 s!10566) (c!177394 lt!359512)))))

(declare-fun b!1059535 () Bool)

(assert (=> b!1059535 (= e!672482 (not lt!359537))))

(declare-fun b!1059536 () Bool)

(declare-fun res!473583 () Bool)

(assert (=> b!1059536 (=> res!473583 e!672486)))

(assert (=> b!1059536 (= res!473583 (not ((_ is ElementMatch!2913) lt!359512)))))

(assert (=> b!1059536 (= e!672482 e!672486)))

(declare-fun bm!75992 () Bool)

(assert (=> bm!75992 (= call!75997 (isEmpty!6545 s!10566))))

(declare-fun b!1059537 () Bool)

(declare-fun res!473579 () Bool)

(assert (=> b!1059537 (=> (not res!473579) (not e!672488))))

(assert (=> b!1059537 (= res!473579 (not call!75997))))

(declare-fun d!300520 () Bool)

(assert (=> d!300520 e!672484))

(declare-fun c!177479 () Bool)

(assert (=> d!300520 (= c!177479 ((_ is EmptyExpr!2913) lt!359512))))

(assert (=> d!300520 (= lt!359537 e!672487)))

(declare-fun c!177480 () Bool)

(assert (=> d!300520 (= c!177480 (isEmpty!6545 s!10566))))

(assert (=> d!300520 (validRegex!1382 lt!359512)))

(assert (=> d!300520 (= (matchR!1449 lt!359512 s!10566) lt!359537)))

(declare-fun b!1059534 () Bool)

(assert (=> b!1059534 (= e!672484 (= lt!359537 call!75997))))

(assert (= (and d!300520 c!177480) b!1059529))

(assert (= (and d!300520 (not c!177480)) b!1059531))

(assert (= (and d!300520 c!177479) b!1059534))

(assert (= (and d!300520 (not c!177479)) b!1059524))

(assert (= (and b!1059524 c!177478) b!1059535))

(assert (= (and b!1059524 (not c!177478)) b!1059536))

(assert (= (and b!1059536 (not res!473583)) b!1059528))

(assert (= (and b!1059528 res!473580) b!1059537))

(assert (= (and b!1059537 res!473579) b!1059530))

(assert (= (and b!1059530 res!473582) b!1059533))

(assert (= (and b!1059528 (not res!473581)) b!1059527))

(assert (= (and b!1059527 res!473577) b!1059532))

(assert (= (and b!1059532 (not res!473576)) b!1059526))

(assert (= (and b!1059526 (not res!473578)) b!1059525))

(assert (= (or b!1059534 b!1059532 b!1059537) bm!75992))

(assert (=> bm!75992 m!1220371))

(assert (=> d!300520 m!1220371))

(declare-fun m!1220425 () Bool)

(assert (=> d!300520 m!1220425))

(assert (=> b!1059526 m!1220411))

(assert (=> b!1059526 m!1220411))

(assert (=> b!1059526 m!1220413))

(assert (=> b!1059533 m!1220415))

(assert (=> b!1059525 m!1220415))

(assert (=> b!1059530 m!1220411))

(assert (=> b!1059530 m!1220411))

(assert (=> b!1059530 m!1220413))

(declare-fun m!1220427 () Bool)

(assert (=> b!1059529 m!1220427))

(assert (=> b!1059531 m!1220415))

(assert (=> b!1059531 m!1220415))

(declare-fun m!1220429 () Bool)

(assert (=> b!1059531 m!1220429))

(assert (=> b!1059531 m!1220411))

(assert (=> b!1059531 m!1220429))

(assert (=> b!1059531 m!1220411))

(declare-fun m!1220431 () Bool)

(assert (=> b!1059531 m!1220431))

(assert (=> b!1059165 d!300520))

(declare-fun d!300522 () Bool)

(declare-fun e!672494 () Bool)

(assert (=> d!300522 e!672494))

(declare-fun res!473588 () Bool)

(assert (=> d!300522 (=> res!473588 e!672494)))

(assert (=> d!300522 (= res!473588 (matchR!1449 lt!359512 s!10566))))

(declare-fun lt!359540 () Unit!15501)

(declare-fun choose!6747 (Regex!2913 Regex!2913 List!10143) Unit!15501)

(assert (=> d!300522 (= lt!359540 (choose!6747 lt!359512 lt!359509 s!10566))))

(declare-fun e!672493 () Bool)

(assert (=> d!300522 e!672493))

(declare-fun res!473589 () Bool)

(assert (=> d!300522 (=> (not res!473589) (not e!672493))))

(assert (=> d!300522 (= res!473589 (validRegex!1382 lt!359512))))

(assert (=> d!300522 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!92 lt!359512 lt!359509 s!10566) lt!359540)))

(declare-fun b!1059542 () Bool)

(assert (=> b!1059542 (= e!672493 (validRegex!1382 lt!359509))))

(declare-fun b!1059543 () Bool)

(assert (=> b!1059543 (= e!672494 (matchR!1449 lt!359509 s!10566))))

(assert (= (and d!300522 res!473589) b!1059542))

(assert (= (and d!300522 (not res!473588)) b!1059543))

(assert (=> d!300522 m!1220287))

(declare-fun m!1220433 () Bool)

(assert (=> d!300522 m!1220433))

(assert (=> d!300522 m!1220425))

(declare-fun m!1220435 () Bool)

(assert (=> b!1059542 m!1220435))

(assert (=> b!1059543 m!1220301))

(assert (=> b!1059165 d!300522))

(declare-fun bs!251792 () Bool)

(declare-fun b!1059552 () Bool)

(assert (= bs!251792 (and b!1059552 b!1059379)))

(declare-fun lambda!38299 () Int)

(assert (=> bs!251792 (= (and (= (reg!3242 lt!359511) (reg!3242 r!15766)) (= lt!359511 r!15766)) (= lambda!38299 lambda!38295))))

(declare-fun bs!251793 () Bool)

(assert (= bs!251793 (and b!1059552 b!1059375)))

(assert (=> bs!251793 (not (= lambda!38299 lambda!38296))))

(assert (=> b!1059552 true))

(assert (=> b!1059552 true))

(declare-fun bs!251794 () Bool)

(declare-fun b!1059548 () Bool)

(assert (= bs!251794 (and b!1059548 b!1059379)))

(declare-fun lambda!38300 () Int)

(assert (=> bs!251794 (not (= lambda!38300 lambda!38295))))

(declare-fun bs!251795 () Bool)

(assert (= bs!251795 (and b!1059548 b!1059375)))

(assert (=> bs!251795 (= (and (= (regOne!6338 lt!359511) (regOne!6338 r!15766)) (= (regTwo!6338 lt!359511) (regTwo!6338 r!15766))) (= lambda!38300 lambda!38296))))

(declare-fun bs!251796 () Bool)

(assert (= bs!251796 (and b!1059548 b!1059552)))

(assert (=> bs!251796 (not (= lambda!38300 lambda!38299))))

(assert (=> b!1059548 true))

(assert (=> b!1059548 true))

(declare-fun b!1059544 () Bool)

(declare-fun e!672501 () Bool)

(declare-fun e!672499 () Bool)

(assert (=> b!1059544 (= e!672501 e!672499)))

(declare-fun res!473592 () Bool)

(assert (=> b!1059544 (= res!473592 (not ((_ is EmptyLang!2913) lt!359511)))))

(assert (=> b!1059544 (=> (not res!473592) (not e!672499))))

(declare-fun call!75998 () Bool)

(declare-fun c!177484 () Bool)

(declare-fun bm!75993 () Bool)

(assert (=> bm!75993 (= call!75998 (Exists!640 (ite c!177484 lambda!38299 lambda!38300)))))

(declare-fun bm!75994 () Bool)

(declare-fun call!75999 () Bool)

(assert (=> bm!75994 (= call!75999 (isEmpty!6545 s!10566))))

(declare-fun b!1059545 () Bool)

(declare-fun e!672497 () Bool)

(assert (=> b!1059545 (= e!672497 (matchRSpec!712 (regTwo!6339 lt!359511) s!10566))))

(declare-fun b!1059546 () Bool)

(declare-fun res!473590 () Bool)

(declare-fun e!672498 () Bool)

(assert (=> b!1059546 (=> res!473590 e!672498)))

(assert (=> b!1059546 (= res!473590 call!75999)))

(declare-fun e!672495 () Bool)

(assert (=> b!1059546 (= e!672495 e!672498)))

(declare-fun b!1059547 () Bool)

(declare-fun c!177482 () Bool)

(assert (=> b!1059547 (= c!177482 ((_ is ElementMatch!2913) lt!359511))))

(declare-fun e!672496 () Bool)

(assert (=> b!1059547 (= e!672499 e!672496)))

(assert (=> b!1059548 (= e!672495 call!75998)))

(declare-fun d!300524 () Bool)

(declare-fun c!177481 () Bool)

(assert (=> d!300524 (= c!177481 ((_ is EmptyExpr!2913) lt!359511))))

(assert (=> d!300524 (= (matchRSpec!712 lt!359511 s!10566) e!672501)))

(declare-fun b!1059549 () Bool)

(declare-fun e!672500 () Bool)

(assert (=> b!1059549 (= e!672500 e!672495)))

(assert (=> b!1059549 (= c!177484 ((_ is Star!2913) lt!359511))))

(declare-fun b!1059550 () Bool)

(declare-fun c!177483 () Bool)

(assert (=> b!1059550 (= c!177483 ((_ is Union!2913) lt!359511))))

(assert (=> b!1059550 (= e!672496 e!672500)))

(declare-fun b!1059551 () Bool)

(assert (=> b!1059551 (= e!672496 (= s!10566 (Cons!10127 (c!177394 lt!359511) Nil!10127)))))

(assert (=> b!1059552 (= e!672498 call!75998)))

(declare-fun b!1059553 () Bool)

(assert (=> b!1059553 (= e!672500 e!672497)))

(declare-fun res!473591 () Bool)

(assert (=> b!1059553 (= res!473591 (matchRSpec!712 (regOne!6339 lt!359511) s!10566))))

(assert (=> b!1059553 (=> res!473591 e!672497)))

(declare-fun b!1059554 () Bool)

(assert (=> b!1059554 (= e!672501 call!75999)))

(assert (= (and d!300524 c!177481) b!1059554))

(assert (= (and d!300524 (not c!177481)) b!1059544))

(assert (= (and b!1059544 res!473592) b!1059547))

(assert (= (and b!1059547 c!177482) b!1059551))

(assert (= (and b!1059547 (not c!177482)) b!1059550))

(assert (= (and b!1059550 c!177483) b!1059553))

(assert (= (and b!1059550 (not c!177483)) b!1059549))

(assert (= (and b!1059553 (not res!473591)) b!1059545))

(assert (= (and b!1059549 c!177484) b!1059546))

(assert (= (and b!1059549 (not c!177484)) b!1059548))

(assert (= (and b!1059546 (not res!473590)) b!1059552))

(assert (= (or b!1059552 b!1059548) bm!75993))

(assert (= (or b!1059554 b!1059546) bm!75994))

(declare-fun m!1220437 () Bool)

(assert (=> bm!75993 m!1220437))

(assert (=> bm!75994 m!1220371))

(declare-fun m!1220439 () Bool)

(assert (=> b!1059545 m!1220439))

(declare-fun m!1220441 () Bool)

(assert (=> b!1059553 m!1220441))

(assert (=> b!1059165 d!300524))

(declare-fun d!300526 () Bool)

(assert (=> d!300526 (= (matchR!1449 lt!359511 s!10566) (matchRSpec!712 lt!359511 s!10566))))

(declare-fun lt!359541 () Unit!15501)

(assert (=> d!300526 (= lt!359541 (choose!6746 lt!359511 s!10566))))

(assert (=> d!300526 (validRegex!1382 lt!359511)))

(assert (=> d!300526 (= (mainMatchTheorem!712 lt!359511 s!10566) lt!359541)))

(declare-fun bs!251797 () Bool)

(assert (= bs!251797 d!300526))

(assert (=> bs!251797 m!1220307))

(assert (=> bs!251797 m!1220291))

(declare-fun m!1220443 () Bool)

(assert (=> bs!251797 m!1220443))

(declare-fun m!1220445 () Bool)

(assert (=> bs!251797 m!1220445))

(assert (=> b!1059165 d!300526))

(declare-fun b!1059555 () Bool)

(declare-fun e!672504 () Bool)

(declare-fun e!672502 () Bool)

(assert (=> b!1059555 (= e!672504 e!672502)))

(declare-fun c!177485 () Bool)

(assert (=> b!1059555 (= c!177485 ((_ is EmptyLang!2913) lt!359511))))

(declare-fun b!1059556 () Bool)

(declare-fun e!672505 () Bool)

(assert (=> b!1059556 (= e!672505 (not (= (head!1960 s!10566) (c!177394 lt!359511))))))

(declare-fun b!1059557 () Bool)

(declare-fun res!473595 () Bool)

(assert (=> b!1059557 (=> res!473595 e!672505)))

(assert (=> b!1059557 (= res!473595 (not (isEmpty!6545 (tail!1522 s!10566))))))

(declare-fun b!1059558 () Bool)

(declare-fun e!672506 () Bool)

(declare-fun e!672503 () Bool)

(assert (=> b!1059558 (= e!672506 e!672503)))

(declare-fun res!473594 () Bool)

(assert (=> b!1059558 (=> (not res!473594) (not e!672503))))

(declare-fun lt!359542 () Bool)

(assert (=> b!1059558 (= res!473594 (not lt!359542))))

(declare-fun b!1059559 () Bool)

(declare-fun res!473598 () Bool)

(assert (=> b!1059559 (=> res!473598 e!672506)))

(declare-fun e!672508 () Bool)

(assert (=> b!1059559 (= res!473598 e!672508)))

(declare-fun res!473597 () Bool)

(assert (=> b!1059559 (=> (not res!473597) (not e!672508))))

(assert (=> b!1059559 (= res!473597 lt!359542)))

(declare-fun b!1059560 () Bool)

(declare-fun e!672507 () Bool)

(assert (=> b!1059560 (= e!672507 (nullable!1005 lt!359511))))

(declare-fun b!1059561 () Bool)

(declare-fun res!473599 () Bool)

(assert (=> b!1059561 (=> (not res!473599) (not e!672508))))

(assert (=> b!1059561 (= res!473599 (isEmpty!6545 (tail!1522 s!10566)))))

(declare-fun b!1059562 () Bool)

(assert (=> b!1059562 (= e!672507 (matchR!1449 (derivativeStep!805 lt!359511 (head!1960 s!10566)) (tail!1522 s!10566)))))

(declare-fun b!1059563 () Bool)

(assert (=> b!1059563 (= e!672503 e!672505)))

(declare-fun res!473593 () Bool)

(assert (=> b!1059563 (=> res!473593 e!672505)))

(declare-fun call!76000 () Bool)

(assert (=> b!1059563 (= res!473593 call!76000)))

(declare-fun b!1059564 () Bool)

(assert (=> b!1059564 (= e!672508 (= (head!1960 s!10566) (c!177394 lt!359511)))))

(declare-fun b!1059566 () Bool)

(assert (=> b!1059566 (= e!672502 (not lt!359542))))

(declare-fun b!1059567 () Bool)

(declare-fun res!473600 () Bool)

(assert (=> b!1059567 (=> res!473600 e!672506)))

(assert (=> b!1059567 (= res!473600 (not ((_ is ElementMatch!2913) lt!359511)))))

(assert (=> b!1059567 (= e!672502 e!672506)))

(declare-fun bm!75995 () Bool)

(assert (=> bm!75995 (= call!76000 (isEmpty!6545 s!10566))))

(declare-fun b!1059568 () Bool)

(declare-fun res!473596 () Bool)

(assert (=> b!1059568 (=> (not res!473596) (not e!672508))))

(assert (=> b!1059568 (= res!473596 (not call!76000))))

(declare-fun d!300528 () Bool)

(assert (=> d!300528 e!672504))

(declare-fun c!177486 () Bool)

(assert (=> d!300528 (= c!177486 ((_ is EmptyExpr!2913) lt!359511))))

(assert (=> d!300528 (= lt!359542 e!672507)))

(declare-fun c!177487 () Bool)

(assert (=> d!300528 (= c!177487 (isEmpty!6545 s!10566))))

(assert (=> d!300528 (validRegex!1382 lt!359511)))

(assert (=> d!300528 (= (matchR!1449 lt!359511 s!10566) lt!359542)))

(declare-fun b!1059565 () Bool)

(assert (=> b!1059565 (= e!672504 (= lt!359542 call!76000))))

(assert (= (and d!300528 c!177487) b!1059560))

(assert (= (and d!300528 (not c!177487)) b!1059562))

(assert (= (and d!300528 c!177486) b!1059565))

(assert (= (and d!300528 (not c!177486)) b!1059555))

(assert (= (and b!1059555 c!177485) b!1059566))

(assert (= (and b!1059555 (not c!177485)) b!1059567))

(assert (= (and b!1059567 (not res!473600)) b!1059559))

(assert (= (and b!1059559 res!473597) b!1059568))

(assert (= (and b!1059568 res!473596) b!1059561))

(assert (= (and b!1059561 res!473599) b!1059564))

(assert (= (and b!1059559 (not res!473598)) b!1059558))

(assert (= (and b!1059558 res!473594) b!1059563))

(assert (= (and b!1059563 (not res!473593)) b!1059557))

(assert (= (and b!1059557 (not res!473595)) b!1059556))

(assert (= (or b!1059565 b!1059563 b!1059568) bm!75995))

(assert (=> bm!75995 m!1220371))

(assert (=> d!300528 m!1220371))

(assert (=> d!300528 m!1220445))

(assert (=> b!1059557 m!1220411))

(assert (=> b!1059557 m!1220411))

(assert (=> b!1059557 m!1220413))

(assert (=> b!1059564 m!1220415))

(assert (=> b!1059556 m!1220415))

(assert (=> b!1059561 m!1220411))

(assert (=> b!1059561 m!1220411))

(assert (=> b!1059561 m!1220413))

(declare-fun m!1220447 () Bool)

(assert (=> b!1059560 m!1220447))

(assert (=> b!1059562 m!1220415))

(assert (=> b!1059562 m!1220415))

(declare-fun m!1220449 () Bool)

(assert (=> b!1059562 m!1220449))

(assert (=> b!1059562 m!1220411))

(assert (=> b!1059562 m!1220449))

(assert (=> b!1059562 m!1220411))

(declare-fun m!1220451 () Bool)

(assert (=> b!1059562 m!1220451))

(assert (=> b!1059166 d!300528))

(declare-fun b!1059592 () Bool)

(declare-fun e!672521 () Bool)

(declare-fun lt!359545 () Regex!2913)

(assert (=> b!1059592 (= e!672521 (= (nullable!1005 lt!359545) (nullable!1005 (regTwo!6339 r!15766))))))

(declare-fun bm!76006 () Bool)

(declare-fun call!76012 () Regex!2913)

(declare-fun call!76011 () Regex!2913)

(assert (=> bm!76006 (= call!76012 call!76011)))

(declare-fun b!1059593 () Bool)

(declare-fun c!177498 () Bool)

(assert (=> b!1059593 (= c!177498 ((_ is Concat!4746) (regTwo!6339 r!15766)))))

(declare-fun e!672522 () Regex!2913)

(declare-fun e!672525 () Regex!2913)

(assert (=> b!1059593 (= e!672522 e!672525)))

(declare-fun bm!76007 () Bool)

(declare-fun call!76013 () Regex!2913)

(declare-fun call!76014 () Regex!2913)

(assert (=> bm!76007 (= call!76013 call!76014)))

(declare-fun b!1059594 () Bool)

(declare-fun e!672523 () Regex!2913)

(assert (=> b!1059594 (= e!672523 (Union!2913 call!76012 call!76013))))

(declare-fun bm!76008 () Bool)

(declare-fun c!177499 () Bool)

(declare-fun call!76015 () Regex!2913)

(declare-fun c!177500 () Bool)

(assert (=> bm!76008 (= call!76015 (removeUselessConcat!462 (ite c!177500 (regOne!6338 (regTwo!6339 r!15766)) (ite c!177498 (regTwo!6338 (regTwo!6339 r!15766)) (ite c!177499 (regTwo!6339 (regTwo!6339 r!15766)) (reg!3242 (regTwo!6339 r!15766)))))))))

(declare-fun b!1059595 () Bool)

(declare-fun e!672524 () Regex!2913)

(assert (=> b!1059595 (= e!672524 (regTwo!6339 r!15766))))

(declare-fun b!1059596 () Bool)

(assert (=> b!1059596 (= e!672525 e!672523)))

(assert (=> b!1059596 (= c!177499 ((_ is Union!2913) (regTwo!6339 r!15766)))))

(declare-fun b!1059597 () Bool)

(declare-fun e!672526 () Regex!2913)

(assert (=> b!1059597 (= e!672526 call!76011)))

(declare-fun bm!76009 () Bool)

(assert (=> bm!76009 (= call!76014 call!76015)))

(declare-fun b!1059598 () Bool)

(assert (=> b!1059598 (= e!672524 (Star!2913 call!76013))))

(declare-fun b!1059591 () Bool)

(declare-fun c!177502 () Bool)

(assert (=> b!1059591 (= c!177502 ((_ is Star!2913) (regTwo!6339 r!15766)))))

(assert (=> b!1059591 (= e!672523 e!672524)))

(declare-fun d!300530 () Bool)

(assert (=> d!300530 e!672521))

(declare-fun res!473603 () Bool)

(assert (=> d!300530 (=> (not res!473603) (not e!672521))))

(assert (=> d!300530 (= res!473603 (validRegex!1382 lt!359545))))

(assert (=> d!300530 (= lt!359545 e!672526)))

(declare-fun c!177501 () Bool)

(assert (=> d!300530 (= c!177501 (and ((_ is Concat!4746) (regTwo!6339 r!15766)) ((_ is EmptyExpr!2913) (regOne!6338 (regTwo!6339 r!15766)))))))

(assert (=> d!300530 (validRegex!1382 (regTwo!6339 r!15766))))

(assert (=> d!300530 (= (removeUselessConcat!462 (regTwo!6339 r!15766)) lt!359545)))

(declare-fun bm!76010 () Bool)

(assert (=> bm!76010 (= call!76011 (removeUselessConcat!462 (ite c!177501 (regTwo!6338 (regTwo!6339 r!15766)) (ite c!177498 (regOne!6338 (regTwo!6339 r!15766)) (regOne!6339 (regTwo!6339 r!15766))))))))

(declare-fun b!1059599 () Bool)

(assert (=> b!1059599 (= e!672526 e!672522)))

(assert (=> b!1059599 (= c!177500 (and ((_ is Concat!4746) (regTwo!6339 r!15766)) ((_ is EmptyExpr!2913) (regTwo!6338 (regTwo!6339 r!15766)))))))

(declare-fun b!1059600 () Bool)

(assert (=> b!1059600 (= e!672522 call!76015)))

(declare-fun b!1059601 () Bool)

(assert (=> b!1059601 (= e!672525 (Concat!4746 call!76012 call!76014))))

(assert (= (and d!300530 c!177501) b!1059597))

(assert (= (and d!300530 (not c!177501)) b!1059599))

(assert (= (and b!1059599 c!177500) b!1059600))

(assert (= (and b!1059599 (not c!177500)) b!1059593))

(assert (= (and b!1059593 c!177498) b!1059601))

(assert (= (and b!1059593 (not c!177498)) b!1059596))

(assert (= (and b!1059596 c!177499) b!1059594))

(assert (= (and b!1059596 (not c!177499)) b!1059591))

(assert (= (and b!1059591 c!177502) b!1059598))

(assert (= (and b!1059591 (not c!177502)) b!1059595))

(assert (= (or b!1059594 b!1059598) bm!76007))

(assert (= (or b!1059601 bm!76007) bm!76009))

(assert (= (or b!1059601 b!1059594) bm!76006))

(assert (= (or b!1059600 bm!76009) bm!76008))

(assert (= (or b!1059597 bm!76006) bm!76010))

(assert (= (and d!300530 res!473603) b!1059592))

(declare-fun m!1220453 () Bool)

(assert (=> b!1059592 m!1220453))

(declare-fun m!1220455 () Bool)

(assert (=> b!1059592 m!1220455))

(declare-fun m!1220457 () Bool)

(assert (=> bm!76008 m!1220457))

(declare-fun m!1220459 () Bool)

(assert (=> d!300530 m!1220459))

(assert (=> d!300530 m!1220305))

(declare-fun m!1220461 () Bool)

(assert (=> bm!76010 m!1220461))

(assert (=> b!1059166 d!300530))

(declare-fun b!1059603 () Bool)

(declare-fun e!672527 () Bool)

(declare-fun lt!359546 () Regex!2913)

(assert (=> b!1059603 (= e!672527 (= (nullable!1005 lt!359546) (nullable!1005 (regOne!6339 r!15766))))))

(declare-fun bm!76011 () Bool)

(declare-fun call!76017 () Regex!2913)

(declare-fun call!76016 () Regex!2913)

(assert (=> bm!76011 (= call!76017 call!76016)))

(declare-fun b!1059604 () Bool)

(declare-fun c!177503 () Bool)

(assert (=> b!1059604 (= c!177503 ((_ is Concat!4746) (regOne!6339 r!15766)))))

(declare-fun e!672528 () Regex!2913)

(declare-fun e!672531 () Regex!2913)

(assert (=> b!1059604 (= e!672528 e!672531)))

(declare-fun bm!76012 () Bool)

(declare-fun call!76018 () Regex!2913)

(declare-fun call!76019 () Regex!2913)

(assert (=> bm!76012 (= call!76018 call!76019)))

(declare-fun b!1059605 () Bool)

(declare-fun e!672529 () Regex!2913)

(assert (=> b!1059605 (= e!672529 (Union!2913 call!76017 call!76018))))

(declare-fun c!177504 () Bool)

(declare-fun bm!76013 () Bool)

(declare-fun c!177505 () Bool)

(declare-fun call!76020 () Regex!2913)

(assert (=> bm!76013 (= call!76020 (removeUselessConcat!462 (ite c!177505 (regOne!6338 (regOne!6339 r!15766)) (ite c!177503 (regTwo!6338 (regOne!6339 r!15766)) (ite c!177504 (regTwo!6339 (regOne!6339 r!15766)) (reg!3242 (regOne!6339 r!15766)))))))))

(declare-fun b!1059606 () Bool)

(declare-fun e!672530 () Regex!2913)

(assert (=> b!1059606 (= e!672530 (regOne!6339 r!15766))))

(declare-fun b!1059607 () Bool)

(assert (=> b!1059607 (= e!672531 e!672529)))

(assert (=> b!1059607 (= c!177504 ((_ is Union!2913) (regOne!6339 r!15766)))))

(declare-fun b!1059608 () Bool)

(declare-fun e!672532 () Regex!2913)

(assert (=> b!1059608 (= e!672532 call!76016)))

(declare-fun bm!76014 () Bool)

(assert (=> bm!76014 (= call!76019 call!76020)))

(declare-fun b!1059609 () Bool)

(assert (=> b!1059609 (= e!672530 (Star!2913 call!76018))))

(declare-fun b!1059602 () Bool)

(declare-fun c!177507 () Bool)

(assert (=> b!1059602 (= c!177507 ((_ is Star!2913) (regOne!6339 r!15766)))))

(assert (=> b!1059602 (= e!672529 e!672530)))

(declare-fun d!300532 () Bool)

(assert (=> d!300532 e!672527))

(declare-fun res!473604 () Bool)

(assert (=> d!300532 (=> (not res!473604) (not e!672527))))

(assert (=> d!300532 (= res!473604 (validRegex!1382 lt!359546))))

(assert (=> d!300532 (= lt!359546 e!672532)))

(declare-fun c!177506 () Bool)

(assert (=> d!300532 (= c!177506 (and ((_ is Concat!4746) (regOne!6339 r!15766)) ((_ is EmptyExpr!2913) (regOne!6338 (regOne!6339 r!15766)))))))

(assert (=> d!300532 (validRegex!1382 (regOne!6339 r!15766))))

(assert (=> d!300532 (= (removeUselessConcat!462 (regOne!6339 r!15766)) lt!359546)))

(declare-fun bm!76015 () Bool)

(assert (=> bm!76015 (= call!76016 (removeUselessConcat!462 (ite c!177506 (regTwo!6338 (regOne!6339 r!15766)) (ite c!177503 (regOne!6338 (regOne!6339 r!15766)) (regOne!6339 (regOne!6339 r!15766))))))))

(declare-fun b!1059610 () Bool)

(assert (=> b!1059610 (= e!672532 e!672528)))

(assert (=> b!1059610 (= c!177505 (and ((_ is Concat!4746) (regOne!6339 r!15766)) ((_ is EmptyExpr!2913) (regTwo!6338 (regOne!6339 r!15766)))))))

(declare-fun b!1059611 () Bool)

(assert (=> b!1059611 (= e!672528 call!76020)))

(declare-fun b!1059612 () Bool)

(assert (=> b!1059612 (= e!672531 (Concat!4746 call!76017 call!76019))))

(assert (= (and d!300532 c!177506) b!1059608))

(assert (= (and d!300532 (not c!177506)) b!1059610))

(assert (= (and b!1059610 c!177505) b!1059611))

(assert (= (and b!1059610 (not c!177505)) b!1059604))

(assert (= (and b!1059604 c!177503) b!1059612))

(assert (= (and b!1059604 (not c!177503)) b!1059607))

(assert (= (and b!1059607 c!177504) b!1059605))

(assert (= (and b!1059607 (not c!177504)) b!1059602))

(assert (= (and b!1059602 c!177507) b!1059609))

(assert (= (and b!1059602 (not c!177507)) b!1059606))

(assert (= (or b!1059605 b!1059609) bm!76012))

(assert (= (or b!1059612 bm!76012) bm!76014))

(assert (= (or b!1059612 b!1059605) bm!76011))

(assert (= (or b!1059611 bm!76014) bm!76013))

(assert (= (or b!1059608 bm!76011) bm!76015))

(assert (= (and d!300532 res!473604) b!1059603))

(declare-fun m!1220463 () Bool)

(assert (=> b!1059603 m!1220463))

(declare-fun m!1220465 () Bool)

(assert (=> b!1059603 m!1220465))

(declare-fun m!1220467 () Bool)

(assert (=> bm!76013 m!1220467))

(declare-fun m!1220469 () Bool)

(assert (=> d!300532 m!1220469))

(declare-fun m!1220471 () Bool)

(assert (=> d!300532 m!1220471))

(declare-fun m!1220473 () Bool)

(assert (=> bm!76015 m!1220473))

(assert (=> b!1059166 d!300532))

(declare-fun b!1059631 () Bool)

(declare-fun e!672549 () Bool)

(declare-fun call!76029 () Bool)

(assert (=> b!1059631 (= e!672549 call!76029)))

(declare-fun d!300534 () Bool)

(declare-fun res!473617 () Bool)

(declare-fun e!672551 () Bool)

(assert (=> d!300534 (=> res!473617 e!672551)))

(assert (=> d!300534 (= res!473617 ((_ is ElementMatch!2913) (regTwo!6339 r!15766)))))

(assert (=> d!300534 (= (validRegex!1382 (regTwo!6339 r!15766)) e!672551)))

(declare-fun c!177513 () Bool)

(declare-fun bm!76022 () Bool)

(declare-fun c!177512 () Bool)

(declare-fun call!76027 () Bool)

(assert (=> bm!76022 (= call!76027 (validRegex!1382 (ite c!177513 (reg!3242 (regTwo!6339 r!15766)) (ite c!177512 (regTwo!6339 (regTwo!6339 r!15766)) (regTwo!6338 (regTwo!6339 r!15766))))))))

(declare-fun b!1059632 () Bool)

(declare-fun res!473619 () Bool)

(assert (=> b!1059632 (=> (not res!473619) (not e!672549))))

(declare-fun call!76028 () Bool)

(assert (=> b!1059632 (= res!473619 call!76028)))

(declare-fun e!672553 () Bool)

(assert (=> b!1059632 (= e!672553 e!672549)))

(declare-fun b!1059633 () Bool)

(declare-fun e!672550 () Bool)

(assert (=> b!1059633 (= e!672550 call!76029)))

(declare-fun b!1059634 () Bool)

(declare-fun e!672548 () Bool)

(declare-fun e!672552 () Bool)

(assert (=> b!1059634 (= e!672548 e!672552)))

(declare-fun res!473615 () Bool)

(assert (=> b!1059634 (= res!473615 (not (nullable!1005 (reg!3242 (regTwo!6339 r!15766)))))))

(assert (=> b!1059634 (=> (not res!473615) (not e!672552))))

(declare-fun b!1059635 () Bool)

(declare-fun e!672547 () Bool)

(assert (=> b!1059635 (= e!672547 e!672550)))

(declare-fun res!473616 () Bool)

(assert (=> b!1059635 (=> (not res!473616) (not e!672550))))

(assert (=> b!1059635 (= res!473616 call!76028)))

(declare-fun bm!76023 () Bool)

(assert (=> bm!76023 (= call!76029 call!76027)))

(declare-fun bm!76024 () Bool)

(assert (=> bm!76024 (= call!76028 (validRegex!1382 (ite c!177512 (regOne!6339 (regTwo!6339 r!15766)) (regOne!6338 (regTwo!6339 r!15766)))))))

(declare-fun b!1059636 () Bool)

(assert (=> b!1059636 (= e!672548 e!672553)))

(assert (=> b!1059636 (= c!177512 ((_ is Union!2913) (regTwo!6339 r!15766)))))

(declare-fun b!1059637 () Bool)

(declare-fun res!473618 () Bool)

(assert (=> b!1059637 (=> res!473618 e!672547)))

(assert (=> b!1059637 (= res!473618 (not ((_ is Concat!4746) (regTwo!6339 r!15766))))))

(assert (=> b!1059637 (= e!672553 e!672547)))

(declare-fun b!1059638 () Bool)

(assert (=> b!1059638 (= e!672551 e!672548)))

(assert (=> b!1059638 (= c!177513 ((_ is Star!2913) (regTwo!6339 r!15766)))))

(declare-fun b!1059639 () Bool)

(assert (=> b!1059639 (= e!672552 call!76027)))

(assert (= (and d!300534 (not res!473617)) b!1059638))

(assert (= (and b!1059638 c!177513) b!1059634))

(assert (= (and b!1059638 (not c!177513)) b!1059636))

(assert (= (and b!1059634 res!473615) b!1059639))

(assert (= (and b!1059636 c!177512) b!1059632))

(assert (= (and b!1059636 (not c!177512)) b!1059637))

(assert (= (and b!1059632 res!473619) b!1059631))

(assert (= (and b!1059637 (not res!473618)) b!1059635))

(assert (= (and b!1059635 res!473616) b!1059633))

(assert (= (or b!1059631 b!1059633) bm!76023))

(assert (= (or b!1059632 b!1059635) bm!76024))

(assert (= (or b!1059639 bm!76023) bm!76022))

(declare-fun m!1220475 () Bool)

(assert (=> bm!76022 m!1220475))

(declare-fun m!1220477 () Bool)

(assert (=> b!1059634 m!1220477))

(declare-fun m!1220479 () Bool)

(assert (=> bm!76024 m!1220479))

(assert (=> b!1059167 d!300534))

(declare-fun b!1059640 () Bool)

(declare-fun e!672556 () Bool)

(declare-fun call!76032 () Bool)

(assert (=> b!1059640 (= e!672556 call!76032)))

(declare-fun d!300536 () Bool)

(declare-fun res!473622 () Bool)

(declare-fun e!672558 () Bool)

(assert (=> d!300536 (=> res!473622 e!672558)))

(assert (=> d!300536 (= res!473622 ((_ is ElementMatch!2913) r!15766))))

(assert (=> d!300536 (= (validRegex!1382 r!15766) e!672558)))

(declare-fun call!76030 () Bool)

(declare-fun c!177515 () Bool)

(declare-fun c!177514 () Bool)

(declare-fun bm!76025 () Bool)

(assert (=> bm!76025 (= call!76030 (validRegex!1382 (ite c!177515 (reg!3242 r!15766) (ite c!177514 (regTwo!6339 r!15766) (regTwo!6338 r!15766)))))))

(declare-fun b!1059641 () Bool)

(declare-fun res!473624 () Bool)

(assert (=> b!1059641 (=> (not res!473624) (not e!672556))))

(declare-fun call!76031 () Bool)

(assert (=> b!1059641 (= res!473624 call!76031)))

(declare-fun e!672560 () Bool)

(assert (=> b!1059641 (= e!672560 e!672556)))

(declare-fun b!1059642 () Bool)

(declare-fun e!672557 () Bool)

(assert (=> b!1059642 (= e!672557 call!76032)))

(declare-fun b!1059643 () Bool)

(declare-fun e!672555 () Bool)

(declare-fun e!672559 () Bool)

(assert (=> b!1059643 (= e!672555 e!672559)))

(declare-fun res!473620 () Bool)

(assert (=> b!1059643 (= res!473620 (not (nullable!1005 (reg!3242 r!15766))))))

(assert (=> b!1059643 (=> (not res!473620) (not e!672559))))

(declare-fun b!1059644 () Bool)

(declare-fun e!672554 () Bool)

(assert (=> b!1059644 (= e!672554 e!672557)))

(declare-fun res!473621 () Bool)

(assert (=> b!1059644 (=> (not res!473621) (not e!672557))))

(assert (=> b!1059644 (= res!473621 call!76031)))

(declare-fun bm!76026 () Bool)

(assert (=> bm!76026 (= call!76032 call!76030)))

(declare-fun bm!76027 () Bool)

(assert (=> bm!76027 (= call!76031 (validRegex!1382 (ite c!177514 (regOne!6339 r!15766) (regOne!6338 r!15766))))))

(declare-fun b!1059645 () Bool)

(assert (=> b!1059645 (= e!672555 e!672560)))

(assert (=> b!1059645 (= c!177514 ((_ is Union!2913) r!15766))))

(declare-fun b!1059646 () Bool)

(declare-fun res!473623 () Bool)

(assert (=> b!1059646 (=> res!473623 e!672554)))

(assert (=> b!1059646 (= res!473623 (not ((_ is Concat!4746) r!15766)))))

(assert (=> b!1059646 (= e!672560 e!672554)))

(declare-fun b!1059647 () Bool)

(assert (=> b!1059647 (= e!672558 e!672555)))

(assert (=> b!1059647 (= c!177515 ((_ is Star!2913) r!15766))))

(declare-fun b!1059648 () Bool)

(assert (=> b!1059648 (= e!672559 call!76030)))

(assert (= (and d!300536 (not res!473622)) b!1059647))

(assert (= (and b!1059647 c!177515) b!1059643))

(assert (= (and b!1059647 (not c!177515)) b!1059645))

(assert (= (and b!1059643 res!473620) b!1059648))

(assert (= (and b!1059645 c!177514) b!1059641))

(assert (= (and b!1059645 (not c!177514)) b!1059646))

(assert (= (and b!1059641 res!473624) b!1059640))

(assert (= (and b!1059646 (not res!473623)) b!1059644))

(assert (= (and b!1059644 res!473621) b!1059642))

(assert (= (or b!1059640 b!1059642) bm!76026))

(assert (= (or b!1059641 b!1059644) bm!76027))

(assert (= (or b!1059648 bm!76026) bm!76025))

(declare-fun m!1220481 () Bool)

(assert (=> bm!76025 m!1220481))

(declare-fun m!1220483 () Bool)

(assert (=> b!1059643 m!1220483))

(declare-fun m!1220485 () Bool)

(assert (=> bm!76027 m!1220485))

(assert (=> start!91094 d!300536))

(declare-fun b!1059649 () Bool)

(declare-fun e!672563 () Bool)

(declare-fun e!672561 () Bool)

(assert (=> b!1059649 (= e!672563 e!672561)))

(declare-fun c!177516 () Bool)

(assert (=> b!1059649 (= c!177516 ((_ is EmptyLang!2913) lt!359509))))

(declare-fun b!1059650 () Bool)

(declare-fun e!672564 () Bool)

(assert (=> b!1059650 (= e!672564 (not (= (head!1960 s!10566) (c!177394 lt!359509))))))

(declare-fun b!1059651 () Bool)

(declare-fun res!473627 () Bool)

(assert (=> b!1059651 (=> res!473627 e!672564)))

(assert (=> b!1059651 (= res!473627 (not (isEmpty!6545 (tail!1522 s!10566))))))

(declare-fun b!1059652 () Bool)

(declare-fun e!672565 () Bool)

(declare-fun e!672562 () Bool)

(assert (=> b!1059652 (= e!672565 e!672562)))

(declare-fun res!473626 () Bool)

(assert (=> b!1059652 (=> (not res!473626) (not e!672562))))

(declare-fun lt!359547 () Bool)

(assert (=> b!1059652 (= res!473626 (not lt!359547))))

(declare-fun b!1059653 () Bool)

(declare-fun res!473630 () Bool)

(assert (=> b!1059653 (=> res!473630 e!672565)))

(declare-fun e!672567 () Bool)

(assert (=> b!1059653 (= res!473630 e!672567)))

(declare-fun res!473629 () Bool)

(assert (=> b!1059653 (=> (not res!473629) (not e!672567))))

(assert (=> b!1059653 (= res!473629 lt!359547)))

(declare-fun b!1059654 () Bool)

(declare-fun e!672566 () Bool)

(assert (=> b!1059654 (= e!672566 (nullable!1005 lt!359509))))

(declare-fun b!1059655 () Bool)

(declare-fun res!473631 () Bool)

(assert (=> b!1059655 (=> (not res!473631) (not e!672567))))

(assert (=> b!1059655 (= res!473631 (isEmpty!6545 (tail!1522 s!10566)))))

(declare-fun b!1059656 () Bool)

(assert (=> b!1059656 (= e!672566 (matchR!1449 (derivativeStep!805 lt!359509 (head!1960 s!10566)) (tail!1522 s!10566)))))

(declare-fun b!1059657 () Bool)

(assert (=> b!1059657 (= e!672562 e!672564)))

(declare-fun res!473625 () Bool)

(assert (=> b!1059657 (=> res!473625 e!672564)))

(declare-fun call!76033 () Bool)

(assert (=> b!1059657 (= res!473625 call!76033)))

(declare-fun b!1059658 () Bool)

(assert (=> b!1059658 (= e!672567 (= (head!1960 s!10566) (c!177394 lt!359509)))))

(declare-fun b!1059660 () Bool)

(assert (=> b!1059660 (= e!672561 (not lt!359547))))

(declare-fun b!1059661 () Bool)

(declare-fun res!473632 () Bool)

(assert (=> b!1059661 (=> res!473632 e!672565)))

(assert (=> b!1059661 (= res!473632 (not ((_ is ElementMatch!2913) lt!359509)))))

(assert (=> b!1059661 (= e!672561 e!672565)))

(declare-fun bm!76028 () Bool)

(assert (=> bm!76028 (= call!76033 (isEmpty!6545 s!10566))))

(declare-fun b!1059662 () Bool)

(declare-fun res!473628 () Bool)

(assert (=> b!1059662 (=> (not res!473628) (not e!672567))))

(assert (=> b!1059662 (= res!473628 (not call!76033))))

(declare-fun d!300538 () Bool)

(assert (=> d!300538 e!672563))

(declare-fun c!177517 () Bool)

(assert (=> d!300538 (= c!177517 ((_ is EmptyExpr!2913) lt!359509))))

(assert (=> d!300538 (= lt!359547 e!672566)))

(declare-fun c!177518 () Bool)

(assert (=> d!300538 (= c!177518 (isEmpty!6545 s!10566))))

(assert (=> d!300538 (validRegex!1382 lt!359509)))

(assert (=> d!300538 (= (matchR!1449 lt!359509 s!10566) lt!359547)))

(declare-fun b!1059659 () Bool)

(assert (=> b!1059659 (= e!672563 (= lt!359547 call!76033))))

(assert (= (and d!300538 c!177518) b!1059654))

(assert (= (and d!300538 (not c!177518)) b!1059656))

(assert (= (and d!300538 c!177517) b!1059659))

(assert (= (and d!300538 (not c!177517)) b!1059649))

(assert (= (and b!1059649 c!177516) b!1059660))

(assert (= (and b!1059649 (not c!177516)) b!1059661))

(assert (= (and b!1059661 (not res!473632)) b!1059653))

(assert (= (and b!1059653 res!473629) b!1059662))

(assert (= (and b!1059662 res!473628) b!1059655))

(assert (= (and b!1059655 res!473631) b!1059658))

(assert (= (and b!1059653 (not res!473630)) b!1059652))

(assert (= (and b!1059652 res!473626) b!1059657))

(assert (= (and b!1059657 (not res!473625)) b!1059651))

(assert (= (and b!1059651 (not res!473627)) b!1059650))

(assert (= (or b!1059659 b!1059657 b!1059662) bm!76028))

(assert (=> bm!76028 m!1220371))

(assert (=> d!300538 m!1220371))

(assert (=> d!300538 m!1220435))

(assert (=> b!1059651 m!1220411))

(assert (=> b!1059651 m!1220411))

(assert (=> b!1059651 m!1220413))

(assert (=> b!1059658 m!1220415))

(assert (=> b!1059650 m!1220415))

(assert (=> b!1059655 m!1220411))

(assert (=> b!1059655 m!1220411))

(assert (=> b!1059655 m!1220413))

(declare-fun m!1220487 () Bool)

(assert (=> b!1059654 m!1220487))

(assert (=> b!1059656 m!1220415))

(assert (=> b!1059656 m!1220415))

(declare-fun m!1220489 () Bool)

(assert (=> b!1059656 m!1220489))

(assert (=> b!1059656 m!1220411))

(assert (=> b!1059656 m!1220489))

(assert (=> b!1059656 m!1220411))

(declare-fun m!1220491 () Bool)

(assert (=> b!1059656 m!1220491))

(assert (=> b!1059163 d!300538))

(declare-fun b!1059673 () Bool)

(declare-fun e!672570 () Bool)

(assert (=> b!1059673 (= e!672570 tp_is_empty!5469)))

(declare-fun b!1059674 () Bool)

(declare-fun tp!318501 () Bool)

(declare-fun tp!318504 () Bool)

(assert (=> b!1059674 (= e!672570 (and tp!318501 tp!318504))))

(declare-fun b!1059676 () Bool)

(declare-fun tp!318505 () Bool)

(declare-fun tp!318503 () Bool)

(assert (=> b!1059676 (= e!672570 (and tp!318505 tp!318503))))

(assert (=> b!1059171 (= tp!318451 e!672570)))

(declare-fun b!1059675 () Bool)

(declare-fun tp!318502 () Bool)

(assert (=> b!1059675 (= e!672570 tp!318502)))

(assert (= (and b!1059171 ((_ is ElementMatch!2913) (reg!3242 r!15766))) b!1059673))

(assert (= (and b!1059171 ((_ is Concat!4746) (reg!3242 r!15766))) b!1059674))

(assert (= (and b!1059171 ((_ is Star!2913) (reg!3242 r!15766))) b!1059675))

(assert (= (and b!1059171 ((_ is Union!2913) (reg!3242 r!15766))) b!1059676))

(declare-fun b!1059677 () Bool)

(declare-fun e!672571 () Bool)

(assert (=> b!1059677 (= e!672571 tp_is_empty!5469)))

(declare-fun b!1059678 () Bool)

(declare-fun tp!318506 () Bool)

(declare-fun tp!318509 () Bool)

(assert (=> b!1059678 (= e!672571 (and tp!318506 tp!318509))))

(declare-fun b!1059680 () Bool)

(declare-fun tp!318510 () Bool)

(declare-fun tp!318508 () Bool)

(assert (=> b!1059680 (= e!672571 (and tp!318510 tp!318508))))

(assert (=> b!1059162 (= tp!318452 e!672571)))

(declare-fun b!1059679 () Bool)

(declare-fun tp!318507 () Bool)

(assert (=> b!1059679 (= e!672571 tp!318507)))

(assert (= (and b!1059162 ((_ is ElementMatch!2913) (regOne!6338 r!15766))) b!1059677))

(assert (= (and b!1059162 ((_ is Concat!4746) (regOne!6338 r!15766))) b!1059678))

(assert (= (and b!1059162 ((_ is Star!2913) (regOne!6338 r!15766))) b!1059679))

(assert (= (and b!1059162 ((_ is Union!2913) (regOne!6338 r!15766))) b!1059680))

(declare-fun b!1059681 () Bool)

(declare-fun e!672572 () Bool)

(assert (=> b!1059681 (= e!672572 tp_is_empty!5469)))

(declare-fun b!1059682 () Bool)

(declare-fun tp!318511 () Bool)

(declare-fun tp!318514 () Bool)

(assert (=> b!1059682 (= e!672572 (and tp!318511 tp!318514))))

(declare-fun b!1059684 () Bool)

(declare-fun tp!318515 () Bool)

(declare-fun tp!318513 () Bool)

(assert (=> b!1059684 (= e!672572 (and tp!318515 tp!318513))))

(assert (=> b!1059162 (= tp!318449 e!672572)))

(declare-fun b!1059683 () Bool)

(declare-fun tp!318512 () Bool)

(assert (=> b!1059683 (= e!672572 tp!318512)))

(assert (= (and b!1059162 ((_ is ElementMatch!2913) (regTwo!6338 r!15766))) b!1059681))

(assert (= (and b!1059162 ((_ is Concat!4746) (regTwo!6338 r!15766))) b!1059682))

(assert (= (and b!1059162 ((_ is Star!2913) (regTwo!6338 r!15766))) b!1059683))

(assert (= (and b!1059162 ((_ is Union!2913) (regTwo!6338 r!15766))) b!1059684))

(declare-fun b!1059685 () Bool)

(declare-fun e!672573 () Bool)

(assert (=> b!1059685 (= e!672573 tp_is_empty!5469)))

(declare-fun b!1059686 () Bool)

(declare-fun tp!318516 () Bool)

(declare-fun tp!318519 () Bool)

(assert (=> b!1059686 (= e!672573 (and tp!318516 tp!318519))))

(declare-fun b!1059688 () Bool)

(declare-fun tp!318520 () Bool)

(declare-fun tp!318518 () Bool)

(assert (=> b!1059688 (= e!672573 (and tp!318520 tp!318518))))

(assert (=> b!1059168 (= tp!318447 e!672573)))

(declare-fun b!1059687 () Bool)

(declare-fun tp!318517 () Bool)

(assert (=> b!1059687 (= e!672573 tp!318517)))

(assert (= (and b!1059168 ((_ is ElementMatch!2913) (regOne!6339 r!15766))) b!1059685))

(assert (= (and b!1059168 ((_ is Concat!4746) (regOne!6339 r!15766))) b!1059686))

(assert (= (and b!1059168 ((_ is Star!2913) (regOne!6339 r!15766))) b!1059687))

(assert (= (and b!1059168 ((_ is Union!2913) (regOne!6339 r!15766))) b!1059688))

(declare-fun b!1059689 () Bool)

(declare-fun e!672574 () Bool)

(assert (=> b!1059689 (= e!672574 tp_is_empty!5469)))

(declare-fun b!1059690 () Bool)

(declare-fun tp!318521 () Bool)

(declare-fun tp!318524 () Bool)

(assert (=> b!1059690 (= e!672574 (and tp!318521 tp!318524))))

(declare-fun b!1059692 () Bool)

(declare-fun tp!318525 () Bool)

(declare-fun tp!318523 () Bool)

(assert (=> b!1059692 (= e!672574 (and tp!318525 tp!318523))))

(assert (=> b!1059168 (= tp!318450 e!672574)))

(declare-fun b!1059691 () Bool)

(declare-fun tp!318522 () Bool)

(assert (=> b!1059691 (= e!672574 tp!318522)))

(assert (= (and b!1059168 ((_ is ElementMatch!2913) (regTwo!6339 r!15766))) b!1059689))

(assert (= (and b!1059168 ((_ is Concat!4746) (regTwo!6339 r!15766))) b!1059690))

(assert (= (and b!1059168 ((_ is Star!2913) (regTwo!6339 r!15766))) b!1059691))

(assert (= (and b!1059168 ((_ is Union!2913) (regTwo!6339 r!15766))) b!1059692))

(declare-fun b!1059697 () Bool)

(declare-fun e!672577 () Bool)

(declare-fun tp!318528 () Bool)

(assert (=> b!1059697 (= e!672577 (and tp_is_empty!5469 tp!318528))))

(assert (=> b!1059169 (= tp!318448 e!672577)))

(assert (= (and b!1059169 ((_ is Cons!10127) (t!101189 s!10566))) b!1059697))

(check-sat (not b!1059682) (not b!1059564) (not b!1059643) (not b!1059530) (not bm!76022) (not b!1059683) (not b!1059680) (not b!1059688) (not b!1059603) (not bm!75993) (not d!300538) (not b!1059634) (not d!300520) (not bm!76008) (not bm!76013) (not b!1059656) (not b!1059686) (not b!1059516) (not bm!75992) (not bm!75994) (not b!1059684) (not b!1059519) (not b!1059372) (not b!1059658) (not bm!76025) (not b!1059592) (not b!1059562) (not b!1059533) (not b!1059512) (not b!1059692) (not b!1059553) (not b!1059691) (not b!1059650) (not b!1059556) (not d!300530) (not b!1059687) (not b!1059531) (not bm!76028) (not b!1059654) (not b!1059525) (not b!1059560) (not b!1059675) (not bm!76024) (not b!1059511) (not b!1059557) (not bm!75991) (not b!1059529) (not b!1059679) (not b!1059655) (not b!1059543) (not d!300528) (not d!300526) (not bm!76010) (not b!1059651) (not b!1059517) (not d!300522) (not bm!75995) tp_is_empty!5469 (not b!1059380) (not d!300518) (not bm!76027) (not b!1059526) (not bm!76015) (not b!1059545) (not bm!75974) (not b!1059542) (not b!1059690) (not b!1059678) (not b!1059561) (not b!1059515) (not b!1059674) (not bm!75973) (not d!300508) (not d!300532) (not b!1059697) (not b!1059676))
(check-sat)
